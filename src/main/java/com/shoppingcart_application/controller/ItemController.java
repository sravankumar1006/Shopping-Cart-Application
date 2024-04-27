package com.shoppingcart_application.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.shoppingcart_application.dao.CartDao;
import com.shoppingcart_application.dao.CustomerDao;
import com.shoppingcart_application.dao.ItemsDao;
import com.shoppingcart_application.dao.ProductDao;
import com.shoppingcart_application.dto.Cart;
import com.shoppingcart_application.dto.Customer;
import com.shoppingcart_application.dto.Items;
import com.shoppingcart_application.dto.Product;

@Controller
public class ItemController {
	
	@Autowired
	ProductDao pdao ;
	
	@Autowired
	ItemsDao idao ;
	
	@Autowired
	CartDao cdao ;
	
	@Autowired
	CustomerDao cusdao ;
	
	@RequestMapping("/additem")
	public ModelAndView addItem(@RequestParam("id") int pid)
	{
		Product product = pdao.findProductById(pid) ;
		
		Items item = new Items() ;
		item.setName(product.getName());
		item.setBrand(product.getBrand()) ;
		item.setCategory(product.getCategory()) ;
		item.setPrice(product.getPrice()) ;
		item.setId(product.getId()) ;
		
		ModelAndView mav = new ModelAndView() ;
		mav.addObject("itemobj", product) ;
		mav.setViewName("itemform") ;
		return mav ;
	}
	
	@RequestMapping("/additemtocart")
	public ModelAndView addItemToCart(@ModelAttribute("itemobj") Items item, HttpSession session)
	{
		item.setPrice(item.getQuantity() * item.getPrice()) ;
		
		Customer customer = (Customer) session.getAttribute("customerinfo") ;
		Cart cart = customer.getCart() ;
		List<Items> items = cart.getItems() ;
		
		if(items.size() > 0)
		{
			items.add(item) ;
			cart.setItems(items) ;
			cart.setTotalprice(cart.getTotalprice() + item.getPrice()) ;
		}
		else
		{
			List<Items> items1 = new ArrayList<Items>() ;
			items1.add(item) ;
			
			cart.setTotalprice(item.getPrice()) ;
			cart.setItems(items1) ;
		}
		
		idao.saveItem(item) ;
		cdao.updateCart(cart) ;
		
		ModelAndView mav  = new ModelAndView() ;
		mav.setViewName("redirect://fetchitemsfromcart") ;
		return mav ;
	}
}

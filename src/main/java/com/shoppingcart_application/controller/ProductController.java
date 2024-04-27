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

import com.shoppingcart_application.dao.MerchantDao;
import com.shoppingcart_application.dao.ProductDao;
import com.shoppingcart_application.dto.Merchant;
import com.shoppingcart_application.dto.Product;

@Controller
public class ProductController {

	@Autowired
	ProductDao dao ;
	
	@Autowired
	MerchantDao mdao ;
	
	@RequestMapping("/addproduct")
	public ModelAndView addProduct()
	{
		Product product = new Product() ;
		
		ModelAndView mav = new ModelAndView() ;
		mav.addObject("productobj", product) ;
		mav.setViewName("productform") ;
		
		return mav ;
	}
	
	@RequestMapping("/saveproduct")
	public ModelAndView saveProduct(@ModelAttribute("productobj") Product product, HttpSession session)
	{
		Merchant merchant = (Merchant) session.getAttribute("merchantinfo") ;
		List<Product> products = merchant.getProduct() ;
		
		if(products != null)
		{
			products.add(product) ;
			merchant.setProduct(products) ;
		}
		else
		{
			List<Product> productlist = new ArrayList<Product>() ;
			productlist.add(product) ;
			
			merchant.setProduct(productlist) ;
		}
		
		dao.saveProduct(product) ;
		mdao.updateMarchant(merchant) ;
		
		ModelAndView mav = new ModelAndView() ;
		mav.addObject("msg", "Product data saved successfully") ;
		mav.setViewName("merchantoptions") ;
		return mav ;
	}
	
	@RequestMapping("/viewallproducts")
	public ModelAndView viewAllProduct( HttpSession session)
	{
		Merchant merchant = (Merchant)session.getAttribute("merchantinfo") ;
		Merchant merchant1 = mdao.findMarchantById(merchant.getId()) ;
		
		List<Product> product = merchant.getProduct() ;
		
		ModelAndView mav = new ModelAndView() ;
		mav.addObject("productlist", product) ;
		mav.setViewName("displayallproducts") ; 
		return mav ;
	}
	
	@RequestMapping("/deleteproduct")
	public ModelAndView deleteProduct(@RequestParam("id") int productId, HttpSession session)
	{
		Merchant merchant = (Merchant) session.getAttribute("merchantinfo") ;
		
		Merchant newmerchant =dao.revomeProductFromMerchant(merchant.getId(), productId) ;
		mdao.updateMarchant(newmerchant) ;
		
		dao.deleteProductById(productId) ;
		
		ModelAndView mav = new ModelAndView() ;
		mav.setViewName("redirect://viewallproducts") ;
		return mav ;
	}
}

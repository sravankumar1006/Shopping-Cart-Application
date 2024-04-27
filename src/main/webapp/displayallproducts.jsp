<%@page import="com.shoppingcart_application.dto.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.shoppingcart_application.dto.Merchant"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View All Products</title>
<Style>
        *{
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
            /* border: border-box; */
        }
        body{
            background: url("https://wallpapercave.com/wp/wp2610910.png") no-repeat, fixed,0px;
            background-size: cover;
        }
        h1{
            text-align: center;
            margin-top: 60px;
            margin-bottom: 30px;
        }
        table{
        	width:95%;
            margin-left: 30px;
            margin-right: 90px;
            color: white;
        }
        th{
            font-size: 1rem;
            font-weight: 900;
        }
        td{
        	text-align:center;
        }
        a{
            text-decoration: none;
            color: black;
            font-size: 1rem;
            
        }
        .update, .delete{
            width: 100px;
            height: 30px;
            border-radius: 30px;
            outline: none;
            border: 1px solid black;
            background:linear-gradient(45deg, lightgreen, skyblue); 
        }
        .update:hover, .delete:hover{
            background :linear-gradient(45deg, rgb(86, 87, 86),skyblue);
        }
        h2{
            margin-left: 40px;
            margin-top: 50px;
        }
        .btn{
            margin-left: 40px;
            margin-top: 10px;
            width: 100px;
            height: 30px;
            border: 1px solid black;
            border-radius:30px ;
            background :linear-gradient(45deg, lightgreen,skyblue);
            font-size: 1rem;
            font-weight: 600;
        }
        .btn:hover{
            background :linear-gradient(45deg, rgb(86, 87, 86),skyblue);
        }
    </Style>


</head>
<body>
    <%
	/*  Merchant merchant = (Merchant) session.getAttribute("merchantinfo");
	List<Product> products = merchant.getProduct(); */
	
	List<Product> products =(List<Product>) request.getAttribute("productlist") ;
	%>
	<h1 style="color :rgb(245, 247, 248)">Product List </h1>
	<table>
		<table cellPadding="20px" border="1">
		<th>Id</th>
		<th>Brand</th>
		<th>Model</th>
		<th>Category</th>
		<th>Price</th>
		<th>Stock</th>
		<th>Update</th>
		<th>Delete</th>
		<%
		for (Product p : products) {
		%>
		<tr>
            <td> <%= p.getId() %> </td>
            <td> <%= p.getName() %> </td>
            <td> <%= p.getBrand() %> </td>	
            <td> <%= p.getCategory() %> </td>
            <td> <%= p.getPrice() %> </td>
            <td> <%= p.getStock() %> </td>
            <td><button class="update"><a href ="updateproduct?id">update</a></button></td>
            <td><button class="delete"><a href ="deleteproduct?id=<%=p.getId()%>">delete</a></button></td>
		</tr>
		<%
		}
		%>
	</table>
		
		<h2 style ="color :rgb(255, 255, 255)"> Add Product</h2>
		<button class="btn"><a href ="addproduct">+ Add</a></button>
</body>
</html>
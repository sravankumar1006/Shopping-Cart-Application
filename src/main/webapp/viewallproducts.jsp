<%@page import="com.shoppingcart_application.dto.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View all Products</title>
 <style>
        *{
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
        }
        body{
            background: url("https://i.pinimg.com/originals/e4/82/e3/e482e32c79b0ec487ae2de7b44567e06.png") no-repeat, fixed,0px;
            background-size: cover;
            height: 500px;
        }
        h2{
            margin-left: 40px;
            margin-top: 60px;
            margin-bottom: 20px;
        }
        button{
            width: 120px;
            height: 30px;
            font-size: 1rem;
            border-radius: 16px;
            border: 1px solid black;
        }
        button:hover{
            background: linear-gradient(45deg, rgb(150, 141, 141) , rgb(188, 202, 157));
        }
        a{
            text-decoration: none;
            color: black;
        }
        a:hover{
            color: blue;
        }
        table{
            margin-left: 160px;
            color: white;
        }
        th{
            font-size: 1rem;     
        }
    </style>
</head>
<body>
    <%
	List<Product> products =(List<Product>) request.getAttribute("listproducts") ;
	%>
	<h2>
		<button><a href="fetchitemsfromcart" style ="color:Navigreen"> View Cart </a></button>
	</h2>
	
	<table cellPadding ="20px" border="2px solid white">
		<th>Name</th>
		<th>Brand</th>
		<th>Category</th>
		<th>Price</th>
		<th>Add Cart</th>
		
		<%
			for (Product p : products) {
		%>
			<tr>
				<td><%= p.getName() %></td>
				<td><%= p.getBrand() %></td>
				<td><%= p.getCategory() %></td>
				<td><%= p.getPrice() %></td>
				<td><button><a href ="additem?id=<%= p.getId() %>">+ Add Cart</a></button></td>
			</tr>
		<%
			}
		%>
	</table>
</body>
</html>
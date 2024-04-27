<%@page import="com.shoppingcart_application.dto.Items"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Cart</title>
<style>
        *{
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
            color: white;
        }
        body{
            background: url("https://wallpaperaccess.com/full/1732332.png") no-repeat,fixed,0px;
            background-size: cover;
        }
        h2{
            text-align: center;
            margin-top: 20px;
            margin-bottom: 20px;
            font-size: 2rem;
        }
        table{
            text-align: center;
            margin-left: 130px;
            width: 1000px;
            margin-bottom: 30px;
        }
        h3{
            margin-left: 40px;
            margin-bottom: 20px;

        }
        .btn{
            margin-left: 40px;
            margin-bottom: 20px;
            width: 130px;
            height: 30px;
            background: transparent;
            border-radius: 20px;
            background: linear-gradient(45deg,rgb(222, 222, 222), rgb(121, 118, 118));
            border: 1px solid black;
        }
        .btn:hover{
            background:linear-gradient(90deg, lightgreen,skyblue);
        }
        .btn>a{
            text-decoration: none;
            color: black;
            
        }
        a:hover{
            color: blue;
        }
    </style>
</head>
<body>
    <%
		List<Items> items = (List<Items>)request.getAttribute("itemslist") ;
		double totalprice = (Double) request.getAttribute("totalprice") ;
	%>
	<h2> Cart Details</h2>
	
		<table cellPadding ="20px" border="1px">
			<th>Name</th>
			<th>Brand</th>
			<th>Category</th>
			<th>Quantity</th>
			<th>Price</th>
			
			
			<%
				for(Items i : items) {
			%>
				<tr>
				<td><%= i.getName()%></td>
				<td><%= i.getBrand() %></td>
				<td><%= i.getCategory() %></td>
				<td><%= i.getQuantity() %></td>
				<td><%= i.getPrice() %></td>
				</tr>
			<%
				}
			%>
		</table>
			
			<h3>Total Price : <%= totalprice %></h3>
			<button class="btn"><a href ="addorder">Place Order</a></button>
			
			<h3> View Product</h3>
		<button class="btn"><a href ="fetchallproducts">View</a></button>
</body>
</html>
<%@page import="com.shoppingcart_application.dto.Merchant"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Menu</title>
</head>
<body>
	 <style>
        body{
            background-color: gray;
            font-family :'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            margin: 0;
            background: url("https://directlinedev.com/media/cases/rooney/header/background_1_zM58lsj.wide.jpeg")no-repeat fixed;
            background-size: cover;
        }

        fieldset{
            /* text-align: center; */
            width: 200px;
            margin:auto;
            margin-top: 180px;
            margin-left: 500px;
            border: 2px solid white;
            border-radius: 0px 20px 0px 20px;
            height: 200px;
            padding: 30px;
            box-shadow: 0px 0px 20px black;
        }
        legend{
            border: 2px solid white;
            color: rgb(5, 5, 5);
            background-color: rgb(206, 246, 228);
            font-size: 20px;
            border-radius: 10px 0px 10px 0px;
            box-shadow: 0px 0px 20px black;
            
            
        }
        .btn
        {
           width: 200px;
           margin-left: 10px;
           padding: 6px;
           margin-top: 20px;
           margin-bottom: 6px;
           background-color: rgb(249, 249, 251);
           background: linear-gradient(45deg, rgb(158, 159, 159), rgb(87, 108, 128));
           border-radius: 20px;
           border: none;
           box-shadow: 0px 0px 10px black;
           
        }
        .btn:hover
        {
            color: black;
            background: linear-gradient(90deg, lightgreen, rgb(116, 254, 220));
        }
        a{
            text-decoration: none;
            color: rgb(252, 252, 252);
            font-size: 18px;
        }
        a:hover{
            color:black;
        }

    </style>
</head>
<body>
    <%
	Merchant m =(Merchant) session.getAttribute("merchantinfo") ;
	%>
	<%
	if (m != null) {
	%>
    <h2 style="color: green">${msg}</h2>
    <fieldset>
            <legend>Products</legend> 
        <div class="add">
            
                <button class="btn"><a href="addproduct">Add product</a></button>
            
        </div>
        <div class="viewproduct">
            
                <button class="btn"><a href="viewallproducts">View Products</a></button>
            
        </div>
            <%
            }

            else {
            %>
        <div class="login">
            
               <button class="btn"><a href="merchantlogin.jsp">Login </a></button> 
            
        </div>
            <%
            }
            %>
    </fieldset>
</body>
</html>
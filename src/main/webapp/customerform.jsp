<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Register</title>
<style>
        *{
            border: 0;
            font-family: Arial, Helvetica, sans-serif;
        }
        body{
            background-color: green;
            background: url("https://www.justetf.com/images/thumbnails/etf-investment-guide-theme-ecommerce.jpg") no-repeat fixed 0px;
            background-size: cover;
        }
        h3 {
            /* text-align: center; */
            margin-top: 150px;
            margin-left:250px;
            font-size: 1.6rem;
            font-weight: 750;
        }
        .register{
            text-align: center ;
            margin-top:  20px;
            margin-left: 100px;
            border: none;
            width: 450px;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px black;
            background-color: rgb(155, 153, 153,0.2) ;
            color: black;

        }
        .btn
        {
            width: 120px;
            padding: 4px;
            font-size: 1rem;
            border: none;
            background:linear-gradient(45deg, rgb(135, 136, 135), rgb(174, 151, 151));
            border-radius:20px ;
            box-shadow: 0px 0px 6px;
            margin-top: 20px;
        }
        .btn:hover{
            background: linear-gradient(45deg, rgb(150, 236, 249), rgb(121, 254, 80));
            
        }
        .name, .mail,.password,.mobile{
            margin-top: 10px;
        }
    </style>
</head>
<body>
        <h3 style ="color:rgb(2, 2, 2)">Customer Register </h3>

        <div class="register">
            <form:form action ="savecustomer" modelAttribute="customerobj">
            <div class="name">
                Enter Customer Name : <form:input path="name"/> <br>
            </div>
            <div class="mobile">
                Enter Customer Mobilenumber : <form:input path="moblienumber"/> <br>
            </div>
            <div class="mail">
                Enter Customer Email : <form:input path="email"/> <br>
            </div>
            <div class="password">
                Enter Customer Password : <form:input path="password"/> <br>
            </div>
                
                <input class="btn" type ="submit"> 
            </form:form>
        </div>
</body>
</html>
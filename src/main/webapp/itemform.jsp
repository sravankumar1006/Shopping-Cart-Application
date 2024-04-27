<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Item Details</title>
<style>
        *{
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
        }
        body{
            background: url("https://cdn.wallpapersafari.com/20/43/Bw6ZSG.jpg") no-repeat,fixed,0px ;
            background-size: cover;
        }
        h3{
            text-align: center;
            margin-top: 20px;
            margin-bottom: 10px;
            font-size: 1.8rem;
            font-weight: 800;
        }
        .form{
            text-align: center;
            border: 2px solid black;
            width: 400px;
            margin-left: 400px;
            padding: 20px;
            box-shadow: 0px 0px 10px black;
        }
        .name, .brand, .category,.price,.quantity{
            padding: 10px;
            font-size: 1.2rem;
        }
        .btn{
            margin-top: 20px;
            width: 120px;
            height: 30px;
            background:linear-gradient(45deg, gray, rgb(243, 238, 238));
            border: 1px solid black;
            border-radius: 30px;
        }
        img{
            height: 100px;
            margin-left: 40px;
            margin-top: 40px;
        }
        
     </style>
</head>

<body>
        <img src="https://seeklogo.com/images/S/shopping-logo-0803BFE032-seeklogo.com.png" alt="">
        <h3>ADD TO CART</h3>
        <div class="form">
            <form:form action ="additemtocart"  modelAttribute="itemobj">
            <div class="name">
                Name : <form:input path="name" readonly="true" /><br>
            </div>
            <div class="brand">
                Brand : <form:input path="brand" readonly="true"/> <br>
            </div>
            <div class="category">
                Category : <form:input path="category" readonly="true"/><br>
            </div>
            <div class="price">
                Price :  <form:input path="price" readonly="true"/> <br>
            </div>
            <div class="quantity">
                Quantity :<form:input path="quantity"/>  <br>
            </div>
                
                <input class="btn" type ="submit" value="add to cart"> <br>
            </form:form>
        </div>
    
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Form</title>
<style>
        *{
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
            border: border-box;
            
        }
        body{
            background: url("https://wallpaperaccess.com/full/4754341.jpg") no-repeat, fixed,0px;
            background-size: cover;
            height: -70px;
        }
        fieldset{
            /* text-align: center; */
            width: 400px;
            margin-left: 680px;
            margin-top: 200px;
            background:linear-gradient(180deg, rgb(250, 250, 250), rgb(70, 71, 71));
            box-shadow: 0px 0px 10px black;

            
        }
        legend{
            border: 2px solid rgb(73, 72, 72);
            height: 24px;
            border-radius: 0px 15px 0px 15px;
            background:linear-gradient(45deg, rgb(135, 132, 132),rgb(176, 174, 174));
            box-shadow: 0px 0px 10px black;
        }
        .product{
            text-align: center;
            height: 200px;
        }
        .name, .brand, .category, .price, .stock{
            padding: 2px;
            margin-top: 6px;
            background-color: transparent;
            /* color: white; */
        }
        input{
            background-color: transparent;
            border: 1.5px solid black;
        }
        .btn{
            text-align: center;
            margin-top: 8px;
            width: 100px;
            padding: 8px;
            font-size: 1rem;
            border-radius: 30px;
            box-shadow: 0px 0px 10px black;
            
        }

    </style>
</head>
<body>
    
    <fieldset>
    <legend><h3>Product Details</h3></legend>

        <div class="product">
                <form:form action ="saveproduct" modelAttribute="productobj">
            <div class="name">
                Enter Product Name : <form:input path="name"/> <br>
            </div>
            <div class="brand">
                Enter Product Brand : <form:input path="brand"/> <br>
            </div>
            <div class="category">
                Enter Product Category:<form:input path="category"/> <br>
            </div>
            <div class="price">
                Enter Product Prie : <form:input path="price"/> <br>
            </div>
            <div class="stock">
                Enter Product Stock :<form:input path="stock"/> <br>
            </div>
                    <input class="btn" type ="submit">
                </form:form>
        </div>
    </fieldset>
</body>
</html>
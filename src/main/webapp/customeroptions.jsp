<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Options</title>
<style>
        *{
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
        }
        body{
            background: url("https://static.vecteezy.com/system/resources/previews/010/803/399/non_2x/background-with-colorful-shopping-bags-illustration-sale-and-discount-concept-vector.jpg") no-repeat,fixed,0px ;
            background-size: cover;
        }
        h2{
            text-align: center;
            margin-top: 200px;
            margin-bottom: 10px;
            font-weight: 900;
        }
        .link{
            text-align: center;
            border: 2px solid black;
            width: 700px;
            margin-left: 270px;
            margin-bottom: 100px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px black;
            
        }
       a{
        text-align: center;
        text-decoration: none;
        color: black;
        font-size: 1rem;   
       }
       .btn{
        text-align: center;
        margin-left: 10px;
        margin-top: 30px;
        margin-bottom: 30px;
        width: 300px;
        height: 30px;
        border-radius: 30px;
        border: 1px solid black;
        background-color: transparent; 
       }
       .btn:hover {
        background:linear-gradient(45deg, rgb(162, 163, 162), rgb(163, 241, 231));
        
       }
       a:hover{
        color: blue;
       }
    </style>
</head>
<body>
        <h2>Wellcome Product List</h2>
    <div class="link">
        <button class="btn"><a href ="fetchallproducts">View Products</a></button>
        <button class="btn"><a href ="viewproductsbybrand">Products By Brand</a></button>
        <button class="btn"><a href ="viewproductsbycategory">Products By Category</a></button>
        <button class="btn"><a href ="viewproductsbetweenprice">Products Between Price Range</a></button>
    </div>
</body>
</html>
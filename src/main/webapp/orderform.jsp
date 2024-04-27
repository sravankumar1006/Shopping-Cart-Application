<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Address the order</title>
<style>
        *{
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
            
        }
        body{
            background: url("https://wallpapertag.com/wallpaper/full/a/8/d/34170-full-size-website-background-2560x1600-for-tablet.jpg")no-repeat,fixed,0px;
            background-size: cover;
        }
        h2{
            text-align: center;
            margin-top: 200px;
            margin-bottom:10px ;
            color:white;
        }
        .form{
            text-align: center;
            border: 2px solid rgb(254, 254, 254);
            width: 400px;
            margin-left: 400px;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 6px white;
            color:white;
            
        }
        .name, .mobile,.address{
            padding: 10px;
            coloe:white;
        }
        .btn{
            margin-top: 10px;
            width: 120px;
            height: 30px;
            font-size: 1rem;
            background:transparent;
            border: 1px solid black;
            border-radius: 20px;
            background: linear-gradient(45deg,rgb(113, 112, 112),rgb(120, 246, 206));
        }
        .btn:hover{
            background: linear-gradient(90deg, lightgreen,skyblue);
            color: blue;
        }
    </style>
</head>
<body>

        <h2> Order Address</h2>
    <div class="form">
        <form:form action ="saveorder" modelAttribute="orderobj">
            <div class="name">
                Enter Name : <form:input path="name"/><br>
            </div>
            <div class="mobile">
                Enter Mobile Number : <form:input path="moblienumber"/><br>
            </div>
            <div class="address">
                Enter Address : <form:input path="address"/><br>
            </div>
        
            <input class="btn" type ="submit">
        </form:form>
    </div>
    
</body>
</html>
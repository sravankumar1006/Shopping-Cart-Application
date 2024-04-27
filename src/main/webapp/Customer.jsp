<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Home</title>
 <style>
        *{
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
        }
        body{
            background: url("https://wallpaperaccess.com/full/1624847.jpg") no-repeat, fixed,0px;
            background-size: cover;
            position: fixed;
        }
        .main{
            text-align: center;
            margin-top: 220px;
            margin-left: 70px;
            /* display: flex; */
        }
        h3{
            margin-top: 20px;
            margin-bottom: 10px;
            margin-left: 690px;
            font-size: 1.5rem;
            font-weight: 900;
        }
        .form{
            border: 2px solid black;
            width: 380px;
            margin-left: 700px;
            border-radius: 20px;
            box-shadow: 0px 0px 15px black;
        }
        .form_list{
            padding: 30px;
        }
        .btn{
            width: 120px;
            height: 35px;
            background: linear-gradient(45deg, lightslategrey,rgb(138, 181, 177));
            border: 1px solid black;
            border-radius: 30px;
            font-size: 1rem;
            box-shadow: 0px 0px 8px black;
        }
        .btn a{
            text-decoration: none;
            color: black;
        }
        button:hover{
            background: linear-gradient(45deg, rgb(76, 77, 76),rgb(215, 228, 179));
        }
 
    </style>

</head>
<body>
    <div class="img"></div>
    <div class="main">
        <h3>Customer Home Page</h3>
        <div class="form">
            <div class="form_list">
                <button class="btn"><a href ="addcustomer">Register</a></button><br>
            </div>
            <div class="form_list">
                <button class="btn"><a href ="customerlogin.jsp">Login</a></button><br>
            </div>
        </div>
    </div>
</body>
</html>
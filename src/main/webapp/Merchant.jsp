<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Marchant Home</title>
<style>
        body{
            /* background:linear-gradient(160deg,skyblue, rgb(135, 246, 135)) no-repeat fixed 0px; */
            background: url("https://t3.ftcdn.net/jpg/01/17/33/22/360_F_117332203_ekwDZkViF6M3itApEFRIH4844XjJ7zEb.jpg") no-repeat fixed 0px;
            background-size: cover;
        }
        h2{
            text-align: left;
            color: white;
            margin-top: 100px;
            margin-left: 320px;
        }
        #form{
            text-align: center;
            width: 20rem;
            margin: 20px auto;
            margin-left: 250px;
            padding: 20px;
            border: 2px solid rgb(74, 74, 74);
            height: 280px;
            /* background: linear-gradient(45deg, rgb(128, 150, 70) 0%, rgb(223, 243, 111) 50% ); */
            /* background-color: black; */
            background: rgba(216, 215, 215, 0.2);
            box-shadow: 0px 0px 10px black;


        }
        .form_list
        {
            padding: 50px;
            
            
        }
        .form_list button{
            background: linear-gradient(45deg, rgb(119, 196, 247), rgb(255, 252, 189));
            width: 150px;
            height: 50px;
            border: 2px solid black;
            border-radius: 20px;
            
            
        }
        .form_list button a{
            text-decoration: none;
            color: black;
            font-size: 15px;
        }
    </style>
</head>
<body>
    <h1 style="color:red"> ${msg}</h1>
	<h2 style="color:rgb(254, 252, 252)">Merchant Home Page</h2>
	
   <div id="form">
        <div class="form_list">
        <button><bold><a href="addmerchant">Register Here</a></bold></button>
       </div>
       <div class="form_list">
        <button><a href="merchantlogin.jsp">Login Here</a></button>
       </div>
   </div>
    
	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored ="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Login</title>
<style>
        *{
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
        }
        body{
            background: url("https://cdn.wallpapersafari.com/9/48/rFe3Dn.png") no-repeat, fixed,0px;
            background-size: cover;
        }
        h1{
            margin-left: 20px;
            margin-top: 30px;
        }
       fieldset{
        width: 400px;
        margin-left: 400px;
        margin-top: 170px;
        height: 150px;
        border-radius: 0px 20px 0px 20px ;
        border: 2px solid black;
        box-shadow: 0px 0px 10px black;
       }
       legend{
        border: 1.5px solid black;
        border-radius: 10px 0px 10px 0px ;
        height: 20px;
        width: 46px;
        text-align: left;
        box-shadow: 0px 0px 10px black;
        background-color: rgb(159, 158, 158);
        
        
        
       }
        .form{
            text-align: center;
            padding: 10px;
            color: rgb(5, 4, 4);
        }
        .mail, .pass{
            padding: 8px; 
            outline: none;  
        }
        .btn{
            margin-top: 10px;
            width: 120px;
            height: 30px;
            background-color: transparent;
            outline: none;
            border: 1.5px solid black ;
            border-radius: 30px;
            box-shadow: 0px 0px 10px black;
        }
        .btn:hover{
            background: linear-gradient(45deg, lightgreen, skyblue);
        }
    </style>
</head>
<body>

         <h1 style="color: green">${msg}</h1>
        <fieldset>
                <legend>Login</legend>
            <div class="form">
                <form action="customerloginvalidate" method ="post">
            <div class="mail">
                Enter Email : <input type ="email" name ="email"> <br>
            </div>
            <div class="pass">
                Enter Password : <input type ="password"  name ="password"> <br>
            </div>
                
                <input class="btn" type ="submit" value ="Login">
            </div>
            </form>
        </fieldset>
</body>
</html>
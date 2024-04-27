<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"   isELIgnored ="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Merchant Login</title>
<style>
        body{
            background-color: rgb(151, 144, 144);
            font-family:Arial, Helvetica, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
            background: url("https://wallpaperaccess.com/full/4893740.png") no-repeat, fixed,0px;
            height: 10px;
            background-size: cover;
        }
        fieldset{
            border: 2px solid white;
            margin: 10px auto;
            padding: 20px;
            border-radius: 0px 20px 0px 20px;
            background-color: rgba(0,0,0,0.5);
            color: rgb(255, 254, 254);
            margin-left: 50px;
            margin-top: 240px;
            height: 200px;
            width: 300px;
            box-shadow: 0px 0px 20px black;
            position: fixed;
        }
        h1{
            margin-left: -900px;
            position: fixed;
            margin-top: -200px;
        }
        legend
        {
            color: rgb(2, 2, 2);
            border: 2px solid rgb(253, 253, 253);
            border-radius: 10px 0px 10px 0px;
            background-color: rgb(172, 170, 170);
            font-size: 1rem;
            padding: 6px;
            width: 40px;
            display: flex;
            box-shadow: 0px 0px 20px black;
        }
        #from
        {
            text-align: center;
        }
        .from_list>input[type="text"],
        .from_list>input[type="password"]
        {
            border:none;
            /* border-radius: 0px 20px 20px 0px; */
            background-color: transparent;
            border-bottom: 2px solid black;
            color: white;
            padding: 10px;
            width: 200px;
            outline: none;
            margin-top: 10px;
            
        }
        ::placeholder
        {
            color: rgb(255, 255, 255);
        }
        .btn
        {
            margin-top: 20px;
            height: 30px;
            width: 150px;
            font-size:18px;
            background-color: lightslategrey;
            border: none;
            border-radius: 20px;
            
        }
        .btn:hover{
            background: linear-gradient(45deg, rgb(150, 236, 249), rgb(121, 254, 80));
            box-shadow: 0px 0px 20px black;
        }
        .login
        {
            text-align: left;
            font-size: 30px;
        }
        .img
        {
            background: url("https://seeklogo.com/images/S/shopping-logo-0803BFE032-seeklogo.com.png") no-repeat, fixed,0px;
            background-size: cover;
            height: 100px;
            width: 230px;
            margin-top: -480px;
            margin-left: -1000px;
            position: fixed;
            
            
        }
   
    </style>
</head>
<body>
    <h1 style= "color:red"> ${msg}</h1>
    <div class="img"></div>
   
    <fieldset>
        <legend>Login</legend>
            <div id="from">
                
                <form action="merchantloginvalidate" method ="post">
                
                <div class="from_list">
                    <input type="text" placeholder="Enter Email" name="email">
                </div>
                <div class="from_list">
                    <input type="password" placeholder="Enter Password" name="password">
                </div>
                
                    <input class="btn" type="submit" value="Login">
                </form>

            </div>

    </fieldset>
                
                
        
    
</body>
</html>
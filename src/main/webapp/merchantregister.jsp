<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register As Merchant </title>
<style>
        body{
            background-color: green;
            background: url("https://www.stylemotivation.com/wp-content/uploads/2018/10/https_2F2Fblueprint-api-production.s3.amazonaws.com2Fuploads2Fcard2Fimage2F8470672F995c27df-12fb-4cba-b2bc-59235461a038-640x360.jpg") no-repeat fixed 0px;
            background-size: cover;
        }
        h2 {
            /* text-align: center; */
            margin-top: 150px;
            margin-left:280px;
        }
        .register{
            text-align: center ;
            margin-top:  20px;
            margin-left: 150px;
            border: none;
            width: 350px;
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
            font-size: 0.8rem;
            border: none;
            background:linear-gradient(45deg, rgb(135, 136, 135), rgb(174, 151, 151));
            border-radius:20px ;
            box-shadow: 0px 0px 6px;
            margin-top: 20px;
        }
        .btn:hover{
            background: linear-gradient(45deg, rgb(150, 236, 249), rgb(121, 254, 80));
            
        }
        .name, .mail,.pass{
            margin-top: 10px;
            font-family: "Lugrasimo", cursive;
           
        }

        
        
    </style>
</head>
<body>
    
    <h2>Register here</h2>
    <div class="register">
            <form:form action ="savemerchant" modelAttribute="merchantobj" class="form">
            <div class="name">
                <div class="name">
                Enter Name :      <form:input path="name"/><br>
                </div>
                <div class="mail">
                Enter Email :     <form:input path="email"/><br>
                </div>
                <div class="pass">
                Enter Password :  <form:input path="password"/> <br>
                </div>
                <input class="btn" type ="submit">
            </div>
	</form:form>
    </div>
</body>
</html>
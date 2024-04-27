<%@ page import="com.shoppingcart_application.dto.Orders" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored ="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Bill </title>
   <style>
        body{
            background: url("https://t4.ftcdn.net/jpg/05/39/99/67/360_F_539996737_T5gJEIEqsGUjMXhrLZt0lDLcrOWsSHlb.jpg") no-repeat, fixed,0px;
            background-size: cover;
        }
        .form
        {
            text-align: left;
            /* border: 2px solid black; */
            background-color: white;
            width: 600px;
            margin-left: 500px;
            margin-top: 100px;
            padding: 10px;
            border-radius: 10px;
            
        }
        h2,h3{
            /* margin-left: 600px; */
            color: green;
        }
        h2{
            border-bottom: 2px solid green;
            margin-bottom: 15px;
        }
        .h3{
            color: black;
            font-size: 1.5rem;
        }
        table{
            /* margin-left: 600px; */
            border-collapse: collapse;
        }
        th{
            background-color: rgb(229, 249, 246);
        }
        button>a{
            text-decoration: none;
            color: white;
        }
        button{
            background-color: rgb(33, 160, 33);
            border: none;
            height: 30px;
        }

    </style>
</head>
<body>

    <div class="form">
            <h3 > ${msg }</h3>
            <!-- <%
                Orders order = (Orders) request.getAttribute("orderdetails");
                double totalprice = (Double) request.getAttribute("totalprice");
            %> -->
            <h2 >Customer Bill </h2>
            <table cellpadding="4px" border="1px">
                <th>Name</th>
                <th>Mobile Number</th>
                <th>Address</th>
                <th>Total Price</th>
                
                <tr>
                    <td><%= order.getName() %></td>
                    <td><%= order.getMoblienumber() %></td>
                    <td><%= order.getAddress() %></td>
                    <td><%= order.getTotalprice() %></td>
                </tr>
            </table>
            <h2>Thank You for Order ....!! Come Again...!</h2>
            <h3 class="h3"> View Product</h3>
            <button><a href="fetchallproducts">View Products</a></button>
    </div>
</body>
</html>

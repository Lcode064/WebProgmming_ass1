<%-- 
    Document   : admin
    Created on : Mar 16, 2023, 9:51:16 PM
    Author     : Luke
    Admin username: admin
    Admin password: admin
--%>

<%@page import="com.luka.adminDisplay"%>
<%@page import="com.luka.adminPortal"%>
<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="error.jsp"%>
<jsp:useBean id="myObj" class="com.luka.adminDisplay"/>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
 <div class="container">
        <div class="row">
            <div class="col">
                <h1>Receipt</h1>
        <table class="table table-hover">
    <tr>
        <th>Name</th>
        <th>Password</th>
        <th>Gender</th>
        <th>Product Name</th>
        <th>Product Code</th>
        <th>Product Price</th>
    </tr>
    <tr>
        <td><%= (String) session.getAttribute("Name")%></td>
        <td><%= (String) session.getAttribute("Password")%></td>
        <td><%= (String) session.getAttribute("Gender")%></td>
        <td><%= (String) session.getAttribute("ProductName")%></td>
        <td><%= (String) session.getAttribute("ProductCode")%></td>
        <td><%= (String) session.getAttribute("ProductPrice")%></td>
       </tr>
</table>
      </div>
            </div>
        </div>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous">
 </body>
</html>

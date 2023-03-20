<%-- 
    Document   : admin
    Created on : Mar 16, 2023, 9:51:16 PM
    Author     : Luke
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
        
    <center><h1>System Administrator Portal</h1></center><br/>
<%
        Class.forName("com.mysql.jdbc.Driver");
        String url="jdbc:mysql://localhost:3306/mgc";
        String user="root";
        String password="1234";
    // Establish a database connection
    Connection conn = DriverManager.getConnection(url, user, password);
    
    // Execute a query to retrieve data
    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery("SELECT * FROM reciept");
%>

<table class="table table-hover">
    <tr>
        <th>Name</th>
        <th>Gender</th>
        <th>Password</th>
        <th>Product Name</th>
        <th>Product Code</th>
        <th>Product Price</th>
    </tr>
    
    <% while(rs.next()) { %>
    <tr>
        <td><%= rs.getString("username") %></td>
        <td><%= rs.getString("gender") %></td>
        <td><%= rs.getString("password") %></td>
        <td><%= rs.getString("productname") %></td>
        <td><%= rs.getString("productcode") %></td>
        <td><%= rs.getString("productprice") %></td>
    </tr>
    <% } %>
</table>

<%
    // Close the database connection and result set
    rs.close();
    stmt.close();
    conn.close();
%>

 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous">
 </body>
</html>

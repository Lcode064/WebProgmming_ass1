<%-- 
    Document   : form
    Created on : Mar 16, 2023, 8:51:24 PM
    Author     : Luke
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="error.jsp"%>
<jsp:useBean id="myObj" class="com.luka.Customer_Registration"/>
<jsp:useBean id="obj" class="com.luka.superMarketBean"/>
<jsp:useBean id="inObj" class="com.luka.insert"/>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <jsp:setProperty property="name" name="myObj" value='<%= request.getParameter("name") %>'/>  
        <jsp:setProperty property="password" name="myObj" value='<%= request.getParameter("password") %>'/> 
        <jsp:setProperty property="gender" name="myObj" value='<%= request.getParameter("gender") %>'/> 
        <jsp:setProperty property="productName" name="obj" value='<%= request.getParameter("productName") %>'/>  
        <jsp:setProperty property="productCode" name="obj" value='<%= request.getParameter("productCode") %>'/> 
        <jsp:setProperty property="productPrice" name="obj" value='<%= request.getParameter("productPrice") %>'/>
        <%
            int flag=inObj.checkUser(myObj,obj);
            
            if(flag==1)
            {
                session.setAttribute("Name", request.getParameter("name"));
                session.setAttribute("Password", request.getParameter("password"));
                session.setAttribute("Gender", request.getParameter("gender"));
                session.setAttribute("ProductName", request.getParameter("productName"));
                session.setAttribute("ProductCode", request.getParameter("productCode"));
                session.setAttribute("ProductPrice", request.getParameter("productPrice"));
                response.sendRedirect("display.jsp");
            }
            else
            {
                response.sendRedirect("registration.html");
            }
            
        %>
    </body>
</html>

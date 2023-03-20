<%-- 
    Document   : market
    Created on : Mar 18, 2023, 8:59:35 AM
    Author     : Luke
    Admin username: admin
    Admin password: admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="error.jsp"%>
<jsp:useBean id="supObj" class="com.luka.superMarketBean"/>
<jsp:useBean id="inObj" class="com.luka.supInsert"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <jsp:setProperty property="productName" name="supObj" value='<%= request.getParameter("productName") %>'/>
       <jsp:setProperty property="productCode" name="supObj" value='<%= request.getParameter("productCode") %>'/>
       <jsp:setProperty property="productPrice" name="supObj" value='<%=request.getParameter("productPrice") %>'/>
       <%
           String Lebitso=(String) session.getAttribute("Lebitso");
           String Pin=(String) session.getAttribute("Pin");
           int flag=inObj.checkUser(supObj);
            if(flag==1)
            {
                session.setAttribute("Lebitso", Lebitso);
                session.setAttribute("Pin", Pin);
                session.setAttribute("ProductName", request.getParameter("productName"));
                session.setAttribute("ProductPrice", request.getParameter("productPrice"));
                session.setAttribute("ProductCode", request.getParameter("productCode"));
                response.sendRedirect("displayProducts.jsp");
            }
            else
            {
                response.sendRedirect("supermarket.html");
            }
       %>
    </body>
</html>

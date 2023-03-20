<%-- 
    Document   : login
    Created on : Mar 15, 2023, 8:59:30 PM
    Author     : Luke
    Admin username: admin
    Admin password: admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="error.jsp"%>
<jsp:useBean id="obj" class="com.luka.UserAccount"/>
<jsp:useBean id="val" class="com.luka.Validate"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <jsp:setProperty property="name" name="obj" value='<%= request.getParameter("username") %>'/>  
        <jsp:setProperty property="password" name="obj" value='<%= request.getParameter("password") %>'/> 
        <%
            
            int flag=val.checkUser(obj);//setting a flag to determine where the user is send
          
            if(request.getParameter("username").equals("admin")&&request.getParameter("password").equals("admin"))
            {
                response.sendRedirect("admin.jsp");
            }
            else
            {
                if(flag==1)
                {
                    session.setAttribute("Lebitso", request.getParameter("username"));
                    session.setAttribute("Pin", request.getParameter("password"));
                    response.sendRedirect("supermarket.html");
                }
                else
                {
                    response.sendRedirect("registration.html");
                }
            }
            
        %>
    </body>
</html>

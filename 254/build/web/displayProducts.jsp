<%-- 
    Document   : display
    Created on : Mar 18, 2023, 8:43:00 AM
    Author     : Luke
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <title>Receipt</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <link rel="stylesheet" href="receipt.css">
</head>
<body>
    <!-- java server page for displaying products and names of customers-->
    <div class="container">
        <div class="row">
            <div class="col">
                <h1>Receipt</h1>
                <hr>
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>UserName</th>
                            <th>Password</th>
                            <th>Product Name</th>
                            <th>Product Code</th>
                            <th>Product Price (M)</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><%=(String) session.getAttribute("Lebitso")%></td>
                            <td><%= (String) session.getAttribute("Pin")%></td>
                            <td><%=(String) session.getAttribute("ProductName")%></td>
                            <td><%= (String) session.getAttribute("ProductCode")%></td>
                            <td><%= (String) session.getAttribute("ProductPrice")%></td>
                        </tr>
                    </tbody>
                </table>
               
                <p style="font-size: 45px;font-family: serif">Thank you for your purchase!</p>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>

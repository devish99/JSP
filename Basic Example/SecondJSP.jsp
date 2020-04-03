<%-- 
    Document   : expression
    Created on : 31 Mar, 2020, 11:06:46 AM
    Author     : psvis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content ="text/html; charset=UTF-8">
        <title>
            Bill Details
        </title>
    </head>
<body>  
<% 
    
    String s = session.getAttribute("res").toString();
    out.println("Burger = 20 rupees"+ "<br/>");
    out.println("French Fries = 10 rupees"+ "<br/>");
    out.println("Hot Dog = 15 rupees"+ "<br/>");
    out.println("Pizza = 30 rupees"+ "<br/>");
    out.println("Total: "+s+"rupees");
%>  
</body>  
</html>
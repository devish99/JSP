<%-- 
    Document   : FirstJSP
    Created on : 31 Mar, 2020, 10:20:30 AM
    Author     : psvis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vishnu's Pizzeria</title>
    </head>
    <body>
        <%@page import="java.util.*" %>
        <%!
            float calc(float b, float f, float h, float p)
            {
                return ((b*20)+(f*10)+(h*15)+(p*30));
            }
        %>
        <%
            float bur = Float.parseFloat(request.getParameter("burger"));
            float fri = Float.parseFloat(request.getParameter("fries"));
            float hot = Float.parseFloat(request.getParameter("hotdog"));
            float piz = Float.parseFloat(request.getParameter("pizza"));
            float res = calc(bur,fri,hot,piz);
            session.setAttribute("res", res);
        %>
        <%= "Total: "+ res%>
        <%= "<br/>"+"\nClick for order details"%>
        <a href="SecondJSP.jsp">Details<a/>
    </body>
</html>

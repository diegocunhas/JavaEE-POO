<%-- 
    Document   : timestamp
    Created on : 30 de ago. de 2021, 16:37:43
    Author     : Diego Cunha
--%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Soma</title>
    </head>
    <body>
        <div>
            <h1>JavaEE</h1>
            <h2>Java Server Pages</h2>
            <h3><a href="index.html">Voltar</a></h3>
        </div>
        <h3>Data/hora do servidor</h3>
        <% Date now = new Date();%>
        <div><%= now %></div>
    </body>
</html>
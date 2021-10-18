<%-- 
    Document   : index
    Created on : 18 de out. de 2021, 15:16:41
    Author     : Diego Cunha
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%
    int sessions =0;
    ArrayList<String> activeUsers = null;
    if(application.getAttribute("sessionList")!=null){
        activeUsers = (ArrayList)application.getAttribute("sessionList");
        sessions = activeUsers.size();
    }
    
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Main</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h1>Página Inicial</h1>
        <h2> Sessões Ativas: <%= sessions %></h2>
        <% if(session.getAttribute("username")!=null && activeUsers!=null){%>
        <ul>
            <%for(String name: activeUsers){%>
            <li><%= name %></li>
            <%}%>
        </ul>
        <%}%>
    </body>
</html>
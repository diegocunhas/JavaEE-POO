<%-- 
    Document   : index
    Created on : 3 de out. de 2021, 16:54:43
    Author     : Diego Cunha
--%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%
    List<String> listaUsuarios = new ArrayList<String>();
    String usuario = (String)session.getAttribute("username");
    if(session.getAttribute("username")!=null){
        listaUsuarios.add(usuario);
    }
    
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h1>Hello World!</h1>
        <%= listaUsuarios.size() %>
        <% for(int i=0;i<listaUsuarios.size();i++){
            out.println(listaUsuarios.get(i));
        }
        %>
    </body>
</html>

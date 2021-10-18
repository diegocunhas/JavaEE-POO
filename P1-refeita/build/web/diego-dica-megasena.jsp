<%-- 
    Document   : dica_megasena
    Created on : 18 de out. de 2021, 17:33:45
    Author     : Diego Cunha
--%>
<%@page import="java.util.Arrays"%>
<%@page import="java.lang.Math"%>

<%      
    ArrayList<Integer> numbersMega = (ArrayList)session.getAttribute("numbers");
    
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mega</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <% if(session==null || session.getAttribute("username")==null)
        {%>
        <h3>Você precisa estar logado para ver este conteúdo</h3>
        <%} else if(numbersMega!=null){%>
        <form>
            <input type="submit" name="gerar" value="Dica do Dia">
        </form>
        <table border="1">
            <% for(int n:numbersMega) {%>
                <td><%= n %></td>
            <%}%>
        </table>
        
        <%}else{%>
        <h2>Erro - valores não gerados</h2>
        
        <%}%>
        
    </body>
</html>

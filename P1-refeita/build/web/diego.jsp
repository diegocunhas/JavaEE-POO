<%-- 
    Document   : diego
    Created on : 18 de out. de 2021, 15:58:13
    Author     : Diego Cunha
--%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%
    List<String> listaDisciplinas = new ArrayList<String>();
    listaDisciplinas.add("POO");
    listaDisciplinas.add("Gestão de Projetos");
    listaDisciplinas.add("Lab Engenharia de SOftware");
    listaDisciplinas.add("Programação para Dispositivos Móveis");
    listaDisciplinas.add("Redes Computadores");
    listaDisciplinas.add("Lab Banco de Dados");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Diego</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <% if(session==null || session.getAttribute("username")==null)
        {%>
        <h3>Você precisa estar logado para ver este conteúdo</h3>
        <%} else {%>
            <p>Olá meu nome é Diego da Cunha Silva e ingressei no curso de 
            Análise e Desenvolvimento de Sistemas da Fatec Praia Grande no segundo
            semestre de 2019</p>
            <p>Meu github:<a href="https://github.com/oddtask/" >oddtask</a>
        <table border="1">
            <tr>
                <th>Disciplinas</th>
            </tr>
            <% for(int i=0;i<listaDisciplinas.size();i++){ %>
            <tr>
                <td><%= listaDisciplinas.get(i) %></td>
            </tr>
            <%}%>
        </table>
        <% } %>
        
    </body>
</html>

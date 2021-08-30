<%-- 
    Document   : sum
    Created on : 30 de ago. de 2021, 16:37:43
    Author     : Diego Cunha
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
  String errorMessage = null;
  double n1=2, n2=2, result=0;
  try{
      n1 = Double.parseDouble(request.getParameter("n1"));
  }catch(Exception ex){
      errorMessage = "Parametro n1 "+request.getParameter("n1") +" inválido, entre com um número inteiro";
  }
  try{
      n2 = Double.parseDouble(request.getParameter("n2"));
  }catch(Exception ex){
      errorMessage = "Parametro n2 "+request.getParameter("n2") +"inválido, entre com um número inteiro";
  }
  try{
      result=n1+n2;
  }catch(Exception ex){
      errorMessage = "Erro ao calcular soma - " + ex.getMessage();
  }
%>
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
        <h3>Soma</h3>
        <% if (errorMessage==null){%>
            <h4><%= n1 %> + <%= n2 %> = <%= result %></h4>
        <%}else{%>
            <div style="color:red"><%= errorMessage %></div>
        <% } %>
        <form>
            <input type="number" name="n1" min="0" value="<%= n1 %>">
            <input type="number" name="n2" min="0" value="<%= n2 %>">
            <input type="submit" value="=">
        </form>
    </body>
</html>

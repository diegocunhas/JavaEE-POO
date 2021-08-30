<%-- 
    Document   : random-list
    Created on : 30 de ago. de 2021, 16:37:43
    Author     : Diego Cunha
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
  String errorMessage = null;
  int n=5;
  try{
      n = Integer.parseInt(request.getParameter("n"));
  }catch(Exception ex){
      errorMessage = "Parametro n "+request.getParameter("n") +" inválido, "
              + "entre com um número inteiro válido";
  }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Random</title>
    </head>
    <body>
        <div>
            <h1>JavaEE</h1>
            <h2>Java Server Pages</h2>
            <h3><a href="index.html">Voltar</a></h3>
        </div>
        <h3>Numeros Aleatorios</h3>
        <% if (errorMessage==null){%>
        <table border="1">
            <tr>
                <th>Indice</th>
                <th>Numero</th>
            </tr>
            <% for (int i=1; i<=n; i++){%>
                <tr>
                    <td><%= i %></td>
                    <td><%= (int)(100*Math.random()) %></td>
                </tr>
            <%}%>
        </table>
        <%}else{%>
            <div style="color:red"><%= errorMessage %></div>
        <% } %>
        <hr/>
        <form>
            <input type="number" name="n" min="0" value="<%= n %>">
            <input type="submit" value="Gerar">
        </form>
    </body>
</html>

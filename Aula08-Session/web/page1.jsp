<%-- 
    Document   : page1
    Created on : 6 de abr. de 2021, 16:43:49
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <%if(session.getAttribute("session.username")==null)
          {%>
          <p color='red'>Você precisa estar logado para acessar o conteudo</p>
        <%}
         else
        {%>
            <h2>Page 1</h2>
            <p>Pagina 1 do exemplo</p>
        <%}%>
    </body>
</html>

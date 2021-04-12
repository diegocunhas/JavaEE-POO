<%-- 
    Document   : index
    Created on : 12 de abr. de 2021, 15:59:41
    Author     : Diego da Cunha Silva
--%>
<%
    if(request.getParameter("bd1")!=null)
    {
        String bd1 = request.getParameter("bd1");
        session.setAttribute("bd1",bd1);
    }
    if(request.getParameter("bd2")!=null)
    {
        String bd2 = request.getParameter("bd2");
        session.setAttribute("bd2",bd2);
    }
    if(request.getParameter("es1")!=null)
    {
        String es1 = request.getParameter("es1");
        session.setAttribute("es1",es1);
    }
    if(request.getParameter("es2")!=null)
    {
        String es2 = request.getParameter("es2");
        session.setAttribute("es2",es2);
    }
    if(request.getParameter("po1")!=null)
    {
        String po1 = request.getParameter("po1");
        session.setAttribute("po1",po1);
    }
    if(request.getParameter("po2")!=null)
    {
        String po2 = request.getParameter("po2");
        session.setAttribute("po2",po2);
    }
    if(request.getParameter("lp1")!=null)
    {
        String lp1 = request.getParameter("lp1");
        session.setAttribute("lp1",lp1);
    }
    if(request.getParameter("lp2")!=null)
    {
        String lp2 = request.getParameter("lp2");
        session.setAttribute("lp2",lp2);
    }
    if(request.getParameter("so1")!=null)
    {
        String so1 = request.getParameter("so1");
        session.setAttribute("so1",so1);
    }
    if(request.getParameter("so2")!=null)
    {
        String so2 = request.getParameter("so2");
        session.setAttribute("so2",so2);
    }
    if(request.getParameter("si1")!=null)
    {
        String si1 = request.getParameter("si1");
        session.setAttribute("si1",si1);
    }
    if(request.getParameter("si2")!=null)
    {
        String si2 = request.getParameter("si2");
        session.setAttribute("si2",si2);
    }
    if(request.getParameter("mp1")!=null)
    {
        String mp1 = request.getParameter("mp1");
        session.setAttribute("mp1",mp1);
    }
    if(request.getParameter("mp2")!=null)
    {
        String mp2 = request.getParameter("mp2");
        session.setAttribute("mp2",mp2);
    }
%>
    

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Disciplinas</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <%  if(session==null || session.getAttribute("username")==null)
    { %>
            Você precisa estar logado para ver este contéudo.
        </form>

    <%}
        else
        {%>
        <table border="1">
            <tr>
                <th>Disciplina</th>
                <th>Nota P1</th>
                <th>P1</th>
                <th></th>
                <th>Nota P2</th>
                <th>P2</th>
                <th></th>
            </tr>
            <tr>
                <td>Banco de Dados</td>
                <td> <form><input type="number" min="0" max="10" name="bd1"/></td>
                <td><%=session.getAttribute("bd1")%></td>
                <td><input type="submit" value="Enviar"/></form></td>
                <td> <form><input type="number" min="0" max="10" name="bd2"/></td>
                <td><%=session.getAttribute("bd2")%></td>
                <td><input type="submit" value="Enviar"/></form></td>                       
            </tr>
            <tr>
                <td>Engenharia de Software II</td>
                <td> <form><input type="number" min="0" max="10" name="es1"/></td>
                <td><%=session.getAttribute("es1")%></td>
                <td><input type="submit" value="Enviar"/></form></td>
                <td> <form><input type="number" min="0" max="10" name="es2"/></td>
                <td><%=session.getAttribute("es2")%></td>
                <td><input type="submit" value="Enviar"/></form></td>                       
            </tr>
            <tr>
                <td>Programação Orientada a Objeto</td>
                <td> <form><input type="number" min="0" max="10" name="po1"/></td>
                <td><%=session.getAttribute("po1")%></td>
                <td><input type="submit" value="Enviar"/></form></td>
                <td> <form><input type="number" min="0" max="10" name="po2"/></td>
                <td><%=session.getAttribute("po2")%></td>
                <td><input type="submit" value="Enviar"/></form></td>                       
            </tr>
            <tr>
                <td>Linguagem de Programação IV</td>
                <td> <form><input type="number" min="0" max="10" name="lp1"/></td>
                <td><%=session.getAttribute("lp1")%></td>
                <td><input type="submit" value="Enviar"/></form></td>
                <td> <form><input type="number" min="0" max="10" name="lp2"/></td>
                <td><%=session.getAttribute("lp2")%></td>
                <td><input type="submit" value="Enviar"/></form></td>                       
            </tr>
            <tr>
                <td>Sistemas Operacionais II</td>
                <td> <form><input type="number" min="0" max="10" name="so1"/></td>
                <td><%=session.getAttribute("so1")%></td>
                <td><input type="submit" value="Enviar"/></form></td>
                <td> <form><input type="number" min="0" max="10" name="so2"/></td>
                <td><%=session.getAttribute("so2")%></td>
                <td><input type="submit" value="Enviar"/></form></td>                       
            </tr>
            <tr>
                <td>Segurança da Informação</td>
                <td> <form><input type="number" min="0" max="10" name="si1"/></td>
                <td><%=session.getAttribute("si1")%></td>
                <td><input type="submit" value="Enviar"/></form></td>
                <td> <form><input type="number" min="0" max="10" name="si2"/></td>
                <td><%=session.getAttribute("si2")%></td>
                <td><input type="submit" value="Enviar"/></form></td>                       
            </tr>
            <tr>
                <td>Metodologia da Pesquisa Cientifico-Tecnologica</td>
                <td> <form><input type="number" min="0" max="10" name="mp1"/></td>
                <td><%=session.getAttribute("mp1")%></td>
                <td><input type="submit" value="Enviar"/></form></td>
                <td> <form><input type="number" min="0" max="10" name="mp2"/></td>
                <td><%=session.getAttribute("mp2")%></td>
                <td><input type="submit" value="Enviar"/></form></td>                       
            </tr>
        </table> 
        <%}%>

    </body>
</html>

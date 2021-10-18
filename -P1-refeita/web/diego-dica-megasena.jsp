<%-- 
    Document   : dica_megasena
    Created on : 4 de out. de 2021, 08:33:45
    Author     : Diego Cunha
--%>
<%@page import="java.lang.Math"%>

<%  
    int[] valores = new int[6];
    if(request.getParameter("gerar")!=null){
        for(int i =0;i<valores.length;i++)
        {
            if(i==0)
            {
                valores[i] = (int)(Math.random()*61);
            }
            else
            {
                valores[i] = (int)(Math.random()*61);
                for(int j=0;j<i;j++)
                {
                    if(valores[i]==valores[j]){
                        valores[j]=(int)(Math.random()*61);
                    }
                }
            }
        }
        String v1 = String.valueOf(valores[0]);
        String v2 = String.valueOf(valores[1]);
        String v3 = String.valueOf(valores[2]);
        String v4 = String.valueOf(valores[3]);
        String v5 = String.valueOf(valores[4]);
        String v6 = String.valueOf(valores[5]);
        
        session.setAttribute("v1",v1);
        session.setAttribute("v2",v2);
        session.setAttribute("v3",v3);
        session.setAttribute("v4",v4);
        session.setAttribute("v5",v5);
        session.setAttribute("v6",v6);
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
        <form>
            <input type="submit" name="gerar" value="Dica do Dia">
        </form>
        <table border="1">
            <td><%= session.getAttribute("v1") %></td>
            <td><%= session.getAttribute("v2") %></td>
            <td><%= session.getAttribute("v3") %></td>
            <td><%= session.getAttribute("v4") %></td>
            <td><%= session.getAttribute("v5") %></td>
            <td><%= session.getAttribute("v6") %></td>
        </table>
        
    </body>
</html>

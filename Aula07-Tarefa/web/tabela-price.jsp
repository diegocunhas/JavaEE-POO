<%-- 
    Document   : tabela-price
    Created on : 22 de mar. de 2021, 19:48:15
    Author     : Diego da Cunha Silva

<%@ page import="java.Math.BigDecimal" %>
<%@ page import="java.Math.RoundingMode"%>
<%@ page import="java.text.NumberFormat"%>
<%@ page import="java.util.Locale"%>
<%@ page import="java.Math.RoundingMode"%>

https://pt.wikipedia.org/wiki/Tabela_Price
https://docs.oracle.com/javase/7/docs/api/java/text/NumberFormat.html
https://docs.oracle.com/javase/tutorial/i18n/format/decimalFormat.html

--%>
<%@ page import="java.lang.Math" %>



<%! public static class Price
    {
        public static double CalcularPagamento(double valorPresente, double i, int n)
        {
            double iPercentual = i/100 , pagamento = 0;
            pagamento = valorPresente*(iPercentual/(1-Math.pow((1+iPercentual),(double)(n*-1))));
            //BigDecimal rounding = new BigDecimal(pagamento).setScale(2,RoundingMode.HALF_DOWN);
            //NumberFormat format = NumberFormat.getInstance();
            //String pgt = ""+pagamento;
            //Number valor = format.parse("25.2");
            return Math.round(pagamento*100d)/(100d);
            //return pagamento;
        }
        
        public static double CalcularAmortizacao(double valorPresente, double juros, 
                                                double novoValor, int periodo)
        {
            double amortizacao = Price.CalcularPagamento(valorPresente,juros,periodo) 
                                    - Price.CalcularJuros(novoValor,juros);
            return Math.round(amortizacao*100d)/(100d);
        }

        public static double CalcularJuros(double valor, double i)
        {
            double iPercentual = i/100;
            double jurosValor = valor*iPercentual;
            return Math.round(jurosValor*100d)/(100d);
        }

        public static double CalcularParcela(double valorPresente, double juros, 
                                                double novoValor, int periodo)
        {
            double parcela = novoValor - Price.CalcularAmortizacao(valorPresente,juros,novoValor,periodo);
            return Math.round(parcela*100d)/(100d);
        }

    }
%>

<%  double valorPresente = 1000, juros = 3;
    int periodo = 4;
    if(request.getParameter("valorEntrada")!=null)
    {
        valorPresente = Double.parseDouble(request.getParameter("valorEntrada"));
        juros = Double.parseDouble(request.getParameter("jurosEntrada"));
        periodo = Integer.parseInt(request.getParameter("periodoEntrada"));
    }
%>    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        table, th, td{
            margin-left: auto;
            margin-right: auto;
            text-align: center;
        }        
    </style>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <%@include file="WEB-INF/jspf/menu.jspf" %>

        <table border="1">
            <tr>
                <th>Periodo n</th>
                <th>Saldo Devedor</th>
                <th>Valor da parcela</th>
                <th>Juros</th>
                <th>Amortização</th>
            </tr>
            <tr>
                <td>0</td>
                <td>R$ <%= valorPresente %></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <%double novoValor = valorPresente;
                for(int i=1; i<=periodo;i++){%>
            <tr>                 
                    <td><%= i %></td>
                    <td>R$ <%= Price.CalcularParcela(valorPresente,juros,novoValor,periodo) %></td>
                    <td>R$ <%= Price.CalcularPagamento(valorPresente,juros,periodo) %></td>
                    <td>R$ <%= Price.CalcularJuros(novoValor,juros) %></td>
                    <td>R$ <%= Price.CalcularAmortizacao(valorPresente,juros,novoValor,periodo)%></td>
                
            </tr>
            <% novoValor = novoValor + Price.CalcularJuros(novoValor,juros) - valorPresente*(juros/100)/(1-Math.pow((1+(juros/100)),(double)(periodo*-1))); 
                } %>
        </table>
        <form action="tabela-price.jsp" method="post">
            <p>Entre com o valor presente: R$<input type="number" name="valorEntrada" placeholder="1000"></p>
            <p>Entre com o juros: <input type="number" name="jurosEntrada" placeholder="3"/> % ao mês</p>
            <p>Entre com o periodo: <input type="number" name="periodoEntrada" placeholder="4"/> meses</p>
            <p><input type="submit" value="Gerar Tabela"/></p>
        </form>
        
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>

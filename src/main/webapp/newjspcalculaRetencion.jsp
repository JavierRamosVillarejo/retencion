<%-- 
    Document   : newjspcalculaRetencion
    Created on : 18 ene. 2021, 20:20:29
    Author     : Javier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="clases.Retencion" %>
        
        <h1>Calcula Retencion</h1>
        <%--Retencion ret = new Retencion (request.getParameter("salario"));
        --%>
        <% Double miSalario = Double.parseDouble(request.getParameter("salario"));%>
        <jsp:useBean id="ret" class="clases.Retencion" />
        <jsp:setProperty name="ret" property="salario" value="<%=miSalario%>"/>
            
            
        <h2> Salario Bruto:<jsp:getProperty name="ret" property="salario"/></h2>
        <h2> Retención:<jsp:getProperty name="ret" property="retencion"/></h2>
        <h2> Salario Neto:<jsp:getProperty name="ret" property="salarioNeto"/></h2>
        
        
    </body>
</html>

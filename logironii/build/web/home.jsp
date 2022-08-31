<%-- 
    Document   : home
    Created on : Aug 30, 2022, 12:59:51 AM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="metodos_elite.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>home-opatia</title>
    </head>
    <body>
        <h1>:3</h1>
        <%
            HttpSession sesion=request.getSession();
            if(!Validar.notHeadEmpty((String)sesion.getAttribute("usu"))){
            response.sendRedirect("logint.jsp");
            }
        %>
        <form method="post" action="logint.jsp">
            <input type="submit" value="cerrar las puertas del infierno" />
        </form>
    </body>
</html>

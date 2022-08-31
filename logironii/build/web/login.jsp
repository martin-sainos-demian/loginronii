<%-- 
    Document   : login
    Created on : Aug 30, 2022, 12:26:00 AM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="metodos_elite.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>its loggin' time</title>
    </head>
    <body>
        <h1></h1>
        <%
            HttpSession sesion=request.getSession();
            String usu=(String)request.getParameter("usu");
            String pass=(String)request.getParameter("pass");
            if(Validar.notHeadEmpty(usu)
            &&Metodos_1.nietzscheUsuario(usu)){
                if(Validar.notHeadEmpty(pass)
                &&Metodos_1.doUKnowDaPass(usu,pass)){
                sesion.setAttribute("usu",usu);
                sesion.setAttribute("pass",pass);
                response.sendRedirect("home.jsp");
                }else{
                sesion.setAttribute("hey_guys","Contraseña incorrecta");
                response.sendRedirect("logint.jsp");
                }
            }
            else{
            sesion.setAttribute("hey_guys","Usuario incorrecto");
            response.sendRedirect("logint.jsp");
            }
        %>
    </body>
</html>

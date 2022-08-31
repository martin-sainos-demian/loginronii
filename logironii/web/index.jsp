<%-- 
    Document   : index
    Created on : 23/08/2022, 07:39:29 PM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="metodos_elite.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Flower</title>
    </head>
    <body>
        
        <%
            HttpSession sesion=request.getSession();
            Validar validar=new Validar();
            
            String usuario=(String)sesion.getAttribute("usu");
            if(validar.notHeadEmpty(usuario)){
            response.sendRedirect("logint.jsp");
            }
        %>
        
        <h1>omaigosh im so perfect</h1>
        <p><%
        if(sesion.getAttribute("hey_guys")!=null){
            out.print(sesion.getAttribute("hey_guys"));
            }%></p>
        <form method="POST" action="login.jsp">
            <label for="usu">Usuario</label>
            <br>
            <input type="text" name="usu" id="usu" />
            <br>
            <label for="pass">Contraseña</label>
            <br>
            <input type="text" name="pass" id="pass" />
            <br>
            <input type="submit" value='Enviar'/>
        </form>
    </body>
</html>

<%-- 
    Document   : logint
    Created on : Aug 30, 2022, 12:27:45 AM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login't</title>
    </head>
    <body>
        <h1>saliendo</h1>
        <%
            HttpSession sesion=request.getSession();
            if(sesion!=null){
            sesion.invalidate();
            response.sendRedirect("index.jsp");
            }
        %>
    </body>
</html>

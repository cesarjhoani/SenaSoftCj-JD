<%-- 
    Document   : puntos
    Created on : 26/09/2023, 11:47:04 AM
    Author     : andrea
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form action="Controlador" method="post">
            <label>
                punto
            </label>
            <input type="number" name="punto1" >
            <input type="number" name="punto2" >
            <input type="number" name="punto3" >
            <input type="number" name="punto4" >
            
            <input type="submit" name="accion" value="enviar">
        </form>

        <h1>${total}</h1>

    </body>
</html>

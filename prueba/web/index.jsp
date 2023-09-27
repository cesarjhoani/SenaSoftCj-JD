<%-- 
    Document   : index.jsp
    Created on : 8/09/2023, 06:00:01 PM
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
    <div style="position: relative; width: 700px; height: 600px; border: 1px solid black;">

        <%
            // Definir las ubicaciones y conexiones
            String[] ubicaciones = {"A", "B", "C", "D"};
            int[] posX = {20, 45, 79, 56};
            int[] posY = {20, 60, 90, 79};
            String inicio = "D";

            // Calcular las coordenadas X e Y del punto de inicio
            int inicioX = 0;
            int inicioY = 0;
            for (int i = 0; i < ubicaciones.length; i++) {
                if (ubicaciones[i].equals(inicio)) {
                    inicioX = posX[i];
                    inicioY = posY[i];
                    break;
                }
            }

            // Iterar sobre las ubicaciones y pintarlas como divs
            for (int i = 0; i < ubicaciones.length; i++) {
                int x = posX[i];
                int y = posY[i];
        %>
        <div style="position: absolute; left: <%= x %>px; top: <%= y %>px; width: 10px; height: 10px; background-color: red;"></div>
        <%
            }
        %>

    </div>
</body>
</html>

<%-- 
    Document   : index.jsp
    Created on : 8/09/2023, 06:00:01 PM
    Author     : andrea
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    <div style="position: relative; width: 700px; height: 600px; border: 1px solid black;">
        <div style="position: absolute; left: ${p1}px; top: ${p1}px; width: 10px; height: 10px; background-color: red;"></div>
        <div style="position: absolute; left: ${p2}px; top: ${p2}px; width: 10px; height: 10px; background-color: red;"></div>
        <div style="position: absolute; left: ${p3}px; top: ${p3}px; width: 10px; height: 10px; background-color: red;"></div>
        <div style="position: absolute; left: ${p4}px; top: ${p4}px; width: 10px; height: 10px; background-color: red;"></div>

    </div>

</html>

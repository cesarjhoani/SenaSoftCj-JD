<%-- 
    Document   : login
    Created on : 27/09/2023, 04:04:41 PM
    Author     : andrea
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container col-lg-3">
            
        
        
        <form action="ControladorLogin?accion=verificar" method="post">
                <div class="form-group text-center"> 
                    <img src="img/log.png" height="80" width="100"/>
                    <p><strong>login sena soft</strong></p>
                </div>
                <div class="form-group"> 
                    <label>email:</label>
                    <input class="form-control" type="email" name="txtemail" placeholder="ingrese el email" required>
                </div>
                <div class="form-group"> 
                    <label>passoword:</label>
                    <input class="form-control" type="text" name="txtpassword" placeholder="example@gmail.com" required>
                    
                </div>
                <input class="btn btn-danger btn-block" type="submit" name="accion" value="verificar">
            </form>
            
            </div>
        
        ${mensaje}
       
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>

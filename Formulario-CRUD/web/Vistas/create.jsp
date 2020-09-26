<%-- 
    Document   : create
    Created on : 24 sep. 2020, 11:28:38 a. m.
    Author     : Eduardo Duran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar usuario</title>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-6">
                <h1>Introduzca los datos</h1>
                <form action = "Controlador">
                    <p>Nombre: <input class="form-control" type="text" name="name" required></p>
                    <p>Apellido: <input class="form-control" type="text" name="apellido" required></p>
                    <p>E-Mail: <input class="form-control" type="text" name="email" required></p>
                    <p>Nombre de usuario: <input class="form-control" type="text" name="userName" required></p>
                    <p>Contraseña: <input class="form-control" type="password" name="password" required></p>
                    <p><input class="btn-primary" type="submit" name="accion" value="Registrar" required></p>
                </form>
            </div>
        </div>
    </body>
</html>

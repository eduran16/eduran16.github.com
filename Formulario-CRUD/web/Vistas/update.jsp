<%-- 
    Document   : update
    Created on : 24 sep. 2020, 11:28:54 a. m.
    Author     : Eduardo Duran
--%>

<%@page import="Modelo.Usuario"%>
<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar usuario</title>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-6">
                <%
                    UsuarioDAO dao = new UsuarioDAO();
                    int id = Integer.parseInt((String) request.getAttribute("idUser"));
                    Usuario user = (Usuario)dao.list(id);
                %>
                <h1>Editar informacion</h1>
                <form action = "Controlador">
                    <p>Nombre: <input class="form-control" type="text" name="name" value="<%= user.getNombre()%>"></p>
                    <p>Apellido: <input class="form-control" type="text" name="apellido" value="<%= user.getApellido()%>"></p>
                    <p>E-Mail: <input class="form-control" type="text" name="email" value="<%= user.getEmail()%>"></p>
                    <p><input type="hidden" name="id" value="<%= user.getIdUsuario()%>"></p>
                    <p>Nombre de usuario: <input class="form-control" type="text" name="userName" value="<%= user.getUserName()%>"></p>
                    <p>Contraseña: <input class="form-control" type="password" name="password" value="<%= user.getPassword()%>"></p>
                    <p><input class="btn btn-success" type="submit" name="accion" value="Actualizar"></p>
                    <a href="Controlador?accion=read">Volver</a>
                </form>
            </div>
        </div>
    </body>
</html>

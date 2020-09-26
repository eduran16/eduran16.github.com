<%-- 
    Document   : read
    Created on : 24 sep. 2020, 11:28:46 a. m.
    Author     : Eduardo Duran
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Usuario"%>
<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuarios registrados</title>
    </head>
    <body style="text-align: center;">
        <h1>Registro de usuario</h1>
        <a class="btn btn-success" href="Controlador?accion=create">Crear nuevo usuario</a>
        <div class="container" "style="justify-content: center; display: flex;">
            <table class="table table-bordered" style="margin-top: 10px;">
                <thead>
                    <tr>
                        <th>IdUsuario</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Username</th>
                        <th>E-Mail</th>
                        <th>Contraseña</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <%
                    UsuarioDAO dao = new UsuarioDAO();
                    List<Usuario>list = dao.read();
                    Iterator<Usuario>iter = list.iterator();
                    Usuario user = null;

                    while (iter.hasNext()){
                        user = iter.next();

                %>
                <tbody>
                    <tr>
                        <td><%= user.getIdUsuario()%></td>
                        <td><%= user.getNombre()%></td>
                        <td><%= user.getApellido()%></td>
                        <td><%= user.getUserName()%></td>
                        <td><%= user.getEmail()%></td>
                        <td><%= user.getPassword()%></td>
                        <td>
                            <a class="btn btn-warning" href = "Controlador?accion=update&id=<%= user.getIdUsuario()%>">Editar</a>
                            <a class="btn btn-danger" href = "Controlador?accion=delete&id=<%= user.getIdUsuario()%>">Delete</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
    </body>
</html>
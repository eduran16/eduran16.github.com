/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Usuario;
import ModeloDAO.UsuarioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Eduardo Duran
 */
public class Controlador extends HttpServlet {
    
    String create = "Vistas/create.jsp" , read = "Vistas/read.jsp" , update = "Vistas/update.jsp";
    UsuarioDAO dao = new UsuarioDAO();
    Usuario user = new Usuario();
    int id;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controlador</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso = "";
        String action = request.getParameter("accion");
        
        if (action.equalsIgnoreCase("read")){
            acceso = read;
            
        } else if (action.equalsIgnoreCase("create")){
            acceso = create;
        }
        else if (action.equalsIgnoreCase("Registrar")){
            String nombre = request.getParameter("name");
            String apellido = request.getParameter("apellido");
            String email = request.getParameter("email");
            String userName = request.getParameter("userName");
            String password = request.getParameter("password");
            user.setNombre(nombre);
            user.setApellido(apellido);
            user.setEmail(email);
            user.setUserName(userName);
            user.setPassword(password);
            dao.create(user);
            acceso = read;
        }
        
        else if (action.equalsIgnoreCase("update")){
            request.setAttribute("idUser" , request.getParameter("id"));
            acceso = update;
        }
        
        else if (action.equalsIgnoreCase("Actualizar")){
            id=Integer.parseInt(request.getParameter("id"));
            String nombre = request.getParameter("name");
            String apellido = request.getParameter("apellido");
            String email = request.getParameter("email");
            String userName = request.getParameter("userName");
            String password = request.getParameter("password");
            user.setIdUsuario(id);
            user.setNombre(nombre);
            user.setApellido(apellido);
            user.setEmail(email);
            user.setUserName(userName);
            user.setPassword(password);
            dao.update(user);
            acceso = read;
        }
        
        else if (action.equalsIgnoreCase("delete")){
            id=Integer.parseInt(request.getParameter("id"));
            user.setIdUsuario(id);
            dao.delete(id);
            acceso = read;
        }
        RequestDispatcher view = request.getRequestDispatcher(acceso);
        view.forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interfaces;

import Modelo.Usuario;
import java.util.List;

/**
 *
 * @author Eduardo Duran
 */
public interface CRUD {
    
    public List read();
    public Usuario list (int idUsuario);
    public boolean create (Usuario user);
    public boolean update (Usuario user);
    public boolean delete (int idUsuario);
    
}

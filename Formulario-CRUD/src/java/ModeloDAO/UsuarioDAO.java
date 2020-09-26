/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;


import Config.Conexion;
import Interfaces.CRUD;
import Modelo.Usuario;
import java.sql.Connection;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Eduardo Duran
 */
public class UsuarioDAO implements CRUD{
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Usuario u = new Usuario();

    @Override
    public List read() {  
        ArrayList<Usuario>list = new ArrayList();
        String sql = "select * from usuario";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while (rs.next()){
                Usuario user = new Usuario();
                user.setIdUsuario(rs.getInt(1));
                user.setNombre(rs.getString(2));
                user.setApellido(rs.getString(3));
                user.setUserName(rs.getString(4));
                user.setEmail(rs.getString(5));
                user.setPassword(rs.getString(6));
                list.add(user);
            }
        } catch (Exception e){     
        }
        return list;
    }
    
    @Override
    public Usuario list(int idUsuario) {
        String sql = "select * from Usuario where ID_USUARIO="+idUsuario;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while (rs.next()){
                u.setIdUsuario(rs.getInt(1));
                u.setNombre(rs.getString(2));
                u.setApellido(rs.getString(3));
                u.setUserName(rs.getString(4));
                u.setEmail(rs.getString(5));
                u.setPassword(rs.getString(6));
            }
        } catch (Exception e){     
        }
        
        return u;
    }

    @Override
    public boolean create(Usuario user) {
        String sql = "INSERT INTO Usuario (NOMBRE, APELLIDO, USERNAME, [E-MAIL], CONTRASEÑA) VALUES('"+user.getNombre()+"','"+user.getApellido()+"','"+user.getUserName()+"','"+user.getEmail()+"','"+user.getPassword()+"')";
        try{
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        }catch (Exception e){
            
        }
        return false;
    }

    @Override
    public boolean update(Usuario user) {
        String sql = "update Usuario set NOMBRE='"+user.getNombre()+"', APELLIDO='"+user.getApellido()+"', USERNAME='"+user.getUserName()+"', [E-MAIL]='"+user.getEmail()+"', CONTRASEÑA='"+user.getPassword()+"'where ID_USUARIO="+user.getIdUsuario();
        try{
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        }catch (Exception e){
            
        }
        return false;
    }

    @Override
    public boolean delete(int idUsuario) {
        String sql = "delete from Usuario where ID_USUARIO="+idUsuario;
        try{
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        }catch (Exception e){
            
        }
        return false;
    }
    
}

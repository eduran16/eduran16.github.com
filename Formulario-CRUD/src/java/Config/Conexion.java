package Config;
import java.sql.*;
/**
 *
 * @author Eduardo Duran
 */
public class Conexion {
    Connection con;
    
    public Conexion (){
         
        try {
           Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
           String url = "jdbc:sqlserver://localhost:1433;databaseName=Formulario";
           con = DriverManager.getConnection(url, "sa", "12345");
           
         } 
        
        catch (ClassNotFoundException e){
             e.printStackTrace();
         }
        catch (SQLException e){
             e.printStackTrace();
         }
    }

    public Connection getConnection(){
        return con;
    }
   
}


package persistencia;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
/*Clase que maneja los CRUDs a la base de datos, para guardar los datos de usuarios*/
public class UserDAO {
    
    /*metodo para insertar nuevos usuarios a la base de datos*/
    public void insertarUsuario(String nombre, String correo, String contrasena){
    String sql= "INSERT INTO usuarios(nombre, correo, contrasena)VALUES(?, ?, ?)";
    
        try(
            Connection conn = conexion.getConnection();
            PreparedStatement pstmt = conn.prepareStatement(sql)){
            pstmt.setString(1, nombre);
            pstmt.setString(2, correo);           
            pstmt.setString(3, contrasena);

            pstmt.executeUpdate();
        
                    
        } catch (SQLException e) {
        e.printStackTrace();
        }
        
    }
    /*metodo para verificar la existencia de un usuario en la base de datos */
     public boolean autenticarUsuario(String nombre,  String contrasena){
    String sql ="SELECT * FROM usuarios WHERE nombre= ? AND contrasena= ?";
    
        try (
            Connection conn = conexion.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(sql)){
        pstmt.setString(1, nombre);
        pstmt.setString(2, contrasena);
        ResultSet rs= pstmt.executeQuery();
        return rs.next();
        
        } catch (SQLException e) {
            e.printStackTrace();
}
        return false;
    }
    /*metodo para modificar los datos de un usuario en la base de datos. */
      public void modificarUsuario( String nombre, String correo, String contrasena ){
    String sql="UPDATE usuarios SET nombre= ?, correo=?, contrasena=? WHERE nombre=?, correo=?, contrasena=? " ;
    
  try( Connection conn = conexion.getConnection();
    PreparedStatement pstmt= conn.prepareStatement(sql)){
      pstmt.setString(1, nombre);
      pstmt.setString(2, contrasena);
      pstmt.executeUpdate();

  }catch(SQLException e){
  }
    }
   
}

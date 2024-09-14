
package persistencia;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
/*clase para manejar conexiones con bases de datos*/
public class conexion {
    /*Parametros para la conexion con la base de datos: */
    private static final String url="jdbc:mysql://localhost:3306/software_de_registro1";
    private static final String usuario="root";
    private static final String _contraseña="";
   /*metodo para establecer la conexion con la base de datos:*/
        
public static Connection getConnection() throws SQLException{
    
    return DriverManager.getConnection(url, usuario, _contraseña);
}
}

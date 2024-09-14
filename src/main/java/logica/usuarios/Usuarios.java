
package logica.usuarios;

import logica.cuentas.Cuentas;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import logica.registrosIniciosDeSesion.RegistroInicios;
import persistencia.CRUD.ConexionDB2;
import persistencia.UserDAO;
import persistencia.conexion;

public class Usuarios {
   
    /*atributos de la clase:*/
    private String nombre;
    private String correo;
    private String contraseña;
    /*Con el fin de asociar las clases cuentas y usuarios se crea 
    un atributo del tipo cuentas dentro de la clase usuarios*/
    private Cuentas cuenta;
  private RegistroInicios nuevoInicio;
    
    /*metodos constructores de la clase:*/
  public Usuarios(){
  
  }
    public Usuarios( String nombre,  String correo, String contraseña){
        this.nombre=nombre;
       
        this.correo=correo;
        this.contraseña=contraseña;
        /*Con esta instancia de la clase cuenta se guardan los datos 
        de la cuenta juntamente con los del usuario.*/
        this.cuenta =new Cuentas(nombre, correo, contraseña,nuevoInicio);
    }
    /*metodos setters y getters de la clase, para que los atributos 
    de la misma puedan ser accedidos desde otras clases dentro o fuera del mismo paquete.
    */
    //setters y getters para el nombre:
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
 
    
    //seters y geters para el correo:
     public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }
    //seters y geters para la contraseña:

    public String getContraseña() {
        return contraseña;
    }

    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }
    
   public void registrarUsuarios(String nombre, String correo, String contraseña){
  
       UserDAO usuarioNuevo = new UserDAO();
       usuarioNuevo.insertarUsuario(nombre, correo, contraseña);
 
   }
   public boolean iniciarSesion(String nombre, String correo, String contraseña){
   UserDAO verificarUsuario = new UserDAO();
   verificarUsuario.autenticarUsuario(nombre, contraseña);
   return false;
   }
        
    

   
    
    }
    
 
   
   
  
      


    
    


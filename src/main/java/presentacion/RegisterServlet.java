
package presentacion;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import persistencia.UserDAO;

/*servlet que maneja los request y response de la pagina del formulario de registro de usuarios
para enviarlos a una base de datos:*/
@WebServlet(name = "RegisterServlet", urlPatterns = {"/RegisterServlet"})
public class RegisterServlet extends HttpServlet {
private static final long serialVersionUID =1L;
/*instancia de la clase para la conexion y operaciones con base de datos: */
private UserDAO userDAO;

public void init(){
userDAO = new UserDAO();
}
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /*metodo post que maneja las solicitudes del formulario de registro, e instancia 
    la clase de gestion de la base de datos, accediendo a los metodos para la insercion
    de nuevos usuarios.*/
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
        String nombre= request.getParameter("nombre");
        String correo= request.getParameter("email");
        String contrasena= request.getParameter("password");

    userDAO.insertarUsuario(nombre, correo, contrasena);
    //response.sendRedirect("welcome.jsp");
   request.getRequestDispatcher("welcome.jsp").forward(request, response);
   
    

        
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

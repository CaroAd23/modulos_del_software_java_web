
package presentacion;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import persistencia.UserDAO;

/*servlet para la modificacion de datos de usuario*/
@WebServlet(name = "UpdateServlet", urlPatterns = {"/UpdateServlet"})
public class UpdateServlet extends HttpServlet {
private UserDAO userDAO;
/*instacia de clase controladora de conexion y comunicacion con bases de datos*/
public void init(){
UserDAO userDAO = new UserDAO();
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

    /*metodo post que maneja la modificacion de usuarios*/
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        String nombre= request.getParameter("nombre");
        String correo= request.getParameter("correo");
        String contraseña= request.getParameter("contraseña");
        
        userDAO.modificarUsuario(nombre,  contraseña, correo);
        response.sendRedirect("update.jsp");
     
        
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

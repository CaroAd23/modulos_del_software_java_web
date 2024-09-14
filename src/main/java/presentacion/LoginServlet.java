
package presentacion;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import persistencia.UserDAO;

/*servlet que maneja los request y response del formulario de inicio de sesion */
@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID=1L;
    /*instacia de la clase UserDAO que maneja los parametros de conexion y 
    CRUD con la base de datos */
    private UserDAO userDAO;
    
    public void init() {
    userDAO =new UserDAO();
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

    /*metodo para manejar las solicitudes del formulario: */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
   String name = request.getParameter("nombre");
   String password= request.getParameter("password");
   
   boolean autenticado= userDAO.autenticarUsuario(name, password);
    if(autenticado){
           //request.getRequestDispatcher("main.jsp").forward(request, response);
           response.sendRedirect("main.jsp");
    }else{
           //request.getRequestDispatcher("loginError.jsp").forward(request, response);
response.sendRedirect("loginError.jsp");
    }
    }

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

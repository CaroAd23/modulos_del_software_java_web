
package presentacion;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
/*servlet que maneja las solicitudes y conexiones entre las diferentes interfaces 
de usuario*/
@WebServlet(name = "comunicationServlet", urlPatterns = {"/comunicationServlet"})
public class comunicationServlet extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

 /*metodo post que resive la solicitud del usuario en la pagina principal y lo 
    redirige a la pagina del formulario correspondiente, al interactuar con los botones
    registrarse e iniciar sesion: */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

          String action = request.getParameter("action");
     
        
        if("Registrate".equals(action)){
            request.getRequestDispatcher("UserRegistration.jsp").forward(request, response);
        
        }else if("Inicia Sesion".equals(action)){
                    request.getRequestDispatcher("UserLogin.jsp").forward(request, response);

        }else{
        response.getWriter().println("accion no reconocida");
        }
    }

 
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

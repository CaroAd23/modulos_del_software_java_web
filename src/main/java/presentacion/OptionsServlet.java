/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package presentacion;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
/*servlet que maneja las peticiones del menu de navegacion de la pagina principal*/
@WebServlet(name = "OptionsServlet", urlPatterns = {"/OptionsServlet"})
public class OptionsServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

  /*metodo para el manejo de las opciones de la pagina principal*/
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    /*String inicio=request.getParameter("inico");
    String nosotros=request.getParameter("nosotros");
    String contacto= request.getParameter("contacto");
    String informacion= request.getParameter("informacion");*/
    
    /*estructuras de control de flujo para las solicitudes del formulario de opciones 
    o menu de navegacion:*/
    String action= request.getParameter("action");
    if("nosotros".equals(action)){
    request.getRequestDispatcher("nosotros.jsp").forward(request, response);
    }else if("contacto".equals(action)){
        request.getRequestDispatcher("contactos.jsp").forward(request, response);

    }else if("informacion".equals(action)){
        request.getRequestDispatcher("informacion.jsp").forward(request, response);

    }
    }
    

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

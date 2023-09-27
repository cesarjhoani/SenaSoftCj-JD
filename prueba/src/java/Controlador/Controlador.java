/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author andrea
 */
public class Controlador extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("accion");
        
        if("enviar".equals(action)){
            int punto1 = Integer.parseInt(request.getParameter("punto1"));
            int punto2 = Integer.parseInt(request.getParameter("punto2"));
            int punto3 = Integer.parseInt(request.getParameter("punto3"));
            
            //int punto3 = Integer.parseInt(request.getParameter("punto3"));
           request.setAttribute("p1", punto1);
           request.setAttribute("p2", punto2);
           request.setAttribute("p3", punto3);
           
           //request.setAttribute("p3", punto3);
        request.getRequestDispatcher("index.jsp").forward(request, response); 
        }
        
             
             
        /*int x = 100;
        int y = 100;
        request.setAttribute("x", x); // Cambia esto por tus coordenadas X
        request.setAttribute("y", y);  // Cambia esto por tus coordenadas Y
        */

        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        doGet(request,response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

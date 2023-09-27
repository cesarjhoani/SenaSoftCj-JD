/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.Conexiones;
import Modelo.Json;
import Modelo.Ubicaciones;
import com.google.gson.Gson;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author andrea
 */
public class ControladorSon extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        // Ruta del archivo JSON en el directorio "web pages"
        String filePath = getServletContext().getRealPath("ubication.json");

        // Lee el contenido del archivo JSON
        try (BufferedReader br = new BufferedReader(new FileReader(filePath))) {
            StringBuilder jsonContent = new StringBuilder();
            String line;
            while ((line = br.readLine()) != null) {
                jsonContent.append(line);
            }

            // Utiliza Gson para analizar el JSON en objetos Java
            Gson gson = new Gson();
            Json datos = gson.fromJson(jsonContent.toString(), Json.class);

            // Ahora puedes trabajar con los datos en tus clases de modelo (Ubicacion, Conexion, etc.)
            // Por ejemplo:
            List<Ubicaciones> ubicaciones = datos.getUbicaciones();
            List<Conexiones> conexiones = datos.getConexiones();
            String inicio = datos.getInicio();

            // Realiza las operaciones necesarias con los datos y envía la respuesta al cliente
            // Por ejemplo, puedes establecer atributos en el request y luego redirigir a una página JSP
            request.setAttribute("ubicaciones", ubicaciones);
            request.setAttribute("conexiones", conexiones);
            request.setAttribute("inicio", inicio);
            request.getRequestDispatcher("index.jsp").forward(request, response);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

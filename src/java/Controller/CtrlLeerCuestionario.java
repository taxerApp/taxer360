/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jimmy
 */
public class CtrlLeerCuestionario extends HttpServlet {

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
        
   
      
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
         PrintWriter out = response.getWriter();
        response.setContentType("text/html;charset=UTF-8");
        int bnd = Integer.parseInt(request.getParameter("bnd"));
        switch (bnd) {
            case 1:
                out.print(cuestionarioDinamico(request));
                break;
                
        }
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
    
    
    private String cuestionarioDinamico(HttpServletRequest request) {
        String respuesta = "";
        
            for (int i = 1; i <= 10; i++) {
                
                respuesta+="<div>\n" +
"                    <div class=\"TitulodePregunta\">\n" +
"                        <label for=\"pregunta"+i+"\">Esta es la pregunta número "+i+" :</label> <br> <br>\n" +
"                    </div>\n" +
"                    <input type='radio' name=\"pregunta"+i+"\" value=\"a\"><label> Nunca </label> \n" +
"                    <input type='radio' name=\"pregunta"+i+"\" value=\"b\"> <label> Casi Nunca </label> \n" +
"                    <input type=\"radio\" name=\"pregunta"+i+"\" value=\"c\"> <label> Siempre </label> \n" +
"                    <input type=\"radio\" name=\"pregunta"+i+"\" value=\"d\"> <label> Casi Siempre </label> \n" +
"                </div><br>";
                
                            }
        return respuesta;
 }
    
}


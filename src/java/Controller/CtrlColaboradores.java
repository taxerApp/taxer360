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
 * @author David
 */
public class CtrlColaboradores extends HttpServlet {

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
        int bnd = Integer.valueOf(request.getParameter("bnd"));
        switch (bnd) {
            case 1:
                out.print(consultarColaboradores(request));
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

    private String consultarColaboradores(HttpServletRequest request) {
        String respuesta = "";
        int idEmpresa = Integer.parseInt(request.getParameter("idEmpresa"));
        respuesta += "<tr><td hidden='true'>1</td>   <td>Juan Hernandez</td> <td>Jefe de Departamento</td>  <td>Prueba</td></tr>";
        respuesta += "<tr><td hidden='true'>2</td>   <td>Pedro Lopez</td> <td>Jefe de Departamento</td>  <td>Prueba</td></tr>";
        respuesta += "<tr><td hidden='true'>3</td>  <td>Raul Suarez</td> <td>Jefe de Departamento</td>  <td>Prueba</td></tr>";
        respuesta += "<tr><td hidden='true'>4</td>  <td>Vianey Rodriguez</td> <td>Jefe de Departamento</td>  <td>Prueba</td></tr>";

        System.out.println("la tabla es :::: " + respuesta);
        return respuesta;
    }

}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Dao.EvaluacionDao;
import Dto.EvaluacionDto;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author David
 */
public class CtrlEvaluacion extends HttpServlet {

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
        int bnd = Integer.parseInt(request.getParameter("bnd"));

        switch (bnd) {
            case 1:
                out.print(creaEvaluacion(request));
                break;
            case 2:
                out.print(consultarEvaluacion(request));
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

    private boolean creaEvaluacion(HttpServletRequest request) {
        int idEmpresa = Integer.parseInt(request.getParameter("idEmpresa"));
        String periodo = request.getParameter("periodo");
        String fInicio = request.getParameter("fInicio");
        String fFin = request.getParameter("fFin");
        EvaluacionDao dao = new EvaluacionDao();
        boolean resp = dao.registraEvaluacion(idEmpresa, periodo, fInicio, fFin);

        return resp;
    }

    private String consultarEvaluacion(HttpServletRequest request) {
        int idEmpresa = Integer.parseInt(request.getParameter("idEmpresa"));
        String respuesta = "";
        EvaluacionDao dao = new EvaluacionDao();
        List<EvaluacionDto> lstEvaluacion = dao.consultaEvaluaciones(idEmpresa);

        for (EvaluacionDto evaluacion : lstEvaluacion) {
       respuesta+="<tr><td hidden='true'>"+evaluacion.getId()+"</td> <td>"+evaluacion.getPeriodo()+"</td> <td>"+evaluacion.getfInicio()+"</td><td>"+evaluacion.getfFin()+"</td><td onclick='cargarCuestionarios("+evaluacion.getId()+")'><center><i class='fa fa-plus' style='color:#ffca2c'></i></center></td></tr>";
        }

        return respuesta;
    }

}

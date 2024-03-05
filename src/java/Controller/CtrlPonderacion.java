/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Dao.PonderacionDao;
import Dto.FiguraPuestoDto;
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
public class CtrlPonderacion extends HttpServlet {

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
        System.out.println("dadadasa");
        switch (bnd) {
            case 1:
                out.print(pintaCamposPonderacion(request));
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

    private String pintaCamposPonderacion(HttpServletRequest request) {
        String respuesta="";
        PonderacionDao dao = new PonderacionDao();
        List<FiguraPuestoDto> lstFigura=dao.getFiguraPuesto();
        
        for(int i=0;i<lstFigura.size();i++){
          respuesta+="    <tr class=\"fila\">\n" +
"                <td style=\"width: 70%\" class=\"celda\">\n" +
"                    <label>Rol:</label>\n" +
"                    <input type=\"text\" value='"+lstFigura.get(i).getFigura()+"' class=\"campoInputTextE\" disabled=\"\">\n" +
"                </td>\n" +
"                \n" +
"                <td style=\"width: 30%\" class=\"celda\">\n" +
"                    <label>Ponderación:</label>\n" +
"                    <input type=\"text\" class=\"campoInputPorcenPonde\" id=\"txt"+lstFigura.get(i).getFigura().replaceAll(" ", "")+"\">\n" +
"                </td>\n" +
"            </tr>"  ;
        }
return respuesta;
    }

}
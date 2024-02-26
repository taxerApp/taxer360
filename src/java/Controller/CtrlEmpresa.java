/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Dao.EmpresaDao;
import Dto.EmpresaDto;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author David
 */
public class CtrlEmpresa extends HttpServlet {

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
        System.out.println("dadadasa");
        switch (bnd) {
            case 1:
                out.print(registraEmpresa(request));
                break;

            case 2:
                out.print(consultaEmpresa(request));
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

    private boolean registraEmpresa(HttpServletRequest request) {

        String empresa = request.getParameter("empresa");;
        String rfc = request.getParameter("rfc");
        String razonSocial = request.getParameter("razonSocial");
        EmpresaDao dao = new EmpresaDao();
        boolean respuesta = dao.registraEmpresa(empresa, rfc, razonSocial);
        return respuesta;

    }

    private String consultaEmpresa(HttpServletRequest request) {
        String rspuesta="";
        List<EmpresaDto> lstEmpresa = new ArrayList<EmpresaDto>();
        int idEmpresa = Integer.parseInt(request.getParameter("idEmpresa"));
        int bnd = Integer.parseInt(request.getParameter("bnd"));
        EmpresaDao dao = new EmpresaDao();
       lstEmpresa= dao.consultaEmpresa(idEmpresa, bnd);
       
         for (int i = 0; i < lstEmpresa.size(); i++) {
            rspuesta += "<tr >"
                    + "<td hidden='true'>" + lstEmpresa.get(i).getId() + "</td>"
                    + "<td>" + lstEmpresa.get(i).getEmpresa()+ "</td>"
                    + "<td>" + lstEmpresa.get(i).getRfc()+ "</td>"
                    + "<td>" + lstEmpresa.get(i).getRazonSocial()+ "</td>";
            if (lstEmpresa.get(i).getStatus()==1) {
//                rspuesta += "<td style='background: green; color:white;'>";
                rspuesta += "<td>";
            } else {
                rspuesta += "<td style='background: red; color:white;'>";
            }
            rspuesta += (lstEmpresa.get(i).getStatus()==1?"Activa":"Inactiva")+ "</td>"
                    + "<td style='color:black;' onclick='wndEditaEmpresa()'><center><i class='fa fa-edit' style='color:#ffca2c'></i></center></td>"
                    + "</tr>";
        }
        System.out.println(""+rspuesta);
        return rspuesta;

    }

}

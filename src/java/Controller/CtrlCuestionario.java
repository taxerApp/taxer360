/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Dao.CuestionarioDao;
import Dto.CompetenciaDto;
import Dto.CuestionarioDto;
import Dto.NivelCompetenciaDto;
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
public class CtrlCuestionario extends HttpServlet {

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
                out.print(consultaCuestionariosCargados(request));
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

    private String consultaCuestionariosCargados(HttpServletRequest request) {
        String respuesta = "";
        int idEvaluacion = Integer.parseInt(request.getParameter("idEvaluacion"));
        CuestionarioDao dao = new CuestionarioDao();
        List<NivelCompetenciaDto> lstNivelCompetencia = dao.consultaNivelCompetencia();
        List<CompetenciaDto> lstCompetencias = dao.consultaCompetencias(idEvaluacion);

        for (int nc = 0; nc < lstNivelCompetencia.size(); nc++) {
            lstNivelCompetencia.get(nc).getId();
            respuesta += " <div class=\"title-tab\"><i class=\"fa fa-1x\"></i>" + lstNivelCompetencia.get(nc).getNivel() + "</div> "
                    + "<div class=\"content-tab\">";
            respuesta += " <table class=\"tblCargarCuestionario\">\n"
                    + "                        <tr>\n"
                    + "                            <th> <label class=\"lblTituloTablaCuestionario\">Competencia</label></th>   <th> <label class=\"lblTituloTablaCuestionario\">Cargar/ Visualizar</label></th> <th> <label class=\"lblTituloTablaCuestionario\">Estatus</label></th>\n"
                    + "                        </tr>";
            for (int c = 0; c < lstCompetencias.size(); c++) {
                lstCompetencias.get(c).getId();
                List<CuestionarioDto> lstCuestionario = dao.consultaCuestionariosCargados(lstCompetencias.get(c).getId(), lstNivelCompetencia.get(nc).getId());
                respuesta += " <tr>\n"
                        + "                            <td>\n"
                        + "                                <label class=\"lblStatusCuestionario\">\n"
                        + "                                    " + lstCompetencias.get(c).getCompetencia() + "\n"
                        + "                                </label>\n"
                        + "                            </td>\n"
                        + "                            <td>\n"
                        + "                        <center>\n";
                if (lstCuestionario.isEmpty()) {
                    respuesta += "<i class=\"fa fa-upload\" style=\"color: var(--amarilloBackground);\"></i>";
                } else {
//                     <i class="fa-solid fa-circle-xmark"></i>
                    respuesta += "<i class=\"fa fa-eye\" style=\"color: var(--amarilloBackground);\"></i>";

                }

                respuesta += "                        </center>    \n"
                        + "                        </td>\n"
                        + "                        <td>\n"
                        + "                        <center>\n"
                        + "                            <label class=\"lblStatusCuestionario\">\n";
                   if (lstCuestionario.isEmpty()) {
                respuesta += " <i class=\"fa-solid fa-circle-xmark\" style=\"color: var(--amarilloBackground);\"></i>";

                } else {
//                     <i class="fa-solid fa-circle-xmark"></i>
                    respuesta += " <i class=\"fa-solid fa-circle-check\" style=\"color: var(--amarilloBackground);\"></i>";

                }
                        respuesta+= " </label>\n"
                        + "                        </center>\n"
                        + "                        </td>\n"
                        + "                        </tr>";

            }

            respuesta += " </table>\n"
                    + "                </div>"
                    + "</div>";
        }

        return respuesta;

    }

}

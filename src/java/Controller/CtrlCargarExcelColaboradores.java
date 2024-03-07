/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Utils.CargarExcelColaboradores;
import Utils.CodificaDecodificaBase64;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author David
 */
public class CtrlCargarExcelColaboradores extends HttpServlet {

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
        HttpSession sesion = request.getSession();
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String nombre = null, extension = null;

            FileItemFactory factory = new DiskFileItemFactory();
            ServletContext servletContext = this.getServletConfig().getServletContext();
            ServletFileUpload upload = new ServletFileUpload(factory);
            List<FileItem> items = upload.parseRequest(request);
//            int idInstructor = Integer.parseInt(sesion.getAttribute("idInstructor").toString());
            String STPS = (String) sesion.getAttribute("stps");
//            String nombreImagen="firma"+idInstructor;
            System.out.println("rfccccc " + items.get(0).getSize());
            System.out.println("nombre " + items.get(0).getFieldName());

//                System.out.println("cofificado " + CodificaDecodificaBase64.codificarBase64(items.get(0).get()));
            if (items.get(0).getSize() <= 1000000) {
                for (FileItem item : items) {
                    if (!item.isFormField()) {
                        String fileName = item.getName();
                        nombre = fileName.substring(0, fileName.indexOf("."));
                        extension = fileName.substring(fileName.indexOf("."), fileName.length()).toLowerCase();
                        String contentType = item.getContentType();
                        long size = item.getSize();
                        System.out.println("size " + size);
//                    request.setAttribute("fileName", fileName);
//                    request.setAttribute("contentType", contentType);
//                    request.setAttribute("size", size);
                        break;
                    }
                }
                String rutaCompleta = request.getRealPath("/") + "/excel/" + nombre + extension;
                CodificaDecodificaBase64.decodificarBase64(CodificaDecodificaBase64.codificarBase64(items.get(0).get()), rutaCompleta);

                out.print(crearTablasApartirExcel(rutaCompleta));

            } else {
                out.print("Error");
            }

//             
        } catch (FileUploadException ex) {

        } catch (Exception ex) {
            Logger.getLogger(CtrlCargarExcelColaboradores.class.getName()).log(Level.SEVERE, null, ex);
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

    private String crearTablasApartirExcel(String rutaCompleta) {
        String respuesta = "";
        CargarExcelColaboradores objCargaExcel = new CargarExcelColaboradores();
        objCargaExcel.CargarExcelColaboradores(rutaCompleta);
        int nColumnasPonderacion = objCargaExcel.getLstPonderacion().size();
        int nFilasPonderacion = objCargaExcel.getLstPonderacion().get(0).getLstValores().size();
        int nColumnasEvaluador = objCargaExcel.getLstEvaluador().size();
        int nFilasEvaluador = objCargaExcel.getLstEvaluador().get(0).getLstValores().size();
        int nColumnasColaborador = objCargaExcel.getLstColaborador().size();
        int nFilasColaborador = objCargaExcel.getLstColaborador().get(0).getLstValores().size();

//        System.out.println("el numwero de filas  es  :: " + objCargaExcel.getLstEvaluador().get(0).getLstValores().size());
//        System.out.println("el numwero de columnas  es  :: " + objCargaExcel.getLstEvaluador().size());
        respuesta += "<div>Tabla de Colaboradores</div>";
        respuesta += "<div style='width:100%; overflow:scroll;'><table id=\"tblColaboradoresContent\" class=\"table\" >";

//        System.out.println("nColumnas for " + objCargaExcel.getLstPonderacion().size());
        for (int f = 0; f < nFilasColaborador; f++) { //recorre filas
            System.out.println("filas " + f);

            if (f == 0) {
                respuesta += "<thead><tr>";
            } else {
                respuesta += "<tr>";
            }
            for (int c = 0; c < nColumnasColaborador; c++) { //recorre columnas
                System.out.println("columnas " + c);
                if (f == 0) {
                    respuesta += "<th style=\"border: solid 1px;\">" + objCargaExcel.getLstColaborador().get(c).getLstValores().get(f) + "</th>";

                } else {
                    respuesta += "<td style=\"border: solid 1px;\">" + objCargaExcel.getLstColaborador().get(c).getLstValores().get(f) + "</td>";

                }

            }
            if (f == 0) {
                respuesta += "</thead></tr> <tbody id='tblColaboradores'>";
            } else {
                respuesta += "</tr>";
            }

        }

        respuesta += "</tbody></table> </div><br><br>";

        /*  tabla rvaluador                  */
        respuesta += "<div>Tabla de Evaluadores</div>";
        respuesta += "<div style='width:100%; overflow:scroll;'><table border='1' id=\"tblEvaluadorContent\" class=\"table\" >";

        for (int f = 0; f < nFilasEvaluador; f++) { //recorre filas
            System.out.println("filas " + f);
            if (f == 0) {
                respuesta += "<thead><tr>";
            } else {
                respuesta += "<tr>";
            }
            for (int c = 0; c < nColumnasEvaluador; c++) { //recorre columnas
                System.out.println("columnas " + c);

                if (f == 0) {
                    respuesta += "<th style=\"border: solid 1px;\">" + objCargaExcel.getLstEvaluador().get(c).getLstValores().get(f) + "</th>";

                } else {
                    try {
                        respuesta += "<td style=\"border: solid 1px;\">" + objCargaExcel.getLstEvaluador().get(c).getLstValores().get(f) + "</td>";

                    } catch (Exception e) {
                        respuesta += "<td style=\"border: solid 1px;\">N/D</td>";

                    }
                }

            }

            if (f == 0) {
                respuesta += "</thead></tr> <tbody id='tblColaboradores'>";
            } else {
                respuesta += "</tr>";
            }
//            respuesta += "</tr>";
        }

        respuesta += "</table></div> <br><br>";

        /*  tabla Ponderacion                  */
        respuesta += "<div>Tabla de Ponderacion</div>";
        respuesta += "<div style='width:100%; overflow:scroll;'><table border='1' id=\"tblPonderacionContent\" class=\"table\" >";

        for (int f = 0; f < nFilasPonderacion; f++) { //recorre filas
            System.out.println("filas " + f);
            if (f == 0) {
                respuesta += "<thead><tr>";
            } else {
                respuesta += "<tr>";
            }
            for (int c = 0; c < nColumnasPonderacion; c++) { //recorre columnas
                System.out.println("columnas " + c);
                if (f == 0) {
                    respuesta += "<th style=\"border: solid 1px;\">" + objCargaExcel.getLstPonderacion().get(c).getLstValores().get(f) + "</th>";

                } else {
                    try {
                        respuesta += "<td style=\"border: solid 1px;\">" + objCargaExcel.getLstPonderacion().get(c).getLstValores().get(f) + "</td>";

                    } catch (Exception e) {
                        respuesta += "<td style=\"border: solid 1px;\">N/D</td>";

                    }
                }
            }
            if (f == 0) {
                respuesta += "</thead></tr> <tbody id='tblColaboradores'>";
            } else {
                respuesta += "</tr>";
            }
        }

        respuesta += "</table></div> <br><br>";

        return respuesta;
    }

}

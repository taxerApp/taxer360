/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Dao.EmpresaDao;
import Dto.EmpresaDto;
import Dto.Usuario;
import Utils.EnviaCorreos;
import Utils.GeneraCodigoVerificacion;
import Utils.SendMail;
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
                
            case 3:
                out.print(actualizaEmpresa(request));
                break;
                
                 case 4:
                out.print(consultaEmpresaPEvaluaciones(request));
                break;
                
                 case 5:
                     
                     out.print(reenviaPw(request));
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

    private String registraEmpresa(HttpServletRequest request) {

        String empresa = request.getParameter("empresa");;
        String rfc = request.getParameter("rfc");
        String razonSocial = request.getParameter("razonSocial");
        String correo = request.getParameter("correo");  
        EmpresaDao dao = new EmpresaDao();
        GeneraCodigoVerificacion g = new GeneraCodigoVerificacion();
          String contrasenia=g.generaCodigo();
            System.out.println(""+contrasenia);
        String respuesta = dao.registraEmpresa(empresa, rfc, razonSocial, correo,contrasenia);
        
        if(respuesta.equalsIgnoreCase("La empresa se registro exitosamente.")){
                 enviaCorreo(correo,contrasenia,1);
        }
   
      
      

        return respuesta;

    }
    
    private String actualizaEmpresa(HttpServletRequest request) {

        String empresa = request.getParameter("empresa");;
        String rfc = request.getParameter("rfc");
        String razonSocial = request.getParameter("razonSocial");
        int id = Integer.parseInt(request.getParameter("id"));
        int status = Integer.parseInt(request.getParameter("status")) ;
        String correo = request.getParameter("correo");        
        EmpresaDao dao = new EmpresaDao();
              GeneraCodigoVerificacion g = new GeneraCodigoVerificacion();
          String contrasenia=g.generaCodigo();
            System.out.println(""+contrasenia);
//        String empresa, String rfc, String razonSocial,
//        int status,String correo, int idEmpresa, String contrasenia
        String respuesta = dao.actualizaEmpresa(empresa, rfc, razonSocial, status, correo, id,contrasenia);
        System.out.println("respuesta "+respuesta); 
        if(respuesta.equalsIgnoreCase("La empresa se editó exitosamente.")){
               enviaCorreo(correo,contrasenia,2);
        }
     
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
                    + "<td>" + lstEmpresa.get(i).getRazonSocial()+ "</td>"
                    + "<td>" + lstEmpresa.get(i).getCorreo()+ "</td>";
            
            if (lstEmpresa.get(i).getStatus()==1) {
//                rspuesta += "<td style='background: green; color:white;'>";
                rspuesta += "<td>";
            } else {
                rspuesta += "<td style='background: red; color:white;'>";
            }
            rspuesta += (lstEmpresa.get(i).getStatus()==1?"Activa":"Inactiva")+ "</td>"

                    + "<td style='color:black;' onclick=\"wndEditaEmpresa("+lstEmpresa.get(i).getId()+",'"+lstEmpresa.get(i).getEmpresa()+"','"+lstEmpresa.get(i).getRfc()+"','"+lstEmpresa.get(i).getRazonSocial()+"','"+lstEmpresa.get(i).getCorreo()+"',"+lstEmpresa.get(i).getStatus()+");\"><center><i class='fa fa-edit' style='color:#ffca2c'></i></center></td>"
                    + "</tr>";
        }
        System.out.println(""+rspuesta);
        return rspuesta;

    }

    private void enviaCorreo(String correo,String contrasenia,int bnd) {
         EnviaCorreos enviaCorreo = new EnviaCorreos();
        switch(bnd){
            case 1:
              
        enviaCorreo.enviaCorreoNPerfilAdminEmpresa(correo, contrasenia);  
                break;
                
                 case 2:
              
        enviaCorreo.enviaCorreoNPerfilAdminEmpresa(correo, contrasenia); 
                break;
                
                 case 3:
              
        enviaCorreo.reenviaPWEmpresa(correo, contrasenia); 
                break;
        }
       



    }

    private String consultaEmpresaPEvaluaciones(HttpServletRequest request) {
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
                    + "<td>" + lstEmpresa.get(i).getRazonSocial()+ "</td>"
                    + "<td>" + lstEmpresa.get(i).getCorreo()+ "</td>";
            
            if (lstEmpresa.get(i).getStatus()==1) {
//                rspuesta += "<td style='background: green; color:white;'>";
                rspuesta += "<td>";
            } else {
                rspuesta += "<td style='background: red; color:white;'>";
            }
            rspuesta += (lstEmpresa.get(i).getStatus()==1?"Activa":"Inactiva")+ "</td>"

                    + "<td style='color:black;' onclick=\"verEvaluaciones("+lstEmpresa.get(i).getId()+");\"><center><i class='fa fa-eye' style='color:#ffca2c'></i></center></td>"
                    + "</tr>";
        }
        System.out.println(""+rspuesta);
        return rspuesta;    }

    private String reenviaPw(HttpServletRequest request) {
        String respuesta="";
        int idEmpresa=Integer.parseInt(request.getParameter("idEmpresa"));
        
               EmpresaDao dao = new EmpresaDao();
             Usuario usu=  dao.getPw(idEmpresa);
//        EnviaCorreos mail = new EnviaCorreos();
           enviaCorreo(usu.getCorreo(),usu.getPw(),3);
//        mail.reenviaPWEmpresa(usu.getCorreo(), usu.getPw());
      return respuesta;
    }


}

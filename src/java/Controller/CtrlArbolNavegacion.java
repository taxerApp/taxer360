/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Dto.PantallaDto;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author David
 */
public class CtrlArbolNavegacion extends HttpServlet {

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
                out.print(agregarElementArbol(request));
                break;
            case 2:
                out.print(quitarElementArbol(request));
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

    private String agregarElementArbol(HttpServletRequest request) {
        HttpSession session = request.getSession();
        List<PantallaDto> lstPantalla = (List) session.getAttribute("lstPantalla");
        String funcion = request.getParameter("funcion");
        String pantalla = request.getParameter("pantalla");
        boolean isRaiz = Boolean.parseBoolean(request.getParameter("isRaiz"));
        String respuesta = "";
        if (isRaiz) { // si es que el menu añ que se ingreso es la raiz de un menu, es decir no es pantalla que dependa de otra
            lstPantalla.clear();
            PantallaDto objPantalla = new PantallaDto();
            objPantalla.setFuncion(funcion);
            objPantalla.setPantalla(pantalla);
            lstPantalla.add(objPantalla);
        } else { // si es que la pantalla depende de otra
            PantallaDto objPantalla = new PantallaDto();
            objPantalla.setFuncion(funcion);
            objPantalla.setPantalla(pantalla);
            lstPantalla.add(objPantalla);
        }

        for (int i = 0; i < lstPantalla.size(); i++) { //pinto el arbol de navegacion
            respuesta += (i == 0) ? " <label class=\"lnkNavegacion\"  onclick='" + lstPantalla.get(i).getFuncion() + "'>" + lstPantalla.get(i).getPantalla() + "</label>" : "<label class=\"mayorq\">> </label>" + " <label class=\"lnkNavegacion\"  onclick='" + lstPantalla.get(i).getFuncion() + "'>" + lstPantalla.get(i).getPantalla() + "</label>";
        }

        return respuesta;
    }

    private String quitarElementArbol(HttpServletRequest request) {
        HttpSession session = request.getSession();
        List<PantallaDto> lstPantalla = (List) session.getAttribute("lstPantalla");
        String pantalla = request.getParameter("pantalla");

        String respuesta = "";
        boolean elimina = false; // se ocupa para eliminar los elementos posteriores al elemento seleccionado
        for (int i = 0; i < lstPantalla.size(); i++) { // se recorren las pantallas cargadas hasta este punto
            if (pantalla.contains(lstPantalla.get(i).getPantalla()) || elimina) {
                /* cuando la pantalla sea igual al elemento
                en el arreglo o la variable elimina sea verdadera entra en este metodo, esto con el fin de eliminar los elementos
                posteriores a la pantalla seleccionada por el usuario*/
                if (elimina) {
                    /*Si esta variable es verdadera quiere decir que ya entro una vez en el if de arriba por lo cual ya elimino un elemento
                    y pinto el elemento seleccionado por el usuario, al haber ocurrido esto dicha variable siempre sera verdadera hasta que se recorra todo el arreglo
                    por lo cual estara dejando solo hasta el elemento seleccionado*/
                    lstPantalla.remove(i);
                } else {
                    /*Si entra aqui es por que es la primera vez que entra en el if pues la variable elimina aun es falsa, en etse punto se pinta la variable
                    seleccionada y elimina la siguiente, por ultimo cambia el valor de la variable elimina a verdadero para que elimine los elementos que estan despues
                    del elemento seleccionado por el usuario*/
                    respuesta += (i == 0) ? " <label class=\"lnkNavegacion\"  onclick='" + lstPantalla.get(i).getFuncion() + "'>" + lstPantalla.get(i).getPantalla() + "</label>" : "<label class=\"mayorq\">></label> " + " <label class=\"lnkNavegacion\"  onclick='" + lstPantalla.get(i).getFuncion() + "'>" + lstPantalla.get(i).getPantalla() + "</label>";
                    lstPantalla.remove(i + 1);
                    elimina = true;
                }

            } else {
                /*si no se cumplen las opciones anteriores siplemente pinta el elemento en el arbol*/
                respuesta += (i == 0) ? " <label class=\"lnkNavegacion\"  onclick='" + lstPantalla.get(i).getFuncion() + "'>" + lstPantalla.get(i).getPantalla() + "</label>" : "<label class=\"mayorq\">></label>" + " <label class=\"lnkNavegacion\"  onclick='" + lstPantalla.get(i).getFuncion() + "'> " + lstPantalla.get(i).getPantalla() + "</label>";
            }
        }
//        session.setAttribute("lstPantalla", lstPantalla);
//        System.out.println("tamaño final " + lstPantalla.size());
        return respuesta;
    }

}

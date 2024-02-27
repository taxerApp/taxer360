<%-- 
    Document   : frmConsultarEmpresa
    Created on : 19/02/2024, 11:45:15 AM
    Author     : David
--%>

<%@page import="Dto.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!--<script src="%= // request.getContextPath()%>/ControllerJs/EmpresaControllerJs.js" type="text/javascript"></script>-->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%Usuario usu = (Usuario) session.getAttribute("usuario");%>
    </head>
    <%
//    int bnd=Integer.parseInt(request.getParameter("bnd"));
//    int idEmpresa=Integer.parseInt(request.getParameter("idEmpresa"));
    %>
       <link href="<%= request.getContextPath()%>/css/ConsultarEmpresa.css" rel="stylesheet" type="text/css"/>
   
       <!--<script src="%= request.getContextPath()%>/ControllerJs/EmpresaControllerJs.js" type="text/javascript"></script>-->
       <script>
   
          consultaInicialEmpresa();
           function consultaInicialEmpresa(){
     var bnd=$("#txtBnd").val(); 
      var idEmpresa=$("#txtIdEmpresa").val(); 
      
         $("#overlay").fadeIn();
        $.ajax({
            type: 'POST',
            url: 'CtrlEmpresa',
            data: {
                bnd: bnd,
                idEmpresa:idEmpresa
            },
            success: function (data) {
                      
                  $("#tblEmpresaContent").dataTable().fnDestroy();
            $("#tblEmpresa").html(data);
            
             $("#tblEmpresaContent").dataTable({
                 "bPaginate": true,
                "bProcessing": true,
//                "sAjaxSource": data,
                "bLengthChange": true,
                "bFilter": false,
                "searching": true,
                "bSort": true,
              "lengthMenu": [ [10, 25, 50,100, -1], [10, 25, 50,100, "Todos"] ],
                "bAutoWidth": true,
      
        language: {
        url: '//cdn.datatables.net/plug-ins/1.13.6/i18n/es-ES.json',
    }
   });
   
      
       $("#overlay").fadeOut();  

            },
            error: function (data) {
            $("#overlay").fadeOut();
                //   mensajeError(data)
                
                     $("#overlay").fadeOut();
            }
        });
  }
    </script>
    <body>
        <input type="text" id="txtBnd"  value="2" hidden="true">
        <input type="text" id="txtIdEmpresa"  value="3" hidden="true">
        <!--<input type="text" id="txtTipoUsuario" hidden="true" value="%= usu.getIdTipoUsuario()%>" >-->
       
        <div style="margin-top: 8%;"></div>
        <table id="tblEmpresaContent" class="table">
        <thead>
            <tr  >
                <th hidden="true">ID</th>
                <th >EMPRESA</th>
                 <th>RFC</th>
                 <th>RAZÓN SOCIAL</th>
                
                   <th>STATUS</th>
                   <th>EDITAR</th>
               
            </tr>
        </thead>
        <tbody id="tblEmpresa">
            
        </tbody>
    </table>
    </body>
</html>

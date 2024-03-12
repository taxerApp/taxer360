<%-- 
    Document   : wndDetalleGraficaHome
    Created on : 8/03/2024, 05:31:38 PM
    Author     : David
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
             $("#tblEvaluacionesHomeBContent").dataTable().fnDestroy();
          

            $("#tblEvaluacionesHomeBContent").dataTable({
                "bPaginate": true,
                "bProcessing": true,
//                "sAjaxSource": data,
                "bLengthChange": true,
                "bFilter": false,
                "searching": true,
                "bSort": true,
                "lengthMenu": [[10, 25, 50, 100, -1], [10, 25, 50, 100, "Todos"]],
                "bAutoWidth": true,

                language: {
                    url: '//cdn.datatables.net/plug-ins/1.13.6/i18n/es-ES.json',
                }
            });
            
        </script>
    </head>
    <body>
        <table id="tblEvaluacionesHomeBContent" class="table">
            <thead>
            <tr>
                <th>Empresa</th><th>Evaluaciónes</th><th>Ultima Evaluación</th><th>Empleados</th>
            </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Tecnosoluciones S.L.</td><td>2</td><td>2024-01-01</td><td>34</td>
                </tr>
                   <tr>
                    <td>Agricola Verde Valle</td><td>4</td><td>2024-01-01</td><td>63</td>
                </tr>
                   <tr>
                    <td>InnovaTec </td><td>5</td><td>2024-01-01</td><td>28</td>
                </tr>
                   <tr>
                    <td>Farmacia Saludable</td><td>8</td><td>2024-01-01</td><td>45</td>
                </tr>
                   <tr>
                    <td>Viajes MundoGlobal </td><td>10</td><td>2024-01-01</td><td>60</td>
                </tr>
            </tbody>
        </table>
    </body>
</html>

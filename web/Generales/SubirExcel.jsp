<%-- 
    Document   : SubirExcel
    Created on : 6/03/2024, 09:58:15 AM
    Author     : David
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <script>
        $(document).ready(function () {
          
            $("#btnSmt").val("Cargar Excel");

            $("#formSubirExcel").submit(function (e) {
                e.preventDefault();
                var formData = new FormData($(this)[0]);

                $("#overlay").fadeIn();
                $.ajax({
                    type: "POST",
                    url: "CtrlCargarExcelColaboradores",
                    data: formData,
                    async: false,
                    cache: false,
                    contentType: false,
                    processData: false,
                    success: function (data) {
                        $("#overlay").fadeOut();

                        if (data === "Error") {
                            alert("El archivo no puede pesar más de 1 MB");
                        } else {
                            $("#contentTablaColab").html(data);
                            
                            // tabla Colaborador
                            $("#tblColaboradoresContent").dataTable().fnDestroy();


                            $("#tblColaboradoresContent").dataTable({
                                "bPaginate": true,
                                "bProcessing": true,
                                "bLengthChange": true,
                                "bFilter": false,
                                "searching": true,
                                "bSort": true,
                                "lengthMenu": [[3,5,10, 25, 50, 100, -1], [3,5,10, 25, 50, 100, "Todos"]],
                                "bAutoWidth": true,

                                language: {
                                    url: '//cdn.datatables.net/plug-ins/1.13.6/i18n/es-ES.json',
                                }
                            });

                            // tabla Evaluador
                            $("#tblEvaluadorContent").dataTable().fnDestroy();
                            $("#tblEvaluadorContent").dataTable({
                                "bPaginate": true,
                                "bProcessing": true,
                                "bLengthChange": true,
                                "bFilter": false,
                                "searching": true,
                                "bSort": true,
                                "lengthMenu": [[3,5,10, 25, 50, 100, -1], [3,5,10, 25, 50, 100, "Todos"]],
                                "bAutoWidth": true,

                                language: {
                                    url: '//cdn.datatables.net/plug-ins/1.13.6/i18n/es-ES.json',
                                }
                            });
                           
            
                                        // tabla Ponderacion
                            $("#tblPonderacionContent").dataTable().fnDestroy();


                            $("#tblPonderacionContent").dataTable({
                                "bPaginate": true,
                                "bProcessing": true,
                                "bLengthChange": true,
                                "bFilter": false,
                                "searching": true,
                                "bSort": true,
                                "lengthMenu": [[3,5,10, 25, 50, 100, -1], [3,5,10, 25, 50, 100, "Todos"]],
                                "bAutoWidth": true,

                                language: {
                                    url: '//cdn.datatables.net/plug-ins/1.13.6/i18n/es-ES.json',
                                }
                            });

                        }

                    }
                });
                return false;
            })


        });

    </script>

    <body>
         <div id="overlay">
            <div class="cv-spinner"><label>Espera un momento ...<br></label> 
                <span class="spinner"></span>
            </div>
         </div><br><br>
        <form id="formSubirExcel" enctype="multipart/form-data" method="post" action="">
           
            <input type="file" class="upload-input" name="upload-new-input" autocomplete="off"  data-max-size="2048" />
            <br><br>
            <input type="submit" name="submit" value="Subir" id="btnSmt" />
        </form>

        <div id="contentTablaColab" ></div>
    </body>
</html>

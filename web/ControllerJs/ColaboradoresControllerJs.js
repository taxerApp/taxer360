/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function () {


});

function consultaInicialColaboradores() {
    var idEmpresa = $("#txtIdEmpresaColaborador").val();
    $("#overlay").fadeIn();
    $.ajax({
        type: 'POST',
        url: 'CtrlColaboradores',
        data: {
            idEmpresa: idEmpresa,
            bnd: 1
        },
        success: function (data) {
            $("#tblColaboradores").html(data);
            $("#tblColaboradoresContent").dataTable().fnDestroy();


            $("#tblColaboradoresContent").dataTable({
                "bPaginate": true,
                "bProcessing": true,
                "bLengthChange": true,
                "bFilter": false,
                "searching": true,
                "bSort": true,
                "lengthMenu": [[3, 5, 10, 25, 50, 100, -1], [3, 5, 10, 25, 50, 100, "Todos"]],
                "bAutoWidth": true,

                language: {
                    url: '//cdn.datatables.net/plug-ins/1.13.6/i18n/es-ES.json',
                }
            });

            $("#overlay").fadeOut();

        },
        error: function (data) {
            $("#overlay").fadeOut();

        }
    });
}
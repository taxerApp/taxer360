/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function () {



    $(document).on("click", "#btnRegistrarEmpresa", function (e) {
//    alert("moca");
        var empresa = $("#txtNombreEmpresa").val();
        var rfc = $("#txtRfc").val();
        var razonSocial = $("#txtRazonSocial").val();
        var correo = $("#txtCorreo").val();

        if (empresa.trim() === "" || rfc.trim() === "" || razonSocial.trim() === "" || correo.trim() === "") {
//            alert("Todos los campos son obligatorios");
            alertify.warning("Todos los campos son obligatorios")
        } else {
            $("#overlay").fadeIn();
            $.ajax({
                type: 'POST',
                url: 'CtrlEmpresa',
                data: {
                    empresa: empresa,
                    rfc: rfc,
                    razonSocial: razonSocial,
                    correo: correo,
                    bnd: 1
                },
                success: function (data) {
                    
                    if (data === 'La empresa se registro exitosamente.') {
                        alertify.success("La empresa se registró exitosamente.");
//                        alert("La empresa se registró exitosamente.")
                        if (window.location = "Sesion.jsp") {

                        }
                    } else {
                        alertify.error(data);
//                        alert("Ocurrió un error en el registro.");
                    $("#overlay").fadeOut();
                    }


                },
                error: function (data) {
                    $("#overlay").fadeOut();
                    //   mensajeError(data)
//                    $("#overlay").fadeOut();
                }
            });
        }
// 
    });



});

function wndEditaEmpresa(id, empresa, rfc, razonSocial, correo, status) {
    $("#overlay").fadeIn();
    $("#wndEditaEmpresa").dialog({
        width: '30%',
        height: 300,
        show: "blind",
        hide: "blind",
        resizable: "false",
        my: "center",
        at: "center",
        of: window,
        modal: "true",
        open: function (event, ui) {
            $('#wndEditaEmpresa').load("Sesion/Empresa/wndEditarEmpresa.jsp?id=" + id + "&&empresa=" + empresa.replaceAll(" ", "|") + "&&rfc=" + rfc + "&&razonSocial=" + razonSocial.replaceAll(" ", "|") + "&&correo=" + correo + "&&status=" + status, function () {
                // Esta función se ejecuta cuando se termina de cargar la modal
                $("#overlay").fadeOut();
            });
        },
        close: function () {}
    });
}


function cancelarEditaEmpresa() {

    $("#wndEditaEmpresa").dialog("close");

}

$(document).on("click", "#btnEditaEmpresa", function (e) {

    var id = $("#txtIdEmpresaE").val();
    var empresaE = $("#txtEditaEmpresa").val();
    var rfc = $("#txtEditaRfc").val();
    var razonSocial = $("#txtEditaRazonSocial").val();
    var correo = $("#txtEditaCorreo").val();
    var status = $("#cmbStatusEmpresa").val();
//         alert("idRegistro "+id);
    if (empresaE.trim() === "" || rfc.trim() === "" || razonSocial.trim() === "" || correo.trim() === "" || status.trim() === "") {
//        alert("Todos los campos son obligatorios");
        alertify.warning("Todos los campos son obligatorios");
    } else {
        $("#overlay").fadeIn();
        $.ajax({
            type: 'POST',
            url: 'CtrlEmpresa',
            data: {
                empresa: empresaE,
                rfc: rfc,
                razonSocial: razonSocial,
                correo: correo,
                status: status,
                id: id,
                bnd: 3
            },
            success: function (data) {
                $("#overlay").fadeOut();
                if (data === 'La empresa se editó exitosamente.' || data=== 'La empresa se editó parcialmente con exito.') {
//                    alert("La empresa se actualizo exitosamente.");
                    alertify.success("La empresa se actualizo exitosamente.");
                    cancelarEditaEmpresa();
                    consultaInicialEmpresa();
                } else {
//                    alertify.error("Ocurrió un error en la actualización.");
                    alertify.error(data);
//                    alert("Ocurrió un error en la actualización.");
                }


            },
            error: function (data) {
                $("#overlay").fadeOut();
                alertify.error(data);

                //   mensajeError(data)
//                $("#overlay").fadeOut();
            }
        });
    }
// 
});


function consultaInicialEmpresa() {
    var bnd = $("#txtBnd").val();
    var idEmpresa = $("#txtIdEmpresa").val();

    $("#overlay").fadeIn();
    $.ajax({
        type: 'POST',
        url: 'CtrlEmpresa',
        data: {
            bnd: bnd,
            idEmpresa: idEmpresa
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
                "lengthMenu": [[10, 25, 50, 100, -1], [10, 25, 50, 100, "Todos"]],
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


function consultaInicialEvaluaciones() {
 
    var idEmpresa = $("#txtIdEmpresa").val();

    $("#overlay").fadeIn();
    $.ajax({
        type: 'POST',
        url: 'CtrlEmpresa',
        data: {
            bnd: 4,
            idEmpresa: idEmpresa
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
                "lengthMenu": [[10, 25, 50, 100, -1], [10, 25, 50, 100, "Todos"]],
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

$(document).on("click", "#btnHabilitaEdiEmpresa", function (e) {
    var valorBoton = $(this).val();
    if (valorBoton === "Editar") {
        $(this).val('Cancelar');

        habilitaInabilitaEditaEmpreda(false)

    } else {
        $(this).val('Editar');

        habilitaInabilitaEditaEmpreda(true)
    }

//    alert(valorBoton)



});
function habilitaInabilitaEditaEmpreda(bool) {

    var btnEditaEmpresa = $("#btnEditaEmpresa");
    var empresaE = $("#txtEditaEmpresa");
    var rfc = $("#txtEditaRfc");
    var razonSocial = $("#txtEditaRazonSocial");
    var correo = $("#txtEditaCorreo");
    var status = $("#cmbStatusEmpresa");

    empresaE.prop('disabled', bool);
    rfc.prop('disabled', bool);
    razonSocial.prop('disabled', bool);
    correo.prop('disabled', bool);


    status.prop('disabled', bool);
    if (bool === true) {
        btnEditaEmpresa.hide();
    } else {
        btnEditaEmpresa.show();
    }
}



/*Modal de crear Evaluacion*/


function wndConsultarColaboradores(id, empresa) {
    cancelarEditaEmpresa();
    $("#overlay").fadeIn();
    $("#wndConsultarColaboradores").dialog({
        width: '30%',
        height: 300,
        show: "blind",
        hide: "blind",
        resizable: "false",
        my: "center",
        at: "center",
        of: window,
        modal: "true",
        open: function (event, ui) {
            $('#wndConsultarColaboradores').load("Sesion/Colaboradores/frmConsultarColaboradores.jsp?id=" + id + "&&empresa=" + empresa.replaceAll(" ", "|"), function () {
                // Esta función se ejecuta cuando se termina de cargar la modal
                $("#overlay").fadeOut();
            });
        },
        close: function () {}
    });
}
function wndCreaEvaluacion(id, empresa) {
    cancelarEditaEmpresa();
    $("#overlay").fadeIn();
    $("#wndCreaEvaluacion").dialog({
        width: '30%',
        height: 300,
        show: "blind",
        hide: "blind",
        resizable: "false",
        my: "center",
        at: "center",
        of: window,
        modal: "true",
        open: function (event, ui) {
            $('#wndCreaEvaluacion').load("Sesion/Empresa/wndCrearEvaluacion.jsp?id=" + id + "&&empresa=" + empresa.replaceAll(" ", "|"), function () {
                // Esta función se ejecuta cuando se termina de cargar la modal
                $("#overlay").fadeOut();
            });
        },
        close: function () {}
    });
}
function cancelarCrearEvaluacion() {

    $("#wndCreaEvaluacion").dialog("close");

}

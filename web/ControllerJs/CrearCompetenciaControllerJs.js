/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function () {


});

function guardarCompetencia() {
//    var competencia1 = $("#txtCompetencia1").val();
//    var competencia2 = $("#txtCompetencia2").val();
//    var competencia3 = $("#txtCompetencia3").val();
//    var competencia4 = $("#txtCompetencia4").val();
//    var competencia5 = $("#txtCompetencia5").val();
//    var competencia6 = $("#txtCompetencia6").val();
//    var competencia7 = $("#txtCompetencia7").val();

    var camposValidos = true;
//    let competencias = [];
    var competencias = "";
    var idEmpresa = $("#txtIdEmpresaReCompetencia").val();

    $(".campoInputTextCompetencia").each(function () {

        if ($(this).val().trim() === "") {
//          alert($(this).val());
            alertify.warning("Todos los campos son obligatorios");
            camposValidos = false;
            return false;
        }
        competencias += (competencias.trim() === "" ? $(this).val() : "," + $(this).val());
//        competencias.push($(this).val());
    });

    if (camposValidos) {
        $("#overlay").fadeIn();
        $("#btnGuardarCompetencias").hide();
        $.ajax({
            type: 'POST',
            url: 'CtrlCompetencia',
            data: {
                idEmpresa: idEmpresa,
//                competencias: JSON.stringify(competencias),
                competencias: competencias,
                bnd: 1
            },
            success: function (data) {

                if (data === 'true') {
                    alertify.success("Competencias Registradas Exitosamente");
                    $("#btnGuardarCompetencias").show();
                    $(".campoInputTextCompetencia").each(function () {

                        $(this).prop("disabled", true);

//                        competencias.push($(this).val());
                    });
                    $("#btnGuardarCompetencias").prop("disabled", true);
                    $("#dvPonderacion").show();
                    $("#dvPonderacion").load("Sesion/Empresa/wndPonderacion.jsp?idEmpresa=" + idEmpresa);
                   
                    setTimeout(function () {
                        getPonderaciones();
                    }, 500);
                   


                } else {
                    alertify.error(data);
//                        alert("Ocurrió un error en el registro.");
                    $("#btnGuardarCompetencias").show();
                    $("#overlay").fadeOut();
                }


            },
            error: function (data) {
                $("#overlay").fadeOut();
                //   mensajeError(data)
//                    $("#overlay").fadeOut();
            }
        });

//        alertify.success("Competencias Registradas Exitosamente");



//        alert(JSON.stringify(competencias));



    }

}

function getPonderaciones() {
    $("#overlay").fadeIn();
    $.ajax({
        type: 'POST',
        url: 'CtrlPonderacion',
        data: {

            bnd: 1
        },
        success: function (data) {


            $("#tblPonderacion").html(data);

            $("#overlay").fadeOut();

            setTimeout(function () {
                $("#txtJefe").focus();
                $("#txtJefe").select();
            }, 10)
        },
        error: function (data) {
            $("#overlay").fadeOut();

        }
    });

}
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
    let competencias = [];
    $(".campoInputTextCompetencia").each(function () {

        if ($(this).val().trim() === "") {
//          alert($(this).val());
            alertify.warning("Todos los campos son obligatorios");
            camposValidos = false;
            return false;
        }

        competencias.push($(this).val());
    });

    if (camposValidos) {
        alertify.success("Competencias Registradas Exitosamente");



        alert(JSON.stringify(competencias));
//        competencias.forEach(function (elemento, indice, array) {
////            alert(elemento, indice);
//        });

        $(".campoInputTextCompetencia").each(function () {

            $(this).prop("disabled", true);

            competencias.push($(this).val());
        });
        $("#btnGuardarCompetencias").prop("disabled",true)
        $("#dvPonderacion").show();

        getPonderaciones()
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
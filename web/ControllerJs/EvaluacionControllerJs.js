/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function () {
//alert(); 
});

$(document).on("click", "#btnCrearEvaluacion", function (e) {
alert(); 
    var periodo = $("#txtPeriodo").val();
    var fInicio = $("#fInicioEvaluacion").val();
    var fFin = $("#fTerminoEvaluacion").val();
    var idEmpresa = $("#txtIdEmpresa").val();

    if (periodo.trim() === "" || fInicio.trim() === "" || fFin.trim() === "") {
        alertify.warning("Todos los campos son obligatorios");

    } else {
        $.ajax({
            type: 'POST',
            url: 'CtrlEvaluacion',
            data: {
                idEmpresa: idEmpresa,
                periodo: periodo,
                fInicio: fInicio,
                fFin: fFin,
                bnd: 1
            },
            success: function (data) {

                if (data === 'La empresa se registro exitosamente.') {
                    alertify.success("La evaluación se registró exitosamente.");


                    $("#txtPeriodo").prop('disabled', true);
                    $("#fInicioEvaluacion").prop('disabled', true);
                    $("#fTerminoEvaluacion").prop('disabled', true);
                    $("#btnCrearEvaluacion").prop('disabled', true);
                  
                    $("#dvRCompetencias").show();

                    setTimeout(function () {
                        $("#txtCompetencia1").focus();
                        $("#txtCompetencia1").select();
                    }, 10)

                } else {
                    alertify.error(data);
                    $("#overlay").fadeOut();
                }


            },
            error: function (data) {
                $("#overlay").fadeOut();
  
            }
        });
    }



});
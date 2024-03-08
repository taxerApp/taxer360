/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function () {

})

function accordeonInit(idEvaluacion) {

    /*peticion ajax*/
    $("#overlay").fadeIn();
    $.ajax({
        type: 'POST',
        url: 'CtrlCuestionario',
        data: {
            idEvaluacion: idEvaluacion,

            bnd: 1
        },
        success: function (data) {
            $("#dvAcordeon").html(data);
// alert(data)
            $(".content-tab:not(:eq(0))").toggle();

            setTimeout(function () {
               
                $(".title-tab i").toggleClass("fa-plus");

                $(".title-tab").click(function () {
                    $(".content-tab").hide();
                    $(".title-tab i").removeClass("fa-minus");
                    $(".title-tab i").addClass("fa-plus");
                    $(this).next().show();
                    $(this).children().addClass("fa-minus");
                })
            }, 1000);


            $("#overlay").fadeOut();

        },
        error: function (data) {
            $("#overlay").fadeOut();
            //   mensajeError(data)
//                    $("#overlay").fadeOut();
        }
    });

    /*fin peticion ajax*/



}
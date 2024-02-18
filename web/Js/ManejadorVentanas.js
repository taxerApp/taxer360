/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).on("click", "#frmHome", function () {


    $("#dvContenedorHome").load('Sesion/frmHome.jsp');



});

$(document).on("click", "#btnModalPrueba", function () {
     
    wndPRueba();

});


//esto es para crear modales y debe ir en el controllerJs del jsp a utilizar
function wndPRueba() {

 $("#overlay").fadeIn();
    $("#wndReporteIndividual").dialog({
        width: '90%',
//        height:'auto', 
        height: 350,
        show: "blind",
        hide: "blind",
        resizable: "false",
        my: "center",
        at: "center",
        of: window,
        modal: "true",
        open: function (event, ui) {
            $('#wndReporteIndividual').load("PruebaGraficas.jsp", function () {
//                   esta funcion se ejecuta cuando se termino de realizar la carga de la modal
 $("#overlay").fadeOut();
            });
        },

        close: function () {


        }
    });
}
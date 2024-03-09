/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



$(document).ready(function () {
    
frmHome();
});

function wndDetalleGraficaHome() {

    $("#wndDetalleGraficaHome").dialog({
        width: '40%',
        height: 400,
        show: "blind",
        hide: "blind",
        resizable: "false",
        my: "center",
        at: "center",
        of: window,
        modal: "true",
        open: function (event, ui) {
            $('#wndDetalleGraficaHome').load("modals/wndDetalleGraficaHome.jsp"), function () {
                // Esta función se ejecuta cuando se termina de cargar la modal
           
            }  
            
        },
        close: function () {
           
        }
    });
}
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//ventana home
$(document).on("click", "#frmHome", function () {
    
 $("#dvContenedorSesion").load('Sesion/frmHome.jsp');
});

//fin ventana home
//
//ventanas empresa
$(document).on("click", "#frmRegistrarEmpresa", function () {
    
 $("#dvContenedorSesion").load('Sesion/Empresa/frmRegistrarEmpresa.jsp');
});

$(document).on("click", "#frmConsultarEmpresa", function () {
      
 $("#dvContenedorSesion").load('Sesion/Empresa/frmConsultarEmpresa.jsp');
});
//fin ventanas empresa
// ventanas para colaboradores

$(document).on("click", "#frmRegistrarColaboradores", function () {
    
 $("#dvContenedorSesion").load('Sesion/Colaboradores/frmRegistrarColaboradores.jsp?id=0');
});

$(document).on("click", "#frmConsultarColaboradores", function () {
      
 $("#dvContenedorSesion").load('Sesion/Colaboradores/frmConsultarColaboradores.jsp');
});

//fin ventanas de Evaluacion

$(document).on("click", "#frmCrearEvaluacion", function () {
   
 $("#dvContenedorSesion").load('Sesion/Evaluacion/frmCrearEvaluacion.jsp');
});

$(document).on("click", "#frmConsultarEvaluaciones", function () {
      
 $("#dvContenedorSesion").load('Sesion/Evaluacion/frmConsultarEvaluaciones.jsp');
});

//fin ventanas Evaluacion
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


$(document).on("click", "#frmCerrarSesion", function (e) {
alert();
            cerrarSesion();

});

function cerrarSesion() {
    $.ajax({
        type: 'POST',
        url: 'CtrlLogin',
        data: {
            bnd: 2,
        },
        success: function (data) {
//                $('#resultado').html(data);
            window.location = "Login.jsp";
        },
        error: function (data) {

        }
    });
}

//ventana CargarCuestionarios
function verEvaluaciones(idEmpresa){
    
 $("#dvContenedorSesion").load('Sesion/Evaluacion/frmVerEvaluaciones.jsp?idEmpresa='+idEmpresa);
 }
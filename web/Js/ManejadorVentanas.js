/* 
 ******************************* Logica para la navegacion*****************************************************
 *Se realizan tres tipos de invocaciones para el cambio de pantalla
 *1.- Mediante un evento referenciando un id
 *    Para este caso se interactua con base de datos ya que el menu de opciones se carga dinamcicamente por lo cual en base de datos se tiene
 *    un campo en el cual se coloca el identificador que se le dara a cada una de las opciones, dicho identificador debe ser igual al nombre que se le de
 *    al jsp que se va a desplegar, por ejemplo si el jsp se llama frmEjemplo.jsp el identificador en base de datos sera frmEjemplo. Es importante mencionar
 *    que la invocacion mediante el evento onclick referenciando el id de la opcion seria suficiente, sin embargo se implemento un arbol de navegacion en el cual
 *    se manda como parametro una funcion a ejecutar, por ejemplo en el evento frmHome se invoca la funcion pintarArbolNavegacion (La explicacion esta en el archivo ArbolNavegacionControllerJS)
 *    y a su vez se manda a llamar la funcion frmHome
 *    
 *2.- Mediante una funcion directa
 *    Esto se hace cuando una pantalla padre (Pantalla referenciada en el punto 1, es decir desde base de datos) manda a llamar otra
 *    pantalla, es decir cuando se navega desde un boton el cual esta dentro d euna pantalla ya pintada, en este caso y al igual que en el punto 1
 *    se manda a llamar a la funcion pintarArbolNavegacion (La explicacion esta en el archivo ArbolNavegacionControllerJS )
 *    
 *3.- Mediante una ventana modal
 *    En este punto se hace referencia a las ventanas modales, al no hacer cambio de pantalla pues esta seria parte de una ventana padre
 *    no es necesario llamar a la funcion pintarArbolNavegacion
 *    
 */
//ventana home
$(document).on("click", "#frmHome", function () {

    frmHome();

});

function frmHome() {
    pintarArbolNavegacion(1, "frmHome()", "HOME", true); //bnd,identificador,nombre pantalla,true/false si es que es pantalla principal es decir si no depende de otra

    $("#dvContenedorSesion").load('Sesion/frmHome.jsp');
}
//fin ventana home
//
//ventanas empresa
$(document).on("click", "#frmRegistrarEmpresa", function () {
    pintarArbolNavegacion(1, "frmRegistrarEmpresa()", "REGISTRAR EMPRESA", true); //bnd,identificador,nombre pantalla,true/false si es que es pantalla principal es decir si no depende de otra
    frmRegistrarEmpresa();
});
function frmRegistrarEmpresa() {
    $("#dvContenedorSesion").load('Sesion/Empresa/frmRegistrarEmpresa.jsp');

}
$(document).on("click", "#frmConsultarEmpresa", function () {
    pintarArbolNavegacion(1, "frmConsultarEmpresa()", "CONSULTAR EMPRESA", true); //bnd,identificador,nombre pantalla,true/false si es que es pantalla principal es decir si no depende de otra
    frmConsultarEmpresa();
});

function frmConsultarEmpresa() {
    $("#dvContenedorSesion").load('Sesion/Empresa/frmConsultarEmpresa.jsp');

}
//fin ventanas empresa
// ventanas para colaboradores

$(document).on("click", "#frmRegistrarColaboradores", function () {
    pintarArbolNavegacion(1, "frmRegistrarColaboradores()", "REGISTRAR COLABORADORES", true); //bnd,identificador,nombre pantalla,true/false si es que es pantalla principal es decir si no depende de otra
    frmRegistrarColaboradores();
});

function frmRegistrarColaboradores() {
    $("#dvContenedorSesion").load('Sesion/Colaboradores/frmRegistrarColaboradores.jsp?id=0');

}

$(document).on("click", "#frmConsultarColaboradores", function () {
    pintarArbolNavegacion(1, "frmConsultarColaboradores()", "CONSULTAR COLABORADORES", false); //bnd,identificador,nombre pantalla,true/false si es que es pantalla principal es decir si no depende de otra
    frmConsultarColaboradores();
});
function frmConsultarColaboradores() {
    $("#dvContenedorSesion").load('Sesion/Colaboradores/frmConsultarColaboradores.jsp');

}
//fin ventanas de Evaluacion

$(document).on("click", "#frmCrearEvaluacion", function () {
    pintarArbolNavegacion(1, "frmCrearEvaluacion()", "CREAR EVALUACIÓN", false);//bnd,identificador,nombre pantalla,true/false si es que es pantalla principal es decir si no depende de otra
    frmCrearEvaluacion();
});
function frmCrearEvaluacion() {
    $("#dvContenedorSesion").load('Sesion/Evaluacion/frmCrearEvaluacion.jsp');

}
$(document).on("click", "#frmConsultarEvaluaciones", function () {
    pintarArbolNavegacion(1, "frmConsultarEvaluaciones()", "CONSULTAR EVALUACIONES", true); //bnd,identificador,nombre pantalla,true/false si es que es pantalla principal es decir si no depende de otra
    frmConsultarEvaluaciones();
});
function frmConsultarEvaluaciones() {
    $("#dvContenedorSesion").load('Sesion/Evaluacion/frmConsultarEvaluaciones.jsp');

}
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

});


//ventana CargarCuestionarios
function verEvaluaciones(idEmpresa) {
    pintarArbolNavegacion(1, "verEvaluaciones(" + idEmpresa + ")", "LISTA DE EVALUACIONES", false); //bnd,identificador,nombre pantalla,true/false si es que es pantalla principal es decir si no depende de otra

    $("#dvContenedorSesion").load('Sesion/Evaluacion/frmVerEvaluaciones.jsp?idEmpresa=' + idEmpresa);
}



function cargarCuestionarios(idEvaluacion) {
    pintarArbolNavegacion(1, "cargarCuestionarios(" + idEvaluacion + ")", "CARGAR CUESTIONARIOS", false);//bnd,identificador,nombre pantalla,true/false si es que es pantalla principal es decir si no depende de otra

    $("#dvContenedorSesion").load('Sesion/Evaluacion/frmCargarCuestionarios.jsp?idEvaluacion=' + idEvaluacion);

}



/*Modal de crear Evaluacion*/


function wndConsultarColaboradores(id, empresa) {
    cancelarEditaEmpresa();
    $("#overlay").fadeIn();
    $("#wndConsultarColaboradores").dialog({
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
            $('#wndCreaEvaluacion').load("Sesion/Empresa/wndCrearEvaluacion.jsp?id=" + id + "&&empresa=" + empresa.replaceAll(" ", "|"), function () {
                // Esta función se ejecuta cuando se termina de cargar la modal
                $(".ui-dialog-titlebar-close").prop('disabled', true);
                $("#overlay").fadeOut();
            });
        },
        
        close: function () {/*aqui va a ir el evento de eliminar proceso*/}
    });
}

function wndEditaEmpresa(id, empresa, rfc, razonSocial, correo, status) {
    $("#overlay").fadeIn();
    $("#wndEditaEmpresa").dialog({
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
            $('#wndEditaEmpresa').load("Sesion/Empresa/wndEditarEmpresa.jsp?id=" + id + "&&empresa=" + empresa.replaceAll(" ", "|") + "&&rfc=" + rfc + "&&razonSocial=" + razonSocial.replaceAll(" ", "|") + "&&correo=" + correo + "&&status=" + status, function () {
                // Esta función se ejecuta cuando se termina de cargar la modal
//                      pintarArbolNavegacion(1, 0, "EDITAR EMPRESA",false); //bnd,identificador,nombre pantalla

                $("#overlay").fadeOut();
            });
        },
        close: function () {}
    });
}
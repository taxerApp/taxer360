/* 
 * Este archivo tiene como funcion crear el aerbol de navegacion que se muestra 
 * en la parte superior de la pantalla justo despues delñ menu de opciones
 * cuenta con dos funciones
 * 1.- Funcion invocada mediante la clase  lnkNavegacion
 *     Esta funcion recupera el valor de la etiqueta del arbol de navegacion al cual se le dio clic y lo envia a un servlet
 *     para que de esa forma se eliminen las opciones que estan despues de la opcion seleccionada, es decir si en el arbol
 *     se encuentran 5 pantallas y el usuario da clic en la tercera entonces a partir de ese punto ya solo se tendran 3 pantallas
 *     eliminando las dos restantes de dicho arbol
 *     
 *2.- Funcion llamada pintarArbolNavegacion
 *    Esta recibe 4 parametros, el parametro bnd el cual se ocupa para saber que accion debe ejecutar dentro del servlet,
 *    el parametro funcion en el cual se manda el nombre de la funcion que abrio cada pantalla junto con su parametro en caso de que lo tenga,
 *    ya que esta misma funcion se ejecutara para volver a abrir la pantalla seleccionada en el arbol de navegacion, el campo pantalla el cual es 
 *    el nombre de la pantalla que se desea cargar (Es el nombre que se pinta en el menu) y el campo isRaiz el cual sirve para saber
 *    si la opcion que se selecciono hace referencia a una pantalla  raiz (una pantalla que no dependa de otra), en caso de ser raiz se eliminan
 *    todas las pantallas del arbol de navegacion y se carga solo la pantalla raiz y si no es raiz entonces solo se agrega la pantalla que se desea
 *    cargar (todo esto se hace en el servlet)
 */


$(document).ready(function () {


});


$(document).on("click", ".lnkNavegacion", function (e) {
    
     $.ajax({
        type: 'POST',
        url: 'CtrlArbolNavegacion',
        data: {
            bnd: 2,
            pantalla:$(this).text()
        },
        success: function (data) {
            $("#dvArbolNavegacion").html(data);


        },
        error: function (data) {
            $("#overlay").fadeOut();

        }
    });
});

function pintarArbolNavegacion(bnd, funcion, pantalla, isRaiz) {

    $.ajax({
        type: 'POST',
        url: 'CtrlArbolNavegacion',
        data: {
            bnd: bnd,
            funcion: funcion,
            pantalla: pantalla,
            isRaiz: isRaiz
        },
        success: function (data) {
            $("#dvArbolNavegacion").html(data);


        },
        error: function (data) {
            $("#overlay").fadeOut();

        }
    });
}
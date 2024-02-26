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

     if(empresa.trim() ==="" || rfc.trim()=== ""  || razonSocial.trim()=== ""){
         alert("Todos los campos son obligatorios");
         
     }else {
          $("#overlay").fadeIn();
        $.ajax({
            type: 'POST',
            url: 'CtrlEmpresa',
            data: {
                empresa: empresa,
                rfc:rfc,
                razonSocial:razonSocial,
                bnd: 1
            },
            success: function (data) {
                   $("#overlay").fadeOut();
            if(data === 'true'){
              alert("La empresa se registró exitosamente.")
                   if (window.location = "Sesion.jsp") {

                    }
            }else{
                alert("Ocurrió un error en el registro.");
            }
        

            },
            error: function (data) {
            $("#overlay").fadeOut();
                //   mensajeError(data)
                     $("#overlay").fadeOut();
            }
        });
    }
// 
});

function wndEditaEmpresa(id,empresa,rfc,razonSocial,status) {

 $("#overlay").fadeIn();
    $("#wndEditaEmpresa").dialog({
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
            $('#wndEditaEmpresa').load("wndEditaEmpresa.jsp?id="+id+"&&empresa="+empresa+"&&rfc"+"&&razonSocial="+razonSocial+"&&status="+status, function () {
//                   esta funcion se ejecuta cuando se termino de realizar la carga de la modal
 $("#overlay").fadeOut();
            });
        },

        close: function () {


        }
    });
}

});

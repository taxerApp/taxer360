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


});

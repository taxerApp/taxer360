/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function () {

  
$(document).on("click", "#btnLogin", function (e) {
//    alert("moca");
    var correo = $("#txtCorreo").val();
    var pw = $("#txtPw").val();

     if(correo.trim() ==="" || pw.trim()=== ""){
//         alert("Todos los campos son obligatorios");
          alertify.warning('Todos los campos son obligatorios');
     }else {
          $("#overlay").fadeIn();
        $.ajax({
            type: 'POST',
            url: 'CtrlLogin',
            data: {
                usuario: correo,
                pw:pw,
                bnd: 1
            },
            success: function (data) {
                  
            if(data === 'true'){
//              alert("Usuario Valido")
              alertify.success('Usuario Valido');
                   if (window.location = "Sesion.jsp") {

                    }
            }else{
                 $("#overlay").fadeOut();
//                alert("Usuario no Valido");
                 alertify.error('Usuario no Valido');
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

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */ 
function recuperarCuestionario() {

       
    $("#overlay").fadeIn();
    $.ajax({
        type: 'POST',
        url: 'CtrlLeerCuestionario',
        data: {
            
            bnd: 1
        },
        success: function (data) {
           $('#dvCuestionario').html(data);
             $("#overlay").fadeOut();
        },
        error: function (data) {
            $("#overlay").fadeOut();
            //   mensajeError(data)
//                    $("#overlay").fadeOut();
        }
    });}
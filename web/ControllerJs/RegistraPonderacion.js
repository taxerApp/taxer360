/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function () {


});

function guardarPonderacion() {

var camposValidos=true;
var totalPonderacion = $("#txtTotalPonderacion").val();
var ponderacion =[];
$(".campoInputPorcenPonde").each(function () {

        if ($(this).val().trim() === "") {
            alertify.warning("Todos los campos son obligatorios");
            camposValidos = false;
            return false;
        }

        ponderacion.push($(this).val());
    });
    
    if(camposValidos){
//        alert(totalPonderacion)
        if (parseInt(totalPonderacion) < 100) {
            alertify.warning("La sumatoria de los porcentajes debe ser igual a 100.");

        } else {
            alertify.success("Ponderaciones Registradas Exitosamente");

        }
    }

}

$(document).on("keyup", ".campoInputPorcenPonde", function (e) {
    this.value = this.value.replace(/[^0-9]/g, '');
    var showAlerta = false;
    var txtTotalPonderacion = $("#txtTotalPonderacion");
    txtTotalPonderacion.val("0");
    $(".campoInputPorcenPonde").each(function () {
        var valor = ($(this).val().trim() === "" ? 0 : $(this).val())

        txtTotalPonderacion.val(parseInt(txtTotalPonderacion.val(), 10) + parseInt(valor, 10));
        if (parseInt(txtTotalPonderacion.val()) > 100) {
            txtTotalPonderacion.val(parseInt(txtTotalPonderacion.val(), 10) - parseInt(valor, 10));
            $(this).val("")
            if (!showAlerta) {
                 alertify.error("La sumatoria no puede ser mayor al 100%");
//                alert("No puede ser mas de 100");
                showAlerta = true;
            }

        }

    });
//  

});


/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function () {


});
$(document).on("click", "#btnCrearEvaluacion", function (e) {

    var periodo = $("#txtPeriodo").val();
    var fInicio = $("#fInicioEvaluacion").val();
    var fFin = $("#fTerminoEvaluacion").val();
    var idEmpresa = $("#txtIdEmpresaCEvaluacion").val();

//alert(idEmpresa)
    if (periodo.trim() === "" || fInicio.trim() === "" || fFin.trim() === "") {
        alertify.warning("Todos los campos son obligatorios.");

    } else {
        if (Date.parse(fInicio) > Date.parse(fFin)) {
            alertify.warning("La fecha de término no puede ser mayor a la fecha de inicio.");

        } else {
            $("#overlay").fadeIn();
            $("#btnCrearEvaluacion").hide();
            $.ajax({
                type: 'POST',
                url: 'CtrlEvaluacion',
                data: {
                    idEmpresa: idEmpresa,
                    periodo: periodo,
                    fInicio: fInicio,
                    fFin: fFin,
                    bnd: 1
                },
                success: function (data) {

                    if (data === 'true') {
                        alertify.success("La evaluación se registró exitosamente.");
//                        alert("La empresa se registró exitosamente.")
//                    if (window.location = "Sesion.jsp") {
//
//                    }
                        $("#btnCrearEvaluacion").show();
                        $("#txtPeriodo").prop('disabled', true);
                        $("#fInicioEvaluacion").prop('disabled', true);
                        $("#fTerminoEvaluacion").prop('disabled', true);
                        $("#btnCrearEvaluacion").prop('disabled', true);

                        $("#dvRCompetencias").load("Sesion/Empresa/wndRegistrarCompetencia.jsp?idEmpresa=" + idEmpresa);

                        $("#dvRCompetencias").show();

                        setTimeout(function () {
                            $("#txtCompetencia1").focus();
                            $("#txtCompetencia1").select();
                        }, 1000);
                        $("#overlay").fadeOut();
                    } else {
                        alertify.error(data);
                             $("#btnCrearEvaluacion").show();

//                        alert("Ocurrió un error en el registro.");
                        $("#overlay").fadeOut();
                    }


                },
                error: function (data) {
                    $("#overlay").fadeOut();
                    //   mensajeError(data)
//                    $("#overlay").fadeOut();
                }
            });
        }

    }



});
//function crearEvaluacion(){
//  var periodo=  $("#txtPeriodo").val();
//  var fInicioEvaluacion=  $("#fInicioEvaluacion").val();
//  var fFinEvaluacion=  $("#fTerminoEvaluacion").val();
//  
//  if(periodo.trim()==="" || fInicioEvaluacion.trim()==="" || fFinEvaluacion.trim()===""){
//     //  alert("Todos los campos son obligatorios.");
//           alertify.warning('Todos los campos son obligatorios.');
//  }else{
////     alert(fInicioEvaluacion);
////  alert(fFinEvaluacion);
////  alert(periodo); 
//    alertify.success('La evaluación se registró con éxito.');
//
//
//
//
//
//        
//      
////      $("#dvPonderacion").show();
////    alertify.error('error');
//
//  }
//  
//    
//}


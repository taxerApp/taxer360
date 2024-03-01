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
    var correo = $("#txtCorreo").val();

     if(empresa.trim() ==="" || rfc.trim()=== ""  || razonSocial.trim()=== "" || correo.trim()=== ""){
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
                correo:correo,
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

function wndEditaEmpresa(id, empresa, rfc, razonSocial, correo, status) {
    $("#overlay").fadeIn();
    $("#wndEditaEmpresa").dialog({
        width: 'auto',
        height: 350,
        show: "blind",
        hide: "blind",
        resizable: "false",
        my: "center",
        at: "center",
        of: window,
        modal: "true",
        open: function (event, ui) {
            $('#wndEditaEmpresa').load("Sesion/Empresa/wndEditarEmpresa.jsp?id="+id+"&&empresa="+empresa.replaceAll(" ", "|")+"&&rfc="+rfc+"&&razonSocial="+razonSocial.replaceAll(" ", "|")+"&&correo="+correo+"&&status="+status, function () {
                // Esta función se ejecuta cuando se termina de cargar la modal
                $("#overlay").fadeOut();
            });
        },
        close: function () {}
    });
}


function cancelar() {
    
    $("#wndEditaEmpresa").dialog("close"); 
 
}

$(document).on("click", "#btnEditaEmpresa", function (e) {

    var id = $("#txtIdEmpresaE").val();
    var empresaE = $("#txtEditaEmpresa").val();
    var rfc = $("#txtEditaRfc").val();
    var razonSocial = $("#txtEditaRazonSocial").val();
    var correo = $("#txtEditaCorreo").val();    
    var status = $("#cmbStatusEmpresa").val();
         alert("idRegistro "+id);
     if(empresaE.trim() ==="" || rfc.trim() ==="" || razonSocial.trim() ==="" || correo.trim() ==="" || status.trim() ==="" ){
         alert("Todos los campos son obligatorios");
         
     }else {
          $("#overlay").fadeIn();
        $.ajax({
            type: 'POST',
            url: 'CtrlEmpresa',
            data: {
                empresa: empresaE,
                rfc:rfc,
                razonSocial:razonSocial,
                correo:correo,
                status:status,
                id: id,
                bnd: 3
            },
            success: function (data) {
                   $("#overlay").fadeOut();
            if(data === 'true'){
              alert("La empresa se actualizo exitosamente.");
                  
              cancelar();
              consultaInicialEmpresa();
            }else{
                alert("Ocurrió un error en la actualización.");
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


    function consultaInicialEmpresa(){
     var bnd=$("#txtBnd").val(); 
      var idEmpresa=$("#txtIdEmpresa").val(); 
      
         $("#overlay").fadeIn();
        $.ajax({
            type: 'POST',
            url: 'CtrlEmpresa',
            data: {
                bnd: bnd,
                idEmpresa:idEmpresa
            },
            success: function (data) {
                      
                  $("#tblEmpresaContent").dataTable().fnDestroy();
            $("#tblEmpresa").html(data);
            
             $("#tblEmpresaContent").dataTable({
                 "bPaginate": true,
                "bProcessing": true,
//                "sAjaxSource": data,
                "bLengthChange": true,
                "bFilter": false,
                "searching": true,
                "bSort": true,
              "lengthMenu": [ [10, 25, 50,100, -1], [10, 25, 50,100, "Todos"] ],
                "bAutoWidth": true,
      
        language: {
        url: '//cdn.datatables.net/plug-ins/1.13.6/i18n/es-ES.json',
    }
   });
   
      
       $("#overlay").fadeOut();  

            },
            error: function (data) {
            $("#overlay").fadeOut();
                //   mensajeError(data)
                
                     $("#overlay").fadeOut();
            }
        });
  }


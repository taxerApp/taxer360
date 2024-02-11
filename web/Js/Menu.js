/*let btnHamburguesa = document.getElementById("btn-hamburguesa");
let menuNavegacion = document.getElementById("menu-navegacion");*/

$(document).ready(function () {
    $("#btn-hamburguesa").click(function () {
      
        let menuNavegacion = document.getElementById("menu-navegacion");
        menuNavegacion.classList.toggle("viewMenu");
    });
    
    $(".angle-view-sub-menu").on( "click", function() {
  $(this).siblings("ul").toggle();
})
});

//$("#btn-hamburguesa" ).on("click", function() {
//  alert( "Handler for `click` called." );
//} );

/*btnHamburguesa.addEventListener('click', function(){
    menuNavegacion.classList.toggle("viewMenu");
});*/


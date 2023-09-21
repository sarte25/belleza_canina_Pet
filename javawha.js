/*ICONO DE WHATSAPP*/
window.onscroll = function() {
    var bubble = document.querySelector(".float-bubble");
   var scrollY = window.scrollY;
   bubble.style.top = scrollY + "px";
    };

/*PARA SERVICIOSIOS*/
function mostrarOcultarInformacion() {
  const rat = document.querySelector(".rat");

// Si el elemento está visible, lo ocultamos
if (rat.style.display === "block") {
  rat.style.display = "none";
} else {
  // Si el elemento está oculto, lo mostramos
  rat.style.display = "block";
}

}  
 
/* 2  */
function mostrarOcultarInformacion2() {
  const rat = document.querySelector(".rat2");


if (rat.style.display === "block") {
  rat.style.display = "none";
} else {

  rat.style.display = "block";
}
}
/* 3  */
function mostrarOcultarInformacion3() {
  const rat = document.querySelector(".rat3");


if (rat.style.display === "block") {
  rat.style.display = "none";
} else {
  rat.style.display = "block";
}
}

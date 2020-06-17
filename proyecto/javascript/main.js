//DOM
//querySelector / querySelectorAll
/*let links = document.querySelectorAll("a");

links.forEach(function(links){
	console.log(links);
})
*/

/*let celdas = document.querySelectorAll("td");

celdas.forEach(function(td){
	td.addEventListener('click', function(){
		console.log(this);
	})
});
*/

let boton = document.querySelectorAll(".close");

boton.forEach(function(){
	console.log(boton);
});

boton.forEach(function(boton){
	boton.addEventListener('click',function(evento){
		evento.preventDefault();
	})
});

//Darle valor a la variable

let contenido = document.querySelector(".content");

//Remover las clases de la variable

contenido.classList.remove("animate__fadeInDown");
contenido.classList.remove("animate__animated");

//Agregar clases para animar la salida

contenido.classList.add("animate__backOutRight");
contenido.classList.add("animate__animated");

//Timer

setTimeout(function(){
	location.href = "/";

}, 600);
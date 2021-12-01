/*
  1) Programa una función que cuente el número de caracteres de una cadena de texto, 
  pe. miFuncion("Hola Mundo") devolverá 10.
*/

/* 
  let cadena = "Mi nombre es Haniel";

  contador_caracteres(cadena);
  function contador_caracteres(cadena) {
    
    if (typeof cadena === "string"){
      console.log(cadena.length);
    } else {
      console.log("No es una cadena.");
    }
  } 
*/

/* 
  2) Programa una función que te devuelva el texto recortado según el número de caracteres indicados, 
  pe. miFuncion("Hola Mundo", 4) devolverá "Hola".
*/

/* 
  let cadena = "Hola mundo";
  let caracteres = 10;

  recortar(cadena, caracteres);
  function recortar(cadena, caracteres) {
    let cadena_nueva = cadena.slice(0, caracteres);
    //Devuelva la cadena recortada
    console.log(cadena_nueva);
    //Devuelve el valor de la cadena recortada, cadena_nueva = 4
    console.log(cadena_nueva.length);
  } 
*/

/* 
  3) Programa una función que dada una String te devuelva un Array de textos separados por cierto 
  caracter, pe. miFuncion('hola que tal', ' ') devolverá ['hola', 'que', 'tal']. 
*/

/* 
  let cadena = "Hola mi nombre es Eduardo Haniel Duran Cuello y me dicen Hani.";
  let separador = " ";

  texto(cadena, separador);
  function texto(cadena, separador) {
    let cadena_nueva = cadena.split(separador);
    console.log(cadena);
    console.log(cadena_nueva);
    console.log(separador);
    console.log(cadena_nueva.length);
  } 
*/

/*
  4) Programa una función que repita un texto X veces, 
  pe. miFuncion('Hola Mundo', 3) devolverá Hola Mundo Hola Mundo Hola Mundo.
*/

/* 
  let cadena = "Eduardo Haniel ";
  let repeticiones = 3;

  repetir(cadena, repeticiones);
  function repetir(cadena, repeticiones) {
    let cadena_nueva = cadena.repeat(repeticiones);
    console.log(cadena_nueva);
  } 
*/

/*
  5) Programa una función que invierta las palabras de una cadena de texto, 
  pe. miFuncion("Hola Mundo") devolverá "odnuM aloH".
*/

/* 
  let cadena = "Hola mundo";

  invertir(cadena);
  function invertir(cadena) {
    let cadena_nueva = cadena.split("").reverse().join("");
    console.log(cadena_nueva);
  } 
*/

/*
  6) Programa una función para contar el número de veces que se repite una palabra en un texto largo, 
  pe. miFuncion("hola mundo adios mundo", "mundo") devolverá 2.
*/

/* 
  let cadena = "hola mundo adios mundo";
  let palabra = "mundo";

  repeticiones(cadena, palabra);
  function repeticiones(cadena, palabra) {
    let cadena_nueva = cadena.split(" ");
    let contador = 0;
    console.log(cadena_nueva);
    //cadena_nueva.forEach(element => {
    //  if(element.includes(palabra)){
    //    contador++;
    //  }
    //});
    for (const array of cadena_nueva) {
      if(array.includes(palabra)){
        contador++;
      }
    }
    console.log(contador);
  } 
*/

/*
  7) Programa una función que valide si una palabra o frase dada, 
  es un palíndromo (que se lee igual en un sentido que en otro), pe. mifuncion("Salas") devolverá true.
*/

/* 
  let palabra = "salas";

  esPalindrome(palabra)
  function esPalindrome(palabra) {
    let palabra_nueva = palabra.split("").reverse().join("");
    console.log(palabra_nueva);
    if(palabra_nueva === palabra){
      console.log("es palindrome!");
    } else {
      console.log("no es palindrome");
    }

  } 
*/

/*
  8) Programa una función que elimine cierto patrón de caracteres de un texto dado, 
  pe. miFuncion("xyz1, xyz2, xyz3, xyz4 y xyz5", "xyz") devolverá  "1, 2, 3, 4 y 5. 
*/

/* 
  let texto = "xyz1";
  let regExp = /xyz/ig;

  eliminar(texto, regExp);
  function eliminar(texto, patron) {
    console.log(texto);
    //console.log(patron.test(texto));
    if(patron.test(texto)){
      console.log("coincide");
      let cadena_nueva = texto.replace(patron, "");
      console.log(cadena_nueva);
    }
  } 
*/

/*
  9) Programa una función que obtenga un numero aleatorio entre 501 y 600.
*/

/* aleatorio();
function aleatorio() {
  let numero = Math.floor(Math.random() * (600 - 500) + 500);
  console.log(Math.random());
  console.log(numero);
} */

/*
  10) Programa una función que reciba un número y evalúe si es capicúa o no 
  (que se lee igual en un sentido que en otro), pe. miFuncion(2002) devolverá true.  
*/

/* 
  let x = 2002;

  capicua(x);
  function capicua(x) {
    let numero = x.toString();
    let array_numero = numero.split("").reverse().join("");
    if(array_numero === numero){
      console.log("el numero es capicua");
    } else {
      console.log("no estoy funcionando");
    }
  } 
*/

/*
  11) Programa una función que calcule el factorial de un número (El factorial de un entero positivo n, 
  se define como el producto de todos los números enteros positivos desde 1 hasta n), 
  pe. miFuncion(5) devolverá 120. 
*/

/* factorial(11);
function factorial(numero) {
  let resultado = 1;
  for (let i = 1; i <= numero; i++) {
    resultado = resultado * i;
    console.log(resultado);
  }
}  */

/*
  12) Programa una función que determine si un número 
  es primo (aquel que solo es divisible por sí mismo y 1) o no, pe. miFuncion(7) devolverá true.
*/

/* 
  let numero = 2;
  esPrimo(numero);
  function esPrimo(numero) {
    let divisible = false;
    for (let i = 2; i < numero; i++) {
      console.log(i);
      if(numero % i === 0){
        //console.log(numero % i);
        divisible = true;
        break;
      }
    }
    return divisible ? console.log("no es primo!") : console.log("es primo!");
  } 
*/

/*
  13) Programa una función que determine si un número es par o impar, 
  pe. miFuncion(29) devolverá Impar. 
*/

/* 
  let numero = 1375;

  impar_o_par(numero);
  function impar_o_par(numero) {
    if(numero % 2 === 0){
      console.log("es par");
    } else {
      console.log("no es par");
    }
  } 
*/

/* 
  14) Programa una función para convertir grados Celsius a Fahrenheit y viceversa, 
  pe. miFuncion(0,"C") devolverá 32°F. 
*/

/* 
  let numero = 0;
  let grado = "F";

  convertir_grados(numero, grado)
  function convertir_grados(numero, grado) {
    let resultado;
    if(grado.toLowerCase() === "c"){
      resultado = (numero * 1.8) + 32;
      console.log(`${numero}°C equivale a: ${resultado}°F`);
    } else if (grado.toLowerCase() === "f"){
      resultado = (numero - 32) / 1.8;
      console.log(`${numero}°F equivale a: ${resultado}°C`);
    }
  } 
*/

/*
  15) Programa una función para convertir números de base binaria a decimal y viceversa, 
  pe. miFuncion(100,2) devolverá 4 base 10.  
*/

/* 
  let numero = 10001;
  let binario = numero.toString();
  let array = binario.split("").reverse();
  let resultado = 0;
  let contador = 0;
  //console.log(array);
  for(let i = 0; i < array.length; i++){
    console.log(array);
    resultado = parseInt(array[i]) * Math.pow(2, i);
    contador = contador + resultado;
    //console.log(resultado);
  }
  console.log(contador); 
*/

/* 
  let numero = 725;

  decimal_a_binario(numero);
  function decimal_a_binario(numero) {
    let residuo = 0;
    let resultado = 0;
    let array = [];
    while (numero >= 2) {
      numero = numero - resultado;
      resultado = numero / 2;
      residuo = numero % 2;
      array.push(Math.floor(residuo));
      console.log(Math.floor(numero));
    }
    return console.log(array.reverse().join(""));
  } 
*/

/*
  16) Programa una función que devuelva el monto final después de aplicar 
  un descuento a una cantidad dada, pe. miFuncion(1000, 20) devolverá 800. 
*/

/* 
function calculo_descuento(monto, descuento) {
  let resultado = 0;
  descuento = monto * (descuento / 100);
  resultado = monto - descuento;
  return resultado;
}
console.log(calculo_descuento(1000, 20)); 
*/

/*
  17) Programa una función que dada una fecha válida determine cuantos años han pasado hasta 
  el día de hoy, pe. miFuncion(new Date(1984,4,23)) devolverá 35 años (en 2020).  
*/
/* 
  function tiempo_transcurrido(year, dia, mes) {
    const fecha = new Date(year, dia, mes);
    const fecha_actual = new Date();
    let msecPerYear = 1000 * 60 * 60 * 24 * 365;
    console.log(Math.floor((fecha_actual - fecha) / msecPerYear));
  }

  tiempo_transcurrido(1984, 4, 23); 
*/

/*
  18) Programa una función que dada una cadena de texto cuente el número de vocales 
  y consonantes, pe. miFuncion("Hola Mundo") devuelva Vocales: 4, Consonantes: 5.  
*/

/* 
  function contador_letras(palabra) {
  //borrar espacio en la palabra
  palabra = palabra.split(" ").join("");
  //separar la palabra en letras y obtener un array
  palabra = palabra.split("");
  const letra = ["a","e","i","o","u","z"]
  let vocal = 0;
  let consonante = 0;
  
  
  //recorrer la palabra, guardar el elemento actual en una variable y preguntar si ese elemento
  //se encuentra en el array de letras 
  
  for (let i = 1; i <= palabra.length; i++){
    let element = palabra[i];
    if(letra.includes(element)){
      vocal++;
    } else {
      consonante++;
    }
  }
  console.log(`${vocal} vocales, ${consonante} consonante`);
}
  contador_letras("la palabra"); 
*/

/*
  21) Programa una función que dado un array numérico devuelve otro array con los números elevados 
  al cuadrado, pe. mi_funcion([1, 4, 5]) devolverá [1, 16, 25].  
*/

/* 
  const numeros = [2,8,7];

  function elevar_cuadro(numeros) {
    const array = [];
    let resultado = 0;
    for (let i = 0; i < numeros.length; i++) {
      const element = numeros[i];
      resultado = Math.pow(element, 2);
      array.push(resultado);
    }
    console.log(array);
  }

  elevar_cuadro(numeros); 
*/

/*
  22) Programa una función que dado un array devuelva el número mas alto y el más bajo de dicho array, 
  pe. miFuncion([1, 4, 5, 99, -60]) devolverá [99, -60].
*/

const array = [1,4,5,99,-60];

function mayorMenor(numeros) {
  let alto = 0;
  let bajo = 0;
  for (let i = 0; i < numeros.length; i++) {
    let element = numeros[i];

    for (let x = 0; x < numeros.length; x++) {
      //console.log(numeros[i], numeros [x]);
      let element_2 = numeros[x];
      if (element >= element_2) {
        alto = element;
      }
      
    }
  }
  console.log(alto);
}

mayorMenor(array);
var num_inicial, num_magico, a_num_inicial;
var num_digit = [];
var num_digit_min = [];
var num_digit_max = [];
var num_digit_max_conc, num_digit_min_conc;
var numero_mayormenor = [];
var numero_menormayor = [];

function numero() {
    // Ingreso el numero del input
    a_num_inicial = document.getElementById("inputNumInicial").value;
    let size_num_inicial = a_num_inicial.length;
    console.log(a_num_inicial.length)

    // Evalúo si es de 4 caracteres
    if (size_num_inicial > 4) {
        alert("Ingrese un número de cuatro digitos");
    } else {
        //obtengo el valor del input en num_inicial
        num_inicial = document.getElementById("inputNumInicial").value;
        while (num_magico !== 6174) {
            // creo dos variables locales 
            //Ingreso los valores de numn_inicial digito por digito en el arreglo num_digit[]
            for (let i in num_inicial) {
                num_digit.push(parseInt(num_inicial[i]));
            }

            num_digit_min = num_digit;
            num_digit_min.sort(function(a, b) { return a - b });
            numero_menormayor = num_digit_min;
            num_digit_min_conc = "";
            for (let transporte1 of numero_menormayor) {
                num_digit_min_conc = num_digit_min_conc + transporte1.toString();
            }
            for (i = numero_menormayor.length; i > 0; i--) {
                numero_mayormenor.push(numero_menormayor[i - 1]);
            }
            //inicio la variable en string
            num_digit_max_conc = "";
            // Creo una variable local tranporte y la uso para pasar los datos del arreglo a la varibale en un solo dato. Numero de mayor a menor
            for (let transporte of numero_mayormenor) {
                num_digit_max_conc = num_digit_max_conc + String(transporte);
            }
            // lo mismo con los numeros ordenados de menor a mayor
            //hago la operación y el bucle del número mágico
            num_magico = parseInt(num_digit_max_conc) - parseInt(num_digit_min_conc);
            document.getElementById("output").innerHTML += `${num_magico}<br>`;
            num_inicial = String(num_magico);
            num_digit = null;
            num_digit_min = null;
            num_digit_max = null;
            numero_mayormenor = null;
            numero_menormayor = null;
            num_digit = [];
            num_digit_min = [];
            num_digit_max = [];
            numero_mayormenor = [];
            numero_menormayor = [];
        }

    }
}
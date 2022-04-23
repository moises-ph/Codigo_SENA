var opcion, n1, n2, n3;

function elegir(){
    n = document.getElementById("seleccion").value
    switch (n){
        case "1":
            // Debe cambiar la ruta de acceso luego de descargar el trabajo o no le va a funcionar en ambos casos del switch: caso1: Ejercicio1.html; caso2: Ejercicio2.html
            window.location="C:/Users/SENA/Documents/Moises/Ejercicios/Exposición Kevin/For/Ejercicio1.html"
            break
        case "2": 
            window.location="C:/Users/SENA/Documents/Moises/Ejercicios/Exposición Kevin/For/Ejercicio2.html"
            break
        default :
            alert("Ingrese una de las opciones de abajo")
            break
    }
}

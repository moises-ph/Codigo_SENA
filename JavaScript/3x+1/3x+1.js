var n, solucion, count, fin;
fin = 0
function problema(){
    n = parseInt(document.getElementById("input").value);
    count = 1
    if(n < 0){
        alert("ingrese un numero válido")
        location.reload()
    }
    else{
        while(fin !== 3) {
            if ((n % 2) == 0){
                solucion = n / 2
                document.getElementById("output").innerHTML += `Paso ${count} = ${n}<br>`
                console.log(solucion)
                console.log("If 1 verdadero")
                n = solucion
                count += 1
            }
            else if((n % 2) !== 0){
                solucion = (3*n) + 1;
                document.getElementById("output").innerHTML += `Paso ${count} = ${n}<br>`
                console.log(solucion)
                console.log("If 2 verdadero")
                n = solucion
                count += 1
            }
            else{
                alert("ERROR");
            }
            if(solucion == 4){
                fin += 1;
            }
        }
    }   
}
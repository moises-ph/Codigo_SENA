var bola, transporte,transporte2, barra1, n;
bola = [];
barra1 = [];
transporte = "*";
transporte2 = "-";

function arbol(){
    n = parseInt(document.getElementById("input").value);
    if(n < 1){
        alert("No se permiten numero negativos ni el cero, intente de nuevo")
    }
    else{
        for(i=0; i < n; i++){
            let signo = "**";
            bola.push(transporte)
            transporte += signo;
            console.log(bola[i]);
        }
        
        for(j=0; j < n; j++){
            let signo = "-";
            barra1.push(transporte2)
            transporte2 += signo;
            console.log(barra1[j]);
        }
        barra1.reverse();
        console.log(barra1)
        for(k = 0; k < n; k++){
            let barra = barra1[k]
            let asterisco = bola[k]
            document.getElementById("output").innerHTML += `${barra}${asterisco}${barra}<br>`
        }
    }
}
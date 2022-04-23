var inversioninicial, dolarparcial, mesretiro, mestrim2, mestrim3, mestrim4, retiroinversion;
const dolar = 3800
var mesestrimestre2 = ["Abril","Mayo","Junio","abril","mayo","junio"]
var mesestrimestre3 = ["Julio","Agosto","Septiembre","julio", "agosto","septiembre"]
var mesestrimestre4 = ["Octubre","Noviembre","Diciembre","octubre","noviembre","diciembre"]
mestrim2 = false
mestrim3 = false
mestrim4 = false
function inversion(){
    inversioninicial = parseInt(document.getElementById("inputpesos").value);
    mesretiro = document.getElementById("inputmes").value;
    for(i = 0; i < mesestrimestre2.length; i++){
        if (mesretiro == mesestrimestre2[i]){
            mestrim2 = true;
            console.log("Mestrim2 es verdadero")
            break
        }
        else {
            mestrim2 = false;
        }
    }
   
    if(mestrim2 == false){
        for(j = 0; j < mesestrimestre4.length; j++){
            if (mesretiro == mesestrimestre4[j]){
                mestrim4 = true;
                console.log("Mestrim4 es verdadero")
                break
            }
            else {
                mestrim4 = false;
            }
        }
    }

    if(mestrim4 == false && mestrim2 == false){
        for(k = 0; k < mesestrimestre3.length; k++){
            if (mesretiro == mesestrimestre3[k]){
                mestrim3 = true;
                console.log("Mestrim3 es verdadero")
                break
            }
            else {
                mestrim3 = false;
            }
        }
    }

    if (mestrim2 == true && mestrim4 == false && mestrim3 == false){
        dolarparcial = dolar - (dolar * 0.06)
        retiroinversion = inversioninicial / dolarparcial
        document.getElementById("output").innerHTML = `Usted retiró ${retiroinversion} dolares de su inversion`
    }
    else if(mestrim2 == false && mestrim4 == true && mestrim3 == false){
        dolarparcial = ((dolar * 0.94)) * 1.09
        retiroinversion = inversioninicial / dolarparcial
        document.getElementById("output").innerHTML = `Usted retiró ${retiroinversion} dolares de su inversion`
    }
    else if(mestrim2 == false && mestrim4 == false && mestrim3 == true){
        dolarparcial = dolar * 0.94
        retiroinversion = inversioninicial/dolarparcial
        document.getElementById("output").innerHTML = `Usted retiró ${retiroinversion} dolares de su inversion`
    }
    else{
        dolarparcial = dolar 
        retiroinversion = inversioninicial/dolarparcial
        document.getElementById("output").innerHTML = `Usted retiró ${retiroinversion} dolares de su inversion`
    }
}
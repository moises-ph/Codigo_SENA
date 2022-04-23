var n, numerofibonachi, num, num1, i;

function fibonachi(){
    n = parseInt(document.getElementById("input").value)
    num = 0;
    numerofibonachi = 0;
    num1 = 1
    i = 0
    while(i < n){
        document.getElementById("output").innerHTML += `${numerofibonachi}<br>`
        numerofibonachi = num1 + num
        num1 = num
        num = numerofibonachi
        i++
    }
}
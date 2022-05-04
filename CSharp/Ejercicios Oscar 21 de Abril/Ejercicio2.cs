using System;

namespace Ejercicio2{
    class Program{
        static void Main(String[] args){
            int suma, resta, multiplicacion;
            float division;
            int[] numeros1 = {4,5,6,7,8};
            int[] numeros2 = {9,8,7,5,6};
            for(int i = 0; i < numeros1.Length; i++){
                Console.WriteLine(suma1);
                for(int j = 0; j < numeros2.Length; j++){
                    suma = numeros1[i] + numeros2[j];
                    resta = numeros1[i] - numeros2[j];
                    multiplicacion = numeros1[i] * numeros2[j];
                    division = (float)numeros1[i] / (float)numeros2[j];
                    Console.WriteLine("\nLa suma de {0} y {1} es: {2}", numeros1[i], numeros2[j], suma);
                    Console.WriteLine("La resta de {0} y {1} es: {2}", numeros1[i], numeros2[j], resta);
                    Console.WriteLine("La multiplicacion de {0} y {1} es: {2}", numeros1[i], numeros2[j], multiplicacion);
                    Console.WriteLine("La division de {0} y {1} es: {2} \n", numeros1[i], numeros2[j], division);
                }
            }
        }
    }
}
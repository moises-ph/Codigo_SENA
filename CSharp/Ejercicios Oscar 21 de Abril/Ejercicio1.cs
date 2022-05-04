using System;

namespace Ejercicio1{
    class Program{
        static void Main(string[] args){
            float promedio = 0;
            int promedio_temp = 0;
            int[]  notas = new int[10];
            for(int i = 0; i < notas.Length; i++){
                Console.Write("Ingrese la nota {0}: ", i+1);
                notas[i] = int.Parse(Console.ReadLine());
                promedio_temp += notas[i];
            }
            promedio = (float)promedio_temp / (float)notas.Length;
            Console.WriteLine("El promedio es: {0}", promedio);
        }
    }
}

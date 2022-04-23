using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
namespace ejercicio1
{
    class Program
    {
        static void Main(string[] args)
        {
            int promedio = 0;
            int[] notas = new int[10];
            for (int i = 0; i < notas.Length; i++)
            {
                Console.Write("Ingrese la nota: " + (i + 1));
                string nota = Console.ReadLine();
                notas[i] = int.Parse(nota);
                promedio += notas[i];
            }
            promedio = promedio / 10;
            Console.WriteLine("El promedio es: " + promedio);
        }
    }
}

using System;

public class Cuadrados{

    public static void DibujarCuadrados (int i){
        for(i=1;i<=5;i++){
            Console.WriteLine("* * * * *");
        }
    }

    public static void Main(){
        int i;
        Console.WriteLine("Dibujar cuadrados");
        Console.WriteLine("Ingrese de cuantos lados va a tener el cuadrado");
        i = Convert.ToInt32(Console.ReadLine());
        DibujarCuadrados(i);
    }
}
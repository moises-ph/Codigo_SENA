public class Ejercicio2 {
    public static void main(String[] args){
        int suma = 0;
        int resta = 0;
        int multiplicacion = 0;
        float division = 0;
        int[] numeros_1 = {1,2,3,4,5};
        int[] numeros_2 = {1,2,3,4,5};
        for(int i = 0; i < numeros_1.length; i++){
            for(int j = 0; j < numeros_2.length; j++){
                suma = numeros_1[i] + numeros_2[j];
                resta = numeros_1[i] - numeros_2[j];
                multiplicacion = numeros_1[i] * numeros_2[j];
                division = (float)numeros_1[i] / (float)numeros_2[j];
                System.out.println("\nLa suma de " + numeros_1[i] + " y " + numeros_2[j] + " es igual a: " + suma);
                System.out.println("La resta de " + numeros_1[i] + " y " + numeros_2[j] + " es igual a: " + resta);
                System.out.println("La multiplicacion de " + numeros_1[i] + " y " + numeros_2[j] + " es igual a: " + multiplicacion);
                System.out.println("La division de " + numeros_1[i] + " y " + numeros_2[j] + " es igual a: " + division + "\n");
            }
        }
    }
}
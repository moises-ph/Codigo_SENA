import javax.swing.JOptionPane;

public class Ejercicio1{
    public static void main(String[] args){
        float promedio = 0;
        int [] notas = new int[10];
        for(int i = 0; i < notas.length; i++)
        {
            notas[i] = Integer.parseInt(JOptionPane.showInputDialog("Ingrese la nota " + (i+1)));
            promedio += (float)notas[i];
        }
        promedio = promedio / notas.length;
        System.out.println("El promedio es: " + promedio);
    }
}

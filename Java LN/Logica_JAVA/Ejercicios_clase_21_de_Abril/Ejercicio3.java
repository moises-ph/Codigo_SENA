import java.util.*;
import javax.swing.JOptionPane;

public class Ejercicio3{
    public static void main(String[] args){
        int num_estudiantes, num_notas, promedio_temp;
        promedio_temp = 0;
        num_estudiantes = Integer.parseInt(JOptionPane.showInputDialog("Ingrese el numero de estudiantes"));
        num_notas = Integer.parseInt(JOptionPane.showInputDialog("Ingrese el numero de notas"));
        int[] notas = new int[num_notas];
        int[] promedio = new int[num_estudiantes];
        String[] estudiantes = new String[num_estudiantes];
        List<String> perdio = new ArrayList<>();
        List<String> gano = new ArrayList<>();
        for(int i=0; i<num_estudiantes; i++){
            promedio_temp = 0;
            estudiantes[i] = JOptionPane.showInputDialog("Ingrese el nombre del estudiante");
            for(int j=0; j<num_notas; j++){
                notas[j] = Integer.parseInt(JOptionPane.showInputDialog("Ingrese la nota del estudiante " + estudiantes[i]));
                promedio_temp  += notas[j];
            }
            promedio[i] = promedio_temp / num_notas;
            if (promedio[i] < 3){
                perdio.add(estudiantes[i]);
            }
            else {
                gano.add(estudiantes[i]);
            }
            JOptionPane.showMessageDialog(null, "El promedio del estudiante " + estudiantes[i] + " es: " + promedio[i]);
        }
        JOptionPane.showMessageDialog(null, "El numero de estudiantes que perdieron es: " + perdio.size());
        JOptionPane.showMessageDialog(null, "El numero de estudiantes que ganaron es: " + gano.size());
        
    }
}

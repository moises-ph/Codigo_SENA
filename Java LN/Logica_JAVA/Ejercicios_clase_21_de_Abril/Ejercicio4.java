import java.util.*;
import javax.swing.JOptionPane;

public class Ejercicio4 {

    static boolean buscar (int[] array, int numero) {
        boolean encontrado = false;
        for (int i = 0; i < array.length; i++) {
            if (array[i] == numero) {
                encontrado = true;
            }
        }
        return encontrado;
    }
    public static void main(String[] args){
        String buscar;
        Integer rep;
        Boolean repetir = false;
        String[] estudiantes = new String[5];
        for(int j=0; j < estudiantes.length; j++){
            estudiantes[j] = JOptionPane.showInputDialog("Ingrese el nombre del estudiante #" + (j+1));
        }
        do{
            buscar = JOptionPane.showInputDialog("Ingrese el nombre del estudiante que desea buscar");
            if(buscar(estudiantes, buscar)){
                JOptionPane.showMessageDialog(null, "El estudiante " + buscar + " se encuentra en la lista");
            }else{
                JOptionPane.showMessageDialog(null, "El estudiante " + buscar + " no se encuentra en la lista");
            }
            rep = Integer.parseInt(JOptionPane.showInputDialog("Desea buscar otro estudiante?\n1. Si\n2. No"));
            if( rep == 1){
                repetir = true;
            }
            else{
                repetir = false;
            }

        }while (repetir == true);
    }
}

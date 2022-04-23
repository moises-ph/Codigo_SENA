import java.util.*;
import javax.swing.JOptionPane;

public class Ejercicio4 {
    public static void main(String[] args){
        String buscar;
        Integer rep;
        Boolean encontrado = false;
        Boolean repetir;
        String[] estudiantes = new String[5];
        for(int j=0; j < estudiantes.length; j++){
            estudiantes[j] = JOptionPane.showInputDialog("Ingrese el nombre del estudiante #" + (j+1));
        }
        do{
            buscar = JOptionPane.showInputDialog("Ingrese el nombre del estudiante que desea buscar");
            for(int i=0; i < estudiantes.length; i++){
                if(estudiantes[i].equals(buscar)){
                    encontrado = true;
                    JOptionPane.showMessageDialog(null, "El estudiante " + buscar + " se encuentra en la posicion " + (i+1));
                    break;
                }else{
                    encontrado = false;
                }
            }
            if(encontrado == false){
                JOptionPane.showMessageDialog(null, "El estudiante " + buscar + " no se encuentra en la lista");
                encontrado = false;
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

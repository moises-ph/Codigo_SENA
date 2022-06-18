import javax.swing.JOptionPane;
public class Ejercicio_2 {
    public static void main(String[] args) {
        int n = Integer.parseInt(JOptionPane.showInputDialog("Introduce un numero"));
        if (n < 0)
            JOptionPane.showMessageDialog(null, "El numero es negativo");
        else if (n > 0)
            JOptionPane.showMessageDialog(null, "El numero es positivo");
        else
            JOptionPane.showMessageDialog(null, "El numero es 0");
    }
}

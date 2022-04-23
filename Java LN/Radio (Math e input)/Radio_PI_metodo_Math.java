import javax.swing.JOptionPane;
public class Radio_PI_metodo_Math{
    public static void main(String[] args){
        String texto=JOptionPane.showInputDialog("Introduce un radio");
        //Pasamos el String a double
        double radio=Double.parseDouble(texto);
  
        //Formula area circulo, usamos algunos de los metodos de Math
        double area=Math.PI*Math.pow(radio, 2);
  
        JOptionPane.showMessageDialog(null, "El area del circulo es "+area);
    }
}
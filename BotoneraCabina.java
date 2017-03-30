import java.util.ArrayList;
import java.util.Scanner;

public class BotoneraCabina extends Botonera{
   private ArrayList <Boton> botones;
   public BotoneraCabina(int n_pisos) {
      botones = new ArrayList <Boton> ();
      for (int i=0; i < n_pisos; i++) 
         botones.add(new Boton());
   }

   public void resetFloorRequest(int i) {
      botones.get(i-1).turnOFF();
   }
   public String toString() {
      String s="";
      for(Boton b: botones)
         s+=b.toString();
      return s;
   }
}

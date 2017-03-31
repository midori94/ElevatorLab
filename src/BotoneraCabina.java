import java.util.ArrayList;
import java.util.Scanner;
import java.lang.Integer;

public class BotoneraCabina extends Botonera{
   private ArrayList <Boton> botones;
   public BotoneraCabina(int n_pisos) {
      botones = new ArrayList <Boton> ();
      for (int i=0; i < n_pisos; i++) 
         botones.add(new Boton());
   }
   public boolean setRequest(String piso){
      int i = Integer.parseInt(piso);
      if (i>0 && i<=botones.size())
         botones.get(i-1).turnON();
      else
	 return false;
      return true;
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

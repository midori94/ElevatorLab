/*
public class BotoneraCabina {  // just to remember it for next stage
   public BotoneraCabina(int numPisos) {
   }
}  

*/
import java.util.Scanner;
import java.lang.Integer;

public class BotoneraCabina extends Botonera{
   private Boton[] botones;
   public BotoneraCabina(int n_pisos, ControlUnit cu) {
      super(cu,0);
      botones = new Boton[n_pisos];
      for (int i=0; i < n_pisos; i++) 
         botones[i]= new Boton();
   }
   public boolean setRequest(String piso){
      int i = Integer.parseInt(piso);
      if (i>0 && i<=botones.length){
         botones[i-1].turnON();
         super.setLocation(i);
         super.elevatorRequested();
         super.setLocation(0);
      }
      else
	 return false;
      return true;
   }
   public void resetFloorRequest(int i) {
      botones[i-1].turnOFF();
   }
   public boolean isRequested(int floor) {
      if (floor > 0 && floor<= botones.length)
         return botones[floor-1].getState();
      return false;
   }
   public String toString() {
      String s="";
      for(Boton b: botones)
         s+=b.toString();
      return s;
   }
}

public class BotoneraPisoIntermedio extends Botonera implements DownRequest, UpRequest {
   private Boton up, down;
   public BotoneraPisoIntermedio () {
   }
   
   public boolean setRequest(String up_down){
      if (up_down.equals("U"))
         up.turnON();
      else if (up_down.equals("D"))
         down.turnON();
      else
         return false;
      return true;
   }
   // UpRequest interface implementation
 

   // DownResquest interface implementation
}
   

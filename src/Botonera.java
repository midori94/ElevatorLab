public abstract class Botonera {
   private ControlUnit controlUnit;
   private int location;
   public Botonera(ControlUnit cu, int location){
      controlUnit = cu;
      this.location = location; // 0 means in cabina
   }
   protected void elevatorRequested(){
      controlUnit.elevatorRequested(location);
   }
   public abstract boolean setRequest(String s);  // users can only set buttons 
}

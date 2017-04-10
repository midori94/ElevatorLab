public class BotoneraUltimoPiso extends Botonera implements DownRequest{
	private Boton down;
	public BotoneraUltimoPiso(ControlUnit cu, int floor){
		super(cu,floor);
		down = new Boton();
        }
	public boolean setRequest(String s_up) {
		boolean result = s_up.equals("D");
	    if (result){
	    	down.turnON();
                elevatorRequested();
            }
	    return result;         
	}
		   
	public void resetDownRequest(){
		down.turnOFF();
	}

	public boolean isDownRequested() {
	      return down.getState();
	}
}

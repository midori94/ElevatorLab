public class BotoneraUltimoPiso extends Botonera implements DownRequest{
	private Boton down;
	public BotoneraUltimoPiso(){}
	public boolean setRequest(String s_up) {
		boolean result = s_up.equals("D");
	    if (result)
	    	down.turnON();
	    return result;         
	}
		   
	public void resetDownRequest(){
		down.turnOFF();
	}

	public boolean isDownRequested() {
	      return down.getState();
	}
}

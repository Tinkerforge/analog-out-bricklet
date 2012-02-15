import com.tinkerforge.BrickletAnalogOut;
import com.tinkerforge.IPConnection;
import com.tinkerforge.IPConnection.TimeoutException;

public class ExampleSimple {
	private static final String host = new String("localhost");
	private static final int port = 4223;
	private static final String UID = new String("ABC"); // Change to your UID
	
	public static void main(String args[]) {
		IPConnection ipcon = null;
		try {
			ipcon = new IPConnection(host, port);
		}
		catch(java.io.IOException e) {
			e.printStackTrace();
			return;
		}
		
		BrickletAnalogOut al = new BrickletAnalogOut(UID);
		try {
			ipcon.addDevice(al);
		} catch (TimeoutException e) {
			e.printStackTrace();
			return;
		}
		
		int illuminance = 0;
		try {
			illuminance = al.getIlluminance();
		} catch (TimeoutException e) {
			e.printStackTrace();
			return;
		}
		
		System.out.println("Illuminance: " + illuminance + " Lux");
		
		ipcon.joinThread();
	}
}

import com.tinkerforge.BrickletAnalogOut;
import com.tinkerforge.IPConnection;

public class ExampleSimple {
	private static final String host = "localhost";
	private static final int port = 4223;
	private static final String UID = "ABC"; // Change to your UID
	
	// Note: To make the example code cleaner we do not handle exceptions. Exceptions you
	//       might normally want to catch are described in the commnents below
	public static void main(String args[]) throws Exception {
		// Create connection to brickd
		IPConnection ipcon = new IPConnection(host, port); // Can throw IOException
		BrickletAnalogOut ao = new BrickletAnalogOut(UID); // Create device object

		// Add device to IP connection
		ipcon.addDevice(ao); // Can throw IPConnection.TimeoutException
		// Don't use device before it is added to a connection

		// Set output voltage to 3.3V
		ao.setVoltage(3300);

		System.out.println("Press ctrl+c to exit");
		ipcon.joinThread();
	}
}

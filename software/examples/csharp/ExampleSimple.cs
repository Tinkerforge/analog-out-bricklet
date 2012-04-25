using Tinkerforge;

class Example
{
	private static string HOST = "localhost";
	private static int PORT = 4223;
	private static string UID = "ABC"; // Change to your UID

	static void Main() 
	{
		IPConnection ipcon = new IPConnection(HOST, PORT); // Create connection to brickd
		BrickletAnalogOut ao = new BrickletAnalogOut(UID); // Create device object
		ipcon.AddDevice(ao); // Add device to IP connection
		// Don't use device before it is added to a connection

		// Set output voltage to 3.3V
		ao.SetVoltage(3300);

		System.Console.WriteLine("Press ctrl+c to exit");
		ipcon.JoinThread();
	}
}

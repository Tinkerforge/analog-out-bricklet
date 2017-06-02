function octave_example_simple()
    more off;

    HOST = "localhost";
    PORT = 4223;
    UID = "XYZ"; % Change XYZ to the UID of your Analog Out Bricklet

    ipcon = javaObject("com.tinkerforge.IPConnection"); % Create IP connection
    ao = javaObject("com.tinkerforge.BrickletAnalogOut", UID, ipcon); % Create device object

    ipcon.connect(HOST, PORT); % Connect to brickd
    % Don't use device before ipcon is connected

    % Set output voltage to 3.3V
    ao.setVoltage(3300);

    input("Press key to exit\n", "s");
    ipcon.disconnect();
end

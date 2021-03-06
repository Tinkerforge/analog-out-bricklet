function matlab_example_simple()
    import com.tinkerforge.IPConnection;
    import com.tinkerforge.BrickletAnalogOut;

    HOST = 'localhost';
    PORT = 4223;
    UID = 'XYZ'; % Change XYZ to the UID of your Analog Out Bricklet

    ipcon = IPConnection(); % Create IP connection
    ao = handle(BrickletAnalogOut(UID, ipcon), 'CallbackProperties'); % Create device object

    ipcon.connect(HOST, PORT); % Connect to brickd
    % Don't use device before ipcon is connected

    % Set output voltage to 3.3V
    ao.setVoltage(3300);

    input('Press key to exit\n', 's');
    ipcon.disconnect();
end

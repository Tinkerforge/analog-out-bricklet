<?php

require_once('Tinkerforge/IPConnection.php');
require_once('Tinkerforge/BrickletAnalogOut.php');

use Tinkerforge\IPConnection;
use Tinkerforge\BrickletAnalogOut;

$host = 'localhost';
$port = 4223;
$uid = '7MJ'; // Change to your UID

$ipcon = new IPConnection(); // Create IP connection
$ao = new BrickletAnalogOut($uid, $ipcon); // Create device object

$ipcon->connect($host, $port); // Connect to brickd
// Don't use device before ipcon is connected

// Set output voltage to 3.3V
$ao->setVoltage(3300);

echo "Press key to exit\n";
fgetc(fopen('php://stdin', 'r'));

?>

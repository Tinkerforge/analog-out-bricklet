<?php

require_once('Tinkerforge/IPConnection.php');
require_once('Tinkerforge/BrickletAnalogOut.php');

use Tinkerforge\IPConnection;
use Tinkerforge\BrickletAnalogOut;

$host = 'localhost';
$port = 4223;
$uid = '7MJ'; // Change to your UID

$ipcon = new IPConnection($host, $port); // Create IP connection to brickd
$ao = new BrickletAnalogOut($uid); // Create device object

$ipcon->addDevice($ao); // Add device to IP connection
// Don't use device before it is added to a connection

// Set output voltage to 3.3V
$ao->setVoltage(3300);

echo "Press key to exit\n";
fgetc(fopen('php://stdin', 'r'));
$ipcon->destroy();

?>

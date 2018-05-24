#!/usr/bin/perl

use strict;
use Tinkerforge::IPConnection;
use Tinkerforge::BrickletAnalogOut;

use constant HOST => 'localhost';
use constant PORT => 4223;
use constant UID => 'XYZ'; # Change XYZ to the UID of your Analog Out Bricklet

my $ipcon = Tinkerforge::IPConnection->new(); # Create IP connection
my $ao = Tinkerforge::BrickletAnalogOut->new(&UID, $ipcon); # Create device object

$ipcon->connect(&HOST, &PORT); # Connect to brickd
# Don't use device before ipcon is connected

# Set output voltage to 3.3V
$ao->set_voltage(3300);

print "Press key to exit\n";
<STDIN>;
$ipcon->disconnect();

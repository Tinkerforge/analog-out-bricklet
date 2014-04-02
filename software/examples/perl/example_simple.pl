#!/usr/bin/perl  

use Tinkerforge::IPConnection;
use Tinkerforge::BrickletAnalogOut;

use constant HOST => 'localhost';
use constant PORT => 4223;
use constant UID => 'ikE'; # Change to your UID

my $ipcon = Tinkerforge::IPConnection->new(); # Create IP connection
my $ao = Tinkerforge::BrickletAnalogOut->new(&UID, $ipcon); # Create device object

$ipcon->connect(&HOST, &PORT); # Connect to brickd
# Don't use device before ipcon is connected

# Set output voltage to 3.3V
$ao->set_voltage(3300);

print "Press any key to exit...\n";
<STDIN>;
$ipcon->disconnect();


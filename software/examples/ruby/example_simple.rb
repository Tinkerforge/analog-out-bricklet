#!/usr/bin/env ruby
# -*- ruby encoding: utf-8 -*-

require 'tinkerforge/ip_connection'
require 'tinkerforge/bricklet_analog_out'

include Tinkerforge

HOST = 'localhost'
PORT = 4223
UID = '7MJ' # Change to your UID

ipcon = IPConnection.new HOST, PORT # Create IP connection to brickd
ao = BrickletAnalogOut.new UID # Create device object
ipcon.add_device ao # Add device to IP connection
# Don't use device before it is added to a connection

# Set output voltage to 3.3V
ao.set_voltage 3300

puts 'Press key to exit'
$stdin.gets
ipcon.destroy

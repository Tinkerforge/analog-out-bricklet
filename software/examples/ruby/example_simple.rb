#!/usr/bin/env ruby
# -*- ruby encoding: utf-8 -*-

require 'tinkerforge/ip_connection'
require 'tinkerforge/bricklet_analog_out'

include Tinkerforge

HOST = 'localhost'
PORT = 4223
UID = '7MJ' # Change to your UID

ipcon = IPConnection.new # Create IP connection
ao = BrickletAnalogOut.new UID, ipcon # Create device object

ipcon.connect HOST, PORT # Connect to brickd
# Don't use device before ipcon is connected

# Set output voltage to 3.3V
ao.set_voltage 3300

puts 'Press key to exit'
$stdin.gets
ipcon.disconnect

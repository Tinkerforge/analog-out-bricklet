#!/bin/sh
# Connects to localhost:4223 by default, use --host and --port to change this

uid=XYZ # Change XYZ to the UID of your Analog Out Bricklet

# Set output voltage to 3.3V
tinkerforge call analog-out-bricklet $uid set-voltage 3300

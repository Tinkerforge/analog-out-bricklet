#!/usr/bin/env python
# -*- coding: utf-8 -*-  

HOST = "localhost"
PORT = 4223
UID = "XYZ" # Change to your UID

from tinkerforge.ip_connection import IPConnection
from tinkerforge.bricklet_ambient_light import AnalogOut

if __name__ == "__main__":
    ipcon = IPConnection(HOST, PORT) # Create ip connection to brickd

    ao = AnalogOut(UID) # Create device object
    ipcon.add_device(ao) # Add device to ip connection
    # Don't use device before it is added to a connection

    # Set output voltage to 3.3V
    ao.set_voltage(3300)

    raw_input('Press key to exit\n') # Use input() in Python 3
    ipcon.destroy()

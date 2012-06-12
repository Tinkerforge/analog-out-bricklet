#include <stdio.h>

#include "ip_connection.h"
#include "bricklet_analog_out.h"

#define HOST "localhost"
#define PORT 4223
#define UID "XYZ" // Change to your UID

int main() {
	// Create IP connection to brickd
	IPConnection ipcon;
	if(ipcon_create(&ipcon, HOST, PORT) < 0) {
		fprintf(stderr, "Could not create connection\n");
		exit(1);
	}

	// Create device object
	AnalogOut ao;
	analog_out_create(&ao, UID); 

	// Add device to IP connection
	if(ipcon_add_device(&ipcon, &ao) < 0) {
		fprintf(stderr, "Could not connect to Bricklet\n");
		exit(1);
	}
	// Don't use device before it is added to a connection

	// Set a voltage of 3.3V
	analog_out_set_voltage(&ao, 3300);

	printf("Press key to exit\n");
	getchar();
	ipcon_destroy(&ipcon);
}

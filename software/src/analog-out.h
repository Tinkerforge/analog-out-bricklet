/* analog-out-bricklet
 * Copyright (C) 2010-2011 Olaf Lüke <olaf@tinkerforge.com>
 *
 * analog-out.h: Implementation of Analog Out Bricklet messages
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the
 * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
 * Boston, MA 02111-1307, USA.
 */

#ifndef ANALOG_OUT_H
#define ANALOG_OUT_H

#include <stdint.h>

#define ANALOG_MAX_VOLTAGE 5000

#define I2C_EEPROM_ADDRESS_HIGH 84
#define I2C_ADDRESS_HIGH 97 //0b1100001
#define I2C_ADDRESS_LOW 96 //0b1100000

#define TYPE_SET_VOLTAGE 1
#define TYPE_GET_VOLTAGE 2
#define TYPE_SET_MODE    3
#define TYPE_GET_MODE    4

typedef struct {
	uint8_t stack_id;
	uint8_t type;
	uint16_t length;
} __attribute__((__packed__)) StandardMessage;

typedef struct {
	uint8_t stack_id;
	uint8_t type;
	uint16_t length;
	uint16_t voltage;
} __attribute__((__packed__)) SetVoltage;

typedef struct {
	uint8_t stack_id;
	uint8_t type;
	uint16_t length;
} __attribute__((__packed__)) GetVoltage;

typedef struct {
	uint8_t stack_id;
	uint8_t type;
	uint16_t length;
	uint16_t voltage;
} __attribute__((__packed__)) GetVoltageReturn;

typedef struct {
	uint8_t stack_id;
	uint8_t type;
	uint16_t length;
	uint8_t mode;
} __attribute__((__packed__)) SetMode;

typedef struct {
	uint8_t stack_id;
	uint8_t type;
	uint16_t length;
} __attribute__((__packed__)) GetMode;

typedef struct {
	uint8_t stack_id;
	uint8_t type;
	uint16_t length;
	uint8_t mode;
} __attribute__((__packed__)) GetModeReturn;

void set_voltage(uint8_t com, SetVoltage *data);
void get_voltage(uint8_t com, GetVoltage *data);
void set_mode(uint8_t com, SetMode *data);
void get_mode(uint8_t com, GetMode *data);


void invocation(uint8_t com, uint8_t *data);
void constructor(void);
void destructor(void);
void tick(uint8_t tick_type);

void update(void);

#endif


// LCDDisplay.h

#ifndef _LCDDISPLAY_h
#define _LCDDISPLAY_h

#if defined(ARDUINO) && ARDUINO >= 100
	#include "Arduino.h"
#else
	#include "WProgram.h"
#endif


#include <LiquidCrystal_I2C.h>
//#include "ArduinoCircuit.h"
#include "TemperatureSensor.h"
#include "Positioner.h"


class LCDDisplay : public ArduinoCircuit {
public:
	LCDDisplay();
	LCDDisplay(Positioner* _positioner, TemperatureSensor _temperatureSensor);
	~LCDDisplay();
	void refresh();

private:
	uint8_t addr=0x27;
	Positioner *positioner;
	TemperatureSensor temperatureSensor;
	bool backlight;
	uint8_t pol = HIGH;
	uint8_t width = 20, height = 4;
  LiquidCrystal_I2C lcd=LiquidCrystal_I2C(0x27,20,4);
	String padInt(int _theInt, uint8_t _size);
	String padDouble(double _theDouble, uint8_t _size);
	String spaces = "                    "; // 20 so far
	String lowLimitWarnMessage = "Low warning", lowLimitMessage = "Low limit", highLimitWarnMessage = "High warning",
		highLimitMessage = "High limit", dewWarning = "Dew Point", noWarning = "No warnings";
	String tempLabel = "TEMP", humiLabel = "HUMI", dewLabel = "DEW",
		posLabel = "POS", chgLabel = "CHG", spdLabel = "SPD", warnLabel = "WARN";
	
	String currentWarning = noWarning;
};


#endif

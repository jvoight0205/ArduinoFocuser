#include <DHT_U.h>
#include <DHT.h>

// TemperatureSensor.h

#ifndef _TEMPERATURESENSOR_h
#define _TEMPERATURESENSOR_h
#if defined(ARDUINO) && ARDUINO >= 100
	#include "Arduino.h"
#else
	#include "WProgram.h"
#endif

#include "ArduinoCircuit.h"

#define DHTTYPE DHT11

class TemperatureSensor : public ArduinoCircuit {
public:
	TemperatureSensor();
	TemperatureSensor(uint8_t _pinA);
	~TemperatureSensor();
	double getTemperature();

private:
	double temperature;
	uint8_t pinA;
	DHT dht11 = DHT(8, DHTTYPE);

};

#endif

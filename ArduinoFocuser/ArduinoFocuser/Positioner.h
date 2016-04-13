// Positioner.h

#ifndef _POSITIONER_h
#define _POSITIONER_h

#if defined(ARDUINO) && ARDUINO >= 100
	#include "arduino.h"
#else
	#include "WProgram.h"
#endif
#include "ArduinoCircuit.h"

class Positioner: public ArduinoCircuit {
public:
	Positioner();
	~Positioner();
	void setPosition(long _position);
	long getPosition();
	void moveAbsolute(long _position);
	void moveRelative(long _change);
	virtual void increment(long _change);
	void setLimitThreshold(long _limitThreshold);
	void setLowLimit(long _lowLimit);
	void setHighLimit(long _highLimit);
	long getLowLimit();
	long getHighLimit();
	virtual void refresh() ;

protected:
	long position, change;
	boolean absolute = false;
	virtual void addChange(long _change);
	long lowLimit = -13500, // 5 turns of a 200*27 step motor
		highLimit = 13500; 
	long limitThreshold = 100;
};

#endif


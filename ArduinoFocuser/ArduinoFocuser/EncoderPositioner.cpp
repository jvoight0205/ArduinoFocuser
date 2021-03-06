// 
// 
// 

#include "EncoderPositioner.h"

EncoderPositioner::EncoderPositioner()
{
	pinA = 0;
	pinB = 0;
	
}

EncoderPositioner::EncoderPositioner(char _pinA, char _pinB, PushButton _resetButton, PushButton _turboButton)
{
	pinA = _pinA;
	pinB = _pinB;
	resetButton = _resetButton;
	turboButton = _turboButton;
	pinMode(pinA, INPUT);
	pinMode(pinB, INPUT);
  oldA = digitalRead(pinA);
  oldB = digitalRead(pinB);
}


EncoderPositioner::~EncoderPositioner()
{
}

void EncoderPositioner::increment(long _change)
{
	if (turboButton.isPushed()) {
		addChange(_change*turboMultiplier);
	} else {
		addChange(_change);
	}
}


void EncoderPositioner::refresh() {
  
	if (highLimit-limitThreshold < position) {
		highLimitButton.setLED(true);
	} else {
		highLimitButton.setLED(false);
	}
 
	if (lowLimit+limitThreshold > position) {
		lowLimitButton.setLED(true);
	} else {
		lowLimitButton.setLED(false);
	}
 
	resetButton.refresh();
	lowLimitButton.refresh();
	highLimitButton.refresh();
	turboButton.refresh();
  
	if (resetButton.isPushed()) {
		halt();
	}
 
	if (resetButton.isHeld()) {
		if (lowLimitButton.isPushed()) {
			//Serial.println("Resetting low limit.");
			setLowLimit(getPosition());
		}
		if (highLimitButton.isPushed()) {
			//Serial.println("Resetting high limit.");
			setHighLimit(getPosition());
		}
		if (lowLimitButton.isHeld()) {
			//Serial.println("Clearing low limit.");
			setLowLimit(-2147483647);
		}
		if (highLimitButton.isHeld()) {
			//Serial.println("Clearing high limit.");
			setHighLimit(2147483647);
		}
	}
}

void EncoderPositioner::interruptA()
{
	if ((long)(micros() - lastMicros) < debouncingTime * 1000) {
		return;
	}
	lastMicros = micros();
	int A = digitalRead(pinA);
	oldB = digitalRead(pinB);
	
	if (A == oldA) {
		return;
	}
	oldA = A;
	if (A == HIGH) {
		if (oldB == HIGH) {
			increment(-1); // CW
		} else {
			increment(1); // CCW
		}
	} else {
		if (oldB == LOW) {
			increment(-1);// CW
		} else {
			increment(1);// CCW
		}
	}
}

void EncoderPositioner::interruptB()
{
	if ((long)(micros() - lastMicros) < debouncingTime * 1000) {
		return;
	}
	lastMicros = micros();
	int B = digitalRead(pinB);
	oldA = digitalRead(pinA);
	
	if (B == oldB) {
		return;
	}
	oldB = B;
	if (B == HIGH) {
		if (oldA == HIGH) {
			increment(1);// CW
		} else {
			increment(-1);// CCW
		}
	} else {
		if (oldA == LOW) {
			increment(1);// CW
		} else {
			increment(-1);// CCW
		}
	}
}

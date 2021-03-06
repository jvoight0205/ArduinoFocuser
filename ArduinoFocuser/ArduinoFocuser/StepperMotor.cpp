// 
// 
// 

#include "StepperMotor.h"

StepperMotor::StepperMotor()
{
}

StepperMotor::StepperMotor(short _rstPin, short _stepPin, short _dirPin, short _stepSizePin, Positioner * _positioner)
{
	rstPin = _rstPin;
	stepPin = _stepPin;
	dirPin = _dirPin;
	stepSizePin = _stepSizePin;
	positioner = _positioner;
  stepper = AccelStepper(1, _stepPin, _dirPin);
  stepper.setMaxSpeed(800);
  stepper.setAcceleration(200);
  
	pinMode(rstPin, OUTPUT);
	digitalWrite(rstPin, HIGH);
	pinMode(stepSizePin, OUTPUT);
  pinMode(stepSizePin, LOW);
}

StepperMotor::~StepperMotor()
{
}

void StepperMotor::refresh()
{
	change = positioner->getChange();
  long currentPosition = stepper.currentPosition()+change;
	if (change != 0) {
		stepper.runToNewPosition(currentPosition);
	}
  positioner->setChange(0);
  positioner->setPosition(currentPosition);
}

bool StepperMotor::isMoving()
{
	return stepper.isRunning();
}

bool StepperMotor::disconnect()
{
	digitalWrite(rstPin, LOW);
	return true;
}

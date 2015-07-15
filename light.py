import RPi.GPIO as GPIO ## Import GPIO Library
import time ## Import 'time' library.  Allows us to use 'sleep'

GPIO.setmode(GPIO.BOARD) ## Use BOARD pin numbering
GPIO.setup(7, GPIO.OUT) ## Setup GPIO pin 7 to OUT
GPIO.setup(8, GPIO.OUT) ## Setup GPIO pin 8 to OUT
GPIO.setup(10, GPIO.OUT) ## Setup GPIO pin 10 to OUT
GPIO.setup(11, GPIO.OUT) ## Setup GPIO pin 11 to OUT
GPIO.setup(12, GPIO.OUT) ## Setup GPIO pin 12 to OUT


## Define function named Blink()
def Blink(numTimes, speed):
    for i in range(0,numTimes): ## Run loop numTimes
        print "Iteration " + str(i+1) ##Print current loop
        
        GPIO.output(7, True) ## Turn on GPIO pin 7
        time.sleep(speed) ## Wait
        GPIO.output(7, False) ## Switch off GPIO pin 7
        GPIO.output(8, True) ## Turn on GPIO pin 7
        time.sleep(speed) ## Wait
        GPIO.output(8, False) ## Switch off GPIO pin 7
        GPIO.output(10, True) ## Turn on GPIO pin 7
        time.sleep(speed) ## Wait
        GPIO.output(10, False) ## Switch off GPIO pin 7
        GPIO.output(11, True) ## Turn on GPIO pin 7
        time.sleep(speed) ## Wait
        GPIO.output(11, False) ## Switch off GPIO pin 7
        GPIO.output(12, True) ## Turn on GPIO pin 7
        time.sleep(speed) ## Wait
        GPIO.output(12, False) ## Switch off GPIO pin 7
        time.sleep(speed) ## Wait
    print "Done" ## When loop is complete, print "Done"
    GPIO.cleanup()

## Prompt user for input
iterations = 100 #raw_input("Enter the total number of times to blink: ")
speed = .5 #raw_input("Enter the length of each blink in seconds: ")

## Start Blink() function. Convert user input from strings to numeric data types and pass to Blink() as parameters
Blink(int(iterations),float(speed))
        

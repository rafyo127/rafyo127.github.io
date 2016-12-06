//adapted from http://wiringpi.com/examples/blink/
//and from https://projects.drogon.net/raspberry-pi/examples/
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <wiringPi.h>
int main (void)
{
        if (wiringPiSetup () == -1)
                exit (1) ;
        pinMode (0, OUTPUT) ;
        pinMode (1, PWM_OUTPUT) ;
        for (;;)
        {
               digitalWrite (0, LOW) ;
               pwmWrite (1, 1023) ;
                delay (500);
		break;
        }
        return 0 ;
}
//compile and run via:
//gcc -Wall -o traffic2B traffic2B.c -lwiringPi
//sudo ./traffic2B



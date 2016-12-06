#include <stdio.h>
#include <errno.h>
#include <string.h>

#include <wiringPi.h>
#include <softTone.h>

#define	PIN	3

int scale =1000;

int main (){

  wiringPiSetup () ;

  softToneCreate (PIN) ;

  for (;;){
      softToneWrite (PIN, scale) ;
      delay (500) ;
      return;
  }//for
}//main

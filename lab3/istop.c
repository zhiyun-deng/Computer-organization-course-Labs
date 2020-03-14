#include <stdio.h>

#include "./drivers/inc/LEDs.h"
#include "./drivers/inc/slider_switches.h"
#include "./drivers/inc/HEX_displays.h"
#include "./drivers/inc/pushbuttons.h"
#include "./drivers/inc/HPS_TIM.h"
#include "./drivers/inc/address_map_arm.h"
#include "./drivers/inc/int_setup.h"
#include "./drivers/inc/ISRs.h"

int main() {

	//Enable interrupt for the hardware (code given in the handout)
	int_setup(2, (int []) {73, 199}); 
	//Enable interrupts from pushbutton
	enable_PB_INT_ASM(PB0 | PB1 | PB2);

	//we need only one timer in this question
	HPS_TIM_config_t hps_tim;
	hps_tim.tim = TIM0;
	hps_tim.timeout = 1000000;
	hps_tim.LD_en = 1;
	hps_tim.INT_en = 0;
	hps_tim.enable = 1;
	HPS_TIM_config_ASM(&hps_tim); 

    //initialize the ms, sec and min 
	int current_ms = 0, current_sec = 0, current_min = 0;
	//work as a flag to record the status of stopwatch
	int isRunning = 0;

	//Program for receiving interrupts from the push buttons
	while(1) {
		// if TIM0 detects an interupt
		if (hps_tim0_int_flag) { 
            //proceed to update our counters for the time tracking
			hps_tim0_int_flag = 0; 

			if (isRunning) {
				//we count in increments of 10 milliseconds
				current_ms += 10;
				//add up to larger unit if smaller unit is full

				if (current_ms >= 1000) {
					current_ms = 0;
					current_sec++;
					if (current_sec >= 60) {
						current_sec = 0;
						current_min++;
						if (current_min >= 60) {
							current_min = 0;
						}
					}
				}

				//Write the time on the HEX displays
				HEX_write_ASM(HEX0, ((current_ms % 100) / 10));
				HEX_write_ASM(HEX1, (current_ms / 100));
				HEX_write_ASM(HEX2, (current_sec % 10));
				HEX_write_ASM(HEX3, (current_sec / 10));
				HEX_write_ASM(HEX4, (current_min % 10));
				HEX_write_ASM(HEX5, (current_min / 10));
			}
		}

        //if pushbutton detects an interrupt 
		if (pb_int_flag != 0) { 
			//if the first button pressed AND if the timer has not started
			if ((pb_int_flag & 0x1) && (!isRunning)) { 
	            //start the timer
				isRunning = 1;
			} 

			//if the second button pressed AND timer is running
			if ((pb_int_flag & 0x2) && (isRunning)) { 
				//stop the timer
				isRunning = 0;
			} 
			
			//if the third button pressed 
			if (pb_int_flag & 0x4) { 
			   //reset everything
				isRunning = 0;
				current_ms = 0;
				current_sec = 0;
				current_min = 0;
				//update the display
				HEX_write_ASM(HEX0 | HEX1 | HEX2 | HEX3 | HEX4 | HEX5, 0);
			}

			pb_int_flag = 0;
		}
	}
}

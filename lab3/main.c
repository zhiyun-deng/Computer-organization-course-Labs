#include <stdio.h>
#include "./drivers/inc/LEDs.h"
#include "./drivers/inc/slider_switches.h"
#include "./drivers/inc/pushbuttons.h"
#include "./drivers/inc/HEX_displays.h"
#include "./drivers/inc/HPS_TIM.h"

int main(){
/*
	HEX_clear_ASM(HEX0|HEX1|HEX2|HEX3|HEX4|HEX5);
	enable_PB_INT_ASM(0xFFFFFFFF);
	while(1){
	if(read_slider_switches_ASM() & 0x200){
			HEX_clear_ASM(HEX0|HEX1|HEX2|HEX3|HEX4|HEX5); 
			
		}
	HEX_flood_ASM(HEX4|HEX5)
	enable_PB_INT_ASM(0xFFFFFFFF);
	write_LEDs_ASM(read_slider_switches_ASM());
	char x = read_slider_switches_ASM()& 0xF;
	
	int y = (0xF & (read_PB_data_ASM()));
	HEX_write_ASM(y,x);
	
	
	}*/
HPS_TIM_config_t hps_tim;
	hps_tim.tim = TIM0;
	hps_tim.timeout = 10000; //1second??????????????
	hps_tim.LD_en = 1;
	hps_tim.INT_en = 1;
	hps_tim.enable = 1;

	HPS_TIM_config_ASM(&hps_tim); 


	
	HPS_TIM_config_t hps_tim_pb;
	hps_tim_pb.tim = TIM1;
	hps_tim_pb.timeout = 5000;//5 ms
	hps_tim_pb.LD_en = 1;
	hps_tim_pb.INT_en = 1;
	hps_tim_pb.enable = 1;
	HPS_TIM_config_ASM(&hps_tim_pb); 

	int sec= 0;
	int min=0;
	int ms=0;
	int isRunning=1;
	while(1){
	//printf("%d",sec);
	if(HPS_TIM_read_INT_ASM(TIM0)&&isRunning){
	HPS_TIM_clear_INT_ASM(TIM0);
	ms += 10;
}
	if (ms >= 1000) {
				ms -= 1000;
				sec++;
				
				if (sec >= 60) {
					sec -= 60;
					min++;
					if (min >= 60) {
						min = 0;
					}
				}
			}
	HEX_clear_ASM(HEX0|HEX1|HEX2|HEX3|HEX4|HEX5);
	HEX_write_ASM(HEX0,(ms % 100) / 10);
	HEX_write_ASM(HEX1, ms / 100 );
	HEX_write_ASM(HEX2, (sec % 10) );
	HEX_write_ASM(HEX3, (sec / 10) );
	HEX_write_ASM(HEX4, (min % 10) );
	HEX_write_ASM(HEX5, (min / 10) );

	if(HPS_TIM_read_INT_ASM(TIM1)){
			HPS_TIM_clear_INT_ASM(TIM1);
			int pb = read_PB_data_ASM()&0xF;
			if ((pb & 1) && (!isRunning)) { //Start timer
				isRunning = 1;
			} else if ((pb & 2) && (isRunning)) { //Stop timer
				isRunning = 0;
			} else if (pb & 4) { //Reset timer
				ms = 0;
				sec = 0;
				min = 0;
				isRunning = 0; //Stop timer
				
				//Set every number to 0
				HEX_clear_ASM(HEX0 | HEX1 | HEX2 | HEX3 | HEX4 | HEX5);
				HEX_write_ASM(HEX0 | HEX1 | HEX2 | HEX3 | HEX4 | HEX5, 0);
			}
}
}
	return 0;
}



#include <stdio.h>
#include "./drivers/inc/LEDs.h"
#include "./drivers/inc/slider_switches.h"
#include "./drivers/inc/pushbuttons.h"
#include "./drivers/inc/HEX_displays.h"
int main(){
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
	/*enable_PB_INT_ASM(0x1E);
	HEX_flood_ASM(HEX4);
			HEX_flood_ASM(HEX5);
			char hex_val = (0xF & read_slider_switches_ASM());
			int pushbutton = (0xF & read_PB_data_ASM());
			hex_val = hex_val + 48; //for ascii usage
			HEX_write_ASM(pushbutton, hex_val);//write the value on display*/
	
	}
	return 0;
}



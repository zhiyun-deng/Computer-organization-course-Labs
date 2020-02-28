	.text
	.equ   HPS_TIM0_BASE, 0xFFC08000
	.equ   HPS_TIM1_BASE, 0xFFC09000
	.equ   HPS_TIM2_BASE, 0xFFD00000
	.equ   HPS_TIM3_BASE, 0xFFD01000
	
	.global HPS_TIM_config_ASM
	.global HPS_TIM_clear_INT_ASM
	.global HPS_TIM_read_INT_ASM

HPS_TIM_config_ASM:
			PUSH {R1-R7}
			LDR R3, [R0]				//point to tim passed
			AND R3, R3, #0xF			//isolate string
			MOV R1, #0					//Initialize counter

			
loop_config:
			CMP R1, #4					//4 bases
			BGE done_config	//done
			AND R5, R3, #1
			CMP R5, #0
			ASR R3, R3, #1				//Shift input by 1
			ADDEQ R1, R1, #1			//Increment counter if 1
			BEQ loop_config				//Branch back to loop too

			//Load timer into R2, depending on selection (R1)
			CMP R1, #0
			LDREQ R2, =TIM_0
			CMP R1, #1
			LDREQ R2, =TIM_1
			CMP R1, #2
			LDREQ R2, =TIM_2
			CMP R1, #3
			LDREQ R2, =TIM_3
		

			//configuration section
			LDR R4, [R0, #0x8]			//Disable timer before doing config
			AND R4, R4, #0x6			//Disable E bit, keep other the same
			STR	R4, [R2, #0x8] 		
	
			LDR R4, [R0, #0x4]			//Load timeout
			STR R4, [R2] 				//Config Timeout

			LDR R4, [R0, #0x8]			//Load "LD_en"
			LSL R4, R4, #1				//Shift by one (M bit)

			LDR R5, [R0, #0xC]			//Load "INT_en"
			LSL R5, R5, #2				//Shift twice (I bit)

			LDR R6, [R0, #0x10]			//Load "enable"

			ORR R7, R4, R5
			ORR R7, R7, R6				//Get string of M, I and E bits

			STR R7, [R2, #0x8]			//Store into control

			ADD R1, R1, #1				//Increment counter
			B loop_config


done_config:				//finished
			POP {R1-R7}					//restore data
			BX LR

			
HPS_TIM_read_ASM_INT:
			PUSH {R1-R4}
			AND R0, R0, #0xF			//Get rid of random numbers ahead of our one-hot string
			MOV R1, #0					//Initialize counter

			
loop_read:
			CMP R1, #4					//if counter >= 4
			BGE done_read	//done
			AND R4, R0, #1
			CMP R4, #0
			ASR R0, R0, #1				//Shift input by 1
			ADDEQ R1, R1, #1			//Increment counter if 0
			BEQ loop_read	//Branch back to loop if 0

			//Load timer into R2 depending on which one it is
			CMP R1, #0
			LDREQ R2, =TIM_0
			CMP R1, #1
			LDREQ R2, =TIM_1
			CMP R1, #2
			LDREQ R2, =TIM_2
			CMP R1, #3
			LDREQ R2, =TIM_3

			LDR R3, [R2, #0x10]			//Load S-bit
			AND R0, R3, #1
			B done_read 	//Only supports single timer, so done

done_read:
			POP {R1-R4}
			BX LR

HPS_TIM_clear_INT_ASM:
			PUSH {R1-R4}
			AND R0, R0, #0xF			//Get rid of random numbers ahead of our one-hot string
			MOV R1, #0					//Initialize counter
			
loop_clear:
			CMP R1, #4					//if counter >= 4
			BGE done_clear	//goto done
			AND R4, R0, #1
			CMP R4, #0
			ASR R0, R0, #1				//Shift input by 1
			ADDEQ R1, R1, #1			//Increment counter if 0
			BEQ loop_clear	//Branch back to loop if 0

			//Load timer into R2 depending on which timer was selected
			CMP R1, #0
			LDREQ R2, =TIM_0
			CMP R1, #1
			LDREQ R2, =TIM_1
			CMP R1, #2
			LDREQ R2, =TIM_2
			CMP R1, #3
			LDREQ R2, =TIM_3

			LDR R4, [R2, #0xC]			//Reading F bit clears the entire timer 

			ADD R1, R1, #1				//Increment counter
			B loop_clear

done_clear:
			POP {R1-R4}
			BX LR			

			.end


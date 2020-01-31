			.text 
			.global _start 

_start:
			LDR R0, LENGTH 		//R0 stores the signal length (the number of element in list)
			LDR R5, LENGTH		//stores signal length as used to calculated shift values
			
			LDR R2, =SIGNAL		//points to first number
			LDR R6, =SIGNAL		//points to first number in memory for changing it after calculating average
			MOV R3, #0			//sum
			MOV R4, #0			//shift value

LOOP1:		SUBS R0, R0, #1 	//decrement the loop counter
			BMI LOOP2 			//end loop if counter has reached zero
			LDR R1, [R2]		//acessing element pointed by R2
			ADD R3, R3, R1		//adding element to sum
			ADD R2, R2, #4		//incrementing R2
			B LOOP1 			//branch back to the loop

LOOP2:		LSRS R5, R5, #1
			BEQ DONE1
			ADD R4, R4, #1
			B LOOP2

DONE1:		LSR R3, R3, R4		//R3 now contains average
			LDR R5, LENGTH
LOOP3:		SUBS R5, R5, #1
			BMI END
			LDR R0, [R6]
			SUB R0, R0, R3
			STR R0, [R6], #4
			B LOOP3
			

END:		B END 				//infinite loop

LENGTH:		.word 8 			//memory assigned for result location
SIGNAL:		.word 1, 5, 3, 11, 676, 87, 74,63 	//the list data



			.text 
			.global _start 

_start:
			//R0 and R1 are the parameters passed by register
			LDR R4, =RESULT 	//R4 points to the result location
			LDR R0, [R4, #4] 	//R0 holds the number of elements in a list
			ADD R1, R4, #8 		//R1 points to the first number
			STR LR, [SP, #-4]!
			BL FINDMAX
			STR R0, [R4] 		//store the result to the memory location
			LDR LR, [SP], #4

END:		B END 				//infinite loop
			//R0 = return value, R1= current number, R2=Loop counter, R3=pointer to current number
FINDMAX:	PUSH {R1-R3}
			MOV R2, R0			//R2 holds the number of element in list
			MOV R3, R1			//R3 points to current number
			LDR R0, [R3] 		//R0 holds the first number in the list
LOOP:		SUBS R2, R2, #1 	//decrement the loop counter
			BEQ RETURN 			//end loop if counter has reached zero
			ADD R3, R3, #4 		//R3 points to next number in the list
			LDR R1, [R3] 		//R1 holds the next number in the list
			CMP R0, R1 			//check if it is greater than the maximum
			BGE LOOP 			//if no, branch back to the loop
			MOV R0, R1 			//if yes, update the current max
			B LOOP 				//branch back to the loop
RETURN:		POP {R1-R3}
			BX LR

RESULT:		.word 0 			//memory assigned for result location
N:			.word 7 			//number of entries in the list
NUMBERS:	.word 4, 5, 3, 6 	//the list data
			.word 1, 17, 2 


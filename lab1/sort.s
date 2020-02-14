			.text 
			.global _start 

_start:
			LDR R0, LENGTH 		//R0 stores the signal length (the number of element in list)
			LDR R1, =SIGNAL		//R1 points to a number in the array
			MOV R2, #0			//R2 is boolean variable for sorted
			

WHILELOOP:	CMP R2, #1   		//while not sorted reinitialize loop
			BEQ END
			MOV R2, #1			//temp: sorted = true
			LDR R1, =SIGNAL
			ADD R1, R1, #4		//change pointer to second element
			MOV R3, #2			//R3 is artificial index of array (i = 2 at the start)

FORLOOP:	CMP R3, R0
			BGT WHILELOOP
			LDR R4, [R1]		//cmp w prv index
			LDR R5, [R1, #-4]
			CMP R4, R5			
			BGE INCREMENT		//if r4 < r5 skip swap
			STR R4, [R1, #-4]	//otherwise swap
			STR R5, [R1]
			MOV R2, #0

INCREMENT:	ADD R1, R1, #4		//increments pointer
			ADD R3, R3, #1		//increments index
			B FORLOOP


END:		B END 				//infinite loop

LENGTH:		.word 8 			//memory assigned for result location
SIGNAL:		.word 1, 5, 3, 11, 676, 87, 74,63 	//the list data



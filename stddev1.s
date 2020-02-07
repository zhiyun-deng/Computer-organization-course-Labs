			.text 
			.global _start 

_start:
			LDR R4, =MAX			//R4 stores the maximum number encountered
			LDR R5, =MIN			//R5 stores the minimum number encountered
			LDR R6, =RESULT
			LDR R2, [R4, #4] 		//stores the number of items in the list
			ADD R3, R4, #8 			//points to start of number list
			LDR R4, [R3] 			//stores first number
			LDR R5, [R3]			//stores the first number


LOOP:		SUBS R2, R2, #1			//COUNTER
			BEQ DONE 
			ADD R3, R3, #4			//POINTER INCR
			LDR R1, [R3]			//NEXT NUM
			CMP R5, R1				//UPDATE FLAGS ON RN-OP
			BGE MN					//if MIN>=R1, store R1 to MIN
			CMP R4, R1				//if MAX<R1, store R1 to MAX
			BLT MX
			B LOOP

MN:			MOV R5, R1				//store new min
			B LOOP 

MX:			MOV R4, R1				//store new max
			B LOOP

DONE:		SUBS R6, R4, R5			//max-min
			LSR R6, R6, #2			//div by 4

END:		B END 

MAX:		.word 0 
N:			.word 7 
NUMBERS:	.word 100, 45, 40, 67, 97,87,55
MIN:		.word 99999
RESULT:		.word 0

	

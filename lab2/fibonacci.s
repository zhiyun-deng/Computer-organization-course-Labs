			.text 
			.global _start 

_start:
			MOV R0, #10
			STR LR, [SP, #-4]!

			BL FIBONACCI
			LDR LR, [SP], #4

END:		B END 				//infinite loop
			//R0 is the parameter

FIBONACCI: 	PUSH {R1-R3}
			MOV R3, R0		//saves the parameter
			STR LR, [SP, #-4]!
			CMP R0, #2
			BLT ONE
			SUB R0, R0, #1

			BL FIBONACCI
			MOV R1, R0
			SUB R0, R3, #2

			BL FIBONACCI
			MOV R2, R0
			ADD R0, R1, R2
			LDR LR, [SP], #4
			POP {R1-R3}
			BX LR

ONE:		MOV R0, #1
			LDR LR, [SP], #4
			POP {R1-R3}
			BX LR

RESULT:		.word 0 			//memory assigned for result location
N:			.word 7 			//number of entries in the list
NUMBERS:	.word 4, 5, 3, 6 	//the list data
			.word 1, 17, 2 


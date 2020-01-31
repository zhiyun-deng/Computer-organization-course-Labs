			.text 
			.global _start 

_start:
			LDR R0, LENGTH 		//R0 stores the signal length (the number of element in list)
			LDR R1, =SIGNAL		//R1 points to a number in the array
			MOV R2, #0			//R2 is boolean variable for sorted
			

WHILELOOP:	CMP R2, #1   		//while not sorted
			BEQ END
			MOV R2, #1			//sorted = true
			LDR R1, =SIGNAL
			ADD R1, R1, #4		//change pointer to second element
			MOV R3, #2			//R3 is index of array (i = 2 at the start)
FORLOOP:	CMP R3, R0
			BGT WHILELOOP
			LDR R4, [R1]
			LDR R5, [R1, #-4]
			CMP R4, R5
			BGE INCREMENT
			STR R4, [R1, #-4]
			STR R5, [R1]
			MOV R2, #0
INCREMENT:	ADD R1, R1, #4		//increments pointer
			ADD R3, R3, #1		//increments index
			B FORLOOP


END:		B END 				//infinite loop

LENGTH:		.word 100 			//memory assigned for result location
SIGNAL:		.word 3467, 6680, 9258, 6838, 8146, 7080, 6743, 7989, 7783, 6100, 3152, 5977, 9484, 8292, 9748, 5559, 6238, 3050, 1634, 384, 4431, 2305, 5586, 3020, 9395, 7256, 8106, 190, 8034, 2299, 8000, 972, 9247, 9261, 645, 6941, 2254, 7551, 9033, 7401, 8247, 4070, 3001, 1025, 4628, 7271, 1912, 4632, 3708, 5423, 2205, 7977, 9709, 3131, 8664, 633, 6473, 5838, 7901, 4639, 8371, 2356, 9605, 1168, 4178, 6231, 9983, 7834, 3395, 1125, 7581, 2193, 9459, 1200, 7677, 2724, 6086, 8329, 9295, 2779, 7391, 9553, 2863, 1881, 2746, 2563, 8605, 8166, 7568, 3284, 8849, 9460, 2892, 7486, 4658, 1463, 9913, 2855, 8789, 176 	//the list data



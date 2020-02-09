			.text 
			.global _start 

_start:
			MOV R0, #10		//push 10
			//push {R0}
			ADD SP, SP, #-4
			STR R0, [SP]
			
			//push 9
			MOV R0, #9
			ADD SP, SP, #-4
			STR R0, [SP]
			
			//push 8
			MOV R0, #8
			ADD SP, SP, #-4
			STR R0, [SP]
			
			//POP{R0-R2}
			LDMIA SP!, {R0-R2}

END:		B END 				//infinite loop





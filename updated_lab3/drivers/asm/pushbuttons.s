	.text
	.equ SW_DATA, 0xFF200050
	.equ SW_int, 0xFF200058
	.equ SW_edge, 0xFF20005C
	.global read_PB_data_ASM

read_PB_data_ASM:		//read the current pressed push_button
	PUSH {R1}
	LDR R1, =SW_DATA
	LDR R0, [R1]
	POP {R1}
	BX LR


	.global PB_data_is_pressed_ASM		//
PB_data_is_pressed_ASM:
	PUSH {R1,R2}
	LDR R1, =SW_DATA
	LDR R2, [R1]
	AND R2, R2, R0
	MOVEQ R0, #0
	MOVNE R0, #1
	POP {R1,R2}
	BX LR

	.global read_PB_edgecap_ASM
read_PB_edgecap_ASM:
	PUSH {R1}
	LDR R1, =SW_edge
	LDR R0, [R1]
	POP {R1}
	BX LR


	.global PB_edgecap_is_pressed_ASM
PB_edgecap_is_pressed_ASM:
	PUSH {R1,R2}
	LDR R1, =SW_edge
	LDR R2, [R1]
	ANDS R2, R2, R0
	MOVEQ R0, #0
	MOVNE R0, #1
	POP {R1,R2}
	BX LR

	.global PB_clear_edgecp_ASM
PB_clear_edgecp_ASM:
	PUSH {R1}
	MOV R0, #0
	LDR R1, =SW_edge
	STR R0, [R1]
	POP {R1}
	BX LR

	.global enable_PB_INT_ASM
enable_PB_INT_ASM:
	PUSH {R1,R2}
	LDR R1, =SW_int
	AND R2, R0, #0xF
	STR R2, [R1]
	POP {R1,R2}
	BX LR

	.global disable_PB_INT_ASM
disable_PB_INT_ASM:
	PUSH {R1,R2}
	LDR R1, =SW_int
	LDR R2, [R1]
	BIC R2, R2, #0xF
	STR R2, [R1]
	POP {R1,R2}	
	BX LR


	
	.end

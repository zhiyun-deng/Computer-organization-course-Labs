	.text
	.equ SW_BASE, 0xFF200000
	.global read_LEDs_ASM

read_LEDs_ASM:
	PUSH {R1}
	LDR R1, =SW_BASE
	LDR R0, [R1]
	POP {R1}
	BX LR


	.global write_LEDs_ASM
write_LEDs_ASM:
	PUSH {R1}
	LDR R1, =SW_BASE
	STR R0, [R1]
	POP {R1}
	BX LR
	
	.end

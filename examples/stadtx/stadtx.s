// Code generated by command: go run asm.go -out stadtx.s -stubs stub.go. DO NOT EDIT.

#include "textflag.h"

// func Hash(state *State, key []byte) uint64
TEXT ·Hash(SB), 0, $0-40
	MOVQ	state(FP), AX
	MOVQ	key_base+8(FP), CX
	MOVQ	key_len+16(FP), DX
	MOVQ	(AX), BX
	MOVQ	8(AX), BP
	MOVQ	DX, SI
	ADDQ	$0x00000001, SI
	MOVQ	$0xb89b0f8e1655514f, DI
	IMULQ	DI, SI
	XORQ	SI, BX
	MOVQ	DX, SI
	ADDQ	$0x00000002, SI
	MOVQ	$0x8c6f736011bd5127, DI
	IMULQ	DI, SI
	XORQ	SI, BP
	CMPQ	DX, $0x00000020
	JGE	coreLong
	MOVQ	DX, SI
	SHRQ	$0x03, SI
	CMPQ	SI, $0x00000000
	JE	shortCore0
	CMPQ	SI, $0x00000001
	JE	shortCore1
	CMPQ	SI, $0x00000002
	JE	shortCore2
	CMPQ	SI, $0x00000003
	JE	shortCore3
shortCore3:
	MOVQ	(CX), SI
	MOVQ	$0x9c1b8e1e9628323f, DI
	IMULQ	DI, SI
	ADDQ	SI, BX
	RORQ	$0x11, BX
	XORQ	BP, BX
	RORQ	$0x35, BP
	ADDQ	BX, BP
	ADDQ	$0x00000008, CX
	SUBQ	$0x00000008, DX
shortCore2:
	MOVQ	(CX), SI
	MOVQ	$0x9c1b8e1e9628323f, DI
	IMULQ	DI, SI
	ADDQ	SI, BX
	RORQ	$0x11, BX
	XORQ	BP, BX
	RORQ	$0x35, BP
	ADDQ	BX, BP
	ADDQ	$0x00000008, CX
	SUBQ	$0x00000008, DX
shortCore1:
	MOVQ	(CX), SI
	MOVQ	$0x9c1b8e1e9628323f, DI
	IMULQ	DI, SI
	ADDQ	SI, BX
	RORQ	$0x11, BX
	XORQ	BP, BX
	RORQ	$0x35, BP
	ADDQ	BX, BP
	ADDQ	$0x00000008, CX
	SUBQ	$0x00000008, DX
shortCore0:
	CMPQ	DX, $0x00000000
	JE	shortTail0
	CMPQ	DX, $0x00000001
	JE	shortTail1
	CMPQ	DX, $0x00000002
	JE	shortTail2
	CMPQ	DX, $0x00000003
	JE	shortTail3
	CMPQ	DX, $0x00000004
	JE	shortTail4
	CMPQ	DX, $0x00000005
	JE	shortTail5
	CMPQ	DX, $0x00000006
	JE	shortTail6
	CMPQ	DX, $0x00000007
	JE	shortTail7
shortTail7:
	MOVBQZX	6(CX), SI
	SHLQ	$0x20, SI
	ADDQ	SI, BX
shortTail6:
	MOVBQZX	5(CX), SI
	SHLQ	$0x30, SI
	ADDQ	SI, BP
shortTail5:
	MOVBQZX	4(CX), SI
	SHLQ	$0x10, SI
	ADDQ	SI, BX
shortTail4:
	MOVLQZX	(CX), SI
	ADDQ	SI, BP
	JMP	shortAfter
shortTail3:
	MOVBQZX	2(CX), SI
	SHLQ	$0x30, SI
	ADDQ	SI, BX
shortTail2:
	MOVWQZX	(CX), SI
	ADDQ	SI, BP
	JMP	shortAfter
shortTail1:
	MOVBQZX	(CX), SI
	ADDQ	SI, BX
shortTail0:
	RORQ	$0x20, BP
	XORQ	$0x000000ff, BP
shortAfter:
	XORQ	BX, BP
	RORQ	$0x21, BX
	ADDQ	BP, BX
	ROLQ	$0x11, BP
	XORQ	BX, BP
	ROLQ	$0x2b, BX
	ADDQ	BP, BX
	ROLQ	$0x1f, BP
	SUBQ	BX, BP
	ROLQ	$0x0d, BX
	XORQ	BP, BX
	SUBQ	BX, BP
	ROLQ	$0x29, BX
	ADDQ	BP, BX
	ROLQ	$0x25, BP
	XORQ	BX, BP
	RORQ	$0x27, BX
	ADDQ	BP, BX
	RORQ	$0x0f, BP
	ADDQ	BX, BP
	ROLQ	$0x0f, BX
	XORQ	BP, BX
	RORQ	$0x05, BP
	XORQ	BP, BX
	MOVQ	BX, ret+32(FP)
	RET
coreLong:
	MOVQ	16(AX), DI
	MOVQ	24(AX), AX
	MOVQ	DX, SI
	ADDQ	$0x00000003, SI
	MOVQ	$0x8f29bd94edce7b39, R8
	IMULQ	R8, SI
	XORQ	SI, DI
	MOVQ	DX, SI
	ADDQ	$0x00000004, SI
	MOVQ	$0x9c1b8e1e9628323f, R8
	IMULQ	R8, SI
	XORQ	SI, AX
block:
	MOVQ	(CX), SI
	MOVQ	$0x00000000802910e3, R8
	IMULQ	R8, SI
	ADDQ	SI, BX
	ROLQ	$0x39, BX
	XORQ	AX, BX
	MOVQ	8(CX), SI
	MOVQ	$0x00000000819b13af, R8
	IMULQ	R8, SI
	ADDQ	SI, BP
	ROLQ	$0x3f, BP
	XORQ	DI, BP
	MOVQ	16(CX), SI
	MOVQ	$0x0000000091cb27e5, R8
	IMULQ	R8, SI
	ADDQ	SI, DI
	RORQ	$0x2f, DI
	ADDQ	BX, DI
	MOVQ	24(CX), SI
	MOVQ	$0x00000000c1a269c1, R8
	IMULQ	R8, SI
	ADDQ	SI, AX
	RORQ	$0x0b, AX
	SUBQ	BP, AX
	ADDQ	$0x00000020, CX
	SUBQ	$0x00000020, DX
	CMPQ	DX, $0x00000020
	JGE	block
	MOVQ	DX, R8
	MOVQ	DX, SI
	SHRQ	$0x03, SI
	CMPQ	SI, $0x00000000
	JE	longCore0
	CMPQ	SI, $0x00000001
	JE	longCore1
	CMPQ	SI, $0x00000002
	JE	longCore2
	CMPQ	SI, $0x00000003
	JE	longCore3
longCore3:
	MOVQ	(CX), SI
	MOVQ	$0x00000000802910e3, R9
	IMULQ	R9, SI
	ADDQ	SI, BX
	ROLQ	$0x39, BX
	XORQ	AX, BX
	ADDQ	$0x00000008, CX
	SUBQ	$0x00000008, DX
longCore2:
	MOVQ	(CX), SI
	MOVQ	$0x00000000819b13af, R9
	IMULQ	R9, SI
	ADDQ	SI, BP
	ROLQ	$0x3f, BP
	XORQ	DI, BP
	ADDQ	$0x00000008, CX
	SUBQ	$0x00000008, DX
longCore1:
	MOVQ	(CX), SI
	MOVQ	$0x0000000091cb27e5, R9
	IMULQ	R9, SI
	ADDQ	SI, DI
	RORQ	$0x2f, DI
	ADDQ	BX, DI
	ADDQ	$0x00000008, CX
	SUBQ	$0x00000008, DX
longCore0:
	RORQ	$0x0b, AX
	SUBQ	BP, AX
	ADDQ	$0x00000001, R8
	MOVQ	$0x9c1b8e1e9628323f, SI
	IMULQ	SI, R8
	XORQ	R8, BX
	CMPQ	DX, $0x00000000
	JE	longTail0
	CMPQ	DX, $0x00000001
	JE	longTail1
	CMPQ	DX, $0x00000002
	JE	longTail2
	CMPQ	DX, $0x00000003
	JE	longTail3
	CMPQ	DX, $0x00000004
	JE	longTail4
	CMPQ	DX, $0x00000005
	JE	longTail5
	CMPQ	DX, $0x00000006
	JE	longTail6
	CMPQ	DX, $0x00000007
	JE	longTail7
longTail7:
	MOVBQZX	6(CX), SI
	ADDQ	SI, BP
longTail6:
	MOVWQZX	4(CX), SI
	ADDQ	SI, DI
	MOVLQZX	(CX), SI
	ADDQ	SI, AX
	JMP	longAfter
longTail5:
	MOVBQZX	4(CX), SI
	ADDQ	SI, BP
longTail4:
	MOVLQZX	(CX), SI
	ADDQ	SI, DI
	JMP	longAfter
longTail3:
	MOVBQZX	2(CX), SI
	ADDQ	SI, AX
longTail2:
	MOVWQZX	(CX), SI
	ADDQ	SI, BP
	JMP	longAfter
longTail1:
	MOVBQZX	(CX), SI
	ADDQ	SI, DI
longTail0:
	ROLQ	$0x20, AX
	XORQ	$0x000000ff, AX
longAfter:
	SUBQ	DI, BP
	RORQ	$0x13, BX
	SUBQ	BX, BP
	RORQ	$0x35, BP
	XORQ	BP, AX
	SUBQ	AX, BX
	ROLQ	$0x2b, AX
	ADDQ	AX, BX
	RORQ	$0x03, BX
	SUBQ	BX, AX
	RORQ	$0x2b, DI
	SUBQ	AX, DI
	ROLQ	$0x37, DI
	XORQ	BX, DI
	SUBQ	DI, BP
	RORQ	$0x07, AX
	SUBQ	DI, AX
	RORQ	$0x1f, DI
	ADDQ	DI, AX
	SUBQ	BP, DI
	RORQ	$0x27, AX
	XORQ	AX, DI
	RORQ	$0x11, AX
	XORQ	DI, AX
	ADDQ	AX, BP
	RORQ	$0x09, BP
	XORQ	BP, DI
	ROLQ	$0x18, DI
	XORQ	DI, AX
	RORQ	$0x3b, AX
	RORQ	$0x01, BX
	SUBQ	BP, BX
	XORQ	BP, BX
	XORQ	AX, DI
	XORQ	DI, BX
	MOVQ	BX, ret+32(FP)
	RET

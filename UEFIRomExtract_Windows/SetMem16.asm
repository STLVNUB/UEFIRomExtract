﻿; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.30319.01 

include listing.inc

INCLUDELIB OLDNAMES

PUBLIC	InternalMemSetMem16
; Function compile flags: /Ogtpy
;	COMDAT InternalMemSetMem16
_TEXT	SEGMENT
Buffer$ = 8
Length$ = 16
Value$ = 24
InternalMemSetMem16 PROC				; COMDAT
; File c:\users\andy vandijck\downloads\uefiromextract\uefiromextract\uefiromextract\uefiromextract\setmem16.c
; Line 9
	movsxd	rax, edx
	lea	r9, QWORD PTR [rcx+rax*2]
	npad	9
$LL3@InternalMe:
; Line 11
	sub	r9, 2
	dec	edx
	mov	WORD PTR [r9], r8w
; Line 12
	jne	SHORT $LL3@InternalMe
; Line 13
	mov	rax, rcx
; Line 14
	ret	0
InternalMemSetMem16 ENDP
PUBLIC	SetMem16
; Function compile flags: /Ogtpy
;	COMDAT SetMem16
_TEXT	SEGMENT
Buffer$ = 8
Length$ = 16
Value$ = 24
SetMem16 PROC						; COMDAT
; Line 23
	test	edx, edx
	jne	SHORT $LN1@SetMem16
; Line 24
	mov	rax, rcx
; Line 33
	ret	0
$LN1@SetMem16:
; Line 32
	shr	edx, 1
; Line 33
	jmp	InternalMemSetMem16
SetMem16 ENDP
END

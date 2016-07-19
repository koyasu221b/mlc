; Format      :	Portable executable for	80386 (PE)
; Imagebase   :	400000
; Section 1. (virtual address 00001000)
; Virtual size			: 00005A5A (  23130.)
; Section size in file		: 00005C00 (  23552.)
; Offset to raw	data for section: 00000400
; Flags	60000020: Text Executable Readable
; Alignment	: default

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

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_401000(HWND	hWnd, UINT Msg,	WPARAM wParam, LPARAM lParam)
sub_401000	proc near		; DATA XREF: sub_4036AF+17Fo

Paint		= tagPAINTSTRUCT ptr -5Ch
Rect		= tagRECT ptr -1Ch
plbrush		= LOGBRUSH ptr -0Ch
hWnd		= dword	ptr  8
Msg		= dword	ptr  0Ch
wParam		= dword	ptr  10h
lParam		= dword	ptr  14h

		push	ebp
		mov	ebp, esp
		sub	esp, 5Ch
		cmp	[ebp+Msg], 0Fh
		jz	short loc_401037
		cmp	[ebp+Msg], 46h
		mov	eax, [ebp+lParam]
		jnz	short loc_401022
		or	dword ptr [eax+18h], 10h
		mov	ecx, hwnd
		mov	[eax+4], ecx

loc_401022:				; CODE XREF: sub_401000+13j
		push	eax		; lParam
		push	[ebp+wParam]	; wParam
		push	[ebp+Msg]	; Msg
		push	[ebp+hWnd]	; hWnd
		call	ds:DefWindowProcA
		jmp	locret_401179
; ---------------------------------------------------------------------------

loc_401037:				; CODE XREF: sub_401000+Aj
		push	ebx
		push	esi
		mov	esi, dword_423EB0
		lea	eax, [ebp+Paint]
		push	edi
		push	eax		; lpPaint
		push	[ebp+hWnd]	; hWnd
		call	ds:BeginPaint
		and	[ebp+plbrush.lbStyle], 0
		mov	[ebp+Msg], eax
		lea	eax, [ebp+Rect]
		push	eax		; lpRect
		push	[ebp+hWnd]	; hWnd
		call	ds:GetClientRect
		mov	edi, [ebp+Rect.bottom]
		and	[ebp+Rect.bottom], 0
		mov	ebx, ds:DeleteObject
		jmp	loc_4010F3
; ---------------------------------------------------------------------------

loc_401073:				; CODE XREF: sub_401000+F6j
		movzx	eax, byte ptr [esi+52h]
		movzx	edx, byte ptr [esi+56h]
		imul	edx, [ebp+Rect.top]
		mov	ecx, edi
		sub	ecx, [ebp+Rect.top]
		imul	eax, ecx
		add	eax, edx
		mov	[ebp+wParam], ecx
		cdq
		idiv	edi
		xor	edx, edx
		mov	dh, al
		movzx	eax, byte ptr [esi+51h]
		imul	eax, ecx
		movzx	ecx, byte ptr [esi+55h]
		imul	ecx, [ebp+Rect.top]
		add	eax, ecx
		mov	ecx, edx
		cdq
		idiv	edi
		movzx	edx, byte ptr [esi+54h]
		imul	edx, [ebp+Rect.top]
		mov	cl, al
		movzx	eax, byte ptr [esi+50h]
		imul	eax, [ebp+wParam]
		add	eax, edx
		cdq
		idiv	edi
		shl	ecx, 8
		movzx	eax, al
		or	ecx, eax
		lea	eax, [ebp+plbrush]
		push	eax		; plbrush
		mov	[ebp+plbrush.lbColor], ecx
		call	ds:CreateBrushIndirect
		add	[ebp+Rect.bottom], 4
		mov	[ebp+lParam], eax
		push	eax		; hbr
		lea	eax, [ebp+Rect]
		push	eax		; lprc
		push	[ebp+Msg]	; hDC
		call	ds:FillRect
		push	[ebp+lParam]	; ho
		call	ebx ; DeleteObject
		add	[ebp+Rect.top],	4

loc_4010F3:				; CODE XREF: sub_401000+6Ej
		cmp	[ebp+Rect.top],	edi
		jl	loc_401073
		cmp	dword ptr [esi+58h], 0FFFFFFFFh
		jz	short loc_401167
		push	dword ptr [esi+34h] ; lplf
		call	ds:CreateFontIndirectA
		test	eax, eax
		mov	[ebp+lParam], eax
		jz	short loc_401167
		mov	edi, [ebp+Msg]
		push	1		; mode
		push	edi		; hdc
		mov	[ebp+Rect.left], 10h
		mov	[ebp+Rect.top],	8
		call	ds:SetBkMode
		push	dword ptr [esi+58h] ; color
		push	edi		; hdc
		call	ds:SetTextColor
		push	[ebp+lParam]	; h
		mov	esi, ds:SelectObject
		push	edi		; hdc
		call	esi ; SelectObject
		mov	[ebp+Msg], eax
		lea	eax, [ebp+Rect]
		push	820h		; format
		push	eax		; lprc
		push	0FFFFFFFFh	; cchText
		push	offset chText	; lpchText
		push	edi		; hdc
		call	ds:DrawTextA
		push	[ebp+Msg]	; h
		push	edi		; hdc
		call	esi ; SelectObject
		push	[ebp+lParam]	; ho
		call	ebx ; DeleteObject

loc_401167:				; CODE XREF: sub_401000+100j
					; sub_401000+110j
		lea	eax, [ebp+Paint]
		push	eax		; lpPaint
		push	[ebp+hWnd]	; hWnd
		call	ds:EndPaint
		pop	edi
		pop	esi
		xor	eax, eax
		pop	ebx

locret_401179:				; CODE XREF: sub_401000+32j
		leave
		retn	10h
sub_401000	endp


; =============== S U B	R O U T	I N E =======================================


sub_40117D	proc near		; CODE XREF: sub_401434+13C5p
					; sub_404853+31Bp

arg_0		= dword	ptr  4

		mov	ecx, [esp+arg_0]
		mov	eax, dword_423EC8
		mov	edx, ecx
		push	ebx
		imul	edx, 418h
		push	esi
		push	edi
		mov	edx, [edx+eax+8]
		test	dl, 2
		jz	short loc_4011E9
		lea	esi, [ecx+1]
		xor	edi, edi
		cmp	esi, dword_423ECC
		jnb	short loc_4011E9
		mov	ecx, esi
		imul	ecx, 418h
		lea	eax, [ecx+eax+8]

loc_4011B3:				; CODE XREF: sub_40117D+6Aj
		mov	ecx, [eax]
		test	cl, 2
		jz	short loc_4011BD
		inc	edi
		jmp	short loc_4011DB
; ---------------------------------------------------------------------------

loc_4011BD:				; CODE XREF: sub_40117D+3Bj
		test	cl, 4
		jz	short loc_4011CB
		mov	ecx, edi
		dec	edi
		test	ecx, ecx
		jz	short loc_4011E9
		jmp	short loc_4011DB
; ---------------------------------------------------------------------------

loc_4011CB:				; CODE XREF: sub_40117D+43j
		test	cl, 10h
		jnz	short loc_4011DB
		mov	ebx, ecx
		xor	ebx, edx
		and	ebx, 1
		xor	ebx, ecx
		mov	[eax], ebx

loc_4011DB:				; CODE XREF: sub_40117D+3Ej
					; sub_40117D+4Cj ...
		inc	esi
		add	eax, 418h
		cmp	esi, dword_423ECC
		jb	short loc_4011B3

loc_4011E9:				; CODE XREF: sub_40117D+1Bj
					; sub_40117D+28j ...
		pop	edi
		pop	esi
		pop	ebx
		retn	4
sub_40117D	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_4011EF	proc near		; CODE XREF: sub_4011EF+56p
					; sub_401434+13F0p ...

var_8		= dword	ptr -8
var_4		= dword	ptr -4
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch

		push	ebp
		mov	ebp, esp
		push	ecx
		push	ecx
		mov	edx, [ebp+arg_0]
		push	ebx
		push	esi
		mov	esi, edx
		imul	esi, 418h
		mov	ebx, dword_423EC8
		xor	ecx, ecx
		add	esi, ebx
		push	edi
		mov	[ebp+var_4], ecx
		mov	[ebp+var_8], ecx
		mov	eax, [esi+8]
		test	al, 2
		jz	short loc_401224
		cmp	[ebp+arg_4], ecx
		jz	short loc_401224
		and	al, 0BEh
		inc	edx
		mov	[esi+8], eax

loc_401224:				; CODE XREF: sub_4011EF+28j
					; sub_4011EF+2Dj
		cmp	edx, dword_423ECC
		jnb	short loc_401270

loc_40122C:				; CODE XREF: sub_4011EF+7Fj
		mov	eax, edx
		imul	eax, 418h
		lea	edi, [eax+ebx+8]
		lea	eax, [edx+1]
		mov	ecx, [edi]
		test	cl, 2
		jz	short loc_40124C
		push	1
		push	edx
		call	sub_4011EF
		mov	ecx, [edi]

loc_40124C:				; CODE XREF: sub_4011EF+51j
		test	cl, 4
		jnz	short loc_401279
		test	cl, 40h
		jz	short loc_401259
		inc	[ebp+var_4]

loc_401259:				; CODE XREF: sub_4011EF+65j
		test	cl, 1
		jz	short loc_401263
		inc	[ebp+var_4]
		jmp	short loc_401266
; ---------------------------------------------------------------------------

loc_401263:				; CODE XREF: sub_4011EF+6Dj
		inc	[ebp+var_8]

loc_401266:				; CODE XREF: sub_4011EF+72j
		cmp	eax, dword_423ECC
		mov	edx, eax
		jb	short loc_40122C

loc_401270:				; CODE XREF: sub_4011EF+3Bj
		xor	eax, eax

loc_401272:				; CODE XREF: sub_4011EF+8Ej
					; sub_4011EF+9Aj ...
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn	8
; ---------------------------------------------------------------------------

loc_401279:				; CODE XREF: sub_4011EF+60j
		cmp	[ebp+var_4], 0
		jz	short loc_401272
		cmp	[ebp+var_8], 0
		jz	short loc_40128B
		or	dword ptr [esi+8], 40h
		jmp	short loc_401272
; ---------------------------------------------------------------------------

loc_40128B:				; CODE XREF: sub_4011EF+94j
		mov	ecx, [esi+8]
		and	cl, 7Fh
		or	ecx, 1
		mov	[esi+8], ecx
		jmp	short loc_401272
sub_4011EF	endp


; =============== S U B	R O U T	I N E =======================================


sub_401299	proc near		; CODE XREF: sub_401434+13E9p
					; sub_404853+3E8p ...

arg_0		= dword	ptr  4

		mov	ecx, [esp+arg_0]
		mov	eax, dword_423EC8
		push	esi
		xor	esi, esi
		cmp	ecx, 20h
		jnb	short loc_4012DE
		cmp	dword_423ECC, esi
		jbe	short loc_4012DE
		lea	edx, [eax+8]
		push	edi

loc_4012B6:				; CODE XREF: sub_401299+42j
		mov	eax, [edx]
		test	al, 6
		jnz	short loc_4012CE
		xor	edi, edi
		inc	edi
		shl	edi, cl
		test	[edx-4], edi
		jz	short loc_4012CA
		or	al, 1
		jmp	short loc_4012CC
; ---------------------------------------------------------------------------

loc_4012CA:				; CODE XREF: sub_401299+2Bj
		and	al, 0FEh

loc_4012CC:				; CODE XREF: sub_401299+2Fj
		mov	[edx], eax

loc_4012CE:				; CODE XREF: sub_401299+21j
		inc	esi
		add	edx, 418h
		cmp	esi, dword_423ECC
		jb	short loc_4012B6
		pop	edi

loc_4012DE:				; CODE XREF: sub_401299+Fj
					; sub_401299+17j
		pop	esi
		retn	4
sub_401299	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_4012E2	proc near		; CODE XREF: sub_401434+13F8p
					; sub_404853+485p

var_8		= dword	ptr -8
var_4		= dword	ptr -4
arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		mov	eax, dword_423EB0
		and	[ebp+var_4], 0
		push	ebx
		push	esi
		add	eax, 94h
		push	edi
		mov	edi, dword_423ECC
		mov	[ebp+var_8], eax

loc_401302:				; CODE XREF: sub_4012E2+7Fj
		mov	eax, [ebp+var_8]
		xor	ebx, ebx
		cmp	[eax], ebx
		jz	short loc_401356
		cmp	ebx, edi
		jnb	short loc_401354
		mov	esi, dword_423EC8
		add	esi, 8

loc_401318:				; CODE XREF: sub_4012E2+6Ej
		mov	edx, [esi]
		test	dl, 6
		jnz	short loc_401347
		mov	eax, [ebp+arg_0]
		test	eax, eax
		jz	short loc_40132C
		cmp	dword ptr [eax+ebx*4], 0
		jz	short loc_401347

loc_40132C:				; CODE XREF: sub_4012E2+42j
		mov	ecx, [ebp+var_4]
		xor	eax, eax
		inc	eax
		and	edx, 1
		shl	eax, cl
		mov	ecx, [esi-4]
		and	ecx, eax
		mov	eax, ecx
		mov	ecx, [ebp+var_4]
		shl	edx, cl
		cmp	eax, edx
		jnz	short loc_401352

loc_401347:				; CODE XREF: sub_4012E2+3Bj
					; sub_4012E2+48j
		inc	ebx
		add	esi, 418h
		cmp	ebx, edi
		jb	short loc_401318

loc_401352:				; CODE XREF: sub_4012E2+63j
		cmp	ebx, edi

loc_401354:				; CODE XREF: sub_4012E2+2Bj
		jz	short loc_401363

loc_401356:				; CODE XREF: sub_4012E2+27j
		inc	[ebp+var_4]
		add	[ebp+var_8], 4
		cmp	[ebp+var_4], 20h
		jb	short loc_401302

loc_401363:				; CODE XREF: sub_4012E2:loc_401354j
		mov	eax, [ebp+var_4]
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn	4
sub_4012E2	endp


; =============== S U B	R O U T	I N E =======================================


sub_40136D	proc near		; CODE XREF: sub_401389+27p
					; sub_401434+84p

arg_0		= dword	ptr  4

		mov	eax, [esp+arg_0]
		test	eax, eax
		jge	short locret_401386
		inc	eax
		mov	ecx, offset dword_424000
		shl	eax, 0Ah
		sub	ecx, eax
		push	ecx
		call	sub_405ADD

locret_401386:				; CODE XREF: sub_40136D+6j
		retn	4
sub_40136D	endp


; =============== S U B	R O U T	I N E =======================================


; int __stdcall	sub_401389(int,	HWND hWnd)
sub_401389	proc near		; CODE XREF: sub_40140B+10p
					; sub_401434+8Cp ...

arg_0		= dword	ptr  4
hWnd		= dword	ptr  8

		push	esi
		mov	esi, [esp+4+arg_0]
		jmp	short loc_4013FA
; ---------------------------------------------------------------------------

loc_401390:				; CODE XREF: sub_401389+73j
		mov	eax, esi
		mov	ecx, dword_423ED0
		imul	eax, 1Ch
		add	eax, ecx
		cmp	dword ptr [eax], 1
		jz	short loc_4013FE
		push	eax		; FilePart
		call	sub_401434
		cmp	eax, 7FFFFFFFh
		jz	short loc_401404
		push	eax
		call	sub_40136D
		test	eax, eax
		jnz	short loc_4013BD
		inc	eax
		inc	esi
		jmp	short loc_4013C4
; ---------------------------------------------------------------------------

loc_4013BD:				; CODE XREF: sub_401389+2Ej
		dec	eax
		mov	ecx, esi
		mov	esi, eax
		sub	eax, ecx

loc_4013C4:				; CODE XREF: sub_401389+32j
		cmp	[esp+4+hWnd], 0
		jz	short loc_4013FA
		add	nNumber, eax
		push	0		; lParam
		push	nDenominator	; nDenominator
		push	7530h		; nNumerator
		push	nNumber		; nNumber
		call	ds:MulDiv
		push	eax		; wParam
		push	402h		; Msg
		push	[esp+10h+hWnd]	; hWnd
		call	ds:SendMessageA

loc_4013FA:				; CODE XREF: sub_401389+5j
					; sub_401389+40j
		test	esi, esi
		jge	short loc_401390

loc_4013FE:				; CODE XREF: sub_401389+17j
		xor	eax, eax

loc_401400:				; CODE XREF: sub_401389+80j
		pop	esi
		retn	8
; ---------------------------------------------------------------------------

loc_401404:				; CODE XREF: sub_401389+24j
		mov	eax, 7FFFFFFFh
		jmp	short loc_401400
sub_401389	endp


; =============== S U B	R O U T	I N E =======================================


sub_40140B	proc near		; CODE XREF: start+364p
					; sub_4036AF+1F1p ...

arg_0		= dword	ptr  4

		mov	eax, [esp+arg_0]
		mov	ecx, dword_423EB0
		push	0		; hWnd
		push	dword ptr [ecx+eax*4+6Ch] ; int
		call	sub_401389
		retn	4
sub_40140B	endp


; =============== S U B	R O U T	I N E =======================================


sub_401423	proc near		; CODE XREF: sub_401434+1DDp
					; sub_401434+9B0p ...

arg_0		= dword	ptr  4

		push	offset byte_409F70 ; lpString
		push	[esp+4+arg_0]	; int
		call	sub_404F04
		retn	4
sub_401423	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_401434(LPSTR FilePart)
sub_401434	proc near		; CODE XREF: sub_401389+1Ap

FindFileData	= _WIN32_FIND_DATAA ptr	-1A4h
FileOp		= _SHFILEOPSTRUCTA ptr -64h
puLen		= dword	ptr -44h
Rect		= tagRECT ptr -40h
dwHandle	= dword	ptr -30h
lptstrFilename	= dword	ptr -2Ch
var_28		= dword	ptr -28h
var_24		= dword	ptr -24h
nCmdShow	= dword	ptr -20h
dwBytes		= dword	ptr -1Ch
FileTime2	= FILETIME ptr -18h
var_10		= dword	ptr -10h
Buffer		= byte ptr -9
lpString2	= dword	ptr -8
var_4		= dword	ptr -4
FilePart	= dword	ptr  8

		push	ebp
		mov	ebp, esp
		sub	esp, 1A4h
		mov	eax, hwnd
		push	ebx
		push	esi
		mov	esi, [ebp+FilePart]
		push	edi
		push	7
		pop	ecx
		lea	edi, [ebp+var_28]
		mov	[ebp+Rect.bottom], eax
		xor	ebx, ebx
		rep movsd
		mov	eax, [ebp+var_24]
		mov	edx, [ebp+nCmdShow]
		mov	esi, eax
		mov	edi, edx
		shl	esi, 0Ah
		mov	ecx, offset dword_424000
		mov	[ebp+var_4], ebx
		shl	edi, 0Ah
		add	esi, ecx
		add	edi, ecx
		lea	ecx, [ebp+var_24]
		mov	dword_409B68, ecx
		mov	ecx, [ebp+var_28]
		add	ecx, 0FFFFFFFEh	; switch 66 cases
		cmp	ecx, 41h
		ja	loc_40288B	; jumptable 00401489 default case
		jmp	ds:off_40289D[ecx*4] ; switch jump
; ---------------------------------------------------------------------------

loc_401490:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		push	ebx		; jumptable 00401489 case 3
		push	eax		; int

loc_401492:				; CODE XREF: sub_401434+402j
		call	sub_404F04
		jmp	loc_40220E
; ---------------------------------------------------------------------------

loc_40149C:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		inc	dword_42366C	; jumptable 00401489 case 4
		cmp	[ebp+Rect.bottom], ebx
		jz	loc_40220E
		push	ebx		; nExitCode
		call	ds:PostQuitMessage
		jmp	loc_40220E
; ---------------------------------------------------------------------------

loc_4014B7:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		push	eax		; jumptable 00401489 case 5
		call	sub_40136D
		dec	eax
		push	ebx		; hWnd
		push	eax		; int
		call	sub_401389
		jmp	loc_402896	; jumptable 00401489 case 2
; ---------------------------------------------------------------------------

loc_4014CA:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		push	ebx		; jumptable 00401489 case 6
		push	eax		; int
		call	sub_404F04
		jmp	loc_40288B	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_4014D6:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		push	ebx		; jumptable 00401489 case 7
		call	sub_4029D9
		cmp	eax, 1
		jg	short loc_4014E4
		xor	eax, eax
		inc	eax

loc_4014E4:				; CODE XREF: sub_401434+ABj
		push	eax		; dwMilliseconds
		call	ds:Sleep
		jmp	loc_40288B	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_4014F0:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		push	[ebp+Rect.bottom] ; jumptable 00401489 case 8
		call	ds:SetForegroundWindow
		jmp	loc_40288B	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_4014FE:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		shl	eax, 2		; jumptable 00401489 case 13
		cmp	[ebp+dwBytes], ebx
		jnz	short loc_401528
		mov	ecx, dword_423F20[eax]
		push	1
		mov	dword_423F60[eax], ecx
		call	sub_4029D9
		mov	ecx, [ebp+var_24]
		mov	dword_423F20[ecx*4], eax
		jmp	loc_40288B	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_401528:				; CODE XREF: sub_401434+D0j
		mov	ecx, dword_423F60[eax]
		mov	dword_423F20[eax], ecx
		jmp	loc_40288B	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_401539:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		mov	eax, [ebp+dwBytes] ; jumptable 00401489	case 14
		lea	esi, ds:423F20h[eax*4]
		xor	eax, eax
		mov	ecx, [esi]
		cmp	ecx, ebx
		setz	al
		and	ecx, [ebp+FileTime2.dwLowDateTime]
		mov	eax, [ebp+eax*4+var_24]
		mov	[esi], ecx
		jmp	loc_402896	; jumptable 00401489 case 2
; ---------------------------------------------------------------------------

loc_40155A:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		push	dword_423F20[edx*4] ; jumptable	00401489 case 15

loc_401561:				; CODE XREF: sub_401434+6ACj
					; sub_401434+834j ...
		push	esi
		jmp	loc_402833
; ---------------------------------------------------------------------------

loc_401567:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		mov	ecx, hWnd	; jumptable 00401489 case 9
		mov	esi, ds:ShowWindow
		cmp	ecx, ebx
		jz	short loc_40157E
		push	edx		; nCmdShow
		push	ecx		; hWnd
		call	esi ; ShowWindow
		mov	eax, [ebp+var_24]

loc_40157E:				; CODE XREF: sub_401434+141j
		mov	ecx, dword_423684
		cmp	ecx, ebx
		jz	loc_40288B	; jumptable 00401489 default case
		push	eax		; nCmdShow
		push	ecx		; hWnd
		call	esi ; ShowWindow
		jmp	loc_40288B	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_401595:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		push	0FFFFFFF0h	; jumptable 00401489 case 10
		call	sub_4029F6
		push	[ebp+nCmdShow]	; dwFileAttributes
		push	eax		; lpFileName
		call	ds:SetFileAttributesA

loc_4015A6:				; CODE XREF: sub_401434+2FBj
					; sub_401434+E2Ej ...
		test	eax, eax

loc_4015A8:				; CODE XREF: sub_401434+415j
					; sub_401434+1192j
		jnz	loc_40288B	; jumptable 00401489 default case
		jmp	loc_40265C
; ---------------------------------------------------------------------------

loc_4015B3:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		push	0FFFFFFF0h	; jumptable 00401489 case 11
		call	sub_4029F6
		mov	edi, eax
		push	edi		; lpsz
		call	sub_4056ED
		mov	esi, eax
		cmp	esi, ebx
		jz	short loc_40160A

loc_4015C8:				; CODE XREF: sub_401434+1D4j
		push	5Ch		; char
		push	esi		; lpsz
		call	sub_405684
		mov	esi, eax
		push	ebx		; lpSecurityAttributes
		push	edi		; lpPathName
		mov	al, [esi]
		mov	[esi], bl
		mov	byte ptr [ebp+FilePart+3], al
		call	ds:CreateDirectoryA
		test	eax, eax
		jnz	short loc_401600
		call	ds:GetLastError
		cmp	eax, 0B7h
		jnz	short loc_4015FD
		push	edi		; lpFileName
		call	ds:GetFileAttributesA
		test	al, 10h
		jnz	short loc_401600

loc_4015FD:				; CODE XREF: sub_401434+1BCj
		inc	[ebp+var_4]

loc_401600:				; CODE XREF: sub_401434+1AFj
					; sub_401434+1C7j
		mov	al, byte ptr [ebp+FilePart+3]
		mov	[esi], al
		inc	esi
		cmp	al, bl
		jnz	short loc_4015C8

loc_40160A:				; CODE XREF: sub_401434+192j
		cmp	[ebp+nCmdShow],	ebx
		jz	short loc_40162D
		push	0FFFFFFE6h
		call	sub_401423
		push	edi		; lpString2
		push	offset Directory ; lpString1
		call	sub_405B66
		push	edi		; lpPathName
		call	ds:SetCurrentDirectoryA
		jmp	loc_40288B	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_40162D:				; CODE XREF: sub_401434+1D9j
		push	0FFFFFFF5h
		jmp	loc_402164
; ---------------------------------------------------------------------------

loc_401634:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		push	ebx		; jumptable 00401489 case 12
		call	sub_4029F6
		push	eax		; lpFileName
		call	sub_405E61
		jmp	loc_401C7A
; ---------------------------------------------------------------------------

loc_401645:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		push	0FFFFFFD0h	; jumptable 00401489 case 16
		call	sub_4029F6
		push	0FFFFFFDFh
		mov	esi, eax
		call	sub_4029F6
		push	13h
		mov	edi, eax
		call	sub_4029F6
		push	edi		; lpNewFileName
		push	esi		; lpExistingFileName
		call	ds:MoveFileA
		test	eax, eax
		jz	short loc_401671
		push	0FFFFFFE3h
		jmp	loc_402164
; ---------------------------------------------------------------------------

loc_401671:				; CODE XREF: sub_401434+234j
		cmp	[ebp+dwBytes], ebx
		jz	loc_40265C
		push	esi		; lpFileName
		call	sub_405E61
		test	eax, eax
		jz	loc_40265C
		push	edi		; lpszLongPath
		push	esi		; LPCSTR
		call	sub_4058B4
		push	0FFFFFFE4h
		jmp	loc_402164
; ---------------------------------------------------------------------------

loc_401696:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		push	ebx		; jumptable 00401489 case 17
		call	sub_4029F6
		mov	esi, eax
		lea	eax, [ebp+FilePart]
		push	eax		; lpFilePart
		push	edi		; lpBuffer
		push	400h		; nBufferLength
		push	esi		; lpFileName
		call	ds:GetFullPathNameA
		test	eax, eax
		jz	short loc_4016D6
		mov	eax, [ebp+FilePart]
		cmp	eax, esi
		jbe	short loc_4016DF
		cmp	[eax], bl
		jz	short loc_4016DF
		push	esi		; lpFileName
		call	sub_405E61
		cmp	eax, ebx
		jz	short loc_4016D6
		add	eax, 2Ch
		push	eax		; lpString2
		push	[ebp+FilePart]	; lpString1
		call	sub_405B66
		jmp	short loc_4016DF
; ---------------------------------------------------------------------------

loc_4016D6:				; CODE XREF: sub_401434+27Dj
					; sub_401434+292j
		mov	[ebp+var_4], 1
		mov	[edi], bl

loc_4016DF:				; CODE XREF: sub_401434+284j
					; sub_401434+288j ...
		cmp	[ebp+dwBytes], ebx
		jnz	loc_40288B	; jumptable 00401489 default case
		push	400h		; cchBuffer
		push	edi		; lpszShortPath
		push	edi		; lpszLongPath
		call	ds:GetShortPathNameA
		jmp	loc_40288B	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_4016FA:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		push	0FFFFFFFFh	; jumptable 00401489 case 18
		call	sub_4029F6
		lea	ecx, [ebp+FilePart]
		push	ecx		; lpFilePart
		push	esi		; lpBuffer
		push	400h		; nBufferLength
		push	ebx		; lpExtension
		push	eax		; lpFileName
		push	ebx		; lpPath
		call	ds:SearchPathA
		test	eax, eax

loc_401716:				; CODE XREF: sub_401434+E6Ej
		jnz	loc_40288B	; jumptable 00401489 default case
		jmp	loc_402630
; ---------------------------------------------------------------------------

loc_401721:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		push	0FFFFFFEFh	; jumptable 00401489 case 19
		call	sub_4029F6
		push	eax		; lpPathName
		push	esi		; PrefixString
		call	sub_40586C
		jmp	loc_4015A6
; ---------------------------------------------------------------------------

loc_401734:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		push	31h		; jumptable 00401489 case 20
		call	sub_4029F6
		mov	esi, eax
		mov	eax, [ebp+var_24]
		and	eax, 7
		push	esi
		mov	[ebp+lpString2], esi
		mov	[ebp+FilePart],	eax
		call	sub_4056C6
		push	esi		; lpString2
		mov	esi, offset String1
		test	eax, eax
		jz	short loc_401761
		push	esi		; lpString1
		call	sub_405B66
		jmp	short loc_401778
; ---------------------------------------------------------------------------

loc_401761:				; CODE XREF: sub_401434+323j
		push	offset Directory ; lpString2
		push	esi		; lpString1
		call	sub_405B66
		push	eax		; lpString
		call	sub_405659
		push	eax		; lpString1
		call	lstrcatA

loc_401778:				; CODE XREF: sub_401434+32Bj
		push	esi		; lpsz
		call	sub_405DC8
		mov	edi, offset Buffer

loc_401783:				; CODE XREF: sub_401434+3F6j
		cmp	[ebp+FilePart],	3
		jl	short loc_4017BA
		push	esi		; lpFileName
		call	sub_405E61
		xor	ecx, ecx
		cmp	eax, ebx
		jz	short loc_4017A5
		lea	ecx, [ebp+FileTime2]
		add	eax, 14h
		push	ecx		; lpFileTime2
		push	eax		; lpFileTime1
		call	ds:CompareFileTime
		mov	ecx, eax

loc_4017A5:				; CODE XREF: sub_401434+35Fj
		mov	eax, [ebp+FilePart]
		add	eax, 0FFFFFFFDh
		or	eax, 80000000h
		and	eax, ecx
		neg	eax
		sbb	eax, eax
		inc	eax
		mov	[ebp+FilePart],	eax

loc_4017BA:				; CODE XREF: sub_401434+353j
		cmp	[ebp+FilePart],	ebx
		jnz	short loc_4017C5
		push	esi		; lpFileName
		call	sub_40581E

loc_4017C5:				; CODE XREF: sub_401434+389j
		xor	eax, eax
		cmp	[ebp+FilePart],	1
		setnz	al
		inc	eax
		push	eax		; dwCreationDisposition
		push	40000000h	; dwDesiredAccess
		push	esi		; lpFileName
		call	sub_40583D
		cmp	eax, 0FFFFFFFFh
		mov	[ebp+Rect.bottom], eax
		jnz	short loc_401859
		cmp	[ebp+FilePart],	ebx
		jnz	short loc_40183B
		push	offset dword_424000 ; lpString2
		push	edi		; lpString1
		call	sub_405B66
		push	esi		; lpString2
		push	offset dword_424000 ; lpString1
		call	sub_405B66
		push	[ebp+var_10]	; int
		push	offset byte_409F70 ; lpString1
		call	sub_405B88
		push	edi		; lpString2
		push	offset dword_424000 ; lpString1
		call	sub_405B66
		mov	eax, [ebp+var_24]
		sar	eax, 3
		push	eax
		push	offset byte_409F70
		call	sub_405427
		sub	eax, 4
		jz	loc_401783
		dec	eax
		jz	short loc_40184E
		push	esi
		push	0FFFFFFFAh
		jmp	loc_401492
; ---------------------------------------------------------------------------

loc_40183B:				; CODE XREF: sub_401434+3B2j
		push	[ebp+lpString2]	; lpString
		push	0FFFFFFE2h	; int
		call	sub_404F04
		cmp	[ebp+FilePart],	2
		jmp	loc_4015A8
; ---------------------------------------------------------------------------

loc_40184E:				; CODE XREF: sub_401434+3FDj
		inc	dword_423F28
		jmp	loc_402894
; ---------------------------------------------------------------------------

loc_401859:				; CODE XREF: sub_401434+3ADj
		push	[ebp+lpString2]	; lpString
		push	0FFFFFFEAh	; int
		call	sub_404F04
		inc	dword_423F54
		push	ebx		; NumberOfBytesWritten
		push	ebx		; lpBuffer
		push	[ebp+Rect.bottom] ; hFile
		push	[ebp+dwBytes]	; Buffer
		call	sub_402F18
		dec	dword_423F54
		cmp	[ebp+FileTime2.dwLowDateTime], 0FFFFFFFFh
		mov	edi, eax
		jnz	short loc_40188A
		cmp	[ebp+FileTime2.dwHighDateTime],	0FFFFFFFFh
		jz	short loc_40189C

loc_40188A:				; CODE XREF: sub_401434+44Ej
		lea	eax, [ebp+FileTime2]
		push	eax		; lpLastWriteTime
		lea	eax, [ebp+FileTime2]
		push	ebx		; lpLastAccessTime
		push	eax		; lpCreationTime
		push	[ebp+Rect.bottom] ; hFile
		call	ds:SetFileTime

loc_40189C:				; CODE XREF: sub_401434+454j
		push	[ebp+Rect.bottom] ; hObject
		call	ds:CloseHandle
		cmp	edi, ebx
		jge	loc_40288B	; jumptable 00401489 default case
		cmp	edi, 0FFFFFFFEh
		jnz	short loc_4018C5
		push	0FFFFFFE9h	; int
		push	esi		; lpString1
		call	sub_405B88
		push	[ebp+lpString2]	; lpString2
		push	esi		; lpString1
		call	lstrcatA
		jmp	short loc_4018CD
; ---------------------------------------------------------------------------

loc_4018C5:				; CODE XREF: sub_401434+47Cj
		push	0FFFFFFEEh	; int
		push	esi		; lpString1
		call	sub_405B88

loc_4018CD:				; CODE XREF: sub_401434+48Fj
		push	200010h
		push	esi
		jmp	loc_402209
; ---------------------------------------------------------------------------

loc_4018D8:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		push	ebx		; jumptable 00401489 case 21
		jmp	short loc_40190F
; ---------------------------------------------------------------------------

loc_4018DB:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		push	31h		; jumptable 00401489 case 22
		call	sub_4029F6
		push	[ebp+var_24]
		push	eax
		call	sub_405427
		cmp	eax, ebx
		jz	loc_40265C
		cmp	eax, [ebp+dwBytes]
		jz	loc_401A46
		cmp	eax, [ebp+FileTime2.dwHighDateTime]
		jnz	loc_40288B	; jumptable 00401489 default case
		mov	eax, [ebp+var_10]
		jmp	loc_402896	; jumptable 00401489 case 2
; ---------------------------------------------------------------------------

loc_40190D:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		push	0FFFFFFF0h	; jumptable 00401489 case 23

loc_40190F:				; CODE XREF: sub_401434+4A5j
		call	sub_4029F6
		push	[ebp+nCmdShow]	; int
		push	eax		; lpFileName
		call	sub_40548B
		jmp	loc_40288B	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_401922:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		push	1		; jumptable 00401489 case 24
		call	sub_4029F6
		push	eax		; lpString
		call	lstrlenA
		jmp	loc_4024B8
; ---------------------------------------------------------------------------

loc_401934:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		push	2		; jumptable 00401489 case 25
		call	sub_4029D9
		push	3
		mov	[ebp+FilePart],	eax
		call	sub_4029D9
		push	1
		mov	edi, eax
		call	sub_4029F6
		cmp	[ebp+dwBytes], ebx
		mov	[ebp+lptstrFilename], eax
		mov	[esi], bl
		jz	short loc_401961
		cmp	[ebp+FilePart],	ebx
		jz	loc_40288B	; jumptable 00401489 default case

loc_401961:				; CODE XREF: sub_401434+522j
		push	eax		; lpString
		call	lstrlenA
		cmp	edi, ebx
		jge	short loc_401973
		add	edi, eax
		js	loc_40288B	; jumptable 00401489 default case

loc_401973:				; CODE XREF: sub_401434+535j
		cmp	edi, eax
		jle	short loc_401979
		mov	edi, eax

loc_401979:				; CODE XREF: sub_401434+541j
		mov	eax, [ebp+lptstrFilename]
		add	eax, edi
		push	eax		; lpString2
		push	esi		; lpString1
		call	sub_405B66
		mov	edi, [ebp+FilePart]
		cmp	edi, ebx
		jz	loc_40288B	; jumptable 00401489 default case
		jge	short loc_4019A1
		push	esi		; lpString
		call	lstrlenA
		add	edi, eax
		jns	short loc_4019A1
		mov	[ebp+FilePart],	ebx
		mov	edi, ebx

loc_4019A1:				; CODE XREF: sub_401434+55Cj
					; sub_401434+566j
		cmp	edi, 400h
		jge	loc_40288B	; jumptable 00401489 default case
		mov	[edi+esi], bl
		jmp	loc_40288B	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_4019B5:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		push	20h		; jumptable 00401489 case 26
		call	sub_4029F6
		push	31h
		mov	esi, eax
		call	sub_4029F6
		cmp	[ebp+FileTime2.dwHighDateTime],	ebx
		push	eax		; lpString2
		push	esi		; lpString1
		jnz	short loc_4019DE
		call	ds:lstrcmpiA

loc_4019D2:				; CODE XREF: sub_401434+5B0j
		test	eax, eax
		jnz	short loc_401A46

loc_4019D6:				; CODE XREF: sub_401434+60Aj
					; sub_401434:loc_401A4Ej ...
		mov	eax, [ebp+dwBytes]
		jmp	loc_402896	; jumptable 00401489 case 2
; ---------------------------------------------------------------------------

loc_4019DE:				; CODE XREF: sub_401434+596j
		call	ds:lstrcmpA
		jmp	short loc_4019D2
; ---------------------------------------------------------------------------

loc_4019E6:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		xor	edi, edi	; jumptable 00401489 case 27
		inc	edi
		push	edi
		call	sub_4029F6
		push	400h		; nSize
		push	esi		; lpDst
		push	eax		; lpSrc
		mov	[ebp+FilePart],	eax
		call	ds:ExpandEnvironmentStringsA
		test	eax, eax
		jz	short loc_401A16
		cmp	[ebp+dwBytes], ebx
		jz	short loc_401A1B
		push	esi		; lpString2
		push	[ebp+FilePart]	; lpString1
		call	ds:lstrcmpA
		test	eax, eax
		jnz	short loc_401A1B

loc_401A16:				; CODE XREF: sub_401434+5CDj
		mov	[ebp+var_4], edi
		mov	[esi], bl

loc_401A1B:				; CODE XREF: sub_401434+5D2j
					; sub_401434+5E0j
		mov	[esi+3FFh], bl
		jmp	loc_40288B	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_401A26:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		push	ebx		; jumptable 00401489 case 28
		call	sub_4029D9
		push	1
		mov	esi, eax
		call	sub_4029D9
		cmp	[ebp+var_10], ebx
		jnz	short loc_401A42
		cmp	esi, eax
		jl	short loc_401A46
		jle	short loc_4019D6
		jmp	short loc_401A50
; ---------------------------------------------------------------------------

loc_401A42:				; CODE XREF: sub_401434+604j
		cmp	esi, eax
		jnb	short loc_401A4E

loc_401A46:				; CODE XREF: sub_401434+4C2j
					; sub_401434+5A0j ...
		mov	eax, [ebp+FileTime2.dwLowDateTime]
		jmp	loc_402896	; jumptable 00401489 case 2
; ---------------------------------------------------------------------------

loc_401A4E:				; CODE XREF: sub_401434+610j
		jbe	short loc_4019D6

loc_401A50:				; CODE XREF: sub_401434+60Cj
		mov	eax, [ebp+FileTime2.dwHighDateTime]
		jmp	loc_402896	; jumptable 00401489 case 2
; ---------------------------------------------------------------------------

loc_401A58:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		push	1		; jumptable 00401489 case 29
		call	sub_4029D9
		push	2
		mov	edi, eax
		call	sub_4029D9
		mov	ecx, eax
		mov	eax, [ebp+FileTime2.dwLowDateTime]
		cmp	eax, 0Ch	; switch 13 cases
		ja	short loc_401ADF ; jumptable 00401A72 default case
		jmp	ds:off_4029A5[eax*4] ; switch jump
; ---------------------------------------------------------------------------

loc_401A79:				; CODE XREF: sub_401434+63Ej
					; DATA XREF: .text:off_4029A5o
		add	edi, ecx	; jumptable 00401A72 case 0
		jmp	short loc_401ADF ; jumptable 00401A72 default case
; ---------------------------------------------------------------------------

loc_401A7D:				; CODE XREF: sub_401434+63Ej
					; DATA XREF: .text:off_4029A5o
		sub	edi, ecx	; jumptable 00401A72 case 1
		jmp	short loc_401ADF ; jumptable 00401A72 default case
; ---------------------------------------------------------------------------

loc_401A81:				; CODE XREF: sub_401434+63Ej
					; DATA XREF: .text:off_4029A5o
		imul	ecx, edi	; jumptable 00401A72 case 2
		mov	edi, ecx
		jmp	short loc_401ADF ; jumptable 00401A72 default case
; ---------------------------------------------------------------------------

loc_401A88:				; CODE XREF: sub_401434+63Ej
					; DATA XREF: .text:off_4029A5o
		cmp	ecx, ebx	; jumptable 00401A72 case 3
		jz	short loc_401ACE
		mov	eax, edi
		cdq
		idiv	ecx

loc_401A91:				; CODE XREF: sub_401434+674j
		mov	edi, eax
		jmp	short loc_401ADF ; jumptable 00401A72 default case
; ---------------------------------------------------------------------------

loc_401A95:				; CODE XREF: sub_401434+63Ej
					; DATA XREF: .text:off_4029A5o
		or	edi, ecx	; jumptable 00401A72 case 4
		jmp	short loc_401ADF ; jumptable 00401A72 default case
; ---------------------------------------------------------------------------

loc_401A99:				; CODE XREF: sub_401434+63Ej
					; DATA XREF: .text:off_4029A5o
		and	edi, ecx	; jumptable 00401A72 case 5
		jmp	short loc_401ADF ; jumptable 00401A72 default case
; ---------------------------------------------------------------------------

loc_401A9D:				; CODE XREF: sub_401434+63Ej
					; DATA XREF: .text:off_4029A5o
		xor	edi, ecx	; jumptable 00401A72 case 6
		jmp	short loc_401ADF ; jumptable 00401A72 default case
; ---------------------------------------------------------------------------

loc_401AA1:				; CODE XREF: sub_401434+63Ej
					; DATA XREF: .text:off_4029A5o
		xor	eax, eax	; jumptable 00401A72 case 7
		cmp	edi, ebx
		setz	al
		jmp	short loc_401A91
; ---------------------------------------------------------------------------

loc_401AAA:				; CODE XREF: sub_401434+63Ej
					; DATA XREF: .text:off_4029A5o
		cmp	edi, ebx	; jumptable 00401A72 case 8
		jnz	short loc_401ABC
		jmp	short loc_401AB8
; ---------------------------------------------------------------------------

loc_401AB0:				; CODE XREF: sub_401434+682j
					; sub_401434+686j
		xor	edi, edi
		jmp	short loc_401ADF ; jumptable 00401A72 default case
; ---------------------------------------------------------------------------

loc_401AB4:				; CODE XREF: sub_401434+63Ej
					; DATA XREF: .text:off_4029A5o
		cmp	edi, ebx	; jumptable 00401A72 case 9
		jz	short loc_401AB0

loc_401AB8:				; CODE XREF: sub_401434+67Aj
		cmp	ecx, ebx
		jz	short loc_401AB0

loc_401ABC:				; CODE XREF: sub_401434+678j
		xor	edi, edi
		inc	edi
		jmp	short loc_401ADF ; jumptable 00401A72 default case
; ---------------------------------------------------------------------------

loc_401AC1:				; CODE XREF: sub_401434+63Ej
					; DATA XREF: .text:off_4029A5o
		cmp	ecx, ebx	; jumptable 00401A72 case 10
		jz	short loc_401ACE
		mov	eax, edi
		cdq
		idiv	ecx
		mov	edi, edx
		jmp	short loc_401ADF ; jumptable 00401A72 default case
; ---------------------------------------------------------------------------

loc_401ACE:				; CODE XREF: sub_401434+656j
					; sub_401434+68Fj
		xor	edi, edi
		mov	[ebp+var_4], 1
		jmp	short loc_401ADF ; jumptable 00401A72 default case
; ---------------------------------------------------------------------------

loc_401AD9:				; CODE XREF: sub_401434+63Ej
					; DATA XREF: .text:off_4029A5o
		shl	edi, cl		; jumptable 00401A72 case 11
		jmp	short loc_401ADF ; jumptable 00401A72 default case
; ---------------------------------------------------------------------------

loc_401ADD:				; CODE XREF: sub_401434+63Ej
					; DATA XREF: .text:off_4029A5o
		sar	edi, cl		; jumptable 00401A72 case 12

loc_401ADF:				; CODE XREF: sub_401434+63Cj
					; sub_401434+647j ...
		push	edi		; jumptable 00401A72 default case
		jmp	loc_401561
; ---------------------------------------------------------------------------

loc_401AE5:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		push	1		; jumptable 00401489 case 30
		call	sub_4029F6
		push	2
		mov	edi, eax
		call	sub_4029D9
		push	eax
		push	edi		; LPCSTR
		push	esi		; LPSTR
		call	ds:wsprintfA
		add	esp, 0Ch
		jmp	loc_40288B	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_401B06:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		mov	eax, [ebp+dwBytes] ; jumptable 00401489	case 31
		mov	edi, hMem
		cmp	eax, ebx
		jz	short loc_401B57

loc_401B13:				; CODE XREF: sub_401434+6ECj
		dec	eax
		cmp	edi, ebx
		jz	loc_4021FB
		mov	edi, [edi]
		cmp	eax, ebx
		jnz	short loc_401B13
		cmp	edi, ebx
		jz	loc_4021FB
		add	edi, 4
		mov	esi, offset String1
		push	edi		; lpString2
		push	esi		; lpString1
		call	sub_405B66
		mov	eax, hMem
		add	eax, 4
		push	eax		; lpString2
		push	edi		; lpString1
		call	sub_405B66
		mov	eax, hMem
		push	esi
		add	eax, 4
		push	eax
		jmp	loc_4027B1
; ---------------------------------------------------------------------------

loc_401B57:				; CODE XREF: sub_401434+6DDj
		cmp	edx, ebx
		jz	short loc_401B80
		cmp	edi, ebx
		jz	loc_40265C
		lea	eax, [edi+4]
		push	eax		; lpString2
		push	esi		; lpString1
		call	sub_405B66
		mov	eax, [edi]
		push	edi		; hMem
		mov	hMem, eax

loc_401B75:				; CODE XREF: sub_401434+B17j
		call	ds:GlobalFree
		jmp	loc_40288B	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_401B80:				; CODE XREF: sub_401434+725j
		push	404h		; dwBytes
		push	40h		; uFlags
		call	ds:GlobalAlloc
		push	[ebp+var_24]	; int
		mov	esi, eax
		lea	eax, [esi+4]
		push	eax		; lpString1
		call	sub_405B88
		mov	eax, hMem
		mov	[esi], eax
		mov	hMem, esi
		jmp	loc_40288B	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_401BAD:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		push	3		; jumptable 00401489 cases 32,33
		call	sub_4029D9
		push	4
		mov	[ebp+Rect.bottom], eax
		call	sub_4029D9
		test	byte ptr [ebp+var_10], 1
		mov	[ebp+FilePart],	eax
		jz	short loc_401BD1
		push	33h
		call	sub_4029F6
		mov	[ebp+Rect.bottom], eax

loc_401BD1:				; CODE XREF: sub_401434+791j
		test	byte ptr [ebp+var_10], 2
		jz	short loc_401BE1
		push	44h
		call	sub_4029F6
		mov	[ebp+FilePart],	eax

loc_401BE1:				; CODE XREF: sub_401434+7A1j
		cmp	[ebp+var_28], 21h
		push	1
		jnz	short loc_401C2D
		call	sub_4029D9
		push	2
		mov	edi, eax
		call	sub_4029D9
		mov	ecx, [ebp+var_10]
		sar	ecx, 2
		jz	short loc_401C1D
		lea	edx, [ebp+lpString2]
		push	edx		; lpdwResult
		push	ecx		; uTimeout
		push	ebx		; fuFlags
		push	[ebp+FilePart]	; lParam
		push	[ebp+Rect.bottom] ; wParam
		push	eax		; Msg
		push	edi		; hWnd
		call	ds:SendMessageTimeoutA
		neg	eax
		sbb	eax, eax
		inc	eax
		mov	[ebp+var_4], eax
		jmp	short loc_401C5C
; ---------------------------------------------------------------------------

loc_401C1D:				; CODE XREF: sub_401434+7C9j
		push	[ebp+FilePart]	; lParam
		push	[ebp+Rect.bottom] ; wParam
		push	eax		; Msg
		push	edi		; hWnd
		call	ds:SendMessageA
		jmp	short loc_401C59
; ---------------------------------------------------------------------------

loc_401C2D:				; CODE XREF: sub_401434+7B3j
		call	sub_4029F6
		push	12h
		mov	edi, eax
		call	sub_4029F6
		mov	cl, [eax]
		neg	cl
		sbb	ecx, ecx
		and	ecx, eax
		mov	al, [edi]
		neg	al
		sbb	eax, eax
		push	ecx		; lpszWindow
		and	eax, edi
		push	eax		; lpszClass
		push	[ebp+FilePart]	; hWndChildAfter
		push	[ebp+Rect.bottom] ; hWndParent
		call	ds:FindWindowExA

loc_401C59:				; CODE XREF: sub_401434+7F7j
		mov	[ebp+lpString2], eax

loc_401C5C:				; CODE XREF: sub_401434+7E7j
		cmp	[ebp+var_24], ebx
		jl	loc_40288B	; jumptable 00401489 default case
		push	[ebp+lpString2]
		jmp	loc_401561
; ---------------------------------------------------------------------------

loc_401C6D:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		push	ebx		; jumptable 00401489 case 34
		call	sub_4029D9
		push	eax		; hWnd
		call	ds:IsWindow

loc_401C7A:				; CODE XREF: sub_401434+20Cj
		test	eax, eax
		jz	loc_4019D6
		mov	eax, [ebp+nCmdShow]
		jmp	loc_402896	; jumptable 00401489 case 2
; ---------------------------------------------------------------------------

loc_401C8A:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		push	2		; jumptable 00401489 case 35
		call	sub_4029D9
		push	eax		; nIDDlgItem
		push	1
		call	sub_4029D9
		push	eax		; hDlg
		call	ds:GetDlgItem
		jmp	loc_4024B8
; ---------------------------------------------------------------------------

loc_401CA5:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		mov	eax, dword_423EE8 ; jumptable 00401489 case 36
		add	eax, edx
		push	eax		; dwNewLong
		push	0FFFFFFEBh	; nIndex
		push	ebx
		call	sub_4029D9
		push	eax		; hWnd
		call	ds:SetWindowLongA
		jmp	loc_40288B	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_401CC1:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		push	edx		; jumptable 00401489 case 37
		push	[ebp+Rect.bottom] ; hDlg
		call	ds:GetDlgItem
		mov	esi, eax
		lea	eax, [ebp+Rect]
		push	eax		; lpRect
		push	esi		; hWnd
		call	ds:GetClientRect
		mov	eax, [ebp+Rect.bottom]
		push	10h		; fuLoad
		imul	eax, [ebp+dwBytes]
		push	eax		; cy
		mov	eax, [ebp+Rect.right]
		imul	eax, [ebp+dwBytes]
		push	eax		; cx
		push	ebx		; type
		push	ebx
		call	sub_4029F6
		push	eax		; name
		push	ebx		; hInst
		call	ds:LoadImageA
		push	eax		; lParam
		push	ebx		; wParam
		push	172h		; Msg
		push	esi		; hWnd
		call	ds:SendMessageA
		cmp	eax, ebx
		jz	loc_40288B	; jumptable 00401489 default case
		push	eax		; ho
		call	ds:DeleteObject
		jmp	loc_40288B	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_401D1B:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		push	48h		; jumptable 00401489 case 38
		push	5Ah		; index
		push	[ebp+Rect.bottom] ; hWnd
		call	ds:GetDC
		push	eax		; hdc
		call	ds:GetDeviceCaps
		push	eax		; nNumerator
		push	2
		call	sub_4029D9
		push	eax		; nNumber
		call	ds:MulDiv
		neg	eax
		push	3
		mov	lf.lfHeight, eax
		call	sub_4029D9
		mov	lf.lfWeight, eax
		mov	al, byte ptr [ebp+FileTime2.dwHighDateTime]
		push	[ebp+nCmdShow]	; int
		mov	cl, al
		and	cl, 1
		mov	lf.lfCharSet, 1
		mov	lf.lfItalic, cl
		mov	cl, al
		and	cl, 2
		and	al, 4
		push	offset lf.lfFaceName ; lpString1
		mov	lf.lfUnderline,	cl
		mov	lf.lfStrikeOut,	al
		call	sub_405B88
		push	offset lf	; lplf
		call	ds:CreateFontIndirectA
		jmp	loc_4024B8
; ---------------------------------------------------------------------------

loc_401D95:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		push	ebx		; jumptable 00401489 case 39
		call	sub_4029D9
		push	1
		mov	esi, eax
		call	sub_4029D9
		cmp	[ebp+FileTime2.dwLowDateTime], ebx
		push	eax		; bEnable
		push	esi		; hWnd
		jnz	short loc_401DB6
		call	ds:ShowWindow
		jmp	loc_40288B	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_401DB6:				; CODE XREF: sub_401434+975j
		call	ds:EnableWindow
		jmp	loc_40288B	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_401DC1:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		push	ebx		; jumptable 00401489 case 40
		call	sub_4029F6
		push	31h
		mov	esi, eax
		call	sub_4029F6
		push	22h
		mov	ebx, eax
		call	sub_4029F6
		push	15h
		mov	edi, eax
		call	sub_4029F6
		push	0FFFFFFECh
		call	sub_401423
		mov	al, [edi]
		push	[ebp+FileTime2.dwLowDateTime] ;	nShowCmd
		neg	al
		sbb	eax, eax
		push	offset Directory ; lpDirectory
		and	eax, edi
		push	eax		; lpParameters
		mov	al, [esi]
		neg	al
		sbb	eax, eax
		push	ebx		; lpFile
		and	eax, esi
		push	eax		; lpOperation
		push	[ebp+Rect.bottom] ; hwnd
		call	ds:ShellExecuteA
		cmp	eax, 21h
		jge	loc_40288B	; jumptable 00401489 default case
		jmp	loc_40265C
; ---------------------------------------------------------------------------

loc_401E1B:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		push	ebx		; jumptable 00401489 case 41
		call	sub_4029F6
		mov	esi, eax
		push	esi		; lpString
		push	0FFFFFFEBh	; int
		call	sub_404F04
		push	esi		; lpCommandLine
		call	sub_4053C6
		cmp	eax, ebx
		mov	[ebp+FilePart],	eax
		jz	loc_40265C
		cmp	[ebp+dwBytes], ebx
		jz	short loc_401E87
		mov	esi, ds:WaitForSingleObject
		jmp	short loc_401E50
; ---------------------------------------------------------------------------

loc_401E49:				; CODE XREF: sub_401434+A28j
		push	0Fh		; wMsgFilterMin
		call	sub_405EC1

loc_401E50:				; CODE XREF: sub_401434+A13j
		push	64h		; dwMilliseconds
		push	[ebp+FilePart]	; hHandle
		call	esi ; WaitForSingleObject
		cmp	eax, 102h
		jz	short loc_401E49
		lea	eax, [ebp+lpString2]
		push	eax		; lpExitCode
		push	[ebp+FilePart]	; hProcess
		call	ds:GetExitCodeProcess
		cmp	[ebp+nCmdShow],	ebx
		jl	short loc_401E7B
		push	[ebp+lpString2]	; int
		push	edi		; LPSTR
		call	sub_405AC4
		jmp	short loc_401E87
; ---------------------------------------------------------------------------

loc_401E7B:				; CODE XREF: sub_401434+A3Aj
		cmp	[ebp+lpString2], ebx
		jz	short loc_401E87
		mov	[ebp+var_4], 1

loc_401E87:				; CODE XREF: sub_401434+A0Bj
					; sub_401434+A45j ...
		push	[ebp+FilePart]	; hObject

loc_401E8A:				; CODE XREF: sub_401434+1063j
		call	ds:CloseHandle
		jmp	loc_40288B	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_401E95:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		push	2		; jumptable 00401489 case 42
		call	sub_4029F6
		push	eax		; lpFileName
		call	sub_405E61
		cmp	eax, ebx
		mov	[ebp+FilePart],	eax
		jz	short loc_401EBC
		mov	ebx, eax
		push	dword ptr [ebx+14h] ; int
		push	edi		; LPSTR
		call	sub_405AC4
		push	dword ptr [ebx+18h]
		jmp	loc_401561
; ---------------------------------------------------------------------------

loc_401EBC:				; CODE XREF: sub_401434+A73j
		mov	[esi], bl
		mov	[edi], bl
		jmp	loc_40265C
; ---------------------------------------------------------------------------

loc_401EC5:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		push	0FFFFFFEEh	; jumptable 00401489 case 43
		call	sub_4029F6
		lea	ecx, [ebp+dwHandle]
		mov	[ebp+lptstrFilename], eax
		push	ecx		; lpdwHandle
		push	eax		; lptstrFilename
		call	GetFileVersionInfoSizeA
		mov	[esi], bl
		cmp	eax, ebx
		mov	[ebp+lpString2], eax
		mov	[edi], bl
		mov	[ebp+var_4], 1
		jz	loc_40288B	; jumptable 00401489 default case
		push	eax		; dwBytes
		push	40h		; uFlags
		call	ds:GlobalAlloc
		cmp	eax, ebx
		mov	[ebp+FilePart],	eax
		jz	loc_40288B	; jumptable 00401489 default case
		push	eax		; lpData
		push	[ebp+lpString2]	; dwLen
		push	ebx		; dwHandle
		push	[ebp+lptstrFilename] ; lptstrFilename
		call	GetFileVersionInfoA
		test	eax, eax
		jz	short loc_401F48
		lea	eax, [ebp+puLen]
		push	eax		; puLen
		lea	eax, [ebp+Rect.bottom]
		push	eax		; lplpBuffer
		push	offset SubBlock	; "\\"
		push	[ebp+FilePart]	; pBlock
		call	VerQueryValueA
		test	eax, eax
		jz	short loc_401F48
		mov	eax, [ebp+Rect.bottom]
		push	dword ptr [eax+8] ; int
		push	esi		; LPSTR
		call	sub_405AC4
		mov	eax, [ebp+Rect.bottom]
		push	dword ptr [eax+0Ch] ; int
		push	edi		; LPSTR
		call	sub_405AC4
		mov	[ebp+var_4], ebx

loc_401F48:				; CODE XREF: sub_401434+ADEj
					; sub_401434+AF7j
		push	[ebp+FilePart]
		jmp	loc_401B75
; ---------------------------------------------------------------------------

loc_401F50:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		cmp	dword_423F58, ebx ; jumptable 00401489 case 44
		mov	[ebp+var_4], 1
		jl	loc_402019
		push	0FFFFFFF0h
		call	sub_4029F6
		push	1
		mov	esi, eax
		call	sub_4029F6
		cmp	[ebp+FileTime2.dwHighDateTime],	ebx
		mov	[ebp+FilePart],	eax
		jz	short loc_401F88
		push	esi		; lpModuleName
		call	ds:GetModuleHandleA
		mov	edi, eax
		cmp	edi, ebx
		jnz	short loc_401F98

loc_401F88:				; CODE XREF: sub_401434+B45j
		push	8		; dwFlags
		push	ebx		; hFile
		push	esi		; lpLibFileName
		call	ds:LoadLibraryExA
		mov	edi, eax
		cmp	edi, ebx
		jz	short loc_402012

loc_401F98:				; CODE XREF: sub_401434+B52j
		push	[ebp+FilePart]	; lpProcName
		push	edi		; hModule
		call	ds:GetProcAddress
		mov	esi, eax
		cmp	esi, ebx
		jz	short loc_401FE5
		cmp	[ebp+dwBytes], ebx
		mov	[ebp+var_4], ebx
		jz	short loc_401FC7
		push	[ebp+dwBytes]
		call	sub_401423
		call	esi
		test	eax, eax
		jz	short loc_401FEF
		mov	[ebp+var_4], 1
		jmp	short loc_401FEF
; ---------------------------------------------------------------------------

loc_401FC7:				; CODE XREF: sub_401434+B7Aj
		push	offset off_409000
		push	offset hMem
		push	offset dword_424000
		push	400h
		push	[ebp+Rect.bottom]
		call	esi
		add	esp, 14h
		jmp	short loc_401FEF
; ---------------------------------------------------------------------------

loc_401FE5:				; CODE XREF: sub_401434+B72j
		push	[ebp+FilePart]	; lpString
		push	0FFFFFFF7h	; int
		call	sub_404F04

loc_401FEF:				; CODE XREF: sub_401434+B88j
					; sub_401434+B91j ...
		cmp	[ebp+FileTime2.dwLowDateTime], ebx
		jnz	loc_40288B	; jumptable 00401489 default case
		push	edi
		call	sub_40364F
		test	eax, eax
		jz	loc_40288B	; jumptable 00401489 default case
		push	edi		; hLibModule
		call	ds:FreeLibrary
		jmp	loc_40288B	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_402012:				; CODE XREF: sub_401434+B62j
		push	0FFFFFFF6h
		jmp	loc_402164
; ---------------------------------------------------------------------------

loc_402019:				; CODE XREF: sub_401434+B29j
		push	0FFFFFFE7h
		jmp	loc_402164
; ---------------------------------------------------------------------------

loc_402020:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		push	0FFFFFFF0h	; jumptable 00401489 case 45
		call	sub_4029F6
		push	0FFFFFFDFh
		mov	[ebp+dwHandle],	eax
		call	sub_4029F6
		push	2
		mov	esi, eax
		call	sub_4029F6
		push	0FFFFFFCDh
		mov	[ebp+lptstrFilename], eax
		call	sub_4029F6
		push	45h
		mov	[ebp+lpString2], eax
		call	sub_4029F6
		push	esi
		mov	[ebp+puLen], eax
		call	sub_4056C6
		test	eax, eax
		jnz	short loc_402062
		push	21h
		call	sub_4029F6

loc_402062:				; CODE XREF: sub_401434+C25j
		lea	eax, [ebp+FilePart]
		push	eax		; ppv
		push	offset riid	; riid
		push	1		; dwClsContext
		push	ebx		; pUnkOuter
		push	offset rclsid	; rclsid
		call	ds:CoCreateInstance
		cmp	eax, ebx
		jl	loc_40215B
		mov	eax, [ebp+FilePart]
		lea	edx, [ebp+Rect.bottom]
		push	edx
		push	offset dword_407394
		mov	ecx, [eax]
		push	eax
		call	dword ptr [ecx]
		mov	edi, eax
		cmp	edi, ebx
		jl	loc_40214E
		mov	eax, [ebp+FilePart]
		push	esi
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+50h]
		mov	edi, eax
		mov	eax, [ebp+FilePart]
		push	offset Directory
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+24h]
		mov	ecx, [ebp+FileTime2.dwHighDateTime]
		mov	esi, 0FFh
		mov	eax, ecx
		sar	eax, 8
		and	eax, esi
		jz	short loc_4020D4
		mov	ecx, [ebp+FilePart]
		push	eax
		push	ecx
		mov	edx, [ecx]
		call	dword ptr [edx+3Ch]
		mov	ecx, [ebp+FileTime2.dwHighDateTime]

loc_4020D4:				; CODE XREF: sub_401434+C91j
		mov	eax, [ebp+FilePart]
		sar	ecx, 10h
		mov	edx, [eax]
		push	ecx
		push	eax
		call	dword ptr [edx+34h]
		mov	eax, [ebp+lpString2]
		cmp	[eax], bl
		jz	short loc_4020FA
		mov	edx, [ebp+FileTime2.dwHighDateTime]
		mov	eax, [ebp+FilePart]
		and	edx, esi
		mov	ecx, [eax]
		push	edx
		push	[ebp+lpString2]
		push	eax
		call	dword ptr [ecx+44h]

loc_4020FA:				; CODE XREF: sub_401434+CB2j
		mov	eax, [ebp+FilePart]
		push	[ebp+lptstrFilename]
		mov	ecx, [eax]
		push	eax
		call	dword ptr [ecx+2Ch]
		mov	eax, [ebp+FilePart]
		push	[ebp+puLen]
		mov	ecx, [eax]
		push	eax
		call	dword ptr [ecx+1Ch]
		cmp	edi, ebx
		jl	short loc_402145
		mov	esi, offset WideCharStr
		push	400h		; cchWideChar
		push	esi		; lpWideCharStr
		push	0FFFFFFFFh	; cbMultiByte
		push	[ebp+dwHandle]	; lpMultiByteStr
		mov	edi, 80004005h
		push	ebx		; dwFlags
		push	ebx		; CodePage
		call	ds:MultiByteToWideChar
		test	eax, eax
		jz	short loc_402145
		mov	eax, [ebp+Rect.bottom]
		push	1
		push	esi
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+18h]
		mov	edi, eax

loc_402145:				; CODE XREF: sub_401434+CE0j
					; sub_401434+D01j
		mov	eax, [ebp+Rect.bottom]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]

loc_40214E:				; CODE XREF: sub_401434+C62j
		mov	eax, [ebp+FilePart]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		cmp	edi, ebx
		jge	short loc_40216E

loc_40215B:				; CODE XREF: sub_401434+C47j
		mov	[ebp+var_4], 1
		push	0FFFFFFF0h

loc_402164:				; CODE XREF: sub_401434+1FBj
					; sub_401434+238j ...
		call	sub_401423
		jmp	loc_40288B	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_40216E:				; CODE XREF: sub_401434+D25j
		push	0FFFFFFF4h
		jmp	short loc_402164
; ---------------------------------------------------------------------------

loc_402172:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		push	ebx		; jumptable 00401489 case 46
		call	sub_4029F6
		push	11h
		mov	esi, eax
		call	sub_4029F6
		push	23h
		mov	edi, eax
		call	sub_4029F6
		push	esi		; lpFileName
		mov	[ebp+FilePart],	eax
		call	sub_405E61
		test	eax, eax
		jnz	short loc_4021A4

loc_402197:				; CODE XREF: sub_401434+DBEj
		push	ebx		; lpString
		push	0FFFFFFF9h	; int
		call	sub_404F04
		jmp	loc_40265C
; ---------------------------------------------------------------------------

loc_4021A4:				; CODE XREF: sub_401434+D61j
		mov	eax, [ebp+Rect.bottom]
		push	esi		; lpString
		mov	[ebp+FileOp.hwnd], eax
		mov	[ebp+FileOp.wFunc], 2
		call	lstrlenA
		push	edi		; lpString
		mov	[eax+esi+1], bl
		call	lstrlenA
		mov	[eax+edi+1], bl
		mov	eax, [ebp+FilePart]
		mov	cx, word ptr [ebp+dwBytes]
		push	eax		; lpString
		push	ebx		; int
		mov	[ebp+FileOp.pFrom], esi
		mov	[ebp+FileOp.pTo], edi
		mov	[ebp+FileOp.lpszProgressTitle],	eax
		mov	[ebp+FileOp.fFlags], cx
		call	sub_404F04
		lea	eax, [ebp+FileOp]
		push	eax		; lpFileOp
		call	ds:SHFileOperationA
		test	eax, eax
		jz	loc_40288B	; jumptable 00401489 default case
		jmp	short loc_402197
; ---------------------------------------------------------------------------

loc_4021F4:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		cmp	eax, 0BADF00Dh	; jumptable 00401489 case 47
		jz	short loc_402218

loc_4021FB:				; CODE XREF: sub_401434+6E2j
					; sub_401434+6F0j
		push	200010h
		push	0FFFFFFE8h	; int
		push	ebx		; lpString1
		call	sub_405B88
		push	eax

loc_402209:				; CODE XREF: sub_401434+49Fj
		call	sub_405427

loc_40220E:				; CODE XREF: sub_401434+63j
					; sub_401434+71j ...
		mov	eax, 7FFFFFFFh
		jmp	loc_402896	; jumptable 00401489 case 2
; ---------------------------------------------------------------------------

loc_402218:				; CODE XREF: sub_401434+DC5j
		inc	dword_423F34
		jmp	loc_40288B	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_402223:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		xor	esi, esi	; jumptable 00401489 case 48
		xor	edi, edi
		cmp	eax, ebx
		jz	short loc_402236
		push	ebx
		call	sub_4029F6
		mov	edx, [ebp+nCmdShow]
		mov	esi, eax

loc_402236:				; CODE XREF: sub_401434+DF5j
		cmp	edx, ebx
		jz	short loc_402243
		push	11h
		call	sub_4029F6
		mov	edi, eax

loc_402243:				; CODE XREF: sub_401434+E04j
		cmp	[ebp+FileTime2.dwHighDateTime],	ebx
		jz	short loc_402251
		push	22h
		call	sub_4029F6
		mov	ebx, eax

loc_402251:				; CODE XREF: sub_401434+E12j
		push	0FFFFFFCDh
		call	sub_4029F6
		push	eax		; lpFileName
		push	ebx		; lpString
		push	edi		; lpKeyName
		push	esi		; lpAppName
		call	ds:WritePrivateProfileStringA
		jmp	loc_4015A6
; ---------------------------------------------------------------------------

loc_402267:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		push	1		; jumptable 00401489 case 49
		mov	[ebp+FilePart],	7E4E21h
		call	sub_4029F6
		push	12h
		mov	edi, eax
		call	sub_4029F6
		push	0FFFFFFDDh
		mov	[ebp+dwHandle],	eax
		call	sub_4029F6
		push	eax		; lpFileName
		push	3FFh		; nSize
		lea	eax, [ebp+FilePart]
		push	esi		; lpReturnedString
		push	eax		; lpDefault
		push	[ebp+dwHandle]	; lpKeyName
		push	edi		; lpAppName
		call	ds:GetPrivateProfileStringA
		mov	eax, [esi]
		cmp	eax, [ebp+FilePart]
		jmp	loc_401716
; ---------------------------------------------------------------------------

loc_4022A7:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		cmp	[ebp+FileTime2.dwHighDateTime],	ebx ; jumptable	00401489 case 50
		jnz	short loc_4022D7
		push	2		; phkResult
		call	sub_402B00
		mov	esi, eax
		cmp	esi, ebx
		jz	loc_40265C
		push	33h
		call	sub_4029F6
		push	eax		; lpValueName
		push	esi		; hKey
		call	ds:RegDeleteValueA
		push	esi		; hKey
		mov	edi, eax
		call	ds:RegCloseKey
		jmp	short loc_4022F6
; ---------------------------------------------------------------------------

loc_4022D7:				; CODE XREF: sub_401434+E76j
		push	22h
		call	sub_4029F6
		mov	ecx, [ebp+FileTime2.dwHighDateTime]
		and	ecx, 2
		push	ecx		; int
		push	eax		; lpSubKey
		push	[ebp+nCmdShow]
		call	sub_402AEB
		push	eax		; hKey
		call	sub_402A36
		mov	edi, eax

loc_4022F6:				; CODE XREF: sub_401434+EA1j
		cmp	edi, ebx
		jz	loc_40288B	; jumptable 00401489 default case
		jmp	loc_40265C
; ---------------------------------------------------------------------------

loc_402303:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		push	eax		; jumptable 00401489 case 51
		call	sub_402AEB
		mov	esi, [ebp+FileTime2.dwHighDateTime]
		mov	edi, eax
		mov	eax, [ebp+var_10]
		push	2
		mov	[ebp+dwHandle],	eax
		call	sub_4029F6
		push	11h
		mov	[ebp+puLen], eax
		call	sub_4029F6
		lea	ecx, [ebp+FilePart]
		push	ebx		; lpdwDisposition
		push	ecx		; phkResult
		mov	ecx, dword_423F50
		or	ecx, 2
		push	ebx		; lpSecurityAttributes
		push	ecx		; samDesired
		push	ebx		; dwOptions
		push	ebx		; lpClass
		push	ebx		; Reserved
		push	eax		; lpSubKey
		push	edi		; hKey
		mov	[ebp+var_4], 1
		call	ds:RegCreateKeyExA
		test	eax, eax
		jnz	loc_40288B	; jumptable 00401489 default case
		cmp	esi, 1
		mov	edi, offset Buffer
		jnz	short loc_402367
		push	23h
		call	sub_4029F6
		push	edi		; lpString
		call	lstrlenA
		inc	eax

loc_402367:				; CODE XREF: sub_401434+F23j
		cmp	esi, 4
		jnz	short loc_40237A
		push	3
		call	sub_4029D9
		push	esi
		mov	Buffer,	eax
		pop	eax

loc_40237A:				; CODE XREF: sub_401434+F36j
		cmp	esi, 3
		jnz	short loc_40238E
		push	0C00h		; NumberOfBytesWritten
		push	edi		; lpBuffer
		push	ebx		; hFile
		push	[ebp+FileTime2.dwLowDateTime] ;	Buffer
		call	sub_402F18

loc_40238E:				; CODE XREF: sub_401434+F49j
		push	eax		; cbData
		push	edi		; lpData
		push	[ebp+dwHandle]	; dwType
		push	ebx		; Reserved
		push	[ebp+puLen]	; lpValueName
		push	[ebp+FilePart]	; hKey
		call	ds:RegSetValueExA
		test	eax, eax
		jnz	short loc_4023A7
		mov	[ebp+var_4], ebx

loc_4023A7:				; CODE XREF: sub_401434+F6Ej
		push	[ebp+FilePart]
		jmp	loc_40247D
; ---------------------------------------------------------------------------

loc_4023AF:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		push	20019h		; jumptable 00401489 case 52
		call	sub_402B00
		push	33h
		mov	edi, eax
		call	sub_4029F6
		cmp	edi, ebx
		mov	[esi], bl
		jz	loc_40265C
		lea	ecx, [ebp+lpString2]
		mov	[ebp+lpString2], 3FFh
		push	ecx		; lpcbData
		lea	ecx, [ebp+FilePart]
		push	esi		; lpData
		push	ecx		; lpType
		push	ebx		; lpReserved
		push	eax		; lpValueName
		push	edi		; hKey
		call	ds:RegQueryValueExA
		xor	ecx, ecx
		inc	ecx
		test	eax, eax
		jnz	short loc_402420
		cmp	[ebp+FilePart],	4
		jz	short loc_40240B
		cmp	[ebp+FilePart],	ecx
		jz	short loc_4023FD
		cmp	[ebp+FilePart],	2
		jnz	short loc_402420

loc_4023FD:				; CODE XREF: sub_401434+FC1j
		mov	eax, [ebp+FileTime2.dwHighDateTime]
		mov	[ebp+var_4], eax
		mov	eax, [ebp+lpString2]
		mov	[eax+esi], bl
		jmp	short loc_40247C
; ---------------------------------------------------------------------------

loc_40240B:				; CODE XREF: sub_401434+FBCj
		push	dword ptr [esi]	; int
		xor	eax, eax
		cmp	[ebp+FileTime2.dwHighDateTime],	ebx
		push	esi		; LPSTR
		setz	al
		mov	[ebp+var_4], eax
		call	sub_405AC4
		jmp	short loc_40247C
; ---------------------------------------------------------------------------

loc_402420:				; CODE XREF: sub_401434+FB6j
					; sub_401434+FC7j
		mov	[esi], bl
		mov	[ebp+var_4], ecx
		jmp	short loc_40247C
; ---------------------------------------------------------------------------

loc_402427:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		push	20019h		; jumptable 00401489 case 53
		call	sub_402B00
		push	3
		mov	edi, eax
		call	sub_4029D9
		cmp	edi, ebx
		mov	[esi], bl
		jz	loc_40265C
		cmp	[ebp+FileTime2.dwHighDateTime],	ebx
		mov	ecx, 3FFh
		mov	[ebp+FilePart],	ecx
		jz	short loc_40245D
		push	ecx		; cchName
		push	esi		; lpName
		push	eax		; dwIndex
		push	edi		; hKey
		call	ds:RegEnumKeyA
		jmp	short loc_402476
; ---------------------------------------------------------------------------

loc_40245D:				; CODE XREF: sub_401434+101Bj
		push	ebx		; lpcbData
		push	ebx		; lpData
		push	ebx		; lpType
		lea	ecx, [ebp+FilePart]
		push	ebx		; lpReserved
		push	ecx		; lpcchValueName
		push	esi		; lpValueName
		push	eax		; dwIndex
		push	edi		; hKey
		call	ds:RegEnumValueA
		test	eax, eax
		jnz	loc_40265C

loc_402476:				; CODE XREF: sub_401434+1027j
		mov	[esi+3FFh], bl

loc_40247C:				; CODE XREF: sub_401434+FD5j
					; sub_401434+FEAj ...
		push	edi		; hKey

loc_40247D:				; CODE XREF: sub_401434+F76j
		call	ds:RegCloseKey
		jmp	loc_40288B	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_402488:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		cmp	[esi], bl	; jumptable 00401489 case 54
		jz	loc_40288B	; jumptable 00401489 default case
		push	esi
		call	sub_405ADD
		push	eax
		jmp	loc_401E8A
; ---------------------------------------------------------------------------

loc_40249C:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		push	0FFFFFFEDh	; jumptable 00401489 case 55
		call	sub_4029F6
		push	[ebp+dwBytes]	; dwCreationDisposition
		push	[ebp+nCmdShow]	; dwDesiredAccess
		push	eax		; lpFileName
		call	sub_40583D
		cmp	eax, 0FFFFFFFFh
		jz	loc_40265A

loc_4024B8:				; CODE XREF: sub_401434+4FBj
					; sub_401434+86Cj ...
		push	eax
		jmp	loc_401561
; ---------------------------------------------------------------------------

loc_4024BE:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		cmp	[ebp+dwBytes], ebx ; jumptable 00401489	case 56
		jz	short loc_4024D4
		push	1
		call	sub_4029D9
		mov	byte_409F70, al
		xor	eax, eax
		inc	eax
		jmp	short loc_4024E1
; ---------------------------------------------------------------------------

loc_4024D4:				; CODE XREF: sub_401434+108Dj
		push	11h
		call	sub_4029F6
		push	eax		; lpString
		call	lstrlenA

loc_4024E1:				; CODE XREF: sub_401434+109Ej
		cmp	[esi], bl
		jz	loc_40265C
		lea	ecx, [ebp+FilePart]
		push	ebx		; lpOverlapped
		push	ecx		; lpNumberOfBytesWritten
		push	eax		; nNumberOfBytesToWrite
		push	offset byte_409F70 ; lpBuffer
		push	esi
		call	sub_405ADD
		push	eax		; hFile
		call	ds:WriteFile
		jmp	loc_4015A6
; ---------------------------------------------------------------------------

loc_402506:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		push	2		; jumptable 00401489 case 57
		mov	[ebp+lptstrFilename], ebx
		call	sub_4029D9
		cmp	eax, 1
		mov	[ebp+Rect.bottom], eax
		jl	loc_40288B	; jumptable 00401489 default case
		mov	ecx, 3FFh
		cmp	eax, ecx
		jle	short loc_402528
		mov	[ebp+Rect.bottom], ecx

loc_402528:				; CODE XREF: sub_401434+10EFj
		cmp	[esi], bl
		jz	loc_4025BE
		push	esi
		mov	byte ptr [ebp+FilePart+3], bl
		call	sub_405ADD
		cmp	[ebp+Rect.bottom], ebx
		mov	[ebp+lpString2], eax
		jle	short loc_4025BE
		mov	esi, [ebp+lptstrFilename]

loc_402544:				; CODE XREF: sub_401434+1150j
		lea	eax, [ebp+dwHandle]
		push	ebx		; lpOverlapped
		push	eax		; lpNumberOfBytesRead
		lea	eax, [ebp+Buffer]
		push	1		; nNumberOfBytesToRead
		push	eax		; lpBuffer
		push	[ebp+lpString2]	; hFile
		call	ds:ReadFile
		test	eax, eax
		jz	short loc_4025C1
		cmp	[ebp+dwHandle],	1
		jnz	short loc_4025C1
		cmp	[ebp+FileTime2.dwLowDateTime], ebx
		jnz	short loc_402588
		cmp	byte ptr [ebp+FilePart+3], 0Dh
		jz	short loc_402598
		cmp	byte ptr [ebp+FilePart+3], 0Ah
		jz	short loc_402598
		mov	al, [ebp+Buffer]
		mov	[esi+edi], al
		inc	esi
		cmp	al, bl
		mov	byte ptr [ebp+FilePart+3], al
		jz	short loc_4025C1
		cmp	esi, [ebp+Rect.bottom]
		jl	short loc_402544
		jmp	short loc_4025C1
; ---------------------------------------------------------------------------

loc_402588:				; CODE XREF: sub_401434+1131j
		movzx	eax, [ebp+Buffer]
		push	eax		; int
		push	edi		; LPSTR
		call	sub_405AC4
		jmp	loc_402894
; ---------------------------------------------------------------------------

loc_402598:				; CODE XREF: sub_401434+1137j
					; sub_401434+113Dj
		mov	al, [ebp+Buffer]
		cmp	byte ptr [ebp+FilePart+3], al
		jz	short loc_4025AE
		cmp	al, 0Dh
		jz	short loc_4025A8
		cmp	al, 0Ah
		jnz	short loc_4025AE

loc_4025A8:				; CODE XREF: sub_401434+116Ej
		mov	[esi+edi], al
		inc	esi
		jmp	short loc_4025C1
; ---------------------------------------------------------------------------

loc_4025AE:				; CODE XREF: sub_401434+116Aj
					; sub_401434+1172j
		push	1		; dwMoveMethod
		push	ebx		; lpDistanceToMoveHigh
		push	0FFFFFFFFh	; lDistanceToMove
		push	[ebp+lpString2]	; hFile
		call	ds:SetFilePointer
		jmp	short loc_4025C1
; ---------------------------------------------------------------------------

loc_4025BE:				; CODE XREF: sub_401434+10F6j
					; sub_401434+110Bj
		mov	esi, [ebp+lptstrFilename]

loc_4025C1:				; CODE XREF: sub_401434+1126j
					; sub_401434+112Cj ...
		mov	[esi+edi], bl
		cmp	esi, ebx
		jmp	loc_4015A8
; ---------------------------------------------------------------------------

loc_4025CB:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		cmp	[esi], bl	; jumptable 00401489 case 58
		jz	loc_40288B	; jumptable 00401489 default case
		push	[ebp+FileTime2.dwLowDateTime] ;	dwMoveMethod
		push	ebx		; lpDistanceToMoveHigh
		push	2
		call	sub_4029D9
		push	eax		; lDistanceToMove
		push	esi
		call	sub_405ADD
		push	eax		; hFile
		call	ds:SetFilePointer
		cmp	[ebp+nCmdShow],	ebx
		jl	loc_40288B	; jumptable 00401489 default case
		jmp	loc_402831
; ---------------------------------------------------------------------------

loc_4025FA:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		cmp	[esi], bl	; jumptable 00401489 case 59
		jz	loc_40288B	; jumptable 00401489 default case
		push	esi
		call	sub_405ADD
		push	eax		; hFindFile
		call	ds:FindClose
		jmp	loc_40288B	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_402614:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		cmp	[edi], bl	; jumptable 00401489 case 60
		jz	short loc_402630
		lea	eax, [ebp+FindFileData]
		push	eax		; lpFindFileData
		push	edi
		call	sub_405ADD
		push	eax		; hFindFile
		call	ds:FindNextFileA
		test	eax, eax
		jnz	short loc_40266F

loc_402630:				; CODE XREF: sub_401434+2E8j
					; sub_401434+11E2j
		mov	[ebp+var_4], 1
		mov	[esi], bl
		jmp	loc_40288B	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_40263E:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		push	2		; jumptable 00401489 case 61
		call	sub_4029F6
		lea	ecx, [ebp+FindFileData]
		push	ecx		; lpFindFileData
		push	eax		; lpFileName
		call	ds:FindFirstFileA
		cmp	eax, 0FFFFFFFFh
		jnz	short loc_402668
		mov	[edi], bl

loc_40265A:				; CODE XREF: sub_401434+107Ej
		mov	[esi], bl

loc_40265C:				; CODE XREF: sub_401434+17Aj
					; sub_401434+240j ...
		mov	[ebp+var_4], 1
		jmp	loc_40288B	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_402668:				; CODE XREF: sub_401434+1222j
		push	eax		; int
		push	edi		; LPSTR
		call	sub_405AC4

loc_40266F:				; CODE XREF: sub_401434+11FAj
		lea	eax, [ebp+FindFileData.cFileName]
		push	eax
		push	esi
		jmp	loc_4027B1
; ---------------------------------------------------------------------------

loc_40267C:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		push	0FFFFFFF0h	; jumptable 00401489 case 62
		mov	[ebp+lpString2], 0FFFFFD66h
		call	sub_4029F6
		mov	esi, eax
		push	esi
		mov	[ebp+puLen], esi
		call	sub_4056C6
		test	eax, eax
		jnz	short loc_4026A0
		push	0FFFFFFEDh
		call	sub_4029F6

loc_4026A0:				; CODE XREF: sub_401434+1263j
		push	esi		; lpFileName
		call	sub_40581E
		push	2		; dwCreationDisposition
		push	40000000h	; dwDesiredAccess
		push	esi		; lpFileName
		call	sub_40583D
		cmp	eax, 0FFFFFFFFh
		mov	[ebp+FilePart],	eax
		jz	loc_40275C
		mov	eax, dwBytes
		mov	esi, ds:GlobalAlloc
		push	eax		; dwBytes
		push	40h		; uFlags
		mov	[ebp+lptstrFilename], eax
		call	esi ; GlobalAlloc
		mov	edi, eax
		cmp	edi, ebx
		jz	short loc_402753
		push	ebx		; lDistanceToMove
		call	sub_4031F1
		push	[ebp+lptstrFilename] ; nNumberOfBytesToRead
		push	edi		; lpBuffer
		call	sub_4031BF
		push	[ebp+dwBytes]	; dwBytes
		push	40h		; uFlags
		call	esi ; GlobalAlloc
		mov	esi, eax
		cmp	esi, ebx
		mov	[ebp+dwHandle],	esi
		jz	short loc_40272B
		push	[ebp+dwBytes]	; NumberOfBytesWritten
		push	esi		; lpBuffer
		push	ebx		; hFile
		push	[ebp+nCmdShow]	; Buffer
		call	sub_402F18
		jmp	short loc_40271E
; ---------------------------------------------------------------------------

loc_402706:				; CODE XREF: sub_401434+12ECj
		mov	ecx, [esi]
		mov	eax, [esi+4]
		add	esi, 8
		push	ecx
		add	eax, edi
		push	esi
		push	eax
		mov	[ebp+Rect.right], ecx
		call	sub_4057FE
		add	esi, [ebp+Rect.right]

loc_40271E:				; CODE XREF: sub_401434+12D0j
		cmp	[esi], bl
		jnz	short loc_402706
		push	[ebp+dwHandle]	; hMem
		call	ds:GlobalFree

loc_40272B:				; CODE XREF: sub_401434+12C1j
		lea	eax, [ebp+lpString2]
		push	ebx		; lpOverlapped
		push	eax		; lpNumberOfBytesWritten
		push	[ebp+lptstrFilename] ; nNumberOfBytesToWrite
		push	edi		; lpBuffer
		push	[ebp+FilePart]	; hFile
		call	ds:WriteFile
		push	edi		; hMem
		call	ds:GlobalFree
		push	ebx		; NumberOfBytesWritten
		push	ebx		; lpBuffer
		push	[ebp+FilePart]	; hFile
		push	0FFFFFFFFh	; Buffer
		call	sub_402F18
		mov	[ebp+lpString2], eax

loc_402753:				; CODE XREF: sub_401434+12A2j
		push	[ebp+FilePart]	; hObject
		call	ds:CloseHandle

loc_40275C:				; CODE XREF: sub_401434+1285j
		cmp	[ebp+lpString2], ebx
		push	0FFFFFFF3h
		pop	esi
		jge	short loc_402777
		push	0FFFFFFEFh
		pop	esi
		push	[ebp+puLen]	; lpFileName
		call	ds:DeleteFileA
		mov	[ebp+var_4], 1

loc_402777:				; CODE XREF: sub_401434+132Ej
		push	esi
		jmp	loc_402164
; ---------------------------------------------------------------------------

loc_40277D:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		push	ebx		; jumptable 00401489 case 63
		call	sub_4029D9
		cmp	eax, dword_423ECC
		mov	[ebp+FilePart],	eax
		jnb	loc_40265C
		mov	esi, eax
		mov	eax, [ebp+dwBytes]
		imul	esi, 418h
		add	esi, dword_423EC8
		cmp	eax, ebx
		jl	short loc_4027BE
		mov	ecx, [esi+eax*4]
		jnz	short loc_4027BB
		add	esi, 18h
		push	esi		; lpString2
		push	edi		; lpString1

loc_4027B1:				; CODE XREF: sub_401434+71Ej
					; sub_401434+1243j
		call	sub_405B66
		jmp	loc_40288B	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_4027BB:				; CODE XREF: sub_401434+1376j
		push	ecx
		jmp	short loc_402832
; ---------------------------------------------------------------------------

loc_4027BE:				; CODE XREF: sub_401434+1371j
		or	ecx, 0FFFFFFFFh
		sub	ecx, eax
		mov	[ebp+dwBytes], ecx
		jz	short loc_4027D4
		push	1
		call	sub_4029D9
		mov	[ebp+nCmdShow],	eax
		jmp	short loc_4027E4
; ---------------------------------------------------------------------------

loc_4027D4:				; CODE XREF: sub_401434+1392j
		push	[ebp+FileTime2.dwHighDateTime] ; int
		lea	eax, [esi+18h]
		push	eax		; lpString1
		call	sub_405B88
		or	byte ptr [esi+9], 1

loc_4027E4:				; CODE XREF: sub_401434+139Ej
		mov	eax, [ebp+dwBytes]
		mov	ecx, [ebp+nCmdShow]
		mov	[esi+eax*4], ecx
		cmp	[ebp+FileTime2.dwLowDateTime], ebx
		jz	loc_40288B	; jumptable 00401489 default case
		push	[ebp+FilePart]
		call	sub_40117D
		jmp	loc_40288B	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_402803:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		push	ebx		; jumptable 00401489 case 64
		call	sub_4029D9
		cmp	eax, 20h
		jnb	loc_40265C
		cmp	[ebp+FileTime2.dwLowDateTime], ebx
		jz	short loc_40283A
		cmp	[ebp+dwBytes], ebx
		jz	short loc_40282B
		push	eax
		call	sub_401299
		push	ebx
		push	ebx
		call	sub_4011EF
		jmp	short loc_40288B ; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_40282B:				; CODE XREF: sub_401434+13E6j
		push	ebx
		call	sub_4012E2

loc_402831:				; CODE XREF: sub_401434+11C1j
		push	eax		; int

loc_402832:				; CODE XREF: sub_401434+1388j
		push	edi		; LPSTR

loc_402833:				; CODE XREF: sub_401434+12Ej
		call	sub_405AC4
		jmp	short loc_40288B ; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_40283A:				; CODE XREF: sub_401434+13E1j
		cmp	[ebp+dwBytes], ebx
		jz	short loc_402851
		mov	edx, dword_423EB0
		mov	ecx, [ebp+nCmdShow]
		mov	[edx+eax*4+94h], ecx
		jmp	short loc_40288B ; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_402851:				; CODE XREF: sub_401434+1409j
		mov	ecx, dword_423EB0
		push	dword ptr [ecx+eax*4+94h] ; int
		push	edi		; lpString1
		call	sub_405B88
		jmp	short loc_40288B ; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_402866:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_40289Do
		mov	ecx, dword_4214A0 ; jumptable 00401489 case 67
		push	ebx		; lParam
		and	ecx, eax
		push	ecx		; wParam
		push	0Bh		; Msg
		push	[ebp+Rect.bottom] ; hWnd
		call	ds:SendMessageA
		cmp	[ebp+var_24], ebx
		jz	short loc_40288B ; jumptable 00401489 default case
		push	ebx		; bErase
		push	ebx		; lpRect
		push	[ebp+Rect.bottom] ; hWnd
		call	ds:InvalidateRect

loc_40288B:				; CODE XREF: sub_401434+4Fj
					; sub_401434+55j ...
		mov	eax, [ebp+var_4] ; jumptable 00401489 default case
		add	dword_423F28, eax

loc_402894:				; CODE XREF: sub_401434+420j
					; sub_401434+115Fj
		xor	eax, eax

loc_402896:				; CODE XREF: sub_401434+55j
					; sub_401434+91j ...
		pop	edi		; jumptable 00401489 case 2
		pop	esi
		pop	ebx
		leave
		retn	4
sub_401434	endp

; ---------------------------------------------------------------------------
off_40289D	dd offset loc_402896, offset loc_401490, offset	loc_40149C
					; DATA XREF: sub_401434+55r
		dd offset loc_4014B7, offset loc_4014CA, offset	loc_4014D6 ; jump table	for switch statement
		dd offset loc_4014F0, offset loc_401567, offset	loc_401595
		dd offset loc_4015B3, offset loc_401634, offset	loc_4014FE
		dd offset loc_401539, offset loc_40155A, offset	loc_401645
		dd offset loc_401696, offset loc_4016FA, offset	loc_401721
		dd offset loc_401734, offset loc_4018D8, offset	loc_4018DB
		dd offset loc_40190D, offset loc_401922, offset	loc_401934
		dd offset loc_4019B5, offset loc_4019E6, offset	loc_401A26
		dd offset loc_401A58, offset loc_401AE5, offset	loc_401B06
		dd offset loc_401BAD, offset loc_401BAD, offset	loc_401C6D
		dd offset loc_401C8A, offset loc_401CA5, offset	loc_401CC1
		dd offset loc_401D1B, offset loc_401D95, offset	loc_401DC1
		dd offset loc_401E1B, offset loc_401E95, offset	loc_401EC5
		dd offset loc_401F50, offset loc_402020, offset	loc_402172
		dd offset loc_4021F4, offset loc_402223, offset	loc_402267
		dd offset loc_4022A7, offset loc_402303, offset	loc_4023AF
		dd offset loc_402427, offset loc_402488, offset	loc_40249C
		dd offset loc_4024BE, offset loc_402506, offset	loc_4025CB
		dd offset loc_4025FA, offset loc_402614, offset	loc_40263E
		dd offset loc_40267C, offset loc_40277D, offset	loc_402803
		dd offset loc_40288B, offset loc_40288B, offset	loc_402866
off_4029A5	dd offset loc_401A79	; DATA XREF: sub_401434+63Er
		dd offset loc_401A7D	; jump table for switch	statement
		dd offset loc_401A81
		dd offset loc_401A88
		dd offset loc_401A95
		dd offset loc_401A99
		dd offset loc_401A9D
		dd offset loc_401AA1
		dd offset loc_401AAA
		dd offset loc_401AB4
		dd offset loc_401AC1
		dd offset loc_401AD9
		dd offset loc_401ADD

; =============== S U B	R O U T	I N E =======================================


sub_4029D9	proc near		; CODE XREF: sub_401434+A3p
					; sub_401434+E0p ...

arg_0		= dword	ptr  4

		mov	eax, [esp+arg_0]
		mov	ecx, dword_409B68
		push	dword ptr [ecx+eax*4] ;	int
		push	0		; lpString1
		call	sub_405B88
		push	eax
		call	sub_405ADD
		retn	4
sub_4029D9	endp


; =============== S U B	R O U T	I N E =======================================


sub_4029F6	proc near		; CODE XREF: sub_401434+163p
					; sub_401434+181p ...

arg_0		= dword	ptr  4

		push	esi
		mov	esi, [esp+4+arg_0]
		test	esi, esi
		push	edi
		mov	eax, esi
		jge	short loc_402A04
		neg	eax

loc_402A04:				; CODE XREF: sub_4029F6+Aj
		mov	edx, dword_409B68
		mov	ecx, eax
		and	ecx, 0Fh
		sar	eax, 4
		push	dword ptr [edx+ecx*4] ;	int
		shl	eax, 0Ah
		add	eax, offset String1
		push	eax		; lpString1
		call	sub_405B88
		test	esi, esi
		mov	edi, eax
		jge	short loc_402A2F
		push	edi		; lpsz
		call	sub_405DC8

loc_402A2F:				; CODE XREF: sub_4029F6+31j
		mov	eax, edi
		pop	edi
		pop	esi
		retn	4
sub_4029F6	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_402A36(HKEY	hKey, LPCSTR lpSubKey, int)
sub_402A36	proc near		; CODE XREF: sub_401434+EBBp
					; sub_402A36+48p

Name		= byte ptr -10Ch
phkResult	= dword	ptr -4
hKey		= dword	ptr  8
lpSubKey	= dword	ptr  0Ch
arg_8		= dword	ptr  10h

		push	ebp
		mov	ebp, esp
		sub	esp, 10Ch
		push	ebx
		push	esi
		lea	eax, [ebp+phkResult]
		push	edi
		push	eax		; phkResult
		mov	eax, dword_423F50
		or	al, 8
		xor	ebx, ebx
		push	eax		; samDesired
		push	ebx		; ulOptions
		push	[ebp+lpSubKey]	; lpSubKey
		push	[ebp+hKey]	; hKey
		call	ds:RegOpenKeyExA
		cmp	eax, ebx
		jnz	short loc_402ACA
		mov	esi, ds:RegEnumKeyA
		mov	edi, 105h
		jmp	short loc_402A87
; ---------------------------------------------------------------------------

loc_402A6E:				; CODE XREF: sub_402A36+61j
		cmp	[ebp+arg_8], ebx
		jnz	short loc_402ABE
		lea	eax, [ebp+Name]
		push	ebx		; int
		push	eax		; lpSubKey
		push	[ebp+phkResult]	; hKey
		call	sub_402A36
		test	eax, eax
		jnz	short loc_402A99

loc_402A87:				; CODE XREF: sub_402A36+36j
		lea	eax, [ebp+Name]
		push	edi		; cchName
		push	eax		; lpName
		push	ebx		; dwIndex
		push	[ebp+phkResult]	; hKey
		call	esi ; RegEnumKeyA
		test	eax, eax
		jz	short loc_402A6E

loc_402A99:				; CODE XREF: sub_402A36+4Fj
		push	[ebp+phkResult]	; hKey
		call	ds:RegCloseKey
		push	2
		call	sub_405E88
		cmp	eax, ebx
		jz	short loc_402AD1
		push	ebx
		push	dword_423F50
		push	[ebp+lpSubKey]
		push	[ebp+hKey]
		call	eax
		jmp	short loc_402ACA
; ---------------------------------------------------------------------------

loc_402ABE:				; CODE XREF: sub_402A36+3Bj
		push	[ebp+phkResult]	; hKey
		call	ds:RegCloseKey

loc_402AC7:				; CODE XREF: sub_402A36+A1j
					; sub_402A36+B1j
		xor	eax, eax
		inc	eax

loc_402ACA:				; CODE XREF: sub_402A36+29j
					; sub_402A36+86j ...
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn	0Ch
; ---------------------------------------------------------------------------

loc_402AD1:				; CODE XREF: sub_402A36+75j
		cmp	dword_423F50, ebx
		jnz	short loc_402AC7
		push	[ebp+lpSubKey]	; lpSubKey
		push	[ebp+hKey]	; hKey
		call	ds:RegDeleteKeyA
		test	eax, eax
		jnz	short loc_402AC7
		jmp	short loc_402ACA
sub_402A36	endp


; =============== S U B	R O U T	I N E =======================================


sub_402AEB	proc near		; CODE XREF: sub_401434+EB5p
					; sub_401434+ED0p ...

arg_0		= dword	ptr  4

		mov	eax, [esp+arg_0]
		test	eax, eax
		jnz	short locret_402AFD
		mov	eax, dword_423F24
		add	eax, 80000001h

locret_402AFD:				; CODE XREF: sub_402AEB+6j
		retn	4
sub_402AEB	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_402B00(HKEY	phkResult)
sub_402B00	proc near		; CODE XREF: sub_401434+E7Ap
					; sub_401434+F80p ...

phkResult	= dword	ptr  8

		push	ebp
		mov	ebp, esp
		lea	eax, [ebp+phkResult]
		push	eax		; phkResult
		mov	eax, dword_423F50
		or	eax, [ebp+phkResult]
		push	eax		; samDesired
		push	0		; ulOptions
		push	22h
		call	sub_4029F6
		push	eax		; lpSubKey
		mov	eax, dword_409B68
		push	dword ptr [eax+4]
		call	sub_402AEB
		push	eax		; hKey
		call	ds:RegOpenKeyExA
		neg	eax
		sbb	eax, eax
		not	eax
		and	eax, [ebp+phkResult]
		pop	ebp
		retn	4
sub_402B00	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; INT_PTR __stdcall DialogFunc(HWND, UINT, WPARAM, LPARAM)
DialogFunc	proc near		; DATA XREF: sub_402BD3+7Ao

String		= byte ptr -40h
hWnd		= dword	ptr  8
arg_4		= dword	ptr  0Ch

		push	ebp
		mov	ebp, esp
		sub	esp, 40h
		cmp	[ebp+arg_4], 110h
		jnz	short loc_402B63
		push	0		; lpTimerFunc
		push	0FAh		; uElapse
		push	1		; nIDEvent
		push	[ebp+hWnd]	; hWnd
		call	ds:SetTimer
		mov	[ebp+arg_4], 113h

loc_402B63:				; CODE XREF: DialogFunc+Dj
		cmp	[ebp+arg_4], 113h
		jnz	short loc_402BB1
		call	sub_402BB7
		cmp	dword_423EB0, 0
		mov	ecx, offset aUnpackingDataD ; "unpacking data: %d%%"
		jnz	short loc_402B84
		mov	ecx, offset aVerifyingInsta ; "verifying installer: %d%%"

loc_402B84:				; CODE XREF: DialogFunc+42j
		push	eax
		lea	eax, [ebp+String]
		push	ecx		; LPCSTR
		push	eax		; LPSTR
		call	ds:wsprintfA
		add	esp, 0Ch
		lea	eax, [ebp+String]
		push	eax		; lpString
		push	[ebp+hWnd]	; hWnd
		call	ds:SetWindowTextA
		lea	eax, [ebp+String]
		push	eax		; lpString
		push	406h		; nIDDlgItem
		push	[ebp+hWnd]	; hDlg
		call	SetDlgItemTextA

loc_402BB1:				; CODE XREF: DialogFunc+2Fj
		xor	eax, eax
		leave
		retn	10h
DialogFunc	endp


; =============== S U B	R O U T	I N E =======================================


sub_402BB7	proc near		; CODE XREF: DialogFunc+31p
					; sub_402BD3+55p
		mov	ecx, dword_417040
		mov	eax, dword_41F050
		cmp	ecx, eax
		jl	short loc_402BC8
		mov	ecx, eax

loc_402BC8:				; CODE XREF: sub_402BB7+Dj
		push	eax		; nDenominator
		push	64h		; nNumerator
		push	ecx		; nNumber
		call	ds:MulDiv
		retn
sub_402BB7	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_402BD3	proc near		; CODE XREF: sub_402C72+149p
					; sub_402C72+17Ap ...

String		= byte ptr -40h
arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		sub	esp, 40h
		push	esi
		xor	esi, esi
		cmp	[ebp+arg_0], esi
		jz	short loc_402BF9
		mov	eax, dword_41704C
		cmp	eax, esi
		jz	short loc_402BF1
		push	eax		; hWnd
		call	ds:DestroyWindow

loc_402BF1:				; CODE XREF: sub_402BD3+15j
		mov	dword_41704C, esi
		jmp	short loc_402C6F
; ---------------------------------------------------------------------------

loc_402BF9:				; CODE XREF: sub_402BD3+Cj
		cmp	dword_41704C, esi
		jz	short loc_402C09
		push	esi		; wMsgFilterMin
		call	sub_405EC1
		jmp	short loc_402C6F
; ---------------------------------------------------------------------------

loc_402C09:				; CODE XREF: sub_402BD3+2Cj
		call	ds:GetTickCount
		cmp	eax, dword_423EAC
		jbe	short loc_402C6F
		cmp	hwnd, esi
		jz	short loc_402C4C
		test	byte ptr dword_423F54, 1
		jz	short loc_402C6F
		call	sub_402BB7
		push	eax
		lea	eax, [ebp+String]
		push	offset a___D	; "... %d%%"
		push	eax		; LPSTR
		call	ds:wsprintfA
		add	esp, 0Ch
		lea	eax, [ebp+String]
		push	eax		; lpString
		push	esi		; int
		call	sub_404F04
		jmp	short loc_402C6F
; ---------------------------------------------------------------------------

loc_402C4C:				; CODE XREF: sub_402BD3+4Aj
		push	esi		; dwInitParam
		push	offset DialogFunc ; lpDialogFunc
		push	esi		; hWndParent
		push	6Fh		; lpTemplateName
		push	hInstance	; hInstance
		call	ds:CreateDialogParamA
		push	5		; nCmdShow
		push	eax		; hWnd
		mov	dword_41704C, eax
		call	ds:ShowWindow

loc_402C6F:				; CODE XREF: sub_402BD3+24j
					; sub_402BD3+34j ...
		pop	esi
		leave
		retn
sub_402BD3	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_402C72(int Buffer)
sub_402C72	proc near		; CODE XREF: start+17Ap

FileName	= byte ptr -128h
var_24		= dword	ptr -24h
var_20		= dword	ptr -20h
var_1C		= dword	ptr -1Ch
var_18		= dword	ptr -18h
var_14		= dword	ptr -14h
dwBytes		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_8		= dword	ptr -8
var_4		= dword	ptr -4
Buffer		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		sub	esp, 128h
		push	ebx
		push	esi
		xor	ebx, ebx
		push	edi
		mov	[ebp+var_4], ebx
		mov	[ebp+var_8], ebx
		call	ds:GetTickCount
		mov	esi, offset ExistingFileName
		push	400h		; nSize
		add	eax, 3E8h
		push	esi		; lpFilename
		push	ebx		; hModule
		mov	dword_423EAC, eax
		call	ds:GetModuleFileNameA
		push	3		; dwCreationDisposition
		push	80000000h	; dwDesiredAccess
		push	esi		; lpFileName
		call	sub_40583D
		mov	edi, eax
		cmp	edi, 0FFFFFFFFh
		mov	hObject, edi
		jnz	short loc_402CCC
		mov	eax, offset aErrorLaunching ; "Error launching installer"
		jmp	loc_402F11
; ---------------------------------------------------------------------------

loc_402CCC:				; CODE XREF: sub_402C72+4Ej
		push	esi		; lpString2
		mov	esi, offset byte_429C00
		push	esi		; lpString1
		call	sub_405B66
		push	esi		; lpString
		call	sub_4056A0
		push	eax		; lpString2
		push	offset dword_42B000 ; lpString1
		call	sub_405B66
		push	ebx		; lpFileSizeHigh
		push	edi		; hFile
		call	ds:GetFileSize
		cmp	eax, ebx
		mov	dword_41F050, eax
		mov	esi, eax
		jle	loc_402DEA

loc_402D00:				; CODE XREF: sub_402C72+172j
		mov	eax, dwBytes
		mov	edi, esi
		neg	eax
		sbb	eax, eax
		and	eax, 7E00h
		add	eax, 200h
		cmp	esi, eax
		jl	short loc_402D1B
		mov	edi, eax

loc_402D1B:				; CODE XREF: sub_402C72+A5j
		push	edi		; nNumberOfBytesToRead
		push	offset dword_417050 ; lpBuffer
		call	sub_4031BF
		test	eax, eax
		jz	loc_402E85
		cmp	dwBytes, ebx
		jnz	short loc_402DB4
		push	1Ch
		lea	eax, [ebp+var_24]
		push	offset dword_417050
		push	eax
		call	sub_4057FE
		mov	eax, [ebp+var_24]
		test	eax, 0FFFFFFF0h
		jnz	short loc_402DC1
		cmp	[ebp+var_20], 0DEADBEEFh
		jnz	short loc_402DC1
		cmp	[ebp+var_14], 74736E49h
		jnz	short loc_402DC1
		cmp	[ebp+var_18], 74666F73h
		jnz	short loc_402DC1
		cmp	[ebp+var_1C], 6C6C754Eh
		jnz	short loc_402DC1
		or	[ebp+Buffer], eax
		mov	eax, [ebp+Buffer]
		mov	ecx, dword_417040
		and	eax, 2
		or	dword_423F40, eax
		mov	eax, [ebp+var_C]
		cmp	eax, esi
		mov	dwBytes, ecx
		jg	loc_402EC9
		test	byte ptr [ebp+Buffer], 8
		jnz	short loc_402DA6
		test	byte ptr [ebp+Buffer], 4
		jnz	short loc_402DEA

loc_402DA6:				; CODE XREF: sub_402C72+12Cj
		inc	[ebp+var_8]
		lea	esi, [eax-4]
		cmp	edi, esi
		jbe	short loc_402DC1
		mov	edi, esi
		jmp	short loc_402DC1
; ---------------------------------------------------------------------------

loc_402DB4:				; CODE XREF: sub_402C72+C2j
		test	byte ptr [ebp+Buffer], 2
		jnz	short loc_402DC1
		push	ebx
		call	sub_402BD3
		pop	ecx

loc_402DC1:				; CODE XREF: sub_402C72+DCj
					; sub_402C72+E5j ...
		cmp	esi, dword_41F050
		jge	short loc_402DDA
		push	edi
		push	offset dword_417050
		push	[ebp+var_4]
		call	sub_405EF4
		mov	[ebp+var_4], eax

loc_402DDA:				; CODE XREF: sub_402C72+155j
		add	dword_417040, edi
		sub	esi, edi
		cmp	esi, ebx
		jg	loc_402D00

loc_402DEA:				; CODE XREF: sub_402C72+88j
					; sub_402C72+132j
		push	1
		call	sub_402BD3
		cmp	dwBytes, ebx
		pop	ecx
		jz	loc_402EC9
		cmp	[ebp+var_8], ebx
		jz	short loc_402E2D
		push	dword_417040	; lDistanceToMove
		call	sub_4031F1
		lea	eax, [ebp+Buffer]
		push	4		; nNumberOfBytesToRead
		push	eax		; lpBuffer
		call	sub_4031BF
		test	eax, eax
		jz	loc_402EC9
		mov	eax, [ebp+var_4]
		cmp	eax, [ebp+Buffer]
		jnz	loc_402EC9

loc_402E2D:				; CODE XREF: sub_402C72+18Fj
		push	[ebp+dwBytes]	; dwBytes
		push	40h		; uFlags
		call	ds:GlobalAlloc
		mov	ecx, offset dword_40AFB8
		mov	esi, eax
		call	sub_405F62
		lea	eax, [ebp+FileName]
		push	offset PathName	; lpPathName
		push	eax		; PrefixString
		call	sub_40586C
		push	ebx		; hTemplateFile
		push	4000100h	; dwFlagsAndAttributes
		push	2		; dwCreationDisposition
		push	ebx		; lpSecurityAttributes
		push	ebx		; dwShareMode
		lea	eax, [ebp+FileName]
		push	0C0000000h	; dwDesiredAccess
		push	eax		; lpFileName
		call	ds:CreateFileA
		cmp	eax, 0FFFFFFFFh
		mov	hFile, eax
		jnz	short loc_402E8F
		mov	eax, offset aErrorWritingTe ; "Error writing temporary file. Make sure"...
		jmp	loc_402F11
; ---------------------------------------------------------------------------

loc_402E85:				; CODE XREF: sub_402C72+B6j
		push	1
		call	sub_402BD3
		pop	ecx
		jmp	short loc_402EC9
; ---------------------------------------------------------------------------

loc_402E8F:				; CODE XREF: sub_402C72+207j
		mov	eax, dwBytes
		add	eax, 1Ch
		push	eax		; lDistanceToMove
		call	sub_4031F1
		mov	ecx, [ebp+var_24]
		push	[ebp+dwBytes]	; NumberOfBytesWritten
		not	ecx
		and	ecx, 4
		mov	dword_41F054, eax
		sub	eax, ecx
		mov	ecx, [ebp+var_C]
		push	esi		; lpBuffer
		push	ebx		; hFile
		lea	eax, [eax+ecx-1Ch]
		push	0FFFFFFFFh	; Buffer
		mov	dword_417048, eax
		call	sub_402F18
		cmp	eax, [ebp+dwBytes]
		jz	short loc_402ED0

loc_402EC9:				; CODE XREF: sub_402C72+122j
					; sub_402C72+186j ...
		mov	eax, offset aInstallerInteg ; "Installer integrity check has failed. C"...
		jmp	short loc_402F11
; ---------------------------------------------------------------------------

loc_402ED0:				; CODE XREF: sub_402C72+255j
		test	byte ptr [ebp+var_24], 1
		mov	dword_423EB0, esi
		mov	eax, [esi]
		mov	dword_423EB8, eax
		jz	short loc_402EE9
		inc	dword_423EBC

loc_402EE9:				; CODE XREF: sub_402C72+26Fj
		push	8
		lea	eax, [esi+44h]
		pop	ecx

loc_402EEF:				; CODE XREF: sub_402C72+283j
		sub	eax, 8
		add	[eax], esi
		dec	ecx
		jnz	short loc_402EEF
		mov	eax, dword_417044
		push	40h
		mov	[esi+3Ch], eax
		add	esi, 4
		push	esi
		push	offset dword_423EC0
		call	sub_4057FE
		xor	eax, eax

loc_402F11:				; CODE XREF: sub_402C72+55j
					; sub_402C72+20Ej ...
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn	4
sub_402C72	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_402F18(int Buffer, HANDLE hFile, LPVOID lpBuffer, DWORD NumberOfBytesWritten)
sub_402F18	proc near		; CODE XREF: sub_401434+43Dp
					; sub_401434+F55p ...

var_8		= dword	ptr -8
NumberOfBytesRead= dword ptr -4
Buffer		= dword	ptr  8
hFile		= dword	ptr  0Ch
lpBuffer	= dword	ptr  10h
NumberOfBytesWritten= dword ptr	 14h

		push	ebp
		mov	ebp, esp
		push	ecx
		push	ecx
		mov	eax, [ebp+Buffer]
		push	ebx
		push	esi
		push	edi
		xor	edi, edi
		cmp	eax, edi
		jl	short loc_402F45
		mov	ecx, dword_423EF8
		push	edi		; dwMoveMethod
		add	eax, ecx
		push	edi		; lpDistanceToMoveHigh
		push	eax		; lDistanceToMove
		mov	dword_417044, eax
		push	hFile		; hFile
		call	ds:SetFilePointer

loc_402F45:				; CODE XREF: sub_402F18+Fj
		push	4
		pop	esi
		push	esi
		call	sub_403043
		cmp	eax, edi
		jl	loc_40303C
		lea	eax, [ebp+NumberOfBytesRead]
		mov	ebx, ds:ReadFile
		push	edi		; lpOverlapped
		push	eax		; lpNumberOfBytesRead
		lea	eax, [ebp+Buffer]
		push	esi		; nNumberOfBytesToRead
		push	eax		; lpBuffer
		push	hFile		; hFile
		call	ebx ; ReadFile
		test	eax, eax
		jz	loc_403039
		cmp	[ebp+NumberOfBytesRead], esi
		jnz	loc_403039
		push	[ebp+Buffer]
		add	dword_417044, esi
		call	sub_403043
		cmp	eax, edi
		mov	[ebp+var_8], eax
		jl	loc_40303C
		cmp	[ebp+lpBuffer],	edi
		jnz	short loc_403008
		cmp	[ebp+Buffer], edi
		jle	loc_403034
		mov	esi, offset dword_413040

loc_402FAB:				; CODE XREF: sub_402F18+E8j
		mov	edi, 4000h
		cmp	[ebp+Buffer], edi
		jge	short loc_402FB8
		mov	edi, [ebp+Buffer]

loc_402FB8:				; CODE XREF: sub_402F18+9Bj
		lea	eax, [ebp+NumberOfBytesRead]
		push	0		; lpOverlapped
		push	eax		; lpNumberOfBytesRead
		push	edi		; nNumberOfBytesToRead
		push	esi		; lpBuffer
		push	hFile		; hFile
		call	ebx ; ReadFile
		test	eax, eax
		jz	short loc_403039
		cmp	edi, [ebp+NumberOfBytesRead]
		jnz	short loc_403039
		lea	eax, [ebp+NumberOfBytesWritten]
		push	0		; lpOverlapped
		push	eax		; lpNumberOfBytesWritten
		push	[ebp+NumberOfBytesRead]	; nNumberOfBytesToWrite
		push	esi		; lpBuffer
		push	[ebp+hFile]	; hFile
		call	ds:WriteFile
		test	eax, eax
		jz	short loc_403004
		cmp	[ebp+NumberOfBytesWritten], edi
		jnz	short loc_403004
		mov	eax, [ebp+NumberOfBytesRead]
		add	[ebp+var_8], eax
		sub	[ebp+Buffer], eax
		add	dword_417044, eax
		cmp	[ebp+Buffer], 0
		jg	short loc_402FAB
		jmp	short loc_403034
; ---------------------------------------------------------------------------

loc_403004:				; CODE XREF: sub_402F18+CEj
					; sub_402F18+D3j
		push	0FFFFFFFEh
		jmp	short loc_40303B
; ---------------------------------------------------------------------------

loc_403008:				; CODE XREF: sub_402F18+83j
		mov	eax, [ebp+Buffer]
		cmp	eax, [ebp+NumberOfBytesWritten]
		jl	short loc_403013
		mov	eax, [ebp+NumberOfBytesWritten]

loc_403013:				; CODE XREF: sub_402F18+F6j
		lea	ecx, [ebp+NumberOfBytesRead]
		push	edi		; lpOverlapped
		push	ecx		; lpNumberOfBytesRead
		push	eax		; nNumberOfBytesToRead
		push	[ebp+lpBuffer]	; lpBuffer
		push	hFile		; hFile
		call	ebx ; ReadFile
		test	eax, eax
		jz	short loc_403039
		mov	eax, [ebp+NumberOfBytesRead]
		add	dword_417044, eax
		mov	[ebp+var_8], eax

loc_403034:				; CODE XREF: sub_402F18+88j
					; sub_402F18+EAj
		mov	eax, [ebp+var_8]
		jmp	short loc_40303C
; ---------------------------------------------------------------------------

loc_403039:				; CODE XREF: sub_402F18+58j
					; sub_402F18+61j ...
		push	0FFFFFFFDh

loc_40303B:				; CODE XREF: sub_402F18+EEj
		pop	eax

loc_40303C:				; CODE XREF: sub_402F18+38j
					; sub_402F18+7Aj ...
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn	10h
sub_402F18	endp


; =============== S U B	R O U T	I N E =======================================


sub_403043	proc near		; CODE XREF: sub_402F18+31p
					; sub_402F18+70p

NumberOfBytesWritten= dword ptr	-4
arg_0		= dword	ptr  4

		push	ecx
		push	ebx
		push	ebp
		push	esi
		mov	esi, dword_417044
		sub	esi, lDistanceToMove
		push	edi
		add	esi, [esp+14h+arg_0]
		call	ds:GetTickCount
		xor	ebx, ebx
		add	eax, 1F4h
		cmp	esi, ebx
		mov	dword_423EAC, eax
		jle	loc_4031AD
		push	dword_41F054	; lDistanceToMove
		call	sub_4031F1
		push	ebx		; dwMoveMethod
		push	ebx		; lpDistanceToMoveHigh
		push	lDistanceToMove	; lDistanceToMove
		push	hFile		; hFile
		call	ds:SetFilePointer
		mov	dword_41F050, esi
		mov	dword_417040, ebx
		mov	ebp, offset dword_40B040

loc_4030A2:				; CODE XREF: sub_403043+145j
		mov	eax, dword_417048
		mov	edi, 4000h
		sub	eax, dword_41F054
		cmp	eax, edi
		jg	short loc_4030B8
		mov	edi, eax

loc_4030B8:				; CODE XREF: sub_403043+71j
		mov	esi, offset dword_413040
		push	edi		; nNumberOfBytesToRead
		push	esi		; lpBuffer
		call	sub_4031BF
		test	eax, eax
		jz	loc_40319F
		add	dword_41F054, edi
		mov	dword_40AFD0, esi
		mov	dword_40AFD4, edi

loc_4030DE:				; CODE XREF: sub_403043+11Ej
		cmp	dword_423EB0, ebx
		jz	short loc_40310F
		cmp	dword_423F40, ebx
		jnz	short loc_40310F
		mov	eax, dword_41F050
		push	ebx
		sub	eax, dword_417044
		sub	eax, [esp+18h+arg_0]
		add	eax, lDistanceToMove
		mov	dword_417040, eax
		call	sub_402BD3
		pop	ecx

loc_40310F:				; CODE XREF: sub_403043+A1j
					; sub_403043+A9j
		mov	ecx, offset dword_40AFB8
		mov	dword_40AFD8, ebp
		mov	dword_40AFDC, 8000h
		call	sub_405F82
		test	eax, eax
		jl	short loc_4031A8
		mov	esi, dword_40AFD8
		sub	esi, ebp
		jz	short loc_403169
		lea	eax, [esp+14h+NumberOfBytesWritten]
		push	ebx		; lpOverlapped
		push	eax		; lpNumberOfBytesWritten
		push	esi		; nNumberOfBytesToWrite
		push	ebp		; lpBuffer
		push	hFile		; hFile
		call	ds:WriteFile
		test	eax, eax
		jz	short loc_4031A4
		cmp	esi, [esp+14h+NumberOfBytesWritten]
		jnz	short loc_4031A4
		add	lDistanceToMove, esi
		cmp	dword_40AFD4, ebx
		jnz	loc_4030DE
		jmp	short loc_403175
; ---------------------------------------------------------------------------

loc_403169:				; CODE XREF: sub_403043+F2j
		cmp	dword_40AFD4, ebx
		jnz	short loc_4031A8
		cmp	edi, ebx
		jz	short loc_4031A8

loc_403175:				; CODE XREF: sub_403043+124j
		mov	eax, dword_417044
		mov	ecx, eax
		sub	ecx, lDistanceToMove
		add	ecx, [esp+14h+arg_0]
		test	ecx, ecx
		jg	loc_4030A2
		push	ebx		; dwMoveMethod
		push	ebx		; lpDistanceToMoveHigh
		push	eax		; lDistanceToMove
		push	hFile		; hFile
		call	ds:SetFilePointer
		jmp	short loc_4031AD
; ---------------------------------------------------------------------------

loc_40319F:				; CODE XREF: sub_403043+83j
		or	eax, 0FFFFFFFFh
		jmp	short loc_4031B7
; ---------------------------------------------------------------------------

loc_4031A4:				; CODE XREF: sub_403043+10Aj
					; sub_403043+110j
		push	0FFFFFFFEh
		jmp	short loc_4031AA
; ---------------------------------------------------------------------------

loc_4031A8:				; CODE XREF: sub_403043+E8j
					; sub_403043+12Cj ...
		push	0FFFFFFFDh

loc_4031AA:				; CODE XREF: sub_403043+163j
		pop	eax
		jmp	short loc_4031B7
; ---------------------------------------------------------------------------

loc_4031AD:				; CODE XREF: sub_403043+29j
					; sub_403043+15Aj
		push	1
		call	sub_402BD3
		pop	ecx
		xor	eax, eax

loc_4031B7:				; CODE XREF: sub_403043+15Fj
					; sub_403043+168j
		pop	edi
		pop	esi
		pop	ebp
		pop	ebx
		pop	ecx
		retn	4
sub_403043	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_4031BF(LPVOID lpBuffer, DWORD nNumberOfBytesToRead)
sub_4031BF	proc near		; CODE XREF: sub_401434+12AEp
					; sub_402C72+AFp ...

lpBuffer	= dword	ptr  8
nNumberOfBytesToRead= dword ptr	 0Ch

		push	ebp
		mov	ebp, esp
		push	esi
		mov	esi, [ebp+nNumberOfBytesToRead]
		lea	eax, [ebp+nNumberOfBytesToRead]
		push	0		; lpOverlapped
		push	eax		; lpNumberOfBytesRead
		push	esi		; nNumberOfBytesToRead
		push	[ebp+lpBuffer]	; lpBuffer
		push	hObject		; hFile
		call	ds:ReadFile
		test	eax, eax
		jz	short loc_4031EA
		cmp	[ebp+nNumberOfBytesToRead], esi
		jnz	short loc_4031EA
		xor	eax, eax
		inc	eax
		jmp	short loc_4031EC
; ---------------------------------------------------------------------------

loc_4031EA:				; CODE XREF: sub_4031BF+1Fj
					; sub_4031BF+24j
		xor	eax, eax

loc_4031EC:				; CODE XREF: sub_4031BF+29j
		pop	esi
		pop	ebp
		retn	8
sub_4031BF	endp


; =============== S U B	R O U T	I N E =======================================


; int __stdcall	sub_4031F1(LONG	lDistanceToMove)
sub_4031F1	proc near		; CODE XREF: sub_401434+12A5p
					; sub_402C72+197p ...

lDistanceToMove	= dword	ptr  4

		push	0		; dwMoveMethod
		push	0		; lpDistanceToMoveHigh
		push	[esp+8+lDistanceToMove]	; lDistanceToMove
		push	hObject		; hFile
		call	ds:SetFilePointer
		retn	4
sub_4031F1	endp


; =============== S U B	R O U T	I N E =======================================


sub_403208	proc near		; CODE XREF: start+145p start+165p
		push	esi
		mov	esi, offset PathName
		push	esi		; lpsz
		call	sub_405DC8
		push	esi
		call	sub_4056C6
		test	eax, eax
		jnz	short loc_403220
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_403220:				; CODE XREF: sub_403208+14j
		push	esi		; lpString
		call	sub_405659
		push	0		; lpSecurityAttributes
		push	esi		; lpPathName
		call	ds:CreateDirectoryA
		push	esi		; lpPathName
		push	offset FileName	; PrefixString
		call	sub_40586C
		pop	esi
		retn
sub_403208	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: noreturn

		public start
start		proc near

var_180		= dword	ptr -180h
var_17C		= byte ptr -17Ch
uExitCode	= dword	ptr -178h
lpString2	= dword	ptr -174h
var_170		= dword	ptr -170h
var_16C		= byte ptr -16Ch
var_164		= dword	ptr -164h
psfi		= SHFILEINFOA ptr -160h

		sub	esp, 180h
		push	ebx
		push	ebp
		push	esi
		xor	ebx, ebx
		push	edi
		mov	[esp+190h+uExitCode], ebx
		mov	[esp+190h+var_180], offset aErrorWritingTe ; "Error writing temporary file. Make sure"...
		xor	esi, esi
		mov	[esp+190h+var_17C], 20h
		call	ds:InitCommonControls
		push	8001h		; uMode
		call	ds:SetErrorMode
		push	ebx		; pvReserved
		call	ds:OleInitialize
		push	8
		mov	dword_423F58, eax
		call	sub_405E88
		mov	dword_423EA4, eax
		push	ebx		; uFlags
		lea	eax, [esp+194h+psfi]
		push	160h		; cbFileInfo
		push	eax		; psfi
		push	ebx		; dwFileAttributes
		push	offset pszPath	; pszPath
		call	ds:SHGetFileInfoA
		push	offset aNsisError ; "NSIS Error"
		push	offset chText	; lpString1
		call	sub_405B66
		call	ds:GetCommandLineA
		mov	edi, offset sz
		push	eax		; lpString2
		push	edi		; lpString1
		call	sub_405B66
		push	ebx		; lpModuleName
		call	ds:GetModuleHandleA
		cmp	ds:sz, 22h
		mov	hInstance, eax
		mov	eax, edi
		jnz	short loc_4032DD
		mov	[esp+190h+var_17C], 22h
		mov	eax, offset byte_429001

loc_4032DD:				; CODE XREF: start+95j
		push	dword ptr [esp+190h+var_17C] ; char
		push	eax		; lpsz
		call	sub_405684
		push	eax		; lpsz
		call	ds:CharNextA
		mov	[esp+190h+lpString2], eax
		jmp	short loc_403357
; ---------------------------------------------------------------------------

loc_4032F4:				; CODE XREF: start+11Fj
		cmp	cl, 20h
		jnz	short loc_4032FF

loc_4032F9:				; CODE XREF: start+C1j
		inc	eax
		cmp	byte ptr [eax],	20h
		jz	short loc_4032F9

loc_4032FF:				; CODE XREF: start+BBj
		cmp	byte ptr [eax],	22h
		mov	[esp+190h+var_17C], 20h
		jnz	short loc_40330F
		inc	eax
		mov	[esp+190h+var_17C], 22h

loc_40330F:				; CODE XREF: start+CBj
		cmp	byte ptr [eax],	2Fh
		jnz	short loc_403347
		inc	eax
		cmp	byte ptr [eax],	53h
		jnz	short loc_403328
		mov	cl, [eax+1]
		or	cl, 20h
		cmp	cl, 20h
		jnz	short loc_403328
		or	esi, 2

loc_403328:				; CODE XREF: start+DCj	start+E7j
		cmp	dword ptr [eax], 4352434Eh
		jnz	short loc_40333E
		mov	cl, [eax+4]
		or	cl, 20h
		cmp	cl, 20h
		jnz	short loc_40333E
		or	esi, 4

loc_40333E:				; CODE XREF: start+F2j	start+FDj
		cmp	dword ptr [eax-2], 3D442F20h
		jz	short loc_40335F

loc_403347:				; CODE XREF: start+D6j
		push	dword ptr [esp+190h+var_17C] ; char
		push	eax		; lpsz
		call	sub_405684
		cmp	byte ptr [eax],	22h
		jnz	short loc_403357
		inc	eax

loc_403357:				; CODE XREF: start+B6j	start+118j
		mov	cl, [eax]
		cmp	cl, bl
		jnz	short loc_4032F4
		jmp	short loc_403370
; ---------------------------------------------------------------------------

loc_40335F:				; CODE XREF: start+109j
		mov	[eax-2], ebx
		add	eax, 2
		push	eax		; lpString2
		push	offset byte_429400 ; lpString1
		call	sub_405B66

loc_403370:				; CODE XREF: start+121j
		mov	ebp, offset PathName
		push	ebp		; lpBuffer
		push	400h		; nBufferLength
		call	ds:GetTempPathA
		call	sub_403208
		test	eax, eax
		jnz	short loc_4033AA
		push	3FBh		; uSize
		push	ebp		; lpBuffer
		call	ds:GetWindowsDirectoryA
		push	offset String2	; "\\Temp"
		push	ebp		; lpString1
		call	lstrcatA
		call	sub_403208
		test	eax, eax
		jz	short loc_403428

loc_4033AA:				; CODE XREF: start+14Cj
		push	offset FileName	; lpFileName
		call	ds:DeleteFileA
		push	esi		; Buffer
		call	sub_402C72
		cmp	eax, ebx
		mov	[esp+190h+var_180], eax
		jnz	short loc_403428
		cmp	dword_423EBC, ebx
		jz	short loc_403418
		push	ebx		; char
		push	edi		; lpsz
		call	sub_405684
		mov	esi, eax
		jmp	short loc_4033DF
; ---------------------------------------------------------------------------

loc_4033D6:				; CODE XREF: start+1A5j
		cmp	dword ptr [esi], 3D3F5F20h
		jz	short loc_4033E3
		dec	esi

loc_4033DF:				; CODE XREF: start+198j
		cmp	esi, edi
		jnb	short loc_4033D6

loc_4033E3:				; CODE XREF: start+1A0j
		cmp	esi, edi
		mov	[esp+190h+var_180], offset aErrorLaunching ; "Error launching installer"
		jb	short loc_403453
		mov	[esi], bl
		add	esi, 4
		push	esi		; lpString2
		call	sub_40573A
		test	eax, eax
		jz	short loc_403428
		push	esi		; lpString2
		push	offset byte_429400 ; lpString1
		call	sub_405B66
		push	esi		; lpString2
		push	offset Directory ; lpString1
		call	sub_405B66
		mov	[esp+190h+var_180], ebx

loc_403418:				; CODE XREF: start+18Dj
		or	dword_423F4C, 0FFFFFFFFh
		call	sub_4036AF
		mov	[esp+190h+uExitCode], eax

loc_403428:				; CODE XREF: start+16Cj start+185j ...
		call	sub_4035BD
		call	ds:OleUninitialize
		cmp	[esp+190h+var_180], ebx
		jz	loc_403522
		push	200010h
		push	[esp+194h+var_180]
		call	sub_405427
		push	2		; uExitCode
		call	ds:ExitProcess
; ---------------------------------------------------------------------------

loc_403453:				; CODE XREF: start+1B1j
		push	offset aNsu_tmp	; "~nsu.tmp"
		push	ebp		; lpString1
		call	lstrcatA
		mov	esi, offset byte_429C00
		push	esi		; lpString2
		push	ebp		; lpString1
		call	ds:lstrcmpiA
		test	eax, eax
		jz	short loc_403428
		push	ebx		; lpSecurityAttributes
		push	ebp		; lpPathName
		call	ds:CreateDirectoryA
		push	ebp		; lpPathName
		call	ds:SetCurrentDirectoryA
		cmp	ds:byte_429400,	bl
		jnz	short loc_403491
		push	esi		; lpString2
		push	offset byte_429400 ; lpString1
		call	sub_405B66

loc_403491:				; CODE XREF: start+248j
		push	[esp+190h+lpString2] ; lpString2
		push	offset dword_424000 ; lpString1
		call	sub_405B66
		push	1Ah
		mov	ds:word_424400,	41h
		pop	edi
		mov	esi, offset CommandLine

loc_4034B0:				; CODE XREF: start+2D8j
		mov	eax, dword_423EB0
		push	dword ptr [eax+120h] ; int
		push	esi		; lpString1
		call	sub_405B88
		push	esi		; lpFileName
		call	ds:DeleteFileA
		cmp	[esp+190h+var_180], ebx
		jz	short loc_40350D
		push	1		; bFailIfExists
		push	esi		; lpNewFileName
		push	offset ExistingFileName	; lpExistingFileName
		call	ds:CopyFileA
		test	eax, eax
		jz	short loc_40350D
		push	ebx		; lpszLongPath
		push	esi		; LPCSTR
		call	sub_4058B4
		mov	eax, dword_423EB0
		push	dword ptr [eax+124h] ; int
		push	esi		; lpString1
		call	sub_405B88
		push	esi		; lpCommandLine
		call	sub_4053C6
		cmp	eax, ebx
		jz	short loc_40350D
		push	eax		; hObject
		call	ds:CloseHandle
		mov	[esp+190h+var_180], ebx

loc_40350D:				; CODE XREF: start+290j start+2A2j ...
		inc	byte ptr ds:word_424400
		dec	edi
		jnz	short loc_4034B0
		push	ebx		; lpszLongPath
		push	ebp		; LPCSTR
		call	sub_4058B4
		jmp	loc_403428
; ---------------------------------------------------------------------------

loc_403522:				; CODE XREF: start+1FBj
		cmp	dword_423F34, ebx
		jz	short loc_4035A5
		push	3
		call	sub_405E88
		push	4
		mov	ebp, eax
		call	sub_405E88
		push	5
		mov	esi, eax
		call	sub_405E88
		cmp	ebp, ebx
		mov	edi, eax
		jz	short loc_403591
		cmp	esi, ebx
		jz	short loc_403591
		cmp	edi, ebx
		jz	short loc_403591
		lea	eax, [esp+190h+lpString2]
		push	eax
		push	28h
		call	ds:GetCurrentProcess
		push	eax
		call	ebp
		test	eax, eax
		jz	short loc_403591
		lea	eax, [esp+190h+var_16C]
		push	eax
		push	offset aSeshutdownpriv ; "SeShutdownPrivilege"
		push	ebx
		call	esi
		push	ebx
		push	ebx
		lea	eax, [esp+198h+var_170]
		push	ebx
		push	eax
		push	ebx
		push	[esp+1A4h+lpString2]
		mov	[esp+1A8h+var_170], 1
		mov	[esp+1A8h+var_164], 2
		call	edi

loc_403591:				; CODE XREF: start+30Bj start+30Fj ...
		push	ebx		; dwReason
		push	2		; uFlags
		call	ds:ExitWindowsEx
		test	eax, eax
		jnz	short loc_4035A5
		push	9
		call	sub_40140B

loc_4035A5:				; CODE XREF: start+2ECj start+360j
		mov	eax, dword_423F4C
		cmp	eax, 0FFFFFFFFh
		jz	short loc_4035B3
		mov	[esp+190h+uExitCode], eax

loc_4035B3:				; CODE XREF: start+371j
		push	[esp+190h+uExitCode] ; uExitCode
		call	ds:ExitProcess
start		endp


; =============== S U B	R O U T	I N E =======================================


sub_4035BD	proc near		; CODE XREF: start:loc_403428p
		mov	eax, hObject
		push	esi
		mov	esi, ds:CloseHandle
		cmp	eax, 0FFFFFFFFh
		jz	short loc_4035D8
		push	eax		; hObject
		call	esi ; CloseHandle
		or	hObject, 0FFFFFFFFh

loc_4035D8:				; CODE XREF: sub_4035BD+Fj
		mov	eax, hFile
		cmp	eax, 0FFFFFFFFh
		jz	short loc_4035EC
		push	eax		; hObject
		call	esi ; CloseHandle
		or	hFile, 0FFFFFFFFh

loc_4035EC:				; CODE XREF: sub_4035BD+23j
		call	sub_40361A
		push	7		; int
		push	offset dword_42A800 ; lpFileName
		call	sub_40548B
		pop	esi
		retn
sub_4035BD	endp


; =============== S U B	R O U T	I N E =======================================


sub_4035FF	proc near		; CODE XREF: sub_40361A+9p
					; sub_4036AF+28Dp

arg_0		= dword	ptr  4

		push	esi
		mov	esi, dword_41F45C
		jmp	short loc_403612
; ---------------------------------------------------------------------------

loc_403608:				; CODE XREF: sub_4035FF+15j
		push	[esp+4+arg_0]
		call	dword ptr [esi+4]
		mov	esi, [esi]
		pop	ecx

loc_403612:				; CODE XREF: sub_4035FF+7j
		test	esi, esi
		jnz	short loc_403608
		pop	esi
		retn	4
sub_4035FF	endp


; =============== S U B	R O U T	I N E =======================================


sub_40361A	proc near		; CODE XREF: sub_4035BD:loc_4035ECp
		push	esi
		mov	esi, dword_41F45C
		push	0
		call	sub_4035FF
		test	esi, esi
		jz	short loc_403646
		push	edi

loc_40362D:				; CODE XREF: sub_40361A+29j
		mov	edi, esi
		mov	esi, [esi]
		push	dword ptr [edi+8] ; hLibModule
		call	ds:FreeLibrary
		push	edi		; hMem
		call	ds:GlobalFree
		test	esi, esi
		jnz	short loc_40362D
		pop	edi

loc_403646:				; CODE XREF: sub_40361A+10j
		and	dword_41F45C, 0
		pop	esi
		retn
sub_40361A	endp


; =============== S U B	R O U T	I N E =======================================


sub_40364F	proc near		; CODE XREF: sub_401434+BC5p
					; sub_40366D+6p

arg_0		= dword	ptr  4

		mov	eax, dword_41F45C
		jmp	short loc_403661
; ---------------------------------------------------------------------------

loc_403656:				; CODE XREF: sub_40364F+14j
		mov	ecx, [eax+8]
		cmp	ecx, [esp+arg_0]
		jz	short loc_403669
		mov	eax, [eax]

loc_403661:				; CODE XREF: sub_40364F+5j
		test	eax, eax
		jnz	short loc_403656
		inc	eax

locret_403666:				; CODE XREF: sub_40364F+1Cj
		retn	4
; ---------------------------------------------------------------------------

loc_403669:				; CODE XREF: sub_40364F+Ej
		xor	eax, eax
		jmp	short locret_403666
sub_40364F	endp


; =============== S U B	R O U T	I N E =======================================


sub_40366D	proc near		; DATA XREF: .data:0040900Co

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		push	esi
		mov	esi, [esp+4+arg_0]
		push	esi
		call	sub_40364F
		test	eax, eax
		jnz	short loc_40367F
		inc	eax
		jmp	short loc_4036AB
; ---------------------------------------------------------------------------

loc_40367F:				; CODE XREF: sub_40366D+Dj
		push	0Ch		; dwBytes
		push	40h		; uFlags
		call	ds:GlobalAlloc
		test	eax, eax
		jz	short loc_4036A8
		mov	ecx, [esp+4+arg_4]
		mov	[eax+8], esi
		mov	[eax+4], ecx
		mov	ecx, dword_41F45C
		mov	[eax], ecx
		mov	dword_41F45C, eax
		xor	eax, eax
		jmp	short loc_4036AB
; ---------------------------------------------------------------------------

loc_4036A8:				; CODE XREF: sub_40366D+1Ej
		or	eax, 0FFFFFFFFh

loc_4036AB:				; CODE XREF: sub_40366D+10j
					; sub_40366D+39j
		pop	esi
		retn	8
sub_40366D	endp


; =============== S U B	R O U T	I N E =======================================


sub_4036AF	proc near		; CODE XREF: start+1E3p

ClassName	= byte ptr -14h
pvParam		= dword	ptr -10h
Y		= dword	ptr -0Ch
var_8		= dword	ptr -8
var_4		= dword	ptr -4

		sub	esp, 14h
		push	ebx
		push	ebp
		push	esi
		mov	esi, dword_423EB0
		push	edi
		push	6
		call	sub_405E88
		xor	ebx, ebx
		cmp	eax, ebx
		jz	short loc_4036DB
		call	eax
		movzx	eax, ax
		push	eax		; int
		push	offset FileName	; LPSTR
		call	sub_405AC4
		jmp	short loc_403725
; ---------------------------------------------------------------------------

loc_4036DB:				; CODE XREF: sub_4036AF+18j
		mov	edi, offset byte_4204A0
		push	ebx		; phkResult
		push	edi		; Type
		push	ebx		; lpValueName
		push	offset SubKey	; "Control Panel\\Desktop\\ResourceLocale"
		push	80000001h	; hKey
		mov	ds:FileName, 7830h
		call	sub_405A4D
		cmp	byte_4204A0, bl
		jnz	short loc_40371A
		push	ebx		; phkResult
		push	edi		; Type
		push	(offset	SubKey+1Eh) ; lpValueName
		push	offset a_defaultContro ; ".DEFAULT\\Control Panel\\International"
		push	80000003h	; hKey
		call	sub_405A4D

loc_40371A:				; CODE XREF: sub_4036AF+53j
		push	edi		; lpString2
		push	offset FileName	; lpString1
		call	lstrcatA

loc_403725:				; CODE XREF: sub_4036AF+2Aj
		call	sub_403978
		mov	eax, dword_423EB8
		mov	ebp, offset byte_429400
		and	eax, 20h
		push	ebp		; lpString2
		mov	dword_423F20, eax
		mov	dword_423F3C, 10000h
		call	sub_40573A
		test	eax, eax
		jnz	loc_4037D5
		mov	ecx, [esi+48h]
		cmp	ecx, ebx
		jz	short loc_4037D5
		mov	edx, [esi+4Ch]
		mov	eax, dword_423ED8
		mov	edi, offset String
		push	ebx		; phkResult
		add	edx, eax
		push	edi		; Type
		add	ecx, eax
		push	edx		; lpValueName
		push	ecx		; lpSubKey
		push	dword ptr [esi+44h] ; hKey
		call	sub_405A4D
		mov	al, String
		cmp	al, bl
		jz	short loc_4037D5
		cmp	al, 22h
		jnz	short loc_403794
		mov	edi, offset byte_422E41
		push	22h		; char
		push	edi		; lpsz
		call	sub_405684
		mov	[eax], bl

loc_403794:				; CODE XREF: sub_4036AF+D4j
		push	edi		; lpString
		call	lstrlenA
		lea	eax, [eax+edi-4]
		cmp	eax, edi
		jbe	short loc_4037C8
		push	offset a_exe	; ".exe"
		push	eax		; lpString1
		call	ds:lstrcmpiA
		test	eax, eax
		jnz	short loc_4037C8
		push	edi		; lpFileName
		call	ds:GetFileAttributesA
		cmp	eax, 0FFFFFFFFh
		jz	short loc_4037C2
		test	al, 10h
		jnz	short loc_4037C8

loc_4037C2:				; CODE XREF: sub_4036AF+10Dj
		push	edi		; lpString
		call	sub_4056A0

loc_4037C8:				; CODE XREF: sub_4036AF+F1j
					; sub_4036AF+101j ...
		push	edi		; lpString
		call	sub_405659
		push	eax		; lpString2
		push	ebp		; lpString1
		call	sub_405B66

loc_4037D5:				; CODE XREF: sub_4036AF+9Fj
					; sub_4036AF+AAj ...
		push	ebp		; lpString2
		call	sub_40573A
		test	eax, eax
		jnz	short loc_4037EB
		push	dword ptr [esi+118h] ; int
		push	ebp		; lpString1
		call	sub_405B88

loc_4037EB:				; CODE XREF: sub_4036AF+12Ej
		push	8040h		; fuLoad
		push	ebx		; cy
		push	ebx		; cx
		push	1		; type
		push	67h		; name
		push	hInstance	; hInst
		call	ds:LoadImageA
		mov	dwNewLong, eax
		cmp	dword ptr [esi+50h], 0FFFFFFFFh
		mov	edi, offset WndClass
		jz	loc_40389F
		mov	ecx, hInstance
		mov	WndClass.hIcon,	eax
		lea	eax, [esp+24h+ClassName]
		push	edi		; lpWndClass
		mov	dword ptr [esp+28h+ClassName], 624E5Fh
		mov	WndClass.lpfnWndProc, offset sub_401000
		mov	WndClass.hInstance, ecx
		mov	WndClass.lpszClassName,	eax
		call	ds:RegisterClassA
		test	ax, ax
		jz	loc_40396E
		lea	eax, [esp+24h+pvParam]
		push	ebx		; fWinIni
		push	eax		; pvParam
		push	ebx		; uiParam
		push	30h		; uiAction
		call	ds:SystemParametersInfoA
		push	ebx		; lpParam
		push	hInstance	; hInstance
		mov	eax, [esp+2Ch+var_4]
		sub	eax, [esp+2Ch+Y]
		push	ebx		; hMenu
		push	ebx		; hWndParent
		push	eax		; nHeight
		mov	eax, [esp+38h+var_8]
		sub	eax, [esp+38h+pvParam]
		push	eax		; nWidth
		lea	eax, [esp+3Ch+ClassName]
		push	[esp+3Ch+Y]	; Y
		push	[esp+40h+pvParam] ; X
		push	80000000h	; dwStyle
		push	ebx		; lpWindowName
		push	eax		; lpClassName
		push	80h		; dwExStyle
		call	ds:CreateWindowExA
		mov	dword_420478, eax

loc_40389F:				; CODE XREF: sub_4036AF+161j
		push	ebx
		call	sub_40140B
		test	eax, eax
		jz	short loc_4038B1

loc_4038A9:				; CODE XREF: sub_4036AF+2A6j
					; sub_4036AF+2B3j
		push	2
		pop	eax
		jmp	loc_403970
; ---------------------------------------------------------------------------

loc_4038B1:				; CODE XREF: sub_4036AF+1F8j
		call	sub_403978
		cmp	dword_423F40, ebx
		jnz	loc_403945
		push	5		; nCmdShow
		push	dword_420478	; hWnd
		call	ds:ShowWindow
		mov	esi, ds:LoadLibraryA
		push	offset LibFileName ; "RichEd20"
		call	esi ; LoadLibraryA
		test	eax, eax
		jnz	short loc_4038E8
		push	offset aRiched32 ; "RichEd32"
		call	esi ; LoadLibraryA

loc_4038E8:				; CODE XREF: sub_4036AF+230j
		mov	esi, ds:GetClassInfoA
		mov	ebp, offset ClassName ;	"RichEdit20A"
		push	edi		; lpWndClass
		push	ebp		; lpClassName
		push	ebx		; hInstance
		call	esi ; GetClassInfoA
		test	eax, eax
		jnz	short loc_403912
		push	edi		; lpWndClass
		push	offset aRichedit ; "RichEdit"
		push	ebx		; hInstance
		call	esi ; GetClassInfoA
		push	edi		; lpWndClass
		mov	WndClass.lpszClassName,	ebp
		call	ds:RegisterClassA

loc_403912:				; CODE XREF: sub_4036AF+24Bj
		mov	eax, dword_423680
		push	ebx		; dwInitParam
		add	eax, 69h
		push	offset sub_403A45 ; lpDialogFunc
		movzx	eax, ax
		push	ebx		; hWndParent
		push	eax		; lpTemplateName
		push	hInstance	; hInstance
		call	ds:DialogBoxParamA
		push	5
		mov	esi, eax
		call	sub_40140B
		push	1
		call	sub_4035FF
		mov	eax, esi
		jmp	short loc_403970
; ---------------------------------------------------------------------------

loc_403945:				; CODE XREF: sub_4036AF+20Dj
		push	ebx		; lpThreadParameter
		call	StartAddress
		test	eax, eax
		jz	short loc_403967
		cmp	dword_42366C, ebx
		jnz	loc_4038A9
		push	2
		call	sub_40140B
		jmp	loc_4038A9
; ---------------------------------------------------------------------------

loc_403967:				; CODE XREF: sub_4036AF+29Ej
		push	1
		call	sub_40140B

loc_40396E:				; CODE XREF: sub_4036AF+19Dj
		xor	eax, eax

loc_403970:				; CODE XREF: sub_4036AF+1FDj
					; sub_4036AF+294j
		pop	edi
		pop	esi
		pop	ebp
		pop	ebx
		add	esp, 14h
		retn
sub_4036AF	endp


; =============== S U B	R O U T	I N E =======================================


sub_403978	proc near		; CODE XREF: sub_4036AF:loc_403725p
					; sub_4036AF:loc_4038B1p
		push	ebx
		push	ebp
		push	esi
		push	edi
		mov	edi, offset FileName
		mov	ebx, 0FFFFh
		push	edi
		call	sub_405ADD

loc_40398C:				; CODE XREF: sub_403978+6Fj
					; sub_403978+73j
		mov	esi, dword_423EE4
		test	esi, esi
		jz	short loc_4039DB
		mov	ecx, dword_423EB0
		mov	ecx, [ecx+64h]
		mov	edx, ecx
		imul	ecx, esi
		neg	edx
		add	ecx, dword_423EE0

loc_4039AC:				; CODE XREF: sub_403978+46j
		add	ecx, edx
		dec	esi
		mov	bp, [ecx]
		xor	bp, ax
		and	ebp, ebx
		test	bp, bp
		jz	short loc_4039C2
		test	esi, esi
		jnz	short loc_4039AC
		jmp	short loc_4039DB
; ---------------------------------------------------------------------------

loc_4039C2:				; CODE XREF: sub_403978+42j
		mov	edx, [ecx+2]
		mov	dword_423680, edx
		mov	edx, [ecx+6]
		mov	dword_423F48, edx
		lea	edx, [ecx+0Ah]
		test	edx, edx
		jnz	short loc_4039ED

loc_4039DB:				; CODE XREF: sub_403978+1Cj
					; sub_403978+48j
		cmp	bx, 0FFFFh
		jnz	short loc_4039E9
		mov	ebx, 3FFh
		jmp	short loc_40398C
; ---------------------------------------------------------------------------

loc_4039E9:				; CODE XREF: sub_403978+68j
		xor	ebx, ebx
		jmp	short loc_40398C
; ---------------------------------------------------------------------------

loc_4039ED:				; CODE XREF: sub_403978+61j
		mov	dword_42367C, edx
		movzx	eax, word ptr [ecx]
		push	eax		; int
		push	edi		; LPSTR
		call	sub_405AC4
		push	0FFFFFFFEh	; int
		push	offset chText	; lpString1
		call	sub_405B88
		push	eax		; lpString
		push	dword_420478	; hWnd
		call	ds:SetWindowTextA
		mov	eax, dword_423ECC
		mov	esi, dword_423EC8
		test	eax, eax
		jz	short loc_403A40
		mov	edi, eax

loc_403A27:				; CODE XREF: sub_403978+C6j
		mov	eax, [esi]
		test	eax, eax
		jz	short loc_403A37
		push	eax		; int
		lea	eax, [esi+18h]
		push	eax		; lpString1
		call	sub_405B88

loc_403A37:				; CODE XREF: sub_403978+B3j
		add	esi, 418h
		dec	edi
		jnz	short loc_403A27

loc_403A40:				; CODE XREF: sub_403978+ABj
		pop	edi
		pop	esi
		pop	ebp
		pop	ebx
		retn
sub_403978	endp


; =============== S U B	R O U T	I N E =======================================


; INT_PTR __stdcall sub_403A45(HWND, UINT, WPARAM, LPARAM)
sub_403A45	proc near		; DATA XREF: sub_4036AF+26Co

Rect		= tagRECT ptr -10h
hWndInsertAfter	= dword	ptr  4
arg_4		= dword	ptr  8
wParam		= dword	ptr  0Ch
lParam		= dword	ptr  10h

		sub	esp, 10h
		mov	ecx, 110h
		push	ebx
		mov	ebx, [esp+14h+arg_4]
		push	ebp
		push	esi
		cmp	ebx, ecx
		push	edi
		jz	loc_403B98
		cmp	ebx, 408h
		jz	loc_403B98
		mov	edi, [esp+20h+hWndInsertAfter]
		xor	ebp, ebp
		cmp	ebx, 47h
		jnz	short loc_403A87
		push	13h		; uFlags
		push	ebp		; cy
		push	ebp		; cx
		push	ebp		; Y
		push	ebp		; X
		push	edi		; hWndInsertAfter
		push	dword_420478	; hWnd
		call	ds:SetWindowPos

loc_403A87:				; CODE XREF: sub_403A45+2Dj
		cmp	ebx, 5
		jnz	short loc_403AA4
		mov	eax, [esp+20h+wParam]
		dec	eax
		neg	eax
		sbb	eax, eax
		and	eax, ebx
		push	eax		; nCmdShow
		push	dword_420478	; hWnd
		call	ds:ShowWindow

loc_403AA4:				; CODE XREF: sub_403A45+45j
		cmp	ebx, 40Dh
		jnz	short loc_403AC6
		push	hDlg		; hWnd
		call	ds:DestroyWindow
		mov	eax, [esp+20h+wParam]
		mov	hDlg, eax
		jmp	loc_403EC2
; ---------------------------------------------------------------------------

loc_403AC6:				; CODE XREF: sub_403A45+65j
		cmp	ebx, 11h
		jnz	short loc_403ADC
		push	ebp		; dwNewLong
		push	ebp		; nIndex
		push	edi		; hWnd
		call	ds:SetWindowLongA
		xor	eax, eax
		inc	eax
		jmp	loc_403EE7
; ---------------------------------------------------------------------------

loc_403ADC:				; CODE XREF: sub_403A45+84j
		cmp	ebx, 111h
		jnz	loc_403B85
		movzx	esi, word ptr [esp+20h+wParam]
		push	esi		; nIDDlgItem
		push	edi		; hDlg
		call	ds:GetDlgItem
		mov	edi, eax
		cmp	edi, ebp
		jz	short loc_403B18
		push	ebp		; lParam
		push	ebp		; wParam
		push	0F3h		; Msg
		push	edi		; hWnd
		call	ds:SendMessageA
		push	edi		; hWnd
		call	ds:IsWindowEnabled
		test	eax, eax
		jz	loc_403EE5

loc_403B18:				; CODE XREF: sub_403A45+B4j
		cmp	esi, 1
		jnz	short loc_403B20
		push	esi
		jmp	short loc_403B4E
; ---------------------------------------------------------------------------

loc_403B20:				; CODE XREF: sub_403A45+D6j
		cmp	esi, 3
		jnz	short loc_403B31
		cmp	dword_4091C4, ebp
		jle	short loc_403B6C
		push	0FFFFFFFFh
		jmp	short loc_403B4E
; ---------------------------------------------------------------------------

loc_403B31:				; CODE XREF: sub_403A45+DEj
		push	2
		pop	edi
		cmp	esi, edi
		jnz	short loc_403B6C
		cmp	dword_423F2C, ebp
		jz	short loc_403B55
		push	edi
		call	sub_40140B
		mov	nResult, edi

loc_403B4C:				; CODE XREF: sub_403A45+125j
		push	78h		; wParam

loc_403B4E:				; CODE XREF: sub_403A45+D9j
					; sub_403A45+EAj
		call	sub_403EF1
		jmp	short loc_403B85
; ---------------------------------------------------------------------------

loc_403B55:				; CODE XREF: sub_403A45+F9j
		push	3
		call	sub_40140B
		test	eax, eax
		jnz	short loc_403B85
		mov	nResult, 1
		jmp	short loc_403B4C
; ---------------------------------------------------------------------------

loc_403B6C:				; CODE XREF: sub_403A45+E6j
					; sub_403A45+F1j
		push	[esp+20h+lParam] ; lParam
		push	[esp+24h+wParam] ; wParam
		push	111h		; Msg
		push	hDlg		; hWnd
		call	ds:SendMessageA

loc_403B85:				; CODE XREF: sub_403A45+9Dj
					; sub_403A45+10Ej ...
		push	[esp+20h+lParam] ; hWnd
		push	[esp+24h+wParam] ; hdc
		push	ebx		; int
		call	sub_403F7F
		jmp	loc_403EE7
; ---------------------------------------------------------------------------

loc_403B98:				; CODE XREF: sub_403A45+12j
					; sub_403A45+1Ej
		mov	eax, [esp+20h+wParam]
		mov	edi, [esp+20h+hWndInsertAfter]
		cmp	ebx, ecx
		mov	dword_420484, eax
		jnz	short loc_403BF6
		mov	esi, ds:GetDlgItem
		push	1		; nIDDlgItem
		push	edi		; hDlg
		mov	hwnd, edi
		call	esi ; GetDlgItem
		push	2		; nIDDlgItem
		push	edi		; hDlg
		mov	wParam,	eax
		call	esi ; GetDlgItem
		push	0FFFFFFFFh	; int
		push	1Ch		; int
		push	edi		; hDlg
		mov	dword_41F460, eax
		call	sub_403F18
		push	dwNewLong	; dwNewLong
		push	0FFFFFFF2h	; nIndex
		push	edi		; hWnd
		call	ds:SetClassLongA
		push	4
		call	sub_40140B
		mov	dword_42366C, eax
		xor	eax, eax
		inc	eax
		mov	dword_420484, eax

loc_403BF6:				; CODE XREF: sub_403A45+162j
		mov	ecx, dword_4091C4
		xor	ebp, ebp
		mov	esi, ecx
		shl	esi, 6
		add	esi, dword_423EC0
		cmp	ecx, ebp
		jl	short loc_403C4B
		cmp	eax, 1
		jnz	short loc_403C43
		push	ebp		; hWnd
		push	dword ptr [esi+10h] ; int
		call	sub_401389
		test	eax, eax
		jz	short loc_403C43
		push	1		; lParam
		push	ebp		; wParam
		push	40Fh		; Msg
		push	hDlg		; hWnd
		call	ds:SendMessageA
		xor	eax, eax
		cmp	dword_42366C, ebp
		setz	al
		jmp	loc_403EE7
; ---------------------------------------------------------------------------

loc_403C43:				; CODE XREF: sub_403A45+1CBj
					; sub_403A45+1D8j
		cmp	[esi], ebp
		jz	loc_403EE5

loc_403C4B:				; CODE XREF: sub_403A45+1C6j
		push	40Bh		; Msg
		call	sub_403F64

loc_403C55:				; CODE XREF: sub_403A45+36Dj
					; sub_403A45+375j ...
		mov	eax, dword_420484
		add	dword_4091C4, eax
		shl	eax, 6
		add	esi, eax
		mov	eax, dword_4091C4
		cmp	eax, dword_423EC4
		jnz	short loc_403C79
		push	1
		call	sub_40140B

loc_403C79:				; CODE XREF: sub_403A45+22Bj
		cmp	dword_42366C, ebp
		jnz	loc_403EA3
		mov	eax, dword_423EC4
		cmp	dword_4091C4, eax
		jnb	loc_403EA3
		push	dword ptr [esi+24h] ; int
		mov	ebx, [esi+14h]
		push	offset dword_42B800 ; lpString1
		call	sub_405B88
		push	dword ptr [esi+20h] ; int
		push	0FFFFFC19h	; int
		push	edi		; hDlg
		call	sub_403F18
		push	dword ptr [esi+1Ch] ; int
		push	0FFFFFC1Bh	; int
		push	edi		; hDlg
		call	sub_403F18
		push	dword ptr [esi+28h] ; int
		push	0FFFFFC1Ah	; int
		push	edi		; hDlg
		call	sub_403F18
		push	3		; nIDDlgItem
		push	edi		; hDlg
		call	ds:GetDlgItem
		cmp	dword_423F2C, ebp
		mov	[esp+20h+wParam], eax
		jz	short loc_403CED
		and	bx, 0FEFDh
		or	ebx, 4

loc_403CED:				; CODE XREF: sub_403A45+29Ej
		mov	ecx, ebx
		and	ecx, 8
		push	ecx		; nCmdShow
		push	eax		; hWnd
		call	ds:ShowWindow
		mov	eax, ebx
		and	eax, 100h
		push	eax		; bEnable
		push	[esp+24h+wParam] ; hWnd
		call	ds:EnableWindow
		mov	eax, ebx
		and	eax, 2
		push	eax		; bEnable
		call	sub_403F3A
		and	ebx, 4
		push	ebx		; bEnable
		push	dword_41F460	; hWnd
		call	ds:EnableWindow
		cmp	ebx, ebp
		jz	short loc_403D2E
		push	ebp
		jmp	short loc_403D30
; ---------------------------------------------------------------------------

loc_403D2E:				; CODE XREF: sub_403A45+2E4j
		push	1		; uEnable

loc_403D30:				; CODE XREF: sub_403A45+2E7j
		push	0F060h		; uIDEnableItem
		push	ebp		; bRevert
		push	edi		; hWnd
		call	ds:GetSystemMenu
		push	eax		; hMenu
		call	ds:EnableMenuItem
		mov	ebx, ds:SendMessageA
		push	1		; lParam
		push	ebp		; wParam
		push	0F4h		; Msg
		push	[esp+2Ch+wParam] ; hWnd
		call	ebx ; SendMessageA
		cmp	dword_423F2C, ebp
		jz	short loc_403D73
		push	ebp		; lParam
		push	2		; wParam
		push	401h		; Msg
		push	edi		; hWnd
		call	ebx ; SendMessageA
		push	dword_41F460
		jmp	short loc_403D79
; ---------------------------------------------------------------------------

loc_403D73:				; CODE XREF: sub_403A45+319j
		push	wParam		; wParam

loc_403D79:				; CODE XREF: sub_403A45+32Cj
		call	sub_403F4D
		mov	ebx, offset byte_4204A0
		push	offset chText	; lpString2
		push	ebx		; lpString1
		call	sub_405B66
		push	dword ptr [esi+18h] ; int
		push	ebx		; lpString
		call	lstrlenA
		add	eax, ebx
		push	eax		; lpString1
		call	sub_405B88
		push	ebx		; lpString
		push	edi		; hWnd
		call	ds:SetWindowTextA
		push	ebp		; hWnd
		push	dword ptr [esi+8] ; int
		call	sub_401389
		test	eax, eax
		jnz	loc_403C55
		cmp	[esi], ebp
		jz	loc_403C55
		cmp	dword ptr [esi+4], 5
		jnz	short loc_403DE3
		cmp	dword_423F2C, ebp
		jnz	loc_403EE5
		cmp	dword_423F20, ebp
		jnz	loc_403C55
		jmp	loc_403EE5
; ---------------------------------------------------------------------------

loc_403DE3:				; CODE XREF: sub_403A45+37Fj
		push	hDlg		; hWnd
		call	ds:DestroyWindow
		mov	dword_41FC70, esi
		cmp	[esi], ebp
		jle	loc_403EC2
		mov	eax, [esi+4]
		push	esi		; dwInitParam
		push	lpDialogFunc[eax*4] ; lpDialogFunc
		mov	ax, [esi]
		add	ax, word ptr dword_423680
		push	edi		; hWndParent
		movzx	eax, ax
		push	eax		; lpTemplateName
		push	hInstance	; hInstance
		call	ds:CreateDialogParamA
		cmp	eax, ebp
		mov	hDlg, eax
		jz	loc_403EC2
		push	dword ptr [esi+2Ch] ; int
		push	6		; int
		push	eax		; hDlg
		call	sub_403F18
		lea	eax, [esp+20h+Rect]
		push	eax		; lpRect
		push	3FAh		; nIDDlgItem
		push	edi		; hDlg
		call	ds:GetDlgItem
		push	eax		; hWnd
		call	ds:GetWindowRect
		lea	eax, [esp+20h+Rect]
		push	eax		; lpPoint
		push	edi		; hWnd
		call	ds:ScreenToClient
		push	15h		; uFlags
		push	ebp		; cy
		push	ebp		; cx
		push	[esp+2Ch+Rect.top] ; Y
		push	[esp+30h+Rect.left] ; X
		push	ebp		; hWndInsertAfter
		push	hDlg		; hWnd
		call	ds:SetWindowPos
		push	ebp		; hWnd
		push	dword ptr [esi+0Ch] ; int
		call	sub_401389
		cmp	dword_42366C, ebp
		jnz	short loc_403EE5
		push	8		; nCmdShow
		push	hDlg		; hWnd
		call	ds:ShowWindow
		push	405h		; Msg
		call	sub_403F64
		jmp	short loc_403EC2
; ---------------------------------------------------------------------------

loc_403EA3:				; CODE XREF: sub_403A45+23Aj
					; sub_403A45+24Bj
		push	hDlg		; hWnd
		call	ds:DestroyWindow
		push	nResult		; nResult
		mov	hwnd, ebp
		push	edi		; hDlg
		call	ds:EndDialog

loc_403EC2:				; CODE XREF: sub_403A45+7Cj
					; sub_403A45+3B2j ...
		cmp	dword_4214A0, ebp
		jnz	short loc_403EE5
		cmp	hDlg, ebp
		jz	short loc_403EE5
		push	0Ah		; nCmdShow
		push	edi		; hWnd
		call	ds:ShowWindow
		mov	dword_4214A0, 1

loc_403EE5:				; CODE XREF: sub_403A45+CDj
					; sub_403A45+200j ...
		xor	eax, eax

loc_403EE7:				; CODE XREF: sub_403A45+92j
					; sub_403A45+14Ej ...
		pop	edi
		pop	esi
		pop	ebp
		pop	ebx
		add	esp, 10h
		retn	10h
sub_403A45	endp


; =============== S U B	R O U T	I N E =======================================


; int __stdcall	sub_403EF1(WPARAM wParam)
sub_403EF1	proc near		; CODE XREF: sub_403A45:loc_403B4Ep
					; sub_405042+225p ...

wParam		= dword	ptr  4

		cmp	[esp+wParam], 78h
		jnz	short loc_403EFE
		inc	dword_42366C

loc_403EFE:				; CODE XREF: sub_403EF1+5j
		push	0		; lParam
		push	[esp+4+wParam]	; wParam
		push	408h		; Msg
		push	hwnd		; hWnd
		call	ds:SendMessageA
		retn	4
sub_403EF1	endp


; =============== S U B	R O U T	I N E =======================================


; int __stdcall	sub_403F18(HWND	hDlg, int, int)
sub_403F18	proc near		; CODE XREF: sub_403A45+189p
					; sub_403A45+26Ap ...

hDlg		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		push	[esp+arg_8]	; int
		push	0		; lpString1
		call	sub_405B88
		push	eax		; lpString
		mov	eax, [esp+4+arg_4]
		add	eax, 3E8h
		push	eax		; nIDDlgItem
		push	[esp+8+hDlg]	; hDlg
		call	SetDlgItemTextA
		retn	0Ch
sub_403F18	endp


; =============== S U B	R O U T	I N E =======================================


; int __stdcall	sub_403F3A(BOOL	bEnable)
sub_403F3A	proc near		; CODE XREF: sub_403A45+2CDp
					; sub_404060+92p ...

bEnable		= dword	ptr  4

		push	[esp+bEnable]	; bEnable
		push	wParam		; hWnd
		call	ds:EnableWindow
		retn	4
sub_403F3A	endp


; =============== S U B	R O U T	I N E =======================================


; int __stdcall	sub_403F4D(WPARAM wParam)
sub_403F4D	proc near		; CODE XREF: sub_403A45:loc_403D79p
					; sub_404060+A8p ...

wParam		= dword	ptr  4

		push	1		; lParam
		push	[esp+4+wParam]	; wParam
		push	28h		; Msg
		push	hwnd		; hWnd
		call	ds:SendMessageA
		retn	4
sub_403F4D	endp


; =============== S U B	R O U T	I N E =======================================


; int __stdcall	sub_403F64(UINT	Msg)
sub_403F64	proc near		; CODE XREF: sub_403A45+20Bp
					; sub_403A45+457p ...

Msg		= dword	ptr  4

		mov	eax, hDlg
		test	eax, eax
		jz	short locret_403F7C
		push	0		; lParam
		push	0		; wParam
		push	[esp+8+Msg]	; Msg
		push	eax		; hWnd
		call	ds:SendMessageA

locret_403F7C:				; CODE XREF: sub_403F64+7j
		retn	4
sub_403F64	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_403F7F(int,	HDC hdc, HWND hWnd)
sub_403F7F	proc near		; CODE XREF: sub_403A45+149p
					; sub_404060+27Fp ...

plbrush		= LOGBRUSH ptr -0Ch
arg_0		= dword	ptr  8
hdc		= dword	ptr  0Ch
hWnd		= dword	ptr  10h

		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		mov	eax, [ebp+arg_0]
		push	esi
		add	eax, 0FFFFFECDh
		cmp	eax, 5
		ja	loc_404025
		push	0FFFFFFEBh	; nIndex
		push	[ebp+hWnd]	; hWnd
		call	ds:GetWindowLongA
		mov	esi, eax
		test	esi, esi
		jz	short loc_404025
		test	byte ptr [esi+14h], 2
		mov	eax, [esi]
		push	edi
		mov	edi, ds:GetSysColor
		jz	short loc_403FBA
		push	eax		; nIndex
		call	edi ; GetSysColor

loc_403FBA:				; CODE XREF: sub_403F7F+36j
		test	byte ptr [esi+14h], 1
		jz	short loc_403FCA
		push	eax		; color
		push	[ebp+hdc]	; hdc
		call	ds:SetTextColor

loc_403FCA:				; CODE XREF: sub_403F7F+3Fj
		push	dword ptr [esi+10h] ; mode
		push	[ebp+hdc]	; hdc
		call	ds:SetBkMode
		mov	eax, [esi+4]
		test	byte ptr [esi+14h], 8
		mov	[ebp+plbrush.lbColor], eax
		jz	short loc_403FE8
		push	eax		; nIndex
		call	edi ; GetSysColor
		mov	[ebp+plbrush.lbColor], eax

loc_403FE8:				; CODE XREF: sub_403F7F+61j
		test	byte ptr [esi+14h], 4
		pop	edi
		jz	short loc_403FF9
		push	eax		; color
		push	[ebp+hdc]	; hdc
		call	ds:SetBkColor

loc_403FF9:				; CODE XREF: sub_403F7F+6Ej
		test	byte ptr [esi+14h], 10h
		jz	short loc_404020
		mov	eax, [esi+8]
		mov	[ebp+plbrush.lbStyle], eax
		mov	eax, [esi+0Ch]
		test	eax, eax
		jz	short loc_404013
		push	eax		; ho
		call	ds:DeleteObject

loc_404013:				; CODE XREF: sub_403F7F+8Bj
		lea	eax, [ebp+plbrush]
		push	eax		; plbrush
		call	ds:CreateBrushIndirect
		mov	[esi+0Ch], eax

loc_404020:				; CODE XREF: sub_403F7F+7Ej
		mov	eax, [esi+0Ch]
		jmp	short loc_404027
; ---------------------------------------------------------------------------

loc_404025:				; CODE XREF: sub_403F7F+12j
					; sub_403F7F+27j
		xor	eax, eax

loc_404027:				; CODE XREF: sub_403F7F+A4j
		pop	esi
		leave
		retn	0Ch
sub_403F7F	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_40402C(int,	LPSTR lpString1, int iMaxLength, int)
sub_40402C	proc near		; DATA XREF: sub_404060+5Eo

arg_0		= dword	ptr  8
lpString1	= dword	ptr  0Ch
iMaxLength	= dword	ptr  10h
arg_C		= dword	ptr  14h

		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+arg_0]
		mov	ecx, dword_41F464
		push	[ebp+iMaxLength] ; iMaxLength
		add	ecx, eax
		push	ecx		; lpString2
		push	[ebp+lpString1]	; lpString1
		call	ds:lstrcpynA
		push	[ebp+lpString1]	; lpString
		call	lstrlenA
		mov	ecx, [ebp+arg_C]
		mov	[ecx], eax
		add	dword_41F464, eax
		xor	eax, eax
		pop	ebp
		retn	10h
sub_40402C	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_404060(HWND	hDlg, int, HDC hdc, WPARAM wParam)
sub_404060	proc near		; DATA XREF: .data:lpDialogFunco

lParam		= dword	ptr -0Ch
var_8		= dword	ptr -8
lpFile		= dword	ptr -4
hDlg		= dword	ptr  8
arg_4		= dword	ptr  0Ch
hdc		= dword	ptr  10h
wParam		= dword	ptr  14h

		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		cmp	[ebp+arg_4], 110h
		push	ebx
		push	esi
		push	edi
		jnz	loc_404183
		mov	ebx, [ebp+wParam]
		mov	edi, [ebx+30h]
		test	edi, edi
		jge	short loc_404091
		mov	ecx, dword_42367C
		lea	eax, ds:4[edi*4]
		sub	ecx, eax
		mov	edi, [ecx]

loc_404091:				; CODE XREF: sub_404060+1Ej
		mov	eax, dword_423ED8
		push	dword ptr [ebx+34h] ; int
		add	edi, eax
		push	22h		; int
		movsx	eax, byte ptr [edi]
		mov	[ebp+wParam], eax
		mov	eax, [ebx+14h]
		push	[ebp+hDlg]	; hDlg
		and	[ebp+var_8], 0
		mov	esi, eax
		inc	edi
		not	esi
		shr	esi, 5
		and	esi, 1
		and	eax, 1
		mov	[ebp+lParam], edi
		mov	[ebp+lpFile], offset sub_40402C
		or	esi, eax
		call	sub_403F18
		push	dword ptr [ebx+38h] ; int
		push	23h		; int
		push	[ebp+hDlg]	; hDlg
		call	sub_403F18
		xor	eax, eax
		push	1		; uCheck
		test	esi, esi
		setz	al
		add	eax, 40Ah
		push	eax		; nIDButton
		push	[ebp+hDlg]	; hDlg
		call	ds:CheckDlgButton
		push	esi		; bEnable
		call	sub_403F3A
		push	3E8h		; nIDDlgItem
		push	[ebp+hDlg]	; hDlg
		call	ds:GetDlgItem
		mov	ebx, eax
		push	ebx		; wParam
		call	sub_403F4D
		mov	esi, ds:SendMessageA
		push	0		; lParam
		push	1		; wParam
		push	45Bh		; Msg
		push	ebx		; hWnd
		call	esi ; SendMessageA
		mov	eax, dword_423EB0
		mov	eax, [eax+68h]
		test	eax, eax
		jge	short loc_404134
		neg	eax
		push	eax		; nIndex
		call	ds:GetSysColor

loc_404134:				; CODE XREF: sub_404060+C9j
		push	eax		; lParam
		push	0		; wParam
		push	443h		; Msg
		push	ebx		; hWnd
		call	esi ; SendMessageA
		push	4010000h	; lParam
		push	0		; wParam
		push	445h		; Msg
		push	ebx		; hWnd
		call	esi ; SendMessageA
		and	dword_41F464, 0
		push	edi		; lpString
		call	lstrlenA
		push	eax		; lParam
		push	0		; wParam
		push	435h		; Msg
		push	ebx		; hWnd
		call	esi ; SendMessageA
		lea	eax, [ebp+lParam]
		push	eax		; lParam
		push	[ebp+wParam]	; wParam
		push	449h		; Msg
		push	ebx		; hWnd
		call	esi ; SendMessageA
		and	dword_420480, 0
		xor	eax, eax
		jmp	loc_4042E4
; ---------------------------------------------------------------------------

loc_404183:				; CODE XREF: sub_404060+10j
		cmp	[ebp+arg_4], 111h
		mov	ebx, ds:GetDlgItem
		mov	esi, ds:SendMessageA
		jnz	short loc_4041F2
		mov	eax, [ebp+hdc]
		shr	eax, 10h
		test	ax, ax
		jnz	loc_4042D5
		xor	eax, eax
		cmp	dword_420480, eax
		jnz	loc_4042D5
		mov	ecx, dword_41FC70
		lea	edi, [ecx+14h]
		test	byte ptr [edi],	20h
		jz	loc_4042D5
		push	eax		; lParam
		push	eax		; wParam
		push	0F0h		; Msg
		push	40Ah		; nIDDlgItem
		push	[ebp+hDlg]	; hDlg
		call	ebx ; GetDlgItem
		push	eax		; hWnd
		call	esi ; SendMessageA
		mov	ecx, [edi]
		and	eax, 1
		and	ecx, 0FFFFFFFEh
		push	eax		; bEnable
		or	ecx, eax
		mov	[edi], ecx
		call	sub_403F3A
		call	sub_4042EB

loc_4041F2:				; CODE XREF: sub_404060+136j
		cmp	[ebp+arg_4], 4Eh
		jnz	loc_4042C6
		push	3E8h		; nIDDlgItem
		push	[ebp+hDlg]	; hDlg
		call	ebx ; GetDlgItem
		mov	edi, [ebp+wParam]
		cmp	dword ptr [edi+8], 70Bh
		jnz	short loc_404284
		cmp	dword ptr [edi+0Ch], 201h
		jnz	short loc_404284
		mov	ecx, [edi+1Ch]
		mov	edx, [edi+18h]
		mov	[ebp+var_8], ecx
		sub	ecx, edx
		cmp	ecx, 800h
		mov	[ebp+lParam], edx
		mov	[ebp+lpFile], offset String
		jnb	short loc_404284
		lea	ecx, [ebp+lParam]
		push	ecx		; lParam
		push	0		; wParam
		push	44Bh		; Msg
		push	eax		; hWnd
		call	esi ; SendMessageA
		mov	edi, ds:LoadCursorA
		push	7F02h		; lpCursorName
		push	0		; hInstance
		call	edi ; LoadCursorA
		mov	ebx, ds:SetCursor
		push	eax		; hCursor
		call	ebx ; SetCursor
		push	1		; nShowCmd
		push	0		; lpDirectory
		push	0		; lpParameters
		push	[ebp+lpFile]	; lpFile
		push	offset Operation ; "open"
		push	[ebp+hDlg]	; hwnd
		call	ds:ShellExecuteA
		push	7F00h		; lpCursorName
		push	0		; hInstance
		call	edi ; LoadCursorA
		push	eax		; hCursor
		call	ebx ; SetCursor
		mov	edi, [ebp+wParam]

loc_404284:				; CODE XREF: sub_404060+1B0j
					; sub_404060+1B9j ...
		cmp	dword ptr [edi+8], 700h
		jnz	short loc_4042D8
		cmp	dword ptr [edi+0Ch], 100h
		jnz	short loc_4042D8
		cmp	dword ptr [edi+10h], 0Dh
		jnz	short loc_4042AD
		push	0		; lParam
		push	1		; wParam
		push	111h		; Msg
		push	hwnd		; hWnd
		call	esi ; SendMessageA

loc_4042AD:				; CODE XREF: sub_404060+23Aj
		cmp	dword ptr [edi+10h], 1Bh
		jnz	short loc_4042C1
		push	0		; lParam
		push	0		; wParam
		push	10h		; Msg
		push	hwnd		; hWnd
		call	esi ; SendMessageA

loc_4042C1:				; CODE XREF: sub_404060+251j
		xor	eax, eax
		inc	eax
		jmp	short loc_4042E4
; ---------------------------------------------------------------------------

loc_4042C6:				; CODE XREF: sub_404060+196j
		cmp	[ebp+arg_4], 40Bh
		jnz	short loc_4042D5
		inc	dword_420480

loc_4042D5:				; CODE XREF: sub_404060+141j
					; sub_404060+14Fj ...
		mov	edi, [ebp+wParam]

loc_4042D8:				; CODE XREF: sub_404060+22Bj
					; sub_404060+234j
		push	edi		; hWnd
		push	[ebp+hdc]	; hdc
		push	[ebp+arg_4]	; int
		call	sub_403F7F

loc_4042E4:				; CODE XREF: sub_404060+11Ej
					; sub_404060+264j
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn	10h
sub_404060	endp


; =============== S U B	R O U T	I N E =======================================


sub_4042EB	proc near		; CODE XREF: sub_404060+18Dp
					; sub_404356+315p
		cmp	dword_423F2C, 0
		mov	eax, dword_41F460
		jnz	short loc_4042FE
		mov	eax, wParam

loc_4042FE:				; CODE XREF: sub_4042EB+Cj
		push	1		; lParam
		push	1		; wParam
		push	0F4h		; Msg
		push	eax		; hWnd
		call	ds:SendMessageA
		retn
sub_4042EB	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_40430F(HWND	hDlg, int, HDC hdc, HWND hWnd)
sub_40430F	proc near		; DATA XREF: .data:004091D8o

hDlg		= dword	ptr  8
arg_4		= dword	ptr  0Ch
hdc		= dword	ptr  10h
hWnd		= dword	ptr  14h

		push	ebp
		mov	ebp, esp
		cmp	[ebp+arg_4], 110h
		push	esi
		mov	esi, [ebp+hWnd]
		jnz	short loc_404345
		push	dword ptr [esi+30h] ; int
		push	1Dh		; int
		push	[ebp+hDlg]	; hDlg
		call	sub_403F18
		mov	eax, [esi+3Ch]
		shl	eax, 0Ah
		add	eax, offset dword_424000
		push	eax		; lpString
		push	3E8h		; nIDDlgItem
		push	[ebp+hDlg]	; hDlg
		call	SetDlgItemTextA

loc_404345:				; CODE XREF: sub_40430F+Ej
		push	esi		; hWnd
		push	[ebp+hdc]	; hdc
		push	[ebp+arg_4]	; int
		call	sub_403F7F
		pop	esi
		pop	ebp
		retn	10h
sub_40430F	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_404356(HWND	hDlg, int, HDC hdc, HWND)
sub_404356	proc near		; DATA XREF: .data:004091D0o

bi		= _browseinfoA ptr -48h
var_28		= dword	ptr -28h
TotalNumberOfClusters= dword ptr -24h
var_20		= dword	ptr -20h
var_1C		= byte ptr -1Ch
BytesPerSector	= dword	ptr -18h
var_14		= byte ptr -14h
SectorsPerCluster= dword ptr -10h
NumberOfFreeClusters= dword ptr	-0Ch
hWnd		= dword	ptr -8
var_4		= dword	ptr -4
hDlg		= dword	ptr  8
arg_4		= dword	ptr  0Ch
hdc		= dword	ptr  10h
arg_C		= dword	ptr  14h

		push	ebp
		mov	ebp, esp
		sub	esp, 48h
		mov	eax, dword_41FC70
		push	ebx
		push	esi
		mov	[ebp+var_20], eax
		mov	esi, [eax+3Ch]
		mov	eax, [eax+38h]
		shl	esi, 0Ah
		add	esi, offset dword_424000
		cmp	[ebp+arg_4], 40Bh
		push	edi
		mov	[ebp+var_4], eax
		mov	ebx, 3FBh
		jnz	short loc_404394
		push	esi		; lpString
		push	ebx		; nIDDlgItem
		call	sub_40540B
		push	esi		; lpsz
		call	sub_405DC8

loc_404394:				; CODE XREF: sub_404356+2Fj
		cmp	[ebp+arg_4], 110h
		jnz	short loc_40440F
		mov	edi, [ebp+hDlg]
		push	ebx		; nIDDlgItem
		push	edi		; hDlg
		call	ds:GetDlgItem
		push	esi
		mov	[ebp+hWnd], eax
		call	sub_4056C6
		test	eax, eax
		jz	short loc_4043C5
		push	esi		; lpsz
		call	sub_4056ED
		test	eax, eax
		jnz	short loc_4043C5
		push	esi		; lpString
		call	sub_405659

loc_4043C5:				; CODE XREF: sub_404356+5Dj
					; sub_404356+67j
		push	esi		; lpString
		mov	hDlg, edi
		push	[ebp+hWnd]	; hWnd
		call	ds:SetWindowTextA
		mov	eax, [ebp+arg_C]
		push	dword ptr [eax+34h] ; int
		push	1		; int
		push	edi		; hDlg
		call	sub_403F18
		mov	eax, [ebp+arg_C]
		push	dword ptr [eax+30h] ; int
		push	14h		; int
		push	edi		; hDlg
		call	sub_403F18
		push	[ebp+hWnd]	; wParam
		call	sub_403F4D
		push	7
		call	sub_405E88
		test	eax, eax
		jz	loc_404676
		push	1
		push	[ebp+hWnd]
		call	eax

loc_40440F:				; CODE XREF: sub_404356+45j
		cmp	[ebp+arg_4], 111h
		jnz	loc_4044EB
		movzx	eax, word ptr [ebp+hdc]
		cmp	eax, ebx
		jnz	short loc_40443C
		mov	ecx, [ebp+hdc]
		shr	ecx, 10h
		cmp	cx, 300h
		jnz	loc_404676
		mov	[ebp+arg_4], 40Fh

loc_40443C:				; CODE XREF: sub_404356+CCj
		cmp	eax, 3E9h
		jnz	loc_4044EB
		push	7
		xor	eax, eax
		pop	ecx
		lea	edi, [ebp+bi.pidlRoot]
		push	[ebp+var_4]	; int
		rep stosd
		mov	eax, [ebp+hDlg]
		mov	edi, offset byte_4204A0
		push	offset dword_41F870 ; lpString1
		mov	[ebp+bi.hwndOwner], eax
		mov	[ebp+bi.pszDisplayName], edi
		mov	[ebp+bi.lpfn], offset sub_40468B
		mov	[ebp+bi.lParam], esi
		call	sub_405B88
		mov	[ebp+bi.lpszTitle], eax
		lea	eax, [ebp+bi]
		push	eax		; lpbi
		mov	[ebp+bi.ulFlags], 41h
		call	ds:SHBrowseForFolderA
		test	eax, eax
		jz	short loc_4044E4
		push	eax		; pv
		call	ds:CoTaskMemFree
		push	esi		; lpString
		call	sub_405659
		mov	eax, dword_423EB0
		mov	eax, [eax+11Ch]
		test	eax, eax
		jz	short loc_4044D2
		cmp	esi, offset byte_429400
		jnz	short loc_4044D2
		push	eax		; int
		push	0		; lpString1
		call	sub_405B88
		push	edi		; lpString2
		mov	edi, offset String
		push	edi		; lpString1
		call	ds:lstrcmpiA
		test	eax, eax
		jz	short loc_4044D2
		push	edi		; lpString2
		push	esi		; lpString1
		call	lstrcatA

loc_4044D2:				; CODE XREF: sub_404356+152j
					; sub_404356+15Aj ...
		inc	dword_42048C
		push	esi		; lpString
		push	ebx		; nIDDlgItem
		push	[ebp+hDlg]	; hDlg
		call	SetDlgItemTextA
		jmp	short loc_4044EB
; ---------------------------------------------------------------------------

loc_4044E4:				; CODE XREF: sub_404356+136j
		mov	[ebp+arg_4], 40Fh

loc_4044EB:				; CODE XREF: sub_404356+C0j
					; sub_404356+EBj ...
		cmp	[ebp+arg_4], 40Fh
		jz	short loc_404501
		cmp	[ebp+arg_4], 405h
		jnz	loc_404676

loc_404501:				; CODE XREF: sub_404356+19Cj
		and	[ebp+var_4], 0
		and	[ebp+hWnd], 0
		push	esi		; lpString
		push	ebx		; nIDDlgItem
		call	sub_40540B
		push	esi		; lpString2
		call	sub_40573A
		test	eax, eax
		jnz	short loc_404521
		mov	[ebp+var_4], 1

loc_404521:				; CODE XREF: sub_404356+1C2j
		mov	edi, offset RootPathName
		push	esi		; lpString2
		push	edi		; lpString1
		call	sub_405B66
		xor	ebx, ebx
		push	ebx
		call	sub_405E88
		cmp	eax, ebx
		mov	[ebp+NumberOfFreeClusters], eax
		jz	short loc_404571
		xor	eax, eax
		cmp	eax, edi
		jz	short loc_40456F

loc_404542:				; CODE XREF: sub_404356+217j
		lea	eax, [ebp+var_1C]
		push	eax
		lea	eax, [ebp+var_14]
		push	eax
		lea	eax, [ebp+var_28]
		push	eax
		push	edi
		call	[ebp+NumberOfFreeClusters]
		test	eax, eax
		jnz	short loc_4045C2
		test	ebx, ebx
		jz	short loc_40455D
		and	[ebx], ax

loc_40455D:				; CODE XREF: sub_404356+202j
		push	edi		; lpString
		call	sub_4056A0
		mov	ebx, eax
		dec	ebx
		cmp	ebx, edi
		mov	word ptr [ebx],	5Ch
		jnz	short loc_404542

loc_40456F:				; CODE XREF: sub_404356+1EAj
		xor	ebx, ebx

loc_404571:				; CODE XREF: sub_404356+1E4j
		push	esi		; lpString2
		push	edi		; lpString1
		call	sub_405B66
		push	edi		; lpsz
		call	sub_4056ED
		cmp	eax, ebx
		jz	short loc_404585
		and	byte ptr [eax],	0

loc_404585:				; CODE XREF: sub_404356+22Aj
		lea	eax, [ebp+TotalNumberOfClusters]
		push	eax		; lpTotalNumberOfClusters
		lea	eax, [ebp+NumberOfFreeClusters]
		push	eax		; lpNumberOfFreeClusters
		lea	eax, [ebp+BytesPerSector]
		push	eax		; lpBytesPerSector
		lea	eax, [ebp+SectorsPerCluster]
		push	eax		; lpSectorsPerCluster
		push	edi		; lpRootPathName
		call	ds:GetDiskFreeSpaceA
		test	eax, eax
		jz	short loc_4045DA
		mov	eax, [ebp+SectorsPerCluster]
		mov	esi, 400h
		imul	eax, [ebp+BytesPerSector]
		push	esi		; nDenominator
		push	[ebp+NumberOfFreeClusters] ; nNumerator
		push	eax		; nNumber
		call	ds:MulDiv
		mov	edi, eax
		mov	[ebp+hWnd], 1
		jmp	short loc_4045E2
; ---------------------------------------------------------------------------

loc_4045C2:				; CODE XREF: sub_404356+1FEj
		mov	edi, [ebp+var_28]
		mov	eax, [ebp+TotalNumberOfClusters]
		shrd	edi, eax, 0Ah
		shr	eax, 0Ah
		mov	[ebp+hWnd], 1
		xor	ebx, ebx
		jmp	short loc_4045DD
; ---------------------------------------------------------------------------

loc_4045DA:				; CODE XREF: sub_404356+248j
		mov	edi, [ebp+arg_4]

loc_4045DD:				; CODE XREF: sub_404356+282j
		mov	esi, 400h

loc_4045E2:				; CODE XREF: sub_404356+26Aj
		push	5
		call	sub_4047A6
		cmp	[ebp+hWnd], ebx
		jz	short loc_4045F9
		cmp	edi, eax
		jnb	short loc_4045F9
		mov	[ebp+var_4], 2

loc_4045F9:				; CODE XREF: sub_404356+296j
					; sub_404356+29Aj
		mov	ecx, dword_42367C
		cmp	[ecx+10h], ebx
		jz	short loc_40462F
		push	eax		; int
		push	0FFFFFFFBh	; int
		push	3FFh		; nIDDlgItem
		call	sub_4046F1
		cmp	[ebp+hWnd], ebx
		jz	short loc_404621
		push	edi		; int
		push	0FFFFFFFCh	; int
		push	esi		; nIDDlgItem
		call	sub_4046F1
		jmp	short loc_40462F
; ---------------------------------------------------------------------------

loc_404621:				; CODE XREF: sub_404356+2BEj
		push	offset pszPath	; lpString
		push	esi		; nIDDlgItem
		push	[ebp+hDlg]	; hDlg
		call	SetDlgItemTextA

loc_40462F:				; CODE XREF: sub_404356+2ACj
					; sub_404356+2C9j
		mov	eax, [ebp+var_4]
		cmp	eax, ebx
		mov	dword_423F44, eax
		jnz	short loc_404645
		push	7
		call	sub_40140B
		mov	[ebp+var_4], eax

loc_404645:				; CODE XREF: sub_404356+2E3j
		mov	eax, [ebp+var_20]
		test	[eax+14h], esi
		jz	short loc_404650
		mov	[ebp+var_4], ebx

loc_404650:				; CODE XREF: sub_404356+2F5j
		xor	eax, eax
		cmp	[ebp+var_4], ebx
		setz	al
		push	eax		; bEnable
		call	sub_403F3A
		cmp	[ebp+var_4], ebx
		jnz	short loc_404670
		cmp	dword_42048C, ebx
		jnz	short loc_404670
		call	sub_4042EB

loc_404670:				; CODE XREF: sub_404356+30Bj
					; sub_404356+313j
		mov	dword_42048C, ebx

loc_404676:				; CODE XREF: sub_404356+ACj
					; sub_404356+D9j ...
		push	[ebp+arg_C]	; hWnd
		push	[ebp+hdc]	; hdc
		push	[ebp+arg_4]	; int
		call	sub_403F7F
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn	10h
sub_404356	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_40468B(HWND	hWnd, int, LPCITEMIDLIST pidl, LPARAM lParam)
sub_40468B	proc near		; DATA XREF: sub_404356+111o

hWnd		= dword	ptr  8
arg_4		= dword	ptr  0Ch
pidl		= dword	ptr  10h
lParam		= dword	ptr  14h

		push	ebp
		mov	ebp, esp
		cmp	[ebp+arg_4], 1
		push	esi
		mov	esi, ds:SendMessageA
		jnz	short loc_4046B7
		push	[ebp+lParam]	; lpString
		push	3FBh		; nIDDlgItem
		call	sub_40540B
		push	[ebp+lParam]	; lParam
		push	1		; wParam
		push	466h		; Msg
		push	[ebp+hWnd]	; hWnd
		call	esi ; SendMessageA

loc_4046B7:				; CODE XREF: sub_40468B+Ej
		cmp	[ebp+arg_4], 2
		jnz	short loc_4046EA
		push	[ebp+lParam]	; pszPath
		push	[ebp+pidl]	; pidl
		call	ds:SHGetPathFromIDListA
		test	eax, eax
		jz	short loc_4046DB
		push	7
		call	sub_40140B
		test	eax, eax
		jnz	short loc_4046DB
		inc	eax
		jmp	short loc_4046DD
; ---------------------------------------------------------------------------

loc_4046DB:				; CODE XREF: sub_40468B+40j
					; sub_40468B+4Bj
		xor	eax, eax

loc_4046DD:				; CODE XREF: sub_40468B+4Ej
		push	eax		; lParam
		push	0		; wParam
		push	465h		; Msg
		push	[ebp+hWnd]	; hWnd
		call	esi ; SendMessageA

loc_4046EA:				; CODE XREF: sub_40468B+30j
		xor	eax, eax
		pop	esi
		pop	ebp
		retn	10h
sub_40468B	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_4046F1(int nIDDlgItem, int,	int)
sub_4046F1	proc near		; CODE XREF: sub_404356+2B6p
					; sub_404356+2C4p ...

var_40		= byte ptr -40h
String1		= byte ptr -20h
nIDDlgItem	= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h

		push	ebp
		mov	ebp, esp
		sub	esp, 40h
		push	ebx
		push	esi
		mov	esi, [ebp+arg_8]
		push	edi
		push	14h
		cmp	esi, 100000h
		pop	edi
		push	0FFFFFFDCh
		pop	ebx
		jnb	short loc_404711
		push	0Ah
		pop	edi
		push	0FFFFFFDDh
		pop	ebx

loc_404711:				; CODE XREF: sub_4046F1+18j
		cmp	esi, 400h
		jnb	short loc_40471E
		push	0FFFFFFDEh
		xor	edi, edi
		pop	ebx

loc_40471E:				; CODE XREF: sub_4046F1+26j
		cmp	esi, 0FFFF3333h
		jnb	short loc_404735
		xor	eax, eax
		mov	ecx, edi
		inc	eax
		push	14h
		shl	eax, cl
		pop	ecx
		cdq
		idiv	ecx
		add	esi, eax

loc_404735:				; CODE XREF: sub_4046F1+33j
		lea	eax, [ebp+String1]
		push	0FFFFFFDFh	; int
		push	eax		; lpString1
		call	sub_405B88
		push	eax
		lea	eax, [ebp+var_40]
		push	ebx		; int
		push	eax		; lpString1
		call	sub_405B88
		push	eax
		mov	eax, esi
		and	eax, 0FFFFFFh
		mov	ecx, edi
		push	0Ah
		xor	edx, edx
		lea	eax, [eax+eax*4]
		add	eax, eax
		shr	eax, cl
		pop	ecx
		div	ecx
		mov	ecx, edi
		shr	esi, cl
		push	edx
		push	esi
		push	offset aU_USS	; "%u.%u%s%s"
		mov	esi, offset byte_4204A0
		push	[ebp+arg_4]	; int
		push	esi		; lpString1
		call	sub_405B88
		push	esi		; lpString
		mov	edi, eax
		call	lstrlenA
		add	edi, eax
		push	edi		; LPSTR
		call	ds:wsprintfA
		add	esp, 18h
		push	esi		; lpString
		push	[ebp+nIDDlgItem] ; nIDDlgItem
		push	hDlg		; hDlg
		call	SetDlgItemTextA
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn	0Ch
sub_4046F1	endp


; =============== S U B	R O U T	I N E =======================================


sub_4047A6	proc near		; CODE XREF: sub_404356+28Ep
					; sub_404853+59Cp ...

arg_0		= dword	ptr  4

		mov	edx, dword_423ECC
		mov	ecx, dword_423EC8
		xor	eax, eax
		test	edx, edx
		jz	short locret_4047D0
		push	esi

loc_4047B9:				; CODE XREF: sub_4047A6+27j
		test	byte ptr [ecx+8], 1
		jz	short loc_4047C6
		mov	esi, [esp+4+arg_0]
		add	eax, [ecx+esi*4]

loc_4047C6:				; CODE XREF: sub_4047A6+17j
		add	ecx, 418h
		dec	edx
		jnz	short loc_4047B9
		pop	esi

locret_4047D0:				; CODE XREF: sub_4047A6+10j
		retn	4
sub_4047A6	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_4047D3(HWND	hWnd, int)
sub_4047D3	proc near		; CODE XREF: sub_404853+2E0p
					; sub_404E54+45p

lParam		= dword	ptr -38h
var_34		= dword	ptr -34h
var_14		= dword	ptr -14h
Point		= tagPOINT ptr -10h
var_8		= byte ptr -8
var_4		= dword	ptr -4
hWnd		= dword	ptr  8
arg_4		= dword	ptr  0Ch

		push	ebp
		mov	ebp, esp
		sub	esp, 38h
		push	esi
		mov	esi, ds:SendMessageA
		push	edi
		mov	edi, [ebp+hWnd]
		push	0		; lParam
		push	9		; wParam
		push	110Ah		; Msg
		push	edi		; hWnd
		call	esi ; SendMessageA
		cmp	[ebp+arg_4], 0
		jz	short loc_404832
		call	ds:GetMessagePos
		movsx	ecx, ax
		shr	eax, 10h
		movsx	eax, ax
		mov	[ebp+Point.y], eax
		lea	eax, [ebp+Point]
		push	eax		; lpPoint
		push	edi		; hWnd
		mov	[ebp+Point.x], ecx
		call	ds:ScreenToClient
		lea	eax, [ebp+Point]
		push	eax		; lParam
		push	0		; wParam
		push	1111h		; Msg
		push	edi		; hWnd
		call	esi ; SendMessageA
		test	[ebp+var_8], 66h
		jnz	short loc_40482F
		or	eax, 0FFFFFFFFh
		jmp	short loc_40484D
; ---------------------------------------------------------------------------

loc_40482F:				; CODE XREF: sub_4047D3+55j
		mov	eax, [ebp+var_4]

loc_404832:				; CODE XREF: sub_4047D3+21j
		mov	[ebp+var_34], eax
		lea	eax, [ebp+lParam]
		push	eax		; lParam
		push	0		; wParam
		push	110Ch		; Msg
		push	edi		; hWnd
		mov	[ebp+lParam], 4
		call	esi ; SendMessageA
		mov	eax, [ebp+var_14]

loc_40484D:				; CODE XREF: sub_4047D3+5Aj
		pop	edi
		pop	esi
		leave
		retn	8
sub_4047D3	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_404853(HWND	hDlg, int, HDC hdc, HWND)
sub_404853	proc near		; DATA XREF: .data:004091CCo

lParam		= dword	ptr -50h
var_4C		= dword	ptr -4Ch
var_48		= dword	ptr -48h
var_44		= dword	ptr -44h
var_40		= dword	ptr -40h
var_3C		= dword	ptr -3Ch
var_38		= dword	ptr -38h
var_34		= dword	ptr -34h
var_28		= dword	ptr -28h
var_24		= dword	ptr -24h
var_1C		= dword	ptr -1Ch
var_18		= dword	ptr -18h
hbmImage	= dword	ptr -14h
var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_8		= dword	ptr -8
hWnd		= dword	ptr -4
hDlg		= dword	ptr  8
arg_4		= dword	ptr  0Ch
hdc		= dword	ptr  10h
arg_C		= dword	ptr  14h

		push	ebp
		mov	ebp, esp
		sub	esp, 50h
		push	ebx
		push	esi
		mov	esi, ds:GetDlgItem
		push	edi
		push	3F9h		; nIDDlgItem
		push	[ebp+hDlg]	; hDlg
		call	esi ; GetDlgItem
		push	408h		; nIDDlgItem
		mov	[ebp+var_8], eax
		push	[ebp+hDlg]	; hDlg
		call	esi ; GetDlgItem
		mov	ebx, dword_423EC8
		mov	esi, ds:SendMessageA
		mov	[ebp+hWnd], eax
		mov	eax, dword_423EB0
		add	eax, 94h
		xor	edi, edi
		cmp	[ebp+arg_4], 110h
		mov	[ebp+var_1C], ebx
		mov	[ebp+var_10], eax
		jnz	loc_404AC9
		mov	eax, [ebp+hDlg]
		push	2
		mov	dword_423F00, eax
		mov	eax, dword_423ECC
		pop	ebx
		mov	[ebp+var_18], edi
		shl	eax, 2
		push	eax		; dwBytes
		push	40h		; uFlags
		mov	[ebp+var_C], ebx
		call	ds:GlobalAlloc
		push	6Eh		; lpBitmapName
		mov	dword_420494, eax
		push	hInstance	; hInstance
		call	ds:LoadBitmapA
		or	dword_420488, 0FFFFFFFFh
		push	offset sub_404E54 ; dwNewLong
		push	0FFFFFFFCh	; nIndex
		mov	[ebp+hbmImage],	eax
		push	[ebp+hWnd]	; hWnd
		call	ds:SetWindowLongA
		push	edi		; cGrow
		push	6		; cInitial
		push	21h		; flags
		push	10h		; cy
		push	10h		; cx
		mov	lpPrevWndFunc, eax
		call	ds:ImageList_Create
		push	0FF00FFh	; crMask
		mov	himl, eax
		push	[ebp+hbmImage]	; hbmImage
		push	eax		; himl
		call	ds:ImageList_AddMasked
		push	himl		; lParam
		push	ebx		; wParam
		push	1109h		; Msg
		push	[ebp+hWnd]	; hWnd
		call	esi ; SendMessageA
		push	edi		; lParam
		push	edi		; wParam
		push	111Ch		; Msg
		push	[ebp+hWnd]	; hWnd
		call	esi ; SendMessageA
		cmp	eax, 10h
		jge	short loc_40494D
		push	edi		; lParam
		push	10h		; wParam
		push	111Bh		; Msg
		push	[ebp+hWnd]	; hWnd
		call	esi ; SendMessageA

loc_40494D:				; CODE XREF: sub_404853+EBj
		push	[ebp+hbmImage]	; ho
		call	ds:DeleteObject
		xor	ebx, ebx

loc_404958:				; CODE XREF: sub_404853+13Aj
		mov	eax, [ebp+var_10]
		mov	eax, [eax+ebx*4]
		cmp	eax, edi
		jz	short loc_404989
		cmp	ebx, 20h
		jz	short loc_40496A
		mov	[ebp+var_C], edi

loc_40496A:				; CODE XREF: sub_404853+112j
		push	eax		; int
		push	edi		; lpString1
		call	sub_405B88
		push	eax		; lParam
		push	edi		; wParam
		push	143h		; Msg
		push	[ebp+var_8]	; hWnd
		call	esi ; SendMessageA
		push	ebx		; lParam
		push	eax		; wParam
		push	151h		; Msg
		push	[ebp+var_8]	; hWnd
		call	esi ; SendMessageA

loc_404989:				; CODE XREF: sub_404853+10Dj
		inc	ebx
		cmp	ebx, 21h
		jl	short loc_404958
		mov	edi, [ebp+arg_C]
		mov	ebx, [ebp+var_C]
		push	dword ptr [edi+ebx*4+30h] ; int
		push	15h		; int
		push	[ebp+hDlg]	; hDlg
		call	sub_403F18
		push	dword ptr [edi+ebx*4+34h] ; int
		push	16h		; int
		push	[ebp+hDlg]	; hDlg
		call	sub_403F18
		xor	edi, edi
		xor	ebx, ebx
		cmp	dword_423ECC, edi
		jle	loc_404A85
		mov	eax, [ebp+var_1C]
		lea	edx, [eax+8]
		mov	[ebp+hbmImage],	edx

loc_4049CA:				; CODE XREF: sub_404853+226j
		lea	eax, [edx+10h]
		cmp	byte ptr [eax],	0
		jz	loc_404A66
		mov	[ebp+var_38], eax
		mov	eax, [edx]
		push	20h
		mov	edx, eax
		pop	ecx
		mov	[ebp+lParam], ebx
		and	edx, ecx
		mov	[ebp+var_4C], 0FFFF0002h
		test	al, 2
		mov	[ebp+var_48], 0Dh
		mov	[ebp+var_3C], ecx
		mov	[ebp+var_24], edi
		mov	[ebp+var_40], edx
		jz	short loc_404A38
		lea	eax, [ebp+lParam]
		mov	[ebp+var_48], 4Dh
		push	eax		; lParam
		push	0		; wParam
		push	1100h		; Msg
		mov	[ebp+var_28], 1
		push	[ebp+hWnd]	; hWnd
		call	esi ; SendMessageA
		mov	ecx, dword_420494
		mov	[ebp+var_18], 1
		mov	[ecx+edi*4], eax
		mov	eax, dword_420494
		mov	ebx, [eax+edi*4]
		jmp	short loc_404A66
; ---------------------------------------------------------------------------

loc_404A38:				; CODE XREF: sub_404853+1ABj
		test	al, 4
		jz	short loc_404A4D
		push	ebx		; lParam
		push	3		; wParam
		push	110Ah		; Msg
		push	[ebp+hWnd]	; hWnd
		call	esi ; SendMessageA
		mov	ebx, eax
		jmp	short loc_404A66
; ---------------------------------------------------------------------------

loc_404A4D:				; CODE XREF: sub_404853+1E7j
		lea	eax, [ebp+lParam]
		push	eax		; lParam
		push	0		; wParam
		push	1100h		; Msg
		push	[ebp+hWnd]	; hWnd
		call	esi ; SendMessageA
		mov	ecx, dword_420494
		mov	[ecx+edi*4], eax

loc_404A66:				; CODE XREF: sub_404853+17Dj
					; sub_404853+1E3j ...
		mov	edx, [ebp+hbmImage]
		inc	edi
		add	edx, 418h
		cmp	edi, dword_423ECC
		mov	[ebp+hbmImage],	edx
		jl	loc_4049CA
		cmp	[ebp+var_18], 0
		jnz	short loc_404A9E

loc_404A85:				; CODE XREF: sub_404853+168j
		push	0FFFFFFF0h	; nIndex
		push	[ebp+hWnd]	; hWnd
		call	ds:GetWindowLongA
		and	al, 0FBh
		push	eax		; dwNewLong
		push	0FFFFFFF0h	; nIndex
		push	[ebp+hWnd]	; hWnd
		call	ds:SetWindowLongA

loc_404A9E:				; CODE XREF: sub_404853+230j
		cmp	[ebp+var_C], 0
		jnz	short loc_404ABC
		push	5		; nCmdShow
		push	[ebp+var_8]	; hWnd
		call	ds:ShowWindow
		push	[ebp+var_8]	; wParam
		call	sub_403F4D
		jmp	loc_404E3F
; ---------------------------------------------------------------------------

loc_404ABC:				; CODE XREF: sub_404853+24Fj
		push	[ebp+hWnd]	; wParam
		call	sub_403F4D
		mov	ebx, [ebp+var_1C]
		xor	edi, edi

loc_404AC9:				; CODE XREF: sub_404853+4Ej
		cmp	[ebp+arg_4], 405h
		jnz	short loc_404AE4
		xor	ecx, ecx
		mov	[ebp+hdc], edi
		inc	ecx
		mov	[ebp+arg_4], 40Fh
		mov	[ebp+arg_C], ecx
		jmp	short loc_404AE7
; ---------------------------------------------------------------------------

loc_404AE4:				; CODE XREF: sub_404853+27Dj
		mov	ecx, [ebp+arg_C]

loc_404AE7:				; CODE XREF: sub_404853+28Fj
		cmp	[ebp+arg_4], 4Eh
		mov	eax, 413h
		jz	short loc_404AFB
		cmp	[ebp+arg_4], eax
		jnz	loc_404BE2

loc_404AFB:				; CODE XREF: sub_404853+29Dj
		cmp	[ebp+arg_4], eax
		mov	[ebp+var_C], ecx
		jz	short loc_404B10
		cmp	dword ptr [ecx+4], 408h
		jnz	loc_404BE2

loc_404B10:				; CODE XREF: sub_404853+2AEj
		test	byte ptr dword_423EB8+1, 2
		jnz	short loc_404B8F
		cmp	[ebp+arg_4], eax
		jz	short loc_404B27
		mov	ecx, [ebp+arg_C]
		cmp	dword ptr [ecx+8], 0FFFFFFFEh
		jnz	short loc_404B8F

loc_404B27:				; CODE XREF: sub_404853+2C9j
		xor	ecx, ecx
		cmp	[ebp+arg_4], eax
		setnz	cl
		push	ecx		; int
		push	[ebp+hWnd]	; hWnd
		call	sub_4047D3
		cmp	eax, edi
		jl	short loc_404B8F
		mov	ecx, eax
		imul	ecx, 418h
		lea	edx, [ecx+ebx+8]
		mov	ecx, [edx]
		test	cl, 10h
		jnz	short loc_404B8F
		test	cl, 40h
		jz	short loc_404B68
		xor	ecx, 80h
		test	cl, cl
		jns	short loc_404B63
		or	ecx, 1
		jmp	short loc_404B6B
; ---------------------------------------------------------------------------

loc_404B63:				; CODE XREF: sub_404853+309j
		and	ecx, 0FFFFFFFEh
		jmp	short loc_404B6B
; ---------------------------------------------------------------------------

loc_404B68:				; CODE XREF: sub_404853+2FFj
		xor	ecx, 1

loc_404B6B:				; CODE XREF: sub_404853+30Ej
					; sub_404853+313j
		push	eax
		mov	[edx], ecx
		call	sub_40117D
		mov	eax, dword_423EB8
		xor	ecx, ecx
		not	eax
		inc	ecx
		mov	[ebp+arg_4], 40Fh
		shr	eax, 8
		and	eax, ecx
		mov	[ebp+hdc], ecx
		mov	[ebp+arg_C], eax

loc_404B8F:				; CODE XREF: sub_404853+2C4j
					; sub_404853+2D2j ...
		cmp	[ebp+var_C], edi
		jz	short loc_404BE2
		mov	eax, [ebp+var_C]
		cmp	dword ptr [eax+8], 0FFFFFE6Eh
		jnz	short loc_404BAE
		push	dword ptr [eax+5Ch] ; lParam
		push	edi		; wParam
		push	419h		; Msg
		push	[ebp+hWnd]	; hWnd
		call	esi ; SendMessageA

loc_404BAE:				; CODE XREF: sub_404853+34Bj
		mov	eax, [ebp+var_C]
		cmp	dword ptr [eax+8], 0FFFFFE6Ah
		jnz	short loc_404BE2
		cmp	dword ptr [eax+0Ch], 2
		jnz	short loc_404BD2
		mov	eax, [eax+5Ch]
		imul	eax, 418h
		lea	eax, [eax+ebx+8]
		or	dword ptr [eax], 20h
		jmp	short loc_404BE2
; ---------------------------------------------------------------------------

loc_404BD2:				; CODE XREF: sub_404853+36Bj
		mov	eax, [eax+5Ch]
		imul	eax, 418h
		lea	ebx, [eax+ebx+8]
		and	dword ptr [ebx], 0FFFFFFDFh

loc_404BE2:				; CODE XREF: sub_404853+2A2j
					; sub_404853+2B7j ...
		cmp	[ebp+arg_4], 111h
		jnz	short loc_404C5D
		cmp	word ptr [ebp+hdc], 3F9h
		jnz	loc_404E3F
		mov	eax, [ebp+hdc]
		shr	eax, 10h
		cmp	ax, 1
		jnz	loc_404E3F
		push	edi		; lParam
		push	edi		; wParam
		push	147h		; Msg
		push	[ebp+var_8]	; hWnd
		call	esi ; SendMessageA
		cmp	eax, 0FFFFFFFFh
		jz	loc_404E3F
		push	edi		; lParam
		push	eax		; wParam
		push	150h		; Msg
		push	[ebp+var_8]	; hWnd
		call	esi ; SendMessageA
		mov	ebx, eax
		cmp	ebx, 0FFFFFFFFh
		jz	short loc_404C37
		mov	eax, [ebp+var_10]
		cmp	[eax+ebx*4], edi
		jnz	short loc_404C3A

loc_404C37:				; CODE XREF: sub_404853+3DAj
		push	20h
		pop	ebx

loc_404C3A:				; CODE XREF: sub_404853+3E2j
		push	ebx
		call	sub_401299
		push	ebx		; lParam
		push	edi		; wParam
		push	420h		; Msg
		push	[ebp+hDlg]	; hWnd
		call	esi ; SendMessageA
		mov	[ebp+hdc], 1
		mov	[ebp+arg_C], edi
		mov	[ebp+arg_4], 40Fh

loc_404C5D:				; CODE XREF: sub_404853+396j
		cmp	[ebp+arg_4], 200h
		jnz	short loc_404C72
		push	edi		; lParam
		push	edi		; wParam
		push	200h		; Msg
		push	[ebp+hWnd]	; hWnd
		call	esi ; SendMessageA

loc_404C72:				; CODE XREF: sub_404853+411j
		cmp	[ebp+arg_4], 40Bh
		jnz	short loc_404CAD
		mov	eax, himl
		cmp	eax, edi
		jz	short loc_404C8B
		push	eax		; himl
		call	ds:ImageList_Destroy

loc_404C8B:				; CODE XREF: sub_404853+42Fj
		mov	eax, dword_420494
		cmp	eax, edi
		jz	short loc_404C9B
		push	eax		; hMem
		call	ds:GlobalFree

loc_404C9B:				; CODE XREF: sub_404853+43Fj
		mov	himl, edi
		mov	dword_420494, edi
		mov	dword_423F00, edi

loc_404CAD:				; CODE XREF: sub_404853+426j
		cmp	[ebp+arg_4], 40Fh
		jnz	loc_404E01
		push	edi
		push	edi
		call	sub_4011EF
		cmp	[ebp+hdc], edi
		jz	short loc_404CCD
		push	8
		call	sub_40140B

loc_404CCD:				; CODE XREF: sub_404853+471j
		cmp	[ebp+arg_C], edi
		jz	short loc_404D11
		push	dword_420494
		call	sub_4012E2
		mov	ebx, eax
		push	ebx
		call	sub_401299
		xor	eax, eax
		xor	ecx, ecx
		cmp	ebx, edi
		jle	short loc_404CFB

loc_404CED:				; CODE XREF: sub_404853+4A6j
		mov	edx, [ebp+var_10]
		cmp	[edx+eax*4], edi
		jz	short loc_404CF6
		inc	ecx

loc_404CF6:				; CODE XREF: sub_404853+4A0j
		inc	eax
		cmp	eax, ebx
		jl	short loc_404CED

loc_404CFB:				; CODE XREF: sub_404853+498j
		push	edi		; lParam
		push	ecx		; wParam
		push	14Eh		; Msg
		push	[ebp+var_8]	; hWnd
		call	esi ; SendMessageA
		mov	[ebp+arg_C], ebx
		mov	[ebp+arg_4], 420h

loc_404D11:				; CODE XREF: sub_404853+47Dj
		push	edi
		push	edi
		call	sub_4011EF
		mov	eax, dword_420494
		cmp	dword_423ECC, edi
		mov	[ebp+var_1C], eax
		mov	eax, dword_423EC8
		mov	[ebp+var_38], 0F030h
		mov	[ebp+var_C], edi
		jle	loc_404DD7
		lea	ebx, [eax+8]

loc_404D3E:				; CODE XREF: sub_404853+57Ej
		mov	eax, [ebp+var_1C]
		mov	ecx, [ebp+var_C]
		mov	eax, [eax+ecx*4]
		cmp	eax, edi
		jz	short loc_404DBF
		mov	ecx, [ebx]
		mov	[ebp+var_40], eax
		test	ch, 1
		mov	[ebp+var_44], 8
		jz	short loc_404D6D
		lea	eax, [ebx+10h]
		mov	[ebp+var_44], 9
		mov	[ebp+var_34], eax
		and	byte ptr [ebx+1], 0FEh

loc_404D6D:				; CODE XREF: sub_404853+507j
		test	cl, 40h
		jz	short loc_404D77
		push	3
		pop	eax
		jmp	short loc_404D85
; ---------------------------------------------------------------------------

loc_404D77:				; CODE XREF: sub_404853+51Dj
		mov	eax, ecx
		and	eax, 1
		inc	eax
		test	cl, 10h
		jz	short loc_404D85
		add	eax, 3

loc_404D85:				; CODE XREF: sub_404853+522j
					; sub_404853+52Dj
		mov	edx, ecx
		push	[ebp+var_40]	; lParam
		shl	eax, 0Bh
		and	edx, 8
		or	eax, edx
		mov	edx, ecx
		sar	ecx, 5
		add	eax, eax
		and	edx, 20h
		and	ecx, 1
		or	eax, edx
		inc	ecx
		mov	[ebp+var_3C], eax
		push	ecx		; wParam
		push	1102h		; Msg
		push	[ebp+hWnd]	; hWnd
		call	esi ; SendMessageA
		lea	eax, [ebp+var_44]
		push	eax		; lParam
		push	edi		; wParam
		push	110Dh		; Msg
		push	[ebp+hWnd]	; hWnd
		call	esi ; SendMessageA

loc_404DBF:				; CODE XREF: sub_404853+4F6j
		inc	[ebp+var_C]
		add	ebx, 418h
		mov	eax, [ebp+var_C]
		cmp	eax, dword_423ECC
		jl	loc_404D3E

loc_404DD7:				; CODE XREF: sub_404853+4E2j
		push	1		; bErase
		push	edi		; lpRect
		push	[ebp+hWnd]	; hWnd
		call	ds:InvalidateRect
		mov	eax, dword_42367C
		cmp	[eax+10h], edi
		jz	short loc_404E01
		push	5
		call	sub_4047A6
		push	eax		; int
		push	0FFFFFFFBh	; int
		push	3FFh		; nIDDlgItem
		call	sub_4046F1

loc_404E01:				; CODE XREF: sub_404853+461j
					; sub_404853+598j
		cmp	[ebp+arg_4], 420h
		jnz	short loc_404E3F
		test	byte ptr dword_423EB8+1, 1
		jz	short loc_404E3F
		xor	eax, eax
		cmp	[ebp+arg_C], 20h
		mov	esi, ds:ShowWindow
		setz	al
		shl	eax, 3
		mov	edi, eax
		push	edi		; nCmdShow
		push	[ebp+hWnd]	; hWnd
		call	esi ; ShowWindow
		push	edi		; nCmdShow
		push	3FEh		; nIDDlgItem
		push	[ebp+hDlg]	; hDlg
		call	ds:GetDlgItem
		push	eax		; hWnd
		call	esi ; ShowWindow

loc_404E3F:				; CODE XREF: sub_404853+264j
					; sub_404853+39Ej ...
		push	[ebp+arg_C]	; hWnd
		push	[ebp+hdc]	; hdc
		push	[ebp+arg_4]	; int
		call	sub_403F7F
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn	10h
sub_404853	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_404E54(HWND	hWnd, UINT Msg,	WPARAM wParam, int)
sub_404E54	proc near		; DATA XREF: sub_404853+90o

hWnd		= dword	ptr  8
Msg		= dword	ptr  0Ch
wParam		= dword	ptr  10h
arg_C		= dword	ptr  14h

		push	ebp
		mov	ebp, esp
		cmp	[ebp+Msg], 102h
		push	ebx
		push	esi
		jnz	short loc_404E79
		cmp	[ebp+wParam], 20h
		jnz	short loc_404EE5
		push	413h		; Msg
		call	sub_403F64
		xor	eax, eax
		jmp	loc_404EFE
; ---------------------------------------------------------------------------

loc_404E79:				; CODE XREF: sub_404E54+Cj
		cmp	[ebp+Msg], 200h
		mov	esi, 419h
		jnz	short loc_404EA5
		push	[ebp+hWnd]	; hWnd
		call	ds:IsWindowVisible
		test	eax, eax
		jz	short loc_404EE5
		push	1		; int
		push	[ebp+hWnd]	; hWnd
		call	sub_4047D3
		mov	ebx, eax
		mov	[ebp+Msg], esi
		jmp	short loc_404EA8
; ---------------------------------------------------------------------------

loc_404EA5:				; CODE XREF: sub_404E54+31j
		mov	ebx, [ebp+arg_C]

loc_404EA8:				; CODE XREF: sub_404E54+4Fj
		cmp	[ebp+Msg], esi
		jnz	short loc_404EE8
		cmp	dword_420488, ebx
		jz	short loc_404EE8
		push	edi
		mov	esi, offset dword_424000
		mov	edi, offset byte_4204A0
		push	esi		; lpString2
		push	edi		; lpString1
		mov	dword_420488, ebx
		call	sub_405B66
		push	ebx		; int
		push	esi		; LPSTR
		call	sub_405AC4
		push	6
		call	sub_40140B
		push	edi		; lpString2
		push	esi		; lpString1
		call	sub_405B66
		pop	edi
		jmp	short loc_404EE8
; ---------------------------------------------------------------------------

loc_404EE5:				; CODE XREF: sub_404E54+12j
					; sub_404E54+3Ej
		mov	ebx, [ebp+arg_C]

loc_404EE8:				; CODE XREF: sub_404E54+57j
					; sub_404E54+5Fj ...
		push	ebx		; lParam
		push	[ebp+wParam]	; wParam
		push	[ebp+Msg]	; Msg
		push	[ebp+hWnd]	; hWnd
		push	lpPrevWndFunc	; lpPrevWndFunc
		call	ds:CallWindowProcA

loc_404EFE:				; CODE XREF: sub_404E54+20j
		pop	esi
		pop	ebx
		pop	ebp
		retn	10h
sub_404E54	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_404F04(int,	LPCSTR lpString)
sub_404F04	proc near		; CODE XREF: sub_401423+9p
					; sub_401434:loc_401492p ...

lParam		= dword	ptr -30h
wParam		= dword	ptr -2Ch
var_28		= dword	ptr -28h
var_1C		= dword	ptr -1Ch
var_8		= dword	ptr -8
hWnd		= dword	ptr -4
arg_0		= dword	ptr  8
lpString	= dword	ptr  0Ch

		push	ebp
		mov	ebp, esp
		sub	esp, 30h
		mov	eax, dword_423684
		push	ebx
		xor	ebx, ebx
		push	esi
		cmp	eax, ebx
		push	edi
		mov	[ebp+hWnd], eax
		jz	loc_404FCF
		mov	eax, dword_423F54
		mov	esi, offset byte_41FC78
		mov	edi, eax
		mov	[ebp+var_8], eax
		and	edi, 1
		jnz	short loc_404F3C
		push	[ebp+arg_0]	; int
		push	esi		; lpString1
		call	sub_405B88

loc_404F3C:				; CODE XREF: sub_404F04+2Dj
		push	esi		; lpString
		call	lstrlenA
		cmp	[ebp+lpString],	ebx
		mov	[ebp+arg_0], eax
		jz	short loc_404F65
		push	[ebp+lpString]	; lpString
		call	lstrlenA
		add	eax, [ebp+arg_0]
		cmp	eax, 800h
		jnb	short loc_404FCF
		push	[ebp+lpString]	; lpString2
		push	esi		; lpString1
		call	lstrcatA

loc_404F65:				; CODE XREF: sub_404F04+44j
		test	byte ptr [ebp+var_8], 4
		jnz	short loc_404F78
		push	esi		; lpString
		push	dword_423668	; hWnd
		call	ds:SetWindowTextA

loc_404F78:				; CODE XREF: sub_404F04+65j
		test	byte ptr [ebp+var_8], 2
		jnz	short loc_404FC2
		push	ebx		; lParam
		push	ebx		; wParam
		push	1004h		; Msg
		mov	[ebp+var_1C], esi
		push	[ebp+hWnd]	; hWnd
		mov	esi, ds:SendMessageA
		mov	[ebp+lParam], 1
		call	esi ; SendMessageA
		sub	eax, edi
		mov	[ebp+var_28], ebx
		mov	[ebp+wParam], eax
		lea	eax, [ebp+lParam]
		push	eax		; lParam
		mov	eax, 1007h
		sub	eax, edi
		push	ebx		; wParam
		push	eax		; Msg
		push	[ebp+hWnd]	; hWnd
		call	esi ; SendMessageA
		push	ebx		; lParam
		push	[ebp+wParam]	; wParam
		push	1013h		; Msg
		push	[ebp+hWnd]	; hWnd
		call	esi ; SendMessageA

loc_404FC2:				; CODE XREF: sub_404F04+78j
		cmp	edi, ebx
		jz	short loc_404FCF
		mov	eax, [ebp+arg_0]
		mov	byte_41FC78[eax], bl

loc_404FCF:				; CODE XREF: sub_404F04+15j
					; sub_404F04+56j ...
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn	8
sub_404F04	endp


; =============== S U B	R O U T	I N E =======================================


; DWORD	__stdcall StartAddress(LPVOID lpThreadParameter)
StartAddress	proc near		; CODE XREF: sub_4036AF+297p
					; DATA XREF: sub_405042+1C9o

lpThreadParameter= dword ptr  4

		push	esi
		mov	esi, dword_423EC8
		push	edi
		mov	edi, dword_423ECC
		push	0		; pvReserved
		call	ds:OleInitialize
		or	dword_423F58, eax
		push	0		; Msg
		call	sub_403F64
		test	edi, edi
		jz	short loc_405028
		add	esi, 0Ch

loc_405000:				; CODE XREF: StartAddress+48j
		dec	edi
		test	byte ptr [esi-4], 1
		jz	short loc_405016
		push	[esp+8+lpThreadParameter] ; hWnd
		push	dword ptr [esi]	; int
		call	sub_401389
		test	eax, eax
		jnz	short loc_405022

loc_405016:				; CODE XREF: StartAddress+2Fj
		add	esi, 418h
		test	edi, edi
		jnz	short loc_405000
		jmp	short loc_405028
; ---------------------------------------------------------------------------

loc_405022:				; CODE XREF: StartAddress+3Ej
		inc	dword_423F2C

loc_405028:				; CODE XREF: StartAddress+25j
					; StartAddress+4Aj
		push	404h		; Msg
		call	sub_403F64
		call	ds:OleUninitialize
		mov	eax, dword_423F2C
		pop	edi
		pop	esi
		retn	4
StartAddress	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_405042(HWND	hDlg, LPARAM, LPARAM, HWND)
sub_405042	proc near		; DATA XREF: .data:004091D4o

var_40		= dword	ptr -40h
lParam		= dword	ptr -38h
var_34		= dword	ptr -34h
var_30		= dword	ptr -30h
var_2C		= dword	ptr -2Ch
var_28		= dword	ptr -28h
var_24		= dword	ptr -24h
var_20		= byte ptr -20h
Rect		= tagRECT ptr -18h
ThreadId	= dword	ptr -8
hWnd		= dword	ptr -4
hDlg		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h
arg_C		= dword	ptr  14h

		push	ebp
		mov	ebp, esp
		sub	esp, 40h
		push	ebx
		push	esi
		push	edi
		mov	edi, dword_423684
		xor	ebx, ebx
		cmp	[ebp+arg_4], 110h
		mov	[ebp+hWnd], edi
		jnz	loc_4051EE
		or	[ebp+var_30], 0FFFFFFFFh
		or	[ebp+var_24], 0FFFFFFFFh
		xor	eax, eax
		lea	edi, [ebp+var_20]
		mov	[ebp+lParam], 2
		mov	[ebp+var_34], ebx
		mov	[ebp+var_2C], ebx
		mov	[ebp+var_28], ebx
		stosd
		stosd
		mov	eax, dword_423EB0
		mov	edi, ds:GetDlgItem
		push	403h		; nIDDlgItem
		mov	ecx, [eax+5Ch]
		mov	eax, [eax+60h]
		push	[ebp+hDlg]	; hDlg
		mov	[ebp+arg_4], ecx
		mov	[ebp+arg_8], eax
		call	edi ; GetDlgItem
		push	3EEh		; nIDDlgItem
		mov	hWnd, eax
		push	[ebp+hDlg]	; hDlg
		call	edi ; GetDlgItem
		push	3F8h		; nIDDlgItem
		mov	dword_423668, eax
		push	[ebp+hDlg]	; hDlg
		call	edi ; GetDlgItem
		push	hWnd		; wParam
		mov	dword_423684, eax
		mov	[ebp+hWnd], eax
		call	sub_403F4D
		push	4
		call	sub_4047A6
		mov	nDenominator, eax
		lea	eax, [ebp+Rect]
		push	eax		; lpRect
		mov	nNumber, ebx
		push	[ebp+hWnd]	; hWnd
		call	ds:GetClientRect
		push	15h		; nIndex
		call	ds:GetSystemMetrics
		mov	ecx, [ebp+Rect.right]
		mov	esi, ds:SendMessageA
		sub	ecx, eax
		lea	eax, [ebp+lParam]
		push	eax		; lParam
		push	ebx		; wParam
		push	101Bh		; Msg
		mov	[ebp+var_30], ecx
		push	[ebp+hWnd]	; hWnd
		call	esi ; SendMessageA
		mov	eax, 4000h
		push	eax		; lParam
		push	eax		; wParam
		push	1036h		; Msg
		push	[ebp+hWnd]	; hWnd
		call	esi ; SendMessageA
		cmp	[ebp+arg_4], ebx
		jl	short loc_40514A
		push	[ebp+arg_4]	; lParam
		push	ebx		; wParam
		push	1001h		; Msg
		push	[ebp+hWnd]	; hWnd
		call	esi ; SendMessageA
		push	[ebp+arg_4]	; lParam
		push	ebx		; wParam
		push	1026h		; Msg
		push	[ebp+hWnd]	; hWnd
		call	esi ; SendMessageA

loc_40514A:				; CODE XREF: sub_405042+EAj
		cmp	[ebp+arg_8], ebx
		jl	short loc_40515D
		push	[ebp+arg_8]	; lParam
		push	ebx		; wParam
		push	1024h		; Msg
		push	[ebp+hWnd]	; hWnd
		call	esi ; SendMessageA

loc_40515D:				; CODE XREF: sub_405042+10Bj
		mov	eax, [ebp+arg_C]
		push	dword ptr [eax+30h] ; int
		push	1Bh		; int
		push	[ebp+hDlg]	; hDlg
		call	sub_403F18
		test	byte ptr dword_423EB8, 3
		jz	short loc_4051AA
		push	ebx		; nCmdShow
		push	hWnd		; hWnd
		call	ds:ShowWindow
		test	byte ptr dword_423EB8, 2
		jnz	short loc_405199
		push	8		; nCmdShow
		push	[ebp+hWnd]	; hWnd
		call	ds:ShowWindow
		jmp	short loc_40519F
; ---------------------------------------------------------------------------

loc_405199:				; CODE XREF: sub_405042+148j
		mov	hWnd, ebx

loc_40519F:				; CODE XREF: sub_405042+155j
		push	dword_423668	; wParam
		call	sub_403F4D

loc_4051AA:				; CODE XREF: sub_405042+132j
		push	3ECh		; nIDDlgItem
		push	[ebp+hDlg]	; hDlg
		call	edi ; GetDlgItem
		push	75300000h	; lParam
		mov	edi, eax
		push	ebx		; wParam
		push	401h		; Msg
		push	edi		; hWnd
		call	esi ; SendMessageA
		test	byte ptr dword_423EB8, 4
		jz	loc_4053BF
		push	[ebp+arg_8]	; lParam
		push	ebx		; wParam
		push	409h		; Msg
		push	edi		; hWnd
		call	esi ; SendMessageA
		push	[ebp+arg_4]	; lParam
		push	ebx		; wParam
		push	2001h		; Msg
		push	edi		; hWnd
		call	esi ; SendMessageA
		jmp	loc_4053BF
; ---------------------------------------------------------------------------

loc_4051EE:				; CODE XREF: sub_405042+1Bj
		cmp	[ebp+arg_4], 405h
		jnz	short loc_40521F
		lea	eax, [ebp+ThreadId]
		push	eax		; lpThreadId
		push	ebx		; dwCreationFlags
		push	3ECh		; nIDDlgItem
		push	[ebp+hDlg]	; hDlg
		call	ds:GetDlgItem
		push	eax		; lpParameter
		push	offset StartAddress ; lpStartAddress
		push	ebx		; dwStackSize
		push	ebx		; lpThreadAttributes
		call	ds:CreateThread
		push	eax		; hObject
		call	ds:CloseHandle

loc_40521F:				; CODE XREF: sub_405042+1B3j
		cmp	[ebp+arg_4], 111h
		mov	esi, ds:ShowWindow
		jnz	short loc_40524A
		cmp	word ptr [ebp+arg_8], 403h
		jnz	short loc_40526C
		push	ebx		; nCmdShow
		push	hWnd		; hWnd
		call	esi ; ShowWindow
		push	8		; nCmdShow
		push	edi		; hWnd
		call	esi ; ShowWindow
		push	edi		; wParam
		call	sub_403F4D

loc_40524A:				; CODE XREF: sub_405042+1EAj
		cmp	[ebp+arg_4], 404h
		jnz	short loc_4052A8
		cmp	dword_42366C, ebx
		jz	short loc_405281
		push	78h		; wParam
		mov	nResult, 2
		call	sub_403EF1

loc_40526C:				; CODE XREF: sub_405042+1F2j
					; sub_405042+26Aj ...
		push	[ebp+arg_C]	; hWnd
		push	[ebp+arg_8]	; hdc
		push	[ebp+arg_4]	; int
		call	sub_403F7F

loc_40527A:				; CODE XREF: sub_405042+37Fj
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn	10h
; ---------------------------------------------------------------------------

loc_405281:				; CODE XREF: sub_405042+217j
		push	8		; nCmdShow
		push	hwnd		; hWnd
		call	esi ; ShowWindow
		cmp	dword_423F2C, ebx
		jnz	short loc_4052A1
		mov	eax, dword_41FC70
		push	ebx		; lpString
		push	dword ptr [eax+34h] ; int
		call	sub_404F04

loc_4052A1:				; CODE XREF: sub_405042+24Fj
		push	1		; wParam
		call	sub_403EF1

loc_4052A8:				; CODE XREF: sub_405042+20Fj
		cmp	[ebp+arg_4], 7Bh
		jnz	short loc_40526C
		cmp	[ebp+arg_8], edi
		jnz	short loc_40526C
		push	ebx		; lParam
		push	ebx		; wParam
		push	1004h		; Msg
		push	edi		; hWnd
		call	ds:SendMessageA
		cmp	eax, ebx
		mov	[ebp+arg_4], eax
		jle	loc_4053BF
		call	ds:CreatePopupMenu
		push	0FFFFFFE1h	; int
		push	ebx		; lpString1
		mov	esi, eax
		call	sub_405B88
		push	eax		; lpNewItem
		push	1		; uIDNewItem
		push	ebx		; uFlags
		push	esi		; hMenu
		call	ds:AppendMenuA
		mov	eax, [ebp+arg_C]
		cmp	eax, 0FFFFFFFFh
		jnz	short loc_405302
		lea	eax, [ebp+Rect]
		push	eax		; lpRect
		push	edi		; hWnd
		call	ds:GetWindowRect
		mov	ecx, [ebp+Rect.left]
		mov	eax, [ebp+Rect.top]
		jmp	short loc_40530B
; ---------------------------------------------------------------------------

loc_405302:				; CODE XREF: sub_405042+2ABj
		movsx	ecx, ax
		shr	eax, 10h
		movsx	eax, ax

loc_40530B:				; CODE XREF: sub_405042+2BEj
		push	ebx		; prcRect
		push	[ebp+hDlg]	; hWnd
		push	ebx		; nReserved
		push	eax		; y
		push	ecx		; x
		push	180h		; uFlags
		push	esi		; hMenu
		call	ds:TrackPopupMenu
		xor	esi, esi
		inc	esi
		cmp	eax, esi
		jnz	loc_4053BF
		mov	eax, [ebp+arg_4]
		mov	[ebp+lParam], ebx
		mov	[ebp+var_2C], offset byte_4204A0
		mov	[ebp+var_28], 0FFFh
		mov	[ebp+hDlg], eax
		mov	edi, 102Dh

loc_405345:				; CODE XREF: sub_405042+31Ej
		dec	[ebp+hDlg]
		lea	eax, [ebp+var_40]
		push	eax		; lParam
		push	[ebp+hDlg]	; wParam
		push	edi		; Msg
		push	[ebp+hWnd]	; hWnd
		call	ds:SendMessageA
		cmp	[ebp+hDlg], ebx
		lea	esi, [esi+eax+2]
		jnz	short loc_405345
		push	ebx		; hWndNewOwner
		call	ds:OpenClipboard
		call	ds:EmptyClipboard
		push	esi		; dwBytes
		push	42h		; uFlags
		call	ds:GlobalAlloc
		push	eax		; hMem
		mov	[ebp+hDlg], eax
		call	ds:GlobalLock
		mov	esi, eax

loc_405384:				; CODE XREF: sub_405042+361j
		lea	eax, [ebp+var_40]
		mov	[ebp+var_2C], esi
		push	eax		; lParam
		push	ebx		; wParam
		push	edi		; Msg
		push	[ebp+hWnd]	; hWnd
		call	ds:SendMessageA
		add	esi, eax
		mov	word ptr [esi],	0A0Dh
		inc	esi
		inc	esi
		inc	ebx
		cmp	ebx, [ebp+arg_4]
		jl	short loc_405384
		push	[ebp+hDlg]	; hMem
		call	ds:GlobalUnlock
		push	[ebp+hDlg]	; hMem
		push	1		; uFormat
		call	ds:SetClipboardData
		call	ds:CloseClipboard

loc_4053BF:				; CODE XREF: sub_405042+189j
					; sub_405042+1A7j ...
		xor	eax, eax
		jmp	loc_40527A
sub_405042	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_4053C6(LPSTR lpCommandLine)
sub_4053C6	proc near		; CODE XREF: sub_401434+9F8p
					; start+2BDp

ProcessInformation= _PROCESS_INFORMATION ptr -10h
lpCommandLine	= dword	ptr  8

		push	ebp
		mov	ebp, esp
		sub	esp, 10h
		lea	eax, [ebp+ProcessInformation]
		mov	StartupInfo.cb,	44h
		push	eax		; lpProcessInformation
		xor	eax, eax
		push	offset StartupInfo ; lpStartupInfo
		push	eax		; lpCurrentDirectory
		push	eax		; lpEnvironment
		push	eax		; dwCreationFlags
		push	eax		; bInheritHandles
		push	eax		; lpThreadAttributes
		push	eax		; lpProcessAttributes
		push	[ebp+lpCommandLine] ; lpCommandLine
		push	eax		; lpApplicationName
		call	ds:CreateProcessA
		test	eax, eax
		jz	short locret_405401
		push	[ebp+ProcessInformation.hThread] ; hObject
		call	ds:CloseHandle
		mov	eax, [ebp+ProcessInformation.hProcess]

locret_405401:				; CODE XREF: sub_4053C6+2Dj
		leave
		retn	4
sub_4053C6	endp

; [00000006 BYTES: COLLAPSED FUNCTION SetDlgItemTextA. PRESS KEYPAD CTRL-"+" TO	EXPAND]

; =============== S U B	R O U T	I N E =======================================


; int __stdcall	sub_40540B(int nIDDlgItem, LPSTR lpString)
sub_40540B	proc near		; CODE XREF: sub_404356+33p
					; sub_404356+1B5p ...

nIDDlgItem	= dword	ptr  4
lpString	= dword	ptr  8

		push	400h		; cchMax
		push	[esp+4+lpString] ; lpString
		push	[esp+8+nIDDlgItem] ; nIDDlgItem
		push	hDlg		; hDlg
		call	ds:GetDlgItemTextA
		retn	8
sub_40540B	endp


; =============== S U B	R O U T	I N E =======================================


sub_405427	proc near		; CODE XREF: sub_401434+3EEp
					; sub_401434+4B2p ...

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		mov	eax, [esp+arg_4]
		mov	ecx, eax
		and	ecx, 1FFFFFh
		cmp	dword_423F40, 0
		jz	short loc_405441
		shr	eax, 15h
		jnz	short locret_405488

loc_405441:				; CODE XREF: sub_405427+13j
		cmp	dword_423F48, 0
		jz	short loc_405450
		xor	ecx, 180000h

loc_405450:				; CODE XREF: sub_405427+21j
		mov	eax, hwnd
		push	offset mbp	; lpmbp
		mov	mbp.hwndOwner, eax
		mov	eax, hInstance
		mov	mbp.hInstance, eax
		mov	eax, [esp+4+arg_0]
		mov	mbp.lpszText, eax
		mov	mbp.lpszCaption, offset	chText
		mov	mbp.dwStyle, ecx
		call	ds:MessageBoxIndirectA

locret_405488:				; CODE XREF: sub_405427+18j
		retn	8
sub_405427	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_40548B(LPCSTR lpFileName, int)
sub_40548B	proc near		; CODE XREF: sub_401434+4E4p
					; sub_4035BD+3Bp ...

FindFileData	= _WIN32_FIND_DATAA ptr	-148h
var_8		= dword	ptr -8
var_4		= dword	ptr -4
lpFileName	= dword	ptr  8
arg_4		= dword	ptr  0Ch

		push	ebp
		mov	ebp, esp
		sub	esp, 148h
		push	esi
		push	edi
		mov	edi, [ebp+lpFileName]
		push	edi		; lpString2
		call	sub_40573A
		test	byte ptr [ebp+arg_4], 8
		mov	[ebp+var_8], eax
		jz	short loc_4054BF
		push	edi		; lpFileName
		call	ds:DeleteFileA
		neg	eax
		sbb	eax, eax
		inc	eax
		add	dword_423F28, eax
		jmp	loc_405653
; ---------------------------------------------------------------------------

loc_4054BF:				; CODE XREF: sub_40548B+1Bj
		push	ebx
		mov	ebx, [ebp+arg_4]
		and	ebx, 1
		mov	[ebp+var_4], ebx
		jz	short loc_4054DD
		test	eax, eax
		jz	loc_4055FE
		test	byte ptr [ebp+arg_4], 2
		jz	loc_4055FE

loc_4054DD:				; CODE XREF: sub_40548B+3Ej
		mov	esi, offset byte_4214A8
		push	edi		; lpString2
		push	esi		; lpString1
		call	sub_405B66
		test	ebx, ebx
		jz	short loc_4054FA
		push	offset a_	; "\\*.*"
		push	esi		; lpString1
		call	lstrcatA
		jmp	short loc_405500
; ---------------------------------------------------------------------------

loc_4054FA:				; CODE XREF: sub_40548B+60j
		push	edi		; lpString
		call	sub_4056A0

loc_405500:				; CODE XREF: sub_40548B+6Dj
		cmp	byte ptr [edi],	0
		jnz	short loc_40550E
		cmp	byte_4214A8, 5Ch
		jnz	short loc_405519

loc_40550E:				; CODE XREF: sub_40548B+78j
		push	offset SubBlock	; "\\"
		push	edi		; lpString1
		call	lstrcatA

loc_405519:				; CODE XREF: sub_40548B+81j
		push	edi		; lpString
		call	lstrlenA
		mov	ebx, eax
		lea	eax, [ebp+FindFileData]
		push	eax		; lpFindFileData
		push	esi		; lpFileName
		add	ebx, edi
		call	ds:FindFirstFileA
		cmp	eax, 0FFFFFFFFh
		mov	[ebp+lpFileName], eax
		jz	loc_4055F4

loc_40553D:				; CODE XREF: sub_40548B+15Aj
		lea	eax, [ebp+FindFileData.cFileName]
		push	3Fh		; char
		push	eax		; lpsz
		lea	esi, [ebp+FindFileData.cFileName]
		call	sub_405684
		cmp	byte ptr [eax],	0
		jz	short loc_40555F
		cmp	[ebp+FindFileData.cAlternateFileName], 0
		jz	short loc_40555F
		lea	esi, [ebp+FindFileData.cAlternateFileName]

loc_40555F:				; CODE XREF: sub_40548B+C9j
					; sub_40548B+CFj
		cmp	byte ptr [esi],	2Eh
		jnz	short loc_405575
		mov	al, [esi+1]
		test	al, al
		jz	short loc_4055D3
		cmp	al, 2Eh
		jnz	short loc_405575
		cmp	byte ptr [esi+2], 0
		jz	short loc_4055D3

loc_405575:				; CODE XREF: sub_40548B+D7j
					; sub_40548B+E2j
		push	esi		; lpString2
		push	ebx		; lpString1
		call	sub_405B66
		test	byte ptr [ebp+FindFileData.dwFileAttributes], 10h
		jz	short loc_40559A
		mov	eax, [ebp+arg_4]
		and	eax, 3
		cmp	al, 3
		jnz	short loc_4055D3
		push	[ebp+arg_4]	; int
		push	edi		; lpFileName
		call	sub_40548B
		jmp	short loc_4055D3
; ---------------------------------------------------------------------------

loc_40559A:				; CODE XREF: sub_40548B+F8j
		push	edi		; lpFileName
		call	sub_40581E
		push	edi		; lpFileName
		call	ds:DeleteFileA
		test	eax, eax
		jnz	short loc_4055CB
		test	byte ptr [ebp+arg_4], 4
		jz	short loc_4055C3
		push	edi		; lpString
		push	0FFFFFFF1h	; int
		call	sub_404F04
		push	0		; lpszLongPath
		push	edi		; LPCSTR
		call	sub_4058B4
		jmp	short loc_4055D3
; ---------------------------------------------------------------------------

loc_4055C3:				; CODE XREF: sub_40548B+124j
		inc	dword_423F28
		jmp	short loc_4055D3
; ---------------------------------------------------------------------------

loc_4055CB:				; CODE XREF: sub_40548B+11Ej
		push	edi		; lpString
		push	0FFFFFFF2h	; int
		call	sub_404F04

loc_4055D3:				; CODE XREF: sub_40548B+DEj
					; sub_40548B+E8j ...
		lea	eax, [ebp+FindFileData]
		push	eax		; lpFindFileData
		push	[ebp+lpFileName] ; hFindFile
		call	ds:FindNextFileA
		test	eax, eax
		jnz	loc_40553D
		push	[ebp+lpFileName] ; hFindFile
		call	ds:FindClose

loc_4055F4:				; CODE XREF: sub_40548B+ACj
		cmp	[ebp+var_4], 0
		jz	short loc_4055FE
		and	byte ptr [ebx-1], 0

loc_4055FE:				; CODE XREF: sub_40548B+42j
					; sub_40548B+4Cj ...
		xor	esi, esi
		pop	ebx
		cmp	[ebp+var_4], esi
		jz	short loc_405653
		cmp	[ebp+var_8], esi
		jnz	short loc_405613

loc_40560B:				; CODE XREF: sub_40548B+1ADj
		inc	dword_423F28
		jmp	short loc_405653
; ---------------------------------------------------------------------------

loc_405613:				; CODE XREF: sub_40548B+17Ej
		push	edi		; lpFileName
		call	sub_405E61
		test	eax, eax
		jz	short loc_405653
		push	edi		; lpString
		call	sub_405659
		push	edi		; lpFileName
		call	sub_40581E
		push	edi		; lpPathName
		call	ds:RemoveDirectoryA
		test	eax, eax
		jnz	short loc_40564B
		test	byte ptr [ebp+arg_4], 4
		jz	short loc_40560B
		push	edi		; lpString
		push	0FFFFFFF1h	; int
		call	sub_404F04
		push	esi		; lpszLongPath
		push	edi		; LPCSTR
		call	sub_4058B4
		jmp	short loc_405653
; ---------------------------------------------------------------------------

loc_40564B:				; CODE XREF: sub_40548B+1A7j
		push	edi		; lpString
		push	0FFFFFFE5h	; int
		call	sub_404F04

loc_405653:				; CODE XREF: sub_40548B+2Fj
					; sub_40548B+179j ...
		pop	edi
		pop	esi
		leave
		retn	8
sub_40548B	endp


; =============== S U B	R O U T	I N E =======================================


; int __stdcall	sub_405659(LPCSTR lpString)
sub_405659	proc near		; CODE XREF: sub_401434+339p
					; sub_403208+19p ...

lpString	= dword	ptr  4

		push	esi
		mov	esi, [esp+4+lpString]
		push	esi		; lpString
		call	lstrlenA
		add	eax, esi
		push	eax		; lpszCurrent
		push	esi		; lpszStart
		call	ds:CharPrevA
		cmp	byte ptr [eax],	5Ch
		jz	short loc_40567E
		push	offset SubBlock	; "\\"
		push	esi		; lpString1
		call	lstrcatA

loc_40567E:				; CODE XREF: sub_405659+18j
		mov	eax, esi
		pop	esi
		retn	4
sub_405659	endp


; =============== S U B	R O U T	I N E =======================================


; int __stdcall	sub_405684(LPCSTR lpsz,	char)
sub_405684	proc near		; CODE XREF: sub_401434+197p start+A6p ...

lpsz		= dword	ptr  4
arg_4		= byte ptr  8

		mov	eax, [esp+lpsz]
		jmp	short loc_405697
; ---------------------------------------------------------------------------

loc_40568A:				; CODE XREF: sub_405684+17j
		cmp	cl, [esp+arg_4]
		jz	short locret_40569D
		push	eax		; lpsz
		call	ds:CharNextA

loc_405697:				; CODE XREF: sub_405684+4j
		mov	cl, [eax]
		test	cl, cl
		jnz	short loc_40568A

locret_40569D:				; CODE XREF: sub_405684+Aj
		retn	8
sub_405684	endp


; =============== S U B	R O U T	I N E =======================================


; int __stdcall	sub_4056A0(LPCSTR lpString)
sub_4056A0	proc near		; CODE XREF: sub_402C72+67p
					; sub_4036AF+114p ...

lpString	= dword	ptr  4

		push	esi
		mov	esi, [esp+4+lpString]
		push	esi		; lpString
		call	lstrlenA
		add	eax, esi

loc_4056AD:				; CODE XREF: sub_4056A0+1Cj
		cmp	byte ptr [eax],	5Ch
		jz	short loc_4056BE
		push	eax		; lpszCurrent
		push	esi		; lpszStart
		call	ds:CharPrevA
		cmp	eax, esi
		ja	short loc_4056AD

loc_4056BE:				; CODE XREF: sub_4056A0+10j
		and	byte ptr [eax],	0
		inc	eax
		pop	esi
		retn	4
sub_4056A0	endp


; =============== S U B	R O U T	I N E =======================================


sub_4056C6	proc near		; CODE XREF: sub_401434+316p
					; sub_401434+C1Ep ...

arg_0		= dword	ptr  4

		mov	ecx, [esp+arg_0]
		mov	al, [ecx]
		or	al, 20h
		cmp	word ptr [ecx],	5C5Ch
		jz	short loc_4056E7
		cmp	al, 61h
		jl	short loc_4056E3
		cmp	al, 7Ah
		jg	short loc_4056E3
		cmp	byte ptr [ecx+1], 3Ah
		jz	short loc_4056E7

loc_4056E3:				; CODE XREF: sub_4056C6+11j
					; sub_4056C6+15j
		xor	eax, eax
		jmp	short locret_4056EA
; ---------------------------------------------------------------------------

loc_4056E7:				; CODE XREF: sub_4056C6+Dj
					; sub_4056C6+1Bj
		xor	eax, eax
		inc	eax

locret_4056EA:				; CODE XREF: sub_4056C6+1Fj
		retn	4
sub_4056C6	endp


; =============== S U B	R O U T	I N E =======================================


; int __stdcall	sub_4056ED(LPCSTR lpsz)
sub_4056ED	proc near		; CODE XREF: sub_401434+189p
					; sub_404356+60p ...

lpsz		= dword	ptr  4

		push	ebx
		push	esi
		mov	esi, ds:CharNextA
		push	edi
		mov	edi, [esp+0Ch+lpsz]
		push	edi		; lpsz
		call	esi ; CharNextA
		mov	ebx, eax
		push	ebx		; lpsz
		call	esi ; CharNextA
		cmp	byte ptr [edi],	0
		jz	short loc_405713
		cmp	word ptr [ebx],	5C3Ah
		jnz	short loc_405713
		push	eax		; lpsz
		call	esi ; CharNextA
		jmp	short loc_405734
; ---------------------------------------------------------------------------

loc_405713:				; CODE XREF: sub_4056ED+18j
					; sub_4056ED+1Fj
		cmp	word ptr [edi],	5C5Ch
		jnz	short loc_405732
		push	2
		pop	esi

loc_40571D:				; CODE XREF: sub_4056ED+41j
		push	5Ch		; char
		push	eax		; lpsz
		dec	esi
		call	sub_405684
		cmp	byte ptr [eax],	0
		jz	short loc_405732
		inc	eax
		test	esi, esi
		jnz	short loc_40571D
		jmp	short loc_405734
; ---------------------------------------------------------------------------

loc_405732:				; CODE XREF: sub_4056ED+2Bj
					; sub_4056ED+3Cj
		xor	eax, eax

loc_405734:				; CODE XREF: sub_4056ED+24j
					; sub_4056ED+43j
		pop	edi
		pop	esi
		pop	ebx
		retn	4
sub_4056ED	endp


; =============== S U B	R O U T	I N E =======================================


; int __stdcall	sub_40573A(LPCSTR lpString2)
sub_40573A	proc near		; CODE XREF: start+1B9p sub_4036AF+98p ...

lpString2	= dword	ptr  4

		push	esi
		push	edi
		push	[esp+8+lpString2] ; lpString2
		mov	esi, offset byte_4218A8
		push	esi		; lpString1
		call	sub_405B66
		push	esi		; lpsz
		call	sub_4056ED
		mov	edi, eax
		test	edi, edi
		jnz	short loc_40575B

loc_405757:				; CODE XREF: sub_40573A+34j
					; sub_40573A+38j ...
		xor	eax, eax
		jmp	short loc_4057AD
; ---------------------------------------------------------------------------

loc_40575B:				; CODE XREF: sub_40573A+1Bj
		push	edi		; lpsz
		call	sub_405DC8
		test	byte ptr dword_423EB8, 80h
		jz	short loc_405774
		mov	al, [edi]
		test	al, al
		jz	short loc_405757
		cmp	al, 5Ch
		jz	short loc_405757

loc_405774:				; CODE XREF: sub_40573A+2Ej
		sub	edi, esi
		jmp	short loc_40578C
; ---------------------------------------------------------------------------

loc_405778:				; CODE XREF: sub_40573A+5Bj
		call	sub_405E61
		test	eax, eax
		jz	short loc_405786
		test	byte ptr [eax],	10h
		jz	short loc_405757

loc_405786:				; CODE XREF: sub_40573A+45j
		push	esi		; lpString
		call	sub_4056A0

loc_40578C:				; CODE XREF: sub_40573A+3Cj
		push	esi		; lpString
		call	lstrlenA
		cmp	eax, edi
		push	esi		; lpString
		jg	short loc_405778
		call	sub_405659
		push	esi		; lpFileName
		call	ds:GetFileAttributesA
		xor	ecx, ecx
		cmp	eax, 0FFFFFFFFh
		setnz	cl
		mov	eax, ecx

loc_4057AD:				; CODE XREF: sub_40573A+1Fj
		pop	edi
		pop	esi
		retn	4
sub_40573A	endp


; =============== S U B	R O U T	I N E =======================================


; int __stdcall	sub_4057B2(LPCSTR lpString1, LPCSTR lpString)
sub_4057B2	proc near		; CODE XREF: sub_4058B4+107p
					; sub_4058B4+173p

lpString1	= dword	ptr  4
lpString	= dword	ptr  8

		push	ebx
		push	esi
		push	edi
		push	[esp+0Ch+lpString] ; lpString
		call	lstrlenA
		mov	edi, eax
		mov	esi, [esp+0Ch+lpString1]
		jmp	short loc_4057E8
; ---------------------------------------------------------------------------

loc_4057C6:				; CODE XREF: sub_4057B2+3Ej
		push	[esp+0Ch+lpString] ; lpString2
		mov	bl, [edi+esi]
		and	byte ptr [edi+esi], 0
		push	esi		; lpString1
		call	ds:lstrcmpiA
		test	eax, eax
		mov	[edi+esi], bl
		jz	short loc_4057FA
		push	esi		; lpsz
		call	ds:CharNextA
		mov	esi, eax

loc_4057E8:				; CODE XREF: sub_4057B2+12j
		push	esi		; lpString
		call	lstrlenA
		cmp	eax, edi
		jge	short loc_4057C6
		xor	eax, eax

loc_4057F4:				; CODE XREF: sub_4057B2+4Aj
		pop	edi
		pop	esi
		pop	ebx
		retn	8
; ---------------------------------------------------------------------------

loc_4057FA:				; CODE XREF: sub_4057B2+2Bj
		mov	eax, esi
		jmp	short loc_4057F4
sub_4057B2	endp


; =============== S U B	R O U T	I N E =======================================


sub_4057FE	proc near		; CODE XREF: sub_401434+12E2p
					; sub_402C72+CFp ...

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		mov	ecx, [esp+arg_0]
		push	esi
		mov	esi, [esp+4+arg_8]
		test	esi, esi
		jle	short loc_40581A
		mov	eax, [esp+4+arg_4]
		sub	eax, ecx

loc_405811:				; CODE XREF: sub_4057FE+1Aj
		mov	dl, [eax+ecx]
		mov	[ecx], dl
		inc	ecx
		dec	esi
		jnz	short loc_405811

loc_40581A:				; CODE XREF: sub_4057FE+Bj
		pop	esi
		retn	0Ch
sub_4057FE	endp


; =============== S U B	R O U T	I N E =======================================


; int __stdcall	sub_40581E(LPCSTR lpFileName)
sub_40581E	proc near		; CODE XREF: sub_401434+38Cp
					; sub_401434+126Dp ...

lpFileName	= dword	ptr  4

		push	[esp+lpFileName] ; lpFileName
		call	ds:GetFileAttributesA
		cmp	eax, 0FFFFFFFFh
		jz	short locret_40583A
		and	al, 0FEh
		push	eax		; dwFileAttributes
		push	[esp+4+lpFileName] ; lpFileName
		call	ds:SetFileAttributesA

locret_40583A:				; CODE XREF: sub_40581E+Dj
		retn	4
sub_40581E	endp


; =============== S U B	R O U T	I N E =======================================


; int __stdcall	sub_40583D(LPCSTR lpFileName, DWORD dwDesiredAccess, DWORD dwCreationDisposition)
sub_40583D	proc near		; CODE XREF: sub_401434+3A2p
					; sub_401434+1076p ...

lpFileName	= dword	ptr  4
dwDesiredAccess	= dword	ptr  8
dwCreationDisposition= dword ptr  0Ch

		push	[esp+lpFileName] ; lpFileName
		call	ds:GetFileAttributesA
		mov	ecx, eax
		push	0		; hTemplateFile
		inc	ecx
		neg	ecx
		sbb	ecx, ecx
		and	ecx, eax
		push	ecx		; dwFlagsAndAttributes
		push	[esp+8+dwCreationDisposition] ;	dwCreationDisposition
		push	0		; lpSecurityAttributes
		push	1		; dwShareMode
		push	[esp+14h+dwDesiredAccess] ; dwDesiredAccess
		push	[esp+18h+lpFileName] ; lpFileName
		call	ds:CreateFileA
		retn	0Ch
sub_40583D	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_40586C(CHAR	PrefixString, LPCSTR lpPathName)
sub_40586C	proc near		; CODE XREF: sub_401434+2F6p
					; sub_402C72+1DEp ...

PrefixString	= byte ptr  8
lpPathName	= dword	ptr  0Ch

		push	ebp
		mov	ebp, esp
		push	esi
		mov	esi, dword ptr [ebp+PrefixString]
		push	edi
		push	64h
		pop	edi

loc_405877:				; CODE XREF: sub_40586C+39j
		dec	edi
		mov	dword ptr [ebp+PrefixString], 61736Eh
		call	ds:GetTickCount
		push	1Ah
		xor	edx, edx
		pop	ecx
		div	ecx
		push	esi		; lpTempFileName
		lea	eax, [ebp+PrefixString]
		push	0		; uUnique
		push	eax		; lpPrefixString
		push	[ebp+lpPathName] ; lpPathName
		add	[ebp+0Ah], dl
		call	ds:GetTempFileNameA
		test	eax, eax
		jnz	short loc_4058B0
		test	edi, edi
		jnz	short loc_405877
		and	byte ptr [esi],	0

loc_4058AA:				; CODE XREF: sub_40586C+46j
		pop	edi
		pop	esi
		pop	ebp
		retn	8
; ---------------------------------------------------------------------------

loc_4058B0:				; CODE XREF: sub_40586C+35j
		mov	eax, esi
		jmp	short loc_4058AA
sub_40586C	endp


; =============== S U B	R O U T	I N E =======================================


; int __stdcall	sub_4058B4(LPCSTR, LPCSTR lpszLongPath)
sub_4058B4	proc near		; CODE XREF: sub_401434+256p
					; start+2A6p ...

arg_0		= dword	ptr  4
lpszLongPath	= dword	ptr  8

		push	ebx
		push	ebp
		push	esi
		push	edi
		push	1
		call	sub_405E88
		test	eax, eax
		mov	esi, [esp+10h+lpszLongPath]
		jz	short loc_4058D8
		push	5
		push	esi
		push	[esp+18h+arg_0]
		call	eax
		test	eax, eax
		jnz	loc_405A11

loc_4058D8:				; CODE XREF: sub_4058B4+11j
		mov	ebx, ds:GetShortPathNameA
		mov	szShortPath, 4C554Eh
		test	esi, esi
		mov	edi, 400h
		mov	ebp, offset szShortPath
		jz	short loc_40591C
		push	1		; dwCreationDisposition
		push	0		; dwDesiredAccess
		push	esi		; lpFileName
		call	sub_40583D
		push	eax		; hObject
		call	ds:CloseHandle
		push	edi		; cchBuffer
		push	ebp		; lpszShortPath
		push	esi		; lpszLongPath
		call	ebx ; GetShortPathNameA
		test	eax, eax
		jz	loc_405A17
		cmp	eax, edi
		jg	loc_405A17

loc_40591C:				; CODE XREF: sub_4058B4+40j
		mov	esi, offset byte_4220A8
		push	edi		; cchBuffer
		push	esi		; lpszShortPath
		push	[esp+18h+arg_0]	; lpszLongPath
		call	ebx ; GetShortPathNameA
		test	eax, eax
		jz	loc_405A17
		cmp	eax, edi
		jg	loc_405A17
		push	esi
		push	ebp
		push	offset aSS	; "%s=%s\r\n"
		push	offset byte_421CA8 ; LPSTR
		call	ds:wsprintfA
		mov	ebx, eax
		mov	eax, dword_423EB0
		add	esp, 10h
		push	dword ptr [eax+128h] ; int
		push	esi		; lpString1
		call	sub_405B88
		push	4		; dwCreationDisposition
		push	0C0000000h	; dwDesiredAccess
		push	esi		; lpFileName
		call	sub_40583D
		mov	ebp, eax
		cmp	ebp, 0FFFFFFFFh
		mov	[esp+10h+arg_0], ebp
		jz	loc_405A11
		push	0		; lpFileSizeHigh
		push	ebp		; hFile
		call	ds:GetFileSize
		mov	edi, eax
		lea	eax, [edi+ebx+0Ah]
		push	eax		; dwBytes
		push	40h		; uFlags
		call	ds:GlobalAlloc
		mov	esi, eax
		test	esi, esi
		jz	short loc_405A0A
		lea	eax, [esp+10h+lpszLongPath]
		push	0		; lpOverlapped
		push	eax		; lpNumberOfBytesRead
		push	edi		; nNumberOfBytesToRead
		push	esi		; lpBuffer
		push	ebp		; hFile
		call	ds:ReadFile
		test	eax, eax
		jz	short loc_405A0A
		cmp	edi, [esp+10h+lpszLongPath]
		jnz	short loc_405A0A
		push	offset aRename	; "[Rename]\r\n"
		push	esi		; lpString1
		call	sub_4057B2
		test	eax, eax
		jnz	short loc_405A1E
		lea	eax, [esi+edi]
		push	offset aRename	; "[Rename]\r\n"
		push	eax		; lpString1
		call	sub_405B66
		add	edi, 0Ah

loc_4059D5:				; CODE XREF: sub_4058B4+17Aj
		mov	eax, edi

loc_4059D7:				; CODE XREF: sub_4058B4+197j
		push	ebx
		add	eax, esi
		push	offset byte_421CA8
		push	eax
		call	sub_4057FE
		xor	eax, eax
		push	eax		; dwMoveMethod
		push	eax		; lpDistanceToMoveHigh
		push	eax		; lDistanceToMove
		push	ebp		; hFile
		call	ds:SetFilePointer
		lea	eax, [esp+10h+lpszLongPath]
		push	0		; lpOverlapped
		add	edi, ebx
		push	eax		; lpNumberOfBytesWritten
		push	edi		; nNumberOfBytesToWrite
		push	esi		; lpBuffer
		push	ebp		; hFile
		call	ds:WriteFile
		push	esi		; hMem
		call	ds:GlobalFree

loc_405A0A:				; CODE XREF: sub_4058B4+E5j
					; sub_4058B4+F9j ...
		push	ebp		; hObject
		call	ds:CloseHandle

loc_405A11:				; CODE XREF: sub_4058B4+1Ej
					; sub_4058B4+C3j
		inc	dword_423F30

loc_405A17:				; CODE XREF: sub_4058B4+5Aj
					; sub_4058B4+62j ...
		pop	edi
		pop	esi
		pop	ebp
		pop	ebx
		retn	8
; ---------------------------------------------------------------------------

loc_405A1E:				; CODE XREF: sub_4058B4+10Ej
		add	eax, 0Ah
		push	offset asc_409350 ; "\n["
		push	eax		; lpString1
		call	sub_4057B2
		test	eax, eax
		jz	short loc_4059D5
		inc	eax
		lea	ecx, [esi+edi]
		cmp	eax, ecx
		mov	ebp, eax
		jnb	short loc_405A45

loc_405A3A:				; CODE XREF: sub_4058B4+18Fj
		mov	dl, [ebp+0]
		mov	[ebx+ebp], dl
		inc	ebp
		cmp	ebp, ecx
		jb	short loc_405A3A

loc_405A45:				; CODE XREF: sub_4058B4+184j
		mov	ebp, [esp+10h+arg_0]
		sub	eax, esi
		jmp	short loc_4059D7
sub_4058B4	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_405A4D(HKEY	hKey, LPCSTR lpSubKey, LPCSTR lpValueName, DWORD Type, HKEY phkResult)
sub_405A4D	proc near		; CODE XREF: sub_4036AF+48p
					; sub_4036AF+66p ...

hKey		= dword	ptr  8
lpSubKey	= dword	ptr  0Ch
lpValueName	= dword	ptr  10h
Type		= dword	ptr  14h
phkResult	= dword	ptr  18h

		push	ebp
		mov	ebp, esp
		push	ebx
		lea	eax, [ebp+phkResult]
		push	esi
		push	eax		; phkResult
		mov	eax, [ebp+phkResult]
		xor	ebx, ebx
		neg	eax
		sbb	eax, eax
		mov	esi, [ebp+Type]
		and	eax, 100h
		or	eax, 20019h
		mov	[esi], bl
		push	eax		; samDesired
		push	ebx		; ulOptions
		push	[ebp+lpSubKey]	; lpSubKey
		push	[ebp+hKey]	; hKey
		call	ds:RegOpenKeyExA
		test	eax, eax
		jnz	short loc_405ABE
		lea	eax, [ebp+lpSubKey]
		mov	[ebp+lpSubKey],	400h
		push	eax		; lpcbData
		lea	eax, [ebp+Type]
		push	esi		; lpData
		push	eax		; lpType
		push	ebx		; lpReserved
		push	[ebp+lpValueName] ; lpValueName
		push	[ebp+phkResult]	; hKey
		call	ds:RegQueryValueExA
		test	eax, eax
		jnz	short loc_405AAD
		cmp	[ebp+Type], 1
		jz	short loc_405AAF
		cmp	[ebp+Type], 2
		jz	short loc_405AAF

loc_405AAD:				; CODE XREF: sub_405A4D+52j
		mov	[esi], bl

loc_405AAF:				; CODE XREF: sub_405A4D+58j
					; sub_405A4D+5Ej
		push	[ebp+phkResult]	; hKey
		mov	[esi+3FFh], bl
		call	ds:RegCloseKey

loc_405ABE:				; CODE XREF: sub_405A4D+31j
		pop	esi
		pop	ebx
		pop	ebp
		retn	14h
sub_405A4D	endp


; =============== S U B	R O U T	I N E =======================================


; int __stdcall	sub_405AC4(LPSTR, int)
sub_405AC4	proc near		; CODE XREF: sub_401434+A40p
					; sub_401434+A7Bp ...

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		push	[esp+arg_4]
		push	offset aD	; "%d"
		push	[esp+8+arg_0]	; LPSTR
		call	ds:wsprintfA
		add	esp, 0Ch
		retn	8
sub_405AC4	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_405ADD	proc near		; CODE XREF: sub_40136D+14p
					; sub_401434+105Dp ...

var_4		= dword	ptr -4
arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		push	ecx
		mov	ecx, [ebp+arg_0]
		push	ebx
		push	esi
		push	edi
		xor	edi, edi
		cmp	byte ptr [ecx],	2Dh
		mov	[ebp+var_4], 1
		mov	al, 0Ah
		mov	bl, 39h
		jnz	short loc_405AFE
		inc	ecx
		or	[ebp+var_4], 0FFFFFFFFh

loc_405AFE:				; CODE XREF: sub_405ADD+1Aj
		cmp	byte ptr [ecx],	30h
		jnz	short loc_405B1F
		inc	ecx
		mov	dl, [ecx]
		cmp	dl, 30h
		jl	short loc_405B14
		cmp	dl, 37h
		jg	short loc_405B14
		mov	al, 8
		mov	bl, 37h

loc_405B14:				; CODE XREF: sub_405ADD+2Cj
					; sub_405ADD+31j
		and	dl, 0DFh
		cmp	dl, 58h
		jnz	short loc_405B1F
		mov	al, 10h
		inc	ecx

loc_405B1F:				; CODE XREF: sub_405ADD+24j
					; sub_405ADD+3Dj ...
		movsx	edx, byte ptr [ecx]
		inc	ecx
		cmp	edx, 30h
		jl	short loc_405B34
		movsx	esi, bl
		cmp	edx, esi
		jg	short loc_405B34
		sub	edx, 30h
		jmp	short loc_405B4D
; ---------------------------------------------------------------------------

loc_405B34:				; CODE XREF: sub_405ADD+49j
					; sub_405ADD+50j
		cmp	al, 10h
		jnz	short loc_405B59
		mov	esi, edx
		and	esi, 0FFFFFFDFh
		cmp	esi, 41h
		jl	short loc_405B59
		cmp	esi, 46h
		jg	short loc_405B59
		and	edx, 7
		add	edx, 9

loc_405B4D:				; CODE XREF: sub_405ADD+55j
		movsx	esi, al
		imul	esi, edi
		add	esi, edx
		mov	edi, esi
		jmp	short loc_405B1F
; ---------------------------------------------------------------------------

loc_405B59:				; CODE XREF: sub_405ADD+59j
					; sub_405ADD+63j ...
		mov	eax, [ebp+var_4]
		imul	eax, edi
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn	4
sub_405ADD	endp


; =============== S U B	R O U T	I N E =======================================


; int __stdcall	sub_405B66(LPSTR lpString1, LPCSTR lpString2)
sub_405B66	proc near		; CODE XREF: sub_401434+1E8p
					; sub_401434+29Bp ...

lpString1	= dword	ptr  4
lpString2	= dword	ptr  8

		push	400h		; iMaxLength
		push	[esp+4+lpString2] ; lpString2
		push	[esp+8+lpString1] ; lpString1
		call	ds:lstrcpynA
		retn	8
sub_405B66	endp

; [00000006 BYTES: COLLAPSED FUNCTION lstrlenA.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION lstrcatA.	PRESS KEYPAD CTRL-"+" TO EXPAND]

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_405B88(LPSTR lpString1, int)
sub_405B88	proc near		; CODE XREF: sub_401434+3D2p
					; sub_401434+481p ...

csidl		= dword	ptr -18h
var_14		= dword	ptr -14h
var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
ppidl		= dword	ptr -8
var_4		= dword	ptr -4
lpString1	= dword	ptr  8
arg_4		= dword	ptr  0Ch

		push	ebp
		mov	ebp, esp
		sub	esp, 18h
		mov	eax, [ebp+arg_4]
		test	eax, eax
		jge	short loc_405BA6
		mov	ecx, dword_42367C
		lea	eax, ds:4[eax*4]
		sub	ecx, eax
		mov	eax, [ecx]

loc_405BA6:				; CODE XREF: sub_405B88+Bj
		mov	ecx, dword_423ED8
		mov	edx, [ebp+lpString1]
		add	ecx, eax
		mov	eax, offset String
		push	ebx
		sub	edx, eax
		push	esi
		push	edi
		cmp	edx, 800h
		mov	edi, eax
		jnb	loc_405DA5
		mov	edi, [ebp+lpString1]
		and	[ebp+lpString1], 0
		jmp	loc_405DA5
; ---------------------------------------------------------------------------

loc_405BD5:				; CODE XREF: sub_405B88+221j
		mov	esi, edi
		sub	esi, eax
		cmp	esi, 400h
		jge	loc_405DAF
		inc	ecx
		cmp	dl, 0FCh
		mov	[ebp+arg_4], ecx
		jbe	loc_405D98
		movsx	eax, byte ptr [ecx+1]
		movsx	ecx, byte ptr [ecx]
		mov	esi, eax
		mov	ebx, ecx
		and	esi, 7Fh
		and	ebx, 7Fh
		shl	esi, 7
		or	esi, ebx
		mov	ebx, ecx
		add	[ebp+arg_4], 2
		or	bh, 80h
		mov	[ebp+csidl], ebx
		mov	ebx, ecx
		mov	ecx, eax
		mov	[ebp+var_14], ebx
		or	ch, 80h
		cmp	dl, 0FEh
		mov	[ebp+var_10], ecx
		mov	[ebp+var_C], eax
		jnz	loc_405D42
		push	2
		pop	esi
		call	ds:GetVersion
		test	eax, eax
		jns	short loc_405C52
		cmp	ax, 5A04h
		jz	short loc_405C52
		cmp	[ebp+var_C], 23h
		jz	short loc_405C52
		cmp	[ebp+var_C], 2Eh
		jz	short loc_405C52
		and	[ebp+var_4], 0
		jmp	short loc_405C59
; ---------------------------------------------------------------------------

loc_405C52:				; CODE XREF: sub_405B88+B0j
					; sub_405B88+B6j ...
		mov	[ebp+var_4], 1

loc_405C59:				; CODE XREF: sub_405B88+C8j
		cmp	dword_423F24, 0
		jz	short loc_405C65
		push	4
		pop	esi

loc_405C65:				; CODE XREF: sub_405B88+D8j
		test	bl, bl
		jns	short loc_405CA0
		mov	eax, ebx
		and	ebx, 3Fh
		add	ebx, dword_423ED8
		and	eax, 40h
		push	eax		; phkResult
		push	edi		; Type
		push	ebx		; lpValueName
		push	offset aSoftwareMicros ; "Software\\Microsoft\\Windows\\CurrentVe"...
		push	80000002h	; hKey
		call	sub_405A4D
		cmp	byte ptr [edi],	0
		jnz	loc_405D29
		push	[ebp+var_C]	; int
		push	edi		; lpString1
		call	sub_405B88
		jmp	loc_405D24
; ---------------------------------------------------------------------------

loc_405CA0:				; CODE XREF: sub_405B88+DFj
		cmp	ebx, 25h
		jnz	short loc_405CB3
		push	400h		; uSize
		push	edi		; lpBuffer
		call	ds:GetSystemDirectoryA
		jmp	short loc_405D24
; ---------------------------------------------------------------------------

loc_405CB3:				; CODE XREF: sub_405B88+11Bj
		cmp	ebx, 24h
		jnz	short loc_405D20
		push	400h		; uSize
		push	edi		; lpBuffer
		call	ds:GetWindowsDirectoryA
		xor	esi, esi
		jmp	short loc_405D20
; ---------------------------------------------------------------------------

loc_405CC8:				; CODE XREF: sub_405B88+19Aj
		mov	eax, dword_423EA4
		xor	ecx, ecx
		dec	esi
		cmp	eax, ecx
		jz	short loc_405CEC
		cmp	[ebp+var_4], ecx
		jz	short loc_405CEC
		push	edi
		push	ecx
		push	ecx
		push	[ebp+esi*4+csidl]
		push	hwnd
		call	eax ; dword_423EA4
		test	eax, eax
		jz	short loc_405D24

loc_405CEC:				; CODE XREF: sub_405B88+14Aj
					; sub_405B88+14Fj
		lea	eax, [ebp+ppidl]
		push	eax		; ppidl
		push	[ebp+esi*4+csidl] ; csidl
		push	hwnd		; hwnd
		call	ds:SHGetSpecialFolderLocation
		test	eax, eax
		jnz	short loc_405D1D
		push	edi		; pszPath
		push	[ebp+ppidl]	; pidl
		call	ds:SHGetPathFromIDListA
		push	[ebp+ppidl]	; pv
		mov	ebx, eax
		call	ds:CoTaskMemFree
		test	ebx, ebx
		jnz	short loc_405D24

loc_405D1D:				; CODE XREF: sub_405B88+17Aj
		and	byte ptr [edi],	0

loc_405D20:				; CODE XREF: sub_405B88+12Ej
					; sub_405B88+13Ej
		test	esi, esi
		jnz	short loc_405CC8

loc_405D24:				; CODE XREF: sub_405B88+113j
					; sub_405B88+129j ...
		cmp	byte ptr [edi],	0
		jz	short loc_405D3A

loc_405D29:				; CODE XREF: sub_405B88+104j
		cmp	[ebp+var_C], 1Ah
		jnz	short loc_405D3A
		push	offset aMicrosoftInter ; "\\Microsoft\\Internet	Explorer\\Quick	L"...
		push	edi		; lpString1
		call	lstrcatA

loc_405D3A:				; CODE XREF: sub_405B88+19Fj
					; sub_405B88+1A5j ...
		push	edi		; lpsz
		call	sub_405DC8
		jmp	short loc_405D86
; ---------------------------------------------------------------------------

loc_405D42:				; CODE XREF: sub_405B88+9Fj
		cmp	dl, 0FDh
		jnz	short loc_405D75
		cmp	esi, 1Dh
		jnz	short loc_405D5A
		push	hwnd		; int
		push	edi		; LPSTR
		call	sub_405AC4
		jmp	short loc_405D6B
; ---------------------------------------------------------------------------

loc_405D5A:				; CODE XREF: sub_405B88+1C2j
		mov	eax, esi
		shl	eax, 0Ah
		add	eax, offset dword_424000
		push	eax		; lpString2
		push	edi		; lpString1
		call	sub_405B66

loc_405D6B:				; CODE XREF: sub_405B88+1D0j
		add	esi, 0FFFFFFEBh
		cmp	esi, 7
		jnb	short loc_405D86
		jmp	short loc_405D3A
; ---------------------------------------------------------------------------

loc_405D75:				; CODE XREF: sub_405B88+1BDj
		cmp	dl, 0FFh
		jnz	short loc_405D86
		or	eax, 0FFFFFFFFh
		sub	eax, esi
		push	eax		; int
		push	edi		; lpString1
		call	sub_405B88

loc_405D86:				; CODE XREF: sub_405B88+1B8j
					; sub_405B88+1E9j ...
		push	edi		; lpString
		call	lstrlenA
		mov	ecx, [ebp+arg_4]
		add	edi, eax
		mov	eax, offset String
		jmp	short loc_405DA5
; ---------------------------------------------------------------------------

loc_405D98:				; CODE XREF: sub_405B88+64j
		jnz	short loc_405DA2
		mov	dl, [ecx]
		mov	[edi], dl
		inc	edi
		inc	ecx
		jmp	short loc_405DA5
; ---------------------------------------------------------------------------

loc_405DA2:				; CODE XREF: sub_405B88:loc_405D98j
		mov	[edi], dl
		inc	edi

loc_405DA5:				; CODE XREF: sub_405B88+3Bj
					; sub_405B88+48j ...
		mov	dl, [ecx]
		test	dl, dl
		jnz	loc_405BD5

loc_405DAF:				; CODE XREF: sub_405B88+57j
		and	byte ptr [edi],	0
		cmp	[ebp+lpString1], 0
		pop	edi
		pop	esi
		pop	ebx
		jz	short locret_405DC4
		push	eax		; lpString2
		push	[ebp+lpString1]	; lpString1
		call	sub_405B66

locret_405DC4:				; CODE XREF: sub_405B88+231j
		leave
		retn	8
sub_405B88	endp


; =============== S U B	R O U T	I N E =======================================


; int __stdcall	sub_405DC8(LPCSTR lpsz)
sub_405DC8	proc near		; CODE XREF: sub_401434+345p
					; sub_4029F6+34p ...

lpsz		= dword	ptr  4

		push	ebx
		push	esi
		mov	esi, [esp+8+lpsz]
		push	edi
		cmp	byte ptr [esi],	5Ch
		jnz	short loc_405DE9
		cmp	byte ptr [esi+1], 5Ch
		jnz	short loc_405DE9
		cmp	byte ptr [esi+2], 3Fh
		jnz	short loc_405DE9
		cmp	byte ptr [esi+3], 5Ch
		jnz	short loc_405DE9
		add	esi, 4

loc_405DE9:				; CODE XREF: sub_405DC8+Aj
					; sub_405DC8+10j ...
		cmp	byte ptr [esi],	0
		jz	short loc_405DFA
		push	esi
		call	sub_4056C6
		test	eax, eax
		jz	short loc_405DFA
		inc	esi
		inc	esi

loc_405DFA:				; CODE XREF: sub_405DC8+24j
					; sub_405DC8+2Ej
		mov	al, [esi]
		mov	ebx, esi
		test	al, al
		mov	edi, esi
		jz	short loc_405E3D
		push	ebp
		mov	ebp, ds:CharNextA

loc_405E0B:				; CODE XREF: sub_405DC8+72j
		cmp	al, 1Fh
		jbe	short loc_405E31
		push	eax		; char
		push	offset a?	; "*?|<>/\":"
		call	sub_405684
		cmp	byte ptr [eax],	0
		jnz	short loc_405E31
		push	esi		; lpsz
		call	ebp ; CharNextA
		sub	eax, esi
		push	eax
		push	esi
		push	edi
		call	sub_4057FE
		push	edi		; lpsz
		call	ebp ; CharNextA
		mov	edi, eax

loc_405E31:				; CODE XREF: sub_405DC8+45j
					; sub_405DC8+55j
		push	esi		; lpsz
		call	ebp ; CharNextA
		mov	esi, eax
		mov	al, [esi]
		test	al, al
		jnz	short loc_405E0B
		pop	ebp

loc_405E3D:				; CODE XREF: sub_405DC8+3Aj
		and	byte ptr [edi],	0

loc_405E40:				; CODE XREF: sub_405DC8+91j
		push	edi		; lpszCurrent
		push	ebx		; lpszStart
		call	ds:CharPrevA
		mov	edi, eax
		mov	al, [edi]
		cmp	al, 20h
		jz	short loc_405E54
		cmp	al, 5Ch
		jnz	short loc_405E5B

loc_405E54:				; CODE XREF: sub_405DC8+86j
		and	byte ptr [edi],	0
		cmp	ebx, edi
		jb	short loc_405E40

loc_405E5B:				; CODE XREF: sub_405DC8+8Aj
		pop	edi
		pop	esi
		pop	ebx
		retn	4
sub_405DC8	endp


; =============== S U B	R O U T	I N E =======================================


; int __stdcall	sub_405E61(LPCSTR lpFileName)
sub_405E61	proc near		; CODE XREF: sub_401434+207p
					; sub_401434+247p ...

lpFileName	= dword	ptr  4

		push	esi
		mov	esi, offset FindFileData
		push	esi		; lpFindFileData
		push	[esp+8+lpFileName] ; lpFileName
		call	ds:FindFirstFileA
		cmp	eax, 0FFFFFFFFh
		jz	short loc_405E82
		push	eax		; hFindFile
		call	ds:FindClose
		mov	eax, esi
		jmp	short loc_405E84
; ---------------------------------------------------------------------------

loc_405E82:				; CODE XREF: sub_405E61+14j
		xor	eax, eax

loc_405E84:				; CODE XREF: sub_405E61+1Fj
		pop	esi
		retn	4
sub_405E61	endp


; =============== S U B	R O U T	I N E =======================================


sub_405E88	proc near		; CODE XREF: sub_402A36+6Ep start+3Ep	...

arg_0		= dword	ptr  4

		mov	eax, [esp+arg_0]
		push	esi
		mov	esi, eax
		push	edi
		shl	esi, 3
		mov	edi, off_409220[esi]
		push	edi		; lpModuleName
		call	ds:GetModuleHandleA
		test	eax, eax
		jnz	short loc_405EAF
		push	edi		; lpLibFileName
		call	ds:LoadLibraryA
		test	eax, eax
		jz	short loc_405EBC

loc_405EAF:				; CODE XREF: sub_405E88+1Aj
		push	off_409224[esi]	; lpProcName
		push	eax		; hModule
		call	ds:GetProcAddress

loc_405EBC:				; CODE XREF: sub_405E88+25j
		pop	edi
		pop	esi
		retn	4
sub_405E88	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_405EC1(UINT	wMsgFilterMin)
sub_405EC1	proc near		; CODE XREF: sub_401434+A17p
					; sub_402BD3+2Fp

Msg		= MSG ptr -1Ch
wMsgFilterMin	= dword	ptr  8

		push	ebp
		mov	ebp, esp
		sub	esp, 1Ch
		push	esi
		mov	esi, [ebp+wMsgFilterMin]
		push	edi
		mov	edi, ds:PeekMessageA
		jmp	short loc_405EDE
; ---------------------------------------------------------------------------

loc_405ED4:				; CODE XREF: sub_405EC1+2Bj
		lea	eax, [ebp+Msg]
		push	eax		; lpMsg
		call	ds:DispatchMessageA

loc_405EDE:				; CODE XREF: sub_405EC1+11j
		push	1		; wRemoveMsg
		push	esi		; wMsgFilterMax
		push	esi		; wMsgFilterMin
		lea	eax, [ebp+Msg]
		push	0		; hWnd
		push	eax		; lpMsg
		call	edi ; PeekMessageA
		test	eax, eax
		jnz	short loc_405ED4
		pop	edi
		pop	esi
		leave
		retn	4
sub_405EC1	endp


; =============== S U B	R O U T	I N E =======================================


sub_405EF4	proc near		; CODE XREF: sub_402C72+160p

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		cmp	dword_422A34, 0
		push	esi
		jnz	short loc_405F2B
		xor	ecx, ecx

loc_405F00:				; CODE XREF: sub_405EF4+35j
		push	8
		mov	eax, ecx
		pop	esi

loc_405F05:				; CODE XREF: sub_405EF4+25j
		mov	edx, eax
		and	dl, 1
		neg	dl
		sbb	edx, edx
		and	edx, 0EDB88320h
		shr	eax, 1
		xor	eax, edx
		dec	esi
		jnz	short loc_405F05
		mov	dword_422A30[ecx*4], eax
		inc	ecx
		cmp	ecx, 100h
		jl	short loc_405F00

loc_405F2B:				; CODE XREF: sub_405EF4+8j
		mov	edx, [esp+4+arg_8]
		mov	eax, [esp+4+arg_0]
		test	edx, edx
		not	eax
		jbe	short loc_405F5C
		mov	ecx, [esp+4+arg_4]
		push	edi

loc_405F3E:				; CODE XREF: sub_405EF4+65j
		movzx	edi, byte ptr [ecx]
		mov	esi, eax
		and	esi, 0FFh
		xor	esi, edi
		shr	eax, 8
		mov	esi, dword_422A30[esi*4]
		xor	eax, esi
		inc	ecx
		dec	edx
		jnz	short loc_405F3E
		pop	edi

loc_405F5C:				; CODE XREF: sub_405EF4+43j
		not	eax
		pop	esi
		retn	0Ch
sub_405EF4	endp


; =============== S U B	R O U T	I N E =======================================


sub_405F62	proc near		; CODE XREF: sub_402C72+1CDp
		mov	eax, 80h

loc_405F67:				; CODE XREF: sub_405F62+Aj
		dec	eax
		mov	byte ptr [eax+ecx], 0
		jnz	short loc_405F67
		or	dword ptr [ecx+78h], 0FFFFFFFFh
		xor	eax, eax
		inc	eax
		mov	[ecx+68h], eax
		mov	[ecx+64h], eax
		mov	[ecx+60h], eax
		mov	[ecx+5Ch], eax
		retn
sub_405F62	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_405F82	proc near		; CODE XREF: sub_403043+E1p

var_90		= dword	ptr -90h
var_88		= dword	ptr -88h
var_84		= dword	ptr -84h
var_80		= dword	ptr -80h
var_7C		= dword	ptr -7Ch
var_78		= dword	ptr -78h
var_74		= dword	ptr -74h
var_70		= dword	ptr -70h
var_6C		= dword	ptr -6Ch
var_68		= dword	ptr -68h
var_64		= dword	ptr -64h
var_60		= dword	ptr -60h
var_5C		= byte ptr -5Ch
var_5B		= byte ptr -5Bh
var_58		= dword	ptr -58h
var_54		= dword	ptr -54h
var_50		= dword	ptr -50h
var_4C		= dword	ptr -4Ch
var_48		= dword	ptr -48h
var_44		= dword	ptr -44h
dwBytes		= dword	ptr -40h
var_3C		= dword	ptr -3Ch
var_38		= dword	ptr -38h
var_34		= dword	ptr -34h
var_30		= dword	ptr -30h
var_2C		= dword	ptr -2Ch
var_28		= dword	ptr -28h
var_24		= dword	ptr -24h
var_20		= dword	ptr -20h
var_1C		= dword	ptr -1Ch
var_18		= dword	ptr -18h
var_14		= dword	ptr -14h
var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_8		= dword	ptr -8
hMem		= dword	ptr -4

		push	ebp
		mov	ebp, esp
		sub	esp, 90h
		push	ebx
		push	esi
		push	edi
		push	22h
		mov	esi, ecx
		pop	ecx
		lea	edi, [ebp+var_88]
		mov	[ebp+var_90], esi
		rep movsd
		cmp	[ebp+var_30], 0FFFFFFFFh
		jnz	short loc_405FAF
		xor	eax, eax
		inc	eax
		jmp	loc_4069CF
; ---------------------------------------------------------------------------

loc_405FAF:				; CODE XREF: sub_405F82+23j
		mov	ebx, [ebp+var_44]
		mov	esi, [ebp+var_54]

loc_405FB5:				; CODE XREF: sub_405F82+567j
					; sub_405F82+89Dj
		mov	eax, [ebp+var_88]
		cmp	eax, 1Ch	; switch 29 cases
		ja	loc_4069CC	; jumptable 00405FC4 default case
		jmp	ds:off_4069D4[eax*4] ; switch jump
; ---------------------------------------------------------------------------

loc_405FCB:				; CODE XREF: sub_405F82+42j
					; DATA XREF: .text:off_4069D4o
		cmp	[ebp+var_6C], 0	; jumptable 00405FC4 case 0
		jz	loc_4069B7
		mov	eax, [ebp+var_70]
		dec	[ebp+var_6C]
		inc	[ebp+var_70]
		mov	al, [eax]
		cmp	al, 0E1h
		ja	loc_4069CC	; jumptable 00405FC4 default case
		movzx	eax, al
		push	2Dh
		cdq
		pop	ecx
		idiv	ecx
		push	9
		pop	ecx
		mov	esi, eax
		movzx	eax, dl
		cdq
		idiv	ecx
		mov	ecx, esi
		movzx	edi, dl
		xor	edx, edx
		mov	[ebp+var_3C], edi
		inc	edx
		shl	edx, cl
		mov	ecx, eax
		dec	edx
		mov	[ebp+var_1C], edx
		xor	edx, edx
		inc	edx
		shl	edx, cl
		lea	ecx, [edi+esi]
		mov	esi, 300h
		shl	esi, cl
		dec	edx
		mov	[ebp+var_18], edx
		add	esi, 736h
		lea	edi, [esi+esi]
		cmp	edi, [ebp+var_78]
		jz	short loc_406056
		cmp	[ebp+hMem], 0
		jz	short loc_40603F
		push	[ebp+hMem]	; hMem
		call	ds:GlobalFree

loc_40603F:				; CODE XREF: sub_405F82+B2j
		push	edi		; dwBytes
		push	40h		; uFlags
		call	ds:GlobalAlloc
		test	eax, eax
		mov	[ebp+hMem], eax
		jz	loc_4069CC	; jumptable 00405FC4 default case
		mov	[ebp+var_78], edi

loc_406056:				; CODE XREF: sub_405F82+ACj
		test	esi, esi
		jz	short loc_406066

loc_40605A:				; CODE XREF: sub_405F82+E2j
		mov	eax, [ebp+hMem]
		dec	esi
		mov	word ptr [eax+esi*2], 400h
		jnz	short loc_40605A

loc_406066:				; CODE XREF: sub_405F82+D6j
		and	[ebp+var_48], 0
		and	[ebp+dwBytes], 0
		jmp	short loc_406096
; ---------------------------------------------------------------------------

loc_406070:				; CODE XREF: sub_405F82+42j
					; sub_405F82+118j
					; DATA XREF: ...
		cmp	[ebp+var_6C], 0	; jumptable 00405FC4 case 1
		jz	loc_406920
		mov	eax, [ebp+var_48]
		dec	[ebp+var_6C]
		mov	ecx, eax
		mov	eax, [ebp+var_70]
		shl	ecx, 3
		movzx	eax, byte ptr [eax]
		shl	eax, cl
		or	[ebp+dwBytes], eax
		inc	[ebp+var_70]
		inc	[ebp+var_48]

loc_406096:				; CODE XREF: sub_405F82+ECj
		cmp	[ebp+var_48], 4
		jl	short loc_406070 ; jumptable 00405FC4 case 1
		mov	eax, [ebp+dwBytes]
		cmp	eax, [ebp+var_74]
		jz	short loc_4060CC
		cmp	[ebp+var_8], 0
		mov	[ebp+var_74], eax
		jz	short loc_4060B6
		push	[ebp+var_8]	; hMem
		call	ds:GlobalFree

loc_4060B6:				; CODE XREF: sub_405F82+129j
		push	[ebp+dwBytes]	; dwBytes
		push	40h		; uFlags
		call	ds:GlobalAlloc
		test	eax, eax
		mov	[ebp+var_8], eax
		jz	loc_4069CC	; jumptable 00405FC4 default case

loc_4060CC:				; CODE XREF: sub_405F82+120j
		mov	eax, [ebp+var_8]
		mov	ecx, [ebp+var_74]
		mov	[ebp+var_48], 5
		and	byte ptr [eax+ecx-1], 0
		jmp	short loc_406101
; ---------------------------------------------------------------------------

loc_4060E0:				; CODE XREF: sub_405F82+42j
					; sub_405F82+187j
					; DATA XREF: ...
		cmp	[ebp+var_6C], 0	; jumptable 00405FC4 case 3
		jz	loc_40692F
		mov	ecx, [ebp+var_70]
		mov	eax, [ebp+var_C]
		dec	[ebp+var_6C]
		movzx	ecx, byte ptr [ecx]
		shl	eax, 8
		or	eax, ecx
		inc	[ebp+var_70]
		mov	[ebp+var_C], eax

loc_406101:				; CODE XREF: sub_405F82+15Cj
		mov	eax, [ebp+var_48]
		dec	[ebp+var_48]
		test	eax, eax
		jnz	short loc_4060E0 ; jumptable 00405FC4 case 3

loc_40610B:				; CODE XREF: sub_405F82+42j
					; DATA XREF: .text:off_4069D4o
		mov	eax, [ebp+var_60] ; jumptable 00405FC4 case 2
		mov	ecx, [ebp+var_38]
		and	eax, [ebp+var_1C]
		mov	[ebp+var_84], 6
		shl	ecx, 4
		mov	[ebp+var_4C], eax
		add	ecx, eax
		mov	eax, [ebp+hMem]
		lea	esi, [eax+ecx*2]
		jmp	loc_40679D
; ---------------------------------------------------------------------------

loc_406131:				; CODE XREF: sub_405F82+42j
					; DATA XREF: .text:off_4069D4o
		xor	edx, edx	; jumptable 00405FC4 case 6
		cmp	[ebp+dwBytes], edx
		jnz	short loc_4061A7
		movzx	eax, [ebp+var_5C]
		mov	esi, [ebp+var_60]
		mov	cl, 8
		sub	cl, byte ptr [ebp+var_3C]
		and	esi, [ebp+var_18]
		shr	eax, cl
		mov	ecx, [ebp+var_3C]
		shl	esi, cl
		mov	ecx, [ebp+hMem]
		add	eax, esi
		lea	eax, [eax+eax*2]
		shl	eax, 9
		cmp	[ebp+var_38], 4
		lea	eax, [eax+ecx+0E6Ch]
		mov	[ebp+var_58], eax
		jge	short loc_40616E
		mov	[ebp+var_38], edx
		jmp	short loc_40617E
; ---------------------------------------------------------------------------

loc_40616E:				; CODE XREF: sub_405F82+1E5j
		cmp	[ebp+var_38], 0Ah
		jge	short loc_40617A
		sub	[ebp+var_38], 3
		jmp	short loc_40617E
; ---------------------------------------------------------------------------

loc_40617A:				; CODE XREF: sub_405F82+1F0j
		sub	[ebp+var_38], 6

loc_40617E:				; CODE XREF: sub_405F82+1EAj
					; sub_405F82+1F6j
		cmp	[ebp+var_34], edx
		jz	short loc_40619F
		mov	eax, [ebp+var_14]
		sub	eax, [ebp+var_2C]
		cmp	eax, [ebp+var_74]
		jb	short loc_406191
		add	eax, [ebp+var_74]

loc_406191:				; CODE XREF: sub_405F82+20Aj
		mov	ecx, [ebp+var_8]
		xor	ebx, ebx
		inc	ebx
		mov	al, [eax+ecx]
		mov	[ebp+var_5B], al
		jmp	short loc_406207
; ---------------------------------------------------------------------------

loc_40619F:				; CODE XREF: sub_405F82+1FFj
		xor	ebx, ebx
		inc	ebx
		jmp	loc_406374
; ---------------------------------------------------------------------------

loc_4061A7:				; CODE XREF: sub_405F82+1B4j
		mov	eax, [ebp+hMem]
		mov	ecx, [ebp+var_38]
		mov	[ebp+var_34], 1
		mov	[ebp+var_84], 7
		lea	esi, [eax+ecx*2+180h]
		jmp	loc_40679D
; ---------------------------------------------------------------------------

loc_4061CA:				; CODE XREF: sub_405F82+42j
					; sub_405F82+2FCj
					; DATA XREF: ...
		cmp	[ebp+var_6C], 0	; jumptable 00405FC4 case 13
		jz	loc_40693B
		mov	ecx, [ebp+var_70]
		mov	eax, [ebp+var_C]
		shl	[ebp+var_10], 8
		movzx	ecx, byte ptr [ecx]
		dec	[ebp+var_6C]
		shl	eax, 8
		or	eax, ecx
		inc	[ebp+var_70]
		mov	[ebp+var_C], eax

loc_4061EF:				; CODE XREF: sub_405F82+2F6j
		mov	eax, [ebp+dwBytes]
		cmp	[ebp+var_48], eax
		jnz	loc_4062A8
		cmp	ebx, 100h
		jge	loc_40630C

loc_406207:				; CODE XREF: sub_405F82+21Bj
		movzx	eax, [ebp+var_5B]
		shl	[ebp+var_5B], 1
		mov	ecx, [ebp+var_58]
		shr	eax, 7
		mov	[ebp+var_48], eax
		inc	eax
		shl	eax, 8
		add	eax, ebx
		lea	esi, [ecx+eax*2]
		mov	ecx, [ebp+var_10]
		shr	ecx, 0Bh
		mov	ax, [esi]
		mov	[ebp+var_54], esi
		movzx	edx, ax
		imul	ecx, edx
		cmp	[ebp+var_C], ecx
		jnb	short loc_406251
		and	[ebp+dwBytes], 0
		mov	[ebp+var_10], ecx
		mov	ecx, 800h
		sub	ecx, edx
		sar	ecx, 5
		add	ecx, eax
		add	ebx, ebx
		mov	[esi], cx
		jmp	short loc_40626E
; ---------------------------------------------------------------------------

loc_406251:				; CODE XREF: sub_405F82+2B3j
		sub	[ebp+var_10], ecx
		sub	[ebp+var_C], ecx
		mov	cx, ax
		mov	[ebp+dwBytes], 1
		shr	cx, 5
		sub	eax, ecx
		lea	ebx, [ebx+ebx+1]
		mov	[esi], ax

loc_40626E:				; CODE XREF: sub_405F82+2CDj
		cmp	[ebp+var_10], 1000000h
		mov	[ebp+var_44], ebx
		jnb	loc_4061EF
		jmp	loc_4061CA	; jumptable 00405FC4 case 13
; ---------------------------------------------------------------------------

loc_406283:				; CODE XREF: sub_405F82+42j
					; sub_405F82+385j
					; DATA XREF: ...
		cmp	[ebp+var_6C], 0	; jumptable 00405FC4 case 14
		jz	loc_406947
		mov	ecx, [ebp+var_70]
		mov	eax, [ebp+var_C]
		shl	[ebp+var_10], 8
		movzx	ecx, byte ptr [ecx]
		dec	[ebp+var_6C]
		shl	eax, 8
		or	eax, ecx
		inc	[ebp+var_70]
		mov	[ebp+var_C], eax

loc_4062A8:				; CODE XREF: sub_405F82+273j
					; sub_405F82+383j
		cmp	ebx, 100h
		jge	short loc_40630C
		mov	eax, [ebp+var_58]
		lea	edx, [ebx+ebx]
		mov	ecx, [ebp+var_10]
		lea	esi, [edx+eax]
		shr	ecx, 0Bh
		mov	ax, [esi]
		mov	[ebp+var_54], esi
		movzx	edi, ax
		imul	ecx, edi
		cmp	[ebp+var_C], ecx
		jnb	short loc_4062E6
		mov	[ebp+var_10], ecx
		mov	ecx, 800h
		sub	ecx, edi
		sar	ecx, 5
		add	ecx, eax
		add	ebx, ebx
		mov	[esi], cx
		jmp	short loc_4062FB
; ---------------------------------------------------------------------------

loc_4062E6:				; CODE XREF: sub_405F82+34Cj
		sub	[ebp+var_10], ecx
		sub	[ebp+var_C], ecx
		mov	cx, ax
		lea	ebx, [edx+1]
		shr	cx, 5
		sub	eax, ecx
		mov	[esi], ax

loc_4062FB:				; CODE XREF: sub_405F82+362j
		cmp	[ebp+var_10], 1000000h
		mov	[ebp+var_44], ebx
		jnb	short loc_4062A8
		jmp	loc_406283	; jumptable 00405FC4 case 14
; ---------------------------------------------------------------------------

loc_40630C:				; CODE XREF: sub_405F82+27Fj
					; sub_405F82+32Cj
		and	[ebp+var_34], 0

loc_406310:				; CODE XREF: sub_405F82+3F0j
		mov	al, byte ptr [ebp+var_44]
		mov	[ebp+var_5C], al

loc_406316:				; CODE XREF: sub_405F82+42j
					; DATA XREF: .text:off_4069D4o
		cmp	[ebp+var_64], 0	; jumptable 00405FC4 case 26
		jz	loc_40695F
		mov	ecx, [ebp+var_68]
		mov	al, [ebp+var_5C]
		mov	edx, [ebp+var_8]
		inc	[ebp+var_60]
		inc	[ebp+var_68]
		dec	[ebp+var_64]
		mov	[ecx], al
		mov	ecx, [ebp+var_14]
		mov	[ecx+edx], al
		lea	eax, [ecx+1]
		xor	edx, edx
		div	[ebp+var_74]
		jmp	loc_4064DC
; ---------------------------------------------------------------------------

loc_406347:				; CODE XREF: sub_405F82+42j
					; sub_405F82+449j
					; DATA XREF: ...
		cmp	[ebp+var_6C], 0	; jumptable 00405FC4 case 15
		jz	loc_406953
		mov	ecx, [ebp+var_70]
		mov	eax, [ebp+var_C]
		shl	[ebp+var_10], 8
		movzx	ecx, byte ptr [ecx]
		dec	[ebp+var_6C]
		shl	eax, 8
		or	eax, ecx
		inc	[ebp+var_70]
		mov	[ebp+var_C], eax

loc_40636C:				; CODE XREF: sub_405F82+447j
		cmp	ebx, 100h
		jge	short loc_406310

loc_406374:				; CODE XREF: sub_405F82+220j
		mov	eax, [ebp+var_58]
		lea	edx, [ebx+ebx]
		mov	ecx, [ebp+var_10]
		lea	esi, [edx+eax]
		shr	ecx, 0Bh
		mov	ax, [esi]
		mov	[ebp+var_54], esi
		movzx	edi, ax
		imul	ecx, edi
		cmp	[ebp+var_C], ecx
		jnb	short loc_4063AA
		mov	[ebp+var_10], ecx
		mov	ecx, 800h
		sub	ecx, edi
		sar	ecx, 5
		add	ecx, eax
		add	ebx, ebx
		mov	[esi], cx
		jmp	short loc_4063BF
; ---------------------------------------------------------------------------

loc_4063AA:				; CODE XREF: sub_405F82+410j
		sub	[ebp+var_10], ecx
		sub	[ebp+var_C], ecx
		mov	cx, ax
		lea	ebx, [edx+1]
		shr	cx, 5
		sub	eax, ecx
		mov	[esi], ax

loc_4063BF:				; CODE XREF: sub_405F82+426j
		cmp	[ebp+var_10], 1000000h
		mov	[ebp+var_44], ebx
		jnb	short loc_40636C
		jmp	loc_406347	; jumptable 00405FC4 case 15
; ---------------------------------------------------------------------------

loc_4063D0:				; CODE XREF: sub_405F82+42j
					; DATA XREF: .text:off_4069D4o
		cmp	[ebp+dwBytes], 1 ; jumptable 00405FC4 case 7
		jnz	short loc_4063F2
		mov	eax, [ebp+hMem]
		mov	ecx, [ebp+var_38]
		mov	[ebp+var_84], 8
		lea	esi, [eax+ecx*2+198h]
		jmp	loc_40679D
; ---------------------------------------------------------------------------

loc_4063F2:				; CODE XREF: sub_405F82+452j
		mov	eax, [ebp+var_24]
		mov	[ebp+var_80], 16h
		mov	[ebp+var_20], eax
		mov	eax, [ebp+var_28]
		mov	[ebp+var_24], eax
		mov	eax, [ebp+var_2C]
		mov	[ebp+var_28], eax
		xor	eax, eax
		cmp	[ebp+var_38], 7
		setnl	al
		dec	eax
		and	al, 0FDh
		add	eax, 0Ah
		mov	[ebp+var_38], eax
		mov	eax, [ebp+hMem]
		add	eax, 664h
		mov	[ebp+var_58], eax

loc_406428:				; CODE XREF: sub_405F82+42j
					; sub_405F82+5C8j
					; DATA XREF: ...
		mov	esi, [ebp+var_58] ; jumptable 00405FC4 case 17
		mov	[ebp+var_84], 12h
		jmp	loc_40679D
; ---------------------------------------------------------------------------

loc_40643A:				; CODE XREF: sub_405F82+42j
					; DATA XREF: .text:off_4069D4o
		cmp	[ebp+dwBytes], 0 ; jumptable 00405FC4 case 8
		jnz	short loc_406461
		mov	eax, [ebp+var_38]
		mov	ecx, [ebp+hMem]
		add	eax, 0Fh
		mov	[ebp+var_84], 9
		shl	eax, 4
		add	eax, [ebp+var_4C]
		lea	esi, [ecx+eax*2]
		jmp	loc_40679D
; ---------------------------------------------------------------------------

loc_406461:				; CODE XREF: sub_405F82+4BCj
		mov	eax, [ebp+hMem]
		mov	ecx, [ebp+var_38]
		mov	[ebp+var_84], 0Ah
		lea	esi, [eax+ecx*2+1B0h]
		jmp	loc_40679D
; ---------------------------------------------------------------------------

loc_40647D:				; CODE XREF: sub_405F82+42j
					; DATA XREF: .text:off_4069D4o
		cmp	[ebp+dwBytes], 0 ; jumptable 00405FC4 case 9
		jnz	loc_406538
		cmp	[ebp+var_60], 0
		jz	loc_4069CC	; jumptable 00405FC4 default case
		xor	eax, eax
		cmp	[ebp+var_38], 7
		setnl	al
		lea	eax, [eax+eax+9]
		mov	[ebp+var_38], eax

loc_4064A1:				; CODE XREF: sub_405F82+42j
					; DATA XREF: .text:off_4069D4o
		cmp	[ebp+var_64], 0	; jumptable 00405FC4 case 27
		jz	loc_40696B
		mov	eax, [ebp+var_14]
		sub	eax, [ebp+var_2C]
		cmp	eax, [ebp+var_74]
		jb	short loc_4064B9
		add	eax, [ebp+var_74]

loc_4064B9:				; CODE XREF: sub_405F82+532j
		mov	edx, [ebp+var_8]
		mov	cl, [eax+edx]
		mov	eax, [ebp+var_14]
		mov	[ebp+var_5C], cl
		mov	[eax+edx], cl
		inc	eax
		xor	edx, edx
		div	[ebp+var_74]
		mov	eax, [ebp+var_68]
		inc	[ebp+var_60]
		inc	[ebp+var_68]
		dec	[ebp+var_64]
		mov	[eax], cl

loc_4064DC:				; CODE XREF: sub_405F82+3C0j
		mov	[ebp+var_14], edx

loc_4064DF:				; CODE XREF: sub_405F82+7E0j
		mov	[ebp+var_88], 2
		jmp	loc_405FB5
; ---------------------------------------------------------------------------

loc_4064EE:				; CODE XREF: sub_405F82+42j
					; DATA XREF: .text:off_4069D4o
		cmp	[ebp+dwBytes], 0 ; jumptable 00405FC4 case 10
		jnz	short loc_4064F9
		mov	eax, [ebp+var_28]
		jmp	short loc_40652F
; ---------------------------------------------------------------------------

loc_4064F9:				; CODE XREF: sub_405F82+570j
		mov	eax, [ebp+hMem]
		mov	ecx, [ebp+var_38]
		mov	[ebp+var_84], 0Bh
		lea	esi, [eax+ecx*2+1C8h]
		jmp	loc_40679D
; ---------------------------------------------------------------------------

loc_406515:				; CODE XREF: sub_405F82+42j
					; DATA XREF: .text:off_4069D4o
		cmp	[ebp+dwBytes], 0 ; jumptable 00405FC4 case 11
		jnz	short loc_406520
		mov	eax, [ebp+var_24]
		jmp	short loc_406529
; ---------------------------------------------------------------------------

loc_406520:				; CODE XREF: sub_405F82+597j
		mov	ecx, [ebp+var_24]
		mov	eax, [ebp+var_20]
		mov	[ebp+var_20], ecx

loc_406529:				; CODE XREF: sub_405F82+59Cj
		mov	ecx, [ebp+var_28]
		mov	[ebp+var_24], ecx

loc_40652F:				; CODE XREF: sub_405F82+575j
		mov	ecx, [ebp+var_2C]
		mov	[ebp+var_2C], eax
		mov	[ebp+var_28], ecx

loc_406538:				; CODE XREF: sub_405F82+4FFj
		mov	eax, [ebp+hMem]
		mov	[ebp+var_80], 15h
		add	eax, 0A68h
		mov	[ebp+var_58], eax
		jmp	loc_406428	; jumptable 00405FC4 case 17
; ---------------------------------------------------------------------------

loc_40654F:				; CODE XREF: sub_405F82+42j
					; DATA XREF: .text:off_4069D4o
		xor	eax, eax	; jumptable 00405FC4 case 21
		cmp	[ebp+var_38], 7
		setnl	al
		dec	eax
		and	al, 0FDh
		add	eax, 0Bh
		mov	[ebp+var_38], eax
		jmp	loc_406700
; ---------------------------------------------------------------------------

loc_406566:				; CODE XREF: sub_405F82+42j
					; DATA XREF: .text:off_4069D4o
		mov	eax, [ebp+var_30] ; jumptable 00405FC4 case 22
		cmp	eax, 4
		jl	short loc_406571
		push	3
		pop	eax

loc_406571:				; CODE XREF: sub_405F82+5EAj
		mov	ecx, [ebp+hMem]
		mov	[ebp+dwBytes], 6
		shl	eax, 7
		mov	[ebp+var_7C], 19h
		lea	eax, [eax+ecx+360h]
		mov	[ebp+var_58], eax
		jmp	loc_406862	; jumptable 00405FC4 case 23
; ---------------------------------------------------------------------------

loc_406594:				; CODE XREF: sub_405F82+42j
					; DATA XREF: .text:off_4069D4o
		cmp	ebx, 4		; jumptable 00405FC4 case 25
		jl	short loc_4065CD
		mov	ecx, ebx
		mov	eax, ebx
		sar	ecx, 1
		and	eax, 1
		dec	ecx
		or	al, 2
		shl	eax, cl
		cmp	ebx, 0Eh
		mov	[ebp+var_2C], eax
		jge	short loc_4065C3
		mov	edx, [ebp+hMem]
		sub	eax, ebx
		mov	[ebp+dwBytes], ecx
		lea	eax, [edx+eax*2+55Eh]
		jmp	loc_406644
; ---------------------------------------------------------------------------

loc_4065C3:				; CODE XREF: sub_405F82+62Bj
		xor	ebx, ebx
		add	ecx, 0FFFFFFFCh
		mov	[ebp+var_48], ecx
		jmp	short loc_406600
; ---------------------------------------------------------------------------

loc_4065CD:				; CODE XREF: sub_405F82+615j
		mov	[ebp+var_2C], ebx
		jmp	loc_4066FD
; ---------------------------------------------------------------------------

loc_4065D5:				; CODE XREF: sub_405F82+42j
					; sub_405F82+6A9j
					; DATA XREF: ...
		cmp	[ebp+var_6C], 0	; jumptable 00405FC4 case 12
		jz	loc_406977
		mov	ecx, [ebp+var_70]
		mov	eax, [ebp+var_C]
		shl	[ebp+var_10], 8
		movzx	ecx, byte ptr [ecx]
		dec	[ebp+var_6C]
		shl	eax, 8
		or	eax, ecx
		inc	[ebp+var_70]
		mov	[ebp+var_C], eax
		mov	eax, [ebp+var_2C]

loc_4065FD:				; CODE XREF: sub_405F82+6A7j
		dec	[ebp+var_48]

loc_406600:				; CODE XREF: sub_405F82+649j
		cmp	[ebp+var_48], 0
		jle	short loc_40662D
		mov	ecx, [ebp+var_C]
		add	ebx, ebx
		shr	[ebp+var_10], 1
		cmp	ecx, [ebp+var_10]
		mov	[ebp+var_44], ebx
		jb	short loc_406622
		mov	ecx, [ebp+var_10]
		sub	[ebp+var_C], ecx
		or	ebx, 1
		mov	[ebp+var_44], ebx

loc_406622:				; CODE XREF: sub_405F82+692j
		cmp	[ebp+var_10], 1000000h
		jnb	short loc_4065FD
		jmp	short loc_4065D5 ; jumptable 00405FC4 case 12
; ---------------------------------------------------------------------------

loc_40662D:				; CODE XREF: sub_405F82+682j
		shl	ebx, 4
		add	eax, ebx
		mov	[ebp+dwBytes], 4
		mov	[ebp+var_2C], eax
		mov	eax, [ebp+hMem]
		add	eax, 644h

loc_406644:				; CODE XREF: sub_405F82+63Cj
		xor	ebx, ebx
		mov	[ebp+var_58], eax
		mov	[ebp+var_50], 1
		mov	[ebp+var_44], ebx
		mov	[ebp+var_48], ebx
		jmp	short loc_406680
; ---------------------------------------------------------------------------

loc_406658:				; CODE XREF: sub_405F82+42j
					; sub_405F82+773j
					; DATA XREF: ...
		cmp	[ebp+var_6C], 0	; jumptable 00405FC4 case 16
		jz	loc_406983
		mov	ecx, [ebp+var_70]
		mov	eax, [ebp+var_C]
		shl	[ebp+var_10], 8
		movzx	ecx, byte ptr [ecx]
		dec	[ebp+var_6C]
		shl	eax, 8
		or	eax, ecx
		inc	[ebp+var_70]
		mov	[ebp+var_C], eax

loc_40667D:				; CODE XREF: sub_405F82+771j
		inc	[ebp+var_48]

loc_406680:				; CODE XREF: sub_405F82+6D4j
		mov	eax, [ebp+dwBytes]
		cmp	[ebp+var_48], eax
		jge	short loc_4066FA
		mov	eax, [ebp+var_50]
		mov	edx, [ebp+var_10]
		shr	edx, 0Bh
		lea	edi, [eax+eax]
		mov	eax, [ebp+var_58]
		lea	esi, [edi+eax]
		mov	[ebp+var_54], esi
		mov	ax, [esi]
		movzx	ecx, ax
		imul	edx, ecx
		cmp	[ebp+var_C], edx
		jnb	short loc_4066C2
		mov	[ebp+var_10], edx
		mov	edx, 800h
		sub	edx, ecx
		sar	edx, 5
		add	edx, eax
		shl	[ebp+var_50], 1
		mov	[esi], dx
		jmp	short loc_4066EC
; ---------------------------------------------------------------------------

loc_4066C2:				; CODE XREF: sub_405F82+727j
		xor	ecx, ecx
		sub	[ebp+var_10], edx
		inc	ecx
		sub	[ebp+var_C], edx
		mov	ebx, ecx
		mov	ecx, [ebp+var_48]
		shl	ebx, cl
		mov	ecx, ebx
		mov	ebx, [ebp+var_44]
		or	ebx, ecx
		mov	cx, ax
		shr	cx, 5
		sub	eax, ecx
		inc	edi
		mov	[ebp+var_44], ebx
		mov	[esi], ax
		mov	[ebp+var_50], edi

loc_4066EC:				; CODE XREF: sub_405F82+73Ej
		cmp	[ebp+var_10], 1000000h
		jnb	short loc_40667D
		jmp	loc_406658	; jumptable 00405FC4 case 16
; ---------------------------------------------------------------------------

loc_4066FA:				; CODE XREF: sub_405F82+704j
		add	[ebp+var_2C], ebx

loc_4066FD:				; CODE XREF: sub_405F82+64Ej
		inc	[ebp+var_2C]

loc_406700:				; CODE XREF: sub_405F82+5DFj
		mov	eax, [ebp+var_2C]
		test	eax, eax
		jz	loc_40698F
		cmp	eax, [ebp+var_60]
		ja	loc_4069CC	; jumptable 00405FC4 default case
		add	[ebp+var_30], 2
		mov	eax, [ebp+var_30]
		add	[ebp+var_60], eax

loc_40671E:				; CODE XREF: sub_405F82+42j
					; sub_405F82+7DEj
					; DATA XREF: ...
		cmp	[ebp+var_64], 0	; jumptable 00405FC4 case 28
		jz	loc_406995
		mov	eax, [ebp+var_14]
		sub	eax, [ebp+var_2C]
		cmp	eax, [ebp+var_74]
		jb	short loc_406736
		add	eax, [ebp+var_74]

loc_406736:				; CODE XREF: sub_405F82+7AFj
		mov	edx, [ebp+var_8]
		mov	cl, [eax+edx]
		mov	eax, [ebp+var_14]
		mov	[ebp+var_5C], cl
		mov	[eax+edx], cl
		inc	eax
		xor	edx, edx
		div	[ebp+var_74]
		mov	eax, [ebp+var_68]
		inc	[ebp+var_68]
		dec	[ebp+var_64]
		dec	[ebp+var_30]
		cmp	[ebp+var_30], 0
		mov	[eax], cl
		mov	[ebp+var_14], edx
		jg	short loc_40671E ; jumptable 00405FC4 case 28
		jmp	loc_4064DF
; ---------------------------------------------------------------------------

loc_406767:				; CODE XREF: sub_405F82+42j
					; DATA XREF: .text:off_4069D4o
		cmp	[ebp+dwBytes], 0 ; jumptable 00405FC4 case 18
		jnz	short loc_40678D
		mov	eax, [ebp+var_4C]
		and	[ebp+var_30], 0
		mov	ecx, [ebp+var_58]
		shl	eax, 4
		lea	eax, [ecx+eax+4]

loc_40677E:				; CODE XREF: sub_405F82+8BFj
		mov	[ebp+var_58], eax
		mov	[ebp+dwBytes], 3
		jmp	loc_40685B
; ---------------------------------------------------------------------------

loc_40678D:				; CODE XREF: sub_405F82+7E9j
		mov	eax, [ebp+var_58]
		mov	[ebp+var_84], 13h
		lea	esi, [eax+2]

loc_40679D:				; CODE XREF: sub_405F82+1AAj
					; sub_405F82+243j ...
		mov	[ebp+var_54], esi

loc_4067A0:				; CODE XREF: sub_405F82+42j
					; DATA XREF: .text:off_4069D4o
		mov	ax, [esi]	; jumptable 00405FC4 case 4
		mov	ecx, [ebp+var_10]
		movzx	edx, ax
		shr	ecx, 0Bh
		imul	ecx, edx
		cmp	[ebp+var_C], ecx
		jnb	short loc_4067CC
		mov	[ebp+var_10], ecx
		mov	ecx, 800h
		sub	ecx, edx
		sar	ecx, 5
		add	ecx, eax
		and	[ebp+dwBytes], 0
		mov	[esi], cx
		jmp	short loc_4067E5
; ---------------------------------------------------------------------------

loc_4067CC:				; CODE XREF: sub_405F82+830j
		sub	[ebp+var_10], ecx
		sub	[ebp+var_C], ecx
		mov	cx, ax
		mov	[ebp+dwBytes], 1
		shr	cx, 5
		sub	eax, ecx
		mov	[esi], ax

loc_4067E5:				; CODE XREF: sub_405F82+848j
		cmp	[ebp+var_10], 1000000h
		jnb	short loc_406813

loc_4067EE:				; CODE XREF: sub_405F82+42j
					; DATA XREF: .text:off_4069D4o
		cmp	[ebp+var_6C], 0	; jumptable 00405FC4 case 5
		jz	loc_4069A1
		mov	ecx, [ebp+var_70]
		mov	eax, [ebp+var_C]
		shl	[ebp+var_10], 8
		movzx	ecx, byte ptr [ecx]
		dec	[ebp+var_6C]
		shl	eax, 8
		or	eax, ecx
		inc	[ebp+var_70]
		mov	[ebp+var_C], eax

loc_406813:				; CODE XREF: sub_405F82+86Aj
		mov	eax, [ebp+var_84]

loc_406819:				; CODE XREF: sub_405F82+98Ej
					; sub_405F82+999j
		mov	[ebp+var_88], eax
		jmp	loc_405FB5
; ---------------------------------------------------------------------------

loc_406824:				; CODE XREF: sub_405F82+42j
					; DATA XREF: .text:off_4069D4o
		cmp	[ebp+dwBytes], 0 ; jumptable 00405FC4 case 19
		jnz	short loc_406846
		mov	eax, [ebp+var_4C]
		mov	ecx, [ebp+var_58]
		shl	eax, 4
		mov	[ebp+var_30], 8
		lea	eax, [ecx+eax+104h]
		jmp	loc_40677E
; ---------------------------------------------------------------------------

loc_406846:				; CODE XREF: sub_405F82+8A6j
		add	[ebp+var_58], 204h
		mov	[ebp+var_30], 10h
		mov	[ebp+dwBytes], 8

loc_40685B:				; CODE XREF: sub_405F82+806j
		mov	[ebp+var_7C], 14h

loc_406862:				; CODE XREF: sub_405F82+42j
					; sub_405F82+60Dj
					; DATA XREF: ...
		mov	eax, [ebp+dwBytes] ; jumptable 00405FC4	case 23
		mov	[ebp+var_50], 1
		mov	[ebp+var_48], eax
		jmp	short loc_406899
; ---------------------------------------------------------------------------

loc_406871:				; CODE XREF: sub_405F82+42j
					; sub_405F82+976j
					; DATA XREF: ...
		cmp	[ebp+var_6C], 0	; jumptable 00405FC4 case 24
		jz	loc_4069AD
		mov	ecx, [ebp+var_70]
		mov	eax, [ebp+var_C]
		shl	[ebp+var_10], 8
		movzx	ecx, byte ptr [ecx]
		dec	[ebp+var_6C]
		shl	eax, 8
		or	eax, ecx
		inc	[ebp+var_70]
		mov	[ebp+var_C], eax

loc_406896:				; CODE XREF: sub_405F82+974j
		dec	[ebp+var_48]

loc_406899:				; CODE XREF: sub_405F82+8EDj
		cmp	[ebp+var_48], 0
		jle	short loc_4068FD
		mov	eax, [ebp+var_50]
		mov	ecx, [ebp+var_10]
		shr	ecx, 0Bh
		lea	edx, [eax+eax]
		mov	eax, [ebp+var_58]
		lea	esi, [edx+eax]
		mov	[ebp+var_54], esi
		mov	ax, [esi]
		movzx	edi, ax
		imul	ecx, edi
		cmp	[ebp+var_C], ecx
		jnb	short loc_4068D9
		mov	[ebp+var_10], ecx
		mov	ecx, 800h
		sub	ecx, edi
		sar	ecx, 5
		add	ecx, eax
		shl	[ebp+var_50], 1
		mov	[esi], cx
		jmp	short loc_4068EF
; ---------------------------------------------------------------------------

loc_4068D9:				; CODE XREF: sub_405F82+93Ej
		sub	[ebp+var_10], ecx
		sub	[ebp+var_C], ecx
		mov	cx, ax
		shr	cx, 5
		sub	eax, ecx
		inc	edx
		mov	[esi], ax
		mov	[ebp+var_50], edx

loc_4068EF:				; CODE XREF: sub_405F82+955j
		cmp	[ebp+var_10], 1000000h
		jnb	short loc_406896
		jmp	loc_406871	; jumptable 00405FC4 case 24
; ---------------------------------------------------------------------------

loc_4068FD:				; CODE XREF: sub_405F82+91Bj
		mov	ecx, [ebp+dwBytes]
		mov	ebx, [ebp+var_50]
		xor	eax, eax
		inc	eax
		shl	eax, cl
		sub	ebx, eax
		mov	eax, [ebp+var_7C]
		mov	[ebp+var_44], ebx
		jmp	loc_406819
; ---------------------------------------------------------------------------

loc_406915:				; CODE XREF: sub_405F82+42j
					; DATA XREF: .text:off_4069D4o
		add	[ebp+var_30], ebx ; jumptable 00405FC4 case 20
		mov	eax, [ebp+var_80]
		jmp	loc_406819
; ---------------------------------------------------------------------------

loc_406920:				; CODE XREF: sub_405F82+F2j
		mov	[ebp+var_88], 1
		jmp	loc_4069B7
; ---------------------------------------------------------------------------

loc_40692F:				; CODE XREF: sub_405F82+162j
		mov	[ebp+var_88], 3
		jmp	short loc_4069B7
; ---------------------------------------------------------------------------

loc_40693B:				; CODE XREF: sub_405F82+24Cj
		mov	[ebp+var_88], 0Dh
		jmp	short loc_4069B7
; ---------------------------------------------------------------------------

loc_406947:				; CODE XREF: sub_405F82+305j
		mov	[ebp+var_88], 0Eh
		jmp	short loc_4069B7
; ---------------------------------------------------------------------------

loc_406953:				; CODE XREF: sub_405F82+3C9j
		mov	[ebp+var_88], 0Fh
		jmp	short loc_4069B7
; ---------------------------------------------------------------------------

loc_40695F:				; CODE XREF: sub_405F82+398j
		mov	[ebp+var_88], 1Ah
		jmp	short loc_4069B7
; ---------------------------------------------------------------------------

loc_40696B:				; CODE XREF: sub_405F82+523j
		mov	[ebp+var_88], 1Bh
		jmp	short loc_4069B7
; ---------------------------------------------------------------------------

loc_406977:				; CODE XREF: sub_405F82+657j
		mov	[ebp+var_88], 0Ch
		jmp	short loc_4069B7
; ---------------------------------------------------------------------------

loc_406983:				; CODE XREF: sub_405F82+6DAj
		mov	[ebp+var_88], 10h
		jmp	short loc_4069B7
; ---------------------------------------------------------------------------

loc_40698F:				; CODE XREF: sub_405F82+783j
		or	[ebp+var_30], 0FFFFFFFFh
		jmp	short loc_4069B7
; ---------------------------------------------------------------------------

loc_406995:				; CODE XREF: sub_405F82+7A0j
		mov	[ebp+var_88], 1Ch
		jmp	short loc_4069B7
; ---------------------------------------------------------------------------

loc_4069A1:				; CODE XREF: sub_405F82+870j
		mov	[ebp+var_88], 5
		jmp	short loc_4069B7
; ---------------------------------------------------------------------------

loc_4069AD:				; CODE XREF: sub_405F82+8F3j
		mov	[ebp+var_88], 18h

loc_4069B7:				; CODE XREF: sub_405F82+4Dj
					; sub_405F82+9A8j ...
		mov	edi, [ebp+var_90]
		push	22h
		pop	ecx
		lea	esi, [ebp+var_88]
		rep movsd
		xor	eax, eax
		jmp	short loc_4069CF
; ---------------------------------------------------------------------------

loc_4069CC:				; CODE XREF: sub_405F82+3Cj
					; sub_405F82+60j ...
		or	eax, 0FFFFFFFFh	; jumptable 00405FC4 default case

loc_4069CF:				; CODE XREF: sub_405F82+28j
					; sub_405F82+A48j
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn
sub_405F82	endp

; ---------------------------------------------------------------------------
off_4069D4	dd offset loc_405FCB	; DATA XREF: sub_405F82+42r
		dd offset loc_406070	; jump table for switch	statement
		dd offset loc_40610B
		dd offset loc_4060E0
		dd offset loc_4067A0
		dd offset loc_4067EE
		dd offset loc_406131
		dd offset loc_4063D0
		dd offset loc_40643A
		dd offset loc_40647D
		dd offset loc_4064EE
		dd offset loc_406515
		dd offset loc_4065D5
		dd offset loc_4061CA
		dd offset loc_406283
		dd offset loc_406347
		dd offset loc_406658
		dd offset loc_406428
		dd offset loc_406767
		dd offset loc_406824
		dd offset loc_406915
		dd offset loc_40654F
		dd offset loc_406566
		dd offset loc_406862
		dd offset loc_406871
		dd offset loc_406594
		dd offset loc_406316
		dd offset loc_4064A1
		dd offset loc_40671E
; [00000006 BYTES: COLLAPSED FUNCTION VerQueryValueA. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION GetFileVersionInfoA. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION GetFileVersionInfoSizeA. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 200h
		dd 100h	dup(?)
_text		ends

; Section 2. (virtual address 00007000)
; Virtual size			: 00001190 (   4496.)
; Section size in file		: 00001200 (   4608.)
; Offset to raw	data for section: 00006000
; Flags	40000040: Data Readable
; Alignment	: default
;
; Imports from ADVAPI32.dll
;
; ===========================================================================

; Segment type:	Externs
; _idata
; LSTATUS __stdcall RegQueryValueExA(HKEY hKey,	LPCSTR lpValueName, LPDWORD lpReserved,	LPDWORD	lpType,	LPBYTE lpData, LPDWORD lpcbData)
		extrn RegQueryValueExA:dword ; CODE XREF: sub_401434+FABp
					; sub_405A4D+4Ap
					; DATA XREF: ...
; LSTATUS __stdcall RegSetValueExA(HKEY	hKey, LPCSTR lpValueName, DWORD	Reserved, DWORD	dwType,	const BYTE *lpData, DWORD cbData)
		extrn RegSetValueExA:dword ; CODE XREF:	sub_401434+F66p
					; DATA XREF: sub_401434+F66r
; LSTATUS __stdcall RegEnumKeyA(HKEY hKey, DWORD dwIndex, LPSTR	lpName,	DWORD cchName)
		extrn RegEnumKeyA:dword	; CODE XREF: sub_401434+1021p
					; sub_402A36+5Dp
					; DATA XREF: ...
; LSTATUS __stdcall RegEnumValueA(HKEY hKey, DWORD dwIndex, LPSTR lpValueName, LPDWORD lpcchValueName, LPDWORD lpReserved, LPDWORD lpType, LPBYTE lpData, LPDWORD lpcbData)
		extrn RegEnumValueA:dword ; CODE XREF: sub_401434+1034p
					; DATA XREF: sub_401434+1034r
; LSTATUS __stdcall RegOpenKeyExA(HKEY hKey, LPCSTR lpSubKey, DWORD ulOptions, REGSAM samDesired, PHKEY	phkResult)
		extrn RegOpenKeyExA:dword ; CODE XREF: sub_402A36+21p
					; sub_402B00+28p ...
; LSTATUS __stdcall RegDeleteKeyA(HKEY hKey, LPCSTR lpSubKey)
		extrn RegDeleteKeyA:dword ; CODE XREF: sub_402A36+A9p
					; DATA XREF: sub_402A36+A9r
; LSTATUS __stdcall RegDeleteValueA(HKEY hKey, LPCSTR lpValueName)
		extrn RegDeleteValueA:dword ; CODE XREF: sub_401434+E92p
					; DATA XREF: sub_401434+E92r
; LSTATUS __stdcall RegCloseKey(HKEY hKey)
		extrn RegCloseKey:dword	; CODE XREF: sub_401434+E9Bp
					; sub_401434:loc_40247Dp ...
; LSTATUS __stdcall RegCreateKeyExA(HKEY hKey, LPCSTR lpSubKey,	DWORD Reserved,	LPSTR lpClass, DWORD dwOptions,	REGSAM samDesired, const LPSECURITY_ATTRIBUTES lpSecurityAttributes, PHKEY phkResult, LPDWORD lpdwDisposition)
		extrn RegCreateKeyExA:dword ; CODE XREF: sub_401434+F0Dp
					; DATA XREF: sub_401434+F0Dr

;
; Imports from COMCTL32.dll
;
; int __stdcall	ImageList_AddMasked(HIMAGELIST himl, HBITMAP hbmImage, COLORREF	crMask)
		extrn ImageList_AddMasked:dword	; CODE XREF: sub_404853+C5p
					; DATA XREF: sub_404853+C5r ...
; BOOL __stdcall ImageList_Destroy(HIMAGELIST himl)
		extrn ImageList_Destroy:dword ;	CODE XREF: sub_404853+432p
					; DATA XREF: sub_404853+432r
; void __stdcall InitCommonControls()
		extrn InitCommonControls:dword ; CODE XREF: start+1Fp
					; DATA XREF: start+1Fr
; HIMAGELIST __stdcall ImageList_Create(int cx,	int cy,	UINT flags, int	cInitial, int cGrow)
		extrn ImageList_Create:dword ; CODE XREF: sub_404853+B1p
					; DATA XREF: sub_404853+B1r

;
; Imports from GDI32.dll
;
; COLORREF __stdcall SetBkColor(HDC hdc, COLORREF color)
		extrn SetBkColor:dword	; CODE XREF: sub_403F7F+74p
					; DATA XREF: sub_403F7F+74r ...
; int __stdcall	GetDeviceCaps(HDC hdc, int index)
		extrn GetDeviceCaps:dword ; CODE XREF: sub_401434+8F5p
					; DATA XREF: sub_401434+8F5r
; BOOL __stdcall DeleteObject(HGDIOBJ ho)
		extrn DeleteObject:dword ; CODE	XREF: sub_401000+EDp
					; sub_401000+165p ...
; HBRUSH __stdcall CreateBrushIndirect(const LOGBRUSH *plbrush)
		extrn CreateBrushIndirect:dword	; CODE XREF: sub_401000+CFp
					; sub_403F7F+98p
					; DATA XREF: ...
; HFONT	__stdcall CreateFontIndirectA(const LOGFONTA *lplf)
		extrn CreateFontIndirectA:dword	; CODE XREF: sub_401000+105p
					; sub_401434+956p
					; DATA XREF: ...
; int __stdcall	SetBkMode(HDC hdc, int mode)
		extrn SetBkMode:dword	; CODE XREF: sub_401000+126p
					; sub_403F7F+51p
					; DATA XREF: ...
; COLORREF __stdcall SetTextColor(HDC hdc, COLORREF color)
		extrn SetTextColor:dword ; CODE	XREF: sub_401000+130p
					; sub_403F7F+45p
					; DATA XREF: ...
; HGDIOBJ __stdcall SelectObject(HDC hdc, HGDIOBJ h)
		extrn SelectObject:dword ; CODE	XREF: sub_401000+140p
					; sub_401000+160p
					; DATA XREF: ...

;
; Imports from KERNEL32.dll
;
; LONG __stdcall CompareFileTime(const FILETIME	*lpFileTime1, const FILETIME *lpFileTime2)
		extrn CompareFileTime:dword ; CODE XREF: sub_401434+369p
					; DATA XREF: sub_401434+369r ...
; DWORD	__stdcall SearchPathA(LPCSTR lpPath, LPCSTR lpFileName,	LPCSTR lpExtension, DWORD nBufferLength, LPSTR lpBuffer, LPSTR *lpFilePart)
		extrn SearchPathA:dword	; CODE XREF: sub_401434+2DAp
					; DATA XREF: sub_401434+2DAr
; DWORD	__stdcall GetShortPathNameA(LPCSTR lpszLongPath, LPSTR lpszShortPath, DWORD cchBuffer)
		extrn GetShortPathNameA:dword ;	CODE XREF: sub_401434+2BBp
					; sub_4058B4+56p ...
; DWORD	__stdcall GetFullPathNameA(LPCSTR lpFileName, DWORD nBufferLength, LPSTR lpBuffer, LPSTR *lpFilePart)
		extrn GetFullPathNameA:dword ; CODE XREF: sub_401434+275p
					; DATA XREF: sub_401434+275r
; BOOL __stdcall MoveFileA(LPCSTR lpExistingFileName, LPCSTR lpNewFileName)
		extrn MoveFileA:dword	; CODE XREF: sub_401434+22Cp
					; DATA XREF: sub_401434+22Cr
; BOOL __stdcall SetCurrentDirectoryA(LPCSTR lpPathName)
		extrn SetCurrentDirectoryA:dword ; CODE	XREF: sub_401434+1EEp
					; start+23Cp
					; DATA XREF: ...
; DWORD	__stdcall GetFileAttributesA(LPCSTR lpFileName)
		extrn GetFileAttributesA:dword ; CODE XREF: sub_401434+1BFp
					; sub_4036AF+104p ...
; DWORD	__stdcall GetLastError()
		extrn GetLastError:dword ; CODE	XREF: sub_401434+1B1p
					; DATA XREF: sub_401434+1B1r
; BOOL __stdcall CreateDirectoryA(LPCSTR lpPathName, LPSECURITY_ATTRIBUTES lpSecurityAttributes)
		extrn CreateDirectoryA:dword ; CODE XREF: sub_401434+1A7p
					; sub_403208+21p ...
; BOOL __stdcall SetFileAttributesA(LPCSTR lpFileName, DWORD dwFileAttributes)
		extrn SetFileAttributesA:dword ; CODE XREF: sub_401434+16Cp
					; sub_40581E+16p
					; DATA XREF: ...
; void __stdcall Sleep(DWORD dwMilliseconds)
		extrn Sleep:dword	; CODE XREF: sub_401434+B1p
					; DATA XREF: sub_401434+B1r
; DWORD	__stdcall GetTickCount()
		extrn GetTickCount:dword ; CODE	XREF: sub_402BD3:loc_402C09p
					; sub_402C72+14p ...
; HANDLE __stdcall CreateFileA(LPCSTR lpFileName, DWORD	dwDesiredAccess, DWORD dwShareMode, LPSECURITY_ATTRIBUTES lpSecurityAttributes,	DWORD dwCreationDisposition, DWORD dwFlagsAndAttributes, HANDLE	hTemplateFile)
		extrn CreateFileA:dword	; CODE XREF: sub_402C72+1F9p
					; sub_40583D+26p
					; DATA XREF: ...
; DWORD	__stdcall GetFileSize(HANDLE hFile, LPDWORD lpFileSizeHigh)
		extrn GetFileSize:dword	; CODE XREF: sub_402C72+79p
					; sub_4058B4+CCp
					; DATA XREF: ...
; DWORD	__stdcall GetModuleFileNameA(HMODULE hModule, LPSTR lpFilename,	DWORD nSize)
		extrn GetModuleFileNameA:dword ; CODE XREF: sub_402C72+30p
					; DATA XREF: sub_402C72+30r
; HANDLE __stdcall GetCurrentProcess()
		extrn GetCurrentProcess:dword ;	CODE XREF: start+31Cp
					; DATA XREF: start+31Cr
; BOOL __stdcall CopyFileA(LPCSTR lpExistingFileName, LPCSTR lpNewFileName, BOOL bFailIfExists)
		extrn CopyFileA:dword	; CODE XREF: start+29Ap
					; DATA XREF: start+29Ar
; void __stdcall ExitProcess(UINT uExitCode)
		extrn ExitProcess:dword	; CODE XREF: start+211p start+37Bp
					; DATA XREF: ...
; BOOL __stdcall SetFileTime(HANDLE hFile, const FILETIME *lpCreationTime, const FILETIME *lpLastAccessTime, const FILETIME *lpLastWriteTime)
		extrn SetFileTime:dword	; CODE XREF: sub_401434+462p
					; DATA XREF: sub_401434+462r
; DWORD	__stdcall GetTempPathA(DWORD nBufferLength, LPSTR lpBuffer)
		extrn GetTempPathA:dword ; CODE	XREF: start+13Fp
					; DATA XREF: start+13Fr
; LPSTR	__stdcall GetCommandLineA()
		extrn GetCommandLineA:dword ; CODE XREF: start+6Ep
					; DATA XREF: start+6Er
; UINT __stdcall SetErrorMode(UINT uMode)
		extrn SetErrorMode:dword ; CODE	XREF: start+2Ap
					; DATA XREF: start+2Ar
; HMODULE __stdcall LoadLibraryA(LPCSTR	lpLibFileName)
		extrn LoadLibraryA:dword ; CODE	XREF: sub_4036AF+22Cp
					; sub_4036AF+237p ...
; LPSTR	__stdcall lstrcpynA(LPSTR lpString1, LPCSTR lpString2, int iMaxLength)
		extrn lstrcpynA:dword	; CODE XREF: sub_40402C+15p
					; sub_405B66+Dp
					; DATA XREF: ...
; BOOL __stdcall GetDiskFreeSpaceA(LPCSTR lpRootPathName, LPDWORD lpSectorsPerCluster, LPDWORD lpBytesPerSector, LPDWORD lpNumberOfFreeClusters, LPDWORD lpTotalNumberOfClusters)
		extrn GetDiskFreeSpaceA:dword ;	CODE XREF: sub_404356+240p
					; DATA XREF: sub_404356+240r
; BOOL __stdcall GlobalUnlock(HGLOBAL hMem)
		extrn GlobalUnlock:dword ; CODE	XREF: sub_405042+366p
					; DATA XREF: sub_405042+366r
; LPVOID __stdcall GlobalLock(HGLOBAL hMem)
		extrn GlobalLock:dword	; CODE XREF: sub_405042+33Ap
					; DATA XREF: sub_405042+33Ar
; HANDLE __stdcall CreateThread(LPSECURITY_ATTRIBUTES lpThreadAttributes, SIZE_T dwStackSize, LPTHREAD_START_ROUTINE lpStartAddress, LPVOID lpParameter, DWORD dwCreationFlags,	LPDWORD	lpThreadId)
		extrn CreateThread:dword ; CODE	XREF: sub_405042+1D0p
					; DATA XREF: sub_405042+1D0r
; BOOL __stdcall CreateProcessA(LPCSTR lpApplicationName, LPSTR	lpCommandLine, LPSECURITY_ATTRIBUTES lpProcessAttributes, LPSECURITY_ATTRIBUTES	lpThreadAttributes, BOOL bInheritHandles, DWORD	dwCreationFlags, LPVOID	lpEnvironment, LPCSTR lpCurrentDirectory, LPSTARTUPINFOA lpStartupInfo,	LPPROCESS_INFORMATION lpProcessInformation)
		extrn CreateProcessA:dword ; CODE XREF:	sub_4053C6+25p
					; DATA XREF: sub_4053C6+25r
; BOOL __stdcall RemoveDirectoryA(LPCSTR lpPathName)
		extrn RemoveDirectoryA:dword ; CODE XREF: sub_40548B+19Fp
					; DATA XREF: sub_40548B+19Fr
; UINT __stdcall GetTempFileNameA(LPCSTR lpPathName, LPCSTR lpPrefixString, UINT uUnique, LPSTR	lpTempFileName)
		extrn GetTempFileNameA:dword ; CODE XREF: sub_40586C+2Dp
					; DATA XREF: sub_40586C+2Dr
; int __stdcall	lstrlenA(LPCSTR	lpString)
		extrn __imp_lstrlenA:dword ; DATA XREF:	lstrlenAr
; LPSTR	__stdcall lstrcatA(LPSTR lpString1, LPCSTR lpString2)
		extrn __imp_lstrcatA:dword ; DATA XREF:	lstrcatAr
; UINT __stdcall GetSystemDirectoryA(LPSTR lpBuffer, UINT uSize)
		extrn GetSystemDirectoryA:dword	; CODE XREF: sub_405B88+123p
					; DATA XREF: sub_405B88+123r
; DWORD	__stdcall GetVersion()
		extrn GetVersion:dword	; CODE XREF: sub_405B88+A8p
					; DATA XREF: sub_405B88+A8r
; BOOL __stdcall CloseHandle(HANDLE hObject)
		extrn CloseHandle:dword	; CODE XREF: sub_401434+46Bp
					; sub_401434:loc_401E8Ap ...
; int __stdcall	lstrcmpiA(LPCSTR lpString1, LPCSTR lpString2)
		extrn lstrcmpiA:dword	; CODE XREF: sub_401434+598p
					; start+229p ...
; int __stdcall	lstrcmpA(LPCSTR	lpString1, LPCSTR lpString2)
		extrn lstrcmpA:dword	; CODE XREF: sub_401434:loc_4019DEp
					; sub_401434+5D8p
					; DATA XREF: ...
; DWORD	__stdcall ExpandEnvironmentStringsA(LPCSTR lpSrc, LPSTR	lpDst, DWORD nSize)
		extrn ExpandEnvironmentStringsA:dword ;	CODE XREF: sub_401434+5C5p
					; DATA XREF: sub_401434+5C5r
; HGLOBAL __stdcall GlobalFree(HGLOBAL hMem)
		extrn GlobalFree:dword	; CODE XREF: sub_401434:loc_401B75p
					; sub_401434+12F1p ...
; HGLOBAL __stdcall GlobalAlloc(UINT uFlags, SIZE_T dwBytes)
		extrn GlobalAlloc:dword	; CODE XREF: sub_401434+753p
					; sub_401434+ABEp ...
; DWORD	__stdcall WaitForSingleObject(HANDLE hHandle, DWORD dwMilliseconds)
		extrn WaitForSingleObject:dword	; CODE XREF: sub_401434+A21p
					; DATA XREF: sub_401434+A0Dr
; BOOL __stdcall GetExitCodeProcess(HANDLE hProcess, LPDWORD lpExitCode)
		extrn GetExitCodeProcess:dword ; CODE XREF: sub_401434+A31p
					; DATA XREF: sub_401434+A31r
; HMODULE __stdcall GetModuleHandleA(LPCSTR lpModuleName)
		extrn GetModuleHandleA:dword ; CODE XREF: sub_401434+B48p
					; start+81p ...
; HMODULE __stdcall LoadLibraryExA(LPCSTR lpLibFileName, HANDLE	hFile, DWORD dwFlags)
		extrn LoadLibraryExA:dword ; CODE XREF:	sub_401434+B58p
					; DATA XREF: sub_401434+B58r
; FARPROC __stdcall GetProcAddress(HMODULE hModule, LPCSTR lpProcName)
		extrn GetProcAddress:dword ; CODE XREF:	sub_401434+B68p
					; sub_405E88+2Ep
					; DATA XREF: ...
; BOOL __stdcall FreeLibrary(HMODULE hLibModule)
		extrn FreeLibrary:dword	; CODE XREF: sub_401434+BD3p
					; sub_40361A+1Ap
					; DATA XREF: ...
; int __stdcall	MultiByteToWideChar(UINT CodePage, DWORD dwFlags, LPCSTR lpMultiByteStr, int cbMultiByte, LPWSTR lpWideCharStr,	int cchWideChar)
		extrn MultiByteToWideChar:dword	; CODE XREF: sub_401434+CF9p
					; DATA XREF: sub_401434+CF9r
; BOOL __stdcall WritePrivateProfileStringA(LPCSTR lpAppName, LPCSTR lpKeyName,	LPCSTR lpString, LPCSTR	lpFileName)
		extrn WritePrivateProfileStringA:dword ; CODE XREF: sub_401434+E28p
					; DATA XREF: sub_401434+E28r
; DWORD	__stdcall GetPrivateProfileStringA(LPCSTR lpAppName, LPCSTR lpKeyName, LPCSTR lpDefault, LPSTR lpReturnedString, DWORD nSize, LPCSTR lpFileName)
		extrn GetPrivateProfileStringA:dword ; CODE XREF: sub_401434+E63p
					; DATA XREF: sub_401434+E63r
; BOOL __stdcall WriteFile(HANDLE hFile, LPCVOID lpBuffer, DWORD nNumberOfBytesToWrite,	LPDWORD	lpNumberOfBytesWritten,	LPOVERLAPPED lpOverlapped)
		extrn WriteFile:dword	; CODE XREF: sub_401434+10C7p
					; sub_401434+1303p ...
; BOOL __stdcall ReadFile(HANDLE hFile,	LPVOID lpBuffer, DWORD nNumberOfBytesToRead, LPDWORD lpNumberOfBytesRead, LPOVERLAPPED lpOverlapped)
		extrn ReadFile:dword	; CODE XREF: sub_401434+111Ep
					; sub_402F18+54p ...
; int __stdcall	MulDiv(int nNumber, int	nNumerator, int	nDenominator)
		extrn MulDiv:dword	; CODE XREF: sub_401389+5Bp
					; sub_401434+904p ...
; DWORD	__stdcall SetFilePointer(HANDLE	hFile, LONG lDistanceToMove, PLONG lpDistanceToMoveHigh, DWORD dwMoveMethod)
		extrn SetFilePointer:dword ; CODE XREF:	sub_401434+1182p
					; sub_401434+11B2p ...
; BOOL __stdcall FindClose(HANDLE hFindFile)
		extrn FindClose:dword	; CODE XREF: sub_401434+11D5p
					; sub_40548B+163p ...
; BOOL __stdcall FindNextFileA(HANDLE hFindFile, LPWIN32_FIND_DATAA lpFindFileData)
		extrn FindNextFileA:dword ; CODE XREF: sub_401434+11F2p
					; sub_40548B+152p
					; DATA XREF: ...
; HANDLE __stdcall FindFirstFileA(LPCSTR lpFileName, LPWIN32_FIND_DATAA	lpFindFileData)
		extrn FindFirstFileA:dword ; CODE XREF:	sub_401434+1219p
					; sub_40548B+A0p ...
; BOOL __stdcall DeleteFileA(LPCSTR lpFileName)
		extrn DeleteFileA:dword	; CODE XREF: sub_401434+1336p
					; start+173p ...
; UINT __stdcall GetWindowsDirectoryA(LPSTR lpBuffer, UINT uSize)
		extrn GetWindowsDirectoryA:dword ; CODE	XREF: start+154p
					; sub_405B88+136p
					; DATA XREF: ...

;
; Imports from SHELL32.dll
;
; BOOL __stdcall SHGetPathFromIDListA(LPCITEMIDLIST pidl, LPSTR	pszPath)
		extrn SHGetPathFromIDListA:dword ; CODE	XREF: sub_40468B+38p
					; sub_405B88+180p
					; DATA XREF: ...
; LPITEMIDLIST __stdcall SHBrowseForFolderA(LPBROWSEINFOA lpbi)
		extrn SHBrowseForFolderA:dword ; CODE XREF: sub_404356+12Ep
					; DATA XREF: sub_404356+12Er
; DWORD_PTR __stdcall SHGetFileInfoA(LPCSTR pszPath, DWORD dwFileAttributes, SHFILEINFOA *psfi,	UINT cbFileInfo, UINT uFlags)
		extrn SHGetFileInfoA:dword ; CODE XREF:	start+59p
					; DATA XREF: start+59r
; HINSTANCE __stdcall ShellExecuteA(HWND hwnd, LPCSTR lpOperation, LPCSTR lpFile, LPCSTR lpParameters, LPCSTR lpDirectory, INT nShowCmd)
		extrn ShellExecuteA:dword ; CODE XREF: sub_401434+9D3p
					; sub_404060+20Fp
					; DATA XREF: ...
; int __stdcall	SHFileOperationA(LPSHFILEOPSTRUCTA lpFileOp)
		extrn SHFileOperationA:dword ; CODE XREF: sub_401434+DB0p
					; DATA XREF: sub_401434+DB0r
; HRESULT __stdcall SHGetSpecialFolderLocation(HWND hwnd, int csidl, LPITEMIDLIST *ppidl)
		extrn SHGetSpecialFolderLocation:dword ; CODE XREF: sub_405B88+172p
					; DATA XREF: sub_405B88+172r

;
; Imports from USER32.dll
;
; BOOL __stdcall EndDialog(HWND	hDlg, INT_PTR nResult)
		extrn EndDialog:dword	; CODE XREF: sub_403A45+477p
					; DATA XREF: sub_403A45+477r ...
; BOOL __stdcall ScreenToClient(HWND hWnd, LPPOINT lpPoint)
		extrn ScreenToClient:dword ; CODE XREF:	sub_403A45+414p
					; sub_4047D3+3Dp
					; DATA XREF: ...
; BOOL __stdcall GetWindowRect(HWND hWnd, LPRECT lpRect)
		extrn GetWindowRect:dword ; CODE XREF: sub_403A45+408p
					; sub_405042+2B2p
					; DATA XREF: ...
; BOOL __stdcall EnableMenuItem(HMENU hMenu, UINT uIDEnableItem, UINT uEnable)
		extrn EnableMenuItem:dword ; CODE XREF:	sub_403A45+2F9p
					; DATA XREF: sub_403A45+2F9r
; HMENU	__stdcall GetSystemMenu(HWND hWnd, BOOL	bRevert)
		extrn GetSystemMenu:dword ; CODE XREF: sub_403A45+2F2p
					; DATA XREF: sub_403A45+2F2r
; DWORD	__stdcall SetClassLongA(HWND hWnd, int nIndex, LONG dwNewLong)
		extrn SetClassLongA:dword ; CODE XREF: sub_403A45+197p
					; DATA XREF: sub_403A45+197r
; BOOL __stdcall IsWindowEnabled(HWND hWnd)
		extrn IsWindowEnabled:dword ; CODE XREF: sub_403A45+C5p
					; DATA XREF: sub_403A45+C5r
; BOOL __stdcall SetWindowPos(HWND hWnd, HWND hWndInsertAfter, int X, int Y, int cx, int cy, UINT uFlags)
		extrn SetWindowPos:dword ; CODE	XREF: sub_403A45+3Cp
					; sub_403A45+42Dp
					; DATA XREF: ...
; DWORD	__stdcall GetSysColor(int nIndex)
		extrn GetSysColor:dword	; CODE XREF: sub_403F7F+39p
					; sub_403F7F+64p ...
; LONG __stdcall GetWindowLongA(HWND hWnd, int nIndex)
		extrn GetWindowLongA:dword ; CODE XREF:	sub_403F7F+1Dp
					; sub_404853+237p
					; DATA XREF: ...
; HCURSOR __stdcall SetCursor(HCURSOR hCursor)
		extrn SetCursor:dword	; CODE XREF: sub_404060+1FCp
					; sub_404060+21Fp
					; DATA XREF: ...
; HCURSOR __stdcall LoadCursorA(HINSTANCE hInstance, LPCSTR lpCursorName)
		extrn LoadCursorA:dword	; CODE XREF: sub_404060+1F3p
					; sub_404060+21Cp
					; DATA XREF: ...
; BOOL __stdcall CheckDlgButton(HWND hDlg, int nIDButton, UINT uCheck)
		extrn CheckDlgButton:dword ; CODE XREF:	sub_404060+8Bp
					; DATA XREF: sub_404060+8Br
; DWORD	__stdcall GetMessagePos()
		extrn GetMessagePos:dword ; CODE XREF: sub_4047D3+23p
					; DATA XREF: sub_4047D3+23r
; HBITMAP __stdcall LoadBitmapA(HINSTANCE hInstance, LPCSTR lpBitmapName)
		extrn LoadBitmapA:dword	; CODE XREF: sub_404853+83p
					; DATA XREF: sub_404853+83r
; LRESULT __stdcall CallWindowProcA(WNDPROC lpPrevWndFunc, HWND	hWnd, UINT Msg,	WPARAM wParam, LPARAM lParam)
		extrn CallWindowProcA:dword ; CODE XREF: sub_404E54+A4p
					; DATA XREF: sub_404E54+A4r
; BOOL __stdcall IsWindowVisible(HWND hWnd)
		extrn IsWindowVisible:dword ; CODE XREF: sub_404E54+36p
					; DATA XREF: sub_404E54+36r
; BOOL __stdcall CloseClipboard()
		extrn CloseClipboard:dword ; CODE XREF:	sub_405042+377p
					; DATA XREF: sub_405042+377r
; HANDLE __stdcall SetClipboardData(UINT uFormat, HANDLE hMem)
		extrn SetClipboardData:dword ; CODE XREF: sub_405042+371p
					; DATA XREF: sub_405042+371r
; BOOL __stdcall EmptyClipboard()
		extrn EmptyClipboard:dword ; CODE XREF:	sub_405042+327p
					; DATA XREF: sub_405042+327r
; ATOM __stdcall RegisterClassA(const WNDCLASSA	*lpWndClass)
		extrn RegisterClassA:dword ; CODE XREF:	sub_4036AF+194p
					; sub_4036AF+25Dp
					; DATA XREF: ...
; BOOL __stdcall TrackPopupMenu(HMENU hMenu, UINT uFlags, int x, int y,	int nReserved, HWND hWnd, const	RECT *prcRect)
		extrn TrackPopupMenu:dword ; CODE XREF:	sub_405042+2D6p
					; DATA XREF: sub_405042+2D6r
; BOOL __stdcall AppendMenuA(HMENU hMenu, UINT uFlags, UINT_PTR	uIDNewItem, LPCSTR lpNewItem)
		extrn AppendMenuA:dword	; CODE XREF: sub_405042+29Fp
					; DATA XREF: sub_405042+29Fr
; HMENU	__stdcall CreatePopupMenu()
		extrn CreatePopupMenu:dword ; CODE XREF: sub_405042+28Ap
					; DATA XREF: sub_405042+28Ar
; int __stdcall	GetSystemMetrics(int nIndex)
		extrn GetSystemMetrics:dword ; CODE XREF: sub_405042+B3p
					; DATA XREF: sub_405042+B3r
; BOOL __stdcall SetDlgItemTextA(HWND hDlg, int	nIDDlgItem, LPCSTR lpString)
		extrn __imp_SetDlgItemTextA:dword ; DATA XREF: SetDlgItemTextAr
; UINT __stdcall GetDlgItemTextA(HWND hDlg, int	nIDDlgItem, LPSTR lpString, int	cchMax)
		extrn GetDlgItemTextA:dword ; CODE XREF: sub_40540B+13p
					; DATA XREF: sub_40540B+13r
; int __stdcall	MessageBoxIndirectA(const MSGBOXPARAMSA	*lpmbp)
		extrn MessageBoxIndirectA:dword	; CODE XREF: sub_405427+5Bp
					; DATA XREF: sub_405427+5Br
; LPSTR	__stdcall CharPrevA(LPCSTR lpszStart, LPCSTR lpszCurrent)
		extrn CharPrevA:dword	; CODE XREF: sub_405659+Fp
					; sub_4056A0+14p ...
; LRESULT __stdcall DispatchMessageA(const MSG *lpMsg)
		extrn DispatchMessageA:dword ; CODE XREF: sub_405EC1+17p
					; DATA XREF: sub_405EC1+17r
; BOOL __stdcall PeekMessageA(LPMSG lpMsg, HWND	hWnd, UINT wMsgFilterMin, UINT wMsgFilterMax, UINT wRemoveMsg)
		extrn PeekMessageA:dword ; CODE	XREF: sub_405EC1+27p
					; DATA XREF: sub_405EC1+Br
; BOOL __stdcall DestroyWindow(HWND hWnd)
		extrn DestroyWindow:dword ; CODE XREF: sub_402BD3+18p
					; sub_403A45+6Dp ...
; HWND __stdcall CreateDialogParamA(HINSTANCE hInstance, LPCSTR	lpTemplateName,	HWND hWndParent, DLGPROC lpDialogFunc, LPARAM dwInitParam)
		extrn CreateDialogParamA:dword ; CODE XREF: sub_402BD3+88p
					; sub_403A45+3D8p
					; DATA XREF: ...
; UINT_PTR __stdcall SetTimer(HWND hWnd, UINT_PTR nIDEvent, UINT uElapse, TIMERPROC lpTimerFunc)
		extrn SetTimer:dword	; CODE XREF: DialogFunc+1Bp
					; DATA XREF: DialogFunc+1Br
; BOOL __stdcall SetWindowTextA(HWND hWnd, LPCSTR lpString)
		extrn SetWindowTextA:dword ; CODE XREF:	DialogFunc+5Fp
					; sub_403978+98p ...
; void __stdcall PostQuitMessage(int nExitCode)
		extrn PostQuitMessage:dword ; CODE XREF: sub_401434+78p
					; DATA XREF: sub_401434+78r
; BOOL __stdcall SetForegroundWindow(HWND hWnd)
		extrn SetForegroundWindow:dword	; CODE XREF: sub_401434+BFp
					; DATA XREF: sub_401434+BFr
; int wsprintfA(LPSTR, LPCSTR, ...)
		extrn wsprintfA:dword	; CODE XREF: sub_401434+6C4p
					; DialogFunc+4Fp ...
; LRESULT __stdcall SendMessageTimeoutA(HWND hWnd, UINT	Msg, WPARAM wParam, LPARAM lParam, UINT	fuFlags, UINT uTimeout,	PDWORD_PTR lpdwResult)
		extrn SendMessageTimeoutA:dword	; CODE XREF: sub_401434+7D9p
					; DATA XREF: sub_401434+7D9r
; HWND __stdcall FindWindowExA(HWND hWndParent,	HWND hWndChildAfter, LPCSTR lpszClass, LPCSTR lpszWindow)
		extrn FindWindowExA:dword ; CODE XREF: sub_401434+81Fp
					; DATA XREF: sub_401434+81Fr
; BOOL __stdcall SystemParametersInfoA(UINT uiAction, UINT uiParam, PVOID pvParam, UINT	fWinIni)
		extrn SystemParametersInfoA:dword ; CODE XREF: sub_4036AF+1ACp
					; DATA XREF: sub_4036AF+1ACr
; HWND __stdcall CreateWindowExA(DWORD dwExStyle, LPCSTR lpClassName, LPCSTR lpWindowName, DWORD dwStyle, int X, int Y,	int nWidth, int	nHeight, HWND hWndParent, HMENU	hMenu, HINSTANCE hInstance, LPVOID lpParam)
		extrn CreateWindowExA:dword ; CODE XREF: sub_4036AF+1E5p
					; DATA XREF: sub_4036AF+1E5r
; BOOL __stdcall GetClassInfoA(HINSTANCE hInstance, LPCSTR lpClassName,	LPWNDCLASSA lpWndClass)
		extrn GetClassInfoA:dword ; CODE XREF: sub_4036AF+247p
					; sub_4036AF+254p
					; DATA XREF: ...
; INT_PTR __stdcall DialogBoxParamA(HINSTANCE hInstance, LPCSTR	lpTemplateName,	HWND hWndParent, DLGPROC lpDialogFunc, LPARAM dwInitParam)
		extrn DialogBoxParamA:dword ; CODE XREF: sub_4036AF+27Cp
					; DATA XREF: sub_4036AF+27Cr
; LPSTR	__stdcall CharNextA(LPCSTR lpsz)
		extrn CharNextA:dword	; CODE XREF: start+ACp	sub_405684+Dp ...
; BOOL __stdcall OpenClipboard(HWND hWndNewOwner)
		extrn OpenClipboard:dword ; CODE XREF: sub_405042+321p
					; DATA XREF: sub_405042+321r
; BOOL __stdcall ExitWindowsEx(UINT uFlags, DWORD dwReason)
		extrn ExitWindowsEx:dword ; CODE XREF: start+358p
					; DATA XREF: start+358r
; BOOL __stdcall IsWindow(HWND hWnd)
		extrn IsWindow:dword	; CODE XREF: sub_401434+840p
					; DATA XREF: sub_401434+840r
; HWND __stdcall GetDlgItem(HWND hDlg, int nIDDlgItem)
		extrn GetDlgItem:dword	; CODE XREF: sub_401434+866p
					; sub_401434+891p ...
; LONG __stdcall SetWindowLongA(HWND hWnd, int nIndex, LONG dwNewLong)
		extrn SetWindowLongA:dword ; CODE XREF:	sub_401434+882p
					; sub_403A45+89p ...
; HANDLE __stdcall LoadImageA(HINSTANCE	hInst, LPCSTR name, UINT type, int cx, int cy, UINT fuLoad)
		extrn LoadImageA:dword	; CODE XREF: sub_401434+8BFp
					; sub_4036AF+14Dp
					; DATA XREF: ...
; HDC __stdcall	GetDC(HWND hWnd)
		extrn GetDC:dword	; CODE XREF: sub_401434+8EEp
					; DATA XREF: sub_401434+8EEr
; BOOL __stdcall EnableWindow(HWND hWnd, BOOL bEnable)
		extrn EnableWindow:dword ; CODE	XREF: sub_401434:loc_401DB6p
					; sub_403A45+2C1p ...
; BOOL __stdcall InvalidateRect(HWND hWnd, const RECT *lpRect, BOOL bErase)
		extrn InvalidateRect:dword ; CODE XREF:	sub_401434+1451p
					; sub_404853+58Ap
					; DATA XREF: ...
; LRESULT __stdcall SendMessageA(HWND hWnd, UINT Msg, WPARAM wParam, LPARAM lParam)
		extrn SendMessageA:dword ; CODE	XREF: sub_401389+6Bp
					; sub_401434+7F1p ...
; LRESULT __stdcall DefWindowProcA(HWND	hWnd, UINT Msg,	WPARAM wParam, LPARAM lParam)
		extrn DefWindowProcA:dword ; CODE XREF:	sub_401000+2Cp
					; DATA XREF: sub_401000+2Cr
; HDC __stdcall	BeginPaint(HWND	hWnd, LPPAINTSTRUCT lpPaint)
		extrn BeginPaint:dword	; CODE XREF: sub_401000+47p
					; DATA XREF: sub_401000+47r
; BOOL __stdcall GetClientRect(HWND hWnd, LPRECT lpRect)
		extrn GetClientRect:dword ; CODE XREF: sub_401000+5Bp
					; sub_401434+89Ep ...
; int __stdcall	FillRect(HDC hDC, const	RECT *lprc, HBRUSH hbr)
		extrn FillRect:dword	; CODE XREF: sub_401000+E4p
					; DATA XREF: sub_401000+E4r
; int __stdcall	DrawTextA(HDC hdc, LPCSTR lpchText, int	cchText, LPRECT	lprc, UINT format)
		extrn DrawTextA:dword	; CODE XREF: sub_401000+156p
					; DATA XREF: sub_401000+156r
; BOOL __stdcall EndPaint(HWND hWnd, const PAINTSTRUCT *lpPaint)
		extrn EndPaint:dword	; CODE XREF: sub_401000+16Ep
					; DATA XREF: sub_401000+16Er
; BOOL __stdcall ShowWindow(HWND hWnd, int nCmdShow)
		extrn ShowWindow:dword	; CODE XREF: sub_401434+145p
					; sub_401434+15Ap ...

;
; Imports from VERSION.dll
;
; DWORD	__stdcall GetFileVersionInfoSizeA(LPCSTR lptstrFilename, LPDWORD lpdwHandle)
		extrn __imp_GetFileVersionInfoSizeA:dword
					; DATA XREF: GetFileVersionInfoSizeAr
					; .rdata:00407440o
; BOOL __stdcall GetFileVersionInfoA(LPCSTR lptstrFilename, DWORD dwHandle, DWORD dwLen, LPVOID	lpData)
		extrn __imp_GetFileVersionInfoA:dword ;	DATA XREF: GetFileVersionInfoAr
; BOOL __stdcall VerQueryValueA(LPCVOID	pBlock,	LPCSTR lpSubBlock, LPVOID *lplpBuffer, PUINT puLen)
		extrn __imp_VerQueryValueA:dword ; DATA	XREF: VerQueryValueAr

;
; Imports from ole32.dll
;
; void __stdcall CoTaskMemFree(LPVOID pv)
		extrn CoTaskMemFree:dword ; CODE XREF: sub_404356+139p
					; sub_405B88+18Bp
					; DATA XREF: ...
; HRESULT __stdcall OleInitialize(LPVOID pvReserved)
		extrn OleInitialize:dword ; CODE XREF: start+31p
					; StartAddress+10p
					; DATA XREF: ...
; void __stdcall OleUninitialize()
		extrn OleUninitialize:dword ; CODE XREF: start+1F1p
					; StartAddress+5Cp
					; DATA XREF: ...
; HRESULT __stdcall CoCreateInstance(const IID *const rclsid, LPUNKNOWN	pUnkOuter, DWORD dwClsContext, const IID *const	riid, LPVOID *ppv)
		extrn CoCreateInstance:dword ; CODE XREF: sub_401434+C3Fp
					; DATA XREF: sub_401434+C3Fr


; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	para public 'DATA' use32
		assume cs:_rdata
		;org 40728Ch
; CHAR aRichedit[]
aRichedit	db 'RichEdit',0         ; DATA XREF: sub_4036AF+24Eo
		align 4
; CHAR ClassName[]
ClassName	db 'RichEdit20A',0      ; DATA XREF: sub_4036AF+23Fo
; CHAR aRiched32[]
aRiched32	db 'RichEd32',0         ; DATA XREF: sub_4036AF+232o
		align 10h
; CHAR LibFileName[]
LibFileName	db 'RichEd20',0         ; DATA XREF: sub_4036AF+227o
		align 4
; CHAR a_defaultContro[]
a_defaultContro	db '.DEFAULT\Control Panel\International',0 ; DATA XREF: sub_4036AF+5Co
		align 4
; CHAR SubKey[]
SubKey		db 'Control Panel\Desktop\ResourceLocale',0 ; DATA XREF: sub_4036AF+34o
		align 4
; CHAR aRename[]
aRename		db '[Rename]',0Dh,0Ah,0 ; DATA XREF: sub_4058B4+101o
					; sub_4058B4+113o
		align 4
; CHAR aD[]
aD		db '%d',0               ; DATA XREF: sub_405AC4+4o
		align 4
; CHAR aSoftwareMicros[]
aSoftwareMicros	db 'Software\Microsoft\Windows\CurrentVersion',0 ; DATA XREF: sub_405B88+F2o
		align 4
; CHAR aMicrosoftInter[]
aMicrosoftInter	db '\Microsoft\Internet Explorer\Quick Launch',0
					; DATA XREF: sub_405B88+1A7o
		align 4
; IID riid
riid		dd 214EEh		; Data1	; DATA XREF: sub_401434+C32o
		dw 0			; Data2
		dw 0			; Data3
		db 0C0h, 6 dup(0), 46h	; Data4
; IID rclsid
rclsid		dd 21401h		; Data1	; DATA XREF: sub_401434+C3Ao
		dw 0			; Data2
		dw 0			; Data3
		db 0C0h, 6 dup(0), 46h	; Data4
dword_407394	dd 10Bh, 0		; DATA XREF: sub_401434+C54o
		dd 0C0h, 46000000h
__IMPORT_DESCRIPTOR_KERNEL32 dd	rva off_4074B8 ; Import	Name Table
		dd 0			; Time stamp
		dd 0			; Forwarder Chain
		dd rva aKernel32_dll	; DLL Name
		dd rva CompareFileTime	; Import Address Table
__IMPORT_DESCRIPTOR_USER32 dd rva off_4075C4 ; Import Name Table
		dd 0			; Time stamp
		dd 0			; Forwarder Chain
		dd rva aUser32_dll	; DLL Name
		dd rva EndDialog	; Import Address Table
__IMPORT_DESCRIPTOR_GDI32 dd rva off_407494 ; Import Name Table
		dd 0			; Time stamp
		dd 0			; Forwarder Chain
		dd rva aGdi32_dll	; DLL Name
		dd rva SetBkColor	; Import Address Table
__IMPORT_DESCRIPTOR_SHELL32 dd rva off_4075A8 ;	Import Name Table
		dd 0			; Time stamp
		dd 0			; Forwarder Chain
		dd rva aShell32_dll	; DLL Name
		dd rva SHGetPathFromIDListA ; Import Address Table
__IMPORT_DESCRIPTOR_ADVAPI32 dd	rva off_407458 ; Import	Name Table
		dd 0			; Time stamp
		dd 0			; Forwarder Chain
		dd rva aAdvapi32_dll	; DLL Name
		dd rva RegQueryValueExA	; Import Address Table
__IMPORT_DESCRIPTOR_COMCTL32 dd	rva off_407480 ; Import	Name Table
		dd 0			; Time stamp
		dd 0			; Forwarder Chain
		dd rva aComctl32_dll	; DLL Name
		dd rva ImageList_AddMasked ; Import Address Table
__IMPORT_DESCRIPTOR_ole32 dd rva off_4076D0 ; Import Name Table
		dd 0			; Time stamp
		dd 0			; Forwarder Chain
		dd rva aOle32_dll	; DLL Name
		dd rva CoTaskMemFree	; Import Address Table
__IMPORT_DESCRIPTOR_VERSION dd rva off_4076C0 ;	Import Name Table
		dd 0			; Time stamp
		dd 0			; Forwarder Chain
		dd rva aVersion_dll	; DLL Name
		dd rva __imp_GetFileVersionInfoSizeA ; Import Address Table
		dd 5 dup(0)
;
; Import names for ADVAPI32.dll
;
off_407458	dd rva word_408020	; DATA XREF: .rdata:__IMPORT_DESCRIPTOR_ADVAPI32o
		dd rva word_408034
		dd rva word_408012
		dd rva word_408002
		dd rva word_408088
		dd rva word_408078
		dd rva word_408066
		dd rva word_408058
		dd rva word_408046
		dd 0
;
; Import names for COMCTL32.dll
;
off_407480	dd rva word_4080BA	; DATA XREF: .rdata:__IMPORT_DESCRIPTOR_COMCTL32o
		dd rva word_4080A6
		dd 80000011h
		dd rva word_4080D0
		dd 0
;
; Import names for GDI32.dll
;
off_407494	dd rva word_407F5C	; DATA XREF: .rdata:__IMPORT_DESCRIPTOR_GDI32o
		dd rva word_407F4C
		dd rva word_407F3C
		dd rva word_407F26
		dd rva word_407F10
		dd rva word_407F04
		dd rva word_407EF4
		dd rva word_407EE4
		dd 0
;
; Import names for KERNEL32.dll
;
off_4074B8	dd rva word_407882	; DATA XREF: .rdata:__IMPORT_DESCRIPTOR_KERNEL32o
		dd rva word_407894
		dd rva word_4078A2
		dd rva word_4078B6
		dd rva word_4078CA
		dd rva word_4078D6
		dd rva word_4078EE
		dd rva word_407904
		dd rva word_407914
		dd rva word_407928
		dd rva word_40793E
		dd rva word_407946
		dd rva word_407956
		dd rva word_407964
		dd rva word_407972
		dd rva word_407988
		dd rva word_40799C
		dd rva word_4079A8
		dd rva word_407874
		dd rva word_4079CE
		dd rva word_4079DE
		dd rva word_4079F0
		dd rva word_407A00
		dd rva word_407A10
		dd rva word_407A1C
		dd rva word_407A30
		dd rva word_407A40
		dd rva word_407A4E
		dd rva word_407A5E
		dd rva word_407A70
		dd rva word_407A84
		dd rva word_407A98
		dd rva word_407AA4
		dd rva word_407AB0
		dd rva word_407AC6
		dd rva word_407866
		dd rva word_40785A
		dd rva word_40784E
		dd rva word_407832
		dd rva word_407824
		dd rva word_407816
		dd rva word_407800
		dd rva word_4077EA
		dd rva word_4077D6
		dd rva word_4077C4
		dd rva word_4077B2
		dd rva word_4077A4
		dd rva word_40778E
		dd rva word_407770
		dd rva word_407754
		dd rva word_407748
		dd rva word_40773C
		dd rva word_4076E4
		dd rva word_40772A
		dd rva word_40771E
		dd rva word_40770E
		dd rva word_4076FC
		dd rva word_4076EE
		dd rva word_4079B6
		dd 0
;
; Import names for SHELL32.dll
;
off_4075A8	dd rva word_407FC0	; DATA XREF: .rdata:__IMPORT_DESCRIPTOR_SHELL32o
		dd rva word_407FAA
		dd rva word_407F98
		dd rva word_407F88
		dd rva word_407F74
		dd rva word_407FD8
		dd 0
;
; Import names for USER32.dll
;
off_4075C4	dd rva word_407CD0	; DATA XREF: .rdata:__IMPORT_DESCRIPTOR_USER32o
		dd rva word_407CDC
		dd rva word_407CEE
		dd rva word_407CFE
		dd rva word_407D10
		dd rva word_407D20
		dd rva word_407D30
		dd rva word_407D42
		dd rva word_407D52
		dd rva word_407D60
		dd rva word_407D72
		dd rva word_407D7E
		dd rva word_407D8C
		dd rva word_407D9E
		dd rva word_407DAE
		dd rva word_407DBC
		dd rva word_407DCE
		dd rva word_407DE0
		dd rva word_407DF2
		dd rva word_407E06
		dd rva word_407CBE
		dd rva word_407E28
		dd rva word_407E3A
		dd rva word_407E48
		dd rva word_407E5A
		dd rva word_407E6E
		dd rva word_407E80
		dd rva word_407E92
		dd rva word_407EA8
		dd rva word_407EB4
		dd rva word_407EC8
		dd rva word_407C46
		dd rva word_407C30
		dd rva word_407C24
		dd rva word_407C12
		dd rva word_407C00
		dd rva word_407BEA
		dd rva word_407BD0
		dd rva word_407BBA
		dd rva word_407BAA
		dd rva word_407CA6
		dd rva word_407C94
		dd rva word_407C84
		dd rva word_407C72
		dd rva word_407C66
		dd rva word_407E18
		dd rva word_407C56
		dd rva word_407B9E
		dd rva word_407B90
		dd rva word_407B7E
		dd rva word_407B70
		dd rva word_407B68
		dd rva word_407B58
		dd rva word_407B46
		dd rva word_407B36
		dd rva word_407B24
		dd rva word_407B16
		dd rva word_407B06
		dd rva word_407AFA
		dd rva word_407AEE
		dd rva word_407AE2
		dd rva word_407BDC
		dd 0
;
; Import names for VERSION.dll
;
off_4076C0	dd rva word_40816A	; DATA XREF: .rdata:__IMPORT_DESCRIPTOR_VERSIONo
		dd rva word_408154
		dd rva word_408142
		dd 0
;
; Import names for ole32.dll
;
off_4076D0	dd rva word_408128	; DATA XREF: .rdata:__IMPORT_DESCRIPTOR_ole32o
		dd rva word_408118
		dd rva word_408106
		dd rva word_4080F2
		dd 0
word_4076E4	dw 274h			; DATA XREF: .rdata:00407588o
		db 'MulDiv',0
		align 2
word_4076EE	dw 83h			; DATA XREF: .rdata:0040759Co
		db 'DeleteFileA',0
word_4076FC	dw 0D2h			; DATA XREF: .rdata:00407598o
		db 'FindFirstFileA',0
		align 2
word_40770E	dw 0DCh			; DATA XREF: .rdata:00407594o
		db 'FindNextFileA',0
word_40771E	dw 0CEh			; DATA XREF: .rdata:00407590o
		db 'FindClose',0
word_40772A	dw 31Bh			; DATA XREF: .rdata:0040758Co
		db 'SetFilePointer',0
		align 4
word_40773C	dw 2B5h			; DATA XREF: .rdata:00407584o
		db 'ReadFile',0
		align 4
word_407748	dw 3A4h			; DATA XREF: .rdata:00407580o
		db 'WriteFile',0
word_407754	dw 19Ch			; DATA XREF: .rdata:0040757Co
		db 'GetPrivateProfileStringA',0
		align 10h
word_407770	dw 3A9h			; DATA XREF: .rdata:00407578o
		db 'WritePrivateProfileStringA',0
		align 2
word_40778E	dw 275h			; DATA XREF: .rdata:00407574o
		db 'MultiByteToWideChar',0
word_4077A4	dw 0F8h			; DATA XREF: .rdata:00407570o
		db 'FreeLibrary',0
word_4077B2	dw 1A0h			; DATA XREF: .rdata:0040756Co
		db 'GetProcAddress',0
		align 4
word_4077C4	dw 253h			; DATA XREF: .rdata:00407568o
		db 'LoadLibraryExA',0
		align 2
word_4077D6	dw 17Fh			; DATA XREF: .rdata:00407564o
		db 'GetModuleHandleA',0
		align 2
word_4077EA	dw 15Ah			; DATA XREF: .rdata:00407560o
		db 'GetExitCodeProcess',0
		align 10h
word_407800	dw 390h			; DATA XREF: .rdata:0040755Co
		db 'WaitForSingleObject',0
word_407816	dw 1F8h			; DATA XREF: .rdata:00407558o
		db 'GlobalAlloc',0
word_407824	dw 1FFh			; DATA XREF: .rdata:00407554o
		db 'GlobalFree',0
		align 2
word_407832	dw 0BCh			; DATA XREF: .rdata:00407550o
		db 'ExpandEnvironmentStringsA',0
word_40784E	dw 3C0h			; DATA XREF: .rdata:0040754Co
		db 'lstrcmpA',0
		align 2
word_40785A	dw 3C3h			; DATA XREF: .rdata:00407548o
		db 'lstrcmpiA',0
word_407866	dw 34h			; DATA XREF: .rdata:00407544o
		db 'CloseHandle',0
word_407874	dw 31Fh			; DATA XREF: .rdata:00407500o
		db 'SetFileTime',0
word_407882	dw 39h			; DATA XREF: .rdata:off_4074B8o
		db 'CompareFileTime',0
word_407894	dw 2DBh			; DATA XREF: .rdata:004074BCo
		db 'SearchPathA',0
word_4078A2	dw 1B5h			; DATA XREF: .rdata:004074C0o
		db 'GetShortPathNameA',0
word_4078B6	dw 169h			; DATA XREF: .rdata:004074C4o
		db 'GetFullPathNameA',0
		align 2
word_4078CA	dw 26Eh			; DATA XREF: .rdata:004074C8o
		db 'MoveFileA',0
word_4078D6	dw 30Ah			; DATA XREF: .rdata:004074CCo
		db 'SetCurrentDirectoryA',0
		align 2
word_4078EE	dw 15Eh			; DATA XREF: .rdata:004074D0o
		db 'GetFileAttributesA',0
		align 4
word_407904	dw 171h			; DATA XREF: .rdata:004074D4o
		db 'GetLastError',0
		align 4
word_407914	dw 4Bh			; DATA XREF: .rdata:004074D8o
		db 'CreateDirectoryA',0
		align 4
word_407928	dw 319h			; DATA XREF: .rdata:004074DCo
		db 'SetFileAttributesA',0
		align 2
word_40793E	dw 356h			; DATA XREF: .rdata:004074E0o
		db 'Sleep',0
word_407946	dw 1DFh			; DATA XREF: .rdata:004074E4o
		db 'GetTickCount',0
		align 2
word_407956	dw 53h			; DATA XREF: .rdata:004074E8o
		db 'CreateFileA',0
word_407964	dw 163h			; DATA XREF: .rdata:004074ECo
		db 'GetFileSize',0
word_407972	dw 17Dh			; DATA XREF: .rdata:004074F0o
		db 'GetModuleFileNameA',0
		align 4
word_407988	dw 142h			; DATA XREF: .rdata:004074F4o
		db 'GetCurrentProcess',0
word_40799C	dw 43h			; DATA XREF: .rdata:004074F8o
		db 'CopyFileA',0
word_4079A8	dw 0B9h			; DATA XREF: .rdata:004074FCo
		db 'ExitProcess',0
word_4079B6	dw 1F3h			; DATA XREF: .rdata:004075A0o
		db 'GetWindowsDirectoryA',0
		align 2
word_4079CE	dw 1D5h			; DATA XREF: .rdata:00407504o
		db 'GetTempPathA',0
		align 2
word_4079DE	dw 110h			; DATA XREF: .rdata:00407508o
		db 'GetCommandLineA',0
word_4079F0	dw 315h			; DATA XREF: .rdata:0040750Co
		db 'SetErrorMode',0
		align 10h
word_407A00	dw 252h			; DATA XREF: .rdata:00407510o
		db 'LoadLibraryA',0
		align 10h
word_407A10	dw 3C9h			; DATA XREF: .rdata:00407514o
		db 'lstrcpynA',0
word_407A1C	dw 14Dh			; DATA XREF: .rdata:00407518o
		db 'GetDiskFreeSpaceA',0
word_407A30	dw 20Ah			; DATA XREF: .rdata:0040751Co
		db 'GlobalUnlock',0
		align 10h
word_407A40	dw 203h			; DATA XREF: .rdata:00407520o
		db 'GlobalLock',0
		align 2
word_407A4E	dw 6Fh			; DATA XREF: .rdata:00407524o
		db 'CreateThread',0
		align 2
word_407A5E	dw 66h			; DATA XREF: .rdata:00407528o
		db 'CreateProcessA',0
		align 10h
word_407A70	dw 2C4h			; DATA XREF: .rdata:0040752Co
		db 'RemoveDirectoryA',0
		align 4
word_407A84	dw 1D3h			; DATA XREF: .rdata:00407530o
		db 'GetTempFileNameA',0
		align 4
word_407A98	dw 3CCh			; DATA XREF: .rdata:00407534o
		db 'lstrlenA',0
		align 4
word_407AA4	dw 3BDh			; DATA XREF: .rdata:00407538o
		db 'lstrcatA',0
		align 10h
word_407AB0	dw 1C1h			; DATA XREF: .rdata:0040753Co
		db 'GetSystemDirectoryA',0
word_407AC6	dw 1E8h			; DATA XREF: .rdata:00407540o
		db 'GetVersion',0
		align 4
aKernel32_dll	db 'KERNEL32.dll',0     ; DATA XREF: .rdata:004073B0o
		align 2
word_407AE2	dw 0C8h			; DATA XREF: .rdata:004076B4o
		db 'EndPaint',0
		align 2
word_407AEE	dw 0BCh			; DATA XREF: .rdata:004076B0o
		db 'DrawTextA',0
word_407AFA	dw 0E2h			; DATA XREF: .rdata:004076ACo
		db 'FillRect',0
		align 2
word_407B06	dw 0FFh			; DATA XREF: .rdata:004076A8o
		db 'GetClientRect',0
word_407B16	dw 0Dh			; DATA XREF: .rdata:004076A4o
		db 'BeginPaint',0
		align 4
word_407B24	dw 8Eh			; DATA XREF: .rdata:004076A0o
		db 'DefWindowProcA',0
		align 2
word_407B36	dw 23Bh			; DATA XREF: .rdata:0040769Co
		db 'SendMessageA',0
		align 2
word_407B46	dw 193h			; DATA XREF: .rdata:00407698o
		db 'InvalidateRect',0
		align 4
word_407B58	dw 0C4h			; DATA XREF: .rdata:00407694o
		db 'EnableWindow',0
		align 4
word_407B68	dw 10Ch			; DATA XREF: .rdata:00407690o
		db 'GetDC',0
word_407B70	dw 1C0h			; DATA XREF: .rdata:0040768Co
		db 'LoadImageA',0
		align 2
word_407B7E	dw 280h			; DATA XREF: .rdata:00407688o
		db 'SetWindowLongA',0
		align 10h
word_407B90	dw 111h			; DATA XREF: .rdata:00407684o
		db 'GetDlgItem',0
		align 2
word_407B9E	dw 1ADh			; DATA XREF: .rdata:00407680o
		db 'IsWindow',0
		align 2
word_407BAA	dw 0E4h			; DATA XREF: .rdata:00407660o
		db 'FindWindowExA',0
word_407BBA	dw 23Eh			; DATA XREF: .rdata:0040765Co
		db 'SendMessageTimeoutA',0
word_407BD0	dw 2D7h			; DATA XREF: .rdata:00407658o
		db 'wsprintfA',0
word_407BDC	dw 292h			; DATA XREF: .rdata:004076B8o
		db 'ShowWindow',0
		align 2
word_407BEA	dw 257h			; DATA XREF: .rdata:00407654o
		db 'SetForegroundWindow',0
word_407C00	dw 204h			; DATA XREF: .rdata:00407650o
		db 'PostQuitMessage',0
word_407C12	dw 286h			; DATA XREF: .rdata:0040764Co
		db 'SetWindowTextA',0
		align 4
word_407C24	dw 27Ah			; DATA XREF: .rdata:00407648o
		db 'SetTimer',0
		align 10h
word_407C30	dw 55h			; DATA XREF: .rdata:00407644o
		db 'CreateDialogParamA',0
		align 2
word_407C46	dw 99h			; DATA XREF: .rdata:00407640o
		db 'DestroyWindow',0
word_407C56	dw 0E1h			; DATA XREF: .rdata:0040767Co
		db 'ExitWindowsEx',0
word_407C66	dw 2Ah			; DATA XREF: .rdata:00407674o
		db 'CharNextA',0
word_407C72	dw 9Eh			; DATA XREF: .rdata:00407670o
		db 'DialogBoxParamA',0
word_407C84	dw 0F6h			; DATA XREF: .rdata:0040766Co
		db 'GetClassInfoA',0
word_407C94	dw 60h			; DATA XREF: .rdata:00407668o
		db 'CreateWindowExA',0
word_407CA6	dw 299h			; DATA XREF: .rdata:00407664o
		db 'SystemParametersInfoA',0
word_407CBE	dw 216h			; DATA XREF: .rdata:00407614o
		db 'RegisterClassA',0
		align 10h
word_407CD0	dw 0C6h			; DATA XREF: .rdata:off_4075C4o
		db 'EndDialog',0
word_407CDC	dw 231h			; DATA XREF: .rdata:004075C8o
		db 'ScreenToClient',0
		align 2
word_407CEE	dw 174h			; DATA XREF: .rdata:004075CCo
		db 'GetWindowRect',0
word_407CFE	dw 0C2h			; DATA XREF: .rdata:004075D0o
		db 'EnableMenuItem',0
		align 10h
word_407D10	dw 15Ch			; DATA XREF: .rdata:004075D4o
		db 'GetSystemMenu',0
word_407D20	dw 247h			; DATA XREF: .rdata:004075D8o
		db 'SetClassLongA',0
word_407D30	dw 1AEh			; DATA XREF: .rdata:004075DCo
		db 'IsWindowEnabled',0
word_407D42	dw 283h			; DATA XREF: .rdata:004075E0o
		db 'SetWindowPos',0
		align 2
word_407D52	dw 15Ah			; DATA XREF: .rdata:004075E4o
		db 'GetSysColor',0
word_407D60	dw 16Eh			; DATA XREF: .rdata:004075E8o
		db 'GetWindowLongA',0
		align 2
word_407D72	dw 24Dh			; DATA XREF: .rdata:004075ECo
		db 'SetCursor',0
word_407D7E	dw 1BAh			; DATA XREF: .rdata:004075F0o
		db 'LoadCursorA',0
word_407D8C	dw 38h			; DATA XREF: .rdata:004075F4o
		db 'CheckDlgButton',0
		align 2
word_407D9E	dw 13Ch			; DATA XREF: .rdata:004075F8o
		db 'GetMessagePos',0
word_407DAE	dw 1B8h			; DATA XREF: .rdata:004075FCo
		db 'LoadBitmapA',0
word_407DBC	dw 1Bh			; DATA XREF: .rdata:00407600o
		db 'CallWindowProcA',0
word_407DCE	dw 1B1h			; DATA XREF: .rdata:00407604o
		db 'IsWindowVisible',0
word_407DE0	dw 42h			; DATA XREF: .rdata:00407608o
		db 'CloseClipboard',0
		align 2
word_407DF2	dw 24Ah			; DATA XREF: .rdata:0040760Co
		db 'SetClipboardData',0
		align 2
word_407E06	dw 0C1h			; DATA XREF: .rdata:00407610o
		db 'EmptyClipboard',0
		align 4
word_407E18	dw 1F6h			; DATA XREF: .rdata:00407678o
		db 'OpenClipboard',0
word_407E28	dw 2A4h			; DATA XREF: .rdata:00407618o
		db 'TrackPopupMenu',0
		align 2
word_407E3A	dw 8			; DATA XREF: .rdata:0040761Co
		db 'AppendMenuA',0
word_407E48	dw 5Eh			; DATA XREF: .rdata:00407620o
		db 'CreatePopupMenu',0
word_407E5A	dw 15Dh			; DATA XREF: .rdata:00407624o
		db 'GetSystemMetrics',0
		align 2
word_407E6E	dw 253h			; DATA XREF: .rdata:00407628o
		db 'SetDlgItemTextA',0
word_407E80	dw 113h			; DATA XREF: .rdata:0040762Co
		db 'GetDlgItemTextA',0
word_407E92	dw 1E2h			; DATA XREF: .rdata:00407630o
		db 'MessageBoxIndirectA',0
word_407EA8	dw 2Dh			; DATA XREF: .rdata:00407634o
		db 'CharPrevA',0
word_407EB4	dw 0A1h			; DATA XREF: .rdata:00407638o
		db 'DispatchMessageA',0
		align 4
word_407EC8	dw 200h			; DATA XREF: .rdata:0040763Co
		db 'PeekMessageA',0
		align 4
aUser32_dll	db 'USER32.dll',0       ; DATA XREF: .rdata:004073C4o
		align 4
word_407EE4	dw 20Eh			; DATA XREF: .rdata:004074B0o
		db 'SelectObject',0
		align 4
word_407EF4	dw 23Ch			; DATA XREF: .rdata:004074ACo
		db 'SetTextColor',0
		align 4
word_407F04	dw 216h			; DATA XREF: .rdata:004074A8o
		db 'SetBkMode',0
word_407F10	dw 3Ah			; DATA XREF: .rdata:004074A4o
		db 'CreateFontIndirectA',0
word_407F26	dw 29h			; DATA XREF: .rdata:004074A0o
		db 'CreateBrushIndirect',0
word_407F3C	dw 8Fh			; DATA XREF: .rdata:0040749Co
		db 'DeleteObject',0
		align 4
word_407F4C	dw 16Bh			; DATA XREF: .rdata:00407498o
		db 'GetDeviceCaps',0
word_407F5C	dw 215h			; DATA XREF: .rdata:off_407494o
		db 'SetBkColor',0
		align 2
aGdi32_dll	db 'GDI32.dll',0        ; DATA XREF: .rdata:004073D8o
word_407F74	dw 9Ah			; DATA XREF: .rdata:004075B8o
		db 'SHFileOperationA',0
		align 4
word_407F88	dw 107h			; DATA XREF: .rdata:004075B4o
		db 'ShellExecuteA',0
word_407F98	dw 0ACh			; DATA XREF: .rdata:004075B0o
		db 'SHGetFileInfoA',0
		align 2
word_407FAA	dw 79h			; DATA XREF: .rdata:004075ACo
		db 'SHBrowseForFolderA',0
		align 10h
word_407FC0	dw 0BCh			; DATA XREF: .rdata:off_4075A8o
		db 'SHGetPathFromIDListA',0
		align 4
word_407FD8	dw 0C3h			; DATA XREF: .rdata:004075BCo
		db 'SHGetSpecialFolderLocation',0
		align 2
aShell32_dll	db 'SHELL32.dll',0      ; DATA XREF: .rdata:004073ECo
word_408002	dw 1E1h			; DATA XREF: .rdata:00407464o
		db 'RegEnumValueA',0
word_408012	dw 1DDh			; DATA XREF: .rdata:00407460o
		db 'RegEnumKeyA',0
word_408020	dw 1F7h			; DATA XREF: .rdata:off_407458o
		db 'RegQueryValueExA',0
		align 4
word_408034	dw 204h			; DATA XREF: .rdata:0040745Co
		db 'RegSetValueExA',0
		align 2
word_408046	dw 1D1h			; DATA XREF: .rdata:00407478o
		db 'RegCreateKeyExA',0
word_408058	dw 1CBh			; DATA XREF: .rdata:00407474o
		db 'RegCloseKey',0
word_408066	dw 1D8h			; DATA XREF: .rdata:00407470o
		db 'RegDeleteValueA',0
word_408078	dw 1D4h			; DATA XREF: .rdata:0040746Co
		db 'RegDeleteKeyA',0
word_408088	dw 1ECh			; DATA XREF: .rdata:00407468o
		db 'RegOpenKeyExA',0
aAdvapi32_dll	db 'ADVAPI32.dll',0     ; DATA XREF: .rdata:00407400o
		align 2
word_4080A6	dw 38h			; DATA XREF: .rdata:00407484o
		db 'ImageList_Destroy',0
word_4080BA	dw 34h			; DATA XREF: .rdata:off_407480o
		db 'ImageList_AddMasked',0
word_4080D0	dw 37h			; DATA XREF: .rdata:0040748Co
		db 'ImageList_Create',0
		align 4
aComctl32_dll	db 'COMCTL32.dll',0     ; DATA XREF: .rdata:00407414o
		align 2
word_4080F2	dw 10h			; DATA XREF: .rdata:004076DCo
		db 'CoCreateInstance',0
		align 2
word_408106	dw 105h			; DATA XREF: .rdata:004076D8o
		db 'OleUninitialize',0
word_408118	dw 0EEh			; DATA XREF: .rdata:004076D4o
		db 'OleInitialize',0
word_408128	dw 65h			; DATA XREF: .rdata:off_4076D0o
		db 'CoTaskMemFree',0
aOle32_dll	db 'ole32.dll',0        ; DATA XREF: .rdata:00407428o
word_408142	dw 0Ah			; DATA XREF: .rdata:004076C8o
		db 'VerQueryValueA',0
		align 4
word_408154	dw 0			; DATA XREF: .rdata:004076C4o
		db 'GetFileVersionInfoA',0
word_40816A	dw 1			; DATA XREF: .rdata:off_4076C0o
		db 'GetFileVersionInfoSizeA',0
aVersion_dll	db 'VERSION.dll',0      ; DATA XREF: .rdata:0040743Co
		align 1000h
_rdata		ends

; Section 3. (virtual address 00009000)
; Virtual size			: 0001AF98 ( 110488.)
; Section size in file		: 00000400 (   1024.)
; Offset to raw	data for section: 00007200
; Flags	C0000040: Data Readable	Writable
; Alignment	: default
; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read/Write
_data		segment	para public 'DATA' use32
		assume cs:_data
		;org 409000h
off_409000	dd offset dword_423F20	; DATA XREF: sub_401434:loc_401FC7o
		dd offset sub_401389
		dd offset sub_405DC8
		dd offset sub_40366D
; CHAR SubBlock[2]
SubBlock	db '\',0                ; DATA XREF: sub_401434+AE8o
					; sub_40548B:loc_40550Eo ...
		align 4
; HANDLE hObject
hObject		dd 0FFFFFFFFh		; DATA XREF: sub_402C72+48w
					; sub_4031BF+11r ...
; HANDLE hFile
hFile		dd 0FFFFFFFFh		; DATA XREF: sub_402C72+202w
					; sub_402F18+21r ...
aVerifyingInsta	db 'verifying installer: %d%%',0 ; DATA XREF: DialogFunc+44o
		align 4
; CHAR aUnpackingDataD[]
aUnpackingDataD	db 'unpacking data: %d%%',0 ; DATA XREF: DialogFunc+3Do
		align 10h
; CHAR a___D[]
a___D		db '... %d%%',0         ; DATA XREF: sub_402BD3+5Eo
		align 10h
aInstallerInteg	db 'Installer integrity check has failed. Common causes include',0Ah
					; DATA XREF: sub_402C72:loc_402EC9o
		db 'incomplete download and damaged media. Contact the',0Ah
		db 'installer',27h,'s author to obtain a new copy.',0Ah
		db 0Ah
		db 'More information at:',0Ah
		db 'http://nsis.sf.net/NSIS_Error',0
		align 10h
aErrorWritingTe	db 'Error writing temporary file. Make sure your temp folder is valid'
					; DATA XREF: sub_402C72+209o start+10o
		db '.',0
		align 4
aErrorLaunching	db 'Error launching installer',0 ; DATA XREF: sub_402C72+50o
					; start+1A9o
		align 10h
aSeshutdownpriv	db 'SeShutdownPrivilege',0 ; DATA XREF: start+32Eo
; CHAR aNsu_tmp[]
aNsu_tmp	db '~nsu.tmp',0         ; DATA XREF: start:loc_403453o
		align 10h
; CHAR String2[]
String2		db '\Temp',0            ; DATA XREF: start+15Ao
		align 4
; CHAR aNsisError[]
aNsisError	db 'NSIS Error',0       ; DATA XREF: start+5Fo
		align 4
dword_4091C4	dd 0FFFFFFFFh		; DATA XREF: sub_403A45+E0r
					; sub_403A45:loc_403BF6r ...
; DLGPROC lpDialogFunc
lpDialogFunc	dd offset sub_404060	; DATA XREF: sub_403A45+3BCr
		dd offset sub_404853
		dd offset sub_404356
		dd offset sub_405042
		dd offset sub_40430F
; CHAR a_exe[]
a_exe		db '.exe',0             ; DATA XREF: sub_4036AF+F3o
		align 4
; CHAR Operation[]
Operation	db 'open',0             ; DATA XREF: sub_404060+207o
		align 4
; CHAR aU_USS[]
aU_USS		db '%u.%u%s%s',0        ; DATA XREF: sub_4046F1+78o
		align 4
; MSGBOXPARAMSA	mbp
mbp		MSGBOXPARAMSA <28h, 0, 0, 0, 0,	0, 67h,	0, 0, 0> ; DATA	XREF: sub_405427+2Eo
					; sub_405427+33w ...
off_409220	dd offset aKernel32	; DATA XREF: sub_405E88+Br
					; "KERNEL32"
off_409224	dd offset aGetdiskfreespa ; DATA XREF: sub_405E88:loc_405EAFr
					; "GetDiskFreeSpaceExA"
		dd offset aKernel32	; "KERNEL32"
		dd offset aMovefileexa	; "MoveFileExA"
		dd offset aAdvapi32	; "ADVAPI32"
		dd offset aRegdeletekeyex ; "RegDeleteKeyExA"
		dd offset aAdvapi32	; "ADVAPI32"
		dd offset aOpenprocesstok ; "OpenProcessToken"
		dd offset aAdvapi32	; "ADVAPI32"
		dd offset aLookupprivileg ; "LookupPrivilegeValueA"
		dd offset aAdvapi32	; "ADVAPI32"
		dd offset aAdjusttokenpri ; "AdjustTokenPrivileges"
		dd offset aKernel32	; "KERNEL32"
		dd offset aGetuserdefault ; "GetUserDefaultUILanguage"
		dd offset aShlwapi	; "SHLWAPI"
		dd offset aShautocomplete ; "SHAutoComplete"
		dd offset aShfolder	; "SHFOLDER"
		dd offset aShgetfolderpat ; "SHGetFolderPathA"
aShgetfolderpat	db 'SHGetFolderPathA',0 ; DATA XREF: .data:00409264o
		align 4
aShfolder	db 'SHFOLDER',0         ; DATA XREF: .data:00409260o
		align 4
aShautocomplete	db 'SHAutoComplete',0   ; DATA XREF: .data:0040925Co
		align 4
aShlwapi	db 'SHLWAPI',0          ; DATA XREF: .data:00409258o
aGetuserdefault	db 'GetUserDefaultUILanguage',0 ; DATA XREF: .data:00409254o
		align 4
aAdjusttokenpri	db 'AdjustTokenPrivileges',0 ; DATA XREF: .data:0040924Co
		align 4
aLookupprivileg	db 'LookupPrivilegeValueA',0 ; DATA XREF: .data:00409244o
		align 4
aOpenprocesstok	db 'OpenProcessToken',0 ; DATA XREF: .data:0040923Co
		align 10h
aRegdeletekeyex	db 'RegDeleteKeyExA',0  ; DATA XREF: .data:00409234o
aAdvapi32	db 'ADVAPI32',0         ; DATA XREF: .data:00409230o
					; .data:00409238o ...
		align 4
aMovefileexa	db 'MoveFileExA',0      ; DATA XREF: .data:0040922Co
aGetdiskfreespa	db 'GetDiskFreeSpaceExA',0 ; DATA XREF: .data:off_409224o
aKernel32	db 'KERNEL32',0         ; DATA XREF: .data:off_409220o
					; .data:00409228o ...
		align 4
; CHAR a_[]
a_		db '\*.*',0             ; DATA XREF: sub_40548B+62o
		align 10h
; CHAR asc_409350[]
asc_409350	db 0Ah			; DATA XREF: sub_4058B4+16Do
		db '[',0
		align 4
; CHAR aSS[]
aSS		db '%s=%s',0Dh,0Ah,0    ; DATA XREF: sub_4058B4+87o
; CHAR a_[]
a?		db '*?|<>/":',0         ; DATA XREF: sub_405DC8+48o
		align 4
; WCHAR	WideCharStr
WideCharStr	dw 0			; DATA XREF: sub_401434+CE2o
		align 4
		dd 25h dup(0)
		dd 1DAh	dup(?)
dword_409B68	dd ?			; DATA XREF: sub_401434+40w
					; sub_4029D9+4r ...
		align 10h
; CHAR String1[1024]
String1		db 400h	dup(?)		; DATA XREF: sub_401434+31Co
					; sub_401434+6F9o ...
; CHAR byte_409F70
byte_409F70	db ?			; DATA XREF: sub_401423o
					; sub_401434+3CDo ...
		align 4
		dd 0FFh	dup(?)
; BYTE Buffer
Buffer		dd ?			; DATA XREF: sub_401434+34Ao
					; sub_401434+F1Eo ...
		dd 2FFh	dup(?)
; HGLOBAL hMem
hMem		dd ?			; DATA XREF: sub_401434+6D5r
					; sub_401434+705r ...
; LOGFONTA lf
lf		LOGFONTA <?>		; DATA XREF: sub_401434+90Ew
					; sub_401434+951o
; LONG lDistanceToMove
lDistanceToMove	dd ?			; DATA XREF: sub_403043+Ar
					; sub_403043+3Cr ...
		align 8
dword_40AFB8	dd 6 dup(?)		; DATA XREF: sub_402C72+1C6o
					; sub_403043:loc_40310Fo
dword_40AFD0	dd ?			; DATA XREF: sub_403043+8Fw
dword_40AFD4	dd ?			; DATA XREF: sub_403043+95w
					; sub_403043+118r ...
dword_40AFD8	dd ?			; DATA XREF: sub_403043+D1w
					; sub_403043+EAr
dword_40AFDC	dd ?			; DATA XREF: sub_403043+D7w
		dd 18h dup(?)
dword_40B040	dd 2000h dup(?)		; DATA XREF: sub_403043+5Ao
dword_413040	dd 1000h dup(?)		; DATA XREF: sub_402F18+8Eo
					; sub_403043:loc_4030B8o
; LONG dword_417040
dword_417040	dd ?			; DATA XREF: sub_402BB7r
					; sub_402C72+108r ...
; LONG dword_417044
dword_417044	dd ?			; DATA XREF: sub_402C72+285r
					; sub_402F18+1Cw ...
dword_417048	dd ?			; DATA XREF: sub_402C72+248w
					; sub_403043:loc_4030A2r
; HWND dword_41704C
dword_41704C	dd ?			; DATA XREF: sub_402BD3+Er
					; sub_402BD3:loc_402BF1w ...
dword_417050	dd 2000h dup(?)		; DATA XREF: sub_402C72+AAo
					; sub_402C72+C9o ...
; int dword_41F050
dword_41F050	dd ?			; DATA XREF: sub_402BB7+6r
					; sub_402C72+81w ...
; LONG dword_41F054
dword_41F054	dd ?			; DATA XREF: sub_402C72+236w
					; sub_403043+2Fr ...
; CHAR CommandLine[1024]
CommandLine	db 400h	dup(?)		; DATA XREF: start+26Fo
; CHAR pszPath[4]
pszPath		db 4 dup(?)		; DATA XREF: start+54o
					; sub_404356:loc_404621o
; HGLOBAL dword_41F45C
dword_41F45C	dd ?			; DATA XREF: sub_4035FF+1r
					; sub_40361A+1r ...
; HWND dword_41F460
dword_41F460	dd ?			; DATA XREF: sub_403A45+184w
					; sub_403A45+2D6r ...
dword_41F464	dd ?			; DATA XREF: sub_40402C+6r
					; sub_40402C+28w ...
; CHAR RootPathName[1024]
RootPathName	db 400h	dup(?)		; DATA XREF: sub_404356:loc_404521o
; INT_PTR nResult
nResult		dd ?			; DATA XREF: sub_403A45+101w
					; sub_403A45+11Bw ...
		align 10h
; CHAR dword_41F870[]
dword_41F870	dd 100h	dup(?)		; DATA XREF: sub_404356+106o
dword_41FC70	dd ?			; DATA XREF: sub_403A45+3AAw
					; sub_404060+155r ...
		align 8
; const	CHAR byte_41FC78
byte_41FC78	db ?			; DATA XREF: sub_404F04+20o
					; sub_404F04+C5w
		align 4
		dd 1FFh	dup(?)
; HWND dword_420478
dword_420478	dd ?			; DATA XREF: sub_4036AF+1EBw
					; sub_4036AF+215r ...
; LPARAM himl
himl		dd ?			; DATA XREF: sub_404853+BCw
					; sub_404853+CBr ...
dword_420480	dd ?			; DATA XREF: sub_404060+115w
					; sub_404060+149r ...
dword_420484	dd ?			; DATA XREF: sub_403A45+15Dw
					; sub_403A45+1ACw ...
dword_420488	dd ?			; DATA XREF: sub_404853+89w
					; sub_404E54+59r ...
dword_42048C	dd ?			; DATA XREF: sub_404356:loc_4044D2w
					; sub_404356+30Dr ...
; WNDPROC lpPrevWndFunc
lpPrevWndFunc	dd ?			; DATA XREF: sub_404853+ACw
					; sub_404E54+9Er
; HGLOBAL dword_420494
dword_420494	dd ?			; DATA XREF: sub_404853+78w
					; sub_404853+1CBr ...
; HWND wParam
wParam		dd ?			; DATA XREF: sub_403A45+178w
					; sub_403A45:loc_403D73r ...
		align 10h
; const	CHAR byte_4204A0
byte_4204A0	db ?			; DATA XREF: sub_4036AF:loc_4036DBo
					; sub_4036AF+4Dr ...
		align 4
		dd 3FFh	dup(?)
dword_4214A0	dd ?			; DATA XREF: sub_401434:loc_402866r
					; sub_403A45:loc_403EC2r ...
		align 8
; CHAR byte_4214A8
byte_4214A8	db ?			; DATA XREF: sub_40548B:loc_4054DDo
					; sub_40548B+7Ar
		align 4
		dd 0FFh	dup(?)
; CHAR byte_4218A8[1024]
byte_4218A8	db 400h	dup(?)		; DATA XREF: sub_40573A+6o
; CHAR byte_421CA8[1024]
byte_421CA8	db 400h	dup(?)		; DATA XREF: sub_4058B4+8Co
					; sub_4058B4+126o
; CHAR byte_4220A8[1024]
byte_4220A8	db 400h	dup(?)		; DATA XREF: sub_4058B4:loc_40591Co
; struct _STARTUPINFOA StartupInfo
StartupInfo	_STARTUPINFOA <?>	; DATA XREF: sub_4053C6+9w
					; sub_4053C6+16o
		align 10h
; struct _WIN32_FIND_DATAA FindFileData
FindFileData	_WIN32_FIND_DATAA <?>	; DATA XREF: sub_405E61+1o
; CHAR szShortPath[]
szShortPath	dd ?			; DATA XREF: sub_4058B4+2Aw
					; sub_4058B4+3Bo
		dd 0FFh	dup(?)
dword_422A30	dd ?			; DATA XREF: sub_405EF4+27w
					; sub_405EF4+5Ar
dword_422A34	dd ?			; DATA XREF: sub_405EF4r
		dd 102h	dup(?)
; const	CHAR String
String		db ?			; DATA XREF: sub_4036AF+B4o
					; sub_4036AF+C9r ...
; CHAR byte_422E41[]
byte_422E41	db 3 dup(?)		; DATA XREF: sub_4036AF+D6o
		dd 1FFh	dup(?)
; WNDCLASSA WndClass
WndClass	WNDCLASSA <?>		; DATA XREF: sub_4036AF+15Co
					; sub_4036AF+17Fw
; HWND dword_423668
dword_423668	dd ?			; DATA XREF: sub_404F04+68r
					; sub_405042+75w ...
dword_42366C	dd ?			; DATA XREF: sub_401434:loc_40149Cw
					; sub_4036AF+2A0r ...
; HWND hWnd
hWnd		dd ?			; DATA XREF: sub_401434:loc_401567r
					; sub_405042+66w ...
; int nDenominator
nDenominator	dd ?			; DATA XREF: sub_401389+4Ar
					; sub_405042+99w
; HWND hDlg
hDlg		dd ?			; DATA XREF: sub_403A45+67r
					; sub_403A45+77w ...
dword_42367C	dd ?			; DATA XREF: sub_403978:loc_4039EDw
					; sub_404060+20r ...
dword_423680	dd ?			; DATA XREF: sub_4036AF:loc_403912r
					; sub_403978+4Dw ...
; HWND dword_423684
dword_423684	dd ?			; DATA XREF: sub_401434:loc_40157Er
					; sub_404F04+6r ...
; LONG dwNewLong
dwNewLong	dd ?			; DATA XREF: sub_4036AF+153w
					; sub_403A45+18Er
; int nNumber
nNumber		dd ?			; DATA XREF: sub_401389+42w
					; sub_401389+55r ...
		align 20h
; CHAR chText[2048]
chText		db 800h	dup(?)		; DATA XREF: sub_401000+150o start+64o ...
; HINSTANCE hInstance
hInstance	dd ?			; DATA XREF: sub_402BD3+82r start+8Ew	...
dword_423EA4	dd ?			; DATA XREF: start+43w
					; sub_405B88:loc_405CC8r
; HWND hwnd
hwnd		dd ?			; DATA XREF: sub_401000+19r
					; sub_401434+9r ...
dword_423EAC	dd ?			; DATA XREF: sub_402BD3+3Cr
					; sub_402C72+2Bw ...
dword_423EB0	dd ?			; DATA XREF: sub_401000+39r
					; sub_4012E2+6r ...
; SIZE_T dwBytes
dwBytes		dd ?			; DATA XREF: sub_401434+128Br
					; sub_402C72:loc_402D00r ...
dword_423EB8	dd ?			; DATA XREF: sub_402C72+26Aw
					; sub_4036AF+7Br ...
dword_423EBC	dd ?			; DATA XREF: sub_402C72+271w
					; start+187r
dword_423EC0	dd ?			; DATA XREF: sub_402C72+293o
					; sub_403A45+1BEr
dword_423EC4	dd ?			; DATA XREF: sub_403A45+225r
					; sub_403A45+240r
dword_423EC8	dd ?			; DATA XREF: sub_40117D+4r
					; sub_4011EF+12r ...
dword_423ECC	dd ?			; DATA XREF: sub_40117D+22r
					; sub_40117D+64r ...
dword_423ED0	dd ?			; DATA XREF: sub_401389+9r
		align 8
dword_423ED8	dd ?			; DATA XREF: sub_4036AF+AFr
					; sub_404060:loc_404091r ...
		align 10h
dword_423EE0	dd ?			; DATA XREF: sub_403978+2Er
dword_423EE4	dd ?			; DATA XREF: sub_403978:loc_40398Cr
dword_423EE8	dd ?			; DATA XREF: sub_401434:loc_401CA5r
		dd 3 dup(?)
dword_423EF8	dd ?			; DATA XREF: sub_402F18+11r
		align 10h
dword_423F00	dd ?			; DATA XREF: sub_404853+59w
					; sub_404853+454w
		align 20h
dword_423F20	dd ?			; DATA XREF: sub_401434+D2r
					; sub_401434+E8w ...
dword_423F24	dd ?			; DATA XREF: sub_402AEB+8r
					; sub_405B88:loc_405C59r
dword_423F28	dd ?			; DATA XREF: sub_401434:loc_40184Ew
					; sub_401434+145Aw ...
dword_423F2C	dd ?			; DATA XREF: sub_403A45+F3r
					; sub_403A45+294r ...
dword_423F30	dd ?			; DATA XREF: sub_4058B4:loc_405A11w
dword_423F34	dd ?			; DATA XREF: sub_401434:loc_402218w
					; start:loc_403522r
		dd ?
dword_423F3C	dd ?			; DATA XREF: sub_4036AF+8Ew
dword_423F40	dd ?			; DATA XREF: sub_402C72+111w
					; sub_403043+A3r ...
dword_423F44	dd ?			; DATA XREF: sub_404356+2DEw
dword_423F48	dd ?			; DATA XREF: sub_403978+56w
					; sub_405427:loc_405441r
dword_423F4C	dd ?			; DATA XREF: start:loc_403418w
					; start:loc_4035A5r
dword_423F50	dd ?			; DATA XREF: sub_401434+EF6r
					; sub_402A36+10r ...
dword_423F54	dd ?			; DATA XREF: sub_401434+42Fw
					; sub_401434+442w ...
dword_423F58	dd ?			; DATA XREF: sub_401434:loc_401F50r
					; start+39w ...
		align 10h
dword_423F60	dd ?			; DATA XREF: sub_401434+DAw
					; sub_401434:loc_401528r
		align 100h
_data		ends

; Section 4. (virtual address 00024000)
; Virtual size			: 00018000 (  98304.)
; Section size in file		: 00000000 (	  0.)
; Offset to raw	data for section: 00000000
; Flags	C0000080: Bss Readable Writable
; Alignment	: default
; ===========================================================================

; Segment type:	Uninitialized
; Segment permissions: Read/Write
_ndata		segment	para public 'BSS' use32
		assume cs:_ndata
		;org 424000h
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing
; CHAR dword_424000[]
dword_424000	dd 100h	dup(?)		; DATA XREF: sub_40136D+9o
					; sub_401434+2Eo ...
word_424400	dw ?			; DATA XREF: start+265w
					; start:loc_40350Dw
		align 4
		dd 12FFh dup(?)
; const	CHAR sz
sz		db ?			; DATA XREF: start+74o	start+87r
byte_429001	db 3 dup(?)		; DATA XREF: start+9Co
		align 400h
; CHAR byte_429400
byte_429400	db ?			; DATA XREF: start+12Ao start+1C3o ...
		align 400h
; CHAR Directory[1024]
Directory	db 400h	dup(?)		; DATA XREF: sub_401434+1E3o
					; sub_401434:loc_401761o ...
; CHAR byte_429C00[1024]
byte_429C00	db 400h	dup(?)		; DATA XREF: sub_402C72+5Bo start+222o
; CHAR FileName[]
FileName	dd ?			; DATA XREF: sub_403208+28o
					; start:loc_4033AAo ...
		align 400h
; CHAR PathName[1024]
PathName	db 400h	dup(?)		; DATA XREF: sub_402C72+1D8o
					; sub_403208+1o ...
; CHAR dword_42A800[]
dword_42A800	dd 100h	dup(?)		; DATA XREF: sub_4035BD+36o
; CHAR ExistingFileName[1024]
ExistingFileName db 400h dup(?)		; DATA XREF: sub_402C72+1Ao start+295o
; CHAR dword_42B000[]
dword_42B000	dd 200h	dup(?)		; DATA XREF: sub_402C72+6Do
; CHAR dword_42B800[]
dword_42B800	dd 4200h dup(?)		; DATA XREF: sub_403A45+257o
_ndata		ends


		end start

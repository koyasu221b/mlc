; Format      :	Portable executable for	80386 (PE)
; Imagebase   :	400000
; Section 1. (virtual address 00001000)
; Virtual size			: 00005DF4 (  24052.)
; Section size in file		: 00005E00 (  24064.)
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
sub_401000	proc near		; DATA XREF: sub_40363A+179o

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
		mov	esi, dword_42E3D0
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


sub_40117D	proc near		; CODE XREF: sub_401434+13CCp
					; sub_40480C+30Fp

arg_0		= dword	ptr  4

		mov	ecx, [esp+arg_0]
		mov	eax, dword_42E3E8
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
		cmp	esi, dword_42E3EC
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
		cmp	esi, dword_42E3EC
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
					; sub_401434+13F7p ...

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
		mov	ebx, dword_42E3E8
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
		cmp	edx, dword_42E3EC
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
		cmp	eax, dword_42E3EC
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


sub_401299	proc near		; CODE XREF: sub_401434+13F0p
					; sub_40480C+3DBp ...

arg_0		= dword	ptr  4

		mov	ecx, [esp+arg_0]
		mov	eax, dword_42E3E8
		push	esi
		xor	esi, esi
		cmp	ecx, 20h
		jnb	short loc_4012DE
		cmp	dword_42E3EC, esi
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
		cmp	esi, dword_42E3EC
		jb	short loc_4012B6
		pop	edi

loc_4012DE:				; CODE XREF: sub_401299+Fj
					; sub_401299+17j
		pop	esi
		retn	4
sub_401299	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_4012E2	proc near		; CODE XREF: sub_401434+13FFp
					; sub_40480C+47Bp

var_8		= dword	ptr -8
var_4		= dword	ptr -4
arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		mov	eax, dword_42E3D0
		and	[ebp+var_4], 0
		push	ebx
		push	esi
		add	eax, 94h
		push	edi
		mov	edi, dword_42E3EC
		mov	[ebp+var_8], eax

loc_401302:				; CODE XREF: sub_4012E2+7Fj
		mov	eax, [ebp+var_8]
		xor	ebx, ebx
		cmp	[eax], ebx
		jz	short loc_401356
		cmp	ebx, edi
		jnb	short loc_401354
		mov	esi, dword_42E3E8
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
		mov	ecx, offset dword_42F000
		shl	eax, 0Ah
		sub	ecx, eax
		push	ecx
		call	sub_405B1B

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
		mov	ecx, dword_42E3F0
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


sub_40140B	proc near		; CODE XREF: start+461p
					; sub_40363A+1EDp ...

arg_0		= dword	ptr  4

		mov	eax, [esp+arg_0]
		mov	ecx, dword_42E3D0
		push	0		; hWnd
		push	dword ptr [ecx+eax*4+6Ch] ; int
		call	sub_401389
		retn	4
sub_40140B	endp


; =============== S U B	R O U T	I N E =======================================


sub_401423	proc near		; CODE XREF: sub_401434+1DDp
					; sub_401434+9C7p ...

arg_0		= dword	ptr  4

		push	offset byte_4097E0 ; lpString
		push	[esp+4+arg_0]	; int
		call	sub_404E8F
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
		mov	ecx, offset dword_42F000
		mov	[ebp+var_4], ebx
		shl	edi, 0Ah
		add	esi, ecx
		add	edi, ecx
		lea	ecx, [ebp+var_24]
		mov	dword_40A7E0, ecx
		mov	ecx, [ebp+var_28]
		add	ecx, 0FFFFFFFEh	; switch 66 cases
		cmp	ecx, 41h
		ja	loc_402892	; jumptable 00401489 default case
		jmp	ds:off_4028A4[ecx*4] ; switch jump
; ---------------------------------------------------------------------------

loc_401490:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		push	ebx		; jumptable 00401489 case 3
		push	eax		; int

loc_401492:				; CODE XREF: sub_401434+40Dj
		call	sub_404E8F
		jmp	loc_402226
; ---------------------------------------------------------------------------

loc_40149C:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		inc	dword_42DB8C	; jumptable 00401489 case 4
		cmp	[ebp+Rect.bottom], ebx
		jz	loc_402226
		push	ebx		; nExitCode
		call	ds:PostQuitMessage
		jmp	loc_402226
; ---------------------------------------------------------------------------

loc_4014B7:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		push	eax		; jumptable 00401489 case 5
		call	sub_40136D
		dec	eax
		push	ebx		; hWnd
		push	eax		; int
		call	sub_401389
		jmp	loc_40289D	; jumptable 00401489 case 2
; ---------------------------------------------------------------------------

loc_4014CA:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		push	ebx		; jumptable 00401489 case 6
		push	eax		; int
		call	sub_404E8F
		jmp	loc_402892	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_4014D6:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		push	ebx		; jumptable 00401489 case 7
		call	sub_4029E0
		cmp	eax, 1
		jg	short loc_4014E4
		xor	eax, eax
		inc	eax

loc_4014E4:				; CODE XREF: sub_401434+ABj
		push	eax		; dwMilliseconds
		call	ds:Sleep
		jmp	loc_402892	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_4014F0:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		push	[ebp+Rect.bottom] ; jumptable 00401489 case 8
		call	ds:SetForegroundWindow
		jmp	loc_402892	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_4014FE:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		shl	eax, 2		; jumptable 00401489 case 13
		cmp	[ebp+dwBytes], ebx
		jnz	short loc_401528
		mov	ecx, dword_42E440[eax]
		push	1
		mov	dword_42E480[eax], ecx
		call	sub_4029E0
		mov	ecx, [ebp+var_24]
		mov	dword_42E440[ecx*4], eax
		jmp	loc_402892	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_401528:				; CODE XREF: sub_401434+D0j
		mov	ecx, dword_42E480[eax]
		mov	dword_42E440[eax], ecx
		jmp	loc_402892	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_401539:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		mov	eax, [ebp+dwBytes] ; jumptable 00401489	case 14
		lea	esi, ds:42E440h[eax*4]
		xor	eax, eax
		mov	ecx, [esi]
		cmp	ecx, ebx
		setz	al
		and	ecx, [ebp+FileTime2.dwLowDateTime]
		mov	eax, [ebp+eax*4+var_24]
		mov	[esi], ecx
		jmp	loc_40289D	; jumptable 00401489 case 2
; ---------------------------------------------------------------------------

loc_40155A:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		push	dword_42E440[edx*4] ; jumptable	00401489 case 15

loc_401561:				; CODE XREF: sub_401434+6B7j
					; sub_401434+83Fj ...
		push	esi
		jmp	loc_40283A
; ---------------------------------------------------------------------------

loc_401567:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		mov	ecx, hWnd	; jumptable 00401489 case 9
		mov	esi, ds:ShowWindow
		cmp	ecx, ebx
		jz	short loc_40157E
		push	edx		; nCmdShow
		push	ecx		; hWnd
		call	esi ; ShowWindow
		mov	eax, [ebp+var_24]

loc_40157E:				; CODE XREF: sub_401434+141j
		mov	ecx, dword_42DBA4
		cmp	ecx, ebx
		jz	loc_402892	; jumptable 00401489 default case
		push	eax		; nCmdShow
		push	ecx		; hWnd
		call	esi ; ShowWindow
		jmp	loc_402892	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_401595:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		push	0FFFFFFF0h	; jumptable 00401489 case 10
		call	sub_4029FD
		push	[ebp+nCmdShow]	; dwFileAttributes
		push	eax		; lpFileName
		call	ds:SetFileAttributesA

loc_4015A6:				; CODE XREF: sub_401434+306j
					; sub_401434+E46j ...
		test	eax, eax

loc_4015A8:				; CODE XREF: sub_401434+420j
					; sub_401434+1199j
		jnz	loc_402892	; jumptable 00401489 default case
		jmp	loc_402663
; ---------------------------------------------------------------------------

loc_4015B3:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		push	0FFFFFFF0h	; jumptable 00401489 case 11
		call	sub_4029FD
		mov	edi, eax
		push	edi		; lpsz
		call	sub_4056CD
		mov	esi, eax
		cmp	esi, ebx
		jz	short loc_40160A

loc_4015C8:				; CODE XREF: sub_401434+1D4j
		push	5Ch		; char
		push	esi		; lpsz
		call	sub_40565F
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
		jz	short loc_401638
		push	0FFFFFFE6h
		call	sub_401423
		push	edi		; lpString2
		push	offset Directory ; lpString1
		call	sub_405BA4
		push	edi		; lpPathName
		call	ds:SetCurrentDirectoryA
		test	eax, eax
		jnz	loc_402892	; jumptable 00401489 default case
		inc	[ebp+var_4]
		jmp	loc_402892	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_401638:				; CODE XREF: sub_401434+1D9j
		push	0FFFFFFF5h
		jmp	loc_40217C
; ---------------------------------------------------------------------------

loc_40163F:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		push	ebx		; jumptable 00401489 case 12
		call	sub_4029FD
		push	eax		; lpFileName
		call	sub_405EA8
		jmp	loc_401C85
; ---------------------------------------------------------------------------

loc_401650:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		push	0FFFFFFD0h	; jumptable 00401489 case 16
		call	sub_4029FD
		push	0FFFFFFDFh
		mov	esi, eax
		call	sub_4029FD
		push	13h
		mov	edi, eax
		call	sub_4029FD
		push	edi		; lpNewFileName
		push	esi		; lpExistingFileName
		call	ds:MoveFileA
		test	eax, eax
		jz	short loc_40167C
		push	0FFFFFFE3h
		jmp	loc_40217C
; ---------------------------------------------------------------------------

loc_40167C:				; CODE XREF: sub_401434+23Fj
		cmp	[ebp+dwBytes], ebx
		jz	loc_402663
		push	esi		; lpFileName
		call	sub_405EA8
		test	eax, eax
		jz	loc_402663
		push	edi		; lpszLongPath
		push	esi		; LPCSTR
		call	sub_405A58
		push	0FFFFFFE4h
		jmp	loc_40217C
; ---------------------------------------------------------------------------

loc_4016A1:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		push	ebx		; jumptable 00401489 case 17
		call	sub_4029FD
		mov	esi, eax
		lea	eax, [ebp+FilePart]
		push	eax		; lpFilePart
		push	edi		; lpBuffer
		push	400h		; nBufferLength
		push	esi		; lpFileName
		call	ds:GetFullPathNameA
		test	eax, eax
		jz	short loc_4016E1
		mov	eax, [ebp+FilePart]
		cmp	eax, esi
		jbe	short loc_4016EA
		cmp	[eax], bl
		jz	short loc_4016EA
		push	esi		; lpFileName
		call	sub_405EA8
		cmp	eax, ebx
		jz	short loc_4016E1
		add	eax, 2Ch
		push	eax		; lpString2
		push	[ebp+FilePart]	; lpString1
		call	sub_405BA4
		jmp	short loc_4016EA
; ---------------------------------------------------------------------------

loc_4016E1:				; CODE XREF: sub_401434+288j
					; sub_401434+29Dj
		mov	[ebp+var_4], 1
		mov	[edi], bl

loc_4016EA:				; CODE XREF: sub_401434+28Fj
					; sub_401434+293j ...
		cmp	[ebp+dwBytes], ebx
		jnz	loc_402892	; jumptable 00401489 default case
		push	400h		; cchBuffer
		push	edi		; lpszShortPath
		push	edi		; lpszLongPath
		call	ds:GetShortPathNameA
		jmp	loc_402892	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_401705:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		push	0FFFFFFFFh	; jumptable 00401489 case 18
		call	sub_4029FD
		lea	ecx, [ebp+FilePart]
		push	ecx		; lpFilePart
		push	esi		; lpBuffer
		push	400h		; nBufferLength
		push	ebx		; lpExtension
		push	eax		; lpFileName
		push	ebx		; lpPath
		call	ds:SearchPathA
		test	eax, eax

loc_401721:				; CODE XREF: sub_401434+E87j
		jnz	loc_402892	; jumptable 00401489 default case
		jmp	loc_402637
; ---------------------------------------------------------------------------

loc_40172C:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		push	0FFFFFFEFh	; jumptable 00401489 case 19
		call	sub_4029FD
		push	eax		; lpPathName
		push	esi		; PrefixString
		call	sub_405864
		jmp	loc_4015A6
; ---------------------------------------------------------------------------

loc_40173F:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		push	31h		; jumptable 00401489 case 20
		call	sub_4029FD
		mov	esi, eax
		mov	eax, [ebp+var_24]
		and	eax, 7
		push	esi
		mov	[ebp+lpString2], esi
		mov	[ebp+FilePart],	eax
		call	sub_4056A1
		push	esi		; lpString2
		mov	esi, offset String1
		test	eax, eax
		jz	short loc_40176C
		push	esi		; lpString1
		call	sub_405BA4
		jmp	short loc_401783
; ---------------------------------------------------------------------------

loc_40176C:				; CODE XREF: sub_401434+32Ej
		push	offset Directory ; lpString2
		push	esi		; lpString1
		call	sub_405BA4
		push	eax		; lpString
		call	sub_405634
		push	eax		; lpString1
		call	lstrcatA

loc_401783:				; CODE XREF: sub_401434+336j
		push	esi		; lpsz
		call	sub_405E0F
		mov	edi, offset Data

loc_40178E:				; CODE XREF: sub_401434+401j
		cmp	[ebp+FilePart],	3
		jl	short loc_4017C5
		push	esi		; lpFileName
		call	sub_405EA8
		xor	ecx, ecx
		cmp	eax, ebx
		jz	short loc_4017B0
		lea	ecx, [ebp+FileTime2]
		add	eax, 14h
		push	ecx		; lpFileTime2
		push	eax		; lpFileTime1
		call	ds:CompareFileTime
		mov	ecx, eax

loc_4017B0:				; CODE XREF: sub_401434+36Aj
		mov	eax, [ebp+FilePart]
		add	eax, 0FFFFFFFDh
		or	eax, 80000000h
		and	eax, ecx
		neg	eax
		sbb	eax, eax
		inc	eax
		mov	[ebp+FilePart],	eax

loc_4017C5:				; CODE XREF: sub_401434+35Ej
		cmp	[ebp+FilePart],	ebx
		jnz	short loc_4017D0
		push	esi		; lpFileName
		call	sub_405810

loc_4017D0:				; CODE XREF: sub_401434+394j
		xor	eax, eax
		cmp	[ebp+FilePart],	1
		setnz	al
		inc	eax
		push	eax		; dwCreationDisposition
		push	40000000h	; dwDesiredAccess
		push	esi		; lpFileName
		call	sub_405835
		cmp	eax, 0FFFFFFFFh
		mov	[ebp+Rect.bottom], eax
		jnz	short loc_401864
		cmp	[ebp+FilePart],	ebx
		jnz	short loc_401846
		push	offset dword_42F000 ; lpString2
		push	edi		; lpString1
		call	sub_405BA4
		push	esi		; lpString2
		push	offset dword_42F000 ; lpString1
		call	sub_405BA4
		push	[ebp+var_10]	; int
		push	offset byte_4097E0 ; lpString1
		call	sub_405BC6
		push	edi		; lpString2
		push	offset dword_42F000 ; lpString1
		call	sub_405BA4
		mov	eax, [ebp+var_24]
		sar	eax, 3
		push	eax
		push	offset byte_4097E0
		call	sub_4053B8
		sub	eax, 4
		jz	loc_40178E
		dec	eax
		jz	short loc_401859
		push	esi
		push	0FFFFFFFAh
		jmp	loc_401492
; ---------------------------------------------------------------------------

loc_401846:				; CODE XREF: sub_401434+3BDj
		push	[ebp+lpString2]	; lpString
		push	0FFFFFFE2h	; int
		call	sub_404E8F
		cmp	[ebp+FilePart],	2
		jmp	loc_4015A8
; ---------------------------------------------------------------------------

loc_401859:				; CODE XREF: sub_401434+408j
		inc	dword_42E448
		jmp	loc_40289B
; ---------------------------------------------------------------------------

loc_401864:				; CODE XREF: sub_401434+3B8j
		push	[ebp+lpString2]	; lpString
		push	0FFFFFFEAh	; int
		call	sub_404E8F
		inc	dword_42E474
		push	ebx		; Buffer
		push	ebx		; DWORD
		push	[ebp+Rect.bottom] ; hFile
		push	[ebp+dwBytes]	; nDenominator
		call	sub_402E62
		dec	dword_42E474
		cmp	[ebp+FileTime2.dwLowDateTime], 0FFFFFFFFh
		mov	edi, eax
		jnz	short loc_401895
		cmp	[ebp+FileTime2.dwHighDateTime],	0FFFFFFFFh
		jz	short loc_4018A7

loc_401895:				; CODE XREF: sub_401434+459j
		lea	eax, [ebp+FileTime2]
		push	eax		; lpLastWriteTime
		lea	eax, [ebp+FileTime2]
		push	ebx		; lpLastAccessTime
		push	eax		; lpCreationTime
		push	[ebp+Rect.bottom] ; hFile
		call	ds:SetFileTime

loc_4018A7:				; CODE XREF: sub_401434+45Fj
		push	[ebp+Rect.bottom] ; hObject
		call	ds:CloseHandle
		cmp	edi, ebx
		jge	loc_402892	; jumptable 00401489 default case
		cmp	edi, 0FFFFFFFEh
		jnz	short loc_4018D0
		push	0FFFFFFE9h	; int
		push	esi		; lpString1
		call	sub_405BC6
		push	[ebp+lpString2]	; lpString2
		push	esi		; lpString1
		call	lstrcatA
		jmp	short loc_4018D8
; ---------------------------------------------------------------------------

loc_4018D0:				; CODE XREF: sub_401434+487j
		push	0FFFFFFEEh	; int
		push	esi		; lpString1
		call	sub_405BC6

loc_4018D8:				; CODE XREF: sub_401434+49Aj
		push	200010h
		push	esi
		jmp	loc_402221
; ---------------------------------------------------------------------------

loc_4018E3:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		push	ebx		; jumptable 00401489 case 21
		jmp	short loc_40191A
; ---------------------------------------------------------------------------

loc_4018E6:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		push	31h		; jumptable 00401489 case 22
		call	sub_4029FD
		push	[ebp+var_24]
		push	eax
		call	sub_4053B8
		cmp	eax, ebx
		jz	loc_402663
		cmp	eax, [ebp+dwBytes]
		jz	loc_401A51
		cmp	eax, [ebp+FileTime2.dwHighDateTime]
		jnz	loc_402892	; jumptable 00401489 default case
		mov	eax, [ebp+var_10]
		jmp	loc_40289D	; jumptable 00401489 case 2
; ---------------------------------------------------------------------------

loc_401918:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		push	0FFFFFFF0h	; jumptable 00401489 case 23

loc_40191A:				; CODE XREF: sub_401434+4B0j
		call	sub_4029FD
		push	[ebp+nCmdShow]	; int
		push	eax		; lpFileName
		call	sub_405464
		jmp	loc_402892	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_40192D:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		push	1		; jumptable 00401489 case 24
		call	sub_4029FD
		push	eax		; lpString
		call	lstrlenA
		jmp	loc_4024CB
; ---------------------------------------------------------------------------

loc_40193F:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		push	2		; jumptable 00401489 case 25
		call	sub_4029E0
		push	3
		mov	[ebp+FilePart],	eax
		call	sub_4029E0
		push	1
		mov	edi, eax
		call	sub_4029FD
		cmp	[ebp+dwBytes], ebx
		mov	[ebp+lptstrFilename], eax
		mov	[esi], bl
		jz	short loc_40196C
		cmp	[ebp+FilePart],	ebx
		jz	loc_402892	; jumptable 00401489 default case

loc_40196C:				; CODE XREF: sub_401434+52Dj
		push	eax		; lpString
		call	lstrlenA
		cmp	edi, ebx
		jge	short loc_40197E
		add	edi, eax
		js	loc_402892	; jumptable 00401489 default case

loc_40197E:				; CODE XREF: sub_401434+540j
		cmp	edi, eax
		jle	short loc_401984
		mov	edi, eax

loc_401984:				; CODE XREF: sub_401434+54Cj
		mov	eax, [ebp+lptstrFilename]
		add	eax, edi
		push	eax		; lpString2
		push	esi		; lpString1
		call	sub_405BA4
		mov	edi, [ebp+FilePart]
		cmp	edi, ebx
		jz	loc_402892	; jumptable 00401489 default case
		jge	short loc_4019AC
		push	esi		; lpString
		call	lstrlenA
		add	edi, eax
		jns	short loc_4019AC
		mov	[ebp+FilePart],	ebx
		mov	edi, ebx

loc_4019AC:				; CODE XREF: sub_401434+567j
					; sub_401434+571j
		cmp	edi, 400h
		jge	loc_402892	; jumptable 00401489 default case
		mov	[edi+esi], bl
		jmp	loc_402892	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_4019C0:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		push	20h		; jumptable 00401489 case 26
		call	sub_4029FD
		push	31h
		mov	esi, eax
		call	sub_4029FD
		cmp	[ebp+FileTime2.dwHighDateTime],	ebx
		push	eax		; lpString2
		push	esi		; lpString1
		jnz	short loc_4019E9
		call	ds:lstrcmpiA

loc_4019DD:				; CODE XREF: sub_401434+5BBj
		test	eax, eax
		jnz	short loc_401A51

loc_4019E1:				; CODE XREF: sub_401434+615j
					; sub_401434:loc_401A59j ...
		mov	eax, [ebp+dwBytes]
		jmp	loc_40289D	; jumptable 00401489 case 2
; ---------------------------------------------------------------------------

loc_4019E9:				; CODE XREF: sub_401434+5A1j
		call	ds:lstrcmpA
		jmp	short loc_4019DD
; ---------------------------------------------------------------------------

loc_4019F1:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		xor	edi, edi	; jumptable 00401489 case 27
		inc	edi
		push	edi
		call	sub_4029FD
		push	400h		; nSize
		push	esi		; lpDst
		push	eax		; lpSrc
		mov	[ebp+FilePart],	eax
		call	ds:ExpandEnvironmentStringsA
		test	eax, eax
		jz	short loc_401A21
		cmp	[ebp+dwBytes], ebx
		jz	short loc_401A26
		push	esi		; lpString2
		push	[ebp+FilePart]	; lpString1
		call	ds:lstrcmpA
		test	eax, eax
		jnz	short loc_401A26

loc_401A21:				; CODE XREF: sub_401434+5D8j
		mov	[ebp+var_4], edi
		mov	[esi], bl

loc_401A26:				; CODE XREF: sub_401434+5DDj
					; sub_401434+5EBj
		mov	[esi+3FFh], bl
		jmp	loc_402892	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_401A31:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		push	ebx		; jumptable 00401489 case 28
		call	sub_4029E0
		push	1
		mov	esi, eax
		call	sub_4029E0
		cmp	[ebp+var_10], ebx
		jnz	short loc_401A4D
		cmp	esi, eax
		jl	short loc_401A51
		jle	short loc_4019E1
		jmp	short loc_401A5B
; ---------------------------------------------------------------------------

loc_401A4D:				; CODE XREF: sub_401434+60Fj
		cmp	esi, eax
		jnb	short loc_401A59

loc_401A51:				; CODE XREF: sub_401434+4CDj
					; sub_401434+5ABj ...
		mov	eax, [ebp+FileTime2.dwLowDateTime]
		jmp	loc_40289D	; jumptable 00401489 case 2
; ---------------------------------------------------------------------------

loc_401A59:				; CODE XREF: sub_401434+61Bj
		jbe	short loc_4019E1

loc_401A5B:				; CODE XREF: sub_401434+617j
		mov	eax, [ebp+FileTime2.dwHighDateTime]
		jmp	loc_40289D	; jumptable 00401489 case 2
; ---------------------------------------------------------------------------

loc_401A63:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		push	1		; jumptable 00401489 case 29
		call	sub_4029E0
		push	2
		mov	edi, eax
		call	sub_4029E0
		mov	ecx, eax
		mov	eax, [ebp+FileTime2.dwLowDateTime]
		cmp	eax, 0Ch	; switch 13 cases
		ja	short loc_401AEA ; jumptable 00401A7D default case
		jmp	ds:off_4029AC[eax*4] ; switch jump
; ---------------------------------------------------------------------------

loc_401A84:				; CODE XREF: sub_401434+649j
					; DATA XREF: .text:off_4029ACo
		add	edi, ecx	; jumptable 00401A7D case 0
		jmp	short loc_401AEA ; jumptable 00401A7D default case
; ---------------------------------------------------------------------------

loc_401A88:				; CODE XREF: sub_401434+649j
					; DATA XREF: .text:off_4029ACo
		sub	edi, ecx	; jumptable 00401A7D case 1
		jmp	short loc_401AEA ; jumptable 00401A7D default case
; ---------------------------------------------------------------------------

loc_401A8C:				; CODE XREF: sub_401434+649j
					; DATA XREF: .text:off_4029ACo
		imul	ecx, edi	; jumptable 00401A7D case 2
		mov	edi, ecx
		jmp	short loc_401AEA ; jumptable 00401A7D default case
; ---------------------------------------------------------------------------

loc_401A93:				; CODE XREF: sub_401434+649j
					; DATA XREF: .text:off_4029ACo
		cmp	ecx, ebx	; jumptable 00401A7D case 3
		jz	short loc_401AD9
		mov	eax, edi
		cdq
		idiv	ecx

loc_401A9C:				; CODE XREF: sub_401434+67Fj
		mov	edi, eax
		jmp	short loc_401AEA ; jumptable 00401A7D default case
; ---------------------------------------------------------------------------

loc_401AA0:				; CODE XREF: sub_401434+649j
					; DATA XREF: .text:off_4029ACo
		or	edi, ecx	; jumptable 00401A7D case 4
		jmp	short loc_401AEA ; jumptable 00401A7D default case
; ---------------------------------------------------------------------------

loc_401AA4:				; CODE XREF: sub_401434+649j
					; DATA XREF: .text:off_4029ACo
		and	edi, ecx	; jumptable 00401A7D case 5
		jmp	short loc_401AEA ; jumptable 00401A7D default case
; ---------------------------------------------------------------------------

loc_401AA8:				; CODE XREF: sub_401434+649j
					; DATA XREF: .text:off_4029ACo
		xor	edi, ecx	; jumptable 00401A7D case 6
		jmp	short loc_401AEA ; jumptable 00401A7D default case
; ---------------------------------------------------------------------------

loc_401AAC:				; CODE XREF: sub_401434+649j
					; DATA XREF: .text:off_4029ACo
		xor	eax, eax	; jumptable 00401A7D case 7
		cmp	edi, ebx
		setz	al
		jmp	short loc_401A9C
; ---------------------------------------------------------------------------

loc_401AB5:				; CODE XREF: sub_401434+649j
					; DATA XREF: .text:off_4029ACo
		cmp	edi, ebx	; jumptable 00401A7D case 8
		jnz	short loc_401AC7
		jmp	short loc_401AC3
; ---------------------------------------------------------------------------

loc_401ABB:				; CODE XREF: sub_401434+68Dj
					; sub_401434+691j
		xor	edi, edi
		jmp	short loc_401AEA ; jumptable 00401A7D default case
; ---------------------------------------------------------------------------

loc_401ABF:				; CODE XREF: sub_401434+649j
					; DATA XREF: .text:off_4029ACo
		cmp	edi, ebx	; jumptable 00401A7D case 9
		jz	short loc_401ABB

loc_401AC3:				; CODE XREF: sub_401434+685j
		cmp	ecx, ebx
		jz	short loc_401ABB

loc_401AC7:				; CODE XREF: sub_401434+683j
		xor	edi, edi
		inc	edi
		jmp	short loc_401AEA ; jumptable 00401A7D default case
; ---------------------------------------------------------------------------

loc_401ACC:				; CODE XREF: sub_401434+649j
					; DATA XREF: .text:off_4029ACo
		cmp	ecx, ebx	; jumptable 00401A7D case 10
		jz	short loc_401AD9
		mov	eax, edi
		cdq
		idiv	ecx
		mov	edi, edx
		jmp	short loc_401AEA ; jumptable 00401A7D default case
; ---------------------------------------------------------------------------

loc_401AD9:				; CODE XREF: sub_401434+661j
					; sub_401434+69Aj
		xor	edi, edi
		mov	[ebp+var_4], 1
		jmp	short loc_401AEA ; jumptable 00401A7D default case
; ---------------------------------------------------------------------------

loc_401AE4:				; CODE XREF: sub_401434+649j
					; DATA XREF: .text:off_4029ACo
		shl	edi, cl		; jumptable 00401A7D case 11
		jmp	short loc_401AEA ; jumptable 00401A7D default case
; ---------------------------------------------------------------------------

loc_401AE8:				; CODE XREF: sub_401434+649j
					; DATA XREF: .text:off_4029ACo
		sar	edi, cl		; jumptable 00401A7D case 12

loc_401AEA:				; CODE XREF: sub_401434+647j
					; sub_401434+652j ...
		push	edi		; jumptable 00401A7D default case
		jmp	loc_401561
; ---------------------------------------------------------------------------

loc_401AF0:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		push	1		; jumptable 00401489 case 30
		call	sub_4029FD
		push	2
		mov	edi, eax
		call	sub_4029E0
		push	eax
		push	edi		; LPCSTR
		push	esi		; LPSTR
		call	ds:wsprintfA
		add	esp, 0Ch
		jmp	loc_402892	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_401B11:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		mov	eax, [ebp+dwBytes] ; jumptable 00401489	case 31
		mov	edi, hMem
		cmp	eax, ebx
		jz	short loc_401B62

loc_401B1E:				; CODE XREF: sub_401434+6F7j
		dec	eax
		cmp	edi, ebx
		jz	loc_402213
		mov	edi, [edi]
		cmp	eax, ebx
		jnz	short loc_401B1E
		cmp	edi, ebx
		jz	loc_402213
		add	edi, 4
		mov	esi, offset String1
		push	edi		; lpString2
		push	esi		; lpString1
		call	sub_405BA4
		mov	eax, hMem
		add	eax, 4
		push	eax		; lpString2
		push	edi		; lpString1
		call	sub_405BA4
		mov	eax, hMem
		push	esi
		add	eax, 4
		push	eax
		jmp	loc_4027B8
; ---------------------------------------------------------------------------

loc_401B62:				; CODE XREF: sub_401434+6E8j
		cmp	edx, ebx
		jz	short loc_401B8B
		cmp	edi, ebx
		jz	loc_402663
		lea	eax, [edi+4]
		push	eax		; lpString2
		push	esi		; lpString1
		call	sub_405BA4
		mov	eax, [edi]
		push	edi		; hMem
		mov	hMem, eax

loc_401B80:				; CODE XREF: sub_401434+B2Ej
		call	ds:GlobalFree
		jmp	loc_402892	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_401B8B:				; CODE XREF: sub_401434+730j
		push	404h		; dwBytes
		push	40h		; uFlags
		call	ds:GlobalAlloc
		push	[ebp+var_24]	; int
		mov	esi, eax
		lea	eax, [esi+4]
		push	eax		; lpString1
		call	sub_405BC6
		mov	eax, hMem
		mov	[esi], eax
		mov	hMem, esi
		jmp	loc_402892	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_401BB8:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		push	3		; jumptable 00401489 cases 32,33
		call	sub_4029E0
		push	4
		mov	[ebp+Rect.bottom], eax
		call	sub_4029E0
		test	byte ptr [ebp+var_10], 1
		mov	[ebp+FilePart],	eax
		jz	short loc_401BDC
		push	33h
		call	sub_4029FD
		mov	[ebp+Rect.bottom], eax

loc_401BDC:				; CODE XREF: sub_401434+79Cj
		test	byte ptr [ebp+var_10], 2
		jz	short loc_401BEC
		push	44h
		call	sub_4029FD
		mov	[ebp+FilePart],	eax

loc_401BEC:				; CODE XREF: sub_401434+7ACj
		cmp	[ebp+var_28], 21h
		push	1
		jnz	short loc_401C38
		call	sub_4029E0
		push	2
		mov	edi, eax
		call	sub_4029E0
		mov	ecx, [ebp+var_10]
		sar	ecx, 2
		jz	short loc_401C28
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
		jmp	short loc_401C67
; ---------------------------------------------------------------------------

loc_401C28:				; CODE XREF: sub_401434+7D4j
		push	[ebp+FilePart]	; lParam
		push	[ebp+Rect.bottom] ; wParam
		push	eax		; Msg
		push	edi		; hWnd
		call	ds:SendMessageA
		jmp	short loc_401C64
; ---------------------------------------------------------------------------

loc_401C38:				; CODE XREF: sub_401434+7BEj
		call	sub_4029FD
		push	12h
		mov	edi, eax
		call	sub_4029FD
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

loc_401C64:				; CODE XREF: sub_401434+802j
		mov	[ebp+lpString2], eax

loc_401C67:				; CODE XREF: sub_401434+7F2j
		cmp	[ebp+var_24], ebx
		jl	loc_402892	; jumptable 00401489 default case
		push	[ebp+lpString2]
		jmp	loc_401561
; ---------------------------------------------------------------------------

loc_401C78:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		push	ebx		; jumptable 00401489 case 34
		call	sub_4029E0
		push	eax		; hWnd
		call	ds:IsWindow

loc_401C85:				; CODE XREF: sub_401434+217j
		test	eax, eax
		jz	loc_4019E1
		mov	eax, [ebp+nCmdShow]
		jmp	loc_40289D	; jumptable 00401489 case 2
; ---------------------------------------------------------------------------

loc_401C95:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		push	2		; jumptable 00401489 case 35
		call	sub_4029E0
		push	eax		; nIDDlgItem
		push	1
		call	sub_4029E0
		push	eax		; hDlg
		call	ds:GetDlgItem
		jmp	loc_4024CB
; ---------------------------------------------------------------------------

loc_401CB0:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		mov	eax, dword_42E408 ; jumptable 00401489 case 36
		add	eax, edx
		push	eax		; dwNewLong
		push	0FFFFFFEBh	; nIndex
		push	ebx
		call	sub_4029E0
		push	eax		; hWnd
		call	ds:SetWindowLongA
		jmp	loc_402892	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_401CCC:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
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
		call	sub_4029FD
		push	eax		; name
		push	ebx		; hInst
		call	ds:LoadImageA
		push	eax		; lParam
		push	ebx		; wParam
		push	172h		; Msg
		push	esi		; hWnd
		call	ds:SendMessageA
		cmp	eax, ebx
		jz	loc_402892	; jumptable 00401489 default case
		push	eax		; ho
		call	ds:DeleteObject
		jmp	loc_402892	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_401D26:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		push	[ebp+Rect.bottom] ; jumptable 00401489 case 38
		call	ds:GetDC
		mov	edi, eax
		push	48h		; nDenominator
		push	5Ah		; index
		push	edi		; hdc
		call	ds:GetDeviceCaps
		push	eax		; nNumerator
		push	2
		call	sub_4029E0
		push	eax		; nNumber
		call	ds:MulDiv
		push	edi		; hDC
		push	[ebp+Rect.bottom] ; hWnd
		neg	eax
		mov	lf.lfHeight, eax
		call	ds:ReleaseDC
		push	3
		call	sub_4029E0
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
		call	sub_405BC6
		push	offset lf	; lplf
		call	ds:CreateFontIndirectA
		jmp	loc_4024CB
; ---------------------------------------------------------------------------

loc_401DAC:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		push	ebx		; jumptable 00401489 case 39
		call	sub_4029E0
		push	1
		mov	esi, eax
		call	sub_4029E0
		cmp	[ebp+FileTime2.dwLowDateTime], ebx
		push	eax		; bEnable
		push	esi		; hWnd
		jnz	short loc_401DCD
		call	ds:ShowWindow
		jmp	loc_402892	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_401DCD:				; CODE XREF: sub_401434+98Cj
		call	ds:EnableWindow
		jmp	loc_402892	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_401DD8:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		push	ebx		; jumptable 00401489 case 40
		call	sub_4029FD
		push	31h
		mov	esi, eax
		call	sub_4029FD
		push	22h
		mov	ebx, eax
		call	sub_4029FD
		push	15h
		mov	edi, eax
		call	sub_4029FD
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
		jge	loc_402892	; jumptable 00401489 default case
		jmp	loc_402663
; ---------------------------------------------------------------------------

loc_401E32:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		push	ebx		; jumptable 00401489 case 41
		call	sub_4029FD
		mov	esi, eax
		push	esi		; lpString
		push	0FFFFFFEBh	; int
		call	sub_404E8F
		push	esi		; lpCommandLine
		call	sub_405357
		cmp	eax, ebx
		mov	[ebp+FilePart],	eax
		jz	loc_402663
		cmp	[ebp+dwBytes], ebx
		jz	short loc_401E9E
		mov	esi, ds:WaitForSingleObject
		jmp	short loc_401E67
; ---------------------------------------------------------------------------

loc_401E60:				; CODE XREF: sub_401434+A3Fj
		push	0Fh		; wMsgFilterMin
		call	sub_405F08

loc_401E67:				; CODE XREF: sub_401434+A2Aj
		push	64h		; dwMilliseconds
		push	[ebp+FilePart]	; hHandle
		call	esi ; WaitForSingleObject
		cmp	eax, 102h
		jz	short loc_401E60
		lea	eax, [ebp+lpString2]
		push	eax		; lpExitCode
		push	[ebp+FilePart]	; hProcess
		call	ds:GetExitCodeProcess
		cmp	[ebp+nCmdShow],	ebx
		jl	short loc_401E92
		push	[ebp+lpString2]	; int
		push	edi		; LPSTR
		call	sub_405B02
		jmp	short loc_401E9E
; ---------------------------------------------------------------------------

loc_401E92:				; CODE XREF: sub_401434+A51j
		cmp	[ebp+lpString2], ebx
		jz	short loc_401E9E
		mov	[ebp+var_4], 1

loc_401E9E:				; CODE XREF: sub_401434+A22j
					; sub_401434+A5Cj ...
		push	[ebp+FilePart]	; hObject

loc_401EA1:				; CODE XREF: sub_401434+1076j
		call	ds:CloseHandle
		jmp	loc_402892	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_401EAC:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		push	2		; jumptable 00401489 case 42
		call	sub_4029FD
		push	eax		; lpFileName
		call	sub_405EA8
		cmp	eax, ebx
		mov	[ebp+FilePart],	eax
		jz	short loc_401ED3
		mov	ebx, eax
		push	dword ptr [ebx+14h] ; int
		push	edi		; LPSTR
		call	sub_405B02
		push	dword ptr [ebx+18h]
		jmp	loc_401561
; ---------------------------------------------------------------------------

loc_401ED3:				; CODE XREF: sub_401434+A8Aj
		mov	[esi], bl
		mov	[edi], bl
		jmp	loc_402663
; ---------------------------------------------------------------------------

loc_401EDC:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		push	0FFFFFFEEh	; jumptable 00401489 case 43
		call	sub_4029FD
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
		jz	loc_402892	; jumptable 00401489 default case
		push	eax		; dwBytes
		push	40h		; uFlags
		call	ds:GlobalAlloc
		cmp	eax, ebx
		mov	[ebp+FilePart],	eax
		jz	loc_402892	; jumptable 00401489 default case
		push	eax		; lpData
		push	[ebp+lpString2]	; dwLen
		push	ebx		; dwHandle
		push	[ebp+lptstrFilename] ; lptstrFilename
		call	GetFileVersionInfoA
		test	eax, eax
		jz	short loc_401F5F
		lea	eax, [ebp+puLen]
		push	eax		; puLen
		lea	eax, [ebp+Rect.bottom]
		push	eax		; lplpBuffer
		push	offset SubBlock	; "\\"
		push	[ebp+FilePart]	; pBlock
		call	VerQueryValueA
		test	eax, eax
		jz	short loc_401F5F
		mov	eax, [ebp+Rect.bottom]
		push	dword ptr [eax+8] ; int
		push	esi		; LPSTR
		call	sub_405B02
		mov	eax, [ebp+Rect.bottom]
		push	dword ptr [eax+0Ch] ; int
		push	edi		; LPSTR
		call	sub_405B02
		mov	[ebp+var_4], ebx

loc_401F5F:				; CODE XREF: sub_401434+AF5j
					; sub_401434+B0Ej
		push	[ebp+FilePart]
		jmp	loc_401B80
; ---------------------------------------------------------------------------

loc_401F67:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		cmp	dword_42E478, ebx ; jumptable 00401489 case 44
		mov	[ebp+var_4], 1
		jl	loc_40202F
		push	0FFFFFFF0h
		call	sub_4029FD
		push	1
		mov	esi, eax
		call	sub_4029FD
		cmp	[ebp+FileTime2.dwHighDateTime],	ebx
		mov	[ebp+FilePart],	eax
		jz	short loc_401F9F
		push	esi		; lpModuleName
		call	ds:GetModuleHandleA
		mov	edi, eax
		cmp	edi, ebx
		jnz	short loc_401FAF

loc_401F9F:				; CODE XREF: sub_401434+B5Cj
		push	8		; dwFlags
		push	ebx		; hFile
		push	esi		; lpLibFileName
		call	ds:LoadLibraryExA
		mov	edi, eax
		cmp	edi, ebx
		jz	short loc_402028

loc_401FAF:				; CODE XREF: sub_401434+B69j
		push	[ebp+FilePart]	; lpProcName
		push	edi		; hModule
		call	GetProcAddress
		mov	esi, eax
		cmp	esi, ebx
		jz	short loc_401FFB
		cmp	[ebp+dwBytes], ebx
		mov	[ebp+var_4], ebx
		jz	short loc_401FDD
		push	[ebp+dwBytes]
		call	sub_401423
		call	esi
		test	eax, eax
		jz	short loc_402005
		mov	[ebp+var_4], 1
		jmp	short loc_402005
; ---------------------------------------------------------------------------

loc_401FDD:				; CODE XREF: sub_401434+B90j
		push	offset off_409000
		push	offset hMem
		push	offset dword_42F000
		push	400h
		push	[ebp+Rect.bottom]
		call	esi
		add	esp, 14h
		jmp	short loc_402005
; ---------------------------------------------------------------------------

loc_401FFB:				; CODE XREF: sub_401434+B88j
		push	[ebp+FilePart]	; lpString
		push	0FFFFFFF7h	; int
		call	sub_404E8F

loc_402005:				; CODE XREF: sub_401434+B9Ej
					; sub_401434+BA7j ...
		cmp	[ebp+FileTime2.dwLowDateTime], ebx
		jnz	loc_402892	; jumptable 00401489 default case
		push	edi
		call	sub_4035DA
		test	eax, eax
		jz	loc_402892	; jumptable 00401489 default case
		push	edi		; hLibModule
		call	ds:FreeLibrary
		jmp	loc_402892	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_402028:				; CODE XREF: sub_401434+B79j
		push	0FFFFFFF6h
		jmp	loc_40217C
; ---------------------------------------------------------------------------

loc_40202F:				; CODE XREF: sub_401434+B40j
		push	0FFFFFFE7h
		jmp	loc_40217C
; ---------------------------------------------------------------------------

loc_402036:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		push	0FFFFFFF0h	; jumptable 00401489 case 45
		call	sub_4029FD
		push	0FFFFFFDFh
		mov	[ebp+dwHandle],	eax
		call	sub_4029FD
		push	2
		mov	[ebp+Rect.bottom], eax
		call	sub_4029FD
		push	0FFFFFFCDh
		mov	[ebp+lptstrFilename], eax
		call	sub_4029FD
		push	45h
		mov	edi, eax
		call	sub_4029FD
		push	[ebp+Rect.bottom]
		mov	[ebp+puLen], eax
		call	sub_4056A1
		test	eax, eax
		jnz	short loc_40207A
		push	21h
		call	sub_4029FD

loc_40207A:				; CODE XREF: sub_401434+C3Dj
		lea	eax, [ebp+FilePart]
		push	eax		; ppv
		push	offset riid	; riid
		push	1		; dwClsContext
		push	ebx		; pUnkOuter
		push	offset rclsid	; rclsid
		call	ds:CoCreateInstance
		cmp	eax, ebx
		jl	loc_402173
		mov	eax, [ebp+FilePart]
		lea	edx, [ebp+lpString2]
		push	edx
		push	offset dword_4074A0
		mov	ecx, [eax]
		push	eax
		call	dword ptr [ecx]
		mov	esi, eax
		cmp	esi, ebx
		jl	loc_402166
		mov	eax, [ebp+FilePart]
		push	[ebp+Rect.bottom]
		mov	ecx, [eax]
		push	eax
		call	dword ptr [ecx+50h]
		test	byte ptr [ebp+FileTime2.dwHighDateTime+1], 80h
		mov	esi, eax
		jnz	short loc_4020D6
		mov	eax, [ebp+FilePart]
		push	offset Directory
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+24h]

loc_4020D6:				; CODE XREF: sub_401434+C92j
		mov	eax, [ebp+FileTime2.dwHighDateTime]
		sar	eax, 8
		and	eax, 7Fh
		jz	short loc_4020EB
		mov	ecx, [ebp+FilePart]
		push	eax
		push	ecx
		mov	edx, [ecx]
		call	dword ptr [edx+3Ch]

loc_4020EB:				; CODE XREF: sub_401434+CABj
		mov	ecx, [ebp+FileTime2.dwHighDateTime]
		mov	eax, [ebp+FilePart]
		sar	ecx, 10h
		mov	edx, [eax]
		push	ecx
		push	eax
		call	dword ptr [edx+34h]
		cmp	[edi], bl
		jz	short loc_402113
		mov	edx, [ebp+FileTime2.dwHighDateTime]
		mov	eax, [ebp+FilePart]
		and	edx, 0FFh
		mov	ecx, [eax]
		push	edx
		push	edi
		push	eax
		call	dword ptr [ecx+44h]

loc_402113:				; CODE XREF: sub_401434+CC9j
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
		cmp	esi, ebx
		jl	short loc_40215D
		push	400h		; cchWideChar
		mov	esi, 80004005h
		push	[ebp+Rect.bottom] ; lpWideCharStr
		push	0FFFFFFFFh	; cbMultiByte
		push	[ebp+dwHandle]	; lpMultiByteStr
		push	ebx		; dwFlags
		push	ebx		; CodePage
		call	ds:MultiByteToWideChar
		test	eax, eax
		jz	short loc_40215D
		mov	eax, [ebp+lpString2]
		push	1
		push	[ebp+Rect.bottom]
		mov	ecx, [eax]
		push	eax
		call	dword ptr [ecx+18h]
		mov	esi, eax

loc_40215D:				; CODE XREF: sub_401434+CF9j
					; sub_401434+D17j
		mov	eax, [ebp+lpString2]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]

loc_402166:				; CODE XREF: sub_401434+C7Aj
		mov	eax, [ebp+FilePart]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		cmp	esi, ebx
		jge	short loc_402186

loc_402173:				; CODE XREF: sub_401434+C5Fj
		mov	[ebp+var_4], 1
		push	0FFFFFFF0h

loc_40217C:				; CODE XREF: sub_401434+206j
					; sub_401434+243j ...
		call	sub_401423
		jmp	loc_402892	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_402186:				; CODE XREF: sub_401434+D3Dj
		push	0FFFFFFF4h
		jmp	short loc_40217C
; ---------------------------------------------------------------------------

loc_40218A:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		push	ebx		; jumptable 00401489 case 46
		call	sub_4029FD
		push	11h
		mov	esi, eax
		call	sub_4029FD
		push	23h
		mov	edi, eax
		call	sub_4029FD
		push	esi		; lpFileName
		mov	[ebp+FilePart],	eax
		call	sub_405EA8
		test	eax, eax
		jnz	short loc_4021BC

loc_4021AF:				; CODE XREF: sub_401434+DD6j
		push	ebx		; lpString
		push	0FFFFFFF9h	; int
		call	sub_404E8F
		jmp	loc_402663
; ---------------------------------------------------------------------------

loc_4021BC:				; CODE XREF: sub_401434+D79j
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
		call	sub_404E8F
		lea	eax, [ebp+FileOp]
		push	eax		; lpFileOp
		call	ds:SHFileOperationA
		test	eax, eax
		jz	loc_402892	; jumptable 00401489 default case
		jmp	short loc_4021AF
; ---------------------------------------------------------------------------

loc_40220C:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		cmp	eax, 0BADF00Dh	; jumptable 00401489 case 47
		jz	short loc_402230

loc_402213:				; CODE XREF: sub_401434+6EDj
					; sub_401434+6FBj
		push	200010h
		push	0FFFFFFE8h	; int
		push	ebx		; lpString1
		call	sub_405BC6
		push	eax

loc_402221:				; CODE XREF: sub_401434+4AAj
		call	sub_4053B8

loc_402226:				; CODE XREF: sub_401434+63j
					; sub_401434+71j ...
		mov	eax, 7FFFFFFFh
		jmp	loc_40289D	; jumptable 00401489 case 2
; ---------------------------------------------------------------------------

loc_402230:				; CODE XREF: sub_401434+DDDj
		inc	dword_42E454
		jmp	loc_402892	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_40223B:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		xor	esi, esi	; jumptable 00401489 case 48
		xor	edi, edi
		cmp	eax, ebx
		jz	short loc_40224E
		push	ebx
		call	sub_4029FD
		mov	edx, [ebp+nCmdShow]
		mov	esi, eax

loc_40224E:				; CODE XREF: sub_401434+E0Dj
		cmp	edx, ebx
		jz	short loc_40225B
		push	11h
		call	sub_4029FD
		mov	edi, eax

loc_40225B:				; CODE XREF: sub_401434+E1Cj
		cmp	[ebp+FileTime2.dwHighDateTime],	ebx
		jz	short loc_402269
		push	22h
		call	sub_4029FD
		mov	ebx, eax

loc_402269:				; CODE XREF: sub_401434+E2Aj
		push	0FFFFFFCDh
		call	sub_4029FD
		push	eax		; lpFileName
		push	ebx		; lpString
		push	edi		; lpKeyName
		push	esi		; lpAppName
		call	ds:WritePrivateProfileStringA
		jmp	loc_4015A6
; ---------------------------------------------------------------------------

loc_40227F:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		mov	ax, word_409010	; jumptable 00401489 case 49
		push	1
		mov	word ptr [ebp+FilePart+2], ax
		call	sub_4029FD
		push	12h
		mov	edi, eax
		call	sub_4029FD
		push	0FFFFFFDDh
		mov	[ebp+dwHandle],	eax
		call	sub_4029FD
		push	eax		; lpFileName
		push	3FFh		; nSize
		lea	eax, [ebp+FilePart+2]
		push	esi		; lpReturnedString
		push	eax		; lpDefault
		push	[ebp+dwHandle]	; lpKeyName
		push	edi		; lpAppName
		call	ds:GetPrivateProfileStringA
		cmp	byte ptr [esi],	0Ah
		jmp	loc_401721
; ---------------------------------------------------------------------------

loc_4022C0:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		cmp	[ebp+FileTime2.dwHighDateTime],	ebx ; jumptable	00401489 case 50
		jnz	short loc_4022F0
		push	2		; phkResult
		call	sub_402B07
		mov	esi, eax
		cmp	esi, ebx
		jz	loc_402663
		push	33h
		call	sub_4029FD
		push	eax		; lpValueName
		push	esi		; hKey
		call	ds:RegDeleteValueA
		push	esi		; hKey
		mov	edi, eax
		call	ds:RegCloseKey
		jmp	short loc_40230F
; ---------------------------------------------------------------------------

loc_4022F0:				; CODE XREF: sub_401434+E8Fj
		push	22h
		call	sub_4029FD
		mov	ecx, [ebp+FileTime2.dwHighDateTime]
		and	ecx, 2
		push	ecx		; int
		push	eax		; lpSubKey
		push	[ebp+nCmdShow]
		call	sub_402AF2
		push	eax		; hKey
		call	sub_402A3D
		mov	edi, eax

loc_40230F:				; CODE XREF: sub_401434+EBAj
		cmp	edi, ebx
		jz	loc_402892	; jumptable 00401489 default case
		jmp	loc_402663
; ---------------------------------------------------------------------------

loc_40231C:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		push	eax		; jumptable 00401489 case 51
		call	sub_402AF2
		mov	esi, [ebp+FileTime2.dwHighDateTime]
		mov	edi, eax
		mov	eax, [ebp+var_10]
		push	2
		mov	[ebp+dwHandle],	eax
		call	sub_4029FD
		push	11h
		mov	[ebp+puLen], eax
		call	sub_4029FD
		lea	ecx, [ebp+FilePart]
		push	ebx		; lpdwDisposition
		push	ecx		; phkResult
		mov	ecx, dword_42E470
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
		jnz	loc_402892	; jumptable 00401489 default case
		cmp	esi, 1
		mov	edi, offset Data
		jnz	short loc_402380
		push	23h
		call	sub_4029FD
		push	edi		; lpString
		call	lstrlenA
		inc	eax

loc_402380:				; CODE XREF: sub_401434+F3Cj
		cmp	esi, 4
		jnz	short loc_402393
		push	3
		call	sub_4029E0
		push	esi
		mov	Data, eax
		pop	eax

loc_402393:				; CODE XREF: sub_401434+F4Fj
		cmp	esi, 3
		jnz	short loc_4023A7
		push	0C00h		; Buffer
		push	edi		; DWORD
		push	ebx		; hFile
		push	[ebp+FileTime2.dwLowDateTime] ;	nDenominator
		call	sub_402E62

loc_4023A7:				; CODE XREF: sub_401434+F62j
		push	eax		; cbData
		push	edi		; lpData
		push	[ebp+dwHandle]	; dwType
		push	ebx		; Reserved
		push	[ebp+puLen]	; lpValueName
		push	[ebp+FilePart]	; hKey
		call	ds:RegSetValueExA
		test	eax, eax
		jnz	short loc_4023C0
		mov	[ebp+var_4], ebx

loc_4023C0:				; CODE XREF: sub_401434+F87j
		push	[ebp+FilePart]
		jmp	loc_402490
; ---------------------------------------------------------------------------

loc_4023C8:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		push	20019h		; jumptable 00401489 case 52
		call	sub_402B07
		push	33h
		mov	edi, eax
		call	sub_4029FD
		cmp	edi, ebx
		mov	[esi], bl
		jz	loc_402663
		lea	ecx, [ebp+dwHandle]
		mov	[ebp+dwHandle],	400h
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
		jnz	short loc_402433
		cmp	[ebp+FilePart],	4
		jz	short loc_40241E
		cmp	[ebp+FilePart],	ecx
		jz	short loc_402416
		cmp	[ebp+FilePart],	2
		jnz	short loc_402433

loc_402416:				; CODE XREF: sub_401434+FDAj
		mov	eax, [ebp+FileTime2.dwHighDateTime]
		mov	[ebp+var_4], eax
		jmp	short loc_402489
; ---------------------------------------------------------------------------

loc_40241E:				; CODE XREF: sub_401434+FD5j
		push	dword ptr [esi]	; int
		xor	eax, eax
		cmp	[ebp+FileTime2.dwHighDateTime],	ebx
		push	esi		; LPSTR
		setz	al
		mov	[ebp+var_4], eax
		call	sub_405B02
		jmp	short loc_40248F
; ---------------------------------------------------------------------------

loc_402433:				; CODE XREF: sub_401434+FCFj
					; sub_401434+FE0j
		mov	[esi], bl
		mov	[ebp+var_4], ecx
		jmp	short loc_40248F
; ---------------------------------------------------------------------------

loc_40243A:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		push	20019h		; jumptable 00401489 case 53
		call	sub_402B07
		push	3
		mov	edi, eax
		call	sub_4029E0
		cmp	edi, ebx
		mov	[esi], bl
		jz	loc_402663
		cmp	[ebp+FileTime2.dwHighDateTime],	ebx
		mov	ecx, 3FFh
		mov	[ebp+FilePart],	ecx
		jz	short loc_402470
		push	ecx		; cchName
		push	esi		; lpName
		push	eax		; dwIndex
		push	edi		; hKey
		call	ds:RegEnumKeyA
		jmp	short loc_402489
; ---------------------------------------------------------------------------

loc_402470:				; CODE XREF: sub_401434+102Ej
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
		jnz	loc_402663

loc_402489:				; CODE XREF: sub_401434+FE8j
					; sub_401434+103Aj
		mov	[esi+3FFh], bl

loc_40248F:				; CODE XREF: sub_401434+FFDj
					; sub_401434+1004j
		push	edi		; hKey

loc_402490:				; CODE XREF: sub_401434+F8Fj
		call	ds:RegCloseKey
		jmp	loc_402892	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_40249B:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		cmp	[esi], bl	; jumptable 00401489 case 54
		jz	loc_402892	; jumptable 00401489 default case
		push	esi
		call	sub_405B1B
		push	eax
		jmp	loc_401EA1
; ---------------------------------------------------------------------------

loc_4024AF:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		push	0FFFFFFEDh	; jumptable 00401489 case 55
		call	sub_4029FD
		push	[ebp+dwBytes]	; dwCreationDisposition
		push	[ebp+nCmdShow]	; dwDesiredAccess
		push	eax		; lpFileName
		call	sub_405835
		cmp	eax, 0FFFFFFFFh
		jz	loc_402661

loc_4024CB:				; CODE XREF: sub_401434+506j
					; sub_401434+877j ...
		push	eax
		jmp	loc_401561
; ---------------------------------------------------------------------------

loc_4024D1:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		cmp	[ebp+dwBytes], ebx ; jumptable 00401489	case 56
		jz	short loc_4024E7
		push	1
		call	sub_4029E0
		mov	byte_4097E0, al
		xor	eax, eax
		inc	eax
		jmp	short loc_4024F4
; ---------------------------------------------------------------------------

loc_4024E7:				; CODE XREF: sub_401434+10A0j
		push	11h
		call	sub_4029FD
		push	eax		; lpString
		call	lstrlenA

loc_4024F4:				; CODE XREF: sub_401434+10B1j
		cmp	[esi], bl
		jz	loc_402663
		lea	ecx, [ebp+FilePart]
		push	ebx		; lpOverlapped
		push	ecx		; lpNumberOfBytesWritten
		push	eax		; nNumberOfBytesToWrite
		push	offset byte_4097E0 ; lpBuffer
		push	esi
		call	sub_405B1B
		push	eax		; hFile
		call	ds:WriteFile
		jmp	loc_4015A6
; ---------------------------------------------------------------------------

loc_402519:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		push	2		; jumptable 00401489 case 57
		mov	[ebp+lptstrFilename], ebx
		call	sub_4029E0
		cmp	eax, 1
		mov	[ebp+Rect.bottom], eax
		jl	loc_402892	; jumptable 00401489 default case
		mov	ecx, 3FFh
		cmp	eax, ecx
		jle	short loc_40253B
		mov	[ebp+Rect.bottom], ecx

loc_40253B:				; CODE XREF: sub_401434+1102j
		cmp	[esi], bl
		jz	loc_4025C5
		push	esi
		mov	byte ptr [ebp+FilePart+3], bl
		call	sub_405B1B
		cmp	[ebp+Rect.bottom], ebx
		mov	[ebp+lpString2], eax
		jle	short loc_4025C5
		mov	esi, [ebp+lptstrFilename]

loc_402557:				; CODE XREF: sub_401434+1157j
		lea	eax, [ebp+Buffer]
		push	1		; nNumberOfBytesToRead
		push	eax		; lpBuffer
		push	[ebp+lpString2]	; hFile
		call	sub_4058AD
		test	eax, eax
		jz	short loc_4025C8
		cmp	[ebp+FileTime2.dwLowDateTime], ebx
		jnz	short loc_40258F
		cmp	byte ptr [ebp+FilePart+3], 0Dh
		jz	short loc_40259F
		cmp	byte ptr [ebp+FilePart+3], 0Ah
		jz	short loc_40259F
		mov	al, [ebp+Buffer]
		mov	[esi+edi], al
		inc	esi
		cmp	al, bl
		mov	byte ptr [ebp+FilePart+3], al
		jz	short loc_4025C8
		cmp	esi, [ebp+Rect.bottom]
		jl	short loc_402557
		jmp	short loc_4025C8
; ---------------------------------------------------------------------------

loc_40258F:				; CODE XREF: sub_401434+1138j
		movzx	eax, [ebp+Buffer]
		push	eax		; int
		push	edi		; LPSTR
		call	sub_405B02
		jmp	loc_40289B
; ---------------------------------------------------------------------------

loc_40259F:				; CODE XREF: sub_401434+113Ej
					; sub_401434+1144j
		mov	al, [ebp+Buffer]
		cmp	byte ptr [ebp+FilePart+3], al
		jz	short loc_4025B5
		cmp	al, 0Dh
		jz	short loc_4025AF
		cmp	al, 0Ah
		jnz	short loc_4025B5

loc_4025AF:				; CODE XREF: sub_401434+1175j
		mov	[esi+edi], al
		inc	esi
		jmp	short loc_4025C8
; ---------------------------------------------------------------------------

loc_4025B5:				; CODE XREF: sub_401434+1171j
					; sub_401434+1179j
		push	1		; dwMoveMethod
		push	ebx		; lpDistanceToMoveHigh
		push	0FFFFFFFFh	; lDistanceToMove
		push	[ebp+lpString2]	; hFile
		call	ds:SetFilePointer
		jmp	short loc_4025C8
; ---------------------------------------------------------------------------

loc_4025C5:				; CODE XREF: sub_401434+1109j
					; sub_401434+111Ej
		mov	esi, [ebp+lptstrFilename]

loc_4025C8:				; CODE XREF: sub_401434+1133j
					; sub_401434+1152j ...
		mov	[esi+edi], bl
		cmp	esi, ebx
		jmp	loc_4015A8
; ---------------------------------------------------------------------------

loc_4025D2:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		cmp	[esi], bl	; jumptable 00401489 case 58
		jz	loc_402892	; jumptable 00401489 default case
		push	[ebp+FileTime2.dwLowDateTime] ;	dwMoveMethod
		push	ebx		; lpDistanceToMoveHigh
		push	2
		call	sub_4029E0
		push	eax		; lDistanceToMove
		push	esi
		call	sub_405B1B
		push	eax		; hFile
		call	ds:SetFilePointer
		cmp	[ebp+nCmdShow],	ebx
		jl	loc_402892	; jumptable 00401489 default case
		jmp	loc_402838
; ---------------------------------------------------------------------------

loc_402601:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		cmp	[esi], bl	; jumptable 00401489 case 59
		jz	loc_402892	; jumptable 00401489 default case
		push	esi
		call	sub_405B1B
		push	eax		; hFindFile
		call	ds:FindClose
		jmp	loc_402892	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_40261B:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		cmp	[edi], bl	; jumptable 00401489 case 60
		jz	short loc_402637
		lea	eax, [ebp+FindFileData]
		push	eax		; lpFindFileData
		push	edi
		call	sub_405B1B
		push	eax		; hFindFile
		call	ds:FindNextFileA
		test	eax, eax
		jnz	short loc_402676

loc_402637:				; CODE XREF: sub_401434+2F3j
					; sub_401434+11E9j
		mov	[ebp+var_4], 1
		mov	[esi], bl
		jmp	loc_402892	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_402645:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		push	2		; jumptable 00401489 case 61
		call	sub_4029FD
		lea	ecx, [ebp+FindFileData]
		push	ecx		; lpFindFileData
		push	eax		; lpFileName
		call	ds:FindFirstFileA
		cmp	eax, 0FFFFFFFFh
		jnz	short loc_40266F
		mov	[edi], bl

loc_402661:				; CODE XREF: sub_401434+1091j
		mov	[esi], bl

loc_402663:				; CODE XREF: sub_401434+17Aj
					; sub_401434+24Bj ...
		mov	[ebp+var_4], 1
		jmp	loc_402892	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_40266F:				; CODE XREF: sub_401434+1229j
		push	eax		; int
		push	edi		; LPSTR
		call	sub_405B02

loc_402676:				; CODE XREF: sub_401434+1201j
		lea	eax, [ebp+FindFileData.cFileName]
		push	eax
		push	esi
		jmp	loc_4027B8
; ---------------------------------------------------------------------------

loc_402683:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		push	0FFFFFFF0h	; jumptable 00401489 case 62
		mov	[ebp+lpString2], 0FFFFFD66h
		call	sub_4029FD
		mov	esi, eax
		push	esi
		mov	[ebp+puLen], esi
		call	sub_4056A1
		test	eax, eax
		jnz	short loc_4026A7
		push	0FFFFFFEDh
		call	sub_4029FD

loc_4026A7:				; CODE XREF: sub_401434+126Aj
		push	esi		; lpFileName
		call	sub_405810
		push	2		; dwCreationDisposition
		push	40000000h	; dwDesiredAccess
		push	esi		; lpFileName
		call	sub_405835
		cmp	eax, 0FFFFFFFFh
		mov	[ebp+FilePart],	eax
		jz	loc_402763
		mov	eax, dwBytes
		mov	esi, ds:GlobalAlloc
		push	eax		; dwBytes
		push	40h		; uFlags
		mov	[ebp+lptstrFilename], eax
		call	esi ; GlobalAlloc
		mov	edi, eax
		cmp	edi, ebx
		jz	short loc_40275A
		push	ebx		; lDistanceToMove
		call	sub_403097
		push	[ebp+lptstrFilename] ; nNumberOfBytesToRead
		push	edi		; lpBuffer
		call	sub_403081
		push	[ebp+dwBytes]	; dwBytes
		push	40h		; uFlags
		call	esi ; GlobalAlloc
		mov	esi, eax
		cmp	esi, ebx
		mov	[ebp+dwHandle],	esi
		jz	short loc_402732
		push	[ebp+dwBytes]	; Buffer
		push	esi		; DWORD
		push	ebx		; hFile
		push	[ebp+nCmdShow]	; nDenominator
		call	sub_402E62
		jmp	short loc_402725
; ---------------------------------------------------------------------------

loc_40270D:				; CODE XREF: sub_401434+12F3j
		mov	ecx, [esi]
		mov	eax, [esi+4]
		add	esi, 8
		push	ecx
		add	eax, edi
		push	esi
		push	eax
		mov	[ebp+Rect.right], ecx
		call	sub_4057F0
		add	esi, [ebp+Rect.right]

loc_402725:				; CODE XREF: sub_401434+12D7j
		cmp	[esi], bl
		jnz	short loc_40270D
		push	[ebp+dwHandle]	; hMem
		call	ds:GlobalFree

loc_402732:				; CODE XREF: sub_401434+12C8j
		lea	eax, [ebp+lpString2]
		push	ebx		; lpOverlapped
		push	eax		; lpNumberOfBytesWritten
		push	[ebp+lptstrFilename] ; nNumberOfBytesToWrite
		push	edi		; lpBuffer
		push	[ebp+FilePart]	; hFile
		call	ds:WriteFile
		push	edi		; hMem
		call	ds:GlobalFree
		push	ebx		; Buffer
		push	ebx		; DWORD
		push	[ebp+FilePart]	; hFile
		push	0FFFFFFFFh	; nDenominator
		call	sub_402E62
		mov	[ebp+lpString2], eax

loc_40275A:				; CODE XREF: sub_401434+12A9j
		push	[ebp+FilePart]	; hObject
		call	ds:CloseHandle

loc_402763:				; CODE XREF: sub_401434+128Cj
		cmp	[ebp+lpString2], ebx
		push	0FFFFFFF3h
		pop	esi
		jge	short loc_40277E
		push	0FFFFFFEFh
		pop	esi
		push	[ebp+puLen]	; lpFileName
		call	ds:DeleteFileA
		mov	[ebp+var_4], 1

loc_40277E:				; CODE XREF: sub_401434+1335j
		push	esi
		jmp	loc_40217C
; ---------------------------------------------------------------------------

loc_402784:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		push	ebx		; jumptable 00401489 case 63
		call	sub_4029E0
		cmp	eax, dword_42E3EC
		mov	[ebp+FilePart],	eax
		jnb	loc_402663
		mov	esi, eax
		mov	eax, [ebp+dwBytes]
		imul	esi, 418h
		add	esi, dword_42E3E8
		cmp	eax, ebx
		jl	short loc_4027C5
		mov	ecx, [esi+eax*4]
		jnz	short loc_4027C2
		add	esi, 18h
		push	esi		; lpString2
		push	edi		; lpString1

loc_4027B8:				; CODE XREF: sub_401434+729j
					; sub_401434+124Aj
		call	sub_405BA4
		jmp	loc_402892	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_4027C2:				; CODE XREF: sub_401434+137Dj
		push	ecx
		jmp	short loc_402839
; ---------------------------------------------------------------------------

loc_4027C5:				; CODE XREF: sub_401434+1378j
		or	ecx, 0FFFFFFFFh
		sub	ecx, eax
		mov	[ebp+dwBytes], ecx
		jz	short loc_4027DB
		push	1
		call	sub_4029E0
		mov	[ebp+nCmdShow],	eax
		jmp	short loc_4027EB
; ---------------------------------------------------------------------------

loc_4027DB:				; CODE XREF: sub_401434+1399j
		push	[ebp+FileTime2.dwHighDateTime] ; int
		lea	eax, [esi+18h]
		push	eax		; lpString1
		call	sub_405BC6
		or	byte ptr [esi+9], 1

loc_4027EB:				; CODE XREF: sub_401434+13A5j
		mov	eax, [ebp+dwBytes]
		mov	ecx, [ebp+nCmdShow]
		mov	[esi+eax*4], ecx
		cmp	[ebp+FileTime2.dwLowDateTime], ebx
		jz	loc_402892	; jumptable 00401489 default case
		push	[ebp+FilePart]
		call	sub_40117D
		jmp	loc_402892	; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_40280A:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		push	ebx		; jumptable 00401489 case 64
		call	sub_4029E0
		cmp	eax, 20h
		jnb	loc_402663
		cmp	[ebp+FileTime2.dwLowDateTime], ebx
		jz	short loc_402841
		cmp	[ebp+dwBytes], ebx
		jz	short loc_402832
		push	eax
		call	sub_401299
		push	ebx
		push	ebx
		call	sub_4011EF
		jmp	short loc_402892 ; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_402832:				; CODE XREF: sub_401434+13EDj
		push	ebx
		call	sub_4012E2

loc_402838:				; CODE XREF: sub_401434+11C8j
		push	eax		; int

loc_402839:				; CODE XREF: sub_401434+138Fj
		push	edi		; LPSTR

loc_40283A:				; CODE XREF: sub_401434+12Ej
		call	sub_405B02
		jmp	short loc_402892 ; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_402841:				; CODE XREF: sub_401434+13E8j
		cmp	[ebp+dwBytes], ebx
		jz	short loc_402858
		mov	edx, dword_42E3D0
		mov	ecx, [ebp+nCmdShow]
		mov	[edx+eax*4+94h], ecx
		jmp	short loc_402892 ; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_402858:				; CODE XREF: sub_401434+1410j
		mov	ecx, dword_42E3D0
		push	dword ptr [ecx+eax*4+94h] ; int
		push	edi		; lpString1
		call	sub_405BC6
		jmp	short loc_402892 ; jumptable 00401489 default case
; ---------------------------------------------------------------------------

loc_40286D:				; CODE XREF: sub_401434+55j
					; DATA XREF: .text:off_4028A4o
		mov	ecx, dword_42A840 ; jumptable 00401489 case 67
		push	ebx		; lParam
		and	ecx, eax
		push	ecx		; wParam
		push	0Bh		; Msg
		push	[ebp+Rect.bottom] ; hWnd
		call	ds:SendMessageA
		cmp	[ebp+var_24], ebx
		jz	short loc_402892 ; jumptable 00401489 default case
		push	ebx		; bErase
		push	ebx		; lpRect
		push	[ebp+Rect.bottom] ; hWnd
		call	ds:InvalidateRect

loc_402892:				; CODE XREF: sub_401434+4Fj
					; sub_401434+55j ...
		mov	eax, [ebp+var_4] ; jumptable 00401489 default case
		add	dword_42E448, eax

loc_40289B:				; CODE XREF: sub_401434+42Bj
					; sub_401434+1166j
		xor	eax, eax

loc_40289D:				; CODE XREF: sub_401434+55j
					; sub_401434+91j ...
		pop	edi		; jumptable 00401489 case 2
		pop	esi
		pop	ebx
		leave
		retn	4
sub_401434	endp

; ---------------------------------------------------------------------------
off_4028A4	dd offset loc_40289D, offset loc_401490, offset	loc_40149C
					; DATA XREF: sub_401434+55r
		dd offset loc_4014B7, offset loc_4014CA, offset	loc_4014D6 ; jump table	for switch statement
		dd offset loc_4014F0, offset loc_401567, offset	loc_401595
		dd offset loc_4015B3, offset loc_40163F, offset	loc_4014FE
		dd offset loc_401539, offset loc_40155A, offset	loc_401650
		dd offset loc_4016A1, offset loc_401705, offset	loc_40172C
		dd offset loc_40173F, offset loc_4018E3, offset	loc_4018E6
		dd offset loc_401918, offset loc_40192D, offset	loc_40193F
		dd offset loc_4019C0, offset loc_4019F1, offset	loc_401A31
		dd offset loc_401A63, offset loc_401AF0, offset	loc_401B11
		dd offset loc_401BB8, offset loc_401BB8, offset	loc_401C78
		dd offset loc_401C95, offset loc_401CB0, offset	loc_401CCC
		dd offset loc_401D26, offset loc_401DAC, offset	loc_401DD8
		dd offset loc_401E32, offset loc_401EAC, offset	loc_401EDC
		dd offset loc_401F67, offset loc_402036, offset	loc_40218A
		dd offset loc_40220C, offset loc_40223B, offset	loc_40227F
		dd offset loc_4022C0, offset loc_40231C, offset	loc_4023C8
		dd offset loc_40243A, offset loc_40249B, offset	loc_4024AF
		dd offset loc_4024D1, offset loc_402519, offset	loc_4025D2
		dd offset loc_402601, offset loc_40261B, offset	loc_402645
		dd offset loc_402683, offset loc_402784, offset	loc_40280A
		dd offset loc_402892, offset loc_402892, offset	loc_40286D
off_4029AC	dd offset loc_401A84	; DATA XREF: sub_401434+649r
		dd offset loc_401A88	; jump table for switch	statement
		dd offset loc_401A8C
		dd offset loc_401A93
		dd offset loc_401AA0
		dd offset loc_401AA4
		dd offset loc_401AA8
		dd offset loc_401AAC
		dd offset loc_401AB5
		dd offset loc_401ABF
		dd offset loc_401ACC
		dd offset loc_401AE4
		dd offset loc_401AE8

; =============== S U B	R O U T	I N E =======================================


sub_4029E0	proc near		; CODE XREF: sub_401434+A3p
					; sub_401434+E0p ...

arg_0		= dword	ptr  4

		mov	eax, [esp+arg_0]
		mov	ecx, dword_40A7E0
		push	dword ptr [ecx+eax*4] ;	int
		push	0		; lpString1
		call	sub_405BC6
		push	eax
		call	sub_405B1B
		retn	4
sub_4029E0	endp


; =============== S U B	R O U T	I N E =======================================


sub_4029FD	proc near		; CODE XREF: sub_401434+163p
					; sub_401434+181p ...

arg_0		= dword	ptr  4

		push	esi
		mov	esi, [esp+4+arg_0]
		test	esi, esi
		push	edi
		mov	eax, esi
		jge	short loc_402A0B
		neg	eax

loc_402A0B:				; CODE XREF: sub_4029FD+Aj
		mov	edx, dword_40A7E0
		mov	ecx, eax
		and	ecx, 0Fh
		sar	eax, 4
		push	dword ptr [edx+ecx*4] ;	int
		shl	eax, 0Ah
		add	eax, offset String1
		push	eax		; lpString1
		call	sub_405BC6
		test	esi, esi
		mov	edi, eax
		jge	short loc_402A36
		push	edi		; lpsz
		call	sub_405E0F

loc_402A36:				; CODE XREF: sub_4029FD+31j
		mov	eax, edi
		pop	edi
		pop	esi
		retn	4
sub_4029FD	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_402A3D(HKEY	hKey, LPCSTR lpSubKey, int)
sub_402A3D	proc near		; CODE XREF: sub_401434+ED4p
					; sub_402A3D+48p

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
		mov	eax, dword_42E470
		or	al, 8
		xor	ebx, ebx
		push	eax		; samDesired
		push	ebx		; ulOptions
		push	[ebp+lpSubKey]	; lpSubKey
		push	[ebp+hKey]	; hKey
		call	ds:RegOpenKeyExA
		cmp	eax, ebx
		jnz	short loc_402AD1
		mov	esi, ds:RegEnumKeyA
		mov	edi, 105h
		jmp	short loc_402A8E
; ---------------------------------------------------------------------------

loc_402A75:				; CODE XREF: sub_402A3D+61j
		cmp	[ebp+arg_8], ebx
		jnz	short loc_402AC5
		lea	eax, [ebp+Name]
		push	ebx		; int
		push	eax		; lpSubKey
		push	[ebp+phkResult]	; hKey
		call	sub_402A3D
		test	eax, eax
		jnz	short loc_402AA0

loc_402A8E:				; CODE XREF: sub_402A3D+36j
		lea	eax, [ebp+Name]
		push	edi		; cchName
		push	eax		; lpName
		push	ebx		; dwIndex
		push	[ebp+phkResult]	; hKey
		call	esi ; RegEnumKeyA
		test	eax, eax
		jz	short loc_402A75

loc_402AA0:				; CODE XREF: sub_402A3D+4Fj
		push	[ebp+phkResult]	; hKey
		call	ds:RegCloseKey
		push	3
		call	sub_405ECF
		cmp	eax, ebx
		jz	short loc_402AD8
		push	ebx
		push	dword_42E470
		push	[ebp+lpSubKey]
		push	[ebp+hKey]
		call	eax
		jmp	short loc_402AD1
; ---------------------------------------------------------------------------

loc_402AC5:				; CODE XREF: sub_402A3D+3Bj
		push	[ebp+phkResult]	; hKey
		call	ds:RegCloseKey

loc_402ACE:				; CODE XREF: sub_402A3D+A1j
					; sub_402A3D+B1j
		xor	eax, eax
		inc	eax

loc_402AD1:				; CODE XREF: sub_402A3D+29j
					; sub_402A3D+86j ...
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn	0Ch
; ---------------------------------------------------------------------------

loc_402AD8:				; CODE XREF: sub_402A3D+75j
		cmp	dword_42E470, ebx
		jnz	short loc_402ACE
		push	[ebp+lpSubKey]	; lpSubKey
		push	[ebp+hKey]	; hKey
		call	ds:RegDeleteKeyA
		test	eax, eax
		jnz	short loc_402ACE
		jmp	short loc_402AD1
sub_402A3D	endp


; =============== S U B	R O U T	I N E =======================================


sub_402AF2	proc near		; CODE XREF: sub_401434+ECEp
					; sub_401434+EE9p ...

arg_0		= dword	ptr  4

		mov	eax, [esp+arg_0]
		test	eax, eax
		jnz	short locret_402B04
		mov	eax, dword_42E444
		add	eax, 80000001h

locret_402B04:				; CODE XREF: sub_402AF2+6j
		retn	4
sub_402AF2	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_402B07(HKEY	phkResult)
sub_402B07	proc near		; CODE XREF: sub_401434+E93p
					; sub_401434+F99p ...

phkResult	= dword	ptr  8

		push	ebp
		mov	ebp, esp
		lea	eax, [ebp+phkResult]
		push	eax		; phkResult
		mov	eax, dword_42E470
		or	eax, [ebp+phkResult]
		push	eax		; samDesired
		push	0		; ulOptions
		push	22h
		call	sub_4029FD
		push	eax		; lpSubKey
		mov	eax, dword_40A7E0
		push	dword ptr [eax+4]
		call	sub_402AF2
		push	eax		; hKey
		call	ds:RegOpenKeyExA
		neg	eax
		sbb	eax, eax
		not	eax
		and	eax, [ebp+phkResult]
		pop	ebp
		retn	4
sub_402B07	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; INT_PTR __stdcall DialogFunc(HWND, UINT, WPARAM, LPARAM)
DialogFunc	proc near		; DATA XREF: sub_402BC5+40o

String		= byte ptr -40h
hWnd		= dword	ptr  8
arg_4		= dword	ptr  0Ch

		push	ebp
		mov	ebp, esp
		sub	esp, 40h
		cmp	[ebp+arg_4], 110h
		jnz	short loc_402B6A
		push	0		; lpTimerFunc
		push	0FAh		; uElapse
		push	1		; nIDEvent
		push	[ebp+hWnd]	; hWnd
		call	ds:SetTimer
		mov	[ebp+arg_4], 113h

loc_402B6A:				; CODE XREF: DialogFunc+Dj
		cmp	[ebp+arg_4], 113h
		jnz	short loc_402BBF
		mov	ecx, lDistanceToMove
		mov	eax, dword_4283F8
		cmp	ecx, eax
		jl	short loc_402B84
		mov	ecx, eax

loc_402B84:				; CODE XREF: DialogFunc+3Ej
		push	eax		; nDenominator
		push	64h		; nNumerator
		push	ecx		; nNumber
		call	ds:MulDiv
		push	eax
		lea	eax, [ebp+String]
		push	offset aVerifyingInsta ; "verifying installer: %d%%"
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

loc_402BBF:				; CODE XREF: DialogFunc+2Fj
		xor	eax, eax
		leave
		retn	10h
DialogFunc	endp


; =============== S U B	R O U T	I N E =======================================


sub_402BC5	proc near		; CODE XREF: sub_402C29+148p
					; sub_402C29+177p ...

arg_0		= dword	ptr  4

		push	esi
		xor	esi, esi
		cmp	[esp+4+arg_0], esi
		jz	short loc_402BE6
		mov	eax, dword_4203F0
		cmp	eax, esi
		jz	short loc_402BDE
		push	eax		; hWnd
		call	ds:DestroyWindow

loc_402BDE:				; CODE XREF: sub_402BC5+10j
		mov	dword_4203F0, esi
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_402BE6:				; CODE XREF: sub_402BC5+7j
		cmp	dword_4203F0, esi
		jz	short loc_402BF6
		push	esi		; wMsgFilterMin
		call	sub_405F08
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_402BF6:				; CODE XREF: sub_402BC5+27j
		call	ds:GetTickCount
		cmp	eax, dword_42E3CC
		jbe	short loc_402C27
		push	esi		; dwInitParam
		push	offset DialogFunc ; lpDialogFunc
		push	esi		; hWndParent
		push	6Fh		; lpTemplateName
		push	hInstance	; hInstance
		call	ds:CreateDialogParamA
		push	5		; nCmdShow
		push	eax		; hWnd
		mov	dword_4203F0, eax
		call	ds:ShowWindow

loc_402C27:				; CODE XREF: sub_402BC5+3Dj
		pop	esi
		retn
sub_402BC5	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_402C29(int Buffer)
sub_402C29	proc near		; CODE XREF: start+21Bp

var_28		= dword	ptr -28h
var_24		= dword	ptr -24h
var_20		= dword	ptr -20h
var_1C		= dword	ptr -1Ch
var_18		= dword	ptr -18h
dwBytes		= dword	ptr -14h
var_10		= dword	ptr -10h
hFile		= dword	ptr -0Ch
var_8		= dword	ptr -8
var_4		= dword	ptr -4
Buffer		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		sub	esp, 28h
		push	ebx
		push	esi
		xor	ebx, ebx
		push	edi
		mov	[ebp+var_8], ebx
		mov	[ebp+var_4], ebx
		call	ds:GetTickCount
		mov	esi, offset ExistingFileName
		push	400h		; nSize
		add	eax, 3E8h
		push	esi		; lpFilename
		push	ebx		; hModule
		mov	dword_42E3CC, eax
		call	ds:GetModuleFileNameA
		push	3		; dwCreationDisposition
		push	80000000h	; dwDesiredAccess
		push	esi		; lpFileName
		call	sub_405835
		mov	edi, eax
		cmp	edi, 0FFFFFFFFh
		mov	[ebp+hFile], edi
		mov	hFile, edi
		jnz	short loc_402C83
		mov	eax, offset aErrorLaunching ; "Error launching installer"
		jmp	loc_402E5B
; ---------------------------------------------------------------------------

loc_402C83:				; CODE XREF: sub_402C29+4Ej
		push	esi		; lpString2
		mov	esi, offset byte_434C00
		push	esi		; lpString1
		call	sub_405BA4
		push	esi		; lpString
		call	sub_40567B
		push	eax		; lpString2
		push	offset dword_436000 ; lpString1
		call	sub_405BA4
		push	ebx		; lpFileSizeHigh
		push	edi		; hFile
		call	ds:GetFileSize
		cmp	eax, ebx
		mov	dword_4283F8, eax
		mov	esi, eax
		jle	loc_402D9E
		mov	ebx, offset dword_4203F8

loc_402CBC:				; CODE XREF: sub_402C29+16Dj
		mov	eax, dwBytes
		mov	edi, esi
		neg	eax
		sbb	eax, eax
		and	eax, 7E00h
		add	eax, 200h
		cmp	esi, eax
		jl	short loc_402CD7
		mov	edi, eax

loc_402CD7:				; CODE XREF: sub_402C29+AAj
		push	edi		; nNumberOfBytesToRead
		push	ebx		; lpBuffer
		call	sub_403081
		test	eax, eax
		jz	loc_402E08
		cmp	dwBytes, 0
		jnz	short loc_402D69
		push	1Ch
		lea	eax, [ebp+var_28]
		push	ebx
		push	eax
		call	sub_4057F0
		mov	eax, [ebp+var_28]
		test	eax, 0FFFFFFF0h
		jnz	short loc_402D77
		cmp	[ebp+var_24], 0DEADBEEFh
		jnz	short loc_402D77
		cmp	[ebp+var_18], 74736E49h
		jnz	short loc_402D77
		cmp	[ebp+var_1C], 74666F73h
		jnz	short loc_402D77
		cmp	[ebp+var_20], 6C6C754Eh
		jnz	short loc_402D77
		or	[ebp+Buffer], eax
		mov	eax, [ebp+Buffer]
		mov	ecx, lDistanceToMove
		and	eax, 2
		or	dword_42E460, eax
		mov	eax, [ebp+var_10]
		cmp	eax, esi
		mov	dwBytes, ecx
		jg	loc_402E01
		test	byte ptr [ebp+Buffer], 8
		jnz	short loc_402D5B
		test	byte ptr [ebp+Buffer], 4
		jnz	short loc_402D9C

loc_402D5B:				; CODE XREF: sub_402C29+12Aj
		inc	[ebp+var_4]
		lea	esi, [eax-4]
		cmp	edi, esi
		jbe	short loc_402D77
		mov	edi, esi
		jmp	short loc_402D77
; ---------------------------------------------------------------------------

loc_402D69:				; CODE XREF: sub_402C29+C4j
		test	byte ptr [ebp+Buffer], 2
		jnz	short loc_402D77
		push	0
		call	sub_402BC5
		pop	ecx

loc_402D77:				; CODE XREF: sub_402C29+DAj
					; sub_402C29+E3j ...
		cmp	esi, dword_4283F8
		jge	short loc_402D8C
		push	edi
		push	ebx
		push	[ebp+var_8]
		call	sub_405F41
		mov	[ebp+var_8], eax

loc_402D8C:				; CODE XREF: sub_402C29+154j
		add	lDistanceToMove, edi
		sub	esi, edi
		test	esi, esi
		jg	loc_402CBC

loc_402D9C:				; CODE XREF: sub_402C29+130j
		xor	ebx, ebx

loc_402D9E:				; CODE XREF: sub_402C29+88j
		push	1
		call	sub_402BC5
		cmp	dwBytes, ebx
		pop	ecx
		jz	short loc_402E01
		cmp	[ebp+var_4], ebx
		jz	short loc_402DD5
		push	lDistanceToMove	; lDistanceToMove
		call	sub_403097
		lea	eax, [ebp+Buffer]
		push	4		; nNumberOfBytesToRead
		push	eax		; lpBuffer
		call	sub_403081
		test	eax, eax
		jz	short loc_402E01
		mov	eax, [ebp+var_8]
		cmp	eax, [ebp+Buffer]
		jnz	short loc_402E01

loc_402DD5:				; CODE XREF: sub_402C29+188j
		push	[ebp+dwBytes]	; dwBytes
		push	40h		; uFlags
		call	ds:GlobalAlloc
		mov	esi, eax
		mov	eax, dwBytes
		add	eax, 1Ch
		push	eax		; lDistanceToMove
		call	sub_403097
		push	[ebp+dwBytes]	; Buffer
		push	esi		; DWORD
		push	ebx		; hFile
		push	0FFFFFFFFh	; nDenominator
		call	sub_402E62
		cmp	eax, [ebp+dwBytes]
		jz	short loc_402E12

loc_402E01:				; CODE XREF: sub_402C29+120j
					; sub_402C29+183j ...
		mov	eax, offset aInstallerInteg ; "Installer integrity check has failed. C"...
		jmp	short loc_402E5B
; ---------------------------------------------------------------------------

loc_402E08:				; CODE XREF: sub_402C29+B7j
		push	1
		call	sub_402BC5
		pop	ecx
		jmp	short loc_402E01
; ---------------------------------------------------------------------------

loc_402E12:				; CODE XREF: sub_402C29+1D6j
		test	byte ptr [ebp+var_28], 1
		mov	dword_42E3D0, esi
		mov	eax, [esi]
		mov	dword_42E3D8, eax
		jz	short loc_402E2B
		inc	dword_42E3DC

loc_402E2B:				; CODE XREF: sub_402C29+1FAj
		push	8
		lea	eax, [esi+44h]
		pop	ecx

loc_402E31:				; CODE XREF: sub_402C29+20Ej
		sub	eax, 8
		add	[eax], esi
		dec	ecx
		jnz	short loc_402E31
		push	1		; dwMoveMethod
		push	ebx		; lpDistanceToMoveHigh
		push	ebx		; lDistanceToMove
		push	[ebp+hFile]	; hFile
		call	ds:SetFilePointer
		mov	[esi+3Ch], eax
		add	esi, 4
		push	40h
		push	esi
		push	offset dword_42E3E0
		call	sub_4057F0
		xor	eax, eax

loc_402E5B:				; CODE XREF: sub_402C29+55j
					; sub_402C29+1DDj
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn	4
sub_402C29	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_402E62(int nDenominator, HANDLE hFile, DWORD, int Buffer)
sub_402E62	proc near		; CODE XREF: sub_401434+448p
					; sub_401434+F6Ep ...

String		= byte ptr -58h
var_18		= dword	ptr -18h
NumberOfBytesWritten= dword ptr	-14h
var_10		= dword	ptr -10h
lpBuffer	= dword	ptr -0Ch
nNumberOfBytesToWrite= dword ptr -8
var_4		= dword	ptr -4
nDenominator	= dword	ptr  8
hFile		= dword	ptr  0Ch
arg_8		= dword	ptr  10h
Buffer		= dword	ptr  14h

		push	ebp
		mov	ebp, esp
		sub	esp, 58h
		push	ebx
		mov	ebx, [ebp+arg_8]
		push	esi
		mov	esi, [ebp+Buffer]
		push	edi
		xor	edi, edi
		cmp	ebx, edi
		mov	[ebp+nNumberOfBytesToWrite], esi
		jnz	short loc_402E81
		mov	[ebp+nNumberOfBytesToWrite], 8000h

loc_402E81:				; CODE XREF: sub_402E62+16j
		cmp	ebx, edi
		mov	[ebp+var_4], edi
		mov	[ebp+lpBuffer],	ebx
		jnz	short loc_402E92
		mov	[ebp+lpBuffer],	offset dword_4183F0

loc_402E92:				; CODE XREF: sub_402E62+27j
		mov	eax, [ebp+nDenominator]
		cmp	eax, edi
		jl	short loc_402EA7
		mov	ecx, dword_42E418
		add	ecx, eax
		push	ecx		; lDistanceToMove
		call	sub_403097

loc_402EA7:				; CODE XREF: sub_402E62+35j
		lea	eax, [ebp+Buffer]
		push	4		; nNumberOfBytesToRead
		push	eax		; lpBuffer
		call	sub_403081
		test	eax, eax
		jz	loc_40302E
		test	byte ptr [ebp+Buffer+3], 80h
		jz	loc_403017
		mov	ebx, ds:GetTickCount
		call	ebx ; GetTickCount
		and	[ebp+Buffer], 7FFFFFFFh
		mov	[ebp+var_10], eax
		mov	eax, offset dword_40C3D8
		mov	dword_40A838, 8
		mov	dword_4143E0, eax
		mov	dword_4143DC, eax
		mov	eax, [ebp+Buffer]
		mov	dword_40AD54, edi
		mov	dword_40AD50, edi
		mov	dword_4143D8, offset dword_4143D8
		mov	[ebp+nDenominator], eax
		jle	loc_403077

loc_402F11:				; CODE XREF: sub_402E62+1A5j
		mov	esi, 4000h
		cmp	[ebp+Buffer], esi
		jge	short loc_402F1E
		mov	esi, [ebp+Buffer]

loc_402F1E:				; CODE XREF: sub_402E62+B7j
		mov	edi, offset dword_4143F0
		push	esi		; nNumberOfBytesToRead
		push	edi		; lpBuffer
		call	sub_403081
		test	eax, eax
		jz	loc_40302E
		sub	[ebp+Buffer], esi
		mov	dword_40A828, edi
		mov	dword_40A82C, esi

loc_402F41:				; CODE XREF: sub_402E62+19Aj
		mov	edi, [ebp+lpBuffer]
		mov	eax, [ebp+nNumberOfBytesToWrite]
		push	offset dword_40A828
		mov	dword_40A830, edi
		mov	dword_40A834, eax
		call	sub_405FAF
		test	eax, eax
		mov	[ebp+var_18], eax
		jl	loc_40300F
		mov	esi, dword_40A830
		sub	esi, edi
		call	ebx ; GetTickCount
		test	byte ptr dword_42E474, 1
		mov	edi, eax
		jz	short loc_402FBF
		sub	eax, [ebp+var_10]
		cmp	eax, 0C8h
		ja	short loc_402F8C
		cmp	[ebp+Buffer], 0
		jnz	short loc_402FBF

loc_402F8C:				; CODE XREF: sub_402E62+122j
		mov	eax, [ebp+nDenominator]
		push	[ebp+nDenominator] ; nDenominator
		sub	eax, [ebp+Buffer]
		push	64h		; nNumerator
		push	eax		; nNumber
		call	ds:MulDiv
		push	eax
		lea	eax, [ebp+String]
		push	offset a___D	; "... %d%%"
		push	eax		; LPSTR
		call	ds:wsprintfA
		add	esp, 0Ch
		lea	eax, [ebp+String]
		push	eax		; lpString
		push	0		; int
		call	sub_404E8F
		mov	[ebp+var_10], edi

loc_402FBF:				; CODE XREF: sub_402E62+118j
					; sub_402E62+128j
		xor	eax, eax
		cmp	esi, eax
		jz	short loc_403004
		cmp	[ebp+arg_8], eax
		jnz	short loc_402FEA
		push	eax		; lpOverlapped
		lea	eax, [ebp+NumberOfBytesWritten]
		push	eax		; lpNumberOfBytesWritten
		push	esi		; nNumberOfBytesToWrite
		push	[ebp+lpBuffer]	; lpBuffer
		push	[ebp+hFile]	; hFile
		call	ds:WriteFile
		test	eax, eax
		jz	short loc_403013
		cmp	[ebp+NumberOfBytesWritten], esi
		jnz	short loc_403013
		add	[ebp+var_4], esi
		jmp	short loc_402FF8
; ---------------------------------------------------------------------------

loc_402FEA:				; CODE XREF: sub_402E62+166j
		mov	eax, dword_40A830
		add	[ebp+var_4], esi
		sub	[ebp+nNumberOfBytesToWrite], esi
		mov	[ebp+lpBuffer],	eax

loc_402FF8:				; CODE XREF: sub_402E62+186j
		cmp	[ebp+var_18], 1
		jnz	loc_402F41
		jmp	short loc_403077
; ---------------------------------------------------------------------------

loc_403004:				; CODE XREF: sub_402E62+161j
		cmp	[ebp+Buffer], eax
		jg	loc_402F11
		jmp	short loc_403077
; ---------------------------------------------------------------------------

loc_40300F:				; CODE XREF: sub_402E62+FFj
		push	0FFFFFFFCh
		jmp	short loc_403030
; ---------------------------------------------------------------------------

loc_403013:				; CODE XREF: sub_402E62+17Cj
					; sub_402E62+181j ...
		push	0FFFFFFFEh
		jmp	short loc_403030
; ---------------------------------------------------------------------------

loc_403017:				; CODE XREF: sub_402E62+5Cj
		cmp	ebx, edi
		jz	short loc_40306D
		cmp	[ebp+Buffer], esi
		jge	short loc_403023
		mov	esi, [ebp+Buffer]

loc_403023:				; CODE XREF: sub_402E62+1BCj
		push	esi		; nNumberOfBytesToRead
		push	ebx		; lpBuffer
		call	sub_403081
		test	eax, eax
		jnz	short loc_403074

loc_40302E:				; CODE XREF: sub_402E62+52j
					; sub_402E62+CAj ...
		push	0FFFFFFFDh

loc_403030:				; CODE XREF: sub_402E62+1AFj
					; sub_402E62+1B3j
		pop	eax
		jmp	short loc_40307A
; ---------------------------------------------------------------------------

loc_403033:				; CODE XREF: sub_402E62+20Ej
		mov	esi, [ebp+nNumberOfBytesToWrite]
		cmp	[ebp+Buffer], esi
		jge	short loc_40303E
		mov	esi, [ebp+Buffer]

loc_40303E:				; CODE XREF: sub_402E62+1D7j
		mov	ebx, offset dword_4143F0
		push	esi		; nNumberOfBytesToRead
		push	ebx		; lpBuffer
		call	sub_403081
		test	eax, eax
		jz	short loc_40302E
		lea	eax, [ebp+arg_8]
		push	edi		; lpOverlapped
		push	eax		; lpNumberOfBytesWritten
		push	esi		; nNumberOfBytesToWrite
		push	ebx		; lpBuffer
		push	[ebp+hFile]	; hFile
		call	ds:WriteFile
		test	eax, eax
		jz	short loc_403013
		cmp	esi, [ebp+arg_8]
		jnz	short loc_403013
		add	[ebp+var_4], esi
		sub	[ebp+Buffer], esi

loc_40306D:				; CODE XREF: sub_402E62+1B7j
		cmp	[ebp+Buffer], edi
		jg	short loc_403033
		jmp	short loc_403077
; ---------------------------------------------------------------------------

loc_403074:				; CODE XREF: sub_402E62+1CAj
		mov	[ebp+var_4], esi

loc_403077:				; CODE XREF: sub_402E62+A9j
					; sub_402E62+1A0j ...
		mov	eax, [ebp+var_4]

loc_40307A:				; CODE XREF: sub_402E62+1CFj
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn	10h
sub_402E62	endp


; =============== S U B	R O U T	I N E =======================================


; int __stdcall	sub_403081(LPVOID lpBuffer, DWORD nNumberOfBytesToRead)
sub_403081	proc near		; CODE XREF: sub_401434+12B5p
					; sub_402C29+B0p ...

lpBuffer	= dword	ptr  4
nNumberOfBytesToRead= dword ptr	 8

		push	[esp+nNumberOfBytesToRead] ; nNumberOfBytesToRead
		push	[esp+4+lpBuffer] ; lpBuffer
		push	hFile		; hFile
		call	sub_4058AD
		retn	8
sub_403081	endp


; =============== S U B	R O U T	I N E =======================================


; int __stdcall	sub_403097(LONG	lDistanceToMove)
sub_403097	proc near		; CODE XREF: sub_401434+12ACp
					; sub_402C29+190p ...

lDistanceToMove	= dword	ptr  4

		push	0		; dwMoveMethod
		push	0		; lpDistanceToMoveHigh
		push	[esp+8+lDistanceToMove]	; lDistanceToMove
		push	hFile		; hFile
		call	ds:SetFilePointer
		retn	4
sub_403097	endp


; =============== S U B	R O U T	I N E =======================================


sub_4030AE	proc near		; CODE XREF: start+1ADp start+1CDp ...
		push	esi
		mov	esi, offset PathName
		push	esi		; lpsz
		call	sub_405E0F
		push	esi
		call	sub_4056A1
		test	eax, eax
		jnz	short loc_4030C6
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_4030C6:				; CODE XREF: sub_4030AE+14j
		push	esi		; lpString
		call	sub_405634
		push	0		; lpSecurityAttributes
		push	esi		; lpPathName
		call	ds:CreateDirectoryA
		push	esi		; lpPathName
		push	offset FileName	; PrefixString
		call	sub_405864
		pop	esi
		retn
sub_4030AE	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: noreturn

		public start
start		proc near

var_184		= dword	ptr -184h
var_180		= byte ptr -180h
uExitCode	= dword	ptr -17Ch
lpString2	= dword	ptr -178h
Buffer		= dword	ptr -174h
var_170		= dword	ptr -170h
var_16C		= byte ptr -16Ch
var_164		= dword	ptr -164h
psfi		= SHFILEINFOA ptr -160h

		sub	esp, 184h
		push	ebx
		push	ebp
		push	esi
		xor	ebx, ebx
		push	edi
		mov	[esp+194h+uExitCode], ebx
		mov	[esp+194h+var_184], offset aErrorWritingTe ; "Error writing temporary file. Make sure"...
		mov	[esp+194h+Buffer], ebx
		mov	[esp+194h+var_180], 20h
		call	ds:InitCommonControls
		push	8001h		; uMode
		call	ds:SetErrorMode
		push	ebx		; pvReserved
		call	ds:OleInitialize
		push	9
		mov	dword_42E478, eax
		call	sub_405ECF
		mov	dword_42E3C4, eax
		push	ebx		; uFlags
		lea	eax, [esp+198h+psfi]
		push	160h		; cbFileInfo
		push	eax		; psfi
		push	ebx		; dwFileAttributes
		push	offset pszPath	; pszPath
		call	ds:SHGetFileInfoA
		push	offset aNsisError ; "NSIS Error"
		push	offset chText	; lpString1
		call	sub_405BA4
		call	ds:GetCommandLineA
		mov	ebp, offset sz
		push	eax		; lpString2
		push	ebp		; lpString1
		call	sub_405BA4
		push	ebx		; lpModuleName
		call	ds:GetModuleHandleA
		cmp	ds:sz, 22h
		mov	hInstance, eax
		mov	eax, ebp
		jnz	short loc_403185
		mov	[esp+194h+var_180], 22h
		mov	eax, offset byte_434001

loc_403185:				; CODE XREF: start+97j
		push	dword ptr [esp+194h+var_180] ; char
		push	eax		; lpsz
		call	sub_40565F
		push	eax		; lpsz
		call	ds:CharNextA
		mov	[esp+194h+lpString2], eax
		jmp	loc_40325F
; ---------------------------------------------------------------------------

loc_40319F:				; CODE XREF: start+181j
		cmp	cl, 20h
		jnz	short loc_4031AA

loc_4031A4:				; CODE XREF: start+C6j
		inc	eax
		cmp	byte ptr [eax],	20h
		jz	short loc_4031A4

loc_4031AA:				; CODE XREF: start+C0j
		cmp	byte ptr [eax],	22h
		mov	[esp+194h+var_180], 20h
		jnz	short loc_4031BA
		inc	eax
		mov	[esp+194h+var_180], 22h

loc_4031BA:				; CODE XREF: start+D0j
		cmp	byte ptr [eax],	2Fh
		jnz	loc_40324F
		inc	eax
		cmp	byte ptr [eax],	53h
		jnz	short loc_4031DF
		mov	cl, [eax+1]
		cmp	cl, 20h
		jz	short loc_4031D5
		cmp	cl, bl
		jnz	short loc_4031DF

loc_4031D5:				; CODE XREF: start+EDj
		mov	dword_42E460, 1

loc_4031DF:				; CODE XREF: start+E5j	start+F1j
		movsx	ecx, byte_40917B
		movsx	edx, byte_40917A
		shl	ecx, 8
		or	ecx, edx
		movsx	edx, byte_409179
		shl	ecx, 8
		or	ecx, edx
		movsx	edx, byte_409178
		shl	ecx, 8
		or	ecx, edx
		cmp	[eax], ecx
		jnz	short loc_40321F
		mov	cl, [eax+4]
		cmp	cl, 20h
		jz	short loc_40321A
		cmp	cl, bl
		jnz	short loc_40321F

loc_40321A:				; CODE XREF: start+132j
		or	[esp+194h+Buffer], 4

loc_40321F:				; CODE XREF: start+12Aj start+136j
		movsx	ecx, byte_409173
		movsx	edx, byte_409172
		shl	ecx, 8
		or	ecx, edx
		movsx	edx, byte_409171
		shl	ecx, 8
		or	ecx, edx
		movsx	edx, byte_409170
		shl	ecx, 8
		or	ecx, edx
		cmp	[eax-2], ecx
		jz	short loc_40326B

loc_40324F:				; CODE XREF: start+DBj
		push	dword ptr [esp+194h+var_180] ; char
		push	eax		; lpsz
		call	sub_40565F
		cmp	byte ptr [eax],	22h
		jnz	short loc_40325F
		inc	eax

loc_40325F:				; CODE XREF: start+B8j	start+17Aj
		mov	cl, [eax]
		cmp	cl, bl
		jnz	loc_40319F
		jmp	short loc_40327C
; ---------------------------------------------------------------------------

loc_40326B:				; CODE XREF: start+16Bj
		mov	[eax-2], bl
		add	eax, 2
		push	eax		; lpString2
		push	offset byte_434400 ; lpString1
		call	sub_405BA4

loc_40327C:				; CODE XREF: start+187j
		mov	esi, ds:GetTempPathA
		mov	edi, offset PathName
		push	edi		; lpBuffer
		push	400h		; nBufferLength
		call	esi ; GetTempPathA
		call	sub_4030AE
		test	eax, eax
		jnz	short loc_4032EE
		push	3FBh		; uSize
		push	edi		; lpBuffer
		call	ds:GetWindowsDirectoryA
		push	offset String2	; "\\Temp"
		push	edi		; lpString1
		call	lstrcatA
		call	sub_4030AE
		test	eax, eax
		jnz	short loc_4032EE
		push	edi		; lpBuffer
		push	3FCh		; nBufferLength
		call	esi ; GetTempPathA
		push	offset aLow	; "Low"
		push	edi		; lpString1
		call	lstrcatA
		mov	esi, ds:SetEnvironmentVariableA
		push	edi		; lpValue
		push	offset Name	; "TEMP"
		call	esi ; SetEnvironmentVariableA
		push	edi		; lpValue
		push	offset aTmp	; "TMP"
		call	esi ; SetEnvironmentVariableA
		call	sub_4030AE
		test	eax, eax
		jz	loc_40339C

loc_4032EE:				; CODE XREF: start+1B4j start+1D4j
		push	offset FileName	; lpFileName
		call	ds:DeleteFileA
		push	[esp+194h+Buffer] ; Buffer
		call	sub_402C29
		cmp	eax, ebx
		mov	[esp+194h+var_184], eax
		jnz	loc_40339C
		cmp	dword_42E3DC, ebx
		jz	short loc_40338C
		push	ebx		; char
		push	ebp		; lpsz
		call	sub_40565F
		mov	esi, eax
		cmp	esi, ebp
		jb	short loc_403357
		movsx	eax, byte_409153
		movsx	ecx, byte_409152
		shl	eax, 8
		or	eax, ecx
		movsx	ecx, byte_409151
		shl	eax, 8
		or	eax, ecx
		movsx	ecx, byte_409150
		shl	eax, 8
		or	eax, ecx

loc_40334E:				; CODE XREF: start+273j
		cmp	[esi], eax
		jz	short loc_403357
		dec	esi
		cmp	esi, ebp
		jnb	short loc_40334E

loc_403357:				; CODE XREF: start+23Fj start+26Ej
		cmp	esi, ebp
		mov	[esp+194h+var_184], offset aErrorLaunching ; "Error launching installer"
		jb	short loc_4033C7
		mov	[esi], bl
		add	esi, 4
		push	esi		; lpString2
		call	sub_405722
		test	eax, eax
		jz	short loc_40339C
		push	esi		; lpString2
		push	offset byte_434400 ; lpString1
		call	sub_405BA4
		push	esi		; lpString2
		push	offset Directory ; lpString1
		call	sub_405BA4
		mov	[esp+194h+var_184], ebx

loc_40338C:				; CODE XREF: start+232j
		or	dword_42E46C, 0FFFFFFFFh
		call	sub_40363A
		mov	[esp+194h+uExitCode], eax

loc_40339C:				; CODE XREF: start+206j start+226j ...
		call	sub_403560
		call	ds:OleUninitialize
		cmp	[esp+194h+var_184], ebx
		jz	loc_4034A5
		push	200010h
		push	[esp+198h+var_184]
		call	sub_4053B8
		push	2		; uExitCode
		call	ds:ExitProcess
; ---------------------------------------------------------------------------

loc_4033C7:				; CODE XREF: start+27Fj
		push	offset aNsu_tmp	; "~nsu.tmp"
		push	edi		; lpString1
		call	lstrcatA
		mov	esi, offset byte_434C00
		push	esi		; lpString2
		push	edi		; lpString1
		call	ds:lstrcmpiA
		test	eax, eax
		jz	short loc_40339C
		push	ebx		; lpSecurityAttributes
		push	edi		; lpPathName
		call	ds:CreateDirectoryA
		push	edi		; lpPathName
		call	ds:SetCurrentDirectoryA
		cmp	ds:byte_434400,	bl
		jnz	short loc_403405
		push	esi		; lpString2
		push	offset byte_434400 ; lpString1
		call	sub_405BA4

loc_403405:				; CODE XREF: start+316j
		push	[esp+194h+lpString2] ; lpString2
		push	offset dword_42F000 ; lpString1
		call	sub_405BA4
		movsx	cx, byte_409140
		xor	eax, eax
		push	1Ah
		mov	ah, byte_409141
		pop	ebp
		or	eax, ecx
		mov	esi, offset CommandLine
		mov	ds:word_42F400,	ax

loc_403433:				; CODE XREF: start+3B5j
		mov	eax, dword_42E3D0
		push	dword ptr [eax+120h] ; int
		push	esi		; lpString1
		call	sub_405BC6
		push	esi		; lpFileName
		call	ds:DeleteFileA
		cmp	[esp+194h+var_184], ebx
		jz	short loc_403490
		push	1		; bFailIfExists
		push	esi		; lpNewFileName
		push	offset ExistingFileName	; lpExistingFileName
		call	ds:CopyFileA
		test	eax, eax
		jz	short loc_403490
		push	ebx		; lpszLongPath
		push	esi		; LPCSTR
		call	sub_405A58
		mov	eax, dword_42E3D0
		push	dword ptr [eax+124h] ; int
		push	esi		; lpString1
		call	sub_405BC6
		push	esi		; lpCommandLine
		call	sub_405357
		cmp	eax, ebx
		jz	short loc_403490
		push	eax		; hObject
		call	ds:CloseHandle
		mov	[esp+194h+var_184], ebx

loc_403490:				; CODE XREF: start+36Dj start+37Fj ...
		inc	byte ptr ds:word_42F400
		dec	ebp
		jnz	short loc_403433
		push	ebx		; lpszLongPath
		push	edi		; LPCSTR
		call	sub_405A58
		jmp	loc_40339C
; ---------------------------------------------------------------------------

loc_4034A5:				; CODE XREF: start+2C9j
		cmp	dword_42E454, ebx
		jz	loc_403548
		push	4
		call	sub_405ECF
		push	5
		mov	ebp, eax
		call	sub_405ECF
		push	6
		mov	esi, eax
		call	sub_405ECF
		cmp	ebp, ebx
		mov	edi, eax
		jz	short loc_403518
		cmp	esi, ebx
		jz	short loc_403518
		cmp	edi, ebx
		jz	short loc_403518
		lea	eax, [esp+194h+lpString2]
		push	eax
		push	28h
		call	ds:GetCurrentProcess
		push	eax
		call	ebp
		test	eax, eax
		jz	short loc_403518
		lea	eax, [esp+194h+var_16C]
		push	eax
		push	offset aSeshutdownpriv ; "SeShutdownPrivilege"
		push	ebx
		call	esi
		push	ebx
		push	ebx
		lea	eax, [esp+19Ch+var_170]
		push	ebx
		push	eax
		push	ebx
		push	[esp+1A8h+lpString2]
		mov	[esp+1ACh+var_170], 1
		mov	[esp+1ACh+var_164], 2
		call	edi

loc_403518:				; CODE XREF: start+3ECj start+3F0j ...
		push	7
		call	sub_405ECF
		cmp	eax, ebx
		mov	esi, 80040002h
		jz	short loc_403534
		push	esi
		push	25h
		push	ebx
		push	ebx
		push	ebx
		call	eax
		test	eax, eax
		jz	short loc_403541

loc_403534:				; CODE XREF: start+444j
		push	esi		; dwReason
		push	2		; uFlags
		call	ds:ExitWindowsEx
		test	eax, eax
		jnz	short loc_403548

loc_403541:				; CODE XREF: start+450j
		push	9
		call	sub_40140B

loc_403548:				; CODE XREF: start+3C9j start+45Dj
		mov	eax, dword_42E46C
		cmp	eax, 0FFFFFFFFh
		jz	short loc_403556
		mov	[esp+194h+uExitCode], eax

loc_403556:				; CODE XREF: start+46Ej
		push	[esp+194h+uExitCode] ; uExitCode
		call	ds:ExitProcess
start		endp


; =============== S U B	R O U T	I N E =======================================


sub_403560	proc near		; CODE XREF: start:loc_40339Cp
		mov	eax, hFile
		cmp	eax, 0FFFFFFFFh
		jz	short loc_403578
		push	eax		; hObject
		call	ds:CloseHandle
		or	hFile, 0FFFFFFFFh

loc_403578:				; CODE XREF: sub_403560+8j
		call	sub_4035A5
		push	7		; int
		push	offset dword_435800 ; lpFileName
		call	sub_405464
		retn
sub_403560	endp


; =============== S U B	R O U T	I N E =======================================


sub_40358A	proc near		; CODE XREF: sub_4035A5+9p
					; sub_40363A+289p

arg_0		= dword	ptr  4

		push	esi
		mov	esi, dword_428804
		jmp	short loc_40359D
; ---------------------------------------------------------------------------

loc_403593:				; CODE XREF: sub_40358A+15j
		push	[esp+4+arg_0]
		call	dword ptr [esi+4]
		mov	esi, [esi]
		pop	ecx

loc_40359D:				; CODE XREF: sub_40358A+7j
		test	esi, esi
		jnz	short loc_403593
		pop	esi
		retn	4
sub_40358A	endp


; =============== S U B	R O U T	I N E =======================================


sub_4035A5	proc near		; CODE XREF: sub_403560:loc_403578p
		push	esi
		mov	esi, dword_428804
		push	0
		call	sub_40358A
		test	esi, esi
		jz	short loc_4035D1
		push	edi

loc_4035B8:				; CODE XREF: sub_4035A5+29j
		mov	edi, esi
		mov	esi, [esi]
		push	dword ptr [edi+8] ; hLibModule
		call	ds:FreeLibrary
		push	edi		; hMem
		call	ds:GlobalFree
		test	esi, esi
		jnz	short loc_4035B8
		pop	edi

loc_4035D1:				; CODE XREF: sub_4035A5+10j
		and	dword_428804, 0
		pop	esi
		retn
sub_4035A5	endp


; =============== S U B	R O U T	I N E =======================================


sub_4035DA	proc near		; CODE XREF: sub_401434+BDBp
					; sub_4035F8+6p

arg_0		= dword	ptr  4

		mov	eax, dword_428804
		jmp	short loc_4035EC
; ---------------------------------------------------------------------------

loc_4035E1:				; CODE XREF: sub_4035DA+14j
		mov	ecx, [eax+8]
		cmp	ecx, [esp+arg_0]
		jz	short loc_4035F4
		mov	eax, [eax]

loc_4035EC:				; CODE XREF: sub_4035DA+5j
		test	eax, eax
		jnz	short loc_4035E1
		inc	eax

locret_4035F1:				; CODE XREF: sub_4035DA+1Cj
		retn	4
; ---------------------------------------------------------------------------

loc_4035F4:				; CODE XREF: sub_4035DA+Ej
		xor	eax, eax
		jmp	short locret_4035F1
sub_4035DA	endp


; =============== S U B	R O U T	I N E =======================================


sub_4035F8	proc near		; DATA XREF: .data:0040900Co

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		push	esi
		mov	esi, [esp+4+arg_0]
		push	esi
		call	sub_4035DA
		test	eax, eax
		jnz	short loc_40360A
		inc	eax
		jmp	short loc_403636
; ---------------------------------------------------------------------------

loc_40360A:				; CODE XREF: sub_4035F8+Dj
		push	0Ch		; dwBytes
		push	40h		; uFlags
		call	ds:GlobalAlloc
		test	eax, eax
		jz	short loc_403633
		mov	ecx, [esp+4+arg_4]
		mov	[eax+8], esi
		mov	[eax+4], ecx
		mov	ecx, dword_428804
		mov	[eax], ecx
		mov	dword_428804, eax
		xor	eax, eax
		jmp	short loc_403636
; ---------------------------------------------------------------------------

loc_403633:				; CODE XREF: sub_4035F8+1Ej
		or	eax, 0FFFFFFFFh

loc_403636:				; CODE XREF: sub_4035F8+10j
					; sub_4035F8+39j
		pop	esi
		retn	8
sub_4035F8	endp


; =============== S U B	R O U T	I N E =======================================


sub_40363A	proc near		; CODE XREF: start+2B1p

pvParam		= dword	ptr -10h
Y		= dword	ptr -0Ch
var_8		= dword	ptr -8
var_4		= dword	ptr -4

		sub	esp, 10h
		push	ebx
		push	ebp
		push	esi
		mov	esi, dword_42E3D0
		push	edi
		push	2
		call	sub_405ECF
		xor	ebx, ebx
		cmp	eax, ebx
		jz	short loc_403666
		call	eax
		movzx	eax, ax
		push	eax		; int
		push	offset FileName	; LPSTR
		call	sub_405B02
		jmp	short loc_4036BA
; ---------------------------------------------------------------------------

loc_403666:				; CODE XREF: sub_40363A+18j
		mov	edi, offset byte_429840
		push	ebx		; phkResult
		push	edi		; Type
		push	ebx		; lpValueName
		push	offset SubKey	; "Control Panel\\Desktop\\ResourceLocale"
		push	80000001h	; hKey
		mov	ds:FileName, 30h
		mov	ds:byte_435001,	78h
		mov	ds:byte_435002,	bl
		call	sub_405A8B
		cmp	byte_429840, bl
		jnz	short loc_4036AF
		push	ebx		; phkResult
		push	edi		; Type
		push	(offset	SubKey+1Eh) ; lpValueName
		push	offset a_defaultContro ; ".DEFAULT\\Control Panel\\International"
		push	80000003h	; hKey
		call	sub_405A8B

loc_4036AF:				; CODE XREF: sub_40363A+5Dj
		push	edi		; lpString2
		push	offset FileName	; lpString1
		call	lstrcatA

loc_4036BA:				; CODE XREF: sub_40363A+2Aj
		call	sub_4038FF
		mov	eax, dword_42E3D8
		mov	ebp, offset byte_434400
		and	eax, 20h
		push	ebp		; lpString2
		mov	dword_42E440, eax
		mov	dword_42E45C, 10000h
		call	sub_405722
		test	eax, eax
		jnz	loc_40376A
		mov	ecx, [esi+48h]
		cmp	ecx, ebx
		jz	short loc_40376A
		mov	edx, [esi+4Ch]
		mov	eax, dword_42E3F8
		mov	edi, offset String
		push	ebx		; phkResult
		add	edx, eax
		push	edi		; Type
		add	ecx, eax
		push	edx		; lpValueName
		push	ecx		; lpSubKey
		push	dword ptr [esi+44h] ; hKey
		call	sub_405A8B
		mov	al, String
		cmp	al, bl
		jz	short loc_40376A
		cmp	al, 22h
		jnz	short loc_403729
		mov	edi, offset byte_42D361
		push	22h		; char
		push	edi		; lpsz
		call	sub_40565F
		mov	[eax], bl

loc_403729:				; CODE XREF: sub_40363A+DEj
		push	edi		; lpString
		call	lstrlenA
		lea	eax, [eax+edi-4]
		cmp	eax, edi
		jbe	short loc_40375D
		push	offset a_exe	; ".exe"
		push	eax		; lpString1
		call	ds:lstrcmpiA
		test	eax, eax
		jnz	short loc_40375D
		push	edi		; lpFileName
		call	ds:GetFileAttributesA
		cmp	eax, 0FFFFFFFFh
		jz	short loc_403757
		test	al, 10h
		jnz	short loc_40375D

loc_403757:				; CODE XREF: sub_40363A+117j
		push	edi		; lpString
		call	sub_40567B

loc_40375D:				; CODE XREF: sub_40363A+FBj
					; sub_40363A+10Bj ...
		push	edi		; lpString
		call	sub_405634
		push	eax		; lpString2
		push	ebp		; lpString1
		call	sub_405BA4

loc_40376A:				; CODE XREF: sub_40363A+A9j
					; sub_40363A+B4j ...
		push	ebp		; lpString2
		call	sub_405722
		test	eax, eax
		jnz	short loc_403780
		push	dword ptr [esi+118h] ; int
		push	ebp		; lpString1
		call	sub_405BC6

loc_403780:				; CODE XREF: sub_40363A+138j
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
		jz	short loc_403826
		mov	ecx, hInstance
		mov	esi, offset ClassName ;	"_Nb"
		push	edi		; lpWndClass
		mov	WndClass.lpfnWndProc, offset sub_401000
		mov	WndClass.hInstance, ecx
		mov	WndClass.hIcon,	eax
		mov	WndClass.lpszClassName,	esi
		call	ds:RegisterClassA
		test	ax, ax
		jz	loc_4038F5
		lea	eax, [esp+20h+pvParam]
		push	ebx		; fWinIni
		push	eax		; pvParam
		push	ebx		; uiParam
		push	30h		; uiAction
		call	ds:SystemParametersInfoA
		push	ebx		; lpParam
		push	hInstance	; hInstance
		mov	eax, [esp+28h+var_4]
		sub	eax, [esp+28h+Y]
		push	ebx		; hMenu
		push	ebx		; hWndParent
		push	eax		; nHeight
		mov	eax, [esp+34h+var_8]
		sub	eax, [esp+34h+pvParam]
		push	eax		; nWidth
		push	[esp+38h+Y]	; Y
		push	[esp+3Ch+pvParam] ; X
		push	80000000h	; dwStyle
		push	ebx		; lpWindowName
		push	esi		; lpClassName
		push	80h		; dwExStyle
		call	ds:CreateWindowExA
		mov	dword_429820, eax

loc_403826:				; CODE XREF: sub_40363A+16Bj
		push	ebx
		call	sub_40140B
		test	eax, eax
		jz	short loc_403838

loc_403830:				; CODE XREF: sub_40363A+2A2j
					; sub_40363A+2AFj
		push	2
		pop	eax
		jmp	loc_4038F7
; ---------------------------------------------------------------------------

loc_403838:				; CODE XREF: sub_40363A+1F4j
		call	sub_4038FF
		cmp	dword_42E460, ebx
		jnz	loc_4038CC
		push	5		; nCmdShow
		push	dword_429820	; hWnd
		call	ds:ShowWindow
		mov	esi, ds:LoadLibraryA
		push	offset LibFileName ; "RichEd20"
		call	esi ; LoadLibraryA
		test	eax, eax
		jnz	short loc_40386F
		push	offset aRiched32 ; "RichEd32"
		call	esi ; LoadLibraryA

loc_40386F:				; CODE XREF: sub_40363A+22Cj
		mov	esi, ds:GetClassInfoA
		mov	ebp, offset aRichedit20a ; "RichEdit20A"
		push	edi		; lpWndClass
		push	ebp		; lpClassName
		push	ebx		; hInstance
		call	esi ; GetClassInfoA
		test	eax, eax
		jnz	short loc_403899
		push	edi		; lpWndClass
		push	offset aRichedit ; "RichEdit"
		push	ebx		; hInstance
		call	esi ; GetClassInfoA
		push	edi		; lpWndClass
		mov	WndClass.lpszClassName,	ebp
		call	ds:RegisterClassA

loc_403899:				; CODE XREF: sub_40363A+247j
		mov	eax, dword_42DBA0
		push	ebx		; dwInitParam
		add	eax, 69h
		push	offset sub_4039CC ; lpDialogFunc
		movzx	eax, ax
		push	ebx		; hWndParent
		push	eax		; lpTemplateName
		push	hInstance	; hInstance
		call	ds:DialogBoxParamA
		push	5
		mov	esi, eax
		call	sub_40140B
		push	1
		call	sub_40358A
		mov	eax, esi
		jmp	short loc_4038F7
; ---------------------------------------------------------------------------

loc_4038CC:				; CODE XREF: sub_40363A+209j
		push	ebx		; lpThreadParameter
		call	StartAddress
		test	eax, eax
		jz	short loc_4038EE
		cmp	dword_42DB8C, ebx
		jnz	loc_403830
		push	2
		call	sub_40140B
		jmp	loc_403830
; ---------------------------------------------------------------------------

loc_4038EE:				; CODE XREF: sub_40363A+29Aj
		push	1
		call	sub_40140B

loc_4038F5:				; CODE XREF: sub_40363A+19Dj
		xor	eax, eax

loc_4038F7:				; CODE XREF: sub_40363A+1F9j
					; sub_40363A+290j
		pop	edi
		pop	esi
		pop	ebp
		pop	ebx
		add	esp, 10h
		retn
sub_40363A	endp


; =============== S U B	R O U T	I N E =======================================


sub_4038FF	proc near		; CODE XREF: sub_40363A:loc_4036BAp
					; sub_40363A:loc_403838p
		push	ebx
		push	ebp
		push	esi
		push	edi
		mov	edi, offset FileName
		mov	ebx, 0FFFFh
		push	edi
		call	sub_405B1B

loc_403913:				; CODE XREF: sub_4038FF+6Fj
					; sub_4038FF+73j
		mov	esi, dword_42E404
		test	esi, esi
		jz	short loc_403962
		mov	ecx, dword_42E3D0
		mov	ecx, [ecx+64h]
		mov	edx, ecx
		imul	ecx, esi
		neg	edx
		add	ecx, dword_42E400

loc_403933:				; CODE XREF: sub_4038FF+46j
		add	ecx, edx
		dec	esi
		mov	bp, [ecx]
		xor	bp, ax
		and	ebp, ebx
		test	bp, bp
		jz	short loc_403949
		test	esi, esi
		jnz	short loc_403933
		jmp	short loc_403962
; ---------------------------------------------------------------------------

loc_403949:				; CODE XREF: sub_4038FF+42j
		mov	edx, [ecx+2]
		mov	dword_42DBA0, edx
		mov	edx, [ecx+6]
		mov	dword_42E468, edx
		lea	edx, [ecx+0Ah]
		test	edx, edx
		jnz	short loc_403974

loc_403962:				; CODE XREF: sub_4038FF+1Cj
					; sub_4038FF+48j
		cmp	bx, 0FFFFh
		jnz	short loc_403970
		mov	ebx, 3FFh
		jmp	short loc_403913
; ---------------------------------------------------------------------------

loc_403970:				; CODE XREF: sub_4038FF+68j
		xor	ebx, ebx
		jmp	short loc_403913
; ---------------------------------------------------------------------------

loc_403974:				; CODE XREF: sub_4038FF+61j
		mov	dword_42DB9C, edx
		movzx	eax, word ptr [ecx]
		push	eax		; int
		push	edi		; LPSTR
		call	sub_405B02
		push	0FFFFFFFEh	; int
		push	offset chText	; lpString1
		call	sub_405BC6
		push	eax		; lpString
		push	dword_429820	; hWnd
		call	ds:SetWindowTextA
		mov	eax, dword_42E3EC
		mov	esi, dword_42E3E8
		test	eax, eax
		jz	short loc_4039C7
		mov	edi, eax

loc_4039AE:				; CODE XREF: sub_4038FF+C6j
		mov	eax, [esi]
		test	eax, eax
		jz	short loc_4039BE
		push	eax		; int
		lea	eax, [esi+18h]
		push	eax		; lpString1
		call	sub_405BC6

loc_4039BE:				; CODE XREF: sub_4038FF+B3j
		add	esi, 418h
		dec	edi
		jnz	short loc_4039AE

loc_4039C7:				; CODE XREF: sub_4038FF+ABj
		pop	edi
		pop	esi
		pop	ebp
		pop	ebx
		retn
sub_4038FF	endp


; =============== S U B	R O U T	I N E =======================================


; INT_PTR __stdcall sub_4039CC(HWND, UINT, WPARAM, LPARAM)
sub_4039CC	proc near		; DATA XREF: sub_40363A+268o

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
		jz	loc_403B1F
		cmp	ebx, 408h
		jz	loc_403B1F
		mov	edi, [esp+20h+hWndInsertAfter]
		xor	ebp, ebp
		cmp	ebx, 47h
		jnz	short loc_403A0E
		push	13h		; uFlags
		push	ebp		; cy
		push	ebp		; cx
		push	ebp		; Y
		push	ebp		; X
		push	edi		; hWndInsertAfter
		push	dword_429820	; hWnd
		call	ds:SetWindowPos

loc_403A0E:				; CODE XREF: sub_4039CC+2Dj
		cmp	ebx, 5
		jnz	short loc_403A2B
		mov	eax, [esp+20h+wParam]
		dec	eax
		neg	eax
		sbb	eax, eax
		and	eax, ebx
		push	eax		; nCmdShow
		push	dword_429820	; hWnd
		call	ds:ShowWindow

loc_403A2B:				; CODE XREF: sub_4039CC+45j
		cmp	ebx, 40Dh
		jnz	short loc_403A4D
		push	hDlg		; hWnd
		call	ds:DestroyWindow
		mov	eax, [esp+20h+wParam]
		mov	hDlg, eax
		jmp	loc_403E49
; ---------------------------------------------------------------------------

loc_403A4D:				; CODE XREF: sub_4039CC+65j
		cmp	ebx, 11h
		jnz	short loc_403A63
		push	ebp		; dwNewLong
		push	ebp		; nIndex
		push	edi		; hWnd
		call	ds:SetWindowLongA
		xor	eax, eax
		inc	eax
		jmp	loc_403E6E
; ---------------------------------------------------------------------------

loc_403A63:				; CODE XREF: sub_4039CC+84j
		cmp	ebx, 111h
		jnz	loc_403B0C
		movzx	esi, word ptr [esp+20h+wParam]
		push	esi		; nIDDlgItem
		push	edi		; hDlg
		call	ds:GetDlgItem
		mov	edi, eax
		cmp	edi, ebp
		jz	short loc_403A9F
		push	ebp		; lParam
		push	ebp		; wParam
		push	0F3h		; Msg
		push	edi		; hWnd
		call	ds:SendMessageA
		push	edi		; hWnd
		call	ds:IsWindowEnabled
		test	eax, eax
		jz	loc_403E6C

loc_403A9F:				; CODE XREF: sub_4039CC+B4j
		cmp	esi, 1
		jnz	short loc_403AA7
		push	esi
		jmp	short loc_403AD5
; ---------------------------------------------------------------------------

loc_403AA7:				; CODE XREF: sub_4039CC+D6j
		cmp	esi, 3
		jnz	short loc_403AB8
		cmp	dword_4091D4, ebp
		jle	short loc_403AF3
		push	0FFFFFFFFh
		jmp	short loc_403AD5
; ---------------------------------------------------------------------------

loc_403AB8:				; CODE XREF: sub_4039CC+DEj
		push	2
		pop	edi
		cmp	esi, edi
		jnz	short loc_403AF3
		cmp	dword_42E44C, ebp
		jz	short loc_403ADC
		push	edi
		call	sub_40140B
		mov	nResult, edi

loc_403AD3:				; CODE XREF: sub_4039CC+125j
		push	78h		; wParam

loc_403AD5:				; CODE XREF: sub_4039CC+D9j
					; sub_4039CC+EAj
		call	sub_403E78
		jmp	short loc_403B0C
; ---------------------------------------------------------------------------

loc_403ADC:				; CODE XREF: sub_4039CC+F9j
		push	3
		call	sub_40140B
		test	eax, eax
		jnz	short loc_403B0C
		mov	nResult, 1
		jmp	short loc_403AD3
; ---------------------------------------------------------------------------

loc_403AF3:				; CODE XREF: sub_4039CC+E6j
					; sub_4039CC+F1j
		push	[esp+20h+lParam] ; lParam
		push	[esp+24h+wParam] ; wParam
		push	111h		; Msg
		push	hDlg		; hWnd
		call	ds:SendMessageA

loc_403B0C:				; CODE XREF: sub_4039CC+9Dj
					; sub_4039CC+10Ej ...
		push	[esp+20h+lParam] ; hWnd
		push	[esp+24h+wParam] ; hdc
		push	ebx		; int
		call	sub_403F06
		jmp	loc_403E6E
; ---------------------------------------------------------------------------

loc_403B1F:				; CODE XREF: sub_4039CC+12j
					; sub_4039CC+1Ej
		mov	eax, [esp+20h+wParam]
		mov	edi, [esp+20h+hWndInsertAfter]
		cmp	ebx, ecx
		mov	dword_429828, eax
		jnz	short loc_403B7D
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
		mov	dword_428808, eax
		call	sub_403E9F
		push	dwNewLong	; dwNewLong
		push	0FFFFFFF2h	; nIndex
		push	edi		; hWnd
		call	ds:SetClassLongA
		push	4
		call	sub_40140B
		mov	dword_42DB8C, eax
		xor	eax, eax
		inc	eax
		mov	dword_429828, eax

loc_403B7D:				; CODE XREF: sub_4039CC+162j
		mov	ecx, dword_4091D4
		xor	ebp, ebp
		mov	esi, ecx
		shl	esi, 6
		add	esi, dword_42E3E0
		cmp	ecx, ebp
		jl	short loc_403BD2
		cmp	eax, 1
		jnz	short loc_403BCA
		push	ebp		; hWnd
		push	dword ptr [esi+10h] ; int
		call	sub_401389
		test	eax, eax
		jz	short loc_403BCA
		push	1		; lParam
		push	ebp		; wParam
		push	40Fh		; Msg
		push	hDlg		; hWnd
		call	ds:SendMessageA
		xor	eax, eax
		cmp	dword_42DB8C, ebp
		setz	al
		jmp	loc_403E6E
; ---------------------------------------------------------------------------

loc_403BCA:				; CODE XREF: sub_4039CC+1CBj
					; sub_4039CC+1D8j
		cmp	[esi], ebp
		jz	loc_403E6C

loc_403BD2:				; CODE XREF: sub_4039CC+1C6j
		push	40Bh		; Msg
		call	sub_403EEB

loc_403BDC:				; CODE XREF: sub_4039CC+36Dj
					; sub_4039CC+375j ...
		mov	eax, dword_429828
		add	dword_4091D4, eax
		shl	eax, 6
		add	esi, eax
		mov	eax, dword_4091D4
		cmp	eax, dword_42E3E4
		jnz	short loc_403C00
		push	1
		call	sub_40140B

loc_403C00:				; CODE XREF: sub_4039CC+22Bj
		cmp	dword_42DB8C, ebp
		jnz	loc_403E2A
		mov	eax, dword_42E3E4
		cmp	dword_4091D4, eax
		jnb	loc_403E2A
		push	dword ptr [esi+24h] ; int
		mov	ebx, [esi+14h]
		push	offset dword_436800 ; lpString1
		call	sub_405BC6
		push	dword ptr [esi+20h] ; int
		push	0FFFFFC19h	; int
		push	edi		; hDlg
		call	sub_403E9F
		push	dword ptr [esi+1Ch] ; int
		push	0FFFFFC1Bh	; int
		push	edi		; hDlg
		call	sub_403E9F
		push	dword ptr [esi+28h] ; int
		push	0FFFFFC1Ah	; int
		push	edi		; hDlg
		call	sub_403E9F
		push	3		; nIDDlgItem
		push	edi		; hDlg
		call	ds:GetDlgItem
		cmp	dword_42E44C, ebp
		mov	[esp+20h+wParam], eax
		jz	short loc_403C74
		and	bx, 0FEFDh
		or	ebx, 4

loc_403C74:				; CODE XREF: sub_4039CC+29Ej
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
		call	sub_403EC1
		and	ebx, 4
		push	ebx		; bEnable
		push	dword_428808	; hWnd
		call	ds:EnableWindow
		cmp	ebx, ebp
		jz	short loc_403CB5
		push	ebp
		jmp	short loc_403CB7
; ---------------------------------------------------------------------------

loc_403CB5:				; CODE XREF: sub_4039CC+2E4j
		push	1		; uEnable

loc_403CB7:				; CODE XREF: sub_4039CC+2E7j
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
		cmp	dword_42E44C, ebp
		jz	short loc_403CFA
		push	ebp		; lParam
		push	2		; wParam
		push	401h		; Msg
		push	edi		; hWnd
		call	ebx ; SendMessageA
		push	dword_428808
		jmp	short loc_403D00
; ---------------------------------------------------------------------------

loc_403CFA:				; CODE XREF: sub_4039CC+319j
		push	wParam		; wParam

loc_403D00:				; CODE XREF: sub_4039CC+32Cj
		call	sub_403ED4
		mov	ebx, offset byte_429840
		push	offset chText	; lpString2
		push	ebx		; lpString1
		call	sub_405BA4
		push	dword ptr [esi+18h] ; int
		push	ebx		; lpString
		call	lstrlenA
		add	eax, ebx
		push	eax		; lpString1
		call	sub_405BC6
		push	ebx		; lpString
		push	edi		; hWnd
		call	ds:SetWindowTextA
		push	ebp		; hWnd
		push	dword ptr [esi+8] ; int
		call	sub_401389
		test	eax, eax
		jnz	loc_403BDC
		cmp	[esi], ebp
		jz	loc_403BDC
		cmp	dword ptr [esi+4], 5
		jnz	short loc_403D6A
		cmp	dword_42E44C, ebp
		jnz	loc_403E6C
		cmp	dword_42E440, ebp
		jnz	loc_403BDC
		jmp	loc_403E6C
; ---------------------------------------------------------------------------

loc_403D6A:				; CODE XREF: sub_4039CC+37Fj
		push	hDlg		; hWnd
		call	ds:DestroyWindow
		mov	dword_429018, esi
		cmp	[esi], ebp
		jle	loc_403E49
		mov	eax, [esi+4]
		push	esi		; dwInitParam
		push	lpDialogFunc[eax*4] ; lpDialogFunc
		mov	ax, [esi]
		add	ax, word ptr dword_42DBA0
		push	edi		; hWndParent
		movzx	eax, ax
		push	eax		; lpTemplateName
		push	hInstance	; hInstance
		call	ds:CreateDialogParamA
		cmp	eax, ebp
		mov	hDlg, eax
		jz	loc_403E49
		push	dword ptr [esi+2Ch] ; int
		push	6		; int
		push	eax		; hDlg
		call	sub_403E9F
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
		cmp	dword_42DB8C, ebp
		jnz	short loc_403E6C
		push	8		; nCmdShow
		push	hDlg		; hWnd
		call	ds:ShowWindow
		push	405h		; Msg
		call	sub_403EEB
		jmp	short loc_403E49
; ---------------------------------------------------------------------------

loc_403E2A:				; CODE XREF: sub_4039CC+23Aj
					; sub_4039CC+24Bj
		push	hDlg		; hWnd
		call	ds:DestroyWindow
		push	nResult		; nResult
		mov	hwnd, ebp
		push	edi		; hDlg
		call	ds:EndDialog

loc_403E49:				; CODE XREF: sub_4039CC+7Cj
					; sub_4039CC+3B2j ...
		cmp	dword_42A840, ebp
		jnz	short loc_403E6C
		cmp	hDlg, ebp
		jz	short loc_403E6C
		push	0Ah		; nCmdShow
		push	edi		; hWnd
		call	ds:ShowWindow
		mov	dword_42A840, 1

loc_403E6C:				; CODE XREF: sub_4039CC+CDj
					; sub_4039CC+200j ...
		xor	eax, eax

loc_403E6E:				; CODE XREF: sub_4039CC+92j
					; sub_4039CC+14Ej ...
		pop	edi
		pop	esi
		pop	ebp
		pop	ebx
		add	esp, 10h
		retn	10h
sub_4039CC	endp


; =============== S U B	R O U T	I N E =======================================


; int __stdcall	sub_403E78(WPARAM wParam)
sub_403E78	proc near		; CODE XREF: sub_4039CC:loc_403AD5p
					; sub_404FCD+227p ...

wParam		= dword	ptr  4

		cmp	[esp+wParam], 78h
		jnz	short loc_403E85
		inc	dword_42DB8C

loc_403E85:				; CODE XREF: sub_403E78+5j
		push	0		; lParam
		push	[esp+4+wParam]	; wParam
		push	408h		; Msg
		push	hwnd		; hWnd
		call	ds:SendMessageA
		retn	4
sub_403E78	endp


; =============== S U B	R O U T	I N E =======================================


; int __stdcall	sub_403E9F(HWND	hDlg, int, int)
sub_403E9F	proc near		; CODE XREF: sub_4039CC+189p
					; sub_4039CC+26Ap ...

hDlg		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		push	[esp+arg_8]	; int
		push	0		; lpString1
		call	sub_405BC6
		push	eax		; lpString
		mov	eax, [esp+4+arg_4]
		add	eax, 3E8h
		push	eax		; nIDDlgItem
		push	[esp+8+hDlg]	; hDlg
		call	SetDlgItemTextA
		retn	0Ch
sub_403E9F	endp


; =============== S U B	R O U T	I N E =======================================


; int __stdcall	sub_403EC1(BOOL	bEnable)
sub_403EC1	proc near		; CODE XREF: sub_4039CC+2CDp
					; sub_403FE8+92p ...

bEnable		= dword	ptr  4

		push	[esp+bEnable]	; bEnable
		push	wParam		; hWnd
		call	ds:EnableWindow
		retn	4
sub_403EC1	endp


; =============== S U B	R O U T	I N E =======================================


; int __stdcall	sub_403ED4(WPARAM wParam)
sub_403ED4	proc near		; CODE XREF: sub_4039CC:loc_403D00p
					; sub_403FE8+A8p ...

wParam		= dword	ptr  4

		push	1		; lParam
		push	[esp+4+wParam]	; wParam
		push	28h		; Msg
		push	hwnd		; hWnd
		call	ds:SendMessageA
		retn	4
sub_403ED4	endp


; =============== S U B	R O U T	I N E =======================================


; int __stdcall	sub_403EEB(UINT	Msg)
sub_403EEB	proc near		; CODE XREF: sub_4039CC+20Bp
					; sub_4039CC+457p ...

Msg		= dword	ptr  4

		mov	eax, hDlg
		test	eax, eax
		jz	short locret_403F03
		push	0		; lParam
		push	0		; wParam
		push	[esp+8+Msg]	; Msg
		push	eax		; hWnd
		call	ds:SendMessageA

locret_403F03:				; CODE XREF: sub_403EEB+7j
		retn	4
sub_403EEB	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_403F06(int,	HDC hdc, HWND hWnd)
sub_403F06	proc near		; CODE XREF: sub_4039CC+149p
					; sub_403FE8+27Ep ...

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
		ja	loc_403FAC
		push	0FFFFFFEBh	; nIndex
		push	[ebp+hWnd]	; hWnd
		call	ds:GetWindowLongA
		mov	esi, eax
		test	esi, esi
		jz	short loc_403FAC
		test	byte ptr [esi+14h], 2
		mov	eax, [esi]
		push	edi
		mov	edi, ds:GetSysColor
		jz	short loc_403F41
		push	eax		; nIndex
		call	edi ; GetSysColor

loc_403F41:				; CODE XREF: sub_403F06+36j
		test	byte ptr [esi+14h], 1
		jz	short loc_403F51
		push	eax		; color
		push	[ebp+hdc]	; hdc
		call	ds:SetTextColor

loc_403F51:				; CODE XREF: sub_403F06+3Fj
		push	dword ptr [esi+10h] ; mode
		push	[ebp+hdc]	; hdc
		call	ds:SetBkMode
		mov	eax, [esi+4]
		test	byte ptr [esi+14h], 8
		mov	[ebp+plbrush.lbColor], eax
		jz	short loc_403F6F
		push	eax		; nIndex
		call	edi ; GetSysColor
		mov	[ebp+plbrush.lbColor], eax

loc_403F6F:				; CODE XREF: sub_403F06+61j
		test	byte ptr [esi+14h], 4
		pop	edi
		jz	short loc_403F80
		push	eax		; color
		push	[ebp+hdc]	; hdc
		call	ds:SetBkColor

loc_403F80:				; CODE XREF: sub_403F06+6Ej
		test	byte ptr [esi+14h], 10h
		jz	short loc_403FA7
		mov	eax, [esi+8]
		mov	[ebp+plbrush.lbStyle], eax
		mov	eax, [esi+0Ch]
		test	eax, eax
		jz	short loc_403F9A
		push	eax		; ho
		call	ds:DeleteObject

loc_403F9A:				; CODE XREF: sub_403F06+8Bj
		lea	eax, [ebp+plbrush]
		push	eax		; plbrush
		call	ds:CreateBrushIndirect
		mov	[esi+0Ch], eax

loc_403FA7:				; CODE XREF: sub_403F06+7Ej
		mov	eax, [esi+0Ch]
		jmp	short loc_403FAE
; ---------------------------------------------------------------------------

loc_403FAC:				; CODE XREF: sub_403F06+12j
					; sub_403F06+27j
		xor	eax, eax

loc_403FAE:				; CODE XREF: sub_403F06+A4j
		pop	esi
		leave
		retn	0Ch
sub_403F06	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_403FB3(int,	LPSTR lpString1, int iMaxLength, int)
sub_403FB3	proc near		; DATA XREF: sub_403FE8+5Eo

arg_0		= dword	ptr  8
lpString1	= dword	ptr  0Ch
iMaxLength	= dword	ptr  10h
arg_C		= dword	ptr  14h

		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+arg_0]
		mov	ecx, dword_42880C
		push	[ebp+iMaxLength] ; iMaxLength
		add	ecx, eax
		push	ecx		; lpString2
		push	[ebp+lpString1]	; lpString1
		call	ds:lstrcpynA
		push	[ebp+lpString1]	; lpString
		call	ds:__imp_lstrlenA
		mov	ecx, [ebp+arg_C]
		mov	[ecx], eax
		add	dword_42880C, eax
		xor	eax, eax
		pop	ebp
		retn	10h
sub_403FB3	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_403FE8(HWND	hDlg, int, HDC hdc, WPARAM wParam)
sub_403FE8	proc near		; DATA XREF: .data:lpDialogFunco

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
		jnz	loc_40410A
		mov	ebx, [ebp+wParam]
		mov	edi, [ebx+30h]
		test	edi, edi
		jge	short loc_404019
		mov	ecx, dword_42DB9C
		lea	eax, ds:4[edi*4]
		sub	ecx, eax
		mov	edi, [ecx]

loc_404019:				; CODE XREF: sub_403FE8+1Ej
		mov	eax, dword_42E3F8
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
		mov	[ebp+lpFile], offset sub_403FB3
		or	esi, eax
		call	sub_403E9F
		push	dword ptr [ebx+38h] ; int
		push	23h		; int
		push	[ebp+hDlg]	; hDlg
		call	sub_403E9F
		xor	eax, eax
		push	1		; uCheck
		test	esi, esi
		setz	al
		add	eax, 40Ah
		push	eax		; nIDButton
		push	[ebp+hDlg]	; hDlg
		call	ds:CheckDlgButton
		push	esi		; bEnable
		call	sub_403EC1
		push	3E8h		; nIDDlgItem
		push	[ebp+hDlg]	; hDlg
		call	ds:GetDlgItem
		mov	ebx, eax
		push	ebx		; wParam
		call	sub_403ED4
		mov	esi, ds:SendMessageA
		push	0		; lParam
		push	1		; wParam
		push	45Bh		; Msg
		push	ebx		; hWnd
		call	esi ; SendMessageA
		mov	eax, dword_42E3D0
		mov	eax, [eax+68h]
		test	eax, eax
		jge	short loc_4040BC
		neg	eax
		push	eax		; nIndex
		call	ds:GetSysColor

loc_4040BC:				; CODE XREF: sub_403FE8+C9j
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
		push	edi		; lpString
		call	lstrlenA
		xor	edi, edi
		push	eax		; lParam
		push	edi		; wParam
		push	435h		; Msg
		push	ebx		; hWnd
		call	esi ; SendMessageA
		lea	eax, [ebp+lParam]
		mov	dword_42880C, edi
		push	eax		; lParam
		push	[ebp+wParam]	; wParam
		push	449h		; Msg
		push	ebx		; hWnd
		call	esi ; SendMessageA
		mov	dword_42880C, edi
		xor	eax, eax
		jmp	loc_40426B
; ---------------------------------------------------------------------------

loc_40410A:				; CODE XREF: sub_403FE8+10j
		cmp	[ebp+arg_4], 111h
		mov	ebx, ds:GetDlgItem
		mov	esi, ds:SendMessageA
		jnz	short loc_404179
		mov	eax, [ebp+hdc]
		shr	eax, 10h
		test	ax, ax
		jnz	loc_40425C
		xor	eax, eax
		cmp	dword_42880C, eax
		jnz	loc_40425C
		mov	ecx, dword_429018
		lea	edi, [ecx+14h]
		test	byte ptr [edi],	20h
		jz	loc_40425C
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
		call	sub_403EC1
		call	sub_404272

loc_404179:				; CODE XREF: sub_403FE8+135j
		cmp	[ebp+arg_4], 4Eh
		jnz	loc_40424D
		push	3E8h		; nIDDlgItem
		push	[ebp+hDlg]	; hDlg
		call	ebx ; GetDlgItem
		mov	edi, [ebp+wParam]
		cmp	dword ptr [edi+8], 70Bh
		jnz	short loc_40420B
		cmp	dword ptr [edi+0Ch], 201h
		jnz	short loc_40420B
		mov	ecx, [edi+1Ch]
		mov	edx, [edi+18h]
		mov	[ebp+var_8], ecx
		sub	ecx, edx
		cmp	ecx, 800h
		mov	[ebp+lParam], edx
		mov	[ebp+lpFile], offset String
		jnb	short loc_40420B
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

loc_40420B:				; CODE XREF: sub_403FE8+1AFj
					; sub_403FE8+1B8j ...
		cmp	dword ptr [edi+8], 700h
		jnz	short loc_40425F
		cmp	dword ptr [edi+0Ch], 100h
		jnz	short loc_40425F
		cmp	dword ptr [edi+10h], 0Dh
		jnz	short loc_404234
		push	0		; lParam
		push	1		; wParam
		push	111h		; Msg
		push	hwnd		; hWnd
		call	esi ; SendMessageA

loc_404234:				; CODE XREF: sub_403FE8+239j
		cmp	dword ptr [edi+10h], 1Bh
		jnz	short loc_404248
		push	0		; lParam
		push	0		; wParam
		push	10h		; Msg
		push	hwnd		; hWnd
		call	esi ; SendMessageA

loc_404248:				; CODE XREF: sub_403FE8+250j
		xor	eax, eax
		inc	eax
		jmp	short loc_40426B
; ---------------------------------------------------------------------------

loc_40424D:				; CODE XREF: sub_403FE8+195j
		cmp	[ebp+arg_4], 40Bh
		jnz	short loc_40425C
		inc	dword_42880C

loc_40425C:				; CODE XREF: sub_403FE8+140j
					; sub_403FE8+14Ej ...
		mov	edi, [ebp+wParam]

loc_40425F:				; CODE XREF: sub_403FE8+22Aj
					; sub_403FE8+233j
		push	edi		; hWnd
		push	[ebp+hdc]	; hdc
		push	[ebp+arg_4]	; int
		call	sub_403F06

loc_40426B:				; CODE XREF: sub_403FE8+11Dj
					; sub_403FE8+263j
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn	10h
sub_403FE8	endp


; =============== S U B	R O U T	I N E =======================================


sub_404272	proc near		; CODE XREF: sub_403FE8+18Cp
					; sub_4042DD+315p
		cmp	dword_42E44C, 0
		mov	eax, dword_428808
		jnz	short loc_404285
		mov	eax, wParam

loc_404285:				; CODE XREF: sub_404272+Cj
		push	1		; lParam
		push	1		; wParam
		push	0F4h		; Msg
		push	eax		; hWnd
		call	ds:SendMessageA
		retn
sub_404272	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_404296(HWND	hDlg, int, HDC hdc, HWND hWnd)
sub_404296	proc near		; DATA XREF: .data:004091E8o

hDlg		= dword	ptr  8
arg_4		= dword	ptr  0Ch
hdc		= dword	ptr  10h
hWnd		= dword	ptr  14h

		push	ebp
		mov	ebp, esp
		cmp	[ebp+arg_4], 110h
		push	esi
		mov	esi, [ebp+hWnd]
		jnz	short loc_4042CC
		push	dword ptr [esi+30h] ; int
		push	1Dh		; int
		push	[ebp+hDlg]	; hDlg
		call	sub_403E9F
		mov	eax, [esi+3Ch]
		shl	eax, 0Ah
		add	eax, offset dword_42F000
		push	eax		; lpString
		push	3E8h		; nIDDlgItem
		push	[ebp+hDlg]	; hDlg
		call	SetDlgItemTextA

loc_4042CC:				; CODE XREF: sub_404296+Ej
		push	esi		; hWnd
		push	[ebp+hdc]	; hdc
		push	[ebp+arg_4]	; int
		call	sub_403F06
		pop	esi
		pop	ebp
		retn	10h
sub_404296	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_4042DD(HWND	hDlg, int, HDC hdc, HWND hWnd)
sub_4042DD	proc near		; DATA XREF: .data:004091E0o

bi		= _browseinfoA ptr -48h
var_28		= dword	ptr -28h
TotalNumberOfClusters= dword ptr -24h
var_20		= dword	ptr -20h
var_1C		= byte ptr -1Ch
BytesPerSector	= dword	ptr -18h
var_14		= byte ptr -14h
SectorsPerCluster= dword ptr -10h
NumberOfFreeClusters= dword ptr	-0Ch
var_8		= dword	ptr -8
var_4		= dword	ptr -4
hDlg		= dword	ptr  8
arg_4		= dword	ptr  0Ch
hdc		= dword	ptr  10h
hWnd		= dword	ptr  14h

		push	ebp
		mov	ebp, esp
		sub	esp, 48h
		mov	eax, dword_429018
		push	ebx
		mov	[ebp+var_20], eax
		push	esi
		mov	ebx, [eax+3Ch]
		mov	eax, [eax+38h]
		shl	ebx, 0Ah
		add	ebx, offset dword_42F000
		cmp	[ebp+arg_4], 40Bh
		push	edi
		mov	[ebp+var_8], eax
		jnz	short loc_40431A
		push	ebx		; lpString
		push	3FBh		; nIDDlgItem
		call	sub_40539C
		push	ebx		; lpsz
		call	sub_405E0F

loc_40431A:				; CODE XREF: sub_4042DD+2Aj
		cmp	[ebp+arg_4], 110h
		mov	esi, [ebp+hDlg]
		jnz	short loc_404392
		push	3FBh		; nIDDlgItem
		push	esi		; hDlg
		call	ds:GetDlgItem
		push	ebx
		mov	edi, eax
		call	sub_4056A1
		test	eax, eax
		jz	short loc_40434E
		push	ebx		; lpsz
		call	sub_4056CD
		test	eax, eax
		jnz	short loc_40434E
		push	ebx		; lpString
		call	sub_405634

loc_40434E:				; CODE XREF: sub_4042DD+5Fj
					; sub_4042DD+69j
		push	ebx		; lpString
		push	edi		; hWnd
		mov	hDlg, esi
		call	ds:SetWindowTextA
		mov	eax, [ebp+hWnd]
		push	dword ptr [eax+34h] ; int
		push	1		; int
		push	esi		; hDlg
		call	sub_403E9F
		mov	eax, [ebp+hWnd]
		push	dword ptr [eax+30h] ; int
		push	14h		; int
		push	esi		; hDlg
		call	sub_403E9F
		push	edi		; wParam
		call	sub_403ED4
		push	8
		call	sub_405ECF
		test	eax, eax
		jz	loc_4045FD
		push	1
		push	edi
		call	eax

loc_404392:				; CODE XREF: sub_4042DD+47j
		cmp	[ebp+arg_4], 111h
		jnz	loc_404470
		movzx	eax, word ptr [ebp+hdc]
		cmp	eax, 3FBh
		jnz	short loc_4043C2
		mov	ecx, [ebp+hdc]
		shr	ecx, 10h
		cmp	cx, 300h
		jnz	loc_4045FD
		mov	[ebp+arg_4], 40Fh

loc_4043C2:				; CODE XREF: sub_4042DD+CBj
		cmp	eax, 3E9h
		jnz	loc_404470
		push	7
		xor	eax, eax
		pop	ecx
		lea	edi, [ebp+bi.pidlRoot]
		push	[ebp+var_8]	; int
		rep stosd
		mov	edi, offset byte_429840
		push	offset dword_428C18 ; lpString1
		mov	[ebp+bi.hwndOwner], esi
		mov	[ebp+bi.pszDisplayName], edi
		mov	[ebp+bi.lpfn], offset sub_404612
		mov	[ebp+bi.lParam], ebx
		call	sub_405BC6
		mov	[ebp+bi.lpszTitle], eax
		lea	eax, [ebp+bi]
		push	eax		; lpbi
		mov	[ebp+bi.ulFlags], 41h
		call	ds:SHBrowseForFolderA
		test	eax, eax
		jz	short loc_404469
		push	eax		; pv
		call	ds:CoTaskMemFree
		push	ebx		; lpString
		call	sub_405634
		mov	eax, dword_42E3D0
		mov	eax, [eax+11Ch]
		test	eax, eax
		jz	short loc_404455
		cmp	ebx, offset byte_434400
		jnz	short loc_404455
		push	eax		; int
		push	0		; lpString1
		call	sub_405BC6
		push	edi		; lpString2
		mov	edi, offset String
		push	edi		; lpString1
		call	ds:lstrcmpiA
		test	eax, eax
		jz	short loc_404455
		push	edi		; lpString2
		push	ebx		; lpString1
		call	lstrcatA

loc_404455:				; CODE XREF: sub_4042DD+14Ej
					; sub_4042DD+156j ...
		inc	dword_429830
		push	ebx		; lpString
		push	3FBh		; nIDDlgItem
		push	esi		; hDlg
		call	SetDlgItemTextA
		jmp	short loc_404470
; ---------------------------------------------------------------------------

loc_404469:				; CODE XREF: sub_4042DD+132j
		mov	[ebp+arg_4], 40Fh

loc_404470:				; CODE XREF: sub_4042DD+BCj
					; sub_4042DD+EAj ...
		cmp	[ebp+arg_4], 40Fh
		jz	short loc_404486
		cmp	[ebp+arg_4], 405h
		jnz	loc_4045FD

loc_404486:				; CODE XREF: sub_4042DD+19Aj
		and	[ebp+var_4], 0
		and	[ebp+var_8], 0
		push	ebx		; lpString
		push	3FBh		; nIDDlgItem
		call	sub_40539C
		push	ebx		; lpString2
		call	sub_405722
		test	eax, eax
		jnz	short loc_4044AA
		mov	[ebp+var_4], 1

loc_4044AA:				; CODE XREF: sub_4042DD+1C4j
		mov	esi, offset RootPathName
		push	ebx		; lpString2
		push	esi		; lpString1
		call	sub_405BA4
		xor	edi, edi
		push	edi
		call	sub_405ECF
		cmp	eax, edi
		mov	[ebp+NumberOfFreeClusters], eax
		jz	short loc_4044F8
		xor	eax, eax
		cmp	eax, esi
		jz	short loc_4044F8

loc_4044CB:				; CODE XREF: sub_4042DD+219j
		lea	eax, [ebp+var_1C]
		push	eax
		lea	eax, [ebp+var_14]
		push	eax
		lea	eax, [ebp+var_28]
		push	eax
		push	esi
		call	[ebp+NumberOfFreeClusters]
		test	eax, eax
		jnz	short loc_404549
		test	edi, edi
		jz	short loc_4044E5
		and	[edi], al

loc_4044E5:				; CODE XREF: sub_4042DD+204j
		push	esi		; lpString
		call	sub_40567B
		mov	edi, eax
		and	byte ptr [edi],	0
		dec	edi
		cmp	edi, esi
		mov	byte ptr [edi],	5Ch
		jnz	short loc_4044CB

loc_4044F8:				; CODE XREF: sub_4042DD+1E6j
					; sub_4042DD+1ECj
		push	ebx		; lpString2
		push	esi		; lpString1
		call	sub_405BA4
		push	esi		; lpsz
		call	sub_4056CD
		test	eax, eax
		jz	short loc_40450C
		and	byte ptr [eax],	0

loc_40450C:				; CODE XREF: sub_4042DD+22Aj
		lea	eax, [ebp+TotalNumberOfClusters]
		push	eax		; lpTotalNumberOfClusters
		lea	eax, [ebp+NumberOfFreeClusters]
		push	eax		; lpNumberOfFreeClusters
		lea	eax, [ebp+BytesPerSector]
		push	eax		; lpBytesPerSector
		lea	eax, [ebp+SectorsPerCluster]
		push	eax		; lpSectorsPerCluster
		push	esi		; lpRootPathName
		call	ds:GetDiskFreeSpaceA
		test	eax, eax
		jz	short loc_40455F
		mov	eax, [ebp+SectorsPerCluster]
		mov	esi, 400h
		imul	eax, [ebp+BytesPerSector]
		push	esi		; nDenominator
		push	[ebp+NumberOfFreeClusters] ; nNumerator
		push	eax		; nNumber
		call	ds:MulDiv
		mov	edi, eax
		mov	[ebp+var_8], 1
		jmp	short loc_404567
; ---------------------------------------------------------------------------

loc_404549:				; CODE XREF: sub_4042DD+200j
		mov	edi, [ebp+var_28]
		mov	eax, [ebp+TotalNumberOfClusters]
		shrd	edi, eax, 0Ah
		shr	eax, 0Ah
		mov	[ebp+var_8], 1
		jmp	short loc_404562
; ---------------------------------------------------------------------------

loc_40455F:				; CODE XREF: sub_4042DD+248j
		mov	edi, [ebp+arg_4]

loc_404562:				; CODE XREF: sub_4042DD+280j
		mov	esi, 400h

loc_404567:				; CODE XREF: sub_4042DD+26Aj
		push	5
		call	sub_40472D
		xor	ebx, ebx
		cmp	[ebp+var_8], ebx
		jz	short loc_404580
		cmp	edi, eax
		jnb	short loc_404580
		mov	[ebp+var_4], 2

loc_404580:				; CODE XREF: sub_4042DD+296j
					; sub_4042DD+29Aj
		mov	ecx, dword_42DB9C
		cmp	[ecx+10h], ebx
		jz	short loc_4045B6
		push	eax		; int
		push	0FFFFFFFBh	; int
		push	3FFh		; nIDDlgItem
		call	sub_404678
		cmp	[ebp+var_8], ebx
		jz	short loc_4045A8
		push	edi		; int
		push	0FFFFFFFCh	; int
		push	esi		; nIDDlgItem
		call	sub_404678
		jmp	short loc_4045B6
; ---------------------------------------------------------------------------

loc_4045A8:				; CODE XREF: sub_4042DD+2BEj
		push	offset pszPath	; lpString
		push	esi		; nIDDlgItem
		push	[ebp+hDlg]	; hDlg
		call	SetDlgItemTextA

loc_4045B6:				; CODE XREF: sub_4042DD+2ACj
					; sub_4042DD+2C9j
		mov	eax, [ebp+var_4]
		cmp	eax, ebx
		mov	dword_42E464, eax
		jnz	short loc_4045CC
		push	7
		call	sub_40140B
		mov	[ebp+var_4], eax

loc_4045CC:				; CODE XREF: sub_4042DD+2E3j
		mov	eax, [ebp+var_20]
		test	[eax+14h], esi
		jz	short loc_4045D7
		mov	[ebp+var_4], ebx

loc_4045D7:				; CODE XREF: sub_4042DD+2F5j
		xor	eax, eax
		cmp	[ebp+var_4], ebx
		setz	al
		push	eax		; bEnable
		call	sub_403EC1
		cmp	[ebp+var_4], ebx
		jnz	short loc_4045F7
		cmp	dword_429830, ebx
		jnz	short loc_4045F7
		call	sub_404272

loc_4045F7:				; CODE XREF: sub_4042DD+30Bj
					; sub_4042DD+313j
		mov	dword_429830, ebx

loc_4045FD:				; CODE XREF: sub_4042DD+AAj
					; sub_4042DD+D8j ...
		push	[ebp+hWnd]	; hWnd
		push	[ebp+hdc]	; hdc
		push	[ebp+arg_4]	; int
		call	sub_403F06
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn	10h
sub_4042DD	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_404612(HWND	hWnd, int, LPCITEMIDLIST pidl, LPARAM lParam)
sub_404612	proc near		; DATA XREF: sub_4042DD+10Do

hWnd		= dword	ptr  8
arg_4		= dword	ptr  0Ch
pidl		= dword	ptr  10h
lParam		= dword	ptr  14h

		push	ebp
		mov	ebp, esp
		cmp	[ebp+arg_4], 1
		push	esi
		mov	esi, ds:SendMessageA
		jnz	short loc_40463E
		push	[ebp+lParam]	; lpString
		push	3FBh		; nIDDlgItem
		call	sub_40539C
		push	[ebp+lParam]	; lParam
		push	1		; wParam
		push	466h		; Msg
		push	[ebp+hWnd]	; hWnd
		call	esi ; SendMessageA

loc_40463E:				; CODE XREF: sub_404612+Ej
		cmp	[ebp+arg_4], 2
		jnz	short loc_404671
		push	[ebp+lParam]	; pszPath
		push	[ebp+pidl]	; pidl
		call	ds:SHGetPathFromIDListA
		test	eax, eax
		jz	short loc_404662
		push	7
		call	sub_40140B
		test	eax, eax
		jnz	short loc_404662
		inc	eax
		jmp	short loc_404664
; ---------------------------------------------------------------------------

loc_404662:				; CODE XREF: sub_404612+40j
					; sub_404612+4Bj
		xor	eax, eax

loc_404664:				; CODE XREF: sub_404612+4Ej
		push	eax		; lParam
		push	0		; wParam
		push	465h		; Msg
		push	[ebp+hWnd]	; hWnd
		call	esi ; SendMessageA

loc_404671:				; CODE XREF: sub_404612+30j
		xor	eax, eax
		pop	esi
		pop	ebp
		retn	10h
sub_404612	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_404678(int nIDDlgItem, int,	int)
sub_404678	proc near		; CODE XREF: sub_4042DD+2B6p
					; sub_4042DD+2C4p ...

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
		jnb	short loc_404698
		push	0Ah
		pop	edi
		push	0FFFFFFDDh
		pop	ebx

loc_404698:				; CODE XREF: sub_404678+18j
		cmp	esi, 400h
		jnb	short loc_4046A5
		push	0FFFFFFDEh
		xor	edi, edi
		pop	ebx

loc_4046A5:				; CODE XREF: sub_404678+26j
		cmp	esi, 0FFFF3333h
		jnb	short loc_4046BC
		xor	eax, eax
		mov	ecx, edi
		inc	eax
		push	14h
		shl	eax, cl
		pop	ecx
		cdq
		idiv	ecx
		add	esi, eax

loc_4046BC:				; CODE XREF: sub_404678+33j
		lea	eax, [ebp+String1]
		push	0FFFFFFDFh	; int
		push	eax		; lpString1
		call	sub_405BC6
		push	eax
		lea	eax, [ebp+var_40]
		push	ebx		; int
		push	eax		; lpString1
		call	sub_405BC6
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
		mov	esi, offset byte_429840
		push	[ebp+arg_4]	; int
		push	esi		; lpString1
		call	sub_405BC6
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
sub_404678	endp


; =============== S U B	R O U T	I N E =======================================


sub_40472D	proc near		; CODE XREF: sub_4042DD+28Cp
					; sub_40480C+592p ...

arg_0		= dword	ptr  4

		mov	edx, dword_42E3EC
		mov	ecx, dword_42E3E8
		xor	eax, eax
		test	edx, edx
		jz	short locret_404757
		push	esi

loc_404740:				; CODE XREF: sub_40472D+27j
		test	byte ptr [ecx+8], 1
		jz	short loc_40474D
		mov	esi, [esp+4+arg_0]
		add	eax, [ecx+esi*4]

loc_40474D:				; CODE XREF: sub_40472D+17j
		add	ecx, 418h
		dec	edx
		jnz	short loc_404740
		pop	esi

locret_404757:				; CODE XREF: sub_40472D+10j
		retn	4
sub_40472D	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_40475A(HWND	hWnd, int)
sub_40475A	proc near		; CODE XREF: sub_40480C+2D6p
					; sub_404E03+3Ep

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
		jz	short loc_4047B9
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
		jnz	short loc_4047B6
		or	eax, 0FFFFFFFFh
		jmp	short loc_4047D4
; ---------------------------------------------------------------------------

loc_4047B6:				; CODE XREF: sub_40475A+55j
		mov	eax, [ebp+var_4]

loc_4047B9:				; CODE XREF: sub_40475A+21j
		mov	[ebp+var_34], eax
		lea	eax, [ebp+lParam]
		push	eax		; lParam
		push	0		; wParam
		push	110Ch		; Msg
		push	edi		; hWnd
		mov	[ebp+lParam], 4
		call	esi ; SendMessageA
		mov	eax, [ebp+var_14]

loc_4047D4:				; CODE XREF: sub_40475A+5Aj
		pop	edi
		pop	esi
		leave
		retn	8
sub_40475A	endp


; =============== S U B	R O U T	I N E =======================================


sub_4047DA	proc near		; CODE XREF: sub_40480C+46Bp
					; sub_404E03+68p

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		push	esi
		push	edi
		mov	esi, offset dword_42F000
		mov	edi, offset byte_429840
		push	esi		; lpString2
		push	edi		; lpString1
		call	sub_405BA4
		push	[esp+8+arg_4]	; int
		push	esi		; LPSTR
		call	sub_405B02
		push	[esp+8+arg_0]
		call	sub_40140B
		push	edi		; lpString2
		push	esi		; lpString1
		call	sub_405BA4
		pop	edi
		pop	esi
		retn	8
sub_4047DA	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_40480C(HWND	hDlg, int, HDC hdc, HWND)
sub_40480C	proc near		; DATA XREF: .data:004091DCo

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
var_14		= dword	ptr -14h
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
		mov	edi, [ebp+hDlg]
		push	3F9h		; nIDDlgItem
		push	edi		; hDlg
		call	esi ; GetDlgItem
		push	408h		; nIDDlgItem
		push	edi		; hDlg
		mov	[ebp+var_8], eax
		call	esi ; GetDlgItem
		mov	[ebp+hWnd], eax
		mov	eax, dword_42E3E8
		mov	esi, ds:SendMessageA
		mov	[ebp+var_10], eax
		mov	eax, dword_42E3D0
		xor	ebx, ebx
		add	eax, 94h
		cmp	[ebp+arg_4], 110h
		mov	[ebp+var_14], eax
		jnz	loc_404A78
		mov	eax, dword_42E3EC
		mov	[ebp+var_1C], ebx
		shl	eax, 2
		push	eax		; dwBytes
		push	40h		; uFlags
		mov	[ebp+var_C], 2
		mov	dword_42E420, edi
		call	ds:GlobalAlloc
		push	6Eh		; lpBitmapName
		mov	dword_429838, eax
		push	hInstance	; hInstance
		call	ds:LoadBitmapA
		or	dword_42982C, 0FFFFFFFFh
		push	offset sub_404E03 ; dwNewLong
		push	0FFFFFFFCh	; nIndex
		mov	edi, eax
		push	[ebp+hWnd]	; hWnd
		call	ds:SetWindowLongA
		push	ebx		; cGrow
		push	6		; cInitial
		push	21h		; flags
		push	10h		; cy
		push	10h		; cx
		mov	lpPrevWndFunc, eax
		call	ds:ImageList_Create
		push	0FF00FFh	; crMask
		push	edi		; hbmImage
		push	eax		; himl
		mov	himl, eax
		call	ds:ImageList_AddMasked
		push	himl		; lParam
		push	2		; wParam
		push	1109h		; Msg
		push	[ebp+hWnd]	; hWnd
		call	esi ; SendMessageA
		push	ebx		; lParam
		push	ebx		; wParam
		push	111Ch		; Msg
		push	[ebp+hWnd]	; hWnd
		call	esi ; SendMessageA
		cmp	eax, 10h
		jge	short loc_404901
		push	ebx		; lParam
		push	10h		; wParam
		push	111Bh		; Msg
		push	[ebp+hWnd]	; hWnd
		call	esi ; SendMessageA

loc_404901:				; CODE XREF: sub_40480C+E6j
		push	edi		; ho
		call	ds:DeleteObject
		xor	edi, edi

loc_40490A:				; CODE XREF: sub_40480C+133j
		mov	eax, [ebp+var_14]
		mov	eax, [eax+edi*4]
		cmp	eax, ebx
		jz	short loc_40493B
		cmp	edi, 20h
		jz	short loc_40491C
		mov	[ebp+var_C], ebx

loc_40491C:				; CODE XREF: sub_40480C+10Bj
		push	eax		; int
		push	ebx		; lpString1
		call	sub_405BC6
		push	eax		; lParam
		push	ebx		; wParam
		push	143h		; Msg
		push	[ebp+var_8]	; hWnd
		call	esi ; SendMessageA
		push	edi		; lParam
		push	eax		; wParam
		push	151h		; Msg
		push	[ebp+var_8]	; hWnd
		call	esi ; SendMessageA

loc_40493B:				; CODE XREF: sub_40480C+106j
		inc	edi
		cmp	edi, 21h
		jl	short loc_40490A
		mov	edi, [ebp+arg_C]
		mov	ebx, [ebp+var_C]
		push	dword ptr [edi+ebx*4+30h] ; int
		push	15h		; int
		push	[ebp+hDlg]	; hDlg
		call	sub_403E9F
		push	dword ptr [edi+ebx*4+34h] ; int
		push	16h		; int
		push	[ebp+hDlg]	; hDlg
		call	sub_403E9F
		xor	edi, edi
		xor	ebx, ebx
		cmp	dword_42E3EC, edi
		jle	loc_404A37
		mov	eax, [ebp+var_10]
		lea	edx, [eax+8]
		mov	[ebp+var_18], edx

loc_40497C:				; CODE XREF: sub_40480C+21Fj
		lea	eax, [edx+10h]
		cmp	byte ptr [eax],	0
		jz	loc_404A18
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
		jz	short loc_4049EA
		lea	eax, [ebp+lParam]
		mov	[ebp+var_48], 4Dh
		push	eax		; lParam
		push	0		; wParam
		push	1100h		; Msg
		mov	[ebp+var_28], 1
		push	[ebp+hWnd]	; hWnd
		call	esi ; SendMessageA
		mov	ecx, dword_429838
		mov	[ebp+var_1C], 1
		mov	[ecx+edi*4], eax
		mov	eax, dword_429838
		mov	ebx, [eax+edi*4]
		jmp	short loc_404A18
; ---------------------------------------------------------------------------

loc_4049EA:				; CODE XREF: sub_40480C+1A4j
		test	al, 4
		jz	short loc_4049FF
		push	ebx		; lParam
		push	3		; wParam
		push	110Ah		; Msg
		push	[ebp+hWnd]	; hWnd
		call	esi ; SendMessageA
		mov	ebx, eax
		jmp	short loc_404A18
; ---------------------------------------------------------------------------

loc_4049FF:				; CODE XREF: sub_40480C+1E0j
		lea	eax, [ebp+lParam]
		push	eax		; lParam
		push	0		; wParam
		push	1100h		; Msg
		push	[ebp+hWnd]	; hWnd
		call	esi ; SendMessageA
		mov	ecx, dword_429838
		mov	[ecx+edi*4], eax

loc_404A18:				; CODE XREF: sub_40480C+176j
					; sub_40480C+1DCj ...
		mov	edx, [ebp+var_18]
		inc	edi
		add	edx, 418h
		cmp	edi, dword_42E3EC
		mov	[ebp+var_18], edx
		jl	loc_40497C
		cmp	[ebp+var_1C], 0
		jnz	short loc_404A50

loc_404A37:				; CODE XREF: sub_40480C+161j
		push	0FFFFFFF0h	; nIndex
		push	[ebp+hWnd]	; hWnd
		call	ds:GetWindowLongA
		and	al, 0FBh
		push	eax		; dwNewLong
		push	0FFFFFFF0h	; nIndex
		push	[ebp+hWnd]	; hWnd
		call	ds:SetWindowLongA

loc_404A50:				; CODE XREF: sub_40480C+229j
		cmp	[ebp+var_C], 0
		jnz	short loc_404A6E
		push	5		; nCmdShow
		push	[ebp+var_8]	; hWnd
		call	ds:ShowWindow
		push	[ebp+var_8]	; wParam
		call	sub_403ED4
		jmp	loc_404DEE
; ---------------------------------------------------------------------------

loc_404A6E:				; CODE XREF: sub_40480C+248j
		push	[ebp+hWnd]	; wParam
		call	sub_403ED4
		xor	ebx, ebx

loc_404A78:				; CODE XREF: sub_40480C+4Cj
		cmp	[ebp+arg_4], 405h
		jnz	short loc_404A93
		xor	ecx, ecx
		mov	[ebp+hdc], ebx
		inc	ecx
		mov	[ebp+arg_4], 40Fh
		mov	[ebp+arg_C], ecx
		jmp	short loc_404A96
; ---------------------------------------------------------------------------

loc_404A93:				; CODE XREF: sub_40480C+273j
		mov	ecx, [ebp+arg_C]

loc_404A96:				; CODE XREF: sub_40480C+285j
		cmp	[ebp+arg_4], 4Eh
		mov	eax, 413h
		jz	short loc_404AAA
		cmp	[ebp+arg_4], eax
		jnz	loc_404B8E

loc_404AAA:				; CODE XREF: sub_40480C+293j
		cmp	[ebp+arg_4], eax
		mov	[ebp+var_C], ecx
		jz	short loc_404ABF
		cmp	dword ptr [ecx+4], 408h
		jnz	loc_404B8E

loc_404ABF:				; CODE XREF: sub_40480C+2A4j
		test	byte ptr dword_42E3D8+1, 2
		jnz	short loc_404B3B
		cmp	[ebp+arg_4], eax
		jz	short loc_404AD6
		mov	ecx, [ebp+arg_C]
		cmp	dword ptr [ecx+8], 0FFFFFFFEh
		jnz	short loc_404B3B

loc_404AD6:				; CODE XREF: sub_40480C+2BFj
		xor	ecx, ecx
		cmp	[ebp+arg_4], eax
		setnz	cl
		push	ecx		; int
		push	[ebp+hWnd]	; hWnd
		call	sub_40475A
		mov	edi, eax
		cmp	edi, ebx
		jl	short loc_404B3B
		imul	eax, 418h
		mov	ecx, [ebp+var_10]
		lea	ecx, [eax+ecx+8]
		mov	eax, [ecx]
		test	al, 10h
		jnz	short loc_404B3B
		test	al, 40h
		jz	short loc_404B15
		xor	eax, 80h
		test	al, al
		jns	short loc_404B11
		or	al, 1
		jmp	short loc_404B18
; ---------------------------------------------------------------------------

loc_404B11:				; CODE XREF: sub_40480C+2FFj
		and	al, 0FEh
		jmp	short loc_404B18
; ---------------------------------------------------------------------------

loc_404B15:				; CODE XREF: sub_40480C+2F6j
		xor	eax, 1

loc_404B18:				; CODE XREF: sub_40480C+303j
					; sub_40480C+307j
		push	edi
		mov	[ecx], eax
		call	sub_40117D
		mov	eax, dword_42E3D8
		inc	edi
		not	eax
		shr	eax, 8
		and	eax, 1
		mov	[ebp+hdc], edi
		mov	[ebp+arg_C], eax
		mov	[ebp+arg_4], 40Fh

loc_404B3B:				; CODE XREF: sub_40480C+2BAj
					; sub_40480C+2C8j ...
		cmp	[ebp+var_C], ebx
		jz	short loc_404B8E
		mov	eax, [ebp+var_C]
		cmp	dword ptr [eax+8], 0FFFFFE6Eh
		jnz	short loc_404B5A
		push	dword ptr [eax+5Ch] ; lParam
		push	ebx		; wParam
		push	419h		; Msg
		push	[ebp+hWnd]	; hWnd
		call	esi ; SendMessageA

loc_404B5A:				; CODE XREF: sub_40480C+33Ej
		mov	eax, [ebp+var_C]
		cmp	dword ptr [eax+8], 0FFFFFE6Ah
		jnz	short loc_404B8E
		cmp	dword ptr [eax+0Ch], 2
		mov	ecx, [ebp+var_10]
		mov	eax, [eax+5Ch]
		jnz	short loc_404B81
		imul	eax, 418h
		lea	eax, [eax+ecx+8]
		or	dword ptr [eax], 20h
		jmp	short loc_404B8E
; ---------------------------------------------------------------------------

loc_404B81:				; CODE XREF: sub_40480C+364j
		imul	eax, 418h
		lea	eax, [eax+ecx+8]
		and	dword ptr [eax], 0FFFFFFDFh

loc_404B8E:				; CODE XREF: sub_40480C+298j
					; sub_40480C+2ADj ...
		cmp	[ebp+arg_4], 111h
		jnz	short loc_404C06
		cmp	word ptr [ebp+hdc], 3F9h
		jnz	loc_404DEE
		mov	eax, [ebp+hdc]
		shr	eax, 10h
		cmp	ax, 1
		jnz	loc_404DEE
		push	ebx		; lParam
		push	ebx		; wParam
		push	147h		; Msg
		push	[ebp+var_8]	; hWnd
		call	esi ; SendMessageA
		cmp	eax, 0FFFFFFFFh
		jz	loc_404DEE
		push	ebx		; lParam
		push	eax		; wParam
		push	150h		; Msg
		push	[ebp+var_8]	; hWnd
		call	esi ; SendMessageA
		mov	edi, eax
		cmp	edi, 0FFFFFFFFh
		jz	short loc_404BE3
		mov	eax, [ebp+var_14]
		cmp	[eax+edi*4], ebx
		jnz	short loc_404BE6

loc_404BE3:				; CODE XREF: sub_40480C+3CDj
		push	20h
		pop	edi

loc_404BE6:				; CODE XREF: sub_40480C+3D5j
		push	edi
		call	sub_401299
		push	edi		; lParam
		push	ebx		; wParam
		push	420h		; Msg
		push	[ebp+hDlg]	; hWnd
		call	esi ; SendMessageA
		or	[ebp+hdc], 0FFFFFFFFh
		mov	[ebp+arg_C], ebx
		mov	[ebp+arg_4], 40Fh

loc_404C06:				; CODE XREF: sub_40480C+389j
		mov	eax, 200h
		cmp	[ebp+arg_4], eax
		jnz	short loc_404C18
		push	ebx		; lParam
		push	ebx		; wParam
		push	eax		; Msg
		push	[ebp+hWnd]	; hWnd
		call	esi ; SendMessageA

loc_404C18:				; CODE XREF: sub_40480C+402j
		cmp	[ebp+arg_4], 40Bh
		jnz	short loc_404C53
		mov	eax, himl
		cmp	eax, ebx
		jz	short loc_404C31
		push	eax		; himl
		call	ds:ImageList_Destroy

loc_404C31:				; CODE XREF: sub_40480C+41Cj
		mov	eax, dword_429838
		cmp	eax, ebx
		jz	short loc_404C41
		push	eax		; hMem
		call	ds:GlobalFree

loc_404C41:				; CODE XREF: sub_40480C+42Cj
		mov	himl, ebx
		mov	dword_429838, ebx
		mov	dword_42E420, ebx

loc_404C53:				; CODE XREF: sub_40480C+413j
		cmp	[ebp+arg_4], 40Fh
		jnz	loc_404DB0
		push	ebx
		push	ebx
		call	sub_4011EF
		mov	eax, [ebp+hdc]
		cmp	eax, ebx
		jz	short loc_404C7C
		cmp	eax, 0FFFFFFFFh
		jz	short loc_404C74
		dec	eax

loc_404C74:				; CODE XREF: sub_40480C+465j
		push	eax
		push	8
		call	sub_4047DA

loc_404C7C:				; CODE XREF: sub_40480C+460j
		cmp	[ebp+arg_C], ebx
		jz	short loc_404CC0
		push	dword_429838
		call	sub_4012E2
		mov	edi, eax
		push	edi
		call	sub_401299
		xor	eax, eax
		xor	ecx, ecx
		cmp	edi, ebx
		jle	short loc_404CAA

loc_404C9C:				; CODE XREF: sub_40480C+49Cj
		mov	edx, [ebp+var_14]
		cmp	[edx+eax*4], ebx
		jz	short loc_404CA5
		inc	ecx

loc_404CA5:				; CODE XREF: sub_40480C+496j
		inc	eax
		cmp	eax, edi
		jl	short loc_404C9C

loc_404CAA:				; CODE XREF: sub_40480C+48Ej
		push	ebx		; lParam
		push	ecx		; wParam
		push	14Eh		; Msg
		push	[ebp+var_8]	; hWnd
		call	esi ; SendMessageA
		mov	[ebp+arg_C], edi
		mov	[ebp+arg_4], 420h

loc_404CC0:				; CODE XREF: sub_40480C+473j
		push	ebx
		push	ebx
		call	sub_4011EF
		mov	eax, dword_429838
		cmp	dword_42E3EC, ebx
		mov	[ebp+var_1C], eax
		mov	eax, dword_42E3E8
		mov	[ebp+var_38], 0F030h
		mov	[ebp+var_10], ebx
		jle	loc_404D86
		lea	edi, [eax+8]

loc_404CED:				; CODE XREF: sub_40480C+574j
		mov	eax, [ebp+var_1C]
		mov	ecx, [ebp+var_10]
		mov	eax, [eax+ecx*4]
		cmp	eax, ebx
		jz	short loc_404D6E
		mov	ecx, [edi]
		mov	[ebp+var_40], eax
		test	ch, 1
		mov	[ebp+var_44], 8
		jz	short loc_404D1C
		lea	eax, [edi+10h]
		mov	[ebp+var_44], 9
		mov	[ebp+var_34], eax
		and	byte ptr [edi+1], 0FEh

loc_404D1C:				; CODE XREF: sub_40480C+4FDj
		test	cl, 40h
		jz	short loc_404D26
		push	3
		pop	eax
		jmp	short loc_404D34
; ---------------------------------------------------------------------------

loc_404D26:				; CODE XREF: sub_40480C+513j
		mov	eax, ecx
		and	eax, 1
		inc	eax
		test	cl, 10h
		jz	short loc_404D34
		add	eax, 3

loc_404D34:				; CODE XREF: sub_40480C+518j
					; sub_40480C+523j
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
		push	ebx		; wParam
		push	110Dh		; Msg
		push	[ebp+hWnd]	; hWnd
		call	esi ; SendMessageA

loc_404D6E:				; CODE XREF: sub_40480C+4ECj
		inc	[ebp+var_10]
		add	edi, 418h
		mov	eax, [ebp+var_10]
		cmp	eax, dword_42E3EC
		jl	loc_404CED

loc_404D86:				; CODE XREF: sub_40480C+4D8j
		push	1		; bErase
		push	ebx		; lpRect
		push	[ebp+hWnd]	; hWnd
		call	ds:InvalidateRect
		mov	eax, dword_42DB9C
		cmp	[eax+10h], ebx
		jz	short loc_404DB0
		push	5
		call	sub_40472D
		push	eax		; int
		push	0FFFFFFFBh	; int
		push	3FFh		; nIDDlgItem
		call	sub_404678

loc_404DB0:				; CODE XREF: sub_40480C+44Ej
					; sub_40480C+58Ej
		cmp	[ebp+arg_4], 420h
		jnz	short loc_404DEE
		test	byte ptr dword_42E3D8+1, 1
		jz	short loc_404DEE
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

loc_404DEE:				; CODE XREF: sub_40480C+25Dj
					; sub_40480C+391j ...
		push	[ebp+arg_C]	; hWnd
		push	[ebp+hdc]	; hdc
		push	[ebp+arg_4]	; int
		call	sub_403F06
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn	10h
sub_40480C	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_404E03(HWND	hWnd, int, WPARAM wParam, int)
sub_404E03	proc near		; DATA XREF: sub_40480C+8Do

hWnd		= dword	ptr  8
arg_4		= dword	ptr  0Ch
wParam		= dword	ptr  10h
arg_C		= dword	ptr  14h

		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+arg_4]
		cmp	ebx, 102h
		push	edi
		jnz	short loc_404E27
		cmp	[ebp+wParam], 20h
		jnz	short loc_404E72
		push	413h		; Msg
		call	sub_403EEB
		xor	eax, eax
		jmp	short loc_404E89
; ---------------------------------------------------------------------------

loc_404E27:				; CODE XREF: sub_404E03+Ej
		cmp	ebx, 200h
		jnz	short loc_404E4F
		push	[ebp+hWnd]	; hWnd
		call	ds:IsWindowVisible
		test	eax, eax
		jz	short loc_404E72
		push	1		; int
		push	[ebp+hWnd]	; hWnd
		call	sub_40475A
		mov	edi, eax
		mov	ebx, 419h
		jmp	short loc_404E52
; ---------------------------------------------------------------------------

loc_404E4F:				; CODE XREF: sub_404E03+2Aj
		mov	edi, [ebp+arg_C]

loc_404E52:				; CODE XREF: sub_404E03+4Aj
		cmp	ebx, 419h
		jnz	short loc_404E75
		cmp	dword_42982C, edi
		jz	short loc_404E75
		push	edi
		push	6
		mov	dword_42982C, edi
		call	sub_4047DA
		jmp	short loc_404E75
; ---------------------------------------------------------------------------

loc_404E72:				; CODE XREF: sub_404E03+14j
					; sub_404E03+37j
		mov	edi, [ebp+arg_C]

loc_404E75:				; CODE XREF: sub_404E03+55j
					; sub_404E03+5Dj ...
		push	edi		; lParam
		push	[ebp+wParam]	; wParam
		push	ebx		; Msg
		push	[ebp+hWnd]	; hWnd
		push	lpPrevWndFunc	; lpPrevWndFunc
		call	ds:CallWindowProcA

loc_404E89:				; CODE XREF: sub_404E03+22j
		pop	edi
		pop	ebx
		pop	ebp
		retn	10h
sub_404E03	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_404E8F(int,	LPCSTR lpString)
sub_404E8F	proc near		; CODE XREF: sub_401423+9p
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
		mov	eax, dword_42DBA4
		push	ebx
		xor	ebx, ebx
		push	esi
		cmp	eax, ebx
		push	edi
		mov	[ebp+hWnd], eax
		jz	loc_404F5A
		mov	eax, dword_42E474
		mov	esi, offset byte_429020
		mov	edi, eax
		mov	[ebp+var_8], eax
		and	edi, 1
		jnz	short loc_404EC7
		push	[ebp+arg_0]	; int
		push	esi		; lpString1
		call	sub_405BC6

loc_404EC7:				; CODE XREF: sub_404E8F+2Dj
		push	esi		; lpString
		call	lstrlenA
		cmp	[ebp+lpString],	ebx
		mov	[ebp+arg_0], eax
		jz	short loc_404EF0
		push	[ebp+lpString]	; lpString
		call	lstrlenA
		add	eax, [ebp+arg_0]
		cmp	eax, 800h
		jnb	short loc_404F5A
		push	[ebp+lpString]	; lpString2
		push	esi		; lpString1
		call	lstrcatA

loc_404EF0:				; CODE XREF: sub_404E8F+44j
		test	byte ptr [ebp+var_8], 4
		jnz	short loc_404F03
		push	esi		; lpString
		push	dword_42DB88	; hWnd
		call	ds:SetWindowTextA

loc_404F03:				; CODE XREF: sub_404E8F+65j
		test	byte ptr [ebp+var_8], 2
		jnz	short loc_404F4D
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

loc_404F4D:				; CODE XREF: sub_404E8F+78j
		cmp	edi, ebx
		jz	short loc_404F5A
		mov	eax, [ebp+arg_0]
		mov	byte_429020[eax], bl

loc_404F5A:				; CODE XREF: sub_404E8F+15j
					; sub_404E8F+56j ...
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn	8
sub_404E8F	endp


; =============== S U B	R O U T	I N E =======================================


; DWORD	__stdcall StartAddress(LPVOID lpThreadParameter)
StartAddress	proc near		; CODE XREF: sub_40363A+293p
					; DATA XREF: sub_404FCD+1C9o

lpThreadParameter= dword ptr  4

		push	esi
		mov	esi, dword_42E3E8
		push	edi
		mov	edi, dword_42E3EC
		push	0		; pvReserved
		call	ds:OleInitialize
		or	dword_42E478, eax
		push	0		; Msg
		call	sub_403EEB
		test	edi, edi
		jz	short loc_404FB3
		add	esi, 0Ch

loc_404F8B:				; CODE XREF: StartAddress+48j
		dec	edi
		test	byte ptr [esi-4], 1
		jz	short loc_404FA1
		push	[esp+8+lpThreadParameter] ; hWnd
		push	dword ptr [esi]	; int
		call	sub_401389
		test	eax, eax
		jnz	short loc_404FAD

loc_404FA1:				; CODE XREF: StartAddress+2Fj
		add	esi, 418h
		test	edi, edi
		jnz	short loc_404F8B
		jmp	short loc_404FB3
; ---------------------------------------------------------------------------

loc_404FAD:				; CODE XREF: StartAddress+3Ej
		inc	dword_42E44C

loc_404FB3:				; CODE XREF: StartAddress+25j
					; StartAddress+4Aj
		push	404h		; Msg
		call	sub_403EEB
		call	ds:OleUninitialize
		mov	eax, dword_42E44C
		pop	edi
		pop	esi
		retn	4
StartAddress	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_404FCD(HWND	hDlg, LPARAM, LPARAM, HWND)
sub_404FCD	proc near		; DATA XREF: .data:004091E4o

var_3C		= dword	ptr -3Ch
lParam		= dword	ptr -34h
var_30		= dword	ptr -30h
var_2C		= dword	ptr -2Ch
var_28		= dword	ptr -28h
var_24		= dword	ptr -24h
var_20		= dword	ptr -20h
var_1C		= byte ptr -1Ch
Rect		= tagRECT ptr -14h
hWnd		= dword	ptr -4
hDlg		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h
arg_C		= dword	ptr  14h

		push	ebp
		mov	ebp, esp
		sub	esp, 3Ch
		mov	eax, dword_42DBA4
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+arg_4]
		xor	ebx, ebx
		cmp	edi, 110h
		mov	[ebp+hWnd], eax
		jnz	loc_40517A
		or	[ebp+var_2C], 0FFFFFFFFh
		or	[ebp+var_20], 0FFFFFFFFh
		xor	eax, eax
		lea	edi, [ebp+var_1C]
		mov	[ebp+lParam], 2
		mov	[ebp+var_30], ebx
		mov	[ebp+var_28], ebx
		mov	[ebp+var_24], ebx
		stosd
		stosd
		mov	eax, dword_42E3D0
		mov	edi, ds:GetDlgItem
		push	403h		; nIDDlgItem
		mov	ecx, [eax+5Ch]
		mov	eax, [eax+60h]
		push	[ebp+hDlg]	; hDlg
		mov	[ebp+arg_8], ecx
		mov	[ebp+arg_4], eax
		call	edi ; GetDlgItem
		push	3EEh		; nIDDlgItem
		mov	hWnd, eax
		push	[ebp+hDlg]	; hDlg
		call	edi ; GetDlgItem
		push	3F8h		; nIDDlgItem
		mov	dword_42DB88, eax
		push	[ebp+hDlg]	; hDlg
		call	edi ; GetDlgItem
		push	hWnd		; wParam
		mov	dword_42DBA4, eax
		mov	[ebp+hWnd], eax
		call	sub_403ED4
		push	4
		call	sub_40472D
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
		mov	[ebp+var_2C], ecx
		push	[ebp+hWnd]	; hWnd
		call	esi ; SendMessageA
		mov	eax, 4000h
		push	eax		; lParam
		push	eax		; wParam
		push	1036h		; Msg
		push	[ebp+hWnd]	; hWnd
		call	esi ; SendMessageA
		cmp	[ebp+arg_8], ebx
		jl	short loc_4050D6
		push	[ebp+arg_8]	; lParam
		push	ebx		; wParam
		push	1001h		; Msg
		push	[ebp+hWnd]	; hWnd
		call	esi ; SendMessageA
		push	[ebp+arg_8]	; lParam
		push	ebx		; wParam
		push	1026h		; Msg
		push	[ebp+hWnd]	; hWnd
		call	esi ; SendMessageA

loc_4050D6:				; CODE XREF: sub_404FCD+EBj
		cmp	[ebp+arg_4], ebx
		jl	short loc_4050E9
		push	[ebp+arg_4]	; lParam
		push	ebx		; wParam
		push	1024h		; Msg
		push	[ebp+hWnd]	; hWnd
		call	esi ; SendMessageA

loc_4050E9:				; CODE XREF: sub_404FCD+10Cj
		mov	eax, [ebp+arg_C]
		push	dword ptr [eax+30h] ; int
		push	1Bh		; int
		push	[ebp+hDlg]	; hDlg
		call	sub_403E9F
		test	byte ptr dword_42E3D8, 3
		jz	short loc_405136
		push	ebx		; nCmdShow
		push	hWnd		; hWnd
		call	ds:ShowWindow
		test	byte ptr dword_42E3D8, 2
		jnz	short loc_405125
		push	8		; nCmdShow
		push	[ebp+hWnd]	; hWnd
		call	ds:ShowWindow
		jmp	short loc_40512B
; ---------------------------------------------------------------------------

loc_405125:				; CODE XREF: sub_404FCD+149j
		mov	hWnd, ebx

loc_40512B:				; CODE XREF: sub_404FCD+156j
		push	dword_42DB88	; wParam
		call	sub_403ED4

loc_405136:				; CODE XREF: sub_404FCD+133j
		push	3ECh		; nIDDlgItem
		push	[ebp+hDlg]	; hDlg
		call	edi ; GetDlgItem
		push	75300000h	; lParam
		mov	edi, eax
		push	ebx		; wParam
		push	401h		; Msg
		push	edi		; hWnd
		call	esi ; SendMessageA
		test	byte ptr dword_42E3D8, 4
		jz	loc_405350
		push	[ebp+arg_4]	; lParam
		push	ebx		; wParam
		push	409h		; Msg
		push	edi		; hWnd
		call	esi ; SendMessageA
		push	[ebp+arg_8]	; lParam
		push	ebx		; wParam
		push	2001h		; Msg
		push	edi		; hWnd
		call	esi ; SendMessageA
		jmp	loc_405350
; ---------------------------------------------------------------------------

loc_40517A:				; CODE XREF: sub_404FCD+1Cj
		cmp	edi, 405h
		jnz	short loc_4051AA
		lea	eax, [ebp+arg_4]
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

loc_4051AA:				; CODE XREF: sub_404FCD+1B3j
		mov	esi, ds:ShowWindow
		cmp	edi, 111h
		jnz	short loc_4051D8
		cmp	word ptr [ebp+arg_8], 403h
		jnz	short loc_4051F9
		push	ebx		; nCmdShow
		push	hWnd		; hWnd
		call	esi ; ShowWindow
		push	8		; nCmdShow
		push	[ebp+hWnd]	; hWnd
		call	esi ; ShowWindow
		push	[ebp+hWnd]	; wParam
		call	sub_403ED4

loc_4051D8:				; CODE XREF: sub_404FCD+1E9j
		cmp	edi, 404h
		jnz	short loc_405233
		cmp	dword_42DB8C, ebx
		jz	short loc_40520C
		push	78h		; wParam
		mov	nResult, 2
		call	sub_403E78

loc_4051F9:				; CODE XREF: sub_404FCD+1F1j
					; sub_404FCD+269j ...
		push	[ebp+arg_C]	; hWnd
		push	[ebp+arg_8]	; hdc
		push	edi		; int
		call	sub_403F06

loc_405205:				; CODE XREF: sub_404FCD+385j
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn	10h
; ---------------------------------------------------------------------------

loc_40520C:				; CODE XREF: sub_404FCD+219j
		push	8		; nCmdShow
		push	hwnd		; hWnd
		call	esi ; ShowWindow
		cmp	dword_42E44C, ebx
		jnz	short loc_40522C
		mov	eax, dword_429018
		push	ebx		; lpString
		push	dword ptr [eax+34h] ; int
		call	sub_404E8F

loc_40522C:				; CODE XREF: sub_404FCD+24Fj
		push	1		; wParam
		call	sub_403E78

loc_405233:				; CODE XREF: sub_404FCD+211j
		cmp	edi, 7Bh
		jnz	short loc_4051F9
		mov	eax, [ebp+hWnd]
		cmp	[ebp+arg_8], eax
		jnz	short loc_4051F9
		push	ebx		; lParam
		push	ebx		; wParam
		push	1004h		; Msg
		push	eax		; hWnd
		call	ds:SendMessageA
		cmp	eax, ebx
		mov	[ebp+arg_8], eax
		jle	loc_405350
		call	ds:CreatePopupMenu
		push	0FFFFFFE1h	; int
		push	ebx		; lpString1
		mov	esi, eax
		call	sub_405BC6
		push	eax		; lpNewItem
		push	1		; uIDNewItem
		push	ebx		; uFlags
		push	esi		; hMenu
		call	ds:AppendMenuA
		mov	ecx, [ebp+arg_C]
		movsx	eax, word ptr [ebp+arg_C]
		shr	ecx, 10h
		cmp	[ebp+arg_C], 0FFFFFFFFh
		movsx	ecx, cx
		jnz	short loc_40529A
		lea	eax, [ebp+Rect]
		push	eax		; lpRect
		push	[ebp+hWnd]	; hWnd
		call	ds:GetWindowRect
		mov	eax, [ebp+Rect.left]
		mov	ecx, [ebp+Rect.top]

loc_40529A:				; CODE XREF: sub_404FCD+2B8j
		push	ebx		; prcRect
		push	[ebp+hDlg]	; hWnd
		push	ebx		; nReserved
		push	ecx		; y
		push	eax		; x
		push	180h		; uFlags
		push	esi		; hMenu
		call	ds:TrackPopupMenu
		cmp	eax, 1
		jnz	loc_405350
		mov	eax, [ebp+arg_8]
		xor	esi, esi
		inc	esi
		mov	[ebp+lParam], ebx
		mov	[ebp+var_28], offset byte_429840
		mov	[ebp+var_24], 0FFFh
		mov	[ebp+hDlg], eax
		mov	edi, 102Dh

loc_4052D5:				; CODE XREF: sub_404FCD+323j
		dec	[ebp+hDlg]
		lea	eax, [ebp+var_3C]
		push	eax		; lParam
		push	[ebp+hDlg]	; wParam
		push	edi		; Msg
		push	[ebp+hWnd]	; hWnd
		call	ds:SendMessageA
		cmp	[ebp+hDlg], ebx
		lea	esi, [esi+eax+2]
		jnz	short loc_4052D5
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

loc_405314:				; CODE XREF: sub_404FCD+367j
		lea	eax, [ebp+var_3C]
		mov	[ebp+var_28], esi
		push	eax		; lParam
		push	ebx		; wParam
		push	edi		; Msg
		push	[ebp+hWnd]	; hWnd
		call	ds:SendMessageA
		add	esi, eax
		mov	byte ptr [esi],	0Dh
		inc	esi
		mov	byte ptr [esi],	0Ah
		inc	esi
		inc	ebx
		cmp	ebx, [ebp+arg_8]
		jl	short loc_405314
		push	[ebp+hDlg]	; hMem
		call	ds:GlobalUnlock
		push	[ebp+hDlg]	; hMem
		push	1		; uFormat
		call	ds:SetClipboardData
		call	ds:CloseClipboard

loc_405350:				; CODE XREF: sub_404FCD+18Aj
					; sub_404FCD+1A8j ...
		xor	eax, eax
		jmp	loc_405205
sub_404FCD	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_405357(LPSTR lpCommandLine)
sub_405357	proc near		; CODE XREF: sub_401434+A0Fp
					; start+39Ap

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
		jz	short locret_405392
		push	[ebp+ProcessInformation.hThread] ; hObject
		call	ds:CloseHandle
		mov	eax, [ebp+ProcessInformation.hProcess]

locret_405392:				; CODE XREF: sub_405357+2Dj
		leave
		retn	4
sub_405357	endp

; [00000006 BYTES: COLLAPSED FUNCTION SetDlgItemTextA. PRESS KEYPAD CTRL-"+" TO	EXPAND]

; =============== S U B	R O U T	I N E =======================================


; int __stdcall	sub_40539C(int nIDDlgItem, LPSTR lpString)
sub_40539C	proc near		; CODE XREF: sub_4042DD+32p
					; sub_4042DD+1B7p ...

nIDDlgItem	= dword	ptr  4
lpString	= dword	ptr  8

		push	400h		; cchMax
		push	[esp+4+lpString] ; lpString
		push	[esp+8+nIDDlgItem] ; nIDDlgItem
		push	hDlg		; hDlg
		call	ds:GetDlgItemTextA
		retn	8
sub_40539C	endp


; =============== S U B	R O U T	I N E =======================================


sub_4053B8	proc near		; CODE XREF: sub_401434+3F9p
					; sub_401434+4BDp ...

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		mov	eax, [esp+arg_4]
		mov	ecx, eax
		and	ecx, 1FFFFFh
		cmp	dword_42E460, 0
		jz	short loc_4053D2
		shr	eax, 15h
		jnz	short locret_405419

loc_4053D2:				; CODE XREF: sub_4053B8+13j
		cmp	dword_42E468, 0
		jz	short loc_4053E1
		xor	ecx, 180000h

loc_4053E1:				; CODE XREF: sub_4053B8+21j
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

locret_405419:				; CODE XREF: sub_4053B8+18j
		retn	8
sub_4053B8	endp


; =============== S U B	R O U T	I N E =======================================


; int __stdcall	sub_40541C(LPCSTR lpPathName, char)
sub_40541C	proc near		; CODE XREF: sub_405464+11Cp
					; sub_405464+1A2p

lpPathName	= dword	ptr  4
arg_4		= byte ptr  8

		push	esi
		mov	esi, [esp+4+lpPathName]
		push	edi
		push	esi		; lpFileName
		call	sub_405810
		mov	edi, eax
		cmp	edi, 0FFFFFFFFh
		jz	short loc_40545D
		test	[esp+8+arg_4], 1
		push	esi		; lpFileName
		jz	short loc_40543F
		call	ds:RemoveDirectoryA
		jmp	short loc_405445
; ---------------------------------------------------------------------------

loc_40543F:				; CODE XREF: sub_40541C+19j
		call	ds:DeleteFileA

loc_405445:				; CODE XREF: sub_40541C+21j
		test	eax, eax
		jz	short loc_40544E
		xor	eax, eax
		inc	eax
		jmp	short loc_40545F
; ---------------------------------------------------------------------------

loc_40544E:				; CODE XREF: sub_40541C+2Bj
		test	[esp+8+arg_4], 4
		jnz	short loc_40545D
		push	edi		; dwFileAttributes
		push	esi		; lpFileName
		call	ds:SetFileAttributesA

loc_40545D:				; CODE XREF: sub_40541C+11j
					; sub_40541C+37j
		xor	eax, eax

loc_40545F:				; CODE XREF: sub_40541C+30j
		pop	edi
		pop	esi
		retn	8
sub_40541C	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_405464(LPCSTR lpFileName, int)
sub_405464	proc near		; CODE XREF: sub_401434+4EFp
					; sub_403560+24p ...

FindFileData	= _WIN32_FIND_DATAA ptr	-14Ch
var_C		= dword	ptr -0Ch
hFindFile	= dword	ptr -8
var_4		= byte ptr -4
lpFileName	= dword	ptr  8
arg_4		= dword	ptr  0Ch

		push	ebp
		mov	ebp, esp
		sub	esp, 14Ch
		push	ebx
		mov	ebx, [ebp+arg_4]
		push	esi
		push	edi
		mov	edi, [ebp+lpFileName]
		mov	eax, ebx
		and	eax, 4
		push	edi		; lpString2
		mov	dword ptr [ebp+var_4], eax
		call	sub_405722
		test	bl, 8
		mov	[ebp+var_C], eax
		jz	short loc_4054A3
		push	edi		; lpFileName
		call	ds:DeleteFileA
		neg	eax
		sbb	eax, eax
		inc	eax
		add	dword_42E448, eax
		jmp	loc_40562D
; ---------------------------------------------------------------------------

loc_4054A3:				; CODE XREF: sub_405464+26j
		mov	[ebp+lpFileName], ebx
		and	[ebp+lpFileName], 1
		jz	short loc_4054BD
		test	eax, eax
		jz	loc_4055DB
		test	bl, 2
		jz	loc_4055DB

loc_4054BD:				; CODE XREF: sub_405464+46j
		mov	esi, offset byte_42A848
		push	edi		; lpString2
		push	esi		; lpString1
		call	sub_405BA4
		cmp	[ebp+lpFileName], 0
		jz	short loc_4054DC
		push	offset a_	; "\\*.*"
		push	esi		; lpString1
		call	lstrcatA
		jmp	short loc_4054E2
; ---------------------------------------------------------------------------

loc_4054DC:				; CODE XREF: sub_405464+69j
		push	edi		; lpString
		call	sub_40567B

loc_4054E2:				; CODE XREF: sub_405464+76j
		cmp	byte ptr [edi],	0
		jnz	short loc_4054F0
		cmp	byte_42A848, 5Ch
		jnz	short loc_4054FB

loc_4054F0:				; CODE XREF: sub_405464+81j
		push	offset SubBlock	; "\\"
		push	edi		; lpString1
		call	lstrcatA

loc_4054FB:				; CODE XREF: sub_405464+8Aj
		push	edi		; lpString
		call	lstrlenA
		mov	ebx, eax
		lea	eax, [ebp+FindFileData]
		push	eax		; lpFindFileData
		push	esi		; lpFileName
		add	ebx, edi
		call	ds:FindFirstFileA
		cmp	eax, 0FFFFFFFFh
		mov	[ebp+hFindFile], eax
		jz	loc_4055D1

loc_40551F:				; CODE XREF: sub_405464+15Ej
		lea	eax, [ebp+FindFileData.cFileName]
		push	3Fh		; char
		push	eax		; lpsz
		lea	esi, [ebp+FindFileData.cFileName]
		call	sub_40565F
		cmp	byte ptr [eax],	0
		jz	short loc_405541
		cmp	[ebp+FindFileData.cAlternateFileName], 0
		jz	short loc_405541
		lea	esi, [ebp+FindFileData.cAlternateFileName]

loc_405541:				; CODE XREF: sub_405464+D2j
					; sub_405464+D8j
		cmp	byte ptr [esi],	2Eh
		jnz	short loc_405557
		mov	al, [esi+1]
		test	al, al
		jz	short loc_4055B0
		cmp	al, 2Eh
		jnz	short loc_405557
		cmp	byte ptr [esi+2], 0
		jz	short loc_4055B0

loc_405557:				; CODE XREF: sub_405464+E0j
					; sub_405464+EBj
		push	esi		; lpString2
		push	ebx		; lpString1
		call	sub_405BA4
		test	byte ptr [ebp+FindFileData.dwFileAttributes], 10h
		jz	short loc_40557C
		mov	eax, [ebp+arg_4]
		and	eax, 3
		cmp	al, 3
		jnz	short loc_4055B0
		push	[ebp+arg_4]	; int
		push	edi		; lpFileName
		call	sub_405464
		jmp	short loc_4055B0
; ---------------------------------------------------------------------------

loc_40557C:				; CODE XREF: sub_405464+101j
		push	dword ptr [ebp+var_4] ;	char
		push	edi		; lpPathName
		call	sub_40541C
		test	eax, eax
		jnz	short loc_4055A8
		cmp	dword ptr [ebp+var_4], eax
		jz	short loc_4055A0
		push	edi		; lpString
		push	0FFFFFFF1h	; int
		call	sub_404E8F
		push	0		; lpszLongPath
		push	edi		; LPCSTR
		call	sub_405A58
		jmp	short loc_4055B0
; ---------------------------------------------------------------------------

loc_4055A0:				; CODE XREF: sub_405464+128j
		inc	dword_42E448
		jmp	short loc_4055B0
; ---------------------------------------------------------------------------

loc_4055A8:				; CODE XREF: sub_405464+123j
		push	edi		; lpString
		push	0FFFFFFF2h	; int
		call	sub_404E8F

loc_4055B0:				; CODE XREF: sub_405464+E7j
					; sub_405464+F1j ...
		lea	eax, [ebp+FindFileData]
		push	eax		; lpFindFileData
		push	[ebp+hFindFile]	; hFindFile
		call	ds:FindNextFileA
		test	eax, eax
		jnz	loc_40551F
		push	[ebp+hFindFile]	; hFindFile
		call	ds:FindClose

loc_4055D1:				; CODE XREF: sub_405464+B5j
		cmp	[ebp+lpFileName], 0
		jz	short loc_4055DB
		and	byte ptr [ebx-1], 0

loc_4055DB:				; CODE XREF: sub_405464+4Aj
					; sub_405464+53j ...
		xor	esi, esi
		cmp	[ebp+lpFileName], esi
		jz	short loc_40562D
		cmp	[ebp+var_C], esi
		jnz	short loc_4055EF

loc_4055E7:				; CODE XREF: sub_405464+1AEj
		inc	dword_42E448
		jmp	short loc_40562D
; ---------------------------------------------------------------------------

loc_4055EF:				; CODE XREF: sub_405464+181j
		push	edi		; lpFileName
		call	sub_405EA8
		test	eax, eax
		jz	short loc_40562D
		push	edi		; lpString
		call	sub_405634
		mov	eax, dword ptr [ebp+var_4]
		or	al, 1
		push	eax		; char
		push	edi		; lpPathName
		call	sub_40541C
		test	eax, eax
		jnz	short loc_405625
		cmp	dword ptr [ebp+var_4], esi
		jz	short loc_4055E7
		push	edi		; lpString
		push	0FFFFFFF1h	; int
		call	sub_404E8F
		push	esi		; lpszLongPath
		push	edi		; LPCSTR
		call	sub_405A58
		jmp	short loc_40562D
; ---------------------------------------------------------------------------

loc_405625:				; CODE XREF: sub_405464+1A9j
		push	edi		; lpString
		push	0FFFFFFE5h	; int
		call	sub_404E8F

loc_40562D:				; CODE XREF: sub_405464+3Aj
					; sub_405464+17Cj ...
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn	8
sub_405464	endp


; =============== S U B	R O U T	I N E =======================================


; int __stdcall	sub_405634(LPCSTR lpString)
sub_405634	proc near		; CODE XREF: sub_401434+344p
					; sub_4030AE+19p ...

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
		jz	short loc_405659
		push	offset SubBlock	; "\\"
		push	esi		; lpString1
		call	lstrcatA

loc_405659:				; CODE XREF: sub_405634+18j
		mov	eax, esi
		pop	esi
		retn	4
sub_405634	endp


; =============== S U B	R O U T	I N E =======================================


; int __stdcall	sub_40565F(LPCSTR lpsz,	char)
sub_40565F	proc near		; CODE XREF: sub_401434+197p start+A8p ...

lpsz		= dword	ptr  4
arg_4		= byte ptr  8

		mov	eax, [esp+lpsz]
		jmp	short loc_405672
; ---------------------------------------------------------------------------

loc_405665:				; CODE XREF: sub_40565F+17j
		cmp	cl, [esp+arg_4]
		jz	short locret_405678
		push	eax		; lpsz
		call	ds:CharNextA

loc_405672:				; CODE XREF: sub_40565F+4j
		mov	cl, [eax]
		test	cl, cl
		jnz	short loc_405665

locret_405678:				; CODE XREF: sub_40565F+Aj
		retn	8
sub_40565F	endp


; =============== S U B	R O U T	I N E =======================================


; int __stdcall	sub_40567B(LPCSTR lpString)
sub_40567B	proc near		; CODE XREF: sub_402C29+67p
					; sub_40363A+11Ep ...

lpString	= dword	ptr  4

		push	esi
		mov	esi, [esp+4+lpString]
		push	esi		; lpString
		call	lstrlenA
		add	eax, esi

loc_405688:				; CODE XREF: sub_40567B+1Cj
		cmp	byte ptr [eax],	5Ch
		jz	short loc_405699
		push	eax		; lpszCurrent
		push	esi		; lpszStart
		call	ds:CharPrevA
		cmp	eax, esi
		ja	short loc_405688

loc_405699:				; CODE XREF: sub_40567B+10j
		and	byte ptr [eax],	0
		inc	eax
		pop	esi
		retn	4
sub_40567B	endp


; =============== S U B	R O U T	I N E =======================================


sub_4056A1	proc near		; CODE XREF: sub_401434+321p
					; sub_401434+C36p ...

arg_0		= dword	ptr  4

		mov	edx, [esp+arg_0]
		mov	cl, [edx]
		mov	al, cl
		or	al, 20h
		cmp	cl, 5Ch
		jnz	short loc_4056B5
		cmp	[edx+1], cl
		jz	short loc_4056C3

loc_4056B5:				; CODE XREF: sub_4056A1+Dj
		cmp	al, 61h
		jl	short loc_4056C8
		cmp	al, 7Ah
		jg	short loc_4056C8
		cmp	byte ptr [edx+1], 3Ah
		jnz	short loc_4056C8

loc_4056C3:				; CODE XREF: sub_4056A1+12j
		xor	eax, eax
		inc	eax
		jmp	short locret_4056CA
; ---------------------------------------------------------------------------

loc_4056C8:				; CODE XREF: sub_4056A1+16j
					; sub_4056A1+1Aj ...
		xor	eax, eax

locret_4056CA:				; CODE XREF: sub_4056A1+25j
		retn	4
sub_4056A1	endp


; =============== S U B	R O U T	I N E =======================================


; int __stdcall	sub_4056CD(LPCSTR lpsz)
sub_4056CD	proc near		; CODE XREF: sub_401434+189p
					; sub_4042DD+62p ...

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
		mov	cl, [edi]
		test	cl, cl
		jz	short loc_4056F8
		cmp	byte ptr [ebx],	3Ah
		jnz	short loc_4056F8
		cmp	byte ptr [ebx+1], 5Ch
		jnz	short loc_4056F8
		push	eax		; lpsz
		call	esi ; CharNextA
		jmp	short loc_40571C
; ---------------------------------------------------------------------------

loc_4056F8:				; CODE XREF: sub_4056CD+19j
					; sub_4056CD+1Ej ...
		cmp	cl, 5Ch
		jnz	short loc_40571A
		cmp	[edi+1], cl
		jnz	short loc_40571A
		push	2
		pop	esi

loc_405705:				; CODE XREF: sub_4056CD+49j
		push	5Ch		; char
		push	eax		; lpsz
		dec	esi
		call	sub_40565F
		cmp	byte ptr [eax],	0
		jz	short loc_40571A
		inc	eax
		test	esi, esi
		jnz	short loc_405705
		jmp	short loc_40571C
; ---------------------------------------------------------------------------

loc_40571A:				; CODE XREF: sub_4056CD+2Ej
					; sub_4056CD+33j ...
		xor	eax, eax

loc_40571C:				; CODE XREF: sub_4056CD+29j
					; sub_4056CD+4Bj
		pop	edi
		pop	esi
		pop	ebx
		retn	4
sub_4056CD	endp


; =============== S U B	R O U T	I N E =======================================


; int __stdcall	sub_405722(LPCSTR lpString2)
sub_405722	proc near		; CODE XREF: start+287p sub_40363A+A2p ...

lpString2	= dword	ptr  4

		push	esi
		push	edi
		push	[esp+8+lpString2] ; lpString2
		mov	esi, offset byte_42AC48
		push	esi		; lpString1
		call	sub_405BA4
		push	esi		; lpsz
		call	sub_4056CD
		mov	edi, eax
		test	edi, edi
		jnz	short loc_405743

loc_40573F:				; CODE XREF: sub_405722+34j
					; sub_405722+38j ...
		xor	eax, eax
		jmp	short loc_405795
; ---------------------------------------------------------------------------

loc_405743:				; CODE XREF: sub_405722+1Bj
		push	edi		; lpsz
		call	sub_405E0F
		test	byte ptr dword_42E3D8, 80h
		jz	short loc_40575C
		mov	al, [edi]
		test	al, al
		jz	short loc_40573F
		cmp	al, 5Ch
		jz	short loc_40573F

loc_40575C:				; CODE XREF: sub_405722+2Ej
		sub	edi, esi
		jmp	short loc_405774
; ---------------------------------------------------------------------------

loc_405760:				; CODE XREF: sub_405722+5Bj
		call	sub_405EA8
		test	eax, eax
		jz	short loc_40576E
		test	byte ptr [eax],	10h
		jz	short loc_40573F

loc_40576E:				; CODE XREF: sub_405722+45j
		push	esi		; lpString
		call	sub_40567B

loc_405774:				; CODE XREF: sub_405722+3Cj
		push	esi		; lpString
		call	lstrlenA
		cmp	eax, edi
		push	esi		; lpString
		jg	short loc_405760
		call	sub_405634
		push	esi		; lpFileName
		call	ds:GetFileAttributesA
		xor	ecx, ecx
		cmp	eax, 0FFFFFFFFh
		setnz	cl
		mov	eax, ecx

loc_405795:				; CODE XREF: sub_405722+1Fj
		pop	edi
		pop	esi
		retn	4
sub_405722	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_40579A(LPCSTR lpString1, LPCSTR lpString)
sub_40579A	proc near		; CODE XREF: sub_4058DC+E8p
					; sub_4058DC+10Ep

var_4		= dword	ptr -4
lpString1	= dword	ptr  8
lpString	= dword	ptr  0Ch

		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	edi, ds:__imp_lstrlenA
		push	[ebp+lpString]	; lpString
		call	edi ; __imp_lstrlenA
		mov	esi, [ebp+lpString1]
		mov	[ebp+var_4], eax
		jmp	short loc_4057DB
; ---------------------------------------------------------------------------

loc_4057B4:				; CODE XREF: sub_40579A+47j
		mov	eax, [ebp+var_4]
		push	[ebp+lpString]	; lpString2
		mov	bl, [eax+esi]
		and	byte ptr [eax+esi], 0
		push	esi		; lpString1
		call	ds:lstrcmpiA
		test	eax, eax
		mov	eax, [ebp+var_4]
		mov	[eax+esi], bl
		jz	short loc_4057EC
		push	esi		; lpsz
		call	ds:CharNextA
		mov	esi, eax

loc_4057DB:				; CODE XREF: sub_40579A+18j
		push	esi		; lpString
		call	edi ; __imp_lstrlenA
		cmp	eax, [ebp+var_4]
		jge	short loc_4057B4
		xor	eax, eax

loc_4057E5:				; CODE XREF: sub_40579A+54j
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn	8
; ---------------------------------------------------------------------------

loc_4057EC:				; CODE XREF: sub_40579A+36j
		mov	eax, esi
		jmp	short loc_4057E5
sub_40579A	endp


; =============== S U B	R O U T	I N E =======================================


sub_4057F0	proc near		; CODE XREF: sub_401434+12E9p
					; sub_402C29+CDp ...

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		mov	ecx, [esp+arg_0]
		push	esi
		mov	esi, [esp+4+arg_8]
		test	esi, esi
		jbe	short loc_40580C
		mov	eax, [esp+4+arg_4]
		sub	eax, ecx

loc_405803:				; CODE XREF: sub_4057F0+1Aj
		mov	dl, [eax+ecx]
		mov	[ecx], dl
		inc	ecx
		dec	esi
		jnz	short loc_405803

loc_40580C:				; CODE XREF: sub_4057F0+Bj
		pop	esi
		retn	0Ch
sub_4057F0	endp


; =============== S U B	R O U T	I N E =======================================


; int __stdcall	sub_405810(LPCSTR lpFileName)
sub_405810	proc near		; CODE XREF: sub_401434+397p
					; sub_401434+1274p ...

lpFileName	= dword	ptr  4

		push	esi
		push	[esp+4+lpFileName] ; lpFileName
		call	ds:GetFileAttributesA
		mov	esi, eax
		cmp	esi, 0FFFFFFFFh
		jz	short loc_40582F
		and	al, 0FEh
		push	eax		; dwFileAttributes
		push	[esp+8+lpFileName] ; lpFileName
		call	ds:SetFileAttributesA

loc_40582F:				; CODE XREF: sub_405810+10j
		mov	eax, esi
		pop	esi
		retn	4
sub_405810	endp


; =============== S U B	R O U T	I N E =======================================


; int __stdcall	sub_405835(LPCSTR lpFileName, DWORD dwDesiredAccess, DWORD dwCreationDisposition)
sub_405835	proc near		; CODE XREF: sub_401434+3ADp
					; sub_401434+1089p ...

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
sub_405835	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_405864(CHAR	PrefixString, LPCSTR lpPathName)
sub_405864	proc near		; CODE XREF: sub_401434+301p
					; sub_4030AE+2Dp

PrefixString	= byte ptr  8
lpPathName	= dword	ptr  0Ch

		push	ebp
		mov	ebp, esp
		push	esi
		mov	esi, dword ptr [ebp+PrefixString]
		push	edi
		push	64h
		pop	edi

loc_40586F:				; CODE XREF: sub_405864+3Aj
		mov	eax, dword_409384
		dec	edi
		mov	dword ptr [ebp+PrefixString], eax
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
		jnz	short loc_4058A9
		test	edi, edi
		jnz	short loc_40586F
		and	byte ptr [esi],	0

loc_4058A3:				; CODE XREF: sub_405864+47j
		pop	edi
		pop	esi
		pop	ebp
		retn	8
; ---------------------------------------------------------------------------

loc_4058A9:				; CODE XREF: sub_405864+36j
		mov	eax, esi
		jmp	short loc_4058A3
sub_405864	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_4058AD(HANDLE hFile, LPVOID	lpBuffer, DWORD	nNumberOfBytesToRead)
sub_4058AD	proc near		; CODE XREF: sub_401434+112Cp
					; sub_403081+Ep ...

hFile		= dword	ptr  8
lpBuffer	= dword	ptr  0Ch
nNumberOfBytesToRead= dword ptr	 10h

		push	ebp
		mov	ebp, esp
		push	esi
		mov	esi, [ebp+nNumberOfBytesToRead]
		lea	eax, [ebp+nNumberOfBytesToRead]
		push	0		; lpOverlapped
		push	eax		; lpNumberOfBytesRead
		push	esi		; nNumberOfBytesToRead
		push	[ebp+lpBuffer]	; lpBuffer
		push	[ebp+hFile]	; hFile
		call	ds:ReadFile
		test	eax, eax
		jz	short loc_4058D5
		cmp	esi, [ebp+nNumberOfBytesToRead]
		jnz	short loc_4058D5
		xor	eax, eax
		inc	eax
		jmp	short loc_4058D7
; ---------------------------------------------------------------------------

loc_4058D5:				; CODE XREF: sub_4058AD+1Cj
					; sub_4058AD+21j
		xor	eax, eax

loc_4058D7:				; CODE XREF: sub_4058AD+26j
		pop	esi
		pop	ebp
		retn	0Ch
sub_4058AD	endp


; =============== S U B	R O U T	I N E =======================================


; int __cdecl sub_4058DC(LPCSTR, LPCSTR	lpszLongPath)
sub_4058DC	proc near		; CODE XREF: sub_405A58+23p

NumberOfBytesWritten= dword ptr	-4
arg_0		= dword	ptr  4
lpszLongPath	= dword	ptr  8

		push	ecx
		push	ebx
		push	ebp
		push	esi
		push	edi
		mov	edi, offset szShortPath
		push	offset aNul	; "NUL"
		push	edi		; lpString1
		call	ds:lstrcpyA
		mov	esi, [esp+14h+lpszLongPath]
		mov	ebp, ds:GetShortPathNameA
		test	esi, esi
		mov	ebx, 400h
		jz	short loc_40592B
		push	1		; dwCreationDisposition
		push	0		; dwDesiredAccess
		push	esi		; lpFileName
		call	sub_405835
		push	eax		; hObject
		call	ds:CloseHandle
		push	ebx		; cchBuffer
		push	edi		; lpszShortPath
		push	esi		; lpszLongPath
		call	ebp ; GetShortPathNameA
		test	eax, eax
		jz	loc_405A52
		cmp	eax, ebx
		jg	loc_405A52

loc_40592B:				; CODE XREF: sub_4058DC+27j
		mov	esi, offset byte_42B9D0
		push	ebx		; cchBuffer
		push	esi		; lpszShortPath
		push	[esp+1Ch+arg_0]	; lpszLongPath
		call	ebp ; GetShortPathNameA
		test	eax, eax
		jz	loc_405A52
		cmp	eax, ebx
		jg	loc_405A52
		push	esi
		push	edi
		push	offset aSS	; "%s=%s\r\n"
		push	offset byte_42B1D0 ; LPSTR
		call	ds:wsprintfA
		mov	ebx, eax
		mov	eax, dword_42E3D0
		add	esp, 10h
		push	dword ptr [eax+128h] ; int
		push	esi		; lpString1
		call	sub_405BC6
		push	4		; dwCreationDisposition
		push	0C0000000h	; dwDesiredAccess
		push	esi		; lpFileName
		call	sub_405835
		mov	ebp, eax
		cmp	ebp, 0FFFFFFFFh
		mov	[esp+14h+lpszLongPath],	ebp
		jz	loc_405A52
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
		jz	loc_405A4B
		push	edi		; nNumberOfBytesToRead
		push	esi		; lpBuffer
		push	ebp		; hFile
		call	sub_4058AD
		test	eax, eax
		jz	loc_405A4B
		push	offset aRename	; "[Rename]\r\n"
		push	esi		; lpString1
		call	sub_40579A
		test	eax, eax
		jnz	short loc_4059E1
		lea	eax, [esi+edi]
		push	offset aRename	; "[Rename]\r\n"
		push	eax		; lpString1
		call	ds:lstrcpyA
		add	edi, 0Ah
		jmp	short loc_405A16
; ---------------------------------------------------------------------------

loc_4059E1:				; CODE XREF: sub_4058DC+EFj
		add	eax, 0Ah
		push	offset dword_409388 ; lpString
		push	eax		; lpString1
		call	sub_40579A
		mov	ebp, eax
		test	ebp, ebp
		jz	short loc_405A12
		lea	ecx, [esi+edi]
		lea	eax, [ecx+ebx]
		jmp	short loc_405A03
; ---------------------------------------------------------------------------

loc_4059FD:				; CODE XREF: sub_4058DC+129j
		mov	dl, [ecx]
		mov	[eax], dl
		dec	eax
		dec	ecx

loc_405A03:				; CODE XREF: sub_4058DC+11Fj
		cmp	ecx, ebp
		ja	short loc_4059FD
		sub	ebp, esi
		inc	ebp
		mov	eax, ebp
		mov	ebp, [esp+14h+lpszLongPath]
		jmp	short loc_405A18
; ---------------------------------------------------------------------------

loc_405A12:				; CODE XREF: sub_4058DC+117j
		mov	ebp, [esp+14h+lpszLongPath]

loc_405A16:				; CODE XREF: sub_4058DC+103j
		mov	eax, edi

loc_405A18:				; CODE XREF: sub_4058DC+134j
		push	ebx
		add	eax, esi
		push	offset byte_42B1D0
		push	eax
		call	sub_4057F0
		xor	eax, eax
		push	eax		; dwMoveMethod
		push	eax		; lpDistanceToMoveHigh
		push	eax		; lDistanceToMove
		push	ebp		; hFile
		call	ds:SetFilePointer
		lea	eax, [esp+14h+NumberOfBytesWritten]
		push	0		; lpOverlapped
		add	edi, ebx
		push	eax		; lpNumberOfBytesWritten
		push	edi		; nNumberOfBytesToWrite
		push	esi		; lpBuffer
		push	ebp		; hFile
		call	ds:WriteFile
		push	esi		; hMem
		call	ds:GlobalFree

loc_405A4B:				; CODE XREF: sub_4058DC+CCj
					; sub_4058DC+DCj
		push	ebp		; hObject
		call	ds:CloseHandle

loc_405A52:				; CODE XREF: sub_4058DC+41j
					; sub_4058DC+49j ...
		pop	edi
		pop	esi
		pop	ebp
		pop	ebx
		pop	ecx
		retn
sub_4058DC	endp


; =============== S U B	R O U T	I N E =======================================


; int __stdcall	sub_405A58(LPCSTR, LPCSTR lpszLongPath)
sub_405A58	proc near		; CODE XREF: sub_401434+261p
					; start+383p ...

arg_0		= dword	ptr  4
lpszLongPath	= dword	ptr  8

		push	1
		call	sub_405ECF
		test	eax, eax
		jz	short loc_405A73
		push	5
		push	[esp+4+lpszLongPath]
		push	[esp+8+arg_0]
		call	eax
		test	eax, eax
		jnz	short loc_405A82

loc_405A73:				; CODE XREF: sub_405A58+9j
		push	[esp+lpszLongPath] ; lpszLongPath
		push	[esp+4+arg_0]	; LPCSTR
		call	sub_4058DC
		pop	ecx
		pop	ecx

loc_405A82:				; CODE XREF: sub_405A58+19j
		inc	dword_42E450
		retn	8
sub_405A58	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_405A8B(HKEY	hKey, LPCSTR lpSubKey, LPCSTR lpValueName, DWORD Type, HKEY phkResult)
sub_405A8B	proc near		; CODE XREF: sub_40363A+52p
					; sub_40363A+70p ...

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
		jnz	short loc_405AFC
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
		jnz	short loc_405AEB
		cmp	[ebp+Type], 1
		jz	short loc_405AED
		cmp	[ebp+Type], 2
		jz	short loc_405AED

loc_405AEB:				; CODE XREF: sub_405A8B+52j
		mov	[esi], bl

loc_405AED:				; CODE XREF: sub_405A8B+58j
					; sub_405A8B+5Ej
		push	[ebp+phkResult]	; hKey
		mov	[esi+3FFh], bl
		call	ds:RegCloseKey

loc_405AFC:				; CODE XREF: sub_405A8B+31j
		pop	esi
		pop	ebx
		pop	ebp
		retn	14h
sub_405A8B	endp


; =============== S U B	R O U T	I N E =======================================


; int __stdcall	sub_405B02(LPSTR, int)
sub_405B02	proc near		; CODE XREF: sub_401434+A57p
					; sub_401434+A92p ...

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8

		push	[esp+arg_4]
		push	offset aD	; "%d"
		push	[esp+8+arg_0]	; LPSTR
		call	ds:wsprintfA
		add	esp, 0Ch
		retn	8
sub_405B02	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_405B1B	proc near		; CODE XREF: sub_40136D+14p
					; sub_401434+1070p ...

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
		jnz	short loc_405B3C
		inc	ecx
		or	[ebp+var_4], 0FFFFFFFFh

loc_405B3C:				; CODE XREF: sub_405B1B+1Aj
		cmp	byte ptr [ecx],	30h
		jnz	short loc_405B5D
		inc	ecx
		mov	dl, [ecx]
		cmp	dl, 30h
		jl	short loc_405B52
		cmp	dl, 37h
		jg	short loc_405B52
		mov	al, 8
		mov	bl, 37h

loc_405B52:				; CODE XREF: sub_405B1B+2Cj
					; sub_405B1B+31j
		and	dl, 0DFh
		cmp	dl, 58h
		jnz	short loc_405B5D
		mov	al, 10h
		inc	ecx

loc_405B5D:				; CODE XREF: sub_405B1B+24j
					; sub_405B1B+3Dj ...
		movsx	edx, byte ptr [ecx]
		inc	ecx
		cmp	edx, 30h
		jl	short loc_405B72
		movsx	esi, bl
		cmp	edx, esi
		jg	short loc_405B72
		sub	edx, 30h
		jmp	short loc_405B8B
; ---------------------------------------------------------------------------

loc_405B72:				; CODE XREF: sub_405B1B+49j
					; sub_405B1B+50j
		cmp	al, 10h
		jnz	short loc_405B97
		mov	esi, edx
		and	esi, 0FFFFFFDFh
		cmp	esi, 41h
		jl	short loc_405B97
		cmp	esi, 46h
		jg	short loc_405B97
		and	edx, 7
		add	edx, 9

loc_405B8B:				; CODE XREF: sub_405B1B+55j
		movsx	esi, al
		imul	esi, edi
		add	esi, edx
		mov	edi, esi
		jmp	short loc_405B5D
; ---------------------------------------------------------------------------

loc_405B97:				; CODE XREF: sub_405B1B+59j
					; sub_405B1B+63j ...
		mov	eax, [ebp+var_4]
		imul	eax, edi
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn	4
sub_405B1B	endp


; =============== S U B	R O U T	I N E =======================================


; int __stdcall	sub_405BA4(LPSTR lpString1, LPCSTR lpString2)
sub_405BA4	proc near		; CODE XREF: sub_401434+1E8p
					; sub_401434+2A6p ...

lpString1	= dword	ptr  4
lpString2	= dword	ptr  8

		push	400h		; iMaxLength
		push	[esp+4+lpString2] ; lpString2
		push	[esp+8+lpString1] ; lpString1
		call	ds:lstrcpynA
		retn	8
sub_405BA4	endp

; [00000006 BYTES: COLLAPSED FUNCTION lstrlenA.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION lstrcatA.	PRESS KEYPAD CTRL-"+" TO EXPAND]

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_405BC6(LPSTR lpString1, int)
sub_405BC6	proc near		; CODE XREF: sub_401434+3DDp
					; sub_401434+48Cp ...

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
		jge	short loc_405BE4
		mov	ecx, dword_42DB9C
		lea	eax, ds:4[eax*4]
		sub	ecx, eax
		mov	eax, [ecx]

loc_405BE4:				; CODE XREF: sub_405BC6+Bj
		mov	ecx, dword_42E3F8
		push	ebx
		add	ecx, eax
		mov	eax, offset String
		cmp	[ebp+lpString1], eax
		push	esi
		push	edi
		mov	edi, eax
		jb	loc_405DEC
		mov	edx, [ebp+lpString1]
		sub	edx, eax
		cmp	edx, 800h
		jnb	loc_405DEC
		mov	edi, [ebp+lpString1]
		and	[ebp+lpString1], 0
		jmp	loc_405DEC
; ---------------------------------------------------------------------------

loc_405C1C:				; CODE XREF: sub_405BC6+22Aj
		mov	esi, edi
		sub	esi, eax
		cmp	esi, 400h
		jge	loc_405DF6
		inc	ecx
		cmp	dl, 4
		mov	[ebp+arg_4], ecx
		jnb	loc_405DDF
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
		cmp	dl, 2
		mov	[ebp+var_10], ecx
		mov	[ebp+var_C], eax
		jnz	loc_405D89
		push	2
		pop	esi
		call	ds:GetVersion
		test	eax, eax
		jns	short loc_405C99
		cmp	ax, 5A04h
		jz	short loc_405C99
		cmp	[ebp+var_C], 23h
		jz	short loc_405C99
		cmp	[ebp+var_C], 2Eh
		jz	short loc_405C99
		and	[ebp+var_4], 0
		jmp	short loc_405CA0
; ---------------------------------------------------------------------------

loc_405C99:				; CODE XREF: sub_405BC6+B9j
					; sub_405BC6+BFj ...
		mov	[ebp+var_4], 1

loc_405CA0:				; CODE XREF: sub_405BC6+D1j
		cmp	dword_42E444, 0
		jz	short loc_405CAC
		push	4
		pop	esi

loc_405CAC:				; CODE XREF: sub_405BC6+E1j
		test	bl, bl
		jns	short loc_405CE7
		mov	eax, ebx
		and	ebx, 3Fh
		add	ebx, dword_42E3F8
		and	eax, 40h
		push	eax		; phkResult
		push	edi		; Type
		push	ebx		; lpValueName
		push	offset aSoftwareMicros ; "Software\\Microsoft\\Windows\\CurrentVe"...
		push	80000002h	; hKey
		call	sub_405A8B
		cmp	byte ptr [edi],	0
		jnz	loc_405D70
		push	[ebp+var_C]	; int
		push	edi		; lpString1
		call	sub_405BC6
		jmp	loc_405D6B
; ---------------------------------------------------------------------------

loc_405CE7:				; CODE XREF: sub_405BC6+E8j
		cmp	ebx, 25h
		jnz	short loc_405CFA
		push	400h		; uSize
		push	edi		; lpBuffer
		call	ds:GetSystemDirectoryA
		jmp	short loc_405D6B
; ---------------------------------------------------------------------------

loc_405CFA:				; CODE XREF: sub_405BC6+124j
		cmp	ebx, 24h
		jnz	short loc_405D67
		push	400h		; uSize
		push	edi		; lpBuffer
		call	ds:GetWindowsDirectoryA
		xor	esi, esi
		jmp	short loc_405D67
; ---------------------------------------------------------------------------

loc_405D0F:				; CODE XREF: sub_405BC6+1A3j
		mov	eax, dword_42E3C4
		xor	ecx, ecx
		dec	esi
		cmp	eax, ecx
		jz	short loc_405D33
		cmp	[ebp+var_4], ecx
		jz	short loc_405D33
		push	edi
		push	ecx
		push	ecx
		push	[ebp+esi*4+csidl]
		push	hwnd
		call	eax ; dword_42E3C4
		test	eax, eax
		jz	short loc_405D6B

loc_405D33:				; CODE XREF: sub_405BC6+153j
					; sub_405BC6+158j
		lea	eax, [ebp+ppidl]
		push	eax		; ppidl
		push	[ebp+esi*4+csidl] ; csidl
		push	hwnd		; hwnd
		call	ds:SHGetSpecialFolderLocation
		test	eax, eax
		jnz	short loc_405D64
		push	edi		; pszPath
		push	[ebp+ppidl]	; pidl
		call	ds:SHGetPathFromIDListA
		push	[ebp+ppidl]	; pv
		mov	ebx, eax
		call	ds:CoTaskMemFree
		test	ebx, ebx
		jnz	short loc_405D6B

loc_405D64:				; CODE XREF: sub_405BC6+183j
		and	byte ptr [edi],	0

loc_405D67:				; CODE XREF: sub_405BC6+137j
					; sub_405BC6+147j
		test	esi, esi
		jnz	short loc_405D0F

loc_405D6B:				; CODE XREF: sub_405BC6+11Cj
					; sub_405BC6+132j ...
		cmp	byte ptr [edi],	0
		jz	short loc_405D81

loc_405D70:				; CODE XREF: sub_405BC6+10Dj
		cmp	[ebp+var_C], 1Ah
		jnz	short loc_405D81
		push	offset aMicrosoftInter ; "\\Microsoft\\Internet	Explorer\\Quick	L"...
		push	edi		; lpString1
		call	lstrcatA

loc_405D81:				; CODE XREF: sub_405BC6+1A8j
					; sub_405BC6+1AEj ...
		push	edi		; lpsz
		call	sub_405E0F
		jmp	short loc_405DCD
; ---------------------------------------------------------------------------

loc_405D89:				; CODE XREF: sub_405BC6+A8j
		cmp	dl, 3
		jnz	short loc_405DBC
		cmp	esi, 1Dh
		jnz	short loc_405DA1
		push	hwnd		; int
		push	edi		; LPSTR
		call	sub_405B02
		jmp	short loc_405DB2
; ---------------------------------------------------------------------------

loc_405DA1:				; CODE XREF: sub_405BC6+1CBj
		mov	eax, esi
		shl	eax, 0Ah
		add	eax, offset dword_42F000
		push	eax		; lpString2
		push	edi		; lpString1
		call	sub_405BA4

loc_405DB2:				; CODE XREF: sub_405BC6+1D9j
		add	esi, 0FFFFFFEBh
		cmp	esi, 7
		jnb	short loc_405DCD
		jmp	short loc_405D81
; ---------------------------------------------------------------------------

loc_405DBC:				; CODE XREF: sub_405BC6+1C6j
		cmp	dl, 1
		jnz	short loc_405DCD
		or	eax, 0FFFFFFFFh
		sub	eax, esi
		push	eax		; int
		push	edi		; lpString1
		call	sub_405BC6

loc_405DCD:				; CODE XREF: sub_405BC6+1C1j
					; sub_405BC6+1F2j ...
		push	edi		; lpString
		call	lstrlenA
		mov	ecx, [ebp+arg_4]
		add	edi, eax
		mov	eax, offset String
		jmp	short loc_405DEC
; ---------------------------------------------------------------------------

loc_405DDF:				; CODE XREF: sub_405BC6+6Dj
		jnz	short loc_405DE9
		mov	dl, [ecx]
		mov	[edi], dl
		inc	edi
		inc	ecx
		jmp	short loc_405DEC
; ---------------------------------------------------------------------------

loc_405DE9:				; CODE XREF: sub_405BC6:loc_405DDFj
		mov	[edi], dl
		inc	edi

loc_405DEC:				; CODE XREF: sub_405BC6+33j
					; sub_405BC6+44j ...
		mov	dl, [ecx]
		test	dl, dl
		jnz	loc_405C1C

loc_405DF6:				; CODE XREF: sub_405BC6+60j
		and	byte ptr [edi],	0
		cmp	[ebp+lpString1], 0
		pop	edi
		pop	esi
		pop	ebx
		jz	short locret_405E0B
		push	eax		; lpString2
		push	[ebp+lpString1]	; lpString1
		call	sub_405BA4

locret_405E0B:				; CODE XREF: sub_405BC6+23Aj
		leave
		retn	8
sub_405BC6	endp


; =============== S U B	R O U T	I N E =======================================


; int __stdcall	sub_405E0F(LPCSTR lpsz)
sub_405E0F	proc near		; CODE XREF: sub_401434+350p
					; sub_4029FD+34p ...

lpsz		= dword	ptr  4

		push	ebx
		push	esi
		mov	esi, [esp+8+lpsz]
		push	edi
		cmp	byte ptr [esi],	5Ch
		jnz	short loc_405E30
		cmp	byte ptr [esi+1], 5Ch
		jnz	short loc_405E30
		cmp	byte ptr [esi+2], 3Fh
		jnz	short loc_405E30
		cmp	byte ptr [esi+3], 5Ch
		jnz	short loc_405E30
		add	esi, 4

loc_405E30:				; CODE XREF: sub_405E0F+Aj
					; sub_405E0F+10j ...
		cmp	byte ptr [esi],	0
		jz	short loc_405E41
		push	esi
		call	sub_4056A1
		test	eax, eax
		jz	short loc_405E41
		inc	esi
		inc	esi

loc_405E41:				; CODE XREF: sub_405E0F+24j
					; sub_405E0F+2Ej
		mov	al, [esi]
		mov	ebx, esi
		test	al, al
		mov	edi, esi
		jz	short loc_405E84
		push	ebp
		mov	ebp, ds:CharNextA

loc_405E52:				; CODE XREF: sub_405E0F+72j
		cmp	al, 1Fh
		jbe	short loc_405E78
		push	eax		; char
		push	offset a?	; "*?|<>/\":"
		call	sub_40565F
		cmp	byte ptr [eax],	0
		jnz	short loc_405E78
		push	esi		; lpsz
		call	ebp ; CharNextA
		sub	eax, esi
		push	eax
		push	esi
		push	edi
		call	sub_4057F0
		push	edi		; lpsz
		call	ebp ; CharNextA
		mov	edi, eax

loc_405E78:				; CODE XREF: sub_405E0F+45j
					; sub_405E0F+55j
		push	esi		; lpsz
		call	ebp ; CharNextA
		mov	esi, eax
		mov	al, [esi]
		test	al, al
		jnz	short loc_405E52
		pop	ebp

loc_405E84:				; CODE XREF: sub_405E0F+3Aj
		and	byte ptr [edi],	0

loc_405E87:				; CODE XREF: sub_405E0F+91j
		push	edi		; lpszCurrent
		push	ebx		; lpszStart
		call	ds:CharPrevA
		mov	edi, eax
		mov	al, [edi]
		cmp	al, 20h
		jz	short loc_405E9B
		cmp	al, 5Ch
		jnz	short loc_405EA2

loc_405E9B:				; CODE XREF: sub_405E0F+86j
		and	byte ptr [edi],	0
		cmp	ebx, edi
		jb	short loc_405E87

loc_405EA2:				; CODE XREF: sub_405E0F+8Aj
		pop	edi
		pop	esi
		pop	ebx
		retn	4
sub_405E0F	endp


; =============== S U B	R O U T	I N E =======================================


; int __stdcall	sub_405EA8(LPCSTR lpFileName)
sub_405EA8	proc near		; CODE XREF: sub_401434+212p
					; sub_401434+252p ...

lpFileName	= dword	ptr  4

		push	esi
		mov	esi, offset FindFileData
		push	esi		; lpFindFileData
		push	[esp+8+lpFileName] ; lpFileName
		call	ds:FindFirstFileA
		cmp	eax, 0FFFFFFFFh
		jz	short loc_405EC9
		push	eax		; hFindFile
		call	ds:FindClose
		mov	eax, esi
		jmp	short loc_405ECB
; ---------------------------------------------------------------------------

loc_405EC9:				; CODE XREF: sub_405EA8+14j
		xor	eax, eax

loc_405ECB:				; CODE XREF: sub_405EA8+1Fj
		pop	esi
		retn	4
sub_405EA8	endp


; =============== S U B	R O U T	I N E =======================================


sub_405ECF	proc near		; CODE XREF: sub_402A3D+6Ep start+40p	...

arg_0		= dword	ptr  4

		mov	eax, [esp+arg_0]
		push	esi
		mov	esi, eax
		push	edi
		shl	esi, 3
		mov	edi, off_409238[esi]
		push	edi		; lpModuleName
		call	ds:GetModuleHandleA
		test	eax, eax
		jnz	short loc_405EF6
		push	edi		; lpLibFileName
		call	ds:LoadLibraryA
		test	eax, eax
		jz	short loc_405F03

loc_405EF6:				; CODE XREF: sub_405ECF+1Aj
		push	off_40923C[esi]	; lpProcName
		push	eax		; hModule
		call	ds:__imp_GetProcAddress

loc_405F03:				; CODE XREF: sub_405ECF+25j
		pop	edi
		pop	esi
		retn	4
sub_405ECF	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_405F08(UINT	wMsgFilterMin)
sub_405F08	proc near		; CODE XREF: sub_401434+A2Ep
					; sub_402BC5+2Ap

Msg		= MSG ptr -1Ch
wMsgFilterMin	= dword	ptr  8

		push	ebp
		mov	ebp, esp
		sub	esp, 1Ch
		push	esi
		mov	esi, [ebp+wMsgFilterMin]
		push	edi
		mov	edi, ds:PeekMessageA
		jmp	short loc_405F25
; ---------------------------------------------------------------------------

loc_405F1B:				; CODE XREF: sub_405F08+2Bj
		lea	eax, [ebp+Msg]
		push	eax		; lpMsg
		call	ds:DispatchMessageA

loc_405F25:				; CODE XREF: sub_405F08+11j
		push	1		; wRemoveMsg
		push	esi		; wMsgFilterMax
		push	esi		; wMsgFilterMin
		lea	eax, [ebp+Msg]
		push	0		; hWnd
		push	eax		; lpMsg
		call	edi ; PeekMessageA
		test	eax, eax
		jnz	short loc_405F1B
		pop	edi
		pop	esi
		leave
		retn	4
sub_405F08	endp

; [00000006 BYTES: COLLAPSED FUNCTION GetProcAddress. PRESS KEYPAD CTRL-"+" TO EXPAND]

; =============== S U B	R O U T	I N E =======================================


sub_405F41	proc near		; CODE XREF: sub_402C29+15Bp

arg_0		= dword	ptr  4
arg_4		= dword	ptr  8
arg_8		= dword	ptr  0Ch

		cmp	dword_42BDD4, 0
		push	esi
		jnz	short loc_405F78
		xor	ecx, ecx

loc_405F4D:				; CODE XREF: sub_405F41+35j
		push	8
		mov	eax, ecx
		pop	esi

loc_405F52:				; CODE XREF: sub_405F41+25j
		mov	edx, eax
		and	dl, 1
		neg	dl
		sbb	edx, edx
		and	edx, 0EDB88320h
		shr	eax, 1
		xor	eax, edx
		dec	esi
		jnz	short loc_405F52
		mov	dword_42BDD0[ecx*4], eax
		inc	ecx
		cmp	ecx, 100h
		jl	short loc_405F4D

loc_405F78:				; CODE XREF: sub_405F41+8j
		mov	edx, [esp+4+arg_8]
		mov	eax, [esp+4+arg_0]
		test	edx, edx
		not	eax
		jbe	short loc_405FA9
		mov	ecx, [esp+4+arg_4]
		push	edi

loc_405F8B:				; CODE XREF: sub_405F41+65j
		movzx	edi, byte ptr [ecx]
		mov	esi, eax
		and	esi, 0FFh
		xor	esi, edi
		shr	eax, 8
		mov	esi, dword_42BDD0[esi*4]
		xor	eax, esi
		inc	ecx
		dec	edx
		jnz	short loc_405F8B
		pop	edi

loc_405FA9:				; CODE XREF: sub_405F41+43j
		not	eax
		pop	esi
		retn	0Ch
sub_405F41	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_405FAF	proc near		; CODE XREF: sub_402E62+F5p

var_40		= dword	ptr -40h
var_38		= dword	ptr -38h
var_34		= dword	ptr -34h
var_30		= dword	ptr -30h
var_2C		= dword	ptr -2Ch
var_20		= dword	ptr -20h
var_1C		= dword	ptr -1Ch
var_18		= dword	ptr -18h
var_14		= dword	ptr -14h
var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_8		= dword	ptr -8
var_4		= dword	ptr -4
arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		sub	esp, 44h
		mov	eax, [ebp+arg_0]
		push	ebx
		push	esi
		push	edi
		mov	ecx, [eax]
		lea	esi, [eax+10h]
		mov	eax, [eax+4]
		mov	[ebp+var_38], ecx
		mov	ecx, [esi+9BA8h]
		mov	ebx, [esi+518h]
		mov	[ebp+var_34], eax
		mov	eax, [esi+51Ch]
		mov	[ebp+var_40], eax
		mov	eax, [esi+9BA4h]
		cmp	ecx, eax
		mov	[ebp+var_30], ecx
		jnb	short loc_405FF0
		sub	eax, ecx
		dec	eax
		jmp	short loc_405FF8
; ---------------------------------------------------------------------------

loc_405FF0:				; CODE XREF: sub_405FAF+3Aj
		mov	eax, [esi+9BA0h]
		sub	eax, ecx

loc_405FF8:				; CODE XREF: sub_405FAF+3Fj
		mov	[ebp+var_2C], eax
		jmp	loc_4069C3
; ---------------------------------------------------------------------------

loc_406000:				; CODE XREF: sub_405FAF+A19j
		jmp	ds:off_4069FE[eax*4]
; ---------------------------------------------------------------------------

loc_406007:				; CODE XREF: sub_405FAF+7Bj
		cmp	[ebp+var_34], 0
		jz	loc_4069D3
		mov	eax, [ebp+var_38]
		dec	[ebp+var_34]
		mov	ecx, ebx
		movzx	eax, byte ptr [eax]
		shl	eax, cl
		or	[ebp+var_40], eax
		inc	[ebp+var_38]
		add	ebx, 8

loc_406027:				; CODE XREF: sub_405FAF:loc_406000j
					; DATA XREF: .text:00406A1Eo
		cmp	ebx, 3
		jb	short loc_406007
		mov	eax, [ebp+var_40]
		sub	ebx, 3
		shr	[ebp+var_40], 3
		and	eax, 7
		mov	ecx, eax
		and	cl, 1
		neg	cl
		sbb	ecx, ecx
		and	ecx, 7
		shr	eax, 1
		add	ecx, 8
		sub	eax, 0
		mov	[esi+514h], ecx
		jz	loc_406187
		dec	eax
		jz	short loc_4060B2
		dec	eax
		jz	short loc_4060A7
		dec	eax
		jnz	loc_4069C3

loc_406066:				; CODE XREF: sub_405FAF:loc_406000j
					; sub_405FAF+358j ...
		or	edi, 0FFFFFFFFh
		mov	dword ptr [esi], 11h

loc_40606F:				; CODE XREF: sub_405FAF+A42j
					; sub_405FAF+A4Aj
		mov	eax, [ebp+var_40]
		mov	ecx, [ebp+arg_0]
		mov	[esi+51Ch], eax
		mov	eax, [ebp+var_34]
		mov	[esi+518h], ebx
		mov	[ecx+4], eax

loc_406087:				; CODE XREF: sub_405FAF+A3Bj
		mov	eax, [ebp+arg_0]
		mov	ecx, [ebp+var_38]
		push	eax
		mov	[eax], ecx
		mov	ecx, [ebp+var_30]
		mov	[esi+9BA8h], ecx
		call	sub_406A3E
		mov	eax, edi
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn	4
; ---------------------------------------------------------------------------

loc_4060A7:				; CODE XREF: sub_405FAF+AEj
		mov	dword ptr [esi], 0Bh
		jmp	loc_4069C3
; ---------------------------------------------------------------------------

loc_4060B2:				; CODE XREF: sub_405FAF+ABj
		cmp	byte_42D358, 0
		jnz	loc_40615F
		and	[ebp+var_8], 0
		mov	eax, offset dword_42C1D8

loc_4060C8:				; CODE XREF: sub_405FAF+143j
		cmp	eax, offset dword_42C414
		mov	cl, 8
		jle	short loc_4060E5
		cmp	eax, offset dword_42C5D8
		jge	short loc_4060DC
		inc	cl
		jmp	short loc_4060E5
; ---------------------------------------------------------------------------

loc_4060DC:				; CODE XREF: sub_405FAF+127j
		cmp	eax, offset dword_42C638
		jge	short loc_4060E5
		mov	cl, 7

loc_4060E5:				; CODE XREF: sub_405FAF+120j
					; sub_405FAF+12Bj ...
		movsx	ecx, cl
		mov	[eax], ecx
		add	eax, 4
		cmp	eax, offset dword_42C658
		jl	short loc_4060C8
		lea	eax, [ebp+var_8]
		mov	edi, offset dword_42C1D8
		push	eax
		push	offset dword_42CAD8
		push	offset byte_4093D4
		push	offset dword_42C1D4
		push	offset dword_4073C8
		push	offset dword_407388
		push	101h
		push	120h
		push	edi
		call	sub_406AA6
		push	1Eh
		pop	ecx
		push	5
		pop	eax
		rep stosd
		lea	eax, [ebp+var_8]
		push	eax
		push	offset dword_42CAD8
		push	offset byte_4093D8
		push	offset dword_42C1D0
		push	offset dword_407444
		push	offset dword_407408
		push	0
		push	1Eh
		push	offset dword_42C1D8
		call	sub_406AA6
		inc	byte_42D358

loc_40615F:				; CODE XREF: sub_405FAF+10Aj
		mov	al, byte_4093D4
		mov	[esi+10h], al
		mov	al, byte_4093D8
		mov	[esi+11h], al
		mov	eax, dword_42C1D4
		mov	[esi+14h], eax
		mov	eax, dword_42C1D0
		mov	[esi+18h], eax

loc_40617F:				; CODE XREF: sub_405FAF+83Aj
					; sub_405FAF+909j ...
		and	dword ptr [esi], 0
		jmp	loc_4069C3
; ---------------------------------------------------------------------------

loc_406187:				; CODE XREF: sub_405FAF+A4j
		mov	ecx, ebx
		mov	dword ptr [esi], 9
		and	ecx, 7
		shr	[ebp+var_40], cl
		sub	ebx, ecx
		jmp	loc_4069C3
; ---------------------------------------------------------------------------

loc_40619C:				; CODE XREF: sub_405FAF+210j
		cmp	[ebp+var_34], 0
		jz	loc_4069D3
		mov	eax, [ebp+var_38]
		dec	[ebp+var_34]
		mov	ecx, ebx
		movzx	eax, byte ptr [eax]
		shl	eax, cl
		or	[ebp+var_40], eax
		inc	[ebp+var_38]
		add	ebx, 8

loc_4061BC:				; CODE XREF: sub_405FAF:loc_406000j
					; DATA XREF: .text:00406A22o
		cmp	ebx, 20h
		jb	short loc_40619C
		mov	eax, [ebp+var_40]
		xor	ebx, ebx
		and	eax, 0FFFFh
		mov	[ebp+var_40], ebx
		cmp	eax, ebx
		mov	[esi+4], eax
		jz	loc_4062C2
		push	0Ah
		pop	eax
		jmp	loc_4062C8
; ---------------------------------------------------------------------------

loc_4061E1:				; CODE XREF: sub_405FAF:loc_406000j
					; DATA XREF: .text:00406A26o
		cmp	[ebp+var_34], 0
		jz	loc_4069D3
		mov	eax, [ebp+var_2C]
		test	eax, eax
		jnz	loc_40628E
		mov	ecx, [esi+9BA0h]
		mov	edx, [ebp+var_30]
		cmp	edx, ecx
		jnz	short loc_40622C
		mov	eax, [esi+9BA4h]
		lea	edi, [esi+1BA0h]
		cmp	eax, edi
		jz	short loc_40622C
		mov	edx, edi
		cmp	edx, eax
		mov	[ebp+var_30], edx
		jnb	short loc_406221
		sub	eax, edx
		dec	eax
		jmp	short loc_406225
; ---------------------------------------------------------------------------

loc_406221:				; CODE XREF: sub_405FAF+26Bj
		sub	ecx, edx
		mov	eax, ecx

loc_406225:				; CODE XREF: sub_405FAF+270j
		test	eax, eax
		mov	[ebp+var_2C], eax
		jnz	short loc_40628E

loc_40622C:				; CODE XREF: sub_405FAF+252j
					; sub_405FAF+262j
		push	[ebp+arg_0]
		mov	[esi+9BA8h], edx
		call	sub_406A3E
		mov	edx, [esi+9BA8h]
		mov	ecx, [esi+9BA4h]
		cmp	edx, ecx
		mov	[ebp+var_30], edx
		jnb	short loc_406254
		mov	eax, ecx
		sub	eax, edx
		dec	eax
		jmp	short loc_40625C
; ---------------------------------------------------------------------------

loc_406254:				; CODE XREF: sub_405FAF+29Cj
		mov	eax, [esi+9BA0h]
		sub	eax, edx

loc_40625C:				; CODE XREF: sub_405FAF+2A3j
		mov	edi, [esi+9BA0h]
		mov	[ebp+var_2C], eax
		cmp	edx, edi
		jnz	short loc_406286
		lea	edx, [esi+1BA0h]
		cmp	edx, ecx
		jz	short loc_406286
		mov	[ebp+var_30], edx
		jnb	short loc_40627F
		sub	ecx, edx
		dec	ecx
		mov	eax, ecx
		jmp	short loc_406283
; ---------------------------------------------------------------------------

loc_40627F:				; CODE XREF: sub_405FAF+2C7j
		sub	edi, edx
		mov	eax, edi

loc_406283:				; CODE XREF: sub_405FAF+2CEj
		mov	[ebp+var_2C], eax

loc_406286:				; CODE XREF: sub_405FAF+2B8j
					; sub_405FAF+2C2j
		test	eax, eax
		jz	loc_4069EF

loc_40628E:				; CODE XREF: sub_405FAF+241j
					; sub_405FAF+27Bj
		cmp	eax, [ebp+var_34]
		jb	short loc_406296
		mov	eax, [ebp+var_34]

loc_406296:				; CODE XREF: sub_405FAF+2E2j
		mov	ecx, [esi+4]
		cmp	ecx, eax
		mov	edi, ecx
		jb	short loc_4062A1
		mov	edi, eax

loc_4062A1:				; CODE XREF: sub_405FAF+2EEj
		push	edi
		push	[ebp+var_38]
		push	[ebp+var_30]
		call	sub_4057F0
		add	[ebp+var_38], edi
		sub	[ebp+var_34], edi
		add	[ebp+var_30], edi
		sub	[ebp+var_2C], edi
		sub	[esi+4], edi
		jnz	loc_4069C3

loc_4062C2:				; CODE XREF: sub_405FAF+224j
		mov	eax, [esi+514h]

loc_4062C8:				; CODE XREF: sub_405FAF+22Dj
		mov	[esi], eax
		jmp	loc_4069C3
; ---------------------------------------------------------------------------

loc_4062CF:				; CODE XREF: sub_405FAF+343j
		cmp	[ebp+var_34], 0
		jz	loc_4069D3
		mov	eax, [ebp+var_38]
		dec	[ebp+var_34]
		mov	ecx, ebx
		movzx	eax, byte ptr [eax]
		shl	eax, cl
		or	[ebp+var_40], eax
		inc	[ebp+var_38]
		add	ebx, 8

loc_4062EF:				; CODE XREF: sub_405FAF:loc_406000j
					; DATA XREF: .text:00406A2Ao
		cmp	ebx, 0Eh
		jb	short loc_4062CF
		mov	eax, [ebp+var_40]
		and	eax, 3FFFh
		mov	ecx, eax
		mov	[esi+4], eax
		and	ecx, 1Fh
		cmp	cl, 1Dh
		ja	loc_406066
		and	eax, 3E0h
		cmp	eax, 3A0h
		ja	loc_406066
		shr	[ebp+var_40], 0Eh
		sub	ebx, 0Eh
		and	dword ptr [esi+8], 0
		mov	dword ptr [esi], 0Ch

loc_40632E:				; CODE XREF: sub_405FAF:loc_406000j
					; DATA XREF: .text:00406A2Eo
		mov	eax, [esi+4]
		shr	eax, 0Ah
		add	eax, 4
		cmp	[esi+8], eax
		jnb	short loc_4063A5
		jmp	short loc_40635E
; ---------------------------------------------------------------------------

loc_40633E:				; CODE XREF: sub_405FAF+3B2j
		cmp	[ebp+var_34], 0
		jz	loc_4069D3
		mov	eax, [ebp+var_38]
		dec	[ebp+var_34]
		mov	ecx, ebx
		movzx	eax, byte ptr [eax]
		shl	eax, cl
		or	[ebp+var_40], eax
		inc	[ebp+var_38]
		add	ebx, 8

loc_40635E:				; CODE XREF: sub_405FAF+38Dj
					; sub_405FAF+3E0j
		cmp	ebx, 3
		jb	short loc_40633E
		mov	ecx, [esi+8]
		mov	eax, [ebp+var_40]
		and	eax, 7
		sub	ebx, 3
		movsx	ecx, ds:byte_407374[ecx]
		shr	[ebp+var_40], 3
		mov	[esi+ecx*4+0Ch], eax
		mov	ecx, [esi+4]
		inc	dword ptr [esi+8]
		mov	eax, [esi+8]
		shr	ecx, 0Ah
		add	ecx, 4
		cmp	eax, ecx
		jb	short loc_40635E
		jmp	short loc_4063A5
; ---------------------------------------------------------------------------

loc_406393:				; CODE XREF: sub_405FAF+3FAj
		mov	eax, [esi+8]
		movsx	eax, ds:byte_407374[eax]
		and	dword ptr [esi+eax*4+0Ch], 0
		inc	dword ptr [esi+8]

loc_4063A5:				; CODE XREF: sub_405FAF+38Bj
					; sub_405FAF+3E2j
		cmp	dword ptr [esi+8], 13h
		jb	short loc_406393
		lea	ecx, [ebp+var_8]
		lea	edi, [esi+50Ch]
		push	ecx
		lea	ecx, [esi+520h]
		push	ecx
		lea	ecx, [esi+510h]
		xor	eax, eax
		push	edi
		push	ecx
		push	eax
		mov	[ebp+var_8], eax
		push	eax
		push	13h
		lea	eax, [esi+0Ch]
		push	13h
		push	eax
		mov	dword ptr [edi], 7
		call	sub_406AA6
		test	eax, eax
		jnz	short loc_4063F4
		cmp	[edi], eax
		jz	short loc_4063F4
		and	[esi+8], eax
		mov	dword ptr [esi], 0Dh
		jmp	loc_406511
; ---------------------------------------------------------------------------

loc_4063F4:				; CODE XREF: sub_405FAF+431j
					; sub_405FAF+435j
		mov	dword ptr [esi], 11h
		jmp	loc_4069C3
; ---------------------------------------------------------------------------

loc_4063FF:				; CODE XREF: sub_405FAF+57Cj
		mov	eax, [esi+50Ch]
		jmp	short loc_406427
; ---------------------------------------------------------------------------

loc_406407:				; CODE XREF: sub_405FAF+47Aj
		cmp	[ebp+var_34], 0
		jz	loc_4069D3
		mov	ecx, [ebp+var_38]
		dec	[ebp+var_34]
		movzx	edx, byte ptr [ecx]
		mov	ecx, ebx
		shl	edx, cl
		or	[ebp+var_40], edx
		inc	[ebp+var_38]
		add	ebx, 8

loc_406427:				; CODE XREF: sub_405FAF+456j
		cmp	ebx, eax
		jb	short loc_406407
		movzx	eax, word_4093B0[eax*2]
		and	eax, [ebp+var_40]
		mov	ecx, [esi+510h]
		lea	eax, [ecx+eax*4]
		movzx	edx, byte ptr [eax+1]
		movzx	eax, word ptr [eax+2]
		cmp	eax, 10h
		mov	[ebp+var_14], eax
		jnb	short loc_406465
		mov	ecx, edx
		sub	ebx, edx
		shr	[ebp+var_40], cl
		mov	ecx, [esi+8]
		mov	[esi+ecx*4+0Ch], eax
		inc	dword ptr [esi+8]
		jmp	loc_406511
; ---------------------------------------------------------------------------

loc_406465:				; CODE XREF: sub_405FAF+49Ej
		cmp	eax, 12h
		jnz	short loc_406476
		push	7
		mov	[ebp+var_8], 0Bh
		pop	eax
		jmp	short loc_4064A2
; ---------------------------------------------------------------------------

loc_406476:				; CODE XREF: sub_405FAF+4B9j
		add	eax, 0FFFFFFF2h
		mov	[ebp+var_8], 3
		jmp	short loc_4064A2
; ---------------------------------------------------------------------------

loc_406482:				; CODE XREF: sub_405FAF+4F8j
		cmp	[ebp+var_34], 0
		jz	loc_4069D3
		mov	ecx, [ebp+var_38]
		dec	[ebp+var_34]
		movzx	edi, byte ptr [ecx]
		mov	ecx, ebx
		shl	edi, cl
		or	[ebp+var_40], edi
		inc	[ebp+var_38]
		add	ebx, 8

loc_4064A2:				; CODE XREF: sub_405FAF+4C5j
					; sub_405FAF+4D1j
		lea	ecx, [eax+edx]
		cmp	ebx, ecx
		jb	short loc_406482
		mov	ecx, edx
		sub	ebx, edx
		shr	[ebp+var_40], cl
		movzx	ecx, word_4093B0[eax*2]
		and	ecx, [ebp+var_40]
		mov	edx, [ebp+var_8]
		sub	ebx, eax
		add	edx, ecx
		mov	ecx, eax
		mov	eax, [esi+4]
		shr	[ebp+var_40], cl
		mov	ecx, [esi+8]
		mov	edi, eax
		shr	edi, 5
		and	edi, 1Fh
		and	eax, 1Fh
		lea	eax, [edi+eax+102h]
		lea	edi, [edx+ecx]
		cmp	edi, eax
		ja	loc_406066
		cmp	[ebp+var_14], 10h
		jnz	short loc_4064FF
		cmp	ecx, 1
		jb	loc_406066
		mov	edi, [esi+ecx*4+8]
		jmp	short loc_406501
; ---------------------------------------------------------------------------

loc_4064FF:				; CODE XREF: sub_405FAF+53Fj
		xor	edi, edi

loc_406501:				; CODE XREF: sub_405FAF+54Ej
		lea	eax, [esi+ecx*4+0Ch]

loc_406505:				; CODE XREF: sub_405FAF+55Dj
		mov	[eax], edi
		inc	ecx
		add	eax, 4
		dec	edx
		jnz	short loc_406505
		mov	[esi+8], ecx

loc_406511:				; CODE XREF: sub_405FAF:loc_406000j
					; sub_405FAF+440j ...
		mov	eax, [esi+4]
		mov	ecx, [esi+8]
		mov	edx, eax
		and	eax, 1Fh
		shr	edx, 5
		and	edx, 1Fh
		lea	eax, [edx+eax+102h]
		cmp	ecx, eax
		jb	loc_4063FF
		mov	eax, [esi+4]
		and	dword ptr [esi+510h], 0
		and	[ebp+var_C], 0
		mov	edi, eax
		shr	eax, 5
		and	edi, 1Fh
		mov	ecx, 101h
		and	eax, 1Fh
		add	edi, ecx
		inc	eax
		lea	edx, [ebp+var_C]
		mov	[ebp+var_14], eax
		lea	eax, [esi+520h]
		push	edx
		push	eax
		lea	eax, [ebp+var_4]
		mov	[ebp+var_4], 9
		push	eax
		lea	eax, [ebp+var_18]
		push	eax
		push	offset dword_4073C8
		push	offset dword_407388
		push	ecx
		lea	eax, [esi+0Ch]
		push	edi
		push	eax
		mov	[ebp+var_10], 6
		call	sub_406AA6
		cmp	[ebp+var_4], 0
		jnz	short loc_406594
		or	eax, 0FFFFFFFFh

loc_406594:				; CODE XREF: sub_405FAF+5E0j
		test	eax, eax
		jnz	loc_406066
		lea	eax, [ebp+var_C]
		push	eax
		lea	eax, [esi+520h]
		push	eax
		lea	eax, [ebp+var_10]
		push	eax
		lea	eax, [ebp+var_1C]
		push	eax
		push	offset dword_407444
		push	offset dword_407408
		push	0
		push	[ebp+var_14]
		lea	eax, [esi+edi*4+0Ch]
		push	eax
		call	sub_406AA6
		test	eax, eax
		jnz	loc_406066
		mov	eax, [ebp+var_10]
		test	eax, eax
		jnz	short loc_4065E3
		cmp	edi, 101h
		jg	loc_406066

loc_4065E3:				; CODE XREF: sub_405FAF+626j
		mov	cl, byte ptr [ebp+var_4]
		and	dword ptr [esi], 0
		mov	[esi+11h], al
		mov	eax, [ebp+var_18]
		mov	[esi+14h], eax
		mov	eax, [ebp+var_1C]
		mov	[esi+10h], cl
		mov	[esi+18h], eax

loc_4065FB:				; CODE XREF: sub_405FAF:loc_406000j
					; DATA XREF: .text:off_4069FEo
		movzx	eax, byte ptr [esi+10h]
		mov	[esi+0Ch], eax
		mov	eax, [esi+14h]
		mov	[esi+8], eax
		mov	dword ptr [esi], 1

loc_40660E:				; CODE XREF: sub_405FAF:loc_406000j
					; DATA XREF: .text:00406A02o
		mov	eax, [esi+0Ch]
		jmp	short loc_406633
; ---------------------------------------------------------------------------

loc_406613:				; CODE XREF: sub_405FAF+686j
		cmp	[ebp+var_34], 0
		jz	loc_4069D3
		mov	ecx, [ebp+var_38]
		dec	[ebp+var_34]
		movzx	edx, byte ptr [ecx]
		mov	ecx, ebx
		shl	edx, cl
		or	[ebp+var_40], edx
		inc	[ebp+var_38]
		add	ebx, 8

loc_406633:				; CODE XREF: sub_405FAF+662j
		cmp	ebx, eax
		jb	short loc_406613
		movzx	eax, word_4093B0[eax*2]
		and	eax, [ebp+var_40]
		mov	ecx, [esi+8]
		lea	eax, [ecx+eax*4]
		movzx	ecx, byte ptr [eax+1]
		shr	[ebp+var_40], cl
		sub	ebx, ecx
		movzx	ecx, byte ptr [eax]
		test	ecx, ecx
		jnz	short loc_40666A
		movzx	eax, word ptr [eax+2]
		mov	[esi+8], eax
		mov	dword ptr [esi], 6
		jmp	loc_4069C3
; ---------------------------------------------------------------------------

loc_40666A:				; CODE XREF: sub_405FAF+6A7j
		test	cl, 10h
		jz	short loc_406687
		and	ecx, 0Fh
		mov	[esi+8], ecx
		movzx	eax, word ptr [eax+2]
		mov	[esi+4], eax
		mov	dword ptr [esi], 2
		jmp	loc_4069C3
; ---------------------------------------------------------------------------

loc_406687:				; CODE XREF: sub_405FAF+6BEj
		test	cl, 40h
		jz	loc_406761
		test	cl, 20h
		jz	loc_406066
		mov	dword ptr [esi], 7
		jmp	loc_4069C3
; ---------------------------------------------------------------------------

loc_4066A4:				; CODE XREF: sub_405FAF:loc_406000j
					; DATA XREF: .text:00406A06o
		mov	eax, [esi+8]
		jmp	short loc_4066C9
; ---------------------------------------------------------------------------

loc_4066A9:				; CODE XREF: sub_405FAF+71Cj
		cmp	[ebp+var_34], 0
		jz	loc_4069D3
		mov	ecx, [ebp+var_38]
		dec	[ebp+var_34]
		movzx	edx, byte ptr [ecx]
		mov	ecx, ebx
		shl	edx, cl
		or	[ebp+var_40], edx
		inc	[ebp+var_38]
		add	ebx, 8

loc_4066C9:				; CODE XREF: sub_405FAF+6F8j
		cmp	ebx, eax
		jb	short loc_4066A9
		movzx	ecx, word_4093B0[eax*2]
		and	ecx, [ebp+var_40]
		add	[esi+4], ecx
		mov	ecx, eax
		shr	[ebp+var_40], cl
		sub	ebx, eax
		movzx	eax, byte ptr [esi+11h]
		mov	[esi+0Ch], eax
		mov	eax, [esi+18h]
		mov	[esi+8], eax
		mov	dword ptr [esi], 3

loc_4066F5:				; CODE XREF: sub_405FAF:loc_406000j
					; DATA XREF: .text:00406A0Ao
		mov	eax, [esi+0Ch]
		jmp	short loc_40671A
; ---------------------------------------------------------------------------

loc_4066FA:				; CODE XREF: sub_405FAF+76Dj
		cmp	[ebp+var_34], 0
		jz	loc_4069D3
		mov	ecx, [ebp+var_38]
		dec	[ebp+var_34]
		movzx	edx, byte ptr [ecx]
		mov	ecx, ebx
		shl	edx, cl
		or	[ebp+var_40], edx
		inc	[ebp+var_38]
		add	ebx, 8

loc_40671A:				; CODE XREF: sub_405FAF+749j
		cmp	ebx, eax
		jb	short loc_4066FA
		movzx	eax, word_4093B0[eax*2]
		and	eax, [ebp+var_40]
		mov	ecx, [esi+8]
		lea	eax, [ecx+eax*4]
		movzx	ecx, byte ptr [eax+1]
		shr	[ebp+var_40], cl
		sub	ebx, ecx
		movzx	ecx, byte ptr [eax]
		test	cl, 10h
		jz	short loc_406758
		and	ecx, 0Fh
		mov	[esi+8], ecx
		movzx	eax, word ptr [eax+2]
		mov	[esi+0Ch], eax
		mov	dword ptr [esi], 4
		jmp	loc_4069C3
; ---------------------------------------------------------------------------

loc_406758:				; CODE XREF: sub_405FAF+78Fj
		test	cl, 40h
		jnz	loc_406066

loc_406761:				; CODE XREF: sub_405FAF+6DBj
		mov	[esi+0Ch], ecx
		movzx	ecx, word ptr [eax+2]
		lea	eax, [eax+ecx*4]
		mov	[esi+8], eax
		jmp	loc_4069C3
; ---------------------------------------------------------------------------

loc_406773:				; CODE XREF: sub_405FAF:loc_406000j
					; DATA XREF: .text:00406A0Eo
		mov	eax, [esi+8]
		jmp	short loc_406798
; ---------------------------------------------------------------------------

loc_406778:				; CODE XREF: sub_405FAF+7EBj
		cmp	[ebp+var_34], 0
		jz	loc_4069D3
		mov	ecx, [ebp+var_38]
		dec	[ebp+var_34]
		movzx	edx, byte ptr [ecx]
		mov	ecx, ebx
		shl	edx, cl
		or	[ebp+var_40], edx
		inc	[ebp+var_38]
		add	ebx, 8

loc_406798:				; CODE XREF: sub_405FAF+7C7j
		cmp	ebx, eax
		jb	short loc_406778
		movzx	ecx, word_4093B0[eax*2]
		and	ecx, [ebp+var_40]
		add	[esi+0Ch], ecx
		mov	ecx, eax
		shr	[ebp+var_40], cl
		sub	ebx, eax
		mov	dword ptr [esi], 5

loc_4067B7:				; CODE XREF: sub_405FAF:loc_406000j
					; DATA XREF: .text:00406A12o
		mov	eax, [ebp+var_30]
		mov	edx, [esi+0Ch]
		mov	ecx, eax
		sub	ecx, esi
		sub	ecx, 1BA0h
		cmp	ecx, edx
		jnb	short loc_4067DE
		mov	ecx, [esi+9BA0h]
		sub	ecx, edx
		sub	ecx, esi
		lea	ecx, [ecx+eax-1BA0h]
		jmp	short loc_4067E2
; ---------------------------------------------------------------------------

loc_4067DE:				; CODE XREF: sub_405FAF+81Aj
		mov	ecx, eax
		sub	ecx, edx

loc_4067E2:				; CODE XREF: sub_405FAF+82Dj
		cmp	dword ptr [esi+4], 0
		mov	[ebp+var_20], ecx
		jz	loc_40617F
		mov	edi, [ebp+var_2C]

loc_4067F2:				; CODE XREF: sub_405FAF+903j
		test	edi, edi
		jnz	loc_40688B
		mov	edi, [esi+9BA0h]
		cmp	eax, edi
		jnz	short loc_406827
		mov	ecx, [esi+9BA4h]
		lea	edx, [esi+1BA0h]
		cmp	ecx, edx
		jz	short loc_406827
		mov	eax, edx
		cmp	eax, ecx
		jnb	short loc_406821
		sub	ecx, eax
		dec	ecx
		mov	edi, ecx
		jmp	short loc_406823
; ---------------------------------------------------------------------------

loc_406821:				; CODE XREF: sub_405FAF+869j
		sub	edi, eax

loc_406823:				; CODE XREF: sub_405FAF+870j
		test	edi, edi
		jnz	short loc_40688B

loc_406827:				; CODE XREF: sub_405FAF+853j
					; sub_405FAF+863j
		push	[ebp+arg_0]
		mov	[esi+9BA8h], eax
		call	sub_406A3E
		mov	eax, [esi+9BA8h]
		mov	ecx, [esi+9BA4h]
		cmp	eax, ecx
		mov	[ebp+var_30], eax
		jnb	short loc_40684F
		mov	edi, ecx
		sub	edi, eax
		dec	edi
		jmp	short loc_406857
; ---------------------------------------------------------------------------

loc_40684F:				; CODE XREF: sub_405FAF+897j
		mov	edi, [esi+9BA0h]
		sub	edi, eax

loc_406857:				; CODE XREF: sub_405FAF+89Ej
		mov	edx, [esi+9BA0h]
		cmp	eax, edx
		mov	[ebp+var_8], edx
		jnz	short loc_406883
		lea	edx, [esi+1BA0h]
		cmp	ecx, edx
		jz	short loc_406883
		mov	eax, edx
		cmp	eax, ecx
		mov	[ebp+var_30], eax
		jnb	short loc_40687E
		sub	ecx, eax
		dec	ecx
		mov	edi, ecx
		jmp	short loc_406883
; ---------------------------------------------------------------------------

loc_40687E:				; CODE XREF: sub_405FAF+8C6j
		mov	edi, [ebp+var_8]
		sub	edi, eax

loc_406883:				; CODE XREF: sub_405FAF+8B3j
					; sub_405FAF+8BDj ...
		test	edi, edi
		jz	loc_4069EF

loc_40688B:				; CODE XREF: sub_405FAF+845j
					; sub_405FAF+876j
		mov	ecx, [ebp+var_20]
		mov	dl, [ecx]
		mov	[eax], dl
		inc	eax
		inc	ecx
		dec	edi
		cmp	ecx, [esi+9BA0h]
		mov	[ebp+var_30], eax
		mov	[ebp+var_20], ecx
		mov	[ebp+var_2C], edi
		jnz	short loc_4068AF
		lea	ecx, [esi+1BA0h]
		mov	[ebp+var_20], ecx

loc_4068AF:				; CODE XREF: sub_405FAF+8F5j
		dec	dword ptr [esi+4]
		jnz	loc_4067F2
		jmp	loc_40617F
; ---------------------------------------------------------------------------

loc_4068BD:				; CODE XREF: sub_405FAF:loc_406000j
					; DATA XREF: .text:00406A16o
		mov	eax, [ebp+var_2C]
		mov	edi, [ebp+var_30]
		test	eax, eax
		jnz	loc_40695C
		mov	ecx, [esi+9BA0h]
		cmp	edi, ecx
		jnz	short loc_4068F8
		mov	eax, [esi+9BA4h]
		lea	edx, [esi+1BA0h]
		cmp	eax, edx
		jz	short loc_4068F8
		mov	edi, edx
		cmp	edi, eax
		jnb	short loc_4068F0
		sub	eax, edi
		dec	eax
		jmp	short loc_4068F4
; ---------------------------------------------------------------------------

loc_4068F0:				; CODE XREF: sub_405FAF+93Aj
		sub	ecx, edi
		mov	eax, ecx

loc_4068F4:				; CODE XREF: sub_405FAF+93Fj
		test	eax, eax
		jnz	short loc_40695C

loc_4068F8:				; CODE XREF: sub_405FAF+924j
					; sub_405FAF+934j
		push	[ebp+arg_0]
		mov	[esi+9BA8h], edi
		call	sub_406A3E
		mov	edi, [esi+9BA8h]
		mov	ecx, [esi+9BA4h]
		cmp	edi, ecx
		mov	[ebp+var_30], edi
		jnb	short loc_406920
		mov	eax, ecx
		sub	eax, edi
		dec	eax
		jmp	short loc_406928
; ---------------------------------------------------------------------------

loc_406920:				; CODE XREF: sub_405FAF+968j
		mov	eax, [esi+9BA0h]
		sub	eax, edi

loc_406928:				; CODE XREF: sub_405FAF+96Fj
		mov	edx, [esi+9BA0h]
		cmp	edi, edx
		mov	[ebp+var_8], edx
		jnz	short loc_406954
		lea	edx, [esi+1BA0h]
		cmp	ecx, edx
		jz	short loc_406954
		mov	edi, edx
		cmp	edi, ecx
		mov	[ebp+var_30], edi
		jnb	short loc_40694F
		sub	ecx, edi
		dec	ecx
		mov	eax, ecx
		jmp	short loc_406954
; ---------------------------------------------------------------------------

loc_40694F:				; CODE XREF: sub_405FAF+997j
		mov	eax, [ebp+var_8]
		sub	eax, edi

loc_406954:				; CODE XREF: sub_405FAF+984j
					; sub_405FAF+98Ej ...
		test	eax, eax
		jz	loc_4069EF

loc_40695C:				; CODE XREF: sub_405FAF+916j
					; sub_405FAF+947j
		mov	cl, [esi+8]
		mov	[edi], cl
		inc	edi
		dec	eax
		mov	[ebp+var_30], edi
		mov	[ebp+var_2C], eax
		jmp	loc_40617F
; ---------------------------------------------------------------------------

loc_40696E:				; CODE XREF: sub_405FAF:loc_406000j
					; DATA XREF: .text:00406A1Ao
		cmp	ebx, 7
		jbe	short loc_40697C
		sub	ebx, 8
		inc	[ebp+var_34]
		dec	[ebp+var_38]

loc_40697C:				; CODE XREF: sub_405FAF:loc_406000j
					; sub_405FAF+9C2j
					; DATA XREF: ...
		mov	eax, [ebp+var_30]
		push	[ebp+arg_0]
		mov	[esi+9BA8h], eax
		call	sub_406A3E
		mov	ecx, [esi+9BA8h]
		mov	edx, [esi+9BA4h]
		cmp	ecx, edx
		mov	[ebp+var_30], ecx
		jnb	short loc_4069A7
		mov	eax, edx
		sub	eax, ecx
		dec	eax
		jmp	short loc_4069AF
; ---------------------------------------------------------------------------

loc_4069A7:				; CODE XREF: sub_405FAF+9EFj
		mov	eax, [esi+9BA0h]
		sub	eax, ecx

loc_4069AF:				; CODE XREF: sub_405FAF+9F6j
		cmp	ecx, edx
		mov	[ebp+var_2C], eax
		jnz	short loc_4069EF
		mov	eax, [esi+514h]
		cmp	eax, 8
		mov	[esi], eax
		jnz	short loc_4069F6

loc_4069C3:				; CODE XREF: sub_405FAF+4Cj
					; sub_405FAF+B1j ...
		mov	eax, [esi]
		cmp	eax, 0Fh
		jbe	loc_406000
		jmp	loc_406066
; ---------------------------------------------------------------------------

loc_4069D3:				; CODE XREF: sub_405FAF+5Cj
					; sub_405FAF+1F1j ...
		mov	eax, [ebp+var_40]
		xor	edi, edi
		mov	[esi+51Ch], eax
		mov	eax, [ebp+arg_0]
		mov	[esi+518h], ebx
		mov	[eax+4], edi
		jmp	loc_406087
; ---------------------------------------------------------------------------

loc_4069EF:				; CODE XREF: sub_405FAF+2D9j
					; sub_405FAF+8D6j ...
		xor	edi, edi
		jmp	loc_40606F
; ---------------------------------------------------------------------------

loc_4069F6:				; CODE XREF: sub_405FAF+A12j
		xor	edi, edi
		inc	edi
		jmp	loc_40606F
sub_405FAF	endp

; ---------------------------------------------------------------------------
off_4069FE	dd offset loc_4065FB	; DATA XREF: sub_405FAF:loc_406000r
		dd offset loc_40660E
		dd offset loc_4066A4
		dd offset loc_4066F5
		dd offset loc_406773
		dd offset loc_4067B7
		dd offset loc_4068BD
		dd offset loc_40696E
		dd offset loc_406027
		dd offset loc_4061BC
		dd offset loc_4061E1
		dd offset loc_4062EF
		dd offset loc_40632E
		dd offset loc_406511
		dd offset loc_406066
		dd offset loc_40697C

; =============== S U B	R O U T	I N E =======================================


sub_406A3E	proc near		; CODE XREF: sub_405FAF+EAp
					; sub_405FAF+286p ...

arg_0		= dword	ptr  4

		push	ebx
		push	esi
		mov	esi, [esp+8+arg_0]
		push	edi
		mov	edi, [esi+9BB4h]

loc_406A4B:				; CODE XREF: sub_406A3E+52j
					; sub_406A3E+5Aj
		mov	ebx, [esi+9BB8h]
		cmp	edi, ebx
		jbe	short loc_406A5B
		mov	ebx, [esi+9BB0h]

loc_406A5B:				; CODE XREF: sub_406A3E+15j
		mov	eax, [esi+0Ch]
		sub	ebx, edi
		cmp	ebx, eax
		jb	short loc_406A66
		mov	ebx, eax

loc_406A66:				; CODE XREF: sub_406A3E+24j
		push	ebx
		push	edi
		push	dword ptr [esi+8]
		sub	eax, ebx
		mov	[esi+0Ch], eax
		call	sub_4057F0
		add	[esi+8], ebx
		mov	eax, [esi+9BB0h]
		add	edi, ebx
		cmp	edi, eax
		jnz	short loc_406A9A
		cmp	[esi+9BB8h], eax
		lea	edi, [esi+1BB0h]
		jnz	short loc_406A4B
		mov	[esi+9BB8h], edi
		jmp	short loc_406A4B
; ---------------------------------------------------------------------------

loc_406A9A:				; CODE XREF: sub_406A3E+44j
		mov	[esi+9BB4h], edi
		pop	edi
		pop	esi
		pop	ebx
		retn	4
sub_406A3E	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_406AA6	proc near		; CODE XREF: sub_405FAF+172p
					; sub_405FAF+1A5p ...

var_EC		= dword	ptr -0ECh
var_B0		= dword	ptr -0B0h
var_AC		= dword	ptr -0ACh
var_70		= dword	ptr -70h
var_6C		= dword	ptr -6Ch
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
var_4		= dword	ptr -4
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h
arg_C		= dword	ptr  14h
arg_10		= dword	ptr  18h
arg_14		= dword	ptr  1Ch
arg_18		= dword	ptr  20h
arg_1C		= dword	ptr  24h
arg_20		= dword	ptr  28h

		push	ebp
		mov	ebp, esp
		sub	esp, 0ECh
		push	ebx
		push	esi
		mov	esi, [ebp+arg_4]
		push	edi
		push	10h
		xor	eax, eax
		pop	ecx
		lea	edi, [ebp+var_70]
		rep stosd
		mov	ecx, [ebp+arg_0]
		mov	edx, esi

loc_406AC4:				; CODE XREF: sub_406AA6+2Aj
		mov	eax, [ecx]
		add	ecx, 4
		lea	eax, [ebp+eax*4+var_70]
		inc	dword ptr [eax]
		dec	edx
		jnz	short loc_406AC4
		cmp	[ebp+var_70], esi
		jnz	short loc_406AEA
		mov	eax, [ebp+arg_14]
		and	dword ptr [eax], 0
		mov	eax, [ebp+arg_18]
		and	dword ptr [eax], 0
		xor	eax, eax
		jmp	loc_406DDA
; ---------------------------------------------------------------------------

loc_406AEA:				; CODE XREF: sub_406AA6+2Fj
		mov	esi, [ebp+arg_18]
		xor	ebx, ebx
		inc	ebx
		push	0Fh
		mov	edi, [esi]
		mov	ecx, ebx
		mov	[ebp+arg_18], edi
		pop	edx

loc_406AFA:				; CODE XREF: sub_406AA6+5Fj
		xor	eax, eax
		cmp	[ebp+ecx*4+var_70], eax
		jnz	short loc_406B07
		inc	ecx
		cmp	ecx, edx
		jbe	short loc_406AFA

loc_406B07:				; CODE XREF: sub_406AA6+5Aj
		cmp	edi, ecx
		mov	[ebp+var_4], ecx
		jnb	short loc_406B11
		mov	[ebp+arg_18], ecx

loc_406B11:				; CODE XREF: sub_406AA6+66j
					; sub_406AA6+72j
		cmp	[ebp+edx*4+var_70], eax
		jnz	short loc_406B1A
		dec	edx
		jnz	short loc_406B11

loc_406B1A:				; CODE XREF: sub_406AA6+6Fj
		cmp	[ebp+arg_18], edx
		mov	[ebp+var_18], edx
		jbe	short loc_406B25
		mov	[ebp+arg_18], edx

loc_406B25:				; CODE XREF: sub_406AA6+7Aj
		mov	edi, [ebp+arg_18]
		mov	[esi], edi
		shl	ebx, cl
		jmp	short loc_406B3B
; ---------------------------------------------------------------------------

loc_406B2E:				; CODE XREF: sub_406AA6+97j
		sub	ebx, [ebp+ecx*4+var_70]
		js	loc_406DD7
		inc	ecx
		add	ebx, ebx

loc_406B3B:				; CODE XREF: sub_406AA6+86j
		cmp	ecx, edx
		jb	short loc_406B2E
		mov	esi, edx
		shl	esi, 2
		lea	ecx, [ebp+esi+var_70]
		mov	edi, [ecx]
		sub	ebx, edi
		mov	[ebp+var_30], ebx
		js	loc_406DD7
		add	edi, ebx
		mov	[ebp+var_AC], eax
		mov	[ecx], edi
		xor	ecx, ecx
		dec	edx
		jz	short loc_406B77
		xor	edi, edi

loc_406B66:				; CODE XREF: sub_406AA6+CFj
		add	ecx, [ebp+edi+var_6C]
		add	edi, 4
		dec	edx
		mov	[ebp+edi+var_AC], ecx
		jnz	short loc_406B66

loc_406B77:				; CODE XREF: sub_406AA6+BCj
		mov	ebx, [ebp+arg_0]
		xor	edi, edi

loc_406B7C:				; CODE XREF: sub_406AA6+F6j
		mov	ecx, [ebx]
		add	ebx, 4
		cmp	ecx, eax
		jz	short loc_406B98
		lea	ecx, [ebp+ecx*4+var_B0]
		mov	edx, [ecx]
		mov	dword_42C658[edx*4], edi
		inc	edx
		mov	[ecx], edx

loc_406B98:				; CODE XREF: sub_406AA6+DDj
		inc	edi
		cmp	edi, [ebp+arg_4]
		jb	short loc_406B7C
		mov	ecx, [ebp+esi+var_B0]
		mov	ebx, [ebp+arg_18]
		or	[ebp+var_C], 0FFFFFFFFh
		and	[ebp+var_24], 0
		mov	[ebp+arg_4], ecx
		mov	ecx, [ebp+var_4]
		neg	ebx
		cmp	ecx, [ebp+var_18]
		mov	[ebp+var_8], eax
		mov	[ebp+var_B0], eax
		mov	[ebp+var_20], offset dword_42C658
		mov	[ebp+var_EC], eax
		jg	loc_406DCA
		lea	edx, [ecx-1]
		lea	ecx, [ebp+ecx*4+var_70]
		mov	[ebp+var_28], edx
		mov	[ebp+var_1C], ecx

loc_406BE4:				; CODE XREF: sub_406AA6+31Ej
		mov	ecx, [ebp+var_1C]
		mov	esi, [ecx]
		test	esi, esi
		jz	loc_406DB4
		jmp	short loc_406BF6
; ---------------------------------------------------------------------------

loc_406BF3:				; CODE XREF: sub_406AA6+308j
		mov	esi, [ebp+var_2C]

loc_406BF6:				; CODE XREF: sub_406AA6+14Bj
		mov	ecx, [ebp+arg_18]
		dec	esi
		add	ecx, ebx
		mov	[ebp+var_2C], esi
		cmp	[ebp+var_4], ecx
		mov	[ebp+var_14], ecx
		jle	loc_406CD7
		inc	esi
		mov	[ebp+var_10], esi

loc_406C0F:				; CODE XREF: sub_406AA6+22Bj
		mov	esi, [ebp+var_18]
		inc	[ebp+var_C]
		sub	esi, [ebp+var_14]
		cmp	esi, [ebp+arg_18]
		jbe	short loc_406C20
		mov	esi, [ebp+arg_18]

loc_406C20:				; CODE XREF: sub_406AA6+175j
		mov	ecx, [ebp+var_4]
		xor	edx, edx
		sub	ecx, [ebp+var_14]
		inc	edx
		shl	edx, cl
		cmp	edx, [ebp+var_10]
		jbe	short loc_406C53
		mov	edi, [ebp+var_1C]
		or	eax, 0FFFFFFFFh
		sub	eax, [ebp+var_2C]
		add	edx, eax
		cmp	ecx, esi
		jnb	short loc_406C53
		jmp	short loc_406C4E
; ---------------------------------------------------------------------------

loc_406C41:				; CODE XREF: sub_406AA6+1ABj
		add	edi, 4
		add	edx, edx
		mov	eax, [edi]
		cmp	edx, eax
		jbe	short loc_406C53
		sub	edx, eax

loc_406C4E:				; CODE XREF: sub_406AA6+199j
		inc	ecx
		cmp	ecx, esi
		jb	short loc_406C41

loc_406C53:				; CODE XREF: sub_406AA6+188j
					; sub_406AA6+197j ...
		mov	edx, [ebp+arg_20]
		xor	eax, eax
		inc	eax
		mov	edx, [edx]
		shl	eax, cl
		mov	[ebp+var_24], eax
		lea	edi, [edx+eax]
		cmp	edi, 5A0h
		ja	loc_406DD7
		mov	eax, [ebp+arg_1C]
		lea	eax, [eax+edx*4]
		mov	edx, [ebp+var_C]
		lea	esi, [ebp+edx*4+var_EC]
		mov	edx, [ebp+arg_20]
		mov	[edx], edi
		mov	edx, [ebp+var_C]
		test	edx, edx
		mov	[esi], eax
		jz	short loc_406CBE
		mov	edi, [ebp+var_8]
		mov	esi, [esi-4]
		mov	[ebp+edx*4+var_B0], edi
		mov	dl, byte ptr [ebp+arg_18]
		mov	byte ptr [ebp+arg_0+1],	dl
		mov	byte ptr [ebp+arg_0], cl
		mov	edx, edi
		mov	ecx, ebx
		shr	edx, cl
		mov	ecx, eax
		sub	ecx, esi
		sar	ecx, 2
		sub	ecx, edx
		mov	word ptr [ebp+arg_0+2],	cx
		mov	ecx, [ebp+arg_0]
		mov	[esi+edx*4], ecx
		jmp	short loc_406CC3
; ---------------------------------------------------------------------------

loc_406CBE:				; CODE XREF: sub_406AA6+1E5j
		mov	ecx, [ebp+arg_14]
		mov	[ecx], eax

loc_406CC3:				; CODE XREF: sub_406AA6+216j
		mov	ecx, [ebp+var_14]
		mov	ebx, ecx
		add	ecx, [ebp+arg_18]
		cmp	[ebp+var_4], ecx
		mov	[ebp+var_14], ecx
		jg	loc_406C0F

loc_406CD7:				; CODE XREF: sub_406AA6+15Fj
		mov	cl, byte ptr [ebp+var_4]
		mov	esi, [ebp+var_20]
		sub	cl, bl
		mov	byte ptr [ebp+arg_0+1],	cl
		mov	ecx, [ebp+arg_4]
		lea	ecx, ds:42C658h[ecx*4]
		cmp	esi, ecx
		jb	short loc_406CF6
		mov	byte ptr [ebp+arg_0], 0C0h
		jmp	short loc_406D39
; ---------------------------------------------------------------------------

loc_406CF6:				; CODE XREF: sub_406AA6+248j
		mov	ecx, [esi]
		cmp	ecx, [ebp+arg_8]
		jnb	short loc_406D19
		cmp	ecx, 100h
		setb	cl
		dec	cl
		and	ecx, 60h
		mov	byte ptr [ebp+arg_0], cl
		mov	cx, [esi]
		add	esi, 4
		mov	[ebp+var_20], esi
		jmp	short loc_406D35
; ---------------------------------------------------------------------------

loc_406D19:				; CODE XREF: sub_406AA6+255j
		sub	ecx, [ebp+arg_8]
		mov	edx, [ebp+arg_10]
		add	ecx, ecx
		mov	dl, [ecx+edx]
		add	dl, 50h
		add	[ebp+var_20], 4
		mov	byte ptr [ebp+arg_0], dl
		mov	edx, [ebp+arg_C]
		mov	cx, [ecx+edx]

loc_406D35:				; CODE XREF: sub_406AA6+271j
		mov	word ptr [ebp+arg_0+2],	cx

loc_406D39:				; CODE XREF: sub_406AA6+24Ej
		mov	ecx, [ebp+var_4]
		mov	edx, [ebp+var_8]
		xor	edi, edi
		sub	ecx, ebx
		inc	edi
		mov	esi, edi
		shl	esi, cl
		mov	ecx, ebx
		shr	edx, cl
		jmp	short loc_406D56
; ---------------------------------------------------------------------------

loc_406D4E:				; CODE XREF: sub_406AA6+2B3j
		mov	ecx, [ebp+arg_0]
		mov	[eax+edx*4], ecx
		add	edx, esi

loc_406D56:				; CODE XREF: sub_406AA6+2A6j
		cmp	edx, [ebp+var_24]
		jb	short loc_406D4E
		mov	ecx, [ebp+var_28]
		mov	esi, [ebp+var_8]
		mov	edx, edi
		shl	edx, cl
		jmp	short loc_406D6B
; ---------------------------------------------------------------------------

loc_406D67:				; CODE XREF: sub_406AA6+2C7j
		xor	esi, edx
		shr	edx, 1

loc_406D6B:				; CODE XREF: sub_406AA6+2BFj
		test	esi, edx
		jnz	short loc_406D67
		mov	ecx, edi
		xor	esi, edx
		mov	[ebp+var_10], ecx
		mov	ecx, ebx
		mov	edx, edi
		mov	[ebp+var_8], esi
		shl	edx, cl
		dec	edx
		and	edx, esi
		mov	ecx, edx
		mov	edx, [ebp+var_C]
		cmp	ecx, [ebp+edx*4+var_B0]
		jz	short loc_406DAA

loc_406D90:				; CODE XREF: sub_406AA6+2FFj
		sub	ebx, [ebp+arg_18]
		mov	esi, edi
		dec	edx
		mov	ecx, ebx
		shl	esi, cl
		dec	esi
		and	esi, [ebp+var_8]
		cmp	esi, [ebp+edx*4+var_B0]
		jnz	short loc_406D90
		mov	[ebp+var_C], edx

loc_406DAA:				; CODE XREF: sub_406AA6+2E8j
		cmp	[ebp+var_2C], 0
		jnz	loc_406BF3

loc_406DB4:				; CODE XREF: sub_406AA6+145j
		inc	[ebp+var_4]
		add	[ebp+var_1C], 4
		mov	ecx, [ebp+var_4]
		inc	[ebp+var_28]
		cmp	ecx, [ebp+var_18]
		jle	loc_406BE4

loc_406DCA:				; CODE XREF: sub_406AA6+12Bj
		xor	eax, eax
		cmp	[ebp+var_30], eax
		jz	short loc_406DDA
		cmp	[ebp+var_18], 1
		jz	short loc_406DDA

loc_406DD7:				; CODE XREF: sub_406AA6+8Cj
					; sub_406AA6+A9j ...
		or	eax, 0FFFFFFFFh

loc_406DDA:				; CODE XREF: sub_406AA6+3Fj
					; sub_406AA6+329j ...
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn	24h
sub_406AA6	endp

; ---------------------------------------------------------------------------
		align 2
; [00000006 BYTES: COLLAPSED FUNCTION VerQueryValueA. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION GetFileVersionInfoA. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION GetFileVersionInfoSizeA. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 10h
		dd 80h dup(?)
_text		ends

; Section 2. (virtual address 00007000)
; Virtual size			: 000012DA (   4826.)
; Section size in file		: 00001400 (   5120.)
; Offset to raw	data for section: 00006200
; Flags	40000040: Data Readable
; Alignment	: default
;
; Imports from ADVAPI32.dll
;
; ===========================================================================

; Segment type:	Externs
; _idata
; LSTATUS __stdcall RegCloseKey(HKEY hKey)
		extrn RegCloseKey:dword	; CODE XREF: sub_401434+EB4p
					; sub_401434:loc_402490p ...
; LSTATUS __stdcall RegOpenKeyExA(HKEY hKey, LPCSTR lpSubKey, DWORD ulOptions, REGSAM samDesired, PHKEY	phkResult)
		extrn RegOpenKeyExA:dword ; CODE XREF: sub_402A3D+21p
					; sub_402B07+28p ...
; LSTATUS __stdcall RegDeleteKeyA(HKEY hKey, LPCSTR lpSubKey)
		extrn RegDeleteKeyA:dword ; CODE XREF: sub_402A3D+A9p
					; DATA XREF: sub_402A3D+A9r
; LSTATUS __stdcall RegDeleteValueA(HKEY hKey, LPCSTR lpValueName)
		extrn RegDeleteValueA:dword ; CODE XREF: sub_401434+EABp
					; DATA XREF: sub_401434+EABr
; LSTATUS __stdcall RegEnumValueA(HKEY hKey, DWORD dwIndex, LPSTR lpValueName, LPDWORD lpcchValueName, LPDWORD lpReserved, LPDWORD lpType, LPBYTE lpData, LPDWORD lpcbData)
		extrn RegEnumValueA:dword ; CODE XREF: sub_401434+1047p
					; DATA XREF: sub_401434+1047r
; LSTATUS __stdcall RegCreateKeyExA(HKEY hKey, LPCSTR lpSubKey,	DWORD Reserved,	LPSTR lpClass, DWORD dwOptions,	REGSAM samDesired, const LPSECURITY_ATTRIBUTES lpSecurityAttributes, PHKEY phkResult, LPDWORD lpdwDisposition)
		extrn RegCreateKeyExA:dword ; CODE XREF: sub_401434+F26p
					; DATA XREF: sub_401434+F26r
; LSTATUS __stdcall RegSetValueExA(HKEY	hKey, LPCSTR lpValueName, DWORD	Reserved, DWORD	dwType,	const BYTE *lpData, DWORD cbData)
		extrn RegSetValueExA:dword ; CODE XREF:	sub_401434+F7Fp
					; DATA XREF: sub_401434+F7Fr
; LSTATUS __stdcall RegQueryValueExA(HKEY hKey,	LPCSTR lpValueName, LPDWORD lpReserved,	LPDWORD	lpType,	LPBYTE lpData, LPDWORD lpcbData)
		extrn RegQueryValueExA:dword ; CODE XREF: sub_401434+FC4p
					; sub_405A8B+4Ap
					; DATA XREF: ...
; LSTATUS __stdcall RegEnumKeyA(HKEY hKey, DWORD dwIndex, LPSTR	lpName,	DWORD cchName)
		extrn RegEnumKeyA:dword	; CODE XREF: sub_401434+1034p
					; sub_402A3D+5Dp
					; DATA XREF: ...

;
; Imports from COMCTL32.dll
;
; HIMAGELIST __stdcall ImageList_Create(int cx,	int cy,	UINT flags, int	cInitial, int cGrow)
		extrn ImageList_Create:dword ; CODE XREF: sub_40480C+ADp
					; DATA XREF: sub_40480C+ADr ...
; int __stdcall	ImageList_AddMasked(HIMAGELIST himl, HBITMAP hbmImage, COLORREF	crMask)
		extrn ImageList_AddMasked:dword	; CODE XREF: sub_40480C+BFp
					; DATA XREF: sub_40480C+BFr
; BOOL __stdcall ImageList_Destroy(HIMAGELIST himl)
		extrn ImageList_Destroy:dword ;	CODE XREF: sub_40480C+41Fp
					; DATA XREF: sub_40480C+41Fr
; void __stdcall InitCommonControls()
		extrn InitCommonControls:dword ; CODE XREF: start+21p
					; DATA XREF: start+21r

;
; Imports from GDI32.dll
;
; HGDIOBJ __stdcall SelectObject(HDC hdc, HGDIOBJ h)
		extrn SelectObject:dword ; CODE	XREF: sub_401000+140p
					; sub_401000+160p
					; DATA XREF: ...
; int __stdcall	SetBkMode(HDC hdc, int mode)
		extrn SetBkMode:dword	; CODE XREF: sub_401000+126p
					; sub_403F06+51p
					; DATA XREF: ...
; HFONT	__stdcall CreateFontIndirectA(const LOGFONTA *lplf)
		extrn CreateFontIndirectA:dword	; CODE XREF: sub_401000+105p
					; sub_401434+96Dp
					; DATA XREF: ...
; COLORREF __stdcall SetTextColor(HDC hdc, COLORREF color)
		extrn SetTextColor:dword ; CODE	XREF: sub_401000+130p
					; sub_403F06+45p
					; DATA XREF: ...
; BOOL __stdcall DeleteObject(HGDIOBJ ho)
		extrn DeleteObject:dword ; CODE	XREF: sub_401000+EDp
					; sub_401000+165p ...
; int __stdcall	GetDeviceCaps(HDC hdc, int index)
		extrn GetDeviceCaps:dword ; CODE XREF: sub_401434+902p
					; DATA XREF: sub_401434+902r
; HBRUSH __stdcall CreateBrushIndirect(const LOGBRUSH *plbrush)
		extrn CreateBrushIndirect:dword	; CODE XREF: sub_401000+CFp
					; sub_403F06+98p
					; DATA XREF: ...
; COLORREF __stdcall SetBkColor(HDC hdc, COLORREF color)
		extrn SetBkColor:dword	; CODE XREF: sub_403F06+74p
					; DATA XREF: sub_403F06+74r

;
; Imports from KERNEL32.dll
;
; DWORD	__stdcall GetTickCount()
		extrn GetTickCount:dword ; CODE	XREF: sub_402BC5:loc_402BF6p
					; sub_402C29+11p ...
; DWORD	__stdcall GetFullPathNameA(LPCSTR lpFileName, DWORD nBufferLength, LPSTR lpBuffer, LPSTR *lpFilePart)
		extrn GetFullPathNameA:dword ; CODE XREF: sub_401434+280p
					; DATA XREF: sub_401434+280r
; BOOL __stdcall MoveFileA(LPCSTR lpExistingFileName, LPCSTR lpNewFileName)
		extrn MoveFileA:dword	; CODE XREF: sub_401434+237p
					; DATA XREF: sub_401434+237r
; BOOL __stdcall SetCurrentDirectoryA(LPCSTR lpPathName)
		extrn SetCurrentDirectoryA:dword ; CODE	XREF: sub_401434+1EEp
					; start+30Ap
					; DATA XREF: ...
; DWORD	__stdcall GetFileAttributesA(LPCSTR lpFileName)
		extrn GetFileAttributesA:dword ; CODE XREF: sub_401434+1BFp
					; sub_40363A+10Ep ...
; DWORD	__stdcall GetLastError()
		extrn GetLastError:dword ; CODE	XREF: sub_401434+1B1p
					; DATA XREF: sub_401434+1B1r
; BOOL __stdcall CreateDirectoryA(LPCSTR lpPathName, LPSECURITY_ATTRIBUTES lpSecurityAttributes)
		extrn CreateDirectoryA:dword ; CODE XREF: sub_401434+1A7p
					; sub_4030AE+21p ...
; BOOL __stdcall SetFileAttributesA(LPCSTR lpFileName, DWORD dwFileAttributes)
		extrn SetFileAttributesA:dword ; CODE XREF: sub_401434+16Cp
					; sub_40541C+3Bp ...
; DWORD	__stdcall SearchPathA(LPCSTR lpPath, LPCSTR lpFileName,	LPCSTR lpExtension, DWORD nBufferLength, LPSTR lpBuffer, LPSTR *lpFilePart)
		extrn SearchPathA:dword	; CODE XREF: sub_401434+2E5p
					; DATA XREF: sub_401434+2E5r
; DWORD	__stdcall GetShortPathNameA(LPCSTR lpszLongPath, LPSTR lpszShortPath, DWORD cchBuffer)
		extrn GetShortPathNameA:dword ;	CODE XREF: sub_401434+2C6p
					; sub_4058DC+3Dp ...
; DWORD	__stdcall GetFileSize(HANDLE hFile, LPDWORD lpFileSizeHigh)
		extrn GetFileSize:dword	; CODE XREF: sub_402C29+79p
					; sub_4058DC+B3p
					; DATA XREF: ...
; DWORD	__stdcall GetModuleFileNameA(HMODULE hModule, LPSTR lpFilename,	DWORD nSize)
		extrn GetModuleFileNameA:dword ; CODE XREF: sub_402C29+2Dp
					; DATA XREF: sub_402C29+2Dr
; HANDLE __stdcall GetCurrentProcess()
		extrn GetCurrentProcess:dword ;	CODE XREF: start+3FDp
					; DATA XREF: start+3FDr
; BOOL __stdcall CopyFileA(LPCSTR lpExistingFileName, LPCSTR lpNewFileName, BOOL bFailIfExists)
		extrn CopyFileA:dword	; CODE XREF: start+377p
					; DATA XREF: start+377r
; void __stdcall ExitProcess(UINT uExitCode)
		extrn ExitProcess:dword	; CODE XREF: start+2DFp start+478p
					; DATA XREF: ...
; BOOL __stdcall SetEnvironmentVariableA(LPCSTR	lpName,	LPCSTR lpValue)
		extrn SetEnvironmentVariableA:dword ; CODE XREF: start+1F5p
					; start+1FDp
					; DATA XREF: ...
; UINT __stdcall GetWindowsDirectoryA(LPSTR lpBuffer, UINT uSize)
		extrn GetWindowsDirectoryA:dword ; CODE	XREF: start+1BCp
					; sub_405BC6+13Fp
					; DATA XREF: ...
; DWORD	__stdcall GetTempPathA(DWORD nBufferLength, LPSTR lpBuffer)
		extrn GetTempPathA:dword ; CODE	XREF: start+1ABp start+1DCp
					; DATA XREF: ...
; void __stdcall Sleep(DWORD dwMilliseconds)
		extrn Sleep:dword	; CODE XREF: sub_401434+B1p
					; DATA XREF: sub_401434+B1r
; BOOL __stdcall CloseHandle(HANDLE hObject)
		extrn CloseHandle:dword	; CODE XREF: sub_401434+476p
					; sub_401434:loc_401EA1p ...
; HMODULE __stdcall LoadLibraryA(LPCSTR	lpLibFileName)
		extrn LoadLibraryA:dword ; CODE	XREF: sub_40363A+228p
					; sub_40363A+233p ...
; int __stdcall	lstrlenA(LPCSTR	lpString)
		extrn __imp_lstrlenA:dword ; CODE XREF:	sub_403FB3+1Ep
					; sub_40579A+10p ...
; LPSTR	__stdcall lstrcpynA(LPSTR lpString1, LPCSTR lpString2, int iMaxLength)
		extrn lstrcpynA:dword	; CODE XREF: sub_403FB3+15p
					; sub_405BA4+Dp
					; DATA XREF: ...
; BOOL __stdcall GetDiskFreeSpaceA(LPCSTR lpRootPathName, LPDWORD lpSectorsPerCluster, LPDWORD lpBytesPerSector, LPDWORD lpNumberOfFreeClusters, LPDWORD lpTotalNumberOfClusters)
		extrn GetDiskFreeSpaceA:dword ;	CODE XREF: sub_4042DD+240p
					; DATA XREF: sub_4042DD+240r
; BOOL __stdcall GlobalUnlock(HGLOBAL hMem)
		extrn GlobalUnlock:dword ; CODE	XREF: sub_404FCD+36Cp
					; DATA XREF: sub_404FCD+36Cr
; LPVOID __stdcall GlobalLock(HGLOBAL hMem)
		extrn GlobalLock:dword	; CODE XREF: sub_404FCD+33Fp
					; DATA XREF: sub_404FCD+33Fr
; HANDLE __stdcall CreateThread(LPSECURITY_ATTRIBUTES lpThreadAttributes, SIZE_T dwStackSize, LPTHREAD_START_ROUTINE lpStartAddress, LPVOID lpParameter, DWORD dwCreationFlags,	LPDWORD	lpThreadId)
		extrn CreateThread:dword ; CODE	XREF: sub_404FCD+1D0p
					; DATA XREF: sub_404FCD+1D0r
; BOOL __stdcall CreateProcessA(LPCSTR lpApplicationName, LPSTR	lpCommandLine, LPSECURITY_ATTRIBUTES lpProcessAttributes, LPSECURITY_ATTRIBUTES	lpThreadAttributes, BOOL bInheritHandles, DWORD	dwCreationFlags, LPVOID	lpEnvironment, LPCSTR lpCurrentDirectory, LPSTARTUPINFOA lpStartupInfo,	LPPROCESS_INFORMATION lpProcessInformation)
		extrn CreateProcessA:dword ; CODE XREF:	sub_405357+25p
					; DATA XREF: sub_405357+25r
; BOOL __stdcall RemoveDirectoryA(LPCSTR lpPathName)
		extrn RemoveDirectoryA:dword ; CODE XREF: sub_40541C+1Bp
					; DATA XREF: sub_40541C+1Br
; HANDLE __stdcall CreateFileA(LPCSTR lpFileName, DWORD	dwDesiredAccess, DWORD dwShareMode, LPSECURITY_ATTRIBUTES lpSecurityAttributes,	DWORD dwCreationDisposition, DWORD dwFlagsAndAttributes, HANDLE	hTemplateFile)
		extrn CreateFileA:dword	; CODE XREF: sub_405835+26p
					; DATA XREF: sub_405835+26r
; UINT __stdcall GetTempFileNameA(LPCSTR lpPathName, LPCSTR lpPrefixString, UINT uUnique, LPSTR	lpTempFileName)
		extrn GetTempFileNameA:dword ; CODE XREF: sub_405864+2Ep
					; DATA XREF: sub_405864+2Er
; BOOL __stdcall ReadFile(HANDLE hFile,	LPVOID lpBuffer, DWORD nNumberOfBytesToRead, LPDWORD lpNumberOfBytesRead, LPOVERLAPPED lpOverlapped)
		extrn ReadFile:dword	; CODE XREF: sub_4058AD+14p
					; DATA XREF: sub_4058AD+14r
; LPSTR	__stdcall lstrcpyA(LPSTR lpString1, LPCSTR lpString2)
		extrn lstrcpyA:dword	; CODE XREF: sub_4058DC+10p
					; sub_4058DC+FAp
					; DATA XREF: ...
; LPSTR	__stdcall lstrcatA(LPSTR lpString1, LPCSTR lpString2)
		extrn __imp_lstrcatA:dword ; DATA XREF:	lstrcatAr
; UINT __stdcall GetSystemDirectoryA(LPSTR lpBuffer, UINT uSize)
		extrn GetSystemDirectoryA:dword	; CODE XREF: sub_405BC6+12Cp
					; DATA XREF: sub_405BC6+12Cr
; DWORD	__stdcall GetVersion()
		extrn GetVersion:dword	; CODE XREF: sub_405BC6+B1p
					; DATA XREF: sub_405BC6+B1r
; FARPROC __stdcall GetProcAddress(HMODULE hModule, LPCSTR lpProcName)
		extrn __imp_GetProcAddress:dword ; CODE	XREF: sub_405ECF+2Ep
					; DATA XREF: sub_405ECF+2Er ...
; HGLOBAL __stdcall GlobalAlloc(UINT uFlags, SIZE_T dwBytes)
		extrn GlobalAlloc:dword	; CODE XREF: sub_401434+75Ep
					; sub_401434+AD5p ...
; LONG __stdcall CompareFileTime(const FILETIME	*lpFileTime1, const FILETIME *lpFileTime2)
		extrn CompareFileTime:dword ; CODE XREF: sub_401434+374p
					; DATA XREF: sub_401434+374r
; BOOL __stdcall SetFileTime(HANDLE hFile, const FILETIME *lpCreationTime, const FILETIME *lpLastAccessTime, const FILETIME *lpLastWriteTime)
		extrn SetFileTime:dword	; CODE XREF: sub_401434+46Dp
					; DATA XREF: sub_401434+46Dr
; DWORD	__stdcall ExpandEnvironmentStringsA(LPCSTR lpSrc, LPSTR	lpDst, DWORD nSize)
		extrn ExpandEnvironmentStringsA:dword ;	CODE XREF: sub_401434+5D0p
					; DATA XREF: sub_401434+5D0r
; int __stdcall	lstrcmpiA(LPCSTR lpString1, LPCSTR lpString2)
		extrn lstrcmpiA:dword	; CODE XREF: sub_401434+5A3p
					; start+2F7p ...
; int __stdcall	lstrcmpA(LPCSTR	lpString1, LPCSTR lpString2)
		extrn lstrcmpA:dword	; CODE XREF: sub_401434:loc_4019E9p
					; sub_401434+5E3p
					; DATA XREF: ...
; DWORD	__stdcall WaitForSingleObject(HANDLE hHandle, DWORD dwMilliseconds)
		extrn WaitForSingleObject:dword	; CODE XREF: sub_401434+A38p
					; DATA XREF: sub_401434+A24r
; HGLOBAL __stdcall GlobalFree(HGLOBAL hMem)
		extrn GlobalFree:dword	; CODE XREF: sub_401434:loc_401B80p
					; sub_401434+12F8p ...
; BOOL __stdcall GetExitCodeProcess(HANDLE hProcess, LPDWORD lpExitCode)
		extrn GetExitCodeProcess:dword ; CODE XREF: sub_401434+A48p
					; DATA XREF: sub_401434+A48r
; HMODULE __stdcall GetModuleHandleA(LPCSTR lpModuleName)
		extrn GetModuleHandleA:dword ; CODE XREF: sub_401434+B5Fp
					; start+83p ...
; UINT __stdcall SetErrorMode(UINT uMode)
		extrn SetErrorMode:dword ; CODE	XREF: start+2Cp
					; DATA XREF: start+2Cr
; LPSTR	__stdcall GetCommandLineA()
		extrn GetCommandLineA:dword ; CODE XREF: start+70p
					; DATA XREF: start+70r
; HMODULE __stdcall LoadLibraryExA(LPCSTR lpLibFileName, HANDLE	hFile, DWORD dwFlags)
		extrn LoadLibraryExA:dword ; CODE XREF:	sub_401434+B6Fp
					; DATA XREF: sub_401434+B6Fr
; HANDLE __stdcall FindFirstFileA(LPCSTR lpFileName, LPWIN32_FIND_DATAA	lpFindFileData)
		extrn FindFirstFileA:dword ; CODE XREF:	sub_401434+1220p
					; sub_405464+A9p ...
; BOOL __stdcall FindNextFileA(HANDLE hFindFile, LPWIN32_FIND_DATAA lpFindFileData)
		extrn FindNextFileA:dword ; CODE XREF: sub_401434+11F9p
					; sub_405464+156p
					; DATA XREF: ...
; BOOL __stdcall DeleteFileA(LPCSTR lpFileName)
		extrn DeleteFileA:dword	; CODE XREF: sub_401434+133Dp
					; start+211p ...
; DWORD	__stdcall SetFilePointer(HANDLE	hFile, LONG lDistanceToMove, PLONG lpDistanceToMoveHigh, DWORD dwMoveMethod)
		extrn SetFilePointer:dword ; CODE XREF:	sub_401434+1189p
					; sub_401434+11B9p ...
; BOOL __stdcall WriteFile(HANDLE hFile, LPCVOID lpBuffer, DWORD nNumberOfBytesToWrite,	LPDWORD	lpNumberOfBytesWritten,	LPOVERLAPPED lpOverlapped)
		extrn WriteFile:dword	; CODE XREF: sub_401434+10DAp
					; sub_401434+130Ap ...
; BOOL __stdcall FindClose(HANDLE hFindFile)
		extrn FindClose:dword	; CODE XREF: sub_401434+11DCp
					; sub_405464+167p ...
; BOOL __stdcall WritePrivateProfileStringA(LPCSTR lpAppName, LPCSTR lpKeyName,	LPCSTR lpString, LPCSTR	lpFileName)
		extrn WritePrivateProfileStringA:dword ; CODE XREF: sub_401434+E40p
					; DATA XREF: sub_401434+E40r
; int __stdcall	MultiByteToWideChar(UINT CodePage, DWORD dwFlags, LPCSTR lpMultiByteStr, int cbMultiByte, LPWSTR lpWideCharStr,	int cchWideChar)
		extrn MultiByteToWideChar:dword	; CODE XREF: sub_401434+D0Fp
					; DATA XREF: sub_401434+D0Fr
; int __stdcall	MulDiv(int nNumber, int	nNumerator, int	nDenominator)
		extrn MulDiv:dword	; CODE XREF: sub_401389+5Bp
					; sub_401434+911p ...
; DWORD	__stdcall GetPrivateProfileStringA(LPCSTR lpAppName, LPCSTR lpKeyName, LPCSTR lpDefault, LPSTR lpReturnedString, DWORD nSize, LPCSTR lpFileName)
		extrn GetPrivateProfileStringA:dword ; CODE XREF: sub_401434+E7Ep
					; DATA XREF: sub_401434+E7Er
; BOOL __stdcall FreeLibrary(HMODULE hLibModule)
		extrn FreeLibrary:dword	; CODE XREF: sub_401434+BE9p
					; sub_4035A5+1Ap
					; DATA XREF: ...

;
; Imports from SHELL32.dll
;
; HRESULT __stdcall SHGetSpecialFolderLocation(HWND hwnd, int csidl, LPITEMIDLIST *ppidl)
		extrn SHGetSpecialFolderLocation:dword ; CODE XREF: sub_405BC6+17Bp
					; DATA XREF: sub_405BC6+17Br ...
; BOOL __stdcall SHGetPathFromIDListA(LPCITEMIDLIST pidl, LPSTR	pszPath)
		extrn SHGetPathFromIDListA:dword ; CODE	XREF: sub_404612+38p
					; sub_405BC6+189p
					; DATA XREF: ...
; LPITEMIDLIST __stdcall SHBrowseForFolderA(LPBROWSEINFOA lpbi)
		extrn SHBrowseForFolderA:dword ; CODE XREF: sub_4042DD+12Ap
					; DATA XREF: sub_4042DD+12Ar
; DWORD_PTR __stdcall SHGetFileInfoA(LPCSTR pszPath, DWORD dwFileAttributes, SHFILEINFOA *psfi,	UINT cbFileInfo, UINT uFlags)
		extrn SHGetFileInfoA:dword ; CODE XREF:	start+5Bp
					; DATA XREF: start+5Br
; HINSTANCE __stdcall ShellExecuteA(HWND hwnd, LPCSTR lpOperation, LPCSTR lpFile, LPCSTR lpParameters, LPCSTR lpDirectory, INT nShowCmd)
		extrn ShellExecuteA:dword ; CODE XREF: sub_401434+9EAp
					; sub_403FE8+20Ep
					; DATA XREF: ...
; int __stdcall	SHFileOperationA(LPSHFILEOPSTRUCTA lpFileOp)
		extrn SHFileOperationA:dword ; CODE XREF: sub_401434+DC8p
					; DATA XREF: sub_401434+DC8r

;
; Imports from USER32.dll
;
; HWND __stdcall CreateWindowExA(DWORD dwExStyle, LPCSTR lpClassName, LPCSTR lpWindowName, DWORD dwStyle, int X, int Y,	int nWidth, int	nHeight, HWND hWndParent, HMENU	hMenu, HINSTANCE hInstance, LPVOID lpParam)
		extrn CreateWindowExA:dword ; CODE XREF: sub_40363A+1E1p
					; DATA XREF: sub_40363A+1E1r ...
; BOOL __stdcall EndDialog(HWND	hDlg, INT_PTR nResult)
		extrn EndDialog:dword	; CODE XREF: sub_4039CC+477p
					; DATA XREF: sub_4039CC+477r
; BOOL __stdcall ScreenToClient(HWND hWnd, LPPOINT lpPoint)
		extrn ScreenToClient:dword ; CODE XREF:	sub_4039CC+414p
					; sub_40475A+3Dp
					; DATA XREF: ...
; BOOL __stdcall GetWindowRect(HWND hWnd, LPRECT lpRect)
		extrn GetWindowRect:dword ; CODE XREF: sub_4039CC+408p
					; sub_404FCD+2C1p
					; DATA XREF: ...
; BOOL __stdcall EnableMenuItem(HMENU hMenu, UINT uIDEnableItem, UINT uEnable)
		extrn EnableMenuItem:dword ; CODE XREF:	sub_4039CC+2F9p
					; DATA XREF: sub_4039CC+2F9r
; HMENU	__stdcall GetSystemMenu(HWND hWnd, BOOL	bRevert)
		extrn GetSystemMenu:dword ; CODE XREF: sub_4039CC+2F2p
					; DATA XREF: sub_4039CC+2F2r
; DWORD	__stdcall SetClassLongA(HWND hWnd, int nIndex, LONG dwNewLong)
		extrn SetClassLongA:dword ; CODE XREF: sub_4039CC+197p
					; DATA XREF: sub_4039CC+197r
; BOOL __stdcall IsWindowEnabled(HWND hWnd)
		extrn IsWindowEnabled:dword ; CODE XREF: sub_4039CC+C5p
					; DATA XREF: sub_4039CC+C5r
; BOOL __stdcall SetWindowPos(HWND hWnd, HWND hWndInsertAfter, int X, int Y, int cx, int cy, UINT uFlags)
		extrn SetWindowPos:dword ; CODE	XREF: sub_4039CC+3Cp
					; sub_4039CC+42Dp
					; DATA XREF: ...
; DWORD	__stdcall GetSysColor(int nIndex)
		extrn GetSysColor:dword	; CODE XREF: sub_403F06+39p
					; sub_403F06+64p ...
; LONG __stdcall GetWindowLongA(HWND hWnd, int nIndex)
		extrn GetWindowLongA:dword ; CODE XREF:	sub_403F06+1Dp
					; sub_40480C+230p
					; DATA XREF: ...
; HCURSOR __stdcall SetCursor(HCURSOR hCursor)
		extrn SetCursor:dword	; CODE XREF: sub_403FE8+1FBp
					; sub_403FE8+21Ep
					; DATA XREF: ...
; HCURSOR __stdcall LoadCursorA(HINSTANCE hInstance, LPCSTR lpCursorName)
		extrn LoadCursorA:dword	; CODE XREF: sub_403FE8+1F2p
					; sub_403FE8+21Bp
					; DATA XREF: ...
; BOOL __stdcall CheckDlgButton(HWND hDlg, int nIDButton, UINT uCheck)
		extrn CheckDlgButton:dword ; CODE XREF:	sub_403FE8+8Bp
					; DATA XREF: sub_403FE8+8Br
; DWORD	__stdcall GetMessagePos()
		extrn GetMessagePos:dword ; CODE XREF: sub_40475A+23p
					; DATA XREF: sub_40475A+23r
; HBITMAP __stdcall LoadBitmapA(HINSTANCE hInstance, LPCSTR lpBitmapName)
		extrn LoadBitmapA:dword	; CODE XREF: sub_40480C+80p
					; DATA XREF: sub_40480C+80r
; LRESULT __stdcall CallWindowProcA(WNDPROC lpPrevWndFunc, HWND	hWnd, UINT Msg,	WPARAM wParam, LPARAM lParam)
		extrn CallWindowProcA:dword ; CODE XREF: sub_404E03+80p
					; DATA XREF: sub_404E03+80r
; BOOL __stdcall IsWindowVisible(HWND hWnd)
		extrn IsWindowVisible:dword ; CODE XREF: sub_404E03+2Fp
					; DATA XREF: sub_404E03+2Fr
; BOOL __stdcall CloseClipboard()
		extrn CloseClipboard:dword ; CODE XREF:	sub_404FCD+37Dp
					; DATA XREF: sub_404FCD+37Dr
; HDC __stdcall	GetDC(HWND hWnd)
		extrn GetDC:dword	; CODE XREF: sub_401434+8F5p
					; DATA XREF: sub_401434+8F5r
; BOOL __stdcall SystemParametersInfoA(UINT uiAction, UINT uiParam, PVOID pvParam, UINT	fWinIni)
		extrn SystemParametersInfoA:dword ; CODE XREF: sub_40363A+1ACp
					; DATA XREF: sub_40363A+1ACr
; ATOM __stdcall RegisterClassA(const WNDCLASSA	*lpWndClass)
		extrn RegisterClassA:dword ; CODE XREF:	sub_40363A+194p
					; sub_40363A+259p
					; DATA XREF: ...
; BOOL __stdcall TrackPopupMenu(HMENU hMenu, UINT uFlags, int x, int y,	int nReserved, HWND hWnd, const	RECT *prcRect)
		extrn TrackPopupMenu:dword ; CODE XREF:	sub_404FCD+2DAp
					; DATA XREF: sub_404FCD+2DAr
; BOOL __stdcall AppendMenuA(HMENU hMenu, UINT uFlags, UINT_PTR	uIDNewItem, LPCSTR lpNewItem)
		extrn AppendMenuA:dword	; CODE XREF: sub_404FCD+2A1p
					; DATA XREF: sub_404FCD+2A1r
; HMENU	__stdcall CreatePopupMenu()
		extrn CreatePopupMenu:dword ; CODE XREF: sub_404FCD+28Cp
					; DATA XREF: sub_404FCD+28Cr
; int __stdcall	GetSystemMetrics(int nIndex)
		extrn GetSystemMetrics:dword ; CODE XREF: sub_404FCD+B4p
					; DATA XREF: sub_404FCD+B4r
; BOOL __stdcall SetDlgItemTextA(HWND hDlg, int	nIDDlgItem, LPCSTR lpString)
		extrn __imp_SetDlgItemTextA:dword ; DATA XREF: SetDlgItemTextAr
; UINT __stdcall GetDlgItemTextA(HWND hDlg, int	nIDDlgItem, LPSTR lpString, int	cchMax)
		extrn GetDlgItemTextA:dword ; CODE XREF: sub_40539C+13p
					; DATA XREF: sub_40539C+13r
; int __stdcall	MessageBoxIndirectA(const MSGBOXPARAMSA	*lpmbp)
		extrn MessageBoxIndirectA:dword	; CODE XREF: sub_4053B8+5Bp
					; DATA XREF: sub_4053B8+5Br
; LPSTR	__stdcall CharPrevA(LPCSTR lpszStart, LPCSTR lpszCurrent)
		extrn CharPrevA:dword	; CODE XREF: sub_405634+Fp
					; sub_40567B+14p ...
; LRESULT __stdcall DispatchMessageA(const MSG *lpMsg)
		extrn DispatchMessageA:dword ; CODE XREF: sub_405F08+17p
					; DATA XREF: sub_405F08+17r
; BOOL __stdcall PeekMessageA(LPMSG lpMsg, HWND	hWnd, UINT wMsgFilterMin, UINT wMsgFilterMax, UINT wRemoveMsg)
		extrn PeekMessageA:dword ; CODE	XREF: sub_405F08+27p
					; DATA XREF: sub_405F08+Br
; int __stdcall	ReleaseDC(HWND hWnd, HDC hDC)
		extrn ReleaseDC:dword	; CODE XREF: sub_401434+922p
					; DATA XREF: sub_401434+922r
; BOOL __stdcall EnableWindow(HWND hWnd, BOOL bEnable)
		extrn EnableWindow:dword ; CODE	XREF: sub_401434:loc_401DCDp
					; sub_4039CC+2C1p ...
; BOOL __stdcall InvalidateRect(HWND hWnd, const RECT *lpRect, BOOL bErase)
		extrn InvalidateRect:dword ; CODE XREF:	sub_401434+1458p
					; sub_40480C+580p
					; DATA XREF: ...
; LRESULT __stdcall SendMessageA(HWND hWnd, UINT Msg, WPARAM wParam, LPARAM lParam)
		extrn SendMessageA:dword ; CODE	XREF: sub_401389+6Bp
					; sub_401434+7FCp ...
; LRESULT __stdcall DefWindowProcA(HWND	hWnd, UINT Msg,	WPARAM wParam, LPARAM lParam)
		extrn DefWindowProcA:dword ; CODE XREF:	sub_401000+2Cp
					; DATA XREF: sub_401000+2Cr
; HDC __stdcall	BeginPaint(HWND	hWnd, LPPAINTSTRUCT lpPaint)
		extrn BeginPaint:dword	; CODE XREF: sub_401000+47p
					; DATA XREF: sub_401000+47r
; BOOL __stdcall GetClientRect(HWND hWnd, LPRECT lpRect)
		extrn GetClientRect:dword ; CODE XREF: sub_401000+5Bp
					; sub_401434+8A9p ...
; int __stdcall	FillRect(HDC hDC, const	RECT *lprc, HBRUSH hbr)
		extrn FillRect:dword	; CODE XREF: sub_401000+E4p
					; DATA XREF: sub_401000+E4r
; int __stdcall	DrawTextA(HDC hdc, LPCSTR lpchText, int	cchText, LPRECT	lprc, UINT format)
		extrn DrawTextA:dword	; CODE XREF: sub_401000+156p
					; DATA XREF: sub_401000+156r
; BOOL __stdcall GetClassInfoA(HINSTANCE hInstance, LPCSTR lpClassName,	LPWNDCLASSA lpWndClass)
		extrn GetClassInfoA:dword ; CODE XREF: sub_40363A+243p
					; sub_40363A+250p
					; DATA XREF: ...
; INT_PTR __stdcall DialogBoxParamA(HINSTANCE hInstance, LPCSTR	lpTemplateName,	HWND hWndParent, DLGPROC lpDialogFunc, LPARAM dwInitParam)
		extrn DialogBoxParamA:dword ; CODE XREF: sub_40363A+278p
					; DATA XREF: sub_40363A+278r
; LPSTR	__stdcall CharNextA(LPCSTR lpsz)
		extrn CharNextA:dword	; CODE XREF: start+AEp	sub_40565F+Dp ...
; BOOL __stdcall ExitWindowsEx(UINT uFlags, DWORD dwReason)
		extrn ExitWindowsEx:dword ; CODE XREF: start+455p
					; DATA XREF: start+455r
; BOOL __stdcall DestroyWindow(HWND hWnd)
		extrn DestroyWindow:dword ; CODE XREF: sub_402BC5+13p
					; sub_4039CC+6Dp ...
; HWND __stdcall CreateDialogParamA(HINSTANCE hInstance, LPCSTR	lpTemplateName,	HWND hWndParent, DLGPROC lpDialogFunc, LPARAM dwInitParam)
		extrn CreateDialogParamA:dword ; CODE XREF: sub_402BC5+4Ep
					; sub_4039CC+3D8p
					; DATA XREF: ...
; UINT_PTR __stdcall SetTimer(HWND hWnd, UINT_PTR nIDEvent, UINT uElapse, TIMERPROC lpTimerFunc)
		extrn SetTimer:dword	; CODE XREF: DialogFunc+1Bp
					; DATA XREF: DialogFunc+1Br
; HWND __stdcall GetDlgItem(HWND hDlg, int nIDDlgItem)
		extrn GetDlgItem:dword	; CODE XREF: sub_401434+871p
					; sub_401434+89Cp ...
; int wsprintfA(LPSTR, LPCSTR, ...)
		extrn wsprintfA:dword	; CODE XREF: sub_401434+6CFp
					; DialogFunc+56p ...
; BOOL __stdcall SetForegroundWindow(HWND hWnd)
		extrn SetForegroundWindow:dword	; CODE XREF: sub_401434+BFp
					; DATA XREF: sub_401434+BFr
; BOOL __stdcall ShowWindow(HWND hWnd, int nCmdShow)
		extrn ShowWindow:dword	; CODE XREF: sub_401434+145p
					; sub_401434+15Ap ...
; BOOL __stdcall IsWindow(HWND hWnd)
		extrn IsWindow:dword	; CODE XREF: sub_401434+84Bp
					; DATA XREF: sub_401434+84Br
; HANDLE __stdcall LoadImageA(HINSTANCE	hInst, LPCSTR name, UINT type, int cx, int cy, UINT fuLoad)
		extrn LoadImageA:dword	; CODE XREF: sub_401434+8CAp
					; sub_40363A+157p
					; DATA XREF: ...
; LONG __stdcall SetWindowLongA(HWND hWnd, int nIndex, LONG dwNewLong)
		extrn SetWindowLongA:dword ; CODE XREF:	sub_401434+88Dp
					; sub_4039CC+89p ...
; HANDLE __stdcall SetClipboardData(UINT uFormat, HANDLE hMem)
		extrn SetClipboardData:dword ; CODE XREF: sub_404FCD+377p
					; DATA XREF: sub_404FCD+377r
; BOOL __stdcall EmptyClipboard()
		extrn EmptyClipboard:dword ; CODE XREF:	sub_404FCD+32Cp
					; DATA XREF: sub_404FCD+32Cr
; BOOL __stdcall OpenClipboard(HWND hWndNewOwner)
		extrn OpenClipboard:dword ; CODE XREF: sub_404FCD+326p
					; DATA XREF: sub_404FCD+326r
; BOOL __stdcall EndPaint(HWND hWnd, const PAINTSTRUCT *lpPaint)
		extrn EndPaint:dword	; CODE XREF: sub_401000+16Ep
					; DATA XREF: sub_401000+16Er
; void __stdcall PostQuitMessage(int nExitCode)
		extrn PostQuitMessage:dword ; CODE XREF: sub_401434+78p
					; DATA XREF: sub_401434+78r
; HWND __stdcall FindWindowExA(HWND hWndParent,	HWND hWndChildAfter, LPCSTR lpszClass, LPCSTR lpszWindow)
		extrn FindWindowExA:dword ; CODE XREF: sub_401434+82Ap
					; DATA XREF: sub_401434+82Ar
; LRESULT __stdcall SendMessageTimeoutA(HWND hWnd, UINT	Msg, WPARAM wParam, LPARAM lParam, UINT	fuFlags, UINT uTimeout,	PDWORD_PTR lpdwResult)
		extrn SendMessageTimeoutA:dword	; CODE XREF: sub_401434+7E4p
					; DATA XREF: sub_401434+7E4r
; BOOL __stdcall SetWindowTextA(HWND hWnd, LPCSTR lpString)
		extrn SetWindowTextA:dword ; CODE XREF:	DialogFunc+66p
					; sub_4038FF+98p ...

;
; Imports from VERSION.dll
;
; DWORD	__stdcall GetFileVersionInfoSizeA(LPCSTR lptstrFilename, LPDWORD lpdwHandle)
		extrn __imp_GetFileVersionInfoSizeA:dword
					; DATA XREF: GetFileVersionInfoSizeAr
					; .rdata:0040754Co
; BOOL __stdcall GetFileVersionInfoA(LPCSTR lptstrFilename, DWORD dwHandle, DWORD dwLen, LPVOID	lpData)
		extrn __imp_GetFileVersionInfoA:dword ;	DATA XREF: GetFileVersionInfoAr
; BOOL __stdcall VerQueryValueA(LPCVOID	pBlock,	LPCSTR lpSubBlock, LPVOID *lplpBuffer, PUINT puLen)
		extrn __imp_VerQueryValueA:dword ; DATA	XREF: VerQueryValueAr

;
; Imports from ole32.dll
;
; HRESULT __stdcall CoCreateInstance(const IID *const rclsid, LPUNKNOWN	pUnkOuter, DWORD dwClsContext, const IID *const	riid, LPVOID *ppv)
		extrn CoCreateInstance:dword ; CODE XREF: sub_401434+C57p
					; DATA XREF: sub_401434+C57r ...
; void __stdcall CoTaskMemFree(LPVOID pv)
		extrn CoTaskMemFree:dword ; CODE XREF: sub_4042DD+135p
					; sub_405BC6+194p
					; DATA XREF: ...
; HRESULT __stdcall OleInitialize(LPVOID pvReserved)
		extrn OleInitialize:dword ; CODE XREF: start+33p
					; StartAddress+10p
					; DATA XREF: ...
; void __stdcall OleUninitialize()
		extrn OleUninitialize:dword ; CODE XREF: start+2BFp
					; StartAddress+5Cp
					; DATA XREF: ...


; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	para public 'DATA' use32
		assume cs:_rdata
		;org 407298h
; CHAR aRichedit[]
aRichedit	db 'RichEdit',0         ; DATA XREF: sub_40363A+24Ao
		align 4
; CHAR aRichedit20a[]
aRichedit20a	db 'RichEdit20A',0      ; DATA XREF: sub_40363A+23Bo
; CHAR aRiched32[]
aRiched32	db 'RichEd32',0         ; DATA XREF: sub_40363A+22Eo
		align 4
; CHAR LibFileName[]
LibFileName	db 'RichEd20',0         ; DATA XREF: sub_40363A+223o
		align 4
; CHAR a_defaultContro[]
a_defaultContro	db '.DEFAULT\Control Panel\International',0 ; DATA XREF: sub_40363A+66o
		align 10h
; CHAR SubKey[]
SubKey		db 'Control Panel\Desktop\ResourceLocale',0 ; DATA XREF: sub_40363A+34o
		align 4
; CHAR aD[]
aD		db '%d',0               ; DATA XREF: sub_405B02+4o
		align 4
; CHAR aSoftwareMicros[]
aSoftwareMicros	db 'Software\Microsoft\Windows\CurrentVersion',0 ; DATA XREF: sub_405BC6+FBo
		align 4
; CHAR aMicrosoftInter[]
aMicrosoftInter	db '\Microsoft\Internet Explorer\Quick Launch',0
					; DATA XREF: sub_405BC6+1B0o
		align 4
byte_407374	db 10h			; DATA XREF: sub_405FAF+3C0r
					; sub_405FAF+3E7r
		db 11h,	12h, 0
		dd 6090708h, 40B050Ah, 20D030Ch, 0F010Eh
dword_407388	dd 40003h, 60005h, 80007h, 0A0009h, 0D000Bh, 11000Fh, 170013h
					; DATA XREF: sub_405FAF+162o
					; sub_405FAF+5C5o
		dd 1F001Bh, 2B0023h, 3B0033h, 530043h, 730063h,	0A30083h
		dd 0E300C3h, 102h, 0
dword_4073C8	dd 4 dup(0)		; DATA XREF: sub_405FAF+15Do
					; sub_405FAF+5C0o
		dd 2 dup(10001h), 2 dup(20002h), 2 dup(30003h),	2 dup(40004h)
		dd 2 dup(50005h), 700000h, 70h
dword_407408	dd 20001h, 40003h, 70005h, 0D0009h, 190011h, 310021h, 610041h
					; DATA XREF: sub_405FAF+197o
					; sub_405FAF+605o
		dd 0C10081h, 1810101h, 3010201h, 6010401h, 0C010801h, 18011001h
		dd 30012001h, 60014001h
dword_407444	dd 2 dup(0)		; DATA XREF: sub_405FAF+192o
					; sub_405FAF+600o
		dd 10001h, 20002h, 30003h, 40004h, 50005h, 60006h, 70007h
		dd 80008h, 90009h, 0A000Ah, 0B000Bh, 0C000Ch, 0D000Dh
; IID riid
riid		dd 214EEh		; Data1	; DATA XREF: sub_401434+C4Ao
		dw 0			; Data2
		dw 0			; Data3
		db 0C0h, 6 dup(0), 46h	; Data4
; IID rclsid
rclsid		dd 21401h		; Data1	; DATA XREF: sub_401434+C52o
		dw 0			; Data2
		dw 0			; Data3
		db 0C0h, 6 dup(0), 46h	; Data4
dword_4074A0	dd 10Bh, 0		; DATA XREF: sub_401434+C6Co
		dd 0C0h, 46000000h
__IMPORT_DESCRIPTOR_KERNEL32 dd	rva off_4075C4 ; Import	Name Table
		dd 0			; Time stamp
		dd 0			; Forwarder Chain
		dd rva aKernel32_dll	; DLL Name
		dd rva GetTickCount	; Import Address Table
__IMPORT_DESCRIPTOR_USER32 dd rva off_4076D8 ; Import Name Table
		dd 0			; Time stamp
		dd 0			; Forwarder Chain
		dd rva aUser32_dll	; DLL Name
		dd rva CreateWindowExA	; Import Address Table
__IMPORT_DESCRIPTOR_GDI32 dd rva off_4075A0 ; Import Name Table
		dd 0			; Time stamp
		dd 0			; Forwarder Chain
		dd rva aGdi32_dll	; DLL Name
		dd rva SelectObject	; Import Address Table
__IMPORT_DESCRIPTOR_SHELL32 dd rva off_4076BC ;	Import Name Table
		dd 0			; Time stamp
		dd 0			; Forwarder Chain
		dd rva aShell32_dll	; DLL Name
		dd rva SHGetSpecialFolderLocation ; Import Address Table
__IMPORT_DESCRIPTOR_ADVAPI32 dd	rva off_407564 ; Import	Name Table
		dd 0			; Time stamp
		dd 0			; Forwarder Chain
		dd rva aAdvapi32_dll	; DLL Name
		dd rva RegCloseKey	; Import Address Table
__IMPORT_DESCRIPTOR_COMCTL32 dd	rva off_40758C ; Import	Name Table
		dd 0			; Time stamp
		dd 0			; Forwarder Chain
		dd rva aComctl32_dll	; DLL Name
		dd rva ImageList_Create	; Import Address Table
__IMPORT_DESCRIPTOR_ole32 dd rva off_4077E8 ; Import Name Table
		dd 0			; Time stamp
		dd 0			; Forwarder Chain
		dd rva aOle32_dll	; DLL Name
		dd rva CoCreateInstance	; Import Address Table
__IMPORT_DESCRIPTOR_VERSION dd rva off_4077D8 ;	Import Name Table
		dd 0			; Time stamp
		dd 0			; Forwarder Chain
		dd rva aVersion_dll	; DLL Name
		dd rva __imp_GetFileVersionInfoSizeA ; Import Address Table
		dd 5 dup(0)
;
; Import names for ADVAPI32.dll
;
off_407564	dd rva word_4081A2	; DATA XREF: .rdata:__IMPORT_DESCRIPTOR_ADVAPI32o
		dd rva word_4081D2
		dd rva word_4081C2
		dd rva word_4081B0
		dd rva word_40814C
		dd rva word_408190
		dd rva word_40817E
		dd rva word_40816A
		dd rva word_40815C
		dd 0
;
; Import names for COMCTL32.dll
;
off_40758C	dd rva word_40821A	; DATA XREF: .rdata:__IMPORT_DESCRIPTOR_COMCTL32o
		dd rva word_408204
		dd rva word_4081F0
		dd 80000011h
		dd 0
;
; Import names for GDI32.dll
;
off_4075A0	dd rva word_40802E	; DATA XREF: .rdata:__IMPORT_DESCRIPTOR_GDI32o
		dd rva word_40804E
		dd rva word_40805A
		dd rva word_40803E
		dd rva word_408086
		dd rva word_408096
		dd rva word_408070
		dd rva word_4080A6
		dd 0
;
; Import names for KERNEL32.dll
;
off_4075C4	dd rva word_407A40	; DATA XREF: .rdata:__IMPORT_DESCRIPTOR_KERNEL32o
		dd rva word_4079B0
		dd rva word_4079C4
		dd rva word_4079D0
		dd rva word_4079E8
		dd rva word_4079FE
		dd rva word_407A0E
		dd rva word_407A22
		dd rva word_40798E
		dd rva word_40799C
		dd rva word_407A50
		dd rva word_407A5E
		dd rva word_407A74
		dd rva word_407A88
		dd rva word_407A94
		dd rva word_407AA2
		dd rva word_407ABC
		dd rva word_407AD4
		dd rva word_407A38
		dd rva word_407960
		dd rva word_407B06
		dd rva word_407B16
		dd rva word_407B22
		dd rva word_407B2E
		dd rva word_407B42
		dd rva word_407B52
		dd rva word_407B60
		dd rva word_407B70
		dd rva word_407B82
		dd rva word_407B96
		dd rva word_407BA4
		dd rva word_407BB8
		dd rva word_407BC4
		dd rva word_407BD0
		dd rva word_407BDC
		dd rva word_407BF2
		dd rva word_407C00
		dd rva word_407910
		dd rva word_40797C
		dd rva word_40796E
		dd rva word_40792C
		dd rva word_407954
		dd rva word_407948
		dd rva word_4078FA
		dd rva word_40791E
		dd rva word_4078E4
		dd rva word_4078D0
		dd rva word_407AF6
		dd rva word_407AE4
		dd rva word_4078BE
		dd rva word_407814
		dd rva word_407826
		dd rva word_407806
		dd rva word_407842
		dd rva word_407854
		dd rva word_407836
		dd rva word_40787C
		dd rva word_40789A
		dd rva word_4077FC
		dd rva word_407860
		dd rva word_4078B0
		dd 0
;
; Import names for SHELL32.dll
;
off_4076BC	dd rva word_408122	; DATA XREF: .rdata:__IMPORT_DESCRIPTOR_SHELL32o
		dd rva word_40810A
		dd rva word_4080F4
		dd rva word_4080E2
		dd rva word_4080D2
		dd rva word_4080BE
		dd 0
;
; Import names for USER32.dll
;
off_4076D8	dd rva word_407DDE	; DATA XREF: .rdata:__IMPORT_DESCRIPTOR_USER32o
		dd rva word_407E1A
		dd rva word_407E26
		dd rva word_407E38
		dd rva word_407E48
		dd rva word_407E5A
		dd rva word_407E6A
		dd rva word_407E7A
		dd rva word_407E8C
		dd rva word_407E9C
		dd rva word_407EAA
		dd rva word_407EBC
		dd rva word_407EC8
		dd rva word_407ED6
		dd rva word_407EE8
		dd rva word_407EF8
		dd rva word_407F06
		dd rva word_407F18
		dd rva word_407F2A
		dd rva word_407CB2
		dd rva word_407DF0
		dd rva word_407E08
		dd rva word_407F72
		dd rva word_407F84
		dd rva word_407F92
		dd rva word_407FA4
		dd rva word_407FB8
		dd rva word_407FCA
		dd rva word_407FDC
		dd rva word_407FF2
		dd rva word_407FFE
		dd rva word_408012
		dd rva word_407CA6
		dd rva word_407C96
		dd rva word_407C84
		dd rva word_407C74
		dd rva word_407C62
		dd rva word_407C54
		dd rva word_407C44
		dd rva word_407C38
		dd rva word_407C2C
		dd rva word_407DCE
		dd rva word_407DBC
		dd rva word_407DB0
		dd rva word_407DA0
		dd rva word_407D90
		dd rva word_407D7A
		dd rva word_407D6E
		dd rva word_407CDA
		dd rva word_407D1A
		dd rva word_407D34
		dd rva word_407D26
		dd rva word_407CE8
		dd rva word_407CBA
		dd rva word_407CC8
		dd rva word_407F3C
		dd rva word_407F50
		dd rva word_407F62
		dd rva word_407C20
		dd rva word_407D4A
		dd rva word_407CF4
		dd rva word_407D04
		dd rva word_407D5C
		dd 0
;
; Import names for VERSION.dll
;
off_4077D8	dd rva word_4082B4	; DATA XREF: .rdata:__IMPORT_DESCRIPTOR_VERSIONo
		dd rva word_40829E
		dd rva word_40828C
		dd 0
;
; Import names for ole32.dll
;
off_4077E8	dd rva word_40823C	; DATA XREF: .rdata:__IMPORT_DESCRIPTOR_ole32o
		dd rva word_408272
		dd rva word_408262
		dd rva word_408250
		dd 0
word_4077FC	dw 274h			; DATA XREF: .rdata:004076ACo
		db 'MulDiv',0
		align 2
word_407806	dw 83h			; DATA XREF: .rdata:00407694o
		db 'DeleteFileA',0
word_407814	dw 0D2h			; DATA XREF: .rdata:0040768Co
		db 'FindFirstFileA',0
		align 2
word_407826	dw 0DCh			; DATA XREF: .rdata:00407690o
		db 'FindNextFileA',0
word_407836	dw 0CEh			; DATA XREF: .rdata:004076A0o
		db 'FindClose',0
word_407842	dw 31Bh			; DATA XREF: .rdata:00407698o
		db 'SetFilePointer',0
		align 4
word_407854	dw 3A4h			; DATA XREF: .rdata:0040769Co
		db 'WriteFile',0
word_407860	dw 19Ch			; DATA XREF: .rdata:004076B0o
		db 'GetPrivateProfileStringA',0
		align 4
word_40787C	dw 3A9h			; DATA XREF: .rdata:004076A4o
		db 'WritePrivateProfileStringA',0
		align 2
word_40789A	dw 275h			; DATA XREF: .rdata:004076A8o
		db 'MultiByteToWideChar',0
word_4078B0	dw 0F8h			; DATA XREF: .rdata:004076B4o
		db 'FreeLibrary',0
word_4078BE	dw 253h			; DATA XREF: .rdata:00407688o
		db 'LoadLibraryExA',0
		align 10h
word_4078D0	dw 17Fh			; DATA XREF: .rdata:0040767Co
		db 'GetModuleHandleA',0
		align 4
word_4078E4	dw 15Ah			; DATA XREF: .rdata:00407678o
		db 'GetExitCodeProcess',0
		align 2
word_4078FA	dw 390h			; DATA XREF: .rdata:00407670o
		db 'WaitForSingleObject',0
word_407910	dw 1F8h			; DATA XREF: .rdata:00407658o
		db 'GlobalAlloc',0
word_40791E	dw 1FFh			; DATA XREF: .rdata:00407674o
		db 'GlobalFree',0
		align 4
word_40792C	dw 0BCh			; DATA XREF: .rdata:00407664o
		db 'ExpandEnvironmentStringsA',0
word_407948	dw 3C0h			; DATA XREF: .rdata:0040766Co
		db 'lstrcmpA',0
		align 4
word_407954	dw 3C3h			; DATA XREF: .rdata:00407668o
		db 'lstrcmpiA',0
word_407960	dw 34h			; DATA XREF: .rdata:00407610o
		db 'CloseHandle',0
word_40796E	dw 31Fh			; DATA XREF: .rdata:00407660o
		db 'SetFileTime',0
word_40797C	dw 39h			; DATA XREF: .rdata:0040765Co
		db 'CompareFileTime',0
word_40798E	dw 2DBh			; DATA XREF: .rdata:004075E4o
		db 'SearchPathA',0
word_40799C	dw 1B5h			; DATA XREF: .rdata:004075E8o
		db 'GetShortPathNameA',0
word_4079B0	dw 169h			; DATA XREF: .rdata:004075C8o
		db 'GetFullPathNameA',0
		align 4
word_4079C4	dw 26Eh			; DATA XREF: .rdata:004075CCo
		db 'MoveFileA',0
word_4079D0	dw 30Ah			; DATA XREF: .rdata:004075D0o
		db 'SetCurrentDirectoryA',0
		align 4
word_4079E8	dw 15Eh			; DATA XREF: .rdata:004075D4o
		db 'GetFileAttributesA',0
		align 2
word_4079FE	dw 171h			; DATA XREF: .rdata:004075D8o
		db 'GetLastError',0
		align 2
word_407A0E	dw 4Bh			; DATA XREF: .rdata:004075DCo
		db 'CreateDirectoryA',0
		align 2
word_407A22	dw 319h			; DATA XREF: .rdata:004075E0o
		db 'SetFileAttributesA',0
		align 4
word_407A38	dw 356h			; DATA XREF: .rdata:0040760Co
		db 'Sleep',0
word_407A40	dw 1DFh			; DATA XREF: .rdata:off_4075C4o
		db 'GetTickCount',0
		align 10h
word_407A50	dw 163h			; DATA XREF: .rdata:004075ECo
		db 'GetFileSize',0
word_407A5E	dw 17Dh			; DATA XREF: .rdata:004075F0o
		db 'GetModuleFileNameA',0
		align 4
word_407A74	dw 142h			; DATA XREF: .rdata:004075F4o
		db 'GetCurrentProcess',0
word_407A88	dw 43h			; DATA XREF: .rdata:004075F8o
		db 'CopyFileA',0
word_407A94	dw 0B9h			; DATA XREF: .rdata:004075FCo
		db 'ExitProcess',0
word_407AA2	dw 313h			; DATA XREF: .rdata:00407600o
		db 'SetEnvironmentVariableA',0
word_407ABC	dw 1F3h			; DATA XREF: .rdata:00407604o
		db 'GetWindowsDirectoryA',0
		align 4
word_407AD4	dw 1D5h			; DATA XREF: .rdata:00407608o
		db 'GetTempPathA',0
		align 4
word_407AE4	dw 110h			; DATA XREF: .rdata:00407684o
		db 'GetCommandLineA',0
word_407AF6	dw 315h			; DATA XREF: .rdata:00407680o
		db 'SetErrorMode',0
		align 2
word_407B06	dw 252h			; DATA XREF: .rdata:00407614o
		db 'LoadLibraryA',0
		align 2
word_407B16	dw 3CCh			; DATA XREF: .rdata:00407618o
		db 'lstrlenA',0
		align 2
word_407B22	dw 3C9h			; DATA XREF: .rdata:0040761Co
		db 'lstrcpynA',0
word_407B2E	dw 14Dh			; DATA XREF: .rdata:00407620o
		db 'GetDiskFreeSpaceA',0
word_407B42	dw 20Ah			; DATA XREF: .rdata:00407624o
		db 'GlobalUnlock',0
		align 2
word_407B52	dw 203h			; DATA XREF: .rdata:00407628o
		db 'GlobalLock',0
		align 10h
word_407B60	dw 6Fh			; DATA XREF: .rdata:0040762Co
		db 'CreateThread',0
		align 10h
word_407B70	dw 66h			; DATA XREF: .rdata:00407630o
		db 'CreateProcessA',0
		align 2
word_407B82	dw 2C4h			; DATA XREF: .rdata:00407634o
		db 'RemoveDirectoryA',0
		align 2
word_407B96	dw 53h			; DATA XREF: .rdata:00407638o
		db 'CreateFileA',0
word_407BA4	dw 1D3h			; DATA XREF: .rdata:0040763Co
		db 'GetTempFileNameA',0
		align 4
word_407BB8	dw 2B5h			; DATA XREF: .rdata:00407640o
		db 'ReadFile',0
		align 4
word_407BC4	dw 3C6h			; DATA XREF: .rdata:00407644o
		db 'lstrcpyA',0
		align 10h
word_407BD0	dw 3BDh			; DATA XREF: .rdata:00407648o
		db 'lstrcatA',0
		align 4
word_407BDC	dw 1C1h			; DATA XREF: .rdata:0040764Co
		db 'GetSystemDirectoryA',0
word_407BF2	dw 1E8h			; DATA XREF: .rdata:00407650o
		db 'GetVersion',0
		align 10h
word_407C00	dw 1A0h			; DATA XREF: .rdata:00407654o
		db 'GetProcAddress',0
		align 2
aKernel32_dll	db 'KERNEL32.dll',0     ; DATA XREF: .rdata:004074BCo
		align 10h
word_407C20	dw 0C8h			; DATA XREF: .rdata:004077C0o
		db 'EndPaint',0
		align 4
word_407C2C	dw 0BCh			; DATA XREF: .rdata:00407778o
		db 'DrawTextA',0
word_407C38	dw 0E2h			; DATA XREF: .rdata:00407774o
		db 'FillRect',0
		align 4
word_407C44	dw 0FFh			; DATA XREF: .rdata:00407770o
		db 'GetClientRect',0
word_407C54	dw 0Dh			; DATA XREF: .rdata:0040776Co
		db 'BeginPaint',0
		align 2
word_407C62	dw 8Eh			; DATA XREF: .rdata:00407768o
		db 'DefWindowProcA',0
		align 4
word_407C74	dw 23Bh			; DATA XREF: .rdata:00407764o
		db 'SendMessageA',0
		align 4
word_407C84	dw 193h			; DATA XREF: .rdata:00407760o
		db 'InvalidateRect',0
		align 2
word_407C96	dw 0C4h			; DATA XREF: .rdata:0040775Co
		db 'EnableWindow',0
		align 2
word_407CA6	dw 22Ah			; DATA XREF: .rdata:00407758o
		db 'ReleaseDC',0
word_407CB2	dw 10Ch			; DATA XREF: .rdata:00407724o
		db 'GetDC',0
word_407CBA	dw 1C0h			; DATA XREF: .rdata:004077ACo
		db 'LoadImageA',0
		align 4
word_407CC8	dw 280h			; DATA XREF: .rdata:004077B0o
		db 'SetWindowLongA',0
		align 2
word_407CDA	dw 111h			; DATA XREF: .rdata:00407798o
		db 'GetDlgItem',0
		align 4
word_407CE8	dw 1ADh			; DATA XREF: .rdata:004077A8o
		db 'IsWindow',0
		align 4
word_407CF4	dw 0E4h			; DATA XREF: .rdata:004077C8o
		db 'FindWindowExA',0
word_407D04	dw 23Eh			; DATA XREF: .rdata:004077CCo
		db 'SendMessageTimeoutA',0
word_407D1A	dw 2D7h			; DATA XREF: .rdata:0040779Co
		db 'wsprintfA',0
word_407D26	dw 292h			; DATA XREF: .rdata:004077A4o
		db 'ShowWindow',0
		align 4
word_407D34	dw 257h			; DATA XREF: .rdata:004077A0o
		db 'SetForegroundWindow',0
word_407D4A	dw 204h			; DATA XREF: .rdata:004077C4o
		db 'PostQuitMessage',0
word_407D5C	dw 286h			; DATA XREF: .rdata:004077D0o
		db 'SetWindowTextA',0
		align 2
word_407D6E	dw 27Ah			; DATA XREF: .rdata:00407794o
		db 'SetTimer',0
		align 2
word_407D7A	dw 55h			; DATA XREF: .rdata:00407790o
		db 'CreateDialogParamA',0
		align 10h
word_407D90	dw 99h			; DATA XREF: .rdata:0040778Co
		db 'DestroyWindow',0
word_407DA0	dw 0E1h			; DATA XREF: .rdata:00407788o
		db 'ExitWindowsEx',0
word_407DB0	dw 2Ah			; DATA XREF: .rdata:00407784o
		db 'CharNextA',0
word_407DBC	dw 9Eh			; DATA XREF: .rdata:00407780o
		db 'DialogBoxParamA',0
word_407DCE	dw 0F6h			; DATA XREF: .rdata:0040777Co
		db 'GetClassInfoA',0
word_407DDE	dw 60h			; DATA XREF: .rdata:off_4076D8o
		db 'CreateWindowExA',0
word_407DF0	dw 299h			; DATA XREF: .rdata:00407728o
		db 'SystemParametersInfoA',0
word_407E08	dw 216h			; DATA XREF: .rdata:0040772Co
		db 'RegisterClassA',0
		align 2
word_407E1A	dw 0C6h			; DATA XREF: .rdata:004076DCo
		db 'EndDialog',0
word_407E26	dw 231h			; DATA XREF: .rdata:004076E0o
		db 'ScreenToClient',0
		align 4
word_407E38	dw 174h			; DATA XREF: .rdata:004076E4o
		db 'GetWindowRect',0
word_407E48	dw 0C2h			; DATA XREF: .rdata:004076E8o
		db 'EnableMenuItem',0
		align 2
word_407E5A	dw 15Ch			; DATA XREF: .rdata:004076ECo
		db 'GetSystemMenu',0
word_407E6A	dw 247h			; DATA XREF: .rdata:004076F0o
		db 'SetClassLongA',0
word_407E7A	dw 1AEh			; DATA XREF: .rdata:004076F4o
		db 'IsWindowEnabled',0
word_407E8C	dw 283h			; DATA XREF: .rdata:004076F8o
		db 'SetWindowPos',0
		align 4
word_407E9C	dw 15Ah			; DATA XREF: .rdata:004076FCo
		db 'GetSysColor',0
word_407EAA	dw 16Eh			; DATA XREF: .rdata:00407700o
		db 'GetWindowLongA',0
		align 4
word_407EBC	dw 24Dh			; DATA XREF: .rdata:00407704o
		db 'SetCursor',0
word_407EC8	dw 1BAh			; DATA XREF: .rdata:00407708o
		db 'LoadCursorA',0
word_407ED6	dw 38h			; DATA XREF: .rdata:0040770Co
		db 'CheckDlgButton',0
		align 4
word_407EE8	dw 13Ch			; DATA XREF: .rdata:00407710o
		db 'GetMessagePos',0
word_407EF8	dw 1B8h			; DATA XREF: .rdata:00407714o
		db 'LoadBitmapA',0
word_407F06	dw 1Bh			; DATA XREF: .rdata:00407718o
		db 'CallWindowProcA',0
word_407F18	dw 1B1h			; DATA XREF: .rdata:0040771Co
		db 'IsWindowVisible',0
word_407F2A	dw 42h			; DATA XREF: .rdata:00407720o
		db 'CloseClipboard',0
		align 4
word_407F3C	dw 24Ah			; DATA XREF: .rdata:004077B4o
		db 'SetClipboardData',0
		align 10h
word_407F50	dw 0C1h			; DATA XREF: .rdata:004077B8o
		db 'EmptyClipboard',0
		align 2
word_407F62	dw 1F6h			; DATA XREF: .rdata:004077BCo
		db 'OpenClipboard',0
word_407F72	dw 2A4h			; DATA XREF: .rdata:00407730o
		db 'TrackPopupMenu',0
		align 4
word_407F84	dw 8			; DATA XREF: .rdata:00407734o
		db 'AppendMenuA',0
word_407F92	dw 5Eh			; DATA XREF: .rdata:00407738o
		db 'CreatePopupMenu',0
word_407FA4	dw 15Dh			; DATA XREF: .rdata:0040773Co
		db 'GetSystemMetrics',0
		align 4
word_407FB8	dw 253h			; DATA XREF: .rdata:00407740o
		db 'SetDlgItemTextA',0
word_407FCA	dw 113h			; DATA XREF: .rdata:00407744o
		db 'GetDlgItemTextA',0
word_407FDC	dw 1E2h			; DATA XREF: .rdata:00407748o
		db 'MessageBoxIndirectA',0
word_407FF2	dw 2Dh			; DATA XREF: .rdata:0040774Co
		db 'CharPrevA',0
word_407FFE	dw 0A1h			; DATA XREF: .rdata:00407750o
		db 'DispatchMessageA',0
		align 2
word_408012	dw 200h			; DATA XREF: .rdata:00407754o
		db 'PeekMessageA',0
		align 2
aUser32_dll	db 'USER32.dll',0       ; DATA XREF: .rdata:004074D0o
		align 2
word_40802E	dw 20Eh			; DATA XREF: .rdata:off_4075A0o
		db 'SelectObject',0
		align 2
word_40803E	dw 23Ch			; DATA XREF: .rdata:004075ACo
		db 'SetTextColor',0
		align 2
word_40804E	dw 216h			; DATA XREF: .rdata:004075A4o
		db 'SetBkMode',0
word_40805A	dw 3Ah			; DATA XREF: .rdata:004075A8o
		db 'CreateFontIndirectA',0
word_408070	dw 29h			; DATA XREF: .rdata:004075B8o
		db 'CreateBrushIndirect',0
word_408086	dw 8Fh			; DATA XREF: .rdata:004075B0o
		db 'DeleteObject',0
		align 2
word_408096	dw 16Bh			; DATA XREF: .rdata:004075B4o
		db 'GetDeviceCaps',0
word_4080A6	dw 215h			; DATA XREF: .rdata:004075BCo
		db 'SetBkColor',0
		align 4
aGdi32_dll	db 'GDI32.dll',0        ; DATA XREF: .rdata:004074E4o
word_4080BE	dw 9Ah			; DATA XREF: .rdata:004076D0o
		db 'SHFileOperationA',0
		align 2
word_4080D2	dw 107h			; DATA XREF: .rdata:004076CCo
		db 'ShellExecuteA',0
word_4080E2	dw 0ACh			; DATA XREF: .rdata:004076C8o
		db 'SHGetFileInfoA',0
		align 4
word_4080F4	dw 79h			; DATA XREF: .rdata:004076C4o
		db 'SHBrowseForFolderA',0
		align 2
word_40810A	dw 0BCh			; DATA XREF: .rdata:004076C0o
		db 'SHGetPathFromIDListA',0
		align 2
word_408122	dw 0C3h			; DATA XREF: .rdata:off_4076BCo
		db 'SHGetSpecialFolderLocation',0
		align 10h
aShell32_dll	db 'SHELL32.dll',0      ; DATA XREF: .rdata:004074F8o
word_40814C	dw 1E1h			; DATA XREF: .rdata:00407574o
		db 'RegEnumValueA',0
word_40815C	dw 1DDh			; DATA XREF: .rdata:00407584o
		db 'RegEnumKeyA',0
word_40816A	dw 1F7h			; DATA XREF: .rdata:00407580o
		db 'RegQueryValueExA',0
		align 2
word_40817E	dw 204h			; DATA XREF: .rdata:0040757Co
		db 'RegSetValueExA',0
		align 10h
word_408190	dw 1D1h			; DATA XREF: .rdata:00407578o
		db 'RegCreateKeyExA',0
word_4081A2	dw 1CBh			; DATA XREF: .rdata:off_407564o
		db 'RegCloseKey',0
word_4081B0	dw 1D8h			; DATA XREF: .rdata:00407570o
		db 'RegDeleteValueA',0
word_4081C2	dw 1D4h			; DATA XREF: .rdata:0040756Co
		db 'RegDeleteKeyA',0
word_4081D2	dw 1ECh			; DATA XREF: .rdata:00407568o
		db 'RegOpenKeyExA',0
aAdvapi32_dll	db 'ADVAPI32.dll',0     ; DATA XREF: .rdata:0040750Co
		align 10h
word_4081F0	dw 38h			; DATA XREF: .rdata:00407594o
		db 'ImageList_Destroy',0
word_408204	dw 34h			; DATA XREF: .rdata:00407590o
		db 'ImageList_AddMasked',0
word_40821A	dw 37h			; DATA XREF: .rdata:off_40758Co
		db 'ImageList_Create',0
		align 2
aComctl32_dll	db 'COMCTL32.dll',0     ; DATA XREF: .rdata:00407520o
		align 4
word_40823C	dw 10h			; DATA XREF: .rdata:off_4077E8o
		db 'CoCreateInstance',0
		align 10h
word_408250	dw 105h			; DATA XREF: .rdata:004077F4o
		db 'OleUninitialize',0
word_408262	dw 0EEh			; DATA XREF: .rdata:004077F0o
		db 'OleInitialize',0
word_408272	dw 65h			; DATA XREF: .rdata:004077ECo
		db 'CoTaskMemFree',0
aOle32_dll	db 'ole32.dll',0        ; DATA XREF: .rdata:00407534o
word_40828C	dw 0Ah			; DATA XREF: .rdata:004077E0o
		db 'VerQueryValueA',0
		align 2
word_40829E	dw 0			; DATA XREF: .rdata:004077DCo
		db 'GetFileVersionInfoA',0
word_4082B4	dw 1			; DATA XREF: .rdata:off_4077D8o
		db 'GetFileVersionInfoSizeA',0
aVersion_dll	db 'VERSION.dll',0      ; DATA XREF: .rdata:00407548o
		align 1000h
_rdata		ends

; Section 3. (virtual address 00009000)
; Virtual size			: 000254B8 ( 152760.)
; Section size in file		: 00000400 (   1024.)
; Offset to raw	data for section: 00007600
; Flags	C0000040: Data Readable	Writable
; Alignment	: default
; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read/Write
_data		segment	para public 'DATA' use32
		assume cs:_data
		;org 409000h
off_409000	dd offset dword_42E440	; DATA XREF: sub_401434:loc_401FDDo
		dd offset sub_401389
		dd offset sub_405E0F
		dd offset sub_4035F8
word_409010	dw 0Ah			; DATA XREF: sub_401434:loc_40227Fr
		align 4
; CHAR SubBlock[2]
SubBlock	db '\',0                ; DATA XREF: sub_401434+AFFo
					; sub_405464:loc_4054F0o ...
		align 4
; HANDLE hFile
hFile		dd 0FFFFFFFFh		; DATA XREF: sub_402C29+48w
					; sub_403081+8r ...
; CHAR aVerifyingInsta[]
aVerifyingInsta	db 'verifying installer: %d%%',0 ; DATA XREF: DialogFunc+50o
		align 4
aInstallerInteg	db 'Installer integrity check has failed. Common causes include',0Ah
					; DATA XREF: sub_402C29:loc_402E01o
		db 'incomplete download and damaged media. Contact the',0Ah
		db 'installer',27h,'s author to obtain a new copy.',0Ah
		db 0Ah
		db 'More information at:',0Ah
		db 'http://nsis.sf.net/NSIS_Error',0
aErrorLaunching	db 'Error launching installer',0 ; DATA XREF: sub_402C29+50o
					; start+277o
		align 10h
; CHAR a___D[]
a___D		db '... %d%%',0         ; DATA XREF: sub_402E62+140o
		align 4
aSeshutdownpriv	db 'SeShutdownPrivilege',0 ; DATA XREF: start+40Fo
byte_409140	db 41h			; DATA XREF: start+331r
byte_409141	db 0			; DATA XREF: start+33Dr
		align 4
; CHAR aNsu_tmp[]
aNsu_tmp	db '~nsu.tmp',0         ; DATA XREF: start:loc_4033C7o
		align 10h
byte_409150	db 20h			; DATA XREF: start+260r
byte_409151	db 5Fh			; DATA XREF: start+254r
byte_409152	db 3Fh			; DATA XREF: start+248r
byte_409153	db 3Dh			; DATA XREF: start+241r
		align 8
; CHAR aTmp[4]
aTmp		db 'TMP',0              ; DATA XREF: start+1F8o
; CHAR Name[]
Name		db 'TEMP',0             ; DATA XREF: start+1F0o
		align 4
; CHAR aLow[]
aLow		db 'Low',0              ; DATA XREF: start+1DEo
; CHAR String2[]
String2		db '\Temp',0            ; DATA XREF: start+1C2o
		align 10h
byte_409170	db 20h			; DATA XREF: start+15Cr
byte_409171	db 2Fh			; DATA XREF: start+150r
byte_409172	db 44h			; DATA XREF: start+144r
byte_409173	db 3Dh			; DATA XREF: start:loc_40321Fr
		align 8
byte_409178	db 4Eh			; DATA XREF: start+11Cr
byte_409179	db 43h			; DATA XREF: start+110r
byte_40917A	db 52h			; DATA XREF: start+104r
byte_40917B	db 43h			; DATA XREF: start:loc_4031DFr
		align 10h
; CHAR aNsisError[]
aNsisError	db 'NSIS Error',0       ; DATA XREF: start+61o
		align 10h
aErrorWritingTe	db 'Error writing temporary file. Make sure your temp folder is valid'
					; DATA XREF: start+10o
		db '.',0
		align 4
dword_4091D4	dd 0FFFFFFFFh		; DATA XREF: sub_4039CC+E0r
					; sub_4039CC:loc_403B7Dr ...
; DLGPROC lpDialogFunc
lpDialogFunc	dd offset sub_403FE8	; DATA XREF: sub_4039CC+3BCr
		dd offset sub_40480C
		dd offset sub_4042DD
		dd offset sub_404FCD
		dd offset sub_404296
; CHAR ClassName[4]
ClassName	db '_Nb',0              ; DATA XREF: sub_40363A+173o
; CHAR a_exe[]
a_exe		db '.exe',0             ; DATA XREF: sub_40363A+FDo
		align 4
; CHAR Operation[]
Operation	db 'open',0             ; DATA XREF: sub_403FE8+206o
		align 10h
; CHAR aU_USS[]
aU_USS		db '%u.%u%s%s',0        ; DATA XREF: sub_404678+78o
		align 10h
; MSGBOXPARAMSA	mbp
mbp		MSGBOXPARAMSA <28h, 0, 0, 0, 0,	0, 67h,	0, 0, 0> ; DATA	XREF: sub_4053B8+2Eo
					; sub_4053B8+33w ...
off_409238	dd offset aKernel32	; DATA XREF: sub_405ECF+Br
					; "KERNEL32"
off_40923C	dd offset aGetdiskfreespa ; DATA XREF: sub_405ECF:loc_405EF6r
					; "GetDiskFreeSpaceExA"
		dd offset aKernel32	; "KERNEL32"
		dd offset aMovefileexa	; "MoveFileExA"
		dd offset aKernel32	; "KERNEL32"
		dd offset aGetuserdefault ; "GetUserDefaultUILanguage"
		dd offset aAdvapi32	; "ADVAPI32"
		dd offset aRegdeletekeyex ; "RegDeleteKeyExA"
		dd offset aAdvapi32	; "ADVAPI32"
		dd offset aOpenprocesstok ; "OpenProcessToken"
		dd offset aAdvapi32	; "ADVAPI32"
		dd offset aLookupprivileg ; "LookupPrivilegeValueA"
		dd offset aAdvapi32	; "ADVAPI32"
		dd offset aAdjusttokenpri ; "AdjustTokenPrivileges"
		dd offset aAdvapi32	; "ADVAPI32"
		dd offset aInitiateshutdo ; "InitiateShutdownA"
		dd offset aShlwapi	; "SHLWAPI"
		dd offset aShautocomplete ; "SHAutoComplete"
		dd offset aShfolder	; "SHFOLDER"
		dd offset aShgetfolderpat ; "SHGetFolderPathA"
aShgetfolderpat	db 'SHGetFolderPathA',0 ; DATA XREF: .data:00409284o
		align 4
aShfolder	db 'SHFOLDER',0         ; DATA XREF: .data:00409280o
		align 4
aShautocomplete	db 'SHAutoComplete',0   ; DATA XREF: .data:0040927Co
		align 4
aShlwapi	db 'SHLWAPI',0          ; DATA XREF: .data:00409278o
aInitiateshutdo	db 'InitiateShutdownA',0 ; DATA XREF: .data:00409274o
		align 4
aAdjusttokenpri	db 'AdjustTokenPrivileges',0 ; DATA XREF: .data:0040926Co
		align 4
aLookupprivileg	db 'LookupPrivilegeValueA',0 ; DATA XREF: .data:00409264o
		align 4
aOpenprocesstok	db 'OpenProcessToken',0 ; DATA XREF: .data:0040925Co
		align 4
aRegdeletekeyex	db 'RegDeleteKeyExA',0  ; DATA XREF: .data:00409254o
aAdvapi32	db 'ADVAPI32',0         ; DATA XREF: .data:00409250o
					; .data:00409258o ...
		align 4
aGetuserdefault	db 'GetUserDefaultUILanguage',0 ; DATA XREF: .data:0040924Co
		align 10h
aMovefileexa	db 'MoveFileExA',0      ; DATA XREF: .data:00409244o
aGetdiskfreespa	db 'GetDiskFreeSpaceExA',0 ; DATA XREF: .data:off_40923Co
aKernel32	db 'KERNEL32',0         ; DATA XREF: .data:off_409238o
					; .data:00409240o ...
		align 4
; CHAR a_[]
a_		db '\*.*',0             ; DATA XREF: sub_405464+6Bo
		align 4
dword_409384	dd 61736Eh		; DATA XREF: sub_405864:loc_40586Fr
; CHAR dword_409388[]
dword_409388	dd 5B0Ah		; DATA XREF: sub_4058DC+108o
; CHAR aRename[]
aRename		db '[Rename]',0Dh,0Ah,0 ; DATA XREF: sub_4058DC+E2o
					; sub_4058DC+F4o
		align 4
; CHAR aSS[]
aSS		db '%s=%s',0Dh,0Ah,0    ; DATA XREF: sub_4058DC+6Eo
; CHAR aNul[]
aNul		db 'NUL',0              ; DATA XREF: sub_4058DC+Ao
; CHAR a_[]
a?		db '*?|<>/":',0         ; DATA XREF: sub_405E0F+48o
		align 10h
word_4093B0	dw 0			; DATA XREF: sub_405FAF+47Cr
					; sub_405FAF+501r ...
		dw 1
		dd 70003h, 1F000Fh, 7F003Fh, 1FF00FFh, 7FF03FFh, 1FFF0FFFh
		dd 7FFF3FFFh, 0FFFFh
byte_4093D4	db 9			; DATA XREF: sub_405FAF+153o
					; sub_405FAF:loc_40615Fr
		align 4
byte_4093D8	db 5			; DATA XREF: sub_405FAF+188o
					; sub_405FAF+1B8r
		align 10h
; CHAR String1[32]
String1		db 20h dup(0)		; DATA XREF: sub_401434+327o
					; sub_401434+704o ...
		dd 0F8h	dup(?)
; CHAR byte_4097E0
byte_4097E0	db ?			; DATA XREF: sub_401423o
					; sub_401434+3D8o ...
		align 4
		dd 0FFh	dup(?)
; BYTE Data
Data		dd ?			; DATA XREF: sub_401434+355o
					; sub_401434+F37o ...
		dd 2FFh	dup(?)
dword_40A7E0	dd ?			; DATA XREF: sub_401434+40w
					; sub_4029E0+4r ...
; HGLOBAL hMem
hMem		dd ?			; DATA XREF: sub_401434+6E0r
					; sub_401434+710r ...
; LOGFONTA lf
lf		LOGFONTA <?>		; DATA XREF: sub_401434+91Dw
					; sub_401434+968o
		align 8
dword_40A828	dd ?			; DATA XREF: sub_402E62+D3w
					; sub_402E62+E5o
dword_40A82C	dd ?			; DATA XREF: sub_402E62+D9w
dword_40A830	dd ?			; DATA XREF: sub_402E62+EAw
					; sub_402E62+105r ...
dword_40A834	dd ?			; DATA XREF: sub_402E62+F0w
dword_40A838	dd ?			; DATA XREF: sub_402E62+79w
		dd 145h	dup(?)
dword_40AD50	dd ?			; DATA XREF: sub_402E62+96w
dword_40AD54	dd ?			; DATA XREF: sub_402E62+90w
		dd 5A0h	dup(?)
dword_40C3D8	dd 2000h dup(?)		; DATA XREF: sub_402E62+74o
dword_4143D8	dd ?			; DATA XREF: sub_402E62+9Cw
dword_4143DC	dd ?			; DATA XREF: sub_402E62+88w
dword_4143E0	dd ?			; DATA XREF: sub_402E62+83w
		align 8
; LONG lDistanceToMove
lDistanceToMove	dd ?			; DATA XREF: DialogFunc+31r
					; sub_402C29+106r ...
		align 10h
dword_4143F0	dd 1000h dup(?)		; DATA XREF: sub_402E62:loc_402F1Eo
					; sub_402E62:loc_40303Eo
dword_4183F0	dd 2000h dup(?)		; DATA XREF: sub_402E62+29o
; HWND dword_4203F0
dword_4203F0	dd ?			; DATA XREF: sub_402BC5+9r
					; sub_402BC5:loc_402BDEw ...
		align 8
dword_4203F8	dd 2000h dup(?)		; DATA XREF: sub_402C29+8Eo
; int dword_4283F8
dword_4283F8	dd ?			; DATA XREF: DialogFunc+37r
					; sub_402C29+81w ...
		align 10h
; CHAR CommandLine[1024]
CommandLine	db 400h	dup(?)		; DATA XREF: start+346o
; CHAR pszPath[4]
pszPath		db 4 dup(?)		; DATA XREF: start+56o
					; sub_4042DD:loc_4045A8o
; HGLOBAL dword_428804
dword_428804	dd ?			; DATA XREF: sub_40358A+1r
					; sub_4035A5+1r ...
; HWND dword_428808
dword_428808	dd ?			; DATA XREF: sub_4039CC+184w
					; sub_4039CC+2D6r ...
dword_42880C	dd ?			; DATA XREF: sub_403FB3+6r
					; sub_403FB3+29w ...
; CHAR RootPathName[1024]
RootPathName	db 400h	dup(?)		; DATA XREF: sub_4042DD:loc_4044AAo
; INT_PTR nResult
nResult		dd ?			; DATA XREF: sub_4039CC+101w
					; sub_4039CC+11Bw ...
		align 8
; CHAR dword_428C18[]
dword_428C18	dd 100h	dup(?)		; DATA XREF: sub_4042DD+102o
dword_429018	dd ?			; DATA XREF: sub_4039CC+3AAw
					; sub_403FE8+154r ...
		align 10h
; const	CHAR byte_429020
byte_429020	db ?			; DATA XREF: sub_404E8F+20o
					; sub_404E8F+C5w
		align 4
		dd 1FFh	dup(?)
; HWND dword_429820
dword_429820	dd ?			; DATA XREF: sub_40363A+1E7w
					; sub_40363A+211r ...
; LPARAM himl
himl		dd ?			; DATA XREF: sub_40480C+BAw
					; sub_40480C+C5r ...
dword_429828	dd ?			; DATA XREF: sub_4039CC+15Dw
					; sub_4039CC+1ACw ...
dword_42982C	dd ?			; DATA XREF: sub_40480C+86w
					; sub_404E03+57r ...
dword_429830	dd ?			; DATA XREF: sub_4042DD:loc_404455w
					; sub_4042DD+30Dr ...
; WNDPROC lpPrevWndFunc
lpPrevWndFunc	dd ?			; DATA XREF: sub_40480C+A8w
					; sub_404E03+7Ar
; HGLOBAL dword_429838
dword_429838	dd ?			; DATA XREF: sub_40480C+75w
					; sub_40480C+1C4r ...
; HWND wParam
wParam		dd ?			; DATA XREF: sub_4039CC+178w
					; sub_4039CC:loc_403CFAr ...
; const	CHAR byte_429840
byte_429840	db ?			; DATA XREF: sub_40363A:loc_403666o
					; sub_40363A+57r ...
		align 4
		dd 3FFh	dup(?)
dword_42A840	dd ?			; DATA XREF: sub_401434:loc_40286Dr
					; sub_4039CC:loc_403E49r ...
		align 8
; CHAR byte_42A848
byte_42A848	db ?			; DATA XREF: sub_405464:loc_4054BDo
					; sub_405464+83r
		align 4
		dd 0FFh	dup(?)
; CHAR byte_42AC48[1024]
byte_42AC48	db 400h	dup(?)		; DATA XREF: sub_405722+6o
; struct _STARTUPINFOA StartupInfo
StartupInfo	_STARTUPINFOA <?>	; DATA XREF: sub_405357+9w
					; sub_405357+16o
		align 10h
; struct _WIN32_FIND_DATAA FindFileData
FindFileData	_WIN32_FIND_DATAA <?>	; DATA XREF: sub_405EA8+1o
; CHAR byte_42B1D0[1024]
byte_42B1D0	db 400h	dup(?)		; DATA XREF: sub_4058DC+73o
					; sub_4058DC+13Fo
; CHAR szShortPath[1024]
szShortPath	db 400h	dup(?)		; DATA XREF: sub_4058DC+5o
; CHAR byte_42B9D0[1024]
byte_42B9D0	db 400h	dup(?)		; DATA XREF: sub_4058DC:loc_40592Bo
dword_42BDD0	dd ?			; DATA XREF: sub_405F41+27w
					; sub_405F41+5Ar
dword_42BDD4	dd ?			; DATA XREF: sub_405F41r
		dd 0FEh	dup(?)
dword_42C1D0	dd ?			; DATA XREF: sub_405FAF+18Do
					; sub_405FAF+1C8r
dword_42C1D4	dd ?			; DATA XREF: sub_405FAF+158o
					; sub_405FAF+1C0r
dword_42C1D8	dd 8Fh dup(?)		; DATA XREF: sub_405FAF+114o
					; sub_405FAF+148o ...
dword_42C414	dd 71h dup(?)		; DATA XREF: sub_405FAF:loc_4060C8o
dword_42C5D8	dd 18h dup(?)		; DATA XREF: sub_405FAF+122o
dword_42C638	dd 8 dup(?)		; DATA XREF: sub_405FAF:loc_4060DCo
dword_42C658	dd ?			; DATA XREF: sub_405FAF+13Eo
					; sub_406AA6+E8w ...
		dd 11Fh	dup(?)
dword_42CAD8	dd 220h	dup(?)		; DATA XREF: sub_405FAF+14Eo
					; sub_405FAF+183o
byte_42D358	db ?			; DATA XREF: sub_405FAF:loc_4060B2r
					; sub_405FAF+1AAw
		align 10h
; const	CHAR String
String		db ?			; DATA XREF: sub_40363A+BEo
					; sub_40363A+D3r ...
; CHAR byte_42D361[]
byte_42D361	db 3 dup(?)		; DATA XREF: sub_40363A+E0o
		dd 1FFh	dup(?)
; WNDCLASSA WndClass
WndClass	WNDCLASSA <?>		; DATA XREF: sub_40363A+166o
					; sub_40363A+179w
; HWND dword_42DB88
dword_42DB88	dd ?			; DATA XREF: sub_404E8F+68r
					; sub_404FCD+76w ...
dword_42DB8C	dd ?			; DATA XREF: sub_401434:loc_40149Cw
					; sub_40363A+29Cr ...
; HWND hWnd
hWnd		dd ?			; DATA XREF: sub_401434:loc_401567r
					; sub_404FCD+67w ...
; int nDenominator
nDenominator	dd ?			; DATA XREF: sub_401389+4Ar
					; sub_404FCD+9Aw
; HWND hDlg
hDlg		dd ?			; DATA XREF: sub_4039CC+67r
					; sub_4039CC+77w ...
dword_42DB9C	dd ?			; DATA XREF: sub_4038FF:loc_403974w
					; sub_403FE8+20r ...
dword_42DBA0	dd ?			; DATA XREF: sub_40363A:loc_403899r
					; sub_4038FF+4Dw ...
; HWND dword_42DBA4
dword_42DBA4	dd ?			; DATA XREF: sub_401434:loc_40157Er
					; sub_404E8F+6r ...
; LONG dwNewLong
dwNewLong	dd ?			; DATA XREF: sub_40363A+15Dw
					; sub_4039CC+18Er
; int nNumber
nNumber		dd ?			; DATA XREF: sub_401389+42w
					; sub_401389+55r ...
		align 20h
; CHAR chText[2048]
chText		db 800h	dup(?)		; DATA XREF: sub_401000+150o start+66o ...
; HINSTANCE hInstance
hInstance	dd ?			; DATA XREF: sub_402BC5+48r start+90w	...
dword_42E3C4	dd ?			; DATA XREF: start+45w
					; sub_405BC6:loc_405D0Fr
; HWND hwnd
hwnd		dd ?			; DATA XREF: sub_401000+19r
					; sub_401434+9r ...
dword_42E3CC	dd ?			; DATA XREF: sub_402BC5+37r
					; sub_402C29+28w
dword_42E3D0	dd ?			; DATA XREF: sub_401000+39r
					; sub_4012E2+6r ...
; SIZE_T dwBytes
dwBytes		dd ?			; DATA XREF: sub_401434+1292r
					; sub_402C29:loc_402CBCr ...
dword_42E3D8	dd ?			; DATA XREF: sub_402C29+1F5w
					; sub_40363A+85r ...
dword_42E3DC	dd ?			; DATA XREF: sub_402C29+1FCw
					; start+22Cr
dword_42E3E0	dd ?			; DATA XREF: sub_402C29+226o
					; sub_4039CC+1BEr
dword_42E3E4	dd ?			; DATA XREF: sub_4039CC+225r
					; sub_4039CC+240r
dword_42E3E8	dd ?			; DATA XREF: sub_40117D+4r
					; sub_4011EF+12r ...
dword_42E3EC	dd ?			; DATA XREF: sub_40117D+22r
					; sub_40117D+64r ...
dword_42E3F0	dd ?			; DATA XREF: sub_401389+9r
		align 8
dword_42E3F8	dd ?			; DATA XREF: sub_40363A+B9r
					; sub_403FE8:loc_404019r ...
		align 10h
dword_42E400	dd ?			; DATA XREF: sub_4038FF+2Er
dword_42E404	dd ?			; DATA XREF: sub_4038FF:loc_403913r
dword_42E408	dd ?			; DATA XREF: sub_401434:loc_401CB0r
		dd 3 dup(?)
dword_42E418	dd ?			; DATA XREF: sub_402E62+37r
		align 10h
dword_42E420	dd ?			; DATA XREF: sub_40480C+67w
					; sub_40480C+441w
		align 20h
dword_42E440	dd ?			; DATA XREF: sub_401434+D2r
					; sub_401434+E8w ...
dword_42E444	dd ?			; DATA XREF: sub_402AF2+8r
					; sub_405BC6:loc_405CA0r
dword_42E448	dd ?			; DATA XREF: sub_401434:loc_401859w
					; sub_401434+1461w ...
dword_42E44C	dd ?			; DATA XREF: sub_4039CC+F3r
					; sub_4039CC+294r ...
dword_42E450	dd ?			; DATA XREF: sub_405A58:loc_405A82w
dword_42E454	dd ?			; DATA XREF: sub_401434:loc_402230w
					; start:loc_4034A5r
		dd ?
dword_42E45C	dd ?			; DATA XREF: sub_40363A+98w
dword_42E460	dd ?			; DATA XREF: sub_402C29+10Fw
					; start:loc_4031D5w ...
dword_42E464	dd ?			; DATA XREF: sub_4042DD+2DEw
dword_42E468	dd ?			; DATA XREF: sub_4038FF+56w
					; sub_4053B8:loc_4053D2r
dword_42E46C	dd ?			; DATA XREF: start:loc_40338Cw
					; start:loc_403548r
dword_42E470	dd ?			; DATA XREF: sub_401434+F0Fr
					; sub_402A3D+10r ...
dword_42E474	dd ?			; DATA XREF: sub_401434+43Aw
					; sub_401434+44Dw ...
dword_42E478	dd ?			; DATA XREF: sub_401434:loc_401F67r
					; start+3Bw ...
		align 10h
dword_42E480	dd ?			; DATA XREF: sub_401434+DAw
					; sub_401434:loc_401528r
		align 1000h
_data		ends

; Section 4. (virtual address 0002F000)
; Virtual size			: 00015000 (  86016.)
; Section size in file		: 00000000 (	  0.)
; Offset to raw	data for section: 00000000
; Flags	C0000080: Bss Readable Writable
; Alignment	: default
; ===========================================================================

; Segment type:	Uninitialized
; Segment permissions: Read/Write
_ndata		segment	para public 'BSS' use32
		assume cs:_ndata
		;org 42F000h
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing
; CHAR dword_42F000[]
dword_42F000	dd 100h	dup(?)		; DATA XREF: sub_40136D+9o
					; sub_401434+2Eo ...
word_42F400	dw ?			; DATA XREF: start+34Bw
					; start:loc_403490w
		align 4
		dd 12FFh dup(?)
; const	CHAR sz
sz		db ?			; DATA XREF: start+76o	start+89r
byte_434001	db 3 dup(?)		; DATA XREF: start+9Eo
		align 400h
; CHAR byte_434400
byte_434400	db ?			; DATA XREF: start+190o start+291o ...
		align 400h
; CHAR Directory[1024]
Directory	db 400h	dup(?)		; DATA XREF: sub_401434+1E3o
					; sub_401434:loc_40176Co ...
; CHAR byte_434C00[1024]
byte_434C00	db 400h	dup(?)		; DATA XREF: sub_402C29+5Bo start+2F0o
; const	CHAR FileName
FileName	db ?			; DATA XREF: sub_4030AE+28o
					; start:loc_4032EEo ...
byte_435001	db ?			; DATA XREF: sub_40363A+45w
byte_435002	db ?			; DATA XREF: sub_40363A+4Cw
		align 400h
; CHAR PathName[1024]
PathName	db 400h	dup(?)		; DATA XREF: sub_4030AE+1o start+1A0o
; CHAR dword_435800[]
dword_435800	dd 100h	dup(?)		; DATA XREF: sub_403560+1Fo
; CHAR ExistingFileName[1024]
ExistingFileName db 400h dup(?)		; DATA XREF: sub_402C29+17o start+372o
; CHAR dword_436000[]
dword_436000	dd 200h	dup(?)		; DATA XREF: sub_402C29+6Do
; CHAR dword_436800[]
dword_436800	dd 3600h dup(?)		; DATA XREF: sub_4039CC+257o
_ndata		ends


		end start

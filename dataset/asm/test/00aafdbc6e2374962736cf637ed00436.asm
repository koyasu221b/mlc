; Format      :	Portable executable for	80386 (PE)
; Imagebase   :	400000
; Section 1. (virtual address 00001000)
; Virtual size			: 00001D94 (   7572.)
; Section size in file		: 00001E00 (   7680.)
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
_text		segment	para public 'CODE' use32
		assume cs:_text
		;org 401000h
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	wWinMain(HINSTANCE hInstance, HINSTANCE	hPrevInstance, LPWSTR lpCmdLine, int nShowCmd)
_wWinMain@16	proc near		; CODE XREF: ___tmainCRTStartup+153p

picce		= INITCOMMONCONTROLSEX ptr -8
hInstance	= dword	ptr  8
hPrevInstance	= dword	ptr  0Ch
lpCmdLine	= dword	ptr  10h
nShowCmd	= dword	ptr  14h

		push	ebp
		mov	ebp, esp
		sub	esp, 8
		lea	eax, [ebp+picce]
		mov	[ebp+picce.dwICC], 0
		push	eax		; picce
		mov	[ebp+picce.dwSize], 8
		mov	[ebp+picce.dwICC], 0FFh
		call	ds:InitCommonControlsEx
		call	sub_401040
		push	0
		call	ds:settingsUI_showDialog
		add	esp, 4
		xor	eax, eax
		mov	esp, ebp
		pop	ebp
		retn	10h
_wWinMain@16	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_401040	proc near		; CODE XREF: wWinMain(x,x,x,x)+25p

pSecurityDescriptor= byte ptr -20h
var_1F		= dword	ptr -1Fh
var_1B		= dword	ptr -1Bh
var_17		= dword	ptr -17h
var_13		= dword	ptr -13h
var_F		= word ptr -0Fh
var_D		= byte ptr -0Dh
MutexAttributes	= _SECURITY_ATTRIBUTES ptr -0Ch

		push	ebp
		mov	ebp, esp
		sub	esp, 20h
		xor	eax, eax
		push	esi
		mov	[ebp+MutexAttributes.lpSecurityDescriptor], eax
		mov	[ebp+MutexAttributes.bInheritHandle], eax
		mov	[ebp+pSecurityDescriptor], al
		mov	[ebp+var_1F], eax
		mov	[ebp+var_1B], eax
		mov	[ebp+var_17], eax
		mov	[ebp+var_13], eax
		mov	[ebp+var_F], ax
		mov	[ebp+var_D], al
		push	1		; dwRevision
		lea	eax, [ebp+pSecurityDescriptor]
		push	eax		; pSecurityDescriptor
		mov	[ebp+MutexAttributes.nLength], 0
		call	ds:InitializeSecurityDescriptor
		push	0		; bDaclDefaulted
		push	0		; pDacl
		push	1		; bDaclPresent
		lea	ecx, [ebp+pSecurityDescriptor]
		push	ecx		; pSecurityDescriptor
		call	ds:SetSecurityDescriptorDacl
		mov	esi, ds:CreateMutexW
		push	offset Name	; "pdf24CreatorMutex"
		push	0		; bInitialOwner
		lea	eax, [ebp+MutexAttributes]
		lea	edx, [ebp+pSecurityDescriptor]
		push	eax		; lpMutexAttributes
		mov	[ebp+MutexAttributes.bInheritHandle], 0
		mov	[ebp+MutexAttributes.lpSecurityDescriptor], edx
		mov	[ebp+MutexAttributes.nLength], 0Ch
		call	esi ; CreateMutexW
		push	offset aGlobalPdf24cre ; "Global\\pdf24CreatorMutex"
		push	0		; bInitialOwner
		lea	ecx, [ebp+MutexAttributes]
		push	ecx		; lpMutexAttributes
		call	esi ; CreateMutexW
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn
sub_401040	endp

; ---------------------------------------------------------------------------
		align 10h
; [00000001 BYTES: COLLAPSED FUNCTION nullsub_1. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_4010E0	proc near		; DATA XREF: .rdata:00403438o
		mov	dword ptr [ecx], offset	off_403288
		jmp	ds:??1exception@std@@UAE@XZ ; std::exception::~exception(void)
sub_4010E0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __thiscall sub_4010F0(void *, char)
sub_4010F0	proc near		; DATA XREF: .rdata:off_403288o

arg_0		= byte ptr  8

		push	ebp
		mov	ebp, esp
		push	esi
		mov	esi, ecx
		mov	dword ptr [esi], offset	off_403288
		call	ds:??1exception@std@@UAE@XZ ; std::exception::~exception(void)
		test	[ebp+arg_0], 1
		jz	short loc_401111
		push	esi		; void *
		call	??3@YAXPAX@Z	; operator delete(void *)
		add	esp, 4

loc_401111:				; CODE XREF: sub_4010F0+16j
		mov	eax, esi
		pop	esi
		pop	ebp
		retn	4
sub_4010F0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_401120	proc near		; DATA XREF: .rdata:00403468o

arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+arg_0]
		push	esi
		push	eax
		mov	esi, ecx
		call	ds:__imp_??0exception@std@@QAE@ABV01@@Z	; std::exception::exception(std::exception const &)
		mov	dword ptr [esi], offset	off_403288
		mov	eax, esi
		pop	esi
		pop	ebp
		retn	4
sub_401120	endp

; [0000000B BYTES: COLLAPSED FUNCTION unknown_libname_1. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000004B BYTES: COLLAPSED FUNCTION _pre_cpp_init. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [000001D1 BYTES: COLLAPSED FUNCTION ___tmainCRTStartup. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [000000BA BYTES: COLLAPSED FUNCTION $LN46. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000000A BYTES: COLLAPSED FUNCTION start. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION __CxxFrameHandler3. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [0000000F BYTES: COLLAPSED FUNCTION __security_check_cookie(x). PRESS	KEYPAD CTRL-"+"	TO EXPAND]
		align 2
; [00000006 BYTES: COLLAPSED FUNCTION operator delete[](void *). PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000004C BYTES: COLLAPSED FUNCTION type_info::`vector deleting destructor'(uint). PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION operator delete(void *). PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION _CxxThrowException. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION std::exception::exception(std::exception const &). PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION std::exception::what(void). PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION operator new(uint). PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [00000042 BYTES: COLLAPSED FUNCTION __CxxUnhandledExceptionFilter(_EXCEPTION_POINTERS	*). PRESS KEYPAD CTRL-"+" TO EXPAND]

; =============== S U B	R O U T	I N E =======================================


sub_4014F0	proc near		; DATA XREF: .rdata:00403154o
		push	offset ?__CxxUnhandledExceptionFilter@@YGJPAU_EXCEPTION_POINTERS@@@Z ; lpTopLevelExceptionFilter
		call	ds:SetUnhandledExceptionFilter
		xor	eax, eax
		retn
sub_4014F0	endp

; [00000006 BYTES: COLLAPSED FUNCTION _amsg_exit. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [000000A1 BYTES: COLLAPSED FUNCTION __onexit.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000017 BYTES: COLLAPSED FUNCTION _atexit. PRESS KEYPAD CTRL-"+" TO	EXPAND]

; =============== S U B	R O U T	I N E =======================================


sub_4015BC	proc near		; CODE XREF: $LN46+81p
		mov	edi, edi
		push	esi
		mov	eax, offset dword_40340C
		mov	esi, offset dword_40340C
		push	edi
		mov	edi, eax
		cmp	eax, esi
		jnb	short loc_4015DF

loc_4015D0:				; CODE XREF: sub_4015BC+21j
		mov	eax, [edi]
		test	eax, eax
		jz	short loc_4015D8
		call	eax

loc_4015D8:				; CODE XREF: sub_4015BC+18j
		add	edi, 4
		cmp	edi, esi
		jb	short loc_4015D0

loc_4015DF:				; CODE XREF: sub_4015BC+12j
		pop	edi
		pop	esi
		retn
sub_4015BC	endp


; =============== S U B	R O U T	I N E =======================================


; void __cdecl sub_4015E2()
sub_4015E2	proc near		; DATA XREF: _pre_cpp_inito
		mov	edi, edi
		push	esi
		mov	eax, offset dword_403414
		mov	esi, offset dword_403414
		push	edi
		mov	edi, eax
		cmp	eax, esi
		jnb	short loc_401605

loc_4015F6:				; CODE XREF: sub_4015E2+21j
		mov	eax, [edi]
		test	eax, eax
		jz	short loc_4015FE
		call	eax

loc_4015FE:				; CODE XREF: sub_4015E2+18j
		add	edi, 4
		cmp	edi, esi
		jb	short loc_4015F6

loc_401605:				; CODE XREF: sub_4015E2+12j
		pop	edi
		pop	esi
		retn
sub_4015E2	endp

; [00000006 BYTES: COLLAPSED FUNCTION _XcptFilter. PRESS KEYPAD	CTRL-"+" TO EXPAND]
		align 10h
; [00000035 BYTES: COLLAPSED FUNCTION __ValidateImageBase. PRESS KEYPAD	CTRL-"+" TO EXPAND]
		align 10h
; [00000044 BYTES: COLLAPSED FUNCTION __FindPESection. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 10h
; [000000BC BYTES: COLLAPSED FUNCTION __IsNonwritableInCurrentImage. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION _initterm. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION _initterm_e. PRESS KEYPAD	CTRL-"+" TO EXPAND]
		align 10h
; [00000045 BYTES: COLLAPSED FUNCTION __SEH_prolog4. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000014 BYTES: COLLAPSED FUNCTION __SEH_epilog4. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000025 BYTES: COLLAPSED FUNCTION __except_handler4. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000028 BYTES: COLLAPSED FUNCTION __setdefaultprecision. PRESS KEYPAD CTRL-"+" TO EXPAND]

; =============== S U B	R O U T	I N E =======================================


sub_401816	proc near		; CODE XREF: $LN46+86p
					; DATA XREF: $LN46+94o
		xor	eax, eax
		retn
sub_401816	endp

; [0000009B BYTES: COLLAPSED FUNCTION ___security_init_cookie. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000106 BYTES: COLLAPSED FUNCTION ___report_gsfailure. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [0000005E BYTES: COLLAPSED FUNCTION __ArrayUnwind(void *,uint,int,void (*)(void *)). PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000063 BYTES: COLLAPSED FUNCTION `eh vector destructor iterator'(void *,uint,int,void (*)(void *)). PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 4
; [00000006 BYTES: COLLAPSED FUNCTION terminate(void). PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION _unlock. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION __dllonexit. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION _lock. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION _except_handler4_common. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION _invoke_watson. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION _controlfp_s. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION _crt_debugger_hook. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION type_info::_type_info_dtor_internal_method(void).	PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_401AC0	proc near		; CODE XREF: sub_401B10+5Fp
					; sub_401B80+3Cp ...
		push	esi
		mov	esi, eax
		test	esi, esi
		jz	short loc_401B0D
		test	edx, edx
		jz	short loc_401B0D
		cmp	edx, esi
		jnb	short loc_401AEF
		test	ecx, ecx
		jle	short loc_401B0D
		mov	eax, edx
		sub	esi, edx
		jmp	short loc_401AE0
; ---------------------------------------------------------------------------
		align 10h

loc_401AE0:				; CODE XREF: sub_401AC0+17j
					; sub_401AC0+2Bj
		mov	dx, [esi+eax]
		mov	[eax], dx
		add	eax, 2
		dec	ecx
		jnz	short loc_401AE0
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_401AEF:				; CODE XREF: sub_401AC0+Dj
		dec	ecx
		js	short loc_401B0D
		lea	eax, [edx+ecx*2]
		sub	esi, edx
		jmp	short loc_401B00
; ---------------------------------------------------------------------------
		align 10h

loc_401B00:				; CODE XREF: sub_401AC0+37j
					; sub_401AC0+4Bj
		mov	dx, [eax+esi]
		mov	[eax], dx
		sub	eax, 2
		dec	ecx
		jns	short loc_401B00

loc_401B0D:				; CODE XREF: sub_401AC0+5j
					; sub_401AC0+9j ...
		pop	esi
		retn
sub_401AC0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_401B10	proc near		; CODE XREF: sub_402290+40p
					; sub_402290+AFp ...

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch

		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+arg_0]
		push	esi
		mov	esi, [ebp+arg_4]
		push	edi
		mov	edi, ecx
		test	esi, esi
		jns	short loc_401B45
		test	ebx, ebx
		jz	short loc_401B43
		mov	eax, ebx
		lea	edx, [eax+2]
		jmp	short loc_401B30
; ---------------------------------------------------------------------------
		align 10h

loc_401B30:				; CODE XREF: sub_401B10+1Bj
					; sub_401B10+29j
		mov	cx, [eax]
		add	eax, 2
		test	cx, cx
		jnz	short loc_401B30
		sub	eax, edx
		sar	eax, 1
		mov	esi, eax
		jmp	short loc_401B45
; ---------------------------------------------------------------------------

loc_401B43:				; CODE XREF: sub_401B10+14j
		xor	esi, esi

loc_401B45:				; CODE XREF: sub_401B10+10j
					; sub_401B10+31j
		xor	ecx, ecx
		lea	eax, [esi+1]
		mov	edx, 2
		mul	edx
		seto	cl
		neg	ecx
		or	ecx, eax
		push	ecx
		call	unknown_libname_1 ; Microsoft VisualC 2-11/net runtime
		mov	[edi], eax
		mov	edx, eax
		add	esp, 4
		mov	ecx, esi
		mov	eax, ebx
		mov	[edi+4], esi
		mov	[edi+8], esi
		call	sub_401AC0
		mov	eax, edi
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn	8
sub_401B10	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_401B80	proc near		; CODE XREF: sub_401EC0+3Fp
					; sub_401EC0+5Ap ...

arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		push	esi
		push	edi
		mov	edi, [ebp+arg_0]
		mov	eax, [edi+4]
		mov	esi, ecx
		xor	ecx, ecx
		inc	eax
		mov	edx, 2
		mul	edx
		seto	cl
		neg	ecx
		or	ecx, eax
		push	ecx
		call	unknown_libname_1 ; Microsoft VisualC 2-11/net runtime
		mov	[esi], eax
		mov	ecx, [edi+4]
		mov	[esi+4], ecx
		mov	edx, [edi+4]
		mov	[esi+8], edx
		mov	ecx, [edi+4]
		mov	edx, eax
		mov	eax, [edi]
		add	esp, 4
		call	sub_401AC0
		pop	edi
		mov	eax, esi
		pop	esi
		pop	ebp
		retn	4
sub_401B80	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_401BD0	proc near		; CODE XREF: sub_401EC0+D0p
					; sub_401EC0+DCp ...
		push	esi
		mov	esi, ecx
		mov	eax, [esi]
		push	eax		; void *
		call	??_V@YAXPAX@Z	; operator delete[](void *)
		xor	eax, eax
		add	esp, 4
		mov	[esi], eax
		mov	[esi+4], eax
		mov	[esi+8], eax
		pop	esi
		retn
sub_401BD0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_401BF0	proc near		; CODE XREF: sub_401C60+Bp
					; sub_401C90+54p

arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		push	edi
		mov	edi, ecx
		mov	eax, [edi+8]
		mov	ecx, [ebp+arg_0]
		cmp	ecx, eax
		jle	short loc_401C4B
		lea	eax, [eax+eax*2]
		cdq
		push	ebx
		sub	eax, edx
		push	esi
		mov	esi, eax
		sar	esi, 1
		cmp	esi, ecx
		jge	short loc_401C12
		mov	esi, ecx

loc_401C12:				; CODE XREF: sub_401BF0+1Ej
		xor	ecx, ecx
		lea	eax, [esi+1]
		mov	edx, 2
		mul	edx
		seto	cl
		neg	ecx
		or	ecx, eax
		push	ecx
		call	unknown_libname_1 ; Microsoft VisualC 2-11/net runtime
		mov	ecx, [edi+4]
		mov	ebx, eax
		mov	eax, [edi]
		mov	edx, ebx
		call	sub_401AC0
		mov	eax, [edi]
		push	eax		; void *
		call	??_V@YAXPAX@Z	; operator delete[](void *)
		add	esp, 8
		mov	[edi+8], esi
		pop	esi
		mov	[edi], ebx
		pop	ebx

loc_401C4B:				; CODE XREF: sub_401BF0+Ej
		pop	edi
		pop	ebp
		retn	4
sub_401BF0	endp


; =============== S U B	R O U T	I N E =======================================


sub_401C50	proc near		; CODE XREF: sub_402290+73p
					; sub_402500+9Bp ...
		mov	eax, [ecx+4]
		mov	edx, [ecx]
		push	esi
		xor	esi, esi
		mov	[edx+eax*2], si
		mov	eax, [ecx]
		pop	esi
		retn
sub_401C50	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_401C60	proc near		; CODE XREF: sub_401EC0+A8p

arg_0		= word ptr  8

		push	ebp
		mov	ebp, esp
		push	esi
		mov	esi, ecx
		mov	eax, [esi+4]
		inc	eax
		push	eax
		call	sub_401BF0
		mov	ecx, [esi+4]
		mov	edx, [esi]
		mov	ax, [ebp+arg_0]
		mov	[edx+ecx*2], ax
		inc	dword ptr [esi+4]
		mov	eax, esi
		pop	esi
		pop	ebp
		retn	4
sub_401C60	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_401C90	proc near		; CODE XREF: sub_401EC0+AFp

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch

		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+arg_4]
		mov	edx, [ebp+arg_0]
		push	ebx
		push	esi
		push	edi
		mov	edi, ecx
		test	eax, eax
		js	short loc_401CA9
		mov	ecx, [edx+4]
		cmp	eax, ecx
		jle	short loc_401CAE

loc_401CA9:				; CODE XREF: sub_401C90+10j
		mov	ecx, [edx+4]
		mov	eax, ecx

loc_401CAE:				; CODE XREF: sub_401C90+17j
		mov	esi, [edx]
		xor	ebx, ebx
		mov	[esi+ecx*2], bx
		mov	ebx, [edx]
		mov	esi, eax
		test	eax, eax
		jns	short loc_401CD8
		test	ebx, ebx
		jz	short loc_401CFD
		mov	eax, ebx
		lea	edx, [eax+2]

loc_401CC7:				; CODE XREF: sub_401C90+40j
		mov	cx, [eax]
		add	eax, 2
		test	cx, cx
		jnz	short loc_401CC7
		sub	eax, edx
		sar	eax, 1
		mov	esi, eax

loc_401CD8:				; CODE XREF: sub_401C90+2Cj
		test	esi, esi
		jz	short loc_401CFD
		mov	eax, [edi+4]
		add	eax, esi
		push	eax
		mov	ecx, edi
		call	sub_401BF0
		mov	ecx, [edi+4]
		mov	edx, [edi]
		lea	edx, [edx+ecx*2]
		mov	ecx, esi
		mov	eax, ebx
		call	sub_401AC0
		add	[edi+4], esi

loc_401CFD:				; CODE XREF: sub_401C90+30j
					; sub_401C90+4Aj
		mov	eax, edi
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn	8
sub_401C90	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_401D10	proc near		; CODE XREF: sub_401E40+35p

arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		mov	edx, [ebp+arg_0]
		mov	eax, ecx
		cmp	edx, [eax+4]
		jge	short loc_401D26
		test	edx, edx
		jns	short loc_401D23
		xor	edx, edx

loc_401D23:				; CODE XREF: sub_401D10+Fj
		mov	[eax+4], edx

loc_401D26:				; CODE XREF: sub_401D10+Bj
		pop	ebp
		retn	4
sub_401D10	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_401D30	proc near		; CODE XREF: sub_401E80+27p

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch

		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+arg_4]
		push	esi
		mov	esi, [ebp+arg_0]
		push	edi
		mov	edi, ecx
		cmp	esi, ebx
		jg	short loc_401D71
		test	ebx, ebx
		js	short loc_401D71
		mov	ecx, [edi+4]
		cmp	esi, ecx
		jge	short loc_401D71
		test	esi, esi
		jns	short loc_401D53
		xor	esi, esi

loc_401D53:				; CODE XREF: sub_401D30+1Fj
		cmp	ebx, ecx
		jl	short loc_401D5A
		lea	ebx, [ecx-1]

loc_401D5A:				; CODE XREF: sub_401D30+25j
		mov	eax, [edi]
		sub	ecx, ebx
		lea	edx, [eax+esi*2]
		dec	ecx
		lea	eax, [eax+ebx*2+2]
		call	sub_401AC0
		sub	esi, ebx
		dec	esi
		add	[edi+4], esi

loc_401D71:				; CODE XREF: sub_401D30+10j
					; sub_401D30+14j ...
		mov	eax, edi
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn	8
sub_401D30	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_401D80	proc near		; CODE XREF: sub_402290+C3p
					; sub_402290+D7p ...

arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		mov	eax, [ecx+4]
		mov	edx, [ecx]
		push	esi
		xor	esi, esi
		mov	[edx+eax*2], si
		mov	edx, [ebp+arg_0]
		mov	eax, [ecx]
		pop	esi

loc_401D95:				; CODE XREF: sub_401D80+35j
		mov	cx, [eax]
		cmp	cx, [edx]
		jnz	short loc_401DC4
		test	cx, cx
		jz	short loc_401DB7
		mov	cx, [eax+2]
		cmp	cx, [edx+2]
		jnz	short loc_401DC4
		add	eax, 4
		add	edx, 4
		test	cx, cx
		jnz	short loc_401D95

loc_401DB7:				; CODE XREF: sub_401D80+20j
		xor	eax, eax
		xor	ecx, ecx
		test	eax, eax
		setz	al
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_401DC4:				; CODE XREF: sub_401D80+1Bj
					; sub_401D80+2Aj
		sbb	eax, eax
		sbb	eax, 0FFFFFFFFh
		xor	ecx, ecx
		test	eax, eax
		setz	al
		pop	ebp
		retn	4
sub_401D80	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_401DE0	proc near		; CODE XREF: sub_401E40+14p
					; sub_401E40+1Fp

arg_0		= word ptr  8

		push	ebp
		mov	ebp, esp
		mov	eax, [ecx+4]
		dec	eax
		js	short loc_401DFD
		mov	ecx, [ecx]
		mov	dx, [ebp+arg_0]
		lea	ecx, [ecx+eax*2]

loc_401DF2:				; CODE XREF: sub_401DE0+1Bj
		cmp	[ecx], dx
		jz	short loc_401E00
		sub	ecx, 2
		dec	eax
		jns	short loc_401DF2

loc_401DFD:				; CODE XREF: sub_401DE0+7j
		or	eax, 0FFFFFFFFh

loc_401E00:				; CODE XREF: sub_401DE0+15j
		pop	ebp
		retn	4
sub_401DE0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_401E10	proc near		; CODE XREF: sub_401E80+Bp
					; sub_401E80+18p

arg_0		= word ptr  8

		push	ebp
		mov	ebp, esp
		cmp	dword ptr [ecx+4], 0
		jle	short loc_401E2D
		mov	eax, [ecx]
		mov	cx, [eax]
		cmp	cx, [ebp+arg_0]
		jnz	short loc_401E2D
		mov	eax, 1
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_401E2D:				; CODE XREF: sub_401E10+7j
					; sub_401E10+12j
		xor	eax, eax
		pop	ebp
		retn	4
sub_401E10	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_401E40	proc near		; CODE XREF: sub_401EC0+7Ap

arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		push	esi
		mov	esi, [ebp+arg_0]
		push	edi
		jmp	short loc_401E50
; ---------------------------------------------------------------------------
		align 10h

loc_401E50:				; CODE XREF: sub_401E40+8j
					; sub_401E40+3Aj
		push	2Fh
		mov	ecx, esi
		call	sub_401DE0
		push	5Ch
		mov	ecx, esi
		mov	edi, eax
		call	sub_401DE0
		cmp	edi, eax
		jle	short loc_401E6A
		mov	eax, edi

loc_401E6A:				; CODE XREF: sub_401E40+26j
		mov	ecx, [esi+4]
		dec	ecx
		cmp	eax, ecx
		jnz	short loc_401E7C
		push	ecx
		mov	ecx, esi
		call	sub_401D10
		jmp	short loc_401E50
; ---------------------------------------------------------------------------

loc_401E7C:				; CODE XREF: sub_401E40+30j
		pop	edi
		pop	esi
		pop	ebp
		retn
sub_401E40	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_401E80	proc near		; CODE XREF: sub_401EC0+83p

arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		push	esi
		mov	esi, [ebp+arg_0]

loc_401E87:				; CODE XREF: sub_401E80+2Cj
		push	5Ch
		mov	ecx, esi
		call	sub_401E10
		test	al, al
		jnz	short loc_401EA1
		push	2Fh
		mov	ecx, esi
		call	sub_401E10
		test	al, al
		jz	short loc_401EAE

loc_401EA1:				; CODE XREF: sub_401E80+12j
		push	0
		push	0
		mov	ecx, esi
		call	sub_401D30
		jmp	short loc_401E87
; ---------------------------------------------------------------------------

loc_401EAE:				; CODE XREF: sub_401E80+1Fj
		pop	esi
		pop	ebp
		retn
sub_401E80	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_401EC0	proc near		; CODE XREF: sub_402260+10p

var_34		= byte ptr -34h
var_28		= byte ptr -28h
var_1C		= byte ptr -1Ch
var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h
arg_C		= dword	ptr  14h

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset __ehhandler$?_RunAndWait@_StructuredTaskCollection@details@Concurrency@@QAG?AW4_TaskCollectionStatus@23@PAV_UnrealizedChore@23@@Z
		mov	eax, large fs:0
		push	eax
		sub	esp, 28h
		push	esi
		mov	eax, ___security_cookie
		xor	eax, ebp
		push	eax
		lea	eax, [ebp+var_C]
		mov	large fs:0, eax
		mov	eax, [ebp+arg_4]
		mov	[ebp+var_10], 0
		cmp	dword ptr [eax+4], 0
		jnz	short loc_401F16
		mov	eax, [ebp+arg_8]
		mov	esi, [ebp+arg_0]
		push	eax
		mov	ecx, esi
		call	sub_401B80
		mov	eax, esi
		mov	ecx, [ebp+var_C]
		mov	large fs:0, ecx
		pop	ecx
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_401F16:				; CODE XREF: sub_401EC0+34j
		push	eax
		lea	ecx, [ebp+var_34]
		call	sub_401B80
		mov	ecx, [ebp+arg_8]
		push	ecx
		lea	ecx, [ebp+var_28]
		mov	[ebp+var_4], 1
		call	sub_401B80
		lea	edx, [ebp+var_34]
		push	edx
		mov	byte ptr [ebp+var_4], 2
		call	sub_401E40
		lea	eax, [ebp+var_28]
		push	eax
		call	sub_401E80
		add	esp, 8
		lea	ecx, [ebp+var_34]
		push	ecx
		lea	ecx, [ebp+var_1C]
		call	sub_401B80
		mov	eax, [ebp+arg_C]
		push	0FFFFFFFFh
		lea	edx, [ebp+var_28]
		push	edx
		push	eax
		lea	ecx, [ebp+var_1C]
		mov	byte ptr [ebp+var_4], 3
		call	sub_401C60
		mov	ecx, eax
		call	sub_401C90
		mov	esi, [ebp+arg_0]
		lea	ecx, [ebp+var_1C]
		push	ecx
		mov	ecx, esi
		call	sub_401B80
		lea	ecx, [ebp+var_1C]
		mov	[ebp+var_10], 1
		mov	byte ptr [ebp+var_4], 2
		call	sub_401BD0
		lea	ecx, [ebp+var_28]
		mov	byte ptr [ebp+var_4], 1
		call	sub_401BD0
		lea	ecx, [ebp+var_34]
		mov	byte ptr [ebp+var_4], 0
		call	sub_401BD0
		mov	eax, esi
		mov	ecx, [ebp+var_C]
		mov	large fs:0, ecx
		pop	ecx
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn
sub_401EC0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_401FC0	proc near		; CODE XREF: sub_4020C0+66p

var_C		= dword	ptr -0Ch
arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		mov	ecx, [ebp+arg_0]
		sub	esp, 0Ch
		xor	eax, eax
		test	ecx, ecx
		jz	short loc_402014
		cmp	ecx, 15555555h
		ja	short loc_401FEB
		lea	eax, [ecx+ecx*2]
		add	eax, eax
		add	eax, eax
		push	eax		; unsigned int
		call	??2@YAPAXI@Z	; operator new(uint)
		add	esp, 4
		test	eax, eax
		jnz	short loc_402014

loc_401FEB:				; CODE XREF: sub_401FC0+15j
		lea	ecx, [ebp+arg_0]
		push	ecx
		lea	ecx, [ebp+var_C]
		mov	[ebp+arg_0], 0
		call	ds:??0exception@std@@QAE@ABQBD@Z ; std::exception::exception(char const	* const	&)
		push	offset dword_403434
		lea	edx, [ebp+var_C]
		push	edx
		mov	[ebp+var_C], offset off_403288
		call	_CxxThrowException
; ---------------------------------------------------------------------------

loc_402014:				; CODE XREF: sub_401FC0+Dj
					; sub_401FC0+29j
		mov	esp, ebp
		pop	ebp
		retn	4
sub_401FC0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_402020	proc near		; CODE XREF: sub_4020C0+84p

var_14		= dword	ptr -14h
var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset sub_402B51
		mov	eax, large fs:0
		push	eax
		sub	esp, 8
		push	ebx
		push	esi
		push	edi
		mov	eax, ___security_cookie
		xor	eax, ebp
		push	eax
		lea	eax, [ebp+var_C]
		mov	large fs:0, eax
		mov	[ebp+var_10], esp
		mov	esi, [ebp+arg_8]
		mov	edi, [ebp+arg_0]
		xor	ebx, ebx
		mov	[ebp+var_14], esi
		mov	[ebp+var_4], ebx
		lea	esp, [esp+0]

loc_402060:				; CODE XREF: sub_402020+64j
		cmp	edi, [ebp+arg_4]
		jz	short loc_4020A7
		mov	[ebp+arg_0], esi
		mov	byte ptr [ebp+var_4], 1
		cmp	esi, ebx
		jz	short loc_402078
		push	edi
		mov	ecx, esi
		call	sub_401B80

loc_402078:				; CODE XREF: sub_402020+4Ej
		add	esi, 0Ch
		mov	byte ptr [ebp+var_4], bl
		mov	[ebp+arg_8], esi
		add	edi, 0Ch
		jmp	short loc_402060
; ---------------------------------------------------------------------------

loc_402086:				; DATA XREF: .rdata:0040355Co
		mov	esi, [ebp+var_14]
		mov	edi, [ebp+arg_8]
		cmp	esi, edi
		jz	short loc_40209E

loc_402090:				; CODE XREF: sub_402020+7Cj
		mov	ecx, esi
		call	sub_401BD0
		add	esi, 0Ch
		cmp	esi, edi
		jnz	short loc_402090

loc_40209E:				; CODE XREF: sub_402020+6Ej
		xor	ebx, ebx
		push	ebx
		push	ebx
		call	_CxxThrowException
; ---------------------------------------------------------------------------

loc_4020A7:				; CODE XREF: sub_402020+43j
		mov	eax, esi
		mov	ecx, [ebp+var_C]
		mov	large fs:0, ecx
		pop	ecx
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
sub_402020	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_4020C0	proc near		; CODE XREF: sub_4021E0+6Cp
					; sub_402500+56p

var_18		= dword	ptr -18h
var_14		= dword	ptr -14h
var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4
arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset sub_402B70
		mov	eax, large fs:0
		push	eax
		sub	esp, 0Ch
		push	ebx
		push	esi
		push	edi
		mov	eax, ___security_cookie
		xor	eax, ebp
		push	eax
		lea	eax, [ebp+var_C]
		mov	large fs:0, eax
		mov	[ebp+var_10], esp
		mov	esi, ecx
		mov	ebx, [ebp+arg_0]
		cmp	ebx, 15555555h
		jbe	short loc_402103
		push	offset aVectorTTooLong ; "vector<T> too	long"
		call	ds:?_Xlength_error@std@@YAXPBD@Z ; std::_Xlength_error(char const *)

loc_402103:				; CODE XREF: sub_4020C0+36j
		mov	ecx, [esi+8]
		sub	ecx, [esi]
		mov	eax, 2AAAAAABh
		imul	ecx
		sar	edx, 1
		mov	eax, edx
		shr	eax, 1Fh
		add	eax, edx
		cmp	eax, ebx
		jnb	loc_4021AA
		lea	edi, [esi+0Ch]
		push	ebx
		mov	ecx, edi
		call	sub_401FC0
		mov	ebx, [ebp+arg_0]
		mov	ecx, [esi+4]
		mov	edx, [esi]
		push	ebx
		push	0
		push	edi
		push	eax
		push	ecx
		push	edx
		mov	[ebp+var_18], eax
		mov	[ebp+var_4], 0
		call	sub_402020
		mov	ecx, [esi+4]
		mov	ebx, [esi]
		mov	[ebp+var_14], ecx
		sub	ecx, ebx
		mov	eax, 2AAAAAABh
		imul	ecx
		sar	edx, 1
		mov	edi, edx
		shr	edi, 1Fh
		add	esp, 18h
		add	edi, edx
		mov	[ebp+var_4], 0FFFFFFFFh
		test	ebx, ebx
		jz	short loc_402190
		cmp	ebx, [ebp+var_14]
		jz	short loc_402185

loc_402176:				; CODE XREF: sub_4020C0+C3j
		mov	ecx, ebx
		call	sub_401BD0
		add	ebx, 0Ch
		cmp	ebx, [ebp+var_14]
		jnz	short loc_402176

loc_402185:				; CODE XREF: sub_4020C0+B4j
		mov	ecx, [esi]
		push	ecx		; void *
		call	??3@YAXPAX@Z	; operator delete(void *)
		add	esp, 4

loc_402190:				; CODE XREF: sub_4020C0+AFj
		mov	eax, [ebp+arg_0]
		lea	edx, [eax+eax*2]
		mov	eax, [ebp+var_18]
		lea	ecx, [eax+edx*4]
		lea	edx, [edi+edi*2]
		mov	[esi+8], ecx
		lea	ecx, [eax+edx*4]
		mov	[esi+4], ecx
		mov	[esi], eax

loc_4021AA:				; CODE XREF: sub_4020C0+5Aj
		mov	ecx, [ebp+var_C]
		mov	large fs:0, ecx
		pop	ecx
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
sub_4020C0	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: noreturn

sub_4021BE	proc near		; DATA XREF: .rdata:004035BCo
		mov	edx, [ebp-18h]
		push	edx		; void *
		call	??3@YAXPAX@Z	; operator delete(void *)
		add	esp, 4
		push	0
		push	0
		call	_CxxThrowException
sub_4021BE	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_4021E0	proc near		; CODE XREF: sub_402440+52p
					; sub_402440+7Fp

arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		mov	edx, [ecx+4]
		push	esi
		push	edi
		mov	edi, [ecx]
		sub	edx, edi
		mov	eax, 2AAAAAABh
		imul	edx
		mov	eax, [ebp+arg_0]
		sar	edx, 1
		mov	esi, edx
		shr	esi, 1Fh
		add	esi, edx
		mov	edx, 15555555h
		sub	edx, eax
		cmp	edx, esi
		jnb	short loc_402215
		push	offset aVectorTTooLong ; "vector<T> too	long"
		call	ds:?_Xlength_error@std@@YAXPBD@Z ; std::_Xlength_error(char const *)

loc_402215:				; CODE XREF: sub_4021E0+28j
		mov	edx, [ecx+8]
		add	esi, eax
		sub	edx, edi
		mov	eax, 2AAAAAABh
		imul	edx
		sar	edx, 1
		mov	eax, edx
		shr	eax, 1Fh
		add	eax, edx
		cmp	esi, eax
		jbe	short loc_402251
		mov	edx, eax
		shr	edx, 1
		mov	edi, 15555555h
		sub	edi, edx
		cmp	edi, eax
		jnb	short loc_402243
		xor	eax, eax
		jmp	short loc_402245
; ---------------------------------------------------------------------------

loc_402243:				; CODE XREF: sub_4021E0+5Dj
		add	eax, edx

loc_402245:				; CODE XREF: sub_4021E0+61j
		cmp	eax, esi
		jnb	short loc_40224B
		mov	eax, esi

loc_40224B:				; CODE XREF: sub_4021E0+67j
		push	eax
		call	sub_4020C0

loc_402251:				; CODE XREF: sub_4021E0+4Ej
		pop	edi
		pop	esi
		pop	ebp
		retn	4
sub_4021E0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_402260	proc near		; CODE XREF: sub_402290+56p
					; sub_402500+7Ep ...

var_4		= dword	ptr -4

		push	ebp
		mov	ebp, esp
		push	ecx
		push	5Ch
		push	eax
		push	ecx
		push	esi
		mov	[ebp+var_4], 0
		call	sub_401EC0
		add	esp, 10h
		mov	eax, esi
		mov	esp, ebp
		pop	ebp
		retn
sub_402260	endp

; ---------------------------------------------------------------------------
		align 10h
; START	OF FUNCTION CHUNK FOR sub_402CE0

loc_402280:				; CODE XREF: sub_402CE0+3j
		push	ecx		; lpCriticalSection
		call	ds:DeleteCriticalSection
		retn
; END OF FUNCTION CHUNK	FOR sub_402CE0
; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_402290	proc near		; CODE XREF: sub_402500+4Bp

var_284		= byte ptr -284h
var_278		= byte ptr -278h
var_26C		= byte ptr -26Ch
FindFileData	= _WIN32_FIND_DATAW ptr	-260h
var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h
arg_C		= dword	ptr  14h

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset sub_402BB1
		mov	eax, large fs:0
		push	eax
		sub	esp, 278h
		mov	eax, ___security_cookie
		xor	eax, ebp
		mov	[ebp+var_10], eax
		push	ebx
		push	esi
		push	edi
		push	eax
		lea	eax, [ebp+var_C]
		mov	large fs:0, eax
		mov	esi, [ebp+arg_0]
		push	0FFFFFFFFh
		push	offset asc_4032C0 ; "*"
		lea	ecx, [ebp+var_278]
		xor	edi, edi
		call	sub_401B10
		mov	ecx, esi
		lea	eax, [ebp+var_278]
		lea	esi, [ebp+var_284]
		mov	[ebp+var_4], edi
		call	sub_402260
		lea	ecx, [ebp+var_278]
		mov	byte ptr [ebp+var_4], 2
		call	sub_401BD0
		lea	eax, [ebp+FindFileData]
		push	eax		; lpFindFileData
		mov	ecx, esi
		call	sub_401C50
		push	eax		; lpFileName
		call	ds:FindFirstFileW
		mov	esi, eax
		cmp	esi, 0FFFFFFFFh
		jz	loc_4023A2
		mov	ebx, [ebp+arg_C]
		lea	ecx, [ecx+0]

loc_402320:				; CODE XREF: sub_402290+109j
		mov	eax, [ebp+FindFileData.dwFileAttributes]
		test	[ebp+arg_8], eax
		jnz	short loc_402380
		test	[ebp+arg_4], eax
		jz	short loc_402380
		push	0FFFFFFFFh
		lea	eax, [ebp+FindFileData.cFileName]
		push	eax
		lea	ecx, [ebp+var_26C]
		call	sub_401B10
		push	offset dword_4032A0
		lea	ecx, [ebp+var_26C]
		mov	byte ptr [ebp+var_4], 3
		call	sub_401D80
		test	al, al
		jnz	short loc_402371
		push	offset a__	; ".."
		lea	ecx, [ebp+var_26C]
		call	sub_401D80
		test	al, al
		jnz	short loc_402371
		inc	edi

loc_402371:				; CODE XREF: sub_402290+CAj
					; sub_402290+DEj
		lea	ecx, [ebp+var_26C]
		mov	byte ptr [ebp+var_4], 2
		call	sub_401BD0

loc_402380:				; CODE XREF: sub_402290+99j
					; sub_402290+9Ej
		cmp	ebx, 0FFFFFFFFh
		jz	short loc_402389
		cmp	ebx, edi
		jle	short loc_40239B

loc_402389:				; CODE XREF: sub_402290+F3j
		lea	ecx, [ebp+FindFileData]
		push	ecx		; lpFindFileData
		push	esi		; hFindFile
		call	ds:FindNextFileW
		test	eax, eax
		jnz	short loc_402320

loc_40239B:				; CODE XREF: sub_402290+F7j
		push	esi		; hFindFile
		call	ds:FindClose

loc_4023A2:				; CODE XREF: sub_402290+84j
		lea	ecx, [ebp+var_284]
		mov	[ebp+var_4], 0FFFFFFFFh
		call	sub_401BD0
		mov	eax, edi
		mov	ecx, [ebp+var_C]
		mov	large fs:0, ecx
		pop	ecx
		pop	edi
		pop	esi
		pop	ebx
		mov	ecx, [ebp+var_10]
		xor	ecx, ebp
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	esp, ebp
		pop	ebp
		retn
sub_402290	endp

; ---------------------------------------------------------------------------
		align 10h
; START	OF FUNCTION CHUNK FOR sub_402CB0

loc_4023E0:				; CODE XREF: sub_402CB0:loc_402430j
		push	edi
		mov	edi, ecx
		cmp	dword ptr [edi], 0
		jz	short loc_40241B
		push	ebx
		push	esi
		call	ds:?_Orphan_all@_Container_base0@std@@QAEXXZ ; std::_Container_base0::_Orphan_all(void)
		mov	ebx, [edi+4]
		mov	esi, [edi]
		cmp	esi, ebx
		jz	short loc_40240E
		lea	esp, [esp+0]

loc_402400:				; CODE XREF: sub_402CB0-8A4j
		mov	ecx, esi
		call	sub_401BD0
		add	esi, 0Ch
		cmp	esi, ebx
		jnz	short loc_402400

loc_40240E:				; CODE XREF: sub_402CB0-8B9j
		mov	eax, [edi]
		push	eax		; void *
		call	??3@YAXPAX@Z	; operator delete(void *)
		add	esp, 4
		pop	esi
		pop	ebx

loc_40241B:				; CODE XREF: sub_402CB0-8CAj
		xor	eax, eax
		mov	[edi], eax
		mov	[edi+4], eax
		mov	[edi+8], eax
		pop	edi
		retn
; END OF FUNCTION CHUNK	FOR sub_402CB0
; ---------------------------------------------------------------------------
		align 10h
; START	OF FUNCTION CHUNK FOR sub_402CB0

loc_402430:				; CODE XREF: sub_402CB0+3j
					; sub_402CE8+6j
		jmp	loc_4023E0
; END OF FUNCTION CHUNK	FOR sub_402CB0
; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_402440	proc near		; CODE XREF: sub_402500+15Fp

var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4
arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset sub_402C02
		mov	eax, large fs:0
		push	eax
		push	ecx
		push	esi
		push	edi
		mov	eax, ___security_cookie
		xor	eax, ebp
		push	eax
		lea	eax, [ebp+var_C]
		mov	large fs:0, eax
		mov	edi, ecx
		mov	ecx, [edi+4]
		mov	esi, [ebp+arg_0]
		cmp	esi, ecx
		jnb	short loc_4024B6
		mov	eax, [edi]
		cmp	eax, esi
		ja	short loc_4024B6
		sub	esi, eax
		mov	eax, 2AAAAAABh
		imul	esi
		sar	edx, 1
		mov	esi, edx
		shr	esi, 1Fh
		add	esi, edx
		cmp	ecx, [edi+8]
		jnz	short loc_402497
		push	1
		mov	ecx, edi
		call	sub_4021E0

loc_402497:				; CODE XREF: sub_402440+4Cj
		mov	ecx, [edi]
		lea	eax, [esi+esi*2]
		lea	eax, [ecx+eax*4]
		mov	ecx, [edi+4]
		mov	[ebp+arg_0], ecx
		mov	[ebp+var_10], ecx
		mov	[ebp+var_4], 0
		test	ecx, ecx
		jz	short loc_4024DE
		push	eax
		jmp	short loc_4024D9
; ---------------------------------------------------------------------------

loc_4024B6:				; CODE XREF: sub_402440+2Fj
					; sub_402440+35j
		cmp	ecx, [edi+8]
		jnz	short loc_4024C4
		push	1
		mov	ecx, edi
		call	sub_4021E0

loc_4024C4:				; CODE XREF: sub_402440+79j
		mov	ecx, [edi+4]
		mov	[ebp+arg_0], ecx
		mov	[ebp+var_10], ecx
		mov	[ebp+var_4], 1
		test	ecx, ecx
		jz	short loc_4024DE
		push	esi

loc_4024D9:				; CODE XREF: sub_402440+74j
		call	sub_401B80

loc_4024DE:				; CODE XREF: sub_402440+71j
					; sub_402440+96j
		add	dword ptr [edi+4], 0Ch
		mov	ecx, [ebp+var_C]
		mov	large fs:0, ecx
		pop	ecx
		pop	edi
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn	4
sub_402440	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_402500	proc near		; CODE XREF: sub_402700+58p

var_2A8		= byte ptr -2A8h
var_29C		= byte ptr -29Ch
var_290		= byte ptr -290h
var_284		= byte ptr -284h
var_278		= dword	ptr -278h
var_274		= dword	ptr -274h
var_270		= byte ptr -270h
var_264		= dword	ptr -264h
FindFileData	= _WIN32_FIND_DATAW ptr	-260h
var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= byte ptr  10h
arg_C		= dword	ptr  14h

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset sub_402C85
		mov	eax, large fs:0
		push	eax
		sub	esp, 29Ch
		mov	eax, ___security_cookie
		xor	eax, ebp
		mov	[ebp+var_10], eax
		push	ebx
		push	esi
		push	edi
		push	eax
		lea	eax, [ebp+var_C]
		mov	large fs:0, eax
		mov	eax, [ebp+arg_C]
		mov	edi, [ebp+arg_0]
		mov	esi, [ebp+arg_4]
		push	0FFFFFFFFh
		push	eax
		push	0FFFFFFFFh
		xor	ebx, ebx
		push	edi
		mov	[ebp+var_274], esi
		mov	[ebp+var_264], ebx
		call	sub_402290
		add	esp, 10h
		push	eax
		mov	ecx, esi
		call	sub_4020C0
		push	0FFFFFFFFh
		push	offset asc_4032C0 ; "*"
		lea	ecx, [ebp+var_284]
		call	sub_401B10
		lea	eax, [ebp+var_284]
		mov	ecx, edi
		lea	esi, [ebp+var_290]
		mov	[ebp+var_4], ebx
		call	sub_402260
		lea	ecx, [ebp+var_284]
		mov	byte ptr [ebp+var_4], 2
		call	sub_401BD0
		lea	ecx, [ebp+FindFileData]
		push	ecx		; lpFindFileData
		mov	ecx, esi
		call	sub_401C50
		push	eax		; lpFileName
		call	ds:FindFirstFileW
		mov	esi, eax
		mov	[ebp+var_278], esi
		cmp	esi, 0FFFFFFFFh
		jz	loc_4026D0

loc_4025B8:				; CODE XREF: sub_402500+1C3j
		mov	edx, [ebp+arg_C]
		test	[ebp+FindFileData.dwFileAttributes], edx
		jnz	loc_4026B3
		push	0FFFFFFFFh
		lea	eax, [ebp+FindFileData.cFileName]
		push	eax
		lea	ecx, [ebp+var_270]
		call	sub_401B10
		push	offset dword_4032A0
		lea	ecx, [ebp+var_270]
		mov	byte ptr [ebp+var_4], 3
		call	sub_401D80
		test	al, al
		jnz	loc_4026A4
		push	offset a__	; ".."
		lea	ecx, [ebp+var_270]
		call	sub_401D80
		test	al, al
		jnz	loc_4026A4
		cmp	[ebp+arg_8], al
		jz	short loc_402636
		lea	eax, [ebp+var_270]
		mov	ecx, edi
		lea	esi, [ebp+var_29C]
		call	sub_402260
		mov	esi, [ebp+var_278]
		mov	byte ptr [ebp+var_4], 4
		or	ebx, 1
		jmp	short loc_402652
; ---------------------------------------------------------------------------

loc_402636:				; CODE XREF: sub_402500+112j
		lea	ecx, [ebp+var_270]
		push	ecx
		lea	ecx, [ebp+var_2A8]
		call	sub_401B80
		mov	[ebp+var_4], 5
		or	ebx, 2

loc_402652:				; CODE XREF: sub_402500+134j
		mov	ecx, [ebp+var_274]
		push	eax
		mov	[ebp+var_264], ebx
		call	sub_402440
		mov	[ebp+var_4], 4
		test	bl, 2
		jz	short loc_402684
		and	ebx, 0FFFFFFFDh
		lea	ecx, [ebp+var_2A8]
		mov	[ebp+var_264], ebx
		call	sub_401BD0

loc_402684:				; CODE XREF: sub_402500+16Ej
		mov	[ebp+var_4], 3
		test	bl, 1
		jz	short loc_4026A4
		and	ebx, 0FFFFFFFEh
		lea	ecx, [ebp+var_29C]
		mov	[ebp+var_264], ebx
		call	sub_401BD0

loc_4026A4:				; CODE XREF: sub_402500+F1j
					; sub_402500+109j ...
		lea	ecx, [ebp+var_270]
		mov	byte ptr [ebp+var_4], 2
		call	sub_401BD0

loc_4026B3:				; CODE XREF: sub_402500+C1j
		lea	edx, [ebp+FindFileData]
		push	edx		; lpFindFileData
		push	esi		; hFindFile
		call	ds:FindNextFileW
		test	eax, eax
		jnz	loc_4025B8
		push	esi		; hFindFile
		call	ds:FindClose

loc_4026D0:				; CODE XREF: sub_402500+B2j
		lea	ecx, [ebp+var_290]
		mov	[ebp+var_4], 0FFFFFFFFh
		call	sub_401BD0
		mov	ecx, [ebp+var_C]
		mov	large fs:0, ecx
		pop	ecx
		pop	edi
		pop	esi
		pop	ebx
		mov	ecx, [ebp+var_10]
		xor	ecx, ebp
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	esp, ebp
		pop	ebp
		retn
sub_402500	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_402700	proc near		; CODE XREF: sub_402700+84p
					; sub_402830+7Dp

var_1C		= dword	ptr -1Ch
var_18		= dword	ptr -18h
var_14		= dword	ptr -14h
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4
arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset sub_402CB8
		mov	eax, large fs:0
		push	eax
		sub	esp, 10h
		push	ebx
		push	esi
		push	edi
		mov	eax, ___security_cookie
		xor	eax, ebp
		push	eax
		lea	eax, [ebp+var_C]
		mov	large fs:0, eax
		mov	ebx, [ebp+arg_0]
		mov	ecx, ebx
		call	sub_401C50
		push	eax		; pszPath
		call	ds:PathIsDirectoryW
		test	eax, eax
		jz	loc_40280C
		xor	esi, esi
		mov	[ebp+var_1C], esi
		mov	[ebp+var_18], esi
		mov	[ebp+var_14], esi
		push	6
		push	1
		lea	eax, [ebp+var_1C]
		push	eax
		push	ebx
		mov	[ebp+var_4], esi
		call	sub_402500
		mov	ecx, [ebp+var_18]
		mov	edi, [ebp+var_1C]
		sub	ecx, edi
		mov	eax, 2AAAAAABh
		imul	ecx
		sar	edx, 1
		mov	ecx, edx
		shr	ecx, 1Fh
		add	esp, 10h
		add	ecx, edx
		jz	short loc_4027B1
		xor	ebx, ebx
		lea	esp, [esp+0]

loc_402780:				; CODE XREF: sub_402700+AAj
		lea	edx, [ebx+edi]
		push	edx
		call	sub_402700
		mov	ecx, [ebp+var_18]
		mov	edi, [ebp+var_1C]
		sub	ecx, edi
		mov	eax, 2AAAAAABh
		imul	ecx
		sar	edx, 1
		mov	eax, edx
		shr	eax, 1Fh
		inc	esi
		add	eax, edx
		add	esp, 4
		add	ebx, 0Ch
		cmp	esi, eax
		jb	short loc_402780
		mov	ebx, [ebp+arg_0]
		xor	esi, esi

loc_4027B1:				; CODE XREF: sub_402700+78j
		mov	ecx, ebx
		call	sub_401C50
		push	eax		; lpPathName
		call	ds:RemoveDirectoryW
		mov	[ebp+var_4], 0FFFFFFFFh
		cmp	[ebp+var_1C], esi
		jz	short loc_40281A
		lea	ecx, [ebp+var_1C]
		call	ds:?_Orphan_all@_Container_base0@std@@QAEXXZ ; std::_Container_base0::_Orphan_all(void)
		mov	edi, [ebp+var_18]
		mov	esi, [ebp+var_1C]
		cmp	esi, edi
		jz	short loc_4027F1
		mov	edi, edi

loc_4027E0:				; CODE XREF: sub_402700+ECj
		mov	ecx, esi
		call	sub_401BD0
		add	esi, 0Ch
		cmp	esi, edi
		jnz	short loc_4027E0
		mov	esi, [ebp+var_1C]

loc_4027F1:				; CODE XREF: sub_402700+DCj
		push	esi		; void *
		call	??3@YAXPAX@Z	; operator delete(void *)
		add	esp, 4
		mov	ecx, [ebp+var_C]
		mov	large fs:0, ecx
		pop	ecx
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_40280C:				; CODE XREF: sub_402700+3Bj
		mov	ecx, ebx
		call	sub_401C50
		push	eax		; lpFileName
		call	ds:DeleteFileW

loc_40281A:				; CODE XREF: sub_402700+C9j
		mov	ecx, [ebp+var_C]
		mov	large fs:0, ecx
		pop	ecx
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
sub_402700	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_402830	proc near		; CODE XREF: sub_402D80+5j

lpCriticalSection= dword ptr -10h
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset sub_402CF3
		mov	eax, large fs:0
		push	eax
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	eax, ___security_cookie
		xor	eax, ebp
		push	eax
		lea	eax, [ebp+var_C]
		mov	large fs:0, eax
		mov	[ebp+lpCriticalSection], ecx
		lea	esi, [ecx+18h]
		mov	ecx, [esi+4]
		sub	ecx, [esi]
		mov	eax, 2AAAAAABh
		imul	ecx
		sar	edx, 1
		mov	eax, edx
		shr	eax, 1Fh
		xor	ebx, ebx
		add	eax, edx
		mov	[ebp+var_4], 1
		jz	short loc_4028E0
		xor	edi, edi
		mov	edi, edi

loc_402880:				; CODE XREF: sub_402830+AEj
		mov	ecx, [esi]
		add	ecx, edi
		call	sub_401C50
		push	eax		; pszPath
		call	ds:PathFileExistsW
		test	eax, eax
		jz	short loc_4028C3
		mov	ecx, [esi]
		add	ecx, edi
		call	sub_401C50
		push	eax		; pszPath
		call	ds:PathIsDirectoryW
		mov	ecx, [esi]
		add	ecx, edi
		test	eax, eax
		jz	short loc_4028B7
		push	ecx
		call	sub_402700
		add	esp, 4
		jmp	short loc_4028C3
; ---------------------------------------------------------------------------

loc_4028B7:				; CODE XREF: sub_402830+7Aj
		call	sub_401C50
		push	eax		; lpFileName
		call	ds:DeleteFileW

loc_4028C3:				; CODE XREF: sub_402830+62j
					; sub_402830+85j
		mov	ecx, [esi+4]
		sub	ecx, [esi]
		mov	eax, 2AAAAAABh
		imul	ecx
		sar	edx, 1
		mov	eax, edx
		shr	eax, 1Fh
		inc	ebx
		add	eax, edx
		add	edi, 0Ch
		cmp	ebx, eax
		jb	short loc_402880

loc_4028E0:				; CODE XREF: sub_402830+4Aj
		cmp	dword ptr [esi], 0
		mov	byte ptr [ebp+var_4], 0
		jz	short loc_402919
		mov	ecx, esi
		call	ds:?_Orphan_all@_Container_base0@std@@QAEXXZ ; std::_Container_base0::_Orphan_all(void)
		mov	edi, [esi+4]
		mov	ebx, [esi]
		cmp	ebx, edi
		jz	short loc_40290E
		lea	ebx, [ebx+0]

loc_402900:				; CODE XREF: sub_402830+DCj
		mov	ecx, ebx
		call	sub_401BD0
		add	ebx, 0Ch
		cmp	ebx, edi
		jnz	short loc_402900

loc_40290E:				; CODE XREF: sub_402830+C8j
		mov	ecx, [esi]
		push	ecx		; void *
		call	??3@YAXPAX@Z	; operator delete(void *)
		add	esp, 4

loc_402919:				; CODE XREF: sub_402830+B7j
		mov	edx, [ebp+lpCriticalSection]
		xor	eax, eax
		push	edx		; lpCriticalSection
		mov	[esi], eax
		mov	[esi+4], eax
		mov	[esi+8], eax
		call	ds:DeleteCriticalSection
		mov	ecx, [ebp+var_C]
		mov	large fs:0, ecx
		pop	ecx
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
sub_402830	endp

; [00000016 BYTES: COLLAPSED FUNCTION std::_Fac_node::~_Fac_node(void).	PRESS KEYPAD CTRL-"+" TO EXPAND]

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_402955	proc near		; CODE XREF: sub_402D8A+5j

var_10		= byte ptr -10h
var_4		= dword	ptr -4

		push	4
		mov	eax, offset sub_402D17
		call	__EH_prolog3
		push	0
		lea	ecx, [ebp+var_10]
		call	ds:??0_Lockit@std@@QAE@H@Z ; std::_Lockit::_Lockit(int)
		and	[ebp+var_4], 0
		jmp	short loc_402989
; ---------------------------------------------------------------------------

loc_402972:				; CODE XREF: sub_402955+3Bj
		mov	esi, eax
		mov	eax, [eax]
		mov	ecx, esi	; this
		mov	dword_40448C, eax
		call	??1_Fac_node@std@@QAE@XZ ; std::_Fac_node::~_Fac_node(void)
		push	esi		; void *
		call	??3@YAXPAX@Z	; operator delete(void *)
		pop	ecx

loc_402989:				; CODE XREF: sub_402955+1Bj
		mov	eax, dword_40448C
		test	eax, eax
		jnz	short loc_402972
		or	[ebp+var_4], 0FFFFFFFFh
		lea	ecx, [ebp+var_10]
		call	ds:??1_Lockit@std@@QAE@XZ ; std::_Lockit::~_Lockit(void)
		call	__EH_epilog3
		retn
sub_402955	endp

; ---------------------------------------------------------------------------
		align 10h

__alloca_probe:
		push	ecx
		lea	ecx, [esp+4]
		sub	ecx, eax
		sbb	eax, eax
		not	eax
		and	ecx, eax
		mov	eax, esp
		and	eax, 0FFFFF000h

cs10:					; CODE XREF: .text:004029D9j
		cmp	ecx, eax
		jb	short cs20
		mov	eax, ecx
		pop	ecx
		xchg	eax, esp
		mov	eax, [eax]
		mov	[esp], eax
		retn
; ---------------------------------------------------------------------------

cs20:					; CODE XREF: .text:004029C6j
		sub	eax, 1000h
		test	[eax], eax
		jmp	short cs10
; ---------------------------------------------------------------------------
		align 10h

__ftol2_sse:
		cmp	dword_404494, 0
		jz	short __ftol2
; [00000013 BYTES: COLLAPSED FUNCTION __ftol2_pentium4.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; ---------------------------------------------------------------------------

__ftol2_sse_excpt:
		cmp	dword_404494, 0
		jz	short __ftol2
		sub	esp, 4
		fnstcw	word ptr [esp]
		pop	eax
		and	ax, 7Fh
		cmp	ax, 7Fh
		jz	short __ftol2_pentium4
; [00000075 BYTES: COLLAPSED FUNCTION __ftol2. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000033 BYTES: COLLAPSED FUNCTION __EH_prolog3. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000014 BYTES: COLLAPSED FUNCTION __EH_epilog3. PRESS KEYPAD CTRL-"+" TO EXPAND]

; =============== S U B	R O U T	I N E =======================================


sub_402AD2	proc near		; DATA XREF: .rdata:00403150o
		push	0Ah		; ProcessorFeature
		call	ds:IsProcessorFeaturePresent
		mov	dword_404494, eax
		xor	eax, eax
		retn
sub_402AD2	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_402AF0	proc near		; DATA XREF: .rdata:00403510o
		mov	eax, [ebp-10h]
		and	eax, 1
		jz	locret_402B08
		and	dword ptr [ebp-10h], 0FFFFFFFEh
		mov	ecx, [ebp+8]
		jmp	sub_401BD0
; ---------------------------------------------------------------------------

locret_402B08:				; CODE XREF: sub_402AF0+6j
		retn
sub_402AF0	endp


; =============== S U B	R O U T	I N E =======================================


sub_402B09	proc near		; DATA XREF: .rdata:00403518o
		lea	ecx, [ebp-34h]
		jmp	sub_401BD0
sub_402B09	endp


; =============== S U B	R O U T	I N E =======================================


sub_402B11	proc near		; DATA XREF: .rdata:00403520o
		lea	ecx, [ebp-28h]
		jmp	sub_401BD0
sub_402B11	endp


; =============== S U B	R O U T	I N E =======================================


sub_402B19	proc near		; DATA XREF: .rdata:00403528o
		lea	ecx, [ebp-1Ch]
		jmp	sub_401BD0
sub_402B19	endp

; [0000001B BYTES: COLLAPSED FUNCTION __ehhandler$?_RunAndWait@_StructuredTaskCollection@details@Concurrency@@QAG?AW4_TaskCollectionStatus@23@PAV_UnrealizedChore@23@@Z. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_402B40	proc near		; DATA XREF: .rdata:00403580o
		mov	eax, [ebp+10h]
		push	eax
		mov	ecx, [ebp+8]
		push	ecx
		call	nullsub_1
		add	esp, 8
		retn
sub_402B40	endp


; =============== S U B	R O U T	I N E =======================================


sub_402B51	proc near		; DATA XREF: sub_402020+5o
					; .rdata:004033E8o

arg_4		= dword	ptr  8

		mov	edx, [esp+arg_4]
		lea	eax, [edx+0Ch]
		mov	ecx, [edx-18h]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	eax, offset dword_40358C
		jmp	__CxxFrameHandler3
sub_402B51	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_402B70	proc near		; DATA XREF: sub_4020C0+5o
					; .rdata:004033ECo

arg_4		= dword	ptr  8

		mov	edx, [esp+arg_4]
		lea	eax, [edx+0Ch]
		mov	ecx, [edx-1Ch]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	eax, offset dword_4035E4
		jmp	__CxxFrameHandler3
sub_402B70	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_402B90	proc near		; DATA XREF: .rdata:0040360Co
		lea	ecx, [ebp-278h]
		jmp	sub_401BD0
sub_402B90	endp


; =============== S U B	R O U T	I N E =======================================


sub_402B9B	proc near		; DATA XREF: .rdata:00403614o
					; .rdata:0040361Co
		lea	ecx, [ebp-284h]
		jmp	sub_401BD0
sub_402B9B	endp


; =============== S U B	R O U T	I N E =======================================


sub_402BA6	proc near		; DATA XREF: .rdata:00403624o
		lea	ecx, [ebp-26Ch]
		jmp	sub_401BD0
sub_402BA6	endp


; =============== S U B	R O U T	I N E =======================================


sub_402BB1	proc near		; DATA XREF: sub_402290+5o
					; .rdata:004033F0o

arg_4		= dword	ptr  8

		mov	edx, [esp+arg_4]
		lea	eax, [edx+0Ch]
		mov	ecx, [edx-288h]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	ecx, [edx-4]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	eax, offset dword_403628
		jmp	__CxxFrameHandler3
sub_402BB1	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_402BE0	proc near		; DATA XREF: .rdata:00403650o
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [ebp-10h]
		push	ecx
		call	nullsub_1
		add	esp, 8
		retn
sub_402BE0	endp


; =============== S U B	R O U T	I N E =======================================


sub_402BF1	proc near		; DATA XREF: .rdata:00403658o
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [ebp-10h]
		push	ecx
		call	nullsub_1
		add	esp, 8
		retn
sub_402BF1	endp


; =============== S U B	R O U T	I N E =======================================


sub_402C02	proc near		; DATA XREF: sub_402440+5o
					; .rdata:004033F4o

arg_4		= dword	ptr  8

		mov	edx, [esp+arg_4]
		lea	eax, [edx+0Ch]
		mov	ecx, [edx-10h]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	eax, offset dword_40365C
		jmp	__CxxFrameHandler3
sub_402C02	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_402C20	proc near		; DATA XREF: .rdata:004036A8o
		lea	ecx, [ebp-284h]
		jmp	sub_401BD0
sub_402C20	endp


; =============== S U B	R O U T	I N E =======================================


sub_402C2B	proc near		; DATA XREF: .rdata:004036B0o
					; .rdata:004036B8o
		lea	ecx, [ebp-290h]
		jmp	sub_401BD0
sub_402C2B	endp


; =============== S U B	R O U T	I N E =======================================


sub_402C36	proc near		; DATA XREF: .rdata:004036C0o
		lea	ecx, [ebp-270h]
		jmp	sub_401BD0
sub_402C36	endp


; =============== S U B	R O U T	I N E =======================================


sub_402C41	proc near		; DATA XREF: .rdata:004036C8o
		mov	eax, [ebp-264h]
		and	eax, 1
		jz	locret_402C62
		and	dword ptr [ebp-264h], 0FFFFFFFEh
		lea	ecx, [ebp-29Ch]
		jmp	sub_401BD0
; ---------------------------------------------------------------------------

locret_402C62:				; CODE XREF: sub_402C41+9j
		retn
sub_402C41	endp


; =============== S U B	R O U T	I N E =======================================


sub_402C63	proc near		; DATA XREF: .rdata:004036D0o
		mov	eax, [ebp-264h]
		and	eax, 2
		jz	locret_402C84
		and	dword ptr [ebp-264h], 0FFFFFFFDh
		lea	ecx, [ebp-2A8h]
		jmp	sub_401BD0
; ---------------------------------------------------------------------------

locret_402C84:				; CODE XREF: sub_402C63+9j
		retn
sub_402C63	endp


; =============== S U B	R O U T	I N E =======================================


sub_402C85	proc near		; DATA XREF: sub_402500+5o
					; .rdata:004033F8o

arg_4		= dword	ptr  8

		mov	edx, [esp+arg_4]
		lea	eax, [edx+0Ch]
		mov	ecx, [edx-2ACh]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	ecx, [edx-4]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	eax, offset dword_403680
		jmp	__CxxFrameHandler3
sub_402C85	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_402CB0	proc near		; DATA XREF: .rdata:004036D8o

; FUNCTION CHUNK AT 004023E0 SIZE 00000047 BYTES
; FUNCTION CHUNK AT 00402430 SIZE 00000005 BYTES

		lea	ecx, [ebp-1Ch]
		jmp	loc_402430
sub_402CB0	endp


; =============== S U B	R O U T	I N E =======================================


sub_402CB8	proc near		; DATA XREF: sub_402700+5o
					; .rdata:004033FCo

arg_4		= dword	ptr  8

		mov	edx, [esp+arg_4]
		lea	eax, [edx+0Ch]
		mov	ecx, [edx-20h]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	eax, offset dword_4036DC
		jmp	__CxxFrameHandler3
sub_402CB8	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_402CE0	proc near		; DATA XREF: .rdata:00403704o

; FUNCTION CHUNK AT 00402280 SIZE 00000008 BYTES

		mov	ecx, [ebp-10h]
		jmp	loc_402280
sub_402CE0	endp


; =============== S U B	R O U T	I N E =======================================


sub_402CE8	proc near		; DATA XREF: .rdata:0040370Co
		mov	ecx, [ebp-10h]
		add	ecx, 18h
		jmp	loc_402430
sub_402CE8	endp


; =============== S U B	R O U T	I N E =======================================


sub_402CF3	proc near		; DATA XREF: sub_402830+5o
					; .rdata:00403400o

arg_4		= dword	ptr  8

		mov	edx, [esp+arg_4]
		lea	eax, [edx+0Ch]
		mov	ecx, [edx-14h]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	eax, offset dword_403710
		jmp	__CxxFrameHandler3
sub_402CF3	endp


; =============== S U B	R O U T	I N E =======================================


sub_402D0E	proc near		; DATA XREF: .rdata:00403738o
		lea	ecx, [ebp-10h]
		jmp	ds:??1_Lockit@std@@QAE@XZ ; std::_Lockit::~_Lockit(void)
sub_402D0E	endp


; =============== S U B	R O U T	I N E =======================================


sub_402D17	proc near		; DATA XREF: sub_402955+2o
					; .rdata:00403404o

arg_4		= dword	ptr  8

		mov	edx, [esp+arg_4]
		lea	eax, [edx+0Ch]
		mov	ecx, [edx-14h]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	eax, offset dword_40373C
		jmp	__CxxFrameHandler3
sub_402D17	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_402D40	proc near		; DATA XREF: .rdata:00403140o
		push	offset CriticalSection ; lpCriticalSection
		call	ds:InitializeCriticalSection
		xor	eax, eax
		push	offset sub_402D80 ; void (__cdecl *)()
		mov	dword_40447C, eax
		mov	dword_404480, eax
		mov	dword_404484, eax
		call	_atexit
		pop	ecx
		retn
sub_402D40	endp


; =============== S U B	R O U T	I N E =======================================


sub_402D68	proc near		; DATA XREF: .rdata:0040313Co
		push	offset sub_402D8A ; void (__cdecl *)()
		call	_atexit
		pop	ecx
		retn
sub_402D68	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


; void __cdecl sub_402D80()
sub_402D80	proc near		; DATA XREF: sub_402D40+Do
		mov	ecx, offset CriticalSection
		jmp	sub_402830
sub_402D80	endp


; =============== S U B	R O U T	I N E =======================================


; void __cdecl sub_402D8A()
sub_402D8A	proc near		; DATA XREF: sub_402D68o
		mov	ecx, offset dword_404490
		jmp	sub_402955
sub_402D8A	endp

; ---------------------------------------------------------------------------
		align 80h
		dd 80h dup(?)
_text		ends

; Section 2. (virtual address 00003000)
; Virtual size			: 00000F4A (   3914.)
; Section size in file		: 00001000 (   4096.)
; Offset to raw	data for section: 00002200
; Flags	40000040: Data Readable
; Alignment	: default
;
; Imports from ADVAPI32.dll
;
; ===========================================================================

; Segment type:	Externs
; _idata
; BOOL __stdcall InitializeSecurityDescriptor(PSECURITY_DESCRIPTOR pSecurityDescriptor,	DWORD dwRevision)
		extrn InitializeSecurityDescriptor:dword ; CODE	XREF: sub_401040+32p
					; DATA XREF: sub_401040+32r ...
; BOOL __stdcall SetSecurityDescriptorDacl(PSECURITY_DESCRIPTOR	pSecurityDescriptor, BOOL bDaclPresent,	PACL pDacl, BOOL bDaclDefaulted)
		extrn SetSecurityDescriptorDacl:dword ;	CODE XREF: sub_401040+42p
					; DATA XREF: sub_401040+42r

;
; Imports from COMCTL32.dll
;
; BOOL __stdcall InitCommonControlsEx(const INITCOMMONCONTROLSEX *picce)
		extrn InitCommonControlsEx:dword ; CODE	XREF: wWinMain(x,x,x,x)+1Fp
					; DATA XREF: wWinMain(x,x,x,x)+1Fr ...

;
; Imports from KERNEL32.dll
;
; void __stdcall DeleteCriticalSection(LPCRITICAL_SECTION lpCriticalSection)
		extrn DeleteCriticalSection:dword ; CODE XREF: sub_402CE0-A5Fp
					; sub_402830+F7p
					; DATA XREF: ...
; void __stdcall InitializeCriticalSection(LPCRITICAL_SECTION lpCriticalSection)
		extrn InitializeCriticalSection:dword ;	CODE XREF: sub_402D40+5p
					; DATA XREF: sub_402D40+5r
; BOOL __stdcall IsDebuggerPresent()
		extrn IsDebuggerPresent:dword ;	CODE XREF: ___report_gsfailure+BBp
					; DATA XREF: ___report_gsfailure+BBr
; LONG __stdcall UnhandledExceptionFilter(struct _EXCEPTION_POINTERS *ExceptionInfo)
		extrn UnhandledExceptionFilter:dword ; CODE XREF: ___report_gsfailure+DBp
					; DATA XREF: ___report_gsfailure+DBr
; HANDLE __stdcall GetCurrentProcess()
		extrn GetCurrentProcess:dword ;	CODE XREF: ___report_gsfailure+F7p
					; DATA XREF: ___report_gsfailure+F7r
; BOOL __stdcall TerminateProcess(HANDLE hProcess, UINT	uExitCode)
		extrn TerminateProcess:dword ; CODE XREF: ___report_gsfailure+FEp
					; DATA XREF: ___report_gsfailure+FEr
; DWORD	__stdcall GetCurrentProcessId()
		extrn GetCurrentProcessId:dword	; CODE XREF: ___security_init_cookie+43p
					; DATA XREF: ___security_init_cookie+43r
; DWORD	__stdcall GetCurrentThreadId()
		extrn GetCurrentThreadId:dword ; CODE XREF: ___security_init_cookie+4Bp
					; DATA XREF: ___security_init_cookie+4Br
; DWORD	__stdcall GetTickCount()
		extrn GetTickCount:dword ; CODE	XREF: ___security_init_cookie+53p
					; DATA XREF: ___security_init_cookie+53r
; BOOL __stdcall QueryPerformanceCounter(LARGE_INTEGER *lpPerformanceCount)
		extrn QueryPerformanceCounter:dword ; CODE XREF: ___security_init_cookie+5Fp
					; DATA XREF: ___security_init_cookie+5Fr
; PVOID	__stdcall DecodePointer(PVOID Ptr)
		extrn DecodePointer:dword ; CODE XREF: __onexit+18p
					; __onexit+40p	...
; LPTOP_LEVEL_EXCEPTION_FILTER __stdcall SetUnhandledExceptionFilter(LPTOP_LEVEL_EXCEPTION_FILTER lpTopLevelExceptionFilter)
		extrn SetUnhandledExceptionFilter:dword	; CODE XREF: sub_4014F0+5p
					; ___report_gsfailure+D0p
					; DATA XREF: ...
; PVOID	__stdcall EncodePointer(PVOID Ptr)
		extrn EncodePointer:dword ; CODE XREF: $LN46+57p __onexit+61p	...
; void __stdcall GetStartupInfoW(LPSTARTUPINFOW	lpStartupInfo)
		extrn GetStartupInfoW:dword ; CODE XREF: ___tmainCRTStartup+15p
					; DATA XREF: ___tmainCRTStartup+15r
; BOOL __stdcall HeapSetInformation(HANDLE HeapHandle, HEAP_INFORMATION_CLASS HeapInformationClass, PVOID HeapInformation, SIZE_T HeapInformationLength)
		extrn HeapSetInformation:dword ; CODE XREF: ___tmainCRTStartup+28p
					; DATA XREF: ___tmainCRTStartup+28r
; LONG __stdcall InterlockedCompareExchange(volatile LONG *Destination,	LONG Exchange, LONG Comperand)
		extrn InterlockedCompareExchange:dword ; CODE XREF: ___tmainCRTStartup+45p
					; DATA XREF: ___tmainCRTStartup+45r
; LONG __stdcall InterlockedExchange(volatile LONG *Target, LONG Value)
		extrn InterlockedExchange:dword	; CODE XREF: ___tmainCRTStartup+E4p
					; DATA XREF: ___tmainCRTStartup+E4r
; BOOL __stdcall FindClose(HANDLE hFindFile)
		extrn FindClose:dword	; CODE XREF: sub_402290+10Cp
					; sub_402500+1CAp
					; DATA XREF: ...
; BOOL __stdcall FindNextFileW(HANDLE hFindFile, LPWIN32_FIND_DATAW lpFindFileData)
		extrn FindNextFileW:dword ; CODE XREF: sub_402290+101p
					; sub_402500+1BBp
					; DATA XREF: ...
; HANDLE __stdcall FindFirstFileW(LPCWSTR lpFileName, LPWIN32_FIND_DATAW lpFindFileData)
		extrn FindFirstFileW:dword ; CODE XREF:	sub_402290+79p
					; sub_402500+A1p
					; DATA XREF: ...
; BOOL __stdcall RemoveDirectoryW(LPCWSTR lpPathName)
		extrn RemoveDirectoryW:dword ; CODE XREF: sub_402700+B9p
					; DATA XREF: sub_402700+B9r
; BOOL __stdcall IsProcessorFeaturePresent(DWORD ProcessorFeature)
		extrn IsProcessorFeaturePresent:dword ;	CODE XREF: sub_402AD2+2p
					; DATA XREF: sub_402AD2+2r
; BOOL __stdcall DeleteFileW(LPCWSTR lpFileName)
		extrn DeleteFileW:dword	; CODE XREF: sub_402700+114p
					; sub_402830+8Dp
					; DATA XREF: ...
; void __stdcall Sleep(DWORD dwMilliseconds)
		extrn Sleep:dword	; CODE XREF: ___tmainCRTStartup+60p
					; DATA XREF: ___tmainCRTStartup+60r
; HANDLE __stdcall CreateMutexW(LPSECURITY_ATTRIBUTES lpMutexAttributes, BOOL bInitialOwner, LPCWSTR lpName)
		extrn CreateMutexW:dword ; CODE	XREF: sub_401040+6Dp
					; sub_401040+7Ap
					; DATA XREF: ...
; void __stdcall GetSystemTimeAsFileTime(LPFILETIME lpSystemTimeAsFileTime)
		extrn GetSystemTimeAsFileTime:dword ; CODE XREF: ___security_init_cookie+37p
					; DATA XREF: ___security_init_cookie+37r

;
; Imports from MSVCP100.dll
;
; public: class	std::locale::facet * __thiscall	std::locale::facet::_Decref(void)
		extrn ?_Decref@facet@locale@std@@QAEPAV123@XZ:dword
					; CODE XREF: std::_Fac_node::~_Fac_node(void)+3p
					; DATA XREF: std::_Fac_node::~_Fac_node(void)+3r ...
; public: void __thiscall std::_Container_base0::_Orphan_all(void)
		extrn ?_Orphan_all@_Container_base0@std@@QAEXXZ:dword
					; CODE XREF: sub_402CB0-8C6p
					; sub_402700+CEp ...
; public: __thiscall std::_Lockit::~_Lockit(void)
		extrn ??1_Lockit@std@@QAE@XZ:dword ; CODE XREF:	sub_402955+44p
					; DATA XREF: sub_402955+44r ...
; public: __thiscall std::_Lockit::_Lockit(int)
		extrn ??0_Lockit@std@@QAE@H@Z:dword ; CODE XREF: sub_402955+11p
					; DATA XREF: sub_402955+11r
; void __cdecl std::_Xlength_error(char	const *)
		extrn ?_Xlength_error@std@@YAXPBD@Z:dword ; CODE XREF: sub_4020C0+3Dp
					; sub_4021E0+2Fp
					; DATA XREF: ...

;
; Imports from MSVCR100.dll
;
		extrn __imp__amsg_exit:dword ; DATA XREF: _amsg_exitr
					; .rdata:004037D4o
		extrn __wgetmainargs:dword ; CODE XREF:	_pre_cpp_init+30p
					; DATA XREF: _pre_cpp_init+30r
; void __cdecl cexit()
		extrn _cexit:dword	; CODE XREF: ___tmainCRTStartup+1B9p
					; DATA XREF: ___tmainCRTStartup+1B9r
; void __cdecl exit(int	Code)
		extrn _exit:dword	; CODE XREF: ___tmainCRTStartup+1ABp
					; DATA XREF: ___tmainCRTStartup+1ABr
		extrn __imp__XcptFilter:dword ;	DATA XREF: _XcptFilterr
; void __cdecl exit(int	Code)
		extrn exit:dword	; CODE XREF: ___tmainCRTStartup+166p
					; DATA XREF: ___tmainCRTStartup+166r
		extrn _wcmdln:dword	; DATA XREF: ___tmainCRTStartup:loc_40129Er
		extrn __imp__initterm:dword ; DATA XREF: _inittermr
		extrn __imp__initterm_e:dword ;	DATA XREF: _initterm_er
		extrn _configthreadlocale:dword	; CODE XREF: $LN46+B0p
					; DATA XREF: $LN46+B0r
		extrn __setusermatherr:dword ; CODE XREF: $LN46+99p
					; DATA XREF: $LN46+99r
		extrn _commode:dword	; DATA XREF: $LN46+74r
; int fmode
		extrn _fmode:dword	; DATA XREF: $LN46+6Dr
		extrn __set_app_type:dword ; CODE XREF:	$LN46+4Ep
					; DATA XREF: $LN46+4Er
; __declspec(dllimport)	void __cdecl terminate(void)
		extrn __imp_?terminate@@YAXXZ:dword ; DATA XREF: terminate(void)r
		extrn __imp__unlock:dword ; DATA XREF: _unlockr
		extrn __imp___dllonexit:dword ;	DATA XREF: __dllonexitr
		extrn __imp__lock:dword	; DATA XREF: _lockr
; _onexit_t __cdecl onexit(_onexit_t Func)
		extrn _onexit:dword	; CODE XREF: __onexit+25p
					; DATA XREF: __onexit+25r
		extrn __imp__except_handler4_common:dword
					; DATA XREF: _except_handler4_commonr
		extrn __imp__invoke_watson:dword ; DATA	XREF: _invoke_watsonr
; errno_t __cdecl _controlfp_s(unsigned	int *CurrentState, unsigned int	NewValue, unsigned int Mask)
		extrn __imp__controlfp_s:dword ; DATA XREF: _controlfp_sr
		extrn __imp__crt_debugger_hook:dword ; DATA XREF: _crt_debugger_hookr
; __declspec(dllimport)	public:	void __thiscall	type_info::_type_info_dtor_internal_method(void)
		extrn __imp_?_type_info_dtor_internal_method@type_info@@QAEXXZ:dword
					; DATA XREF: type_info::_type_info_dtor_internal_method(void)r
; __declspec(dllimport)	void * __cdecl operator	new(unsigned int)
		extrn __imp_??2@YAPAXI@Z:dword ; DATA XREF: operator new(uint)r
; __declspec(dllimport)	public:	virtual	char const * __thiscall	std::exception::what(void)const
		extrn __imp_?what@exception@std@@UBEPBDXZ:dword
					; DATA XREF: std::exception::what(void)r
; __declspec(dllimport)	public:	__thiscall std::exception::exception(class std::exception const	&)
		extrn __imp_??0exception@std@@QAE@ABV01@@Z:dword ; CODE	XREF: sub_401120+Ap
					; DATA XREF: sub_401120+Ar ...
; public: virtual __thiscall std::exception::~exception(void)
		extrn ??1exception@std@@UAE@XZ:dword ; CODE XREF: sub_4010F0+Cp
					; DATA XREF: sub_4010E0+6r ...
		extrn __imp__CxxThrowException:dword ; DATA XREF: _CxxThrowExceptionr
; public: __thiscall std::exception::exception(char const * const &)
		extrn ??0exception@std@@QAE@ABQBD@Z:dword ; CODE XREF: sub_401FC0+39p
					; DATA XREF: sub_401FC0+39r
; __declspec(dllimport)	void __cdecl operator delete(void *)
		extrn __imp_??3@YAXPAX@Z:dword ; DATA XREF: operator delete(void *)r
; __declspec(dllimport)	void __cdecl operator delete[](void *)
		extrn __imp_??_V@YAXPAX@Z:dword	; DATA XREF: operator delete[](void *)r
		extrn __imp___CxxFrameHandler3:dword ; DATA XREF: __CxxFrameHandler3r

;
; Imports from SHLWAPI.dll
;
; BOOL __stdcall PathFileExistsW(LPCWSTR pszPath)
		extrn PathFileExistsW:dword ; CODE XREF: sub_402830+5Ap
					; DATA XREF: sub_402830+5Ar ...
; BOOL __stdcall PathIsDirectoryW(LPCWSTR pszPath)
		extrn PathIsDirectoryW:dword ; CODE XREF: sub_402700+33p
					; sub_402830+6Ep
					; DATA XREF: ...

;
; Imports from SettingsUI.dll
;
		extrn settingsUI_showDialog:dword ; CODE XREF: wWinMain(x,x,x,x)+2Cp
					; DATA XREF: wWinMain(x,x,x,x)+2Cr ...


; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	para public 'DATA' use32
		assume cs:_rdata
		;org 403134h
dword_403134	dd 0			; DATA XREF: ___tmainCRTStartup+C7o
		dd offset _pre_cpp_init
		dd offset sub_402D68
		dd offset sub_402D40
dword_403144	dd 0			; DATA XREF: ___tmainCRTStartup+C2o
dword_403148	dd 0			; DATA XREF: ___tmainCRTStartup+92o
		dd offset $LN46
		dd offset sub_402AD2
		dd offset sub_4014F0
dword_403158	dd 2 dup(0)		; DATA XREF: ___tmainCRTStartup+8Do
; const	WCHAR aGlobalPdf24cre
aGlobalPdf24cre:			; DATA XREF: sub_401040+6Fo
		unicode	0, <Global\pdf24CreatorMutex>,0
		align 4
; const	WCHAR Name
Name:					; DATA XREF: sub_401040+4Eo
		unicode	0, <pdf24CreatorMutex>,0
aPdfprinter:				; DATA XREF: .data:0040405Co
		unicode	0, <pdfPrinter>,0
		align 10h
aDefault:				; DATA XREF: .data:00404054o
		unicode	0, <default>,0
aClipboard:				; DATA XREF: .data:00404044o
					; .data:00404064o
		unicode	0, <clipboard>,0
aUserdefinedare:			; DATA XREF: .data:0040403Co
		unicode	0, <userDefinedArea>,0
aActivewindowcl:			; DATA XREF: .data:00404034o
		unicode	0, <activeWindowClient>,0
		align 4
aActivewindow:				; DATA XREF: .data:0040402Co
		unicode	0, <activeWindow>,0
		align 4
aScreenclient:				; DATA XREF: .data:00404024o
		unicode	0, <screenClient>,0
		align 4
aScreen:				; DATA XREF: .data:0040401Co
		unicode	0, <screen>,0
		align 4
		dd offset dword_403310
off_403288	dd offset sub_4010F0	; DATA XREF: sub_4010E0o sub_4010F0+6o ...
		dd offset ?what@exception@std@@UBEPBDXZ	; std::exception::what(void)
		dd offset dword_403390
off_403294	dd offset ??_Etype_info@@UAEPAXI@Z ; DATA XREF:	.data:off_404000o
					; .data:off_404074o ...
					; type_info::`vector deleting destructor'(uint)
; struct _EXCEPTION_POINTERS ExceptionInfo
ExceptionInfo	_EXCEPTION_POINTERS <offset dword_404138, offset dword_404190>
					; DATA XREF: ___report_gsfailure+D6o
dword_4032A0	dd 2Eh			; DATA XREF: sub_402290+B4o
					; sub_402500+DBo
aVectorTTooLong	db 'vector<T> too long',0 ; DATA XREF: sub_4020C0+38o
					; sub_4021E0+2Ao
		align 4
a__:					; DATA XREF: sub_402290+CCo
					; sub_402500+F7o
		unicode	0, <..>,0
		align 10h
asc_4032C0:				; DATA XREF: sub_402290+33o
					; sub_402500+5Do
		unicode	0, <*>,0
		align 8
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
		dd 0Ah			; SEHandlerCount
dword_403310	dd 3 dup(0)		; DATA XREF: .rdata:00403284o
		dd offset off_404074
		dd offset dword_403324
dword_403324	dd 2 dup(0)		; DATA XREF: .rdata:00403320o
					; .rdata:00403358o
		dd 2
		dd offset off_403334
off_403334	dd offset off_403340	; DATA XREF: .rdata:00403330o
		dd offset off_40335C
		align 10h
off_403340	dd offset off_404074	; DATA XREF: .rdata:off_403334o
		dd 1, 0
		dd 0FFFFFFFFh, 0
		dd 40h
		dd offset dword_403324
off_40335C	dd offset off_404000	; DATA XREF: .rdata:00403338o
					; .rdata:off_403388o
		dd 2 dup(0)
		dd 0FFFFFFFFh, 0
		dd 40h
		dd offset dword_403378
dword_403378	dd 2 dup(0)		; DATA XREF: .rdata:00403374o
		dd 1
		dd offset off_403388
off_403388	dd offset off_40335C	; DATA XREF: .rdata:00403384o
		align 10h
dword_403390	dd 3 dup(0)		; DATA XREF: .rdata:00403290o
		dd offset off_404098
		dd offset dword_4033A4
dword_4033A4	dd 2 dup(0)		; DATA XREF: .rdata:004033A0o
					; .rdata:004033D4o
		dd 1
		dd offset off_4033B4
off_4033B4	dd offset off_4033BC	; DATA XREF: .rdata:004033B0o
		dd 0
off_4033BC	dd offset off_404098	; DATA XREF: .rdata:off_4033B4o
		dd 2 dup(0)
		dd 0FFFFFFFFh, 0
		dd 40h
		dd offset dword_4033A4
		align 10h
___safe_se_handler_table dd rva	__except_handler4 ; DATA XREF: .rdata:00403308o
		dd rva __ehhandler$?_RunAndWait@_StructuredTaskCollection@details@Concurrency@@QAG?AW4_TaskCollectionStatus@23@PAV_UnrealizedChore@23@@Z
		dd rva sub_402B51
		dd rva sub_402B70
		dd rva sub_402BB1
		dd rva sub_402C02
		dd rva sub_402C85
		dd rva sub_402CB8
		dd rva sub_402CF3
		dd rva sub_402D17
		dd 0
dword_40340C	dd 2 dup(0)		; DATA XREF: sub_4015BC+3o
					; sub_4015BC+8o
dword_403414	dd 2 dup(0)		; DATA XREF: sub_4015E2+3o
					; sub_4015E2+8o ...
		dd offset off_404000
		dd 0
		dd 0FFFFFFFFh, 0
		dd 0Ch
		dd offset ??0exception@std@@QAE@ABV01@@Z ; std::exception::exception(std::exception const &)
dword_403434	dd 0			; DATA XREF: sub_401FC0+3Fo
		dd offset sub_4010E0
		align 10h
		dd offset dword_403444
dword_403444	dd 2			; DATA XREF: .rdata:00403440o
		dd offset dword_403450
		dd offset dword_403414+4
dword_403450	dd 0			; DATA XREF: .rdata:00403448o
		dd offset off_404074
		dd 0
		dd 0FFFFFFFFh, 0
		dd 0Ch
		dd offset sub_401120
		align 10h
stru_403470	dd 0FFFFFFFEh		; GSCookieOffset ; DATA	XREF: ___tmainCRTStartup+2o
		dd 0			; GSCookieXOROffset ; SEH scope	table for function 401193
		dd 0FFFFFF84h		; EHCookieOffset
		dd 0			; EHCookieXOROffset
		dd 0FFFFFFFEh		; ScopeRecord.EnclosingLevel
		dd offset $LN49		; ScopeRecord.FilterFunc
		dd offset $LN30		; ScopeRecord.HandlerFunc
		align 10h
stru_403490	dd 0FFFFFFFEh		; GSCookieOffset ; DATA	XREF: __onexit+2o
		dd 0			; GSCookieXOROffset ; SEH scope	table for function 401504
		dd 0FFFFFFCCh		; EHCookieOffset
		dd 0			; EHCookieXOROffset
		dd 0FFFFFFFEh		; ScopeRecord.EnclosingLevel
		dd 0			; ScopeRecord.FilterFunc
		dd offset loc_40159C	; ScopeRecord.HandlerFunc
		align 10h
stru_4034B0	dd 0FFFFFFFEh		; GSCookieOffset
					; DATA XREF: __IsNonwritableInCurrentImage+7o
		dd 0			; GSCookieXOROffset ; SEH scope	table for function 4016A0
		dd 0FFFFFFD8h		; EHCookieOffset
		dd 0			; EHCookieXOROffset
		dd 0FFFFFFFEh		; ScopeRecord.EnclosingLevel
		dd offset loc_40172B	; ScopeRecord.FilterFunc
		dd offset loc_40173E	; ScopeRecord.HandlerFunc
		align 10h
stru_4034D0	dd 0FFFFFFFEh		; GSCookieOffset
					; DATA XREF: __ArrayUnwind(void	*,uint,int,void	(*)(void *))+2o
		dd 0			; GSCookieXOROffset ; SEH scope	table for function 4019BA
		dd 0FFFFFFCCh		; EHCookieOffset
		dd 0			; EHCookieXOROffset
		dd 0FFFFFFFEh		; ScopeRecord.EnclosingLevel
		dd offset loc_4019DD	; ScopeRecord.FilterFunc
		dd offset unk_401A06	; ScopeRecord.HandlerFunc
		align 10h
stru_4034F0	dd 0FFFFFFFEh		; GSCookieOffset
					; DATA XREF: `eh vector	destructor iterator'(void *,uint,int,void (*)(void *))+2o
		dd 0			; GSCookieXOROffset ; SEH scope	table for function 401A18
		dd 0FFFFFFD4h		; EHCookieOffset
		dd 0			; EHCookieXOROffset
		dd 0FFFFFFFEh		; ScopeRecord.EnclosingLevel
		dd 0			; ScopeRecord.FilterFunc
		dd offset loc_401A63	; ScopeRecord.HandlerFunc
dword_40350C	dd 0FFFFFFFFh		; DATA XREF: .rdata:00403534o
		dd offset sub_402AF0
		align 8
		dd offset sub_402B09
		dd 1
		dd offset sub_402B11
		dd 2
		dd offset sub_402B19
dword_40352C	dd 19930522h, 4		; DATA XREF: __ehhandler$?_RunAndWait@_StructuredTaskCollection@details@Concurrency@@QAG?AW4_TaskCollectionStatus@23@PAV_UnrealizedChore@23@@Z+11o
		dd offset dword_40350C
		dd 5 dup(0)
dword_40354C	dd 1, 40h, 2 dup(0)	; DATA XREF: .rdata:00403570o
		dd offset loc_402086
dword_403560	dd 0			; DATA XREF: .rdata:0040359Co
		dd 1, 2, 1
		dd offset dword_40354C+4
dword_403574	dd 0FFFFFFFFh, 2 dup(0)	; DATA XREF: .rdata:00403594o
		dd offset sub_402B40
		dd 0FFFFFFFFh, 0
dword_40358C	dd 19930522h, 3		; DATA XREF: sub_402B51+11o
		dd offset dword_403574
		dd 1
		dd offset dword_403560
		dd 3 dup(0)
dword_4035AC	dd 1, 40h, 2 dup(0)	; DATA XREF: .rdata:004035E0o
		dd offset sub_4021BE
dword_4035C0	dd 0FFFFFFFFh, 0	; DATA XREF: .rdata:004035ECo
dword_4035C8	dd 0FFFFFFFFh, 3 dup(0)	; DATA XREF: .rdata:004035F4o
		dd 2 dup(1)
		dd offset dword_4035AC+4
dword_4035E4	dd 19930522h, 2		; DATA XREF: sub_402B70+11o
		dd offset dword_4035C0
		dd 1
		dd offset dword_4035C8+8
		dd 3 dup(0)
dword_403604	dd 1, 0FFFFFFFFh	; DATA XREF: .rdata:00403630o
		dd offset sub_402B90
		dd 0
		dd offset sub_402B9B
		dd 0FFFFFFFFh
		dd offset sub_402B9B
		dd 2
		dd offset sub_402BA6
dword_403628	dd 19930522h, 4		; DATA XREF: sub_402BB1+1Eo
		dd offset dword_403604+4
		dd 5 dup(0)
dword_403648	dd 1, 0FFFFFFFFh	; DATA XREF: .rdata:00403664o
		dd offset sub_402BE0
		dd 0FFFFFFFFh
		dd offset sub_402BF1
dword_40365C	dd 19930522h, 2		; DATA XREF: sub_402C02+11o
		dd offset dword_403648+4
		dd 5 dup(0)
		dd 1
dword_403680	dd 19930522h, 6		; DATA XREF: sub_402C85+1Eo
		dd offset dword_4036A4
		align 20h
		dd 1
dword_4036A4	dd 0FFFFFFFFh		; DATA XREF: .rdata:00403688o
		dd offset sub_402C20
		align 10h
		dd offset sub_402C2B
		dd 0FFFFFFFFh
		dd offset sub_402C2B
		dd 2
		dd offset sub_402C36
		dd 3
		dd offset sub_402C41
		dd 4
		dd offset sub_402C63
dword_4036D4	dd 0FFFFFFFFh		; DATA XREF: .rdata:004036E4o
		dd offset sub_402CB0
dword_4036DC	dd 19930522h, 1		; DATA XREF: sub_402CB8+11o
		dd offset dword_4036D4
		dd 5 dup(0)
dword_4036FC	dd 1, 0FFFFFFFFh	; DATA XREF: .rdata:00403718o
		dd offset sub_402CE0
		dd 0
		dd offset sub_402CE8
dword_403710	dd 19930522h, 2		; DATA XREF: sub_402CF3+11o
		dd offset dword_4036FC+4
		dd 5 dup(0)
dword_403730	dd 1, 0FFFFFFFFh	; DATA XREF: .rdata:00403744o
		dd offset sub_402D0E
dword_40373C	dd 19930522h, 1		; DATA XREF: sub_402D17+11o
		dd offset dword_403730+4
		dd 5 dup(0)
		dd 1
__IMPORT_DESCRIPTOR_SettingsUI dd rva off_40392C ; Import Name Table
		dd 0			; Time stamp
		dd 0			; Forwarder Chain
		dd rva aSettingsui_dll	; DLL Name
		dd rva settingsUI_showDialog ; Import Address Table
__IMPORT_DESCRIPTOR_COMCTL32 dd	rva off_40380C ; Import	Name Table
		dd 0			; Time stamp
		dd 0			; Forwarder Chain
		dd rva aComctl32_dll	; DLL Name
		dd rva InitCommonControlsEx ; Import Address Table
__IMPORT_DESCRIPTOR_KERNEL32 dd	rva off_403814 ; Import	Name Table
		dd 0			; Time stamp
		dd 0			; Forwarder Chain
		dd rva aKernel32_dll	; DLL Name
		dd rva DeleteCriticalSection ; Import Address Table
__IMPORT_DESCRIPTOR_ADVAPI32 dd	rva off_403800 ; Import	Name Table
		dd 0			; Time stamp
		dd 0			; Forwarder Chain
		dd rva aAdvapi32_dll	; DLL Name
		dd rva InitializeSecurityDescriptor ; Import Address Table
__IMPORT_DESCRIPTOR_MSVCP100 dd	rva off_403880 ; Import	Name Table
		dd 0			; Time stamp
		dd 0			; Forwarder Chain
		dd rva aMsvcp100_dll	; DLL Name
		dd rva ?_Decref@facet@locale@std@@QAEPAV123@XZ ; Import	Address	Table
__IMPORT_DESCRIPTOR_MSVCR100 dd	rva off_403898 ; Import	Name Table
		dd 0			; Time stamp
		dd 0			; Forwarder Chain
		dd rva aMsvcr100_dll	; DLL Name
		dd rva __imp__amsg_exit	; Import Address Table
__IMPORT_DESCRIPTOR_SHLWAPI dd rva off_403920 ;	Import Name Table
		dd 0			; Time stamp
		dd 0			; Forwarder Chain
		dd rva aShlwapi_dll	; DLL Name
		dd rva PathFileExistsW	; Import Address Table
		align 20h
;
; Import names for ADVAPI32.dll
;
off_403800	dd rva word_4039D2	; DATA XREF: .rdata:__IMPORT_DESCRIPTOR_ADVAPI32o
		dd rva word_4039B6
		dd 0
;
; Import names for COMCTL32.dll
;
off_40380C	dd rva word_40395C	; DATA XREF: .rdata:__IMPORT_DESCRIPTOR_COMCTL32o
		dd 0
;
; Import names for KERNEL32.dll
;
off_403814	dd rva word_403E4A	; DATA XREF: .rdata:__IMPORT_DESCRIPTOR_KERNEL32o
		dd rva word_403E2E
		dd rva word_403E1A
		dd rva word_403DFE
		dd rva word_403DEA
		dd rva word_403DD6
		dd rva word_403DA6
		dd rva word_403D90
		dd rva word_403D80
		dd rva word_403D66
		dd rva word_403D56
		dd rva word_403D38
		dd rva word_403D28
		dd rva word_403D16
		dd rva word_403D00
		dd rva word_403CE2
		dd rva word_403CCC
		dd rva word_403E62
		dd rva word_403E6E
		dd rva word_403E7E
		dd rva word_403E90
		dd rva word_403F2E
		dd rva word_40399A
		dd rva word_403992
		dd rva word_403982
		dd rva word_403DBC
		dd 0
;
; Import names for MSVCP100.dll
;
off_403880	dd rva word_403EA4	; DATA XREF: .rdata:__IMPORT_DESCRIPTOR_MSVCP100o
		dd rva word_403F02
		dd rva word_403ECE
		dd rva word_403EE8
		dd rva word_403A00
		dd 0
;
; Import names for MSVCR100.dll
;
off_403898	dd rva word_403B08	; DATA XREF: .rdata:__IMPORT_DESCRIPTOR_MSVCR100o
		dd rva word_403B16
		dd rva word_403B28
		dd rva word_403B32
		dd rva word_403B3A
		dd rva word_403B48
		dd rva word_403B50
		dd rva word_403B5A
		dd rva word_403B66
		dd rva word_403B74
		dd rva word_403B8A
		dd rva word_403B9E
		dd rva word_403BAA
		dd rva word_403BB4
		dd rva word_403BD4
		dd rva word_403BE8
		dd rva word_403BF2
		dd rva word_403C00
		dd rva word_403C08
		dd rva word_403C12
		dd rva word_403C2C
		dd rva word_403C3E
		dd rva word_403C4E
		dd rva word_403C64
		dd rva word_403AF8
		dd rva word_403AD8
		dd rva word_403AB6
		dd rva word_403A9A
		dd rva word_403A84
		dd rva word_403A64
		dd rva word_403A54
		dd rva word_403A44
		dd rva word_403A2E
		dd 0
;
; Import names for SHLWAPI.dll
;
off_403920	dd rva word_403C9A	; DATA XREF: .rdata:__IMPORT_DESCRIPTOR_SHLWAPIo
		dd rva word_403CAC
		dd 0
;
; Import names for SettingsUI.dll
;
off_40392C	dd rva word_403934	; DATA XREF: .rdata:__IMPORT_DESCRIPTOR_SettingsUIo
		dd 0
word_403934	dw 0			; DATA XREF: .rdata:off_40392Co
		db 'settingsUI_showDialog',0
aSettingsui_dll	db 'SettingsUI.dll',0   ; DATA XREF: .rdata:0040376Co
		align 4
word_40395C	dw 7Bh			; DATA XREF: .rdata:off_40380Co
		db 'InitCommonControlsEx',0
		align 4
aComctl32_dll	db 'COMCTL32.dll',0     ; DATA XREF: .rdata:00403780o
		align 2
word_403982	dw 9Eh			; DATA XREF: .rdata:00403874o
		db 'CreateMutexW',0
		align 2
word_403992	dw 4B2h			; DATA XREF: .rdata:00403870o
		db 'Sleep',0
word_40399A	dw 0D6h			; DATA XREF: .rdata:0040386Co
		db 'DeleteFileW',0
aKernel32_dll	db 'KERNEL32.dll',0     ; DATA XREF: .rdata:00403794o
		align 2
word_4039B6	dw 2B6h			; DATA XREF: .rdata:00403804o
		db 'SetSecurityDescriptorDacl',0
word_4039D2	dw 177h			; DATA XREF: .rdata:off_403800o
		db 'InitializeSecurityDescriptor',0
		align 2
aAdvapi32_dll	db 'ADVAPI32.dll',0     ; DATA XREF: .rdata:004037A8o
		align 10h
word_403A00	dw 28Ch			; DATA XREF: .rdata:00403890o
		db '?_Xlength_error@std@@YAXPBD@Z',0
aMsvcp100_dll	db 'MSVCP100.dll',0     ; DATA XREF: .rdata:004037BCo
		align 2
word_403A2E	dw 13Ah			; DATA XREF: .rdata:00403918o
		db '__CxxFrameHandler3',0
		align 4
word_403A44	dw 7Ah			; DATA XREF: .rdata:00403914o
		db '??_V@YAXPAX@Z',0
word_403A54	dw 65h			; DATA XREF: .rdata:00403910o
		db '??3@YAXPAX@Z',0
		align 4
word_403A64	dw 22h			; DATA XREF: .rdata:0040390Co
		db '??0exception@std@@QAE@ABQBD@Z',0
word_403A84	dw 121h			; DATA XREF: .rdata:00403908o
		db '_CxxThrowException',0
		align 2
word_403A9A	dw 5Dh			; DATA XREF: .rdata:00403904o
		db '??1exception@std@@UAE@XZ',0
		align 2
word_403AB6	dw 24h			; DATA XREF: .rdata:00403900o
		db '??0exception@std@@QAE@ABV01@@Z',0
		align 4
word_403AD8	dw 10Dh			; DATA XREF: .rdata:004038FCo
		db '?what@exception@std@@UBEPBDXZ',0
word_403AF8	dw 63h			; DATA XREF: .rdata:004038F8o
		db '??2@YAPAXI@Z',0
		align 4
word_403B08	dw 1C5h			; DATA XREF: .rdata:off_403898o
		db '_amsg_exit',0
		align 2
word_403B16	dw 1B6h			; DATA XREF: .rdata:0040389Co
		db '__wgetmainargs',0
		align 4
word_403B28	dw 1DCh			; DATA XREF: .rdata:004038A0o
		db '_cexit',0
		align 2
word_403B32	dw 22Ah			; DATA XREF: .rdata:004038A4o
		db '_exit',0
word_403B3A	dw 12Dh			; DATA XREF: .rdata:004038A8o
		db '_XcptFilter',0
word_403B48	dw 573h			; DATA XREF: .rdata:004038ACo
		db 'exit',0
		align 10h
word_403B50	dw 4D1h			; DATA XREF: .rdata:004038B0o
		db '_wcmdln',0
word_403B5A	dw 2B0h			; DATA XREF: .rdata:004038B4o
		db '_initterm',0
word_403B66	dw 2B1h			; DATA XREF: .rdata:004038B8o
		db '_initterm_e',0
word_403B74	dw 1ECh			; DATA XREF: .rdata:004038BCo
		db '_configthreadlocale',0
word_403B8A	dw 1A2h			; DATA XREF: .rdata:004038C0o
		db '__setusermatherr',0
		align 2
word_403B9E	dw 1EBh			; DATA XREF: .rdata:004038C4o
		db '_commode',0
		align 2
word_403BAA	dw 245h			; DATA XREF: .rdata:004038C8o
		db '_fmode',0
		align 4
word_403BB4	dw 19Fh			; DATA XREF: .rdata:004038CCo
		db '__set_app_type',0
		align 2
aMsvcr100_dll	db 'MSVCR100.dll',0     ; DATA XREF: .rdata:004037D0o
		align 4
word_403BD4	dw 102h			; DATA XREF: .rdata:004038D0o
		db '?terminate@@YAXXZ',0
word_403BE8	dw 48Dh			; DATA XREF: .rdata:004038D4o
		db '_unlock',0
word_403BF2	dw 15Bh			; DATA XREF: .rdata:004038D8o
		db '__dllonexit',0
word_403C00	dw 323h			; DATA XREF: .rdata:004038DCo
		db '_lock',0
word_403C08	dw 3C9h			; DATA XREF: .rdata:004038E0o
		db '_onexit',0
word_403C12	dw 221h			; DATA XREF: .rdata:004038E4o
		db '_except_handler4_common',0
word_403C2C	dw 2B8h			; DATA XREF: .rdata:004038E8o
		db '_invoke_watson',0
		align 2
word_403C3E	dw 1EFh			; DATA XREF: .rdata:004038ECo
		db '_controlfp_s',0
		align 2
word_403C4E	dw 1FBh			; DATA XREF: .rdata:004038F0o
		db '_crt_debugger_hook',0
		align 4
word_403C64	dw 0EEh			; DATA XREF: .rdata:004038F4o
		db '?_type_info_dtor_internal_method@type_info@@QAEXXZ',0
		align 2
word_403C9A	dw 45h			; DATA XREF: .rdata:off_403920o
		db 'PathFileExistsW',0
word_403CAC	dw 5Bh			; DATA XREF: .rdata:00403924o
		db 'PathIsDirectoryW',0
		align 10h
aShlwapi_dll	db 'SHLWAPI.dll',0      ; DATA XREF: .rdata:004037E4o
word_403CCC	dw 2ECh			; DATA XREF: .rdata:00403854o
		db 'InterlockedExchange',0
word_403CE2	dw 2E9h			; DATA XREF: .rdata:00403850o
		db 'InterlockedCompareExchange',0
		align 10h
word_403D00	dw 2D3h			; DATA XREF: .rdata:0040384Co
		db 'HeapSetInformation',0
		align 2
word_403D16	dw 263h			; DATA XREF: .rdata:00403848o
		db 'GetStartupInfoW',0
word_403D28	dw 0EAh			; DATA XREF: .rdata:00403844o
		db 'EncodePointer',0
word_403D38	dw 4A5h			; DATA XREF: .rdata:00403840o
		db 'SetUnhandledExceptionFilter',0
word_403D56	dw 0CAh			; DATA XREF: .rdata:0040383Co
		db 'DecodePointer',0
word_403D66	dw 3A7h			; DATA XREF: .rdata:00403838o
		db 'QueryPerformanceCounter',0
word_403D80	dw 293h			; DATA XREF: .rdata:00403834o
		db 'GetTickCount',0
		align 10h
word_403D90	dw 1C5h			; DATA XREF: .rdata:00403830o
		db 'GetCurrentThreadId',0
		align 2
word_403DA6	dw 1C1h			; DATA XREF: .rdata:0040382Co
		db 'GetCurrentProcessId',0
word_403DBC	dw 279h			; DATA XREF: .rdata:00403878o
		db 'GetSystemTimeAsFileTime',0
word_403DD6	dw 4C0h			; DATA XREF: .rdata:00403828o
		db 'TerminateProcess',0
		align 2
word_403DEA	dw 1C0h			; DATA XREF: .rdata:00403824o
		db 'GetCurrentProcess',0
word_403DFE	dw 4D3h			; DATA XREF: .rdata:00403820o
		db 'UnhandledExceptionFilter',0
		align 2
word_403E1A	dw 300h			; DATA XREF: .rdata:0040381Co
		db 'IsDebuggerPresent',0
word_403E2E	dw 2E2h			; DATA XREF: .rdata:00403818o
		db 'InitializeCriticalSection',0
word_403E4A	dw 0D1h			; DATA XREF: .rdata:off_403814o
		db 'DeleteCriticalSection',0
word_403E62	dw 12Eh			; DATA XREF: .rdata:00403858o
		db 'FindClose',0
word_403E6E	dw 145h			; DATA XREF: .rdata:0040385Co
		db 'FindNextFileW',0
word_403E7E	dw 139h			; DATA XREF: .rdata:00403860o
		db 'FindFirstFileW',0
		align 10h
word_403E90	dw 403h			; DATA XREF: .rdata:00403864o
		db 'RemoveDirectoryW',0
		align 4
word_403EA4	dw 19Eh			; DATA XREF: .rdata:off_403880o
		db '?_Decref@facet@locale@std@@QAEPAV123@XZ',0
word_403ECE	dw 9Eh			; DATA XREF: .rdata:00403888o
		db '??1_Lockit@std@@QAE@XZ',0
		align 4
word_403EE8	dw 60h			; DATA XREF: .rdata:0040388Co
		db '??0_Lockit@std@@QAE@H@Z',0
word_403F02	dw 251h			; DATA XREF: .rdata:00403884o
		db '?_Orphan_all@_Container_base0@std@@QAEXXZ',0
word_403F2E	dw 304h			; DATA XREF: .rdata:00403868o
		db 'IsProcessorFeaturePresent',0
		align 100h
_rdata		ends

; Section 3. (virtual address 00004000)
; Virtual size			: 000004B0 (   1200.)
; Section size in file		: 00000200 (	512.)
; Offset to raw	data for section: 00003200
; Flags	C0000040: Data Readable	Writable
; Alignment	: default
; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read/Write
_data		segment	para public 'DATA' use32
		assume cs:_data
		;org 404000h
off_404000	dd offset off_403294	; DATA XREF: .rdata:off_40335Co
					; .rdata:0040341Co
		align 8
a_?avexception@	db '.?AVexception@std@@',0
		dd offset aScreen	; "screen"
		dd 1
		dd offset aScreenclient	; "screenClient"
		dd 2
		dd offset aActivewindow	; "activeWindow"
		dd 3
		dd offset aActivewindowcl ; "activeWindowClient"
		dd 4
		dd offset aUserdefinedare ; "userDefinedArea"
		dd 5
		dd offset aClipboard	; "clipboard"
		dd 6, 2	dup(0)
		dd offset aDefault	; "default"
		dd 0
		dd offset aPdfprinter	; "pdfPrinter"
		dd 2
		dd offset aClipboard	; "clipboard"
		dd 1, 2	dup(0)
off_404074	dd offset off_403294	; DATA XREF: .rdata:0040331Co
					; .rdata:off_403340o ...
		dd 0
a_?avbad_alloc@	db '.?AVbad_alloc@std@@',0
___security_cookie dd 0BB40E64Eh	; DATA XREF: __security_check_cookie(x)r
					; __IsNonwritableInCurrentImage+1Er ...
dword_404094	dd 44BF19B1h		; DATA XREF: ___security_init_cookie+2Bw
					; ___security_init_cookie+90w ...
off_404098	dd offset off_403294	; DATA XREF: .rdata:0040339Co
					; .rdata:off_4033BCo
		align 10h
a_?avtype_info@	db '.?AVtype_info@@',0
		dd 2 dup(0FFFFFFFFh), 2	dup(0)
dword_4040C0	dd 0FFFFFFFEh		; DATA XREF: $LN46+A5r
dword_4040C4	dd 1			; DATA XREF: $LN46+8Br
		dd 0Fh dup(0)
dword_404104	dd 0			; DATA XREF: _pre_cpp_init+2Bo
dword_404108	dd 0			; DATA XREF: _pre_cpp_init+21o
dword_40410C	dd 0			; DATA XREF: _pre_cpp_init+26o
dword_404110	dd 0			; DATA XREF: ___tmainCRTStartup+15Dr
					; ___tmainCRTStartup+1A2r ...
dword_404114	dd 0			; DATA XREF: _pre_cpp_init+39w
dword_404118	dd 0			; DATA XREF: _pre_cpp_init+Fo
					; _pre_cpp_init+1Cw
dword_40411C	dd 0			; DATA XREF: ___tmainCRTStartup+158w
					; ___tmainCRTStartup+19Bw ...
dword_404120	dd 0			; DATA XREF: ___tmainCRTStartup:loc_401246w
					; ___tmainCRTStartup:$LN51r
dword_404124	dd 0			; DATA XREF: _pre_cpp_init+16r
dword_404128	dd 0			; DATA XREF: _pre_cpp_init+Ar
dword_40412C	dd 0			; DATA XREF: $LN46+79r
dword_404130	dd 0			; DATA XREF: $LN46+5Dr
		align 8
dword_404138	dd 0			; DATA XREF: ___report_gsfailure+91w
					; .rdata:ExceptionInfoo
dword_40413C	dd 0			; DATA XREF: ___report_gsfailure+9Bw
		dd 0
dword_404144	dd 0			; DATA XREF: ___report_gsfailure+8Cw
		dd 10h dup(0)
dword_404188	dd 0			; DATA XREF: ___report_gsfailure+C1w
					; ___report_gsfailure+E1r
		align 10h
dword_404190	dd 0			; DATA XREF: ___report_gsfailure+7Dw
					; .rdata:ExceptionInfoo
		dd 1Bh dup(0)
		dd 7 dup(?)
word_40421C	dw ?			; DATA XREF: ___report_gsfailure+51w
		align 10h
word_404220	dw ?			; DATA XREF: ___report_gsfailure+4Aw
		align 4
word_404224	dw ?			; DATA XREF: ___report_gsfailure+43w
		align 4
word_404228	dw ?			; DATA XREF: ___report_gsfailure+3Cw
		align 4
dword_40422C	dd ?			; DATA XREF: ___report_gsfailure+28w
dword_404230	dd ?			; DATA XREF: ___report_gsfailure+22w
dword_404234	dd ?			; DATA XREF: ___report_gsfailure+1Cw
dword_404238	dd ?			; DATA XREF: ___report_gsfailure+16w
dword_40423C	dd ?			; DATA XREF: ___report_gsfailure+10w
dword_404240	dd ?			; DATA XREF: ___report_gsfailure+Bw
dword_404244	dd ?			; DATA XREF: ___report_gsfailure+62w
dword_404248	dd ?			; DATA XREF: ___report_gsfailure+6Aw
					; ___report_gsfailure+87r
word_40424C	dw ?			; DATA XREF: ___report_gsfailure+35w
		align 10h
dword_404250	dd ?			; DATA XREF: ___report_gsfailure+59w
dword_404254	dd ?			; DATA XREF: ___report_gsfailure+72w
word_404258	dw ?			; DATA XREF: ___report_gsfailure+2Ew
		align 4
		dd 82h dup(?)
; struct _RTL_CRITICAL_SECTION CriticalSection
CriticalSection	_RTL_CRITICAL_SECTION <?> ; DATA XREF: sub_402D40o sub_402D80o
dword_40447C	dd ?			; DATA XREF: sub_402D40+12w
dword_404480	dd ?			; DATA XREF: sub_402D40+17w
dword_404484	dd ?			; DATA XREF: sub_402D40+1Cw
		dd ?
; std::_Fac_node *dword_40448C
dword_40448C	dd ?			; DATA XREF: sub_402955+23w
					; sub_402955:loc_402989r
dword_404490	dd ?			; DATA XREF: sub_402D8Ao
dword_404494	dd ?			; DATA XREF: .text:__ftol2_sser
					; .text:__ftol2_sse_excptr ...
dword_404498	dd ?			; DATA XREF: ___tmainCRTStartup:loc_4011FEr
					; ___tmainCRTStartup:loc_401211r ...
; volatile LONG	Target
Target		dd ?			; DATA XREF: ___tmainCRTStartup+3Do
; PVOID	dword_4044A0
dword_4044A0	dd ?			; DATA XREF: $LN46+63w	__onexit+45r ...
; PVOID	Ptr
Ptr		dd ?			; DATA XREF: $LN46+68w	__onexit+Cr ...
dword_4044A8	dd ?			; DATA XREF: ___tmainCRTStartup+1Br
dword_4044AC	dd ?			; DATA XREF: ___tmainCRTStartup:loc_40127Dr
					; ___tmainCRTStartup+F2o ...
		align 1000h
_data		ends


		end start

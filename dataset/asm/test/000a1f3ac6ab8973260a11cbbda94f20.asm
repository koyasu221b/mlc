; Format      :	Portable executable for	80386 (PE)
; Imagebase   :	400000
; Section 1. (virtual address 00001000)
; Virtual size			: 000098C4 (  39108.)
; Section size in file		: 00009A00 (  39424.)
; Offset to raw	data for section: 00000400
; Flags	60000020: Text Executable Readable
; Alignment	: default
; PDB File Name	: l:\bin\Win32\Pro Unicode Release\NitroPDFKissMetricsTool.pdb
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

; int __cdecl sub_401000(LPCWSTR lpValueName, int, HKEY	hKey)
sub_401000	proc near		; CODE XREF: sub_4012C0+125p
					; sub_4012C0+175p

Type		= dword	ptr -8
cbData		= dword	ptr -4
lpValueName	= dword	ptr  8
arg_4		= dword	ptr  0Ch
hKey		= dword	ptr  10h

		push	ebp
		mov	ebp, esp
		sub	esp, 8
		mov	edx, [ebp+lpValueName]
		push	ebx
		lea	eax, [ebp+cbData]
		push	eax		; lpcbData
		mov	eax, [ebp+hKey]
		xor	ebx, ebx
		push	ebx		; lpData
		lea	ecx, [ebp+Type]
		push	ecx		; lpType
		push	ebx		; lpReserved
		push	edx		; lpValueName
		push	eax		; hKey
		mov	[ebp+Type], 1
		mov	[ebp+cbData], ebx
		call	ds:RegQueryValueExW
		test	eax, eax
		jnz	loc_4010B8
		push	edi
		mov	edi, [ebp+cbData]
		cmp	edi, ebx
		jnz	short loc_40104C
		mov	ecx, [ebp+arg_4]
		call	ds:?Empty@?$CSimpleStringT@_W$00@ATL@@QAEXXZ ; ATL::CSimpleStringT<wchar_t,1>::Empty(void)
		pop	edi
		mov	eax, ebx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_40104C:				; CODE XREF: sub_401000+39j
		push	esi
		push	edi		; Size
		call	ds:malloc
		push	edi		; Size
		mov	esi, eax
		push	ebx		; Val
		push	esi		; Dst
		call	memset
		mov	eax, [ebp+lpValueName]
		add	esp, 10h
		lea	ecx, [ebp+cbData]
		push	ecx		; lpcbData
		mov	ecx, [ebp+hKey]
		push	esi		; lpData
		lea	edx, [ebp+Type]
		push	edx		; lpType
		push	ebx		; lpReserved
		push	eax		; lpValueName
		push	ecx		; hKey
		call	ds:RegQueryValueExW
		mov	ecx, [ebp+arg_4]
		test	eax, eax
		jnz	short loc_40109F
		push	esi
		call	ds:??4?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAEAAV01@PB_W@Z ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::operator=(wchar_t const *)
		push	esi		; Memory
		mov	ebx, 1
		call	ds:free
		add	esp, 4
		pop	esi
		pop	edi
		mov	eax, ebx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_40109F:				; CODE XREF: sub_401000+7Ej
		call	ds:?Empty@?$CSimpleStringT@_W$00@ATL@@QAEXXZ ; ATL::CSimpleStringT<wchar_t,1>::Empty(void)
		push	esi		; Memory
		call	ds:free
		add	esp, 4
		pop	esi
		pop	edi
		mov	eax, ebx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4010B8:				; CODE XREF: sub_401000+2Dj
		mov	ecx, [ebp+arg_4]
		call	ds:?Empty@?$CSimpleStringT@_W$00@ATL@@QAEXXZ ; ATL::CSimpleStringT<wchar_t,1>::Empty(void)
		mov	eax, ebx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
sub_401000	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_4010D0	proc near		; CODE XREF: sub_4012C0+56p
					; sub_401470+57p

var_34		= byte ptr -34h
var_30		= byte ptr -30h
var_2C		= byte ptr -2Ch
var_28		= byte ptr -28h
var_24		= byte ptr -24h
var_20		= byte ptr -20h
var_1C		= byte ptr -1Ch
var_18		= byte ptr -18h
var_14		= byte ptr -14h
var_10		= byte ptr -10h
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4
arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset sub_40A0E3
		mov	eax, large fs:0
		push	eax
		sub	esp, 28h
		mov	eax, ___security_cookie
		xor	eax, ebp
		push	eax
		lea	eax, [ebp+var_C]
		mov	large fs:0, eax
		mov	eax, [esi]
		mov	eax, [eax-0Ch]
		test	eax, eax
		jz	short loc_401106
		mov	ecx, esi
		call	ds:?Empty@?$CSimpleStringT@_W$00@ATL@@QAEXXZ ; ATL::CSimpleStringT<wchar_t,1>::Empty(void)

loc_401106:				; CODE XREF: sub_4010D0+2Cj
		lea	ecx, [ebp+var_18]
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		lea	ecx, [ebp+var_14]
		mov	[ebp+var_4], 0
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		lea	ecx, [ebp+var_10]
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		lea	ecx, [ebp+var_1C]
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		push	offset aNitro	; "Nitro\\"
		lea	ecx, [ebp+var_18]
		mov	byte ptr [ebp+var_4], 3
		call	ds:??4?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAEAAV01@PB_W@Z ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::operator=(wchar_t const *)
		push	offset aPro	; "Pro\\"
		lea	ecx, [ebp+var_14]
		call	ds:??4?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAEAAV01@PB_W@Z ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::operator=(wchar_t const *)
		push	0
		push	9
		lea	ecx, [ebp+var_10]
		push	offset aD_D	; "%d.%d\\"
		push	ecx
		call	ds:?Format@?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAAXPB_WZZ ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::Format(wchar_t const *,...)
		add	esp, 10h
		push	offset aSettings ; "Settings\\"
		lea	ecx, [ebp+var_1C]
		call	ds:??4?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAEAAV01@PB_W@Z ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::operator=(wchar_t const *)
		mov	eax, [ebp+arg_0]
		sub	eax, 0
		jz	short loc_4011FC
		dec	eax
		jnz	loc_401261
		lea	edx, [ebp+var_18]
		push	edx
		lea	eax, [ebp+var_28]
		push	offset aSoftware ; "SOFTWARE\\"
		push	eax
		call	sub_4015E0
		lea	ecx, [ebp+var_14]
		push	ecx
		push	eax
		lea	edx, [ebp+var_24]
		push	edx
		mov	byte ptr [ebp+var_4], 7
		call	sub_401560
		lea	ecx, [ebp+var_10]
		push	ecx
		push	eax
		lea	edx, [ebp+var_20]
		push	edx
		mov	byte ptr [ebp+var_4], 8
		call	sub_401560
		lea	ecx, [ebp+var_1C]
		push	ecx
		push	eax
		lea	edx, [ebp+arg_0]
		push	edx
		mov	byte ptr [ebp+var_4], 9
		call	sub_401560
		add	esp, 30h
		push	eax
		mov	ecx, esi
		mov	byte ptr [ebp+var_4], 0Ah
		call	ds:??4?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAEAAV01@ABV01@@Z ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::operator=(ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>> const	&)
		lea	ecx, [ebp+arg_0]
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		lea	ecx, [ebp+var_20]
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		lea	ecx, [ebp+var_24]
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		lea	ecx, [ebp+var_28]
		jmp	short loc_401257
; ---------------------------------------------------------------------------

loc_4011FC:				; CODE XREF: sub_4010D0+ABj
		lea	eax, [ebp+var_18]
		push	eax
		lea	ecx, [ebp+var_34]
		push	offset aSoftware ; "SOFTWARE\\"
		push	ecx
		call	sub_4015E0
		lea	edx, [ebp+var_14]
		push	edx
		push	eax
		lea	eax, [ebp+var_30]
		push	eax
		mov	byte ptr [ebp+var_4], 4
		call	sub_401560
		lea	ecx, [ebp+var_10]
		push	ecx
		push	eax
		lea	edx, [ebp+var_2C]
		push	edx
		mov	byte ptr [ebp+var_4], 5
		call	sub_401560
		add	esp, 24h
		push	eax
		mov	ecx, esi
		mov	byte ptr [ebp+var_4], 6
		call	ds:??4?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAEAAV01@ABV01@@Z ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::operator=(ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>> const	&)
		lea	ecx, [ebp+var_2C]
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		lea	ecx, [ebp+var_30]
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		lea	ecx, [ebp+var_34]

loc_401257:				; CODE XREF: sub_4010D0+12Aj
		mov	byte ptr [ebp+var_4], 3
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)

loc_401261:				; CODE XREF: sub_4010D0+AEj
		mov	eax, [esi]
		mov	eax, [eax-0Ch]
		dec	eax
		push	eax
		mov	ecx, esi
		call	ds:?GetAt@?$CSimpleStringT@_W$00@ATL@@QBE_WH@Z ; ATL::CSimpleStringT<wchar_t,1>::GetAt(int)
		cmp	ax, 5Ch
		jnz	short loc_401287
		mov	ecx, [esi]
		mov	edx, [ecx-0Ch]
		push	1
		dec	edx
		push	edx
		mov	ecx, esi
		call	ds:?Delete@?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAEHHH@Z ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::Delete(int,int)

loc_401287:				; CODE XREF: sub_4010D0+1A4j
		lea	ecx, [ebp+var_1C]
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		lea	ecx, [ebp+var_10]
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		lea	ecx, [ebp+var_14]
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		lea	ecx, [ebp+var_18]
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		mov	ecx, [ebp+var_C]
		mov	large fs:0, ecx
		pop	ecx
		mov	esp, ebp
		pop	ebp
		retn
sub_4010D0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __cdecl sub_4012C0(int, int, LPCWSTR lpValueName,	HKEY hKey, REGSAM samDesired)
sub_4012C0	proc near		; CODE XREF: sub_4038B0+1Ap
					; sub_404410+70p ...

var_3C		= word ptr -3Ch
var_18		= dword	ptr -18h
lpSubKey	= dword	ptr -14h
phkResult	= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
lpValueName	= dword	ptr  10h
hKey		= dword	ptr  14h
samDesired	= dword	ptr  18h

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset __ehhandler$?_StructuredChoreWrapper@_UnrealizedChore@details@Concurrency@@CAXPAV123@@Z
		mov	eax, large fs:0
		push	eax
		sub	esp, 30h
		push	ebx
		push	esi
		push	edi
		mov	eax, ___security_cookie
		xor	eax, ebp
		push	eax
		lea	eax, [ebp+var_C]
		mov	large fs:0, eax
		xor	edi, edi
		lea	ecx, [ebp+lpSubKey]
		mov	[ebp+var_18], edi
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		mov	esi, 1
		mov	[ebp+var_4], esi
		mov	ecx, [ebp+arg_0]
		push	offset dword_40B998
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@PB_W@Z ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(wchar_t const *)
		mov	eax, [ebp+arg_4]
		mov	[ebp+var_18], esi
		push	eax
		lea	esi, [ebp+lpSubKey]
		call	sub_4010D0
		mov	esi, [ebp+samDesired]
		mov	ebx, ds:GetModuleHandleW
		add	esp, 4
		mov	[ebp+phkResult], edi
		mov	edi, ds:GetProcAddress
		cmp	esi, 0FFFFFFFFh
		jnz	short loc_401368
		push	offset ProcName	; "GetNativeSystemInfo"
		push	offset ModuleName ; "kernel32.dll"
		mov	esi, 20019h
		call	ebx ; GetModuleHandleW
		push	eax		; hModule
		call	edi ; GetProcAddress
		test	eax, eax
		jz	short loc_401368
		lea	ecx, [ebp+var_3C]
		push	ecx
		call	eax
		mov	ax, [ebp+var_3C]
		cmp	ax, 6
		jz	short loc_401363
		cmp	ax, 9
		jnz	short loc_401368

loc_401363:				; CODE XREF: sub_4012C0+9Bj
		mov	esi, 20119h

loc_401368:				; CODE XREF: sub_4012C0+73j
					; sub_4012C0+8Bj ...
		mov	eax, [ebp+lpSubKey]
		lea	edx, [ebp+phkResult]
		push	edx		; phkResult
		push	esi		; samDesired
		mov	esi, [ebp+hKey]
		push	0		; ulOptions
		push	eax		; lpSubKey
		push	esi		; hKey
		call	ds:RegOpenKeyExW
		test	eax, eax
		jz	loc_401429
		push	offset ProcName	; "GetNativeSystemInfo"
		push	offset ModuleName ; "kernel32.dll"
		mov	[ebp+phkResult], 0
		call	ebx ; GetModuleHandleW
		push	eax		; hModule
		call	edi ; GetProcAddress
		xor	edi, edi
		cmp	eax, edi
		jz	short loc_40140B
		lea	ecx, [ebp+var_3C]
		push	ecx
		call	eax
		mov	ax, [ebp+var_3C]
		cmp	ax, 6
		jz	short loc_4013B7
		cmp	ax, 9
		jnz	short loc_40140B

loc_4013B7:				; CODE XREF: sub_4012C0+EFj
		mov	eax, [ebp+samDesired]
		cmp	eax, 0FFFFFFFFh
		jnz	short loc_4013C4
		mov	eax, 20019h

loc_4013C4:				; CODE XREF: sub_4012C0+FDj
		lea	edx, [ebp+phkResult]
		push	edx		; phkResult
		push	eax		; samDesired
		mov	eax, [ebp+lpSubKey]
		push	edi		; ulOptions
		push	eax		; lpSubKey
		push	esi		; hKey
		call	ds:RegOpenKeyExW
		test	eax, eax
		jnz	short loc_401408
		mov	ecx, [ebp+phkResult]
		mov	esi, [ebp+arg_0]
		mov	edx, [ebp+lpValueName]
		push	ecx		; hKey
		push	esi		; int
		push	edx		; lpValueName
		call	sub_401000
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_4013FE
		push	offset dword_40B998
		mov	ecx, esi
		call	ds:??4?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAEAAV01@PB_W@Z ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::operator=(wchar_t const *)

loc_4013FE:				; CODE XREF: sub_4012C0+12Fj
		mov	eax, [ebp+phkResult]
		push	eax		; hKey
		call	ds:RegCloseKey

loc_401408:				; CODE XREF: sub_4012C0+117j
		mov	[ebp+phkResult], edi

loc_40140B:				; CODE XREF: sub_4012C0+DFj
					; sub_4012C0+F5j ...
		lea	ecx, [ebp+lpSubKey]
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		mov	eax, [ebp+arg_0]
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

loc_401429:				; CODE XREF: sub_4012C0+BFj
		mov	ecx, [ebp+phkResult]
		mov	esi, [ebp+arg_0]
		mov	edx, [ebp+lpValueName]
		push	ecx		; hKey
		push	esi		; int
		push	edx		; lpValueName
		call	sub_401000
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_40144E
		push	offset dword_40B998
		mov	ecx, esi
		call	ds:??4?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAEAAV01@PB_W@Z ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::operator=(wchar_t const *)

loc_40144E:				; CODE XREF: sub_4012C0+17Fj
		mov	eax, [ebp+phkResult]
		push	eax		; hKey
		call	ds:RegCloseKey
		mov	[ebp+phkResult], 0
		jmp	short loc_40140B
sub_4012C0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __cdecl sub_401470(LPCWSTR lpValueName, BYTE *lpData)
sub_401470	proc near		; CODE XREF: sub_404410+44Bp
					; sub_404410+484p

lpSubKey	= dword	ptr -14h
phkResult	= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4
lpValueName	= dword	ptr  8
lpData		= dword	ptr  0Ch

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset sub_40A1B9
		mov	eax, large fs:0
		push	eax
		sub	esp, 8
		push	esi
		push	edi
		mov	eax, ___security_cookie
		xor	eax, ebp
		push	eax
		lea	eax, [ebp+var_C]
		mov	large fs:0, eax
		lea	ecx, [ebp+lpSubKey]
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		mov	eax, [ebp+lpData]
		mov	[ebp+var_4], 0
		lea	edx, [eax+2]
		lea	ecx, [ecx+0]

loc_4014B0:				; CODE XREF: sub_401470+49j
		mov	cx, [eax]
		add	eax, 2
		test	cx, cx
		jnz	short loc_4014B0
		sub	eax, edx
		sar	eax, 1
		push	1
		lea	esi, [ebp+lpSubKey]
		lea	edi, [eax+eax]
		call	sub_4010D0
		mov	ecx, [ebp+lpSubKey]
		add	esp, 4
		lea	eax, [ebp+phkResult]
		push	eax		; phkResult
		push	0F003Fh		; samDesired
		push	0		; ulOptions
		push	ecx		; lpSubKey
		push	80000001h	; hKey
		mov	[ebp+phkResult], 0
		call	ds:RegOpenKeyExW
		test	eax, eax
		jz	short loc_401517
		mov	[ebp+phkResult], 0

loc_4014FB:				; CODE XREF: sub_401470+C0j
		lea	ecx, [ebp+lpSubKey]
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		xor	eax, eax
		mov	ecx, [ebp+var_C]
		mov	large fs:0, ecx
		pop	ecx
		pop	edi
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_401517:				; CODE XREF: sub_401470+82j
		mov	edx, [ebp+lpData]
		mov	eax, [ebp+lpValueName]
		mov	ecx, [ebp+phkResult]
		push	edi		; cbData
		push	edx		; lpData
		push	1		; dwType
		push	0		; Reserved
		push	eax		; lpValueName
		push	ecx		; hKey
		call	ds:RegSetValueExW
		test	eax, eax
		jnz	short loc_4014FB
		mov	edx, [ebp+phkResult]
		push	edx		; hKey
		call	ds:RegFlushKey
		lea	ecx, [ebp+lpSubKey]
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		mov	eax, 1
		mov	ecx, [ebp+var_C]
		mov	large fs:0, ecx
		pop	ecx
		pop	edi
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn
sub_401470	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_401560	proc near		; CODE XREF: sub_4010D0+D3p
					; sub_4010D0+E5p ...

var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset sub_40A05A
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
		mov	edi, [ebp+arg_4]
		mov	ecx, edi
		mov	[ebp+var_10], 0
		call	ds:?GetManager@?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QBEPAUIAtlStringMgr@2@XZ ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::GetManager(void)
		mov	esi, [ebp+arg_0]
		push	eax
		mov	ecx, esi
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@PAUIAtlStringMgr@1@@Z ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(ATL::IAtlStringMgr *)
		mov	eax, [ebp+arg_8]
		mov	[ebp+var_4], 0
		mov	eax, [eax]
		mov	edx, [eax-0Ch]
		mov	ecx, [edi]
		mov	edi, [ecx-0Ch]
		push	edx
		push	eax
		push	edi
		push	ecx
		push	esi
		mov	[ebp+var_10], 1
		call	ds:?Concatenate@?$CSimpleStringT@_W$00@ATL@@KAXAAV12@PB_WH1H@Z ; ATL::CSimpleStringT<wchar_t,1>::Concatenate(ATL::CSimpleStringT<wchar_t,1> &,wchar_t const *,int,wchar_t const	*,int)
		add	esp, 14h
		mov	eax, esi
		mov	ecx, [ebp+var_C]
		mov	large fs:0, ecx
		pop	ecx
		pop	edi
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn
sub_401560	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_4015E0	proc near		; CODE XREF: sub_4010D0+C1p
					; sub_4010D0+139p

var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset sub_40A05A
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
		mov	esi, [ebp+arg_8]
		mov	ecx, esi
		mov	[ebp+var_10], 0
		call	ds:?GetManager@?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QBEPAUIAtlStringMgr@2@XZ ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::GetManager(void)
		mov	edi, [ebp+arg_0]
		push	eax
		mov	ecx, edi
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@PAUIAtlStringMgr@1@@Z ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(ATL::IAtlStringMgr *)
		mov	edx, [ebp+arg_4]
		mov	[ebp+var_4], 0
		mov	esi, [esi]
		mov	[ebp+var_10], 1
		test	edx, edx
		jnz	short loc_40163E
		xor	eax, eax
		jmp	short loc_401656
; ---------------------------------------------------------------------------

loc_40163E:				; CODE XREF: sub_4015E0+58j
		mov	eax, edx
		lea	ecx, [eax+2]
		mov	[ebp+arg_8], ecx

loc_401646:				; CODE XREF: sub_4015E0+6Fj
		mov	cx, [eax]
		add	eax, 2
		test	cx, cx
		jnz	short loc_401646
		sub	eax, [ebp+arg_8]
		sar	eax, 1

loc_401656:				; CODE XREF: sub_4015E0+5Cj
		mov	ecx, [esi-0Ch]
		push	ecx
		push	esi
		push	eax
		push	edx
		push	edi
		call	ds:?Concatenate@?$CSimpleStringT@_W$00@ATL@@KAXAAV12@PB_WH1H@Z ; ATL::CSimpleStringT<wchar_t,1>::Concatenate(ATL::CSimpleStringT<wchar_t,1> &,wchar_t const *,int,wchar_t const	*,int)
		add	esp, 14h
		mov	eax, edi
		mov	ecx, [ebp+var_C]
		mov	large fs:0, ecx
		pop	ecx
		pop	edi
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn
sub_4015E0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_401680	proc near		; CODE XREF: sub_4017D0+D6p
					; sub_4017D0+1EEp

var_58		= dword	ptr -58h
var_54		= dword	ptr -54h
var_50		= dword	ptr -50h
var_49		= byte ptr -49h
var_48		= dword	ptr -48h
var_34		= dword	ptr -34h
var_2C		= dword	ptr -2Ch
var_1C		= dword	ptr -1Ch
var_18		= dword	ptr -18h
var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4
arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset sub_40A788
		mov	eax, large fs:0
		push	eax
		sub	esp, 4Ch
		mov	eax, ___security_cookie
		xor	eax, ebp
		mov	[ebp+var_10], eax
		push	ebx
		push	esi
		push	edi
		push	eax
		lea	eax, [ebp+var_C]
		mov	large fs:0, eax
		mov	edi, [ebp+arg_0]
		xor	ebx, ebx
		push	ebx
		mov	eax, offset dword_40B998
		mov	esi, edx
		mov	[ebp+var_54], edi
		mov	[ebp+var_58], ecx
		mov	[ebp+var_49], 0
		call	sub_403320
		push	ebx
		push	eax
		or	eax, 0FFFFFFFFh
		call	sub_403040
		xor	eax, eax
		mov	word ptr [ebp+var_2C], ax
		mov	eax, esi
		mov	[ebp+var_18], 7
		mov	[ebp+var_1C], ebx
		lea	ecx, [eax+2]

loc_4016E6:				; CODE XREF: sub_401680+6Fj
		mov	dx, [eax]
		add	eax, 2
		cmp	dx, bx
		jnz	short loc_4016E6
		sub	eax, ecx
		sar	eax, 1
		push	eax
		mov	eax, esi
		lea	ecx, [ebp+var_2C]
		call	sub_403320
		push	1
		lea	ecx, [ebp+var_2C]
		push	ecx
		mov	[ebp+var_4], ebx
		call	sub_401EF0
		mov	ebx, eax
		mov	eax, [ebp+var_1C]
		mov	[ebp+var_50], eax
		test	eax, eax
		jle	short loc_401790
		test	ebx, ebx
		jle	short loc_401790
		push	ebx
		xor	ecx, ecx
		lea	eax, [ebp+var_48]
		lea	edx, [ebp+var_2C]
		call	sub_401CC0
		mov	esi, [ebp+var_54]
		mov	edi, eax
		mov	byte ptr [ebp+var_4], 1
		call	sub_402F50
		mov	byte ptr [ebp+var_4], 0
		cmp	[ebp+var_34], 8
		jb	short loc_401751
		mov	edx, [ebp+var_48]
		push	edx
		call	ds:__imp_??3@YAXPAX@Z ;	operator delete(void *)
		add	esp, 4

loc_401751:				; CODE XREF: sub_401680+C2j
		mov	eax, [ebp+var_50]
		lea	ecx, [ebx+1]
		lea	edx, [eax-1]
		cmp	ecx, edx
		jge	short loc_401790
		dec	eax
		push	eax
		lea	eax, [ebp+var_48]
		lea	edx, [ebp+var_2C]
		call	sub_401CC0
		mov	esi, [ebp+var_58]
		mov	edi, eax
		mov	byte ptr [ebp+var_4], 2
		call	sub_402F50
		cmp	[ebp+var_34], 8
		jb	short loc_40178C
		mov	eax, [ebp+var_48]
		push	eax
		call	ds:__imp_??3@YAXPAX@Z ;	operator delete(void *)
		add	esp, 4

loc_40178C:				; CODE XREF: sub_401680+FDj
		mov	bl, 1
		jmp	short loc_401793
; ---------------------------------------------------------------------------

loc_401790:				; CODE XREF: sub_401680+98j
					; sub_401680+9Cj ...
		mov	bl, [ebp+var_49]

loc_401793:				; CODE XREF: sub_401680+10Ej
		cmp	[ebp+var_18], 8
		jb	short loc_4017A6
		mov	ecx, [ebp+var_2C]
		push	ecx
		call	ds:__imp_??3@YAXPAX@Z ;	operator delete(void *)
		add	esp, 4

loc_4017A6:				; CODE XREF: sub_401680+117j
		mov	al, bl
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
sub_401680	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_4017D0	proc near		; CODE XREF: _main:loc_401C99p

var_A3C		= byte ptr -0A3Ch
var_A34		= dword	ptr -0A34h
var_A30		= dword	ptr -0A30h
hMem		= dword	ptr -0A1Ch
pNumArgs	= dword	ptr -0A18h
var_A14		= dword	ptr -0A14h
var_A10		= dword	ptr -0A10h
var_484		= dword	ptr -484h
var_474		= dword	ptr -474h
var_470		= dword	ptr -470h
var_468		= dword	ptr -468h
var_458		= dword	ptr -458h
var_454		= dword	ptr -454h
var_44C		= dword	ptr -44Ch
var_43C		= dword	ptr -43Ch
var_438		= dword	ptr -438h
var_430		= dword	ptr -430h
var_420		= dword	ptr -420h
var_41C		= dword	ptr -41Ch
var_14		= dword	ptr -14h
var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset sub_40A801
		mov	eax, large fs:0
		push	eax
		sub	esp, 0A30h
		mov	eax, ___security_cookie
		xor	eax, ebp
		mov	[ebp+var_14], eax
		push	ebx
		push	esi
		push	edi
		push	eax
		lea	eax, [ebp+var_C]
		mov	large fs:0, eax
		mov	[ebp+var_10], esp
		xor	ebx, ebx
		mov	[ebp+var_A14], ebx
		mov	[ebp+pNumArgs],	ebx
		call	ds:GetCommandLineW
		lea	ecx, [ebp+pNumArgs]
		push	ecx		; pNumArgs
		push	eax		; lpCmdLine
		call	ds:CommandLineToArgvW
		mov	esi, eax
		mov	[ebp+var_4], ebx
		mov	eax, 7
		xor	edx, edx
		mov	[ebp+hMem], esi
		mov	[ebp+var_470], eax
		mov	[ebp+var_474], ebx
		mov	word ptr [ebp+var_484],	dx
		xor	ecx, ecx
		mov	[ebp+var_438], eax
		mov	[ebp+var_43C], ebx
		mov	word ptr [ebp+var_44C],	cx
		mov	byte ptr [ebp+var_4], 3
		mov	[ebp+var_41C], eax
		push	ebx
		mov	eax, offset dword_40B998
		lea	ecx, [ebp+var_430]
		mov	[ebp+var_420], ebx
		mov	word ptr [ebp+var_430],	dx
		call	sub_403320
		mov	byte ptr [ebp+var_4], 4
		cmp	[ebp+pNumArgs],	1
		jle	loc_401A89
		mov	edx, [esi+4]
		lea	eax, [ebp+var_484]
		push	eax
		lea	ecx, [ebp+var_44C]
		call	sub_401680
		add	esp, 4
		test	al, al
		jz	loc_401A89
		mov	eax, [ebp+var_474]
		push	offset aEvname	; "evname"
		lea	edi, [ebx+6]
		lea	ecx, [ebp+var_484]
		call	sub_401FB0
		cmp	eax, ebx
		jnz	loc_401A93
		mov	eax, [ebp+var_43C]
		push	offset dword_40B998
		xor	edi, edi
		lea	ecx, [ebp+var_44C]
		call	sub_401FB0
		cmp	eax, ebx
		jz	loc_401A93
		lea	ecx, [ebp+var_A10]
		push	ecx
		call	sub_4038E0
		lea	esi, [ebp+var_A34]
		mov	byte ptr [ebp+var_4], 5
		call	sub_401CF0
		push	ebx
		lea	edx, [ebp+var_44C]
		push	edx
		or	eax, 0FFFFFFFFh
		lea	edi, [ebp+var_430]
		mov	byte ptr [ebp+var_4], 6
		call	sub_403040
		mov	ecx, [ebp+var_41C]
		mov	eax, [ebp+var_430]
		cmp	ecx, 8
		jnb	short loc_40193F
		mov	eax, edi

loc_40193F:				; CODE XREF: sub_4017D0+16Bj
		mov	edx, [ebp+var_420]
		cmp	ecx, 8
		mov	ecx, [ebp+var_430]
		lea	eax, [eax+edx*2]
		jnb	short loc_401959
		lea	ecx, [ebp+var_430]

loc_401959:				; CODE XREF: sub_4017D0+181j
		mov	edx, [ebp+hMem]
		push	edx
		push	eax
		push	ecx
		lea	eax, [ebp+var_468]
		push	eax
		mov	[ebp+var_454], 0Fh
		mov	[ebp+var_458], ebx
		mov	byte ptr [ebp+var_468],	0
		call	sub_402CD0
		mov	byte ptr [ebp+var_4], 7
		mov	eax, [ebp+pNumArgs]
		add	eax, 0FFFFFFFEh
		cmp	eax, ebx
		jnz	short loc_40199F
		lea	ecx, [ebp+var_A34]
		push	ecx
		jmp	short loc_4019F4
; ---------------------------------------------------------------------------

loc_40199F:				; CODE XREF: sub_4017D0+1C4j
		cmp	eax, 1
		jnz	loc_401A2B
		mov	eax, [ebp+hMem]
		lea	edx, [ebp+var_484]
		push	edx
		mov	edx, [eax+8]
		lea	ecx, [ebp+var_44C]
		call	sub_401680
		add	esp, 4
		test	al, al
		jz	short loc_401A31
		lea	edx, [ebp+var_484]
		lea	ecx, [ebp+var_A34]
		call	sub_401D60
		push	ebx
		lea	ecx, [ebp+var_44C]
		mov	edi, eax
		push	ecx
		or	eax, 0FFFFFFFFh
		call	sub_403040
		lea	edx, [ebp+var_A34]
		push	edx		; int

loc_4019F4:				; CODE XREF: sub_4017D0+1CDj
		lea	ecx, [ebp+var_A10] ; int
		call	sub_404C70
		cmp	[ebp+var_454], 10h
		mov	edx, [ebp+var_468]
		jnb	short loc_401A14
		lea	edx, [ebp+var_468]

loc_401A14:				; CODE XREF: sub_4017D0+23Cj
		lea	ecx, [ebp+var_A10]
		call	sub_403CE0
		mov	[ebp+var_A14], 1
		jmp	short loc_401A31
; ---------------------------------------------------------------------------

loc_401A2B:				; CODE XREF: sub_4017D0+1D2j
		mov	[ebp+var_A14], ebx

loc_401A31:				; CODE XREF: sub_4017D0+1F8j
					; sub_4017D0+259j
		cmp	[ebp+var_454], 10h
		mov	ebx, ds:__imp_??3@YAXPAX@Z ; operator delete(void *)
		jb	short loc_401A4C
		mov	eax, [ebp+var_468]
		push	eax
		call	ebx ; operator delete(void *) ;	operator delete(void *)
		add	esp, 4

loc_401A4C:				; CODE XREF: sub_4017D0+26Ej
		mov	byte ptr [ebp+var_4], 8
		mov	eax, [ebp+var_A30]
		mov	ecx, [eax]
		push	eax
		push	ecx
		lea	edi, [ebp+var_A3C]
		lea	esi, [ebp+var_A34]
		call	sub_402050
		mov	ecx, [ebp+var_A30]
		push	ecx
		call	ebx ; operator delete(void *) ;	operator delete(void *)
		add	esp, 4
		lea	edx, [ebp+var_A10]
		push	edx
		mov	byte ptr [ebp+var_4], 4
		call	sub_403A20
		jmp	short loc_401A99
; ---------------------------------------------------------------------------

loc_401A89:				; CODE XREF: sub_4017D0+C0j
					; sub_4017D0+E0j
		mov	[ebp+var_A14], 0

loc_401A93:				; CODE XREF: sub_4017D0+101j
					; sub_4017D0+121j
		mov	ebx, ds:__imp_??3@YAXPAX@Z ; operator delete(void *)

loc_401A99:				; CODE XREF: sub_4017D0+2B7j
		cmp	[ebp+var_41C], 8
		jb	short loc_401AAE
		mov	eax, [ebp+var_430]
		push	eax
		call	ebx ; operator delete(void *) ;	operator delete(void *)
		add	esp, 4

loc_401AAE:				; CODE XREF: sub_4017D0+2D0j
		xor	edi, edi
		xor	ecx, ecx
		cmp	[ebp+var_438], 8
		mov	esi, 7
		mov	[ebp+var_41C], esi
		mov	[ebp+var_420], edi
		mov	word ptr [ebp+var_430],	cx
		jb	short loc_401ADF
		mov	edx, [ebp+var_44C]
		push	edx
		call	ebx ; operator delete(void *) ;	operator delete(void *)
		add	esp, 4

loc_401ADF:				; CODE XREF: sub_4017D0+301j
		xor	eax, eax
		cmp	[ebp+var_470], 8
		mov	[ebp+var_438], esi
		mov	[ebp+var_43C], edi
		mov	word ptr [ebp+var_44C],	ax
		jb	short loc_401B09
		mov	ecx, [ebp+var_484]
		push	ecx
		call	ebx ; operator delete(void *) ;	operator delete(void *)
		add	esp, 4

loc_401B09:				; CODE XREF: sub_4017D0+32Bj
					; DATA XREF: sub_401BEA+Ao
		mov	eax, [ebp+hMem]
		push	eax		; hMem
		call	ds:LocalFree
		mov	eax, [ebp+var_A14]
		mov	ecx, [ebp+var_C]
		mov	large fs:0, ecx
		pop	ecx
		pop	edi
		pop	esi
		pop	ebx
		mov	ecx, [ebp+var_14]
		xor	ecx, ebp
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	esp, ebp
		pop	ebp
		retn
sub_4017D0	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: noreturn

sub_401B38	proc near		; DATA XREF: .rdata:0040D504o
		mov	edx, dword_40F6AC
		mov	eax, [edx+10h]
		call	eax
		push	59h
		push	offset aParsecommandli ; "ParseCommandLine"
		push	offset aNitropdfkissme ; "NitroPDFKissMetricsTool.cpp"
		push	eax
		push	offset aExceptionHandl ; "==============================\nExcepti"...
		lea	ecx, [ebp-414h]
		push	400h		; SizeInBytes
		push	ecx		; DstBuf
		call	ds:sprintf_s
		mov	eax, dword_40F6AC
		mov	ecx, [eax+48h]
		lea	edx, [ebp-414h]
		push	edx
		call	ecx
		mov	edx, [ebp-0A38h]
		add	esp, 20h
		push	offset dword_40C960
		lea	eax, [ebp-0A24h]
		push	eax
		mov	[ebp-0A24h], edx
		call	_CxxThrowException
sub_401B38	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: noreturn

sub_401B98	proc near		; DATA XREF: .rdata:0040D514o
		push	59h
		push	offset aParsecommandli ; "ParseCommandLine"
		push	offset aNitropdfkissme ; "NitroPDFKissMetricsTool.cpp"
		push	offset aExceptionHan_0 ; "==============================\nExcepti"...
		lea	ecx, [ebp-884h]
		push	400h		; SizeInBytes
		push	ecx		; DstBuf
		call	ds:sprintf_s
		mov	eax, dword_40F6AC
		mov	ecx, [eax+48h]
		lea	edx, [ebp-884h]
		push	edx
		call	ecx
		add	esp, 1Ch
		push	offset dword_40C970
		lea	edx, [ebp-0A20h]
		push	edx
		mov	dword ptr [ebp-0A20h], 0
		call	_CxxThrowException
sub_401B98	endp


; =============== S U B	R O U T	I N E =======================================


sub_401BEA	proc near		; DATA XREF: .rdata:0040D524o
		mov	dword ptr [ebp-0A14h], 0
		mov	eax, offset loc_401B09
		retn
sub_401BEA	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_401C00	proc near		; CODE XREF: sub_40A7DE+7p

var_10		= byte ptr -10h
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4
arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset sub_40A618
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
		mov	esi, [ebp+arg_0]
		mov	[ebp+var_4], 0
		mov	eax, [esi+4]
		mov	ecx, [eax]
		push	eax
		push	ecx
		lea	edi, [ebp+var_10]
		call	sub_402050
		mov	eax, [esi+4]
		push	eax
		call	ds:__imp_??3@YAXPAX@Z ;	operator delete(void *)
		add	esp, 4
		mov	ecx, [ebp+var_C]
		mov	large fs:0, ecx
		pop	ecx
		pop	edi
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn	4
sub_401C00	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


; int __cdecl main(int argc, const char	**argv,	const char **envp)
_main		proc near		; CODE XREF: ___tmainCRTStartup+11Dp

argc		= dword	ptr  4
argv		= dword	ptr  8
envp		= dword	ptr  0Ch

		push	esi
		push	edi
		xor	edi, edi
		push	edi		; lpModuleName
		call	ds:GetModuleHandleW
		mov	esi, eax
		test	esi, esi
		jz	short loc_401CA3
		push	edi
		call	ds:GetCommandLineW
		push	eax
		push	edi
		push	esi
		call	ds:?AfxWinInit@@YGHPAUHINSTANCE__@@0PA_WH@Z ; AfxWinInit(HINSTANCE__ *,HINSTANCE__ *,wchar_t *,int)
		test	eax, eax
		jnz	short loc_401C99
		push	offset Format	; "Fatal Error:	MFC initialization failed\"...
		call	ds:wprintf
		add	esp, 4
		lea	eax, [edi+1]
		pop	edi
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_401C99:				; CODE XREF: _main+23j
		call	sub_4017D0
		mov	eax, edi
		pop	edi
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_401CA3:				; CODE XREF: _main+Fj
		push	offset aFatalErrorGetm ; "Fatal	Error: GetModuleHandle failed\n"
		call	ds:wprintf
		add	esp, 4
		pop	edi
		mov	eax, 1
		pop	esi
		retn
_main		endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_401CC0	proc near		; CODE XREF: sub_401680+A7p
					; sub_401680+E6p

var_4		= dword	ptr -4
arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		push	ecx
		push	edi
		mov	edi, eax
		xor	eax, eax
		mov	[edi+10h], eax
		mov	dword ptr [edi+14h], 7
		push	ecx
		mov	[ebp+var_4], eax
		mov	[edi], ax
		mov	eax, [ebp+arg_0]
		push	edx
		call	sub_403040
		mov	eax, edi
		pop	edi
		mov	esp, ebp
		pop	ebp
		retn	4
sub_401CC0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_401CF0	proc near		; CODE XREF: sub_4017D0+13Dp

var_10		= dword	ptr -10h
var_4		= dword	ptr -4

		push	ebp
		mov	ebp, esp
		sub	esp, 10h
		push	48h
		mov	dword ptr [esi+8], 0
		call	ds:__imp_??2@YAPAXI@Z ;	operator new(uint)
		add	esp, 4
		test	eax, eax
		jz	short loc_401D31
		mov	[esi+4], eax
		mov	[eax], eax
		mov	eax, [esi+4]
		mov	[eax+4], eax
		mov	eax, [esi+4]
		mov	[eax+8], eax
		mov	ecx, [esi+4]
		mov	al, 1
		mov	[ecx+44h], al
		mov	edx, [esi+4]
		mov	[edx+45h], al
		mov	eax, esi
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_401D31:				; CODE XREF: sub_401CF0+1Aj
		lea	eax, [ebp+var_4]
		push	eax
		lea	ecx, [ebp+var_10]
		mov	[ebp+var_4], 0
		call	ds:??0exception@std@@QAE@ABQBD@Z ; std::exception::exception(char const	* const	&)
		push	offset dword_40C9C4
		lea	ecx, [ebp+var_10]
		push	ecx
		mov	[ebp+var_10], offset off_40B814
		call	_CxxThrowException
sub_401CF0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_401D60	proc near		; CODE XREF: sub_4017D0+206p

var_6C		= dword	ptr -6Ch
var_68		= dword	ptr -68h
var_58		= dword	ptr -58h
var_54		= dword	ptr -54h
var_4C		= dword	ptr -4Ch
var_3C		= dword	ptr -3Ch
var_38		= dword	ptr -38h
var_30		= dword	ptr -30h
var_20		= dword	ptr -20h
var_1C		= dword	ptr -1Ch
var_14		= dword	ptr -14h
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4

		push	ebp
		mov	ebp, esp
		and	esp, 0FFFFFFF8h
		push	0FFFFFFFFh
		push	offset sub_40A748
		mov	eax, large fs:0
		push	eax
		sub	esp, 60h
		mov	eax, ___security_cookie
		xor	eax, esp
		mov	[esp+6Ch+var_14], eax
		push	ebx
		push	esi
		push	edi
		mov	eax, ___security_cookie
		xor	eax, esp
		push	eax
		lea	eax, [esp+7Ch+var_C]
		mov	large fs:0, eax
		mov	ebx, ecx
		mov	esi, edx
		push	esi
		mov	eax, ebx
		call	sub_402110
		mov	[esp+7Ch+var_6C], eax
		cmp	eax, [ebx+4]
		jz	short loc_401DCD
		mov	edi, [eax+1Ch]
		add	eax, 0Ch
		cmp	dword ptr [eax+14h], 8
		jb	short loc_401DBA
		mov	eax, [eax]

loc_401DBA:				; CODE XREF: sub_401D60+56j
		push	eax
		mov	eax, [esi+10h]
		mov	ecx, esi
		call	sub_401FB0
		test	eax, eax
		jns	loc_401EC0

loc_401DCD:				; CODE XREF: sub_401D60+4Aj
		mov	ecx, 7
		xor	eax, eax
		xor	edx, edx
		mov	[esp+7Ch+var_1C], ecx
		mov	[esp+7Ch+var_20], eax
		mov	word ptr [esp+7Ch+var_30], dx
		mov	[esp+7Ch+var_4], eax
		push	eax
		mov	[esp+80h+var_54], ecx
		mov	[esp+80h+var_58], eax
		xor	ecx, ecx
		push	esi
		or	eax, 0FFFFFFFFh
		lea	edi, [esp+84h+var_68]
		mov	word ptr [esp+84h+var_68], cx
		call	sub_403040
		mov	byte ptr [esp+7Ch+var_4], 1
		xor	edx, edx
		lea	edi, [esp+7Ch+var_30]
		lea	esi, [esp+7Ch+var_4C]
		mov	[esp+7Ch+var_38], 7
		mov	[esp+7Ch+var_3C], 0
		mov	word ptr [esp+7Ch+var_4C], dx
		call	sub_402F50
		lea	eax, [esp+7Ch+var_68]
		push	eax
		mov	ecx, ebx
		mov	byte ptr [esp+80h+var_4], 2
		call	sub_402DA0
		mov	ecx, [esp+7Ch+var_6C]
		push	eax
		push	ecx
		push	ebx
		lea	ebx, [esp+88h+var_6C]
		call	sub_402680
		mov	esi, [esp+7Ch+var_6C]
		mov	edi, 8
		cmp	[esp+7Ch+var_38], edi
		jb	short loc_401E6B
		mov	edx, [esp+7Ch+var_4C]
		push	edx
		call	ds:__imp_??3@YAXPAX@Z ;	operator delete(void *)
		add	esp, 4

loc_401E6B:				; CODE XREF: sub_401D60+FBj
		xor	ebx, ebx
		xor	eax, eax
		mov	[esp+7Ch+var_38], 7
		mov	[esp+7Ch+var_3C], ebx
		mov	word ptr [esp+7Ch+var_4C], ax
		cmp	[esp+7Ch+var_54], edi
		jb	short loc_401E94
		mov	ecx, [esp+7Ch+var_68]
		push	ecx
		call	ds:__imp_??3@YAXPAX@Z ;	operator delete(void *)
		add	esp, 4

loc_401E94:				; CODE XREF: sub_401D60+124j
		xor	edx, edx
		mov	[esp+7Ch+var_54], 7
		mov	[esp+7Ch+var_58], ebx
		mov	word ptr [esp+7Ch+var_68], dx
		cmp	[esp+7Ch+var_1C], edi
		jb	short loc_401EBB
		mov	eax, [esp+7Ch+var_30]
		push	eax
		call	ds:__imp_??3@YAXPAX@Z ;	operator delete(void *)
		add	esp, 4

loc_401EBB:				; CODE XREF: sub_401D60+14Bj
		lea	eax, [esi+28h]
		jmp	short loc_401EC7
; ---------------------------------------------------------------------------

loc_401EC0:				; CODE XREF: sub_401D60+67j
		mov	eax, [esp+7Ch+var_6C]
		add	eax, 28h

loc_401EC7:				; CODE XREF: sub_401D60+15Ej
		mov	ecx, [esp+7Ch+var_C]
		mov	large fs:0, ecx
		pop	ecx
		pop	edi
		pop	esi
		pop	ebx
		mov	ecx, [esp+6Ch+var_14]
		xor	ecx, esp
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	esp, ebp
		pop	ebp
		retn
sub_401D60	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_401EF0	proc near		; CODE XREF: sub_401680+89p

var_4		= dword	ptr -4
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch

		push	ebp
		mov	ebp, esp
		mov	ecx, [ebp+arg_0]
		sub	esp, 8
		push	esi
		mov	esi, [ebp+arg_4]
		test	esi, esi
		jnz	short loc_401F0A
		xor	eax, eax
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn	8
; ---------------------------------------------------------------------------

loc_401F0A:				; CODE XREF: sub_401EF0+Fj
		mov	eax, [ecx+10h]
		push	ebx
		push	edi
		test	eax, eax
		jz	short loc_401F43
		mov	edi, eax
		cmp	esi, edi
		ja	short loc_401F43
		mov	eax, 1
		sub	eax, esi
		add	edi, eax
		cmp	dword ptr [ecx+14h], 8
		jb	short loc_401F2C
		mov	eax, [ecx]
		jmp	short loc_401F2E
; ---------------------------------------------------------------------------

loc_401F2C:				; CODE XREF: sub_401EF0+36j
		mov	eax, ecx

loc_401F2E:				; CODE XREF: sub_401EF0+3Aj
					; sub_401EF0+B5j
		mov	[ebp+var_4], eax
		mov	ecx, edi
		test	edi, edi
		jz	short loc_401F43

loc_401F37:				; CODE XREF: sub_401EF0+51j
		cmp	word ptr [eax],	3Dh
		jz	short loc_401F4F
		add	eax, 2
		dec	ecx
		jnz	short loc_401F37

loc_401F43:				; CODE XREF: sub_401EF0+21j
					; sub_401EF0+27j ...
		pop	edi
		pop	ebx
		or	eax, 0FFFFFFFFh
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn	8
; ---------------------------------------------------------------------------

loc_401F4F:				; CODE XREF: sub_401EF0+4Bj
		test	eax, eax
		jz	short loc_401F43
		mov	edx, offset asc_40B99C ; "="
		mov	ecx, eax
		test	esi, esi
		jz	short loc_401F71
		mov	edi, edi

loc_401F60:				; CODE XREF: sub_401EF0+7Fj
		mov	bx, [ecx]
		cmp	bx, [edx]
		jnz	short loc_401F89
		add	ecx, 2
		add	edx, 2
		dec	esi
		jnz	short loc_401F60

loc_401F71:				; CODE XREF: sub_401EF0+6Cj
					; sub_401EF0+9Fj
		mov	ecx, [ebp+arg_0]
		cmp	dword ptr [ecx+14h], 8
		jb	short loc_401F7C
		mov	ecx, [ecx]

loc_401F7C:				; CODE XREF: sub_401EF0+88j
		pop	edi
		sub	eax, ecx
		pop	ebx
		sar	eax, 1
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn	8
; ---------------------------------------------------------------------------

loc_401F89:				; CODE XREF: sub_401EF0+76j
		sbb	edx, edx
		and	edx, 0FFFFFFFEh
		inc	edx
		jz	short loc_401F71
		mov	esi, [ebp+arg_4]
		mov	ecx, eax
		sub	ecx, [ebp+var_4]
		or	edx, 0FFFFFFFFh
		sar	ecx, 1
		sub	edx, ecx
		add	edi, edx
		add	eax, 2
		jmp	short loc_401F2E
sub_401EF0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_401FB0	proc near		; CODE XREF: sub_4017D0+FAp
					; sub_4017D0+11Ap ...

arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, eax
		mov	eax, [ecx+10h]
		cmp	eax, esi
		jnb	short loc_401FC0
		mov	esi, eax

loc_401FC0:				; CODE XREF: sub_401FB0+Cj
		mov	edx, esi
		cmp	esi, edi
		jb	short loc_401FC8
		mov	edx, edi

loc_401FC8:				; CODE XREF: sub_401FB0+14j
		cmp	dword ptr [ecx+14h], 8
		jb	short loc_401FD2
		mov	eax, [ecx]
		jmp	short loc_401FD4
; ---------------------------------------------------------------------------

loc_401FD2:				; CODE XREF: sub_401FB0+1Cj
		mov	eax, ecx

loc_401FD4:				; CODE XREF: sub_401FB0+20j
		mov	ecx, [ebp+arg_0]
		test	edx, edx
		jz	short loc_402001
		jmp	short loc_401FE0
; ---------------------------------------------------------------------------
		align 10h

loc_401FE0:				; CODE XREF: sub_401FB0+2Bj
					; sub_401FB0+3Fj
		mov	bx, [eax]
		cmp	bx, [ecx]
		jnz	short loc_401FF3
		add	eax, 2
		add	ecx, 2
		dec	edx
		jnz	short loc_401FE0
		jmp	short loc_402001
; ---------------------------------------------------------------------------

loc_401FF3:				; CODE XREF: sub_401FB0+36j
		movzx	eax, word ptr [eax]
		cmp	ax, [ecx]
		sbb	eax, eax
		and	eax, 0FFFFFFFEh
		inc	eax
		jnz	short loc_402015

loc_402001:				; CODE XREF: sub_401FB0+29j
					; sub_401FB0+41j
		cmp	esi, edi
		jnb	short loc_40200E
		pop	esi
		or	eax, 0FFFFFFFFh
		pop	ebx
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_40200E:				; CODE XREF: sub_401FB0+53j
		xor	eax, eax
		cmp	esi, edi
		setnz	al

loc_402015:				; CODE XREF: sub_401FB0+4Fj
		pop	esi
		pop	ebx
		pop	ebp
		retn	4
sub_401FB0	endp

; ---------------------------------------------------------------------------
		align 10h
; START	OF FUNCTION CHUNK FOR sub_40A610

loc_402020:				; CODE XREF: sub_40A610+3j
					; sub_40A7F6+6j
		mov	ecx, [eax+4]
		push	ecx
		call	ds:__imp_??3@YAXPAX@Z ;	operator delete(void *)
		pop	ecx
		retn
; END OF FUNCTION CHUNK	FOR sub_40A610
; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_402030	proc near		; CODE XREF: sub_402680+142p
					; sub_402680+1B6p
		cmp	dword ptr [eax+14h], 8
		push	edi
		mov	edi, [eax+10h]
		jb	short loc_40203C
		mov	eax, [eax]

loc_40203C:				; CODE XREF: sub_402030+8j
		push	eax
		mov	eax, [ecx+10h]
		call	sub_401FB0
		xor	ecx, ecx
		test	eax, eax
		sets	al
		pop	edi
		retn
sub_402030	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_402050	proc near		; CODE XREF: sub_4017D0+296p
					; sub_401C00+39p

var_4		= byte ptr -4
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch

		push	ebp
		mov	ebp, esp
		push	ecx
		mov	eax, [esi+4]
		mov	ecx, [ebp+arg_0]
		mov	edx, [ebp+arg_4]
		cmp	ecx, [eax]
		jnz	short loc_402097
		cmp	edx, eax
		jnz	short loc_402097
		mov	eax, [eax+4]
		push	eax
		mov	ecx, esi
		call	sub_402470
		mov	eax, [esi+4]
		mov	[eax+4], eax
		mov	eax, [esi+4]
		mov	[eax], eax
		mov	eax, [esi+4]
		mov	[eax+8], eax
		mov	ecx, [esi+4]
		mov	dword ptr [esi+8], 0
		mov	edx, [ecx]
		mov	[edi], edx
		mov	eax, edi
		mov	esp, ebp
		pop	ebp
		retn	8
; ---------------------------------------------------------------------------

loc_402097:				; CODE XREF: sub_402050+Fj
					; sub_402050+13j
		cmp	ecx, edx
		jz	short loc_402101
		jmp	short loc_4020A0
; ---------------------------------------------------------------------------
		align 10h

loc_4020A0:				; CODE XREF: sub_402050+4Bj
					; sub_402050+AFj
		cmp	byte ptr [ecx+45h], 0
		mov	edx, ecx
		jnz	short loc_4020EE
		mov	eax, [ecx+8]
		cmp	byte ptr [eax+45h], 0
		jnz	short loc_4020CF
		mov	ecx, eax
		mov	eax, [ecx]
		cmp	byte ptr [eax+45h], 0
		jnz	short loc_4020CA
		jmp	short loc_4020C0
; ---------------------------------------------------------------------------
		align 10h

loc_4020C0:				; CODE XREF: sub_402050+6Bj
					; sub_402050+78j
		mov	ecx, eax
		mov	eax, [ecx]
		cmp	byte ptr [eax+45h], 0
		jz	short loc_4020C0

loc_4020CA:				; CODE XREF: sub_402050+69j
		mov	[ebp+arg_0], ecx
		jmp	short loc_4020EE
; ---------------------------------------------------------------------------

loc_4020CF:				; CODE XREF: sub_402050+5Fj
		mov	eax, [ecx+4]
		cmp	byte ptr [eax+45h], 0
		jnz	short loc_4020EB

loc_4020D8:				; CODE XREF: sub_402050+99j
		cmp	ecx, [eax+8]
		jnz	short loc_4020EB
		mov	ecx, eax
		mov	[ebp+arg_0], ecx
		mov	eax, [eax+4]
		cmp	byte ptr [eax+45h], 0
		jz	short loc_4020D8

loc_4020EB:				; CODE XREF: sub_402050+86j
					; sub_402050+8Bj
		mov	[ebp+arg_0], eax

loc_4020EE:				; CODE XREF: sub_402050+56j
					; sub_402050+7Dj
		push	edx
		lea	eax, [ebp+var_4]
		push	eax
		push	esi
		call	sub_4021C0
		mov	ecx, [ebp+arg_0]
		cmp	ecx, [ebp+arg_4]
		jnz	short loc_4020A0

loc_402101:				; CODE XREF: sub_402050+49j
		mov	[edi], ecx
		mov	eax, edi
		mov	esp, ebp
		pop	ebp
		retn	8
sub_402050	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_402110	proc near		; CODE XREF: sub_401D60+3Ep

var_C		= dword	ptr -0Ch
var_8		= dword	ptr -8
var_4		= dword	ptr -4
arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		mov	eax, [eax+4]
		push	ebx
		mov	ebx, [eax+4]
		cmp	byte ptr [ebx+45h], 0
		mov	[ebp+var_8], eax
		jnz	loc_4021B5
		mov	ecx, [ebp+arg_0]
		mov	eax, [ecx+10h]
		mov	edx, [ecx+14h]
		push	esi
		push	edi
		mov	[ebp+var_4], eax
		mov	[ebp+var_C], edx
		jmp	short loc_402143
; ---------------------------------------------------------------------------
		align 10h

loc_402140:				; CODE XREF: sub_402110+9Ej
		mov	ecx, [ebp+arg_0]

loc_402143:				; CODE XREF: sub_402110+2Bj
		cmp	[ebp+var_C], 8
		lea	edx, [ebx+0Ch]
		jb	short loc_40214E
		mov	ecx, [ecx]

loc_40214E:				; CODE XREF: sub_402110+3Aj
		mov	edi, [edx+10h]
		mov	esi, edi
		cmp	esi, edi
		jnb	short $+2

loc_402157:				; CODE XREF: sub_402110+45j
		mov	esi, edi
		cmp	edi, eax
		jb	short loc_40215F
		mov	esi, eax

loc_40215F:				; CODE XREF: sub_402110+4Bj
		cmp	dword ptr [edx+14h], 8
		jb	short loc_402167
		mov	edx, [edx]

loc_402167:				; CODE XREF: sub_402110+53j
		test	esi, esi
		jz	short loc_402184
		jmp	short loc_402170
; ---------------------------------------------------------------------------
		align 10h

loc_402170:				; CODE XREF: sub_402110+5Bj
					; sub_402110+6Fj
		mov	ax, [edx]
		cmp	ax, [ecx]
		jnz	short loc_402198
		add	edx, 2
		add	ecx, 2
		dec	esi
		jnz	short loc_402170

loc_402181:				; CODE XREF: sub_402110+8Ej
		mov	eax, [ebp+var_4]

loc_402184:				; CODE XREF: sub_402110+59j
		cmp	edi, eax
		jb	short loc_402193
		xor	ecx, ecx
		cmp	edi, eax
		setnz	cl

loc_40218F:				; CODE XREF: sub_402110+93j
		test	ecx, ecx
		jns	short loc_4021A5

loc_402193:				; CODE XREF: sub_402110+76j
		mov	ebx, [ebx+8]
		jmp	short loc_4021AA
; ---------------------------------------------------------------------------

loc_402198:				; CODE XREF: sub_402110+66j
		sbb	ecx, ecx
		and	ecx, 0FFFFFFFEh
		inc	ecx
		jz	short loc_402181
		mov	eax, [ebp+var_4]
		jmp	short loc_40218F
; ---------------------------------------------------------------------------

loc_4021A5:				; CODE XREF: sub_402110+81j
		mov	[ebp+var_8], ebx
		mov	ebx, [ebx]

loc_4021AA:				; CODE XREF: sub_402110+86j
		cmp	byte ptr [ebx+45h], 0
		jz	short loc_402140
		mov	eax, [ebp+var_8]
		pop	edi
		pop	esi

loc_4021B5:				; CODE XREF: sub_402110+14j
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
sub_402110	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_4021C0	proc near		; CODE XREF: sub_402050+A4p

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h

		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+arg_8]
		cmp	byte ptr [edi+45h], 0
		jz	short loc_4021DA
		push	offset aInvalidMapSetT ; "invalid map/set<T> iterator"
		call	ds:?_Xout_of_range@std@@YAXPBD@Z ; std::_Xout_of_range(char const *)

loc_4021DA:				; CODE XREF: sub_4021C0+Dj
		lea	eax, [ebp+arg_8]
		call	sub_4025E0
		mov	ecx, [edi]
		cmp	byte ptr [ecx+45h], 0
		jz	short loc_4021EF
		mov	ebx, [edi+8]
		jmp	short loc_402206
; ---------------------------------------------------------------------------

loc_4021EF:				; CODE XREF: sub_4021C0+28j
		mov	eax, [edi+8]
		cmp	byte ptr [eax+45h], 0
		jz	short loc_4021FC
		mov	ebx, ecx
		jmp	short loc_402206
; ---------------------------------------------------------------------------

loc_4021FC:				; CODE XREF: sub_4021C0+36j
		mov	eax, [ebp+arg_8]
		mov	ebx, [eax+8]
		cmp	eax, edi
		jnz	short loc_402281

loc_402206:				; CODE XREF: sub_4021C0+2Dj
					; sub_4021C0+3Aj
		cmp	byte ptr [ebx+45h], 0
		mov	esi, [edi+4]
		jnz	short loc_402212
		mov	[ebx+4], esi

loc_402212:				; CODE XREF: sub_4021C0+4Dj
		mov	edx, [ebp+arg_0]
		mov	eax, [edx+4]
		cmp	[eax+4], edi
		jnz	short loc_402222
		mov	[eax+4], ebx
		jmp	short loc_40222D
; ---------------------------------------------------------------------------

loc_402222:				; CODE XREF: sub_4021C0+5Bj
		cmp	[esi], edi
		jnz	short loc_40222A
		mov	[esi], ebx
		jmp	short loc_40222D
; ---------------------------------------------------------------------------

loc_40222A:				; CODE XREF: sub_4021C0+64j
		mov	[esi+8], ebx

loc_40222D:				; CODE XREF: sub_4021C0+60j
					; sub_4021C0+68j
		mov	eax, [edx+4]
		cmp	[eax], edi
		jnz	short loc_402257
		cmp	byte ptr [ebx+45h], 0
		jz	short loc_40223E
		mov	ecx, esi
		jmp	short loc_402252
; ---------------------------------------------------------------------------

loc_40223E:				; CODE XREF: sub_4021C0+78j
		mov	eax, [ebx]
		cmp	byte ptr [eax+45h], 0
		mov	ecx, ebx
		jnz	short loc_402252

loc_402248:				; CODE XREF: sub_4021C0+90j
		mov	ecx, eax
		mov	eax, [ecx]
		cmp	byte ptr [eax+45h], 0
		jz	short loc_402248

loc_402252:				; CODE XREF: sub_4021C0+7Cj
					; sub_4021C0+86j
		mov	eax, [edx+4]
		mov	[eax], ecx

loc_402257:				; CODE XREF: sub_4021C0+72j
		mov	eax, [edx+4]
		cmp	[eax+8], edi
		jnz	short loc_4022DE
		cmp	byte ptr [ebx+45h], 0
		jz	short loc_40226F
		mov	ecx, [edx+4]
		mov	eax, esi
		mov	[ecx+8], eax
		jmp	short loc_4022DE
; ---------------------------------------------------------------------------

loc_40226F:				; CODE XREF: sub_4021C0+A3j
		mov	eax, ebx
		call	sub_4025C0
		mov	edx, [ebp+arg_0]
		mov	ecx, [edx+4]
		mov	[ecx+8], eax
		jmp	short loc_4022DE
; ---------------------------------------------------------------------------

loc_402281:				; CODE XREF: sub_4021C0+44j
		mov	[ecx+4], eax
		mov	ecx, [edi]
		mov	[eax], ecx
		cmp	eax, [edi+8]
		jnz	short loc_402291
		mov	esi, eax
		jmp	short loc_4022AB
; ---------------------------------------------------------------------------

loc_402291:				; CODE XREF: sub_4021C0+CBj
		cmp	byte ptr [ebx+45h], 0
		mov	esi, [eax+4]
		jnz	short loc_40229D
		mov	[ebx+4], esi

loc_40229D:				; CODE XREF: sub_4021C0+D8j
		mov	[esi], ebx
		mov	ecx, [edi+8]
		mov	[eax+8], ecx
		mov	edx, [edi+8]
		mov	[edx+4], eax

loc_4022AB:				; CODE XREF: sub_4021C0+CFj
		mov	ecx, [ebp+arg_0]
		mov	ecx, [ecx+4]
		cmp	[ecx+4], edi
		jnz	short loc_4022BB
		mov	[ecx+4], eax
		jmp	short loc_4022C9
; ---------------------------------------------------------------------------

loc_4022BB:				; CODE XREF: sub_4021C0+F4j
		mov	ecx, [edi+4]
		cmp	[ecx], edi
		jnz	short loc_4022C6
		mov	[ecx], eax
		jmp	short loc_4022C9
; ---------------------------------------------------------------------------

loc_4022C6:				; CODE XREF: sub_4021C0+100j
		mov	[ecx+8], eax

loc_4022C9:				; CODE XREF: sub_4021C0+F9j
					; sub_4021C0+104j
		mov	edx, [edi+4]
		mov	[eax+4], edx
		mov	dl, [edi+44h]
		mov	cl, [eax+44h]
		mov	[eax+44h], dl
		mov	edx, [ebp+arg_0]
		mov	[edi+44h], cl

loc_4022DE:				; CODE XREF: sub_4021C0+9Dj
					; sub_4021C0+ADj ...
		cmp	byte ptr [edi+44h], 1
		jnz	loc_4023FB
		mov	eax, [edx+4]
		cmp	ebx, [eax+4]
		jz	loc_4023F7

loc_4022F4:				; CODE XREF: sub_4021C0+1F9j
		cmp	byte ptr [ebx+44h], 1
		jnz	loc_4023F7
		mov	ecx, [esi]
		cmp	ebx, ecx
		jnz	short loc_402378
		mov	ecx, [esi+8]
		cmp	byte ptr [ecx+44h], 0
		jnz	short loc_402323
		mov	byte ptr [ecx+44h], 1
		push	edx
		mov	ecx, esi
		mov	byte ptr [esi+44h], 0
		call	sub_402500
		mov	ecx, [esi+8]
		mov	edx, [ebp+arg_0]

loc_402323:				; CODE XREF: sub_4021C0+14Bj
		cmp	byte ptr [ecx+45h], 0
		jnz	loc_4023AE
		mov	eax, [ecx]
		cmp	byte ptr [eax+44h], 1
		jnz	short loc_40233E
		mov	eax, [ecx+8]
		cmp	byte ptr [eax+44h], 1
		jz	short loc_4023AA

loc_40233E:				; CODE XREF: sub_4021C0+173j
		mov	eax, [ecx+8]
		cmp	byte ptr [eax+44h], 1
		jnz	short loc_40235D
		mov	eax, [ecx]
		mov	byte ptr [eax+44h], 1
		push	edx
		mov	byte ptr [ecx+44h], 0
		call	sub_402560
		mov	ecx, [esi+8]
		mov	edx, [ebp+arg_0]

loc_40235D:				; CODE XREF: sub_4021C0+185j
		mov	al, [esi+44h]
		mov	[ecx+44h], al
		mov	byte ptr [esi+44h], 1
		mov	ecx, [ecx+8]
		mov	byte ptr [ecx+44h], 1
		push	edx
		mov	ecx, esi
		call	sub_402500
		jmp	short loc_4023F7
; ---------------------------------------------------------------------------

loc_402378:				; CODE XREF: sub_4021C0+142j
		cmp	byte ptr [ecx+44h], 0
		jnz	short loc_402393
		mov	byte ptr [ecx+44h], 1
		push	edx
		mov	ecx, esi
		mov	byte ptr [esi+44h], 0
		call	sub_402560
		mov	ecx, [esi]
		mov	edx, [ebp+arg_0]

loc_402393:				; CODE XREF: sub_4021C0+1BCj
		cmp	byte ptr [ecx+45h], 0
		jnz	short loc_4023AE
		mov	eax, [ecx+8]
		cmp	byte ptr [eax+44h], 1
		jnz	short loc_4023C1
		mov	eax, [ecx]
		cmp	byte ptr [eax+44h], 1
		jnz	short loc_4023C1

loc_4023AA:				; CODE XREF: sub_4021C0+17Cj
		mov	byte ptr [ecx+44h], 0

loc_4023AE:				; CODE XREF: sub_4021C0+167j
					; sub_4021C0+1D7j
		mov	ecx, [edx+4]
		mov	ebx, esi
		mov	esi, [esi+4]
		cmp	ebx, [ecx+4]
		jnz	loc_4022F4
		jmp	short loc_4023F7
; ---------------------------------------------------------------------------

loc_4023C1:				; CODE XREF: sub_4021C0+1E0j
					; sub_4021C0+1E8j
		mov	eax, [ecx]
		cmp	byte ptr [eax+44h], 1
		jnz	short loc_4023DF
		mov	eax, [ecx+8]
		mov	byte ptr [eax+44h], 1
		push	edx
		mov	byte ptr [ecx+44h], 0
		call	sub_402500
		mov	ecx, [esi]
		mov	edx, [ebp+arg_0]

loc_4023DF:				; CODE XREF: sub_4021C0+207j
		mov	al, [esi+44h]
		mov	[ecx+44h], al
		mov	byte ptr [esi+44h], 1
		mov	ecx, [ecx]
		mov	byte ptr [ecx+44h], 1
		push	edx
		mov	ecx, esi
		call	sub_402560

loc_4023F7:				; CODE XREF: sub_4021C0+12Ej
					; sub_4021C0+138j ...
		mov	byte ptr [ebx+44h], 1

loc_4023FB:				; CODE XREF: sub_4021C0+122j
		cmp	dword ptr [edi+3Ch], 8
		mov	esi, ds:__imp_??3@YAXPAX@Z ; operator delete(void *)
		jb	short loc_402410
		mov	edx, [edi+28h]
		push	edx
		call	esi ; operator delete(void *) ;	operator delete(void *)
		add	esp, 4

loc_402410:				; CODE XREF: sub_4021C0+245j
		xor	ebx, ebx
		xor	eax, eax
		mov	dword ptr [edi+3Ch], 7
		mov	[edi+38h], ebx
		mov	[edi+28h], ax
		cmp	dword ptr [edi+20h], 8
		jb	short loc_402431
		mov	ecx, [edi+0Ch]
		push	ecx
		call	esi ; operator delete(void *) ;	operator delete(void *)
		add	esp, 4

loc_402431:				; CODE XREF: sub_4021C0+266j
		xor	edx, edx
		mov	dword ptr [edi+20h], 7
		mov	[edi+1Ch], ebx
		push	edi
		mov	[edi+0Ch], dx
		call	esi ; operator delete(void *) ;	operator delete(void *)
		mov	ecx, [ebp+arg_0]
		mov	eax, [ecx+8]
		add	esp, 4
		pop	edi
		pop	esi
		cmp	eax, ebx
		pop	ebx
		jbe	short loc_402458
		dec	eax
		mov	[ecx+8], eax

loc_402458:				; CODE XREF: sub_4021C0+292j
		mov	ecx, [ebp+arg_8]
		mov	eax, [ebp+arg_4]
		mov	[eax], ecx
		pop	ebp
		retn	0Ch
sub_4021C0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_402470	proc near		; CODE XREF: sub_402050+1Bp
					; sub_402470+27p

var_4		= dword	ptr -4
arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		push	ecx
		push	esi
		mov	esi, [ebp+arg_0]
		cmp	byte ptr [esi+45h], 0
		push	edi
		mov	[ebp+var_4], ecx
		mov	edi, esi
		jnz	short loc_4024F3
		push	ebx
		mov	ebx, ds:__imp_??3@YAXPAX@Z ; operator delete(void *)
		jmp	short loc_402490
; ---------------------------------------------------------------------------
		align 10h

loc_402490:				; CODE XREF: sub_402470+1Bj
					; sub_402470+80j
		mov	eax, [edi+8]
		mov	ecx, [ebp+var_4]
		push	eax
		call	sub_402470
		cmp	dword ptr [esi+3Ch], 8
		mov	edi, [edi]
		jb	short loc_4024AD
		mov	ecx, [esi+28h]
		push	ecx
		call	ebx ; operator delete(void *) ;	operator delete(void *)
		add	esp, 4

loc_4024AD:				; CODE XREF: sub_402470+32j
		xor	edx, edx
		mov	dword ptr [esi+3Ch], 7
		mov	dword ptr [esi+38h], 0
		mov	[esi+28h], dx
		cmp	dword ptr [esi+20h], 8
		jb	short loc_4024D0
		mov	eax, [esi+0Ch]
		push	eax
		call	ebx ; operator delete(void *) ;	operator delete(void *)
		add	esp, 4

loc_4024D0:				; CODE XREF: sub_402470+55j
		xor	ecx, ecx
		mov	dword ptr [esi+20h], 7
		mov	dword ptr [esi+1Ch], 0
		push	esi
		mov	[esi+0Ch], cx
		call	ebx ; operator delete(void *) ;	operator delete(void *)
		add	esp, 4
		cmp	byte ptr [edi+45h], 0
		mov	esi, edi
		jz	short loc_402490
		pop	ebx

loc_4024F3:				; CODE XREF: sub_402470+12j
		pop	edi
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn	4
sub_402470	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_402500	proc near		; CODE XREF: sub_4021C0+158p
					; sub_4021C0+1B1p ...

arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		mov	eax, [ecx+8]
		mov	edx, [eax]
		mov	[ecx+8], edx
		mov	edx, [eax]
		cmp	byte ptr [edx+45h], 0
		jnz	short loc_402516
		mov	[edx+4], ecx

loc_402516:				; CODE XREF: sub_402500+11j
		mov	edx, [ecx+4]
		mov	[eax+4], edx
		mov	edx, [ebp+arg_0]
		mov	edx, [edx+4]
		cmp	ecx, [edx+4]
		jnz	short loc_402533
		mov	[edx+4], eax
		mov	[eax], ecx
		mov	[ecx+4], eax
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_402533:				; CODE XREF: sub_402500+25j
		mov	edx, [ecx+4]
		cmp	ecx, [edx]
		jnz	short loc_402545
		mov	[edx], eax
		mov	[eax], ecx
		mov	[ecx+4], eax
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_402545:				; CODE XREF: sub_402500+38j
		mov	[edx+8], eax
		mov	[eax], ecx
		mov	[ecx+4], eax
		pop	ebp
		retn	4
sub_402500	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_402560	proc near		; CODE XREF: sub_4021C0+192p
					; sub_4021C0+1C9p ...

arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		mov	eax, [ecx]
		mov	edx, [eax+8]
		mov	[ecx], edx
		mov	edx, [eax+8]
		cmp	byte ptr [edx+45h], 0
		jnz	short loc_402576
		mov	[edx+4], ecx

loc_402576:				; CODE XREF: sub_402560+11j
		mov	edx, [ecx+4]
		mov	[eax+4], edx
		mov	edx, [ebp+arg_0]
		mov	edx, [edx+4]
		cmp	ecx, [edx+4]
		jnz	short loc_402594
		mov	[edx+4], eax
		mov	[eax+8], ecx
		mov	[ecx+4], eax
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_402594:				; CODE XREF: sub_402560+25j
		mov	edx, [ecx+4]
		cmp	ecx, [edx+8]
		jnz	short loc_4025A9
		mov	[edx+8], eax
		mov	[eax+8], ecx
		mov	[ecx+4], eax
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_4025A9:				; CODE XREF: sub_402560+3Aj
		mov	[edx], eax
		mov	[eax+8], ecx
		mov	[ecx+4], eax
		pop	ebp
		retn	4
sub_402560	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_4025C0	proc near		; CODE XREF: sub_4021C0+B1p
		mov	ecx, [eax+8]
		cmp	byte ptr [ecx+45h], 0
		jnz	short locret_4025DB
		lea	esp, [esp+0]

loc_4025D0:				; CODE XREF: sub_4025C0+19j
		mov	eax, ecx
		mov	ecx, [eax+8]
		cmp	byte ptr [ecx+45h], 0
		jz	short loc_4025D0

locret_4025DB:				; CODE XREF: sub_4025C0+7j
		retn
sub_4025C0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_4025E0	proc near		; CODE XREF: sub_4021C0+1Dp
					; sub_402680+19Fp
		mov	ecx, [eax]
		cmp	byte ptr [ecx+45h], 0
		jnz	short locret_40262A
		mov	edx, [ecx+8]
		cmp	byte ptr [edx+45h], 0
		jnz	short loc_40260D
		mov	ecx, [edx]
		cmp	byte ptr [ecx+45h], 0
		jnz	short loc_40260A
		lea	esp, [esp+0]

loc_402600:				; CODE XREF: sub_4025E0+28j
		mov	edx, ecx
		mov	ecx, [edx]
		cmp	byte ptr [ecx+45h], 0
		jz	short loc_402600

loc_40260A:				; CODE XREF: sub_4025E0+17j
		mov	[eax], edx
		retn
; ---------------------------------------------------------------------------

loc_40260D:				; CODE XREF: sub_4025E0+Fj
		mov	ecx, [ecx+4]
		cmp	byte ptr [ecx+45h], 0
		jnz	short loc_402628

loc_402616:				; CODE XREF: sub_4025E0+46j
		mov	edx, [eax]
		cmp	edx, [ecx+8]
		jnz	short loc_402628
		mov	[eax], ecx
		mov	ecx, [ecx+4]
		cmp	byte ptr [ecx+45h], 0
		jz	short loc_402616

loc_402628:				; CODE XREF: sub_4025E0+34j
					; sub_4025E0+3Bj
		mov	[eax], ecx

locret_40262A:				; CODE XREF: sub_4025E0+6j
		retn
sub_4025E0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_402630	proc near		; CODE XREF: sub_4028A0:loc_402A3Bp
					; sub_40A740+3j
		cmp	dword ptr [esi+30h], 8
		jb	short loc_402643
		mov	eax, [esi+1Ch]
		push	eax
		call	ds:__imp_??3@YAXPAX@Z ;	operator delete(void *)
		add	esp, 4

loc_402643:				; CODE XREF: sub_402630+4j
		xor	ecx, ecx
		mov	dword ptr [esi+30h], 7
		mov	dword ptr [esi+2Ch], 0
		mov	[esi+1Ch], cx
		cmp	dword ptr [esi+14h], 8
		jb	short loc_402669
		mov	edx, [esi]
		push	edx
		call	ds:__imp_??3@YAXPAX@Z ;	operator delete(void *)
		add	esp, 4

loc_402669:				; CODE XREF: sub_402630+2Bj
		xor	eax, eax
		mov	dword ptr [esi+14h], 7
		mov	dword ptr [esi+10h], 0
		mov	[esi], ax
		retn
sub_402630	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_402680	proc near		; CODE XREF: sub_401D60+E9p

var_C		= byte ptr -0Ch
var_4		= dword	ptr -4
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h

		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		mov	eax, [ebp+arg_0]
		cmp	dword ptr [eax+8], 0
		mov	ecx, [ebp+arg_8]
		push	esi
		lea	esi, [ecx+0Ch]
		mov	[ebp+var_4], 0
		jnz	short loc_4026B2
		push	ecx
		mov	ecx, [eax+4]
		push	1
		push	ebx
		call	sub_402A60
		mov	eax, ebx
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn	0Ch
; ---------------------------------------------------------------------------

loc_4026B2:				; CODE XREF: sub_402680+1Bj
		mov	eax, [eax+4]
		mov	ecx, [ebp+arg_4]
		push	edi
		cmp	ecx, [eax]
		jnz	short loc_4026FA
		cmp	dword ptr [ecx+20h], 8
		mov	edi, [ecx+1Ch]
		lea	eax, [ecx+0Ch]
		jb	short loc_4026CB
		mov	eax, [eax]

loc_4026CB:				; CODE XREF: sub_402680+47j
		push	eax
		mov	eax, [esi+10h]
		mov	ecx, esi
		call	sub_401FB0
		test	eax, eax
		jns	loc_40287F

loc_4026DE:				; CODE XREF: sub_402680+155j
		mov	eax, [ebp+arg_8]
		mov	ecx, [ebp+arg_4]
		push	eax
		mov	eax, [ebp+arg_0]
		push	1
		push	ebx
		call	sub_402A60
		pop	edi
		mov	eax, ebx
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn	0Ch
; ---------------------------------------------------------------------------

loc_4026FA:				; CODE XREF: sub_402680+3Bj
		cmp	ecx, eax
		jnz	short loc_40273F
		mov	ecx, [eax+8]
		mov	edi, [esi+10h]
		add	ecx, 0Ch
		cmp	dword ptr [esi+14h], 8
		jb	short loc_40270F
		mov	esi, [esi]

loc_40270F:				; CODE XREF: sub_402680+8Bj
		mov	eax, [ecx+10h]
		push	esi
		call	sub_401FB0
		test	eax, eax
		jns	loc_40287F
		mov	ecx, [ebp+arg_8]
		mov	eax, [ebp+arg_0]
		mov	edx, [eax+4]
		push	ecx
		mov	ecx, [edx+8]
		push	0
		push	ebx
		call	sub_402A60
		pop	edi
		mov	eax, ebx
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn	0Ch
; ---------------------------------------------------------------------------

loc_40273F:				; CODE XREF: sub_402680+7Cj
		cmp	dword ptr [ecx+20h], 8
		mov	edi, [ecx+1Ch]
		lea	eax, [ecx+0Ch]
		jb	short loc_40274D
		mov	eax, [eax]

loc_40274D:				; CODE XREF: sub_402680+C9j
		push	eax
		mov	eax, [esi+10h]
		mov	ecx, esi
		call	sub_401FB0
		test	eax, eax
		jns	loc_4027F4
		mov	ecx, [ebp+arg_4]
		mov	[ebp+var_4], ecx
		cmp	byte ptr [ecx+45h], 0
		jz	short loc_402771
		mov	ecx, [ecx+8]
		jmp	short loc_4027BA
; ---------------------------------------------------------------------------

loc_402771:				; CODE XREF: sub_402680+EAj
		mov	eax, [ecx]
		cmp	byte ptr [eax+45h], 0
		jnz	short loc_402791
		mov	ecx, eax
		mov	eax, [ecx+8]
		cmp	byte ptr [eax+45h], 0
		jnz	short loc_4027BA

loc_402784:				; CODE XREF: sub_402680+10Dj
		mov	ecx, eax
		mov	eax, [ecx+8]
		cmp	byte ptr [eax+45h], 0
		jz	short loc_402784
		jmp	short loc_4027BA
; ---------------------------------------------------------------------------

loc_402791:				; CODE XREF: sub_402680+F7j
		mov	eax, [ecx+4]
		cmp	byte ptr [eax+45h], 0
		jnz	short loc_4027B2
		lea	ebx, [ebx+0]

loc_4027A0:				; CODE XREF: sub_402680+130j
		cmp	ecx, [eax]
		jnz	short loc_4027B2
		mov	ecx, eax
		mov	[ebp+var_4], ecx
		mov	eax, [eax+4]
		cmp	byte ptr [eax+45h], 0
		jz	short loc_4027A0

loc_4027B2:				; CODE XREF: sub_402680+118j
					; sub_402680+122j
		cmp	byte ptr [ecx+45h], 0
		jnz	short loc_4027BD
		mov	ecx, eax

loc_4027BA:				; CODE XREF: sub_402680+EFj
					; sub_402680+102j ...
		mov	[ebp+var_4], ecx

loc_4027BD:				; CODE XREF: sub_402680+136j
		add	ecx, 0Ch
		mov	eax, esi
		call	sub_402030
		test	al, al
		jz	short loc_4027F4
		mov	ecx, [ebp+var_4]
		mov	eax, [ecx+8]
		cmp	byte ptr [eax+45h], 0
		jz	loc_4026DE
		mov	edx, [ebp+arg_8]
		mov	eax, [ebp+arg_0]
		push	edx
		push	0
		push	ebx
		call	sub_402A60
		pop	edi
		mov	eax, ebx
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn	0Ch
; ---------------------------------------------------------------------------

loc_4027F4:				; CODE XREF: sub_402680+DAj
					; sub_402680+149j
		mov	ecx, [ebp+arg_4]
		mov	edi, [esi+10h]
		add	ecx, 0Ch
		cmp	dword ptr [esi+14h], 8
		jb	short loc_402807
		mov	eax, [esi]
		jmp	short loc_402809
; ---------------------------------------------------------------------------

loc_402807:				; CODE XREF: sub_402680+181j
		mov	eax, esi

loc_402809:				; CODE XREF: sub_402680+185j
		push	eax
		mov	eax, [ecx+10h]
		call	sub_401FB0
		test	eax, eax
		jns	short loc_40287F
		mov	edi, [ebp+arg_4]
		lea	eax, [ebp+var_4]
		mov	[ebp+var_4], edi
		call	sub_4025E0
		mov	ecx, [eax]
		mov	eax, [ebp+arg_0]
		cmp	ecx, [eax+4]
		jz	short loc_402845
		mov	eax, [ebp+var_4]
		add	eax, 0Ch
		mov	ecx, esi
		call	sub_402030
		test	al, al
		jz	short loc_40287F
		mov	edi, [ebp+arg_4]
		mov	eax, [ebp+arg_0]

loc_402845:				; CODE XREF: sub_402680+1ACj
		mov	edx, [edi+8]
		cmp	byte ptr [edx+45h], 0
		jz	short loc_402866
		mov	ecx, [ebp+arg_8]
		push	ecx
		push	0
		push	ebx
		mov	ecx, edi
		call	sub_402A60
		pop	edi
		mov	eax, ebx
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn	0Ch
; ---------------------------------------------------------------------------

loc_402866:				; CODE XREF: sub_402680+1CCj
		mov	edx, [ebp+arg_8]
		mov	ecx, [ebp+var_4]
		push	edx
		push	1
		push	ebx
		call	sub_402A60
		pop	edi
		mov	eax, ebx
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn	0Ch
; ---------------------------------------------------------------------------

loc_40287F:				; CODE XREF: sub_402680+58j
					; sub_402680+9Aj ...
		mov	eax, [ebp+arg_8]
		mov	edx, [ebp+arg_0]
		push	eax
		lea	ecx, [ebp+var_C]
		push	ecx
		push	edx
		call	sub_4028A0
		mov	eax, [eax]
		pop	edi
		mov	[ebx], eax
		mov	eax, ebx
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn	0Ch
sub_402680	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_4028A0	proc near		; CODE XREF: sub_402680+20Bp

var_18		= dword	ptr -18h
var_14		= dword	ptr -14h
var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_8		= dword	ptr -8
var_4		= dword	ptr -4
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h

		push	ebp
		mov	ebp, esp
		sub	esp, 18h
		push	ebx
		push	esi
		mov	esi, [ebp+arg_8]
		push	edi
		mov	edi, [ebp+arg_0]
		mov	eax, [edi+4]
		mov	ebx, [eax+4]
		cmp	byte ptr [ebx+45h], 0
		mov	ecx, eax
		mov	al, 1
		mov	[ebp+var_4], ecx
		mov	byte ptr [ebp+var_C], al
		jnz	loc_402974
		mov	eax, [esi+1Ch]
		mov	edx, [esi+20h]
		mov	ecx, eax
		mov	[ebp+var_14], eax
		mov	[ebp+var_10], ecx
		mov	[ebp+var_18], edx
		jmp	short loc_4028E3
; ---------------------------------------------------------------------------
		align 10h

loc_4028E0:				; CODE XREF: sub_4028A0+C5j
		mov	ecx, [ebp+var_10]

loc_4028E3:				; CODE XREF: sub_4028A0+3Aj
		cmp	dword ptr [ebx+20h], 8
		mov	esi, [ebx+1Ch]
		lea	eax, [ebx+0Ch]
		mov	[ebp+var_4], ebx
		mov	[ebp+var_8], esi
		jb	short loc_4028F7
		mov	eax, [eax]

loc_4028F7:				; CODE XREF: sub_4028A0+53j
		mov	edi, [ebp+var_14]
		cmp	ecx, edi
		jnb	short loc_402900
		mov	edi, ecx

loc_402900:				; CODE XREF: sub_4028A0+5Cj
		mov	edx, edi
		cmp	edi, esi
		jb	short loc_402908
		mov	edx, esi

loc_402908:				; CODE XREF: sub_4028A0+64j
		cmp	[ebp+var_18], 8
		mov	ecx, [ebp+arg_8]
		jb	short loc_402916
		mov	ecx, [ecx+0Ch]
		jmp	short loc_402919
; ---------------------------------------------------------------------------

loc_402916:				; CODE XREF: sub_4028A0+6Fj
		add	ecx, 0Ch

loc_402919:				; CODE XREF: sub_4028A0+74j
		test	edx, edx
		jz	short loc_40293E
		lea	ecx, [ecx+0]

loc_402920:				; CODE XREF: sub_4028A0+8Fj
		mov	si, [ecx]
		cmp	si, [eax]
		jnz	short loc_402933
		add	ecx, 2
		add	eax, 2
		dec	edx
		jnz	short loc_402920
		jmp	short loc_40293B
; ---------------------------------------------------------------------------

loc_402933:				; CODE XREF: sub_4028A0+86j
		sbb	eax, eax
		and	eax, 0FFFFFFFEh
		inc	eax
		jnz	short loc_40294E

loc_40293B:				; CODE XREF: sub_4028A0+91j
		mov	esi, [ebp+var_8]

loc_40293E:				; CODE XREF: sub_4028A0+7Bj
		cmp	edi, esi
		jnb	short loc_402947
		or	eax, 0FFFFFFFFh
		jmp	short loc_40294E
; ---------------------------------------------------------------------------

loc_402947:				; CODE XREF: sub_4028A0+A0j
		xor	eax, eax
		cmp	edi, esi
		setnz	al

loc_40294E:				; CODE XREF: sub_4028A0+99j
					; sub_4028A0+A5j
		test	eax, eax
		sets	al
		mov	byte ptr [ebp+var_C], al
		test	al, al
		jz	short loc_40295E
		mov	ebx, [ebx]
		jmp	short loc_402961
; ---------------------------------------------------------------------------

loc_40295E:				; CODE XREF: sub_4028A0+B8j
		mov	ebx, [ebx+8]

loc_402961:				; CODE XREF: sub_4028A0+BCj
		cmp	byte ptr [ebx+45h], 0
		jz	loc_4028E0
		mov	ecx, [ebp+var_4]
		mov	esi, [ebp+arg_8]
		mov	edi, [ebp+arg_0]

loc_402974:				; CODE XREF: sub_4028A0+23j
		mov	ebx, ecx
		test	al, al
		jz	short loc_4029EE
		mov	edx, [edi+4]
		cmp	ecx, [edx]
		jnz	short loc_4029A3
		push	esi
		push	1
		lea	eax, [ebp+arg_8]
		push	eax
		mov	eax, edi
		call	sub_402A60
		mov	ecx, [eax]
		mov	eax, [ebp+arg_4]
		pop	edi
		pop	esi
		mov	[eax], ecx
		mov	byte ptr [eax+4], 1
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	0Ch
; ---------------------------------------------------------------------------

loc_4029A3:				; CODE XREF: sub_4028A0+DFj
		cmp	byte ptr [ecx+45h], 0
		jz	short loc_4029AE
		mov	ebx, [ecx+8]
		jmp	short loc_4029EE
; ---------------------------------------------------------------------------

loc_4029AE:				; CODE XREF: sub_4028A0+107j
		mov	eax, [ecx]
		cmp	byte ptr [eax+45h], 0
		jnz	short loc_4029CE
		mov	ebx, eax
		mov	eax, [ebx+8]
		cmp	byte ptr [eax+45h], 0
		jnz	short loc_4029EE

loc_4029C1:				; CODE XREF: sub_4028A0+12Aj
		mov	ebx, eax
		mov	eax, [ebx+8]
		cmp	byte ptr [eax+45h], 0
		jz	short loc_4029C1
		jmp	short loc_4029EE
; ---------------------------------------------------------------------------

loc_4029CE:				; CODE XREF: sub_4028A0+114j
		mov	eax, [ecx+4]
		cmp	byte ptr [eax+45h], 0
		jnz	short loc_4029E6

loc_4029D7:				; CODE XREF: sub_4028A0+144j
		cmp	ebx, [eax]
		jnz	short loc_4029E6
		mov	ebx, eax
		mov	eax, [eax+4]
		cmp	byte ptr [eax+45h], 0
		jz	short loc_4029D7

loc_4029E6:				; CODE XREF: sub_4028A0+135j
					; sub_4028A0+139j
		cmp	byte ptr [ebx+45h], 0
		jnz	short loc_4029EE
		mov	ebx, eax

loc_4029EE:				; CODE XREF: sub_4028A0+D8j
					; sub_4028A0+10Cj ...
		mov	edi, [esi+1Ch]
		add	esi, 0Ch
		cmp	dword ptr [esi+14h], 8
		lea	ecx, [ebx+0Ch]
		jb	short loc_402A01
		mov	eax, [esi]
		jmp	short loc_402A03
; ---------------------------------------------------------------------------

loc_402A01:				; CODE XREF: sub_4028A0+15Bj
		mov	eax, esi

loc_402A03:				; CODE XREF: sub_4028A0+15Fj
		push	eax
		mov	eax, [ecx+10h]
		call	sub_401FB0
		test	eax, eax
		jns	short loc_402A3B
		mov	edx, [ebp+arg_8]
		mov	eax, [ebp+var_C]
		push	edx
		push	eax
		mov	eax, [ebp+arg_0]
		lea	ecx, [ebp+arg_8]
		push	ecx
		mov	ecx, [ebp+var_4]
		call	sub_402A60
		mov	edx, [eax]
		mov	eax, [ebp+arg_4]
		pop	edi
		pop	esi
		mov	[eax], edx
		mov	byte ptr [eax+4], 1
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	0Ch
; ---------------------------------------------------------------------------

loc_402A3B:				; CODE XREF: sub_4028A0+16Ej
		call	sub_402630
		mov	eax, [ebp+arg_8]
		push	eax
		call	ds:__imp_??3@YAXPAX@Z ;	operator delete(void *)
		mov	eax, [ebp+arg_4]
		add	esp, 4
		pop	edi
		pop	esi
		mov	[eax], ebx
		mov	byte ptr [eax+4], 0
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	0Ch
sub_4028A0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_402A60	proc near		; CODE XREF: sub_402680+24p
					; sub_402680+6Bp ...

arg_0		= dword	ptr  8
arg_4		= byte ptr  0Ch
arg_8		= dword	ptr  10h

		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, eax
		mov	edx, [ebx+8]
		push	esi
		push	edi
		cmp	edx, 4924923h
		jb	short loc_402AD9
		mov	eax, [ebp+arg_8]
		mov	esi, ds:__imp_??3@YAXPAX@Z ; operator delete(void *)
		mov	ebx, 8
		cmp	[eax+3Ch], ebx
		jb	short loc_402A8F
		mov	eax, [eax+28h]
		push	eax
		call	esi ; operator delete(void *) ;	operator delete(void *)
		add	esp, 4

loc_402A8F:				; CODE XREF: sub_402A60+24j
		mov	eax, [ebp+arg_8]
		mov	edi, 7
		xor	ecx, ecx
		mov	[eax+3Ch], edi
		mov	dword ptr [eax+38h], 0
		mov	[eax+28h], cx
		cmp	[eax+20h], ebx
		jb	short loc_402AB8
		mov	edx, [eax+0Ch]
		push	edx
		call	esi ; operator delete(void *) ;	operator delete(void *)
		mov	eax, [ebp+arg_8]
		add	esp, 4

loc_402AB8:				; CODE XREF: sub_402A60+4Aj
		xor	ecx, ecx
		mov	[eax+20h], edi
		mov	dword ptr [eax+1Ch], 0
		push	eax
		mov	[eax+0Ch], cx
		call	esi ; operator delete(void *) ;	operator delete(void *)
		add	esp, 4
		push	offset aMapSetTTooLong ; "map/set<T> too long"
		call	ds:?_Xlength_error@std@@YAXPBD@Z ; std::_Xlength_error(char const *)

loc_402AD9:				; CODE XREF: sub_402A60+11j
		mov	edi, [ebp+arg_8]
		inc	edx
		mov	[ebx+8], edx
		mov	[edi+4], ecx
		mov	edx, [ebx+4]
		cmp	ecx, edx
		jnz	short loc_402AFA
		mov	[edx+4], edi
		mov	edx, [ebx+4]
		mov	[edx], edi
		mov	eax, [ebx+4]
		mov	[eax+8], edi
		jmp	short loc_402B1B
; ---------------------------------------------------------------------------

loc_402AFA:				; CODE XREF: sub_402A60+88j
		cmp	[ebp+arg_4], 0
		jz	short loc_402B0D
		mov	[ecx], edi
		mov	edx, [ebx+4]
		cmp	ecx, [edx]
		jnz	short loc_402B1B
		mov	[edx], edi
		jmp	short loc_402B1B
; ---------------------------------------------------------------------------

loc_402B0D:				; CODE XREF: sub_402A60+9Ej
		mov	[ecx+8], edi
		mov	edx, [ebx+4]
		cmp	ecx, [edx+8]
		jnz	short loc_402B1B
		mov	[edx+8], edi

loc_402B1B:				; CODE XREF: sub_402A60+98j
					; sub_402A60+A7j ...
		mov	edx, [edi+4]
		cmp	byte ptr [edx+44h], 0
		mov	ecx, edi
		mov	al, 1
		jnz	loc_402CAD
		lea	esp, [esp+0]

loc_402B30:				; CODE XREF: sub_402A60+247j
		mov	edx, [ecx+4]
		mov	esi, [edx+4]
		cmp	edx, [esi]
		jnz	loc_402BEA
		mov	esi, [esi+8]
		cmp	byte ptr [esi+44h], 0
		jz	loc_402BF2
		cmp	ecx, [edx+8]
		jnz	short loc_402B8B
		mov	ecx, edx
		mov	edx, [ecx+8]
		mov	esi, [edx]
		mov	[ecx+8], esi
		mov	esi, [edx]
		cmp	byte ptr [esi+45h], 0
		jnz	short loc_402B65
		mov	[esi+4], ecx

loc_402B65:				; CODE XREF: sub_402A60+100j
		mov	esi, [ecx+4]
		mov	[edx+4], esi
		mov	esi, [ebx+4]
		cmp	ecx, [esi+4]
		jnz	short loc_402B78
		mov	[esi+4], edx
		jmp	short loc_402B86
; ---------------------------------------------------------------------------

loc_402B78:				; CODE XREF: sub_402A60+111j
		mov	esi, [ecx+4]
		cmp	ecx, [esi]
		jnz	short loc_402B83
		mov	[esi], edx
		jmp	short loc_402B86
; ---------------------------------------------------------------------------

loc_402B83:				; CODE XREF: sub_402A60+11Dj
		mov	[esi+8], edx

loc_402B86:				; CODE XREF: sub_402A60+116j
					; sub_402A60+121j
		mov	[edx], ecx
		mov	[ecx+4], edx

loc_402B8B:				; CODE XREF: sub_402A60+EEj
		mov	edx, [ecx+4]
		mov	[edx+44h], al
		mov	edx, [ecx+4]
		mov	edx, [edx+4]
		mov	byte ptr [edx+44h], 0
		mov	edx, [ecx+4]
		mov	edx, [edx+4]
		mov	esi, [edx]
		mov	edi, [esi+8]
		mov	[edx], edi
		mov	edi, [esi+8]
		cmp	byte ptr [edi+45h], 0
		jnz	short loc_402BB4
		mov	[edi+4], edx

loc_402BB4:				; CODE XREF: sub_402A60+14Fj
		mov	edi, [edx+4]
		mov	[esi+4], edi
		mov	edi, [ebx+4]
		cmp	edx, [edi+4]
		jnz	short loc_402BCD
		mov	[edi+4], esi
		mov	[esi+8], edx
		jmp	loc_402C9A
; ---------------------------------------------------------------------------

loc_402BCD:				; CODE XREF: sub_402A60+160j
		mov	edi, [edx+4]
		cmp	edx, [edi+8]
		jnz	short loc_402BE0
		mov	[edi+8], esi
		mov	[esi+8], edx
		jmp	loc_402C9A
; ---------------------------------------------------------------------------

loc_402BE0:				; CODE XREF: sub_402A60+173j
		mov	[edi], esi
		mov	[esi+8], edx
		jmp	loc_402C9A
; ---------------------------------------------------------------------------

loc_402BEA:				; CODE XREF: sub_402A60+D8j
		mov	esi, [esi]
		cmp	byte ptr [esi+44h], 0
		jnz	short loc_402C0D

loc_402BF2:				; CODE XREF: sub_402A60+E5j
		mov	[edx+44h], al
		mov	[esi+44h], al
		mov	edx, [ecx+4]
		mov	edx, [edx+4]
		mov	byte ptr [edx+44h], 0
		mov	ecx, [ecx+4]
		mov	ecx, [ecx+4]
		jmp	loc_402CA0
; ---------------------------------------------------------------------------

loc_402C0D:				; CODE XREF: sub_402A60+190j
		cmp	ecx, [edx]
		jnz	short loc_402C4E
		mov	ecx, edx
		mov	edx, [ecx]
		mov	esi, [edx+8]
		mov	[ecx], esi
		mov	esi, [edx+8]
		cmp	byte ptr [esi+45h], 0
		jnz	short loc_402C26
		mov	[esi+4], ecx

loc_402C26:				; CODE XREF: sub_402A60+1C1j
		mov	esi, [ecx+4]
		mov	[edx+4], esi
		mov	esi, [ebx+4]
		cmp	ecx, [esi+4]
		jnz	short loc_402C39
		mov	[esi+4], edx
		jmp	short loc_402C48
; ---------------------------------------------------------------------------

loc_402C39:				; CODE XREF: sub_402A60+1D2j
		mov	esi, [ecx+4]
		cmp	ecx, [esi+8]
		jnz	short loc_402C46
		mov	[esi+8], edx
		jmp	short loc_402C48
; ---------------------------------------------------------------------------

loc_402C46:				; CODE XREF: sub_402A60+1DFj
		mov	[esi], edx

loc_402C48:				; CODE XREF: sub_402A60+1D7j
					; sub_402A60+1E4j
		mov	[edx+8], ecx
		mov	[ecx+4], edx

loc_402C4E:				; CODE XREF: sub_402A60+1AFj
		mov	edx, [ecx+4]
		mov	[edx+44h], al
		mov	edx, [ecx+4]
		mov	edx, [edx+4]
		mov	byte ptr [edx+44h], 0
		mov	edx, [ecx+4]
		mov	edx, [edx+4]
		mov	esi, [edx+8]
		mov	edi, [esi]
		mov	[edx+8], edi
		mov	edi, [esi]
		cmp	byte ptr [edi+45h], 0
		jnz	short loc_402C77
		mov	[edi+4], edx

loc_402C77:				; CODE XREF: sub_402A60+212j
		mov	edi, [edx+4]
		mov	[esi+4], edi
		mov	edi, [ebx+4]
		cmp	edx, [edi+4]
		jnz	short loc_402C8A
		mov	[edi+4], esi
		jmp	short loc_402C98
; ---------------------------------------------------------------------------

loc_402C8A:				; CODE XREF: sub_402A60+223j
		mov	edi, [edx+4]
		cmp	edx, [edi]
		jnz	short loc_402C95
		mov	[edi], esi
		jmp	short loc_402C98
; ---------------------------------------------------------------------------

loc_402C95:				; CODE XREF: sub_402A60+22Fj
		mov	[edi+8], esi

loc_402C98:				; CODE XREF: sub_402A60+228j
					; sub_402A60+233j
		mov	[esi], edx

loc_402C9A:				; CODE XREF: sub_402A60+168j
					; sub_402A60+17Bj ...
		mov	edi, [ebp+arg_8]
		mov	[edx+4], esi

loc_402CA0:				; CODE XREF: sub_402A60+1A8j
		mov	edx, [ecx+4]
		cmp	byte ptr [edx+44h], 0
		jz	loc_402B30

loc_402CAD:				; CODE XREF: sub_402A60+C6j
		mov	ecx, [ebx+4]
		mov	edx, [ecx+4]
		mov	[edx+44h], al
		mov	eax, [ebp+arg_0]
		mov	[eax], edi
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn	0Ch
sub_402A60	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_402CD0	proc near		; CODE XREF: sub_4017D0+1B0p
					; sub_404C70+2B5p ...

var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset sub_40A5F0
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
		mov	[ebp+var_10], esp
		mov	esi, [ebp+arg_0]
		mov	eax, [ebp+arg_8]
		sub	eax, [ebp+arg_4]
		mov	edi, [esi+10h]
		sar	eax, 1
		cmp	edi, eax
		ja	short loc_402D31
		cmp	[esi+14h], eax
		jz	short loc_402D31
		push	1
		push	eax
		mov	eax, esi
		call	sub_4036B0
		test	al, al
		jz	short loc_402D31
		cmp	dword ptr [esi+14h], 10h
		mov	[esi+10h], edi
		jb	short loc_402D2B
		mov	eax, [esi]
		jmp	short loc_402D2D
; ---------------------------------------------------------------------------

loc_402D2B:				; CODE XREF: sub_402CD0+55j
		mov	eax, esi

loc_402D2D:				; CODE XREF: sub_402CD0+59j
		mov	byte ptr [eax+edi], 0

loc_402D31:				; CODE XREF: sub_402CD0+39j
					; sub_402CD0+3Ej ...
		mov	[ebp+var_4], 0
		mov	eax, [ebp+arg_4]
		jmp	short loc_402D40
; ---------------------------------------------------------------------------
		align 10h

loc_402D40:				; CODE XREF: sub_402CD0+6Bj
					; sub_402CD0+85j
		cmp	eax, [ebp+arg_8]
		jz	short loc_402D86
		mov	bl, [eax]
		call	sub_402EC0
		mov	eax, [ebp+arg_4]
		add	eax, 2
		mov	[ebp+arg_4], eax
		jmp	short loc_402D40
; ---------------------------------------------------------------------------

loc_402D57:				; DATA XREF: .rdata:0040D25Co
		mov	esi, [ebp+arg_0]
		cmp	dword ptr [esi+14h], 10h
		jb	short loc_402D6C
		mov	eax, [esi]
		push	eax
		call	ds:__imp_??3@YAXPAX@Z ;	operator delete(void *)
		add	esp, 4

loc_402D6C:				; CODE XREF: sub_402CD0+8Ej
		push	0
		mov	dword ptr [esi+14h], 0Fh
		mov	dword ptr [esi+10h], 0
		push	0
		mov	byte ptr [esi],	0
		call	_CxxThrowException
; ---------------------------------------------------------------------------

loc_402D86:				; CODE XREF: sub_402CD0+73j
		mov	ecx, [ebp+var_C]
		mov	large fs:0, ecx
		pop	ecx
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	10h
sub_402CD0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_402DA0	proc near		; CODE XREF: sub_401D60+D9p

var_28		= dword	ptr -28h
var_1C		= dword	ptr -1Ch
var_18		= dword	ptr -18h
var_14		= dword	ptr -14h
var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4
arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset sub_40A709
		mov	eax, large fs:0
		push	eax
		sub	esp, 1Ch
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
		push	48h
		call	ds:__imp_??2@YAPAXI@Z ;	operator new(uint)
		mov	ebx, eax
		xor	eax, eax
		add	esp, 4
		mov	[ebp+var_14], ebx
		cmp	ebx, eax
		jz	loc_402E7D
		mov	ecx, [esi+4]
		mov	[ebx], ecx
		mov	edx, [esi+4]
		mov	[ebx+4], edx
		mov	ecx, [esi+4]
		lea	edi, [ebx+0Ch]
		mov	[ebp+var_4], eax
		mov	[ebx+8], ecx
		mov	[ebx+44h], ax
		mov	[ebp+var_18], edi
		mov	[ebp+var_1C], edi
		mov	byte ptr [ebp+var_4], 1
		cmp	edi, eax
		jz	short loc_402E51
		mov	[edi+10h], eax
		push	eax
		mov	eax, [ebp+arg_0]
		xor	edx, edx
		push	eax
		mov	dword ptr [edi+14h], 7
		or	eax, 0FFFFFFFFh
		mov	[edi], dx
		call	sub_403040
		lea	esi, [edi+1Ch]
		mov	byte ptr [ebp+var_4], 2
		mov	edi, [ebp+arg_0]
		xor	ecx, ecx
		mov	dword ptr [esi+14h], 7
		mov	dword ptr [esi+10h], 0
		add	edi, 1Ch
		mov	[esi], cx
		call	sub_402F50

loc_402E51:				; CODE XREF: sub_402DA0+6Ej
		mov	eax, ebx
		mov	ecx, [ebp+var_C]
		mov	large fs:0, ecx
		pop	ecx
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_402E67:				; DATA XREF: .rdata:0040D3E8o
		mov	edx, [ebp+var_14]
		push	edx
		call	ds:__imp_??3@YAXPAX@Z ;	operator delete(void *)
		add	esp, 4
		push	0
		push	0
		call	_CxxThrowException
; ---------------------------------------------------------------------------

loc_402E7D:				; CODE XREF: sub_402DA0+41j
		mov	[ebp+arg_0], eax
		lea	eax, [ebp+arg_0]
		push	eax
		lea	ecx, [ebp+var_28]
		call	ds:??0exception@std@@QAE@ABQBD@Z ; std::exception::exception(char const	* const	&)
		push	offset dword_40C9C4
		lea	ecx, [ebp+var_28]
		push	ecx
		mov	[ebp+var_28], offset off_40B814
		call	_CxxThrowException
sub_402DA0	endp

; ---------------------------------------------------------------------------
		align 10h
; [00000001 BYTES: COLLAPSED FUNCTION nullsub_1. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_402EC0	proc near		; CODE XREF: sub_402CD0+77p
		mov	ecx, [esi+10h]
		or	eax, 0FFFFFFFFh
		sub	eax, ecx
		cmp	eax, 1
		ja	short loc_402ED8
		push	offset aStringTooLong ;	"string	too long"
		call	ds:?_Xlength_error@std@@YAXPBD@Z ; std::_Xlength_error(char const *)

loc_402ED8:				; CODE XREF: sub_402EC0+Bj
		push	edi
		lea	edi, [ecx+1]
		cmp	edi, 0FFFFFFFEh
		jbe	short loc_402EEC
		push	offset aStringTooLong ;	"string	too long"
		call	ds:?_Xlength_error@std@@YAXPBD@Z ; std::_Xlength_error(char const *)

loc_402EEC:				; CODE XREF: sub_402EC0+1Fj
		mov	eax, [esi+14h]
		cmp	eax, edi
		jnb	short loc_402F10
		push	ecx		; Size
		push	edi		; Dst
		push	esi		; int
		call	sub_403540
		test	edi, edi
		jz	short loc_402F49

loc_402EFF:				; CODE XREF: sub_402EC0+52j
		mov	ecx, [esi+10h]
		mov	edx, 10h
		cmp	[esi+14h], edx
		jb	short loc_402F2C
		mov	eax, [esi]
		jmp	short loc_402F2E
; ---------------------------------------------------------------------------

loc_402F10:				; CODE XREF: sub_402EC0+31j
		test	edi, edi
		jnz	short loc_402EFF
		mov	[esi+10h], edi
		cmp	eax, 10h
		jb	short loc_402F25
		mov	eax, [esi]
		mov	byte ptr [eax],	0
		mov	eax, esi
		pop	edi
		retn
; ---------------------------------------------------------------------------

loc_402F25:				; CODE XREF: sub_402EC0+5Aj
		mov	eax, esi
		mov	byte ptr [eax],	0
		pop	edi
		retn
; ---------------------------------------------------------------------------

loc_402F2C:				; CODE XREF: sub_402EC0+4Aj
		mov	eax, esi

loc_402F2E:				; CODE XREF: sub_402EC0+4Ej
		mov	[eax+ecx], bl
		mov	[esi+10h], edi
		cmp	[esi+14h], edx
		jb	short loc_402F43
		mov	eax, [esi]
		mov	byte ptr [eax+edi], 0
		mov	eax, esi
		pop	edi
		retn
; ---------------------------------------------------------------------------

loc_402F43:				; CODE XREF: sub_402EC0+77j
		mov	eax, esi
		mov	byte ptr [eax+edi], 0

loc_402F49:				; CODE XREF: sub_402EC0+3Dj
		mov	eax, esi
		pop	edi
		retn
sub_402EC0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_402F50	proc near		; CODE XREF: sub_401680+B5p
					; sub_401680+F4p ...
		cmp	esi, edi
		jz	short loc_402FBD
		cmp	dword ptr [esi+14h], 8
		jb	short loc_402F66
		mov	eax, [esi]
		push	eax
		call	ds:__imp_??3@YAXPAX@Z ;	operator delete(void *)
		add	esp, 4

loc_402F66:				; CODE XREF: sub_402F50+8j
		xor	ecx, ecx
		mov	dword ptr [esi+14h], 7
		mov	dword ptr [esi+10h], 0
		mov	[esi], cx
		cmp	dword ptr [edi+14h], 8
		jnb	short loc_402F94
		mov	edx, [edi+10h]
		lea	eax, [edx+edx+2]
		push	eax		; Size
		push	edi		; Src
		push	esi		; Dst
		call	ds:memmove
		add	esp, 0Ch
		jmp	short loc_402F9E
; ---------------------------------------------------------------------------

loc_402F94:				; CODE XREF: sub_402F50+2Dj
		mov	ecx, [edi]
		mov	[esi], ecx
		mov	dword ptr [edi], 0

loc_402F9E:				; CODE XREF: sub_402F50+42j
		mov	edx, [edi+10h]
		mov	[esi+10h], edx
		mov	eax, [edi+14h]
		mov	[esi+14h], eax
		xor	ecx, ecx
		mov	dword ptr [edi+14h], 7
		mov	dword ptr [edi+10h], 0
		mov	[edi], cx

loc_402FBD:				; CODE XREF: sub_402F50+2j
		mov	eax, esi
		retn
sub_402F50	endp


; =============== S U B	R O U T	I N E =======================================


sub_402FC0	proc near		; CODE XREF: sub_403040+31p
					; sub_403040+3Ap
		push	edi
		mov	edi, eax
		mov	eax, [esi+10h]
		cmp	eax, ecx
		jnb	short loc_402FD5
		push	offset aInvalidStringP ; "invalid string position"
		call	ds:?_Xout_of_range@std@@YAXPBD@Z ; std::_Xout_of_range(char const *)

loc_402FD5:				; CODE XREF: sub_402FC0+8j
		sub	eax, ecx
		cmp	eax, edi
		jnb	short loc_402FDD
		mov	edi, eax

loc_402FDD:				; CODE XREF: sub_402FC0+19j
		test	edi, edi
		jz	short loc_403037
		mov	edx, [esi+14h]
		push	ebx
		cmp	edx, 8
		jb	short loc_402FEE
		mov	ebx, [esi]
		jmp	short loc_402FF0
; ---------------------------------------------------------------------------

loc_402FEE:				; CODE XREF: sub_402FC0+28j
		mov	ebx, esi

loc_402FF0:				; CODE XREF: sub_402FC0+2Cj
		cmp	edx, 8
		jb	short loc_402FF9
		mov	edx, [esi]
		jmp	short loc_402FFB
; ---------------------------------------------------------------------------

loc_402FF9:				; CODE XREF: sub_402FC0+33j
		mov	edx, esi

loc_402FFB:				; CODE XREF: sub_402FC0+37j
		sub	eax, edi
		add	eax, eax
		push	eax		; Size
		lea	eax, [ecx+edi]
		lea	eax, [ebx+eax*2]
		push	eax		; Src
		lea	ecx, [edx+ecx*2]
		push	ecx		; Dst
		call	ds:memmove
		mov	eax, [esi+10h]
		add	esp, 0Ch
		sub	eax, edi
		cmp	dword ptr [esi+14h], 8
		mov	[esi+10h], eax
		pop	ebx
		jb	short loc_40302F
		mov	ecx, [esi]
		xor	edx, edx
		mov	[ecx+eax*2], dx
		mov	eax, esi
		pop	edi
		retn
; ---------------------------------------------------------------------------

loc_40302F:				; CODE XREF: sub_402FC0+61j
		mov	ecx, esi
		xor	edx, edx
		mov	[ecx+eax*2], dx

loc_403037:				; CODE XREF: sub_402FC0+1Fj
		mov	eax, esi
		pop	edi
		retn
sub_402FC0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_403040	proc near		; CODE XREF: sub_401680+4Cp
					; sub_4017D0+157p ...

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch

		push	ebp
		mov	ebp, esp
		mov	ecx, [ebp+arg_0]
		push	ebx
		mov	ebx, [ebp+arg_4]
		push	esi
		mov	esi, [ecx+10h]
		cmp	esi, ebx
		jnb	short loc_40305D
		push	offset aInvalidStringP ; "invalid string position"
		call	ds:?_Xout_of_range@std@@YAXPBD@Z ; std::_Xout_of_range(char const *)

loc_40305D:				; CODE XREF: sub_403040+10j
		sub	esi, ebx
		cmp	eax, esi
		jnb	short loc_403065
		mov	esi, eax

loc_403065:				; CODE XREF: sub_403040+21j
		cmp	edi, ecx
		jnz	short loc_403087
		lea	ecx, [esi+ebx]
		or	eax, 0FFFFFFFFh
		mov	esi, edi
		call	sub_402FC0
		mov	eax, ebx
		xor	ecx, ecx
		call	sub_402FC0
		pop	esi
		mov	eax, edi
		pop	ebx
		pop	ebp
		retn	8
; ---------------------------------------------------------------------------

loc_403087:				; CODE XREF: sub_403040+27j
		mov	eax, edi
		call	sub_4032D0
		test	al, al
		jz	short loc_4030E1
		mov	ecx, [ebp+arg_0]
		mov	eax, 8
		cmp	[ecx+14h], eax
		jb	short loc_4030A1
		mov	ecx, [ecx]

loc_4030A1:				; CODE XREF: sub_403040+5Dj
		cmp	[edi+14h], eax
		jb	short loc_4030AA
		mov	eax, [edi]
		jmp	short loc_4030AC
; ---------------------------------------------------------------------------

loc_4030AA:				; CODE XREF: sub_403040+64j
		mov	eax, edi

loc_4030AC:				; CODE XREF: sub_403040+68j
		mov	edx, [ebp+arg_4]
		lea	ebx, [esi+esi]
		push	ebx		; Size
		lea	ecx, [ecx+edx*2]
		push	ecx		; Src
		push	eax		; Dst
		call	memcpy
		add	esp, 0Ch
		cmp	dword ptr [edi+14h], 8
		mov	[edi+10h], esi
		jb	short loc_4030D9
		mov	eax, [edi]
		xor	edx, edx
		mov	[ebx+eax], dx
		pop	esi
		mov	eax, edi
		pop	ebx
		pop	ebp
		retn	8
; ---------------------------------------------------------------------------

loc_4030D9:				; CODE XREF: sub_403040+87j
		mov	eax, edi
		xor	edx, edx
		mov	[ebx+eax], dx

loc_4030E1:				; CODE XREF: sub_403040+50j
		pop	esi
		mov	eax, edi
		pop	ebx
		pop	ebp
		retn	8
sub_403040	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_4030F0	proc near		; CODE XREF: sub_403150+CAp

var_10		= dword	ptr -10h
var_4		= dword	ptr -4

		push	ebp
		mov	ebp, esp
		sub	esp, 10h
		xor	eax, eax
		test	ecx, ecx
		jz	short loc_40313E
		cmp	ecx, 7FFFFFFFh
		ja	short loc_403115
		lea	eax, [ecx+ecx]
		push	eax
		call	ds:__imp_??2@YAPAXI@Z ;	operator new(uint)
		add	esp, 4
		test	eax, eax
		jnz	short loc_40313E

loc_403115:				; CODE XREF: sub_4030F0+12j
		lea	ecx, [ebp+var_4]
		push	ecx
		lea	ecx, [ebp+var_10]
		mov	[ebp+var_4], 0
		call	ds:??0exception@std@@QAE@ABQBD@Z ; std::exception::exception(char const	* const	&)
		push	offset dword_40C9C4
		lea	edx, [ebp+var_10]
		push	edx
		mov	[ebp+var_10], offset off_40B814
		call	_CxxThrowException
; ---------------------------------------------------------------------------

loc_40313E:				; CODE XREF: sub_4030F0+Aj
					; sub_4030F0+23j
		mov	esp, ebp
		pop	ebp
		retn
sub_4030F0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_403150	proc near		; CODE XREF: sub_4032D0+20p
					; sub_403320+89p

var_20		= dword	ptr -20h
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
		push	offset sub_40A530
		mov	eax, large fs:0
		push	eax
		sub	esp, 14h
		push	ebx
		push	esi
		push	edi
		mov	eax, ___security_cookie
		xor	eax, ebp
		push	eax
		lea	eax, [ebp+var_C]
		mov	large fs:0, eax
		mov	[ebp+var_10], esp
		mov	eax, [ebp+arg_4]
		mov	edi, [ebp+arg_0]
		mov	esi, eax
		or	esi, 7
		cmp	esi, 7FFFFFFEh
		jbe	short loc_403192
		mov	esi, eax
		jmp	short loc_4031B9
; ---------------------------------------------------------------------------

loc_403192:				; CODE XREF: sub_403150+3Cj
		mov	ebx, [edi+14h]
		mov	eax, 0AAAAAAABh
		mul	esi
		mov	ecx, ebx
		shr	ecx, 1
		shr	edx, 1
		cmp	ecx, edx
		jbe	short loc_4031B9
		mov	eax, 7FFFFFFEh
		sub	eax, ecx
		lea	esi, [ecx+ebx]
		cmp	ebx, eax
		jbe	short loc_4031B9
		mov	esi, 7FFFFFFEh

loc_4031B9:				; CODE XREF: sub_403150+40j
					; sub_403150+54j ...
		xor	eax, eax
		lea	ecx, [esi+1]
		mov	[ebp+var_4], eax
		cmp	ecx, eax
		jbe	short loc_4031DD
		cmp	ecx, 7FFFFFFFh
		ja	short loc_4031E1
		add	ecx, ecx
		push	ecx
		call	ds:__imp_??2@YAPAXI@Z ;	operator new(uint)
		add	esp, 4
		test	eax, eax
		jz	short loc_4031E1

loc_4031DD:				; CODE XREF: sub_403150+73j
		mov	ebx, eax
		jmp	short loc_403231
; ---------------------------------------------------------------------------

loc_4031E1:				; CODE XREF: sub_403150+7Bj
					; sub_403150+8Bj
		lea	edx, [ebp+var_14]
		push	edx
		lea	ecx, [ebp+var_20]
		mov	[ebp+var_14], 0
		call	ds:??0exception@std@@QAE@ABQBD@Z ; std::exception::exception(char const	* const	&)
		push	offset dword_40C9C4
		lea	eax, [ebp+var_20]
		push	eax
		mov	[ebp+var_20], offset off_40B814
		call	_CxxThrowException
; ---------------------------------------------------------------------------

loc_40320A:				; DATA XREF: .rdata:0040D0FCo
		mov	eax, [ebp+arg_4]
		lea	ecx, [eax+1]
		mov	[ebp+var_10], esp
		mov	[ebp+arg_4], eax
		mov	byte ptr [ebp+var_4], 2
		call	sub_4030F0
		mov	[ebp+var_14], eax
		mov	eax, offset loc_403228
		retn
; ---------------------------------------------------------------------------

loc_403228:				; CODE XREF: sub_403150+D7j
					; DATA XREF: sub_403150+D2o
		mov	edi, [ebp+arg_0]
		mov	esi, [ebp+arg_4]
		mov	ebx, [ebp+var_14]

loc_403231:				; CODE XREF: sub_403150+8Fj
		mov	ecx, [ebp+arg_8]
		test	ecx, ecx
		jz	short loc_403254
		cmp	dword ptr [edi+14h], 8
		jb	short loc_403242
		mov	eax, [edi]
		jmp	short loc_403244
; ---------------------------------------------------------------------------

loc_403242:				; CODE XREF: sub_403150+ECj
		mov	eax, edi

loc_403244:				; CODE XREF: sub_403150+F0j
		add	ecx, ecx
		push	ecx		; Size
		push	eax		; Src
		push	ebx		; Dst
		call	memcpy
		mov	ecx, [ebp+arg_8]
		add	esp, 0Ch

loc_403254:				; CODE XREF: sub_403150+E6j
		cmp	dword ptr [edi+14h], 8
		jb	short loc_403269
		mov	edx, [edi]
		push	edx
		call	ds:__imp_??3@YAXPAX@Z ;	operator delete(void *)
		mov	ecx, [ebp+arg_8]
		add	esp, 4

loc_403269:				; CODE XREF: sub_403150+108j
		mov	[edi], ebx
		mov	[edi+14h], esi
		mov	[edi+10h], ecx
		cmp	esi, 8
		jb	short loc_403278
		mov	edi, ebx

loc_403278:				; CODE XREF: sub_403150+124j
		xor	edx, edx
		mov	[edi+ecx*2], dx
		mov	ecx, [ebp+var_C]
		mov	large fs:0, ecx
		pop	ecx
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	0Ch
sub_403150	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: noreturn

sub_403292	proc near		; DATA XREF: .rdata:0040D0ECo
		mov	esi, [ebp+8]
		cmp	dword ptr [esi+14h], 8
		jb	short loc_4032A7
		mov	eax, [esi]
		push	eax
		call	ds:__imp_??3@YAXPAX@Z ;	operator delete(void *)
		add	esp, 4

loc_4032A7:				; CODE XREF: sub_403292+7j
		xor	ecx, ecx
		push	ecx
		mov	dword ptr [esi+14h], 7
		mov	dword ptr [esi+10h], 0
		push	ecx
		mov	[esi], cx
		call	_CxxThrowException
sub_403292	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_4032D0	proc near		; CODE XREF: sub_403040+49p
		cmp	esi, 7FFFFFFEh
		jbe	short loc_4032E3
		push	offset aStringTooLong ;	"string	too long"
		call	ds:?_Xlength_error@std@@YAXPBD@Z ; std::_Xlength_error(char const *)

loc_4032E3:				; CODE XREF: sub_4032D0+6j
		mov	ecx, [eax+14h]
		cmp	ecx, esi
		jnb	short loc_4032FE
		mov	ecx, [eax+10h]
		push	ecx
		push	esi
		push	eax
		call	sub_403150
		xor	eax, eax
		cmp	eax, esi
		sbb	eax, eax
		neg	eax
		retn
; ---------------------------------------------------------------------------

loc_4032FE:				; CODE XREF: sub_4032D0+18j
		test	esi, esi
		jnz	short loc_403311
		mov	[eax+10h], esi
		cmp	ecx, 8
		jb	short loc_40330C
		mov	eax, [eax]

loc_40330C:				; CODE XREF: sub_4032D0+38j
		xor	edx, edx
		mov	[eax], dx

loc_403311:				; CODE XREF: sub_4032D0+30j
		xor	eax, eax
		cmp	eax, esi
		sbb	eax, eax
		neg	eax
		retn
sub_4032D0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_403320	proc near		; CODE XREF: sub_401680+42p
					; sub_401680+7Bp ...

arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		push	esi
		mov	esi, eax
		push	edi
		mov	edi, ecx
		test	esi, esi
		jz	short loc_403385
		mov	ecx, [edi+14h]
		cmp	ecx, 8
		jb	short loc_403339
		mov	eax, [edi]
		jmp	short loc_40333B
; ---------------------------------------------------------------------------

loc_403339:				; CODE XREF: sub_403320+13j
		mov	eax, edi

loc_40333B:				; CODE XREF: sub_403320+17j
		cmp	esi, eax
		jb	short loc_403385
		cmp	ecx, 8
		jb	short loc_403348
		mov	eax, [edi]
		jmp	short loc_40334A
; ---------------------------------------------------------------------------

loc_403348:				; CODE XREF: sub_403320+22j
		mov	eax, edi

loc_40334A:				; CODE XREF: sub_403320+26j
		mov	edx, [edi+10h]
		lea	eax, [eax+edx*2]
		cmp	eax, esi
		jbe	short loc_403385
		cmp	ecx, 8
		jb	short loc_40336F
		mov	eax, [edi]
		sub	esi, eax
		mov	eax, [ebp+arg_0]
		sar	esi, 1
		push	esi
		push	edi
		call	sub_403040
		pop	edi
		pop	esi
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_40336F:				; CODE XREF: sub_403320+37j
		mov	eax, edi
		sub	esi, eax
		mov	eax, [ebp+arg_0]
		sar	esi, 1
		push	esi
		push	edi
		call	sub_403040
		pop	edi
		pop	esi
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_403385:				; CODE XREF: sub_403320+Bj
					; sub_403320+1Dj ...
		push	ebx
		mov	ebx, [ebp+arg_0]
		cmp	ebx, 7FFFFFFEh
		jbe	short loc_40339C
		push	offset aStringTooLong ;	"string	too long"
		call	ds:?_Xlength_error@std@@YAXPBD@Z ; std::_Xlength_error(char const *)

loc_40339C:				; CODE XREF: sub_403320+6Fj
		mov	eax, [edi+14h]
		cmp	eax, ebx
		jnb	short loc_4033BC
		mov	ecx, [edi+10h]
		push	ecx
		push	ebx
		push	edi
		call	sub_403150
		test	ebx, ebx
		jz	short loc_40341A

loc_4033B2:				; CODE XREF: sub_403320+9Ej
		cmp	dword ptr [edi+14h], 8
		jb	short loc_4033E6
		mov	eax, [edi]
		jmp	short loc_4033E8
; ---------------------------------------------------------------------------

loc_4033BC:				; CODE XREF: sub_403320+81j
		test	ebx, ebx
		jnz	short loc_4033B2
		mov	[edi+10h], ebx
		cmp	eax, 8
		jb	short loc_4033D8
		mov	eax, [edi]
		xor	edx, edx
		pop	ebx
		mov	[eax], dx
		mov	eax, edi
		pop	edi
		pop	esi
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_4033D8:				; CODE XREF: sub_403320+A6j
		pop	ebx
		mov	eax, edi
		xor	edx, edx
		pop	edi
		mov	[eax], dx
		pop	esi
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_4033E6:				; CODE XREF: sub_403320+96j
		mov	eax, edi

loc_4033E8:				; CODE XREF: sub_403320+9Aj
		add	ebx, ebx
		push	ebx		; Size
		push	esi		; Src
		push	eax		; Dst
		call	memcpy
		mov	eax, [ebp+arg_0]
		add	esp, 0Ch
		cmp	dword ptr [edi+14h], 8
		mov	[edi+10h], eax
		jb	short loc_403412
		mov	eax, [edi]
		xor	ecx, ecx
		mov	[ebx+eax], cx
		pop	ebx
		mov	eax, edi
		pop	edi
		pop	esi
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_403412:				; CODE XREF: sub_403320+DFj
		mov	eax, edi
		xor	ecx, ecx
		mov	[ebx+eax], cx

loc_40341A:				; CODE XREF: sub_403320+90j
		pop	ebx
		mov	eax, edi
		pop	edi
		pop	esi
		pop	ebp
		retn	4
sub_403320	endp

; ---------------------------------------------------------------------------
		align 10h
; START	OF FUNCTION CHUNK FOR sub_40A701

loc_403430:				; CODE XREF: sub_40A701+3j
					; sub_40A730+3j ...
		cmp	dword ptr [esi+14h], 8
		jb	short loc_403442
		mov	eax, [esi]
		push	eax
		call	ds:__imp_??3@YAXPAX@Z ;	operator delete(void *)
		add	esp, 4

loc_403442:				; CODE XREF: sub_40A701-72CDj
		xor	ecx, ecx
		mov	dword ptr [esi+14h], 7
		mov	dword ptr [esi+10h], 0
		mov	[esi], cx
		retn
; END OF FUNCTION CHUNK	FOR sub_40A701
; ---------------------------------------------------------------------------
		align 10h
; START	OF FUNCTION CHUNK FOR sub_40A691

loc_403460:				; CODE XREF: sub_40A691+6j
					; sub_40A69C+6j ...
		cmp	dword ptr [esi+14h], 10h
		jb	short loc_403472
		mov	eax, [esi]
		push	eax
		call	ds:__imp_??3@YAXPAX@Z ;	operator delete(void *)
		add	esp, 4

loc_403472:				; CODE XREF: sub_40A691-722Dj
		mov	dword ptr [esi+14h], 0Fh
		mov	dword ptr [esi+10h], 0
		mov	byte ptr [esi],	0
		retn
; END OF FUNCTION CHUNK	FOR sub_40A691
; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_403490	proc near		; DATA XREF: .rdata:0040C9C8o
		mov	dword ptr [ecx], offset	off_40B814
		jmp	ds:??1exception@std@@UAE@XZ ; std::exception::~exception(void)
sub_403490	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_4034A0	proc near		; DATA XREF: .rdata:off_40B814o

arg_0		= byte ptr  8

		push	ebp
		mov	ebp, esp
		push	esi
		mov	esi, ecx
		mov	dword ptr [esi], offset	off_40B814
		call	ds:??1exception@std@@UAE@XZ ; std::exception::~exception(void)
		test	[ebp+arg_0], 1
		jz	short loc_4034C2
		push	esi
		call	ds:__imp_??3@YAXPAX@Z ;	operator delete(void *)
		add	esp, 4

loc_4034C2:				; CODE XREF: sub_4034A0+16j
		mov	eax, esi
		pop	esi
		pop	ebp
		retn	4
sub_4034A0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_4034D0	proc near		; DATA XREF: .rdata:0040C9B4o

arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+arg_0]
		push	esi
		push	eax
		mov	esi, ecx
		call	ds:__imp_??0exception@std@@QAE@ABV01@@Z	; std::exception::exception(std::exception const &)
		mov	dword ptr [esi], offset	off_40B814
		mov	eax, esi
		pop	esi
		pop	ebp
		retn	4
sub_4034D0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_4034F0	proc near		; CODE XREF: sub_403540+C3p

var_10		= dword	ptr -10h
var_4		= dword	ptr -4

		push	ebp
		mov	ebp, esp
		sub	esp, 10h
		xor	eax, eax
		test	ecx, ecx
		jz	short loc_403538
		cmp	ecx, 0FFFFFFFFh
		ja	short loc_40350F
		push	ecx
		call	ds:__imp_??2@YAPAXI@Z ;	operator new(uint)
		add	esp, 4
		test	eax, eax
		jnz	short loc_403538

loc_40350F:				; CODE XREF: sub_4034F0+Fj
		lea	eax, [ebp+var_4]
		push	eax
		lea	ecx, [ebp+var_10]
		mov	[ebp+var_4], 0
		call	ds:??0exception@std@@QAE@ABQBD@Z ; std::exception::exception(char const	* const	&)
		push	offset dword_40C9C4
		lea	ecx, [ebp+var_10]
		push	ecx
		mov	[ebp+var_10], offset off_40B814
		call	_CxxThrowException
; ---------------------------------------------------------------------------

loc_403538:				; CODE XREF: sub_4034F0+Aj
					; sub_4034F0+1Dj
		mov	esp, ebp
		pop	ebp
		retn
sub_4034F0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_403540(int,	void *Dst, size_t Size)
sub_403540	proc near		; CODE XREF: sub_402EC0+36p
					; sub_4036B0+27p ...

var_24		= dword	ptr -24h
var_18		= dword	ptr -18h
var_14		= dword	ptr -14h
var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4
arg_0		= dword	ptr  8
Dst		= dword	ptr  0Ch
Size		= dword	ptr  10h

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset sub_40A5D0
		mov	eax, large fs:0
		push	eax
		sub	esp, 18h
		push	ebx
		push	esi
		push	edi
		mov	eax, ___security_cookie
		xor	eax, ebp
		push	eax
		lea	eax, [ebp+var_C]
		mov	large fs:0, eax
		mov	[ebp+var_10], esp
		mov	eax, [ebp+Dst]
		mov	edi, [ebp+arg_0]
		mov	esi, eax
		or	esi, 0Fh
		cmp	esi, 0FFFFFFFEh
		jbe	short loc_40357F
		mov	esi, eax
		jmp	short loc_4035A6
; ---------------------------------------------------------------------------

loc_40357F:				; CODE XREF: sub_403540+39j
		mov	ebx, [edi+14h]
		mov	eax, 0AAAAAAABh
		mul	esi
		mov	ecx, ebx
		shr	ecx, 1
		shr	edx, 1
		cmp	ecx, edx
		jbe	short loc_4035A6
		mov	eax, 0FFFFFFFEh
		sub	eax, ecx
		lea	esi, [ecx+ebx]
		cmp	ebx, eax
		jbe	short loc_4035A6
		mov	esi, 0FFFFFFFEh

loc_4035A6:				; CODE XREF: sub_403540+3Dj
					; sub_403540+51j ...
		xor	eax, eax
		lea	ecx, [esi+1]
		mov	[ebp+var_4], eax
		cmp	ecx, eax
		jbe	short loc_4035C5
		cmp	ecx, 0FFFFFFFFh
		ja	short loc_4035CA
		push	ecx
		call	ds:__imp_??2@YAPAXI@Z ;	operator new(uint)
		add	esp, 4
		test	eax, eax
		jz	short loc_4035CA

loc_4035C5:				; CODE XREF: sub_403540+70j
		mov	[ebp+Dst], eax
		jmp	short loc_403617
; ---------------------------------------------------------------------------

loc_4035CA:				; CODE XREF: sub_403540+75j
					; sub_403540+83j
		lea	ecx, [ebp+var_14]
		push	ecx
		lea	ecx, [ebp+var_24]
		mov	[ebp+var_14], 0
		call	ds:??0exception@std@@QAE@ABQBD@Z ; std::exception::exception(char const	* const	&)
		push	offset dword_40C9C4
		lea	edx, [ebp+var_24]
		push	edx
		mov	[ebp+var_24], offset off_40B814
		call	_CxxThrowException
; ---------------------------------------------------------------------------

loc_4035F3:				; DATA XREF: .rdata:0040D1F0o
		mov	eax, [ebp+Dst]
		lea	ecx, [eax+1]
		mov	[ebp+var_10], esp
		mov	[ebp+var_18], eax
		mov	byte ptr [ebp+var_4], 2
		call	sub_4034F0
		mov	[ebp+Dst], eax
		mov	eax, offset loc_403611
		retn
; ---------------------------------------------------------------------------

loc_403611:				; CODE XREF: sub_403540+D0j
					; DATA XREF: sub_403540+CBo
		mov	edi, [ebp+arg_0]
		mov	esi, [ebp+var_18]

loc_403617:				; CODE XREF: sub_403540+88j
		mov	ebx, [ebp+Size]
		test	ebx, ebx
		jz	short loc_403638
		cmp	dword ptr [edi+14h], 10h
		jb	short loc_403628
		mov	eax, [edi]
		jmp	short loc_40362A
; ---------------------------------------------------------------------------

loc_403628:				; CODE XREF: sub_403540+E2j
		mov	eax, edi

loc_40362A:				; CODE XREF: sub_403540+E6j
		push	ebx		; Size
		push	eax		; Src
		mov	eax, [ebp+Dst]
		push	eax		; Dst
		call	memcpy
		add	esp, 0Ch

loc_403638:				; CODE XREF: sub_403540+DCj
		cmp	dword ptr [edi+14h], 10h
		jb	short loc_40364A
		mov	ecx, [edi]
		push	ecx
		call	ds:__imp_??3@YAXPAX@Z ;	operator delete(void *)
		add	esp, 4

loc_40364A:				; CODE XREF: sub_403540+FCj
		mov	eax, [ebp+Dst]
		mov	byte ptr [edi],	0
		mov	[edi], eax
		mov	[edi+14h], esi
		mov	[edi+10h], ebx
		cmp	esi, 10h
		jb	short loc_40365F
		mov	edi, eax

loc_40365F:				; CODE XREF: sub_403540+11Bj
		mov	byte ptr [edi+ebx], 0
		mov	ecx, [ebp+var_C]
		mov	large fs:0, ecx
		pop	ecx
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	0Ch
sub_403540	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: noreturn

sub_403677	proc near		; DATA XREF: .rdata:0040D1E0o
		mov	esi, [ebp+8]
		cmp	dword ptr [esi+14h], 10h
		jb	short loc_40368C
		mov	edx, [esi]
		push	edx
		call	ds:__imp_??3@YAXPAX@Z ;	operator delete(void *)
		add	esp, 4

loc_40368C:				; CODE XREF: sub_403677+7j
		push	0
		mov	dword ptr [esi+14h], 0Fh
		mov	dword ptr [esi+10h], 0
		push	0
		mov	byte ptr [esi],	0
		call	_CxxThrowException
sub_403677	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_4036B0	proc near		; CODE XREF: sub_402CD0+45p

Dst		= dword	ptr  8
arg_4		= byte ptr  0Ch

		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+Dst]
		push	esi
		mov	esi, eax
		cmp	ebx, 0FFFFFFFEh
		jbe	short loc_4036CA
		push	offset aStringTooLong ;	"string	too long"
		call	ds:?_Xlength_error@std@@YAXPBD@Z ; std::_Xlength_error(char const *)

loc_4036CA:				; CODE XREF: sub_4036B0+Dj
		mov	eax, [esi+14h]
		cmp	eax, ebx
		jnb	short loc_4036EA
		mov	eax, [esi+10h]
		push	eax		; Size
		push	ebx		; Dst
		push	esi		; int
		call	sub_403540
		xor	ecx, ecx
		cmp	ecx, ebx
		sbb	eax, eax
		pop	esi
		neg	eax
		pop	ebx
		pop	ebp
		retn	8
; ---------------------------------------------------------------------------

loc_4036EA:				; CODE XREF: sub_4036B0+1Fj
		cmp	[ebp+arg_4], 0
		jz	short loc_40373F
		cmp	ebx, 10h
		jnb	short loc_40373F
		push	edi
		mov	edi, [esi+10h]
		cmp	ebx, edi
		jnb	short loc_4036FF
		mov	edi, ebx

loc_4036FF:				; CODE XREF: sub_4036B0+4Bj
		cmp	eax, 10h
		jb	short loc_403722
		mov	ebx, [esi]
		test	edi, edi
		jz	short loc_403715
		push	edi		; Size
		push	ebx		; Src
		push	esi		; Dst
		call	memcpy
		add	esp, 0Ch

loc_403715:				; CODE XREF: sub_4036B0+58j
		push	ebx
		call	ds:__imp_??3@YAXPAX@Z ;	operator delete(void *)
		mov	ebx, [ebp+Dst]
		add	esp, 4

loc_403722:				; CODE XREF: sub_4036B0+52j
		mov	[esi+10h], edi
		mov	dword ptr [esi+14h], 0Fh
		xor	ecx, ecx
		mov	byte ptr [edi+esi], 0
		cmp	ecx, ebx
		pop	edi
		sbb	eax, eax
		pop	esi
		neg	eax
		pop	ebx
		pop	ebp
		retn	8
; ---------------------------------------------------------------------------

loc_40373F:				; CODE XREF: sub_4036B0+3Ej
					; sub_4036B0+43j
		test	ebx, ebx
		jnz	short loc_403750
		mov	[esi+10h], ebx
		cmp	eax, 10h
		jb	short loc_40374D
		mov	esi, [esi]

loc_40374D:				; CODE XREF: sub_4036B0+99j
		mov	byte ptr [esi],	0

loc_403750:				; CODE XREF: sub_4036B0+91j
		xor	ecx, ecx
		cmp	ecx, ebx
		sbb	eax, eax
		pop	esi
		neg	eax
		pop	ebx
		pop	ebp
		retn	8
sub_4036B0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __usercall sub_403760@<eax>(LPCWSTR lpWideCharStr@<ecx>, int)
sub_403760	proc near		; CODE XREF: sub_403FF0+1C4p
					; sub_403FF0+299p ...

var_1C		= dword	ptr -1Ch
Memory		= dword	ptr -18h
var_14		= byte ptr -14h
var_10		= byte ptr -10h
var_F		= byte ptr -0Fh
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4
arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset sub_40A023
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
		mov	ebx, ecx
		mov	[ebp+var_1C], 0
		mov	ecx, [ebp+arg_0]
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		mov	esi, 1
		lea	ecx, [ebp+var_14]
		mov	[ebp+var_1C], esi
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		mov	eax, ebx
		mov	[ebp+var_4], esi
		lea	edx, [eax+2]

loc_4037B3:				; CODE XREF: sub_403760+5Cj
		mov	cx, [eax]
		add	eax, 2
		test	cx, cx
		jnz	short loc_4037B3
		push	0		; lpUsedDefaultChar
		push	0		; lpDefaultChar
		push	0		; cbMultiByte
		sub	eax, edx
		push	0		; lpMultiByteStr
		sar	eax, 1
		mov	esi, eax
		push	esi		; cchWideChar
		push	ebx		; lpWideCharStr
		push	0		; dwFlags
		push	0FDE9h		; CodePage
		call	ds:WideCharToMultiByte
		mov	edi, eax
		push	edi		; Size
		call	ds:malloc
		add	esp, 4
		push	0		; lpUsedDefaultChar
		push	0		; lpDefaultChar
		push	edi		; cbMultiByte
		push	eax		; lpMultiByteStr
		push	esi		; cchWideChar
		push	ebx		; lpWideCharStr
		push	0		; dwFlags
		push	0FDE9h		; CodePage
		mov	[ebp+Memory], eax
		call	ds:WideCharToMultiByte
		xor	ebx, ebx
		mov	[ebp+var_F], 0
		test	edi, edi
		jle	short loc_40387D
		lea	esp, [esp+0]

loc_403810:				; CODE XREF: sub_403760+11Bj
		mov	eax, [ebp+Memory]
		mov	al, [ebx+eax]
		mov	[ebp+var_10], al
		cmp	al, 80h
		jnb	short loc_403831
		movzx	ecx, al
		push	ecx		; C
		call	ds:isalnum
		add	esp, 4
		test	eax, eax
		jnz	short loc_403835
		mov	al, [ebp+var_10]

loc_403831:				; CODE XREF: sub_403760+BBj
		cmp	al, 2Eh
		jnz	short loc_403846

loc_403835:				; CODE XREF: sub_403760+CCj
		mov	ecx, [ebp+arg_0]
		push	1
		lea	edx, [ebp+var_10]
		push	edx
		call	ds:?Append@?$CSimpleStringT@_W$00@ATL@@QAEXPB_WH@Z ; ATL::CSimpleStringT<wchar_t,1>::Append(wchar_t const *,int)
		jmp	short loc_403878
; ---------------------------------------------------------------------------

loc_403846:				; CODE XREF: sub_403760+D3j
		movzx	eax, al
		push	eax
		lea	ecx, [ebp+var_14]
		push	offset a02x	; "%02X"
		push	ecx
		call	ds:?Format@?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAAXPB_WZZ ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::Format(wchar_t const *,...)
		mov	esi, [ebp+arg_0]
		add	esp, 0Ch
		push	offset asc_40BC4C ; "%"
		mov	ecx, esi
		call	ds:?Append@?$CSimpleStringT@_W$00@ATL@@QAEXPB_W@Z ; ATL::CSimpleStringT<wchar_t,1>::Append(wchar_t const *)
		lea	edx, [ebp+var_14]
		push	edx
		mov	ecx, esi
		call	ds:?Append@?$CSimpleStringT@_W$00@ATL@@QAEXABV12@@Z ; ATL::CSimpleStringT<wchar_t,1>::Append(ATL::CSimpleStringT<wchar_t,1> const &)

loc_403878:				; CODE XREF: sub_403760+E4j
		inc	ebx
		cmp	ebx, edi
		jl	short loc_403810

loc_40387D:				; CODE XREF: sub_403760+A7j
		mov	eax, [ebp+Memory]
		push	eax		; Memory
		call	ds:free
		add	esp, 4
		lea	ecx, [ebp+var_14]
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		mov	eax, [ebp+arg_0]
		mov	ecx, [ebp+var_C]
		mov	large fs:0, ecx
		pop	ecx
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
sub_403760	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_4038B0	proc near		; CODE XREF: sub_4038E0+F6p
					; sub_404C70+A4p

var_4		= dword	ptr -4

		push	ebp
		mov	ebp, esp
		push	ecx
		push	0FFFFFFFFh	; samDesired
		push	80000002h	; hKey
		push	offset ValueName ; "installsource"
		push	1		; int
		push	esi		; int
		mov	[ebp+var_4], 0
		call	sub_4012C0
		add	esp, 14h
		mov	eax, esi
		mov	esp, ebp
		pop	ebp
		retn
sub_4038B0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_4038E0	proc near		; CODE XREF: sub_4017D0+12Ep

var_10		= byte ptr -10h
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4
arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset sub_40A5B0
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
		mov	edi, [ebp+arg_0]
		mov	ecx, edi
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		xor	ebx, ebx
		lea	ecx, [edi+4]
		mov	[ebp+var_4], ebx
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		lea	ecx, [edi+8]
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		lea	ecx, [edi+0Ch]
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		mov	dword ptr [edi+518h], offset off_40BF40
		mov	[edi+524h], ebx
		mov	[edi+528h], ebx
		mov	[edi+520h], ebx
		mov	[edi+51Ch], ebx
		mov	[edi+52Ch], ebx
		mov	dword ptr [edi+530h], 0Ah
		lea	ecx, [edi+534h]
		mov	byte ptr [ebp+var_4], 4
		call	sub_406550
		mov	dword ptr [edi+570h], offset off_40BF58
		mov	[edi+57Ch], ebx
		mov	[edi+580h], ebx
		mov	[edi+578h], ebx
		mov	[edi+574h], ebx
		mov	[edi+584h], ebx
		mov	dword ptr [edi+588h], 0Ah
		push	7D0h
		mov	eax, 1
		push	7D0h
		mov	byte ptr [ebp+var_4], 6
		push	7D0h
		lea	ecx, [edi+534h]
		mov	[edi+11h], al
		mov	[edi+53Ch], eax
		call	sub_4067F0
		lea	esi, [ebp+var_10]
		mov	[edi+10h], bl
		call	sub_4038B0
		push	eax
		mov	ecx, edi
		mov	byte ptr [ebp+var_4], 7
		call	ds:??4?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAEAAV01@ABV01@@Z ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::operator=(ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>> const	&)
		mov	ecx, esi
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		push	504h		; Size
		lea	eax, [edi+14h]
		push	ebx		; Val
		push	eax		; Dst
		call	memset
		add	esp, 0Ch
		mov	eax, edi
		mov	ecx, [ebp+var_C]
		mov	large fs:0, ecx
		pop	ecx
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
sub_4038E0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_403A20	proc near		; CODE XREF: sub_4017D0+2B2p
					; sub_40A7D1+7p

var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4
arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset sub_409FD9
		mov	eax, large fs:0
		push	eax
		push	ebx
		push	esi
		push	edi
		mov	eax, ___security_cookie
		xor	eax, ebp
		push	eax
		lea	eax, [ebp+var_C]
		mov	large fs:0, eax
		mov	esi, [ebp+arg_0]
		mov	[ebp+var_4], 5
		mov	eax, [esi+574h]
		xor	edi, edi
		mov	dword ptr [esi+570h], offset off_40BF58
		cmp	eax, edi
		jz	short loc_403A6B

loc_403A65:				; CODE XREF: sub_403A20+49j
		mov	eax, [eax]
		cmp	eax, edi
		jnz	short loc_403A65

loc_403A6B:				; CODE XREF: sub_403A20+43j
		mov	ecx, [esi+584h]
		mov	ebx, ds:?FreeDataChain@CPlex@@QAEXXZ ; CPlex::FreeDataChain(void)
		mov	[esi+57Ch], edi
		mov	[esi+580h], edi
		mov	[esi+578h], edi
		mov	[esi+574h], edi
		call	ebx ; CPlex::FreeDataChain(void) ; CPlex::FreeDataChain(void)
		lea	ecx, [esi+534h]
		mov	[esi+584h], edi
		mov	byte ptr [ebp+var_4], 4
		call	sub_406610
		mov	byte ptr [ebp+var_4], 3
		mov	eax, [esi+51Ch]
		mov	dword ptr [esi+518h], offset off_40BF40
		cmp	eax, edi
		jz	short loc_403AC6
		mov	edi, edi

loc_403AC0:				; CODE XREF: sub_403A20+A4j
		mov	eax, [eax]
		cmp	eax, edi
		jnz	short loc_403AC0

loc_403AC6:				; CODE XREF: sub_403A20+9Cj
		mov	ecx, [esi+52Ch]
		mov	[esi+524h], edi
		mov	[esi+528h], edi
		mov	[esi+520h], edi
		mov	[esi+51Ch], edi
		call	ebx ; CPlex::FreeDataChain(void) ; CPlex::FreeDataChain(void)
		lea	ecx, [esi+0Ch]
		mov	[esi+52Ch], edi
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		lea	ecx, [esi+8]
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		lea	ecx, [esi+4]
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		mov	ecx, esi
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		mov	ecx, [ebp+var_C]
		mov	large fs:0, ecx
		pop	ecx
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
sub_403A20	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __thiscall sub_403B30(void *Src, void *Src)
sub_403B30	proc near		; CODE XREF: sub_403C50+5Dp
					; sub_403CE0+EDp

var_1C		= byte ptr -1Ch
var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4
Src		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset sub_409F75
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
		mov	[ebp+var_10], esp
		mov	ebx, ecx
		mov	esi, edx
		lea	ecx, [ebp+var_1C]
		call	ds:??0AFX_EXCEPTION_LINK@@QAE@XZ ; AFX_EXCEPTION_LINK::AFX_EXCEPTION_LINK(void)
		mov	ecx, [esi+500h]
		cmp	ecx, 4
		jg	loc_403C15
		test	ecx, ecx
		js	loc_403C15
		mov	eax, ebx
		lea	edi, [eax+1]

loc_403B84:				; CODE XREF: sub_403B30+59j
		mov	dl, [eax]
		inc	eax
		test	dl, dl
		jnz	short loc_403B84
		sub	eax, edi
		lea	edi, [eax+1]
		cmp	edi, 40h
		jle	short loc_403B9A
		mov	edi, 40h

loc_403B9A:				; CODE XREF: sub_403B30+63j
		lea	eax, [ecx+ecx*4]
		push	edi		; Size
		shl	eax, 6
		add	eax, esi
		push	ebx		; Src
		push	eax		; Dst
		call	memcpy
		mov	eax, [esi+500h]
		mov	ebx, [ebp+Src]
		lea	ecx, [eax+eax*4]
		shl	ecx, 6
		add	esp, 0Ch
		add	ecx, edi
		mov	eax, ebx
		mov	byte ptr [ecx+esi-1], 0
		lea	edx, [eax+1]

loc_403BC8:				; CODE XREF: sub_403B30+9Dj
		mov	cl, [eax]
		inc	eax
		test	cl, cl
		jnz	short loc_403BC8
		sub	eax, edx
		lea	edi, [eax+1]
		cmp	edi, 100h
		jle	short loc_403BE1
		mov	edi, 100h

loc_403BE1:				; CODE XREF: sub_403B30+AAj
		mov	eax, [esi+500h]
		lea	edx, [eax+eax*4]
		push	edi		; Size
		shl	edx, 6
		lea	eax, [edx+esi+40h]
		push	ebx		; Src
		push	eax		; Dst
		call	memcpy
		mov	eax, [esi+500h]
		lea	ecx, [eax+eax*4]
		shl	ecx, 6
		add	ecx, edi
		add	esp, 0Ch
		mov	byte ptr [ecx+esi+3Fh],	0
		inc	dword ptr [esi+500h]

loc_403C15:				; CODE XREF: sub_403B30+41j
					; sub_403B30+49j
					; DATA XREF: ...
		mov	[ebp+var_4], 0FFFFFFFFh
		call	ds:__imp_?AfxTryCleanup@@YGXXZ ; AfxTryCleanup(void)
		mov	ecx, [ebp+var_C]
		mov	large fs:0, ecx
		pop	ecx
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
sub_403B30	endp


; =============== S U B	R O U T	I N E =======================================


sub_403C36	proc near		; DATA XREF: .rdata:0040CA34o
		mov	edx, [ebp-14h]
		mov	[ebp-18h], edx
		mov	eax, offset loc_403C15
		retn
sub_403C36	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_403C50(void	*Src, void *)
sub_403C50	proc near		; CODE XREF: sub_404C70+41Dp

var_1C		= byte ptr -1Ch
var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4
Src		= dword	ptr  8
arg_4		= dword	ptr  0Ch

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset sub_40A195
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
		mov	[ebp+var_10], esp
		mov	esi, ecx
		lea	ecx, [ebp+var_1C]
		call	ds:??0AFX_EXCEPTION_LINK@@QAE@XZ ; AFX_EXCEPTION_LINK::AFX_EXCEPTION_LINK(void)
		mov	[ebp+var_4], 0
		mov	byte ptr [ebp+var_4], 1
		cmp	byte ptr [esi+11h], 0
		jz	short loc_403CB2
		mov	eax, [esi+514h]
		inc	eax
		cmp	eax, 4
		jg	short loc_403CB2
		mov	ecx, [ebp+arg_4]
		push	ecx		; Src
		mov	ecx, [ebp+Src]	; Src
		lea	edx, [esi+14h]
		call	sub_403B30

loc_403CB2:				; CODE XREF: sub_403C50+45j
					; sub_403C50+51j
					; DATA XREF: ...
		mov	[ebp+var_4], 0FFFFFFFFh
		call	ds:__imp_?AfxTryCleanup@@YGXXZ ; AfxTryCleanup(void)
		mov	ecx, [ebp+var_C]
		mov	large fs:0, ecx
		pop	ecx
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	8
sub_403C50	endp


; =============== S U B	R O U T	I N E =======================================


sub_403CD3	proc near		; DATA XREF: .rdata:0040CC74o
		mov	edx, [ebp-14h]
		mov	[ebp-18h], edx
		mov	eax, offset loc_403CB2
		retn
sub_403CD3	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_403CE0	proc near		; CODE XREF: sub_4017D0+24Ap

var_73C		= byte ptr -73Ch
var_730		= byte ptr -730h
var_72C		= byte ptr -72Ch
lpString	= dword	ptr -728h
Dst		= byte ptr -724h
var_624		= dword	ptr -624h
var_620		= byte ptr -620h
var_11C		= dword	ptr -11Ch
var_118		= byte ptr -118h
Memory		= dword	ptr -98h
var_94		= byte ptr -94h
var_14		= dword	ptr -14h
var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset sub_40A4FF
		mov	eax, large fs:0
		push	eax
		sub	esp, 730h
		mov	eax, ___security_cookie
		xor	eax, ebp
		mov	[ebp+var_14], eax
		push	ebx
		push	esi
		push	edi
		push	eax
		lea	eax, [ebp+var_C]
		mov	large fs:0, eax
		mov	[ebp+var_10], esp
		mov	ebx, ecx
		lea	ecx, [ebp+var_73C]
		mov	edi, edx
		call	ds:??0AFX_EXCEPTION_LINK@@QAE@XZ ; AFX_EXCEPTION_LINK::AFX_EXCEPTION_LINK(void)
		mov	[ebp+var_4], 0
		mov	byte ptr [ebp+var_4], 1
		cmp	byte ptr [ebx+11h], 0
		jz	loc_403FA8
		test	edi, edi
		jz	loc_403FA8
		mov	eax, edi
		lea	edx, [eax+1]

loc_403D43:				; CODE XREF: sub_403CE0+68j
		mov	cl, [eax]
		inc	eax
		test	cl, cl
		jnz	short loc_403D43
		sub	eax, edx
		jz	loc_403FA8
		mov	eax, edi
		mov	[ebp+var_624], 2
		lea	edx, [eax+1]

loc_403D61:				; CODE XREF: sub_403CE0+86j
		mov	cl, [eax]
		inc	eax
		test	cl, cl
		jnz	short loc_403D61
		sub	eax, edx
		mov	esi, eax
		cmp	esi, 100h
		jle	short loc_403D79
		mov	esi, 100h

loc_403D79:				; CODE XREF: sub_403CE0+92j
		push	esi		; Size
		lea	eax, [ebp+Dst]
		push	edi		; Src
		push	eax		; Dst
		call	memcpy
		push	504h		; Size
		lea	ecx, [ebp+var_620]
		push	0		; Val
		push	ecx		; Dst
		mov	[ebp+esi+Dst], 0
		call	memset
		add	esp, 18h
		cmp	dword ptr [ebx+514h], 0
		jle	short loc_403DE8
		xor	esi, esi

loc_403DB0:				; CODE XREF: sub_403CE0+F3j
		cmp	esi, [ebx+514h]
		jge	short loc_403DD5
		lea	eax, [esi+esi*4]
		shl	eax, 6
		add	eax, ebx
		lea	ecx, [eax+54h]
		push	ecx		; Src
		lea	ecx, [eax+14h]	; Src
		lea	edx, [ebp+var_620]
		call	sub_403B30
		inc	esi
		jmp	short loc_403DB0
; ---------------------------------------------------------------------------

loc_403DD5:				; CODE XREF: sub_403CE0+D6j
		push	504h		; Size
		lea	edx, [ebx+14h]
		push	0		; Val
		push	edx		; Dst
		call	memset
		add	esp, 0Ch

loc_403DE8:				; CODE XREF: sub_403CE0+CCj
		push	ebx
		call	sub_404410
		test	al, al
		jz	loc_403FA8
		lea	ecx, [ebp+lpString]
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		mov	byte ptr [ebp+var_4], 2
		mov	esi, [ebp+var_624]
		cmp	esi, 0FFFFFFFEh
		jz	loc_403F9C
		cmp	esi, 0FFFFFFFFh
		jz	loc_403EF0
		cmp	esi, 6
		jz	loc_403F9C
		mov	ecx, [ebx+574h]
		lea	ecx, [ecx+0]

loc_403E30:				; CODE XREF: sub_403CE0+174j
		test	ecx, ecx
		jz	loc_403F9C
		lea	eax, [ecx+8]
		test	eax, eax
		jnz	short loc_403E45
		call	ds:?AfxThrowInvalidArgException@@YGXXZ ; AfxThrowInvalidArgException(void)
; ---------------------------------------------------------------------------

loc_403E45:				; CODE XREF: sub_403CE0+15Dj
		xor	edx, edx
		cmp	[eax], esi
		setz	dl
		mov	eax, edx
		test	eax, eax
		jnz	short loc_403E56
		mov	ecx, [ecx]
		jmp	short loc_403E30
; ---------------------------------------------------------------------------

loc_403E56:				; CODE XREF: sub_403CE0+170j
		lea	eax, [ebp+Dst]
		push	eax		; lpString
		lea	edx, [ebp+var_730]
		mov	ecx, ebx
		call	sub_403FF0
		push	eax
		lea	ecx, [ebp+lpString]
		mov	byte ptr [ebp+var_4], 5
		call	ds:??4?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAEAAV01@ABV01@@Z ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::operator=(ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>> const	&)
		lea	ecx, [ebp+var_730]
		mov	byte ptr [ebp+var_4], 2
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		mov	ecx, [ebp+lpString]
		mov	eax, [ecx-0Ch]
		test	eax, eax
		jle	loc_403F9C
		push	3		; CodePage
		lea	edx, [ebp+var_94]
		push	ecx		; lpString
		lea	ecx, [ebp+Memory] ; int
		mov	[ebp+Memory], edx
		call	sub_4055A0
		mov	byte ptr [ebp+var_4], 6
		mov	eax, [ebp+lpString]
		mov	eax, [eax-0Ch]
		mov	ecx, [ebp+Memory]
		push	0
		push	0
		push	eax
		push	ecx
		push	offset aHttpTrk_kissme ; "http://trk.kissmetrics.com/e"
		lea	ecx, [ebx+534h]
		call	sub_406810
		mov	eax, [ebp+Memory]
		lea	edx, [ebp+var_94]
		jmp	loc_403F8E
; ---------------------------------------------------------------------------

loc_403EF0:				; CODE XREF: sub_403CE0+138j
		cmp	dword ptr [ebx+57Ch], 0
		jz	loc_403F9C
		lea	eax, [ebp+Dst]
		push	eax		; lpString
		lea	edx, [ebp+var_72C]
		mov	ecx, ebx
		call	sub_403FF0
		push	eax
		lea	ecx, [ebp+lpString]
		mov	byte ptr [ebp+var_4], 3
		call	ds:??4?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAEAAV01@ABV01@@Z ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::operator=(ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>> const	&)
		lea	ecx, [ebp+var_72C]
		mov	byte ptr [ebp+var_4], 2
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		mov	ecx, [ebp+lpString]
		mov	eax, [ecx-0Ch]
		test	eax, eax
		jle	short loc_403F9C
		push	3		; CodePage
		lea	edx, [ebp+var_118]
		push	ecx		; lpString
		lea	ecx, [ebp+var_11C] ; int
		mov	[ebp+var_11C], edx
		call	sub_4055A0
		mov	byte ptr [ebp+var_4], 4
		mov	eax, [ebp+lpString]
		mov	eax, [eax-0Ch]
		mov	ecx, [ebp+var_11C]
		push	0
		push	0
		push	eax
		push	ecx
		push	offset aHttpTrk_kiss_0 ; "http://trk.kissmetrics.com/a"
		lea	ecx, [ebx+534h]
		call	sub_406810
		mov	eax, [ebp+var_11C]
		lea	edx, [ebp+var_118]

loc_403F8E:				; CODE XREF: sub_403CE0+20Bj
		cmp	eax, edx
		jz	short loc_403F9C
		push	eax		; Memory
		call	ds:free
		add	esp, 4

loc_403F9C:				; CODE XREF: sub_403CE0+12Fj
					; sub_403CE0+141j ...
		lea	ecx, [ebp+lpString]
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)

loc_403FA8:				; CODE XREF: sub_403CE0+50j
					; sub_403CE0+58j ...
		mov	[ebp+var_4], 0FFFFFFFFh
		call	ds:__imp_?AfxTryCleanup@@YGXXZ ; AfxTryCleanup(void)
		mov	ecx, [ebp+var_C]
		mov	large fs:0, ecx
		pop	ecx
		pop	edi
		pop	esi
		pop	ebx
		mov	ecx, [ebp+var_14]
		xor	ecx, ebp
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	esp, ebp
		pop	ebp
		retn
sub_403CE0	endp


; =============== S U B	R O U T	I N E =======================================


sub_403FD1	proc near		; DATA XREF: .rdata:0040D084o
		mov	eax, [ebp-734h]
		mov	[ebp-738h], eax
		mov	eax, offset loc_403FA8
		retn
sub_403FD1	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_403FF0(LPCSTR lpString)
sub_403FF0	proc near		; CODE XREF: sub_403CE0+185p
					; sub_403CE0+22Cp

var_240		= dword	ptr -240h
var_23C		= byte ptr -23Ch
var_238		= dword	ptr -238h
var_234		= dword	ptr -234h
var_230		= dword	ptr -230h
var_22C		= dword	ptr -22Ch
var_228		= byte ptr -228h
var_224		= dword	ptr -224h
var_220		= byte ptr -220h
lpWideCharStr	= dword	ptr -21Ch
var_218		= byte ptr -218h
Memory		= dword	ptr -118h
var_114		= byte ptr -114h
var_14		= dword	ptr -14h
var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4
lpString	= dword	ptr  8

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset sub_40A489
		mov	eax, large fs:0
		push	eax
		sub	esp, 234h
		mov	eax, ___security_cookie
		xor	eax, ebp
		mov	[ebp+var_14], eax
		push	ebx
		push	esi
		push	edi
		push	eax
		lea	eax, [ebp+var_C]
		mov	large fs:0, eax
		mov	[ebp+var_10], esp
		mov	edi, [ebp+lpString]
		mov	esi, ecx
		mov	ebx, edx
		lea	ecx, [ebp+var_23C]
		mov	[ebp+var_22C], ebx
		mov	[ebp+var_234], edi
		mov	[ebp+var_230], 0
		call	ds:??0AFX_EXCEPTION_LINK@@QAE@XZ ; AFX_EXCEPTION_LINK::AFX_EXCEPTION_LINK(void)
		mov	[ebp+var_4], 0
		mov	byte ptr [ebp+var_4], 1
		mov	eax, [esi+8]
		cmp	dword ptr [eax-0Ch], 0
		jnz	short loc_404088
		mov	ecx, [esi+0Ch]
		cmp	dword ptr [ecx-0Ch], 0
		jnz	short loc_404088
		push	offset dword_40B998
		mov	ecx, ebx
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@PB_W@Z ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(wchar_t const *)
		mov	[ebp+var_4], 0FFFFFFFFh
		call	ds:__imp_?AfxTryCleanup@@YGXXZ ; AfxTryCleanup(void)
		mov	eax, ebx
		jmp	loc_4043B2
; ---------------------------------------------------------------------------

loc_404088:				; CODE XREF: sub_403FF0+6Cj
					; sub_403FF0+75j
		lea	ecx, [ebp+var_220]
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		mov	bl, 2
		mov	byte ptr [ebp+var_4], bl
		cmp	dword ptr [edi+100h], 0FFFFFFFFh
		jnz	loc_404179
		lea	edx, [ebp+var_224]
		push	edx
		call	sub_4064C0
		add	esp, 4
		mov	byte ptr [ebp+var_4], 3
		mov	eax, [ebp+var_224]
		cmp	dword ptr [eax-0Ch], 0
		jnz	short loc_4040D6
		push	offset aNull	; "NULL"
		lea	ecx, [ebp+var_224]
		call	ds:?SetString@?$CSimpleStringT@_W$00@ATL@@QAEXPB_W@Z ; ATL::CSimpleStringT<wchar_t,1>::SetString(wchar_t const *)

loc_4040D6:				; CODE XREF: sub_403FF0+D3j
		lea	ecx, [ebp+var_114]
		push	3		; CodePage
		mov	[ebp+Memory], ecx
		push	edi		; lpString
		lea	ecx, [ebp+Memory] ; int
		call	sub_405670
		mov	byte ptr [ebp+var_4], 4
		mov	edx, [ebp+Memory]
		mov	eax, [ebp+var_224]
		push	edx
		push	eax
		push	offset aDb27a205fc69f3 ; "db27a205fc69f3fa911fecd0818bb624c79a94c"...
		lea	ecx, [ebp+var_220]
		push	offset a_kS_pS_nS ; "_k=%s&_p=%s&_n=%s"
		push	ecx
		call	ds:?Format@?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAAXPB_WZZ ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::Format(wchar_t const *,...)
		mov	byte ptr [ebp+var_4], 3
		mov	eax, [ebp+Memory]
		lea	edx, [ebp+var_114]
		add	esp, 14h
		cmp	eax, edx
		jz	short loc_40413A
		push	eax		; Memory
		call	ds:free
		add	esp, 4

loc_40413A:				; CODE XREF: sub_403FF0+13Ej
		mov	esi, [ebp+var_22C]
		lea	eax, [ebp+var_220]
		push	eax
		mov	ecx, esi
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@ABV01@@Z ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>	const &)
		lea	ecx, [ebp+var_224]

loc_404155:				; CODE XREF: sub_403FF0+389j
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		lea	ecx, [ebp+var_220]
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		mov	[ebp+var_4], 0FFFFFFFFh
		call	ds:__imp_?AfxTryCleanup@@YGXXZ ; AfxTryCleanup(void)
		jmp	loc_4043B0
; ---------------------------------------------------------------------------

loc_404179:				; CODE XREF: sub_403FF0+B0j
		mov	eax, [esi+8]
		push	eax
		lea	ecx, [ebp+var_220]
		call	ds:?SetString@?$CSimpleStringT@_W$00@ATL@@QAEXPB_W@Z ; ATL::CSimpleStringT<wchar_t,1>::SetString(wchar_t const *)
		lea	ecx, [ebp+var_114]
		push	3		; CodePage
		mov	[ebp+Memory], ecx
		push	edi		; lpString
		lea	ecx, [ebp+Memory] ; int
		call	sub_405670
		lea	edx, [ebp+var_224]
		mov	byte ptr [ebp+var_4], 5
		mov	ecx, [ebp+Memory] ; lpWideCharStr
		push	edx		; int
		call	sub_403760
		add	esp, 4
		push	eax
		lea	ecx, [ebp+var_220]
		mov	byte ptr [ebp+var_4], 6
		call	ds:?Append@?$CSimpleStringT@_W$00@ATL@@QAEXABV12@@Z ; ATL::CSimpleStringT<wchar_t,1>::Append(ATL::CSimpleStringT<wchar_t,1> const &)
		lea	ecx, [ebp+var_224]
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		mov	byte ptr [ebp+var_4], bl
		mov	eax, [ebp+Memory]
		lea	ecx, [ebp+var_114]
		cmp	eax, ecx
		jz	short loc_4041F6
		push	eax		; Memory
		call	ds:free
		add	esp, 4

loc_4041F6:				; CODE XREF: sub_403FF0+1FAj
		add	esi, 0Ch
		push	esi
		lea	ecx, [ebp+var_220]
		call	ds:?Append@?$CSimpleStringT@_W$00@ATL@@QAEXABV12@@Z ; ATL::CSimpleStringT<wchar_t,1>::Append(ATL::CSimpleStringT<wchar_t,1> const &)
		lea	ecx, [ebp+var_228]
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		mov	byte ptr [ebp+var_4], 7
		xor	esi, esi
		jmp	short loc_404220
; ---------------------------------------------------------------------------
		align 10h

loc_404220:				; CODE XREF: sub_403FF0+228j
					; sub_403FF0+369j
		cmp	esi, [edi+604h]
		jge	loc_40435E
		mov	eax, esi
		imul	eax, 141h
		cmp	byte ptr [eax+edi+104h], 0
		jz	loc_404358
		cmp	byte ptr [eax+edi+144h], 0
		jz	loc_404358
		lea	ecx, [esi+esi*4]
		shl	ecx, 6
		add	edi, ecx
		push	3		; CodePage
		lea	edx, [edi+144h]
		lea	eax, [ebp+var_218]
		push	edx		; lpString
		lea	ecx, [ebp+lpWideCharStr] ; int
		mov	[ebp+lpWideCharStr], eax
		call	sub_405670
		lea	eax, [ebp+var_230]
		mov	byte ptr [ebp+var_4], 8
		mov	ecx, [ebp+lpWideCharStr] ; lpWideCharStr
		push	eax		; int
		call	sub_403760
		add	esp, 4
		mov	ebx, eax
		lea	ecx, [ebp+var_114]
		mov	byte ptr [ebp+var_4], 9
		push	3		; CodePage
		mov	[ebp+Memory], ecx
		add	edi, 104h
		push	edi		; lpString
		lea	ecx, [ebp+Memory] ; int
		call	sub_405670
		lea	edx, [ebp+var_224]
		mov	byte ptr [ebp+var_4], 0Ah
		mov	ecx, [ebp+Memory] ; lpWideCharStr
		push	edx		; int
		call	sub_403760
		add	esp, 4
		mov	byte ptr [ebp+var_4], 0Bh
		mov	ecx, [ebx]
		mov	edx, [eax]
		push	ecx
		push	edx
		lea	eax, [ebp+var_228]
		push	offset aSS	; "&%s=%s"
		push	eax
		call	ds:?Format@?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAAXPB_WZZ ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::Format(wchar_t const *,...)
		add	esp, 10h
		lea	ecx, [ebp+var_224]
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		mov	eax, [ebp+Memory]
		lea	ecx, [ebp+var_114]
		cmp	eax, ecx
		jz	short loc_404315
		push	eax		; Memory
		call	ds:free
		add	esp, 4

loc_404315:				; CODE XREF: sub_403FF0+319j
		lea	ecx, [ebp+var_230]
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		mov	byte ptr [ebp+var_4], 7
		mov	eax, [ebp+lpWideCharStr]
		lea	edx, [ebp+var_218]
		cmp	eax, edx
		jz	short loc_40433F
		push	eax		; Memory
		call	ds:free
		add	esp, 4

loc_40433F:				; CODE XREF: sub_403FF0+343j
		lea	eax, [ebp+var_228]
		push	eax
		lea	ecx, [ebp+var_220]
		call	ds:?Append@?$CSimpleStringT@_W$00@ATL@@QAEXABV12@@Z ; ATL::CSimpleStringT<wchar_t,1>::Append(ATL::CSimpleStringT<wchar_t,1> const &)
		mov	edi, [ebp+var_234]

loc_404358:				; CODE XREF: sub_403FF0+24Cj
					; sub_403FF0+25Aj
		inc	esi
		jmp	loc_404220
; ---------------------------------------------------------------------------

loc_40435E:				; CODE XREF: sub_403FF0+236j
		mov	esi, [ebp+var_22C]
		lea	ecx, [ebp+var_220]
		push	ecx
		mov	ecx, esi
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@ABV01@@Z ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>	const &)
		lea	ecx, [ebp+var_228]
		jmp	loc_404155
; ---------------------------------------------------------------------------

loc_40437E:				; DATA XREF: .rdata:0040CFFCo
		mov	edx, [ebp+var_240]
		mov	[ebp+var_238], edx
		mov	eax, offset loc_404390
		retn
; ---------------------------------------------------------------------------

loc_404390:				; CODE XREF: sub_403FF0+39Fj
					; DATA XREF: sub_403FF0+39Ao
		mov	[ebp+var_4], 0FFFFFFFFh
		call	ds:__imp_?AfxTryCleanup@@YGXXZ ; AfxTryCleanup(void)
		mov	esi, [ebp+var_22C]
		push	offset dword_40B998
		mov	ecx, esi
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@PB_W@Z ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(wchar_t const *)

loc_4043B0:				; CODE XREF: sub_403FF0+184j
		mov	eax, esi

loc_4043B2:				; CODE XREF: sub_403FF0+93j
		mov	ecx, [ebp+var_C]
		mov	large fs:0, ecx
		pop	ecx
		pop	edi
		pop	esi
		pop	ebx
		mov	ecx, [ebp+var_14]
		xor	ecx, ebp
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	esp, ebp
		pop	ebp
		retn	4
sub_403FF0	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_4043D0	proc near		; CODE XREF: sub_404410+414p

var_4		= dword	ptr -4

		push	ebp
		mov	ebp, esp
		push	ecx
		mov	[ebp+var_4], 0
		mov	ecx, esi
		cmp	eax, 5
		ja	short loc_4043F6
		mov	eax, ds:off_40BC10[eax*8]
		push	eax
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@PB_W@Z ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(wchar_t const *)
		mov	eax, esi
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4043F6:				; CODE XREF: sub_4043D0+10j
		push	offset dword_40B998
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@PB_W@Z ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(wchar_t const *)
		mov	eax, esi
		mov	esp, ebp
		pop	ebp
		retn
sub_4043D0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_404410	proc near		; CODE XREF: sub_403CE0+109p

var_58		= byte ptr -58h
var_4C		= byte ptr -4Ch
Time		= qword	ptr -44h
var_38		= dword	ptr -38h
Count		= dword	ptr -34h
var_30		= byte ptr -30h
var_2C		= dword	ptr -2Ch
var_28		= dword	ptr -28h
var_24		= dword	ptr -24h
var_20		= dword	ptr -20h
var_1C		= dword	ptr -1Ch
Str		= dword	ptr -18h
var_11		= byte ptr -11h
var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4
arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset __ehhandler$?PrimaryInvocation@UMSFreeVirtualProcessorRoot@details@Concurrency@@CGXW4_RTL_UMS_SCHEDULER_REASON@@KPAX@Z
		mov	eax, large fs:0
		push	eax
		sub	esp, 4Ch
		push	ebx
		push	esi
		push	edi
		mov	eax, ___security_cookie
		xor	eax, ebp
		push	eax
		lea	eax, [ebp+var_C]
		mov	large fs:0, eax
		mov	[ebp+var_10], esp
		lea	ecx, [ebp+var_4C]
		call	ds:??0AFX_EXCEPTION_LINK@@QAE@XZ ; AFX_EXCEPTION_LINK::AFX_EXCEPTION_LINK(void)
		lea	ecx, [ebp+var_30]
		mov	[ebp+var_4], 0
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		lea	ecx, [ebp+Str]
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		lea	eax, [ebp+Time]
		push	eax		; Time
		mov	byte ptr [ebp+var_4], 3
		call	ds:_time64
		push	0F003Fh		; samDesired
		push	80000001h	; hKey
		push	offset aAllowedkmevent ; "AllowedKMEventsUntil"
		lea	ecx, [ebp+Count]
		push	1		; int
		push	ecx		; int
		call	sub_4012C0
		add	esp, 18h
		push	eax
		lea	ecx, [ebp+Str]
		mov	byte ptr [ebp+var_4], 4
		call	ds:??4?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAEAAV01@ABV01@@Z ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::operator=(ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>> const	&)
		lea	ecx, [ebp+Count]
		mov	byte ptr [ebp+var_4], 3
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		mov	eax, [ebp+Str]
		cmp	dword ptr [eax-0Ch], 0
		jz	loc_4045CC
		push	eax		; Str
		call	ds:_wtoi
		cdq
		add	esp, 4
		cmp	dword ptr [ebp+Time+4],	edx
		jg	loc_4045CC
		jl	short loc_4044CF
		cmp	dword ptr [ebp+Time], eax
		ja	loc_4045CC

loc_4044CF:				; CODE XREF: sub_404410+B4j
		push	0F003Fh		; samDesired
		push	80000001h	; hKey
		push	offset aAllowedkmeve_0 ; "AllowedKMEventType"
		lea	eax, [ebp+Count]
		push	1		; int
		push	eax		; int
		mov	[ebp+var_11], 0
		call	sub_4012C0
		add	esp, 14h
		push	eax
		lea	ecx, [ebp+Str]
		mov	byte ptr [ebp+var_4], 5
		call	ds:??4?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAEAAV01@ABV01@@Z ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::operator=(ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>> const	&)
		lea	ecx, [ebp+Count]
		mov	byte ptr [ebp+var_4], 3
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		jmp	short loc_404510
; ---------------------------------------------------------------------------
		align 10h

loc_404510:				; CODE XREF: sub_404410+FBj
					; sub_404410+19Ej ...
		mov	ecx, [ebp+Str]
		cmp	dword ptr [ecx-0Ch], 0
		jz	loc_4045C2
		push	0
		push	offset asc_40BDCC ; ";"
		lea	ecx, [ebp+Str]
		call	ds:?Find@?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QBEHPB_WH@Z ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::Find(wchar_t	const *,int)
		mov	ebx, eax
		lea	ecx, [ebp+Str]
		test	ebx, ebx
		js	short loc_4045B3
		push	ebx
		lea	edx, [ebp+Count]
		push	edx
		call	ds:?Left@?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QBE?AV12@H@Z ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::Left(int)
		mov	edi, eax
		mov	byte ptr [ebp+var_4], 6
		test	edi, edi
		jz	short loc_404575
		xor	esi, esi
		lea	ecx, [ecx+0]

loc_404550:				; CODE XREF: sub_404410+163j
		cmp	esi, 6
		jge	short loc_404575
		mov	eax, ds:off_40BC10[esi*8]
		push	eax
		mov	ecx, edi
		call	ds:?CompareNoCase@?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QBEHPB_W@Z ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CompareNoCase(wchar_t const *)
		test	eax, eax
		jnz	short loc_404572
		mov	esi, ds:dword_40BC14[esi*8]
		jmp	short loc_40457A
; ---------------------------------------------------------------------------

loc_404572:				; CODE XREF: sub_404410+157j
		inc	esi
		jmp	short loc_404550
; ---------------------------------------------------------------------------

loc_404575:				; CODE XREF: sub_404410+139j
					; sub_404410+143j
		mov	esi, 0FFFFFFFEh

loc_40457A:				; CODE XREF: sub_404410+160j
		lea	ecx, [ebp+Count]
		mov	[ebp+var_2C], esi
		mov	byte ptr [ebp+var_4], 3
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		cmp	esi, 0FFFFFFFEh
		jz	short loc_4045A1
		mov	esi, [ebp+arg_0]
		lea	ecx, [ebp+var_2C]
		push	ecx
		add	esi, 570h
		call	sub_4058A0

loc_4045A1:				; CODE XREF: sub_404410+17Dj
		inc	ebx
		push	ebx
		push	0
		lea	ecx, [ebp+Str]
		call	ds:?Delete@?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAEHHH@Z ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::Delete(int,int)
		jmp	loc_404510
; ---------------------------------------------------------------------------

loc_4045B3:				; CODE XREF: sub_404410+124j
		mov	[ebp+var_11], 1
		call	ds:?Empty@?$CSimpleStringT@_W$00@ATL@@QAEXXZ ; ATL::CSimpleStringT<wchar_t,1>::Empty(void)
		jmp	loc_404510
; ---------------------------------------------------------------------------

loc_4045C2:				; CODE XREF: sub_404410+107j
		cmp	[ebp+var_11], 0
		jz	loc_4048BA

loc_4045CC:				; CODE XREF: sub_404410+9Aj
					; sub_404410+AEj ...
		mov	ebx, [ebp+arg_0]
		push	7D0h
		push	7D0h
		push	7D0h
		lea	ecx, [ebx+534h]
		mov	dword ptr [ebx+53Ch], 1
		call	sub_4067F0
		push	0
		push	0
		push	0
		push	0
		push	offset aHttpInstall_ni ; "http://install.nitropdf.com/pro9/report"...
		lea	ecx, [ebx+534h]
		call	sub_406810
		cmp	eax, 1
		jnz	loc_4048EF
		lea	edx, [ebp+Count]
		push	edx
		lea	ecx, [ebx+534h]
		mov	[ebp+Count], 0
		call	sub_406670
		mov	ecx, [ebp+Count]
		push	ecx		; Count
		push	eax		; Source
		lea	ecx, [ebp+var_58]
		call	sub_407270
		push	0
		push	offset aReporting ; "Reporting"
		lea	ecx, [ebp+var_58]
		mov	byte ptr [ebp+var_4], 7
		call	sub_406F60
		lea	ecx, [ebp+var_2C]
		mov	esi, eax
		xor	edi, edi
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		lea	ecx, [ebp+var_24]
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		push	esi
		mov	byte ptr [ebp+var_4], 9
		call	sub_4070B0
		add	esp, 4
		mov	esi, eax
		nop

loc_404670:				; CODE XREF: sub_404410+351j
		test	esi, esi
		jz	loc_404766
		push	esi
		push	offset aSource	; "Source"
		lea	edx, [ebp+var_1C]
		push	edx
		lea	ecx, [ebp+var_58]
		mov	[ebp+var_11], 0
		xor	bl, bl
		call	sub_407480
		push	esi
		push	offset aVersion	; "Version"
		lea	eax, [ebp+var_20]
		push	eax
		lea	ecx, [ebp+var_58]
		mov	byte ptr [ebp+var_4], 0Ah
		call	sub_407480
		mov	byte ptr [ebp+var_4], 0Bh
		mov	ecx, [ebp+var_1C]
		cmp	dword ptr [ecx-0Ch], 0
		jz	short loc_4046C6
		mov	edx, [ebp+arg_0]
		mov	eax, [edx]
		push	eax
		lea	ecx, [ebp+var_1C]
		call	ds:?CompareNoCase@?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QBEHPB_W@Z ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CompareNoCase(wchar_t const *)
		test	eax, eax
		jnz	short loc_4046CA

loc_4046C6:				; CODE XREF: sub_404410+2A1j
		mov	[ebp+var_11], 1

loc_4046CA:				; CODE XREF: sub_404410+2B4j
		mov	eax, [ebp+var_20]
		cmp	dword ptr [eax-0Ch], 0
		jnz	short loc_4046DC
		mov	eax, [ebp+var_24]
		cmp	dword ptr [eax-0Ch], 0
		jmp	short loc_404713
; ---------------------------------------------------------------------------

loc_4046DC:				; CODE XREF: sub_404410+2C1j
		mov	ecx, [ebp+arg_0]
		push	0
		push	eax
		add	ecx, 4
		call	ds:?Find@?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QBEHPB_WH@Z ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::Find(wchar_t	const *,int)
		test	eax, eax
		jnz	short loc_404717
		mov	ecx, [ebp+var_20]
		mov	eax, [ecx-0Ch]
		mov	edx, [ebp+var_24]
		mov	ecx, [edx-0Ch]
		cmp	eax, ecx
		jle	short loc_404701
		mov	bl, 1

loc_404701:				; CODE XREF: sub_404410+2EDj
		jnz	short loc_404717
		mov	eax, [ebp+var_1C]
		cmp	dword ptr [eax-0Ch], 0
		jz	short loc_404717
		mov	ecx, [ebp+var_2C]
		cmp	dword ptr [ecx-0Ch], 0

loc_404713:				; CODE XREF: sub_404410+2CAj
		jnz	short loc_404717
		mov	bl, 1

loc_404717:				; CODE XREF: sub_404410+2DDj
					; sub_404410:loc_404701j ...
		cmp	[ebp+var_11], 0
		jz	short loc_40473D
		test	bl, bl
		jz	short loc_40473D
		lea	edx, [ebp+var_20]
		push	edx
		lea	ecx, [ebp+var_24]
		call	ds:??4?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAEAAV01@ABV01@@Z ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::operator=(ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>> const	&)
		lea	eax, [ebp+var_1C]
		push	eax
		lea	ecx, [ebp+var_2C]
		call	ds:??4?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAEAAV01@ABV01@@Z ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::operator=(ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>> const	&)
		mov	edi, esi

loc_40473D:				; CODE XREF: sub_404410+30Bj
					; sub_404410+30Fj
		push	esi
		call	sub_407090
		add	esp, 4
		lea	ecx, [ebp+var_20]
		mov	esi, eax
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		lea	ecx, [ebp+var_1C]
		mov	byte ptr [ebp+var_4], 9
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		mov	ebx, [ebp+arg_0]
		jmp	loc_404670
; ---------------------------------------------------------------------------

loc_404766:				; CODE XREF: sub_404410+262j
		test	edi, edi
		jz	loc_40480D
		push	edi
		call	sub_4070B0
		add	esp, 4
		lea	ecx, [ebp+var_28]
		mov	edi, eax
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		mov	byte ptr [ebp+var_4], 0Ch

loc_404786:				; CODE XREF: sub_404410+3F1j
		lea	ecx, [ebp+var_28]
		test	edi, edi
		jz	short loc_404803
		push	ecx		; int
		push	edi		; cchWideChar
		call	sub_407180
		add	esp, 8
		test	al, al
		jz	short loc_4047F6
		lea	edx, [ebp+var_38]
		push	edx
		push	edi
		call	sub_407160
		add	esp, 8
		test	al, al
		jz	short loc_4047F6
		cmp	[ebp+var_38], 0
		jz	short loc_4047F6
		xor	esi, esi

loc_4047B4:				; CODE XREF: sub_404410+3C8j
		cmp	esi, 6
		jge	short loc_4047DA
		mov	eax, ds:off_40BC10[esi*8]
		push	eax
		lea	ecx, [ebp+var_28]
		call	ds:?CompareNoCase@?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QBEHPB_W@Z ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CompareNoCase(wchar_t const *)
		test	eax, eax
		jnz	short loc_4047D7
		mov	esi, ds:dword_40BC14[esi*8]
		jmp	short loc_4047DF
; ---------------------------------------------------------------------------

loc_4047D7:				; CODE XREF: sub_404410+3BCj
		inc	esi
		jmp	short loc_4047B4
; ---------------------------------------------------------------------------

loc_4047DA:				; CODE XREF: sub_404410+3A7j
		mov	esi, 0FFFFFFFEh

loc_4047DF:				; CODE XREF: sub_404410+3C5j
		mov	[ebp+var_20], esi
		cmp	esi, 0FFFFFFFEh
		jz	short loc_4047F6
		lea	ecx, [ebp+var_20]
		push	ecx
		lea	esi, [ebx+570h]
		call	sub_4058A0

loc_4047F6:				; CODE XREF: sub_404410+389j
					; sub_404410+39Aj ...
		push	edi
		call	sub_407090
		add	esp, 4
		mov	edi, eax
		jmp	short loc_404786
; ---------------------------------------------------------------------------

loc_404803:				; CODE XREF: sub_404410+37Bj
		mov	byte ptr [ebp+var_4], 9
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)

loc_40480D:				; CODE XREF: sub_404410+358j
		mov	edx, [ebp+arg_0]
		mov	edi, [edx+574h]
		mov	bl, 0Dh

loc_404818:				; CODE XREF: sub_404410+440j
		test	edi, edi
		jz	short loc_404852
		mov	eax, [edi+8]
		mov	edi, [edi]
		lea	esi, [ebp+arg_0]
		call	sub_4043D0
		push	eax
		lea	ecx, [ebp+Str]
		mov	byte ptr [ebp+var_4], bl
		call	ds:?Append@?$CSimpleStringT@_W$00@ATL@@QAEXABV12@@Z ; ATL::CSimpleStringT<wchar_t,1>::Append(ATL::CSimpleStringT<wchar_t,1> const &)
		mov	ecx, esi
		mov	byte ptr [ebp+var_4], 9
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		push	offset asc_40BDCC ; ";"
		lea	ecx, [ebp+Str]
		call	ds:?Append@?$CSimpleStringT@_W$00@ATL@@QAEXPB_W@Z ; ATL::CSimpleStringT<wchar_t,1>::Append(wchar_t const *)
		jmp	short loc_404818
; ---------------------------------------------------------------------------

loc_404852:				; CODE XREF: sub_404410+40Aj
		mov	eax, [ebp+Str]
		push	eax		; lpData
		push	offset aAllowedkmeve_0 ; "AllowedKMEventType"
		call	sub_401470
		mov	eax, dword ptr [ebp+Time]
		mov	ecx, dword ptr [ebp+Time+4]
		add	esp, 8
		add	eax, 127500h
		adc	ecx, 0
		push	ecx
		push	eax
		mov	dword ptr [ebp+Time+4],	ecx
		lea	ecx, [ebp+Str]
		push	offset aD	; "%d"
		push	ecx
		mov	dword ptr [ebp+Time], eax
		call	ds:?Format@?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAAXPB_WZZ ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::Format(wchar_t const *,...)
		mov	edx, [ebp+Str]
		add	esp, 10h
		push	edx		; lpData
		push	offset aAllowedkmevent ; "AllowedKMEventsUntil"
		call	sub_401470
		add	esp, 8
		lea	ecx, [ebp+var_24]
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		lea	ecx, [ebp+var_2C]
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		lea	ecx, [ebp+var_58]
		mov	byte ptr [ebp+var_4], 3
		call	sub_407200

loc_4048BA:				; CODE XREF: sub_404410+1B6j
		lea	ecx, [ebp+Str]
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		lea	ecx, [ebp+var_30]
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)

loc_4048CC:				; DATA XREF: sub_404924+6o
		mov	[ebp+var_4], 0FFFFFFFFh
		call	ds:__imp_?AfxTryCleanup@@YGXXZ ; AfxTryCleanup(void)
		mov	al, 1
		mov	ecx, [ebp+var_C]
		mov	large fs:0, ecx
		pop	ecx
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_4048EF:				; CODE XREF: sub_404410+1FEj
		lea	ecx, [ebp+Str]
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		lea	ecx, [ebp+var_30]
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		mov	[ebp+var_4], 0FFFFFFFFh
		call	ds:__imp_?AfxTryCleanup@@YGXXZ ; AfxTryCleanup(void)
		xor	al, al
		mov	ecx, [ebp+var_C]
		mov	large fs:0, ecx
		pop	ecx
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
sub_404410	endp


; =============== S U B	R O U T	I N E =======================================


sub_404924	proc near		; DATA XREF: .rdata:0040CF4Co
		mov	eax, [ebp-3Ch]
		mov	[ebp-48h], eax
		mov	eax, offset loc_4048CC
		retn
sub_404924	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __fastcall sub_404930(LPCSTR lpString, LPCSTR lpString, int)
sub_404930	proc near		; CODE XREF: sub_404AF0+161p
					; sub_4053D0+72p ...

var_244		= byte ptr -244h
var_238		= dword	ptr -238h
var_234		= byte ptr -234h
var_230		= dword	ptr -230h
Memory		= dword	ptr -22Ch
var_228		= byte ptr -228h
lpWideCharStr	= dword	ptr -124h
var_120		= byte ptr -120h
var_18		= dword	ptr -18h
var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4
arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset sub_40A163
		mov	eax, large fs:0
		push	eax
		sub	esp, 238h
		mov	eax, ___security_cookie
		xor	eax, ebp
		mov	[ebp+var_18], eax
		push	ebx
		push	esi
		push	edi
		push	eax
		lea	eax, [ebp+var_C]
		mov	large fs:0, eax
		mov	[ebp+var_10], esp
		mov	eax, [ebp+arg_0]
		mov	edi, ecx
		lea	ecx, [ebp+var_244]
		mov	[ebp+var_238], eax
		mov	esi, edx
		call	ds:??0AFX_EXCEPTION_LINK@@QAE@XZ ; AFX_EXCEPTION_LINK::AFX_EXCEPTION_LINK(void)
		mov	[ebp+var_4], 0
		test	edi, edi
		jz	loc_404AAB
		test	esi, esi
		jz	loc_404AAB
		mov	eax, edi
		lea	edx, [eax+1]

loc_404996:				; CODE XREF: sub_404930+6Bj
		mov	cl, [eax]
		inc	eax
		test	cl, cl
		jnz	short loc_404996
		sub	eax, edx
		jz	loc_404AAB
		mov	eax, esi
		lea	edx, [eax+1]
		lea	ebx, [ebx+0]

loc_4049B0:				; CODE XREF: sub_404930+85j
		mov	cl, [eax]
		inc	eax
		test	cl, cl
		jnz	short loc_4049B0
		sub	eax, edx
		jz	loc_404AAB
		lea	ecx, [ebp+var_234]
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		mov	bl, 2
		lea	ecx, [ebp+var_120]
		mov	byte ptr [ebp+var_4], bl
		push	3		; CodePage
		mov	[ebp+lpWideCharStr], ecx
		push	esi		; lpString
		lea	ecx, [ebp+lpWideCharStr] ; int
		call	sub_405670
		lea	edx, [ebp+var_230]
		mov	byte ptr [ebp+var_4], 3
		mov	ecx, [ebp+lpWideCharStr] ; lpWideCharStr
		push	edx		; int
		call	sub_403760
		add	esp, 4
		mov	esi, eax
		push	3		; CodePage
		lea	eax, [ebp+var_228]
		mov	byte ptr [ebp+var_4], 4
		push	edi		; lpString
		lea	ecx, [ebp+Memory] ; int
		mov	[ebp+Memory], eax
		call	sub_405670
		mov	byte ptr [ebp+var_4], 5
		mov	ecx, [esi]
		mov	edx, [ebp+Memory]
		push	ecx
		push	edx
		lea	eax, [ebp+var_234]
		push	offset aSS	; "&%s=%s"
		push	eax
		call	ds:?Format@?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAAXPB_WZZ ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::Format(wchar_t const *,...)
		mov	eax, [ebp+Memory]
		lea	ecx, [ebp+var_228]
		add	esp, 10h
		cmp	eax, ecx
		jz	short loc_404A60
		push	eax		; Memory
		call	ds:free
		add	esp, 4

loc_404A60:				; CODE XREF: sub_404930+124j
		lea	ecx, [ebp+var_230]
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		mov	byte ptr [ebp+var_4], bl
		mov	eax, [ebp+lpWideCharStr]
		lea	edx, [ebp+var_120]
		cmp	eax, edx
		jz	short loc_404A89
		push	eax		; Memory
		call	ds:free
		add	esp, 4

loc_404A89:				; CODE XREF: sub_404930+14Dj
		mov	ecx, [ebp+var_238]
		lea	eax, [ebp+var_234]
		push	eax
		add	ecx, 0Ch
		call	ds:?Append@?$CSimpleStringT@_W$00@ATL@@QAEXABV12@@Z ; ATL::CSimpleStringT<wchar_t,1>::Append(ATL::CSimpleStringT<wchar_t,1> const &)
		lea	ecx, [ebp+var_234]
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)

loc_404AAB:				; CODE XREF: sub_404930+53j
					; sub_404930+5Bj ...
		mov	[ebp+var_4], 0FFFFFFFFh
		call	ds:__imp_?AfxTryCleanup@@YGXXZ ; AfxTryCleanup(void)
		mov	ecx, [ebp+var_C]
		mov	large fs:0, ecx
		pop	ecx
		pop	edi
		pop	esi
		pop	ebx
		mov	ecx, [ebp+var_18]
		xor	ecx, ebp
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	esp, ebp
		pop	ebp
		retn	4
sub_404930	endp


; =============== S U B	R O U T	I N E =======================================


sub_404AD6	proc near		; DATA XREF: .rdata:0040CC14o
		mov	ecx, [ebp-23Ch]
		mov	[ebp-240h], ecx
		mov	eax, offset loc_404AAB
		retn
sub_404AD6	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __fastcall sub_404AF0(int, LPCSTR	lpString, LPCSTR lpString)
sub_404AF0	proc near		; CODE XREF: sub_404C70+EFp
					; sub_404C70+169p ...

var_120		= byte ptr -120h
Memory		= dword	ptr -118h
var_114		= byte ptr -114h
var_14		= dword	ptr -14h
var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4
lpString	= dword	ptr  8

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset sub_40A34B
		mov	eax, large fs:0
		push	eax
		sub	esp, 118h
		mov	eax, ___security_cookie
		xor	eax, ebp
		mov	[ebp+var_14], eax
		push	ebx
		push	esi
		push	edi
		push	eax
		lea	eax, [ebp+var_C]
		mov	large fs:0, eax
		mov	[ebp+var_10], esp
		mov	edi, [ebp+lpString]
		mov	ebx, ecx
		lea	ecx, [ebp+var_120]
		mov	esi, edx
		call	ds:??0AFX_EXCEPTION_LINK@@QAE@XZ ; AFX_EXCEPTION_LINK::AFX_EXCEPTION_LINK(void)
		mov	[ebp+var_4], 0
		mov	byte ptr [ebp+var_4], 1
		cmp	byte ptr [ebx+11h], 0
		jz	short loc_404BC4
		test	esi, esi
		jz	short loc_404BC4
		test	edi, edi
		jz	short loc_404BC4
		mov	ecx, offset String ; "InstallSource"
		mov	eax, esi

loc_404B54:				; CODE XREF: sub_404AF0+7Ej
		mov	dl, [eax]
		cmp	dl, [ecx]
		jnz	short loc_404B74
		test	dl, dl
		jz	short loc_404B70
		mov	dl, [eax+1]
		cmp	dl, [ecx+1]
		jnz	short loc_404B74
		add	eax, 2
		add	ecx, 2
		test	dl, dl
		jnz	short loc_404B54

loc_404B70:				; CODE XREF: sub_404AF0+6Cj
		xor	eax, eax
		jmp	short loc_404B79
; ---------------------------------------------------------------------------

loc_404B74:				; CODE XREF: sub_404AF0+68j
					; sub_404AF0+74j
		sbb	eax, eax
		sbb	eax, 0FFFFFFFFh

loc_404B79:				; CODE XREF: sub_404AF0+82j
		test	eax, eax
		jnz	short loc_404BEF
		push	3		; CodePage
		lea	eax, [ebp+var_114]
		push	edi		; lpString
		lea	ecx, [ebp+Memory] ; int
		mov	[ebp+Memory], eax
		call	sub_405670
		mov	byte ptr [ebp+var_4], 2
		mov	ecx, [ebp+Memory]
		push	ecx
		mov	ecx, ebx

loc_404BA4:				; CODE XREF: sub_404AF0+157j
		call	ds:?SetString@?$CSimpleStringT@_W$00@ATL@@QAEXPB_W@Z ; ATL::CSimpleStringT<wchar_t,1>::SetString(wchar_t const *)
		mov	eax, [ebp+Memory]
		lea	edx, [ebp+var_114]
		cmp	eax, edx
		jz	short loc_404BC4
		push	eax		; Memory
		call	ds:free
		add	esp, 4

loc_404BC4:				; CODE XREF: sub_404AF0+53j
					; sub_404AF0+57j ...
		mov	[ebp+var_4], 0FFFFFFFFh
		call	ds:__imp_?AfxTryCleanup@@YGXXZ ; AfxTryCleanup(void)
		mov	ecx, [ebp+var_C]
		mov	large fs:0, ecx
		pop	ecx
		pop	edi
		pop	esi
		pop	ebx
		mov	ecx, [ebp+var_14]
		xor	ecx, ebp
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_404BEF:				; CODE XREF: sub_404AF0+8Bj
		mov	ecx, offset aVersion ; "Version"
		mov	eax, esi

loc_404BF6:				; CODE XREF: sub_404AF0+120j
		mov	dl, [eax]
		cmp	dl, [ecx]
		jnz	short loc_404C16
		test	dl, dl
		jz	short loc_404C12
		mov	dl, [eax+1]
		cmp	dl, [ecx+1]
		jnz	short loc_404C16
		add	eax, 2
		add	ecx, 2
		test	dl, dl
		jnz	short loc_404BF6

loc_404C12:				; CODE XREF: sub_404AF0+10Ej
		xor	eax, eax
		jmp	short loc_404C1B
; ---------------------------------------------------------------------------

loc_404C16:				; CODE XREF: sub_404AF0+10Aj
					; sub_404AF0+116j
		sbb	eax, eax
		sbb	eax, 0FFFFFFFFh

loc_404C1B:				; CODE XREF: sub_404AF0+124j
		test	eax, eax
		jnz	short loc_404C4C
		push	3		; CodePage
		lea	eax, [ebp+var_114]
		push	edi		; lpString
		lea	ecx, [ebp+Memory] ; int
		mov	[ebp+Memory], eax
		call	sub_405670
		mov	byte ptr [ebp+var_4], 3
		mov	ecx, [ebp+Memory]
		push	ecx
		lea	ecx, [ebx+4]
		jmp	loc_404BA4
; ---------------------------------------------------------------------------

loc_404C4C:				; CODE XREF: sub_404AF0+12Dj
		push	ebx		; int
		mov	edx, edi	; lpString
		mov	ecx, esi	; lpString
		call	sub_404930
		jmp	loc_404BC4
sub_404AF0	endp


; =============== S U B	R O U T	I N E =======================================


sub_404C5B	proc near		; DATA XREF: .rdata:0040CE8Co
		mov	eax, [ebp-124h]
		mov	[ebp-11Ch], eax
		mov	eax, offset loc_404BC4
		retn
sub_404C5B	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __thiscall sub_404C70(int, int)
sub_404C70	proc near		; CODE XREF: sub_4017D0+22Ap

var_904		= dword	ptr -904h
var_8FC		= dword	ptr -8FCh
var_8F8		= dword	ptr -8F8h
var_8F4		= dword	ptr -8F4h
lpString	= dword	ptr -8F0h
Memory		= dword	ptr -8ECh
var_8E8		= byte ptr -8E8h
var_868		= dword	ptr -868h
var_858		= dword	ptr -858h
var_854		= dword	ptr -854h
Src		= dword	ptr -84Ch
var_83C		= dword	ptr -83Ch
var_838		= dword	ptr -838h
var_830		= dword	ptr -830h
var_820		= dword	ptr -820h
var_81C		= dword	ptr -81Ch
var_14		= dword	ptr -14h
var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4
arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset sub_40A6BD
		mov	eax, large fs:0
		push	eax
		sub	esp, 900h
		mov	eax, ___security_cookie
		xor	eax, ebp
		mov	[ebp+var_14], eax
		push	ebx
		push	esi
		push	edi
		push	eax
		lea	eax, [ebp+var_C]
		mov	large fs:0, eax
		mov	[ebp+var_10], esp
		push	0FFFFFFFFh	; samDesired
		push	80000002h	; hKey
		push	offset aAnalyticsdisab ; "AnalyticsDisabled"
		lea	eax, [ebp+var_8F4]
		mov	edi, ecx
		push	1		; int
		mov	[ebp+var_4], 0
		push	eax		; int
		mov	[ebp+var_904], edi
		mov	byte ptr [ebp+var_4], 1
		call	sub_4012C0
		add	esp, 14h
		push	offset a1	; "1"
		mov	ecx, eax
		mov	byte ptr [ebp+var_4], 2
		call	ds:?Compare@?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QBEHPB_W@Z	; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::Compare(wchar_t const *)
		test	eax, eax
		lea	ecx, [ebp+var_8F4]
		setz	bl
		mov	byte ptr [ebp+var_4], 1
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		test	bl, bl
		jz	short loc_404CFF
		mov	byte ptr [edi+11h], 0

loc_404CFF:				; CODE XREF: sub_404C70+89j
		lea	ecx, [ebp+lpString]
		call	sub_405240
		lea	esi, [ebp+var_8FC]
		mov	byte ptr [ebp+var_4], 3
		call	sub_4038B0
		lea	esi, [ebp+var_8F4]
		mov	byte ptr [ebp+var_4], 4
		call	sub_405550
		mov	bl, 5
		mov	byte ptr [ebp+var_4], bl
		mov	edx, [ebp+lpString]
		lea	ecx, [ebp+var_8E8]
		push	3		; CodePage
		mov	[ebp+Memory], ecx
		push	edx		; lpString
		lea	ecx, [ebp+Memory] ; int
		call	sub_4055A0
		mov	byte ptr [ebp+var_4], 6
		mov	eax, [ebp+Memory]
		push	eax		; lpString
		mov	edx, offset aVersion ; "Version"
		mov	ecx, edi	; int
		call	sub_404AF0
		mov	byte ptr [ebp+var_4], bl
		mov	eax, [ebp+Memory]
		mov	esi, ds:free
		lea	ecx, [ebp+var_8E8]
		cmp	eax, ecx
		jz	short loc_404D83
		push	eax		; Memory
		call	esi ; free
		add	esp, 4

loc_404D83:				; CODE XREF: sub_404C70+10Bj
		push	0
		push	offset a_	; "."
		lea	ecx, [ebp+lpString]
		call	ds:?Find@?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QBEHPB_WH@Z ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::Find(wchar_t	const *,int)
		test	eax, eax
		js	short loc_404DF7
		push	eax
		lea	ecx, [ebp+lpString]
		call	ds:?Truncate@?$CSimpleStringT@_W$00@ATL@@QAEXH@Z ; ATL::CSimpleStringT<wchar_t,1>::Truncate(int)
		mov	eax, [ebp+lpString]
		push	3		; CodePage
		lea	edx, [ebp+var_8E8]
		push	eax		; lpString
		lea	ecx, [ebp+Memory] ; int
		mov	[ebp+Memory], edx
		call	sub_4055A0
		mov	byte ptr [ebp+var_4], 7
		mov	ecx, [ebp+Memory]
		push	ecx		; lpString
		mov	edx, offset aMajversion	; "MajVersion"
		mov	ecx, edi	; int
		call	sub_404AF0
		mov	byte ptr [ebp+var_4], bl
		mov	eax, [ebp+Memory]
		lea	edx, [ebp+var_8E8]
		cmp	eax, edx
		jz	short loc_404DF7
		push	eax		; Memory
		call	esi ; free
		add	esp, 4

loc_404DF7:				; CODE XREF: sub_404C70+128j
					; sub_404C70+17Fj
		mov	ecx, [ebp+var_8F4]
		push	3		; CodePage
		lea	eax, [ebp+var_8E8]
		push	ecx		; lpString
		lea	ecx, [ebp+Memory] ; int
		mov	[ebp+Memory], eax
		call	sub_4055A0
		mov	byte ptr [ebp+var_4], 8
		mov	edx, [ebp+Memory]
		push	edx		; lpString
		mov	edx, offset aApptoken ;	"AppToken"
		mov	ecx, edi	; int
		call	sub_404AF0
		mov	byte ptr [ebp+var_4], bl
		mov	eax, [ebp+Memory]
		lea	ecx, [ebp+var_8E8]
		cmp	eax, ecx
		jz	short loc_404E47
		push	eax		; Memory
		call	esi ; free
		add	esp, 4

loc_404E47:				; CODE XREF: sub_404C70+1CFj
		mov	esi, edi
		call	sub_4053D0
		xor	ecx, ecx
		mov	esi, 0Fh
		mov	[ebp+var_838], esi
		mov	[ebp+var_83C], ecx
		mov	byte ptr [ebp+Src], cl
		mov	[ebp+var_81C], esi
		mov	[ebp+var_820], ecx
		mov	byte ptr [ebp+var_830],	cl
		mov	eax, [ebp+arg_0]
		mov	byte ptr [ebp+var_4], 0Ah
		cmp	eax, ecx
		jz	loc_4050F7
		mov	eax, [eax+4]
		mov	edx, [eax]
		mov	[ebp+var_8F8], edx

loc_404E93:				; CODE XREF: sub_404C70+42Cj
					; sub_404C70+452j
		mov	ebx, [ebp+var_8F8]
		mov	eax, [ebp+arg_0]
		cmp	ebx, [eax+4]
		jz	loc_4050D9
		mov	ecx, 8
		cmp	[ebx+20h], ecx
		jb	short loc_404EB4
		mov	eax, [ebx+0Ch]
		jmp	short loc_404EB7
; ---------------------------------------------------------------------------

loc_404EB4:				; CODE XREF: sub_404C70+23Dj
		lea	eax, [ebx+0Ch]

loc_404EB7:				; CODE XREF: sub_404C70+242j
		mov	edx, [ebx+1Ch]
		lea	edx, [eax+edx*2]
		cmp	[ebx+20h], ecx
		jb	short loc_404EC7
		mov	ecx, [ebx+0Ch]
		jmp	short loc_404ECA
; ---------------------------------------------------------------------------

loc_404EC7:				; CODE XREF: sub_404C70+250j
		lea	ecx, [ebx+0Ch]

loc_404ECA:				; CODE XREF: sub_404C70+255j
		mov	esi, [ebp+var_838]
		mov	eax, [ebp+Src]
		cmp	esi, 10h
		jnb	short loc_404EE1
		lea	eax, [ebp+Src]

loc_404EE1:				; CODE XREF: sub_404C70+269j
		mov	edi, [ebp+var_83C]
		add	edi, eax
		cmp	esi, 10h
		mov	esi, [ebp+Src]
		jnb	short loc_404EFA
		lea	esi, [ebp+Src]

loc_404EFA:				; CODE XREF: sub_404C70+282j
		mov	eax, [ebp+var_8FC]
		push	eax
		push	edx
		push	ecx
		lea	ecx, [ebp+var_868]
		push	ecx
		mov	[ebp+var_854], 0Fh
		mov	[ebp+var_858], 0
		mov	byte ptr [ebp+var_868],	0
		call	sub_402CD0
		mov	byte ptr [ebp+var_4], 0Bh
		cmp	[ebp+var_838], 10h
		mov	eax, [ebp+Src]
		jnb	short loc_404F43
		lea	eax, [ebp+Src]

loc_404F43:				; CODE XREF: sub_404C70+2CBj
		test	edi, edi
		jz	short loc_404F49
		sub	edi, esi

loc_404F49:				; CODE XREF: sub_404C70+2D5j
		test	esi, esi
		jz	short loc_404F4F
		sub	esi, eax

loc_404F4F:				; CODE XREF: sub_404C70+2DBj
		lea	edx, [ebp+var_868]
		push	edx
		push	edi
		mov	edi, esi
		lea	esi, [ebp+Src]
		call	loc_405D80
		mov	byte ptr [ebp+var_4], 0Ah
		cmp	[ebp+var_854], 10h
		jb	short loc_404F81
		mov	eax, [ebp+var_868]
		push	eax
		call	ds:__imp_??3@YAXPAX@Z ;	operator delete(void *)
		add	esp, 4

loc_404F81:				; CODE XREF: sub_404C70+2FFj
		mov	esi, 8
		cmp	[ebx+3Ch], esi
		jb	short loc_404F90
		mov	ecx, [ebx+28h]
		jmp	short loc_404F93
; ---------------------------------------------------------------------------

loc_404F90:				; CODE XREF: sub_404C70+319j
		lea	ecx, [ebx+28h]

loc_404F93:				; CODE XREF: sub_404C70+31Ej
		mov	edx, [ebx+38h]
		lea	eax, [ebx+28h]
		lea	edx, [ecx+edx*2]
		cmp	[eax+14h], esi
		jb	short loc_404FA3
		mov	eax, [eax]

loc_404FA3:				; CODE XREF: sub_404C70+32Fj
		mov	esi, [ebp+var_81C]
		mov	ecx, [ebp+var_830]
		cmp	esi, 10h
		jnb	short loc_404FBA
		lea	ecx, [ebp+var_830]

loc_404FBA:				; CODE XREF: sub_404C70+342j
		mov	edi, [ebp+var_820]
		add	edi, ecx
		cmp	esi, 10h
		mov	esi, [ebp+var_830]
		jnb	short loc_404FD3
		lea	esi, [ebp+var_830]

loc_404FD3:				; CODE XREF: sub_404C70+35Bj
		mov	ecx, [ebp+var_8FC]
		push	ecx
		push	edx
		push	eax
		lea	edx, [ebp+var_868]
		push	edx
		mov	[ebp+var_854], 0Fh
		mov	[ebp+var_858], 0
		mov	byte ptr [ebp+var_868],	0
		call	sub_402CD0
		mov	byte ptr [ebp+var_4], 0Ch
		mov	eax, [ebp+var_830]
		mov	ebx, 10h
		cmp	[ebp+var_81C], ebx
		jnb	short loc_405020
		lea	eax, [ebp+var_830]

loc_405020:				; CODE XREF: sub_404C70+3A8j
		test	edi, edi
		jz	short loc_405026
		sub	edi, esi

loc_405026:				; CODE XREF: sub_404C70+3B2j
		test	esi, esi
		jz	short loc_40502C
		sub	esi, eax

loc_40502C:				; CODE XREF: sub_404C70+3B8j
		lea	eax, [ebp+var_868]
		push	eax
		push	edi
		mov	edi, esi
		lea	esi, [ebp+var_830]
		call	loc_405D80
		mov	byte ptr [ebp+var_4], 0Ah
		cmp	[ebp+var_854], ebx
		jb	short loc_40505D
		mov	ecx, [ebp+var_868]
		push	ecx
		call	ds:__imp_??3@YAXPAX@Z ;	operator delete(void *)
		add	esp, 4

loc_40505D:				; CODE XREF: sub_404C70+3DBj
		mov	ecx, [ebp+var_830]
		cmp	[ebp+var_81C], ebx
		jnb	short loc_405071
		lea	ecx, [ebp+var_830]

loc_405071:				; CODE XREF: sub_404C70+3F9j
		mov	eax, [ebp+Src]
		cmp	[ebp+var_838], ebx
		jnb	short loc_405085
		lea	eax, [ebp+Src]

loc_405085:				; CODE XREF: sub_404C70+40Dj
		push	ecx		; void *
		mov	ecx, [ebp+var_904]
		push	eax		; Src
		call	sub_403C50
		mov	ecx, [ebp+var_8F8]
		cmp	byte ptr [ecx+45h], 0
		jnz	loc_404E93
		mov	eax, [ecx+8]
		cmp	byte ptr [eax+45h], 0
		jnz	short loc_4050C7
		jmp	short loc_4050B0
; ---------------------------------------------------------------------------
		align 10h

loc_4050B0:				; CODE XREF: sub_404C70+43Bj
					; sub_404C70+44Aj
		mov	ecx, [eax]
		cmp	byte ptr [ecx+45h], 0
		jnz	short loc_4050BC
		mov	eax, ecx
		jmp	short loc_4050B0
; ---------------------------------------------------------------------------

loc_4050BC:				; CODE XREF: sub_404C70+446j
					; sub_404C70+45Ej ...
		mov	[ebp+var_8F8], eax
		jmp	loc_404E93
; ---------------------------------------------------------------------------

loc_4050C7:				; CODE XREF: sub_404C70+439j
					; sub_404C70+467j
		mov	eax, [ecx+4]
		cmp	byte ptr [eax+45h], 0
		jnz	short loc_4050BC
		cmp	ecx, [eax+8]
		jnz	short loc_4050BC
		mov	ecx, eax
		jmp	short loc_4050C7
; ---------------------------------------------------------------------------

loc_4050D9:				; CODE XREF: sub_404C70+22Fj
		cmp	[ebp+var_81C], 10h
		jb	short loc_4050F2
		mov	edx, [ebp+var_830]
		push	edx
		call	ds:__imp_??3@YAXPAX@Z ;	operator delete(void *)
		add	esp, 4

loc_4050F2:				; CODE XREF: sub_404C70+470j
		mov	esi, 0Fh

loc_4050F7:				; CODE XREF: sub_404C70+212j
		xor	edi, edi
		cmp	[ebp+var_838], 10h
		mov	[ebp+var_81C], esi
		mov	[ebp+var_820], edi
		mov	byte ptr [ebp+var_830],	0
		jb	short loc_405125
		mov	eax, [ebp+Src]
		push	eax
		call	ds:__imp_??3@YAXPAX@Z ;	operator delete(void *)
		add	esp, 4

loc_405125:				; CODE XREF: sub_404C70+4A3j
		lea	ecx, [ebp+var_8F4]
		mov	[ebp+var_838], esi
		mov	[ebp+var_83C], edi
		mov	byte ptr [ebp+Src], 0
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		lea	ecx, [ebp+var_8FC]
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		lea	ecx, [ebp+lpString]
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)

loc_40515C:				; DATA XREF: sub_405234o
		mov	ecx, [ebp+var_C]
		mov	large fs:0, ecx
		pop	ecx
		pop	edi
		pop	esi
		pop	ebx
		mov	ecx, [ebp+var_14]
		xor	ecx, ebp
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	esp, ebp
		pop	ebp
		retn	4
sub_404C70	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: noreturn

sub_40517A	proc near		; DATA XREF: .rdata:0040D34Co
		mov	ecx, dword_40F6AC
		mov	edx, [ecx+10h]
		call	edx
		push	1E6h
		push	offset aCkmhandlerInit ; "CKMHandler::Init"
		push	offset aSharedCkmhandl ; "Shared\\CKMHandler.cpp"
		push	eax
		push	offset aExceptionHandl ; "==============================\nExcepti"...
		lea	eax, [ebp-414h]
		push	400h		; SizeInBytes
		push	eax		; DstBuf
		call	ds:sprintf_s
		mov	edx, dword_40F6AC
		mov	eax, [edx+48h]
		lea	ecx, [ebp-414h]
		push	ecx
		call	eax
		mov	ecx, [ebp-90Ch]
		add	esp, 20h
		push	offset dword_40C960
		lea	edx, [ebp-908h]
		push	edx
		mov	[ebp-908h], ecx
		call	_CxxThrowException
sub_40517A	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: noreturn

sub_4051DE	proc near		; DATA XREF: .rdata:0040D35Co
		push	1E6h
		push	offset aCkmhandlerInit ; "CKMHandler::Init"
		push	offset aSharedCkmhandl ; "Shared\\CKMHandler.cpp"
		push	offset aExceptionHan_0 ; "==============================\nExcepti"...
		lea	eax, [ebp-814h]
		push	400h		; SizeInBytes
		push	eax		; DstBuf
		call	ds:sprintf_s
		mov	edx, dword_40F6AC
		mov	eax, [edx+48h]
		lea	ecx, [ebp-814h]
		push	ecx
		call	eax
		add	esp, 1Ch
		push	offset dword_40C970
		lea	ecx, [ebp-900h]
		push	ecx
		mov	dword ptr [ebp-900h], 0
		call	_CxxThrowException
sub_4051DE	endp


; =============== S U B	R O U T	I N E =======================================


sub_405234	proc near		; DATA XREF: .rdata:0040D36Co
		mov	eax, offset loc_40515C
		retn
sub_405234	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_405240	proc near		; CODE XREF: sub_404C70+95p

var_438		= dword	ptr -438h
var_434		= dword	ptr -434h
var_430		= dword	ptr -430h
var_42C		= dword	ptr -42Ch
var_428		= dword	ptr -428h
var_424		= dword	ptr -424h
var_420		= dword	ptr -420h
var_41C		= dword	ptr -41Ch
var_418		= dword	ptr -418h
DstBuf		= byte ptr -414h
var_14		= dword	ptr -14h
var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset sub_40A303
		mov	eax, large fs:0
		push	eax
		sub	esp, 42Ch
		mov	eax, ___security_cookie
		xor	eax, ebp
		mov	[ebp+var_14], eax
		push	ebx
		push	esi
		push	edi
		push	eax
		lea	eax, [ebp+var_C]
		mov	large fs:0, eax
		mov	[ebp+var_10], esp
		mov	esi, ecx
		mov	[ebp+var_428], esi
		mov	[ebp+var_434], 0
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		mov	eax, 1
		mov	[ebp+var_4], eax
		mov	[ebp+var_434], eax
		lea	eax, [ebp+var_430]
		push	eax
		lea	ecx, [ebp+var_42C]
		push	ecx
		lea	edx, [ebp+var_424]
		push	edx
		lea	eax, [ebp+var_418]
		push	eax
		mov	byte ptr [ebp+var_4], 2
		call	sub_405FE0
		mov	ecx, [ebp+var_430]
		mov	edx, [ebp+var_42C]
		mov	eax, [ebp+var_424]
		push	ecx
		mov	ecx, [ebp+var_418]
		push	edx
		push	eax
		push	ecx
		push	offset aD_D_D_D	; "%d.%d.%d.%d"
		push	esi
		call	ds:?Format@?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAAXPB_WZZ ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::Format(wchar_t const *,...)
		add	esp, 18h
		jmp	loc_4053B0
; ---------------------------------------------------------------------------

loc_4052EC:				; DATA XREF: .rdata:0040CDE8o
		mov	edx, dword_40F6AC
		mov	eax, [edx+10h]
		call	eax
		push	1FFh
		push	offset aCkmhandlerGeta ; "CKMHandler::GetAppVersion"
		push	offset aSharedCkmhandl ; "Shared\\CKMHandler.cpp"
		push	eax
		push	offset aExceptionHandl ; "==============================\nExcepti"...
		lea	ecx, [ebp+DstBuf]
		push	400h		; SizeInBytes
		push	ecx		; DstBuf
		call	ds:sprintf_s
		mov	eax, dword_40F6AC
		mov	ecx, [eax+48h]
		lea	edx, [ebp+DstBuf]
		push	edx
		call	ecx
		mov	edx, [ebp+var_438]
		add	esp, 20h
		push	offset dword_40C960
		lea	eax, [ebp+var_41C]
		push	eax
		mov	[ebp+var_41C], edx
		call	_CxxThrowException
; ---------------------------------------------------------------------------

loc_40534F:				; DATA XREF: .rdata:0040CDF8o
		push	1FFh
		push	offset aCkmhandlerGeta ; "CKMHandler::GetAppVersion"
		push	offset aSharedCkmhandl ; "Shared\\CKMHandler.cpp"
		push	offset aExceptionHan_0 ; "==============================\nExcepti"...
		lea	ecx, [ebp+DstBuf]
		push	400h		; SizeInBytes
		push	ecx		; DstBuf
		call	ds:sprintf_s
		mov	eax, dword_40F6AC
		mov	ecx, [eax+48h]
		lea	edx, [ebp+DstBuf]
		push	edx
		call	ecx
		add	esp, 1Ch
		push	offset dword_40C970
		lea	edx, [ebp+var_420]
		push	edx
		mov	[ebp+var_420], 0
		call	_CxxThrowException
; ---------------------------------------------------------------------------

loc_4053A4:				; DATA XREF: .rdata:0040CE08o
		mov	eax, offset loc_4053AA
		retn
; ---------------------------------------------------------------------------

loc_4053AA:				; CODE XREF: sub_405240+169j
					; DATA XREF: sub_405240:loc_4053A4o
		mov	esi, [ebp+var_428]

loc_4053B0:				; CODE XREF: sub_405240+A7j
		mov	eax, esi
		mov	ecx, [ebp+var_C]
		mov	large fs:0, ecx
		pop	ecx
		pop	edi
		pop	esi
		pop	ebx
		mov	ecx, [ebp+var_14]
		xor	ecx, ebp
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	esp, ebp
		pop	ebp
		retn
sub_405240	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_4053D0	proc near		; CODE XREF: sub_404C70+1D9p

var_12C		= dword	ptr -12Ch
Memory		= dword	ptr -128h
var_124		= byte ptr -124h
lpString	= dword	ptr -0A0h
var_9C		= byte ptr -9Ch
var_14		= dword	ptr -14h
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4

		push	ebp
		mov	ebp, esp
		and	esp, 0FFFFFFF8h
		push	0FFFFFFFFh
		push	offset sub_40A2B2
		mov	eax, large fs:0
		push	eax
		sub	esp, 124h
		mov	eax, ___security_cookie
		xor	eax, esp
		mov	[esp+130h+var_14], eax
		mov	eax, ___security_cookie
		xor	eax, esp
		push	eax
		lea	eax, [esp+134h+var_C]
		mov	large fs:0, eax
		cmp	byte ptr [esi+11h], 0
		jz	loc_405527
		mov	eax, [esi]
		lea	ecx, [esp+134h+var_124]
		push	3		; CodePage
		mov	[esp+138h+Memory], ecx
		push	eax		; lpString
		lea	ecx, [esp+13Ch+Memory] ; int
		call	sub_4055A0
		mov	[esp+134h+var_4], 0
		mov	edx, [esp+134h+Memory] ; lpString
		push	esi		; int
		mov	ecx, offset String ; "InstallSource"
		call	sub_404930
		mov	[esp+134h+var_4], 0FFFFFFFFh
		mov	eax, [esp+134h+Memory]
		lea	edx, [esp+134h+var_124]
		cmp	eax, edx
		jz	short loc_405468
		push	eax		; Memory
		call	ds:free
		add	esp, 4

loc_405468:				; CODE XREF: sub_4053D0+8Cj
		mov	eax, [esi+4]
		lea	ecx, [esp+134h+var_9C]
		push	3		; CodePage
		mov	[esp+138h+lpString], ecx
		push	eax		; lpString
		lea	ecx, [esp+13Ch+lpString] ; int
		call	sub_4055A0
		mov	[esp+134h+var_4], 1
		mov	edx, [esp+134h+lpString] ; lpString
		push	esi		; int
		mov	ecx, offset aVersion ; "Version"
		call	sub_404930
		mov	[esp+134h+var_4], 0FFFFFFFFh
		mov	eax, [esp+134h+lpString]
		lea	edx, [esp+134h+var_9C]
		cmp	eax, edx
		jz	short loc_4054CC
		push	eax		; Memory
		call	ds:free
		add	esp, 4

loc_4054CC:				; CODE XREF: sub_4053D0+F0j
		lea	eax, [esp+134h+var_12C]
		push	eax
		call	sub_4064C0
		add	esp, 4
		mov	[esp+134h+var_4], 2
		mov	ecx, [esp+134h+var_12C]
		cmp	dword ptr [ecx-0Ch], 0
		jnz	short loc_4054FD
		push	offset aNull	; "NULL"
		lea	ecx, [esp+138h+var_12C]
		call	ds:?SetString@?$CSimpleStringT@_W$00@ATL@@QAEXPB_W@Z ; ATL::CSimpleStringT<wchar_t,1>::SetString(wchar_t const *)

loc_4054FD:				; CODE XREF: sub_4053D0+11Cj
		mov	edx, [esp+134h+var_12C]
		push	edx
		push	offset aDb27a205fc69f3 ; "db27a205fc69f3fa911fecd0818bb624c79a94c"...
		lea	eax, [esi+8]
		push	offset a_kS_pS_n ; "_k=%s&_p=%s&_n="
		push	eax
		call	ds:?Format@?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAAXPB_WZZ ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::Format(wchar_t const *,...)
		add	esp, 10h
		lea	ecx, [esp+134h+var_12C]
		mov	byte ptr [esi+10h], 1
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)

loc_405527:				; CODE XREF: sub_4053D0+41j
		mov	ecx, [esp+134h+var_C]
		mov	large fs:0, ecx
		pop	ecx
		mov	ecx, [esp+130h+var_14]
		xor	ecx, esp
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	esp, ebp
		pop	ebp
		retn
sub_4053D0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_405550	proc near		; CODE XREF: sub_404C70+B3p

var_4		= dword	ptr -4

		push	ebp
		mov	ebp, esp
		push	ecx
		push	0FFFFFFFFh	; samDesired
		push	80000002h	; hKey
		push	offset aSerialnumber ; "SerialNumber"
		push	0		; int
		push	esi		; int
		mov	[ebp+var_4], 0
		call	sub_4012C0
		add	esp, 14h
		mov	eax, esi
		mov	esp, ebp
		pop	ebp
		retn
sub_405550	endp

; ---------------------------------------------------------------------------
		align 10h
; START	OF FUNCTION CHUNK FOR sub_409CB4

loc_405580:				; CODE XREF: sub_409CB4+6j
					; sub_40A141+6j ...
		mov	eax, [ecx]
		add	ecx, 4
		cmp	eax, ecx
		jz	short locret_405591
		push	eax		; Memory
		call	ds:free
		pop	ecx

locret_405591:				; CODE XREF: sub_409CB4-472Dj
		retn
; END OF FUNCTION CHUNK	FOR sub_409CB4
; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __thiscall sub_4055A0(int, LPCWSTR lpString, UINT	CodePage)
sub_4055A0	proc near		; CODE XREF: sub_403CE0+1D1p
					; sub_403CE0+274p ...

lpString	= dword	ptr  8
CodePage	= dword	ptr  0Ch

		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+lpString]
		push	ebx
		mov	ebx, ecx
		test	eax, eax
		jnz	short loc_4055B4
		mov	[ebx], eax
		pop	ebx
		pop	ebp
		retn	8
; ---------------------------------------------------------------------------

loc_4055B4:				; CODE XREF: sub_4055A0+Bj
		push	esi
		push	edi
		push	eax		; lpString
		call	ds:lstrlenW
		lea	edi, [eax+1]
		push	80h		; int
		lea	eax, [ebx+4]
		push	eax		; int
		lea	esi, ds:0[edi*4]
		push	esi		; Count
		push	ebx		; int
		call	sub_405A40
		mov	eax, [ebx]
		mov	ecx, [ebp+lpString]
		mov	edx, [ebp+CodePage]
		add	esp, 10h
		push	0		; lpUsedDefaultChar
		push	0		; lpDefaultChar
		push	esi		; cbMultiByte
		push	eax		; lpMultiByteStr
		push	edi		; cchWideChar
		push	ecx		; lpWideCharStr
		push	0		; dwFlags
		push	edx		; CodePage
		call	ds:WideCharToMultiByte
		mov	esi, eax
		neg	esi
		sbb	esi, esi
		inc	esi
		jz	short loc_40565E
		call	ds:GetLastError
		cmp	eax, 7Ah
		jnz	short loc_405655
		mov	eax, [ebp+lpString]
		mov	ecx, [ebp+CodePage]
		push	0		; lpUsedDefaultChar
		push	0		; lpDefaultChar
		push	0		; cbMultiByte
		push	0		; lpMultiByteStr
		push	edi		; cchWideChar
		push	eax		; lpWideCharStr
		push	0		; dwFlags
		push	ecx		; CodePage
		call	ds:WideCharToMultiByte
		mov	esi, eax
		push	80h		; int
		lea	eax, [ebx+4]
		push	eax		; int
		push	esi		; Count
		push	ebx		; int
		call	sub_405A40
		mov	edx, [ebx]
		mov	eax, [ebp+lpString]
		mov	ecx, [ebp+CodePage]
		add	esp, 10h
		push	0		; lpUsedDefaultChar
		push	0		; lpDefaultChar
		push	esi		; cbMultiByte
		push	edx		; lpMultiByteStr
		push	edi		; cchWideChar
		push	eax		; lpWideCharStr
		push	0		; dwFlags
		push	ecx		; CodePage
		call	ds:WideCharToMultiByte
		mov	esi, eax
		neg	esi
		sbb	esi, esi
		inc	esi

loc_405655:				; CODE XREF: sub_4055A0+65j
		test	esi, esi
		jz	short loc_40565E
		call	sub_405F90
; ---------------------------------------------------------------------------

loc_40565E:				; CODE XREF: sub_4055A0+5Aj
					; sub_4055A0+B7j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn	8
sub_4055A0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __thiscall sub_405670(int, LPCSTR	lpString, UINT CodePage)
sub_405670	proc near		; CODE XREF: sub_403FF0+FBp
					; sub_403FF0+1AEp ...

lpString	= dword	ptr  8
CodePage	= dword	ptr  0Ch

		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, [ebp+lpString]
		mov	ebx, ecx
		test	esi, esi
		jnz	short loc_405686
		mov	[ebx], esi
		pop	esi
		pop	ebx
		pop	ebp
		retn	8
; ---------------------------------------------------------------------------

loc_405686:				; CODE XREF: sub_405670+Cj
		push	edi
		push	esi		; lpString
		call	ds:lstrlenA
		lea	edi, [eax+1]
		push	80h		; int
		lea	eax, [ebx+4]
		push	eax		; int
		push	edi		; Count
		push	ebx		; int
		call	sub_405AE0
		mov	eax, [ebx]
		mov	ecx, [ebp+CodePage]
		add	esp, 10h
		push	edi		; cchWideChar
		push	eax		; lpWideCharStr
		push	edi		; cbMultiByte
		push	esi		; lpMultiByteStr
		push	0		; dwFlags
		push	ecx		; CodePage
		call	ds:MultiByteToWideChar
		mov	esi, eax
		neg	esi
		sbb	esi, esi
		inc	esi
		jz	short loc_405719
		call	ds:GetLastError
		cmp	eax, 7Ah
		jnz	short loc_405710
		mov	edx, [ebp+lpString]
		mov	eax, [ebp+CodePage]
		push	0		; cchWideChar
		push	0		; lpWideCharStr
		push	edi		; cbMultiByte
		push	edx		; lpMultiByteStr
		push	0		; dwFlags
		push	eax		; CodePage
		call	ds:MultiByteToWideChar
		mov	esi, eax
		push	80h		; int
		lea	eax, [ebx+4]
		push	eax		; int
		push	esi		; Count
		push	ebx		; int
		call	sub_405AE0
		mov	ecx, [ebx]
		mov	edx, [ebp+lpString]
		mov	eax, [ebp+CodePage]
		add	esp, 10h
		push	esi		; cchWideChar
		push	ecx		; lpWideCharStr
		push	edi		; cbMultiByte
		push	edx		; lpMultiByteStr
		push	0		; dwFlags
		push	eax		; CodePage
		call	ds:MultiByteToWideChar
		mov	esi, eax
		neg	esi
		sbb	esi, esi
		inc	esi

loc_405710:				; CODE XREF: sub_405670+58j
		test	esi, esi
		jz	short loc_405719
		call	sub_405F90
; ---------------------------------------------------------------------------

loc_405719:				; CODE XREF: sub_405670+4Dj
					; sub_405670+A2j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn	8
sub_405670	endp

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_409FBD

loc_405720:				; CODE XREF: sub_409FBD+9j
					; sub_40A57D+9j
		mov	eax, [esi+4]
		push	edi
		xor	edi, edi
		mov	dword ptr [esi], offset	off_40BF40
		cmp	eax, edi
		jz	short loc_405736

loc_405730:				; CODE XREF: sub_409FBD-4889j
		mov	eax, [eax]
		cmp	eax, edi
		jnz	short loc_405730

loc_405736:				; CODE XREF: sub_409FBD-488Fj
		mov	ecx, [esi+14h]
		mov	[esi+0Ch], edi
		mov	[esi+10h], edi
		mov	[esi+8], edi
		mov	[esi+4], edi
		call	ds:?FreeDataChain@CPlex@@QAEXXZ	; CPlex::FreeDataChain(void)
		mov	[esi+14h], edi
		pop	edi
		retn
; END OF FUNCTION CHUNK	FOR sub_409FBD

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_405750	proc near		; DATA XREF: .rdata:0040BF48o

var_614		= dword	ptr -614h
var_610		= dword	ptr -610h
var_60C		= byte ptr -60Ch
var_4		= dword	ptr -4
arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		sub	esp, 614h
		mov	eax, ___security_cookie
		xor	eax, ebp
		mov	[ebp+var_4], eax
		push	ebx
		push	esi
		mov	esi, [ebp+arg_0]
		mov	eax, [esi+18h]
		not	eax
		mov	ebx, ecx
		mov	[ebp+var_614], esi
		test	al, 1
		jz	short loc_4057B1
		mov	ecx, [ebx+0Ch]
		push	ecx
		mov	ecx, esi
		call	ds:?WriteCount@CArchive@@QAEXK@Z ; CArchive::WriteCount(ulong)
		mov	ebx, [ebx+4]
		test	ebx, ebx
		jz	short loc_40579F
		lea	esp, [esp+0]

loc_405790:				; CODE XREF: sub_405750+4Dj
		lea	eax, [ebx+8]
		push	esi
		call	sub_405C20
		mov	ebx, [ebx]
		test	ebx, ebx
		jnz	short loc_405790

loc_40579F:				; CODE XREF: sub_405750+3Aj
					; sub_405750+71j
		pop	esi
		pop	ebx
		mov	ecx, [ebp+var_4]
		xor	ecx, ebp
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_4057B1:				; CODE XREF: sub_405750+27j
		mov	ecx, esi
		call	ds:?ReadCount@CArchive@@QAEKXZ ; CArchive::ReadCount(void)
		mov	[ebp+var_610], eax
		test	eax, eax
		jz	short loc_40579F
		push	edi
		jmp	short loc_4057D6
; ---------------------------------------------------------------------------
		jmp	short loc_4057D0
; ---------------------------------------------------------------------------
		align 10h

loc_4057D0:				; CODE XREF: sub_405750+76j
					; sub_405750+121j
		mov	esi, [ebp+var_614]

loc_4057D6:				; CODE XREF: sub_405750+74j
		mov	edi, 1
		sub	[ebp+var_610], edi
		push	esi
		lea	eax, [ebp+var_60C]
		call	sub_405C20
		mov	eax, [ebx+10h]
		mov	esi, [ebx+8]
		test	eax, eax
		jnz	short loc_405838
		mov	edx, [ebx+18h]
		push	610h
		push	edx
		lea	eax, [ebx+14h]
		push	eax
		call	ds:?Create@CPlex@@SGPAU1@AAPAU1@II@Z ; CPlex::Create(CPlex * &,uint,uint)
		mov	ecx, [ebx+18h]
		mov	edx, ecx
		imul	edx, 610h
		dec	ecx
		lea	eax, [eax+edx-60Ch]
		js	short loc_405831
		nop

loc_405820:				; CODE XREF: sub_405750+DFj
		mov	edx, [ebx+10h]
		mov	[eax], edx
		mov	[ebx+10h], eax
		sub	eax, 610h
		sub	ecx, edi
		jns	short loc_405820

loc_405831:				; CODE XREF: sub_405750+CDj
		mov	eax, [ebx+10h]
		test	eax, eax
		jz	short loc_40588A

loc_405838:				; CODE XREF: sub_405750+A5j
		mov	ecx, [eax]
		mov	[ebx+10h], ecx
		mov	[eax+4], esi
		mov	dword ptr [eax], 0
		add	[ebx+0Ch], edi
		lea	edi, [eax+8]
		mov	ecx, 182h
		lea	esi, [ebp+var_60C]
		rep movsd
		mov	ecx, [ebx+8]
		test	ecx, ecx
		jz	short loc_405864
		mov	[ecx], eax
		jmp	short loc_405867
; ---------------------------------------------------------------------------

loc_405864:				; CODE XREF: sub_405750+10Ej
		mov	[ebx+4], eax

loc_405867:				; CODE XREF: sub_405750+112j
		cmp	[ebp+var_610], 0
		mov	[ebx+8], eax
		jnz	loc_4057D0
		mov	ecx, [ebp+var_4]
		pop	edi
		pop	esi
		xor	ecx, ebp
		pop	ebx
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_40588A:				; CODE XREF: sub_405750+E6j
		call	ds:?AfxThrowInvalidArgException@@YGXXZ ; AfxThrowInvalidArgException(void)
sub_405750	endp

; ---------------------------------------------------------------------------
		align 20h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_4058A0	proc near		; CODE XREF: sub_404410+18Cp
					; sub_404410+3E1p

arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		cmp	dword ptr [esi+10h], 0
		push	edi
		mov	edi, [esi+8]
		jnz	short loc_4058DE
		mov	eax, [esi+18h]
		push	0Ch
		push	eax
		lea	ecx, [esi+14h]
		push	ecx
		call	ds:?Create@CPlex@@SGPAU1@AAPAU1@II@Z ; CPlex::Create(CPlex * &,uint,uint)
		mov	ecx, [esi+18h]
		lea	edx, [ecx+ecx*2]
		dec	ecx
		lea	eax, [eax+edx*4-8]
		js	short loc_4058DE
		lea	ebx, [ebx+0]

loc_4058D0:				; CODE XREF: sub_4058A0+3Cj
		mov	edx, [esi+10h]
		mov	[eax], edx
		mov	[esi+10h], eax
		sub	eax, 0Ch
		dec	ecx
		jns	short loc_4058D0

loc_4058DE:				; CODE XREF: sub_4058A0+Bj
					; sub_4058A0+28j
		mov	eax, [esi+10h]
		test	eax, eax
		jnz	short loc_4058EB
		call	ds:?AfxThrowInvalidArgException@@YGXXZ ; AfxThrowInvalidArgException(void)
; ---------------------------------------------------------------------------

loc_4058EB:				; CODE XREF: sub_4058A0+43j
		mov	ecx, [eax]
		mov	edx, [ebp+arg_0]
		mov	[esi+10h], ecx
		mov	[eax+4], edi
		mov	dword ptr [eax], 0
		inc	dword ptr [esi+0Ch]
		mov	ecx, [edx]
		mov	[eax+8], ecx
		mov	ecx, [esi+8]
		pop	edi
		test	ecx, ecx
		jz	short loc_405915
		mov	[ecx], eax
		mov	[esi+8], eax
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_405915:				; CODE XREF: sub_4058A0+6Aj
		mov	[esi+4], eax
		mov	[esi+8], eax
		pop	ebp
		retn	4
sub_4058A0	endp

; ---------------------------------------------------------------------------
		align 10h
; START	OF FUNCTION CHUNK FOR sub_40A599

loc_405920:				; CODE XREF: sub_40A599+9j
		mov	eax, [esi+4]
		push	edi
		xor	edi, edi
		mov	dword ptr [esi], offset	off_40BF58
		cmp	eax, edi
		jz	short loc_405936

loc_405930:				; CODE XREF: sub_40A599-4C65j
		mov	eax, [eax]
		cmp	eax, edi
		jnz	short loc_405930

loc_405936:				; CODE XREF: sub_40A599-4C6Bj
		mov	ecx, [esi+14h]
		mov	[esi+0Ch], edi
		mov	[esi+10h], edi
		mov	[esi+8], edi
		mov	[esi+4], edi
		call	ds:?FreeDataChain@CPlex@@QAEXXZ	; CPlex::FreeDataChain(void)
		mov	[esi+14h], edi
		pop	edi
		retn
; END OF FUNCTION CHUNK	FOR sub_40A599

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_405950	proc near		; DATA XREF: .rdata:0040BF60o

var_4		= dword	ptr -4
arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		push	ecx
		push	esi
		push	edi
		mov	edi, [ebp+arg_0]
		mov	eax, [edi+18h]
		not	eax
		mov	esi, ecx
		test	al, 1
		jz	short loc_40598E
		mov	ecx, [esi+0Ch]
		push	ecx
		mov	ecx, edi
		call	ds:?WriteCount@CArchive@@QAEXK@Z ; CArchive::WriteCount(ulong)
		mov	esi, [esi+4]
		test	esi, esi
		jz	short loc_40599E

loc_405977:				; CODE XREF: sub_405950+34j
		lea	eax, [esi+8]
		push	edi
		call	sub_405CD0
		mov	esi, [esi]
		test	esi, esi
		jnz	short loc_405977
		pop	edi
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_40598E:				; CODE XREF: sub_405950+12j
		push	ebx
		mov	ecx, edi
		call	ds:?ReadCount@CArchive@@QAEKXZ ; CArchive::ReadCount(void)
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4059A9
		pop	ebx

loc_40599E:				; CODE XREF: sub_405950+25j
		pop	edi
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_4059A6:				; CODE XREF: sub_405950+CFj
		mov	edi, [ebp+arg_0]

loc_4059A9:				; CODE XREF: sub_405950+4Bj
		push	edi
		lea	eax, [ebp+var_4]
		dec	ebx
		call	sub_405CD0
		mov	eax, [esi+10h]
		mov	edi, [esi+8]
		test	eax, eax
		jnz	short loc_4059F5
		mov	edx, [esi+18h]
		push	0Ch
		push	edx
		lea	eax, [esi+14h]
		push	eax
		call	ds:?Create@CPlex@@SGPAU1@AAPAU1@II@Z ; CPlex::Create(CPlex * &,uint,uint)
		mov	ecx, [esi+18h]
		lea	edx, [ecx+ecx*2]
		dec	ecx
		lea	eax, [eax+edx*4-8]
		js	short loc_4059EE
		lea	ebx, [ebx+0]

loc_4059E0:				; CODE XREF: sub_405950+9Cj
		mov	edx, [esi+10h]
		mov	[eax], edx
		mov	[esi+10h], eax
		sub	eax, 0Ch
		dec	ecx
		jns	short loc_4059E0

loc_4059EE:				; CODE XREF: sub_405950+88j
		mov	eax, [esi+10h]
		test	eax, eax
		jz	short loc_405A2A

loc_4059F5:				; CODE XREF: sub_405950+6Bj
		mov	ecx, [eax]
		mov	[esi+10h], ecx
		mov	[eax+4], edi
		mov	dword ptr [eax], 0
		inc	dword ptr [esi+0Ch]
		mov	edx, [ebp+var_4]
		mov	[eax+8], edx
		mov	ecx, [esi+8]
		test	ecx, ecx
		jz	short loc_405A17
		mov	[ecx], eax
		jmp	short loc_405A1A
; ---------------------------------------------------------------------------

loc_405A17:				; CODE XREF: sub_405950+C1j
		mov	[esi+4], eax

loc_405A1A:				; CODE XREF: sub_405950+C5j
		mov	[esi+8], eax
		test	ebx, ebx
		jnz	short loc_4059A6
		pop	ebx
		pop	edi
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_405A2A:				; CODE XREF: sub_405950+A3j
		call	ds:?AfxThrowInvalidArgException@@YGXXZ ; AfxThrowInvalidArgException(void)
sub_405950	endp

; ---------------------------------------------------------------------------
		align 20h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __cdecl sub_405A40(int, size_t Count, int, int)
sub_405A40	proc near		; CODE XREF: sub_4055A0+32p
					; sub_4055A0+8Dp

arg_0		= dword	ptr  8
Count		= dword	ptr  0Ch
arg_8		= dword	ptr  10h
arg_C		= dword	ptr  14h

		push	ebp
		mov	ebp, esp
		push	esi
		mov	esi, [ebp+arg_0]
		push	edi
		test	esi, esi
		jnz	short loc_405A56
		push	80070057h
		call	sub_405FC0
; ---------------------------------------------------------------------------

loc_405A56:				; CODE XREF: sub_405A40+Aj
		mov	ecx, [ebp+Count]
		test	ecx, ecx
		jns	short loc_405A67
		push	80070057h
		call	sub_405FC0
; ---------------------------------------------------------------------------

loc_405A67:				; CODE XREF: sub_405A40+1Bj
		mov	edi, [ebp+arg_8]
		test	edi, edi
		jnz	short loc_405A78
		push	80070057h
		call	sub_405FC0
; ---------------------------------------------------------------------------

loc_405A78:				; CODE XREF: sub_405A40+2Cj
		mov	eax, [esi]
		cmp	eax, edi
		jz	short loc_405ABB
		cmp	ecx, [ebp+arg_C]
		jle	short loc_405A9E
		push	1		; Size
		push	ecx		; Count
		push	eax		; Memory
		call	ds:_recalloc
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_405ACC
		push	8007000Eh
		call	sub_405FC0
; ---------------------------------------------------------------------------

loc_405A9E:				; CODE XREF: sub_405A40+41j
		push	eax		; Memory
		call	ds:free
		add	esp, 4

loc_405AA8:				; CODE XREF: sub_405A40+7Ej
		mov	[esi], edi

loc_405AAA:				; CODE XREF: sub_405A40+8Ej
		cmp	dword ptr [esi], 0
		pop	edi
		pop	esi
		jnz	short loc_405AD0
		push	8007000Eh
		call	sub_405FC0
; ---------------------------------------------------------------------------

loc_405ABB:				; CODE XREF: sub_405A40+3Cj
		cmp	ecx, [ebp+arg_C]
		jle	short loc_405AA8
		push	1		; SizeOfElements
		push	ecx		; NumOfElements
		call	ds:calloc
		add	esp, 8

loc_405ACC:				; CODE XREF: sub_405A40+52j
		mov	[esi], eax
		jmp	short loc_405AAA
; ---------------------------------------------------------------------------

loc_405AD0:				; CODE XREF: sub_405A40+6Fj
		pop	ebp
		retn
sub_405A40	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __cdecl sub_405AE0(int, size_t Count, int, int)
sub_405AE0	proc near		; CODE XREF: sub_405670+2Cp
					; sub_405670+7Cp

arg_0		= dword	ptr  8
Count		= dword	ptr  0Ch
arg_8		= dword	ptr  10h
arg_C		= dword	ptr  14h

		push	ebp
		mov	ebp, esp
		push	esi
		mov	esi, [ebp+arg_0]
		push	edi
		test	esi, esi
		jnz	short loc_405AF6
		push	80070057h
		call	sub_405FC0
; ---------------------------------------------------------------------------

loc_405AF6:				; CODE XREF: sub_405AE0+Aj
		mov	ecx, [ebp+Count]
		test	ecx, ecx
		jns	short loc_405B07
		push	80070057h
		call	sub_405FC0
; ---------------------------------------------------------------------------

loc_405B07:				; CODE XREF: sub_405AE0+1Bj
		mov	edi, [ebp+arg_8]
		test	edi, edi
		jnz	short loc_405B18
		push	80070057h
		call	sub_405FC0
; ---------------------------------------------------------------------------

loc_405B18:				; CODE XREF: sub_405AE0+2Cj
		mov	eax, [esi]
		cmp	eax, edi
		jz	short loc_405B5B
		cmp	ecx, [ebp+arg_C]
		jle	short loc_405B3E
		push	2		; Size
		push	ecx		; Count
		push	eax		; Memory
		call	ds:_recalloc
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_405B6C
		push	8007000Eh
		call	sub_405FC0
; ---------------------------------------------------------------------------

loc_405B3E:				; CODE XREF: sub_405AE0+41j
		push	eax		; Memory
		call	ds:free
		add	esp, 4

loc_405B48:				; CODE XREF: sub_405AE0+7Ej
		mov	[esi], edi

loc_405B4A:				; CODE XREF: sub_405AE0+8Ej
		cmp	dword ptr [esi], 0
		pop	edi
		pop	esi
		jnz	short loc_405B70
		push	8007000Eh
		call	sub_405FC0
; ---------------------------------------------------------------------------

loc_405B5B:				; CODE XREF: sub_405AE0+3Cj
		cmp	ecx, [ebp+arg_C]
		jle	short loc_405B48
		push	2		; SizeOfElements
		push	ecx		; NumOfElements
		call	ds:calloc
		add	esp, 8

loc_405B6C:				; CODE XREF: sub_405AE0+52j
		mov	[esi], eax
		jmp	short loc_405B4A
; ---------------------------------------------------------------------------

loc_405B70:				; CODE XREF: sub_405AE0+6Fj
		pop	ebp
		retn
sub_405AE0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_405B80	proc near		; DATA XREF: .rdata:0040BF44o

arg_0		= byte ptr  8

		push	ebp
		mov	ebp, esp
		push	esi
		mov	esi, ecx
		mov	eax, [esi+4]
		push	edi
		xor	edi, edi
		mov	dword ptr [esi], offset	off_40BF40
		cmp	eax, edi
		jz	short loc_405B9C

loc_405B96:				; CODE XREF: sub_405B80+1Aj
		mov	eax, [eax]
		cmp	eax, edi
		jnz	short loc_405B96

loc_405B9C:				; CODE XREF: sub_405B80+14j
		mov	ecx, [esi+14h]
		mov	[esi+0Ch], edi
		mov	[esi+10h], edi
		mov	[esi+8], edi
		mov	[esi+4], edi
		call	ds:?FreeDataChain@CPlex@@QAEXXZ	; CPlex::FreeDataChain(void)
		test	[ebp+arg_0], 1
		mov	[esi+14h], edi
		jz	short loc_405BC4
		push	esi
		call	ds:__imp_??3@YAXPAX@Z ;	operator delete(void *)
		add	esp, 4

loc_405BC4:				; CODE XREF: sub_405B80+38j
		pop	edi
		mov	eax, esi
		pop	esi
		pop	ebp
		retn	4
sub_405B80	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_405BD0	proc near		; DATA XREF: .rdata:0040BF5Co

arg_0		= byte ptr  8

		push	ebp
		mov	ebp, esp
		push	esi
		mov	esi, ecx
		mov	eax, [esi+4]
		push	edi
		xor	edi, edi
		mov	dword ptr [esi], offset	off_40BF58
		cmp	eax, edi
		jz	short loc_405BEC

loc_405BE6:				; CODE XREF: sub_405BD0+1Aj
		mov	eax, [eax]
		cmp	eax, edi
		jnz	short loc_405BE6

loc_405BEC:				; CODE XREF: sub_405BD0+14j
		mov	ecx, [esi+14h]
		mov	[esi+0Ch], edi
		mov	[esi+10h], edi
		mov	[esi+8], edi
		mov	[esi+4], edi
		call	ds:?FreeDataChain@CPlex@@QAEXXZ	; CPlex::FreeDataChain(void)
		test	[ebp+arg_0], 1
		mov	[esi+14h], edi
		jz	short loc_405C14
		push	esi
		call	ds:__imp_??3@YAXPAX@Z ;	operator delete(void *)
		add	esp, 4

loc_405C14:				; CODE XREF: sub_405BD0+38j
		pop	edi
		mov	eax, esi
		pop	esi
		pop	ebp
		retn	4
sub_405BD0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_405C20	proc near		; CODE XREF: sub_405750+44p
					; sub_405750+98p

var_4		= dword	ptr -4
arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		push	ecx
		test	eax, eax
		jnz	short loc_405C2E
		call	ds:?AfxThrowInvalidArgException@@YGXXZ ; AfxThrowInvalidArgException(void)
; ---------------------------------------------------------------------------

loc_405C2E:				; CODE XREF: sub_405C20+6j
		mov	ecx, [ebp+arg_0]
		mov	edx, [ecx+18h]
		push	ebx
		not	edx
		push	esi
		push	edi
		mov	[ebp+var_4], eax
		test	dl, 1
		jz	short loc_405C7B
		mov	edi, 1

loc_405C46:				; CODE XREF: sub_405C20+50j
		mov	ebx, edi
		cmp	edi, 153909h
		jb	short loc_405C55
		mov	ebx, 153909h

loc_405C55:				; CODE XREF: sub_405C20+2Ej
		mov	eax, [ebp+var_4]
		mov	ecx, [ebp+arg_0]
		mov	esi, ebx
		imul	esi, 608h
		push	esi
		push	eax
		call	ds:?Write@CArchive@@QAEXPBXI@Z ; CArchive::Write(void const *,uint)
		add	[ebp+var_4], esi
		sub	edi, ebx
		jnz	short loc_405C46
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_405C7B:				; CODE XREF: sub_405C20+1Fj
		mov	ebx, 1

loc_405C80:				; CODE XREF: sub_405C20+8Ej
		mov	edi, ebx
		cmp	ebx, 153909h
		jb	short loc_405C8F
		mov	edi, 153909h

loc_405C8F:				; CODE XREF: sub_405C20+68j
		mov	ecx, [ebp+var_4]
		mov	esi, edi
		imul	esi, 608h
		push	esi
		push	ecx
		mov	ecx, [ebp+arg_0]
		call	ds:?Read@CArchive@@QAEIPAXI@Z ;	CArchive::Read(void *,uint)
		cmp	eax, esi
		jnz	short loc_405CB9
		add	[ebp+var_4], esi
		sub	ebx, edi
		jnz	short loc_405C80
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_405CB9:				; CODE XREF: sub_405C20+87j
		push	0
		push	3
		call	ds:?AfxThrowArchiveException@@YGXHPB_W@Z ; AfxThrowArchiveException(int,wchar_t	const *)
sub_405C20	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_405CD0	proc near		; CODE XREF: sub_405950+2Bp
					; sub_405950+5Ep

var_4		= dword	ptr -4
arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		push	ecx
		test	eax, eax
		jnz	short loc_405CDE
		call	ds:?AfxThrowInvalidArgException@@YGXXZ ; AfxThrowInvalidArgException(void)
; ---------------------------------------------------------------------------

loc_405CDE:				; CODE XREF: sub_405CD0+6j
		mov	ecx, [ebp+arg_0]
		mov	edx, [ecx+18h]
		push	ebx
		not	edx
		push	esi
		push	edi
		mov	[ebp+var_4], eax
		test	dl, 1
		jz	short loc_405D2A
		mov	edi, 1

loc_405CF6:				; CODE XREF: sub_405CD0+4Fj
		mov	ebx, edi
		cmp	edi, 1FFFFFFFh
		jb	short loc_405D05
		mov	ebx, 1FFFFFFFh

loc_405D05:				; CODE XREF: sub_405CD0+2Ej
		mov	eax, [ebp+var_4]
		mov	ecx, [ebp+arg_0]
		lea	esi, ds:0[ebx*4]
		push	esi
		push	eax
		call	ds:?Write@CArchive@@QAEXPBXI@Z ; CArchive::Write(void const *,uint)
		add	[ebp+var_4], esi
		sub	edi, ebx
		jnz	short loc_405CF6
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_405D2A:				; CODE XREF: sub_405CD0+1Fj
		mov	ebx, 1
		nop

loc_405D30:				; CODE XREF: sub_405CD0+8Dj
		mov	edi, ebx
		cmp	ebx, 1FFFFFFFh
		jb	short loc_405D3F
		mov	edi, 1FFFFFFFh

loc_405D3F:				; CODE XREF: sub_405CD0+68j
		mov	ecx, [ebp+var_4]
		lea	esi, ds:0[edi*4]
		push	esi
		push	ecx
		mov	ecx, [ebp+arg_0]
		call	ds:?Read@CArchive@@QAEIPAXI@Z ;	CArchive::Read(void *,uint)
		cmp	eax, esi
		jnz	short loc_405D68
		add	[ebp+var_4], esi
		sub	ebx, edi
		jnz	short loc_405D30
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_405D68:				; CODE XREF: sub_405CD0+86j
		push	0
		push	3
		call	ds:?AfxThrowArchiveException@@YGXHPB_W@Z ; AfxThrowArchiveException(int,wchar_t	const *)
sub_405CD0	endp

; ---------------------------------------------------------------------------
		align 10h

loc_405D80:				; CODE XREF: sub_404C70+2EFp
					; sub_404C70+3CCp
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		mov	ecx, [esi+10h]
		push	ebx
		mov	ebx, [ebp+8]
		mov	dword ptr [ebp-4], 0FFFFFFFFh
		cmp	ecx, edi
		jb	loc_405F6B
		mov	eax, ecx
		sub	eax, edi
		cmp	eax, ebx
		jnb	short loc_405DA9
		mov	ebx, eax
		mov	[ebp+8], ebx

loc_405DA9:				; CODE XREF: .text:00405DA2j
		mov	edx, [ebp+0Ch]
		mov	edx, [edx+10h]
		cmp	edx, 0FFFFFFFFh
		jnb	short loc_405DB7
		mov	[ebp-4], edx

loc_405DB7:				; CODE XREF: .text:00405DB2j
		mov	edx, ecx
		sub	edx, ebx
		or	ebx, 0FFFFFFFFh
		sub	ebx, [ebp-4]
		cmp	ebx, edx
		ja	short loc_405DD0
		push	offset aStringTooLong ;	"string	too long"
		call	ds:?_Xlength_error@std@@YAXPBD@Z ; std::_Xlength_error(char const *)

loc_405DD0:				; CODE XREF: .text:00405DC3j
		add	edx, [ebp-4]
		sub	eax, [ebp+8]
		mov	[ebp-0Ch], edx
		mov	[ebp-8], eax
		cmp	ecx, edx
		jnb	short loc_405E16
		cmp	edx, 0FFFFFFFEh
		jbe	short loc_405DF0
		push	offset aStringTooLong ;	"string	too long"
		call	ds:?_Xlength_error@std@@YAXPBD@Z ; std::_Xlength_error(char const *)

loc_405DF0:				; CODE XREF: .text:00405DE3j
		mov	eax, [esi+14h]
		cmp	eax, edx
		jnb	short loc_405E01
		push	ecx
		push	edx
		push	esi
		call	sub_403540
		jmp	short loc_405E16
; ---------------------------------------------------------------------------

loc_405E01:				; CODE XREF: .text:00405DF5j
		test	edx, edx
		jnz	short loc_405E16
		mov	[esi+10h], edx
		cmp	eax, 10h
		jb	short loc_405E11
		mov	eax, [esi]
		jmp	short loc_405E13
; ---------------------------------------------------------------------------

loc_405E11:				; CODE XREF: .text:00405E0Bj
		mov	eax, esi

loc_405E13:				; CODE XREF: .text:00405E0Fj
		mov	byte ptr [eax],	0

loc_405E16:				; CODE XREF: .text:00405DDEj
					; .text:00405DFFj ...
		mov	ebx, [ebp+0Ch]
		mov	eax, [esi+14h]
		cmp	esi, ebx
		jz	short loc_405E88
		cmp	eax, 10h
		jb	short loc_405E29
		mov	ecx, [esi]
		jmp	short loc_405E2B
; ---------------------------------------------------------------------------

loc_405E29:				; CODE XREF: .text:00405E23j
		mov	ecx, esi

loc_405E2B:				; CODE XREF: .text:00405E27j
		cmp	eax, 10h
		jb	short loc_405E34
		mov	eax, [esi]
		jmp	short loc_405E36
; ---------------------------------------------------------------------------

loc_405E34:				; CODE XREF: .text:00405E2Ej
		mov	eax, esi

loc_405E36:				; CODE XREF: .text:00405E32j
		mov	edx, [ebp-8]
		add	ecx, edi
		add	ecx, [ebp+8]
		push	edx
		add	eax, edi
		add	eax, [ebp-4]
		push	ecx
		push	eax
		call	ds:memmove
		mov	eax, 10h
		add	esp, 0Ch
		cmp	[ebx+14h], eax
		jb	short loc_405E5B
		mov	ebx, [ebx]

loc_405E5B:				; CODE XREF: .text:00405E57j
		cmp	[esi+14h], eax
		jb	short loc_405E74
		mov	ecx, [ebp-4]
		mov	eax, [esi]
		push	ecx
		add	eax, edi
		push	ebx
		push	eax
		call	memcpy
		jmp	loc_405F41
; ---------------------------------------------------------------------------

loc_405E74:				; CODE XREF: .text:00405E5Ej
		mov	ecx, [ebp-4]
		push	ecx
		mov	eax, esi
		add	eax, edi
		push	ebx
		push	eax
		call	memcpy
		jmp	loc_405F41
; ---------------------------------------------------------------------------

loc_405E88:				; CODE XREF: .text:00405E1Ej
		mov	edx, [ebp+8]
		cmp	[ebp-4], edx
		ja	short loc_405EEE
		cmp	eax, 10h
		jb	short loc_405E99
		mov	ecx, [esi]
		jmp	short loc_405E9B
; ---------------------------------------------------------------------------

loc_405E99:				; CODE XREF: .text:00405E93j
		mov	ecx, esi

loc_405E9B:				; CODE XREF: .text:00405E97j
		cmp	eax, 10h
		jb	short loc_405EA4
		mov	eax, [esi]
		jmp	short loc_405EA6
; ---------------------------------------------------------------------------

loc_405EA4:				; CODE XREF: .text:00405E9Ej
		mov	eax, esi

loc_405EA6:				; CODE XREF: .text:00405EA2j
		mov	edx, [ebp-4]
		mov	ebx, ds:memmove
		push	edx
		push	ecx
		add	eax, edi
		push	eax
		call	ebx ; memmove
		mov	eax, [esi+14h]
		add	esp, 0Ch
		cmp	eax, 10h
		jb	short loc_405EC5
		mov	ecx, [esi]
		jmp	short loc_405EC7
; ---------------------------------------------------------------------------

loc_405EC5:				; CODE XREF: .text:00405EBFj
		mov	ecx, esi

loc_405EC7:				; CODE XREF: .text:00405EC3j
		cmp	eax, 10h
		jb	short loc_405EDD
		mov	eax, [esi]
		mov	edx, [ebp-8]
		add	ecx, edi
		add	ecx, [ebp+8]
		add	eax, edi
		add	eax, [ebp-4]
		jmp	short loc_405F3C
; ---------------------------------------------------------------------------

loc_405EDD:				; CODE XREF: .text:00405ECAj
		mov	edx, [ebp-8]
		mov	eax, esi
		add	ecx, edi
		add	ecx, [ebp+8]
		add	eax, edi
		add	eax, [ebp-4]
		jmp	short loc_405F3C
; ---------------------------------------------------------------------------

loc_405EEE:				; CODE XREF: .text:00405E8Ej
		cmp	eax, 10h
		jb	short loc_405EF7
		mov	ecx, [esi]
		jmp	short loc_405EF9
; ---------------------------------------------------------------------------

loc_405EF7:				; CODE XREF: .text:00405EF1j
		mov	ecx, esi

loc_405EF9:				; CODE XREF: .text:00405EF5j
		cmp	eax, 10h
		jb	short loc_405F02
		mov	eax, [esi]
		jmp	short loc_405F04
; ---------------------------------------------------------------------------

loc_405F02:				; CODE XREF: .text:00405EFCj
		mov	eax, esi

loc_405F04:				; CODE XREF: .text:00405F00j
		mov	ebx, [ebp-8]
		add	ecx, edi
		push	ebx
		mov	ebx, ds:memmove
		add	eax, edi
		add	eax, [ebp-4]
		add	ecx, edx
		push	ecx
		push	eax
		call	ebx ; memmove
		mov	eax, [esi+14h]
		add	esp, 0Ch
		cmp	eax, 10h
		jb	short loc_405F2A
		mov	ecx, [esi]
		jmp	short loc_405F2C
; ---------------------------------------------------------------------------

loc_405F2A:				; CODE XREF: .text:00405F24j
		mov	ecx, esi

loc_405F2C:				; CODE XREF: .text:00405F28j
		cmp	eax, 10h
		jb	short loc_405F35
		mov	eax, [esi]
		jmp	short loc_405F37
; ---------------------------------------------------------------------------

loc_405F35:				; CODE XREF: .text:00405F2Fj
		mov	eax, esi

loc_405F37:				; CODE XREF: .text:00405F33j
		mov	edx, [ebp-4]
		add	eax, edi

loc_405F3C:				; CODE XREF: .text:00405EDBj
					; .text:00405EECj
		push	edx
		push	ecx
		push	eax
		call	ebx ; memmove

loc_405F41:				; CODE XREF: .text:00405E6Fj
					; .text:00405E83j
		mov	ecx, [ebp-0Ch]
		add	esp, 0Ch
		cmp	dword ptr [esi+14h], 10h
		mov	[esi+10h], ecx
		pop	ebx
		jb	short loc_405F5F
		mov	eax, [esi]
		mov	byte ptr [eax+ecx], 0
		mov	eax, esi
		mov	esp, ebp
		pop	ebp
		retn	8
; ---------------------------------------------------------------------------

loc_405F5F:				; CODE XREF: .text:00405F4Fj
		mov	eax, esi
		mov	byte ptr [eax+ecx], 0
		mov	esp, ebp
		pop	ebp
		retn	8
; ---------------------------------------------------------------------------

loc_405F6B:				; CODE XREF: .text:00405D96j
		push	offset aInvalidStringP ; "invalid string position"
		call	ds:?_Xout_of_range@std@@YAXPBD@Z ; std::_Xout_of_range(char const *)
; ---------------------------------------------------------------------------
		db 0Ah dup(0CCh)
; [00000003 BYTES: COLLAPSED FUNCTION nullsub_2. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: noreturn

sub_405F90	proc near		; CODE XREF: sub_4055A0+B9p
					; sub_405670+A4p
		call	ds:GetLastError
		test	eax, eax
		jle	short loc_405FA4
		and	eax, 0FFFFh
		or	eax, 80070000h

loc_405FA4:				; CODE XREF: sub_405F90+8j
		push	eax
		call	sub_405FC0
sub_405F90	endp

; ---------------------------------------------------------------------------
		align 10h
; [00000006 BYTES: COLLAPSED FUNCTION AfxTryCleanup(void). PRESS KEYPAD	CTRL-"+" TO EXPAND]
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: noreturn bp-based	frame

sub_405FC0	proc near		; CODE XREF: sub_405A40+11p
					; sub_405A40+22p ...

arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+arg_0]
		cmp	eax, 8007000Eh
		jnz	short loc_405FD3
		call	ds:?AfxThrowMemoryException@@YGXXZ ; AfxThrowMemoryException(void)
; ---------------------------------------------------------------------------

loc_405FD3:				; CODE XREF: sub_405FC0+Bj
		push	eax
		call	ds:?AfxThrowOleException@@YGXJ@Z ; AfxThrowOleException(long)
sub_405FC0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_405FE0	proc near		; CODE XREF: sub_405240+77p

puLen		= dword	ptr -20h
var_1C		= dword	ptr -1Ch
lpBuffer	= dword	ptr -18h
dwHandle	= dword	ptr -14h
lptstrFilename	= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h
arg_C		= dword	ptr  14h

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset sub_40A272
		mov	eax, large fs:0
		push	eax
		sub	esp, 14h
		push	ebx
		push	esi
		push	edi
		mov	eax, ___security_cookie
		xor	eax, ebp
		push	eax
		lea	eax, [ebp+var_C]
		mov	large fs:0, eax
		push	0FFFFFFFFh	; samDesired
		push	80000002h	; hKey
		push	offset aExepath	; "exepath"
		xor	esi, esi
		lea	eax, [ebp+lptstrFilename]
		push	1		; int
		push	eax		; int
		mov	[ebp+dwHandle],	esi
		mov	[ebp+lpBuffer],	esi
		mov	[ebp+puLen], esi
		call	sub_4012C0
		add	esp, 14h
		mov	[ebp+var_4], esi
		mov	ecx, [ebp+lptstrFilename]
		cmp	[ecx-0Ch], esi
		jnz	short loc_406069
		push	0FFFFFFFFh	; samDesired
		push	80000001h	; hKey
		push	offset aExepath	; "exepath"
		lea	edx, [ebp+var_1C]
		push	1		; int
		push	edx		; int
		call	sub_4012C0
		add	esp, 14h
		push	eax
		lea	ecx, [ebp+lptstrFilename]
		mov	byte ptr [ebp+var_4], 1
		call	ds:??4?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAEAAV01@ABV01@@Z ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::operator=(ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>> const	&)
		lea	ecx, [ebp+var_1C]
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)

loc_406069:				; CODE XREF: sub_405FE0+56j
		mov	ecx, [ebp+lptstrFilename]
		lea	eax, [ebp+dwHandle]
		push	eax		; lpdwHandle
		push	ecx		; lptstrFilename
		call	ds:GetFileVersionInfoSizeW
		mov	edi, eax
		cmp	edi, esi
		jz	short loc_4060F7
		push	edi		; dwBytes
		push	2		; uFlags
		call	ds:GlobalAlloc
		mov	ebx, eax
		push	ebx		; hMem
		call	ds:GlobalLock
		mov	edx, [ebp+dwHandle]
		mov	esi, eax
		mov	eax, [ebp+lptstrFilename]
		push	esi		; lpData
		push	edi		; dwLen
		push	edx		; dwHandle
		push	eax		; lptstrFilename
		call	ds:GetFileVersionInfoW
		lea	ecx, [ebp+puLen]
		push	ecx		; puLen
		lea	edx, [ebp+lpBuffer]
		push	edx		; lplpBuffer
		push	offset SubBlock	; "\\"
		push	esi		; pBlock
		call	ds:VerQueryValueW
		test	eax, eax
		jz	short loc_4060E9
		mov	eax, [ebp+lpBuffer]
		movzx	ecx, word ptr [eax+0Ah]
		mov	edx, [ebp+arg_0]
		mov	[edx], ecx
		mov	ecx, [eax+8]
		mov	edx, [ebp+arg_4]
		and	ecx, 0FFFFh
		mov	[edx], ecx
		movzx	ecx, word ptr [eax+0Eh]
		mov	edx, [ebp+arg_8]
		mov	[edx], ecx
		mov	eax, [eax+0Ch]
		mov	ecx, [ebp+arg_C]
		and	eax, 0FFFFh
		mov	[ecx], eax

loc_4060E9:				; CODE XREF: sub_405FE0+D7j
		push	ebx		; hMem
		call	ds:GlobalUnlock
		push	ebx		; hMem
		call	ds:GlobalFree

loc_4060F7:				; CODE XREF: sub_405FE0+9Bj
		lea	ecx, [ebp+lptstrFilename]
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		mov	ecx, [ebp+var_C]
		mov	large fs:0, ecx
		pop	ecx
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	10h
sub_405FE0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __usercall sub_406120@<eax>(DWORD	dwDataLen@<ecx>, int@<edx>, int)
sub_406120	proc near		; CODE XREF: sub_406250+67p
					; sub_4062E0+183p

var_30		= dword	ptr -30h
var_2C		= dword	ptr -2Ch
var_28		= byte ptr -28h
var_20		= byte ptr -20h
Dst		= word ptr -1Ch
var_14		= dword	ptr -14h
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4
arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset sub_409F4B
		mov	eax, large fs:0
		push	eax
		sub	esp, 28h
		mov	eax, ___security_cookie
		xor	eax, ebp
		mov	[ebp+var_14], eax
		push	ebx
		push	esi
		push	edi
		push	eax
		lea	eax, [ebp+var_C]
		mov	large fs:0, eax
		mov	edi, ecx
		mov	eax, [ebp+arg_0]
		mov	[ebp+var_30], eax
		mov	eax, 1
		mov	esi, edx
		mov	[ebp+var_2C], 0
		mov	cl, [esi]
		cmp	edi, eax
		jle	short loc_40617B

loc_406167:				; CODE XREF: sub_406120+4Fj
		cmp	[esi+eax], cl
		jnz	short loc_406173
		inc	eax
		cmp	eax, edi
		jl	short loc_406167
		jmp	short loc_40617B
; ---------------------------------------------------------------------------

loc_406173:				; CODE XREF: sub_406120+4Aj
		mov	dl, [esi+eax]
		mov	[esi], dl
		mov	[esi+eax], cl

loc_40617B:				; CODE XREF: sub_406120+45j
					; sub_406120+51j
		push	8003h		; Algid
		lea	ecx, [ebp+var_28]
		call	sub_4076A0
		push	edi		; dwDataLen
		push	esi		; int
		lea	ecx, [ebp+var_28]
		mov	[ebp+var_4], 1
		call	sub_407570
		lea	ecx, [ebp+var_28]
		call	sub_4074F0
		mov	edi, eax
		push	edi		; Size
		call	ds:malloc
		add	esp, 4
		mov	ebx, eax
		push	edi		; pdwDataLen
		push	ebx		; pbData
		lea	ecx, [ebp+var_28]
		call	sub_407530
		lea	ecx, [ebp+var_20]
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		xor	esi, esi
		mov	byte ptr [ebp+var_4], 2
		test	edi, edi
		jle	short loc_4061FB
		lea	esp, [esp+0]

loc_4061D0:				; CODE XREF: sub_406120+D9j
		movzx	eax, byte ptr [esi+ebx]
		push	eax
		push	offset asc_40BF88 ; "%X"
		lea	ecx, [ebp+Dst]
		push	3		; SizeInWords
		push	ecx		; Dst
		call	ds:swprintf_s
		add	esp, 10h
		lea	edx, [ebp+Dst]
		push	edx
		lea	ecx, [ebp+var_20]
		call	ds:?Append@?$CSimpleStringT@_W$00@ATL@@QAEXPB_W@Z ; ATL::CSimpleStringT<wchar_t,1>::Append(wchar_t const *)
		inc	esi
		cmp	esi, edi
		jl	short loc_4061D0

loc_4061FB:				; CODE XREF: sub_406120+AAj
		push	ebx		; Memory
		call	ds:free
		mov	esi, [ebp+var_30]
		add	esp, 4
		lea	eax, [ebp+var_20]
		push	eax
		mov	ecx, esi
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@ABV01@@Z ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>	const &)
		lea	ecx, [ebp+var_20]
		mov	[ebp+var_2C], 1
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		lea	ecx, [ebp+var_28]
		mov	byte ptr [ebp+var_4], 0
		call	sub_4076D0
		mov	eax, esi
		mov	ecx, [ebp+var_C]
		mov	large fs:0, ecx
		pop	ecx
		pop	edi
		pop	esi
		pop	ebx
		mov	ecx, [ebp+var_14]
		xor	ecx, ebp
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	esp, ebp
		pop	ebp
		retn
sub_406120	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_406250	proc near		; CODE XREF: sub_4064C0+4Ap

var_1C		= dword	ptr -1Ch
var_18		= dword	ptr -18h
var_14		= dword	ptr -14h
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4
arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		and	esp, 0FFFFFFF8h
		sub	esp, 20h
		mov	eax, ___security_cookie
		xor	eax, esp
		mov	[esp+20h+var_4], eax
		mov	eax, [ebp+arg_0]
		mov	[esp+20h+var_1C], eax
		xor	eax, eax
		mov	[esp+20h+var_18], eax
		mov	[esp+20h+var_18], eax
		mov	[esp+20h+var_C], eax
		xor	ecx, ecx
		push	ebx
		mov	eax, 1
		cpuid
		push	esi
		lea	esi, [esp+28h+var_18]
		mov	[esi], eax
		mov	[esi+4], ebx
		mov	[esi+8], ecx
		mov	[esi+0Ch], edx
		mov	edx, [esp+28h+var_C]
		xor	ecx, ecx
		or	ecx, [esp+28h+var_18]
		xor	esi, esi
		or	edx, esi
		mov	esi, [esp+28h+var_1C]
		mov	[esp+28h+var_18], ecx
		mov	[esp+28h+var_14], edx
		push	esi		; int
		mov	ecx, 8		; dwDataLen
		lea	edx, [esp+2Ch+var_18] ;	int
		call	sub_406120
		mov	ecx, [esp+2Ch+var_4]
		add	esp, 4
		mov	eax, esi
		pop	esi
		pop	ebx
		xor	ecx, esp
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	esp, ebp
		pop	ebp
		retn
sub_406250	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_4062E0	proc near		; CODE XREF: sub_4064C0+33p

peUse		= dword	ptr -2Ch
var_28		= dword	ptr -28h
pcbBuffer	= dword	ptr -24h
var_20		= dword	ptr -20h
var_1C		= dword	ptr -1Ch
var_18		= dword	ptr -18h
cchReferencedDomainName= dword ptr -14h
cbSid		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4
arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset __ehhandler$?_RunAndWait@_StructuredTaskCollection@details@Concurrency@@QAG?AW4_TaskCollectionStatus@23@PAV_UnrealizedChore@23@@Z_0
		mov	eax, large fs:0
		push	eax
		sub	esp, 20h
		push	ebx
		push	esi
		push	edi
		mov	eax, ___security_cookie
		xor	eax, ebp
		push	eax
		lea	eax, [ebp+var_C]
		mov	large fs:0, eax
		mov	edi, ds:malloc
		xor	esi, esi
		mov	eax, 20h
		push	200h		; Size
		mov	[ebp+var_28], esi
		mov	[ebp+cbSid], esi
		mov	[ebp+var_18], eax
		mov	[ebp+cchReferencedDomainName], esi
		mov	[ebp+var_1C], eax
		mov	[ebp+pcbBuffer], 100h
		call	edi ; malloc
		mov	ebx, eax
		add	esp, 4
		mov	[ebp+var_28], ebx
		cmp	ebx, esi
		jnz	short loc_406362

loc_40633E:				; CODE XREF: sub_4062E0+98j
					; sub_4062E0+BEj
		mov	esi, [ebp+arg_0]
		push	offset dword_40B998
		mov	ecx, esi
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@PB_W@Z ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(wchar_t const *)
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
; ---------------------------------------------------------------------------

loc_406362:				; CODE XREF: sub_4062E0+5Cj
		lea	eax, [ebp+pcbBuffer]
		push	eax		; pcbBuffer
		push	ebx		; lpBuffer
		call	ds:GetUserNameW
		push	20h		; Size
		call	edi ; malloc
		mov	esi, eax
		add	esp, 4
		test	esi, esi
		jz	short loc_40633E
		xor	eax, eax
		mov	[esi], eax
		mov	[esi+4], eax
		mov	[esi+8], eax
		mov	[esi+0Ch], eax
		mov	[esi+10h], eax
		mov	[esi+14h], eax
		mov	[esi+18h], eax
		push	40h		; Size
		mov	[esi+1Ch], eax
		call	edi ; malloc
		mov	edi, eax
		add	esp, 4
		test	edi, edi
		jz	short loc_40633E
		push	40h		; Size
		push	0		; Val
		push	edi		; Dst
		call	memset

loc_4063AA:				; CODE XREF: sub_4062E0+175j
		add	esp, 0Ch
		lea	ecx, [ecx+0]

loc_4063B0:				; CODE XREF: sub_4062E0+146j
		mov	ecx, [ebp+var_18]
		mov	edx, [ebp+var_1C]
		lea	eax, [ebp+peUse]
		push	eax		; peUse
		mov	[ebp+cbSid], ecx
		lea	ecx, [ebp+cchReferencedDomainName]
		push	ecx		; cchReferencedDomainName
		push	edi		; ReferencedDomainName
		mov	[ebp+cchReferencedDomainName], edx
		lea	edx, [ebp+cbSid]
		push	edx		; cbSid
		push	esi		; Sid
		push	ebx		; lpAccountName
		push	0		; lpSystemName
		call	ds:LookupAccountNameW
		test	eax, eax
		jz	short loc_4063E2
		push	esi		; pSid
		call	ds:IsValidSid
		test	eax, eax
		jnz	short loc_40645A

loc_4063E2:				; CODE XREF: sub_4062E0+F5j
		call	ds:GetLastError
		cmp	eax, 7Ah
		jnz	short loc_40645A
		mov	eax, [ebp+var_18]
		cmp	[ebp+cbSid], eax
		jbe	short loc_406420
		push	esi		; pSid
		call	ds:FreeSid
		mov	ecx, [ebp+cbSid]
		push	ecx
		call	ds:__imp_??_U@YAPAXI@Z ; operator new[](uint)
		mov	edx, [ebp+cbSid]
		add	esp, 4
		push	edx		; Size
		mov	esi, eax
		push	0		; Val
		push	esi		; Dst
		call	memset
		mov	eax, [ebp+cbSid]
		add	esp, 0Ch
		mov	[ebp+var_18], eax

loc_406420:				; CODE XREF: sub_4062E0+113j
		mov	ecx, [ebp+var_1C]
		cmp	[ebp+cchReferencedDomainName], ecx
		jbe	short loc_4063B0
		push	edi		; Memory
		call	ds:free
		mov	ebx, [ebp+cchReferencedDomainName]
		add	esp, 4
		add	ebx, ebx
		push	ebx		; Size
		call	ds:malloc
		add	esp, 4
		push	ebx		; Size
		mov	edi, eax
		push	0		; Val
		push	edi		; Dst
		call	memset
		mov	edx, [ebp+cchReferencedDomainName]
		mov	ebx, [ebp+var_28]
		mov	[ebp+var_1C], edx
		jmp	loc_4063AA
; ---------------------------------------------------------------------------

loc_40645A:				; CODE XREF: sub_4062E0+100j
					; sub_4062E0+10Bj
		mov	ecx, [ebp+cbSid] ; dwDataLen
		lea	eax, [ebp+var_20]
		push	eax		; int
		mov	edx, esi	; int
		call	sub_406120
		add	esp, 4
		mov	[ebp+var_4], 0
		push	edi		; Memory
		mov	edi, ds:free
		call	edi ; free
		add	esp, 4
		push	esi		; Memory
		call	edi ; free
		add	esp, 4
		push	ebx		; Memory
		call	edi ; free
		mov	esi, [ebp+arg_0]
		add	esp, 4
		lea	ecx, [ebp+var_20]
		push	ecx
		mov	ecx, esi
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@ABV01@@Z ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>	const &)
		lea	ecx, [ebp+var_20]
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
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
sub_4062E0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_4064C0	proc near		; CODE XREF: sub_403FF0+BDp
					; sub_4053D0+101p

var_14		= byte ptr -14h
var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4
arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset sub_40A243
		mov	eax, large fs:0
		push	eax
		sub	esp, 0Ch
		push	esi
		push	edi
		mov	eax, ___security_cookie
		xor	eax, ebp
		push	eax
		lea	eax, [ebp+var_C]
		mov	large fs:0, eax
		mov	esi, [ebp+arg_0]
		xor	edi, edi
		mov	[ebp+var_4], edi
		push	esi
		mov	[ebp+var_10], edi
		call	sub_4062E0
		add	esp, 4
		mov	[ebp+var_4], edi
		lea	eax, [ebp+var_14]
		mov	edi, 1
		push	eax
		mov	[ebp+var_10], edi
		call	sub_406250
		add	esp, 4
		push	eax
		mov	ecx, esi
		mov	[ebp+var_4], edi
		call	ds:?Append@?$CSimpleStringT@_W$00@ATL@@QAEXABV12@@Z ; ATL::CSimpleStringT<wchar_t,1>::Append(ATL::CSimpleStringT<wchar_t,1> const &)
		lea	ecx, [ebp+var_14]
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		mov	eax, esi
		mov	ecx, [ebp+var_C]
		mov	large fs:0, ecx
		pop	ecx
		pop	edi
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn
sub_4064C0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_406540	proc near		; CODE XREF: sub_409B0A+Cp
		xor	eax, eax
		retn
sub_406540	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_406550	proc near		; CODE XREF: sub_4038E0+8Dp

var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset sub_409C74
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
		mov	esi, ecx
		mov	[ebp+var_10], esi
		xor	ebx, ebx
		lea	ecx, [esi+1Ch]
		mov	[esi], ebx
		mov	[esi+4], ebx
		mov	[esi+10h], ebx
		mov	[esi+14h], ebx
		mov	[esi+18h], ebx
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		lea	ecx, [esi+20h]
		mov	[ebp+var_4], ebx
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		lea	ecx, [esi+28h]
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		push	ebx		; dwFlags
		push	ebx		; lpszProxyBypass
		push	ebx		; lpszProxy
		push	ebx		; dwAccessType
		push	offset szAgent	; "Mozilla/4.0 (compatible; MSIE 6.0;Windo"...
		mov	byte ptr [ebp+var_4], 2
		mov	[esi+2Ch], bl
		mov	[esi+30h], ebx
		mov	[esi+34h], ebx
		mov	[esi+38h], ebx
		mov	[esi+8], ebx
		mov	[esi+0Ch], ebx
		call	ds:InternetOpenW
		mov	[esi], eax
		cmp	eax, ebx
		jnz	short loc_4065FA
		mov	edi, dword_40F6AC
		push	14h
		push	offset aUtilitiesCapwi ; "Utilities\\capwininet.cpp"
		call	ds:GetLastError
		push	eax
		mov	eax, [edi+40h]
		push	40000001h
		push	offset aCannotInitiali ; "Cannot initialize WinInet functions."
		call	eax
		add	esp, 14h

loc_4065FA:				; CODE XREF: sub_406550+82j
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
sub_406550	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_406610	proc near		; CODE XREF: sub_403A20+81p
					; sub_409FCB+9j ...
		push	esi
		mov	esi, ecx
		mov	eax, [esi+34h]
		test	eax, eax
		jz	short loc_406639
		push	eax		; Memory
		call	ds:free
		add	esp, 4
		mov	dword ptr [esi+34h], 0
		mov	dword ptr [esi+38h], 0
		mov	dword ptr [esi+4], 0

loc_406639:				; CODE XREF: sub_406610+8j
		mov	eax, [esi]
		test	eax, eax
		jz	short loc_40664C
		push	eax		; hInternet
		call	ds:InternetCloseHandle
		mov	dword ptr [esi], 0

loc_40664C:				; CODE XREF: sub_406610+2Dj
		lea	ecx, [esi+28h]
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		lea	ecx, [esi+20h]
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		lea	ecx, [esi+1Ch]
		pop	esi
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_406610	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_406670	proc near		; CODE XREF: sub_404410+215p

arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		mov	eax, [ecx+38h]
		mov	edx, [ebp+arg_0]
		mov	[edx], eax
		cmp	dword ptr [ecx+38h], 0
		jbe	short loc_406688
		mov	eax, [ecx+34h]
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_406688:				; CODE XREF: sub_406670+Fj
		xor	eax, eax
		pop	ebp
		retn	4
sub_406670	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_406690	proc near		; CODE XREF: sub_406810+224p

var_4		= dword	ptr -4
arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		push	ecx
		mov	eax, [ecx+0Ch]
		push	esi
		mov	[ebp+var_4], 0
		cmp	eax, 9		; switch 10 cases
		ja	loc_4067A9	; jumptable 004066A8 default case
		jmp	ds:off_4067C4[eax*4] ; switch jump
; ---------------------------------------------------------------------------

loc_4066AF:				; CODE XREF: sub_406690+18j
					; DATA XREF: .text:off_4067C4o
		mov	esi, [ebp+arg_0] ; jumptable 004066A8 case 0
		push	offset aContentTypeApp ; "Content-Type:	application/x-www-form-ur"...
		mov	ecx, esi
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@PB_W@Z ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(wchar_t const *)
		mov	eax, esi
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_4066C8:				; CODE XREF: sub_406690+18j
					; DATA XREF: .text:off_4067C4o
		mov	esi, [ebp+arg_0] ; jumptable 004066A8 case 1
		push	offset aContentTypeA_0 ; "Content-Type:	application/pdf"
		mov	ecx, esi
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@PB_W@Z ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(wchar_t const *)
		mov	eax, esi
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_4066E1:				; CODE XREF: sub_406690+18j
					; DATA XREF: .text:off_4067C4o
		mov	esi, [ebp+arg_0] ; jumptable 004066A8 case 2
		push	offset aContentTypeA_1 ; "Content-Type:	application/vnd.fdf"
		mov	ecx, esi
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@PB_W@Z ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(wchar_t const *)
		mov	eax, esi
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_4066FA:				; CODE XREF: sub_406690+18j
					; DATA XREF: .text:off_4067C4o
		mov	esi, [ebp+arg_0] ; jumptable 004066A8 case 4
		push	offset aContentTypeA_2 ; "Content-Type:	application/xdp"
		mov	ecx, esi
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@PB_W@Z ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(wchar_t const *)
		mov	eax, esi
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_406713:				; CODE XREF: sub_406690+18j
					; DATA XREF: .text:off_4067C4o
		mov	esi, [ebp+arg_0] ; jumptable 004066A8 case 5
		push	offset aContentTypeA_3 ; "Content-Type:	application/xfd"
		mov	ecx, esi
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@PB_W@Z ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(wchar_t const *)
		mov	eax, esi
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_40672C:				; CODE XREF: sub_406690+18j
					; DATA XREF: .text:off_4067C4o
		mov	esi, [ebp+arg_0] ; jumptable 004066A8 case 6
		push	offset aContentTypeA_4 ; "Content-Type:	application/xml"
		mov	ecx, esi
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@PB_W@Z ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(wchar_t const *)
		mov	eax, esi
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_406745:				; CODE XREF: sub_406690+18j
					; DATA XREF: .text:off_4067C4o
		mov	esi, [ebp+arg_0] ; jumptable 004066A8 case 3
		push	offset aContentTypeA_5 ; "Content-Type:	application/timestamp-que"...
		mov	ecx, esi
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@PB_W@Z ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(wchar_t const *)
		mov	eax, esi
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_40675E:				; CODE XREF: sub_406690+18j
					; DATA XREF: .text:off_4067C4o
		mov	esi, [ebp+arg_0] ; jumptable 004066A8 case 7
		push	offset aContentTypeA_6 ; "Content-Type:	application/json"
		mov	ecx, esi
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@PB_W@Z ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(wchar_t const *)
		mov	eax, esi
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_406777:				; CODE XREF: sub_406690+18j
					; DATA XREF: .text:off_4067C4o
		mov	esi, [ebp+arg_0] ; jumptable 004066A8 case 8
		push	offset aContentTypeMul ; "Content-Type:	multipart/form-data"
		mov	ecx, esi
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@PB_W@Z ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(wchar_t const *)
		mov	eax, esi
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_406790:				; CODE XREF: sub_406690+18j
					; DATA XREF: .text:off_4067C4o
		mov	esi, [ebp+arg_0] ; jumptable 004066A8 case 9
		push	offset dword_40B998
		mov	ecx, esi
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@PB_W@Z ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(wchar_t const *)
		mov	eax, esi
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_4067A9:				; CODE XREF: sub_406690+12j
		mov	esi, [ebp+arg_0] ; jumptable 004066A8 default case
		push	offset aApplicationOct ; "application/octet-stream"
		mov	ecx, esi
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@PB_W@Z ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(wchar_t const *)
		mov	eax, esi
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn	4
sub_406690	endp

; ---------------------------------------------------------------------------
		align 4
off_4067C4	dd offset loc_4066AF	; DATA XREF: sub_406690+18r
		dd offset loc_4066C8	; jump table for switch	statement
		dd offset loc_4066E1
		dd offset loc_406745
		dd offset loc_4066FA
		dd offset loc_406713
		dd offset loc_40672C
		dd offset loc_40675E
		dd offset loc_406777
		dd offset loc_406790
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_4067F0	proc near		; CODE XREF: sub_4038E0+EBp
					; sub_404410+1DEp

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h

		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+arg_0]
		mov	edx, [ebp+arg_4]
		mov	[ecx+10h], eax
		mov	eax, [ebp+arg_8]
		mov	[ecx+14h], edx
		mov	[ecx+18h], eax
		pop	ebp
		retn	0Ch
sub_4067F0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_406810	proc near		; CODE XREF: sub_403CE0+1FAp
					; sub_403CE0+29Dp ...

lpszAcceptTypes	= dword	ptr -970h
var_96C		= dword	ptr -96Ch
dwBufferLength	= dword	ptr -968h
lpszUserName	= dword	ptr -964h
lpszPassword	= dword	ptr -960h
var_95C		= dword	ptr -95Ch
nServerPort	= word ptr -958h
dwFlags		= dword	ptr -954h
dwOptionalLength= dword	ptr -950h
var_94C		= dword	ptr -94Ch
lpString	= dword	ptr -948h
var_944		= dword	ptr -944h
var_940		= byte ptr -940h
lpszHeaders	= dword	ptr -93Ch
var_938		= byte ptr -938h
Buffer		= dword	ptr -934h
lpOptional	= dword	ptr -930h
var_92C		= byte ptr -92Ch
hConnect	= dword	ptr -928h
dwNumberOfBytesAvailable= dword	ptr -924h
hRequest	= dword	ptr -920h
dwHeadersLength	= dword	ptr -91Ch
var_915		= byte ptr -915h
Memory		= dword	ptr -914h
var_910		= byte ptr -910h
Dst		= byte ptr -810h
var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h
arg_C		= dword	ptr  14h
arg_10		= dword	ptr  18h

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset sub_409CCB
		mov	eax, large fs:0
		push	eax
		sub	esp, 964h
		mov	eax, ___security_cookie
		xor	eax, ebp
		mov	[ebp+var_10], eax
		push	ebx
		push	esi
		push	edi
		push	eax
		lea	eax, [ebp+var_C]
		mov	large fs:0, eax
		mov	eax, [ebp+arg_4]
		mov	edx, [ebp+arg_C]
		mov	edi, [ebp+arg_0]
		mov	ebx, ecx
		mov	ecx, [ebp+arg_8]
		mov	[ebp+lpString],	eax
		mov	eax, [ebp+arg_10]
		push	7F02h		; lpCursorName
		xor	esi, esi
		push	esi		; hInstance
		mov	[ebp+var_944], ecx
		mov	[ebp+lpszUserName], edx
		mov	[ebp+lpszPassword], eax
		mov	byte ptr [ebx+2Ch], 0
		call	ds:LoadCursorW
		push	eax		; hCursor
		call	ds:SetCursor
		lea	ecx, [ebp+var_940]
		mov	[ebp+var_94C], esi
		mov	[ebp+hRequest],	esi
		mov	[ebp+hConnect],	esi
		mov	[ebp+var_95C], esi
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		lea	ecx, [ebp+var_92C]
		mov	[ebp+var_4], esi
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		push	400h		; Size
		lea	ecx, [ebp+Dst]
		push	esi		; Val
		push	ecx		; Dst
		mov	dword ptr [ebp+nServerPort], esi
		mov	[ebp+lpszAcceptTypes], offset asc_40B660 ; "*/*"
		mov	[ebp+var_96C], esi
		mov	[ebp+dwFlags], 4400100h
		mov	[ebp+Buffer], 1F4h
		mov	[ebp+dwBufferLength], 4
		mov	[ebp+dwNumberOfBytesAvailable],	esi
		mov	[ebp+lpszHeaders], esi
		mov	[ebp+dwHeadersLength], esi
		mov	[ebp+lpOptional], esi
		mov	[ebp+dwOptionalLength],	esi
		call	memset
		add	esp, 0Ch
		lea	ecx, [ebp+var_938]
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		mov	byte ptr [ebp+var_4], 2
		mov	eax, offset aPost ; "POST"
		cmp	[ebx+8], esi
		jz	short loc_406939
		mov	eax, offset aGet ; "GET"

loc_406939:				; CODE XREF: sub_406810+122j
		push	eax
		lea	ecx, [ebp+var_938]
		call	ds:??4?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAEAAV01@PB_W@Z ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::operator=(wchar_t const *)
		mov	edx, [ebx+38h]
		mov	eax, [ebx+34h]
		push	edx		; Size
		push	esi		; Val
		push	eax		; Dst
		call	memset
		add	esp, 0Ch
		lea	ecx, [ebp+nServerPort]
		push	ecx
		lea	edx, [ebp+var_92C]
		push	edx
		lea	eax, [ebp+var_940]
		push	eax
		lea	ecx, [ebp+var_95C]
		push	ecx
		push	edi
		mov	[ebx+38h], esi
		call	?AfxParseURL@@YGHPB_WAAKAAV?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@2AAG@Z ; AfxParseURL(wchar_t const *,ulong &,ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>> &,ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>> &,ushort	&)
		test	eax, eax
		jz	loc_406E42
		cmp	dword ptr [ebx+8], 1
		jnz	loc_406A2B
		mov	edi, [ebp+var_944]
		cmp	edi, esi
		jbe	loc_406AAD
		push	offset dword_40B670
		lea	ecx, [ebp+var_92C]
		call	ds:??Y?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAEAAV01@PB_W@Z ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::operator+=(wchar_t const *)
		mov	eax, [ebp+lpString]
		push	3		; CodePage
		lea	edx, [ebp+var_910]
		push	eax		; lpString
		lea	ecx, [ebp+Memory] ; int
		mov	[ebp+Memory], edx
		call	sub_405670
		mov	ecx, [ebp+Memory]
		push	edi
		push	ecx
		lea	ecx, [ebp+hConnect]
		mov	byte ptr [ebp+var_4], 3
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@PB_WH@Z ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(wchar_t const *,int)
		mov	eax, [ebp+Memory]
		lea	edx, [ebp+var_910]
		mov	byte ptr [ebp+var_4], 5
		cmp	eax, edx
		jz	short loc_406A03
		push	eax		; Memory
		call	ds:free
		add	esp, 4

loc_406A03:				; CODE XREF: sub_406810+1E7j
		lea	eax, [ebp+hConnect]
		push	eax
		lea	ecx, [ebp+var_92C]
		call	ds:??Y?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAEAAV01@ABV?$CSimpleStringT@_W$00@1@@Z ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::operator+=(ATL::CSimpleStringT<wchar_t,1> const &)
		lea	ecx, [ebp+hConnect]
		mov	byte ptr [ebp+var_4], 2
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		jmp	loc_406AAD
; ---------------------------------------------------------------------------

loc_406A2B:				; CODE XREF: sub_406810+178j
		lea	ecx, [ebp+lpOptional]
		push	ecx
		mov	ecx, ebx
		call	sub_406690
		mov	ecx, eax
		call	ds:??B?$CSimpleStringT@_W$00@ATL@@QBEPB_WXZ ; ATL::CSimpleStringT<wchar_t,1>::operator wchar_t const *(void)
		lea	edx, [ebp+Dst]
		sub	edx, eax
		lea	esp, [esp+0]

loc_406A50:				; CODE XREF: sub_406810+24Dj
		movzx	ecx, word ptr [eax]
		mov	[edx+eax], cx
		add	eax, 2
		cmp	cx, si
		jnz	short loc_406A50
		lea	ecx, [ebp+lpOptional]
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		lea	edx, [ebp+Dst]
		mov	eax, edx
		mov	[ebp+lpszHeaders], edx
		lea	edx, [eax+2]
		lea	esp, [esp+0]

loc_406A80:				; CODE XREF: sub_406810+279j
		mov	cx, [eax]
		add	eax, 2
		cmp	cx, si
		jnz	short loc_406A80
		mov	ecx, [ebp+var_944]
		sub	eax, edx
		sar	eax, 1
		mov	[ebp+dwHeadersLength], eax
		mov	eax, [ebp+lpString]
		mov	[ebp+lpOptional], eax
		mov	[ebp+dwOptionalLength],	ecx

loc_406AAD:				; CODE XREF: sub_406810+186j
					; sub_406810+216j
		lea	ecx, [ebx+1Ch]
		call	ds:?IsEmpty@?$CSimpleStringT@_W$00@ATL@@QBE_NXZ	; ATL::CSimpleStringT<wchar_t,1>::IsEmpty(void)
		test	al, al
		jnz	loc_406B82
		lea	ecx, [ebx+1Ch]
		call	ds:?GetLength@?$CSimpleStringT@_W$00@ATL@@QBEHXZ ; ATL::CSimpleStringT<wchar_t,1>::GetLength(void)
		mov	ecx, [ebp+dwHeadersLength]
		mov	edx, 400h
		sub	edx, ecx
		cmp	eax, edx
		jnb	loc_406B82
		cmp	ecx, esi
		jbe	short loc_406B0F
		lea	eax, [ebp+Dst]
		add	eax, 0FFFFFFFEh
		lea	esp, [esp+0]

loc_406AF0:				; CODE XREF: sub_406810+2EAj
		mov	cx, [eax+2]
		add	eax, 2
		cmp	cx, si
		jnz	short loc_406AF0
		mov	ecx, ds:dword_40B668
		mov	dx, ds:word_40B66C
		mov	[eax], ecx
		mov	[eax+4], dx

loc_406B0F:				; CODE XREF: sub_406810+2CEj
		lea	ecx, [ebx+1Ch]
		call	ds:??B?$CSimpleStringT@_W$00@ATL@@QBEPB_WXZ ; ATL::CSimpleStringT<wchar_t,1>::operator wchar_t const *(void)
		mov	edx, eax
		lea	ebx, [ebx+0]

loc_406B20:				; CODE XREF: sub_406810+319j
		mov	cx, [eax]
		add	eax, 2
		cmp	cx, si
		jnz	short loc_406B20
		lea	edi, [ebp+Dst]
		sub	eax, edx
		add	edi, 0FFFFFFFEh

loc_406B36:				; CODE XREF: sub_406810+330j
		mov	cx, [edi+2]
		add	edi, 2
		cmp	cx, si
		jnz	short loc_406B36
		mov	ecx, eax
		shr	ecx, 2
		mov	esi, edx
		rep movsd
		mov	ecx, eax
		and	ecx, 3
		rep movsb
		lea	eax, [ebp+Dst]
		lea	ecx, [ebx+1Ch]
		mov	[ebp+lpszHeaders], eax
		call	ds:?GetLength@?$CSimpleStringT@_W$00@ATL@@QBEHXZ ; ATL::CSimpleStringT<wchar_t,1>::GetLength(void)
		mov	ecx, [ebp+dwHeadersLength]
		xor	edx, edx
		cmp	edx, ecx
		sbb	edx, edx
		and	edx, 2
		add	edx, ecx
		add	edx, eax
		mov	[ebp+dwHeadersLength], edx
		xor	esi, esi

loc_406B82:				; CODE XREF: sub_406810+2A8j
					; sub_406810+2C6j
		cmp	[ebp+var_95C], 100Bh
		jnz	short loc_406B98
		mov	[ebp+dwFlags], 4C03100h

loc_406B98:				; CODE XREF: sub_406810+37Cj
		mov	eax, [ebp+lpszPassword]
		mov	ecx, [ebp+lpszUserName]
		mov	edx, dword ptr [ebp+nServerPort]
		push	esi		; dwContext
		push	esi		; dwFlags
		push	3		; dwService
		push	eax		; lpszPassword
		push	ecx		; lpszUserName
		push	edx		; nServerPort
		lea	ecx, [ebp+var_940]
		call	ds:??B?$CSimpleStringT@_W$00@ATL@@QBEPB_WXZ ; ATL::CSimpleStringT<wchar_t,1>::operator wchar_t const *(void)
		push	eax		; lpszServerName
		mov	eax, [ebx]
		push	eax		; hInternet
		call	ds:InternetConnectW
		mov	[ebp+hConnect],	eax
		cmp	eax, esi
		jz	loc_406E42
		mov	ecx, [ebp+dwFlags]
		push	esi		; dwContext
		push	ecx		; dwFlags
		lea	edx, [ebp+lpszAcceptTypes]
		push	edx		; lplpszAcceptTypes
		push	esi		; lpszReferrer
		push	esi		; lpszVersion
		lea	ecx, [ebp+var_92C]
		call	ds:??B?$CSimpleStringT@_W$00@ATL@@QBEPB_WXZ ; ATL::CSimpleStringT<wchar_t,1>::operator wchar_t const *(void)
		push	eax		; lpszObjectName
		lea	ecx, [ebp+var_938]
		call	ds:??B?$CSimpleStringT@_W$00@ATL@@QBEPB_WXZ ; ATL::CSimpleStringT<wchar_t,1>::operator wchar_t const *(void)
		push	eax		; lpszVerb
		mov	eax, [ebp+hConnect]
		push	eax		; hConnect
		call	ds:HttpOpenRequestW
		mov	[ebp+hRequest],	eax
		cmp	eax, esi
		jz	loc_406E42
		cmp	[ebx+10h], esi
		lea	eax, [ebx+10h]
		jbe	short loc_406C57
		cmp	[ebx+14h], esi
		jbe	short loc_406C57
		cmp	[ebx+18h], esi
		jbe	short loc_406C57
		mov	ecx, [ebx]
		mov	edi, ds:InternetSetOptionW
		push	4		; dwBufferLength
		push	eax		; lpBuffer
		push	2		; dwOption
		push	ecx		; hInternet
		call	edi ; InternetSetOptionW
		mov	edx, [ebx]
		push	4		; dwBufferLength
		lea	eax, [ebx+14h]
		push	eax		; lpBuffer
		push	5		; dwOption
		push	edx		; hInternet
		call	edi ; InternetSetOptionW
		push	4		; dwBufferLength
		lea	eax, [ebx+18h]
		push	eax		; lpBuffer
		mov	eax, [ebx]
		push	6		; dwOption
		push	eax		; hInternet
		call	edi ; InternetSetOptionW

loc_406C57:				; CODE XREF: sub_406810+411j
					; sub_406810+416j ...
		mov	ecx, [ebp+dwOptionalLength]
		mov	edx, [ebp+lpOptional]
		mov	eax, [ebp+dwHeadersLength]
		push	ecx		; dwOptionalLength
		mov	ecx, [ebp+lpszHeaders]
		push	edx		; lpOptional
		mov	edx, [ebp+hRequest]
		push	eax		; dwHeadersLength
		push	ecx		; lpszHeaders
		push	edx		; hRequest
		call	ds:HttpSendRequestW
		test	eax, eax
		jz	loc_406E42
		mov	edx, [ebp+hRequest]
		mov	edi, ds:HttpQueryInfoW
		push	esi		; lpdwIndex
		lea	eax, [ebp+dwBufferLength]
		push	eax		; lpdwBufferLength
		lea	ecx, [ebp+Buffer]
		push	ecx		; lpBuffer
		push	20000013h	; dwInfoLevel
		push	edx		; hRequest
		call	edi ; HttpQueryInfoW
		test	eax, eax
		jz	loc_406E42
		cmp	[ebp+Buffer], 1F4h
		jnb	loc_406E42
		lea	esi, [ebx+20h]
		mov	ecx, esi
		call	ds:?IsEmpty@?$CSimpleStringT@_W$00@ATL@@QBE_NXZ	; ATL::CSimpleStringT<wchar_t,1>::IsEmpty(void)
		test	al, al
		jnz	loc_406D6B
		push	400h
		mov	ecx, esi
		call	ds:?GetBuffer@?$CSimpleStringT@_W$00@ATL@@QAEPA_WH@Z ; ATL::CSimpleStringT<wchar_t,1>::GetBuffer(int)
		mov	edx, [ebp+hRequest]
		push	0		; lpdwIndex
		lea	ecx, [ebp+dwHeadersLength]
		push	ecx		; lpdwBufferLength
		push	eax		; lpBuffer
		push	0FFFFh		; dwInfoLevel
		push	edx		; hRequest
		mov	[ebp+dwHeadersLength], 400h
		call	edi ; HttpQueryInfoW
		test	eax, eax
		jnz	short loc_406D52
		call	ds:GetLastError
		cmp	eax, 7Ah
		jnz	short loc_406D6B
		push	0FFFFFFFFh
		mov	ecx, esi
		call	ds:?ReleaseBuffer@?$CSimpleStringT@_W$00@ATL@@QAEXH@Z ;	ATL::CSimpleStringT<wchar_t,1>::ReleaseBuffer(int)
		mov	eax, [ebp+dwHeadersLength]
		push	eax
		mov	ecx, esi
		call	ds:?GetBuffer@?$CSimpleStringT@_W$00@ATL@@QAEPA_WH@Z ; ATL::CSimpleStringT<wchar_t,1>::GetBuffer(int)
		mov	edx, [ebp+hRequest]
		push	0		; lpdwIndex
		lea	ecx, [ebp+dwHeadersLength]
		push	ecx		; lpdwBufferLength
		push	eax		; lpBuffer
		push	0FFFFh		; dwInfoLevel
		push	edx		; hRequest
		call	edi ; HttpQueryInfoW
		test	eax, eax
		jz	short loc_406D6B
		mov	eax, [ebp+dwHeadersLength]
		push	eax
		jmp	short loc_406D59
; ---------------------------------------------------------------------------

loc_406D52:				; CODE XREF: sub_406810+4F7j
		mov	ecx, [ebp+dwHeadersLength]
		push	ecx

loc_406D59:				; CODE XREF: sub_406810+540j
		mov	ecx, esi
		call	ds:?ReleaseBuffer@?$CSimpleStringT@_W$00@ATL@@QAEXH@Z ;	ATL::CSimpleStringT<wchar_t,1>::ReleaseBuffer(int)
		push	esi
		lea	ecx, [ebx+28h]
		call	ds:??4?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAEAAV01@ABV01@@Z ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::operator=(ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>> const	&)

loc_406D6B:				; CODE XREF: sub_406810+4C0j
					; sub_406810+502j ...
		mov	[ebp+var_915], 1

loc_406D72:				; CODE XREF: sub_406810+616j
		mov	eax, [ebp+hRequest]
		push	0		; dwContext
		push	0		; dwFlags
		lea	edx, [ebp+dwNumberOfBytesAvailable]
		push	edx		; lpdwNumberOfBytesAvailable
		push	eax		; hFile
		call	ds:InternetQueryDataAvailable
		test	eax, eax
		jz	loc_406E40
		mov	esi, [ebx+38h]
		add	esi, [ebp+dwNumberOfBytesAvailable]
		cmp	esi, [ebx+4]
		jbe	short loc_406DE0
		mov	eax, [ebx+34h]
		push	esi		; NewSize
		test	eax, eax
		jnz	short loc_406DB3
		call	ds:malloc
		add	esp, 4
		jmp	short loc_406DBD
; ---------------------------------------------------------------------------

loc_406DB3:				; CODE XREF: sub_406810+596j
		push	eax		; Memory
		call	ds:realloc
		add	esp, 8

loc_406DBD:				; CODE XREF: sub_406810+5A1j
		mov	edi, eax
		test	edi, edi
		jz	short loc_406E40
		mov	eax, [ebp+dwNumberOfBytesAvailable]
		mov	ecx, [ebx+38h]
		push	eax		; Size
		add	ecx, edi
		push	0		; Val
		push	ecx		; Dst
		call	memset
		add	esp, 0Ch
		mov	[ebx+4], esi
		mov	[ebx+34h], edi

loc_406DE0:				; CODE XREF: sub_406810+58Ej
		mov	ecx, [ebx+38h]
		mov	eax, [ebp+dwNumberOfBytesAvailable]
		add	ecx, [ebx+34h]
		lea	edx, [ebp+dwNumberOfBytesAvailable]
		push	edx		; lpdwNumberOfBytesRead
		mov	edx, [ebp+hRequest]
		push	eax		; dwNumberOfBytesToRead
		push	ecx		; lpBuffer
		push	edx		; hFile
		call	ds:InternetReadFile
		test	eax, eax
		jnz	short loc_406E0C
		mov	[ebp+var_915], al

loc_406E0C:				; CODE XREF: sub_406810+5F4j
		mov	eax, [ebp+dwNumberOfBytesAvailable]
		test	eax, eax
		jnz	short loc_406E1C
		mov	[ebp+var_915], al

loc_406E1C:				; CODE XREF: sub_406810+604j
		add	[ebx+38h], eax
		cmp	[ebp+var_915], 0
		jnz	loc_406D72
		cmp	[ebp+Buffer], 12Ch
		sbb	eax, eax
		neg	eax
		mov	[ebp+var_94C], eax

loc_406E40:				; CODE XREF: sub_406810+57Cj
					; sub_406810+5B1j
		xor	esi, esi

loc_406E42:				; CODE XREF: sub_406810+16Ej
					; sub_406810+3BFj ...
		call	ds:GetLastError
		cmp	eax, 2EE2h
		jnz	short loc_406E53
		mov	byte ptr [ebx+2Ch], 1

loc_406E53:				; CODE XREF: sub_406810+63Dj
		mov	eax, [ebp+hConnect]
		mov	edi, ds:InternetCloseHandle
		cmp	eax, esi
		jz	short loc_406E66
		push	eax		; hInternet
		call	edi ; InternetCloseHandle

loc_406E66:				; CODE XREF: sub_406810+651j
		mov	eax, [ebp+hRequest]
		cmp	eax, esi
		jz	short loc_406E73
		push	eax		; hInternet
		call	edi ; InternetCloseHandle

loc_406E73:				; CODE XREF: sub_406810+65Ej
		push	7F00h		; lpCursorName
		push	esi		; hInstance
		call	ds:LoadCursorW
		push	eax		; hCursor
		call	ds:SetCursor
		lea	ecx, [ebp+var_938]
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		lea	ecx, [ebp+var_92C]
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		lea	ecx, [ebp+var_940]
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		mov	eax, [ebp+var_94C]
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
		retn	14h
sub_406810	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_406ED0	proc near		; CODE XREF: sub_407230+2Cp

var_1C		= dword	ptr -1Ch
var_18		= dword	ptr -18h
var_14		= dword	ptr -14h
var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset __ehhandler$?CloneAndReset@GlobalNode@details@Concurrency@@QAEXPAUSchedulerNode@23@@Z
		mov	eax, large fs:0
		push	eax
		sub	esp, 10h
		push	esi
		push	edi
		mov	eax, ___security_cookie
		xor	eax, ebp
		push	eax
		lea	eax, [ebp+var_C]
		mov	large fs:0, eax
		mov	esi, ecx
		xor	edi, edi
		push	8		; unsigned int
		mov	[ebp+var_18], edi
		mov	[ebp+var_14], edi
		mov	[ebp+var_10], edi
		call	??2@YAPAXI@Z	; operator new(uint)
		add	esp, 4
		mov	[ebp+var_1C], eax
		mov	[ebp+var_4], edi
		cmp	eax, edi
		jz	short loc_406F26
		push	400h
		mov	ecx, eax
		call	sub_4076E0
		jmp	short loc_406F28
; ---------------------------------------------------------------------------

loc_406F26:				; CODE XREF: sub_406ED0+46j
		xor	eax, eax

loc_406F28:				; CODE XREF: sub_406ED0+54j
		push	eax
		mov	[esi+8], eax
		lea	eax, [ebp+var_10]
		push	eax
		mov	eax, [esi]
		lea	ecx, [ebp+var_14]
		push	ecx
		lea	edx, [ebp+var_18]
		push	edx
		push	eax
		mov	[ebp+var_4], 0FFFFFFFFh
		call	sub_407A90
		add	esp, 14h
		mov	[esi+4], eax
		mov	ecx, [ebp+var_C]
		mov	large fs:0, ecx
		pop	ecx
		pop	edi
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn
sub_406ED0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_406F60	proc near		; CODE XREF: sub_404410+235p
					; sub_407290+B8p ...

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch

		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+arg_4]
		test	eax, eax
		jnz	short loc_406F71
		mov	eax, [ecx+4]
		test	eax, eax
		jz	short loc_406FEF

loc_406F71:				; CODE XREF: sub_406F60+8j
		mov	eax, [eax+8]
		test	eax, eax
		jz	short loc_406FEF
		mov	edx, [eax+10h]
		push	esi
		mov	esi, [ebp+arg_0]
		mov	ecx, esi
		push	ebx

loc_406F82:				; CODE XREF: sub_406F60+3Cj
		mov	bl, [ecx]
		cmp	bl, [edx]
		jnz	short loc_406FA2
		test	bl, bl
		jz	short loc_406F9E
		mov	bl, [ecx+1]
		cmp	bl, [edx+1]
		jnz	short loc_406FA2
		add	ecx, 2
		add	edx, 2
		test	bl, bl
		jnz	short loc_406F82

loc_406F9E:				; CODE XREF: sub_406F60+2Aj
		xor	ecx, ecx
		jmp	short loc_406FA7
; ---------------------------------------------------------------------------

loc_406FA2:				; CODE XREF: sub_406F60+26j
					; sub_406F60+32j
		sbb	ecx, ecx
		sbb	ecx, 0FFFFFFFFh

loc_406FA7:				; CODE XREF: sub_406F60+40j
		test	ecx, ecx
		jz	short loc_406FE9
		mov	eax, [eax+4]
		test	eax, eax
		jz	short loc_406FE7

loc_406FB2:				; CODE XREF: sub_406F60+85j
		mov	edx, [eax+10h]
		mov	ecx, esi

loc_406FB7:				; CODE XREF: sub_406F60+71j
		mov	bl, [ecx]
		cmp	bl, [edx]
		jnz	short loc_406FD7
		test	bl, bl
		jz	short loc_406FD3
		mov	bl, [ecx+1]
		cmp	bl, [edx+1]
		jnz	short loc_406FD7
		add	ecx, 2
		add	edx, 2
		test	bl, bl
		jnz	short loc_406FB7

loc_406FD3:				; CODE XREF: sub_406F60+5Fj
		xor	ecx, ecx
		jmp	short loc_406FDC
; ---------------------------------------------------------------------------

loc_406FD7:				; CODE XREF: sub_406F60+5Bj
					; sub_406F60+67j
		sbb	ecx, ecx
		sbb	ecx, 0FFFFFFFFh

loc_406FDC:				; CODE XREF: sub_406F60+75j
		test	ecx, ecx
		jz	short loc_406FE9
		mov	eax, [eax+4]
		test	eax, eax
		jnz	short loc_406FB2

loc_406FE7:				; CODE XREF: sub_406F60+50j
		xor	eax, eax

loc_406FE9:				; CODE XREF: sub_406F60+49j
					; sub_406F60+7Ej
		pop	ebx
		pop	esi
		pop	ebp
		retn	8
; ---------------------------------------------------------------------------

loc_406FEF:				; CODE XREF: sub_406F60+Fj
					; sub_406F60+16j
		xor	eax, eax
		pop	ebp
		retn	8
sub_406F60	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __usercall sub_407000@<eax>(int cchWideChar@<ecx>, int, LPCSTR lpMultiByteStr)
sub_407000	proc near		; CODE XREF: sub_4070D0+37p
					; sub_407180+42p

var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4
arg_0		= dword	ptr  8
lpMultiByteStr	= dword	ptr  0Ch

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset sub_409D4A
		mov	eax, large fs:0
		push	eax
		push	ecx		; cchWideChar
		push	ebx
		push	esi
		push	edi
		mov	eax, ___security_cookie
		xor	eax, ebp
		push	eax
		lea	eax, [ebp+var_C]
		mov	large fs:0, eax
		xor	esi, esi
		mov	[ebp+var_10], esi
		mov	edi, [ebp+arg_0]
		mov	ecx, edi
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		mov	ebx, [ebp+lpMultiByteStr]
		mov	eax, ebx
		mov	[ebp+var_4], esi
		mov	[ebp+var_10], 1
		lea	edx, [eax+1]

loc_407048:				; CODE XREF: sub_407000+4Dj
		mov	cl, [eax]
		inc	eax
		test	cl, cl
		jnz	short loc_407048
		sub	eax, edx
		mov	esi, eax
		push	esi
		push	esi
		mov	ecx, edi
		call	ds:?GetBuffer@?$CSimpleStringT@_W$00@ATL@@QAEPA_WH@Z ; ATL::CSimpleStringT<wchar_t,1>::GetBuffer(int)
		push	eax		; lpWideCharStr
		push	esi		; cbMultiByte
		push	ebx		; lpMultiByteStr
		push	0		; dwFlags
		push	0FDE9h		; CodePage
		call	ds:MultiByteToWideChar
		push	eax
		mov	ecx, edi
		call	ds:?ReleaseBuffer@?$CSimpleStringT@_W$00@ATL@@QAEXH@Z ;	ATL::CSimpleStringT<wchar_t,1>::ReleaseBuffer(int)
		mov	eax, edi
		mov	ecx, [ebp+var_C]
		mov	large fs:0, ecx
		pop	ecx
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
sub_407000	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_407090	proc near		; CODE XREF: sub_404410+32Ep
					; sub_404410+3E7p

arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+arg_0]
		test	eax, eax
		jnz	short loc_40709C
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_40709C:				; CODE XREF: sub_407090+8j
		mov	eax, [eax+4]
		pop	ebp
		retn
sub_407090	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_4070B0	proc near		; CODE XREF: sub_404410+255p
					; sub_404410+35Fp

arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+arg_0]
		test	eax, eax
		jnz	short loc_4070BC
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4070BC:				; CODE XREF: sub_4070B0+8j
		mov	eax, [eax+8]
		pop	ebp
		retn
sub_4070B0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __cdecl sub_4070D0(int cchWideChar, int)
sub_4070D0	proc near		; CODE XREF: sub_407440+18p
					; sub_407440+33p

var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4
cchWideChar	= dword	ptr  8
arg_4		= dword	ptr  0Ch

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset sub_409D79
		mov	eax, large fs:0
		push	eax
		mov	eax, ___security_cookie
		xor	eax, ebp
		push	eax
		lea	eax, [ebp+var_C]
		mov	large fs:0, eax
		mov	eax, [ebp+cchWideChar]
		test	eax, eax
		jz	short loc_407142
		cmp	dword ptr [eax+18h], 3
		jnz	short loc_407142
		mov	eax, [eax+14h]
		push	eax		; lpMultiByteStr
		lea	ecx, [ebp+cchWideChar] ; cchWideChar
		push	ecx		; int
		call	sub_407000
		add	esp, 8
		mov	ecx, eax
		mov	[ebp+var_4], 0
		call	ds:??B?$CSimpleStringT@_W$00@ATL@@QBEPB_WXZ ; ATL::CSimpleStringT<wchar_t,1>::operator wchar_t const *(void)
		mov	ecx, [ebp+arg_4]
		push	eax
		call	ds:?SetString@?$CSimpleStringT@_W$00@ATL@@QAEXPB_W@Z ; ATL::CSimpleStringT<wchar_t,1>::SetString(wchar_t const *)
		lea	ecx, [ebp+cchWideChar]
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		mov	al, 1
		mov	ecx, [ebp+var_C]
		mov	large fs:0, ecx
		pop	ecx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_407142:				; CODE XREF: sub_4070D0+27j
					; sub_4070D0+2Dj
		xor	al, al
		mov	ecx, [ebp+var_C]
		mov	large fs:0, ecx
		pop	ecx
		mov	esp, ebp
		pop	ebp
		retn
sub_4070D0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_407160	proc near		; CODE XREF: sub_404410+390p

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch

		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+arg_0]
		test	eax, eax
		jz	short loc_40717C
		cmp	dword ptr [eax+18h], 4
		jnz	short loc_40717C
		mov	eax, [eax+14h]
		mov	ecx, [ebp+arg_4]
		mov	[ecx], eax
		mov	al, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_40717C:				; CODE XREF: sub_407160+8j
					; sub_407160+Ej
		xor	al, al
		pop	ebp
		retn
sub_407160	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __cdecl sub_407180(int cchWideChar, int)
sub_407180	proc near		; CODE XREF: sub_404410+37Fp

var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4
cchWideChar	= dword	ptr  8
arg_4		= dword	ptr  0Ch

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset sub_409D79
		mov	eax, large fs:0
		push	eax
		mov	eax, ___security_cookie
		xor	eax, ebp
		push	eax
		lea	eax, [ebp+var_C]
		mov	large fs:0, eax
		mov	eax, [ebp+cchWideChar]
		test	eax, eax
		jnz	short loc_4071BA
		xor	al, al
		mov	ecx, [ebp+var_C]
		mov	large fs:0, ecx
		pop	ecx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4071BA:				; CODE XREF: sub_407180+27j
		mov	eax, [eax+10h]
		push	eax		; lpMultiByteStr
		lea	ecx, [ebp+cchWideChar] ; cchWideChar
		push	ecx		; int
		call	sub_407000
		add	esp, 8
		mov	ecx, eax
		mov	[ebp+var_4], 0
		call	ds:??B?$CSimpleStringT@_W$00@ATL@@QBEPB_WXZ ; ATL::CSimpleStringT<wchar_t,1>::operator wchar_t const *(void)
		mov	ecx, [ebp+arg_4]
		push	eax
		call	ds:?SetString@?$CSimpleStringT@_W$00@ATL@@QAEXPB_W@Z ; ATL::CSimpleStringT<wchar_t,1>::SetString(wchar_t const *)
		lea	ecx, [ebp+cchWideChar]
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		mov	al, 1
		mov	ecx, [ebp+var_C]
		mov	large fs:0, ecx
		pop	ecx
		mov	esp, ebp
		pop	ebp
		retn
sub_407180	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_407200	proc near		; CODE XREF: sub_404410+4A5p
					; sub_40A3B2+3j
		push	esi
		mov	esi, ecx
		mov	eax, [esi]
		push	eax		; void *
		call	??_V@YAXPAX@Z	; operator delete[](void *)
		mov	esi, [esi+8]
		add	esp, 4
		test	esi, esi
		jz	short loc_407225
		mov	ecx, esi
		call	sub_407700
		push	esi		; void *
		call	??3@YAXPAX@Z	; operator delete(void *)
		add	esp, 4

loc_407225:				; CODE XREF: sub_407200+13j
		pop	esi
		retn
sub_407200	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_407230(char	*Source, size_t	Count)
sub_407230	proc near		; CODE XREF: sub_407270+10p

Source		= dword	ptr  8
Count		= dword	ptr  0Ch

		push	ebp
		mov	ebp, esp
		push	esi
		push	edi
		mov	edi, [ebp+Count]
		lea	eax, [edi+1]
		push	eax		; unsigned int
		mov	esi, ecx
		call	??_U@YAPAXI@Z	; operator new[](uint)
		mov	ecx, [ebp+Source]
		push	edi		; Count
		push	ecx		; Source
		push	eax		; Dest
		mov	[esi], eax
		call	ds:strncpy
		mov	edx, [esi]
		add	esp, 10h
		mov	ecx, esi
		mov	byte ptr [edi+edx], 0
		call	sub_406ED0
		pop	edi
		pop	esi
		pop	ebp
		retn	8
sub_407230	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_407270(char	*Source, size_t	Count)
sub_407270	proc near		; CODE XREF: sub_404410+222p

Source		= dword	ptr  8
Count		= dword	ptr  0Ch

		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+Count]
		push	esi
		mov	esi, ecx
		mov	ecx, [ebp+Source]
		push	eax		; Count
		push	ecx		; Source
		mov	ecx, esi
		call	sub_407230
		mov	eax, esi
		pop	esi
		pop	ebp
		retn	8
sub_407270	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_407290	proc near		; CODE XREF: sub_407440+Ep

var_124		= byte ptr -124h
var_120		= dword	ptr -120h
var_11C		= byte ptr -11Ch
Memory		= dword	ptr -118h
var_114		= byte ptr -114h
var_94		= dword	ptr -94h
var_90		= byte ptr -90h
var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4
arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset sub_409DB8
		mov	eax, large fs:0
		push	eax
		sub	esp, 118h
		mov	eax, ___security_cookie
		xor	eax, ebp
		mov	[ebp+var_10], eax
		push	ebx
		push	esi
		push	edi
		push	eax
		lea	eax, [ebp+var_C]
		mov	large fs:0, eax
		mov	ebx, ecx
		mov	[ebp+var_120], ebx
		mov	eax, [ebp+arg_0]
		push	eax
		lea	ecx, [ebp+var_11C]
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@PBD@Z ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(char	const *)
		mov	esi, [ebx+4]
		push	0
		push	offset SubBlock	; "\\"
		lea	ecx, [ebp+var_11C]
		mov	[ebp+var_4], 0
		call	ds:?Find@?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QBEHPB_WH@Z ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::Find(wchar_t	const *,int)
		mov	edi, eax
		test	edi, edi
		js	loc_4073B8
		lea	ecx, [ecx+0]

loc_407300:				; CODE XREF: sub_407290+11Cj
		push	edi
		lea	eax, [ebp+var_124]
		push	eax
		lea	ecx, [ebp+var_11C]
		call	ds:?Left@?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QBE?AV12@H@Z ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::Left(int)
		mov	ecx, eax
		mov	byte ptr [ebp+var_4], 1
		call	ds:??B?$CSimpleStringT@_W$00@ATL@@QBEPB_WXZ ; ATL::CSimpleStringT<wchar_t,1>::operator wchar_t const *(void)
		lea	ecx, [ebp+var_114]
		push	3		; CodePage
		mov	[ebp+Memory], ecx
		push	eax		; lpString
		lea	ecx, [ebp+Memory] ; int
		call	sub_4055A0
		mov	ebx, [ebp+Memory]
		mov	ecx, [ebp+var_120]
		push	esi
		push	ebx
		call	sub_406F60
		lea	edx, [ebp+var_114]
		mov	esi, eax
		cmp	ebx, edx
		jz	short loc_407363
		push	ebx		; Memory
		call	ds:free
		add	esp, 4

loc_407363:				; CODE XREF: sub_407290+C7j
		lea	ecx, [ebp+var_124]
		mov	byte ptr [ebp+var_4], 0
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		test	esi, esi
		jz	loc_40742F
		cmp	dword ptr [esi+18h], 1
		jnz	loc_40742F
		inc	edi
		push	edi
		push	0
		lea	ecx, [ebp+var_11C]
		call	ds:?Delete@?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAEHHH@Z ; ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::Delete(int,int)
		push	0
		push	offset SubBlock	; "\\"
		lea	ecx, [ebp+var_11C]
		call	ds:?Find@?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QBEHPB_WH@Z ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::Find(wchar_t	const *,int)
		mov	edi, eax
		test	edi, edi
		jns	loc_407300
		mov	ebx, [ebp+var_120]

loc_4073B8:				; CODE XREF: sub_407290+67j
		lea	ecx, [ebp+var_11C]
		call	ds:??B?$CSimpleStringT@_W$00@ATL@@QBEPB_WXZ ; ATL::CSimpleStringT<wchar_t,1>::operator wchar_t const *(void)
		lea	ecx, [ebp+var_90]
		push	3		; CodePage
		mov	[ebp+var_94], ecx
		push	eax		; lpString
		lea	ecx, [ebp+var_94] ; int
		call	sub_4055A0
		push	esi
		mov	esi, [ebp+var_94]
		push	esi
		mov	ecx, ebx
		call	sub_406F60
		lea	edx, [ebp+var_90]
		mov	edi, eax
		cmp	esi, edx
		jz	short loc_407403
		push	esi		; Memory
		call	ds:free
		add	esp, 4

loc_407403:				; CODE XREF: sub_407290+167j
		lea	ecx, [ebp+var_11C]
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		mov	eax, edi

loc_407411:				; CODE XREF: sub_407290+1ADj
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
		retn	4
; ---------------------------------------------------------------------------

loc_40742F:				; CODE XREF: sub_407290+E5j
					; sub_407290+EFj
		lea	ecx, [ebp+var_11C]
		call	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		xor	eax, eax
		jmp	short loc_407411
sub_407290	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_407440	proc near		; CODE XREF: sub_407480+52p

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h

		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+arg_8]
		test	eax, eax
		jnz	short loc_407464
		mov	eax, [ebp+arg_0]
		push	eax
		call	sub_407290
		mov	ecx, [ebp+arg_4]
		push	ecx		; int
		push	eax		; cchWideChar
		call	sub_4070D0
		add	esp, 8
		pop	ebp
		retn	0Ch
; ---------------------------------------------------------------------------

loc_407464:				; CODE XREF: sub_407440+8j
		mov	edx, [ebp+arg_0]
		push	eax
		push	edx
		call	sub_406F60
		mov	ecx, [ebp+arg_4]
		push	ecx		; int
		push	eax		; cchWideChar
		call	sub_4070D0
		add	esp, 8
		pop	ebp
		retn	0Ch
sub_407440	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_407480	proc near		; CODE XREF: sub_404410+27Bp
					; sub_404410+291p

var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset sub_40A05A
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
		mov	[ebp+var_10], 0
		mov	esi, [ebp+arg_0]
		mov	ecx, esi
		call	ds:??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
		mov	eax, [ebp+arg_8]
		mov	ecx, [ebp+arg_4]
		push	eax
		push	esi
		push	ecx
		mov	ecx, edi
		mov	[ebp+var_4], 0
		mov	[ebp+var_10], 1
		call	sub_407440
		mov	eax, esi
		mov	ecx, [ebp+var_C]
		mov	large fs:0, ecx
		pop	ecx
		pop	edi
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn	0Ch
sub_407480	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_4074F0	proc near		; CODE XREF: sub_406120+7Cp

pdwDataLen	= dword	ptr -8
pbData		= byte ptr -4

		push	ebp
		mov	ebp, esp
		sub	esp, 8
		push	0		; dwFlags
		lea	eax, [ebp+pdwDataLen]
		push	eax		; pdwDataLen
		mov	eax, [ecx+4]
		lea	edx, [ebp+pbData]
		push	edx		; pbData
		push	4		; dwParam
		push	eax		; hHash
		mov	dword ptr [ebp+pbData],	0
		mov	[ebp+pdwDataLen], 4
		call	ds:CryptGetHashParam
		test	eax, eax
		jnz	short loc_407525
		or	eax, 0FFFFFFFFh
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_407525:				; CODE XREF: sub_4074F0+2Cj
		mov	eax, dword ptr [ebp+pbData]
		mov	esp, ebp
		pop	ebp
		retn
sub_4074F0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_407530(BYTE	*pbData, DWORD pdwDataLen)
sub_407530	proc near		; CODE XREF: sub_406120+94p

pbData		= dword	ptr  8
pdwDataLen	= dword	ptr  0Ch

		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+pdwDataLen]
		mov	ecx, [ecx+4]
		push	0		; dwFlags
		lea	edx, [ebp+pdwDataLen]
		push	edx		; pdwDataLen
		mov	[ebp+pdwDataLen], eax
		mov	eax, [ebp+pbData]
		push	eax		; pbData
		push	2		; dwParam
		push	ecx		; hHash
		call	ds:CryptGetHashParam
		test	eax, eax
		jnz	short loc_40755A
		or	eax, 0FFFFFFFFh
		pop	ebp
		retn	8
; ---------------------------------------------------------------------------

loc_40755A:				; CODE XREF: sub_407530+21j
		mov	eax, [ebp+pdwDataLen]
		pop	ebp
		retn	8
sub_407530	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_407570(int,	DWORD dwDataLen)
sub_407570	proc near		; CODE XREF: sub_406120+74p

var_4		= dword	ptr -4
arg_0		= dword	ptr  8
dwDataLen	= dword	ptr  0Ch

		push	ebp
		mov	ebp, esp
		push	ecx
		mov	eax, [ebp+dwDataLen]
		push	ebx
		push	esi
		push	edi
		xor	edi, edi
		mov	[ebp+var_4], ecx
		mov	ebx, eax
		test	eax, eax
		jz	short loc_4075B5

loc_407585:				; CODE XREF: sub_407570+43j
		mov	esi, ebx
		cmp	ebx, 80000000h
		jbe	short loc_407594
		mov	esi, 80000000h

loc_407594:				; CODE XREF: sub_407570+1Dj
		mov	eax, [ebp+arg_0]
		mov	edx, [ebp+var_4]
		push	0		; dwFlags
		push	esi		; dwDataLen
		lea	ecx, [edi+eax]
		mov	eax, [edx+4]
		push	ecx		; pbData
		push	eax		; hHash
		call	ds:CryptHashData
		test	eax, eax
		jz	short loc_4075C0
		add	edi, esi
		sub	ebx, esi
		jnz	short loc_407585

loc_4075B5:				; CODE XREF: sub_407570+13j
		pop	edi
		pop	esi
		mov	al, 1
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	8
; ---------------------------------------------------------------------------

loc_4075C0:				; CODE XREF: sub_407570+3Dj
		pop	edi
		pop	esi
		xor	al, al
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	8
sub_407570	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __thiscall sub_4075D0(HCRYPTPROV *phProv,	ALG_ID Algid)
sub_4075D0	proc near		; CODE XREF: sub_4076A0+17p

Algid		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+Algid]
		push	ebx
		push	esi
		push	edi
		mov	esi, ecx
		cmp	eax, 8003h
		jz	short loc_4075EE
		mov	edi, 18h
		cmp	eax, 8004h
		jnz	short loc_4075F3

loc_4075EE:				; CODE XREF: sub_4075D0+10j
		mov	edi, 1

loc_4075F3:				; CODE XREF: sub_4075D0+1Cj
		mov	ebx, ds:CryptAcquireContextW
		push	0F0000000h	; dwFlags
		push	edi		; dwProvType
		push	0		; szProvider
		push	0		; szContainer
		push	esi		; phProv
		call	ebx ; CryptAcquireContextW
		test	eax, eax
		jnz	short loc_407641
		push	8		; dwFlags
		push	edi		; dwProvType
		push	eax		; szProvider
		push	offset szContainer ; "Nitro5Container"
		push	esi		; phProv
		call	ebx ; CryptAcquireContextW
		test	eax, eax
		jnz	short loc_407641
		call	ds:GetLastError
		cmp	eax, 8009000Fh
		jnz	short loc_407638
		push	0		; dwFlags
		push	edi		; dwProvType
		push	0		; szProvider
		push	offset szContainer ; "Nitro5Container"
		push	esi		; phProv
		call	ebx ; CryptAcquireContextW
		test	eax, eax
		jnz	short loc_407641

loc_407638:				; CODE XREF: sub_4075D0+55j
		pop	edi
		pop	esi
		xor	al, al
		pop	ebx
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_407641:				; CODE XREF: sub_4075D0+38j
					; sub_4075D0+48j ...
		mov	ecx, [ebp+Algid]
		mov	edx, [esi]
		lea	eax, [esi+4]
		push	eax		; phHash
		push	0		; dwFlags
		push	0		; hKey
		push	ecx		; Algid
		push	edx		; hProv
		call	ds:CryptCreateHash
		pop	edi
		test	eax, eax
		pop	esi
		setnz	al
		pop	ebx
		pop	ebp
		retn	4
sub_4075D0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_407670	proc near		; CODE XREF: sub_4076D0j
		push	esi
		mov	esi, ecx
		mov	eax, [esi+4]
		test	eax, eax
		jz	short loc_407688
		push	eax		; hHash
		call	ds:CryptDestroyHash
		mov	dword ptr [esi+4], 0

loc_407688:				; CODE XREF: sub_407670+8j
		mov	eax, [esi]
		test	eax, eax
		jz	short loc_40769D
		push	0		; dwFlags
		push	eax		; hProv
		call	ds:CryptReleaseContext
		mov	dword ptr [esi], 0

loc_40769D:				; CODE XREF: sub_407670+1Cj
		pop	esi
		retn
sub_407670	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_4076A0(ALG_ID Algid)
sub_4076A0	proc near		; CODE XREF: sub_406120+63p

Algid		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+Algid]
		push	esi
		mov	esi, ecx
		push	eax		; Algid
		mov	dword ptr [esi], 0
		mov	dword ptr [esi+4], 0
		call	sub_4075D0
		mov	eax, esi
		pop	esi
		pop	ebp
		retn	4
sub_4076A0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: thunk

sub_4076D0	proc near		; CODE XREF: sub_406120+10Bp
					; sub_409F20+3j
		jmp	sub_407670
sub_4076D0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_4076E0	proc near		; CODE XREF: sub_406ED0+4Fp

arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		mov	eax, ecx
		mov	ecx, [ebp+arg_0]
		mov	dword ptr [eax], 0
		mov	[eax+4], ecx
		pop	ebp
		retn	4
sub_4076E0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_407700	proc near		; CODE XREF: sub_407200+17p
		push	esi
		mov	esi, ecx
		cmp	dword ptr [esi], 0
		jz	short loc_407723
		push	ebx
		mov	ebx, ds:free
		push	edi

loc_407710:				; CODE XREF: sub_407700+1Fj
		mov	eax, [esi]
		mov	edi, [eax+0Ch]
		push	eax		; Memory
		call	ebx ; free
		add	esp, 4
		mov	[esi], edi
		test	edi, edi
		jnz	short loc_407710
		pop	edi
		pop	ebx

loc_407723:				; CODE XREF: sub_407700+6j
		pop	esi
		retn
sub_407700	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_407730	proc near		; CODE XREF: sub_407A30+8p

arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+arg_0]
		push	esi
		mov	esi, ecx
		mov	eax, [esi]
		test	eax, eax
		jz	short loc_407749
		mov	ecx, [eax+4]
		add	ecx, ebx
		cmp	ecx, [eax]
		jbe	short loc_40777A

loc_407749:				; CODE XREF: sub_407730+Ej
		lea	ecx, [ebx+10h]
		lea	eax, [esi+4]
		mov	[ebp+arg_0], ecx
		cmp	ecx, [eax]
		jb	short loc_407759
		lea	eax, [ebp+arg_0]

loc_407759:				; CODE XREF: sub_407730+24j
		push	edi
		mov	edi, [eax]
		push	edi		; Size
		call	ds:malloc
		mov	[eax], edi
		mov	dword ptr [eax+4], 10h
		mov	[eax+8], eax
		mov	edx, [esi]
		add	esp, 4
		mov	[eax+0Ch], edx
		mov	[esi], eax
		pop	edi

loc_40777A:				; CODE XREF: sub_407730+17j
		mov	ecx, [esi]
		mov	eax, [ecx+8]
		add	eax, [ecx+4]
		add	[ecx+4], ebx
		pop	esi
		pop	ebx
		pop	ebp
		retn	4
sub_407730	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_407790	proc near		; CODE XREF: sub_407A90+3B1p

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h

		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+arg_0]
		push	esi
		mov	esi, [ebp+arg_4]
		push	edi
		mov	edi, 1
		cmp	eax, esi
		jz	short loc_4077B6
		mov	cl, [eax]
		cmp	cl, 2Dh
		jnz	short loc_4077B0
		or	edi, 0FFFFFFFFh
		jmp	short loc_4077B5
; ---------------------------------------------------------------------------

loc_4077B0:				; CODE XREF: sub_407790+19j
		cmp	cl, 2Bh
		jnz	short loc_4077B6

loc_4077B5:				; CODE XREF: sub_407790+1Ej
		inc	eax

loc_4077B6:				; CODE XREF: sub_407790+12j
					; sub_407790+23j
		xor	ecx, ecx
		cmp	eax, esi
		jz	short loc_4077DB
		lea	esp, [esp+0]

loc_4077C0:				; CODE XREF: sub_407790+49j
		mov	dl, [eax]
		cmp	dl, 30h
		jl	short loc_4077DB
		cmp	dl, 39h
		jg	short loc_4077DB
		movsx	edx, dl
		inc	eax
		lea	ecx, [ecx+ecx*4]
		lea	ecx, [edx+ecx*2-30h]
		cmp	eax, esi
		jnz	short loc_4077C0

loc_4077DB:				; CODE XREF: sub_407790+2Aj
					; sub_407790+35j ...
		mov	edx, [ebp+arg_8]
		imul	ecx, edi
		pop	edi
		mov	[edx], ecx
		pop	esi
		pop	ebp
		retn
sub_407790	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_4077F0	proc near		; CODE XREF: sub_407A90+1BAp

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h

		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+arg_0]
		push	esi
		mov	esi, [ebp+arg_4]
		xor	edx, edx
		cmp	eax, esi
		jz	short loc_407840

loc_407800:				; CODE XREF: sub_4077F0+4Ej
		mov	cl, [eax]
		cmp	cl, 30h
		jl	short loc_407814
		cmp	cl, 39h
		jg	short loc_407814
		movsx	ecx, cl
		sub	ecx, 30h
		jmp	short loc_407836
; ---------------------------------------------------------------------------

loc_407814:				; CODE XREF: sub_4077F0+15j
					; sub_4077F0+1Aj
		cmp	cl, 61h
		jl	short loc_407826
		cmp	cl, 66h
		jg	short loc_407826
		movsx	ecx, cl
		sub	ecx, 57h
		jmp	short loc_407836
; ---------------------------------------------------------------------------

loc_407826:				; CODE XREF: sub_4077F0+27j
					; sub_4077F0+2Cj
		cmp	cl, 41h
		jl	short loc_407840
		cmp	cl, 46h
		jg	short loc_407840
		movsx	ecx, cl
		sub	ecx, 37h

loc_407836:				; CODE XREF: sub_4077F0+22j
					; sub_4077F0+34j
		shl	edx, 4
		inc	eax
		add	edx, ecx
		cmp	eax, esi
		jnz	short loc_407800

loc_407840:				; CODE XREF: sub_4077F0+Ej
					; sub_4077F0+39j ...
		mov	ecx, [ebp+arg_8]
		mov	[ecx], edx
		pop	esi
		pop	ebp
		retn
sub_4077F0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_407850	proc near		; CODE XREF: sub_407A90+3CDp

var_8		= dword	ptr -8
var_4		= dword	ptr -4
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h

		push	ebp
		mov	ebp, esp
		sub	esp, 8
		fld1
		mov	eax, [ebp+arg_0]
		push	ebx
		fstp	[ebp+var_4]
		push	esi
		mov	esi, [ebp+arg_4]
		cmp	eax, esi
		jz	short loc_40787F
		mov	cl, [eax]
		cmp	cl, 2Dh
		jnz	short loc_407879
		fld	ds:flt_40B6C0
		fstp	[ebp+var_4]
		jmp	short loc_40787E
; ---------------------------------------------------------------------------

loc_407879:				; CODE XREF: sub_407850+1Cj
		cmp	cl, 2Bh
		jnz	short loc_40787F

loc_40787E:				; CODE XREF: sub_407850+27j
		inc	eax

loc_40787F:				; CODE XREF: sub_407850+15j
					; sub_407850+2Cj
		fldz
		fstp	[ebp+arg_0]
		fld	ds:dbl_40B6B8
		cmp	eax, esi
		jz	short loc_407909

loc_40788E:				; CODE XREF: sub_407850+63j
		mov	cl, [eax]
		cmp	cl, 30h
		jl	short loc_4078B7
		cmp	cl, 39h
		jg	short loc_4078B7
		movsx	ecx, cl
		sub	ecx, 30h
		mov	[ebp+arg_4], ecx
		inc	eax
		fild	[ebp+arg_4]
		fld	[ebp+arg_0]
		fmul	st, st(2)
		faddp	st(1), st
		fstp	[ebp+arg_0]
		cmp	eax, esi
		jnz	short loc_40788E
		jmp	short loc_407909
; ---------------------------------------------------------------------------

loc_4078B7:				; CODE XREF: sub_407850+43j
					; sub_407850+48j
		cmp	eax, esi
		jz	short loc_407909
		cmp	byte ptr [eax],	2Eh
		jnz	short loc_407909
		fld	ds:flt_40B6B0
		inc	eax
		fstp	[ebp+arg_4]
		cmp	eax, esi
		jz	short loc_407909
		fld	ds:dbl_40B6A8

loc_4078D4:				; CODE XREF: sub_407850+B5j
		mov	cl, [eax]
		cmp	cl, 30h
		jl	short loc_407907
		cmp	cl, 39h
		jg	short loc_407907
		movsx	edx, cl
		sub	edx, 30h
		mov	[ebp+var_8], edx
		inc	eax
		fild	[ebp+var_8]
		fld	[ebp+arg_4]
		fld	st
		fmulp	st(2), st
		fld	[ebp+arg_0]
		faddp	st(2), st
		fxch	st(1)
		fstp	[ebp+arg_0]
		fmul	st, st(1)
		fstp	[ebp+arg_4]
		cmp	eax, esi
		jnz	short loc_4078D4

loc_407907:				; CODE XREF: sub_407850+89j
					; sub_407850+8Ej
		fstp	st

loc_407909:				; CODE XREF: sub_407850+3Cj
					; sub_407850+65j ...
		fld	[ebp+arg_0]
		xor	bl, bl
		fmul	[ebp+var_4]
		xor	ecx, ecx
		fstp	[ebp+arg_0]
		cmp	eax, esi
		jz	loc_407A18
		mov	dl, [eax]
		cmp	dl, 65h
		jz	short loc_40792E
		cmp	dl, 45h
		jnz	loc_407A18

loc_40792E:				; CODE XREF: sub_407850+D3j
		mov	dl, [eax+1]
		inc	eax
		cmp	dl, 2Dh
		jnz	short loc_40793B
		mov	bl, 1
		jmp	short loc_407940
; ---------------------------------------------------------------------------

loc_40793B:				; CODE XREF: sub_407850+E5j
		cmp	dl, 2Bh
		jnz	short loc_407941

loc_407940:				; CODE XREF: sub_407850+E9j
		inc	eax

loc_407941:				; CODE XREF: sub_407850+EEj
		cmp	eax, esi
		jz	loc_407A18

loc_407949:				; CODE XREF: sub_407850+112j
		mov	dl, [eax]
		cmp	dl, 30h
		jl	short loc_407964
		cmp	dl, 39h
		jg	short loc_407964
		movsx	edx, dl
		inc	eax
		lea	ecx, [ecx+ecx*4]
		lea	ecx, [edx+ecx*2-30h]
		cmp	eax, esi
		jnz	short loc_407949

loc_407964:				; CODE XREF: sub_407850+FEj
					; sub_407850+103j
		test	ecx, ecx
		jz	loc_407A18
		fld	ds:flt_40B6A0
		fstp	[ebp+arg_4]
		cmp	ecx, 1
		jle	short loc_4079E4
		lea	edx, [ecx-1]
		cmp	edx, 8
		jl	short loc_4079D3
		lea	edx, [ecx-9]
		shr	edx, 3
		inc	edx
		mov	esi, edx
		neg	esi
		lea	ecx, [ecx+esi*8]

loc_407990:				; CODE XREF: sub_407850+181j
		dec	edx
		fld	[ebp+arg_4]
		fmul	st, st(1)
		fstp	[ebp+arg_4]
		fld	[ebp+arg_4]
		fmul	st, st(1)
		fstp	[ebp+arg_4]
		fld	[ebp+arg_4]
		fmul	st, st(1)
		fstp	[ebp+arg_4]
		fld	[ebp+arg_4]
		fmul	st, st(1)
		fstp	[ebp+arg_4]
		fld	[ebp+arg_4]
		fmul	st, st(1)
		fstp	[ebp+arg_4]
		fld	[ebp+arg_4]
		fmul	st, st(1)
		fstp	[ebp+arg_4]
		fld	[ebp+arg_4]
		fmul	st, st(1)
		fstp	[ebp+arg_4]
		fld	[ebp+arg_4]
		fmul	st, st(1)
		fstp	[ebp+arg_4]
		jnz	short loc_407990

loc_4079D3:				; CODE XREF: sub_407850+130j
		cmp	ecx, 1
		jle	short loc_4079E4
		dec	ecx

loc_4079D9:				; CODE XREF: sub_407850+192j
		dec	ecx
		fld	[ebp+arg_4]
		fmul	st, st(1)
		fstp	[ebp+arg_4]
		jnz	short loc_4079D9

loc_4079E4:				; CODE XREF: sub_407850+128j
					; sub_407850+186j
		fstp	st
		test	bl, bl
		jz	short loc_407A01
		fld	[ebp+arg_0]
		mov	ecx, [ebp+arg_8]
		fdiv	[ebp+arg_4]
		pop	esi
		pop	ebx
		fstp	[ebp+arg_0]
		fld	[ebp+arg_0]
		fstp	dword ptr [ecx]
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_407A01:				; CODE XREF: sub_407850+198j
		fld	[ebp+arg_4]
		mov	ecx, [ebp+arg_8]
		fmul	[ebp+arg_0]
		pop	esi
		pop	ebx
		fstp	[ebp+arg_0]
		fld	[ebp+arg_0]
		fstp	dword ptr [ecx]
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_407A18:				; CODE XREF: sub_407850+C8j
					; sub_407850+D8j ...
		mov	ecx, [ebp+arg_8]
		fstp	st
		fld	[ebp+arg_0]
		pop	esi
		fstp	dword ptr [ecx]
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
sub_407850	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_407A30	proc near		; CODE XREF: sub_407A90+45p
					; sub_407A90+254p ...

arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		mov	ecx, [ebp+arg_0]
		push	1Ch
		call	sub_407730
		xor	ecx, ecx
		mov	[eax], ecx
		mov	[eax+4], ecx
		mov	[eax+8], ecx
		mov	[eax+0Ch], ecx
		mov	[eax+10h], ecx
		mov	[eax+14h], ecx
		mov	[eax+18h], ecx
		pop	ebp
		retn
sub_407A30	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_407A60	proc near		; CODE XREF: sub_407A90+72p
					; sub_407A90+275p ...

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch

		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+arg_0]
		mov	ecx, [ebp+arg_4]
		mov	[ecx], eax
		mov	edx, [eax+0Ch]
		test	edx, edx
		jz	short loc_407A7A
		mov	[edx+4], ecx
		mov	[eax+0Ch], ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_407A7A:				; CODE XREF: sub_407A60+10j
		mov	[eax+8], ecx
		mov	[eax+0Ch], ecx
		pop	ebp
		retn
sub_407A60	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_407A90	proc near		; CODE XREF: sub_406ED0+72p

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

		push	ebp
		mov	ebp, esp
		sub	esp, 18h
		push	ebx
		xor	eax, eax
		push	esi
		mov	esi, [ebp+arg_0]
		push	edi
		mov	[ebp+var_14], eax
		mov	[ebp+var_8], eax
		mov	[ebp+var_C], eax
		mov	[ebp+var_4], eax
		cmp	[esi], al
		jz	loc_408315

loc_407AB2:				; CODE XREF: sub_407A90+408j
		mov	al, [esi]
		movsx	ecx, al
		add	ecx, 0FFFFFFDEh	; switch 92 cases
		cmp	ecx, 5Bh
		ja	loc_4082C5	; jumptable 00407ACA default case
		movzx	ecx, ds:byte_408340[ecx]
		jmp	ds:off_408320[ecx*4] ; switch jump
; ---------------------------------------------------------------------------

loc_407AD1:				; CODE XREF: sub_407A90+3Aj
					; DATA XREF: .text:off_408320o
		mov	edx, [ebp+arg_10] ; jumptable 00407ACA cases 91,123
		push	edx
		call	sub_407A30
		mov	edi, eax
		mov	eax, [ebp+var_C]
		xor	ecx, ecx
		add	esp, 4
		mov	[edi+10h], eax
		cmp	byte ptr [esi],	7Bh
		mov	eax, [ebp+var_8]
		setnz	cl
		inc	esi
		mov	[ebp+var_C], 0
		inc	ecx
		mov	[edi+18h], ecx
		test	eax, eax
		jz	short loc_407B12
		push	edi
		push	eax
		call	sub_407A60
		add	esp, 8
		mov	[ebp+var_8], edi
		jmp	loc_407E80
; ---------------------------------------------------------------------------

loc_407B12:				; CODE XREF: sub_407A90+6Ej
		cmp	[ebp+var_14], 0
		jnz	loc_407EE9
		mov	[ebp+var_14], edi
		mov	[ebp+var_8], edi
		jmp	loc_407E80
; ---------------------------------------------------------------------------

loc_407B27:				; CODE XREF: sub_407A90+3Aj
					; DATA XREF: .text:off_408320o
		mov	ecx, [ebp+var_8] ; jumptable 00407ACA cases 93,125
		test	ecx, ecx
		jz	loc_407F2A
		xor	edx, edx
		cmp	al, 7Dh
		setnz	dl
		inc	edx
		cmp	[ecx+18h], edx
		jnz	loc_407F2A
		mov	eax, [ecx]
		inc	esi
		mov	[ebp+var_8], eax
		jmp	loc_407E80
; ---------------------------------------------------------------------------

loc_407B4E:				; CODE XREF: sub_407A90+3Aj
					; DATA XREF: .text:off_408320o
		mov	eax, [ebp+var_8] ; jumptable 00407ACA case 58
		test	eax, eax
		jz	loc_407F6B
		cmp	dword ptr [eax+18h], 1
		jnz	loc_407F6B
		inc	esi
		jmp	loc_407E80
; ---------------------------------------------------------------------------

loc_407B69:				; CODE XREF: sub_407A90+3Aj
					; DATA XREF: .text:off_408320o
		cmp	[ebp+var_8], 0	; jumptable 00407ACA case 44
		jz	loc_407FAC
		inc	esi
		jmp	loc_407E80
; ---------------------------------------------------------------------------

loc_407B79:				; CODE XREF: sub_407A90+3Aj
					; DATA XREF: .text:off_408320o
		cmp	[ebp+var_8], 0	; jumptable 00407ACA case 34
		jz	loc_407FF5
		mov	al, [esi+1]
		inc	esi
		mov	[ebp+var_10], esi
		mov	edi, esi
		test	al, al
		jz	loc_407CC5
		lea	ebx, [esi+6]

loc_407B97:				; CODE XREF: sub_407A90+22Aj
		cmp	al, 20h
		jge	short loc_407BA3
		test	al, al
		jg	loc_408045

loc_407BA3:				; CODE XREF: sub_407A90+109j
		cmp	al, 5Ch
		jnz	loc_407CAD
		movsx	eax, byte ptr [esi+1]
		add	eax, 0FFFFFFDEh	; switch 84 cases
		cmp	eax, 53h
		ja	loc_4080E5	; jumptable 00407BC2 default case
		movzx	ecx, ds:byte_4083C4[eax]
		jmp	ds:off_40839C[ecx*4] ; switch jump
; ---------------------------------------------------------------------------

loc_407BC9:				; CODE XREF: sub_407A90+132j
					; DATA XREF: .text:off_40839Co
		mov	byte ptr [edi],	22h ; jumptable	00407BC2 case 34
		inc	edi
		add	esi, 2
		add	ebx, 2
		jmp	loc_407CB6
; ---------------------------------------------------------------------------

loc_407BD8:				; CODE XREF: sub_407A90+132j
					; DATA XREF: .text:off_40839Co
		mov	byte ptr [edi],	5Ch ; jumptable	00407BC2 case 92
		inc	edi
		add	esi, 2
		add	ebx, 2
		jmp	loc_407CB6
; ---------------------------------------------------------------------------

loc_407BE7:				; CODE XREF: sub_407A90+132j
					; DATA XREF: .text:off_40839Co
		mov	byte ptr [edi],	2Fh ; jumptable	00407BC2 case 47
		inc	edi
		add	esi, 2
		add	ebx, 2
		jmp	loc_407CB6
; ---------------------------------------------------------------------------

loc_407BF6:				; CODE XREF: sub_407A90+132j
					; DATA XREF: .text:off_40839Co
		mov	byte ptr [edi],	8 ; jumptable 00407BC2 case 98
		inc	edi
		add	esi, 2
		add	ebx, 2
		jmp	loc_407CB6
; ---------------------------------------------------------------------------

loc_407C05:				; CODE XREF: sub_407A90+132j
					; DATA XREF: .text:off_40839Co
		mov	byte ptr [edi],	0Ch ; jumptable	00407BC2 case 102
		inc	edi
		add	esi, 2
		add	ebx, 2
		jmp	loc_407CB6
; ---------------------------------------------------------------------------

loc_407C14:				; CODE XREF: sub_407A90+132j
					; DATA XREF: .text:off_40839Co
		inc	[ebp+var_4]	; jumptable 00407BC2 case 110
		mov	byte ptr [edi],	0Ah
		inc	edi
		add	esi, 2
		add	ebx, 2
		jmp	loc_407CB6
; ---------------------------------------------------------------------------

loc_407C26:				; CODE XREF: sub_407A90+132j
					; DATA XREF: .text:off_40839Co
		mov	byte ptr [edi],	0Dh ; jumptable	00407BC2 case 114
		inc	edi
		add	esi, 2
		add	ebx, 2
		jmp	loc_407CB6
; ---------------------------------------------------------------------------

loc_407C35:				; CODE XREF: sub_407A90+132j
					; DATA XREF: .text:off_40839Co
		mov	byte ptr [edi],	9 ; jumptable 00407BC2 case 116
		inc	edi
		add	esi, 2
		add	ebx, 2
		jmp	short loc_407CB6
; ---------------------------------------------------------------------------

loc_407C41:				; CODE XREF: sub_407A90+132j
					; DATA XREF: .text:off_40839Co
		lea	edx, [ebp+var_18] ; jumptable 00407BC2 case 117
		push	edx
		lea	eax, [esi+2]
		push	ebx
		push	eax
		call	sub_4077F0
		add	esp, 0Ch
		cmp	eax, ebx
		jnz	loc_408095
		mov	eax, [ebp+var_18]
		cmp	eax, 7Fh
		jbe	short loc_407C9C
		cmp	eax, 7FFh
		ja	short loc_407C76
		mov	ecx, eax
		shr	ecx, 6
		or	cl, 0C0h
		mov	[edi], cl
		inc	edi
		jmp	short loc_407C98
; ---------------------------------------------------------------------------

loc_407C76:				; CODE XREF: sub_407A90+1D7j
		cmp	eax, 0FFFFh
		ja	short loc_407C9E
		mov	ecx, eax
		shr	ecx, 6
		mov	edx, eax
		shr	edx, 0Ch
		and	cl, 3Fh
		or	dl, 0E0h
		or	cl, 80h
		mov	[edi], dl
		mov	[edi+1], cl
		add	edi, 2

loc_407C98:				; CODE XREF: sub_407A90+1E4j
		and	al, 3Fh
		or	al, 80h

loc_407C9C:				; CODE XREF: sub_407A90+1D0j
		mov	[edi], al

loc_407C9E:				; CODE XREF: sub_407A90+1EBj
		add	esi, 4
		add	ebx, 4
		inc	edi
		add	esi, 2
		add	ebx, 2
		jmp	short loc_407CB6
; ---------------------------------------------------------------------------

loc_407CAD:				; CODE XREF: sub_407A90+115j
		inc	esi
		cmp	al, 22h
		jz	short loc_407CC2
		mov	[edi], al
		inc	edi
		inc	ebx

loc_407CB6:				; CODE XREF: sub_407A90+143j
					; sub_407A90+152j ...
		mov	al, [esi]
		test	al, al
		jnz	loc_407B97
		jmp	short loc_407CC5
; ---------------------------------------------------------------------------

loc_407CC2:				; CODE XREF: sub_407A90+220j
		mov	byte ptr [edi],	0

loc_407CC5:				; CODE XREF: sub_407A90+FEj
					; sub_407A90+230j
		mov	edi, [ebp+var_C]
		test	edi, edi
		jnz	short loc_407CE0
		mov	edx, [ebp+var_8]
		cmp	dword ptr [edx+18h], 1
		jnz	short loc_407CE0
		mov	eax, [ebp+var_10]
		mov	[ebp+var_C], eax
		jmp	loc_407E80
; ---------------------------------------------------------------------------

loc_407CE0:				; CODE XREF: sub_407A90+23Aj
					; sub_407A90+243j
		mov	ecx, [ebp+arg_10]
		push	ecx
		call	sub_407A30
		mov	edx, [ebp+var_10]
		push	eax
		mov	[eax+10h], edi
		mov	dword ptr [eax+18h], 3
		mov	[eax+14h], edx
		mov	eax, [ebp+var_8]
		push	eax
		mov	[ebp+var_C], 0
		call	sub_407A60
		add	esp, 0Ch
		jmp	loc_407E80
; ---------------------------------------------------------------------------

loc_407D12:				; CODE XREF: sub_407A90+3Aj
					; DATA XREF: .text:off_408320o
		mov	ebx, [ebp+var_8] ; jumptable 00407ACA cases 102,110,116
		xor	edi, edi
		cmp	ebx, edi
		jz	loc_408135
		mov	ecx, [ebp+arg_10]
		push	ecx
		call	sub_407A30
		mov	edx, [ebp+var_C]
		mov	[eax+10h], edx
		mov	cl, [esi]
		add	esp, 4
		mov	[ebp+var_C], edi
		cmp	cl, 6Eh
		jnz	short loc_407D5A
		cmp	byte ptr [esi+1], 75h
		jnz	short loc_407D5A
		cmp	byte ptr [esi+2], 6Ch
		jnz	short loc_407D5A
		cmp	byte ptr [esi+3], 6Ch
		jnz	short loc_407D5A
		push	eax
		mov	[eax+18h], edi
		add	esi, 4
		push	ebx
		jmp	loc_407E72
; ---------------------------------------------------------------------------

loc_407D5A:				; CODE XREF: sub_407A90+2A9j
					; sub_407A90+2AFj ...
		cmp	cl, 74h
		jnz	short loc_407D89
		cmp	byte ptr [esi+1], 72h
		jnz	short loc_407D89
		cmp	byte ptr [esi+2], 75h
		jnz	short loc_407D89
		cmp	byte ptr [esi+3], 65h
		jnz	short loc_407D89
		push	eax
		mov	dword ptr [eax+14h], 1
		add	esi, 4
		mov	dword ptr [eax+18h], 6
		push	ebx
		jmp	loc_407E72
; ---------------------------------------------------------------------------

loc_407D89:				; CODE XREF: sub_407A90+2CDj
					; sub_407A90+2D3j ...
		cmp	cl, 66h
		jnz	loc_408185
		cmp	byte ptr [esi+1], 61h
		jnz	loc_408185
		cmp	byte ptr [esi+2], 6Ch
		jnz	loc_408185
		cmp	byte ptr [esi+3], 73h
		jnz	loc_408185
		cmp	byte ptr [esi+4], 65h
		jnz	loc_408185
		push	eax
		mov	[eax+14h], edi
		add	esi, 5
		mov	dword ptr [eax+18h], 6
		push	ebx
		jmp	loc_407E72
; ---------------------------------------------------------------------------

loc_407DCE:				; CODE XREF: sub_407A90+3Aj
					; DATA XREF: .text:off_408320o
		cmp	[ebp+var_8], 0	; jumptable 00407ACA cases 45,48-57
		jz	loc_4081D5
		mov	eax, [ebp+arg_10]
		push	eax
		call	sub_407A30
		mov	ecx, [ebp+var_C]
		mov	edi, eax
		mov	[edi+10h], ecx
		mov	dword ptr [edi+18h], 4
		mov	al, [esi]
		add	esp, 4
		mov	[ebp+var_C], 0
		mov	ebx, esi
		cmp	al, 20h
		jz	short loc_407E35

loc_407E02:				; CODE XREF: sub_407A90+3A3j
		cmp	al, 9
		jz	short loc_407E35
		cmp	al, 0Dh
		jz	short loc_407E35
		cmp	al, 0Ah
		jz	short loc_407E35
		cmp	al, 2Ch
		jz	short loc_407E35
		cmp	al, 5Dh
		jz	short loc_407E35
		cmp	al, 7Dh
		jz	short loc_407E35
		cmp	al, 2Eh
		jz	short loc_407E26
		cmp	al, 65h
		jz	short loc_407E26
		cmp	al, 45h
		jnz	short loc_407E2D

loc_407E26:				; CODE XREF: sub_407A90+38Cj
					; sub_407A90+390j
		mov	dword ptr [edi+18h], 5

loc_407E2D:				; CODE XREF: sub_407A90+394j
		mov	al, [esi+1]
		inc	esi
		cmp	al, 20h
		jnz	short loc_407E02

loc_407E35:				; CODE XREF: sub_407A90+370j
					; sub_407A90+374j ...
		cmp	dword ptr [edi+18h], 4
		jnz	short loc_407E51
		lea	edx, [edi+14h]
		push	edx
		push	esi
		push	ebx
		call	sub_407790
		add	esp, 0Ch
		cmp	eax, esi
		jnz	loc_408225

loc_407E51:				; CODE XREF: sub_407A90+3A9j
		cmp	dword ptr [edi+18h], 5
		jnz	short loc_407E6D
		lea	eax, [edi+14h]
		push	eax
		push	esi
		push	ebx
		call	sub_407850
		add	esp, 0Ch
		cmp	eax, esi
		jnz	loc_408275

loc_407E6D:				; CODE XREF: sub_407A90+3C5j
		mov	ecx, [ebp+var_8]
		push	edi
		push	ecx

loc_407E72:				; CODE XREF: sub_407A90+2C5j
					; sub_407A90+2F4j ...
		call	sub_407A60
		add	esp, 8
		lea	ebx, [ebx+0]

loc_407E80:				; CODE XREF: sub_407A90+7Dj
					; sub_407A90+92j ...
		mov	al, [esi]
		cmp	al, 20h
		jz	short loc_407E92
		cmp	al, 9
		jz	short loc_407E92
		cmp	al, 0Dh
		jz	short loc_407E92
		cmp	al, 0Ah
		jnz	short loc_407E95

loc_407E92:				; CODE XREF: sub_407A90+3F4j
					; sub_407A90+3F8j ...
		inc	esi
		jmp	short loc_407E80
; ---------------------------------------------------------------------------

loc_407E95:				; CODE XREF: sub_407A90+400j
		cmp	byte ptr [esi],	0
		jnz	loc_407AB2
		cmp	[ebp+var_8], 0
		jz	loc_408315
		mov	eax, [ebp+arg_4]
		test	eax, eax
		jz	short loc_407F21
		mov	ecx, [ebp+arg_C]
		test	ecx, ecx
		jz	short loc_407F21
		mov	edx, [ebp+arg_8]
		mov	[eax], esi
		mov	eax, 1
		sub	eax, [ebp+var_4]
		mov	dword ptr [edx], offset	aNotAllObjectsA	; "Not all objects/arrays have been proper"...
		mov	edx, [ebp+arg_0]
		mov	[ecx], eax
		mov	eax, esi
		cmp	esi, edx
		jz	short loc_407EE0

loc_407ED4:				; CODE XREF: sub_407A90+44Ej
		cmp	byte ptr [eax],	0Ah
		jnz	short loc_407EDB
		inc	dword ptr [ecx]

loc_407EDB:				; CODE XREF: sub_407A90+447j
		dec	eax
		cmp	eax, edx
		jnz	short loc_407ED4

loc_407EE0:				; CODE XREF: sub_407A90+442j
		pop	edi
		pop	esi
		xor	eax, eax
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_407EE9:				; CODE XREF: sub_407A90+86j
		mov	eax, [ebp+arg_4]
		test	eax, eax
		jz	short loc_407F21
		mov	ecx, [ebp+arg_C]
		test	ecx, ecx
		jz	short loc_407F21
		mov	edx, [ebp+arg_8]
		mov	[eax], esi
		mov	eax, 1
		sub	eax, [ebp+var_4]
		mov	dword ptr [edx], offset	aSecondRoot_Onl	; "Second root.	Only one root allowed"
		mov	edx, [ebp+arg_0]
		mov	[ecx], eax
		mov	eax, esi
		cmp	esi, edx
		jz	short loc_407F21

loc_407F15:				; CODE XREF: sub_407A90+48Fj
		cmp	byte ptr [eax],	0Ah
		jnz	short loc_407F1C
		inc	dword ptr [ecx]

loc_407F1C:				; CODE XREF: sub_407A90+488j
		dec	eax
		cmp	eax, edx
		jnz	short loc_407F15

loc_407F21:				; CODE XREF: sub_407A90+41Dj
					; sub_407A90+424j ...
		pop	edi
		pop	esi
		xor	eax, eax
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_407F2A:				; CODE XREF: sub_407A90+9Cj
					; sub_407A90+ADj
		mov	eax, [ebp+arg_4]
		test	eax, eax
		jz	short loc_407F21
		mov	ecx, [ebp+arg_C]
		test	ecx, ecx
		jz	short loc_407F21
		mov	edx, [ebp+arg_8]
		mov	[eax], esi
		mov	eax, 1
		sub	eax, [ebp+var_4]
		mov	dword ptr [edx], offset	aMismatchClosin	; "Mismatch closing brace/bracket"
		mov	edx, [ebp+arg_0]
		mov	[ecx], eax
		mov	eax, esi
		cmp	esi, edx
		jz	short loc_407F62

loc_407F56:				; CODE XREF: sub_407A90+4D0j
		cmp	byte ptr [eax],	0Ah
		jnz	short loc_407F5D
		inc	dword ptr [ecx]

loc_407F5D:				; CODE XREF: sub_407A90+4C9j
		dec	eax
		cmp	eax, edx
		jnz	short loc_407F56

loc_407F62:				; CODE XREF: sub_407A90+4C4j
		pop	edi
		pop	esi
		xor	eax, eax
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_407F6B:				; CODE XREF: sub_407A90+C3j
					; sub_407A90+CDj
		mov	eax, [ebp+arg_4]
		test	eax, eax
		jz	short loc_407F21
		mov	ecx, [ebp+arg_C]
		test	ecx, ecx
		jz	short loc_407F21
		mov	edx, [ebp+arg_8]
		mov	[eax], esi
		mov	eax, 1
		sub	eax, [ebp+var_4]
		mov	dword ptr [edx], offset	aUnexpectedChar	; "Unexpected character"
		mov	edx, [ebp+arg_0]
		mov	[ecx], eax
		mov	eax, esi
		cmp	esi, edx
		jz	short loc_407FA3

loc_407F97:				; CODE XREF: sub_407A90+511j
		cmp	byte ptr [eax],	0Ah
		jnz	short loc_407F9E
		inc	dword ptr [ecx]

loc_407F9E:				; CODE XREF: sub_407A90+50Aj
		dec	eax
		cmp	eax, edx
		jnz	short loc_407F97

loc_407FA3:				; CODE XREF: sub_407A90+505j
		pop	edi
		pop	esi
		xor	eax, eax
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_407FAC:				; CODE XREF: sub_407A90+DDj
		mov	eax, [ebp+arg_4]
		test	eax, eax
		jz	loc_407F21
		mov	ecx, [ebp+arg_C]
		test	ecx, ecx
		jz	loc_407F21
		mov	edx, [ebp+arg_8]
		mov	[eax], esi
		mov	eax, 1
		sub	eax, [ebp+var_4]
		mov	dword ptr [edx], offset	aUnexpectedChar	; "Unexpected character"
		mov	edx, [ebp+arg_0]
		mov	[ecx], eax
		mov	eax, esi
		cmp	esi, edx
		jz	short loc_407FEC

loc_407FE0:				; CODE XREF: sub_407A90+55Aj
		cmp	byte ptr [eax],	0Ah
		jnz	short loc_407FE7
		inc	dword ptr [ecx]

loc_407FE7:				; CODE XREF: sub_407A90+553j
		dec	eax
		cmp	eax, edx
		jnz	short loc_407FE0

loc_407FEC:				; CODE XREF: sub_407A90+54Ej
		pop	edi
		pop	esi
		xor	eax, eax
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_407FF5:				; CODE XREF: sub_407A90+EDj
		mov	eax, [ebp+arg_4]
		test	eax, eax
		jz	loc_407F21
		mov	ecx, [ebp+arg_C]
		test	ecx, ecx
		jz	loc_407F21
		mov	edx, [ebp+arg_8]
		mov	[eax], esi
		mov	eax, 1
		sub	eax, [ebp+var_4]
		mov	dword ptr [edx], offset	aUnexpectedChar	; "Unexpected character"
		mov	edx, [ebp+arg_0]
		mov	[ecx], eax
		mov	eax, esi
		cmp	esi, edx
		jz	short loc_40803C
		lea	esp, [esp+0]

loc_408030:				; CODE XREF: sub_407A90+5AAj
		cmp	byte ptr [eax],	0Ah
		jnz	short loc_408037
		inc	dword ptr [ecx]

loc_408037:				; CODE XREF: sub_407A90+5A3j
		dec	eax
		cmp	eax, edx
		jnz	short loc_408030

loc_40803C:				; CODE XREF: sub_407A90+597j
		pop	edi
		pop	esi
		xor	eax, eax
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_408045:				; CODE XREF: sub_407A90+10Dj
		mov	eax, [ebp+arg_4]
		test	eax, eax
		jz	loc_407F21
		mov	ecx, [ebp+arg_C]
		test	ecx, ecx
		jz	loc_407F21
		mov	esi, [ebp+var_10]
		mov	edx, [ebp+arg_8]
		mov	[eax], esi
		mov	eax, 1
		sub	eax, [ebp+var_4]
		mov	dword ptr [edx], offset	aControlCharact	; "Control characters not allowed in strin"...
		mov	edx, [ebp+arg_0]
		mov	[ecx], eax
		mov	eax, esi
		cmp	esi, edx
		jz	short loc_40808C
		lea	esp, [esp+0]

loc_408080:				; CODE XREF: sub_407A90+5FAj
		cmp	byte ptr [eax],	0Ah
		jnz	short loc_408087
		inc	dword ptr [ecx]

loc_408087:				; CODE XREF: sub_407A90+5F3j
		dec	eax
		cmp	eax, edx
		jnz	short loc_408080

loc_40808C:				; CODE XREF: sub_407A90+5EAj
		pop	edi
		pop	esi
		xor	eax, eax
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_408095:				; CODE XREF: sub_407A90+1C4j
		mov	eax, [ebp+arg_4]
		test	eax, eax
		jz	loc_407F21
		mov	ecx, [ebp+arg_C]
		test	ecx, ecx
		jz	loc_407F21
		mov	edx, [ebp+arg_8]
		mov	[eax], esi
		mov	eax, 1
		sub	eax, [ebp+var_4]
		mov	dword ptr [edx], offset	aBadUnicodeCode	; "Bad unicode codepoint"
		mov	edx, [ebp+arg_0]
		mov	[ecx], eax
		mov	eax, esi
		cmp	esi, edx
		jz	short loc_4080DC
		lea	esp, [esp+0]

loc_4080D0:				; CODE XREF: sub_407A90+64Aj
		cmp	byte ptr [eax],	0Ah
		jnz	short loc_4080D7
		inc	dword ptr [ecx]

loc_4080D7:				; CODE XREF: sub_407A90+643j
		dec	eax
		cmp	eax, edx
		jnz	short loc_4080D0

loc_4080DC:				; CODE XREF: sub_407A90+637j
		pop	edi
		pop	esi
		xor	eax, eax
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4080E5:				; CODE XREF: sub_407A90+125j
					; sub_407A90+132j
					; DATA XREF: ...
		mov	eax, [ebp+arg_4] ; jumptable 00407BC2 default case
		test	eax, eax
		jz	loc_407F21
		mov	ecx, [ebp+arg_C]
		test	ecx, ecx
		jz	loc_407F21
		mov	esi, [ebp+var_10]
		mov	edx, [ebp+arg_8]
		mov	[eax], esi
		mov	eax, 1
		sub	eax, [ebp+var_4]
		mov	dword ptr [edx], offset	aUnrecognizedEs	; "Unrecognized	escape sequence"
		mov	edx, [ebp+arg_0]
		mov	[ecx], eax
		mov	eax, esi
		cmp	esi, edx
		jz	short loc_40812C
		lea	esp, [esp+0]

loc_408120:				; CODE XREF: sub_407A90+69Aj
		cmp	byte ptr [eax],	0Ah
		jnz	short loc_408127
		inc	dword ptr [ecx]

loc_408127:				; CODE XREF: sub_407A90+693j
		dec	eax
		cmp	eax, edx
		jnz	short loc_408120

loc_40812C:				; CODE XREF: sub_407A90+68Aj
		pop	edi
		pop	esi
		xor	eax, eax
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_408135:				; CODE XREF: sub_407A90+289j
		mov	eax, [ebp+arg_4]
		cmp	eax, edi
		jz	loc_407F21
		mov	ecx, [ebp+arg_C]
		cmp	ecx, edi
		jz	loc_407F21
		mov	edx, [ebp+arg_8]
		mov	[eax], esi
		mov	eax, 1
		sub	eax, [ebp+var_4]
		mov	dword ptr [edx], offset	aUnexpectedChar	; "Unexpected character"
		mov	edx, [ebp+arg_0]
		mov	[ecx], eax
		mov	eax, esi
		cmp	esi, edx
		jz	short loc_40817C
		lea	esp, [esp+0]

loc_408170:				; CODE XREF: sub_407A90+6EAj
		cmp	byte ptr [eax],	0Ah
		jnz	short loc_408177
		inc	dword ptr [ecx]

loc_408177:				; CODE XREF: sub_407A90+6E3j
		dec	eax
		cmp	eax, edx
		jnz	short loc_408170

loc_40817C:				; CODE XREF: sub_407A90+6D7j
		pop	edi
		pop	esi
		xor	eax, eax
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_408185:				; CODE XREF: sub_407A90+2FCj
					; sub_407A90+306j ...
		mov	eax, [ebp+arg_4]
		cmp	eax, edi
		jz	loc_407F21
		mov	ecx, [ebp+arg_C]
		cmp	ecx, edi
		jz	loc_407F21
		mov	edx, [ebp+arg_8]
		mov	[eax], esi
		mov	eax, 1
		sub	eax, [ebp+var_4]
		mov	dword ptr [edx], offset	aUnknownIdentif	; "Unknown identifier"
		mov	edx, [ebp+arg_0]
		mov	[ecx], eax
		mov	eax, esi
		cmp	esi, edx
		jz	short loc_4081CC
		lea	esp, [esp+0]

loc_4081C0:				; CODE XREF: sub_407A90+73Aj
		cmp	byte ptr [eax],	0Ah
		jnz	short loc_4081C7
		inc	dword ptr [ecx]

loc_4081C7:				; CODE XREF: sub_407A90+733j
		dec	eax
		cmp	eax, edx
		jnz	short loc_4081C0

loc_4081CC:				; CODE XREF: sub_407A90+727j
		pop	edi
		pop	esi
		xor	eax, eax
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4081D5:				; CODE XREF: sub_407A90+342j
		mov	eax, [ebp+arg_4]
		test	eax, eax
		jz	loc_407F21
		mov	ecx, [ebp+arg_C]
		test	ecx, ecx
		jz	loc_407F21
		mov	edx, [ebp+arg_8]
		mov	[eax], esi
		mov	eax, 1
		sub	eax, [ebp+var_4]
		mov	dword ptr [edx], offset	aUnexpectedChar	; "Unexpected character"
		mov	edx, [ebp+arg_0]
		mov	[ecx], eax
		mov	eax, esi
		cmp	esi, edx
		jz	short loc_40821C
		lea	esp, [esp+0]

loc_408210:				; CODE XREF: sub_407A90+78Aj
		cmp	byte ptr [eax],	0Ah
		jnz	short loc_408217
		inc	dword ptr [ecx]

loc_408217:				; CODE XREF: sub_407A90+783j
		dec	eax
		cmp	eax, edx
		jnz	short loc_408210

loc_40821C:				; CODE XREF: sub_407A90+777j
		pop	edi
		pop	esi
		xor	eax, eax
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_408225:				; CODE XREF: sub_407A90+3BBj
		mov	eax, [ebp+arg_4]
		test	eax, eax
		jz	loc_407F21
		mov	ecx, [ebp+arg_C]
		test	ecx, ecx
		jz	loc_407F21
		mov	edx, [ebp+arg_8]
		mov	[eax], ebx
		mov	eax, 1
		sub	eax, [ebp+var_4]
		mov	dword ptr [edx], offset	aBadIntegerNumb	; "Bad integer number"
		mov	edx, [ebp+arg_0]
		mov	[ecx], eax
		mov	eax, ebx
		cmp	ebx, edx
		jz	short loc_40826C
		lea	esp, [esp+0]

loc_408260:				; CODE XREF: sub_407A90+7DAj
		cmp	byte ptr [eax],	0Ah
		jnz	short loc_408267
		inc	dword ptr [ecx]

loc_408267:				; CODE XREF: sub_407A90+7D3j
		dec	eax
		cmp	eax, edx
		jnz	short loc_408260

loc_40826C:				; CODE XREF: sub_407A90+7C7j
		pop	edi
		pop	esi
		xor	eax, eax
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_408275:				; CODE XREF: sub_407A90+3D7j
		mov	eax, [ebp+arg_4]
		test	eax, eax
		jz	loc_407F21
		mov	ecx, [ebp+arg_C]
		test	ecx, ecx
		jz	loc_407F21
		mov	edx, [ebp+arg_8]
		mov	[eax], ebx
		mov	eax, 1
		sub	eax, [ebp+var_4]
		mov	dword ptr [edx], offset	aBadFloatNumber	; "Bad float number"
		mov	edx, [ebp+arg_0]
		mov	[ecx], eax
		mov	eax, ebx
		cmp	ebx, edx
		jz	short loc_4082BC
		lea	esp, [esp+0]

loc_4082B0:				; CODE XREF: sub_407A90+82Aj
		cmp	byte ptr [eax],	0Ah
		jnz	short loc_4082B7
		inc	dword ptr [ecx]

loc_4082B7:				; CODE XREF: sub_407A90+823j
		dec	eax
		cmp	eax, edx
		jnz	short loc_4082B0

loc_4082BC:				; CODE XREF: sub_407A90+817j
		pop	edi
		pop	esi
		xor	eax, eax
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4082C5:				; CODE XREF: sub_407A90+2Dj
					; sub_407A90+3Aj
					; DATA XREF: ...
		mov	eax, [ebp+arg_4] ; jumptable 00407ACA default case
		test	eax, eax
		jz	loc_407F21
		mov	ecx, [ebp+arg_C]
		test	ecx, ecx
		jz	loc_407F21
		mov	edx, [ebp+arg_8]
		mov	[eax], esi
		mov	eax, 1
		sub	eax, [ebp+var_4]
		mov	dword ptr [edx], offset	aUnexpectedChar	; "Unexpected character"
		mov	edx, [ebp+arg_0]
		mov	[ecx], eax
		mov	eax, esi
		cmp	esi, edx
		jz	short loc_40830C
		lea	esp, [esp+0]

loc_408300:				; CODE XREF: sub_407A90+87Aj
		cmp	byte ptr [eax],	0Ah
		jnz	short loc_408307
		inc	dword ptr [ecx]

loc_408307:				; CODE XREF: sub_407A90+873j
		dec	eax
		cmp	eax, edx
		jnz	short loc_408300

loc_40830C:				; CODE XREF: sub_407A90+867j
		pop	edi
		pop	esi
		xor	eax, eax
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_408315:				; CODE XREF: sub_407A90+1Cj
					; sub_407A90+412j
		mov	eax, [ebp+var_14]
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
sub_407A90	endp

; ---------------------------------------------------------------------------
		align 10h
off_408320	dd offset loc_407B79, offset loc_407B69, offset	loc_407DCE
					; DATA XREF: sub_407A90+3Ar
		dd offset loc_407B4E, offset loc_407AD1, offset	loc_407B27 ; jump table	for switch statement
		dd offset loc_407D12, offset loc_4082C5
byte_408340	db	0,     7,     7,     7 ; DATA XREF: sub_407A90+33r
		db	7,     7,     7,     7 ; indirect table	for switch statement
		db	7,     7,     1,     2
		db	7,     7,     2,     2
		db	2,     2,     2,     2
		db	2,     2,     2,     2
		db	3,     7,     7,     7
		db	7,     7,     7,     7
		db	7,     7,     7,     7
		db	7,     7,     7,     7
		db	7,     7,     7,     7
		db	7,     7,     7,     7
		db	7,     7,     7,     7
		db	7,     7,     7,     7
		db	7,     4,     7,     5
		db	7,     7,     7,     7
		db	7,     7,     7,     7
		db	6,     7,     7,     7
		db	7,     7,     7,     7
		db	6,     7,     7,     7
		db	7,     7,     6,     7
		db	7,     7,     7,     7
		db	7,     4,     7,     5
off_40839C	dd offset loc_407BC9, offset loc_407BE7, offset	loc_407BD8
					; DATA XREF: sub_407A90+132r
		dd offset loc_407BF6, offset loc_407C05, offset	loc_407C14 ; jump table	for switch statement
		dd offset loc_407C26, offset loc_407C35, offset	loc_407C41
		dd offset loc_4080E5
byte_4083C4	db	0,     9,     9,     9 ; DATA XREF: sub_407A90+12Br
		db	9,     9,     9,     9 ; indirect table	for switch statement
		db	9,     9,     9,     9
		db	9,     1,     9,     9
		db	9,     9,     9,     9
		db	9,     9,     9,     9
		db	9,     9,     9,     9
		db	9,     9,     9,     9
		db	9,     9,     9,     9
		db	9,     9,     9,     9
		db	9,     9,     9,     9
		db	9,     9,     9,     9
		db	9,     9,     9,     9
		db	9,     9,     9,     9
		db	9,     9,     2,     9
		db	9,     9,     9,     9
		db	3,     9,     9,     9
		db	4,     9,     9,     9
		db	9,     9,     9,     9
		db	5,     9,     9,     9
		db	6,     9,     7,     8
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_408420	proc near		; CODE XREF: sub_408510+32p

var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset sub_409DE0
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
		mov	[ebp+var_10], esp
		mov	eax, [ecx+4]
		mov	edx, [eax+18h]
		add	ecx, 4
		mov	[ebp+var_4], 0
		call	edx
		mov	ecx, [ebp+var_C]
		mov	large fs:0, ecx
		pop	ecx
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
sub_408420	endp


; =============== S U B	R O U T	I N E =======================================


sub_40846D	proc near		; DATA XREF: .rdata:0040C684o
		mov	eax, offset loc_408473
		retn
; ---------------------------------------------------------------------------

loc_408473:				; CODE XREF: sub_40846D+5j
					; DATA XREF: sub_40846Do
		xor	eax, eax
		mov	ecx, [ebp-0Ch]
		mov	large fs:0, ecx
		pop	ecx
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
sub_40846D	endp ; sp-analysis failed

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_408490	proc near		; CODE XREF: sub_408510+47p

var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4
arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset sub_409E00
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
		mov	[ebp+var_10], esp
		mov	eax, [ecx+4]
		mov	eax, [eax+20h]
		lea	edx, [ebp+arg_0]
		add	ecx, 4
		push	edx
		mov	edx, [ebp+arg_0]
		push	edx
		mov	[ebp+var_4], 0
		call	eax
		movzx	eax, al
		neg	eax
		sbb	eax, eax
		and	eax, [ebp+arg_0]
		mov	ecx, [ebp+var_C]
		mov	large fs:0, ecx
		pop	ecx
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
sub_408490	endp


; =============== S U B	R O U T	I N E =======================================


sub_4084F1	proc near		; DATA XREF: .rdata:0040C6DCo
		mov	eax, offset loc_4084F7
		retn
; ---------------------------------------------------------------------------

loc_4084F7:				; CODE XREF: sub_4084F1+5j
					; DATA XREF: sub_4084F1o
		xor	eax, eax
		mov	ecx, [ebp-0Ch]
		mov	large fs:0, ecx
		pop	ecx
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
sub_4084F1	endp ; sp-analysis failed

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_408510	proc near		; CODE XREF: sub_4085B0+36p

var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset sub_409E20
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
		mov	[ebp+var_10], esp
		mov	ebx, ecx
		mov	[ebp+var_4], 0
		call	sub_408420
		lea	edi, [eax-1]
		lea	ebx, [ebx+0]

loc_408550:				; CODE XREF: sub_408510+78j
		test	edi, edi
		js	short loc_408590
		push	edi
		mov	ecx, ebx
		call	sub_408490
		mov	esi, eax
		test	esi, esi
		jz	short loc_40857B
		mov	ecx, [esi+14h]
		test	ecx, ecx
		jz	short loc_408571
		mov	eax, [ecx]
		mov	edx, [eax]
		push	1
		call	edx

loc_408571:				; CODE XREF: sub_408510+57j
		mov	eax, [esi]
		mov	edx, [eax]
		push	1
		mov	ecx, esi
		call	edx

loc_40857B:				; CODE XREF: sub_408510+50j
		mov	eax, [ebx+4]
		mov	edx, [eax+34h]
		lea	ecx, [ebx+4]
		push	edi
		call	edx
		dec	edi
		jmp	short loc_408550
; ---------------------------------------------------------------------------

loc_40858A:				; DATA XREF: .rdata:0040C734o
		mov	eax, offset loc_408590
		retn
; ---------------------------------------------------------------------------

loc_408590:				; CODE XREF: sub_408510+42j
					; sub_408510+7Fj
					; DATA XREF: ...
		mov	ecx, [ebp+var_C]
		mov	large fs:0, ecx
		pop	ecx
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
sub_408510	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_4085B0	proc near		; CODE XREF: sub_408610+6p
					; sub_40A8B0+5j

var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset sub_409E4B
		mov	eax, large fs:0
		push	eax
		push	ecx
		push	esi
		mov	eax, ___security_cookie
		xor	eax, ebp
		push	eax
		lea	eax, [ebp+var_C]
		mov	large fs:0, eax
		mov	esi, ecx
		mov	[ebp+var_10], esi
		mov	dword ptr [esi], offset	off_40B7F8
		mov	[ebp+var_4], 0
		call	sub_408510
		lea	ecx, [esi+4]
		mov	[ebp+var_4], 0FFFFFFFFh
		call	sub_408D20
		mov	ecx, [ebp+var_C]
		mov	large fs:0, ecx
		pop	ecx
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn
sub_4085B0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __thiscall sub_408610(void *, char)
sub_408610	proc near		; DATA XREF: .rdata:off_40B7F8o

arg_0		= byte ptr  8

		push	ebp
		mov	ebp, esp
		push	esi
		mov	esi, ecx
		call	sub_4085B0
		test	[ebp+arg_0], 1
		jz	short loc_40862A
		push	esi		; void *
		call	??3@YAXPAX@Z	; operator delete(void *)
		add	esp, 4

loc_40862A:				; CODE XREF: sub_408610+Fj
		mov	eax, esi
		pop	esi
		pop	ebp
		retn	4
sub_408610	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_408640	proc near		; DATA XREF: .rdata:0040B830o

var_4		= dword	ptr -4
arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		push	ecx
		push	esi
		mov	esi, [ebp+arg_0]
		push	edi
		mov	edi, ecx
		cmp	edi, esi
		jz	short loc_4086AA
		mov	eax, [esi]
		mov	edx, [eax+18h]
		push	ebx
		mov	ecx, esi
		call	edx
		xor	ebx, ebx
		mov	[ebp+var_4], eax
		test	eax, eax
		jle	short loc_408683

loc_408662:				; CODE XREF: sub_408640+41j
		mov	eax, [esi]
		mov	edx, [eax+20h]
		lea	ecx, [ebp+arg_0]
		push	ecx
		push	ebx
		mov	ecx, esi
		call	edx
		mov	eax, [edi]
		mov	edx, [eax+2Ch]
		lea	ecx, [ebp+arg_0]
		push	ecx
		mov	ecx, edi
		call	edx
		inc	ebx
		cmp	ebx, [ebp+var_4]
		jl	short loc_408662

loc_408683:				; CODE XREF: sub_408640+20j
		mov	al, [esi+18h]
		mov	[edi+18h], al
		mov	cl, [esi+19h]
		mov	[edi+19h], cl
		cmp	dword ptr [esi+14h], 0
		jz	short loc_4086A9
		mov	ecx, [esi+14h]
		mov	edx, [ecx]
		mov	eax, [edx+14h]
		mov	ebx, [edi]
		call	eax
		mov	edx, [ebx+10h]
		push	eax
		mov	ecx, edi
		call	edx

loc_4086A9:				; CODE XREF: sub_408640+53j
		pop	ebx

loc_4086AA:				; CODE XREF: sub_408640+Dj
		pop	edi
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn	4
sub_408640	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_4086C0	proc near		; DATA XREF: .rdata:0040B834o

arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		push	esi
		mov	esi, ecx
		mov	ecx, [esi+14h]
		test	ecx, ecx
		jz	short loc_4086E0
		mov	eax, [ecx]
		mov	edx, [eax]
		push	1
		call	edx
		mov	eax, [ebp+arg_0]
		mov	[esi+14h], eax
		pop	esi
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_4086E0:				; CODE XREF: sub_4086C0+Bj
		mov	ecx, [ebp+arg_0]
		mov	[esi+14h], ecx
		pop	esi
		pop	ebp
		retn	4
sub_4086C0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_4086F0	proc near		; DATA XREF: .rdata:0040B838o
		mov	eax, [ecx+14h]
		retn
sub_4086F0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_408700	proc near		; DATA XREF: .rdata:0040B848o

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch

		push	ebp
		mov	ebp, esp
		push	esi
		mov	esi, ecx
		mov	ecx, [ebp+arg_0]
		mov	eax, [esi]
		mov	edx, [eax+28h]
		push	ecx
		mov	ecx, esi
		call	edx
		cmp	eax, 0FFFFFFFFh
		jnz	short loc_40871F
		xor	eax, eax
		pop	esi
		pop	ebp
		retn	8
; ---------------------------------------------------------------------------

loc_40871F:				; CODE XREF: sub_408700+16j
		mov	ecx, [ebp+arg_4]
		mov	edx, [esi]
		mov	edx, [edx+20h]
		push	ecx
		push	eax
		mov	ecx, esi
		call	edx
		movzx	eax, al
		pop	esi
		pop	ebp
		retn	8
sub_408700	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_408740	proc near		; DATA XREF: .rdata:0040B84Co

var_4		= byte ptr -4
arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		push	ecx
		push	esi
		mov	esi, ecx
		cmp	byte ptr [esi+18h], 1
		mov	eax, [esi]
		jnz	short loc_408761
		mov	ecx, [ebp+arg_0]
		mov	edx, [eax+4Ch]
		push	ecx
		mov	ecx, esi
		call	edx
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_408761:				; CODE XREF: sub_408740+Dj
		mov	edx, [eax+18h]
		push	ebx
		push	edi
		call	edx
		mov	ebx, eax
		xor	edi, edi
		test	ebx, ebx
		jle	short loc_40879B

loc_408770:				; CODE XREF: sub_408740+59j
		mov	eax, [esi]
		mov	edx, [eax+20h]
		lea	ecx, [ebp+var_4]
		push	ecx
		push	edi
		mov	ecx, esi
		call	edx
		mov	edx, [ebp+arg_0]
		mov	ecx, [esi+14h]
		mov	eax, [ecx]
		mov	eax, [eax+10h]
		push	edx
		push	4
		lea	edx, [ebp+var_4]
		push	edx
		call	eax
		test	al, al
		jnz	short loc_4087A7
		inc	edi
		cmp	edi, ebx
		jl	short loc_408770

loc_40879B:				; CODE XREF: sub_408740+2Ej
		pop	edi
		pop	ebx
		or	eax, 0FFFFFFFFh
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_4087A7:				; CODE XREF: sub_408740+54j
		mov	eax, edi
		pop	edi
		pop	ebx
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn	4
sub_408740	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_4087C0	proc near		; DATA XREF: .rdata:0040B85Co

arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		push	esi
		mov	esi, ecx
		mov	ecx, [ebp+arg_0]
		mov	edx, [ecx]
		mov	eax, [esi]
		mov	eax, [eax+1Ch]
		push	edx
		mov	ecx, esi
		call	eax
		cmp	eax, 0FFFFFFFFh
		jz	short loc_4087E4
		mov	edx, [esi]
		push	eax
		mov	eax, [edx+34h]
		mov	ecx, esi
		call	eax

loc_4087E4:				; CODE XREF: sub_4087C0+18j
		pop	esi
		pop	ebp
		retn	4
sub_4087C0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_4087F0	proc near		; DATA XREF: .rdata:0040B864o
		mov	byte ptr [ecx+19h], 1
		retn	4
sub_4087F0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_408800	proc near		; DATA XREF: .rdata:0040B86Co

var_8		= dword	ptr -8
var_4		= dword	ptr -4
arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		sub	esp, 8
		push	ebx
		push	esi
		push	edi
		mov	edi, ecx
		mov	eax, [edi]
		mov	edx, [eax+18h]
		or	esi, 0FFFFFFFFh
		mov	[ebp+var_4], 0
		call	edx
		mov	ebx, eax
		dec	ebx
		js	short loc_408871

loc_408821:				; CODE XREF: sub_408800+63j
		mov	eax, [ebp+var_4]
		add	eax, ebx
		cdq
		sub	eax, edx
		mov	edx, [edi]
		mov	edx, [edx+20h]
		mov	esi, eax
		lea	eax, [ebp+var_8]
		push	eax
		sar	esi, 1
		push	esi
		mov	ecx, edi
		call	edx
		mov	edx, [ebp+arg_0]
		mov	ecx, [edi+14h]
		mov	eax, [ecx]
		mov	eax, [eax+4]
		push	4
		push	4
		push	edx
		mov	edx, [ebp+var_8]
		push	edx
		call	eax
		test	eax, eax
		jz	short loc_408871
		jle	short loc_40885C
		lea	ebx, [esi-1]
		jmp	short loc_408860
; ---------------------------------------------------------------------------

loc_40885C:				; CODE XREF: sub_408800+55j
		inc	esi
		mov	[ebp+var_4], esi

loc_408860:				; CODE XREF: sub_408800+5Aj
		cmp	[ebp+var_4], ebx
		jle	short loc_408821
		pop	edi
		pop	esi
		or	eax, 0FFFFFFFFh
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_408871:				; CODE XREF: sub_408800+1Fj
					; sub_408800+53j
		pop	edi
		mov	eax, esi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
sub_408800	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_408880	proc near		; DATA XREF: .rdata:0040B870o

var_8		= dword	ptr -8
var_4		= dword	ptr -4
arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		sub	esp, 8
		push	ebx
		push	edi
		mov	edi, ecx
		mov	eax, [edi]
		mov	edx, [eax+18h]
		mov	[ebp+var_4], 0
		call	edx
		mov	ebx, eax
		dec	ebx
		mov	eax, 0FFFFFFFFh
		js	short loc_4088F4
		push	esi

loc_4088A3:				; CODE XREF: sub_408880+63j
		mov	eax, [ebp+var_4]
		add	eax, ebx
		cdq
		sub	eax, edx
		mov	edx, [edi]
		mov	edx, [edx+20h]
		mov	esi, eax
		lea	eax, [ebp+var_8]
		push	eax
		sar	esi, 1
		push	esi
		mov	ecx, edi
		call	edx
		mov	edx, [ebp+arg_0]
		mov	ecx, [edi+14h]
		mov	eax, [ecx]
		mov	eax, [eax+0Ch]
		push	edx
		mov	edx, [ebp+var_8]
		push	4
		push	edx
		call	eax
		test	eax, eax
		jz	short loc_4088F1
		jle	short loc_4088DC
		lea	ebx, [esi-1]
		jmp	short loc_4088E0
; ---------------------------------------------------------------------------

loc_4088DC:				; CODE XREF: sub_408880+55j
		inc	esi
		mov	[ebp+var_4], esi

loc_4088E0:				; CODE XREF: sub_408880+5Aj
		cmp	[ebp+var_4], ebx
		jle	short loc_4088A3
		pop	esi
		pop	edi
		or	eax, 0FFFFFFFFh
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_4088F1:				; CODE XREF: sub_408880+53j
		mov	eax, esi
		pop	esi

loc_4088F4:				; CODE XREF: sub_408880+20j
		pop	edi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
sub_408880	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_408900	proc near		; DATA XREF: .rdata:0040B874o

var_8		= byte ptr -8
var_4		= dword	ptr -4
arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		sub	esp, 8
		push	edi
		mov	edi, ecx
		cmp	byte ptr [edi+18h], 1
		mov	eax, 7FFFFFFEh
		jnz	short loc_408985
		cmp	[ebp+arg_0], 0
		jz	short loc_408985
		mov	eax, [edi]
		mov	edx, [eax+18h]
		push	ebx
		mov	[ebp+var_4], 0
		call	edx
		mov	ebx, eax
		dec	ebx
		mov	eax, 0
		js	short loc_408984
		push	esi

loc_408934:				; CODE XREF: sub_408900+78j
		mov	eax, [ebp+var_4]
		add	eax, ebx
		cdq
		sub	eax, edx
		mov	edx, [edi]
		mov	edx, [edx+20h]
		mov	esi, eax
		lea	eax, [ebp+var_8]
		push	eax
		sar	esi, 1
		push	esi
		mov	ecx, edi
		call	edx
		mov	edx, [ebp+arg_0]
		mov	ecx, [edi+14h]
		mov	eax, [ecx]
		mov	eax, [eax+4]
		push	4
		push	4
		push	edx
		lea	edx, [ebp+var_8]
		push	edx
		call	eax
		test	eax, eax
		jz	short loc_40897C
		jle	short loc_40896F
		lea	ebx, [esi-1]
		jmp	short loc_408975
; ---------------------------------------------------------------------------

loc_40896F:				; CODE XREF: sub_408900+68j
		lea	ecx, [esi+1]
		mov	[ebp+var_4], ecx

loc_408975:				; CODE XREF: sub_408900+6Dj
		cmp	[ebp+var_4], ebx
		jle	short loc_408934
		test	eax, eax

loc_40897C:				; CODE XREF: sub_408900+66j
		lea	eax, [esi+1]
		js	short loc_408983
		mov	eax, esi

loc_408983:				; CODE XREF: sub_408900+7Fj
		pop	esi

loc_408984:				; CODE XREF: sub_408900+31j
		pop	ebx

loc_408985:				; CODE XREF: sub_408900+12j
					; sub_408900+18j
		pop	edi
		mov	esp, ebp
		pop	ebp
		retn	4
sub_408900	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_408990	proc near		; DATA XREF: .rdata:0040B82Co
		mov	eax, ecx
		retn	4
sub_408990	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_4089A0	proc near		; DATA XREF: .rdata:0040B83Co
		mov	eax, [ecx+8]
		sub	eax, [ecx+4]
		sar	eax, 2
		retn
sub_4089A0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_4089B0	proc near		; CODE XREF: sub_409020+78p
					; DATA XREF: .rdata:0040B844o

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch

		push	ebp
		mov	ebp, esp
		push	esi
		mov	esi, ecx
		mov	eax, [esi]
		mov	edx, [eax+18h]
		call	edx
		mov	ecx, [ebp+arg_0]
		cmp	ecx, 7FFFFFFEh
		jnz	short loc_4089CB
		lea	ecx, [eax-1]

loc_4089CB:				; CODE XREF: sub_4089B0+16j
		test	ecx, ecx
		js	short loc_4089E5
		cmp	ecx, eax
		jge	short loc_4089E5
		mov	eax, [esi+4]
		mov	ecx, [eax+ecx*4]
		mov	edx, [ebp+arg_4]
		mov	[edx], ecx
		mov	al, 1
		pop	esi
		pop	ebp
		retn	8
; ---------------------------------------------------------------------------

loc_4089E5:				; CODE XREF: sub_4089B0+1Dj
					; sub_4089B0+21j
		xor	al, al
		pop	esi
		pop	ebp
		retn	8
sub_4089B0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_4089F0	proc near		; DATA XREF: .rdata:0040B840o

arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		push	esi
		mov	esi, ecx
		cmp	byte ptr [esi+18h], 1
		mov	eax, [esi]
		jnz	short loc_408A0E
		mov	ecx, [ebp+arg_0]
		mov	edx, [eax+48h]
		push	ecx
		mov	ecx, esi
		call	edx
		pop	esi
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_408A0E:				; CODE XREF: sub_4089F0+Cj
		mov	edx, [eax+18h]
		call	edx
		mov	ecx, eax
		xor	eax, eax
		test	ecx, ecx
		jle	short loc_408A2D
		mov	esi, [esi+4]
		mov	edx, [ebp+arg_0]

loc_408A21:				; CODE XREF: sub_4089F0+3Bj
		cmp	[esi], edx
		jz	short loc_408A30
		inc	eax
		add	esi, 4
		cmp	eax, ecx
		jl	short loc_408A21

loc_408A2D:				; CODE XREF: sub_4089F0+29j
		or	eax, 0FFFFFFFFh

loc_408A30:				; CODE XREF: sub_4089F0+33j
		pop	esi
		pop	ebp
		retn	4
sub_4089F0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_408A40	proc near		; CODE XREF: sub_408BE0+64p
					; sub_408DC0+38p ...

arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h

		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+arg_4]
		test	eax, eax
		jz	short loc_408A51
		mov	ecx, [ebp+arg_8]
		mov	edx, [ecx]
		mov	[eax], edx

loc_408A51:				; CODE XREF: sub_408A40+8j
		pop	ebp
		retn
sub_408A40	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_408A60	proc near		; CODE XREF: sub_408AF0+2Dp

var_C		= dword	ptr -0Ch
arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		mov	ecx, [ebp+arg_0]
		sub	esp, 0Ch
		xor	eax, eax
		test	ecx, ecx
		jz	short loc_408AB4
		cmp	ecx, 3FFFFFFFh
		ja	short loc_408A8B
		lea	eax, ds:0[ecx*4]
		push	eax		; unsigned int
		call	??2@YAPAXI@Z	; operator new(uint)
		add	esp, 4
		test	eax, eax
		jnz	short loc_408AB4

loc_408A8B:				; CODE XREF: sub_408A60+15j
		lea	ecx, [ebp+arg_0]
		push	ecx
		lea	ecx, [ebp+var_C]
		mov	[ebp+arg_0], 0
		call	ds:??0exception@std@@QAE@ABQBD@Z ; std::exception::exception(char const	* const	&)
		push	offset dword_40C9C4
		lea	edx, [ebp+var_C]
		push	edx
		mov	[ebp+var_C], offset off_40B814
		call	_CxxThrowException
; ---------------------------------------------------------------------------

loc_408AB4:				; CODE XREF: sub_408A60+Dj
					; sub_408A60+29j
		mov	esp, ebp
		pop	ebp
		retn	4
sub_408A60	endp

; ---------------------------------------------------------------------------
		align 10h
; START	OF FUNCTION CHUNK FOR sub_409E70

loc_408AC0:				; CODE XREF: sub_409E70+6j
					; sub_409EA0+6j
		push	esi
		mov	esi, ecx
		cmp	dword ptr [esi], 0
		jz	short loc_408AD9
		call	ds:?_Orphan_all@_Container_base0@std@@QAEXXZ ; std::_Container_base0::_Orphan_all(void)
		mov	eax, [esi]
		push	eax		; void *
		call	??3@YAXPAX@Z	; operator delete(void *)
		add	esp, 4

loc_408AD9:				; CODE XREF: sub_409E70-13AAj
		mov	dword ptr [esi], 0
		mov	dword ptr [esi+4], 0
		mov	dword ptr [esi+8], 0
		pop	esi
		retn
; END OF FUNCTION CHUNK	FOR sub_409E70
; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_408AF0	proc near		; CODE XREF: sub_408B80+52p
					; sub_408BE0+53p ...

arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+arg_0]
		push	esi
		mov	esi, ecx
		cmp	eax, 3FFFFFFFh
		jbe	short loc_408B0B
		push	offset aVectorTTooLong ; "vector<T> too	long"
		call	ds:?_Xlength_error@std@@YAXPBD@Z ; std::_Xlength_error(char const *)

loc_408B0B:				; CODE XREF: sub_408AF0+Ej
		mov	ecx, [esi+8]
		sub	ecx, [esi]
		sar	ecx, 2
		cmp	ecx, eax
		jnb	short loc_408B73
		push	ebx
		push	edi
		push	eax
		lea	ecx, [esi+0Ch]
		call	sub_408A60
		mov	ecx, [esi]
		mov	ebx, eax
		mov	eax, [esi+4]
		sub	eax, ecx
		sar	eax, 2
		lea	edx, ds:0[eax*4]
		push	edx		; Size
		push	ecx		; Src
		push	ebx		; Dst
		call	ds:memmove
		mov	eax, [esi]
		mov	edi, [esi+4]
		sub	edi, eax
		add	esp, 0Ch
		sar	edi, 2
		test	eax, eax
		jz	short loc_408B58
		push	eax		; void *
		call	??3@YAXPAX@Z	; operator delete(void *)
		add	esp, 4

loc_408B58:				; CODE XREF: sub_408AF0+5Dj
		mov	ecx, esi
		call	ds:?_Orphan_all@_Container_base0@std@@QAEXXZ ; std::_Container_base0::_Orphan_all(void)
		mov	eax, [ebp+arg_0]
		lea	edx, [ebx+edi*4]
		lea	ecx, [ebx+eax*4]
		pop	edi
		mov	[esi], ebx
		mov	[esi+8], ecx
		mov	[esi+4], edx
		pop	ebx

loc_408B73:				; CODE XREF: sub_408AF0+25j
		pop	esi
		pop	ebp
		retn	4
sub_408AF0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_408B80	proc near		; CODE XREF: sub_408DC0+25p
					; sub_408DC0+53p

arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		mov	eax, [ecx+4]
		mov	edx, [ebp+arg_0]
		push	esi
		mov	esi, [ecx]
		push	edi
		sub	eax, esi
		mov	edi, 3FFFFFFFh
		sar	eax, 2
		sub	edi, edx
		cmp	edi, eax
		jnb	short loc_408BA8
		push	offset aVectorTTooLong ; "vector<T> too	long"
		call	ds:?_Xlength_error@std@@YAXPBD@Z ; std::_Xlength_error(char const *)

loc_408BA8:				; CODE XREF: sub_408B80+1Bj
		add	eax, edx
		mov	edx, [ecx+8]
		sub	edx, esi
		sar	edx, 2
		cmp	eax, edx
		jbe	short loc_408BD7
		mov	esi, edx
		shr	esi, 1
		mov	edi, 3FFFFFFFh
		sub	edi, esi
		cmp	edi, edx
		jnb	short loc_408BC9
		xor	edx, edx
		jmp	short loc_408BCB
; ---------------------------------------------------------------------------

loc_408BC9:				; CODE XREF: sub_408B80+43j
		add	edx, esi

loc_408BCB:				; CODE XREF: sub_408B80+47j
		cmp	edx, eax
		jnb	short loc_408BD1
		mov	edx, eax

loc_408BD1:				; CODE XREF: sub_408B80+4Dj
		push	edx
		call	sub_408AF0

loc_408BD7:				; CODE XREF: sub_408B80+34j
		pop	edi
		pop	esi
		pop	ebp
		retn	4
sub_408B80	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_408BE0	proc near		; CODE XREF: sub_4090F0+59p

arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		push	esi
		mov	esi, ecx
		mov	eax, [esi+4]
		mov	ecx, [esi+8]
		cmp	eax, ecx
		jnz	short loc_408C38
		mov	edx, [esi]
		sub	eax, edx
		sar	eax, 2
		cmp	eax, 3FFFFFFEh
		jbe	short loc_408C09
		push	offset aVectorTTooLong ; "vector<T> too	long"
		call	ds:?_Xlength_error@std@@YAXPBD@Z ; std::_Xlength_error(char const *)

loc_408C09:				; CODE XREF: sub_408BE0+1Cj
		sub	ecx, edx
		inc	eax
		sar	ecx, 2
		cmp	eax, ecx
		jbe	short loc_408C38
		push	edi
		mov	edx, ecx
		shr	edx, 1
		mov	edi, 3FFFFFFFh
		sub	edi, edx
		cmp	edi, ecx
		pop	edi
		jnb	short loc_408C28
		xor	ecx, ecx
		jmp	short loc_408C2A
; ---------------------------------------------------------------------------

loc_408C28:				; CODE XREF: sub_408BE0+42j
		add	ecx, edx

loc_408C2A:				; CODE XREF: sub_408BE0+46j
		cmp	ecx, eax
		jnb	short loc_408C30
		mov	ecx, eax

loc_408C30:				; CODE XREF: sub_408BE0+4Cj
		push	ecx
		mov	ecx, esi
		call	sub_408AF0

loc_408C38:				; CODE XREF: sub_408BE0+Ej
					; sub_408BE0+31j
		mov	eax, [ebp+arg_0]
		mov	ecx, [esi+4]
		push	eax
		push	ecx
		lea	edx, [esi+0Ch]
		push	edx
		call	sub_408A40
		add	esp, 0Ch
		add	dword ptr [esi+4], 4
		pop	esi
		pop	ebp
		retn	4
sub_408BE0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_408C60	proc near		; CODE XREF: sub_4090F0+7Ap

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h

		push	ebp
		mov	ebp, esp
		mov	edx, [ebp+arg_0]
		push	ebx
		mov	ebx, [ebp+arg_8]
		push	esi
		push	edi
		mov	edi, [ebp+arg_4]
		sub	edi, edx
		mov	ecx, ebx
		sub	ecx, edx
		sar	edi, 2
		sar	ecx, 2
		mov	eax, ecx
		mov	esi, edi
		test	edi, edi
		jz	short loc_408C91

loc_408C83:				; CODE XREF: sub_408C60+2Cj
		cdq
		idiv	esi
		mov	eax, esi
		mov	esi, edx
		test	edx, edx
		jnz	short loc_408C83
		mov	edx, [ebp+arg_0]

loc_408C91:				; CODE XREF: sub_408C60+21j
		cmp	eax, ecx
		jge	short loc_408CEF
		test	eax, eax
		jle	short loc_408CEF
		lea	edx, [edx+eax*4]
		mov	[ebp+arg_4], edx
		nop

loc_408CA0:				; CODE XREF: sub_408C60+8Dj
		lea	ecx, [edx+edi*4]
		mov	esi, edx
		cmp	ecx, ebx
		jnz	short loc_408CB0
		mov	ecx, [ebp+arg_0]
		lea	esp, [esp+0]

loc_408CB0:				; CODE XREF: sub_408C60+47j
					; sub_408C60+82j
		mov	edx, [esi]
		mov	ebx, [ecx]
		mov	[esi], ebx
		mov	ebx, [ebp+arg_8]
		mov	[ecx], edx
		mov	edx, ebx
		sub	edx, ecx
		sar	edx, 2
		mov	esi, ecx
		cmp	edi, edx
		jge	short loc_408CD3
		lea	edx, ds:0[edi*4]
		add	ecx, edx
		jmp	short loc_408CDD
; ---------------------------------------------------------------------------

loc_408CD3:				; CODE XREF: sub_408C60+66j
		mov	ecx, edi
		sub	ecx, edx
		mov	edx, [ebp+arg_0]
		lea	ecx, [edx+ecx*4]

loc_408CDD:				; CODE XREF: sub_408C60+71j
		mov	edx, [ebp+arg_4]
		cmp	ecx, edx
		jnz	short loc_408CB0
		dec	eax
		sub	edx, 4
		mov	[ebp+arg_4], edx
		test	eax, eax
		jg	short loc_408CA0

loc_408CEF:				; CODE XREF: sub_408C60+33j
					; sub_408C60+37j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
sub_408C60	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_408D00	proc near		; CODE XREF: sub_40A850+5p
		mov	eax, ecx
		xor	ecx, ecx
		mov	[eax+4], ecx
		mov	[eax+8], ecx
		mov	[eax+0Ch], ecx
		mov	dword ptr [eax], offset	off_40B824
		mov	[eax+14h], ecx
		mov	[eax+18h], cx
		retn
sub_408D00	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_408D20	proc near		; CODE XREF: sub_4085B0+45p
					; sub_408EA0+6p ...

var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset sub_409E7B
		mov	eax, large fs:0
		push	eax
		push	ecx
		push	ebx
		push	esi
		mov	eax, ___security_cookie
		xor	eax, ebp
		push	eax
		lea	eax, [ebp+var_C]
		mov	large fs:0, eax
		mov	esi, ecx
		mov	[ebp+var_10], esi
		mov	dword ptr [esi], offset	off_40B824
		mov	ecx, [esi+14h]
		xor	ebx, ebx
		mov	[ebp+var_4], ebx
		cmp	ecx, ebx
		jz	short loc_408D67
		mov	eax, [ecx]
		mov	edx, [eax]
		push	1
		call	edx
		mov	[esi+14h], ebx

loc_408D67:				; CODE XREF: sub_408D20+3Aj
		mov	[esi+18h], bx
		mov	[ebp+var_4], 0FFFFFFFFh
		cmp	[esi+4], ebx
		jz	short loc_408D8C
		lea	ecx, [esi+4]
		call	ds:?_Orphan_all@_Container_base0@std@@QAEXXZ ; std::_Container_base0::_Orphan_all(void)
		mov	eax, [esi+4]
		push	eax		; void *
		call	??3@YAXPAX@Z	; operator delete(void *)
		add	esp, 4

loc_408D8C:				; CODE XREF: sub_408D20+55j
		mov	[esi+4], ebx
		mov	[esi+8], ebx
		mov	[esi+0Ch], ebx
		mov	ecx, [ebp+var_C]
		mov	large fs:0, ecx
		pop	ecx
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
sub_408D20	endp

; ---------------------------------------------------------------------------
		align 10h
; [0000000C BYTES: COLLAPSED FUNCTION std::_Func_impl<std::_Callable_obj<_lambda_61710bb2f65fa5c843243e2ef45f5091_,0>,std::allocator<std::_Func_class<void,uint	const &,std::_Nil,std::_Nil,std::_Nil,std::_Nil,std::_Nil,std::_Nil>>,void,uint	const &,std::_Nil,std::_Nil,std::_Nil,std::_Nil,std::_Nil,std::_Nil>::_Do_call(uint const &). PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_408DC0	proc near		; CODE XREF: sub_408ED0+Ep

arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		push	esi
		mov	esi, ecx
		mov	eax, [esi+4]
		push	edi
		mov	edi, [ebp+arg_0]
		cmp	edi, eax
		jnb	short loc_408E0A
		mov	ecx, [esi]
		cmp	ecx, edi
		ja	short loc_408E0A
		sub	edi, ecx
		sar	edi, 2
		cmp	eax, [esi+8]
		jnz	short loc_408DEA
		push	1
		mov	ecx, esi
		call	sub_408B80

loc_408DEA:				; CODE XREF: sub_408DC0+1Fj
		mov	eax, [esi]
		mov	edx, [esi+4]
		lea	ecx, [eax+edi*4]
		push	ecx
		push	edx
		lea	eax, [esi+0Ch]
		push	eax
		call	sub_408A40
		add	esp, 0Ch
		add	dword ptr [esi+4], 4
		pop	edi
		pop	esi
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_408E0A:				; CODE XREF: sub_408DC0+Fj
					; sub_408DC0+15j
		cmp	eax, [esi+8]
		jnz	short loc_408E18
		push	1
		mov	ecx, esi
		call	sub_408B80

loc_408E18:				; CODE XREF: sub_408DC0+4Dj
		mov	ecx, [esi+4]
		push	edi
		push	ecx
		lea	edx, [esi+0Ch]
		push	edx
		call	sub_408A40
		add	esp, 0Ch
		add	dword ptr [esi+4], 4
		pop	edi
		pop	esi
		pop	ebp
		retn	4
sub_408DC0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_408E40(int,	void *Dst, void	*Src)
sub_408E40	proc near		; CODE XREF: sub_408F00+35p

var_4		= dword	ptr -4
arg_0		= dword	ptr  8
Dst		= dword	ptr  0Ch
Src		= dword	ptr  10h

		push	ebp
		mov	ebp, esp
		push	ecx
		mov	edx, [ebp+Src]
		push	esi
		push	edi
		mov	edi, ecx
		mov	ecx, [ebp+Dst]
		mov	esi, ecx
		mov	[ebp+var_4], esi
		cmp	ecx, edx
		jz	short loc_408E8A
		mov	eax, [edi+4]
		sub	eax, edx
		push	ebx
		sar	eax, 2
		lea	esi, ds:0[eax*4]
		push	esi		; Size
		push	edx		; Src
		push	ecx		; Dst
		mov	ebx, ecx
		call	ds:memmove
		mov	eax, [ebp+arg_0]
		add	esp, 0Ch
		add	esi, ebx
		mov	ecx, ebx
		pop	ebx
		mov	[edi+4], esi
		pop	edi
		mov	[eax], ecx
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn	0Ch
; ---------------------------------------------------------------------------

loc_408E8A:				; CODE XREF: sub_408E40+15j
		mov	eax, [ebp+arg_0]
		pop	edi
		mov	[eax], esi
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn	0Ch
sub_408E40	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __thiscall sub_408EA0(void *, char)
sub_408EA0	proc near		; DATA XREF: .rdata:off_40B824o

arg_0		= byte ptr  8

		push	ebp
		mov	ebp, esp
		push	esi
		mov	esi, ecx
		call	sub_408D20
		test	[ebp+arg_0], 1
		jz	short loc_408EBA
		push	esi		; void *
		call	??3@YAXPAX@Z	; operator delete(void *)
		add	esp, 4

loc_408EBA:				; CODE XREF: sub_408EA0+Fj
		mov	eax, esi
		pop	esi
		pop	ebp
		retn	4
sub_408EA0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_408ED0	proc near		; CODE XREF: sub_408F80+74p
					; DATA XREF: .rdata:0040B850o

arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+arg_0]
		push	esi
		push	edi
		mov	edi, ecx
		push	eax
		lea	ecx, [edi+4]
		call	sub_408DC0
		mov	byte ptr [edi+18h], 0
		mov	eax, [edi+8]
		sub	eax, [edi+4]
		pop	edi
		sar	eax, 2
		dec	eax
		pop	esi
		pop	ebp
		retn	4
sub_408ED0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_408F00	proc near		; DATA XREF: .rdata:0040B858o

arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		push	esi
		mov	esi, ecx
		mov	eax, [esi]
		mov	edx, [eax+18h]
		call	edx
		mov	edx, [ebp+arg_0]
		cmp	edx, 7FFFFFFEh
		jnz	short loc_408F1B
		lea	edx, [eax-1]

loc_408F1B:				; CODE XREF: sub_408F00+16j
		test	edx, edx
		js	short loc_408F3A
		cmp	edx, eax
		jge	short loc_408F3A
		mov	eax, [esi+4]
		lea	ecx, [esi+4]
		lea	eax, [eax+edx*4]
		lea	edx, [eax+4]
		push	edx		; Src
		push	eax		; Dst
		lea	edx, [ebp+arg_0]
		push	edx		; int
		call	sub_408E40

loc_408F3A:				; CODE XREF: sub_408F00+1Dj
					; sub_408F00+21j
		pop	esi
		pop	ebp
		retn	4
sub_408F00	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_408F40	proc near		; CODE XREF: sub_409020+9Ap
					; DATA XREF: .rdata:0040B860o
		push	ebx
		mov	ebx, ecx
		mov	ecx, [ebx+8]
		push	esi
		mov	esi, [ebx+4]
		cmp	esi, ecx
		jz	short loc_408F6F
		mov	eax, ecx
		sub	eax, ecx
		push	edi
		sar	eax, 2
		lea	edi, ds:0[eax*4]
		push	edi		; Size
		push	ecx		; Src
		push	esi		; Dst
		call	ds:memmove
		add	esp, 0Ch
		add	edi, esi
		mov	[ebx+8], edi
		pop	edi

loc_408F6F:				; CODE XREF: sub_408F40+Cj
		pop	esi
		pop	ebx
		retn
sub_408F40	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_408F80	proc near		; CODE XREF: sub_409020+59p

var_14		= dword	ptr -14h
var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4
arg_0		= dword	ptr  8

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset sub_409EAB
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
		mov	esi, ecx
		mov	[ebp+var_14], esi
		xor	edi, edi
		mov	[esi+4], edi
		mov	[esi+8], edi
		mov	[esi+0Ch], edi
		mov	ebx, [ebp+arg_0]
		mov	dword ptr [esi], offset	off_40B824
		mov	[esi+14h], edi
		mov	[esi+18h], di
		mov	eax, [ebx]
		mov	edx, [eax+18h]
		mov	ecx, ebx
		mov	[ebp+var_4], edi
		call	edx
		mov	[ebp+var_10], eax
		test	eax, eax
		jle	short loc_408FFF
		jmp	short loc_408FE0
; ---------------------------------------------------------------------------
		align 10h

loc_408FE0:				; CODE XREF: sub_408F80+5Bj
					; sub_408F80+7Dj
		mov	eax, [ebx]
		mov	edx, [eax+20h]
		lea	ecx, [ebp+arg_0]
		push	ecx
		push	edi
		mov	ecx, ebx
		call	edx
		lea	eax, [ebp+arg_0]
		push	eax
		mov	ecx, esi
		call	sub_408ED0
		inc	edi
		cmp	edi, [ebp+var_10]
		jl	short loc_408FE0

loc_408FFF:				; CODE XREF: sub_408F80+59j
		mov	eax, esi
		mov	ecx, [ebp+var_C]
		mov	large fs:0, ecx
		pop	ecx
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
sub_408F80	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_409020	proc near		; DATA XREF: .rdata:0040B868o

var_2C		= byte ptr -2Ch
var_10		= byte ptr -10h
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4
arg_0		= byte ptr  8
arg_3		= byte ptr  0Bh

		push	ebp
		mov	ebp, esp
		push	0FFFFFFFFh
		push	offset __ehhandler$?_RunAndWait@_StructuredTaskCollection@details@Concurrency@@QAG?AW4_TaskCollectionStatus@23@PAV_UnrealizedChore@23@@Z
		mov	eax, large fs:0
		push	eax
		sub	esp, 20h
		push	ebx
		push	esi
		push	edi
		mov	eax, ___security_cookie
		xor	eax, ebp
		push	eax
		lea	eax, [ebp+var_C]
		mov	large fs:0, eax
		mov	esi, ecx
		cmp	[ebp+arg_0], 1
		jnz	short loc_409054
		mov	byte ptr [esi+18h], 0

loc_409054:				; CODE XREF: sub_409020+2Ej
		cmp	byte ptr [esi+18h], 1
		jz	short loc_4090CE
		mov	al, [esi+19h]
		mov	edx, [esi]
		mov	[ebp+arg_3], al
		mov	eax, [edx+18h]
		mov	word ptr [esi+18h], 101h
		call	eax
		mov	ebx, eax
		xor	edi, edi
		cmp	ebx, edi
		jle	short loc_4090CE
		push	esi
		lea	ecx, [ebp+var_2C]
		call	sub_408F80
		mov	edx, [esi]
		mov	eax, [edx+3Ch]
		mov	ecx, esi
		mov	[ebp+var_4], edi
		call	eax
		test	ebx, ebx
		jle	short loc_4090B1
		mov	edi, edi

loc_409090:				; CODE XREF: sub_409020+8Fj
		lea	ecx, [ebp+var_10]
		push	ecx
		push	edi
		lea	ecx, [ebp+var_2C]
		call	sub_4089B0
		mov	edx, [esi]
		mov	edx, [edx+30h]
		lea	eax, [ebp+var_10]
		push	eax
		push	0
		mov	ecx, esi
		call	edx
		inc	edi
		cmp	edi, ebx
		jl	short loc_409090

loc_4090B1:				; CODE XREF: sub_409020+6Cj
		mov	al, [ebp+arg_3]
		lea	ecx, [ebp+var_2C]
		mov	[esi+19h], al
		call	sub_408F40
		lea	ecx, [ebp+var_2C]
		mov	[ebp+var_4], 0FFFFFFFFh
		call	sub_408D20

loc_4090CE:				; CODE XREF: sub_409020+38j
					; sub_409020+53j
		mov	ecx, [ebp+var_C]
		mov	large fs:0, ecx
		pop	ecx
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
sub_409020	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_4090F0	proc near		; DATA XREF: .rdata:0040B854o

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch

		push	ebp
		mov	ebp, esp
		push	esi
		mov	esi, ecx
		mov	al, 1
		push	edi
		cmp	[esi+19h], al
		jnz	short loc_409114
		cmp	[esi+18h], al
		jnz	short loc_409114
		mov	ecx, [ebp+arg_4]
		mov	eax, [esi]
		mov	edx, [eax+50h]
		push	ecx
		mov	ecx, esi
		call	edx
		mov	edi, eax
		jmp	short loc_40911B
; ---------------------------------------------------------------------------

loc_409114:				; CODE XREF: sub_4090F0+Cj
					; sub_4090F0+11j
		mov	edi, [ebp+arg_0]
		mov	byte ptr [esi+18h], 0

loc_40911B:				; CODE XREF: sub_4090F0+22j
		mov	eax, [esi]
		mov	edx, [eax+18h]
		mov	ecx, esi
		call	edx
		cmp	edi, 7FFFFFFEh
		jnz	short loc_40912E
		mov	edi, eax

loc_40912E:				; CODE XREF: sub_4090F0+3Aj
		test	edi, edi
		js	short loc_40917A
		cmp	edi, eax
		jg	short loc_40917A
		mov	eax, [esi+4]
		mov	ecx, [ebp+arg_4]
		push	ebx
		lea	ebx, [eax+edi*4]
		sub	ebx, eax
		push	ecx
		lea	ecx, [esi+4]
		sar	ebx, 2
		call	sub_408BE0
		mov	eax, [esi+8]
		mov	edx, [esi+4]
		lea	edx, [edx+ebx*4]
		lea	ecx, [eax-4]
		pop	ebx
		cmp	edx, ecx
		jz	short loc_409172
		cmp	ecx, eax
		jz	short loc_409172
		push	0
		push	0
		push	eax
		push	ecx
		push	edx
		call	sub_408C60
		add	esp, 14h

loc_409172:				; CODE XREF: sub_4090F0+6Dj
					; sub_4090F0+71j
		mov	eax, edi
		pop	edi
		pop	esi
		pop	ebp
		retn	8
; ---------------------------------------------------------------------------

loc_40917A:				; CODE XREF: sub_4090F0+40j
					; sub_4090F0+44j
		pop	edi
		or	eax, 0FFFFFFFFh
		pop	esi
		pop	ebp
		retn	8
sub_4090F0	endp

; [0000000F BYTES: COLLAPSED FUNCTION __security_check_cookie(x). PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION operator delete(void *). PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION std::exception::exception(std::exception const &). PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000004C BYTES: COLLAPSED FUNCTION type_info::`vector deleting destructor'(uint). PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION std::exception::what(void). PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION operator new(uint). PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [000000A1 BYTES: COLLAPSED FUNCTION __onexit.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000017 BYTES: COLLAPSED FUNCTION _atexit. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION operator new[](uint). PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000004B BYTES: COLLAPSED FUNCTION _pre_cpp_init. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000189 BYTES: COLLAPSED FUNCTION ___tmainCRTStartup. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [000000BA BYTES: COLLAPSED FUNCTION $LN33. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000000A BYTES: COLLAPSED FUNCTION start. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION __CxxFrameHandler3. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION _CxxThrowException. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION memset. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION operator delete[](void *). PRESS KEYPAD CTRL-"+" TO EXPAND]
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

cs10:					; CODE XREF: .text:00409599j
		cmp	ecx, eax
		jb	short cs20
		mov	eax, ecx
		pop	ecx
		xchg	eax, esp
		mov	eax, [eax]
		mov	[esp], eax
		retn
; ---------------------------------------------------------------------------

cs20:					; CODE XREF: .text:00409586j
		sub	eax, 1000h
		test	[eax], eax
		jmp	short cs10
; [00000106 BYTES: COLLAPSED FUNCTION ___report_gsfailure. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [0000005E BYTES: COLLAPSED FUNCTION __ArrayUnwind(void *,uint,int,void (*)(void *)). PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000063 BYTES: COLLAPSED FUNCTION `eh vector destructor iterator'(void *,uint,int,void (*)(void *)). PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION _unlock. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION __dllonexit. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION _lock. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000045 BYTES: COLLAPSED FUNCTION __SEH_prolog4. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000014 BYTES: COLLAPSED FUNCTION __SEH_epilog4. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000025 BYTES: COLLAPSED FUNCTION __except_handler4. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000042 BYTES: COLLAPSED FUNCTION __CxxUnhandledExceptionFilter(_EXCEPTION_POINTERS	*). PRESS KEYPAD CTRL-"+" TO EXPAND]

; =============== S U B	R O U T	I N E =======================================


sub_409840	proc near		; DATA XREF: .rdata:0040B2E4o
		push	offset ?__CxxUnhandledExceptionFilter@@YGJPAU_EXCEPTION_POINTERS@@@Z ; lpTopLevelExceptionFilter
		call	ds:SetUnhandledExceptionFilter
		xor	eax, eax
		retn
sub_409840	endp

; [00000006 BYTES: COLLAPSED FUNCTION _amsg_exit. PRESS	KEYPAD CTRL-"+"	TO EXPAND]

; =============== S U B	R O U T	I N E =======================================


sub_409854	proc near		; CODE XREF: $LN33+81p
		mov	edi, edi
		push	esi
		mov	eax, offset dword_40C524
		mov	esi, offset dword_40C524
		push	edi
		mov	edi, eax
		cmp	eax, esi
		jnb	short loc_409877

loc_409868:				; CODE XREF: sub_409854+21j
		mov	eax, [edi]
		test	eax, eax
		jz	short loc_409870
		call	eax

loc_409870:				; CODE XREF: sub_409854+18j
		add	edi, 4
		cmp	edi, esi
		jb	short loc_409868

loc_409877:				; CODE XREF: sub_409854+12j
		pop	edi
		pop	esi
		retn
sub_409854	endp


; =============== S U B	R O U T	I N E =======================================


; void __cdecl sub_40987A()
sub_40987A	proc near		; DATA XREF: _pre_cpp_inito
		mov	edi, edi
		push	esi
		mov	eax, offset dword_40C52C
		mov	esi, offset dword_40C52C
		push	edi
		mov	edi, eax
		cmp	eax, esi
		jnb	short loc_40989D

loc_40988E:				; CODE XREF: sub_40987A+21j
		mov	eax, [edi]
		test	eax, eax
		jz	short loc_409896
		call	eax

loc_409896:				; CODE XREF: sub_40987A+18j
		add	edi, 4
		cmp	edi, esi
		jb	short loc_40988E

loc_40989D:				; CODE XREF: sub_40987A+12j
		pop	edi
		pop	esi
		retn
sub_40987A	endp

; [00000006 BYTES: COLLAPSED FUNCTION _XcptFilter. PRESS KEYPAD	CTRL-"+" TO EXPAND]
		align 10h
; [00000035 BYTES: COLLAPSED FUNCTION __ValidateImageBase. PRESS KEYPAD	CTRL-"+" TO EXPAND]
		align 10h
; [00000044 BYTES: COLLAPSED FUNCTION __FindPESection. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 10h
; [000000BC BYTES: COLLAPSED FUNCTION __IsNonwritableInCurrentImage. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION _initterm. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION _initterm_e. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [00000028 BYTES: COLLAPSED FUNCTION __setdefaultprecision. PRESS KEYPAD CTRL-"+" TO EXPAND]

; =============== S U B	R O U T	I N E =======================================


sub_409A30	proc near		; CODE XREF: $LN33+86p
					; DATA XREF: $LN33+94o
		xor	eax, eax
		retn
sub_409A30	endp

; [0000009B BYTES: COLLAPSED FUNCTION ___security_init_cookie. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION _crt_debugger_hook. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION terminate(void). PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION type_info::_type_info_dtor_internal_method(void).	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION _except_handler4_common. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION _invoke_watson. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION _controlfp_s. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION CObject::GetRuntimeClass(void). PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION AfxParseURL(wchar_t const	*,ulong	&,ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>> &,ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>	&,ushort &). PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION AFX_MAINTAIN_STATE2::~AFX_MAINTAIN_STATE2(void). PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION AFX_MAINTAIN_STATE2::AFX_MAINTAIN_STATE2(AFX_MODULE_STATE	*). PRESS KEYPAD CTRL-"+" TO EXPAND]

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __stdcall	sub_409B0A(HWND, unsigned int, unsigned	int, __int32)
sub_409B0A	proc near		; DATA XREF: sub_40A866+7o

var_1C		= byte ptr -1Ch
var_4		= dword	ptr -4
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h
arg_C		= dword	ptr  14h

		push	10h
		mov	eax, offset sub_409EFB
		call	__EH_prolog3
		call	sub_406540
		push	offset dword_40F600
		lea	ecx, [ebp+var_1C]
		call	??0AFX_MAINTAIN_STATE2@@QAE@PAVAFX_MODULE_STATE@@@Z ; AFX_MAINTAIN_STATE2::AFX_MAINTAIN_STATE2(AFX_MODULE_STATE	*)
		push	[ebp+arg_C]	; __int32
		and	[ebp+var_4], 0
		push	[ebp+arg_8]	; unsigned int
		push	[ebp+arg_4]	; unsigned int
		push	[ebp+arg_0]	; HWND
		call	?AfxWndProc@@YGJPAUHWND__@@IIJ@Z ; AfxWndProc(HWND__ *,uint,uint,long)
		or	[ebp+var_4], 0FFFFFFFFh
		lea	ecx, [ebp+var_1C] ; this
		mov	esi, eax
		call	??1AFX_MAINTAIN_STATE2@@QAE@XZ ; AFX_MAINTAIN_STATE2::~AFX_MAINTAIN_STATE2(void)
		mov	eax, esi
		call	__EH_epilog3
		retn	10h
sub_409B0A	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_409B55	proc near		; DATA XREF: .rdata:0040B8E8o

arg_4		= dword	ptr  0Ch

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		cmp	[ebp+arg_4], 1
		jnz	short loc_409B90
		push	2000h		; uBytes
		push	0		; uFlags
		call	ds:LocalAlloc
		test	eax, eax
		jz	short loc_409BAF
		push	esi
		push	eax		; hMem
		call	ds:LocalFree
		call	?AfxGetThreadState@@YGPAV_AFX_THREAD_STATE@@XZ ; AfxGetThreadState(void)
		push	offset dword_40F600 ; struct AFX_MODULE_STATE *
		mov	esi, eax
		call	?AfxSetModuleState@@YGPAVAFX_MODULE_STATE@@PAV1@@Z ; AfxSetModuleState(AFX_MODULE_STATE	*)
		mov	[esi+8], eax
		pop	esi
		jmp	short loc_409BAC
; ---------------------------------------------------------------------------

loc_409B90:				; CODE XREF: sub_409B55+9j
		cmp	[ebp+arg_4], 0
		jnz	short loc_409BAC
		cmp	dword_40F5E4, 0
		jnz	short loc_409BAC
		call	?AfxGetThreadState@@YGPAV_AFX_THREAD_STATE@@XZ ; AfxGetThreadState(void)
		push	dword ptr [eax+8] ; struct AFX_MODULE_STATE *
		call	?AfxSetModuleState@@YGPAVAFX_MODULE_STATE@@PAV1@@Z ; AfxSetModuleState(AFX_MODULE_STATE	*)

loc_409BAC:				; CODE XREF: sub_409B55+39j
					; sub_409B55+3Fj ...
		xor	eax, eax
		inc	eax

loc_409BAF:				; CODE XREF: sub_409B55+1Aj
		pop	ebp
		retn	0Ch
sub_409B55	endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __thiscall sub_409BB3(void *, char)
sub_409BB3	proc near		; DATA XREF: .rdata:off_40B8F0o

arg_0		= byte ptr  8

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		push	esi
		mov	esi, ecx
		call	??1AFX_MODULE_STATE@@UAE@XZ ; AFX_MODULE_STATE::~AFX_MODULE_STATE(void)
		test	[ebp+arg_0], 1
		jz	short loc_409BCC
		push	esi		; void *
		call	??3CNoTrackObject@@SGXPAX@Z ; CNoTrackObject::operator delete(void *)

loc_409BCC:				; CODE XREF: sub_409BB3+11j
		mov	eax, esi
		pop	esi
		pop	ebp
		retn	4
sub_409BB3	endp ; sp-analysis failed

; [00000033 BYTES: COLLAPSED FUNCTION __EH_prolog3. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000014 BYTES: COLLAPSED FUNCTION __EH_epilog3. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION AFX_MODULE_STATE::~AFX_MODULE_STATE(void). PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION AfxWndProc(HWND__	*,uint,uint,long). PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION AfxSetModuleState(AFX_MODULE_STATE *). PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION AfxGetThreadState(void). PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION AFX_MODULE_STATE::AFX_MODULE_STATE(int,long (*)(HWND__ *,uint,uint,long),ulong,int). PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION CNoTrackObject::operator delete(void *). PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [00000006 BYTES: COLLAPSED FUNCTION memcpy. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_409C50	proc near		; DATA XREF: .rdata:0040C534o
		mov	ecx, [ebp-10h]
		add	ecx, 1Ch
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_409C50	endp


; =============== S U B	R O U T	I N E =======================================


sub_409C5C	proc near		; DATA XREF: .rdata:0040C53Co
		mov	ecx, [ebp-10h]
		add	ecx, 20h
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_409C5C	endp


; =============== S U B	R O U T	I N E =======================================


sub_409C68	proc near		; DATA XREF: .rdata:0040C544o
		mov	ecx, [ebp-10h]
		add	ecx, 28h
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_409C68	endp


; =============== S U B	R O U T	I N E =======================================


sub_409C74	proc near		; DATA XREF: sub_406550+5o
					; .rdata:0040C474o

arg_4		= dword	ptr  8

		mov	edx, [esp+arg_4]
		lea	eax, [edx+0Ch]
		mov	ecx, [edx-14h]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	eax, offset dword_40C548
		jmp	__CxxFrameHandler3
sub_409C74	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_409C90	proc near		; DATA XREF: .rdata:0040C594o
		lea	ecx, [ebp-940h]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_409C90	endp


; =============== S U B	R O U T	I N E =======================================


sub_409C9C	proc near		; DATA XREF: .rdata:0040C59Co
		lea	ecx, [ebp-92Ch]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_409C9C	endp


; =============== S U B	R O U T	I N E =======================================


sub_409CA8	proc near		; DATA XREF: .rdata:0040C5A4o
		lea	ecx, [ebp-938h]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_409CA8	endp


; =============== S U B	R O U T	I N E =======================================


sub_409CB4	proc near		; DATA XREF: .rdata:0040C5ACo

; FUNCTION CHUNK AT 00405580 SIZE 00000012 BYTES

		lea	ecx, [ebp-914h]
		jmp	loc_405580
sub_409CB4	endp


; =============== S U B	R O U T	I N E =======================================


sub_409CBF	proc near		; DATA XREF: .rdata:0040C5B4o
					; .rdata:0040C5BCo
		lea	ecx, [ebp-928h]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_409CBF	endp


; =============== S U B	R O U T	I N E =======================================


sub_409CCB	proc near		; DATA XREF: sub_406810+5o
					; .rdata:0040C478o

arg_4		= dword	ptr  8

		mov	edx, [esp+arg_4]
		lea	eax, [edx+0Ch]
		mov	ecx, [edx-974h]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	ecx, [edx-4]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	eax, offset dword_40C56C
		jmp	__CxxFrameHandler3
sub_409CCB	endp

; ---------------------------------------------------------------------------
		align 10h
; [0000000B BYTES: COLLAPSED FUNCTION __unwindfunclet$?CloneAndReset@GlobalNode@details@Concurrency@@QAEXPAUSchedulerNode@23@@Z$0. PRESS KEYPAD	CTRL-"+" TO EXPAND]
; [0000001B BYTES: COLLAPSED FUNCTION __ehhandler$?CloneAndReset@GlobalNode@details@Concurrency@@QAEXPAUSchedulerNode@23@@Z. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_409D30	proc near		; DATA XREF: .rdata:0040C5F0o
		mov	eax, [ebp-10h]
		and	eax, 1
		jz	locret_409D49
		and	dword ptr [ebp-10h], 0FFFFFFFEh
		mov	ecx, [ebp+8]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
; ---------------------------------------------------------------------------

locret_409D49:				; CODE XREF: sub_409D30+6j
		retn
sub_409D30	endp


; =============== S U B	R O U T	I N E =======================================


sub_409D4A	proc near		; DATA XREF: sub_407000+5o
					; .rdata:0040C480o

arg_4		= dword	ptr  8

		mov	edx, [esp+arg_4]
		lea	eax, [edx+0Ch]
		mov	ecx, [edx-14h]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	eax, offset dword_40C5F4
		jmp	__CxxFrameHandler3
sub_409D4A	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_409D70	proc near		; DATA XREF: .rdata:0040C61Co
		lea	ecx, [ebp+8]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_409D70	endp


; =============== S U B	R O U T	I N E =======================================


sub_409D79	proc near		; DATA XREF: sub_4070D0+5o
					; sub_407180+5o ...

arg_4		= dword	ptr  8

		mov	edx, [esp+arg_4]
		lea	eax, [edx+0Ch]
		mov	ecx, [edx-4]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	eax, offset dword_40C620
		jmp	__CxxFrameHandler3
sub_409D79	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_409DA0	proc near		; DATA XREF: .rdata:0040C648o
		lea	ecx, [ebp-11Ch]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_409DA0	endp


; =============== S U B	R O U T	I N E =======================================


sub_409DAC	proc near		; DATA XREF: .rdata:0040C650o
		lea	ecx, [ebp-124h]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_409DAC	endp


; =============== S U B	R O U T	I N E =======================================


sub_409DB8	proc near		; DATA XREF: sub_407290+5o
					; .rdata:0040C488o

arg_4		= dword	ptr  8

		mov	edx, [esp+arg_4]
		lea	eax, [edx+0Ch]
		mov	ecx, [edx-128h]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	ecx, [edx-4]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	eax, offset dword_40C654
		jmp	__CxxFrameHandler3
sub_409DB8	endp


; =============== S U B	R O U T	I N E =======================================


sub_409DE0	proc near		; DATA XREF: sub_408420+5o
					; .rdata:0040C48Co

arg_4		= dword	ptr  8

		mov	edx, [esp+arg_4]
		lea	eax, [edx+0Ch]
		mov	ecx, [edx-14h]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	eax, offset dword_40C6AC
		jmp	__CxxFrameHandler3
sub_409DE0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_409E00	proc near		; DATA XREF: sub_408490+5o
					; .rdata:0040C490o

arg_4		= dword	ptr  8

		mov	edx, [esp+arg_4]
		lea	eax, [edx+0Ch]
		mov	ecx, [edx-14h]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	eax, offset dword_40C704
		jmp	__CxxFrameHandler3
sub_409E00	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_409E20	proc near		; DATA XREF: sub_408510+5o
					; .rdata:0040C494o

arg_4		= dword	ptr  8

		mov	edx, [esp+arg_4]
		lea	eax, [edx+0Ch]
		mov	ecx, [edx-14h]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	eax, offset dword_40C75C
		jmp	__CxxFrameHandler3
sub_409E20	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_409E40	proc near		; DATA XREF: .rdata:0040C784o
		mov	ecx, [ebp-10h]
		add	ecx, 4
		jmp	sub_408D20
sub_409E40	endp


; =============== S U B	R O U T	I N E =======================================


sub_409E4B	proc near		; DATA XREF: sub_4085B0+5o
					; .rdata:0040C498o

arg_4		= dword	ptr  8

		mov	edx, [esp+arg_4]
		lea	eax, [edx+0Ch]
		mov	ecx, [edx-0Ch]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	eax, offset dword_40C788
		jmp	__CxxFrameHandler3
sub_409E4B	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_409E70	proc near		; DATA XREF: .rdata:0040C7B0o

; FUNCTION CHUNK AT 00408AC0 SIZE 0000002F BYTES

		mov	ecx, [ebp-10h]
		add	ecx, 4
		jmp	loc_408AC0
sub_409E70	endp


; =============== S U B	R O U T	I N E =======================================


sub_409E7B	proc near		; DATA XREF: sub_408D20+5o
					; .rdata:0040C49Co

arg_4		= dword	ptr  8

		mov	edx, [esp+arg_4]
		lea	eax, [edx+0Ch]
		mov	ecx, [edx-10h]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	eax, offset dword_40C7B4
		jmp	__CxxFrameHandler3
sub_409E7B	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_409EA0	proc near		; DATA XREF: .rdata:0040C7DCo
		mov	ecx, [ebp-14h]
		add	ecx, 4
		jmp	loc_408AC0
sub_409EA0	endp


; =============== S U B	R O U T	I N E =======================================


sub_409EAB	proc near		; DATA XREF: sub_408F80+5o
					; .rdata:0040C4A0o

arg_4		= dword	ptr  8

		mov	edx, [esp+arg_4]
		lea	eax, [edx+0Ch]
		mov	ecx, [edx-18h]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	eax, offset dword_40C7E0
		jmp	__CxxFrameHandler3
sub_409EAB	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_409ED0	proc near		; DATA XREF: .rdata:0040C808o
		lea	ecx, [ebp-2Ch]
		jmp	sub_408D20
sub_409ED0	endp

; [0000001B BYTES: COLLAPSED FUNCTION __ehhandler$?_RunAndWait@_StructuredTaskCollection@details@Concurrency@@QAG?AW4_TaskCollectionStatus@23@PAV_UnrealizedChore@23@@Z. PRESS KEYPAD CTRL-"+" TO EXPAND]

; =============== S U B	R O U T	I N E =======================================


sub_409EF3	proc near		; DATA XREF: .rdata:0040C8D0o
		lea	ecx, [ebp-1Ch]	; this
		jmp	??1AFX_MAINTAIN_STATE2@@QAE@XZ ; AFX_MAINTAIN_STATE2::~AFX_MAINTAIN_STATE2(void)
sub_409EF3	endp


; =============== S U B	R O U T	I N E =======================================


sub_409EFB	proc near		; DATA XREF: sub_409B0A+2o
					; .rdata:0040C4A8o

arg_4		= dword	ptr  8

		mov	edx, [esp+arg_4]
		lea	eax, [edx+0Ch]
		mov	ecx, [edx-20h]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	eax, offset dword_40C8D4
		jmp	__CxxFrameHandler3
sub_409EFB	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_409F20	proc near		; DATA XREF: .rdata:0040C9E0o
		lea	ecx, [ebp-28h]
		jmp	sub_4076D0
sub_409F20	endp


; =============== S U B	R O U T	I N E =======================================


sub_409F28	proc near		; DATA XREF: .rdata:0040C9E8o
		lea	ecx, [ebp-20h]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_409F28	endp


; =============== S U B	R O U T	I N E =======================================


sub_409F31	proc near		; DATA XREF: .rdata:0040C9D8o
		mov	eax, [ebp-2Ch]
		and	eax, 1
		jz	locret_409F4A
		and	dword ptr [ebp-2Ch], 0FFFFFFFEh
		mov	ecx, [ebp-30h]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
; ---------------------------------------------------------------------------

locret_409F4A:				; CODE XREF: sub_409F31+6j
		retn
sub_409F31	endp


; =============== S U B	R O U T	I N E =======================================


sub_409F4B	proc near		; DATA XREF: sub_406120+5o
					; .rdata:0040C4ACo

arg_4		= dword	ptr  8

		mov	edx, [esp+arg_4]
		lea	eax, [edx+0Ch]
		mov	ecx, [edx-38h]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	ecx, [edx-8]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	eax, offset dword_40C9EC
		jmp	__CxxFrameHandler3
sub_409F4B	endp

; [00000005 BYTES: COLLAPSED FUNCTION AfxTryCleanup(void). PRESS KEYPAD	CTRL-"+" TO EXPAND]

; =============== S U B	R O U T	I N E =======================================


sub_409F75	proc near		; DATA XREF: sub_403B30+5o
					; .rdata:0040C4B0o

arg_4		= dword	ptr  8

		mov	edx, [esp+arg_4]
		lea	eax, [edx+0Ch]
		mov	ecx, [edx-20h]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	eax, offset dword_40CA4C
		jmp	__CxxFrameHandler3
sub_409F75	endp


; =============== S U B	R O U T	I N E =======================================


sub_409F90	proc near		; DATA XREF: .rdata:0040CA74o
		mov	ecx, [ebp+8]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_409F90	endp


; =============== S U B	R O U T	I N E =======================================


sub_409F99	proc near		; DATA XREF: .rdata:0040CA7Co
		mov	ecx, [ebp+8]
		add	ecx, 4
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_409F99	endp


; =============== S U B	R O U T	I N E =======================================


sub_409FA5	proc near		; DATA XREF: .rdata:0040CA84o
		mov	ecx, [ebp+8]
		add	ecx, 8
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_409FA5	endp


; =============== S U B	R O U T	I N E =======================================


sub_409FB1	proc near		; DATA XREF: .rdata:0040CA8Co
		mov	ecx, [ebp+8]
		add	ecx, 0Ch
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_409FB1	endp


; =============== S U B	R O U T	I N E =======================================


sub_409FBD	proc near		; DATA XREF: .rdata:0040CA94o

; FUNCTION CHUNK AT 00405720 SIZE 00000030 BYTES

		mov	esi, [ebp+8]
		add	esi, 518h
		jmp	loc_405720
sub_409FBD	endp


; =============== S U B	R O U T	I N E =======================================


sub_409FCB	proc near		; DATA XREF: .rdata:0040CA9Co
		mov	ecx, [ebp+8]
		add	ecx, 534h
		jmp	sub_406610
sub_409FCB	endp


; =============== S U B	R O U T	I N E =======================================


sub_409FD9	proc near		; DATA XREF: sub_403A20+5o
					; .rdata:0040C4B4o

arg_4		= dword	ptr  8

		mov	edx, [esp+arg_4]
		lea	eax, [edx+0Ch]
		mov	ecx, [edx-10h]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	eax, offset dword_40CAA0
		jmp	__CxxFrameHandler3
sub_409FD9	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_40A000	proc near		; DATA XREF: .rdata:0040CAC8o
		mov	eax, [ebp-1Ch]
		and	eax, 1
		jz	locret_40A019
		and	dword ptr [ebp-1Ch], 0FFFFFFFEh
		mov	ecx, [ebp+8]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
; ---------------------------------------------------------------------------

locret_40A019:				; CODE XREF: sub_40A000+6j
		retn
sub_40A000	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A01A	proc near		; DATA XREF: .rdata:0040CAD0o
		lea	ecx, [ebp-14h]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_40A01A	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A023	proc near		; DATA XREF: sub_403760+5o
					; .rdata:0040C4B8o

arg_4		= dword	ptr  8

		mov	edx, [esp+arg_4]
		lea	eax, [edx+0Ch]
		mov	ecx, [edx-20h]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	eax, offset dword_40CAD4
		jmp	__CxxFrameHandler3
sub_40A023	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_40A040	proc near		; DATA XREF: .rdata:0040CAFCo
		mov	eax, [ebp-10h]
		and	eax, 1
		jz	locret_40A059
		and	dword ptr [ebp-10h], 0FFFFFFFEh
		mov	ecx, [ebp+8]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
; ---------------------------------------------------------------------------

locret_40A059:				; CODE XREF: sub_40A040+6j
		retn
sub_40A040	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A05A	proc near		; DATA XREF: sub_401560+5o
					; sub_4015E0+5o ...

arg_4		= dword	ptr  8

		mov	edx, [esp+arg_4]
		lea	eax, [edx+0Ch]
		mov	ecx, [edx-10h]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	eax, offset dword_40CB00
		jmp	__CxxFrameHandler3
sub_40A05A	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_40A080	proc near		; DATA XREF: .rdata:0040CB2Co
		lea	ecx, [ebp-18h]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_40A080	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A089	proc near		; DATA XREF: .rdata:0040CB34o
		lea	ecx, [ebp-14h]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_40A089	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A092	proc near		; DATA XREF: .rdata:0040CB3Co
		lea	ecx, [ebp-10h]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_40A092	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A09B	proc near		; DATA XREF: .rdata:0040CB44o
		lea	ecx, [ebp-1Ch]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_40A09B	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A0A4	proc near		; DATA XREF: .rdata:0040CB64o
		lea	ecx, [ebp-28h]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_40A0A4	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A0AD	proc near		; DATA XREF: .rdata:0040CB6Co
		lea	ecx, [ebp-24h]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_40A0AD	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A0B6	proc near		; DATA XREF: .rdata:0040CB74o
		lea	ecx, [ebp-20h]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_40A0B6	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A0BF	proc near		; DATA XREF: .rdata:0040CB7Co
		lea	ecx, [ebp+8]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_40A0BF	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A0C8	proc near		; DATA XREF: .rdata:0040CB4Co
		lea	ecx, [ebp-34h]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_40A0C8	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A0D1	proc near		; DATA XREF: .rdata:0040CB54o
		lea	ecx, [ebp-30h]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_40A0D1	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A0DA	proc near		; DATA XREF: .rdata:0040CB5Co
		lea	ecx, [ebp-2Ch]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_40A0DA	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A0E3	proc near		; DATA XREF: sub_4010D0+5o
					; .rdata:0040C4C0o

arg_4		= dword	ptr  8

		mov	edx, [esp+arg_4]
		lea	eax, [edx+0Ch]
		mov	ecx, [edx-2Ch]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	eax, offset dword_40CB80
		jmp	__CxxFrameHandler3
sub_40A0E3	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_40A100	proc near		; DATA XREF: .rdata:0040CBA8o
		lea	ecx, [ebp-20h]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_40A100	endp

; [0000001B BYTES: COLLAPSED FUNCTION __ehhandler$?_RunAndWait@_StructuredTaskCollection@details@Concurrency@@QAG?AW4_TaskCollectionStatus@23@PAV_UnrealizedChore@23@@Z_0. PRESS KEYPAD	CTRL-"+" TO EXPAND]
		align 10h
; [00000005 BYTES: COLLAPSED FUNCTION AfxTryCleanup(void). PRESS KEYPAD	CTRL-"+" TO EXPAND]

; =============== S U B	R O U T	I N E =======================================


sub_40A135	proc near		; DATA XREF: .rdata:0040CBE4o
		lea	ecx, [ebp-234h]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_40A135	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A141	proc near		; DATA XREF: .rdata:0040CBECo
		lea	ecx, [ebp-124h]
		jmp	loc_405580
sub_40A141	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A14C	proc near		; DATA XREF: .rdata:0040CBF4o
		lea	ecx, [ebp-230h]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_40A14C	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A158	proc near		; DATA XREF: .rdata:0040CBFCo
		lea	ecx, [ebp-22Ch]
		jmp	loc_405580
sub_40A158	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A163	proc near		; DATA XREF: sub_404930+5o
					; .rdata:0040C4C8o

arg_4		= dword	ptr  8

		mov	edx, [esp+arg_4]
		lea	eax, [edx+0Ch]
		mov	ecx, [edx-248h]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	ecx, [edx-0Ch]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	eax, offset dword_40CC2C
		jmp	__CxxFrameHandler3
sub_40A163	endp

; ---------------------------------------------------------------------------
		align 10h
; [00000005 BYTES: COLLAPSED FUNCTION AfxTryCleanup(void). PRESS KEYPAD	CTRL-"+" TO EXPAND]

; =============== S U B	R O U T	I N E =======================================


sub_40A195	proc near		; DATA XREF: sub_403C50+5o
					; .rdata:0040C4CCo

arg_4		= dword	ptr  8

		mov	edx, [esp+arg_4]
		lea	eax, [edx+0Ch]
		mov	ecx, [edx-20h]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	eax, offset dword_40CC8C
		jmp	__CxxFrameHandler3
sub_40A195	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A1B0	proc near		; DATA XREF: .rdata:0040CCB4o
		lea	ecx, [ebp-14h]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_40A1B0	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A1B9	proc near		; DATA XREF: sub_401470+5o
					; .rdata:0040C4D0o

arg_4		= dword	ptr  8

		mov	edx, [esp+arg_4]
		lea	eax, [edx+0Ch]
		mov	ecx, [edx-14h]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	eax, offset dword_40CCB8
		jmp	__CxxFrameHandler3
sub_40A1B9	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_40A1E0	proc near		; DATA XREF: .rdata:0040CCE8o
		lea	ecx, [ebp-14h]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_40A1E0	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A1E9	proc near		; DATA XREF: .rdata:0040CCE0o
		mov	eax, [ebp-18h]
		and	eax, 1
		jz	locret_40A202
		and	dword ptr [ebp-18h], 0FFFFFFFEh
		mov	ecx, [ebp+8]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
; ---------------------------------------------------------------------------

locret_40A202:				; CODE XREF: sub_40A1E9+6j
		retn
sub_40A1E9	endp

; [0000001B BYTES: COLLAPSED FUNCTION __ehhandler$?_StructuredChoreWrapper@_UnrealizedChore@details@Concurrency@@CAXPAV123@@Z. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_40A220	proc near		; DATA XREF: .rdata:0040CD14o
		mov	eax, [ebp-10h]
		and	eax, 1
		jz	locret_40A239
		and	dword ptr [ebp-10h], 0FFFFFFFEh
		mov	ecx, [ebp+8]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
; ---------------------------------------------------------------------------

locret_40A239:				; CODE XREF: sub_40A220+6j
		retn
sub_40A220	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A23A	proc near		; DATA XREF: .rdata:0040CD1Co
		lea	ecx, [ebp-14h]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_40A23A	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A243	proc near		; DATA XREF: sub_4064C0+5o
					; .rdata:0040C4D8o

arg_4		= dword	ptr  8

		mov	edx, [esp+arg_4]
		lea	eax, [edx+0Ch]
		mov	ecx, [edx-18h]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	eax, offset dword_40CD20
		jmp	__CxxFrameHandler3
sub_40A243	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_40A260	proc near		; DATA XREF: .rdata:0040CD48o
		lea	ecx, [ebp-10h]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_40A260	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A269	proc near		; DATA XREF: .rdata:0040CD50o
		lea	ecx, [ebp-1Ch]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_40A269	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A272	proc near		; DATA XREF: sub_405FE0+5o
					; .rdata:0040C4DCo

arg_4		= dword	ptr  8

		mov	edx, [esp+arg_4]
		lea	eax, [edx+0Ch]
		mov	ecx, [edx-24h]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	eax, offset dword_40CD54
		jmp	__CxxFrameHandler3
sub_40A272	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_40A290	proc near		; DATA XREF: .rdata:0040CD7Co
		lea	ecx, [ebp-128h]
		jmp	loc_405580
sub_40A290	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A29B	proc near		; DATA XREF: .rdata:0040CD84o
		lea	ecx, [ebp-0A0h]
		jmp	loc_405580
sub_40A29B	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A2A6	proc near		; DATA XREF: .rdata:0040CD8Co
		lea	ecx, [ebp-12Ch]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_40A2A6	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A2B2	proc near		; DATA XREF: sub_4053D0+8o
					; .rdata:0040C4E0o

arg_4		= dword	ptr  8

		mov	edx, [esp+arg_4]
		lea	eax, [edx-124h]
		mov	ecx, [edx-128h]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		add	eax, 0
		mov	ecx, [edx-8]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	eax, offset dword_40CD90
		jmp	__CxxFrameHandler3
sub_40A2B2	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A2E0	proc near		; DATA XREF: .rdata:0040CDB8o
		mov	eax, [ebp-434h]
		and	eax, 1
		jz	locret_40A302
		and	dword ptr [ebp-434h], 0FFFFFFFEh
		mov	ecx, [ebp-428h]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
; ---------------------------------------------------------------------------

locret_40A302:				; CODE XREF: sub_40A2E0+9j
		retn
sub_40A2E0	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A303	proc near		; DATA XREF: sub_405240+5o
					; .rdata:0040C4E4o

arg_4		= dword	ptr  8

		mov	edx, [esp+arg_4]
		lea	eax, [edx+0Ch]
		mov	ecx, [edx-43Ch]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	ecx, [edx-8]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	eax, offset dword_40CE34
		jmp	__CxxFrameHandler3
sub_40A303	endp

; ---------------------------------------------------------------------------
		align 10h
; [00000005 BYTES: COLLAPSED FUNCTION AfxTryCleanup(void). PRESS KEYPAD	CTRL-"+" TO EXPAND]

; =============== S U B	R O U T	I N E =======================================


sub_40A335	proc near		; DATA XREF: .rdata:0040CE6Co
		lea	ecx, [ebp-118h]
		jmp	loc_405580
sub_40A335	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A340	proc near		; DATA XREF: .rdata:0040CE74o
		lea	ecx, [ebp-118h]
		jmp	loc_405580
sub_40A340	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A34B	proc near		; DATA XREF: sub_404AF0+5o
					; .rdata:0040C4E8o

arg_4		= dword	ptr  8

		mov	edx, [esp+arg_4]
		lea	eax, [edx+0Ch]
		mov	ecx, [edx-128h]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	ecx, [edx-8]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	eax, offset dword_40CEA4
		jmp	__CxxFrameHandler3
sub_40A34B	endp

; ---------------------------------------------------------------------------
		align 10h
; [00000005 BYTES: COLLAPSED FUNCTION AfxTryCleanup(void). PRESS KEYPAD	CTRL-"+" TO EXPAND]

; =============== S U B	R O U T	I N E =======================================


sub_40A385	proc near		; DATA XREF: .rdata:0040CEDCo
		lea	ecx, [ebp-30h]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_40A385	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A38E	proc near		; DATA XREF: .rdata:0040CEE4o
		lea	ecx, [ebp-18h]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_40A38E	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A397	proc near		; DATA XREF: .rdata:0040CEECo
		lea	ecx, [ebp-34h]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_40A397	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A3A0	proc near		; DATA XREF: .rdata:0040CEF4o
		lea	ecx, [ebp-34h]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_40A3A0	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A3A9	proc near		; DATA XREF: .rdata:0040CEFCo
		lea	ecx, [ebp-34h]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_40A3A9	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A3B2	proc near		; DATA XREF: .rdata:0040CF04o
		lea	ecx, [ebp-58h]
		jmp	sub_407200
sub_40A3B2	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A3BA	proc near		; DATA XREF: .rdata:0040CF0Co
		lea	ecx, [ebp-2Ch]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_40A3BA	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A3C3	proc near		; DATA XREF: .rdata:0040CF14o
		lea	ecx, [ebp-24h]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_40A3C3	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A3CC	proc near		; DATA XREF: .rdata:0040CF1Co
		lea	ecx, [ebp-1Ch]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_40A3CC	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A3D5	proc near		; DATA XREF: .rdata:0040CF24o
		lea	ecx, [ebp-20h]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_40A3D5	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A3DE	proc near		; DATA XREF: .rdata:0040CF2Co
		lea	ecx, [ebp-28h]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_40A3DE	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A3E7	proc near		; DATA XREF: .rdata:0040CF34o
		lea	ecx, [ebp+8]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_40A3E7	endp

; [0000001B BYTES: COLLAPSED FUNCTION __ehhandler$?PrimaryInvocation@UMSFreeVirtualProcessorRoot@details@Concurrency@@CGXW4_RTL_UMS_SCHEDULER_REASON@@KPAX@Z. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000005 BYTES: COLLAPSED FUNCTION AfxTryCleanup(void). PRESS KEYPAD	CTRL-"+" TO EXPAND]

; =============== S U B	R O U T	I N E =======================================


sub_40A415	proc near		; DATA XREF: .rdata:0040CF9Co
		lea	ecx, [ebp-220h]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_40A415	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A421	proc near		; DATA XREF: .rdata:0040CFA4o
		lea	ecx, [ebp-224h]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_40A421	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A42D	proc near		; DATA XREF: .rdata:0040CFACo
		lea	ecx, [ebp-118h]
		jmp	loc_405580
sub_40A42D	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A438	proc near		; DATA XREF: .rdata:0040CFB4o
		lea	ecx, [ebp-118h]
		jmp	loc_405580
sub_40A438	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A443	proc near		; DATA XREF: .rdata:0040CFBCo
		lea	ecx, [ebp-224h]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_40A443	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A44F	proc near		; DATA XREF: .rdata:0040CFC4o
		lea	ecx, [ebp-228h]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_40A44F	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A45B	proc near		; DATA XREF: .rdata:0040CFCCo
		lea	ecx, [ebp-21Ch]
		jmp	loc_405580
sub_40A45B	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A466	proc near		; DATA XREF: .rdata:0040CFD4o
		lea	ecx, [ebp-230h]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_40A466	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A472	proc near		; DATA XREF: .rdata:0040CFDCo
		lea	ecx, [ebp-118h]
		jmp	loc_405580
sub_40A472	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A47D	proc near		; DATA XREF: .rdata:0040CFE4o
		lea	ecx, [ebp-224h]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_40A47D	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A489	proc near		; DATA XREF: sub_403FF0+5o
					; .rdata:0040C4F0o

arg_4		= dword	ptr  8

		mov	edx, [esp+arg_4]
		lea	eax, [edx+0Ch]
		mov	ecx, [edx-244h]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	ecx, [edx-8]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	eax, offset dword_40D014
		jmp	__CxxFrameHandler3
sub_40A489	endp

; ---------------------------------------------------------------------------
		align 10h
; [00000005 BYTES: COLLAPSED FUNCTION AfxTryCleanup(void). PRESS KEYPAD	CTRL-"+" TO EXPAND]

; =============== S U B	R O U T	I N E =======================================


sub_40A4C5	proc near		; DATA XREF: .rdata:0040D04Co
		lea	ecx, [ebp-728h]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_40A4C5	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A4D1	proc near		; DATA XREF: .rdata:0040D064o
		lea	ecx, [ebp-730h]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_40A4D1	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A4DD	proc near		; DATA XREF: .rdata:0040D06Co
		lea	ecx, [ebp-98h]
		jmp	loc_405580
sub_40A4DD	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A4E8	proc near		; DATA XREF: .rdata:0040D054o
		lea	ecx, [ebp-72Ch]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_40A4E8	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A4F4	proc near		; DATA XREF: .rdata:0040D05Co
		lea	ecx, [ebp-11Ch]
		jmp	loc_405580
sub_40A4F4	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A4FF	proc near		; DATA XREF: sub_403CE0+5o
					; .rdata:0040C4F4o

arg_4		= dword	ptr  8

		mov	edx, [esp+arg_4]
		lea	eax, [edx+0Ch]
		mov	ecx, [edx-740h]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	ecx, [edx-8]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	eax, offset dword_40D09C
		jmp	__CxxFrameHandler3
sub_40A4FF	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_40A530	proc near		; DATA XREF: sub_403150+5o
					; .rdata:0040C4F8o

arg_4		= dword	ptr  8

		mov	edx, [esp+arg_4]
		lea	eax, [edx+0Ch]
		mov	ecx, [edx-24h]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	eax, offset dword_40D128
		jmp	__CxxFrameHandler3
sub_40A530	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_40A550	proc near		; DATA XREF: .rdata:0040D154o
		mov	ecx, [ebp+8]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_40A550	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A559	proc near		; DATA XREF: .rdata:0040D15Co
		mov	ecx, [ebp+8]
		add	ecx, 4
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_40A559	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A565	proc near		; DATA XREF: .rdata:0040D164o
		mov	ecx, [ebp+8]
		add	ecx, 8
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_40A565	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A571	proc near		; DATA XREF: .rdata:0040D16Co
		mov	ecx, [ebp+8]
		add	ecx, 0Ch
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_40A571	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A57D	proc near		; DATA XREF: .rdata:0040D174o
		mov	esi, [ebp+8]
		add	esi, 518h
		jmp	loc_405720
sub_40A57D	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A58B	proc near		; DATA XREF: .rdata:0040D17Co
		mov	ecx, [ebp+8]
		add	ecx, 534h
		jmp	sub_406610
sub_40A58B	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A599	proc near		; DATA XREF: .rdata:0040D184o

; FUNCTION CHUNK AT 00405920 SIZE 00000030 BYTES

		mov	esi, [ebp+8]
		add	esi, 570h
		jmp	loc_405920
sub_40A599	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A5A7	proc near		; DATA XREF: .rdata:0040D18Co
		lea	ecx, [ebp-10h]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_40A5A7	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A5B0	proc near		; DATA XREF: sub_4038E0+5o
					; .rdata:0040C4FCo

arg_4		= dword	ptr  8

		mov	edx, [esp+arg_4]
		lea	eax, [edx+0Ch]
		mov	ecx, [edx-14h]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	eax, offset dword_40D190
		jmp	__CxxFrameHandler3
sub_40A5B0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_40A5D0	proc near		; DATA XREF: sub_403540+5o
					; .rdata:0040C500o

arg_4		= dword	ptr  8

		mov	edx, [esp+arg_4]
		lea	eax, [edx+0Ch]
		mov	ecx, [edx-28h]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	eax, offset dword_40D21C
		jmp	__CxxFrameHandler3
sub_40A5D0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_40A5F0	proc near		; DATA XREF: sub_402CD0+5o
					; .rdata:0040C504o

arg_4		= dword	ptr  8

		mov	edx, [esp+arg_4]
		lea	eax, [edx+0Ch]
		mov	ecx, [edx-14h]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	eax, offset dword_40D274
		jmp	__CxxFrameHandler3
sub_40A5F0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_40A610	proc near		; DATA XREF: .rdata:0040D29Co

; FUNCTION CHUNK AT 00402020 SIZE 0000000C BYTES

		mov	eax, [ebp+8]
		jmp	loc_402020
sub_40A610	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A618	proc near		; DATA XREF: sub_401C00+5o
					; .rdata:0040C508o

arg_4		= dword	ptr  8

		mov	edx, [esp+arg_4]
		lea	eax, [edx+0Ch]
		mov	ecx, [edx-10h]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	eax, offset dword_40D2A0
		jmp	__CxxFrameHandler3
sub_40A618	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_40A640	proc near		; DATA XREF: .rdata:0040D2DCo
		lea	ecx, [ebp-8F4h]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_40A640	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A64C	proc near		; DATA XREF: .rdata:0040D2E4o
		lea	ecx, [ebp-8F0h]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_40A64C	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A658	proc near		; DATA XREF: .rdata:0040D2ECo
		lea	ecx, [ebp-8FCh]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_40A658	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A664	proc near		; DATA XREF: .rdata:0040D2F4o
		lea	ecx, [ebp-8F4h]
		jmp	ds:??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ;	ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>>(void)
sub_40A664	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A670	proc near		; DATA XREF: .rdata:0040D2FCo
		lea	ecx, [ebp-8ECh]
		jmp	loc_405580
sub_40A670	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A67B	proc near		; DATA XREF: .rdata:0040D304o
		lea	ecx, [ebp-8ECh]
		jmp	loc_405580
sub_40A67B	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A686	proc near		; DATA XREF: .rdata:0040D30Co
		lea	ecx, [ebp-8ECh]
		jmp	loc_405580
sub_40A686	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A691	proc near		; DATA XREF: .rdata:0040D314o

; FUNCTION CHUNK AT 00403460 SIZE 00000024 BYTES

		lea	esi, [ebp-84Ch]
		jmp	loc_403460
sub_40A691	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A69C	proc near		; DATA XREF: .rdata:0040D31Co
		lea	esi, [ebp-830h]
		jmp	loc_403460
sub_40A69C	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A6A7	proc near		; DATA XREF: .rdata:0040D324o
		lea	esi, [ebp-868h]
		jmp	loc_403460
sub_40A6A7	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A6B2	proc near		; DATA XREF: .rdata:0040D32Co
		lea	esi, [ebp-868h]
		jmp	loc_403460
sub_40A6B2	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A6BD	proc near		; DATA XREF: sub_404C70+5o
					; .rdata:0040C50Co

arg_4		= dword	ptr  8

		mov	edx, [esp+arg_4]
		lea	eax, [edx+0Ch]
		mov	ecx, [edx-910h]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	ecx, [edx-8]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	eax, offset dword_40D398
		jmp	__CxxFrameHandler3
sub_40A6BD	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_40A6F0	proc near		; DATA XREF: .rdata:0040D3C8o
		mov	eax, [ebp-18h]
		push	eax
		mov	ecx, [ebp-1Ch]
		push	ecx
		call	nullsub_1
		add	esp, 8
		retn
sub_40A6F0	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A701	proc near		; DATA XREF: .rdata:0040D3D0o

; FUNCTION CHUNK AT 00403430 SIZE 00000026 BYTES

		mov	esi, [ebp-1Ch]
		jmp	loc_403430
sub_40A701	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A709	proc near		; DATA XREF: sub_402DA0+5o
					; .rdata:0040C510o

arg_4		= dword	ptr  8

		mov	edx, [esp+arg_4]
		lea	eax, [edx+0Ch]
		mov	ecx, [edx-2Ch]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	eax, offset dword_40D400
		jmp	__CxxFrameHandler3
sub_40A709	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_40A730	proc near		; DATA XREF: .rdata:0040D428o
		lea	esi, [ebp-30h]
		jmp	loc_403430
sub_40A730	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A738	proc near		; DATA XREF: .rdata:0040D430o
		lea	esi, [ebp-68h]
		jmp	loc_403430
sub_40A738	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A740	proc near		; DATA XREF: .rdata:0040D438o
		lea	esi, [ebp-68h]
		jmp	sub_402630
sub_40A740	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A748	proc near		; DATA XREF: sub_401D60+8o
					; .rdata:0040C514o

arg_4		= dword	ptr  8

		mov	edx, [esp+arg_4]
		lea	eax, [edx-6Ch]
		mov	ecx, [edx-70h]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		add	eax, 0Ch
		mov	ecx, [edx-8]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	eax, offset dword_40D43C
		jmp	__CxxFrameHandler3
sub_40A748	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A770	proc near		; DATA XREF: .rdata:0040D464o
		lea	esi, [ebp-2Ch]
		jmp	loc_403430
sub_40A770	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A778	proc near		; DATA XREF: .rdata:0040D46Co
		lea	esi, [ebp-48h]
		jmp	loc_403430
sub_40A778	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A780	proc near		; DATA XREF: .rdata:0040D474o
		lea	esi, [ebp-48h]
		jmp	loc_403430
sub_40A780	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A788	proc near		; DATA XREF: sub_401680+5o
					; .rdata:0040C518o

arg_4		= dword	ptr  8

		mov	edx, [esp+arg_4]
		lea	eax, [edx+0Ch]
		mov	ecx, [edx-5Ch]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	ecx, [edx-4]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	eax, offset dword_40D478
		jmp	__CxxFrameHandler3
sub_40A788	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_40A7B0	proc near		; DATA XREF: .rdata:0040D4B4o
		lea	esi, [ebp-484h]
		jmp	loc_403430
sub_40A7B0	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A7BB	proc near		; DATA XREF: .rdata:0040D4BCo
		lea	esi, [ebp-44Ch]
		jmp	loc_403430
sub_40A7BB	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A7C6	proc near		; DATA XREF: .rdata:0040D4C4o
		lea	esi, [ebp-430h]
		jmp	loc_403430
sub_40A7C6	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A7D1	proc near		; DATA XREF: .rdata:0040D4CCo
		lea	eax, [ebp-0A10h]
		push	eax
		call	sub_403A20
		retn
sub_40A7D1	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A7DE	proc near		; DATA XREF: .rdata:0040D4D4o
		lea	eax, [ebp-0A34h]
		push	eax
		call	sub_401C00
		retn
sub_40A7DE	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A7EB	proc near		; DATA XREF: .rdata:0040D4DCo
		lea	esi, [ebp-468h]
		jmp	loc_403460
sub_40A7EB	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A7F6	proc near		; DATA XREF: .rdata:0040D4E4o
		lea	eax, [ebp-0A34h]
		jmp	loc_402020
sub_40A7F6	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A801	proc near		; DATA XREF: sub_4017D0+5o
					; .rdata:0040C51Co

arg_4		= dword	ptr  8

		mov	edx, [esp+arg_4]
		lea	eax, [edx+0Ch]
		mov	ecx, [edx-0A40h]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	ecx, [edx-8]
		xor	ecx, eax
		call	@__security_check_cookie@4 ; __security_check_cookie(x)
		mov	eax, offset dword_40D550
		jmp	__CxxFrameHandler3
sub_40A801	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_40A830	proc near		; DATA XREF: .rdata:0040B2D4o
		push	0
		mov	ecx, offset dword_40F6F8
		call	ds:??0CWinApp@@QAE@PB_W@Z ; CWinApp::CWinApp(wchar_t const *)
		push	offset sub_40A8A0 ; void (__cdecl *)()
		call	_atexit
		pop	ecx
		retn
sub_40A830	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


sub_40A850	proc near		; DATA XREF: .rdata:0040B2D0o
		mov	ecx, offset dword_40F01C
		call	sub_408D00
		push	offset sub_40A8B0 ; void (__cdecl *)()
		call	_atexit
		pop	ecx
		retn
sub_40A850	endp


; =============== S U B	R O U T	I N E =======================================


sub_40A866	proc near		; DATA XREF: .rdata:0040B2CCo
		push	0
		push	0A00h
		push	offset sub_409B0A
		push	1
		mov	ecx, offset dword_40F600
		call	??0AFX_MODULE_STATE@@QAE@HP6GJPAUHWND__@@IIJ@ZKH@Z ; AFX_MODULE_STATE::AFX_MODULE_STATE(int,long (*)(HWND__ *,uint,uint,long),ulong,int)
		push	offset sub_40A8BA ; void (__cdecl *)()
		mov	dword_40F600, offset off_40B8F0
		call	_atexit
		pop	ecx
		retn
sub_40A866	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


; void __cdecl sub_40A8A0()
sub_40A8A0	proc near		; DATA XREF: sub_40A830+Do
		mov	ecx, offset dword_40F6F8
		jmp	ds:??1CWinApp@@UAE@XZ ;	CWinApp::~CWinApp(void)
sub_40A8A0	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================


; void __cdecl sub_40A8B0()
sub_40A8B0	proc near		; DATA XREF: sub_40A850+Ao
		mov	ecx, offset off_40F018
		jmp	sub_4085B0
sub_40A8B0	endp


; =============== S U B	R O U T	I N E =======================================


; void __cdecl sub_40A8BA()
sub_40A8BA	proc near		; DATA XREF: sub_40A866+18o
		mov	ecx, offset dword_40F600 ; this
		jmp	??1AFX_MODULE_STATE@@UAE@XZ ; AFX_MODULE_STATE::~AFX_MODULE_STATE(void)
sub_40A8BA	endp

; ---------------------------------------------------------------------------
		align 200h
		dd 180h	dup(?)
_text		ends

; Section 2. (virtual address 0000B000)
; Virtual size			: 0000315A (  12634.)
; Section size in file		: 00003200 (  12800.)
; Offset to raw	data for section: 00009E00
; Flags	40000040: Data Readable
; Alignment	: default
;
; Imports from ADVAPI32.dll
;
; ===========================================================================

; Segment type:	Externs
; _idata
; BOOL __stdcall CryptDestroyHash(HCRYPTHASH hHash)
		extrn CryptDestroyHash:dword ; CODE XREF: sub_407670+Bp
					; DATA XREF: sub_407670+Br ...
; BOOL __stdcall CryptReleaseContext(HCRYPTPROV	hProv, DWORD dwFlags)
		extrn CryptReleaseContext:dword	; CODE XREF: sub_407670+21p
					; DATA XREF: sub_407670+21r
; BOOL __stdcall CryptAcquireContextW(HCRYPTPROV *phProv, LPCWSTR szContainer, LPCWSTR szProvider, DWORD dwProvType, DWORD dwFlags)
		extrn CryptAcquireContextW:dword ; CODE	XREF: sub_4075D0+34p
					; sub_4075D0+44p ...
; BOOL __stdcall CryptCreateHash(HCRYPTPROV hProv, ALG_ID Algid, HCRYPTKEY hKey, DWORD dwFlags,	HCRYPTHASH *phHash)
		extrn CryptCreateHash:dword ; CODE XREF: sub_4075D0+80p
					; DATA XREF: sub_4075D0+80r
; BOOL __stdcall CryptHashData(HCRYPTHASH hHash, const BYTE *pbData, DWORD dwDataLen, DWORD dwFlags)
		extrn CryptHashData:dword ; CODE XREF: sub_407570+35p
					; DATA XREF: sub_407570+35r
; BOOL __stdcall CryptGetHashParam(HCRYPTHASH hHash, DWORD dwParam, BYTE *pbData, DWORD	*pdwDataLen, DWORD dwFlags)
		extrn CryptGetHashParam:dword ;	CODE XREF: sub_4074F0+24p
					; sub_407530+19p
					; DATA XREF: ...
; PVOID	__stdcall FreeSid(PSID pSid)
		extrn FreeSid:dword	; CODE XREF: sub_4062E0+116p
					; DATA XREF: sub_4062E0+116r
; BOOL __stdcall IsValidSid(PSID pSid)
		extrn IsValidSid:dword	; CODE XREF: sub_4062E0+F8p
					; DATA XREF: sub_4062E0+F8r
; BOOL __stdcall LookupAccountNameW(LPCWSTR lpSystemName, LPCWSTR lpAccountName, PSID Sid, LPDWORD cbSid, LPWSTR ReferencedDomainName, LPDWORD cchReferencedDomainName,	PSID_NAME_USE peUse)
		extrn LookupAccountNameW:dword ; CODE XREF: sub_4062E0+EDp
					; DATA XREF: sub_4062E0+EDr
; BOOL __stdcall GetUserNameW(LPWSTR lpBuffer, LPDWORD pcbBuffer)
		extrn GetUserNameW:dword ; CODE	XREF: sub_4062E0+87p
					; DATA XREF: sub_4062E0+87r
; LSTATUS __stdcall RegFlushKey(HKEY hKey)
		extrn RegFlushKey:dword	; CODE XREF: sub_401470+C6p
					; DATA XREF: sub_401470+C6r
; LSTATUS __stdcall RegSetValueExW(HKEY	hKey, LPCWSTR lpValueName, DWORD Reserved, DWORD dwType, const BYTE *lpData, DWORD cbData)
		extrn RegSetValueExW:dword ; CODE XREF:	sub_401470+B8p
					; DATA XREF: sub_401470+B8r
; LSTATUS __stdcall RegCloseKey(HKEY hKey)
		extrn RegCloseKey:dword	; CODE XREF: sub_4012C0+142p
					; sub_4012C0+192p
					; DATA XREF: ...
; LSTATUS __stdcall RegQueryValueExW(HKEY hKey,	LPCWSTR	lpValueName, LPDWORD lpReserved, LPDWORD lpType, LPBYTE	lpData,	LPDWORD	lpcbData)
		extrn RegQueryValueExW:dword ; CODE XREF: sub_401000+25p
					; sub_401000+73p
					; DATA XREF: ...
; LSTATUS __stdcall RegOpenKeyExW(HKEY hKey, LPCWSTR lpSubKey, DWORD ulOptions,	REGSAM samDesired, PHKEY phkResult)
		extrn RegOpenKeyExW:dword ; CODE XREF: sub_4012C0+B7p
					; sub_4012C0+10Fp ...

;
; Imports from KERNEL32.dll
;
; int __stdcall	MultiByteToWideChar(UINT CodePage, DWORD dwFlags, LPCSTR lpMultiByteStr, int cbMultiByte, LPWSTR lpWideCharStr,	int cchWideChar)
		extrn MultiByteToWideChar:dword	; CODE XREF: sub_405670+40p
					; sub_405670+69p ...
; int __stdcall	lstrlenA(LPCSTR	lpString)
		extrn lstrlenA:dword	; CODE XREF: sub_405670+18p
					; DATA XREF: sub_405670+18r
; int __stdcall	lstrlenW(LPCWSTR lpString)
		extrn lstrlenW:dword	; CODE XREF: sub_4055A0+17p
					; DATA XREF: sub_4055A0+17r
; int __stdcall	WideCharToMultiByte(UINT CodePage, DWORD dwFlags, LPCWSTR lpWideCharStr, int cchWideChar, LPSTR	lpMultiByteStr,	int cbMultiByte, LPCSTR	lpDefaultChar, LPBOOL lpUsedDefaultChar)
		extrn WideCharToMultiByte:dword	; CODE XREF: sub_403760+75p
					; sub_403760+99p ...
; DWORD	__stdcall GetLastError()
		extrn GetLastError:dword ; CODE	XREF: sub_4055A0+5Cp
					; sub_405670+4Fp ...
; HLOCAL __stdcall LocalFree(HLOCAL hMem)
		extrn LocalFree:dword	; CODE XREF: sub_4017D0+340p
					; sub_409B55+1Ep
					; DATA XREF: ...
; LPWSTR __stdcall GetCommandLineW()
		extrn GetCommandLineW:dword ; CODE XREF: sub_4017D0+3Fp
					; _main+12p
					; DATA XREF: ...
; HMODULE __stdcall GetModuleHandleW(LPCWSTR lpModuleName)
		extrn GetModuleHandleW:dword ; CODE XREF: sub_4012C0+84p
					; sub_4012C0+D6p ...
; FARPROC __stdcall GetProcAddress(HMODULE hModule, LPCSTR lpProcName)
		extrn GetProcAddress:dword ; CODE XREF:	sub_4012C0+87p
					; sub_4012C0+D9p
					; DATA XREF: ...
; HLOCAL __stdcall LocalAlloc(UINT uFlags, SIZE_T uBytes)
		extrn LocalAlloc:dword	; CODE XREF: sub_409B55+12p
					; DATA XREF: sub_409B55+12r
; PVOID	__stdcall EncodePointer(PVOID Ptr)
		extrn EncodePointer:dword ; CODE XREF: __onexit+61p
					; __onexit+72p	...
; PVOID	__stdcall DecodePointer(PVOID Ptr)
		extrn DecodePointer:dword ; CODE XREF: __onexit+18p
					; __onexit+40p	...
; LONG __stdcall InterlockedExchange(volatile LONG *Target, LONG Value)
		extrn InterlockedExchange:dword	; CODE XREF: ___tmainCRTStartup+D7p
					; DATA XREF: ___tmainCRTStartup+D7r
; void __stdcall Sleep(DWORD dwMilliseconds)
		extrn Sleep:dword	; CODE XREF: ___tmainCRTStartup+53p
					; DATA XREF: ___tmainCRTStartup+53r
; LONG __stdcall InterlockedCompareExchange(volatile LONG *Destination,	LONG Exchange, LONG Comperand)
		extrn InterlockedCompareExchange:dword ; CODE XREF: ___tmainCRTStartup+38p
					; DATA XREF: ___tmainCRTStartup+38r
; BOOL __stdcall HeapSetInformation(HANDLE HeapHandle, HEAP_INFORMATION_CLASS HeapInformationClass, PVOID HeapInformation, SIZE_T HeapInformationLength)
		extrn HeapSetInformation:dword ; CODE XREF: ___tmainCRTStartup+1Bp
					; DATA XREF: ___tmainCRTStartup+1Br
; BOOL __stdcall TerminateProcess(HANDLE hProcess, UINT	uExitCode)
		extrn TerminateProcess:dword ; CODE XREF: ___report_gsfailure+FEp
					; DATA XREF: ___report_gsfailure+FEr
; LONG __stdcall UnhandledExceptionFilter(struct _EXCEPTION_POINTERS *ExceptionInfo)
		extrn UnhandledExceptionFilter:dword ; CODE XREF: ___report_gsfailure+DBp
					; DATA XREF: ___report_gsfailure+DBr
; LPTOP_LEVEL_EXCEPTION_FILTER __stdcall SetUnhandledExceptionFilter(LPTOP_LEVEL_EXCEPTION_FILTER lpTopLevelExceptionFilter)
		extrn SetUnhandledExceptionFilter:dword	; CODE XREF: ___report_gsfailure+D0p
					; sub_409840+5p
					; DATA XREF: ...
; BOOL __stdcall IsDebuggerPresent()
		extrn IsDebuggerPresent:dword ;	CODE XREF: ___report_gsfailure+BBp
					; DATA XREF: ___report_gsfailure+BBr
; BOOL __stdcall QueryPerformanceCounter(LARGE_INTEGER *lpPerformanceCount)
		extrn QueryPerformanceCounter:dword ; CODE XREF: ___security_init_cookie+5Fp
					; DATA XREF: ___security_init_cookie+5Fr
; DWORD	__stdcall GetTickCount()
		extrn GetTickCount:dword ; CODE	XREF: ___security_init_cookie+53p
					; DATA XREF: ___security_init_cookie+53r
; DWORD	__stdcall GetCurrentThreadId()
		extrn GetCurrentThreadId:dword ; CODE XREF: ___security_init_cookie+4Bp
					; DATA XREF: ___security_init_cookie+4Br
; DWORD	__stdcall GetCurrentProcessId()
		extrn GetCurrentProcessId:dword	; CODE XREF: ___security_init_cookie+43p
					; DATA XREF: ___security_init_cookie+43r
; void __stdcall GetSystemTimeAsFileTime(LPFILETIME lpSystemTimeAsFileTime)
		extrn GetSystemTimeAsFileTime:dword ; CODE XREF: ___security_init_cookie+37p
					; DATA XREF: ___security_init_cookie+37r
; HGLOBAL __stdcall GlobalAlloc(UINT uFlags, SIZE_T dwBytes)
		extrn GlobalAlloc:dword	; CODE XREF: sub_405FE0+A0p
					; DATA XREF: sub_405FE0+A0r
; LPVOID __stdcall GlobalLock(HGLOBAL hMem)
		extrn GlobalLock:dword	; CODE XREF: sub_405FE0+A9p
					; DATA XREF: sub_405FE0+A9r
; BOOL __stdcall GlobalUnlock(HGLOBAL hMem)
		extrn GlobalUnlock:dword ; CODE	XREF: sub_405FE0+10Ap
					; DATA XREF: sub_405FE0+10Ar
; HGLOBAL __stdcall GlobalFree(HGLOBAL hMem)
		extrn GlobalFree:dword	; CODE XREF: sub_405FE0+111p
					; DATA XREF: sub_405FE0+111r
; HANDLE __stdcall GetCurrentProcess()
		extrn GetCurrentProcess:dword ;	CODE XREF: ___report_gsfailure+F7p
					; DATA XREF: ___report_gsfailure+F7r

;
; Imports from MSVCP100.dll
;
; void __cdecl std::_Xlength_error(char	const *)
		extrn ?_Xlength_error@std@@YAXPBD@Z:dword ; CODE XREF: sub_402A60+73p
					; sub_402EC0+12p ...
; void __cdecl std::_Xout_of_range(char	const *)
		extrn ?_Xout_of_range@std@@YAXPBD@Z:dword ; CODE XREF: sub_4021C0+14p
					; sub_402FC0+Fp ...
; public: void __thiscall std::_Container_base0::_Orphan_all(void)
		extrn ?_Orphan_all@_Container_base0@std@@QAEXXZ:dword
					; CODE XREF: sub_409E70-13A8p
					; sub_408AF0+6Ap ...

;
; Imports from MSVCR100.dll
;
; __declspec(dllimport)	public:	__thiscall std::exception::exception(class std::exception const	&)
		extrn __imp_??0exception@std@@QAE@ABV01@@Z:dword ; CODE	XREF: sub_4034D0+Ap
					; DATA XREF: sub_4034D0+Ar ...
; void __cdecl free(void *Memory)
		extrn free:dword	; CODE XREF: sub_401000+8Dp
					; sub_401000+A6p ...
; public: virtual __thiscall std::exception::~exception(void)
		extrn ??1exception@std@@UAE@XZ:dword ; CODE XREF: sub_4034A0+Cp
					; DATA XREF: sub_403490+6r ...
; public: __thiscall std::exception::exception(char const * const &)
		extrn ??0exception@std@@QAE@ABQBD@Z:dword ; CODE XREF: sub_401CF0+4Fp
					; sub_402DA0+E7p ...
; void *__cdecl	malloc(size_t Size)
		extrn malloc:dword	; CODE XREF: sub_401000+4Ep
					; sub_403760+7Ep ...
; __declspec(dllimport)	void __cdecl operator delete(void *)
		extrn __imp_??3@YAXPAX@Z:dword ; CODE XREF: sub_401680+C8p
					; sub_401680+103p ...
; __declspec(dllimport)	public:	virtual	char const * __thiscall	std::exception::what(void)const
		extrn __imp_?what@exception@std@@UBEPBDXZ:dword
					; DATA XREF: std::exception::what(void)r
; int sprintf_s(char *DstBuf, size_t SizeInBytes, const	char *Format, ...)
		extrn sprintf_s:dword	; CODE XREF: sub_401B38+29p
					; sub_401B98+1Dp ...
; errno_t __cdecl _controlfp_s(unsigned	int *CurrentState, unsigned int	NewValue, unsigned int Mask)
		extrn __imp__controlfp_s:dword ; DATA XREF: _controlfp_sr
		extrn __imp__invoke_watson:dword ; DATA	XREF: _invoke_watsonr
		extrn __imp__except_handler4_common:dword
					; DATA XREF: _except_handler4_commonr
; __declspec(dllimport)	public:	void __thiscall	type_info::_type_info_dtor_internal_method(void)
		extrn __imp_?_type_info_dtor_internal_method@type_info@@QAEXXZ:dword
					; DATA XREF: type_info::_type_info_dtor_internal_method(void)r
; __declspec(dllimport)	void __cdecl terminate(void)
		extrn __imp_?terminate@@YAXXZ:dword ; DATA XREF: terminate(void)r
		extrn __imp__crt_debugger_hook:dword ; DATA XREF: _crt_debugger_hookr
		extrn __set_app_type:dword ; CODE XREF:	$LN33+4Ep
					; DATA XREF: $LN33+4Er
; int fmode
		extrn _fmode:dword	; DATA XREF: $LN33+6Dr
		extrn _commode:dword	; DATA XREF: $LN33+74r
; __declspec(dllimport)	void * __cdecl operator	new(unsigned int)
		extrn __imp_??2@YAPAXI@Z:dword ; CODE XREF: sub_401CF0+Fp
					; sub_402DA0+2Fp ...
; void *__cdecl	memmove(void *Dst, const void *Src, size_t Size)
		extrn memmove:dword	; CODE XREF: sub_402F50+39p
					; sub_402FC0+4Bp ...
; int wprintf(const wchar_t *Format, ...)
		extrn wprintf:dword	; CODE XREF: _main+2Ap	_main+48p
					; DATA XREF: ...
; int __cdecl isalnum(int C)
		extrn isalnum:dword	; CODE XREF: sub_403760+C1p
					; DATA XREF: sub_403760+C1r
		extrn __setusermatherr:dword ; CODE XREF: $LN33+99p
					; DATA XREF: $LN33+99r
		extrn _configthreadlocale:dword	; CODE XREF: $LN33+B0p
					; DATA XREF: $LN33+B0r
		extrn __imp__initterm_e:dword ;	DATA XREF: _initterm_er
		extrn __imp__initterm:dword ; DATA XREF: _inittermr
		extrn __winitenv:dword	; DATA XREF: ___tmainCRTStartup+103r
; void __cdecl exit(int	Code)
		extrn exit:dword	; CODE XREF: ___tmainCRTStartup+133p
					; DATA XREF: ___tmainCRTStartup+133r
		extrn __imp__XcptFilter:dword ;	DATA XREF: _XcptFilterr
; void __cdecl exit(int	Code)
		extrn _exit:dword	; CODE XREF: ___tmainCRTStartup+163p
					; DATA XREF: ___tmainCRTStartup+163r
; void __cdecl cexit()
		extrn _cexit:dword	; CODE XREF: ___tmainCRTStartup+171p
					; DATA XREF: ___tmainCRTStartup+171r
		extrn __wgetmainargs:dword ; CODE XREF:	_pre_cpp_init+30p
					; DATA XREF: _pre_cpp_init+30r
		extrn __imp__amsg_exit:dword ; DATA XREF: _amsg_exitr
; _onexit_t __cdecl onexit(_onexit_t Func)
		extrn _onexit:dword	; CODE XREF: __onexit+25p
					; DATA XREF: __onexit+25r
		extrn __imp__lock:dword	; DATA XREF: _lockr
		extrn __imp___dllonexit:dword ;	DATA XREF: __dllonexitr
		extrn __imp__unlock:dword ; DATA XREF: _unlockr
; void *__cdecl	memcpy(void *Dst, const	void *Src, size_t Size)
		extrn __imp_memcpy:dword ; DATA	XREF: memcpyr
; __time64_t __cdecl time64(__time64_t *Time)
		extrn _time64:dword	; CODE XREF: sub_404410+55p
					; DATA XREF: sub_404410+55r
; char *__cdecl	strncpy(char *Dest, const char *Source,	size_t Count)
		extrn strncpy:dword	; CODE XREF: sub_407230+1Bp
					; DATA XREF: sub_407230+1Br
; __declspec(dllimport)	void __cdecl operator delete[](void *)
		extrn __imp_??_V@YAXPAX@Z:dword	; DATA XREF: operator delete[](void *)r
; void *__cdecl	memset(void *Dst, int Val, size_t Size)
		extrn __imp_memset:dword ; DATA	XREF: memsetr
; void *__cdecl	realloc(void *Memory, size_t NewSize)
		extrn realloc:dword	; CODE XREF: sub_406810+5A4p
					; DATA XREF: sub_406810+5A4r
		extrn __imp__CxxThrowException:dword ; DATA XREF: _CxxThrowExceptionr
		extrn __imp___CxxFrameHandler3:dword ; DATA XREF: __CxxFrameHandler3r
; __declspec(dllimport)	void * __cdecl operator	new[](unsigned int)
		extrn __imp_??_U@YAPAXI@Z:dword	; CODE XREF: sub_4062E0+120p
					; DATA XREF: sub_4062E0+120r ...
; int swprintf_s(wchar_t *Dst, size_t SizeInWords, const wchar_t *Format, ...)
		extrn swprintf_s:dword	; CODE XREF: sub_406120+C0p
					; DATA XREF: sub_406120+C0r
; void *__cdecl	calloc(size_t NumOfElements, size_t SizeOfElements)
		extrn calloc:dword	; CODE XREF: sub_405A40+83p
					; sub_405AE0+83p
					; DATA XREF: ...
; void *__cdecl	recalloc(void *Memory, size_t Count, size_t Size)
		extrn _recalloc:dword	; CODE XREF: sub_405A40+47p
					; sub_405AE0+47p
					; DATA XREF: ...
; int __cdecl wtoi(const wchar_t *Str)
		extrn _wtoi:dword	; CODE XREF: sub_404410+A1p
					; DATA XREF: sub_404410+A1r

;
; Imports from SHELL32.dll
;
; LPWSTR *__stdcall CommandLineToArgvW(LPCWSTR lpCmdLine, int *pNumArgs)
		extrn CommandLineToArgvW:dword ; CODE XREF: sub_4017D0+4Dp
					; DATA XREF: sub_4017D0+4Dr ...

;
; Imports from USER32.dll
;
; HCURSOR __stdcall LoadCursorW(HINSTANCE hInstance, LPCWSTR lpCursorName)
		extrn LoadCursorW:dword	; CODE XREF: sub_406810+63p
					; sub_406810+669p
					; DATA XREF: ...
; HCURSOR __stdcall SetCursor(HCURSOR hCursor)
		extrn SetCursor:dword	; CODE XREF: sub_406810+6Ap
					; sub_406810+670p
					; DATA XREF: ...

;
; Imports from VERSION.dll
;
; BOOL __stdcall VerQueryValueW(LPCVOID	pBlock,	LPCWSTR	lpSubBlock, LPVOID *lplpBuffer,	PUINT puLen)
		extrn VerQueryValueW:dword ; CODE XREF:	sub_405FE0+CFp
					; DATA XREF: sub_405FE0+CFr ...
; BOOL __stdcall GetFileVersionInfoW(LPCWSTR lptstrFilename, DWORD dwHandle, DWORD dwLen, LPVOID lpData)
		extrn GetFileVersionInfoW:dword	; CODE XREF: sub_405FE0+BBp
					; DATA XREF: sub_405FE0+BBr
; DWORD	__stdcall GetFileVersionInfoSizeW(LPCWSTR lptstrFilename, LPDWORD lpdwHandle)
		extrn GetFileVersionInfoSizeW:dword ; CODE XREF: sub_405FE0+91p
					; DATA XREF: sub_405FE0+91r

;
; Imports from WININET.dll
;
; HINTERNET __stdcall HttpOpenRequestW(HINTERNET hConnect, LPCWSTR lpszVerb, LPCWSTR lpszObjectName, LPCWSTR lpszVersion, LPCWSTR lpszReferrer,	LPCWSTR	*lplpszAcceptTypes, DWORD dwFlags, DWORD_PTR dwContext)
		extrn HttpOpenRequestW:dword ; CODE XREF: sub_406810+3F7p
					; DATA XREF: sub_406810+3F7r ...
; BOOL __stdcall HttpQueryInfoW(HINTERNET hRequest, DWORD dwInfoLevel, LPVOID lpBuffer,	LPDWORD	lpdwBufferLength, LPDWORD lpdwIndex)
		extrn HttpQueryInfoW:dword ; CODE XREF:	sub_406810+499p
					; sub_406810+4F3p ...
; BOOL __stdcall InternetSetOptionW(HINTERNET hInternet, DWORD dwOption, LPVOID	lpBuffer, DWORD	dwBufferLength)
		extrn InternetSetOptionW:dword ; CODE XREF: sub_406810+42Bp
					; sub_406810+438p ...
; BOOL __stdcall HttpSendRequestW(HINTERNET hRequest, LPCWSTR lpszHeaders, DWORD dwHeadersLength, LPVOID lpOptional, DWORD dwOptionalLength)
		extrn HttpSendRequestW:dword ; CODE XREF: sub_406810+46Ap
					; DATA XREF: sub_406810+46Ar
; BOOL __stdcall InternetQueryDataAvailable(HINTERNET hFile, LPDWORD lpdwNumberOfBytesAvailable, DWORD dwFlags,	DWORD_PTR dwContext)
		extrn InternetQueryDataAvailable:dword ; CODE XREF: sub_406810+574p
					; DATA XREF: sub_406810+574r
; BOOL __stdcall InternetReadFile(HINTERNET hFile, LPVOID lpBuffer, DWORD dwNumberOfBytesToRead, LPDWORD lpdwNumberOfBytesRead)
		extrn InternetReadFile:dword ; CODE XREF: sub_406810+5ECp
					; DATA XREF: sub_406810+5ECr
; BOOL __stdcall InternetCloseHandle(HINTERNET hInternet)
		extrn InternetCloseHandle:dword	; CODE XREF: sub_406610+30p
					; sub_406810+654p ...
; HINTERNET __stdcall InternetOpenW(LPCWSTR lpszAgent, DWORD dwAccessType, LPCWSTR lpszProxy, LPCWSTR lpszProxyBypass, DWORD dwFlags)
		extrn InternetOpenW:dword ; CODE XREF: sub_406550+78p
					; DATA XREF: sub_406550+78r
; HINTERNET __stdcall InternetConnectW(HINTERNET hInternet, LPCWSTR lpszServerName, INTERNET_PORT nServerPort, LPCWSTR lpszUserName, LPCWSTR lpszPassword, DWORD dwService, DWORD dwFlags, DWORD_PTR dwContext)
		extrn InternetConnectW:dword ; CODE XREF: sub_406810+3B1p
					; DATA XREF: sub_406810+3B1r

;
; Imports from mfc100u.dll
;
; public: class	ATL::CStringT<wchar_t, class StrTraitMFC_DLL<wchar_t, class ATL::ChTraitsCRT<wchar_t>>>	& __thiscall ATL::CStringT<wchar_t, class StrTraitMFC_DLL<wchar_t, class ATL::ChTraitsCRT<wchar_t>>>::operator+=(wchar_t const *)
		extrn ??Y?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAEAAV01@PB_W@Z:dword
					; CODE XREF: sub_406810+197p
					; DATA XREF: sub_406810+197r ...
; public: void __thiscall ATL::CSimpleStringT<wchar_t, 1>::ReleaseBuffer(int)
		extrn ?ReleaseBuffer@?$CSimpleStringT@_W$00@ATL@@QAEXH@Z:dword
					; CODE XREF: sub_406810+508p
					; sub_406810+54Bp ...
; public: wchar_t * __thiscall ATL::CSimpleStringT<wchar_t, 1>::GetBuffer(int)
		extrn ?GetBuffer@?$CSimpleStringT@_W$00@ATL@@QAEPA_WH@Z:dword
					; CODE XREF: sub_406810+4CDp
					; sub_406810+517p ...
; public: void __thiscall ATL::CSimpleStringT<wchar_t, 1>::Append(wchar_t const	*)
		extrn ?Append@?$CSimpleStringT@_W$00@ATL@@QAEXPB_W@Z:dword
					; CODE XREF: sub_403760+106p
					; sub_404410+43Ap ...
; public: void __thiscall ATL::CSimpleStringT<wchar_t, 1>::Append(wchar_t const	*, int)
		extrn ?Append@?$CSimpleStringT@_W$00@ATL@@QAEXPB_WH@Z:dword
					; CODE XREF: sub_403760+DEp
					; DATA XREF: sub_403760+DEr
; public: void __thiscall ATL::CSimpleStringT<wchar_t, 1>::Append(class	ATL::CSimpleStringT<wchar_t, 1>	const &)
		extrn ?Append@?$CSimpleStringT@_W$00@ATL@@QAEXABV12@@Z:dword
					; CODE XREF: sub_403760+112p
					; sub_403FF0+1D7p ...
; public: void __thiscall ATL::CSimpleStringT<wchar_t, 1>::Truncate(int)
		extrn ?Truncate@?$CSimpleStringT@_W$00@ATL@@QAEXH@Z:dword
					; CODE XREF: sub_404C70+131p
					; DATA XREF: sub_404C70+131r
; public: int __thiscall ATL::CStringT<wchar_t,	class StrTraitMFC_DLL<wchar_t, class ATL::ChTraitsCRT<wchar_t>>>::CompareNoCase(wchar_t	const *)const
		extrn ?CompareNoCase@?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QBEHPB_W@Z:dword
					; CODE XREF: sub_404410+14Fp
					; sub_404410+2ACp ...
; public: int __thiscall ATL::CStringT<wchar_t,	class StrTraitMFC_DLL<wchar_t, class ATL::ChTraitsCRT<wchar_t>>>::Find(wchar_t const *,	int)const
		extrn ?Find@?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QBEHPB_WH@Z:dword
					; CODE XREF: sub_404410+117p
					; sub_404410+2D5p ...
; public: class	ATL::CStringT<wchar_t, class StrTraitMFC_DLL<wchar_t, class ATL::ChTraitsCRT<wchar_t>>>	__thiscall ATL::CStringT<wchar_t, class	StrTraitMFC_DLL<wchar_t, class ATL::ChTraitsCRT<wchar_t>>>::Left(int)const
		extrn ?Left@?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QBE?AV12@H@Z:dword
					; CODE XREF: sub_404410+12Bp
					; sub_407290+7Ep
					; DATA XREF: ...
; public: int __thiscall ATL::CStringT<wchar_t,	class StrTraitMFC_DLL<wchar_t, class ATL::ChTraitsCRT<wchar_t>>>::Compare(wchar_t const	*)const
		extrn ?Compare@?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QBEHPB_W@Z:dword
					; CODE XREF: sub_404C70+6Cp
					; DATA XREF: sub_404C70+6Cr
; __declspec(dllimport)	public:	virtual	struct CRuntimeClass * __thiscall CObject::GetRuntimeClass(void)const
		extrn __imp_?GetRuntimeClass@CObject@@UBEPAUCRuntimeClass@@XZ:dword
					; DATA XREF: CObject::GetRuntimeClass(void)r
; public: static struct	CPlex *	__stdcall CPlex::Create(struct CPlex * &, unsigned int,	unsigned int)
		extrn ?Create@CPlex@@SGPAU1@AAPAU1@II@Z:dword ;	CODE XREF: sub_405750+B4p
					; sub_4058A0+17p ...
; public: unsigned int __thiscall CArchive::Read(void *, unsigned int)
		extrn ?Read@CArchive@@QAEIPAXI@Z:dword ; CODE XREF: sub_405C20+7Fp
					; sub_405CD0+7Ep
					; DATA XREF: ...
; void __stdcall AfxThrowArchiveException(int, wchar_t const *)
		extrn ?AfxThrowArchiveException@@YGXHPB_W@Z:dword
					; CODE XREF: sub_405C20+9Dp
					; sub_405CD0+9Cp
					; DATA XREF: ...
; public: void __thiscall CArchive::Write(void const *,	unsigned int)
		extrn ?Write@CArchive@@QAEXPBXI@Z:dword	; CODE XREF: sub_405C20+45p
					; sub_405CD0+44p
					; DATA XREF: ...
; public: void __thiscall CPlex::FreeDataChain(void)
		extrn ?FreeDataChain@CPlex@@QAEXXZ:dword ; CODE	XREF: sub_403A20+6Fp
					; sub_403A20+C4p ...
; public: unsigned long	__thiscall CArchive::ReadCount(void)
		extrn ?ReadCount@CArchive@@QAEKXZ:dword	; CODE XREF: sub_405750+63p
					; sub_405950+41p
					; DATA XREF: ...
; public: void __thiscall CArchive::WriteCount(unsigned	long)
		extrn ?WriteCount@CArchive@@QAEXK@Z:dword ; CODE XREF: sub_405750+2Fp
					; sub_405950+1Ap
					; DATA XREF: ...
; void __stdcall AfxThrowInvalidArgException(void)
		extrn ?AfxThrowInvalidArgException@@YGXXZ:dword	; CODE XREF: sub_403CE0+15Fp
					; sub_405750:loc_40588Ap ...
; __declspec(dllimport)	void __stdcall AfxTryCleanup(void)
		extrn __imp_?AfxTryCleanup@@YGXXZ:dword	; CODE XREF: sub_403B30+ECp
					; sub_403C50+69p ...
; public: void __thiscall ATL::CSimpleStringT<wchar_t, 1>::SetString(wchar_t const *)
		extrn ?SetString@?$CSimpleStringT@_W$00@ATL@@QAEXPB_W@Z:dword
					; CODE XREF: sub_403FF0+E0p
					; sub_403FF0+193p ...
; void __stdcall AfxThrowMemoryException(void)
		extrn ?AfxThrowMemoryException@@YGXXZ:dword ; CODE XREF: sub_405FC0+Dp
					; DATA XREF: sub_405FC0+Dr
; void __stdcall AfxThrowOleException(long)
		extrn ?AfxThrowOleException@@YGXJ@Z:dword ; CODE XREF: sub_405FC0+14p
					; DATA XREF: sub_405FC0+14r
; int __stdcall	AfxWinInit(struct HINSTANCE__ *, struct	HINSTANCE__ *, wchar_t *, int)
		extrn ?AfxWinInit@@YGHPAUHINSTANCE__@@0PA_WH@Z:dword ; CODE XREF: _main+1Bp
					; DATA XREF: _main+1Br
; public: virtual __thiscall CWinApp::~CWinApp(void)
		extrn ??1CWinApp@@UAE@XZ:dword ; DATA XREF: sub_40A8A0+5r
; public: __thiscall CWinApp::CWinApp(wchar_t const *)
		extrn ??0CWinApp@@QAE@PB_W@Z:dword ; CODE XREF:	sub_40A830+7p
					; DATA XREF: sub_40A830+7r
; public: wchar_t __thiscall ATL::CSimpleStringT<wchar_t, 1>::GetAt(int)const
		extrn ?GetAt@?$CSimpleStringT@_W$00@ATL@@QBE_WH@Z:dword
					; CODE XREF: sub_4010D0+19Ap
					; DATA XREF: sub_4010D0+19Ar
; public: bool __thiscall ATL::CSimpleStringT<wchar_t, 1>::IsEmpty(void)const
		extrn ?IsEmpty@?$CSimpleStringT@_W$00@ATL@@QBE_NXZ:dword
					; CODE XREF: sub_406810+2A0p
					; sub_406810+4B8p
					; DATA XREF: ...
; public: int __thiscall ATL::CStringT<wchar_t,	class StrTraitMFC_DLL<wchar_t, class ATL::ChTraitsCRT<wchar_t>>>::Delete(int, int)
		extrn ?Delete@?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAEHHH@Z:dword
					; CODE XREF: sub_4010D0+1B1p
					; sub_404410+198p ...
; protected: static void __cdecl ATL::CSimpleStringT<wchar_t, 1>::Concatenate(class ATL::CSimpleStringT<wchar_t, 1> &, wchar_t const *,	int, wchar_t const *, int)
		extrn ?Concatenate@?$CSimpleStringT@_W$00@ATL@@KAXAAV12@PB_WH1H@Z:dword
					; CODE XREF: sub_401560+63p
					; sub_4015E0+7Ep
					; DATA XREF: ...
; public: __thiscall ATL::CStringT<wchar_t, class StrTraitMFC_DLL<wchar_t, class ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,	class StrTraitMFC_DLL<wchar_t, class ATL::ChTraitsCRT<wchar_t>>>(struct	ATL::IAtlStringMgr *)
		extrn ??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@PAUIAtlStringMgr@1@@Z:dword
					; CODE XREF: sub_401560+3Dp
					; sub_4015E0+3Dp
					; DATA XREF: ...
; public: struct ATL::IAtlStringMgr * __thiscall ATL::CStringT<wchar_t,	class StrTraitMFC_DLL<wchar_t, class ATL::ChTraitsCRT<wchar_t>>>::GetManager(void)const
		extrn ?GetManager@?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QBEPAUIAtlStringMgr@2@XZ:dword
					; CODE XREF: sub_401560+31p
					; sub_4015E0+31p
					; DATA XREF: ...
; public: __thiscall ATL::CStringT<wchar_t, class StrTraitMFC_DLL<wchar_t, class ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,	class StrTraitMFC_DLL<wchar_t, class ATL::ChTraitsCRT<wchar_t>>>(class ATL::CStringT<wchar_t, class StrTraitMFC_DLL<wchar_t, class ATL::ChTraitsCRT<wchar_t>>> const &)
		extrn ??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@ABV01@@Z:dword
					; CODE XREF: sub_403FF0+159p
					; sub_403FF0+37Dp ...
; public: __thiscall ATL::CSimpleStringT<wchar_t, 1>::operator wchar_t const *(void)const
		extrn ??B?$CSimpleStringT@_W$00@ATL@@QBEPB_WXZ:dword
					; CODE XREF: sub_406810+22Bp
					; sub_406810+302p ...
; public: __thiscall ATL::CStringT<wchar_t, class StrTraitMFC_DLL<wchar_t, class ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,	class StrTraitMFC_DLL<wchar_t, class ATL::ChTraitsCRT<wchar_t>>>(wchar_t const *)
		extrn ??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@PB_W@Z:dword
					; CODE XREF: sub_4012C0+46p
					; sub_403FF0+7Ep ...
; public: class	ATL::CStringT<wchar_t, class StrTraitMFC_DLL<wchar_t, class ATL::ChTraitsCRT<wchar_t>>>	& __thiscall ATL::CStringT<wchar_t, class StrTraitMFC_DLL<wchar_t, class ATL::ChTraitsCRT<wchar_t>>>::operator=(class ATL::CStringT<wchar_t, class StrTraitMFC_DLL<wchar_t, class ATL::ChTraitsCRT<wchar_t>>> const &)
		extrn ??4?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAEAAV01@ABV01@@Z:dword
					; CODE XREF: sub_4010D0+106p
					; sub_4010D0+16Cp ...
; __declspec(dllimport)	public:	static void __stdcall CNoTrackObject::operator delete(void *)
		extrn __imp_??3CNoTrackObject@@SGXPAX@Z:dword
					; DATA XREF: CNoTrackObject::operator delete(void *)r
; public: void __cdecl ATL::CStringT<wchar_t, class StrTraitMFC_DLL<wchar_t, class ATL::ChTraitsCRT<wchar_t>>>::Format(wchar_t const *,	...)
		extrn ?Format@?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAAXPB_WZZ:dword
					; CODE XREF: sub_4010D0+8Ep
					; sub_403760+F3p ...
; public: __thiscall ATL::CStringT<wchar_t, class StrTraitMFC_DLL<wchar_t, class ATL::ChTraitsCRT<wchar_t>>>::~CStringT<wchar_t, class StrTraitMFC_DLL<wchar_t,	class ATL::ChTraitsCRT<wchar_t>>>(void)
		extrn ??1?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ:dword
					; CODE XREF: sub_4010D0+10Fp
					; sub_4010D0+118p ...
; public: __thiscall ATL::CStringT<wchar_t, class StrTraitMFC_DLL<wchar_t, class ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,	class StrTraitMFC_DLL<wchar_t, class ATL::ChTraitsCRT<wchar_t>>>(void)
		extrn ??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ:dword
					; CODE XREF: sub_4010D0+39p
					; sub_4010D0+49p ...
; public: int __thiscall ATL::CSimpleStringT<wchar_t, 1>::GetLength(void)const
		extrn ?GetLength@?$CSimpleStringT@_W$00@ATL@@QBEHXZ:dword
					; CODE XREF: sub_406810+2B1p
					; sub_406810+351p
					; DATA XREF: ...
; public: class	ATL::CStringT<wchar_t, class StrTraitMFC_DLL<wchar_t, class ATL::ChTraitsCRT<wchar_t>>>	& __thiscall ATL::CStringT<wchar_t, class StrTraitMFC_DLL<wchar_t, class ATL::ChTraitsCRT<wchar_t>>>::operator=(wchar_t	const *)
		extrn ??4?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAEAAV01@PB_W@Z:dword
					; CODE XREF: sub_401000+81p
					; sub_4010D0+6Dp ...
; public: void __thiscall ATL::CSimpleStringT<wchar_t, 1>::Empty(void)
		extrn ?Empty@?$CSimpleStringT@_W$00@ATL@@QAEXXZ:dword
					; CODE XREF: sub_401000+3Ep
					; sub_401000:loc_40109Fp ...
; __declspec(dllimport)	int __stdcall AfxParseURL(wchar_t const	*, unsigned long &, class ATL::CStringT<wchar_t, class StrTraitMFC_DLL<wchar_t,	class ATL::ChTraitsCRT<wchar_t>>> &, class ATL::CStringT<wchar_t, class	StrTraitMFC_DLL<wchar_t, class ATL::ChTraitsCRT<wchar_t>>> &, unsigned short &)
		extrn __imp_?AfxParseURL@@YGHPB_WAAKAAV?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@2AAG@Z:dword
					; DATA XREF: AfxParseURL(wchar_t const *,ulong &,ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>> &,ATL::CStringT<wchar_t,StrTraitMFC_DLL<wchar_t,ATL::ChTraitsCRT<wchar_t>>> &,ushort	&)r
; public: class	ATL::CStringT<wchar_t, class StrTraitMFC_DLL<wchar_t, class ATL::ChTraitsCRT<wchar_t>>>	& __thiscall ATL::CStringT<wchar_t, class StrTraitMFC_DLL<wchar_t, class ATL::ChTraitsCRT<wchar_t>>>::operator+=(class ATL::CSimpleStringT<wchar_t, 1> const &)
		extrn ??Y?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAEAAV01@ABV?$CSimpleStringT@_W$00@1@@Z:dword
					; CODE XREF: sub_406810+200p
					; DATA XREF: sub_406810+200r
; public: __thiscall ATL::CStringT<wchar_t, class StrTraitMFC_DLL<wchar_t, class ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,	class StrTraitMFC_DLL<wchar_t, class ATL::ChTraitsCRT<wchar_t>>>(wchar_t const *, int)
		extrn ??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@PB_WH@Z:dword
					; CODE XREF: sub_406810+1CFp
					; DATA XREF: sub_406810+1CFr
; public: __thiscall ATL::CStringT<wchar_t, class StrTraitMFC_DLL<wchar_t, class ATL::ChTraitsCRT<wchar_t>>>::CStringT<wchar_t,	class StrTraitMFC_DLL<wchar_t, class ATL::ChTraitsCRT<wchar_t>>>(char const *)
		extrn ??0?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@PBD@Z:dword
					; CODE XREF: sub_407290+40p
					; DATA XREF: sub_407290+40r
; __declspec(dllimport)	public:	__thiscall AFX_MAINTAIN_STATE2::~AFX_MAINTAIN_STATE2(void)
		extrn __imp_??1AFX_MAINTAIN_STATE2@@QAE@XZ:dword
					; DATA XREF: AFX_MAINTAIN_STATE2::~AFX_MAINTAIN_STATE2(void)r
; __declspec(dllimport)	public:	__thiscall AFX_MAINTAIN_STATE2::AFX_MAINTAIN_STATE2(class AFX_MODULE_STATE *)
		extrn __imp_??0AFX_MAINTAIN_STATE2@@QAE@PAVAFX_MODULE_STATE@@@Z:dword
					; DATA XREF: AFX_MAINTAIN_STATE2::AFX_MAINTAIN_STATE2(AFX_MODULE_STATE *)r
; public: __thiscall AFX_EXCEPTION_LINK::AFX_EXCEPTION_LINK(void)
		extrn ??0AFX_EXCEPTION_LINK@@QAE@XZ:dword ; CODE XREF: sub_403B30+32p
					; sub_403C50+30p ...
; __declspec(dllimport)	public:	virtual	__thiscall AFX_MODULE_STATE::~AFX_MODULE_STATE(void)
		extrn __imp_??1AFX_MODULE_STATE@@UAE@XZ:dword
					; DATA XREF: AFX_MODULE_STATE::~AFX_MODULE_STATE(void)r
; __declspec(dllimport)	long __stdcall AfxWndProc(struct HWND__	*, unsigned int, unsigned int, long)
		extrn __imp_?AfxWndProc@@YGJPAUHWND__@@IIJ@Z:dword
					; DATA XREF: AfxWndProc(HWND__ *,uint,uint,long)r
; __declspec(dllimport)	class AFX_MODULE_STATE * __stdcall AfxSetModuleState(class AFX_MODULE_STATE *)
		extrn __imp_?AfxSetModuleState@@YGPAVAFX_MODULE_STATE@@PAV1@@Z:dword
					; DATA XREF: AfxSetModuleState(AFX_MODULE_STATE	*)r
; __declspec(dllimport)	class _AFX_THREAD_STATE	* __stdcall AfxGetThreadState(void)
		extrn __imp_?AfxGetThreadState@@YGPAV_AFX_THREAD_STATE@@XZ:dword
					; DATA XREF: AfxGetThreadState(void)r
; __declspec(dllimport)	public:	__thiscall AFX_MODULE_STATE::AFX_MODULE_STATE(int, long	(__stdcall *)(struct HWND__ *, unsigned	int, unsigned int, long), unsigned long, int)
		extrn __imp_??0AFX_MODULE_STATE@@QAE@HP6GJPAUHWND__@@IIJ@ZKH@Z:dword
					; DATA XREF: AFX_MODULE_STATE::AFX_MODULE_STATE(int,long (*)(HWND__ *,uint,uint,long),ulong,int)r


; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	para public 'DATA' use32
		assume cs:_rdata
		;org 40B2C4h
dword_40B2C4	dd 0			; DATA XREF: ___tmainCRTStartup+BAo
		dd offset _pre_cpp_init
		dd offset sub_40A866
		dd offset sub_40A850
		dd offset sub_40A830
dword_40B2D8	dd 0			; DATA XREF: ___tmainCRTStartup+B5o
dword_40B2DC	dd 0			; DATA XREF: ___tmainCRTStartup+85o
		dd offset $LN33
		dd offset sub_409840
dword_40B2E8	dd 2 dup(0)		; DATA XREF: ___tmainCRTStartup+80o
; Debug	Directory entries
		dd 0			; Characteristics
		dd 56B3856Ah		; TimeDateStamp: Thu Feb 04 17:07:54 2016
		dw 0			; MajorVersion
		dw 0			; MinorVersion
		dd 2			; Type:	IMAGE_DEBUG_TYPE_CODEVIEW
		dd 55h			; SizeOfData
		dd rva asc_40C030	; AddressOfRawData
		dd 0AE30h		; PointerToRawData
aCannotInitiali	db 'Cannot initialize WinInet functions.',0 ; DATA XREF: sub_406550+A0o
		align 4
aUtilitiesCapwi	db 'Utilities\capwininet.cpp',0 ; DATA XREF: sub_406550+8Co
		align 10h
; const	WCHAR szAgent
szAgent:				; DATA XREF: sub_406550+5Do
		unicode	0, <Mozilla/4.0	(compatible; MSIE 6.0;Windows NT 5.1)>,0
aApplicationOct:			; DATA XREF: sub_406690+11Co
		unicode	0, <application/octet-stream>,0
		align 4
aContentTypeMul:			; DATA XREF: sub_406690+EAo
		unicode	0, <Content-Type: multipart/form-data>,0
aContentTypeA_6:			; DATA XREF: sub_406690+D1o
		unicode	0, <Content-Type: application/json>,0
		align 10h
aContentTypeA_5:			; DATA XREF: sub_406690+B8o
		unicode	0, <Content-Type: application/timestamp-query>,0
aContentTypeA_4:			; DATA XREF: sub_406690+9Fo
		unicode	0, <Content-Type: application/xml>,0
aContentTypeA_3:			; DATA XREF: sub_406690+86o
		unicode	0, <Content-Type: application/xfd>,0
aContentTypeA_2:			; DATA XREF: sub_406690+6Do
		unicode	0, <Content-Type: application/xdp>,0
aContentTypeA_1:			; DATA XREF: sub_406690+54o
		unicode	0, <Content-Type: application/vnd.fdf>,0
aContentTypeA_0:			; DATA XREF: sub_406690+3Bo
		unicode	0, <Content-Type: application/pdf>,0
aContentTypeApp:			; DATA XREF: sub_406690+22o
		unicode	0, <Content-Type: application/x-www-form-urlencoded>,0
aGet:					; DATA XREF: sub_406810+124o
		unicode	0, <GET>,0
asc_40B660:				; DATA XREF: sub_406810+B6o
		unicode	0, <*/*>,0
dword_40B668	dd 0A000Dh		; DATA XREF: sub_406810+2ECr
word_40B66C	dw 0			; DATA XREF: sub_406810+2F2r
		align 10h
dword_40B670	dd 3Fh			; DATA XREF: sub_406810+18Co
aPost:					; DATA XREF: sub_406810+11Ao
		unicode	0, <POST>,0
		align 10h
; const	WCHAR szContainer
szContainer:				; DATA XREF: sub_4075D0+3Eo
					; sub_4075D0+5Co
		unicode	0, <Nitro5Container>,0
flt_40B6A0	dd 10.0			; DATA XREF: sub_407850+11Cr
		align 8
dbl_40B6A8	dq 0.1000000014901161	; DATA XREF: sub_407850+7Er
flt_40B6B0	dd 0.1			; DATA XREF: sub_407850+70r
		align 8
dbl_40B6B8	dq 10.0			; DATA XREF: sub_407850+34r
flt_40B6C0	dd -1.0			; DATA XREF: sub_407850+1Er
aBadFloatNumber	db 'Bad float number',0 ; DATA XREF: sub_407A90+808o
		align 4
aBadIntegerNumb	db 'Bad integer number',0 ; DATA XREF: sub_407A90+7B8o
		align 4
aUnknownIdentif	db 'Unknown identifier',0 ; DATA XREF: sub_407A90+718o
		align 10h
aUnrecognizedEs	db 'Unrecognized escape sequence',0 ; DATA XREF: sub_407A90+67Bo
		align 10h
aBadUnicodeCode	db 'Bad unicode codepoint',0 ; DATA XREF: sub_407A90+628o
		align 4
aControlCharact	db 'Control characters not allowed in strings',0
					; DATA XREF: sub_407A90+5DBo
		align 4
aUnexpectedChar	db 'Unexpected character',0 ; DATA XREF: sub_407A90+4F6o
					; sub_407A90+53Fo ...
		align 4
aMismatchClosin	db 'Mismatch closing brace/bracket',0 ; DATA XREF: sub_407A90+4B5o
		align 4
aSecondRoot_Onl	db 'Second root. Only one root allowed',0 ; DATA XREF: sub_407A90+474o
		align 10h
aNotAllObjectsA	db 'Not all objects/arrays have been properly closed',0
					; DATA XREF: sub_407A90+433o
		align 4
		dd offset dword_40C088
off_40B7F8	dd offset sub_408610	; DATA XREF: sub_4085B0+29o
					; .data:off_40F018o
aVectorTTooLong	db 'vector<T> too long',0 ; DATA XREF: sub_408AF0+10o
					; sub_408B80+1Do ...
		align 10h
		dd offset dword_40C324
off_40B814	dd offset sub_4034A0	; DATA XREF: sub_401CF0+5Eo
					; sub_402DA0+F6o ...
		dd offset ?what@exception@std@@UBEPBDXZ	; std::exception::what(void)
		align 10h
		dd offset dword_40C0D0
off_40B824	dd offset sub_408EA0	; DATA XREF: sub_408D00+Do
					; sub_408D20+2Ao ...
		dd offset ?_Do_call@?$_Func_impl@U?$_Callable_obj@V_lambda_61710bb2f65fa5c843243e2ef45f5091_@@$0A@@std@@V?$allocator@V?$_Func_class@XABIU_Nil@std@@U12@U12@U12@U12@U12@@std@@@2@XABIU_Nil@2@U42@U42@U42@U42@U42@@std@@UAEXABI@Z	; std::_Func_impl<std::_Callable_obj<_lambda_61710bb2f65fa5c843243e2ef45f5091_,0>,std::allocator<std::_Func_class<void,uint const &,std::_Nil,std::_Nil,std::_Nil,std::_Nil,std::_Nil,std::_Nil>>,void,uint const &,std::_Nil,std::_Nil,std::_Nil,std::_Nil,std::_Nil,std::_Nil>::_Do_call(uint	const &)
		dd offset sub_408990
		dd offset sub_408640
		dd offset sub_4086C0
		dd offset sub_4086F0
		dd offset sub_4089A0
		dd offset sub_4089F0
		dd offset sub_4089B0
		dd offset sub_408700
		dd offset sub_408740
		dd offset sub_408ED0
		dd offset sub_4090F0
		dd offset sub_408F00
		dd offset sub_4087C0
		dd offset sub_408F40
		dd offset sub_4087F0
		dd offset sub_409020
		dd offset sub_408800
		dd offset sub_408880
		dd offset sub_408900
		dd offset dword_40C220
off_40B87C	dd offset ??_Etype_info@@UAEPAXI@Z ; DATA XREF:	.data:off_40F000o
					; .data:off_40F038o ...
					; type_info::`vector deleting destructor'(uint)
; struct _EXCEPTION_POINTERS ExceptionInfo
ExceptionInfo	_EXCEPTION_POINTERS <offset dword_40F2A8, offset dword_40F300>
					; DATA XREF: ___report_gsfailure+D6o
		dd offset aS		; "S"
		dd offset aM		; "M"
		dd offset aD_0		; "D"
		dd offset aB		; "B"
		dd offset aVal		; "Val"
		dd offset aForceremove	; "ForceRemove"
		dd offset aNoremove	; "NoRemove"
		dd offset aDelete	; "Delete"
		dd offset aS		; "S"
		dd offset aM		; "M"
		dd offset aD_0		; "D"
		dd offset aB		; "B"
		dd offset aVal		; "Val"
		dd offset aForceremove	; "ForceRemove"
		dd offset aNoremove	; "NoRemove"
		dd offset aDelete	; "Delete"
		dd offset aS		; "S"
		dd offset aM		; "M"
		dd offset aD_0		; "D"
		dd offset aB		; "B"
		dd offset aVal		; "Val"
		dd offset aForceremove	; "ForceRemove"
		dd offset aNoremove	; "NoRemove"
		dd offset aDelete	; "Delete"
		dd offset sub_409B55
		dd offset dword_40C268
off_40B8F0	dd offset sub_409BB3	; DATA XREF: sub_40A866+1Do
		dd offset aS		; "S"
		dd offset aM		; "M"
		dd offset aD_0		; "D"
		dd offset aB		; "B"
		dd offset aVal		; "Val"
		dd offset aForceremove	; "ForceRemove"
		dd offset aNoremove	; "NoRemove"
		dd offset aDelete	; "Delete"
aNitro:					; DATA XREF: sub_4010D0+61o
		unicode	0, <Nitro\>,0
		align 4
aPro:					; DATA XREF: sub_4010D0+73o
		unicode	0, <Pro\>,0
		align 10h
aD_D:					; DATA XREF: sub_4010D0+88o
		unicode	0, <%d.%d\>,0
		align 10h
aSettings:				; DATA XREF: sub_4010D0+97o
		unicode	0, <Settings\>,0
aSoftware:				; DATA XREF: sub_4010D0+BBo
					; sub_4010D0+133o
		unicode	0, <SOFTWARE\>,0
; CHAR ProcName[]
ProcName	db 'GetNativeSystemInfo',0 ; DATA XREF: sub_4012C0+75o
					; sub_4012C0+C5o
; const	WCHAR ModuleName
ModuleName:				; DATA XREF: sub_4012C0+7Ao
					; sub_4012C0+CAo
		unicode	0, <kernel32.dll>,0
		align 4
dword_40B998	dd 0			; DATA XREF: sub_4012C0+41o
					; sub_4012C0+131o ...
asc_40B99C:				; DATA XREF: sub_401EF0+63o
		unicode	0, <=>,0
aEvname:				; DATA XREF: sub_4017D0+ECo
		unicode	0, <evname>,0
		align 10h
aParsecommandli	db 'ParseCommandLine',0 ; DATA XREF: sub_401B38+Do
					; sub_401B98+2o
		align 4
aNitropdfkissme	db 'NitroPDFKissMetricsTool.cpp',0 ; DATA XREF: sub_401B38+12o
					; sub_401B98+7o
; char aExceptionHandl[]
aExceptionHandl	db '==============================',0Ah ; DATA XREF: sub_401B38+18o
					; sub_40517A+1Bo ...
		db 'Exception handled: 0x%08X',0Ah
		db 'File: %s',0Ah
		db 'Function: %s',0Ah
		db 'Line: %d',0Ah,0
		align 10h
; char aExceptionHan_0[]
aExceptionHan_0	db '==============================',0Ah ; DATA XREF: sub_401B98+Co
					; sub_4051DE+Fo ...
		db 'Exception handled: system',0Ah
		db 'File: %s',0Ah
		db 'Function: %s',0Ah
		db 'Line: %d',0Ah,0
		align 10h
; wchar_t Format
Format:					; DATA XREF: _main+25o
		unicode	0, <Fatal Error: MFC initialization failed>
		dw 0Ah,	0
; wchar_t aFatalErrorGetm
aFatalErrorGetm:			; DATA XREF: _main:loc_401CA3o
		unicode	0, <Fatal Error: GetModuleHandle failed>
		dw 0Ah,	0
		align 4
aInvalidMapSetT	db 'invalid map/set<T> iterator',0 ; DATA XREF: sub_4021C0+Fo
aMapSetTTooLong	db 'map/set<T> too long',0 ; DATA XREF: sub_402A60+6Eo
aInvalidStringP	db 'invalid string position',0 ; DATA XREF: sub_402FC0+Ao
					; sub_403040+12o ...
aStringTooLong	db 'string too long',0  ; DATA XREF: sub_402EC0+Do
					; sub_402EC0+21o ...
aPreferences:				; DATA XREF: .rdata:0040BC38o
		unicode	0, <Preferences>,0
aCloudfunnel:				; DATA XREF: .rdata:0040BC30o
		unicode	0, <CloudFunnel>,0
aInstallfunnel:				; DATA XREF: .rdata:0040BC28o
		unicode	0, <InstallFunnel>,0
aCreation:				; DATA XREF: .rdata:0040BC20o
		unicode	0, <Creation>,0
		align 4
aRibbon:				; DATA XREF: .rdata:0040BC18o
		unicode	0, <Ribbon>,0
		align 4
aBase:					; DATA XREF: .rdata:off_40BC10o
		unicode	0, <Base>,0
		align 10h
off_40BC10	dd offset aBase		; DATA XREF: sub_4043D0+12r
					; sub_404410+145r ...
					; "Base"
dword_40BC14	dd 0			; DATA XREF: sub_404410+159r
					; sub_404410+3BEr
		dd offset aRibbon	; "Ribbon"
		dd 1
		dd offset aCreation	; "Creation"
		dd 2
		dd offset aInstallfunnel ; "InstallFunnel"
		dd 3
		dd offset aCloudfunnel	; "CloudFunnel"
		dd 4
		dd offset aPreferences	; "Preferences"
		dd 5
a02x:					; DATA XREF: sub_403760+EDo
		unicode	0, <%02X>,0
		align 4
asc_40BC4C:				; DATA XREF: sub_403760+FFo
		unicode	0, <%>,0
; const	WCHAR ValueName
ValueName:				; DATA XREF: sub_4038B0+Bo
		unicode	0, <installsource>,0
aHttpTrk_kiss_0:			; DATA XREF: sub_403CE0+292o
		unicode	0, <http://trk.kissmetrics.com/a>,0
		align 4
aHttpTrk_kissme:			; DATA XREF: sub_403CE0+1EFo
		unicode	0, <http://trk.kissmetrics.com/e>,0
		align 4
aNull:					; DATA XREF: sub_403FF0+D5o
					; sub_4053D0+11Eo
		unicode	0, <NULL>,0
		align 10h
aDb27a205fc69f3:			; DATA XREF: sub_403FF0+112o
					; sub_4053D0+132o
		unicode	0, <db27a205fc69f3fa911fecd0818bb624c79a94c1>,0
		align 4
a_kS_pS_nS:				; DATA XREF: sub_403FF0+11Do
		unicode	0, <_k=%s&_p=%s&_n=%s>,0
aSS:					; DATA XREF: sub_403FF0+2F0o
					; sub_404930+107o
		unicode	0, <&%s=%s>,0
		align 4
; const	WCHAR aAllowedkmevent
aAllowedkmevent:			; DATA XREF: sub_404410+65o
					; sub_404410+47Fo
		unicode	0, <AllowedKMEventsUntil>,0
		align 4
; const	WCHAR aAllowedkmeve_0
aAllowedkmeve_0:			; DATA XREF: sub_404410+C9o
					; sub_404410+446o
		unicode	0, <AllowedKMEventType>,0
		align 4
asc_40BDCC:				; DATA XREF: sub_404410+10Fo
					; sub_404410+432o
		unicode	0, <;>,0
aHttpInstall_ni:			; DATA XREF: sub_404410+1EBo
		unicode	0, <http://install.nitropdf.com/pro9/reporting.json>,0
aReporting	db 'Reporting',0        ; DATA XREF: sub_404410+229o
		align 4
aSource		db 'Source',0           ; DATA XREF: sub_404410+269o
		align 4
; CHAR aVersion[]
aVersion	db 'Version',0          ; DATA XREF: sub_404410+281o
					; sub_404AF0:loc_404BEFo ...
; CHAR String[]
String		db 'InstallSource',0    ; DATA XREF: sub_404AF0+5Do
					; sub_4053D0+6Do
		align 4
; const	WCHAR aAnalyticsdisab
aAnalyticsdisab:			; DATA XREF: sub_404C70+38o
		unicode	0, <AnalyticsDisabled>,0
a1:					; DATA XREF: sub_404C70+61o
		unicode	0, <1>,0
a_:					; DATA XREF: sub_404C70+115o
		unicode	0, <.>,0
; CHAR aMajversion[]
aMajversion	db 'MajVersion',0       ; DATA XREF: sub_404C70+162o
		align 4
; CHAR aApptoken[]
aApptoken	db 'AppToken',0         ; DATA XREF: sub_404C70+1B2o
		align 10h
aCkmhandlerInit	db 'CKMHandler::Init',0 ; DATA XREF: sub_40517A+10o
					; sub_4051DE+5o
		align 4
aSharedCkmhandl	db 'Shared\CKMHandler.cpp',0 ; DATA XREF: sub_40517A+15o
					; sub_4051DE+Ao ...
		align 4
aD_D_D_D:				; DATA XREF: sub_405240+98o
		unicode	0, <%d.%d.%d.%d>,0
aCkmhandlerGeta	db 'CKMHandler::GetAppVersion',0 ; DATA XREF: sub_405240+BCo
					; sub_405240+114o
		align 10h
a_kS_pS_n:				; DATA XREF: sub_4053D0+13Ao
		unicode	0, <_k=%s&_p=%s&_n=>,0
; const	WCHAR aSerialnumber
aSerialnumber:				; DATA XREF: sub_405550+Bo
		unicode	0, <SerialNumber>,0
		align 4
		dd offset dword_40C3F0
off_40BF40	dd offset ?GetRuntimeClass@CObject@@UBEPAUCRuntimeClass@@XZ
					; DATA XREF: sub_4038E0+51o
					; sub_403A20+90o ...
					; CObject::GetRuntimeClass(void)
		dd offset sub_405B80
		dd offset sub_405750
		dd offset nullsub_1
		dd offset nullsub_2
		dd offset dword_40C3A4
off_40BF58	dd offset ?GetRuntimeClass@CObject@@UBEPAUCRuntimeClass@@XZ
					; DATA XREF: sub_4038E0+92o
					; sub_403A20+37o ...
					; CObject::GetRuntimeClass(void)
		dd offset sub_405BD0
		dd offset sub_405950
		dd offset nullsub_1
		dd offset nullsub_2
aD:					; DATA XREF: sub_404410+469o
		unicode	0, <%d>,0
		align 4
; const	WCHAR aExepath
aExepath:				; DATA XREF: sub_405FE0+2Fo
					; sub_405FE0+5Fo
		unicode	0, <exepath>,0
; const	WCHAR SubBlock
SubBlock:				; DATA XREF: sub_405FE0+C9o
					; sub_407290+4Bo ...
		unicode	0, <\>,0
; wchar_t asc_40BF88
asc_40BF88:				; DATA XREF: sub_406120+B5o
		unicode	0, <%X>,0
		align 10h
aDelete:				; DATA XREF: .rdata:0040B8A4o
					; .rdata:0040B8C4o ...
		unicode	0, <Delete>,0
		align 10h
aNoremove:				; DATA XREF: .rdata:0040B8A0o
					; .rdata:0040B8C0o ...
		unicode	0, <NoRemove>,0
		align 4
aForceremove:				; DATA XREF: .rdata:0040B89Co
					; .rdata:0040B8BCo ...
		unicode	0, <ForceRemove>,0
aVal:					; DATA XREF: .rdata:0040B898o
					; .rdata:0040B8B8o ...
		unicode	0, <Val>,0
aB:					; DATA XREF: .rdata:0040B894o
					; .rdata:0040B8B4o ...
		unicode	0, <B>,0
aD_0:					; DATA XREF: .rdata:0040B890o
					; .rdata:0040B8B0o ...
		unicode	0, <D>,0
aM:					; DATA XREF: .rdata:0040B88Co
					; .rdata:0040B8ACo ...
		unicode	0, <M>,0
aS:					; DATA XREF: .rdata:0040B888o
					; .rdata:0040B8A8o ...
		unicode	0, <S>,0
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
		dd 2Ch			; SEHandlerCount
; Debug	information (IMAGE_DEBUG_TYPE_CODEVIEW)
asc_40C030	db 'RSDS'               ; DATA XREF: .rdata:0040B304o
					; CV signature
		dd 3045AC8h		; Data1	; GUID
		dw 2543h		; Data2
		dw 4DDAh		; Data3
		db 97h,	0B4h, 0D3h, 77h, 44h, 0EAh, 4Fh, 21h; Data4
		dd 1			; Age
		db 'l:\bin\Win32\Pro Unicode Release\NitroPDFKissMetricsTool.pdb',0 ; PdbFileName
		align 4
dword_40C088	dd 3 dup(0)		; DATA XREF: .rdata:0040B7F4o
		dd offset off_40F000
		dd offset dword_40C09C
dword_40C09C	dd 2 dup(0)		; DATA XREF: .rdata:0040C098o
					; .rdata:0040C0CCo
		dd 1
		dd offset off_40C0AC
off_40C0AC	dd offset off_40C0B4	; DATA XREF: .rdata:0040C0A8o
		dd 0
off_40C0B4	dd offset off_40F000	; DATA XREF: .rdata:off_40C0ACo
		align 10h
		dd 0FFFFFFFFh, 0
		dd 40h
		dd offset dword_40C09C
dword_40C0D0	dd 3 dup(0)		; DATA XREF: .rdata:0040B820o
		dd offset off_40F038
		dd offset dword_40C0E4
dword_40C0E4	dd 2 dup(0)		; DATA XREF: .rdata:0040C0E0o
					; .rdata:0040C120o
		dd 4
		dd offset off_40C0F4
off_40C0F4	dd offset off_40C108	; DATA XREF: .rdata:0040C0F0o
		dd offset off_40C124
		dd offset off_40C1E8
		dd offset off_40C204
		align 8
off_40C108	dd offset off_40F038	; DATA XREF: .rdata:off_40C0F4o
		dd 3, 0
		dd 0FFFFFFFFh, 0
		dd 40h
		dd offset dword_40C0E4
off_40C124	dd offset off_40F050	; DATA XREF: .rdata:0040C0F8o
		dd 2, 4, 0FFFFFFFFh, 0
		dd 40h
		dd offset dword_40C140
dword_40C140	dd 2 dup(0)		; DATA XREF: .rdata:0040C13Co
					; .rdata:0040C178o
		dd 3
		dd offset off_40C150
off_40C150	dd offset off_40C160	; DATA XREF: .rdata:0040C14Co
		dd offset off_40C17C
		dd offset off_40C1B4
		align 10h
off_40C160	dd offset off_40F050	; DATA XREF: .rdata:off_40C150o
		dd 2, 0
		dd 0FFFFFFFFh, 0
		dd 40h
		dd offset dword_40C140
off_40C17C	dd offset off_40F088	; DATA XREF: .rdata:0040C154o
					; .rdata:off_40C1A8o
		dd 1, 0
		dd 0FFFFFFFFh, 0
		dd 40h
		dd offset dword_40C198
dword_40C198	dd 2 dup(0)		; DATA XREF: .rdata:0040C194o
					; .rdata:0040C200o
		dd 2
		dd offset off_40C1A8
off_40C1A8	dd offset off_40C17C	; DATA XREF: .rdata:0040C1A4o
		dd offset off_40C1B4
		dd 0
off_40C1B4	dd offset off_40F0C4	; DATA XREF: .rdata:0040C158o
					; .rdata:0040C1ACo ...
		align 10h
		dd 0FFFFFFFFh, 0
		dd 40h
		dd offset dword_40C1D0
dword_40C1D0	dd 2 dup(0)		; DATA XREF: .rdata:0040C1CCo
					; .rdata:0040C21Co
		dd 1
		dd offset off_40C1E0
off_40C1E0	dd offset off_40C1B4	; DATA XREF: .rdata:0040C1DCo
		align 8
off_40C1E8	dd offset off_40F088	; DATA XREF: .rdata:0040C0FCo
		dd 1, 4, 0FFFFFFFFh, 0
		dd 40h
		dd offset dword_40C198
off_40C204	dd offset off_40F0C4	; DATA XREF: .rdata:0040C100o
		dd 0
		dd 4, 0FFFFFFFFh, 0
		dd 40h
		dd offset dword_40C1D0
dword_40C220	dd 3 dup(0)		; DATA XREF: .rdata:0040B878o
		dd offset off_40F0E8
		dd offset dword_40C234
dword_40C234	dd 2 dup(0)		; DATA XREF: .rdata:0040C230o
					; .rdata:0040C264o
		dd 1
		dd offset off_40C244
off_40C244	dd offset off_40C24C	; DATA XREF: .rdata:0040C240o
		dd 0
off_40C24C	dd offset off_40F0E8	; DATA XREF: .rdata:off_40C244o
		dd 2 dup(0)
		dd 0FFFFFFFFh, 0
		dd 40h
		dd offset dword_40C234
dword_40C268	dd 3 dup(0)		; DATA XREF: .rdata:0040B8ECo
		dd offset off_40F120
		dd offset dword_40C27C
dword_40C27C	dd 2 dup(0)		; DATA XREF: .rdata:0040C278o
					; .rdata:0040C2B4o
		dd 3
		dd offset off_40C28C
off_40C28C	dd offset off_40C29C	; DATA XREF: .rdata:0040C288o
		dd offset off_40C2B8
		dd offset off_40C2F0
		dd 0
off_40C29C	dd offset off_40F120	; DATA XREF: .rdata:off_40C28Co
		dd 2, 0
		dd 0FFFFFFFFh, 0
		dd 40h
		dd offset dword_40C27C
off_40C2B8	dd offset off_40F144	; DATA XREF: .rdata:0040C290o
					; .rdata:off_40C2E4o
		dd 1, 0
		dd 0FFFFFFFFh, 0
		dd 40h
		dd offset dword_40C2D4
dword_40C2D4	dd 2 dup(0)		; DATA XREF: .rdata:0040C2D0o
		dd 2
		dd offset off_40C2E4
off_40C2E4	dd offset off_40C2B8	; DATA XREF: .rdata:0040C2E0o
		dd offset off_40C2F0
		align 10h
off_40C2F0	dd offset off_40F164	; DATA XREF: .rdata:0040C294o
					; .rdata:0040C2E8o ...
		dd 2 dup(0)
		dd 0FFFFFFFFh, 0
		dd 40h
		dd offset dword_40C30C
dword_40C30C	dd 2 dup(0)		; DATA XREF: .rdata:0040C308o
		dd 1
		dd offset off_40C31C
off_40C31C	dd offset off_40C2F0	; DATA XREF: .rdata:0040C318o
		dd 0
dword_40C324	dd 3 dup(0)		; DATA XREF: .rdata:0040B810o
		dd offset off_40F1D8
		dd offset dword_40C338
dword_40C338	dd 2 dup(0)		; DATA XREF: .rdata:0040C334o
					; .rdata:0040C3A0o
		dd 2
		dd offset off_40C348
off_40C348	dd offset off_40C388	; DATA XREF: .rdata:0040C344o
		dd offset off_40C354
		dd 0
off_40C354	dd offset off_40F1BC	; DATA XREF: .rdata:0040C34Co
					; .rdata:off_40C380o
		align 10h
		dd 0FFFFFFFFh, 0
		dd 40h
		dd offset dword_40C370
dword_40C370	dd 2 dup(0)		; DATA XREF: .rdata:0040C36Co
		dd 1
		dd offset off_40C380
off_40C380	dd offset off_40C354	; DATA XREF: .rdata:0040C37Co
		align 8
off_40C388	dd offset off_40F1D8	; DATA XREF: .rdata:off_40C348o
		dd 1, 0
		dd 0FFFFFFFFh, 0
		dd 40h
		dd offset dword_40C338
dword_40C3A4	dd 3 dup(0)		; DATA XREF: .rdata:0040BF54o
		dd offset off_40F1F4
		dd offset dword_40C3B8
dword_40C3B8	dd 2 dup(0)		; DATA XREF: .rdata:0040C3B4o
					; .rdata:0040C3ECo
		dd 2
		dd offset off_40C3C8
off_40C3C8	dd offset off_40C3D4	; DATA XREF: .rdata:0040C3C4o
		dd offset off_40C420
		dd 0
off_40C3D4	dd offset off_40F1F4	; DATA XREF: .rdata:off_40C3C8o
		dd 1, 0
		dd 0FFFFFFFFh, 0
		dd 40h
		dd offset dword_40C3B8
dword_40C3F0	dd 3 dup(0)		; DATA XREF: .rdata:0040BF3Co
		dd offset off_40F23C
		dd offset dword_40C404
dword_40C404	dd 2 dup(0)		; DATA XREF: .rdata:0040C400o
					; .rdata:0040C46Co
		dd 2
		dd offset off_40C414
off_40C414	dd offset off_40C454	; DATA XREF: .rdata:0040C410o
		dd offset off_40C420
		align 10h
off_40C420	dd offset off_40F224	; DATA XREF: .rdata:0040C3CCo
					; .rdata:0040C418o ...
		dd 2 dup(0)
		dd 0FFFFFFFFh, 0
		dd 40h
		dd offset dword_40C43C
dword_40C43C	dd 2 dup(0)		; DATA XREF: .rdata:0040C438o
		dd 1
		dd offset off_40C44C
off_40C44C	dd offset off_40C420	; DATA XREF: .rdata:0040C448o
		dd 0
off_40C454	dd offset off_40F23C	; DATA XREF: .rdata:off_40C414o
		dd 1, 0
		dd 0FFFFFFFFh, 0
		dd 40h
		dd offset dword_40C404
___safe_se_handler_table dd rva	__except_handler4 ; DATA XREF: .rdata:0040C028o
		dd rva sub_409C74
		dd rva sub_409CCB
		dd rva __ehhandler$?CloneAndReset@GlobalNode@details@Concurrency@@QAEXPAUSchedulerNode@23@@Z
		dd rva sub_409D4A
		dd rva sub_409D79
		dd rva sub_409DB8
		dd rva sub_409DE0
		dd rva sub_409E00
		dd rva sub_409E20
		dd rva sub_409E4B
		dd rva sub_409E7B
		dd rva sub_409EAB
		dd rva __ehhandler$?_RunAndWait@_StructuredTaskCollection@details@Concurrency@@QAG?AW4_TaskCollectionStatus@23@PAV_UnrealizedChore@23@@Z
		dd rva sub_409EFB
		dd rva sub_409F4B
		dd rva sub_409F75
		dd rva sub_409FD9
		dd rva sub_40A023
		dd rva sub_40A05A
		dd rva sub_40A0E3
		dd rva __ehhandler$?_RunAndWait@_StructuredTaskCollection@details@Concurrency@@QAG?AW4_TaskCollectionStatus@23@PAV_UnrealizedChore@23@@Z_0
		dd rva sub_40A163
		dd rva sub_40A195
		dd rva sub_40A1B9
		dd rva __ehhandler$?_StructuredChoreWrapper@_UnrealizedChore@details@Concurrency@@CAXPAV123@@Z
		dd rva sub_40A243
		dd rva sub_40A272
		dd rva sub_40A2B2
		dd rva sub_40A303
		dd rva sub_40A34B
		dd rva __ehhandler$?PrimaryInvocation@UMSFreeVirtualProcessorRoot@details@Concurrency@@CGXW4_RTL_UMS_SCHEDULER_REASON@@KPAX@Z
		dd rva sub_40A489
		dd rva sub_40A4FF
		dd rva sub_40A530
		dd rva sub_40A5B0
		dd rva sub_40A5D0
		dd rva sub_40A5F0
		dd rva sub_40A618
		dd rva sub_40A6BD
		dd rva sub_40A709
		dd rva sub_40A748
		dd rva sub_40A788
		dd rva sub_40A801
		dd 0
dword_40C524	dd 2 dup(0)		; DATA XREF: sub_409854+3o
					; sub_409854+8o
dword_40C52C	dd 0			; DATA XREF: sub_40987A+3o
					; sub_40987A+8o
dword_40C530	dd 0FFFFFFFFh		; DATA XREF: .rdata:0040C550o
		dd offset sub_409C50
		dd 0
		dd offset sub_409C5C
		dd 1
		dd offset sub_409C68
dword_40C548	dd 19930522h, 3		; DATA XREF: sub_409C74+11o
		dd offset dword_40C530
		dd 5 dup(0)
		dd 1
dword_40C56C	dd 19930522h, 6		; DATA XREF: sub_409CCB+1Eo
		dd offset dword_40C590
		dd 5 dup(0)
		dd 1
dword_40C590	dd 0FFFFFFFFh		; DATA XREF: .rdata:0040C574o
		dd offset sub_409C90
		dd 0
		dd offset sub_409C9C
		dd 1
		dd offset sub_409CA8
		dd 2
		dd offset sub_409CB4
		dd 3
		dd offset sub_409CBF
		dd 2
		dd offset sub_409CBF
dword_40C5C0	dd 0FFFFFFFFh		; DATA XREF: .rdata:0040C5D0o
		dd offset __unwindfunclet$?CloneAndReset@GlobalNode@details@Concurrency@@QAEXPAUSchedulerNode@23@@Z$0
dword_40C5C8	dd 19930522h, 1		; DATA XREF: __ehhandler$?CloneAndReset@GlobalNode@details@Concurrency@@QAEXPAUSchedulerNode@23@@Z+11o
		dd offset dword_40C5C0
		dd 5 dup(0)
dword_40C5E8	dd 1, 0FFFFFFFFh	; DATA XREF: .rdata:0040C5FCo
		dd offset sub_409D30
dword_40C5F4	dd 19930522h, 1		; DATA XREF: sub_409D4A+11o
		dd offset dword_40C5E8+4
		dd 5 dup(0)
dword_40C614	dd 1, 0FFFFFFFFh	; DATA XREF: .rdata:0040C628o
		dd offset sub_409D70
dword_40C620	dd 19930522h, 1		; DATA XREF: sub_409D79+11o
		dd offset dword_40C614+4
		align 20h
dword_40C640	dd 1, 0FFFFFFFFh	; DATA XREF: .rdata:0040C65Co
		dd offset sub_409DA0
		align 10h
		dd offset sub_409DAC
dword_40C654	dd 19930522h, 2		; DATA XREF: sub_409DB8+1Eo
		dd offset dword_40C640+4
		dd 5 dup(0)
dword_40C674	dd 1, 40h, 2 dup(0)	; DATA XREF: .rdata:0040C6A8o
		dd offset sub_40846D
dword_40C688	dd 0FFFFFFFFh, 0	; DATA XREF: .rdata:0040C6B4o
dword_40C690	dd 0FFFFFFFFh, 3 dup(0)	; DATA XREF: .rdata:0040C6BCo
		dd 2 dup(1)
		dd offset dword_40C674+4
dword_40C6AC	dd 19930522h, 2		; DATA XREF: sub_409DE0+11o
		dd offset dword_40C688
		dd 1
		dd offset dword_40C690+8
		dd 3 dup(0)
dword_40C6CC	dd 1, 40h, 2 dup(0)	; DATA XREF: .rdata:0040C700o
		dd offset sub_4084F1
dword_40C6E0	dd 0FFFFFFFFh, 0	; DATA XREF: .rdata:0040C70Co
dword_40C6E8	dd 0FFFFFFFFh, 3 dup(0)	; DATA XREF: .rdata:0040C714o
		dd 2 dup(1)
		dd offset dword_40C6CC+4
dword_40C704	dd 19930522h, 2		; DATA XREF: sub_409E00+11o
		dd offset dword_40C6E0
		dd 1
		dd offset dword_40C6E8+8
		dd 3 dup(0)
dword_40C724	dd 1, 40h, 2 dup(0)	; DATA XREF: .rdata:0040C758o
		dd offset loc_40858A
dword_40C738	dd 0FFFFFFFFh, 0	; DATA XREF: .rdata:0040C764o
dword_40C740	dd 0FFFFFFFFh, 3 dup(0)	; DATA XREF: .rdata:0040C76Co
		dd 2 dup(1)
		dd offset dword_40C724+4
dword_40C75C	dd 19930522h, 2		; DATA XREF: sub_409E20+11o
		dd offset dword_40C738
		dd 1
		dd offset dword_40C740+8
		dd 3 dup(0)
dword_40C77C	dd 1, 0FFFFFFFFh	; DATA XREF: .rdata:0040C790o
		dd offset sub_409E40
dword_40C788	dd 19930522h, 1		; DATA XREF: sub_409E4B+11o
		dd offset dword_40C77C+4
		dd 5 dup(0)
dword_40C7A8	dd 1, 0FFFFFFFFh	; DATA XREF: .rdata:0040C7BCo
		dd offset sub_409E70
dword_40C7B4	dd 19930522h, 1		; DATA XREF: sub_409E7B+11o
		dd offset dword_40C7A8+4
		dd 5 dup(0)
dword_40C7D4	dd 1, 0FFFFFFFFh	; DATA XREF: .rdata:0040C7E8o
		dd offset sub_409EA0
dword_40C7E0	dd 19930522h, 1		; DATA XREF: sub_409EAB+11o
		dd offset dword_40C7D4+4
		align 20h
dword_40C800	dd 1, 0FFFFFFFFh	; DATA XREF: .rdata:0040C814o
		dd offset sub_409ED0
dword_40C80C	dd 19930522h, 1		; DATA XREF: __ehhandler$?_RunAndWait@_StructuredTaskCollection@details@Concurrency@@QAG?AW4_TaskCollectionStatus@23@PAV_UnrealizedChore@23@@Z+11o
		dd offset dword_40C800+4
		dd 5 dup(0)
		dd 1
stru_40C830	dd 0FFFFFFFEh		; GSCookieOffset ; DATA	XREF: __onexit+2o
		dd 0			; GSCookieXOROffset ; SEH scope	table for function 4091F6
		dd 0FFFFFFCCh		; EHCookieOffset
		dd 0			; EHCookieXOROffset
		dd 0FFFFFFFEh		; ScopeRecord.EnclosingLevel
		dd 0			; ScopeRecord.FilterFunc
		dd offset loc_40928E	; ScopeRecord.HandlerFunc
		align 10h
stru_40C850	dd 0FFFFFFFEh		; GSCookieOffset ; DATA	XREF: ___tmainCRTStartup+2o
		dd 0			; GSCookieXOROffset ; SEH scope	table for function 4092FF
		dd 0FFFFFFD0h		; EHCookieOffset
		dd 0			; EHCookieXOROffset
		dd 0FFFFFFFEh		; ScopeRecord.EnclosingLevel
		dd offset $LN35		; ScopeRecord.FilterFunc
		dd offset $LN22		; ScopeRecord.HandlerFunc
		align 10h
stru_40C870	dd 0FFFFFFFEh		; GSCookieOffset
					; DATA XREF: __ArrayUnwind(void	*,uint,int,void	(*)(void *))+2o
		dd 0			; GSCookieXOROffset ; SEH scope	table for function 4096A1
		dd 0FFFFFFCCh		; EHCookieOffset
		dd 0			; EHCookieXOROffset
		dd 0FFFFFFFEh		; ScopeRecord.EnclosingLevel
		dd offset loc_4096C4	; ScopeRecord.FilterFunc
		dd offset unk_4096ED	; ScopeRecord.HandlerFunc
		align 10h
stru_40C890	dd 0FFFFFFFEh		; GSCookieOffset
					; DATA XREF: `eh vector	destructor iterator'(void *,uint,int,void (*)(void *))+2o
		dd 0			; GSCookieXOROffset ; SEH scope	table for function 4096FF
		dd 0FFFFFFD4h		; EHCookieOffset
		dd 0			; EHCookieXOROffset
		dd 0FFFFFFFEh		; ScopeRecord.EnclosingLevel
		dd 0			; ScopeRecord.FilterFunc
		dd offset loc_40974A	; ScopeRecord.HandlerFunc
		align 10h
stru_40C8B0	dd 0FFFFFFFEh		; GSCookieOffset
					; DATA XREF: __IsNonwritableInCurrentImage+7o
		dd 0			; GSCookieXOROffset ; SEH scope	table for function 409940
		dd 0FFFFFFD8h		; EHCookieOffset
		dd 0			; EHCookieXOROffset
		dd 0FFFFFFFEh		; ScopeRecord.EnclosingLevel
		dd offset loc_4099CB	; ScopeRecord.FilterFunc
		dd offset loc_4099DE	; ScopeRecord.HandlerFunc
dword_40C8CC	dd 0FFFFFFFFh		; DATA XREF: .rdata:0040C8DCo
		dd offset sub_409EF3
dword_40C8D4	dd 19930522h, 1		; DATA XREF: sub_409EFB+11o
		dd offset dword_40C8CC
		dd 5 dup(0)
dword_40C8F4	dd 2 dup(1)		; DATA XREF: .rdata:0040C950o
		dd offset off_40F184
		dd 0
		dd 0FFFFFFFFh, 0
		dd 4, 0
dword_40C914	dd 1			; DATA XREF: .rdata:0040C954o
		dd offset off_40F1A0
		align 10h
		dd 0FFFFFFFFh, 0
		dd 4, 0
dword_40C930	dd 1			; DATA XREF: .rdata:0040C95Co
		dd offset off_40F1B0
		dd 0
		dd 0FFFFFFFFh, 0
		dd 4, 0
dword_40C94C	dd 2			; DATA XREF: .rdata:0040C96Co
		dd offset dword_40C8F4+4
		dd offset dword_40C914
dword_40C958	dd 1			; DATA XREF: .rdata:0040C97Co
		dd offset dword_40C930
dword_40C960	dd 3 dup(0)		; DATA XREF: sub_401B38+49o
					; sub_40517A+4Do ...
		dd offset dword_40C94C
dword_40C970	dd 3 dup(0)		; DATA XREF: sub_401B98+37o
					; sub_4051DE+3Bo ...
		dd offset dword_40C958
dword_40C980	dd 0			; DATA XREF: .rdata:0040C9C0o
		dd offset off_40F1BC
		dd 0
		dd 0FFFFFFFFh, 0
		dd 0Ch
		dd offset ??0exception@std@@QAE@ABV01@@Z ; std::exception::exception(std::exception const &)
unk_40C99C	db    0			; DATA XREF: .rdata:0040C9BCo
		db    0
		db    0
		db    0
		dd offset off_40F1D8
		align 8
		dd 0FFFFFFFFh, 0
		dd 0Ch
		dd offset sub_4034D0
dword_40C9B8	dd 2			; DATA XREF: .rdata:0040C9D0o
		dd offset unk_40C99C
		dd offset dword_40C980
dword_40C9C4	dd 0			; DATA XREF: sub_401CF0+55o
					; sub_402DA0+EDo ...
		dd offset sub_403490
		align 10h
		dd offset dword_40C9B8
dword_40C9D4	dd 0FFFFFFFFh		; DATA XREF: .rdata:0040C9F4o
		dd offset sub_409F31
		align 10h
		dd offset sub_409F20
		dd 1
		dd offset sub_409F28
dword_40C9EC	dd 19930522h, 3		; DATA XREF: sub_409F4B+1Bo
		dd offset dword_40C9D4
		dd 5 dup(0)
dword_40CA0C	dd 1, 0FFFFFFFFh	; DATA XREF: .rdata:0040CA54o
		dd offset j_?AfxTryCleanup@@YGXXZ ; AfxTryCleanup(void)
dword_40CA18	dd 5 dup(0)
		dd offset off_40F26C
		dd 0FFFFFFECh
		dd offset sub_403C36
dword_40CA38	dd 2 dup(1), 2,	1	; DATA XREF: .rdata:0040CA5Co
		dd offset dword_40CA18+10h
dword_40CA4C	dd 19930522h, 3		; DATA XREF: sub_409F75+11o
		dd offset dword_40CA0C+4
		dd 1
		dd offset dword_40CA38
		dd 3 dup(0)
dword_40CA6C	dd 1, 0FFFFFFFFh	; DATA XREF: .rdata:0040CAA8o
		dd offset sub_409F90
		dd 0
		dd offset sub_409F99
		dd 1
		dd offset sub_409FA5
		dd 2
		dd offset sub_409FB1
		dd 3
		dd offset sub_409FBD
		dd 4
		dd offset sub_409FCB
dword_40CAA0	dd 19930522h, 6		; DATA XREF: sub_409FD9+11o
		dd offset dword_40CA6C+4
		align 20h
dword_40CAC0	dd 1, 0FFFFFFFFh	; DATA XREF: .rdata:0040CADCo
		dd offset sub_40A000
		align 10h
		dd offset sub_40A01A
dword_40CAD4	dd 19930522h, 2		; DATA XREF: sub_40A023+11o
		dd offset dword_40CAC0+4
		dd 5 dup(0)
dword_40CAF4	dd 1, 0FFFFFFFFh	; DATA XREF: .rdata:0040CB08o
		dd offset sub_40A040
dword_40CB00	dd 19930522h, 1		; DATA XREF: sub_40A05A+11o
		dd offset dword_40CAF4+4
		align 20h
		dd 1, 0
dword_40CB28	dd 0FFFFFFFFh		; DATA XREF: .rdata:0040CB88o
		dd offset sub_40A080
		dd 0
		dd offset sub_40A089
		dd 1
		dd offset sub_40A092
		dd 2
		dd offset sub_40A09B
		dd 3
		dd offset sub_40A0C8
		dd 4
		dd offset sub_40A0D1
		dd 5
		dd offset sub_40A0DA
		dd 3
		dd offset sub_40A0A4
		dd 7
		dd offset sub_40A0AD
		dd 8
		dd offset sub_40A0B6
		dd 9
		dd offset sub_40A0BF
dword_40CB80	dd 19930522h, 0Bh	; DATA XREF: sub_40A0E3+11o
		dd offset dword_40CB28
		align 20h
dword_40CBA0	dd 1, 0FFFFFFFFh	; DATA XREF: .rdata:0040CBB4o
		dd offset sub_40A100
dword_40CBAC	dd 19930522h, 1		; DATA XREF: __ehhandler$?_RunAndWait@_StructuredTaskCollection@details@Concurrency@@QAG?AW4_TaskCollectionStatus@23@PAV_UnrealizedChore@23@@Z_0+11o
		dd offset dword_40CBA0+4
		dd 5 dup(0)
dword_40CBCC	dd 1, 0FFFFFFFFh	; DATA XREF: .rdata:0040CC34o
		dd offset j_?AfxTryCleanup@@YGXXZ_0 ; AfxTryCleanup(void)
		align 10h
		dd 1
		dd offset sub_40A135
		dd 2
		dd offset sub_40A141
		dd 3
		dd offset sub_40A14C
		dd 4
		dd offset sub_40A158
dword_40CC00	dd 3 dup(0)		; DATA XREF: .rdata:0040CC28o
		dd offset off_40F26C
		dd 0FFFFFDC4h
		dd offset sub_404AD6
dword_40CC18	dd 1, 5, 6, 1		; DATA XREF: .rdata:0040CC3Co
		dd offset dword_40CC00+8
dword_40CC2C	dd 19930522h, 7		; DATA XREF: sub_40A163+1Eo
		dd offset dword_40CBCC+4
		dd 1
		dd offset dword_40CC18
		dd 3 dup(0)
dword_40CC4C	dd 1, 0FFFFFFFFh	; DATA XREF: .rdata:0040CC94o
		dd offset j_?AfxTryCleanup@@YGXXZ_1 ; AfxTryCleanup(void)
dword_40CC58	dd 5 dup(0)
		dd offset off_40F26C
		dd 0FFFFFFECh
		dd offset sub_403CD3
dword_40CC78	dd 2 dup(1), 2,	1	; DATA XREF: .rdata:0040CC9Co
		dd offset dword_40CC58+10h
dword_40CC8C	dd 19930522h, 3		; DATA XREF: sub_40A195+11o
		dd offset dword_40CC4C+4
		dd 1
		dd offset dword_40CC78
		dd 3 dup(0)
dword_40CCAC	dd 1, 0FFFFFFFFh	; DATA XREF: .rdata:0040CCC0o
		dd offset sub_40A1B0
dword_40CCB8	dd 19930522h, 1		; DATA XREF: sub_40A1B9+11o
		dd offset dword_40CCAC+4
		dd 5 dup(0)
dword_40CCD8	dd 1, 0FFFFFFFFh	; DATA XREF: .rdata:0040CCF4o
		dd offset sub_40A1E9
		align 8
		dd offset sub_40A1E0
dword_40CCEC	dd 19930522h, 2		; DATA XREF: __ehhandler$?_StructuredChoreWrapper@_UnrealizedChore@details@Concurrency@@CAXPAV123@@Z+11o
		dd offset dword_40CCD8+4
		dd 5 dup(0)
dword_40CD0C	dd 1, 0FFFFFFFFh	; DATA XREF: .rdata:0040CD28o
		dd offset sub_40A220
		dd 0
		dd offset sub_40A23A
dword_40CD20	dd 19930522h, 2		; DATA XREF: sub_40A243+11o
		dd offset dword_40CD0C+4
		align 20h
dword_40CD40	dd 1, 0FFFFFFFFh	; DATA XREF: .rdata:0040CD5Co
		dd offset sub_40A260
		align 10h
		dd offset sub_40A269
dword_40CD54	dd 19930522h, 2		; DATA XREF: sub_40A272+11o
		dd offset dword_40CD40+4
		dd 5 dup(0)
dword_40CD74	dd 1, 0FFFFFFFFh	; DATA XREF: .rdata:0040CD98o
		dd offset sub_40A290
		dd 0FFFFFFFFh
		dd offset sub_40A29B
		dd 0FFFFFFFFh
		dd offset sub_40A2A6
dword_40CD90	dd 19930522h, 3		; DATA XREF: sub_40A2B2+24o
		dd offset dword_40CD74+4
		dd 5 dup(0)
dword_40CDB0	dd 1, 0FFFFFFFFh	; DATA XREF: .rdata:0040CE3Co
		dd offset sub_40A2E0
		dd 2 dup(0)
		dd 1, 0
dword_40CDCC	dd 1, 4	dup(0)
		dd offset off_40F184
		dd 0FFFFFBC8h
		dd offset loc_4052EC
		dd 40h,	2 dup(0)
		dd offset loc_40534F
dword_40CDFC	dd 40h,	2 dup(0)	; DATA XREF: .rdata:0040CE30o
		dd offset loc_4053A4
dword_40CE0C	dd 2 dup(2), 3,	2	; DATA XREF: .rdata:0040CE44o
		dd offset dword_40CDCC+10h
		dd 1, 3, 4, 1
		dd offset dword_40CDFC
dword_40CE34	dd 19930522h, 5		; DATA XREF: sub_40A303+1Eo
		dd offset dword_40CDB0+4
		dd 2
		dd offset dword_40CE0C
		dd 3 dup(0)
dword_40CE54	dd 1, 0FFFFFFFFh	; DATA XREF: .rdata:0040CEACo
		dd offset j_?AfxTryCleanup@@YGXXZ_2 ; AfxTryCleanup(void)
		dd 2 dup(0)
		dd 1
		dd offset sub_40A335
		dd 1
		dd offset sub_40A340
dword_40CE78	dd 3 dup(0)		; DATA XREF: .rdata:0040CEA0o
		dd offset off_40F26C
		dd 0FFFFFEDCh
		dd offset sub_404C5B
dword_40CE90	dd 1, 3, 4, 1		; DATA XREF: .rdata:0040CEB4o
		dd offset dword_40CE78+8
dword_40CEA4	dd 19930522h, 5		; DATA XREF: sub_40A34B+1Eo
		dd offset dword_40CE54+4
		dd 1
		dd offset dword_40CE90
		dd 3 dup(0)
dword_40CEC4	dd 1, 0FFFFFFFFh	; DATA XREF: .rdata:0040CF6Co
		dd offset j_?AfxTryCleanup@@YGXXZ_3 ; AfxTryCleanup(void)
		dd 2 dup(0)
		dd 1
		dd offset sub_40A385
		dd 2
		dd offset sub_40A38E
		dd 3
		dd offset sub_40A397
		dd 3
		dd offset sub_40A3A0
		dd 3
		dd offset sub_40A3A9
		dd 3
		dd offset sub_40A3B2
		dd 7
		dd offset sub_40A3BA
		dd 8
		dd offset sub_40A3C3
		dd 9
		dd offset sub_40A3CC
		dd 0Ah
		dd offset sub_40A3D5
		dd 9
		dd offset sub_40A3DE
		dd 9
		dd offset sub_40A3E7
dword_40CF38	dd 3 dup(0)		; DATA XREF: .rdata:0040CF60o
		dd offset off_40F26C
		dd 0FFFFFFC4h
		dd offset sub_404924
dword_40CF50	dd 1, 0Dh, 0Eh,	1	; DATA XREF: .rdata:0040CF74o
		dd offset dword_40CF38+8
dword_40CF64	dd 19930522h, 0Fh	; DATA XREF: __ehhandler$?PrimaryInvocation@UMSFreeVirtualProcessorRoot@details@Concurrency@@CGXW4_RTL_UMS_SCHEDULER_REASON@@KPAX@Z+11o
		dd offset dword_40CEC4+4
		dd 1
		dd offset dword_40CF50
		dd 3 dup(0)
dword_40CF84	dd 1, 0FFFFFFFFh	; DATA XREF: .rdata:0040D01Co
		dd offset j_?AfxTryCleanup@@YGXXZ_4 ; AfxTryCleanup(void)
		dd 2 dup(0)
		dd 1
		dd offset sub_40A415
		dd 2
		dd offset sub_40A421
		dd 3
		dd offset sub_40A42D
		dd 2
		dd offset sub_40A438
		dd 5
		dd offset sub_40A443
		dd 2
		dd offset sub_40A44F
		dd 7
		dd offset sub_40A45B
		dd 8
		dd offset sub_40A466
		dd 9
		dd offset sub_40A472
		dd 0Ah
		dd offset sub_40A47D
dword_40CFE8	dd 3 dup(0)		; DATA XREF: .rdata:0040D010o
		dd offset off_40F26C
		dd 0FFFFFDC0h
		dd offset loc_40437E
dword_40D000	dd 1, 0Bh, 0Ch,	1	; DATA XREF: .rdata:0040D024o
		dd offset dword_40CFE8+8
dword_40D014	dd 19930522h, 0Dh	; DATA XREF: sub_40A489+1Eo
		dd offset dword_40CF84+4
		dd 1
		dd offset dword_40D000
		dd 3 dup(0)
dword_40D034	dd 1, 0FFFFFFFFh	; DATA XREF: .rdata:0040D0A4o
		dd offset j_?AfxTryCleanup@@YGXXZ_5 ; AfxTryCleanup(void)
		dd 2 dup(0)
		dd 1
		dd offset sub_40A4C5
		dd 2
		dd offset sub_40A4E8
		dd 2
		dd offset sub_40A4F4
		dd 2
		dd offset sub_40A4D1
		dd 2
		dd offset sub_40A4DD
dword_40D070	dd 3 dup(0)		; DATA XREF: .rdata:0040D098o
		dd offset off_40F26C
		dd 0FFFFF8CCh
		dd offset sub_403FD1
dword_40D088	dd 1, 6, 7, 1		; DATA XREF: .rdata:0040D0ACo
		dd offset dword_40D070+8
dword_40D09C	dd 19930522h, 8		; DATA XREF: sub_40A4FF+1Eo
		dd offset dword_40D034+4
		dd 1
		dd offset dword_40D088
		dd 3 dup(0)
dword_40D0BC	dd 1, 0FFFFFFFFh, 0	; DATA XREF: .rdata:0040D130o
		dd 0FFFFFFFFh, 0
		dd 1, 0
		dd 1, 0
dword_40D0E0	dd 40h,	2 dup(0)	; DATA XREF: .rdata:0040D110o
		dd offset sub_403292
dword_40D0F0	dd 40h,	2 dup(0)	; DATA XREF: .rdata:0040D124o
		dd offset loc_40320A
dword_40D100	dd 2 dup(2), 3,	1	; DATA XREF: .rdata:0040D138o
		dd offset dword_40D0E0
		dd 2 dup(0)
		dd 3, 1
		dd offset dword_40D0F0
dword_40D128	dd 19930522h, 4		; DATA XREF: sub_40A530+11o
		dd offset dword_40D0BC+4
		dd 2
		dd offset dword_40D100
		dd 3 dup(0)
		dd 1, 0
dword_40D150	dd 0FFFFFFFFh		; DATA XREF: .rdata:0040D198o
		dd offset sub_40A550
		dd 0
		dd offset sub_40A559
		dd 1
		dd offset sub_40A565
		dd 2
		dd offset sub_40A571
		dd 3
		dd offset sub_40A57D
		dd 4
		dd offset sub_40A58B
		dd 5
		dd offset sub_40A599
		dd 6
		dd offset sub_40A5A7
dword_40D190	dd 19930522h, 8		; DATA XREF: sub_40A5B0+11o
		dd offset dword_40D150
		dd 5 dup(0)
dword_40D1B0	dd 1, 0FFFFFFFFh, 0	; DATA XREF: .rdata:0040D224o
		dd 0FFFFFFFFh, 0
		dd 1, 0
		dd 1, 0
dword_40D1D4	dd 40h,	2 dup(0)	; DATA XREF: .rdata:0040D204o
		dd offset sub_403677
dword_40D1E4	dd 40h,	2 dup(0)	; DATA XREF: .rdata:0040D218o
		dd offset loc_4035F3
dword_40D1F4	dd 2 dup(2), 3,	1	; DATA XREF: .rdata:0040D22Co
		dd offset dword_40D1D4
		align 10h
		dd 3, 1
		dd offset dword_40D1E4
dword_40D21C	dd 19930522h, 4		; DATA XREF: sub_40A5D0+11o
		dd offset dword_40D1B0+4
		dd 2
		dd offset dword_40D1F4
		dd 3 dup(0)
dword_40D23C	dd 1, 0FFFFFFFFh, 0	; DATA XREF: .rdata:0040D27Co
		dd 0FFFFFFFFh, 0
dword_40D250	dd 40h,	2 dup(0)	; DATA XREF: .rdata:0040D270o
		dd offset loc_402D57
dword_40D260	dd 2 dup(0)		; DATA XREF: .rdata:0040D284o
		dd 2 dup(1)
		dd offset dword_40D250
dword_40D274	dd 19930522h, 2		; DATA XREF: sub_40A5F0+11o
		dd offset dword_40D23C+4
		dd 1
		dd offset dword_40D260
		dd 3 dup(0)
dword_40D294	dd 1, 0FFFFFFFFh	; DATA XREF: .rdata:0040D2A8o
		dd offset sub_40A610
dword_40D2A0	dd 19930522h, 1		; DATA XREF: sub_40A618+11o
		dd offset dword_40D294+4
		align 20h
		dd 1, 0
dword_40D2C8	dd 0FFFFFFFFh, 3 dup(0)	; DATA XREF: .rdata:0040D3A0o
		dd 1
		dd offset sub_40A640
		dd 1
		dd offset sub_40A64C
		dd 3
		dd offset sub_40A658
		dd 4
		dd offset sub_40A664
		dd 5
		dd offset sub_40A670
		dd 5
		dd offset sub_40A67B
		dd 5
		dd offset sub_40A686
		dd 5
		dd offset sub_40A691
		dd 9
		dd offset sub_40A69C
		dd 0Ah
		dd offset sub_40A6A7
		dd 0Ah
		dd offset sub_40A6B2
		dd 2 dup(0)
dword_40D338	dd 0FFFFFFFFh, 2 dup(0)	; DATA XREF: .rdata:0040D380o
		dd offset off_40F184
		dd 0FFFFF6F4h
		dd offset sub_40517A
		dd 40h,	2 dup(0)
		dd offset sub_4051DE
dword_40D360	dd 40h,	2 dup(0)	; DATA XREF: .rdata:0040D394o
		dd offset sub_405234
dword_40D370	dd 1, 0Ch, 0Dh,	2	; DATA XREF: .rdata:0040D3A8o
		dd offset dword_40D338+8
		align 8
		dd 0Dh,	0Eh, 1
		dd offset dword_40D360
dword_40D398	dd 19930522h, 0Fh	; DATA XREF: sub_40A6BD+1Eo
		dd offset dword_40D2C8
		dd 2
		dd offset dword_40D370
		dd 3 dup(0)
dword_40D3B8	dd 1, 0FFFFFFFFh, 2 dup(0) ; DATA XREF:	.rdata:0040D408o
		dd offset sub_40A6F0
		dd 1
		dd offset sub_40A701
		dd 0FFFFFFFFh, 0
dword_40D3DC	dd 40h,	2 dup(0)	; DATA XREF: .rdata:0040D3FCo
		dd offset loc_402E67
unk_40D3EC	db    0			; DATA XREF: .rdata:0040D410o
		db    0
		db    0
		db    0
		dd 2, 3, 1
		dd offset dword_40D3DC
dword_40D400	dd 19930522h, 4		; DATA XREF: sub_40A709+11o
		dd offset dword_40D3B8+4
		dd 1
		dd offset unk_40D3EC
		align 10h
dword_40D420	dd 1, 0FFFFFFFFh	; DATA XREF: .rdata:0040D444o
		dd offset sub_40A730
		align 10h
		dd offset sub_40A738
		align 8
		dd offset sub_40A740
dword_40D43C	dd 19930522h, 3		; DATA XREF: sub_40A748+1Eo
		dd offset dword_40D420+4
		dd 5 dup(0)
dword_40D45C	dd 1, 0FFFFFFFFh	; DATA XREF: .rdata:0040D480o
		dd offset sub_40A770
		dd 0
		dd offset sub_40A778
		dd 0
		dd offset sub_40A780
dword_40D478	dd 19930522h, 3		; DATA XREF: sub_40A788+1Bo
		dd offset dword_40D45C+4
		dd 5 dup(0)
		dd 1, 0
dword_40D4A0	dd 0FFFFFFFFh, 3 dup(0)	; DATA XREF: .rdata:0040D558o
		dd 1
		dd offset sub_40A7B0
		dd 2
		dd offset sub_40A7BB
		dd 3
		dd offset sub_40A7C6
		dd 4
		dd offset sub_40A7D1
		dd 5
		dd offset sub_40A7DE
		dd 6
		dd offset sub_40A7EB
		dd 5
		dd offset sub_40A7F6
		align 10h
dword_40D4F0	dd 0FFFFFFFFh, 2 dup(0)	; DATA XREF: .rdata:0040D538o
		dd offset off_40F184
		dd 0FFFFF5C8h
		dd offset sub_401B38
		dd 40h,	2 dup(0)
		dd offset sub_401B98
dword_40D518	dd 40h,	2 dup(0)	; DATA XREF: .rdata:0040D54Co
		dd offset sub_401BEA
dword_40D528	dd 1, 8, 9, 2		; DATA XREF: .rdata:0040D560o
		dd offset dword_40D4F0+8
		align 10h
		dd 9, 0Ah, 1
		dd offset dword_40D518
dword_40D550	dd 19930522h, 0Bh	; DATA XREF: sub_40A801+1Eo
		dd offset dword_40D4A0
		dd 2
		dd offset dword_40D528
		align 10h
		dd 1
__IMPORT_DESCRIPTOR_VERSION dd rva off_40D7E4 ;	Import Name Table
		dd 0			; Time stamp
		dd 0			; Forwarder Chain
		dd rva aVersion_dll	; DLL Name
		dd rva VerQueryValueW	; Import Address Table
__IMPORT_DESCRIPTOR_MSVCR100 dd	rva off_40D708 ; Import	Name Table
		dd 0			; Time stamp
		dd 0			; Forwarder Chain
		dd rva aMsvcr100_dll	; DLL Name
		dd rva __imp_??0exception@std@@QAE@ABV01@@Z ; Import Address Table
__IMPORT_DESCRIPTOR_mfc100u dd rva dword_40D81C	; Import Name Table
		dd 0			; Time stamp
		dd 0			; Forwarder Chain
		dd rva aMfc100u_dll	; DLL Name
		dd rva ??Y?$CStringT@_WV?$StrTraitMFC_DLL@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAEAAV01@PB_W@Z ; Import Address Table
__IMPORT_DESCRIPTOR_KERNEL32 dd	rva off_40D67C ; Import	Name Table
		dd 0			; Time stamp
		dd 0			; Forwarder Chain
		dd rva aKernel32_dll	; DLL Name
		dd rva MultiByteToWideChar ; Import Address Table
__IMPORT_DESCRIPTOR_USER32 dd rva off_40D7D8 ; Import Name Table
		dd 0			; Time stamp
		dd 0			; Forwarder Chain
		dd rva aUser32_dll	; DLL Name
		dd rva LoadCursorW	; Import Address Table
__IMPORT_DESCRIPTOR_ADVAPI32 dd	rva off_40D63C ; Import	Name Table
		dd 0			; Time stamp
		dd 0			; Forwarder Chain
		dd rva aAdvapi32_dll	; DLL Name
		dd rva CryptDestroyHash	; Import Address Table
__IMPORT_DESCRIPTOR_SHELL32 dd rva off_40D7D0 ;	Import Name Table
		dd 0			; Time stamp
		dd 0			; Forwarder Chain
		dd rva aShell32_dll	; DLL Name
		dd rva CommandLineToArgvW ; Import Address Table
__IMPORT_DESCRIPTOR_MSVCP100 dd	rva off_40D6F8 ; Import	Name Table
		dd 0			; Time stamp
		dd 0			; Forwarder Chain
		dd rva aMsvcp100_dll	; DLL Name
		dd rva ?_Xlength_error@std@@YAXPBD@Z ; Import Address Table
__IMPORT_DESCRIPTOR_WININET dd rva off_40D7F4 ;	Import Name Table
		dd 0			; Time stamp
		dd 0			; Forwarder Chain
		dd rva aWininet_dll	; DLL Name
		dd rva HttpOpenRequestW	; Import Address Table
		dd 5 dup(0)
;
; Import names for ADVAPI32.dll
;
off_40D63C	dd rva word_40DFCA	; DATA XREF: .rdata:__IMPORT_DESCRIPTOR_ADVAPI32o
		dd rva word_40DFB4
		dd rva word_40DF9C
		dd rva word_40DF8A
		dd rva word_40DF7A
		dd rva word_40DF66
		dd rva word_40DF5C
		dd rva word_40DF4E
		dd rva word_40DF38
		dd rva word_40DF28
		dd rva word_40DF1A
		dd rva word_40DF08
		dd rva word_40DEFA
		dd rva word_40DEE6
		dd rva word_40DED6
		dd 0
;
; Import names for KERNEL32.dll
;
off_40D67C	dd rva word_40DCEC	; DATA XREF: .rdata:__IMPORT_DESCRIPTOR_KERNEL32o
		dd rva word_40DCE0
		dd rva word_40DCD4
		dd rva word_40DCBE
		dd rva word_40DCAE
		dd rva word_40DCA2
		dd rva word_40DC90
		dd rva word_40DC7C
		dd rva word_40DC6A
		dd rva word_40DD50
		dd rva word_40DD5E
		dd rva word_40DD6E
		dd rva word_40DD7E
		dd rva word_40DD94
		dd rva word_40DD9C
		dd rva word_40DDBA
		dd rva word_40DDD0
		dd rva word_40DDE4
		dd rva word_40DE00
		dd rva word_40DE1E
		dd rva word_40DE32
		dd rva word_40DE4C
		dd rva word_40DE5C
		dd rva word_40DE72
		dd rva word_40DE88
		dd rva word_40DD02
		dd rva word_40DD10
		dd rva word_40DD1E
		dd rva word_40DD2E
		dd rva word_40DD3C
		dd 0
;
; Import names for MSVCP100.dll
;
off_40D6F8	dd rva word_40E02E	; DATA XREF: .rdata:__IMPORT_DESCRIPTOR_MSVCP100o
		dd rva word_40E00E
		dd rva word_40E04E
		dd 0
;
; Import names for MSVCR100.dll
;
off_40D708	dd rva word_40D97C	; DATA XREF: .rdata:__IMPORT_DESCRIPTOR_MSVCR100o
		dd rva word_40D968
		dd rva word_40D9BE
		dd rva word_40D9DA
		dd rva word_40D95E
		dd rva word_40D94E
		dd rva word_40D99E
		dd rva word_40D970
		dd rva word_40DC4E
		dd rva word_40DC3C
		dd rva word_40DC22
		dd rva word_40DBEC
		dd rva word_40DBD8
		dd rva word_40DBC2
		dd rva word_40DBB0
		dd rva word_40DBA6
		dd rva word_40DB9A
		dd rva word_40D9FA
		dd rva word_40DA0A
		dd rva word_40DA14
		dd rva word_40DA1E
		dd rva word_40DB86
		dd rva word_40DB70
		dd rva word_40DB62
		dd rva word_40DB56
		dd rva word_40DB48
		dd rva word_40DB40
		dd rva word_40DB32
		dd rva word_40DB2A
		dd rva word_40DB20
		dd rva word_40DB0E
		dd rva word_40DB00
		dd rva word_40DAF6
		dd rva word_40DAEE
		dd rva word_40DAE0
		dd rva word_40DAD6
		dd rva word_40E150
		dd rva word_40DA28
		dd rva word_40DABE
		dd rva word_40DAAE
		dd rva word_40DAA4
		dd rva word_40DA9A
		dd rva word_40DA84
		dd rva word_40DA6E
		dd rva word_40DA5E
		dd rva word_40DA50
		dd rva word_40DA46
		dd rva word_40DA3A
		dd rva word_40DA32
		dd 0
;
; Import names for SHELL32.dll
;
off_40D7D0	dd rva word_40DFEC	; DATA XREF: .rdata:__IMPORT_DESCRIPTOR_SHELL32o
		dd 0
;
; Import names for USER32.dll
;
off_40D7D8	dd rva word_40DEBC	; DATA XREF: .rdata:__IMPORT_DESCRIPTOR_USER32o
		dd rva word_40DEB0
		dd 0
;
; Import names for VERSION.dll
;
off_40D7E4	dd rva word_40D930	; DATA XREF: .rdata:__IMPORT_DESCRIPTOR_VERSIONo
		dd rva word_40D91A
		dd rva word_40D900
		dd 0
;
; Import names for WININET.dll
;
off_40D7F4	dd rva word_40E11C	; DATA XREF: .rdata:__IMPORT_DESCRIPTOR_WININETo
		dd rva word_40E10A
		dd rva word_40E0F4
		dd rva word_40E0E0
		dd rva word_40E0C2
		dd rva word_40E0AE
		dd rva word_40E098
		dd rva word_40E088
		dd rva word_40E130
		dd 0
;
; Import names for mfc100u.dll
;
dword_40D81C	dd 800005C7h		; DATA XREF: .rdata:__IMPORT_DESCRIPTOR_mfc100uo
		dd 80002CE6h
		dd 8000119Fh
		dd 80000858h
		dd 80000859h
		dd 80000857h
		dd 800033A8h
		dd 80000A3Ch
		dd 80001037h
		dd 80001D64h
		dd 80000A36h
		dd 80001794h
		dd 80000B07h
		dd 80002C42h
		dd 80000809h
		dd 80003454h
		dd 800010EBh
		dd 80002C59h
		dd 80003467h
		dd 8000080Eh
		dd 8000081Dh
		dd 80003216h
		dd 80000810h
		dd 80000814h
		dd 80000828h
		dd 8000050Ch
		dd 8000037Ah
		dd 8000117Eh
		dd 80001CBDh
		dd 80000D52h
		dd 80000A45h
		dd 8000011Dh
		dd 80001490h
		dd 80000118h
		dd 800005AAh
		dd 8000011Eh
		dd 8000051Eh
		dd 80000515h
		dd 800010C2h
		dd 80000386h
		dd 80000128h
		dd 8000146Dh
		dd 80000520h
		dd 80000F06h
		dd 800007DFh
		dd 800005C4h
		dd 8000011Fh
		dd 80000122h
		dd 80003525h
		dd 80000142h
		dd 80000140h
		dd 8000038Ch
		dd 8000082Bh
		dd 800007FDh
		dd 80000799h
		dd 80000143h
		dd 0
word_40D900	dw 5			; DATA XREF: .rdata:0040D7ECo
		db 'GetFileVersionInfoSizeW',0
word_40D91A	dw 6			; DATA XREF: .rdata:0040D7E8o
		db 'GetFileVersionInfoW',0
word_40D930	dw 0Eh			; DATA XREF: .rdata:off_40D7E4o
		db 'VerQueryValueW',0
		align 2
aVersion_dll	db 'VERSION.dll',0      ; DATA XREF: .rdata:0040D580o
word_40D94E	dw 65h			; DATA XREF: .rdata:0040D71Co
		db '??3@YAXPAX@Z',0
		align 2
word_40D95E	dw 5C4h			; DATA XREF: .rdata:0040D718o
		db 'malloc',0
		align 4
word_40D968	dw 58Bh			; DATA XREF: .rdata:0040D70Co
		db 'free',0
		align 10h
word_40D970	dw 5F0h			; DATA XREF: .rdata:0040D724o
		db 'sprintf_s',0
word_40D97C	dw 24h			; DATA XREF: .rdata:off_40D708o
		db '??0exception@std@@QAE@ABV01@@Z',0
		align 2
word_40D99E	dw 10Dh			; DATA XREF: .rdata:0040D720o
		db '?what@exception@std@@UBEPBDXZ',0
word_40D9BE	dw 5Dh			; DATA XREF: .rdata:0040D710o
		db '??1exception@std@@UAE@XZ',0
		align 2
word_40D9DA	dw 22h			; DATA XREF: .rdata:0040D714o
		db '??0exception@std@@QAE@ABQBD@Z',0
word_40D9FA	dw 63h			; DATA XREF: .rdata:0040D74Co
		db '??2@YAPAXI@Z',0
		align 2
word_40DA0A	dw 5D1h			; DATA XREF: .rdata:0040D750o
		db 'memmove',0
word_40DA14	dw 651h			; DATA XREF: .rdata:0040D754o
		db 'wprintf',0
word_40DA1E	dw 5A2h			; DATA XREF: .rdata:0040D758o
		db 'isalnum',0
word_40DA28	dw 471h			; DATA XREF: .rdata:0040D79Co
		db '_time64',0
word_40DA32	dw 550h			; DATA XREF: .rdata:0040D7C8o
		db '_wtoi',0
word_40DA3A	dw 3E4h			; DATA XREF: .rdata:0040D7C4o
		db '_recalloc',0
word_40DA46	dw 56Bh			; DATA XREF: .rdata:0040D7C0o
		db 'calloc',0
		align 10h
word_40DA50	dw 611h			; DATA XREF: .rdata:0040D7BCo
		db 'swprintf_s',0
		align 2
word_40DA5E	dw 78h			; DATA XREF: .rdata:0040D7B8o
		db '??_U@YAPAXI@Z',0
word_40DA6E	dw 13Ah			; DATA XREF: .rdata:0040D7B4o
		db '__CxxFrameHandler3',0
		align 4
word_40DA84	dw 121h			; DATA XREF: .rdata:0040D7B0o
		db '_CxxThrowException',0
		align 2
word_40DA9A	dw 5E3h			; DATA XREF: .rdata:0040D7ACo
		db 'realloc',0
word_40DAA4	dw 5D3h			; DATA XREF: .rdata:0040D7A8o
		db 'memset',0
		align 2
word_40DAAE	dw 7Ah			; DATA XREF: .rdata:0040D7A4o
		db '??_V@YAXPAX@Z',0
word_40DABE	dw 604h			; DATA XREF: .rdata:0040D7A0o
		db 'strncpy',0
aMsvcr100_dll	db 'MSVCR100.dll',0     ; DATA XREF: .rdata:0040D594o
		align 2
word_40DAD6	dw 48Dh			; DATA XREF: .rdata:0040D794o
		db '_unlock',0
word_40DAE0	dw 15Bh			; DATA XREF: .rdata:0040D790o
		db '__dllonexit',0
word_40DAEE	dw 323h			; DATA XREF: .rdata:0040D78Co
		db '_lock',0
word_40DAF6	dw 3C9h			; DATA XREF: .rdata:0040D788o
		db '_onexit',0
word_40DB00	dw 1C5h			; DATA XREF: .rdata:0040D784o
		db '_amsg_exit',0
		align 2
word_40DB0E	dw 1B6h			; DATA XREF: .rdata:0040D780o
		db '__wgetmainargs',0
		align 10h
word_40DB20	dw 1DCh			; DATA XREF: .rdata:0040D77Co
		db '_cexit',0
		align 2
word_40DB2A	dw 22Ah			; DATA XREF: .rdata:0040D778o
		db '_exit',0
word_40DB32	dw 12Dh			; DATA XREF: .rdata:0040D774o
		db '_XcptFilter',0
word_40DB40	dw 573h			; DATA XREF: .rdata:0040D770o
		db 'exit',0
		align 4
word_40DB48	dw 1B7h			; DATA XREF: .rdata:0040D76Co
		db '__winitenv',0
		align 2
word_40DB56	dw 2B0h			; DATA XREF: .rdata:0040D768o
		db '_initterm',0
word_40DB62	dw 2B1h			; DATA XREF: .rdata:0040D764o
		db '_initterm_e',0
word_40DB70	dw 1ECh			; DATA XREF: .rdata:0040D760o
		db '_configthreadlocale',0
word_40DB86	dw 1A2h			; DATA XREF: .rdata:0040D75Co
		db '__setusermatherr',0
		align 2
word_40DB9A	dw 1EBh			; DATA XREF: .rdata:0040D748o
		db '_commode',0
		align 2
word_40DBA6	dw 245h			; DATA XREF: .rdata:0040D744o
		db '_fmode',0
		align 10h
word_40DBB0	dw 19Fh			; DATA XREF: .rdata:0040D740o
		db '__set_app_type',0
		align 2
word_40DBC2	dw 1FBh			; DATA XREF: .rdata:0040D73Co
		db '_crt_debugger_hook',0
		align 4
word_40DBD8	dw 102h			; DATA XREF: .rdata:0040D738o
		db '?terminate@@YAXXZ',0
word_40DBEC	dw 0EEh			; DATA XREF: .rdata:0040D734o
		db '?_type_info_dtor_internal_method@type_info@@QAEXXZ',0
		align 2
word_40DC22	dw 221h			; DATA XREF: .rdata:0040D730o
		db '_except_handler4_common',0
word_40DC3C	dw 2B8h			; DATA XREF: .rdata:0040D72Co
		db '_invoke_watson',0
		align 2
word_40DC4E	dw 1EFh			; DATA XREF: .rdata:0040D728o
		db '_controlfp_s',0
		align 2
aMfc100u_dll	db 'mfc100u.dll',0      ; DATA XREF: .rdata:0040D5A8o
word_40DC6A	dw 245h			; DATA XREF: .rdata:0040D69Co
		db 'GetProcAddress',0
		align 4
word_40DC7C	dw 218h			; DATA XREF: .rdata:0040D698o
		db 'GetModuleHandleW',0
		align 10h
word_40DC90	dw 187h			; DATA XREF: .rdata:0040D694o
		db 'GetCommandLineW',0
word_40DCA2	dw 348h			; DATA XREF: .rdata:0040D690o
		db 'LocalFree',0
word_40DCAE	dw 202h			; DATA XREF: .rdata:0040D68Co
		db 'GetLastError',0
		align 2
word_40DCBE	dw 511h			; DATA XREF: .rdata:0040D688o
		db 'WideCharToMultiByte',0
word_40DCD4	dw 54Eh			; DATA XREF: .rdata:0040D684o
		db 'lstrlenW',0
		align 10h
word_40DCE0	dw 54Dh			; DATA XREF: .rdata:0040D680o
		db 'lstrlenA',0
		align 4
word_40DCEC	dw 367h			; DATA XREF: .rdata:off_40D67Co
		db 'MultiByteToWideChar',0
word_40DD02	dw 2B3h			; DATA XREF: .rdata:0040D6E0o
		db 'GlobalAlloc',0
word_40DD10	dw 2BEh			; DATA XREF: .rdata:0040D6E4o
		db 'GlobalLock',0
		align 2
word_40DD1E	dw 2C5h			; DATA XREF: .rdata:0040D6E8o
		db 'GlobalUnlock',0
		align 2
word_40DD2E	dw 2BAh			; DATA XREF: .rdata:0040D6ECo
		db 'GlobalFree',0
		align 4
word_40DD3C	dw 1C0h			; DATA XREF: .rdata:0040D6F0o
		db 'GetCurrentProcess',0
word_40DD50	dw 344h			; DATA XREF: .rdata:0040D6A0o
		db 'LocalAlloc',0
		align 2
word_40DD5E	dw 0EAh			; DATA XREF: .rdata:0040D6A4o
		db 'EncodePointer',0
word_40DD6E	dw 0CAh			; DATA XREF: .rdata:0040D6A8o
		db 'DecodePointer',0
word_40DD7E	dw 2ECh			; DATA XREF: .rdata:0040D6ACo
		db 'InterlockedExchange',0
word_40DD94	dw 4B2h			; DATA XREF: .rdata:0040D6B0o
		db 'Sleep',0
word_40DD9C	dw 2E9h			; DATA XREF: .rdata:0040D6B4o
		db 'InterlockedCompareExchange',0
		align 2
word_40DDBA	dw 2D3h			; DATA XREF: .rdata:0040D6B8o
		db 'HeapSetInformation',0
		align 10h
word_40DDD0	dw 4C0h			; DATA XREF: .rdata:0040D6BCo
		db 'TerminateProcess',0
		align 4
word_40DDE4	dw 4D3h			; DATA XREF: .rdata:0040D6C0o
		db 'UnhandledExceptionFilter',0
		align 10h
word_40DE00	dw 4A5h			; DATA XREF: .rdata:0040D6C4o
		db 'SetUnhandledExceptionFilter',0
word_40DE1E	dw 300h			; DATA XREF: .rdata:0040D6C8o
		db 'IsDebuggerPresent',0
word_40DE32	dw 3A7h			; DATA XREF: .rdata:0040D6CCo
		db 'QueryPerformanceCounter',0
word_40DE4C	dw 293h			; DATA XREF: .rdata:0040D6D0o
		db 'GetTickCount',0
		align 4
word_40DE5C	dw 1C5h			; DATA XREF: .rdata:0040D6D4o
		db 'GetCurrentThreadId',0
		align 2
word_40DE72	dw 1C1h			; DATA XREF: .rdata:0040D6D8o
		db 'GetCurrentProcessId',0
word_40DE88	dw 279h			; DATA XREF: .rdata:0040D6DCo
		db 'GetSystemTimeAsFileTime',0
aKernel32_dll	db 'KERNEL32.dll',0     ; DATA XREF: .rdata:0040D5BCo
		align 10h
word_40DEB0	dw 288h			; DATA XREF: .rdata:0040D7DCo
		db 'SetCursor',0
word_40DEBC	dw 1EBh			; DATA XREF: .rdata:off_40D7D8o
		db 'LoadCursorW',0
aUser32_dll	db 'USER32.dll',0       ; DATA XREF: .rdata:0040D5D0o
		align 2
word_40DED6	dw 261h			; DATA XREF: .rdata:0040D674o
		db 'RegOpenKeyExW',0
word_40DEE6	dw 26Eh			; DATA XREF: .rdata:0040D670o
		db 'RegQueryValueExW',0
		align 2
word_40DEFA	dw 230h			; DATA XREF: .rdata:0040D66Co
		db 'RegCloseKey',0
word_40DF08	dw 27Eh			; DATA XREF: .rdata:0040D668o
		db 'RegSetValueExW',0
		align 2
word_40DF1A	dw 253h			; DATA XREF: .rdata:0040D664o
		db 'RegFlushKey',0
word_40DF28	dw 165h			; DATA XREF: .rdata:0040D660o
		db 'GetUserNameW',0
		align 4
word_40DF38	dw 18Fh			; DATA XREF: .rdata:0040D65Co
		db 'LookupAccountNameW',0
		align 2
word_40DF4E	dw 186h			; DATA XREF: .rdata:0040D658o
		db 'IsValidSid',0
		align 4
word_40DF5C	dw 120h			; DATA XREF: .rdata:0040D654o
		db 'FreeSid',0
word_40DF66	dw 0C4h			; DATA XREF: .rdata:0040D650o
		db 'CryptGetHashParam',0
word_40DF7A	dw 0C8h			; DATA XREF: .rdata:0040D64Co
		db 'CryptHashData',0
word_40DF8A	dw 0B3h			; DATA XREF: .rdata:0040D648o
		db 'CryptCreateHash',0
word_40DF9C	dw 0B1h			; DATA XREF: .rdata:0040D644o
		db 'CryptAcquireContextW',0
		align 4
word_40DFB4	dw 0CBh			; DATA XREF: .rdata:0040D640o
		db 'CryptReleaseContext',0
word_40DFCA	dw 0B6h			; DATA XREF: .rdata:off_40D63Co
		db 'CryptDestroyHash',0
		align 2
aAdvapi32_dll	db 'ADVAPI32.dll',0     ; DATA XREF: .rdata:0040D5E4o
		align 4
word_40DFEC	dw 6			; DATA XREF: .rdata:off_40D7D0o
		db 'CommandLineToArgvW',0
		align 2
aShell32_dll	db 'SHELL32.dll',0      ; DATA XREF: .rdata:0040D5F8o
word_40E00E	dw 28Eh			; DATA XREF: .rdata:0040D6FCo
		db '?_Xout_of_range@std@@YAXPBD@Z',0
word_40E02E	dw 28Ch			; DATA XREF: .rdata:off_40D6F8o
		db '?_Xlength_error@std@@YAXPBD@Z',0
word_40E04E	dw 251h			; DATA XREF: .rdata:0040D700o
		db '?_Orphan_all@_Container_base0@std@@QAEXXZ',0
aMsvcp100_dll	db 'MSVCP100.dll',0     ; DATA XREF: .rdata:0040D60Co
		align 4
word_40E088	dw 9Ah			; DATA XREF: .rdata:0040D810o
		db 'InternetOpenW',0
word_40E098	dw 6Bh			; DATA XREF: .rdata:0040D80Co
		db 'InternetCloseHandle',0
word_40E0AE	dw 9Fh			; DATA XREF: .rdata:0040D808o
		db 'InternetReadFile',0
		align 2
word_40E0C2	dw 9Bh			; DATA XREF: .rdata:0040D804o
		db 'InternetQueryDataAvailable',0
		align 10h
word_40E0E0	dw 5Eh			; DATA XREF: .rdata:0040D800o
		db 'HttpSendRequestW',0
		align 4
word_40E0F4	dw 0AFh			; DATA XREF: .rdata:0040D7FCo
		db 'InternetSetOptionW',0
		align 2
word_40E10A	dw 5Ah			; DATA XREF: .rdata:0040D7F8o
		db 'HttpQueryInfoW',0
		align 4
word_40E11C	dw 58h			; DATA XREF: .rdata:off_40D7F4o
		db 'HttpOpenRequestW',0
		align 10h
word_40E130	dw 72h			; DATA XREF: .rdata:0040D814o
		db 'InternetConnectW',0
		align 4
aWininet_dll	db 'WININET.dll',0      ; DATA XREF: .rdata:0040D620o
word_40E150	dw 5CFh			; DATA XREF: .rdata:0040D798o
		db 'memcpy',0
		align 1000h
_rdata		ends

; Section 3. (virtual address 0000F000)
; Virtual size			: 000007C8 (   1992.)
; Section size in file		: 00000400 (   1024.)
; Offset to raw	data for section: 0000D000
; Flags	C0000040: Data Readable	Writable
; Alignment	: default
; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read/Write
_data		segment	para public 'DATA' use32
		assume cs:_data
		;org 40F000h
off_40F000	dd offset off_40B87C	; DATA XREF: .rdata:0040C094o
					; .rdata:off_40C0B4o
		align 8
a_?avcaperror@@	db '.?AVCAPError@@',0
		align 4
off_40F018	dd offset off_40B7F8	; DATA XREF: sub_40A8B0o
dword_40F01C	dd 7 dup(0)		; DATA XREF: sub_40A850o
off_40F038	dd offset off_40B87C	; DATA XREF: .rdata:0040C0DCo
					; .rdata:off_40C108o
		align 10h
a_?avcaparray@@	db '.?AVCAPArray@@',0
		align 10h
off_40F050	dd offset off_40B87C	; DATA XREF: .rdata:off_40C124o
					; .rdata:off_40C160o
		align 8
a_?av?Vector@pa	db '.?AV?$vector@PAXV?$allocator@PAX@std@@@std@@',0
		align 4
off_40F088	dd offset off_40B87C	; DATA XREF: .rdata:off_40C17Co
					; .rdata:off_40C1E8o
		align 10h
a_?av?_vector_v	db '.?AV?$_Vector_val@PAXV?$allocator@PAX@std@@@std@@',0
		align 4
off_40F0C4	dd offset off_40B87C	; DATA XREF: .rdata:off_40C1B4o
					; .rdata:off_40C204o
		dd 0
a_?au_container	db '.?AU_Container_base0@std@@',0
		align 4
off_40F0E8	dd offset off_40B87C	; DATA XREF: .rdata:0040C22Co
					; .rdata:off_40C24Co
		align 10h
a_?avtype_info@	db '.?AVtype_info@@',0
___security_cookie dd 0BB40E64Eh	; DATA XREF: sub_4010D0+14r
					; sub_4012C0+17r ...
dword_40F104	dd 44BF19B1h		; DATA XREF: ___report_gsfailure+B0r
					; ___security_init_cookie+2Bw ...
		align 10h
		dd 2 dup(0FFFFFFFFh)
dword_40F118	dd 0FFFFFFFEh		; DATA XREF: $LN33+A5r
dword_40F11C	dd 1			; DATA XREF: $LN33+8Br
off_40F120	dd offset off_40B87C	; DATA XREF: .rdata:0040C274o
					; .rdata:off_40C29Co
		align 8
a_?av_afx_dll_m	db '.?AV_AFX_DLL_MODULE_STATE@@',0
off_40F144	dd offset off_40B87C	; DATA XREF: .rdata:off_40C2B8o
		dd 0
a_?avafx_module	db '.?AVAFX_MODULE_STATE@@',0
		align 4
off_40F164	dd offset off_40B87C	; DATA XREF: .rdata:off_40C2F0o
		dd 0
a_?avcnotrackob	db '.?AVCNoTrackObject@@',0
		align 4
off_40F184	dd offset off_40B87C	; DATA XREF: .rdata:0040C8FCo
					; .rdata:0040CDE0o ...
		dd 0
a_pavcnxexcepti	db '.PAVCNxException@@',0
		align 10h
off_40F1A0	dd offset off_40B87C	; DATA XREF: .rdata:0040C918o
		align 8
a_pax		db '.PAX',0
		align 10h
off_40F1B0	dd offset off_40B87C	; DATA XREF: .rdata:0040C934o
		align 8
		dd 482Eh
off_40F1BC	dd offset off_40B87C	; DATA XREF: .rdata:off_40C354o
					; .rdata:0040C984o
		dd 0
a_?avexception@	db '.?AVexception@std@@',0
off_40F1D8	dd offset off_40B87C	; DATA XREF: .rdata:0040C330o
					; .rdata:off_40C388o ...
		align 10h
a_?avbad_alloc@	db '.?AVbad_alloc@std@@',0
off_40F1F4	dd offset off_40B87C	; DATA XREF: .rdata:0040C3B0o
					; .rdata:off_40C3D4o
		dd 0
a_?av?Clist@w4e	db '.?AV?$CList@W4EKMEventType@@ABW41@@@',0
		align 4
off_40F224	dd offset off_40B87C	; DATA XREF: .rdata:off_40C420o
		dd 0
a_?avcobject@@	db '.?AVCObject@@',0
		align 4
off_40F23C	dd offset off_40B87C	; DATA XREF: .rdata:0040C3FCo
					; .rdata:off_40C454o
		dd 0
a_?av?Clist@uce	db '.?AV?$CList@UCEventDataStruct@@ABU1@@@',0
		align 4
off_40F26C	dd offset off_40B87C	; DATA XREF: .rdata:0040CA2Co
					; .rdata:0040CC0Co ...
		dd 0
a_pavcexception	db '.PAVCException@@',0
		align 4
; int argc
argc		dd 0			; DATA XREF: _pre_cpp_init+2Bo
					; ___tmainCRTStartup+117r
; char **envp
envp		dd 0			; DATA XREF: _pre_cpp_init+21o
					; ___tmainCRTStartup:loc_4093FDr ...
; char **argv
argv		dd 0			; DATA XREF: _pre_cpp_init+26o
					; ___tmainCRTStartup+111r
dword_40F294	dd 0			; DATA XREF: ___tmainCRTStartup+12Ar
					; ___tmainCRTStartup+15Ar ...
dword_40F298	dd 0			; DATA XREF: _pre_cpp_init+39w
dword_40F29C	dd 0			; DATA XREF: _pre_cpp_init+Fo
					; _pre_cpp_init+1Cw
dword_40F2A0	dd 0			; DATA XREF: ___tmainCRTStartup+125w
					; ___tmainCRTStartup+153w ...
dword_40F2A4	dd 0			; DATA XREF: ___tmainCRTStartup:loc_4093A5w
					; ___tmainCRTStartup:$LN37r
dword_40F2A8	dd 0			; DATA XREF: ___report_gsfailure+91w
					; .rdata:ExceptionInfoo
dword_40F2AC	dd 0			; DATA XREF: ___report_gsfailure+9Bw
		dd 0
dword_40F2B4	dd 0			; DATA XREF: ___report_gsfailure+8Cw
		dd 10h dup(0)
dword_40F2F8	dd 0			; DATA XREF: ___report_gsfailure+C1w
					; ___report_gsfailure+E1r
		align 10h
dword_40F300	dd 0			; DATA XREF: ___report_gsfailure+7Dw
					; .rdata:ExceptionInfoo
		dd 22h dup(0)
word_40F38C	dw 0			; DATA XREF: ___report_gsfailure+51w
		align 10h
word_40F390	dw 0			; DATA XREF: ___report_gsfailure+4Aw
		align 4
word_40F394	dw 0			; DATA XREF: ___report_gsfailure+43w
		align 4
word_40F398	dw 0			; DATA XREF: ___report_gsfailure+3Cw
		align 4
dword_40F39C	dd 0			; DATA XREF: ___report_gsfailure+28w
dword_40F3A0	dd 0			; DATA XREF: ___report_gsfailure+22w
dword_40F3A4	dd 0			; DATA XREF: ___report_gsfailure+1Cw
dword_40F3A8	dd 0			; DATA XREF: ___report_gsfailure+16w
dword_40F3AC	dd 0			; DATA XREF: ___report_gsfailure+10w
dword_40F3B0	dd 0			; DATA XREF: ___report_gsfailure+Bw
dword_40F3B4	dd 0			; DATA XREF: ___report_gsfailure+62w
dword_40F3B8	dd 0			; DATA XREF: ___report_gsfailure+6Aw
					; ___report_gsfailure+87r
word_40F3BC	dw 0			; DATA XREF: ___report_gsfailure+35w
		align 10h
dword_40F3C0	dd 0			; DATA XREF: ___report_gsfailure+59w
dword_40F3C4	dd 0			; DATA XREF: ___report_gsfailure+72w
word_40F3C8	dw 0			; DATA XREF: ___report_gsfailure+2Ew
		align 4
		dd 0Dh dup(0)
		dd 73h dup(?)
dword_40F5CC	dd ?			; DATA XREF: _pre_cpp_init+16r
dword_40F5D0	dd ?			; DATA XREF: _pre_cpp_init+Ar
dword_40F5D4	dd ?			; DATA XREF: $LN33+79r
dword_40F5D8	dd ?			; DATA XREF: $LN33+5Dr
		dd 2 dup(?)
dword_40F5E4	dd ?			; DATA XREF: sub_409B55+41r
		align 20h
; AFX_MODULE_STATE dword_40F600
dword_40F600	dd ?			; DATA XREF: sub_409B0A+11o
					; sub_409B55+29o ...
		dd 2Ah dup(?)
dword_40F6AC	dd ?			; DATA XREF: sub_401B38r
					; sub_401B38+2Fr ...
		dd 12h dup(?)
dword_40F6F8	dd 2Eh dup(?)		; DATA XREF: sub_40A830+2o sub_40A8A0o
dword_40F7B0	dd ?			; DATA XREF: ___tmainCRTStartup:loc_40935Dr
					; ___tmainCRTStartup:loc_409370r ...
; volatile LONG	Target
Target		dd ?			; DATA XREF: ___tmainCRTStartup+30o
dword_40F7B8	dd ?			; DATA XREF: ___tmainCRTStartup+Er
dword_40F7BC	dd ?			; DATA XREF: ___tmainCRTStartup:loc_4093DCr
					; ___tmainCRTStartup+E5o ...
; PVOID	dword_40F7C0
dword_40F7C0	dd ?			; DATA XREF: __onexit+45r __onexit+7Ew ...
; PVOID	Ptr
Ptr		dd ?			; DATA XREF: __onexit+Cr __onexit+3Ar	...
		align 1000h
_data		ends


		end start

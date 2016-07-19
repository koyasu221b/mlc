; Format      :	Portable executable for	80386 (PE)
; Imagebase   :	400000
; Section 1. (virtual address 00001000)
; Virtual size			: 000165D8 (  91608.)
; Section size in file		: 00017000 (  94208.)
; Offset to raw	data for section: 00001000
; Flags	60000020: Text Executable Readable
; Alignment	: default
;
; Imports from MSVBVM60.DLL
;

		include	uni.inc	; see unicode subdir of	ida for	info on	unicode

		.686p
		.mmx
		.model flat

; ===========================================================================

; Segment type:	Externs
; _idata
		extrn __vbaStrI2:dword	; CODE XREF: .text:00411052p
					; .text:00411212p ...
		extrn _CIcos:dword	; DATA XREF: .text:00401576r
		extrn _adj_fptan:dword	; DATA XREF: .text:0040156Ar
		extrn __vbaStrI4:dword	; CODE XREF: .text:0040D77Ap
					; .text:0040D7B9p ...
		extrn __vbaFreeVar:dword ; CODE	XREF: .text:004090DDp
					; .text:0040917Bp ...
		extrn __vbaLateIdCall:dword ; CODE XREF: .text:004090C1p
					; .text:0040915Fp ...
		extrn __vbaStrVarMove:dword ; CODE XREF: .text:0040AE0Dp
					; .text:0040B03Ap ...
		extrn __vbaFreeVarList:dword ; CODE XREF: .text:00409021p
					; .text:00409253p ...
		extrn __vbaEnd:dword	; CODE XREF: .text:00412716p
					; DATA XREF: .text:004015A6r ...
		extrn __imp__adj_fdiv_m64:dword	; DATA XREF: _adj_fdiv_m64r
		extrn __vbaFreeObjList:dword ; CODE XREF: .text:00409011p
					; .text:004090D1p ...
		extrn _adj_fprem1:dword	; DATA XREF: .text:00401564r
		extrn __vbaStrCat:dword	; CODE XREF: .text:0040CEC3p
					; .text:0040D1FAp ...
		extrn __vbaHresultCheckObj:dword ; CODE	XREF: .text:00408DF7p
					; .text:00408E19p ...
		extrn _adj_fdiv_m32:dword ; DATA XREF: .text:00401528r
		extrn __vbaObjSet:dword	; CODE XREF: .text:00408FD3p
					; .text:00408FF1p ...
		extrn rtcMsgBox:dword	; CODE XREF: .text:00410864p
					; .text:004126F5p
					; DATA XREF: ...
		extrn _adj_fdiv_m16i:dword ; DATA XREF:	.text:00401522r
		extrn _adj_fdivr_m16i:dword ; DATA XREF: .text:00401540r
		extrn rtcDoEvents:dword	; CODE XREF: .text:004134EDp
					; .text:0041380Dp ...
		extrn __vbaBoolVar:dword ; CODE	XREF: .text:0040D4AAp
					; .text:0040DB45p ...
		extrn _CIsin:dword	; DATA XREF: .text:00401588r
		extrn __vbaChkstk:dword	; DATA XREF: .text:00401511o
		extrn EVENT_SINK_AddRef:dword ;	DATA XREF: .text:loc_401678r
		extrn __vbaStrCmp:dword	; CODE XREF: .text:004103E7p
					; .text:00410DFEp
					; DATA XREF: ...
		extrn __vbaI2I4:dword	; CODE XREF: .text:0040E4A9p
					; .text:00410A28p ...
		extrn __vbaCastObjVar:dword ; CODE XREF: .text:00408FE6p
					; .text:004090B3p ...
		extrn __vbaStrR4:dword	; CODE XREF: .text:0040D876p
					; DATA XREF: .text:004015E2r ...
		extrn _adj_fpatan:dword	; DATA XREF: .text:00401558r
		extrn __vbaR4Var:dword	; CODE XREF: .text:0040A746p
					; .text:00411AA2p ...
		extrn __vbaLateIdCallLd:dword ;	CODE XREF: .text:00408FE0p
					; .text:00408FF8p ...
		extrn EVENT_SINK_Release:dword ; DATA XREF: .text:loc_40167Er
		extrn _CIsqrt:dword	; DATA XREF: .text:0040158Er
		extrn EVENT_SINK_QueryInterface:dword ;	DATA XREF: .text:loc_401672r
		extrn __vbaExceptHandler:dword ; DATA XREF: .text:loc_401516r
		extrn _adj_fprem:dword	; DATA XREF: .text:0040155Er
		extrn _adj_fdivr_m64:dword ; DATA XREF:	.text:00401552r
		extrn rtcVarBstrFromAnsi:dword ; CODE XREF: .text:004107FDp
					; .text:00410804p
					; DATA XREF: ...
		extrn __vbaFPException:dword ; DATA XREF: .text:loc_40151Cr
		extrn __vbaVarCat:dword	; CODE XREF: .text:00410842p
					; .text:00410850p ...
		extrn __vbaI2Var:dword	; CODE XREF: .text:0040A691p
					; .text:0040AD1Fp ...
		extrn VarPtr:dword	; CODE XREF: .text:004090E7p
					; .text:00409193p
					; DATA XREF: ...
		extrn _CIlog:dword	; DATA XREF: .text:00401582r
		extrn __vbaErrorOverflow:dword ; CODE XREF: .text:loc_40A5F7p
					; .text:loc_40AAE9p ...
		extrn _adj_fdiv_m32i:dword ; DATA XREF:	.text:0040152Er
		extrn _adj_fdivr_m32i:dword ; DATA XREF: .text:0040154Cr
		extrn __vbaStrCopy:dword ; CODE	XREF: .text:0040DCBEp
					; .text:00410284p
					; DATA XREF: ...
		extrn __vbaFreeStrList:dword ; CODE XREF: .text:0040CEFEp
					; .text:0040CF35p ...
		extrn _adj_fdivr_m32:dword ; DATA XREF:	.text:00401546r
		extrn _adj_fdiv_r:dword	; DATA XREF: .text:0040153Ar
		extrn __imp_ThunRTMain:dword ; DATA XREF: ThunRTMainr
		extrn __vbaI4Var:dword	; CODE XREF: .text:00408FFEp
					; .text:0040930Ap ...
		extrn __vbaVarDup:dword	; CODE XREF: .text:004126DEp
					; DATA XREF: .text:004015ACr ...
		extrn __vbaFpI2:dword	; CODE XREF: .text:00411AB8p
					; .text:00411C98p ...
		extrn __vbaFpI4:dword	; CODE XREF: .text:00408E5Bp
					; .text:00408E90p ...
		extrn _CIatan:dword	; DATA XREF: .text:00401570r
		extrn __vbaStrMove:dword ; CODE	XREF: .text:0040AE18p
					; .text:0040B045p ...
		extrn _allmul:dword	; DATA XREF: .text:0040159Ar
		extrn __vbaLateIdSt:dword ; CODE XREF: .text:0040936Ep
					; .text:004093AEp ...
		extrn _CItan:dword	; DATA XREF: .text:00401594r
		extrn _CIexp:dword	; DATA XREF: .text:0040157Cr
		extrn __vbaFreeObj:dword ; CODE	XREF: .text:00409320p
					; .text:00409377p ...
		extrn __vbaFreeStr:dword ; CODE	XREF: .text:0040AE49p
					; .text:0040B076p ...


; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text		segment	para public 'CODE' use32
		assume cs:_text
		;org 401100h
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing
dword_401100	dd 40004h, 2 dup(0)	; DATA XREF: .text:00408D95o
		dd offset loc_409239
dword_401110	dd 40004h, 2 dup(0)	; DATA XREF: .text:004092A5o
		dd offset loc_40A5C4
		dd 40004h, 2 dup(0)	; DATA XREF: .text:0040A625o
		dd offset loc_40AA93
		dd 40004h, 2 dup(0)	; DATA XREF: .text:0040AB15o
		dd offset loc_40C78C
		dd 80005h, 40CD25h, 0	; DATA XREF: .text:0040C802o
		dd offset loc_40CD2C
flt_401150	dd 1000.0		; DATA XREF: .text:0040CDCBr
		align 8
dword_401158	dd 80005h, 40CF23h, 0	; DATA XREF: .text:0040CD85o
		dd offset loc_40CF2B
		dd 80007h, 40EDD9h, 40EE66h, 40EDE4h ; DATA XREF: .text:0040CFA5o
dword_401178	dd 80005h, 40F032h, 0	; DATA XREF: .text:0040EEC2o
		dd offset loc_40F039
		dd 80005h, 40F21Bh, 0	; DATA XREF: .text:0040F0A2o
		dd offset loc_40F222
		dd 80005h, 40F3E3h, 0	; DATA XREF: .text:0040F272o
		dd offset loc_40F3EA
dword_4011A8	dd 80005h, 40F528h, 0	; DATA XREF: .text:0040F442o
		dd offset loc_40F52F
		dd 80005h, 40F6FDh, 0	; DATA XREF: .text:0040F582o
		dd offset loc_40F704
		dd 80005h, 40F864h, 0	; DATA XREF: .text:0040F752o
		dd offset loc_40F86B
		dd 80005h, 40FA4Dh, 0	; DATA XREF: .text:0040F8D2o
		dd offset loc_40FA54
		dd 80005h, 40FE05h, 0	; DATA XREF: .text:0040FAA5o
		dd offset loc_40FE0C
		dd 80005h, 40FFE1h, 0	; DATA XREF: .text:0040FE72o
		dd offset loc_40FFE8
dword_401208	dd 80001h, 410096h	; DATA XREF: .text:00410052o
dword_401210	dd 80005h, 41018Fh, 0	; DATA XREF: .text:004100E2o
		dd offset loc_410196
dword_401220	dd 80007h, 4108B4h, 41091Eh, 4108BBh ; DATA XREF: .text:00410205o
		dd 80005h, 410BEBh, 0	; DATA XREF: .text:00410985o
		dd offset loc_410BF2
dword_401240	dd 80005h, 410D1Fh, 0	; DATA XREF: .text:00410C72o
		dd offset loc_410D26
dword_401250	dd 80005h, 410ECAh, 0	; DATA XREF: .text:00410D92o
		dd offset loc_410ED1
		dd 80005h, 411092h, 0	; DATA XREF: .text:00410F42o
		dd offset loc_411099
dword_401270	dd 80005h, 411252h, 0	; DATA XREF: .text:00411102o
		dd offset loc_411259
dword_401280	dd 80005h, 4113A1h, 0	; DATA XREF: .text:004112C2o
		dd offset loc_4113A8
		dd 80005h, 411539h, 0	; DATA XREF: .text:00411402o
		dd offset loc_411540
		dd 80005h, 411887h, 0	; DATA XREF: .text:004115A5o
		dd offset loc_41188E
		dd 80005h, 4119BFh, 0	; DATA XREF: .text:00411912o
		dd offset loc_4119C6
flt_4012C0	dd 1.0			; DATA XREF: .text:00411AA8r
					; .text:00411C88r ...
		align 8
dword_4012C8	dd 80005h, 411B9Fh, 0	; DATA XREF: .text:00411A32o
		dd offset loc_411BA7
dword_4012D8	dd 80005h, 411D7Fh, 0	; DATA XREF: .text:00411C12o
		dd offset loc_411D87
		dd 80005h, 411ED5h, 0	; DATA XREF: .text:00411DF2o
		dd offset loc_411EDD
		dd 80005h, 411FDFh, 0	; DATA XREF: .text:00411F32o
		dd offset loc_411FE6
dword_401308	dd 80005h, 41221Eh, 0	; DATA XREF: .text:00412052o
		dd offset loc_412226
dword_401318	dd 80005h, 41245Eh, 0	; DATA XREF: .text:00412292o
		dd offset loc_412466
dword_401328	dd 80005h, 4125B5h, 0	; DATA XREF: .text:004124D2o
		dd offset loc_4125BD
		dd 80005h, 4131DCh, 0	; DATA XREF: .text:00412615o
		dd offset loc_4131E4
dword_401348	dd 80005h, 413505h, 0	; DATA XREF: .text:00413265o
		dd offset loc_41350C
		dd 80005h, 413825h, 0	; DATA XREF: .text:00413585o
		dd offset loc_41382C
		dd 80005h, 413B48h, 0	; DATA XREF: .text:004138A5o
		dd offset loc_413B4F
dword_401378	dd 80005h, 413E65h, 0	; DATA XREF: .text:00413BC5o
		dd offset loc_413E6C
dword_401388	dd 80005h, 413FE4h, 0	; DATA XREF: .text:00413EE2o
		dd offset loc_413FEB
dword_401398	dd 80005h, 414151h, 0	; DATA XREF: .text:00414052o
		dd offset loc_414158
		dd 80005h, 414368h, 0	; DATA XREF: .text:004141C5o
		dd offset loc_414370
		dd 80001h, 414426h	; DATA XREF: .text:004143E2o
		dd 80005h, 414618h, 0	; DATA XREF: .text:00414475o
		dd offset loc_414620
		dd 80001h, 4146D6h	; DATA XREF: .text:00414692o
		dd 80005h, 4148C8h, 0	; DATA XREF: .text:00414725o
		dd offset loc_4148D0
		dd 80001h, 414986h	; DATA XREF: .text:00414942o
		dd 80005h, 414B78h, 0	; DATA XREF: .text:004149D5o
		dd offset loc_414B80
dword_401400	dd 80001h, 414C36h	; DATA XREF: .text:00414BF2o
		dd 80005h, 414E28h, 0	; DATA XREF: .text:00414C85o
		dd offset loc_414E30
		dd 80001h, 414EE6h	; DATA XREF: .text:00414EA2o
		dd 80005h, 4150D8h, 0	; DATA XREF: .text:00414F35o
		dd offset loc_4150E0
dword_401430	dd 80001h, 415196h	; DATA XREF: .text:00415152o
dword_401438	dd 80005h, 415388h, 0	; DATA XREF: .text:004151E5o
		dd offset loc_415390
dword_401448	dd 80001h, 415446h	; DATA XREF: .text:00415402o
dword_401450	dd 80005h, 415638h, 0	; DATA XREF: .text:00415495o
		dd offset loc_415640
		dd 80001h, 4156F6h	; DATA XREF: .text:004156B2o
		dd 80005h, 4158E8h, 0	; DATA XREF: .text:00415745o
		dd offset loc_4158F0
dword_401478	dd 80001h, 4159A6h	; DATA XREF: .text:00415962o
dword_401480	dd 80005h, 415B98h, 0	; DATA XREF: .text:004159F5o
		dd offset loc_415BA0
		dd 80001h, 415C56h	; DATA XREF: .text:00415C12o
		dd 80005h, 415E4Ch, 0	; DATA XREF: .text:00415CA5o
		dd offset loc_415E54
		dd 80005h, 415F98h, 0	; DATA XREF: .text:00415EC2o
		dd offset loc_415FA0
		dd 80005h, 41618Fh, 0	; DATA XREF: .text:00416002o
		dd offset loc_416196
		dd 80005h, 4162C2h, 0	; DATA XREF: .text:00416202o
		dd offset loc_4162C9
dbl_4014D8	dq 100.0		; DATA XREF: .text:00416446r
					; .text:00416454r ...
dword_4014E0	dd 80005h, 416704h, 0	; DATA XREF: .text:00416332o
		dd offset loc_41670C
		dd 80005h, 41692Ch, 0	; DATA XREF: .text:00416785o
		dd offset loc_416934
		dd 80005h, 4170A0h, 0	; DATA XREF: .text:004169A5o
; ---------------------------------------------------------------------------
		test	al, 70h
		inc	ecx
		add	bh, bh
		and	eax, offset __vbaChkstk

loc_401516:				; DATA XREF: .text:00408D76o
					; .text:00409286o ...
		jmp	ds:__vbaExceptHandler
; ---------------------------------------------------------------------------

loc_40151C:				; CODE XREF: .text:loc_40AAE4j
					; .text:loc_40CF78j ...
		jmp	ds:__vbaFPException
; ---------------------------------------------------------------------------
		jmp	ds:_adj_fdiv_m16i
; ---------------------------------------------------------------------------
		jmp	ds:_adj_fdiv_m32
; ---------------------------------------------------------------------------
		jmp	ds:_adj_fdiv_m32i
; [00000006 BYTES: COLLAPSED FUNCTION _adj_fdiv_m64. PRESS KEYPAD CTRL-"+" TO EXPAND]
; ---------------------------------------------------------------------------
		jmp	ds:_adj_fdiv_r
; ---------------------------------------------------------------------------
		jmp	ds:_adj_fdivr_m16i
; ---------------------------------------------------------------------------
		jmp	ds:_adj_fdivr_m32
; ---------------------------------------------------------------------------
		jmp	ds:_adj_fdivr_m32i
; ---------------------------------------------------------------------------
		jmp	ds:_adj_fdivr_m64
; ---------------------------------------------------------------------------
		jmp	ds:_adj_fpatan
; ---------------------------------------------------------------------------
		jmp	ds:_adj_fprem
; ---------------------------------------------------------------------------
		jmp	ds:_adj_fprem1
; ---------------------------------------------------------------------------
		jmp	ds:_adj_fptan
; ---------------------------------------------------------------------------
		jmp	ds:_CIatan
; ---------------------------------------------------------------------------
		jmp	ds:_CIcos
; ---------------------------------------------------------------------------
		jmp	ds:_CIexp
; ---------------------------------------------------------------------------
		jmp	ds:_CIlog
; ---------------------------------------------------------------------------
		jmp	ds:_CIsin
; ---------------------------------------------------------------------------
		jmp	ds:_CIsqrt
; ---------------------------------------------------------------------------
		jmp	ds:_CItan
; ---------------------------------------------------------------------------
		jmp	ds:_allmul
; ---------------------------------------------------------------------------
		jmp	ds:rtcDoEvents
; ---------------------------------------------------------------------------
		jmp	ds:__vbaEnd
; ---------------------------------------------------------------------------
		jmp	ds:__vbaVarDup
; ---------------------------------------------------------------------------
		jmp	ds:__vbaFpI2
; ---------------------------------------------------------------------------
		jmp	ds:__vbaStrI2
; ---------------------------------------------------------------------------
		jmp	ds:rtcVarBstrFromAnsi
; ---------------------------------------------------------------------------
		jmp	ds:__vbaVarCat
; ---------------------------------------------------------------------------
		jmp	ds:rtcMsgBox
; ---------------------------------------------------------------------------
		jmp	ds:__vbaStrCmp
; ---------------------------------------------------------------------------
		jmp	ds:__vbaI2I4
; ---------------------------------------------------------------------------
		jmp	ds:__vbaStrCopy
; ---------------------------------------------------------------------------
		jmp	ds:__vbaStrR4
; ---------------------------------------------------------------------------
		jmp	ds:__vbaStrI4
; ---------------------------------------------------------------------------
		jmp	ds:__vbaBoolVar
; ---------------------------------------------------------------------------
		jmp	ds:__vbaFreeStrList
; ---------------------------------------------------------------------------
		jmp	ds:__vbaStrCat
; ---------------------------------------------------------------------------
		jmp	ds:__vbaFreeStr
; ---------------------------------------------------------------------------
		jmp	ds:__vbaStrVarMove
; ---------------------------------------------------------------------------
		jmp	ds:__vbaStrMove
; ---------------------------------------------------------------------------
		jmp	ds:__vbaR4Var
; ---------------------------------------------------------------------------
		jmp	ds:__vbaI2Var
; ---------------------------------------------------------------------------
		jmp	ds:__vbaErrorOverflow
; ---------------------------------------------------------------------------
		jmp	ds:__vbaLateIdSt
; ---------------------------------------------------------------------------
		jmp	ds:__vbaFreeObj
; ---------------------------------------------------------------------------
		jmp	ds:VarPtr
; ---------------------------------------------------------------------------
		jmp	ds:__vbaFreeVar
; ---------------------------------------------------------------------------
		jmp	ds:__vbaLateIdCall
; ---------------------------------------------------------------------------
		jmp	ds:__vbaFreeVarList
; ---------------------------------------------------------------------------
		jmp	ds:__vbaFreeObjList
; ---------------------------------------------------------------------------
		jmp	ds:__vbaCastObjVar
; ---------------------------------------------------------------------------
		jmp	ds:__vbaObjSet
; ---------------------------------------------------------------------------
		jmp	ds:__vbaFpI4
; ---------------------------------------------------------------------------
		jmp	ds:__vbaLateIdCallLd
; ---------------------------------------------------------------------------
		jmp	ds:__vbaI4Var
; ---------------------------------------------------------------------------
		jmp	ds:__vbaHresultCheckObj
; ---------------------------------------------------------------------------

loc_401672:				; DATA XREF: .text:0040640Co
					; .text:0040646Co ...
		jmp	ds:EVENT_SINK_QueryInterface
; ---------------------------------------------------------------------------

loc_401678:				; DATA XREF: .text:00406410o
					; .text:00406470o ...
		jmp	ds:EVENT_SINK_AddRef
; ---------------------------------------------------------------------------

loc_40167E:				; DATA XREF: .text:00406414o
					; .text:00406474o ...
		jmp	ds:EVENT_SINK_Release
; [00000006 BYTES: COLLAPSED FUNCTION ThunRTMain. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
		align 4
		assume fs:nothing, gs:nothing

		public start
start:
		push	offset dword_403744
		call	ThunRTMain
; ---------------------------------------------------------------------------
		dw 0
		dd 0
		dd 30h,	48h, 0
; ---------------------------------------------------------------------------
		adc	[ebp-68AE733Ah], ebx
		pop	dword ptr [edx-78h]
		jmp	dword ptr [esi]
; ---------------------------------------------------------------------------
		db 14h
		dd 1CBA644Ah, 0
		dd 10000h, 0
; ---------------------------------------------------------------------------
		retn
; ---------------------------------------------------------------------------
		align 4
aVideoplayersim	db 'VideoPlayerSimple',0
		dw 8000h
		dd 2 dup(0)
dword_4016E4	dd 31CCFFh, 7AC2B456h, 337372B4h, 772FA540h, 0EFC9849Ch
					; DATA XREF: .text:0040373Co
		dd 6265D69Fh, 0A01D8325h, 33B3A842h, 78FAB8C6h,	0AD4F3A51h
		dd 0CF669933h, 0CB711h,	0D36000AAh, 93h, 8 dup(0)
		dd 1F7D00h, 49A00h, 50000h, 6D726F46h, 10D0031h, 69560023h
		dd 206F6564h, 79616C70h, 6F207265h, 6944206Eh, 74636572h
		dd 6E756F53h, 65642064h, 65636976h, 1190073h, 23004200h
		dd 43Eh, 746Ch,	436h, 10000h, 20200002h, 10h, 2E80000h
		dd 260000h, 10100000h, 10h, 1280000h, 30E0000h,	280000h
		dd 200000h, 400000h, 10000h, 4,	2000000h, 2 dup(0)
		dd 2 dup(100000h), 2 dup(0)
		dd 80000080h, 80000000h, 800080h, 800000h, 80800080h, 80800000h
		dd 0C0C00080h, 0C0h, 0FF0000FFh, 0FF000000h, 0FF00FFh
		dd 0FF0000h, 0FFFF00FFh, 0FFFF0000h, 666600FFh,	66666666h
		dd 0BBBB00h, 3 dup(66666666h), 0BBBB00h, 2 dup(66666666h)
		dd 666666h, 0
		dd 66666600h, 66666666h, 666666h, 0
		dd 66666600h, 66666666h, 0BB006666h, 0BBBBBBBBh, 666600BBh
		dd 66666666h, 0BB006666h, 0BBBBBBBBh, 666600BBh, 66666666h
		dd 0BBBB0066h, 0BBBBBBBBh, 6600BBBBh, 66666666h, 0BBBB0066h
		dd 0BBBBBBBBh, 6600BBBBh, 66666666h, 0BBBB00h, 0
		dd 0BBBB00h, 66666666h,	0BBBB00h, 0
		dd 0BBBB00h, 666666h, 0BBBB00h,	0BBBBBBBBh, 0BBBB00h, 666600h
		dd 0BBBB00h, 0BBBBBBBBh, 0BBBB00h, 6600h, 0BBBBBB00h, 0BBBBBBBBh
		dd 0BBBBBBh, 0
		dd 0BBBBBB00h, 0BBBBBBBBh, 0BBBBBBh, 0
		dd 0BBBBBB00h, 0BB0000BBh, 0BBBBBBh, 0
		dd 0BBBBBB00h, 0BB0000BBh, 0BBBBBBh, 0
		dd 0BBBBBB00h, 0BBBBBBBBh, 0BBBBBBh, 0
		dd 0BBBBBB00h, 0BBBBBBBBh, 0BBBBBBh, 660000h, 0BBBBBB00h
		dd 0BBBBBBBBh, 0BBBBBBh, 666600h, 0BBBBBB00h, 0BBBBBBBBh
		dd 0BBBBBBh, 66666600h,	3 dup(0BBBB00h), 66666666h, 3 dup(0BBBB00h)
		dd 66666666h, 0BBBB0000h, 0BBBBBBBBh, 0BBBBh, 66666666h
		dd 0BBBB0000h, 0BBBBBBBBh, 0BBBBh, 66666666h, 0BB006600h
		dd 0BBBBBBBBh, 6600BBh,	66666666h, 0BB006600h, 0BBBBBBBBh
		dd 6600BBh, 66666666h, 666600h,	0
		dd 666600h, 66666666h, 666600h,	0
		dd 666600h, 66666666h, 66660000h, 66666666h, 6666h, 66666666h
		dd 66660000h, 66666666h, 6666h,	66666666h, 66h,	0
		dd 66000000h, 66666666h, 66h, 0
		dd 66000000h, 6666h, 1Fh dup(0)
		dd 280000h, 100000h, 200000h, 10000h, 4, 800000h, 2 dup(0)
		dd 2 dup(100000h), 2 dup(0)
		dd 80000080h, 80000000h, 800080h, 800000h, 80800080h, 80800000h
		dd 0C0C00080h, 0C0h, 0FF0000FFh, 0FF000000h, 0FF00FFh
		dd 0FF0000h, 0FFFF00FFh, 0FFFF0000h, 0FFh, 0B00B00h, 3 dup(0)
		dd 0B0BBBB0Bh, 0
		dd 0BBBBBBBBh, 0B000000h, 2 dup(0B0000B0h), 0BBBBBB0h
		dd 0B0000B0h, 0BBBBBBBBh, 0B0000B0h, 0BB0BB0BBh, 0B0000B0h
		dd 0BBBBBBBBh, 0B0000B0h, 0BBBBBBBBh, 0B0000B0h, 0BB00BB0h
		dd 0B0h, 0BBBBBBBBh, 0
		dd 0B0BBBB0Bh, 6 dup(0)
		dd 3FFC0000h, 1FF80000h, 0FF00000h, 7E00000h, 3C00000h
		dd 1800000h, 3 dup(0)
		dd 1800000h, 2 dup(3C00000h), 0BD00000h, 1BD80000h, 0F3CF0000h
		dd 7E00000h, 5240000h, 726F4600h, 3500316Dh, 3Ch, 1D1h
		dd 3930h, 2526h, 1FF0246h, 38h,	50000F01h, 75746369h, 61576572h
		dd 6F666576h, 6D72h, 1,	80400h,	0E8058000h, 130E4C17h
		dd 1204FB0Bh, 11A0053h,	24004200h, 0FF003B00h, 3603h, 0D0200h
		dd 74636950h, 4F657275h, 6C696373h, 100006Ch, 0
		db    4
		db 8, 2	dup(0)
		db  80h	; €
		db 5, 0E8h, 17h
		db  52h	; R
		db 8, 13h, 0Bh
		db 0FBh	; û
		db 4, 12h, 52h
		db    0
		db 1Ah,	1, 0
aB:
		unicode	0, <B$;>
		dw 3FFh
		db  38h	; 8
		align 10h
		db    3
		db 0Fh,	0, 50h
aIcturespectrum	db 'ictureSpectrum',0
		align 4
		db    1
		align 4
		db    0
		db 4, 8, 0
		db    0
		db 80h,	5, 0E8h
		db  17h
		db 58h,	2, 13h
		db  0Bh
		db 0FBh, 4, 12h
		db  51h	; Q
		align 2
		dw 11Ah
		db    0
		db 42h,	0, 24h
		db    0
		db 3Bh,	0, 0FFh
		db    3
		db 28h,	2 dup(0)
		db    0
		db 4, 0Eh, 0
aTextsyncadjust	db 'TextSyncAdjust',0
		db 2
		db    4
		db 0ECh, 13h, 70h
		db  17h
		db 67h,	2, 77h
		db    1
		db 8, 0, 12h
		db  50h	; P
		align 2
		dw 224h
		db 0FFh
		db 3, 2Eh, 0
		db    0
		align 2
		dw 0F05h
		db    0
aCommandplus10m	db 'CommandPlus10ms',0
		db 4, 1, 3
		db    0
		db 2Bh,	31h, 30h
		db    0
		db 4, 80h, 16h
		db  70h	; p
		db 17h,	0EFh, 1
		db  77h	; w
		db 1, 8, 0
		db  11h
		db 4Fh,	0, 0FFh
		db    3
		db 2Fh,	2 dup(0)
		db    0
		db 6, 10h, 0
aCommandminus10	db 'CommandMinus10ms',0
		db 4, 1, 3
		db    0
		db 2Dh,	31h, 30h
		db    0
		db 4, 0D0h, 11h
		db  70h	; p
		db 17h,	0EFh, 1
		db  77h	; w
		db 1, 8, 0
		db  11h
		db 4Eh,	0, 0FFh
		db    3
		db 29h,	2 dup(0)
		db    0
		db 7, 10h, 0
aComboaudiostre	db 'ComboAudioStream',0
		db 7, 1, 2
		db    5
		db 24h,	27h, 98h
		db  0Dh
		db 0B3h, 10h, 3Bh
		db    1
		db 0Ch,	13h, 4Bh
		db    0
		db 0FFh, 3, 2Bh
		db    0
		db 2 dup(0), 8
		db  10h
		align 2
aCommandprevfra	db 'CommandPrevFrame',0
		db 4
		db    1
		db 1, 0, 3Ch
		db    0
		db 4, 71h, 0
		db  28h	; (
		db 14h,	77h, 1
		db  77h	; w
		db 1, 11h, 48h
		db    0
		db 0FFh, 3, 2Bh
		db    0
		db 2 dup(0), 9
		db  10h
		align 2
aCommandnextfra	db 'CommandNextFrame',0
		db 4
		db    1
		db 1, 0, 3Eh
		db    0
		db 4, 21h, 14h
		db  28h	; (
		db 14h,	77h, 1
		db  77h	; w
		db 1, 11h, 47h
		db    0
		dd offset loc_4103FF
		db 2 dup(0), 0Ah
		db  14h
		align 2
aCheckkeepaspec	db 'CheckKeepAspectRatio',0
		db 5
		db    1
		db 11h,	0, 4Bh
aEepAspectRatio	db 'eep aspect ratio',0
		db 5, 59h, 9
		db 0ACh	; ¬
		db 2 dup(17h), 7
		db 0FFh
		align 2
		dw 4612h
		db    0
		db 13h,	1, 0FFh
		db    3
		db 41h,	2 dup(0)
		db    0
		db 0Bh,	10h, 0
aCheckenablepit	db 'CheckEnablePitch',0
		db 5, 1, 17h
		db    0
aEnablePitchMan	db 'Enable pitch management',0
		db 5, 60h, 27h
		dd 5AF18D8h, 451201EFh,	2203FF00h, 0C000000h, 7246000Ah
		dd 50656D61h, 68637469h, 24050300h, 9F19C827h, 0A0AD706h
		dd 381200h, 3D01FFh, 100D0000h,	6D6F4300h, 646E616Dh, 63746950h
		dd 72655A68h, 104006Fh,	300001h, 0F8025804h, 6801EF07h
		dd 441101h, 11Dh, 90019000h, 600015Fh, 6F686154h, 3FF616Dh
		dd 3Dh,	4300100Eh, 616D6D6Fh, 6950646Eh, 44686374h, 6E776Fh
		dd 10104h, 7804002Dh, 7707F800h, 11016801h, 11D0042h, 90000000h
		dd 15F9001h, 61540600h,	616D6F68h, 3B03FFh, 0E0F0000h
		dd 6D6F4300h, 646E616Dh, 63746950h, 705568h, 10104h, 0B004002Bh
		dd 7707F804h, 11016801h, 11D0041h, 90000000h, 15F9001h
		dd 61540600h, 616D6F68h, 3D03FFh, 10100000h, 6D6F4300h
		dd 646E616Dh, 65657053h, 72655A64h, 104006Fh, 300001h
		dd 28025804h, 6801EF05h, 401101h, 11Dh,	90019000h, 600015Fh
		dd 6F686154h, 3FF616Dh,	3Dh, 43001011h,	616D6D6Fh, 7053646Eh
		dd 44646565h, 6E776Fh, 10104h, 7804002Dh, 77052800h, 11016801h
		dd 11D003Eh, 90000000h,	15F9001h, 61540600h, 616D6F68h
		dd 3B03FFh, 0E120000h, 6D6F4300h, 646E616Dh, 65657053h
		dd 705564h, 10104h, 0B004002Bh,	77052804h, 11016801h, 11D003Dh
		dd 90000000h, 15F9001h,	61540600h, 616D6F68h, 3D03FFh
		dd 10130000h, 6D6F4300h, 646E616Dh, 706D6554h, 72655A6Fh
		dd 104006Fh, 300001h, 58025804h, 6801EF02h, 3C1101h, 11Dh
		dd 90019000h, 600015Fh,	6F686154h, 3FF616Dh, 3Dh, 43001014h
		dd 616D6D6Fh, 6554646Eh, 446F706Dh, 6E776Fh, 10104h, 7804002Dh
		dd 77025800h, 11016801h, 11D003Ah, 90000000h, 15F9001h
		dd 61540600h, 616D6F68h, 3B03FFh, 0E150000h, 6D6F4300h
		dd 646E616Dh, 706D6554h, 70556Fh, 10104h, 0B004002Bh, 77025804h
		dd 11016801h, 11D0039h,	90000000h, 15F9001h, 61540600h
		dd 616D6F68h, 2B03FFh, 0A160000h, 62614C00h, 69506C65h
		dd 686374h, 50101h, 63746950h, 1C050068h, 67070802h, 1200FF02h
		dd 2140043h, 3803FFh, 0A170000h, 62614C00h, 70536C65h
		dd 646565h, 120101h
aPlaybackRate	db 'Playback rate  (%)',0
		db 5
		dd 4380078h, 0FF05AFh, 14003F12h, 2F03FF02h, 18000000h
		dd 614C000Ah, 546C6562h, 6F706D65h, 9010100h, 6D655400h
		dd 28206F70h, 5002925h,	16801A4h, 0FF0357h, 14003B12h
		dd 302FF02h, 36h, 43001119h, 616D6D6Fh,	6C43646Eh, 5665736Fh
		dd 6F656469h, 0B010400h, 6F6C4300h, 76206573h, 6F656469h
		dd 1DC40400h, 5370078h,	351101B3h, 4B03FF00h, 1A000000h
		dd 72460016h, 41656D61h, 6F696475h, 646E6552h, 72657265h
		dd 65646F4Dh, 1B010300h, 64754100h, 6F206F69h, 75707475h
		dd 65722074h, 7265646Eh, 20676E69h, 65646F6Dh, 27240500h
		dd 11670258h, 2F12078Fh, 6001FF00h, 1B000000h, 704F0012h
		dd 6E6F6974h, 74737543h, 72546D6Fh, 66736E61h, 17010600h
		dd 73754300h, 206D6F74h, 6E617274h, 726F6673h, 6966206Dh
		dd 7265746Ch, 0F00500h,	0FFF00F0h, 541200FFh, 192200h
		dd 61736944h, 73656C62h, 65687420h, 64756120h, 73206F69h
		dd 61657274h, 3FF006Dh,	10Ah, 4F001A1Ch, 6F697470h, 7375436Eh
		dd 526D6F74h, 63756465h, 6E6F6974h, 6E6F7246h, 1060074h
		dd 75430030h, 6D6F7473h, 64756120h, 72206F69h, 65646E65h
		dd 20726572h, 68746977h, 2074756Fh, 72727573h, 646E756Fh
		dd 61686320h, 6C656E6Eh, 5002073h, 40800F0h, 0FF0FFFh
		dd 22003212h, 6C4100A2h, 73776F6Ch, 70706120h, 6E69796Ch
		dd 66652067h, 74636566h, 6F742073h, 65687420h, 64756120h
		dd 73206F69h, 61657274h, 6E61206Dh, 62202C64h, 6C652079h
		dd 6E696D69h, 6E697461h, 75732067h, 756F7272h, 6320646Eh
		dd 6E6E6168h, 2C736C65h, 6C6C6120h, 2073776Fh, 6C707061h
		dd 676E6979h, 4F4D4420h, 66666520h, 73746365h, 646E6120h
		dd 206F7420h, 75646572h, 43206563h, 75205550h, 65676173h
		dd 74697720h, 6C632068h, 20737069h, 69766168h, 3520676Eh
		dd 6120312Eh, 6F696475h, 0EA03FF00h, 1D000000h,	704F0014h
		dd 6E6F6974h, 74737543h, 65526D6Fh, 706D6173h, 600656Ch
		dd 43002C01h, 6F747375h, 7561206Dh, 206F6964h, 646E6572h
		dd 72657265h, 74697720h, 74732068h, 6F657265h, 73657220h
		dd 6C706D61h, 676E69h, 0F005h, 0FF0FFF03h, 311200h, 41008C22h
		dd 776F6C6Ch, 70612073h, 69796C70h, 6520676Eh, 63656666h
		dd 74207374h, 6874206Fh, 75612065h, 206F6964h, 65727473h
		dd 61206D61h, 202C646Eh, 72207962h, 6D617365h, 6E696C70h
		dd 68742067h, 74732065h, 6D616572h, 206F7420h, 72657473h
		dd 202C6F65h, 6F6C6C61h, 61207377h, 796C7070h, 20676E69h
		dd 204F4D44h, 65666665h, 20737463h, 68746977h, 696C6320h
		dd 68207370h, 6E697661h, 2E352067h, 75612031h, 6F6964h
		dd 5F03FFh, 0A1E0000h, 74704F00h, 4E6E6F69h, 6C6C75h, 1E0106h
		dd 6C6C754Eh, 64756120h, 72206F69h, 65646E65h, 20726572h
		dd 206F6E28h, 69647561h, 500296Fh, 61800F0h, 0FF0FFFh
		dd 22003412h, 69440019h, 6C626173h, 74207365h, 61206568h
		dd 6F696475h, 72747320h, 6D6165h, 6703FFh, 0E1F0000h, 74704F00h
		dd 536E6F69h, 646E6174h, 647261h, 140106h, 6E617453h, 64726164h
		dd 72694420h, 53746365h, 646E756Fh, 0F00500h, 0FFF0510h
		dd 331200FFh, 272200h, 73657355h, 61747320h, 7261646Eh
		dd 69442064h, 74636572h, 6E756F53h, 75612064h, 206F6964h
		dd 69766564h, 736563h, 6A03FFh,	0C200000h, 74704F00h, 436E6F69h
		dd 6F747375h, 106006Dh,	75430015h, 6D6F7473h, 64756120h
		dd 72206F69h, 65646E65h, 726572h, 0F800F005h, 0FF0FFF01h
		dd 301200h, 41002B22h, 776F6C6Ch, 70612073h, 69796C70h
		dd 6520676Eh, 63656666h, 74207374h, 6874206Fh, 75612065h
		dd 206F6964h, 65727473h, 0FF006D61h, 2A0302h, 11210000h
		dd 6D6F4300h, 75416F62h, 446F6964h, 63697665h, 7007365h
		dd 24050201h, 0B30AC827h, 0C013B10h, 0FF002D13h, 2D03h
		dd 82200h, 6D617246h, 4F4D4465h, 0B010300h, 4F4D4400h
		dd 66666520h, 73746365h, 1E530500h, 71719C8h, 28120AD7h
		dd 2D01FF00h, 23000000h, 6843000Ch, 466B6365h, 676E616Ch
		dd 5007265h, 46000701h,	676E616Ch, 5007265h, 7F800F0h
		dd 0FF0447h, 0FF002C12h, 2B03h,	0B2400h, 63656843h, 6F68436Bh
		dd 737572h, 60105h, 726F6843h, 5007375h, 5F000F0h, 0FF0447h
		dd 0FF002B12h, 2703h, 92500h, 63656843h, 6863456Bh, 105006Fh
		dd 63450004h, 5006F68h,	3E800F0h, 0FF0537h, 0FF002A12h
		dd 3603h, 102600h, 63656843h, 7661576Bh, 65527365h, 62726576h
		dd 0C010500h, 76615700h, 72207365h, 72657665h, 0F0050062h
		dd 0AF01E000h, 1200FF05h, 2FF0029h, 3103h, 0E2700h, 6D617246h
		dd 75714565h, 7A696C61h, 3007265h, 45000901h, 6C617571h
		dd 72657A69h, 710500h, 1CA719C8h, 11120AD7h, 0B401FF00h
		dd 49000000h, 6C53000Ah, 72656469h, 7A483038h, 12FF00h
		dd 6F43534Dh, 6C74636Dh, 2E62694Ch, 64696C53h, 3007265h
		dd 1E001A4h, 8BB0285h, 120F000Eh, 424C2D00h, 740009h, 43210000h
		dd 81234h, 4720000h, 0F660000h,	0AE110000h, 0A2Bh, 1C0006h
		dd 10000h, 50000h, 10000h, 0FFF10000h, 0FFFFFh,	3 dup(0)
		dd 20000h, 30000h, 2 dup(0)
		dd 0EF010000h, 0ABCDh, 5, 20000h, 0FFFF0000h, 0FFFFFFFFh
		dd 0EFC4FFFFh, 0DE1F0012h, 1BDECh, 0EFC40005h, 3FF0012h
		dd 0B5h, 53000B4Ah, 6564696Ch, 30313372h, 0FF007A48h, 534D0012h
		dd 636D6F43h, 694C6C74h, 6C532E62h, 72656469h, 6DB0300h
		dd 28501E0h, 0E08BBh, 2D00130Fh, 9424Ch, 74h, 12344321h
		dd 8, 472h, 0F66h, 0A2BAE11h, 60000h, 1Ch, 1, 5, 1, 0FFFFFFF1h
		dd 0Fh,	3 dup(0)
		dd 2, 3, 2 dup(0)
		dd 0ABCDEF01h, 50000h, 0
		dd 630002h, 2 dup(0FFFFFFFFh), 12EFC4h,	0BDECDE1Fh, 50001h
		dd 12EFC4h, 0B603FFh, 0C4B0000h, 696C5300h, 31726564h
		dd 48303030h, 12FF007Ah, 43534D00h, 74636D6Fh, 62694C6Ch
		dd 696C532Eh, 726564h, 0E00C2103h, 0BB028501h, 0F000E08h
		dd 4C2D0014h, 74000942h, 21000000h, 8123443h, 72000000h
		dd 66000004h, 1100000Fh, 0A2BAEh, 1C000600h, 1000000h
		dd 5000000h, 1000000h, 0F1000000h, 0FFFFFFFh, 3	dup(0)
		dd 2000000h, 3000000h, 2 dup(0)
		dd 1000000h, 0ABCDEFh, 500h, 2000000h, 0FF003100h, 0FFFFFFFFh
		dd 0C4FFFFFFh, 1F0012EFh, 1BDECDEh, 0C4000500h,	0FF0012EFh
		dd 0B603h, 0C4C00h, 64696C53h, 30337265h, 7A483030h, 12FF00h
		dd 6F43534Dh, 6C74636Dh, 2E62694Ch, 64696C53h, 3007265h
		dd 1E00EB5h, 8BB0285h, 150F000Eh, 424C2D00h, 740009h, 43210000h
		dd 81234h, 4720000h, 0F660000h,	0AE110000h, 0A2Bh, 1C0006h
		dd 10000h, 50000h, 10000h, 0FFF10000h, 0FFFFFh,	3 dup(0)
		dd 20000h, 30000h, 2 dup(0)
		dd 0EF010000h, 0ABCDh, 5, 20000h, 0FFFF002Eh, 0FFFFFFFFh
		dd 0EFC4FFFFh, 0DE1F0012h, 1BDECh, 0EFC40005h, 3FF0012h
		dd 0B6h, 53000C4Dh, 6564696Ch, 30303672h, 7A4830h, 4D0012FFh
		dd 6D6F4353h, 4C6C7463h, 532E6269h, 6564696Ch, 58030072h
		dd 8501E011h, 0E08BB02h, 160F00h, 9424C2Dh, 7400h, 34432100h
		dd 812h, 47200h, 0F6600h, 2BAE1100h, 600000Ah, 1C00h, 100h
		dd 500h, 100h, 0FFFFF100h, 0FFFh, 3 dup(0)
		dd 200h, 300h, 2 dup(0)
		dd 0CDEF0100h, 50000ABh, 0
		dd 3D000200h, 0FFFFFF00h, 0FFFFFFFFh, 12EFC4FFh, 0ECDE1F00h
		dd 50001BDh, 12EFC400h,	0B503FF00h, 4E000000h, 6C53000Bh
		dd 72656469h, 48303036h, 12FF007Ah, 43534D00h, 74636D6Fh
		dd 62694C6Ch, 696C532Eh, 726564h, 0E0097E03h, 0BB028501h
		dd 0F000E08h, 4C2D0017h, 74000942h, 21000000h, 8123443h
		dd 72000000h, 66000004h, 1100000Fh, 0A2BAEh, 1C000600h
		dd 1000000h, 5000000h, 1000000h, 0F1000000h, 0FFFFFFFh
		dd 3 dup(0)
		dd 2000000h, 3000000h, 2 dup(0)
		dd 1000000h, 0ABCDEFh, 500h, 6000000h, 0FF003700h, 0FFFFFFFFh
		dd 0C4FFFFFFh, 1F0012EFh, 1BDECDEh, 0C4000500h,	0FF0012EFh
		dd 0B503h, 0B4F00h, 64696C53h, 37317265h, 7A4830h, 4D0012FFh
		dd 6D6F4353h, 4C6C7463h, 532E6269h, 6564696Ch, 47030072h
		dd 8501E004h, 0E08BB02h, 180F00h, 9424C2Dh, 7400h, 34432100h
		dd 812h, 47200h, 0F6600h, 2BAE1100h, 600000Ah, 1C00h, 100h
		dd 500h, 100h, 0FFFFF100h, 0FFFh, 3 dup(0)
		dd 200h, 300h, 2 dup(0)
		dd 0CDEF0100h, 50000ABh, 0
		dd 4A000600h, 0FFFFFF00h, 0FFFFFFFFh, 12EFC4FFh, 0ECDE1F00h
		dd 50001BDh, 12EFC400h,	0B703FF00h, 50000000h, 6C53000Dh
		dd 72656469h, 30303431h, 7A4830h, 4D0012FFh, 6D6F4353h
		dd 4C6C7463h, 532E6269h, 6564696Ch, 0AD030072h,	8501E016h
		dd 0E08BB02h, 190F00h, 9424C2Dh, 7400h,	34432100h, 812h
		dd 47200h, 0F6600h, 2BAE1100h, 600000Ah, 1C00h,	100h, 500h
		dd 100h, 0FFFFF100h, 0FFFh, 3 dup(0)
		dd 200h, 300h, 2 dup(0)
		dd 0CDEF0100h, 50000ABh, 0
		dd 4E000200h, 0FFFFFF00h, 0FFFFFFFFh, 12EFC4FFh, 0ECDE1F00h
		dd 50001BDh, 12EFC400h,	0B703FF00h, 51000000h, 6C53000Dh
		dd 72656469h, 30303631h, 7A4830h, 4D0012FFh, 6D6F4353h
		dd 4C6C7463h, 532E6269h, 6564696Ch, 41030072h, 8501E019h
		dd 0E08BB02h, 1A0F00h, 9424C2Dh, 7400h,	34432100h, 812h
		dd 47200h, 0F6600h, 2BAE1100h, 600000Ah, 1C00h,	100h, 500h
		dd 100h, 0FFFFF100h, 0FFFh, 3 dup(0)
		dd 200h, 300h, 2 dup(0)
		dd 0CDEF0100h, 50000ABh, 0
		dd 42000600h, 0FFFFFF00h, 0FFFFFFFFh, 12EFC4FFh, 0ECDE1F00h
		dd 50001BDh, 12EFC400h,	0B703FF00h, 52000000h, 6C53000Dh
		dd 72656469h, 30303231h, 7A4830h, 4D0012FFh, 6D6F4353h
		dd 4C6C7463h, 532E6269h, 6564696Ch, 0A030072h, 8501E014h
		dd 0E08BB02h, 1B0F00h, 9424C2Dh, 7400h,	34432100h, 812h
		dd 47200h, 0F6600h, 2BAE1100h, 600000Ah, 1C00h,	100h, 500h
		dd 100h, 0FFFFF100h, 0FFFh, 3 dup(0)
		dd 200h, 300h, 2 dup(0)
		dd 0CDEF0100h, 50000ABh, 0
		dd 6C000600h, 0FFFFFF00h, 0FFFFFFFFh, 12EFC4FFh, 0ECDE1F00h
		dd 50001BDh, 12EFC400h,	2903FF00h, 28000000h, 614C0007h
		dd 316C6562h, 1010034h,	34310006h, 7A684B20h, 16AD0500h
		dd 28500F0h, 271200FFh,	0FF021400h, 2903h, 72900h, 6562614Ch
		dd 33316Ch, 60101h, 4B203631h, 5007A68h, 0F01941h, 0FF0285h
		dd 14002612h, 2903FF02h, 2A000000h, 614C0007h, 316C6562h
		dd 1010031h, 32310006h,	7A684B20h, 13EC0500h, 28500F0h
		dd 251200FFh, 0FF021400h, 2803h, 62B00h, 6562614Ch, 100356Ch
		dd 31000601h, 48203037h, 3805007Ah, 8500F004h, 1200FF02h
		dd 2140024h, 2803FFh, 62C0000h,	62614C00h, 376C65h, 60101h
		dd 20303036h, 5007A48h,	0F00960h, 0FF0285h, 14002312h
		dd 2803FF02h, 2D000000h, 614C0007h, 316C6562h, 1010030h
		dd 20360005h, 7A684Bh, 0F0115805h, 0FF028500h, 221200h
		dd 3FF0214h, 27h, 4C00062Eh, 6C656261h,	1010039h, 20330005h
		dd 7A684Bh, 0F00EB505h,	0FF028500h, 211200h, 3FF0214h
		dd 27h,	4C00062Fh, 6C656261h, 1010038h,	20310005h, 7A684Bh
		dd 0F00C2105h, 0FF028500h, 201200h, 3FF0214h, 28h, 4C000630h
		dd 6C656261h, 1010036h,	31330006h, 7A482030h, 6DB0500h
		dd 28500F0h, 1F1200FFh,	0FF021400h, 2703h, 63100h, 6562614Ch
		dd 100326Ch, 38000501h,	7A482030h, 1A40500h, 28500F0h
		dd 1E1200FFh, 0FF021400h, 3C03h, 63200h, 6562614Ch, 100336Ch
		dd 2B000101h, 780500h, 0C301A4h, 1D12013Bh, 25011400h
		dd 1, 0F580190h, 4D0D0002h, 61532053h, 5320736Eh, 66697265h
		dd 3C03FFh, 6330000h, 62614C00h, 346C65h, 10101h, 7805002Dh
		dd 0C3092400h, 12013B00h, 114001Ch, 125h, 58019000h, 0D00020Fh
		dd 5320534Dh, 20736E61h, 69726553h, 302FF66h, 3Eh, 50001334h
		dd 75746369h, 75566572h, 6574654Dh, 67695272h, 7468h, 1
		dd 80400h, 0C4058000h, 0C3025816h, 0A10EF00h, 0B1200h
		dd 4200011Ah, 3B002400h, 3D03FF00h, 35000000h, 69500012h
		dd 72757463h, 4D755665h, 72657465h, 7466654Ch, 10000h
		dd 4000000h, 80000008h,	58160105h, 0EF00C302h, 12000A10h
		dd 11A000Ah, 24004200h,	0FF003B00h, 3003h, 113600h, 6D6D6F43h
		dd 50646E61h, 65737561h, 65646956h, 104006Fh, 61500005h
		dd 657375h, 780B4004h, 0B3053700h, 81101h, 1F03FFh, 6370000h
		dd 6D695400h, 317265h, 64030Bh,	80070000h, 8000016h, 1428h
		dd 0B603FFh, 0E530000h,	696C5300h, 50726564h, 7469736Fh
		dd 6E6F69h, 4D0012FFh, 6D6F4353h, 4C6C7463h, 532E6269h
		dd 6564696Ch, 0D9030072h, 1B144601h, 0F013B12h,	4C2D0005h
		dd 74000942h, 21000000h, 8123443h, 0F0000000h, 2C00001Fh
		dd 11000002h, 0A2BAEh, 1C000600h, 0
		dd 5000000h, 1000000h, 0
		dd 64000000h, 4	dup(0)
		dd 4000000h, 2 dup(0)
		dd 1000000h, 0ABCDEFh, 500h, 2000000h, 0FF002100h, 0FFFFFFFFh
		dd 0E8FFFFFFh, 1F0012EFh, 1BDECDEh, 0E8000500h,	0FF0012EFh
		dd 3D03h, 143800h, 74636950h, 56657275h, 6F656469h, 69736F50h
		dd 6E6F6974h, 10000h, 4000000h,	80000008h, 58007105h, 0EF156302h
		dd 41210h, 4200011Ah, 3B002400h, 2E03FF00h, 39000000h
		dd 6F430010h, 6E616D6Dh, 6F745364h, 64695670h, 4006F65h
		dd 53000401h, 706F74h, 7810A404h, 0B3053700h, 31101h, 2E03FFh
		dd 103A0000h, 6D6F4300h, 646E616Dh, 79616C50h, 65646956h
		dd 104006Fh, 6C500004h,	4007961h, 7805DCh, 1B30537h, 0FF000211h
		dd 3703h, 103B00h, 6D6D6F43h, 4C646E61h, 5664616Fh, 6F656469h
		dd 0D010400h, 616F4C00h, 69762064h, 2E6F6564h, 4002E2Eh
		dd 780078h, 1B30537h, 0FF000111h, 6B03h, 75400h, 33706D41h
		dd 316A64h, 410010FFh, 4433504Dh, 62694C4Ah, 706D412Eh
		dd 6A6433h, 8835E803h, 0D002D00Eh, 0F02h, 9424C2Dh, 3200h
		dd 8000000h, 2 dup(4F600h), 0
		dd 99999A00h, 0B9999999h, 3Fh, 0
		dd 0FFFEFF00h, 0
		dd 0F4000500h, 1, 0FF006401h, 0B403h, 0C5500h, 64696C53h
		dd 6F567265h, 656D756Ch, 12FF00h, 6F43534Dh, 6C74636Dh
		dd 2E62694Ch, 64696C53h, 3007265h, 34823BEh, 103B02A3h
		dd 2D000C0Fh, 9424Ch, 74h, 12344321h, 8, 4A7h, 1CA1h, 0A2BAE11h
		dd 60000h, 1Ch,	1, 5, 1, 0
		dd 64h,	3 dup(0)
		dd 2, 5, 0
		dd 1, 0ABCDEF01h, 50000h, 0
		dd 240006h, 2 dup(0FFFFFFFFh), 12EFE8h,	0BDECDE1Fh, 50001h
		dd 12EFE8h, 0B503FFh, 0D560000h, 696C5300h, 42726564h
		dd 6E616C61h, 0FF006563h, 534D0012h, 636D6F43h,	694C6C74h
		dd 6C532E62h, 72656469h, 0E90300h, 78F178Eh, 360F013Bh
		dd 424C2D00h, 740009h, 43210000h, 81234h, 0D550000h, 22C0000h
		dd 0AE110000h, 0A2Bh, 1C0006h, 0
		dd 50000h, 10000h, 0FFCE0000h, 32FFFFh,	4 dup(0)
		dd 0A0000h, 2 dup(0)
dword_403384	dd 0EF010000h, 0ABCDh, 5, 20000h, 0FFFF005Eh, 0FFFFFFFFh
		dd 0EFE8FFFFh, 0DE1F0012h, 1BDECh, 0EFE80005h, 3FF0012h
		dd 47h,	4C000F3Ch, 6C656261h, 636E7953h, 756A6441h, 1007473h
		dd 41001C01h, 73756A64h, 75612074h, 2F6F6964h, 65646976h
		dd 7973206Fh, 2820636Eh, 29736Dh, 4410E005h, 0FF087F16h
		dd 4D1200h, 3FF0214h, 3Dh, 4C00103Dh, 6C656261h, 69647541h
		dd 7274536Fh, 6D6165h, 130101h,	656C6553h, 61207463h, 6F696475h
		dd 72747320h, 6D6165h, 0A8272405h, 0FF0E1F0Ch, 4C1200h
		dd 3603FFh, 0F3E0000h, 62614C00h, 69566C65h, 436F6564h
		dd 6365646Fh, 0D010100h, 64695600h, 63206F65h, 6365646Fh
		dd 500203Ah, 12662724h,	0FF0C7Bh, 0FF004A12h, 3603h, 0F3F00h
		dd 6562614Ch, 6475416Ch, 6F436F69h, 636564h, 0D0101h, 69647541h
		dd 6F63206Fh, 3A636564h, 24050020h, 0F314AF27h,	1200FF0Ch
		dd 3FF0049h, 2Fh, 4C000C40h, 6C656261h,	616C6142h, 65636Eh
		dd 70101h, 616C6142h, 65636Eh, 4402C905h, 0FF03CF16h, 371200h
		dd 3FF0214h, 3Fh, 4C000741h, 6C656261h,	1003531h, 4F001E01h
		dd 75707475h, 65642074h, 65636976h, 726F6620h, 64756120h
		dd 73206F69h, 61657274h, 2405006Dh, 1F09D827h, 1200FF0Eh
		dd 3FF002Eh, 34h, 4C000E42h, 6C656261h,	69647541h, 666E496Fh
		dd 101006Fh, 7541000Ch,	206F6964h, 6F666E69h, 500203Ah
		dd 15CC2724h, 0FF112Bh,	0FF001012h, 3403h, 0E4300h, 6562614Ch
		dd 6469566Ch, 6E496F65h, 1006F66h, 56000C01h, 6F656469h
		dd 666E6920h, 203A6Fh, 92272405h, 0FF11A313h, 0F1200h
		dd 4A03FFh, 13440000h, 62614C00h, 63416C65h, 6C617574h
		dd 61727544h, 6E6F6974h, 1D010100h, 74634100h, 206C6175h
		dd 61727564h, 6E6F6974h, 3030203Ah, 3A30303Ah, 302E3030h
		dd 5003030h, 11492724h,	0FF0A23h, 0FF000E12h, 2D03h, 0B4500h
		dd 6562614Ch, 6C6F566Ch, 656D75h, 60101h, 756C6F56h, 500656Dh
		dd 2582328h, 0FF03CFh, 14000D12h, 4603FF02h, 46000000h
		dd 614C000Dh, 446C6562h, 74617275h, 6E6F69h, 1F0101h, 6769724Fh
		dd 6C616E69h, 72756420h, 6F697461h, 30203A6Eh, 30303A30h
		dd 2E30303Ah, 303030h, 1D272405h, 0FF0A2310h, 91200h, 3D03FFh
		dd 0D470000h, 62614C00h, 6F506C65h, 69746973h, 1006E6Fh
		dd 50001601h, 7469736Fh, 3A6E6F69h, 3A303020h, 303A3030h
		dd 30302E30h, 24050030h, 230F0027h, 1200FF0Ah, 3FF0007h
		dd 3Ch,	4C000B48h, 6C656261h, 74617453h, 1007375h, 53001701h
		dd 75746174h, 4E203A73h, 6976206Fh, 206F6564h, 64616F6Ch
		dd 5006465h, 16F82724h,	0FF0A23h, 0FF000612h, 402h, 10001h
		dd 403F48h, 0
		dd 2 dup(0FFFFFFFFh), 0
		dd offset off_403FCC
		dd offset dword_41801C
		align 10h
		dd 883E9B8h, 3 dup(0)
		dd offset dword_4036F4
dword_4036F4	dd 50h,	0B47AC2B4h, 40337372h, 9C772FA5h, 9FEFC984h, 5 dup(0)
					; DATA XREF: .text:004036F0o
		dd 2B10h, 5 dup(0)
		dd 1FD6h, 0
		dd offset dword_4016E4
		dd 4Ch
dword_403744	dd 21354256h, 2A2636h, 3 dup(0)	; DATA XREF: .text:starto
		dd 7Eh,	2 dup(0)
		dd 0A0000h, 409h, 2 dup(0)
		dd offset dword_4037F4
		dd 30F8FFh, 0FFFFFF00h,	8, 1, 20001h, 0E9h, 4036F4h, 403A30h
		dd 401698h, 78h, 8Ah, 9Ch, 9Dh,	4 dup(0)
aVideoplayers_0	db 'VideoPlayerSimple',0
aVideoplayers_1	db 'VideoPlayerSimple',0
		db    0
aVideoplayers_2	db 'VideoPlayerSimple',0
		align 4
dword_4037F4	dd 1F4h, 403F48h, 0	; DATA XREF: .text:00403774o
		dd offset dword_408D60
		dd offset dword_417110
		dd 0B80h, 418008h, 401516h, 418000h, 84h dup(0)
		dd offset dword_403384+338h
		align 10h
		dd 328h, 38h, 2	dup(0)
		dd 0D0h, 0E0h, 290h, 2B3h, 52h,	0
		dd 305h, 310h, 321h, 0
		dd 6F714D46h, 11D4E4EFh, 0D000EF93h, 992003D7h,	6F714D45h
		dd 11D4E4EFh, 0D000EF93h, 992003D7h, 6F714D44h,	11D4E4EFh
		dd 0D000EF93h, 992003D7h, 683EE718h, 495F6A1Ah,	4B3C85B9h
		dd 3E24BB92h, 6B5120B6h, 49CE2933h, 0DC100D94h,	42A9613h
		dd 3Ch,	2000h, 0FF804600h, 0Fh,	6325273Bh, 48B50FB9h, 6991D7B9h
		dd 9F6BA216h, 35FB54EFh, 4DB43C34h, 368D583h, 316DE99Fh
		dd 0
		dd 20571766h, 0
		dd 6B0000h, 10000h, 4 dup(0)
		dd 0DE0000h, 1,	2, 3, 4, 5, 6, 7, 8, 0Ah, 0Bh, 0Ch, 0Dh
		dd 0Eh,	0Fh, 10h, 11h, 12h, 13h, 14h, 15h, 16h,	17h, 18h
		dd 19h,	1Ah, 1Bh, 1Ch, 1Dh, 1Eh, 1Fh, 20h, 21h,	22h, 23h
		dd 25h,	24h, 26h, 27h, 28h, 29h, 2Ah, 2Bh, 2Ch,	2Dh, 2Eh
		dd 2Fh,	30h, 31h, 32h, 33h, 34h, 35h, 36h, 37h,	38h, 39h
		dd 3Ah,	3Bh, 3Ch, 3Dh, 3Eh, 3Fh, 40h, 41h, 42h,	43h, 44h
		dd 45h,	46h, 47h, 48h, 49h, 4Ah, 4Bh, 4Ch, 4Dh,	4Eh, 4Fh
		dd 50h,	51h, 52h, 53h, 54h, 55h, 56h, 57h, 58h,	59h, 5Ah
		dd 5Bh,	5Ch, 5Dh, 5Eh, 5Fh, 60h, 61h, 62h, 63h,	64h, 65h
		dd 66h,	67h, 68h, 69h, 6Ah, 6Bh, 6Ch, 28Ch, 2, 2 dup(0)
		dd 1Dh,	274E5E8h, 0Bh, 6C616353h, 696E5565h, 43007374h
		dd 70006F00h, 72007900h, 67006900h, 74006800h, 28002000h
		dd 29006300h, 32002000h, 30003000h, 2D003100h, 30003200h
		dd 35003000h, 4D002000h, 6C007500h, 69007400h, 65004D00h
		dd 69006400h, 20006100h, 6F005300h, 74006600h, 20002000h
		dd 706D6100h, 2E6A6433h, 78636Fh, 33504D41h, 694C4A44h
		dd 6D412E62h, 6A643370h, 706D4100h, 6A6433h, 1F0h, 38h
		dd 0D0h, 0F8h, 118h, 120h, 160h, 180h, 48h, 0
		dd 1C8h, 1D5h, 1E8h, 0
		dd 0F08DF954h, 11D18592h, 0C0006AB1h, 283628F0h, 0F08DF953h
		dd 11D18592h, 0C0006AB1h, 283628F0h, 0F08DF952h, 11D18592h
		dd 0C0006AB1h, 283628F0h, 0B1F4AA34h, 44AE2348h, 688A3E99h
		dd 0F412C2FDh, 0B6521C28h, 4ABD5271h, 0FE600CB4h, 0FADB614Bh
		dd 3Ch,	0
		dd 0FF804600h, 0Fh, 1BC8F851h, 4B12F341h, 0C15D46ABh, 561964D4h
		dd 6E51E518h, 4105132Eh, 0E69410B3h, 0CEB4B1BBh, 0
		dd 30571766h, 0
		dd 0F0000h, 10000h, 2 dup(0)
		dd 6000002h, 7000003h, 0
		dd 6000002h, 7000003h, 0
		dd 6000002h, 7000003h, 3 dup(0)
		dd 40001h, 7, 3	dup(0)
		dd 43E0000h, 2 dup(4420000h), 0FFFFFDA8h, 0FFFFFDA6h, 0FFFFFDA5h
		dd 0FFFFFDA4h, 0FFFFFDA3h, 0FFFFFDA2h, 0FFFFFDA1h, 1, 2
		dd 60Eh, 60Fh, 610h, 611h, 612h, 613h, 484h, 0FFFFFDFEh
		dd 2 dup(0)
dword_403EC4	dd 0Bh,	2747990h, 8, 62616E45h,	64656Ch, 330039h, 380036h
		dd 360032h, 450035h, 38002Dh, 460035h, 2D0045h,	310031h
		dd 310064h, 38002Dh, 450042h, 2D0033h, 2 dup(300030h)
		dd 380046h, 350037h, 440034h, 310041h, 4F43534Dh, 4C54434Dh
		dd 58434F2Eh, 43534D00h, 74636D6Fh, 62694C6Ch, 696C532Eh
		dd 726564h, 64696C53h, 17007265h, 0
		dd offset dword_41803C
		dd offset dword_408B90
		dd 0FFFFFFFFh, 0
		dd offset dword_41802C
		dd 39B044C6h, 4D85A788h, 546BF88h, 7529AE18h, 2000Ah, 20004h
		dd 403F9Ch, 3 dup(0)
		dd offset aVideoplayers_3 ; "VideoPlayerSimple"
		dd 409h, 410h, 0
dword_403F98	dd 2, 4054D4h, 0FFFFFFFFh, 4048B8h, 3 dup(0) ; DATA XREF: .text:004054ECo
		dd offset aForm1	; "Form1"
		dd 45h,	403FFCh, 0FFFFh, 18083h, 0
off_403FCC	dd offset dword_403384+338h ; DATA XREF: .text:004036D4o
		dd 0FFFFFFFFh, 404924h,	0
		dd offset dword_418024
		dd 0
		dd offset aAmp3djdef	; "Amp3djDef"
		align 10h
		dd 0FFFFh, 18001h, 47h dup(0)
aVideoplayers_3	db 'VideoPlayerSimple',0 ; DATA XREF: .text:00403F88o
		align 4
aForm1		db 'Form1',0            ; DATA XREF: .text:00403FB4o
		align 10h
aAmp3djdef	db 'Amp3djDef',0        ; DATA XREF: .text:00403FE4o
		align 4
dword_40413C	dd 256265D6h, 42A01D83h, 0C633B3A8h, 5178FAB8h,	9D8A168Ch
					; DATA XREF: .text:00408DF0o
					; .text:00408E12o ...
		dd 4E9D5797h, 5C5C3C8Eh, 21D0AC4Dh, 0B47AC2B4h,	40337372h
		dd 9C772FA5h, 9FEFC984h
dword_40416C	dd 0D6901B1Ch, 48E22D65h, 5F419B82h, 0E68F1933h, 33AD4EDAh
					; DATA XREF: .text:off_405550o
					; .text:00410082o ...
		dd 11CF6699h, 0AA000CB7h, 93D36000h, 6562614Ch,	6C61426Ch
		dd 65636E61h, 0
		dd 0FCFB3D2Eh, 1068A0FAh, 838A7h, 0B571332Bh, 565C3A43h
		dd 61757369h, 5C30366Ch, 38394256h, 3642565Ch, 424C4F2Eh
		dd 0
dword_4041C8	dd 4256h, 40419Ch, 0	; DATA XREF: .text:00408BB8o
					; .text:00408BC4o ...
		dd 6, 9, 4041ACh, 4041C8h, 418334h, 2 dup(0)
dword_4041F0	dd 8930A0h, 33AD4EF2h, 11CF6699h, 0AA000CB7h, 93D36000h
					; DATA XREF: .text:00408BC8o
		dd 6D6D6F43h, 53646E61h, 56706F74h, 6F656469h, 0
dword_404218	dd 33AD4F02h, 11CF6699h, 0AA000CB7h, 93D36000h,	6974704Fh
					; DATA XREF: .text:00408BD4o
		dd 754E6E6Fh, 6C6Ch, 6D6D6F43h,	43646E61h, 65736F6Ch, 65646956h
		dd 6Fh,	6562614Ch, 6475416Ch, 6E496F69h, 6F66h,	33504D41h
		dd 694C4A44h, 62h, 33AD4EFAh, 11CF6699h, 0AA000CB7h, 93D36000h
		dd 63656843h, 7661576Bh, 65527365h, 62726576h, 0
aLabelvideocode	db 'LabelVideoCodec',0
aCheckchorus	db 'CheckChorus',0
aCheckflanger	db 'CheckFlanger',0
		align 4
aCheckecho	db 'CheckEcho',0
		align 10h
aOptioncustom	db 'OptionCustom',0
		align 10h
aOptioncustomre	db 'OptionCustomResample',0
		align 4
aOptioncustom_0	db 'OptionCustomReductionFront',0
		align 4
dword_404304	dd 1BC8F851h, 4B12F341h, 0C15D46ABh, 561964D4h,	64696C53h
					; DATA XREF: .text:00408BECo
		dd 6F507265h, 69746973h, 6E6Fh,	9DA984D9h, 407E35F9h, 6AB32F8Dh
		dd 16D52A19h, 575C3A43h, 6F646E69h, 735C7377h, 65747379h
		dd 5C32336Dh, 4F43534Dh, 4C54434Dh, 61636F2Eh, 0
aMscomctllib	db 'MSComctlLib',0      ; DATA XREF: .text:00404378o
off_404364	dd offset dword_404304+20h ; DATA XREF:	.text:00408BE8o
		dd 0
		dd 10002h, 0
		dd offset dword_404304+30h
		dd offset aMscomctllib	; "MSComctlLib"
		dd offset dword_418338
		dd 2 dup(0)
		dd 8930A0h, 6D6D6F43h, 50646E61h, 46766572h, 656D6172h
		dd 0
aCommandnextf_0	db 'CommandNextFrame',0
		align 4
dword_4043B4	dd 6325273Bh, 48B50FB9h, 6991D7B9h, 9F6BA216h, 33706D41h
					; DATA XREF: .text:00408BF8o
		dd 316A64h, 14B3381Ah, 469A1ED7h, 0EA3AC2A4h, 0CBFF481Bh
		dd 505C3A63h, 52474F52h, 5C317E41h, 49544341h, 317E4556h
		dd 5443415Ch, 7E455649h, 65525C31h, 74736964h, 706D615Ch
		dd 2E6A6433h, 61636Fh, 0
off_404410	dd offset dword_4043B4+18h ; DATA XREF:	.text:00408BF4o
		align 8
		dd 8, 0
		dd offset dword_4043B4+28h
		dd offset dword_404218+40h
		dd offset dword_41833C
		dd 2 dup(0)
		dd 8930A0h, 63656843h, 65654B6Bh, 70734170h, 52746365h
		dd 6F697461h, 0
aSlider6000hz	db 'Slider6000Hz',0
		align 10h
aSlider12000hz	db 'Slider12000Hz',0
		align 10h
aSlider14000hz	db 'Slider14000Hz',0
		align 10h
aSlider16000hz	db 'Slider16000Hz',0
		align 10h
aSlider80hz	db 'Slider80Hz',0
		align 4
aSlider170hz	db 'Slider170Hz',0
aSlider310hz	db 'Slider310Hz',0
aSlider600hz	db 'Slider600Hz',0
aSlider1000hz	db 'Slider1000Hz',0
		align 10h
aSlider3000hz	db 'Slider3000Hz',0
		align 10h
aCommandpausevi	db 'CommandPauseVideo',0
		align 4
dword_4044F4	dd 33AD4EEAh, 11CF6699h, 0AA000CB7h, 93D36000h,	6D617246h
					; DATA XREF: .text:00408C04o
		dd 75714565h, 7A696C61h, 7265h,	6D617246h, 4F4D4465h, 0
aCheckenablep_0	db 'CheckEnablePitch',0
		align 4
dword_404534	dd 33AD4F0Ah, 11CF6699h, 0AA000CB7h, 93D36000h,	626D6F43h
					; DATA XREF: .text:00408C10o
		dd 6475416Fh, 65446F69h, 65636976h, 73h, 6D6D6F43h, 50646E61h
		dd 68637469h, 6F72655Ah, 0
aOptioncustomtr	db 'OptionCustomTransf',0
		align 10h
dword_404580	dd 33AD4F3Ah, 11CF6699h, 0AA000CB7h, 93D36000h,	6D726F46h
					; DATA XREF: .text:00408C1Co
		dd 0
aComboaudiost_0	db 'ComboAudioStream',0
		align 10h
aLabelaudiostre	db 'LabelAudioStream',0
		align 4
aCommandspeedze	db 'CommandSpeedZero',0
		align 4
aLabelpitch	db 'LabelPitch',0
		align 4
dword_4045E4	dd 33AD4F2Ah, 11CF6699h, 0AA000CB7h, 93D36000h,	656D6954h
					; DATA XREF: .text:00408C28o
		dd 3172h, 6D6D6F43h, 50646E61h,	68637469h, 6E776F44h, 0
aFramepitch	db 'FramePitch',0
		align 4
aLabelspeed	db 'LabelSpeed',0
		align 4
aCommandspeedup	db 'CommandSpeedUp',0
		align 4
aCommandminus_0	db 'CommandMinus10ms',0
		align 4
aCommandplus1_0	db 'CommandPlus10ms',0
aSlidervolume	db 'SliderVolume',0
		align 4
aLabel14	db 'Label14',0
aLabel15	db 'Label15',0
aCommandloadvid	db 'CommandLoadVideo',0
		align 10h
aFrameaudiorend	db 'FrameAudioRendererMode',0
		align 4
aSliderbalance	db 'SliderBalance',0
		align 4
dword_4046B8	dd 33AD4ED2h, 11CF6699h, 0AA000CB7h, 93D36000h,	74636950h
					; DATA XREF: .text:00408C34o
		dd 53657275h, 74636570h, 6D7572h, 74636950h, 4F657275h
		dd 6C696373h, 6Ch, 6562614Ch, 346Ch, 74636950h,	57657275h
		dd 66657661h, 6D726Fh, 6562614Ch, 6D65546Ch, 6F70h, 74636950h
		dd 56657275h, 74654D75h, 69527265h, 746867h, 6562614Ch
		dd 376Ch, 6974704Fh, 74536E6Fh,	61646E61h, 6472h, 6562614Ch
		dd 736F506Ch, 6F697469h, 6Eh, 6562614Ch, 336Ch,	6562614Ch
		dd 7275446Ch, 6F697461h, 6Eh, 6D6D6F43h, 50646E61h, 5679616Ch
		dd 6F656469h, 0
aLabelstatus	db 'LabelStatus',0
aLabel2		db 'Label2',0
		align 4
aLabel8		db 'Label8',0
		align 10h
aLabel9		db 'Label9',0
		align 4
aCommandspeeddo	db 'CommandSpeedDown',0
		align 4
aLabel5		db 'Label5',0
		align 4
aLabel6		db 'Label6',0
		align 4
aCommandtempodo	db 'CommandTempoDown',0
		align 10h
aCommandtempoup	db 'CommandTempoUp',0
		align 10h
dword_4047E0	dd 33AD4EE2h, 11CF6699h, 0AA000CB7h, 93D36000h,	74786554h
					; DATA XREF: .text:00408C40o
		dd 636E7953h, 756A6441h, 7473h,	6D6D6F43h, 50646E61h, 68637469h
		dd 7055h, 6D6D6F43h, 54646E61h,	6F706D65h, 6F72655Ah, 0
aLabel13	db 'Label13',0
aLabel10	db 'Label10',0
aPicturevumeter	db 'PictureVuMeterLeft',0
		align 4
aLabelvideoinfo	db 'LabelVideoInfo',0
		align 4
aPicturevideopo	db 'PictureVideoPosition',0
		align 10h
aLabelsyncadjus	db 'LabelSyncAdjust',0
aLabel11	db 'Label11',0
aLabelvolume	db 'LabelVolume',0
aLabelactualdur	db 'LabelActualDuration',0
aLabelaudiocode	db 'LabelAudioCodec',0
		dd 1AC000Ch, 3 dup(0)
dword_4048C8	dd 33AD4ED1h, 11CF6699h, 0AA000CB7h, 93D36000h ; DATA XREF: .text:00408E42o
					; .text:00408E7Do ...
dword_4048D8	dd 0E6120A38h, 4FB2BB81h, 43B0CF9Dh, 0B7209D6Bh, 1C000Ch
					; DATA XREF: .text:00408FA4o
					; .text:0040907Do ...
		dd 0
		dd 404001Ch, 20000Ch, 0
		dd 4040020h, 24000Ch, 0
		dd 4040024h, 2C000Ch, 0
		dd 404002Ch, 48000Ch, 0
		dd 4040048h, 8000Ch, 2 dup(0)
dword_404930	dd 33AD4EE9h, 11CF6699h, 0AA000CB7h, 93D36000h ; DATA XREF: .text:0040AB79o
					; .text:0040ABC5o ...
dword_404940	dd 33AD4EF9h, 11CF6699h, 0AA000CB7h, 93D36000h ; DATA XREF: .text:0040AC0Bo
					; .text:0040B3C1o ...
dword_404950	dd 33AD4F09h, 11CF6699h, 0AA000CB7h, 93D36000h ; DATA XREF: .text:0040AC4Do
					; .text:0040AE39o ...
dword_404960	dd 33AD4F01h, 11CF6699h, 0AA000CB7h, 93D36000h ; DATA XREF: .text:0040ACA1o
					; .text:0040B356o ...
dword_404970	dd 0D6926E69h, 4BD34BE2h, 0BEC7789Dh, 0B2BE6C02h
					; DATA XREF: .text:0040ACDCo
					; .text:0040ADAAo ...
dword_404980	dd 33AD4ED9h, 11CF6699h, 0AA000CB7h, 93D36000h ; DATA XREF: .text:0040B207o
					; .text:0040B24Bo ...
dword_404990	dd 33AD4EF1h, 11CF6699h, 0AA000CB7h, 93D36000h ; DATA XREF: .text:0040B55Eo
					; .text:0040B5A2o ...
dword_4049A0	dd 33AD4EE1h, 11CF6699h, 0AA000CB7h, 93D36000h ; DATA XREF: .text:0040B5DCo
					; .text:0040BEB3o ...
dword_4049B0	dd 6DA4EC58h, 49DD06CAh, 4DA2CCAEh, 9F563631h ;	DATA XREF: .text:0040B74Do
					; .text:0040BB4Ao ...
; ---------------------------------------------------------------------------

loc_4049C0:				; DATA XREF: .text:0040B7E2o
					; .text:0040BBE0o ...
		pop	edx
		dec	ecx
		add	[ecx+4A950BC5h], ch
		mov	eax, ds:0F81E5440h
		db	67h
		cwde
		cmp	al, 33h		; DATA XREF: .text:0040B877o
					; .text:0040BC76o ...
		lodsd
		psraw	mm6, mm0
		retn
; ---------------------------------------------------------------------------
		dw 451Ah
		dd 141518Fh, 29FD114Ch,	1Ch
aAudioDisabled:				; DATA XREF: .text:0040BFA3o
		unicode	0, <Audio disabled>,0
		align 4
		dw 8, 0
aNone:					; DATA XREF: .text:0040C0E6o
					; .text:0040CBEAo ...
		unicode	0, <None>,0
		align 4
		unicode	0, <,>,0
aPosition000000:			; DATA XREF: .text:0040C886o
					; .text:00410589o
		unicode	0, <Position: 00:00:00.000>,0
		align 4
		dw 8, 0
aFps:					; DATA XREF: .text:0040D89Ao
		unicode	0, < fps>,0
		align 4
		dw 3Eh,	0
aOriginalDurati:			; DATA XREF: .text:0040C8C1o
					; .text:004105CEo
		unicode	0, <Original duration: 00:00:00.000>,0
		unicode	0, <:>,0
aActualDuration:			; DATA XREF: .text:0040C8FCo
					; .text:00410613o
		unicode	0, <Actual duration: 00:00:00.000>,0
a_:
		unicode	0, <.>,0
aStatusNoVideoL:			; DATA XREF: .text:0040C937o
					; .text:00410658o
		unicode	0, <Status: No video loaded>,0
		dd 1Ah
aVideoCodec:				; DATA XREF: .text:0040C972o
					; .text:0040D937o ...
		unicode	0, <Video codec: >,0
		dd 18h
aVideoInfo:				; DATA XREF: .text:0040C9ADo
					; .text:0040D774o ...
		unicode	0, <Video info:	>,0
		align 10h
		dd 1Ah
aAudioCodec:				; DATA XREF: .text:0040C9E8o
					; .text:0040DD90o ...
		unicode	0, <Audio codec: >,0
		dd 18h
aAudioInfo:				; DATA XREF: .text:0040CA23o
					; .text:0040DCDFo ...
		unicode	0, <Audio info:	>,0
		align 10h
		unicode	0, <">,0
aActualDurati_0:			; DATA XREF: .text:0040CDE3o
					; .text:0040D278o
		unicode	0, <Actual duration: >,0
		unicode	0, <&>,0
aOriginalDura_0:			; DATA XREF: .text:0040D10Ao
		unicode	0, <Original duration: >,0
		dd 4, 880001h, 2
dword_404BF0	dd 78h,	12h		; DATA XREF: .text:0040D79Eo
aPixels:				; DATA XREF: .text:0040D7DDo
		unicode	0, < pixels, >,0
		dd 2
dword_404C10	dd 3Ah,	4		; DATA XREF: .text:0040D81Co
asc_404C18:				; DATA XREF: .text:0040D85Bo
		unicode	0, <, >,0
		align 10h
		unicode	0, < >,0
aVideoInfoNone:				; DATA XREF: .text:0040DA5Eo
		unicode	0, <Video info:	None>,0
		align 4
a4:
		unicode	0, <4>,0
aVideoCodecNotA:			; DATA XREF: .text:0040DAA3o
		unicode	0, <Video codec: Not available>,0
		align 4
		dw 8, 0
aMono:					; DATA XREF: .text:0040DCA4o
		unicode	0, <Mono>,0
		align 4
		dd 0Ch
aStereo:				; DATA XREF: .text:0040DCAFo
		unicode	0, <Stereo>,0
		align 4
		dd 10h
aSurround:				; DATA XREF: .text:0040DCB6o
		unicode	0, <Surround>,0
		align 10h
		dw 0Ah,	0
aHz:					; DATA XREF: .text:0040DD09o
		unicode	0, < Hz, >,0
		dd 0Eh
aDefault:				; DATA XREF: .text:0040E364o
		unicode	0, <Default>,0
		unicode	0, < >,0
aAudioInfoNone:				; DATA XREF: .text:0040E70Bo
		unicode	0, <Audio info:	None>,0
		align 4
a4_0:
		unicode	0, <4>,0
aAudioCodecNotA:			; DATA XREF: .text:0040E750o
		unicode	0, <Audio codec: Not available>,0
		align 4
a6:
		unicode	0, <6>,0
aChooseAVideoFi:			; DATA XREF: .text:00410225o
		unicode	0, <Choose a video file	to load>,0
		unicode	0, <h>,0
aVideoFormats_a:			; DATA XREF: .text:00410290o
		unicode	0, <Video formats (*.avi;*.mpg;*.mpeg;*.wmv;*.asx;*.asf;>,0
		align 4
		unicode	0, <&>,0
a_mp4_vob_flv:				; DATA XREF: .text:00410295o
		unicode	0, <*.mp4;*.vob;*.flv)|>,0
aJ:
		unicode	0, <J>,0
a_avi_mpg_mpeg_:			; DATA XREF: .text:004102A8o
		unicode	0, <*.avi;*.mpg;*.mpeg;*.wmv;*.asx;*.asf;>,0
		unicode	0, <$>,0
a_mp4_vob_flv_0:			; DATA XREF: .text:004102BBo
		unicode	0, <*.mp4;*.vob;*.flv|>,0
		align 4
		unicode	0, <&>,0
aAllFiles__:				; DATA XREF: .text:004102CEo
		unicode	0, <All	files (*.*)|*.*>,0
		dd 0
dword_404ECC	dd 0			; DATA XREF: .text:00410312o
					; .text:004103E2o
		dd 22h
aCannotLoadFile:			; DATA XREF: .text:004107BAo
		unicode	0, <Cannot load	file >,0
		dd 2
dword_404EFC	dd 2Eh,	6Eh		; DATA XREF: .text:004107E0o
aTheRelatedCode:			; DATA XREF: .text:0041082Eo
		unicode	0, <The	related	codec is probably missing inside the system>,0
		dw 0Ah,	0
aPause:					; DATA XREF: .text:00410DF9o
					; .text:00416B92o ...
		unicode	0, <Pause>,0
dword_404F84	dd 2BC98785h, 47FD78CEh, 0D03B3E94h, 0BEFA0A89h, 1Eh
					; DATA XREF: .text:00412B03o
aStatusPlaying:				; DATA XREF: .text:00416CB7o
		unicode	0, <Status: Playing>,0
		dd 2BEh
aNoOutputDevice:			; DATA XREF: .text:004126D0o
		unicode	0, <No output device detected and/or connected:	the program w>
		unicode	0, <ill	now close. If you are running under Windows Vista or >
		unicode	0, <higher, jack-sensing could disable an existing sound card>
		unicode	0, < if	no speaker is physically connected so, if you are sur>
		unicode	0, <e that a sound card	is installed, try to plug a couple of>
		unicode	0, < speakers into the sound card before launching again this>
		unicode	0, < program.>,0
		dd 0Ch
aResume:				; DATA XREF: .text:00416BF6o
		unicode	0, <Resume>,0
		align 10h
		dd 1Ch
aStatusPaused:				; DATA XREF: .text:00416C41o
		unicode	0, <Status: Paused>,0
		align 4
		dd 1Eh
aStatusStopped:				; DATA XREF: .text:00416BDDo
		unicode	0, <Status: Stopped>,0
		dd 14h
aPosition:				; DATA XREF: .text:00416E27o
		unicode	0, <Position: >,0
		align 4
aVba6_dll	db 'VBA6.DLL',0
		align 10h
a__vbaend	db '__vbaEnd',0
		align 4
a__vbavardup	db '__vbaVarDup',0
a__vbafpi2	db '__vbaFpI2',0
		align 4
a__vbastri2	db '__vbaStrI2',0
		align 10h
a__vbavarcat	db '__vbaVarCat',0
a__vbastrcmp	db '__vbaStrCmp',0
a__vbai2i4	db '__vbaI2I4',0
		align 4
a__vbastrcopy	db '__vbaStrCopy',0
		align 4
a__vbastrr4	db '__vbaStrR4',0
		align 10h
a__vbastri4	db '__vbaStrI4',0
		align 4
a__vbar4var	db '__vbaR4Var',0
		align 4
		dd 0
a__vbaboolvar	db '__vbaBoolVar',0
		align 4
a__vbafreestrli	db '__vbaFreeStrList',0
		align 10h
a__vbastrcat	db '__vbaStrCat',0
a__vbafreestr	db '__vbaFreeStr',0
		align 4
a__vbastrvarmov	db '__vbaStrVarMove',0
a__vbastrmove	db '__vbaStrMove',0
		align 4
a__vbai2var	db '__vbaI2Var',0
		align 4
a__vbaerrorover	db '__vbaErrorOverflow',0
		align 4
a__vbalateidst	db '__vbaLateIdSt',0
		align 4
a__vbafreeobj	db '__vbaFreeObj',0
		align 4
a__vbafreevar	db '__vbaFreeVar',0
		align 4
a__vbalateidcal	db '__vbaLateIdCall',0
a__vbafreevarli	db '__vbaFreeVarList',0
		align 10h
a__vbafreeobjli	db '__vbaFreeObjList',0
		align 4
a__vbacastobjva	db '__vbaCastObjVar',0
a__vbaobjset	db '__vbaObjSet',0
a__vbafpi4	db '__vbaFpI4',0
		align 4
a__vbalateidc_0	db '__vbaLateIdCallLd',0
		align 10h
a__vbai4var	db '__vbaI4Var',0
		align 4
a__vbahresultch	db '__vbaHresultCheckObj',0
		align 4
dword_4054D4	dd 1, 403F48h, 0	; DATA XREF: .text:00406408o
					; .text:00406468o ...
		dd offset dword_408B50
		dd 0FFFFFFFFh, 0
		dd offset dword_403F98+4
		dd offset dword_418008
		align 8
		dd 875F80h, 3 dup(0)
		dd offset off_40554C
		dd 1, 40414Ch, 0
		dd offset off_40554C
		dd 1, 405554h, 0
		dd offset off_405550
		dd 57h,	405554h, 1B70045h, 6C0068h, 4062ECh, 418370h, 0
		dd 8940A0h
off_40554C	dd offset dword_40413C+20h ; DATA XREF:	.text:00405508o
					; .text:00405518o
off_405550	dd offset dword_40416C	; DATA XREF: .text:00405528o
dword_405554	dd 120040h, 48h, 40417Ch, 30040h, 2 dup(0) ; DATA XREF:	.text:00406404o
		dd offset dword_406400
dword_405570	dd 894478h, 40418Ch, 30040h, 110040h, 4Ch, 4041F4h, 30039h
					; DATA XREF: .text:00406464o
		dd 2 dup(0)
		dd offset dword_406460
dword_405598	dd 894488h, 404204h, 30039h, 130040h, 50h, 404218h, 3001Eh
					; DATA XREF: .text:004064C0o
		dd 2 dup(0)
		dd offset dword_4064BC
dword_4055C0	dd 894498h, 404228h, 3001Eh, 110040h, 54h, 4041F4h, 30019h
					; DATA XREF: .text:00406524o
		dd 2 dup(0)
		dd offset dword_406520
dword_4055E8	dd 894488h, 404234h, 30019h, 120040h, 58h, 40417Ch, 30042h
					; DATA XREF: .text:00406580o
		dd 2 dup(0)
		dd offset dword_40657C
dword_405610	dd 894478h, 404248h, 30042h, 120040h, 5Ch, 404264h, 30026h
					; DATA XREF: .text:004065E0o
		dd 2 dup(0)
		dd offset dword_4065DC
dword_405638	dd 8944A8h, 404274h, 30026h, 120040h, 60h, 40417Ch, 3003Eh
					; DATA XREF: .text:00406640o
		dd 2 dup(0)
		dd offset dword_40663C
dword_405660	dd 894478h, 404288h, 3003Eh, 120040h, 64h, 404264h, 30024h
					; DATA XREF: .text:004066A0o
		dd 2 dup(0)
		dd offset dword_40669C
dword_405688	dd 8944A8h, 404298h, 30024h, 120040h, 68h, 404264h, 30023h
					; DATA XREF: .text:00406700o
		dd 2 dup(0)
		dd offset dword_4066FC
dword_4056B0	dd 8944A8h, 4042A4h, 30023h, 120040h, 6Ch, 404264h, 30025h
					; DATA XREF: .text:00406760o
		dd 2 dup(0)
		dd offset dword_40675C
dword_4056D8	dd 8944A8h, 4042B4h, 30025h, 130040h, 70h, 404218h, 30020h
					; DATA XREF: .text:004067C0o
		dd 2 dup(0)
		dd offset dword_4067BC
dword_405700	dd 894498h, 4042C0h, 30020h, 130040h, 74h, 404218h, 3001Dh
					; DATA XREF: .text:00406824o
		dd 2 dup(0)
		dd offset dword_406820
dword_405728	dd 894498h, 4042D0h, 3001Dh, 130040h, 78h, 404218h, 3001Ch
					; DATA XREF: .text:00406888o
		dd 2 dup(0)
		dd offset dword_406884
dword_405750	dd 894498h, 4042E8h, 3001Ch, 180040h, 7Ch, 404304h, 30053h
					; DATA XREF: .text:004068ECo
		dd 2 dup(0)
		dd offset dword_4068E8
dword_405778	dd 8944B8h, 404314h, 30053h, 110040h, 80h, 4041F4h, 30008h
					; DATA XREF: .text:00406964o
		dd 2 dup(0)
		dd offset dword_406960
dword_4057A0	dd 894488h, 40438Ch, 30008h, 110040h, 84h, 4041F4h, 30009h
					; DATA XREF: .text:004069C0o
		dd 2 dup(0)
		dd offset dword_4069BC
dword_4057C8	dd 894488h, 4043A0h, 30009h, 740040h, 88h, 4043B4h, 30054h
					; DATA XREF: .text:00406A1Co
		dd 2 dup(0)
		dd offset dword_406A18
dword_4057F0	dd 8944C8h, 4043C4h, 30054h, 120040h, 8Ch, 404264h, 3000Ah
					; DATA XREF: .text:00406C04o
		dd 2 dup(0)
		dd offset dword_406C00
dword_405818	dd 8944A8h, 404438h, 3000Ah, 180040h, 90h, 404304h, 3004Dh
					; DATA XREF: .text:00406C64o
		dd 2 dup(0)
		dd offset dword_406C60
dword_405840	dd 8944B8h, 404450h, 3004Dh, 180040h, 94h, 404304h, 30052h
					; DATA XREF: .text:00406CDCo
		dd 2 dup(0)
		dd offset dword_406CD8
dword_405868	dd 8944B8h, 404460h, 30052h, 180040h, 98h, 404304h, 30050h
					; DATA XREF: .text:00406D54o
		dd 2 dup(0)
		dd offset dword_406D50
dword_405890	dd 8944B8h, 404470h, 30050h, 180040h, 9Ch, 404304h, 30051h
					; DATA XREF: .text:00406DCCo
		dd 2 dup(0)
		dd offset dword_406DC8
dword_4058B8	dd 8944B8h, 404480h, 30051h, 180040h, 0A0h, 404304h, 30049h
					; DATA XREF: .text:00406E44o
		dd 2 dup(0)
		dd offset dword_406E40
dword_4058E0	dd 8944B8h, 404490h, 30049h, 180040h, 0A4h, 404304h, 3004Fh
					; DATA XREF: .text:00406EBCo
		dd 2 dup(0)
		dd offset dword_406EB8
dword_405908	dd 8944B8h, 40449Ch, 3004Fh, 180040h, 0A8h, 404304h, 3004Ah
					; DATA XREF: .text:00406F34o
		dd 2 dup(0)
		dd offset dword_406F30
dword_405930	dd 8944B8h, 4044A8h, 3004Ah, 180040h, 0ACh, 404304h, 3004Eh
					; DATA XREF: .text:00406FACo
		dd 2 dup(0)
		dd offset dword_406FA8
dword_405958	dd 8944B8h, 4044B4h, 3004Eh, 180040h, 0B0h, 404304h, 3004Bh
					; DATA XREF: .text:00407024o
		dd 2 dup(0)
		dd offset dword_407020
dword_405980	dd 8944B8h, 4044C0h, 3004Bh, 180040h, 0B4h, 404304h, 3004Ch
					; DATA XREF: .text:0040709Co
		dd 2 dup(0)
		dd offset dword_407098
dword_4059A8	dd 8944B8h, 4044D0h, 3004Ch, 110040h, 0B8h, 4041F4h, 30036h
					; DATA XREF: .text:00407114o
		dd 2 dup(0)
		dd offset dword_407110
dword_4059D0	dd 894488h, 4044E0h, 30036h, 0D0040h, 0BCh, 4044F4h, 30027h
					; DATA XREF: .text:00407170o
		dd 2 dup(0)
		dd offset dword_40716C
dword_4059F8	dd 8944D8h, 404504h, 30027h, 0D0040h, 0C0h, 4044F4h, 30022h
					; DATA XREF: .text:004071BCo
		dd 2 dup(0)
		dd offset dword_4071B8
dword_405A20	dd 8944D8h, 404514h, 30022h, 120040h, 0C4h, 404264h, 3000Bh
					; DATA XREF: .text:00407208o
		dd 2 dup(0)
		dd offset dword_407204
dword_405A48	dd 8944A8h, 404520h, 3000Bh, 130040h, 0C8h, 404534h, 30021h
					; DATA XREF: .text:00407268o
		dd 2 dup(0)
		dd offset dword_407264
dword_405A70	dd 8944E8h, 404544h, 30021h, 110040h, 0CCh, 4041F4h, 3000Dh
					; DATA XREF: .text:004072CCo
		dd 2 dup(0)
		dd offset dword_4072C8
dword_405A98	dd 894488h, 404558h, 3000Dh, 130040h, 0D0h, 404218h, 3001Bh
					; DATA XREF: .text:00407328o
		dd 2 dup(0)
		dd offset dword_407324
dword_405AC0	dd 894498h, 40456Ch, 3001Bh, 1F0040h, 0D4h, 404580h, 0FFFFFFFFh
					; DATA XREF: .text:0040738Co
		dd 2 dup(0)
		dd offset dword_407388
dword_405AE8	dd 8944F8h, 404590h, 0FFFFFFFFh, 130040h, 0D8h,	404534h
					; DATA XREF: .text:00407420o
		dd 30007h, 2 dup(0)
		dd offset dword_40741C
dword_405B10	dd 8944E8h, 404598h, 30007h, 120040h, 0DCh, 40417Ch, 3003Dh
					; DATA XREF: .text:00407484o
		dd 2 dup(0)
		dd offset dword_407480
dword_405B38	dd 894478h, 4045B0h, 3003Dh, 110040h, 0E0h, 4041F4h, 30010h
					; DATA XREF: .text:004074E4o
		dd 2 dup(0)
		dd offset dword_4074E0
dword_405B60	dd 894488h, 4045C4h, 30010h, 120040h, 0E4h, 40417Ch, 30016h
					; DATA XREF: .text:00407540o
		dd 2 dup(0)
		dd offset dword_40753C
dword_405B88	dd 894478h, 4045D8h, 30016h, 10040h, 0E8h, 4045E4h, 30037h
					; DATA XREF: .text:004075A0o
		dd 2 dup(0)
		dd offset dword_40759C
dword_405BB0	dd 894508h, 4045F4h, 30037h, 110040h, 0ECh, 4041F4h, 3000Eh
					; DATA XREF: .text:004075BCo
		dd 2 dup(0)
		dd offset dword_4075B8
dword_405BD8	dd 894488h, 4045FCh, 3000Eh, 0D0040h, 0F0h, 4044F4h, 3000Ch
					; DATA XREF: .text:00407618o
		dd 2 dup(0)
		dd offset dword_407614
dword_405C00	dd 8944D8h, 404610h, 3000Ch, 120040h, 0F4h, 40417Ch, 30017h
					; DATA XREF: .text:00407664o
		dd 2 dup(0)
		dd offset dword_407660
dword_405C28	dd 894478h, 40461Ch, 30017h, 110040h, 0F8h, 4041F4h, 30012h
					; DATA XREF: .text:004076C4o
		dd 2 dup(0)
		dd offset dword_4076C0
dword_405C50	dd 894488h, 404628h, 30012h, 110040h, 0FCh, 4041F4h, 30006h
					; DATA XREF: .text:00407720o
		dd 2 dup(0)
		dd offset dword_40771C
dword_405C78	dd 894488h, 404638h, 30006h, 110040h, 100h, 4041F4h, 30005h
					; DATA XREF: .text:0040777Co
		dd 2 dup(0)
		dd offset dword_407778
dword_405CA0	dd 894488h, 40464Ch, 30005h, 180040h, 104h, 404304h, 30055h
					; DATA XREF: .text:004077D8o
		dd 2 dup(0)
		dd offset dword_4077D4
dword_405CC8	dd 8944B8h, 40465Ch, 30055h, 120040h, 108h, 40417Ch, 30028h
					; DATA XREF: .text:00407850o
		dd 2 dup(0)
		dd offset dword_40784C
dword_405CF0	dd 894478h, 40466Ch, 30028h, 120040h, 10Ch, 40417Ch, 30041h
					; DATA XREF: .text:004078B0o
		dd 2 dup(0)
		dd offset dword_4078AC
dword_405D18	dd 894478h, 404674h, 30041h, 110040h, 110h, 4041F4h, 3003Bh
					; DATA XREF: .text:00407910o
		dd 2 dup(0)
		dd offset dword_40790C
dword_405D40	dd 894488h, 40467Ch, 3003Bh, 0D0040h, 114h, 4044F4h, 3001Ah
					; DATA XREF: .text:0040796Co
		dd 2 dup(0)
		dd offset dword_407968
dword_405D68	dd 8944D8h, 404690h, 3001Ah, 180040h, 118h, 404304h, 30056h
					; DATA XREF: .text:004079B8o
		dd 2 dup(0)
		dd offset dword_4079B4
dword_405D90	dd 8944B8h, 4046A8h, 30056h, 1A0040h, 11Ch, 4046B8h, 30003h
					; DATA XREF: .text:00407A30o
		dd 2 dup(0)
		dd offset dword_407A2C
dword_405DB8	dd 894518h, 4046C8h, 30003h, 1A0040h, 120h, 4046B8h, 30002h
					; DATA XREF: .text:00407AB0o
		dd 2 dup(0)
		dd offset dword_407AAC
dword_405DE0	dd 894518h, 4046D8h, 30002h, 120040h, 124h, 40417Ch, 30033h
					; DATA XREF: .text:00407B30o
		dd 2 dup(0)
		dd offset dword_407B2C
dword_405E08	dd 894478h, 4046E8h, 30033h, 1A0040h, 128h, 4046B8h, 30001h
					; DATA XREF: .text:00407B90o
		dd 2 dup(0)
		dd offset dword_407B8C
dword_405E30	dd 894518h, 4046F0h, 30001h, 120040h, 12Ch, 40417Ch, 30018h
					; DATA XREF: .text:00407C10o
		dd 2 dup(0)
		dd offset dword_407C0C
dword_405E58	dd 894478h, 404700h, 30018h, 1A0040h, 130h, 4046B8h, 30034h
					; DATA XREF: .text:00407C70o
		dd 2 dup(0)
		dd offset dword_407C6C
dword_405E80	dd 894518h, 40470Ch, 30034h, 120040h, 134h, 40417Ch, 3002Ch
					; DATA XREF: .text:00407CF0o
		dd 2 dup(0)
		dd offset dword_407CEC
dword_405EA8	dd 894478h, 404720h, 3002Ch, 130040h, 138h, 404218h, 3001Fh
					; DATA XREF: .text:00407D50o
		dd 2 dup(0)
		dd offset dword_407D4C
dword_405ED0	dd 894498h, 404728h, 3001Fh, 120040h, 13Ch, 40417Ch, 30047h
					; DATA XREF: .text:00407DB4o
		dd 2 dup(0)
		dd offset dword_407DB0
dword_405EF8	dd 894478h, 404738h, 30047h, 120040h, 140h, 40417Ch, 30032h
					; DATA XREF: .text:00407E14o
		dd 2 dup(0)
		dd offset dword_407E10
dword_405F20	dd 894478h, 404748h, 30032h, 120040h, 144h, 40417Ch, 30046h
					; DATA XREF: .text:00407E74o
		dd 2 dup(0)
		dd offset dword_407E70
dword_405F48	dd 894478h, 404750h, 30046h, 110040h, 148h, 4041F4h, 3003Ah
					; DATA XREF: .text:00407ED4o
		dd 2 dup(0)
		dd offset dword_407ED0
dword_405F70	dd 894488h, 404760h, 3003Ah, 120040h, 14Ch, 40417Ch, 30048h
					; DATA XREF: .text:00407F30o
		dd 2 dup(0)
		dd offset dword_407F2C
dword_405F98	dd 894478h, 404774h, 30048h, 120040h, 150h, 40417Ch, 30031h
					; DATA XREF: .text:00407F90o
		dd 2 dup(0)
		dd offset dword_407F8C
dword_405FC0	dd 894478h, 404780h, 30031h, 120040h, 154h, 40417Ch, 3002Fh
					; DATA XREF: .text:00407FF0o
		dd 2 dup(0)
		dd offset dword_407FEC
dword_405FE8	dd 894478h, 404788h, 3002Fh, 120040h, 158h, 40417Ch, 3002Eh
					; DATA XREF: .text:00408050o
		dd 2 dup(0)
		dd offset dword_40804C
dword_406010	dd 894478h, 404790h, 3002Eh, 110040h, 15Ch, 4041F4h, 30011h
					; DATA XREF: .text:004080B0o
		dd 2 dup(0)
		dd offset dword_4080AC
dword_406038	dd 894488h, 404798h, 30011h, 120040h, 160h, 40417Ch, 3002Bh
					; DATA XREF: .text:0040810Co
		dd 2 dup(0)
		dd offset dword_408108
dword_406060	dd 894478h, 4047ACh, 3002Bh, 120040h, 164h, 40417Ch, 30030h
					; DATA XREF: .text:0040816Co
		dd 2 dup(0)
		dd offset dword_408168
dword_406088	dd 894478h, 4047B4h, 30030h, 110040h, 168h, 4041F4h, 30014h
					; DATA XREF: .text:004081CCo
		dd 2 dup(0)
		dd offset dword_4081C8
dword_4060B0	dd 894488h, 4047BCh, 30014h, 110040h, 16Ch, 4041F4h, 30015h
					; DATA XREF: .text:00408228o
		dd 2 dup(0)
		dd offset dword_408224
dword_4060D8	dd 894488h, 4047D0h, 30015h, 180040h, 170h, 4047E0h, 30004h
					; DATA XREF: .text:00408284o
		dd 2 dup(0)
		dd offset dword_408280
dword_406100	dd 894528h, 4047F0h, 30004h, 110040h, 174h, 4041F4h, 3000Fh
					; DATA XREF: .text:004082FCo
		dd 2 dup(0)
		dd offset dword_4082F8
dword_406128	dd 894488h, 404800h, 3000Fh, 110040h, 178h, 4041F4h, 30013h
					; DATA XREF: .text:00408358o
		dd 2 dup(0)
		dd offset dword_408354
dword_406150	dd 894488h, 404810h, 30013h, 120040h, 17Ch, 40417Ch, 30029h
					; DATA XREF: .text:004083B4o
		dd 2 dup(0)
		dd offset dword_4083B0
dword_406178	dd 894478h, 404824h, 30029h, 120040h, 180h, 40417Ch, 3002Dh
					; DATA XREF: .text:00408414o
		dd 2 dup(0)
		dd offset dword_408410
dword_4061A0	dd 894478h, 40482Ch, 3002Dh, 1A0040h, 184h, 4046B8h, 30035h
					; DATA XREF: .text:00408474o
		dd 2 dup(0)
		dd offset dword_408470
dword_4061C8	dd 894518h, 404834h, 30035h, 120040h, 188h, 40417Ch, 30043h
					; DATA XREF: .text:004084F4o
		dd 2 dup(0)
		dd offset dword_4084F0
dword_4061F0	dd 894478h, 404848h, 30043h, 1A0040h, 18Ch, 4046B8h, 30038h
					; DATA XREF: .text:00408554o
		dd 2 dup(0)
		dd offset dword_408550
dword_406218	dd 894518h, 404858h, 30038h, 120040h, 190h, 40417Ch, 3003Ch
					; DATA XREF: .text:004085D4o
		dd 2 dup(0)
		dd offset dword_4085D0
dword_406240	dd 894478h, 404870h, 3003Ch, 120040h, 194h, 40417Ch, 3002Ah
					; DATA XREF: .text:00408634o
		dd 2 dup(0)
		dd offset dword_408630
dword_406268	dd 894478h, 404880h, 3002Ah, 120040h, 198h, 40417Ch, 30045h
					; DATA XREF: .text:00408694o
		dd 2 dup(0)
		dd offset dword_408690
dword_406290	dd 894478h, 404888h, 30045h, 120040h, 19Ch, 40417Ch, 30044h
					; DATA XREF: .text:004086F4o
		dd 2 dup(0)
		dd offset dword_4086F0
dword_4062B8	dd 894478h, 404894h, 30044h, 120040h, 1A0h, 40417Ch, 3003Fh
					; DATA XREF: .text:00408754o
		dd 2 dup(0)
		dd offset dword_408750
		dd 894478h, 4048A8h, 3003Fh, 4087B8h, 4087C5h, 4087D2h
		dd 4087DFh, 4087ECh, 4087F9h, 408806h, 408813h,	408820h
		dd 40882Dh, 40883Ah, 408847h, 408854h, 408861h,	40886Eh
		dd 40887Bh, 408888h, 408895h, 4088A2h, 4088AFh,	4088BCh
		dd 4088C9h, 4088D6h, 4088E3h, 4088F0h, 4088FDh,	40890Ah
		dd 408917h, 408924h, 408931h, 40893Eh, 40894Bh,	408958h
		dd 408965h, 408972h, 40897Fh, 40898Ch, 408999h,	4089A6h
		dd 4089B3h, 4089C0h, 4089CDh, 4089DAh, 4089E7h,	4089F4h
		dd 408A01h, 408A0Eh, 408A1Bh, 408A28h, 408A35h,	408A42h
		dd 408A4Fh, 408A5Ch, 408A69h, 408A76h, 408A83h,	408A90h
		dd 408A9Dh, 408AAAh, 408AB7h, 408AC4h, 408AD1h,	408ADEh
		dd 408AEBh, 408AF8h, 408B05h, 408B12h, 408B1Fh,	408B2Ch
dword_406400	dd 0			; DATA XREF: .text:0040556Co
		dd offset dword_405554
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 12h dup(0)
dword_406460	dd 0			; DATA XREF: .text:00405594o
		dd offset dword_405570+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd offset loc_408943
		dd 10h dup(0)
dword_4064BC	dd 0			; DATA XREF: .text:004055BCo
		dd offset dword_405598+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd offset loc_4089B8
		dd 12h dup(0)
dword_406520	dd 0			; DATA XREF: .text:004055E4o
		dd offset dword_4055C0+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd offset loc_40888D
		dd 10h dup(0)
dword_40657C	dd 0			; DATA XREF: .text:0040560Co
		dd offset dword_4055E8+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 12h dup(0)
dword_4065DC	dd 0			; DATA XREF: .text:00405634o
		dd offset dword_405610+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd offset loc_408859
		dd 11h dup(0)
dword_40663C	dd 0			; DATA XREF: .text:0040565Co
		dd offset dword_405638+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 12h dup(0)
dword_40669C	dd 0			; DATA XREF: .text:00405684o
		dd offset dword_405660+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd offset loc_408818
		dd 11h dup(0)
dword_4066FC	dd 0			; DATA XREF: .text:004056ACo
		dd offset dword_405688+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd offset loc_40883F
		dd 11h dup(0)
dword_40675C	dd 0			; DATA XREF: .text:004056D4o
		dd offset dword_4056B0+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd offset loc_408825
		dd 11h dup(0)
dword_4067BC	dd 0			; DATA XREF: .text:004056FCo
		dd offset dword_4056D8+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd offset loc_408984
		dd 12h dup(0)
dword_406820	dd 0			; DATA XREF: .text:00405724o
		dd offset dword_405700+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd offset loc_40899E
		dd 12h dup(0)
dword_406884	dd 0			; DATA XREF: .text:0040574Co
		dd offset dword_405728+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd offset loc_408991
		dd 12h dup(0)
dword_4068E8	dd 0			; DATA XREF: .text:00405774o
		dd offset dword_405750+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 0Dh dup(0)
		dd offset loc_408AF0
		dd 0
		dd offset loc_408AFD
		dd offset loc_408B0A
		align 20h
dword_406960	dd 0			; DATA XREF: .text:0040579Co
		dd offset dword_405778+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd offset loc_40890F
		dd 10h dup(0)
dword_4069BC	dd 0			; DATA XREF: .text:004057C4o
		dd offset dword_4057A0+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd offset loc_4088B4
		dd 10h dup(0)
dword_406A18	dd 0			; DATA XREF: .text:004057ECo
		dd offset dword_4057C8+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 0Dh dup(0)
		dd offset loc_4087FE
		align 10h
		dd offset loc_40880B
		dd offset loc_4087E4
		dd 32h dup(0)
		dd offset loc_4087F1
		align 100h
dword_406C00	dd 0			; DATA XREF: .text:00405814o
		dd offset dword_4057F0+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd offset loc_40884C
		dd 11h dup(0)
dword_406C60	dd 0			; DATA XREF: .text:0040583Co
		dd offset dword_405818+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 10h dup(0)
		dd offset loc_408A7B
		dd offset loc_408A6E
		dd 6 dup(0)
dword_406CD8	dd 0			; DATA XREF: .text:00405864o
		dd offset dword_405840+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 10h dup(0)
		dd offset loc_408A95
		dd offset loc_408A88
		dd 6 dup(0)
dword_406D50	dd 0			; DATA XREF: .text:0040588Co
		dd offset dword_405868+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 10h dup(0)
		dd offset loc_408AAF
		dd offset loc_408AA2
		dd 6 dup(0)
dword_406DC8	dd 0			; DATA XREF: .text:004058B4o
		dd offset dword_405890+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 10h dup(0)
		dd offset loc_408AC9
		dd offset loc_408ABC
		align 20h
dword_406E40	dd 0			; DATA XREF: .text:004058DCo
		dd offset dword_4058B8+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 10h dup(0)
		dd offset loc_4089DF
		dd offset loc_4089D2
		dd 6 dup(0)
dword_406EB8	dd 0			; DATA XREF: .text:00405904o
		dd offset dword_4058E0+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 10h dup(0)
		dd offset loc_4089F9
		dd offset loc_4089EC
		dd 6 dup(0)
dword_406F30	dd 0			; DATA XREF: .text:0040592Co
		dd offset dword_405908+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 10h dup(0)
		dd offset loc_408A13
		dd offset loc_408A06
		dd 6 dup(0)
dword_406FA8	dd 0			; DATA XREF: .text:00405954o
		dd offset dword_405930+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		align 80h
		dd offset loc_408A2D
		dd offset loc_408A20
		align 20h
dword_407020	dd 0			; DATA XREF: .text:0040597Co
		dd offset dword_405958+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 10h dup(0)
		dd offset loc_408A47
		dd offset loc_408A3A
		dd 6 dup(0)
dword_407098	dd 0			; DATA XREF: .text:004059A4o
		dd offset dword_405980+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 10h dup(0)
		dd offset loc_408A61
		dd offset loc_408A54
		dd 6 dup(0)
dword_407110	dd 0			; DATA XREF: .text:004059CCo
		dd offset dword_4059A8+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd offset loc_4088C1
		dd 10h dup(0)
dword_40716C	dd 0			; DATA XREF: .text:004059F4o
		dd offset dword_4059D0+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 0Dh dup(0)
dword_4071B8	dd 0			; DATA XREF: .text:00405A1Co
		dd offset dword_4059F8+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 0Dh dup(0)
dword_407204	dd 0			; DATA XREF: .text:00405A44o
		dd offset dword_405A20+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd offset loc_408832
		dd 11h dup(0)
dword_407264	dd 0			; DATA XREF: .text:00405A6Co
		dd offset dword_405A48+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		align 10h
		dd offset loc_408866
		dd 11h dup(0)
dword_4072C8	dd 0			; DATA XREF: .text:00405A94o
		dd offset dword_405A70+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd offset loc_4088E8
		dd 10h dup(0)
dword_407324	dd 0			; DATA XREF: .text:00405ABCo
		dd offset dword_405A98+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd offset loc_4089AB
		dd 12h dup(0)
dword_407388	dd 0			; DATA XREF: .text:00405AE4o
		dd offset dword_405AC0+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 6 dup(0)
		dd offset loc_408977
		dd 18h dup(0)
dword_40741C	dd 0			; DATA XREF: .text:00405B0Co
		dd offset dword_405AE8+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd offset loc_408873
		dd offset loc_408880
		align 80h
dword_407480	dd 0			; DATA XREF: .text:00405B34o
		dd offset dword_405B10+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 12h dup(0)
dword_4074E0	dd 0			; DATA XREF: .text:00405B5Co
		dd offset dword_405B38+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd offset loc_408936
		dd 10h dup(0)
dword_40753C	dd 0			; DATA XREF: .text:00405B84o
		dd offset dword_405B60+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 12h dup(0)
dword_40759C	dd 0			; DATA XREF: .text:00405BACo
		dd offset dword_405B88+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd offset loc_408B24
dword_4075B8	dd 0			; DATA XREF: .text:00405BD4o
		dd offset dword_405BB0+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd offset loc_4088CE
		dd 10h dup(0)
dword_407614	dd 0			; DATA XREF: .text:00405BFCo
		dd offset dword_405BD8+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 0Dh dup(0)
dword_407660	dd 0			; DATA XREF: .text:00405C24o
		dd offset dword_405C00+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 12h dup(0)
dword_4076C0	dd 0			; DATA XREF: .text:00405C4Co
		dd offset dword_405C28+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd offset loc_408929
		dd 10h dup(0)
dword_40771C	dd 0			; DATA XREF: .text:00405C74o
		dd offset dword_405C50+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd offset loc_4088A7
		dd 10h dup(0)
dword_407778	dd 0			; DATA XREF: .text:00405C9Co
		dd offset dword_405C78+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd offset loc_408902
		dd 10h dup(0)
dword_4077D4	dd 0			; DATA XREF: .text:00405CC4o
		dd offset dword_405CA0+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 10h dup(0)
		dd offset loc_408B17
		dd offset loc_408AD6
		dd 6 dup(0)
dword_40784C	dd 0			; DATA XREF: .text:00405CECo
		dd offset dword_405CC8+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 12h dup(0)
dword_4078AC	dd 0			; DATA XREF: .text:00405D14o
		dd offset dword_405CF0+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 12h dup(0)
dword_40790C	dd 0			; DATA XREF: .text:00405D3Co
		dd offset dword_405D18+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd offset loc_40889A
		dd 10h dup(0)
dword_407968	dd 0			; DATA XREF: .text:00405D64o
		dd offset dword_405D40+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 0Dh dup(0)
dword_4079B4	dd 0			; DATA XREF: .text:00405D8Co
		dd offset dword_405D68+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 10h dup(0)
		dd offset loc_408AE3
		dd 7 dup(0)
dword_407A2C	dd 0			; DATA XREF: .text:00405DB4o
		dd offset dword_405D90+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 1Ah dup(0)
dword_407AAC	dd 0			; DATA XREF: .text:00405DDCo
		dd offset dword_405DB8+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 1Ah dup(0)
dword_407B2C	dd 0			; DATA XREF: .text:00405E04o
		dd offset dword_405DE0+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 12h dup(0)
dword_407B8C	dd 0			; DATA XREF: .text:00405E2Co
		dd offset dword_405E08+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 1Ah dup(0)
dword_407C0C	dd 0			; DATA XREF: .text:00405E54o
		dd offset dword_405E30+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 12h dup(0)
dword_407C6C	dd 0			; DATA XREF: .text:00405E7Co
		dd offset dword_405E58+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 1Ah dup(0)
dword_407CEC	dd 0			; DATA XREF: .text:00405EA4o
		dd offset dword_405E80+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 12h dup(0)
dword_407D4C	dd 0			; DATA XREF: .text:00405ECCo
		dd offset dword_405EA8+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd offset loc_4089C5
		dd 12h dup(0)
dword_407DB0	dd 0			; DATA XREF: .text:00405EF4o
		dd offset dword_405ED0+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 12h dup(0)
dword_407E10	dd 0			; DATA XREF: .text:00405F1Co
		dd offset dword_405EF8+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 12h dup(0)
dword_407E70	dd 0			; DATA XREF: .text:00405F44o
		dd offset dword_405F20+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 12h dup(0)
dword_407ED0	dd 0			; DATA XREF: .text:00405F6Co
		dd offset dword_405F48+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd offset loc_4088F5
		dd 10h dup(0)
dword_407F2C	dd 0			; DATA XREF: .text:00405F94o
		dd offset dword_405F70+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 12h dup(0)
dword_407F8C	dd 0			; DATA XREF: .text:00405FBCo
		dd offset dword_405F98+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 12h dup(0)
dword_407FEC	dd 0			; DATA XREF: .text:00405FE4o
		dd offset dword_405FC0+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 12h dup(0)
dword_40804C	dd 0			; DATA XREF: .text:0040600Co
		dd offset dword_405FE8+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 12h dup(0)
dword_4080AC	dd 0			; DATA XREF: .text:00406034o
		dd offset dword_406010+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd offset loc_40891C
		dd 10h dup(0)
dword_408108	dd 0			; DATA XREF: .text:0040605Co
		dd offset dword_406038+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 12h dup(0)
dword_408168	dd 0			; DATA XREF: .text:00406084o
		dd offset dword_406060+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 12h dup(0)
dword_4081C8	dd 0			; DATA XREF: .text:004060ACo
		dd offset dword_406088+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd offset loc_408950
		dd 10h dup(0)
dword_408224	dd 0			; DATA XREF: .text:004060D4o
		dd offset dword_4060B0+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd offset loc_40895D
		align 80h
dword_408280	dd 0			; DATA XREF: .text:004060FCo
		dd offset dword_4060D8+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 18h dup(0)
dword_4082F8	dd 0			; DATA XREF: .text:00406124o
		dd offset dword_406100+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd offset loc_4088DB
		dd 10h dup(0)
dword_408354	dd 0			; DATA XREF: .text:0040614Co
		dd offset dword_406128+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd offset loc_40896A
		dd 10h dup(0)
dword_4083B0	dd 0			; DATA XREF: .text:00406174o
		dd offset dword_406150+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 12h dup(0)
dword_408410	dd 0			; DATA XREF: .text:0040619Co
		dd offset dword_406178+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 12h dup(0)
dword_408470	dd 0			; DATA XREF: .text:004061C4o
		dd offset dword_4061A0+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 1Ah dup(0)
dword_4084F0	dd 0			; DATA XREF: .text:004061ECo
		dd offset dword_4061C8+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 12h dup(0)
dword_408550	dd 0			; DATA XREF: .text:00406214o
		dd offset dword_4061F0+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 1Ah dup(0)
dword_4085D0	dd 0			; DATA XREF: .text:0040623Co
		dd offset dword_406218+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 12h dup(0)
dword_408630	dd 0			; DATA XREF: .text:00406264o
		dd offset dword_406240+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 12h dup(0)
dword_408690	dd 0			; DATA XREF: .text:0040628Co
		dd offset dword_406268+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 12h dup(0)
dword_4086F0	dd 0			; DATA XREF: .text:004062B4o
		dd offset dword_406290+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 12h dup(0)
dword_408750	dd 0			; DATA XREF: .text:004062DCo
		dd offset dword_4062B8+0Ch
		dd offset dword_4054D4
		dd offset loc_401672
		dd offset loc_401678
		dd offset loc_40167E
		dd 12h dup(0)
; ---------------------------------------------------------------------------
		sub	dword ptr [esp+4], 0FFFFh
		jmp	loc_408D70
; ---------------------------------------------------------------------------
		sub	dword ptr [esp+4], 0FFFFh
		jmp	loc_409280
; ---------------------------------------------------------------------------
		sub	dword ptr [esp+4], 0FFFFh
		jmp	loc_40A600
; ---------------------------------------------------------------------------
		sub	dword ptr [esp+4], 0FFFFh
		jmp	loc_40AAF0
; ---------------------------------------------------------------------------

loc_4087E4:				; DATA XREF: .text:00406A74o
		sub	dword ptr [esp+4], 87h
		jmp	loc_40C7E0
; ---------------------------------------------------------------------------

loc_4087F1:				; DATA XREF: .text:00406B40o
		sub	dword ptr [esp+4], 87h
		jmp	loc_40CD60
; ---------------------------------------------------------------------------

loc_4087FE:				; DATA XREF: .text:00406A64o
		sub	dword ptr [esp+4], 87h
		jmp	loc_40CF80
; ---------------------------------------------------------------------------

loc_40880B:				; DATA XREF: .text:00406A70o
		sub	dword ptr [esp+4], 87h
		jmp	loc_40EEA0
; ---------------------------------------------------------------------------

loc_408818:				; DATA XREF: .text:004066B4o
		sub	dword ptr [esp+4], 63h
		jmp	loc_40F080
; ---------------------------------------------------------------------------

loc_408825:				; DATA XREF: .text:00406774o
		sub	dword ptr [esp+4], 6Bh
		jmp	loc_40F250
; ---------------------------------------------------------------------------

loc_408832:				; DATA XREF: .text:0040721Co
		sub	dword ptr [esp+4], 0C3h
		jmp	loc_40F420
; ---------------------------------------------------------------------------

loc_40883F:				; DATA XREF: .text:00406714o
		sub	dword ptr [esp+4], 67h
		jmp	loc_40F560
; ---------------------------------------------------------------------------

loc_40884C:				; DATA XREF: .text:00406C18o
		sub	dword ptr [esp+4], 8Bh
		jmp	loc_40F730
; ---------------------------------------------------------------------------

loc_408859:				; DATA XREF: .text:004065F4o
		sub	dword ptr [esp+4], 5Bh
		jmp	loc_40F8B0
; ---------------------------------------------------------------------------

loc_408866:				; DATA XREF: .text:00407280o
		sub	dword ptr [esp+4], 0C7h
		jmp	loc_40FA80
; ---------------------------------------------------------------------------

loc_408873:				; DATA XREF: .text:00407434o
		sub	dword ptr [esp+4], 0D7h
		jmp	loc_40FE50
; ---------------------------------------------------------------------------

loc_408880:				; DATA XREF: .text:00407438o
		sub	dword ptr [esp+4], 0D7h
		jmp	loc_410030
; ---------------------------------------------------------------------------

loc_40888D:				; DATA XREF: .text:00406538o
		sub	dword ptr [esp+4], 53h
		jmp	loc_4100C0
; ---------------------------------------------------------------------------

loc_40889A:				; DATA XREF: .text:00407924o
		sub	dword ptr [esp+4], 10Fh
		jmp	loc_4101E0
; ---------------------------------------------------------------------------

loc_4088A7:				; DATA XREF: .text:00407734o
		sub	dword ptr [esp+4], 0FBh
		jmp	loc_410960
; ---------------------------------------------------------------------------

loc_4088B4:				; DATA XREF: .text:004069D4o
		sub	dword ptr [esp+4], 83h
		jmp	loc_410C50
; ---------------------------------------------------------------------------

loc_4088C1:				; DATA XREF: .text:00407128o
		sub	dword ptr [esp+4], 0B7h
		jmp	loc_410D70
; ---------------------------------------------------------------------------

loc_4088CE:				; DATA XREF: .text:004075D0o
		sub	dword ptr [esp+4], 0EBh
		jmp	loc_410F20
; ---------------------------------------------------------------------------

loc_4088DB:				; DATA XREF: .text:00408310o
		sub	dword ptr [esp+4], 173h
		jmp	loc_4110E0
; ---------------------------------------------------------------------------

loc_4088E8:				; DATA XREF: .text:004072E0o
		sub	dword ptr [esp+4], 0CBh
		jmp	loc_4112A0
; ---------------------------------------------------------------------------

loc_4088F5:				; DATA XREF: .text:00407EE8o
		sub	dword ptr [esp+4], 147h
		jmp	loc_4113E0
; ---------------------------------------------------------------------------

loc_408902:				; DATA XREF: .text:00407790o
		sub	dword ptr [esp+4], 0FFh
		jmp	loc_411580
; ---------------------------------------------------------------------------

loc_40890F:				; DATA XREF: .text:00406978o
		sub	dword ptr [esp+4], 7Fh
		jmp	loc_4118F0
; ---------------------------------------------------------------------------

loc_40891C:				; DATA XREF: .text:004080C4o
		sub	dword ptr [esp+4], 15Bh
		jmp	loc_411A10
; ---------------------------------------------------------------------------

loc_408929:				; DATA XREF: .text:004076D8o
		sub	dword ptr [esp+4], 0F7h
		jmp	loc_411BF0
; ---------------------------------------------------------------------------

loc_408936:				; DATA XREF: .text:004074F8o
		sub	dword ptr [esp+4], 0DFh
		jmp	loc_411DD0
; ---------------------------------------------------------------------------

loc_408943:				; DATA XREF: .text:00406478o
		sub	dword ptr [esp+4], 4Bh
		jmp	loc_411F10
; ---------------------------------------------------------------------------

loc_408950:				; DATA XREF: .text:004081E0o
		sub	dword ptr [esp+4], 167h
		jmp	loc_412030
; ---------------------------------------------------------------------------

loc_40895D:				; DATA XREF: .text:0040823Co
		sub	dword ptr [esp+4], 16Bh
		jmp	loc_412270
; ---------------------------------------------------------------------------

loc_40896A:				; DATA XREF: .text:0040836Co
		sub	dword ptr [esp+4], 177h
		jmp	loc_4124B0
; ---------------------------------------------------------------------------

loc_408977:				; DATA XREF: .text:004073B8o
		sub	dword ptr [esp+4], 0D3h
		jmp	loc_4125F0
; ---------------------------------------------------------------------------

loc_408984:				; DATA XREF: .text:004067D4o
		sub	dword ptr [esp+4], 6Fh
		jmp	loc_413240
; ---------------------------------------------------------------------------

loc_408991:				; DATA XREF: .text:0040689Co
		sub	dword ptr [esp+4], 77h
		jmp	loc_413560
; ---------------------------------------------------------------------------

loc_40899E:				; DATA XREF: .text:00406838o
		sub	dword ptr [esp+4], 73h
		jmp	loc_413880
; ---------------------------------------------------------------------------

loc_4089AB:				; DATA XREF: .text:0040733Co
		sub	dword ptr [esp+4], 0CFh
		jmp	loc_413BA0
; ---------------------------------------------------------------------------

loc_4089B8:				; DATA XREF: .text:004064D4o
		sub	dword ptr [esp+4], 4Fh
		jmp	loc_413EC0
; ---------------------------------------------------------------------------

loc_4089C5:				; DATA XREF: .text:00407D64o
		sub	dword ptr [esp+4], 137h
		jmp	loc_414030
; ---------------------------------------------------------------------------

loc_4089D2:				; DATA XREF: .text:00406E9Co
		sub	dword ptr [esp+4], 9Fh
		jmp	loc_4141A0
; ---------------------------------------------------------------------------

loc_4089DF:				; DATA XREF: .text:00406E98o
		sub	dword ptr [esp+4], 9Fh
		jmp	loc_4143C0
; ---------------------------------------------------------------------------

loc_4089EC:				; DATA XREF: .text:00406F14o
		sub	dword ptr [esp+4], 0A3h
		jmp	loc_414450
; ---------------------------------------------------------------------------

loc_4089F9:				; DATA XREF: .text:00406F10o
		sub	dword ptr [esp+4], 0A3h
		jmp	loc_414670
; ---------------------------------------------------------------------------

loc_408A06:				; DATA XREF: .text:00406F8Co
		sub	dword ptr [esp+4], 0A7h
		jmp	loc_414700
; ---------------------------------------------------------------------------

loc_408A13:				; DATA XREF: .text:00406F88o
		sub	dword ptr [esp+4], 0A7h
		jmp	loc_414920
; ---------------------------------------------------------------------------

loc_408A20:				; DATA XREF: .text:00407004o
		sub	dword ptr [esp+4], 0ABh
		jmp	loc_4149B0
; ---------------------------------------------------------------------------

loc_408A2D:				; DATA XREF: .text:00407000o
		sub	dword ptr [esp+4], 0ABh
		jmp	loc_414BD0
; ---------------------------------------------------------------------------

loc_408A3A:				; DATA XREF: .text:0040707Co
		sub	dword ptr [esp+4], 0AFh
		jmp	loc_414C60
; ---------------------------------------------------------------------------

loc_408A47:				; DATA XREF: .text:00407078o
		sub	dword ptr [esp+4], 0AFh
		jmp	loc_414E80
; ---------------------------------------------------------------------------

loc_408A54:				; DATA XREF: .text:004070F4o
		sub	dword ptr [esp+4], 0B3h
		jmp	loc_414F10
; ---------------------------------------------------------------------------

loc_408A61:				; DATA XREF: .text:004070F0o
		sub	dword ptr [esp+4], 0B3h
		jmp	loc_415130
; ---------------------------------------------------------------------------

loc_408A6E:				; DATA XREF: .text:00406CBCo
		sub	dword ptr [esp+4], 8Fh
		jmp	loc_4151C0
; ---------------------------------------------------------------------------

loc_408A7B:				; DATA XREF: .text:00406CB8o
		sub	dword ptr [esp+4], 8Fh
		jmp	loc_4153E0
; ---------------------------------------------------------------------------

loc_408A88:				; DATA XREF: .text:00406D34o
		sub	dword ptr [esp+4], 93h
		jmp	loc_415470
; ---------------------------------------------------------------------------

loc_408A95:				; DATA XREF: .text:00406D30o
		sub	dword ptr [esp+4], 93h
		jmp	loc_415690
; ---------------------------------------------------------------------------

loc_408AA2:				; DATA XREF: .text:00406DACo
		sub	dword ptr [esp+4], 97h
		jmp	loc_415720
; ---------------------------------------------------------------------------

loc_408AAF:				; DATA XREF: .text:00406DA8o
		sub	dword ptr [esp+4], 97h
		jmp	loc_415940
; ---------------------------------------------------------------------------

loc_408ABC:				; DATA XREF: .text:00406E24o
		sub	dword ptr [esp+4], 9Bh
		jmp	loc_4159D0
; ---------------------------------------------------------------------------

loc_408AC9:				; DATA XREF: .text:00406E20o
		sub	dword ptr [esp+4], 9Bh
		jmp	loc_415BF0
; ---------------------------------------------------------------------------

loc_408AD6:				; DATA XREF: .text:00407830o
		sub	dword ptr [esp+4], 103h
		jmp	loc_415C80
; ---------------------------------------------------------------------------

loc_408AE3:				; DATA XREF: .text:00407A0Co
		sub	dword ptr [esp+4], 117h
		jmp	loc_415EA0
; ---------------------------------------------------------------------------

loc_408AF0:				; DATA XREF: .text:00406934o
		sub	dword ptr [esp+4], 7Bh
		jmp	loc_415FE0
; ---------------------------------------------------------------------------

loc_408AFD:				; DATA XREF: .text:0040693Co
		sub	dword ptr [esp+4], 7Bh
		jmp	loc_4161E0
; ---------------------------------------------------------------------------

loc_408B0A:				; DATA XREF: .text:00406940o
		sub	dword ptr [esp+4], 7Bh
		jmp	loc_416310
; ---------------------------------------------------------------------------

loc_408B17:				; DATA XREF: .text:0040782Co
		sub	dword ptr [esp+4], 103h
		jmp	loc_416760
; ---------------------------------------------------------------------------

loc_408B24:				; DATA XREF: .text:004075B4o
		sub	dword ptr [esp+4], 0E7h
		jmp	loc_416980
; ---------------------------------------------------------------------------
		align 4
off_408B34	dd offset dword_408B50	; DATA XREF: .text:00408B74o
					; .text:00408B78o ...
dword_408B38	dd 0FFFFFFFFh, 5 dup(0)	; DATA XREF: .text:00408B70o
dword_408B50	dd 0			; DATA XREF: .text:004054E0o
					; .text:off_408B34o
		dd offset dword_4054D4
		dd 0FFFFFFFFh, 0
		db 5, 4	dup(0)
		align 4
		dd offset dword_408C48
		align 10h
		dd offset dword_408B38+4
		dd offset off_408B34
		dd offset off_408B34
		dd 3 dup(0)
		dd 1ACh, 4
dword_408B90	dd 0			; DATA XREF: .text:00403F50o
		dd offset dword_403EC4+84h
		dd 0FFFFFFFFh, 0
		dd offset off_408B34
		align 10h
		dd 0FFFFFFFFh, 0
		dd offset dword_4041C8+4
		dd offset dword_40416C+10h
		dd offset dword_418340
		dd offset dword_4041C8+4
		dd offset dword_4041F0+4
		dd offset dword_418344
		dd offset dword_4041C8+4
		dd offset dword_404218
		dd offset dword_418348
		dd offset dword_4041C8+4
		dd offset dword_404218+4Ch
		dd offset dword_41834C
		dd offset off_404364
		dd offset dword_404304
		dd offset dword_418350
		dd offset off_404410
		dd offset dword_4043B4
		dd offset dword_418354
		dd offset dword_4041C8+4
		dd offset dword_4044F4
		dd offset dword_418358
		dd offset dword_4041C8+4
		dd offset dword_404534
		dd offset dword_41835C
		dd offset dword_4041C8+4
		dd offset dword_404580
		dd offset dword_418360
		dd offset dword_4041C8+4
		dd offset dword_4045E4
		dd offset dword_418364
		dd offset dword_4041C8+4
		dd offset dword_4046B8
		dd offset dword_418368
		dd offset dword_4041C8+4
		dd offset dword_4047E0
		dd offset dword_41836C
dword_408C48	dd 45h dup(0)		; DATA XREF: .text:00408B68o
		align 10h
dword_408D60	dd 0E9E9E9E9h, 3 dup(0CCCCCCCCh) ; DATA	XREF: .text:00403800o
; ---------------------------------------------------------------------------

loc_408D70:				; CODE XREF: .text:004087B8j
		push	ebp
		mov	ebp, esp
		sub	esp, 8
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 128h
		push	ebx
		push	esi
		push	edi
		mov	[ebp-8], esp
		mov	dword ptr [ebp-4], offset dword_401100
		mov	ecx, 7
		xor	eax, eax
		lea	edi, [ebp-30h]
		xor	ebx, ebx
		rep stosd
		mov	edi, [ebp+8]
		push	3
		push	edi
		mov	[ebp-34h], ebx
		mov	eax, [edi]
		mov	[ebp-38h], ebx
		mov	[ebp-3Ch], ebx
		mov	[ebp-4Ch], ebx
		mov	[ebp-5Ch], ebx
		mov	[ebp-100h], ebx
		mov	[ebp-104h], ebx
		mov	[ebp-108h], ebx
		mov	[ebp-10Ch], ebx
		mov	[ebp-110h], ebx
		call	dword ptr [eax+114h]
		cmp	eax, ebx
		fnclex
		jge	short loc_408DFD
		push	114h
		push	offset dword_40413C
		push	edi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_408DFD:				; CODE XREF: .text:00408DE9j
		mov	ecx, [edi]
		lea	edx, [ebp-100h]
		push	edx
		push	edi
		call	dword ptr [ecx+58h]
		cmp	eax, ebx
		fnclex
		jge	short loc_408E1F
		push	58h
		push	offset dword_40413C
		push	edi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_408E1F:				; CODE XREF: .text:00408E0Ej
		mov	ecx, [ebp+0Ch]
		mov	eax, [ebp-100h]
		mov	[ebp-64h], eax
		lea	eax, [ebp-104h]
		mov	esi, [ecx]
		push	eax
		push	esi
		mov	edx, [esi]
		call	dword ptr [edx+70h]
		cmp	eax, ebx
		fnclex
		jge	short loc_408E4F
		push	70h
		push	offset dword_4048C8
		push	esi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_408E4F:				; CODE XREF: .text:00408E3Ej
		fld	dword ptr [ebp-104h]
		mov	esi, ds:__vbaFpI4
		call	esi ; __vbaFpI4
		mov	ecx, [ebp+0Ch]
		mov	[ebp-84h], eax
		lea	eax, [ebp-108h]
		mov	ebx, [ecx]
		push	eax
		push	ebx
		mov	edx, [ebx]
		call	dword ptr [edx+78h]
		test	eax, eax
		fnclex
		jge	short loc_408E8A
		push	78h
		push	offset dword_4048C8
		push	ebx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_408E8A:				; CODE XREF: .text:00408E79j
		fld	dword ptr [ebp-108h]
		call	esi ; __vbaFpI4
		mov	ecx, [ebp+0Ch]
		mov	[ebp-0A4h], eax
		lea	eax, [ebp-10Ch]
		mov	ebx, [ecx]
		push	eax
		push	ebx
		mov	edx, [ebx]
		call	dword ptr [edx+80h]
		test	eax, eax
		fnclex
		jge	short loc_408EC5
		push	80h
		push	offset dword_4048C8
		push	ebx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_408EC5:				; CODE XREF: .text:00408EB1j
		fld	dword ptr [ebp-10Ch]
		call	esi ; __vbaFpI4
		mov	ecx, [ebp+0Ch]
		mov	ebx, eax
		mov	eax, [ecx]
		lea	ecx, [ebp-110h]
		push	ecx
		push	eax
		mov	edx, [eax]
		mov	[ebp-130h], eax
		call	dword ptr [edx+88h]
		test	eax, eax
		fnclex
		jge	short loc_408F08
		mov	edx, [ebp-130h]
		push	88h
		push	offset dword_4048C8
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_408F08:				; CODE XREF: .text:00408EEEj
		fld	dword ptr [ebp-110h]
		call	esi ; __vbaFpI4
		sub	esp, 10h
		mov	ecx, 3
		mov	esi, esp
		mov	edx, ecx
		sub	esp, 10h
		mov	[esi], edx
		mov	edx, [ebp-68h]
		mov	[esi+4], edx
		mov	edx, [ebp-64h]
		mov	[esi+8], edx
		mov	edx, [ebp-60h]
		mov	[esi+0Ch], edx
		mov	esi, esp
		mov	edx, ecx
		sub	esp, 10h
		mov	[esi], edx
		mov	edx, [ebp-88h]
		mov	[esi+4], edx
		mov	edx, [ebp-84h]
		mov	[esi+8], edx
		mov	edx, [ebp-80h]
		mov	[esi+0Ch], edx
		mov	esi, esp
		mov	edx, ecx
		sub	esp, 10h
		mov	[esi], edx
		mov	edx, [ebp-0A8h]
		mov	[esi+4], edx
		mov	edx, [ebp-0A4h]
		mov	[esi+8], edx
		mov	edx, [ebp-0A0h]
		mov	[esi+0Ch], edx
		mov	esi, esp
		mov	edx, ecx
		sub	esp, 10h
		mov	[esi], edx
		mov	edx, [ebp-0C8h]
		mov	[esi+4], edx
		mov	edx, [ebp-0C0h]
		mov	[esi+8], ebx
		mov	[esi+0Ch], edx
		mov	edx, esp
		push	5
		push	1
		mov	[edx], ecx
		mov	ecx, [ebp-0E8h]
		push	offset dword_4048D8
		push	0
		mov	[edx+4], ecx
		mov	ecx, [edi]
		push	0E0h
		push	edi
		mov	[edx+8], eax
		mov	eax, [ebp-0E0h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		mov	esi, ds:__vbaObjSet
		lea	edx, [ebp-38h]
		push	eax
		push	edx
		call	esi ; __vbaObjSet
		mov	ebx, ds:__vbaLateIdCallLd
		push	eax
		lea	eax, [ebp-4Ch]
		push	eax
		call	ebx ; __vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-3Ch]
		push	eax
		push	ecx
		call	esi ; __vbaObjSet
		lea	edx, [ebp-5Ch]
		push	eax
		push	edx
		call	ebx ; __vbaLateIdCallLd
		add	esp, 60h
		push	eax
		call	ds:__vbaI4Var
		mov	[ebp-34h], eax
		lea	eax, [ebp-3Ch]
		lea	ecx, [ebp-38h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeObjList
		lea	edx, [ebp-5Ch]
		lea	eax, [ebp-4Ch]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeVarList
		add	esp, 8
		mov	ecx, 4003h
		mov	edx, esp
		lea	eax, [ebp-34h]
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, [ebp-68h]
		mov	[edx+4], ecx
		mov	ecx, esp
		sub	esp, 10h
		mov	[edx+8], eax
		mov	eax, [ebp-60h]
		mov	[edx+0Ch], eax
		mov	edx, [ebp-78h]
		mov	eax, 3
		mov	[ecx], eax
		xor	eax, eax
		mov	[ecx+4], edx
		mov	edx, [ebp-98h]
		mov	[ecx+8], eax
		mov	eax, [ebp-70h]
		mov	[ecx+0Ch], eax
		mov	ecx, esp
		mov	eax, 3
		push	3
		mov	[ecx], eax
		mov	eax, 7FFFh
		push	7
		push	offset dword_4048D8
		mov	[ecx+4], edx
		push	0
		push	0E0h
		push	edi
		mov	[ecx+8], eax
		mov	eax, [ebp-90h]
		mov	[ecx+0Ch], eax
		mov	ecx, [edi]
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-38h]
		push	eax
		push	edx
		call	esi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-4Ch]
		push	eax
		call	ebx ; __vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-3Ch]
		push	eax
		push	ecx
		call	esi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	edx, [ebp-3Ch]
		lea	eax, [ebp-38h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 48h
		lea	ecx, [ebp-4Ch]
		call	ds:__vbaFreeVar
		lea	ecx, [ebp-30h]
		push	ecx
		call	ds:VarPtr
		sub	esp, 10h
		mov	ecx, 4003h
		mov	edx, esp
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, [ebp-68h]
		mov	[edx+4], ecx
		lea	ecx, [ebp-34h]
		mov	[edx+8], ecx
		mov	ecx, [ebp-60h]
		mov	[edx+0Ch], ecx
		mov	edx, esp
		mov	ecx, 3
		push	2
		mov	[edx], ecx
		mov	ecx, [ebp-78h]
		push	0Ah
		push	offset dword_4048D8
		mov	[edx+4], ecx
		mov	ecx, [edi]
		push	0
		push	0E0h
		mov	[edx+8], eax
		mov	eax, [ebp-70h]
		push	edi
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-38h]
		push	eax
		push	edx
		call	esi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-4Ch]
		push	eax
		call	ebx ; __vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-3Ch]
		push	eax
		push	ecx
		call	esi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	edx, [ebp-3Ch]
		lea	eax, [ebp-38h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 38h
		lea	ecx, [ebp-4Ch]
		call	ds:__vbaFreeVar
		lea	ecx, [ebp-30h]
		mov	dword ptr [ebp-30h], 0
		push	ecx
		mov	dword ptr [ebp-6Ch], 4003h
		call	ds:VarPtr
		mov	ecx, [ebp-6Ch]
		sub	esp, 10h
		mov	edx, esp
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, [ebp-68h]
		mov	[edx+4], ecx
		lea	ecx, [ebp-34h]
		mov	[edx+8], ecx
		mov	ecx, [ebp-60h]
		mov	[edx+0Ch], ecx
		mov	edx, esp
		mov	ecx, 3
		push	2
		mov	[edx], ecx
		mov	ecx, [ebp-78h]
		push	0Bh
		push	offset dword_4048D8
		mov	[edx+4], ecx
		push	0
		mov	[edx+8], eax
		mov	eax, [ebp-70h]
		mov	[edx+0Ch], eax
		mov	ecx, [edi]
		push	0E0h
		push	edi
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-38h]
		push	eax
		push	edx
		call	esi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-4Ch]
		push	eax
		call	ebx ; __vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-3Ch]
		push	eax
		push	ecx
		call	esi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	edx, [ebp-3Ch]
		lea	eax, [ebp-38h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 38h
		lea	ecx, [ebp-4Ch]
		call	ds:__vbaFreeVar
		mov	ecx, [ebp-34h]
		push	offset loc_40925E
		mov	[ebp-14h], ecx
		wait
		jmp	short locret_40925D
; ---------------------------------------------------------------------------

loc_409239:				; DATA XREF: .text:0040110Co
		lea	edx, [ebp-3Ch]
		lea	eax, [ebp-38h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeObjList
		lea	ecx, [ebp-5Ch]
		lea	edx, [ebp-4Ch]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeVarList
		add	esp, 18h
		retn
; ---------------------------------------------------------------------------

locret_40925D:				; CODE XREF: .text:00409237j
		retn
; ---------------------------------------------------------------------------

loc_40925E:				; DATA XREF: .text:0040922Eo
		mov	eax, [ebp+10h]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	[eax], ecx
		mov	ecx, [ebp-10h]
		xor	eax, eax
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	0Ch
; ---------------------------------------------------------------------------
		align 10h

loc_409280:				; CODE XREF: .text:004087C5j
		push	ebp
		mov	ebp, esp
		sub	esp, 8
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 0CCh
		push	ebx
		push	esi
		push	edi
		mov	[ebp-8], esp
		mov	dword ptr [ebp-4], offset dword_401110
		mov	ebx, [ebp-38h]
		sub	esp, 10h
		mov	esi, [ebp+8]
		mov	edx, esp
		mov	ecx, 2
		xor	eax, eax
		mov	[edx], ecx
		mov	ecx, [esi]
		mov	[ebp-18h], eax
		mov	[ebp-1Ch], eax
		mov	[edx+4], ebx
		mov	[ebp-2Ch], eax
		mov	[ebp-5Ch], eax
		mov	[ebp-7Ch], eax
		mov	[ebp-9Ch], eax
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		push	1
		push	1Eh
		push	esi
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		mov	edi, ds:__vbaObjSet
		lea	edx, [ebp-18h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-2Ch]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 20h
		push	eax
		call	ds:__vbaI4Var
		neg	eax
		sbb	eax, eax
		lea	ecx, [ebp-18h]
		inc	eax
		neg	eax
		mov	[ebp-0B0h], eax
		call	ds:__vbaFreeObj
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeVar
		cmp	word ptr [ebp-0B0h], 0
		jnz	loc_40A5BC
		sub	esp, 10h
		mov	ecx, 0Bh
		mov	edx, esp
		or	eax, 0FFFFFFFFh
		push	80010007h
		push	esi
		mov	[edx], ecx
		mov	ecx, [esi]
		mov	[edx+4], ebx
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+42Ch]
		lea	edx, [ebp-18h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdSt
		lea	ecx, [ebp-18h]
		call	ds:__vbaFreeObj
		sub	esp, 10h
		mov	ecx, 0Bh
		mov	edx, esp
		or	eax, 0FFFFFFFFh
		push	80010007h
		push	esi
		mov	[edx], ecx
		mov	ecx, [esi]
		mov	[edx+4], ebx
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+440h]
		lea	edx, [ebp-18h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdSt
		lea	ecx, [ebp-18h]
		call	ds:__vbaFreeObj
		sub	esp, 10h
		mov	ecx, 0Bh
		mov	edx, esp
		or	eax, 0FFFFFFFFh
		push	80010007h
		push	esi
		mov	[edx], ecx
		mov	ecx, [esi]
		mov	[edx+4], ebx
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+438h]
		lea	edx, [ebp-18h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdSt
		lea	ecx, [ebp-18h]
		call	ds:__vbaFreeObj
		sub	esp, 10h
		mov	ecx, 0Bh
		mov	edx, esp
		or	eax, 0FFFFFFFFh
		push	80010007h
		push	esi
		mov	[edx], ecx
		mov	ecx, [esi]
		mov	[edx+4], ebx
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+43Ch]
		lea	edx, [ebp-18h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdSt
		lea	ecx, [ebp-18h]
		call	ds:__vbaFreeObj
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		push	1
		push	69h
		mov	[edx], ecx
		mov	ecx, [esi]
		push	esi
		mov	[edx+4], ebx
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-18h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		add	esp, 1Ch
		lea	ecx, [ebp-18h]
		call	ds:__vbaFreeObj
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		push	1
		push	70h
		mov	[edx], ecx
		mov	ecx, [esi]
		push	esi
		mov	[edx+4], ebx
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-18h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-2Ch]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 20h
		push	eax
		call	ds:__vbaI4Var
		lea	ecx, [ebp-18h]
		mov	[ebp-14h], eax
		call	ds:__vbaFreeObj
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeVar
		mov	eax, [ebp-14h]
		cmp	eax, 2B11h
		jg	loc_4095A6
		sub	esp, 10h
		mov	ecx, 0Bh
		mov	edx, esp
		xor	eax, eax
		push	80010007h
		push	esi
		mov	[edx], ecx
		mov	ecx, [esi]
		mov	[edx+4], ebx
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+42Ch]
		lea	edx, [ebp-18h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdSt
		lea	ecx, [ebp-18h]
		call	ds:__vbaFreeObj
		sub	esp, 10h
		mov	ecx, 0Bh
		mov	edx, esp
		xor	eax, eax
		push	80010007h
		push	esi
		mov	[edx], ecx
		mov	ecx, [esi]
		mov	[edx+4], ebx
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+440h]
		lea	edx, [ebp-18h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdSt
		lea	ecx, [ebp-18h]
		call	ds:__vbaFreeObj
		sub	esp, 10h
		mov	ecx, 0Bh
		mov	edx, esp
		xor	eax, eax
		push	80010007h
		push	esi
		mov	[edx], ecx
		mov	ecx, [esi]
		mov	[edx+4], ebx
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+438h]
		lea	edx, [ebp-18h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdSt
		lea	ecx, [ebp-18h]
		call	ds:__vbaFreeObj
		jmp	loc_409638
; ---------------------------------------------------------------------------

loc_4095A6:				; CODE XREF: .text:004094DEj
		cmp	eax, 7D00h
		jg	loc_409631
		sub	esp, 10h
		mov	ecx, 0Bh
		mov	edx, esp
		xor	eax, eax
		push	80010007h
		push	esi
		mov	[edx], ecx
		mov	ecx, [esi]
		mov	[edx+4], ebx
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+440h]
		lea	edx, [ebp-18h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdSt
		lea	ecx, [ebp-18h]
		call	ds:__vbaFreeObj
		sub	esp, 10h
		mov	ecx, 0Bh
		mov	edx, esp
		xor	eax, eax
		push	80010007h
		push	esi
		mov	[edx], ecx
		mov	ecx, [esi]
		mov	[edx+4], ebx
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+438h]
		lea	edx, [ebp-18h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdSt
		lea	ecx, [ebp-18h]
		call	ds:__vbaFreeObj
		jmp	short loc_409638
; ---------------------------------------------------------------------------

loc_409631:				; CODE XREF: .text:004095ABj
		cmp	eax, 0AC44h
		jg	short loc_409677

loc_409638:				; CODE XREF: .text:004095A1j
					; .text:0040962Fj
		sub	esp, 10h
		mov	ecx, 0Bh
		mov	edx, esp
		xor	eax, eax
		push	80010007h
		push	esi
		mov	[edx], ecx
		mov	ecx, [esi]
		mov	[edx+4], ebx
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+43Ch]
		lea	edx, [ebp-18h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdSt
		lea	ecx, [ebp-18h]
		call	ds:__vbaFreeObj

loc_409677:				; CODE XREF: .text:00409636j
		xor	eax, eax
		cmp	[esi+44h], ax
		jnz	loc_40A5B3
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		mov	[ebp-94h], eax
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, esp
		sub	esp, 10h
		mov	[edx+4], ebx
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		mov	[edx+0Ch], eax
		mov	edx, [ebp-58h]
		mov	eax, 4
		mov	[ecx], eax
		mov	eax, 42A00000h
		mov	[ecx+4], edx
		mov	edx, [ebp-78h]
		mov	[ecx+8], eax
		mov	eax, [ebp-50h]
		mov	[ecx+0Ch], eax
		mov	ecx, esp
		mov	eax, 4
		sub	esp, 10h
		mov	[ecx], eax
		mov	eax, 41400000h
		mov	[ecx+4], edx
		mov	edx, [ebp-98h]
		mov	[ecx+8], eax
		mov	eax, [ebp-70h]
		mov	[ecx+0Ch], eax
		mov	ecx, esp
		mov	eax, 4
		push	4
		mov	[ecx], eax
		mov	eax, [ebp-94h]
		push	0C6h
		push	esi
		mov	[ecx+4], edx
		mov	edx, [ebp-90h]
		mov	[ecx+8], eax
		mov	eax, [esi]
		mov	[ecx+0Ch], edx
		call	dword ptr [eax+448h]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		add	esp, 4Ch
		lea	ecx, [ebp-18h]
		call	ds:__vbaFreeObj
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		mov	[ebp-94h], eax
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, esp
		sub	esp, 10h
		mov	[edx+4], ebx
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		mov	[edx+0Ch], eax
		mov	edx, [ebp-58h]
		mov	eax, 4
		mov	[ecx], eax
		mov	eax, 432A0000h
		mov	[ecx+4], edx
		mov	edx, [ebp-78h]
		mov	[ecx+8], eax
		mov	eax, [ebp-50h]
		mov	[ecx+0Ch], eax
		mov	ecx, esp
		mov	eax, 4
		mov	[ecx], eax
		mov	eax, 41400000h
		mov	[ecx+4], edx
		mov	[ecx+8], eax
		mov	eax, [ebp-70h]
		mov	edx, [ebp-98h]
		sub	esp, 10h
		mov	[ecx+0Ch], eax
		mov	ecx, esp
		mov	eax, 4
		push	4
		push	0C6h
		mov	[ecx], eax
		mov	eax, [ebp-94h]
		push	esi
		mov	[ecx+4], edx
		mov	edx, [ebp-90h]
		mov	[ecx+8], eax
		mov	eax, [esi]
		mov	[ecx+0Ch], edx
		call	dword ptr [eax+448h]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		add	esp, 4Ch
		lea	ecx, [ebp-18h]
		call	ds:__vbaFreeObj
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		mov	[ebp-94h], eax
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, esp
		sub	esp, 10h
		mov	[edx+4], ebx
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		mov	[edx+0Ch], eax
		mov	edx, [ebp-58h]
		mov	eax, 4
		mov	[ecx], eax
		mov	eax, 439B0000h
		mov	[ecx+4], edx
		mov	edx, [ebp-78h]
		mov	[ecx+8], eax
		mov	eax, [ebp-50h]
		mov	[ecx+0Ch], eax
		mov	ecx, esp
		mov	eax, 4
		sub	esp, 10h
		mov	[ecx], eax
		mov	eax, 41400000h
		mov	[ecx+4], edx
		mov	edx, [ebp-98h]
		mov	[ecx+8], eax
		mov	eax, [ebp-70h]
		mov	[ecx+0Ch], eax
		mov	ecx, esp
		mov	eax, 4
		push	4
		mov	[ecx], eax
		mov	eax, [ebp-94h]
		push	0C6h
		push	esi
		mov	[ecx+4], edx
		mov	edx, [ebp-90h]
		mov	[ecx+8], eax
		mov	eax, [esi]
		mov	[ecx+0Ch], edx
		call	dword ptr [eax+448h]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		add	esp, 4Ch
		lea	ecx, [ebp-18h]
		call	ds:__vbaFreeObj
		xor	eax, eax
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		mov	[ebp-94h], eax
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, esp
		sub	esp, 10h
		mov	[edx+4], ebx
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		mov	[edx+0Ch], eax
		mov	edx, [ebp-58h]
		mov	eax, 4
		mov	[ecx], eax
		mov	eax, 44160000h
		mov	[ecx+4], edx
		mov	edx, [ebp-78h]
		mov	[ecx+8], eax
		mov	eax, [ebp-50h]
		mov	[ecx+0Ch], eax
		mov	ecx, esp
		mov	eax, 4
		sub	esp, 10h
		mov	[ecx], eax
		mov	eax, 41400000h
		mov	[ecx+4], edx
		mov	edx, [ebp-98h]
		mov	[ecx+8], eax
		mov	eax, [ebp-70h]
		mov	[ecx+0Ch], eax
		mov	ecx, esp
		mov	eax, 4
		push	4
		mov	[ecx], eax
		mov	eax, [ebp-94h]
		push	0C6h
		push	esi
		mov	[ecx+4], edx
		mov	edx, [ebp-90h]
		mov	[ecx+8], eax
		mov	eax, [esi]
		mov	[ecx+0Ch], edx
		call	dword ptr [eax+448h]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		add	esp, 4Ch
		lea	ecx, [ebp-18h]
		call	ds:__vbaFreeObj
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		mov	[ebp-94h], eax
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, esp
		sub	esp, 10h
		mov	[edx+4], ebx
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		mov	[edx+0Ch], eax
		mov	edx, [ebp-58h]
		mov	eax, 4
		mov	[ecx], eax
		mov	eax, 447A0000h
		mov	[ecx+4], edx
		mov	edx, [ebp-78h]
		mov	[ecx+8], eax
		mov	eax, [ebp-50h]
		mov	[ecx+0Ch], eax
		mov	ecx, esp
		mov	eax, 4
		mov	[ecx], eax
		mov	eax, 41400000h
		mov	[ecx+4], edx
		mov	[ecx+8], eax
		mov	eax, [ebp-70h]
		mov	edx, [ebp-98h]
		sub	esp, 10h
		mov	[ecx+0Ch], eax
		mov	ecx, esp
		mov	eax, 4
		push	4
		push	0C6h
		mov	[ecx], eax
		mov	eax, [ebp-94h]
		push	esi
		mov	[ecx+4], edx
		mov	edx, [ebp-90h]
		mov	[ecx+8], eax
		mov	eax, [esi]
		mov	[ecx+0Ch], edx
		call	dword ptr [eax+448h]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		add	esp, 4Ch
		lea	ecx, [ebp-18h]
		call	ds:__vbaFreeObj
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		mov	[ebp-94h], eax
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, esp
		sub	esp, 10h
		mov	[edx+4], ebx
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		mov	[edx+0Ch], eax
		mov	edx, [ebp-58h]
		mov	eax, 4
		mov	[ecx], eax
		mov	eax, 453B8000h
		mov	[ecx+4], edx
		mov	edx, [ebp-78h]
		mov	[ecx+8], eax
		mov	eax, [ebp-50h]
		mov	[ecx+0Ch], eax
		mov	ecx, esp
		mov	eax, 4
		sub	esp, 10h
		mov	[ecx], eax
		mov	eax, 41400000h
		mov	[ecx+4], edx
		mov	edx, [ebp-98h]
		mov	[ecx+8], eax
		mov	eax, [ebp-70h]
		mov	[ecx+0Ch], eax
		mov	ecx, esp
		mov	eax, 4
		push	4
		mov	[ecx], eax
		mov	eax, [ebp-94h]
		push	0C6h
		push	esi
		mov	[ecx+4], edx
		mov	edx, [ebp-90h]
		mov	[ecx+8], eax
		mov	eax, [esi]
		mov	[ecx+0Ch], edx
		call	dword ptr [eax+448h]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		add	esp, 4Ch
		lea	ecx, [ebp-18h]
		call	ds:__vbaFreeObj
		xor	eax, eax
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		mov	[ebp-94h], eax
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, esp
		sub	esp, 10h
		mov	[edx+4], ebx
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		mov	[edx+0Ch], eax
		mov	edx, [ebp-58h]
		mov	eax, 4
		mov	[ecx], eax
		mov	eax, 45BB8000h
		mov	[ecx+4], edx
		mov	edx, [ebp-78h]
		mov	[ecx+8], eax
		mov	eax, [ebp-50h]
		mov	[ecx+0Ch], eax
		mov	ecx, esp
		mov	eax, 4
		sub	esp, 10h
		mov	[ecx], eax
		mov	eax, 41400000h
		mov	[ecx+4], edx
		mov	edx, [ebp-98h]
		mov	[ecx+8], eax
		mov	eax, [ebp-70h]
		mov	[ecx+0Ch], eax
		mov	ecx, esp
		mov	eax, 4
		push	4
		mov	[ecx], eax
		mov	eax, [ebp-94h]
		push	0C6h
		push	esi
		mov	[ecx+4], edx
		mov	edx, [ebp-90h]
		mov	[ecx+8], eax
		mov	eax, [esi]
		mov	[ecx+0Ch], edx
		call	dword ptr [eax+448h]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		add	esp, 4Ch
		lea	ecx, [ebp-18h]
		call	ds:__vbaFreeObj
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		mov	[ebp-94h], eax
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, esp
		sub	esp, 10h
		mov	[edx+4], ebx
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		mov	[edx+0Ch], eax
		mov	edx, [ebp-58h]
		mov	eax, 4
		mov	[ecx], eax
		mov	eax, 463B8000h
		mov	[ecx+4], edx
		mov	edx, [ebp-78h]
		mov	[ecx+8], eax
		mov	eax, [ebp-50h]
		mov	[ecx+0Ch], eax
		mov	ecx, esp
		mov	eax, 4
		mov	[ecx], eax
		mov	eax, 41400000h
		mov	[ecx+4], edx
		mov	[ecx+8], eax
		mov	eax, [ebp-70h]
		mov	edx, [ebp-98h]
		sub	esp, 10h
		mov	[ecx+0Ch], eax
		mov	ecx, esp
		mov	eax, 4
		push	4
		push	0C6h
		mov	[ecx], eax
		mov	eax, [ebp-94h]
		push	esi
		mov	[ecx+4], edx
		mov	edx, [ebp-90h]
		mov	[ecx+8], eax
		mov	eax, [esi]
		mov	[ecx+0Ch], edx
		call	dword ptr [eax+448h]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		add	esp, 4Ch
		lea	ecx, [ebp-18h]
		call	ds:__vbaFreeObj
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		mov	[ebp-94h], eax
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, esp
		sub	esp, 10h
		mov	[edx+4], ebx
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		mov	[edx+0Ch], eax
		mov	edx, [ebp-58h]
		mov	eax, 4
		mov	[ecx], eax
		mov	eax, 465AC000h
		mov	[ecx+4], edx
		mov	edx, [ebp-78h]
		mov	[ecx+8], eax
		mov	eax, [ebp-50h]
		mov	[ecx+0Ch], eax
		mov	ecx, esp
		mov	eax, 4
		sub	esp, 10h
		mov	[ecx], eax
		mov	eax, 41400000h
		mov	[ecx+4], edx
		mov	edx, [ebp-98h]
		mov	[ecx+8], eax
		mov	eax, [ebp-70h]
		mov	[ecx+0Ch], eax
		mov	ecx, esp
		mov	eax, 4
		push	4
		mov	[ecx], eax
		mov	eax, [ebp-94h]
		push	0C6h
		push	esi
		mov	[ecx+4], edx
		mov	edx, [ebp-90h]
		mov	[ecx+8], eax
		mov	eax, [esi]
		mov	[ecx+0Ch], edx
		call	dword ptr [eax+448h]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		add	esp, 4Ch
		lea	ecx, [ebp-18h]
		call	ds:__vbaFreeObj
		xor	eax, eax
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		mov	[ebp-94h], eax
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, esp
		sub	esp, 10h
		mov	[edx+4], ebx
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		mov	[edx+0Ch], eax
		mov	edx, [ebp-58h]
		mov	eax, 4
		mov	[ecx], eax
		mov	eax, 467A0000h
		mov	[ecx+4], edx
		mov	edx, [ebp-78h]
		mov	[ecx+8], eax
		mov	eax, [ebp-50h]
		mov	[ecx+0Ch], eax
		mov	ecx, esp
		mov	eax, 4
		sub	esp, 10h
		mov	[ecx], eax
		mov	eax, 41400000h
		mov	[ecx+4], edx
		mov	edx, [ebp-98h]
		mov	[ecx+8], eax
		mov	eax, [ebp-70h]
		mov	[ecx+0Ch], eax
		mov	ecx, esp
		mov	eax, 4
		push	4
		mov	[ecx], eax
		mov	eax, [ebp-94h]
		push	0C6h
		push	esi
		mov	[ecx+4], edx
		mov	edx, [ebp-90h]
		mov	[ecx+8], eax
		mov	eax, [esi]
		mov	[ecx+0Ch], edx
		call	dword ptr [eax+448h]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		add	esp, 4Ch
		lea	ecx, [ebp-18h]
		call	ds:__vbaFreeObj
		mov	edx, [esi]
		push	0
		push	0Bh
		push	esi
		mov	dword ptr [ebp-54h], 42A00000h
		call	dword ptr [edx+41Ch]
		push	eax
		lea	eax, [ebp-18h]
		push	eax
		call	edi ; __vbaObjSet
		lea	ecx, [ebp-2Ch]
		push	eax
		push	ecx
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaI4Var
		neg	eax
		jo	loc_40A5F7
		sub	esp, 10h
		mov	[ebp-0B8h], eax
		fild	dword ptr [ebp-0B8h]
		mov	edx, esp
		mov	eax, 2
		mov	ecx, 4
		fstp	dword ptr [ebp-74h]
		mov	[edx], eax
		mov	[edx+4], ebx
		xor	eax, eax
		sub	esp, 10h
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		mov	[edx+0Ch], eax
		mov	edx, esp
		mov	eax, ecx
		sub	esp, 10h
		mov	[edx], eax
		mov	eax, [ebp-58h]
		mov	[edx+4], eax
		mov	eax, [ebp-54h]
		mov	[edx+8], eax
		mov	eax, [ebp-50h]
		mov	[edx+0Ch], eax
		mov	eax, [ebp-78h]
		mov	edx, esp
		push	3
		push	0C7h
		push	esi
		mov	[edx], ecx
		mov	ecx, [ebp-74h]
		mov	[edx+4], eax
		mov	eax, [ebp-70h]
		mov	[edx+8], ecx
		mov	ecx, [esi]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	eax, [ebp-1Ch]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 48h
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeVar
		mov	edx, [esi]
		push	0
		push	0Bh
		push	esi
		mov	dword ptr [ebp-54h], 432A0000h
		call	dword ptr [edx+434h]
		push	eax
		lea	eax, [ebp-18h]
		push	eax
		call	edi ; __vbaObjSet
		lea	ecx, [ebp-2Ch]
		push	eax
		push	ecx
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaI4Var
		neg	eax
		jo	loc_40A5F7
		sub	esp, 10h
		mov	[ebp-0BCh], eax
		mov	edx, esp
		mov	eax, 2
		fild	dword ptr [ebp-0BCh]
		mov	[edx], eax
		xor	eax, eax
		sub	esp, 10h
		mov	ecx, 4
		mov	[edx+4], ebx
		fstp	dword ptr [ebp-74h]
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		mov	[edx+0Ch], eax
		mov	edx, esp
		mov	eax, ecx
		mov	[edx], eax
		mov	eax, [ebp-58h]
		mov	[edx+4], eax
		mov	eax, [ebp-54h]
		sub	esp, 10h
		mov	[edx+8], eax
		mov	eax, [ebp-50h]
		mov	[edx+0Ch], eax
		mov	eax, [ebp-78h]
		mov	edx, esp
		push	3
		push	0C7h
		push	esi
		mov	[edx], ecx
		mov	ecx, [ebp-74h]
		mov	[edx+4], eax
		mov	eax, [ebp-70h]
		mov	[edx+8], ecx
		mov	ecx, [esi]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	eax, [ebp-1Ch]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 48h
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeVar
		mov	edx, [esi]
		push	0
		push	0Bh
		push	esi
		mov	dword ptr [ebp-54h], 439B0000h
		call	dword ptr [edx+420h]
		push	eax
		lea	eax, [ebp-18h]
		push	eax
		call	edi ; __vbaObjSet
		lea	ecx, [ebp-2Ch]
		push	eax
		push	ecx
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaI4Var
		neg	eax
		jo	loc_40A5F7
		sub	esp, 10h
		mov	[ebp-0C0h], eax
		mov	edx, esp
		mov	eax, 2
		sub	esp, 10h
		mov	ecx, 4
		mov	[edx], eax
		xor	eax, eax
		fild	dword ptr [ebp-0C0h]
		mov	[edx+4], ebx
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		fstp	dword ptr [ebp-74h]
		mov	[edx+0Ch], eax
		mov	edx, esp
		mov	eax, ecx
		sub	esp, 10h
		mov	[edx], eax
		mov	eax, [ebp-58h]
		mov	[edx+4], eax
		mov	eax, [ebp-54h]
		mov	[edx+8], eax
		mov	eax, [ebp-50h]
		mov	[edx+0Ch], eax
		mov	eax, [ebp-78h]
		mov	edx, esp
		mov	[edx], ecx
		mov	ecx, [ebp-74h]
		mov	[edx+4], eax
		mov	eax, [ebp-70h]
		mov	[edx+8], ecx
		mov	ecx, [esi]
		push	3
		push	0C7h
		push	esi
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	eax, [ebp-1Ch]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 48h
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeVar
		mov	edx, [esi]
		push	0
		push	0Bh
		push	esi
		mov	dword ptr [ebp-54h], 44160000h
		call	dword ptr [edx+430h]
		push	eax
		lea	eax, [ebp-18h]
		push	eax
		call	edi ; __vbaObjSet
		lea	ecx, [ebp-2Ch]
		push	eax
		push	ecx
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaI4Var
		neg	eax
		jo	loc_40A5F7
		sub	esp, 10h
		mov	[ebp-0C4h], eax
		mov	edx, esp
		mov	eax, 2
		sub	esp, 10h
		mov	ecx, 4
		mov	[edx], eax
		xor	eax, eax
		fild	dword ptr [ebp-0C4h]
		mov	[edx+4], ebx
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		fstp	dword ptr [ebp-74h]
		mov	[edx+0Ch], eax
		mov	edx, esp
		mov	eax, ecx
		sub	esp, 10h
		mov	[edx], eax
		mov	eax, [ebp-58h]
		mov	[edx+4], eax
		mov	eax, [ebp-54h]
		mov	[edx+8], eax
		mov	eax, [ebp-50h]
		mov	[edx+0Ch], eax
		mov	eax, [ebp-78h]
		mov	edx, esp
		push	3
		push	0C7h
		push	esi
		mov	[edx], ecx
		mov	ecx, [ebp-74h]
		mov	[edx+4], eax
		mov	eax, [ebp-70h]
		mov	[edx+8], ecx
		mov	ecx, [esi]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		push	eax
		lea	edx, [ebp-1Ch]
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	eax, [ebp-1Ch]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 48h
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeVar
		mov	edx, [esi]
		push	0
		push	0Bh
		push	esi
		mov	dword ptr [ebp-54h], 447A0000h
		call	dword ptr [edx+424h]
		push	eax
		lea	eax, [ebp-18h]
		push	eax
		call	edi ; __vbaObjSet
		lea	ecx, [ebp-2Ch]
		push	eax
		push	ecx
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaI4Var
		neg	eax
		jo	loc_40A5F7
		sub	esp, 10h
		mov	[ebp-0C8h], eax
		mov	edx, esp
		mov	eax, 2
		sub	esp, 10h
		mov	ecx, 4
		mov	[edx], eax
		xor	eax, eax
		fild	dword ptr [ebp-0C8h]
		mov	[edx+4], ebx
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		fstp	dword ptr [ebp-74h]
		mov	[edx+0Ch], eax
		mov	edx, esp
		mov	eax, ecx
		sub	esp, 10h
		mov	[edx], eax
		mov	eax, [ebp-58h]
		mov	[edx+4], eax
		mov	eax, [ebp-54h]
		mov	[edx+8], eax
		mov	eax, [ebp-50h]
		mov	[edx+0Ch], eax
		mov	eax, [ebp-78h]
		mov	edx, esp
		push	3
		push	0C7h
		push	esi
		mov	[edx], ecx
		mov	ecx, [ebp-74h]
		mov	[edx+4], eax
		mov	eax, [ebp-70h]
		mov	[edx+8], ecx
		mov	ecx, [esi]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	eax, [ebp-1Ch]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 48h
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeVar
		mov	edx, [esi]
		push	0
		push	0Bh
		push	esi
		mov	dword ptr [ebp-54h], 453B8000h
		call	dword ptr [edx+428h]
		push	eax
		lea	eax, [ebp-18h]
		push	eax
		call	edi ; __vbaObjSet
		lea	ecx, [ebp-2Ch]
		push	eax
		push	ecx
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaI4Var
		neg	eax
		jo	loc_40A5F7
		sub	esp, 10h
		mov	[ebp-0CCh], eax
		mov	edx, esp
		mov	eax, 2
		sub	esp, 10h
		mov	ecx, 4
		mov	[edx], eax
		xor	eax, eax
		fild	dword ptr [ebp-0CCh]
		mov	[edx+4], ebx
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		fstp	dword ptr [ebp-74h]
		mov	[edx+0Ch], eax
		mov	edx, esp
		mov	eax, ecx
		sub	esp, 10h
		mov	[edx], eax
		mov	eax, [ebp-58h]
		mov	[edx+4], eax
		mov	eax, [ebp-54h]
		mov	[edx+8], eax
		mov	eax, [ebp-50h]
		mov	[edx+0Ch], eax
		mov	eax, [ebp-78h]
		mov	edx, esp
		push	3
		push	0C7h
		push	esi
		mov	[edx], ecx
		mov	ecx, [ebp-74h]
		mov	[edx+4], eax
		mov	eax, [ebp-70h]
		mov	[edx+8], ecx
		mov	ecx, [esi]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	eax, [ebp-1Ch]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 48h
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeVar
		mov	edx, [esi]
		push	0
		push	0Bh
		push	esi
		mov	dword ptr [ebp-54h], 45BB8000h
		call	dword ptr [edx+42Ch]
		push	eax
		lea	eax, [ebp-18h]
		push	eax
		call	edi ; __vbaObjSet
		lea	ecx, [ebp-2Ch]
		push	eax
		push	ecx
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaI4Var
		neg	eax
		jo	loc_40A5F7
		sub	esp, 10h
		mov	[ebp-0D0h], eax
		mov	edx, esp
		mov	eax, 2
		sub	esp, 10h
		mov	ecx, 4
		mov	[edx], eax
		xor	eax, eax
		fild	dword ptr [ebp-0D0h]
		mov	[edx+4], ebx
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		fstp	dword ptr [ebp-74h]
		mov	[edx+0Ch], eax
		mov	edx, esp
		mov	eax, ecx
		sub	esp, 10h
		mov	[edx], eax
		mov	eax, [ebp-58h]
		mov	[edx+4], eax
		mov	eax, [ebp-54h]
		mov	[edx+8], eax
		mov	eax, [ebp-50h]
		mov	[edx+0Ch], eax
		mov	eax, [ebp-78h]
		mov	edx, esp
		push	3
		push	0C7h
		push	esi
		mov	[edx], ecx
		mov	ecx, [ebp-74h]
		mov	[edx+4], eax
		mov	eax, [ebp-70h]
		mov	[edx+8], ecx
		mov	ecx, [esi]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	eax, [ebp-1Ch]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 48h
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeVar
		mov	edx, [esi]
		push	0
		push	0Bh
		push	esi
		mov	dword ptr [ebp-54h], 463B8000h
		call	dword ptr [edx+440h]
		push	eax
		lea	eax, [ebp-18h]
		push	eax
		call	edi ; __vbaObjSet
		lea	ecx, [ebp-2Ch]
		push	eax
		push	ecx
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaI4Var
		neg	eax
		jo	loc_40A5F7
		sub	esp, 10h
		mov	[ebp-0D4h], eax
		mov	edx, esp
		mov	eax, 2
		sub	esp, 10h
		mov	ecx, 4
		mov	[edx], eax
		xor	eax, eax
		fild	dword ptr [ebp-0D4h]
		mov	[edx+4], ebx
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		fstp	dword ptr [ebp-74h]
		mov	[edx+0Ch], eax
		mov	edx, esp
		mov	eax, ecx
		sub	esp, 10h
		mov	[edx], eax
		mov	eax, [ebp-58h]
		mov	[edx+4], eax
		mov	eax, [ebp-54h]
		mov	[edx+8], eax
		mov	eax, [ebp-50h]
		mov	[edx+0Ch], eax
		mov	eax, [ebp-78h]
		mov	edx, esp
		push	3
		push	0C7h
		push	esi
		mov	[edx], ecx
		mov	ecx, [ebp-74h]
		mov	[edx+4], eax
		mov	eax, [ebp-70h]
		mov	[edx+8], ecx
		mov	ecx, [esi]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	eax, [ebp-1Ch]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 48h
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeVar
		mov	edx, [esi]
		push	0
		push	0Bh
		push	esi
		mov	dword ptr [ebp-54h], 465AC000h
		call	dword ptr [edx+438h]
		push	eax
		lea	eax, [ebp-18h]
		push	eax
		call	edi ; __vbaObjSet
		lea	ecx, [ebp-2Ch]
		push	eax
		push	ecx
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaI4Var
		neg	eax
		jo	loc_40A5F7
		mov	[ebp-0D8h], eax
		sub	esp, 10h
		fild	dword ptr [ebp-0D8h]
		mov	edx, esp
		mov	eax, 2
		mov	ecx, 4
		fstp	dword ptr [ebp-74h]
		mov	[edx], eax
		mov	[edx+4], ebx
		xor	eax, eax
		sub	esp, 10h
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		mov	[edx+0Ch], eax
		mov	edx, esp
		mov	eax, ecx
		sub	esp, 10h
		mov	[edx], eax
		mov	eax, [ebp-58h]
		mov	[edx+4], eax
		mov	eax, [ebp-54h]
		mov	[edx+8], eax
		mov	eax, [ebp-50h]
		mov	[edx+0Ch], eax
		mov	eax, [ebp-78h]
		mov	edx, esp
		push	3
		push	0C7h
		push	esi
		mov	[edx], ecx
		mov	ecx, [ebp-74h]
		mov	[edx+4], eax
		mov	eax, [ebp-70h]
		mov	[edx+8], ecx
		mov	ecx, [esi]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	eax, [ebp-1Ch]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 48h
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeVar
		mov	edx, [esi]
		push	0
		push	0Bh
		push	esi
		mov	dword ptr [ebp-54h], 467A0000h
		call	dword ptr [edx+43Ch]
		push	eax
		lea	eax, [ebp-18h]
		push	eax
		call	edi ; __vbaObjSet
		lea	ecx, [ebp-2Ch]
		push	eax
		push	ecx
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaI4Var
		neg	eax
		jo	loc_40A5F7
		sub	esp, 10h
		mov	[ebp-0DCh], eax
		mov	edx, esp
		mov	eax, 2
		fild	dword ptr [ebp-0DCh]
		mov	[edx], eax
		xor	eax, eax
		sub	esp, 10h
		mov	ecx, 4
		mov	[edx+4], ebx
		fstp	dword ptr [ebp-74h]
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		mov	[edx+0Ch], eax
		mov	edx, esp
		mov	eax, ecx
		mov	[edx], eax
		mov	eax, [ebp-58h]
		mov	[edx+4], eax
		mov	eax, [ebp-54h]
		sub	esp, 10h
		mov	[edx+8], eax
		mov	eax, [ebp-50h]
		mov	[edx+0Ch], eax
		mov	eax, [ebp-78h]
		mov	edx, esp
		push	3
		push	0C7h
		push	esi
		mov	[edx], ecx
		mov	ecx, [ebp-74h]
		mov	[edx+4], eax
		mov	eax, [ebp-70h]
		mov	[edx+8], ecx
		mov	ecx, [esi]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	eax, [ebp-1Ch]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 48h
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeVar

loc_40A5B3:				; CODE XREF: .text:0040967Dj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+700h]

loc_40A5BC:				; CODE XREF: .text:00409337j
		wait
		push	offset loc_40A5E2
		jmp	short loc_40A5E1
; ---------------------------------------------------------------------------

loc_40A5C4:				; DATA XREF: .text:0040111Co
		lea	eax, [ebp-1Ch]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 0Ch
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeVar
		retn
; ---------------------------------------------------------------------------

loc_40A5E1:				; CODE XREF: .text:0040A5C2j
		retn
; ---------------------------------------------------------------------------

loc_40A5E2:				; CODE XREF: .text:loc_40A5E1j
					; DATA XREF: .text:0040A5BDo
		mov	ecx, [ebp-10h]
		pop	edi
		pop	esi
		xor	eax, eax
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_40A5F7:				; CODE XREF: .text:00409D9Dj
					; .text:00409E71j ...
		call	ds:__vbaErrorOverflow
; ---------------------------------------------------------------------------
		align 10h

loc_40A600:				; CODE XREF: .text:004087D2j
		push	ebp
		mov	ebp, esp
		sub	esp, 8
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 8Ch
		push	ebx
		push	esi
		push	edi
		mov	[ebp-8], esp
		mov	dword ptr [ebp-4], offset dword_401120
		mov	edi, [ebp-44h]
		sub	esp, 10h
		mov	esi, [ebp+8]
		mov	edx, esp
		mov	ecx, 2
		mov	ebx, [ebp-3Ch]
		mov	[edx], ecx
		xor	eax, eax
		mov	[ebp-1Ch], eax
		mov	[ebp-20h], eax
		mov	[edx+4], edi
		mov	[ebp-24h], eax
		mov	[ebp-28h], eax
		mov	[ebp-38h], eax
		mov	[ebp-68h], eax
		mov	[ebp-78h], eax
		mov	[ebp-88h], eax
		mov	[edx+8], eax
		mov	eax, [esi]
		push	1
		push	0C9h
		push	esi
		mov	[edx+0Ch], ebx
		call	dword ptr [eax+448h]
		lea	ecx, [ebp-28h]
		push	eax
		push	ecx
		call	ds:__vbaObjSet
		lea	edx, [ebp-38h]
		push	eax
		push	edx
		call	ds:__vbaLateIdCallLd
		add	esp, 20h
		push	eax
		call	ds:__vbaI2Var
		lea	ecx, [ebp-28h]
		mov	[ebp-18h], eax
		call	ds:__vbaFreeObj
		lea	ecx, [ebp-38h]
		call	ds:__vbaFreeVar
		mov	eax, [ebp-18h]
		mov	dword ptr [ebp-8Ch], 1
		sub	ax, 1
		jo	loc_40AAE9
		xor	edx, edx
		mov	[ebp-90h], eax
		mov	[ebp-14h], edx

loc_40A6CE:				; CODE XREF: .text:0040AA86j
		cmp	dx, [ebp-90h]
		jg	loc_40AA8B
		movsx	edx, dx
		sub	esp, 10h
		mov	[ebp-9Ch], edx
		mov	edx, esp
		mov	ecx, 2
		xor	eax, eax
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, esp
		push	2
		push	115h
		mov	[edx+4], edi
		push	esi
		mov	[edx+8], eax
		mov	eax, 3
		mov	[edx+0Ch], ebx
		mov	edx, [ebp-64h]
		mov	[ecx], eax
		mov	eax, [ebp-9Ch]
		mov	[ecx+4], edx
		mov	edx, [ebp-5Ch]
		mov	[ecx+8], eax
		mov	eax, [esi]
		mov	[ecx+0Ch], edx
		call	dword ptr [eax+448h]
		lea	ecx, [ebp-28h]
		push	eax
		push	ecx
		call	ds:__vbaObjSet
		lea	edx, [ebp-38h]
		push	eax
		push	edx
		call	ds:__vbaLateIdCallLd
		add	esp, 30h
		push	eax
		call	ds:__vbaR4Var
		fstp	dword ptr [ebp-20h]
		lea	ecx, [ebp-28h]
		call	ds:__vbaFreeObj
		lea	ecx, [ebp-38h]
		call	ds:__vbaFreeVar
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		sub	esp, 10h
		mov	dword ptr [ebp-88h], 4004h
		mov	[edx], ecx
		mov	ecx, esp
		sub	esp, 10h
		mov	[edx+4], edi
		mov	[edx+8], eax
		mov	eax, 4004h
		mov	[edx+0Ch], ebx
		mov	edx, [ebp-64h]
		mov	[ecx], eax
		lea	eax, [ebp-20h]
		mov	[ecx+4], edx
		mov	edx, [ebp-74h]
		mov	[ecx+8], eax
		mov	eax, [ebp-5Ch]
		mov	[ecx+0Ch], eax
		mov	ecx, esp
		mov	eax, 4004h
		sub	esp, 10h
		mov	[ecx], eax
		lea	eax, [ebp-24h]
		mov	[ecx+4], edx
		mov	edx, [ebp-88h]
		mov	[ecx+8], eax
		mov	eax, [ebp-6Ch]
		mov	[ecx+0Ch], eax
		mov	eax, [ebp-84h]
		mov	ecx, esp
		push	4
		mov	[ecx], edx
		mov	edx, [ebp-7Ch]
		mov	[ecx+4], eax
		lea	eax, [ebp-1Ch]
		mov	[ecx+8], eax
		mov	[ecx+0Ch], edx
		mov	eax, [esi]
		push	0CAh
		push	esi
		call	dword ptr [eax+448h]
		lea	ecx, [ebp-28h]
		push	eax
		push	ecx
		call	ds:__vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		add	esp, 4Ch
		lea	ecx, [ebp-28h]
		call	ds:__vbaFreeObj
		movsx	eax, word ptr [ebp-14h]
		cmp	eax, 9		; switch 10 cases
		ja	loc_40AA76	; jumptable 0040A81B default case
		jmp	ds:off_40AABC[eax*4] ; switch jump
; ---------------------------------------------------------------------------

loc_40A822:				; CODE XREF: .text:0040A81Bj
					; DATA XREF: .text:off_40AABCo
		fld	dword ptr [ebp-1Ch] ; jumptable	0040A81B case 0
		fchs
		fnstsw	ax
		test	al, 0Dh
		jnz	loc_40AAE4
		call	ds:__vbaFpI4
		sub	esp, 10h
		mov	ecx, 3
		mov	edx, esp
		push	0Bh
		push	esi
		mov	[edx], ecx
		mov	[edx+4], edi
		mov	[edx+8], eax
		mov	eax, [esi]
		mov	[edx+0Ch], ebx
		call	dword ptr [eax+41Ch]
		jmp	loc_40AA5B
; ---------------------------------------------------------------------------

loc_40A85C:				; CODE XREF: .text:0040A81Bj
					; DATA XREF: .text:off_40AABCo
		fld	dword ptr [ebp-1Ch] ; jumptable	0040A81B case 1
		fchs
		fnstsw	ax
		test	al, 0Dh
		jnz	loc_40AAE4
		call	ds:__vbaFpI4
		sub	esp, 10h
		mov	ecx, 3
		mov	edx, esp
		push	0Bh
		push	esi
		mov	[edx], ecx
		mov	[edx+4], edi
		mov	[edx+8], eax
		mov	eax, [esi]
		mov	[edx+0Ch], ebx
		call	dword ptr [eax+434h]
		jmp	loc_40AA5B
; ---------------------------------------------------------------------------

loc_40A896:				; CODE XREF: .text:0040A81Bj
					; DATA XREF: .text:off_40AABCo
		fld	dword ptr [ebp-1Ch] ; jumptable	0040A81B case 2
		fchs
		fnstsw	ax
		test	al, 0Dh
		jnz	loc_40AAE4
		call	ds:__vbaFpI4
		sub	esp, 10h
		mov	ecx, 3
		mov	edx, esp
		push	0Bh
		push	esi
		mov	[edx], ecx
		mov	[edx+4], edi
		mov	[edx+8], eax
		mov	eax, [esi]
		mov	[edx+0Ch], ebx
		call	dword ptr [eax+420h]
		jmp	loc_40AA5B
; ---------------------------------------------------------------------------

loc_40A8D0:				; CODE XREF: .text:0040A81Bj
					; DATA XREF: .text:off_40AABCo
		fld	dword ptr [ebp-1Ch] ; jumptable	0040A81B case 3
		fchs
		fnstsw	ax
		test	al, 0Dh
		jnz	loc_40AAE4
		call	ds:__vbaFpI4
		sub	esp, 10h
		mov	ecx, 3
		mov	edx, esp
		push	0Bh
		push	esi
		mov	[edx], ecx
		mov	[edx+4], edi
		mov	[edx+8], eax
		mov	eax, [esi]
		mov	[edx+0Ch], ebx
		call	dword ptr [eax+430h]
		jmp	loc_40AA5B
; ---------------------------------------------------------------------------

loc_40A90A:				; CODE XREF: .text:0040A81Bj
					; DATA XREF: .text:off_40AABCo
		fld	dword ptr [ebp-1Ch] ; jumptable	0040A81B case 4
		fchs
		fnstsw	ax
		test	al, 0Dh
		jnz	loc_40AAE4
		call	ds:__vbaFpI4
		sub	esp, 10h
		mov	ecx, 3
		mov	edx, esp
		push	0Bh
		push	esi
		mov	[edx], ecx
		mov	[edx+4], edi
		mov	[edx+8], eax
		mov	eax, [esi]
		mov	[edx+0Ch], ebx
		call	dword ptr [eax+424h]
		jmp	loc_40AA5B
; ---------------------------------------------------------------------------

loc_40A944:				; CODE XREF: .text:0040A81Bj
					; DATA XREF: .text:off_40AABCo
		fld	dword ptr [ebp-1Ch] ; jumptable	0040A81B case 5
		fchs
		fnstsw	ax
		test	al, 0Dh
		jnz	loc_40AAE4
		call	ds:__vbaFpI4
		sub	esp, 10h
		mov	ecx, 3
		mov	edx, esp
		push	0Bh
		push	esi
		mov	[edx], ecx
		mov	[edx+4], edi
		mov	[edx+8], eax
		mov	eax, [esi]
		mov	[edx+0Ch], ebx
		call	dword ptr [eax+428h]
		jmp	loc_40AA5B
; ---------------------------------------------------------------------------

loc_40A97E:				; CODE XREF: .text:0040A81Bj
					; DATA XREF: .text:off_40AABCo
		fld	dword ptr [ebp-1Ch] ; jumptable	0040A81B case 6
		fchs
		fnstsw	ax
		test	al, 0Dh
		jnz	loc_40AAE4
		call	ds:__vbaFpI4
		sub	esp, 10h
		mov	ecx, 3
		mov	edx, esp
		push	0Bh
		push	esi
		mov	[edx], ecx
		mov	[edx+4], edi
		mov	[edx+8], eax
		mov	eax, [esi]
		mov	[edx+0Ch], ebx
		call	dword ptr [eax+42Ch]
		jmp	loc_40AA5B
; ---------------------------------------------------------------------------

loc_40A9B8:				; CODE XREF: .text:0040A81Bj
					; DATA XREF: .text:off_40AABCo
		fld	dword ptr [ebp-1Ch] ; jumptable	0040A81B case 7
		fchs
		fnstsw	ax
		test	al, 0Dh
		jnz	loc_40AAE4
		call	ds:__vbaFpI4
		sub	esp, 10h
		mov	ecx, 3
		mov	edx, esp
		push	0Bh
		push	esi
		mov	[edx], ecx
		mov	[edx+4], edi
		mov	[edx+8], eax
		mov	eax, [esi]
		mov	[edx+0Ch], ebx
		call	dword ptr [eax+440h]
		jmp	short loc_40AA5B
; ---------------------------------------------------------------------------

loc_40A9EF:				; CODE XREF: .text:0040A81Bj
					; DATA XREF: .text:off_40AABCo
		fld	dword ptr [ebp-1Ch] ; jumptable	0040A81B case 8
		fchs
		fnstsw	ax
		test	al, 0Dh
		jnz	loc_40AAE4
		call	ds:__vbaFpI4
		sub	esp, 10h
		mov	ecx, 3
		mov	edx, esp
		push	0Bh
		push	esi
		mov	[edx], ecx
		mov	[edx+4], edi
		mov	[edx+8], eax
		mov	eax, [esi]
		mov	[edx+0Ch], ebx
		call	dword ptr [eax+438h]
		jmp	short loc_40AA5B
; ---------------------------------------------------------------------------

loc_40AA26:				; CODE XREF: .text:0040A81Bj
					; DATA XREF: .text:off_40AABCo
		fld	dword ptr [ebp-1Ch] ; jumptable	0040A81B case 9
		fchs
		fnstsw	ax
		test	al, 0Dh
		jnz	loc_40AAE4
		call	ds:__vbaFpI4
		sub	esp, 10h
		mov	ecx, 3
		mov	edx, esp
		push	0Bh
		push	esi
		mov	[edx], ecx
		mov	[edx+4], edi
		mov	[edx+8], eax
		mov	eax, [esi]
		mov	[edx+0Ch], ebx
		call	dword ptr [eax+43Ch]

loc_40AA5B:				; CODE XREF: .text:0040A857j
					; .text:0040A891j ...
		lea	ecx, [ebp-28h]
		push	eax
		push	ecx
		call	ds:__vbaObjSet
		push	eax
		call	ds:__vbaLateIdSt
		lea	ecx, [ebp-28h]
		call	ds:__vbaFreeObj

loc_40AA76:				; CODE XREF: .text:0040A815j
		mov	dx, [ebp-8Ch]	; jumptable 0040A81B default case
		add	dx, [ebp-14h]
		jo	short loc_40AAE9
		mov	[ebp-14h], edx
		jmp	loc_40A6CE
; ---------------------------------------------------------------------------

loc_40AA8B:				; CODE XREF: .text:0040A6D5j
		wait
		push	offset loc_40AAA7
		jmp	short loc_40AAA6
; ---------------------------------------------------------------------------

loc_40AA93:				; DATA XREF: .text:0040112Co
		lea	ecx, [ebp-28h]
		call	ds:__vbaFreeObj
		lea	ecx, [ebp-38h]
		call	ds:__vbaFreeVar
		retn
; ---------------------------------------------------------------------------

loc_40AAA6:				; CODE XREF: .text:0040AA91j
		retn
; ---------------------------------------------------------------------------

loc_40AAA7:				; CODE XREF: .text:loc_40AAA6j
					; DATA XREF: .text:0040AA8Co
		mov	ecx, [ebp-10h]
		pop	edi
		pop	esi
		xor	eax, eax
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------
off_40AABC	dd offset loc_40A822	; DATA XREF: .text:0040A81Br
		dd offset loc_40A85C	; jump table for switch	statement
		dd offset loc_40A896
		dd offset loc_40A8D0
		dd offset loc_40A90A
		dd offset loc_40A944
		dd offset loc_40A97E
		dd offset loc_40A9B8
		dd offset loc_40A9EF
		dd offset loc_40AA26
; ---------------------------------------------------------------------------

loc_40AAE4:				; CODE XREF: .text:0040A82Bj
					; .text:0040A865j ...
		jmp	loc_40151C
; ---------------------------------------------------------------------------

loc_40AAE9:				; CODE XREF: .text:0040A6BDj
					; .text:0040AA81j
		call	ds:__vbaErrorOverflow
; ---------------------------------------------------------------------------
		align 10h

loc_40AAF0:				; CODE XREF: .text:004087DFj
		push	ebp
		mov	ebp, esp
		sub	esp, 8
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 0C0h
		push	ebx
		push	esi
		push	edi
		mov	[ebp-8], esp
		mov	dword ptr [ebp-4], offset dword_401130
		mov	esi, [ebp+8]
		xor	ebx, ebx
		push	esi
		mov	[ebp-14h], ebx
		mov	eax, [esi]
		mov	[ebp-1Ch], ebx
		mov	[ebp-20h], ebx
		mov	[ebp-24h], ebx
		mov	[ebp-28h], ebx
		mov	[ebp-38h], ebx
		mov	[ebp-48h], ebx
		mov	[ebp-78h], ebx
		mov	[ebp-8Ch], ebx
		call	dword ptr [eax+394h]
		mov	edi, ds:__vbaObjSet
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	ecx, [ebp+0Ch]
		mov	edx, [eax]
		push	ecx
		push	eax
		mov	[ebp-90h], eax
		call	dword ptr [edx+9Ch]
		cmp	eax, ebx
		fnclex
		jge	short loc_40AB86
		mov	edx, [ebp-90h]
		push	9Ch
		push	offset dword_404930
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40AB86:				; CODE XREF: .text:0040AB6Cj
		mov	ebx, ds:__vbaFreeObj
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+380h]
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	ecx, [ebp+0Ch]
		mov	edx, [eax]
		push	ecx
		push	eax
		mov	[ebp-90h], eax
		call	dword ptr [edx+9Ch]
		test	eax, eax
		fnclex
		jge	short loc_40ABD2
		mov	edx, [ebp-90h]
		push	9Ch
		push	offset dword_404930
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40ABD2:				; CODE XREF: .text:0040ABB8j
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+324h]
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	ecx, [ebp+0Ch]
		mov	edx, [eax]
		push	ecx
		push	eax
		mov	[ebp-90h], eax
		call	dword ptr [edx+9Ch]
		test	eax, eax
		fnclex
		jge	short loc_40AC18
		mov	edx, [ebp-90h]
		push	9Ch
		push	offset dword_404940
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40AC18:				; CODE XREF: .text:0040ABFEj
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+37Ch]
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		push	eax
		mov	[ebp-90h], eax
		call	dword ptr [edx+1E8h]
		test	eax, eax
		fnclex
		jge	short loc_40AC5A
		mov	ecx, [ebp-90h]
		push	1E8h
		push	offset dword_404950
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40AC5A:				; CODE XREF: .text:0040AC40j
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		cmp	word ptr [ebp+0Ch], 0FFFFh
		jnz	loc_40B9AF
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+364h]
		push	eax
		lea	eax, [ebp-20h]
		push	eax
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		lea	edx, [ebp-8Ch]
		push	edx
		push	eax
		mov	[ebp-90h], eax
		call	dword ptr [ecx+0E0h]
		test	eax, eax
		fnclex
		jge	short loc_40ACAE
		mov	ecx, [ebp-90h]
		push	0E0h
		push	offset dword_404960
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40ACAE:				; CODE XREF: .text:0040AC94j
		xor	edx, edx
		cmp	word ptr [ebp-8Ch], 0FFFFh
		lea	ecx, [ebp-20h]
		setz	dl
		neg	edx
		mov	[ebp-98h], edx
		call	ebx ; __vbaFreeObj
		cmp	word ptr [ebp-98h], 0
		push	0
		jz	loc_40AF64
		mov	eax, [esi]
		push	2Bh
		push	offset dword_404970
		push	0
		push	0E2h
		push	esi
		call	dword ptr [eax+448h]
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	ebx, ds:__vbaLateIdCallLd
		lea	edx, [ebp-38h]
		push	eax
		push	edx
		call	ebx ; __vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		push	eax
		lea	eax, [ebp-24h]
		push	eax
		call	edi ; __vbaObjSet
		lea	ecx, [ebp-48h]
		push	eax
		push	ecx
		call	ebx ; __vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaI2Var
		mov	ebx, eax
		lea	edx, [ebp-24h]
		lea	eax, [ebp-20h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeObjList
		lea	ecx, [ebp-48h]
		lea	edx, [ebp-38h]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeVarList
		add	esp, 18h
		sub	bx, 1
		jo	loc_40C7D3
		mov	[ebp-0A0h], ebx
		xor	eax, eax

loc_40AD5C:				; CODE XREF: .text:0040AE85j
		cmp	ax, [ebp-0A0h]
		mov	[ebp-14h], eax
		jg	loc_40AE8A
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+37Ch]
		lea	ecx, [ebp-28h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	ebx, [eax]
		sub	esp, 10h
		mov	[ebp-90h], eax
		mov	eax, esp
		mov	edx, 0Ah
		mov	ecx, 80020004h
		mov	[eax], edx
		mov	edx, [ebp-64h]
		sub	esp, 10h
		mov	[eax+4], edx
		mov	edx, esp
		push	1
		push	2Ch
		mov	[eax+8], ecx
		mov	ecx, [ebp-5Ch]
		push	offset dword_404970
		push	0
		mov	[eax+0Ch], ecx
		mov	eax, 4002h
		mov	ecx, [ebp-4Ch]
		mov	[edx], eax
		mov	eax, [ebp-54h]
		push	0E2h
		mov	[edx+4], eax
		lea	eax, [ebp-14h]
		push	esi
		mov	[edx+8], eax
		mov	[edx+0Ch], ecx
		mov	edx, [esi]
		call	dword ptr [edx+448h]
		push	eax
		lea	eax, [ebp-20h]
		push	eax
		call	edi ; __vbaObjSet
		lea	ecx, [ebp-38h]
		push	eax
		push	ecx
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	edx, [ebp-24h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-48h]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 20h
		push	eax
		call	ds:__vbaStrVarMove
		mov	edx, eax
		lea	ecx, [ebp-1Ch]
		call	ds:__vbaStrMove
		mov	ecx, ebx
		mov	ebx, [ebp-90h]
		push	eax
		push	ebx
		call	dword ptr [ecx+1ECh]
		test	eax, eax
		fnclex
		jge	short loc_40AE46
		push	1ECh
		push	offset dword_404950
		push	ebx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40AE46:				; CODE XREF: .text:0040AE32j
		lea	ecx, [ebp-1Ch]
		call	ds:__vbaFreeStr
		lea	edx, [ebp-28h]
		lea	eax, [ebp-24h]
		push	edx
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		push	3
		call	ds:__vbaFreeObjList
		lea	edx, [ebp-48h]
		lea	eax, [ebp-38h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeVarList
		mov	eax, 1
		add	esp, 1Ch
		add	ax, [ebp-14h]
		jo	loc_40C7D3
		jmp	loc_40AD5C
; ---------------------------------------------------------------------------

loc_40AE8A:				; CODE XREF: .text:0040AD66j
		mov	ecx, [esi]
		push	esi
		call	dword ptr [ecx+37Ch]
		lea	edx, [ebp-28h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		mov	ebx, [eax]
		sub	esp, 10h
		mov	[ebp-90h], eax
		mov	eax, esp
		mov	edx, 2
		push	1
		mov	[eax], edx
		mov	edx, [ebp-54h]
		xor	ecx, ecx
		push	2Eh
		mov	[eax+4], edx
		mov	edx, [esi]
		push	offset dword_404970
		push	0
		mov	[eax+8], ecx
		mov	ecx, [ebp-4Ch]
		push	0E2h
		push	esi
		mov	[eax+0Ch], ecx
		call	dword ptr [edx+448h]
		push	eax
		lea	eax, [ebp-20h]
		push	eax
		call	edi ; __vbaObjSet
		lea	ecx, [ebp-38h]
		push	eax
		push	ecx
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	edx, [ebp-24h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-48h]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 20h
		push	eax
		call	ds:__vbaI2Var
		mov	ecx, ebx
		mov	ebx, [ebp-90h]
		push	eax
		push	ebx
		call	dword ptr [ecx+0F4h]
		test	eax, eax
		fnclex
		jge	short loc_40AF38
		push	0F4h
		push	offset dword_404950
		push	ebx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40AF38:				; CODE XREF: .text:0040AF24j
		lea	edx, [ebp-28h]
		lea	eax, [ebp-24h]
		push	edx
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		push	3
		call	ds:__vbaFreeObjList
		lea	edx, [ebp-48h]
		lea	eax, [ebp-38h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeVarList
		add	esp, 1Ch
		jmp	loc_40B151
; ---------------------------------------------------------------------------

loc_40AF64:				; CODE XREF: .text:0040ACD2j
		mov	ecx, [esi]
		push	28h
		push	esi
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-20h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-38h]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaI2Var
		lea	ecx, [ebp-20h]
		mov	[ebp-18h], eax
		call	ebx ; __vbaFreeObj
		lea	ecx, [ebp-38h]
		call	ds:__vbaFreeVar
		mov	eax, [ebp-18h]
		sub	ax, 1
		jo	loc_40C7D3
		mov	[ebp-0A8h], eax
		xor	eax, eax

loc_40AFB1:				; CODE XREF: .text:0040B0A7j
		cmp	ax, [ebp-0A8h]
		mov	[ebp-14h], eax
		jg	loc_40B0AC
		mov	ecx, [esi]
		push	esi
		call	dword ptr [ecx+37Ch]
		lea	edx, [ebp-24h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		mov	ebx, [eax]
		sub	esp, 10h
		mov	[ebp-90h], eax
		mov	eax, esp
		mov	edx, 0Ah
		mov	ecx, 80020004h
		mov	[eax], edx
		mov	edx, [ebp-64h]
		sub	esp, 10h
		mov	[eax+4], edx
		mov	edx, esp
		push	1
		push	29h
		mov	[eax+8], ecx
		mov	ecx, [ebp-5Ch]
		push	esi
		mov	[eax+0Ch], ecx
		mov	eax, 4002h
		mov	ecx, [ebp-4Ch]
		mov	[edx], eax
		mov	eax, [ebp-54h]
		mov	[edx+4], eax
		lea	eax, [ebp-14h]
		mov	[edx+8], eax
		mov	[edx+0Ch], ecx
		mov	edx, [esi]
		call	dword ptr [edx+448h]
		push	eax
		lea	eax, [ebp-20h]
		push	eax
		call	edi ; __vbaObjSet
		lea	ecx, [ebp-38h]
		push	eax
		push	ecx
		call	ds:__vbaLateIdCallLd
		add	esp, 20h
		push	eax
		call	ds:__vbaStrVarMove
		mov	edx, eax
		lea	ecx, [ebp-1Ch]
		call	ds:__vbaStrMove
		mov	edx, ebx
		mov	ebx, [ebp-90h]
		push	eax
		push	ebx
		call	dword ptr [edx+1ECh]
		test	eax, eax
		fnclex
		jge	short loc_40B073
		push	1ECh
		push	offset dword_404950
		push	ebx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40B073:				; CODE XREF: .text:0040B05Fj
		lea	ecx, [ebp-1Ch]
		call	ds:__vbaFreeStr
		lea	eax, [ebp-24h]
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 0Ch
		lea	ecx, [ebp-38h]
		call	ds:__vbaFreeVar
		mov	eax, 1
		add	ax, [ebp-14h]
		jo	loc_40C7D3
		jmp	loc_40AFB1
; ---------------------------------------------------------------------------

loc_40B0AC:				; CODE XREF: .text:0040AFBBj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+37Ch]
		push	eax
		lea	eax, [ebp-24h]
		push	eax
		call	edi ; __vbaObjSet
		mov	ebx, [eax]
		sub	esp, 10h
		mov	[ebp-90h], eax
		mov	eax, esp
		mov	edx, 2
		xor	ecx, ecx
		mov	[eax], edx
		mov	edx, [ebp-54h]
		push	1
		push	12Dh
		mov	[eax+4], edx
		mov	edx, [esi]
		push	esi
		mov	[eax+8], ecx
		mov	ecx, [ebp-4Ch]
		mov	[eax+0Ch], ecx
		call	dword ptr [edx+448h]
		push	eax
		lea	eax, [ebp-20h]
		push	eax
		call	edi ; __vbaObjSet
		lea	ecx, [ebp-38h]
		push	eax
		push	ecx
		call	ds:__vbaLateIdCallLd
		add	esp, 20h
		push	eax
		call	ds:__vbaI2Var
		mov	edx, ebx
		mov	ebx, [ebp-90h]
		push	eax
		push	ebx
		call	dword ptr [edx+0F4h]
		test	eax, eax
		fnclex
		jge	short loc_40B135
		push	0F4h
		push	offset dword_404950
		push	ebx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40B135:				; CODE XREF: .text:0040B121j
		lea	eax, [ebp-24h]
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 0Ch
		lea	ecx, [ebp-38h]
		call	ds:__vbaFreeVar

loc_40B151:				; CODE XREF: .text:0040AF5Fj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+37Ch]
		push	eax
		lea	eax, [ebp-20h]
		push	eax
		call	edi ; __vbaObjSet
		mov	ebx, eax
		push	0FFFFFFFFh
		push	ebx
		mov	ecx, [ebx]
		call	dword ptr [ecx+94h]
		test	eax, eax
		fnclex
		jge	short loc_40B186
		push	94h
		push	offset dword_404950
		push	ebx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40B186:				; CODE XREF: .text:0040B172j
		mov	ebx, ds:__vbaFreeObj
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+314h]
		push	eax
		lea	eax, [ebp-20h]
		push	eax
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		push	0FFFFFFFFh
		push	eax
		mov	[ebp-90h], eax
		call	dword ptr [ecx+9Ch]
		test	eax, eax
		fnclex
		jge	short loc_40B1D0
		mov	edx, [ebp-90h]
		push	9Ch
		push	offset dword_404950
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40B1D0:				; CODE XREF: .text:0040B1B6j
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+3ECh]
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		push	0FFFFFFFFh
		push	eax
		mov	[ebp-90h], eax
		call	dword ptr [edx+9Ch]
		test	eax, eax
		fnclex
		jge	short loc_40B214
		mov	ecx, [ebp-90h]
		push	9Ch
		push	offset dword_404980
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40B214:				; CODE XREF: .text:0040B1FAj
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+40Ch]
		push	eax
		lea	eax, [ebp-20h]
		push	eax
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		push	0FFFFFFFFh
		push	eax
		mov	[ebp-90h], eax
		call	dword ptr [ecx+9Ch]
		test	eax, eax
		fnclex
		jge	short loc_40B258
		mov	edx, [ebp-90h]
		push	9Ch
		push	offset dword_404980
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40B258:				; CODE XREF: .text:0040B23Ej
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		sub	esp, 10h
		mov	ecx, 0Bh
		mov	edx, esp
		or	eax, 0FFFFFFFFh
		push	80010007h
		push	esi
		mov	[edx], ecx
		mov	ecx, [ebp-54h]
		mov	[edx+4], ecx
		mov	ecx, [esi]
		mov	[edx+8], eax
		mov	eax, [ebp-4Ch]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+44Ch]
		lea	edx, [ebp-20h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdSt
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+3F8h]
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		push	0FFFFFFFFh
		push	eax
		mov	[ebp-90h], eax
		call	dword ptr [edx+9Ch]
		test	eax, eax
		fnclex
		jge	short loc_40B2DB
		mov	ecx, [ebp-90h]
		push	9Ch
		push	offset dword_404980
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40B2DB:				; CODE XREF: .text:0040B2C1j
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		sub	esp, 10h
		mov	ecx, 0Bh
		mov	edx, esp
		or	eax, 0FFFFFFFFh
		push	80010007h
		push	esi
		mov	[edx], ecx
		mov	ecx, [ebp-54h]
		mov	[edx+4], ecx
		mov	ecx, [esi]
		mov	[edx+8], eax
		mov	eax, [ebp-4Ch]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+450h]
		lea	edx, [ebp-20h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdSt
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+364h]
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		lea	ecx, [ebp-8Ch]
		push	ecx
		push	eax
		mov	[ebp-90h], eax
		call	dword ptr [edx+0E0h]
		test	eax, eax
		fnclex
		jge	short loc_40B363
		mov	edx, [ebp-90h]
		push	0E0h
		push	offset dword_404960
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40B363:				; CODE XREF: .text:0040B349j
		xor	eax, eax
		lea	ecx, [ebp-20h]
		cmp	[ebp-8Ch], ax
		setz	al
		neg	eax
		mov	[ebp-98h], eax
		call	ebx ; __vbaFreeObj
		cmp	word ptr [ebp-98h], 0
		jz	loc_40B460
		mov	ecx, [esi]
		push	esi
		call	dword ptr [ecx+324h]
		lea	edx, [ebp-20h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		lea	edx, [ebp-8Ch]
		push	edx
		push	eax
		mov	[ebp-90h], eax
		call	dword ptr [ecx+0E0h]
		test	eax, eax
		fnclex
		jge	short loc_40B3CE
		mov	ecx, [ebp-90h]
		push	0E0h
		push	offset dword_404940
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40B3CE:				; CODE XREF: .text:0040B3B4j
		xor	edx, edx
		cmp	word ptr [ebp-8Ch], 1
		lea	ecx, [ebp-20h]
		setz	dl
		neg	edx
		mov	[ebp-98h], edx
		call	ebx ; __vbaFreeObj
		cmp	word ptr [ebp-98h], 0
		jz	short loc_40B433
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+328h]
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		push	0FFFFFFFFh
		push	eax
		mov	[ebp-90h], eax
		call	dword ptr [edx+9Ch]
		test	eax, eax
		fnclex
		jge	loc_40B4E3
		mov	ecx, [ebp-90h]
		push	9Ch
		push	offset dword_404930
		push	ecx
		jmp	loc_40B4DC
; ---------------------------------------------------------------------------

loc_40B433:				; CODE XREF: .text:0040B3F0j
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+328h]
		push	eax
		lea	eax, [ebp-20h]
		push	eax
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		push	0
		push	eax
		mov	[ebp-90h], eax
		call	dword ptr [ecx+9Ch]
		test	eax, eax
		fnclex
		jge	loc_40B4E3
		jmp	short loc_40B4CB
; ---------------------------------------------------------------------------

loc_40B460:				; CODE XREF: .text:0040B384j
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+324h]
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		push	0
		push	eax
		mov	[ebp-90h], eax
		call	dword ptr [edx+9Ch]
		test	eax, eax
		fnclex
		jge	short loc_40B49F
		mov	ecx, [ebp-90h]
		push	9Ch
		push	offset dword_404940
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40B49F:				; CODE XREF: .text:0040B485j
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+328h]
		push	eax
		lea	eax, [ebp-20h]
		push	eax
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		push	0FFFFFFFFh
		push	eax
		mov	[ebp-90h], eax
		call	dword ptr [ecx+9Ch]
		test	eax, eax
		fnclex
		jge	short loc_40B4E3

loc_40B4CB:				; CODE XREF: .text:0040B45Ej
		mov	edx, [ebp-90h]
		push	9Ch
		push	offset dword_404930
		push	edx

loc_40B4DC:				; CODE XREF: .text:0040B42Ej
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40B4E3:				; CODE XREF: .text:0040B417j
					; .text:0040B458j ...
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+3E8h]
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		push	0FFFFFFFFh
		push	eax
		mov	[ebp-90h], eax
		call	dword ptr [edx+9Ch]
		test	eax, eax
		fnclex
		jge	short loc_40B527
		mov	ecx, [ebp-90h]
		push	9Ch
		push	offset dword_404980
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40B527:				; CODE XREF: .text:0040B50Dj
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+310h]
		push	eax
		lea	eax, [ebp-20h]
		push	eax
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		push	0FFFFFFFFh
		push	eax
		mov	[ebp-90h], eax
		call	dword ptr [ecx+94h]
		test	eax, eax
		fnclex
		jge	short loc_40B56B
		mov	edx, [ebp-90h]
		push	94h
		push	offset dword_404990
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40B56B:				; CODE XREF: .text:0040B551j
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+30Ch]
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		push	0FFFFFFFFh
		push	eax
		mov	[ebp-90h], eax
		call	dword ptr [edx+94h]
		test	eax, eax
		fnclex
		jge	short loc_40B5AF
		mov	ecx, [ebp-90h]
		push	94h
		push	offset dword_404990
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40B5AF:				; CODE XREF: .text:0040B595j
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+308h]
		push	eax
		lea	eax, [ebp-20h]
		push	eax
		call	edi ; __vbaObjSet
		mov	ebx, eax
		push	0FFFFFFFFh
		push	ebx
		mov	ecx, [ebx]
		call	dword ptr [ecx+94h]
		test	eax, eax
		fnclex
		jge	short loc_40B5E9
		push	94h
		push	offset dword_4049A0
		push	ebx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40B5E9:				; CODE XREF: .text:0040B5D5j
		lea	ecx, [ebp-20h]
		call	ds:__vbaFreeObj
		sub	esp, 10h
		mov	ecx, 4003h
		mov	ebx, esp
		lea	eax, [esi+34h]
		sub	esp, 10h
		mov	edx, 1
		mov	[ebx], ecx
		mov	ecx, [ebp-54h]
		mov	[ebx+4], ecx
		mov	ecx, esp
		push	2
		push	3
		mov	[ebx+8], eax
		mov	eax, [ebp-4Ch]
		push	offset dword_4048D8
		push	0
		mov	[ebx+0Ch], eax
		mov	eax, 3
		mov	[ecx], eax
		mov	eax, [ebp-64h]
		push	0E0h
		push	esi
		mov	[ecx+4], eax
		mov	eax, [esi]
		mov	[ecx+8], edx
		mov	edx, [ebp-5Ch]
		mov	[ecx+0Ch], edx
		call	dword ptr [eax+448h]
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		lea	edx, [ebp-38h]
		push	eax
		push	edx
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		push	eax
		lea	eax, [ebp-24h]
		push	eax
		call	edi ; __vbaObjSet
		mov	ebx, ds:__vbaLateIdCall
		push	eax
		call	ebx ; __vbaLateIdCall
		lea	ecx, [ebp-24h]
		lea	edx, [ebp-20h]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 38h
		lea	ecx, [ebp-38h]
		call	ds:__vbaFreeVar
		sub	esp, 10h
		mov	ecx, 4003h
		mov	edx, esp
		lea	eax, [esi+38h]
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, [ebp-54h]
		mov	[edx+4], ecx
		mov	ecx, esp
		push	2
		push	3
		mov	[edx+8], eax
		mov	eax, [ebp-4Ch]
		push	offset dword_4048D8
		push	0
		mov	[edx+0Ch], eax
		mov	edx, [ebp-64h]
		mov	eax, 3
		mov	[ecx], eax
		mov	eax, 1
		mov	[ecx+4], edx
		mov	[ecx+8], eax
		mov	eax, [ebp-5Ch]
		mov	[ecx+0Ch], eax
		mov	ecx, [esi]
		push	0E0h
		push	esi
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-20h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-38h]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-24h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		push	eax
		call	ebx ; __vbaLateIdCall
		lea	edx, [ebp-24h]
		lea	eax, [ebp-20h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 38h
		lea	ecx, [ebp-38h]
		call	ds:__vbaFreeVar
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, [ebp-54h]
		mov	[edx+4], ecx
		mov	ecx, esp
		push	2
		push	2
		mov	[edx+8], eax
		mov	eax, [ebp-4Ch]
		push	offset dword_4049B0
		push	0
		mov	[edx+0Ch], eax
		mov	edx, [ebp-74h]
		mov	eax, 3
		push	50h
		mov	[ecx], eax
		mov	eax, 1
		push	esi
		mov	[ecx+4], edx
		mov	[ecx+8], eax
		mov	eax, [ebp-6Ch]
		mov	[ecx+0Ch], eax
		mov	ecx, [esi]
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-20h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-38h]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-24h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		push	eax
		call	ebx ; __vbaLateIdCall
		lea	edx, [ebp-24h]
		lea	eax, [ebp-20h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 38h
		lea	ecx, [ebp-38h]
		call	ds:__vbaFreeVar
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, [ebp-54h]
		mov	[edx+4], ecx
		mov	ecx, esp
		push	2
		push	2
		mov	[edx+8], eax
		mov	eax, [ebp-4Ch]
		push	offset loc_4049C0
		push	0
		mov	[edx+0Ch], eax
		mov	edx, [ebp-74h]
		mov	eax, 3
		push	51h
		mov	[ecx], eax
		mov	eax, 1
		push	esi
		mov	[ecx+4], edx
		mov	[ecx+8], eax
		mov	eax, [ebp-6Ch]
		mov	[ecx+0Ch], eax
		mov	ecx, [esi]
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-20h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-38h]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-24h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		push	eax
		call	ebx ; __vbaLateIdCall
		lea	edx, [ebp-24h]
		lea	eax, [ebp-20h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 38h
		lea	ecx, [ebp-38h]
		call	ds:__vbaFreeVar
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, [ebp-54h]
		mov	[edx+4], ecx
		mov	ecx, esp
		push	2
		push	2
		mov	[edx+8], eax
		mov	eax, [ebp-4Ch]
		push	(offset	loc_4049CF+1)
		push	0
		mov	[edx+0Ch], eax
		mov	edx, [ebp-74h]
		mov	eax, 3
		mov	[ecx], eax
		mov	eax, 1
		mov	[ecx+4], edx
		mov	[ecx+8], eax
		mov	eax, [ebp-6Ch]
		mov	[ecx+0Ch], eax
		mov	ecx, [esi]
		push	52h
		push	esi
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-20h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-38h]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-24h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		push	eax
		call	ebx ; __vbaLateIdCall
		lea	edx, [ebp-24h]
		lea	eax, [ebp-20h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 38h
		lea	ecx, [ebp-38h]
		call	ds:__vbaFreeVar
		mov	ecx, [esi]
		push	esi
		call	dword ptr [ecx+304h]
		lea	edx, [ebp-20h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		mov	ebx, eax
		push	0FFFFFFFFh
		push	ebx
		mov	eax, [ebx]
		call	dword ptr [eax+9Ch]
		test	eax, eax
		fnclex
		jge	short loc_40B91E
		push	9Ch
		push	offset dword_4048C8
		push	ebx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40B91E:				; CODE XREF: .text:0040B90Aj
		lea	ecx, [ebp-20h]
		call	ds:__vbaFreeObj
		mov	ecx, [esi]
		push	esi
		call	dword ptr [ecx+300h]
		lea	edx, [ebp-20h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		mov	ebx, eax
		push	0FFFFFFFFh
		push	ebx
		mov	eax, [ebx]
		call	dword ptr [eax+9Ch]
		test	eax, eax
		fnclex
		jge	short loc_40B95C
		push	9Ch
		push	offset dword_4048C8
		push	ebx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40B95C:				; CODE XREF: .text:0040B948j
		mov	ebx, ds:__vbaFreeObj
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		mov	ecx, [esi]
		push	esi
		call	dword ptr [ecx+2FCh]
		lea	edx, [ebp-20h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		mov	esi, eax
		push	0FFFFFFFFh
		push	esi
		mov	eax, [esi]
		call	dword ptr [eax+9Ch]
		test	eax, eax
		fnclex
		jge	loc_40C780
		push	9Ch
		push	offset dword_4048C8
		push	esi
		push	eax
		call	ds:__vbaHresultCheckObj
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		push	offset loc_40C7BE
		jmp	loc_40C7BD
; ---------------------------------------------------------------------------

loc_40B9AF:				; CODE XREF: .text:0040AC64j
		mov	ecx, [esi]
		push	esi
		call	dword ptr [ecx+328h]
		lea	edx, [ebp-20h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		push	0
		push	eax
		mov	[ebp-90h], eax
		call	dword ptr [ecx+9Ch]
		test	eax, eax
		fnclex
		jge	short loc_40B9EE
		mov	edx, [ebp-90h]
		push	9Ch
		push	offset dword_404930
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40B9EE:				; CODE XREF: .text:0040B9D4j
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		sub	esp, 10h
		mov	ecx, 4003h
		mov	edx, esp
		lea	eax, [esi+34h]
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, [ebp-54h]
		mov	[edx+4], ecx
		mov	ecx, esp
		push	2
		push	3
		mov	[edx+8], eax
		mov	eax, [ebp-4Ch]
		push	offset dword_4048D8
		push	0
		mov	[edx+0Ch], eax
		mov	edx, [ebp-64h]
		mov	eax, 3
		push	0E0h
		mov	[ecx], eax
		xor	eax, eax
		push	esi
		mov	[ecx+4], edx
		mov	[ecx+8], eax
		mov	eax, [ebp-5Ch]
		mov	[ecx+0Ch], eax
		mov	ecx, [esi]
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-20h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-38h]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-24h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	edx, [ebp-24h]
		lea	eax, [ebp-20h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 38h
		lea	ecx, [ebp-38h]
		call	ds:__vbaFreeVar
		sub	esp, 10h
		mov	ecx, 4003h
		mov	edx, esp
		lea	eax, [esi+38h]
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, [ebp-54h]
		mov	[edx+4], ecx
		mov	ecx, esp
		push	2
		push	3
		mov	[edx+8], eax
		mov	eax, [ebp-4Ch]
		push	offset dword_4048D8
		push	0
		mov	[edx+0Ch], eax
		mov	edx, [ebp-64h]
		mov	eax, 3
		push	0E0h
		mov	[ecx], eax
		xor	eax, eax
		mov	[ecx+4], edx
		mov	[ecx+8], eax
		mov	eax, [ebp-5Ch]
		mov	[ecx+0Ch], eax
		mov	ecx, [esi]
		push	esi
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-20h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-38h]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-24h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	edx, [ebp-24h]
		lea	eax, [ebp-20h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 38h
		lea	ecx, [ebp-38h]
		call	ds:__vbaFreeVar
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, [ebp-54h]
		mov	[edx+4], ecx
		mov	ecx, esp
		push	2
		push	2
		mov	[edx+8], eax
		mov	eax, [ebp-4Ch]
		push	offset dword_4049B0
		push	0
		mov	[edx+0Ch], eax
		mov	edx, [ebp-74h]
		mov	eax, 3
		push	50h
		mov	[ecx], eax
		xor	eax, eax
		push	esi
		mov	[ecx+4], edx
		mov	[ecx+8], eax
		mov	eax, [ebp-6Ch]
		mov	[ecx+0Ch], eax
		mov	ecx, [esi]
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-20h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-38h]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-24h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	edx, [ebp-24h]
		lea	eax, [ebp-20h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 38h
		lea	ecx, [ebp-38h]
		call	ds:__vbaFreeVar
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, [ebp-54h]
		mov	[edx+4], ecx
		mov	ecx, esp
		push	2
		push	2
		mov	[edx+8], eax
		mov	eax, [ebp-4Ch]
		push	offset loc_4049C0
		push	0
		mov	[edx+0Ch], eax
		mov	edx, [ebp-74h]
		mov	eax, 3
		push	51h
		mov	[ecx], eax
		xor	eax, eax
		push	esi
		mov	[ecx+4], edx
		mov	[ecx+8], eax
		mov	eax, [ebp-6Ch]
		mov	[ecx+0Ch], eax
		mov	ecx, [esi]
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-20h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-38h]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-24h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	edx, [ebp-24h]
		lea	eax, [ebp-20h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 38h
		lea	ecx, [ebp-38h]
		call	ds:__vbaFreeVar
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, [ebp-54h]
		mov	[edx+4], ecx
		mov	ecx, esp
		push	2
		push	2
		mov	[edx+8], eax
		mov	eax, [ebp-4Ch]
		push	(offset	loc_4049CF+1)
		push	0
		mov	[edx+0Ch], eax
		mov	edx, [ebp-74h]
		mov	eax, 3
		push	52h
		mov	[ecx], eax
		xor	eax, eax
		mov	[ecx+4], edx
		mov	[ecx+8], eax
		mov	eax, [ebp-6Ch]
		mov	[ecx+0Ch], eax
		mov	ecx, [esi]
		push	esi
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-20h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-38h]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-24h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	edx, [ebp-24h]
		lea	eax, [ebp-20h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 38h
		lea	ecx, [ebp-38h]
		call	ds:__vbaFreeVar
		mov	ecx, [esi]
		push	esi
		call	dword ptr [ecx+304h]
		lea	edx, [ebp-20h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		push	0
		push	eax
		mov	[ebp-90h], eax
		call	dword ptr [ecx+9Ch]
		test	eax, eax
		fnclex
		jge	short loc_40BD28
		mov	edx, [ebp-90h]
		push	9Ch
		push	offset dword_4048C8
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40BD28:				; CODE XREF: .text:0040BD0Ej
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+300h]
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		push	0
		push	eax
		mov	[ebp-90h], eax
		call	dword ptr [edx+9Ch]
		test	eax, eax
		fnclex
		jge	short loc_40BD6C
		mov	ecx, [ebp-90h]
		push	9Ch
		push	offset dword_4048C8
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40BD6C:				; CODE XREF: .text:0040BD52j
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+2FCh]
		push	eax
		lea	eax, [ebp-20h]
		push	eax
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		push	0
		push	eax
		mov	[ebp-90h], eax
		call	dword ptr [ecx+9Ch]
		test	eax, eax
		fnclex
		jge	short loc_40BDB0
		mov	edx, [ebp-90h]
		push	9Ch
		push	offset dword_4048C8
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40BDB0:				; CODE XREF: .text:0040BD96j
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+3E8h]
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		push	0FFFFFFFFh
		push	eax
		mov	[ebp-90h], eax
		call	dword ptr [edx+9Ch]
		test	eax, eax
		fnclex
		jge	short loc_40BDF4
		mov	ecx, [ebp-90h]
		push	9Ch
		push	offset dword_404980
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40BDF4:				; CODE XREF: .text:0040BDDAj
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+310h]
		push	eax
		lea	eax, [ebp-20h]
		push	eax
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		push	0FFFFFFFFh
		push	eax
		mov	[ebp-90h], eax
		call	dword ptr [ecx+94h]
		test	eax, eax
		fnclex
		jge	short loc_40BE38
		mov	edx, [ebp-90h]
		push	94h
		push	offset dword_404990
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40BE38:				; CODE XREF: .text:0040BE1Ej
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+30Ch]
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		push	0FFFFFFFFh
		push	eax
		mov	[ebp-90h], eax
		call	dword ptr [edx+94h]
		test	eax, eax
		fnclex
		jge	short loc_40BE7C
		mov	ecx, [ebp-90h]
		push	94h
		push	offset dword_404990
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40BE7C:				; CODE XREF: .text:0040BE62j
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+308h]
		push	eax
		lea	eax, [ebp-20h]
		push	eax
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		push	0FFFFFFFFh
		push	eax
		mov	[ebp-90h], eax
		call	dword ptr [ecx+94h]
		test	eax, eax
		fnclex
		jge	short loc_40BEC0
		mov	edx, [ebp-90h]
		push	94h
		push	offset dword_4049A0
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40BEC0:				; CODE XREF: .text:0040BEA6j
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+370h]
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		lea	ecx, [ebp-8Ch]
		push	ecx
		push	eax
		mov	[ebp-90h], eax
		call	dword ptr [edx+0E0h]
		test	eax, eax
		fnclex
		jge	short loc_40BF09
		mov	edx, [ebp-90h]
		push	0E0h
		push	offset dword_404960
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40BF09:				; CODE XREF: .text:0040BEEFj
		xor	eax, eax
		cmp	word ptr [ebp-8Ch], 0FFFFh
		lea	ecx, [ebp-20h]
		setz	al
		neg	eax
		mov	[ebp-98h], eax
		call	ebx ; __vbaFreeObj
		cmp	word ptr [ebp-98h], 0
		jz	loc_40C343
		mov	ecx, [esi]
		push	esi
		call	dword ptr [ecx+37Ch]
		lea	edx, [ebp-20h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		push	eax
		mov	[ebp-90h], eax
		call	dword ptr [ecx+1E8h]
		test	eax, eax
		fnclex
		jge	short loc_40BF6E
		mov	edx, [ebp-90h]
		push	1E8h
		push	offset dword_404950
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40BF6E:				; CODE XREF: .text:0040BF54j
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+37Ch]
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		sub	esp, 10h
		mov	[ebp-0C8h], edx
		mov	edx, esp
		mov	ecx, 0Ah
		mov	[ebp-90h], eax
		mov	eax, [ebp-54h]
		mov	[edx], ecx
		mov	ecx, [ebp-4Ch]
		push	offset aAudioDisabled ;	"Audio disabled"
		mov	[edx+4], eax
		mov	eax, 80020004h
		mov	[edx+8], eax
		mov	eax, [ebp-0C8h]
		mov	[edx+0Ch], ecx
		mov	edx, [ebp-90h]
		push	edx
		call	dword ptr [eax+1ECh]
		test	eax, eax
		fnclex
		jge	short loc_40BFE7
		mov	ecx, [ebp-90h]
		push	1ECh
		push	offset dword_404950
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40BFE7:				; CODE XREF: .text:0040BFCDj
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+37Ch]
		push	eax
		lea	eax, [ebp-20h]
		push	eax
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		push	0
		push	eax
		mov	[ebp-90h], eax
		call	dword ptr [ecx+0F4h]
		test	eax, eax
		fnclex
		jge	short loc_40C02B
		mov	edx, [ebp-90h]
		push	0F4h
		push	offset dword_404950
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40C02B:				; CODE XREF: .text:0040C011j
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+37Ch]
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		push	0
		push	eax
		mov	[ebp-90h], eax
		call	dword ptr [edx+94h]
		test	eax, eax
		fnclex
		jge	short loc_40C06F
		mov	ecx, [ebp-90h]
		push	94h
		push	offset dword_404950
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40C06F:				; CODE XREF: .text:0040C055j
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+314h]
		push	eax
		lea	eax, [ebp-20h]
		push	eax
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		push	eax
		mov	[ebp-90h], eax
		call	dword ptr [ecx+1E8h]
		test	eax, eax
		fnclex
		jge	short loc_40C0B1
		mov	edx, [ebp-90h]
		push	1E8h
		push	offset dword_404950
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40C0B1:				; CODE XREF: .text:0040C097j
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+314h]
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		sub	esp, 10h
		mov	[ebp-0CCh], edx
		mov	edx, esp
		mov	ecx, 0Ah
		mov	[ebp-90h], eax
		mov	eax, [ebp-54h]
		mov	[edx], ecx
		mov	ecx, [ebp-4Ch]
		push	offset aNone	; "None"
		mov	[edx+4], eax
		mov	eax, 80020004h
		mov	[edx+8], eax
		mov	eax, [ebp-0CCh]
		mov	[edx+0Ch], ecx
		mov	edx, [ebp-90h]
		push	edx
		call	dword ptr [eax+1ECh]
		test	eax, eax
		fnclex
		jge	short loc_40C12A
		mov	ecx, [ebp-90h]
		push	1ECh
		push	offset dword_404950
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40C12A:				; CODE XREF: .text:0040C110j
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+314h]
		push	eax
		lea	eax, [ebp-20h]
		push	eax
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		push	0
		push	eax
		mov	[ebp-90h], eax
		call	dword ptr [ecx+94h]
		test	eax, eax
		fnclex
		jge	short loc_40C16E
		mov	edx, [ebp-90h]
		push	94h
		push	offset dword_404950
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40C16E:				; CODE XREF: .text:0040C154j
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+314h]
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		push	0
		push	eax
		mov	[ebp-90h], eax
		call	dword ptr [edx+9Ch]
		test	eax, eax
		fnclex
		jge	short loc_40C1B2
		mov	ecx, [ebp-90h]
		push	9Ch
		push	offset dword_404950
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40C1B2:				; CODE XREF: .text:0040C198j
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+3ECh]
		push	eax
		lea	eax, [ebp-20h]
		push	eax
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		push	0
		push	eax
		mov	[ebp-90h], eax
		call	dword ptr [ecx+9Ch]
		test	eax, eax
		fnclex
		jge	short loc_40C1F6
		mov	edx, [ebp-90h]
		push	9Ch
		push	offset dword_404980
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40C1F6:				; CODE XREF: .text:0040C1DCj
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+314h]
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		push	0
		push	eax
		mov	[ebp-90h], eax
		call	dword ptr [edx+0F4h]
		test	eax, eax
		fnclex
		jge	short loc_40C23A
		mov	ecx, [ebp-90h]
		push	0F4h
		push	offset dword_404950
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40C23A:				; CODE XREF: .text:0040C220j
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+40Ch]
		push	eax
		lea	eax, [ebp-20h]
		push	eax
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		push	0
		push	eax
		mov	[ebp-90h], eax
		call	dword ptr [ecx+9Ch]
		test	eax, eax
		fnclex
		jge	short loc_40C27E
		mov	edx, [ebp-90h]
		push	9Ch
		push	offset dword_404980
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40C27E:				; CODE XREF: .text:0040C264j
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		sub	esp, 10h
		mov	ecx, 0Bh
		mov	edx, esp
		xor	eax, eax
		push	80010007h
		push	esi
		mov	[edx], ecx
		mov	ecx, [ebp-54h]
		mov	[edx+4], ecx
		mov	ecx, [esi]
		mov	[edx+8], eax
		mov	eax, [ebp-4Ch]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+44Ch]
		lea	edx, [ebp-20h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdSt
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+3F8h]
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		push	0
		push	eax
		mov	[ebp-90h], eax
		call	dword ptr [edx+9Ch]
		test	eax, eax
		fnclex
		jge	short loc_40C300
		mov	ecx, [ebp-90h]
		push	9Ch
		push	offset dword_404980
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40C300:				; CODE XREF: .text:0040C2E6j
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		sub	esp, 10h
		mov	ecx, 0Bh
		mov	edx, esp
		xor	eax, eax
		push	80010007h
		push	esi
		mov	[edx], ecx
		mov	ecx, [ebp-54h]
		mov	[edx+4], ecx
		mov	ecx, [esi]
		mov	[edx+8], eax
		mov	eax, [ebp-4Ch]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+450h]
		lea	edx, [ebp-20h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdSt
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj

loc_40C343:				; CODE XREF: .text:0040BF2Bj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+374h]
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		lea	ecx, [ebp-8Ch]
		push	ecx
		push	eax
		mov	[ebp-90h], eax
		call	dword ptr [edx+0E0h]
		test	eax, eax
		fnclex
		jge	short loc_40C387
		mov	edx, [ebp-90h]
		push	0E0h
		push	offset dword_404960
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40C387:				; CODE XREF: .text:0040C36Dj
		xor	eax, eax
		cmp	word ptr [ebp-8Ch], 0FFFFh
		lea	ecx, [ebp-20h]
		setz	al
		neg	eax
		mov	[ebp-98h], eax
		call	ebx ; __vbaFreeObj
		cmp	word ptr [ebp-98h], 0
		jz	loc_40C785
		mov	ecx, [esi]
		push	0
		push	2Bh
		push	offset dword_404970
		push	0
		push	0E2h
		push	esi
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-20h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-38h]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-24h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		lea	edx, [ebp-48h]
		push	eax
		push	edx
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaI2Var
		mov	[ebp-18h], eax
		lea	eax, [ebp-24h]
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeObjList
		lea	edx, [ebp-48h]
		lea	eax, [ebp-38h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeVarList
		mov	eax, [ebp-18h]
		add	esp, 18h
		sub	ax, 1
		jo	loc_40C7D3
		mov	[ebp-0B0h], eax
		xor	eax, eax
		mov	[ebp-14h], eax

loc_40C43E:				; CODE XREF: .text:0040C56Dj
		cmp	ax, [ebp-0B0h]
		mov	ecx, [esi]
		push	esi
		jg	loc_40C572
		call	dword ptr [ecx+37Ch]
		lea	edx, [ebp-28h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		mov	ebx, [eax]
		sub	esp, 10h
		mov	[ebp-90h], eax
		mov	eax, esp
		mov	edx, 0Ah
		mov	ecx, 80020004h
		mov	[eax], edx
		mov	edx, [ebp-64h]
		sub	esp, 10h
		mov	[eax+4], edx
		mov	edx, esp
		push	1
		push	2Ch
		mov	[eax+8], ecx
		mov	ecx, [ebp-5Ch]
		push	offset dword_404970
		push	0
		mov	[eax+0Ch], ecx
		mov	eax, 4002h
		mov	ecx, [ebp-4Ch]
		mov	[edx], eax
		mov	eax, [ebp-54h]
		push	0E2h
		mov	[edx+4], eax
		lea	eax, [ebp-14h]
		push	esi
		mov	[edx+8], eax
		mov	[edx+0Ch], ecx
		mov	edx, [esi]
		call	dword ptr [edx+448h]
		push	eax
		lea	eax, [ebp-20h]
		push	eax
		call	edi ; __vbaObjSet
		lea	ecx, [ebp-38h]
		push	eax
		push	ecx
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	edx, [ebp-24h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-48h]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 20h
		push	eax
		call	ds:__vbaStrVarMove
		mov	edx, eax
		lea	ecx, [ebp-1Ch]
		call	ds:__vbaStrMove
		mov	ecx, ebx
		mov	ebx, [ebp-90h]
		push	eax
		push	ebx
		call	dword ptr [ecx+1ECh]
		test	eax, eax
		fnclex
		jge	short loc_40C525
		push	1ECh
		push	offset dword_404950
		push	ebx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40C525:				; CODE XREF: .text:0040C511j
		lea	ecx, [ebp-1Ch]
		call	ds:__vbaFreeStr
		lea	edx, [ebp-28h]
		lea	eax, [ebp-24h]
		push	edx
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		push	3
		call	ds:__vbaFreeObjList
		lea	edx, [ebp-48h]
		lea	eax, [ebp-38h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeVarList
		mov	ebx, ds:__vbaFreeObj
		mov	eax, 1
		add	esp, 1Ch
		add	ax, [ebp-14h]
		jo	loc_40C7D3
		mov	[ebp-14h], eax
		jmp	loc_40C43E
; ---------------------------------------------------------------------------

loc_40C572:				; CODE XREF: .text:0040C448j
		call	dword ptr [ecx+37Ch]
		lea	edx, [ebp-20h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		push	0
		push	eax
		mov	[ebp-90h], eax
		call	dword ptr [ecx+0F4h]
		test	eax, eax
		fnclex
		jge	short loc_40C5AE
		mov	edx, [ebp-90h]
		push	0F4h
		push	offset dword_404950
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40C5AE:				; CODE XREF: .text:0040C594j
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+37Ch]
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		push	0FFFFFFFFh
		push	eax
		mov	[ebp-90h], eax
		call	dword ptr [edx+94h]
		test	eax, eax
		fnclex
		jge	short loc_40C5F2
		mov	ecx, [ebp-90h]
		push	94h
		push	offset dword_404950
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40C5F2:				; CODE XREF: .text:0040C5D8j
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+314h]
		push	eax
		lea	eax, [ebp-20h]
		push	eax
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		push	0FFFFFFFFh
		push	eax
		mov	[ebp-90h], eax
		call	dword ptr [ecx+9Ch]
		test	eax, eax
		fnclex
		jge	short loc_40C636
		mov	edx, [ebp-90h]
		push	9Ch
		push	offset dword_404950
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40C636:				; CODE XREF: .text:0040C61Cj
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+3ECh]
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		push	0FFFFFFFFh
		push	eax
		mov	[ebp-90h], eax
		call	dword ptr [edx+9Ch]
		test	eax, eax
		fnclex
		jge	short loc_40C67A
		mov	ecx, [ebp-90h]
		push	9Ch
		push	offset dword_404980
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40C67A:				; CODE XREF: .text:0040C660j
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+40Ch]
		push	eax
		lea	eax, [ebp-20h]
		push	eax
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		push	0FFFFFFFFh
		push	eax
		mov	[ebp-90h], eax
		call	dword ptr [ecx+9Ch]
		test	eax, eax
		fnclex
		jge	short loc_40C6BE
		mov	edx, [ebp-90h]
		push	9Ch
		push	offset dword_404980
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40C6BE:				; CODE XREF: .text:0040C6A4j
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		sub	esp, 10h
		mov	ecx, 0Bh
		mov	edx, esp
		or	eax, 0FFFFFFFFh
		push	80010007h
		push	esi
		mov	[edx], ecx
		mov	ecx, [ebp-54h]
		mov	[edx+4], ecx
		mov	ecx, [esi]
		mov	[edx+8], eax
		mov	eax, [ebp-4Ch]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+44Ch]
		lea	edx, [ebp-20h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdSt
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+3F8h]
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		push	0FFFFFFFFh
		push	eax
		mov	[ebp-90h], eax
		call	dword ptr [edx+9Ch]
		test	eax, eax
		fnclex
		jge	short loc_40C741
		mov	ecx, [ebp-90h]
		push	9Ch
		push	offset dword_404980
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40C741:				; CODE XREF: .text:0040C727j
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		sub	esp, 10h
		mov	ecx, 0Bh
		mov	edx, esp
		or	eax, 0FFFFFFFFh
		push	80010007h
		push	esi
		mov	[edx], ecx
		mov	ecx, [ebp-54h]
		mov	[edx+4], ecx
		mov	ecx, [esi]
		mov	[edx+8], eax
		mov	eax, [ebp-4Ch]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+450h]
		lea	edx, [ebp-20h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdSt

loc_40C780:				; CODE XREF: .text:0040B988j
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj

loc_40C785:				; CODE XREF: .text:0040C3A9j
		push	offset loc_40C7BE
		jmp	short loc_40C7BD
; ---------------------------------------------------------------------------

loc_40C78C:				; DATA XREF: .text:0040113Co
		lea	ecx, [ebp-1Ch]
		call	ds:__vbaFreeStr
		lea	eax, [ebp-28h]
		lea	ecx, [ebp-24h]
		push	eax
		lea	edx, [ebp-20h]
		push	ecx
		push	edx
		push	3
		call	ds:__vbaFreeObjList
		lea	eax, [ebp-48h]
		lea	ecx, [ebp-38h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeVarList
		add	esp, 1Ch
		retn
; ---------------------------------------------------------------------------

loc_40C7BD:				; CODE XREF: .text:0040B9AAj
					; .text:0040C78Aj
		retn
; ---------------------------------------------------------------------------

loc_40C7BE:				; CODE XREF: .text:loc_40C7BDj
					; DATA XREF: .text:0040B9A5o ...
		mov	ecx, [ebp-10h]
		pop	edi
		pop	esi
		xor	eax, eax
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	8
; ---------------------------------------------------------------------------

loc_40C7D3:				; CODE XREF: .text:0040AD4Ej
					; .text:0040AE7Fj ...
		call	ds:__vbaErrorOverflow
; ---------------------------------------------------------------------------
		align 10h

loc_40C7E0:				; CODE XREF: .text:004087ECj
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 40h
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_401140
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		mov	edx, [esi]
		xor	eax, eax
		push	esi
		mov	[ebp-18h], eax
		mov	[ebp-1Ch], eax
		mov	[ebp-30h], eax
		mov	[ebp-34h], eax
		call	dword ptr [edx+324h]
		mov	edi, ds:__vbaObjSet
		push	eax
		lea	eax, [ebp-18h]
		push	eax
		call	edi ; __vbaObjSet
		mov	ebx, eax
		push	0FFFFFFFFh
		push	ebx
		mov	ecx, [ebx]
		call	dword ptr [ecx+94h]
		test	eax, eax
		fnclex
		jge	short loc_40C869
		push	94h
		push	offset dword_404940
		push	ebx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40C869:				; CODE XREF: .text:0040C855j
		mov	ebx, ds:__vbaFreeObj
		lea	ecx, [ebp-18h]
		call	ebx ; __vbaFreeObj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+414h]
		push	eax
		lea	eax, [ebp-18h]
		push	eax
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		push	offset aPosition000000 ; "Position: 00:00:00.000"
		push	eax
		mov	[ebp-38h], eax
		call	dword ptr [ecx+54h]
		test	eax, eax
		fnclex
		jge	short loc_40C8AA
		mov	edx, [ebp-38h]
		push	54h
		push	offset dword_404980
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40C8AA:				; CODE XREF: .text:0040C896j
		lea	ecx, [ebp-18h]
		call	ebx ; __vbaFreeObj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+410h]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		push	offset aOriginalDurati ; "Original duration: 00:00:00.000"
		push	eax
		mov	[ebp-38h], eax
		call	dword ptr [edx+54h]
		test	eax, eax
		fnclex
		jge	short loc_40C8E5
		mov	ecx, [ebp-38h]
		push	54h
		push	offset dword_404980
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40C8E5:				; CODE XREF: .text:0040C8D1j
		lea	ecx, [ebp-18h]
		call	ebx ; __vbaFreeObj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+408h]
		push	eax
		lea	eax, [ebp-18h]
		push	eax
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		push	offset aActualDuration ; "Actual duration: 00:00:00.000"
		push	eax
		mov	[ebp-38h], eax
		call	dword ptr [ecx+54h]
		test	eax, eax
		fnclex
		jge	short loc_40C920
		mov	edx, [ebp-38h]
		push	54h
		push	offset dword_404980
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40C920:				; CODE XREF: .text:0040C90Cj
		lea	ecx, [ebp-18h]
		call	ebx ; __vbaFreeObj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+418h]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		push	offset aStatusNoVideoL ; "Status: No video loaded"
		push	eax
		mov	[ebp-38h], eax
		call	dword ptr [edx+54h]
		test	eax, eax
		fnclex
		jge	short loc_40C95B
		mov	ecx, [ebp-38h]
		push	54h
		push	offset dword_404980
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40C95B:				; CODE XREF: .text:0040C947j
		lea	ecx, [ebp-18h]
		call	ebx ; __vbaFreeObj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+3F0h]
		push	eax
		lea	eax, [ebp-18h]
		push	eax
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		push	offset aVideoCodec ; "Video codec: "
		push	eax
		mov	[ebp-38h], eax
		call	dword ptr [ecx+54h]
		test	eax, eax
		fnclex
		jge	short loc_40C996
		mov	edx, [ebp-38h]
		push	54h
		push	offset dword_404980
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40C996:				; CODE XREF: .text:0040C982j
		lea	ecx, [ebp-18h]
		call	ebx ; __vbaFreeObj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+404h]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		push	offset aVideoInfo ; "Video info: "
		push	eax
		mov	[ebp-38h], eax
		call	dword ptr [edx+54h]
		test	eax, eax
		fnclex
		jge	short loc_40C9D1
		mov	ecx, [ebp-38h]
		push	54h
		push	offset dword_404980
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40C9D1:				; CODE XREF: .text:0040C9BDj
		lea	ecx, [ebp-18h]
		call	ebx ; __vbaFreeObj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+3F4h]
		push	eax
		lea	eax, [ebp-18h]
		push	eax
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		push	offset aAudioCodec ; "Audio codec: "
		push	eax
		mov	[ebp-38h], eax
		call	dword ptr [ecx+54h]
		test	eax, eax
		fnclex
		jge	short loc_40CA0C
		mov	edx, [ebp-38h]
		push	54h
		push	offset dword_404980
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40CA0C:				; CODE XREF: .text:0040C9F8j
		lea	ecx, [ebp-18h]
		call	ebx ; __vbaFreeObj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+400h]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		push	offset aAudioInfo ; "Audio info: "
		push	eax
		mov	[ebp-38h], eax
		call	dword ptr [edx+54h]
		test	eax, eax
		fnclex
		jge	short loc_40CA47
		mov	ecx, [ebp-38h]
		push	54h
		push	offset dword_404980
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40CA47:				; CODE XREF: .text:0040CA33j
		lea	ecx, [ebp-18h]
		call	ebx ; __vbaFreeObj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+370h]
		push	eax
		lea	eax, [ebp-18h]
		push	eax
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		lea	edx, [ebp-30h]
		push	edx
		push	eax
		mov	[ebp-38h], eax
		call	dword ptr [ecx+0E0h]
		test	eax, eax
		fnclex
		jge	short loc_40CA87
		mov	ecx, [ebp-38h]
		push	0E0h
		push	offset dword_404960
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40CA87:				; CODE XREF: .text:0040CA70j
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+374h]
		push	eax
		lea	eax, [ebp-1Ch]
		push	eax
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		lea	edx, [ebp-34h]
		push	edx
		push	eax
		mov	[ebp-40h], eax
		call	dword ptr [ecx+0E0h]
		test	eax, eax
		fnclex
		jge	short loc_40CAC2
		mov	ecx, [ebp-40h]
		push	0E0h
		push	offset dword_404960
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40CAC2:				; CODE XREF: .text:0040CAABj
		or	eax, 0FFFFFFFFh
		xor	edx, edx
		cmp	[ebp-34h], ax
		setnz	dl
		neg	edx
		xor	ecx, ecx
		cmp	[ebp-30h], ax
		lea	eax, [ebp-18h]
		setnz	cl
		neg	ecx
		and	edx, ecx
		mov	[ebp-48h], edx
		lea	edx, [ebp-1Ch]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeObjList
		mov	ecx, [esi]
		add	esp, 0Ch
		cmp	word ptr [ebp-48h], 0
		push	esi
		jz	short loc_40CB3E
		call	dword ptr [ecx+37Ch]
		lea	edx, [ebp-18h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		push	0FFFFFFFFh
		push	eax
		mov	[ebp-38h], eax
		call	dword ptr [ecx+94h]
		test	eax, eax
		fnclex
		jge	short loc_40CB33
		mov	edx, [ebp-38h]
		push	94h
		push	offset dword_404950
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40CB33:				; CODE XREF: .text:0040CB1Cj
		lea	ecx, [ebp-18h]
		call	ebx ; __vbaFreeObj
		mov	eax, [esi]
		push	0FFFFFFFFh
		jmp	short loc_40CB7D
; ---------------------------------------------------------------------------

loc_40CB3E:				; CODE XREF: .text:0040CAFBj
		call	dword ptr [ecx+37Ch]
		lea	edx, [ebp-18h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		push	0
		push	eax
		mov	[ebp-38h], eax
		call	dword ptr [ecx+94h]
		test	eax, eax
		fnclex
		jge	short loc_40CB74
		mov	edx, [ebp-38h]
		push	94h
		push	offset dword_404950
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40CB74:				; CODE XREF: .text:0040CB5Dj
		lea	ecx, [ebp-18h]
		call	ebx ; __vbaFreeObj
		mov	eax, [esi]
		push	0

loc_40CB7D:				; CODE XREF: .text:0040CB3Cj
		push	esi
		call	dword ptr [eax+704h]
		mov	ecx, [esi]
		push	esi
		call	dword ptr [ecx+314h]
		lea	edx, [ebp-18h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		push	eax
		mov	[ebp-38h], eax
		call	dword ptr [ecx+1E8h]
		test	eax, eax
		fnclex
		jge	short loc_40CBBB
		mov	edx, [ebp-38h]
		push	1E8h
		push	offset dword_404950
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40CBBB:				; CODE XREF: .text:0040CBA4j
		lea	ecx, [ebp-18h]
		call	ebx ; __vbaFreeObj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+314h]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		sub	esp, 10h
		mov	[ebp-54h], edx
		mov	edx, esp
		mov	ecx, 0Ah
		mov	[ebp-38h], eax
		mov	eax, [ebp-28h]
		mov	[edx], ecx
		mov	ecx, [ebp-20h]
		push	offset aNone	; "None"
		mov	[edx+4], eax
		mov	eax, 80020004h
		mov	[edx+8], eax
		mov	eax, [ebp-54h]
		mov	[edx+0Ch], ecx
		mov	edx, [ebp-38h]
		push	edx
		call	dword ptr [eax+1ECh]
		test	eax, eax
		fnclex
		jge	short loc_40CC25
		mov	ecx, [ebp-38h]
		push	1ECh
		push	offset dword_404950
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40CC25:				; CODE XREF: .text:0040CC0Ej
		lea	ecx, [ebp-18h]
		call	ebx ; __vbaFreeObj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+314h]
		push	eax
		lea	eax, [ebp-18h]
		push	eax
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		push	0
		push	eax
		mov	[ebp-38h], eax
		call	dword ptr [ecx+94h]
		test	eax, eax
		fnclex
		jge	short loc_40CC63
		mov	edx, [ebp-38h]
		push	94h
		push	offset dword_404950
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40CC63:				; CODE XREF: .text:0040CC4Cj
		lea	ecx, [ebp-18h]
		call	ebx ; __vbaFreeObj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+314h]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		push	0
		push	eax
		mov	[ebp-38h], eax
		call	dword ptr [edx+0F4h]
		test	eax, eax
		fnclex
		jge	short loc_40CCA1
		mov	ecx, [ebp-38h]
		push	0F4h
		push	offset dword_404950
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40CCA1:				; CODE XREF: .text:0040CC8Aj
		lea	ecx, [ebp-18h]
		call	ebx ; __vbaFreeObj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+310h]
		push	eax
		lea	eax, [ebp-18h]
		push	eax
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		push	0
		push	eax
		mov	[ebp-38h], eax
		call	dword ptr [ecx+8Ch]
		test	eax, eax
		fnclex
		jge	short loc_40CCDF
		mov	edx, [ebp-38h]
		push	8Ch
		push	offset dword_404990
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40CCDF:				; CODE XREF: .text:0040CCC8j
		lea	ecx, [ebp-18h]
		call	ebx ; __vbaFreeObj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+30Ch]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	esi, eax
		push	0
		push	esi
		mov	edx, [esi]
		call	dword ptr [edx+8Ch]
		test	eax, eax
		fnclex
		jge	short loc_40CD19
		push	8Ch
		push	offset dword_404990
		push	esi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40CD19:				; CODE XREF: .text:0040CD05j
		lea	ecx, [ebp-18h]
		call	ebx ; __vbaFreeObj
		mov	dword ptr [ebp-4], 0
		push	offset loc_40CD41
		jmp	short loc_40CD40
; ---------------------------------------------------------------------------

loc_40CD2C:				; DATA XREF: .text:0040114Co
		lea	eax, [ebp-1Ch]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 0Ch
		retn
; ---------------------------------------------------------------------------

loc_40CD40:				; CODE XREF: .text:0040CD2Aj
		retn
; ---------------------------------------------------------------------------

loc_40CD41:				; CODE XREF: .text:loc_40CD40j
					; DATA XREF: .text:0040CD25o
		mov	eax, [ebp+8]
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	8
; ---------------------------------------------------------------------------

loc_40CD60:				; CODE XREF: .text:004087F9j
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 0B4h
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_401158
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		mov	edx, [esi]
		xor	ebx, ebx
		push	esi
		mov	[ebp-18h], ebx
		mov	[ebp-1Ch], ebx
		mov	[ebp-20h], ebx
		mov	[ebp-24h], ebx
		mov	[ebp-34h], ebx
		call	dword ptr [edx+408h]
		push	eax
		lea	eax, [ebp-24h]
		push	eax
		call	ds:__vbaObjSet
		fld	dword ptr [ebp+10h]
		fmul	ds:flt_401150
		mov	edi, eax
		fnstsw	ax
		test	al, 0Dh
		jnz	loc_40CF78
		call	ds:__vbaFpI4
		push	offset aActualDurati_0 ; "Actual duration: "
		mov	[ebp-5Ch], eax
		sub	esp, 10h
		mov	eax, 2
		mov	ecx, esp
		sub	esp, 10h
		mov	dword ptr [ebp-0A4h], 3
		mov	edx, [edi]
		mov	[ecx], eax
		mov	eax, [ebp-40h]
		mov	dword ptr [ebp-9Ch], 1
		mov	[ecx+4], eax
		xor	eax, eax
		mov	[ecx+8], eax
		mov	eax, [ebp-38h]
		mov	[ecx+0Ch], eax
		mov	ecx, esp
		mov	eax, 3
		sub	esp, 10h
		mov	[ecx], eax
		mov	eax, [ebp-60h]
		mov	[ecx+4], eax
		mov	eax, [ebp-5Ch]
		mov	[ecx+8], eax
		mov	eax, [ebp-58h]
		mov	[ecx+0Ch], eax
		mov	ecx, esp
		mov	eax, 3
		sub	esp, 10h
		mov	[ecx], eax
		mov	eax, [ebp-80h]
		mov	[ecx+4], eax
		mov	eax, 1
		mov	[ecx+8], eax
		mov	eax, [ebp-78h]
		mov	[ecx+0Ch], eax
		mov	eax, [ebp-0A4h]
		mov	ecx, esp
		push	4
		push	4Ch
		mov	[ecx], eax
		mov	eax, [ebp-0A0h]
		mov	[ecx+4], eax
		mov	eax, [ebp-9Ch]
		mov	[ecx+8], eax
		mov	eax, [ebp-98h]
		mov	[ecx+0Ch], eax
		mov	ecx, [esi]
		push	esi
		mov	[ebp-0C8h], edx
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-20h]
		push	eax
		push	edx
		call	ds:__vbaObjSet
		push	eax
		lea	eax, [ebp-34h]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 50h
		push	eax
		call	ds:__vbaStrVarMove
		mov	edx, eax
		lea	ecx, [ebp-18h]
		call	ds:__vbaStrMove
		push	eax
		call	ds:__vbaStrCat
		mov	edx, eax
		lea	ecx, [ebp-1Ch]
		call	ds:__vbaStrMove
		mov	ecx, [ebp-0C8h]
		push	eax
		push	edi
		call	dword ptr [ecx+54h]
		cmp	eax, ebx
		fnclex
		jge	short loc_40CEF4
		push	54h
		push	offset dword_404980
		push	edi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40CEF4:				; CODE XREF: .text:0040CEE3j
		lea	edx, [ebp-1Ch]
		lea	eax, [ebp-18h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeStrList
		lea	ecx, [ebp-24h]
		lea	edx, [ebp-20h]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 18h
		lea	ecx, [ebp-34h]
		call	ds:__vbaFreeVar
		mov	[ebp-4], ebx
		wait
		push	offset loc_40CF59
		jmp	short loc_40CF58
; ---------------------------------------------------------------------------

loc_40CF2B:				; DATA XREF: .text:00401164o
		lea	eax, [ebp-1Ch]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeStrList
		lea	edx, [ebp-24h]
		lea	eax, [ebp-20h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 18h
		lea	ecx, [ebp-34h]
		call	ds:__vbaFreeVar
		retn
; ---------------------------------------------------------------------------

loc_40CF58:				; CODE XREF: .text:0040CF29j
		retn
; ---------------------------------------------------------------------------

loc_40CF59:				; CODE XREF: .text:loc_40CF58j
					; DATA XREF: .text:0040CF24o
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	0Ch
; ---------------------------------------------------------------------------

loc_40CF78:				; CODE XREF: .text:0040CDD7j
		jmp	loc_40151C
; ---------------------------------------------------------------------------
		align 10h

loc_40CF80:				; CODE XREF: .text:00408806j
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 170h
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_401168
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		sub	esp, 10h
		mov	eax, 2
		mov	edx, esp
		mov	ecx, [ebp-0B0h]
		xor	ebx, ebx
		push	1
		mov	[edx], eax
		mov	eax, [ebp-0B8h]
		push	0Dh
		push	offset dword_404970
		mov	[edx+4], eax
		push	ebx
		push	0E2h
		push	esi
		mov	[edx+8], ebx
		mov	[ebp-24h], ebx
		mov	[ebp-28h], ebx
		mov	[ebp-2Ch], ebx
		mov	[edx+0Ch], ecx
		mov	edx, [esi]
		mov	[ebp-30h], ebx
		mov	[ebp-34h], ebx
		mov	[ebp-38h], ebx
		mov	[ebp-40h], ebx
		mov	[ebp-44h], ebx
		mov	[ebp-48h], ebx
		mov	[ebp-4Ch], ebx
		mov	[ebp-50h], ebx
		mov	[ebp-54h], ebx
		mov	[ebp-58h], ebx
		mov	[ebp-5Ch], ebx
		mov	[ebp-60h], ebx
		mov	[ebp-64h], ebx
		mov	[ebp-68h], ebx
		mov	[ebp-6Ch], ebx
		mov	[ebp-70h], ebx
		mov	[ebp-74h], ebx
		mov	[ebp-78h], ebx
		mov	[ebp-7Ch], ebx
		mov	[ebp-80h], ebx
		mov	[ebp-84h], ebx
		mov	[ebp-88h], ebx
		mov	[ebp-8Ch], ebx
		mov	[ebp-9Ch], ebx
		mov	[ebp-0ACh], ebx
		mov	[ebp-0FCh], ebx
		mov	[ebp-120h], ebx
		mov	[ebp-124h], ebx
		mov	[ebp-128h], ebx
		mov	[ebp-12Ch], ebx
		call	dword ptr [edx+448h]
		mov	edi, ds:__vbaObjSet
		push	eax
		lea	eax, [ebp-80h]
		push	eax
		call	edi ; __vbaObjSet
		lea	ecx, [ebp-9Ch]
		push	eax
		push	ecx
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	edx, [ebp-84h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-0ACh]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 20h
		push	eax
		call	ds:__vbaI4Var
		lea	ecx, [ebp-84h]
		lea	edx, [ebp-80h]
		push	ecx
		push	edx
		push	2
		mov	[ebp-2Ch], eax
		call	ds:__vbaFreeObjList
		lea	eax, [ebp-0ACh]
		lea	ecx, [ebp-9Ch]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeVarList
		mov	edx, [esi]
		add	esp, 18h
		push	esi
		call	dword ptr [edx+410h]
		push	eax
		lea	eax, [ebp-84h]
		push	eax
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		push	offset aOriginalDura_0 ; "Original duration: "
		sub	esp, 10h
		mov	[ebp-130h], eax
		mov	eax, esp
		mov	ecx, 2
		sub	esp, 10h
		mov	dword ptr [ebp-10Ch], 3
		mov	[eax], ecx
		mov	ecx, [ebp-0B8h]
		mov	dword ptr [ebp-104h], 1
		mov	[ebp-164h], edx
		mov	[eax+4], ecx
		mov	ecx, [ebp-0B0h]
		mov	[eax+8], ebx
		mov	[eax+0Ch], ecx
		mov	ecx, esp
		mov	eax, 4003h
		sub	esp, 10h
		mov	[ecx], eax
		mov	eax, [ebp-0D8h]
		mov	[ecx+4], eax
		lea	eax, [ebp-2Ch]
		mov	[ecx+8], eax
		mov	eax, [ebp-0D0h]
		mov	[ecx+0Ch], eax
		mov	ecx, esp
		mov	eax, 3
		sub	esp, 10h
		mov	[ecx], eax
		mov	eax, [ebp-0E8h]
		mov	[ecx+4], eax
		mov	eax, 1
		mov	[ecx+8], eax
		mov	eax, [ebp-0E0h]
		mov	[ecx+0Ch], eax
		mov	eax, [ebp-10Ch]
		mov	ecx, esp
		push	4
		push	4Ch
		push	esi
		mov	[ecx], eax
		mov	eax, [ebp-108h]
		mov	[ecx+4], eax
		mov	eax, [ebp-104h]
		mov	[ecx+8], eax
		mov	eax, [ebp-100h]
		mov	[ecx+0Ch], eax
		mov	ecx, [esi]
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-80h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-9Ch]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 50h
		push	eax
		call	ds:__vbaStrVarMove
		mov	edx, eax
		lea	ecx, [ebp-44h]
		call	ds:__vbaStrMove
		push	eax
		call	ds:__vbaStrCat
		mov	edx, eax
		lea	ecx, [ebp-48h]
		call	ds:__vbaStrMove
		mov	ebx, [ebp-130h]
		mov	ecx, [ebp-164h]
		push	eax
		push	ebx
		call	dword ptr [ecx+54h]
		test	eax, eax
		fnclex
		jge	short loc_40D231
		push	54h
		push	offset dword_404980
		push	ebx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40D231:				; CODE XREF: .text:0040D220j
		lea	edx, [ebp-48h]
		lea	eax, [ebp-44h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeStrList
		lea	ecx, [ebp-84h]
		lea	edx, [ebp-80h]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 18h
		lea	ecx, [ebp-9Ch]
		call	ds:__vbaFreeVar
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+408h]
		lea	ecx, [ebp-84h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	ebx, [eax]
		push	offset aActualDurati_0 ; "Actual duration: "
		sub	esp, 10h
		mov	[ebp-130h], eax
		mov	eax, esp
		mov	edx, 2
		xor	ecx, ecx
		sub	esp, 10h
		mov	[eax], edx
		mov	edx, [ebp-0B8h]
		mov	dword ptr [ebp-10Ch], 3
		mov	dword ptr [ebp-104h], 1
		mov	[eax+4], edx
		mov	edx, esp
		sub	esp, 10h
		mov	[eax+8], ecx
		mov	ecx, [ebp-0B0h]
		mov	[eax+0Ch], ecx
		mov	eax, 4003h
		mov	ecx, [ebp-0D0h]
		mov	[edx], eax
		mov	eax, [ebp-0D8h]
		mov	[edx+4], eax
		lea	eax, [ebp-2Ch]
		mov	[edx+8], eax
		mov	eax, 3
		mov	[edx+0Ch], ecx
		mov	edx, esp
		mov	ecx, [ebp-0E0h]
		sub	esp, 10h
		mov	[edx], eax
		mov	eax, [ebp-0E8h]
		mov	[edx+4], eax
		mov	eax, 1
		mov	[edx+8], eax
		mov	eax, [ebp-10Ch]
		mov	[edx+0Ch], ecx
		mov	ecx, [ebp-108h]
		mov	edx, esp
		push	4
		push	4Ch
		push	esi
		mov	[edx], eax
		mov	eax, [ebp-104h]
		mov	[edx+4], ecx
		mov	ecx, [ebp-100h]
		mov	[edx+8], eax
		mov	[edx+0Ch], ecx
		mov	edx, [esi]
		call	dword ptr [edx+448h]
		push	eax
		lea	eax, [ebp-80h]
		push	eax
		call	edi ; __vbaObjSet
		lea	ecx, [ebp-9Ch]
		push	eax
		push	ecx
		call	ds:__vbaLateIdCallLd
		add	esp, 50h
		push	eax
		call	ds:__vbaStrVarMove
		mov	edx, eax
		lea	ecx, [ebp-44h]
		call	ds:__vbaStrMove
		push	eax
		call	ds:__vbaStrCat
		mov	edx, eax
		lea	ecx, [ebp-48h]
		call	ds:__vbaStrMove
		mov	edx, ebx
		mov	ebx, [ebp-130h]
		push	eax
		push	ebx
		call	dword ptr [edx+54h]
		test	eax, eax
		fnclex
		jge	short loc_40D397
		push	54h
		push	offset dword_404980
		push	ebx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40D397:				; CODE XREF: .text:0040D386j
		lea	eax, [ebp-48h]
		lea	ecx, [ebp-44h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeStrList
		lea	edx, [ebp-84h]
		lea	eax, [ebp-80h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 18h
		lea	ecx, [ebp-9Ch]
		call	ds:__vbaFreeVar
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		push	1
		push	162h
		mov	[edx], ecx
		mov	ecx, [ebp-0B8h]
		push	esi
		mov	[edx+4], ecx
		mov	ecx, [esi]
		mov	[edx+8], eax
		mov	eax, [ebp-0B0h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-80h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		mov	ebx, ds:__vbaLateIdCallLd
		push	eax
		lea	eax, [ebp-9Ch]
		push	eax
		call	ebx ; __vbaLateIdCallLd
		lea	ecx, [ebp-48h]
		lea	edx, [ebp-44h]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeStrList
		add	esp, 2Ch
		lea	ecx, [ebp-80h]
		call	ds:__vbaFreeObj
		lea	ecx, [ebp-9Ch]
		call	ds:__vbaFreeVar
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		push	1
		push	20h
		mov	[edx], ecx
		mov	ecx, [ebp-0B8h]
		push	offset dword_404970
		push	0
		mov	[edx+4], ecx
		mov	ecx, [esi]
		push	0E2h
		push	esi
		mov	[edx+8], eax
		mov	eax, [ebp-0B0h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-80h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-9Ch]
		push	eax
		call	ebx ; __vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		push	eax
		lea	ecx, [ebp-84h]
		push	ecx
		call	edi ; __vbaObjSet
		lea	edx, [ebp-0ACh]
		push	eax
		push	edx
		call	ebx ; __vbaLateIdCallLd
		add	esp, 20h
		push	eax
		call	ds:__vbaBoolVar
		mov	[ebp-130h], ax
		lea	eax, [ebp-84h]
		lea	ecx, [ebp-80h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeObjList
		lea	edx, [ebp-0ACh]
		lea	eax, [ebp-9Ch]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeVarList
		add	esp, 18h
		cmp	word ptr [ebp-130h], 0
		jz	loc_40DA4C
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		sub	esp, 10h
		mov	dword ptr [ebp-0ECh], 4003h
		mov	[edx], ecx
		mov	ecx, [ebp-0B8h]
		mov	[edx+4], ecx
		mov	ecx, esp
		sub	esp, 10h
		mov	[edx+8], eax
		mov	eax, [ebp-0B0h]
		mov	[edx+0Ch], eax
		mov	edx, [ebp-0D8h]
		mov	eax, 4003h
		mov	[ecx], eax
		lea	eax, [ebp-38h]
		mov	[ecx+4], edx
		mov	edx, [ebp-0ECh]
		mov	[ecx+8], eax
		mov	eax, [ebp-0D0h]
		mov	[ecx+0Ch], eax
		mov	eax, [ebp-0E8h]
		mov	ecx, esp
		push	3
		push	10h
		push	offset dword_404970
		mov	[ecx], edx
		mov	edx, [ebp-0E0h]
		push	0
		push	0E2h
		mov	[ecx+4], eax
		lea	eax, [ebp-24h]
		push	esi
		mov	[ecx+8], eax
		mov	eax, [esi]
		mov	[ecx+0Ch], edx
		call	dword ptr [eax+448h]
		lea	ecx, [ebp-80h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		lea	edx, [ebp-9Ch]
		push	eax
		push	edx
		call	ebx ; __vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		push	eax
		lea	eax, [ebp-84h]
		push	eax
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	ecx, [ebp-84h]
		lea	edx, [ebp-80h]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 48h
		lea	ecx, [ebp-9Ch]
		call	ds:__vbaFreeVar
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		sub	esp, 10h
		mov	dword ptr [ebp-0ECh], 4003h
		mov	[edx], ecx
		mov	ecx, [ebp-0B8h]
		mov	[edx+4], ecx
		mov	ecx, esp
		mov	[edx+8], eax
		mov	eax, [ebp-0B0h]
		mov	[edx+0Ch], eax
		mov	edx, [ebp-0D8h]
		mov	eax, 4003h
		mov	[ecx], eax
		mov	[ecx+4], edx
		mov	edx, [ebp-0ECh]
		lea	eax, [ebp-40h]
		sub	esp, 10h
		mov	[ecx+8], eax
		mov	eax, [ebp-0D0h]
		mov	[ecx+0Ch], eax
		mov	eax, [ebp-0E8h]
		mov	ecx, esp
		push	3
		push	66h
		push	offset dword_404970
		mov	[ecx], edx
		mov	edx, [ebp-0E0h]
		push	0
		push	0E2h
		mov	[ecx+4], eax
		lea	eax, [ebp-34h]
		push	esi
		mov	[ecx+8], eax
		mov	eax, [esi]
		mov	[ecx+0Ch], edx
		call	dword ptr [eax+448h]
		lea	ecx, [ebp-80h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		lea	edx, [ebp-9Ch]
		push	eax
		push	edx
		call	ebx ; __vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		push	eax
		lea	eax, [ebp-84h]
		push	eax
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	ecx, [ebp-84h]
		lea	edx, [ebp-80h]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 48h
		lea	ecx, [ebp-9Ch]
		call	ds:__vbaFreeVar
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, [ebp-0B8h]
		mov	[edx+4], ecx
		mov	ecx, esp
		push	2
		push	39h
		mov	[edx+8], eax
		mov	eax, [ebp-0B0h]
		push	offset dword_404970
		push	0
		mov	[edx+0Ch], eax
		mov	edx, [ebp-0D8h]
		mov	eax, 4004h
		push	0E2h
		mov	[ecx], eax
		lea	eax, [ebp-30h]
		push	esi
		mov	[ecx+4], edx
		mov	[ecx+8], eax
		mov	eax, [ebp-0D0h]
		mov	[ecx+0Ch], eax
		mov	ecx, [esi]
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-80h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-9Ch]
		push	eax
		call	ebx ; __vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-84h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	edx, [ebp-84h]
		lea	eax, [ebp-80h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 38h
		lea	ecx, [ebp-9Ch]
		call	ds:__vbaFreeVar
		mov	ecx, [esi]
		push	esi
		call	dword ptr [ecx+404h]
		lea	edx, [ebp-80h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		mov	ebx, [eax]
		mov	[ebp-130h], eax
		mov	eax, [ebp-38h]
		push	offset aVideoInfo ; "Video info: "
		push	eax
		call	ds:__vbaStrI4
		mov	edx, eax
		lea	ecx, [ebp-44h]
		call	ds:__vbaStrMove
		push	eax
		call	ds:__vbaStrCat
		mov	edx, eax
		lea	ecx, [ebp-48h]
		call	ds:__vbaStrMove
		push	eax
		push	offset dword_404BF0
		call	ds:__vbaStrCat
		mov	edx, eax
		lea	ecx, [ebp-4Ch]
		call	ds:__vbaStrMove
		mov	ecx, [ebp-24h]
		push	eax
		push	ecx
		call	ds:__vbaStrI4
		mov	edx, eax
		lea	ecx, [ebp-50h]
		call	ds:__vbaStrMove
		push	eax
		call	ds:__vbaStrCat
		mov	edx, eax
		lea	ecx, [ebp-54h]
		call	ds:__vbaStrMove
		push	eax
		push	offset aPixels	; " pixels, "
		call	ds:__vbaStrCat
		mov	edx, eax
		lea	ecx, [ebp-58h]
		call	ds:__vbaStrMove
		mov	edx, [ebp-40h]
		push	eax
		push	edx
		call	ds:__vbaStrI4
		mov	edx, eax
		lea	ecx, [ebp-5Ch]
		call	ds:__vbaStrMove
		push	eax
		call	ds:__vbaStrCat
		mov	edx, eax
		lea	ecx, [ebp-60h]
		call	ds:__vbaStrMove
		push	eax
		push	offset dword_404C10
		call	ds:__vbaStrCat
		mov	edx, eax
		lea	ecx, [ebp-64h]
		call	ds:__vbaStrMove
		push	eax
		mov	eax, [ebp-34h]
		push	eax
		call	ds:__vbaStrI4
		mov	edx, eax
		lea	ecx, [ebp-68h]
		call	ds:__vbaStrMove
		push	eax
		call	ds:__vbaStrCat
		mov	edx, eax
		lea	ecx, [ebp-6Ch]
		call	ds:__vbaStrMove
		push	eax
		push	offset asc_404C18 ; ", "
		call	ds:__vbaStrCat
		mov	edx, eax
		lea	ecx, [ebp-70h]
		call	ds:__vbaStrMove
		mov	ecx, [ebp-30h]
		push	eax
		push	ecx
		call	ds:__vbaStrR4
		mov	edx, eax
		lea	ecx, [ebp-74h]
		call	ds:__vbaStrMove
		push	eax
		call	ds:__vbaStrCat
		mov	edx, eax
		lea	ecx, [ebp-78h]
		call	ds:__vbaStrMove
		push	eax
		push	offset aFps	; " fps"
		call	ds:__vbaStrCat
		mov	edx, eax
		lea	ecx, [ebp-7Ch]
		call	ds:__vbaStrMove
		mov	edx, ebx
		mov	ebx, [ebp-130h]
		push	eax
		push	ebx
		call	dword ptr [edx+54h]
		test	eax, eax
		fnclex
		jge	short loc_40D8D2
		push	54h
		push	offset dword_404980
		push	ebx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40D8D2:				; CODE XREF: .text:0040D8C1j
		lea	eax, [ebp-7Ch]
		lea	ecx, [ebp-78h]
		push	eax
		lea	edx, [ebp-74h]
		push	ecx
		lea	eax, [ebp-70h]
		push	edx
		lea	ecx, [ebp-6Ch]
		push	eax
		lea	edx, [ebp-68h]
		push	ecx
		lea	eax, [ebp-64h]
		push	edx
		lea	ecx, [ebp-60h]
		push	eax
		lea	edx, [ebp-5Ch]
		push	ecx
		lea	eax, [ebp-58h]
		push	edx
		lea	ecx, [ebp-54h]
		push	eax
		lea	edx, [ebp-50h]
		push	ecx
		lea	eax, [ebp-4Ch]
		push	edx
		lea	ecx, [ebp-48h]
		push	eax
		lea	edx, [ebp-44h]
		push	ecx
		push	edx
		push	0Fh
		call	ds:__vbaFreeStrList
		add	esp, 40h
		lea	ecx, [ebp-80h]
		call	ds:__vbaFreeObj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+3F0h]
		lea	ecx, [ebp-88h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	ebx, [eax]
		push	offset aVideoCodec ; "Video codec: "
		sub	esp, 10h
		mov	[ebp-130h], eax
		mov	eax, esp
		mov	edx, 2
		push	1
		xor	ecx, ecx
		mov	[eax], edx
		mov	edx, [ebp-0B8h]
		push	3Ah
		push	offset dword_404970
		mov	[eax+4], edx
		mov	edx, [esi]
		push	0
		push	0E2h
		mov	[eax+8], ecx
		mov	ecx, [ebp-0B0h]
		push	esi
		mov	[eax+0Ch], ecx
		call	dword ptr [edx+448h]
		push	eax
		lea	eax, [ebp-80h]
		push	eax
		call	edi ; __vbaObjSet
		lea	ecx, [ebp-9Ch]
		push	eax
		push	ecx
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	edx, [ebp-84h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-0ACh]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 20h
		push	eax
		call	ds:__vbaStrVarMove
		mov	edx, eax
		lea	ecx, [ebp-44h]
		call	ds:__vbaStrMove
		push	eax
		call	ds:__vbaStrCat
		mov	edx, eax
		lea	ecx, [ebp-48h]
		call	ds:__vbaStrMove
		mov	ecx, ebx
		mov	ebx, [ebp-130h]
		push	eax
		push	ebx
		call	dword ptr [ecx+54h]
		test	eax, eax
		fnclex
		jge	short loc_40D9FE
		push	54h
		push	offset dword_404980
		push	ebx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40D9FE:				; CODE XREF: .text:0040D9EDj
		lea	edx, [ebp-48h]
		lea	eax, [ebp-44h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeStrList
		lea	ecx, [ebp-88h]
		lea	edx, [ebp-84h]
		push	ecx
		lea	eax, [ebp-80h]
		push	edx
		push	eax
		push	3
		call	ds:__vbaFreeObjList
		lea	ecx, [ebp-0ACh]
		lea	edx, [ebp-9Ch]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeVarList
		mov	ebx, ds:__vbaLateIdCallLd
		add	esp, 28h
		jmp	loc_40DAD6
; ---------------------------------------------------------------------------

loc_40DA4C:				; CODE XREF: .text:0040D4EBj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+404h]
		lea	ecx, [ebp-80h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		push	offset aVideoInfoNone ;	"Video info: None"
		push	eax
		mov	[ebp-130h], eax
		call	dword ptr [edx+54h]
		test	eax, eax
		fnclex
		jge	short loc_40DA88
		mov	ecx, [ebp-130h]
		push	54h
		push	offset dword_404980
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40DA88:				; CODE XREF: .text:0040DA71j
		lea	ecx, [ebp-80h]
		call	ds:__vbaFreeObj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+3F0h]
		push	eax
		lea	eax, [ebp-80h]
		push	eax
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		push	offset aVideoCodecNotA ; "Video	codec: Not available"
		push	eax
		mov	[ebp-130h], eax
		call	dword ptr [ecx+54h]
		test	eax, eax
		fnclex
		jge	short loc_40DACD
		mov	edx, [ebp-130h]
		push	54h
		push	offset dword_404980
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40DACD:				; CODE XREF: .text:0040DAB6j
		lea	ecx, [ebp-80h]
		call	ds:__vbaFreeObj

loc_40DAD6:				; CODE XREF: .text:0040DA47j
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		push	1
		push	21h
		mov	[edx], ecx
		mov	ecx, [ebp-0B8h]
		push	offset dword_404970
		push	0
		mov	[edx+4], ecx
		mov	ecx, [esi]
		push	0E2h
		push	esi
		mov	[edx+8], eax
		mov	eax, [ebp-0B0h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-80h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-9Ch]
		push	eax
		call	ebx ; __vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-84h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		lea	edx, [ebp-0ACh]
		push	eax
		push	edx
		call	ebx ; __vbaLateIdCallLd
		add	esp, 20h
		push	eax
		call	ds:__vbaBoolVar
		mov	[ebp-130h], ax
		lea	eax, [ebp-84h]
		lea	ecx, [ebp-80h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeObjList
		lea	edx, [ebp-0ACh]
		lea	eax, [ebp-9Ch]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeVarList
		add	esp, 18h
		cmp	word ptr [ebp-130h], 0
		jz	loc_40E6F9
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		push	1
		push	69h
		mov	[edx], ecx
		mov	ecx, [ebp-0B8h]
		push	esi
		mov	[edx+4], ecx
		mov	ecx, [esi]
		mov	[edx+8], eax
		mov	eax, [ebp-0B0h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-80h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		add	esp, 1Ch
		lea	ecx, [ebp-80h]
		call	ds:__vbaFreeObj
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		push	1
		push	70h
		mov	[edx], ecx
		mov	ecx, [ebp-0B8h]
		push	esi
		mov	[edx+4], ecx
		mov	ecx, [esi]
		mov	[edx+8], eax
		mov	eax, [ebp-0B0h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-80h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-9Ch]
		push	eax
		call	ebx ; __vbaLateIdCallLd
		add	esp, 20h
		push	eax
		call	ds:__vbaI4Var
		lea	ecx, [ebp-80h]
		mov	[ebp-20h], eax
		call	ds:__vbaFreeObj
		lea	ecx, [ebp-9Ch]
		call	ds:__vbaFreeVar
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		push	1
		push	6Fh
		mov	[edx], ecx
		mov	ecx, [ebp-0B8h]
		push	esi
		mov	[edx+4], ecx
		mov	ecx, [esi]
		mov	[edx+8], eax
		mov	eax, [ebp-0B0h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-80h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-9Ch]
		push	eax
		call	ebx ; __vbaLateIdCallLd
		add	esp, 20h
		push	eax
		call	ds:__vbaI2Var
		mov	ebx, eax
		lea	ecx, [ebp-80h]
		mov	[ebp-1Ch], ebx
		call	ds:__vbaFreeObj
		lea	ecx, [ebp-9Ch]
		call	ds:__vbaFreeVar
		cmp	bx, 1
		jnz	short loc_40DCAB
		mov	edx, offset aMono ; "Mono"
		jmp	short loc_40DCBB
; ---------------------------------------------------------------------------

loc_40DCAB:				; CODE XREF: .text:0040DCA2j
		cmp	bx, 2
		mov	edx, offset aStereo ; "Stereo"
		jz	short loc_40DCBB
		mov	edx, offset aSurround ;	"Surround"

loc_40DCBB:				; CODE XREF: .text:0040DCA9j
					; .text:0040DCB4j
		lea	ecx, [ebp-28h]
		call	ds:__vbaStrCopy
		mov	ecx, [esi]
		push	esi
		call	dword ptr [ecx+400h]
		lea	edx, [ebp-80h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		mov	ebx, [eax]
		mov	[ebp-130h], eax
		mov	eax, [ebp-20h]
		push	offset aAudioInfo ; "Audio info: "
		push	eax
		call	ds:__vbaStrI4
		mov	edx, eax
		lea	ecx, [ebp-44h]
		call	ds:__vbaStrMove
		push	eax
		call	ds:__vbaStrCat
		mov	edx, eax
		lea	ecx, [ebp-48h]
		call	ds:__vbaStrMove
		push	eax
		push	offset aHz	; " Hz,	"
		call	ds:__vbaStrCat
		mov	edx, eax
		lea	ecx, [ebp-4Ch]
		call	ds:__vbaStrMove
		mov	ecx, [ebp-28h]
		push	eax
		push	ecx
		call	ds:__vbaStrCat
		mov	edx, eax
		lea	ecx, [ebp-50h]
		call	ds:__vbaStrMove
		mov	edx, ebx
		mov	ebx, [ebp-130h]
		push	eax
		push	ebx
		call	dword ptr [edx+54h]
		test	eax, eax
		fnclex
		jge	short loc_40DD57
		push	54h
		push	offset dword_404980
		push	ebx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40DD57:				; CODE XREF: .text:0040DD46j
		lea	eax, [ebp-50h]
		lea	ecx, [ebp-4Ch]
		push	eax
		lea	edx, [ebp-48h]
		push	ecx
		lea	eax, [ebp-44h]
		push	edx
		push	eax
		push	4
		call	ds:__vbaFreeStrList
		add	esp, 14h
		lea	ecx, [ebp-80h]
		call	ds:__vbaFreeObj
		mov	ecx, [esi]
		push	esi
		call	dword ptr [ecx+3F4h]
		lea	edx, [ebp-88h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		mov	ebx, [eax]
		push	offset aAudioCodec ; "Audio codec: "
		sub	esp, 10h
		mov	[ebp-130h], eax
		mov	eax, esp
		mov	edx, 2
		push	1
		xor	ecx, ecx
		mov	[eax], edx
		mov	edx, [ebp-0B8h]
		push	3Bh
		push	offset dword_404970
		mov	[eax+4], edx
		mov	edx, [esi]
		push	0
		push	0E2h
		mov	[eax+8], ecx
		mov	ecx, [ebp-0B0h]
		push	esi
		mov	[eax+0Ch], ecx
		call	dword ptr [edx+448h]
		push	eax
		lea	eax, [ebp-80h]
		push	eax
		call	edi ; __vbaObjSet
		lea	ecx, [ebp-9Ch]
		push	eax
		push	ecx
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	edx, [ebp-84h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-0ACh]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 20h
		push	eax
		call	ds:__vbaStrVarMove
		mov	edx, eax
		lea	ecx, [ebp-44h]
		call	ds:__vbaStrMove
		push	eax
		call	ds:__vbaStrCat
		mov	edx, eax
		lea	ecx, [ebp-48h]
		call	ds:__vbaStrMove
		mov	ecx, ebx
		mov	ebx, [ebp-130h]
		push	eax
		push	ebx
		call	dword ptr [ecx+54h]
		test	eax, eax
		fnclex
		jge	short loc_40DE57
		push	54h
		push	offset dword_404980
		push	ebx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40DE57:				; CODE XREF: .text:0040DE46j
		lea	edx, [ebp-48h]
		lea	eax, [ebp-44h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeStrList
		lea	ecx, [ebp-88h]
		lea	edx, [ebp-84h]
		push	ecx
		lea	eax, [ebp-80h]
		push	edx
		push	eax
		push	3
		call	ds:__vbaFreeObjList
		lea	ecx, [ebp-0ACh]
		lea	edx, [ebp-9Ch]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeVarList
		add	esp, 28h
		cmp	word ptr [ebp-1Ch], 2
		jle	loc_40DFAE
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+390h]
		lea	ecx, [ebp-80h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	ebx, eax
		push	0
		push	ebx
		mov	edx, [ebx]
		call	dword ptr [edx+94h]
		test	eax, eax
		fnclex
		jge	short loc_40DEDA
		push	94h
		push	offset dword_404940
		push	ebx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40DEDA:				; CODE XREF: .text:0040DEC6j
		mov	ebx, ds:__vbaFreeObj
		lea	ecx, [ebp-80h]
		call	ebx ; __vbaFreeObj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+38Ch]
		lea	ecx, [ebp-80h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		push	0
		push	eax
		mov	[ebp-130h], eax
		call	dword ptr [edx+94h]
		test	eax, eax
		fnclex
		jge	short loc_40DF24
		mov	ecx, [ebp-130h]
		push	94h
		push	offset dword_404940
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40DF24:				; CODE XREF: .text:0040DF0Aj
		lea	ecx, [ebp-80h]
		call	ebx ; __vbaFreeObj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+388h]
		push	eax
		lea	eax, [ebp-80h]
		push	eax
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		push	0
		push	eax
		mov	[ebp-130h], eax
		call	dword ptr [ecx+94h]
		test	eax, eax
		fnclex
		jge	short loc_40DF68
		mov	edx, [ebp-130h]
		push	94h
		push	offset dword_404940
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40DF68:				; CODE XREF: .text:0040DF4Ej
		lea	ecx, [ebp-80h]
		call	ebx ; __vbaFreeObj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+384h]
		lea	ecx, [ebp-80h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		push	0
		push	eax
		mov	[ebp-130h], eax
		call	dword ptr [edx+94h]
		test	eax, eax
		fnclex
		jge	loc_40E0B5
		mov	ecx, [ebp-130h]
		push	94h
		push	offset dword_404940
		push	ecx
		jmp	loc_40E0AE
; ---------------------------------------------------------------------------

loc_40DFAE:				; CODE XREF: .text:0040DE9Fj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+390h]
		push	eax
		lea	eax, [ebp-80h]
		push	eax
		call	edi ; __vbaObjSet
		mov	ebx, eax
		push	0FFFFFFFFh
		push	ebx
		mov	ecx, [ebx]
		call	dword ptr [ecx+94h]
		test	eax, eax
		fnclex
		jge	short loc_40DFE3
		push	94h
		push	offset dword_404940
		push	ebx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40DFE3:				; CODE XREF: .text:0040DFCFj
		mov	ebx, ds:__vbaFreeObj
		lea	ecx, [ebp-80h]
		call	ebx ; __vbaFreeObj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+38Ch]
		push	eax
		lea	eax, [ebp-80h]
		push	eax
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		push	0FFFFFFFFh
		push	eax
		mov	[ebp-130h], eax
		call	dword ptr [ecx+94h]
		test	eax, eax
		fnclex
		jge	short loc_40E02D
		mov	edx, [ebp-130h]
		push	94h
		push	offset dword_404940
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40E02D:				; CODE XREF: .text:0040E013j
		lea	ecx, [ebp-80h]
		call	ebx ; __vbaFreeObj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+388h]
		lea	ecx, [ebp-80h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		push	0FFFFFFFFh
		push	eax
		mov	[ebp-130h], eax
		call	dword ptr [edx+94h]
		test	eax, eax
		fnclex
		jge	short loc_40E071
		mov	ecx, [ebp-130h]
		push	94h
		push	offset dword_404940
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40E071:				; CODE XREF: .text:0040E057j
		lea	ecx, [ebp-80h]
		call	ebx ; __vbaFreeObj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+384h]
		push	eax
		lea	eax, [ebp-80h]
		push	eax
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		push	0FFFFFFFFh
		push	eax
		mov	[ebp-130h], eax
		call	dword ptr [ecx+94h]
		test	eax, eax
		fnclex
		jge	short loc_40E0B5
		mov	edx, [ebp-130h]
		push	94h
		push	offset dword_404940
		push	edx

loc_40E0AE:				; CODE XREF: .text:0040DFA9j
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40E0B5:				; CODE XREF: .text:0040DF92j
					; .text:0040E09Bj
		lea	ecx, [ebp-80h]
		call	ebx ; __vbaFreeObj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+370h]
		lea	ecx, [ebp-80h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		lea	ecx, [ebp-120h]
		push	ecx
		push	eax
		mov	[ebp-130h], eax
		call	dword ptr [edx+0E0h]
		test	eax, eax
		fnclex
		jge	short loc_40E0FE
		mov	edx, [ebp-130h]
		push	0E0h
		push	offset dword_404960
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40E0FE:				; CODE XREF: .text:0040E0E4j
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+374h]
		lea	ecx, [ebp-84h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		lea	ecx, [ebp-124h]
		push	ecx
		push	eax
		mov	[ebp-138h], eax
		call	dword ptr [edx+0E0h]
		test	eax, eax
		fnclex
		jge	short loc_40E145
		mov	edx, [ebp-138h]
		push	0E0h
		push	offset dword_404960
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40E145:				; CODE XREF: .text:0040E12Bj
		or	eax, 0FFFFFFFFh
		xor	ecx, ecx
		cmp	[ebp-124h], ax
		setnz	cl
		neg	ecx
		xor	edx, edx
		cmp	[ebp-120h], ax
		lea	eax, [ebp-84h]
		setnz	dl
		neg	edx
		and	ecx, edx
		push	eax
		mov	[ebp-140h], cx
		lea	ecx, [ebp-80h]
		push	ecx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 0Ch
		cmp	word ptr [ebp-140h], 0
		jz	short loc_40E19A
		mov	edx, [esi]
		push	0FFFFFFFFh
		push	esi
		call	dword ptr [edx+704h]
		jmp	short loc_40E1A5
; ---------------------------------------------------------------------------

loc_40E19A:				; CODE XREF: .text:0040E18Bj
		mov	eax, [esi]
		push	0
		push	esi
		call	dword ptr [eax+704h]

loc_40E1A5:				; CODE XREF: .text:0040E198j
		mov	ecx, [esi]
		push	esi
		call	dword ptr [ecx+3F8h]
		lea	edx, [ebp-80h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		push	0FFFFFFFFh
		push	eax
		mov	[ebp-130h], eax
		call	dword ptr [ecx+9Ch]
		test	eax, eax
		fnclex
		jge	short loc_40E1E4
		mov	edx, [ebp-130h]
		push	9Ch
		push	offset dword_404980
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40E1E4:				; CODE XREF: .text:0040E1CAj
		lea	ecx, [ebp-80h]
		call	ebx ; __vbaFreeObj
		sub	esp, 10h
		mov	ecx, 0Bh
		mov	edx, esp
		or	eax, 0FFFFFFFFh
		push	80010007h
		push	esi
		mov	[edx], ecx
		mov	ecx, [ebp-0B8h]
		mov	[edx+4], ecx
		mov	ecx, [esi]
		mov	[edx+8], eax
		mov	eax, [ebp-0B0h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+450h]
		lea	edx, [ebp-80h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdSt
		lea	ecx, [ebp-80h]
		call	ebx ; __vbaFreeObj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+314h]
		lea	ecx, [ebp-80h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	ebx, eax
		push	ebx
		mov	edx, [ebx]
		call	dword ptr [edx+1E8h]
		test	eax, eax
		fnclex
		jge	short loc_40E261
		push	1E8h
		push	offset dword_404950
		push	ebx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40E261:				; CODE XREF: .text:0040E24Dj
		lea	ecx, [ebp-80h]
		call	ds:__vbaFreeObj
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		push	1
		push	58h
		mov	[edx], ecx
		mov	ecx, [ebp-0B8h]
		push	offset dword_404970
		push	0
		mov	[edx+4], ecx
		mov	ecx, [esi]
		push	0E2h
		push	esi
		mov	[edx+8], eax
		mov	eax, [ebp-0B0h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-80h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		mov	ebx, ds:__vbaLateIdCallLd
		push	eax
		lea	eax, [ebp-9Ch]
		push	eax
		call	ebx ; __vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-84h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		lea	edx, [ebp-0ACh]
		push	eax
		push	edx
		call	ebx ; __vbaLateIdCallLd
		add	esp, 20h
		push	eax
		call	ds:__vbaBoolVar
		neg	ax
		sbb	eax, eax
		lea	ecx, [ebp-80h]
		inc	eax
		neg	eax
		mov	[ebp-130h], ax
		lea	eax, [ebp-84h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeObjList
		lea	edx, [ebp-0ACh]
		lea	eax, [ebp-9Ch]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeVarList
		add	esp, 18h
		cmp	word ptr [ebp-130h], 0
		jz	loc_40E429
		mov	ecx, [esi]
		push	esi
		call	dword ptr [ecx+314h]
		lea	edx, [ebp-80h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		sub	esp, 10h
		mov	[ebp-17Ch], edx
		mov	edx, esp
		mov	ecx, 0Ah
		mov	[ebp-130h], eax
		mov	eax, [ebp-0B8h]
		mov	[edx], ecx
		mov	ecx, [ebp-0B0h]
		push	offset aDefault	; "Default"
		mov	[edx+4], eax
		mov	eax, 80020004h
		mov	[edx+8], eax
		mov	eax, [ebp-17Ch]
		mov	[edx+0Ch], ecx
		mov	edx, [ebp-130h]
		push	edx
		call	dword ptr [eax+1ECh]
		test	eax, eax
		fnclex
		jge	short loc_40E3A8
		mov	ecx, [ebp-130h]
		push	1ECh
		push	offset dword_404950
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40E3A8:				; CODE XREF: .text:0040E38Ej
		lea	ecx, [ebp-80h]
		call	ds:__vbaFreeObj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+314h]
		push	eax
		lea	eax, [ebp-80h]
		push	eax
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		push	0
		push	eax
		mov	[ebp-130h], eax
		call	dword ptr [ecx+94h]
		test	eax, eax
		fnclex
		jge	short loc_40E3F0
		mov	edx, [ebp-130h]
		push	94h
		push	offset dword_404950
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40E3F0:				; CODE XREF: .text:0040E3D6j
		lea	ecx, [ebp-80h]
		call	ds:__vbaFreeObj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+314h]
		lea	ecx, [ebp-80h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		push	0
		push	eax
		mov	[ebp-130h], eax
		call	dword ptr [edx+0F4h]
		test	eax, eax
		fnclex
		jge	loc_40E96E
		jmp	loc_40E956
; ---------------------------------------------------------------------------

loc_40E429:				; CODE XREF: .text:0040E328j
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		push	1
		push	59h
		mov	[edx], ecx
		mov	ecx, [ebp-0B8h]
		push	offset dword_404970
		push	0
		mov	[edx+4], ecx
		mov	ecx, [esi]
		push	0E2h
		push	esi
		mov	[edx+8], eax
		mov	eax, [ebp-0B0h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-80h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-9Ch]
		push	eax
		call	ebx ; __vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-84h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		lea	edx, [ebp-0ACh]
		push	eax
		push	edx
		call	ebx ; __vbaLateIdCallLd
		add	esp, 20h
		push	eax
		call	ds:__vbaI4Var
		mov	ecx, eax
		sub	ecx, 1
		jo	loc_40EE8F
		call	ds:__vbaI2I4
		mov	[ebp-158h], eax
		lea	eax, [ebp-84h]
		lea	ecx, [ebp-80h]
		push	eax
		push	ecx
		push	2
		mov	dword ptr [ebp-18h], 0
		call	ds:__vbaFreeObjList
		lea	edx, [ebp-0ACh]
		lea	eax, [ebp-9Ch]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeVarList
		add	esp, 18h

loc_40E4E8:				; CODE XREF: .text:0040E66Bj
		mov	cx, [ebp-158h]
		cmp	[ebp-18h], cx
		jg	loc_40E670
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, [ebp-0B8h]
		mov	[edx+4], ecx
		mov	ecx, esp
		push	2
		push	5Ah
		mov	[edx+8], eax
		mov	eax, [ebp-0B0h]
		push	offset dword_404970
		push	0
		mov	[edx+0Ch], eax
		mov	edx, [ebp-0D8h]
		mov	eax, 3
		push	0E2h
		mov	[ecx], eax
		push	esi
		movsx	eax, word ptr [ebp-18h]
		mov	[ecx+4], edx
		mov	[ecx+8], eax
		mov	eax, [ebp-0D0h]
		mov	[ecx+0Ch], eax
		mov	ecx, [esi]
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-80h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-9Ch]
		push	eax
		call	ebx ; __vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-84h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		lea	edx, [ebp-0ACh]
		push	eax
		push	edx
		call	ebx ; __vbaLateIdCallLd
		mov	eax, [esi]
		add	esp, 30h
		push	esi
		call	dword ptr [eax+314h]
		lea	ecx, [ebp-88h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	ebx, [eax]
		sub	esp, 10h
		mov	[ebp-130h], eax
		mov	eax, esp
		mov	edx, 0Ah
		mov	ecx, 80020004h
		mov	[eax], edx
		mov	edx, [ebp-0F8h]
		mov	[eax+4], edx
		lea	edx, [ebp-0ACh]
		push	edx
		mov	[eax+8], ecx
		mov	ecx, [ebp-0F0h]
		mov	[eax+0Ch], ecx
		call	ds:__vbaStrVarMove
		mov	edx, eax
		lea	ecx, [ebp-44h]
		call	ds:__vbaStrMove
		mov	[ebp-180h], ebx
		mov	ebx, [ebp-130h]
		push	eax
		mov	eax, [ebp-180h]
		push	ebx
		call	dword ptr [eax+1ECh]
		fnclex
		test	eax, eax
		jge	short loc_40E617
		push	1ECh
		push	offset dword_404950
		push	ebx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40E617:				; CODE XREF: .text:0040E603j
		lea	ecx, [ebp-44h]
		call	ds:__vbaFreeStr
		lea	ecx, [ebp-88h]
		lea	edx, [ebp-84h]
		push	ecx
		lea	eax, [ebp-80h]
		push	edx
		push	eax
		push	3
		call	ds:__vbaFreeObjList
		lea	ecx, [ebp-0ACh]
		lea	edx, [ebp-9Ch]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeVarList
		mov	ebx, ds:__vbaLateIdCallLd
		mov	eax, 1
		add	esp, 1Ch
		add	ax, [ebp-18h]
		jo	loc_40EE8F
		mov	[ebp-18h], eax
		jmp	loc_40E4E8
; ---------------------------------------------------------------------------

loc_40E670:				; CODE XREF: .text:0040E4F3j
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+314h]
		lea	ecx, [ebp-80h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		push	0FFFFFFFFh
		push	eax
		mov	[ebp-130h], eax
		call	dword ptr [edx+94h]
		test	eax, eax
		fnclex
		jge	short loc_40E6AF
		mov	ecx, [ebp-130h]
		push	94h
		push	offset dword_404950
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40E6AF:				; CODE XREF: .text:0040E695j
		lea	ecx, [ebp-80h]
		call	ds:__vbaFreeObj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+314h]
		push	eax
		lea	eax, [ebp-80h]
		push	eax
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		push	0
		push	eax
		mov	[ebp-130h], eax
		call	dword ptr [ecx+0F4h]
		test	eax, eax
		fnclex
		jge	loc_40E96E
		mov	edx, [ebp-130h]
		push	0F4h
		push	offset dword_404950
		push	edx
		jmp	loc_40E967
; ---------------------------------------------------------------------------

loc_40E6F9:				; CODE XREF: .text:0040DB86j
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+400h]
		lea	ecx, [ebp-80h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		push	offset aAudioInfoNone ;	"Audio info: None"
		push	eax
		mov	[ebp-130h], eax
		call	dword ptr [edx+54h]
		test	eax, eax
		fnclex
		jge	short loc_40E735
		mov	ecx, [ebp-130h]
		push	54h
		push	offset dword_404980
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40E735:				; CODE XREF: .text:0040E71Ej
		lea	ecx, [ebp-80h]
		call	ds:__vbaFreeObj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+3F4h]
		push	eax
		lea	eax, [ebp-80h]
		push	eax
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		push	offset aAudioCodecNotA ; "Audio	codec: Not available"
		push	eax
		mov	[ebp-130h], eax
		call	dword ptr [ecx+54h]
		test	eax, eax
		fnclex
		jge	short loc_40E77A
		mov	edx, [ebp-130h]
		push	54h
		push	offset dword_404980
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40E77A:				; CODE XREF: .text:0040E763j
		lea	ecx, [ebp-80h]
		call	ds:__vbaFreeObj
		mov	eax, [esi]
		push	0
		push	esi
		call	dword ptr [eax+704h]
		mov	ecx, [esi]
		push	esi
		call	dword ptr [ecx+3F8h]
		lea	edx, [ebp-80h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		push	0
		push	eax
		mov	[ebp-130h], eax
		call	dword ptr [ecx+9Ch]
		test	eax, eax
		fnclex
		jge	short loc_40E7CD
		mov	edx, [ebp-130h]
		push	9Ch
		push	offset dword_404980
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40E7CD:				; CODE XREF: .text:0040E7B3j
		lea	ecx, [ebp-80h]
		call	ds:__vbaFreeObj
		sub	esp, 10h
		mov	ecx, 0Bh
		mov	edx, esp
		xor	eax, eax
		push	80010007h
		push	esi
		mov	[edx], ecx
		mov	ecx, [ebp-0B8h]
		mov	[edx+4], ecx
		mov	ecx, [esi]
		mov	[edx+8], eax
		mov	eax, [ebp-0B0h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+450h]
		lea	edx, [ebp-80h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdSt
		lea	ecx, [ebp-80h]
		call	ds:__vbaFreeObj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+314h]
		lea	ecx, [ebp-80h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		push	eax
		mov	[ebp-130h], eax
		call	dword ptr [edx+1E8h]
		test	eax, eax
		fnclex
		jge	short loc_40E85B
		mov	ecx, [ebp-130h]
		push	1E8h
		push	offset dword_404950
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40E85B:				; CODE XREF: .text:0040E841j
		lea	ecx, [ebp-80h]
		call	ds:__vbaFreeObj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+314h]
		push	eax
		lea	eax, [ebp-80h]
		push	eax
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		sub	esp, 10h
		mov	[ebp-184h], edx
		mov	edx, esp
		mov	ecx, 0Ah
		mov	[ebp-130h], eax
		mov	eax, [ebp-0B8h]
		mov	[edx], ecx
		mov	ecx, [ebp-0B0h]
		push	offset aNone	; "None"
		mov	[edx+4], eax
		mov	eax, 80020004h
		mov	[edx+8], eax
		mov	eax, [ebp-184h]
		mov	[edx+0Ch], ecx
		mov	edx, [ebp-130h]
		push	edx
		call	dword ptr [eax+1ECh]
		test	eax, eax
		fnclex
		jge	short loc_40E8DE
		mov	ecx, [ebp-130h]
		push	1ECh
		push	offset dword_404950
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40E8DE:				; CODE XREF: .text:0040E8C4j
		lea	ecx, [ebp-80h]
		call	ds:__vbaFreeObj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+314h]
		push	eax
		lea	eax, [ebp-80h]
		push	eax
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		push	0
		push	eax
		mov	[ebp-130h], eax
		call	dword ptr [ecx+94h]
		test	eax, eax
		fnclex
		jge	short loc_40E926
		mov	edx, [ebp-130h]
		push	94h
		push	offset dword_404950
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40E926:				; CODE XREF: .text:0040E90Cj
		lea	ecx, [ebp-80h]
		call	ds:__vbaFreeObj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+314h]
		lea	ecx, [ebp-80h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		push	0
		push	eax
		mov	[ebp-130h], eax
		call	dword ptr [edx+0F4h]
		test	eax, eax
		fnclex
		jge	short loc_40E96E

loc_40E956:				; CODE XREF: .text:0040E424j
		mov	ecx, [ebp-130h]
		push	0F4h
		push	offset dword_404950
		push	ecx

loc_40E967:				; CODE XREF: .text:0040E6F4j
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40E96E:				; CODE XREF: .text:0040E41Ej
					; .text:0040E6DDj ...
		lea	ecx, [ebp-80h]
		call	ds:__vbaFreeObj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+378h]
		push	eax
		lea	eax, [ebp-80h]
		push	eax
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		lea	edx, [ebp-120h]
		push	edx
		push	eax
		mov	[ebp-130h], eax
		call	dword ptr [ecx+0E0h]
		test	eax, eax
		fnclex
		jge	short loc_40E9BB
		mov	ecx, [ebp-130h]
		push	0E0h
		push	offset dword_404960
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40E9BB:				; CODE XREF: .text:0040E9A1j
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+36Ch]
		push	eax
		lea	eax, [ebp-84h]
		push	eax
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		lea	edx, [ebp-124h]
		push	edx
		push	eax
		mov	[ebp-138h], eax
		call	dword ptr [ecx+0E0h]
		test	eax, eax
		fnclex
		jge	short loc_40EA02
		mov	ecx, [ebp-138h]
		push	0E0h
		push	offset dword_404960
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40EA02:				; CODE XREF: .text:0040E9E8j
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+364h]
		push	eax
		lea	eax, [ebp-88h]
		push	eax
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		lea	edx, [ebp-128h]
		push	edx
		push	eax
		mov	[ebp-140h], eax
		call	dword ptr [ecx+0E0h]
		test	eax, eax
		fnclex
		jge	short loc_40EA49
		mov	ecx, [ebp-140h]
		push	0E0h
		push	offset dword_404960
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40EA49:				; CODE XREF: .text:0040EA2Fj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+368h]
		push	eax
		lea	eax, [ebp-8Ch]
		push	eax
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		lea	edx, [ebp-12Ch]
		push	edx
		push	eax
		mov	[ebp-148h], eax
		call	dword ptr [ecx+0E0h]
		test	eax, eax
		fnclex
		jge	short loc_40EA90
		mov	ecx, [ebp-148h]
		push	0E0h
		push	offset dword_404960
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40EA90:				; CODE XREF: .text:0040EA76j
		or	eax, 0FFFFFFFFh
		xor	edx, edx
		cmp	[ebp-12Ch], ax
		setz	dl
		neg	edx
		xor	ecx, ecx
		cmp	[ebp-128h], ax
		setz	cl
		neg	ecx
		or	edx, ecx
		xor	ecx, ecx
		cmp	[ebp-124h], ax
		setz	cl
		neg	ecx
		or	edx, ecx
		xor	ecx, ecx
		cmp	[ebp-120h], ax
		lea	eax, [ebp-88h]
		setz	cl
		neg	ecx
		or	edx, ecx
		lea	ecx, [ebp-84h]
		mov	[ebp-150h], edx
		lea	edx, [ebp-8Ch]
		push	edx
		push	eax
		lea	edx, [ebp-80h]
		push	ecx
		push	edx
		push	4
		call	ds:__vbaFreeObjList
		add	esp, 14h
		cmp	word ptr [ebp-150h], 0
		jz	loc_40EBEA
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+6FCh]
		mov	ecx, [esi]
		push	esi
		call	dword ptr [ecx+37Ch]
		lea	edx, [ebp-80h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		push	0FFFFFFFFh
		push	eax
		mov	[ebp-130h], eax
		call	dword ptr [ecx+94h]
		test	eax, eax
		fnclex
		jge	short loc_40EB51
		mov	edx, [ebp-130h]
		push	94h
		push	offset dword_404950
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40EB51:				; CODE XREF: .text:0040EB37j
		lea	ecx, [ebp-80h]
		call	ds:__vbaFreeObj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+310h]
		lea	ecx, [ebp-80h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		push	0FFFFFFFFh
		push	eax
		mov	[ebp-130h], eax
		call	dword ptr [edx+8Ch]
		test	eax, eax
		fnclex
		jge	short loc_40EB99
		mov	ecx, [ebp-130h]
		push	8Ch
		push	offset dword_404990
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40EB99:				; CODE XREF: .text:0040EB7Fj
		lea	ecx, [ebp-80h]
		call	ds:__vbaFreeObj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+30Ch]
		push	eax
		lea	eax, [ebp-80h]
		push	eax
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		push	0FFFFFFFFh
		push	eax
		mov	[ebp-130h], eax
		call	dword ptr [ecx+8Ch]
		test	eax, eax
		fnclex
		jge	short loc_40EBE1
		mov	edx, [ebp-130h]
		push	8Ch
		push	offset dword_404990
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40EBE1:				; CODE XREF: .text:0040EBC7j
		lea	ecx, [ebp-80h]
		call	ds:__vbaFreeObj

loc_40EBEA:				; CODE XREF: .text:0040EB03j
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+370h]
		lea	ecx, [ebp-80h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		lea	ecx, [ebp-120h]
		push	ecx
		push	eax
		mov	[ebp-130h], eax
		call	dword ptr [edx+0E0h]
		test	eax, eax
		fnclex
		jge	short loc_40EC2E
		mov	edx, [ebp-130h]
		push	0E0h
		push	offset dword_404960
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40EC2E:				; CODE XREF: .text:0040EC14j
		xor	eax, eax
		cmp	word ptr [ebp-120h], 0FFFFh
		lea	ecx, [ebp-80h]
		setz	al
		neg	eax
		mov	[ebp-138h], eax
		call	ds:__vbaFreeObj
		cmp	word ptr [ebp-138h], 0
		jz	short loc_40EC9E
		mov	ecx, [esi]
		push	esi
		call	dword ptr [ecx+37Ch]
		lea	edx, [ebp-80h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		push	0
		push	eax
		mov	[ebp-130h], eax
		call	dword ptr [ecx+94h]
		test	eax, eax
		fnclex
		jge	short loc_40EC95
		mov	edx, [ebp-130h]
		push	94h
		push	offset dword_404950
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40EC95:				; CODE XREF: .text:0040EC7Bj
		lea	ecx, [ebp-80h]
		call	ds:__vbaFreeObj

loc_40EC9E:				; CODE XREF: .text:0040EC54j
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		push	1
		push	0Ch
		mov	[edx], ecx
		mov	ecx, [ebp-0B8h]
		push	offset dword_404970
		push	0
		mov	[edx+4], ecx
		mov	ecx, [esi]
		push	0E2h
		push	esi
		mov	[edx+8], eax
		mov	eax, [ebp-0B0h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-80h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-9Ch]
		push	eax
		call	ebx ; __vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-84h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		lea	edx, [ebp-0ACh]
		push	eax
		push	edx
		call	ebx ; __vbaLateIdCallLd
		add	esp, 20h
		push	eax
		call	ds:__vbaBoolVar
		mov	ebx, eax
		lea	eax, [ebp-84h]
		lea	ecx, [ebp-80h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeObjList
		lea	edx, [ebp-0ACh]
		lea	eax, [ebp-9Ch]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeVarList
		add	esp, 18h
		cmp	bx, 0FFFFh
		jnz	short loc_40ED4C
		or	eax, 0FFFFFFFFh
		jmp	short loc_40ED4E
; ---------------------------------------------------------------------------

loc_40ED4C:				; CODE XREF: .text:0040ED45j
		xor	eax, eax

loc_40ED4E:				; CODE XREF: .text:0040ED4Aj
		sub	esp, 10h
		mov	ecx, 0Bh
		mov	edx, esp
		push	8001000Dh
		push	esi
		mov	[edx], ecx
		mov	ecx, [ebp-0B8h]
		mov	[edx+4], ecx
		mov	ecx, [esi]
		mov	[edx+8], eax
		mov	eax, [ebp-0B0h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+444h]
		lea	edx, [ebp-80h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdSt
		lea	ecx, [ebp-80h]
		call	ds:__vbaFreeObj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+324h]
		lea	ecx, [ebp-80h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	esi, eax
		push	0
		push	esi
		mov	edx, [esi]
		call	dword ptr [edx+94h]
		test	eax, eax
		fnclex
		jge	short loc_40EDC9
		push	94h
		push	offset dword_404940
		push	esi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40EDC9:				; CODE XREF: .text:0040EDB5j
		lea	ecx, [ebp-80h]
		call	ds:__vbaFreeObj
		mov	dword ptr [ebp-4], 0
		wait
		push	offset loc_40EE70
		jmp	loc_40EE66
; ---------------------------------------------------------------------------
		lea	eax, [ebp-7Ch]
		lea	ecx, [ebp-78h]
		push	eax
		lea	edx, [ebp-74h]
		push	ecx
		lea	eax, [ebp-70h]
		push	edx
		lea	ecx, [ebp-6Ch]
		push	eax
		lea	edx, [ebp-68h]
		push	ecx
		lea	eax, [ebp-64h]
		push	edx
		lea	ecx, [ebp-60h]
		push	eax
		lea	edx, [ebp-5Ch]
		push	ecx
		lea	eax, [ebp-58h]
		push	edx
		lea	ecx, [ebp-54h]
		push	eax
		lea	edx, [ebp-50h]
		push	ecx
		lea	eax, [ebp-4Ch]
		push	edx
		lea	ecx, [ebp-48h]
		push	eax
		lea	edx, [ebp-44h]
		push	ecx
		push	edx
		push	0Fh
		call	ds:__vbaFreeStrList
		lea	eax, [ebp-8Ch]
		lea	ecx, [ebp-88h]
		push	eax
		lea	edx, [ebp-84h]
		push	ecx
		lea	eax, [ebp-80h]
		push	edx
		push	eax
		push	4
		call	ds:__vbaFreeObjList
		add	esp, 54h
		lea	ecx, [ebp-0ACh]
		lea	edx, [ebp-9Ch]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeVarList
		add	esp, 0Ch
		retn
; ---------------------------------------------------------------------------

loc_40EE66:				; CODE XREF: .text:0040EDDFj
		lea	ecx, [ebp-28h]
		call	ds:__vbaFreeStr
		retn
; ---------------------------------------------------------------------------

loc_40EE70:				; DATA XREF: .text:0040EDDAo
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	0Ch
; ---------------------------------------------------------------------------

loc_40EE8F:				; CODE XREF: .text:0040E4A3j
					; .text:0040E662j
		call	ds:__vbaErrorOverflow
; ---------------------------------------------------------------------------
		align 10h

loc_40EEA0:				; CODE XREF: .text:00408813j
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 54h
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_401178
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		sub	esp, 10h
		mov	ecx, 4003h
		mov	ebx, esp
		xor	eax, eax
		mov	[ebp-18h], eax
		mov	[ebp-1Ch], eax
		mov	[ebx], ecx
		mov	ecx, esp
		mov	[ebp-68h], ebx
		mov	ebx, [ebp-38h]
		mov	[ebp-2Ch], eax
		mov	[ecx+4], ebx
		lea	eax, [esi+34h]
		sub	esp, 10h
		mov	[ecx+8], eax
		mov	eax, [ebp-30h]
		movsx	edx, word ptr [ebp+10h]
		mov	[ecx+0Ch], eax
		mov	eax, [ebp-48h]
		mov	ecx, esp
		mov	edi, 3
		push	2
		push	9
		mov	[ecx], edi
		push	offset dword_4048D8
		push	0
		push	0E0h
		mov	[ecx+4], eax
		mov	eax, [esi]
		push	esi
		mov	[ecx+8], edx
		mov	edx, [ebp-40h]
		mov	[ecx+0Ch], edx
		call	dword ptr [eax+448h]
		mov	edi, ds:__vbaObjSet
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		lea	edx, [ebp-2Ch]
		push	eax
		push	edx
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		push	eax
		lea	eax, [ebp-1Ch]
		push	eax
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	ecx, [ebp-1Ch]
		lea	edx, [ebp-18h]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 38h
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeVar
		sub	esp, 10h
		mov	ecx, 4003h
		mov	edx, esp
		lea	eax, [esi+38h]
		mov	[edx], ecx
		mov	[edx+4], ebx
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		sub	esp, 10h
		mov	[edx+0Ch], eax
		mov	edx, [ebp-48h]
		mov	ecx, esp
		mov	eax, 3
		push	2
		push	9
		mov	[ecx], eax
		push	offset dword_4048D8
		movsx	eax, word ptr [ebp+14h]
		mov	[ecx+4], edx
		push	0
		push	0E0h
		push	esi
		mov	[ecx+8], eax
		mov	eax, [ebp-40h]
		mov	[ecx+0Ch], eax
		mov	ecx, [esi]
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-18h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-2Ch]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-1Ch]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	edx, [ebp-1Ch]
		lea	eax, [ebp-18h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 38h
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeVar
		mov	dword ptr [ebp-4], 0
		push	offset loc_40F057
		jmp	short loc_40F056
; ---------------------------------------------------------------------------

loc_40F039:				; DATA XREF: .text:00401184o
		lea	ecx, [ebp-1Ch]
		lea	edx, [ebp-18h]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 0Ch
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeVar
		retn
; ---------------------------------------------------------------------------

loc_40F056:				; CODE XREF: .text:0040F037j
		retn
; ---------------------------------------------------------------------------

loc_40F057:				; CODE XREF: .text:loc_40F056j
					; DATA XREF: .text:0040F032o
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
		align 10h

loc_40F080:				; CODE XREF: .text:00408820j
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 7Ch
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_401188
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		mov	edx, [esi]
		xor	eax, eax
		push	esi
		mov	[ebp-18h], eax
		mov	[ebp-7Ch], eax
		call	dword ptr [edx+388h]
		mov	ebx, ds:__vbaObjSet
		push	eax
		lea	eax, [ebp-18h]
		push	eax
		call	ebx ; __vbaObjSet
		mov	edi, eax
		lea	edx, [ebp-7Ch]
		push	edx
		push	edi
		mov	ecx, [edi]
		call	dword ptr [ecx+0E0h]
		test	eax, eax
		fnclex
		jge	short loc_40F105
		push	0E0h
		push	offset dword_404940
		push	edi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40F105:				; CODE XREF: .text:0040F0F1j
		mov	edi, ds:__vbaFreeObj
		xor	eax, eax
		cmp	word ptr [ebp-7Ch], 1
		lea	ecx, [ebp-18h]
		setz	al
		neg	eax
		mov	[ebp-88h], eax
		call	edi ; __vbaFreeObj
		xor	eax, eax
		mov	ecx, 2
		cmp	[ebp-88h], ax
		jz	short loc_40F19D
		sub	esp, 10h
		mov	[ebp-40h], eax
		mov	edx, esp
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, [ebp-24h]
		mov	[edx+4], ecx
		mov	ecx, esp
		sub	esp, 10h
		mov	[edx+8], eax
		mov	eax, [ebp-1Ch]
		mov	[edx+0Ch], eax
		mov	edx, [ebp-44h]
		mov	eax, 3
		mov	[ecx], eax
		mov	eax, [ebp-40h]
		mov	[ecx+4], edx
		mov	edx, [ebp-3Ch]
		mov	[ecx+8], eax
		mov	eax, 3
		mov	[ecx+0Ch], edx
		mov	edx, [ebp-64h]
		mov	ecx, esp
		push	3
		push	7Dh
		push	esi
		mov	[ecx], eax
		mov	eax, 1
		mov	[ecx+4], edx
		mov	[ecx+8], eax
		mov	eax, [ebp-5Ch]
		mov	[ecx+0Ch], eax
		mov	ecx, [esi]
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-18h]
		push	eax
		push	edx
		jmp	short loc_40F203
; ---------------------------------------------------------------------------

loc_40F19D:				; CODE XREF: .text:0040F130j
		sub	esp, 10h
		mov	[ebp-60h], eax
		mov	edx, esp
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, [ebp-24h]
		mov	[edx+4], ecx
		mov	ecx, esp
		sub	esp, 10h
		mov	[edx+8], eax
		mov	eax, [ebp-1Ch]
		mov	[edx+0Ch], eax
		mov	edx, [ebp-44h]
		mov	eax, 3
		mov	[ecx], eax
		xor	eax, eax
		mov	[ecx+4], edx
		mov	edx, [ebp-64h]
		mov	[ecx+8], eax
		mov	eax, [ebp-3Ch]
		mov	[ecx+0Ch], eax
		mov	ecx, esp
		mov	eax, 3
		push	3
		mov	[ecx], eax
		mov	eax, [ebp-60h]
		push	7Dh
		push	esi
		mov	[ecx+4], edx
		mov	edx, [ebp-5Ch]
		mov	[ecx+8], eax
		mov	eax, [esi]
		mov	[ecx+0Ch], edx
		call	dword ptr [eax+448h]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx

loc_40F203:				; CODE XREF: .text:0040F19Bj
		call	ebx ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		add	esp, 3Ch
		lea	ecx, [ebp-18h]
		call	edi ; __vbaFreeObj
		mov	dword ptr [ebp-4], 0
		push	offset loc_40F22D
		jmp	short loc_40F22C
; ---------------------------------------------------------------------------

loc_40F222:				; DATA XREF: .text:00401194o
		lea	ecx, [ebp-18h]
		call	ds:__vbaFreeObj
		retn
; ---------------------------------------------------------------------------

loc_40F22C:				; CODE XREF: .text:0040F220j
		retn
; ---------------------------------------------------------------------------

loc_40F22D:				; CODE XREF: .text:loc_40F22Cj
					; DATA XREF: .text:0040F21Bo
		mov	eax, [ebp+8]
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------
		align 10h

loc_40F250:				; CODE XREF: .text:0040882Dj
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 7Ch
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_401198
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		mov	edx, [esi]
		xor	eax, eax
		push	esi
		mov	[ebp-18h], eax
		mov	[ebp-7Ch], eax
		call	dword ptr [edx+38Ch]
		mov	ebx, ds:__vbaObjSet
		push	eax
		lea	eax, [ebp-18h]
		push	eax
		call	ebx ; __vbaObjSet
		mov	edi, eax
		lea	edx, [ebp-7Ch]
		push	edx
		push	edi
		mov	ecx, [edi]
		call	dword ptr [ecx+0E0h]
		test	eax, eax
		fnclex
		jge	short loc_40F2D5
		push	0E0h
		push	offset dword_404940
		push	edi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40F2D5:				; CODE XREF: .text:0040F2C1j
		mov	edi, ds:__vbaFreeObj
		xor	eax, eax
		cmp	word ptr [ebp-7Ch], 1
		lea	ecx, [ebp-18h]
		setz	al
		neg	eax
		mov	[ebp-88h], eax
		call	edi ; __vbaFreeObj
		xor	eax, eax
		mov	ecx, 2
		cmp	[ebp-88h], ax
		jz	short loc_40F367
		sub	esp, 10h
		mov	edx, esp
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, [ebp-24h]
		mov	[edx+4], ecx
		mov	ecx, esp
		sub	esp, 10h
		mov	[edx+8], eax
		mov	eax, [ebp-1Ch]
		mov	[edx+0Ch], eax
		mov	edx, [ebp-44h]
		mov	eax, 3
		mov	[ecx], eax
		mov	[ecx+4], edx
		mov	edx, [ebp-64h]
		mov	[ecx+8], eax
		mov	eax, [ebp-3Ch]
		mov	[ecx+0Ch], eax
		mov	ecx, esp
		mov	eax, 3
		push	3
		mov	[ecx], eax
		mov	eax, 1
		push	7Dh
		push	esi
		mov	[ecx+4], edx
		mov	[ecx+8], eax
		mov	eax, [ebp-5Ch]
		mov	[ecx+0Ch], eax
		mov	ecx, [esi]
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-18h]
		push	eax
		push	edx
		jmp	short loc_40F3CB
; ---------------------------------------------------------------------------

loc_40F367:				; CODE XREF: .text:0040F300j
		sub	esp, 10h
		mov	[ebp-60h], eax
		mov	edx, esp
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, [ebp-24h]
		mov	[edx+4], ecx
		mov	ecx, esp
		sub	esp, 10h
		mov	[edx+8], eax
		mov	eax, [ebp-1Ch]
		mov	[edx+0Ch], eax
		mov	edx, [ebp-44h]
		mov	eax, 3
		mov	[ecx], eax
		mov	[ecx+4], edx
		mov	edx, [ebp-64h]
		mov	[ecx+8], eax
		mov	eax, [ebp-3Ch]
		mov	[ecx+0Ch], eax
		mov	ecx, esp
		mov	eax, 3
		push	3
		mov	[ecx], eax
		mov	eax, [ebp-60h]
		push	7Dh
		push	esi
		mov	[ecx+4], edx
		mov	edx, [ebp-5Ch]
		mov	[ecx+8], eax
		mov	eax, [esi]
		mov	[ecx+0Ch], edx
		call	dword ptr [eax+448h]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx

loc_40F3CB:				; CODE XREF: .text:0040F365j
		call	ebx ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		add	esp, 3Ch
		lea	ecx, [ebp-18h]
		call	edi ; __vbaFreeObj
		mov	dword ptr [ebp-4], 0
		push	offset loc_40F3F5
		jmp	short loc_40F3F4
; ---------------------------------------------------------------------------

loc_40F3EA:				; DATA XREF: .text:004011A4o
		lea	ecx, [ebp-18h]
		call	ds:__vbaFreeObj
		retn
; ---------------------------------------------------------------------------

loc_40F3F4:				; CODE XREF: .text:0040F3E8j
		retn
; ---------------------------------------------------------------------------

loc_40F3F5:				; CODE XREF: .text:loc_40F3F4j
					; DATA XREF: .text:0040F3E3o
		mov	eax, [ebp+8]
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------
		align 10h

loc_40F420:				; CODE XREF: .text:0040883Aj
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 1Ch
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_4011A8
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		mov	edx, [esi]
		xor	eax, eax
		push	esi
		mov	[ebp-18h], eax
		mov	[ebp-1Ch], eax
		call	dword ptr [edx+324h]
		mov	ebx, ds:__vbaObjSet
		push	eax
		lea	eax, [ebp-18h]
		push	eax
		call	ebx ; __vbaObjSet
		mov	edi, eax
		lea	edx, [ebp-1Ch]
		push	edx
		push	edi
		mov	ecx, [edi]
		call	dword ptr [ecx+0E0h]
		test	eax, eax
		fnclex
		jge	short loc_40F4A5
		push	0E0h
		push	offset dword_404940
		push	edi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40F4A5:				; CODE XREF: .text:0040F491j
		xor	eax, eax
		cmp	word ptr [ebp-1Ch], 1
		lea	ecx, [ebp-18h]
		setz	al
		neg	eax
		mov	edi, eax
		call	ds:__vbaFreeObj
		mov	ecx, [esi]
		push	esi
		test	di, di
		jz	short loc_40F4E6
		call	dword ptr [ecx+328h]
		lea	edx, [ebp-18h]
		push	eax
		push	edx
		call	ebx ; __vbaObjSet
		mov	esi, eax
		push	0FFFFFFFFh
		push	esi
		mov	eax, [esi]
		call	dword ptr [eax+9Ch]
		test	eax, eax
		fnclex
		jge	short loc_40F518
		jmp	short loc_40F506
; ---------------------------------------------------------------------------

loc_40F4E6:				; CODE XREF: .text:0040F4C2j
		call	dword ptr [ecx+328h]
		lea	edx, [ebp-18h]
		push	eax
		push	edx
		call	ebx ; __vbaObjSet
		mov	esi, eax
		push	0
		push	esi
		mov	eax, [esi]
		call	dword ptr [eax+9Ch]
		test	eax, eax
		fnclex
		jge	short loc_40F518

loc_40F506:				; CODE XREF: .text:0040F4E4j
		push	9Ch
		push	offset dword_404930
		push	esi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40F518:				; CODE XREF: .text:0040F4E2j
					; .text:0040F504j
		lea	ecx, [ebp-18h]
		call	ds:__vbaFreeObj
		mov	dword ptr [ebp-4], 0
		push	offset loc_40F53A
		jmp	short loc_40F539
; ---------------------------------------------------------------------------

loc_40F52F:				; DATA XREF: .text:004011B4o
		lea	ecx, [ebp-18h]
		call	ds:__vbaFreeObj
		retn
; ---------------------------------------------------------------------------

loc_40F539:				; CODE XREF: .text:0040F52Dj
		retn
; ---------------------------------------------------------------------------

loc_40F53A:				; CODE XREF: .text:loc_40F539j
					; DATA XREF: .text:0040F528o
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------
		align 10h

loc_40F560:				; CODE XREF: .text:00408847j
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 7Ch
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_4011B8
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		mov	edx, [esi]
		xor	eax, eax
		push	esi
		mov	[ebp-18h], eax
		mov	[ebp-7Ch], eax
		call	dword ptr [edx+384h]
		mov	ebx, ds:__vbaObjSet
		push	eax
		lea	eax, [ebp-18h]
		push	eax
		call	ebx ; __vbaObjSet
		mov	edi, eax
		lea	edx, [ebp-7Ch]
		push	edx
		push	edi
		mov	ecx, [edi]
		call	dword ptr [ecx+0E0h]
		test	eax, eax
		fnclex
		jge	short loc_40F5E5
		push	0E0h
		push	offset dword_404940
		push	edi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40F5E5:				; CODE XREF: .text:0040F5D1j
		mov	edi, ds:__vbaFreeObj
		xor	eax, eax
		cmp	word ptr [ebp-7Ch], 1
		lea	ecx, [ebp-18h]
		setz	al
		neg	eax
		mov	[ebp-88h], eax
		call	edi ; __vbaFreeObj
		xor	eax, eax
		mov	ecx, 2
		cmp	[ebp-88h], ax
		jz	short loc_40F67C
		sub	esp, 10h
		mov	edx, esp
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, [ebp-24h]
		mov	[edx+4], ecx
		mov	ecx, esp
		sub	esp, 10h
		mov	[edx+8], eax
		mov	eax, [ebp-1Ch]
		mov	[edx+0Ch], eax
		mov	edx, [ebp-44h]
		mov	eax, 3
		mov	[ecx], eax
		mov	eax, 4
		mov	[ecx+4], edx
		mov	edx, [ebp-64h]
		mov	[ecx+8], eax
		mov	eax, [ebp-3Ch]
		mov	[ecx+0Ch], eax
		mov	ecx, esp
		mov	eax, 3
		push	3
		mov	[ecx], eax
		mov	eax, 1
		push	7Dh
		push	esi
		mov	[ecx+4], edx
		mov	[ecx+8], eax
		mov	eax, [ebp-5Ch]
		mov	[ecx+0Ch], eax
		mov	ecx, [esi]
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-18h]
		push	eax
		push	edx
		jmp	short loc_40F6E5
; ---------------------------------------------------------------------------

loc_40F67C:				; CODE XREF: .text:0040F610j
		sub	esp, 10h
		mov	[ebp-60h], eax
		mov	edx, esp
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, [ebp-24h]
		mov	[edx+4], ecx
		mov	ecx, esp
		sub	esp, 10h
		mov	[edx+8], eax
		mov	eax, [ebp-1Ch]
		mov	[edx+0Ch], eax
		mov	edx, [ebp-44h]
		mov	eax, 3
		mov	[ecx], eax
		mov	eax, 4
		mov	[ecx+4], edx
		mov	edx, [ebp-64h]
		mov	[ecx+8], eax
		mov	eax, [ebp-3Ch]
		mov	[ecx+0Ch], eax
		mov	ecx, esp
		mov	eax, 3
		push	3
		mov	[ecx], eax
		mov	eax, [ebp-60h]
		push	7Dh
		push	esi
		mov	[ecx+4], edx
		mov	edx, [ebp-5Ch]
		mov	[ecx+8], eax
		mov	eax, [esi]
		mov	[ecx+0Ch], edx
		call	dword ptr [eax+448h]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx

loc_40F6E5:				; CODE XREF: .text:0040F67Aj
		call	ebx ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		add	esp, 3Ch
		lea	ecx, [ebp-18h]
		call	edi ; __vbaFreeObj
		mov	dword ptr [ebp-4], 0
		push	offset loc_40F70F
		jmp	short loc_40F70E
; ---------------------------------------------------------------------------

loc_40F704:				; DATA XREF: .text:004011C4o
		lea	ecx, [ebp-18h]
		call	ds:__vbaFreeObj
		retn
; ---------------------------------------------------------------------------

loc_40F70E:				; CODE XREF: .text:0040F702j
		retn
; ---------------------------------------------------------------------------

loc_40F70F:				; CODE XREF: .text:loc_40F70Ej
					; DATA XREF: .text:0040F6FDo
		mov	eax, [ebp+8]
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------
		align 10h

loc_40F730:				; CODE XREF: .text:00408854j
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 70h
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_4011C8
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		mov	edx, [esi]
		xor	eax, eax
		push	esi
		mov	[ebp-18h], eax
		mov	[ebp-1Ch], eax
		mov	[ebp-20h], eax
		mov	[ebp-30h], eax
		mov	[ebp-74h], eax
		call	dword ptr [edx+320h]
		mov	ebx, ds:__vbaObjSet
		push	eax
		lea	eax, [ebp-18h]
		push	eax
		call	ebx ; __vbaObjSet
		mov	edi, eax
		lea	edx, [ebp-74h]
		push	edx
		push	edi
		mov	ecx, [edi]
		call	dword ptr [ecx+0E0h]
		test	eax, eax
		fnclex
		jge	short loc_40F7BE
		push	0E0h
		push	offset dword_404940
		push	edi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40F7BE:				; CODE XREF: .text:0040F7AAj
		sub	esp, 10h
		mov	edx, 2
		mov	edi, esp
		sub	esp, 10h
		movsx	eax, word ptr [ebp-74h]
		mov	[edi], edx
		mov	edx, [ebp-3Ch]
		mov	ecx, 3
		mov	[edi+4], edx
		xor	edx, edx
		mov	[edi+8], edx
		mov	edx, [ebp-34h]
		mov	[edi+0Ch], edx
		mov	edx, esp
		push	2
		push	35h
		mov	[edx], ecx
		mov	ecx, [ebp-5Ch]
		push	offset dword_404970
		push	0
		mov	[edx+4], ecx
		mov	ecx, [esi]
		push	0E2h
		push	esi
		mov	[edx+8], eax
		mov	eax, [ebp-54h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	ebx ; __vbaObjSet
		push	eax
		lea	eax, [ebp-30h]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		call	ebx ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	edx, [ebp-20h]
		lea	eax, [ebp-1Ch]
		push	edx
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		push	3
		call	ds:__vbaFreeObjList
		add	esp, 3Ch
		lea	ecx, [ebp-30h]
		call	ds:__vbaFreeVar
		mov	dword ptr [ebp-4], 0
		push	offset loc_40F88D
		jmp	short loc_40F88C
; ---------------------------------------------------------------------------

loc_40F86B:				; DATA XREF: .text:004011D4o
		lea	edx, [ebp-20h]
		lea	eax, [ebp-1Ch]
		push	edx
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		push	3
		call	ds:__vbaFreeObjList
		add	esp, 10h
		lea	ecx, [ebp-30h]
		call	ds:__vbaFreeVar
		retn
; ---------------------------------------------------------------------------

loc_40F88C:				; CODE XREF: .text:0040F869j
		retn
; ---------------------------------------------------------------------------

loc_40F88D:				; CODE XREF: .text:loc_40F88Cj
					; DATA XREF: .text:0040F864o
		mov	eax, [ebp+8]
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------
		align 10h

loc_40F8B0:				; CODE XREF: .text:00408861j
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 7Ch
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_4011D8
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		mov	edx, [esi]
		xor	eax, eax
		push	esi
		mov	[ebp-18h], eax
		mov	[ebp-7Ch], eax
		call	dword ptr [edx+390h]
		mov	ebx, ds:__vbaObjSet
		push	eax
		lea	eax, [ebp-18h]
		push	eax
		call	ebx ; __vbaObjSet
		mov	edi, eax
		lea	edx, [ebp-7Ch]
		push	edx
		push	edi
		mov	ecx, [edi]
		call	dword ptr [ecx+0E0h]
		test	eax, eax
		fnclex
		jge	short loc_40F935
		push	0E0h
		push	offset dword_404940
		push	edi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40F935:				; CODE XREF: .text:0040F921j
		mov	edi, ds:__vbaFreeObj
		xor	eax, eax
		cmp	word ptr [ebp-7Ch], 1
		lea	ecx, [ebp-18h]
		setz	al
		neg	eax
		mov	[ebp-88h], eax
		call	edi ; __vbaFreeObj
		xor	eax, eax
		mov	ecx, 2
		cmp	[ebp-88h], ax
		jz	short loc_40F9CC
		sub	esp, 10h
		mov	edx, esp
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, [ebp-24h]
		mov	[edx+4], ecx
		mov	ecx, esp
		sub	esp, 10h
		mov	[edx+8], eax
		mov	eax, [ebp-1Ch]
		mov	[edx+0Ch], eax
		mov	edx, [ebp-44h]
		mov	eax, 3
		mov	[ecx], eax
		mov	eax, 8
		mov	[ecx+4], edx
		mov	edx, [ebp-64h]
		mov	[ecx+8], eax
		mov	eax, [ebp-3Ch]
		mov	[ecx+0Ch], eax
		mov	ecx, esp
		mov	eax, 3
		push	3
		mov	[ecx], eax
		mov	eax, 1
		push	7Dh
		push	esi
		mov	[ecx+4], edx
		mov	[ecx+8], eax
		mov	eax, [ebp-5Ch]
		mov	[ecx+0Ch], eax
		mov	ecx, [esi]
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-18h]
		push	eax
		push	edx
		jmp	short loc_40FA35
; ---------------------------------------------------------------------------

loc_40F9CC:				; CODE XREF: .text:0040F960j
		sub	esp, 10h
		mov	[ebp-60h], eax
		mov	edx, esp
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, [ebp-24h]
		mov	[edx+4], ecx
		mov	ecx, esp
		sub	esp, 10h
		mov	[edx+8], eax
		mov	eax, [ebp-1Ch]
		mov	[edx+0Ch], eax
		mov	edx, [ebp-44h]
		mov	eax, 3
		mov	[ecx], eax
		mov	eax, 8
		mov	[ecx+4], edx
		mov	edx, [ebp-64h]
		mov	[ecx+8], eax
		mov	eax, [ebp-3Ch]
		mov	[ecx+0Ch], eax
		mov	ecx, esp
		mov	eax, 3
		push	3
		mov	[ecx], eax
		mov	eax, [ebp-60h]
		push	7Dh
		push	esi
		mov	[ecx+4], edx
		mov	edx, [ebp-5Ch]
		mov	[ecx+8], eax
		mov	eax, [esi]
		mov	[ecx+0Ch], edx
		call	dword ptr [eax+448h]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx

loc_40FA35:				; CODE XREF: .text:0040F9CAj
		call	ebx ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		add	esp, 3Ch
		lea	ecx, [ebp-18h]
		call	edi ; __vbaFreeObj
		mov	dword ptr [ebp-4], 0
		push	offset loc_40FA5F
		jmp	short loc_40FA5E
; ---------------------------------------------------------------------------

loc_40FA54:				; DATA XREF: .text:004011E4o
		lea	ecx, [ebp-18h]
		call	ds:__vbaFreeObj
		retn
; ---------------------------------------------------------------------------

loc_40FA5E:				; CODE XREF: .text:0040FA52j
		retn
; ---------------------------------------------------------------------------

loc_40FA5F:				; CODE XREF: .text:loc_40FA5Ej
					; DATA XREF: .text:0040FA4Do
		mov	eax, [ebp+8]
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------
		align 10h

loc_40FA80:				; CODE XREF: .text:0040886Ej
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 8Ch
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_4011E8
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		mov	edx, [esi]
		xor	ebx, ebx
		push	esi
		mov	[ebp-18h], ebx
		mov	[ebp-1Ch], ebx
		mov	[ebp-20h], ebx
		mov	[ebp-30h], ebx
		mov	[ebp-40h], ebx
		mov	[ebp-60h], ebx
		mov	[ebp-74h], ebx
		mov	[ebp-78h], ebx
		mov	[ebp-7Ch], ebx
		call	dword ptr [edx+378h]
		mov	edi, ds:__vbaObjSet
		push	eax
		lea	eax, [ebp-18h]
		push	eax
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		lea	edx, [ebp-74h]
		push	edx
		push	eax
		mov	[ebp-80h], eax
		call	dword ptr [ecx+0E0h]
		cmp	eax, ebx
		fnclex
		jge	short loc_40FB21
		mov	ecx, [ebp-80h]
		push	0E0h
		push	offset dword_404960
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40FB21:				; CODE XREF: .text:0040FB0Aj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+36Ch]
		push	eax
		lea	eax, [ebp-1Ch]
		push	eax
		call	edi ; __vbaObjSet
		mov	ebx, eax
		lea	edx, [ebp-78h]
		push	edx
		push	ebx
		mov	ecx, [ebx]
		call	dword ptr [ecx+0E0h]
		test	eax, eax
		fnclex
		jge	short loc_40FB58
		push	0E0h
		push	offset dword_404960
		push	ebx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40FB58:				; CODE XREF: .text:0040FB44j
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+368h]
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	ebx, eax
		lea	eax, [ebp-7Ch]
		push	eax
		push	ebx
		mov	edx, [ebx]
		call	dword ptr [edx+0E0h]
		test	eax, eax
		fnclex
		jge	short loc_40FB8F
		push	0E0h
		push	offset dword_404960
		push	ebx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40FB8F:				; CODE XREF: .text:0040FB7Bj
		or	eax, 0FFFFFFFFh
		xor	ebx, ebx
		cmp	[ebp-7Ch], ax
		setz	bl
		neg	ebx
		xor	ecx, ecx
		cmp	[ebp-78h], ax
		setz	cl
		neg	ecx
		or	ebx, ecx
		xor	edx, edx
		cmp	[ebp-74h], ax
		lea	eax, [ebp-20h]
		lea	ecx, [ebp-1Ch]
		push	eax
		setz	dl
		neg	edx
		or	ebx, edx
		lea	edx, [ebp-18h]
		push	ecx
		push	edx
		push	3
		call	ds:__vbaFreeObjList
		add	esp, 10h
		test	bx, bx
		jz	loc_40FC7F
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+37Ch]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	ebx, eax
		lea	eax, [ebp-74h]
		push	eax
		push	ebx
		mov	edx, [ebx]
		call	dword ptr [edx+0F0h]
		test	eax, eax
		fnclex
		jge	short loc_40FC0E
		push	0F0h
		push	offset dword_404950
		push	ebx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40FC0E:				; CODE XREF: .text:0040FBFAj
		mov	cx, [ebp-74h]
		sub	esp, 10h
		mov	eax, 2
		mov	[ebp-58h], cx
		mov	edx, esp
		mov	ecx, eax
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, [ebp-3Ch]
		mov	[edx+4], ecx
		xor	ecx, ecx
		mov	[edx+8], ecx
		mov	ecx, [ebp-34h]
		mov	[edx+0Ch], ecx
		mov	ecx, [ebp-58h]
		mov	edx, esp
		push	2
		push	12Eh
		push	esi
		mov	[edx], eax
		mov	eax, [ebp-5Ch]
		mov	[edx+4], eax
		mov	eax, [ebp-54h]
		mov	[edx+8], ecx
		mov	ecx, [esi]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	eax, [ebp-1Ch]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 38h

loc_40FC7F:				; CODE XREF: .text:0040FBD1j
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+374h]
		push	eax
		lea	eax, [ebp-18h]
		push	eax
		call	edi ; __vbaObjSet
		mov	ebx, eax
		lea	edx, [ebp-74h]
		push	edx
		push	ebx
		mov	ecx, [ebx]
		call	dword ptr [ecx+0E0h]
		test	eax, eax
		fnclex
		jge	short loc_40FCB6
		push	0E0h
		push	offset dword_404960
		push	ebx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40FCB6:				; CODE XREF: .text:0040FCA2j
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+364h]
		lea	ecx, [ebp-1Ch]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	ebx, eax
		lea	eax, [ebp-78h]
		push	eax
		push	ebx
		mov	edx, [ebx]
		call	dword ptr [edx+0E0h]
		test	eax, eax
		fnclex
		jge	short loc_40FCED
		push	0E0h
		push	offset dword_404960
		push	ebx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40FCED:				; CODE XREF: .text:0040FCD9j
		or	eax, 0FFFFFFFFh
		xor	ebx, ebx
		cmp	[ebp-78h], ax
		lea	edx, [ebp-1Ch]
		push	edx
		setz	bl
		neg	ebx
		xor	ecx, ecx
		cmp	[ebp-74h], ax
		lea	eax, [ebp-18h]
		setz	cl
		neg	ecx
		push	eax
		push	2
		or	ebx, ecx
		call	ds:__vbaFreeObjList
		add	esp, 0Ch
		test	bx, bx
		jz	loc_40FDFE
		mov	ecx, [esi]
		push	esi
		call	dword ptr [ecx+37Ch]
		lea	edx, [ebp-18h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		mov	ebx, eax
		lea	ecx, [ebp-74h]
		push	ecx
		push	ebx
		mov	eax, [ebx]
		call	dword ptr [eax+0F0h]
		test	eax, eax
		fnclex
		jge	short loc_40FD5B
		push	0F0h
		push	offset dword_404950
		push	ebx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40FD5B:				; CODE XREF: .text:0040FD47j
		mov	dx, [ebp-74h]
		sub	esp, 10h
		mov	[ebp-58h], dx
		mov	eax, 2
		mov	edx, esp
		mov	ecx, eax
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, [ebp-3Ch]
		mov	[edx+4], ecx
		xor	ecx, ecx
		mov	[edx+8], ecx
		mov	ecx, [ebp-34h]
		mov	[edx+0Ch], ecx
		mov	ecx, [ebp-58h]
		mov	edx, esp
		push	2
		push	2Dh
		push	offset dword_404970
		mov	[edx], eax
		mov	eax, [ebp-5Ch]
		push	0
		push	0E2h
		mov	[edx+4], eax
		mov	eax, [ebp-54h]
		push	esi
		mov	[edx+8], ecx
		mov	ecx, [esi]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-30h]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	edx, [ebp-20h]
		lea	eax, [ebp-1Ch]
		push	edx
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		push	3
		call	ds:__vbaFreeObjList
		add	esp, 3Ch
		lea	ecx, [ebp-30h]
		call	ds:__vbaFreeVar

loc_40FDFE:				; CODE XREF: .text:0040FD1Ej
		mov	dword ptr [ebp-4], 0
		push	offset loc_40FE2E
		jmp	short loc_40FE2D
; ---------------------------------------------------------------------------

loc_40FE0C:				; DATA XREF: .text:004011F4o
		lea	edx, [ebp-20h]
		lea	eax, [ebp-1Ch]
		push	edx
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		push	3
		call	ds:__vbaFreeObjList
		add	esp, 10h
		lea	ecx, [ebp-30h]
		call	ds:__vbaFreeVar
		retn
; ---------------------------------------------------------------------------

loc_40FE2D:				; CODE XREF: .text:0040FE0Aj
		retn
; ---------------------------------------------------------------------------

loc_40FE2E:				; CODE XREF: .text:loc_40FE2Dj
					; DATA XREF: .text:0040FE05o
		mov	eax, [ebp+8]
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------
		align 10h

loc_40FE50:				; CODE XREF: .text:0040887Bj
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 74h
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_4011F8
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		mov	edx, [esi]
		xor	eax, eax
		push	esi
		mov	[ebp-18h], eax
		mov	[ebp-1Ch], eax
		mov	[ebp-20h], eax
		mov	[ebp-30h], eax
		mov	[ebp-40h], eax
		mov	[ebp-60h], eax
		mov	[ebp-74h], eax
		call	dword ptr [edx+314h]
		mov	ebx, ds:__vbaObjSet
		push	eax
		lea	eax, [ebp-18h]
		push	eax
		call	ebx ; __vbaObjSet
		mov	edi, eax
		lea	edx, [ebp-74h]
		push	edx
		push	edi
		mov	ecx, [edi]
		call	dword ptr [ecx+90h]
		test	eax, eax
		fnclex
		jge	short loc_40FEE4
		push	90h
		push	offset dword_404950
		push	edi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40FEE4:				; CODE XREF: .text:0040FED0j
		xor	eax, eax
		cmp	word ptr [ebp-74h], 0FFFFh
		lea	ecx, [ebp-18h]
		setz	al
		neg	eax
		mov	edi, eax
		call	ds:__vbaFreeObj
		test	di, di
		jz	loc_40FFDA
		mov	ecx, [esi]
		push	esi
		call	dword ptr [ecx+314h]
		lea	edx, [ebp-18h]
		push	eax
		push	edx
		call	ebx ; __vbaObjSet
		mov	edi, eax
		lea	ecx, [ebp-74h]
		push	ecx
		push	edi
		mov	eax, [edi]
		call	dword ptr [eax+0F0h]
		test	eax, eax
		fnclex
		jge	short loc_40FF3B
		push	0F0h
		push	offset dword_404950
		push	edi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_40FF3B:				; CODE XREF: .text:0040FF27j
		sub	esp, 10h
		mov	edx, 2
		mov	edi, esp
		sub	esp, 10h
		movsx	eax, word ptr [ebp-74h]
		mov	[edi], edx
		mov	edx, [ebp-3Ch]
		mov	ecx, 3
		mov	[edi+4], edx
		xor	edx, edx
		mov	[edi+8], edx
		mov	edx, [ebp-34h]
		mov	[edi+0Ch], edx
		mov	edx, esp
		push	2
		push	5Bh
		mov	[edx], ecx
		mov	ecx, [ebp-5Ch]
		push	offset dword_404970
		push	0
		mov	[edx+4], ecx
		mov	ecx, [esi]
		push	0E2h
		push	esi
		mov	[edx+8], eax
		mov	eax, [ebp-54h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	ebx ; __vbaObjSet
		push	eax
		lea	eax, [ebp-30h]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		call	ebx ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	edx, [ebp-20h]
		lea	eax, [ebp-1Ch]
		push	edx
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		push	3
		call	ds:__vbaFreeObjList
		add	esp, 3Ch
		lea	ecx, [ebp-30h]
		call	ds:__vbaFreeVar

loc_40FFDA:				; CODE XREF: .text:0040FEFEj
		mov	dword ptr [ebp-4], 0
		push	offset loc_41000A
		jmp	short loc_410009
; ---------------------------------------------------------------------------

loc_40FFE8:				; DATA XREF: .text:00401204o
		lea	edx, [ebp-20h]
		lea	eax, [ebp-1Ch]
		push	edx
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		push	3
		call	ds:__vbaFreeObjList
		add	esp, 10h
		lea	ecx, [ebp-30h]
		call	ds:__vbaFreeVar
		retn
; ---------------------------------------------------------------------------

loc_410009:				; CODE XREF: .text:0040FFE6j
		retn
; ---------------------------------------------------------------------------

loc_41000A:				; CODE XREF: .text:loc_410009j
					; DATA XREF: .text:0040FFE1o
		mov	eax, [ebp+8]
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------
		align 10h

loc_410030:				; CODE XREF: .text:00408888j
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 0Ch
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_401208
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+734h]
		test	eax, eax
		jge	short loc_41008F
		push	734h
		push	offset dword_40416C
		push	esi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_41008F:				; CODE XREF: .text:0041007Bj
		mov	dword ptr [ebp-4], 0
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------
		align 10h

loc_4100C0:				; CODE XREF: .text:00408895j
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 40h
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_401210
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	edi, edi
		push	1
		xor	eax, eax
		mov	[edx], ecx
		mov	ecx, [ebp-38h]
		push	0Bh
		push	offset dword_404970
		mov	[edx+4], ecx
		mov	ecx, [esi]
		push	edi
		push	0E2h
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		push	esi
		mov	[ebp-18h], edi
		mov	[ebp-1Ch], edi
		mov	[ebp-2Ch], edi
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		mov	esi, ds:__vbaObjSet
		lea	edx, [ebp-18h]
		push	eax
		push	edx
		call	esi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-2Ch]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-1Ch]
		push	eax
		push	ecx
		call	esi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	edx, [ebp-1Ch]
		lea	eax, [ebp-18h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 28h
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeVar
		mov	[ebp-4], edi
		push	offset loc_4101B4
		jmp	short loc_4101B3
; ---------------------------------------------------------------------------

loc_410196:				; DATA XREF: .text:0040121Co
		lea	ecx, [ebp-1Ch]
		lea	edx, [ebp-18h]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 0Ch
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeVar
		retn
; ---------------------------------------------------------------------------

loc_4101B3:				; CODE XREF: .text:00410194j
		retn
; ---------------------------------------------------------------------------

loc_4101B4:				; CODE XREF: .text:loc_4101B3j
					; DATA XREF: .text:0041018Fo
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------
		align 10h

loc_4101E0:				; CODE XREF: .text:004088A2j
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 120h
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_401220
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		xor	edi, edi
		mov	edx, offset aChooseAVideoFi ; "Choose a	video file to load"
		lea	ecx, [ebp-1Ch]
		mov	[ebp-18h], edi
		mov	[ebp-1Ch], edi
		mov	[ebp-20h], edi
		mov	[ebp-24h], edi
		mov	[ebp-2Ch], edi
		mov	[ebp-30h], edi
		mov	[ebp-34h], edi
		mov	[ebp-38h], edi
		mov	[ebp-3Ch], edi
		mov	[ebp-4Ch], edi
		mov	[ebp-5Ch], edi
		mov	[ebp-6Ch], edi
		mov	[ebp-7Ch], edi
		mov	[ebp-8Ch], edi
		mov	[ebp-9Ch], edi
		mov	[ebp-0ACh], edi
		mov	[ebp-0BCh], edi
		mov	[ebp-0CCh], edi
		mov	[ebp-0DCh], edi
		mov	[ebp-0FCh], edi
		mov	[ebp-120h], edi
		call	ds:__vbaStrCopy
		mov	ebx, ds:__vbaStrCat
		push	offset aVideoFormats_a ; "Video	formats	(*.avi;*.mpg;*.mpeg;*.wmv"...
		push	offset a_mp4_vob_flv ; "*.mp4;*.vob;*.flv)|"
		call	ebx ; __vbaStrCat
		mov	edx, eax
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaStrMove
		push	eax
		push	offset a_avi_mpg_mpeg_ ; "*.avi;*.mpg;*.mpeg;*.wmv;*.asx;*.asf;"
		call	ebx ; __vbaStrCat
		mov	edx, eax
		lea	ecx, [ebp-30h]
		call	ds:__vbaStrMove
		push	eax
		push	offset a_mp4_vob_flv_0 ; "*.mp4;*.vob;*.flv|"
		call	ebx ; __vbaStrCat
		mov	edx, eax
		lea	ecx, [ebp-34h]
		call	ds:__vbaStrMove
		push	eax
		push	offset aAllFiles__ ; "All files	(*.*)|*.*"
		call	ebx ; __vbaStrCat
		mov	edx, eax
		lea	ecx, [ebp-20h]
		call	ds:__vbaStrMove
		lea	edx, [ebp-34h]
		lea	eax, [ebp-30h]
		push	edx
		lea	ecx, [ebp-2Ch]
		push	eax
		push	ecx
		push	3
		call	ds:__vbaFreeStrList
		mov	ebx, esp
		mov	ecx, 4008h
		mov	[ebp-0DCh], ecx
		lea	eax, [ebp-1Ch]
		mov	[ebx], ecx
		mov	ecx, [ebp-0D8h]
		mov	[ebp-0D4h], eax
		mov	edx, offset dword_404ECC
		mov	[ebx+4], ecx
		mov	[ebx+8], eax
		mov	eax, [ebp-0D0h]
		sub	esp, 10h
		mov	[ebx+0Ch], eax
		mov	ecx, esp
		mov	eax, 8
		sub	esp, 10h
		mov	[ecx], eax
		mov	eax, [ebp-0E8h]
		mov	[ecx+4], eax
		mov	eax, 4008h
		mov	[ecx+8], edx
		mov	edx, [ebp-0E0h]
		mov	[ecx+0Ch], edx
		mov	edx, [ebp-108h]
		mov	ecx, esp
		sub	esp, 10h
		mov	[ecx], eax
		lea	eax, [ebp-20h]
		mov	[ecx+4], edx
		mov	edx, [ebp-118h]
		mov	[ecx+8], eax
		mov	eax, [ebp-100h]
		mov	[ecx+0Ch], eax
		mov	ecx, esp
		mov	eax, 4002h
		push	4
		mov	[ecx], eax
		lea	eax, [ebp-18h]
		push	16Dh
		push	esi
		mov	[ecx+4], edx
		mov	[ecx+8], eax
		mov	eax, [ebp-110h]
		mov	[ecx+0Ch], eax
		mov	ecx, [esi]
		call	dword ptr [ecx+448h]
		mov	ebx, ds:__vbaObjSet
		lea	edx, [ebp-38h]
		push	eax
		push	edx
		call	ebx ; __vbaObjSet
		push	eax
		lea	eax, [ebp-4Ch]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 50h
		push	eax
		call	ds:__vbaStrVarMove
		mov	edx, eax
		lea	ecx, [ebp-24h]
		call	ds:__vbaStrMove
		lea	ecx, [ebp-38h]
		call	ds:__vbaFreeObj
		lea	ecx, [ebp-4Ch]
		call	ds:__vbaFreeVar
		mov	ecx, [ebp-24h]
		push	ecx
		push	offset dword_404ECC
		call	ds:__vbaStrCmp
		test	eax, eax
		jz	loc_4108B1
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+324h]
		push	eax

loc_4103FF:				; DATA XREF: .text:00401D8Do
		lea	eax, [ebp-38h]
		push	eax
		call	ebx ; __vbaObjSet
		mov	ecx, [eax]
		lea	edx, [ebp-120h]
		push	edx
		push	eax
		mov	[ebp-124h], eax
		call	dword ptr [ecx+0E0h]
		cmp	eax, edi
		fnclex
		jge	short loc_410439
		mov	ecx, [ebp-124h]
		push	0E0h
		push	offset dword_404940
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_410439:				; CODE XREF: .text:0041041Fj
		xor	edx, edx
		cmp	[ebp-120h], di
		lea	ecx, [ebp-38h]
		setz	dl
		neg	edx
		mov	[ebp-12Ch], edx
		call	ds:__vbaFreeObj
		cmp	[ebp-12Ch], di
		mov	eax, 2
		mov	[ebp-0D4h], edi
		mov	[ebp-0DCh], eax
		jz	short loc_4104B6
		mov	edx, [ebp-0D8h]
		sub	esp, 10h
		mov	ecx, esp
		sub	esp, 10h
		mov	[ecx], eax
		mov	eax, [ebp-0D0h]
		mov	[ecx+4], edx
		mov	edx, [ebp-0F8h]
		mov	[ecx+8], edi
		mov	[ecx+0Ch], eax
		mov	ecx, esp
		mov	eax, 4008h
		push	2
		mov	[ecx], eax
		lea	eax, [ebp-24h]
		push	4
		mov	[ecx+4], edx
		mov	[ecx+8], eax
		mov	eax, [ebp-0F0h]
		mov	[ecx+0Ch], eax
		jmp	short loc_4104FA
; ---------------------------------------------------------------------------

loc_4104B6:				; CODE XREF: .text:0041046Ej
		mov	edx, [ebp-0D8h]
		sub	esp, 10h
		mov	ecx, esp
		sub	esp, 10h
		mov	[ecx], eax
		mov	eax, [ebp-0D0h]
		mov	[ecx+4], edx
		mov	edx, [ebp-0F8h]
		mov	[ecx+8], edi
		mov	[ecx+0Ch], eax
		mov	ecx, esp
		mov	eax, 4008h
		push	2
		mov	[ecx], eax
		lea	eax, [ebp-24h]
		push	11h
		mov	[ecx+4], edx
		mov	[ecx+8], eax
		mov	eax, [ebp-0F0h]
		mov	[ecx+0Ch], eax

loc_4104FA:				; CODE XREF: .text:004104B4j
		mov	ecx, [esi]
		push	offset dword_404970
		push	edi
		push	0E2h
		push	esi
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-38h]
		push	eax
		push	edx
		call	ebx ; __vbaObjSet
		push	eax
		lea	eax, [ebp-4Ch]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-3Ch]
		push	eax
		push	ecx
		call	ebx ; __vbaObjSet
		lea	edx, [ebp-5Ch]
		push	eax
		push	edx
		call	ds:__vbaLateIdCallLd
		add	esp, 30h
		push	eax
		call	ds:__vbaI4Var
		mov	[ebp-28h], eax
		lea	eax, [ebp-3Ch]
		lea	ecx, [ebp-38h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeObjList
		lea	edx, [ebp-5Ch]
		lea	eax, [ebp-4Ch]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeVarList
		mov	eax, [ebp-28h]
		add	esp, 18h
		cmp	eax, edi
		jz	loc_4108B1
		mov	ecx, [esi]
		push	esi
		call	dword ptr [ecx+414h]
		lea	edx, [ebp-38h]
		push	eax
		push	edx
		call	ebx ; __vbaObjSet
		mov	ecx, [eax]
		push	offset aPosition000000 ; "Position: 00:00:00.000"
		push	eax
		mov	[ebp-124h], eax
		call	dword ptr [ecx+54h]
		cmp	eax, edi
		fnclex
		jge	short loc_4105B3
		mov	edx, [ebp-124h]
		push	54h
		push	offset dword_404980
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_4105B3:				; CODE XREF: .text:0041059Cj
		lea	ecx, [ebp-38h]
		call	ds:__vbaFreeObj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+410h]
		lea	ecx, [ebp-38h]
		push	eax
		push	ecx
		call	ebx ; __vbaObjSet
		mov	edx, [eax]
		push	offset aOriginalDurati ; "Original duration: 00:00:00.000"
		push	eax
		mov	[ebp-124h], eax
		call	dword ptr [edx+54h]
		cmp	eax, edi
		fnclex
		jge	short loc_4105F8
		mov	ecx, [ebp-124h]
		push	54h
		push	offset dword_404980
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_4105F8:				; CODE XREF: .text:004105E1j
		lea	ecx, [ebp-38h]
		call	ds:__vbaFreeObj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+408h]
		push	eax
		lea	eax, [ebp-38h]
		push	eax
		call	ebx ; __vbaObjSet
		mov	ecx, [eax]
		push	offset aActualDuration ; "Actual duration: 00:00:00.000"
		push	eax
		mov	[ebp-124h], eax
		call	dword ptr [ecx+54h]
		cmp	eax, edi
		fnclex
		jge	short loc_41063D
		mov	edx, [ebp-124h]
		push	54h
		push	offset dword_404980
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_41063D:				; CODE XREF: .text:00410626j
		lea	ecx, [ebp-38h]
		call	ds:__vbaFreeObj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+418h]
		lea	ecx, [ebp-38h]
		push	eax
		push	ecx
		call	ebx ; __vbaObjSet
		mov	edx, [eax]
		push	offset aStatusNoVideoL ; "Status: No video loaded"
		push	eax
		mov	[ebp-124h], eax
		call	dword ptr [edx+54h]
		cmp	eax, edi
		fnclex
		jge	short loc_410682
		mov	ecx, [ebp-124h]
		push	54h
		push	offset dword_404980
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_410682:				; CODE XREF: .text:0041066Bj
		lea	ecx, [ebp-38h]
		call	ds:__vbaFreeObj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+3F0h]
		push	eax
		lea	eax, [ebp-38h]
		push	eax
		call	ebx ; __vbaObjSet
		mov	ecx, [eax]
		push	offset aVideoCodec ; "Video codec: "
		push	eax
		mov	[ebp-124h], eax
		call	dword ptr [ecx+54h]
		cmp	eax, edi
		fnclex
		jge	short loc_4106C7
		mov	edx, [ebp-124h]
		push	54h
		push	offset dword_404980
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_4106C7:				; CODE XREF: .text:004106B0j
		lea	ecx, [ebp-38h]
		call	ds:__vbaFreeObj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+404h]
		lea	ecx, [ebp-38h]
		push	eax
		push	ecx
		call	ebx ; __vbaObjSet
		mov	edx, [eax]
		push	offset aVideoInfo ; "Video info: "
		push	eax
		mov	[ebp-124h], eax
		call	dword ptr [edx+54h]
		cmp	eax, edi
		fnclex
		jge	short loc_41070C
		mov	ecx, [ebp-124h]
		push	54h
		push	offset dword_404980
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_41070C:				; CODE XREF: .text:004106F5j
		lea	ecx, [ebp-38h]
		call	ds:__vbaFreeObj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+3F4h]
		push	eax
		lea	eax, [ebp-38h]
		push	eax
		call	ebx ; __vbaObjSet
		mov	ecx, [eax]
		push	offset aAudioCodec ; "Audio codec: "
		push	eax
		mov	[ebp-124h], eax
		call	dword ptr [ecx+54h]
		cmp	eax, edi
		fnclex
		jge	short loc_410751
		mov	edx, [ebp-124h]
		push	54h
		push	offset dword_404980
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_410751:				; CODE XREF: .text:0041073Aj
		lea	ecx, [ebp-38h]
		call	ds:__vbaFreeObj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+400h]
		lea	ecx, [ebp-38h]
		push	eax
		push	ecx
		call	ebx ; __vbaObjSet
		mov	esi, eax
		push	offset aAudioInfo ; "Audio info: "
		push	esi
		mov	edx, [esi]
		call	dword ptr [edx+54h]
		cmp	eax, edi
		fnclex
		jge	short loc_41078C
		push	54h
		push	offset dword_404980
		push	esi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_41078C:				; CODE XREF: .text:0041077Bj
		lea	ecx, [ebp-38h]
		call	ds:__vbaFreeObj
		mov	esi, ds:__vbaStrCat
		mov	eax, 80020004h
		mov	[ebp-0C4h], eax
		mov	[ebp-0B4h], eax
		mov	[ebp-0A4h], eax
		mov	eax, [ebp-24h]
		mov	ebx, 0Ah
		push	offset aCannotLoadFile ; "Cannot load file "
		push	eax
		mov	[ebp-0CCh], ebx
		mov	[ebp-0BCh], ebx
		mov	[ebp-0ACh], ebx
		call	esi ; __vbaStrCat
		mov	edx, eax
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaStrMove
		push	eax
		push	offset dword_404EFC
		call	esi ; __vbaStrCat
		mov	esi, ds:rtcVarBstrFromAnsi
		lea	ecx, [ebp-4Ch]
		push	0Dh
		push	ecx
		mov	[ebp-54h], eax
		mov	dword ptr [ebp-5Ch], 8
		call	esi ; rtcVarBstrFromAnsi
		lea	edx, [ebp-7Ch]
		push	ebx
		push	edx
		call	esi ; rtcVarBstrFromAnsi
		lea	eax, [ebp-0CCh]
		mov	esi, ds:__vbaVarCat
		lea	ecx, [ebp-0BCh]
		push	eax
		lea	edx, [ebp-0ACh]
		push	ecx
		push	edx
		lea	eax, [ebp-5Ch]
		push	edi
		lea	ecx, [ebp-4Ch]
		push	eax
		lea	edx, [ebp-6Ch]
		push	ecx
		push	edx
		mov	dword ptr [ebp-0D4h], offset aTheRelatedCode ; "The related codec is probably missing i"...
		mov	dword ptr [ebp-0DCh], 8
		call	esi ; __vbaVarCat
		push	eax
		lea	eax, [ebp-7Ch]
		lea	ecx, [ebp-8Ch]
		push	eax
		push	ecx
		call	esi ; __vbaVarCat
		push	eax
		lea	edx, [ebp-0DCh]
		lea	eax, [ebp-9Ch]
		push	edx
		push	eax
		call	esi ; __vbaVarCat
		push	eax
		call	ds:rtcMsgBox
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeStr
		lea	ecx, [ebp-0CCh]
		lea	edx, [ebp-0BCh]
		push	ecx
		lea	eax, [ebp-0ACh]
		push	edx
		lea	ecx, [ebp-9Ch]
		push	eax
		lea	edx, [ebp-8Ch]
		push	ecx
		lea	eax, [ebp-7Ch]
		push	edx
		lea	ecx, [ebp-6Ch]
		push	eax
		lea	edx, [ebp-4Ch]
		push	ecx
		push	edx
		lea	eax, [ebp-5Ch]
		push	eax
		push	9
		call	ds:__vbaFreeVarList
		add	esp, 28h

loc_4108B1:				; CODE XREF: .text:004103EFj
					; .text:00410571j
		mov	[ebp-4], edi
		push	offset loc_410934
		jmp	short loc_41091E
; ---------------------------------------------------------------------------
		lea	ecx, [ebp-34h]
		lea	edx, [ebp-30h]
		push	ecx
		lea	eax, [ebp-2Ch]
		push	edx
		push	eax
		push	3
		call	ds:__vbaFreeStrList
		lea	ecx, [ebp-3Ch]
		lea	edx, [ebp-38h]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeObjList
		lea	eax, [ebp-0CCh]
		lea	ecx, [ebp-0BCh]
		push	eax
		lea	edx, [ebp-0ACh]
		push	ecx
		lea	eax, [ebp-9Ch]
		push	edx
		lea	ecx, [ebp-8Ch]
		push	eax
		lea	edx, [ebp-7Ch]
		push	ecx
		lea	eax, [ebp-6Ch]
		push	edx
		lea	ecx, [ebp-5Ch]
		push	eax
		lea	edx, [ebp-4Ch]
		push	ecx
		push	edx
		push	9
		call	ds:__vbaFreeVarList
		add	esp, 44h
		retn
; ---------------------------------------------------------------------------

loc_41091E:				; CODE XREF: .text:004108B9j
		mov	esi, ds:__vbaFreeStr
		lea	ecx, [ebp-1Ch]
		call	esi ; __vbaFreeStr
		lea	ecx, [ebp-20h]
		call	esi ; __vbaFreeStr
		lea	ecx, [ebp-24h]
		call	esi ; __vbaFreeStr
		retn
; ---------------------------------------------------------------------------

loc_410934:				; DATA XREF: .text:004108B4o
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------
		align 10h

loc_410960:				; CODE XREF: .text:004088AFj
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 88h
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_401230
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		push	1
		push	1Dh
		mov	[edx], ecx
		mov	ecx, [ebp-54h]
		push	offset dword_404970
		push	eax
		mov	[edx+4], ecx
		mov	ecx, [ebp-4Ch]
		push	0E2h
		push	esi
		mov	[edx+8], eax
		mov	[ebp-1Ch], eax
		mov	[ebp-20h], eax
		mov	[ebp-24h], eax
		mov	[edx+0Ch], ecx
		mov	edx, [esi]
		mov	[ebp-28h], eax
		mov	[ebp-38h], eax
		mov	[ebp-48h], eax
		call	dword ptr [edx+448h]
		mov	edi, ds:__vbaObjSet
		push	eax
		lea	eax, [ebp-20h]
		push	eax
		call	edi ; __vbaObjSet
		mov	ebx, ds:__vbaLateIdCallLd
		lea	ecx, [ebp-38h]
		push	eax
		push	ecx
		call	ebx ; __vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	edx, [ebp-24h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-48h]
		push	eax
		call	ebx ; __vbaLateIdCallLd
		add	esp, 20h
		push	eax
		call	ds:__vbaI4Var
		mov	ecx, eax
		call	ds:__vbaI2I4
		lea	ecx, [ebp-24h]
		lea	edx, [ebp-20h]
		push	ecx
		push	edx
		push	2
		mov	ebx, eax
		call	ds:__vbaFreeObjList
		lea	eax, [ebp-48h]
		lea	ecx, [ebp-38h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeVarList
		sub	bx, 0Ah
		mov	ecx, 2
		jo	loc_410C43
		xor	eax, eax
		add	esp, 8
		movsx	edx, bx
		mov	ebx, esp
		sub	esp, 10h
		mov	[ebx], ecx
		mov	ecx, [ebp-54h]
		mov	[ebx+4], ecx
		mov	ecx, esp
		push	2
		push	1Ch
		mov	[ebx+8], eax
		mov	eax, [ebp-4Ch]
		push	offset dword_404970
		push	0
		mov	[ebx+0Ch], eax
		mov	eax, 3
		mov	[ecx], eax
		mov	eax, [ebp-74h]
		push	0E2h
		push	esi
		mov	[ecx+4], eax
		mov	eax, [esi]
		mov	[ecx+8], edx
		mov	edx, [ebp-6Ch]
		mov	[ecx+0Ch], edx
		call	dword ptr [eax+448h]
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		lea	edx, [ebp-38h]
		push	eax
		push	edx
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		push	eax
		lea	eax, [ebp-24h]
		push	eax
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	ecx, [ebp-24h]
		lea	edx, [ebp-20h]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 38h
		lea	ecx, [ebp-38h]
		call	ds:__vbaFreeVar
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+308h]
		lea	ecx, [ebp-28h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		sub	esp, 10h
		mov	ebx, eax
		mov	ecx, esp
		mov	eax, 2
		mov	edx, [ebx]
		push	1
		mov	[ecx], eax
		mov	eax, [ebp-54h]
		push	1Dh
		push	offset dword_404970
		mov	[ecx+4], eax
		xor	eax, eax
		push	0
		push	0E2h
		mov	[ecx+8], eax
		mov	eax, [ebp-4Ch]
		push	esi
		mov	[ebp-9Ch], edx
		mov	[ecx+0Ch], eax
		mov	ecx, [esi]
		call	dword ptr [ecx+448h]
		push	eax
		lea	edx, [ebp-20h]
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-38h]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-24h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		lea	edx, [ebp-48h]
		push	eax
		push	edx
		call	ds:__vbaLateIdCallLd
		add	esp, 20h
		push	eax
		call	ds:__vbaI4Var
		push	eax
		call	ds:__vbaStrI4
		mov	edx, eax
		lea	ecx, [ebp-1Ch]
		call	ds:__vbaStrMove
		push	eax
		mov	eax, [ebp-9Ch]
		push	ebx
		call	dword ptr [eax+0A4h]
		test	eax, eax
		fnclex
		jge	short loc_410BB4
		push	0A4h
		push	offset dword_4049A0
		push	ebx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_410BB4:				; CODE XREF: .text:00410BA0j
		lea	ecx, [ebp-1Ch]
		call	ds:__vbaFreeStr
		lea	ecx, [ebp-28h]
		lea	edx, [ebp-24h]
		push	ecx
		lea	eax, [ebp-20h]
		push	edx
		push	eax
		push	3
		call	ds:__vbaFreeObjList
		lea	ecx, [ebp-48h]
		lea	edx, [ebp-38h]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeVarList
		add	esp, 1Ch
		mov	dword ptr [ebp-4], 0
		push	offset loc_410C24
		jmp	short loc_410C23
; ---------------------------------------------------------------------------

loc_410BF2:				; DATA XREF: .text:0040123Co
		lea	ecx, [ebp-1Ch]
		call	ds:__vbaFreeStr
		lea	eax, [ebp-28h]
		lea	ecx, [ebp-24h]
		push	eax
		lea	edx, [ebp-20h]
		push	ecx
		push	edx
		push	3
		call	ds:__vbaFreeObjList
		lea	eax, [ebp-48h]
		lea	ecx, [ebp-38h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeVarList
		add	esp, 1Ch
		retn
; ---------------------------------------------------------------------------

loc_410C23:				; CODE XREF: .text:00410BF0j
		retn
; ---------------------------------------------------------------------------

loc_410C24:				; CODE XREF: .text:loc_410C23j
					; DATA XREF: .text:00410BEBo
		mov	eax, [ebp+8]
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_410C43:				; CODE XREF: .text:00410A59j
		call	ds:__vbaErrorOverflow
; ---------------------------------------------------------------------------
		align 10h

loc_410C50:				; CODE XREF: .text:004088BCj
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 40h
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_401240
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	edi, edi
		push	1
		xor	eax, eax
		mov	[edx], ecx
		mov	ecx, [ebp-38h]
		push	36h
		push	offset dword_404970
		mov	[edx+4], ecx
		mov	ecx, [esi]
		push	edi
		push	0E2h
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		push	esi
		mov	[ebp-18h], edi
		mov	[ebp-1Ch], edi
		mov	[ebp-2Ch], edi
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		mov	esi, ds:__vbaObjSet
		lea	edx, [ebp-18h]
		push	eax
		push	edx
		call	esi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-2Ch]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-1Ch]
		push	eax
		push	ecx
		call	esi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	edx, [ebp-1Ch]
		lea	eax, [ebp-18h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 28h
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeVar
		mov	[ebp-4], edi
		push	offset loc_410D44
		jmp	short loc_410D43
; ---------------------------------------------------------------------------

loc_410D26:				; DATA XREF: .text:0040124Co
		lea	ecx, [ebp-1Ch]
		lea	edx, [ebp-18h]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 0Ch
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeVar
		retn
; ---------------------------------------------------------------------------

loc_410D43:				; CODE XREF: .text:00410D24j
		retn
; ---------------------------------------------------------------------------

loc_410D44:				; CODE XREF: .text:loc_410D43j
					; DATA XREF: .text:00410D1Fo
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------
		align 10h

loc_410D70:				; CODE XREF: .text:004088C9j
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 50h
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_401250
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		mov	edx, [esi]
		xor	eax, eax
		push	esi
		mov	[ebp-18h], eax
		mov	[ebp-1Ch], eax
		mov	[ebp-20h], eax
		mov	[ebp-30h], eax
		call	dword ptr [edx+3D0h]
		mov	edi, ds:__vbaObjSet
		push	eax
		lea	eax, [ebp-1Ch]
		push	eax
		call	edi ; __vbaObjSet
		mov	ebx, eax
		lea	edx, [ebp-18h]
		push	edx
		push	ebx
		mov	ecx, [ebx]
		call	dword ptr [ecx+50h]
		test	eax, eax
		fnclex
		jge	short loc_410DF5
		push	50h
		push	offset dword_404990
		push	ebx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_410DF5:				; CODE XREF: .text:00410DE4j
		mov	eax, [ebp-18h]
		push	eax
		push	offset aPause	; "Pause"
		call	ds:__vbaStrCmp
		mov	ebx, eax
		lea	ecx, [ebp-18h]
		neg	ebx
		sbb	ebx, ebx
		inc	ebx
		neg	ebx
		call	ds:__vbaFreeStr
		lea	ecx, [ebp-1Ch]
		call	ds:__vbaFreeObj
		test	bx, bx
		jz	short loc_410E47
		xor	eax, eax
		sub	esp, 10h
		mov	edx, esp
		mov	ecx, 2
		push	1
		push	7
		mov	[edx], ecx
		mov	ecx, [ebp-3Ch]
		mov	[edx+4], ecx
		mov	[edx+8], eax
		mov	eax, [ebp-34h]
		mov	[edx+0Ch], eax
		jmp	short loc_410E68
; ---------------------------------------------------------------------------

loc_410E47:				; CODE XREF: .text:00410E22j
		xor	eax, eax
		sub	esp, 10h
		mov	edx, esp
		mov	ecx, 2
		push	1
		push	8
		mov	[edx], ecx
		mov	ecx, [ebp-3Ch]
		mov	[edx+4], ecx
		mov	[edx+8], eax
		mov	eax, [ebp-34h]
		mov	[edx+0Ch], eax

loc_410E68:				; CODE XREF: .text:00410E45j
		mov	ecx, [esi]
		push	offset dword_404970
		push	0
		push	0E2h
		push	esi
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-30h]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	edx, [ebp-20h]
		lea	eax, [ebp-1Ch]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 28h
		lea	ecx, [ebp-30h]
		call	ds:__vbaFreeVar
		mov	dword ptr [ebp-4], 0
		push	offset loc_410EF8
		jmp	short loc_410EF7
; ---------------------------------------------------------------------------

loc_410ED1:				; DATA XREF: .text:0040125Co
		lea	ecx, [ebp-18h]
		call	ds:__vbaFreeStr
		lea	ecx, [ebp-20h]
		lea	edx, [ebp-1Ch]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 0Ch
		lea	ecx, [ebp-30h]
		call	ds:__vbaFreeVar
		retn
; ---------------------------------------------------------------------------

loc_410EF7:				; CODE XREF: .text:00410ECFj
		retn
; ---------------------------------------------------------------------------

loc_410EF8:				; CODE XREF: .text:loc_410EF7j
					; DATA XREF: .text:00410ECAo
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------
		align 10h

loc_410F20:				; CODE XREF: .text:004088D6j
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 5Ch
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_401260
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		mov	[ebp-18h], eax
		mov	[ebp-1Ch], eax
		mov	[edx], ecx
		mov	ecx, [ebp-3Ch]
		mov	[ebp-20h], eax
		mov	[ebp-30h], eax
		mov	[edx+4], ecx
		mov	ecx, [esi]
		push	1
		push	0B6h
		mov	[edx+8], eax
		mov	eax, [ebp-34h]
		push	esi
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		mov	edi, ds:__vbaObjSet
		lea	edx, [ebp-20h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-30h]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 20h
		push	eax
		call	ds:__vbaI2Var
		mov	ebx, ds:__vbaFreeObj
		sub	ax, 1
		jo	loc_4110D5
		lea	ecx, [ebp-20h]
		mov	[ebp-18h], eax
		call	ebx ; __vbaFreeObj
		lea	ecx, [ebp-30h]
		call	ds:__vbaFreeVar
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, [ebp-3Ch]
		mov	[edx+4], ecx
		mov	ecx, esp
		push	2
		push	4Bh
		mov	[edx+8], eax
		mov	eax, [ebp-34h]
		push	esi
		mov	[edx+0Ch], eax
		mov	edx, [ebp-5Ch]
		mov	eax, 4002h
		mov	[ecx], eax
		lea	eax, [ebp-18h]
		mov	[ecx+4], edx
		mov	[ecx+8], eax
		mov	eax, [ebp-54h]
		mov	[ecx+0Ch], eax
		mov	ecx, [esi]
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-20h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		add	esp, 2Ch
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+32Ch]
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [ebp-18h]
		mov	esi, eax
		push	edx
		mov	edi, [esi]
		call	ds:__vbaStrI2
		mov	edx, eax
		lea	ecx, [ebp-1Ch]
		call	ds:__vbaStrMove
		push	eax
		push	esi
		call	dword ptr [edi+54h]
		test	eax, eax
		fnclex
		jge	short loc_41107D
		push	54h
		push	offset dword_404990
		push	esi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_41107D:				; CODE XREF: .text:0041106Cj
		lea	ecx, [ebp-1Ch]
		call	ds:__vbaFreeStr
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		mov	dword ptr [ebp-4], 0
		push	offset loc_4110B6
		jmp	short loc_4110B5
; ---------------------------------------------------------------------------

loc_411099:				; DATA XREF: .text:0040126Co
		lea	ecx, [ebp-1Ch]
		call	ds:__vbaFreeStr
		lea	ecx, [ebp-20h]
		call	ds:__vbaFreeObj
		lea	ecx, [ebp-30h]
		call	ds:__vbaFreeVar
		retn
; ---------------------------------------------------------------------------

loc_4110B5:				; CODE XREF: .text:00411097j
		retn
; ---------------------------------------------------------------------------

loc_4110B6:				; CODE XREF: .text:loc_4110B5j
					; DATA XREF: .text:00411092o
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_4110D5:				; CODE XREF: .text:00410FC5j
		call	ds:__vbaErrorOverflow
; ---------------------------------------------------------------------------
		align 10h

loc_4110E0:				; CODE XREF: .text:004088E3j
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 5Ch
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_401270
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		mov	[ebp-18h], eax
		mov	[ebp-1Ch], eax
		mov	[edx], ecx
		mov	ecx, [ebp-3Ch]
		mov	[ebp-20h], eax
		mov	[ebp-30h], eax
		mov	[edx+4], ecx
		mov	ecx, [esi]
		push	1
		push	0B6h
		mov	[edx+8], eax
		mov	eax, [ebp-34h]
		push	esi
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		mov	edi, ds:__vbaObjSet
		lea	edx, [ebp-20h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-30h]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 20h
		push	eax
		call	ds:__vbaI2Var
		mov	ebx, ds:__vbaFreeObj
		add	ax, 1
		jo	loc_411295
		lea	ecx, [ebp-20h]
		mov	[ebp-18h], eax
		call	ebx ; __vbaFreeObj
		lea	ecx, [ebp-30h]
		call	ds:__vbaFreeVar
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, [ebp-3Ch]
		mov	[edx+4], ecx
		mov	ecx, esp
		push	2
		push	4Bh
		mov	[edx+8], eax
		mov	eax, [ebp-34h]
		push	esi
		mov	[edx+0Ch], eax
		mov	edx, [ebp-5Ch]
		mov	eax, 4002h
		mov	[ecx], eax
		lea	eax, [ebp-18h]
		mov	[ecx+4], edx
		mov	[ecx+8], eax
		mov	eax, [ebp-54h]
		mov	[ecx+0Ch], eax
		mov	ecx, [esi]
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-20h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		add	esp, 2Ch
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+32Ch]
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [ebp-18h]
		mov	esi, eax
		push	edx
		mov	edi, [esi]
		call	ds:__vbaStrI2
		mov	edx, eax
		lea	ecx, [ebp-1Ch]
		call	ds:__vbaStrMove
		push	eax
		push	esi
		call	dword ptr [edi+54h]
		test	eax, eax
		fnclex
		jge	short loc_41123D
		push	54h
		push	offset dword_404990
		push	esi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_41123D:				; CODE XREF: .text:0041122Cj
		lea	ecx, [ebp-1Ch]
		call	ds:__vbaFreeStr
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		mov	dword ptr [ebp-4], 0
		push	offset loc_411276
		jmp	short loc_411275
; ---------------------------------------------------------------------------

loc_411259:				; DATA XREF: .text:0040127Co
		lea	ecx, [ebp-1Ch]
		call	ds:__vbaFreeStr
		lea	ecx, [ebp-20h]
		call	ds:__vbaFreeObj
		lea	ecx, [ebp-30h]
		call	ds:__vbaFreeVar
		retn
; ---------------------------------------------------------------------------

loc_411275:				; CODE XREF: .text:00411257j
		retn
; ---------------------------------------------------------------------------

loc_411276:				; CODE XREF: .text:loc_411275j
					; DATA XREF: .text:00411252o
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_411295:				; CODE XREF: .text:00411185j
		call	ds:__vbaErrorOverflow
; ---------------------------------------------------------------------------
		align 10h

loc_4112A0:				; CODE XREF: .text:004088F0j
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 58h
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_401280
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		sub	esp, 10h
		mov	ecx, 2
		mov	ebx, esp
		mov	edi, ecx
		xor	eax, eax
		sub	esp, 10h
		mov	[ebx], ecx
		mov	ecx, [ebp-28h]
		mov	[ebp-18h], eax
		mov	[ebp-1Ch], eax
		mov	[ebx+4], ecx
		mov	ecx, esp
		xor	edx, edx
		push	edi
		mov	[ebx+8], eax
		mov	eax, [ebp-20h]
		push	4Bh
		push	esi
		mov	[ebx+0Ch], eax
		mov	eax, [ebp-48h]
		mov	[ecx], edi
		mov	[ecx+4], eax
		mov	eax, [esi]
		mov	[ecx+8], edx
		mov	edx, [ebp-40h]
		mov	[ecx+0Ch], edx
		call	dword ptr [eax+448h]
		mov	edi, ds:__vbaObjSet
		lea	ecx, [ebp-1Ch]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		mov	ebx, ds:__vbaFreeObj
		add	esp, 2Ch
		lea	ecx, [ebp-1Ch]
		call	ebx ; __vbaFreeObj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+32Ch]
		push	eax
		lea	eax, [ebp-1Ch]
		push	eax
		call	edi ; __vbaObjSet
		mov	esi, eax
		push	0
		mov	edi, [esi]
		call	ds:__vbaStrI2
		mov	edx, eax
		lea	ecx, [ebp-18h]
		call	ds:__vbaStrMove
		push	eax
		push	esi
		call	dword ptr [edi+54h]
		test	eax, eax
		fnclex
		jge	short loc_41138C
		push	54h
		push	offset dword_404990
		push	esi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_41138C:				; CODE XREF: .text:0041137Bj
		lea	ecx, [ebp-18h]
		call	ds:__vbaFreeStr
		lea	ecx, [ebp-1Ch]
		call	ebx ; __vbaFreeObj
		mov	dword ptr [ebp-4], 0
		push	offset loc_4113BC
		jmp	short loc_4113BB
; ---------------------------------------------------------------------------

loc_4113A8:				; DATA XREF: .text:0040128Co
		lea	ecx, [ebp-18h]
		call	ds:__vbaFreeStr
		lea	ecx, [ebp-1Ch]
		call	ds:__vbaFreeObj
		retn
; ---------------------------------------------------------------------------

loc_4113BB:				; CODE XREF: .text:004113A6j
		retn
; ---------------------------------------------------------------------------

loc_4113BC:				; CODE XREF: .text:loc_4113BBj
					; DATA XREF: .text:004113A1o
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------
		align 10h

loc_4113E0:				; CODE XREF: .text:004088FDj
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 48h
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_401290
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		mov	ebx, [ebp-3Ch]
		sub	esp, 10h
		mov	edx, esp
		mov	ecx, 2
		xor	eax, eax
		push	1
		mov	[edx], ecx
		mov	ecx, [esi]
		mov	[ebp-1Ch], eax
		mov	[ebp-20h], eax
		mov	[edx+4], ebx
		mov	[ebp-30h], eax
		push	1Eh
		push	esi
		mov	[edx+8], eax
		mov	eax, [ebp-34h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		mov	edi, ds:__vbaObjSet
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-30h]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 20h
		push	eax
		call	ds:__vbaI4Var
		lea	ecx, [ebp-1Ch]
		mov	[ebp-18h], eax
		call	ds:__vbaFreeObj
		lea	ecx, [ebp-30h]
		call	ds:__vbaFreeVar
		mov	eax, [ebp-18h]
		sub	eax, 2
		jz	short loc_4114B9
		dec	eax
		jnz	loc_411532
		xor	eax, eax
		sub	esp, 10h
		mov	edx, esp
		mov	ecx, 2
		push	1
		push	5
		mov	[edx], ecx
		mov	[edx+4], ebx
		mov	[edx+8], eax
		mov	eax, [ebp-34h]
		mov	[edx+0Ch], eax
		jmp	short loc_4114D7
; ---------------------------------------------------------------------------

loc_4114B9:				; CODE XREF: .text:00411490j
		xor	eax, eax
		sub	esp, 10h
		mov	edx, esp
		mov	ecx, 2
		push	1
		push	8
		mov	[edx], ecx
		mov	[edx+4], ebx
		mov	[edx+8], eax
		mov	eax, [ebp-34h]
		mov	[edx+0Ch], eax

loc_4114D7:				; CODE XREF: .text:004114B7j
		mov	ecx, [esi]
		push	offset dword_404970
		push	0
		push	0E2h
		push	esi
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-30h]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	edx, [ebp-20h]
		lea	eax, [ebp-1Ch]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 28h
		lea	ecx, [ebp-30h]
		call	ds:__vbaFreeVar

loc_411532:				; CODE XREF: .text:00411493j
		mov	dword ptr [ebp-4], 0
		push	offset loc_41155E
		jmp	short loc_41155D
; ---------------------------------------------------------------------------

loc_411540:				; DATA XREF: .text:0040129Co
		lea	ecx, [ebp-20h]
		lea	edx, [ebp-1Ch]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 0Ch
		lea	ecx, [ebp-30h]
		call	ds:__vbaFreeVar
		retn
; ---------------------------------------------------------------------------

loc_41155D:				; CODE XREF: .text:0041153Ej
		retn
; ---------------------------------------------------------------------------

loc_41155E:				; CODE XREF: .text:loc_41155Dj
					; DATA XREF: .text:00411539o
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------
		align 10h

loc_411580:				; CODE XREF: .text:0040890Aj
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 88h
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_4012A0
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		push	1
		push	1Dh
		mov	[edx], ecx
		mov	ecx, [ebp-54h]
		push	offset dword_404970
		push	eax
		mov	[edx+4], ecx
		mov	ecx, [ebp-4Ch]
		push	0E2h
		push	esi
		mov	[edx+8], eax
		mov	[ebp-1Ch], eax
		mov	[ebp-20h], eax
		mov	[ebp-24h], eax
		mov	[edx+0Ch], ecx
		mov	edx, [esi]
		mov	[ebp-28h], eax
		mov	[ebp-38h], eax
		mov	[ebp-48h], eax
		call	dword ptr [edx+448h]
		mov	edi, ds:__vbaObjSet
		push	eax
		lea	eax, [ebp-20h]
		push	eax
		call	edi ; __vbaObjSet
		mov	ebx, ds:__vbaLateIdCallLd
		lea	ecx, [ebp-38h]
		push	eax
		push	ecx
		call	ebx ; __vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	edx, [ebp-24h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-48h]
		push	eax
		call	ebx ; __vbaLateIdCallLd
		add	esp, 20h
		push	eax
		call	ds:__vbaI4Var
		mov	ecx, eax
		call	ds:__vbaI2I4
		lea	ecx, [ebp-24h]
		lea	edx, [ebp-20h]
		push	ecx
		push	edx
		push	2
		mov	ebx, eax
		call	ds:__vbaFreeObjList
		lea	eax, [ebp-48h]
		lea	ecx, [ebp-38h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeVarList
		add	bx, 0Ah
		mov	ecx, 2
		jo	loc_4118DF
		xor	eax, eax
		add	esp, 8
		movsx	edx, bx
		mov	ebx, esp
		sub	esp, 10h
		mov	[ebx], ecx
		mov	ecx, [ebp-54h]
		mov	[ebx+4], ecx
		mov	ecx, esp
		push	2
		push	1Ch
		mov	[ebx+8], eax
		mov	eax, [ebp-4Ch]
		push	offset dword_404970
		push	0
		mov	[ebx+0Ch], eax
		mov	eax, 3
		mov	[ecx], eax
		mov	eax, [ebp-74h]
		push	0E2h
		push	esi
		mov	[ecx+4], eax
		mov	eax, [esi]
		mov	[ecx+8], edx
		mov	edx, [ebp-6Ch]
		mov	[ecx+0Ch], edx
		call	dword ptr [eax+448h]
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		lea	edx, [ebp-38h]
		push	eax
		push	edx
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		push	eax
		lea	eax, [ebp-24h]
		push	eax
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	ecx, [ebp-24h]
		lea	edx, [ebp-20h]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 38h
		lea	ecx, [ebp-38h]
		call	ds:__vbaFreeVar
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+308h]
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	ebx, eax
		push	0FFFFFFFFh
		push	ebx
		mov	edx, [ebx]
		call	dword ptr [edx+8Ch]
		test	eax, eax
		fnclex
		jge	short loc_411749
		push	8Ch
		push	offset dword_4049A0
		push	ebx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_411749:				; CODE XREF: .text:00411735j
		lea	ecx, [ebp-20h]
		call	ds:__vbaFreeObj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+308h]
		lea	ecx, [ebp-28h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	ebx, [eax]
		sub	esp, 10h
		mov	[ebp-8Ch], eax
		mov	eax, esp
		mov	edx, 2
		push	1
		mov	[eax], edx
		mov	edx, [ebp-54h]
		xor	ecx, ecx
		push	1Dh
		mov	[eax+4], edx
		mov	edx, [esi]
		push	offset dword_404970
		push	0
		mov	[eax+8], ecx
		mov	ecx, [ebp-4Ch]
		push	0E2h
		push	esi
		mov	[eax+0Ch], ecx
		call	dword ptr [edx+448h]
		push	eax
		lea	eax, [ebp-20h]
		push	eax
		call	edi ; __vbaObjSet
		lea	ecx, [ebp-38h]
		push	eax
		push	ecx
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	edx, [ebp-24h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-48h]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 20h
		push	eax
		call	ds:__vbaI4Var
		push	eax
		call	ds:__vbaStrI4
		mov	edx, eax
		lea	ecx, [ebp-1Ch]
		call	ds:__vbaStrMove
		mov	ecx, ebx
		mov	ebx, [ebp-8Ch]
		push	eax
		push	ebx
		call	dword ptr [ecx+0A4h]
		test	eax, eax
		fnclex
		jge	short loc_411812
		push	0A4h
		push	offset dword_4049A0
		push	ebx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_411812:				; CODE XREF: .text:004117FEj
		lea	ecx, [ebp-1Ch]
		call	ds:__vbaFreeStr
		lea	edx, [ebp-28h]
		lea	eax, [ebp-24h]
		push	edx
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		push	3
		call	ds:__vbaFreeObjList
		lea	edx, [ebp-48h]
		lea	eax, [ebp-38h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeVarList
		mov	ecx, [esi]
		add	esp, 1Ch
		push	esi
		call	dword ptr [ecx+308h]
		lea	edx, [ebp-20h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		mov	esi, eax
		push	0
		push	esi
		mov	eax, [esi]
		call	dword ptr [eax+8Ch]
		test	eax, eax
		fnclex
		jge	short loc_411877
		push	8Ch
		push	offset dword_4049A0
		push	esi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_411877:				; CODE XREF: .text:00411863j
		lea	ecx, [ebp-20h]
		call	ds:__vbaFreeObj
		mov	dword ptr [ebp-4], 0
		push	offset loc_4118C0
		jmp	short loc_4118BF
; ---------------------------------------------------------------------------

loc_41188E:				; DATA XREF: .text:004012ACo
		lea	ecx, [ebp-1Ch]
		call	ds:__vbaFreeStr
		lea	ecx, [ebp-28h]
		lea	edx, [ebp-24h]
		push	ecx
		lea	eax, [ebp-20h]
		push	edx
		push	eax
		push	3
		call	ds:__vbaFreeObjList
		lea	ecx, [ebp-48h]
		lea	edx, [ebp-38h]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeVarList
		add	esp, 1Ch
		retn
; ---------------------------------------------------------------------------

loc_4118BF:				; CODE XREF: .text:0041188Cj
		retn
; ---------------------------------------------------------------------------

loc_4118C0:				; CODE XREF: .text:loc_4118BFj
					; DATA XREF: .text:00411887o
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_4118DF:				; CODE XREF: .text:00411679j
		call	ds:__vbaErrorOverflow
; ---------------------------------------------------------------------------
		align 10h

loc_4118F0:				; CODE XREF: .text:00408917j
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 40h
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_4012B0
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	edi, edi
		push	1
		xor	eax, eax
		mov	[edx], ecx
		mov	ecx, [ebp-38h]
		push	37h
		push	offset dword_404970
		mov	[edx+4], ecx
		mov	ecx, [esi]
		push	edi
		push	0E2h
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		push	esi
		mov	[ebp-18h], edi
		mov	[ebp-1Ch], edi
		mov	[ebp-2Ch], edi
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		mov	esi, ds:__vbaObjSet
		lea	edx, [ebp-18h]
		push	eax
		push	edx
		call	esi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-2Ch]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-1Ch]
		push	eax
		push	ecx
		call	esi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	edx, [ebp-1Ch]
		lea	eax, [ebp-18h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 28h
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeVar
		mov	[ebp-4], edi
		push	offset loc_4119E4
		jmp	short loc_4119E3
; ---------------------------------------------------------------------------

loc_4119C6:				; DATA XREF: .text:004012BCo
		lea	ecx, [ebp-1Ch]
		lea	edx, [ebp-18h]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 0Ch
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeVar
		retn
; ---------------------------------------------------------------------------

loc_4119E3:				; CODE XREF: .text:004119C4j
		retn
; ---------------------------------------------------------------------------

loc_4119E4:				; CODE XREF: .text:loc_4119E3j
					; DATA XREF: .text:004119BFo
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------
		align 10h

loc_411A10:				; CODE XREF: .text:00408924j
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 70h
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_4012C8
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		mov	[ebp-1Ch], eax
		mov	[ebp-20h], eax
		mov	[edx], ecx
		mov	ecx, [ebp-3Ch]
		mov	[ebp-30h], eax
		push	1
		mov	[edx+4], ecx
		mov	ecx, [esi]
		push	0B5h
		push	esi
		mov	[edx+8], eax
		mov	eax, [ebp-34h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		mov	edi, ds:__vbaObjSet
		lea	edx, [ebp-20h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-30h]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 20h
		push	eax
		call	ds:__vbaR4Var
		fsub	ds:flt_4012C0
		fnstsw	ax
		test	al, 0Dh
		jnz	loc_411BE3
		call	ds:__vbaFpI2
		lea	ecx, [ebp-20h]
		mov	ebx, eax
		call	ds:__vbaFreeObj
		lea	ecx, [ebp-30h]
		call	ds:__vbaFreeVar
		movsx	edx, bx
		sub	esp, 10h
		mov	[ebp-84h], edx
		mov	edx, esp
		mov	ecx, 2
		fild	dword ptr [ebp-84h]
		mov	[edx], ecx
		mov	ecx, [ebp-3Ch]
		xor	eax, eax
		sub	esp, 10h
		mov	[edx+4], ecx
		mov	ecx, esp
		fstp	dword ptr [ebp-58h]
		mov	[edx+8], eax
		mov	eax, [ebp-34h]
		push	2
		push	4Ah
		mov	[edx+0Ch], eax
		mov	edx, [ebp-5Ch]
		mov	eax, 4
		push	esi
		mov	[ecx], eax
		mov	eax, [ebp-58h]
		mov	[ecx+4], edx
		mov	edx, [ebp-54h]
		mov	[ecx+8], eax
		mov	eax, [esi]
		mov	[ecx+0Ch], edx
		call	dword ptr [eax+448h]
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		add	esp, 2Ch
		lea	ecx, [ebp-20h]
		call	ds:__vbaFreeObj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+338h]
		push	eax
		lea	eax, [ebp-20h]
		push	eax
		call	edi ; __vbaObjSet
		mov	esi, eax
		push	ebx
		mov	edi, [esi]
		call	ds:__vbaStrI2
		mov	edx, eax
		lea	ecx, [ebp-1Ch]
		call	ds:__vbaStrMove
		push	eax
		push	esi
		call	dword ptr [edi+54h]
		test	eax, eax
		fnclex
		jge	short loc_411B86
		push	54h
		push	offset dword_404990
		push	esi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_411B86:				; CODE XREF: .text:00411B75j
		lea	ecx, [ebp-1Ch]
		call	ds:__vbaFreeStr
		lea	ecx, [ebp-20h]
		call	ds:__vbaFreeObj
		mov	dword ptr [ebp-4], 0
		wait
		push	offset loc_411BC4
		jmp	short loc_411BC3
; ---------------------------------------------------------------------------

loc_411BA7:				; DATA XREF: .text:004012D4o
		lea	ecx, [ebp-1Ch]
		call	ds:__vbaFreeStr
		lea	ecx, [ebp-20h]
		call	ds:__vbaFreeObj
		lea	ecx, [ebp-30h]
		call	ds:__vbaFreeVar
		retn
; ---------------------------------------------------------------------------

loc_411BC3:				; CODE XREF: .text:00411BA5j
		retn
; ---------------------------------------------------------------------------

loc_411BC4:				; CODE XREF: .text:loc_411BC3j
					; DATA XREF: .text:00411BA0o
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_411BE3:				; CODE XREF: .text:00411AB2j
		jmp	loc_40151C
; ---------------------------------------------------------------------------
		align 10h

loc_411BF0:				; CODE XREF: .text:00408931j
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 70h
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_4012D8
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		mov	[ebp-1Ch], eax
		mov	[ebp-20h], eax
		mov	[edx], ecx
		mov	ecx, [ebp-3Ch]
		mov	[ebp-30h], eax
		push	1
		mov	[edx+4], ecx
		mov	ecx, [esi]
		push	0B5h
		push	esi
		mov	[edx+8], eax
		mov	eax, [ebp-34h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		mov	edi, ds:__vbaObjSet
		lea	edx, [ebp-20h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-30h]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 20h
		push	eax
		call	ds:__vbaR4Var
		fadd	ds:flt_4012C0
		fnstsw	ax
		test	al, 0Dh
		jnz	loc_411DC3
		call	ds:__vbaFpI2
		lea	ecx, [ebp-20h]
		mov	ebx, eax
		call	ds:__vbaFreeObj
		lea	ecx, [ebp-30h]
		call	ds:__vbaFreeVar
		movsx	edx, bx
		sub	esp, 10h
		mov	[ebp-84h], edx
		mov	edx, esp
		mov	ecx, 2
		fild	dword ptr [ebp-84h]
		mov	[edx], ecx
		mov	ecx, [ebp-3Ch]
		xor	eax, eax
		sub	esp, 10h
		mov	[edx+4], ecx
		mov	ecx, esp
		fstp	dword ptr [ebp-58h]
		mov	[edx+8], eax
		mov	eax, [ebp-34h]
		push	2
		push	4Ah
		mov	[edx+0Ch], eax
		mov	edx, [ebp-5Ch]
		mov	eax, 4
		push	esi
		mov	[ecx], eax
		mov	eax, [ebp-58h]
		mov	[ecx+4], edx
		mov	edx, [ebp-54h]
		mov	[ecx+8], eax
		mov	eax, [esi]
		mov	[ecx+0Ch], edx
		call	dword ptr [eax+448h]
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		add	esp, 2Ch
		lea	ecx, [ebp-20h]
		call	ds:__vbaFreeObj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+338h]
		push	eax
		lea	eax, [ebp-20h]
		push	eax
		call	edi ; __vbaObjSet
		mov	esi, eax
		push	ebx
		mov	edi, [esi]
		call	ds:__vbaStrI2
		mov	edx, eax
		lea	ecx, [ebp-1Ch]
		call	ds:__vbaStrMove
		push	eax
		push	esi
		call	dword ptr [edi+54h]
		test	eax, eax
		fnclex
		jge	short loc_411D66
		push	54h
		push	offset dword_404990
		push	esi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_411D66:				; CODE XREF: .text:00411D55j
		lea	ecx, [ebp-1Ch]
		call	ds:__vbaFreeStr
		lea	ecx, [ebp-20h]
		call	ds:__vbaFreeObj
		mov	dword ptr [ebp-4], 0
		wait
		push	offset loc_411DA4
		jmp	short loc_411DA3
; ---------------------------------------------------------------------------

loc_411D87:				; DATA XREF: .text:004012E4o
		lea	ecx, [ebp-1Ch]
		call	ds:__vbaFreeStr
		lea	ecx, [ebp-20h]
		call	ds:__vbaFreeObj
		lea	ecx, [ebp-30h]
		call	ds:__vbaFreeVar
		retn
; ---------------------------------------------------------------------------

loc_411DA3:				; CODE XREF: .text:00411D85j
		retn
; ---------------------------------------------------------------------------

loc_411DA4:				; CODE XREF: .text:loc_411DA3j
					; DATA XREF: .text:00411D80o
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_411DC3:				; CODE XREF: .text:00411C92j
		jmp	loc_40151C
; ---------------------------------------------------------------------------
		align 10h

loc_411DD0:				; CODE XREF: .text:0040893Ej
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 58h
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_4012E8
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		sub	esp, 10h
		mov	ecx, 2
		mov	ebx, esp
		xor	eax, eax
		sub	esp, 10h
		mov	[ebp-18h], eax
		mov	[ebx], ecx
		mov	ecx, [ebp-28h]
		mov	[ebp-1Ch], eax
		mov	edi, 4
		mov	[ebx+4], ecx
		mov	ecx, esp
		xor	edx, edx
		push	2
		mov	[ebx+8], eax
		mov	eax, [ebp-20h]
		push	4Ah
		push	esi
		mov	[ebx+0Ch], eax
		mov	eax, [ebp-48h]
		mov	[ecx], edi
		mov	[ecx+4], eax
		mov	eax, [esi]
		mov	[ecx+8], edx
		mov	edx, [ebp-40h]
		mov	[ecx+0Ch], edx
		call	dword ptr [eax+448h]
		mov	edi, ds:__vbaObjSet
		lea	ecx, [ebp-1Ch]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		mov	ebx, ds:__vbaFreeObj
		add	esp, 2Ch
		lea	ecx, [ebp-1Ch]
		call	ebx ; __vbaFreeObj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+338h]
		push	eax
		lea	eax, [ebp-1Ch]
		push	eax
		call	edi ; __vbaObjSet
		mov	esi, eax
		push	0
		mov	edi, [esi]
		call	ds:__vbaStrI2
		mov	edx, eax
		lea	ecx, [ebp-18h]
		call	ds:__vbaStrMove
		push	eax
		push	esi
		call	dword ptr [edi+54h]
		test	eax, eax
		fnclex
		jge	short loc_411EC0
		push	54h
		push	offset dword_404990
		push	esi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_411EC0:				; CODE XREF: .text:00411EAFj
		lea	ecx, [ebp-18h]
		call	ds:__vbaFreeStr
		lea	ecx, [ebp-1Ch]
		call	ebx ; __vbaFreeObj
		mov	dword ptr [ebp-4], 0
		wait
		push	offset loc_411EF1
		jmp	short loc_411EF0
; ---------------------------------------------------------------------------

loc_411EDD:				; DATA XREF: .text:004012F4o
		lea	ecx, [ebp-18h]
		call	ds:__vbaFreeStr
		lea	ecx, [ebp-1Ch]
		call	ds:__vbaFreeObj
		retn
; ---------------------------------------------------------------------------

loc_411EF0:				; CODE XREF: .text:00411EDBj
		retn
; ---------------------------------------------------------------------------

loc_411EF1:				; CODE XREF: .text:loc_411EF0j
					; DATA XREF: .text:00411ED6o
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_411F10:				; CODE XREF: .text:0040894Bj
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 40h
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_4012F8
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	edi, edi
		push	1
		xor	eax, eax
		mov	[edx], ecx
		mov	ecx, [ebp-38h]
		push	9
		push	offset dword_404970
		mov	[edx+4], ecx
		mov	ecx, [esi]
		push	edi
		push	0E2h
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		push	esi
		mov	[ebp-18h], edi
		mov	[ebp-1Ch], edi
		mov	[ebp-2Ch], edi
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		mov	esi, ds:__vbaObjSet
		lea	edx, [ebp-18h]
		push	eax
		push	edx
		call	esi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-2Ch]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-1Ch]
		push	eax
		push	ecx
		call	esi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	edx, [ebp-1Ch]
		lea	eax, [ebp-18h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 28h
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeVar
		mov	[ebp-4], edi
		push	offset loc_412004
		jmp	short loc_412003
; ---------------------------------------------------------------------------

loc_411FE6:				; DATA XREF: .text:00401304o
		lea	ecx, [ebp-1Ch]
		lea	edx, [ebp-18h]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 0Ch
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeVar
		retn
; ---------------------------------------------------------------------------

loc_412003:				; CODE XREF: .text:00411FE4j
		retn
; ---------------------------------------------------------------------------

loc_412004:				; CODE XREF: .text:loc_412003j
					; DATA XREF: .text:00411FDFo
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------
		align 10h

loc_412030:				; CODE XREF: .text:00408958j
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 70h
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_401308
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		mov	[ebp-1Ch], eax
		mov	[ebp-20h], eax
		mov	[edx], ecx
		mov	ecx, [ebp-3Ch]
		mov	[ebp-30h], eax
		push	1
		mov	[edx+4], ecx
		mov	ecx, [esi]
		push	0B4h
		push	esi
		mov	[edx+8], eax
		mov	eax, [ebp-34h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		mov	edi, ds:__vbaObjSet
		lea	edx, [ebp-20h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-30h]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 20h
		push	eax
		call	ds:__vbaR4Var
		fsub	ds:flt_4012C0
		fnstsw	ax
		test	al, 0Dh
		jnz	loc_412262
		call	ds:__vbaFpI2
		mov	ebx, ds:__vbaFreeObj
		lea	ecx, [ebp-20h]
		mov	[ebp-18h], eax
		call	ebx ; __vbaFreeObj
		lea	ecx, [ebp-30h]
		call	ds:__vbaFreeVar
		movsx	edx, word ptr [ebp-18h]
		sub	esp, 10h
		mov	[ebp-84h], edx
		mov	edx, esp
		mov	ecx, 2
		fild	dword ptr [ebp-84h]
		mov	[edx], ecx
		mov	ecx, [ebp-3Ch]
		xor	eax, eax
		sub	esp, 10h
		mov	[edx+4], ecx
		mov	ecx, esp
		fstp	dword ptr [ebp-58h]
		mov	[edx+8], eax
		mov	eax, [ebp-34h]
		push	2
		push	49h
		mov	[edx+0Ch], eax
		mov	edx, [ebp-5Ch]
		mov	eax, 4
		mov	[ecx], eax
		mov	eax, [ebp-58h]
		mov	[ecx+4], edx
		mov	edx, [ebp-54h]
		mov	[ecx+8], eax
		mov	eax, [esi]
		mov	[ecx+0Ch], edx
		push	esi
		call	dword ptr [eax+448h]
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		add	esp, 2Ch
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		push	1
		push	0B4h
		mov	[edx], ecx
		mov	ecx, [ebp-3Ch]
		push	esi
		mov	[edx+4], ecx
		mov	ecx, [esi]
		mov	[edx+8], eax
		mov	eax, [ebp-34h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-20h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-30h]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 20h
		push	eax
		call	ds:__vbaR4Var
		call	ds:__vbaFpI2
		lea	ecx, [ebp-20h]
		mov	[ebp-18h], eax
		call	ebx ; __vbaFreeObj
		lea	ecx, [ebp-30h]
		call	ds:__vbaFreeVar
		mov	ecx, [esi]
		push	esi
		call	dword ptr [ecx+344h]
		lea	edx, [ebp-20h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		mov	esi, eax
		mov	eax, [ebp-18h]
		push	eax
		mov	edi, [esi]
		call	ds:__vbaStrI2
		mov	edx, eax
		lea	ecx, [ebp-1Ch]
		call	ds:__vbaStrMove
		push	eax
		push	esi
		call	dword ptr [edi+54h]
		test	eax, eax
		fnclex
		jge	short loc_412209
		push	54h
		push	offset dword_404990
		push	esi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_412209:				; CODE XREF: .text:004121F8j
		lea	ecx, [ebp-1Ch]
		call	ds:__vbaFreeStr
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		mov	dword ptr [ebp-4], 0
		wait
		push	offset loc_412243
		jmp	short loc_412242
; ---------------------------------------------------------------------------

loc_412226:				; DATA XREF: .text:00401314o
		lea	ecx, [ebp-1Ch]
		call	ds:__vbaFreeStr
		lea	ecx, [ebp-20h]
		call	ds:__vbaFreeObj
		lea	ecx, [ebp-30h]
		call	ds:__vbaFreeVar
		retn
; ---------------------------------------------------------------------------

loc_412242:				; CODE XREF: .text:00412224j
		retn
; ---------------------------------------------------------------------------

loc_412243:				; CODE XREF: .text:loc_412242j
					; DATA XREF: .text:0041221Fo
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_412262:				; CODE XREF: .text:004120D2j
		jmp	loc_40151C
; ---------------------------------------------------------------------------
		align 10h

loc_412270:				; CODE XREF: .text:00408965j
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 70h
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_401318
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		mov	[ebp-1Ch], eax
		mov	[ebp-20h], eax
		mov	[edx], ecx
		mov	ecx, [ebp-3Ch]
		mov	[ebp-30h], eax
		push	1
		mov	[edx+4], ecx
		mov	ecx, [esi]
		push	0B4h
		push	esi
		mov	[edx+8], eax
		mov	eax, [ebp-34h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		mov	edi, ds:__vbaObjSet
		lea	edx, [ebp-20h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-30h]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 20h
		push	eax
		call	ds:__vbaR4Var
		fadd	ds:flt_4012C0
		fnstsw	ax
		test	al, 0Dh
		jnz	loc_4124A2
		call	ds:__vbaFpI2
		mov	ebx, ds:__vbaFreeObj
		lea	ecx, [ebp-20h]
		mov	[ebp-18h], eax
		call	ebx ; __vbaFreeObj
		lea	ecx, [ebp-30h]
		call	ds:__vbaFreeVar
		movsx	edx, word ptr [ebp-18h]
		sub	esp, 10h
		mov	[ebp-84h], edx
		mov	edx, esp
		mov	ecx, 2
		fild	dword ptr [ebp-84h]
		mov	[edx], ecx
		mov	ecx, [ebp-3Ch]
		xor	eax, eax
		sub	esp, 10h
		mov	[edx+4], ecx
		mov	ecx, esp
		fstp	dword ptr [ebp-58h]
		mov	[edx+8], eax
		mov	eax, [ebp-34h]
		push	2
		push	49h
		mov	[edx+0Ch], eax
		mov	edx, [ebp-5Ch]
		mov	eax, 4
		mov	[ecx], eax
		mov	eax, [ebp-58h]
		mov	[ecx+4], edx
		mov	edx, [ebp-54h]
		mov	[ecx+8], eax
		mov	eax, [esi]
		mov	[ecx+0Ch], edx
		push	esi
		call	dword ptr [eax+448h]
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		add	esp, 2Ch
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		push	1
		push	0B4h
		mov	[edx], ecx
		mov	ecx, [ebp-3Ch]
		push	esi
		mov	[edx+4], ecx
		mov	ecx, [esi]
		mov	[edx+8], eax
		mov	eax, [ebp-34h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-20h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-30h]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 20h
		push	eax
		call	ds:__vbaR4Var
		call	ds:__vbaFpI2
		lea	ecx, [ebp-20h]
		mov	[ebp-18h], eax
		call	ebx ; __vbaFreeObj
		lea	ecx, [ebp-30h]
		call	ds:__vbaFreeVar
		mov	ecx, [esi]
		push	esi
		call	dword ptr [ecx+344h]
		lea	edx, [ebp-20h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		mov	esi, eax
		mov	eax, [ebp-18h]
		push	eax
		mov	edi, [esi]
		call	ds:__vbaStrI2
		mov	edx, eax
		lea	ecx, [ebp-1Ch]
		call	ds:__vbaStrMove
		push	eax
		push	esi
		call	dword ptr [edi+54h]
		test	eax, eax
		fnclex
		jge	short loc_412449
		push	54h
		push	offset dword_404990
		push	esi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_412449:				; CODE XREF: .text:00412438j
		lea	ecx, [ebp-1Ch]
		call	ds:__vbaFreeStr
		lea	ecx, [ebp-20h]
		call	ebx ; __vbaFreeObj
		mov	dword ptr [ebp-4], 0
		wait
		push	offset loc_412483
		jmp	short loc_412482
; ---------------------------------------------------------------------------

loc_412466:				; DATA XREF: .text:00401324o
		lea	ecx, [ebp-1Ch]
		call	ds:__vbaFreeStr
		lea	ecx, [ebp-20h]
		call	ds:__vbaFreeObj
		lea	ecx, [ebp-30h]
		call	ds:__vbaFreeVar
		retn
; ---------------------------------------------------------------------------

loc_412482:				; CODE XREF: .text:00412464j
		retn
; ---------------------------------------------------------------------------

loc_412483:				; CODE XREF: .text:loc_412482j
					; DATA XREF: .text:0041245Fo
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_4124A2:				; CODE XREF: .text:00412312j
		jmp	loc_40151C
; ---------------------------------------------------------------------------
		align 10h

loc_4124B0:				; CODE XREF: .text:00408972j
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 58h
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_401328
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		sub	esp, 10h
		mov	ecx, 2
		mov	ebx, esp
		xor	eax, eax
		sub	esp, 10h
		mov	[ebp-18h], eax
		mov	[ebx], ecx
		mov	ecx, [ebp-28h]
		mov	[ebp-1Ch], eax
		mov	edi, 4
		mov	[ebx+4], ecx
		mov	ecx, esp
		xor	edx, edx
		push	2
		mov	[ebx+8], eax
		mov	eax, [ebp-20h]
		push	49h
		push	esi
		mov	[ebx+0Ch], eax
		mov	eax, [ebp-48h]
		mov	[ecx], edi
		mov	[ecx+4], eax
		mov	eax, [esi]
		mov	[ecx+8], edx
		mov	edx, [ebp-40h]
		mov	[ecx+0Ch], edx
		call	dword ptr [eax+448h]
		mov	edi, ds:__vbaObjSet
		lea	ecx, [ebp-1Ch]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		mov	ebx, ds:__vbaFreeObj
		add	esp, 2Ch
		lea	ecx, [ebp-1Ch]
		call	ebx ; __vbaFreeObj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+344h]
		push	eax
		lea	eax, [ebp-1Ch]
		push	eax
		call	edi ; __vbaObjSet
		mov	esi, eax
		push	0
		mov	edi, [esi]
		call	ds:__vbaStrI2
		mov	edx, eax
		lea	ecx, [ebp-18h]
		call	ds:__vbaStrMove
		push	eax
		push	esi
		call	dword ptr [edi+54h]
		test	eax, eax
		fnclex
		jge	short loc_4125A0
		push	54h
		push	offset dword_404990
		push	esi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_4125A0:				; CODE XREF: .text:0041258Fj
		lea	ecx, [ebp-18h]
		call	ds:__vbaFreeStr
		lea	ecx, [ebp-1Ch]
		call	ebx ; __vbaFreeObj
		mov	dword ptr [ebp-4], 0
		wait
		push	offset loc_4125D1
		jmp	short loc_4125D0
; ---------------------------------------------------------------------------

loc_4125BD:				; DATA XREF: .text:00401334o
		lea	ecx, [ebp-18h]
		call	ds:__vbaFreeStr
		lea	ecx, [ebp-1Ch]
		call	ds:__vbaFreeObj
		retn
; ---------------------------------------------------------------------------

loc_4125D0:				; CODE XREF: .text:004125BBj
		retn
; ---------------------------------------------------------------------------

loc_4125D1:				; CODE XREF: .text:loc_4125D0j
					; DATA XREF: .text:004125B6o
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_4125F0:				; CODE XREF: .text:0040897Fj
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 164h
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_401338
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		mov	edx, [esi]
		xor	ebx, ebx
		push	ebx
		push	28h
		push	esi
		mov	[ebp-1Ch], ebx
		mov	[ebp-20h], ebx
		mov	[ebp-24h], ebx
		mov	[ebp-28h], ebx
		mov	[ebp-2Ch], ebx
		mov	[ebp-3Ch], ebx
		mov	[ebp-4Ch], ebx
		mov	[ebp-5Ch], ebx
		mov	[ebp-6Ch], ebx
		mov	[ebp-7Ch], ebx
		mov	[ebp-150h], ebx
		mov	[ebp-154h], ebx
		mov	[ebp-158h], ebx
		call	dword ptr [edx+448h]
		mov	edi, ds:__vbaObjSet
		push	eax
		lea	eax, [ebp-1Ch]
		push	eax
		call	edi ; __vbaObjSet
		lea	ecx, [ebp-3Ch]
		push	eax
		push	ecx
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaI2Var
		lea	ecx, [ebp-1Ch]
		mov	[ebp-18h], eax
		call	ds:__vbaFreeObj
		lea	ecx, [ebp-3Ch]
		call	ds:__vbaFreeVar
		cmp	[ebp-18h], bx
		jnz	short loc_41271C
		mov	ecx, 80020004h
		mov	eax, 0Ah
		mov	[ebp-64h], ecx
		mov	[ebp-54h], ecx
		mov	[ebp-44h], ecx
		lea	edx, [ebp-7Ch]
		lea	ecx, [ebp-3Ch]
		mov	[ebp-6Ch], eax
		mov	[ebp-5Ch], eax
		mov	[ebp-4Ch], eax
		mov	dword ptr [ebp-74h], offset aNoOutputDevice ; "No output device	detected and/or	connec"...
		mov	dword ptr [ebp-7Ch], 8
		call	ds:__vbaVarDup
		lea	edx, [ebp-6Ch]
		lea	eax, [ebp-5Ch]
		push	edx
		lea	ecx, [ebp-4Ch]
		push	eax
		push	ecx
		lea	edx, [ebp-3Ch]
		push	ebx
		push	edx
		call	ds:rtcMsgBox
		lea	eax, [ebp-6Ch]
		lea	ecx, [ebp-5Ch]
		push	eax
		lea	edx, [ebp-4Ch]
		push	ecx
		lea	eax, [ebp-3Ch]
		push	edx
		push	eax
		push	4
		call	ds:__vbaFreeVarList
		add	esp, 14h
		call	ds:__vbaEnd
; ---------------------------------------------------------------------------

loc_41271C:				; CODE XREF: .text:004126ACj
		mov	ecx, [esi]
		lea	edx, [ebp-150h]
		push	edx
		push	esi
		mov	dword ptr [ebp-74h], 1
		mov	dword ptr [ebp-7Ch], 2
		call	dword ptr [ecx+58h]
		cmp	eax, ebx
		fnclex
		jge	short loc_41274C
		push	58h
		push	offset dword_40413C
		push	esi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_41274C:				; CODE XREF: .text:0041273Bj
		sub	esp, 10h
		mov	[ebp-114h], ebx
		mov	ebx, [ebp-7Ch]
		mov	edx, esp
		sub	esp, 10h
		mov	eax, [ebp-150h]
		mov	[edx], ebx
		mov	ebx, [ebp-78h]
		mov	ecx, 3
		mov	dword ptr [ebp-11Ch], 2
		mov	[edx+4], ebx
		mov	ebx, [ebp-74h]
		mov	[edx+8], ebx
		mov	ebx, [ebp-70h]
		mov	[edx+0Ch], ebx
		mov	ebx, [ebp-98h]
		mov	edx, esp
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, esp
		sub	esp, 10h
		mov	[edx+4], ebx
		mov	[edx+8], eax
		mov	eax, [ebp-90h]
		mov	[edx+0Ch], eax
		mov	edx, [ebp-0B8h]
		mov	eax, 2
		mov	[ecx], eax
		xor	eax, eax
		mov	[ecx+4], edx
		mov	edx, [ebp-0D8h]
		mov	[ecx+8], eax
		mov	eax, [ebp-0B0h]
		mov	[ecx+0Ch], eax
		mov	ecx, esp
		mov	eax, 2
		sub	esp, 10h
		mov	[ecx], eax
		xor	eax, eax
		mov	[ecx+4], edx
		mov	edx, [ebp-0F8h]
		mov	[ecx+8], eax
		mov	eax, [ebp-0D0h]
		mov	[ecx+0Ch], eax
		mov	ecx, esp
		mov	eax, 2
		sub	esp, 10h
		mov	[ecx], eax
		xor	eax, eax
		mov	[ecx+4], edx
		mov	edx, [ebp-11Ch]
		mov	[ecx+8], eax
		mov	eax, [ebp-0F0h]
		mov	[ecx+0Ch], eax
		mov	eax, [ebp-118h]
		mov	ecx, esp
		push	6
		push	5
		push	esi
		mov	[ecx], edx
		mov	edx, [ebp-114h]
		mov	[ecx+4], eax
		mov	eax, [ebp-110h]
		mov	[ecx+8], edx
		mov	[ecx+0Ch], eax
		mov	ecx, [esi]
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		add	esp, 6Ch
		lea	ecx, [ebp-1Ch]
		call	ds:__vbaFreeObj
		mov	eax, [esi]
		push	3
		push	esi
		call	dword ptr [eax+114h]
		fnclex
		test	eax, eax
		jge	short loc_41287A
		push	114h
		push	offset dword_40413C
		push	esi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_41287A:				; CODE XREF: .text:00412866j
		mov	ecx, [esi]
		push	esi
		mov	dword ptr [ebp-74h], 0
		mov	dword ptr [ebp-7Ch], 2
		call	dword ptr [ecx+3D8h]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		lea	edx, [ebp-150h]
		push	edx
		push	eax
		mov	[ebp-15Ch], eax
		call	dword ptr [ecx+1C0h]
		test	eax, eax
		fnclex
		jge	short loc_4128CC
		mov	ecx, [ebp-15Ch]
		push	1C0h
		push	offset dword_4048C8
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_4128CC:				; CODE XREF: .text:004128B2j
		mov	edx, [ebp-150h]
		mov	eax, [esi]
		push	esi
		mov	[ebp-0B4h], edx
		call	dword ptr [eax+3D8h]
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		lea	ecx, [ebp-154h]
		push	ecx
		push	eax
		mov	[ebp-164h], eax
		call	dword ptr [edx+80h]
		test	eax, eax
		fnclex
		jge	short loc_41291C
		mov	edx, [ebp-164h]
		push	80h
		push	offset dword_4048C8
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_41291C:				; CODE XREF: .text:00412902j
		fld	dword ptr [ebp-154h]
		call	ds:__vbaFpI4
		mov	[ebp-114h], eax
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+3D8h]
		lea	ecx, [ebp-24h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		lea	ecx, [ebp-158h]
		push	ecx
		push	eax
		mov	[ebp-16Ch], eax
		call	dword ptr [edx+88h]
		test	eax, eax
		fnclex
		jge	short loc_412972
		mov	edx, [ebp-16Ch]
		push	88h
		push	offset dword_4048C8
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_412972:				; CODE XREF: .text:00412958j
		fld	dword ptr [ebp-158h]
		call	ds:__vbaFpI4
		mov	edx, [ebp-7Ch]
		sub	esp, 10h
		mov	ecx, esp
		sub	esp, 10h
		mov	[ecx], edx
		mov	edx, [ebp-78h]
		mov	[ecx+4], edx
		mov	edx, [ebp-74h]
		mov	[ecx+8], edx
		mov	edx, [ebp-70h]
		mov	[ecx+0Ch], edx
		mov	edx, esp
		mov	ecx, 3
		sub	esp, 10h
		mov	[edx], ecx
		xor	ecx, ecx
		mov	[edx+4], ebx
		mov	[edx+8], ecx
		mov	ecx, [ebp-90h]
		mov	[edx+0Ch], ecx
		mov	edx, esp
		mov	ecx, 3
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, [ebp-0B8h]
		mov	[edx+4], ecx
		mov	ecx, [ebp-0B4h]
		mov	[edx+8], ecx
		mov	ecx, [ebp-0B0h]
		mov	[edx+0Ch], ecx
		mov	edx, esp
		mov	ecx, 3
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, [ebp-0D8h]
		mov	[edx+4], ecx
		xor	ecx, ecx
		mov	[edx+8], ecx
		mov	ecx, [ebp-0D0h]
		mov	[edx+0Ch], ecx
		mov	edx, esp
		mov	ecx, 3
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, [ebp-0F8h]
		mov	[edx+4], ecx
		xor	ecx, ecx
		mov	[edx+8], ecx
		mov	ecx, [ebp-0F0h]
		mov	[edx+0Ch], ecx
		mov	edx, esp
		mov	ecx, 3
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, [ebp-118h]
		mov	[edx+4], ecx
		mov	ecx, [ebp-114h]
		mov	[edx+8], ecx
		mov	ecx, [ebp-110h]
		mov	[edx+0Ch], ecx
		mov	edx, esp
		mov	ecx, 3
		push	7
		mov	[edx], ecx
		mov	ecx, [ebp-138h]
		push	19h
		push	offset dword_404970
		mov	[edx+4], ecx
		mov	ecx, [esi]
		push	0
		push	0E2h
		mov	[edx+8], eax
		mov	eax, [ebp-130h]
		push	esi
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-28h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-3Ch]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-2Ch]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	edx, [ebp-2Ch]
		lea	eax, [ebp-28h]
		push	edx
		lea	ecx, [ebp-24h]
		push	eax
		lea	edx, [ebp-20h]
		push	ecx
		lea	eax, [ebp-1Ch]
		push	edx
		push	eax
		push	5
		call	ds:__vbaFreeObjList
		add	esp, 94h
		lea	ecx, [ebp-3Ch]
		call	ds:__vbaFreeVar
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		mov	[ebp-7Ch], ecx
		xor	eax, eax
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, [ebp-78h]
		mov	[ebp-74h], eax
		mov	[edx+4], ecx
		mov	ecx, esp
		push	2
		push	1
		mov	[edx+8], eax
		mov	eax, [ebp-70h]
		push	offset dword_404F84
		mov	[edx+0Ch], eax
		mov	eax, 3
		mov	edx, [ebp-90h]
		mov	[ecx], eax
		xor	eax, eax
		mov	[ecx+4], ebx
		push	eax
		push	4Fh
		push	esi
		mov	[ecx+8], eax
		mov	eax, [esi]
		mov	[ecx+0Ch], edx
		call	dword ptr [eax+448h]
		lea	ecx, [ebp-1Ch]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		lea	edx, [ebp-3Ch]
		push	eax
		push	edx
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		push	eax
		lea	eax, [ebp-20h]
		push	eax
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	ecx, [ebp-20h]
		lea	edx, [ebp-1Ch]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 38h
		lea	ecx, [ebp-3Ch]
		call	ds:__vbaFreeVar
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+3CCh]
		lea	ecx, [ebp-1Ch]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [esi]
		lea	eax, [ebp-150h]
		lea	ecx, [ebp-1Ch]
		push	eax
		push	ecx
		push	esi
		call	dword ptr [edx+6F8h]
		mov	edx, [ebp-150h]
		lea	ecx, [ebp-1Ch]
		mov	[esi+34h], edx
		call	ds:__vbaFreeObj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+3C8h]
		lea	ecx, [ebp-1Ch]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [esi]
		lea	eax, [ebp-150h]
		lea	ecx, [ebp-1Ch]
		push	eax
		push	ecx
		push	esi
		call	dword ptr [edx+6F8h]
		mov	edx, [ebp-150h]
		lea	ecx, [ebp-1Ch]
		mov	[esi+38h], edx
		call	ds:__vbaFreeObj
		mov	eax, [esi]
		push	esi
		mov	dword ptr [ebp-74h], 0
		mov	dword ptr [ebp-7Ch], 2
		call	dword ptr [eax+304h]
		lea	ecx, [ebp-1Ch]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		lea	ecx, [ebp-150h]
		push	ecx
		push	eax
		mov	[ebp-15Ch], eax
		call	dword ptr [edx+1C0h]
		test	eax, eax
		fnclex
		jge	short loc_412C33
		mov	edx, [ebp-15Ch]
		push	1C0h
		push	offset dword_4048C8
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_412C33:				; CODE XREF: .text:00412C19j
		mov	edx, [ebp-7Ch]
		sub	esp, 10h
		mov	ecx, esp
		sub	esp, 10h
		mov	eax, [ebp-150h]
		mov	[ecx], edx
		mov	edx, [ebp-78h]
		mov	[ecx+4], edx
		mov	edx, [ebp-74h]
		mov	[ecx+8], edx
		mov	edx, [ebp-70h]
		mov	[ecx+0Ch], edx
		mov	edx, esp
		mov	ecx, 3
		push	2
		mov	[edx], ecx
		mov	ecx, [esi]
		push	1
		push	offset dword_4049B0
		mov	[edx+4], ebx
		push	0
		push	50h
		push	esi
		mov	[edx+8], eax
		mov	eax, [ebp-90h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-20h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-3Ch]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-24h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	edx, [ebp-24h]
		lea	eax, [ebp-20h]
		push	edx
		lea	ecx, [ebp-1Ch]
		push	eax
		push	ecx
		push	3
		call	ds:__vbaFreeObjList
		add	esp, 3Ch
		lea	ecx, [ebp-3Ch]
		call	ds:__vbaFreeVar
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		mov	[ebp-7Ch], ecx
		xor	eax, eax
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, [ebp-78h]
		mov	[ebp-74h], eax
		mov	[edx+4], ecx
		mov	ecx, esp
		push	2
		push	2
		mov	[edx+8], eax
		mov	eax, [ebp-70h]
		push	offset dword_4049B0
		push	0
		mov	[edx+0Ch], eax
		mov	eax, 3
		mov	edx, [ebp-90h]
		mov	[ecx], eax
		mov	eax, 1
		push	50h
		mov	[ecx+4], ebx
		mov	[ecx+8], eax
		mov	[ecx+0Ch], edx
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+448h]
		lea	ecx, [ebp-1Ch]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		lea	edx, [ebp-3Ch]
		push	eax
		push	edx
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		push	eax
		lea	eax, [ebp-20h]
		push	eax
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	ecx, [ebp-20h]
		lea	edx, [ebp-1Ch]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 38h
		lea	ecx, [ebp-3Ch]
		call	ds:__vbaFreeVar
		mov	eax, [esi]
		push	esi
		mov	dword ptr [ebp-74h], 0
		mov	dword ptr [ebp-7Ch], 2
		call	dword ptr [eax+300h]
		lea	ecx, [ebp-1Ch]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		lea	ecx, [ebp-150h]
		push	ecx
		push	eax
		mov	[ebp-15Ch], eax
		call	dword ptr [edx+1C0h]
		test	eax, eax
		fnclex
		jge	short loc_412DC1
		mov	edx, [ebp-15Ch]
		push	1C0h
		push	offset dword_4048C8
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_412DC1:				; CODE XREF: .text:00412DA7j
		mov	edx, [ebp-7Ch]
		sub	esp, 10h
		mov	ecx, esp
		sub	esp, 10h
		mov	eax, [ebp-150h]
		mov	[ecx], edx
		mov	edx, [ebp-78h]
		mov	[ecx+4], edx
		mov	edx, [ebp-74h]
		mov	[ecx+8], edx
		mov	edx, [ebp-70h]
		mov	[ecx+0Ch], edx
		mov	edx, esp
		mov	ecx, 3
		push	2
		mov	[edx], ecx
		mov	ecx, [esi]
		push	1
		push	offset loc_4049C0
		mov	[edx+4], ebx
		push	0
		push	51h
		push	esi
		mov	[edx+8], eax
		mov	eax, [ebp-90h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-20h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-3Ch]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-24h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	edx, [ebp-24h]
		lea	eax, [ebp-20h]
		push	edx
		lea	ecx, [ebp-1Ch]
		push	eax
		push	ecx
		push	3
		call	ds:__vbaFreeObjList
		add	esp, 3Ch
		lea	ecx, [ebp-3Ch]
		call	ds:__vbaFreeVar
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		mov	[ebp-7Ch], ecx
		xor	eax, eax
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, [ebp-78h]
		mov	[ebp-74h], eax
		mov	[edx+4], ecx
		mov	ecx, esp
		push	2
		push	2
		mov	[edx+8], eax
		mov	eax, [ebp-70h]
		push	offset loc_4049C0
		push	0
		mov	[edx+0Ch], eax
		mov	eax, 3
		mov	edx, [ebp-90h]
		mov	[ecx], eax
		mov	eax, 1
		push	51h
		mov	[ecx+4], ebx
		mov	[ecx+8], eax
		mov	[ecx+0Ch], edx
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+448h]
		lea	ecx, [ebp-1Ch]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		lea	edx, [ebp-3Ch]
		push	eax
		push	edx
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		push	eax
		lea	eax, [ebp-20h]
		push	eax
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	ecx, [ebp-20h]
		lea	edx, [ebp-1Ch]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 38h
		lea	ecx, [ebp-3Ch]
		call	ds:__vbaFreeVar
		mov	eax, [esi]
		push	esi
		mov	dword ptr [ebp-74h], 0
		mov	dword ptr [ebp-7Ch], 2
		call	dword ptr [eax+2FCh]
		lea	ecx, [ebp-1Ch]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		lea	ecx, [ebp-150h]
		push	ecx
		push	eax
		mov	[ebp-15Ch], eax
		call	dword ptr [edx+1C0h]
		test	eax, eax
		fnclex
		jge	short loc_412F4F
		mov	edx, [ebp-15Ch]
		push	1C0h
		push	offset dword_4048C8
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_412F4F:				; CODE XREF: .text:00412F35j
		mov	edx, [ebp-7Ch]
		sub	esp, 10h
		mov	ecx, esp
		sub	esp, 10h
		mov	eax, [ebp-150h]
		mov	[ecx], edx
		mov	edx, [ebp-78h]
		mov	[ecx+4], edx
		mov	edx, [ebp-74h]
		mov	[ecx+8], edx
		mov	edx, [ebp-70h]
		mov	[ecx+0Ch], edx
		mov	edx, esp
		mov	ecx, 3
		push	2
		mov	[edx], ecx
		mov	ecx, [esi]
		push	1
		push	(offset	loc_4049CF+1)
		mov	[edx+4], ebx
		push	0
		push	52h
		push	esi
		mov	[edx+8], eax
		mov	eax, [ebp-90h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-20h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-3Ch]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-24h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	edx, [ebp-24h]
		lea	eax, [ebp-20h]
		push	edx
		lea	ecx, [ebp-1Ch]
		push	eax
		push	ecx
		push	3
		call	ds:__vbaFreeObjList
		add	esp, 3Ch
		lea	ecx, [ebp-3Ch]
		call	ds:__vbaFreeVar
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		mov	[ebp-7Ch], ecx
		xor	eax, eax
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, [ebp-78h]
		mov	[ebp-74h], eax
		mov	[edx+4], ecx
		mov	ecx, esp
		push	2
		push	2
		mov	[edx+8], eax
		mov	eax, [ebp-70h]
		push	(offset	loc_4049CF+1)
		push	0
		mov	[edx+0Ch], eax
		mov	eax, 3
		mov	edx, [ebp-90h]
		mov	[ecx], eax
		mov	eax, 1
		push	52h
		mov	[ecx+4], ebx
		mov	[ecx+8], eax
		mov	[ecx+0Ch], edx
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+448h]
		lea	ecx, [ebp-1Ch]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		lea	edx, [ebp-3Ch]
		push	eax
		push	edx
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		push	eax
		lea	eax, [ebp-20h]
		push	eax
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	ecx, [ebp-20h]
		lea	edx, [ebp-1Ch]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 38h
		lea	ecx, [ebp-3Ch]
		call	ds:__vbaFreeVar
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+364h]
		lea	ecx, [ebp-1Ch]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	ebx, eax
		push	0FFFFFFFFh
		push	ebx
		mov	edx, [ebx]
		call	dword ptr [edx+0E4h]
		test	eax, eax
		fnclex
		jge	short loc_4130C0
		push	0E4h
		push	offset dword_404960
		push	ebx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_4130C0:				; CODE XREF: .text:004130ACj
		lea	ecx, [ebp-1Ch]
		call	ds:__vbaFreeObj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+794h]
		xor	ebx, ebx
		cmp	eax, ebx
		jge	short loc_4130EA
		push	794h
		push	offset dword_40416C
		push	esi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_4130EA:				; CODE XREF: .text:004130D6j
		mov	ecx, [esi]
		push	esi
		mov	[esi+3Ch], bx
		mov	[esi+44h], bx
		call	dword ptr [ecx+314h]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		sub	esp, 10h
		mov	ebx, eax
		mov	edx, esp
		mov	eax, 0Ah
		mov	[ebp-7Ch], eax
		mov	dword ptr [ebp-74h], 80020004h
		mov	ecx, [ebx]
		mov	[edx], eax
		mov	eax, [ebp-78h]
		push	offset aNone	; "None"
		mov	[edx+4], eax
		mov	eax, [ebp-74h]
		push	ebx
		mov	[edx+8], eax
		mov	eax, [ebp-70h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+1ECh]
		test	eax, eax
		fnclex
		jge	short loc_413152
		push	1ECh
		push	offset dword_404950
		push	ebx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_413152:				; CODE XREF: .text:0041313Ej
		lea	ecx, [ebp-1Ch]
		call	ds:__vbaFreeObj
		mov	ecx, [esi]
		push	esi
		call	dword ptr [ecx+314h]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		mov	ebx, eax
		push	0
		push	ebx
		mov	eax, [ebx]
		call	dword ptr [eax+94h]
		test	eax, eax
		fnclex
		jge	short loc_413190
		push	94h
		push	offset dword_404950
		push	ebx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_413190:				; CODE XREF: .text:0041317Cj
		mov	ebx, ds:__vbaFreeObj
		lea	ecx, [ebp-1Ch]
		call	ebx ; __vbaFreeObj
		mov	ecx, [esi]
		push	esi
		call	dword ptr [ecx+314h]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		mov	esi, eax
		push	0
		push	esi
		mov	eax, [esi]
		call	dword ptr [eax+0F4h]
		test	eax, eax
		fnclex
		jge	short loc_4131D0
		push	0F4h
		push	offset dword_404950
		push	esi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_4131D0:				; CODE XREF: .text:004131BCj
		lea	ecx, [ebp-1Ch]
		call	ebx ; __vbaFreeObj
		mov	dword ptr [ebp-4], 0
		wait
		push	offset loc_41321D
		jmp	short loc_41321C
; ---------------------------------------------------------------------------

loc_4131E4:				; DATA XREF: .text:00401344o
		lea	ecx, [ebp-2Ch]
		lea	edx, [ebp-28h]
		push	ecx
		lea	eax, [ebp-24h]
		push	edx
		lea	ecx, [ebp-20h]
		push	eax
		lea	edx, [ebp-1Ch]
		push	ecx
		push	edx
		push	5
		call	ds:__vbaFreeObjList
		lea	eax, [ebp-6Ch]
		lea	ecx, [ebp-5Ch]
		push	eax
		lea	edx, [ebp-4Ch]
		push	ecx
		lea	eax, [ebp-3Ch]
		push	edx
		push	eax
		push	4
		call	ds:__vbaFreeVarList
		add	esp, 2Ch
		retn
; ---------------------------------------------------------------------------

loc_41321C:				; CODE XREF: .text:004131E2j
		retn
; ---------------------------------------------------------------------------

loc_41321D:				; CODE XREF: .text:loc_41321Cj
					; DATA XREF: .text:004131DDo
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------
		align 10h

loc_413240:				; CODE XREF: .text:0040898Cj
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 88h
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_401348
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		mov	edx, [esi]
		xor	edi, edi
		push	esi
		mov	[ebp-18h], edi
		mov	[ebp-1Ch], edi
		mov	[ebp-20h], edi
		mov	[ebp-24h], edi
		mov	[ebp-34h], edi
		mov	[ebp-44h], edi
		call	dword ptr [edx+73Ch]
		cmp	eax, edi
		jge	short loc_4132B6
		push	73Ch
		push	offset dword_40416C
		push	esi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_4132B6:				; CODE XREF: .text:004132A2j
		sub	esp, 10h
		mov	ecx, 2
		mov	ebx, esp
		xor	eax, eax
		mov	edi, 3
		xor	edx, edx
		mov	[ebx], ecx
		mov	ecx, esp
		mov	[ebp-98h], ebx
		mov	ebx, [ebp-50h]
		mov	[ecx+4], ebx
		sub	esp, 10h
		mov	[ecx+8], eax
		mov	eax, [ebp-48h]
		mov	[ecx+0Ch], eax
		mov	eax, [ebp-70h]
		mov	ecx, esp
		push	2
		push	29h
		push	offset dword_404970
		mov	[ecx], edi
		push	0
		push	0E2h
		push	esi
		mov	[ecx+4], eax
		mov	eax, [esi]
		mov	[ecx+8], edx
		mov	edx, [ebp-68h]
		mov	[ecx+0Ch], edx
		call	dword ptr [eax+448h]
		mov	edi, ds:__vbaObjSet
		lea	ecx, [ebp-1Ch]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		lea	edx, [ebp-34h]
		push	eax
		push	edx
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		push	eax
		lea	eax, [ebp-20h]
		push	eax
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	ecx, [ebp-20h]
		lea	edx, [ebp-1Ch]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 38h
		lea	ecx, [ebp-34h]
		call	ds:__vbaFreeVar
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, esp
		push	2
		push	1Ch
		mov	[edx+4], ebx
		push	offset dword_404970
		push	0
		push	0E2h
		mov	[edx+8], eax
		mov	eax, [ebp-48h]
		mov	[edx+0Ch], eax
		mov	edx, [ebp-70h]
		mov	eax, 3
		mov	[ecx], eax
		mov	eax, 0FFFFFF38h
		mov	[ecx+4], edx
		mov	[ecx+8], eax
		mov	eax, [ebp-68h]
		mov	[ecx+0Ch], eax
		mov	ecx, [esi]
		push	esi
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-34h]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	edx, [ebp-20h]
		lea	eax, [ebp-1Ch]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 38h
		lea	ecx, [ebp-34h]
		call	ds:__vbaFreeVar
		mov	ecx, [esi]
		push	esi
		call	dword ptr [ecx+308h]
		lea	edx, [ebp-24h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		sub	esp, 10h
		mov	[ebp-9Ch], edx
		mov	edx, esp
		mov	ecx, 2
		mov	[ebp-88h], eax
		mov	[edx], ecx
		mov	ecx, [esi]
		push	1
		xor	eax, eax
		mov	[edx+4], ebx
		push	1Dh
		push	offset dword_404970
		push	0
		mov	[edx+8], eax
		mov	eax, [ebp-48h]
		push	0E2h
		push	esi
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-34h]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		lea	edx, [ebp-44h]
		push	eax
		push	edx
		call	ds:__vbaLateIdCallLd
		add	esp, 20h
		push	eax
		call	ds:__vbaI4Var
		push	eax
		call	ds:__vbaStrI4
		mov	edx, eax
		lea	ecx, [ebp-18h]
		call	ds:__vbaStrMove
		mov	edi, [ebp-88h]
		push	eax
		mov	eax, [ebp-9Ch]
		push	edi
		call	dword ptr [eax+0A4h]
		test	eax, eax
		fnclex
		jge	short loc_4134BD
		push	0A4h
		push	offset dword_4049A0
		push	edi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_4134BD:				; CODE XREF: .text:004134A9j
		lea	ecx, [ebp-18h]
		call	ds:__vbaFreeStr
		lea	ecx, [ebp-24h]
		lea	edx, [ebp-20h]
		push	ecx
		lea	eax, [ebp-1Ch]
		push	edx
		push	eax
		push	3
		call	ds:__vbaFreeObjList
		lea	ecx, [ebp-44h]
		lea	edx, [ebp-34h]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeVarList
		add	esp, 1Ch
		call	ds:rtcDoEvents
		mov	eax, [esi]
		push	0FFFFFFFFh
		push	esi
		call	dword ptr [eax+704h]
		mov	dword ptr [ebp-4], 0
		push	offset loc_41353E
		jmp	short loc_41353D
; ---------------------------------------------------------------------------

loc_41350C:				; DATA XREF: .text:00401354o
		lea	ecx, [ebp-18h]
		call	ds:__vbaFreeStr
		lea	ecx, [ebp-24h]
		lea	edx, [ebp-20h]
		push	ecx
		lea	eax, [ebp-1Ch]
		push	edx
		push	eax
		push	3
		call	ds:__vbaFreeObjList
		lea	ecx, [ebp-44h]
		lea	edx, [ebp-34h]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeVarList
		add	esp, 1Ch
		retn
; ---------------------------------------------------------------------------

loc_41353D:				; CODE XREF: .text:0041350Aj
		retn
; ---------------------------------------------------------------------------

loc_41353E:				; CODE XREF: .text:loc_41353Dj
					; DATA XREF: .text:00413505o
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------
		align 10h

loc_413560:				; CODE XREF: .text:00408999j
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 88h
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_401358
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		mov	edx, [esi]
		xor	edi, edi
		push	esi
		mov	[ebp-18h], edi
		mov	[ebp-1Ch], edi
		mov	[ebp-20h], edi
		mov	[ebp-24h], edi
		mov	[ebp-34h], edi
		mov	[ebp-44h], edi
		call	dword ptr [edx+73Ch]
		cmp	eax, edi
		jge	short loc_4135D6
		push	73Ch
		push	offset dword_40416C
		push	esi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_4135D6:				; CODE XREF: .text:004135C2j
		sub	esp, 10h
		mov	ecx, 2
		mov	ebx, esp
		mov	edx, ecx
		xor	eax, eax
		mov	edi, 3
		mov	[ebx], ecx
		mov	ecx, esp
		mov	[ebp-98h], ebx
		mov	ebx, [ebp-50h]
		mov	[ecx+4], ebx
		sub	esp, 10h
		mov	[ecx+8], eax
		mov	eax, [ebp-48h]
		mov	[ecx+0Ch], eax
		mov	eax, [ebp-70h]
		mov	ecx, esp
		push	2
		push	29h
		push	offset dword_404970
		mov	[ecx], edi
		push	0
		push	0E2h
		push	esi
		mov	[ecx+4], eax
		mov	eax, [esi]
		mov	[ecx+8], edx
		mov	edx, [ebp-68h]
		mov	[ecx+0Ch], edx
		call	dword ptr [eax+448h]
		mov	edi, ds:__vbaObjSet
		lea	ecx, [ebp-1Ch]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		lea	edx, [ebp-34h]
		push	eax
		push	edx
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		push	eax
		lea	eax, [ebp-20h]
		push	eax
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	ecx, [ebp-20h]
		lea	edx, [ebp-1Ch]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 38h
		lea	ecx, [ebp-34h]
		call	ds:__vbaFreeVar
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, esp
		push	2
		push	1Ch
		mov	[edx+4], ebx
		push	offset dword_404970
		push	0
		push	0E2h
		mov	[edx+8], eax
		mov	eax, [ebp-48h]
		mov	[edx+0Ch], eax
		mov	edx, [ebp-70h]
		mov	eax, 3
		mov	[ecx], eax
		mov	eax, 0FFFFFF38h
		mov	[ecx+4], edx
		mov	[ecx+8], eax
		mov	eax, [ebp-68h]
		mov	[ecx+0Ch], eax
		mov	ecx, [esi]
		push	esi
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-34h]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	edx, [ebp-20h]
		lea	eax, [ebp-1Ch]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 38h
		lea	ecx, [ebp-34h]
		call	ds:__vbaFreeVar
		mov	ecx, [esi]
		push	esi
		call	dword ptr [ecx+308h]
		lea	edx, [ebp-24h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		sub	esp, 10h
		mov	[ebp-9Ch], edx
		mov	edx, esp
		mov	ecx, 2
		mov	[ebp-88h], eax
		mov	[edx], ecx
		mov	ecx, [esi]
		push	1
		xor	eax, eax
		mov	[edx+4], ebx
		push	1Dh
		push	offset dword_404970
		push	0
		mov	[edx+8], eax
		mov	eax, [ebp-48h]
		push	0E2h
		push	esi
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-34h]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		lea	edx, [ebp-44h]
		push	eax
		push	edx
		call	ds:__vbaLateIdCallLd
		add	esp, 20h
		push	eax
		call	ds:__vbaI4Var
		push	eax
		call	ds:__vbaStrI4
		mov	edx, eax
		lea	ecx, [ebp-18h]
		call	ds:__vbaStrMove
		mov	edi, [ebp-88h]
		push	eax
		mov	eax, [ebp-9Ch]
		push	edi
		call	dword ptr [eax+0A4h]
		test	eax, eax
		fnclex
		jge	short loc_4137DD
		push	0A4h
		push	offset dword_4049A0
		push	edi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_4137DD:				; CODE XREF: .text:004137C9j
		lea	ecx, [ebp-18h]
		call	ds:__vbaFreeStr
		lea	ecx, [ebp-24h]
		lea	edx, [ebp-20h]
		push	ecx
		lea	eax, [ebp-1Ch]
		push	edx
		push	eax
		push	3
		call	ds:__vbaFreeObjList
		lea	ecx, [ebp-44h]
		lea	edx, [ebp-34h]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeVarList
		add	esp, 1Ch
		call	ds:rtcDoEvents
		mov	eax, [esi]
		push	0FFFFFFFFh
		push	esi
		call	dword ptr [eax+704h]
		mov	dword ptr [ebp-4], 0
		push	offset loc_41385E
		jmp	short loc_41385D
; ---------------------------------------------------------------------------

loc_41382C:				; DATA XREF: .text:00401364o
		lea	ecx, [ebp-18h]
		call	ds:__vbaFreeStr
		lea	ecx, [ebp-24h]
		lea	edx, [ebp-20h]
		push	ecx
		lea	eax, [ebp-1Ch]
		push	edx
		push	eax
		push	3
		call	ds:__vbaFreeObjList
		lea	ecx, [ebp-44h]
		lea	edx, [ebp-34h]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeVarList
		add	esp, 1Ch
		retn
; ---------------------------------------------------------------------------

loc_41385D:				; CODE XREF: .text:0041382Aj
		retn
; ---------------------------------------------------------------------------

loc_41385E:				; CODE XREF: .text:loc_41385Dj
					; DATA XREF: .text:00413825o
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------
		align 10h

loc_413880:				; CODE XREF: .text:004089A6j
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 88h
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_401368
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		mov	edx, [esi]
		xor	edi, edi
		push	esi
		mov	[ebp-18h], edi
		mov	[ebp-1Ch], edi
		mov	[ebp-20h], edi
		mov	[ebp-24h], edi
		mov	[ebp-34h], edi
		mov	[ebp-44h], edi
		call	dword ptr [edx+73Ch]
		cmp	eax, edi
		jge	short loc_4138F6
		push	73Ch
		push	offset dword_40416C
		push	esi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_4138F6:				; CODE XREF: .text:004138E2j
		sub	esp, 10h
		mov	ecx, 2
		mov	ebx, esp
		xor	eax, eax
		mov	edi, 3
		mov	edx, 1
		mov	[ebx], ecx
		mov	ecx, esp
		mov	[ebp-98h], ebx
		mov	ebx, [ebp-50h]
		mov	[ecx+4], ebx
		sub	esp, 10h
		mov	[ecx+8], eax
		mov	eax, [ebp-48h]
		mov	[ecx+0Ch], eax
		mov	eax, [ebp-70h]
		mov	ecx, esp
		push	2
		push	29h
		push	offset dword_404970
		mov	[ecx], edi
		push	0
		push	0E2h
		push	esi
		mov	[ecx+4], eax
		mov	eax, [esi]
		mov	[ecx+8], edx
		mov	edx, [ebp-68h]
		mov	[ecx+0Ch], edx
		call	dword ptr [eax+448h]
		mov	edi, ds:__vbaObjSet
		lea	ecx, [ebp-1Ch]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		lea	edx, [ebp-34h]
		push	eax
		push	edx
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		push	eax
		lea	eax, [ebp-20h]
		push	eax
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	ecx, [ebp-20h]
		lea	edx, [ebp-1Ch]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 38h
		lea	ecx, [ebp-34h]
		call	ds:__vbaFreeVar
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, esp
		push	2
		push	1Ch
		mov	[edx+4], ebx
		push	offset dword_404970
		push	0
		push	0E2h
		mov	[edx+8], eax
		mov	eax, [ebp-48h]
		mov	[edx+0Ch], eax
		mov	edx, [ebp-70h]
		mov	eax, 3
		mov	[ecx], eax
		mov	eax, 0FFFFFF38h
		mov	[ecx+4], edx
		mov	[ecx+8], eax
		mov	eax, [ebp-68h]
		mov	[ecx+0Ch], eax
		mov	ecx, [esi]
		push	esi
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-34h]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	edx, [ebp-20h]
		lea	eax, [ebp-1Ch]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 38h
		lea	ecx, [ebp-34h]
		call	ds:__vbaFreeVar
		mov	ecx, [esi]
		push	esi
		call	dword ptr [ecx+308h]
		lea	edx, [ebp-24h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		sub	esp, 10h
		mov	[ebp-9Ch], edx
		mov	edx, esp
		mov	ecx, 2
		mov	[ebp-88h], eax
		mov	[edx], ecx
		mov	ecx, [esi]
		push	1
		xor	eax, eax
		mov	[edx+4], ebx
		push	1Dh
		push	offset dword_404970
		push	0
		mov	[edx+8], eax
		mov	eax, [ebp-48h]
		push	0E2h
		push	esi
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-34h]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		lea	edx, [ebp-44h]
		push	eax
		push	edx
		call	ds:__vbaLateIdCallLd
		add	esp, 20h
		push	eax
		call	ds:__vbaI4Var
		push	eax
		call	ds:__vbaStrI4
		mov	edx, eax
		lea	ecx, [ebp-18h]
		call	ds:__vbaStrMove
		mov	edi, [ebp-88h]
		push	eax
		mov	eax, [ebp-9Ch]
		push	edi
		call	dword ptr [eax+0A4h]
		test	eax, eax
		fnclex
		jge	short loc_413B00
		push	0A4h
		push	offset dword_4049A0
		push	edi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_413B00:				; CODE XREF: .text:00413AECj
		lea	ecx, [ebp-18h]
		call	ds:__vbaFreeStr
		lea	ecx, [ebp-24h]
		lea	edx, [ebp-20h]
		push	ecx
		lea	eax, [ebp-1Ch]
		push	edx
		push	eax
		push	3
		call	ds:__vbaFreeObjList
		lea	ecx, [ebp-44h]
		lea	edx, [ebp-34h]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeVarList
		add	esp, 1Ch
		call	ds:rtcDoEvents
		mov	eax, [esi]
		push	0FFFFFFFFh
		push	esi
		call	dword ptr [eax+704h]
		mov	dword ptr [ebp-4], 0
		push	offset loc_413B81
		jmp	short loc_413B80
; ---------------------------------------------------------------------------

loc_413B4F:				; DATA XREF: .text:00401374o
		lea	ecx, [ebp-18h]
		call	ds:__vbaFreeStr
		lea	ecx, [ebp-24h]
		lea	edx, [ebp-20h]
		push	ecx
		lea	eax, [ebp-1Ch]
		push	edx
		push	eax
		push	3
		call	ds:__vbaFreeObjList
		lea	ecx, [ebp-44h]
		lea	edx, [ebp-34h]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeVarList
		add	esp, 1Ch
		retn
; ---------------------------------------------------------------------------

loc_413B80:				; CODE XREF: .text:00413B4Dj
		retn
; ---------------------------------------------------------------------------

loc_413B81:				; CODE XREF: .text:loc_413B80j
					; DATA XREF: .text:00413B48o
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_413BA0:				; CODE XREF: .text:004089B3j
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 88h
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_401378
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		mov	edx, [esi]
		xor	edi, edi
		push	esi
		mov	[ebp-18h], edi
		mov	[ebp-1Ch], edi
		mov	[ebp-20h], edi
		mov	[ebp-24h], edi
		mov	[ebp-34h], edi
		mov	[ebp-44h], edi
		call	dword ptr [edx+73Ch]
		cmp	eax, edi
		jge	short loc_413C16
		push	73Ch
		push	offset dword_40416C
		push	esi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_413C16:				; CODE XREF: .text:00413C02j
		sub	esp, 10h
		mov	ecx, 2
		mov	ebx, esp
		xor	eax, eax
		mov	edi, 3
		mov	edx, 5
		mov	[ebx], ecx
		mov	ecx, esp
		mov	[ebp-98h], ebx
		mov	ebx, [ebp-50h]
		mov	[ecx+4], ebx
		sub	esp, 10h
		mov	[ecx+8], eax
		mov	eax, [ebp-48h]
		mov	[ecx+0Ch], eax
		mov	eax, [ebp-70h]
		mov	ecx, esp
		push	2
		push	29h
		push	offset dword_404970
		mov	[ecx], edi
		push	0
		push	0E2h
		push	esi
		mov	[ecx+4], eax
		mov	eax, [esi]
		mov	[ecx+8], edx
		mov	edx, [ebp-68h]
		mov	[ecx+0Ch], edx
		call	dword ptr [eax+448h]
		mov	edi, ds:__vbaObjSet
		lea	ecx, [ebp-1Ch]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		lea	edx, [ebp-34h]
		push	eax
		push	edx
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		push	eax
		lea	eax, [ebp-20h]
		push	eax
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	ecx, [ebp-20h]
		lea	edx, [ebp-1Ch]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 38h
		lea	ecx, [ebp-34h]
		call	ds:__vbaFreeVar
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, esp
		push	2
		push	1Ch
		mov	[edx+4], ebx
		push	offset dword_404970
		push	0
		push	0E2h
		mov	[edx+8], eax
		mov	eax, [ebp-48h]
		mov	[edx+0Ch], eax
		mov	edx, [ebp-70h]
		mov	eax, 3
		mov	[ecx], eax
		xor	eax, eax
		mov	[ecx+4], edx
		mov	[ecx+8], eax
		mov	eax, [ebp-68h]
		mov	[ecx+0Ch], eax
		mov	ecx, [esi]
		push	esi
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-34h]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	edx, [ebp-20h]
		lea	eax, [ebp-1Ch]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 38h
		lea	ecx, [ebp-34h]
		call	ds:__vbaFreeVar
		mov	ecx, [esi]
		push	esi
		call	dword ptr [ecx+308h]
		lea	edx, [ebp-24h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		sub	esp, 10h
		mov	[ebp-9Ch], edx
		mov	edx, esp
		mov	ecx, 2
		mov	[ebp-88h], eax
		mov	[edx], ecx
		mov	ecx, [esi]
		push	1
		xor	eax, eax
		mov	[edx+4], ebx
		push	1Dh
		push	offset dword_404970
		push	0
		mov	[edx+8], eax
		mov	eax, [ebp-48h]
		push	0E2h
		push	esi
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-34h]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-20h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		lea	edx, [ebp-44h]
		push	eax
		push	edx
		call	ds:__vbaLateIdCallLd
		add	esp, 20h
		push	eax
		call	ds:__vbaI4Var
		push	eax
		call	ds:__vbaStrI4
		mov	edx, eax
		lea	ecx, [ebp-18h]
		call	ds:__vbaStrMove
		mov	edi, [ebp-88h]
		push	eax
		mov	eax, [ebp-9Ch]
		push	edi
		call	dword ptr [eax+0A4h]
		test	eax, eax
		fnclex
		jge	short loc_413E1D
		push	0A4h
		push	offset dword_4049A0
		push	edi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_413E1D:				; CODE XREF: .text:00413E09j
		lea	ecx, [ebp-18h]
		call	ds:__vbaFreeStr
		lea	ecx, [ebp-24h]
		lea	edx, [ebp-20h]
		push	ecx
		lea	eax, [ebp-1Ch]
		push	edx
		push	eax
		push	3
		call	ds:__vbaFreeObjList
		lea	ecx, [ebp-44h]
		lea	edx, [ebp-34h]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeVarList
		add	esp, 1Ch
		call	ds:rtcDoEvents
		mov	eax, [esi]
		push	0FFFFFFFFh
		push	esi
		call	dword ptr [eax+704h]
		mov	dword ptr [ebp-4], 0
		push	offset loc_413E9E
		jmp	short loc_413E9D
; ---------------------------------------------------------------------------

loc_413E6C:				; DATA XREF: .text:00401384o
		lea	ecx, [ebp-18h]
		call	ds:__vbaFreeStr
		lea	ecx, [ebp-24h]
		lea	edx, [ebp-20h]
		push	ecx
		lea	eax, [ebp-1Ch]
		push	edx
		push	eax
		push	3
		call	ds:__vbaFreeObjList
		lea	ecx, [ebp-44h]
		lea	edx, [ebp-34h]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeVarList
		add	esp, 1Ch
		retn
; ---------------------------------------------------------------------------

loc_413E9D:				; CODE XREF: .text:00413E6Aj
		retn
; ---------------------------------------------------------------------------

loc_413E9E:				; CODE XREF: .text:loc_413E9Dj
					; DATA XREF: .text:00413E65o
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------
		align 10h

loc_413EC0:				; CODE XREF: .text:004089C0j
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 64h
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_401388
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		mov	edx, [esi]
		xor	edi, edi
		push	esi
		mov	[ebp-18h], edi
		mov	[ebp-1Ch], edi
		mov	[ebp-2Ch], edi
		call	dword ptr [edx+73Ch]
		cmp	eax, edi
		jge	short loc_413F2A
		push	73Ch
		push	offset dword_40416C
		push	esi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_413F2A:				; CODE XREF: .text:00413F16j
		sub	esp, 10h
		mov	ecx, 2
		mov	ebx, esp
		xor	eax, eax
		sub	esp, 10h
		mov	edi, 3
		mov	[ebx], ecx
		mov	ecx, [ebp-38h]
		mov	edx, 4
		mov	[ebx+4], ecx
		mov	ecx, esp
		push	2
		push	29h
		mov	[ebx+8], eax
		mov	eax, [ebp-30h]
		push	offset dword_404970
		push	0
		mov	[ebx+0Ch], eax
		mov	eax, [ebp-58h]
		mov	[ecx], edi
		push	0E2h
		push	esi
		mov	[ecx+4], eax
		mov	eax, [esi]
		mov	[ecx+8], edx
		mov	edx, [ebp-50h]
		mov	[ecx+0Ch], edx
		call	dword ptr [eax+448h]
		mov	edi, ds:__vbaObjSet
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		lea	edx, [ebp-2Ch]
		push	eax
		push	edx
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		push	eax
		lea	eax, [ebp-1Ch]
		push	eax
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	ecx, [ebp-1Ch]
		lea	edx, [ebp-18h]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 38h
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeVar
		call	ds:rtcDoEvents
		mov	eax, [esi]
		push	0
		push	esi
		call	dword ptr [eax+704h]
		mov	dword ptr [ebp-4], 0
		push	offset loc_414009
		jmp	short loc_414008
; ---------------------------------------------------------------------------

loc_413FEB:				; DATA XREF: .text:00401394o
		lea	ecx, [ebp-1Ch]
		lea	edx, [ebp-18h]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 0Ch
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeVar
		retn
; ---------------------------------------------------------------------------

loc_414008:				; CODE XREF: .text:00413FE9j
		retn
; ---------------------------------------------------------------------------

loc_414009:				; CODE XREF: .text:loc_414008j
					; DATA XREF: .text:00413FE4o
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------
		align 10h

loc_414030:				; CODE XREF: .text:004089CDj
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 64h
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_401398
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		mov	edx, [esi]
		xor	edi, edi
		push	esi
		mov	[ebp-18h], edi
		mov	[ebp-1Ch], edi
		mov	[ebp-2Ch], edi
		call	dword ptr [edx+73Ch]
		cmp	eax, edi
		jge	short loc_41409A
		push	73Ch
		push	offset dword_40416C
		push	esi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_41409A:				; CODE XREF: .text:00414086j
		sub	esp, 10h
		mov	ecx, 2
		mov	ebx, esp
		xor	eax, eax
		sub	esp, 10h
		mov	edx, 3
		mov	[ebx], ecx
		mov	ecx, [ebp-38h]
		mov	edi, edx
		mov	[ebx+4], ecx
		mov	ecx, esp
		push	2
		push	29h
		mov	[ebx+8], eax
		mov	eax, [ebp-30h]
		push	offset dword_404970
		push	0
		mov	[ebx+0Ch], eax
		mov	eax, [ebp-58h]
		mov	[ecx], edi
		push	0E2h
		push	esi
		mov	[ecx+4], eax
		mov	eax, [esi]
		mov	[ecx+8], edx
		mov	edx, [ebp-50h]
		mov	[ecx+0Ch], edx
		call	dword ptr [eax+448h]
		mov	edi, ds:__vbaObjSet
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		lea	edx, [ebp-2Ch]
		push	eax
		push	edx
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		push	eax
		lea	eax, [ebp-1Ch]
		push	eax
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	ecx, [ebp-1Ch]
		lea	edx, [ebp-18h]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 38h
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeVar
		call	ds:rtcDoEvents
		mov	eax, [esi]
		push	0
		push	esi
		call	dword ptr [eax+704h]
		mov	dword ptr [ebp-4], 0
		push	offset loc_414176
		jmp	short loc_414175
; ---------------------------------------------------------------------------

loc_414158:				; DATA XREF: .text:004013A4o
		lea	ecx, [ebp-1Ch]
		lea	edx, [ebp-18h]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 0Ch
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeVar
		retn
; ---------------------------------------------------------------------------

loc_414175:				; CODE XREF: .text:00414156j
		retn
; ---------------------------------------------------------------------------

loc_414176:				; CODE XREF: .text:loc_414175j
					; DATA XREF: .text:00414151o
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------
		align 10h

loc_4141A0:				; CODE XREF: .text:004089DAj
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 94h
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_4013A8
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		mov	edx, [esi]
		xor	ebx, ebx
		push	ebx
		push	0Bh
		push	esi
		mov	[ebp-18h], ebx
		mov	[ebp-1Ch], ebx
		mov	[ebp-2Ch], ebx
		mov	[ebp-3Ch], ebx
		call	dword ptr [edx+41Ch]
		mov	edi, ds:__vbaObjSet
		push	eax
		lea	eax, [ebp-18h]
		push	eax
		call	edi ; __vbaObjSet
		lea	ecx, [ebp-2Ch]
		push	eax
		push	ecx
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaI4Var
		neg	eax
		jo	loc_4143B4
		push	eax
		call	ds:__vbaStrI4
		sub	esp, 10h
		mov	ecx, 8
		mov	edx, esp
		mov	[ebp-3Ch], ecx
		mov	[ebp-34h], eax
		push	10h
		mov	[edx], ecx
		mov	ecx, [ebp-38h]
		push	esi
		mov	[edx+4], ecx
		mov	ecx, [esi]
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+41Ch]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdSt
		lea	eax, [ebp-1Ch]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeObjList
		lea	edx, [ebp-3Ch]
		lea	eax, [ebp-2Ch]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeVarList
		mov	ecx, [esi]
		add	esp, 18h
		push	ebx
		push	0Bh
		push	esi
		call	dword ptr [ecx+41Ch]
		push	eax
		lea	edx, [ebp-18h]
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-2Ch]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaI4Var
		neg	eax
		jo	loc_4143B4
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		mov	[ebp-0A8h], eax
		sub	esp, 10h
		mov	eax, 4
		mov	[edx], ecx
		mov	ecx, [ebp-48h]
		fild	dword ptr [ebp-0A8h]
		mov	[edx+4], ecx
		xor	ecx, ecx
		mov	[edx+8], ecx
		mov	ecx, [ebp-40h]
		fstp	dword ptr [ebp-84h]
		mov	[edx+0Ch], ecx
		mov	edx, esp
		mov	ecx, eax
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, [ebp-68h]
		mov	[edx+4], ecx
		mov	ecx, 42A00000h
		mov	[edx+8], ecx
		mov	ecx, [ebp-60h]
		mov	[edx+0Ch], ecx
		mov	ecx, [ebp-84h]
		mov	edx, esp
		push	3
		push	0C7h
		push	esi
		mov	[edx], eax
		mov	eax, [ebp-88h]
		mov	[edx+4], eax
		mov	eax, [ebp-80h]
		mov	[edx+8], ecx
		mov	ecx, [esi]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	eax, [ebp-1Ch]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 48h
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeVar
		mov	[ebp-4], ebx
		wait
		push	offset loc_414395
		jmp	short loc_414394
; ---------------------------------------------------------------------------

loc_414370:				; DATA XREF: .text:004013B4o
		lea	edx, [ebp-1Ch]
		lea	eax, [ebp-18h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeObjList
		lea	ecx, [ebp-3Ch]
		lea	edx, [ebp-2Ch]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeVarList
		add	esp, 18h
		retn
; ---------------------------------------------------------------------------

loc_414394:				; CODE XREF: .text:0041436Ej
		retn
; ---------------------------------------------------------------------------

loc_414395:				; CODE XREF: .text:loc_414394j
					; DATA XREF: .text:00414369o
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_4143B4:				; CODE XREF: .text:00414221j
					; .text:004142B5j
		call	ds:__vbaErrorOverflow
; ---------------------------------------------------------------------------
		align 10h

loc_4143C0:				; CODE XREF: .text:004089E7j
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 0Ch
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_4013B8
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+7A0h]
		test	eax, eax
		jge	short loc_41441F
		push	7A0h
		push	offset dword_40416C
		push	esi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_41441F:				; CODE XREF: .text:0041440Bj
		mov	dword ptr [ebp-4], 0
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------
		align 10h

loc_414450:				; CODE XREF: .text:004089F4j
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 94h
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_4013C0
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		mov	edx, [esi]
		xor	ebx, ebx
		push	ebx
		push	0Bh
		push	esi
		mov	[ebp-18h], ebx
		mov	[ebp-1Ch], ebx
		mov	[ebp-2Ch], ebx
		mov	[ebp-3Ch], ebx
		call	dword ptr [edx+434h]
		mov	edi, ds:__vbaObjSet
		push	eax
		lea	eax, [ebp-18h]
		push	eax
		call	edi ; __vbaObjSet
		lea	ecx, [ebp-2Ch]
		push	eax
		push	ecx
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaI4Var
		neg	eax
		jo	loc_414664
		push	eax
		call	ds:__vbaStrI4
		sub	esp, 10h
		mov	ecx, 8
		mov	edx, esp
		mov	[ebp-3Ch], ecx
		mov	[ebp-34h], eax
		push	10h
		mov	[edx], ecx
		mov	ecx, [ebp-38h]
		push	esi
		mov	[edx+4], ecx
		mov	ecx, [esi]
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+434h]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdSt
		lea	eax, [ebp-1Ch]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeObjList
		lea	edx, [ebp-3Ch]
		lea	eax, [ebp-2Ch]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeVarList
		mov	ecx, [esi]
		add	esp, 18h
		push	ebx
		push	0Bh
		push	esi
		call	dword ptr [ecx+434h]
		push	eax
		lea	edx, [ebp-18h]
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-2Ch]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaI4Var
		neg	eax
		jo	loc_414664
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		mov	[ebp-0A8h], eax
		sub	esp, 10h
		mov	eax, 4
		mov	[edx], ecx
		mov	ecx, [ebp-48h]
		fild	dword ptr [ebp-0A8h]
		mov	[edx+4], ecx
		xor	ecx, ecx
		mov	[edx+8], ecx
		mov	ecx, [ebp-40h]
		fstp	dword ptr [ebp-84h]
		mov	[edx+0Ch], ecx
		mov	edx, esp
		mov	ecx, eax
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, [ebp-68h]
		mov	[edx+4], ecx
		mov	ecx, 432A0000h
		mov	[edx+8], ecx
		mov	ecx, [ebp-60h]
		mov	[edx+0Ch], ecx
		mov	ecx, [ebp-84h]
		mov	edx, esp
		push	3
		push	0C7h
		push	esi
		mov	[edx], eax
		mov	eax, [ebp-88h]
		mov	[edx+4], eax
		mov	eax, [ebp-80h]
		mov	[edx+8], ecx
		mov	ecx, [esi]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	eax, [ebp-1Ch]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 48h
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeVar
		mov	[ebp-4], ebx
		wait
		push	offset loc_414645
		jmp	short loc_414644
; ---------------------------------------------------------------------------

loc_414620:				; DATA XREF: .text:004013CCo
		lea	edx, [ebp-1Ch]
		lea	eax, [ebp-18h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeObjList
		lea	ecx, [ebp-3Ch]
		lea	edx, [ebp-2Ch]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeVarList
		add	esp, 18h
		retn
; ---------------------------------------------------------------------------

loc_414644:				; CODE XREF: .text:0041461Ej
		retn
; ---------------------------------------------------------------------------

loc_414645:				; CODE XREF: .text:loc_414644j
					; DATA XREF: .text:00414619o
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_414664:				; CODE XREF: .text:004144D1j
					; .text:00414565j
		call	ds:__vbaErrorOverflow
; ---------------------------------------------------------------------------
		align 10h

loc_414670:				; CODE XREF: .text:00408A01j
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 0Ch
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_4013D0
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+7A8h]
		test	eax, eax
		jge	short loc_4146CF
		push	7A8h
		push	offset dword_40416C
		push	esi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_4146CF:				; CODE XREF: .text:004146BBj
		mov	dword ptr [ebp-4], 0
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------
		align 10h

loc_414700:				; CODE XREF: .text:00408A0Ej
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 94h
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_4013D8
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		mov	edx, [esi]
		xor	ebx, ebx
		push	ebx
		push	0Bh
		push	esi
		mov	[ebp-18h], ebx
		mov	[ebp-1Ch], ebx
		mov	[ebp-2Ch], ebx
		mov	[ebp-3Ch], ebx
		call	dword ptr [edx+420h]
		mov	edi, ds:__vbaObjSet
		push	eax
		lea	eax, [ebp-18h]
		push	eax
		call	edi ; __vbaObjSet
		lea	ecx, [ebp-2Ch]
		push	eax
		push	ecx
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaI4Var
		neg	eax
		jo	loc_414914
		push	eax
		call	ds:__vbaStrI4
		sub	esp, 10h
		mov	ecx, 8
		mov	edx, esp
		mov	[ebp-3Ch], ecx
		mov	[ebp-34h], eax
		push	10h
		mov	[edx], ecx
		mov	ecx, [ebp-38h]
		push	esi
		mov	[edx+4], ecx
		mov	ecx, [esi]
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+420h]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdSt
		lea	eax, [ebp-1Ch]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeObjList
		lea	edx, [ebp-3Ch]
		lea	eax, [ebp-2Ch]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeVarList
		mov	ecx, [esi]
		add	esp, 18h
		push	ebx
		push	0Bh
		push	esi
		call	dword ptr [ecx+420h]
		push	eax
		lea	edx, [ebp-18h]
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-2Ch]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaI4Var
		neg	eax
		jo	loc_414914
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		mov	[ebp-0A8h], eax
		sub	esp, 10h
		mov	eax, 4
		mov	[edx], ecx
		mov	ecx, [ebp-48h]
		fild	dword ptr [ebp-0A8h]
		mov	[edx+4], ecx
		xor	ecx, ecx
		mov	[edx+8], ecx
		mov	ecx, [ebp-40h]
		fstp	dword ptr [ebp-84h]
		mov	[edx+0Ch], ecx
		mov	edx, esp
		mov	ecx, eax
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, [ebp-68h]
		mov	[edx+4], ecx
		mov	ecx, 439B0000h
		mov	[edx+8], ecx
		mov	ecx, [ebp-60h]
		mov	[edx+0Ch], ecx
		mov	ecx, [ebp-84h]
		mov	edx, esp
		push	3
		push	0C7h
		push	esi
		mov	[edx], eax
		mov	eax, [ebp-88h]
		mov	[edx+4], eax
		mov	eax, [ebp-80h]
		mov	[edx+8], ecx
		mov	ecx, [esi]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	eax, [ebp-1Ch]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 48h
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeVar
		mov	[ebp-4], ebx
		wait
		push	offset loc_4148F5
		jmp	short loc_4148F4
; ---------------------------------------------------------------------------

loc_4148D0:				; DATA XREF: .text:004013E4o
		lea	edx, [ebp-1Ch]
		lea	eax, [ebp-18h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeObjList
		lea	ecx, [ebp-3Ch]
		lea	edx, [ebp-2Ch]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeVarList
		add	esp, 18h
		retn
; ---------------------------------------------------------------------------

loc_4148F4:				; CODE XREF: .text:004148CEj
		retn
; ---------------------------------------------------------------------------

loc_4148F5:				; CODE XREF: .text:loc_4148F4j
					; DATA XREF: .text:004148C9o
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_414914:				; CODE XREF: .text:00414781j
					; .text:00414815j
		call	ds:__vbaErrorOverflow
; ---------------------------------------------------------------------------
		align 10h

loc_414920:				; CODE XREF: .text:00408A1Bj
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 0Ch
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_4013E8
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+7B0h]
		test	eax, eax
		jge	short loc_41497F
		push	7B0h
		push	offset dword_40416C
		push	esi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_41497F:				; CODE XREF: .text:0041496Bj
		mov	dword ptr [ebp-4], 0
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------
		align 10h

loc_4149B0:				; CODE XREF: .text:00408A28j
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 94h
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_4013F0
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		mov	edx, [esi]
		xor	ebx, ebx
		push	ebx
		push	0Bh
		push	esi
		mov	[ebp-18h], ebx
		mov	[ebp-1Ch], ebx
		mov	[ebp-2Ch], ebx
		mov	[ebp-3Ch], ebx
		call	dword ptr [edx+430h]
		mov	edi, ds:__vbaObjSet
		push	eax
		lea	eax, [ebp-18h]
		push	eax
		call	edi ; __vbaObjSet
		lea	ecx, [ebp-2Ch]
		push	eax
		push	ecx
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaI4Var
		neg	eax
		jo	loc_414BC4
		push	eax
		call	ds:__vbaStrI4
		sub	esp, 10h
		mov	ecx, 8
		mov	edx, esp
		mov	[ebp-3Ch], ecx
		mov	[ebp-34h], eax
		push	10h
		mov	[edx], ecx
		mov	ecx, [ebp-38h]
		push	esi
		mov	[edx+4], ecx
		mov	ecx, [esi]
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+430h]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdSt
		lea	eax, [ebp-1Ch]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeObjList
		lea	edx, [ebp-3Ch]
		lea	eax, [ebp-2Ch]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeVarList
		mov	ecx, [esi]
		add	esp, 18h
		push	ebx
		push	0Bh
		push	esi
		call	dword ptr [ecx+430h]
		push	eax
		lea	edx, [ebp-18h]
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-2Ch]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaI4Var
		neg	eax
		jo	loc_414BC4
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		mov	[ebp-0A8h], eax
		sub	esp, 10h
		mov	eax, 4
		mov	[edx], ecx
		mov	ecx, [ebp-48h]
		fild	dword ptr [ebp-0A8h]
		mov	[edx+4], ecx
		xor	ecx, ecx
		mov	[edx+8], ecx
		mov	ecx, [ebp-40h]
		fstp	dword ptr [ebp-84h]
		mov	[edx+0Ch], ecx
		mov	edx, esp
		mov	ecx, eax
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, [ebp-68h]
		mov	[edx+4], ecx
		mov	ecx, 44160000h
		mov	[edx+8], ecx
		mov	ecx, [ebp-60h]
		mov	[edx+0Ch], ecx
		mov	ecx, [ebp-84h]
		mov	edx, esp
		push	3
		push	0C7h
		push	esi
		mov	[edx], eax
		mov	eax, [ebp-88h]
		mov	[edx+4], eax
		mov	eax, [ebp-80h]
		mov	[edx+8], ecx
		mov	ecx, [esi]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	eax, [ebp-1Ch]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 48h
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeVar
		mov	[ebp-4], ebx
		wait
		push	offset loc_414BA5
		jmp	short loc_414BA4
; ---------------------------------------------------------------------------

loc_414B80:				; DATA XREF: .text:004013FCo
		lea	edx, [ebp-1Ch]
		lea	eax, [ebp-18h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeObjList
		lea	ecx, [ebp-3Ch]
		lea	edx, [ebp-2Ch]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeVarList
		add	esp, 18h
		retn
; ---------------------------------------------------------------------------

loc_414BA4:				; CODE XREF: .text:00414B7Ej
		retn
; ---------------------------------------------------------------------------

loc_414BA5:				; CODE XREF: .text:loc_414BA4j
					; DATA XREF: .text:00414B79o
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_414BC4:				; CODE XREF: .text:00414A31j
					; .text:00414AC5j
		call	ds:__vbaErrorOverflow
; ---------------------------------------------------------------------------
		align 10h

loc_414BD0:				; CODE XREF: .text:00408A35j
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 0Ch
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_401400
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+7B8h]
		test	eax, eax
		jge	short loc_414C2F
		push	7B8h
		push	offset dword_40416C
		push	esi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_414C2F:				; CODE XREF: .text:00414C1Bj
		mov	dword ptr [ebp-4], 0
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------
		align 10h

loc_414C60:				; CODE XREF: .text:00408A42j
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 94h
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_401408
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		mov	edx, [esi]
		xor	ebx, ebx
		push	ebx
		push	0Bh
		push	esi
		mov	[ebp-18h], ebx
		mov	[ebp-1Ch], ebx
		mov	[ebp-2Ch], ebx
		mov	[ebp-3Ch], ebx
		call	dword ptr [edx+424h]
		mov	edi, ds:__vbaObjSet
		push	eax
		lea	eax, [ebp-18h]
		push	eax
		call	edi ; __vbaObjSet
		lea	ecx, [ebp-2Ch]
		push	eax
		push	ecx
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaI4Var
		neg	eax
		jo	loc_414E74
		push	eax
		call	ds:__vbaStrI4
		sub	esp, 10h
		mov	ecx, 8
		mov	edx, esp
		mov	[ebp-3Ch], ecx
		mov	[ebp-34h], eax
		push	10h
		mov	[edx], ecx
		mov	ecx, [ebp-38h]
		push	esi
		mov	[edx+4], ecx
		mov	ecx, [esi]
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+424h]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdSt
		lea	eax, [ebp-1Ch]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeObjList
		lea	edx, [ebp-3Ch]
		lea	eax, [ebp-2Ch]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeVarList
		mov	ecx, [esi]
		add	esp, 18h
		push	ebx
		push	0Bh
		push	esi
		call	dword ptr [ecx+424h]
		push	eax
		lea	edx, [ebp-18h]
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-2Ch]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaI4Var
		neg	eax
		jo	loc_414E74
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		mov	[ebp-0A8h], eax
		sub	esp, 10h
		mov	eax, 4
		mov	[edx], ecx
		mov	ecx, [ebp-48h]
		fild	dword ptr [ebp-0A8h]
		mov	[edx+4], ecx
		xor	ecx, ecx
		mov	[edx+8], ecx
		mov	ecx, [ebp-40h]
		fstp	dword ptr [ebp-84h]
		mov	[edx+0Ch], ecx
		mov	edx, esp
		mov	ecx, eax
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, [ebp-68h]
		mov	[edx+4], ecx
		mov	ecx, 447A0000h
		mov	[edx+8], ecx
		mov	ecx, [ebp-60h]
		mov	[edx+0Ch], ecx
		mov	ecx, [ebp-84h]
		mov	edx, esp
		push	3
		push	0C7h
		push	esi
		mov	[edx], eax
		mov	eax, [ebp-88h]
		mov	[edx+4], eax
		mov	eax, [ebp-80h]
		mov	[edx+8], ecx
		mov	ecx, [esi]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	eax, [ebp-1Ch]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 48h
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeVar
		mov	[ebp-4], ebx
		wait
		push	offset loc_414E55
		jmp	short loc_414E54
; ---------------------------------------------------------------------------

loc_414E30:				; DATA XREF: .text:00401414o
		lea	edx, [ebp-1Ch]
		lea	eax, [ebp-18h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeObjList
		lea	ecx, [ebp-3Ch]
		lea	edx, [ebp-2Ch]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeVarList
		add	esp, 18h
		retn
; ---------------------------------------------------------------------------

loc_414E54:				; CODE XREF: .text:00414E2Ej
		retn
; ---------------------------------------------------------------------------

loc_414E55:				; CODE XREF: .text:loc_414E54j
					; DATA XREF: .text:00414E29o
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_414E74:				; CODE XREF: .text:00414CE1j
					; .text:00414D75j
		call	ds:__vbaErrorOverflow
; ---------------------------------------------------------------------------
		align 10h

loc_414E80:				; CODE XREF: .text:00408A4Fj
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 0Ch
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_401418
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+7C0h]
		test	eax, eax
		jge	short loc_414EDF
		push	7C0h
		push	offset dword_40416C
		push	esi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_414EDF:				; CODE XREF: .text:00414ECBj
		mov	dword ptr [ebp-4], 0
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------
		align 10h

loc_414F10:				; CODE XREF: .text:00408A5Cj
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 94h
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_401420
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		mov	edx, [esi]
		xor	ebx, ebx
		push	ebx
		push	0Bh
		push	esi
		mov	[ebp-18h], ebx
		mov	[ebp-1Ch], ebx
		mov	[ebp-2Ch], ebx
		mov	[ebp-3Ch], ebx
		call	dword ptr [edx+428h]
		mov	edi, ds:__vbaObjSet
		push	eax
		lea	eax, [ebp-18h]
		push	eax
		call	edi ; __vbaObjSet
		lea	ecx, [ebp-2Ch]
		push	eax
		push	ecx
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaI4Var
		neg	eax
		jo	loc_415124
		push	eax
		call	ds:__vbaStrI4
		sub	esp, 10h
		mov	ecx, 8
		mov	edx, esp
		mov	[ebp-3Ch], ecx
		mov	[ebp-34h], eax
		push	10h
		mov	[edx], ecx
		mov	ecx, [ebp-38h]
		push	esi
		mov	[edx+4], ecx
		mov	ecx, [esi]
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+428h]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdSt
		lea	eax, [ebp-1Ch]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeObjList
		lea	edx, [ebp-3Ch]
		lea	eax, [ebp-2Ch]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeVarList
		mov	ecx, [esi]
		add	esp, 18h
		push	ebx
		push	0Bh
		push	esi
		call	dword ptr [ecx+428h]
		push	eax
		lea	edx, [ebp-18h]
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-2Ch]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaI4Var
		neg	eax
		jo	loc_415124
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		mov	[ebp-0A8h], eax
		sub	esp, 10h
		mov	eax, 4
		mov	[edx], ecx
		mov	ecx, [ebp-48h]
		fild	dword ptr [ebp-0A8h]
		mov	[edx+4], ecx
		xor	ecx, ecx
		mov	[edx+8], ecx
		mov	ecx, [ebp-40h]
		fstp	dword ptr [ebp-84h]
		mov	[edx+0Ch], ecx
		mov	edx, esp
		mov	ecx, eax
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, [ebp-68h]
		mov	[edx+4], ecx
		mov	ecx, 453B8000h
		mov	[edx+8], ecx
		mov	ecx, [ebp-60h]
		mov	[edx+0Ch], ecx
		mov	ecx, [ebp-84h]
		mov	edx, esp
		push	3
		push	0C7h
		push	esi
		mov	[edx], eax
		mov	eax, [ebp-88h]
		mov	[edx+4], eax
		mov	eax, [ebp-80h]
		mov	[edx+8], ecx
		mov	ecx, [esi]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	eax, [ebp-1Ch]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 48h
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeVar
		mov	[ebp-4], ebx
		wait
		push	offset loc_415105
		jmp	short loc_415104
; ---------------------------------------------------------------------------

loc_4150E0:				; DATA XREF: .text:0040142Co
		lea	edx, [ebp-1Ch]
		lea	eax, [ebp-18h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeObjList
		lea	ecx, [ebp-3Ch]
		lea	edx, [ebp-2Ch]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeVarList
		add	esp, 18h
		retn
; ---------------------------------------------------------------------------

loc_415104:				; CODE XREF: .text:004150DEj
		retn
; ---------------------------------------------------------------------------

loc_415105:				; CODE XREF: .text:loc_415104j
					; DATA XREF: .text:004150D9o
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_415124:				; CODE XREF: .text:00414F91j
					; .text:00415025j
		call	ds:__vbaErrorOverflow
; ---------------------------------------------------------------------------
		align 10h

loc_415130:				; CODE XREF: .text:00408A69j
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 0Ch
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_401430
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+7C8h]
		test	eax, eax
		jge	short loc_41518F
		push	7C8h
		push	offset dword_40416C
		push	esi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_41518F:				; CODE XREF: .text:0041517Bj
		mov	dword ptr [ebp-4], 0
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------
		align 10h

loc_4151C0:				; CODE XREF: .text:00408A76j
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 94h
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_401438
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		mov	edx, [esi]
		xor	ebx, ebx
		push	ebx
		push	0Bh
		push	esi
		mov	[ebp-18h], ebx
		mov	[ebp-1Ch], ebx
		mov	[ebp-2Ch], ebx
		mov	[ebp-3Ch], ebx
		call	dword ptr [edx+42Ch]
		mov	edi, ds:__vbaObjSet
		push	eax
		lea	eax, [ebp-18h]
		push	eax
		call	edi ; __vbaObjSet
		lea	ecx, [ebp-2Ch]
		push	eax
		push	ecx
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaI4Var
		neg	eax
		jo	loc_4153D4
		push	eax
		call	ds:__vbaStrI4
		sub	esp, 10h
		mov	ecx, 8
		mov	edx, esp
		mov	[ebp-3Ch], ecx
		mov	[ebp-34h], eax
		push	10h
		mov	[edx], ecx
		mov	ecx, [ebp-38h]
		push	esi
		mov	[edx+4], ecx
		mov	ecx, [esi]
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+42Ch]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdSt
		lea	eax, [ebp-1Ch]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeObjList
		lea	edx, [ebp-3Ch]
		lea	eax, [ebp-2Ch]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeVarList
		mov	ecx, [esi]
		add	esp, 18h
		push	ebx
		push	0Bh
		push	esi
		call	dword ptr [ecx+42Ch]
		push	eax
		lea	edx, [ebp-18h]
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-2Ch]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaI4Var
		neg	eax
		jo	loc_4153D4
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		mov	[ebp-0A8h], eax
		sub	esp, 10h
		mov	eax, 4
		mov	[edx], ecx
		mov	ecx, [ebp-48h]
		fild	dword ptr [ebp-0A8h]
		mov	[edx+4], ecx
		xor	ecx, ecx
		mov	[edx+8], ecx
		mov	ecx, [ebp-40h]
		fstp	dword ptr [ebp-84h]
		mov	[edx+0Ch], ecx
		mov	edx, esp
		mov	ecx, eax
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, [ebp-68h]
		mov	[edx+4], ecx
		mov	ecx, 45BB8000h
		mov	[edx+8], ecx
		mov	ecx, [ebp-60h]
		mov	[edx+0Ch], ecx
		mov	ecx, [ebp-84h]
		mov	edx, esp
		push	3
		push	0C7h
		push	esi
		mov	[edx], eax
		mov	eax, [ebp-88h]
		mov	[edx+4], eax
		mov	eax, [ebp-80h]
		mov	[edx+8], ecx
		mov	ecx, [esi]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	eax, [ebp-1Ch]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 48h
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeVar
		mov	[ebp-4], ebx
		wait
		push	offset loc_4153B5
		jmp	short loc_4153B4
; ---------------------------------------------------------------------------

loc_415390:				; DATA XREF: .text:00401444o
		lea	edx, [ebp-1Ch]
		lea	eax, [ebp-18h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeObjList
		lea	ecx, [ebp-3Ch]
		lea	edx, [ebp-2Ch]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeVarList
		add	esp, 18h
		retn
; ---------------------------------------------------------------------------

loc_4153B4:				; CODE XREF: .text:0041538Ej
		retn
; ---------------------------------------------------------------------------

loc_4153B5:				; CODE XREF: .text:loc_4153B4j
					; DATA XREF: .text:00415389o
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_4153D4:				; CODE XREF: .text:00415241j
					; .text:004152D5j
		call	ds:__vbaErrorOverflow
; ---------------------------------------------------------------------------
		align 10h

loc_4153E0:				; CODE XREF: .text:00408A83j
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 0Ch
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_401448
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+7D0h]
		test	eax, eax
		jge	short loc_41543F
		push	7D0h
		push	offset dword_40416C
		push	esi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_41543F:				; CODE XREF: .text:0041542Bj
		mov	dword ptr [ebp-4], 0
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------
		align 10h

loc_415470:				; CODE XREF: .text:00408A90j
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 94h
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_401450
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		mov	edx, [esi]
		xor	ebx, ebx
		push	ebx
		push	0Bh
		push	esi
		mov	[ebp-18h], ebx
		mov	[ebp-1Ch], ebx
		mov	[ebp-2Ch], ebx
		mov	[ebp-3Ch], ebx
		call	dword ptr [edx+440h]
		mov	edi, ds:__vbaObjSet
		push	eax
		lea	eax, [ebp-18h]
		push	eax
		call	edi ; __vbaObjSet
		lea	ecx, [ebp-2Ch]
		push	eax
		push	ecx
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaI4Var
		neg	eax
		jo	loc_415684
		push	eax
		call	ds:__vbaStrI4
		sub	esp, 10h
		mov	ecx, 8
		mov	edx, esp
		mov	[ebp-3Ch], ecx
		mov	[ebp-34h], eax
		push	10h
		mov	[edx], ecx
		mov	ecx, [ebp-38h]
		push	esi
		mov	[edx+4], ecx
		mov	ecx, [esi]
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+440h]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdSt
		lea	eax, [ebp-1Ch]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeObjList
		lea	edx, [ebp-3Ch]
		lea	eax, [ebp-2Ch]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeVarList
		mov	ecx, [esi]
		add	esp, 18h
		push	ebx
		push	0Bh
		push	esi
		call	dword ptr [ecx+440h]
		push	eax
		lea	edx, [ebp-18h]
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-2Ch]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaI4Var
		neg	eax
		jo	loc_415684
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		mov	[ebp-0A8h], eax
		sub	esp, 10h
		mov	eax, 4
		mov	[edx], ecx
		mov	ecx, [ebp-48h]
		fild	dword ptr [ebp-0A8h]
		mov	[edx+4], ecx
		xor	ecx, ecx
		mov	[edx+8], ecx
		mov	ecx, [ebp-40h]
		fstp	dword ptr [ebp-84h]
		mov	[edx+0Ch], ecx
		mov	edx, esp
		mov	ecx, eax
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, [ebp-68h]
		mov	[edx+4], ecx
		mov	ecx, 463B8000h
		mov	[edx+8], ecx
		mov	ecx, [ebp-60h]
		mov	[edx+0Ch], ecx
		mov	ecx, [ebp-84h]
		mov	edx, esp
		push	3
		push	0C7h
		push	esi
		mov	[edx], eax
		mov	eax, [ebp-88h]
		mov	[edx+4], eax
		mov	eax, [ebp-80h]
		mov	[edx+8], ecx
		mov	ecx, [esi]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	eax, [ebp-1Ch]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 48h
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeVar
		mov	[ebp-4], ebx
		wait
		push	offset loc_415665
		jmp	short loc_415664
; ---------------------------------------------------------------------------

loc_415640:				; DATA XREF: .text:0040145Co
		lea	edx, [ebp-1Ch]
		lea	eax, [ebp-18h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeObjList
		lea	ecx, [ebp-3Ch]
		lea	edx, [ebp-2Ch]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeVarList
		add	esp, 18h
		retn
; ---------------------------------------------------------------------------

loc_415664:				; CODE XREF: .text:0041563Ej
		retn
; ---------------------------------------------------------------------------

loc_415665:				; CODE XREF: .text:loc_415664j
					; DATA XREF: .text:00415639o
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_415684:				; CODE XREF: .text:004154F1j
					; .text:00415585j
		call	ds:__vbaErrorOverflow
; ---------------------------------------------------------------------------
		align 10h

loc_415690:				; CODE XREF: .text:00408A9Dj
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 0Ch
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_401460
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+7D8h]
		test	eax, eax
		jge	short loc_4156EF
		push	7D8h
		push	offset dword_40416C
		push	esi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_4156EF:				; CODE XREF: .text:004156DBj
		mov	dword ptr [ebp-4], 0
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------
		align 10h

loc_415720:				; CODE XREF: .text:00408AAAj
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 94h
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_401468
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		mov	edx, [esi]
		xor	ebx, ebx
		push	ebx
		push	0Bh
		push	esi
		mov	[ebp-18h], ebx
		mov	[ebp-1Ch], ebx
		mov	[ebp-2Ch], ebx
		mov	[ebp-3Ch], ebx
		call	dword ptr [edx+438h]
		mov	edi, ds:__vbaObjSet
		push	eax
		lea	eax, [ebp-18h]
		push	eax
		call	edi ; __vbaObjSet
		lea	ecx, [ebp-2Ch]
		push	eax
		push	ecx
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaI4Var
		neg	eax
		jo	loc_415934
		push	eax
		call	ds:__vbaStrI4
		sub	esp, 10h
		mov	ecx, 8
		mov	edx, esp
		mov	[ebp-3Ch], ecx
		mov	[ebp-34h], eax
		push	10h
		mov	[edx], ecx
		mov	ecx, [ebp-38h]
		push	esi
		mov	[edx+4], ecx
		mov	ecx, [esi]
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+438h]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdSt
		lea	eax, [ebp-1Ch]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeObjList
		lea	edx, [ebp-3Ch]
		lea	eax, [ebp-2Ch]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeVarList
		mov	ecx, [esi]
		add	esp, 18h
		push	ebx
		push	0Bh
		push	esi
		call	dword ptr [ecx+438h]
		push	eax
		lea	edx, [ebp-18h]
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-2Ch]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaI4Var
		neg	eax
		jo	loc_415934
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		mov	[ebp-0A8h], eax
		sub	esp, 10h
		mov	eax, 4
		mov	[edx], ecx
		mov	ecx, [ebp-48h]
		fild	dword ptr [ebp-0A8h]
		mov	[edx+4], ecx
		xor	ecx, ecx
		mov	[edx+8], ecx
		mov	ecx, [ebp-40h]
		fstp	dword ptr [ebp-84h]
		mov	[edx+0Ch], ecx
		mov	edx, esp
		mov	ecx, eax
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, [ebp-68h]
		mov	[edx+4], ecx
		mov	ecx, 465AC000h
		mov	[edx+8], ecx
		mov	ecx, [ebp-60h]
		mov	[edx+0Ch], ecx
		mov	ecx, [ebp-84h]
		mov	edx, esp
		push	3
		push	0C7h
		push	esi
		mov	[edx], eax
		mov	eax, [ebp-88h]
		mov	[edx+4], eax
		mov	eax, [ebp-80h]
		mov	[edx+8], ecx
		mov	ecx, [esi]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	eax, [ebp-1Ch]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 48h
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeVar
		mov	[ebp-4], ebx
		wait
		push	offset loc_415915
		jmp	short loc_415914
; ---------------------------------------------------------------------------

loc_4158F0:				; DATA XREF: .text:00401474o
		lea	edx, [ebp-1Ch]
		lea	eax, [ebp-18h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeObjList
		lea	ecx, [ebp-3Ch]
		lea	edx, [ebp-2Ch]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeVarList
		add	esp, 18h
		retn
; ---------------------------------------------------------------------------

loc_415914:				; CODE XREF: .text:004158EEj
		retn
; ---------------------------------------------------------------------------

loc_415915:				; CODE XREF: .text:loc_415914j
					; DATA XREF: .text:004158E9o
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_415934:				; CODE XREF: .text:004157A1j
					; .text:00415835j
		call	ds:__vbaErrorOverflow
; ---------------------------------------------------------------------------
		align 10h

loc_415940:				; CODE XREF: .text:00408AB7j
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 0Ch
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_401478
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+7E0h]
		test	eax, eax
		jge	short loc_41599F
		push	7E0h
		push	offset dword_40416C
		push	esi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_41599F:				; CODE XREF: .text:0041598Bj
		mov	dword ptr [ebp-4], 0
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------
		align 10h

loc_4159D0:				; CODE XREF: .text:00408AC4j
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 94h
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_401480
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		mov	edx, [esi]
		xor	ebx, ebx
		push	ebx
		push	0Bh
		push	esi
		mov	[ebp-18h], ebx
		mov	[ebp-1Ch], ebx
		mov	[ebp-2Ch], ebx
		mov	[ebp-3Ch], ebx
		call	dword ptr [edx+43Ch]
		mov	edi, ds:__vbaObjSet
		push	eax
		lea	eax, [ebp-18h]
		push	eax
		call	edi ; __vbaObjSet
		lea	ecx, [ebp-2Ch]
		push	eax
		push	ecx
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaI4Var
		neg	eax
		jo	loc_415BE4
		push	eax
		call	ds:__vbaStrI4
		sub	esp, 10h
		mov	ecx, 8
		mov	edx, esp
		mov	[ebp-3Ch], ecx
		mov	[ebp-34h], eax
		push	10h
		mov	[edx], ecx
		mov	ecx, [ebp-38h]
		push	esi
		mov	[edx+4], ecx
		mov	ecx, [esi]
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+43Ch]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdSt
		lea	eax, [ebp-1Ch]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeObjList
		lea	edx, [ebp-3Ch]
		lea	eax, [ebp-2Ch]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeVarList
		mov	ecx, [esi]
		add	esp, 18h
		push	ebx
		push	0Bh
		push	esi
		call	dword ptr [ecx+43Ch]
		push	eax
		lea	edx, [ebp-18h]
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-2Ch]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaI4Var
		neg	eax
		jo	loc_415BE4
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		mov	[ebp-0A8h], eax
		sub	esp, 10h
		mov	eax, 4
		mov	[edx], ecx
		mov	ecx, [ebp-48h]
		fild	dword ptr [ebp-0A8h]
		mov	[edx+4], ecx
		xor	ecx, ecx
		mov	[edx+8], ecx
		mov	ecx, [ebp-40h]
		fstp	dword ptr [ebp-84h]
		mov	[edx+0Ch], ecx
		mov	edx, esp
		mov	ecx, eax
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, [ebp-68h]
		mov	[edx+4], ecx
		mov	ecx, 467A0000h
		mov	[edx+8], ecx
		mov	ecx, [ebp-60h]
		mov	[edx+0Ch], ecx
		mov	ecx, [ebp-84h]
		mov	edx, esp
		push	3
		push	0C7h
		push	esi
		mov	[edx], eax
		mov	eax, [ebp-88h]
		mov	[edx+4], eax
		mov	eax, [ebp-80h]
		mov	[edx+8], ecx
		mov	ecx, [esi]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	eax, [ebp-1Ch]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 48h
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeVar
		mov	[ebp-4], ebx
		wait
		push	offset loc_415BC5
		jmp	short loc_415BC4
; ---------------------------------------------------------------------------

loc_415BA0:				; DATA XREF: .text:0040148Co
		lea	edx, [ebp-1Ch]
		lea	eax, [ebp-18h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeObjList
		lea	ecx, [ebp-3Ch]
		lea	edx, [ebp-2Ch]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeVarList
		add	esp, 18h
		retn
; ---------------------------------------------------------------------------

loc_415BC4:				; CODE XREF: .text:00415B9Ej
		retn
; ---------------------------------------------------------------------------

loc_415BC5:				; CODE XREF: .text:loc_415BC4j
					; DATA XREF: .text:00415B99o
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_415BE4:				; CODE XREF: .text:00415A51j
					; .text:00415AE5j
		call	ds:__vbaErrorOverflow
; ---------------------------------------------------------------------------
		align 10h

loc_415BF0:				; CODE XREF: .text:00408AD1j
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 0Ch
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_401490
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+7E8h]
		test	eax, eax
		jge	short loc_415C4F
		push	7E8h
		push	offset dword_40416C
		push	esi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_415C4F:				; CODE XREF: .text:00415C3Bj
		mov	dword ptr [ebp-4], 0
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------
		align 10h

loc_415C80:				; CODE XREF: .text:00408ADEj
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 94h
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_401498
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		mov	edx, [esi]
		xor	ebx, ebx
		push	ebx
		push	0Bh
		push	esi
		mov	[ebp-18h], ebx
		mov	[ebp-1Ch], ebx
		mov	[ebp-2Ch], ebx
		mov	[ebp-3Ch], ebx
		call	dword ptr [edx+44Ch]
		mov	edi, ds:__vbaObjSet
		push	eax
		lea	eax, [ebp-18h]
		push	eax
		call	edi ; __vbaObjSet
		lea	ecx, [ebp-2Ch]
		push	eax
		push	ecx
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaI4Var
		mov	edx, 64h
		sub	edx, eax
		jo	loc_415E98
		push	edx
		call	ds:__vbaStrI4
		sub	esp, 10h
		mov	ecx, 8
		mov	edx, esp
		mov	[ebp-3Ch], ecx
		mov	[ebp-34h], eax
		push	10h
		mov	[edx], ecx
		mov	ecx, [ebp-38h]
		push	esi
		mov	[edx+4], ecx
		mov	ecx, [esi]
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+44Ch]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdSt
		lea	eax, [ebp-1Ch]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeObjList
		lea	edx, [ebp-3Ch]
		lea	eax, [ebp-2Ch]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeVarList
		mov	ecx, [esi]
		add	esp, 18h
		push	ebx
		push	0Bh
		push	esi
		call	dword ptr [ecx+44Ch]
		push	eax
		lea	edx, [ebp-18h]
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-2Ch]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaI4Var
		mov	ecx, 64h
		sub	ecx, eax
		mov	eax, 4
		jo	loc_415E98
		sub	esp, 10h
		mov	[ebp-0A8h], ecx
		mov	edx, esp
		mov	ecx, 2
		fild	dword ptr [ebp-0A8h]
		mov	[edx], ecx
		mov	ecx, [ebp-48h]
		sub	esp, 10h
		mov	[edx+4], ecx
		xor	ecx, ecx
		fstp	dword ptr [ebp-64h]
		mov	[edx+8], ecx
		mov	ecx, [ebp-40h]
		mov	[edx+0Ch], ecx
		mov	ecx, [ebp-64h]
		mov	edx, esp
		sub	esp, 10h
		mov	[edx], eax
		mov	eax, [ebp-68h]
		mov	[edx+4], eax
		mov	eax, [ebp-60h]
		mov	[edx+8], ecx
		mov	ecx, esp
		push	3
		push	12Ah
		mov	[edx+0Ch], eax
		mov	edx, [ebp-88h]
		mov	eax, 3
		push	esi
		mov	[ecx], eax
		xor	eax, eax
		mov	[ecx+4], edx
		mov	[ecx+8], eax
		mov	eax, [ebp-80h]
		mov	[ecx+0Ch], eax
		mov	ecx, [esi]
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	eax, [ebp-1Ch]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 48h
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeVar
		mov	[ebp-4], ebx
		wait
		push	offset loc_415E79
		jmp	short loc_415E78
; ---------------------------------------------------------------------------

loc_415E54:				; DATA XREF: .text:004014A4o
		lea	edx, [ebp-1Ch]
		lea	eax, [ebp-18h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeObjList
		lea	ecx, [ebp-3Ch]
		lea	edx, [ebp-2Ch]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeVarList
		add	esp, 18h
		retn
; ---------------------------------------------------------------------------

loc_415E78:				; CODE XREF: .text:00415E52j
		retn
; ---------------------------------------------------------------------------

loc_415E79:				; CODE XREF: .text:loc_415E78j
					; DATA XREF: .text:00415E4Do
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_415E98:				; CODE XREF: .text:00415D06j
					; .text:00415DA4j
		call	ds:__vbaErrorOverflow
; ---------------------------------------------------------------------------
		align 10h

loc_415EA0:				; CODE XREF: .text:00408AEBj
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 64h
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_4014A8
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		mov	edx, [esi]
		xor	edi, edi
		push	edi
		push	0Bh
		push	esi
		mov	[ebp-18h], edi
		mov	[ebp-1Ch], edi
		mov	[ebp-2Ch], edi
		mov	ebx, 2
		call	dword ptr [edx+450h]
		push	eax
		lea	eax, [ebp-18h]
		push	eax
		call	ds:__vbaObjSet
		lea	ecx, [ebp-2Ch]
		push	eax
		push	ecx
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaI4Var
		mov	ecx, [ebp-38h]
		sub	esp, 10h
		mov	edx, esp
		sub	esp, 10h
		mov	[ebp-78h], eax
		mov	eax, 4
		mov	[edx], ebx
		fild	dword ptr [ebp-78h]
		mov	[edx+4], ecx
		mov	ecx, [ebp-30h]
		mov	[edx+8], edi
		fstp	dword ptr [ebp-54h]
		mov	[edx+0Ch], ecx
		mov	ecx, [ebp-54h]
		mov	edx, esp
		push	ebx
		push	12Ch
		push	esi
		mov	[edx], eax
		mov	eax, [ebp-58h]
		mov	[edx+4], eax
		mov	eax, [ebp-50h]
		mov	[edx+8], ecx
		mov	ecx, [esi]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	ds:__vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	eax, [ebp-1Ch]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		push	ebx
		call	ds:__vbaFreeObjList
		add	esp, 38h
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeVar
		mov	[ebp-4], edi
		wait
		push	offset loc_415FBE
		jmp	short loc_415FBD
; ---------------------------------------------------------------------------

loc_415FA0:				; DATA XREF: .text:004014B4o
		lea	edx, [ebp-1Ch]
		lea	eax, [ebp-18h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 0Ch
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeVar
		retn
; ---------------------------------------------------------------------------

loc_415FBD:				; CODE XREF: .text:00415F9Ej
		retn
; ---------------------------------------------------------------------------

loc_415FBE:				; CODE XREF: .text:loc_415FBDj
					; DATA XREF: .text:00415F99o
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------
		align 10h

loc_415FE0:				; CODE XREF: .text:00408AF8j
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 40h
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_4014B8
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		mov	ebx, [ebp-38h]
		sub	esp, 10h
		mov	edx, esp
		mov	ecx, 2
		xor	eax, eax
		push	1
		mov	[edx], ecx
		mov	ecx, [esi]
		mov	[ebp-18h], eax
		mov	[ebp-1Ch], eax
		mov	[edx+4], ebx
		mov	[ebp-2Ch], eax
		push	1Eh
		push	esi
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		mov	word ptr [esi+3Ch], 0FFFFh
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		mov	edi, ds:__vbaObjSet
		lea	edx, [ebp-18h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-2Ch]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 20h
		push	eax
		call	ds:__vbaI4Var
		lea	ecx, [ebp-18h]
		mov	[esi+40h], eax
		call	ds:__vbaFreeObj
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeVar
		cmp	dword ptr [esi+40h], 3
		jnz	short loc_41610F
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		push	1
		push	5
		mov	[edx], ecx
		mov	ecx, [esi]
		push	offset dword_404970
		push	0
		mov	[edx+4], ebx
		push	0E2h
		push	esi
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-18h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-2Ch]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-1Ch]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	edx, [ebp-1Ch]
		lea	eax, [ebp-18h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 28h
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeVar

loc_41610F:				; CODE XREF: .text:00416094j
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		push	1
		push	7
		mov	[edx], ecx
		mov	ecx, [esi]
		push	offset dword_404970
		push	0
		mov	[edx+4], ebx
		push	0E2h
		push	esi
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-18h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-2Ch]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-1Ch]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	edx, [ebp-1Ch]
		lea	eax, [ebp-18h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 28h
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeVar
		mov	dword ptr [ebp-4], 0
		push	offset loc_4161B4
		jmp	short loc_4161B3
; ---------------------------------------------------------------------------

loc_416196:				; DATA XREF: .text:004014C4o
		lea	ecx, [ebp-1Ch]
		lea	edx, [ebp-18h]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 0Ch
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeVar
		retn
; ---------------------------------------------------------------------------

loc_4161B3:				; CODE XREF: .text:00416194j
		retn
; ---------------------------------------------------------------------------

loc_4161B4:				; CODE XREF: .text:loc_4161B3j
					; DATA XREF: .text:0041618Fo
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	14h
; ---------------------------------------------------------------------------
		align 10h

loc_4161E0:				; CODE XREF: .text:00408B05j
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 40h
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_4014C8
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		mov	eax, [esi+40h]
		xor	ebx, ebx
		cmp	eax, 1
		mov	[ebp-18h], ebx
		mov	[ebp-1Ch], ebx
		mov	[ebp-2Ch], ebx
		mov	[ebp-3Ch], ebx
		jnz	loc_4162BB
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		push	1
		push	8
		mov	[edx], ecx
		mov	ecx, [ebp-38h]
		push	offset dword_404970
		push	ebx
		mov	[edx+4], ecx
		mov	ecx, [esi]
		push	0E2h
		push	esi
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		mov	edi, ds:__vbaObjSet
		lea	edx, [ebp-18h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-2Ch]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-1Ch]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	edx, [ebp-1Ch]
		lea	eax, [ebp-18h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 28h
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeVar

loc_4162BB:				; CODE XREF: .text:00416234j
		mov	[esi+3Ch], bx
		mov	[ebp-4], ebx
		push	offset loc_4162E7
		jmp	short loc_4162E6
; ---------------------------------------------------------------------------

loc_4162C9:				; DATA XREF: .text:004014D4o
		lea	ecx, [ebp-1Ch]
		lea	edx, [ebp-18h]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 0Ch
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeVar
		retn
; ---------------------------------------------------------------------------

loc_4162E6:				; CODE XREF: .text:004162C7j
		retn
; ---------------------------------------------------------------------------

loc_4162E7:				; CODE XREF: .text:loc_4162E6j
					; DATA XREF: .text:004162C2o
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	14h
; ---------------------------------------------------------------------------
		align 10h

loc_416310:				; CODE XREF: .text:00408B12j
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 78h
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_4014E0
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		push	1
		push	0Dh
		mov	[edx], ecx
		mov	ecx, [ebp-54h]
		push	offset dword_404970
		push	eax
		mov	[edx+4], ecx
		mov	ecx, [ebp-4Ch]
		push	0E2h
		push	esi
		mov	[edx+8], eax
		mov	[ebp-18h], eax
		mov	[ebp-24h], eax
		mov	[ebp-28h], eax
		mov	[edx+0Ch], ecx
		mov	edx, [esi]
		mov	[ebp-38h], eax
		mov	[ebp-48h], eax
		call	dword ptr [edx+448h]
		mov	edi, ds:__vbaObjSet
		push	eax
		lea	eax, [ebp-24h]
		push	eax
		call	edi ; __vbaObjSet
		mov	ebx, ds:__vbaLateIdCallLd
		lea	ecx, [ebp-38h]
		push	eax
		push	ecx
		call	ebx ; __vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	edx, [ebp-28h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-48h]
		push	eax
		call	ebx ; __vbaLateIdCallLd
		add	esp, 20h
		push	eax
		call	ds:__vbaI4Var
		lea	ecx, [ebp-28h]
		lea	edx, [ebp-24h]
		push	ecx
		push	edx
		push	2
		mov	[ebp-1Ch], eax
		call	ds:__vbaFreeObjList
		lea	eax, [ebp-48h]
		lea	ecx, [ebp-38h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeVarList
		mov	edx, [esi]
		add	esp, 18h
		push	0
		push	0Bh
		push	esi
		call	dword ptr [edx+444h]
		push	eax
		lea	eax, [ebp-24h]
		push	eax
		call	edi ; __vbaObjSet
		lea	ecx, [ebp-38h]
		push	eax
		push	ecx
		call	ebx ; __vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaI4Var
		imul	eax, [ebp-1Ch]
		jo	loc_416755
		mov	[ebp-84h], eax
		fild	dword ptr [ebp-84h]
		fstp	qword ptr [ebp-8Ch]
		fld	qword ptr [ebp-8Ch]
		cmp	dword_418000, 0
		jnz	short loc_41644E
		fdiv	ds:dbl_4014D8
		jmp	short loc_41645F
; ---------------------------------------------------------------------------

loc_41644E:				; CODE XREF: .text:00416444j
		push	dword ptr ds:dbl_4014D8+4
		push	dword ptr ds:dbl_4014D8
		call	_adj_fdiv_m64

loc_41645F:				; CODE XREF: .text:0041644Cj
		fnstsw	ax
		test	al, 0Dh
		jnz	loc_416750
		call	ds:__vbaFpI4
		lea	ecx, [ebp-24h]
		mov	[ebp-18h], eax
		call	ds:__vbaFreeObj
		lea	ecx, [ebp-38h]
		call	ds:__vbaFreeVar
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		push	1
		push	1Eh
		mov	[edx], ecx
		mov	ecx, [ebp-54h]
		push	esi
		mov	[edx+4], ecx
		mov	ecx, [esi]
		mov	[edx+8], eax
		mov	eax, [ebp-4Ch]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-24h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-38h]
		push	eax
		call	ebx ; __vbaLateIdCallLd
		add	esp, 20h
		push	eax
		call	ds:__vbaI4Var
		lea	ecx, [ebp-24h]
		mov	[ebp-20h], eax
		call	ds:__vbaFreeObj
		lea	ecx, [ebp-38h]
		call	ds:__vbaFreeVar
		cmp	dword ptr [ebp-20h], 1
		jnz	loc_416667
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		push	1
		push	7
		mov	[edx], ecx
		mov	ecx, [ebp-54h]
		push	offset dword_404970
		push	0
		mov	[edx+4], ecx
		mov	ecx, [esi]
		push	0E2h
		push	esi
		mov	[edx+8], eax
		mov	eax, [ebp-4Ch]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-24h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-38h]
		push	eax
		call	ebx ; __vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-28h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	edx, [ebp-28h]
		lea	eax, [ebp-24h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 28h
		lea	ecx, [ebp-38h]
		call	ds:__vbaFreeVar
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, [ebp-54h]
		mov	[edx+4], ecx
		mov	ecx, esp
		push	2
		push	0Ah
		mov	[edx+8], eax
		mov	eax, [ebp-4Ch]
		push	offset dword_404970
		push	0
		mov	[edx+0Ch], eax
		mov	edx, [ebp-74h]
		mov	eax, 4003h
		push	0E2h
		mov	[ecx], eax
		lea	eax, [ebp-18h]
		push	esi
		mov	[ecx+4], edx
		mov	[ecx+8], eax
		mov	eax, [ebp-6Ch]
		mov	[ecx+0Ch], eax
		mov	ecx, [esi]
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-24h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-38h]
		push	eax
		call	ebx ; __vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-28h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	edx, [ebp-28h]
		lea	eax, [ebp-24h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 38h
		lea	ecx, [ebp-38h]
		call	ds:__vbaFreeVar
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		push	1
		push	8
		mov	[edx], ecx
		mov	ecx, [ebp-54h]
		push	offset dword_404970
		push	0
		mov	[edx+4], ecx
		mov	ecx, [esi]
		push	0E2h
		push	esi
		mov	[edx+8], eax
		mov	eax, [ebp-4Ch]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-24h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-38h]
		push	eax
		call	ebx ; __vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-28h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	edx, [ebp-28h]
		lea	eax, [ebp-24h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 28h
		jmp	loc_4166F4
; ---------------------------------------------------------------------------

loc_416667:				; CODE XREF: .text:004164DFj
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		sub	esp, 10h
		mov	[edx], ecx
		mov	ecx, [ebp-54h]
		mov	[edx+4], ecx
		mov	ecx, esp
		push	2
		push	0Ah
		mov	[edx+8], eax
		mov	eax, [ebp-4Ch]
		push	offset dword_404970
		push	0
		mov	[edx+0Ch], eax
		mov	edx, [ebp-74h]
		mov	eax, 4003h
		push	0E2h
		mov	[ecx], eax
		lea	eax, [ebp-18h]
		push	esi
		mov	[ecx+4], edx
		mov	[ecx+8], eax
		mov	eax, [ebp-6Ch]
		mov	[ecx+0Ch], eax
		mov	ecx, [esi]
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-24h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-38h]
		push	eax
		call	ebx ; __vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-28h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	edx, [ebp-28h]
		lea	eax, [ebp-24h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 38h

loc_4166F4:				; CODE XREF: .text:00416662j
		lea	ecx, [ebp-38h]
		call	ds:__vbaFreeVar
		mov	dword ptr [ebp-4], 0
		wait
		push	offset loc_416731
		jmp	short loc_416730
; ---------------------------------------------------------------------------

loc_41670C:				; DATA XREF: .text:004014ECo
		lea	ecx, [ebp-28h]
		lea	edx, [ebp-24h]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeObjList
		lea	eax, [ebp-48h]
		lea	ecx, [ebp-38h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeVarList
		add	esp, 18h
		retn
; ---------------------------------------------------------------------------

loc_416730:				; CODE XREF: .text:0041670Aj
		retn
; ---------------------------------------------------------------------------

loc_416731:				; CODE XREF: .text:loc_416730j
					; DATA XREF: .text:00416705o
		mov	eax, [ebp+8]
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_416750:				; CODE XREF: .text:00416463j
		jmp	loc_40151C
; ---------------------------------------------------------------------------

loc_416755:				; CODE XREF: .text:0041641Fj
		call	ds:__vbaErrorOverflow
; ---------------------------------------------------------------------------
		align 10h

loc_416760:				; CODE XREF: .text:00408B1Fj
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 94h
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_4014F0
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		mov	edx, [esi]
		xor	ebx, ebx
		push	ebx
		push	0Bh
		push	esi
		mov	[ebp-18h], ebx
		mov	[ebp-1Ch], ebx
		mov	[ebp-2Ch], ebx
		mov	[ebp-3Ch], ebx
		call	dword ptr [edx+44Ch]
		mov	edi, ds:__vbaObjSet
		push	eax
		lea	eax, [ebp-18h]
		push	eax
		call	edi ; __vbaObjSet
		lea	ecx, [ebp-2Ch]
		push	eax
		push	ecx
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaI4Var
		mov	edx, 64h
		sub	edx, eax
		jo	loc_416978
		push	edx
		call	ds:__vbaStrI4
		sub	esp, 10h
		mov	ecx, 8
		mov	edx, esp
		mov	[ebp-3Ch], ecx
		mov	[ebp-34h], eax
		push	10h
		mov	[edx], ecx
		mov	ecx, [ebp-38h]
		push	esi
		mov	[edx+4], ecx
		mov	ecx, [esi]
		mov	[edx+8], eax
		mov	eax, [ebp-30h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+44Ch]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdSt
		lea	eax, [ebp-1Ch]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeObjList
		lea	edx, [ebp-3Ch]
		lea	eax, [ebp-2Ch]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeVarList
		mov	ecx, [esi]
		add	esp, 18h
		push	ebx
		push	0Bh
		push	esi
		call	dword ptr [ecx+44Ch]
		push	eax
		lea	edx, [ebp-18h]
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-2Ch]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaI4Var
		mov	ecx, 64h
		sub	ecx, eax
		mov	eax, 4
		jo	loc_416978
		sub	esp, 10h
		mov	[ebp-0A8h], ecx
		mov	edx, esp
		mov	ecx, 2
		fild	dword ptr [ebp-0A8h]
		mov	[edx], ecx
		mov	ecx, [ebp-48h]
		sub	esp, 10h
		mov	[edx+4], ecx
		xor	ecx, ecx
		fstp	dword ptr [ebp-64h]
		mov	[edx+8], ecx
		mov	ecx, [ebp-40h]
		mov	[edx+0Ch], ecx
		mov	ecx, [ebp-64h]
		mov	edx, esp
		sub	esp, 10h
		mov	[edx], eax
		mov	eax, [ebp-68h]
		mov	[edx+4], eax
		mov	eax, [ebp-60h]
		mov	[edx+8], ecx
		mov	ecx, esp
		push	3
		push	12Ah
		mov	[edx+0Ch], eax
		mov	edx, [ebp-88h]
		mov	eax, 3
		push	esi
		mov	[ecx], eax
		xor	eax, eax
		mov	[ecx+4], edx
		mov	[ecx+8], eax
		mov	eax, [ebp-80h]
		mov	[ecx+0Ch], eax
		mov	ecx, [esi]
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-1Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdCall
		lea	eax, [ebp-1Ch]
		lea	ecx, [ebp-18h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 48h
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeVar
		mov	[ebp-4], ebx
		wait
		push	offset loc_416959
		jmp	short loc_416958
; ---------------------------------------------------------------------------

loc_416934:				; DATA XREF: .text:004014FCo
		lea	edx, [ebp-1Ch]
		lea	eax, [ebp-18h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeObjList
		lea	ecx, [ebp-3Ch]
		lea	edx, [ebp-2Ch]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeVarList
		add	esp, 18h
		retn
; ---------------------------------------------------------------------------

loc_416958:				; CODE XREF: .text:00416932j
		retn
; ---------------------------------------------------------------------------

loc_416959:				; CODE XREF: .text:loc_416958j
					; DATA XREF: .text:0041692Do
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_416978:				; CODE XREF: .text:004167E6j
					; .text:00416884j
		call	ds:__vbaErrorOverflow
; ---------------------------------------------------------------------------
		align 10h

loc_416980:				; CODE XREF: .text:00408B2Cj
		push	ebp
		mov	ebp, esp
		sub	esp, 0Ch
		push	offset loc_401516
		mov	eax, large fs:0
		push	eax
		mov	large fs:0, esp
		sub	esp, 0D8h
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], esp
		mov	dword ptr [ebp-8], offset dword_401500
		mov	esi, [ebp+8]
		mov	eax, esi
		and	eax, 1
		mov	[ebp-4], eax
		and	esi, 0FFFFFFFEh
		push	esi
		mov	[ebp+8], esi
		mov	ecx, [esi]
		call	dword ptr [ecx+4]
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		push	1
		xor	ebx, ebx
		mov	[edx], ecx
		mov	ecx, [ebp-5Ch]
		push	1Eh
		push	esi
		mov	[edx+4], ecx
		mov	ecx, [esi]
		mov	[ebp-18h], ebx
		mov	[ebp-24h], ebx
		mov	[edx+8], eax
		mov	eax, [ebp-54h]
		mov	[ebp-28h], ebx
		mov	[ebp-2Ch], ebx
		mov	[ebp-30h], ebx
		mov	[ebp-40h], ebx
		mov	[ebp-50h], ebx
		mov	[ebp-80h], ebx
		mov	[ebp-90h], ebx
		mov	[ebp-0B0h], ebx
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		mov	edi, ds:__vbaObjSet
		lea	edx, [ebp-2Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-40h]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 20h
		push	eax
		call	ds:__vbaI4Var
		lea	ecx, [ebp-2Ch]
		mov	[ebp-20h], eax
		call	ds:__vbaFreeObj
		lea	ecx, [ebp-40h]
		call	ds:__vbaFreeVar
		cmp	[ebp-20h], ebx
		jnz	loc_416ADC
		mov	ecx, [esi]
		push	esi
		call	dword ptr [ecx+318h]
		lea	edx, [ebp-2Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		push	ebx
		push	eax
		mov	[ebp-0C4h], eax
		call	dword ptr [ecx+8Ch]
		cmp	eax, ebx
		fnclex
		jge	short loc_416A91
		mov	edx, [ebp-0C4h]
		push	8Ch
		push	offset dword_404990
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_416A91:				; CODE XREF: .text:00416A77j
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeObj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+31Ch]
		lea	ecx, [ebp-2Ch]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	esi, eax
		push	ebx
		push	esi
		mov	edx, [esi]
		call	dword ptr [edx+8Ch]
		cmp	eax, ebx
		fnclex
		jge	short loc_416ACE
		push	8Ch
		push	offset dword_404990
		push	esi
		push	eax
		call	ds:__vbaHresultCheckObj

loc_416ACE:				; CODE XREF: .text:00416ABAj
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeObj
		jmp	loc_41709D
; ---------------------------------------------------------------------------

loc_416ADC:				; CODE XREF: .text:00416A4Dj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+318h]
		lea	ecx, [ebp-2Ch]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		push	0FFFFFFFFh
		push	eax
		mov	[ebp-0C4h], eax
		call	dword ptr [edx+8Ch]
		cmp	eax, ebx
		fnclex
		jge	short loc_416B1B
		mov	ecx, [ebp-0C4h]
		push	8Ch
		push	offset dword_404990
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_416B1B:				; CODE XREF: .text:00416B01j
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeObj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+31Ch]
		push	eax
		lea	eax, [ebp-2Ch]
		push	eax
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		push	0FFFFFFFFh
		push	eax
		mov	[ebp-0C4h], eax
		call	dword ptr [ecx+8Ch]
		cmp	eax, ebx
		fnclex
		jge	short loc_416B63
		mov	edx, [ebp-0C4h]
		push	8Ch
		push	offset dword_404990
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_416B63:				; CODE XREF: .text:00416B49j
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeObj
		mov	eax, [ebp-20h]
		dec	eax
		jz	loc_416C60
		dec	eax
		jz	short loc_416BE4
		dec	eax
		jnz	loc_416D78
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+3D0h]
		lea	ecx, [ebp-2Ch]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		push	offset aPause	; "Pause"
		push	eax
		mov	[ebp-0C4h], eax
		call	dword ptr [edx+54h]
		cmp	eax, ebx
		fnclex
		jge	short loc_416BBC
		mov	ecx, [ebp-0C4h]
		push	54h
		push	offset dword_404990
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_416BBC:				; CODE XREF: .text:00416BA5j
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeObj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+418h]
		push	eax
		lea	eax, [ebp-2Ch]
		push	eax
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		mov	[ebp-0C4h], eax
		push	offset aStatusStopped ;	"Status: Stopped"
		jmp	short loc_416C46
; ---------------------------------------------------------------------------

loc_416BE4:				; CODE XREF: .text:00416B77j
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+3D0h]
		lea	ecx, [ebp-2Ch]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		push	offset aResume	; "Resume"
		push	eax
		mov	[ebp-0C4h], eax
		call	dword ptr [edx+54h]
		cmp	eax, ebx
		fnclex
		jge	short loc_416C20
		mov	ecx, [ebp-0C4h]
		push	54h
		push	offset dword_404990
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_416C20:				; CODE XREF: .text:00416C09j
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeObj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+418h]
		push	eax
		lea	eax, [ebp-2Ch]
		push	eax
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		mov	[ebp-0C4h], eax
		push	offset aStatusPaused ; "Status:	Paused"

loc_416C46:				; CODE XREF: .text:00416BE2j
		push	eax
		call	dword ptr [ecx+54h]
		cmp	eax, ebx
		fnclex
		jge	loc_416D6F
		push	54h
		push	offset dword_404980
		jmp	loc_416D61
; ---------------------------------------------------------------------------

loc_416C60:				; CODE XREF: .text:00416B70j
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+3D0h]
		lea	ecx, [ebp-2Ch]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		push	offset aPause	; "Pause"
		push	eax
		mov	[ebp-0C4h], eax
		call	dword ptr [edx+54h]
		cmp	eax, ebx
		fnclex
		jge	short loc_416C9C
		mov	ecx, [ebp-0C4h]
		push	54h
		push	offset dword_404990
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_416C9C:				; CODE XREF: .text:00416C85j
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeObj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+418h]
		push	eax
		lea	eax, [ebp-2Ch]
		push	eax
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		push	offset aStatusPlaying ;	"Status: Playing"
		push	eax
		mov	[ebp-0C4h], eax
		call	dword ptr [ecx+54h]
		cmp	eax, ebx
		fnclex
		jge	short loc_416CE1
		mov	edx, [ebp-0C4h]
		push	54h
		push	offset dword_404980
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_416CE1:				; CODE XREF: .text:00416CCAj
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeObj
		mov	eax, [esi]
		push	esi
		call	dword ptr [eax+318h]
		lea	ecx, [ebp-2Ch]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		mov	edx, [eax]
		push	ebx
		push	eax
		mov	[ebp-0C4h], eax
		call	dword ptr [edx+8Ch]
		cmp	eax, ebx
		fnclex
		jge	short loc_416D28
		mov	ecx, [ebp-0C4h]
		push	8Ch
		push	offset dword_404990
		push	ecx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_416D28:				; CODE XREF: .text:00416D0Ej
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeObj
		mov	edx, [esi]
		push	esi
		call	dword ptr [edx+31Ch]
		push	eax
		lea	eax, [ebp-2Ch]
		push	eax
		call	edi ; __vbaObjSet
		mov	ecx, [eax]
		push	ebx
		push	eax
		mov	[ebp-0C4h], eax
		call	dword ptr [ecx+8Ch]
		cmp	eax, ebx
		fnclex
		jge	short loc_416D6F
		push	8Ch
		push	offset dword_404990

loc_416D61:				; CODE XREF: .text:00416C5Bj
		mov	edx, [ebp-0C4h]
		push	edx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_416D6F:				; CODE XREF: .text:00416C4Ej
					; .text:00416D55j
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeObj

loc_416D78:				; CODE XREF: .text:00416B7Aj
		cmp	[esi+3Ch], bx
		jnz	loc_41709D
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		push	1
		push	0Eh
		mov	[edx], ecx
		mov	ecx, [ebp-5Ch]
		push	offset dword_404970
		push	ebx
		mov	[edx+4], ecx
		mov	ecx, [esi]
		push	0E2h
		push	esi
		mov	[edx+8], eax
		mov	eax, [ebp-54h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-2Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		lea	eax, [ebp-40h]
		push	eax
		call	ds:__vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-30h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		lea	edx, [ebp-50h]
		push	eax
		push	edx
		call	ds:__vbaLateIdCallLd
		add	esp, 20h
		push	eax
		call	ds:__vbaI4Var
		mov	[ebp-18h], eax
		lea	eax, [ebp-30h]
		lea	ecx, [ebp-2Ch]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeObjList
		lea	edx, [ebp-50h]
		lea	eax, [ebp-40h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeVarList
		mov	ecx, [esi]
		add	esp, 18h
		push	esi
		call	dword ptr [ecx+414h]
		lea	edx, [ebp-30h]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		mov	ebx, [eax]
		push	offset aPosition ; "Position: "
		sub	esp, 10h
		mov	[ebp-0C4h], eax
		mov	eax, esp
		mov	edx, 2
		xor	ecx, ecx
		sub	esp, 10h
		mov	[eax], edx
		mov	edx, [ebp-5Ch]
		mov	dword ptr [ebp-0A8h], 1
		mov	dword ptr [ebp-0B0h], 3
		mov	[eax+4], edx
		mov	edx, esp
		mov	[eax+8], ecx
		mov	ecx, [ebp-54h]
		mov	[eax+0Ch], ecx
		mov	eax, 4003h
		mov	[edx], eax
		mov	eax, [ebp-7Ch]
		mov	ecx, [ebp-74h]
		mov	[edx+4], eax
		lea	eax, [ebp-18h]
		sub	esp, 10h
		mov	[edx+8], eax
		mov	eax, 3
		mov	[edx+0Ch], ecx
		mov	edx, esp
		mov	ecx, [ebp-84h]
		sub	esp, 10h
		mov	[edx], eax
		mov	eax, [ebp-8Ch]
		mov	[edx+4], eax
		mov	eax, 1
		mov	[edx+8], eax
		mov	eax, [ebp-0B0h]
		mov	[edx+0Ch], ecx
		mov	ecx, [ebp-0ACh]
		mov	edx, esp
		push	4
		push	4Ch
		push	esi
		mov	[edx], eax
		mov	eax, [ebp-0A8h]
		mov	[edx+4], ecx
		mov	ecx, [ebp-0A4h]
		mov	[edx+8], eax
		mov	[edx+0Ch], ecx
		mov	edx, [esi]
		call	dword ptr [edx+448h]
		push	eax
		lea	eax, [ebp-2Ch]
		push	eax
		call	edi ; __vbaObjSet
		lea	ecx, [ebp-40h]
		push	eax
		push	ecx
		call	ds:__vbaLateIdCallLd
		add	esp, 50h
		push	eax
		call	ds:__vbaStrVarMove
		mov	edx, eax
		lea	ecx, [ebp-24h]
		call	ds:__vbaStrMove
		push	eax
		call	ds:__vbaStrCat
		mov	edx, eax
		lea	ecx, [ebp-28h]
		call	ds:__vbaStrMove
		mov	edx, ebx
		mov	ebx, [ebp-0C4h]
		push	eax
		push	ebx
		call	dword ptr [edx+54h]
		test	eax, eax
		fnclex
		jge	short loc_416F37
		push	54h
		push	offset dword_404980
		push	ebx
		push	eax
		call	ds:__vbaHresultCheckObj

loc_416F37:				; CODE XREF: .text:00416F26j
		lea	eax, [ebp-28h]
		lea	ecx, [ebp-24h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeStrList
		lea	edx, [ebp-30h]
		lea	eax, [ebp-2Ch]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeObjList
		add	esp, 18h
		lea	ecx, [ebp-40h]
		call	ds:__vbaFreeVar
		sub	esp, 10h
		mov	ecx, 2
		mov	edx, esp
		xor	eax, eax
		push	1
		push	0Dh
		mov	[edx], ecx
		mov	ecx, [ebp-5Ch]
		push	offset dword_404970
		push	0
		mov	[edx+4], ecx
		mov	ecx, [esi]
		push	0E2h
		push	esi
		mov	[edx+8], eax
		mov	eax, [ebp-54h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+448h]
		lea	edx, [ebp-2Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		mov	ebx, ds:__vbaLateIdCallLd
		push	eax
		lea	eax, [ebp-40h]
		push	eax
		call	ebx ; __vbaLateIdCallLd
		add	esp, 10h
		push	eax
		call	ds:__vbaCastObjVar
		lea	ecx, [ebp-30h]
		push	eax
		push	ecx
		call	edi ; __vbaObjSet
		lea	edx, [ebp-50h]
		push	eax
		push	edx
		call	ebx ; __vbaLateIdCallLd
		add	esp, 20h
		push	eax
		call	ds:__vbaI4Var
		mov	ebx, eax
		lea	eax, [ebp-30h]
		lea	ecx, [ebp-2Ch]
		push	eax
		push	ecx
		push	2
		mov	[ebp-1Ch], ebx
		call	ds:__vbaFreeObjList
		lea	edx, [ebp-50h]
		lea	eax, [ebp-40h]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeVarList
		add	esp, 18h
		test	ebx, ebx
		jle	loc_41709B
		mov	ecx, [ebp-18h]
		imul	ecx, 64h
		jo	loc_417101
		mov	[ebp-0DCh], ecx
		fild	dword ptr [ebp-0DCh]
		fstp	qword ptr [ebp-0E4h]
		fild	dword ptr [ebp-1Ch]
		fstp	qword ptr [ebp-0ECh]
		fld	qword ptr [ebp-0E4h]
		cmp	dword_418000, 0
		jnz	short loc_41703D
		fdiv	qword ptr [ebp-0ECh]
		jmp	short loc_41704E
; ---------------------------------------------------------------------------

loc_41703D:				; CODE XREF: .text:00417033j
		push	dword ptr [ebp-0E8h]
		push	dword ptr [ebp-0ECh]
		call	_adj_fdiv_m64

loc_41704E:				; CODE XREF: .text:0041703Bj
		fnstsw	ax
		test	al, 0Dh
		jnz	loc_4170FC
		call	ds:__vbaFpI4
		sub	esp, 10h
		mov	ecx, 3
		mov	edx, esp
		push	0Bh
		push	esi
		mov	[edx], ecx
		mov	ecx, [ebp-5Ch]
		mov	[edx+4], ecx
		mov	ecx, [esi]
		mov	[edx+8], eax
		mov	eax, [ebp-54h]
		mov	[edx+0Ch], eax
		call	dword ptr [ecx+444h]
		lea	edx, [ebp-2Ch]
		push	eax
		push	edx
		call	edi ; __vbaObjSet
		push	eax
		call	ds:__vbaLateIdSt
		lea	ecx, [ebp-2Ch]
		call	ds:__vbaFreeObj

loc_41709B:				; CODE XREF: .text:00416FF9j
		xor	ebx, ebx

loc_41709D:				; CODE XREF: .text:00416AD7j
					; .text:00416D7Cj
		mov	[ebp-4], ebx
		wait
		push	offset loc_4170DD
		jmp	short loc_4170DC
; ---------------------------------------------------------------------------
		lea	eax, [ebp-28h]
		lea	ecx, [ebp-24h]
		push	eax
		push	ecx
		push	2
		call	ds:__vbaFreeStrList
		lea	edx, [ebp-30h]
		lea	eax, [ebp-2Ch]
		push	edx
		push	eax
		push	2
		call	ds:__vbaFreeObjList
		lea	ecx, [ebp-50h]
		lea	edx, [ebp-40h]
		push	ecx
		push	edx
		push	2
		call	ds:__vbaFreeVarList
		add	esp, 24h
		retn
; ---------------------------------------------------------------------------

loc_4170DC:				; CODE XREF: .text:004170A6j
		retn
; ---------------------------------------------------------------------------

loc_4170DD:				; CODE XREF: .text:loc_4170DCj
					; DATA XREF: .text:004170A1o
		mov	eax, [ebp+8]
		push	eax
		mov	ecx, [eax]
		call	dword ptr [ecx+8]
		mov	eax, [ebp-4]
		mov	ecx, [ebp-14h]
		pop	edi
		pop	esi
		mov	large fs:0, ecx
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

loc_4170FC:				; CODE XREF: .text:00417052j
		jmp	loc_40151C
; ---------------------------------------------------------------------------

loc_417101:				; CODE XREF: .text:00417005j
		call	ds:__vbaErrorOverflow
; ---------------------------------------------------------------------------
		align 10h
dword_417110	dd 9E9E9E9Eh		; DATA XREF: .text:00403804o
__IMPORT_DESCRIPTOR_MSVBVM60 dd	rva off_41713C ; Import	Name Table
		dd 0FFFFFFFFh		; Time stamp
		dd 0FFFFFFFFh		; Forwarder Chain
		dd rva aMsvbvm60_dll	; DLL Name
		dd rva __vbaStrI2	; Import Address Table
		dd 5 dup(0)
;
; Import names for MSVBVM60.DLL
;
off_41713C	dd rva word_41724A	; DATA XREF: .text:__IMPORT_DESCRIPTOR_MSVBVM60o
		dd rva word_417258
		dd rva word_417262
		dd rva word_417270
		dd rva word_41727E
		dd rva word_41728E
		dd rva word_4172A0
		dd rva word_4172B2
		dd rva word_4172C6
		dd rva word_4172D2
		dd rva word_4172E2
		dd rva word_4172F6
		dd rva word_417304
		dd rva word_417312
		dd rva word_41732A
		dd rva word_41733A
		dd 80000253h
		dd rva word_417348
		dd rva word_41735A
		dd 80000256h
		dd rva word_41736C
		dd rva word_41737C
		dd rva word_417386
		dd rva word_417394
		dd rva word_4173A8
		dd rva word_4173B6
		dd rva word_4173C2
		dd rva word_4173D4
		dd rva word_4173E2
		dd rva word_4173F0
		dd rva word_4173FE
		dd rva word_417412
		dd rva word_417428
		dd rva word_417432
		dd rva word_41744E
		dd rva word_417464
		dd rva word_417472
		dd 80000260h
		dd rva word_417484
		dd rva word_417498
		dd rva word_4174A6
		dd 80000284h
		dd rva word_4174B4
		dd rva word_4174BE
		dd rva word_4174D4
		dd rva word_4174E6
		dd rva word_4174F8
		dd rva word_417508
		dd rva word_41751C
		dd rva word_41752E
		dd 80000064h
		dd rva word_41753C
		dd rva word_41754A
		dd rva word_417558
		dd rva word_417564
		dd rva word_417570
		dd rva word_41757A
		dd rva word_41758A
		dd rva word_417594
		dd rva word_4175A4
		dd rva word_4175AE
		dd rva word_4175B8
		dd rva word_4175C8
		dd 0
aMsvbvm60_dll	db 'MSVBVM60.DLL',0     ; DATA XREF: .text:00417120o
		align 2
word_41724A	dw 0			; DATA XREF: .text:off_41713Co
		db '__vbaStrI2',0
		align 4
word_417258	dw 0			; DATA XREF: .text:00417140o
		db '_CIcos',0
		align 2
word_417262	dw 0			; DATA XREF: .text:00417144o
		db '_adj_fptan',0
		align 10h
word_417270	dw 0			; DATA XREF: .text:00417148o
		db '__vbaStrI4',0
		align 2
word_41727E	dw 0			; DATA XREF: .text:0041714Co
		db '__vbaFreeVar',0
		align 2
word_41728E	dw 0			; DATA XREF: .text:00417150o
		db '__vbaLateIdCall',0
word_4172A0	dw 0			; DATA XREF: .text:00417154o
		db '__vbaStrVarMove',0
word_4172B2	dw 0			; DATA XREF: .text:00417158o
		db '__vbaFreeVarList',0
		align 2
word_4172C6	dw 0			; DATA XREF: .text:0041715Co
		db '__vbaEnd',0
		align 2
word_4172D2	dw 0			; DATA XREF: .text:00417160o
		db '_adj_fdiv_m64',0
word_4172E2	dw 0			; DATA XREF: .text:00417164o
		db '__vbaFreeObjList',0
		align 2
word_4172F6	dw 0			; DATA XREF: .text:00417168o
		db '_adj_fprem1',0
word_417304	dw 0			; DATA XREF: .text:0041716Co
		db '__vbaStrCat',0
word_417312	dw 0			; DATA XREF: .text:00417170o
		db '__vbaHresultCheckObj',0
		align 2
word_41732A	dw 0			; DATA XREF: .text:00417174o
		db '_adj_fdiv_m32',0
word_41733A	dw 0			; DATA XREF: .text:00417178o
		db '__vbaObjSet',0
word_417348	dw 0			; DATA XREF: .text:00417180o
		db '_adj_fdiv_m16i',0
		align 2
word_41735A	dw 0			; DATA XREF: .text:00417184o
		db '_adj_fdivr_m16i',0
word_41736C	dw 0			; DATA XREF: .text:0041718Co
		db '__vbaBoolVar',0
		align 4
word_41737C	dw 0			; DATA XREF: .text:00417190o
		db '_CIsin',0
		align 2
word_417386	dw 0			; DATA XREF: .text:00417194o
		db '__vbaChkstk',0
word_417394	dw 0			; DATA XREF: .text:00417198o
		db 'EVENT_SINK_AddRef',0
word_4173A8	dw 0			; DATA XREF: .text:0041719Co
		db '__vbaStrCmp',0
word_4173B6	dw 0			; DATA XREF: .text:004171A0o
		db '__vbaI2I4',0
word_4173C2	dw 0			; DATA XREF: .text:004171A4o
		db '__vbaCastObjVar',0
word_4173D4	dw 0			; DATA XREF: .text:004171A8o
		db '__vbaStrR4',0
		align 2
word_4173E2	dw 0			; DATA XREF: .text:004171ACo
		db '_adj_fpatan',0
word_4173F0	dw 0			; DATA XREF: .text:004171B0o
		db '__vbaR4Var',0
		align 2
word_4173FE	dw 0			; DATA XREF: .text:004171B4o
		db '__vbaLateIdCallLd',0
word_417412	dw 0			; DATA XREF: .text:004171B8o
		db 'EVENT_SINK_Release',0
		align 4
word_417428	dw 0			; DATA XREF: .text:004171BCo
		db '_CIsqrt',0
word_417432	dw 0			; DATA XREF: .text:004171C0o
		db 'EVENT_SINK_QueryInterface',0
word_41744E	dw 0			; DATA XREF: .text:004171C4o
		db '__vbaExceptHandler',0
		align 4
word_417464	dw 0			; DATA XREF: .text:004171C8o
		db '_adj_fprem',0
		align 2
word_417472	dw 0			; DATA XREF: .text:004171CCo
		db '_adj_fdivr_m64',0
		align 4
word_417484	dw 0			; DATA XREF: .text:004171D4o
		db '__vbaFPException',0
		align 4
word_417498	dw 0			; DATA XREF: .text:004171D8o
		db '__vbaVarCat',0
word_4174A6	dw 0			; DATA XREF: .text:004171DCo
		db '__vbaI2Var',0
		align 4
word_4174B4	dw 0			; DATA XREF: .text:004171E4o
		db '_CIlog',0
		align 2
word_4174BE	dw 0			; DATA XREF: .text:004171E8o
		db '__vbaErrorOverflow',0
		align 4
word_4174D4	dw 0			; DATA XREF: .text:004171ECo
		db '_adj_fdiv_m32i',0
		align 2
word_4174E6	dw 0			; DATA XREF: .text:004171F0o
		db '_adj_fdivr_m32i',0
word_4174F8	dw 0			; DATA XREF: .text:004171F4o
		db '__vbaStrCopy',0
		align 4
word_417508	dw 0			; DATA XREF: .text:004171F8o
		db '__vbaFreeStrList',0
		align 4
word_41751C	dw 0			; DATA XREF: .text:004171FCo
		db '_adj_fdivr_m32',0
		align 2
word_41752E	dw 0			; DATA XREF: .text:00417200o
		db '_adj_fdiv_r',0
word_41753C	dw 0			; DATA XREF: .text:00417208o
		db '__vbaI4Var',0
		align 2
word_41754A	dw 0			; DATA XREF: .text:0041720Co
		db '__vbaVarDup',0
word_417558	dw 0			; DATA XREF: .text:00417210o
		db '__vbaFpI2',0
word_417564	dw 0			; DATA XREF: .text:00417214o
		db '__vbaFpI4',0
word_417570	dw 0			; DATA XREF: .text:00417218o
		db '_CIatan',0
word_41757A	dw 0			; DATA XREF: .text:0041721Co
		db '__vbaStrMove',0
		align 2
word_41758A	dw 0			; DATA XREF: .text:00417220o
		db '_allmul',0
word_417594	dw 0			; DATA XREF: .text:00417224o
		db '__vbaLateIdSt',0
word_4175A4	dw 0			; DATA XREF: .text:00417228o
		db '_CItan',0
		align 2
word_4175AE	dw 0			; DATA XREF: .text:0041722Co
		db '_CIexp',0
		align 4
word_4175B8	dw 0			; DATA XREF: .text:00417230o
		db '__vbaFreeObj',0
		align 4
word_4175C8	dw 0			; DATA XREF: .text:00417234o
		db '__vbaFreeStr',0
		align 1000h
_text		ends

; Section 2. (virtual address 00018000)
; Virtual size			: 00000B88 (   2952.)
; Section size in file		: 00001000 (   4096.)
; Offset to raw	data for section: 00018000
; Flags	C0000040: Data Readable	Writable
; Alignment	: default
; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read/Write
_data		segment	para public 'DATA' use32
		assume cs:_data
		;org 418000h
dword_418000	dd 0			; DATA XREF: .text:0041643Dr
					; .text:0041702Cr
		align 8
dword_418008	dd 5 dup(0)		; DATA XREF: .text:004054F0o
dword_41801C	dd 2 dup(0)		; DATA XREF: .text:004036D8o
dword_418024	dd 2 dup(0)		; DATA XREF: .text:00403FDCo
dword_41802C	dd 4 dup(0)		; DATA XREF: .text:00403F5Co
dword_41803C	dd 0BFh	dup(0)		; DATA XREF: .text:00403F4Co
dword_418338	dd 0			; DATA XREF: .text:0040437Co
dword_41833C	dd 0			; DATA XREF: .text:00404428o
dword_418340	dd 0			; DATA XREF: .text:00408BC0o
dword_418344	dd 0			; DATA XREF: .text:00408BCCo
dword_418348	dd 0			; DATA XREF: .text:00408BD8o
dword_41834C	dd 0			; DATA XREF: .text:00408BE4o
dword_418350	dd 0			; DATA XREF: .text:00408BF0o
dword_418354	dd 0			; DATA XREF: .text:00408BFCo
dword_418358	dd 0			; DATA XREF: .text:00408C08o
dword_41835C	dd 0			; DATA XREF: .text:00408C14o
dword_418360	dd 0			; DATA XREF: .text:00408C20o
dword_418364	dd 0			; DATA XREF: .text:00408C2Co
dword_418368	dd 0			; DATA XREF: .text:00408C38o
dword_41836C	dd 325h	dup(0)		; DATA XREF: .text:00408C44o
_data		ends


		end start

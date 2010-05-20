#include "nova.ch"

Function  RT_GetExprValue ( P1 )
	Local X,VMAX,ExprValue,LastMark,ScanSW,themark
	VMAX  = LEN(P1)
	ExprValue := ""
	LastMark := SN_SumString
	scansw := {False,False,False,False,False,False,False,False,False}
	FOR x = 1 TO VMAX STEP 1
		IF p1[x][1] == SN_MergeOperator
			ScanSW[1] := True
			Loop
		ENDIF
		IF p1[x][1] == SN_DateOperator
			ScanSW[2] := True
			Loop
		ENDIF
		IF p1[x][1] == SN_MacroOperator
			ScanSW[3] := True
			Loop
		ENDIF
		themark := lower(alltrim(p1[x][2]))
		IF themark = "*" .or. themark = "x" .or. themark = "/" .or. themark = "%"
			ScanSW[4] := True
			Loop
		ENDIF
		IF themark = "+" .or. themark = "-"
			ScanSW[5] := True
			Loop
		ENDIF
		IF themark == ">" .or. themark == "<" .or. themark == ">=" .or. themark == "<="
			ScanSW[6] := True
			Loop
		ENDIF
		IF themark == "isequal" .or. themark == "==" .or. themark == "!="
			ScanSW[7] := True
			Loop
		ENDIF
		IF themark == "not"
			ScanSW[8] := True
			Loop
		ENDIF
		IF p1[x][1] == SN_StringOperator
			ScanSW[9] := True
			Loop
		ENDIF
	Next
	BEGIN SEQUENCE WITH { |e| break(e) }
	IF ScanSW[1] = True
		FOR x = 1 TO VMAX STEP 1
			IF p1[x][1] == SN_MergeOperator
				LastMark := lower(alltrim(p1[x][2]))
				Loop	
			ENDIF
			IF LastMark = SN_Slash
				IF p1[x][1] == SN_Value
					IF p1[x-2][1] == SN_Variable
						p1[x-2][2] := alltrim(p1[x-2][2]) + "-" + alltrim(p1[x][2])
					ENDIF
				ENDIF
				IF p1[x][1] == SN_Variable
					myvalue = RT_VarValue ( p1[x][2] )
					IF p1[x-2][1] == SN_Variable
						p1[x-2][2] := alltrim(p1[x-2][2]) + "-" + alltrim(myvalue)
					ENDIF
				ENDIF
				ADEL( p1 , x)
				ASIZE( p1 , LEN( p1 ) - 1 )
				ADEL( p1 , x-1)
				ASIZE( p1 , LEN( p1 ) - 1 )
				x := x-2
				VMAX  = LEN(P1)
			ENDIF
			LastMark := SN_SumString
		Next
		ExprValue := ""
	ENDIF
	IF ScanSW[2] = True
		FOR x = 1 TO vmax STEP 1
			IF p1[x][1] == SN_DateOperator
				LastMark := lower(alltrim(p1[x][2]))
				IF LastMark = "thedate"
					set century on
					ExprValue = DATE()
					ExprValue = DTOC ( ExprValue )
					ExprValue = ALLTRIM ( ExprValue )
				ENDIF
				IF LastMark = "thetime"
					ExprValue = TIME()
					ExprValue = ALLTRIM ( ExprValue )
				ENDIF
				IF LastMark = "theseconds"
					ExprValue := alltrim(str(Seconds()))
				ENDIF
				IF LastMark = "theday"
					ExprValue := alltrim(cdow(date()))
				ENDIF
				IF LastMark = "themonth"
					ExprValue := alltrim(cmonth(date()))
				ENDIF
				p1[x][1] := SN_Value
				p1[x][2] := exprvalue
				Loop
			ENDIF
		Next
	ExprValue := ""
	LastMark := SN_SumString
	ENDIF
	IF ScanSW[3] = True
		FOR x = 1 TO vmax STEP 1
			IF p1[x][1] == SN_MacroOperator
				LastMark := lower(alltrim(p1[x][2]))
				Loop
			ENDIF
			IF LastMark = "getvariable"
				IF p1[x][1] == SN_Value
					ExprValue := alltrim(p1[x][2])
					ExprValue = RT_VarValue ( ExprValue )
					p1[x][2] := exprvalue
				ENDIF
				IF p1[x][1] == SN_Variable
					myvalue = RT_VarValue ( p1[x][2] )
					ExprValue := alltrim(myvalue)
					ExprValue = RT_VarValue ( ExprValue )
					p1[x][2] := exprvalue
					p1[x][1] := SN_Value
				ENDIF
				ADEL( p1 , x-1)
				ASIZE( p1 , LEN( p1 ) - 1 )
				x := x-1
				VMAX  = LEN(P1)
			ENDIF
			IF LastMark = "dofunction"
				DO RT_SetVarValue WITH "[output]","NULL"
				IF p1[x][1] == SN_Value
					ExprValue := alltrim(p1[x][2])
					DO RT_CallInstructions WITH LOWER(ALLTRIM(ExprValue))
					ExprValue = RT_VarValue ( "output" )
					p1[x][2] := exprvalue
				ENDIF
				IF p1[x][1] == SN_Variable
					myvalue = RT_VarValue ( p1[x][2] )
					ExprValue := alltrim(myvalue)
					DO RT_CallInstructions WITH LOWER(ALLTRIM(ExprValue))
					ExprValue = RT_VarValue ( "output" )
					p1[x][2] := exprvalue
					p1[x][1] := SN_Value
				ENDIF
				ADEL( p1 , x-1)
				ASIZE( p1 , LEN( p1 ) - 1 )
				x := x-1
				VMAX  = LEN(P1)
			ENDIF
			LastMark := SN_SumString
		Next
	ExprValue := ""
	ENDIF
	IF ScanSW[4] = True
		FOR x = 1 TO VMAX STEP 1
			IF p1[x][1] == SN_MathOperator .OR. p1[x][1] == SN_LogicalOperator
				LastMark := lower(alltrim(p1[x][2]))
				Loop
			ENDIF
			IF LastMark = "*" .or. LastMark = "X" .OR. LastMark = "x"
				IF p1[x][1] == SN_Value
					IF p1[x-2][1] == SN_Value
						ExprValue := alltrim(str(val(p1[x-2][2]) * val(p1[x][2])))
						p1[x-2][2] := exprvalue
					ENDIF
					IF p1[x-2][1] == SN_Variable
						myvalue = RT_VarValue ( p1[x-2][2] )
						IF myvalue = "NULL"
							myvalue := "1"
						ENDIF
						ExprValue := alltrim(str(val(myvalue) * val(p1[x][2])))
						p1[x-2][2] := exprvalue
						p1[x-2][1] := SN_Value
					ENDIF
				ENDIF
				IF p1[x][1] == SN_Variable
					myvalue = RT_VarValue ( p1[x][2] )
					IF myvalue = "NULL"
						myvalue := "1"
					ENDIF
					IF p1[x-2][1] == SN_Value
						ExprValue := alltrim(str(val(p1[x-2][2]) * val(myvalue)))
						p1[x-2][2] := exprvalue
						p1[x][1] := SN_Value
					ENDIF
					IF p1[x-2][1] == SN_Variable
						myvalue2 = RT_VarValue ( p1[x-2][2] )
						IF myvalue2 = "NULL"
							myvalue2 := "1"
						ENDIF
						ExprValue := alltrim(str(val(myvalue2) * val(myvalue)))
						p1[x-2][2] := exprvalue
						p1[x-2][1] := SN_Value
					ENDIF
				ENDIF
				ADEL( p1 , x)
				ASIZE( p1 , LEN( p1 ) - 1 )
				ADEL( p1 , x-1)
				ASIZE( p1 , LEN( p1 ) - 1 )
				x := x-2
				VMAX  = LEN(P1)
			ENDIF
			IF LastMark = "/"
				IF p1[x][1] == SN_Value
					IF p1[x-2][1] == SN_Value
						ExprValue := alltrim(str(val(p1[x-2][2]) / val(p1[x][2])))
						p1[x-2][2] := exprvalue
					ENDIF
					IF p1[x-2][1] == SN_Variable
						myvalue = RT_VarValue ( p1[x-2][2] )
						IF myvalue = "NULL"
							myvalue := "1"
						ENDIF
						ExprValue := alltrim(str(val(myvalue) / val(p1[x][2])))
						p1[x-2][2] := exprvalue
						p1[x-2][1] := SN_Value
					ENDIF
				ENDIF
				IF p1[x][1] == SN_Variable
					myvalue = RT_VarValue ( p1[x][2] )
					IF myvalue = "NULL"
						myvalue := "1"
					ENDIF
					IF p1[x-2][1] == SN_Value
						ExprValue := alltrim(str(val(p1[x-2][2]) / val(myvalue)))
						p1[x-2][2] := exprvalue
						p1[x][1] := SN_Value
					ENDIF
					IF p1[x-2][1] == SN_Variable
						myvalue2 = RT_VarValue ( p1[x-2][2] )
						IF myvalue2 = "NULL"
							myvalue2 := "1"
						ENDIF
						ExprValue := alltrim(str(val(myvalue2) / val(myvalue)))
						p1[x-2][2] := exprvalue
						p1[x-2][1] := SN_Value
						p1[x][2] := "ignore"
						p1[x-1][2] := "ignore"
					ENDIF
				ENDIF
				ADEL( p1 , x)
				ASIZE( p1 , LEN( p1 ) - 1 )
				ADEL( p1 , x-1)
				ASIZE( p1 , LEN( p1 ) - 1 )
				x := x-2
				VMAX  = LEN(P1)
			ENDIF
			IF LastMark = "%"
				IF p1[x][1] == SN_Value
					IF p1[x-2][1] == SN_Value
						ExprValue := alltrim(str(val(p1[x-2][2]) % val(p1[x][2])))
						p1[x-2][2] := exprvalue
					ENDIF
					IF p1[x-2][1] == SN_Variable
						myvalue = RT_VarValue ( p1[x-2][2] )
						ExprValue := alltrim(str(val(myvalue) % val(p1[x][2])))
						p1[x-2][2] := exprvalue
						p1[x-2][1] := SN_Value
					ENDIF
				ENDIF
				IF p1[x][1] == SN_Variable
					myvalue = RT_VarValue ( p1[x][2] )
					IF p1[x-2][1] == SN_Value
						ExprValue := alltrim(str(val(p1[x-2][2]) % val(myvalue)))
						p1[x-2][2] := exprvalue
						p1[x][1] := SN_Value
					ENDIF
					IF p1[x-2][1] == SN_Variable
						myvalue2 = RT_VarValue ( p1[x-2][2] )
						ExprValue := alltrim(str(val(myvalue2) % val(myvalue)))
						p1[x-2][2] := exprvalue
						p1[x-2][1] := SN_Value
					ENDIF
				ENDIF
				ADEL( p1 , x)
				ASIZE( p1 , LEN( p1 ) - 1 )
				ADEL( p1 , x-1)
				ASIZE( p1 , LEN( p1 ) - 1 )
				x := x-2
				VMAX  = LEN(P1)
			ENDIF
			LastMark := SN_SumString
		Next
		ExprValue := ""
	ENDIF
	IF ScanSW[5] = True
		FOR x = 1 TO VMAX STEP 1
			IF p1[x][1] == SN_MathOperator .OR. p1[x][1] == SN_LogicalOperator
				LastMark := lower(alltrim(p1[x][2]))
				Loop
			ENDIF
			IF LastMark = "+"
				IF p1[x][1] == SN_Value
					IF p1[x-2][1] == SN_Value
						ExprValue := alltrim(str(val(p1[x-2][2]) + val(p1[x][2])))
						p1[x-2][2] := exprvalue
					ENDIF
					IF p1[x-2][1] == SN_Variable
						myvalue = RT_VarValue ( p1[x-2][2] )
						ExprValue := alltrim(str(val(myvalue) + val(p1[x][2])))
						p1[x-2][2] := exprvalue
						p1[x-2][1] := SN_Value
					ENDIF
				ENDIF
				IF p1[x][1] == SN_Variable
					myvalue = RT_VarValue ( p1[x][2] )
					IF p1[x-2][1] == SN_Value
						ExprValue := alltrim(str(val(p1[x-2][2]) + val(myvalue)))
						p1[x-2][2] := exprvalue
						p1[x][1] := SN_Value
					ENDIF
					IF p1[x-2][1] == SN_Variable
						myvalue2 = RT_VarValue ( p1[x-2][2] )
						ExprValue := alltrim(str(val(myvalue2) + val(myvalue)))
						p1[x-2][2] := exprvalue
						p1[x-2][1] := SN_Value
					ENDIF
				ENDIF
				ADEL( p1 , x)
				ASIZE( p1 , LEN( p1 ) - 1 )
				ADEL( p1 , x-1)
				ASIZE( p1 , LEN( p1 ) - 1 )
				x := x-2
				VMAX  = LEN(P1)
			ENDIF
			IF LastMark = "-"
				IF p1[x][1] == SN_Value
					IF p1[x-2][1] == SN_Value
						ExprValue := alltrim(str(val(p1[x-2][2]) - val(p1[x][2])))
						p1[x-2][2] := exprvalue
					ENDIF
					IF p1[x-2][1] == SN_Variable
						myvalue = RT_VarValue ( p1[x-2][2] )
						ExprValue := alltrim(str(val(myvalue) - val(p1[x][2])))
						p1[x-2][2] := exprvalue
							p1[x-2][1] := SN_Value
					ENDIF
				ENDIF
				IF p1[x][1] == SN_Variable
					myvalue = RT_VarValue ( p1[x][2] )
					IF p1[x-2][1] == SN_Value
						ExprValue := alltrim(str(val(p1[x-2][2]) - val(myvalue)))
						p1[x-2][2] := exprvalue
						p1[x][1] := SN_Value
					ENDIF
					IF p1[x-2][1] == SN_Variable
						myvalue2 = RT_VarValue ( p1[x-2][2] )
						ExprValue := alltrim(str(val(myvalue2) - val(myvalue)))
						p1[x-2][2] := exprvalue
						p1[x-2][1] := SN_Value
					ENDIF
				ENDIF
				ADEL( p1 , x)
				ASIZE( p1 , LEN( p1 ) - 1 )
				ADEL( p1 , x-1)
				ASIZE( p1 , LEN( p1 ) - 1 )
				x := x-2
				VMAX  = LEN(P1)
			ENDIF
			LastMark := SN_SumString
		Next
		ExprValue := ""
	ENDIF
	IF ScanSW[6] = True
		FOR x = 1 TO VMAX STEP 1
			IF p1[x][1] == SN_MathOperator .OR. p1[x][1] == SN_LogicalOperator
				LastMark := lower(alltrim(p1[x][2]))
				Loop
			ENDIF
			IF LastMark == ">"
				IF p1[x][1] == SN_Value
					IF p1[x-2][1] == SN_Value
						IF val(p1[x-2][2]) > val(p1[x][2])
							ExprValue := "True"
						ELSE
							ExprValue := "False"
						ENDIF
						p1[x-2][2] := exprvalue
					ENDIF	
					IF p1[x-2][1] == SN_Variable
						myvalue = RT_VarValue ( p1[x-2][2] )
						IF val(myvalue) > val(p1[x][2])
							ExprValue := "True"
						ELSE
							ExprValue := "False"
						ENDIF
						p1[x-2][2] := exprvalue
						p1[x-2][1] := SN_Value
					ENDIF
				ENDIF
				IF p1[x][1] == SN_Variable
					myvalue = RT_VarValue ( p1[x][2] )
					IF p1[x-2][1] == SN_Value
						IF val(p1[x-2][2]) > val(myvalue)
							ExprValue := "True"
						ELSE
							ExprValue := "False"
						ENDIF
						p1[x-2][2] := exprvalue
						p1[x][1] := SN_Value
					ENDIF
					IF p1[x-2][1] == SN_Variable
						myvalue2 = RT_VarValue ( p1[x-2][2] )
						IF val(myvalue2) > val(myvalue)
							ExprValue := "True"
						ELSE
							ExprValue := "False"
						ENDIF
						p1[x-2][2] := exprvalue
						p1[x-2][1] := SN_Value
					ENDIF
				ENDIF
				ADEL( p1 , x)
				ASIZE( p1 , LEN( p1 ) - 1 )
				ADEL( p1 , x-1)
				ASIZE( p1 , LEN( p1 ) - 1 )
			x := x-2
			VMAX  = LEN(P1)
		ENDIF
		IF LastMark == "<"
			IF p1[x][1] == SN_Value
				IF p1[x-2][1] == SN_Value
					IF val(p1[x-2][2]) < val(p1[x][2])
						ExprValue := "True"
					ELSE
						ExprValue := "False"
					ENDIF
					p1[x-2][2] := exprvalue
				ENDIF
				IF p1[x-2][1] == SN_Variable
					myvalue = RT_VarValue ( p1[x-2][2] )
					IF val(myvalue) < val(p1[x][2])
						ExprValue := "True"
					ELSE
						ExprValue := "False"
					ENDIF
					p1[x-2][2] := exprvalue
					p1[x-2][1] := SN_Value
				ENDIF
			ENDIF
			IF p1[x][1] == SN_Variable
				myvalue = RT_VarValue ( p1[x][2] )
				IF p1[x-2][1] == SN_Value
					IF val(p1[x-2][2]) < val(myvalue)
						ExprValue := "True"
					ELSE
						ExprValue := "False"
					ENDIF
					p1[x-2][2] := exprvalue
					p1[x][1] := SN_Value
				ENDIF
				IF p1[x-2][1] == SN_Variable
					myvalue2 = RT_VarValue ( p1[x-2][2] )
					IF val(myvalue2) < val(myvalue)
						ExprValue := "True"
					ELSE
						ExprValue := "False"
					ENDIF
					p1[x-2][2] := exprvalue
					p1[x-2][1] := SN_Value
				ENDIF
			ENDIF
			ADEL( p1 , x)
			ASIZE( p1 , LEN( p1 ) - 1 )
			ADEL( p1 , x-1)
			ASIZE( p1 , LEN( p1 ) - 1 )
			x := x-2
			VMAX  = LEN(P1)
		ENDIF
		IF LastMark == ">="
			IF p1[x][1] == SN_Value
				IF p1[x-2][1] == SN_Value
					IF val(p1[x-2][2]) >= val(p1[x][2])
						ExprValue := "True"
					ELSE
						ExprValue := "False"
					ENDIF
					p1[x-2][2] := exprvalue
				ENDIF
				IF p1[x-2][1] == SN_Variable
					myvalue = RT_VarValue ( p1[x-2][2] )
					IF val(myvalue) >= val(p1[x][2])
						ExprValue := "True"
					ELSE
						ExprValue := "False"
					ENDIF
					p1[x-2][2] := exprvalue
					p1[x-2][1] := SN_Value
				ENDIF
			ENDIF
			IF p1[x][1] == SN_Variable
				myvalue = RT_VarValue ( p1[x][2] )
				IF p1[x-2][1] == SN_Value
					IF val(p1[x-2][2]) >= val(myvalue)
						ExprValue := "True"
					ELSE
						ExprValue := "False"
					ENDIF
					p1[x-2][2] := exprvalue
					p1[x][1] := SN_Value
				ENDIF
				IF p1[x-2][1] == SN_Variable
					myvalue2 = RT_VarValue ( p1[x-2][2] )
					IF val(myvalue2) >= val(myvalue)
						ExprValue := "True"
					ELSE
						ExprValue := "False"
					ENDIF
					p1[x-2][2] := exprvalue
					p1[x-2][1] := SN_Value
				ENDIF
			ENDIF
			ADEL( p1 , x)
			ASIZE( p1 , LEN( p1 ) - 1 )
			ADEL( p1 , x-1)
			ASIZE( p1 , LEN( p1 ) - 1 )
			x := x-2
			VMAX  = LEN(P1)
		ENDIF
		IF LastMark == "<="
			IF p1[x][1] == SN_Value
				IF p1[x-2][1] == SN_Value
					IF val(p1[x-2][2]) <= val(p1[x][2])
						ExprValue := "True"
					ELSE
						ExprValue := "False"
					ENDIF
					p1[x-2][2] := exprvalue
				ENDIF
				IF p1[x-2][1] == SN_Variable
					myvalue = RT_VarValue ( p1[x-2][2] )
					IF val(myvalue) <= val(p1[x][2])
						ExprValue := "True"
					ELSE
						ExprValue := "False"
					ENDIF
					p1[x-2][2] := exprvalue
					p1[x-2][1] := SN_Value
				ENDIF
			ENDIF
			IF p1[x][1] == SN_Variable
				myvalue = RT_VarValue ( p1[x][2] )
				IF p1[x-2][1] == SN_Value
					IF val(p1[x-2][2]) <= val(myvalue)
						ExprValue := "True"
					ELSE
						ExprValue := "False"
					ENDIF
					p1[x-2][2] := exprvalue
					p1[x][1] := SN_Value
				ENDIF
				IF p1[x-2][1] == SN_Variable
					myvalue2 = RT_VarValue ( p1[x-2][2] )
					IF val(myvalue2) <= val(myvalue)
						ExprValue := "True"
					ELSE
						ExprValue := "False"
					ENDIF
					p1[x-2][2] := exprvalue
					p1[x-2][1] := SN_Value
				ENDIF
			ENDIF
			ADEL( p1 , x)
			ASIZE( p1 , LEN( p1 ) - 1 )
			ADEL( p1 , x-1)
			ASIZE( p1 , LEN( p1 ) - 1 )
			x := x-2
			VMAX  = LEN(P1)
		ENDIF
		LastMark := SN_SumString
	Next
	ExprValue := ""
	ENDIF
	IF ScanSW[7] = True
		FOR x = 1 TO VMAX STEP 1
			IF p1[x][1] == SN_MathOperator .OR. p1[x][1] == SN_LogicalOperator
				LastMark := lower(alltrim(p1[x][2]))
				Loop
			ENDIF
			IF LastMark == "isequal" .or. LastMark == "=="
				IF p1[x][1] == SN_Value
					IF p1[x-2][1] == SN_Value
						IF p1[x-2][2] == p1[x][2]
							ExprValue := "True"
						ELSE
							ExprValue := "False"
						ENDIF
						p1[x-2][2] := exprvalue
					ENDIF
					IF p1[x-2][1] == SN_Variable
						myvalue = RT_VarValue ( p1[x-2][2] )
						IF myvalue == p1[x][2]
							ExprValue := "True"
						ELSE
							ExprValue := "False"
						ENDIF
						p1[x-2][2] := exprvalue
						p1[x-2][1] := SN_Value
					ENDIF
				ENDIF
				IF p1[x][1] == SN_Variable
					myvalue = RT_VarValue ( p1[x][2] )
					IF p1[x-2][1] == SN_Value
						IF p1[x-2][2] == myvalue
							ExprValue := "True"
						ELSE
							ExprValue := "False"
						ENDIF
						p1[x-2][2] := exprvalue
						p1[x][1] := SN_Value
					ENDIF
					IF p1[x-2][1] == SN_Variable
						myvalue2 = RT_VarValue ( p1[x-2][2] )
						IF myvalue2 == myvalue
							ExprValue := "True"
						ELSE
							ExprValue := "False"
						ENDIF
						p1[x-2][2] := exprvalue
						p1[x-2][1] := SN_Value
					ENDIF
				ENDIF
				ADEL( p1 , x)
				ASIZE( p1 , LEN( p1 ) - 1 )
				ADEL( p1 , x-1)
				ASIZE( p1 , LEN( p1 ) - 1 )
				x := x-2
				VMAX  = LEN(P1)
			ENDIF
			IF LastMark == "!="
				IF p1[x][1] == SN_Value
					IF p1[x-2][1] == SN_Value
						IF p1[x-2][2] != p1[x][2]
							ExprValue := "True"
						ELSE
							ExprValue := "False"
						ENDIF
						p1[x-2][2] := exprvalue
					ENDIF
					IF p1[x-2][1] == SN_Variable
						myvalue = RT_VarValue ( p1[x-2][2] )
						IF myvalue != p1[x][2]
							ExprValue := "True"
						ELSE
							ExprValue := "False"
						ENDIF
						p1[x-2][2] := exprvalue
						p1[x-2][1] := SN_Value
					ENDIF
				ENDIF
				IF p1[x][1] == SN_Variable
					myvalue = RT_VarValue ( p1[x][2] )
					IF p1[x-2][1] == SN_Value
						IF p1[x-2][2] != myvalue
							ExprValue := "True"
						ELSE
							ExprValue := "False"
						ENDIF
						p1[x-2][2] := exprvalue
						p1[x][1] := SN_Value
					ENDIF
					IF p1[x-2][1] == SN_Variable
						myvalue2 = RT_VarValue ( p1[x-2][2] )
						IF myvalue2 != myvalue
							ExprValue := "True"
						ELSE
							ExprValue := "False"
						ENDIF
						p1[x-2][2] := exprvalue
						p1[x-2][1] := SN_Value
					ENDIF
				ENDIF
				ADEL( p1 , x)
				ASIZE( p1 , LEN( p1 ) - 1 )
				ADEL( p1 , x-1)
				ASIZE( p1 , LEN( p1 ) - 1 )
				x := x-2
				VMAX  = LEN(P1)
			ENDIF
			LastMark := SN_SumString
		Next
		ExprValue := ""
	ENDIF
	IF ScanSW[8] = True
		FOR x = 1 TO VMAX STEP 1
			IF p1[x][1] == SN_MathOperator .OR. p1[x][1] == SN_LogicalOperator
				LastMark := lower(alltrim(p1[x][2]))
				Loop
			ENDIF
			IF LastMark == "not"
				IF p1[x][1] == SN_Value
					IF p1[x][2] = "False"
						ExprValue := "True"
					ELSE
						ExprValue := "False"
					ENDIF
					p1[x][2] := exprvalue
				ENDIF
				IF p1[x][1] == SN_Variable
					myvalue = RT_VarValue ( p1[x][2] )
					IF myvalue = "False"
						ExprValue := "True"
					ELSE
						ExprValue := "False"
					ENDIF
					p1[x][2] := exprvalue
					p1[x][1] := SN_Value
				ENDIF
				ADEL( p1 , x-1)
				ASIZE( p1 , LEN( p1 ) - 1 )
				x := x-1
				VMAX  = LEN(P1)
			ENDIF
			LastMark := SN_SumString
		Next
		ExprValue := ""
	ENDIF
	FOR x = 1 TO VMAX STEP 1
		IF p1[x][1] == SN_MathOperator .OR. p1[x][1] == SN_LogicalOperator
			LastMark := lower(alltrim(p1[x][2]))
			Loop
		ENDIF	
		IF LastMark = "and"
			IF p1[x][1] == SN_Value
				logicvar := false
				IF alltrim(lower(exprvalue)) = "true"
					exprvalue := "1"
					logicvar := true
				ENDIF
				IF alltrim(lower(exprvalue)) = "false"
					exprvalue := "0"
					logicvar := true
				ENDIF
				IF alltrim(lower(p1[x][2])) = "true"
					p1[x][2] := "1"
					logicvar := true
				ENDIF
				IF alltrim(lower(p1[x][2])) = "false"
					p1[x][2] := "0"
					logicvar := true
				ENDIF
				myandres = NUMAND (val(exprvalue) , val(p1[x][2]))
				myandres = STR ( int(myandres) )
				exprvalue = ALLTRIM ( myandres )
				IF logicvar = true
					IF alltrim(lower(exprvalue)) = "1"
						exprvalue := "True"
					ENDIF
					IF alltrim(lower(exprvalue)) = "0"
						exprvalue := "False"
					ENDIF
				ENDIF
			ENDIF
			IF p1[x][1] == SN_Variable
				myvalue = RT_VarValue ( p1[x][2] )
				logicvar := false
				IF alltrim(lower(exprvalue)) = "true"
					exprvalue := "1"
					logicvar := true
				ENDIF
				IF alltrim(lower(exprvalue)) = "false"
					exprvalue := "0"
					logicvar := true
				ENDIF
				IF alltrim(lower(myvalue)) = "true"
					myvalue := "1"
					logicvar := true
				ENDIF
				IF alltrim(lower(myvalue)) = "false"
					myvalue := "0"
					logicvar := true
				ENDIF
				myandres = NUMAND (val(exprvalue) , val(myvalue))
				myandres = STR ( int(myandres) )
				exprvalue = ALLTRIM ( myandres )
				IF logicvar = true
					IF alltrim(lower(exprvalue)) = "1"
						exprvalue := "True"
					ENDIF
					IF alltrim(lower(exprvalue)) = "0"
						exprvalue := "False"
					ENDIF
				ENDIF
			ENDIF
		ENDIF
		IF LastMark = "or"
			IF p1[x][1] == SN_Value
				logicvar := false
				IF alltrim(lower(exprvalue)) = "true"
					exprvalue := "1"
					logicvar := true
				ENDIF
				IF alltrim(lower(exprvalue)) = "false"
					exprvalue := "0"
					logicvar := true
				ENDIF
				IF alltrim(lower(p1[x][2])) = "true"
					p1[x][2] := "1"
					logicvar := true
				ENDIF
				IF alltrim(lower(p1[x][2])) = "false"
					p1[x][2] := "0"
					logicvar := true
				ENDIF
				myorres = NUMOR (val(exprvalue) , val(p1[x][2]))
				myorres = STR ( int(myorres) )
				exprvalue = ALLTRIM ( myorres )
				IF logicvar = true
					IF alltrim(lower(exprvalue)) = "1"
						exprvalue := "True"
					ENDIF
					IF alltrim(lower(exprvalue)) = "0"
						exprvalue := "False"
					ENDIF
				ENDIF
			ENDIF
			IF p1[x][1] == SN_Variable
				myvalue = RT_VarValue ( p1[x][2] )
				logicvar := false
				IF alltrim(lower(exprvalue)) = "true"
					exprvalue := "1"
					logicvar := true
				ENDIF
				IF alltrim(lower(exprvalue)) = "false"
					exprvalue := "0"
					logicvar := true
				ENDIF
				IF alltrim(lower(myvalue)) = "true"
					myvalue := "1"
					logicvar := true
				ENDIF
				IF alltrim(lower(myvalue)) = "false"
					myvalue := "0"
					logicvar := true
				ENDIF
				myorres = NUMOR (val(exprvalue) , val(myvalue))
				myorres = STR ( int(myorres) )
				exprvalue = ALLTRIM ( myorres )
				IF logicvar = true
					IF alltrim(lower(exprvalue)) = "1"
						exprvalue := "True"
					ENDIF
					IF alltrim(lower(exprvalue)) = "0"
						exprvalue := "False"
					ENDIF
				ENDIF
			ENDIF
		ENDIF
		IF LastMark = SN_SumString
			IF p1[x][1] == SN_Value
				ExprValue := ExprValue + p1[x][2]
				IF .not. x = 1
					IF p1[x-1][1] = SN_Variable .or. p1[x-1][1] = SN_Value
						ADEL( p1 , x-1)
						ASIZE( p1 , LEN( p1 ) - 1 )
						x := x-1
						VMAX  = LEN(P1)
						p1[x][1] := SN_Value
						p1[x][2] := exprvalue
					ENDIF
				ENDIF
			ENDIF
			IF p1[x][1] == SN_Variable
				myvalue = RT_VarValue ( p1[x][2] )
				ExprValue := ExprValue + myvalue
				IF .not. x = 1
					IF p1[x-1][1] = SN_Variable .or. p1[x-1][1] = SN_Value
						ADEL( p1 , x-1)
						ASIZE( p1 , LEN( p1 ) - 1 )
						x := x-1
						VMAX  = LEN(P1)
						p1[x][2] := exprvalue
						p1[x][1] := SN_Value
					ENDIF
				ENDIF
			ENDIF
		ENDIF
	Next
	IF ScanSW[9] = True
		FOR x = 1 TO vmax STEP 1
			IF p1[x][1] == SN_StringOperator
				LastMark := lower(alltrim(p1[x][2]))
				Loop
			ENDIF
			IF LastMark = "len"
				IF p1[x][1] == SN_Value
					ExprValue := alltrim(str(len(p1[x][2]) ))
					p1[x][2] := exprvalue
				ENDIF
				IF p1[x][1] == SN_Variable
					myvalue = RT_VarValue ( p1[x][2] )
					ExprValue := alltrim(str(len(myvalue)))
					p1[x][2] := exprvalue
					p1[x][1] := SN_Value
				ENDIF
				ADEL( p1 , x-1)
				ASIZE( p1 , LEN( p1 ) - 1 )
				x := x-1
				VMAX  = LEN(P1)
			ENDIF
			IF LastMark = "left"
				IF p1[x][1] == SN_Value
					IF p1[x-2][1] == SN_Value
						Exprvalue = Left(p1[x][2],val(p1[x-2][2]))
						p1[x-2][2] := exprvalue
					ENDIF
					IF p1[x-2][1] == SN_Variable
						myvalue = RT_VarValue ( p1[x-2][2] )
						Exprvalue = Left(p1[x][2],val(myvalue))
						p1[x-2][2] := exprvalue
						p1[x-2][1] := SN_Value
					ENDIF
				ENDIF
				IF p1[x][1] == SN_Variable
					myvalue = RT_VarValue ( p1[x][2] )
					IF p1[x-2][1] == SN_Value
						Exprvalue = Left(myvalue,val(p1[x-2][2]))
						p1[x-2][2] := exprvalue
						p1[x][1] := SN_Value
					ENDIF
					IF p1[x-2][1] == SN_Variable
						myvalue2 = RT_VarValue ( p1[x-2][2] )
						Exprvalue = Left(myvalue,val(myvalue2))
						p1[x-2][2] := exprvalue
						p1[x-2][1] := SN_Value
					ENDIF
				ENDIF
				ADEL( p1 , x)
				ASIZE( p1 , LEN( p1 ) - 1 )
				ADEL( p1 , x-1)
				ASIZE( p1 , LEN( p1 ) - 1 )
				x := x-2
				VMAX  = LEN(P1)
			ENDIF
			IF LastMark = "right"
				IF p1[x][1] == SN_Value
					IF p1[x-2][1] == SN_Value
						Exprvalue = Right(p1[x][2],val(p1[x-2][2]))
						p1[x-2][2] := exprvalue
					ENDIF
					IF p1[x-2][1] == SN_Variable
						myvalue = RT_VarValue ( p1[x-2][2] )
						Exprvalue = Right(p1[x][2],val(myvalue))
						p1[x-2][2] := exprvalue
						p1[x-2][1] := SN_Value
					ENDIF
				ENDIF
				IF p1[x][1] == SN_Variable
					myvalue = RT_VarValue ( p1[x][2] )
					IF p1[x-2][1] == SN_Value
						Exprvalue = Right(myvalue,val(p1[x-2][2]))
						p1[x-2][2] := exprvalue
						p1[x][1] := SN_Value
					ENDIF
					IF p1[x-2][1] == SN_Variable
						myvalue2 = RT_VarValue ( p1[x-2][2] )
						Exprvalue = Right(myvalue,val(myvalue2))
						p1[x-2][2] := exprvalue
						p1[x-2][1] := SN_Value
					ENDIF
				ENDIF
				ADEL( p1 , x)
				ASIZE( p1 , LEN( p1 ) - 1 )
				ADEL( p1 , x-1)
				ASIZE( p1 , LEN( p1 ) - 1 )
				x := x-2
				VMAX  = LEN(P1)
			ENDIF
			IF LastMark = "alltrim"
				IF p1[x][1] == SN_Value
					ExprValue := alltrim(p1[x][2] )
					p1[x][2] := exprvalue
				ENDIF
				IF p1[x][1] == SN_Variable
					myvalue = RT_VarValue ( p1[x][2] )
					ExprValue := alltrim(myvalue)
					p1[x][2] := exprvalue
					p1[x][1] := SN_Value	
				ENDIF
				ADEL( p1 , x-1)
				ASIZE( p1 , LEN( p1 ) - 1 )
				x := x-1
				VMAX  = LEN(P1)
			ENDIF
			IF LastMark = "rtrim"
				IF p1[x][1] == SN_Value
					ExprValue := rtrim(p1[x][2] )
					p1[x][2] := exprvalue
				ENDIF
				IF p1[x][1] == SN_Variable
					myvalue = RT_VarValue ( p1[x][2] )
					ExprValue := rtrim(myvalue)
					p1[x][2] := exprvalue
					p1[x][1] := SN_Value
				ENDIF
				ADEL( p1 , x-1)
				ASIZE( p1 , LEN( p1 ) - 1 )
				x := x-1
				VMAX  = LEN(P1)
			ENDIF
			IF LastMark = "ltrim"
				IF p1[x][1] == SN_Value
					ExprValue := ltrim(p1[x][2] )
					p1[x][2] := exprvalue
				ENDIF
				IF p1[x][1] == SN_Variable
					myvalue = RT_VarValue ( p1[x][2] )
					ExprValue := ltrim(myvalue)
					p1[x][2] := exprvalue
					p1[x][1] := SN_Value
				ENDIF
				ADEL( p1 , x-1)
				ASIZE( p1 , LEN( p1 ) - 1 )
				x := x-1
				VMAX  = LEN(P1)
			ENDIF
			IF LastMark = "upper"
				IF p1[x][1] == SN_Value
					ExprValue := upper(p1[x][2] )
					p1[x][2] := exprvalue
				ENDIF
				IF p1[x][1] == SN_Variable
					myvalue = RT_VarValue ( p1[x][2] )
					ExprValue := upper(myvalue)
					p1[x][2] := exprvalue
					p1[x][1] := SN_Value
				ENDIF
				ADEL( p1 , x-1)
				ASIZE( p1 , LEN( p1 ) - 1 )
				x := x-1
				VMAX  = LEN(P1)
			ENDIF
			IF LastMark = "lower"
				IF p1[x][1] == SN_Value
					ExprValue := lower(p1[x][2] )
					p1[x][2] := exprvalue
				ENDIF
				IF p1[x][1] == SN_Variable
					myvalue = RT_VarValue ( p1[x][2] )
					ExprValue := lower(myvalue)
					p1[x][2] := exprvalue
					p1[x][1] := SN_Value
				ENDIF
				ADEL( p1 , x-1)
				ASIZE( p1 , LEN( p1 ) - 1 )
				x := x-1
				VMAX  = LEN(P1)
			ENDIF
			IF LastMark = "replicate"
				IF p1[x][1] == SN_Value
					IF p1[x-2][1] == SN_Value
						Exprvalue = REPLICATE( p1[x][2] , val(p1[x-2][2]) )
						p1[x-2][2] := exprvalue
					ENDIF
					IF p1[x-2][1] == SN_Variable
						myvalue = RT_VarValue ( p1[x-2][2] )
						Exprvalue = REPLICATE( p1[x][2] , val(myvalue) )
						p1[x-2][2] := exprvalue
						p1[x-2][1] := SN_Value
					ENDIF
				ENDIF
				IF p1[x][1] == SN_Variable
					myvalue = RT_VarValue ( p1[x][2] )
					IF p1[x-2][1] == SN_Value
						Exprvalue = REPLICATE( myvalue , val(p1[x-2][2]) )
						p1[x-2][2] := exprvalue
						p1[x][1] := SN_Value
					ENDIF
					IF p1[x-2][1] == SN_Variable
						myvalue2 = RT_VarValue ( p1[x-2][2] )
						Exprvalue = REPLICATE( myvalue , val(myvalue2) )
						p1[x-2][2] := exprvalue
						p1[x-2][1] := SN_Value
					ENDIF
				ENDIF
				ADEL( p1 , x)
				ASIZE( p1 , LEN( p1 ) - 1 )
				ADEL( p1 , x-1)
				ASIZE( p1 , LEN( p1 ) - 1 )
				x := x-2
				VMAX  = LEN(P1)
			ENDIF
			IF LastMark = "inside"
				IF p1[x][1] == SN_Value
					IF p1[x-2][1] == SN_Value
						ExprValue = SUBSTR(p1[x][2],val(p1[x-2][2]),1)
						p1[x-2][2] := exprvalue
					ENDIF
					IF p1[x-2][1] == SN_Variable
						myvalue = RT_VarValue ( p1[x-2][2] )
						ExprValue = SUBSTR(p1[x][2],val(myvalue),1)
						p1[x-2][2] := exprvalue
						p1[x-2][1] := SN_Value
					ENDIF
				ENDIF
				IF p1[x][1] == SN_Variable
					myvalue = RT_VarValue ( p1[x][2] )
					IF p1[x-2][1] == SN_Value
						ExprValue = SUBSTR(myvalue,val(p1[x-2][2]),1)
						p1[x-2][2] := exprvalue
						p1[x][1] := SN_Value
					ENDIF
					IF p1[x-2][1] == SN_Variable
						myvalue2 = RT_VarValue ( p1[x-2][2] )
						ExprValue = SUBSTR(myvalue,val(myvalue2),1)
						p1[x-2][2] := exprvalue
						p1[x-2][1] := SN_Value
					ENDIF
				ENDIF
				ADEL( p1 , x)
				ASIZE( p1 , LEN( p1 ) - 1 )
				ADEL( p1 , x-1)
				ASIZE( p1 , LEN( p1 ) - 1 )
				x := x-2
				VMAX  = LEN(P1)
			ENDIF
			IF LastMark = "at"
				IF p1[x][1] == SN_Value
					IF p1[x-2][1] == SN_Value
						ExprValue = AT(p1[x-2][2],p1[x][2])
						ExprValue = STR ( ExprValue )
						ExprValue = ALLTRIM ( ExprValue )
						p1[x-2][2] := exprvalue
					ENDIF
					IF p1[x-2][1] == SN_Variable
						myvalue = RT_VarValue ( p1[x-2][2] )
						ExprValue = AT(myvalue,p1[x][2])
						ExprValue = STR ( ExprValue )
						ExprValue = ALLTRIM ( ExprValue )
						p1[x-2][2] := exprvalue
						p1[x-2][1] := SN_Value	
					ENDIF
				ENDIF
				IF p1[x][1] == SN_Variable
					myvalue = RT_VarValue ( p1[x][2] )
					IF p1[x-2][1] == SN_Value
						ExprValue = AT(p1[x-2][2],myvalue)
						ExprValue = STR ( ExprValue )
						ExprValue = ALLTRIM ( ExprValue )
						p1[x-2][2] := exprvalue
						p1[x][1] := SN_Value
					ENDIF
					IF p1[x-2][1] == SN_Variable
						myvalue2 = RT_VarValue ( p1[x-2][2] )
						ExprValue = AT(myvalue2,myvalue)
						ExprValue = STR ( ExprValue )
						ExprValue = ALLTRIM ( ExprValue )
						p1[x-2][2] := exprvalue
						p1[x-2][1] := SN_Value
					ENDIF
				ENDIF
				ADEL( p1 , x)
				ASIZE( p1 , LEN( p1 ) - 1 )
				ADEL( p1 , x-1)
				ASIZE( p1 , LEN( p1 ) - 1 )
				x := x-2
				VMAX  = LEN(P1)
			ENDIF
			IF LastMark = "substr"
				IF p1[x][1] == SN_Value
					IF p1[x-2][1] == SN_Value
						mypara := p1[x-2][2]
						mypos = AT(":",mypara)
						mystr1 = Left(mypara,mypos-1)
						mystr2 = SUBSTR(mypara,mypos+1,len(mypara)-mypos)
						ExprValue = SUBSTR(p1[x][2],val(mystr1),val(mystr2))
						p1[x-2][2] := exprvalue
					ENDIF
					IF p1[x-2][1] == SN_Variable
						myvalue = RT_VarValue ( p1[x-2][2] )
						mypara := myvalue
						mypos = AT(":",mypara)
						mystr1 = Left(mypara,mypos-1)
						mystr2 = SUBSTR(mypara,mypos+1,len(mypara)-mypos)
						ExprValue = SUBSTR(p1[x][2],val(mystr1),val(mystr2))
						p1[x-2][2] := exprvalue
						p1[x-2][1] := SN_Value
					ENDIF
				ENDIF
				IF p1[x][1] == SN_Variable
					myvalue = RT_VarValue ( p1[x][2] )
					IF p1[x-2][1] == SN_Value
						mypara := p1[x-2][2]
						mypos = AT(":",mypara)
						mystr1 = Left(mypara,mypos-1)
						mystr2 = SUBSTR(mypara,mypos+1,len(mypara)-mypos)
						ExprValue = SUBSTR(myvalue,val(mystr1),val(mystr2))
						p1[x-2][2] := exprvalue
						p1[x][1] := SN_Value
					ENDIF
					IF p1[x-2][1] == SN_Variable
						myvalue2 = RT_VarValue ( p1[x-2][2] )
						mypara := myvalue2
						mypos = AT(":",mypara)
						mystr1 = Left(mypara,mypos-1)
						mystr2 = SUBSTR(mypara,mypos+1,len(mypara)-mypos)
						ExprValue = SUBSTR(myvalue,val(mystr1),val(mystr2))
						p1[x-2][2] := exprvalue
						p1[x-2][1] := SN_Value
					ENDIF
				ENDIF
				ADEL( p1 , x)
				ASIZE( p1 , LEN( p1 ) - 1 )
				ADEL( p1 , x-1)
				ASIZE( p1 , LEN( p1 ) - 1 )
				x := x-2
				VMAX  = LEN(P1)
			ENDIF
			IF LastMark = "transform"
				IF p1[x][1] == SN_Value
					IF p1[x-2][1] == SN_Value
						mypara := p1[x-2][2]
						mypos = AT(":",mypara)
						mystr1 = Left(mypara,mypos-1)
						mystr2 = SUBSTR(mypara,mypos+1,len(mypara)-mypos)
						ExprValue = STRTRAN(p1[x][2],mystr1,mystr2)
						p1[x-2][2] := exprvalue
					ENDIF
					IF p1[x-2][1] == SN_Variable
						myvalue = RT_VarValue ( p1[x-2][2] )
						mypara := myvalue
						mypos = AT(":",mypara)
						mystr1 = Left(mypara,mypos-1)
						mystr2 = SUBSTR(mypara,mypos+1,len(mypara)-mypos)
						ExprValue = STRTRAN(p1[x][2],mystr1,mystr2)
						p1[x-2][2] := exprvalue
						p1[x-2][1] := SN_Value
					ENDIF
				ENDIF
				IF p1[x][1] == SN_Variable
					myvalue = RT_VarValue ( p1[x][2] )
					IF p1[x-2][1] == SN_Value
						mypara := p1[x-2][2]
						mypos = AT(":",mypara)
						mystr1 = Left(mypara,mypos-1)
						mystr2 = SUBSTR(mypara,mypos+1,len(mypara)-mypos)
						ExprValue = STRTRAN(myvalue,mystr1,mystr2)
						p1[x-2][2] := exprvalue
						p1[x][1] := SN_Value
					ENDIF
					IF p1[x-2][1] == SN_Variable
						myvalue2 = RT_VarValue ( p1[x-2][2] )
						mypara := myvalue2
						mypos = AT(":",mypara)
						mystr1 = Left(mypara,mypos-1)
						mystr2 = SUBSTR(mypara,mypos+1,len(mypara)-mypos)
						ExprValue = STRTRAN(myvalue,mystr1,mystr2)
						p1[x-2][2] := exprvalue
						p1[x-2][1] := SN_Value
					ENDIF
				ENDIF
				ADEL( p1 , x)
				ASIZE( p1 , LEN( p1 ) - 1 )
				ADEL( p1 , x-1)
				ASIZE( p1 , LEN( p1 ) - 1 )
				x := x-2
				VMAX  = LEN(P1)
			ENDIF
		Next
	ENDIF
	RECOVER
	DO RTE_AddError WITH 10
	mymax  = LEN(p1)
	mystr := ""
	FOR x = 1 TO mymax STEP 1
		mystr := mystr + "  " + alltrim(p1[x][1])
	Next
	AADD( RTE_Message , " Expression Analysis: " + mystr)
	mystr := ""
	FOR x = 1 TO mymax STEP 1
		mypre := " "
		myend := " "
		IF p1[x][1] = SN_Value
			mypre := "("
			myend := ")"
		ENDIF
		IF p1[x][1] = SN_Variable
			mypre := "["
			myend := "]"
		ENDIF
		mystr := mystr + "  " + mypre + alltrim(p1[x][2]) + myend
	Next
	AADD( RTE_Message , " Expression : " + mystr)
	DO RTE_Check
	END SEQUENCE
Return ExprValue


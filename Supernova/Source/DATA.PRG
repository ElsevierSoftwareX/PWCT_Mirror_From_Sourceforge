*---------------------------------------------------------------------------*
* Time : 08:14:22    Date : 05/10/2010
*---------------------------------------------------------------------------*
* Programming without coding technology 1.6 (Ready) [2006-2010]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
Function DATA
Public True,False 
True = .T. 
False = .F. 
 Details :
 * (Noun) *
Parameters SP1,SP2,SP3,SP4,SP5,SP6,SP7,SP8
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance RT_Data                       
	VetoUnit :

Resistance R_DATA_15speed1() address Code Unit : Circuits\Main\Main\RT_Data


Return 

* Resistance Code Unit : Circuits\Main\Main\RT_Data
Resistance R_DATA_15speed1() code
Proc RT_Data
Local x,vmax1,vmax2,VNAME,VARPOS,VARValue,oldproc,oldlevel
IF myopcode = 2000
DO RT_ReadExpr WITH myopdata[1],"LeftSide"
DO RT_ReadExpr WITH myopdata[2],"RightSide"
Vmax1  = LEN(RT_LS_DATA)
LastMark := "SumString"
IF vmax1>=1
FOR x = 1 TO VMAX1 STEP 1
IF RT_LS_DATA[x][1] == "MergeOperator"
LastMark := lower(alltrim(RT_LS_DATA[x][2]))
Loop
ENDIF
IF LastMark = "\"
IF RT_LS_DATA[x][1] == "Value"
IF RT_LS_DATA[x-2][1] == "Variable"
RT_LS_DATA[x-2][2] := alltrim(alltrim(RT_LS_DATA[x-2][2]) + "-" + alltrim(RT_LS_DATA[x][2]))
ENDIF
ENDIF
IF RT_LS_DATA[x][1] == "Variable"
myvalue = RT_VarValue ( RT_LS_DATA[x][2] )
IF RT_LS_DATA[x-2][1] == "Variable"
RT_LS_DATA[x-2][2] := alltrim(alltrim(RT_LS_DATA[x-2][2]) + "-" + alltrim(myvalue))
ENDIF
ENDIF
ADEL( RT_LS_DATA , x)
ASIZE( RT_LS_DATA , LEN( RT_LS_DATA ) - 1 )
ADEL( RT_LS_DATA , x-1)
ASIZE( RT_LS_DATA , LEN( RT_LS_DATA ) - 1 )
x := x-2
VMAX1  = LEN(RT_LS_DATA)
ENDIF
LastMark := "SumString"
Next
ExprValue := ""
FOR x = 1 TO vmax1 STEP 1
vname := RT_LS_DATA[X]
IF VNAME[1] = "Variable"
VARVALUE = RT_GetExprValue ( RT_RS_DATA )
VARPOS = RT_VARPOS ( VNAME[2] )
RT_DATA[VarPos][2] := VarValue
IF vname[2] = "ÇáÎÑÌ"
VARPOS = RT_VARPOS ( "output" )
RT_DATA[VarPos][2] := VarValue
ENDIF
DO RT_CallInstructions WITH LOWER(ALLTRIM(vname[2]))+" " + lower(alltrim(varvalue))
Return 0
ENDIF
Next
ENDIF
Return 0
ENDIF
IF myopcode = 2001
DO RT_ReadExpr WITH myopdata[1],"RightSide"
VARVALUE = RT_GetExprValue ( RT_RS_DATA )
set decimals to &varvalue
ENDIF
IF myopcode = 2002
DO EVENTS
Return 0
ENDIF
IF myopcode = 2003
DO RT_ReadExpr WITH myopdata[1],"LeftSide"
DO RT_ReadExpr WITH myopdata[2],"RightSide"
Vmax1  = LEN(RT_LS_DATA)
LastMark := "SumString"
IF vmax1>=1
FOR x = 1 TO VMAX1 STEP 1
IF RT_LS_DATA[x][1] == "MergeOperator"
LastMark := lower(alltrim(RT_LS_DATA[x][2]))
Loop
ENDIF
IF LastMark = "\"
IF RT_LS_DATA[x][1] == "Value"
IF RT_LS_DATA[x-2][1] == "Variable"
RT_LS_DATA[x-2][2] := alltrim(alltrim(RT_LS_DATA[x-2][2]) + "-" + alltrim(RT_LS_DATA[x][2]))
ENDIF
ENDIF
IF RT_LS_DATA[x][1] == "Variable"
myvalue = RT_VarValue ( RT_LS_DATA[x][2] )
IF RT_LS_DATA[x-2][1] == "Variable"
RT_LS_DATA[x-2][2] := alltrim(alltrim(RT_LS_DATA[x-2][2]) + "-" + alltrim(myvalue))
ENDIF
ENDIF
ADEL( RT_LS_DATA , x)
ASIZE( RT_LS_DATA , LEN( RT_LS_DATA ) - 1 )
ADEL( RT_LS_DATA , x-1)
ASIZE( RT_LS_DATA , LEN( RT_LS_DATA ) - 1 )
x := x-2
VMAX1  = LEN(RT_LS_DATA)
ENDIF
LastMark := "SumString"
Next
ExprValue := ""
FOR x = 1 TO vmax1 STEP 1
vname := RT_LS_DATA[X]
IF VNAME[1] = "Variable"
VARVALUE = RT_GetExprValue ( RT_RS_DATA )
VARPOS = RT_VARPOS ( VNAME[2] )
RT_DATA[VarPos][2] := VarValue
IF vname[2] = "ÇáÎÑÌ"
VARPOS = RT_VARPOS ( "output" )
RT_DATA[VarPos][2] := VarValue
ENDIF
Return 0
ENDIF
Next
ENDIF
Return 0
ENDIF
IF myopcode = 2004
VARVALUE = RT_VarValue ( alltrim(lower(MYOPDATA[1])) )
VARPOS = RT_VARPOS ( alltrim(lower(MYOPDATA[1])) )
RT_DATA[VarPos][2] := ALLTRIM(STR(VAL(VarValue) + 1))
IF myopdata[1] = "ÇáÎÑÌ"
VARVALUE = RT_VarValue ( "output" )
VARPOS = RT_VARPOS ( "output" )
RT_DATA[VarPos][2] := ALLTRIM(STR(VAL(VarValue) + 1))
ENDIF
Return 0
ENDIF
IF myopcode = 2005
VARVALUE = RT_VarValue ( alltrim(lower(MYOPDATA[1])) )
VARPOS = RT_VARPOS ( alltrim(lower(MYOPDATA[1])) )
RT_DATA[VarPos][2] := ALLTRIM(STR(VAL(VarValue) - 1))
IF myopdata[1] = "ÇáÎÑÌ"
VARVALUE = RT_VarValue ( "output" )
VARPOS = RT_VARPOS ( "output" )
RT_DATA[VarPos][2] := ALLTRIM(STR(VAL(VarValue) - 1))
ENDIF
Return 0
ENDIF
Return Nil
Function  RT_VARPOS ( P1 )
Local X,VMAX
VMAX  = LEN(RT_DATA)
FOR x = 1 TO VMAX STEP 1
IF RT_DATA[X][1] == P1
Return X
ENDIF
Next
AADD( RT_DATA , {P1,"NULL"})
MYRET  = LEN(RT_DATA)
Return MYRET
Function  RT_VARVALUE ( P1 )
Local X,VMAX
VMAX  = LEN(RT_DATA)
P1 = LOWER ( P1 )
P1 = ALLTRIM ( P1 )
FOR x = 1 TO VMAX STEP 1
IF RT_DATA[X][1] == P1
Return RT_DATA[X][2]
ENDIF
Next
AADD( RT_DATA , {P1,"NULL"})
MyRet := "NULL"
Return MYRET
Function  RT_GetExprValue ( P1 )
Local X,VMAX,ExprValue,LastMark,ScanSW,themark
VMAX  = LEN(P1)
ExprValue := ""
LastMark := "SumString"
scansw := {False,False,False,False,False,False,False,False,False}
FOR x = 1 TO VMAX STEP 1
IF p1[x][1] == "MergeOperator"
ScanSW[1] := True
Loop
ENDIF
IF p1[x][1] == "DateOperator"
ScanSW[2] := True
Loop
ENDIF
IF p1[x][1] == "MacroOperator"
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
IF p1[x][1] == "StringOperator"
ScanSW[9] := True
Loop
ENDIF
Next
TRY
IF ScanSW[1] = True
FOR x = 1 TO VMAX STEP 1
IF p1[x][1] == "MergeOperator"
LastMark := lower(alltrim(p1[x][2]))
Loop
ENDIF
IF LastMark = "\"
IF p1[x][1] == "Value"
IF p1[x-2][1] == "Variable"
p1[x-2][2] := alltrim(p1[x-2][2]) + "-" + alltrim(p1[x][2])
ENDIF
ENDIF
IF p1[x][1] == "Variable"
myvalue = RT_VarValue ( p1[x][2] )
IF p1[x-2][1] == "Variable"
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
LastMark := "SumString"
Next
ExprValue := ""
ENDIF
IF ScanSW[2] = True
FOR x = 1 TO vmax STEP 1
IF p1[x][1] == "DateOperator"
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
p1[x][1] := "Value"
p1[x][2] := exprvalue
Loop
ENDIF
Next
ExprValue := ""
LastMark := "SumString"
ENDIF
IF ScanSW[3] = True
FOR x = 1 TO vmax STEP 1
IF p1[x][1] == "MacroOperator"
LastMark := lower(alltrim(p1[x][2]))
Loop
ENDIF
IF LastMark = "getvariable"
IF p1[x][1] == "Value"
ExprValue := alltrim(p1[x][2])
ExprValue = RT_VarValue ( ExprValue )
p1[x][2] := exprvalue
ENDIF
IF p1[x][1] == "Variable"
myvalue = RT_VarValue ( p1[x][2] )
ExprValue := alltrim(myvalue)
ExprValue = RT_VarValue ( ExprValue )
p1[x][2] := exprvalue
p1[x][1] := "Value"
ENDIF
ADEL( p1 , x-1)
ASIZE( p1 , LEN( p1 ) - 1 )
x := x-1
VMAX  = LEN(P1)
ENDIF
IF LastMark = "dofunction"
DO RT_SetVarValue WITH "[output]","NULL"
IF p1[x][1] == "Value"
ExprValue := alltrim(p1[x][2])
DO RT_CallInstructions WITH LOWER(ALLTRIM(ExprValue))
ExprValue = RT_VarValue ( "output" )
p1[x][2] := exprvalue
ENDIF
IF p1[x][1] == "Variable"
myvalue = RT_VarValue ( p1[x][2] )
ExprValue := alltrim(myvalue)
DO RT_CallInstructions WITH LOWER(ALLTRIM(ExprValue))
ExprValue = RT_VarValue ( "output" )
p1[x][2] := exprvalue
p1[x][1] := "Value"
ENDIF
ADEL( p1 , x-1)
ASIZE( p1 , LEN( p1 ) - 1 )
x := x-1
VMAX  = LEN(P1)
ENDIF
LastMark := "SumString"
Next
ExprValue := ""
ENDIF
IF ScanSW[4] = True
FOR x = 1 TO VMAX STEP 1
IF p1[x][1] == "MathOperator" .OR. p1[x][1] == "LogicalOperator"
LastMark := lower(alltrim(p1[x][2]))
Loop
ENDIF
IF LastMark = "*" .or. LastMark = "X" .OR. LastMark = "x"
IF p1[x][1] == "Value"
IF p1[x-2][1] == "Value"
ExprValue := alltrim(str(val(p1[x-2][2]) * val(p1[x][2])))
p1[x-2][2] := exprvalue
ENDIF
IF p1[x-2][1] == "Variable"
myvalue = RT_VarValue ( p1[x-2][2] )
IF myvalue = "NULL"
myvalue := "1"
ENDIF
ExprValue := alltrim(str(val(myvalue) * val(p1[x][2])))
p1[x-2][2] := exprvalue
p1[x-2][1] := "Value"
ENDIF
ENDIF
IF p1[x][1] == "Variable"
myvalue = RT_VarValue ( p1[x][2] )
IF myvalue = "NULL"
myvalue := "1"
ENDIF
IF p1[x-2][1] == "Value"
ExprValue := alltrim(str(val(p1[x-2][2]) * val(myvalue)))
p1[x-2][2] := exprvalue
p1[x][1] := "Value"
ENDIF
IF p1[x-2][1] == "Variable"
myvalue2 = RT_VarValue ( p1[x-2][2] )
IF myvalue2 = "NULL"
myvalue2 := "1"
ENDIF
ExprValue := alltrim(str(val(myvalue2) * val(myvalue)))
p1[x-2][2] := exprvalue
p1[x-2][1] := "Value"
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
IF p1[x][1] == "Value"
IF p1[x-2][1] == "Value"
ExprValue := alltrim(str(val(p1[x-2][2]) / val(p1[x][2])))
p1[x-2][2] := exprvalue
ENDIF
IF p1[x-2][1] == "Variable"
myvalue = RT_VarValue ( p1[x-2][2] )
IF myvalue = "NULL"
myvalue := "1"
ENDIF
ExprValue := alltrim(str(val(myvalue) / val(p1[x][2])))
p1[x-2][2] := exprvalue
p1[x-2][1] := "Value"
ENDIF
ENDIF
IF p1[x][1] == "Variable"
myvalue = RT_VarValue ( p1[x][2] )
IF myvalue = "NULL"
myvalue := "1"
ENDIF
IF p1[x-2][1] == "Value"
ExprValue := alltrim(str(val(p1[x-2][2]) / val(myvalue)))
p1[x-2][2] := exprvalue
p1[x][1] := "Value"
ENDIF
IF p1[x-2][1] == "Variable"
myvalue2 = RT_VarValue ( p1[x-2][2] )
IF myvalue2 = "NULL"
myvalue2 := "1"
ENDIF
ExprValue := alltrim(str(val(myvalue2) / val(myvalue)))
p1[x-2][2] := exprvalue
p1[x-2][1] := "Value"
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
IF p1[x][1] == "Value"
IF p1[x-2][1] == "Value"
ExprValue := alltrim(str(val(p1[x-2][2]) % val(p1[x][2])))
p1[x-2][2] := exprvalue
ENDIF
IF p1[x-2][1] == "Variable"
myvalue = RT_VarValue ( p1[x-2][2] )
ExprValue := alltrim(str(val(myvalue) % val(p1[x][2])))
p1[x-2][2] := exprvalue
p1[x-2][1] := "Value"
ENDIF
ENDIF
IF p1[x][1] == "Variable"
myvalue = RT_VarValue ( p1[x][2] )
IF p1[x-2][1] == "Value"
ExprValue := alltrim(str(val(p1[x-2][2]) % val(myvalue)))
p1[x-2][2] := exprvalue
p1[x][1] := "Value"
ENDIF
IF p1[x-2][1] == "Variable"
myvalue2 = RT_VarValue ( p1[x-2][2] )
ExprValue := alltrim(str(val(myvalue2) % val(myvalue)))
p1[x-2][2] := exprvalue
p1[x-2][1] := "Value"
ENDIF
ENDIF
ADEL( p1 , x)
ASIZE( p1 , LEN( p1 ) - 1 )
ADEL( p1 , x-1)
ASIZE( p1 , LEN( p1 ) - 1 )
x := x-2
VMAX  = LEN(P1)
ENDIF
LastMark := "SumString"
Next
ExprValue := ""
ENDIF
IF ScanSW[5] = True
FOR x = 1 TO VMAX STEP 1
IF p1[x][1] == "MathOperator" .OR. p1[x][1] == "LogicalOperator"
LastMark := lower(alltrim(p1[x][2]))
Loop
ENDIF
IF LastMark = "+"
IF p1[x][1] == "Value"
IF p1[x-2][1] == "Value"
ExprValue := alltrim(str(val(p1[x-2][2]) + val(p1[x][2])))
p1[x-2][2] := exprvalue
ENDIF
IF p1[x-2][1] == "Variable"
myvalue = RT_VarValue ( p1[x-2][2] )
ExprValue := alltrim(str(val(myvalue) + val(p1[x][2])))
p1[x-2][2] := exprvalue
p1[x-2][1] := "Value"
ENDIF
ENDIF
IF p1[x][1] == "Variable"
myvalue = RT_VarValue ( p1[x][2] )
IF p1[x-2][1] == "Value"
ExprValue := alltrim(str(val(p1[x-2][2]) + val(myvalue)))
p1[x-2][2] := exprvalue
p1[x][1] := "Value"
ENDIF
IF p1[x-2][1] == "Variable"
myvalue2 = RT_VarValue ( p1[x-2][2] )
ExprValue := alltrim(str(val(myvalue2) + val(myvalue)))
p1[x-2][2] := exprvalue
p1[x-2][1] := "Value"
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
IF p1[x][1] == "Value"
IF p1[x-2][1] == "Value"
ExprValue := alltrim(str(val(p1[x-2][2]) - val(p1[x][2])))
p1[x-2][2] := exprvalue
ENDIF
IF p1[x-2][1] == "Variable"
myvalue = RT_VarValue ( p1[x-2][2] )
ExprValue := alltrim(str(val(myvalue) - val(p1[x][2])))
p1[x-2][2] := exprvalue
p1[x-2][1] := "Value"
ENDIF
ENDIF
IF p1[x][1] == "Variable"
myvalue = RT_VarValue ( p1[x][2] )
IF p1[x-2][1] == "Value"
ExprValue := alltrim(str(val(p1[x-2][2]) - val(myvalue)))
p1[x-2][2] := exprvalue
p1[x][1] := "Value"
ENDIF
IF p1[x-2][1] == "Variable"
myvalue2 = RT_VarValue ( p1[x-2][2] )
ExprValue := alltrim(str(val(myvalue2) - val(myvalue)))
p1[x-2][2] := exprvalue
p1[x-2][1] := "Value"
ENDIF
ENDIF
ADEL( p1 , x)
ASIZE( p1 , LEN( p1 ) - 1 )
ADEL( p1 , x-1)
ASIZE( p1 , LEN( p1 ) - 1 )
x := x-2
VMAX  = LEN(P1)
ENDIF
LastMark := "SumString"
Next
ExprValue := ""
ENDIF
IF ScanSW[6] = True
FOR x = 1 TO VMAX STEP 1
IF p1[x][1] == "MathOperator" .OR. p1[x][1] == "LogicalOperator"
LastMark := lower(alltrim(p1[x][2]))
Loop
ENDIF
IF LastMark == ">"
IF p1[x][1] == "Value"
IF p1[x-2][1] == "Value"
IF val(p1[x-2][2]) > val(p1[x][2])
ExprValue := "True"
ELSE
ExprValue := "False"
ENDIF
p1[x-2][2] := exprvalue
ENDIF
IF p1[x-2][1] == "Variable"
myvalue = RT_VarValue ( p1[x-2][2] )
IF val(myvalue) > val(p1[x][2])
ExprValue := "True"
ELSE
ExprValue := "False"
ENDIF
p1[x-2][2] := exprvalue
p1[x-2][1] := "Value"
ENDIF
ENDIF
IF p1[x][1] == "Variable"
myvalue = RT_VarValue ( p1[x][2] )
IF p1[x-2][1] == "Value"
IF val(p1[x-2][2]) > val(myvalue)
ExprValue := "True"
ELSE
ExprValue := "False"
ENDIF
p1[x-2][2] := exprvalue
p1[x][1] := "Value"
ENDIF
IF p1[x-2][1] == "Variable"
myvalue2 = RT_VarValue ( p1[x-2][2] )
IF val(myvalue2) > val(myvalue)
ExprValue := "True"
ELSE
ExprValue := "False"
ENDIF
p1[x-2][2] := exprvalue
p1[x-2][1] := "Value"
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
IF p1[x][1] == "Value"
IF p1[x-2][1] == "Value"
IF val(p1[x-2][2]) < val(p1[x][2])
ExprValue := "True"
ELSE
ExprValue := "False"
ENDIF
p1[x-2][2] := exprvalue
ENDIF
IF p1[x-2][1] == "Variable"
myvalue = RT_VarValue ( p1[x-2][2] )
IF val(myvalue) < val(p1[x][2])
ExprValue := "True"
ELSE
ExprValue := "False"
ENDIF
p1[x-2][2] := exprvalue
p1[x-2][1] := "Value"
ENDIF
ENDIF
IF p1[x][1] == "Variable"
myvalue = RT_VarValue ( p1[x][2] )
IF p1[x-2][1] == "Value"
IF val(p1[x-2][2]) < val(myvalue)
ExprValue := "True"
ELSE
ExprValue := "False"
ENDIF
p1[x-2][2] := exprvalue
p1[x][1] := "Value"
ENDIF
IF p1[x-2][1] == "Variable"
myvalue2 = RT_VarValue ( p1[x-2][2] )
IF val(myvalue2) < val(myvalue)
ExprValue := "True"
ELSE
ExprValue := "False"
ENDIF
p1[x-2][2] := exprvalue
p1[x-2][1] := "Value"
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
IF p1[x][1] == "Value"
IF p1[x-2][1] == "Value"
IF val(p1[x-2][2]) >= val(p1[x][2])
ExprValue := "True"
ELSE
ExprValue := "False"
ENDIF
p1[x-2][2] := exprvalue
ENDIF
IF p1[x-2][1] == "Variable"
myvalue = RT_VarValue ( p1[x-2][2] )
IF val(myvalue) >= val(p1[x][2])
ExprValue := "True"
ELSE
ExprValue := "False"
ENDIF
p1[x-2][2] := exprvalue
p1[x-2][1] := "Value"
ENDIF
ENDIF
IF p1[x][1] == "Variable"
myvalue = RT_VarValue ( p1[x][2] )
IF p1[x-2][1] == "Value"
IF val(p1[x-2][2]) >= val(myvalue)
ExprValue := "True"
ELSE
ExprValue := "False"
ENDIF
p1[x-2][2] := exprvalue
p1[x][1] := "Value"
ENDIF
IF p1[x-2][1] == "Variable"
myvalue2 = RT_VarValue ( p1[x-2][2] )
IF val(myvalue2) >= val(myvalue)
ExprValue := "True"
ELSE
ExprValue := "False"
ENDIF
p1[x-2][2] := exprvalue
p1[x-2][1] := "Value"
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
IF p1[x][1] == "Value"
IF p1[x-2][1] == "Value"
IF val(p1[x-2][2]) <= val(p1[x][2])
ExprValue := "True"
ELSE
ExprValue := "False"
ENDIF
p1[x-2][2] := exprvalue
ENDIF
IF p1[x-2][1] == "Variable"
myvalue = RT_VarValue ( p1[x-2][2] )
IF val(myvalue) <= val(p1[x][2])
ExprValue := "True"
ELSE
ExprValue := "False"
ENDIF
p1[x-2][2] := exprvalue
p1[x-2][1] := "Value"
ENDIF
ENDIF
IF p1[x][1] == "Variable"
myvalue = RT_VarValue ( p1[x][2] )
IF p1[x-2][1] == "Value"
IF val(p1[x-2][2]) <= val(myvalue)
ExprValue := "True"
ELSE
ExprValue := "False"
ENDIF
p1[x-2][2] := exprvalue
p1[x][1] := "Value"
ENDIF
IF p1[x-2][1] == "Variable"
myvalue2 = RT_VarValue ( p1[x-2][2] )
IF val(myvalue2) <= val(myvalue)
ExprValue := "True"
ELSE
ExprValue := "False"
ENDIF
p1[x-2][2] := exprvalue
p1[x-2][1] := "Value"
ENDIF
ENDIF
ADEL( p1 , x)
ASIZE( p1 , LEN( p1 ) - 1 )
ADEL( p1 , x-1)
ASIZE( p1 , LEN( p1 ) - 1 )
x := x-2
VMAX  = LEN(P1)
ENDIF
LastMark := "SumString"
Next
ExprValue := ""
ENDIF
IF ScanSW[7] = True
FOR x = 1 TO VMAX STEP 1
IF p1[x][1] == "MathOperator" .OR. p1[x][1] == "LogicalOperator"
LastMark := lower(alltrim(p1[x][2]))
Loop
ENDIF
IF LastMark == "isequal" .or. LastMark == "=="
IF p1[x][1] == "Value"
IF p1[x-2][1] == "Value"
IF p1[x-2][2] == p1[x][2]
ExprValue := "True"
ELSE
ExprValue := "False"
ENDIF
p1[x-2][2] := exprvalue
ENDIF
IF p1[x-2][1] == "Variable"
myvalue = RT_VarValue ( p1[x-2][2] )
IF myvalue == p1[x][2]
ExprValue := "True"
ELSE
ExprValue := "False"
ENDIF
p1[x-2][2] := exprvalue
p1[x-2][1] := "Value"
ENDIF
ENDIF
IF p1[x][1] == "Variable"
myvalue = RT_VarValue ( p1[x][2] )
IF p1[x-2][1] == "Value"
IF p1[x-2][2] == myvalue
ExprValue := "True"
ELSE
ExprValue := "False"
ENDIF
p1[x-2][2] := exprvalue
p1[x][1] := "Value"
ENDIF
IF p1[x-2][1] == "Variable"
myvalue2 = RT_VarValue ( p1[x-2][2] )
IF myvalue2 == myvalue
ExprValue := "True"
ELSE
ExprValue := "False"
ENDIF
p1[x-2][2] := exprvalue
p1[x-2][1] := "Value"
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
IF p1[x][1] == "Value"
IF p1[x-2][1] == "Value"
IF p1[x-2][2] != p1[x][2]
ExprValue := "True"
ELSE
ExprValue := "False"
ENDIF
p1[x-2][2] := exprvalue
ENDIF
IF p1[x-2][1] == "Variable"
myvalue = RT_VarValue ( p1[x-2][2] )
IF myvalue != p1[x][2]
ExprValue := "True"
ELSE
ExprValue := "False"
ENDIF
p1[x-2][2] := exprvalue
p1[x-2][1] := "Value"
ENDIF
ENDIF
IF p1[x][1] == "Variable"
myvalue = RT_VarValue ( p1[x][2] )
IF p1[x-2][1] == "Value"
IF p1[x-2][2] != myvalue
ExprValue := "True"
ELSE
ExprValue := "False"
ENDIF
p1[x-2][2] := exprvalue
p1[x][1] := "Value"
ENDIF
IF p1[x-2][1] == "Variable"
myvalue2 = RT_VarValue ( p1[x-2][2] )
IF myvalue2 != myvalue
ExprValue := "True"
ELSE
ExprValue := "False"
ENDIF
p1[x-2][2] := exprvalue
p1[x-2][1] := "Value"
ENDIF
ENDIF
ADEL( p1 , x)
ASIZE( p1 , LEN( p1 ) - 1 )
ADEL( p1 , x-1)
ASIZE( p1 , LEN( p1 ) - 1 )
x := x-2
VMAX  = LEN(P1)
ENDIF
LastMark := "SumString"
Next
ExprValue := ""
ENDIF
IF ScanSW[8] = True
FOR x = 1 TO VMAX STEP 1
IF p1[x][1] == "MathOperator" .OR. p1[x][1] == "LogicalOperator"
LastMark := lower(alltrim(p1[x][2]))
Loop
ENDIF
IF LastMark == "not"
IF p1[x][1] == "Value"
IF p1[x][2] = "False"
ExprValue := "True"
ELSE
ExprValue := "False"
ENDIF
p1[x][2] := exprvalue
ENDIF
IF p1[x][1] == "Variable"
myvalue = RT_VarValue ( p1[x][2] )
IF myvalue = "False"
ExprValue := "True"
ELSE
ExprValue := "False"
ENDIF
p1[x][2] := exprvalue
p1[x][1] := "Value"
ENDIF
ADEL( p1 , x-1)
ASIZE( p1 , LEN( p1 ) - 1 )
x := x-1
VMAX  = LEN(P1)
ENDIF
LastMark := "SumString"
Next
ExprValue := ""
ENDIF
FOR x = 1 TO VMAX STEP 1
IF p1[x][1] == "MathOperator" .OR. p1[x][1] == "LogicalOperator"
LastMark := lower(alltrim(p1[x][2]))
Loop
ENDIF
IF LastMark = "and"
IF p1[x][1] == "Value"
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
IF p1[x][1] == "Variable"
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
IF p1[x][1] == "Value"
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
IF p1[x][1] == "Variable"
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
IF LastMark = "SumString"
IF p1[x][1] == "Value"
ExprValue := ExprValue + p1[x][2]
IF .not. x = 1
IF p1[x-1][1] = "Variable" .or. p1[x-1][1] = "Value"
ADEL( p1 , x-1)
ASIZE( p1 , LEN( p1 ) - 1 )
x := x-1
VMAX  = LEN(P1)
p1[x][1] := "Value"
p1[x][2] := exprvalue
ENDIF
ENDIF
ENDIF
IF p1[x][1] == "Variable"
myvalue = RT_VarValue ( p1[x][2] )
ExprValue := ExprValue + myvalue
IF .not. x = 1
IF p1[x-1][1] = "Variable" .or. p1[x-1][1] = "Value"
ADEL( p1 , x-1)
ASIZE( p1 , LEN( p1 ) - 1 )
x := x-1
VMAX  = LEN(P1)
p1[x][2] := exprvalue
p1[x][1] := "Value"
ENDIF
ENDIF
ENDIF
ENDIF
Next
IF ScanSW[9] = True
FOR x = 1 TO vmax STEP 1
IF p1[x][1] == "StringOperator"
LastMark := lower(alltrim(p1[x][2]))
Loop
ENDIF
IF LastMark = "len"
IF p1[x][1] == "Value"
ExprValue := alltrim(str(len(p1[x][2]) ))
p1[x][2] := exprvalue
ENDIF
IF p1[x][1] == "Variable"
myvalue = RT_VarValue ( p1[x][2] )
ExprValue := alltrim(str(len(myvalue)))
p1[x][2] := exprvalue
p1[x][1] := "Value"
ENDIF
ADEL( p1 , x-1)
ASIZE( p1 , LEN( p1 ) - 1 )
x := x-1
VMAX  = LEN(P1)
ENDIF
IF LastMark = "left"
IF p1[x][1] == "Value"
IF p1[x-2][1] == "Value"
Exprvalue = Left(p1[x][2],val(p1[x-2][2]))
p1[x-2][2] := exprvalue
ENDIF
IF p1[x-2][1] == "Variable"
myvalue = RT_VarValue ( p1[x-2][2] )
Exprvalue = Left(p1[x][2],val(myvalue))
p1[x-2][2] := exprvalue
p1[x-2][1] := "Value"
ENDIF
ENDIF
IF p1[x][1] == "Variable"
myvalue = RT_VarValue ( p1[x][2] )
IF p1[x-2][1] == "Value"
Exprvalue = Left(myvalue,val(p1[x-2][2]))
p1[x-2][2] := exprvalue
p1[x][1] := "Value"
ENDIF
IF p1[x-2][1] == "Variable"
myvalue2 = RT_VarValue ( p1[x-2][2] )
Exprvalue = Left(myvalue,val(myvalue2))
p1[x-2][2] := exprvalue
p1[x-2][1] := "Value"
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
IF p1[x][1] == "Value"
IF p1[x-2][1] == "Value"
Exprvalue = Right(p1[x][2],val(p1[x-2][2]))
p1[x-2][2] := exprvalue
ENDIF
IF p1[x-2][1] == "Variable"
myvalue = RT_VarValue ( p1[x-2][2] )
Exprvalue = Right(p1[x][2],val(myvalue))
p1[x-2][2] := exprvalue
p1[x-2][1] := "Value"
ENDIF
ENDIF
IF p1[x][1] == "Variable"
myvalue = RT_VarValue ( p1[x][2] )
IF p1[x-2][1] == "Value"
Exprvalue = Right(myvalue,val(p1[x-2][2]))
p1[x-2][2] := exprvalue
p1[x][1] := "Value"
ENDIF
IF p1[x-2][1] == "Variable"
myvalue2 = RT_VarValue ( p1[x-2][2] )
Exprvalue = Right(myvalue,val(myvalue2))
p1[x-2][2] := exprvalue
p1[x-2][1] := "Value"
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
IF p1[x][1] == "Value"
ExprValue := alltrim(p1[x][2] )
p1[x][2] := exprvalue
ENDIF
IF p1[x][1] == "Variable"
myvalue = RT_VarValue ( p1[x][2] )
ExprValue := alltrim(myvalue)
p1[x][2] := exprvalue
p1[x][1] := "Value"
ENDIF
ADEL( p1 , x-1)
ASIZE( p1 , LEN( p1 ) - 1 )
x := x-1
VMAX  = LEN(P1)
ENDIF
IF LastMark = "rtrim"
IF p1[x][1] == "Value"
ExprValue := rtrim(p1[x][2] )
p1[x][2] := exprvalue
ENDIF
IF p1[x][1] == "Variable"
myvalue = RT_VarValue ( p1[x][2] )
ExprValue := rtrim(myvalue)
p1[x][2] := exprvalue
p1[x][1] := "Value"
ENDIF
ADEL( p1 , x-1)
ASIZE( p1 , LEN( p1 ) - 1 )
x := x-1
VMAX  = LEN(P1)
ENDIF
IF LastMark = "ltrim"
IF p1[x][1] == "Value"
ExprValue := ltrim(p1[x][2] )
p1[x][2] := exprvalue
ENDIF
IF p1[x][1] == "Variable"
myvalue = RT_VarValue ( p1[x][2] )
ExprValue := ltrim(myvalue)
p1[x][2] := exprvalue
p1[x][1] := "Value"
ENDIF
ADEL( p1 , x-1)
ASIZE( p1 , LEN( p1 ) - 1 )
x := x-1
VMAX  = LEN(P1)
ENDIF
IF LastMark = "upper"
IF p1[x][1] == "Value"
ExprValue := upper(p1[x][2] )
p1[x][2] := exprvalue
ENDIF
IF p1[x][1] == "Variable"
myvalue = RT_VarValue ( p1[x][2] )
ExprValue := upper(myvalue)
p1[x][2] := exprvalue
p1[x][1] := "Value"
ENDIF
ADEL( p1 , x-1)
ASIZE( p1 , LEN( p1 ) - 1 )
x := x-1
VMAX  = LEN(P1)
ENDIF
IF LastMark = "lower"
IF p1[x][1] == "Value"
ExprValue := lower(p1[x][2] )
p1[x][2] := exprvalue
ENDIF
IF p1[x][1] == "Variable"
myvalue = RT_VarValue ( p1[x][2] )
ExprValue := lower(myvalue)
p1[x][2] := exprvalue
p1[x][1] := "Value"
ENDIF
ADEL( p1 , x-1)
ASIZE( p1 , LEN( p1 ) - 1 )
x := x-1
VMAX  = LEN(P1)
ENDIF
IF LastMark = "replicate"
IF p1[x][1] == "Value"
IF p1[x-2][1] == "Value"
Exprvalue = REPLICATE( p1[x][2] , val(p1[x-2][2]) )
p1[x-2][2] := exprvalue
ENDIF
IF p1[x-2][1] == "Variable"
myvalue = RT_VarValue ( p1[x-2][2] )
Exprvalue = REPLICATE( p1[x][2] , val(myvalue) )
p1[x-2][2] := exprvalue
p1[x-2][1] := "Value"
ENDIF
ENDIF
IF p1[x][1] == "Variable"
myvalue = RT_VarValue ( p1[x][2] )
IF p1[x-2][1] == "Value"
Exprvalue = REPLICATE( myvalue , val(p1[x-2][2]) )
p1[x-2][2] := exprvalue
p1[x][1] := "Value"
ENDIF
IF p1[x-2][1] == "Variable"
myvalue2 = RT_VarValue ( p1[x-2][2] )
Exprvalue = REPLICATE( myvalue , val(myvalue2) )
p1[x-2][2] := exprvalue
p1[x-2][1] := "Value"
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
IF p1[x][1] == "Value"
IF p1[x-2][1] == "Value"
ExprValue = SUBSTR(p1[x][2],val(p1[x-2][2]),1)
p1[x-2][2] := exprvalue
ENDIF
IF p1[x-2][1] == "Variable"
myvalue = RT_VarValue ( p1[x-2][2] )
ExprValue = SUBSTR(p1[x][2],val(myvalue),1)
p1[x-2][2] := exprvalue
p1[x-2][1] := "Value"
ENDIF
ENDIF
IF p1[x][1] == "Variable"
myvalue = RT_VarValue ( p1[x][2] )
IF p1[x-2][1] == "Value"
ExprValue = SUBSTR(myvalue,val(p1[x-2][2]),1)
p1[x-2][2] := exprvalue
p1[x][1] := "Value"
ENDIF
IF p1[x-2][1] == "Variable"
myvalue2 = RT_VarValue ( p1[x-2][2] )
ExprValue = SUBSTR(myvalue,val(myvalue2),1)
p1[x-2][2] := exprvalue
p1[x-2][1] := "Value"
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
IF p1[x][1] == "Value"
IF p1[x-2][1] == "Value"
ExprValue = AT(p1[x-2][2],p1[x][2])
ExprValue = STR ( ExprValue )
ExprValue = ALLTRIM ( ExprValue )
p1[x-2][2] := exprvalue
ENDIF
IF p1[x-2][1] == "Variable"
myvalue = RT_VarValue ( p1[x-2][2] )
ExprValue = AT(myvalue,p1[x][2])
ExprValue = STR ( ExprValue )
ExprValue = ALLTRIM ( ExprValue )
p1[x-2][2] := exprvalue
p1[x-2][1] := "Value"
ENDIF
ENDIF
IF p1[x][1] == "Variable"
myvalue = RT_VarValue ( p1[x][2] )
IF p1[x-2][1] == "Value"
ExprValue = AT(p1[x-2][2],myvalue)
ExprValue = STR ( ExprValue )
ExprValue = ALLTRIM ( ExprValue )
p1[x-2][2] := exprvalue
p1[x][1] := "Value"
ENDIF
IF p1[x-2][1] == "Variable"
myvalue2 = RT_VarValue ( p1[x-2][2] )
ExprValue = AT(myvalue2,myvalue)
ExprValue = STR ( ExprValue )
ExprValue = ALLTRIM ( ExprValue )
p1[x-2][2] := exprvalue
p1[x-2][1] := "Value"
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
IF p1[x][1] == "Value"
IF p1[x-2][1] == "Value"
mypara := p1[x-2][2]
mypos = AT(":",mypara)
mystr1 = Left(mypara,mypos-1)
mystr2 = SUBSTR(mypara,mypos+1,len(mypara)-mypos)
ExprValue = SUBSTR(p1[x][2],val(mystr1),val(mystr2))
p1[x-2][2] := exprvalue
ENDIF
IF p1[x-2][1] == "Variable"
myvalue = RT_VarValue ( p1[x-2][2] )
mypara := myvalue
mypos = AT(":",mypara)
mystr1 = Left(mypara,mypos-1)
mystr2 = SUBSTR(mypara,mypos+1,len(mypara)-mypos)
ExprValue = SUBSTR(p1[x][2],val(mystr1),val(mystr2))
p1[x-2][2] := exprvalue
p1[x-2][1] := "Value"
ENDIF
ENDIF
IF p1[x][1] == "Variable"
myvalue = RT_VarValue ( p1[x][2] )
IF p1[x-2][1] == "Value"
mypara := p1[x-2][2]
mypos = AT(":",mypara)
mystr1 = Left(mypara,mypos-1)
mystr2 = SUBSTR(mypara,mypos+1,len(mypara)-mypos)
ExprValue = SUBSTR(myvalue,val(mystr1),val(mystr2))
p1[x-2][2] := exprvalue
p1[x][1] := "Value"
ENDIF
IF p1[x-2][1] == "Variable"
myvalue2 = RT_VarValue ( p1[x-2][2] )
mypara := myvalue2
mypos = AT(":",mypara)
mystr1 = Left(mypara,mypos-1)
mystr2 = SUBSTR(mypara,mypos+1,len(mypara)-mypos)
ExprValue = SUBSTR(myvalue,val(mystr1),val(mystr2))
p1[x-2][2] := exprvalue
p1[x-2][1] := "Value"
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
IF p1[x][1] == "Value"
IF p1[x-2][1] == "Value"
mypara := p1[x-2][2]
mypos = AT(":",mypara)
mystr1 = Left(mypara,mypos-1)
mystr2 = SUBSTR(mypara,mypos+1,len(mypara)-mypos)
ExprValue = STRTRAN(p1[x][2],mystr1,mystr2)
p1[x-2][2] := exprvalue
ENDIF
IF p1[x-2][1] == "Variable"
myvalue = RT_VarValue ( p1[x-2][2] )
mypara := myvalue
mypos = AT(":",mypara)
mystr1 = Left(mypara,mypos-1)
mystr2 = SUBSTR(mypara,mypos+1,len(mypara)-mypos)
ExprValue = STRTRAN(p1[x][2],mystr1,mystr2)
p1[x-2][2] := exprvalue
p1[x-2][1] := "Value"
ENDIF
ENDIF
IF p1[x][1] == "Variable"
myvalue = RT_VarValue ( p1[x][2] )
IF p1[x-2][1] == "Value"
mypara := p1[x-2][2]
mypos = AT(":",mypara)
mystr1 = Left(mypara,mypos-1)
mystr2 = SUBSTR(mypara,mypos+1,len(mypara)-mypos)
ExprValue = STRTRAN(myvalue,mystr1,mystr2)
p1[x-2][2] := exprvalue
p1[x][1] := "Value"
ENDIF
IF p1[x-2][1] == "Variable"
myvalue2 = RT_VarValue ( p1[x-2][2] )
mypara := myvalue2
mypos = AT(":",mypara)
mystr1 = Left(mypara,mypos-1)
mystr2 = SUBSTR(mypara,mypos+1,len(mypara)-mypos)
ExprValue = STRTRAN(myvalue,mystr1,mystr2)
p1[x-2][2] := exprvalue
p1[x-2][1] := "Value"
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
CATCH cError
cError := cError:description
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
IF p1[x][1] = "Value"
mypre := "("
myend := ")"
ENDIF
IF p1[x][1] = "Variable"
mypre := "["
myend := "]"
ENDIF
mystr := mystr + "  " + mypre + alltrim(p1[x][2]) + myend
Next
AADD( RTE_Message , " Expression : " + mystr)
DO RTE_Check
END
Return ExprValue
Proc RT_SETVARVALUE( P1,P2 )
Local VARPOS,VARVALUE
DO RT_ReadExpr WITH p1,"LeftSide"
Vmax1  = LEN(RT_LS_DATA)
IF vmax1>=1
LastMark := "SumString"
FOR x = 1 TO VMAX1 STEP 1
IF RT_LS_DATA[x][1] == "MergeOperator"
LastMark := lower(alltrim(RT_LS_DATA[x][2]))
Loop
ENDIF
IF LastMark = "\"
IF RT_LS_DATA[x][1] == "Value"
IF RT_LS_DATA[x-2][1] == "Variable"
RT_LS_DATA[x-2][2] := alltrim(alltrim(RT_LS_DATA[x-2][2]) + "-" + alltrim(RT_LS_DATA[x][2]))
ENDIF
ENDIF
IF RT_LS_DATA[x][1] == "Variable"
myvalue = RT_VarValue ( RT_LS_DATA[x][2] )
IF RT_LS_DATA[x-2][1] == "Variable"
RT_LS_DATA[x-2][2] := alltrim(alltrim(RT_LS_DATA[x-2][2]) + "-" + alltrim(myvalue))
ENDIF
ENDIF
ADEL( RT_LS_DATA , x)
ASIZE( RT_LS_DATA , LEN( RT_LS_DATA ) - 1 )
ADEL( RT_LS_DATA , x-1)
ASIZE( RT_LS_DATA , LEN( RT_LS_DATA ) - 1 )
x := x-2
VMAX1  = LEN(RT_LS_DATA)
ENDIF
LastMark := "SumString"
Next
ExprValue := ""
FOR x = 1 TO vmax1 STEP 1
vname := RT_LS_DATA[X]
IF VNAME[1] = "Variable"
VARPOS = RT_VARPOS ( VNAME[2] )
RT_DATA[VarPos][2] := p2
ENDIF
Next
ENDIF
Return Nil
Proc RT_ReadExpr( P1,P2 )
Local x,mymax,myret,expstack,expchar,exptoken,expmode,expstackend,v1,v2,mymax2,x2
mymax  = LEN(RT_ExprParse)
IF mymax > 0
FOR x = 1 TO mymax STEP 1
IF alltrim(RT_ExprParse[x][1]) == alltrim(p1)
IF P2 = "LeftSide"
RT_LS_DATA := {}
mymax2  = LEN(RT_ExprParse[x][2])
IF mymax2 > 0
FOR x2 = 1 TO mymax2 STEP 1
v1 := "" + RT_ExprParse[X][2][x2][1]
v2 := "" + RT_ExprParse[X][2][x2][2]
AADD( RT_LS_DATA , {v1,v2})
Next
ENDIF
ENDIF
IF P2 = "RightSide"
RT_RS_DATA := {}
mymax2  = LEN(RT_ExprParse[x][2])
IF mymax2 > 0
FOR x2 = 1 TO mymax2 STEP 1
v1 := "" + RT_ExprParse[X][2][x2][1]
v2 := "" + RT_ExprParse[X][2][x2][2]
AADD( RT_RS_DATA , {v1,v2})
Next
ENDIF
ENDIF
Return 0
ENDIF
Next
ENDIF
mymax  = LEN(p1)
myret := "NULL"
expchar := ""
expstack := "S"
exptoken := ""
expmode := "normal"
expstackend := "S"
IF P2 = "LeftSide"
RT_LS_DATA := {}
ENDIF
IF P2 = "RightSide"
RT_RS_DATA := {}
ENDIF
FOR x = 1 TO mymax STEP 1
expchar = SUBSTR(p1,x,1)
IF expmode = "normal"
expchar = ALLTRIM ( expchar )
expchar = LOWER ( expchar )
IF ExpChar = "(" .or. ExpChar = "|"
expmode := "ListenToValue"
exptoken := ""
expstack := expstack + expchar
expstackend := expchar
Loop
ENDIF
IF ExpChar = "+" .or. ExpChar = "-" .or. ExpChar = "*" .or. ExpChar = "x" .or. ExpChar = "X" .or. ExpChar = "/" .or. ExpChar = "%"
exptoken := ""
expstack := expstack + expchar
expstackend := Expchar
IF P2 = "LeftSide"
AADD( RT_LS_DATA , {"MathOperator",ExpChar})
ENDIF
IF P2 = "RightSide"
AADD( RT_RS_DATA , {"MathOperator",ExpChar})
ENDIF
Loop
ENDIF
IF ExpChar = "["
expmode := "ListenToVariable"
exptoken := ""
expstack := expstack + "["
expstackend := "["
Loop
ENDIF
exptoken := exptoken + expchar
IF exptoken = "Çæ"
exptoken := "or"
ENDIF
IF exptoken = "æ"
exptoken := "and"
ENDIF
IF exptoken = "ãÔ"
exptoken := "not"
ENDIF
IF exptoken = "ÊÓÇæì"
exptoken := "isequal"
ENDIF
IF exptoken = "Øæá"
exptoken := "len"
ENDIF
IF exptoken = "ÍÑæÝßÈíÑÉ"
exptoken := "upper"
ENDIF
IF exptoken = "ÍÑæÝÕÛíÑÉ"
exptoken := "lower"
ENDIF
IF exptoken = "ãÑÇÊßÑÑ"
exptoken := "replicate"
ENDIF
IF exptoken = "ÍÑæÝíÓÇÑ"
exptoken := "left"
ENDIF
IF exptoken = "ÍÑæÝíãíä"
exptoken := "right"
ENDIF
IF exptoken = "ÍÑÝÏÇÎá"
exptoken := "inside"
ENDIF
IF exptoken = "ÞÕßáÇáãÓÇÝÇÊ"
exptoken := "alltrim"
ENDIF
IF exptoken = "ÞÕÇáãÓÇÝÇÊíãíä"
exptoken := "rtrim"
ENDIF
IF exptoken = "ÞÕÇáãÓÇÝÇÊíÓÇÑ"
exptoken := "ltrim"
ENDIF
IF exptoken = "ÍÑæÝÏÇÎá"
exptoken := "substr"
ENDIF
IF exptoken = "ãÇåìÈÏÇíÊåÇÝì"
exptoken := "at"
ENDIF
IF exptoken = "Íæá"
exptoken := "transform"
ENDIF
IF exptoken = "ÇáÊÇÑíÎ"
exptoken := "thedate"
ENDIF
IF exptoken = "ÇáæÞÊ"
exptoken := "thetime"
ENDIF
IF exptoken = "ÇáËæÇäì"
exptoken := "theseconds"
ENDIF
IF exptoken = "Çáíæã"
exptoken := "theday"
ENDIF
IF exptoken = "ÇáÔåÑ"
exptoken := "themonth"
ENDIF
IF exptoken = "äÝÐÇáÏÇáÉ"
exptoken := "dofunction"
ENDIF
IF exptoken = "ÇáãÊÛíÑ"
exptoken := "getvariable"
ENDIF
IF lower(alltrim(ExpToken)) = "and" .or. lower(alltrim(ExpToken)) = "or"  .or. lower(alltrim(ExpToken)) = "not"
expstack := expstack + exptoken
expstackend := lower(alltrim(Exptoken))
IF P2 = "LeftSide"
AADD( RT_LS_DATA , {"LogicalOperator",ExpToken})
ENDIF
IF P2 = "RightSide"
AADD( RT_RS_DATA , {"LogicalOperator",ExpToken})
ENDIF
exptoken := ""
Loop
ENDIF
Tempvar := lower(alltrim(ExpToken))
IF tempvar = "isequal" .or. tempvar = "==" .or. tempvar = "!="
expstack := expstack + exptoken
expstackend := lower(alltrim(Exptoken))
IF P2 = "LeftSide"
AADD( RT_LS_DATA , {"LogicalOperator",ExpToken})
ENDIF
IF P2 = "RightSide"
AADD( RT_RS_DATA , {"LogicalOperator",ExpToken})
ENDIF
exptoken := ""
Loop
ENDIF
IF tempvar = ">" .or. tempvar = "<"
expstack := expstack + exptoken
expstackend := lower(alltrim(Exptoken))
IF P2 = "LeftSide"
AADD( RT_LS_DATA , {"LogicalOperator",ExpToken})
ENDIF
IF P2 = "RightSide"
AADD( RT_RS_DATA , {"LogicalOperator",ExpToken})
ENDIF
exptoken := ""
Loop
ENDIF
IF tempvar = "=" .and. ( expstackend = "<" .or. expstackend = ">" )
expstack := expstack + exptoken
expstackend := expstackend + lower(alltrim(Exptoken))
IF P2 = "LeftSide"
ADEL( RT_LS_DATA , LEN(RT_LS_DATA))
ASIZE( RT_LS_DATA , LEN( RT_LS_DATA ) - 1 )
AADD( RT_LS_DATA , {"LogicalOperator",Expstackend})
ENDIF
IF P2 = "RightSide"
ADEL( RT_RS_DATA , LEN(RT_RS_DATA))
ASIZE( RT_RS_DATA , LEN( RT_RS_DATA ) - 1 )
AADD( RT_RS_DATA , {"LogicalOperator",ExpStackEnd})
ENDIF
exptoken := ""
Loop
ENDIF
IF tempvar = "len" .or. tempvar = "upper" .or. tempvar = "lower" .or. tempvar = "replicate"
expstack := expstack + exptoken
expstackend := lower(alltrim(Exptoken))
IF P2 = "LeftSide"
AADD( RT_LS_DATA , {"StringOperator",ExpToken})
ENDIF
IF P2 = "RightSide"
AADD( RT_RS_DATA , {"StringOperator",ExpToken})
ENDIF
exptoken := ""
Loop
ENDIF
IF tempvar = "left" .or. tempvar = "right" .or. tempvar = "inside"
expstack := expstack + exptoken
expstackend := lower(alltrim(Exptoken))
IF P2 = "LeftSide"
AADD( RT_LS_DATA , {"StringOperator",ExpToken})
ENDIF
IF P2 = "RightSide"
AADD( RT_RS_DATA , {"StringOperator",ExpToken})
ENDIF
exptoken := ""
Loop
ENDIF
IF tempvar = "alltrim" .or. tempvar = "rtrim" .or. tempvar = "ltrim"
expstack := expstack + exptoken
expstackend := lower(alltrim(Exptoken))
IF P2 = "LeftSide"
AADD( RT_LS_DATA , {"StringOperator",ExpToken})
ENDIF
IF P2 = "RightSide"
AADD( RT_RS_DATA , {"StringOperator",ExpToken})
ENDIF
exptoken := ""
Loop
ENDIF
IF tempvar = "substr" .or. tempvar = "at" .or. tempvar = "transform"
expstack := expstack + exptoken
expstackend := lower(alltrim(Exptoken))
IF P2 = "LeftSide"
AADD( RT_LS_DATA , {"StringOperator",ExpToken})
ENDIF
IF P2 = "RightSide"
AADD( RT_RS_DATA , {"StringOperator",ExpToken})
ENDIF
exptoken := ""
Loop
ENDIF
IF tempvar = "thedate" .or. tempvar = "thetime" .or. tempvar = "theseconds" .or. tempvar = "theday" .or. tempvar = "themonth"
expstack := expstack + exptoken
expstackend := lower(alltrim(Exptoken))
IF P2 = "LeftSide"
AADD( RT_LS_DATA , {"DateOperator",ExpToken})
ENDIF
IF P2 = "RightSide"
AADD( RT_RS_DATA , {"DateOperator",ExpToken})
ENDIF
exptoken := ""
Loop
ENDIF
IF tempvar = "dofunction" .or. tempvar = "getvariable"
expstack := expstack + exptoken
expstackend := lower(alltrim(Exptoken))
IF P2 = "LeftSide"
AADD( RT_LS_DATA , {"MacroOperator",ExpToken})
ENDIF
IF P2 = "RightSide"
AADD( RT_RS_DATA , {"MacroOperator",ExpToken})
ENDIF
exptoken := ""
Loop
ENDIF
IF tempvar = "\"
expstack := expstack + exptoken
expstackend := lower(alltrim(Exptoken))
IF P2 = "LeftSide"
AADD( RT_LS_DATA , {"MergeOperator",ExpToken})
ENDIF
IF P2 = "RightSide"
AADD( RT_RS_DATA , {"MergeOperator",ExpToken})
ENDIF
exptoken := ""
Loop
ENDIF
ENDIF
IF expmode = "ListenToVariable"
IF ExpChar = "]"
IF expstackend = "["
expstack := expstack + "]"
expstackend := "S"
IF P2 = "LeftSide"
AADD( RT_LS_DATA , {"Variable",alltrim(lower(ExpToken))})
ENDIF
IF P2 = "RightSide"
AADD( RT_RS_DATA , {"Variable",alltrim(lower(ExpToken))})
ENDIF
ExpToken := ""
expmode := "normal"
Loop
ENDIF
ENDIF
exptoken := exptoken + expchar
Loop
ENDIF
IF expmode = "ListenToValue"
IF ( expstackend = "(" .and. expchar = ")" ) .or. (ExpStackEnd = "|" .and. ExpChar = "|" )
expstack := expstack + ")"
expstackend := "S"
IF P2 = "LeftSide"
AADD( RT_LS_DATA , {"Value",ExpToken})
ENDIF
IF P2 = "RightSide"
AADD( RT_RS_DATA , {"Value",ExpToken})
ENDIF
ExpToken := ""
expmode := "normal"
Loop
ENDIF
exptoken := exptoken + expchar
Loop
ENDIF
Next
IF expmode = "ListenToVariable"
DO RTE_AddError WITH 7
AADD( RTE_Message , " Expression : " + p1)
DO RTE_Check
ENDIF
IF expmode = "ListenToValue"
DO RTE_AddError WITH 8
AADD( RTE_Message , " Expression : " + p1)
DO RTE_Check
ENDIF
IF .not. empty(alltrim(exptoken))
DO RTE_AddError WITH 9
AADD( RTE_Message , " Expression : " + p1)
AADD( RTE_Message , " What is ? : " + exptoken)
DO RTE_Check
ENDIF
AADD( RT_ExprParse , {p1,{}})
mymax  = LEN(RT_ExprParse)
IF P2 = "LeftSide"
mymax2  = LEN(RT_LS_DATA)
IF mymax2 > 0
FOR x = 1 TO Mymax2 STEP 1
v1 := "" + RT_LS_DATA[X][1]
v2 := "" + RT_LS_DATA[X][2]
AADD( RT_ExprParse[mymax][2] , {v1,v2})
Next
ENDIF
ENDIF
IF P2 = "RightSide"
mymax2  = LEN(RT_RS_DATA)
IF mymax2 > 0
FOR x = 1 TO Mymax2 STEP 1
v1 := "" + RT_RS_DATA[X][1]
v2 := "" + RT_RS_DATA[X][2]
AADD( RT_ExprParse[mymax][2] , {v1,v2})
Next
ENDIF
ENDIF
Return Nil


End Of Resistance

*-------------------------------------------------------------------*

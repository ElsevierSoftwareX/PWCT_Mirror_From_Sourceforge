*---------------------------------------------------------------------------*
* Time : 12:03:25    Date : 09/15/2011
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2011]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
*---------------------------------------------------------------------------*
* Compilers                   : Borland C/C++ & Harbour
* GUI Framework               : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
Function CONTROLSTRUCTURE
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
					Resistance RT_ControlStructure           
	VetoUnit :

Resistance R_CONTROLSTRUCTURE_18smart1() address Code Unit : Circuits\Main\Main\RT_ControlStructure


Return 

* Resistance Code Unit : Circuits\Main\Main\RT_ControlStructure
Resistance R_CONTROLSTRUCTURE_18smart1() code
Proc RT_ControlStructure
Local mypos,cobjname,mycounterblock,cobjfrom,cobjto,cobjstep,cforvalue,varvalue,myvalue
IF myopcode = 3000
AADD( RT_Counters , {"Name","Start","End","Step","Value"})
Return 0
ENDIF
IF myopcode = 3001
mypos  = LEN(RT_Counters)
RT_Counters[mypos][2] := MyOpData[1]
Return 0
ENDIF
IF myopcode = 3002
mypos  = LEN(RT_Counters)
RT_Counters[mypos][3] := MyOpData[1]
Return 0
ENDIF
IF myopcode = 3003
mypos  = LEN(RT_Counters)
RT_Counters[mypos][4] := MyOpData[1]
Return 0
ENDIF
IF myopcode = 3004
mypos  = LEN(RT_Counters)
RT_Counters[mypos][1] := MyOpData[1]
Return 0
ENDIF
IF myopcode = 3005
mypos  = LEN(RT_Counters)
cobjname := RT_Counters[mypos][1]
mycounterblock := "RT_DoEvent('counter','" + cobjname+"','change')"
cobjfrom := RT_Counters[mypos][2]
cobjto := RT_Counters[mypos][3]
cobjstep := RT_Counters[mypos][4]
FOR cforvalue = val(cobjfrom) TO val(cobjto) STEP val(cobjstep)
RT_Counters[mypos][5] := alltrim(str(cforvalue))
DO RT_CallInstructions WITH LOWER(ALLTRIM(cobjname))+" " + "change"
Next
Return 0
ENDIF
IF myopcode = 3006
DO RT_ReadExpr WITH myopdata[1],"RightSide"
VARVALUE = RT_GetExprValue ( RT_RS_DATA )
mypos  = LEN(RT_Counters)
RT_Counters[mypos][5] := varvalue
Return 0
ENDIF
IF myopcode = 3007
mypos  = LEN(RT_Counters)
myvalue := RT_Counters[mypos][5]
DO RT_SetVarValue WITH myopdata[1],myvalue
Return 0
ENDIF
IF myopcode = 3008
DO RT_ReadExpr WITH myopdata[1],"RightSide"
VARVALUE = RT_GetExprValue ( RT_RS_DATA )
mypos  = LEN(RT_Counters)
RT_Counters[mypos][2] := varvalue
Return 0
ENDIF
IF myopcode = 3009
mypos  = LEN(RT_Counters)
myvalue := RT_Counters[mypos][2]
DO RT_SetVarValue WITH myopdata[1],myvalue
Return 0
ENDIF
IF myopcode = 3010
DO RT_ReadExpr WITH myopdata[1],"RightSide"
VARVALUE = RT_GetExprValue ( RT_RS_DATA )
mypos  = LEN(RT_Counters)
RT_Counters[mypos][3] := varvalue
Return 0
ENDIF
IF myopcode = 3011
mypos  = LEN(RT_Counters)
myvalue := RT_Counters[mypos][3]
DO RT_SetVarValue WITH myopdata[1],myvalue
Return 0
ENDIF
IF myopcode = 3012
DO RT_ReadExpr WITH myopdata[1],"RightSide"
VARVALUE = RT_GetExprValue ( RT_RS_DATA )
mypos  = LEN(RT_Counters)
RT_Counters[mypos][4] := varvalue
Return 0
ENDIF
IF myopcode = 3013
mypos  = LEN(RT_Counters)
myvalue := RT_Counters[mypos][4]
DO RT_SetVarValue WITH myopdata[1],myvalue
Return 0
ENDIF
IF myopcode = 3014
DO RT_ReadExpr WITH myopdata[1],"RightSide"
VARVALUE = RT_GetExprValue ( RT_RS_DATA )
mypos  = LEN(RT_Counters)
RT_Counters[mypos][1] := varvalue
Return 0
ENDIF
IF myopcode = 3015
mypos  = LEN(RT_Counters)
myvalue := RT_Counters[mypos][1]
DO RT_SetVarValue WITH myopdata[1],myvalue
Return 0
ENDIF
IF myopcode = 3052
DO RT_ReadExpr WITH myopdata[2],"RightSide"
VARVALUE = RT_GetExprValue ( RT_RS_DATA )
IF VarValue = "True" .or. VarValue = "1"
AADD( RT_PCStack , ProgramCounter)
AADD( RT_PCStack , myactiveproc)
myactiveproc := myopdata[1]
ENDIF
Return 0
ENDIF
IF myopcode = 3053
StackLen  = LEN(RT_PCStack)
myactiveproc := RT_PCStack[StackLen]
ADEL( RT_PCStack , StackLen)
ASIZE( RT_PCStack , LEN( RT_PCStack ) - 1 )
StackLen  = LEN(RT_PCStack)
ProgramCounter := RT_PCStack[StackLen]-1
ADEL( RT_PCStack , StackLen)
ASIZE( RT_PCStack , LEN( RT_PCStack ) - 1 )
Return 0
ENDIF
IF myopcode = 3062
DO RT_ReadExpr WITH myopdata[2],"RightSide"
VARVALUE = RT_GetExprValue ( RT_RS_DATA )
IF VarValue = "True" .or. VarValue = "1"
AADD( RT_PCStack , ProgramCounter)
AADD( RT_PCStack , myactiveproc)
myactiveproc := myopdata[1]
ENDIF
Return 0
ENDIF
IF myopcode = 3063
StackLen  = LEN(RT_PCStack)
myactiveproc := RT_PCStack[StackLen]
ADEL( RT_PCStack , StackLen)
ASIZE( RT_PCStack , LEN( RT_PCStack ) - 1 )
StackLen  = LEN(RT_PCStack)
ADEL( RT_PCStack , StackLen)
ASIZE( RT_PCStack , LEN( RT_PCStack ) - 1 )
Return 0
ENDIF
Return Nil
Proc RT_GeneralIns
IF myopcode = 4000
Execute File myopdata[1]
ENDIF
IF myopcode = 4001
DO RT_ReadExpr WITH myopdata[1],"RightSide"
VARVALUE = RT_GetExprValue ( RT_RS_DATA )
Execute File varvalue
ENDIF
IF myopcode = 4002
DO RT_ReadExpr WITH myopdata[1],"RightSide"
VARVALUE = RT_GetExprValue ( RT_RS_DATA )
DO RT_ReadExpr WITH myopdata[2],"RightSide"
VARVALUE2 = RT_GetExprValue ( RT_RS_DATA )
RPWI_TH = FCREATE(varvalue2,0)
FWRITE(RPWI_TH,varvalue)
FCLOSE(RPWI_TH)
ENDIF
IF myopcode = 4003
DO RT_ReadExpr WITH myopdata[1],"RightSide"
VARVALUE = RT_GetExprValue ( RT_RS_DATA )
TEMPSTR = MEMOREAD ( VARVALUE )
DO RT_SetVarValue WITH myopdata[2],tempstr
ENDIF
IF myopcode = 4004
GetFile := GetFile (  , ;
, ;
, ;
, ;
)
tempstr := getfile
DO RT_SetVarValue WITH myopdata[1],tempstr
ENDIF
IF myopcode = 4005
PutFile := PutFile (  , ;
, ;
, ;
, ;
)
tempstr := putfile
DO RT_SetVarValue WITH myopdata[1],tempstr
ENDIF
IF myopcode = 4006
DO RT_ReadExpr WITH myopdata[1],"RightSide"
VARVALUE = RT_GetExprValue ( RT_RS_DATA )
RT_DLLNAME := varvalue
ENDIF
IF myopcode = 4007
VARVALUE := MYOPDATA[1]
VARVALUE2 := MYOPDATA[2]
mypara = BuildParameters ( varvalue2 )
IF .NOT. MYPARA = NIL
mypara := "CALLDLL32(VARVALUE,RT_DLLNAME,"+mypara+")"
ELSE
mypara := "CALLDLL32(VARVALUE,RT_DLLNAME)"
ENDIF
mypara := &mypara
IF VALTYPE(mypara) = "N"
mypara = STR ( mypara )
mypara = ALLTRIM ( mypara )
ENDIF
IF VALTYPE(mypara) = "U"
mypara := ""
ENDIF
VARPOS = RT_VARPOS ( "output" )
RT_DATA[VarPos][2] := mypara
VARPOS = RT_VARPOS ( "«·Œ—Ã" )
RT_DATA[VarPos][2] := mypara
ENDIF
IF myopcode = 4010
DO RT_ReadExpr WITH myopdata[2],"RightSide"
VARVALUE = RT_GetExprValue ( RT_RS_DATA )
AADD( RT_COMOBJS , "NULL")
MYMAX  = LEN(RT_COMOBJS)
RT_COMOBJS[MYMAX] := TOLEAUTO():NEW( VARVALUE )
TEMPSTR = STR ( MYMAX )
TEMPSTR = ALLTRIM ( TEMPSTR )
tempstr := "SYS_COMOBJECT"+TEMPSTR
DO RT_SetVarValue WITH myopdata[1],tempstr
ENDIF
IF myopcode = 4011
DO RT_ReadExpr WITH myopdata[1],"RightSide"
VARVALUE = RT_GetExprValue ( RT_RS_DATA )
MYCHECK = Left(VARVALUE,13)
IF MYCHECK = "SYS_COMOBJECT"
VARVALUE = SUBSTR(VARVALUE,14,LEN(VARVALUE)-13)
VARVALUE = VAL ( VARVALUE )
RT_COMOBJNAME := varvalue
ENDIF
ENDIF
IF myopcode = 4012
IF RT_COMOBJNAME = 0
Return 0
ENDIF
DO RT_ReadExpr WITH myopdata[1],"RightSide"
VARVALUE = RT_GetExprValue ( RT_RS_DATA )
DO RT_ReadExpr WITH myopdata[2],"RightSide"
VARVALUE2 = RT_GetExprValue ( RT_RS_DATA )
MYCHECK = Left(VARVALUE2,13)
IF MYCHECK = "SYS_COMOBJECT"
VARVALUE2 = SUBSTR(VARVALUE2,14,LEN(VARVALUE2)-13)
VARVALUE2 = VAL ( VARVALUE2 )
VARVALUE2 := RT_COMOBJS[VARVALUE2]
ENDIF
VARVALUE := "RT_COMOBJS["+ALLTRIM(STR(RT_COMOBJNAME))+"]:"+varvalue
VARVALUE := VARVALUE + " := VARVALUE2"
&varvalue
ENDIF
IF myopcode = 4013
IF RT_COMOBJNAME = 0
Return 0
ENDIF
DO RT_ReadExpr WITH myopdata[1],"RightSide"
VARVALUE = RT_GetExprValue ( RT_RS_DATA )
varvalue2 := "RT_COMOBJS["+alltrim(Str(RT_COMOBJNAME))+"]:"+VARVALUE
varvalue2 := &varvalue2
IF VALTYPE(VARVALUE2) = "N"
VARVALUE2 = STR ( VARVALUE2 )
VARVALUE2 = ALLTRIM ( VARVALUE2 )
ENDIF
IF VALTYPE(VARVALUE2) = "U"
VARVALUE2 := ""
ENDIF
DO RT_SetVarValue WITH myopdata[2],VARVALUE2
ENDIF
IF myopcode = 4014
IF RT_COMOBJNAME = 0
Return 0
ENDIF
DO RT_ReadExpr WITH myopdata[1],"RightSide"
VARVALUE = RT_GetExprValue ( RT_RS_DATA )
VARVALUE2 := MYOPDATA[2]
mypara = BuildParameters ( varvalue2 )
IF .NOT. MYPARA = NIL
MYPARA := "RT_COMOBJS["+ALLTRIM(STR(RT_COMOBJNAME))+"]:"+ALLTRIM(VARVALUE) +"("+ MYPARA+" )"
ELSE
MYPARA := "RT_COMOBJS["+ALLTRIM(STR(RT_COMOBJNAME))+"]:"+ALLTRIM(VARVALUE) +"()"
ENDIF
MYPARA := &MYPARA
VARPOS = RT_VARPOS ( "output" )
RT_DATA[VarPos][2] := mypara
ENDIF
Return Nil
Function  BuildParameters ( varvalue2 )
Local x,mypara,mymax,vartype,varv,mypcount
mypara := ""
MYMAX = RT_VARVALUE ( VARVALUE2 )
mymax := val(mymax)
IF MYMAX = 0
Return NIL
ENDIF
mypcount := 0
FOR x = 1 TO MYMAX STEP 1
VARTYPE := VARVALUE2+"-"+ALLTRIM(sTR(X)) + "-1"
VARv := VARVALUE2+"-"+ALLTRIM(sTR(X)) + "-2"
vartype := RT_VarValue(VarType)
varv := RT_VarValue(Varv)
vartype = LOWER ( vartype )
vartype = ALLTRIM ( vartype )
IF .not. mypcount = 0
mypara := mypara + ","
ENDIF
mypcount := mypcount + 1
IF vartype = "string" .or. vartype = "Õ—Ê›"
mypara := mypara + "'" + varv + "'"
ENDIF
IF vartype = "number" .or. vartype = "—ﬁ„"
mypara := mypara + varv
ENDIF
Next
Return mypara


End Of Resistance

*-------------------------------------------------------------------*

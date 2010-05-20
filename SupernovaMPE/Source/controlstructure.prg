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
	SimpleGUI_Execute(myopdata[1])
	return 0
ENDIF
IF myopcode = 4001
	DO RT_ReadExpr WITH myopdata[1],"RightSide"
	VARVALUE = RT_GetExprValue ( RT_RS_DATA )
	SimpleGUI_Execute(varvalue)
	return 0
ENDIF
IF myopcode = 4002
	DO RT_ReadExpr WITH myopdata[1],"RightSide"
	VARVALUE = RT_GetExprValue ( RT_RS_DATA )
	DO RT_ReadExpr WITH myopdata[2],"RightSide"
	VARVALUE2 = RT_GetExprValue ( RT_RS_DATA )
	varvalue2 = alltrim(varvalue2)
	RPWI_TH = FCREATE(varvalue2,0)
	FWRITE(RPWI_TH,varvalue)
	FCLOSE(RPWI_TH)
	return 0
ENDIF
IF myopcode = 4003
	DO RT_ReadExpr WITH myopdata[1],"RightSide"
	VARVALUE = RT_GetExprValue ( RT_RS_DATA )
	varvalue = alltrim(varvalue)
	TEMPSTR = MEMOREAD ( VARVALUE )
	DO RT_SetVarValue WITH myopdata[2],tempstr
	return 0
ENDIF

IF myopcode = 4004
	tempstr := SimpleGUI_OpenFile()
	DO RT_SetVarValue WITH myopdata[1],tempstr	
	return 0
ENDIF
IF myopcode = 4005
	tempstr := SimpleGUI_SaveFile()
	DO RT_SetVarValue WITH myopdata[1],tempstr
	return 0
ENDIF
IF myopcode = 4006
   Return 0
ENDIF
IF myopcode = 4007
   Return 0
ENDIF
IF myopcode = 4010
   Return 0
ENDIF
IF myopcode = 4011
   Return 0
ENDIF
IF myopcode = 4012
   Return 0
ENDIF
IF myopcode = 4013
   Return 0
ENDIF
IF myopcode = 4014
   Return 0
ENDIF

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

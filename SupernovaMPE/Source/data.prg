#include "nova.ch"

Proc RT_Data
Local x,vmax1,vmax2,VNAME,VARPOS,VARValue,oldproc,oldlevel
Public True,False
True = .t.
False = .f.
IF myopcode = 2000
	myopdata[1] = alltrim(myopdata[1])
	myopdata[1] = strtran(myopdata[1],chr(13),"")
	myopdata[1] = strtran(myopdata[1],chr(10),"")
   myopdata[1] = strtran(myopdata[1]," ","")
   DO RT_ReadExpr WITH myopdata[1],"LeftSide"
   DO RT_ReadExpr WITH myopdata[2],"RightSide"
   Vmax1  = LEN(RT_LS_DATA)
   LastMark := SN_SumString
   IF vmax1>=1
      FOR x = 1 TO VMAX1 STEP 1
         IF RT_LS_DATA[x][1] == SN_MergeOperator
            LastMark := lower(alltrim(RT_LS_DATA[x][2]))
            Loop
         ENDIF
         IF LastMark = SN_Slash
            IF RT_LS_DATA[x][1] == SN_Value
               IF RT_LS_DATA[x-2][1] == SN_Variable
                  RT_LS_DATA[x-2][2] := alltrim(alltrim(RT_LS_DATA[x-2][2]) + "-" + alltrim(RT_LS_DATA[x][2]))
               ENDIF
            ENDIF
            IF RT_LS_DATA[x][1] == SN_Variable
               myvalue = RT_VarValue ( RT_LS_DATA[x][2] )
               IF RT_LS_DATA[x-2][1] == SN_Variable
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
         LastMark := SN_SumString
      Next
      ExprValue := ""
      FOR x = 1 TO vmax1 STEP 1
         vname := RT_LS_DATA[X]
         IF VNAME[1] = SN_Variable
            VARVALUE = RT_GetExprValue ( RT_RS_DATA )
            VARPOS = RT_VARPOS ( VNAME[2] )
            RT_DATA[VarPos][2] := VarValue
            IF vname[2] = SNLang_ArabicOutput()
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
* do windows events
IF myopcode = 2002
   SimpleGUI_DoEvents()
   //DO EVENTS
   Return 0
ENDIF
IF myopcode = 2003
   DO RT_ReadExpr WITH myopdata[1],"LeftSide"
   DO RT_ReadExpr WITH myopdata[2],"RightSide"
   Vmax1  = LEN(RT_LS_DATA)
   LastMark := SN_SumString
   IF vmax1>=1
      FOR x = 1 TO VMAX1 STEP 1
         IF RT_LS_DATA[x][1] == SN_MergeOperator
            LastMark := lower(alltrim(RT_LS_DATA[x][2]))
            Loop
         ENDIF
         IF LastMark = SN_Slash
            IF RT_LS_DATA[x][1] == SN_Value
               IF RT_LS_DATA[x-2][1] == SN_Variable
                  RT_LS_DATA[x-2][2] := alltrim(alltrim(RT_LS_DATA[x-2][2]) + "-" + alltrim(RT_LS_DATA[x][2]))
               ENDIF
            ENDIF
            IF RT_LS_DATA[x][1] == SN_Variable
               myvalue = RT_VarValue ( RT_LS_DATA[x][2] )
               IF RT_LS_DATA[x-2][1] == SN_Variable
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
         LastMark := SN_SumString
      Next
      ExprValue := ""
      FOR x = 1 TO vmax1 STEP 1
         vname := RT_LS_DATA[X]
         IF VNAME[1] = SN_Variable
            VARVALUE = RT_GetExprValue ( RT_RS_DATA )
            VARPOS = RT_VARPOS ( VNAME[2] )
            RT_DATA[VarPos][2] := VarValue
            IF vname[2] = SNLang_ArabicOutput()
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
   IF myopdata[1] = SNLang_ArabicOutput()
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
   IF myopdata[1] = SNLang_ArabicOutput()
      VARVALUE = RT_VarValue ( "output" )
      VARPOS = RT_VARPOS ( "output" )
      RT_DATA[VarPos][2] := ALLTRIM(STR(VAL(VarValue) - 1))
   ENDIF
   Return 0
ENDIF
Return Nil


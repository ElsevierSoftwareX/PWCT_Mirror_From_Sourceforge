#include "nova.ch"

Function  RT_VARPOS ( P1 )
	Local X,VMAX,myret
	p1 = lower(alltrim(p1))
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
	local x,myret
	p1 = lower(alltrim(p1))
	x = RT_VARPOS(P1)
	myret = RT_DATA[x][2] 
Return myret


Proc RT_SETVARVALUE( P1,P2 )
	Local VARPOS,VARVALUE
	DO RT_ReadExpr WITH p1,"LeftSide"
	Vmax1  = LEN(RT_LS_DATA)
	IF vmax1>=1
	   LastMark := SN_SumString
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
	         VARPOS = RT_VARPOS ( VNAME[2] )
	         RT_DATA[VarPos][2] := p2
	      ENDIF
	   Next
	ENDIF
Return Nil



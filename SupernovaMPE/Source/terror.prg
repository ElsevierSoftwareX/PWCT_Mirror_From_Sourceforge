Proc RTE_Load
	Public RTE_Errors,RTE_ControlStructureStack,RTE_Message
	RTE_ControlStructureStack := "S"
	RTE_Message := {}
	RTE_Errors := {}
	AADD( RTE_Errors , " Error Number (1) : Unexpected End IF Statement - Do IF Statement is required")
	AADD( RTE_Errors , " Error Number (2) : Unclosed Do IF Statement structure- End IF Statement is required")
	AADD( RTE_Errors , " Error Number (3) : Unexpected End While Statement - Do While Statement is required")
	AADD( RTE_Errors , " Error Number (4) : Unclosed Do While Statement structure- End While Statement is required")
	AADD( RTE_Errors , " Error Number (5) : General Syntax Error")
	AADD( RTE_Errors , " Error Number (6) : Command Error, The Grammer is TRUE but the Command is undefined")
	AADD( RTE_Errors , " Error Number (7) : Expression Error [Variable] is expected")
	AADD( RTE_Errors , " Error Number (8) : Expression Error (Value) is expected")
	AADD( RTE_Errors , " Error Number (9) : General Expression Error")
	AADD( RTE_Errors , " Error Number (10) : Expression Error, Cann't determine expression result")
	AADD( RTE_Errors , " Error Number (11) : Bad GUI Command (No Window Defined)")
	AADD( RTE_Errors , " Error Number (12) : Bad GUI Command (No Object Defined)")
	AADD( RTE_Errors , " Error Number (13) : Unexpected OK/End Function/End Procedure/End Of Instructions Statement")
	AADD( RTE_Errors , " Error Number (14) : Unclosed Procedure/.....Instructions Are/Function Statement structure")
Return Nil

Proc RTE_Update( P1 )
	Local myret
	myret := True
	IF p1 = 1
		RTE_ControlStructureStack := RTE_ControlStructureStack + "F"
	ENDIF
	IF P1 = 2
		MyOut = Right(RTE_ControlStructureStack,1)
		IF myout = "F"
			mylen  = LEN(RTE_ControlStructureStack)
			RTE_ControlStructureStack = Left(RTE_ControlStructureStack,mylen-1)
		ELSE
			myret := False
			AADD( RTE_Message , " Source code file : " + srccodefile)
			AADD( RTE_Message , " Source code line : " + alltrim(str(srccodeline)))
			AADD( RTE_Message , RTE_Errors[1])
		ENDIF
	ENDIF
	IF p1 = 3
		RTE_ControlStructureStack := RTE_ControlStructureStack + "W"
	ENDIF
	IF P1 = 4
		MyOut = Right(RTE_ControlStructureStack,1)
		IF myout = "W"
			mylen  = LEN(RTE_ControlStructureStack)
			RTE_ControlStructureStack = Left(RTE_ControlStructureStack,mylen-1)
		ELSE
			myret := False
			AADD( RTE_Message , " Source code file : " + srccodefile)
			AADD( RTE_Message , " Source code line : " + alltrim(str(srccodeline)))
			AADD( RTE_Message , RTE_Errors[3])
		ENDIF
	ENDIF
	IF p1 = 5
		RTE_ControlStructureStack := RTE_ControlStructureStack + "N"
	ENDIF
	IF P1 = 6
		MyOut = Right(RTE_ControlStructureStack,1)
		IF myout = "N"
			mylen  = LEN(RTE_ControlStructureStack)
			RTE_ControlStructureStack = Left(RTE_ControlStructureStack,mylen-1)
		ELSE
			myret := False
			AADD( RTE_Message , " Source code file : " + srccodefile)
			AADD( RTE_Message , " Source code line : " + alltrim(str(srccodeline)))
			AADD( RTE_Message , RTE_Errors[13])
		ENDIF
	ENDIF
Return myret

Proc RTE_AddError( p1 )
	AADD( RTE_Message , " Source code file : " + srccodefile)
	AADD( RTE_Message , " Source code line : " + alltrim(str(srccodeline)))
	AADD( RTE_Message , RTE_Errors[p1])
	IF p1 = 6
		AADD( RTE_Message , "Command Rule :" + mycmdrule)
		AADD( RTE_Message , "Stack : " + mycmd)
	ENDIF
	mymax  = LEN(mydata)
	IF mymax > 0
		FOR x = 1 TO mymax STEP 1
			AADD( RTE_Message , "Data : " + mydata[x])
		Next
	ENDIF
Return Nil



Proc RTE_TCheck
IF mystack == "" .and. myrule == "S" .and. mycmd == ""
ELSE
AADD( RTE_Message , " Source code file : " + srccodefile)
AADD( RTE_Message , " Source code line : " + alltrim(str(srccodeline)))
AADD( RTE_Message , RTE_Errors[5])
AADD( RTE_Message , "Rule : " + myrule)
AADD( RTE_Message , "Stack : ")
myend = MLCOUNT( myrealstack , 254 )
FOR x = 1 TO myend STEP 1
myline = MEMOLINE( myrealstack , 254 , x )
AADD( RTE_Message , myline)
Next
ENDIF
mymax  = LEN(RTE_ControlStructureStack)
FOR x = 1 TO mymax STEP 1
mychar = SUBSTR(RTE_ControlStructureStack,x,1)
IF mychar = "F"
AADD( RTE_Message , " Source code file : " + srccodefile)
AADD( RTE_Message , " Source code line : " + alltrim(str(srccodeline)))
AADD( RTE_Message , RTE_Errors[2])
ENDIF
IF mychar = "W"
AADD( RTE_Message , " Source code file : " + srccodefile)
AADD( RTE_Message , " Source code line : " + alltrim(str(srccodeline)))
AADD( RTE_Message , RTE_Errors[4])
ENDIF
IF mychar = "N"
AADD( RTE_Message , " Source code file : " + srccodefile)
AADD( RTE_Message , " Source code line : " + alltrim(str(srccodeline)))
AADD( RTE_Message , RTE_Errors[14])
ENDIF
Next
IF len(RTE_Message) > 0
	mymax  = LEN(RTE_Message)
	FOR x = 1 TO mymax STEP 1
		? RTE_Message[x] 
	Next
ENDIF
Return Nil


Proc mySyntax

	Local stackbackup,vslen
	stackbackup := mystack
	DO mySetSwitches
	myTokensMax  = LEN(myTokens)

	GOODRES = .F.
	GOTRANSFORM1 = .F.
	GOTRANSFORM2 = .F.


	vslen = len(mystack)

	FOR JVAR = 1 TO 5
		IF mySwitches[JVAR][2] = True 
			IF GOODRES = .F.
				FOR T = TOKENMAP[JVAR][2] to TOKENMAP[JVAR][3] STEP 1
					IF vslen = myTokens[T][4]
						IF mystack == myTokens[T][2]
							myRule := myRule + TOKENMAP[JVAR][1]
							myCmd := myCmd + myStack
							myStack := ""
							myRealStack := ""
							GOODRES = .T.
							if myTokens[T][3] = 1	&& worldclass = 1 , english transform
								GOTRANSFORM1 = .T.
							endif
							if myTokens[T][3] = 2	&& worldclass = 2 , Arabic token
								GOTRANSFORM2 = .T.
							endif
							Exit
						ENDIF
					ENDIF
				NEXT
				IF GOODRES = .T.
					EXIT
				ENDIF
			ENDIF
		ENDIF
	next


	IF mySwitches[6][2] = True .and. GOODRES = .F.
		vdone := false
		IF vdone = false .and. mydataflag = false .and. mychar = "."
			GOODRES = .T.
			GoTransform1 = .t. 
			myRule := myRule + "D"
			myLen  = LEN(myRealStack)
			myDataVar = SUBSTR(myRealStack,1,myLen-1)
			AADD( myData , myDataVar)
			myRealStack := ""
			myStack := ""
			vdone := true
		ENDIF
		IF vdone = false .and. mydataflag = false .and. mychar = '"'
			myLen  = LEN(myStack)
			myStack = SUBSTR(myStack,1,myLen-1)
			mydataflag := true
			mydatachar := '"'
			vdone := true
			myRealStack := ""
		ENDIF
		IF vdone = false .and. mydataflag = false .and. mychar = "'"
			myLen  = LEN(myStack)
			myStack = SUBSTR(myStack,1,myLen-1)
			mydataflag := true
			mydatachar := "'"
			vdone := true
			myRealStack := ""
		ENDIF
		IF vdone = false .and. mydataflag = true .and. mychar = mydatachar
			GOODRES = .T.
			GoTransform1 = .t. 
			myRule := myRule + "D"
			myLen  = LEN(myRealStack)
			myDataVar = SUBSTR(myRealStack,1,myLen-1)
			AADD( myData , myDataVar)
			myRealStack := ""
			myStack := ""
			mydataflag := false
			mydatachar := "."
			vdone := true
		ENDIF
	ENDIF



	
	IF GoTransform2 = .t. 
		tempvar  = LEN(myRule)
			GoTransform1 = .t. 
		myTransMax  = LEN(myTransform2)
		FOR T = 1 TO myTransmax STEP 1
			LS1 := myTransform2[T][1]
			LS2 := myTransform2[T][2]
			RS1 := myTransform2[T][3]
			RS2 := myTransform2[T][4]
			RLS1 = Right(myRule,Len(LS1))
			RLS2 := StackBackup
			IF alltrim(RLS1) == alltrim(LS1) .AND. alltrim(RLS2) = alltrim(LS2) .and. myTransform2[T][5] = 0
				myrule = Left(myrule,tempvar-len(LS1))
				myRule := myRule + RS1
				tempvar2  = LEN(myCmd)
				TempVar3  = LEN(StackBackup)
				myCmd = Left(myCmd,tempvar2-tempvar3)
				myCmd := myCmd + RS2
				stackbackup := RS2
				DO mySetSwitches
				T := 0
				myStack := ""
				myRealStack := ""
				Loop
			ENDIF
			RLS2 = Right(MYCMD,LEN(LS2))
			IF alltrim(RLS1) == alltrim(LS1) .AND. alltrim(RLS2) == alltrim(LS2) .and. myTransform2[T][5] = 1
				myrule = Left(myrule,tempvar-len(LS1))
				myRule := myRule + RS1
				myCmd := RS2
				stackbackup := RS2
				DO mySetSwitches
				mydata[len(mydata)] := LS2 + mydata[len(mydata)]
				T := 0
				Loop
			ENDIF
		Next
	ENDIF


	IF GoTransform1 = .t. 
		tempvar  = LEN(myRule)
		myTransMax  = LEN(myTransform)
		FOR T = 1 TO myTransmax STEP 1
			LS1 := myTransform[T][1]
			LS2 := myTransform[T][2]
			RS1 := myTransform[T][3]
			RS2 := myTransform[T][4]
			RLS1 = Right(myRule,Len(LS1))
			RLS2 := StackBackup
			IF alltrim(RLS1) == alltrim(LS1) .AND. alltrim(RLS2) = alltrim(LS2) .and. myTransform[T][5] = 0
				myrule = Left(myrule,tempvar-len(LS1))
				myRule := myRule + RS1
				tempvar2  = LEN(myCmd)
				TempVar3  = LEN(StackBackup)
				myCmd = Left(myCmd,tempvar2-tempvar3)
				myCmd := myCmd + RS2
				stackbackup := RS2
				DO mySetSwitches
				T := 0
				myStack := ""
				myRealStack := ""
				Loop
			ENDIF
			RLS2 = Right(MYCMD,LEN(LS2))
			IF alltrim(RLS1) == alltrim(LS1) .AND. alltrim(RLS2) == alltrim(LS2) .and. myTransform[T][5] = 1
				myrule = Left(myrule,tempvar-len(LS1))
				myRule := myRule + RS1
				myCmd := RS2
				stackbackup := RS2
				DO mySetSwitches
				mydata[len(mydata)] := LS2 + mydata[len(mydata)]
				T := 0
				Loop
			ENDIF
		Next
	ENDIF




	IF GOODRES = .T.
		MYgogen = .f.
		if myrule = "SDI"
			myfetchopstart := rulesmap[1][2]
			myfetchopend := rulesmap[1][3]
			MYgogen = .t.
		endif
		if myrule = "SDVD"
			myfetchopstart := rulesmap[2][2]
			myfetchopend := rulesmap[2][3]
			MYgogen = .t.
		endif
		if myrule = "SCAVD"
			myfetchopstart := rulesmap[3][2]
			myfetchopend := rulesmap[3][3]
			MYgogen = .t.
		endif
		if myrule = "SPVC"
			myfetchopstart := rulesmap[4][2]
			myfetchopend := rulesmap[4][3]
			MYgogen = .t.
		endif
		if myrule = "SI"
			myfetchopstart := rulesmap[5][2]
			myfetchopend := rulesmap[5][3]
			MYgogen = .t.
		endif
		if MYgogen = .t.
			myCmdRule := myRule
			myRule := "S"
			DO myCodeGen
		endif
	ENDIF
Return Nil

Proc mySetSwitches
	Local LastToken
	MyOut = Right(myRule,1)
	IF myOut = "S"
		mySwitches[1][2] := True
		mySwitches[2][2] := False
		mySwitches[3][2] := True
		mySwitches[4][2] := False
		mySwitches[5][2] := True
		mySwitches[6][2] := True
	ENDIF
	IF myOut = "P"
		mySwitches[1][2] := False
		mySwitches[2][2] := True
		mySwitches[3][2] := False
		mySwitches[4][2] := False
		mySwitches[5][2] := False
		mySwitches[6][2] := True
	ENDIF
	IF myOut = "V"
		mySwitches[1][2] := False
		mySwitches[2][2] := False
		mySwitches[3][2] := True
		mySwitches[4][2] := False
		mySwitches[5][2] := False
		mySwitches[6][2] := True
	ENDIF
	IF myOut = "C"
		mySwitches[1][2] := False
		mySwitches[2][2] := False
		mySwitches[3][2] := False
		mySwitches[4][2] := True
		mySwitches[5][2] := False
		mySwitches[6][2] := False
	ENDIF
	IF myOut = "A"
		mySwitches[1][2] := False
		mySwitches[2][2] := True
		mySwitches[3][2] := False
		mySwitches[4][2] := False
		mySwitches[5][2] := False
		mySwitches[6][2] := False
	ENDIF
	IF myOut = "D"
		mySwitches[1][2] := False
		mySwitches[2][2] := True
		mySwitches[3][2] := False
		mySwitches[4][2] := False
		mySwitches[5][2] := True
		mySwitches[6][2] := False
	ENDIF
	IF myOut = "W" .or. myOut = "F" .or. myOut = "U" .or. myOut = "T" .or. myOut = "L"
		mySwitches[1][2] := False
		mySwitches[2][2] := False
		mySwitches[3][2] := False
		mySwitches[4][2] := False
		mySwitches[5][2] := False
		mySwitches[6][2] := True
	ENDIF

	MyOut = Right(myRule,2)
	IF myOut = "PV"
		mySwitches[1][2] := False
		mySwitches[2][2] := False
		mySwitches[3][2] := True
		mySwitches[4][2] := False
		mySwitches[5][2] := False
		mySwitches[6][2] := False
	ENDIF
	IF myOut = "DV"
		mySwitches[1][2] := False
		mySwitches[2][2] := False
		mySwitches[3][2] := False
		mySwitches[4][2] := False
		mySwitches[5][2] := False
		mySwitches[6][2] := True
	ENDIF

	MyOut = Right(myRule,3)
	IF myOut = "CAV"
		mySwitches[1][2] := False
		mySwitches[2][2] := False
		mySwitches[3][2] := False
		mySwitches[4][2] := False
		mySwitches[5][2] := False
		mySwitches[6][2] := True
	ENDIF

	IF mydataflag = true
		mySwitches[1][2] := False
		mySwitches[2][2] := False
		mySwitches[3][2] := False
		mySwitches[4][2] := False
		mySwitches[5][2] := False
		mySwitches[6][2] := True
	ENDIF
Return Nil


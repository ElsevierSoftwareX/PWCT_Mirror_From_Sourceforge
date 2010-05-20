Proc myCodeGen
	local ncmdlen
	ncmdlen = len (myCmd)
	myOpMax  = LEN(myOperations)
	FOR R = myfetchopstart TO myfetchopend STEP 1
		IF myOperations[R][5] = nCmdLen
		IF myOperations[R][1] == myCmdRule
			IF myOperations[R][2] == myCmd
				myCmd := ""
				myCmdRule := ""
				AADD( myExecutable , {myOperations[R][3],myData,myopproc,myoplevel,srccodefile,srccodeline})
				myOut := True
				IF .not. myOperations[R][4] = 0
					MyOut = RTE_Update ( MyOperations[R][4] )
				ENDIF
				IF MyOut = True
					IF myOperations[R][3] = -1000
						AADD( myopprocstack , myopproc)
						myopproc := lower(alltrim(mydata[1]))
						myopproc = STRTRAN(myopproc," ","")
						myopproc = SNLang_ArabicEvents(myopproc)
					ENDIF
					IF myOperations[R][3] = -1001
						stacklen  = LEN(myopprocstack)
						myopproc := myopprocstack[stacklen]
						ADEL( myopprocstack , stacklen)
						ASIZE( myopprocstack , LEN( myopprocstack ) - 1 )
					ENDIF
					IF myOperations[R][3] = -1003
						AADD( FilesList , mydata[1])
					ENDIF
					IF myOperations[R][3] = 3050
						RT_LoopVars := RT_LoopVars + 1
						mytemparr := {}
						AADD( mytemparr , alltrim("sn_loopvar"+alltrim(str(RT_LoopVars))+"true"))
						AADD( mytemparr , mydata[1])
					AADD( myExecutable , {3052,mytemparr,myopproc,myoplevel,srccodefile,srccodeline})
						AADD( myopprocstack , myopproc)
						myopproc := alltrim("sn_loopvar"+alltrim(str(RT_LoopVars))+"true")
						AADD( RT_LoopCondition , mydata[1])
						AADD( RT_ActiveLoops , RT_LoopVars)
					ENDIF
					IF myOperations[R][3] = 3051
						mytemparr := {}
			AADD( mytemparr , alltrim("[sn_loopvar"+alltrim(str(RT_ActiveLoops[len(RT_ActiveLoops)]))+"]"))
						AADD( mytemparr , RT_LoopCondition[len(RT_LoopCondition)])
					AADD( myExecutable , {3053,mytemparr,myopproc,myoplevel,srccodefile,srccodeline})
						stacklen  = LEN(RT_LoopCondition)
						ADEL( RT_LoopCondition , stacklen)
						ASIZE( RT_LoopCondition , LEN( RT_LoopCondition ) - 1 )
						stacklen  = LEN(myopprocstack)
						myopproc := myopprocstack[stacklen]
						ADEL( myopprocstack , stacklen)
						ASIZE( myopprocstack , LEN( myopprocstack ) - 1 )
						stacklen  = LEN(RT_ActiveLoops)
						ADEL( RT_ActiveLoops , stacklen)
						ASIZE( RT_ActiveLoops , LEN( RT_ActiveLoops ) - 1 )
					ENDIF
					IF myOperations[R][3] = 3060
						RT_LoopVars := RT_LoopVars + 1
						mytemparr := {}
						AADD( mytemparr , alltrim("sn_loopvar"+alltrim(str(RT_LoopVars))+"true"))
						AADD( mytemparr , mydata[1])
					AADD( myExecutable , {3062,mytemparr,myopproc,myoplevel,srccodefile,srccodeline})
						AADD( myopprocstack , myopproc)
						myopproc := alltrim("sn_loopvar"+alltrim(str(RT_LoopVars))+"true")
						AADD( RT_LoopCondition , mydata[1])
						AADD( RT_ActiveLoops , RT_LoopVars)
					ENDIF
					IF myOperations[R][3] = 3061
						mytemparr := {}
			AADD( mytemparr , alltrim("[sn_loopvar"+alltrim(str(RT_ActiveLoops[len(RT_ActiveLoops)]))+"]"))
						AADD( mytemparr , RT_LoopCondition[len(RT_LoopCondition)])
					AADD( myExecutable , {3063,mytemparr,myopproc,myoplevel,srccodefile,srccodeline})
					stacklen  = LEN(RT_LoopCondition)
					ADEL( RT_LoopCondition , stacklen)
					ASIZE( RT_LoopCondition , LEN( RT_LoopCondition ) - 1 )
					stacklen  = LEN(myopprocstack)
					myopproc := myopprocstack[stacklen]
					ADEL( myopprocstack , stacklen)
					ASIZE( myopprocstack , LEN( myopprocstack ) - 1 )
					stacklen  = LEN(RT_ActiveLoops)
					ADEL( RT_ActiveLoops , stacklen)
					ASIZE( RT_ActiveLoops , LEN( RT_ActiveLoops ) - 1 )
					ENDIF
				ENDIF
				myData := {}
				Exit
			ENDIF
		ENDIF
		ENDIF
	Next
	IF mycmd == "" .and. mycmdrule == ""
	ELSE
		DO RTE_AddError WITH 6
	ENDIF
	myCmd := ""
	myCmdRule := ""
	myData := {}
Return Nil

Proc GenStar
	myMax  = LEN(myExecutable)
	outFile := sp1 + ".star"
	outfile = strtran(outfile,".nova","")
	outfile = strtran(outfile,".Nova","")
	outfile = strtran(outfile,".NOVA","")
	outStr := "Supernova Programming Language Object File"
	FOR R = 1 TO MyMax STEP 1
		outstr := outstr + CHR(13) + CHR(10) + "1  "
		outStr := outStr + CHR(13) + CHR(10) + "2  " + alltrim(str(myexecutable[R][1]))
		outStr := outStr + CHR(13) + CHR(10) + "3  " + myexecutable[R][3]
		outStr := outStr + CHR(13) + CHR(10) + "4  " + alltrim(str(myexecutable[R][4]))
		outStr := outStr + CHR(13) + CHR(10) + "5  " + alltrim(myexecutable[R][5])
		outStr := outStr + CHR(13) + CHR(10) + "6  " + alltrim(str(myexecutable[R][6]))
		myexedata := myexecutable[R][2]
		myMax2  = LEN(myExeDATA)
		FOR R2 = 1 TO MyMax2 STEP 1
			tempmax = MLCOUNT( myexedata[R2] , 254 )
			IF .not. tempmax = 1
				MYMAX3  = LEN(myexedata[R2])
				TEMPLINE := ""
				outstr := outstr +CHR(13)+CHR(10)
				FOR R3 = 1 TO MYMAX3 STEP 1
					myadd = SUBSTR(MYEXEDATA[R2],R3,1)
					templine := templine + myadd
					mycheck = Right(templine,1)
					IF mycheck = chr(10) .or. R3 = MYMAX3 
						IF .NOT. R3 = MYMAX3
							TEMPLINE = Left(TEMPLINE,LEN(TEMPLINE)-1)
						ENDIF
						templine := templine + "\E"+ chr(13)+chr(10)
						outstr := outstr + "7  " + templine
						templine := ""
					ENDIF
				Next
				outstr := outstr + "7  " +"\n"
			ELSE
				outStr := outStr + CHR(13) + CHR(10) + "7  " + myexedata[R2]
				outstr := outstr + "\n"
			ENDIF
		Next
	Next
	outstr = STRTRAN(outstr,chr(9),"        ")
	outstr := charxor(outstr,"Super123456789Nova")
	RPWI_TH = FCREATE(outFile,0)
	FWRITE(RPWI_TH,outStr)
	FCLOSE(RPWI_TH)
Return Nil

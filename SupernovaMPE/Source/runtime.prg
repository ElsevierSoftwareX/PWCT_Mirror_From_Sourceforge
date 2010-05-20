Proc myRuntime
Local m,myexemax,mytempproc,mytemplevel,myoldproc,oldobjscount
myExeMax  = LEN(myExecutable)
FOR m = 1 TO myExeMax STEP 1
	
   mytempproc  := MyExecutable[m][3]
   mytemplevel := MyExecutable[m][4]
   srccodefile := MyExecutable[m][5]
   srccodeline := MyExecutable[m][6]

   ProgramCounter := m
   IF lower(alltrim(mytempproc)) == lower(alltrim(myactiveproc)) .and. mytemplevel = myactivelevel
      myopcode := MyExecutable[m][1]
      myopdata := MyExecutable[m][2]
      IF myOpcode = -1002 .and. myactiveproc != myopdata[1]
         myoldproc := myactiveproc
         myactiveproc := myopdata[1]
         myactiveproc = STRTRAN(myactiveproc," ","")
         myactiveproc = LOWER ( myactiveproc )
	 myactiveproc = SNLang_ArabicEvents(myactiveproc)
         DO myRuntimeUrgent
         DO myRuntime
         myactiveproc := myoldproc
         Loop
      ENDIF
      IF myOpcode = -1002 .and. myactiveproc == myopdata[1]
         RT_LoopSwitch := True
      ENDIF
      IF RT_LoopSwitch = True
         RT_LoopSwitch := False
         m := 0
         Loop
      ENDIF
      IF myopcode > 0 .and. myopcode < 2000
         DO RT_GUI
      ENDIF
      IF myopcode >= 2000 .and. myopcode < 3000
         DO RT_Data
      ENDIF
      IF myopcode >= 3000 .and. myopcode < 4000
         DO RT_ControlStructure
      ENDIF
      IF myopcode >= 4000 .and. myopcode < 5000
         DO RT_GeneralIns
      ENDIF
      IF programcounter < m
         m := ProgramCounter
      ENDIF
      IF SysSwitch = False
         Return 0
      ENDIF
      IF RT_LoopSwitch = True
         RT_LoopSwitch := False
         m := 0
         Loop
      ENDIF
   ENDIF
Next
Return Nil

Proc myRuntimeUrgent
	Local m,myexemax,mytempproc,mytemplevel,myoldproc,oldobjscount
	myExeMax  = LEN(myExecutable)
	oldobjscount := objscount
	FOR m = 1 TO myExeMax STEP 1
		mytempproc := MyExecutable[m][3]
		mytemplevel := MyExecutable[m][4]
		IF lower(alltrim(mytempproc)) == lower(alltrim(myactiveproc)) .and. mytemplevel = myactivelevel
			myopcode := MyExecutable[m][1]
			myopdata := MyExecutable[m][2]
	      		IF myOpcode = -1002 .and. myactiveproc != myopdata[1]
			         myoldproc := myactiveproc
			         myactiveproc := myopdata[1]
			         DO myRuntimeUrgent
			         myactiveproc := myoldproc
			         Loop
		      ENDIF
		      IF RT_LoopSwitch = True
				RT_LoopSwitch := False
				m := 0
				Loop
		      ENDIF
		      DO RT_Urgent
		ENDIF
	Next
	objscount := oldobjscount
Return Nil

Proc RT_CallInstructions( P1 )
	Local OldProc,OldLevel
	p1 = STRTRAN(p1," ","")
	p1 = LOWER ( p1 )
	p1 = SNLang_ArabicEvents(p1)
	IF myactiveproc == p1
	   RT_LoopSwitch := True
	   Return 0
	ENDIF
	OldProc := MyActiveProc
	OldLevel := MyActiveLevel
	MyActiveProc := P1
	MyActiveLevel := 0
	DO MyRuntimeUrgent
	DO MyRuntime
	MyActiveProc := OldProc
	MyActiveLevel := OldLevel
Return Nil

Proc RT_SetEvents
	Local vmax,x
	vmax  = LEN(MyOpObjsMap)
	FOR x = vmax TO 1 STEP -1
	   MyOpObjsMap[x][4] := "READY"
	Next
Return Nil


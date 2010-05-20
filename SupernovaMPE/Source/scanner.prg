Proc myscanner
	Local scanx,mymax
	mymax  = LEN(FilesList)
	scanx := 1
	DO WHILE  scanx <= mymax
		srccodefile := FilesList[scanx]
		srccodeline := 1
		cFileName := FilesList[scanx]
		TMP_M1 = 0
		TMP_M2 = 0
		myFile = FOPEN( cFileName , TMP_M1 + TMP_M2 )
		myerror := 1
		DO WHILE  myerror = 1
			mychar := " "
			myerror = FREAD( myFile,@mychar,1)
			myrealstack := myrealstack+mychar
			IF mychar != chr(13) .and. mychar != chr(10) .and. myerror = 1
				mychar = ALLTRIM ( mychar )
				myChar = LOWER ( myChar )
				mystack := mystack + mychar
				DO mySyntax
			ENDIF
			IF mychar = chr(13)
				srccodeline := srccodeline + 1
			ENDIF
		ENDDO
		mymax  = LEN(FilesList)
		myopproc := "baseproc"
		myoplevel := 0
		myopcode := 0
		myopdata := {}
		myactiveproc := "baseproc"
		myactivelevel := 0
		scanx := scanx+1
	ENDDO
	DO RTE_TCheck
Return Nil


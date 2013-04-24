		LOCAL cFile,nMax,X,cStr,myhandle
	
		nmax  = ALEN(pwct_statusmsgs,1)
	
		cstr = ""
	
		FOR x = 1 TO nmax
			IF .NOT. EMPTY(ALLTRIM(pwct_statusmsgs(x)))
				cstr = cstr + ALLTRIM(pwct_statusmsgs(x)) + CHR(13) + CHR(10)
			ENDIF
		NEXT

		cFile  = JUSTPATH(APPLICATION.SERVERNAME) + "\pwctlog.txt"
		IF FILE(cFile)
	  		DELETE FILE (cFile)
	  ENDIF
	  
	  myhandle = FCREATE(cFile)
	  FWRITE(myhandle,cStr)
	  FCLOSE(myhandle)
	  
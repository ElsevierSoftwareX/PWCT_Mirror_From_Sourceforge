PARAMETERS cFolderAndFileName
LOCAL cPath,x,nPos,cSSBUILD,cSSRPWI
cFolderAndFileName = UPPER(ALLTRIM(cFolderAndFileName))

	* get PWCT folder from pwct exe file name
	cPath = application.ServerName 
	FOR x = LEN(cPath) TO 1 STEP -1
		IF SUBSTR(cPath,x,1) = "\"
			EXIT
		ENDIF
	NEXT
	cPath = SUBSTR(cPath,1,x-1) 
	* get SSBUILD folder from pwct folder 
	FOR x = LEN(cPath) TO 1 STEP -1
		IF SUBSTR(cPath,x,1) = "\"
			EXIT
		ENDIF
	NEXT
	cPath = SUBSTR(cPath,1,x-1) 
	cSSBUILD = cPath
	* get SSRPWI folder from SSBUILD
	FOR x = LEN(cPath) TO 1 STEP -1
		IF SUBSTR(cPath,x,1) = "\"
			EXIT
		ENDIF
	NEXT
	cPath = SUBSTR(cPath,1,x-1) 
  cSSRPWI = cPath+"\SSRPWI"
	
	nPos = AT("SSBUILD",cFolderAndFileName)
	IF nPos > 0
		cFolderAndFileName = SUBSTR(cFolderAndFileName,nPos+7) && get file without SSBUILD 
		cFolderAndFileName = cSSBUILD + cFolderAndFileName
		*syslogmsg("Path fixed to " + cFolderAndFileName)
		RETURN cFolderAndFileName
	ENDIF
	
	nPos = AT("SSRPWI",cFolderAndFileName)
	IF nPos > 0
		cFolderAndFileName = SUBSTR(cFolderAndFileName,nPos+6) && get file without SSRPWI
		cFolderAndFileName = cSSRPWI + cFolderAndFileName
		*syslogmsg("Path fixed to " + cFolderAndFileName)
		RETURN cFolderAndFileName
	ENDIF

		RETURN cFolderAndFileName

	
*!*	ENDIF

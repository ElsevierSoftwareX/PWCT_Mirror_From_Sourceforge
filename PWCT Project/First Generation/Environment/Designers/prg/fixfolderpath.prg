PARAMETERS cFileName
LOCAL cPath,x,nPos
cFileName = UPPER(ALLTRIM(cFileName))

IF FILE(cFileName)
	RETURN cFileName
ELSE

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
	
	nPos = AT("SSBUILD",cFileName)
	IF nPos > 0
		cFilename = SUBSTR(cFileName,nPos+7) && get file without SSBUILD 
		cFileName = cSSBUILD + cFileName
		RETURN cFileName
	ENDIF
	
	nPos = AT("SSRPWI",cFileName)
	IF nPos > 0
		cFilename = SUBSTR(cFileName,nPos+6) && get file without SSRPWI
		cFileName = cSSRPWI + cFileName
		RETURN cFileName
	ENDIF
	
ENDIF

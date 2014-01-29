FUNCTION sys_autovalue(p1)

	LOCAL x,cData,nMax,t,cLine,ldone,cParent,cOldValue,nSize
	LOCAL myalias,nrecord
	
	myalias = ALIAS()
	nrecord = RECNO()
	
	IF AT("<AUTOVALUE>",UPPER(p1)) > 0
	
		p1 = STRTRAN(p1,"<AUTOVALUE>","")
		p1 = ALLTRIM(p1)
    cOldValue = p1

		SELECT t38 
		
		IF RECNO() > 1
		
			ldone = .f.
			
			cParent = t38->stepid
				
			DO WHILE UPPER(ALLTRIM(cParent)) != "SP_"
			
				LOCATE FOR UPPER(ALLTRIM(stepid)) == UPPER(ALLTRIM(cParent))
				
				IF FOUND()
				
					cParent = t38->parentid					
					
					cData = ALLTRIM(t38->stepinf)
					
					nSize = MEMLINES(cData)
	
					IF nSize > 0
					
						DIMENSION aMyData(nSize)
				
					  ALINES(aMyData,cData)
					  
					  nMAX = ALEN(aMyData,1)
					  IF nMax > 0
					  
					  	FOR t = 1 TO nMax
					  	
					  		cLine = ALLTRIM(aMyData(t))
					  		
					  		IF UPPER(LEFT(cLine,LEN(p1))) == UPPER(p1)
					  		  p1 = ALLTRIM(SUBSTR(cLine,LEN(p1)+1))
					  		  ldone = .t.
					  		  EXIT 			  		
					  		ENDIF 
					  		
					  	NEXT 
					  	
					  ENDIF 
					  
					  
					  IF ldone = .t.
					  	EXIT 
					  ENDIF 
					
					ENDIF 
					
				ENDIF 
			
			ENDDO		
		
		ENDIF 
		
		IF p1 = cOldValue && the value not found
			p1 = ""
		ENDIF 
		
	ENDIF
	
	SELECT (myalias)
	GOTO nrecord
	
	RETURN p1


	
	
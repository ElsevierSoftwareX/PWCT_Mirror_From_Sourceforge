DEFINE CLASS PWCT_CGLevel2 as Custom  && Code Generation Level2

		lRemoveEmptyLines = .T.
		cFileName = "" && the generated source file name
		
		PROCEDURE Process(cCode)

					LOCAL nMax,cOutput,nListCount,x,lAdd,cLine,cRule,cFile
					
					DIMENSION aCode(1)
					
					DIMENSION aTable(1,2)
					
					nMax = ALINES(aCode,cCode)
					
					cOutput = ""
					
					nListCount = 0

					FOR x = 1 TO nMax

								lAdd = .T.
								
								cLine = aCode(x)
								
								IF LOWER(LEFT(cLine,13)) = "<pwct:tofile>"
								
											cFile = 	JUSTPATH(this.cFileName) + "\" + ALLTRIM(SUBSTR(cLine,14))
											lAdd = .F.
										
								ENDIF
								
								IF LOWER(LEFT(cLine,14)) = "<pwct:endfile>"
								
											lAdd = .F.
											STRTOFILE(cOutput,cFile)
											cOutput = ""
								ENDIF
								
								IF LOWER(LEFT(cLine,13)) = "<pwct:addvar>"
								
											cRule = ALLTRIM(SUBSTR(cLine,14))
											lAdd = .F.
											
								ENDIF
								
								IF LOWER(LEFT(cLine,13)) = "<pwct:setvar>"
								
											cValue = ALLTRIM(SUBSTR(cLine,14))
											
											nListCount = nListCount + 1
											DIMENSION aTable(nListCount,2)
											
											aTable(nListCount,1) = cRule
											aTable(nListCount,2) = cValue
											
											lAdd = .F.
									
								ENDIF

								IF LOWER(LEFT(cLine,22)) = "<pwct:mergenexttoprev>"

											cOutput = LEFT(cOutput,LEN(cOutput)-2) && remove new line
											cOutput = cOutput + SPACE(1) + aCode(x+1) + CHR(13) + CHR(10)
											x = x + 1
											lAdd = .F.
											
								ENDIF
								
								IF THIS.lRemoveEmptyLines = .T.
								
											IF THIS.RemoveTabsAndSpaces(cLine) == CHR(13) + CHR(10) .or. EMPTY(ALLTRIM(THIS.RemoveTabsAndSpaces(cLine)))
											
														lAdd = .F.
														
											ENDIF								
								
								ENDIF
								
								IF lAdd = .T.
								
											IF .NOT. RIGHT(cLine,2) == CHR(13) + CHR(10)
											
														cOutput = cOutput + cLine + CHR(13) + CHR(10)
														
											ELSE
											
														cOutput = cOutput + cLine 
														
											ENDIF
											
									
								ENDIF

					 NEXT
					
				 	IF nListCount > 0
					
								FOR x = 1 TO nListCount

											cOutput = STRTRAN(cOutput,aTable(x,1),aTable(x,2))

								NEXT
	
 			 	 ENDIF

		RETURN cOutput


		PROCEDURE RemoveTabsAndSpaces(cLine)
				 
			DO WHILE ASC(LEFT(cLine,1)) = 9
			
				cLine = SUBSTR(cLine,2)
				
			ENDDO
			
			cLine = ALLTRIM(cLine)
		
		RETURN cLine

ENDDEFINE

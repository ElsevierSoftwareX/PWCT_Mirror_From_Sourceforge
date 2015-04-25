DEFINE CLASS PWCT_CGLevel2 as Custom  && Code Generation Level2

		lRemoveEmptyLines = .F.
		cFileName = "" && the generated source file name
		
		PROCEDURE Process(cCode)

					LOCAL nMax,cOutput,nListCount,x,lAdd,cLine,cRule,cFile,cLineCmd,cIgnore
					
					DIMENSION aCode(1)
					
					DIMENSION aTable(1,2)
					
					nMax = ALINES(aCode,cCode)
					
					cOutput = ""
					
					nListCount = 0
					
					DIMENSION aGeneratedFiles(1)
					aGeneratedFiles(1) = this.cFileName

					FOR x = 1 TO nMax

								lAdd = .T. 
								
								cLine = aCode(x)
								
								cLineCmd = THIS.RemoveTabsAndSpaces(cLine)
								
								IF LOWER(LEFT(cLineCmd,13)) = "<pwct:tofile>"
								
											cFile = 	JUSTPATH(this.cFileName) + "\" + ALLTRIM(SUBSTR(cLineCmd,14))
											
											
											DIMENSION aGeneratedFiles(ALEN(aGeneratedFiles,1)+1)
											aGeneratedFiles(ALEN(aGeneratedFiles,1)) = cFile
											
											lAdd = .F.
											
											cOutput = ""  && start file with empty content

										
								ENDIF
								
								IF LOWER(LEFT(cLineCmd,14)) = "<pwct:endfile>"
								
											lAdd = .F.
											
											cOutput = this.TabPushAndTabPop(cOutput)
											
											STRTOFILE(cOutput,cFile)
											cOutput = ""
											
											
								ENDIF
								
								IF LOWER(LEFT(cLineCmd,13)) = "<pwct:addvar>"
								
											cRule = ALLTRIM(SUBSTR(cLineCmd,14))
											lAdd = .F.
											
								ENDIF
								
								IF LOWER(LEFT(cLineCmd,13)) = "<pwct:setvar>"
								
											cValue = ALLTRIM(SUBSTR(cLineCmd,14))
											
											nListCount = nListCount + 1
											DIMENSION aTable(nListCount,2)
											
											aTable(nListCount,1) = cRule
											aTable(nListCount,2) = cValue
											
											lAdd = .F.
									
								ENDIF


								IF LOWER(LEFT(cLineCmd,17)) = "<pwct:ignorelast>"
							
									   
											cIgnore = ALLTRIM(SUBSTR(cLineCmd,18))
											
											cOutput = LEFT(cOutput,LEN(cOutput)-2) && remove new line
											
											IF UPPER(RIGHT(cOutput,LEN(cIgnore))) == UPPER(cIgnore)
												cOutput = LEFT(cOutput,LEN(cOutput)-LEN(cIgnore)) && remove bytes											
											ENDIF
											
											
											cOutput = cOutput + CHR(13) + CHR(10)
									 
											lAdd = .F.
											
								ENDIF
								
								IF LOWER(LEFT(cLineCmd,14)) = "<pwct:newline>"

											cOutput = cOutput  + CHR(13) + CHR(10)
											lAdd = .F.
											
								ENDIF
								
								
								IF LOWER(LEFT(cLineCmd,35)) = "<pwct:mergenexttoprevbyspaceorstar>"

											cOutput = LEFT(cOutput,LEN(cOutput)-2) && remove new line
											IF RIGHT(cOutput,1) = "*"
											cOutput = cOutput + THIS.RemoveTabsAndSpaces(aCode(x+1)) + CHR(13) + CHR(10)
											ELSE
											cOutput = cOutput + SPACE(1) + THIS.RemoveTabsAndSpaces(aCode(x+1)) + CHR(13) + CHR(10)
											ENDIF
											
											
											x = x + 1
											lAdd = .F.
											
								ENDIF
								

								IF LOWER(LEFT(cLineCmd,22)) = "<pwct:mergenexttoprev>"

											cOutput = LEFT(cOutput,LEN(cOutput)-2) && remove new line
											cOutput = cOutput + SPACE(1) + THIS.RemoveTabsAndSpaces(aCode(x+1)) + CHR(13) + CHR(10)
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
		
		PROCEDURE TabPushAndTabPop(myfh)
		
			LOCAL myfh2,mytabs,v_mymax,v_ln,v_data
			
			myfh2 = ""
			mytabs = 0
			ALINES(aMyFH,myfh)
			v_mymax = ALEN(aMyFH) 
			FOR  v_ln = 1 TO v_mymax		
				v_data = aMyFh(v_ln)
				IF UPPER(ALLTRIM(v_data)) == "<RPWI:TABPUSH>"
					mytabs = mytabs+1
				ELSE
					IF UPPER(ALLTRIM(v_data)) == "<RPWI:TABPOP>"
						mytabs = MAX(mytabs-1,0)
					ELSE
						myfh2 =  myfh2 + REPLICATE(CHR(9),mytabs)+ v_data + CHR(13) + CHR(10)
					ENDIF
				ENDIF
			NEXT
		
		RETURN myfh2
		

ENDDEFINE

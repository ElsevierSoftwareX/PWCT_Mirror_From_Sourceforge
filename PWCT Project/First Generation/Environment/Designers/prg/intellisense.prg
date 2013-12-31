
	
DEFINE CLASS IntellisenseClass as Custom

	cInfoData = ""
	cList = ""
	nListMax = 0
	nRealStart = 1
	
	cAfterLoadList = ""
	nAfterLoadMax = 0
	
	DIMENSION InfoTree(1,8) && Parent ID - Child ID - Name - Type (1 = New Type, 2 = No Type , 3 = Type Name) - Type Name Text  , "." or ":"  
	nInfoTreeCols = 6
	
	DIMENSION ParentList(1) && array contains a list of the active step parents until the start point
	
	PROCEDURE start()
	
	 
		
		this.cInfoData = ""
		this.cList = ""
		this.nListMax = 0

		DIMENSION this.InfoTree(1,this.nInfoTreeCols)
		
 	
	RETURN
	
	
	PROCEDURE ReadInformation()
	
			LOCAL myalias,myrec,nMax,x,cLine,cLinex,nMax2,x2,myend,cInfo
			LOCAL cParent

			this.cInfoData = ""
						
			myalias = ALIAS()
		 
			SELECT t38
			myrec = RECNO()			
		
		
			* Get information about parent list of the active step
			cParent = t38->stepid
			DIMENSION this.parentlist(1)
			this.parentlist(1) = cParent			
			
			DO WHILE UPPER(ALLTRIM(cParent)) != "SP_"
			
				LOCATE FOR UPPER(ALLTRIM(stepid)) == UPPER(ALLTRIM(cParent))
				IF FOUND()
					cParent = t38->parentid
					DIMENSION this.parentlist(ALEN(this.parentlist)+1)
					this.parentlist(ALEN(this.parentlist)) = cParent
				ENDIF 
			
			ENDDO
			*****************************************************************
		
		
		  PUBLIC ARRAY mytree(1,3)
			mytree(1,1) = "SP_"
			mytree(1,2) = "SP_"
			mytree(1,3) = ""
				
			IF .NOT. RECCOUNT() = 0
			
				GOTO TOP 
				
				COUNT FOR UPPER(ALLTRIM(t38->goalid)) == UPPER(ALLTRIM(t33->goalhandle))  .AND. VAL(t38->stepinterid) <= mygdform.timemachineiid  TO nArraySize
				DIMENSION mytree(nArraySize+1,3)
				x = 1
				SCAN FOR UPPER(ALLTRIM(t38->goalid)) == UPPER(ALLTRIM(t33->goalhandle))   .AND. VAL(t38->stepinterid) <= mygdform.timemachineiid 	
							
					SELECT t38
					x = x+1
					mytree(x,1) = ALLTRIM(t38->parentid)
					mytree(x,2) = ALLTRIM(t38->stepid)
					
					IF EMPTY(ALLTRIM(t38->stepinf))
						  mytree(x,3) = ""
					ELSE					 							 
											 mytree(x,3) = ALLTRIM(t38->stepinf)									
					ENDIF 	
								
				ENDSCAN
				
				GOTO BOTTOM			
 
				
				IF .NOT. ALEN(mytree,1) = 1
				
				
					IF .NOT. myrec = 0 .AND. .NOT. myrec > RECCOUNT()
							GOTO myrec
					ENDIF
				
					this.DepthFirst(1)			
					
				ENDIF
				
			ENDIF 


			IF .NOT. myrec = 0 .AND. .NOT. myrec > RECCOUNT()
				GOTO myrec
			ENDIF

			SELECT (myalias)
			
	RETURN


	PROCEDURE DepthFirst(x)

				LOCAL t,nMax

				LOCAL x,cStepInf,x2,cLine,nMax2
				
				LOCAL lFound,x3,nMax3

				IF .not. EMPTY(ALLTRIM(mytree(x,3)))
			   			
			   			ALINES(aStepInf,mytree(x,3))
			   			nMax2 = ALEN(aStepInf,1)										 
					 
							 FOR x2 = 1 TO nMax2
							 
							 	cLine = aStepInf(x2)
							 
								 IF UPPER(LEFT(cLine,12)) == "INTELLISENSE"			
								 
								 		cline = ALLTRIM(SUBSTR(cLine,13))
								 		
								 		lFound = .t.
								 		
								 		IF UPPER(LEFT(cLine,6)) == "SCOPE:"
								 			cLine = ALLTRIM(SUBSTR(cLine,7))
								 			
								 			
								 			* Avoid item when the scope is not allowed
								 			
								 		 				lFound = .f.
			
															nMax3 = ALEN(this.parentlist)
															FOR x3 = 1 TO nMax3
																IF UPPER(alltrim(this.parentlist(x3))) == UPPER(ALLTRIM(mytree(x,2)))
																	lFound = .T.
																	syslogmsg("IntelliSense - Scope - Found - Step : " + ALLTRIM(t38->stepname))
																	syslogmsg("IntelliSense - Scope - Found - StepID : " + ALLTRIM(T38->stepid))
																	EXIT
																ENDIF 
															NEXT 								 			
								 			
								 			******************************************
								 			
								 			
								 			
								 		ENDIF 								 		
								 		
								 		IF lFound = .t.
				 	 					 this.cInfoData = this.cInfoData + cLine + CHR(13) + CHR(10)	
								 	  ENDIF 						 	 	
								 
								 ENDIF
							 
							 NEXT
							 
				ENDIF 					

				nMax = ALEN(mytree,1)

				FOR t = x+1 TO nMax

					IF ALLTRIM(mytree(t,1)) == ALLTRIM(mytree(x,2))
					
						this.DepthFirst(t)
						
					ENDIF

				NEXT 

	RETURN


	PROCEDURE AddItem(nParentID,cName,nType,cTypeText,cDotText) && nType (1 = New Type, 2 = No Type , 3 = Type Name)
		
		LOCAL nMax
		
		this.nListMax = this.nListMax + 1
		nMax = this.nListMax
		
		DIMENSION this.InfoTree(nMax,this.nInfoTreeCols)
		
		this.InfoTree(nMax,1) = nParentID
		this.InfoTree(nMax,2) = nMax
		this.InfoTree(nMax,3) = cName
		this.InfoTree(nMax,4) = nType
		this.InfoTree(nMax,5) = cTypeText
		this.InfoTree(nMax,6) = cDotText
	
	RETURN nMax
		 
	PROCEDURE LoadTreeFromString(cStr)
	
		LOCAL x,nMax,cLine,cItem,nParent,cType,cDot
		LOCAL x2,nMax2,alist

		DIMENSION ParentQueue(1)
		
		ParentQueue(1) = 0
		
		nParent = 0

		cType = ""
		
		cDot = "."
		

		ALINES(aStr,cStr)
		nMax = ALEN(aStr)
		
		
		FOR x = 1 TO nMax
		
			  cLine = aStr(x)
								 
				DO WHILE ASC(LEFT(cLine,1)) = 9			
					cLine = SUBSTR(cLine,2)				
				ENDDO
				
				cLine = ALLTRIM(cLine)
				
				
				IF .not. EMPTY(cLine)
				
						IF UPPER(LEFT(cLine,7)) = "PARENT:"
						
								cItem = ALLTRIM(SUBSTR(cLine,8))							
					 
					 		 IF cType == ""
										nParent = this.additem(nParent,cItem,1,cType,cDot)
								ELSE 
										nParent = this.additem(nParent,cItem,3,cType,cDot)
								ENDIF 
								
								cType = ""
						    cDot = "." && default value						
							
								DIMENSION ParentQueue(ALEN(ParentQueue,1) + 1)
								ParentQueue(ALEN(ParentQueue,1)) = nParent
		
							
						ELSE 
						
							IF UPPER(cLine) = "END:"
							
									ADEL(ParentQueue,ALEN(ParentQueue,1))
									
									DIMENSION ParentQueue(ALEN(ParentQueue,1) - 1)
									
									nParent = ParentQueue(ALEN(ParentQueue,1))
										
							ELSE
							
							
								IF UPPER(LEFT(cLine,5)) = "MARK:"
							
									cDot = ALLTRIM(SUBSTR(cLine,6))
							
						    ELSE
							
										IF UPPER(LEFT(cLine,6)) = "SCOPE:"
										
											cStepID = ALLTRIM(SUBSTR(cLine,7))
											nScope = 2

										ELSE
										
											IF UPPER(LEFT(cLine,5)) = "TYPE:"
									
													cType = ALLTRIM(SUBSTR(cLine,6))
									
											ELSE
											
										 			 IF cType == ""
										 			 
										 			 	DIMENSION aList(1)
										 			   ALINES(aList,cLine,.f.,",")
										 			   nMax2 = ALEN(aList)
										 			   IF nMax2 >= 1
											 			   FOR x2 = 1 TO nMax2										 			   
																	this.additem(nParent,aList[x2],2,cType,cDot)
																NEXT 
															ELSE
																this.additem(nParent,cLine,2,cType,cDot)
															ENDIF														
															
														ELSE 
															this.additem(nParent,cLine,3,cType,cDot)
														ENDIF 
														
														cType = ""
														cDot = "." && default value
		
												
											ENDIF 
											
									 ENDIF 

								ENDIF 
									
							ENDIF
							
						
						ENDIF 
						
				ENDIF 
		
		NEXT
	
	
	RETURN
	

	PROCEDURE LoadTreeFromFile(cFileName)
	
		LOCAL cStr
	
	
		IF FILE(cFileName)
		
				cStr = FILETOSTR(cFileName)
			
				this.LoadTreeFromString(cStr)
				
				
		ENDIF
		
	
	RETURN
	
	
	PROCEDURE LoadIntellisenseData()
	
			IF FILE(APPLICATION.DEFAULTFILEPATH+"\Intellisense\HarbourPWCT.txt")
				this.LoadTreeFromFile(APPLICATION.DEFAULTFILEPATH+"\Intellisense\HarbourPWCT.txt")
				obj_intellisense.buildtree(.T.)
				this.cAfterloadList = this.cList 
				this.nAfterloadMax = this.nListMax
			ENDIF 
						
	RETURN 
	
	PROCEDURE Refresh()
	
			DIMENSION this.InfoTree(this.nAfterloadMax,this.nInfoTreeCols)
			this.nListMax = this.nAfterloadMax
			this.cList = this.cAfterloadList
			
	RETURN 

	PROCEDURE BuildTree(lStartUp)
	
			LOCAL nParent,x,nMax,t,r,nStart
			LOCAL cParent,cTypeName,nSize,nMax2
	
			this.nRealStart = this.nListMax + 1
			
			IF lStartUp = .f.
			
				nStart = this.nAfterloadMax + 1
			
				this.readinformation()
				
				IF .not. EMPTY(ALLTRIM(this.cInfoData))
				
					 this.loadtreefromstring(this.cInfoData) 
					 
				ENDIF		 

			ELSE 
			
				nStart = 1
				
			ENDIF 
			
			nMax = ALEN(this.InfoTree,1)			
			
			
			*syslogmsg("Tree Data : ")
			
			FOR x = nStart TO nMax
			
				*syslogmsg( STR( this.InfoTree(x,1) ) + " ; " + STR( this.InfoTree(x,2) ) + " ; " +  this.InfoTree(x,3) + " ; " +  STR(this.InfoTree(x,4)) + " ; " +  this.InfoTree(x,5) + " ; " +  this.InfoTree(x,6) )
			
				IF this.InfoTree(x,1) = 0 && The item is a root
				
					IF this.InfoTree(x,4) = 1 .or. this.InfoTree(x,4) = 2  && the item is a new type or no type
						this.cList = this.cList + this.InfoTree(x,3) + CHR(13) + CHR(10)
					ENDIF
					
				ELSE && The item is a child
							
					cParent = this.buildparentstring(x,nStart,nMax)				
					
					this.cList = this.cList + cParent + this.InfoTree(x,3) + CHR(13) + CHR(10)
					
    		ENDIF
    		
			NEXT
			
			* When the item is releated to a type, copy and change the name
			
			FOR x = nStart TO nMax
			
					IF this.InfoTree(x,4) = 3 && the item is a new object of a predefined type
					
						IF this.InfoTree(x,1) = 0 && the item is a root
			  			this.cList = this.cList + this.InfoTree(x,3) + CHR(13) + CHR(10)
			    	ENDIF 
			  								
					
						IF .not. this.InfoTree(x,1) = 0 && The item is a child also
										
								cParent = this.buildparentstring(x,nStart,nMax)
			 
						ELSE
			 					
								cParent = ""
					
						ENDIF
					
						cTypeName = this.InfoTree(x,5)
						nSize = LEN(cTypeName)
						
						ALINES(aTempList,this.cList)
						nMax2 = ALEN(aTempList)
						
						FOR t = 1 TO nMax2
						
  						cLine = aTempList(t)
							
							IF ALLTRIM(left(cLine,nSize)) == ALLTRIM(cTypeName)
							
								IF .not. EMPTY(ALLTRIM(SUBSTR(cLine,nSize+1)))
								
									cItemText =  this.InfoTree(x,3) + SUBSTR(cLine,nSize+1)
									this.cList = this.cList + cParent + cItemText + CHR(13) + CHR(10)
									
								ENDIF 
								
							ENDIF
							
							
						NEXT
						
					
					ENDIF
					
			NEXT			 
			
			*syslogmsg(" Intellisense Data : ")
			*syslogmsg(this.cList)
	
	RETURN
	
	PROCEDURE BuildParentString(r,nStart,nMax)
	
	
		LOCAL cParent,t
		
		cParent = ""
		
		DO WHILE .not. this.InfoTree(r,1) = 0
		
					FOR t = nStart TO nMax
					
						IF this.InfoTree(t,2) = this.InfoTree(r,1)
						
							cParent = this.InfoTree(t,3) + this.InfoTree(t,6) + cParent
							r = t
							EXIT 
							
						ENDIF
						
					NEXT
									
		ENDDO
		
	
	RETURN cParent
	
	PROCEDURE sortlist()
	
			LOCAL cNewStr
			LOCAL x,nMax,nCount
	
  		DIMENSION aListArray(MEMLINES(this.cList))
			ALINES(aListArray,this.cList)
			
			ASORT(aListArray)
			
			* Remove Duplications
			nMax = ALEN(aListArray,1)
			
			IF nMax > 1
					
					nCount = 0
					
					FOR x = nMax TO 2 STEP -1
					
						IF ALLTRIM(aListArray[x]) == ALLTRIM(aListArray[x-1])
						
							ADEL(aListArray,x)
							nCount = nCount + 1
							
						ENDIF 
						
					NEXT 
					
					IF nCount > 0
					
						DIMENSION aListArray(nMax - nCount)
						syslogmsg("Intellisense - Duplication found - " + ALLTRIM(STR(nCount)) + " items removed")
					
					ENDIF 
			
			ENDIF 
			
			
			
		  *********************
			
			cNewStr = ""
			FOR t = 1 TO ALEN(aListArray)
				cNewStr = cNewStr + aListArray(t) + CHR(13) + CHR(10)
			NEXT
			
			this.cList = cNewStr
	
	RETURN
	

ENDDEFINE 


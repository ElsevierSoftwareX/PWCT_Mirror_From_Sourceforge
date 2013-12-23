
	
DEFINE CLASS IntellisenseClass as Custom

	cInfoData = ""
	cList = ""
	nListMax = 0
	nRealStart = 1
	
	cAfterLoadList = ""
	nAfterLoadMax = 0
	
	DIMENSION InfoTree(1,6) && Parent ID - Child ID - Name - Type (1 = New Type, 2 = No Type , 3 = Type Name) - Type Name Text  , "." or ":" 
	
	
	PROCEDURE start()
	
		this.cInfoData = ""
		this.cList = ""
		this.nListMax = 0

		DIMENSION this.InfoTree(1,6)
	
	RETURN
	
	
	PROCEDURE ReadInformation()
	
			LOCAL myalias,myrec,nMax,x,cLine,cLinex,nMax2,x2,myend,cInfo

			this.cInfoData = ""
						
			myalias = ALIAS()
		 
			SELECT t38
			myrec = RECNO()			
		
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
				
					*syslogmsg(" Items count before arrange : " + STR(ALEN(mytree,1)) )
				
					SET PROCEDURE TO goaltores.prg
					ss_arrtree()
					
					myend = ALEN(mytree,1)					 
								 
			 	 *syslogmsg(" Items count after arrange : " + STR(ALEN(mytree,1)) )
			 
					FOR x2 = 1 TO myend										 
						
							 cStepInf = mytree(x2,3)
							
							 *syslogmsg(" information (after) " + cStepInf )
							
						   IF .not. EMPTY(ALLTRIM(cStepInf ))
						   			
						   			ALINES(aStepInf,cStepInf)
						   			nMax = ALEN(aStepInf,1)										 
								 
										 FOR x = 1 TO nMax
										 
										 	cLine = aStepInf(x)
										 
											 IF UPPER(LEFT(cLine,12)) == "INTELLISENSE"			
											 
											 		cline = ALLTRIM(SUBSTR(cLine,13))
											 		
							 	 				 this.cInfoData = this.cInfoData + cLine + CHR(13) + CHR(10)							 	 	
											 
											 ENDIF
										 
										 NEXT
										 
							ENDIF 							
					 
						
					NEXT
					
				ENDIF
				
			ENDIF 


			IF .NOT. myrec = 0 .AND. .NOT. myrec > RECCOUNT()
				GOTO myrec
			ENDIF

			SELECT (myalias)
			
	
	RETURN

	PROCEDURE AddItem(nParentID,cName,nType,cTypeText,cDotText) && nType (1 = New Type, 2 = No Type , 3 = Type Name)
		
		LOCAL nMax
		
		this.nListMax = this.nListMax + 1
		nMax = this.nListMax
		
		DIMENSION this.InfoTree(nMax,6)
		
		this.InfoTree(nMax,1) = nParentID
		this.InfoTree(nMax,2) = nMax
		this.InfoTree(nMax,3) = cName
		this.InfoTree(nMax,4) = nType
		this.InfoTree(nMax,5) = cTypeText
		this.InfoTree(nMax,6) = cDotText
	
	RETURN nMax
		 
	PROCEDURE LoadTreeFromString(cStr)
	
		LOCAL x,nMax,cLine,cItem,nParent,cType,cDot

		DIMENSION ParentQueue(1)
		
		ParentQueue(1) = 0
		
		nParent = 0

		cType = ""
		
		cDot = "."

		*nMax = MEMLINES(cStr)
		
		*syslogmsg(" Load Tree From String : ")
		*syslogmsg(cStr)
		
		ALINES(aStr,cStr)
		nMax = ALEN(aStr)
		
		
		FOR x = 1 TO nMax
		
*				cLine = MLINE(cStr,x)				
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
							
											IF UPPER(LEFT(cLine,5)) = "TYPE:"
									
													cType = ALLTRIM(SUBSTR(cLine,6))
									
											ELSE
											
										 			 IF cType == ""
															this.additem(nParent,cLine,2,cType,cDot)
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
	
			DIMENSION this.InfoTree(this.nAfterloadMax,5)
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
				
					IF this.InfoTree(x,4) = 1 && the item is a new type
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
	
  		DIMENSION aListArray(MEMLINES(this.cList))
			ALINES(aListArray,this.cList)
			
			ASORT(aListArray)
			
			cNewStr = ""
			FOR t = 1 TO ALEN(aListArray)
				cNewStr = cNewStr + aListArray(t) + CHR(13) + CHR(10)
			NEXT
			
			this.cList = cNewStr
	
	RETURN
	

ENDDEFINE 


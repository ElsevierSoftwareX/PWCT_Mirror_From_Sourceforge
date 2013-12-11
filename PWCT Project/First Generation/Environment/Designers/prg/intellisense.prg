
myobj = CREATEOBJECT("IntellisenseClass")
myobj.buildtree()

DEFINE CLASS IntellisenseClass as Custom

	cInfoData = ""
	cList = ""
	nListMax = 0
	
	
	DIMENSION InfoTree(1,5) && Parent ID - Child ID - Name - Type (1 = New Type, 2 = No Type , 3 = Type Name) - Type Name Text
	
	
	PROCEDURE ReadInformation()
	
			LOCAL nRec,cCustomListType
			LOCAL myalias,myrec,nMax,x,cLine,cLinex,nMax2,x2
						
			myalias = ALIAS()
		 
			SELECT t38
			myrec = RECNO()
			GOTO TOP
			SCAN FOR UPPER(ALLTRIM(goalid)) == UPPER(ALLTRIM(t33->goalhandle)) .AND. VAL(stepinterid) <= mygdform.timemachineiid

			 nMax = MEMLINES(t38->stepinf)
			 
			 FOR x = 1 TO nMax
			 
			 cLine = ALLTRIM(MLINE(t38->stepinf,x))
			 
				 IF UPPER(LEFT(cLine,12)) == "INTELLISENSE"
			
				 
				 		cline = ALLTRIM(SUBSTR(cLine,13))
				 		
				 		clines = STRTRAN(cline,",",CHR(13)+CHR(10))
				 		nMax2 = MEMLINES(cLines)
				 		
				 		FOR x2 = 1 TO nMax2
				 			cLine2 = MLINE(cLines,x2)
				 			this.cInfoData = this.cInfoData + cLine2 + CHR(13) + CHR(10)
				 		NEXT
		 	
				 
				 ENDIF
			 
			 NEXT
		 
			
			ENDSCAN
			GOTO TOP

			IF .NOT. myrec = 0 .AND. .NOT. myrec > RECCOUNT()
				GOTO myrec
			ENDIF

			SELECT (myalias)
			
	
	RETURN

	PROCEDURE AddItem(nParentID,cName,nType,cTypeText) && nType (1 = New Type, 2 = No Type , 3 = Type Name)
		
		LOCAL nMax
		
		IF PCOUNT() < 4
			cTypeText = ""
		ENDIF 
		
		this.nListMax = this.nListMax + 1
		nMax = this.nListMax
		
		DIMENSION this.InfoTree(nMax,5)
		
		this.InfoTree(nMax,1) = nParentID
		this.InfoTree(nMax,2) = nMax
		this.InfoTree(nMax,3) = cName
		this.InfoTree(nMax,4) = nType
		this.InfoTree(nMax,5) = cTypeText
	
	RETURN nMax
	
	
	 
	PROCEDURE LoadTreeFromString(cStr)
	
		LOCAL x,nMax,cLine,cItem,nParent,cType

		DIMENSION ParentQueue(1)
		
		ParentQueue(1) = 0
		
		nParent = 0

		cType = ""

		nMax = MEMLINES(cStr)
		
		FOR x = 1 TO nMax
		
				cLine = MLINE(cStr,x)
				
								 
				DO WHILE ASC(LEFT(cLine,1)) = 9			
					cLine = SUBSTR(cLine,2)				
				ENDDO
				
				cLine = ALLTRIM(cLine)
				
				
				IF .not. EMPTY(cLine)
				
						IF UPPER(LEFT(cLine,7)) = "PARENT:"
						
							cItem = ALLTRIM(SUBSTR(cLine,8))
							
							IF cType == ""
								nParent = this.additem(nParent,cItem,1)
							ELSE
								nParent = this.additem(nParent,cItem,3,cType)
								cType = ""
							ENDIF
							
							
							DIMENSION ParentQueue(ALEN(ParentQueue,1) + 1)
							ParentQueue(ALEN(ParentQueue,1)) = nParent
		
							
						ELSE 
						
							IF UPPER(cLine) = "END:"
							
									ADEL(ParentQueue,ALEN(ParentQueue,1))
									
									DIMENSION ParentQueue(ALEN(ParentQueue,1) - 1)
									
									nParent = ParentQueue(ALEN(ParentQueue,1))
										
							ELSE
							
							
									IF UPPER(LEFT(cLine,5)) = "TYPE:"
							
											cType = ALLTRIM(SUBSTR(cLine,6))
							
									ELSE
									
											IF cType == ""
												this.additem(nParent,cLine,2)
											ELSE
												this.additem(nParent,cLine,3,cType)
												cType = ""
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
	

	PROCEDURE BuildTree()
	
			LOCAL nParent,x,nMax,t,r
	
			DIMENSION this.InfoTree(8,5)
			
			
			this.LoadTreeFromFile("c:\users\mahmoud\desktop\test.txt")

			
			nMax = ALEN(this.InfoTree,1)
			
			FOR x = 1 TO nMax
			
				IF this.InfoTree(x,1) = 0 && The item is a root
				
					IF this.InfoTree(x,4) = 1 && the item is a new type
						this.cList = this.cList + this.InfoTree(x,3) + CHR(13) + CHR(10)
					ENDIF
					
				ELSE && The item is a child
				
				
					cParent = ""
					r = x
					DO WHILE .not. this.InfoTree(r,1) = 0
						FOR t = 1 TO nMax
							IF this.InfoTree(t,2) = this.InfoTree(r,1)
								cParent = this.InfoTree(t,3) + "." + cParent
								r = t
								EXIT 
							ENDIF
						NEXT
					ENDDO
					
					this.cList = this.cList + cParent + this.InfoTree(x,3) + CHR(13) + CHR(10)
					
    		ENDIF
			NEXT
			
			* When the item is releated to a type, copy and change the name
			
			FOR x = 1 TO nMax
			
					IF this.InfoTree(x,4) = 3 && the item is a new object of a predefined type
					
					
						cParent = ""
					
						IF .not. this.InfoTree(x,1) = 0 && The item is a child also
					
								r = x
								DO WHILE .not. this.InfoTree(r,1) = 0
									FOR t = 1 TO nMax
										IF this.InfoTree(t,2) = this.InfoTree(r,1)
											cParent = this.InfoTree(t,3) + "." + cParent
											r = t
											EXIT 
										ENDIF
									NEXT
								ENDDO
					
						ENDIF
					
					
					
						cTypeName = this.InfoTree(x,5)
						nSize = LEN(cTypeName)
						
						nMax2 = MEMLINES(this.cList)
						
						FOR t = 1 TO nMax2
						
							cLine = MLINE(this.cList,t)
							
							IF left(cLine,nSize) == cTypeName
							
								cItemText =  this.InfoTree(x,3) + SUBSTR(cLine,nSize+1)
								this.cList = this.cList + cParent + cItemText + CHR(13) + CHR(10)
								
							ENDIF
							
							
						NEXT
						
					
					ENDIF
					
			NEXT
			
			DIMENSION aListArray(MEMLINES(this.cList))
			ALINES(aListArray,this.cList)
			
			ASORT(aListArray)
			
			cNewStr = ""
			FOR t = 1 TO ALEN(aListArray)
				cNewStr = cNewStr + aListArray(t) + CHR(13) + CHR(10)
			NEXT
			
			MESSAGEBOX(cNewStr,0,"wow")
	
	RETURN
	
	

ENDDEFINE 


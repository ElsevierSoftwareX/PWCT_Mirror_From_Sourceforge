
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
	
		LOCAL x,nMax,cLine,cItem,nParent


		nParent = 0

		nMax = MEMLINES(cStr)
		
		FOR x = 1 TO nMax
		
				cLine = ALLTRIM(MLINE(cStr,x))
				
				IF .not. EMPTY(cLine)
				
						IF UPPER(LEFT(cLine,7)) = "PARENT:"
						
							cItem = ALLTRIM(SUBSTR(cLine,8))
							
							nParent = this.additem(0,cItem,1)
							
						ELSE 
						
							this.additem(nParent,cLine,2)
						
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
			
			nParent = this.additem(0,"window",1)
			this.additem(nParent,"row",2)
			nParent = this.additem(nParent,"btn1",2)
			this.additem(nParent,"col",2)
			nParent = this.additem(0,"Customers",1)
			this.additem(nParent,"cName",2)
			this.additem(0,"oCustoemrs",3,"Customers")
			this.additem(0,"win1",3,"window")
			
			cCode = 'this.additem(0,"win2",3,"window")'
			cCode = &cCode
			
			this.LoadTreeFromFile("c:\users\mahmoud\desktop\test.txt")
			
			this.additem(0,"great",3,"Nice")
			
			
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
					
						cTypeName = this.InfoTree(x,5)
						nSize = LEN(cTypeName)
						
						nMax2 = MEMLINES(this.cList)
						
						FOR t = 1 TO nMax2
						
							cLine = MLINE(this.cList,t)
							
							IF left(cLine,nSize) == cTypeName
							
								cItemText =  this.InfoTree(x,3) + SUBSTR(cLine,nSize+1)
								this.cList = this.cList + cItemText + CHR(13) + CHR(10)
								
							ENDIF
							
							
						NEXT
						
					
					ENDIF
					
			NEXT
			
			MESSAGEBOX(this.cList,0,"wow")
	
	RETURN
	
	

ENDDEFINE 


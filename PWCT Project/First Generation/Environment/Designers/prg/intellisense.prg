
myobj = CREATEOBJECT("IntellisenseClass")
myobj.buildtree()

DEFINE CLASS IntellisenseClass as Custom

	cInfoData = ""
	cList = ""
	
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



	PROCEDURE BuildTree()
	
			LOCAL x,nMax,t,r
	
			DIMENSION this.InfoTree(8,5)
			
			this.InfoTree(1,1) = 0
			this.InfoTree(1,2) = 1
			this.InfoTree(1,3) = "window"
			this.InfoTree(1,4) = 1
			this.InfoTree(1,5) = ""
			
			this.InfoTree(2,1) = 1
			this.InfoTree(2,2) = 2
			this.InfoTree(2,3) = "row"
			this.InfoTree(2,4) = 2
			this.InfoTree(2,5) = ""
			
			this.InfoTree(3,1) = 1
			this.InfoTree(3,2) = 3
			this.InfoTree(3,3) = "btn1"
			this.InfoTree(3,4) = 2
			this.InfoTree(3,5) = ""
			
			this.InfoTree(4,1) = 3
			this.InfoTree(4,2) = 4
			this.InfoTree(4,3) = "col"
			this.InfoTree(4,4) = 2
			this.InfoTree(4,5) = ""
			
			this.InfoTree(5,1) = 0
			this.InfoTree(5,2) = 5
			this.InfoTree(5,3) = "Customers"
			this.InfoTree(5,4) = 1
			this.InfoTree(5,5) = ""
			
			this.InfoTree(6,1) = 5
			this.InfoTree(6,2) = 6
			this.InfoTree(6,3) = "cName"
			this.InfoTree(6,4) = 2
			this.InfoTree(6,5) = ""
			
			
			this.InfoTree(7,1) = 0
			this.InfoTree(7,2) = 7
			this.InfoTree(7,3) = "oCustomers"
			this.InfoTree(7,4) = 3
			this.InfoTree(7,5) = "Customers"
			
			this.InfoTree(8,1) = 0
			this.InfoTree(8,2) = 8
			this.InfoTree(8,3) = "win1"
			this.InfoTree(8,4) = 3
			this.InfoTree(8,5) = "window"
			
			
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


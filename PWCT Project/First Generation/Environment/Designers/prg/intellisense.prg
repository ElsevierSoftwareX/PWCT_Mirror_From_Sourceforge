DEFINE CLASS IntellisenseClass as Custom

	cInfoData = ""
	
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


ENDDEFINE 


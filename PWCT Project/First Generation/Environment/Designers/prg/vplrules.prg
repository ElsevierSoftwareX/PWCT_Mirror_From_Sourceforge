DEFINE CLASS VPLRulesBase AS Custom

	lFindUsingIndex = .f.
	lFileToStrBuffer = .t.
	
	PROCEDURE checkAllowRoot()
		
				LOCAL myret
				LOCAL cTableName,nRecord
				LOCAL cInterNum,cHis,cFile,cRules,nMax,X,cLine
				LOCAL ARRAY aRules[1]
				
				myret = .f.
				
				cTableName = ALIAS()
				nRecord = RECNO()
				
				cinternum = ALLTRIM(STR(t38->stepinternum))

				SELECT t46

				IF .NOT. EMPTY(t38->stepinterid)

					GOTO TOP
					IF this.lFindUsingIndex = .f.
							LOCATE FOR  ALLTRIM(f_iid) == ALLTRIM(t38->stepinterid)
					ELSE
							this.IndexFindIID(ALLTRIM(t38->stepinterid))
					ENDIF
					
					IF FOUND()

						chis = f_myhis
						cfile = UPPER(ALLTRIM(MLINE(chis,9)))

						IF FILE(cfile)

							cfile = STRTRAN(cfile,".TRF",".RULES")

							IF FILE(cfile)

								crules = this.myFILETOSTR(cfile)
								crules = UPPER(crules)

								*nmax = MEMLINES(crules)
								nMax = ALINES(aRules,cRules)
								
								FOR x = 1 TO nmax

									*cline = MLINE(crules,x)
									cLine = aRules(x)
									
									cline = ALLTRIM(cline)
									crule = "AllowRoot: " + cinternum
				
									IF UPPER(ALLTRIM(cline)) == UPPER(ALLTRIM(crule))
									
										myret = .T.
										EXIT
										
									ENDIF

								NEXT

							ELSE
							
								stmsg( " (Check New Step) Cann't find the Rules file : " + cfile )
								myret = .T.
								
							ENDIF

						ENDIF

					ENDIF


				ENDIF

				SELECT (cTableName)
				GOTO nRecord

		RETURN myret


		PROCEDURE CreateMyIndex()
		
				This.DeleteMyIndex() 
				
				SELECT t38
				
				INDEX on stepid TAG mystepid
				INDEX on parentid TAG myparentid
				INDEX on stepinterid TAG myinterid
				
				SELECT T46
				
				INDEX ON F_IID TAG myIID
		 
				
		RETURN
		
		PROCEDURE  IndexFindStepID(cID)
		  
				SELECT t38
				seek cID ORDER tag mystepid
				
		RETURN
		
		PROCEDURE IndexFindParentID(cID)
	 
				SELECT t38
				seek cID ORDER tag myparentid
				
		RETURN
		
		PROCEDURE  IndexFindIID(cID)
	 
				SELECT t46
				seek cID ORDER tag myIID
				
		RETURN
		
				
		PROCEDURE  IndexFindStepInterID(cID)
		  
				SELECT t38
				seek cID ORDER tag myinterid
				
		RETURN
		
		PROCEDURE DeleteMyIndex()
		
				LOCAL cTableName,nRecord,nRecord2
				
				SELECT t38
 				
				TRY 
						DELETE TAG mystepid
						DELETE TAG myparentid
						DELETE TAG myinterid
				CATCH 
				ENDTRY 
				
				SELECT t46
		 
				TRY
					 DELETE TAG myIID
				CATCH
				ENDTRY
					
		RETURN

		PROCEDURE myfiletostr(cFileName)

			LOCAL cJustName,x,nMax 
	 	
			IF this.lFileToStrBuffer = .f.
				RETURN FILETOSTR(cFileName)
			ENDIF
			
			cFileName = UPPER(ALLTRIM(cFileName))
			cJustName = JUSTFNAME(cFileName)
	 	 cJustName = LEFT(cJustName,LEN(cJustName)-6) && remove .Rules
	 	 
	 	 nMax = ASCAN( aFilesData, cJustName,-1,-1, 1, 8)
	 	 
 		 IF .not. nMax = 0
					return aFilesData(nMax,2)
		  ENDIF
	

				nMax = ALEN( aFilesData , 1) + 1
				DIMENSION aFilesData(nMax,2)
			
				aFilesData(nMax,1) = cJustName
				aFilesData(nMax,2) = FILETOSTR(cFileName)
				
		 return aFilesData(nMax,2)
		 
		 
		 
			PROCEDURE GETCOMPONENTFILE()
			
			 
				LOCAL ARRAY aRules[1]
				
				ALINES(aRules,f_myhis)
				 
				
			RETURN UPPER(ALLTRIM(aRules(9)))
		 
ENDDEFINE

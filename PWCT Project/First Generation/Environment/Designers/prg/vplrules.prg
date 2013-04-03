DEFINE CLASS VPLRulesBase AS Custom

	PROCEDURE checkAllowRoot()
		
				LOCAL myret
				LOCAL cTableName,nRecord
				LOCAL cInterNum,cHis,cFile,cRules,nMax,X,cLine
				
				myret = .f.
				
				cTableName = ALIAS()
				nRecord = RECNO()
				
				cinternum = ALLTRIM(STR(t38->stepinternum))

				SELECT t46

				IF .NOT. EMPTY(t38->stepinterid)

					GOTO TOP

					LOCATE FOR UPPER(ALLTRIM(f_iid)) == UPPER(ALLTRIM(t38->stepinterid))

					IF FOUND()

						chis = f_myhis
						cfile = UPPER(ALLTRIM(MLINE(chis,9)))

						IF FILE(cfile)

							cfile = STRTRAN(cfile,".TRF",".RULES")

							IF FILE(cfile)

								crules = FILETOSTR(cfile)
								crules = UPPER(crules)

								nmax = MEMLINES(crules)

								FOR x = 1 TO nmax

									cline = MLINE(crules,x)
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


ENDDEFINE

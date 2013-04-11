*:******************************************************************************
*:
*: Procedure File D:\PWCTSRC\PWCT\PRG\GUI_AUTONUMBER.PRG
*:
*:	
*:	
*:	
*:	
*:	
*:	
*:	
*:	
*:	Mahmoud Fayed
*:	Programming without coding technology 1.8 (Smart)
*:	Free - Open Source
*:	
*:	Programming without coding technology 1.8 (Smart)
*:
*: Documented using Visual FoxPro Formatting wizard version  .05
*:******************************************************************************
*:   gui_autonumber
*:   sys_autonumber
*!******************************************************************************
*!
*! Procedure SYS_AUTONUMBER
*!
*!******************************************************************************
FUNCTION sys_autonumber(p1)

	LOCAL myfile,idf_file,myrec,mynum,trf_file,x,myiidarray,doadd,myrec2,tv_myline1,tv_max,numcach,x2
	LOCAL myalias,nrecord
	
	myalias = ALIAS()
	nrecord = RECNO()
	
	IF AT("<AUTONUMBER>",UPPER(p1)) > 0
	
		myfile = MLINE(m_files,apage)
		
		idf_file = ALLTRIM(myfile)
		trf_file = STRTRAN(idf_file,"IDF","TRF")

		DIMENSION myiidarray(1)
		myiidarray(1) = "0"

		mynum = 0 						&& the number to increment based on control count
		mynummax = 0 				 && the maximum number extracted from controls names

		SELECT t38
		myrec = RECNO()
		
		GOTO TOP
		
		SCAN
		
			SELECT t46
			myrec2 = RECNO()
			
			GOTO TOP
			
			LOCATE FOR ALLTRIM(f_iid) == ALLTRIM(t38->stepinterid)
			
			IF FOUND()
			
				myline1 = MLINE(f_myhis,9)

				IF UPPER(ALLTRIM(myline1)) == UPPER(ALLTRIM(trf_file))

					doadd = .T.
					
					FOR x = 1 TO ALEN(myiidarray)
					
						IF myiidarray(x) = f_iid
						
							doadd = .F.
							
						ENDIF
						
					NEXT
					
					IF doadd = .T.
					
						mynum = mynum + 1
						DIMENSION myiidarray(ALEN(myiidarray)+1)
						myiidarray(ALEN(myiidarray)) = f_iid
						
					ENDIF

					* check control name and get the number
					tv_max = MEMLINES(f_myhis)
					numcach = ""
					FOR x = 10 TO tv_max
						tv_myline1 = MLINE(f_myhis,x)
						IF AT("NAME",UPPER(tv_myline1)) > 0
							IF AT("=",tv_myline1) > 0
								FOR x2= AT("=",tv_myline1) TO LEN(tv_myline1)
									tv_letter = SUBSTR(tv_myline1,x2,1)
									IF tv_letter = "0" .OR. tv_letter = "1" .OR. tv_letter = "2" .OR. tv_letter = "3" .OR. ;
											tv_letter = "4" .OR. tv_letter = "5" .OR. tv_letter = "6" .OR. tv_letter = "7" .OR. ;
											tv_letter = "8" .OR. tv_letter = "9"
										numcach = numcach + tv_letter
									ENDIF
								NEXT
							ENDIF
							EXIT
						ENDIF

					NEXT
					IF VAL(numcach) > mynummax
						mynummax = VAL(numcach)
					ENDIF
					*

				ENDIF
			ELSE
				GOTO TOP
			ENDIF
			
			IF .NOT. myrec2 = 0 .AND. .NOT. myrec2 > RECCOUNT()
				GOTO myrec2
			ENDIF

			SELECT t38
			
		ENDSCAN
		GOTO TOP

		IF .NOT. myrec = 0 .AND. .NOT. myrec > RECCOUNT()
			GOTO myrec
		ENDIF

		IF mynum <= mynummax
			mynum = mynummax + 1
		ENDIF

		p1 = STRTRAN(p1,"<AUTONUMBER>",ALLTRIM(STR(mynum)))
		p1 = STRTRAN(p1,"<autonumber>",ALLTRIM(STR(mynum)))
		
	ENDIF
	
	SELECT (myalias)
	GOTO nrecord
	
	RETURN p1


	

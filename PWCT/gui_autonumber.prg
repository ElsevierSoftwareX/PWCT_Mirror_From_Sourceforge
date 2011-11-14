FUNCTION sys_autonumber(p1)
LOCAL myfile,idf_file,myrec,mynum,TRF_FILE,X,MYIIDARRAY,DOADD,myrec2,tv_myline1,tv_max,numcach,x2
myalias = ALIAS()
	IF AT("<AUTONUMBER>",UPPER(p1)) > 0
	myfile = MLINE(m_files,apage)
	idf_file = alltrim(myfile)
	TRF_FILE = STRTRAN(IDF_FILE,"IDF","TRF")
	
	DIMENSION MYIIDARRAY(1)
	MYIIDARRAY(1) = "0"
	
		mynum = 0 						&& the number to increment based on control count
		mynummax = 0 				 && the maximum number extracted from controls names
		
		SELECT t38
		myrec = RECNO()
		GOTO TOP
	SCAN
	      SELECT t46
	      myrec2 = RECNO()
				GOTO top
				locate FOR UPPER(ALLTRIM(f_iid)) == UPPER(ALLTRIM(T38->STEPINTERID))
				IF FOUND()
					myline1 = MLINE(F_MYHIS,9)
					
								IF UPPER(ALLTRIM(MYLINE1)) == UPPER(ALLTRIM(TRF_FILE))
									
										DOADD = .T.
										FOR X = 1 TO ALEN(MYIIDARRAY)
											IF MYIIDARRAY(X) = F_IID
												DOADD = .F.
											ENDIF
										NEXT
										IF DOADD = .T.
										  mynum = mynum + 1
											DIMENSION MYIIDARRAY(ALEN(MYIIDARRAY)+1)
											MYIIDARRAY(ALEN(MYIIDARRAY)) = F_IID
										ENDIF
												
												* check control name and get the number
												tv_max = MEMLINES(f_myhis)
											  numcach = ""
												FOR x = 10 TO tv_max
													tv_myline1 = MLINE(F_MYHIS,x)
													IF AT("NAME",UPPER(tv_myline1)) > 0
														IF AT("=",tv_myline1) > 0
															FOR x2= AT("=",tv_myline1) TO LEN(tv_myline1)
																tv_letter = SUBSTR(tv_myline1,x2,1)
																IF tv_letter = "0" .or. tv_letter = "1" .or. tv_letter = "2" .or. tv_letter = "3" .or. ;
																	 tv_letter = "4" .or. tv_letter = "5" .or. tv_letter = "6" .or. tv_letter = "7" .or. ;
																	 tv_letter = "8" .or. tv_letter = "9"
														 	 	numcach = numcach + tv_letter
															  ENDIF
															NEXT
														endif
														exit
													ENDIF
													
												next
												IF VAL(numcach) > mynummax 
													mynummax = VAL(numcach)
												endif
												* 
																			
								ENDIF
				ELSE
					GOTO top					
				ENDIF
				IF .not. myrec2 = 0 .and. .not. myrec2 > RECCOUNT()
						GOTO myrec2
				ENDIF
				
				SELECT T38
	ENDSCAN
	GOTO top
	
	IF .not. myrec = 0 .and. .not. myrec > RECCOUNT()
	GOTO myrec
	ENDIF
	
	IF mynum <= mynummax
		mynum = mynummax + 1
	endif
	
	p1 = STRTRAN(P1,"<AUTONUMBER>",ALLTRIM(STR(MYNUM)))
	p1 = STRTRAN(P1,"<autonumber>",ALLTRIM(STR(MYNUM)))
			 		ENDIF
			 		SELECT (myalias)
RETURN p1
			 		
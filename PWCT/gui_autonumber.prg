FUNCTION sys_autonumber(p1)
LOCAL myfile,idf_file,myrec,mynum,TRF_FILE,X,MYIIDARRAY,DOADD
myalias = ALIAS()
	IF AT("<AUTONUMBER>",UPPER(p1)) > 0
	myfile = MLINE(m_files,apage)
	idf_file = alltrim(myfile)
	TRF_FILE = STRTRAN(IDF_FILE,"IDF","TRF")
	
	DIMENSION MYIIDARRAY(1)
	MYIIDARRAY(1) = "0"
	
		mynum = 1
		SELECT t38
		myrec = RECNO()
		GOTO TOP
	SCAN
	      SELECT t46
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
																			
								ENDIF
				ENDIF
				SELECT T38
	ENDSCAN
	GOTO myrec
	
	p1 = STRTRAN(P1,"<AUTONUMBER>",ALLTRIM(STR(MYNUM)))
		p1 = STRTRAN(P1,"<autonumber>",ALLTRIM(STR(MYNUM)))
			 		ENDIF
			 		SELECT (myalias)
RETURN p1
			 		
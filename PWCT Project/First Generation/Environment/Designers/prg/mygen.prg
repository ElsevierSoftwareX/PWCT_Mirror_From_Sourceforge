*:******************************************************************************
*:
*: Procedure File D:\PWCTSRC\PWCT\PRG\MYGEN.PRG
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
*:   mygen
*:******************************************************************************
*:
*: Class:mygenerator  BaseClass: CUSTOM
*:
*:******************************************************************************
DEFINE CLASS mygenerator AS CUSTOM
	nettype = 1 && mother network , 2 sub network
	PROCEDURE write_network()
		LOCAL myfile,mydetails
		myfile = GETFILE("SSF","File","Create",0,"Generate Network Server File")
		IF .NOT. EMPTY(myfile)
			SELECT t27
			IF THIS.nettype = 1
				mydetails = CHR(13) + ;
					" DoubleS Server    : " + ALLTRIM(reg1 ) + CHR(13) + ;
					" Super Data Server : " + ALLTRIM(reg2 ) + CHR(13) + ;
					" Super Code Server : " + ALLTRIM(reg3 ) + CHR(13) + ;
					" Super Veto Server : " + ALLTRIM(reg4 ) + CHR(13) + ;
					" Master     Server : " + ALLTRIM(reg5 ) + CHR(13) + ;
					" Connection Server : " + ALLTRIM(reg6 )
			ELSE
				mydetails = CHR(13) + ;
					" Data Server : " + ALLTRIM(reg2 ) + CHR(13) + ;
					" Code Server : " + ALLTRIM(reg3 ) + CHR(13) + ;
					" Veto Server : " + ALLTRIM(reg4 ) + CHR(13) + ;
					" Master     Server : " + ALLTRIM(reg5 ) + CHR(13) + ;
					" Connection Server : " + ALLTRIM(reg6 )
			ENDIF
			SELECT 0
			USE ss3.sss ALIAS mynicefile
			IF FILE(myfile)
				DELETE FILE (myfile)
			ENDIF
			COPY TO (myfile)
			USE
			SELECT 0
			USE (myfile)
			GOTO 4
			REPLACE reg12 WITH mydetails
			USE
		ENDIF
		RETURN

	PROCEDURE write_master()
		LOCAL myfile,mydetails
		myfile = GETFILE("SSF","File","Create",0,"Generate Master Server File")
		IF .NOT. EMPTY(myfile)
			SELECT t27
			mydetails = CHR(13) +  "Servers : "
			SELECT t28
			SET FILTER TO  (netid = t27->netid)
			GOTO TOP
			DO WHILE .NOT. EOF()
				mydetails = mydetails + ALLTRIM(sername)
				IF .NOT. RECCOUNT() = RECNO()
					mydetails = mydetails + " , "
				ENDIF
				SKIP 1
			ENDDO
			SET FILTER TO
			GOTO TOP
			SELECT 0
			USE ss5.sss ALIAS mynicefile
			IF FILE(myfile)
				DELETE FILE (myfile)
			ENDIF
			COPY TO (myfile)
			USE
			SELECT 0
			USE (myfile)
			GOTO 4
			REPLACE reg12 WITH mydetails
			USE
		ENDIF
		RETURN

	PROCEDURE write_connection()
		LOCAL myfile,mydetails
		myfile = GETFILE("SSF","File","Create",0,"Generate Connection Server File")
		IF .NOT. EMPTY(myfile)
			SELECT t27
			GOTO TOP
			mydetails = CHR(13) + "Networks : "
			DO WHILE .NOT. EOF()
				mydetails = mydetails + ALLTRIM(netname)
				IF .NOT. RECCOUNT() = RECNO()
					mydetails = mydetails + " , "
				ENDIF
				SKIP 1
			ENDDO
			GOTO TOP
			SELECT 0
			USE ss4.sss ALIAS mynicefile
			IF FILE(myfile)
				DELETE FILE (myfile)
			ENDIF
			COPY TO (myfile)
			USE
			SELECT 0
			USE (myfile)
			GOTO 4
			REPLACE reg12 WITH mydetails
			USE
		ENDIF
		RETURN
ENDDEFINE

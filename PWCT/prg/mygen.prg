DEFINE CLASS mygenerator as Custom
nettype = 1 && mother network , 2 sub network
PROCEDURE write_network()
LOCAL myfile,mydetails
myfile = GETFILE("SSF","File","Create",0,"Generate Network Server File")
IF .not. EMPTY(myfile)
    SELECT t27
    IF this.nettype = 1
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
	replace reg12 WITH mydetails
    USE
ENDIF
RETURN

PROCEDURE write_master()
LOCAL myfile,mydetails
myfile = GETFILE("SSF","File","Create",0,"Generate Master Server File")
IF .not. EMPTY(myfile)
    SELECT t27
    mydetails = CHR(13) +  "Servers : " 
    SELECT t28
    SET FILTER TO  (NETID = t27->NETID)
    GOTO top
    DO WHILE .not. EOF()
        mydetails = mydetails + ALLTRIM(sername) 
        IF .not. RECCOUNT() = recno()
    		mydetails = mydetails + " , " 
	    ENDIF
	SKIP 1
    ENDDO
    SET filter to
    GOTO top
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
	replace reg12 WITH mydetails
    USE
ENDIF
RETURN

PROCEDURE write_connection()
LOCAL myfile,mydetails
myfile = GETFILE("SSF","File","Create",0,"Generate Connection Server File")
IF .not. EMPTY(myfile)
    SELECT t27
    GOTO top
    mydetails = CHR(13) + "Networks : " 
    DO WHILE .not. EOF()
    mydetails = mydetails + ALLTRIM(netname) 
	    IF .not. RECCOUNT() = recno()
    		mydetails = mydetails + " , " 
	    ENDIF
    SKIP 1
    ENDDO
    GOTO top
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
	replace reg12 WITH mydetails
    USE
ENDIF
RETURN
ENDDEFINE

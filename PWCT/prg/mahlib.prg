*----------------------------------------*
DEFINE CLASS SYSTEM_FILES AS Custom 
PROCEDURE SYSTEM_READ()
LOCAL MYFILE
MYFILE = GETFILE("DSF")
IF EMPTY(MYFILE)
RETURN
ENDIF
SELECT T27
DELETE ALL
PACK
SELECT T28
DELETE ALL
PACK
SELECT 0
USE (MYFILE) ALIAS MYOFILE
GOTO TOP
DO WHILE .NOT. EOF()
   IF REG1 = 1
      SELECT T27
      APPEND BLANK 
      REPLACE NETID WITH MYOFILE->REG2
      REPLACE NETNAME WITH MYOFILE->REG3
      REPLACE REG1 WITH MYOFILE->REG5
      REPLACE REG2 WITH MYOFILE->REG6
      REPLACE REG3 WITH MYOFILE->REG7
      REPLACE REG4 WITH MYOFILE->REG8
      REPLACE REG5 WITH MYOFILE->REG9
      REPLACE REG6 WITH MYOFILE->REG10
      SELECT MYOFILE
   ENDIF
   IF REG1 = 2
      SELECT T28
      APPEND BLANK 
      REPLACE NETID WITH MYOFILE->REG2
      REPLACE SERNAME WITH MYOFILE->REG3
      REPLACE SERFILE WITH MYOFILE->REG4
      SELECT MYOFILE
   ENDIF
SKIP 1
ENDDO
USE
RETURN
PROCEDURE SYSTEM_WRITE()
LOCAL MYFILE
MYFILE = GETFILE("DSF")
IF EMPTY(MYFILE)
RETURN
ENDIF
SELECT T29
DELETE ALL
PACK
SELECT T27
GOTO TOP
DO WHILE .NOT. EOF()
	SELECT T29
	APPEND BLANK 
	REPLACE REG1  WITH  1
	REPLACE REG2  WITH  T27->NETID
	REPLACE REG3  WITH  T27->NETNAME
	replace reg5  WITH  T27->REG1
	replace reg6  WITH  T27->REG2
	replace reg7  WITH  T27->REG3
	replace reg8  WITH  T27->REG4
	replace reg9  WITH  T27->REG5
	replace reg10 WITH  T27->REG6
	SELECT T27
SKIP 1
ENDDO
GOTO TOP
SELECT T28
GOTO TOP
DO WHILE .NOT. EOF()
	SELECT T29
	APPEND BLANK 
	REPLACE REG1 WITH 2
	REPLACE REG2 WITH T28->NETID
	REPLACE REG3 WITH T28->SERNAME
	REPLACE REG4 WITH T28->SERFILE
    SELECT T28
SKIP 1
ENDDO
GOTO TOP
SELECT T29
IF FILE(myfile)
DELETE FILE (myfile)
ENDIF
COPY TO (MYFILE)
MESSAGEBOX("System Saved",0,"DoubleS System Manager")
RETURN
ENDDEFINE
*----------------------------------------*
DEFINE CLASS SERVER_WRITER AS Custom 
 server_file = ""
 server_name = ""
 server_mask = "SS.SSS"
 mynetworks_variables_array   = 0
 mynetworks_resistances_array = 0
 mynetworks_messages_array    = 0
 mynetwork_variables_array    = 0
 mynetwork_resistances_array  = 0
 mynetwork_messages_array     = 0
 atom_open                    = 0       
 atom_close                   = 0       
 shell_open                   = 0     
 shell_close                  = 0       
 subshell_open                = 0
 subshell_close               = 0
 electron_add                 = 0
 electron_delete              = 0
 electron_read                = 0
 electron_change              = 0
 vessel_open                  = 0
 vessel_close                 = 0
 Reaction_open                = 0
 Reaction_close               = 0
 Circuit_Start                = 0
 Circuit_End                  = 0
 Branch_Start                 = 0
 Branch_End                   = 0
 Resistance_Start             = 0
 Resistance_End               = 0
 Veto_request                 = 0
 Veto_accepted                = 0
 Veto_refused                 = 0
 PROCEDURE create_server()
  LOCAL MYFILE
  MYFILE = this.server_mask
  SELECT 0
  USE (MYFILE)
  IF FILE(THIS.SERVER_FILE)
  DELETE FILE (THIS.SERVER_FILE)
  ENDIF
  COPY TO (THIS.SERVER_FILE)
  USE (THIS.SERVER_FILE)
  SET DELETE OFF
  IF THIS.SERVER_MASK = "SS.SSS"
    GOTO 48
  ENDIF
  IF THIS.SERVER_MASK = "SS2.SSS"
    GOTO 50
  ENDIF
  replace reg1 WITH this.server_name
   IF this.mynetworks_variables_array   = 0 .AND. this.mynetwork_variables_array    = 0
  GOTO 4
  DELETE
 ENDIF
 IF this.mynetworks_resistances_array = 0 .AND. this.mynetwork_resistances_array  = 0
  GOTO 5
  DELETE
 ENDIF
 IF this.mynetworks_messages_array    = 0 .AND. this.mynetwork_messages_array     = 0
  GOTO 6
  DELETE
 ENDIF
  IF this.atom_open                    = 0       
   GOTO 20
  DELETE
 ENDIF
  IF this.atom_close                   = 0       
   GOTO 21
  DELETE
 ENDIF
  IF this.shell_open                   = 0     
   GOTO 22
  DELETE
 ENDIF
  IF this.shell_close                  = 0       
   GOTO 23
  DELETE
 ENDIF
  IF this.subshell_open                = 0
   GOTO 24
  DELETE
 ENDIF
  IF this.subshell_close               = 0
   GOTO 25
  DELETE
 ENDIF
  IF this.electron_add                 = 0
   GOTO 26
  DELETE
 ENDIF
  IF this.electron_delete              = 0
   GOTO 27
  DELETE
 ENDIF
  IF this.electron_read                = 0
   GOTO 28
  DELETE
 ENDIF
  IF this.electron_change              = 0
   GOTO 29
  DELETE
 ENDIF
  IF this.vessel_open                  = 0
   GOTO 30
  DELETE
 ENDIF
 IF this.vessel_close                 = 0
  GOTO 31
  DELETE
 ENDIF
  IF this.Reaction_open                = 0
   GOTO 32
  DELETE
 ENDIF
  IF this.Reaction_close               = 0
   GOTO 33
  DELETE
 ENDIF
  IF this.Circuit_Start                = 0
   GOTO 34
  DELETE
 ENDIF
  IF this.Circuit_End                  = 0
   GOTO 35
  DELETE
 ENDIF
  IF this.Branch_Start                 = 0
   GOTO 36
  DELETE
 ENDIF
  IF this.Branch_End                   = 0
   GOTO 37
  DELETE
 ENDIF
  IF this.Resistance_Start             = 0
   GOTO 38
  DELETE
 ENDIF
  IF this.Resistance_End               = 0
   GOTO 39
  DELETE
 ENDIF
  IF this.Veto_request                 = 0
   GOTO 40
  DELETE
 ENDIF
  IF this.Veto_accepted                = 0
   GOTO 41
  DELETE
 ENDIF
  IF this.Veto_refused                 = 0
   GOTO 42
  DELETE
 ENDIF
  PACK
   USE
  RETURN
ENDDEFINE
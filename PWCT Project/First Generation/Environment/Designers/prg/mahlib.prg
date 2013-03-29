*:******************************************************************************
*:
*: Procedure File D:\PWCTSRC\PWCT\PRG\MAHLIB.PRG
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
*:   mahlib
*----------------------------------------*
*:******************************************************************************
*:
*: Class:system_files  BaseClass: CUSTOM
*:
*:******************************************************************************
DEFINE CLASS system_files AS CUSTOM
	PROCEDURE system_read()
		LOCAL myfile
		myfile = GETFILE("DSF")
		IF EMPTY(myfile)
			RETURN
		ENDIF
		SELECT t27
		DELETE ALL
		PACK
		SELECT t28
		DELETE ALL
		PACK
		SELECT 0
		USE (myfile) ALIAS myofile
		GOTO TOP
		DO WHILE .NOT. EOF()
			IF reg1 = 1
				SELECT t27
				APPEND BLANK
				REPLACE netid WITH myofile->reg2
				REPLACE netname WITH myofile->reg3
				REPLACE reg1 WITH myofile->reg5
				REPLACE reg2 WITH myofile->reg6
				REPLACE reg3 WITH myofile->reg7
				REPLACE reg4 WITH myofile->reg8
				REPLACE reg5 WITH myofile->reg9
				REPLACE reg6 WITH myofile->reg10
				SELECT myofile
			ENDIF
			IF reg1 = 2
				SELECT t28
				APPEND BLANK
				REPLACE netid WITH myofile->reg2
				REPLACE sername WITH myofile->reg3
				REPLACE serfile WITH myofile->reg4
				SELECT myofile
			ENDIF
			SKIP 1
		ENDDO
		USE
		RETURN
	PROCEDURE system_write()
		LOCAL myfile
		myfile = GETFILE("DSF")
		IF EMPTY(myfile)
			RETURN
		ENDIF
		SELECT t29
		DELETE ALL
		PACK
		SELECT t27
		GOTO TOP
		DO WHILE .NOT. EOF()
			SELECT t29
			APPEND BLANK
			REPLACE reg1  WITH  1
			REPLACE reg2  WITH  t27->netid
			REPLACE reg3  WITH  t27->netname
			REPLACE reg5  WITH  t27->reg1
			REPLACE reg6  WITH  t27->reg2
			REPLACE reg7  WITH  t27->reg3
			REPLACE reg8  WITH  t27->reg4
			REPLACE reg9  WITH  t27->reg5
			REPLACE reg10 WITH  t27->reg6
			SELECT t27
			SKIP 1
		ENDDO
		GOTO TOP
		SELECT t28
		GOTO TOP
		DO WHILE .NOT. EOF()
			SELECT t29
			APPEND BLANK
			REPLACE reg1 WITH 2
			REPLACE reg2 WITH t28->netid
			REPLACE reg3 WITH t28->sername
			REPLACE reg4 WITH t28->serfile
			SELECT t28
			SKIP 1
		ENDDO
		GOTO TOP
		SELECT t29
		IF FILE(myfile)
			DELETE FILE (myfile)
		ENDIF
		COPY TO (myfile)
		MESSAGEBOX("System Saved",0,"DoubleS System Manager")
		RETURN
ENDDEFINE
*----------------------------------------*
*:******************************************************************************
*:
*: Class:server_writer  BaseClass: CUSTOM
*:
*:******************************************************************************
DEFINE CLASS server_writer AS CUSTOM
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
	reaction_open                = 0
	reaction_close               = 0
	circuit_start                = 0
	circuit_end                  = 0
	branch_start                 = 0
	branch_end                   = 0
	resistance_start             = 0
	resistance_end               = 0
	veto_request                 = 0
	veto_accepted                = 0
	veto_refused                 = 0
	PROCEDURE create_server()
		LOCAL myfile
		myfile = THIS.server_mask
		SELECT 0
		USE (myfile)
		IF FILE(THIS.server_file)
			DELETE FILE (THIS.server_file)
		ENDIF
		COPY TO (THIS.server_file)
		USE (THIS.server_file)
		SET DELETE OFF
		IF THIS.server_mask = "SS.SSS"
			GOTO 48
		ENDIF
		IF THIS.server_mask = "SS2.SSS"
			GOTO 50
		ENDIF
		REPLACE reg1 WITH THIS.server_name
		IF THIS.mynetworks_variables_array   = 0 .AND. THIS.mynetwork_variables_array    = 0
			GOTO 4
			DELETE
		ENDIF
		IF THIS.mynetworks_resistances_array = 0 .AND. THIS.mynetwork_resistances_array  = 0
			GOTO 5
			DELETE
		ENDIF
		IF THIS.mynetworks_messages_array    = 0 .AND. THIS.mynetwork_messages_array     = 0
			GOTO 6
			DELETE
		ENDIF
		IF THIS.atom_open                    = 0
			GOTO 20
			DELETE
		ENDIF
		IF THIS.atom_close                   = 0
			GOTO 21
			DELETE
		ENDIF
		IF THIS.shell_open                   = 0
			GOTO 22
			DELETE
		ENDIF
		IF THIS.shell_close                  = 0
			GOTO 23
			DELETE
		ENDIF
		IF THIS.subshell_open                = 0
			GOTO 24
			DELETE
		ENDIF
		IF THIS.subshell_close               = 0
			GOTO 25
			DELETE
		ENDIF
		IF THIS.electron_add                 = 0
			GOTO 26
			DELETE
		ENDIF
		IF THIS.electron_delete              = 0
			GOTO 27
			DELETE
		ENDIF
		IF THIS.electron_read                = 0
			GOTO 28
			DELETE
		ENDIF
		IF THIS.electron_change              = 0
			GOTO 29
			DELETE
		ENDIF
		IF THIS.vessel_open                  = 0
			GOTO 30
			DELETE
		ENDIF
		IF THIS.vessel_close                 = 0
			GOTO 31
			DELETE
		ENDIF
		IF THIS.reaction_open                = 0
			GOTO 32
			DELETE
		ENDIF
		IF THIS.reaction_close               = 0
			GOTO 33
			DELETE
		ENDIF
		IF THIS.circuit_start                = 0
			GOTO 34
			DELETE
		ENDIF
		IF THIS.circuit_end                  = 0
			GOTO 35
			DELETE
		ENDIF
		IF THIS.branch_start                 = 0
			GOTO 36
			DELETE
		ENDIF
		IF THIS.branch_end                   = 0
			GOTO 37
			DELETE
		ENDIF
		IF THIS.resistance_start             = 0
			GOTO 38
			DELETE
		ENDIF
		IF THIS.resistance_end               = 0
			GOTO 39
			DELETE
		ENDIF
		IF THIS.veto_request                 = 0
			GOTO 40
			DELETE
		ENDIF
		IF THIS.veto_accepted                = 0
			GOTO 41
			DELETE
		ENDIF
		IF THIS.veto_refused                 = 0
			GOTO 42
			DELETE
		ENDIF
		PACK
		USE
		RETURN
ENDDEFINE

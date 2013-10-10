*:******************************************************************************
*:
*: Procedure File D:\PWCTSRC\PWCT\PRG\SERVERBRAIN.PRG
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
*:   serverbrain
* EDIT CUSTOM SHELL & CUSTOM SUBSHELL
LOCAL o
IF s_menu == "edit_shell"
	fs_sw = 1
	s_menu = "0"

	o = myswform.oletree
	IF !ISNULL(myswform.oletree.SELECTEDITEM)
		myvar = o.SELECTEDITEM.KEY
		SELECT 2
		LOCATE FOR ALLTRIM(shellhandle) == ALLTRIM(myvar)
		IF FOUND()
			SELECT 1
			LOCATE FOR ALLTRIM(atomhandle) == ALLTRIM(t2->atomhandle)
			SELECT 2
			v_shell = INPUTBOX(sysmsg(239),sysmsg(240),shellname)
			IF EMPTY(ALLTRIM(v_shell))
				*stmsg("Empty shell name is not allowed")
				RETURN
			ENDIF
			SELECT 2
			v_shell = ALLTRIM(v_shell)
			REPLACE shellname WITH ALLTRIM(v_shell)
			o.SELECTEDITEM.TEXT = ALLTRIM(v_shell)
			RETURN
		ELSE
			GOTO BOTTOM
			stmsg(sysmsg(241))
			RETURN
		ENDIF
	ELSE
		mymsg = stmsg(sysmsg(142))
		RETURN
	ENDIF
ENDIF

IF s_menu == "edit_subshell"

	fs_sw = 1
	s_menu = "0"

	o = myswform.oletree
	IF !ISNULL(myswform.oletree.SELECTEDITEM)
		myvar = o.SELECTEDITEM.KEY
		SELECT 3
		LOCATE FOR UPPER(ALLTRIM(subshellhandle)) == UPPER(ALLTRIM(myvar))
		IF FOUND()
			SELECT 2
			LOCATE FOR ALLTRIM(shellhandle) == ALLTRIM(t3->shellhandle)
			SELECT 1
			LOCATE FOR ALLTRIM(atomhandle) == ALLTRIM(t2->atomhandle)
			SELECT 3
			v_shell = INPUTBOX(sysmsg(243),sysmsg(244),subshellname)
			IF EMPTY(ALLTRIM(v_shell))
				*	stmsg("Empty Subshell name is not allowed")
				RETURN
			ENDIF
			SELECT 3
			v_shell = ALLTRIM(v_shell)
			REPLACE subshellname WITH ALLTRIM(v_shell)
			o.SELECTEDITEM.TEXT = ALLTRIM(v_shell)
			RETURN
		ELSE
			GOTO BOTTOM
			stmsg(sysmsg(245))
			RETURN
		ENDIF
	ELSE
		mymsg =stmsg(sysmsg(242))
		RETURN
	ENDIF
ENDIF
* CREATE CUSTOM SHELL & CUSTOM SUBSHELL
IF s_menu == "subshell_custom"
	fs_sw = 1
	s_menu = "0"
	v_shell = INPUTBOX(sysmsg(243),sysmsg(246))
	IF EMPTY(v_shell)
		RETURN
	ELSE
		v_shell = ALLTRIM(v_shell)
	ENDIF
	o = myswform.oletree
	IF !ISNULL(myswform.oletree.SELECTEDITEM)
		myvar = o.SELECTEDITEM.KEY
		SELECT 2
		GOTO TOP
		LOCATE FOR UPPER(ALLTRIM(shellhandle)) == UPPER(ALLTRIM(myvar))
		IF FOUND()
			myhandle = ALLTRIM(myvar)
			myhandle = LEFT(myhandle,LEN(myhandle)-1) + "1_"+UPPER(v_shell)
			SELECT 3
			GOTO TOP
			LOCATE FOR UPPER(ALLTRIM(subshellname)) == UPPER(ALLTRIM(v_shell))
			IF .NOT. FOUND()
				kk=		o.nodes.ADD(myvar,4,myhandle,v_shell,0)
				kk.IMAGE = "dbf"
				SELECT 3
				APPEND BLANK
				REPLACE shellhandle WITH myvar
				REPLACE subshellname WITH v_shell
				REPLACE subshellhandle WITH myhandle
			ELSE
				GOTO BOTTOM
				stmsg("Subshell name duplication is not allowed")
			ENDIF
		ELSE
			GOTO BOTTOM
			stmsg(sysmsg(248))
		ENDIF
	ELSE
		stmsg(sysmsg(242))
	ENDIF
	RETURN
ENDIF
IF s_menu == "shell_custom"
	fs_sw = 1
	s_menu = "0"
	v_shell = INPUTBOX(sysmsg(239),sysmsg(249))
	IF EMPTY(v_shell)
		RETURN
	ELSE
		v_shell = ALLTRIM(v_shell)
	ENDIF
	o = myswform.oletree
	IF !ISNULL(myswform.oletree.SELECTEDITEM)
		myvar = o.SELECTEDITEM.KEY
		SELECT 1
		GOTO TOP
		LOCATE FOR UPPER(ALLTRIM(atomhandle)) == UPPER(ALLTRIM(myvar))
		IF FOUND()
			FOR s = 1 TO LEN(atomhandle)
				IF SUBSTR(atomhandle,s,1) = "_"
					myatomnum = VAL(SUBSTR(atomhandle,2,s-2))
					EXIT
				ENDIF
			NEXT
			s = ALLTRIM(STR(myatomnum)) + "_"
			myhandle = "2"+s+"00_"+UPPER(v_shell)
			SELECT 2
			GOTO TOP
			LOCATE FOR UPPER(ALLTRIM(shellname)) == UPPER(ALLTRIM(v_shell))
			IF .NOT. FOUND()
				kk =	o.nodes.ADD("2"+s+"1_",4,myhandle,v_shell,0)
				kk.IMAGE = "db"
				SELECT 2
				APPEND BLANK
				REPLACE atomhandle WITH "2"+s+"1_"
				REPLACE shellname WITH v_shell
				REPLACE shellhandle WITH myhandle
			ELSE
				GOTO BOTTOM
				stmsg("Shell name duplication is not allowed" )
			ENDIF
		ELSE
			GOTO BOTTOM
			stmsg(sysmsg(251))
		ENDIF
	ELSE
		stmsg(sysmsg(242))
	ENDIF
	RETURN
ENDIF
* tool bar events
IF s_tool == "CUT"
	s_tool = "0"


	*SYS(1500,"_med_cut","_medit")
	IF APPLICATION.ACTIVEFORM.NAME = "RPWIFORM"
		APPLICATION.ACTIVEFORM.command10.CLICK
		RETURN
	ENDIF
	KEYBOARD CHR(24)
ENDIF
IF s_tool == "COPY"
	s_tool = "0"



	*SYS(1500,"_med_copy","_medit")
	IF APPLICATION.ACTIVEFORM.NAME = "RPWIFORM"
		APPLICATION.ACTIVEFORM.command8.CLICK
		RETURN
	ENDIF

	KEYBOARD CHR(3)
ENDIF
IF s_tool == "PASTE"
	s_tool = "0"



	IF APPLICATION.ACTIVEFORM.NAME = "RPWIFORM"
		APPLICATION.ACTIVEFORM.command9.CLICK
		RETURN
	ENDIF
	*SYS(1500,"_med_paste","_medit")
	KEYBOARD CHR(22)
ENDIF
IF s_tool == "NEW"
	s_tool = "0"
	*Do FORM NEWFILE.SCX
	s_menu = "1_1"
	RETURN
ENDIF
IF s_tool == "OPEN"
	s_tool = "0"
	s_menu = "1_2"
ENDIF
IF s_tool == "SAVE"
	s_tool = "0"
	s_menu = "1_4"
ENDIF

IF s_tool == "K"
	fs_sw = 1
	s_tool = "0"
	o = myswform.oletree
	IF !ISNULL(myswform.oletree.SELECTEDITEM)
		myvar = o.SELECTEDITEM.KEY
		SELECT 1
		LOCATE FOR ALLTRIM(atomhandle) == ALLTRIM(myvar)
		IF FOUND()
			FOR s = 1 TO LEN(atomhandle)
				IF SUBSTR(atomhandle,s,1) = "_"
					myatomnum = VAL(SUBSTR(atomhandle,2,s-2))
					EXIT
				ENDIF
			NEXT
			s = ALLTRIM(STR(myatomnum)) + "_"
			myhandle = "2"+s+"11_"
			SELECT 2
			LOCATE FOR ALLTRIM(shellhandle) == ALLTRIM(myhandle)
			IF .NOT. FOUND()
				kk =	o.nodes.ADD("2"+s+"1_",4,myhandle,"K",0)
				kk.IMAGE = "db"
				SELECT 2
				APPEND BLANK
				REPLACE atomhandle WITH "2"+s+"1_"
				REPLACE shellname WITH "K"
				REPLACE shellhandle WITH myhandle
			ELSE
				stmsg(sysmsg(252)+ "(" + ALLTRIM(t1->atomname) + ")")
			ENDIF
		ELSE
			GOTO BOTTOM
			stmsg(sysmsg(251))
		ENDIF
	ELSE
		stmsg(sysmsg(242))
	ENDIF
	RETURN
ENDIF
IF s_tool == "L"
	fs_sw = 1
	s_tool = "0"
	o = myswform.oletree
	IF !ISNULL(myswform.oletree.SELECTEDITEM)
		myvar = o.SELECTEDITEM.KEY
		SELECT 1
		LOCATE FOR ALLTRIM(atomhandle) == ALLTRIM(myvar)
		IF FOUND()
			FOR s = 1 TO LEN(atomhandle)
				IF SUBSTR(atomhandle,s,1) = "_"
					myatomnum = VAL(SUBSTR(atomhandle,2,s-2))
					EXIT
				ENDIF
			NEXT
			s = ALLTRIM(STR(myatomnum)) + "_"
			myhandle = "2"+s+"12_"
			SELECT 2
			LOCATE FOR ALLTRIM(shellhandle) == ALLTRIM(myhandle)
			IF .NOT. FOUND()
				kk = o.nodes.ADD("2"+s+"1_",4,myhandle,"L",0)
				kk.IMAGE = "db"
				SELECT 2
				APPEND BLANK
				REPLACE atomhandle WITH "2"+s+"1_"
				REPLACE shellname WITH "L"
				REPLACE shellhandle WITH myhandle
			ELSE
				stmsg(sysmsg(253) + "(" + ALLTRIM(t1->atomname) + ")")
			ENDIF
		ELSE
			GOTO BOTTOM
			stmsg(sysmsg(251))
		ENDIF
	ELSE
		stmsg(sysmsg(242))
	ENDIF
	RETURN
ENDIF
IF s_tool == "M"
	fs_sw = 1
	s_tool = "0"
	o = myswform.oletree
	IF !ISNULL(myswform.oletree.SELECTEDITEM)
		myvar = o.SELECTEDITEM.KEY
		SELECT 1
		LOCATE FOR ALLTRIM(atomhandle) == ALLTRIM(myvar)
		IF FOUND()
			FOR s = 1 TO LEN(atomhandle)
				IF SUBSTR(atomhandle,s,1) = "_"
					myatomnum = VAL(SUBSTR(atomhandle,2,s-2))
					EXIT
				ENDIF
			NEXT
			s = ALLTRIM(STR(myatomnum)) + "_"
			myhandle = "2"+s+"13_"
			SELECT 2
			LOCATE FOR ALLTRIM(shellhandle) == ALLTRIM(myhandle)
			IF .NOT. FOUND()
				kk=		o.nodes.ADD("2"+s+"1_",4,myhandle,"M",0)
				kk.IMAGE = "db"
				SELECT 2
				APPEND BLANK
				REPLACE atomhandle WITH "2"+s+"1_"
				REPLACE shellname WITH "M"
				REPLACE shellhandle WITH myhandle
			ELSE
				stmsg(sysmsg(254)+ "(" + ALLTRIM(t1->atomname) + ")")
			ENDIF
		ELSE
			GOTO BOTTOM
			stmsg(sysmsg(251))
		ENDIF
	ELSE
		stmsg(sysmsg(242))
	ENDIF
	RETURN
ENDIF
IF s_tool == "N"
	fs_sw = 1
	s_tool = "0"
	o = myswform.oletree
	IF !ISNULL(myswform.oletree.SELECTEDITEM)
		myvar = o.SELECTEDITEM.KEY
		SELECT 1
		LOCATE FOR ALLTRIM(atomhandle) == ALLTRIM(myvar)
		IF FOUND()
			FOR s = 1 TO LEN(atomhandle)
				IF SUBSTR(atomhandle,s,1) = "_"
					myatomnum = VAL(SUBSTR(atomhandle,2,s-2))
					EXIT
				ENDIF
			NEXT
			s = ALLTRIM(STR(myatomnum)) + "_"
			myhandle = "2"+s+"14_"
			SELECT 2
			LOCATE FOR ALLTRIM(shellhandle) == ALLTRIM(myhandle)
			IF .NOT. FOUND()
				kk=			o.nodes.ADD("2"+s+"1_",4,myhandle,"N",0)
				kk.IMAGE = "db"
				SELECT 2
				APPEND BLANK
				REPLACE atomhandle WITH "2"+s+"1_"
				REPLACE shellname WITH "N"
				REPLACE shellhandle WITH myhandle
			ELSE
				stmsg(sysmsg(255) + "(" + ALLTRIM(t1->atomname) + ")")
			ENDIF
		ELSE
			GOTO BOTTOM
			stmsg(sysmsg(251))
		ENDIF
	ELSE
		stmsg(sysmsg(242))
	ENDIF
	RETURN
ENDIF
IF s_tool == "O"
	fs_sw = 1
	s_tool = "0"
	o = myswform.oletree
	IF !ISNULL(myswform.oletree.SELECTEDITEM)
		myvar = o.SELECTEDITEM.KEY
		SELECT 1
		LOCATE FOR ALLTRIM(atomhandle) == ALLTRIM(myvar)
		IF FOUND()
			FOR s = 1 TO LEN(atomhandle)
				IF SUBSTR(atomhandle,s,1) = "_"
					myatomnum = VAL(SUBSTR(atomhandle,2,s-2))
					EXIT
				ENDIF
			NEXT
			s = ALLTRIM(STR(myatomnum)) + "_"
			myhandle = "2"+s+"15_"
			SELECT 2
			LOCATE FOR ALLTRIM(shellhandle) == ALLTRIM(myhandle)
			IF .NOT. FOUND()
				kk=		o.nodes.ADD("2"+s+"1_",4,myhandle,"O",0)
				kk.IMAGE = "db"

				SELECT 2
				APPEND BLANK
				REPLACE atomhandle WITH "2"+s+"1_"
				REPLACE shellname WITH "O"
				REPLACE shellhandle WITH myhandle
			ELSE
				stmsg(sysmsg(256)+ "(" + ALLTRIM(t1->atomname) + ")")
			ENDIF
		ELSE
			GOTO BOTTOM
			stmsg("No Atom Selected in Server Tree")
		ENDIF
	ELSE
		stmsg("No Item Selected in Server Tree")
	ENDIF

	RETURN
ENDIF
IF s_tool == "P"
	fs_sw = 1
	s_tool = "0"
	o = myswform.oletree
	IF !ISNULL(myswform.oletree.SELECTEDITEM)
		myvar = o.SELECTEDITEM.KEY
		SELECT 1
		LOCATE FOR ALLTRIM(atomhandle) == ALLTRIM(myvar)
		IF FOUND()
			FOR s = 1 TO LEN(atomhandle)
				IF SUBSTR(atomhandle,s,1) = "_"
					myatomnum = VAL(SUBSTR(atomhandle,2,s-2))
					EXIT
				ENDIF
			NEXT
			s = ALLTRIM(STR(myatomnum)) + "_"
			myhandle = "2"+s+"16_"
			SELECT 2
			LOCATE FOR ALLTRIM(shellhandle) == ALLTRIM(myhandle)
			IF .NOT. FOUND()
				kk=			o.nodes.ADD("2"+s+"1_",4,myhandle,"P",0)
				kk.IMAGE = "db"
				SELECT 2
				APPEND BLANK
				REPLACE atomhandle WITH "2"+s+"1_"
				REPLACE shellname WITH "P"
				REPLACE shellhandle WITH myhandle
			ELSE
				stmsg(sysmsg(257) +"(" + ALLTRIM(t1->atomname) + ")")
			ENDIF
		ELSE
			GOTO BOTTOM
			stmsg(sysmsg(251))
		ENDIF
	ELSE
		stmsg(sysmsg(242))
	ENDIF
	RETURN
ENDIF
IF s_tool == "Q"
	fs_sw = 1
	s_tool = "0"
	o = myswform.oletree
	IF !ISNULL(myswform.oletree.SELECTEDITEM)
		myvar = o.SELECTEDITEM.KEY
		SELECT 1
		LOCATE FOR ALLTRIM(atomhandle) == ALLTRIM(myvar)
		IF FOUND()
			FOR s = 1 TO LEN(atomhandle)
				IF SUBSTR(atomhandle,s,1) = "_"
					myatomnum = VAL(SUBSTR(atomhandle,2,s-2))
					EXIT
				ENDIF
			NEXT
			s = ALLTRIM(STR(myatomnum)) + "_"
			myhandle = "2"+s+"17_"
			SELECT 2
			LOCATE FOR ALLTRIM(shellhandle) == ALLTRIM(myhandle)
			IF .NOT. FOUND()
				kk=	o.nodes.ADD("2"+s+"1_",4,myhandle,"Q",0)
				kk.IMAGE = "db"
				SELECT 2
				APPEND BLANK
				REPLACE atomhandle WITH "2"+s+"1_"
				REPLACE shellname WITH "Q"
				REPLACE shellhandle WITH myhandle
			ELSE
				stmsg(sysmsg(258)+"(" + ALLTRIM(t1->atomname) + ")")
			ENDIF
		ELSE
			GOTO BOTTOM
			stmsg(sysmsg(251))
		ENDIF
	ELSE
		stmsg(sysmsg(242))
	ENDIF

	RETURN
ENDIF
IF s_tool == "S"
	fs_sw = 1
	s_tool = "0"
	o = myswform.oletree
	IF !ISNULL(myswform.oletree.SELECTEDITEM)
		myvar = o.SELECTEDITEM.KEY
		SELECT 2
		LOCATE FOR ALLTRIM(shellhandle) == ALLTRIM(myvar)
		IF FOUND()
			myhandle = ALLTRIM(myvar)
			myhandle = LEFT(myhandle,LEN(myhandle)-1) + "1_"
			SELECT 3
			LOCATE FOR ALLTRIM(subshellhandle) == ALLTRIM(myhandle)
			IF .NOT. FOUND()
				kk=		o.nodes.ADD(myvar,4,myhandle,"S",0)
				kk.IMAGE = "dbf"

				SELECT 3
				APPEND BLANK
				REPLACE shellhandle WITH myvar
				REPLACE subshellname WITH "S"
				REPLACE subshellhandle WITH myhandle
			ELSE
				stmsg(sysmsg(259) +"(" + ALLTRIM(t2->shellname) + ")")
			ENDIF
		ELSE
			GOTO BOTTOM
			stmsg(sysmsg(248))
		ENDIF
	ELSE
		stmsg(sysmsg(242))
	ENDIF
	RETURN
ENDIF
IF s_tool == "P2"
	fs_sw = 1
	s_tool = "0"
	o = myswform.oletree
	IF !ISNULL(myswform.oletree.SELECTEDITEM)
		myvar = o.SELECTEDITEM.KEY
		SELECT 2
		LOCATE FOR ALLTRIM(shellhandle) == ALLTRIM(myvar)
		IF FOUND()
			myhandle = ALLTRIM(myvar)
			myhandle = LEFT(myhandle,LEN(myhandle)-1) + "2_"
			SELECT 3
			LOCATE FOR ALLTRIM(subshellhandle) == ALLTRIM(myhandle)
			IF .NOT. FOUND()
				kk=			o.nodes.ADD(myvar,4,myhandle,"P",0)
				kk.IMAGE = "dbf"
				SELECT 3
				APPEND BLANK
				REPLACE shellhandle WITH myvar
				REPLACE subshellname WITH "P"
				REPLACE subshellhandle WITH myhandle
			ELSE
				stmsg(sysmsg(260) +"(" + ALLTRIM(t2->shellname) + ")")
			ENDIF
		ELSE
			GOTO BOTTOM
			stmsg(sysmsg(248))
		ENDIF
	ELSE
		stmsg(sysmsg(242))
	ENDIF
	RETURN
ENDIF
IF s_tool == "D"
	fs_sw = 1
	s_tool = "0"
	o = myswform.oletree
	IF !ISNULL(myswform.oletree.SELECTEDITEM)
		myvar = o.SELECTEDITEM.KEY
		SELECT 2
		LOCATE FOR ALLTRIM(shellhandle) == ALLTRIM(myvar)
		IF FOUND()
			myhandle = ALLTRIM(myvar)
			myhandle = LEFT(myhandle,LEN(myhandle)-1) + "3_"
			SELECT 3
			LOCATE FOR ALLTRIM(subshellhandle) == ALLTRIM(myhandle)
			IF .NOT. FOUND()
				kk=		o.nodes.ADD(myvar,4,myhandle,"D",0)
				kk.IMAGE = "dbf"

				*		myswform.oleTree.Nodes.item(alltrim(myhandle)).Selected = .T.
				SELECT 3
				APPEND BLANK
				REPLACE shellhandle WITH myvar
				REPLACE subshellname WITH "D"
				REPLACE subshellhandle WITH myhandle
			ELSE
				stmsg(sysmsg(261) + "(" + ALLTRIM(t2->shellname) + ")")
			ENDIF
		ELSE
			GOTO BOTTOM
			stmsg(sysmsg(248))
		ENDIF
	ELSE
		stmsg(sysmsg(242))
	ENDIF
	RETURN
ENDIF
IF s_tool == "F"
	fs_sw = 1
	s_tool = "0"
	o = myswform.oletree
	IF !ISNULL(myswform.oletree.SELECTEDITEM)
		myvar = o.SELECTEDITEM.KEY
		SELECT 2
		LOCATE FOR ALLTRIM(shellhandle) == ALLTRIM(myvar)
		IF FOUND()
			myhandle = ALLTRIM(myvar)
			myhandle = LEFT(myhandle,LEN(myhandle)-1) + "4_"
			SELECT 3
			LOCATE FOR ALLTRIM(subshellhandle) == ALLTRIM(myhandle)
			IF .NOT. FOUND()
				kk=		o.nodes.ADD(myvar,4,myhandle,"F",0)
				kk.IMAGE = "dbf"

				SELECT 3
				APPEND BLANK
				REPLACE shellhandle WITH myvar
				REPLACE subshellname WITH "F"
				REPLACE subshellhandle WITH myhandle
			ELSE
				stmsg(sysmsg(262) +"(" + ALLTRIM(t2->shellname) + ")")
			ENDIF
		ELSE
			GOTO BOTTOM
			stmsg(sysmsg(248))
		ENDIF
	ELSE
		stmsg(sysmsg(242))
	ENDIF
	RETURN
ENDIF

IF s_tool == "CLOSE"
	myswform.RELEASE
	RETURN
ENDIF

* SS SYSTEM EVENTS

* menu bar events


IF s_menu == "6_2"
	s_menu = "1_0"
	DO FORM about.scx
ENDIF

IF s_menu == "3_4_1"
	s_menu = "1_0"
	s_mem = 1
	o = myswform.oletree
	IF !ISNULL(myswform.oletree.SELECTEDITEM)
		myvar = o.SELECTEDITEM.KEY
		SELECT 3
		LOCATE FOR ALLTRIM(subshellhandle) == ALLTRIM(myvar)
		IF FOUND()
			s_mem2 = subshellname
			SELECT 2
			LOCATE FOR ALLTRIM(shellhandle) == ALLTRIM(t3->shellhandle)
			s_mem3 = shellname
			SELECT 1
			LOCATE FOR ALLTRIM(atomhandle) == ALLTRIM(t2->atomhandle)
			s_mem4 = atomname
		ELSE
			GOTO BOTTOM
			stmsg(sysmsg(265))
			RETURN
		ENDIF
	ELSE
		stmsg(sysmsg(242))
		RETURN
	ENDIF

	DO FORM newelectron.scx

ENDIF

IF s_menu == "3_4_2"
	fs_sw = 1
	s_menu = "1_0"
	s_mem = 2
	o = myswform.oletree
	IF !ISNULL(myswform.oletree.SELECTEDITEM)
		myvar = o.SELECTEDITEM.KEY
		SELECT 3
		LOCATE FOR ALLTRIM(subshellhandle) == ALLTRIM(myvar)
		IF FOUND()
			s_mem2 = subshellname
			SELECT 2
			LOCATE FOR ALLTRIM(shellhandle) == ALLTRIM(t3->shellhandle)
			s_mem3 = shellname
			SELECT 1
			LOCATE FOR ALLTRIM(atomhandle) == ALLTRIM(t2->atomhandle)
			s_mem4 = atomname
		ELSE
			GOTO BOTTOM
			stmsg(sysmsg(265))
			RETURN
		ENDIF
	ELSE
		stmsg(sysmsg(242))
		RETURN
	ENDIF
	DO FORM newelectron.scx
ENDIF

IF s_menu == "3_4_3"
	fs_sw = 1
	s_menu = "1_0"
	s_mem = 3
	o = myswform.oletree
	IF !ISNULL(myswform.oletree.SELECTEDITEM)
		myvar = o.SELECTEDITEM.KEY
		SELECT 3
		LOCATE FOR ALLTRIM(subshellhandle) == ALLTRIM(myvar)
		IF FOUND()
			s_mem2 = subshellname
			SELECT 2
			LOCATE FOR ALLTRIM(shellhandle) == ALLTRIM(t3->shellhandle)
			s_mem3 = shellname
			SELECT 1
			LOCATE FOR ALLTRIM(atomhandle) == ALLTRIM(t2->atomhandle)
			s_mem4 = atomname
		ELSE
			GOTO BOTTOM
			stmsg(sysmsg(265))
			RETURN
		ENDIF
	ELSE
		stmsg(sysmsg(242))
		RETURN
	ENDIF
	DO FORM newelectron.scx
ENDIF


IF s_menu == "1_1"
	s_menu = "1_0"
	IF s_lastactivewindow = 4 .OR. APPLICATION.ACTIVEFORM.NAME = "IPWRITER"

		FOR i = 1 TO APPLICATION.FORMS.COUNT
			IF APPLICATION.FORMS.ITEM(i).NAME = "IPWRITER"
				APPLICATION.FORMS.ITEM(i).command15.CLICK
				EXIT
			ENDIF
		NEXT

		RETURN
	ENDIF
	IF s_lastactivewindow = 3 .OR. APPLICATION.ACTIVEFORM.NAME = "TRANSDFORM"

		FOR i = 1 TO APPLICATION.FORMS.COUNT
			IF APPLICATION.FORMS.ITEM(i).NAME = "TRANSDFORM"
				APPLICATION.FORMS.ITEM(i).menulabel1.CLICK
				EXIT
			ENDIF
		NEXT

		RETURN
	ENDIF
	IF s_lastactivewindow = 2 .OR. APPLICATION.ACTIVEFORM.NAME = "INTERDFORM"

		FOR i = 1 TO APPLICATION.FORMS.COUNT
			IF APPLICATION.FORMS.ITEM(i).NAME = "INTERDFORM"
				APPLICATION.FORMS.ITEM(i).label7.CLICK
				EXIT
			ENDIF
		NEXT

		RETURN
	ENDIF
	DO FORM newfile.scx
ENDIF

IF s_menu == "1_1_1"
	fs_sw = 1
	s_menu = "1_0"
	* duplication test
	SELECT 1
	LOCATE FOR UPPER(ALLTRIM(atomname)) == UPPER(ALLTRIM(s_mem))
	IF FOUND()
		stmsg(sysmsg(266))
		RETURN
	ELSE
		GOTO BOTTOM
	ENDIF
	* create new empty atom
	o = myswform.oletree
	atomsnum = atomsnum + 1
	s = ALLTRIM(STR(atomsnum)) + "_"
	*kk = o.nodes.add("2_",4,"2"+S+"_",alltrim(s_mem),0)
	*kk.image = "vessel"
	*kk = o.nodes.add("2"+S+"_",4,"2"+S+"1_","Shells",0)
	*kk.image = "reaction"
	kk = o.nodes.ADD("2_",4,"2"+s+"1_",ALLTRIM(s_mem),0)
	kk.IMAGE = "vessel"
	SELECT 1
	APPEND BLANK
	REPLACE atomname WITH s_mem
	REPLACE atomhandle WITH "2"+s+"1_"
	myswform.oletree.nodes.ITEM(ALLTRIM(atomhandle)).SELECTED = .T.
ENDIF

IF s_menu == "1_1_2"
	fs_sw = 1
	s_menu = "1_0"
	* duplication test
	SELECT 1
	LOCATE FOR UPPER(ALLTRIM(atomname)) == UPPER(ALLTRIM(s_mem))
	IF FOUND()
		stmsg(sysmsg(266))
		RETURN
	ELSE
		GOTO BOTTOM
	ENDIF
	* create new complete atom
	o = myswform.oletree
	atomsnum = atomsnum + 1
	s = ALLTRIM(STR(atomsnum)) + "_"
	*kk = o.nodes.add("2_",4,"2"+S+"_",alltrim(s_mem),0)
	*kk.image = "vessel"
	*kk = o.nodes.add("2"+S+"_",4,"2"+S+"1_","Shells",0)
	*kk.image = "reaction"
	kk = o.nodes.ADD("2_",4,"2"+s+"1_",ALLTRIM(s_mem),0)
	kk.IMAGE = "vessel"
	kk = o.nodes.ADD("2"+s+"1_",4,"2"+s+"11_","K",0)
	kk.IMAGE = "db"
	kk = o.nodes.ADD("2"+s+"11_",4,"2"+s+"111_","S",0)
	kk.IMAGE = "dbf"
	kk = o.nodes.ADD("2"+s+"11_",4,"2"+s+"112_","P",0)
	kk.IMAGE = "dbf"
	kk = o.nodes.ADD("2"+s+"11_",4,"2"+s+"113_","D",0)
	kk.IMAGE = "dbf"
	kk = o.nodes.ADD("2"+s+"11_",4,"2"+s+"114_","F",0)
	kk.IMAGE = "dbf"
	kk = o.nodes.ADD("2"+s+"1_",4,"2"+s+"12_","L",0)
	kk.IMAGE = "db"
	kk = o.nodes.ADD("2"+s+"12_",4,"2"+s+"121_","S",0)
	kk.IMAGE = "dbf"
	kk = o.nodes.ADD("2"+s+"12_",4,"2"+s+"122_","P",0)
	kk.IMAGE = "dbf"
	kk = o.nodes.ADD("2"+s+"12_",4,"2"+s+"123_","D",0)
	kk.IMAGE = "dbf"
	kk = o.nodes.ADD("2"+s+"12_",4,"2"+s+"124_","F",0)
	kk.IMAGE = "dbf"
	kk = o.nodes.ADD("2"+s+"1_",4,"2"+s+"13_","M",0)
	kk.IMAGE = "db"
	kk = o.nodes.ADD("2"+s+"13_",4,"2"+s+"131_","S",0)
	kk.IMAGE = "dbf"
	kk = o.nodes.ADD("2"+s+"13_",4,"2"+s+"132_","P",0)
	kk.IMAGE = "dbf"
	kk = o.nodes.ADD("2"+s+"13_",4,"2"+s+"133_","D",0)
	kk.IMAGE = "dbf"
	kk = o.nodes.ADD("2"+s+"13_",4,"2"+s+"134_","F",0)
	kk.IMAGE = "dbf"
	kk = o.nodes.ADD("2"+s+"1_",4,"2"+s+"14_","N",0)
	kk.IMAGE = "db"
	kk = o.nodes.ADD("2"+s+"14_",4,"2"+s+"141_","S",0)
	kk.IMAGE = "dbf"
	kk = o.nodes.ADD("2"+s+"14_",4,"2"+s+"142_","P",0)
	kk.IMAGE = "dbf"
	kk = o.nodes.ADD("2"+s+"14_",4,"2"+s+"143_","D",0)
	kk.IMAGE = "dbf"
	kk = o.nodes.ADD("2"+s+"14_",4,"2"+s+"144_","F",0)
	kk.IMAGE = "dbf"
	kk = o.nodes.ADD("2"+s+"1_",4,"2"+s+"15_","O",0)
	kk.IMAGE = "db"
	kk = o.nodes.ADD("2"+s+"15_",4,"2"+s+"151_","S",0)
	kk.IMAGE = "dbf"
	kk = o.nodes.ADD("2"+s+"15_",4,"2"+s+"152_","P",0)
	kk.IMAGE = "dbf"
	kk = o.nodes.ADD("2"+s+"15_",4,"2"+s+"153_","D",0)
	kk.IMAGE = "dbf"
	kk = o.nodes.ADD("2"+s+"15_",4,"2"+s+"154_","F",0)
	kk.IMAGE = "dbf"
	kk = o.nodes.ADD("2"+s+"1_",4,"2"+s+"16_","P",0)
	kk.IMAGE = "db"
	kk = o.nodes.ADD("2"+s+"16_",4,"2"+s+"161_","S",0)
	kk.IMAGE = "dbf"
	kk = o.nodes.ADD("2"+s+"16_",4,"2"+s+"162_","P",0)
	kk.IMAGE = "dbf"
	kk = o.nodes.ADD("2"+s+"16_",4,"2"+s+"163_","D",0)
	kk.IMAGE = "dbf"
	kk = o.nodes.ADD("2"+s+"16_",4,"2"+s+"164_","F",0)
	kk.IMAGE = "dbf"
	kk = o.nodes.ADD("2"+s+"1_",4,"2"+s+"17_","Q",0)
	kk.IMAGE = "db"
	kk = o.nodes.ADD("2"+s+"17_",4,"2"+s+"171_","S",0)
	kk.IMAGE = "dbf"
	kk = o.nodes.ADD("2"+s+"17_",4,"2"+s+"172_","P",0)
	kk.IMAGE = "dbf"
	kk = o.nodes.ADD("2"+s+"17_",4,"2"+s+"173_","D",0)
	kk.IMAGE = "dbf"
	kk = o.nodes.ADD("2"+s+"17_",4,"2"+s+"174_","F",0)
	kk.IMAGE = "dbf"
	* ADDING ATOM DATA TO DATABASE FILES
	SELECT 1
	APPEND BLANK
	REPLACE atomname WITH s_mem
	REPLACE atomhandle WITH "2"+s+"1_"
	* ADDING SHELLS DATA TO SHELLS FILES
	SELECT 2
	APPEND BLANK
	REPLACE atomhandle WITH "2"+s+"1_"
	REPLACE shellname WITH "K"
	REPLACE shellhandle WITH "2"+s+"11_"
	APPEND BLANK
	REPLACE atomhandle WITH "2"+s+"1_"
	REPLACE shellname WITH "L"
	REPLACE shellhandle WITH "2"+s+"12_"
	APPEND BLANK
	REPLACE atomhandle WITH "2"+s+"1_"
	REPLACE shellname WITH "M"
	REPLACE shellhandle WITH "2"+s+"13_"
	APPEND BLANK
	REPLACE atomhandle WITH "2"+s+"1_"
	REPLACE shellname WITH "N"
	REPLACE shellhandle WITH "2"+s+"14_"
	APPEND BLANK
	REPLACE atomhandle WITH "2"+s+"1_"
	REPLACE shellname WITH "O"
	REPLACE shellhandle WITH "2"+s+"15_"
	APPEND BLANK
	REPLACE atomhandle WITH "2"+s+"1_"
	REPLACE shellname WITH "P"
	REPLACE shellhandle WITH "2"+s+"16_"
	APPEND BLANK
	REPLACE atomhandle WITH "2"+s+"1_"
	REPLACE shellname WITH "Q"
	REPLACE shellhandle WITH "2"+s+"17_"
	* ADDING SUBSHELLS DATA TO SUBSHELLS FILES
	SELECT 3
	FOR x = 1 TO 7
		APPEND BLANK
		REPLACE shellhandle WITH "2"+s+"1" +ALLTRIM(STR(x))+ "_"
		REPLACE subshellname WITH "S"
		REPLACE subshellhandle WITH "2"+s+"1"+ALLTRIM(STR(x))+"1_"
		APPEND BLANK
		REPLACE shellhandle WITH "2"+s+"1" +ALLTRIM(STR(x))+ "_"
		REPLACE subshellname WITH "P"
		REPLACE subshellhandle WITH "2"+s+"1"+ALLTRIM(STR(x))+"2_"
		APPEND BLANK
		REPLACE shellhandle WITH "2"+s+"1" +ALLTRIM(STR(x))+ "_"
		REPLACE subshellname WITH "D"
		REPLACE subshellhandle WITH "2"+s+"1"+ALLTRIM(STR(x))+"3_"
		APPEND BLANK
		REPLACE shellhandle WITH "2"+s+"1" +ALLTRIM(STR(x))+ "_"
		REPLACE subshellname WITH "F"
		REPLACE subshellhandle WITH "2"+s+"1" +ALLTRIM(STR(x))+ "4_"
	NEXT
	SELECT 1
	myswform.oletree.nodes.ITEM(ALLTRIM(atomhandle)).SELECTED = .T.
ENDIF

IF s_menu == "3_1"
	fs_sw = 1
	s_menu = "1_0"
	DO FORM newatom
ENDIF
IF s_menu == "3_2_1"
	fs_sw = 1
	s_menu = "1_0"
	s_tool = "K"
ENDIF
IF s_menu == "3_2_2"
	fs_sw = 1
	s_menu = "1_0"
	s_tool = "L"
ENDIF
IF s_menu == "3_2_3"
	fs_sw = 1
	s_menu = "1_0"
	s_tool = "M"
ENDIF
IF s_menu == "3_2_4"
	fs_sw = 1
	s_menu = "1_0"
	s_tool = "N"
ENDIF
IF s_menu == "3_2_5"
	fs_sw = 1
	s_menu = "1_0"
	s_tool = "O"
ENDIF
IF s_menu == "3_2_6"
	fs_sw = 1
	s_menu = "1_0"
	s_tool = "P"
ENDIF
IF s_menu == "3_2_7"
	fs_sw = 1
	s_menu = "1_0"
	s_tool = "Q"
ENDIF

IF s_menu == "3_3_1"
	fs_sw = 1
	s_menu = "1_0"
	s_tool = "S"
ENDIF
IF s_menu == "3_3_2"
	s_menu = "1_0"
	s_tool = "P2"
ENDIF
IF s_menu == "3_3_3"
	fs_sw = 1
	s_menu = "1_0"
	s_tool = "D"
ENDIF
IF s_menu == "3_3_4"
	fs_sw = 1
	s_menu = "1_0"
	s_tool = "F"
ENDIF

IF s_menu == "3_3_*_save"
	fs_sw = 1
	s_menu = "1_0"
	SELECT 4
	myswform.oletree.nodes.ITEM(ALLTRIM(electronhandle)).SELECTED = .T.
	myswform.oletree.SELECTEDITEM.TEXT = ALLTRIM(electronname)
	myswform.oletree.REFRESH
ENDIF


IF s_menu == "3_5"
	s_menu = "1_0"
	myswform.pageframe1.page2.container1.topbtn.CLICK()
ENDIF
IF s_menu == "3_6"
	s_menu = "1_0"
	myswform.pageframe1.page2.container1.prevbtn.CLICK()
ENDIF
IF s_menu == "3_7"
	s_menu = "1_0"
	myswform.pageframe1.page2.container1.nextbtn.CLICK()
ENDIF
IF s_menu == "3_8"
	s_menu = "1_0"
	myswform.pageframe1.page2.container1.lastbtn.CLICK()
ENDIF

IF s_menu == "3_9"
	fs_sw = 1
	s_menu = "1_0"
	IF !ISNULL(myswform.oletree.SELECTEDITEM)
		SELECT 4
		mem_electronhandle = myswform.oletree.SELECTEDITEM.KEY
		LOCATE FOR ALLTRIM(electronhandle) = ALLTRIM(mem_electronhandle)
		IF FOUND()

			s_mem = ALLTRIM(electronname)
			DO FORM editelectron.scx


		ELSE
			GOTO BOTTOM
			stmsg(sysmsg(267))
		ENDIF
	ELSE
		stmsg(sysmsg(242))
	ENDIF
ENDIF

IF s_menu == "3_11"
	fs_sw = 1
	s_menu = "1_0"
	IF !ISNULL(myswform.oletree.SELECTEDITEM)
		SELECT 4
		mem_electronhandle = myswform.oletree.SELECTEDITEM.KEY
		LOCATE FOR ALLTRIM(electronhandle) = ALLTRIM(mem_electronhandle)
		IF FOUND()



			IF .NOT. RECCOUNT() = 0
				mymsg = MESSAGEBOX(sysmsg(139),36,sysmsg(140))
				IF .NOT. mymsg = 6
					RETURN
				ENDIF
				SELECT 4
				myswform.oletree.nodes.REMOVE(ALLTRIM(electronhandle))
				myswform.oletree.REFRESH
				DELETE
				PACK
				GOTO TOP

			ENDIF


		ELSE
			GOTO BOTTOM
			stmsg(sysmsg(267))
		ENDIF
	ELSE
		stmsg(sysmsg(242))
	ENDIF
ENDIF

* edit atom
IF s_menu == "3_10"
	fs_sw = 1
	s_menu = "1_0"
	IF !ISNULL(myswform.oletree.SELECTEDITEM)
		SELECT 1
		mem_atomhandle = myswform.oletree.SELECTEDITEM.KEY
		LOCATE FOR ALLTRIM(atomhandle) = ALLTRIM(mem_atomhandle)
		IF FOUND()
			s_mem5 = myswform.oletree.SELECTEDITEM
			DO FORM editatom.scx
		ELSE
			GOTO BOTTOM
			stmsg(sysmsg(281))
		ENDIF
	ELSE
		stmsg(sysmsg(242))
	ENDIF
ENDIF


IF s_menu == "3_12"
	fs_sw = 1
	* deleting subshell
	s_menu = "1_0"
	o = myswform.oletree
	IF !ISNULL(myswform.oletree.SELECTEDITEM)
		mem_subshellhandle = myswform.oletree.SELECTEDITEM.KEY
		SELECT 3
		LOCATE FOR ALLTRIM(subshellhandle) = ALLTRIM(mem_subshellhandle)
		IF  FOUND()
			mymsg = MESSAGEBOX(sysmsg(268),36,sysmsg(202))
			SELECT 3
			IF .NOT. mymsg = 6
				RETURN
			ENDIF
			o.nodes.REMOVE(mem_subshellhandle)
			DELETE
			PACK
			SELECT 4
			LOCATE FOR ALLTRIM(subshellhandle) = ALLTRIM(mem_subshellhandle)
			DO WHILE FOUND()
				DELETE
				CONTINUE
			ENDDO
			PACK
			GOTO BOTTOM
		ELSE
			GOTO BOTTOM
			stmsg(sysmsg(245))
		ENDIF
	ELSE
		stmsg(sysmsg(242))
	ENDIF
ENDIF

IF s_menu == "3_13"
	fs_sw = 1
	* deleting shell
	s_menu = "1_0"
	o = myswform.oletree
	IF !ISNULL(myswform.oletree.SELECTEDITEM)
		mem_shellhandle = myswform.oletree.SELECTEDITEM.KEY
		SELECT 2
		LOCATE FOR ALLTRIM(shellhandle) = ALLTRIM(mem_shellhandle)
		IF  FOUND()
			mymsg = MESSAGEBOX(sysmsg(269),36,sysmsg(202))
			SELECT 2
			IF .NOT. mymsg = 6
				RETURN
			ENDIF
			DELETE
			PACK
			GOTO BOTTOM
			o.nodes.REMOVE(mem_shellhandle)
			SELECT 3
			LOCATE FOR ALLTRIM(shellhandle) = ALLTRIM(mem_shellhandle)
			DO WHILE FOUND()
				mem_subshellhandle = subshellhandle
				SELECT 4
				LOCATE FOR ALLTRIM(subshellhandle) = ALLTRIM(mem_subshellhandle)
				DO WHILE FOUND()
					DELETE
					CONTINUE
				ENDDO
				PACK
				GOTO BOTTOM
				SELECT 3
				DELETE
				CONTINUE
			ENDDO
			PACK
			GOTO BOTTOM
		ELSE
			GOTO BOTTOM
			stmsg(sysmsg(241))
		ENDIF
	ELSE
		stmsg(sysmsg(242))
	ENDIF
ENDIF

IF s_menu == "3_14"
	fs_sw = 1
	* deleting atom
	s_menu = "1_0"
	o = myswform.oletree
	IF !ISNULL(myswform.oletree.SELECTEDITEM)
		SELECT 1
		mem_atomhandle = myswform.oletree.SELECTEDITEM.KEY
		LOCATE FOR ALLTRIM(atomhandle) = ALLTRIM(mem_atomhandle)
		IF FOUND()
			mymsg = MESSAGEBOX(sysmsg(271),36,sysmsg(202))
			SELECT 1
			IF .NOT. mymsg = 6
				RETURN
			ENDIF
			DELETE
			PACK
			GOTO BOTTOM
			o.nodes.REMOVE(mem_atomhandle)
			SELECT 2
			LOCATE FOR ALLTRIM(atomhandle) = ALLTRIM(mem_atomhandle)
			DO WHILE FOUND()
				mem_shellhandle = shellhandle
				SELECT 3
				LOCATE FOR ALLTRIM(shellhandle) = ALLTRIM(mem_shellhandle)
				DO WHILE FOUND()
					mem_subshellhandle = subshellhandle
					SELECT 4
					LOCATE FOR ALLTRIM(subshellhandle) = ALLTRIM(mem_subshellhandle)
					DO WHILE FOUND()
						DELETE
						CONTINUE
					ENDDO
					PACK
					GOTO BOTTOM
					SELECT 3
					DELETE
					CONTINUE
				ENDDO
				PACK
				GOTO BOTTOM
				SELECT 2
				DELETE
				CONTINUE
			ENDDO
			PACK
			GOTO BOTTOM

		ELSE
			GOTO BOTTOM
			stmsg(sysmsg(281))
		ENDIF
	ELSE
		stmsg(sysmsg(242))
	ENDIF
ENDIF

IF s_menu == "3_10_ok"
	fs_sw = 1
	s_menu = "1_0"
	SELECT 1
	s_mem5.TEXT = ALLTRIM(atomname)
ENDIF

IF s_menu == "3_15"
	fs_sw = 1
	s_menu = "1_0"

	SELECT 1
	IF RECCOUNT() = 0
		mymsg = MESSAGEBOX(sysmsg(150),6,sysmsg(151))
		SELECT 1
	ENDIF
	DO FORM newvessel.scx

ENDIF


IF s_menu == "3_16"
	fs_sw = 1
	s_menu = "1_0"
	o = myswform.oletree
	IF !ISNULL(myswform.oletree.SELECTEDITEM)
		SELECT 5
		mem_vesselhandle = myswform.oletree.SELECTEDITEM.KEY
		LOCATE FOR ALLTRIM(vesselhandle) = ALLTRIM(mem_vesselhandle)
		IF FOUND()


			DO FORM editvessel.scx



		ELSE
			GOTO BOTTOM
			stmsg(sysmsg(272))
		ENDIF
	ELSE
		stmsg(sysmsg(242))
	ENDIF
ENDIF
IF s_menu == "3_17"
	fs_sw = 1
	s_menu = "1_0"
	o = myswform.oletree
	IF !ISNULL(myswform.oletree.SELECTEDITEM)
		SELECT 5
		mem_vesselhandle = myswform.oletree.SELECTEDITEM.KEY
		LOCATE FOR ALLTRIM(vesselhandle) = ALLTRIM(mem_vesselhandle)
		IF FOUND()

			SELECT 5
			IF .NOT. RECCOUNT() = 0
				mymsg = MESSAGEBOX(sysmsg(152),36,sysmsg(140))
				SELECT 5
				IF .NOT. mymsg = 6
					RETURN
				ENDIF


				myswform.oletree.nodes.REMOVE(ALLTRIM(mem_vesselhandle))
				myswform.oletree.REFRESH
				DELETE
				PACK
				SELECT 6
				DELETE ALL FOR ALLTRIM(vesselhandle) = ALLTRIM(mem_vesselhandle)
				PACK
				GOTO TOP
			ENDIF



		ELSE
			GOTO BOTTOM
			stmsg(sysmsg(272))
		ENDIF
	ELSE
		stmsg(sysmsg(242))
	ENDIF
ENDIF
IF s_menu == "3_18"
	s_menu = "1_0"
	myswform.pageframe1.page3.container1.topbtn.CLICK()
ENDIF
IF s_menu == "3_19"
	s_menu = "1_0"
	myswform.pageframe1.page3.container1.prevbtn.CLICK()
ENDIF
IF s_menu == "3_20"
	s_menu = "1_0"
	myswform.pageframe1.page3.container1.nextbtn.CLICK()
ENDIF
IF s_menu == "3_21"
	s_menu = "1_0"
	myswform.pageframe1.page3.container1.lastbtn.CLICK()
ENDIF

* saving edition in  vessel data
IF  s_menu == "vessel_edit_save"
	fs_sw = 1
	s_menu = "1_0"
	SELECT 5
	myswform.oletree.nodes.ITEM(ALLTRIM(vesselhandle)).SELECTED = .T.
	myswform.oletree.SELECTEDITEM.TEXT = ALLTRIM(vesselname)
	myswform.oletree.REFRESH
ENDIF

IF s_menu == "3_22"
	s_menu = "1_0"

	DO FORM newreaction.scx

ENDIF


* saving edition in  reaction data
IF  s_menu == "3_22_save"
	fs_sw = 1
	s_menu = "1_0"
	SELECT 7
	myswform.oletree.nodes.ITEM(ALLTRIM(reactionhandle)).SELECTED = .T.
	myswform.oletree.SELECTEDITEM.TEXT = ALLTRIM(reactionname)
	myswform.oletree.REFRESH

ENDIF

IF s_menu == "3_23"
	fs_sw = 1
	s_menu = "1_0"
	o = myswform.oletree
	IF !ISNULL(myswform.oletree.SELECTEDITEM)
		SELECT 7
		mem_reactionhandle = myswform.oletree.SELECTEDITEM.KEY
		LOCATE FOR ALLTRIM(reactionhandle) = ALLTRIM(mem_reactionhandle)
		IF FOUND()



			DO FORM editreaction.scx



		ELSE
			GOTO BOTTOM
			stmsg(sysmsg(273))
		ENDIF
	ELSE
		stmsg(sysmsg(242))
	ENDIF
ENDIF

IF s_menu == "3_24"
	fs_sw = 1
	s_menu = "1_0"
	o = myswform.oletree
	IF !ISNULL(myswform.oletree.SELECTEDITEM)
		SELECT 7
		mem_reactionhandle = myswform.oletree.SELECTEDITEM.KEY
		LOCATE FOR ALLTRIM(reactionhandle) = ALLTRIM(mem_reactionhandle)
		IF FOUND()


			SELECT 7
			IF .NOT. RECCOUNT() = 0
				mymsg = MESSAGEBOX(sysmsg(166),36,sysmsg(167))
				SELECT 7
				IF .NOT. mymsg = 6
					RETURN
				ENDIF

				myswform.oletree.nodes.REMOVE(ALLTRIM(mem_reactionhandle))
				myswform.oletree.REFRESH
				DELETE
				PACK
				SELECT 8
				DELETE ALL FOR ALLTRIM(reactionhandle) = ALLTRIM(mem_reactionhandle)
				PACK
				GOTO TOP
				SELECT 9
				DELETE ALL FOR ALLTRIM(reactionhandle) = ALLTRIM(mem_reactionhandle)
				PACK
				GOTO TOP
				SELECT 10
				DELETE ALL FOR ALLTRIM(reactionhandle) = ALLTRIM(mem_reactionhandle)
				PACK
				GOTO TOP
				SELECT 11
				DELETE ALL FOR ALLTRIM(reactionhandle) = ALLTRIM(mem_reactionhandle)
				PACK
				GOTO TOP

			ENDIF




		ELSE
			GOTO BOTTOM
			stmsg(sysmsg(273))
		ENDIF
	ELSE
		stmsg(sysmsg(242))
	ENDIF
ENDIF

IF s_menu == "3_25"
	s_menu = "1_0"
	myswform.pageframe1.page4.container1.topbtn.CLICK()
ENDIF

IF s_menu == "3_26"
	s_menu = "1_0"
	myswform.pageframe1.page4.container1.prevbtn.CLICK()
ENDIF

IF s_menu == "3_27"
	s_menu = "1_0"
	myswform.pageframe1.page4.container1.nextbtn.CLICK()
ENDIF

IF s_menu == "3_28"
	s_menu = "1_0"
	myswform.pageframe1.page4.container1.lastbtn.CLICK()
ENDIF
IF s_menu == "Code_New_Circuit"
	s_menu = "1_0"
	DO FORM newcircuit.scx
ENDIF


IF s_menu == "Code_Edit_Circuit"
	fs_sw = 1
	s_menu = "1_0"
	o = myswform.oletree
	IF !ISNULL(myswform.oletree.SELECTEDITEM)
		myvar = o.SELECTEDITEM.KEY
		SELECT 13
		LOCATE FOR ALLTRIM(circuithandle) == ALLTRIM(myvar)
		IF FOUND()
			DO FORM editcircuit.scx
		ELSE
			GOTO BOTTOM
			stmsg(sysmsg(274))
		ENDIF
	ELSE
		stmsg(sysmsg(242))
	ENDIF
ENDIF

IF s_menu == "New_Circuit_Save"
	fs_sw = 1
	SELECT 13
	s_menu = "1_0"
	myswform.oletree.nodes.ITEM(ALLTRIM(circuithandle)).SELECTED = .T.
	myswform.oletree.SELECTEDITEM.TEXT = ALLTRIM(circuitname)
	myswform.oletree.REFRESH
ENDIF

IF s_menu = "Code_Delete_Circuit"
	fs_sw = 1
	s_menu = "1_0"
	o = myswform.oletree
	IF !ISNULL(myswform.oletree.SELECTEDITEM)
		myvar = o.SELECTEDITEM.KEY
		SELECT 13
		LOCATE FOR ALLTRIM(circuithandle) == ALLTRIM(myvar)
		IF FOUND()
			mymsg = MESSAGEBOX(sysmsg(263),36,sysmsg(202))
			SELECT 13
			IF mymsg = 6
				o.nodes.REMOVE(myvar)
				SELECT 14
				LOCATE FOR ALLTRIM(circuithandle) = ALLTRIM(t13->circuithandle)
				IF FOUND()
					DO WHILE FOUND()
						SELECT 15
						DELETE ALL FOR ALLTRIM(branchhandle) = ALLTRIM(t14->branchhandle)
						PACK
						GOTO BOTTOM
						SELECT 14
						DELETE
						CONTINUE
					ENDDO
					PACK
					GOTO BOTTOM
				ENDIF
				SELECT 13
				DELETE
				PACK
				GOTO BOTTOM
			ENDIF
		ELSE
			GOTO BOTTOM
			stmsg(sysmsg(274))
		ENDIF
	ELSE
		stmsg(sysmsg(242))
	ENDIF
ENDIF


IF s_menu == "Code_New_Branch"
	fs_sw = 1
	s_menu = "1_0"

	IF !ISNULL(myswform.oletree.SELECTEDITEM)
		SELECT 13
		LOCATE FOR ALLTRIM(circuithandle) = ALLTRIM(myswform.oletree.SELECTEDITEM.KEY)
		IF FOUND()
			DO FORM newbranch.scx
		ELSE
			mymsg = MESSAGEBOX(sysmsg(182),6,sysmsg(136))
			SELECT 13
		ENDIF
	ELSE
		mymsg = MESSAGEBOX(sysmsg(183),6,sysmsg(136))
		SELECT 13
	ENDIF



ENDIF

IF s_menu == "Code_First_Branch"
	s_menu = "1_0"
	myswform.pageframe1.page5.container1.topbtn.CLICK()
ENDIF
IF s_menu == "Code_Prev_Branch"
	s_menu = "1_0"
	myswform.pageframe1.page5.container1.prevbtn.CLICK()
ENDIF
IF s_menu = "Code_Next_Branch"
	s_menu = "1_0"
	myswform.pageframe1.page5.container1.nextbtn.CLICK()
ENDIF

IF s_menu == "Code_Last_Branch"
	s_menu = "1_0"
	myswform.pageframe1.page5.container1.lastbtn.CLICK()
ENDIF

IF s_menu == "Code_Delete_Branch"
	fs_sw = 1
	s_menu = "1_0"
	o = myswform.oletree
	IF !ISNULL(myswform.oletree.SELECTEDITEM)
		SELECT 14
		mem_branchhandle = myswform.oletree.SELECTEDITEM.KEY
		LOCATE FOR ALLTRIM(branchhandle) = ALLTRIM(mem_branchhandle)
		IF FOUND()

			IF .NOT. RECCOUNT() = 0
				mymsg = MESSAGEBOX(sysmsg(184),36,sysmsg(135))

				IF .NOT. mymsg = 6
					RETURN
				ENDIF
				SELECT 14
				myswform.oletree.nodes.REMOVE(ALLTRIM(branchhandle))
				myswform.oletree.REFRESH
				SELECT 15
				DELETE ALL FOR ALLTRIM(branchhandle) = ALLTRIM(t14->branchhandle)
				PACK
				SELECT 14
				DELETE
				PACK
				GOTO TOP

			ENDIF





		ELSE
			GOTO BOTTOM
			stmsg(sysmsg(275))
		ENDIF
	ELSE
		stmsg(sysmsg(242))
	ENDIF
ENDIF

IF s_menu == "New_Branch_Save"
	fs_sw = 1
	SELECT 14
	s_menu = "1_0"
	myswform.oletree.nodes.ITEM(ALLTRIM(branchhandle)).SELECTED = .T.
	myswform.oletree.SELECTEDITEM.TEXT = ALLTRIM(branchname)
	myswform.oletree.REFRESH
ENDIF

IF s_menu == "Code_Edit_Branch"
	fs_sw = 1
	s_menu = "1_0"
	o = myswform.oletree
	IF !ISNULL(myswform.oletree.SELECTEDITEM)
		SELECT 14
		mem_branchhandle = myswform.oletree.SELECTEDITEM.KEY
		LOCATE FOR ALLTRIM(branchhandle) = ALLTRIM(mem_branchhandle)
		IF FOUND()
			DO FORM editbranch.scx
		ELSE
			GOTO BOTTOM
			stmsg(sysmsg(275))
		ENDIF
	ELSE
		stmsg(sysmsg(242))
	ENDIF
ENDIF


IF s_menu == "New_Resistance_Save"
	fs_sw = 1
	s_menu = "1_0"
	myswform.oletree.nodes.ITEM(ALLTRIM(resistancehandle)).SELECTED = .T.
	myswform.oletree.SELECTEDITEM.TEXT = ALLTRIM(resistancename)
	myswform.oletree.REFRESH
ENDIF

IF s_menu == "Code_First_Resistance"
	s_menu = "1_0"
	myswform.pageframe1.page6.container2.topbtn.CLICK()
ENDIF
IF s_menu == "Code_Prev_Resistance"
	s_menu = "1_0"
	myswform.pageframe1.page6.container2.prevbtn.CLICK()
ENDIF
IF s_menu = "Code_Next_Resistance"
	s_menu = "1_0"
	myswform.pageframe1.page6.container2.nextbtn.CLICK()
ENDIF

IF s_menu == "Code_Last_Resistance"
	s_menu = "1_0"
	myswform.pageframe1.page6.container2.lastbtn.CLICK()
ENDIF

IF s_menu == "Code_Delete_Resistance"
	fs_sw = 1
	s_menu = "1_0"
	o = myswform.oletree
	IF !ISNULL(myswform.oletree.SELECTEDITEM)
		myvar = o.SELECTEDITEM.KEY
		SELECT 15
		LOCATE FOR ALLTRIM(resistancehandle) == ALLTRIM(myvar)
		IF FOUND()

			IF .NOT. RECCOUNT() = 0
				mymsg = MESSAGEBOX(sysmsg(201),36,sysmsg(202))
				IF .NOT. mymsg = 6
					RETURN
				ENDIF
				SELECT 15
				myswform.oletree.nodes.REMOVE(ALLTRIM(resistancehandle))
				myswform.oletree.REFRESH
				DELETE
				PACK
				GOTO TOP

			ENDIF

		ELSE
			GOTO BOTTOM
			stmsg(sysmsg(276))
		ENDIF
	ELSE
		stmsg(sysmsg(242))
	ENDIF
ENDIF

IF s_menu == "Code_Edit_Resistance"
	fs_sw = 1
	s_menu = "1_0"
	o = myswform.oletree
	IF !ISNULL(myswform.oletree.SELECTEDITEM)
		myvar = o.SELECTEDITEM.KEY
		SELECT 15
		LOCATE FOR ALLTRIM(resistancehandle) == ALLTRIM(myvar)
		IF FOUND()
			DO FORM editresistance.scx
		ELSE
			GOTO BOTTOM
			stmsg(sysmsg(276))
		ENDIF
	ELSE
		stmsg(sysmsg(242))
	ENDIF
ENDIF

IF s_menu == "Code_New_Resistance"
	fs_sw = 1
	s_menu = "1_0"

	IF !ISNULL(myswform.oletree.SELECTEDITEM)
		SELECT 14
		LOCATE FOR ALLTRIM(branchhandle) = ALLTRIM(myswform.oletree.SELECTEDITEM.KEY)
		IF FOUND()
			DO FORM newresistance.scx
		ELSE
			mymsg = MESSAGEBOX(sysmsg(199),6,sysmsg(136))
			SELECT 14
		ENDIF
	ELSE
		mymsg = MESSAGEBOX(sysmsg(200),6,sysmsg(136))
		SELECT 14
	ENDIF

ENDIF

IF s_menu == "Main Circuit"
	fs_sw = 1
	s_menu = "1_0"
	DO FORM maincircuit.scx
ENDIF

IF s_menu == "Main Resistance"
	fs_sw = 1
	s_menu = "1_0"
	DO FORM mainresistance.scx
ENDIF
IF s_menu == "Main Switch"
	fs_sw = 1
	s_menu = "1_0"
	DO FORM mainswitch.scx
ENDIF
IF s_menu == "Branch Switch"
	fs_sw = 1
	s_menu = "1_0"
	DO FORM branchswitch.scx
ENDIF
IF s_menu = "DoubleS Library"
	s_menu = "1_0"
	shellexecute(0,"open","HELP\SS_LIB.HTM","","",1)
ENDIF
IF s_menu = "Allegro"
	s_menu = "1_0"
	shellexecute(0,"open","HELP\Allegro.chm","","",1)
ENDIF
IF s_menu = "(x)Harbour"
	s_menu = "1_0"
	shellexecute(0,"open","HELP\(x)Harbour.chm","","",1)
ENDIF
IF s_menu = "MiniGUI"
	s_menu = "1_0"
	shellexecute(0,"open","HELP\MiniGUI.CHM","","",1)
ENDIF
IF s_menu = "TSBrowse"
	s_menu = "1_0"
	shellexecute(0,"open","HELP\TSBrowse.chm","","",1)
ENDIF

IF s_menu = "DoubleS Research"
	s_menu = "1_0"
	shellexecute(0,"open","HELP\DoubleS.pdf","","",1)
ENDIF
IF s_menu = "DoubleS Framework"
	s_menu = "1_0"
	*ShellExecute(0,"open","HELP\PWCTHelp.chm","","",1)
	shellexecute(0,"open","http://doublesvsoop.sourceforge.net","","",1)
ENDIF
IF s_menu = "DoubleS Lecture"
	s_menu = "1_0"
	shellexecute(0,"open","HELP\DoubleS.ppt","","",1)
ENDIF
IF s_menu = "DoubleS Goals"
	s_menu = "1_0"
	shellexecute(0,"open","HELP\DoubleSGOALS.txt","","",1)
ENDIF
IF s_menu = "DoubleS FAQ"
	s_menu = "1_0"
	shellexecute(0,"open","HELP\DoubleSFAQ.TXT","","",1)
ENDIF
IF s_menu = "Supernova"
	s_menu = "1_0"
	shellexecute(0,"open","C:\SSRPWI\Supernova\nova.exe","","",1)
ENDIF
IF s_menu = "ArabicSupernova"
	s_menu = "1_0"
	shellexecute(0,"open",APPLICATION.DEFAULTFILEPATH + "\supernovaar\Simple_IDE.exe","","",1)
ENDIF
IF s_menu = "Calculator"
	s_menu = "1_0"
	shellexecute(0,"open","calc.Exe","","",1)
ENDIF
IF s_menu = "NotePad"
	s_menu = "1_0"
	shellexecute(0,"open","Notepad.Exe","","",1)
ENDIF
IF s_menu = "Paint"
	s_menu = "1_0"
	shellexecute(0,"open","MSpaint.Exe","","",1)
ENDIF
IF s_menu = "New Veto"
	fs_sw = 1
	s_menu = "1_0"
	DO FORM newveto.scx
ENDIF
IF s_menu = "New Goal"
	fs_sw = 1
	s_menu = "1_0"
	DO FORM newgoal.scx
ENDIF
IF s_menu = "Edit Veto"
	fs_sw = 1
	s_menu = "1_0"
	o = myswform.oletree
	IF !ISNULL(myswform.oletree.SELECTEDITEM)
		myvar = o.SELECTEDITEM.KEY
		SELECT 16
		LOCATE FOR ALLTRIM(vetohandle) == ALLTRIM(myvar)
		IF FOUND()
			DO FORM editveto.scx
		ELSE
			GOTO BOTTOM
			stmsg(sysmsg(277))
		ENDIF
	ELSE
		stmsg(sysmsg(242))
	ENDIF
ENDIF
IF s_menu = "Edit Goal"
	fs_sw = 1
	s_menu = "1_0"

	IF sys_showdoubles = .T. && HarbourPWCT & DoubleS
		o = myswform.oletree
		IF !ISNULL(myswform.oletree.SELECTEDITEM)
			myvar = o.SELECTEDITEM.KEY
			SELECT 35
			LOCATE FOR ALLTRIM(goalhandle) == ALLTRIM(myvar)
			IF FOUND()
				DO FORM editgoal.scx
			ELSE
				GOTO BOTTOM
				stmsg(sysmsg(280))
			ENDIF
		ELSE
			stmsg(sysmsg(242))
		ENDIF

	ELSE && RPWI Only
		SELECT 35
		IF RECCOUNT() > 0
			DO FORM editgoal.scx

		ELSE
			stmsg("Sorry, No goal to edit.")
		ENDIF

	ENDIF

ENDIF



IF s_menu == "New_Veto_Save"
	fs_sw = 1
	SELECT 16
	s_menu = "1_0"
	myswform.oletree.nodes.ITEM(ALLTRIM(vetohandle)).SELECTED = .T.
	myswform.oletree.SELECTEDITEM.TEXT = ALLTRIM(vetoname)
	myswform.oletree.REFRESH
ENDIF
IF s_menu == "New_Goal_Save"

	s_menu = "1_0"
	fs_sw = 1
	IF sys_showdoubles = .T.
		SELECT 35
		myswform.oletree.nodes.ITEM(ALLTRIM(goalhandle)).SELECTED = .T.
		myswform.oletree.SELECTEDITEM.TEXT = ALLTRIM(goalname)
		myswform.oletree.REFRESH
	ELSE
		FOR i = 1 TO APPLICATION.FORMS.COUNT
			IF APPLICATION.FORMS.ITEM(i).NAME = "RPWIFORM"
				APPLICATION.FORMS.ITEM(i).SHOW()
				APPLICATION.FORMS.ITEM(i).INIT()
				EXIT
			ENDIF
		NEXT
	ENDIF


ENDIF
IF s_menu = "Delete Veto"
	fs_sw = 1
	s_menu = "1_0"
	s_menu = "1_0"
	o = myswform.oletree
	IF !ISNULL(myswform.oletree.SELECTEDITEM)
		myvar = o.SELECTEDITEM.KEY
		SELECT 16
		LOCATE FOR ALLTRIM(vetohandle) == ALLTRIM(myvar)
		IF FOUND()
			mymsg = MESSAGEBOX(sysmsg(263),36,sysmsg(202))
			SELECT 16
			IF mymsg = 6
				o.nodes.REMOVE(myvar)
				DELETE
				PACK
				GOTO BOTTOM
			ENDIF
		ELSE
			GOTO BOTTOM
			stmsg(sysmsg(277))
		ENDIF
	ELSE
		stmsg(sysmsg(242))
	ENDIF
ENDIF
IF s_menu = "Delete Goal"
	fs_sw = 1
	s_menu = "1_0"

	IF sys_showdoubles = .T. && HarbourPWCT & DoubleS
		o = myswform.oletree
		IF !ISNULL(myswform.oletree.SELECTEDITEM)
			myvar = o.SELECTEDITEM.KEY
			SELECT 35
			LOCATE FOR ALLTRIM(goalhandle) == ALLTRIM(myvar)
			IF FOUND()
				mymsg = MESSAGEBOX(sysmsg(263),36,sysmsg(202))
				SELECT 35
				IF mymsg = 6
					o.nodes.REMOVE(myvar)
					SELECT t38
					DELETE ALL FOR goalid == t33->goalhandle
					GOTO BOTTOM
					SELECT t33
					DELETE
					SELECT t38
					PACK
					GOTO BOTTOM
					SELECT t33
					PACK
					GOTO BOTTOM
				ENDIF
			ELSE
				GOTO BOTTOM
				stmsg(sysmsg(280))
			ENDIF
		ELSE
			stmsg(sysmsg(242))
		ENDIF


	ELSE && RPWI Only
		SELECT 35
		IF RECCOUNT() > 0

			mymsg = MESSAGEBOX(sysmsg(263),36,sysmsg(202))
			SELECT 35
			IF mymsg = 6
				SELECT t38
				DELETE ALL FOR goalid == t33->goalhandle
				GOTO BOTTOM
				SELECT t33
				DELETE
				SELECT t38
				PACK
				GOTO BOTTOM
				SELECT t33
				PACK
				GOTO BOTTOM
			ENDIF

		ELSE
			stmsg("Sorry, No goal to delete.")
		ENDIF

	ENDIF



ENDIF

IF s_menu == "First Veto"
	s_menu = "1_0"
	myswform.pageframe1.page7.container3.topbtn.CLICK()
ENDIF
IF s_menu == "Prev Veto"
	s_menu = "1_0"
	myswform.pageframe1.page7.container3.prevbtn.CLICK()
ENDIF
IF s_menu = "Next Veto"
	s_menu = "1_0"
	myswform.pageframe1.page7.container3.nextbtn.CLICK()
ENDIF

IF s_menu == "Last Veto"
	s_menu = "1_0"
	myswform.pageframe1.page7.container3.lastbtn.CLICK()
ENDIF
IF s_menu == "New Channel"
	fs_sw = 1
	s_menu = "1_0"
	DO FORM newchannel.scx
ENDIF


IF s_menu = "Delete Channel"
	fs_sw = 1
	s_menu = "1_0"
	o = myswform.oletree
	IF !ISNULL(myswform.oletree.SELECTEDITEM)
		myvar = o.SELECTEDITEM.KEY
		SELECT 17
		LOCATE FOR ALLTRIM(channelhandle) == ALLTRIM(myvar)
		IF FOUND()
			mymsg = MESSAGEBOX(sysmsg(263),36,sysmsg(202))
			SELECT 17
			IF mymsg = 6
				o.nodes.REMOVE(myvar)
				DELETE
				PACK
				GOTO BOTTOM
			ENDIF
		ELSE
			GOTO BOTTOM
			stmsg(sysmsg(278))
		ENDIF
	ELSE
		stmsg(sysmsg(242))
	ENDIF
ENDIF
IF s_menu = "Edit Channel"
	s_menu = "1_0"
	o = myswform.oletree
	IF !ISNULL(myswform.oletree.SELECTEDITEM)
		myvar = o.SELECTEDITEM.KEY
		SELECT 17
		LOCATE FOR ALLTRIM(channelhandle) == ALLTRIM(myvar)
		IF FOUND()
			DO FORM editchannel.scx
		ELSE
			GOTO BOTTOM
			stmsg(sysmsg(278))
		ENDIF
	ELSE
		stmsg(sysmsg(242))
	ENDIF
ENDIF
IF s_menu == "New_Channel_Save"
	fs_sw = 1
	SELECT 17
	s_menu = "1_0"
	myswform.oletree.nodes.ITEM(ALLTRIM(channelhandle)).SELECTED = .T.
	myswform.oletree.SELECTEDITEM.TEXT = ALLTRIM(channelname)
	myswform.oletree.REFRESH
ENDIF
IF s_menu = "Sender Veto"
	fs_sw = 1
	s_menu = "1_0"
	DO FORM senderveto.scx
ENDIF
IF s_menu = "Receiver Veto"
	fs_sw = 1
	s_menu = "1_0"
	DO FORM receiverveto.scx
ENDIF
IF s_menu == "New Connection"
	fs_sw = 1
	s_menu = "1_0"
	DO FORM newconnection.scx
ENDIF


IF s_menu == "Edit Connection"
	fs_sw = 1
	s_menu = "1_0"
	o = myswform.oletree
	IF !ISNULL(myswform.oletree.SELECTEDITEM)
		myvar = o.SELECTEDITEM.KEY
		SELECT 18
		LOCATE FOR ALLTRIM(connectionhandle) == ALLTRIM(myvar)
		IF FOUND()
			DO FORM editconnection.scx
		ELSE
			GOTO BOTTOM
			stmsg(sysmsg(279))
		ENDIF
	ELSE
		stmsg(sysmsg(242))
	ENDIF
ENDIF
IF s_menu == "New_Connection_Save"
	fs_sw = 1
	SELECT 18
	s_menu = "1_0"
	myswform.oletree.nodes.ITEM(ALLTRIM(connectionhandle)).SELECTED = .T.
	myswform.oletree.SELECTEDITEM.TEXT = ALLTRIM(connectionname)
	myswform.oletree.REFRESH
ENDIF
IF s_menu = "Delete Connection"
	fs_sw = 1
	s_menu = "1_0"
	o = myswform.oletree
	IF !ISNULL(myswform.oletree.SELECTEDITEM)
		myvar = o.SELECTEDITEM.KEY
		SELECT 18
		LOCATE FOR ALLTRIM(connectionhandle) == ALLTRIM(myvar)
		IF FOUND()
			mymsg = MESSAGEBOX(sysmsg(263),36,sysmsg(202))
			SELECT 18
			IF mymsg = 6
				o.nodes.REMOVE(myvar)
				SELECT 19
				DELETE ALL FOR ALLTRIM(connectionhandle) == ALLTRIM(t18->connectionhandle)
				PACK
				GOTO BOTTOM
				SELECT 18
				DELETE
				PACK
				GOTO BOTTOM
			ENDIF
		ELSE
			GOTO BOTTOM
			stmsg(sysmsg(279))
		ENDIF
	ELSE
		stmsg(sysmsg(242))
	ENDIF
ENDIF
* open server
IF s_menu == "1_2" .OR. FILE(myfiletoopen)

	myfile = myfiletoopen

	
	IF FILE(myfiletoopen)
		lmyfiletoopen = .T.
		myfiletoopen = ""
	ELSE
		lmyfiletoopen = .F.
	ENDIF
	s_menu = "1_0"
	IF  s_lastactivewindow = 4 .OR. APPLICATION.ACTIVEFORM.NAME = "IPWRITER"

		FOR i = 1 TO APPLICATION.FORMS.COUNT
			IF APPLICATION.FORMS.ITEM(i).NAME = "IPWRITER"
				APPLICATION.FORMS.ITEM(i).command3.CLICK
				EXIT
			ENDIF
		NEXT


		RETURN
	ENDIF
	IF s_lastactivewindow = 3 .OR. APPLICATION.ACTIVEFORM.NAME = "TRANSDFORM"

		FOR i = 1 TO APPLICATION.FORMS.COUNT
			IF APPLICATION.FORMS.ITEM(i).NAME = "TRANSDFORM"
				APPLICATION.FORMS.ITEM(i).menulabel2.CLICK
				EXIT
			ENDIF
		NEXT

		RETURN
	ENDIF
	IF s_lastactivewindow = 2 .OR. APPLICATION.ACTIVEFORM.NAME = "INTERDFORM"

		FOR i = 1 TO APPLICATION.FORMS.COUNT
			IF APPLICATION.FORMS.ITEM(i).NAME = "INTERDFORM"
				APPLICATION.FORMS.ITEM(i).label8.CLICK
				EXIT
			ENDIF
		NEXT


		RETURN
	ENDIF
	IF fs_sw = 1
		mymsg = MESSAGEBOX("Save Changes ?",4,"Save")
		IF mymsg = 6
			IF .NOT. mysys_file = "No Name"
				DO FORM upload
				DELETE FILE (mysys_file)
				SELECT 23
				COPY TO (mysys_file)
				GOTO BOTTOM
			ELSE
				IF lmyfiletoopen = .F.
					tv_dfp = APPLICATION.DEFAULTFILEPATH
					APPLICATION.DEFAULTFILEPATH = JUSTPATH(mysys_file)

					myfile = GETFILE("SuperServerFile:SSF","File Name","Save",1,"Save As")
					APPLICATION.DEFAULTFILEPATH = tv_dfp
				ENDIF
				IF .NOT. testfile(myfile,1111) = .T.
					RETURN
				ENDIF
				IF .NOT. EMPTY(myfile)
					myifile = LEFT(myfile,LEN(myfile)-4)+".trf"
					IF FILE(myifile)
						stmsg("Transporter File with the same name already exist in the same folder, it's not possible to have server file & transporter file in the same folder with the same name")
						RETURN
					ENDIF
					myifile = LEFT(myfile,LEN(myfile)-4)+".idf"
					IF FILE(myifile)
						stmsg("Interaction Page File with the same name already exist in the same folder, it's not possible to have server file & Interaction Page file in the same folder with the same name")
						RETURN
					ENDIF
					IF FILE(myfile)
						mymsg = MESSAGEBOX(sysmsg(284),36,sysmsg(285))
						IF mymsg = 6
							DELETE FILE (myfile)
							DO FORM upload
							SELECT 23
							COPY TO (myfile)
							GOTO BOTTOM
							mysys_file = myfile
							myswform.text1.VALUE =  "(File :" + mysys_file + " )"
						ENDIF
					ELSE
						DO FORM upload
						SELECT 23
						COPY TO (myfile)
						GOTO BOTTOM
						mysys_file = myfile
						myswform.text1.VALUE ="(File :" + mysys_file + " )"
					ENDIF
				ENDIF
			ENDIF
		ENDIF
		fs_sw = 0
	ENDIF
	IF s_mem3 = .F.
		IF lmyfiletoopen = .F.
			tv_dfp = APPLICATION.DEFAULTFILEPATH
			APPLICATION.DEFAULTFILEPATH = JUSTPATH(mysys_file)
			myfile = GETFILE("SuperServerFile:SSF","File Name ","Open",0,"Open Server")
			APPLICATION.DEFAULTFILEPATH = tv_dfp
		ENDIF
	ELSE
		myfile = s_mem
		s_mem3 = .F.
		SELECT 0
		myfvar = ALLTRIM(t47->tfile)
		IF LEFT(myfvar,1) = "\"
			myfvar = APPLICATION.DEFAULTFILEPATH + myfvar
		ENDIF
		DO cpzero WITH (myfvar),CPCURRENT(1)
		USE (myfvar)
		COPY TO (s_mem)
		GOTO BOTTOM
		USE
		SELECT t23
	ENDIF
	IF .NOT. testfile(myfile,1111) = .T.
		RETURN
	ENDIF
	IF .NOT. testfile(myfile,22) = .T.
		RETURN
	ENDIF
	IF .NOT. EMPTY(myfile)
		* closing current server before opening another one
		IF win_transd = .T.
			FOR i = 1 TO APPLICATION.FORMS.COUNT
				IF APPLICATION.FORMS.ITEM(i).NAME = "TRANSDFORM"
					APPLICATION.FORMS.ITEM(i).closebtn.CLICK
					EXIT
				ENDIF

			NEXT
		ENDIF

		FOR i = 1 TO APPLICATION.FORMS.COUNT

			IF APPLICATION.FORMS.ITEM(i).NAME = "RPWIFORM"
				APPLICATION.FORMS.ITEM(i).closebtn.CLICK
				EXIT
			ENDIF
		NEXT

		CLOSE DATABASE
		myswform.LOAD()
		myswform.oletree.VISIBLE = .F.
		ft = .T.
		o = myswform.oletree
		o.nodes.REMOVE("2_")
		o.nodes.REMOVE("3_")
		o.nodes.REMOVE("4_")
		o.nodes.REMOVE("5_")
		o.nodes.REMOVE("8_")
		o.nodes.REMOVE("9_")
		o.nodes.REMOVE("10_")
		o.nodes.REMOVE("11_")
		o.imagelist = myswform.oleimages
		s = o.nodes.ADD(,1,"2_","Data Unit : Atoms",0)
		s.IMAGE = "atom"
		s = o.nodes.ADD(,1,"3_","Data Unit : Vessels",0)
		s.IMAGE = "atom"
		s = o.nodes.ADD(,1,"4_","Data Unit : Reactions",0)
		s.IMAGE = "atom"
		s = o.nodes.ADD(,1,"5_","Code Unit : Circuits",0)
		s.IMAGE = "frm"
		s = o.nodes.ADD(,1,"8_","Veto Unit : Vetos",0)
		s.IMAGE = "world"
		s = o.nodes.ADD(,1,"9_","Veto Unit : Channels",0)
		s.IMAGE = "world"
		s = o.nodes.ADD(,1,"10_","Veto Unit : Connections",0)
		s.IMAGE = "world"
		s = o.nodes.ADD(,1,"11_","Goal Unit : Goals",0)
		s.IMAGE = "nicegoal"
		myswform.REFRESH()
		myswform.pageframe1.page1.ACTIVATE()
		myswform.pageframe1.page1.pageframe1.page1.ACTIVATE()
		myswform.pageframe1.page8.olertf.VALUE = ""
		myswform.pageframe1.page8.text1.VALUE = 0
		myswform.pageframe1.page8.combo1.VALUE = 0
		myswform.pageframe1.page8.combo1.DISPLAYVALUE = ""
		* coping server file to t0 file
		SELECT 23
		DELETE ALL
		PACK
		GOTO BOTTOM
		SELECT 24
		DO cpzero WITH (myfile),CPCURRENT(1)
		USE (myfile) ALIAS t24
		GOTO TOP
		FOR x = 1 TO RECCOUNT()
			SELECT 23
			APPEND BLANK
			REPLACE reg1    WITH t24->reg1
			REPLACE reg2    WITH t24->reg2
			REPLACE reg3    WITH t24->reg3
			REPLACE reg4    WITH t24->reg4
			REPLACE reg5    WITH t24->reg5
			REPLACE reg6    WITH t24->reg6
			REPLACE reg7    WITH t24->reg7
			REPLACE reg8    WITH t24->reg8
			REPLACE reg9    WITH t24->reg9
			REPLACE reg10   WITH t24->reg10
			REPLACE reg11   WITH t24->reg11
			REPLACE reg12   WITH t24->reg12
			REPLACE reg13   WITH t24->reg13
			REPLACE reg14   WITH t24->reg14
			REPLACE reg15   WITH t24->reg15
			TRY
				REPLACE exreg1   WITH t24->exreg1
				REPLACE exreg2   WITH t24->exreg2
				REPLACE exreg3   WITH t24->exreg3
				REPLACE exreg4   WITH t24->exreg4
				REPLACE exreg5   WITH t24->exreg5
				REPLACE exreg6   WITH t24->exreg6
			CATCH
			ENDTRY
			REPLACE rectype WITH t24->rectype
			SELECT 24
			SKIP 1
		NEXT
		USE
		SELECT 23
		mysys_file = myfile
		* distributing t0 data to other files
		GOTO TOP
		FOR x = 1 TO RECCOUNT()
			IF t0->rectype = 1
				SELECT 1
				APPEND BLANK
				REPLACE atomname WITH t0->reg1
				REPLACE atomhandle WITH t0->reg2
			ENDIF
			IF t0->rectype = 2
				SELECT 2
				APPEND BLANK
				REPLACE atomhandle  WITH t0->reg1
				REPLACE shellname   WITH t0->reg13
				REPLACE shellhandle WITH t0->reg2
			ENDIF
			IF t0->rectype = 3
				SELECT 3
				APPEND BLANK
				REPLACE shellhandle     WITH t0->reg1
				REPLACE subshellname    WITH t0->reg13
				REPLACE subshellhandle  WITH t0->reg2
			ENDIF
			IF t0->rectype = 4
				SELECT 4
				APPEND BLANK
				REPLACE subshellhandle WITH t0->reg1
				REPLACE electronhandle WITH t0->reg2
				REPLACE electrontype   WITH t0->reg13
				REPLACE electronname   WITH t0->reg3
				REPLACE electrondata   WITH t0->reg12
			ENDIF
			IF t0->rectype = 5
				SELECT 5
				APPEND BLANK
				REPLACE vesselname   WITH t0->reg1
				REPLACE vesselhandle WITH t0->reg2
			ENDIF
			IF t0->rectype = 6
				SELECT 6
				APPEND BLANK
				REPLACE vesselhandle WITH t0->reg1
				REPLACE atomhandle   WITH t0->reg2
			ENDIF
			IF t0->rectype = 7
				SELECT 7
				APPEND BLANK
				REPLACE reactionhandle WITH t0->reg1
				REPLACE reactionname WITH t0->reg2
			ENDIF
			IF t0->rectype = 8
				SELECT 8
				APPEND BLANK
				REPLACE reactionhandle WITH t0->reg1
				REPLACE vesselhandle WITH t0->reg2
			ENDIF
			IF t0->rectype = 9
				SELECT 9
				APPEND BLANK
				REPLACE reactionhandle WITH t0->reg1
				REPLACE atomhandle     WITH t0->reg2
			ENDIF
			IF t0->rectype = 10
				SELECT 10
				APPEND BLANK
				REPLACE reactionhandle WITH t0->reg1
				REPLACE shellname      WITH t0->reg2
			ENDIF
			IF t0->rectype = 11
				SELECT 11
				APPEND BLANK
				REPLACE reactionhandle WITH t0->reg1
				REPLACE subshellname WITH t0->reg2
			ENDIF
			IF t0->rectype = 12
				SELECT 12
				GOTO TOP
				REPLACE maincircuit    WITH t0->reg1
				REPLACE mainresistance WITH t0->reg2
				REPLACE mainswitch     WITH t0->reg14
				REPLACE branchswitch   WITH t0->reg15
			ENDIF
			IF t0->rectype = 13
				SELECT 13
				APPEND BLANK
				REPLACE circuitname    WITH t0->reg1
				REPLACE circuithandle  WITH t0->reg2
				REPLACE mainresistance WITH t0->reg3
				REPLACE mainswitch     WITH t0->reg14
			ENDIF
			IF t0->rectype = 14
				SELECT 14
				APPEND BLANK
				REPLACE branchname    WITH t0->reg1
				REPLACE branchhandle  WITH t0->reg2
				REPLACE circuithandle WITH t0->reg3
				REPLACE parallelto    WITH t0->reg4
				REPLACE branchswitch  WITH t0->reg14
			ENDIF
			IF t0->rectype = 15
				SELECT 15
				APPEND BLANK
				REPLACE resistancename   WITH t0->reg1
				REPLACE resistancehandle WITH t0->reg2
				REPLACE branchhandle     WITH t0->reg3
				REPLACE resistancecode   WITH t0->reg12
			ENDIF
			IF t0->rectype = 16
				SELECT 16
				APPEND BLANK
				REPLACE vetohandle     WITH t0->reg1
				REPLACE vetoname       WITH t0->reg2
				REPLACE vetotype       WITH t0->reg3
				REPLACE circuitname    WITH t0->reg4
				REPLACE branchname     WITH t0->reg5
				REPLACE resistancename WITH t0->reg6
			ENDIF
			IF t0->rectype = 17
				SELECT 17
				APPEND BLANK
				REPLACE channelhandle WITH t0->reg1
				REPLACE channelname   WITH t0->reg2
				REPLACE channeltype   WITH t0->reg3
				REPLACE atomname 		 WITH t0->reg4
				REPLACE shellname 		WITH t0->reg5
				REPLACE subshellname  WITH t0->reg6
			ENDIF
			IF t0->rectype = 18
				SELECT 18
				APPEND BLANK
				REPLACE connectionhandle WITH t0->reg1
				REPLACE connectionname   WITH t0->reg2
				REPLACE connectiontype   WITH t0->reg3
				REPLACE inputchannel     WITH t0->reg4
				REPLACE outputchannel    WITH t0->reg5
				REPLACE receivingveto    WITH t0->reg6
				REPLACE sendingveto      WITH t0->reg7
				REPLACE atomname         WITH t0->reg8
				REPLACE shellname        WITH t0->reg9
				REPLACE subshellname     WITH t0->reg10
				REPLACE electronname     WITH t0->reg11
			ENDIF
			IF t0->rectype = 19
				SELECT 19
				APPEND BLANK
				REPLACE connectionhandle  WITH t0->reg1
				REPLACE SERVERNAME        WITH t0->reg2
			ENDIF
			IF t0->rectype = 20
				SELECT 20
				GOTO TOP
				*append blank
				REPLACE receivingveto WITH t0->reg1
				REPLACE sendingveto   WITH t0->reg2
			ENDIF
			IF t0->rectype = 21
				SELECT 21
				GOTO TOP
				* append blank
				REPLACE serverinfo WITH t0->reg12
			ENDIF
			IF t0->rectype = 22
				SELECT 22
				* append blank
				GOTO TOP
				REPLACE SERVERNAME    WITH t0->reg1
				REPLACE servertype    WITH t0->reg2
				REPLACE eigenvalue    WITH t0->reg3
				REPLACE definedetails WITH t0->reg12
				REPLACE f_c1 WITH t0->reg4
				REPLACE f_c2 WITH t0->reg5
				REPLACE f_n1 WITH VAL(t0->reg6)
				REPLACE f_n2 WITH VAL(t0->reg7)
				REPLACE f_n3 WITH VAL(t0->reg8)
				REPLACE f_n4 WITH VAL(t0->reg9)
				REPLACE f_n5 WITH VAL(t0->reg10)
				REPLACE f_n6 WITH VAL(t0->reg11)
				REPLACE f_n7 WITH VAL(t0->reg13)
				REPLACE f_n8 WITH VAL(t0->exreg6)
			ENDIF
			IF t0->rectype = 23
				atomsnum        = VAL(reg1)
				electronsnum    = VAL(reg2)
				vesselsnum      = VAL(reg3)
				reactionsnum    = VAL(reg4)
				circuitsnum     = VAL(reg5)
				branchsnum      = VAL(reg6)
				resistancesnum  = VAL(reg7)
				vetosnum        = VAL(reg8)
				channelsnum     = VAL(reg9)
				connectionsnum  = VAL(reg10)
				goalsnum				= VAL(reg11)
				stepsnum				= VAL(reg12)
			ENDIF
			IF t0->rectype = 33
				SELECT t33
				APPEND BLANK
				REPLACE goalhandle     WITH t0->reg1
				REPLACE goalname       WITH t0->reg2
				REPLACE goaltype       WITH t0->reg3
				REPLACE circuitname    WITH t0->reg4
				REPLACE branchname     WITH t0->reg5
				REPLACE resistancename WITH t0->reg6
			ENDIF
			IF t0->rectype = 38
				SELECT t38
				APPEND BLANK
				REPLACE goalid     WITH t0->reg1
				REPLACE parentid   WITH t0->reg2
				REPLACE stepid     WITH t0->reg3
				REPLACE stepname   WITH t0->exreg6
				REPLACE stepdata   WITH t0->exreg1
				REPLACE stepana    WITH t0->exreg2
				REPLACE stepinf    WITH t0->exreg3
				REPLACE stepcode   WITH t0->exreg4
				REPLACE stepdis    WITH t0->reg14
				REPLACE stepinfo   WITH t0->exreg5
				REPLACE stephis    WITH t0->reg12
				REPLACE stepinterid WITH t0->reg4
				REPLACE stepinternum WITH VAL(t0->reg5)
			ENDIF
			IF t0->rectype = 46
				SELECT t46
				GOTO TOP
				LOCATE FOR UPPER(ALLTRIM(f_iid)) == UPPER(ALLTRIM(t0->reg1)) && fix problem related to repeated history as a result of bad paste steps code in  goal designer
				IF .NOT. FOUND() 																						&& this problem fixed starting from PWCT 1.8 (Smart)
					APPEND BLANK
					REPLACE f_iid WITH t0->reg1
					REPLACE f_stepid WITH t0->reg2
					REPLACE f_hisdate WITH t0->reg3
					REPLACE f_histime WITH t0->reg4
					REPLACE f_myhis WITH t0->reg12
				ELSE
					GOTO TOP
				ENDIF


			ENDIF
			SELECT 23
			SKIP 1
		NEXT

		o = myswform.oletree
		* adding server data to server tree
		* adding all atoms
		SELECT 1
		GOTO TOP
		FOR x = 1 TO RECCOUNT()
			kk = o.nodes.ADD("2_",4,ALLTRIM(atomhandle),ALLTRIM(atomname),0)
			kk.IMAGE = "vessel"
			*kk = o.nodes.add(alltrim(atomhandle),4,left(alltrim(atomhandle),;
			*						len(alltrim(atomhandle))-1)+"1_","Shells",0)
			*kk.image = "reaction"
			SKIP 1
		NEXT
		* adding all shells
		SELECT 2
		GOTO TOP
		FOR x = 1 TO RECCOUNT()
			kk =	o.nodes.ADD(ALLTRIM(atomhandle),4,;
				ALLTRIM(shellhandle),ALLTRIM(shellname),0)
			kk.IMAGE = "db"
			SKIP 1
		NEXT
		* adding all subshells
		SELECT 3
		GOTO TOP
		FOR x = 1 TO RECCOUNT()
			kk=		o.nodes.ADD(ALLTRIM(shellhandle),4,ALLTRIM(subshellhandle),ALLTRIM(subshellname),0)
			kk.IMAGE = "dbf"
			SKIP 1
		NEXT
		* adding all electrons
		SELECT 4
		GOTO TOP
		FOR x = 1 TO RECCOUNT()
			kk = o.nodes.ADD(ALLTRIM(subshellhandle),4,ALLTRIM(electronhandle),ALLTRIM(electronname),0)
			kk.IMAGE = "electron"
			SKIP 1
		NEXT
		* adding all vessels
		SELECT 5
		GOTO TOP
		FOR x = 1 TO RECCOUNT()
			kk = o.nodes.ADD("3_",4,ALLTRIM(vesselhandle),ALLTRIM(vesselname),0)
			kk.IMAGE = "electron"
			SKIP 1
		NEXT
		* adding all reactions
		SELECT 7
		GOTO TOP
		FOR x = 1 TO RECCOUNT()
			kk = o.nodes.ADD("4_",4,ALLTRIM(reactionhandle),ALLTRIM(reactionname),0)
			kk.IMAGE = "electron"
			SKIP 1
		NEXT
		* adding all circuits
		SELECT 13
		GOTO TOP
		FOR x = 1 TO RECCOUNT()
			kk = myswform.oletree.nodes.ADD("5_",4,ALLTRIM(circuithandle),ALLTRIM(circuitname),0)
			kk.IMAGE = "frm"
			SKIP 1
		NEXT
		* adding all branches
		SELECT 14
		GOTO TOP
		FOR x = 1 TO RECCOUNT()
			kk = myswform.oletree.nodes.ADD(ALLTRIM(circuithandle),4,ALLTRIM(branchhandle),ALLTRIM(branchname),0)
			kk.IMAGE = "dot"
			SKIP 1
		NEXT
		* adding all resistances
		SELECT 15
		GOTO TOP
		FOR x = 1 TO RECCOUNT()
			kk = myswform.oletree.nodes.ADD(ALLTRIM(branchhandle),4,ALLTRIM(resistancehandle),ALLTRIM(resistancename),0)
			kk.IMAGE = "electron"
			SKIP 1
		NEXT
		* adding all vetos
		SELECT 16
		GOTO TOP
		FOR x = 1 TO RECCOUNT()
			kk = myswform.oletree.nodes.ADD("8_",4,ALLTRIM(vetohandle),ALLTRIM(vetoname),0)
			kk.IMAGE = "app"
			SKIP 1
		NEXT
		* adding all goals
		SELECT t33
		GOTO TOP
		FOR x = 1 TO RECCOUNT()
			kk = myswform.oletree.nodes.ADD("11_",4,ALLTRIM(goalhandle),ALLTRIM(goalname),0)
			kk.IMAGE = "app"
			SKIP 1
		NEXT
		* adding all channels
		SELECT 17
		GOTO TOP
		FOR x = 1 TO RECCOUNT()
			kk = myswform.oletree.nodes.ADD("9_",4,ALLTRIM(channelhandle),ALLTRIM(channelname),0)
			kk.IMAGE = "veto"
			SKIP 1
		NEXT
		* adding all connection
		SELECT 18
		GOTO TOP
		FOR x = 1 TO RECCOUNT()
			kk = myswform.oletree.nodes.ADD("10_",4,ALLTRIM(connectionhandle),ALLTRIM(connectionname),0)
			kk.IMAGE = "electron"
			SKIP 1
		NEXT
		myswform.REFRESH()
		myswform.pageframe1.ACTIVEPAGE = 1
		myswform.pageframe1.page1.ACTIVATE()
		myswform.pageframe1.page1.pageframe1.page1.ACTIVATE()
		* moving pointer to first record in all work areas
		FOR x = 1 TO 22
			SELECT (x)
			GOTO TOP
		NEXT
		* adding file name to window title
		myswform.text1.VALUE = "(File :" + mysys_file + " )"
		myswform.oletree.VISIBLE = .T.

		sys_filetopasstoanothervpl = mysys_file


		IF win_rpwi = .F.
			DO FORM rpwi
		ENDIF

		FOR i = 1 TO APPLICATION.FORMS.COUNT

			IF APPLICATION.FORMS.ITEM(i).NAME = "RPWIFORM"
				APPLICATION.FORMS.ITEM(i).SHOW()
				EXIT
			ENDIF
		NEXT




	ENDIF
ENDIF
* NEW SERVER
IF s_menu == "New Server"
	s_menu = "1_0"
	IF fs_sw = 1
		mymsg = MESSAGEBOX("Save Changes ?",4,"Save")
		IF mymsg = 6
			IF .NOT. mysys_file = "No Name"
				DO FORM upload
				DELETE FILE (mysys_file)
				SELECT 23
				COPY TO (mysys_file)
				GOTO BOTTOM
			ELSE
				myfile = GETFILE("SuperServerFile:SSF","File Name","Save",1,"Save As")
				IF .NOT. testfile(myfile,1111) = .T.
					RETURN
				ENDIF
				IF .NOT. EMPTY(myfile)
					myifile = LEFT(myfile,LEN(myfile)-4)+".trf"
					IF FILE(myifile)
						stmsg("Transporter File with the same name already exist in the same folder, it's not possible to have server file & transporter file in the same folder with the same name")
						RETURN
					ENDIF
					myifile = LEFT(myfile,LEN(myfile)-4)+".idf"
					IF FILE(myifile)
						stmsg("Interaction Page File with the same name already exist in the same folder, it's not possible to have server file & Interaction Page file in the same folder with the same name")
						RETURN
					ENDIF
					IF FILE(myfile)
						mymsg = MESSAGEBOX(sysmsg(284),36,sysmsg(285))
						IF mymsg = 6
							DELETE FILE (myfile)
							DO FORM upload
							SELECT 23
							COPY TO (myfile)
							GOTO BOTTOM
							mysys_file = myfile
							myswform.text1.VALUE =  "(File :" + mysys_file + " )"
						ENDIF
					ELSE
						DO FORM upload
						SELECT 23
						COPY TO (myfile)
						GOTO BOTTOM
						mysys_file = myfile
						myswform.text1.VALUE ="(File :" + mysys_file + " )"
					ENDIF
				ENDIF
			ENDIF
		ENDIF
		fs_sw = 0
	ENDIF
	* saving varialble s_mem which will be affected with myswform.load()
	vvar1 = s_mem
	* setting server type
	vvar2 = s_mem2
	IF vvar2 = 1
		vvar3 = "DoubleS Server"
	ENDIF
	IF vvar2 = 2
		vvar3 = "Super Data Server"
	ENDIF
	IF vvar2 = 3
		vvar3 = "Super Code Server"
	ENDIF
	IF vvar2 = 4
		vvar3 = "Super Veto Server"
	ENDIF
	IF vvar2 = 5
		vvar3 = "Network Server"
	ENDIF
	IF vvar2 = 6
		vvar3 = "Master Server"
	ENDIF
	IF vvar2 = 7
		vvar3 = "Slave Server"
	ENDIF
	IF vvar2 = 8
		vvar3 = "Connection Server"
	ENDIF
	IF vvar2 = 9
		vvar3 = "Data Server"
	ENDIF
	IF vvar2 = 10
		vvar3 = "Code Server"
	ENDIF
	IF vvar2 = 11
		vvar3 = "Veto Server"
	ENDIF
	IF vvar2 = 12
		vvar3 = "Procedure Server"
	ENDIF
	IF vvar2 = 13
		vvar3 = "Class Server"
	ENDIF

	* 1 - close server
	IF win_transd = .T.
		FOR i = 1 TO APPLICATION.FORMS.COUNT
			IF APPLICATION.FORMS.ITEM(i).NAME = "TRANSDFORM"
				APPLICATION.FORMS.ITEM(i).closebtn.CLICK
				EXIT
			ENDIF

		NEXT
	ENDIF

	FOR i = 1 TO APPLICATION.FORMS.COUNT

		IF APPLICATION.FORMS.ITEM(i).NAME = "RPWIFORM"
			APPLICATION.FORMS.ITEM(i).closebtn.CLICK
			EXIT
		ENDIF
	NEXT


	CLOSE DATABASE

	myswform.LOAD()
	ft = .T.
	o = myswform.oletree
	o.nodes.REMOVE("2_")
	o.nodes.REMOVE("3_")
	o.nodes.REMOVE("4_")
	o.nodes.REMOVE("5_")
	o.nodes.REMOVE("8_")
	o.nodes.REMOVE("9_")
	o.nodes.REMOVE("10_")
	o.nodes.REMOVE("11_")
	o.imagelist = myswform.oleimages
	s = o.nodes.ADD(,1,"2_","Data Unit : Atoms",0)
	s.IMAGE = "atom"
	s = o.nodes.ADD(,1,"3_","Data Unit : Vessels",0)
	s.IMAGE = "atom"
	s = o.nodes.ADD(,1,"4_","Data Unit : Reactions",0)
	s.IMAGE = "atom"
	s = o.nodes.ADD(,1,"5_","Code Unit : Circuits",0)
	s.IMAGE = "frm"
	s = o.nodes.ADD(,1,"8_","Veto Unit : Vetos",0)
	s.IMAGE = "world"
	s = o.nodes.ADD(,1,"9_","Veto Unit : Channels",0)
	s.IMAGE = "world"
	s = o.nodes.ADD(,1,"10_","Veto Unit : Connections",0)
	s.IMAGE = "world"
	s = o.nodes.ADD(,1,"11_","Goal Unit : Goals",0)
	s.IMAGE = "nicegoal"
	SELECT 22
	REPLACE servertype WITH vvar3
	myswform.pageframe1.ACTIVEPAGE = 1
	myswform.pageframe1.page1.ACTIVATE()
	myswform.pageframe1.page1.pageframe1.page1.ACTIVATE()
	* 2 - create new server
	IF FILE(vvar1)
		DELETE FILE (vvar1)
	ENDIF
	SELECT 23
	COPY TO (vvar1)
	GOTO BOTTOM
	* 3 - adding file name to window title
	myswform.text1.VALUE = "(File :" + vvar1 + " )"
	mysys_file = vvar1
	sys_filetopasstoanothervpl = vvar1

	v_file = ALLTRIM(UPPER(myswform.text1.VALUE))
	v_file = SUBSTR(v_file,2,LEN(v_file)-2)
	v_file = STRTRAN(v_file,"FILE :","")
	*************** Configuration FILE COPYING
	myp = APPLICATION.DEFAULTFILEPATH
	v1 = APPLICATION.DEFAULTFILEPATH + "\config.txt"
	v2 = ALLTRIM(v_file)
	v3 = JUSTPATH(v2)
	v4 = v3 + "\" + "config.txt"
	IF .NOT. FILE(v4)
		COPY FILE (v1) TO (v4)
	ENDIF
	***************


ENDIF

* close server
IF s_menu == "1_3"
	s_menu = "1_0"
	IF s_lastactivewindow = 4 .OR. APPLICATION.ACTIVEFORM.NAME = "IPWRITER"

		FOR i = 1 TO APPLICATION.FORMS.COUNT
			IF APPLICATION.FORMS.ITEM(i).NAME = "IPWRITER"
				APPLICATION.FORMS.ITEM(i).command17.CLICK
				EXIT
			ENDIF
		NEXT


		RETURN
	ENDIF
	IF s_lastactivewindow = 3 .OR. APPLICATION.ACTIVEFORM.NAME = "TRANSDFORM"

		FOR i = 1 TO APPLICATION.FORMS.COUNT
			IF APPLICATION.FORMS.ITEM(i).NAME = "TRANSDFORM"
				APPLICATION.FORMS.ITEM(i).menulabel5.CLICK
				EXIT
			ENDIF
		NEXT


		RETURN
	ENDIF
	IF s_lastactivewindow = 2 .OR.  APPLICATION.ACTIVEFORM.NAME = "INTERDFORM"

		FOR i = 1 TO APPLICATION.FORMS.COUNT
			IF APPLICATION.FORMS.ITEM(i).NAME = "INTERDFORM"
				APPLICATION.FORMS.ITEM(i).label11.CLICK
				EXIT
			ENDIF
		NEXT


		RETURN
	ENDIF
	IF fs_sw = 1
		mymsg = MESSAGEBOX("Save Changes ?",4,"Save")
		IF mymsg = 6
			IF .NOT. mysys_file = "No Name"
				DO FORM upload
				DELETE FILE (mysys_file)
				SELECT 23
				COPY TO (mysys_file)
				GOTO BOTTOM
			ELSE
				myfile = GETFILE("SuperServerFile:SSF","File Name","Save",1,"Save As")
				IF .NOT. testfile(myfile,1111) = .T.
					RETURN
				ENDIF
				IF .NOT. EMPTY(myfile)
					myifile = LEFT(myfile,LEN(myfile)-4)+".trf"
					IF FILE(myifile)
						stmsg("Transporter File with the same name already exist in the same folder, it's not possible to have server file & transporter file in the same folder with the same name")
						RETURN
					ENDIF
					myifile = LEFT(myfile,LEN(myfile)-4)+".idf"
					IF FILE(myifile)
						stmsg("Interaction Page File with the same name already exist in the same folder, it's not possible to have server file & Interaction Page file in the same folder with the same name")
						RETURN
					ENDIF
					IF FILE(myfile)
						mymsg = MESSAGEBOX(sysmsg(284),36,sysmsg(285))
						IF mymsg = 6
							DELETE FILE (myfile)
							DO FORM upload
							SELECT 23
							COPY TO (myfile)
							GOTO BOTTOM
							mysys_file = myfile
							myswform.text1.VALUE =  "(File :" + mysys_file + " )"
						ENDIF
					ELSE
						DO FORM upload
						SELECT 23
						COPY TO (myfile)
						GOTO BOTTOM
						mysys_file = myfile
						myswform.text1.VALUE ="(File :" + mysys_file + " )"
					ENDIF
				ENDIF
			ENDIF
		ENDIF
		fs_sw = 0
	ENDIF
	*mymsg = messagebox(sysmsg(282),36,sysmsg(283))
	*if mymsg = 6
	CLOSE DATABASE
	IF win_transd = .T.
		FOR i = 1 TO APPLICATION.FORMS.COUNT
			IF APPLICATION.FORMS.ITEM(i).NAME = "TRANSDFORM"
				APPLICATION.FORMS.ITEM(i).closebtn.CLICK
				EXIT
			ENDIF

		NEXT

		FOR i = 1 TO APPLICATION.FORMS.COUNT

			IF APPLICATION.FORMS.ITEM(i).NAME = "RPWIFORM"
				APPLICATION.FORMS.ITEM(i).closebtn.CLICK
				EXIT
			ENDIF
		NEXT
	ENDIF



	myswform.LOAD()
	myswform.text1.VALUE = "File : NoName"
	myswform.oletree.VISIBLE = .F.
	ft = .T.
	o = myswform.oletree
	o.nodes.REMOVE("2_")
	o.nodes.REMOVE("3_")
	o.nodes.REMOVE("4_")
	o.nodes.REMOVE("5_")
	o.nodes.REMOVE("8_")
	o.nodes.REMOVE("9_")
	o.nodes.REMOVE("10_")
	o.nodes.REMOVE("11_")
	o.imagelist = myswform.oleimages
	s = o.nodes.ADD(,1,"2_","Data Unit : Atoms",0)
	s.IMAGE = "atom"
	s = o.nodes.ADD(,1,"3_","Data Unit : Vessels",0)
	s.IMAGE = "atom"
	s = o.nodes.ADD(,1,"4_","Data Unit : Reactions",0)
	s.IMAGE = "atom"
	s = o.nodes.ADD(,1,"5_","Code Unit : Circuits",0)
	s.IMAGE = "frm"
	s = o.nodes.ADD(,1,"8_","Veto Unit : Vetos",0)
	s.IMAGE = "world"
	s = o.nodes.ADD(,1,"9_","Veto Unit : Channels",0)
	s.IMAGE = "world"
	s = o.nodes.ADD(,1,"10_","Veto Unit : Connections",0)
	s.IMAGE = "world"
	s = o.nodes.ADD(,1,"11_","Goal Unit : Goals",0)
	s.IMAGE = "nicegoal"
	myswform.pageframe1.ACTIVEPAGE = 1
	myswform.pageframe1.page1.ACTIVATE()
	myswform.pageframe1.page1.pageframe1.page1.ACTIVATE()
	myswform.oletree.VISIBLE = .T.
	myswform.pageframe1.page8.olertf.VALUE = ""
	myswform.pageframe1.page8.text1.VALUE = 0
	myswform.pageframe1.page8.combo1.VALUE = 0
	myswform.pageframe1.page8.combo1.DISPLAYVALUE = ""
	myswform.pageframe1.page10.olertf.VALUE = ""
	SELECT 21
	REPLACE serverinfo WITH ""
	*endif
ENDIF
* save server data
IF s_menu == "1_4"
	s_menu = "1_0"
	IF s_lastactivewindow = 4 .OR. APPLICATION.ACTIVEFORM.NAME = "IPWRITER"

		FOR i = 1 TO APPLICATION.FORMS.COUNT
			IF APPLICATION.FORMS.ITEM(i).NAME = "IPWRITER"
				APPLICATION.FORMS.ITEM(i).command5.CLICK
				EXIT
			ENDIF
		NEXT

		RETURN
	ENDIF
	IF  s_lastactivewindow = 3 .OR. APPLICATION.ACTIVEFORM.NAME = "TRANSDFORM"

		FOR i = 1 TO APPLICATION.FORMS.COUNT
			IF APPLICATION.FORMS.ITEM(i).NAME = "TRANSDFORM"
				APPLICATION.FORMS.ITEM(i).menulabel3.CLICK
				EXIT
			ENDIF
		NEXT

		RETURN
	ENDIF
	IF  s_lastactivewindow = 2 .OR. APPLICATION.ACTIVEFORM.NAME = "INTERDFORM"

		FOR i = 1 TO APPLICATION.FORMS.COUNT
			IF APPLICATION.FORMS.ITEM(i).NAME = "INTERDFORM"
				APPLICATION.FORMS.ITEM(i).label9.CLICK
				EXIT
			ENDIF
		NEXT


		RETURN
	ENDIF
	fs_sw = 0
	IF .NOT. mysys_file = "No Name"
		DO FORM upload
		DELETE FILE (mysys_file)
		SELECT 23
		COPY TO (mysys_file)
		GOTO BOTTOM
	ELSE
		s_menu = "1_5"
	ENDIF
ENDIF
* save as
IF s_menu == "1_5"
	s_menu = "1_0"
	IF s_lastactivewindow = 4 .OR. APPLICATION.ACTIVEFORM.NAME = "IPWRITER"

		FOR i = 1 TO APPLICATION.FORMS.COUNT
			IF APPLICATION.FORMS.ITEM(i).NAME = "IPWRITER"
				APPLICATION.FORMS.ITEM(i).command16.CLICK
				EXIT
			ENDIF
		NEXT


		RETURN
	ENDIF
	IF  s_lastactivewindow = 3 .OR. APPLICATION.ACTIVEFORM.NAME = "TRANSDFORM"

		FOR i = 1 TO APPLICATION.FORMS.COUNT
			IF APPLICATION.FORMS.ITEM(i).NAME =  "TRANSDFORM"
				APPLICATION.FORMS.ITEM(i).menulabel4.CLICK
				EXIT
			ENDIF
		NEXT

		RETURN
	ENDIF
	IF s_lastactivewindow = 2 .OR. APPLICATION.ACTIVEFORM.NAME = "INTERDFORM"

		FOR i = 1 TO APPLICATION.FORMS.COUNT
			IF APPLICATION.FORMS.ITEM(i).NAME = "INTERDFORM"
				APPLICATION.FORMS.ITEM(i).label10.CLICK
				EXIT
			ENDIF
		NEXT

		RETURN
	ENDIF
	fs_sw = 0


	tv_dfp = APPLICATION.DEFAULTFILEPATH
	APPLICATION.DEFAULTFILEPATH = JUSTPATH(mysys_file)
	myfile = GETFILE("SuperServerFile:SSF","File Name","Save",1,"Save As")
	APPLICATION.DEFAULTFILEPATH = tv_dfp
	IF .NOT. testfile(myfile,1111) = .T.
		RETURN
	ENDIF
	IF .NOT. EMPTY(myfile)
		myifile = LEFT(myfile,LEN(myfile)-4)+".trf"
		IF FILE(myifile)
			stmsg("Transporter File with the same name already exist in the same folder, it's not possible to have server file & transporter file in the same folder with the same name")
			RETURN
		ENDIF
		myifile = LEFT(myfile,LEN(myfile)-4)+".idf"
		IF FILE(myifile)
			stmsg("Interaction Page File with the same name already exist in the same folder, it's not possible to have server file & Interaction Page file in the same folder with the same name")
			RETURN
		ENDIF
		IF FILE(myfile)
			mymsg = MESSAGEBOX(sysmsg(284),36,sysmsg(285))
			IF mymsg = 6
				DELETE FILE (myfile)
			ELSE
				RETURN
			ENDIF
		ENDIF

		DO FORM upload
		SELECT 23
		COPY TO (myfile)
		GOTO BOTTOM
		mysys_file = myfile
		myswform.text1.VALUE ="(File :" + mysys_file + " )"
		v_file = ALLTRIM(UPPER(myswform.text1.VALUE))
		v_file = SUBSTR(v_file,2,LEN(v_file)-2)
		v_file = STRTRAN(v_file,"FILE :","")

		*************** Configuration FILE COPYING
		IF sys_showdoubles = .T.
			myp = APPLICATION.DEFAULTFILEPATH
			v1 = APPLICATION.DEFAULTFILEPATH + "\config.txt"
			v2 = ALLTRIM(v_file)
			v3 = JUSTPATH(v2)
			v4 = v3 + "\" + "config.txt"
			IF .NOT. FILE(v4)
				COPY FILE (v1) TO (v4)
			ENDIF
			********************** RPWI Only
		ELSE

			IF FILE(APPLICATION.DEFAULTFILEPATH+"\chpath.txt")

				sys_chfile = FILETOSTR(APPLICATION.DEFAULTFILEPATH+"\chpath.txt")
				sys_pkname = MLINE(sys_chfile,2)
				sys_pkname = ALLTRIM(sys_pkname)
				sys_pkext = MLINE(sys_chfile,3)
				sys_pkext = ALLTRIM(sys_pkext)
				sys_pkpath = MLINE(sys_chfile,4)
				sys_pkpath = ALLTRIM(sys_pkpath)

				v_file = myfile
				v1 = APPLICATION.DEFAULTFILEPATH + "\configbase.txt"
				v2 = ALLTRIM(v_file)
				v3 = JUSTPATH(v2)
				v4 = v3 + "\" + "config.txt"
				IF .NOT. FILE(v4)
					COPY FILE (v1) TO (v4)
					myconfig = FILETOSTR(v4)
					mysrc = UPPER(JUSTFNAME(myfile))
					mysrc = STRTRAN(mysrc,".SSF","")
					myconfig = myconfig + CHR(13) + CHR(10) + "output: " + mysrc +sys_pkext +CHR(13)+CHR(10)+;
						sys_pkpath+ " " + CHR(34) + mysrc + sys_pkext +CHR(34) +CHR(13)+CHR(10)
					STRTOFILE(myconfig,v4)
				ENDIF
			ENDIF

		ENDIF
		***************

	ENDIF
ENDIF
IF s_menu == "Server Details"
	s_menu = "1_0"
	IF myswform.command1.CAPTION = ">"
		myswform.command1.CLICK
	ENDIF
	myswform.pageframe1.ACTIVEPAGE = 1
ENDIF
IF s_menu == "Server Compile"
	s_menu = "1_0"
	IF myswform.command1.CAPTION = ">"
		myswform.command1.CLICK
	ENDIF
	myswform.pageframe1.ACTIVEPAGE = 9
ENDIF
IF s_menu == "Server Info"
	s_menu = "1_0"
	IF myswform.command1.CAPTION = ">"
		myswform.command1.CLICK
	ENDIF
	myswform.pageframe1.ACTIVEPAGE = 10
ENDIF
IF s_menu = "Color"
	s_menu = "1_0"
	myswform.pageframe1.page10.rtfcontrols1.cmdcolor.CLICK()
ENDIF
IF s_menu = "Font"
	s_menu = "1_0"
	mystr = GETFONT()
	FOR x = 1 TO LEN(mystr)
		IF SUBSTR(mystr,x,1) = ","
			EXIT
		ENDIF
	NEXT
	myfont = SUBSTR(mystr,1,x-1)
	myswform.pageframe1.page10.olertf.selfontname = myfont
ENDIF
IF s_menu = "Enlarge Font"
	s_menu = "1_0"
	myswform.pageframe1.page10.olertf.selfontsize = myswform.pageframe1.page10.olertf.selfontsize+1
ENDIF
IF s_menu = "Reduce Font"
	s_menu = "1_0"
	myswform.pageframe1.page10.olertf.selfontsize = myswform.pageframe1.page10.olertf.selfontsize-1
ENDIF
IF s_menu == "Search 1"
	s_menu = "1_0"
	DO FORM search WITH 1
ENDIF
IF s_menu == "Search 2"
	s_menu = "1_0"
	DO FORM search WITH 2
ENDIF
IF s_menu == "Search 3"
	s_menu = "1_0"
	DO FORM search WITH 3
ENDIF
IF s_menu == "Search 4"
	s_menu = "1_0"
	DO FORM search WITH 4
ENDIF
IF s_menu == "Search 5"
	s_menu = "1_0"
	DO FORM search WITH 5
ENDIF
IF s_menu = "kill"
	s_menu = "1_0"
	myswform.oletree.nodes.REMOVE(ALLTRIM(s_mem))
ENDIF
IF s_menu == "1_6"
	s_menu = "1_0"
	s_tool = "CLOSE"
ENDIF





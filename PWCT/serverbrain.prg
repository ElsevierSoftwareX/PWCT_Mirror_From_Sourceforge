* EDIT CUSTOM SHELL & CUSTOM SUBSHELL
LOCAL O
IF S_menu == "edit_shell"
FS_SW = 1
S_menu = "0"

o = myswform.oletree
IF !ISNULL(myswform.oletree.SelectedItem)
	myvar = o.selecteditem.key
	select 2
	locate for ALLTRIM(shellhandle) == alltrim(myvar)	
		if found()
    	select 1
		  locate for alltrim(atomhandle) == alltrim(t2->atomhandle)
		  SELECT 2
	    v_shell = INPUTBOX(sysmsg(239),sysmsg(240),shellname)
	    IF EMPTY(alltrim(v_shell))
					*stmsg("Empty shell name is not allowed")
					RETURN
			ENDIF
			 SELECT 2
	    v_shell = ALLTRIM(v_shell)
			replace shellname with alltrim(v_shell)
	 	 o.SelectedItem.text = alltrim(v_shell)
	 	 RETURN
		ELSE
		GOTO bottom
		STMSG(sysmsg(241))
		return
	 endif
else
mymsg = STMSG(sysmsg(142))
return		
endif
ENDIF

IF S_menu == "edit_subshell"

FS_SW = 1
S_menu = "0"

o = myswform.oletree
IF !ISNULL(myswform.oletree.SelectedItem)
	myvar = o.selecteditem.key
	select 3
	locate for UPPER(alltrim(subshellhandle)) == UPPER(alltrim(myvar))
		if found()
		select 2
	  locate for alltrim(shellhandle) == alltrim(t3->shellhandle)
	  select 1
	  locate for alltrim(atomhandle) == alltrim(t2->atomhandle)
	  SELECT 3
    v_shell = INPUTBOX(sysmsg(243),sysmsg(244),subshellname)
    IF EMPTY(alltrim(v_shell))
				*	stmsg("Empty Subshell name is not allowed")
					RETURN
		ENDIF
		SELECT 3
    v_shell = ALLTRIM(v_shell)
		replace subshellname with alltrim(v_shell)
 	 o.SelectedItem.text = alltrim(v_shell)
 	 RETURN
		ELSE
		GOTO bottom
		STMSG(sysmsg(245))
		return
		 endif
else
mymsg =STMSG(sysmsg(242))
return		
endif
ENDIF
* CREATE CUSTOM SHELL & CUSTOM SUBSHELL
IF S_menu == "subshell_custom"
FS_SW = 1
S_menu = "0"
v_shell = INPUTBOX(sysmsg(243),sysmsg(246))
IF EMPTY(v_shell)
RETURN
ELSE
v_shell = ALLTRIM(v_shell)
endif
o = myswform.oletree
IF !ISNULL(myswform.oletree.SelectedItem)
	myvar = o.selecteditem.key
	select 2
	GOTO TOP
	locate for UPPER(alltrim(shellhandle)) == UPPER(alltrim(myvar))
	if found()
		myhandle = alltrim(myvar)
		myhandle = left(myhandle,len(myhandle)-1) + "1_"+UPPER(v_shell)
		select 3
		GOTO TOP
		locate for UPPER(alltrim(subshellNAME)) == UPPER(alltrim(V_SHELL))
		if .not. found()
			kk=		o.nodes.add(myvar,4,myhandle,v_shell,0)
			kk.image = "dbf"
			select 3
			append blank
			replace shellhandle with myvar
			replace subshellname with v_shell
			replace subshellhandle with myhandle
		ELSE
				GOTO bottom
		   STMSG("Subshell name duplication is not allowed")
		endif
	ELSE
			GOTO bottom
	  STMSG(sysmsg(248))
	endif
else
   STMSG(sysmsg(242))
endif
RETURN
ENDIF
IF S_MENU == "shell_custom"
FS_SW = 1
S_menu = "0"
v_shell = INPUTBOX(sysmsg(239),sysmsg(249))
IF EMPTY(v_shell)
RETURN
ELSE
v_shell = ALLTRIM(v_shell)
endif
o = myswform.oletree
IF !ISNULL(myswform.oletree.SelectedItem)
	myvar = o.selecteditem.key
	select 1
	GOTO TOP
	locate for UPPER(alltrim(atomhandle)) == UPPER(alltrim(myvar))
	if found()
	for s = 1 to len(atomhandle)
		if substr(atomhandle,s,1) = "_"
		myatomnum = val(substr(atomhandle,2,s-2))
		exit
		endif
	next
	S = ALLTRIM(STR(myATOMNUM)) + "_"
		myhandle = "2"+S+"00_"+UPPER(v_shell)
		select 2
		GOTO TOP
		locate for UPPER(alltrim(shellNAME)) == UPPER(alltrim(V_SHELL))
		if .not. found()
		kk =	o.nodes.add("2"+S+"1_",4,myhandle,v_shell,0)
		kk.image = "db"
			select 2
			append blank
			replace atomhandle with "2"+S+"1_"
			replace shellname with v_shell
			replace shellhandle with myhandle
		ELSE
				GOTO bottom
		  STMSG("Shell name duplication is not allowed" )
		endif
	ELSE
			GOTO bottom
   STMSG(sysmsg(251))
	endif
ELSE
		   STMSG(sysmsg(242))
endif
RETURN
ENDIF
* tool bar events
IF S_TOOL == "CUT"
S_TOOL = "0"

*!*	FOR I = 1 TO APPLICATION.Forms.Count 
*!*		IF APPLICATION.Forms.Item(I).NAME = "RPWIFORM"
*!*				APPLICATION.Forms.Item(I).SHOW()
*!*			EXIT
*!*		ENDIF
*!*	NEXT

*SYS(1500,"_med_cut","_medit")
	IF application.ActiveForm.name = "RPWIFORM"
		application.ActiveForm.COMMAND10.CLICK
		RETURN
	ENDIF
KEYBOARD CHR(24)
endif
IF S_TOOL == "COPY"
S_TOOL = "0"

*!*	FOR I = 1 TO APPLICATION.Forms.Count 

*!*		IF APPLICATION.Forms.Item(I).NAME = "RPWIFORM"
*!*				APPLICATION.Forms.Item(I).SHOW()
*!*			EXIT
*!*		ENDIF
*!*	NEXT

*SYS(1500,"_med_copy","_medit")
	IF application.ActiveForm.name = "RPWIFORM"
		application.ActiveForm.COMMAND8.CLICK
		RETURN
	ENDIF

KEYBOARD CHR(3)
endif
IF S_TOOL == "PASTE"
S_TOOL = "0"

*!*	FOR I = 1 TO APPLICATION.Forms.Count 

*!*		IF APPLICATION.Forms.Item(I).NAME = "RPWIFORM"
*!*				APPLICATION.Forms.Item(I).SHOW()
*!*			EXIT
*!*		ENDIF
*!*	NEXT

	IF application.ActiveForm.name = "RPWIFORM"
		application.ActiveForm.COMMAND9.CLICK
		RETURN
	ENDIF
*SYS(1500,"_med_paste","_medit")
KEYBOARD CHR(22)
endif
IF S_TOOL == "NEW"
S_TOOL = "0"
*Do FORM NEWFILE.SCX
S_MENU = "1_1"
RETURN
ENDIF
IF S_TOOL == "OPEN"
S_TOOL = "0"
S_MENU = "1_2"
ENDIF
IF S_TOOL == "SAVE"
S_TOOL = "0"
S_MENU = "1_4"
ENDIF

IF S_TOOL == "K"
FS_SW = 1
S_TOOL = "0"
o = myswform.oletree
IF !ISNULL(myswform.oletree.SelectedItem)
	myvar = o.selecteditem.key
	select 1
	locate for alltrim(atomhandle) == alltrim(myvar)
	if found()
		for s = 1 to len(atomhandle)
		if substr(atomhandle,s,1) = "_"
		myatomnum = val(substr(atomhandle,2,s-2))
		exit
		endif
	next
	S = ALLTRIM(STR(myATOMNUM)) + "_"
		myhandle = "2"+S+"11_"
		select 2
		locate for alltrim(shellhandle) == alltrim(myhandle)
		if .not. found()
		kk =	o.nodes.add("2"+S+"1_",4,myhandle,"K",0)
		kk.image = "db"
			select 2
			append blank
			replace atomhandle with "2"+S+"1_"
			replace shellname with "K"
			replace shellhandle with myhandle
		else
		  STMSG(sysmsg(252)+ "(" + alltrim(t1->ATOMNAME) + ")")
		endif
	ELSE
			GOTO bottom
   STMSG(sysmsg(251))
	endif
else
   STMSG(sysmsg(242))
endif
RETURN
ENDIF
IF S_TOOL == "L"
FS_SW = 1
S_TOOL = "0"
o = myswform.oletree
IF !ISNULL(myswform.oletree.SelectedItem)
	myvar = o.selecteditem.key
	select 1
	locate for alltrim(atomhandle) == alltrim(myvar)
	if found()
  for s = 1 to len(atomhandle)
	if substr(atomhandle,s,1) = "_"
	myatomnum = val(substr(atomhandle,2,s-2))
	exit
	endif
	next
	S = ALLTRIM(STR(myATOMNUM)) + "_"
		myhandle = "2"+S+"12_"
		select 2
		locate for alltrim(shellhandle) == alltrim(myhandle)
		if .not. found()
	kk = o.nodes.add("2"+S+"1_",4,myhandle,"L",0)
	kk.image = "db"
			select 2
			append blank
			replace atomhandle with "2"+S+"1_"
			replace shellname with "L"
			replace shellhandle with myhandle
		else
		  STMSG(sysmsg(253) + "(" + alltrim(t1->ATOMNAME) + ")")
		endif
	ELSE
			GOTO bottom
   STMSG(sysmsg(251))
	endif
else
   STMSG(sysmsg(242))
endif
RETURN
ENDIF
IF S_TOOL == "M"
FS_SW = 1
S_TOOL = "0"
o = myswform.oletree
IF !ISNULL(myswform.oletree.SelectedItem)
	myvar = o.selecteditem.key
	select 1
	locate for alltrim(atomhandle) == alltrim(myvar)
	if found()
  for s = 1 to len(atomhandle)
	if substr(atomhandle,s,1) = "_"
	myatomnum = val(substr(atomhandle,2,s-2))
	exit
	endif
	next
	S = ALLTRIM(STR(myATOMNUM)) + "_"
		myhandle = "2"+S+"13_"
		select 2
		locate for alltrim(shellhandle) == alltrim(myhandle)
		if .not. found()
	kk=		o.nodes.add("2"+S+"1_",4,myhandle,"M",0)
	kk.image = "db"
  		select 2
			append blank
			replace atomhandle with "2"+S+"1_"
			replace shellname with "M"
			replace shellhandle with myhandle
		else
		  STMSG(sysmsg(254)+ "(" + alltrim(t1->ATOMNAME) + ")")
		endif
	ELSE
			GOTO bottom
   STMSG(sysmsg(251))
	endif
else
   STMSG(sysmsg(242))
endif
RETURN
ENDIF
IF S_TOOL == "N"
FS_SW = 1
S_TOOL = "0"
o = myswform.oletree
IF !ISNULL(myswform.oletree.SelectedItem)
	myvar = o.selecteditem.key
	select 1
	locate for alltrim(atomhandle) == alltrim(myvar)
	if found()
  for s = 1 to len(atomhandle)
	if substr(atomhandle,s,1) = "_"
	myatomnum = val(substr(atomhandle,2,s-2))
	exit
	endif
	next
	S = ALLTRIM(STR(myATOMNUM)) + "_"
		myhandle = "2"+S+"14_"
		select 2
		locate for alltrim(shellhandle) == alltrim(myhandle)
		if .not. found()
kk=			o.nodes.add("2"+S+"1_",4,myhandle,"N",0)
kk.image = "db"
			select 2
			append blank
			replace atomhandle with "2"+S+"1_"
			replace shellname with "N"
			replace shellhandle with myhandle
		else
		 STMSG(sysmsg(255) + "(" + alltrim(t1->ATOMNAME) + ")")
		endif
	ELSE
			GOTO bottom
   STMSG(sysmsg(251))
	endif
else
   STMSG(sysmsg(242))
endif
RETURN
ENDIF
IF S_TOOL == "O"
FS_SW = 1
S_TOOL = "0"
o = myswform.oletree
IF !ISNULL(myswform.oletree.SelectedItem)
	myvar = o.selecteditem.key
	select 1
	locate for alltrim(atomhandle) == alltrim(myvar)
	if found()
  for s = 1 to len(atomhandle)
	if substr(atomhandle,s,1) = "_"
	myatomnum = val(substr(atomhandle,2,s-2))
	exit
	endif
	next
	S = ALLTRIM(STR(myATOMNUM)) + "_"
		myhandle = "2"+S+"15_"
		select 2
		locate for alltrim(shellhandle) == alltrim(myhandle)
		if .not. found()
	kk=		o.nodes.add("2"+S+"1_",4,myhandle,"O",0)
	kk.image = "db"

			select 2
			append blank
			replace atomhandle with "2"+S+"1_"
			replace shellname with "O"
			replace shellhandle with myhandle
		else
		   STMSG(sysmsg(256)+ "(" + alltrim(t1->ATOMNAME) + ")")
		endif
	ELSE
			GOTO bottom
   STMSG("No Atom Selected in Server Tree")
	endif
else
   STMSG("No Item Selected in Server Tree")
endif

RETURN
ENDIF
IF S_TOOL == "P"
FS_SW = 1
S_TOOL = "0"
o = myswform.oletree
IF !ISNULL(myswform.oletree.SelectedItem)
	myvar = o.selecteditem.key
	select 1
	locate for alltrim(atomhandle) == alltrim(myvar)
	if found()
  for s = 1 to len(atomhandle)
	if substr(atomhandle,s,1) = "_"
	myatomnum = val(substr(atomhandle,2,s-2))
	exit
	endif
	next
	S = ALLTRIM(STR(myATOMNUM)) + "_"
		myhandle = "2"+S+"16_"
		select 2
		locate for alltrim(shellhandle) == alltrim(myhandle)
		if .not. found()
kk=			o.nodes.add("2"+S+"1_",4,myhandle,"P",0)
kk.image = "db"
			select 2
			append blank
			replace atomhandle with "2"+S+"1_"
			replace shellname with "P"
			replace shellhandle with myhandle
		else
		  STMSG(sysmsg(257) +"(" + alltrim(t1->ATOMNAME) + ")")
		endif
	ELSE
			GOTO bottom
  STMSG(sysmsg(251))
	endif
else
   STMSG(sysmsg(242))
endif
RETURN
ENDIF
IF S_TOOL == "Q"
FS_SW = 1
S_TOOL = "0"
o = myswform.oletree
IF !ISNULL(myswform.oletree.SelectedItem)
	myvar = o.selecteditem.key
	select 1
	locate for alltrim(atomhandle) == alltrim(myvar)
	if found()
  for s = 1 to len(atomhandle)
	if substr(atomhandle,s,1) = "_"
	myatomnum = val(substr(atomhandle,2,s-2))
	exit
	endif
	next
	S = ALLTRIM(STR(myATOMNUM)) + "_"
		myhandle = "2"+S+"17_"
		select 2
		locate for alltrim(shellhandle) == alltrim(myhandle)
		if .not. found()
		kk=	o.nodes.add("2"+S+"1_",4,myhandle,"Q",0)
		kk.image = "db"
			select 2
			append blank
			replace atomhandle with "2"+S+"1_"
			replace shellname with "Q"
			replace shellhandle with myhandle
		else
		   STMSG(sysmsg(258)+"(" + alltrim(t1->ATOMNAME) + ")")
		endif
	ELSE
			GOTO bottom
   STMSG(sysmsg(251))
	endif
else
   STMSG(sysmsg(242))
endif

RETURN
ENDIF
IF S_TOOL == "S"
FS_SW = 1
S_TOOL = "0"
o = myswform.oletree
IF !ISNULL(myswform.oletree.SelectedItem)
	myvar = o.selecteditem.key
	select 2
	locate for alltrim(shellhandle) == alltrim(myvar)
	if found()
		myhandle = alltrim(myvar)
		myhandle = left(myhandle,len(myhandle)-1) + "1_"
		select 3
		locate for alltrim(subshellhandle) == alltrim(myhandle)
		if .not. found()
	kk=		o.nodes.add(myvar,4,myhandle,"S",0)
	kk.image = "dbf"

			select 3
			append blank
			replace shellhandle with myvar
			replace subshellname with "S"
			replace subshellhandle with myhandle
		else
		   STMSG(sysmsg(259) +"(" + alltrim(t2->SHELLNAME) + ")")
		endif
	ELSE
			GOTO bottom
   STMSG(sysmsg(248))
	endif
else
   STMSG(sysmsg(242))
endif
RETURN
ENDIF
IF S_TOOL == "P2"
FS_SW = 1
S_TOOL = "0"
o = myswform.oletree
IF !ISNULL(myswform.oletree.SelectedItem)
	myvar = o.selecteditem.key
	select 2
	locate for alltrim(shellhandle) == alltrim(myvar)
	if found()
		myhandle = alltrim(myvar)
		myhandle = left(myhandle,len(myhandle)-1) + "2_"
		select 3
		locate for alltrim(subshellhandle) == alltrim(myhandle)
		if .not. found()
kk=			o.nodes.add(myvar,4,myhandle,"P",0)
kk.image = "dbf"
  		select 3
			append blank
			replace shellhandle with myvar
			replace subshellname with "P"
			replace subshellhandle with myhandle
		else
		   STMSG(sysmsg(260) +"(" + alltrim(t2->SHELLNAME) + ")")
		endif
	ELSE
			GOTO bottom
   STMSG(sysmsg(248))
	endif
else
   STMSG(sysmsg(242))
endif
RETURN
ENDIF
IF S_TOOL == "D"
FS_SW = 1
S_TOOL = "0"
o = myswform.oletree
IF !ISNULL(myswform.oletree.SelectedItem)
	myvar = o.selecteditem.key
	select 2
	locate for alltrim(shellhandle) == alltrim(myvar)
	if found()
		myhandle = alltrim(myvar)
		myhandle = left(myhandle,len(myhandle)-1) + "3_"
		select 3
		locate for alltrim(subshellhandle) == alltrim(myhandle)
		if .not. found()
	kk=		o.nodes.add(myvar,4,myhandle,"D",0)
	kk.image = "dbf"

	*		myswform.oleTree.Nodes.item(alltrim(myhandle)).Selected = .T.
			select 3
			append blank
			replace shellhandle with myvar
			replace subshellname with "D"
			replace subshellhandle with myhandle
		else
		  STMSG(sysmsg(261) + "(" + alltrim(t2->SHELLNAME) + ")")
		endif
	ELSE
			GOTO bottom
   STMSG(sysmsg(248))
	endif
else
   STMSG(sysmsg(242))
endif
RETURN
ENDIF
IF S_TOOL == "F"
FS_SW = 1
S_TOOL = "0"
o = myswform.oletree
IF !ISNULL(myswform.oletree.SelectedItem)
	myvar = o.selecteditem.key
	select 2
	locate for alltrim(shellhandle) == alltrim(myvar)
	if found()
		myhandle = alltrim(myvar)
		myhandle = left(myhandle,len(myhandle)-1) + "4_"
		select 3
		locate for alltrim(subshellhandle) == alltrim(myhandle)
		if .not. found()
	kk=		o.nodes.add(myvar,4,myhandle,"F",0)
	kk.image = "dbf"

			select 3
			append blank
			replace shellhandle with myvar
			replace subshellname with "F"
			replace subshellhandle with myhandle
		else
		   STMSG(sysmsg(262) +"(" + alltrim(t2->SHELLNAME) + ")")
		endif
	ELSE
			GOTO bottom
	   STMSG(sysmsg(248))
	endif
else
   STMSG(sysmsg(242))
endif
RETURN
ENDIF

IF S_TOOL == "CLOSE"
IF FS_SW = 1
	MYMSG = MESSAGEBOX("Save Changes ?",4,"Save")
	IF mymsg = 6
 	if .not. mysys_file = "No Name"
		do form upload
		delete file (mySYS_FILE)
		select 23
		copy to (MYSYS_FILE)
				GOTO bottom
	else
	  myfile = GETFILE("SuperServerFile:SSF","File Name","Save",1,"Save As")
		IF .not. testfile(myfile,1111) = .t.
		RETURN
		ENDIF
		if .not. empty(myfile)
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
			if file(myfile)
				mymsg = messagebox(sysmsg(284),36,sysmsg(285))
					if mymsg = 6
					delete file (myfile)
					do form upload
					select 23
					copy to (myfile)
							GOTO bottom
					MYSYS_FILE = MYFILE
					myswform.text1.value =  "(File :" + mysys_file + " )"
					endif
			else
				do form upload
				select 23
				copy to (myfile)
						GOTO bottom
				MYSYS_FILE = MYFILE
				myswform.text1.value ="(File :" + mysys_file + " )"
			endif
		endif
	endif
	FS_SW = 0
  eNDIF
ENDIF
S_TOOL = "0"
mymsg = messagebox(sysmsg(263),36,sysmsg(264))
if mymsg = 6
myswform.release
endif
RETURN
ENDIF

* SS SYSTEM EVENTS
*!*	IF S_MENU == "New SS System"
*!*	  S_MENU = "0_0"
*!*	  SELECT t27
*!*	  DELETE ALL
*!*	  PACK
*!*	  APPEND BLANK 
*!*	  replace netid WITH "1"
*!*	  replace netname WITH "Mother Network"
*!*	  SELECT t28
*!*	  DELETE ALL
*!*	  PACK
*!*		GOTO bottom
*!*		DO FORM sssystem.scx
*!*	ENDIF
*!*	IF S_MENU == "Open SS System"
*!*	  S_MENU = "0_0"
*!*	  SET PROCEDURE TO MAHLIB.PRG
*!*	  MYOBJ = CREATEOBJECT("SYSTEM_FILES")
*!*	  MYOBJ.SYSTEM_READ()
*!*		DO FORM sssystem.scx
*!*	ENDIF
	
* menu bar events
	

IF S_MENU == "6_2"
S_MENU = "1_0"
DO FORM ABOUT.SCX
ENDIF

IF S_MENU == "3_4_1"
S_MENU = "1_0"
s_mem = 1
o = myswform.oletree
IF !ISNULL(myswform.oletree.SelectedItem)
	myvar = o.selecteditem.key
	select 3
	locate for alltrim(subshellhandle) == alltrim(myvar)	
		if found()
		s_mem2 = subshellname
		select 2
	  locate for alltrim(shellhandle) == alltrim(t3->shellhandle)
	  s_mem3 = shellname
	  select 1
	  locate for alltrim(atomhandle) == alltrim(t2->atomhandle)
	  s_mem4 = atomname
		ELSE
				GOTO bottom
		STMSG(sysmsg(265))
		return
		 endif
else
STMSG(sysmsg(242))
return		
endif

	 DO FORM newelectron.SCX
	 
ENDIF

IF S_MENU == "3_4_2"
FS_SW = 1
S_MENU = "1_0"
s_mem = 2
o = myswform.oletree
IF !ISNULL(myswform.oletree.SelectedItem)
	myvar = o.selecteditem.key
	select 3
	locate for alltrim(subshellhandle) == alltrim(myvar)	
		if found()
		s_mem2 = subshellname
		select 2
	  locate for alltrim(shellhandle) == alltrim(t3->shellhandle)
	  s_mem3 = shellname
	  select 1
	  locate for alltrim(atomhandle) == alltrim(t2->atomhandle)
	  s_mem4 = atomname
		ELSE
				GOTO bottom
				STMSG(sysmsg(265))
		return
		 endif
else
STMSG(sysmsg(242))
return		
endif
DO FORM newelectron.SCX
ENDIF

IF S_MENU == "3_4_3"
FS_SW = 1
S_MENU = "1_0"
s_mem = 3
o = myswform.oletree
IF !ISNULL(myswform.oletree.SelectedItem)
	myvar = o.selecteditem.key
	select 3
	locate for alltrim(subshellhandle) == alltrim(myvar)	
		if found()
		s_mem2 = subshellname
		select 2
	  locate for alltrim(shellhandle) == alltrim(t3->shellhandle)
	  s_mem3 = shellname
	  select 1
	  locate for alltrim(atomhandle) == alltrim(t2->atomhandle)
	  s_mem4 = atomname
		ELSE
				GOTO bottom
				STMSG(sysmsg(265))
		return
		 endif
else
STMSG(sysmsg(242))
return		
endif
DO FORM newelectron.SCX
ENDIF


IF S_Menu == "1_1"
S_Menu = "1_0"
	IF s_lastactivewindow = 4 .or. application.ActiveForm.name = "IPWRITER"  
	
		FOR I = 1 TO APPLICATION.Forms.Count 
					IF APPLICATION.Forms.Item(I).NAME = "IPWRITER" 
  						APPLICATION.Forms.Item(I).COMMAND15.CLICK
  						EXIT
					ENDIF
		NEXT
		
		RETURN
	ENDIF
	IF s_lastactivewindow = 3 .or. application.ActiveForm.name = "TRANSDFORM"  
	
	FOR I = 1 TO APPLICATION.Forms.Count 
					IF APPLICATION.Forms.Item(I).NAME = "TRANSDFORM"
  						APPLICATION.Forms.Item(I).MENULABEL1.CLICK
  						EXIT
					ENDIF
		NEXT
	
		RETURN
	ENDIF
  IF s_lastactivewindow = 2 .or. application.ActiveForm.name = "INTERDFORM"  
  
  	FOR I = 1 TO APPLICATION.Forms.Count 
					IF APPLICATION.Forms.Item(I).NAME = "INTERDFORM" 
  						APPLICATION.Forms.Item(I).LABEL7.CLICK
  						EXIT
					ENDIF
		NEXT
  
		RETURN
	ENDIF
DO FORM newfile.scx
endif

if s_menu == "1_1_1"
FS_SW = 1
s_menu = "1_0"
* duplication test
select 1
locate for UPPER(alltrim(atomname)) == UPPER(alltrim(s_mem))
if found()
STMSG(sysmsg(266))
RETURN
ELSE
		GOTO bottom
endif
* create new empty atom
o = myswform.oletree
ATOMSNUM = ATOMSNUM + 1
S = ALLTRIM(STR(ATOMSNUM)) + "_"
*kk = o.nodes.add("2_",4,"2"+S+"_",alltrim(s_mem),0)
*kk.image = "vessel"
*kk = o.nodes.add("2"+S+"_",4,"2"+S+"1_","Shells",0)
*kk.image = "reaction"
kk = o.nodes.add("2_",4,"2"+S+"1_",alltrim(s_mem),0)
kk.image = "vessel"
select 1
append blank
replace atomname with s_mem
replace atomhandle with "2"+S+"1_"
myswform.oleTree.Nodes.item(alltrim(atomhandle)).Selected = .T.
endif

if s_menu == "1_1_2"
FS_SW = 1
s_menu = "1_0"
* duplication test
select 1
locate for UPPER(alltrim(atomname)) == UPPER(alltrim(s_mem))
if found()
STMSG(sysmsg(266))
RETURN
ELSE
		GOTO bottom
endif
* create new complete atom
o = myswform.oletree
ATOMSNUM = ATOMSNUM + 1
S = ALLTRIM(STR(ATOMSNUM)) + "_"
*kk = o.nodes.add("2_",4,"2"+S+"_",alltrim(s_mem),0)
*kk.image = "vessel"
*kk = o.nodes.add("2"+S+"_",4,"2"+S+"1_","Shells",0)
*kk.image = "reaction"
kk = o.nodes.add("2_",4,"2"+S+"1_",alltrim(s_mem),0)
kk.image = "vessel"
kk = o.nodes.add("2"+S+"1_",4,"2"+S+"11_","K",0)
kk.image = "db"
kk = o.nodes.add("2"+S+"11_",4,"2"+S+"111_","S",0)
kk.image = "dbf"
kk = o.nodes.add("2"+S+"11_",4,"2"+S+"112_","P",0)
kk.image = "dbf"
kk = o.nodes.add("2"+S+"11_",4,"2"+S+"113_","D",0)
kk.image = "dbf"
kk = o.nodes.add("2"+S+"11_",4,"2"+S+"114_","F",0)
kk.image = "dbf"
kk = o.nodes.add("2"+S+"1_",4,"2"+S+"12_","L",0)
kk.image = "db"
kk = o.nodes.add("2"+S+"12_",4,"2"+S+"121_","S",0)
kk.image = "dbf"
kk = o.nodes.add("2"+S+"12_",4,"2"+S+"122_","P",0)
kk.image = "dbf"
kk = o.nodes.add("2"+S+"12_",4,"2"+S+"123_","D",0)
kk.image = "dbf"
kk = o.nodes.add("2"+S+"12_",4,"2"+S+"124_","F",0)
kk.image = "dbf"
kk = o.nodes.add("2"+S+"1_",4,"2"+S+"13_","M",0)
kk.image = "db"
kk = o.nodes.add("2"+S+"13_",4,"2"+S+"131_","S",0)
kk.image = "dbf"
kk = o.nodes.add("2"+S+"13_",4,"2"+S+"132_","P",0)
kk.image = "dbf"
kk = o.nodes.add("2"+S+"13_",4,"2"+S+"133_","D",0)
kk.image = "dbf"
kk = o.nodes.add("2"+S+"13_",4,"2"+S+"134_","F",0)
kk.image = "dbf"
kk = o.nodes.add("2"+S+"1_",4,"2"+S+"14_","N",0)
kk.image = "db"
kk = o.nodes.add("2"+S+"14_",4,"2"+S+"141_","S",0)
kk.image = "dbf"
kk = o.nodes.add("2"+S+"14_",4,"2"+S+"142_","P",0)
kk.image = "dbf"
kk = o.nodes.add("2"+S+"14_",4,"2"+S+"143_","D",0)
kk.image = "dbf"
kk = o.nodes.add("2"+S+"14_",4,"2"+S+"144_","F",0)
kk.image = "dbf"
kk = o.nodes.add("2"+S+"1_",4,"2"+S+"15_","O",0)
kk.image = "db"
kk = o.nodes.add("2"+S+"15_",4,"2"+S+"151_","S",0)
kk.image = "dbf"
kk = o.nodes.add("2"+S+"15_",4,"2"+S+"152_","P",0)
kk.image = "dbf"
kk = o.nodes.add("2"+S+"15_",4,"2"+S+"153_","D",0)
kk.image = "dbf"
kk = o.nodes.add("2"+S+"15_",4,"2"+S+"154_","F",0)
kk.image = "dbf"
kk = o.nodes.add("2"+S+"1_",4,"2"+S+"16_","P",0)
kk.image = "db"
kk = o.nodes.add("2"+S+"16_",4,"2"+S+"161_","S",0)
kk.image = "dbf"
kk = o.nodes.add("2"+S+"16_",4,"2"+S+"162_","P",0)
kk.image = "dbf"
kk = o.nodes.add("2"+S+"16_",4,"2"+S+"163_","D",0)
kk.image = "dbf"
kk = o.nodes.add("2"+S+"16_",4,"2"+S+"164_","F",0)
kk.image = "dbf"
kk = o.nodes.add("2"+S+"1_",4,"2"+S+"17_","Q",0)
kk.image = "db"
kk = o.nodes.add("2"+S+"17_",4,"2"+S+"171_","S",0)
kk.image = "dbf"
kk = o.nodes.add("2"+S+"17_",4,"2"+S+"172_","P",0)
kk.image = "dbf"
kk = o.nodes.add("2"+S+"17_",4,"2"+S+"173_","D",0)
kk.image = "dbf"
kk = o.nodes.add("2"+S+"17_",4,"2"+S+"174_","F",0)
kk.image = "dbf"
* ADDING ATOM DATA TO DATABASE FILES
select 1
append blank
replace atomname with s_mem
replace atomhandle with "2"+S+"1_"
* ADDING SHELLS DATA TO SHELLS FILES
select 2
append blank
replace atomhandle with "2"+S+"1_"
replace shellname with "K"
replace shellhandle with "2"+S+"11_"
append blank
replace atomhandle with "2"+S+"1_"
replace shellname with "L"
replace shellhandle with "2"+S+"12_"
append blank
replace atomhandle with "2"+S+"1_"
replace shellname with "M"
replace shellhandle with "2"+S+"13_"
append blank
replace atomhandle with "2"+S+"1_"
replace shellname with "N"
replace shellhandle with "2"+S+"14_"
append blank
replace atomhandle with "2"+S+"1_"
replace shellname with "O"
replace shellhandle with "2"+S+"15_"
append blank
replace atomhandle with "2"+S+"1_"
replace shellname with "P"
replace shellhandle with "2"+S+"16_"
append blank
replace atomhandle with "2"+S+"1_"
replace shellname with "Q"
replace shellhandle with "2"+S+"17_"
* ADDING SUBSHELLS DATA TO SUBSHELLS FILES
select 3
FOR X = 1 TO 7
append blank
replace shellhandle with "2"+S+"1" +ALLTRIM(STR(X))+ "_"
replace subshellname with "S"
replace subshellhandle with "2"+S+"1"+ALLTRIM(STR(X))+"1_"
append blank
replace shellhandle with "2"+S+"1" +ALLTRIM(STR(X))+ "_"
replace subshellname with "P"
replace subshellhandle with "2"+S+"1"+ALLTRIM(STR(X))+"2_"
append blank
replace shellhandle with "2"+S+"1" +ALLTRIM(STR(X))+ "_"
replace subshellname with "D"
replace subshellhandle with "2"+S+"1"+ALLTRIM(STR(X))+"3_"
append blank
replace shellhandle with "2"+S+"1" +ALLTRIM(STR(X))+ "_"
replace subshellname with "F"
replace subshellhandle with "2"+S+"1" +ALLTRIM(STR(X))+ "4_"
NEXT 
select 1
myswform.oleTree.Nodes.item(alltrim(atomhandle)).Selected = .T.
endif

IF S_Menu == "3_1"
FS_SW = 1
S_menu = "1_0"
do form newatom
endif
IF S_Menu == "3_2_1"
FS_SW = 1
s_menu = "1_0"
s_tool = "K"
endif
IF S_Menu == "3_2_2"
FS_SW = 1
s_menu = "1_0"
s_tool = "L"
endif
IF S_Menu == "3_2_3"
FS_SW = 1
s_menu = "1_0"
s_tool = "M"
endif
IF S_Menu == "3_2_4"
FS_SW = 1
s_menu = "1_0"
s_tool = "N"
endif
IF S_Menu == "3_2_5"
FS_SW = 1
s_menu = "1_0"
s_tool = "O"
endif
IF S_Menu == "3_2_6"
FS_SW = 1
s_menu = "1_0"
s_tool = "P"
endif
IF S_Menu == "3_2_7"
FS_SW = 1
s_menu = "1_0"
s_tool = "Q"
endif

IF S_Menu == "3_3_1"
FS_SW = 1
s_menu = "1_0"
s_tool = "S"
endif
IF S_Menu == "3_3_2"
s_menu = "1_0"
s_tool = "P2"
endif
IF S_Menu == "3_3_3"
FS_SW = 1
s_menu = "1_0"
s_tool = "D"
endif
IF S_Menu == "3_3_4"
FS_SW = 1
s_menu = "1_0"
s_tool = "F"
endif

if s_Menu == "3_3_*_save"
FS_SW = 1
s_menu = "1_0"
select 4
myswform.oleTree.Nodes.item(alltrim(electronhandle)).Selected = .T.
myswform.oletree.SelectedItem.text = alltrim(electronname)
myswform.oletree.refresh
endif

*!*	if s_Menu == "3_3_*_ok"
*!*	FS_SW = 1
*!*	select 4
*!*	S_Menu = "1_0"
*!*	o = myswform.oletree
*!*	kk = o.nodes.add(alltrim(subshellhandle),4,"e_" + alltrim(str(electronsnum)),alltrim(electronname),0)
*!*	kk.image = "electron"
*!*		myswform.oleTree.Nodes.item("e_" + alltrim(str(electronsnum))).Selected = .T.
*!*	replace electronhandle with "e_" + alltrim(str(electronsnum))
*!*	electronsnum = electronsnum + 1
*!*	endif

IF S_MENU == "3_5"
S_MENU = "1_0"
myswform.Pageframe1.Page2.Container1.TOPBTN.CLICK()
ENDIF
IF S_MENU == "3_6"
S_MENU = "1_0"
myswform.Pageframe1.Page2.Container1.PREVBTN.CLICK()
ENDIF
IF S_MENU == "3_7"
S_MENU = "1_0"
myswform.Pageframe1.Page2.Container1.NEXTBTN.CLICK()
ENDIF
IF S_MENU == "3_8"
S_MENU = "1_0"
myswform.Pageframe1.Page2.Container1.LASTBTN.CLICK()
ENDIF

IF S_MENU == "3_9"
FS_SW = 1
S_MENU = "1_0"
IF !ISNULL(myswform.oletree.SelectedItem)
	select 4
	mem_electronhandle = myswform.oletree.SelectedItem.key
	locate for alltrim(electronhandle) = alltrim(mem_electronhandle)
	if found()

  s_mem = alltrim(electronname)
  do form editelectron.scx
	
	
	ELSE
			GOTO bottom
 STMSG(sysmsg(267))
	ENDIF
ELSE
	STMSG(sysmsg(242))
ENDIF
ENDIF

if s_menu == "3_11"
FS_SW = 1
S_MENU = "1_0"
IF !ISNULL(myswform.oletree.SelectedItem)
	select 4
	mem_electronhandle = myswform.oletree.SelectedItem.key
	locate for alltrim(electronhandle) = alltrim(mem_electronhandle)
	if found()


	
				if .not. reccount() = 0
						mymsg = messagebox(sysmsg(139),36,sysmsg(140))
						if .not. mymsg = 6
								return
						endif
					select 4
				myswform.oletree.nodes.remove(alltrim(electronhandle))
					myswform.oletree.refresh
					delete
					pack
					goto top
			
				endif
	
	
	ELSE
			GOTO bottom
  STMSG(sysmsg(267))
	ENDIF
ELSE
	STMSG(sysmsg(242))
ENDIF
endif

* edit atom
if s_menu == "3_10"
FS_SW = 1
S_MENU = "1_0"
IF !ISNULL(myswform.oletree.SelectedItem)
select 1
mem_atomhandle = myswform.oletree.SelectedItem.key
locate for alltrim(atomhandle) = alltrim(mem_atomhandle)
if found()
s_mem5 = myswform.oletree.SelectedItem
do form editatom.scx
ELSE
		GOTO bottom
STMSG(sysmsg(281))
endif
else
STMSG(sysmsg(242))
endif
endif


IF s_menu == "3_12"
FS_SW = 1
* deleting subshell
S_MENU = "1_0"
o = myswform.oletree
IF !ISNULL(myswform.oletree.SelectedItem)
           mem_subshellhandle = myswform.oletree.SelectedItem.key
           select 3
     		  locate for alltrim(subshellhandle) = alltrim(mem_subshellhandle)   
		 	    if  found()
		 	    mymsg = messagebox(sysmsg(268),36,sysmsg(202))
		 	    SELECT 3
					if .not. mymsg = 6
					return
					endif
             o.nodes.remove(mem_subshellhandle)
  		 	     delete
					    pack
	 				 	select 4
				    	locate for alltrim(subshellhandle) = alltrim(mem_subshellhandle)   
						  do while found()
						  	  delete
						  	  continue
					 	 enddo
						  PACK
						  		GOTO bottom
	    		 ELSE
	    		 		GOTO bottom
					 		STMSG(sysmsg(245))
					 endif
else
STMSG(sysmsg(242))
endif
endif

IF s_menu == "3_13"
FS_SW = 1
* deleting shell
S_MENU = "1_0"
o = myswform.oletree
IF !ISNULL(myswform.oletree.SelectedItem)
     		  mem_shellhandle = myswform.oletree.SelectedItem.key
           select 2
     		  locate for alltrim(shellhandle) = alltrim(mem_shellhandle)   
		 	    if  found()
		 	    mymsg = messagebox(sysmsg(269),36,sysmsg(202))
		 	    SELECT 2
					if .not. mymsg = 6
					return
					endif
		 	      delete 
		 	      PACK
 	      		GOTO bottom
		 	      o.nodes.remove(mem_shellhandle)
  		  	   select 3
	 			  	locate for alltrim(shellhandle) = alltrim(mem_shellhandle)   
					 	do while found()
						 	mem_subshellhandle = subshellhandle
				 			select 4
				 			locate for alltrim(subshellhandle) = alltrim(mem_subshellhandle)   
							 do while found()
						 	  delete
					 		  continue
					 	  enddo
							 PACK
					 		GOTO bottom
				 			select 3
				   		delete
				   		continue
	 	   	 	enddo
	     			PACK
	     					GOTO bottom
       	  ELSE
       	  		GOTO bottom
				 	STMSG(sysmsg(241))
					 endif
else
STMSG(sysmsg(242))
endif
endif

if s_menu == "3_14"
FS_SW = 1
* deleting atom
S_MENU = "1_0"
o = myswform.oletree
IF !ISNULL(myswform.oletree.SelectedItem)
select 1
mem_atomhandle = myswform.oletree.SelectedItem.key
locate for alltrim(atomhandle) = alltrim(mem_atomhandle)
if found()
	mymsg = messagebox(sysmsg(271),36,sysmsg(202))
	SELECT 1
	if .not. mymsg = 6
	return
	endif
 delete
 PACK
 		GOTO bottom
 o.nodes.remove(mem_atomhandle)
 select 2
 locate for alltrim(atomhandle) = alltrim(mem_atomhandle)
 do while found()
 		 mem_shellhandle = shellhandle
		  select 3
		  locate for alltrim(shellhandle) = alltrim(mem_shellhandle)   
		 	do while found()
				 	mem_subshellhandle = subshellhandle
				 	select 4
				 	locate for alltrim(subshellhandle) = alltrim(mem_subshellhandle)   
					 do while found()
					 	  delete
					 	  continue
			 	  enddo
					 PACK
					 		GOTO bottom
				 	select 3
				   delete
				   continue
		   enddo
   		PACK
   				GOTO bottom
			 select 2
			 delete
			 continue
 enddo
 PACK
 		GOTO bottom
 
ELSE
		GOTO bottom
	STMSG(sysmsg(281))
endif
else
STMSG(sysmsg(242))
endif
endif

if s_Menu == "3_10_ok"
FS_SW = 1
s_menu = "1_0"
select 1
s_mem5.text = alltrim(atomname)
endif

if s_menu == "3_15"
FS_SW = 1
s_menu = "1_0"

select 1
if reccount() = 0
mymsg = messagebox(sysmsg(150),6,sysmsg(151))
SELECT 1
endif
do form newvessel.scx

endif

*!*	if s_menu == "3_15_OK"
*!*	FS_SW = 1
*!*	s_menu = "1_0"
*!*	o = myswform.oletree
*!*	SELECT 5
*!*	kk = o.nodes.add("3_",4,alltrim(vesselhandle),ALLTRIM(VESSELNAME),0)
*!*	kk.image = "electron"
*!*	myswform.oleTree.Nodes.item(alltrim(vesselhandle)).Selected = .T.
*!*	endif

if s_menu == "3_16"
FS_SW = 1
s_menu = "1_0"
o = myswform.oletree
	IF !ISNULL(myswform.oletree.SelectedItem)
		select 5
		mem_vesselhandle = myswform.oletree.SelectedItem.key
		locate for alltrim(vesselhandle) = alltrim(mem_vesselhandle)
		if found()
		
		
			Do form editvessel.scx
			
			
			
			ELSE
					GOTO bottom
  	STMSG(sysmsg(272))
		ENDIF
	ELSE
		STMSG(sysmsg(242))
	ENDIF
endif
if s_menu == "3_17"
FS_SW = 1
s_menu = "1_0"
o = myswform.oletree
	IF !ISNULL(myswform.oletree.SelectedItem)
		select 5
		mem_vesselhandle = myswform.oletree.SelectedItem.key
		locate for alltrim(vesselhandle) = alltrim(mem_vesselhandle)
		if found()
			
								select 5
					if .not. reccount() = 0
					mymsg = messagebox(sysmsg(152),36,sysmsg(140))
					SELECT 5
					if .not. mymsg = 6
					return
					endif
					
					
					myswform.oletree.nodes.remove(alltrim(mem_vesselhandle))
					myswform.oletree.refresh
					delete
					pack
					select 6
					delete all for alltrim(vesselhandle) = alltrim(mem_vesselhandle)
					pack
					goto top
					endif

			
			
		ELSE
				GOTO bottom
  		STMSG(sysmsg(272))
		ENDIF
	ELSE
		STMSG(sysmsg(242))
	ENDIF
endif
if s_menu == "3_18"
s_menu = "1_0"
myswform.Pageframe1.Page3.Container1.topbtn.click()
endif
if s_menu == "3_19"
s_menu = "1_0"
myswform.Pageframe1.Page3.Container1.prevbtn.click()
endif
if s_menu == "3_20"
s_menu = "1_0"
myswform.Pageframe1.Page3.Container1.nextbtn.click()
endif
if s_menu == "3_21"
s_menu = "1_0"
myswform.Pageframe1.Page3.Container1.lastbtn.click()
endif

* saving edition in  vessel data
if  s_menu == "vessel_edit_save"
FS_SW = 1
s_menu = "1_0"
select 5
myswform.oleTree.Nodes.item(alltrim(vesselhandle)).Selected = .T.
myswform.oletree.SelectedItem.text = alltrim(vesselname)
myswform.oletree.refresh
endif

if s_menu == "3_22"
s_menu = "1_0"

DO FORM newreaction.scx

endif

*!*	if s_menu == "3_22_OK"
*!*	FS_SW = 1
*!*	s_menu = "1_0"
*!*	o = myswform.oletree
*!*	SELECT 7
*!*	kk = o.nodes.add("4_",4,alltrim(reactionhandle),ALLTRIM(REACTIONNAME),0)
*!*	kk.image = "electron"
*!*	myswform.oleTree.Nodes.item(alltrim(reactionhandle)).Selected = .T.
*!*	endif

* saving edition in  reaction data
if  s_menu == "3_22_save"
FS_SW = 1
s_menu = "1_0"
select 7
myswform.oleTree.Nodes.item(alltrim(reactionhandle)).Selected = .T.
myswform.oletree.SelectedItem.text = alltrim(reactionname)
myswform.oletree.refresh

endif

if s_menu == "3_23"
FS_SW = 1
s_menu = "1_0"
o = myswform.oletree
	IF !ISNULL(myswform.oletree.SelectedItem)
		select 7
		mem_reactionhandle = myswform.oletree.SelectedItem.key
		locate for alltrim(reactionhandle) = alltrim(mem_reactionhandle)
		if found()



		Do form editreaction.scx
			
			
			
		ELSE
				GOTO bottom
  		STMSG(sysmsg(273))
		ENDIF
	ELSE
		STMSG(sysmsg(242))
	ENDIF
endif

if s_menu == "3_24"
FS_SW = 1
s_menu = "1_0"
o = myswform.oletree
	IF !ISNULL(myswform.oletree.SelectedItem)
		select 7
		mem_reactionhandle = myswform.oletree.SelectedItem.key
		locate for alltrim(reactionhandle) = alltrim(mem_reactionhandle)
		if found()
	
	
								select 7
							if .not. reccount() = 0
							mymsg = messagebox(sysmsg(166),36,sysmsg(167))
							SELECT 7
							if .not. mymsg = 6
							return
							endif
						
							myswform.oletree.nodes.remove(alltrim(mem_reactionhandle))
							myswform.oletree.refresh
							delete
							pack
							select 8
							delete all for alltrim(reactionhandle) = alltrim(mem_reactionhandle)
							pack
							goto top
							select 9
							delete all for alltrim(reactionhandle) = alltrim(mem_reactionhandle)
							pack
							goto top
							select 10
							delete all for alltrim(reactionhandle) = alltrim(mem_reactionhandle)
							pack
							goto top
							select 11
							delete all for alltrim(reactionhandle) = alltrim(mem_reactionhandle)
							pack
							goto top
							
							endif

		
		
		
		ELSE
				GOTO bottom
  		STMSG(sysmsg(273))
		ENDIF
	ELSE
		STMSG(sysmsg(242))
	ENDIF
endif

if s_menu == "3_25"
s_menu = "1_0"
myswform.Pageframe1.Page4.Container1.topbtn.click()
endif

if s_menu == "3_26"
s_menu = "1_0"
myswform.Pageframe1.Page4.Container1.prevbtn.click()
endif

if s_menu == "3_27"
s_menu = "1_0"
myswform.Pageframe1.Page4.Container1.nextbtn.click()
endif

if s_menu == "3_28"
s_menu = "1_0"
myswform.Pageframe1.Page4.Container1.lastbtn.click()
endif
if s_menu == "Code_New_Circuit"
s_menu = "1_0"
do form newcircuit.scx
endif

*!*	if s_Menu == "New_Circuit_Ok"
*!*	FS_SW = 1
*!*	select 13
*!*	s_menu = "1_0"
*!*	kk = myswform.oleTree.nodes.add("5_",4,alltrim(circuithandle),ALLTRIM(circuitNAME),0)
*!*	kk.image = "frm"
*!*	myswform.oleTree.Nodes.item(alltrim(circuithandle)).Selected = .T.
*!*	endif

if s_menu == "Code_Edit_Circuit"
FS_SW = 1
s_menu = "1_0"
o = myswform.oletree
IF !ISNULL(myswform.oletree.SelectedItem)
	myvar = o.selecteditem.key
	select 13
	locate for alltrim(circuithandle) == alltrim(myvar)	
		if found()
 			do form editcircuit.scx
 		ELSE
 				GOTO bottom
 	STMSG(sysmsg(274))
		endif
else
STMSG(sysmsg(242))
endif
endif

if s_Menu == "New_Circuit_Save"
FS_SW = 1
select 13
s_menu = "1_0"
myswform.oleTree.Nodes.item(alltrim(circuithandle)).Selected = .T.
myswform.oletree.SelectedItem.text = alltrim(circuitname)
myswform.oletree.refresh
endif

if s_menu = "Code_Delete_Circuit"
FS_SW = 1
s_menu = "1_0"
o = myswform.oletree
IF !ISNULL(myswform.oletree.SelectedItem)
	myvar = o.selecteditem.key
	select 13
	locate for alltrim(circuithandle) == alltrim(myvar)	
		if found()
  	  mymsg = messagebox(sysmsg(263),36,sysmsg(202))
  	  SELECT 13
			if mymsg = 6
  	   o.nodes.remove(myvar)
  	   select 14
  	   locate for alltrim(circuithandle) = alltrim(t13->circuithandle)
  	   if found()
  	   do while found()
  	     select 15
  	     delete all for alltrim(branchhandle) = alltrim(t14->branchhandle)
  	     PACK
  	     		GOTO bottom
  	     select 14
  	     delete 
  	   continue
  	   enddo
  	   PACK
  	   		GOTO bottom
  	   endif
  	   select 13
 		  delete
 		  PACK
 		  		GOTO bottom
      endif
		ELSE
				GOTO bottom
 	STMSG(sysmsg(274))
		endif
else
STMSG(sysmsg(242))
endif
endif

*!*	if s_Menu == "New_Branch_Ok"
*!*	FS_SW = 1
*!*	select 14
*!*	s_menu = "1_0"
*!*	kk = myswform.oleTree.nodes.add(alltrim(t13->circuithandle),4,alltrim(branchhandle),ALLTRIM(branchNAME),0)
*!*	kk.image = "dot"
*!*	myswform.oleTree.Nodes.item(alltrim(branchhandle)).Selected = .T.
*!*	endif

if s_menu == "Code_New_Branch"
FS_SW = 1
s_menu = "1_0"

IF !ISNULL(myswform.oletree.SelectedItem)
select 13
locate for alltrim(circuithandle) = alltrim(myswform.oletree.SelectedItem.key)
if found()
do form newbranch.scx
else
mymsg = messagebox(sysmsg(182),6,sysmsg(136))
SELECT 13
endif
else
mymsg = messagebox(sysmsg(183),6,sysmsg(136))
SELECT 13
endif



endif

if s_menu == "Code_First_Branch"
s_menu = "1_0"
myswform.Pageframe1.Page5.Container1.topbtn.click()
endif
if s_menu == "Code_Prev_Branch"
s_menu = "1_0"
myswform.Pageframe1.Page5.Container1.prevbtn.click()
endif
if s_menu = "Code_Next_Branch"
s_menu = "1_0"
myswform.Pageframe1.Page5.Container1.nextbtn.click()
endif

if s_menu == "Code_Last_Branch"
s_menu = "1_0"
myswform.Pageframe1.Page5.Container1.lastbtn.click()
endif

if s_menu == "Code_Delete_Branch"
FS_SW = 1
s_menu = "1_0"
o = myswform.oletree
	IF !ISNULL(myswform.oletree.SelectedItem)
		select 14
		mem_branchhandle = myswform.oletree.SelectedItem.key
		locate for alltrim(branchhandle) = alltrim(mem_branchhandle)
		if found()
	
					if .not. reccount() = 0
				mymsg = messagebox(sysmsg(184),36,sysmsg(135))
				
				if .not. mymsg = 6
				return
				endif
				select 14
				myswform.oletree.nodes.remove(alltrim(branchhandle))
				myswform.oletree.refresh
				select 15
				delete all for alltrim(branchhandle) = alltrim(t14->branchhandle)
				pack
				select 14
				delete
				pack
				goto top
				
				endif

	
	
	
	
		ELSE
				GOTO bottom
	STMSG(sysmsg(275))
		ENDIF
  ELSE
  STMSG(sysmsg(242))
  ENDIF
endif

if s_Menu == "New_Branch_Save"
FS_SW = 1
select 14
s_menu = "1_0"
myswform.oleTree.Nodes.item(alltrim(branchhandle)).Selected = .T.
myswform.oletree.SelectedItem.text = alltrim(branchname)
myswform.oletree.refresh
endif

if S_MENU == "Code_Edit_Branch"
FS_SW = 1
s_menu = "1_0"
o = myswform.oletree
	IF !ISNULL(myswform.oletree.SelectedItem)
		select 14
		mem_branchhandle = myswform.oletree.SelectedItem.key
		locate for alltrim(branchhandle) = alltrim(mem_branchhandle)
		if found()
		Do form editbranch.scx
		ELSE
				GOTO bottom
		STMSG(sysmsg(275))
		ENDIF
  ELSE
  STMSG(sysmsg(242))
  ENDIF
endif

*!*	if S_MENU == "New_Resistance_Ok"
*!*	FS_SW = 1
*!*	s_menu = "1_0"
*!*	kk = myswform.oleTree.nodes.add(alltrim(t14->BRANCHhandle),4,alltrim(RESISTANCEhandle),ALLTRIM(RESISTANCENAME),0)
*!*	kk.image = "electron"
*!*	myswform.oleTree.Nodes.item(alltrim(RESISTANCEhandle)).Selected = .T.
*!*	endif

if S_menu == "New_Resistance_Save"
FS_SW = 1
S_Menu = "1_0"
myswform.oleTree.Nodes.item(alltrim(resistancehandle)).Selected = .T.
myswform.oletree.SelectedItem.text = alltrim(resistancename)
myswform.oletree.refresh
endif

if s_menu == "Code_First_Resistance"
s_menu = "1_0"
myswform.Pageframe1.Page6.Container2.topbtn.click()
endif
if s_menu == "Code_Prev_Resistance"
s_menu = "1_0"
myswform.Pageframe1.Page6.Container2.prevbtn.click()
endif
if s_menu = "Code_Next_Resistance"
s_menu = "1_0"
myswform.Pageframe1.Page6.Container2.nextbtn.click()
endif

if s_menu == "Code_Last_Resistance"
s_menu = "1_0"
myswform.Pageframe1.Page6.Container2.lastbtn.click()
endif

if s_menu == "Code_Delete_Resistance"
FS_SW = 1
s_menu = "1_0"
o = myswform.oletree
IF !ISNULL(myswform.oletree.SelectedItem)
	myvar = o.selecteditem.key
	select 15
	locate for ALLTRIM(resistancehandle) == alltrim(myvar)	
		if found()
		
		
					
					if .not. reccount() = 0
					mymsg = messagebox(sysmsg(201),36,sysmsg(202))
					if .not. mymsg = 6
					return
					endif
					select 15
					myswform.oletree.nodes.remove(alltrim(resistancehandle))
					myswform.oletree.refresh
					delete
					pack
					goto top
				
					endif

		
		
		
		ELSE
				GOTO bottom
	 STMSG(sysmsg(276))
		endif
else
STMSG(sysmsg(242))
endif
endif

if S_MENU == "Code_Edit_Resistance"
FS_SW = 1
s_menu = "1_0"
o = myswform.oletree
IF !ISNULL(myswform.oletree.SelectedItem)
	myvar = o.selecteditem.key
	select 15
	locate for ALLTRIM(resistancehandle) == alltrim(myvar)	
		if found()
		Do form editresistance.scx
		ELSE
				GOTO bottom
	 		STMSG(sysmsg(276))
		endif
else
STMSG(sysmsg(242))
endif
endif

if s_menu == "Code_New_Resistance"
FS_SW = 1
s_menu = "1_0"


IF !ISNULL(myswform.oletree.SelectedItem)
select 14
locate for alltrim(branchhandle) = alltrim(myswform.oletree.SelectedItem.key)
if found()
do form newresistance.scx
else
mymsg = messagebox(sysmsg(199),6,sysmsg(136))
SELECT 14
endif
else
mymsg = messagebox(sysmsg(200),6,sysmsg(136))
SELECT 14
endif




endif

if S_Menu ==  "Code_New_Resistance"
FS_SW = 1
s_menu = "1_0"
myswform.Pageframe1.Page6.deleteResistancebtn.click()
endif
if s_menu == "Main Circuit"
FS_SW = 1
s_menu = "1_0"
do form maincircuit.scx
endif
if s_menu == "Main Resistance"
FS_SW = 1
s_menu = "1_0"
do form mainresistance.scx
endif
if s_menu == "Main Switch"
FS_SW = 1
s_menu = "1_0"
do form mainswitch.scx
endif
if s_menu == "Branch Switch"
FS_SW = 1
s_menu = "1_0"
do form branchswitch.scx
endif
if S_MENU = "DoubleS Library"
s_menu = "1_0"
ShellExecute(0,"open","HELP\SS_LIB.HTM","","",1)
endif
if S_MENU = "Allegro"
s_menu = "1_0"
ShellExecute(0,"open","HELP\Allegro.chm","","",1)
endif
if S_MENU = "(x)Harbour"
s_menu = "1_0"
ShellExecute(0,"open","HELP\(x)Harbour.chm","","",1)
endif
if S_MENU = "MiniGUI"
s_menu = "1_0"
ShellExecute(0,"open","HELP\MiniGUI.CHM","","",1)
endif
if S_MENU = "TSBrowse"
s_menu = "1_0"
ShellExecute(0,"open","HELP\TSBrowse.chm","","",1)
endif

if S_MENU = "DoubleS Research"
s_menu = "1_0"
ShellExecute(0,"open","HELP\DoubleS.pdf","","",1)
endif
if S_MENU = "DoubleS Framework"
s_menu = "1_0"
*ShellExecute(0,"open","HELP\PWCTHelp.chm","","",1)
ShellExecute(0,"open","http://doublesvsoop.sourceforge.net","","",1)
ENDIF
if S_Menu = "DoubleS Lecture"
s_menu = "1_0"
ShellExecute(0,"open","HELP\DoubleS.ppt","","",1)
endif
IF S_menu = "DoubleS Goals"
s_menu = "1_0"
ShellExecute(0,"open","HELP\DoubleSGOALS.txt","","",1)
ENDIF
IF S_menu = "DoubleS FAQ"
s_menu = "1_0"
ShellExecute(0,"open","HELP\DoubleSFAQ.TXT","","",1)
ENDIF
IF s_menu = "Supernova"
s_menu = "1_0"
ShellExecute(0,"open",APPLICATION.DefaultFilePath + "\supernova\Simple_IDE.exe","","",1)
ENDIF
IF s_menu = "ArabicSupernova"
s_menu = "1_0"
ShellExecute(0,"open",APPLICATION.DefaultFilePath + "\supernovaar\Simple_IDE.exe","","",1)
endif
if s_menu = "Calculator"
s_menu = "1_0"
ShellExecute(0,"open","calc.Exe","","",1)
endif
if s_menu = "NotePad"
s_menu = "1_0"
ShellExecute(0,"open","Notepad.Exe","","",1)
endif
if S_menu = "Paint"
s_menu = "1_0"
ShellExecute(0,"open","MSpaint.Exe","","",1)
endif
if s_menu = "New Veto"
FS_SW = 1
s_menu = "1_0"
do form newveto.scx
endif
if s_menu = "New Goal"
FS_SW = 1
s_menu = "1_0"
do form newgoal.scx
endif
If s_menu = "Edit Veto"
FS_SW = 1
s_menu = "1_0"
o = myswform.oletree
IF !ISNULL(myswform.oletree.SelectedItem)
	myvar = o.selecteditem.key
	select 16
	locate for alltrim(vetohandle) == alltrim(myvar)	
		if found()
 			do form editveto.scx
 		ELSE
 				GOTO bottom
 		STMSG(sysmsg(277))
		endif
else
STMSG(sysmsg(242))
endif
endif
If s_menu = "Edit Goal"
FS_SW = 1
s_menu = "1_0"

IF Sys_ShowDoubleS = .t. && HarbourPWCT & DoubleS
o = myswform.oletree
IF !ISNULL(myswform.oletree.SelectedItem)
	myvar = o.selecteditem.key
	select 35
	locate for ALLTRIM(goalhandle) == alltrim(myvar)	
		if found()
 			do form editgoal.scx
 		ELSE
 				GOTO bottom
 		STMSG(sysmsg(280))
		endif
else
STMSG(sysmsg(242))
ENDIF

ELSE && RPWI Only
	SELECT 35
	IF RECCOUNT() > 0
			do form editgoal.scx
						
	ELSE
			stmsg("Sorry, No goal to edit.")
	endif

ENDIF

endif

*!*	if s_menu =  "New_Veto_Ok"
*!*	FS_SW = 1
*!*	s_menu = "1_0"
*!*	select 16
*!*	kk = myswform.oleTree.nodes.add("8_",4,alltrim(vetohandle),ALLTRIM(vetoNAME),0)
*!*	kk.image = "app"
*!*	myswform.oleTree.Nodes.item(alltrim(vetohandle)).Selected = .T.
*!*	ENDIF

*!*	if s_menu =  "New_Goal_Ok"
*!*	FS_SW = 1
*!*	s_menu = "1_0"
*!*	select 35
*!*	GOTO bottom
*!*	kk = myswform.oleTree.nodes.add("11_",4,alltrim(goalhandle),ALLTRIM(goalNAME),0)
*!*	kk.image = "app"
*!*	myswform.oleTree.Nodes.item(alltrim(goalhandle)).Selected = .T.
*!*	ENDIF

if S_menu == "New_Veto_Save"
FS_SW = 1
select 16
S_Menu = "1_0"
myswform.oleTree.Nodes.item(alltrim(vetohandle)).Selected = .T.
myswform.oletree.SelectedItem.text = alltrim(vetoname)
myswform.oletree.refresh
endif
if S_menu == "New_Goal_Save"

S_Menu = "1_0"
FS_SW = 1
IF Sys_ShowDoubleS = .t.
select 35
myswform.oleTree.Nodes.item(alltrim(goalhandle)).Selected = .T.
myswform.oletree.SelectedItem.text = alltrim(goalname)
myswform.oletree.refresh
else
FOR I = 1 TO APPLICATION.Forms.Count 
	IF APPLICATION.Forms.Item(I).NAME = "RPWIFORM"
			APPLICATION.Forms.Item(I).SHOW()
			APPLICATION.Forms.Item(I).init()
		EXIT
	ENDIF
NEXT
ENDIF


endif
if s_menu = "Delete Veto"
FS_SW = 1
s_menu = "1_0"
s_menu = "1_0"
o = myswform.oletree
IF !ISNULL(myswform.oletree.SelectedItem)
	myvar = o.selecteditem.key
	select 16
	locate for alltrim(vetohandle) == alltrim(myvar)	
		if found()
  	  mymsg = messagebox(sysmsg(263),36,sysmsg(202))
  	  SELECT 16
			if mymsg = 6
  	   o.nodes.remove(myvar)
  	   delete
 		  PACK
 		  		GOTO bottom
      endif
		ELSE
				GOTO bottom
 	STMSG(sysmsg(277))
		endif
else
STMSG(sysmsg(242))
endif
endif
if s_menu = "Delete Goal"
FS_SW = 1
s_menu = "1_0"

IF Sys_ShowDoubleS = .t. && HarbourPWCT & DoubleS
o = myswform.oletree
IF !ISNULL(myswform.oletree.SelectedItem)
	myvar = o.selecteditem.key
	select 35
	locate for ALLTRIM(goalhandle) == alltrim(myvar)	
		if found()
  	  mymsg = messagebox(sysmsg(263),36,sysmsg(202))
  	  SELECT 35
			if mymsg = 6
  	   o.nodes.remove(myvar)
       SELECT t38
       DELETE ALL FOR goalid == t33->goalhandle
       		GOTO bottom
       SELECT t33
  	   DELETE
  	   SELECT t38
  	   PACK
  	   		GOTO bottom
  	   SELECT t33
 		  PACK
 		  		GOTO bottom
      endif
		ELSE
				GOTO bottom
 	STMSG(sysmsg(280))
		endif
else
STMSG(sysmsg(242))
ENDIF


ELSE && RPWI Only
	SELECT 35
	IF RECCOUNT() > 0
	
			mymsg = messagebox(sysmsg(263),36,sysmsg(202))
			SELECT 35
			if mymsg = 6
  	   SELECT t38
       DELETE ALL FOR goalid == t33->goalhandle
       		GOTO bottom
       SELECT t33
  	   DELETE
  	   SELECT t38
  	   PACK
  	   		GOTO bottom
  	   SELECT t33
 		  PACK
 		  		GOTO bottom
      endif
			
	ELSE
			stmsg("Sorry, No goal to delete.")
	endif

ENDIF



endif

if s_menu == "First Veto"
s_menu = "1_0"
myswform.Pageframe1.Page7.Container3.topbtn.click()
endif
if s_menu == "Prev Veto"
s_menu = "1_0"
myswform.Pageframe1.Page7.Container3.prevbtn.click()
endif
if s_menu = "Next Veto"
s_menu = "1_0"
myswform.Pageframe1.Page7.Container3.nextbtn.click()
endif

if s_menu == "Last Veto"
s_menu = "1_0"
myswform.Pageframe1.Page7.Container3.lastbtn.click()
endif
If S_menu == "New Channel"
FS_SW = 1
s_menu = "1_0"
do form newchannel.scx
endif

*!*	if s_menu =  "New_Channel_Ok"
*!*	FS_SW = 1
*!*	s_menu = "1_0"
*!*	select 17
*!*	kk = myswform.oleTree.nodes.add("9_",4,alltrim(channelhandle),ALLTRIM(channelNAME),0)
*!*	kk.image = "veto"
*!*	myswform.oleTree.Nodes.item(alltrim(channelhandle)).Selected = .T.
*!*	ENDIF

if s_menu = "Delete Channel"
FS_SW = 1
s_menu = "1_0"
o = myswform.oletree
IF !ISNULL(myswform.oletree.SelectedItem)
	myvar = o.selecteditem.key
	select 17
	locate for alltrim(channelhandle) == alltrim(myvar)	
		if found()
  	  mymsg = messagebox(sysmsg(263),36,sysmsg(202))
  	  SELECT 17
			if mymsg = 6
  	   o.nodes.remove(myvar)
  	   delete
 		  PACK
 		  		GOTO bottom
      endif
		ELSE
				GOTO bottom
 	STMSG(sysmsg(278))
		endif
else
STMSG(sysmsg(242))
endif
endif
If s_menu = "Edit Channel"
s_menu = "1_0"
o = myswform.oletree
IF !ISNULL(myswform.oletree.SelectedItem)
	myvar = o.selecteditem.key
	select 17
	locate for alltrim(channelhandle) == alltrim(myvar)	
		if found()
 			do form editchannel.scx
 		ELSE
 				GOTO bottom
 		STMSG(sysmsg(278))
		endif
else
STMSG(sysmsg(242))
endif
endif
if S_menu == "New_Channel_Save"
FS_SW = 1
select 17
S_Menu = "1_0"
myswform.oleTree.Nodes.item(alltrim(channelhandle)).Selected = .T.
myswform.oletree.SelectedItem.text = alltrim(channelname)
myswform.oletree.refresh
endif
If s_menu = "Sender Veto"
FS_SW = 1
s_menu = "1_0"
do form senderveto.scx
endif
If s_menu = "Receiver Veto"
FS_SW = 1
s_menu = "1_0"
do form receiverveto.scx
endif
If S_menu == "New Connection"
FS_SW = 1
s_menu = "1_0"
do form newconnection.scx
endif

*!*	if s_menu =  "New_Connection_Ok"
*!*	FS_SW = 1
*!*	s_menu = "1_0"
*!*	select 18
*!*	kk = myswform.oleTree.nodes.add("10_",4,alltrim(connectionhandle),ALLTRIM(connectionNAME),0)
*!*	kk.image = "electron"
*!*	myswform.oleTree.Nodes.item(alltrim(connectionhandle)).Selected = .T.
*!*	ENDIF

if s_menu == "Edit Connection"
FS_SW = 1
s_menu = "1_0"
o = myswform.oletree
IF !ISNULL(myswform.oletree.SelectedItem)
	myvar = o.selecteditem.key
	select 18
	locate for alltrim(connectionhandle) == alltrim(myvar)	
		if found()
 			do form editconnection.scx
 		ELSE
 				GOTO bottom
 	STMSG(sysmsg(279))
		endif
else
STMSG(sysmsg(242))
endif
endif
if S_menu == "New_Connection_Save"
FS_SW = 1
select 18
S_Menu = "1_0"
myswform.oleTree.Nodes.item(alltrim(connectionhandle)).Selected = .T.
myswform.oletree.SelectedItem.text = alltrim(connectionname)
myswform.oletree.refresh
endif
if s_menu = "Delete Connection"
FS_SW = 1
s_menu = "1_0"
o = myswform.oletree
IF !ISNULL(myswform.oletree.SelectedItem)
	myvar = o.selecteditem.key
	select 18
	locate for alltrim(connectionhandle) == alltrim(myvar)	
		if found()
  	  mymsg = messagebox(sysmsg(263),36,sysmsg(202))
  	  SELECT 18
			if mymsg = 6
  	   o.nodes.remove(myvar)
  	   select 19
  	   delete all for alltrim(connectionhandle) == alltrim(t18->connectionhandle)
  	   PACK
  	   		GOTO bottom
  	   select 18
  	   delete
 		  PACK
 		  		GOTO bottom
      endif      
		ELSE
				GOTO bottom
 		STMSG(sysmsg(279))
		endif
else
STMSG(sysmsg(242))
endif
endif
* open server
if s_menu == "1_2" .or. FILE(myfiletoopen)
				myfile = myfiletoopen
				IF FILE(myfiletoopen)
							lmyfiletoopen = .t.
							myfiletoopen = ""
				ELSE
							lmyfiletoopen = .f.
				ENDIF
				s_menu = "1_0"
				IF  s_lastactivewindow = 4 .or. application.ActiveForm.name = "IPWRITER" 
				
					FOR I = 1 TO APPLICATION.Forms.Count 
						IF APPLICATION.Forms.Item(I).NAME = "IPWRITER" 
  							APPLICATION.Forms.Item(I).COMMAND3.CLICK
  							EXIT
						ENDIF
					NEXT
				
				
						RETURN
				ENDIF
				IF s_lastactivewindow = 3 .or. application.ActiveForm.name = "TRANSDFORM"   
				
						FOR I = 1 TO APPLICATION.Forms.Count 
						IF APPLICATION.Forms.Item(I).NAME = "TRANSDFORM" 
  							APPLICATION.Forms.Item(I).MENULABEL2.CLICK
  							EXIT
						ENDIF
					NEXT
				
						RETURN
				ENDIF
			  IF s_lastactivewindow = 2 .or. application.ActiveForm.name = "INTERDFORM"  
			  
			  		FOR I = 1 TO APPLICATION.Forms.Count 
						IF APPLICATION.Forms.Item(I).NAME = "INTERDFORM"
  							APPLICATION.Forms.Item(I).LABEL8.CLICK
  							EXIT
						ENDIF
					NEXT
			  
						
						RETURN
				ENDIF
				IF FS_SW = 1
						MYMSG = MESSAGEBOX("Save Changes ?",4,"Save")
						IF mymsg = 6
								if .not. mysys_file = "No Name"
										do form upload
										delete file (mySYS_FILE)
										select 23
										copy to (MYSYS_FILE)
										GOTO bottom
								ELSE
										IF lmyfiletoopen = .f.
												myfile = GETFILE("SuperServerFile:SSF","File Name","Save",1,"Save As")
										ENDIF
										IF .not. testfile(myfile,1111) = .t.
												RETURN
										ENDIF
										if .not. empty(myfile)
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
												if file(myfile)
														mymsg = messagebox(sysmsg(284),36,sysmsg(285))
														if mymsg = 6
																delete file (myfile)
																do form upload
																select 23
																copy to (myfile)
																GOTO bottom
																MYSYS_FILE = MYFILE
																myswform.text1.value =  "(File :" + mysys_file + " )"
														endif
												else
														do form upload
														select 23
														copy to (myfile)
														GOTO bottom
														MYSYS_FILE = MYFILE
														myswform.text1.value ="(File :" + mysys_file + " )"
												endif
										endif
								endif
						ENDIF
						FS_SW = 0
				ENDIF
				IF s_mem3 = .f. 
						IF lmyfiletoopen = .f.
								myfile = GETFILE("SuperServerFile:SSF","File Name ","Open",0,"Open Server")
						ENDIF
				ELSE
								myfile = s_mem
								s_mem3 = .f.
								SELECT 0
								myfvar = ALLTRIM(t47->tfile)
								IF LEFT(myfvar,1) = "\"
										myfvar = application.DefaultFilePath + myfvar
								ENDIF
								DO Cpzero WITH (myfvar),CPCURRENT(1)
								USE (myfvar)
								copy to (s_mem)
								GOTO bottom
								USE
								SELECT t23
				ENDIF
				IF .not. testfile(myfile,1111) = .t.
							RETURN
				ENDIF
				IF .not. testfile(myfile,22) = .t.
								RETURN
				ENDIF
				if .not. empty(myfile)
								* closing current server before opening another one
								IF win_transd = .t.
										FOR I = 1 TO APPLICATION.Forms.Count 
													IF APPLICATION.Forms.Item(I).NAME = "TRANSDFORM"
  															APPLICATION.Forms.Item(I).closebtn.click
																EXIT
													ENDIF
												
										NEXT
								ENDIF
															
								FOR I = 1 TO APPLICATION.Forms.Count 
												
													IF APPLICATION.Forms.Item(I).NAME = "RPWIFORM"
																APPLICATION.Forms.Item(I).closebtn.click
																	EXIT
													ENDIF
										NEXT
								
								close database
								myswform.load()
								myswform.OLETREE.Visible = .F.
FT = .T.
o = myswform.oletree
o.nodes.remove("2_")
o.nodes.remove("3_")
o.nodes.remove("4_")
o.nodes.remove("5_")
o.nodes.remove("8_")
o.nodes.remove("9_")
o.nodes.remove("10_")
o.nodes.remove("11_")
o.imagelist = myswform.oleImages
s = o.nodes.add(,1,"2_","Data Unit : Atoms",0)
s.image = "atom"
s = o.nodes.add(,1,"3_","Data Unit : Vessels",0)
s.image = "atom"
s = o.nodes.add(,1,"4_","Data Unit : Reactions",0)
s.image = "atom"
s = o.nodes.add(,1,"5_","Code Unit : Circuits",0)
s.image = "frm"
s = o.nodes.add(,1,"8_","Veto Unit : Vetos",0)
s.image = "world"
s = o.nodes.add(,1,"9_","Veto Unit : Channels",0)
s.image = "world"
s = o.nodes.add(,1,"10_","Veto Unit : Connections",0)
s.image = "world"
s = o.nodes.add(,1,"11_","Goal Unit : Goals",0)
s.image = "nicegoal"
myswform.REFRESH()
myswform.Pageframe1.page1.activate()
myswform.Pageframe1.Page1.Pageframe1.Page1.activate()
myswform.pageframe1.page8.olertF.VALUE = ""
myswform.pageframe1.page8.text1.Value = 0
myswform.pageframe1.page8.combo1.Value = 0
myswform.pageframe1.page8.combo1.displayvalue = ""
* coping server file to t0 file
select 23
delete all
PACK
GOTO bottom
select 24
DO Cpzero WITH (myfile),CPCURRENT(1)
use (myfile) alias t24
goto top
for x = 1 to reccount()
select 23
append blank
replace reg1    with t24->reg1
replace reg2    with t24->reg2
replace reg3    with t24->reg3
replace reg4    with t24->reg4
replace reg5    with t24->reg5
replace reg6    with t24->reg6
replace reg7    with t24->reg7
replace reg8    with t24->reg8
replace reg9    with t24->reg9
replace reg10   with t24->reg10
replace reg11   with t24->reg11
replace reg12   with t24->reg12
replace reg13   with t24->reg13
replace reg14   with t24->reg14
replace reg15   with t24->reg15
TRY
replace exreg1   with t24->exreg1
replace exreg2   with t24->exreg2
replace exreg3   with t24->exreg3
replace exreg4   with t24->exreg4
replace exreg5   with t24->exreg5
replace exreg6   with t24->exreg6
CATCH
ENDTRY
replace rectype with t24->Rectype
select 24
skip 1
next
use
select 23
MYSYS_FILE = MYFILE
* distributing t0 data to other files
goto top
for x = 1 to reccount()
 if t0->rectype = 1
 select 1
 append blank
 replace atomname with t0->reg1
 replace atomhandle with t0->reg2
 endif
 if t0->rectype = 2
 select 2
 append blank
 replace atomhandle  with t0->reg1
 replace shellname   with t0->reg13 
 replace shellhandle with t0->reg2
 endif
 if t0->rectype = 3
 select 3
 append blank
 replace shellhandle     with t0->reg1
 replace subshellname    with t0->reg13
 replace subshellhandle  with t0->reg2
 endif
 if t0->rectype = 4
 select 4
 append blank
 replace subshellhandle with t0->reg1
 replace electronhandle with t0->reg2
 replace electrontype   with t0->reg13
 replace electronname   with t0->reg3
 replace electrondata   with t0->reg12
 endif
 if t0->rectype = 5
 select 5
 append blank
 replace vesselname   with t0->reg1
 replace vesselhandle with t0->reg2
 endif
 if t0->rectype = 6
 select 6
 append blank
 replace vesselhandle with t0->reg1
 replace atomhandle   with t0->reg2
 endif
 if t0->rectype = 7
 select 7
 append blank
 replace reactionhandle with t0->reg1
 replace reactionname with t0->reg2
 endif
 if t0->rectype = 8
  select 8
  append blank
  replace reactionhandle with t0->reg1
  replace vesselhandle with t0->reg2
 endif
 if t0->rectype = 9
  select 9
  append blank
  replace reactionhandle with t0->reg1
  replace atomhandle     with t0->reg2
 endif
 if t0->rectype = 10
  select 10
  append blank
 replace reactionhandle with t0->reg1
 replace shellname      with t0->reg2
 endif
 if t0->rectype = 11
  select 11
  append blank
  replace reactionhandle with t0->reg1
  replace subshellname with t0->reg2
 endif
 if t0->rectype = 12
  select 12
  goto top
  replace MainCircuit    with t0->Reg1
  replace MainResistance with t0->reg2
  replace MainSwitch     with t0->reg14
  replace BranchSwitch   with t0->reg15
 endif
 if t0->rectype = 13
  select 13
  append blank
  replace CircuitName    with t0->Reg1
  replace CircuitHandle  with t0->reg2
  replace Mainresistance with t0->Reg3
  replace mainswitch     with t0->reg14
 endif
 if t0->rectype = 14
  select 14
  append blank
  replace BranchName    with t0->reg1
  replace BranchHandle  with t0->Reg2
  replace CircuitHandle with t0->reg3
  replace ParallelTo    with t0->reg4
  replace branchswitch  with t0->reg14
 endif
 if t0->rectype = 15
  select 15
  append blank
  replace ResistanceName   with t0->reg1
  replace ResistanceHandle with t0->reg2
  replace BranchHandle     with t0->reg3
  replace Resistancecode   with t0->reg12
  endif
 if t0->rectype = 16
  select 16
  append blank
  replace vetohandle     with t0->reg1
  replace vetoname       with t0->reg2
  replace vetotype       with t0->reg3
  replace CircuitName    with t0->reg4
  replace BranchName     with t0->reg5
  replace ResistanceName with t0->reg6
 endif
 if t0->rectype = 17
  select 17
  append blank
		replace ChannelHandle with t0->reg1
    replace ChannelName   with t0->reg2
    replace ChannelType   with t0->reg3
    replace AtomName 		 with t0->reg4
    replace ShellName 		with t0->reg5
    replace SubShellName  with t0->reg6
 endif
 if t0->rectype = 18
  select 18
  append blank
		replace Connectionhandle with t0->reg1
    replace connectionname   with t0->reg2
    replace connectiontype   with t0->reg3
    replace inputChannel     with t0->reg4 
    replace OutputChannel    with t0->reg5
    replace ReceivingVeto    with t0->reg6
    replace SendingVeto      with t0->reg7
    replace AtomName         with t0->reg8
    replace ShellName        with t0->reg9 
    replace SubShellName     with t0->reg10
    replace ElectronName     with t0->reg11
 endif
 if t0->rectype = 19
  select 19
  append blank
  replace Connectionhandle  with t0->reg1
  replace ServerName        with t0->Reg2
 endif
 if t0->rectype = 20
  select 20
  GOTO top
  *append blank
  replace receivingveto with t0->Reg1
  replace sendingveto   with t0->reg2
 endif
 if t0->rectype = 21
  select 21
  goto top
 * append blank
  replace serverinfo with t0->reg12
 endif
 if t0->rectype = 22
  select 22
 * append blank
 goto top
  replace servername    with t0->reg1
  replace servertype    with t0->Reg2
  replace eigenvalue    with t0->reg3
  replace definedetails with t0->reg12
  replace f_c1 WITH t0->reg4
  replace f_c2 WITH t0->reg5
  replace f_n1 WITH VAL(t0->reg6)
  replace f_n2 WITH VAL(t0->reg7)
  replace f_n3 WITH VAL(t0->reg8)
  replace f_n4 WITH VAL(t0->reg9)
  replace f_n5 WITH VAL(t0->reg10)
  replace f_n6 WITH VAL(t0->reg11)
  replace f_n7 WITH VAL(t0->reg13)
  replace f_n8 WITH VAL(t0->exreg6)
 endif
 if t0->rectype = 23
 atomsnum        = val(reg1)
 electronsnum    = val(reg2)
 vesselsnum      = val(reg3)
 reactionsnum    = val(reg4)
 circuitsnum     = val(reg5)
 branchsnum      = val(reg6)
 resistancesnum  = val(reg7)
 vetosnum        = val(reg8) 
 channelsnum     = val(reg9)
 connectionsnum  = val(reg10)
 goalsnum				= VAL(reg11)
 stepsnum				= VAL(reg12)
  endif
 if t0->rectype = 33
  select t33
  append blank
  replace goalhandle     with t0->reg1
  replace goalname       with t0->reg2
  replace goaltype       with t0->reg3
  replace CircuitName    with t0->reg4
  replace BranchName     with t0->reg5
  replace ResistanceName with t0->reg6
 endif
 if t0->rectype = 38
  select t38
  append blank
  replace goalid     with t0->reg1
  replace parentid   with t0->reg2
  replace stepid     with t0->reg3
  replace stepName   with t0->exreg6
  replace stepdata   with t0->exreg1
  replace stepana    with t0->exreg2
  replace stepinf    with t0->exreg3
  replace stepcode   with t0->exreg4
  replace stepdis    with t0->reg14
  replace stepinfo   with t0->exreg5
  replace stephis    WITH t0->reg12
  replace stepinterid WITH t0->reg4
  replace stepinternum WITH VAL(t0->reg5)
 ENDIF
 IF t0->rectype = 46
 SELECT t46
 GOTO top
 LOCATE FOR UPPER(ALLTRIM(f_iid)) == UPPER(ALLTRIM(t0->reg1)) && fix problem related to repeated history as a result of bad paste steps code in  goal designer
 IF .not. FOUND() 																						&& this problem fixed starting from PWCT 1.8 (Smart)
 APPEND BLANK 
 replace f_iid WITH t0->reg1
 replace f_stepid WITH t0->reg2
 replace f_hisdate WITH t0->reg3
 replace f_histime WITH t0->reg4
 replace f_myhis WITH t0->reg12
 ELSE
 GOTO top
 endif
 
 
 ENDIF
select 23
skip 1
next

o = myswform.oletree
* adding server data to server tree
* adding all atoms
select 1
goto top
for x = 1 to reccount()
kk = o.nodes.add("2_",4,alltrim(atomhandle),alltrim(atomname),0)
kk.image = "vessel"
*kk = o.nodes.add(alltrim(atomhandle),4,left(alltrim(atomhandle),;
*						len(alltrim(atomhandle))-1)+"1_","Shells",0)
*kk.image = "reaction"
skip 1
next
* adding all shells
select 2
goto top
for x = 1 to reccount()
	kk =	o.nodes.add(alltrim(atomhandle),4,;
										alltrim(shellhandle),alltrim(shellname),0)
	kk.image = "db"
skip 1
next
* adding all subshells
select 3
goto top
for x = 1 to reccount()
	kk=		o.nodes.add(alltrim(shellhandle),4,alltrim(subshellhandle),alltrim(subshellname),0)
	kk.image = "dbf"
skip 1
next
* adding all electrons
select 4
goto top
for x = 1 to reccount()
  kk = o.nodes.add(alltrim(subshellhandle),4,alltrim(electronhandle),alltrim(electronname),0)
  kk.image = "electron"
skip 1
next
* adding all vessels
select 5
goto top
for x = 1 to reccount()
kk = o.nodes.add("3_",4,alltrim(vesselhandle),ALLTRIM(VESSELNAME),0)
kk.image = "electron"
skip 1
next
* adding all reactions
select 7
goto top
for x = 1 to reccount()
kk = o.nodes.add("4_",4,alltrim(reactionhandle),ALLTRIM(REACTIONNAME),0)
kk.image = "electron"
skip 1
next
* adding all circuits
select 13
goto top
for x = 1 to reccount()
kk = myswform.oleTree.nodes.add("5_",4,alltrim(circuithandle),ALLTRIM(circuitNAME),0)
kk.image = "frm"
skip 1
next
* adding all branches
select 14
goto top
for x = 1 to reccount()
kk = myswform.oleTree.nodes.add(alltrim(circuithandle),4,alltrim(branchhandle),ALLTRIM(branchNAME),0)
kk.image = "dot"
skip 1
next
* adding all resistances
select 15
goto top
for x = 1 to reccount()
kk = myswform.oleTree.nodes.add(alltrim(BRANCHhandle),4,alltrim(RESISTANCEhandle),ALLTRIM(RESISTANCENAME),0)
kk.image = "electron"
skip 1
next
* adding all vetos
select 16
goto top
for x = 1 to reccount()
kk = myswform.oleTree.nodes.add("8_",4,alltrim(vetohandle),ALLTRIM(vetoNAME),0)
kk.image = "app"
skip 1
next
* adding all goals
select t33
goto top
for x = 1 to reccount()
kk = myswform.oleTree.nodes.add("11_",4,alltrim(goalhandle),ALLTRIM(goalNAME),0)
kk.image = "app"
skip 1
next
* adding all channels
select 17
goto top
for x = 1 to reccount()
kk = myswform.oleTree.nodes.add("9_",4,alltrim(channelhandle),ALLTRIM(channelNAME),0)
kk.image = "veto"
skip 1
next
* adding all connection
select 18
goto top
for x = 1 to reccount()
kk = myswform.oleTree.nodes.add("10_",4,alltrim(connectionhandle),ALLTRIM(connectionNAME),0)
kk.image = "electron"
skip 1
next
myswform.REFRESH()
myswform.Pageframe1.activepage = 1
myswform.Pageframe1.page1.activate()
myswform.Pageframe1.Page1.Pageframe1.Page1.activate()
* moving pointer to first record in all work areas
for x = 1 to 22
select (x)
goto top
next
* adding file name to window title
myswform.text1.value = "(File :" + mysys_file + " )"
myswform.OLETREE.Visible = .T.


IF win_rpwi = .f.
DO FORM rpwi
ENDIF

FOR I = 1 TO APPLICATION.Forms.Count 

	IF APPLICATION.Forms.Item(I).NAME = "RPWIFORM"
			APPLICATION.Forms.Item(I).SHOW()
		EXIT
	ENDIF
NEXT




endif
endif
* NEW SERVER
IF S_MENU == "New Server"
s_menu = "1_0"
IF FS_SW = 1
	MYMSG = MESSAGEBOX("Save Changes ?",4,"Save")
	IF mymsg = 6
		if .not. mysys_file = "No Name"
		do form upload
		delete file (mySYS_FILE)
		select 23
		copy to (MYSYS_FILE)
				GOTO bottom
		else
			myfile = GETFILE("SuperServerFile:SSF","File Name","Save",1,"Save As")
IF .not. testfile(myfile,1111) = .t.
RETURN
ENDIF
if .not. empty(myfile)
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
if file(myfile)
mymsg = messagebox(sysmsg(284),36,sysmsg(285))
if mymsg = 6
delete file (myfile)
do form upload
select 23
copy to (myfile)
		GOTO bottom
MYSYS_FILE = MYFILE
myswform.text1.value =  "(File :" + mysys_file + " )"
endif
else
do form upload
select 23
copy to (myfile)
		GOTO bottom
MYSYS_FILE = MYFILE
myswform.text1.value ="(File :" + mysys_file + " )"
endif
endif
		endif
	ENDIF
	FS_SW = 0
ENDIF
		* saving varialble s_mem which will be affected with myswform.load()
		vvar1 = s_mem
		* setting server type
		vvar2 = s_mem2
		if vvar2 = 1
		   vvar3 = "DoubleS Server"
		endif
	  if vvar2 = 2
  	   vvar3 = "Super Data Server"
		endif
		if vvar2 = 3
  	   vvar3 = "Super Code Server"
		endif
		if vvar2 = 4
  	   vvar3 = "Super Veto Server"
		endif
		if vvar2 = 5
		  	   vvar3 = "Network Server"
		endif
		if vvar2 = 6
		  	   vvar3 = "Master Server"
		endif
		if vvar2 = 7
		  	   vvar3 = "Slave Server"
		endif
		if vvar2 = 8
		  	   vvar3 = "Connection Server"
		endif
		if vvar2 = 9
		  	   vvar3 = "Data Server"
		endif
		if vvar2 = 10
		  	   vvar3 = "Code Server"
		endif
		if vvar2 = 11
		  	   vvar3 = "Veto Server"
		endif
		if vvar2 = 12
		  	   vvar3 = "Procedure Server"
		endif
		if vvar2 = 13
		  	   vvar3 = "Class Server"
		endif

		* 1 - close server
		IF win_transd = .t.
			FOR I = 1 TO APPLICATION.Forms.Count 
				IF APPLICATION.Forms.Item(I).NAME = "TRANSDFORM"
		  		APPLICATION.Forms.Item(I).closebtn.click
					EXIT
				ENDIF
					
			NEXT
	  ENDIF
	  
	  	FOR I = 1 TO APPLICATION.Forms.Count 
												
													IF APPLICATION.Forms.Item(I).NAME = "RPWIFORM"
																APPLICATION.Forms.Item(I).closebtn.click
																	EXIT
													ENDIF
										NEXT
	  		
	  
		close database

		myswform.load()
		FT = .T.
		o = myswform.oletree
		o.nodes.remove("2_")
		o.nodes.remove("3_")
		o.nodes.remove("4_")
		o.nodes.remove("5_")
		o.nodes.remove("8_")
		o.nodes.remove("9_")
		o.nodes.remove("10_")
		o.nodes.remove("11_")
		o.imagelist = myswform.oleImages
		s = o.nodes.add(,1,"2_","Data Unit : Atoms",0)
		s.image = "atom"
		s = o.nodes.add(,1,"3_","Data Unit : Vessels",0)
		s.image = "atom"
		s = o.nodes.add(,1,"4_","Data Unit : Reactions",0)
		s.image = "atom"
		s = o.nodes.add(,1,"5_","Code Unit : Circuits",0)
		s.image = "frm"
		s = o.nodes.add(,1,"8_","Veto Unit : Vetos",0)
		s.image = "world"
		s = o.nodes.add(,1,"9_","Veto Unit : Channels",0)
		s.image = "world"
		s = o.nodes.add(,1,"10_","Veto Unit : Connections",0)
		s.image = "world"
		s = o.nodes.add(,1,"11_","Goal Unit : Goals",0)
		s.image = "nicegoal"
		select 22
		replace servertype with vvar3
		myswform.Pageframe1.activepage = 1
		myswform.Pageframe1.page1.activate()
		myswform.Pageframe1.Page1.Pageframe1.Page1.activate()
		* 2 - create new server
		if file(vvar1)
		delete file (vvar1)
		endif
		select 23
		copy to (vvar1)
				GOTO bottom
		* 3 - adding file name to window title
		myswform.text1.value = "(File :" + vvar1 + " )"
		mysys_file = vvar1
		
		v_file = ALLTRIM(UPPER(myswform.TEXt1.Value))
		v_file = SUBSTR(v_file,2,LEN(v_file)-2)
		v_file = STRTRAN(v_file,"FILE :","")
		*************** Configuration FILE COPYING
		myp = application.DefaultFilePath
		v1 = application.DefaultFilePath + "\config.txt"
		v2 = ALLTRIM(v_file)
		v3 = JUSTPATH(v2)
		v4 = v3 + "\" + "config.txt"
		IF .not. FILE(v4)
				COPY FILE (v1) TO (v4)
		ENDIF
		***************
		
		
endif

* close server
if s_menu == "1_3"
s_menu = "1_0"
	IF s_lastactivewindow = 4 .or. application.ActiveForm.name = "IPWRITER"  
	
			FOR I = 1 TO APPLICATION.Forms.Count 
						IF APPLICATION.Forms.Item(I).NAME = "IPWRITER" 
  							APPLICATION.Forms.Item(I).COMMAND17.CLICK
  							EXIT
						ENDIF
					NEXT
	
		
		RETURN
	ENDIF
		IF s_lastactivewindow = 3 .or. application.ActiveForm.name = "TRANSDFORM"  
		
			FOR I = 1 TO APPLICATION.Forms.Count 
						IF APPLICATION.Forms.Item(I).NAME = "TRANSDFORM"  
  							APPLICATION.Forms.Item(I).MENULABEL5.CLICK
  							EXIT
						ENDIF
					NEXT
		
	
		RETURN
	ENDIF
			IF s_lastactivewindow = 2 .or.  application.ActiveForm.name = "INTERDFORM" 
			
			FOR I = 1 TO APPLICATION.Forms.Count 
						IF APPLICATION.Forms.Item(I).NAME = "INTERDFORM"   
  							APPLICATION.Forms.Item(I).LABEL11.CLICK
  							EXIT
						ENDIF
					NEXT
		
			
		RETURN
	ENDIF
IF FS_SW = 1
	MYMSG = MESSAGEBOX("Save Changes ?",4,"Save")
	IF mymsg = 6
		if .not. mysys_file = "No Name"
		do form upload
		delete file (mySYS_FILE)
		select 23
		copy to (MYSYS_FILE)
				GOTO bottom
		else
			myfile = GETFILE("SuperServerFile:SSF","File Name","Save",1,"Save As")
			IF .not. testfile(myfile,1111) = .t.
				RETURN
			ENDIF
			if .not. empty(myfile)
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
			if file(myfile)
				mymsg = messagebox(sysmsg(284),36,sysmsg(285))
				if mymsg = 6
					delete file (myfile)
					do form upload
					select 23
					copy to (myfile)
					GOTO bottom
					MYSYS_FILE = MYFILE
					myswform.text1.value =  "(File :" + mysys_file + " )"
				endif
			else
					do form upload
					select 23
					copy to (myfile)
					GOTO bottom
					MYSYS_FILE = MYFILE
					myswform.text1.value ="(File :" + mysys_file + " )"
			endif
		endif
 	endif
	ENDIF
	FS_SW = 0
ENDIF
*mymsg = messagebox(sysmsg(282),36,sysmsg(283))
*if mymsg = 6
close database
IF win_transd = .t.
FOR I = 1 TO APPLICATION.Forms.Count 
	IF APPLICATION.Forms.Item(I).NAME = "TRANSDFORM"
  		APPLICATION.Forms.Item(I).closebtn.click
		EXIT
	ENDIF
			
NEXT

	FOR I = 1 TO APPLICATION.Forms.Count 
												
													IF APPLICATION.Forms.Item(I).NAME = "RPWIFORM"
																APPLICATION.Forms.Item(I).closebtn.click
																	EXIT
													ENDIF
										NEXT
ENDIF



myswform.load()
myswform.text1.Value = "File : NoName"
myswform.OLETREE.Visible = .F.
FT = .T.
o = myswform.oletree
o.nodes.remove("2_")
o.nodes.remove("3_")
o.nodes.remove("4_")
o.nodes.remove("5_")
o.nodes.remove("8_")
o.nodes.remove("9_")
o.nodes.remove("10_")
o.nodes.remove("11_")
o.imagelist = myswform.oleImages
s = o.nodes.add(,1,"2_","Data Unit : Atoms",0)
s.image = "atom"
s = o.nodes.add(,1,"3_","Data Unit : Vessels",0)
s.image = "atom"
s = o.nodes.add(,1,"4_","Data Unit : Reactions",0)
s.image = "atom"
s = o.nodes.add(,1,"5_","Code Unit : Circuits",0)
s.image = "frm"
s = o.nodes.add(,1,"8_","Veto Unit : Vetos",0)
s.image = "world"
s = o.nodes.add(,1,"9_","Veto Unit : Channels",0)
s.image = "world"
s = o.nodes.add(,1,"10_","Veto Unit : Connections",0)
s.image = "world"
s = o.nodes.add(,1,"11_","Goal Unit : Goals",0)
s.image = "nicegoal"
myswform.Pageframe1.activepage = 1
myswform.Pageframe1.page1.activate()
myswform.Pageframe1.Page1.Pageframe1.Page1.activate()
myswform.OLETREE.Visible = .T.
myswform.pageframe1.page8.olertF.VALUE = ""
myswform.pageframe1.page8.text1.Value = 0
myswform.pageframe1.page8.combo1.Value = 0
myswform.pageframe1.page8.combo1.displayvalue = ""
myswform.pageframe1.page10.olertf.Value = ""
SELECT 21
replace serverinfo with ""
*endif
endif
* save server data 
if s_menu == "1_4"
s_menu = "1_0"
IF s_lastactivewindow = 4 .or. application.ActiveForm.name = "IPWRITER"  

	FOR I = 1 TO APPLICATION.Forms.Count 
						IF APPLICATION.Forms.Item(I).NAME = "IPWRITER"   
  							APPLICATION.Forms.Item(I).COMMAND5.CLICK
  							EXIT
						ENDIF
					NEXT

		RETURN
	ENDIF
		IF  s_lastactivewindow = 3 .or. application.ActiveForm.name = "TRANSDFORM" 
		
		FOR I = 1 TO APPLICATION.Forms.Count 
						IF APPLICATION.Forms.Item(I).NAME = "TRANSDFORM"   
  							APPLICATION.Forms.Item(I).MENULABEL3.CLICK
  							EXIT
						ENDIF
					NEXT
		
		RETURN
	ENDIF
	IF  s_lastactivewindow = 2 .or. application.ActiveForm.name = "INTERDFORM" 
	
		FOR I = 1 TO APPLICATION.Forms.Count 
						IF APPLICATION.Forms.Item(I).NAME = "INTERDFORM"   
  							APPLICATION.Forms.Item(I).LABEL9.CLICK
  							EXIT
						ENDIF
					NEXT
		
	
		RETURN
	ENDIF
FS_SW = 0
if .not. mysys_file = "No Name"
do form upload
delete file (mySYS_FILE)
select 23
copy to (MYSYS_FILE)
		GOTO bottom
else
s_menu = "1_5"
endif
endif
* save as
if s_menu == "1_5"
s_menu = "1_0"
IF s_lastactivewindow = 4 .or. application.ActiveForm.name = "IPWRITER"  

	FOR I = 1 TO APPLICATION.Forms.Count 
						IF APPLICATION.Forms.Item(I).NAME = "IPWRITER"   
  							APPLICATION.Forms.Item(I).COMMAND16.CLICK
  							EXIT
						ENDIF
					NEXT

		
		RETURN
	ENDIF
		IF  s_lastactivewindow = 3 .or. application.ActiveForm.name = "TRANSDFORM" 
		
			FOR I = 1 TO APPLICATION.Forms.Count 
						IF APPLICATION.Forms.Item(I).NAME =  "TRANSDFORM"  
  							APPLICATION.Forms.Item(I).MENULABEL4.CLICK
  							EXIT
						ENDIF
					NEXT
		
		RETURN
	ENDIF
			IF s_lastactivewindow = 2 .or. application.ActiveForm.name = "INTERDFORM"  
			
				FOR I = 1 TO APPLICATION.Forms.Count 
						IF APPLICATION.Forms.Item(I).NAME = "INTERDFORM"   
  							APPLICATION.Forms.Item(I).LABEL10.CLICK
  							EXIT
						ENDIF
					NEXT
			
		RETURN
	ENDIF
FS_SW = 0
myfile = GETFILE("SuperServerFile:SSF","File Name","Save",1,"Save As")
IF .not. testfile(myfile,1111) = .t.
RETURN
ENDIF
	if .not. empty(myfile)
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
		if file(myfile)
				mymsg = messagebox(sysmsg(284),36,sysmsg(285))
					if mymsg = 6
							delete file (myfile)
					ELSE
							RETURN
					ENDIF
		endif

		do form upload
		select 23
		copy to (myfile)
		GOTO bottom
		MYSYS_FILE = MYFILE
		myswform.text1.value ="(File :" + mysys_file + " )"
		v_file = ALLTRIM(UPPER(myswform.TEXt1.Value))
		v_file = SUBSTR(v_file,2,LEN(v_file)-2)
		v_file = STRTRAN(v_file,"FILE :","")
		
		*************** Configuration FILE COPYING
		IF Sys_ShowDoubleS = .T.
					myp = application.DefaultFilePath
					v1 = application.DefaultFilePath + "\config.txt"
					v2 = ALLTRIM(v_file)
					v3 = JUSTPATH(v2)
					v4 = v3 + "\" + "config.txt"
					IF .not. FILE(v4)
							COPY FILE (v1) TO (v4)
					ENDIF
		********************** RPWI Only
		ELSE
		
				IF FILE(APPLICATION.DefaultFilePath+"\chpath.txt")
								
								sys_CHFILE = FILETOSTR(APPLICATION.DefaultFilePath+"\chpath.txt")
								sys_pkNAME = MLINE(sys_CHFILE,2)
								sys_pkNAME = ALLTRIM(sys_pkNAME)
								sys_pkEXT = MLINE(sys_CHFILE,3)
								sys_pkEXT = ALLTRIM(sys_pkEXT)
								sys_pkPATH = MLINE(sys_CHFILE,4)
								sys_pkPATH = ALLTRIM(sys_pkPATH)
			
								v_file = myfile
								v1 = application.DefaultFilePath + "\configbase.txt"
								v2 = ALLTRIM(v_file)
								v3 = JUSTPATH(v2)
								v4 = v3 + "\" + "config.txt"
								IF .not. FILE(v4)
										COPY FILE (v1) TO (v4)
										myconfig = FILETOSTR(v4)
										mysrc = UPPER(JUSTFNAME(myfile))
										mysrc = STRTRAN(MYSRC,".SSF","")
										myconfig = myconfig + CHR(13) + CHR(10) + "output: " + mysrc +sys_pkEXT +CHR(13)+CHR(10)+;
										SYS_PKPATH+ " " + CHR(34) + mysrc + sys_pkEXT +CHR(34) +CHR(13)+CHR(10)
										STRTOFILE(myconfig,v4)
								ENDIF
				ENDIF
		
		ENDIF
		***************
		
	endif
endif
if s_menu == "Server Details"
s_menu = "1_0"
IF myswform.command1.Caption = ">"
myswform.command1.Click 
ENDIF
myswform.Pageframe1.activepage = 1
endif
if s_menu == "Server Compile"
s_menu = "1_0"
IF myswform.command1.Caption = ">"
myswform.command1.Click 
ENDIF
myswform.Pageframe1.activepage = 9
endif
if s_menu == "Server Info"
s_menu = "1_0"
IF myswform.command1.Caption = ">"
myswform.command1.Click 
ENDIF
myswform.Pageframe1.activepage = 10
endif
*!*	if s_menu == "File Finder"
*!*	s_menu = "1_0"
*!*	do form filer
*!*	endif
if s_menu = "Color"
s_menu = "1_0"
myswform.Pageframe1.Page10.Rtfcontrols1.cmdColor.click()
endif
if s_menu = "Font"
s_menu = "1_0"
mystr = getfont()
for x = 1 to len(mystr)
if substr(mystr,x,1) = ","
exit
endif
next
myfont = substr(mystr,1,x-1)
myswform.Pageframe1.Page10.oleRTF.selfontname = myfont
endif
if s_menu = "Enlarge Font"
s_menu = "1_0"
myswform.Pageframe1.Page10.oleRTF.selfontsize = myswform.Pageframe1.Page10.oleRTF.selfontsize+1
endif
if s_menu = "Reduce Font"
s_menu = "1_0"
myswform.Pageframe1.Page10.oleRTF.selfontsize = myswform.Pageframe1.Page10.oleRTF.selfontsize-1
endif
if s_menu == "Search 1"
s_menu = "1_0"
do form search with 1
endif
if s_menu == "Search 2"
s_menu = "1_0"
do form search with 2
endif
if s_menu == "Search 3"
s_menu = "1_0"
do form search with 3
endif
if s_menu == "Search 4"
s_menu = "1_0"
do form search with 4
ENDIF
if s_menu == "Search 5"
s_menu = "1_0"
do form search with 5
endif
if s_menu = "kill"
s_menu = "1_0"
myswform.oletree.nodes.remove(alltrim(s_mem))
endif
*!*	if s_menu = "Procedure"
*!*	s_menu = "1_0"
*!*	do form procsyntx
*!*	endif
*!*	if s_menu = "Class"
*!*	s_menu = "1_0"
*!*	do form classsyntx
*!*	endif
*!*	if s_menu = "Server"
*!*	s_menu = "1_0"
*!*	do form serversyntx
*!*	endif
if s_menu == "1_6"
S_Menu = "1_0" 
S_TOOL = "CLOSE"
endif 





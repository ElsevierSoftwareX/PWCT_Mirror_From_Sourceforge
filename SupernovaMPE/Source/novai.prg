#include "nova.ch"

Function main()

	Parameters sp1
	CheckFile := File(sp1)
	IF .not. checkfile
		aboutnovai()
		quit
	else

		Set Procedure to "myxhfunc.prg" 
		Set Procedure to "details.prg"
		Set Procedure to "Lang_Arabic.prg"
		Set Procedure to "scanner.prg"
		Set Procedure to "syntax.prg"
		Set Procedure to "codegen.prg"
		Set Procedure to "terror.prg"
		Set Procedure to "urgent.prg"
		Set Procedure to "runtime.prg"
		Set Procedure to "gui.prg"
		Set Procedure to "simplegui.prg"
		Set Procedure to "sgui_window.prg"
		Set Procedure to "sgui_label.prg"
		Set Procedure to "sgui_button.prg"
		Set Procedure to "sgui_textbox.prg"
		Set Procedure to "sgui_editbox.prg"
		Set Procedure to "sgui_listbox.prg"
		Set Procedure to "sgui_combobox.prg"
		Set Procedure to "sgui_image.prg"
		Set Procedure to "simpledata.prg"
		Set Procedure to "sdata_readexpr.prg"
		Set Procedure to "sdata_exprvalue.prg"
		Set Procedure to "data.prg"
		Set Procedure to "controlstructure.prg"
		Set Procedure to "error.prg"

		Set Procedure to "sysdata.prg"

		load_sysdata()

		AADD( FilesList , SP1)

		DO MYDETAILS
		DO MYSCANNER

		if LEN(RTE_Message) = 0 .and. mystack == "" .and. myrule == "S" .and. mycmd == ""
			RTE_Check()
                                for t = len(sp1) to 1 step -1
                                        if substr(sp1,t,1) == hb_ospathseparator()
                                                mypath = left(sp1,t-1) + hb_ospathseparator()
                                                dirchange(mypath)
                                                exit
                                        endif
                                next
			myRuntimeUrgent()
			myRuntime()
			if .not. len(myexecutable) = 0
				SimpleGUI_Start()
				SimpleGUI_UnLoad()
			else
				aboutnovai()
			endif
		endif
	ENDIF
Return 0

procedure aboutnovai()
	? " ==============================================================="
	? "     Supernova Multi-Platform Interpreter version "
	?? SN_Version
	? "     License : Free-Open Source"
	? "     http://supernova.sourceforge.net"
	? "     2009-2010, Mahmoud Fayed (msfclipper@yahoo.com)"
	? "     Usage : novai <filename.nova>"
	? " ==============================================================="
	? " "
	? "     Supernova source code file (filename.nova) is required..."
	? " "
	? "     Nothing to do..."
	? " "

return

#include "nova.ch"

Function main()
	Parameters sp1

	CheckFile := File(sp1)
	Set color to w/n,w/n

	? " ==============================================================="
	? "     Supernova Multi-Platform Compiler version "
	?? SN_Version
	? "     License : Free-Open Source"
	? "     http://supernova.sourceforge.net"
	? "     2009-2010, Mahmoud Fayed (msfclipper@yahoo.com)"
	? "     Usage : novac <filename.nova>"
	? " ==============================================================="
	? " "

	IF .not. checkfile
		? " "
		? "     Supernova source code file (filename.nova) is required..."
		? " "
		? "     Nothing to do..."
		quit
	else

		for t = len(sp1) to 1 step -1
			if substr(sp1,t,1) == hb_ospathseparator()
				mypath = left(sp1,t-1) + hb_ospathseparator()
				dirchange(mypath)
				exit
			endif
		next

		Set Procedure to "myxhfunc.prg" 
		Set Procedure to "details.prg"
		set procedure to "Lang_Arabic.prg"
		Set Procedure to "scanner.prg"
		Set Procedure to "syntax.prg"
		Set Procedure to "codegen.prg"
		Set Procedure to "terror.prg"

		Set Procedure to "sysdata.prg"
		load_sysdata()

		AADD( FilesList , SP1)

		myt1 = seconds()
		? " Loading...."
		DO MYDETAILS
		myt2 = seconds()
		? " Compiler details loading time : " + alltrim(str(myt2-myt1)) + " seconds..."
		myt1 = seconds()
		? " File : " + SP1
		? " Compiling...."
		DO MYSCANNER
		myt2 = seconds()
		if LEN(RTE_Message) = 0 .and. mystack == "" .and. myrule == "S" .and. mycmd == ""
                        ? " Source code compiling time : " + alltrim(str(myt2-myt1)) + " seconds..."
                        ? " Source code instructions count : " + alltrim(str(len(myexecutable))) 
			DO GenStar
                        myt3 = seconds()
                        ? " Portable object file Generation time : " + alltrim(str(myt3-myt2)) + " seconds..."
                        ? " Done..." 
		endif
	ENDIF
Return 0

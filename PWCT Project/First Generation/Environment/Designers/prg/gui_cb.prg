*:******************************************************************************
*:
*: Procedure File D:\PWCTSRC\PWCT\PRG\GUI_CB.PRG
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
*:   gui_cb
*:******************************************************************************
*:
*: Class:tr_checkbox  BaseClass: CHECKBOX
*:
*:******************************************************************************
DEFINE CLASS tr_checkbox AS CHECKBOX
	lcbdefault = .F.
	
	PROCEDURE gotfocus
		runtrfref.list1.visible = .f.
		runtrfref.list1.refresh
		RETURN 
	
	
	PROCEDURE LOSTFOCUS
		APPLICATION.ACTIVEFORM.REFRESH
		RETURN

	PROCEDURE KEYPRESS
		LPARAMETERS nkeycode, nshiftaltctrl
		IF nkeycode = 23 && CTRL+W
			THIS.PARENT.PARENT.PARENT.PARENT.KEYPRESS(nkeycode, nshiftaltctrl)
		ENDIF
		RETURN
ENDDEFINE

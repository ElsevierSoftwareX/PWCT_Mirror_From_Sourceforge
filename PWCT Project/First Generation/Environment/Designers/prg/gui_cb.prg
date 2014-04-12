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
	lrunfocus = .t.
	
	PROCEDURE gotfocus
			IF this.lrunfocus = .t.
				TRY 
				runtrfref.sys_isList1.visible = .f.
				runtrfref.sys_isList1.refresh
				CATCH 
				ENDTRY 
			ENDIF 
		RETURN 
	
	
	PROCEDURE LOSTFOCUS
			IF this.lrunfocus = .t.
				APPLICATION.ACTIVEFORM.REFRESH
			ENDIF 
		RETURN

	PROCEDURE KEYPRESS
		LPARAMETERS nkeycode, nshiftaltctrl
		IF nkeycode = 23 && CTRL+W
			this.lrunfocus = .f.
			THIS.PARENT.PARENT.PARENT.PARENT.KEYPRESS(nkeycode, nshiftaltctrl)
		ENDIF
		RETURN
ENDDEFINE

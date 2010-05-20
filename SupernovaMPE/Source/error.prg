#include "hbqt.ch"
request hb_qt



Proc RTE_Check
	RTE_TCHECK()
	mymax  = LEN(RTE_ControlStructureStack)
	IF len(RTE_Message) > 0

		// close all windows/application work
		SimpleGUI_unload()

		// start new application
		SimpleGUI_load()
		
		e_win:= Qwidget():new()
		e_win:setWindowTitle( "Supernova Programming Language" )
		e_win:resize( 730, 400 )
		e_win:move( 10, 10 )
		e_win:show()


		e_list := QListwidget():new(e_win)
		e_list:setMouseTracking( .t. )
		e_list:resize( 711, 271 )
		e_list:move( 10 , 50 )
		e_list:show()


		e_label := QLabel():new("Program Error")
		e_label:settext( "" )
		e_label:resize( 141, 31 )
		e_label:move( 298 , 10 )
		e_label:show()

		mymax  = LEN(RTE_Message)
		FOR x = 1 TO mymax STEP 1
			e_list:additem(RTE_Message[x])
			e_list:show()
		Next

		mybtn := QPushButton():new(e_win)
		mybtn:settext( "Close" )
		mybtn:resize( 100, 30 )
		mybtn:move( 290, 350 )
		mybtn:show()

		Qt_slots_Connect(sgui_slots, mybtn, "clicked()", {|| myerrorsysend() } )

		SimpleGUI_start()
		// end system
		Quit 
	ENDIF
Return Nil

proc myerrorsysend()
	simplegui_closeapplication()
return

Proc RTE_ShowError( p1 )
	DO RTE_AddError WITH p1
	DO RTE_Check
Return Nil

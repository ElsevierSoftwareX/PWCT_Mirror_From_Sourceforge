*---------------------------------------------------------------------------*
* Time : 13:41:03    Date : 10/22/2011
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2011]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
*---------------------------------------------------------------------------*
* Compilers                   : Borland C/C++ & Harbour
* GUI Framework               : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
Function Main
Public True,False 
True = .T. 
False = .F. 
New Server Server1 Type Slave Server Eigen Value 000
 Details :
 * (Noun) *
Parameters SP1,SP2,SP3,SP4,SP5,SP6,SP7,SP8
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_MAIN_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MAIN_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 636 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Movie Sample" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,0,0} 

@ 10 ,130 BUTTONEX btnPlay;
CAPTION "[2] Play";
FONTCOLOR {0,128,64};
ON CLICK myplay()  ;
WIDTH 100 HEIGHT 33 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 10 ,250 BUTTONEX btnPause;
CAPTION "[3] Pause";
FONTCOLOR {0,128,64};
ON CLICK mypause()  ;
WIDTH 98 HEIGHT 33 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 10 ,10 BUTTONEX btnOpen;
CAPTION "[1] Open";
FONTCOLOR {0,128,64};
ON CLICK myopen()  ;
WIDTH 100 HEIGHT 33 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 10 ,368 BUTTONEX btnResume;
CAPTION "[4] Resume";
FONTCOLOR {0,128,64};
ON CLICK myresume()  ;
WIDTH 110 HEIGHT 33 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 10 ,498 BUTTONEX btnClose;
CAPTION "[5] Close";
FONTCOLOR {0,128,64};
ON CLICK myclose()  ;
WIDTH 100 HEIGHT 33 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myopen
myhandle := GetFormHandle("win1")
myhandle = STR ( myhandle )
myhandle = ALLTRIM ( myhandle )
mycmd := 'open "test.avi" type AVIvideo  alias mymovie style child parent '
mycmd := mycmd + myhandle
myout = CALLDLL32("mciSendString","winmm.dll",mycmd,0,128,0)
Return Nil
Proc myplay
myout = CALLDLL32("mciSendString","winmm.dll",'put mymovie window client at 90 50 400 300 ',0,128,0)
myout = CALLDLL32("mciSendString","winmm.dll",'play mymovie',0,128,0)
Return Nil
Proc mypause
myout = CALLDLL32("mciSendString","winmm.dll",'pause mymovie',0,128,0)
Return Nil
Proc myresume
myout = CALLDLL32("mciSendString","winmm.dll",'resume mymovie',0,128,0)
Return Nil
Proc myclose
myout = CALLDLL32("mciSendString","winmm.dll",'close mymovie',0,128,0)
Return Nil


End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Movie Sample'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnPlay ) , Caption : '[2] Play'",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myplay",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",18,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnPause ) , Caption : '[3] Pause'",21,23)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mypause",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",25,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnOpen ) , Caption : '[1] Open'",28,30)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myopen",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",32,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnResume ) , Caption : '[4] Resume'",35,37)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myresume",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",39,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnClose ) , Caption : '[5] Close'",42,44)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myclose",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",46,48)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",49,50)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",51,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myopen",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","myhandle = Get Window ('win1') Handle",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","myhandle = CONVERT myhandle TO STRING",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","myhandle = All Trim myhandle",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","mycmd = 'open 'test.avi' type AVIvideo  alias mymovie style child parent '",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","mycmd = mycmd + myhandle",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters mycmd,0,128,0",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myplay",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'put mymovie window client at 90 50 400 300 ',0,128,0",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'play mymovie',0,128,0",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mypause",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'pause mymovie',0,128,0",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myresume",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'resume mymovie',0,128,0",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myclose",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'close mymovie',0,128,0",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",74,74)
Return
*-------------------------------------------------------------------*

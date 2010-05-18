#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 18:06:00    Date : 09/20/2009
*---------------------------------------------------------------------------*
* Programming without coding technology 1.4 (Nova) [2006-2009]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
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


Resistance R8555908324_1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R8555908324_1() code
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

Proc myopen
myhandle := GetFormHandle("win1")
myhandle = STR ( myhandle )
myhandle = ALLTRIM ( myhandle )
mycmd := 'open "test.avi" type AVIvideo  alias mymovie style child parent '
mycmd := mycmd + myhandle
CALLDLL32("mciSendString","winmm.dll",mycmd,0&,128,0&)
Return Nil
Proc myplay
CALLDLL32("mciSendString","winmm.dll",'put mymovie window client at 90 50 400 300 ',0,128,0)
CALLDLL32("mciSendString","winmm.dll",'play mymovie',0,128,0)
Return Nil
Proc mypause
CALLDLL32("mciSendString","winmm.dll",'pause mymovie',0,128,0)
Return Nil
Proc myresume
CALLDLL32("mciSendString","winmm.dll",'resume mymovie',0,128,0)
Return Nil
Proc myclose
CALLDLL32("mciSendString","winmm.dll",'close mymovie',0,128,0)
Return Nil


End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",53)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",1,4)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",5,12)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnPlay )",13,15)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",17,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnPause )",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",24,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnOpen )",27,29)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",31,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnResume )",34,36)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",38,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnClose )",41,43)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",45,47)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Procedures",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myopen",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","myhandle = Get Window ('win1') Handle",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","myhandle = CONVERT myhandle TO STRING",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","myhandle = All Trim myhandle",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","mycmd = 'open 'test.avi' type AVIvideo  alias mymovie style child parent '",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","mycmd = mycmd + myhandle",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters mycmd,0&,128,0&",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myplay",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'put mymovie window client at 90 50 400 300 ',0,128,0",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'play mymovie',0,128,0",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mypause",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'pause mymovie',0,128,0",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myresume",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'resume mymovie',0,128,0",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myclose",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'close mymovie',0,128,0",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",72,72)
Return
*-------------------------------------------------------------------*

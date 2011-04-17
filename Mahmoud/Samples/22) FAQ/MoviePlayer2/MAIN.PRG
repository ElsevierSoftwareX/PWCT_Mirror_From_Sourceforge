*---------------------------------------------------------------------------*
* Time : 11:49:38    Date : 04/17/2011
*---------------------------------------------------------------------------*
* Programming without coding technology 1.7 (Sharp) [2006-2010]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
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


Resistance R_MAIN_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MAIN_15speed1() code
Public dochange
dochange := true
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 564 ;
HEIGHT 477 ;
ICON "PWCTICON" ;
TITLE "Movie Sample 2" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,0,0} 

@ 10 ,164 BUTTONEX btnPause;
CAPTION "[2] Pause";
FONTCOLOR {0,128,64};
ON CLICK mypause()  ;
WIDTH 98 HEIGHT 33 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 10 ,50 BUTTONEX btnOpen;
CAPTION "[1] Open";
FONTCOLOR {0,128,64};
ON CLICK myopen()  ;
WIDTH 100 HEIGHT 33 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 10 ,276 BUTTONEX btnResume;
CAPTION "[3] Resume";
FONTCOLOR {0,128,64};
ON CLICK myresume()  ;
WIDTH 110 HEIGHT 33 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 10 ,400 BUTTONEX btnClose;
CAPTION "[4] Close";
FONTCOLOR {0,128,64};
ON CLICK myclose()  ;
WIDTH 100 HEIGHT 33 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 384 ,40 SLIDER slider1;
RANGE 1 , 100;
ON Change changepos()  ;
WIDTH 460 ;
HEIGHT 40 ;
BACKCOLOR {236,233,216} ;
TOOLTIP "" 

DEFINE TIMER Timer1 INTERVAL 100 ;
Action automove()
win1.timer1.Enabled := false
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myopen
myhandle := GetFormHandle("win1")
myhandle = STR ( myhandle )
myhandle = ALLTRIM ( myhandle )
mycmd := 'open "test.avi" type AVIvideo  alias mymovie style child parent '
mycmd := mycmd + myhandle
CALLDLL32("mciSendString","winmm.dll",mycmd,0&,128,0&)
myout = CALLDLL32("mciSendString","winmm.dll",'put mymovie window client at 50 50 450 300 ',0,128,0)
tValue := space ( 10 )
myout = CALLDLL32("mciSendString","winmm.dll",'set mymovie time format ms',NIL,0,0)
myout = CALLDLL32("mciSendString","winmm.dll",'status mymovie length',@tvalue,128,0)
tvalue = VAL ( tvalue )
win1.slider1.RangeMax := tvalue/(1000)
win1.slider1.RangeMin := 0
win1.slider1.Value := 0
win1.timer1.Enabled := true
Return Nil
Proc mypause
CALLDLL32("mciSendString","winmm.dll",'pause mymovie',0,128,0)
Return Nil
Proc myresume
CALLDLL32("mciSendString","winmm.dll",'resume mymovie',0,128,0)
Return Nil
Proc myclose
CALLDLL32("mciSendString","winmm.dll",'close mymovie',0,128,0)
win1.Release ( )
Return Nil
Proc changepos
IF dochange=true
tvalue := win1.slider1.Value
tvalue := tvalue*1000
tvalue = STR ( tvalue )
tvalue = ALLTRIM ( tvalue )
myout = CALLDLL32("mciSendString","winmm.dll",'set mymovie time format ms',NIL,0,0)
myout = CALLDLL32("mciSendString","winmm.dll",'seek mymovie to '+tvalue,NIL,0,0)
CALLDLL32("mciSendString","winmm.dll",'play mymovie',0,128,0)
ENDIF
Return Nil
Proc automove
Local tvalue
tValue := space ( 10 )
myout = CALLDLL32("mciSendString","winmm.dll",'set mymovie time format ms',NIL,0,0)
myout = CALLDLL32("mciSendString","winmm.dll",'status mymovie position',@tvalue,128,0)
tvalue = VAL ( tvalue )
dochange := false
win1.slider1.Value := (tvalue/1000)
dochange := true
Return Nil


End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
Return
*-------------------------------------------------------------------*

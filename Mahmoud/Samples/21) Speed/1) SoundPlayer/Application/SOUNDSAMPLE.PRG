*---------------------------------------------------------------------------*
* Time : 22:35:10    Date : 05/26/2010
*---------------------------------------------------------------------------*
* Programming without coding technology 1.6 (Ready) [2006-2010]  
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


Resistance R_SOUNDSAMPLE_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SOUNDSAMPLE_15speed1() code
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 523 ;
HEIGHT 324 ;
ICON "PWCTICON" ;
TITLE "Sound Sample" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,0,0} 

@ 71 ,28 BUTTONEX btnOpen;
CAPTION "(1) - Open (test.mp3)";
FONTCOLOR {128,128,192};
ON CLICK myopen()  ;
WIDTH 210 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 116 ,28 BUTTONEX btnPlay;
CAPTION "(2) - Play";
FONTCOLOR {128,128,192};
ON CLICK myplay()  ;
WIDTH 210 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 156 ,28 BUTTONEX btnPause;
CAPTION "(3) - Pause";
FONTCOLOR {128,128,192};
ON CLICK mypause()  ;
WIDTH 210 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 241 ,27 BUTTONEX btnClose;
CAPTION "(5) - Close";
FONTCOLOR {128,128,192};
ON CLICK myclose()  ;
WIDTH 210 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 196 ,27 BUTTONEX btnResume;
CAPTION "(4) - Resume";
FONTCOLOR {128,128,192};
ON CLICK myresume()  ;
WIDTH 210 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 70 ,280 BUTTONEX btnRecord;
CAPTION "(1) - Record";
FONTCOLOR {255,128,64};
ON CLICK myrecord()  ;
WIDTH 206 HEIGHT 28 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 110 ,280 BUTTONEX btnSave;
CAPTION "(2) - Save (wow.wav)";
FONTCOLOR {255,128,64};
ON CLICK mysave()  ;
WIDTH 206 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 13 ,28 LABEL lblPlayer ;
VALUE "Player" ;
WIDTH 210 ;
HEIGHT 39 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {0,64,0} ;
FONTCOLOR {0,255,64}
@ 12 ,280 LABEL lblRecorder ;
VALUE "Recorder" ;
WIDTH 206 ;
HEIGHT 40 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {0,64,0} ;
FONTCOLOR {0,255,64}
END WINDOW

ACTIVATE WINDOW win1

Proc myopen
CALLDLL32("mciSendString","winmm.dll",'open "test.mp3" type mpegvideo alias MediaFile',nil,0,0)
Return Nil
Proc myplay
CALLDLL32("mciSendString","winmm.dll",'play MediaFile',nil,0,0)
Return Nil
Proc mypause
CALLDLL32("mciSendString","winmm.dll",'pause MediaFile',nil,0,0)
Return Nil
Proc myclose
CALLDLL32("mciSendString","winmm.dll",'close MediaFile',nil,0,0)
Return Nil
Proc myresume
CALLDLL32("mciSendString","winmm.dll",'resume MediaFile',nil,0,0)
Return Nil
Proc myrecord
CALLDLL32("mciSendString","winmm.dll",'open new Type waveaudio Alias recsound',"",0,0)
CALLDLL32("mciSendString","winmm.dll",'record recsound',"",0,0)
Return Nil
Proc mysave
CALLDLL32("mciSendString","winmm.dll",'save recsound wow.wav',"",0,0)
CALLDLL32("mciSendString","winmm.dll",'close recsound',"",0,0)
Return Nil


End Of Resistance

INIT PROCEDURE Init_SOUNDSAMPLE
START DOUBLES
Return
*-------------------------------------------------------------------*

#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 15:18:43    Date : 09/19/2009
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


Resistance R880944269_1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R880944269_1() code
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
SS_ESARES("Circuits\Main\Main\Main",53)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",1,4)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",5,12)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnOpen )",13,15)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",17,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnPlay )",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",24,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnPause )",27,29)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",31,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnClose )",34,36)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",38,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnResume )",41,43)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",45,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnRecord )",48,50)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",52,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnSave )",55,57)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",59,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblPlayer )",62,63)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",64,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblRecorder )",69,70)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",71,75)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",76,77)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",78,79)
SS_ESASTEP("Circuits\Main\Main\Main","Sound Procedures",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myopen",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'open 'test.mp3' type mpegvideo alias M",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myplay",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'play MediaFile',nil,0,0",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mypause",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'pause MediaFile',nil,0,0",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myclose",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'close MediaFile',nil,0,0",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myresume",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'resume MediaFile',nil,0,0",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myrecord",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'open new Type waveaudio Alias recsound','',0,0",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'record recsound','',0,0",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mysave",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'save recsound wow.wav','',0,0",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'close recsound','',0,0",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",102,102)
Return
*-------------------------------------------------------------------*

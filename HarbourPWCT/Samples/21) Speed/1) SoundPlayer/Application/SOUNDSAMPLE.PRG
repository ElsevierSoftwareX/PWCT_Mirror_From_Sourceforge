*---------------------------------------------------------------------------*
* Time : 12:25:24    Date : 10/22/2011
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


Resistance R_SOUNDSAMPLE_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SOUNDSAMPLE_18smart1() code
if !iswindowdefined( win1 )
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
EndIF

Proc myopen
myout = CALLDLL32("mciSendString","winmm.dll",'open "test.mp3" type mpegvideo alias MediaFile',nil,0,0)
Return Nil
Proc myplay
myout = CALLDLL32("mciSendString","winmm.dll",'play MediaFile',nil,0,0)
Return Nil
Proc mypause
myout = CALLDLL32("mciSendString","winmm.dll",'pause MediaFile',nil,0,0)
Return Nil
Proc myclose
myout = CALLDLL32("mciSendString","winmm.dll",'close MediaFile',nil,0,0)
Return Nil
Proc myresume
myout = CALLDLL32("mciSendString","winmm.dll",'resume MediaFile',nil,0,0)
Return Nil
Proc myrecord
myout = CALLDLL32("mciSendString","winmm.dll",'open new Type waveaudio Alias recsound',"",0,0)
myout = CALLDLL32("mciSendString","winmm.dll",'record recsound',"",0,0)
Return Nil
Proc mysave
myout = CALLDLL32("mciSendString","winmm.dll",'save recsound wow.wav',"",0,0)
myout = CALLDLL32("mciSendString","winmm.dll",'close recsound',"",0,0)
Return Nil


End Of Resistance

INIT PROCEDURE Init_SOUNDSAMPLE
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Sound Sample'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnOpen ) , Caption : '(1) - Open (test.mp3)'",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myopen()",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",18,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnPlay ) , Caption : '(2) - Play'",21,23)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myplay()",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",25,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnPause ) , Caption : '(3) - Pause'",28,30)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mypause()",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",32,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnClose ) , Caption : '(5) - Close'",35,37)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myclose()",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",39,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnResume ) , Caption : '(4) - Resume'",42,44)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myresume()",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",46,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnRecord ) , Caption : '(1) - Record'",49,51)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myrecord()",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",53,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnSave ) , Caption : '(2) - Save (wow.wav)'",56,58)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mysave()",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",60,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblPlayer ) , Caption : 'Player'",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",65,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblRecorder ) , Caption : 'Recorder'",70,71)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",72,76)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",77,78)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",79,81)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myopen",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'open 'test.mp3' type mpegvideo alias MediaFile',nil,0,0",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myplay",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'play MediaFile',nil,0,0",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mypause",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'pause MediaFile',nil,0,0",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myclose",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'close MediaFile',nil,0,0",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myresume",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'resume MediaFile',nil,0,0",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myrecord",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'open new Type waveaudio Alias recsound','',0,0",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'record recsound','',0,0",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mysave",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'save recsound wow.wav','',0,0",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'winmm.dll' , Function 'mciSendString' , Parameters 'close recsound','',0,0",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",104,104)
Return
*-------------------------------------------------------------------*

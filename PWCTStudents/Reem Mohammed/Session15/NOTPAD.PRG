*---------------------------------------------------------------------------*
* Time : 08:33:59    Date : 08/02/2011
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2011]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : Mahmoud Programming Language (HarbourPWCT) 
*---------------------------------------------------------------------------*
* Compilers                   : Borland C/C++ & Harbour/xHarbour
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


Resistance R_NOTPAD_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_NOTPAD_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 693 ;
HEIGHT 579 ;
ICON "PWCTICON" ;
TITLE "notpad" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 77 ,9 EDITBOX edit1;
WIDTH 621 ;
HEIGHT 288;
FONT "Arial" SIZE 16 ;
BACKCOLOR {255,225,255} ;
FONTCOLOR {0,0,0}
@ 372 ,491 IMAGE image1;
PICTURE "MICKEY-MOUSE-NOTEPAD.JPG";
STRETCH ;
WIDTH 183 HEIGHT 163
@ 489 ,15 BUTTONEX btnsave;
CAPTION "save file";
ON CLICK mysave()  ;
WIDTH 147 HEIGHT 41 ;
FONT "Cooper Black" SIZE 20 ;
TOOLTIP ""
@ 487 ,353 BUTTONEX btnload;
CAPTION "get file";
ON CLICK myload()  ;
WIDTH 135 HEIGHT 41 ;
FONT "Cooper Black" SIZE 20 ;
TOOLTIP ""
@ 23 ,70 LABEL lbl1 ;
VALUE "write what's in your mind" ;
WIDTH 501 ;
HEIGHT 38 ;
FONT "Ravie" SIZE 20  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {77,96,230}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc mysave
mystr := win1.edit1.Value
PutFile := PutFile ( { {"Text","*.txt"} } , ;
" save text in file " , ;
, ;
, ;
)
CheckFile := File(PutFile)
IF CheckFile
MyOut := MSGOKCANCEL("this file already exist","error")
IF myout==false
Return 0
ENDIF
ENDIF
RPWI_TH = FCREATE(PutFile,0)
FWRITE(RPWI_TH,mystr)
FCLOSE(RPWI_TH)
Return Nil
Proc myload
GetFile := GetFile (  , ;
, ;
, ;
, ;
)
CheckFile := File(GetFile)
IF checkfile==false
Return 0
ENDIF
mystr = MEMOREAD ( GetFile )
win1.edit1.Value := mystr
Return Nil


End Of Resistance

INIT PROCEDURE Init_NOTPAD
START DOUBLES
Return
*-------------------------------------------------------------------*

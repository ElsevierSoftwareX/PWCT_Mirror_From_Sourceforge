*---------------------------------------------------------------------------*
* Time : 15:34:58    Date : 07/27/2011
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


Resistance R_COPY_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_COPY_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 427 ;
ICON "PWCTICON" ;
TITLE "Copy and Rename" ;
MAIN ;
TOPMOST ;
NOMAXIMIZE ;
NOSIZE ;
CURSOR "CUR243.ANI" ;
BACKCOLOR {255,255,255} 

DEFINE MAIN MENU
POPUP "file"
MENUITEM "Exit" Action myexit()
END POPUP
END MENU
PLAY WAVE "HEART-OF-THE-SEA_2.WAV"

@ 213 ,7 IMAGE image1;
PICTURE "APPLE.JPG";
STRETCH ;
WIDTH 169 HEIGHT 178
@ 8 ,130 LABEL lbl1 ;
VALUE "Edit your file" ;
WIDTH 247 ;
HEIGHT 42 ;
FONT "Jokerman" SIZE 26  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,0,255}
@ 78 ,67 BUTTONEX btnC;
CAPTION "copy";
FONTCOLOR {255,0,128};
ON CLICK mycopy()  ;
WIDTH 127 HEIGHT 52 ;
FONT "Jokerman" SIZE 22 ;
TOOLTIP ""
@ 144 ,63 BUTTONEX btnR;
CAPTION "Rename";
FONTCOLOR {255,0,128};
ON CLICK myname()  ;
WIDTH 130 HEIGHT 48 ;
FONT "Jokerman" SIZE 22 ;
TOOLTIP ""
@ 75 ,293 BUTTONEX btnD;
CAPTION "Delete";
FONTCOLOR {255,0,128};
ON CLICK mydelet()  ;
WIDTH 123 HEIGHT 50 ;
FONT "Jokerman" SIZE 22 ;
TOOLTIP ""
@ 146 ,294 BUTTONEX btnU;
CAPTION "Run";
FONTCOLOR {255,0,128};
ON CLICK myrun()  ;
WIDTH 115 HEIGHT 49 ;
FONT "Jokerman" SIZE 22 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myexit
win1.Release ( )
Return Nil
Proc mycopy
Copy File "WIFI.PDF" to "C:\WIFI.PDF"
Return Nil
Proc myname
Rename "WIFI.PDF" TO "wirless.PDF"
Return Nil
Proc mydelet
MyOut := MSGYESNO("Are you sure ??","delet file")
IF MyOut=true
Delete File "WIFI.PDF"
ENDIF
IF MyOut=false
Return 0
ENDIF
Return Nil
Proc myrun
Execute File "notepad.exe"
Return Nil


End Of Resistance

INIT PROCEDURE Init_COPY
START DOUBLES
Return
*-------------------------------------------------------------------*

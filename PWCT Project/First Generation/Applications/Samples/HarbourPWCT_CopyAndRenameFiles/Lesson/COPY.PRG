*---------------------------------------------------------------------------*
* Time : 19:24:37    Date : 10/19/2011
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


Resistance R_COPY_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_COPY_18smart1() code
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
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Copy and Rename'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,14)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'file'",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit' )",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Play wave 'HEART-OF-THE-SEA_2.WAV'",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'APPLE.JPG'",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Edit your file'",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",28,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnC ) , Caption : 'copy'",33,35)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mycopy()",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",37,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnR ) , Caption : 'Rename'",40,42)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myname()",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",44,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnD ) , Caption : 'Delete'",47,49)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mydelet()",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",51,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnU ) , Caption : 'Run'",54,56)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myrun()",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",58,60)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",63,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myexit",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mycopy",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Copy File 'WIFI.PDF' to 'C:\WIFI.PDF'",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myname",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Rename File 'WIFI.PDF' TO 'wirless.PDF'",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mydelet",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Are you sure ??' Title 'delet file' Type: Message Yes/No",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( MyOut=true )",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Delete File 'WIFI.PDF'",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( MyOut=false )",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myrun",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File 'notepad.exe'",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",86,86)
Return
*-------------------------------------------------------------------*

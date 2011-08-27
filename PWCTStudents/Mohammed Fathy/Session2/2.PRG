*---------------------------------------------------------------------------*
* Time : 03:42:15    Date : 08/27/2011
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


Resistance R_2_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_2_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 651 ;
HEIGHT 490 ;
ICON "PWCTICON" ;
TITLE "job2" ;
MAIN ;
BACKCOLOR {0,0,0} 

@ 3 ,-17 IMAGE image1;
PICTURE "94509N.JPG";
STRETCH ;
WIDTH 177 HEIGHT 286
@ 27 ,285 LABEL lbl1 ;
VALUE "Whos Photo Is This?!" ;
WIDTH 274 ;
HEIGHT 43 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {0,0,0} ;
FONTCOLOR {255,255,255}
@ 307 ,383 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {128,0,0} ;
FONTCOLOR {0,0,0} 

@ 92 ,383 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
ITEMS {"Tim Cook","Steve Jobs","Bill Gates"} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {128,0,0} ;
SORT ;
FONTCOLOR {0,0,0}
@ 353 ,401 COMBOBOX combo1;
WIDTH 164 ;
ITEMS {"Tim Cook","Steve Jobs","Bill Gates"} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {128,0,0} ;
SORT ;
FONTCOLOR {0,0,0}
@ 372 ,154 BUTTONEX btn1;
CAPTION "Close";
WIDTH 104 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 372 ,29 BUTTONEX btn2;
CAPTION "Instructions";
WIDTH 122 HEIGHT 32 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF



End Of Resistance

INIT PROCEDURE Init_2
START DOUBLES
Return
*-------------------------------------------------------------------*

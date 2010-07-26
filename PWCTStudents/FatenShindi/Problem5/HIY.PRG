*---------------------------------------------------------------------------*
* Time : 12:13:48    Date : 07/26/2010
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


Resistance R_HIY_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_HIY_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "FATEN" ;
MAIN ;
BACKCOLOR {0,128,255} 

@ 4 ,124 LABEL lbl1 ;
VALUE "PWCT TEAM" ;
WIDTH 238 ;
HEIGHT 47 ;
FONT "Arial" SIZE 28  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,255}
@ 71 ,-2 IMAGE image1;
PICTURE "PWCT.JPG";
STRETCH ;
WIDTH 134 HEIGHT 194
@ 77 ,161 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {128,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 118 ,161 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {0,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 153 ,345 BUTTONEX btn1;
CAPTION "SING IN";
FONTCOLOR {0,0,255};
BACKCOLOR {236,233,216};
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 203 ,327 LISTBOX list1;
WIDTH 149 ;
HEIGHT 139 ;
ITEMS {"«·»—‰«„Ã","«·‘—Õ","«·ﬂ »","«·›ÌœÌÊÂ« "} ;
FONT "Arial" SIZE 28 ;
BACKCOLOR {128,255,255} ;
FONTCOLOR {0,0,255}
@ 267 ,-2 COMBOBOX combo1;
WIDTH 182 ;
HEIGHT 30;
ITEMS {"«»—‰«„Ã","·‘—Õ","·›ÌœÌÊÂ« ","·ﬂ »"} ;
DISPLAYEDIT ;
FONT "Arial" SIZE 28 ;
BACKCOLOR {128,255,255} ;
FONTCOLOR {0,0,255}
END WINDOW

ACTIVATE WINDOW win1
EndIF



End Of Resistance

INIT PROCEDURE Init_HIY
START DOUBLES
Return
*-------------------------------------------------------------------*

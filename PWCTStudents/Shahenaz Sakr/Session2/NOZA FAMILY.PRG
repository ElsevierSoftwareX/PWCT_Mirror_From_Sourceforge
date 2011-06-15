*---------------------------------------------------------------------------*
* Time : 02:36:24    Date : 06/15/2011
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


Resistance R_NOZA_FAMILY_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_NOZA_FAMILY_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "My Family" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 34 ,10 LABEL lbl1 ;
VALUE "Noza Family" ;
WIDTH 134 ;
HEIGHT 51 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,0}
@ 328 ,360 BUTTONEX btn1;
CAPTION "Exit";
FONTCOLOR {0,128,64};
BACKCOLOR {236,233,216};
ON CLICK myclose()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 18 ;
TOOLTIP ""
@ 327 ,242 BUTTONEX btn2;
CAPTION "Details";
FONTCOLOR {0,255,0};
BACKCOLOR {236,233,216};
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 104 ,9 IMAGE image1;
PICTURE "C:\DOCUMENTS AND SETTINGS\NCM\MY DOCUMENTS\DOWNLOADS\255178_10150204891689221_124828359220_7143489_6514203_N.JPG";
WIDTH 137 HEIGHT 112
@ 36 ,253 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
VALUE "noza" ;
BACKCOLOR {255,128,192} ;
FONTCOLOR {128,0,64} 

@ 77 ,251 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
ITEMS {"father","mother","noza","shery"} ;
FONT "Arial" SIZE 9 ;
BOLD ;
ITALIC ;
BACKCOLOR {128,0,64} ;
FONTCOLOR {255,128,255}
@ 236 ,9 COMBOBOX combo1;
WIDTH 100 ;
ITEMS {"father","mother","noza","shery"} ;
DISPLAYEDIT ;
FONT "arial" SIZE 14 ;
BOLD ;
ITALIC ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myclose
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_NOZA_FAMILY
START DOUBLES
Return
*-------------------------------------------------------------------*

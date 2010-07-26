*---------------------------------------------------------------------------*
* Time : 09:53:02    Date : 07/26/2010
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


Resistance R_HELLOWORLD_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_HELLOWORLD_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "œ⁄«¡" ;
MAIN ;
BACKCOLOR {128,64,64} 

@ 37 ,116 LABEL lbl1 ;
VALUE "«·”·«„ ⁄·Ìﬂ„ Ê—Õ„… «··Â Ê»—ﬂ« Â" ;
WIDTH 471 ;
HEIGHT 69 ;
FONT "Arial" SIZE 18  ;
BOLD ;
ITALIC ;
BACKCOLOR {128,64,64} ;
FONTCOLOR {255,255,255}
@ 328 ,388 BUTTONEX btn1;
CAPTION "«€·«ﬁ";
FONTCOLOR {128,64,64};
BACKCOLOR {128,0,0};
ON CLICK MYCLOSE()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 78 ,1 IMAGE image1;
PICTURE "C:\DOCUMENTS AND SETTINGS\HOSSAM HASSAN\MY DOCUMENTS\36929_1283626422687_1590916390_30591814_7109958_S.JPG";
STRETCH ;
WIDTH 490 HEIGHT 228
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc MYCLOSE
WIN1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_HELLOWORLD
START DOUBLES
Return
*-------------------------------------------------------------------*

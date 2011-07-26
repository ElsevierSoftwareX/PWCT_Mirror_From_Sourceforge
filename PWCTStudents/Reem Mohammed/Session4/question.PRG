*---------------------------------------------------------------------------*
* Time : 06:33:41    Date : 07/26/2011
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


Resistance R_QUESTION_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_QUESTION_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 579 ;
HEIGHT 557 ;
ICON "PWCTICON" ;
TITLE "Question" ;
MAIN ;
TOPMOST ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 17 ,75 LABEL lbl1 ;
VALUE "What is the Artifical Intelligence ??" ;
WIDTH 445 ;
HEIGHT 52 ;
FONT "Cooper Black" SIZE 18  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0}
@ 444 ,122 LABEL lbl2 ;
VALUE "" ;
WIDTH 350 ;
HEIGHT 73 ;
FONT "Arial Rounded MT Bold" SIZE 18  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,64,128}
@ 58 ,123 IMAGE image1;
PICTURE "QMAN.JPG";
WIDTH 300 HEIGHT 300
@ 386 ,203 BUTTONEX btn1;
CAPTION "click on me ";
FONTCOLOR {64,0,128};
ON CLICK answer()  ;
WIDTH 167 HEIGHT 47 ;
FONT "Jokerman" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc answer
win1.lbl2.Value := "it is a branch of science"
Return Nil


End Of Resistance

INIT PROCEDURE Init_QUESTION
START DOUBLES
Return
*-------------------------------------------------------------------*

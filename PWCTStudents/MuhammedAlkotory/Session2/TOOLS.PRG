*---------------------------------------------------------------------------*
* Time : 01:07:46    Date : 10/07/2011
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


Resistance R_TOOLS_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TOOLS_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "«·Õ„·Â «· Ã—Ì»ÌÂ ··«‰ Œ«»«  «·—∆«”ÌÂ" ;
MAIN ;
BACKCOLOR {0,0,255} 

@ 144 ,257 COMBOBOX «Œ «—;
WIDTH 106 ;
ITEMS {"„Õ„œ «·»—«œ⁄Ï","Õ„œÌ‰ ’»«ÕÏ","⁄„— ”·Ì„«‰","„Õ„œ «·ﬁÿÊ—Ï"} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 110 ,374 LABEL lbl1 ;
VALUE "«Œ «— „—‘Õﬂ" ;
WIDTH 107 ;
HEIGHT 23 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {0,255,255} ;
FONTCOLOR {0,0,0}
@ 169 ,386 LABEL lbl2 ;
VALUE "«ﬂ »  ⁄·Ìﬁﬂ" ;
WIDTH 96 ;
HEIGHT 32 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {0,255,255} ;
FONTCOLOR {0,0,0}
@ 33 ,103 LABEL lbl3 ;
VALUE "√ŒÏ «·ﬂ—Ì„ ’Ê ﬂ Õﬁ ·Ìﬂ Ê⁄·Ìﬂ" ;
WIDTH 281 ;
HEIGHT 34 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {128,255,255} ;
FONTCOLOR {0,0,0}
@ 205 ,256 EDITBOX edit1;
WIDTH 206 ;
HEIGHT 144;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 306 ,34 BUTTONEX btn1;
CAPTION "Œ—ÊÃ";
ON CLICK myclose()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 66 ,137 IMAGE image1;
PICTURE "206833_211940242168835_191736370855889_761808_67151_N.JPG";
WIDTH 114 HEIGHT 247
@ 66 ,5 IMAGE image2;
PICTURE "C:\USERS\EAGLE\DESKTOP\2ND PROGRAM\225863_213939041968955_191736370855889_780977_5914653_N.JPG";
WIDTH 131 HEIGHT 246
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myclose
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_TOOLS
START DOUBLES
Return
*-------------------------------------------------------------------*

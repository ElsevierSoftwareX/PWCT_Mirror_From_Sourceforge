*---------------------------------------------------------------------------*
* Time : 21:13:57    Date : 01/27/2012
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
#include "xhb.ch"
Function Main
Public True,False 
True = .T. 
False = .F. 
New Server Server1 Type Slave Server Eigen Value 000
 Details :
* Get parameters from command line
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


Resistance R_LESSON4_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON4_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Lesson4" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 33 ,128 LABEL lbl1 ;
VALUE " —Ìœ «‰  €—” ‰Œ·… ›Ï «·Ã‰…" ;
WIDTH 231 ;
HEIGHT 67 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 212 ,24 LABEL lbl2 ;
VALUE "" ;
WIDTH 406 ;
HEIGHT 98 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
RIGHTALIGN ;
FONTCOLOR {0,0,255}
@ 142 ,184 BUTTONEX btn1;
CAPTION "«÷€ÿ Â‰«";
ON CLICK answer()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc answer
win1.lbl2.Value := "⁄‰ «·‰»Ì ’·Ï «··Â ⁄·ÌÂ Ê”·„ ﬁ«· { „‰ ﬁ«· ”»Õ«‰ «··Â Ê»Õ„œÂ €—”  ·Â ‰Œ·… ›Ì «·Ã‰… } ﬁ«· «· —„–Ì ÕœÌÀ Õ”‰ ’ÕÌÕ"
Return Nil


End Of Resistance

INIT PROCEDURE Init_LESSON4
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Lesson4'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : ' —Ìœ «‰  €—” ‰Œ·… ›Ï «·Ã‰…'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : ''",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",20,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«÷€ÿ Â‰«'",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action answer",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",29,31)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",34,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure answer",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl2.Value := '⁄‰ «·‰»Ì ’·Ï «··Â ⁄·ÌÂ Ê”·„ ﬁ«· { „‰ ﬁ«· ”»Õ«‰ «··Â Ê»Õ„œÂ €—”  ·Â ‰Œ·… ›Ì «·Ã‰… } ﬁ«· «· —„–Ì ÕœÌÀ Õ”‰ ’ÕÌÕ'",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",39,39)
Return
*-------------------------------------------------------------------*

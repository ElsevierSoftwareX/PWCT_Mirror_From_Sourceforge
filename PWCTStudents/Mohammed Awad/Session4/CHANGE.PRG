*---------------------------------------------------------------------------*
* Time : 06:42:57    Date : 01/23/2012
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2012]  
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


Resistance R_CHANGE_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CHANGE_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 618 ;
HEIGHT 385 ;
ICON "PWCTICON" ;
TITLE "Â·  ⁄·„  " ;
MAIN ;
BACKCOLOR {128,255,128} 

@ 18 ,40 LABEL lbl1 ;
VALUE "„⁄·Ê„«  ‘ÌﬁÂ Ê„›ÌœÂ ›Ï ‘ﬂ· √”∆·Â Â·  ⁄·„ " ;
WIDTH 499 ;
HEIGHT 63 ;
FONT "Arabic Typesetting" SIZE 36  ;
BACKCOLOR {128,255,128} ;
FONTCOLOR {0,0,0}
@ 118 ,205 LABEL lbl2 ;
VALUE "”1: „« ÂÊ √Ê· ‘Ì¡ Œ·ﬁÂ «··Â ”»Õ«‰Â Ê ⁄«·Ï øø  " ;
WIDTH 389 ;
HEIGHT 29 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {128,255,128} ;
FONTCOLOR {0,0,0}
@ 279 ,256 LABEL lbl3 ;
VALUE "" ;
WIDTH 87 ;
HEIGHT 39 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {128,255,128} ;
FONTCOLOR {255,0,0}
@ 197 ,343 BUTTONEX btn1;
CAPTION "«·≈Ã«»Â";
ON CLICK mycaption()  ;
WIDTH 99 HEIGHT 35 ;
FONT "" SIZE 18 ;
TOOLTIP ""
@ 196 ,207 BUTTONEX btn2;
CAPTION "≈‰Â«¡ ";
ON CLICK close()  ;
WIDTH 103 HEIGHT 36 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure mycaption()
win1.lbl3.Value := "Ã‹ : «·ﬁ·„"
return
procedure close()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_CHANGE
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Â·  ⁄·„  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '„⁄·Ê„«  ‘ÌﬁÂ Ê„›ÌœÂ ›Ï ‘ﬂ· √”∆·Â Â·  ⁄·„ '",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '”1: „« ÂÊ √Ê· ‘Ì¡ Œ·ﬁÂ «··Â ”»Õ«‰Â Ê ⁄«·Ï øø  '",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : ''",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«·≈Ã«»Â'",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mycaption",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",35,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '≈‰Â«¡ '",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action close",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",41,43)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",46,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mycaption ( Event : CLICK )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl3.Value := 'Ã‹ : «·ﬁ·„'",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close ( Event : CLICK )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",54,54)
Return
*-------------------------------------------------------------------*

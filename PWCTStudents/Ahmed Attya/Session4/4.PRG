*---------------------------------------------------------------------------*
* Time : 12:07:49    Date : 12/28/2011
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


Resistance R_4_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_4_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "«·œ—” «·—«»⁄" ;
MAIN ;
TOPMOST ;
NOMINIMIZE ;
NOMAXIMIZE ;
BACKCOLOR {128,128,0} 

@ 22 ,45 LABEL lbl1 ;
VALUE "Â·  —Ìœ „⁄—›Â ’«Õ» Â–« «· ÿ»Ìﬁ «·»”Ìÿø" ;
WIDTH 399 ;
HEIGHT 65 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {128,128,0} ;
FONTCOLOR {255,255,255}
@ 166 ,42 LABEL lbl2 ;
VALUE "" ;
WIDTH 399 ;
HEIGHT 65 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {128,128,0} ;
CENTERALIGN ;
FONTCOLOR {255,255,255}
@ 103 ,101 BUTTONEX btn1;
CAPTION "·„⁄—›Â «·≈Ã«»Â ≈÷€ÿ Â‰« !";
ON CLICK Mycaption()  ;
WIDTH 259 HEIGHT 47 ;
FONT "Arial" SIZE 20 ;
TOOLTIP ""
@ 308 ,180 BUTTONEX btn2;
CAPTION "„⁄ «·”·«„Â";
FONTCOLOR {255,0,0};
ON CLICK Myclose()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 16 ;
BOLD ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Mycaption
win1.lbl2.Value := "√Õ„œ Ã«»— ⁄ÿÌÂ"
Return Nil
Proc Myclose
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_4
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«·œ—” «·—«»⁄'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Â·  —Ìœ „⁄—›Â ’«Õ» Â–« «· ÿ»Ìﬁ «·»”Ìÿø'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : ''",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",23,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '·„⁄—›Â «·≈Ã«»Â ≈÷€ÿ Â‰« !'",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Mycaption()",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",32,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '„⁄ «·”·«„Â'",35,37)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Myclose()",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",39,42)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",45,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Mycaption",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl2.Value := '√Õ„œ Ã«»— ⁄ÿÌÂ'",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Myclose",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",53,53)
Return
*-------------------------------------------------------------------*

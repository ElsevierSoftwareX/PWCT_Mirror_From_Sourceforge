*---------------------------------------------------------------------------*
* Time : 12:53:27    Date : 04/03/2012
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
WIDTH 278 ;
HEIGHT 303 ;
ICON "PWCTICON" ;
TITLE "ÇáÚÏÇÏ  " ;
MAIN ;
BACKCOLOR {255,255,255} 

@ 75 ,114 LABEL lbl1 ;
VALUE "0 " ;
WIDTH 200 ;
HEIGHT 20 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,0,0}
@ 156 ,82 BUTTONEX btn1;
CAPTION "ÚÏ ";
ON CLICK click()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure click()
countnum := win1.lbl1.Value
countnum = VAL ( countnum )
countnum := countnum+1
countnum = STR ( countnum )
countnum = ALLTRIM ( countnum )
win1.lbl1.Value := countnum
return


End Of Resistance

INIT PROCEDURE Init_2
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'ÇáÚÏÇÏ  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '0 '",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'ÚÏ '",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action click",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",23,25)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",28,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure click ( Event : CLICK )",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","countnum = win1.lbl1.Value",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","countnum = CONVERT countnum TO Numeric",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","countnum = countnum+1",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","countnum = CONVERT countnum TO STRING",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","countnum = All Trim countnum",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Value := countnum",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",38,38)
Return
*-------------------------------------------------------------------*

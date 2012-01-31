*---------------------------------------------------------------------------*
* Time : 05:11:17    Date : 01/31/2012
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


Resistance R_COUNTER_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_COUNTER_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 211 ;
HEIGHT 279 ;
ICON "PWCTICON" ;
TITLE "Counter  " ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 10 ,10 IMAGE image1;
PICTURE "COUNTER.JPG";
STRETCH ;
WIDTH 187 HEIGHT 194
@ 69 ,80 LABEL lbl1 ;
VALUE "0 " ;
WIDTH 90 ;
HEIGHT 69 ;
AUTOSIZE ;
FONT "Arial" SIZE 48  ;
BACKCOLOR {0,0,0} ;
CENTERALIGN ;
FONTCOLOR {183,183,183}
@ 32 ,47 LABEL lbl2 ;
VALUE "COUNTER " ;
WIDTH 113 ;
HEIGHT 24 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {178,178,178} ;
FONTCOLOR {0,0,0}
@ 208 ,38 BUTTONEX btn1;
CAPTION "Count ";
ON CLICK count()  ;
WIDTH 64 HEIGHT 26 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 208 ,105 BUTTONEX btn2;
CAPTION "Close ";
ON CLICK close()  ;
WIDTH 61 HEIGHT 26 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Count
Count := win1.lbl1.Value
Count = VAL ( Count )
Count := Count+1
Count = STR ( Count )
Count = ALLTRIM ( Count )
win1.lbl1.Value := Count
Return Nil
procedure close()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_COUNTER
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Counter  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'COUNTER.JPG'",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '0 '",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",19,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'COUNTER '",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",28,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Count '",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action count",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",36,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Close '",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action close",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",42,44)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",47,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Count",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Count = win1.lbl1.Value",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Count = CONVERT Count TO Numeric",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Count = Count+1",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Count = CONVERT Count TO STRING",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Count = All Trim Count",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Value := Count",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close ( Event : CLICK )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",60,60)
Return
*-------------------------------------------------------------------*

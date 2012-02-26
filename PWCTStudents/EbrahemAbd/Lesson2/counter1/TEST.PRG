*---------------------------------------------------------------------------*
* Time : 16:28:29    Date : 02/26/2012
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


Resistance R_TEST_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "⁄œ«œ ¬·Ï  ’«⁄œÏ Ê  ‰«“·Ï  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
CURSOR "ICO\ABN.ANI" ;
BACKCOLOR {236,233,216} ;
NOTIFYICON "ICO\ACADMY.ICO" 

win1.Center ( )
@ -11 ,1 IMAGE image1;
PICTURE "ICO\P1.JPG";
STRETCH ;
WIDTH 498 HEIGHT 369
@ 9 ,93 LABEL lbl1 ;
VALUE "0 " ;
WIDTH 81 ;
HEIGHT 71 ;
FONT "Arial" SIZE 48  ;
BOLD ;
BACKCOLOR {228,215,251} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 203 ,74 LABEL lbl2 ;
VALUE "0 " ;
WIDTH 91 ;
HEIGHT 64 ;
FONT "Arial" SIZE 44  ;
BOLD ;
BACKCOLOR {221,255,221} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 321 ,63 BUTTONEX btn3;
CAPTION "Œ—ÊÃ ";
ON CLICK exit()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action counup()
DEFINE TIMER Timer2 INTERVAL 1000 ;
Action coundown()
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

procedure counup()
coun := win1.lbl1.Value
coun = VAL ( coun )
coun1 := coun+1
coun1 = STR ( coun1 )
coun1 = ALLTRIM ( coun1 )
win1.lbl1.Value := coun1
return
procedure coundown()
coun := win1.lbl2.Value
coun = VAL ( coun )
coun1 := coun-1
coun1 = STR ( coun1 )
coun1 = ALLTRIM ( coun1 )
win1.lbl2.Value := coun1
return
procedure exit()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '⁄œ«œ ¬·Ï  ’«⁄œÏ Ê  ‰«“·Ï  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,15)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'ICO\P1.JPG'",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '0 '",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",23,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '0 '",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",32,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Œ—ÊÃ '",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action exit",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",42,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define Timer ( Timer1 )",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define Timer ( Timer2 )",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",49,50)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",51,53)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",54,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure counup ( Event : CLICK )",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","coun = win1.lbl1.Value",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","coun = CONVERT coun TO Numeric",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","coun1 = coun+1",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","coun1 = CONVERT coun1 TO STRING",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","coun1 = All Trim coun1",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Value := coun1",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure coundown ( Event : CLICK )",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","coun = win1.lbl2.Value",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","coun = CONVERT coun TO Numeric",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","coun1 = coun-1",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","coun1 = CONVERT coun1 TO STRING",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","coun1 = All Trim coun1",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl2.Value := coun1",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure exit ( Event : CLICK )",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",75,75)
Return
*-------------------------------------------------------------------*

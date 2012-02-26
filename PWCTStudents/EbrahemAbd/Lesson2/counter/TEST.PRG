*---------------------------------------------------------------------------*
* Time : 16:25:52    Date : 02/26/2012
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
TITLE "ÚÏÇÏ íÏæì" ;
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
@ 16 ,81 LABEL lbl1 ;
VALUE "0 " ;
WIDTH 87 ;
HEIGHT 48 ;
FONT "Arial" SIZE 48  ;
BOLD ;
BACKCOLOR {228,215,251} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 207 ,63 BUTTONEX btn1;
CAPTION "ÚÏ ";
PICTURE "ICO\UP.BMP";
LEFTTEXT ;
ON CLICK counup()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 20 ;
BOLD ;
ITALIC ;
TOOLTIP "ÚÏÏ ÈÊÒÇíÏ"
@ 260 ,63 BUTTONEX btn2;
CAPTION "ÚÏ ";
PICTURE "ICO\DOWN.BMP";
LEFTTEXT ;
ON CLICK coundown()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 20 ;
BOLD ;
ITALIC ;
TOOLTIP "ÚÏÏ ÈÊäÇÞÕ"
@ 321 ,63 BUTTONEX btn3;
CAPTION "ÎÑæÌ ";
ON CLICK exit()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
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
win1.Title := "ÚÏÇÏ ÊÕÇÚÏì"
return
procedure coundown()
coun := win1.lbl1.Value
coun = VAL ( coun )
coun1 := coun-1
coun1 = STR ( coun1 )
coun1 = ALLTRIM ( coun1 )
win1.lbl1.Value := coun1
win1.Title := "ÚÏÇÏ ÊäÇÒáì"
return
procedure exit()
win1.Release ( )


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'ÚÏÇÏ íÏæì'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,15)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'ICO\P1.JPG'",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '0 '",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",23,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'ÚÏ '",30,33)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action counup",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",35,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'ÚÏ '",40,43)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action coundown",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",45,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'ÎÑæÌ '",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action exit",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",53,55)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",56,57)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",58,60)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",61,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure counup ( Event : CLICK )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","coun = win1.lbl1.Value",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","coun = CONVERT coun TO Numeric",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","coun1 = coun+1",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","coun1 = CONVERT coun1 TO STRING",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","coun1 = All Trim coun1",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Value := coun1",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Title := 'ÚÏÇÏ ÊÕÇÚÏì'",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure coundown ( Event : CLICK )",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","coun = win1.lbl1.Value",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","coun = CONVERT coun TO Numeric",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","coun1 = coun-1",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","coun1 = CONVERT coun1 TO STRING",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","coun1 = All Trim coun1",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Value := coun1",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Title := 'ÚÏÇÏ ÊäÇÒáì'",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure exit ( Event : CLICK )",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",83,83)
Return
*-------------------------------------------------------------------*

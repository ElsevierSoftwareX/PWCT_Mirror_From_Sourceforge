*---------------------------------------------------------------------------*
* Time : 04:33:51    Date : 10/23/2011
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


Resistance R_ENDOFEDITBOX_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ENDOFEDITBOX_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 231 ;
HEIGHT 265 ;
ON INIT mystart()  ;
ICON "PWCTICON" ;
TITLE "End of Editbox" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

win1.Center ( )
@ 12 ,10 EDITBOX edit1;
WIDTH 200 ;
HEIGHT 200;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure mystart()
FOR x = 1 TO 100 STEP 1
x2 = STR ( x )
x2 = ALLTRIM ( x2 )
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + x2
else
Win1.Edit1.VALUE := x2
endif
Next
myhandle = GetControlHandle ( "edit1","win1" )
myout = SendMessage ( myhandle,277,7,0 )
return


End Of Resistance

INIT PROCEDURE Init_ENDOFEDITBOX
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'End of Editbox'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action mystart",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,14)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",17,21)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",24,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mystart - Event : INIT",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 100 Step 1)",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = CONVERT x TO STRING",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = All Trim x2",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (x2) to Editbox (Edit1) of Window (Win1)",31,35)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","myhandle = Call Function GetControlHandle ( 'edit1','win1' )",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call Function SendMessage ( myhandle,277,7,0 )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",39,39)
Return
*-------------------------------------------------------------------*

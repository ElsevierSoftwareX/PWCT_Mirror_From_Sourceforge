*---------------------------------------------------------------------------*
* Time : 16:25:22    Date : 09/07/2014
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2014.05.28
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
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


Resistance R_MAIN_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MAIN_19art1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 471 ;
HEIGHT 202 ;
ON INIT pStart()  ;
ON RELEASE pClose()  ;
ICON "PWCTICON" ;
TITLE "Combobox from DBF Field " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

win1.Center ( )
@ 17 ,122 COMBOBOX combo1;
WIDTH 170 ;
HEIGHT 300;
ITEMSOURCE tel->name ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 67 ,122 COMBOBOX combo2;
WIDTH 170 ;
HEIGHT 300;
ITEMSOURCE tel->address ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 117 ,122 COMBOBOX combo3;
WIDTH 170 ;
HEIGHT 300;
ITEMSOURCE tel->phone ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 20 ,50 LABEL lbl1 ;
VALUE "Name " ;
WIDTH 60 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 71 ,49 LABEL lbl2 ;
VALUE "Address " ;
WIDTH 60 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 122 ,50 LABEL lbl3 ;
VALUE "Phone " ;
WIDTH 60 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 117 ,316 BUTTONEX btn1;
CAPTION "Close ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK win1.Release()  ;
WIDTH 96 HEIGHT 27 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pStart()
Use tel.dbf
return
procedure pClose()
SELECT tel
close
return


End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Combobox from DBF Field '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action pStart",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE : Action pClose",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",8,15)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center( )",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo1 )",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",18,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo2 )",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",25,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo3 )",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",32,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name '",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",40,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Address '",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",47,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Phone '",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",54,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Close '",59,62)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action win1.Release",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",64,67)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",68,69)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",70,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pStart - Event : INIT",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Open Table tel.dbf",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pClose - Event : RELEASE",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","SELECT AREA tel",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Close Table",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",79,79)
Return
*-------------------------------------------------------------------*

*---------------------------------------------------------------------------*
* Time : 16:42:39    Date : 09/07/2014
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
TITLE "Combobox from DBF Field - Version 2.0" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

win1.Center ( )
@ 17 ,122 COMBOBOX combo1;
WIDTH 170 ;
HEIGHT 300;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 67 ,122 COMBOBOX combo2;
WIDTH 170 ;
HEIGHT 300;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 117 ,122 COMBOBOX combo3;
WIDTH 170 ;
HEIGHT 300;
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
nMax := Reccount()
IF nMax > 0
FOR x = 1 TO nMax STEP 1
Goto x
win1.combo1.AddItem ( tel->name )
win1.combo2.AddItem ( tel->address )
win1.combo3.AddItem ( tel->phone )
Next
ENDIF
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
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Combobox from DBF Field - Version 2.0'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action pStart",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE : Action pClose",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",8,15)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center( )",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo1 )",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",18,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo2 )",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",24,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo3 )",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",30,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name '",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",37,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Address '",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",44,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Phone '",49,50)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",51,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Close '",56,59)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action win1.Release",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",61,64)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",67,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pStart - Event : INIT",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Open Table tel.dbf",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Records Count",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Goto Record Number x",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","win1.combo1.AddItem ( tel->name )",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","win1.combo2.AddItem ( tel->address )",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","win1.combo3.AddItem ( tel->phone )",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pClose - Event : RELEASE",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","SELECT AREA tel",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Close Table",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",85,85)
Return
*-------------------------------------------------------------------*

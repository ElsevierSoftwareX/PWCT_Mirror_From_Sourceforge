*---------------------------------------------------------------------------*
* Time : 18:09:40    Date : 03/12/2014
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2014.02.24
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
Set cent ON
Set date JAPAN
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 435 ;
ON INIT pStart()  ;
ICON "PWCTICON" ;
TITLE "Date Calc.  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

win1.Center ( )
@ 13 ,10 EDITBOX edit1;
WIDTH 467 ;
HEIGHT 330;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 355 ,377 BUTTONEX btn1;
CAPTION "Close ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK win1.Release()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pStart()
set century on
dDate = DATE()
dDate2 := dDate+1
dDate3 := dDate+2
cDate = DTOC ( dDate )
cDate2 = DTOC ( dDate2 )
cDate3 = DTOC ( dDate3 )
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + cDate
else
Win1.Edit1.VALUE := cDate
endif
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + cDate2
else
Win1.Edit1.VALUE := cDate2
endif
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + cDate3
else
Win1.Edit1.VALUE := cDate3
endif
return


End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Set Date Settings : Century ON Format JAPAN",1,2)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Date Calc.  '",3,7)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action pStart",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",9,16)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center( )",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",19,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Close '",24,27)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action win1.Release",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",29,32)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",35,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pStart - Event : INIT",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","dDate = System Date of today",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","dDate2 = dDate+1",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","dDate3 = dDate+2",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","cDate = CONVERT Date dDate TO String",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","cDate2 = CONVERT Date dDate2 TO String",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","cDate3 = CONVERT Date dDate3 TO String",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cDate) to Editbox (Edit1) of Window (Win1)",46,50)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cDate2) to Editbox (Edit1) of Window (Win1)",51,55)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cDate3) to Editbox (Edit1) of Window (Win1)",56,60)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",61,61)
Return
*-------------------------------------------------------------------*

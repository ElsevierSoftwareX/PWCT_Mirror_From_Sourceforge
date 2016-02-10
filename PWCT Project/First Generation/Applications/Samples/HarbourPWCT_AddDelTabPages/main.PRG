*---------------------------------------------------------------------------*
* Time : 02:32:19    Date : 02/11/2016
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2015 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2015.12.27
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


Resistance R_main_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_main_19art1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Add/Delete Tab Pages  " ;
MAIN ;
BACKCOLOR {236,233,216} 

DEFINE TAB Tab1;
AT 10 ,10;
WIDTH 328;
HEIGHT 318;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END TAB
@ 26 ,373 BUTTONEX btn1;
CAPTION "Add Page";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK pAdd()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
@ 67 ,373 BUTTONEX btn2;
CAPTION "Delete Page";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK pDelete()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pAdd()
win1.Tab1.AddPage ( 1,"page1" )
return
procedure pDelete()
win1.Tab1.DeletePage ( 1 )
return


End Of Resistance

INIT PROCEDURE Init_main
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Add/Delete Tab Pages  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Tab ( Tab1 )",11,14)
SS_ESASTEP("Circuits\Main\Main\Main","Tab Properties",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","End Tab",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Add Page'",18,21)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pAdd",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",23,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Delete Page'",27,30)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pDelete",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",32,35)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",38,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pAdd ( Event : CLICK )",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Tab1.AddPage ( 1,'page1' )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pDelete ( Event : CLICK )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Tab1.DeletePage ( 1 )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",46,46)
Return
*-------------------------------------------------------------------*

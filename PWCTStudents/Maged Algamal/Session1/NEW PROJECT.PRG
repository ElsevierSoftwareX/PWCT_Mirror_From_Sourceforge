*---------------------------------------------------------------------------*
* Time : 10:42:18    Date : 12/18/2011
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


Resistance R_NEW_PROJECT_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_NEW_PROJECT_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "tell they my friends names" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 80 ,86 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 18 ,125 LABEL lbl1 ;
VALUE "my friends names" ;
WIDTH 200 ;
HEIGHT 40 ;
FONT "Viner Hand ITC" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,255}
@ 309 ,18 BUTTONEX btn1;
CAPTION "say names";
ON CLICK mywork()  ;
WIDTH 155 HEIGHT 31 ;
FONT "Cooper Black" SIZE 18 ;
TOOLTIP ""
@ 310 ,303 BUTTONEX btn2;
CAPTION "close window";
ON CLICK closeapplication()  ;
WIDTH 175 HEIGHT 36 ;
FONT "Cooper Black" SIZE 18 ;
TOOLTIP ""
@ 154 ,346 BUTTONEX btn3;
CAPTION "my name";
ON CLICK MSGINFO( 'maged' ) ;
WIDTH 129 HEIGHT 48 ;
FONT "Segoe Print" SIZE 18 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure closeapplication()
win1.Release ( )
return
procedure mywork()
Win1.List1.Additem ( 'abdelhadi' )
Win1.List1.Additem ( 'mohamed' )
Win1.List1.Additem ( 'ahmed' )
return


End Of Resistance

INIT PROCEDURE Init_NEW_PROJECT
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'tell they my friends names'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",12,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'my friends names'",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",19,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'say names'",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mywork",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",27,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'close window'",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closeapplication",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",33,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'my name'",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action 'maged'",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",39,41)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",44,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closeapplication ( Event : CLICK )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mywork ( Event : CLICK )",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('abdelhadi') to Listbox (List1) of Window (Win1)",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('mohamed') to Listbox (List1) of Window (Win1)",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('ahmed') to Listbox (List1) of Window (Win1)",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",54,54)
Return
*-------------------------------------------------------------------*

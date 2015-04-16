*---------------------------------------------------------------------------*
* Time : 13:38:37    Date : 04/16/2015
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2015.03.26
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
WIDTH 390 ;
HEIGHT 343 ;
ICON "PWCTICON" ;
TITLE "Buttons Instead of Grid Header  " ;
MAIN ;
BACKCOLOR {255,255,255} 

@ 42 ,84 BUTTONEX btn1;
CAPTION "Column 1 ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,128,64};
ON CLICK pWork()  ;
WIDTH 101 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
FLAT ;
NOXPSTYLE ;
TOOLTIP ""
@ 42 ,185 BUTTONEX btn2;
CAPTION "Column 2 ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,128,64};
ON CLICK pWork2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
FLAT ;
NOXPSTYLE ;
TOOLTIP ""
@ 73 ,84 GRID Grid1;
WIDTH 200 ;
HEIGHT 200 ;
HEADERS {"Header1","Header2"};
WIDTHS {100,100} ;
ITEMS { {"R1C1","R1C2"} , {"R2C1","R2C2"} , {"R3C1","R3C2"} } ;
FONT "arial" SIZE 9 ;
BACKCOLOR {0,255,128} ;
EDIT INPLACE {} ;
NOHEADERS ;
FONTCOLOR {64,0,64}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pWork()
MyOut := MSGBOX("Column 1","Hello")
return
procedure pWork2()
MyOut := MSGBOX("Column 2","Hello ")
return


End Of Resistance

INIT PROCEDURE Init_main
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Buttons Instead of Grid Header  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Column 1 '",11,14)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pWork",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",16,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Column 2 '",21,24)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pWork2",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",26,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'Header1','Header2'}",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Grid Properties",32,41)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",44,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pWork ( Event : CLICK )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message 'Column 1' Title 'Hello' Type: Message Box",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pWork2 ( Event : CLICK )",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message 'Column 2' Title 'Hello ' Type: Message Box",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",52,52)
Return
*-------------------------------------------------------------------*

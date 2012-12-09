*---------------------------------------------------------------------------*
* Time : 01:38:32    Date : 11/17/2012
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


Resistance R_26_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_26_18smart1() code
CounterObj = Counter()
myout = CounterObj:ShowWindow()
Class Counter
Data nNumber init 0
Method Increment
Method ShowWindow
Method btnIncrement
EndClass
Method Increment Class Counter
self:nNumber = self:nNumber + 1
Return 0
Method ShowWindow Class Counter
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 115 ;
ICON "PWCTICON" ;
TITLE "Counter  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 13 ,41 LABEL lbl1 ;
VALUE "Number " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 13 ,113 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 13 ,334 BUTTONEX btn1;
CAPTION "Increment ";
ON CLICK self:btnIncrement()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 12 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Return 0
Method btnIncrement Class Counter
myout = self:Increment()
win1.text1.Value := self:nNumber
Return 0


End Of Resistance

INIT PROCEDURE Init_26
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CounterObj of Class Counter",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","myout = CounterObj.ShowWindow()",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class Counter",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Data nNumber Init Value 0",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Method Increment",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowWindow",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Method btnIncrement",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Increment Class Counter",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","self:nNumber = self:nNumber + 1",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowWindow Class Counter",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Counter  '",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",18,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Number '",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",25,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",31,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Increment '",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:btnIncrement",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",40,42)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",45,47)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method btnIncrement Class Counter",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Increment()",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := self:nNumber",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",52,52)
Return
*-------------------------------------------------------------------*

*---------------------------------------------------------------------------*
* Time : 12:44:12    Date : 11/05/2012
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


Resistance R_TEST2_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST2_18smart1() code
CounterObj = Counter()
MyOutput = CounterObj:ShowWindow()
Class Counter
Data nNumber init 0
Method increment
Method ShowWindow
Method BtnIncrement
EndClass
Method increment Class Counter
Self:nNumber = Self:nNumber + 1
Return 0
Method ShowWindow Class Counter
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 550 ;
HEIGHT 149 ;
ICON "PWCTICON" ;
TITLE "Counter  " ;
MAIN ;
BACKCOLOR {255,128,0} 

@ 26 ,6 LABEL lbl1 ;
VALUE "Number " ;
WIDTH 118 ;
HEIGHT 33 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 25 ,142 TEXTBOX text1;
HEIGHT 35 ;
WIDTH 206 ;
FONT "arial" SIZE 16 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 22 ,376 BUTTONEX btn1;
CAPTION "increment ";
ON CLICK self:BtnIncrement()  ;
WIDTH 122 HEIGHT 45 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Return 0
Method BtnIncrement Class Counter
MyOutput = self:increment()
win1.text1.Value := self:nNumber
Return 0


End Of Resistance

INIT PROCEDURE Init_TEST2
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CounterObj of Class Counter",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","MyOutput = CounterObj.ShowWindow()",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class Counter",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Data nNumber Init Value 0",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Method increment",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowWindow",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Method BtnIncrement",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method increment Class Counter",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Self:nNumber = Self:nNumber + 1",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowWindow Class Counter",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Counter  '",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",18,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Number '",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",25,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",31,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'increment '",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:BtnIncrement",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",41,43)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",46,48)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method BtnIncrement Class Counter",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","MyOutput = self.increment()",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := self:nNumber",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",53,53)
Return
*-------------------------------------------------------------------*

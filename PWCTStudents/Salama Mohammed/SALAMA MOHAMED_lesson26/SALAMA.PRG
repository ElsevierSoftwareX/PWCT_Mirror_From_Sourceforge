*---------------------------------------------------------------------------*
* Time : 10:55:55    Date : 01/16/2013
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


Resistance R_SALAMA_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SALAMA_18smart1() code
counterobj = counter()
myout = counterobj:showwindow()
Class counter
Data nnumber init 0
Method increment
Method showwindow
Method btnincrement
EndClass
Method increment Class counter
self:nnumber = self:nnumber + 1
Return 0
Method showwindow Class counter
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 200 ,300 ;
WIDTH 529 ;
HEIGHT 159 ;
ICON "PWCTICON" ;
TITLE "counter  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,128,255} 

@ 48 ,72 LABEL lbl1 ;
VALUE "number " ;
WIDTH 60 ;
HEIGHT 24 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {0,128,255} ;
FONTCOLOR {0,0,0}
@ 44 ,136 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 12 ;
BACKCOLOR {255,255,128} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 44 ,345 BUTTONEX btn1;
CAPTION "increment ";
ON CLICK self:btnincrement()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Return 0
Method btnincrement Class counter
myout = self:increment()
win1.text1.Value := self:nnumber
Return 0


End Of Resistance

INIT PROCEDURE Init_SALAMA
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Create Object counterobj of Class counter",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","myout = counterobj.showwindow()",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class counter",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Data nnumber Init Value 0",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Method increment",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Method showwindow",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Method btnincrement",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method increment Class counter",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","self:nnumber = self:nnumber + 1",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showwindow Class counter",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'counter  '",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",18,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'number '",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",28,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",34,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'increment '",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:btnincrement",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",44,46)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",49,51)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method btnincrement Class counter",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.increment()",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := self:nnumber",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",56,56)
Return
*-------------------------------------------------------------------*

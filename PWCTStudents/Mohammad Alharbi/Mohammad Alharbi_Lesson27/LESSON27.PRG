*---------------------------------------------------------------------------*
* Time : 09:35:12    Date : 10/09/2012
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


Resistance R_LESSON26_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON26_18smart1() code
Counterobj = Counter()
Myout = Counterobj:ShowWindow()
Class Counter
Data nNumber init 0
Method Increment
Method ShowWindow
Method Button
Method Decrement
Method dButton
Method Class2UserInterface
Method UserInterface2Class
EndClass
Method Increment Class Counter
Self:nNumber = Self:nNumber + 1
Return 0
Method ShowWindow Class Counter
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 527 ;
HEIGHT 153 ;
ICON "PWCTICON" ;
TITLE "Counter  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 16 ,14 LABEL lbl1 ;
VALUE "Number " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 14 ,92 TEXTBOX text1;
ON CHANGE Self:Class2UserInterface()  ;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 13 ,304 BUTTONEX btn1;
CAPTION "Increment ";
FONTCOLOR {0,128,0};
BACKCOLOR {236,233,216};
ON CLICK Self:Button()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 13 ,409 BUTTONEX btn2;
CAPTION "Decrement ";
FONTCOLOR {255,0,0};
BACKCOLOR {236,233,216};
ON CLICK Self:dButton()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Return 0
Method Button Class Counter
Myout = Self:Increment()
win1.text1.Value := Self:nNumber
Return 0
Method Decrement Class Counter
Self:nNumber := Self:nNumber-1
Return 0
Method dButton Class Counter
Myout = Self:Decrement()
win1.text1.Value := Self:nNumber
Return 0
Method Class2UserInterface Class Counter
Self:nNumber := win1.text1.Value
Return 0
Method UserInterface2Class Class Counter
Self:nNumber := win1.text1.Value
Myout = Self:Increment()
Return 0


End Of Resistance

INIT PROCEDURE Init_LESSON26
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Create Object Counterobj of Class Counter",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Myout = Counterobj.ShowWindow()",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class Counter",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Data nNumber Init Value 0",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Method Increment",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowWindow",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Method Button",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Method Decrement",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Method dButton",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Method Class2UserInterface",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Method UserInterface2Class",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Increment Class Counter",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Self:nNumber = Self:nNumber + 1",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowWindow Class Counter",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Counter  '",17,21)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",22,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Number '",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",29,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action Self:Class2UserInterface",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",36,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Increment '",43,46)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:Button",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",48,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Decrement '",51,54)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:dButton",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",56,58)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",61,63)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Button Class Counter",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Myout = Self.Increment()",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := Self:nNumber",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Decrement Class Counter",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Self:nNumber = Self:nNumber-1",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method dButton Class Counter",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Myout = Self.Decrement()",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := Self:nNumber",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Class2UserInterface Class Counter",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Self:nNumber = win1.text1.Value",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method UserInterface2Class Class Counter",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Self:nNumber = win1.text1.Value",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Myout = Self.Increment()",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",82,82)
Return
*-------------------------------------------------------------------*

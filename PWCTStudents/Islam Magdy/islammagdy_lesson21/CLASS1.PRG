*---------------------------------------------------------------------------*
* Time : 13:40:53    Date : 11/03/2012
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


Resistance R_CLASS1_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CLASS1_18smart1() code
MyObj = Myclass()
Myobj2 = Myclass()
Outp = MyObj:ShowSum(10,10)
Class Myclass
Method Mymethod
Method message
Method Title
Method Sum
Method Window
Method ShowSum
EndClass
Method Mymethod Class Myclass
MyOut := MSGINFO("Message from Mymethod "," ")
Return 0
Method message(cmessage) Class Myclass
MyOut := MSGINFO(cmessage," ")
Return 0
Method Title(cmessage,ctitle) Class Myclass
MyOut := MSGINFO(cmessage,ctitle)
Return 0
Method Sum(num1,num2) Class Myclass
total = num1 + num2
MyOut := MSGBOX(total,"")
Return total
Method Window Class Myclass
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 47 ,150 LABEL lbl1 ;
VALUE "Classes Lessons " ;
WIDTH 203 ;
HEIGHT 34 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Return 0
Method ShowSum(num1,num2) Class Myclass
nSum = num1 + num2
Outp = Self:Title(nSum,"sum")
Outp = Self:message(nSum)
Outp = Self:Window()
Return 0


End Of Resistance

INIT PROCEDURE Init_CLASS1
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Create Object MyObj of Class Myclass",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object Myobj2 of Class Myclass",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Outp = MyObj.ShowSum(10,10)",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class Myclass",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Method Mymethod",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Method message",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Method Title",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Method Sum",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Method Window",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowSum",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Mymethod Class Myclass",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Message from Mymethod ' Title ' ' Type: Message Info",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method message(cmessage) Class Myclass",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message cmessage Title ' ' Type: Message Info",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Title(cmessage,ctitle) Class Myclass",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message cmessage Title ctitle Type: Message Info",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Sum(num1,num2) Class Myclass",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","total = num1 + num2",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message total Title '' Type: Message Box",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return total)",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Window Class Myclass",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '  '",26,30)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",31,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Classes Lessons '",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",38,42)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",45,47)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowSum(num1,num2) Class Myclass",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","nSum = num1 + num2",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Outp = Self.Title(nSum,'sum')",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Outp = Self.message(nSum)",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Outp = Self.Window()",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",54,54)
Return
*-------------------------------------------------------------------*

*---------------------------------------------------------------------------*
* Time : 10:01:43    Date : 10/08/2013
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2013 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2013.10.07
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


Resistance R_TEST_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST_19art1() code
Set Procedure to "ml.PRG"
oML = MultiLang()
oML:cFileName := FILESTR( "ActiveLang.txt" )
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 433 ;
HEIGHT 262 ;
ICON "PWCTICON" ;
TITLE "Multiple Languages." ;
MAIN ;
BACKCOLOR {236,233,216} 
@ 49 ,21 LABEL lbl1 ;
VALUE oML:GetStr(1,"Name") ;
WIDTH 119 ;
HEIGHT 28 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 89 ,21 LABEL lbl2 ;
VALUE oML:GetStr(2,"Address") ;
WIDTH 119 ;
HEIGHT 28 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 129 ,21 LABEL lbl3 ;
VALUE oML:GetStr(3,"Phone") ;
WIDTH 119 ;
HEIGHT 28 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 49 ,170 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
@ 89 ,170 TEXTBOX textAddress;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
@ 129 ,170 TEXTBOX textPhone;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
END WINDOW
ACTIVATE WINDOW win1
EndIF

End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ml.PRG'",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object oML of Class MultiLang",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","oML:cFileName := Read File 'ActiveLang.txt'",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Multiple Languages.'",4,8)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",9,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : oML:GetStr(1,'Name')",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : oML:GetStr(2,'Address')",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",23,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : oML:GetStr(3,'Phone')",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",30,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textName  )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",36,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textAddress  )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",43,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textPhone  )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",50,55)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",56,57)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",58,60)
Return
*-------------------------------------------------------------------*

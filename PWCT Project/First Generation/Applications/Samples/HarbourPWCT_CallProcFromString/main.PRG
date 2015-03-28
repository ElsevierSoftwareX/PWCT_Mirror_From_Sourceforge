*---------------------------------------------------------------------------*
* Time : 16:27:21    Date : 03/28/2015
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
WIDTH 397 ;
HEIGHT 226 ;
ICON "PWCTICON" ;
TITLE "Call Procedure from String  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 27 ,17 LABEL lbl1 ;
VALUE "Procedure Name " ;
WIDTH 110 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 26 ,139 TEXTBOX textProc;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 74 ,139 LABEL lbl2 ;
VALUE "Try procedure one() and two() " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 127 ,139 BUTTONEX btn1;
CAPTION "Call ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK pWork()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pWork()
BEGIN SEQUENCE WITH { |e| break(e) }
x := &(win1.textProc.Value)
RECOVER
MyOut := MSGBOX("Error in the code!"," ")
END SEQUENCE
return
Proc one
MyOut := MSGBOX("The first message! "," ")
Return Nil
Proc two
MyOut := MSGBOX("The Second Message "," ")
Return Nil


End Of Resistance

INIT PROCEDURE Init_main
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Call Procedure from String  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Procedure Name '",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textProc  )",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",19,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Try procedure one() and two() '",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Call '",32,35)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pWork",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",37,40)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",43,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pWork ( Event : CLICK )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Error Handling, Try",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","x = &(win1.textProc.Value)",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Catch",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message 'Error in the code!' Title ' ' Type: Message Box",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","End Try",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure one",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message 'The first message! ' Title ' ' Type: Message Box",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure two",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message 'The Second Message ' Title ' ' Type: Message Box",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",58,58)
Return
*-------------------------------------------------------------------*

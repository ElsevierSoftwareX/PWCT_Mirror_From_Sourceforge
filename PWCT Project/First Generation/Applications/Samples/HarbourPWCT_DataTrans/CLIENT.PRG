*---------------------------------------------------------------------------*
* Time : 14:12:40    Date : 09/19/2013
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2013 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2013.09.15
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
 * (Noun) *
Parameters SP1,SP2,SP3,SP4,SP5,SP6,SP7,SP8

	DataUnit :
			Atom myatom                        
				Shell K                             
					SubShell S                             
						Variable myelectron
					SubShell P                             
					SubShell D                             
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
					Resistance myresistance                  
					Resistance NewRecord                     
	VetoUnit :
		Receiving Veto acceptconnection
		Veto ShowData
				Type Local : Inside Server
				Circuit    Main
				Branch     Main
				Resistance myresistance
		Veto NewRecord
				Type Local : Inside Server
				Circuit    Main
				Branch     Main
				Resistance NewRecord
		Channel inchannel
				Type     Input Channel
				Atom     myatom
				Shell    K
				SubShell P
		Channel outchannel2
				Type     Output Channel
				Atom     myatom
				Shell    K
				SubShell D
		Connection myconnection
				Type          Network to Network
				InputChannel  inchannel
				OutputChannel outchannel2
				ReceivingVeto nothing
				SendingVeto   nothing
				Atom          myatom
				Shell         K
				SubShell      S
				Electron      myelectron
				Server        Server1
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_CLIENT_18smart1() address Code Unit : Circuits\Main\Main\Main

Resistance R_CLIENT_18smart2() address Code Unit : Circuits\Main\Main\myresistance

Resistance R_CLIENT_18smart3() address Code Unit : Circuits\Main\Main\NewRecord


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CLIENT_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 612 ;
HEIGHT 408 ;
ON INIT vetostart()  ;
ICON "PWCTICON" ;
TITLE "Client" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 
@ -9 ,-6 IMAGE image1;
PICTURE "back.jpg";
STRETCH ;
WIDTH 648 HEIGHT 396
@ 320 ,131 TEXTBOX text1;
ON ENTER mystart()  ;
HEIGHT 30 ;
WIDTH 350 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
@ 17 ,131 EDITBOX edit1;
WIDTH 457 ;
HEIGHT 289;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 319 ,489 BUTTONEX btn1;
CAPTION "Send";
ON CLICK mystart()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
DEFINE TIMER Timer1 INTERVAL 10 ;
Action myservice()
@ 17 ,22 LABEL lbl1 ;
VALUE "Received Data " ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 321 ,82 LABEL lbl2 ;
VALUE "Data " ;
WIDTH 40 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
END WINDOW
ACTIVATE WINDOW win1
EndIF
Proc mystart
BEGIN SEQUENCE WITH { |e| break(e) }
win1.timer1.Enabled := false
mydata := win1.text1.Value
CON_SENDDATA (mydata)
CON_SENDVETO ShowData
win1.timer1.Enabled := true
RECOVER
END SEQUENCE
Return Nil
Proc myservice
CHECK_VETO_SERVICES
Return Nil
Proc vetostart
SET VETO SYSTEM LEVEL 4
Declare server "Server1" address "127.0.0.1" port 1200
SELECT CLIENT CONNECTION myatom:K:S:myelectron
CON_CONNECT
Return Nil

End Of Resistance

* Resistance Code Unit : Circuits\Main\Main\myresistance
Resistance R_CLIENT_18smart2() code
Select Input Channel  inchannel
Open Channel inchannel
GOTO FIRST ELECTRON
mymax := GET_ACTIVE_ELECTRONS_COUNT
FOR x = 1 TO mymax STEP 1
mydata := GET_ACTIVE_ELECTRON_VALUE
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + mydata
else
Win1.Edit1.VALUE := mydata
endif
GOTO NEXT ELECTRON
Next
CLEAR CHANNEL
Close Channel

End Of Resistance

* Resistance Code Unit : Circuits\Main\Main\NewRecord
Resistance R_CLIENT_18smart3() code
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + "New Record"
else
Win1.Edit1.VALUE := "New Record"
endif
Select Input Channel  inchannel
Open Channel inchannel
GOTO FIRST ELECTRON
mymax := GET_ACTIVE_ELECTRONS_COUNT
FOR x = 1 TO mymax STEP 1
IF x == 1
cColumn := "Patient Name : "
ELSEIF x == 2
cColumn := "Patient Address : "
ELSEIF x = 3
cColumn := "Patient Phone : "
ENDIF
mydata := GET_ACTIVE_ELECTRON_VALUE
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + cColumn + mydata
else
Win1.Edit1.VALUE := cColumn + mydata
endif
GOTO NEXT ELECTRON
Next
CLEAR CHANNEL
Close Channel

End Of Resistance

INIT PROCEDURE Init_CLIENT
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",95)
SS_ESARES("Circuits\Main\Main\myresistance",176)
SS_ESARES("Circuits\Main\Main\NewRecord",196)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESAGOAL("Circuits\Main\Main\myresistance","myresistance")
SS_ESAGOAL("Circuits\Main\Main\NewRecord","NewRecord")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Client'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'back.jpg'",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON ENTER : Action mystart",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",21,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",28,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Send'",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mystart()",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",36,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define Timer ( Timer1 )",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Received Data '",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",43,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Data '",49,50)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",51,56)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",59,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mystart",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Error Handling, Try",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","win1.timer1.Enabled := false",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","mydata = win1.text1.Value",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","(DoubleS/Veto Unit) Connection - Send Data  (mydata)",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","(DoubleS/Veto Unit) Connection - Send Veto  ShowData",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","win1.timer1.Enabled := true",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Catch",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","End Try",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myservice",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","(DoubleS/Veto Unit) Check Veto Services",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure vetostart",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","(DoubleS/Veto Unit) Set Veto System Level to 4",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Declare server 'Server1' address '127.0.0.1' port 1200",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","SELECT CLIENT CONNECTION myatom:K:S:myelectron",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","(DoubleS/Veto Unit) Connection CONNECT",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",80,80)
SS_ESASTEP("Circuits\Main\Main\myresistance","Select Input Channel ( inchannel )",1,1)
SS_ESASTEP("Circuits\Main\Main\myresistance","(DoubleS/Veto Unit) Open Channel inchannel",2,2)
SS_ESASTEP("Circuits\Main\Main\myresistance","GOTO FIRST ELECTRON",3,3)
SS_ESASTEP("Circuits\Main\Main\myresistance","mymax := GET_ACTIVE_ELECTRONS_COUNT",4,4)
SS_ESASTEP("Circuits\Main\Main\myresistance","FOR LOOP ( From x = 1 To mymax Step 1)",5,5)
SS_ESASTEP("Circuits\Main\Main\myresistance","mydata := GET_ACTIVE_ELECTRON_VALUE",6,6)
SS_ESASTEP("Circuits\Main\Main\myresistance","Print text (mydata) to Editbox (Edit1) of Window (Win1)",7,11)
SS_ESASTEP("Circuits\Main\Main\myresistance","GOTO NEXT ELECTRON",12,12)
SS_ESASTEP("Circuits\Main\Main\myresistance","End of For Loop",13,13)
SS_ESASTEP("Circuits\Main\Main\myresistance","(DoubleS/Veto Unit) Clear Channel",14,14)
SS_ESASTEP("Circuits\Main\Main\myresistance","(DoubleS/Veto Unit) Close Channel",15,15)
SS_ESASTEP("Circuits\Main\Main\NewRecord","Print text ('New Record') to Editbox (Edit1) of Window (Win1)",1,5)
SS_ESASTEP("Circuits\Main\Main\NewRecord","Select Input Channel ( inchannel )",6,6)
SS_ESASTEP("Circuits\Main\Main\NewRecord","(DoubleS/Veto Unit) Open Channel inchannel",7,7)
SS_ESASTEP("Circuits\Main\Main\NewRecord","GOTO FIRST ELECTRON",8,8)
SS_ESASTEP("Circuits\Main\Main\NewRecord","mymax := GET_ACTIVE_ELECTRONS_COUNT",9,9)
SS_ESASTEP("Circuits\Main\Main\NewRecord","FOR LOOP ( From x = 1 To mymax Step 1)",10,10)
SS_ESASTEP("Circuits\Main\Main\NewRecord","IF ( x == 1 )",11,11)
SS_ESASTEP("Circuits\Main\Main\NewRecord","cColumn = 'Patient Name : '",12,12)
SS_ESASTEP("Circuits\Main\Main\NewRecord","ELSEIF ( x == 2 )",13,13)
SS_ESASTEP("Circuits\Main\Main\NewRecord","cColumn = 'Patient Address : '",14,14)
SS_ESASTEP("Circuits\Main\Main\NewRecord","ELSEIF ( x = 3 )",15,15)
SS_ESASTEP("Circuits\Main\Main\NewRecord","cColumn = 'Patient Phone : '",16,16)
SS_ESASTEP("Circuits\Main\Main\NewRecord","END OF IF STATEMENT",17,17)
SS_ESASTEP("Circuits\Main\Main\NewRecord","mydata := GET_ACTIVE_ELECTRON_VALUE",18,18)
SS_ESASTEP("Circuits\Main\Main\NewRecord","Print text (cColumn + mydata) to Editbox (Edit1) of Window (Win1)",19,23)
SS_ESASTEP("Circuits\Main\Main\NewRecord","GOTO NEXT ELECTRON",24,24)
SS_ESASTEP("Circuits\Main\Main\NewRecord","End of For Loop",25,25)
SS_ESASTEP("Circuits\Main\Main\NewRecord","(DoubleS/Veto Unit) Clear Channel",26,26)
SS_ESASTEP("Circuits\Main\Main\NewRecord","(DoubleS/Veto Unit) Close Channel",27,27)
Return
*-------------------------------------------------------------------*

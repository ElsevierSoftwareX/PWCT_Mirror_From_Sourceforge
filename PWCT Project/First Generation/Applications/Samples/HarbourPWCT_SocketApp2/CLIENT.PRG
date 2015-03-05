*---------------------------------------------------------------------------*
* Time : 22:01:15    Date : 03/05/2015
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2014.11.15
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


Resistance R_CLIENT_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CLIENT_19art1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 415 ;
HEIGHT 361 ;
ICON "PWCTICON" ;
TITLE "Client  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 273 ,294 BUTTONEX btn1;
CAPTION "Send ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK pConnect()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
@ 30 ,10 LABEL lbl1 ;
VALUE "Server IP " ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 70 ,10 LABEL lbl2 ;
VALUE "Port Number " ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 22 ,113 TEXTBOX textServer;
HEIGHT 30 ;
WIDTH 200 ;
VALUE "127.0.0.1" ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 68 ,113 TEXTBOX textPort;
HEIGHT 30 ;
WIDTH 200 ;
VALUE "1500" ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 118 ,10 LABEL lbl3 ;
VALUE "Message :  " ;
WIDTH 90 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 114 ,113 EDITBOX editMsg;
WIDTH 280 ;
HEIGHT 140;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pConnect()
oSocket = HB_INETConnect( win1.textServer.Value ,VAL(win1.textPort.Value) )
HB_INETSend( oSocket, win1.editMsg.Value + CHR(13) + CHR(10) )
HB_INETClose( oSocket )
return


End Of Resistance

INIT PROCEDURE Init_CLIENT
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Client  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Send '",11,14)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pConnect",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",16,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Server IP '",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",22,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Port Number '",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",29,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textServer  )",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",35,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textPort  )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",43,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Message :  '",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",52,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( editMsg )",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",58,62)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",65,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pConnect ( Event : CLICK )",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","oSocket = INET - Connect, Address : win1.textServer.Value , Port : win1.textPort.Value",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","INET - Send Data - Socket : oSocket , Data win1.editMsg.Value + CHR(13) + CHR(10)",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Close Socket , Socket Object : oSocket",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",72,72)
Return
*-------------------------------------------------------------------*

*---------------------------------------------------------------------------*
* Time : 16:30:26    Date : 10/30/2010
*---------------------------------------------------------------------------*
* Programming without coding technology 1.7 (Sharp) [2006-2010]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
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
					Resistance acceptconnection              
	VetoUnit :
		Veto myveto
				Type Local : Inside Server
				Circuit    Main
				Branch     Main
				Resistance myresistance
		Veto acceptconnection
				Type Local : Inside Server
				Circuit    Main
				Branch     Main
				Resistance acceptconnection
		Channel mychannel
				Type     Input Channel
				Atom     myatom
				Shell    K
				SubShell P
		Channel mychannel2
				Type     Output Channel
				Atom     myatom
				Shell    K
				SubShell D
		Connection myconnection
				Type          New Client (New Object )
				InputChannel  mychannel2
				OutputChannel mychannel2
				ReceivingVeto acceptconnection
				SendingVeto   myveto
				Atom          myatom
				Shell         K
				SubShell      S
				Electron      myelectron
				Server        Server1
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_TEST_15speed1() address Code Unit : Circuits\Main\Main\Main

Resistance R_TEST_15speed2() address Code Unit : Circuits\Main\Main\myresistance

Resistance R_TEST_15speed3() address Code Unit : Circuits\Main\Main\acceptconnection


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Veto System Level (1) - GUI " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 57 ,18 EDITBOX edit1;
WIDTH 457 ;
HEIGHT 289;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 16 ,18 BUTTONEX btn1;
CAPTION "Run";
ON CLICK mystart()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc mystart
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + "Welcome to Client"
else
Win1.Edit1.VALUE := "Welcome to Client"
endif
SELECT CLIENT CONNECTION myatom:K:S:myelectron
CON_CONNECT
CON_SENDDATA "This message from client"
CON_SENDDATA "Another message from client"
CON_SENDVETO myveto
CON_DISCONNECT
Return Nil


End Of Resistance

* Resistance Code Unit : Circuits\Main\Main\myresistance
Resistance R_TEST_15speed2() code
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + "Welcome to server "
else
Win1.Edit1.VALUE := "Welcome to server "
endif
Open Channel mychannel
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

* Resistance Code Unit : Circuits\Main\Main\acceptconnection
Resistance R_TEST_15speed3() code
mycheck := REQUEST_TYPE_CONNECTION
IF mycheck
ACCEPT CONNECTION
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + " Server : Accept Connection "
else
Win1.Edit1.VALUE := " Server : Accept Connection "
endif
ENDIF


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
Return
*-------------------------------------------------------------------*

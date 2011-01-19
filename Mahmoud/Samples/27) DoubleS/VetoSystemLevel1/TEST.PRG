*---------------------------------------------------------------------------*
* Time : 15:50:41    Date : 10/30/2010
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

Resistance R_TEST_15speed1() address Code Unit : Circuits\Main\Main\Main

Resistance R_TEST_15speed2() address Code Unit : Circuits\Main\Main\myresistance

Resistance R_TEST_15speed3() address Code Unit : Circuits\Main\Main\acceptconnection


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST_15speed1() code
? "Hello From Client "
SELECT CLIENT CONNECTION myatom:K:S:myelectron
CON_CONNECT
CON_SENDDATA "hello"
CON_SENDDATA "this message from client"
CON_SENDVETO myveto
CON_DISCONNECT
INKEY(3)


End Of Resistance

* Resistance Code Unit : Circuits\Main\Main\myresistance
Resistance R_TEST_15speed2() code
? "Welcome from server "
Open Channel mychannel
GOTO FIRST ELECTRON
mymax := GET_ACTIVE_ELECTRONS_COUNT
FOR x = 1 TO mymax STEP 1
mydata := GET_ACTIVE_ELECTRON_VALUE
? mydata
GOTO NEXT ELECTRON
Next
CLEAR CHANNEL
Close Channel
INKEY(3)


End Of Resistance

* Resistance Code Unit : Circuits\Main\Main\acceptconnection
Resistance R_TEST_15speed3() code
ACCEPT CONNECTION


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
Return
*-------------------------------------------------------------------*

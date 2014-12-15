*---------------------------------------------------------------------------*
* Time : 04:00:13    Date : 12/15/2014
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
WIDTH 500 ;
HEIGHT 400 ;
ON INIT pStart()  ;
ICON "PWCTICON" ;
TITLE "Server  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 45 ,97 EDITBOX edit1;
WIDTH 200 ;
HEIGHT 200;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 107 ,341 BUTTONEX btn1;
CAPTION "Connect ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK pConnect()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pStart()
HB_INETInit()
oServerSocket = HB_INETServer(1500)
pThID = hb_threadstart(1,"myserver",@oServerSocket )
return
Function  myserver ( oServerSocket )
DO WHILE  True
oSocket := HB_INETAccept( oServerSocket )
cData = HB_INETRecvLine( oSocket )
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + cData
else
Win1.Edit1.VALUE := cData
endif
HB_INETClose( oSocket )
ENDDO
Return
procedure pConnect()
oSocket = HB_INETConnect( "127.0.0.1" ,VAL("1500") )
HB_INETSend( oSocket, "Hello World " + CHR(13) + CHR(10) )
HB_INETClose( oSocket )
return


End Of Resistance

INIT PROCEDURE Init_main
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Server  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action pStart",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Connect '",18,21)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pConnect",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",23,26)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",29,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pStart - Event : INIT",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","INET - Init",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","INET Server, Socket Object : oServerSocket , Port 1500",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","pThID = Thread Start , Inherit , Function Name : 'myserver' , Parameters : @oServerSocket",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define Function myserver ( oServerSocket )",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","WHILE ( True )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","oSocket = INET Accept : Server Socket Object : oServerSocket",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","cData = INET Receive Line - Socket Object : oSocket",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cData) to Editbox (Edit1) of Window (Win1)",41,45)
SS_ESASTEP("Circuits\Main\Main\Main","Close Socket , Socket Object : oSocket",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","END OF While Loop",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","End of Function",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pConnect ( Event : CLICK )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","oSocket = INET - Connect, Address : '127.0.0.1' , Port : '1500'",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","INET - Send Data - Socket : oSocket , Data 'Hello World ' + CHR(13) + CHR(10)",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Close Socket , Socket Object : oSocket",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",53,53)
Return
*-------------------------------------------------------------------*

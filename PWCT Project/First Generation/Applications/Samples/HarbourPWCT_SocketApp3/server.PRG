*---------------------------------------------------------------------------*
* Time : 02:07:15    Date : 04/27/2015
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2015.04.25
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


Resistance R_server_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_server_19art1() code
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
cData = HB_Base64Decode( cData )
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + cData
else
Win1.Edit1.VALUE := cData
endif
HB_INETClose( oSocket )
ENDDO
Return


End Of Resistance

INIT PROCEDURE Init_server
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Server  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action pStart",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pStart - Event : INIT",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","INET - Init",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","INET Server, Socket Object : oServerSocket , Port 1500",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","pThID = Thread Start , Inherit , Function Name : 'myserver' , Parameters : @oServerSocket",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define Function myserver ( oServerSocket )",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","WHILE ( True )",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","oSocket = INET Accept : Server Socket Object : oServerSocket",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","cData = INET Receive Line - Socket Object : oSocket",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","cData = Base64 Decode ( cData )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cData) to Editbox (Edit1) of Window (Win1)",33,37)
SS_ESASTEP("Circuits\Main\Main\Main","Close Socket , Socket Object : oSocket",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","END OF While Loop",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","End of Function",40,40)
Return
*-------------------------------------------------------------------*

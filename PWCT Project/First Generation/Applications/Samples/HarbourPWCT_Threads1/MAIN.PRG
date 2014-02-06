*---------------------------------------------------------------------------*
* Time : 04:55:11    Date : 02/06/2014
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2014.01.31
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


Resistance R_MAIN_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MAIN_19art1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON INIT pStart()  ;
ICON "PWCTICON" ;
TITLE "Thread Test (1)  " ;
MAIN ;
BACKCOLOR {236,233,216} 
@ 10 ,10 EDITBOX edit1;
WIDTH 467 ;
HEIGHT 338;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW
ACTIVATE WINDOW win1
EndIF
procedure pStart()
Public pMtx
pMtx = hb_mutexCreate()
FOR t = 1 TO 10 STEP 1
pThID = hb_threadstart(1,"MyThreadFunction",t )
Next
return
Function  MyThreadFunction ( nIndex )
Local x
FOR x = 1 TO 10 STEP 1
lLocked =  hb_mutexLock(pMtx)
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + "Thread Number : " + str(nIndex ) + " , Print Number : " + str(x)
else
Win1.Edit1.VALUE := "Thread Number : " + str(nIndex ) + " , Print Number : " + str(x)
endif
lOk = hb_mutexUnlock(pMtx)
Next
Return

End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Thread Test (1)  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action pStart",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pStart - Event : INIT",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Public pMtx",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","pMtx = Mutex Create",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From t = 1 To 10 Step 1)",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","pThID = Thread Start , Inherit , Function Name : 'MyThreadFunction' , Parameters : t",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define Function MyThreadFunction ( nIndex )",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Local x",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 10 Step 1)",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","lLocked = Mutex Lock (pMtx)",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Thread Number : ' + str(nIndex ) + ' , Print Number : ' + str(x)) to Editbox (Edit1) of Window (Win1)",34,38)
SS_ESASTEP("Circuits\Main\Main\Main","lOk = Mutex Unlock (pMtx)",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","End of Function",41,41)
Return
*-------------------------------------------------------------------*

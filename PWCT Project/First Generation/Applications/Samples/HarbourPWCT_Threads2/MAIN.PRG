*---------------------------------------------------------------------------*
* Time : 04:56:08    Date : 02/06/2014
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
SET AUTOADJUST ON
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON INIT pStart()  ;
ICON "PWCTICON" ;
TITLE "Thread Test (2)  " ;
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
pThID = hb_threadstart(1,"MainThread")
return
Function  SubThread ( nIndex )
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
Function  MainThread ()
Local t
Public pMtx
pMtx = hb_mutexCreate()
aThreads := {}
FOR t = 1 TO 10 STEP 1
pThID = hb_threadstart(1,"SubThread",t )
AADD( aThreads , pThID)
Next
FOR t = 1 TO 10 STEP 1
lLocked =  hb_mutexLock(pMtx)
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + "Join Thread Number : " +str(t)
else
Win1.Edit1.VALUE := "Join Thread Number : " +str(t)
endif
lOk = hb_mutexUnlock(pMtx)
lOk = hb_threadJoin( aThreads[t] )
Next
Return

End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Set AutoAdjust ON",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Thread Test (2)  '",2,6)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action pStart",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",8,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",14,18)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",21,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pStart - Event : INIT",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","pThID = Thread Start , Inherit ,  Function Name : 'MainThread'",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define Function SubThread ( nIndex )",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Local x",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 10 Step 1)",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","lLocked = Mutex Lock (pMtx)",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Thread Number : ' + str(nIndex ) + ' , Print Number : ' + str(x)) to Editbox (Edit1) of Window (Win1)",31,35)
SS_ESASTEP("Circuits\Main\Main\Main","lOk = Mutex Unlock (pMtx)",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","End of Function",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define Function MainThread",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Local t",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Public pMtx",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","pMtx = Mutex Create",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aThreads",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From t = 1 To 10 Step 1)",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","pThID = Thread Start , Inherit , Function Name : 'SubThread' , Parameters : t",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Add item pThID To Array aThreads",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From t = 1 To 10 Step 1)",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","lLocked = Mutex Lock (pMtx)",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Join Thread Number : ' +str(t)) to Editbox (Edit1) of Window (Win1)",50,54)
SS_ESASTEP("Circuits\Main\Main\Main","lOk = Mutex Unlock (pMtx)",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","lOk = Thread Join ( aThreads[t])",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","End of Function",58,58)
Return
*-------------------------------------------------------------------*

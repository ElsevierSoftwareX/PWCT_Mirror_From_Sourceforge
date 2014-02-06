*---------------------------------------------------------------------------*
* Time : 04:57:01    Date : 02/06/2014
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
WIDTH 593 ;
HEIGHT 400 ;
ON INIT pStart()  ;
ICON "PWCTICON" ;
TITLE "Thread Test (3)  " ;
MAIN ;
BACKCOLOR {236,233,216} 
@ 17 ,101 EDITBOX edit1;
WIDTH 467 ;
HEIGHT 150;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 17 ,17 LABEL lbl1 ;
VALUE "Process " ;
WIDTH 70 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 198 ,17 LABEL lbl2 ;
VALUE "Output " ;
WIDTH 70 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 198 ,101 EDITBOX edit2;
WIDTH 467 ;
HEIGHT 150;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW
ACTIVATE WINDOW win1
EndIF
procedure pStart()
pThID = hb_threadstart(1,"MainThread")
return
Function  MainThread ()
Local t,pThID,aThreads
Public pMtx
pMtx = hb_mutexCreate()
aThreads := {}
FOR t = 1 TO 10 STEP 1
pThID = hb_threadstart(1,"SubThread",t )
AADD( aThreads , pThID)
Next
FOR t = 1 TO 10 STEP 1
xVal := ""
lSubscribed =  hb_mutexSubscribe(pMtx ,  , @xVal)
lLocked =  hb_mutexLock(pMtx)
if .not. empty(Win1.Edit2.VALUE)
Win1.Edit2.VALUE := Win1.Edit2.VALUE + CHR(13) + CHR(10) + xVal
else
Win1.Edit2.VALUE := xVal
endif
lOk = hb_mutexUnlock(pMtx)
Next
Return
Function  SubThread ( nIndex )
Local x,nSum,cMsg
FOR x = 1 TO 10 STEP 1
lLocked =  hb_mutexLock(pMtx)
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + "Thread Number : " + str(nIndex ) + " , Print Number : " + str(x)
else
Win1.Edit1.VALUE := "Thread Number : " + str(nIndex ) + " , Print Number : " + str(x)
endif
lOk = hb_mutexUnlock(pMtx)
Next
nSum := nIndex*50
cMsg := "Thread Number : " +str(nIndex) + "      Sum : " + str(nSum)
hb_mutexNotify(pMtx,cMsg)
Return

End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Set AutoAdjust ON",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Thread Test (3)  '",2,6)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action pStart",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",8,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",14,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Process '",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",21,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Output '",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",28,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit2 )",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",34,38)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",41,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pStart - Event : INIT",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","pThID = Thread Start , Inherit ,  Function Name : 'MainThread'",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define Function MainThread",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Local t,pThID,aThreads",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Public pMtx",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","pMtx = Mutex Create",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aThreads",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From t = 1 To 10 Step 1)",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","pThID = Thread Start , Inherit , Function Name : 'SubThread' , Parameters : t",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Add item pThID To Array aThreads",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From t = 1 To 10 Step 1)",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","xVal = ''",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","lSubscribed = Mutex Subscribe ( pMtx ,  , @xVal )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","lLocked = Mutex Lock (pMtx)",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (xVal) to Editbox (Edit2) of Window (Win1)",60,64)
SS_ESASTEP("Circuits\Main\Main\Main","lOk = Mutex Unlock (pMtx)",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","End of Function",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define Function SubThread ( nIndex )",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Local x,nSum,cMsg",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 10 Step 1)",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","lLocked = Mutex Lock (pMtx)",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Thread Number : ' + str(nIndex ) + ' , Print Number : ' + str(x)) to Editbox (Edit1) of Window (Win1)",72,76)
SS_ESASTEP("Circuits\Main\Main\Main","lOk = Mutex Unlock (pMtx)",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","nSum = nIndex*50",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","cMsg = 'Thread Number : ' +str(nIndex) + '      Sum : ' + str(nSum)",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Mutex Notify ( Mutex : pMtx , xVal : cMsg )",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","End of Function",82,82)
Return
*-------------------------------------------------------------------*

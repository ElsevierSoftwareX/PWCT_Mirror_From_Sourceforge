*---------------------------------------------------------------------------*
* Time : 07:27:09    Date : 02/12/2014
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
WIDTH 1005 ;
HEIGHT 400 ;
ON INIT pStart()  ;
ICON "PWCTICON" ;
TITLE "Using Threads  " ;
MAIN ;
BACKCOLOR {236,233,216} 
@ 59 ,10 EDITBOX edit1;
WIDTH 470 ;
HEIGHT 250;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 319 ,877 BUTTONEX btn1;
CAPTION "Close ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK pCloseApp()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
@ 20 ,10 LABEL lbl1 ;
VALUE "Process " ;
WIDTH 70 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 20 ,500 LABEL lbl2 ;
VALUE "Output " ;
WIDTH 70 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 59 ,507 EDITBOX edit2;
WIDTH 470 ;
HEIGHT 250;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 320 ,10 BUTTONEX btn2;
CAPTION "Process ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK pStart()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW
ACTIVATE WINDOW win1
EndIF
procedure pStart()
pThID = hb_threadstart(1,"MainThread")
return
Function  MainThread ()
Local x,aThreads
Public pMtx
nStartTime := SECONDS()
win1.edit1.Value := ""
win1.edit2.Value := ""
pMtx = hb_mutexCreate()
aThreads := {}
FOR x = 1 TO 10 STEP 1
pThID = hb_threadstart(1,"SubThread",x )
AADD( aThreads , pThID)
Next
cResult := ""
FOR x = 1 TO 20 STEP 1
lSubscribed =  hb_mutexSubscribe(pMtx ,  , @cResult)
lLocked =  hb_mutexLock(pMtx)
if .not. empty(Win1.Edit2.VALUE)
Win1.Edit2.VALUE := Win1.Edit2.VALUE + CHR(13) + CHR(10) + cResult
else
Win1.Edit2.VALUE := cResult
endif
lOk = hb_mutexUnlock(pMtx)
Next
FOR x = 1 TO 10 STEP 1
lLocked =  hb_mutexLock(pMtx)
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + "Thread Join ... Number : "+str(x)
else
Win1.Edit1.VALUE := "Thread Join ... Number : "+str(x)
endif
lOk = hb_mutexUnlock(pMtx)
lOk = hb_threadJoin( aThreads[x] , @cResult )
lLocked =  hb_mutexLock(pMtx)
if .not. empty(Win1.Edit2.VALUE)
Win1.Edit2.VALUE := Win1.Edit2.VALUE + CHR(13) + CHR(10) + cResult
else
Win1.Edit2.VALUE := cResult
endif
lOk = hb_mutexUnlock(pMtx)
Next
nEndTime := SECONDS()
MyOut := MSGBOX(nEndTime-nStartTime,"Time (s) ")
Return
procedure pCloseApp()
win1.Release ( )
return
Function  SubThread ( nIndex )
Local x
hb_mutexNotify(pMtx,"Start of thread Number : " +str(nIndex))
FOR x = 1 TO 10 STEP 1
lLocked =  hb_mutexLock(pMtx)
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + "Thread Number " +str(nIndex) +" Number : " +str(x)
else
Win1.Edit1.VALUE := "Thread Number " +str(nIndex) +" Number : " +str(x)
endif
lOk = hb_mutexUnlock(pMtx)
Next
hb_mutexNotify(pMtx,"End of thread Number : " +str(nIndex))
Return "Function Output : End of thread -Number : " +str(nIndex)
Return

End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Using Threads  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action pStart",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Close '",18,21)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pCloseApp",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",23,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Process '",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",29,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Output '",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",36,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit2 )",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",42,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Process '",47,50)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pStart",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",52,55)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",56,57)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",58,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pStart - Event : INIT",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","pThID = Thread Start , Inherit ,  Function Name : 'MainThread'",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define Function MainThread",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Local x,aThreads",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Public pMtx",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","nStartTime := Get Time in seconds",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit1.Value = ''",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit2.Value = ''",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","pMtx = Mutex Create",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aThreads",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 10 Step 1)",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","pThID = Thread Start , Inherit , Function Name : 'SubThread' , Parameters : x",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Add item pThID To Array aThreads",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","cResult = ''",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 20 Step 1)",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","lSubscribed = Mutex Subscribe ( pMtx ,  , @cResult )",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","lLocked = Mutex Lock (pMtx)",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cResult) to Editbox (Edit2) of Window (Win1)",80,84)
SS_ESASTEP("Circuits\Main\Main\Main","lOk = Mutex Unlock (pMtx)",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 10 Step 1)",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","lLocked = Mutex Lock (pMtx)",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Thread Join ... Number : '+str(x)) to Editbox (Edit1) of Window (Win1)",89,93)
SS_ESASTEP("Circuits\Main\Main\Main","lOk = Mutex Unlock (pMtx)",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","lOk = Thread Join ( aThreads[x] , @cResult)",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","lLocked = Mutex Lock (pMtx)",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cResult) to Editbox (Edit2) of Window (Win1)",97,101)
SS_ESASTEP("Circuits\Main\Main\Main","lOk = Mutex Unlock (pMtx)",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","nEndTime := Get Time in seconds",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message nEndTime-nStartTime Title 'Time (s) ' Type: Message Box",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","End of Function",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pCloseApp ( Event : CLICK )",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release( )",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","Define Function SubThread ( nIndex )",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","Local x",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","Mutex Notify ( Mutex : pMtx , xVal : 'Start of thread Number : ' +str(nIndex) )",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 10 Step 1)",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","lLocked = Mutex Lock (pMtx)",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Thread Number ' +str(nIndex) +' Number : ' +str(x)) to Editbox (Edit1) of Window (Win1)",115,119)
SS_ESASTEP("Circuits\Main\Main\Main","lOk = Mutex Unlock (pMtx)",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","Mutex Notify ( Mutex : pMtx , xVal : 'End of thread Number : ' +str(nIndex) )",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","Return 'Function Output : End of thread -Number : ' +str(nIndex)",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","End of Function",124,124)
Return
*-------------------------------------------------------------------*

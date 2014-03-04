*---------------------------------------------------------------------------*
* Time : 09:26:20    Date : 03/02/2014
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2014.02.24
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
Public nThreadsCount
nThreadsCount := 5
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
@ 319 ,379 BUTTONEX btn3;
CAPTION "Performance ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK pPerformance()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
@ 21 ,277 LABEL lbl3 ;
VALUE "Threads Count : " ;
WIDTH 102 ;
HEIGHT 23 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 19 ,400 TEXTBOX textThread;
ON CHANGE pChange()  ;
HEIGHT 30 ;
WIDTH 80 ;
VALUE nThreadsCount ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
MAXLENGTH 3 ;
FONTCOLOR {0,0,0} ;
NUMERIC 

END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pStart()
nThreadsCount := win1.textThread.Value
IF nThreadsCount<1
nThreadsCount := 1
win1.textThread.Value := nThreadsCount
ENDIF
Public aTime[nThreadsCount]
pThID = hb_threadstart(1,"MainThread")
return
Function  MainThread ()
Local x,aThreads
Public pMtx,pMtx2
nStartTime := SECONDS()
win1.edit1.Value := ""
win1.edit2.Value := ""
pMtx = hb_mutexCreate()
pMtx2 = hb_mutexCreate()
aThreads := {}
FOR x = 1 TO nThreadsCount STEP 1
pThID = hb_threadstart(1,"SubThread",x )
AADD( aThreads , pThID)
Next
cResult := ""
FOR x = 1 TO nThreadsCount*2 STEP 1
lSubscribed =  hb_mutexSubscribe(pMtx ,  , @cResult)
DO printedit WITH cResult,pMtx2,"edit2"
Next
FOR x = 1 TO nThreadsCount STEP 1
DO printedit WITH "Thread Join ... Number : "+str(x),pMtx,"edit1"
lOk = hb_threadJoin( aThreads[x] , @cResult )
DO printedit WITH cResult,pMtx2,"edit2"
Next
nEndTime := SECONDS()
MyOut := MSGBOX(nEndTime-nStartTime,"Time (s) ")
Return
procedure pCloseApp()
win1.Release ( )
return
Function  SubThread ( nIndex )
Local x,nStartTime,nEndTime
nStartTime := SECONDS()
hb_mutexNotify(pMtx,"Start of thread Number : " +str(nIndex))
FOR x = 1 TO 10 STEP 1
DO printedit WITH "Thread Number " +str(nIndex) +" Number : " +str(x),pMtx,"edit1"
Next
hb_mutexNotify(pMtx,"End of thread Number : " +str(nIndex))
nEndTime := SECONDS()
aTime[nIndex] := nEndTime-nStartTime
Return "Function Output : End of thread -Number : " +str(nIndex)
Return
procedure pPerformance()
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 1020 ;
HEIGHT 465 ;
ON INIT pDraw()  ;
ICON "PWCTICON" ;
TITLE " Performance  " ;
CHILD ;
BACKCOLOR {255,255,255} 

END WINDOW

ACTIVATE WINDOW win2
EndIF

return
procedure pDraw()
aYValues := {}
FOR x = 1 TO nThreadsCount STEP 1
cX = STR ( x )
cX = ALLTRIM ( cX )
AADD( aYValues , "T"+cX)
Next
DRAW GRAPH IN WINDOW win2 ;
AT 50,50 ;
WIDTH 800 ;
HEIGHT 400 ;
TITLE "Performance" ;
TYPE BARS ;
SERIES {aTime} ;
YVALUES aYValues ;
DEPTH 5 ;
HVALUES 10 ;
SERIENAMES {"Threads Performance"} ;
COLORS {{0,0,255}} ;
3DVIEW  ;
SHOWXGRID ;
SHOWXVALUES ;
SHOWYVALUES ;
SHOWLEGENDS ;
SHOWDATAVALUES ;
NOBORDER 

return
procedure pChange()
IF win1.textThread.Value<1
win1.textThread.Value := 1
ENDIF
return
Proc printedit( cMsg,pMtx2,cEdit )
lLocked =  hb_mutexLock(pMtx2)
if .not. empty(win1.&(cEdit).VALUE)
win1.&(cEdit).VALUE := win1.&(cEdit).VALUE + CHR(13) + CHR(10) + cMsg
else
win1.&(cEdit).VALUE := cMsg
endif
lOk = hb_mutexUnlock(pMtx2)
Return Nil


End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Public nThreadsCount",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","nThreadsCount = 5",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Using Threads  '",3,7)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action pStart",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",9,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",15,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Close '",20,23)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pCloseApp",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",25,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Process '",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",31,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Output '",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",38,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit2 )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",44,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Process '",49,52)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pStart",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",54,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Performance '",58,61)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pPerformance",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",63,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Threads Count : '",67,68)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",69,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textThread  )",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action pChange",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",76,84)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",85,86)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",87,89)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pStart - Event : INIT",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","nThreadsCount = win1.textThread.Value",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nThreadsCount<1 )",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","nThreadsCount = 1",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textThread.Value = nThreadsCount",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","Public aTime[nThreadsCount]",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","pThID = Thread Start , Inherit ,  Function Name : 'MainThread'",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Define Function MainThread",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Local x,aThreads",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","Public pMtx,pMtx2",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","nStartTime := Get Time in seconds",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit1.Value = ''",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit2.Value = ''",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","pMtx = Mutex Create",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","pMtx2 = Mutex Create",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aThreads",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nThreadsCount Step 1)",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","pThID = Thread Start , Inherit , Function Name : 'SubThread' , Parameters : x",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","Add item pThID To Array aThreads",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","cResult = ''",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nThreadsCount*2 Step 1)",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","lSubscribed = Mutex Subscribe ( pMtx ,  , @cResult )",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure printedit Parameters cResult,pMtx2,'edit2'",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nThreadsCount Step 1)",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure printedit Parameters 'Thread Join ... Number : '+str(x),pMtx,'edit1'",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","lOk = Thread Join ( aThreads[x] , @cResult)",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure printedit Parameters cResult,pMtx2,'edit2'",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","nEndTime := Get Time in seconds",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message nEndTime-nStartTime Title 'Time (s) ' Type: Message Box",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","End of Function",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pCloseApp ( Event : CLICK )",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release( )",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","Define Function SubThread ( nIndex )",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","Local x,nStartTime,nEndTime",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","nStartTime := Get Time in seconds",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","Mutex Notify ( Mutex : pMtx , xVal : 'Start of thread Number : ' +str(nIndex) )",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 10 Step 1)",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure printedit Parameters 'Thread Number ' +str(nIndex) +' Number : ' +str(x),pMtx,'edit1'",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","Mutex Notify ( Mutex : pMtx , xVal : 'End of thread Number : ' +str(nIndex) )",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","nEndTime := Get Time in seconds",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","aTime[nIndex] = nEndTime-nStartTime",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","Return 'Function Output : End of thread -Number : ' +str(nIndex)",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","End of Function",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pPerformance ( Event : CLICK )",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : ' Performance  '",141,145)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action pDraw",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",147,151)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",152,153)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",154,156)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pDraw - Event : INIT",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aYValues",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nThreadsCount Step 1)",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","cX = CONVERT x TO STRING",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","cX = All Trim cX",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'T'+cX To Array aYValues",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Graph (Title : 'Performance')",165,184)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pChange - Event : CHANGE",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( win1.textThread.Value<1 )",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textThread.Value = 1",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure printedit( cMsg,pMtx2,cEdit )",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","lLocked = Mutex Lock (pMtx2)",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cMsg) to Editbox (&(cEdit)) of Window (win1)",193,197)
SS_ESASTEP("Circuits\Main\Main\Main","lOk = Mutex Unlock (pMtx2)",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",199,199)
Return
*-------------------------------------------------------------------*

*---------------------------------------------------------------------------*
* Time : 17:52:03    Date : 11/17/2012
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2012]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
*---------------------------------------------------------------------------*
* Compilers                   : Borland C/C++ & Harbour
* GUI Framework               : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
#include "xhb.ch"
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


Resistance R_30_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_30_18smart1() code
MainWindowObj = MainWindow()
myout = MainWindowObj:ShowWindow()
Class Counter
Data nNumber init 0
Data cWindowName init "CounterWindow"
Method Increment
Method ShowWindow
Method btnIncrement
Method UserI2Class
Method Class2UserI
EndClass
Method Increment Class Counter
self:nNumber = self:nNumber + 1
Return 0
Method ShowWindow Class Counter
if !iswindowdefined( &(self:cWindowName) )
DEFINE WINDOW &(self:cWindowName) ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 115 ;
ICON "PWCTICON" ;
TITLE "Counter  " ;
CHILD ;
BACKCOLOR {236,233,216}

@ 13 ,41 LABEL lbl1 ;
VALUE "Number " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 13 ,113 TEXTBOX text1;
ON CHANGE self:UserI2Class()  ;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC

@ 13 ,334 BUTTONEX btn1;
CAPTION "Increment ";
ON CLICK self:btnIncrement()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 12 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW &(self:cWindowName)
EndIF

Return 0
Method btnIncrement Class Counter
myout = self:Increment()
myout = self:Class2UserI()
Return 0
Method UserI2Class Class Counter
self:nNumber := &(self:cWindowName).text1.Value
Return 0
Method Class2UserI Class Counter
&(self:cWindowName).text1.Value := self:nNumber
Return 0
Class MainWindow
Data nWindows init 0
Method ShowWindow
Method CloseWindow
Method Counter
Method NewWindow
Method Counter2
EndClass
Method ShowWindow Class MainWindow
if !iswindowdefined( winMain )
DEFINE WINDOW winMain ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Counter Appliction  " ;
MAIN ;
BACKCOLOR {236,233,216}

DEFINE MAIN MENU
POPUP "File "
MENUITEM "Counter " Action self:Counter
MENUITEM "Counter2 " Action self:Counter2
MENUITEM "Exit " Action self:CloseWindow
END POPUP
END MENU
END WINDOW

winMain.Maximize ( )
ACTIVATE WINDOW winMain
EndIF

Return 0
Method CloseWindow Class MainWindow
winMain.Release ( )
Return 0
Method Counter Class MainWindow
CounterObj = Counter()
myout = self:NewWindow("CounterWindow",@CounterObj)
myout = CounterObj:ShowWindow()
Return 0
Method NewWindow(cWindow,wObject) Class MainWindow
self:nWindows = self:nWindows + 1
cNum = STR ( self:nWindows )
cNum = ALLTRIM ( cNum )
wObject:cWindowName := cWindow+cNum
Return 0
Method Counter2 Class MainWindow
CounterObj = Counter2()
myout = self:NewWindow("Counter2Window",@CounterObj)
myout = CounterObj:ShowWindow()
Return 0
class Counter2 From Counter
Method Increment
EndClass
Method Increment Class Counter2
self:nNumber = self:nNumber + 10
Return 0



End Of Resistance

INIT PROCEDURE Init_30
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","PWCT-Code Generator: Replace String (MyWindowName) with (&(self:cWindowName))",1,2)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object MainWindowObj of Class MainWindow",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","myout = MainWindowObj.ShowWindow()",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class Counter",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Data nNumber Init Value 0",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Data cWindowName Init Value 'CounterWindow'",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Method Increment",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowWindow",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Method btnIncrement",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Method UserI2Class",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Method Class2UserI",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Increment Class Counter",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","self:nNumber = self:nNumber + 1",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowWindow Class Counter",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( MyWindowName ) , Title : 'Counter  '",18,22)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",23,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Number '",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",30,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:UserI2Class",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",37,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Increment '",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:btnIncrement",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",46,48)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",49,50)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",51,53)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method btnIncrement Class Counter",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Increment()",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.Class2UserI()",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method UserI2Class Class Counter",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","self:nNumber = MyWindowName.text1.Value",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Class2UserI Class Counter",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","MyWindowName.text1.Value := self:nNumber",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class MainWindow",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Data nWindows Init Value 0",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowWindow",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Method CloseWindow",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Method Counter",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Method NewWindow",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Method Counter2",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowWindow Class MainWindow",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winMain ) , Title : 'Counter Appliction  '",74,78)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",79,83)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File '",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Counter ' )",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Counter2 ' )",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit ' )",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",91,92)
SS_ESASTEP("Circuits\Main\Main\Main","winMain.Maximize ( )",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",94,96)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method CloseWindow Class MainWindow",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","winMain.Release ( )",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Counter Class MainWindow",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CounterObj of Class Counter",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.NewWindow('CounterWindow',@CounterObj)",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","myout = CounterObj.ShowWindow()",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method NewWindow(cWindow,wObject) Class MainWindow",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","self:nWindows = self:nWindows + 1",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","cNum = CONVERT self:nWindows TO STRING",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","cNum = All Trim cNum",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","wObject.cWindowName = cWindow+cNum",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Counter2 Class MainWindow",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CounterObj of Class Counter2",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.NewWindow('Counter2Window',@CounterObj)",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","myout = CounterObj.ShowWindow()",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class Counter2 From Counter",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","Method Increment",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Increment Class Counter2",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","self:nNumber = self:nNumber + 10",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",122,122)
Return
*-------------------------------------------------------------------*

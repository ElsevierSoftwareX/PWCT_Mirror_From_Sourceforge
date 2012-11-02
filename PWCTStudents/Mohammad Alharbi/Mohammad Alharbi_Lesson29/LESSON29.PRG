*---------------------------------------------------------------------------*
* Time : 13:15:04    Date : 10/27/2012
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


Resistance R_LESSON29_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON29_18smart1() code
MainWindowobj = MainWindow()
Myout = MainWindowobj:ShowWindow()
Class Counter
Data nNumber init 0
Data cWindowName init "CounterWindow"
Method Increment
Method ShowWindow
Method Button
Method Decrement
Method dButton
Method Class2UserInterface
Method UserInterface2Class
EndClass
Method Increment Class Counter
Self:nNumber = Self:nNumber + 1
Return 0
Method ShowWindow Class Counter
if !iswindowdefined( &(Self:cWindowName) )
DEFINE WINDOW &(Self:cWindowName) ;
AT 10 ,10 ;
WIDTH 527 ;
HEIGHT 153 ;
ICON "PWCTICON" ;
TITLE "Counter  " ;
CHILD ;
BACKCOLOR {236,233,216}

@ 16 ,14 LABEL lbl1 ;
VALUE "Number " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 14 ,92 TEXTBOX text1;
ON CHANGE Self:Class2UserInterface()  ;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC

@ 13 ,304 BUTTONEX btn1;
CAPTION "Increment ";
FONTCOLOR {0,128,0};
BACKCOLOR {236,233,216};
ON CLICK Self:Button()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 13 ,409 BUTTONEX btn2;
CAPTION "Decrement ";
FONTCOLOR {255,0,0};
BACKCOLOR {236,233,216};
ON CLICK Self:dButton()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 76 ,152 LABEL lbl3 ;
VALUE "‰Â‰∆ﬂ„ »‰Ã«Õﬂ„ ›Ì ⁄„·Ì… «· ÿ»Ìﬁ  " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial Narrow" SIZE 12  ;
BOLD ;
ITALIC ;
UNDERLINE ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,160}
END WINDOW

ACTIVATE WINDOW &(Self:cWindowName)
EndIF

Return 0
Method Button Class Counter
Myout = Self:Increment()
&(Self:cWindowName).text1.Value := Self:nNumber
Return 0
Method Decrement Class Counter
Self:nNumber := Self:nNumber-1
Return 0
Method dButton Class Counter
Myout = Self:Decrement()
&(Self:cWindowName).text1.Value := Self:nNumber
Return 0
Method Class2UserInterface Class Counter
Self:nNumber := &(Self:cWindowName).text1.Value
Return 0
Method UserInterface2Class Class Counter
Self:nNumber := &(Self:cWindowName).text1.Value
Myout = Self:Increment()
Return 0
Class MainWindow
Data nWindows init 0
Method ShowWindow
Method Close
Method Counter
Method NewWindow
EndClass
Method ShowWindow Class MainWindow
if !iswindowdefined( mainwin )
DEFINE WINDOW mainwin ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "  " ;
MAIN ;
BACKCOLOR {236,233,216}

DEFINE MAIN MENU
POPUP "File "
MENUITEM "Counter " Action self:Counter()
MENUITEM "Exit " Action self:Close
END POPUP
END MENU
@ 10 ,10 LABEL lbl2 ;
VALUE "" ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
END WINDOW

mainwin.Maximize ( )
ACTIVATE WINDOW mainwin
EndIF

Return 0
Method Close Class MainWindow
mainwin.Release ( )
Return 0
Method Counter Class MainWindow
CounterObj = Counter()
Myout = self:NewWindow("CounterWindow",@CounterObj)
Myout = CounterObj:ShowWindow()
Return 0
Method NewWindow(cWindow,wObject) Class MainWindow
self:nWindows = self:nWindows + 1
cNum = STR ( self:nWindows )
cNum = ALLTRIM ( cNum )
wObject:cWindowName := cWindow+cNum
Return 0



End Of Resistance

INIT PROCEDURE Init_LESSON29
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","PWCT-Code Generator: Replace String (MyWindowName) with (&(Self:cWindowName))",1,2)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object MainWindowobj of Class MainWindow",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Myout = MainWindowobj.ShowWindow()",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class Counter",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Data nNumber Init Value 0",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Data cWindowName Init Value 'CounterWindow'",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Method Increment",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowWindow",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Method Button",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Method Decrement",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Method dButton",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Method Class2UserInterface",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Method UserInterface2Class",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Increment Class Counter",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Self:nNumber = Self:nNumber + 1",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowWindow Class Counter",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( MyWindowName ) , Title : 'Counter  '",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",25,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Number '",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",32,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action Self:Class2UserInterface",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",39,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Increment '",46,49)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:Button",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",51,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Decrement '",54,57)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:dButton",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",59,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '‰Â‰∆ﬂ„ »‰Ã«Õﬂ„ ›Ì ⁄„·Ì… «· ÿ»Ìﬁ  '",62,63)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",64,71)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",72,73)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",74,76)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Button Class Counter",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Myout = Self.Increment()",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","MyWindowName.text1.Value := Self:nNumber",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Decrement Class Counter",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","Self:nNumber = Self:nNumber-1",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method dButton Class Counter",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","Myout = Self.Decrement()",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","MyWindowName.text1.Value := Self:nNumber",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Class2UserInterface Class Counter",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","Self:nNumber = MyWindowName.text1.Value",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method UserInterface2Class Class Counter",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","Self:nNumber = MyWindowName.text1.Value",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","Myout = Self.Increment()",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class MainWindow",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Data nWindows Init Value 0",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowWindow",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Method Close",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Method Counter",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","Method NewWindow",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowWindow Class MainWindow",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( mainwin ) , Title : '  '",104,108)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",109,113)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File '",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Counter ' )",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit ' )",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : ''",120,121)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",122,126)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",127,128)
SS_ESASTEP("Circuits\Main\Main\Main","mainwin.Maximize ( )",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",130,132)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Close Class MainWindow",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","mainwin.Release ( )",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Counter Class MainWindow",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CounterObj of Class Counter",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","Myout = self.NewWindow('CounterWindow',@CounterObj)",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","Myout = CounterObj.ShowWindow()",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method NewWindow(cWindow,wObject) Class MainWindow",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","self:nWindows = self:nWindows + 1",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","cNum = CONVERT self:nWindows TO STRING",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","cNum = All Trim cNum",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","wObject.cWindowName = cWindow+cNum",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",147,147)
Return
*-------------------------------------------------------------------*

*---------------------------------------------------------------------------*
* Time : 16:09:32    Date : 01/14/2012
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2011]  
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


Resistance R_25_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_25_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "«·œ—” «·Œ«„” Ê«·⁄‘—Ê‰" ;
MAIN ;
BACKCOLOR {236,233,216} 

DEFINE MAIN MENU
POPUP "File"
MENUITEM "Welcom" Action callwelcome()
MENUITEM "About" Action callabout()
MENUITEM "Close" Action close()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "By PWCT Designed by Ahmed Attya"

DATE

CLOCK

KEYBOARD

END STATUSBAR

END WINDOW

win1.Maximize ( )
ACTIVATE WINDOW win1
EndIF

Proc close
win1.Release ( )
Return Nil
Proc callwelcome
myobj = windowwelcome()
myout = myobj:showwindow()
Return Nil
Proc callabout
if !iswindowdefined( win3 )
DEFINE WINDOW win3 ;
AT 10 ,10 ;
WIDTH 333 ;
HEIGHT 359 ;
ICON "PWCTICON" ;
TITLE "About" ;
CHILD ;
BACKCOLOR {236,233,216} 

@ 223,93 HYPERLINK Hyper1;
VALUE "PWCT Website" ;
ADDRESS "http://doublesvsoop.sourceforge.net";
WIDTH 147 ;
HEIGHT 45 ;
FONT "Arial" ;
SIZE 14 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255} 

@ 48,50 HYPERLINK Hyper2;
VALUE "PWCT FaceBook Group" ;
ADDRESS "https://www.facebook.com/groups/doublesvsoop/";
WIDTH 233 ;
HEIGHT 48 ;
FONT "Arial" ;
SIZE 14 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255} 

@ 136,53 HYPERLINK Hyper3;
VALUE "PWCT On Sourceforge" ;
ADDRESS "http://sourceforge.net/projects/doublesvsoop/";
WIDTH 228 ;
HEIGHT 46 ;
FONT "Arial" ;
SIZE 14 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255} 

DEFINE STATUSBAR 

STATUSITEM "By PWCT Designed by Ahmed Attya"

END STATUSBAR

END WINDOW

win3.Center ( )
ACTIVATE WINDOW win3
EndIF

Return Nil
Class windowwelcome
Method showwindow
Method closewindow
Method saywelcome
EndClass
Method showwindow Class windowwelcome
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 293 ;
ICON "PWCTICON" ;
TITLE "Welcome" ;
CHILD ;
TOPMOST ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 89 ,113 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 63 ;
HEIGHT 31 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 87 ,176 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 153 ,82 BUTTONEX btn1;
CAPTION "Say Welcome";
ON CLICK self:saywelcome()  ;
WIDTH 173 HEIGHT 37 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 152 ,262 BUTTONEX btn2;
CAPTION "Close";
ON CLICK self:closewindow()  ;
WIDTH 141 HEIGHT 37 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
DEFINE STATUSBAR 

STATUSITEM "By PWCT Designed by Ahmed Attya"

END STATUSBAR

END WINDOW

win2.Center ( )
ACTIVATE WINDOW win2
EndIF

Return 0
Method closewindow Class windowwelcome
win2.Release ( )
Return 0
Method saywelcome Class windowwelcome
myname := win2.text1.Value
myout := MSGBOX("WelCome" +" " +  myname,"Welcome")
Return 0


End Of Resistance

INIT PROCEDURE Init_25
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«·œ—” «·Œ«„” Ê«·⁄‘—Ê‰'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Welcom' )",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About' )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close' )",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'By PWCT Designed by Ahmed Attya' )",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Date",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",33,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure callwelcome",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object myobj of Class windowwelcome",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","myout = myobj.showwindow()",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure callabout",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win3 ) , Title : 'About'",44,48)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",49,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define HyperLink ( Hyper1 )",54,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define HyperLink ( Hyper2 )",64,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define HyperLink ( Hyper3 )",74,83)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",84,85)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'By PWCT Designed by Ahmed Attya' )",86,87)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",88,89)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",90,91)
SS_ESASTEP("Circuits\Main\Main\Main","win3.Center ( )",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",93,95)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class windowwelcome",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","Method showwindow",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Method closewindow",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Method saywelcome",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showwindow Class windowwelcome",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Welcome'",103,107)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",108,116)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name'",117,118)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",119,123)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",125,129)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Say Welcome'",130,131)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:saywelcome()",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",133,135)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Close'",136,137)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:closewindow()",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",139,141)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",142,143)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'By PWCT Designed by Ahmed Attya' )",144,145)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",146,147)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",148,149)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Center ( )",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",151,153)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method closewindow Class windowwelcome",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method saywelcome Class windowwelcome",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","myname = win2.text1.Value",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'WelCome' +' ' +  myname Title 'Welcome' Type: Message Box",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",161,161)
Return
*-------------------------------------------------------------------*

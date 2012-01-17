*---------------------------------------------------------------------------*
* Time : 21:46:10    Date : 01/16/2012
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
 * (Noun) *
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


Resistance R_A_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_A_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 392 ;
HEIGHT 339 ;
ICON "PWCTICON" ;
TITLE "System" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

DEFINE MAIN MENU
POPUP "File"
MENUITEM "Close System" Action closesystem()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Ready"

KEYBOARD

CLOCK

END STATUSBAR

@ 21 ,267 LABEL lbl1 ;
VALUE "ÇáÑÞã " ;
WIDTH 41 ;
HEIGHT 32 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 15 ,57 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 73 ,263 BUTTONEX btn1;
CAPTION "ÇÖÇÝÉ ";
ON CLICK myadd()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 110 ,263 BUTTONEX btn2;
CAPTION "ÇßÈÑ ÑÞã ";
ON CLICK mymax()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 54 ,57 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc closesystem
win1.Release ( )
Return Nil
procedure myadd()
mytxt := win1.text1.Value
mytxt = STR ( mytxt )
win1.list1.AddItem ( mytxt )
return
procedure mymax()
mycount := win1.list1.ItemCount
IF mycount =0
MyOut := MSGBOX("ÇäÊ áã ÊÏÎá ÇÑÞÇã ","ÇÍäÇ åäåÒÑ ãä ÇæáåÇ  ")
Return 0
ENDIF
firstnum := win1.list1.item(1)
firstnum = VAL ( firstnum )
IF mycount=1
MyOut := MSGBOX(firstnum," ÇßÈÑ ÑÞã ")
ENDIF
FOR x = 2 TO mycount STEP 1
myitem := win1.list1.item(x)
myitem = VAL ( myitem )
IF myitem>firstnum
firstnum := myitem
ENDIF
Next
firstnum = STR ( firstnum )
MyOut := MSGBOX(firstnum,"ÇßÈÑ ÑÞã ")
return


End Of Resistance

INIT PROCEDURE Init_A
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'System'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close System' )",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'ÇáÑÞã '",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",30,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",36,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'ÇÖÇÝÉ '",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myadd",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",45,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'ÇßÈÑ ÑÞã '",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mymax",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",51,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",55,59)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",60,61)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",62,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myadd ( Event : CLICK )",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","mytxt = win1.text1.Value",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","mytxt = CONVERT mytxt TO STRING",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( mytxt )",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mymax ( Event : CLICK )",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = win1.list1.ItemCount",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount =0 )",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'ÇäÊ áã ÊÏÎá ÇÑÞÇã ' Title 'ÇÍäÇ åäåÒÑ ãä ÇæáåÇ  ' Type: Message Box",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","firstnum = win1.list1.item(1)",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","firstnum = CONVERT firstnum TO Numeric",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount=1 )",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message firstnum Title ' ÇßÈÑ ÑÞã ' Type: Message Box",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 2 To mycount Step 1)",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","myitem = win1.list1.item(x)",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","myitem = CONVERT myitem TO Numeric",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myitem>firstnum )",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","firstnum = myitem",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","firstnum = CONVERT firstnum TO STRING",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message firstnum Title 'ÇßÈÑ ÑÞã ' Type: Message Box",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",93,93)
Return
*-------------------------------------------------------------------*

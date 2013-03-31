*---------------------------------------------------------------------------*
* Time : 08:55:06    Date : 03/30/2013
*---------------------------------------------------------------------------*
* Programming without coding technology 1.9 (Art) [2006-2013]  
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


Resistance R_MAIN_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MAIN_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON INIT pStart()  ;
ICON "PWCTICON" ;
TITLE "New Listbox Sample ( select Item Font Size, Color & Backcolor ) " ;
MAIN ;
BACKCOLOR {236,233,216} 

DEFINE STATUSBAR 

STATUSITEM "Developer : Mahmoud Fayed <msfclipper@yahoo.com>"

END STATUSBAR

END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pStart()
nButtonsCount := 10
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 50 ,100 ;
WIDTH 200 ;
HEIGHT 200 ;
VIRTUAL HEIGHT nButtonsCount*30 ;
ICON "PWCTICON" ;
TITLE "  " ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
NOCAPTION ;
BACKCOLOR {255,255,255} 

nWinWidth := win2.Width
FOR x = 1 TO nButtonsCount STEP 1
contname := "btn"
x2 = STR ( x )
x2 = ALLTRIM ( x2 )
contname := contname + x2
nFontSize := MIN(9+x,20)
@ (x*30)-30 ,1 BUTTONEX &contname;
CAPTION "Item No " + x2;
FONTCOLOR {x*100,x*50,x*10};
BACKCOLOR {x*20,x*30,x*40};
ON CLICK SelectItem()  ;
WIDTH nWinWidth-20 HEIGHT 30 ;
FONT "arial" SIZE nFontSize ;
FLAT ;
NOXPSTYLE ;
TOOLTIP ""
Next
END WINDOW

myout = CALLDLL32("SetParent","user32.dll",GetFormHandle("win2"),GetFormHandle("win1"))
ACTIVATE WINDOW win2
EndIF

return
Proc SelectItem
cMsg := win2.FocusedControl
cMsg = STRTRAN(cMsg,"btn","")
MyOut := MSGBOX("Item No : " + cMsg,"Selected Item ")
Return Nil


End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'New Listbox Sample ( select Item Font Size, Color & Backcolor ) '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action pStart",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",12,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Developer : Mahmoud Fayed <msfclipper@yahoo.com>' )",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",16,17)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pStart - Event : INIT",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","nButtonsCount = 10",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : '  '",25,29)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",30,39)
SS_ESASTEP("Circuits\Main\Main\Main","nWinWidth = win2.Width",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nButtonsCount Step 1)",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","contname = 'btn'",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = CONVERT x TO STRING",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = All Trim x2",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","contname = contname + x2",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","nFontSize = The Smaller (MIN) of 9+x , 20",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( &contname ) , Caption : 'Item No ' + x2",47,50)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action SelectItem",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",52,56)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",58,59)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'user32.dll' , Function 'SetParent' , Parameters GetFormHandle('win2'),GetFormHandl",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",61,63)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure SelectItem",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","cMsg = win2.FocusedControl",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","cMsg = Sub String 'btn' FROM cMsg TRANSFORM TO ''",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Item No : ' + cMsg Title 'Selected Item ' Type: Message Box",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",69,69)
Return
*-------------------------------------------------------------------*

*---------------------------------------------------------------------------*
* Time : 21:30:35    Date : 01/15/2012
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


Resistance R_PHONE_APPLICATION_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PHONE_APPLICATION_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON INIT opendb()  ;
ICON "PWCTICON" ;
TITLE "System" ;
MAIN ;
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

TRANS_TEMP = "tel"
@ 14 ,4 ;
BROWSE browse1 ;
WIDTH 369 ;
HEIGHT 309 ;
HEADERS {"ÇáÊáíÝæä","ÇáÚäæÇä","ÇáÇÓã"} ;
WIDTHS {100,100,100} ;
WORKAREA &TRANS_TEMP ;
FIELDS {"tel->phone","tel->address","tel->name"} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
Edit InPlace ;
IMAGE "" 

@ 28 ,378 BUTTONEX btn1;
CAPTION "ÇÖÇÝÉ";
ON CLICK myadd()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 70 ,378 BUTTONEX btn2;
CAPTION "ÍÐÝ";
ON CLICK mydel()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc closesystem
win1.Release ( )
Return Nil
procedure opendb()
CheckFile := File("tel.dbf")
IF checkfile=false
CREATE TempStru
APPEND BLANK
REPLACE Field_name WITH "name",;
Field_type WITH "c",;
Field_len WITH 50,;
Field_dec WITH 0
APPEND BLANK
REPLACE Field_name WITH "address",;
Field_type WITH "c",;
Field_len WITH 50,;
Field_dec WITH 0
APPEND BLANK
REPLACE Field_name WITH "phone",;
Field_type WITH "c",;
Field_len WITH 20,;
Field_dec WITH 0
CLOSE
CREATE "tel" FROM TempStru
ENDIF
Use "tel"
return
procedure myadd()
SELECT "tel"
Append Blank
myrec := Recno()
win1.browse1.Value := myrec
win1.browse1.SetFocus ( )
return
procedure mydel()
SELECT "tel"
myrec := win1.browse1.Value
Goto myrec
delete
Pack
myrec := myrec-1
win1.browse1.Value := myrec
win1.browse1.Refresh ( )
return


End Of Resistance

INIT PROCEDURE Init_PHONE_APPLICATION
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'System'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action opendb",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close System' )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define Browse ( browse1 )",27,38)
SS_ESASTEP("Circuits\Main\Main\Main","Browse Properties",39,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'ÇÖÇÝÉ'",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myadd",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",45,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'ÍÐÝ'",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mydel",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",51,53)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",54,55)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",56,58)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",59,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure opendb - Event : INIT",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File 'tel.dbf'",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( checkfile=false )",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define Table 'tel'",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Field : 'name' , Type  : 'c' , Length  : 50",69,73)
SS_ESASTEP("Circuits\Main\Main\Main","Field : 'address' , Type  : 'c' , Length  : 50",74,78)
SS_ESASTEP("Circuits\Main\Main\Main","Field : 'phone' , Type  : 'c' , Length  : 20",79,83)
SS_ESASTEP("Circuits\Main\Main\Main","Create Table",84,85)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Open Table 'tel'",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myadd ( Event : CLICK )",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","SELECT AREA 'tel'",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Add New Record",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = Get Record Number",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Value := myrec",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.SetFocus ( )",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mydel ( Event : CLICK )",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","SELECT AREA 'tel'",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = win1.browse1.Value",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Goto Record Number myrec",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Delete Record (Mark for deletion)",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","Pack",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = myrec-1",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Value := myrec",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Refresh ( )",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",105,105)
Return
*-------------------------------------------------------------------*

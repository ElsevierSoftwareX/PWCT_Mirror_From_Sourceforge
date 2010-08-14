#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 19:11:13    Date : 01/03/2009
*---------------------------------------------------------------------------*
* Programming without coding technology 1.1 (Magic)   
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
Public True,False 
True = .T. 
False = .F. 
New Server Server1 Type Slave Server Eigen Value 000
 Details :
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance RRXXHY1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance RRXXHY1() code
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON INIT opendb()  ;
ICON "PWCTICON" ;
TITLE "„›ﬂ—… «·Â« ›" ;
MAIN ;
BACKCOLOR {236,233,216} 

TRANS_TEMP = "tel"
@ 50 ,78 ;
BROWSE browse1 ;
WIDTH 334 ;
HEIGHT 204 ;
HEADERS {"«· ·Ì›Ê‰","«·⁄‰Ê«‰","«·«”„"} ;
WIDTHS {100,100,100} ;
WORKAREA &TRANS_TEMP ;
FIELDS {"tel->phone","tel->address","tel->name"} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
Edit InPlace ;
IMAGE "" 

@ 277 ,212 BUTTONEX btnadd;
CAPTION "≈÷«›…";
ON CLICK myadd()  ;
WIDTH 200 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 279 ,79 BUTTONEX btndel;
CAPTION "Õ–›";
ON CLICK mydel()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1

Proc opendb
CheckFile := File("tel.dbf")
IF checkfile = false
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
Use tel
Return Nil
Proc myadd
SELECT AREA tel
Append Blank
myrec := Recno()
win1.browse1.Value := myrec
win1.browse1.SetFocus ( )
Return Nil
Proc mydel
SELECT AREA tel
myrec := win1.browse1.Value
Goto myrec
delete
Pack
myrec := myrec - 1
win1.browse1.Value := myrec
win1.browse1.Refresh ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_PHONE
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",1,4)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Browse ( browse1 )",11,22)
SS_ESASTEP("Circuits\Main\Main\Main","Browse Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Browse Properties",23,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnadd )",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",29,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btndel )",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",35,37)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",40,42)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Procedures",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure opendb",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File 'tel.dbf'",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( checkfile = false )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Table 'tel'",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Table Fields",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Field 'name'",49,53)
SS_ESASTEP("Circuits\Main\Main\Main","Field 'address'",54,58)
SS_ESASTEP("Circuits\Main\Main\Main","Field 'phone'",59,63)
SS_ESASTEP("Circuits\Main\Main\Main","Create Table",64,65)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Open Table tel",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myadd",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Select Area tel",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Add New Record",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = Get Record Number",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Value := myrec",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.SetFocus ( )",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mydel",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Select Area tel",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = win1.browse1.Value",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Goto Record Number myrec",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Delete Record (Mark for deletion)",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Pack",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = myrec - 1",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Value := myrec",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Refresh ( )",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",85,85)
Return
*-------------------------------------------------------------------*

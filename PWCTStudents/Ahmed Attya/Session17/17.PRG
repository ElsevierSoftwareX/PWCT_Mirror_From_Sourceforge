*---------------------------------------------------------------------------*
* Time : 09:49:08    Date : 01/04/2012
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


Resistance R_17_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_17_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON INIT opendb()  ;
ICON "PWCTICON" ;
TITLE "«·œ—” «·”«»⁄ ⁄‘—" ;
MAIN ;
BACKCOLOR {236,233,216} 

TRANS_TEMP = "tel"
@ 21 ,57 ;
BROWSE browse1 ;
WIDTH 380 ;
HEIGHT 218 ;
HEADERS { "«· ·Ì›Ê‰" , "«·⁄‰Ê«‰" , " «·«”„"} ;
WIDTHS {100,100,100} ;
WORKAREA &TRANS_TEMP ;
FIELDS {"tel->phone","tel->address","tel->name"} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
Edit InPlace ;
IMAGE "" 

@ 250 ,337 BUTTONEX btnadd;
CAPTION "≈÷«›Â";
FONTCOLOR {0,0,0};
ON CLICK myadd()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 254 ,57 BUTTONEX btndel;
CAPTION "Õ–›";
FONTCOLOR {0,0,0};
ON CLICK mydel()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 295 ,195 BUTTONEX btn2;
CAPTION "Œ—ÊÃ";
FONTCOLOR {255,0,0};
ON CLICK myexit()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
DEFINE STATUSBAR 

STATUSITEM "Designed by Ahmed Attya"

DATE

CLOCK

END STATUSBAR

END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc opendb
CheckFile := File("tel.dbf")
IF checkfile =  false
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
SELECT tel
Append Blank
myrec := Recno()
win1.browse1.Value := myrec
win1.browse1.SetFocus ( )
Return Nil
Proc mydel
SELECT tel
myrec := win1.browse1.Value
Goto myrec
delete
Pack
myrec := myrec - 1
win1.browse1.Value := myrec
win1.browse1.Refresh ( )
Return Nil
Proc myexit
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_17
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«·œ—” «·”«»⁄ ⁄‘—'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action opendb()",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define Browse ( browse1 )",12,23)
SS_ESASTEP("Circuits\Main\Main\Main","Browse Properties",24,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnadd ) , Caption : '≈÷«›Â'",27,29)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myadd()",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",31,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btndel ) , Caption : 'Õ–›'",34,36)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mydel()",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",38,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Œ—ÊÃ'",41,43)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myexit()",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",45,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Designed by Ahmed Attya' )",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Date",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",54,55)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",56,57)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",58,59)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'win1'",60,62)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",63,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure opendb",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File 'tel.dbf'",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( checkfile =  false )",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define Table 'tel'",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Field : 'name' , Type  : 'c' , Length  : 50",70,74)
SS_ESASTEP("Circuits\Main\Main\Main","Field : 'address' , Type  : 'c' , Length  : 50",75,79)
SS_ESASTEP("Circuits\Main\Main\Main","Field : 'phone' , Type  : 'c' , Length  : 20",80,84)
SS_ESASTEP("Circuits\Main\Main\Main","Create Table",85,86)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","Open Table tel",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myadd",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","SELECT AREA tel",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","Add New Record",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = Get Record Number",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Value := myrec",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.SetFocus ( )",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mydel",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","SELECT AREA tel",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = win1.browse1.Value",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Goto Record Number myrec",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","Delete Record (Mark for deletion)",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Pack",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = myrec - 1",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Value := myrec",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Refresh ( )",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myexit",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",109,109)
Return
*-------------------------------------------------------------------*

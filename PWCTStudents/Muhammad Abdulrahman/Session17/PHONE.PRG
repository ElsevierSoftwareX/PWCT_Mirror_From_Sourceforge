*---------------------------------------------------------------------------*
* Time : 14:58:08    Date : 01/25/2012
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


Resistance R_PHONE_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PHONE_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 685 ;
HEIGHT 424 ;
ON INIT opendb()  ;
ICON "PWCTICON" ;
TITLE "„›ﬂ—… «·Â« ›" ;
MAIN ;
NOSIZE ;
BACKCOLOR {64,128,128} 

TRANS_TEMP = "tel"
@ 19 ,235 ;
BROWSE browse1 ;
WIDTH 397 ;
HEIGHT 295 ;
HEADERS {"«· ·Ì›Ê‰","«·⁄‰Ê«‰","«·«”„"} ;
WIDTHS {100,100,100} ;
WORKAREA &TRANS_TEMP ;
FIELDS {"tel->phone","tel->address","tel->name"} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
Edit InPlace ;
IMAGE "" 

@ 19 ,24 BUTTONEX btnadd;
CAPTION "≈÷«›…";
ON CLICK myadd()  ;
WIDTH 180 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 73 ,24 BUTTONEX btndel;
CAPTION "Õ–›";
ON CLICK mydel()  ;
WIDTH 180 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 133 ,24 BUTTONEX btnexit;
CAPTION "Œ—ÊÃ";
ON CLICK myexit()  ;
WIDTH 180 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 168 ,63 LABEL lbl1 ;
VALUE "PWCT" ;
WIDTH 108 ;
HEIGHT 67 ;
AUTOSIZE ;
FONT "Bernard MT Condensed" SIZE 36  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 330 ,22 LABEL lbl2 ;
VALUE "Muhammad A. Rahman" ;
WIDTH 196 ;
HEIGHT 38 ;
AUTOSIZE ;
FONT "Brush Script MT" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 226 ,63 IMAGE image1;
PICTURE "EGYPT.JPG";
STRETCH ;
WIDTH 108 HEIGHT 100
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

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
MyOut := MSGBOX("‘ﬂ—« ·«” Œœ«„ﬂ„  ﬁ‰Ì… «·»—„Ã… »œÊ‰ ﬂÊœ","—«›ﬁ ﬂ„ «·”·«„…")
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_PHONE
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '„›ﬂ—… «·Â« ›'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action opendb()",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define Browse ( browse1 )",13,24)
SS_ESASTEP("Circuits\Main\Main\Main","Browse Properties",25,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnadd ) , Caption : '≈÷«›…'",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myadd()",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",31,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btndel ) , Caption : 'Õ–›'",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mydel()",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",37,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnexit ) , Caption : 'Œ—ÊÃ'",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myexit()",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",43,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'PWCT'",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",48,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Muhammad A. Rahman'",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",57,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'EGYPT.JPG'",64,65)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",66,67)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",68,69)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",70,72)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",73,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure opendb",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File 'tel.dbf'",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( checkfile = false )",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Define Table 'tel'",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Field : 'name' , Type  : 'c' , Length  : 50",80,84)
SS_ESASTEP("Circuits\Main\Main\Main","Field : 'address' , Type  : 'c' , Length  : 50",85,89)
SS_ESASTEP("Circuits\Main\Main\Main","Field : 'phone' , Type  : 'c' , Length  : 20",90,94)
SS_ESASTEP("Circuits\Main\Main\Main","Create Table",95,96)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","Open Table tel",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myadd",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","SELECT AREA tel",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Add New Record",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = Get Record Number",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Value := myrec",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.SetFocus ( )",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mydel",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","SELECT AREA tel",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = win1.browse1.Value",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","Goto Record Number myrec",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","Delete Record (Mark for deletion)",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","Pack",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = myrec - 1",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Value := myrec",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Refresh ( )",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myexit",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '‘ﬂ—« ·«” Œœ«„ﬂ„  ﬁ‰Ì… «·»—„Ã… »œÊ‰ ﬂÊœ' Title '—«›ﬁ ﬂ„ «·”·«„…' Type: Message Box",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",120,120)
Return
*-------------------------------------------------------------------*

*---------------------------------------------------------------------------*
* Time : 16:45:46    Date : 02/03/2012
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


Resistance R_TEST_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST_18smart1() code
if !iswindowdefined( win1 )
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
@ 46 ,60 ;
BROWSE browse1 ;
WIDTH 370 ;
HEIGHT 216 ;
HEADERS {"«· ·›Ê‰","«·⁄‰Ê«‰","«·«”„"} ;
WIDTHS {100,100,100} ;
WORKAREA &TRANS_TEMP ;
FIELDS {"tel->phone","tel->address","tel->name"} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
Edit InPlace ;
IMAGE "" 

@ 283 ,257 BUTTONEX btnadd;
CAPTION "«÷«›… ";
ON CLICK myadd()  ;
WIDTH 140 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 283 ,82 BUTTONEX btndel;
CAPTION "Õ–›";
ON CLICK mydel()  ;
WIDTH 140 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
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
myrec := win1.browse1.Value
win1.browse1.SetFocus ( )
Return Nil
Proc mydel
SELECT tel
myrec := win1.browse1.Value
Goto myrec
delete
Pack
myrec := myrec - 1
myrec := win1.browse1.Value
win1.browse1.Refresh ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '„›ﬂ—… «·Â« ›'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action opendb()",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define Browse ( browse1 )",12,23)
SS_ESASTEP("Circuits\Main\Main\Main","Browse Properties",24,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnadd ) , Caption : '«÷«›… '",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myadd()",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",30,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btndel ) , Caption : 'Õ–›'",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mydel()",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",36,38)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",41,43)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",44,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure opendb",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File 'tel.dbf'",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( checkfile = false )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define Table 'tel'",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Field : 'name' , Type  : 'c' , Length  : 50",51,55)
SS_ESASTEP("Circuits\Main\Main\Main","Field : 'address' , Type  : 'c' , Length  : 50",56,60)
SS_ESASTEP("Circuits\Main\Main\Main","Field : 'phone' , Type  : 'c' , Length  : 20",61,65)
SS_ESASTEP("Circuits\Main\Main\Main","Create Table",66,67)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Open Table tel",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myadd",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","SELECT AREA tel",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Add New Record",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = Get Record Number",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = win1.browse1.Value",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.SetFocus ( )",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mydel",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","SELECT AREA tel",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = win1.browse1.Value",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Goto Record Number myrec",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Delete Record (Mark for deletion)",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","Pack",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = myrec - 1",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = win1.browse1.Value",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Refresh ( )",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",87,87)
Return
*-------------------------------------------------------------------*

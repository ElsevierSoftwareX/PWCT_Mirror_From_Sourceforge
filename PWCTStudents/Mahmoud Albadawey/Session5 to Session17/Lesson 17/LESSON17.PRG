*---------------------------------------------------------------------------*
* Time : 11:20:40    Date : 01/23/2012
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


Resistance R_LESSON17_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON17_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 440 ;
HEIGHT 400 ;
ON INIT opendb()  ;
ICON "PWCTICON" ;
TITLE "Lesson 17" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

TRANS_TEMP = "tel"
@ 60 ,56 ;
BROWSE browse1 ;
WIDTH 318 ;
HEIGHT 215 ;
HEADERS {"«· ·Ì›Ê‰","«·⁄‰Ê«‰","«·≈”„"} ;
WIDTHS {100,100,100} ;
WORKAREA &TRANS_TEMP ;
FIELDS {"tel->phone","tel->address","tel->name"} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
Edit InPlace ;
IMAGE "" 

@ 311 ,243 BUTTONEX btnadd;
CAPTION "Add";
ON CLICK myadd()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 311 ,86 BUTTONEX btndel;
CAPTION "Delete";
ON CLICK mydel()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 13 ,157 LABEL lbl1 ;
VALUE "„›ﬂ—… «· ·Ì›Ê‰ " ;
WIDTH 116 ;
HEIGHT 37 ;
AUTOSIZE ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,0,0}
DEFINE STATUSBAR 

STATUSITEM "Mahmoud Albadawey"

DATE;
TOOLTIP " «—ÌŒ «·ÌÊ„" 

CLOCK;
TOOLTIP "«·”«⁄Â";
AMPM 

END STATUSBAR

END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc opendb
CheckFile := File("tel.dbf")
IF checkfile=false
CREATE TempStru
APPEND BLANK
REPLACE Field_name WITH "Name",;
Field_type WITH "c",;
Field_len WITH 50,;
Field_dec WITH 0
APPEND BLANK
REPLACE Field_name WITH "Address",;
Field_type WITH "c",;
Field_len WITH 50,;
Field_dec WITH 0
APPEND BLANK
REPLACE Field_name WITH "Phone",;
Field_type WITH "c",;
Field_len WITH 20,;
Field_dec WITH 0
CLOSE
CREATE tel FROM TempStru
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
myrec := myrec-1
win1.browse1.Value := myrec
win1.browse1.Refresh ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_LESSON17
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Lesson 17'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action opendb",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Browse ( browse1 )",14,25)
SS_ESASTEP("Circuits\Main\Main\Main","Browse Properties",26,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnadd ) , Caption : 'Add'",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myadd",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",32,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btndel ) , Caption : 'Delete'",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mydel",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",38,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '„›ﬂ—… «· ·Ì›Ê‰ '",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",43,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Mahmoud Albadawey' )",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","Date",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",58,60)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'win1'",65,67)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",68,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure opendb",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File 'tel.dbf'",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( checkfile=false )",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define Table tel",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Field : 'Name' , Type  : 'c' , Length  : 50",75,79)
SS_ESASTEP("Circuits\Main\Main\Main","Field : 'Address' , Type  : 'c' , Length  : 50",80,84)
SS_ESASTEP("Circuits\Main\Main\Main","Field : 'Phone' , Type  : 'c' , Length  : 20",85,89)
SS_ESASTEP("Circuits\Main\Main\Main","Create Table",90,91)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","Open Table tel",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myadd",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","SELECT AREA tel",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Add New Record",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = Get Record Number",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Value := myrec",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.SetFocus ( )",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mydel",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","SELECT AREA tel",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = win1.browse1.Value",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","Goto Record Number myrec",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","Delete Record (Mark for deletion)",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","Pack",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = myrec-1",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Value := myrec",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Refresh ( )",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",111,111)
Return
*-------------------------------------------------------------------*

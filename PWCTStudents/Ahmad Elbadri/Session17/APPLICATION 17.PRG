*---------------------------------------------------------------------------*
* Time : 21:11:27    Date : 01/28/2012
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


Resistance R_APPLICATION_17_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_APPLICATION_17_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON INIT myopen()  ;
ICON "PWCTICON" ;
TITLE "Phone Note" ;
MAIN ;
BACKCOLOR {236,233,216} 

TRANS_TEMP = "tel"
@ 32 ,99 ;
BROWSE browse1 ;
WIDTH 292 ;
HEIGHT 225 ;
HEADERS {"name","Address","Phone"} ;
WIDTHS {100,100,50} ;
WORKAREA &TRANS_TEMP ;
FIELDS {"tel->name","tel->address","tel->phone"} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
Edit InPlace ;
IMAGE "" 

@ 289 ,130 BUTTONEX btn1;
CAPTION "Delete";
ON CLICK mydel()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 291 ,260 BUTTONEX btn2;
CAPTION "Add";
ON CLICK add1()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myopen
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
Field_type WITH "n",;
Field_len WITH 50,;
Field_dec WITH 0
CLOSE
CREATE "tel" FROM TempStru
ENDIF
Use tel
Return Nil
Proc add1
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

INIT PROCEDURE Init_APPLICATION_17
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Phone Note'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action myopen",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define Browse ( browse1 )",12,23)
SS_ESASTEP("Circuits\Main\Main\Main","Browse Properties",24,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Delete'",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mydel",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",30,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Add'",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action add1",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",36,38)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",41,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myopen",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File 'tel.dbf'",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( checkfile = false )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define Table 'tel'",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Field : 'name' , Type  : 'c' , Length  : 50",48,52)
SS_ESASTEP("Circuits\Main\Main\Main","Field : 'address' , Type  : 'c' , Length  : 50",53,57)
SS_ESASTEP("Circuits\Main\Main\Main","Field : 'phone' , Type  : 'n' , Length  : 50",58,62)
SS_ESASTEP("Circuits\Main\Main\Main","Create Table",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Open Table tel",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure add1",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","SELECT AREA tel",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Add New Record",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = Get Record Number",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Value := myrec",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.SetFocus ( )",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mydel",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","SELECT AREA tel",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = win1.browse1.Value",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Goto Record Number myrec",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Delete Record (Mark for deletion)",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Pack",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = myrec-1",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Value := myrec",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Refresh ( )",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",84,84)
Return
*-------------------------------------------------------------------*

*---------------------------------------------------------------------------*
* Time : 14:29:39    Date : 12/30/2011
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


Resistance R_PHONEBOOK_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PHONEBOOK_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 307 ;
ON INIT Opendb()  ;
ICON "PWCTICON" ;
TITLE "Phone Book" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

TRANS_TEMP = "phone"
@ 15 ,10 ;
BROWSE browse1 ;
WIDTH 476 ;
HEIGHT 213 ;
HEADERS {"Name","Address","Phone"} ;
WIDTHS {100,100,100} ;
WORKAREA &TRANS_TEMP ;
FIELDS {"phone->Name","phone->Address","phone->phone"} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
Edit InPlace ;
IMAGE "" 

@ 235 ,105 BUTTONEX btn1;
CAPTION "New";
ON CLICK New()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 234 ,2 BUTTONEX btn2;
CAPTION "Delete";
ON CLICK Del()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc New
SELECT Phone
Append Blank
Rec := Recno()
win1.browse1.Value := Rec
win1.browse1.SetFocus ( )
Return Nil
Proc Del
SELECT Phone
Rec := win1.browse1.Value
Goto Rec
delete
Pack
Rec := Rec-1
win1.browse1.Value := Rec
win1.browse1.Refresh ( )
Return Nil
Proc Opendb
CheckFile := File("Phone.dbf")
IF CheckFile=false
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
CREATE "phone" FROM TempStru
ENDIF
Use Phone
Return Nil


End Of Resistance

INIT PROCEDURE Init_PHONEBOOK
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Phone Book'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action Opendb",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define Browse ( browse1 )",15,26)
SS_ESASTEP("Circuits\Main\Main\Main","Browse Properties",27,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'New'",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action New",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",33,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Delete'",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Del",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",39,41)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",44,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure New",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","SELECT AREA Phone",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Add New Record",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Rec = Get Record Number",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Value := Rec",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.SetFocus ( )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Del",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","SELECT AREA Phone",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Rec = win1.browse1.Value",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Goto Record Number Rec",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Delete Record (Mark for deletion)",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Pack",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Rec = Rec-1",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Value := Rec",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Refresh ( )",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Opendb",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File 'Phone.dbf'",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( CheckFile=false )",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define Table 'phone'",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Field : 'Name' , Type  : 'c' , Length  : 50",68,72)
SS_ESASTEP("Circuits\Main\Main\Main","Field : 'Address' , Type  : 'c' , Length  : 50",73,77)
SS_ESASTEP("Circuits\Main\Main\Main","Field : 'Phone' , Type  : 'c' , Length  : 20",78,82)
SS_ESASTEP("Circuits\Main\Main\Main","Create Table",83,84)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","Open Table Phone",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",87,87)
Return
*-------------------------------------------------------------------*

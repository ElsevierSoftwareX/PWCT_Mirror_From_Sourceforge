*---------------------------------------------------------------------------*
* Time : 18:38:26    Date : 08/12/2011
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


Resistance R_TELEPHONECONTACT_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TELEPHONECONTACT_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 575 ;
HEIGHT 562 ;
ON INIT opendata()  ;
ICON "PWCTICON" ;
TITLE "telephone" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ -14 ,-21 IMAGE image1;
PICTURE "TELE.JPG";
STRETCH ;
WIDTH 593 HEIGHT 565
TRANS_TEMP = "tel"
@ 73 ,68 ;
BROWSE browse1 ;
WIDTH 434 ;
HEIGHT 217 ;
HEADERS {"Telephone","Name","Address"} ;
WIDTHS {130,130,150} ;
WORKAREA &TRANS_TEMP ;
FIELDS {"tel->phone","tel->address","tel->name"} ;
FONT "Cooper Black" SIZE 16 ;
BACKCOLOR {201,201,201} ;
FONTCOLOR {255,0,128} ;
Edit InPlace ;
IMAGE "" 

@ 299 ,140 BUTTONEX btnadd;
CAPTION "add";
ON CLICK myadd()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Matura MT Script Capitals" SIZE 16 ;
TOOLTIP ""
@ 299 ,306 BUTTONEX btndel;
CAPTION "delete";
ON CLICK mydel()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Matura MT Script Capitals" SIZE 16 ;
TOOLTIP ""
DEFINE MAIN MENU
POPUP "file"
MENUITEM "exit" Action myclose()
END POPUP
END MENU
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc opendata()
CheckFile := File("tel.dbf")
IF CheckFile=false
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
Field_len WITH 50,;
Field_dec WITH 0
CLOSE
CREATE "tel" FROM TempStru
ENDIF
Use tel
Return Nil
Proc myadd()
SELECT AREA tel
Append Blank
myrec := GET_RECORD_NUMBER
win1.browse1.Value := myrec
win1.browse1.SetFocus ( )
Return Nil
Proc mydel()
SELECT AREA tel
myrec := win1.browse1.Value
Goto myrec
delete
Pack
myrec := myrec - 1
win1.browse1.Value := myrec
win1.browse1.Refresh ( )
Return Nil
Proc myclose
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_TELEPHONECONTACT
START DOUBLES
Return
*-------------------------------------------------------------------*

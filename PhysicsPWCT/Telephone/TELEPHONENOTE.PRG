*---------------------------------------------------------------------------*
* Time : 00:46:24    Date : 05/28/2010
*---------------------------------------------------------------------------*
* Programming without coding technology 1.6 (Ready) [2006-2010]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
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


Resistance R_TELEPHONENOTE_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TELEPHONENOTE_15speed1() code
DEFINE WINDOW phone ;
AT 10 ,10 ;
WIDTH 637 ;
HEIGHT 391 ;
ON INIT opendb()  ;
ICON "PWCTICON" ;
TITLE "Telephone Note" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,128,64} ;
NOTIFYICON "MrAbOeLsOuD/MRABN.ICO" 

phone.Center ( )
TRANS_TEMP = "tel"
@ 105 ,3 ;
BROWSE browse1 ;
WIDTH 618 ;
HEIGHT 204 ;
HEADERS {"Name","Adress","Telephone","Age","Mobile"} ;
WIDTHS {170,170,100,50,100} ;
WORKAREA &TRANS_TEMP ;
FIELDS {"tel->name","tel->telephone","tel->adress","tel->age","tel->mobile"} ;
FONT "Arial" SIZE 11 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {82,0,164} ;
Edit InPlace ;
IMAGE "" 

@ 313 ,491 BUTTONEX btn1add;
CAPTION "Add";
FONTCOLOR {0,98,49};
BACKCOLOR {236,233,216};
PICTURE "MrAbOeLsOuD/ADD.BMP";
LEFTTEXT ;
ON CLICK myadd()  ;
WIDTH 130 HEIGHT 30 ;
FONT "Tahoma" SIZE 18 ;
BOLD ;
TOOLTIP "«÷€ÿ ·«÷«›… ⁄‰’— ÃœÌœ"
@ 313 ,234 BUTTONEX btn2del;
CAPTION "Delete";
FONTCOLOR {255,0,128};
BACKCOLOR {236,233,216};
PICTURE "MrAbOeLsOuD/DEL.BMP";
LEFTTEXT ;
ON CLICK mydel()  ;
WIDTH 130 HEIGHT 30 ;
FONT "Tahoma" SIZE 18 ;
BOLD ;
TOOLTIP "«÷€ÿ ·«÷«›… ·Õ–› ⁄‰’—"
@ 313 ,3 BUTTONEX btn3Close;
CAPTION "Close";
FONTCOLOR {255,0,0};
BACKCOLOR {236,233,216};
PICTURE "MrAbOeLsOuD/CLOSE.BMP";
LEFTTEXT ;
ON CLICK myclose()  ;
WIDTH 130 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
BOLD ;
TOOLTIP "«÷€ÿ ·«÷«›… ·«€·«ﬁ «·‰«›–…"
DEFINE TOOLBAR Toolbar1;
BUTTONSIZE 310 , 45 ;
FONT "Arial" ;
SIZE 18 ;
BOLD ;
FLAT ;
BORDER ;
BREAK 

BUTTON toolbarbtn1;
CAPTION "Add Data" ;
PICTURE "MrAbOeLsOuD/ADD.BMP" ;
ON CLICK myadd()  ;
TOOLTIP "" ;
SEPARATOR 

BUTTON toolbarbtn2;
CAPTION "Delete Data" ;
PICTURE "MrAbOeLsOuD/DEL.BMP" ;
ON CLICK mydel()  ;
TOOLTIP "" ;
SEPARATOR 

END TOOLBAR

DEFINE Context MENU OF phone
Set MenuStyle EXTENDED
MENUITEM "Add Data" Action MYADD()  IMAGE "MrAbOeLsOuD/ADD.BMP"
SEPARATOR
MENUITEM "Delete Data" Action MYdel()  IMAGE "MrAbOeLsOuD/del.BMP"
SEPARATOR
MENUITEM "Designer" Action MSGINFO( "»—„Ã… √/√»Ê«·”⁄Êœ ⁄»œ«·—ƒ›" )
SEPARATOR
MENUITEM "Exit" Action MYclose()  IMAGE "MrAbOeLsOuD/close.BMP"
END MENU
@ 77 ,202 LABEL lbl1PHONE ;
VALUE "»—„Ã… √/√»Ê«·”⁄Êœ ⁄»œ «·—ƒ›" ;
WIDTH 205 ;
HEIGHT 23 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
END WINDOW

ACTIVATE WINDOW phone

Proc myadd
SELECT AREA tel
Append Blank
myrec := Recno()
phone.browse1.Value := myrec
phone.browse1.SetFocus ( )
Return Nil
Proc mydel
SELECT AREA tel
myrec := phone.browse1.Value
Goto myrec
delete
Pack
myrec := myrec -1
phone.browse1.Value := myrec
phone.browse1.Refresh ( )
Return Nil
Proc opendb
CheckFile := File("tel.dbf")
IF CheckFile = false
CREATE TempStru
APPEND BLANK
REPLACE Field_name WITH "name",;
Field_type WITH "c",;
Field_len WITH 50,;
Field_dec WITH 0
APPEND BLANK
REPLACE Field_name WITH "adress",;
Field_type WITH "c",;
Field_len WITH 50,;
Field_dec WITH 0
APPEND BLANK
REPLACE Field_name WITH "telephone",;
Field_type WITH "c",;
Field_len WITH 50,;
Field_dec WITH 0
APPEND BLANK
REPLACE Field_name WITH "age",;
Field_type WITH "c",;
Field_len WITH 50,;
Field_dec WITH 0
APPEND BLANK
REPLACE Field_name WITH "mobile",;
Field_type WITH "c",;
Field_len WITH 50,;
Field_dec WITH 0
CLOSE
CREATE "tel" FROM TempStru
ENDIF
Use tel
Return Nil
Proc myclose
phone.Release ( )
Return Nil
Proc designed
Return Nil


End Of Resistance

INIT PROCEDURE Init_TELEPHONENOTE
START DOUBLES
Return
*-------------------------------------------------------------------*

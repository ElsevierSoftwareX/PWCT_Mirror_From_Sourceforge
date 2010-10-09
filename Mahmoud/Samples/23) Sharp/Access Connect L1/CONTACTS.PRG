*---------------------------------------------------------------------------*
* Time : 05:58:22    Date : 10/09/2010
*---------------------------------------------------------------------------*
* Programming without coding technology 1.7 (Sharp) [2006-2010]  
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


Resistance R_CONTACTS_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CONTACTS_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON INIT openDB()  ;
ICON "PWCTICON" ;
TITLE "Contacts" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {128,128,0} 

@ 117 ,170 TEXTBOX txtname;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 161 ,168 TEXTBOX txtphone;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 116 ,58 LABEL lbl1 ;
VALUE "Name :" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {128,128,0} ;
FONTCOLOR {255,255,128}
@ 161 ,57 LABEL lbl2 ;
VALUE "Phone :" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {128,128,0} ;
FONTCOLOR {255,255,128}
@ 303 ,344 BUTTONEX btn1;
CAPTION "Close";
ON CLICK close()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc close()
win1.Release ( )
Return Nil
Proc openDB
Public conn
conn := TOLEAUTO():NEW( "ADODB.Connection" )
conn:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=contacts.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := conn
oRS:open ( "Select * from contacts",conn,3,3 )
name := oRS:fields:item("name"):value
phone := oRS:fields:item("phone"):value
win1.txtname.Value := name
win1.txtphone.Value := phone
Return Nil


End Of Resistance

INIT PROCEDURE Init_CONTACTS
START DOUBLES
Return
*-------------------------------------------------------------------*

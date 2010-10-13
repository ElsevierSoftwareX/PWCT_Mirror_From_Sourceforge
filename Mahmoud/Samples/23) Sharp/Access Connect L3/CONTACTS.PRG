*---------------------------------------------------------------------------*
* Time : 13:11:55    Date : 10/13/2010
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
WIDTH 629 ;
HEIGHT 506 ;
ON INIT openDB()  ;
ICON "VISTA_ICONS_04.ICO" ;
TITLE "Contacts" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
CURSOR "3dgarro.cur" ;
BACKCOLOR {128,128,0} 

@ 133 ,242 TEXTBOX txtname;
HEIGHT 30 ;
WIDTH 290 ;
READONLY ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 177 ,240 TEXTBOX txtphone;
HEIGHT 30 ;
WIDTH 290 ;
READONLY ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 132 ,130 LABEL lbl1 ;
VALUE "Name :" ;
WIDTH 100 ;
HEIGHT 40 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {128,128,0} ;
FONTCOLOR {255,255,128}
@ 177 ,129 LABEL lbl2 ;
VALUE "Phone :" ;
WIDTH 100 ;
HEIGHT 40 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {128,128,0} ;
FONTCOLOR {255,255,128}
@ 406 ,480 BUTTONEX btn1;
CAPTION "Close";
ON CLICK close1()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 296 ,151 BUTTONEX btnInsert;
CAPTION "New Data";
ON CLICK newData()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 229 ,131 LABEL lbl3 ;
VALUE "Address :" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {128,128,0} ;
FONTCOLOR {255,255,128}
@ 222 ,240 TEXTBOX txtAddress;
HEIGHT 30 ;
WIDTH 290 ;
READONLY ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 295 ,295 BUTTONEX btnUpdate;
CAPTION "Update";
ON CLICK btnUpdate()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 296 ,424 BUTTONEX btnSave;
CAPTION "Save";
ON CLICK update()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc openDB
win1.btnSave.Enabled := false
DO conn
oRS:CursorType := 1
oRS:ActiveConnection := conn
oRS:open ( "Select * from contacts",conn,3,3 )
name := oRS:fields:item("name"):value
phone := oRS:fields:item("phone"):value
address := oRS:fields:item("address"):value
win1.txtname.Value := name
win1.txtphone.Value := phone
win1.txtAddress.Value := address
Return Nil
Proc newData
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 470 ;
HEIGHT 395 ;
ICON "VISTA_ICONS_04.ICO" ;
TITLE "Insert New data" ;
MODAL ;
NOSIZE ;
CURSOR "3dgarro.cur" ;
BACKCOLOR {128,128,0} 

@ 127 ,148 TEXTBOX txtname;
HEIGHT 30 ;
WIDTH 290 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 171 ,146 TEXTBOX txtphone;
HEIGHT 30 ;
WIDTH 290 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 216 ,146 TEXTBOX txtAddress;
HEIGHT 30 ;
WIDTH 290 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 126 ,36 LABEL lbl1 ;
VALUE "Name :" ;
WIDTH 100 ;
HEIGHT 40 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {128,128,0} ;
FONTCOLOR {255,255,128}
@ 171 ,35 LABEL lbl2 ;
VALUE "Phone :" ;
WIDTH 100 ;
HEIGHT 40 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {128,128,0} ;
FONTCOLOR {255,255,128}
@ 223 ,37 LABEL lbl3 ;
VALUE "Address :" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {128,128,0} ;
FONTCOLOR {255,255,128}
@ 48 ,101 LABEL lbl4 ;
VALUE "Insert New Data" ;
WIDTH 315 ;
HEIGHT 51 ;
FONT "Andalus" SIZE 28  ;
BOLD ;
BACKCOLOR {128,128,0} ;
CENTERALIGN ;
FONTCOLOR {255,255,0}
@ 276 ,148 BUTTONEX btnSave;
CAPTION "Save";
ON CLICK insert()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 292 ,17 BUTTONEX btnBack;
CAPTION "<<<";
ON CLICK close2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

Return Nil
Proc insert
name := win2.txtName.Value
IF name==""
MyOut := MSGExclamation("You Should Type Name...","Error Data")
ELSE
DO conn
name := win2.txtName.Value
phone := win2.txtPhone.Value
address := win2.txtAddress.Value
oRS:CursorType := 1
oRS:ActiveConnection := conn
oRS:open ( "insert into contacts values('"+ name +"','"+ phone +"','"+ address +"')",conn,3,3 )
MyOut := MSGBOX("Contact : "+ name + " Added Successfully","Success")
win2.Release ( )
ENDIF
Return Nil
Proc conn
Public conn
conn := TOLEAUTO():NEW( "ADODB.Connection" )
conn:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=contacts.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
Return Nil
Proc close1
win1.Release ( )
Return Nil
Proc close2
win2.Release ( )
Return Nil
Proc btnUpdate
win1.btnSave.Enabled := true
win1.btnUpdate.Enabled := false
win1.txtPhone.BackColor := {128,128,255}
win1.txtAddress.BackColor := {128,128,255}
win1.txtPhone.ReadOnly := false
win1.txtAddress.ReadOnly := false
Return Nil
Proc update
DO conn
name := win1.txtName.Value
phone := win1.txtPhone.Value
address := win1.txtAddress.Value
oRS:CursorType := 1
oRS:ActiveConnection := conn
oRS:open ( "update contacts set phone= '"+ phone +"',address='"+ address +"' where name='"+name+"'",conn,3,3 )
MyOut := MSGBOX("Name : "+ name +" Updated Successfully...","Success")
win1.btnSave.Enabled := false
win1.btnUpdate.Enabled := true
win1.txtPhone.BackColor := {255,255,255}
win1.txtAddress.BackColor := {255,255,255}
win1.txtPhone.ReadOnly := true
win1.txtAddress.ReadOnly := true
Return Nil


End Of Resistance

INIT PROCEDURE Init_CONTACTS
START DOUBLES
Return
*-------------------------------------------------------------------*

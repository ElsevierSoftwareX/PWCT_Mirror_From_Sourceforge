*---------------------------------------------------------------------------*
* Time : 23:00:34    Date : 10/23/2011
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


Resistance R_CONTACTS_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CONTACTS_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 483 ;
HEIGHT 467 ;
ON INIT openDB()  ;
ICON "VISTA_ICONS_04.ICO" ;
TITLE "Contacts" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
CURSOR "3dgarro.cur" ;
BACKCOLOR {128,128,0} 

@ 140 ,154 TEXTBOX txtname;
HEIGHT 30 ;
WIDTH 290 ;
READONLY ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 184 ,152 TEXTBOX txtphone;
HEIGHT 30 ;
WIDTH 290 ;
READONLY ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 139 ,42 LABEL lbl1 ;
VALUE "Name :" ;
WIDTH 100 ;
HEIGHT 40 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {128,128,0} ;
FONTCOLOR {255,255,128}
@ 184 ,41 LABEL lbl2 ;
VALUE "Phone :" ;
WIDTH 100 ;
HEIGHT 40 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {128,128,0} ;
FONTCOLOR {255,255,128}
@ 367 ,330 BUTTONEX btn1;
CAPTION "Close";
ON CLICK close1()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 296 ,151 BUTTONEX btnInsert;
CAPTION "New Data";
ON CLICK newData()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 236 ,43 LABEL lbl3 ;
VALUE "Address :" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {128,128,0} ;
FONTCOLOR {255,255,128}
@ 229 ,152 TEXTBOX txtAddress;
HEIGHT 30 ;
WIDTH 290 ;
READONLY ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc openDB
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


End Of Resistance

INIT PROCEDURE Init_CONTACTS
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Contacts'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action openDB",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( txtname  )",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",16,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( txtphone  )",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",23,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name :'",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",31,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Phone :'",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",38,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Close'",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action close1",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",46,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnInsert ) , Caption : 'New Data'",49,50)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action newData",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",52,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Address :'",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",57,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( txtAddress  )",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",63,68)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",69,70)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",71,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure openDB",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure conn",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection conn , CursorType 1 , SQL Statement 'Select * from contacts'",76,78)
SS_ESASTEP("Circuits\Main\Main\Main","name = ADODB RecordSet (oRS) Get Field ('name') Value",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","phone = ADODB RecordSet (oRS) Get Field ('phone') Value",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","address = ADODB RecordSet (oRS) Get Field ('address') Value",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","win1.txtname.Value := name",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","win1.txtphone.Value := phone",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","win1.txtAddress.Value := address",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure newData",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Insert New data'",87,91)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",92,98)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( txtname  )",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",100,104)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( txtphone  )",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",106,110)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( txtAddress  )",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",112,116)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name :'",117,118)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",119,123)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Phone :'",124,125)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",126,130)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Address :'",131,132)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",133,137)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Insert New Data'",138,139)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",140,146)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnSave ) , Caption : 'Save'",147,148)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action insert()",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",150,152)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnBack ) , Caption : '<<<'",153,154)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action close2()",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",156,158)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",159,160)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",161,163)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure insert",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","name = win2.txtName.Value",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( name=='' )",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'You Should Type Name...' Title 'Error Data' Type: Message Exclamation",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure conn",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","name = win2.txtName.Value",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","phone = win2.txtPhone.Value",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","address = win2.txtAddress.Value",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection conn , CursorType 1 , SQL Statement 'insert into contacts values(''+ name +'',''+ phone +'',''+ address +'')'",174,176)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Contact : '+ name + ' Added Successfully' Title 'Success' Type: Message Box",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure conn",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","conn = Create New ADODB Connection",182,183)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection conn , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=contacts.mdb'",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",185,186)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close1",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close2",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",193,193)
Return
*-------------------------------------------------------------------*

*---------------------------------------------------------------------------*
* Time : 23:20:28    Date : 10/23/2011
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
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnUpdate ) , Caption : 'Update'",69,70)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action btnUpdate",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",72,74)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnSave ) , Caption : 'Save'",75,76)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action update",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",78,80)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",81,82)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",83,85)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure openDB",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnSave.Enabled := false",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure conn",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection conn , CursorType 1 , SQL Statement 'Select * from contacts'",89,91)
SS_ESASTEP("Circuits\Main\Main\Main","name = ADODB RecordSet (oRS) Get Field ('name') Value",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","phone = ADODB RecordSet (oRS) Get Field ('phone') Value",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","address = ADODB RecordSet (oRS) Get Field ('address') Value",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","win1.txtname.Value := name",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","win1.txtphone.Value := phone",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","win1.txtAddress.Value := address",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure newData",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Insert New data'",100,104)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",105,111)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( txtname  )",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",113,117)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( txtphone  )",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",119,123)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( txtAddress  )",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",125,129)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name :'",130,131)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",132,136)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Phone :'",137,138)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",139,143)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Address :'",144,145)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",146,150)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Insert New Data'",151,152)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",153,159)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnSave ) , Caption : 'Save'",160,161)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action insert",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",163,165)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnBack ) , Caption : '<<<'",166,167)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action close2",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",169,171)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",172,173)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",174,176)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure insert",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","name = win2.txtName.Value",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( name=='' )",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'You Should Type Name...' Title 'Error Data' Type: Message Exclamation",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure conn",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","name = win2.txtName.Value",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","phone = win2.txtPhone.Value",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","address = win2.txtAddress.Value",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection conn , CursorType 1 , SQL Statement 'insert into contacts values(''+ name +'',''+ phone +'',''+ address +'')'",187,189)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Contact : '+ name + ' Added Successfully' Title 'Success' Type: Message Box",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure conn",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","conn = Create New ADODB Connection",195,196)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection conn , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=contacts.mdb'",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",198,199)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close1",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close2",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure btnUpdate",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnSave.Enabled := true",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnUpdate.Enabled := false",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","win1.txtPhone.BackColor := {128,128,255}",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","win1.txtAddress.BackColor := {128,128,255}",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","win1.txtPhone.ReadOnly := false",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","win1.txtAddress.ReadOnly := false",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure update",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure conn",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","name = win1.txtName.Value",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","phone = win1.txtPhone.Value",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","address = win1.txtAddress.Value",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection conn , CursorType 1 , SQL Statement 'update contacts set phone= ''+ phone +'',address=''+ address +'' where name=''+name+'''",220,222)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Name : '+ name +' Updated Successfully...' Title 'Success' Type: Message Box",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnSave.Enabled := false",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnUpdate.Enabled := true",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","win1.txtPhone.BackColor := {255,255,255}",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","win1.txtAddress.BackColor := {255,255,255}",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","win1.txtPhone.ReadOnly := true",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","win1.txtAddress.ReadOnly := true",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",230,230)
Return
*-------------------------------------------------------------------*

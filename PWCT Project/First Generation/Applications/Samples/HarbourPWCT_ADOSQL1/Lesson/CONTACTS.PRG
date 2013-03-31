*---------------------------------------------------------------------------*
* Time : 15:28:57    Date : 10/23/2011
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
WIDTH 500 ;
HEIGHT 400 ;
ON INIT openDB()  ;
ICON "PWCTICON" ;
TITLE "Contacts - by Ahmed Omar" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {128,128,0} 

@ 117 ,170 TEXTBOX txtname;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 161 ,168 TEXTBOX txtphone;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

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
conn := TOLEAUTO():NEW( "ADODB.Connection" )
conn:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=contacts.mdb' )
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
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Contacts - by Ahmed Omar'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action openDB()",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( txtname  )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",15,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( txtphone  )",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",21,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name :'",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",28,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Phone :'",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",35,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Close'",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action close()",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",43,45)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",48,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close()",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure openDB",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","conn = Create New ADODB Connection",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection conn , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=contacts.mdb'",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection conn , CursorType 1 , SQL Statement 'Select * from contacts'",58,60)
SS_ESASTEP("Circuits\Main\Main\Main","name = ADODB RecordSet (oRS) Get Field ('name') Value",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","phone = ADODB RecordSet (oRS) Get Field ('phone') Value",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","win1.txtname.Value := name",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","win1.txtphone.Value := phone",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",65,65)
Return
*-------------------------------------------------------------------*

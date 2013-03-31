*---------------------------------------------------------------------------*
* Time : 21:26:52    Date : 10/16/2011
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


Resistance R_PATIENT_FILE_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PATIENT_FILE_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 925 ;
HEIGHT 513 ;
ICON "PWCTICON" ;
TITLE "patient database" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ -5 ,-14 IMAGE image2;
PICTURE "HOSPITAL1.JPG";
STRETCH ;
WIDTH 947 HEIGHT 495
@ 151 ,79 LABEL lbl1 ;
VALUE "phone" ;
WIDTH 89 ;
HEIGHT 32 ;
FONT "Ravie" SIZE 12  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {240,0,120}
@ 60 ,43 LABEL lbl2 ;
VALUE "patient name" ;
WIDTH 149 ;
HEIGHT 31 ;
FONT "Ravie" SIZE 12  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {240,0,120}
@ 102 ,65 LABEL lbl3 ;
VALUE "address" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Ravie" SIZE 12  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {240,0,120}
@ 67 ,195 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,128} 

@ 109 ,196 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,128} 

@ 155 ,193 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,128} 

@ 268 ,232 BUTTONEX btn1;
CAPTION "save record";
ON CLICK saverec()  ;
WIDTH 106 HEIGHT 33 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 392 ,61 BUTTONEX btn2;
CAPTION "Close";
ON CLICK myClose()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 30 ,439 GRID Grid1;
WIDTH 420 ;
HEIGHT 259 ;
HEADERS {"Patient name","address","phone","Gender"};
WIDTHS {120,100,100,100} ;
FONT "Comic Sans MS" SIZE 12 ;
BACKCOLOR {255,213,234} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
@ 303 ,715 BUTTONEX btn3;
CAPTION "show Records";
ON CLICK showrec()  ;
WIDTH 126 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 204 ,76 LABEL lbl4 ;
VALUE "Gender" ;
WIDTH 89 ;
HEIGHT 32 ;
FONT "Ravie" SIZE 12  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {240,0,120}
@ 205 ,191 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,128} 

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myClose
win1.Release ( )
Return Nil
Proc saverec
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=data.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from patient",oCon,3,3 )
oRS:ADDNEW()
oname := win1.text1.Value
oaddress := win1.text2.Value
ophone := win1.text3.Value
ogender := win1.text4.Value
oRS:fields:item("patient name"):value := oname
oRS:fields:item("address"):value := oaddress
oRS:fields:item("phone"):value := ophone
oRS:fields:item("Gender"):value := ogender
oRS:UPDATE()
oRS:Close()
oCon:CLOSE()
MyOut := MSGBOX(" Done ","ok")
Return Nil
Proc showrec
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=data.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from patient",oCon,3,3 )
mymax := oRS:RecordCount
win1.grid1.DeleteAllItems ( )
FOR x = 1 TO mymax STEP 1
oname := oRS:fields:item("patient name"):value
oaddress := oRS:fields:item("address"):value
ophone := oRS:fields:item("phone"):value
ogender := oRS:fields:item("gender"):value
win1.grid1.AddItem ( {oname,oaddress,ophone,ogender} )
oRS:MOVENEXT()
Next
Return Nil


End Of Resistance

INIT PROCEDURE Init_PATIENT_FILE
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'patient database'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image2 ) , Image : 'HOSPITAL1.JPG'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",16,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'phone'",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'patient name'",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'address'",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",34,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",40,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",46,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",52,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'save record'",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action saverec()",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",60,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Close'",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myClose()",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",66,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'Patient name','address','phone','Gender'}",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",70,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'show Records'",78,79)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action showrec()",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",81,83)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Gender'",84,85)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",86,90)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",92,96)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",97,98)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",99,101)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myClose",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure saverec",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",106,107)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=data.mdb'",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",109,110)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from patient'",111,113)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Add New Record",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","oname = win1.text1.Value",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","oaddress = win1.text2.Value",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","ophone = win1.text3.Value",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","ogender = win1.text4.Value",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('patient name') Value To (oname)",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('address') Value To (oaddress)",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('phone') Value To (ophone)",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Gender') Value To (ogender)",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' Done ' Title 'ok' Type: Message Box",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showrec",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",129,130)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=data.mdb'",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",132,133)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from patient'",134,136)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","win1.grid1.DeleteAllItems ( )",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To mymax Step 1)",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","oname = ADODB RecordSet (oRS) Get Field ('patient name') Value",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","oaddress = ADODB RecordSet (oRS) Get Field ('address') Value",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","ophone = ADODB RecordSet (oRS) Get Field ('phone') Value",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","ogender = ADODB RecordSet (oRS) Get Field ('gender') Value",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","win1.grid1.AddItem ( {oname,oaddress,ophone,ogender} )",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",147,147)
Return
*-------------------------------------------------------------------*

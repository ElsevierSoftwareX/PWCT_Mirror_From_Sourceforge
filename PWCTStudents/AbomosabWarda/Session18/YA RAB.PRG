*---------------------------------------------------------------------------*
* Time : 10:39:16    Date : 01/30/2012
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


Resistance R_YA_RAB_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_YA_RAB_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 778 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Data Base" ;
MAIN ;
BACKCOLOR {255,0,128} 

@ 82 ,49 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 114 ;
HEIGHT 35 ;
FONT "Bernard MT Condensed" SIZE 18  ;
BACKCOLOR {128,255,0} ;
FONTCOLOR {0,0,0}
@ 146 ,49 LABEL lbl2 ;
VALUE "Address" ;
WIDTH 108 ;
HEIGHT 28 ;
FONT "Bernard MT Condensed" SIZE 18  ;
BACKCOLOR {128,255,0} ;
FONTCOLOR {0,0,0}
@ 202 ,49 LABEL lbl3 ;
VALUE "Phone" ;
WIDTH 119 ;
HEIGHT 34 ;
FONT "Bernard MT Condensed" SIZE 18  ;
BACKCOLOR {128,255,0} ;
FONTCOLOR {0,0,0}
@ 83 ,207 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {128,255,255} ;
FONTCOLOR {0,0,0} 

@ 141 ,207 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {128,255,255} ;
FONTCOLOR {0,0,0} 

@ 195 ,207 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {128,255,255} ;
FONTCOLOR {0,0,0} 

@ 275 ,238 BUTTONEX btn1;
CAPTION "Save Record";
ON CLICK saverecord()  ;
WIDTH 169 HEIGHT 38 ;
FONT "arial" SIZE 18 ;
TOOLTIP ""
@ 275 ,50 BUTTONEX btn2;
CAPTION "Close Window";
ON CLICK closewindow()  ;
WIDTH 175 HEIGHT 37 ;
FONT "Bernard MT Condensed" SIZE 18 ;
TOOLTIP ""
@ 25 ,419 GRID Grid1;
WIDTH 336 ;
HEIGHT 232 ;
HEADERS {"name","address","phone"};
WIDTHS {100,100,100} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
@ 277 ,502 BUTTONEX btn3;
CAPTION "Show Records";
ON CLICK showrecord()  ;
WIDTH 158 HEIGHT 38 ;
FONT "Bernard MT Condensed" SIZE 18 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc saverecord
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=data.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from tel",oCon,3,3 )
oRS:ADDNEW()
cname := win1.text1.Value
caddress := win1.text2.Value
cphone := win1.text3.Value
oRS:fields:item("name"):value := cname
oRS:fields:item("address"):value := caddress
oRS:fields:item("phone"):value := cphone
oRS:UPDATE()
oRS:Close()
oCon:CLOSE()
MyOut := MSGBOX("Operation Done","Ok")
Return Nil
Proc closewindow
win1.Release ( )
Return Nil
Proc showrecord
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=data.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from tel",oCon,3,3 )
mymax := oRS:RecordCount
oRS:MOVEFIRST()
win1.grid1.DeleteAllItems ( )
FOR x = 1 TO mymax STEP 1
cname := oRS:fields:item("name"):value
caddress := oRS:fields:item("address"):value
cphone := oRS:fields:item("phone"):value
win1.grid1.AddItem ( {cname,caddress,cphone} )
oRS:MOVENEXT()
Next
Return Nil


End Of Resistance

INIT PROCEDURE Init_YA_RAB
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Data Base'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Address'",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Phone'",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",33,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",39,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",45,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Save Record'",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action saverecord()",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",53,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Close Window'",56,57)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closewindow()",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",59,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'name','address','phone'}",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",63,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Show Records'",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action showrecord()",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",74,76)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",77,78)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",79,81)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure saverecord",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",83,84)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=data.mdb'",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",86,87)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",88,90)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Add New Record",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","cname = win1.text1.Value",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = win1.text2.Value",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = win1.text3.Value",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('name') Value To (cname)",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('address') Value To (caddress)",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('phone') Value To (cphone)",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Operation Done' Title 'Ok' Type: Message Box",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closewindow",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showrecord",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",107,108)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Ext",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",110,111)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",112,114)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","win1.grid1.DeleteAllItems ( )",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To mymax Step 1)",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('name') Value",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('address') Value",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (oRS) Get Field ('phone') Value",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","win1.grid1.AddItem ( {cname,caddress,cphone} )",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",125,125)
Return
*-------------------------------------------------------------------*

*---------------------------------------------------------------------------*
* Time : 04:22:31    Date : 05/31/2012
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2012]  
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


Resistance R_TEST_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 696 ;
HEIGHT 263 ;
ICON "PWCTICON" ;
TITLE "test" ;
MAIN ;
BACKCOLOR {255,255,128} 

@ 7 ,9 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 111 ;
HEIGHT 31 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 56 ,6 LABEL lbl2 ;
VALUE "Address" ;
WIDTH 110 ;
HEIGHT 30 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 104 ,4 LABEL lbl3 ;
VALUE "Telephone" ;
WIDTH 110 ;
HEIGHT 30 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 9 ,139 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 210 ;
FONT "arial" SIZE 16 ;
BACKCOLOR {255,128,255} ;
FONTCOLOR {0,0,0} 

@ 58 ,141 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 210 ;
FONT "arial" SIZE 16 ;
BACKCOLOR {255,128,255} ;
FONTCOLOR {0,0,0} 

@ 102 ,139 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 210 ;
FONT "arial" SIZE 16 ;
BACKCOLOR {255,128,255} ;
FONTCOLOR {0,0,0} 

@ 158 ,15 BUTTONEX btn1;
CAPTION "Save Record";
ON CLICK SaveRecord()  ;
WIDTH 205 HEIGHT 46 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 157 ,466 BUTTONEX btn2;
CAPTION "Close Window";
ON CLICK Closewindow()  ;
WIDTH 209 HEIGHT 46 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 3 ,366 GRID Grid1;
WIDTH 304 ;
HEIGHT 138 ;
HEADERS {"Name","Address","Telephone"};
WIDTHS {100,100,100} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {128,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
@ 159 ,234 BUTTONEX btn3;
CAPTION "Show records";
ON CLICK Showrecords()  ;
WIDTH 216 HEIGHT 46 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc SaveRecord
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
ctelephone := win1.text3.Value
oRS:fields:item(alltrim("name")):value := cname
oRS:fields:item(alltrim("address")):value := caddress
oRS:fields:item(alltrim("telephone")):value := ctelephone
oRS:UPDATE()
oRS:Close()
oCon:CLOSE()
MyOut := MSGBOX("Data has been saved successfully","saved successfully")
Return Nil
Proc Closewindow
win1.Release ( )
Return Nil
Proc Showrecords
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
win1.Grid1.DeleteAllItems ( )
FOR x = 1 TO mymax STEP 1
cname := oRS:fields:item(alltrim("name")):value
caddress := oRS:fields:item(alltrim("address")):value
ctelephone := oRS:fields:item(alltrim("telephone")):value
win1.Grid1.AddItem ( {cname,caddress,ctelephone} )
oRS:MOVENEXT()
Next
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'test'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Address'",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",22,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Telephone'",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",31,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",39,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",46,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",53,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Save Record'",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action SaveRecord",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",62,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Close Window'",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Closewindow",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",68,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'Name','Address','Telephone'}",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",72,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Show records'",80,81)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Showrecords",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",83,85)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",86,87)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",88,90)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure SaveRecord",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",92,93)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=data.mdb'",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",95,96)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",97,99)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Add New Record",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","cname = win1.text1.Value",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = win1.text2.Value",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","ctelephone = win1.text3.Value",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('name') Value To (cname)",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('address') Value To (caddress)",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('telephone') Value To (ctelephone)",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Data has been saved successfully' Title 'saved successfully' Type: Message Box",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","procedure",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Closewindow",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Showrecords",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",116,117)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Ext",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",119,120)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",121,123)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To mymax Step 1)",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('name') Value",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('address') Value",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","ctelephone = ADODB RecordSet (oRS) Get Field ('telephone') Value",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {cname,caddress,ctelephone} )",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",134,134)
Return
*-------------------------------------------------------------------*

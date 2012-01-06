*---------------------------------------------------------------------------*
* Time : 22:45:02    Date : 12/30/2011
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


Resistance R_DATABASEAPPLICATIONS_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_DATABASEAPPLICATIONS_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 415 ;
HEIGHT 417 ;
ICON "PWCTICON" ;
TITLE "Database Applications " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 9 ,19 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 50 ;
HEIGHT 17 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 41 ,5 LABEL lbl2 ;
VALUE "Address" ;
WIDTH 63 ;
HEIGHT 17 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 77 ,17 LABEL lbl3 ;
VALUE "Phone" ;
WIDTH 51 ;
HEIGHT 24 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 7 ,72 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 40 ,72 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 73 ,71 TEXTBOX text3;
HEIGHT 29 ;
WIDTH 202 ;
FONT "arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 103 ,292 BUTTONEX btn1;
CAPTION "Save Record";
ON CLICK SaveRec()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 343 ,292 BUTTONEX btn2;
CAPTION "Close";
ON CLICK Close()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 141 ,10 GRID Grid1;
WIDTH 382 ;
HEIGHT 195 ;
HEADERS {"Name","Address","Phone"};
WIDTHS {100,100,100} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
@ 343 ,8 BUTTONEX btn3;
CAPTION "Show Records";
ON CLICK ShowRecords()  ;
WIDTH 141 HEIGHT 31 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Close
win1.Release ( )
Return Nil
Proc SaveRec
DO ConStr
cname := win1.text1.Value
caddress := win1.text2.Value
cphone := win1.text3.Value
oRS:ADDNEW()
oRS:fields:item("Name"):value := cname
oRS:fields:item("Address"):value := caddress
oRS:fields:item("Phone"):value := cphone
oRS:UPDATE()
oRS:Close()
oCon:CLOSE()
MyOut := MSGBOX("Operation done","OK")
Return Nil
Proc ShowRecords
DO ConStr
Count := oRS:RecordCount
oRS:MOVEFIRST()
FOR x = 1 TO Count STEP 1
name := oRS:fields:item("Name"):value
address := oRS:fields:item("Address"):value
Phone := oRS:fields:item("Phone"):value
win1.grid1.AddItem ( {name,address,phone} )
oRS:MOVENEXT()
Next
Return Nil
Proc ConStr
Public oCon,oRS
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=DB\Phone.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from Phone",oCon,3,3 )
Return Nil


End Of Resistance

INIT PROCEDURE Init_DATABASEAPPLICATIONS
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Database Applications '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Address'",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",23,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Phone'",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",33,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",42,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",49,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",56,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Save Record'",62,63)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action SaveRec",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",65,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Close'",68,69)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Close",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",71,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'Name','Address','Phone'}",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",75,82)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Show Records'",83,84)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ShowRecords",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",86,88)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",89,90)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",91,93)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Close",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure SaveRec",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ConStr",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","cname = win1.text1.Value",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = win1.text2.Value",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = win1.text3.Value",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Add New Record",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Name') Value To (cname)",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Address') Value To (caddress)",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Phone') Value To (cphone)",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Operation done' Title 'OK' Type: Message Box",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ShowRecords",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ConStr",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","Count := ADODB RecordSet (oRS) , Get Records Count",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To Count Step 1)",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","name = ADODB RecordSet (oRS) Get Field ('Name') Value",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","address = ADODB RecordSet (oRS) Get Field ('Address') Value",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","Phone = ADODB RecordSet (oRS) Get Field ('Phone') Value",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","win1.grid1.AddItem ( {name,address,phone} )",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ConStr",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","Public oCon,oRS",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",125,126)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Ext",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",128,129)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from Phone'",130,132)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",133,133)
Return
*-------------------------------------------------------------------*

*---------------------------------------------------------------------------*
* Time : 17:45:29    Date : 03/03/2012
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
WIDTH 587 ;
HEIGHT 334 ;
ICON "PWCTICON" ;
TITLE " test  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 44 ,24 LABEL lbl1 ;
VALUE " name " ;
WIDTH 57 ;
HEIGHT 27 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 81 ,23 LABEL lbl2 ;
VALUE " address " ;
WIDTH 53 ;
HEIGHT 28 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 120 ,17 LABEL lbl3 ;
VALUE " phone " ;
WIDTH 59 ;
HEIGHT 32 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 41 ,105 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 80 ,104 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 119 ,104 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 181 ,13 BUTTONEX btn1;
CAPTION "save record ";
ON CLICK saverecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 225 ,118 BUTTONEX btn2;
CAPTION "close window ";
ON CLICK closewindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 4 ,325 GRID Grid1;
WIDTH 226 ;
HEIGHT 235 ;
HEADERS {"name","address","phone"};
WIDTHS {100,100,100} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
@ 182 ,211 BUTTONEX btn3;
CAPTION " show records ";
ON CLICK showrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
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
oRS:fields:item(alltrim(" name ")):value := cname
oRS:fields:item(alltrim(" address ")):value := caddress
oRS:fields:item(alltrim(" phone ")):value := cphone
oRS:UPDATE()
oRS:Close()
oCon:CLOSE()
MyOut := MSGBOX(" operation done "," ok ")
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
FOR x = 1 TO mymax STEP 1
cname := oRS:fields:item(alltrim(" name ")):value
caddress := oRS:fields:item(alltrim(" address ")):value
cphone := oRS:fields:item(alltrim(" phone ")):value
win1.Grid1.AddItem ( {cname,caddress,cphone} )
oRS:MOVENEXT()
Next
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : ' test  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : ' name '",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : ' address '",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : ' phone '",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",33,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",40,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",47,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'save record '",53,54)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action saverecord()",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",56,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'close window '",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closewindow()",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",62,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'name','address','phone'}",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",66,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : ' show records '",74,75)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action showrecord()",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",77,79)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",80,81)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",82,84)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure saverecord",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",86,87)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Ext",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",89,90)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",91,93)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Add New Record",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","cname = win1.text1.Value",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = win1.text2.Value",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = win1.text3.Value",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field (' name ') Value To (cname)",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field (' address ') Value To (caddress)",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field (' phone ') Value To (cphone)",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' operation done ' Title ' ok ' Type: Message Box",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closewindow",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showrecord",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",110,111)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Ext",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",113,114)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",115,117)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To mymax Step 1)",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field (' name ') Value",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field (' address ') Value",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (oRS) Get Field (' phone ') Value",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {cname,caddress,cphone} )",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",127,127)
Return
*-------------------------------------------------------------------*

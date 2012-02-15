*---------------------------------------------------------------------------*
* Time : 14:47:32    Date : 02/10/2012
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


Resistance R_DATABASE1_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_DATABASE1_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 832 ;
HEIGHT 411 ;
ICON "PWCTICON" ;
TITLE "Telephone" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 36 ,14 LABEL lbl1 ;
VALUE "Name " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 107 ,14 LABEL lbl2 ;
VALUE "Address " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 179 ,14 LABEL lbl3 ;
VALUE "Telephone " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 33 ,229 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 101 ,229 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 174 ,229 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 252 ,91 BUTTONEX btn1;
CAPTION "Save Record ";
ON CLICK Add()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 252 ,273 BUTTONEX btn2;
CAPTION "Close ";
ON CLICK Close()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 9 ,455 GRID Grid1;
WIDTH 292 ;
HEIGHT 214 ;
HEADERS {"Name","Address","Phone"};
WIDTHS {100,100,100} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
@ 251 ,454 BUTTONEX btn3;
CAPTION "Show Recoed";
ON CLICK showrecords()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Close
win1.Release ( )
Return Nil
Proc Add
oRS:ADDNEW()
name := win1.text1.Value
address := win1.text2.Value
telephone := win1.text3.Value
oRS:fields:item("name"):value := name
oRS:fields:item("phone"):value := telephone
oRS:fields:item("address"):value := address
oRS:UPDATE()
oRS:Close()
oCon:CLOSE()
MyOut := MSGBOX("The record is added ","Database ")
Return Nil
Proc showrecords
DO connection
mymax := oRS:RecordCount
oRS:MOVEFIRST()
win1.grid1.DeleteAllItems ( )
FOR x = 1 TO mymax STEP 1
name := oRS:fields:item("name"):value
phone := oRS:fields:item("phone"):value
address := oRS:fields:item("address"):value
win1.grid1.AddItem ( {name,address,phone} )
oRS:MOVENEXT()
Next
Return Nil
Proc connection
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=test1.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from Tel",oCon,3,3 )


End Of Resistance

INIT PROCEDURE Init_DATABASE1
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Telephone'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name '",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Address '",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Telephone '",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",33,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",39,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",45,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Save Record '",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Add",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",53,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Close '",56,57)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Close",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",59,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'Name','Address','Phone'}",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",63,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Show Recoed'",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action showrecords",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",74,76)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",77,78)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",79,81)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Close",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Add",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Add New Record",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","name = win1.text1.Value",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","address = win1.text2.Value",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","telephone = win1.text3.Value",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('name') Value To (name)",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('phone') Value To (telephone)",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('address') Value To (address)",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'The record is added ' Title 'Database ' Type: Message Box",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showrecords",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure connection",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","win1.grid1.DeleteAllItems ( )",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To mymax Step 1)",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","name = ADODB RecordSet (oRS) Get Field ('name') Value",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","phone = ADODB RecordSet (oRS) Get Field ('phone') Value",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","address = ADODB RecordSet (oRS) Get Field ('address') Value",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","win1.grid1.AddItem ( {name,address,phone} )",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connection",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",112,113)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Ext",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",115,116)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from Tel'",117,119)
Return
*-------------------------------------------------------------------*

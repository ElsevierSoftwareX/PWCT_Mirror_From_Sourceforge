*---------------------------------------------------------------------------*
* Time : 16:38:33    Date : 03/01/2012
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


Resistance R_LES13_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LES13_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 852 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "»Ì«‰«  «·⁄„·«¡  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 97 ,284 LABEL lbl1 ;
VALUE "«·«”„ " ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 135 ,284 LABEL lbl2 ;
VALUE "«·⁄‰Ê«‰" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 177 ,284 LABEL lbl3 ;
VALUE "«·Â« ›" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 97 ,47 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 135 ,47 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 177 ,47 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 230 ,168 BUTTONEX btn1;
CAPTION "Õ›Ÿ «·»Ì«‰«  ";
ON CLICK saverecord()  ;
WIDTH 120 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 230 ,35 BUTTONEX btn2;
CAPTION "≈‰Â«¡ «·»—‰«„Ã ";
ON CLICK CloseWin()  ;
WIDTH 120 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 33 ,419 GRID Grid1;
WIDTH 403 ;
HEIGHT 237 ;
HEADERS {"name","address","phone"};
WIDTHS {100,100,100} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
@ 291 ,433 BUTTONEX btn3;
CAPTION "⁄—÷ ﬂ· «·”Ã·« ";
ON CLICK allrecords()  ;
WIDTH 382 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc CloseWin
win1.Release ( )
Return Nil
Proc saverecord
DO connect
oRS:ADDNEW()
cname := win1.text1.Value
caddress := win1.text2.Value
cphon := win1.text3.Value
oRS:fields:item("name"):value := cname
oRS:fields:item("address"):value := caddress
oRS:fields:item("phone"):value := cphon
oRS:UPDATE()
MyOut := MSGBOX(" „  «·⁄„·Ì… »‰Ã«Õ "," Õ›Ÿ")
oRS:Close()
oCon:CLOSE()
Return Nil
Proc allrecords
DO connect
mymax := oRS:RecordCount
oRS:MOVEFIRST()
win1.Grid1.DeleteAllItems ( )
FOR x = 1 TO mymax STEP 1
cname := oRS:fields:item("name"):value
caddress := oRS:fields:item("address"):value
cphon := oRS:fields:item("phone"):value
win1.Grid1.AddItem ( {cname,caddress,cphon} )
oRS:MOVENEXT()
Next
Return Nil
Proc connect
Public oCon,oRS
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=false;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=data.mdb' )
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from data",oCon,3,3 )
Return Nil


End Of Resistance

INIT PROCEDURE Init_LES13
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '»Ì«‰«  «·⁄„·«¡  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·«”„ '",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·⁄‰Ê«‰'",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '«·Â« ›'",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",33,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",39,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",45,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Õ›Ÿ «·»Ì«‰«  '",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action saverecord",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",53,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '≈‰Â«¡ «·»—‰«„Ã '",56,57)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CloseWin",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",59,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'name','address','phone'}",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",63,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : '⁄—÷ ﬂ· «·”Ã·« '",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action allrecords",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",74,76)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",77,78)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",79,81)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure CloseWin",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure saverecord",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure connect",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Add New Record",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","cname = win1.text1.Value",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = win1.text2.Value",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","cphon = win1.text3.Value",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('name') Value To (cname)",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('address') Value To (caddress)",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('phone') Value To (cphon)",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' „  «·⁄„·Ì… »‰Ã«Õ ' Title ' Õ›Ÿ' Type: Message Box",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure allrecords",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure connect",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To mymax Step 1)",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('name') Value",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('address') Value",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","cphon = ADODB RecordSet (oRS) Get Field ('phone') Value",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {cname,caddress,cphon} )",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","Public oCon,oRS",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=false;Ext",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from data'",117,119)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",120,120)
Return
*-------------------------------------------------------------------*

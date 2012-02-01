*---------------------------------------------------------------------------*
* Time : 20:24:07    Date : 01/31/2012
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
WIDTH 1009 ;
HEIGHT 421 ;
ICON "PWCTICON" ;
TITLE "Test" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {114,184,184} 

@ 45 ,41 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 76 ;
HEIGHT 20 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 126 ,41 LABEL lbl2 ;
VALUE "Address" ;
WIDTH 76 ;
HEIGHT 27 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 205 ,41 LABEL lbl3 ;
VALUE "Phone" ;
WIDTH 76 ;
HEIGHT 20 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 45 ,171 TEXTBOX text1;
HEIGHT 26 ;
WIDTH 329 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 126 ,171 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 329 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 205 ,171 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 329 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 302 ,109 BUTTONEX btn1;
CAPTION "Save Record";
BACKCOLOR {255,255,255};
ON CLICK saverecord()  ;
WIDTH 142 HEIGHT 27 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 302 ,317 BUTTONEX btn2;
CAPTION "Close Window";
ON CLICK closewindow()  ;
WIDTH 142 HEIGHT 27 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 45 ,567 GRID Grid1;
WIDTH 358 ;
HEIGHT 195 ;
HEADERS {"name","address","phone"};
WIDTHS {100,100,100} ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
@ 302 ,670 BUTTONEX btn3;
CAPTION "Show Records";
ON CLICK showrecords()  ;
WIDTH 142 HEIGHT 27 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 346 ,768 LABEL lbl4 ;
VALUE "Powered by PWCT 1.8 Smart" ;
WIDTH 222 ;
HEIGHT 22 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
DEFINE MAIN MENU
POPUP "File"
MENUITEM "Exit" Action myexit()
END POPUP
POPUP "Help"
MENUITEM "About" Action MSGINFO( "Copyrights Reserved Alexphone 1.0 2012" )
END POPUP
END MENU
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc saverecord
DO connect
oRS:ADDNEW()
cname := win1.text1.Value
caddress := win1.text2.Value
cphone := win1.text3.Value
oRS:fields:item("Name"):value := cname
oRS:fields:item("Address"):value := caddress
oRS:fields:item("Phone"):value := cphone
oRS:UPDATE()
oRS:Close()
oCon:CLOSE()
MyOut := MSGBOX("Operation Done","Ok")
Return Nil
Proc closewindow
win1.Release ( )
Return Nil
Proc showrecords
DO connect
mymax := oRS:RecordCount
oRS:MOVEFIRST()
win1.Grid1.DeleteAllItems ( )
FOR x = 1 TO mymax STEP 1
cname := oRS:fields:item("name"):value
caddress := oRS:fields:item("address"):value
cphone := oRS:fields:item("phone"):value
win1.Grid1.AddItem ( {cname,caddress,cphone} )
oRS:MOVENEXT()
Next
Return Nil
Proc connect
Public oCon,oRS
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=Data.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from tel",oCon,3,3 )
Return Nil
Proc myexit
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Test'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name'",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",15,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Address'",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",24,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Phone'",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",33,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",41,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",47,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",53,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Save Record'",58,60)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action saverecord()",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",62,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Close Window'",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closewindow()",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",68,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'name','address','phone'}",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",72,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Show Records'",80,81)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action showrecords()",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",83,85)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Powered by PWCT 1.8 Smart'",86,87)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",88,94)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit' )",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Help'",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About' )",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",103,104)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",105,107)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure saverecord",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure connect",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Add New Record",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","cname = win1.text1.Value",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = win1.text2.Value",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = win1.text3.Value",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Name') Value To (cname)",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Address') Value To (caddress)",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Phone') Value To (cphone)",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Operation Done' Title 'Ok' Type: Message Box",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closewindow",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showrecords",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure connect",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To mymax Step 1)",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('name') Value",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('address') Value",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (oRS) Get Field ('phone') Value",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {cname,caddress,cphone} )",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","Public oCon,oRS",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",140,141)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Ext",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",143,144)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",145,147)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myexit",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",151,151)
Return
*-------------------------------------------------------------------*

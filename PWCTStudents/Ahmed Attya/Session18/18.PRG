*---------------------------------------------------------------------------*
* Time : 09:51:25    Date : 01/04/2012
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


Resistance R_18_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_18_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 784 ;
HEIGHT 410 ;
ICON "PWCTICON" ;
TITLE "«·œ—” «·À«„‰ ⁄‘—" ;
MAIN ;
TOPMOST ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {192,192,192} 

@ 49 ,10 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 100 ;
HEIGHT 20 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 117 ,10 LABEL lbl2 ;
VALUE "Adderss" ;
WIDTH 100 ;
HEIGHT 20 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 188 ,10 LABEL lbl3 ;
VALUE "Phone" ;
WIDTH 100 ;
HEIGHT 20 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 45 ,131 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,128} ;
FONTCOLOR {0,0,0} 

@ 110 ,131 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,128} ;
FONTCOLOR {0,0,0} 

@ 183 ,131 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,128} ;
FONTCOLOR {0,0,0} 

@ 248 ,93 BUTTONEX btn1;
CAPTION "Save record";
ON CLICK saverecord()  ;
WIDTH 124 HEIGHT 35 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 248 ,225 BUTTONEX btn2;
CAPTION "Close Window";
FONTCOLOR {255,0,0};
BACKCOLOR {236,233,216};
ON CLICK closewindow()  ;
WIDTH 139 HEIGHT 34 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 41 ,394 GRID Grid1;
WIDTH 362 ;
HEIGHT 173 ;
HEADERS {"name","adderss","phone"};
WIDTHS {100,100,100} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,128} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
@ 249 ,494 BUTTONEX btn3;
CAPTION "Show Record";
FONTCOLOR {0,0,0};
ON CLICK showrecord()  ;
WIDTH 138 HEIGHT 34 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc saverecord
DO connect
oRS:ADDNEW()
cname := win1.text1.Value
cadderss := win1.text2.Value
cphone := win1.text3.Value
oRS:fields:item("name"):value := cname
oRS:fields:item("adderss"):value := cadderss
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
DO connect
mymax := oRS:RecordCount
oRS:MOVEFIRST()
win1.Grid1.DeleteAllItems ( )
FOR x = 1 TO mymax STEP 1
cname := oRS:fields:item("name"):value
cadderss := oRS:fields:item("adderss"):value
cphone := oRS:fields:item("phone"):value
win1.grid1.AddItem ( {cname,cadderss,cphone} )
oRS:MOVENEXT()
Next
Return Nil
Proc connect
Public oCon,oRS
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=data.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from tel",oCon,3,3 )
Return Nil


End Of Resistance

INIT PROCEDURE Init_18
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«·œ—” «·À«„‰ ⁄‘—'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name'",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",17,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Adderss'",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",26,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Phone'",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",35,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",43,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",49,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",55,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Save record'",60,61)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action saverecord()",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",63,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Close Window'",66,69)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closewindow()",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",71,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'name','adderss','phone'}",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",75,82)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Show Record'",83,85)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action showrecord()",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",87,89)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",90,91)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",92,94)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure saverecord",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure connect",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Add New Record",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","cname = win1.text1.Value",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","cadderss = win1.text2.Value",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = win1.text3.Value",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('name') Value To (cname)",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('adderss') Value To (cadderss)",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('phone') Value To (cphone)",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Operation Done' Title 'Ok' Type: Message Box",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closewindow",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showrecord",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure connect",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To mymax Step 1)",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('name') Value",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","cadderss = ADODB RecordSet (oRS) Get Field ('adderss') Value",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (oRS) Get Field ('phone') Value",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","win1.grid1.AddItem ( {cname,cadderss,cphone} )",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","Public oCon,oRS",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",127,128)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Ext",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",130,131)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",132,134)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",135,135)
Return
*-------------------------------------------------------------------*

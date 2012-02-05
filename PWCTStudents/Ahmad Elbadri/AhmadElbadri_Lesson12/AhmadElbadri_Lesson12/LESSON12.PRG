*---------------------------------------------------------------------------*
* Time : 15:50:32    Date : 02/04/2012
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


Resistance R_LESSON12_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON12_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON RELEASE closeconn()  ;
ICON "PWCTICON" ;
TITLE "Lesson12" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 29 ,52 LABEL lbl1 ;
VALUE "Name:" ;
WIDTH 60 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 85 ,52 LABEL lbl2 ;
VALUE "Address :" ;
WIDTH 86 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 141 ,52 LABEL lbl3 ;
VALUE "Phone :" ;
WIDTH 68 ;
HEIGHT 25 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 27 ,161 TEXTBOX textname;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 83 ,161 TEXTBOX textaddress;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 139 ,161 TEXTBOX textphone;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 271 ,11 BUTTONEX btn1;
CAPTION "First";
FONTCOLOR {0,64,0};
ON CLICK first()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 271 ,133 BUTTONEX btn2;
CAPTION "<<";
FONTCOLOR {0,0,128};
ON CLICK Prev()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 271 ,255 BUTTONEX btn3;
CAPTION ">>";
FONTCOLOR {0,0,128};
ON CLICK Next()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 271 ,377 BUTTONEX btn4;
CAPTION "Last";
FONTCOLOR {255,0,0};
ON CLICK last1()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

DO Connection
name1 := oRS:fields:item("name"):value
address1 := oRS:fields:item("address"):value
phone1 := oRS:fields:item("phone"):value
win1.textname.Value := name1
win1.textaddress.Value := address1
win1.textphone.Value := phone1
ACTIVATE WINDOW win1
EndIF

Proc Next
oRS:MOVENEXT()
endoffile := oRS:EOF()
IF endoffile
MyOut := MSGBOX("This Is The Last Name","End")
oRS:MOVEPREVIOUS()
ENDIF
name1 := oRS:fields:item("name"):value
address1 := oRS:fields:item("address"):value
phone1 := oRS:fields:item("phone"):value
win1.textname.Value := name1
win1.textaddress.Value := address1
win1.textphone.Value := phone1
Return Nil
Proc Prev
oRS:MOVEPREVIOUS()
check1 := oRS:BOF()
IF check1
MyOut := MSGBOX("This Is The First Name","First")
oRS:MOVENEXT()
ENDIF
name1 := oRS:fields:item("name"):value
address1 := oRS:fields:item("address"):value
phone1 := oRS:fields:item("phone"):value
win1.textname.Value := name1
win1.textaddress.Value := address1
win1.textphone.Value := phone1
Return Nil
Proc first
oRS:MOVEFIRST()
name1 := oRS:fields:item("name"):value
address1 := oRS:fields:item("address"):value
phone1 := oRS:fields:item("phone"):value
win1.textname.Value := name1
win1.textaddress.Value := address1
win1.textphone.Value := phone1
Return Nil
Proc last1
oRS:MOVELAST()
name1 := oRS:fields:item("name"):value
address1 := oRS:fields:item("address"):value
phone1 := oRS:fields:item("phone"):value
win1.textname.Value := name1
win1.textaddress.Value := address1
win1.textphone.Value := phone1
Return Nil
Proc Connection
Public oCon,oRS
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=db.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from tab",oCon,3,3 )
Return Nil
Proc closeconn
oRS:Close()
oCon:CLOSE()
Return Nil


End Of Resistance

INIT PROCEDURE Init_LESSON12
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Lesson12'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE : Action closeconn",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name:'",12,13)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",14,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Address :'",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",21,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Phone :'",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",28,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textname  )",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",34,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textaddress  )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",40,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textphone  )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",46,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'First'",52,54)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action first",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",56,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '<<'",59,61)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Prev",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",63,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : '>>'",66,68)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Next",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",70,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'Last'",73,75)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action last1",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",77,79)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",80,81)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure Connection",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","name1 = ADODB RecordSet (oRS) Get Field ('name') Value",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","address1 = ADODB RecordSet (oRS) Get Field ('address') Value",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","phone1 = ADODB RecordSet (oRS) Get Field ('phone') Value",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textname.Value := name1",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textaddress.Value := address1",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textphone.Value := phone1",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",89,91)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Next",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","endoffile = ADODB RecordSet oRS , Check EOF",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( endoffile )",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'This Is The Last Name' Title 'End' Type: Message Box",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","name1 = ADODB RecordSet (oRS) Get Field ('name') Value",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","address1 = ADODB RecordSet (oRS) Get Field ('address') Value",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","phone1 = ADODB RecordSet (oRS) Get Field ('phone') Value",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textname.Value := name1",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textaddress.Value := address1",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textphone.Value := phone1",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Prev",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","check1 = ADODB RecordSet oRS , Check BOF",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( check1 )",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'This Is The First Name' Title 'First' Type: Message Box",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","name1 = ADODB RecordSet (oRS) Get Field ('name') Value",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","address1 = ADODB RecordSet (oRS) Get Field ('address') Value",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","phone1 = ADODB RecordSet (oRS) Get Field ('phone') Value",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textname.Value := name1",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textaddress.Value := address1",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textphone.Value := phone1",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure first",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","name1 = ADODB RecordSet (oRS) Get Field ('name') Value",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","address1 = ADODB RecordSet (oRS) Get Field ('address') Value",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","phone1 = ADODB RecordSet (oRS) Get Field ('phone') Value",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textname.Value := name1",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textaddress.Value := address1",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textphone.Value := phone1",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure last1",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","name1 = ADODB RecordSet (oRS) Get Field ('name') Value",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","address1 = ADODB RecordSet (oRS) Get Field ('address') Value",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","phone1 = ADODB RecordSet (oRS) Get Field ('phone') Value",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textname.Value := name1",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textaddress.Value := address1",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textphone.Value := phone1",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Connection",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","Public oCon,oRS",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",140,141)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=db.mdb'",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",143,144)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tab'",145,147)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closeconn",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",152,152)
Return
*-------------------------------------------------------------------*

*---------------------------------------------------------------------------*
* Time : 05:52:54    Date : 06/01/2012
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
WIDTH 658 ;
HEIGHT 257 ;
ICON "PWCTICON" ;
TITLE "Telephone data base" ;
MAIN ;
BACKCOLOR {255,128,255} 

@ 18 ,252 LABEL lbl1 ;
VALUE "name" ;
WIDTH 90 ;
HEIGHT 36 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 57 ,252 LABEL lbl2 ;
VALUE "address" ;
WIDTH 91 ;
HEIGHT 30 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 96 ,252 LABEL lbl3 ;
VALUE "phone" ;
WIDTH 87 ;
HEIGHT 31 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 18 ,352 TEXTBOX textname;
HEIGHT 30 ;
WIDTH 230 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 55 ,352 TEXTBOX textaddress;
HEIGHT 30 ;
WIDTH 230 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 94 ,352 TEXTBOX textphone;
HEIGHT 30 ;
WIDTH 230 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 16 ,21 BUTTONEX btnFirst;
CAPTION "First Record";
ON CLICK FirstRecord()  ;
WIDTH 140 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 54 ,22 BUTTONEX btnNext;
CAPTION "Next Record";
ON CLICK NextRecord()  ;
WIDTH 140 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 93 ,22 BUTTONEX btnPrev;
CAPTION "Prev Record";
ON CLICK PrevRecord()  ;
WIDTH 140 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 132 ,22 BUTTONEX btnLast;
CAPTION "Last Record";
ON CLICK LastRecord()  ;
WIDTH 140 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 172 ,22 BUTTONEX btnClose;
CAPTION "Close Application";
ON CLICK Closesystem()  ;
WIDTH 218 HEIGHT 34 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

DO Contact
DO ShowRecord
ACTIVATE WINDOW win1
EndIF

Proc Contact
Public oConoRS
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=data.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from tel",oCon,3,3 )
oRS:MOVEFIRST()
Return Nil
Proc Disconnect
oRS:Close()
oCon:CLOSE()
Return Nil
Proc Closesystem
DO disconnect
win1.Release ( )
Return Nil
Proc ShowRecord
cname := oRS:fields:item(alltrim("name")):value
caddress := oRS:fields:item(alltrim("address")):value
cPhone := oRS:fields:item(alltrim("Phone")):value
win1.textname.Value := cname
win1.textaddress.Value := caddress
win1.textphone.Value := cphone
Return Nil
Proc FirstRecord
oRS:MOVEFIRST()
DO ShowRecord
Return Nil
Proc LastRecord
oRS:MOVELAST()
DO ShowRecord
Return Nil
Proc NextRecord
oRS:MOVENEXT()
mycheck := oRS:EOF()
IF mycheck
oRS:MOVEPREVIOUS()
MyOut := MSGBOX("           This end of the file         ","      Sorry     ")
ELSE
ENDIF
DO ShowRecord
Return Nil
Proc PrevRecord
oRS:MOVEPREVIOUS()
mycheck := oRS:BOF()
IF mycheck
oRS:MOVENEXT()
MyOut := MSGBOX("            This beginning of the file             ","   Sorry  ")
ELSE
ENDIF
DO ShowRecord
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Telephone data base'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'name'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'address'",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",22,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'phone'",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",31,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textname  )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",39,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textaddress  )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",46,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textphone  )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",53,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnFirst ) , Caption : 'First Record'",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action FirstRecord",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",62,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnNext ) , Caption : 'Next Record'",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action NextRecord",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",68,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnPrev ) , Caption : 'Prev Record'",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action PrevRecord",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",74,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnLast ) , Caption : 'Last Record'",77,78)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action LastRecord",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",80,82)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnClose ) , Caption : 'Close Application'",83,84)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Closesystem",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",86,88)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",89,90)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure Contact",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecord",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",93,95)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Contact",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Public oConoRS",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",98,99)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=data.mdb'",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",101,102)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",103,105)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Disconnect",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Closesystem",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure disconnect",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ShowRecord",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('name') Value",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('address') Value",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = ADODB RecordSet (oRS) Get Field ('Phone') Value",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textname.Value := cname",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textaddress.Value := caddress",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textphone.Value := cphone",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure FirstRecord",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecord",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure LastRecord",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecord",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure NextRecord",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check EOF",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '           This end of the file         ' Title '      Sorry     ' Type: Message Box",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecord",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure PrevRecord",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '            This beginning of the file             ' Title '   Sorry  ' Type: Message Box",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecord",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",151,151)
Return
*-------------------------------------------------------------------*

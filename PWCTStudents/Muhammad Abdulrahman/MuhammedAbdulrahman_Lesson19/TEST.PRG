*---------------------------------------------------------------------------*
* Time : 23:18:48    Date : 02/04/2012
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
DO connect
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 618 ;
HEIGHT 354 ;
ICON "PWCTICON" ;
TITLE "Telephone Database" ;
MAIN ;
NOSIZE ;
BACKCOLOR {88,171,171} 

@ 18 ,158 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 55 ;
HEIGHT 25 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 98 ,158 LABEL lbl2 ;
VALUE "Address" ;
WIDTH 83 ;
HEIGHT 27 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 175 ,158 LABEL lbl3 ;
VALUE "Phone" ;
WIDTH 64 ;
HEIGHT 31 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 18 ,265 TEXTBOX textName;
HEIGHT 27 ;
WIDTH 287 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 98 ,265 TEXTBOX textAddress;
HEIGHT 27 ;
WIDTH 287 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 175 ,265 TEXTBOX textPhone;
HEIGHT 27 ;
WIDTH 287 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 18 ,13 BUTTONEX btnFirst;
CAPTION "First Record";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK firstrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
NOXPSTYLE ;
TOOLTIP ""
@ 70 ,13 BUTTONEX btnNext;
CAPTION "Next Record";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK lastrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
NOXPSTYLE ;
TOOLTIP ""
@ 125 ,13 BUTTONEX btnPrev;
CAPTION "Prev Record";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK nextrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
NOXPSTYLE ;
TOOLTIP ""
@ 182 ,13 BUTTONEX btnLast;
CAPTION "Last Record";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK prevrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
NOXPSTYLE ;
TOOLTIP ""
@ 248 ,233 BUTTONEX btnClose;
CAPTION "CLose Application";
BACKCOLOR {236,233,216};
ON CLICK closesystem()  ;
WIDTH 175 HEIGHT 28 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
END WINDOW

DO showrecord
ACTIVATE WINDOW win1
EndIF

Proc connect
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=Data.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from tel",oCon,3,3 )
oRS:MOVEFIRST()
Public oCon,oRS
Return Nil
Proc disconnect
oRS:Close()
oCon:CLOSE()
Return Nil
Proc closesystem
DO disconnect
win1.Release ( )
Return Nil
Proc showrecord
cname := oRS:fields:item("name"):value
caddress := oRS:fields:item("address"):value
cphone := oRS:fields:item("phone"):value
win1.textName.Value := cname
win1.textAddress.Value := caddress
win1.textPhone.Value := cphone
Return Nil
Proc firstrecord
oRS:MOVEFIRST()
DO showrecord
Return Nil
Proc lastrecord
oRS:MOVELAST()
DO showrecord
Return Nil
Proc nextrecord
oRS:MOVENEXT()
DO showrecord
mycheck := oRS:EOF()
IF mycheck
oRS:MOVEPREVIOUS()
MyOut := MSGBOX("End Of File","Sorry")
ELSE
DO showrecord
ENDIF
Return Nil
Proc prevrecord
oRS:MOVEPREVIOUS()
DO showrecord
mycheck := oRS:BOF()
IF mycheck
oRS:MOVENEXT()
MyOut := MSGBOX("Begin Of File","Sorry")
ELSE
DO showrecord
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure connect",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Telephone Database'",2,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name'",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",15,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Address'",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",24,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Phone'",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",33,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textName  )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",41,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textAddress  )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",47,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textPhone  )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",53,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnFirst ) , Caption : 'First Record'",58,61)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action firstrecord()",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",63,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnNext ) , Caption : 'Next Record'",67,70)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lastrecord()",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",72,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnPrev ) , Caption : 'Prev Record'",76,79)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action nextrecord()",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",81,84)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnLast ) , Caption : 'Last Record'",85,88)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action prevrecord()",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",90,93)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnClose ) , Caption : 'CLose Application'",94,96)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closesystem()",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",98,100)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",101,102)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",104,106)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",108,109)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=Data.mdb'",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",111,112)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",113,115)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","Public oCon,oRS",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure disconnect",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure disconnect",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showrecord",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('name') Value",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('address') Value",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (oRS) Get Field ('phone') Value",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := cname",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Value := caddress",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Value := cphone",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure firstrecord",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lastrecord",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure nextrecord",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check EOF",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'End Of File' Title 'Sorry' Type: Message Box",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure prevrecord",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Begin Of File' Title 'Sorry' Type: Message Box",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",164,164)
Return
*-------------------------------------------------------------------*

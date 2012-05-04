*---------------------------------------------------------------------------*
* Time : 00:48:07    Date : 05/04/2012
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
WIDTH 486 ;
HEIGHT 271 ;
ICON "PWCTICON" ;
TITLE "TelePhone Database" ;
MAIN ;
BACKCOLOR {255,255,255} 

@ 40 ,162 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 58 ;
HEIGHT 23 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 82 ,162 LABEL lbl2 ;
VALUE "Address" ;
WIDTH 69 ;
HEIGHT 22 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 124 ,162 LABEL lbl3 ;
VALUE "Phone" ;
WIDTH 62 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 37 ,239 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 220 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 78 ,239 TEXTBOX textAddress;
HEIGHT 30 ;
WIDTH 220 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 117 ,239 TEXTBOX textPhone;
HEIGHT 30 ;
WIDTH 220 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 23 ,7 BUTTONEX btnFirst;
CAPTION "First Record";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK firstrecord()  ;
WIDTH 120 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 62 ,7 BUTTONEX btnNext;
CAPTION "Next Record";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK nextrecord()  ;
WIDTH 120 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 106 ,7 BUTTONEX btnPrev;
CAPTION "Prev Record";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK prevrecord()  ;
WIDTH 120 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 145 ,7 BUTTONEX btnLast;
CAPTION "Last Record";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK lastrecord()  ;
WIDTH 120 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 181 ,193 BUTTONEX btnClose;
CAPTION "Close Application";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK closesystem()  ;
WIDTH 224 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

DO connect
DO showrecord
ACTIVATE WINDOW win1
EndIF

Proc connect
Public oCon,oRs
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=data.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from Tel",oCon,3,3 )
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
win1.textPhone.Value := cPhone
Return Nil
Proc firstrecord
oRS:MOVEFIRST()
DO showrecord
Return Nil
Proc nextrecord
oRS:MOVENEXT()
mycheck := oRS:EOF()
IF mycheck
oRS:MOVEPREVIOUS()
MyOut := MSGBOX("End Of File","Sorry")
ELSE
DO showrecord
ENDIF
Return Nil
Proc lastrecord
oRS:MOVELAST()
DO showrecord
Return Nil
Proc prevrecord
oRS:MOVEPREVIOUS()
mycheck := oRS:BOF()
IF mycheck
oRS:MOVENEXT()
MyOut := MSGBOX("Begin Of File","Sorryð")
ELSE
DO showrecord
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'TelePhone Database'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Address'",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Phone'",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textName  )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",33,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textAddress  )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",39,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textPhone  )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",45,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnFirst ) , Caption : 'First Record'",50,53)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action firstrecord()",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",55,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnNext ) , Caption : 'Next Record'",59,62)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action nextrecord()",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",64,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnPrev ) , Caption : 'Prev Record'",68,71)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action prevrecord()",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",73,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnLast ) , Caption : 'Last Record'",77,80)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lastrecord()",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",82,85)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnClose ) , Caption : 'Close Application'",86,89)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closesystem()",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",91,94)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",95,96)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure connect",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",99,101)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","Public oCon,oRs",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",104,105)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=data.mdb'",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",107,108)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from Tel'",109,111)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure disconnect",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure disconnect",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showrecord",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('name') Value",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('address') Value",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (oRS) Get Field ('phone') Value",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := cname",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Value := caddress",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Value := cPhone",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure firstrecord",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure nextrecord",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check EOF",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'End Of File' Title 'Sorry' Type: Message Box",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lastrecord",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure prevrecord",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Begin Of File' Title 'Sorryð' Type: Message Box",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",156,156)
Return
*-------------------------------------------------------------------*

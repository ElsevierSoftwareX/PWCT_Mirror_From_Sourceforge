*---------------------------------------------------------------------------*
* Time : 11:30:07    Date : 03/30/2012
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
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Telphone Database" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 78 ,139 LABEL lbl1 ;
VALUE "Name " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 10  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 134 ,139 LABEL lbl2 ;
VALUE "Address " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 10  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 194 ,139 LABEL lbl3 ;
VALUE "Phone " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 10  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 72 ,224 TEXTBOX textName;
HEIGHT 29 ;
WIDTH 247 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 130 ,224 TEXTBOX textAddress;
HEIGHT 29 ;
WIDTH 247 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 187 ,225 TEXTBOX textPhone;
HEIGHT 27 ;
WIDTH 145 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 44 ,8 BUTTONEX btnFirst;
CAPTION "First Recrod ";
FONTCOLOR {0,0,0};
BACKCOLOR {33,163,120};
ON CLICK firstrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 10 ;
NOXPSTYLE ;
TOOLTIP ""
@ 96 ,8 BUTTONEX btnNext;
CAPTION "Next Record";
FONTCOLOR {0,0,0};
BACKCOLOR {33,163,120};
ON CLICK nextrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 10 ;
NOXPSTYLE ;
TOOLTIP ""
@ 149 ,8 BUTTONEX btnPrev;
CAPTION "Prev Record";
FONTCOLOR {0,0,0};
BACKCOLOR {33,163,120};
ON CLICK prevrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 10 ;
NOXPSTYLE ;
TOOLTIP ""
@ 199 ,8 BUTTONEX btnLast;
CAPTION "Last Record";
FONTCOLOR {0,0,0};
BACKCOLOR {33,163,120};
ON CLICK lastrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 10 ;
NOXPSTYLE ;
TOOLTIP ""
@ 242 ,154 BUTTONEX btnClose;
CAPTION "Close Application";
FONTCOLOR {0,0,0};
BACKCOLOR {0,128,0};
ON CLICK closesystem()  ;
WIDTH 145 HEIGHT 30 ;
FONT "arial" SIZE 12 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

DO showrecord
ACTIVATE WINDOW win1
EndIF

Proc connect
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=data.accdb;Persist Security Info=False;' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from tel",oCon,3,3 )
oRS:MOVEFIRST()
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
cname := oRS:fields:item(alltrim("name")):value
caddress := oRS:fields:item(alltrim("address")):value
cphone := oRS:fields:item(alltrim("phone")):value
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
mycheck := oRS:EOF()
IF mycheck
oRS:MOVEPREVIOUS()
MyOut := MSGBOX(" End of the file ","Sorry")
ELSE
DO showrecord
ENDIF
Return Nil
Proc prevrecord
oRS:MOVEPREVIOUS()
mycheck := oRS:BOF()
IF mycheck
oRS:MOVENEXT()
MyOut := MSGBOX("Beginig of the file","Sorry")
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
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Telphone Database'",2,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name '",12,13)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",14,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Address '",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",21,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Phone '",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",28,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textName  )",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",34,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textAddress  )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",41,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textPhone  )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",48,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnFirst ) , Caption : 'First Recrod '",54,57)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action firstrecord()",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",59,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnNext ) , Caption : 'Next Record'",63,66)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action nextrecord()",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",68,71)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnPrev ) , Caption : 'Prev Record'",72,75)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action prevrecord()",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",77,80)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnLast ) , Caption : 'Last Record'",81,84)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lastrecord()",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",86,89)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnClose ) , Caption : 'Close Application'",90,93)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closesystem()",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",95,98)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",99,100)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",102,104)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",106,107)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=data.accdb;Persist Security Info=False;'",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",109,110)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",111,113)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure disconnect",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure disconnect",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showrecord",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('name') Value",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('address') Value",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (oRS) Get Field ('phone') Value",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := cname",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Value := caddress",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Value := cphone",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure firstrecord",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lastrecord",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure nextrecord",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check EOF",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' End of the file ' Title 'Sorry' Type: Message Box",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure prevrecord",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Beginig of the file' Title 'Sorry' Type: Message Box",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",159,159)
Return
*-------------------------------------------------------------------*

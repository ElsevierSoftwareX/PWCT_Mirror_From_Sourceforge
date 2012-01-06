*---------------------------------------------------------------------------*
* Time : 11:56:18    Date : 01/04/2012
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


Resistance R_19_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_19_18smart1() code
DO connect
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 520 ;
HEIGHT 398 ;
ICON "PWCTICON" ;
TITLE "ÇáÏÑÓ ÇáÊÇÓÚ ÚÔÑ" ;
MAIN ;
TOPMOST ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,64,128} 

@ 45 ,171 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 95 ;
HEIGHT 39 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {0,64,128} ;
FONTCOLOR {255,255,255}
@ 129 ,171 LABEL lbl2 ;
VALUE "Adderss" ;
WIDTH 100 ;
HEIGHT 39 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {0,64,128} ;
FONTCOLOR {255,255,255}
@ 206 ,171 LABEL lbl3 ;
VALUE "Phone" ;
WIDTH 100 ;
HEIGHT 39 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {0,64,128} ;
FONTCOLOR {255,255,255}
@ 46 ,262 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,0} ;
FONTCOLOR {0,0,0} 

@ 129 ,262 TEXTBOX textadderss;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,0} ;
FONTCOLOR {0,0,0} 

@ 206 ,262 TEXTBOX textphone;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,128} ;
FONTCOLOR {0,0,0} 

@ 33 ,10 BUTTONEX btnFirst;
CAPTION "First Record";
FONTCOLOR {0,0,0};
BACKCOLOR {255,128,0};
ON CLICK firstrecord()  ;
WIDTH 124 HEIGHT 43 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 91 ,10 BUTTONEX btnNext;
CAPTION "Next Record";
FONTCOLOR {0,0,0};
BACKCOLOR {255,128,0};
ON CLICK nextrecord()  ;
WIDTH 124 HEIGHT 43 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 151 ,10 BUTTONEX btnPrev;
CAPTION "Prev Record";
FONTCOLOR {0,0,0};
BACKCOLOR {255,128,0};
ON CLICK prevrecord()  ;
WIDTH 124 HEIGHT 43 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 213 ,10 BUTTONEX btnLast;
CAPTION "Last Record";
FONTCOLOR {0,0,0};
BACKCOLOR {255,128,0};
ON CLICK lastrecord()  ;
WIDTH 124 HEIGHT 43 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 275 ,191 BUTTONEX btnClose;
CAPTION "Close App";
FONTCOLOR {0,0,0};
BACKCOLOR {255,0,0};
ON CLICK CloseApp()  ;
WIDTH 139 HEIGHT 37 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
DEFINE STATUSBAR 

STATUSITEM "Designed by Ahmed Attya"

DATE

CLOCK

END STATUSBAR

END WINDOW

DO showrecord
ACTIVATE WINDOW win1
EndIF

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
Proc disconnect
oRS:Close()
oCon:CLOSE()
Return Nil
Proc CloseApp
win1.Release ( )
Return Nil
Proc showrecord
cname := oRS:fields:item("name"):value
cadderss := oRS:fields:item("adderss"):value
cphone := oRS:fields:item("phone"):value
win1.textName.Value := cname
win1.textadderss.Value := cadderss
win1.textphone.Value := cphone
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
MyOut := MSGBOX("This the End of Dada","Sorry")
ELSE
DO showrecord
ENDIF
Return Nil
Proc prevrecord
oRS:MOVEPREVIOUS()
mycheck := oRS:BOF()
IF mycheck
oRS:MOVENEXT()
MyOut := MSGBOX("This the End of Dada","Sorry")
ELSE
DO showrecord
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_19
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure connect",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'ÇáÏÑÓ ÇáÊÇÓÚ ÚÔÑ'",2,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name'",16,17)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",18,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Adderss'",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",25,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Phone'",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",32,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textName  )",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",38,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textadderss  )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",45,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textphone  )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",52,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnFirst ) , Caption : 'First Record'",58,61)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action firstrecord()",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",63,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnNext ) , Caption : 'Next Record'",67,70)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action nextrecord()",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",72,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnPrev ) , Caption : 'Prev Record'",76,79)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action prevrecord()",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",81,84)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnLast ) , Caption : 'Last Record'",85,88)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lastrecord()",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",90,93)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnClose ) , Caption : 'Close App'",94,97)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CloseApp()",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",99,101)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",102,103)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Designed by Ahmed Attya' )",104,105)
SS_ESASTEP("Circuits\Main\Main\Main","Date",106,107)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",108,109)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",110,111)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",112,113)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",115,117)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","Public oCon,oRS",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",120,121)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=data.mdb'",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",123,124)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",125,127)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure disconnect",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure CloseApp",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showrecord",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('name') Value",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","cadderss = ADODB RecordSet (oRS) Get Field ('adderss') Value",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (oRS) Get Field ('phone') Value",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := cname",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textadderss.Value := cadderss",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textphone.Value := cphone",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure firstrecord",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lastrecord",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure nextrecord",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check EOF",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'This the End of Dada' Title 'Sorry' Type: Message Box",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure prevrecord",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'This the End of Dada' Title 'Sorry' Type: Message Box",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",171,171)
Return
*-------------------------------------------------------------------*

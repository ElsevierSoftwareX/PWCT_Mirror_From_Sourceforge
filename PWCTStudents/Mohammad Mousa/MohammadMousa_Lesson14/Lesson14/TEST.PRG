*---------------------------------------------------------------------------*
* Time : 11:04:43    Date : 07/12/2012
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
WIDTH 418 ;
HEIGHT 378 ;
ICON "PWCTICON" ;
TITLE "Telephone Database" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 284 ,9 BUTTONEX btn1;
CAPTION "Close Application";
FONTCOLOR {255,0,0};
ON CLICK close()  ;
WIDTH 204 HEIGHT 41 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 206 ,50 BUTTONEX btn2;
CAPTION "Next Record";
FONTCOLOR {255,255,255};
BACKCOLOR {128,64,64};
ON CLICK nextrecord()  ;
WIDTH 143 HEIGHT 29 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 240 ,141 BUTTONEX btn3;
CAPTION "Last Record";
FONTCOLOR {255,255,255};
BACKCOLOR {0,128,128};
ON CLICK lastrecord()  ;
WIDTH 121 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 170 ,142 BUTTONEX btn4;
CAPTION "First Record";
FONTCOLOR {255,255,255};
BACKCOLOR {0,128,64};
ON CLICK firstrecord()  ;
WIDTH 118 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 206 ,206 BUTTONEX btn5;
CAPTION "Previous Record";
FONTCOLOR {255,255,255};
BACKCOLOR {0,0,255};
ON CLICK prevrecord()  ;
WIDTH 152 HEIGHT 29 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 32 ,34 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 64 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 75 ,34 LABEL lbl2 ;
VALUE "Address" ;
WIDTH 83 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 121 ,34 LABEL lbl3 ;
VALUE "Phone" ;
WIDTH 73 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 29 ,145 TEXTBOX textname;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 73 ,145 TEXTBOX textaddress;
HEIGHT 30 ;
WIDTH 241 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 119 ,145 TEXTBOX textphone;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 289 ,253 BUTTONEX btn6;
CAPTION "Delete";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK delrecord()  ;
WIDTH 129 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

DO showrecord
ACTIVATE WINDOW win1
EndIF

Proc close
DO disconnect
win1.Release ( )
Return Nil
Proc connect
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
Proc firstrecord
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVEFIRST()
DO showrecord
ENDIF
Return Nil
Proc nextrecord
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVENEXT()
mycheck := oRS:EOF()
IF mycheck
oRS:MOVEPREVIOUS()
MyOut := MSGBOX("End of file","Sorry")
ELSE
DO showrecord
ENDIF
ENDIF
Return Nil
Proc lastrecord
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVELAST()
DO showrecord
ENDIF
Return Nil
Proc prevrecord
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVEPREVIOUS()
mycheck := oRS:BOF()
IF mycheck
oRS:MOVENEXT()
MyOut := MSGBOX("Begin of file","Sorry")
ELSE
DO showrecord
ENDIF
ENDIF
Return Nil
Proc showrecord
mymax := oRS:RecordCount
IF mymax > 0
cname := oRS:fields:item(alltrim("name")):value
caddress := oRS:fields:item(alltrim("address")):value
cphone := oRS:fields:item(alltrim("phone")):value
ELSE
cname := ""
caddress := ""
cphone := ""
ENDIF
win1.textname.Value := cname
win1.textaddress.Value := caddress
win1.textphone.Value := cphone
Return Nil
Proc delrecord
mymax := oRS:RecordCount
IF mymax > 0
MyOut := MSGOKCANCEL("Are you sure?","Delete")
IF myout = false
Return 0
ENDIF
oRS:DELETE()
oRS:UPDATE()
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVEPREVIOUS()
mycheck := oRS:BOF()
IF mycheck
oRS:MOVENEXT()
ENDIF
ENDIF
DO showrecord
ELSE
MyOut := MSGBOX("No record in file","Sorry")
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure connect",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Telephone Database'",2,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Close Application'",12,14)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action close()",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",16,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Next Record'",19,22)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action nextrecord()",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",24,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Last Record'",28,31)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lastrecord()",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",33,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'First Record'",37,40)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action firstrecord()",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",42,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Previous Record'",46,49)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action prevrecord()",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",51,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name'",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",57,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Address'",62,63)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",64,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Phone'",69,70)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",71,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textname  )",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",77,82)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textaddress  )",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",84,89)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textphone  )",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",91,96)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn6 ) , Caption : 'Delete'",97,100)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action delrecord()",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",102,105)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",106,107)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",109,111)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure disconnect",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",117,118)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Ext",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",120,121)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",122,124)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure disconnect",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure firstrecord",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure nextrecord",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check EOF",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'End of file' Title 'Sorry' Type: Message Box",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lastrecord",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure prevrecord",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Begin of file' Title 'Sorry' Type: Message Box",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showrecord",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('name') Value",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('address') Value",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (oRS) Get Field ('phone') Value",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ''",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ''",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ''",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textname.Value := cname",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textaddress.Value := caddress",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textphone.Value := cphone",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure delrecord",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Are you sure?' Title 'Delete' Type: Message Ok/Cancel",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout = false )",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No record in file' Title 'Sorry' Type: Message Box",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",206,206)
Return
*-------------------------------------------------------------------*

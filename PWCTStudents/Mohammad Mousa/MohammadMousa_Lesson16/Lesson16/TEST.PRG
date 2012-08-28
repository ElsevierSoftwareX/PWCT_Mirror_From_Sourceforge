*---------------------------------------------------------------------------*
* Time : 00:31:20    Date : 07/13/2012
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
Public savemode
savemode := 1
DO connect
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 606 ;
HEIGHT 378 ;
ICON "PWCTICON" ;
TITLE "Telephone Database" ;
MAIN ;
BACKCOLOR {128,64,0} 

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
@ 32 ,35 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 64 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,255,128}
@ 75 ,34 LABEL lbl2 ;
VALUE "Address" ;
WIDTH 83 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,255,128}
@ 121 ,34 LABEL lbl3 ;
VALUE "Phone" ;
WIDTH 73 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,255,128}
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
@ 159 ,373 BUTTONEX btn7;
CAPTION "Save";
FONTCOLOR {255,0,0};
BACKCOLOR {128,0,128};
ON CLICK saverecord()  ;
WIDTH 101 HEIGHT 33 ;
FONT "Arial" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
@ 158 ,484 BUTTONEX btn8;
CAPTION "Cancel";
FONTCOLOR {255,0,0};
BACKCOLOR {128,0,128};
ON CLICK cancelrecord()  ;
WIDTH 99 HEIGHT 33 ;
FONT "Arial" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
@ 121 ,430 BUTTONEX btn9;
CAPTION "Edit";
FONTCOLOR {255,0,0};
BACKCOLOR {128,0,128};
ON CLICK editrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
@ 198 ,415 BUTTONEX btn10;
CAPTION "Add Record";
FONTCOLOR {128,0,128};
BACKCOLOR {236,233,216};
ON CLICK addrecord()  ;
WIDTH 134 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
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
Proc mode( p1 )
IF p1 = 1
win1.btn1.Enabled := false
win1.btn2.Enabled := false
win1.btn3.Enabled := false
win1.btn4.Enabled := false
win1.btn5.Enabled := false
win1.btn6.Enabled := false
win1.btn9.Enabled := false
win1.btn7.Enabled := true
win1.btn8.Enabled := true
win1.btn10.Enabled := false
ENDIF
IF p1 = 2
win1.btn1.Enabled := true
win1.btn2.Enabled := true
win1.btn3.Enabled := true
win1.btn4.Enabled := true
win1.btn5.Enabled := true
win1.btn6.Enabled := true
win1.btn9.Enabled := true
win1.btn7.Enabled := false
win1.btn8.Enabled := false
win1.btn10.Enabled := true
ENDIF
Return Nil
Proc editrecord
mymax := oRS:RecordCount
IF mymax > 0
DO mode WITH 1
savemode := 1
ENDIF
Return Nil
Proc saverecord
DO mode WITH 2
cname := win1.textname.Value
caddress := win1.textaddress.Value
cphone := win1.textphone.Value
oRS:fields:item(alltrim("name")):value := cname
oRS:fields:item(alltrim("address")):value := caddress
oRS:fields:item(alltrim("phone")):value := cphone
oRS:UPDATE()
Return Nil
Proc cancelrecord
IF savemode = 2
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
ENDIF
DO mode WITH 2
DO showrecord
Return Nil
Proc addrecord
oRS:ADDNEW()
DO showrecord
savemode := 2
DO mode WITH 1
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Public savemode",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","savemode = 1",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure connect",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Telephone Database'",4,8)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",9,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Close Application'",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action close()",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",18,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Next Record'",21,24)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action nextrecord()",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",26,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Last Record'",30,33)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lastrecord()",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",35,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'First Record'",39,42)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action firstrecord()",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",44,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Previous Record'",48,51)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action prevrecord()",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",53,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name'",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",59,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Address'",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",67,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Phone'",73,74)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",75,80)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textname  )",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",82,87)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textaddress  )",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",89,94)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textphone  )",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",96,101)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn6 ) , Caption : 'Delete'",102,105)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action delrecord()",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",107,110)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn7 ) , Caption : 'Save'",111,114)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action saverecord()",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",116,119)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn8 ) , Caption : 'Cancel'",120,123)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action cancelrecord()",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",125,128)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn9 ) , Caption : 'Edit'",129,132)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action editrecord()",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",134,137)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn10 ) , Caption : 'Add Record'",138,141)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action addrecord()",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",143,145)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",146,147)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",149,151)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure disconnect",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",157,158)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Ext",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",160,161)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",162,164)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure disconnect",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure firstrecord",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure nextrecord",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check EOF",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'End of file' Title 'Sorry' Type: Message Box",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lastrecord",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure prevrecord",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Begin of file' Title 'Sorry' Type: Message Box",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showrecord",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('name') Value",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('address') Value",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (oRS) Get Field ('phone') Value",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ''",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ''",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ''",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textname.Value := cname",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textaddress.Value := caddress",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textphone.Value := cphone",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure delrecord",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Are you sure?' Title 'Delete' Type: Message Ok/Cancel",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout = false )",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No record in file' Title 'Sorry' Type: Message Box",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mode( p1 )",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1 = 1 )",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Enabled := false",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Enabled := false",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn3.Enabled := false",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn4.Enabled := false",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Enabled := false",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn6.Enabled := false",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn9.Enabled := false",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn7.Enabled := true",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn8.Enabled := true",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn10.Enabled := false",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1 = 2 )",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Enabled := true",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Enabled := true",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn3.Enabled := true",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn4.Enabled := true",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Enabled := true",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn6.Enabled := true",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn9.Enabled := true",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn7.Enabled := false",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn8.Enabled := false",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn10.Enabled := true",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure editrecord",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","savemode = 1",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure saverecord",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","cname = win1.textname.Value",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = win1.textaddress.Value",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = win1.textphone.Value",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('name') Value To (cname)",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('address') Value To (caddress)",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('phone') Value To (cphone)",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure cancelrecord",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( savemode = 2 )",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",294,294)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",295,295)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",296,296)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",297,297)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",298,298)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",299,299)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",300,300)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",301,301)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",302,302)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",303,303)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",304,304)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",305,305)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure addrecord",306,306)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Add New Record",307,307)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",308,308)
SS_ESASTEP("Circuits\Main\Main\Main","savemode = 2",309,309)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",310,310)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",311,311)
Return
*-------------------------------------------------------------------*

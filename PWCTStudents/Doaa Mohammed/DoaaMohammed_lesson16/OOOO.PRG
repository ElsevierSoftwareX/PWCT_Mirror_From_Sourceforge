*---------------------------------------------------------------------------*
* Time : 23:07:03    Date : 03/05/2012
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


Resistance R_OOOO_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_OOOO_18smart1() code
Public savemode
savemode := 1
DO connect
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 633 ;
HEIGHT 314 ;
ICON "PWCTICON" ;
TITLE " telephone data base  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 54 ,15 LABEL lbl1 ;
VALUE " name " ;
WIDTH 86 ;
HEIGHT 34 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 100 ,15 LABEL lbl2 ;
VALUE " address " ;
WIDTH 87 ;
HEIGHT 33 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 143 ,15 LABEL lbl3 ;
VALUE " phone " ;
WIDTH 86 ;
HEIGHT 32 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 46 ,132 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 95 ,132 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 146 ,132 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 11 ,367 BUTTONEX btn1;
CAPTION " first record ";
ON CLICK firstrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 60 ,367 BUTTONEX btn2;
CAPTION " next record ";
ON CLICK nextrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 105 ,367 BUTTONEX btn3;
CAPTION " prev record ";
ON CLICK prevrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 152 ,367 BUTTONEX btn4;
CAPTION " last record ";
ON CLICK lastrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 199 ,156 BUTTONEX btn5;
CAPTION " close application ";
ON CLICK closesystem()  ;
WIDTH 139 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 197 ,367 BUTTONEX btn6;
CAPTION " delete ";
ON CLICK delrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 30 ,495 BUTTONEX btn7;
CAPTION " save ";
ON CLICK saverecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 77 ,496 BUTTONEX btn8;
CAPTION " cancel ";
ON CLICK cancelrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 124 ,495 BUTTONEX btn9;
CAPTION " edit ";
ON CLICK editrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 171 ,495 BUTTONEX btn10;
CAPTION " add record ";
ON CLICK addrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

DO showrecord
DO mode WITH 2
ACTIVATE WINDOW win1
EndIF

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
Proc closesystem
DO disconnect
win1.Release ( )
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
win1.text1.Value := cname
win1.text2.Value := caddress
win1.text3.Value := cphone
Return Nil
Proc firstrecord
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVEFIRST()
DO showrecord
ENDIF
Return Nil
Proc lastrecord
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVELAST()
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
MyOut := MSGBOX(" END OF  FILE "," SORRY ")
ELSE
DO showrecord
ENDIF
ENDIF
Return Nil
Proc prevrecord
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVEPREVIOUS()
mycheck := oRS:BOF()
IF mycheck
oRS:MOVENEXT()
MyOut := MSGBOX(" BEGIN OF FILE "," SORRY ")
ELSE
DO showrecord
ENDIF
ENDIF
Return Nil
Proc delrecord
mymax := oRS:RecordCount
MyOut := MSGOKCANCEL(" Are you sure ? "," Delete ")
IF mymax > 0
IF myout = False
Return 0
ENDIF
oRS:DELETE()
oRS:UPDATE()
IF mymax > 0
oRS:MOVEPREVIOUS()
mycheck := oRS:BOF()
IF mycheck
oRS:MOVENEXT()
ENDIF
ELSE
MyOut := MSGBOX(" no record to delete "," sorry ")
ENDIF
DO showrecord
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
win1.btn7.Enabled := true
win1.btn8.Enabled := true
win1.btn9.Enabled := false
win1.btn10.Enabled := false
ENDIF
IF p1 = 2
win1.btn1.Enabled := true
win1.btn2.Enabled := true
win1.btn3.Enabled := true
win1.btn4.Enabled := true
win1.btn5.Enabled := true
win1.btn6.Enabled := true
win1.btn7.Enabled := false
win1.btn8.Enabled := false
win1.btn9.Enabled := true
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
cName := win1.text1.Value
cAddress := win1.text2.Value
cPhone := win1.text3.Value
oRS:fields:item(alltrim(" name ")):value := cName
oRS:fields:item(alltrim(" address ")):value := cAddress
oRS:fields:item(alltrim(" phone ")):value := cPhone
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
ELSE
MyOut := MSGBOX(" no record to delete "," sorry ")
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

INIT PROCEDURE Init_OOOO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Public savemode",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","savemode = 1",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure connect",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : ' telephone data base  '",4,8)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",9,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : ' name '",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : ' address '",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",23,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : ' phone '",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",30,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",36,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",43,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",50,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : ' first record '",56,57)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action firstrecord()",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",59,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : ' next record '",62,63)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action nextrecord()",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",65,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : ' prev record '",68,69)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action prevrecord()",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",71,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : ' last record '",74,75)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lastrecord()",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",77,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : ' close application '",80,81)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closesystem()",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",83,85)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn6 ) , Caption : ' delete '",86,87)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action delrecord()",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",89,91)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn7 ) , Caption : ' save '",92,93)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action saverecord()",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",95,97)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn8 ) , Caption : ' cancel '",98,99)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action cancelrecord()",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",101,103)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn9 ) , Caption : ' edit '",104,105)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action editrecord()",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",107,109)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn10 ) , Caption : ' add record '",110,111)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action addrecord()",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",113,115)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",116,117)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",120,122)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",124,125)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=data.mdb'",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",127,128)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",129,131)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure disconnect",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure disconnect",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showrecord",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('name') Value",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('address') Value",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (oRS) Get Field ('phone') Value",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ''",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ''",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ''",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := cname",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := caddress",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := cphone",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure firstrecord",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lastrecord",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure nextrecord",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check EOF",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' END OF  FILE ' Title ' SORRY ' Type: Message Box",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure prevrecord",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' BEGIN OF FILE ' Title ' SORRY ' Type: Message Box",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure delrecord",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' Are you sure ? ' Title ' Delete ' Type: Message Ok/Cancel",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout = False )",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' no record to delete ' Title ' sorry ' Type: Message Box",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mode( p1 )",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1 = 1 )",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Enabled := false",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Enabled := false",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn3.Enabled := false",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn4.Enabled := false",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Enabled := false",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn6.Enabled := false",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn7.Enabled := true",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn8.Enabled := true",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn9.Enabled := false",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn10.Enabled := false",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1 = 2 )",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Enabled := true",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Enabled := true",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn3.Enabled := true",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn4.Enabled := true",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Enabled := true",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn6.Enabled := true",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn7.Enabled := false",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn8.Enabled := false",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn9.Enabled := true",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn10.Enabled := true",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure editrecord",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","savemode = 1",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure saverecord",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.text1.Value",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = win1.text2.Value",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = win1.text3.Value",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field (' name ') Value To (cName)",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field (' address ') Value To (cAddress)",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field (' phone ') Value To (cPhone)",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure cancelrecord",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( savemode = 2 )",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' no record to delete ' Title ' sorry ' Type: Message Box",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure addrecord",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Add New Record",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","savemode = 2",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",283,283)
Return
*-------------------------------------------------------------------*

*---------------------------------------------------------------------------*
* Time : 00:02:48    Date : 04/21/2012
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


Resistance R_TEST_2_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST_2_18smart1() code
DO connect
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 649 ;
HEIGHT 329 ;
ICON "PWCTICON" ;
TITLE "Telephone database  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 29 ,193 LABEL lbl1 ;
VALUE "Name " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 79 ,193 LABEL lbl2 ;
VALUE "Address " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 129 ,193 LABEL lbl3 ;
VALUE "Phone " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 30 ,286 TEXTBOX textname;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 78 ,286 TEXTBOX textaddress;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 121 ,286 TEXTBOX textphone;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 16 ,20 BUTTONEX btn1;
CAPTION "First record ";
ON CLICK first()  ;
WIDTH 137 HEIGHT 41 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 66 ,20 BUTTONEX btn2;
CAPTION "Next record ";
ON CLICK next()  ;
WIDTH 137 HEIGHT 41 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 116 ,20 BUTTONEX btn3;
CAPTION "Previous record ";
ON CLICK prev()  ;
WIDTH 137 HEIGHT 41 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 223 ,20 BUTTONEX btn5;
CAPTION "close app ";
ON CLICK close()  ;
WIDTH 141 HEIGHT 40 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 172 ,23 BUTTONEX btn6;
CAPTION "last record ";
ON CLICK lastrecord()  ;
WIDTH 134 HEIGHT 41 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 222 ,187 BUTTONEX btn7;
CAPTION "Delete record ";
ON CLICK deleterec()  ;
WIDTH 147 HEIGHT 40 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 97 ,513 BUTTONEX btnsave;
CAPTION "save ";
ON CLICK saverecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 151 ,515 BUTTONEX btncancel;
CAPTION "cancel ";
ON CLICK cancelrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 43 ,511 BUTTONEX btnedit;
CAPTION "edit ";
ON CLICK editrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

DO showrecord
DO mode WITH 2
ACTIVATE WINDOW win1
EndIF

Proc connect
Public oCon,oRS
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=data.mdb' )
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from tel",oCon,3,3 )
Return Nil
Proc disconnect
oCon:CLOSE()
oRS:Close()
Return Nil
Proc showrecord
mymax := oRS:RecordCount
IF mymax > 0
cname := oRS:fields:item(alltrim("name ")):value
caddress := oRS:fields:item(alltrim("address")):value
cphone := oRS:fields:item(alltrim("phone")):value
ELSE
cname := " "
caddress := " "
cphone := " "
ENDIF
win1.textname.Value := cname
win1.textaddress.Value := caddress
win1.textphone.Value := cphone
Return Nil
procedure close()
win1.Release ( )
DO disconnect
return
procedure first()
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVEFIRST()
DO showrecord
ENDIF
return
procedure next()
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVENEXT()
mycheck := oRS:EOF()
IF mycheck
oRS:MOVEPREVIOUS()
MyOut := MSGBOX("End of file ","sorry ")
ELSE
DO showrecord
ENDIF
ENDIF
return
procedure prev()
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVEPREVIOUS()
mycheck := oRS:BOF()
IF mycheck
oRS:MOVENEXT()
MyOut := MSGBOX("begin of file ","sorry ")
ELSE
DO showrecord
ENDIF
ENDIF
return
procedure lastrecord()
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVELAST()
DO showrecord
ENDIF
return
procedure deleterec()
mymax := oRS:RecordCount
IF mymax > 0
MyOut := MSGOKCANCEL("Are you sure? "," Delete")
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
MyOut := MSGBOX("No record to delete "," sorry")
ENDIF
return
Proc mode( p1 )
IF p1 = 1
win1.btn1.Enabled := false
win1.btn2.Enabled := false
win1.btn3.Enabled := false
win1.btn5.Enabled := false
win1.btn6.Enabled := false
win1.btn7.Enabled := false
win1.btnedit.Enabled := false
win1.btnsave.Enabled := true
win1.btncancel.Enabled := true
ENDIF
IF p1 = 2
win1.btn1.Enabled := true
win1.btn2.Enabled := true
win1.btn3.Enabled := true
win1.btn5.Enabled := true
win1.btn6.Enabled := true
win1.btn7.Enabled := true
win1.btnedit.Enabled := true
win1.btnsave.Enabled := false
win1.btncancel.Enabled := false
ENDIF
Return Nil
Proc editrecord
mymax := oRS:RecordCount
IF mymax > 0
DO mode WITH 1
ENDIF
Return Nil
Proc saverecord
DO mode WITH 2
cname := win1.textname.Value
caddress := win1.textaddress.Value
cphone := win1.textphone.Value
oRS:fields:item(alltrim("name ")):value := cname
oRS:fields:item(alltrim("address ")):value := caddress
oRS:fields:item(alltrim("phone ")):value := cphone
oRS:UPDATE()
Return Nil
Proc cancelrecord
DO mode WITH 2
DO showrecord
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST_2
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure connect",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Telephone database  '",2,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name '",12,13)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",14,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Address '",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",21,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Phone '",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",28,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textname  )",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",34,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textaddress  )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",41,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textphone  )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",48,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'First record '",54,55)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action first",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",57,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Next record '",60,61)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action next",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",63,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Previous record '",66,67)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action prev",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",69,71)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'close app '",72,73)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action close",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",75,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn6 ) , Caption : 'last record '",78,79)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lastrecord",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",81,83)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn7 ) , Caption : 'Delete record '",84,85)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action deleterec",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",87,89)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnsave ) , Caption : 'save '",90,91)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action saverecord()",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",93,95)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btncancel ) , Caption : 'cancel '",96,97)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action cancelrecord()",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",99,101)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnedit ) , Caption : 'edit '",102,103)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action editrecord()",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",105,107)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",108,109)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",112,114)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","Public oCon,oRS",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=data.mdb'",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",120,122)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure disconnect",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showrecord",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('name ') Value",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('address') Value",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (oRS) Get Field ('phone') Value",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ' '",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ' '",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ' '",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textname.Value := cname",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textaddress.Value := caddress",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textphone.Value := cphone",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close ( Event : CLICK )",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure disconnect",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure first ( Event : CLICK )",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure next ( Event : CLICK )",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check EOF",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'End of file ' Title 'sorry ' Type: Message Box",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure prev ( Event : CLICK )",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'begin of file ' Title 'sorry ' Type: Message Box",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lastrecord ( Event : CLICK )",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure deleterec ( Event : CLICK )",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Are you sure? ' Title ' Delete' Type: Message Ok/Cancel",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout = false )",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No record to delete ' Title ' sorry' Type: Message Box",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mode( p1 )",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1 = 1 )",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Enabled := false",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Enabled := false",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn3.Enabled := false",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Enabled := false",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn6.Enabled := false",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn7.Enabled := false",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnedit.Enabled := false",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnsave.Enabled := true",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btncancel.Enabled := true",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1 = 2 )",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Enabled := true",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Enabled := true",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn3.Enabled := true",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Enabled := true",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn6.Enabled := true",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn7.Enabled := true",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnedit.Enabled := true",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnsave.Enabled := false",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btncancel.Enabled := false",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure editrecord",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure saverecord",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","cname = win1.textname.Value",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = win1.textaddress.Value",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = win1.textphone.Value",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('name ') Value To (cname)",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('address ') Value To (caddress)",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('phone ') Value To (cphone)",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure cancelrecord",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",252,252)
Return
*-------------------------------------------------------------------*

*---------------------------------------------------------------------------*
* Time : 03:24:54    Date : 06/03/2012
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
Public SafeMode
SafeMode := 1
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 831 ;
HEIGHT 270 ;
ICON "PWCTICON" ;
TITLE "Telephone data base" ;
MAIN ;
BACKCOLOR {255,128,255} 

@ 18 ,182 LABEL lbl1 ;
VALUE "name" ;
WIDTH 90 ;
HEIGHT 36 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 57 ,182 LABEL lbl2 ;
VALUE "address" ;
WIDTH 91 ;
HEIGHT 30 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 96 ,182 LABEL lbl3 ;
VALUE "phone" ;
WIDTH 87 ;
HEIGHT 31 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 19 ,272 TEXTBOX textname;
HEIGHT 30 ;
WIDTH 260 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 56 ,272 TEXTBOX textaddress;
HEIGHT 30 ;
WIDTH 260 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 94 ,272 TEXTBOX textphone;
HEIGHT 30 ;
WIDTH 260 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 16 ,21 BUTTONEX btnFirst;
CAPTION "First Record";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK FirstRecord()  ;
WIDTH 140 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
BOLD ;
DEFAULT ;
TOOLTIP ""
@ 54 ,22 BUTTONEX btnNext;
CAPTION "Next Record";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK NextRecord()  ;
WIDTH 140 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
BOLD ;
DEFAULT ;
TOOLTIP ""
@ 93 ,22 BUTTONEX btnPrev;
CAPTION "Prev Record";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK PrevRecord()  ;
WIDTH 140 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
BOLD ;
DEFAULT ;
TOOLTIP ""
@ 132 ,22 BUTTONEX btnLast;
CAPTION "Last Record";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK LastRecord()  ;
WIDTH 140 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
BOLD ;
DEFAULT ;
TOOLTIP ""
@ 172 ,22 BUTTONEX btnClose;
CAPTION "Close Application";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK Closesystem()  ;
WIDTH 218 HEIGHT 34 ;
FONT "Arial" SIZE 16 ;
BOLD ;
DEFAULT ;
TOOLTIP ""
@ 169 ,252 BUTTONEX btn5;
CAPTION "Deleterecord";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK Deleterecord()  ;
WIDTH 162 HEIGHT 32 ;
FONT "Arial" SIZE 16 ;
BOLD ;
DEFAULT ;
TOOLTIP ""
@ 55 ,551 BUTTONEX btnsave;
CAPTION "Save";
FONTCOLOR {0,0,0};
BACKCOLOR {128,255,128};
ON CLICK saverecord()  ;
WIDTH 120 HEIGHT 40 ;
FONT "Arial" SIZE 16 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 98 ,551 BUTTONEX btncancel;
CAPTION "Cancel";
FONTCOLOR {0,0,0};
BACKCOLOR {128,255,128};
ON CLICK cancalrecord()  ;
WIDTH 120 HEIGHT 40 ;
FONT "Arial" SIZE 16 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 11 ,551 BUTTONEX btnedit;
CAPTION "Edit";
FONTCOLOR {0,0,0};
BACKCOLOR {128,255,128};
ON CLICK editrecord()  ;
WIDTH 120 HEIGHT 40 ;
FONT "Arial" SIZE 16 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 15 ,680 BUTTONEX btnadd;
CAPTION "Add  record";
ON CLICK Addrecord()  ;
WIDTH 132 HEIGHT 39 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

DO Contact
DO ShowRecord
DO mode WITH 2
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
mymax := oRS:RecordCount
IF mymax > 0
cname := oRS:fields:item(alltrim("name")):value
caddress := oRS:fields:item(alltrim("address")):value
cPhone := oRS:fields:item(alltrim("Phone")):value
ELSE
cname := " "
cPhone := " "
caddress := " "
ENDIF
win1.textname.Value := cname
win1.textaddress.Value := caddress
win1.textphone.Value := cphone
Return Nil
Proc FirstRecord
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVEFIRST()
DO ShowRecord
ENDIF
Return Nil
Proc LastRecord
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVELAST()
DO ShowRecord
ENDIF
Return Nil
Proc NextRecord
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVENEXT()
mycheck := oRS:EOF()
IF mycheck
oRS:MOVEPREVIOUS()
MyOut := MSGBOX("  This end of the file "," Sorry   ")
ELSE
ENDIF
DO ShowRecord
ENDIF
Return Nil
Proc PrevRecord
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVEPREVIOUS()
mycheck := oRS:BOF()
IF mycheck
oRS:MOVENEXT()
MyOut := MSGBOX("            This beginning of the file             ","   Sorry  ")
ELSE
ENDIF
DO ShowRecord
ENDIF
Return Nil
Proc Deleterecord
mymax := oRS:RecordCount
MyOut := MSGOKCANCEL("Are you suor ?","Delete")
IF MyOut == true
IF mymax > 0
oRS:DELETE()
oRS:UPDATE()
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVEPREVIOUS()
oRS:MOVENEXT()
oRS:MOVELAST()
DO ShowRecord
ELSE
DO ShowRecord
ENDIF
ELSE
MyOut := MSGBOX("No Record to delete ","sorry")
ENDIF
ENDIF
Return Nil
Proc mode( p1 )
IF p1 = 1
win1.btnFirst.Enabled := false
win1.btnNext.Enabled := false
win1.btnPrev.Enabled := false
win1.btnLast.Enabled := false
win1.btnClose.Enabled := false
win1.btn5.Enabled := false
win1.btncancel.Enabled := true
win1.btnsave.Enabled := true
win1.btnedit.Enabled := false
win1.btnadd.Enabled := false
ENDIF
IF p1 = 2
win1.btnFirst.Enabled := true
win1.btnNext.Enabled := true
win1.btnPrev.Enabled := true
win1.btnLast.Enabled := true
win1.btnClose.Enabled := true
win1.btn5.Enabled := true
win1.btncancel.Enabled := false
win1.btnsave.Enabled := false
win1.btnedit.Enabled := true
win1.btnadd.Enabled := true
win1.btnedit.Enabled := true
win1.btnadd.Enabled := true
ENDIF
Return Nil
Proc editrecord
mymax := oRS:RecordCount
IF mymax > 0
DO mode WITH 1
SafeMode := 1
ENDIF
Return Nil
Proc saverecord
DO mode WITH 2
cName := win1.textname.Value
caddress := win1.textaddress.Value
cPhone := win1.textphone.Value
oRS:fields:item(alltrim("name")):value := cName
oRS:fields:item(alltrim("address")):value := cAddress
oRS:fields:item(alltrim("phone")):value := cPhone
oRS:UPDATE()
Return Nil
Proc cancalrecord
IF SafeMode = 2
oRS:DELETE()
oRS:UPDATE()
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVEPREVIOUS()
oRS:MOVENEXT()
oRS:MOVELAST()
DO ShowRecord
ELSE
DO ShowRecord
ENDIF
ENDIF
DO mode WITH 2
DO ShowRecord
Return Nil
Proc Addrecord
DO mode WITH 1
oRS:ADDNEW()
DO ShowRecord
SafeMode := 2
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Public SafeMode",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","SafeMode = 1",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Telephone data base'",3,7)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",8,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'name'",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",15,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'address'",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",24,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'phone'",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",33,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textname  )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",41,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textaddress  )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",48,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textphone  )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",55,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnFirst ) , Caption : 'First Record'",61,64)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action FirstRecord",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",66,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnNext ) , Caption : 'Next Record'",71,74)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action NextRecord",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",76,80)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnPrev ) , Caption : 'Prev Record'",81,84)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action PrevRecord",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",86,90)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnLast ) , Caption : 'Last Record'",91,94)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action LastRecord",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",96,100)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnClose ) , Caption : 'Close Application'",101,104)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Closesystem",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",106,110)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Deleterecord'",111,114)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Deleterecord",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",116,120)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnsave ) , Caption : 'Save'",121,124)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action saverecord",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",126,130)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btncancel ) , Caption : 'Cancel'",131,134)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action cancalrecord",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",136,140)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnedit ) , Caption : 'Edit'",141,144)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action editrecord",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",146,150)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnadd ) , Caption : 'Add  record'",151,152)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Addrecord",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",154,156)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",157,158)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure Contact",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecord",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",162,164)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Contact",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","Public oConoRS",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",167,168)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=data.mdb'",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",170,171)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",172,174)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Disconnect",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Closesystem",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure disconnect",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ShowRecord",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('name') Value",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('address') Value",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = ADODB RecordSet (oRS) Get Field ('Phone') Value",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ' '",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = ' '",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ' '",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textname.Value := cname",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textaddress.Value := caddress",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textphone.Value := cphone",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure FirstRecord",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecord",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure LastRecord",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecord",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure NextRecord",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check EOF",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '  This end of the file ' Title ' Sorry   ' Type: Message Box",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecord",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure PrevRecord",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '            This beginning of the file             ' Title '   Sorry  ' Type: Message",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecord",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Deleterecord",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Are you suor ?' Title 'Delete' Type: Message Ok/Cancel",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( MyOut == true )",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecord",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecord",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No Record to delete ' Title 'sorry' Type: Message Box",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mode( p1 )",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1 = 1 )",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFirst.Enabled := false",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := false",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnPrev.Enabled := false",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnLast.Enabled := false",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnClose.Enabled := false",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Enabled := false",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btncancel.Enabled := true",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnsave.Enabled := true",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnedit.Enabled := false",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnadd.Enabled := false",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1 = 2 )",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFirst.Enabled := true",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := true",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnPrev.Enabled := true",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnLast.Enabled := true",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnClose.Enabled := true",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Enabled := true",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btncancel.Enabled := false",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnsave.Enabled := false",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnedit.Enabled := true",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnadd.Enabled := true",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnedit.Enabled := true",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnadd.Enabled := true",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure editrecord",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","SafeMode = 1",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",294,294)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure saverecord",295,295)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",296,296)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.textname.Value",297,297)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = win1.textaddress.Value",298,298)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = win1.textphone.Value",299,299)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('name') Value To (cName)",300,300)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('address') Value To (cAddress)",301,301)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('phone') Value To (cPhone)",302,302)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",303,303)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",304,304)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure cancalrecord",305,305)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( SafeMode = 2 )",306,306)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",307,307)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",308,308)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",309,309)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",310,310)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",311,311)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",312,312)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",313,313)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecord",314,314)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",315,315)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecord",316,316)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",317,317)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",318,318)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",319,319)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecord",320,320)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",321,321)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Addrecord",322,322)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",323,323)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Add New Record",324,324)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecord",325,325)
SS_ESASTEP("Circuits\Main\Main\Main","SafeMode = 2",326,326)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",327,327)
Return
*-------------------------------------------------------------------*

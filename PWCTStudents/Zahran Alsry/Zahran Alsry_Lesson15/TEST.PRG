*---------------------------------------------------------------------------*
* Time : 08:20:28    Date : 06/02/2012
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
WIDTH 812 ;
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
cName := win1.textname.Value
caddress := win1.textaddress.Value
cPhone := win1.textphone.Value
oRS:fields:item(alltrim("name")):value := cName
oRS:fields:item(alltrim("address")):value := cAddress
oRS:fields:item(alltrim("phone")):value := cPhone
oRS:UPDATE()
Return Nil
Proc cancalrecord
DO mode WITH 2
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
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnFirst ) , Caption : 'First Record'",59,62)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action FirstRecord",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",64,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnNext ) , Caption : 'Next Record'",69,72)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action NextRecord",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",74,78)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnPrev ) , Caption : 'Prev Record'",79,82)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action PrevRecord",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",84,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnLast ) , Caption : 'Last Record'",89,92)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action LastRecord",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",94,98)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnClose ) , Caption : 'Close Application'",99,102)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Closesystem",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",104,108)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Deleterecord'",109,112)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Deleterecord",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",114,118)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnsave ) , Caption : 'Save'",119,122)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action saverecord",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",124,128)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btncancel ) , Caption : 'Cancel'",129,132)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action cancalrecord",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",134,138)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnedit ) , Caption : 'Edit'",139,142)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action editrecord",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",144,148)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",149,150)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure Contact",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecord",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",154,156)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Contact",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","Public oConoRS",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",159,160)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=data.mdb'",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",162,163)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",164,166)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Disconnect",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Closesystem",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure disconnect",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ShowRecord",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('name') Value",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('address') Value",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = ADODB RecordSet (oRS) Get Field ('Phone') Value",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ' '",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = ' '",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ' '",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textname.Value := cname",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textaddress.Value := caddress",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textphone.Value := cphone",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure FirstRecord",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecord",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure LastRecord",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecord",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure NextRecord",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check EOF",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '  This end of the file ' Title ' Sorry   ' Type: Message Box",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecord",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure PrevRecord",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '            This beginning of the file             ' Title '   Sorry  ' Type: Message",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecord",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Deleterecord",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Are you suor ?' Title 'Delete' Type: Message Ok/Cancel",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( MyOut == true )",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecord",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecord",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No Record to delete ' Title 'sorry' Type: Message Box",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mode( p1 )",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1 = 1 )",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFirst.Enabled := false",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := false",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnPrev.Enabled := false",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnLast.Enabled := false",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnClose.Enabled := false",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Enabled := false",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btncancel.Enabled := true",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnsave.Enabled := true",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1 = 2 )",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFirst.Enabled := true",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := true",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnPrev.Enabled := true",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnLast.Enabled := true",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnClose.Enabled := true",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Enabled := true",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btncancel.Enabled := false",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnsave.Enabled := false",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure editrecord",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure saverecord",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.textname.Value",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = win1.textaddress.Value",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = win1.textphone.Value",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('name') Value To (cName)",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('address') Value To (cAddress)",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('phone') Value To (cPhone)",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure cancalrecord",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecord",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",293,293)
Return
*-------------------------------------------------------------------*

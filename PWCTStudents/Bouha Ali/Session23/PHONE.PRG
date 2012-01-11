*---------------------------------------------------------------------------*
* Time : 19:58:40    Date : 01/11/2012
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


Resistance R_PHONE_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PHONE_18smart1() code
DO connect
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 630 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Phone Book Edit" ;
MAIN ;
TOPMOST ;
BACKCOLOR {0,0,0} 

@ 61 ,166 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 109 ;
HEIGHT 37 ;
AUTOSIZE ;
FONT "Comic Sans MS" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,0}
@ 115 ,163 LABEL lbl2 ;
VALUE "Address" ;
WIDTH 99 ;
HEIGHT 34 ;
AUTOSIZE ;
FONT "Comic Sans MS" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,0}
@ 168 ,164 LABEL lbl3 ;
VALUE "Phone" ;
WIDTH 101 ;
HEIGHT 36 ;
AUTOSIZE ;
FONT "Comic Sans MS" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,0}
@ 63 ,244 TEXTBOX textname;
HEIGHT 31 ;
WIDTH 216 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {128,128,0} ;
FONTCOLOR {255,255,255} 

@ 117 ,244 TEXTBOX textaddress;
HEIGHT 29 ;
WIDTH 217 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {128,128,0} ;
FONTCOLOR {255,255,255} 

@ 169 ,243 TEXTBOX textphone;
HEIGHT 32 ;
WIDTH 217 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {128,128,0} ;
FONTCOLOR {255,255,255} 

@ 262 ,313 BUTTONEX btnNext;
FONTCOLOR {0,0,0};
BACKCOLOR {255,128,64};
PICTURE "ButtonNext.BMP";
VERTICAL ;
UPPERTEXT ;
ON CLICK nextrec()  ;
WIDTH 144 HEIGHT 35 ;
FONT "Arial" SIZE 14 ;
FLAT ;
ADJUST ;
NOXPSTYLE ;
TOOLTIP ""
@ 262 ,162 BUTTONEX btnPrev;
FONTCOLOR {0,0,0};
BACKCOLOR {255,128,64};
PICTURE "ButtonPrevious.bmp";
VERTICAL ;
UPPERTEXT ;
ON CLICK prevrec()  ;
WIDTH 144 HEIGHT 35 ;
FONT "Arial" SIZE 14 ;
UNDERLINE ;
FLAT ;
ADJUST ;
NOXPSTYLE ;
TOOLTIP ""
@ 262 ,11 BUTTONEX btnFirst;
FONTCOLOR {0,0,0};
BACKCOLOR {255,128,64};
PICTURE "ButtonFirst.bmp";
VERTICAL ;
UPPERTEXT ;
ON CLICK firstrec()  ;
WIDTH 144 HEIGHT 35 ;
FONT "Arial" SIZE 14 ;
FLAT ;
ADJUST ;
NOXPSTYLE ;
TOOLTIP ""
@ 262 ,465 BUTTONEX btnLast;
FONTCOLOR {0,0,0};
BACKCOLOR {255,128,64};
PICTURE "ButtonLast.bmp";
VERTICAL ;
UPPERTEXT ;
ON CLICK lastreec()  ;
WIDTH 144 HEIGHT 35 ;
FONT "Arial" SIZE 14 ;
FLAT ;
ADJUST ;
NOXPSTYLE ;
TOOLTIP ""
@ 311 ,141 BUTTONEX btnClose;
CAPTION "Close Application";
FONTCOLOR {0,0,255};
BACKCOLOR {255,128,64};
ON CLICK closesystem()  ;
WIDTH 164 HEIGHT 36 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 311 ,314 BUTTONEX btnDelete;
CAPTION "Delete Record";
FONTCOLOR {0,0,255};
BACKCOLOR {255,128,64};
ON CLICK deleterec()  ;
WIDTH 164 HEIGHT 36 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 219 ,163 BUTTONEX btnEdit;
CAPTION "Edit Record";
FONTCOLOR {255,255,255};
BACKCOLOR {0,128,0};
ON CLICK editrecord()  ;
WIDTH 295 HEIGHT 34 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 311 ,489 BUTTONEX btnCancel;
CAPTION "Cancel Record";
FONTCOLOR {255,255,0};
BACKCOLOR {255,0,255};
ON CLICK cancelrecord()  ;
WIDTH 118 HEIGHT 34 ;
FONT "Comic Sans MS" SIZE 12 ;
NOXPSTYLE ;
TOOLTIP ""
@ 310 ,11 BUTTONEX btnSave;
CAPTION "Save Record";
FONTCOLOR {255,255,0};
BACKCOLOR {255,0,255};
ON CLICK saverecord()  ;
WIDTH 118 HEIGHT 34 ;
FONT "Comic Sans MS" SIZE 12 ;
NOXPSTYLE ;
TOOLTIP ""
@ 17 ,167 BUTTONEX btnadd;
CAPTION "Add Record";
FONTCOLOR {255,255,255};
BACKCOLOR {0,128,0};
ON CLICK addrec()  ;
WIDTH 295 HEIGHT 34 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

DO showrec
DO mode WITH 2
Public savemode
ACTIVATE WINDOW win1
EndIF

savemode := 1
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
Proc closesystem
DO disconnect
win1.Release ( )
Return Nil
Proc showrec
mymax := oRS:RecordCount
IF mymax > 0
cname := oRS:fields:item("Name"):value
caddress := oRS:fields:item("Address"):value
cphone := oRS:fields:item("Phone"):value
ELSE
cname := ""
caddress := ""
cphone := ""
ENDIF
win1.textname.Value := cname
win1.textaddress.Value := caddress
win1.textphone.Value := cphone
Return Nil
Proc firstrec
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVEFIRST()
DO showrec
ENDIF
Return Nil
Proc lastreec
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVELAST()
DO showrec
ENDIF
Return Nil
Proc nextrec
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVENEXT()
mycheck := oRS:EOF()
IF mycheck
oRS:MOVEPREVIOUS()
MyOut := MSGBOX("No More Records","Sorry")
ELSE
DO showrec
ENDIF
ENDIF
Return Nil
Proc prevrec
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVEPREVIOUS()
mycheck := oRS:BOF()
IF mycheck
oRS:MOVENEXT()
MyOut := MSGBOX("No More Records","Sorry")
ELSE
DO showrec
ENDIF
ENDIF
Return Nil
Proc deleterec
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
DO showrec
ELSE
MyOut := MSGBOX("No more records to delete","Sorry")
ENDIF
Return Nil
Proc mode( p1 )
IF p1 = 1
win1.btnFirst.Enabled := false
win1.btnLast.Enabled := false
win1.btnNext.Enabled := false
win1.btnPrev.Enabled := false
win1.btnDelete.Enabled := false
win1.btnClose.Enabled := false
win1.btnCancel.Enabled := true
win1.btnSave.Enabled := true
win1.btnEdit.Enabled := false
win1.btnadd.Enabled := false
ENDIF
IF p1 = 2
win1.btnFirst.Enabled := true
win1.btnLast.Enabled := true
win1.btnNext.Enabled := true
win1.btnPrev.Enabled := true
win1.btnClose.Enabled := true
win1.btnCancel.Enabled := false
win1.btnSave.Enabled := false
win1.btnEdit.Enabled := true
win1.btnDelete.Enabled := true
win1.btnadd.Enabled := true
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
cname := win1.textName.Value
caddress := win1.textAddress.Value
cphone := win1.textPhone.Value
oRS:fields:item("Name"):value := cname
oRS:fields:item("Address"):value := caddress
oRS:fields:item("Phone"):value := cphone
oRS:UPDATE()
MyOut := MSGBOX("Record Saved","OK")
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
DO showrec
Return Nil
Proc addrec
oRS:ADDNEW()
DO showrec
savemode := 2
DO mode WITH 1
Return Nil


End Of Resistance

INIT PROCEDURE Init_PHONE
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure connect",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Phone Book Edit'",2,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name'",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",15,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Address'",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",24,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Phone'",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",33,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textname  )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",41,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textaddress  )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",48,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textphone  )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",55,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnNext ) , Caption : 'Next Record'",61,66)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action nextrec()",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",68,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnPrev ) , Caption : '< Prev Record'",74,79)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action prevrec()",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",81,87)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnFirst ) , Caption : '<< First Record'",88,93)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action firstrec()",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",95,100)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnLast ) , Caption : 'Last Record >>'",101,106)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lastreec()",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",108,113)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnClose ) , Caption : 'Close Application'",114,117)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closesystem()",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",119,122)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnDelete ) , Caption : 'Delete Record'",123,126)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action deleterec()",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",128,131)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnEdit ) , Caption : 'Edit Record'",132,135)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action editrecord()",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",137,140)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnCancel ) , Caption : 'Cancel Record'",141,144)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action cancelrecord()",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",146,149)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnSave ) , Caption : 'Save Record'",150,153)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action saverecord()",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",155,158)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnadd ) , Caption : 'Add Record'",159,162)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action addrec()",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",164,167)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",168,169)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","Public savemode",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",173,175)
SS_ESASTEP("Circuits\Main\Main\Main","savemode = 1",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","Public oCon,oRS",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",179,180)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=data.mdb'",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",182,183)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",184,186)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure disconnect",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure disconnect",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showrec",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('Name') Value",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('Address') Value",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (oRS) Get Field ('Phone') Value",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ''",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ''",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ''",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textname.Value := cname",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textaddress.Value := caddress",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textphone.Value := cphone",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure firstrec",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lastreec",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure nextrec",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check EOF",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No More Records' Title 'Sorry' Type: Message Box",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure prevrec",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No More Records' Title 'Sorry' Type: Message Box",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure deleterec",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Are you sure?' Title 'Delete' Type: Message Ok/Cancel",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout = false )",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No more records to delete' Title 'Sorry' Type: Message Box",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mode( p1 )",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1 = 1 )",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFirst.Enabled := false",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnLast.Enabled := false",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := false",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnPrev.Enabled := false",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnDelete.Enabled := false",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnClose.Enabled := false",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnCancel.Enabled := true",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnSave.Enabled := true",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnEdit.Enabled := false",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnadd.Enabled := false",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1 = 2 )",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFirst.Enabled := true",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnLast.Enabled := true",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := true",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnPrev.Enabled := true",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnClose.Enabled := true",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnCancel.Enabled := false",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnSave.Enabled := false",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnEdit.Enabled := true",294,294)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnDelete.Enabled := true",295,295)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnadd.Enabled := true",296,296)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",297,297)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",298,298)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure editrecord",299,299)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",300,300)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",301,301)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",302,302)
SS_ESASTEP("Circuits\Main\Main\Main","savemode = 1",303,303)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",304,304)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",305,305)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure saverecord",306,306)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",307,307)
SS_ESASTEP("Circuits\Main\Main\Main","cname = win1.textName.Value",308,308)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = win1.textAddress.Value",309,309)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = win1.textPhone.Value",310,310)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Name') Value To (cname)",311,311)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Address') Value To (caddress)",312,312)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Phone') Value To (cphone)",313,313)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",314,314)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Record Saved' Title 'OK' Type: Message Box",315,315)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",316,316)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure cancelrecord",317,317)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( savemode = 2 )",318,318)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",319,319)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",320,320)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",321,321)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",322,322)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",323,323)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",324,324)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",325,325)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",326,326)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",327,327)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",328,328)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",329,329)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",330,330)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",331,331)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",332,332)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure addrec",333,333)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Add New Record",334,334)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",335,335)
SS_ESASTEP("Circuits\Main\Main\Main","savemode = 2",336,336)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",337,337)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",338,338)
Return
*-------------------------------------------------------------------*

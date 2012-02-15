*---------------------------------------------------------------------------*
* Time : 08:04:48    Date : 02/15/2012
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
WIDTH 859 ;
HEIGHT 354 ;
ICON "PWCTICON" ;
TITLE "Telephone Database" ;
MAIN ;
NOSIZE ;
BACKCOLOR {88,171,171} 

@ 0 ,0 IMAGE image1;
PICTURE "EGYPT.JPG";
STRETCH ;
WIDTH 850 HEIGHT 317
@ 28 ,158 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 55 ;
HEIGHT 25 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 98 ,158 LABEL lbl2 ;
VALUE "Address" ;
WIDTH 83 ;
HEIGHT 27 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 165 ,158 LABEL lbl3 ;
VALUE "Phone" ;
WIDTH 64 ;
HEIGHT 31 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 28 ,265 TEXTBOX textName;
HEIGHT 27 ;
WIDTH 407 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 98 ,265 TEXTBOX textAddress;
HEIGHT 27 ;
WIDTH 407 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 165 ,265 TEXTBOX textPhone;
HEIGHT 27 ;
WIDTH 407 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 19 ,13 BUTTONEX btnFirst;
CAPTION "First Record";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK firstrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
NOXPSTYLE ;
TOOLTIP ""
@ 70 ,13 BUTTONEX btnNext;
CAPTION "Next Record";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK lastrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
NOXPSTYLE ;
TOOLTIP ""
@ 125 ,13 BUTTONEX btnPrev;
CAPTION "Prev Record";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK nextrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
NOXPSTYLE ;
TOOLTIP ""
@ 182 ,13 BUTTONEX btnLast;
CAPTION "Last Record";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK prevrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
NOXPSTYLE ;
TOOLTIP ""
@ 236 ,656 BUTTONEX btnClose;
CAPTION "CLose Application";
BACKCOLOR {236,233,216};
ON CLICK closesystem()  ;
WIDTH 175 HEIGHT 28 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 236 ,13 BUTTONEX btnDel;
CAPTION "Delete";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK delrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 125 ,728 BUTTONEX btnSave;
CAPTION "Save";
ON CLICK saverecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 182 ,728 BUTTONEX btnCancel;
CAPTION "Cancel";
ON CLICK cancelrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 70 ,731 BUTTONEX btnEdit;
CAPTION "Edit";
ON CLICK editrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 19 ,729 BUTTONEX btnAdd;
CAPTION "Add Record";
ON CLICK addrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
END WINDOW

DO showrecord
DO mode WITH 2
ACTIVATE WINDOW win1
EndIF

Proc connect
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=Data.mdb' )
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
cname := oRS:fields:item("name"):value
caddress := oRS:fields:item("address"):value
cphone := oRS:fields:item("phone"):value
ELSE
cname := ""
caddress := ""
cphone := ""
ENDIF
win1.textName.Value := cname
win1.textAddress.Value := caddress
win1.textPhone.Value := cphone
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
MyOut := MSGBOX("End Of File","Sorry")
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
MyOut := MSGBOX("Begin Of File","Sorry")
ELSE
DO showrecord
ENDIF
ENDIF
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
IF mymax > 0
oRS:MOVEPREVIOUS()
mycheck := oRS:BOF()
IF mycheck
oRS:MOVENEXT()
ENDIF
ENDIF
DO showrecord
ELSE
MyOut := MSGBOX("No record to delete","Sorry")
ENDIF
Return Nil
Proc mode( p1 )
IF p1 = 1
win1.btnFirst.Enabled := false
win1.btnNext.Enabled := false
win1.btnPrev.Enabled := false
win1.btnLast.Enabled := false
win1.btnDel.Enabled := false
win1.btnClose.Enabled := false
win1.btnSave.Enabled := true
win1.btnCancel.Enabled := true
win1.btnEdit.Enabled := false
win1.btnAdd.Enabled := false
ENDIF
IF p1 = 2
win1.btnFirst.Enabled := True
win1.btnNext.Enabled := True
win1.btnPrev.Enabled := True
win1.btnLast.Enabled := True
win1.btnDel.Enabled := True
win1.btnClose.Enabled := True
win1.btnSave.Enabled := false
win1.btnCancel.Enabled := false
win1.btnEdit.Enabled := True
win1.btnAdd.Enabled := True
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
cName := win1.textName.Value
cAddress := win1.textAddress.Value
cPhone := win1.textPhone.Value
oRS:fields:item("name"):value := cName
oRS:fields:item("address"):value := cAddress
oRS:fields:item("phone"):value := cPhone
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
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",9,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'EGYPT.JPG'",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name'",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",21,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Address'",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",30,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Phone'",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",39,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textName  )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",47,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textAddress  )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",53,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textPhone  )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",59,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnFirst ) , Caption : 'First Record'",64,67)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action firstrecord()",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",69,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnNext ) , Caption : 'Next Record'",73,76)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lastrecord()",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",78,81)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnPrev ) , Caption : 'Prev Record'",82,85)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action nextrecord()",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",87,90)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnLast ) , Caption : 'Last Record'",91,94)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action prevrecord()",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",96,99)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnClose ) , Caption : 'CLose Application'",100,102)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closesystem()",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",104,106)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnDel ) , Caption : 'Delete'",107,110)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action delrecord()",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",112,114)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnSave ) , Caption : 'Save'",115,116)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action saverecord()",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",118,120)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnCancel ) , Caption : 'Cancel'",121,122)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action cancelrecord()",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",124,126)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnEdit ) , Caption : 'Edit'",127,128)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action editrecord()",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",130,132)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnAdd ) , Caption : 'Add Record'",133,134)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action addrecord()",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",136,138)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",139,140)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",143,145)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",147,148)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=Data.mdb'",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",150,151)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",152,154)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure disconnect",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure disconnect",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showrecord",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('name') Value",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('address') Value",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (oRS) Get Field ('phone') Value",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ''",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ''",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ''",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := cname",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Value := caddress",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Value := cphone",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure firstrecord",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lastrecord",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure nextrecord",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check EOF",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'End Of File' Title 'Sorry' Type: Message Box",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure prevrecord",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Begin Of File' Title 'Sorry' Type: Message Box",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure delrecord",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Are you sure?' Title 'Delete' Type: Message Ok/Cancel",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout = false )",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No record to delete' Title 'Sorry' Type: Message Box",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mode( p1 )",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1 = 1 )",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFirst.Enabled := false",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := false",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnPrev.Enabled := false",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnLast.Enabled := false",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnDel.Enabled := false",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnClose.Enabled := false",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnSave.Enabled := true",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnCancel.Enabled := true",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnEdit.Enabled := false",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnAdd.Enabled := false",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1 = 2 )",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFirst.Enabled := True",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := True",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnPrev.Enabled := True",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnLast.Enabled := True",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnDel.Enabled := True",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnClose.Enabled := True",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnSave.Enabled := false",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnCancel.Enabled := false",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnEdit.Enabled := True",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnAdd.Enabled := True",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure editrecord",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","savemode = 1",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure saverecord",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.textName.Value",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = win1.textAddress.Value",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = win1.textPhone.Value",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('name') Value To (cName)",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('address') Value To (cAddress)",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('phone') Value To (cPhone)",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure cancelrecord",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( savemode = 2 )",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",294,294)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",295,295)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",296,296)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",297,297)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",298,298)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure addrecord",299,299)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Add New Record",300,300)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",301,301)
SS_ESASTEP("Circuits\Main\Main\Main","savemode = 2",302,302)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",303,303)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",304,304)
Return
*-------------------------------------------------------------------*

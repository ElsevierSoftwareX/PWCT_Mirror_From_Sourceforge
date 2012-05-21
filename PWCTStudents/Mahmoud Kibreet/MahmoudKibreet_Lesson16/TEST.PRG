*---------------------------------------------------------------------------*
* Time : 01:41:13    Date : 05/08/2012
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
WIDTH 622 ;
HEIGHT 271 ;
ICON "PWCTICON" ;
TITLE "TelePhone Database" ;
MAIN ;
BACKCOLOR {255,255,255} 

@ 40 ,162 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 58 ;
HEIGHT 23 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 82 ,162 LABEL lbl2 ;
VALUE "Address" ;
WIDTH 69 ;
HEIGHT 22 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 124 ,162 LABEL lbl3 ;
VALUE "Phone" ;
WIDTH 62 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 37 ,239 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 220 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 78 ,239 TEXTBOX textAddress;
HEIGHT 30 ;
WIDTH 220 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 117 ,239 TEXTBOX textPhone;
HEIGHT 30 ;
WIDTH 220 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 23 ,7 BUTTONEX btnFirst;
CAPTION "First Record";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK firstrecord()  ;
WIDTH 132 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 61 ,7 BUTTONEX btnNext;
CAPTION "Next Record";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK nextrecord()  ;
WIDTH 132 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 105 ,7 BUTTONEX btnPrev;
CAPTION "Prev Record";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK prevrecord()  ;
WIDTH 132 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 144 ,7 BUTTONEX btnLast;
CAPTION "Last Record";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK lastrecord()  ;
WIDTH 132 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 179 ,233 BUTTONEX btnClose;
CAPTION "Close Application";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK closesystem()  ;
WIDTH 224 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 179 ,7 BUTTONEX btndel;
CAPTION "Delete Record";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK deleterecord()  ;
WIDTH 132 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 102 ,478 BUTTONEX btnSave;
CAPTION "Save";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK saverecord()  ;
WIDTH 120 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 139 ,478 BUTTONEX btnCancel;
CAPTION "Cancel";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK cancelrecord()  ;
WIDTH 120 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 63 ,478 BUTTONEX btnEdit;
CAPTION "Edit";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK editrecord()  ;
WIDTH 120 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 30 ,478 BUTTONEX btnAdd;
CAPTION "Add Record";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK addrecord()  ;
WIDTH 120 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

DO connect
DO showrecord
DO mode WITH 2
savemode := 1
Public savemode
ACTIVATE WINDOW win1
EndIF

Proc connect
Public oCon,oRs
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=data.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from Tel",oCon,3,3 )
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
cName := ""
cAddress := ""
cPhone := ""
ENDIF
win1.textName.Value := cname
win1.textAddress.Value := caddress
win1.textPhone.Value := cPhone
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
MyOut := MSGBOX("End Of File","Sorry")
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
MyOut := MSGBOX("Begin Of File","Sorryð")
ELSE
DO showrecord
ENDIF
Return Nil
ENDIF
Proc deleterecord
mymax := oRS:RecordCount
IF mymax > 0
MyOut := MSGOKCANCEL("Are You Sure?","Delete")
IF MyOut = false
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
MyOut := MSGBOX("No Record To Deleted","Sorry .......")
ENDIF
Return Nil
Proc mode( p1 )
IF p1 = 1
win1.btnFirst.Enabled := False
win1.btnNext.Enabled := False
win1.btnPrev.Enabled := False
win1.btnLast.Enabled := False
win1.btnDel.Enabled := False
win1.btnClose.Enabled := False
win1.btnSave.Enabled := True
win1.btnCancel.Enabled := True
win1.btnEdit.Enabled := False
win1.btnAdd.Enabled := False
ENDIF
IF p1 = 2
win1.btnFirst.Enabled := True
win1.btnNext.Enabled := True
win1.btnPrev.Enabled := True
win1.btnLast.Enabled := True
win1.btnDel.Enabled := True
win1.btnClose.Enabled := True
win1.btnSave.Enabled := False
win1.btnCancel.Enabled := False
win1.btnEdit.Enabled := True
win1.btnAdd.Enabled := True
ENDIF
Return Nil
Proc editrecord
mymax := oRS:RecordCount
IF mymax > 0
DO mode WITH 1
savemode := 1
Public savemode
ENDIF
Return Nil
Proc saverecord
DO mode WITH 2
cName := win1.textName.Value
cAddress := win1.textAddress.Value
cPhone := win1.textPhone.Value
oRS:fields:item("Name"):value := cName
oRS:fields:item("Address"):value := cAddress
oRS:fields:item("Phone"):value := cPhone
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
DO showrecord
ELSE
MyOut := MSGBOX("No Record To Deleted","Sorry .......")
ENDIF
DO mode WITH 2
DO showrecord
Return Nil
Proc addrecord
oRS:ADDNEW()
DO showrecord
savemode := 2
Public savemode
DO mode WITH 1
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'TelePhone Database'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Address'",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Phone'",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textName  )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",33,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textAddress  )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",39,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textPhone  )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",45,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnFirst ) , Caption : 'First Record'",50,53)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action firstrecord()",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",55,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnNext ) , Caption : 'Next Record'",59,62)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action nextrecord()",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",64,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnPrev ) , Caption : 'Prev Record'",68,71)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action prevrecord()",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",73,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnLast ) , Caption : 'Last Record'",77,80)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lastrecord()",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",82,85)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnClose ) , Caption : 'Close Application'",86,89)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closesystem()",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",91,94)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btndel ) , Caption : 'Delete Record'",95,98)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action deleterecord()",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",100,103)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnSave ) , Caption : 'Save'",104,107)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action saverecord()",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",109,112)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnCancel ) , Caption : 'Cancel'",113,116)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action cancelrecord()",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",118,121)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnEdit ) , Caption : 'Edit'",122,125)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action editrecord()",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",127,130)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnAdd ) , Caption : 'Add Record'",131,134)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action addrecord()",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",136,139)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",140,141)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure connect",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","savemode = 1",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","Public savemode",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",147,149)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","Public oCon,oRs",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",152,153)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=data.mdb'",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",155,156)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from Tel'",157,159)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure disconnect",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure disconnect",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showrecord",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('name') Value",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('address') Value",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (oRS) Get Field ('phone') Value",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","cName = ''",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = ''",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = ''",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := cname",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Value := caddress",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Value := cPhone",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure firstrecord",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure nextrecord",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check EOF",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'End Of File' Title 'Sorry' Type: Message Box",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lastrecord",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure prevrecord",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Begin Of File' Title 'Sorryð' Type: Message Box",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure deleterecord",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Are You Sure?' Title 'Delete' Type: Message Ok/Cancel",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( MyOut = false )",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No Record To Deleted' Title 'Sorry .......' Type: Message Box",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mode( p1 )",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1 = 1 )",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFirst.Enabled := False",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := False",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnPrev.Enabled := False",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnLast.Enabled := False",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnDel.Enabled := False",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnClose.Enabled := False",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnSave.Enabled := True",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnCancel.Enabled := True",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnEdit.Enabled := False",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnAdd.Enabled := False",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1 = 2 )",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFirst.Enabled := True",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := True",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnPrev.Enabled := True",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnLast.Enabled := True",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnDel.Enabled := True",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnClose.Enabled := True",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnSave.Enabled := False",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnCancel.Enabled := False",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnEdit.Enabled := True",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnAdd.Enabled := True",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure editrecord",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","savemode = 1",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","Public savemode",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure saverecord",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.textName.Value",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = win1.textAddress.Value",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = win1.textPhone.Value",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Name') Value To (cName)",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Address') Value To (cAddress)",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Phone') Value To (cPhone)",287,287)
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
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",302,302)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",303,303)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No Record To Deleted' Title 'Sorry .......' Type: Message Box",304,304)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",305,305)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",306,306)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",307,307)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",308,308)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure addrecord",309,309)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Add New Record",310,310)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",311,311)
SS_ESASTEP("Circuits\Main\Main\Main","savemode = 2",312,312)
SS_ESASTEP("Circuits\Main\Main\Main","Public savemode",313,313)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",314,314)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",315,315)
Return
*-------------------------------------------------------------------*

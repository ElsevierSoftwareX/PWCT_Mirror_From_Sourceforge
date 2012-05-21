*---------------------------------------------------------------------------*
* Time : 17:24:34    Date : 05/07/2012
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
WIDTH 601 ;
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
@ 181 ,193 BUTTONEX btnClose;
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
@ 77 ,476 BUTTONEX btnSave;
CAPTION "Save";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK saverecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 114 ,476 BUTTONEX btnCancel;
CAPTION "Cancel";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK cancelrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 38 ,476 BUTTONEX btnEdit;
CAPTION "Edit";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK editrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

DO connect
DO showrecord
DO mode WITH 2
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
oRS:UPDATE()
oRS:DELETE()
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
cName := win1.textName.Value
cAddress := win1.textAddress.Value
cPhone := win1.textPhone.Value
oRS:fields:item("Name"):value := cName
oRS:fields:item("Address"):value := cAddress
oRS:fields:item("Phone"):value := cPhone
oRS:UPDATE()
Return Nil
Proc cancelrecord
DO mode WITH 2
DO showrecord
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
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",131,132)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure connect",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",136,138)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","Public oCon,oRs",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",141,142)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=data.mdb'",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",144,145)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from Tel'",146,148)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure disconnect",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure disconnect",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showrecord",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('name') Value",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('address') Value",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (oRS) Get Field ('phone') Value",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","cName = ''",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = ''",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = ''",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := cname",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Value := caddress",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Value := cPhone",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure firstrecord",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure nextrecord",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check EOF",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'End Of File' Title 'Sorry' Type: Message Box",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lastrecord",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure prevrecord",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Begin Of File' Title 'Sorryð' Type: Message Box",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure deleterecord",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Are You Sure?' Title 'Delete' Type: Message Ok/Cancel",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( MyOut = false )",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No Record To Deleted' Title 'Sorry .......' Type: Message Box",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mode( p1 )",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1 = 1 )",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFirst.Enabled := False",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := False",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnPrev.Enabled := False",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnLast.Enabled := False",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnDel.Enabled := False",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnClose.Enabled := False",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnSave.Enabled := True",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnCancel.Enabled := True",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnEdit.Enabled := False",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1 = 2 )",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFirst.Enabled := True",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := True",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnPrev.Enabled := True",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnLast.Enabled := True",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnDel.Enabled := True",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnClose.Enabled := True",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnSave.Enabled := False",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnCancel.Enabled := False",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnEdit.Enabled := True",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure editrecord",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure saverecord",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.textName.Value",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = win1.textAddress.Value",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = win1.textPhone.Value",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Name') Value To (cName)",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Address') Value To (cAddress)",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Phone') Value To (cPhone)",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure cancelrecord",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",278,278)
Return
*-------------------------------------------------------------------*

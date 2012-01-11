*---------------------------------------------------------------------------*
* Time : 12:00:43    Date : 01/10/2012
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


Resistance R_19_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_19_18smart1() code
Public savemode
savemode := 1
DO connect
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 657 ;
HEIGHT 384 ;
ICON "PWCTICON" ;
TITLE "ÇáÏÑÓ ÇáÍÏí æÇáÚÔÑæä" ;
MAIN ;
TOPMOST ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {128,128,192} 

@ 52 ,179 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 95 ;
HEIGHT 39 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {128,128,192} ;
FONTCOLOR {0,0,0}
@ 134 ,179 LABEL lbl2 ;
VALUE "Adderss" ;
WIDTH 100 ;
HEIGHT 39 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {128,128,192} ;
FONTCOLOR {0,0,0}
@ 213 ,179 LABEL lbl3 ;
VALUE "Phone" ;
WIDTH 100 ;
HEIGHT 39 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {128,128,192} ;
FONTCOLOR {0,0,0}
@ 46 ,262 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 129 ,262 TEXTBOX textadderss;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 206 ,262 TEXTBOX textphone;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 43 ,10 BUTTONEX btnFirst;
CAPTION "First Record";
FONTCOLOR {0,0,0};
BACKCOLOR {255,128,0};
ON CLICK firstrecord()  ;
WIDTH 141 HEIGHT 34 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 91 ,10 BUTTONEX btnNext;
CAPTION "Next Record";
FONTCOLOR {0,0,0};
BACKCOLOR {255,128,0};
ON CLICK nextrecord()  ;
WIDTH 141 HEIGHT 34 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 141 ,10 BUTTONEX btnPrev;
CAPTION "Prev Record";
FONTCOLOR {0,0,0};
BACKCOLOR {255,128,0};
ON CLICK prevrecord()  ;
WIDTH 141 HEIGHT 34 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 193 ,10 BUTTONEX btnLast;
CAPTION "Last Record";
FONTCOLOR {0,0,0};
BACKCOLOR {255,128,0};
ON CLICK lastrecord()  ;
WIDTH 141 HEIGHT 34 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 275 ,191 BUTTONEX btnClose;
CAPTION "Close App";
FONTCOLOR {0,0,0};
BACKCOLOR {255,0,0};
ON CLICK CloseApp()  ;
WIDTH 139 HEIGHT 37 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 241 ,10 BUTTONEX btn5;
CAPTION "Delate Record";
FONTCOLOR {0,0,0};
BACKCOLOR {255,128,0};
ON CLICK delrecord()  ;
WIDTH 141 HEIGHT 34 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
DEFINE STATUSBAR 

STATUSITEM "Designed by Ahmed Attya"

DATE

CLOCK

END STATUSBAR

@ 129 ,484 BUTTONEX btnsave;
CAPTION "Save";
ON CLICK saverecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 207 ,484 BUTTONEX btncancel;
CAPTION "Cancel";
ON CLICK cancelrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 49 ,484 BUTTONEX btnedit;
CAPTION "Edit";
ON CLICK editrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 274 ,361 BUTTONEX btnAdd;
CAPTION "Add Record";
ON CLICK addrecord()  ;
WIDTH 139 HEIGHT 37 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

DO showrecord
DO mode WITH 2
ACTIVATE WINDOW win1
EndIF

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
Proc CloseApp
win1.Release ( )
Return Nil
Proc showrecord
mymax := oRS:RecordCount
IF mymax > 0
cname := oRS:fields:item("name"):value
cadderss := oRS:fields:item("adderss"):value
cphone := oRS:fields:item("phone"):value
ELSE
cname := ""
cadderss := ""
cphone := ""
ENDIF
win1.textName.Value := cname
win1.textadderss.Value := cadderss
win1.textphone.Value := cphone
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
MyOut := MSGBOX("This the End of Dada","Sorry")
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
MyOut := MSGBOX("This the End of Dada","Sorry")
ELSE
DO showrecord
ENDIF
ENDIF
Return Nil
Proc delrecord
MyOut := MSGOKCANCEL("Are You Sure","Delete")
IF myout = true
mymax := oRS:RecordCount
IF mymax > 0
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
win1.btnedit.Enabled := false
win1.btnsave.Enabled := true
win1.btncancel.Enabled := true
win1.btnAdd.Enabled := false
ENDIF
IF p1 = 2
win1.btnFirst.Enabled := true
win1.btnNext.Enabled := true
win1.btnPrev.Enabled := true
win1.btnLast.Enabled := true
win1.btnClose.Enabled := true
win1.btn5.Enabled := true
win1.btnedit.Enabled := true
win1.btnsave.Enabled := false
win1.btncancel.Enabled := false
win1.btnAdd.Enabled := true
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
cadderss := win1.textadderss.Value
cphone := win1.textphone.Value
oRS:fields:item("name"):value := cname
oRS:fields:item("adderss"):value := cadderss
oRS:fields:item("phone"):value := cphone
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

INIT PROCEDURE Init_19
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Public savemode",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","savemode = 1",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure connect",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'ÇáÏÑÓ ÇáÍÏí æÇáÚÔÑæä'",4,8)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",9,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name'",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Adderss'",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Phone'",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",34,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textName  )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",40,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textadderss  )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",47,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textphone  )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",54,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnFirst ) , Caption : 'First Record'",60,63)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action firstrecord()",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",65,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnNext ) , Caption : 'Next Record'",68,71)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action nextrecord()",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",73,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnPrev ) , Caption : 'Prev Record'",76,79)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action prevrecord()",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",81,83)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnLast ) , Caption : 'Last Record'",84,87)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lastrecord()",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",89,91)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnClose ) , Caption : 'Close App'",92,95)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CloseApp()",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",97,99)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Delate Record'",100,103)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action delrecord()",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",105,108)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",109,110)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Designed by Ahmed Attya' )",111,112)
SS_ESASTEP("Circuits\Main\Main\Main","Date",113,114)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",115,116)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",117,118)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnsave ) , Caption : 'Save'",119,120)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action saverecord()",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",122,124)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btncancel ) , Caption : 'Cancel'",125,126)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action cancelrecord()",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",128,130)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnedit ) , Caption : 'Edit'",131,132)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action editrecord()",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",134,136)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnAdd ) , Caption : 'Add Record'",137,138)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action addrecord()",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",140,142)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",143,144)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",147,149)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","Public oCon,oRS",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",152,153)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=data.mdb'",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",155,156)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",157,159)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure disconnect",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure CloseApp",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showrecord",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('name') Value",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","cadderss = ADODB RecordSet (oRS) Get Field ('adderss') Value",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (oRS) Get Field ('phone') Value",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ''",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","cadderss = ''",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ''",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := cname",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textadderss.Value := cadderss",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textphone.Value := cphone",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure firstrecord",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lastrecord",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure nextrecord",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check EOF",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'This the End of Dada' Title 'Sorry' Type: Message Box",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure prevrecord",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'This the End of Dada' Title 'Sorry' Type: Message Box",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure delrecord",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Are You Sure' Title 'Delete' Type: Message Ok/Cancel",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout = true )",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mode( p1 )",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1 = 1 )",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFirst.Enabled := false",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := false",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnPrev.Enabled := false",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnLast.Enabled := false",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnClose.Enabled := false",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Enabled := false",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnedit.Enabled := false",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnsave.Enabled := true",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btncancel.Enabled := true",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnAdd.Enabled := false",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1 = 2 )",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFirst.Enabled := true",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := true",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnPrev.Enabled := true",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnLast.Enabled := true",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnClose.Enabled := true",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Enabled := true",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnedit.Enabled := true",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnsave.Enabled := false",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btncancel.Enabled := false",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnAdd.Enabled := true",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure editrecord",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","savemode = 1",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure saverecord",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","cname = win1.textName.Value",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","cadderss = win1.textadderss.Value",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = win1.textphone.Value",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('name') Value To (cname)",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('adderss') Value To (cadderss)",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('phone') Value To (cphone)",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure cancelrecord",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( savemode = 2 )",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",294,294)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",295,295)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",296,296)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",297,297)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",298,298)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",299,299)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",300,300)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure addrecord",301,301)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Add New Record",302,302)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",303,303)
SS_ESASTEP("Circuits\Main\Main\Main","savemode = 2",304,304)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",305,305)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",306,306)
Return
*-------------------------------------------------------------------*

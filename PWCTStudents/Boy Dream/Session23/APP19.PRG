*---------------------------------------------------------------------------*
* Time : 21:11:41    Date : 01/07/2012
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


Resistance R_APP19_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_APP19_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 413 ;
HEIGHT 264 ;
ICON "PWCTICON" ;
TITLE "Using ADO  Lesson 2" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 118 ,2 BUTTONEX btn1;
CAPTION "|<";
FONTCOLOR {255,255,255};
BACKCOLOR {0,0,0};
ON CLICK FRec()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
@ 118 ,199 BUTTONEX btn2;
CAPTION ">>";
FONTCOLOR {255,255,255};
BACKCOLOR {0,0,0};
ON CLICK NRec()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
@ 118 ,102 BUTTONEX btn3;
CAPTION "<<";
FONTCOLOR {255,255,255};
BACKCOLOR {0,0,0};
ON CLICK PRec()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
@ 118 ,299 BUTTONEX btn4;
CAPTION ">|";
FONTCOLOR {255,255,255};
BACKCOLOR {0,0,0};
ON CLICK LRec()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
@ 188 ,297 BUTTONEX btn5;
CAPTION "Close";
FONTCOLOR {255,255,255};
BACKCOLOR {0,0,0};
ON CLICK Close()  ;
WIDTH 104 HEIGHT 31 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
@ 8 ,86 TEXTBOX text1;
HEIGHT 32 ;
WIDTH 310 ;
FONT "arial" SIZE 12 ;
BACKCOLOR {0,0,128} ;
FONTCOLOR {255,255,255} 

@ 45 ,86 TEXTBOX text2;
HEIGHT 33 ;
WIDTH 312 ;
FONT "arial" SIZE 12 ;
BACKCOLOR {0,0,128} ;
FONTCOLOR {255,255,255} 

@ 82 ,85 TEXTBOX text3;
HEIGHT 29 ;
WIDTH 152 ;
FONT "arial" SIZE 12 ;
BACKCOLOR {0,0,128} ;
FONTCOLOR {255,255,255} 

@ 8 ,27 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 54 ;
HEIGHT 23 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 45 ,6 LABEL lbl2 ;
VALUE "Address" ;
WIDTH 76 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 85 ,22 LABEL lbl3 ;
VALUE "Phone" ;
WIDTH 61 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 157 ,299 BUTTONEX btn6;
CAPTION "Delete";
FONTCOLOR {255,255,255};
BACKCOLOR {0,0,0};
ON CLICK Del()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
@ 157 ,203 BUTTONEX btn7;
CAPTION "Save";
FONTCOLOR {255,255,255};
BACKCOLOR {0,0,0};
ON CLICK Save()  ;
WIDTH 96 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
@ 157 ,104 BUTTONEX btn8;
CAPTION "Edit";
FONTCOLOR {255,255,255};
BACKCOLOR {0,0,0};
ON CLICK Edit()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
@ 157 ,3 BUTTONEX btn9;
CAPTION "Cancel";
FONTCOLOR {255,255,255};
BACKCOLOR {0,0,0};
ON CLICK Cancel()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
@ 190 ,3 BUTTONEX btn10;
CAPTION "Add";
FONTCOLOR {239,239,239};
BACKCOLOR {0,0,0};
ON CLICK Add()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 9 ;
DEFAULT ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

DO Con
DO GetRec
DO mode WITH 2
Public Prm
ACTIVATE WINDOW win1
EndIF

Proc Con
Public oCon,oRS
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=DB\Phone.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from Phone",oCon,3,3 )
Count := oRS:RecordCount
IF Count>0
oRS:MOVEFIRST()
ENDIF
Return Nil
Proc Dcon
oRS:Close()
oCon:CLOSE()
Return Nil
Proc Close
DO Dcon
win1.Release ( )
Return Nil
Proc GetRec
Count := oRS:RecordCount
IF Count>0
vName := oRS:fields:item("Name"):value
vAddress := oRS:fields:item("Address"):value
vPhone := oRS:fields:item("Phone"):value
win1.text1.Value := vName
win1.text2.Value := vAddress
win1.text3.Value := vPhone
ELSE
vName := ""
vAddress := ""
vPhone := ""
win1.text1.Value := vName
win1.text2.Value := vAddress
win1.text3.Value := vPhone
ENDIF
Return Nil
Proc FRec
Count := oRS:RecordCount
IF Count>0
oRS:MOVEFIRST()
DO GetRec
ENDIF
Return Nil
Proc LRec
Count := oRS:RecordCount
IF Count>0
oRS:MOVELAST()
DO GetRec
ENDIF
Return Nil
Proc NRec
Count := oRS:RecordCount
IF Count>0
oRS:MOVENEXT()
EOF := oRS:EOF()
IF EOF
oRS:MOVEFIRST()
DO GetRec
MyOut := MSGBOX("EOF","Error")
ELSE
DO GetRec
ENDIF
ENDIF
Return Nil
Proc PRec
Count := oRS:RecordCount
IF Count>0
oRS:MOVEPREVIOUS()
BOF := oRS:BOF()
IF BOF
oRS:MOVEFIRST()
DO GetRec
MyOut := MSGBOX("BOF","Error")
ELSE
DO GetRec
ENDIF
ENDIF
Return Nil
Proc Del
Count := oRS:RecordCount
IF Count>0
MyOut := MSGOKCANCEL("Delete Record","Confirm")
IF MyOut=true
oRS:DELETE()
oRS:UPDATE()
oRS:MOVEPREVIOUS()
BOF := oRS:BOF()
IF BOF
oRS:MOVEFIRST()
DO GetRec
ELSE
DO GetRec
ENDIF
ENDIF
ENDIF
Return Nil
Proc mode( p )
IF p=1
win1.btn1.Enabled := false
win1.btn2.Enabled := false
win1.btn3.Enabled := false
win1.btn4.Enabled := false
win1.btn5.Enabled := false
win1.btn6.Enabled := false
win1.btn8.Enabled := false
win1.btn7.Enabled := True
win1.btn9.Enabled := True
win1.text1.Enabled := True
win1.text2.Enabled := True
win1.text3.Enabled := True
win1.btn10.Enabled := False
ENDIF
IF p=2
win1.btn1.Enabled := True
win1.btn2.Enabled := True
win1.btn3.Enabled := True
win1.btn4.Enabled := True
win1.btn5.Enabled := True
win1.btn6.Enabled := True
win1.btn8.Enabled := True
win1.btn7.Enabled := False
win1.btn9.Enabled := False
win1.text1.Enabled := False
win1.text2.Enabled := False
win1.text3.Enabled := False
win1.btn10.Enabled := True
ENDIF
Return Nil
Proc Save
DO mode WITH 2
name := win1.text1.Value
address := win1.text2.Value
phone := win1.text3.Value
oRS:fields:item("Name"):value := name
oRS:fields:item("Address"):value := address
oRS:fields:item("Phone"):value := phone
oRS:UPDATE()
Return Nil
Proc Edit
Count := oRS:RecordCount
IF Count>0
DO mode WITH 1
Prm := 2
ENDIF
Return Nil
Proc Cancel
IF Prm=1
oRS:DELETE()
oRS:UPDATE()
Count := oRS:RecordCount
IF Count>0
oRS:MOVEPREVIOUS()
ENDIF
ENDIF
DO mode WITH 2
DO GetRec
Return Nil
Proc Add
oRS:ADDNEW()
DO GetRec
Prm := 1
DO mode WITH 1
Return Nil


End Of Resistance

INIT PROCEDURE Init_APP19
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Using ADO  Lesson 2'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '|<'",14,17)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action FRec",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",19,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '>>'",23,26)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action NRec",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",28,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : '<<'",32,35)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action PRec",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",37,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : '>|'",41,44)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action LRec",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",46,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Close'",50,53)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Close",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",55,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",60,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",67,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",74,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name'",80,81)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",82,86)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Address'",87,88)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",89,93)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Phone'",94,95)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",96,100)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn6 ) , Caption : 'Delete'",101,104)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Del",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",106,109)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn7 ) , Caption : 'Save'",110,113)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Save",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",115,118)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn8 ) , Caption : 'Edit'",119,122)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Edit",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",124,127)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn9 ) , Caption : 'Cancel'",128,131)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Cancel",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",133,136)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn10 ) , Caption : 'Add'",137,140)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Add",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",142,146)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",147,148)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure Con",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure GetRec",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","Public Prm",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",153,155)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Con",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","Public oCon,oRS",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",158,159)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=DB\Phone.mdb'",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",161,162)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from Phone'",163,165)
SS_ESASTEP("Circuits\Main\Main\Main","Count := ADODB RecordSet (oRS) , Get Records Count",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Count>0 )",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Dcon",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Close",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure Dcon",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure GetRec",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","Count := ADODB RecordSet (oRS) , Get Records Count",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Count>0 )",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","vName = ADODB RecordSet (oRS) Get Field ('Name') Value",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","vAddress = ADODB RecordSet (oRS) Get Field ('Address') Value",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","vPhone = ADODB RecordSet (oRS) Get Field ('Phone') Value",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := vName",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := vAddress",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := vPhone",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","vName = ''",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","vAddress = ''",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","vPhone = ''",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := vName",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := vAddress",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := vPhone",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure FRec",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","Count := ADODB RecordSet (oRS) , Get Records Count",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Count>0 )",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure GetRec",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure LRec",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","Count := ADODB RecordSet (oRS) , Get Records Count",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Count>0 )",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure GetRec",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure NRec",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","Count := ADODB RecordSet (oRS) , Get Records Count",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Count>0 )",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","EOF = ADODB RecordSet oRS , Check EOF",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( EOF )",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure GetRec",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'EOF' Title 'Error' Type: Message Box",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure GetRec",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure PRec",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","Count := ADODB RecordSet (oRS) , Get Records Count",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Count>0 )",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","BOF = ADODB RecordSet oRS , Check BOF",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( BOF )",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure GetRec",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'BOF' Title 'Error' Type: Message Box",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure GetRec",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Del",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","Count := ADODB RecordSet (oRS) , Get Records Count",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Count>0 )",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Delete Record' Title 'Confirm' Type: Message Ok/Cancel",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( MyOut=true )",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","BOF = ADODB RecordSet oRS , Check BOF",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( BOF )",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure GetRec",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure GetRec",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mode( p )",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p=1 )",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Enabled := false",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Enabled := false",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn3.Enabled := false",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn4.Enabled := false",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Enabled := false",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn6.Enabled := false",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn8.Enabled := false",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn7.Enabled := True",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn9.Enabled := True",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Enabled := True",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Enabled := True",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Enabled := True",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn10.Enabled := False",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p=2 )",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Enabled := True",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Enabled := True",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn3.Enabled := True",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn4.Enabled := True",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Enabled := True",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn6.Enabled := True",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn8.Enabled := True",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn7.Enabled := False",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn9.Enabled := False",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Enabled := False",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Enabled := False",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Enabled := False",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn10.Enabled := True",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Save",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","name = win1.text1.Value",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","address = win1.text2.Value",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","phone = win1.text3.Value",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Name') Value To (name)",294,294)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Address') Value To (address)",295,295)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Phone') Value To (phone)",296,296)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",297,297)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",298,298)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Edit",299,299)
SS_ESASTEP("Circuits\Main\Main\Main","Count := ADODB RecordSet (oRS) , Get Records Count",300,300)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Count>0 )",301,301)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",302,302)
SS_ESASTEP("Circuits\Main\Main\Main","Prm = 2",303,303)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",304,304)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",305,305)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Cancel",306,306)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Prm=1 )",307,307)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",308,308)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",309,309)
SS_ESASTEP("Circuits\Main\Main\Main","Count := ADODB RecordSet (oRS) , Get Records Count",310,310)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Count>0 )",311,311)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",312,312)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",313,313)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",314,314)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",315,315)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure GetRec",316,316)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",317,317)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Add",318,318)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Add New Record",319,319)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure GetRec",320,320)
SS_ESASTEP("Circuits\Main\Main\Main","Prm = 1",321,321)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",322,322)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",323,323)
Return
*-------------------------------------------------------------------*

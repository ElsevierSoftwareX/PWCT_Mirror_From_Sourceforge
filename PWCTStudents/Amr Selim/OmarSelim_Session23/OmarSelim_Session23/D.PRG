*---------------------------------------------------------------------------*
* Time : 22:38:20    Date : 02/06/2012
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
 * (Noun) *
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


Resistance R_D_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_D_18smart1() code
XX := 1
Public XX
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "System" ;
MAIN ;
BACKCOLOR {236,233,216} 

DEFINE MAIN MENU
POPUP "File"
MENUITEM "Close System" Action closesystem()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Ready"

KEYBOARD

CLOCK

END STATUSBAR

@ 19 ,22 LABEL lbl1 ;
VALUE "book " ;
WIDTH 57 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 63 ,22 LABEL lbl2 ;
VALUE "person" ;
WIDTH 57 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 107 ,22 LABEL lbl3 ;
VALUE "date" ;
WIDTH 57 ;
HEIGHT 25 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 25 ,65 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 62 ,65 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 99 ,65 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 181 ,13 BUTTONEX btn1;
CAPTION "first record";
ON CLICK firstre()  ;
WIDTH 100 HEIGHT 32 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 181 ,122 BUTTONEX btn2;
CAPTION "next record";
ON CLICK nextre()  ;
WIDTH 100 HEIGHT 32 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 181 ,340 BUTTONEX btn3;
CAPTION "last record";
ON CLICK lastrecc()  ;
WIDTH 100 HEIGHT 32 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 181 ,231 BUTTONEX btn4;
CAPTION "prev record ";
ON CLICK prev()  ;
WIDTH 100 HEIGHT 32 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 224 ,13 BUTTONEX btn5;
CAPTION "delete";
ON CLICK delrec()  ;
WIDTH 100 HEIGHT 32 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 224 ,231 BUTTONEX bCANCEL;
CAPTION "CANCEL ";
ON CLICK CANCELL()  ;
WIDTH 100 HEIGHT 32 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 224 ,340 BUTTONEX bSAVE;
CAPTION "SAVE ";
ON CLICK SAVEE()  ;
WIDTH 100 HEIGHT 32 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 224 ,122 BUTTONEX bEDIT;
CAPTION "EDIT ";
ON CLICK EDITT()  ;
WIDTH 100 HEIGHT 32 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 25 ,332 BUTTONEX btnADD;
CAPTION "ADD RECORD ";
ON CLICK ADDD()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

DO db
DO showrecord
DO MODEE WITH 2
ACTIVATE WINDOW win1
EndIF

Proc closesystem
win1.Release ( )
Return Nil
Proc db
Public oCon,oRS
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=db1.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from db1",oCon,3,3 )
Return Nil
Proc closecon
oRS:Close()
oCon:CLOSE()
Return Nil
Proc showrecord
mymax := oRS:RecordCount
IF mymax>0
vdate := oRS:fields:item("date"):value
vperson := oRS:fields:item("person"):value
vbook := oRS:fields:item("book"):value
ELSE
vbook := ""
vperson := ""
vdate := ""
ENDIF
win1.text1.Value := vbook
win1.text2.Value := vperson
win1.text3.Value := vdate
Return Nil
procedure firstre()
mymax := oRS:RecordCount
IF mymax>0
oRS:MOVEFIRST()
DO showrecord
ENDIF
return
procedure nextre()
mymax := oRS:RecordCount
IF mymax>0
oRS:MOVENEXT()
bEOF := oRS:EOF()
IF bEOF
MyOut := MSGBOX(" "," endof file")
ELSE
DO showrecord
ENDIF
ENDIF
return
procedure prev()
mymax := oRS:RecordCount
IF mymax>0
oRS:MOVEPREVIOUS()
bBOF := oRS:BOF()
IF bBOF
MyOut := MSGBOX(" "," begin of file")
ELSE
DO showrecord
ENDIF
ENDIF
return
Proc lastrecc
mymax := oRS:RecordCount
IF mymax>0
oRS:MOVELAST()
DO showrecord
ENDIF
Return Nil
procedure delrec()
MyOut := MSGOKCANCEL("are you sure "," delete")
IF myout=true
mymax := oRS:RecordCount
IF mymax>0
oRS:DELETE()
oRS:UPDATE()
oRS:MOVEPREVIOUS()
bBOF := oRS:BOF()
IF bBOF
MyOut := MSGBOX(" "," begin of file")
ELSE
DO showrecord
ENDIF
ENDIF
ENDIF
return
Proc MODEE( P1 )
IF P1=1
win1.btn1.Enabled := FALSE
win1.btn2.Enabled := FALSE
win1.btn3.Enabled := FALSE
win1.btn4.Enabled := FALSE
win1.btn5.Enabled := FALSE
win1.bCANCEL.Enabled := TRUE
win1.bSAVE.Enabled := TRUE
win1.bEDIT.Enabled := FALSE
win1.btnADD.Enabled := FALSE
ENDIF
IF P1=2
win1.btn1.Enabled := TRUE
win1.btn2.Enabled := TRUE
win1.btn3.Enabled := TRUE
win1.btn4.Enabled := TRUE
win1.btn5.Enabled := TRUE
win1.bCANCEL.Enabled := FALSE
win1.bSAVE.Enabled := FALSE
win1.bEDIT.Enabled := TRUE
win1.btnADD.Enabled := TRUE
ENDIF
Return Nil
procedure EDITT()
MYMAX := oRS:RecordCount
IF MYMAX>0
DO MODEE WITH 1
XX := 1
ENDIF
return
procedure SAVEE()
DO MODEE WITH 2
VBOOK := win1.text1.Value
VPERSON := win1.text2.Value
VDATE := win1.text3.Value
oRS:fields:item("BOOK"):value := VBOOK
oRS:fields:item("PERSON"):value := VPERSON
oRS:fields:item("DATE"):value := VDATE
oRS:UPDATE()
return
procedure CANCELL()
IF XX=2
oRS:DELETE()
oRS:UPDATE()
mymax := oRS:RecordCount
IF mymax>0
oRS:MOVEPREVIOUS()
bBOF := oRS:BOF()
IF bBOF
MyOut := MSGBOX(" "," begin of file")
ELSE
DO showrecord
ENDIF
ENDIF
ENDIF
DO MODEE WITH 2
DO SHOWRECORD
return
procedure ADDD()
oRS:ADDNEW()
DO SHOWRECORD
XX := 2
mymax := oRS:RecordCount
IF MYMAX>0
DO MODEE WITH 1
ENDIF
return


End Of Resistance

INIT PROCEDURE Init_D
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","XX = 1",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Public XX",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'System'",3,7)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",8,12)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close System' )",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'book '",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",30,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'person'",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",37,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'date'",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",44,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",50,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",56,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",62,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'first record'",67,68)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action firstre",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",70,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'next record'",73,74)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action nextre",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",76,78)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'last record'",79,80)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lastrecc",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",82,84)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'prev record '",85,86)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action prev",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",88,90)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'delete'",91,92)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action delrec",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",94,96)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( bCANCEL ) , Caption : 'CANCEL '",97,98)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CANCELL",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",100,102)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( bSAVE ) , Caption : 'SAVE '",103,104)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action SAVEE",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",106,108)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( bEDIT ) , Caption : 'EDIT '",109,110)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action EDITT",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",112,114)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnADD ) , Caption : 'ADD RECORD '",115,116)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ADDD",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",118,120)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",121,122)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure db",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure MODEE Parameters 2",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",126,128)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure db",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","Public oCon,oRS",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",134,135)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=db1.mdb'",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",137,138)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from db1'",139,141)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closecon",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showrecord",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","vdate = ADODB RecordSet (oRS) Get Field ('date') Value",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","vperson = ADODB RecordSet (oRS) Get Field ('person') Value",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","vbook = ADODB RecordSet (oRS) Get Field ('book') Value",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","vbook = ''",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","vperson = ''",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","vdate = ''",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := vbook",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := vperson",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := vdate",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure firstre ( Event : CLICK )",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure nextre ( Event : CLICK )",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","bEOF = ADODB RecordSet oRS , Check EOF",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( bEOF )",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' ' Title ' endof file' Type: Message Box",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure prev ( Event : CLICK )",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","bBOF = ADODB RecordSet oRS , Check BOF",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( bBOF )",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' ' Title ' begin of file' Type: Message Box",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lastrecc",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure delrec ( Event : CLICK )",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'are you sure ' Title ' delete' Type: Message Ok/Cancel",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout=true )",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","bBOF = ADODB RecordSet oRS , Check BOF",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( bBOF )",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' ' Title ' begin of file' Type: Message Box",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure MODEE( P1 )",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( P1=1 )",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Enabled := FALSE",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Enabled := FALSE",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn3.Enabled := FALSE",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn4.Enabled := FALSE",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Enabled := FALSE",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","win1.bCANCEL.Enabled := TRUE",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","win1.bSAVE.Enabled := TRUE",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","win1.bEDIT.Enabled := FALSE",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnADD.Enabled := FALSE",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( P1=2 )",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Enabled := TRUE",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Enabled := TRUE",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn3.Enabled := TRUE",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn4.Enabled := TRUE",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Enabled := TRUE",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","win1.bCANCEL.Enabled := FALSE",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","win1.bSAVE.Enabled := FALSE",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","win1.bEDIT.Enabled := TRUE",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnADD.Enabled := TRUE",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure EDITT ( Event : CLICK )",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","MYMAX := ADODB RecordSet (oRS) , Get Records Count",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( MYMAX>0 )",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure MODEE Parameters 1",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","XX = 1",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure SAVEE ( Event : CLICK )",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure MODEE Parameters 2",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","VBOOK = win1.text1.Value",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","VPERSON = win1.text2.Value",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","VDATE = win1.text3.Value",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('BOOK') Value To (VBOOK)",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('PERSON') Value To (VPERSON)",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('DATE') Value To (VDATE)",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure CANCELL ( Event : CLICK )",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( XX=2 )",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","bBOF = ADODB RecordSet oRS , Check BOF",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( bBOF )",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' ' Title ' begin of file' Type: Message Box",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure MODEE Parameters 2",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure SHOWRECORD",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ADDD ( Event : CLICK )",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Add New Record",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure SHOWRECORD",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","XX = 2",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( MYMAX>0 )",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure MODEE Parameters 1",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",284,284)
Return
*-------------------------------------------------------------------*

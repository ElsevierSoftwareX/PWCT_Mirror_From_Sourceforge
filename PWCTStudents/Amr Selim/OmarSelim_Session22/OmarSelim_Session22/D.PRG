*---------------------------------------------------------------------------*
* Time : 23:40:19    Date : 02/05/2012
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
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 181 ,124 BUTTONEX btn2;
CAPTION "next record";
ON CLICK nextre()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 181 ,346 BUTTONEX btn3;
CAPTION "last record";
ON CLICK lastrecc()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 181 ,235 BUTTONEX btn4;
CAPTION "prev record ";
ON CLICK prev()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 224 ,13 BUTTONEX btn5;
CAPTION "delete";
ON CLICK delrec()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 224 ,231 BUTTONEX bCANCEL;
CAPTION "CANCEL ";
ON CLICK CANCELL()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 224 ,340 BUTTONEX bSAVE;
CAPTION "SAVE ";
ON CLICK SAVEE()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 224 ,122 BUTTONEX bEDIT;
CAPTION "EDIT ";
ON CLICK EDITT()  ;
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
ENDIF
Return Nil
procedure EDITT()
MYMAX := oRS:RecordCount
IF MYMAX>0
DO MODEE WITH 1
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
DO MODEE WITH 2
return


End Of Resistance

INIT PROCEDURE Init_D
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'System'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close System' )",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",16,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'book '",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",28,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'person'",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",35,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'date'",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",42,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",48,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",54,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",60,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'first record'",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action firstre",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",68,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'next record'",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action nextre",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",74,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'last record'",77,78)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lastrecc",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",80,82)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'prev record '",83,84)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action prev",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",86,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'delete'",89,90)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action delrec",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",92,94)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( bCANCEL ) , Caption : 'CANCEL '",95,96)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CANCELL",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",98,100)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( bSAVE ) , Caption : 'SAVE '",101,102)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action SAVEE",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",104,106)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( bEDIT ) , Caption : 'EDIT '",107,108)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action EDITT",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",110,112)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",113,114)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure db",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure MODEE Parameters 2",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",118,120)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure db",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","Public oCon,oRS",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",126,127)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=db1.mdb'",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",129,130)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from db1'",131,133)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closecon",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showrecord",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","vdate = ADODB RecordSet (oRS) Get Field ('date') Value",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","vperson = ADODB RecordSet (oRS) Get Field ('person') Value",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","vbook = ADODB RecordSet (oRS) Get Field ('book') Value",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","vbook = ''",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","vperson = ''",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","vdate = ''",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := vbook",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := vperson",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := vdate",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure firstre ( Event : CLICK )",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure nextre ( Event : CLICK )",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","bEOF = ADODB RecordSet oRS , Check EOF",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( bEOF )",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' ' Title ' endof file' Type: Message Box",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure prev ( Event : CLICK )",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","bBOF = ADODB RecordSet oRS , Check BOF",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( bBOF )",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' ' Title ' begin of file' Type: Message Box",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lastrecc",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure delrec ( Event : CLICK )",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'are you sure ' Title ' delete' Type: Message Ok/Cancel",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout=true )",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","bBOF = ADODB RecordSet oRS , Check BOF",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( bBOF )",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' ' Title ' begin of file' Type: Message Box",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure MODEE( P1 )",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( P1=1 )",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Enabled := FALSE",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Enabled := FALSE",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn3.Enabled := FALSE",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn4.Enabled := FALSE",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Enabled := FALSE",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","win1.bCANCEL.Enabled := TRUE",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","win1.bSAVE.Enabled := TRUE",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","win1.bEDIT.Enabled := FALSE",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( P1=2 )",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Enabled := TRUE",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Enabled := TRUE",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn3.Enabled := TRUE",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn4.Enabled := TRUE",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Enabled := TRUE",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","win1.bCANCEL.Enabled := FALSE",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","win1.bSAVE.Enabled := FALSE",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","win1.bEDIT.Enabled := TRUE",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure EDITT ( Event : CLICK )",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","MYMAX := ADODB RecordSet (oRS) , Get Records Count",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( MYMAX>0 )",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure MODEE Parameters 1",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure SAVEE ( Event : CLICK )",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure MODEE Parameters 2",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","VBOOK = win1.text1.Value",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","VPERSON = win1.text2.Value",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","VDATE = win1.text3.Value",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('BOOK') Value To (VBOOK)",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('PERSON') Value To (VPERSON)",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('DATE') Value To (VDATE)",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure CANCELL ( Event : CLICK )",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure MODEE Parameters 2",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",249,249)
Return
*-------------------------------------------------------------------*

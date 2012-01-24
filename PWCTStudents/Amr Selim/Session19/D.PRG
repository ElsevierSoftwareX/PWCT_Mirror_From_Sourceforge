*---------------------------------------------------------------------------*
* Time : 21:48:59    Date : 01/22/2012
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
END WINDOW

DO db
DO showrecord
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
oRS:MOVEFIRST()
Return Nil
Proc closecon
oRS:Close()
oCon:CLOSE()
Return Nil
Proc showrecord
vdate := oRS:fields:item("date"):value
vperson := oRS:fields:item("person"):value
vbook := oRS:fields:item("book"):value
win1.text1.Value := vbook
win1.text2.Value := vperson
win1.text2.Value := vdate
Return Nil
procedure firstre()
oRS:MOVEFIRST()
DO showrecord
return
procedure nextre()
oRS:MOVENEXT()
bEOF := oRS:EOF()
IF bEOF
MyOut := MSGBOX(" "," endof file")
ELSE
DO showrecord
ENDIF
return
procedure prev()
oRS:MOVEPREVIOUS()
bBOF := oRS:BOF()
IF bBOF
MyOut := MSGBOX(" "," begin of file")
ELSE
DO showrecord
ENDIF
return
Proc lastrecc
oRS:MOVELAST()
DO showrecord
Return Nil


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
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",89,90)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure db",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",93,95)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure db",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Public oCon,oRS",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",101,102)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=db1.mdb'",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",104,105)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from db1'",106,108)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closecon",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showrecord",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","vdate = ADODB RecordSet (oRS) Get Field ('date') Value",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","vperson = ADODB RecordSet (oRS) Get Field ('person') Value",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","vbook = ADODB RecordSet (oRS) Get Field ('book') Value",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := vbook",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := vperson",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := vdate",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure firstre ( Event : CLICK )",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure nextre ( Event : CLICK )",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","bEOF = ADODB RecordSet oRS , Check EOF",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( bEOF )",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' ' Title ' endof file' Type: Message Box",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure prev ( Event : CLICK )",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","bBOF = ADODB RecordSet oRS , Check BOF",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( bBOF )",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' ' Title ' begin of file' Type: Message Box",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lastrecc",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",148,148)
Return
*-------------------------------------------------------------------*

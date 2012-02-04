*---------------------------------------------------------------------------*
* Time : 18:43:24    Date : 02/03/2012
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


Resistance R_LESSON19_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON19_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 478 ;
HEIGHT 342 ;
ICON "PWCTICON" ;
TITLE "Lesson 19" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 107 ,165 LABEL lbl1 ;
VALUE "Name " ;
WIDTH 49 ;
HEIGHT 26 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,255}
@ 153 ,165 LABEL lbl2 ;
VALUE "Address " ;
WIDTH 68 ;
HEIGHT 29 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,255}
@ 202 ,165 LABEL lbl3 ;
VALUE "Phone " ;
WIDTH 67 ;
HEIGHT 25 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,255}
@ 107 ,238 TEXTBOX txtname;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,128} ;
FONTCOLOR {0,0,255} 

@ 153 ,238 TEXTBOX txtaddress;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,128} ;
FONTCOLOR {0,0,255} 

@ 202 ,238 TEXTBOX txtphone;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,128} ;
FONTCOLOR {0,0,255} 

@ 256 ,184 BUTTONEX btnclose;
CAPTION "Exit";
FONTCOLOR {128,128,255};
BACKCOLOR {0,255,128};
ON CLICK closesystem()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 86 ,20 BUTTONEX btnFirst;
CAPTION "First Record";
FONTCOLOR {0,0,255};
BACKCOLOR {128,255,255};
ON CLICK firstrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
NOXPSTYLE ;
TOOLTIP ""
@ 126 ,20 BUTTONEX btnNext;
CAPTION "Next Record";
FONTCOLOR {0,0,255};
BACKCOLOR {128,255,255};
ON CLICK nextrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
NOXPSTYLE ;
TOOLTIP ""
@ 165 ,20 BUTTONEX btnprev;
CAPTION "Prev Record";
FONTCOLOR {0,0,255};
BACKCOLOR {128,255,255};
ON CLICK prevrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
NOXPSTYLE ;
TOOLTIP ""
@ 206 ,20 BUTTONEX btnLast;
CAPTION "Last Record";
FONTCOLOR {0,0,255};
BACKCOLOR {128,255,255};
ON CLICK lastrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

DO connect
DO showrecord
ACTIVATE WINDOW win1
EndIF

Proc connect
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=db.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from tel",oCon,3,3 )
oRS:MOVEFIRST()
Return Nil
Proc disconnect
oRS:Close()
oCon:CLOSE()
Return Nil
Proc closesystem
MyOut := MSGOKCANCEL("Are you sure to exit ? ","Stop ")
IF myout = true
DO disconnect
win1.Release ( )
ELSE
Return 0
ENDIF
Return Nil
Proc showrecord
cname := oRS:fields:item("name"):value
caddress := oRS:fields:item("address"):value
cphone := oRS:fields:item("phone"):value
win1.txtname.Value := cname
win1.txtaddress.Value := caddress
win1.txtphone.Value := cphone
Return Nil
Proc firstrecord
oRS:MOVEFIRST()
DO showrecord
Return Nil
Proc Lastrecord
oRS:MOVELAST()
DO showrecord
Return Nil
Proc Nextrecord
oRS:MOVENEXT()
mycheck := oRS:EOF()
IF mycheck
oRS:MOVEPREVIOUS()
MyOut := MSGINFO("·«ÌÊÃœ »Ì«‰«  √Œ—Ï ","  ‰»ÌÂ")
ELSE
DO showrecord
ENDIF
Return Nil
Proc Prevrecord
oRS:MOVEPREVIOUS()
mycheck := oRS:BOF()
IF mycheck
oRS:MOVENEXT()
MyOut := MSGINFO("·«ÌÊÃœ »Ì«‰«  √Œ—Ï ","  ‰»ÌÂ")
ELSE
DO showrecord
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_LESSON19
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Lesson 19'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name '",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",15,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Address '",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",24,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Phone '",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",33,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( txtname  )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",41,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( txtaddress  )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",47,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( txtphone  )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",53,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnclose ) , Caption : 'Exit'",58,61)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closesystem",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",63,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnFirst ) , Caption : 'First Record'",67,70)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action firstrecord",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",72,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnNext ) , Caption : 'Next Record'",76,79)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action nextrecord",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",81,84)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnprev ) , Caption : 'Prev Record'",85,88)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action prevrecord",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",90,93)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnLast ) , Caption : 'Last Record'",94,97)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lastrecord",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",99,102)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",103,104)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure connect",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",107,109)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",111,112)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=db.mdb'",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",114,115)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",116,118)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure disconnect",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Are you sure to exit ? ' Title 'Stop ' Type: Message Ok/Cancel",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout = true )",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure disconnect",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showrecord",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('name') Value",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('address') Value",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (oRS) Get Field ('phone') Value",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","win1.txtname.Value := cname",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","win1.txtaddress.Value := caddress",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","win1.txtphone.Value := cphone",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure firstrecord",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Lastrecord",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Nextrecord",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check EOF",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '·«ÌÊÃœ »Ì«‰«  √Œ—Ï ' Title '  ‰»ÌÂ' Type: Message Info",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Prevrecord",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '·«ÌÊÃœ »Ì«‰«  √Œ—Ï ' Title '  ‰»ÌÂ' Type: Message Info",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",169,169)
Return
*-------------------------------------------------------------------*

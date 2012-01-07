*---------------------------------------------------------------------------*
* Time : 02:01:02    Date : 01/03/2012
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
WIDTH 412 ;
HEIGHT 236 ;
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
@ 161 ,298 BUTTONEX btn5;
CAPTION "Close";
FONTCOLOR {255,255,255};
BACKCOLOR {0,0,0};
ON CLICK Close()  ;
WIDTH 100 HEIGHT 30 ;
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
@ 82 ,239 BUTTONEX btn6;
CAPTION "Delete";
FONTCOLOR {255,255,255};
BACKCOLOR {151,4,45};
ON CLICK Del()  ;
WIDTH 158 HEIGHT 28 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

DO Con
DO GetRec
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
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",110,111)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure Con",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure GetRec",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",114,116)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Con",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","Public oCon,oRS",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",119,120)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=DB\Phone.mdb'",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",122,123)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from Phone'",124,126)
SS_ESASTEP("Circuits\Main\Main\Main","Count := ADODB RecordSet (oRS) , Get Records Count",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Count>0 )",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Dcon",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Close",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure Dcon",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure GetRec",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","Count := ADODB RecordSet (oRS) , Get Records Count",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Count>0 )",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","vName = ADODB RecordSet (oRS) Get Field ('Name') Value",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","vAddress = ADODB RecordSet (oRS) Get Field ('Address') Value",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","vPhone = ADODB RecordSet (oRS) Get Field ('Phone') Value",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := vName",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := vAddress",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := vPhone",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","vName = ''",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","vAddress = ''",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","vPhone = ''",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := vName",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := vAddress",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := vPhone",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure FRec",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","Count := ADODB RecordSet (oRS) , Get Records Count",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Count>0 )",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure GetRec",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure LRec",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","Count := ADODB RecordSet (oRS) , Get Records Count",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Count>0 )",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure GetRec",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure NRec",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","Count := ADODB RecordSet (oRS) , Get Records Count",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Count>0 )",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","EOF = ADODB RecordSet oRS , Check EOF",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( EOF )",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure GetRec",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'EOF' Title 'Error' Type: Message Box",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure GetRec",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure PRec",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","Count := ADODB RecordSet (oRS) , Get Records Count",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Count>0 )",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","BOF = ADODB RecordSet oRS , Check BOF",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( BOF )",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure GetRec",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'BOF' Title 'Error' Type: Message Box",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure GetRec",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Del",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","Count := ADODB RecordSet (oRS) , Get Records Count",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Count>0 )",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Delete Record' Title 'Confirm' Type: Message Ok/Cancel",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( MyOut=true )",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","BOF = ADODB RecordSet oRS , Check BOF",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( BOF )",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure GetRec",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure GetRec",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",217,217)
Return
*-------------------------------------------------------------------*

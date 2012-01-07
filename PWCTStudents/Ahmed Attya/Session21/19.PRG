*---------------------------------------------------------------------------*
* Time : 13:38:40    Date : 01/04/2012
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
DO connect
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 510 ;
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

END WINDOW

DO showrecord
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


End Of Resistance

INIT PROCEDURE Init_19
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure connect",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'ÇáÏÑÓ ÇáÍÏí æÇáÚÔÑæä'",2,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name'",16,17)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",18,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Adderss'",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",25,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Phone'",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",32,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textName  )",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",38,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textadderss  )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",45,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textphone  )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",52,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnFirst ) , Caption : 'First Record'",58,61)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action firstrecord()",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",63,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnNext ) , Caption : 'Next Record'",66,69)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action nextrecord()",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",71,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnPrev ) , Caption : 'Prev Record'",74,77)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action prevrecord()",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",79,81)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnLast ) , Caption : 'Last Record'",82,85)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lastrecord()",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",87,89)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnClose ) , Caption : 'Close App'",90,93)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CloseApp()",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",95,97)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Delate Record'",98,101)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action delrecord()",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",103,106)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",107,108)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Designed by Ahmed Attya' )",109,110)
SS_ESASTEP("Circuits\Main\Main\Main","Date",111,112)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",113,114)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",115,116)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",117,118)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",120,122)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","Public oCon,oRS",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",125,126)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=data.mdb'",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",128,129)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",130,132)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure disconnect",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure CloseApp",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showrecord",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('name') Value",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","cadderss = ADODB RecordSet (oRS) Get Field ('adderss') Value",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (oRS) Get Field ('phone') Value",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ''",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","cadderss = ''",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ''",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := cname",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textadderss.Value := cadderss",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textphone.Value := cphone",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure firstrecord",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lastrecord",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure nextrecord",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check EOF",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'This the End of Dada' Title 'Sorry' Type: Message Box",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure prevrecord",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'This the End of Dada' Title 'Sorry' Type: Message Box",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure delrecord",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Are You Sure' Title 'Delete' Type: Message Ok/Cancel",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout = true )",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",214,214)
Return
*-------------------------------------------------------------------*

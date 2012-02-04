*---------------------------------------------------------------------------*
* Time : 18:54:48    Date : 02/03/2012
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


Resistance R_LESSON21_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON21_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 488 ;
HEIGHT 382 ;
ICON "PWCTICON" ;
TITLE "Lesson 21" ;
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
FONTCOLOR {0,0,0}
@ 153 ,165 LABEL lbl2 ;
VALUE "Address " ;
WIDTH 68 ;
HEIGHT 29 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 202 ,165 LABEL lbl3 ;
VALUE "Phone " ;
WIDTH 67 ;
HEIGHT 25 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
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
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK closesystem()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 86 ,20 BUTTONEX btnFirst;
CAPTION "First Record";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK firstrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 124 ,20 BUTTONEX btnNext;
CAPTION "Next Record";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK nextrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 161 ,20 BUTTONEX btnprev;
CAPTION "Prev Record";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK prevrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 200 ,20 BUTTONEX btnLast;
CAPTION "Last Record";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK lastrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 239 ,20 BUTTONEX btn5;
CAPTION "Delete ";
ON CLICK deleterecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 28 ,124 LABEL lbl4 ;
VALUE "Phones Notebook" ;
WIDTH 219 ;
HEIGHT 39 ;
AUTOSIZE ;
FONT "Arial" SIZE 20  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,0,0}
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
IF mymax>0
cname := oRS:fields:item("name"):value
caddress := oRS:fields:item("address"):value
cphone := oRS:fields:item("phone"):value
ELSE
cname := ""
caddress := ""
cphone := ""
ENDIF
win1.txtname.Value := cname
win1.txtaddress.Value := caddress
win1.txtphone.Value := cphone
Return Nil
Proc firstrecord
mymax := oRS:RecordCount
IF mymax>0
oRS:MOVEFIRST()
DO showrecord
ENDIF
Return Nil
Proc Lastrecord
mymax := oRS:RecordCount
IF mymax>0
oRS:MOVELAST()
DO showrecord
ENDIF
Return Nil
Proc Nextrecord
mymax := oRS:RecordCount
IF mymax>0
oRS:MOVENEXT()
mycheck := oRS:EOF()
IF mycheck
oRS:MOVEPREVIOUS()
MyOut := MSGINFO("áÇíæÌÏ ÈíÇäÇÊ ÃÎÑì "," ÊäÈíå")
ELSE
DO showrecord
ENDIF
ENDIF
Return Nil
Proc Prevrecord
mymax := oRS:RecordCount
IF mymax>0
oRS:MOVEPREVIOUS()
mycheck := oRS:BOF()
IF mycheck
oRS:MOVENEXT()
MyOut := MSGINFO("áÇíæÌÏ ÈíÇäÇÊ ÃÎÑì "," ÊäÈíå")
ELSE
DO showrecord
ENDIF
ENDIF
Return Nil
Proc deleterecord
mymax := oRS:RecordCount
IF mymax>0
MyOut := MSGOKCANCEL("Are you sure to delete this record ? ","Stop")
IF myout=true
oRS:DELETE()
oRS:UPDATE()
oRS:MOVEPREVIOUS()
mycheck := oRS:BOF()
IF mycheck
oRS:MOVENEXT()
ENDIF
ENDIF
DO showrecord
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_LESSON21
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Lesson 21'",1,5)
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
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",63,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnFirst ) , Caption : 'First Record'",66,69)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action firstrecord",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",71,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnNext ) , Caption : 'Next Record'",74,77)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action nextrecord",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",79,81)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnprev ) , Caption : 'Prev Record'",82,85)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action prevrecord",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",87,89)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnLast ) , Caption : 'Last Record'",90,93)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lastrecord",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",95,97)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Delete '",98,99)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action deleterecord",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",101,103)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Phones Notebook'",104,105)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",106,113)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",114,115)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure connect",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",118,120)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",122,123)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=db.mdb'",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",125,126)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",127,129)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure disconnect",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure disconnect",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showrecord",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('name') Value",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('address') Value",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (oRS) Get Field ('phone') Value",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ''",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ''",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ''",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","win1.txtname.Value := cname",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","win1.txtaddress.Value := caddress",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","win1.txtphone.Value := cphone",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure firstrecord",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Lastrecord",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Nextrecord",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check EOF",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'áÇíæÌÏ ÈíÇäÇÊ ÃÎÑì ' Title ' ÊäÈíå' Type: Message Info",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Prevrecord",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'áÇíæÌÏ ÈíÇäÇÊ ÃÎÑì ' Title ' ÊäÈíå' Type: Message Info",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure deleterecord",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Are you sure to delete this record ? ' Title 'Stop' Type: Message Ok/Cancel",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout=true )",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",209,209)
Return
*-------------------------------------------------------------------*

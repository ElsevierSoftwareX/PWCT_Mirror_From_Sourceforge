*---------------------------------------------------------------------------*
* Time : 00:00:38    Date : 10/20/2011
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


Resistance R_CUSTOMER_DATABASE_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CUSTOMER_DATABASE_18smart1() code
DO connect
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 604 ;
HEIGHT 478 ;
ICON "PWCTICON" ;
TITLE "Customer data" ;
MAIN ;
BACKCOLOR {255,255,255} 

@ 177 ,37 IMAGE image1;
PICTURE "CLIPART_OF_25029_SMJPG_2.JPG";
STRETCH ;
WIDTH 300 HEIGHT 258
@ 58 ,11 BUTTONEX btnNext;
CAPTION "Next Record";
FONTCOLOR {128,0,255};
BACKCOLOR {255,255,255};
ON CLICK nextrecord()  ;
WIDTH 100 HEIGHT 32 ;
FONT "arial" SIZE 12 ;
TOOLTIP ""
@ 103 ,11 BUTTONEX btnprev;
CAPTION "previ Record";
FONTCOLOR {128,0,255};
BACKCOLOR {255,255,255};
ON CLICK prevrecord()  ;
WIDTH 104 HEIGHT 32 ;
FONT "arial" SIZE 12 ;
TOOLTIP ""
@ 13 ,11 BUTTONEX btnfirst;
CAPTION "first Record";
FONTCOLOR {128,0,255};
BACKCOLOR {255,255,255};
ON CLICK firstrecord()  ;
WIDTH 104 HEIGHT 32 ;
FONT "arial" SIZE 12 ;
TOOLTIP ""
@ 148 ,11 BUTTONEX btnlast;
CAPTION "last Record";
FONTCOLOR {128,0,255};
BACKCOLOR {255,255,255};
ON CLICK lastrecord()  ;
WIDTH 106 HEIGHT 32 ;
FONT "arial" SIZE 12 ;
TOOLTIP ""
@ 386 ,467 BUTTONEX btnClose;
CAPTION "Close";
FONTCOLOR {128,0,255};
BACKCOLOR {255,255,255};
ON CLICK closeSys()  ;
WIDTH 114 HEIGHT 32 ;
FONT "arial" SIZE 12 ;
TOOLTIP ""
@ 30 ,285 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 70 ,283 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 110 ,282 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 150 ,284 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 29 ,133 LABEL lbl1 ;
VALUE "Customer name" ;
WIDTH 138 ;
HEIGHT 27 ;
FONT "Britannic Bold" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0}
@ 69 ,183 LABEL lbl2 ;
VALUE "Request" ;
WIDTH 77 ;
HEIGHT 26 ;
FONT "Britannic Bold" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0}
@ 110 ,186 LABEL lbl3 ;
VALUE "phone" ;
WIDTH 69 ;
HEIGHT 30 ;
FONT "Britannic Bold" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0}
@ 218 ,341 BUTTONEX btndel;
CAPTION "Delete";
FONTCOLOR {0,0,0};
BACKCOLOR {70,163,255};
ON CLICK deleterecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
@ 149 ,188 LABEL lbl4 ;
VALUE "Cash" ;
WIDTH 60 ;
HEIGHT 29 ;
FONT "Britannic Bold" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0}
DEFINE MAIN MENU
POPUP "file"
MENUITEM "exit" Action closewin()
END POPUP
POPUP "first "
MENUITEM "first record" Action firstrecord()
END POPUP
POPUP "Next"
MENUITEM "next record" Action nextrecord()
END POPUP
POPUP "previous"
MENUITEM "prev record" Action prevrecord()
END POPUP
POPUP "last"
MENUITEM "last record" Action lastrecord()
END POPUP
END MENU
END WINDOW

DO showrec
ACTIVATE WINDOW win1
EndIF

Proc closewin
win1.Release ( )
Return Nil
Proc connect
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=customer.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from customers",oCon,3,3 )
Return Nil
Proc disconnect
oRS:Close()
oCon:CLOSE()
Return Nil
Proc closeSys
DO disconnect
win1.Release ( )
Return Nil
Proc showrec
mymax := oRS:RecordCount
IF mymax > 0
oname := oRS:fields:item("customer name"):value
oRequest := oRS:fields:item("Request"):value
ophone := oRS:fields:item("phone"):value
ocash := oRS:fields:item("cash"):value
ELSE
oname := ""
oRequest := ""
ophone := ""
ocash := ""
ENDIF
win1.text1.Value := oname
win1.text2.Value := oRequest
win1.text3.Value := ophone
win1.text4.Value := ocash
Return Nil
Proc firstrecord
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVEFIRST()
DO showrec
ENDIF
Return Nil
Proc lastrecord
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVELAST()
DO showrec
ENDIF
Return Nil
Proc nextrecord
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVENEXT()
mycheck := oRS:EOF()
IF mycheck
oRS:MOVEPREVIOUS()
MyOut := MSGBOX("No more Next data","You can't")
ELSE
DO showrec
ENDIF
ENDIF
Return Nil
Proc prevrecord
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVEPREVIOUS()
mybigan := oRS:BOF()
IF mybigan
oRS:MOVENEXT()
MyOut := MSGBOX("No More previous data","you can't")
ELSE
DO showrec
ENDIF
ENDIF
Return Nil
Proc deleterecord
MyOut := MSGOKCANCEL("Are You Sure ??","Delete")
IF myout = true
mymax := oRS:RecordCount
IF mymax > 0
oRS:DELETE()
oRS:UPDATE()
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVEPREVIOUS()
mybigan := oRS:BOF()
IF mybigan
oRS:MOVENEXT()
ENDIF
DO showrec
ENDIF
DO showrec
ENDIF
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_CUSTOMER_DATABASE
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure connect",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Customer data'",2,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'CLIPART_OF_25029_SMJPG_2.JPG'",12,13)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnNext ) , Caption : 'Next Record'",16,19)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action nextrecord()",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",21,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnprev ) , Caption : 'previ Record'",24,27)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action prevrecord()",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",29,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnfirst ) , Caption : 'first Record'",32,35)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action firstrecord()",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",37,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnlast ) , Caption : 'last Record'",40,43)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lastrecord()",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",45,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnClose ) , Caption : 'Close'",48,51)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closeSys()",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",53,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",57,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",63,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",69,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",75,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Customer name'",80,81)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",82,86)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Request'",87,88)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",89,93)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'phone'",94,95)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",96,100)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btndel ) , Caption : 'Delete'",101,104)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action deleterecord()",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",106,109)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Cash'",110,111)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",112,116)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'file'",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'exit' )",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'first '",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'first record' )",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Next'",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'next record' )",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'previous'",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'prev record' )",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'last'",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'last record' )",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",134,135)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",137,139)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closewin",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",144,145)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=customer.mdb'",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",147,148)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from customers'",149,151)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure disconnect",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closeSys",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure disconnect",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showrec",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","oname = ADODB RecordSet (oRS) Get Field ('customer name') Value",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","oRequest = ADODB RecordSet (oRS) Get Field ('Request') Value",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","ophone = ADODB RecordSet (oRS) Get Field ('phone') Value",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","ocash = ADODB RecordSet (oRS) Get Field ('cash') Value",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","oname = ''",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","oRequest = ''",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","ophone = ''",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","ocash = ''",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := oname",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := oRequest",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := ophone",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4.Value := ocash",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure firstrecord",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lastrecord",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure nextrecord",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check EOF",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No more Next data' Title 'You can't' Type: Message Box",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure prevrecord",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","mybigan = ADODB RecordSet oRS , Check BOF",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mybigan )",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No More previous data' Title 'you can't' Type: Message Box",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure deleterecord",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Are You Sure ??' Title 'Delete' Type: Message Ok/Cancel",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout = true )",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","mybigan = ADODB RecordSet oRS , Check BOF",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mybigan )",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",238,238)
Return
*-------------------------------------------------------------------*

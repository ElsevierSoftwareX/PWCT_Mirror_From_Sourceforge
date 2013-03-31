*---------------------------------------------------------------------------*
* Time : 00:06:05    Date : 10/18/2011
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
WIDTH 603 ;
HEIGHT 534 ;
ICON "PWCTICON" ;
TITLE "Customer data" ;
MAIN ;
BACKCOLOR {255,255,255} 

@ 237 ,37 IMAGE image1;
PICTURE "CLIPART_OF_25029_SMJPG_2.JPG";
STRETCH ;
WIDTH 300 HEIGHT 258
@ 118 ,11 BUTTONEX btnNext;
CAPTION "Next Record";
FONTCOLOR {128,0,255};
BACKCOLOR {255,255,255};
ON CLICK nextrecord()  ;
WIDTH 100 HEIGHT 32 ;
FONT "arial" SIZE 12 ;
TOOLTIP ""
@ 163 ,11 BUTTONEX btnprev;
CAPTION "previ Record";
FONTCOLOR {128,0,255};
BACKCOLOR {255,255,255};
ON CLICK prevrecord()  ;
WIDTH 104 HEIGHT 32 ;
FONT "arial" SIZE 12 ;
TOOLTIP ""
@ 73 ,11 BUTTONEX btnfirst;
CAPTION "first Record";
FONTCOLOR {128,0,255};
BACKCOLOR {255,255,255};
ON CLICK firstrecord()  ;
WIDTH 104 HEIGHT 32 ;
FONT "arial" SIZE 12 ;
TOOLTIP ""
@ 208 ,11 BUTTONEX btnlast;
CAPTION "last Record";
FONTCOLOR {128,0,255};
BACKCOLOR {255,255,255};
ON CLICK lastrecord()  ;
WIDTH 106 HEIGHT 32 ;
FONT "arial" SIZE 12 ;
TOOLTIP ""
@ 277 ,325 BUTTONEX btnClose;
CAPTION "Close";
FONTCOLOR {128,0,255};
BACKCOLOR {255,255,255};
ON CLICK closeSys()  ;
WIDTH 114 HEIGHT 32 ;
FONT "arial" SIZE 12 ;
TOOLTIP ""
@ 90 ,285 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 130 ,283 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 170 ,282 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 210 ,284 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 89 ,133 LABEL lbl1 ;
VALUE "Customer name" ;
WIDTH 138 ;
HEIGHT 27 ;
FONT "Britannic Bold" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0}
@ 129 ,183 LABEL lbl2 ;
VALUE "Request" ;
WIDTH 77 ;
HEIGHT 26 ;
FONT "Britannic Bold" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0}
@ 170 ,186 LABEL lbl3 ;
VALUE "phone" ;
WIDTH 69 ;
HEIGHT 30 ;
FONT "Britannic Bold" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0}
@ 209 ,188 LABEL lbl4 ;
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
IF mymax=0
Return 0
ENDIF
oname := oRS:fields:item("customer name"):value
oRequest := oRS:fields:item("Request"):value
ophone := oRS:fields:item("phone"):value
ocash := oRS:fields:item("cash"):value
win1.text1.Value := oname
win1.text2.Value := oRequest
win1.text3.Value := ophone
win1.text4.Value := ocash
Return Nil
Proc firstrecord
oRS:MOVEFIRST()
DO showrec
Return Nil
Proc lastrecord
oRS:MOVELAST()
DO showrec
Return Nil
Proc nextrecord
oRS:MOVENEXT()
mycheck := oRS:EOF()
IF mycheck
oRS:MOVEPREVIOUS()
MyOut := MSGBOX("No more Next data","You can't")
ELSE
DO showrec
ENDIF
Return Nil
Proc prevrecord
oRS:MOVEPREVIOUS()
mybigan := oRS:BOF()
IF mybigan
oRS:MOVENEXT()
MyOut := MSGBOX("No More previous data","you can't")
ELSE
DO showrec
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
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Cash'",101,102)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",103,107)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'file'",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'exit' )",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'first '",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'first record' )",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Next'",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'next record' )",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'previous'",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'prev record' )",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'last'",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'last record' )",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",125,126)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",128,130)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closewin",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",135,136)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=customer.mdb'",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",138,139)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from customers'",140,142)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure disconnect",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closeSys",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure disconnect",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showrec",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax=0 )",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","oname = ADODB RecordSet (oRS) Get Field ('customer name') Value",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","oRequest = ADODB RecordSet (oRS) Get Field ('Request') Value",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","ophone = ADODB RecordSet (oRS) Get Field ('phone') Value",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","ocash = ADODB RecordSet (oRS) Get Field ('cash') Value",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := oname",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := oRequest",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := ophone",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4.Value := ocash",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure firstrecord",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lastrecord",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure nextrecord",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check EOF",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No more Next data' Title 'You can't' Type: Message Box",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure prevrecord",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","mybigan = ADODB RecordSet oRS , Check BOF",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mybigan )",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No More previous data' Title 'you can't' Type: Message Box",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",193,193)
Return
*-------------------------------------------------------------------*

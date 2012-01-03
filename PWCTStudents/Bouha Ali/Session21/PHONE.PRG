*---------------------------------------------------------------------------*
* Time : 22:29:10    Date : 01/01/2012
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


Resistance R_PHONE_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PHONE_18smart1() code
DO connect
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 630 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "phone" ;
MAIN ;
BACKCOLOR {0,179,0} 

@ 59 ,162 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 109 ;
HEIGHT 37 ;
AUTOSIZE ;
FONT "Comic Sans MS" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,0}
@ 115 ,163 LABEL lbl2 ;
VALUE "Address" ;
WIDTH 99 ;
HEIGHT 34 ;
AUTOSIZE ;
FONT "Comic Sans MS" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,0}
@ 168 ,164 LABEL lbl3 ;
VALUE "Phone" ;
WIDTH 101 ;
HEIGHT 36 ;
AUTOSIZE ;
FONT "Comic Sans MS" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,0}
@ 63 ,294 TEXTBOX textname;
HEIGHT 31 ;
WIDTH 256 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {128,128,0} ;
FONTCOLOR {255,255,255} 

@ 117 ,294 TEXTBOX textaddress;
HEIGHT 29 ;
WIDTH 257 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {128,128,0} ;
FONTCOLOR {255,255,255} 

@ 169 ,294 TEXTBOX textphone;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {128,128,0} ;
FONTCOLOR {255,255,255} 

@ 262 ,313 BUTTONEX btn1;
CAPTION "Next Record  >";
FONTCOLOR {0,0,0};
BACKCOLOR {255,128,64};
ON CLICK nextrec()  ;
WIDTH 144 HEIGHT 35 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 262 ,162 BUTTONEX btn3;
CAPTION "< Nrev Record";
FONTCOLOR {0,0,0};
BACKCOLOR {255,128,64};
ON CLICK prevrec()  ;
WIDTH 144 HEIGHT 35 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 262 ,11 BUTTONEX btn4;
CAPTION "<< First Record";
FONTCOLOR {0,0,0};
BACKCOLOR {255,128,64};
ON CLICK firstrec()  ;
WIDTH 144 HEIGHT 35 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 262 ,464 BUTTONEX btn5;
CAPTION "Last Record >>";
FONTCOLOR {0,0,0};
BACKCOLOR {255,128,64};
ON CLICK lastreec()  ;
WIDTH 144 HEIGHT 35 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 311 ,141 BUTTONEX btn2;
CAPTION "Close Application";
FONTCOLOR {0,0,0};
BACKCOLOR {255,111,111};
ON CLICK closesystem()  ;
WIDTH 164 HEIGHT 36 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 10 ,10 IMAGE image1;
PICTURE "phone.jpg";
STRETCH ;
WIDTH 120 HEIGHT 226
@ 311 ,314 BUTTONEX btndelete;
CAPTION "Delete Record";
FONTCOLOR {0,0,0};
BACKCOLOR {255,0,128};
ON CLICK deleterec()  ;
WIDTH 164 HEIGHT 36 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

DO showrec
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
Proc closesystem
DO disconnect
win1.Release ( )
Return Nil
Proc showrec
mymax := oRS:RecordCount
IF mymax > 0
cname := oRS:fields:item("Name"):value
caddress := oRS:fields:item("Address"):value
cphone := oRS:fields:item("Phone"):value
ELSE
cname := ""
caddress := ""
cphone := ""
ENDIF
win1.textname.Value := cname
win1.textaddress.Value := caddress
win1.textphone.Value := cphone
Return Nil
Proc firstrec
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVEFIRST()
DO showrec
ENDIF
Return Nil
Proc lastreec
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVELAST()
DO showrec
ENDIF
Return Nil
Proc nextrec
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVENEXT()
mycheck := oRS:EOF()
IF mycheck
oRS:MOVEPREVIOUS()
MyOut := MSGBOX("No More Records","Sorry")
ELSE
DO showrec
ENDIF
ENDIF
Return Nil
Proc prevrec
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVEPREVIOUS()
mycheck := oRS:BOF()
IF mycheck
oRS:MOVENEXT()
MyOut := MSGBOX("No More Records","Sorry")
ELSE
DO showrec
ENDIF
ENDIF
Return Nil
Proc deleterec
mymax := oRS:RecordCount
IF mymax > 0
MyOut := MSGOKCANCEL("Are you sure?","Delete")
IF myout = false
Return 0
ENDIF
oRS:DELETE()
oRS:UPDATE()
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVEPREVIOUS()
mycheck := oRS:BOF()
IF mycheck
oRS:MOVENEXT()
ELSE
ENDIF
ENDIF
DO showrec
ELSE
MyOut := MSGBOX("No more records to delete","Sorry")
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_PHONE
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure connect",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'phone'",2,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name'",12,13)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",14,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Address'",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",23,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Phone'",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",32,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textname  )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",40,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textaddress  )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",47,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textphone  )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",54,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Next Record  >'",60,63)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action nextrec()",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",65,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : '< Nrev Record'",69,72)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action prevrec()",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",74,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : '<< First Record'",78,81)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action firstrec()",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",83,86)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Last Record >>'",87,90)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lastreec()",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",92,95)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Close Application'",96,99)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closesystem()",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",101,104)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'phone.jpg'",105,106)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",107,108)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btndelete ) , Caption : 'Delete Record'",109,112)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action deleterec()",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",114,117)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",118,119)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",121,123)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","Public oCon,oRS",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",126,127)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=data.mdb'",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",129,130)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",131,133)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure disconnect",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure disconnect",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showrec",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('Name') Value",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('Address') Value",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (oRS) Get Field ('Phone') Value",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ''",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ''",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ''",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textname.Value := cname",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textaddress.Value := caddress",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textphone.Value := cphone",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure firstrec",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lastreec",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure nextrec",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check EOF",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No More Records' Title 'Sorry' Type: Message Box",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure prevrec",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No More Records' Title 'Sorry' Type: Message Box",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure deleterec",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Are you sure?' Title 'Delete' Type: Message Ok/Cancel",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout = false )",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No more records to delete' Title 'Sorry' Type: Message Box",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",220,220)
Return
*-------------------------------------------------------------------*

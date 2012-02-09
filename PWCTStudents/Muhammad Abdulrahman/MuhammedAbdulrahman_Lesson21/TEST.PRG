*---------------------------------------------------------------------------*
* Time : 01:41:59    Date : 02/08/2012
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


Resistance R_TEST_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST_18smart1() code
DO connect
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 618 ;
HEIGHT 354 ;
ICON "PWCTICON" ;
TITLE "Telephone Database" ;
MAIN ;
NOSIZE ;
BACKCOLOR {88,171,171} 

@ -2 ,-2 IMAGE image1;
PICTURE "PAPEL8I.JPG";
STRETCH ;
WIDTH 609 HEIGHT 317
@ 28 ,158 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 55 ;
HEIGHT 25 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 98 ,158 LABEL lbl2 ;
VALUE "Address" ;
WIDTH 83 ;
HEIGHT 27 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 165 ,158 LABEL lbl3 ;
VALUE "Phone" ;
WIDTH 64 ;
HEIGHT 31 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 28 ,265 TEXTBOX textName;
HEIGHT 27 ;
WIDTH 287 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 98 ,265 TEXTBOX textAddress;
HEIGHT 27 ;
WIDTH 287 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 165 ,265 TEXTBOX textPhone;
HEIGHT 27 ;
WIDTH 287 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 19 ,13 BUTTONEX btnFirst;
CAPTION "First Record";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK firstrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
NOXPSTYLE ;
TOOLTIP ""
@ 70 ,13 BUTTONEX btnNext;
CAPTION "Next Record";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK lastrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
NOXPSTYLE ;
TOOLTIP ""
@ 125 ,13 BUTTONEX btnPrev;
CAPTION "Prev Record";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK nextrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
NOXPSTYLE ;
TOOLTIP ""
@ 182 ,13 BUTTONEX btnLast;
CAPTION "Last Record";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK prevrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
NOXPSTYLE ;
TOOLTIP ""
@ 236 ,315 BUTTONEX btnClose;
CAPTION "CLose Application";
BACKCOLOR {236,233,216};
ON CLICK closesystem()  ;
WIDTH 175 HEIGHT 28 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 236 ,13 BUTTONEX btnDel;
CAPTION "Delete";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK delrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

DO showrecord
ACTIVATE WINDOW win1
EndIF

Proc connect
Public oCon,oRS
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=Data.mdb' )
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
IF mymax > 0
cname := oRS:fields:item("name"):value
caddress := oRS:fields:item("address"):value
cphone := oRS:fields:item("phone"):value
ELSE
cname := ""
caddress := ""
cphone := ""
ENDIF
win1.textName.Value := cname
win1.textAddress.Value := caddress
win1.textPhone.Value := cphone
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
MyOut := MSGBOX("End Of File","Sorry")
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
MyOut := MSGBOX("Begin Of File","Sorry")
ELSE
DO showrecord
ENDIF
ENDIF
Return Nil
Proc delrecord
mymax := oRS:RecordCount
IF mymax > 0
MyOut := MSGOKCANCEL("Are you sure?","Delete")
IF myout = false
Return 0
ENDIF
oRS:DELETE()
oRS:UPDATE()
IF mymax > 0
oRS:MOVEPREVIOUS()
mycheck := oRS:BOF()
IF mycheck
oRS:MOVENEXT()
ENDIF
ENDIF
DO showrecord
ELSE
MyOut := MSGBOX("No record to delete","Sorry")
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure connect",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Telephone Database'",2,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'PAPEL8I.JPG'",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name'",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",19,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Address'",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",28,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Phone'",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",37,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textName  )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",45,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textAddress  )",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",51,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textPhone  )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",57,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnFirst ) , Caption : 'First Record'",62,65)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action firstrecord()",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",67,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnNext ) , Caption : 'Next Record'",71,74)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lastrecord()",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",76,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnPrev ) , Caption : 'Prev Record'",80,83)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action nextrecord()",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",85,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnLast ) , Caption : 'Last Record'",89,92)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action prevrecord()",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",94,97)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnClose ) , Caption : 'CLose Application'",98,100)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closesystem()",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",102,104)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnDel ) , Caption : 'Delete'",105,108)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action delrecord()",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",110,113)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",114,115)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",117,119)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","Public oCon,oRS",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",122,123)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=Data.mdb'",124,124)
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
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('name') Value",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('address') Value",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (oRS) Get Field ('phone') Value",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ''",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ''",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ''",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := cname",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAddress.Value := caddress",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Value := cphone",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure firstrecord",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lastrecord",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure nextrecord",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check EOF",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'End Of File' Title 'Sorry' Type: Message Box",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure prevrecord",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Begin Of File' Title 'Sorry' Type: Message Box",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure delrecord",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Are you sure?' Title 'Delete' Type: Message Ok/Cancel",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout = false )",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No record to delete' Title 'Sorry' Type: Message Box",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",214,214)
Return
*-------------------------------------------------------------------*

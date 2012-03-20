*---------------------------------------------------------------------------*
* Time : 13:23:07    Date : 03/19/2012
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
WIDTH 581 ;
HEIGHT 322 ;
ICON "PWCTICON" ;
TITLE "test" ;
MAIN ;
BACKCOLOR {221,238,227} 

@ 41 ,71 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 49 ;
HEIGHT 27 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,0,0}
@ 96 ,71 LABEL lbl2 ;
VALUE "Address" ;
WIDTH 75 ;
HEIGHT 33 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,0,0}
@ 155 ,71 LABEL lbl3 ;
VALUE "Phone" ;
WIDTH 74 ;
HEIGHT 26 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,0,0}
@ 39 ,153 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 94 ,153 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 154 ,153 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 228 ,42 BUTTONEX btn1;
CAPTION "Close Window";
FONTCOLOR {192,192,192};
BACKCOLOR {0,128,128};
ON CLICK closewindow()  ;
WIDTH 164 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 25 ,393 BUTTONEX btnFirst;
CAPTION "First Record";
FONTCOLOR {192,192,192};
BACKCOLOR {0,128,255};
ON CLICK firstrecord()  ;
WIDTH 164 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 73 ,393 BUTTONEX btnNext;
CAPTION "Next Record";
FONTCOLOR {192,192,192};
BACKCOLOR {0,128,192};
ON CLICK nextrecord()  ;
WIDTH 164 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 121 ,393 BUTTONEX btnPrev;
CAPTION "Prev Record";
FONTCOLOR {192,192,192};
BACKCOLOR {128,128,255};
ON CLICK prevrecord()  ;
WIDTH 164 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 169 ,393 BUTTONEX btnLast;
CAPTION "Last Record";
FONTCOLOR {192,192,192};
BACKCOLOR {128,128,192};
ON CLICK lastrecord()  ;
WIDTH 164 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 227 ,251 BUTTONEX btnDel;
CAPTION "Delete Record";
FONTCOLOR {192,192,192};
BACKCOLOR {128,0,0};
ON CLICK delrecord()  ;
WIDTH 164 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

DO showrecords
ACTIVATE WINDOW win1
EndIF

Proc connect
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
Proc showrecords
mycheck := oRS:RecordCount
IF mycheck > 0
cname := oRS:fields:item(alltrim("name")):value
caddress := oRS:fields:item(alltrim("address")):value
cphone := oRS:fields:item(alltrim("phone")):value
ELSE
cname := ""
caddress := ""
cphone := ""
ENDIF
win1.text2.Value := caddress
win1.text3.Value := cphone
win1.text1.Value := cname
Return Nil
Proc closewindow
DO disconnect
win1.Release ( )
Return Nil
Proc lastrecord
mycheck := oRS:RecordCount
IF mycheck > 0
oRS:MOVELAST()
DO showrecords
ENDIF
Return Nil
Proc firstrecord
mycheck := oRS:RecordCount
IF mycheck > 0
oRS:MOVEFIRST()
DO showrecords
ENDIF
Return Nil
Proc nextrecord
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVENEXT()
mycheck := oRS:EOF()
IF mycheck
oRS:MOVEPREVIOUS()
MyOut := MSGBOX("End of File ","Sorry ")
ELSE
DO showrecords
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
MyOut := MSGBOX("Beging of the file ","Error ")
ELSE
DO showrecords
ENDIF
ENDIF
Return Nil
Proc delrecord
mymax := oRS:RecordCount
IF mymax > 0
MyOut := MSGOKCANCEL(" Are you sure ?","Delete ")
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
ENDIF
ENDIF
DO showrecords
ELSE
MyOut := MSGBOX("No record to delete ","Sorry ")
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure connect",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'test'",2,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name'",12,13)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",14,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Address'",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",24,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Phone'",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",34,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",43,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",50,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",57,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Close Window'",63,66)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closewindow()",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",68,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnFirst ) , Caption : 'First Record'",73,76)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action firstrecord()",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",78,82)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnNext ) , Caption : 'Next Record'",83,86)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action nextrecord()",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",88,92)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnPrev ) , Caption : 'Prev Record'",93,96)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action prevrecord()",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",98,102)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnLast ) , Caption : 'Last Record'",103,106)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lastrecord()",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",108,112)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnDel ) , Caption : 'Delete Record'",113,116)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action delrecord()",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",118,122)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",123,124)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecords",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",126,128)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",130,131)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Ext",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",133,134)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",135,137)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure disconnect",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showrecords",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck := ADODB RecordSet (oRS) , Get Records Count",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck > 0 )",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('name') Value",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('address') Value",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (oRS) Get Field ('phone') Value",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ''",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ''",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ''",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := caddress",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := cphone",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := cname",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closewindow",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure disconnect",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lastrecord",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck := ADODB RecordSet (oRS) , Get Records Count",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck > 0 )",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecords",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure firstrecord",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck := ADODB RecordSet (oRS) , Get Records Count",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck > 0 )",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecords",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure nextrecord",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check EOF",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'End of File ' Title 'Sorry ' Type: Message Box",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecords",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure prevrecord",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Beging of the file ' Title 'Error ' Type: Message Box",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecords",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure delrecord",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' Are you sure ?' Title 'Delete ' Type: Message Ok/Cancel",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout = false )",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecords",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No record to delete ' Title 'Sorry ' Type: Message Box",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",223,223)
Return
*-------------------------------------------------------------------*

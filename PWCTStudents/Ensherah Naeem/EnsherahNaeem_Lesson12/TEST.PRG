*---------------------------------------------------------------------------*
* Time : 19:36:57    Date : 03/17/2012
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

@ 236 ,174 BUTTONEX btn1;
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
oRS:MOVEFIRST()
Return Nil
Proc disconnect
oRS:Close()
oCon:CLOSE()
Return Nil
Proc showrecords
cname := oRS:fields:item(alltrim("name")):value
caddress := oRS:fields:item(alltrim("address")):value
cphone := oRS:fields:item(alltrim("phone")):value
win1.text2.Value := caddress
win1.text3.Value := cphone
win1.text1.Value := cname
Return Nil
Proc closewindow
DO disconnect
win1.Release ( )
Return Nil
Proc lastrecord
oRS:MOVELAST()
DO showrecords
Return Nil
Proc firstrecord
oRS:MOVEFIRST()
DO showrecords
Return Nil
Proc nextrecord
oRS:MOVENEXT()
mycheck := oRS:EOF()
IF mycheck
oRS:MOVEPREVIOUS()
MyOut := MSGBOX("End of File ","Sorry ")
ELSE
DO showrecords
ENDIF
Return Nil
Proc prevrecord
oRS:MOVEPREVIOUS()
mycheck := oRS:BOF()
IF mycheck
oRS:MOVENEXT()
MyOut := MSGBOX("Beging of the file ","Error ")
ELSE
DO showrecords
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
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",113,114)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecords",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",116,118)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",120,121)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Ext",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",123,124)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",125,127)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure disconnect",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showrecords",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('name') Value",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('address') Value",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (oRS) Get Field ('phone') Value",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := caddress",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := cphone",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := cname",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closewindow",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure disconnect",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lastrecord",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecords",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure firstrecord",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecords",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure nextrecord",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check EOF",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'End of File ' Title 'Sorry ' Type: Message Box",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecords",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure prevrecord",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Beging of the file ' Title 'Error ' Type: Message Box",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecords",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",173,173)
Return
*-------------------------------------------------------------------*

*---------------------------------------------------------------------------*
* Time : 19:34:33    Date : 03/05/2012
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


Resistance R_OOOO_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_OOOO_18smart1() code
DO connect
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 289 ;
ICON "PWCTICON" ;
TITLE " telephone data base  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 54 ,15 LABEL lbl1 ;
VALUE " name " ;
WIDTH 86 ;
HEIGHT 34 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 100 ,15 LABEL lbl2 ;
VALUE " address " ;
WIDTH 87 ;
HEIGHT 33 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 143 ,15 LABEL lbl3 ;
VALUE " phone " ;
WIDTH 86 ;
HEIGHT 32 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 46 ,132 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 95 ,132 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 146 ,132 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 11 ,367 BUTTONEX btn1;
CAPTION " first record ";
ON CLICK firstrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 60 ,367 BUTTONEX btn2;
CAPTION " next record ";
ON CLICK nextrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 105 ,367 BUTTONEX btn3;
CAPTION " prev record ";
ON CLICK prevrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 152 ,367 BUTTONEX btn4;
CAPTION " last record ";
ON CLICK lastrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 199 ,156 BUTTONEX btn5;
CAPTION " close application ";
ON CLICK closesystem()  ;
WIDTH 139 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 197 ,367 BUTTONEX btn6;
CAPTION " delete ";
ON CLICK delrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

DO showrecord
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
Proc closesystem
DO disconnect
win1.Release ( )
Return Nil
Proc showrecord
mymax := oRS:RecordCount
IF mymax > 0
cname := oRS:fields:item(alltrim("name")):value
caddress := oRS:fields:item(alltrim("address")):value
cphone := oRS:fields:item(alltrim("phone")):value
ELSE
cname := ""
caddress := ""
cphone := ""
ENDIF
win1.text1.Value := cname
win1.text2.Value := caddress
win1.text3.Value := cphone
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
MyOut := MSGBOX(" END OF  FILE "," SORRY ")
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
MyOut := MSGBOX(" BEGIN OF FILE "," SORRY ")
ELSE
DO showrecord
ENDIF
ENDIF
Return Nil
Proc delrecord
mymax := oRS:RecordCount
MyOut := MSGOKCANCEL(" Are you sure ? "," Delete ")
IF mymax > 0
IF myout = False
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
ELSE
MyOut := MSGBOX(" no record to delete "," sorry ")
ENDIF
DO showrecord
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_OOOO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure connect",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : ' telephone data base  '",2,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : ' name '",12,13)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",14,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : ' address '",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",21,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : ' phone '",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",28,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",34,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",41,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",48,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : ' first record '",54,55)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action firstrecord()",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",57,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : ' next record '",60,61)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action nextrecord()",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",63,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : ' prev record '",66,67)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action prevrecord()",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",69,71)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : ' last record '",72,73)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lastrecord()",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",75,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : ' close application '",78,79)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closesystem()",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",81,83)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn6 ) , Caption : ' delete '",84,85)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action delrecord()",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",87,89)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",90,91)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",93,95)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",97,98)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=data.mdb'",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",100,101)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",102,104)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure disconnect",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure disconnect",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showrecord",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('name') Value",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('address') Value",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (oRS) Get Field ('phone') Value",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ''",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ''",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ''",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := cname",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := caddress",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := cphone",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure firstrecord",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lastrecord",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure nextrecord",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check EOF",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' END OF  FILE ' Title ' SORRY ' Type: Message Box",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure prevrecord",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' BEGIN OF FILE ' Title ' SORRY ' Type: Message Box",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure delrecord",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' Are you sure ? ' Title ' Delete ' Type: Message Ok/Cancel",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout = False )",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' no record to delete ' Title ' sorry ' Type: Message Box",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",189,189)
Return
*-------------------------------------------------------------------*

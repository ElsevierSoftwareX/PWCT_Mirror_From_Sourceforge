*---------------------------------------------------------------------------*
* Time : 06:36:02    Date : 06/02/2012
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
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 658 ;
HEIGHT 257 ;
ICON "PWCTICON" ;
TITLE "Telephone data base" ;
MAIN ;
BACKCOLOR {255,128,255} 

@ 18 ,252 LABEL lbl1 ;
VALUE "name" ;
WIDTH 90 ;
HEIGHT 36 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 57 ,252 LABEL lbl2 ;
VALUE "address" ;
WIDTH 91 ;
HEIGHT 30 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 96 ,252 LABEL lbl3 ;
VALUE "phone" ;
WIDTH 87 ;
HEIGHT 31 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 18 ,352 TEXTBOX textname;
HEIGHT 30 ;
WIDTH 230 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 55 ,352 TEXTBOX textaddress;
HEIGHT 30 ;
WIDTH 230 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 94 ,352 TEXTBOX textphone;
HEIGHT 30 ;
WIDTH 230 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 16 ,21 BUTTONEX btnFirst;
CAPTION "First Record";
ON CLICK FirstRecord()  ;
WIDTH 140 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 54 ,22 BUTTONEX btnNext;
CAPTION "Next Record";
ON CLICK NextRecord()  ;
WIDTH 140 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 93 ,22 BUTTONEX btnPrev;
CAPTION "Prev Record";
ON CLICK PrevRecord()  ;
WIDTH 140 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 132 ,22 BUTTONEX btnLast;
CAPTION "Last Record";
ON CLICK LastRecord()  ;
WIDTH 140 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 172 ,22 BUTTONEX btnClose;
CAPTION "Close Application";
ON CLICK Closesystem()  ;
WIDTH 218 HEIGHT 34 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 171 ,263 BUTTONEX btn5;
CAPTION "Deleterecord";
ON CLICK Deleterecord()  ;
WIDTH 152 HEIGHT 32 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

DO Contact
DO ShowRecord
ACTIVATE WINDOW win1
EndIF

Proc Contact
Public oConoRS
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=data.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from tel",oCon,3,3 )
Return Nil
Proc Disconnect
oRS:Close()
oCon:CLOSE()
Return Nil
Proc Closesystem
DO disconnect
win1.Release ( )
Return Nil
Proc ShowRecord
mymax := oRS:RecordCount
IF mymax > 0
cname := oRS:fields:item(alltrim("name")):value
caddress := oRS:fields:item(alltrim("address")):value
cPhone := oRS:fields:item(alltrim("Phone")):value
ELSE
cname := " "
cPhone := " "
caddress := " "
ENDIF
win1.textname.Value := cname
win1.textaddress.Value := caddress
win1.textphone.Value := cphone
Return Nil
Proc FirstRecord
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVEFIRST()
DO ShowRecord
ENDIF
Return Nil
Proc LastRecord
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVELAST()
DO ShowRecord
ENDIF
Return Nil
Proc NextRecord
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVENEXT()
mycheck := oRS:EOF()
IF mycheck
oRS:MOVEPREVIOUS()
MyOut := MSGBOX("  This end of the file "," Sorry   ")
ELSE
ENDIF
DO ShowRecord
ENDIF
Return Nil
Proc PrevRecord
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVEPREVIOUS()
mycheck := oRS:BOF()
IF mycheck
oRS:MOVENEXT()
MyOut := MSGBOX("            This beginning of the file             ","   Sorry  ")
ELSE
ENDIF
DO ShowRecord
ENDIF
Return Nil
Proc Deleterecord
mymax := oRS:RecordCount
MyOut := MSGOKCANCEL("Are you suor ?","Delete")
IF MyOut == true
IF mymax > 0
oRS:DELETE()
oRS:UPDATE()
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVEPREVIOUS()
oRS:MOVENEXT()
oRS:MOVELAST()
DO ShowRecord
ELSE
DO ShowRecord
ENDIF
ELSE
MyOut := MSGBOX("No Record to delete ","sorry")
ENDIF
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Telephone data base'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'name'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'address'",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",22,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'phone'",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",31,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textname  )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",39,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textaddress  )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",46,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textphone  )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",53,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnFirst ) , Caption : 'First Record'",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action FirstRecord",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",62,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnNext ) , Caption : 'Next Record'",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action NextRecord",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",68,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnPrev ) , Caption : 'Prev Record'",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action PrevRecord",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",74,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnLast ) , Caption : 'Last Record'",77,78)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action LastRecord",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",80,82)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnClose ) , Caption : 'Close Application'",83,84)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Closesystem",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",86,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Deleterecord'",89,90)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Deleterecord",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",92,94)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",95,96)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure Contact",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecord",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",99,101)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Contact",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","Public oConoRS",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",104,105)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=data.mdb'",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",107,108)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",109,111)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Disconnect",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Closesystem",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure disconnect",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ShowRecord",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('name') Value",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('address') Value",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = ADODB RecordSet (oRS) Get Field ('Phone') Value",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ' '",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = ' '",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ' '",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textname.Value := cname",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textaddress.Value := caddress",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textphone.Value := cphone",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure FirstRecord",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecord",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure LastRecord",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecord",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure NextRecord",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check EOF",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '  This end of the file ' Title ' Sorry   ' Type: Message Box",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecord",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure PrevRecord",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '            This beginning of the file             ' Title '   Sorry  ' Type: Message",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecord",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Deleterecord",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Are you suor ?' Title 'Delete' Type: Message Ok/Cancel",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( MyOut == true )",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecord",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecord",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No Record to delete ' Title 'sorry' Type: Message Box",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",196,196)
Return
*-------------------------------------------------------------------*

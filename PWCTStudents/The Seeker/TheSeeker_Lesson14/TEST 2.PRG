*---------------------------------------------------------------------------*
* Time : 06:48:55    Date : 04/12/2012
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


Resistance R_TEST_2_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST_2_18smart1() code
DO connect
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 519 ;
HEIGHT 326 ;
ICON "PWCTICON" ;
TITLE "Telephone database  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 29 ,193 LABEL lbl1 ;
VALUE "Name " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 79 ,193 LABEL lbl2 ;
VALUE "Address " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 129 ,193 LABEL lbl3 ;
VALUE "Phone " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 30 ,286 TEXTBOX textname;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 78 ,286 TEXTBOX textaddress;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 121 ,286 TEXTBOX textphone;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 16 ,20 BUTTONEX btn1;
CAPTION "First record ";
ON CLICK first()  ;
WIDTH 137 HEIGHT 41 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 66 ,20 BUTTONEX btn2;
CAPTION "Next record ";
ON CLICK next()  ;
WIDTH 137 HEIGHT 41 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 116 ,20 BUTTONEX btn3;
CAPTION "Previous record ";
ON CLICK prev()  ;
WIDTH 137 HEIGHT 41 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 208 ,208 BUTTONEX btn5;
CAPTION "close app ";
ON CLICK close()  ;
WIDTH 141 HEIGHT 40 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 172 ,23 BUTTONEX btn6;
CAPTION "last record ";
ON CLICK lastrecord()  ;
WIDTH 134 HEIGHT 41 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 210 ,356 BUTTONEX btn7;
CAPTION "Delete record ";
ON CLICK deleterec()  ;
WIDTH 147 HEIGHT 40 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
END WINDOW

DO showrecord
ACTIVATE WINDOW win1
EndIF

Proc connect
Public oCon,oRS
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=data.mdb' )
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from tel",oCon,3,3 )
Return Nil
Proc disconnect
oCon:CLOSE()
oRS:Close()
Return Nil
Proc showrecord
mymax := oRS:RecordCount
IF mymax > 0
cname := oRS:fields:item(alltrim("name ")):value
caddress := oRS:fields:item(alltrim("address")):value
cphone := oRS:fields:item(alltrim("phone")):value
ELSE
cname := " "
caddress := " "
cphone := " "
ENDIF
win1.textname.Value := cname
win1.textaddress.Value := caddress
win1.textphone.Value := cphone
Return Nil
procedure close()
win1.Release ( )
DO disconnect
return
procedure first()
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVEFIRST()
DO showrecord
ENDIF
return
procedure next()
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVENEXT()
mycheck := oRS:EOF()
IF mycheck
oRS:MOVEPREVIOUS()
MyOut := MSGBOX("End of file ","sorry ")
ELSE
DO showrecord
ENDIF
ENDIF
return
procedure prev()
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVEPREVIOUS()
mycheck := oRS:BOF()
IF mycheck
oRS:MOVENEXT()
MyOut := MSGBOX("begin of file ","sorry ")
ELSE
DO showrecord
ENDIF
ENDIF
return
procedure lastrecord()
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVELAST()
DO showrecord
ENDIF
return
procedure deleterec()
mymax := oRS:RecordCount
IF mymax > 0
MyOut := MSGOKCANCEL("Are you sure? "," Delete")
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
DO showrecord
ELSE
MyOut := MSGBOX("No record to delete "," sorry")
ENDIF
return


End Of Resistance

INIT PROCEDURE Init_TEST_2
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure connect",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Telephone database  '",2,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name '",12,13)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",14,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Address '",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",21,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Phone '",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",28,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textname  )",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",34,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textaddress  )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",41,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textphone  )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",48,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'First record '",54,55)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action first",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",57,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Next record '",60,61)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action next",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",63,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Previous record '",66,67)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action prev",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",69,71)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'close app '",72,73)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action close",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",75,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn6 ) , Caption : 'last record '",78,79)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lastrecord",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",81,83)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn7 ) , Caption : 'Delete record '",84,85)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action deleterec",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",87,89)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",90,91)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",93,95)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Public oCon,oRS",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=data.mdb'",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",101,103)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure disconnect",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showrecord",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('name ') Value",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('address') Value",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (oRS) Get Field ('phone') Value",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ' '",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ' '",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ' '",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textname.Value := cname",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textaddress.Value := caddress",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textphone.Value := cphone",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close ( Event : CLICK )",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure disconnect",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure first ( Event : CLICK )",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure next ( Event : CLICK )",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check EOF",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'End of file ' Title 'sorry ' Type: Message Box",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure prev ( Event : CLICK )",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'begin of file ' Title 'sorry ' Type: Message Box",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lastrecord ( Event : CLICK )",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure deleterec ( Event : CLICK )",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Are you sure? ' Title ' Delete' Type: Message Ok/Cancel",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout = false )",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No record to delete ' Title ' sorry' Type: Message Box",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",189,189)
Return
*-------------------------------------------------------------------*

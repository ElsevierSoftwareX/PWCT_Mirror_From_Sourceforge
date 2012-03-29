*---------------------------------------------------------------------------*
* Time : 06:51:03    Date : 03/29/2012
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
WIDTH 478 ;
HEIGHT 358 ;
ON INIT connect()  ;
ON RELEASE disConnect()  ;
ICON "PWCTICON" ;
TITLE "Phone Book  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 70 ,18 LABEL lbl1 ;
VALUE "Name :" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 123 ,18 LABEL lbl2 ;
VALUE "Address : " ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 176 ,18 LABEL lbl3 ;
VALUE "Phone : " ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 70 ,109 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 123 ,109 TEXTBOX textaddress;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 176 ,109 TEXTBOX textphone;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 69 ,352 BUTTONEX btn1;
CAPTION "First";
ON CLICK btnFrist()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 109 ,352 BUTTONEX btn2;
CAPTION "Next";
ON CLICK btnNext()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 149 ,352 BUTTONEX btn3;
CAPTION "Prev";
ON CLICK btnPrev()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 189 ,352 BUTTONEX btn4;
CAPTION "Last";
ON CLICK btnLast()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 246 ,140 BUTTONEX btn5;
CAPTION "Delete";
ON CLICK btnDel()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 279 ,351 BUTTONEX btn6;
CAPTION "Close";
ON CLICK btnClose()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Connect
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=data.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from tel",oCon,3,3 )
DO showRecord
Return Nil
Proc disConnect
oRS:Close()
oCon:CLOSE()
Return Nil
Proc showRecord
nMax := oRS:RecordCount
IF nMax >0
cName := oRS:fields:item(alltrim("name ")):value
caddress := oRS:fields:item(alltrim("address")):value
cphone := oRS:fields:item(alltrim("phone")):value
win1.textName.Value := cName
win1.textaddress.Value := cAddress
win1.textphone.Value := cPhone
ELSE
win1.textName.Value := ""
win1.textaddress.Value := ""
win1.textphone.Value := ""
ENDIF
Return Nil
procedure btnFrist()
nMax := oRS:RecordCount
IF nmax >0
oRS:MOVEFIRST()
DO showRecord
ENDIF
return
procedure btnLast()
nMax := oRS:RecordCount
IF nMax > 0
oRS:MOVELAST()
DO showRecord
ENDIF
return
procedure btnPrev()
nMax := oRS:RecordCount
IF nMax>0
oRS:MOVEPREVIOUS()
MyCheck := oRS:BOF()
IF myCheck
oRS:MOVENEXT()
MyOut := MSGBOX("This is First Record ","Sorry")
ELSE
DO showRecord
ENDIF
ENDIF
return
procedure btnNext()
nMax := oRS:RecordCount
IF nMax>0
oRS:MOVENEXT()
myCheck := oRS:EOF()
IF myCheck
oRS:MOVEPREVIOUS()
MyOut := MSGBOX("This is Last Record ","Sorry ")
ELSE
DO showRecord
ENDIF
ENDIF
return
procedure btnClose()
win1.Release ( )
return
procedure btnDel()
nmax := oRS:RecordCount
IF nMax>0
MyOut := MSGOKCANCEL("Are you sure delete this record ","delete ")
IF myOut = true
oRS:DELETE()
oRS:UPDATE()
oRS:MOVEPREVIOUS()
mycheck := oRS:BOF()
IF mycheck
oRS:MOVENEXT()
ENDIF
ENDIF
ENDIF
DO showrecord
return


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Phone Book  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action connect",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE : Action disConnect",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",8,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name :'",16,17)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",18,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Address : '",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",25,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Phone : '",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",32,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textName  )",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",38,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textaddress  )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",45,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textphone  )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",52,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'First'",58,59)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action btnFrist",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",61,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Next'",64,65)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action btnNext",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",67,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Prev'",70,71)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action btnPrev",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",73,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'Last'",76,77)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action btnLast",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",79,81)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Delete'",82,83)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action btnDel",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",85,87)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn6 ) , Caption : 'Close'",88,89)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action btnClose",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",91,93)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",94,95)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",96,98)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Connect",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",100,101)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=data.mdb'",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",103,104)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",105,107)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showRecord",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure disConnect",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showRecord",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (oRS) , Get Records Count",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax >0 )",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","cName = ADODB RecordSet (oRS) Get Field ('name ') Value",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('address') Value",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (oRS) Get Field ('phone') Value",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := cName",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textaddress.Value := cAddress",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textphone.Value := cPhone",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := ''",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textaddress.Value := ''",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textphone.Value := ''",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure btnFrist ( Event : CLICK )",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (oRS) , Get Records Count",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nmax >0 )",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showRecord",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure btnLast ( Event : CLICK )",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (oRS) , Get Records Count",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showRecord",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure btnPrev ( Event : CLICK )",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (oRS) , Get Records Count",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax>0 )",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","MyCheck = ADODB RecordSet oRS , Check BOF",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myCheck )",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'This is First Record ' Title 'Sorry' Type: Message Box",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showRecord",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure btnNext ( Event : CLICK )",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (oRS) , Get Records Count",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax>0 )",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","myCheck = ADODB RecordSet oRS , Check EOF",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myCheck )",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'This is Last Record ' Title 'Sorry ' Type: Message Box",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showRecord",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure btnClose ( Event : CLICK )",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure btnDel ( Event : CLICK )",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","nmax := ADODB RecordSet (oRS) , Get Records Count",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax>0 )",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Are you sure delete this record ' Title 'delete ' Type: Message Ok/Cancel",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myOut = true )",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",187,187)
Return
*-------------------------------------------------------------------*

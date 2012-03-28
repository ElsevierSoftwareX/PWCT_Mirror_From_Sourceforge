*---------------------------------------------------------------------------*
* Time : 11:36:51    Date : 03/27/2012
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
WIDTH 411 ;
HEIGHT 389 ;
ON INIT connectdb()  ;
ON RELEASE disconnectdb()  ;
ICON "PWCTICON" ;
TITLE "«· ‰ﬁ· »Ì‰ «·”Ã·«   " ;
MAIN ;
BACKCOLOR {255,255,255} 

win1.Center ( )
@ 60 ,309 LABEL lbl1 ;
VALUE ": «·«”„ " ;
WIDTH 70 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,128}
@ 114 ,309 LABEL lbl2 ;
VALUE ": «·⁄‰Ê«‰" ;
WIDTH 70 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,128}
@ 170 ,309 LABEL lbl3 ;
VALUE ": «· ·Ì›Ê‰" ;
WIDTH 70 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,128}
@ 60 ,33 TEXTBOX textname;
HEIGHT 30 ;
WIDTH 270 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {253,251,172} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 115 ,33 TEXTBOX textaddress;
HEIGHT 30 ;
WIDTH 270 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {253,251,172} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 170 ,163 TEXTBOX textphone;
HEIGHT 30 ;
WIDTH 140 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {253,251,172} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 253 ,294 BUTTONEX btn1;
CAPTION "=>> «·√Ê·";
FONTCOLOR {255,255,255};
BACKCOLOR {128,0,64};
ON CLICK btnFirst()  ;
WIDTH 85 HEIGHT 29 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 253 ,208 BUTTONEX btn2;
CAPTION "<< «· «·Ì";
FONTCOLOR {255,255,255};
BACKCOLOR {128,0,64};
ON CLICK btnNext()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 253 ,122 BUTTONEX btn3;
CAPTION ">> «·”«»ﬁ";
FONTCOLOR {255,255,255};
BACKCOLOR {128,0,64};
ON CLICK btnPrev()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 253 ,24 BUTTONEX btn4;
CAPTION "<<= «·√ŒÌ—";
FONTCOLOR {255,255,255};
BACKCOLOR {128,0,64};
ON CLICK btnLast()  ;
WIDTH 92 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 312 ,20 BUTTONEX btn5;
CAPTION "Œ—ÊÃ";
FONTCOLOR {255,255,255};
BACKCOLOR {0,64,64};
ON CLICK btnClose()  ;
WIDTH 110 HEIGHT 35 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

procedure connectdb()
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=data.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from tel",oCon,3,3 )
DO PShowRecord
return
procedure disconnectdb()
oRS:Close()
oCon:CLOSE()
return
Proc PShowRecord
cName := oRS:fields:item(alltrim("name")):value
cAddress := oRS:fields:item(alltrim("address")):value
cPhone := oRS:fields:item(alltrim("phone")):value
win1.textname.Value := cName
win1.textaddress.Value := cAddress
win1.textphone.Value := cPhone
Return Nil
procedure btnFirst()
oRS:MOVEFIRST()
DO PShowRecord
return
procedure btnNext()
oRS:MOVENEXT()
myCheck := oRS:EOF()
IF myCheck
oRS:MOVEPREVIOUS()
MyOut := MSGBOX("Â–« ÂÊ √Œ— ”Ã· "," ⁄›‹‹Ê«")
ELSE
DO PShowRecord
ENDIF
return
procedure btnPrev()
oRS:MOVEPREVIOUS()
myCheck := oRS:BOF()
IF myCheck
oRS:MOVENEXT()
MyOut := MSGBOX("Â–« ÂÊ √Ê· ”Ã· ","⁄›Ê«")
ELSE
DO PShowRecord
ENDIF
return
procedure btnLast()
oRS:MOVELAST()
DO PShowRecord
return
procedure btnClose()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«· ‰ﬁ· »Ì‰ «·”Ã·«   '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action connectdb",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE : Action disconnectdb",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",8,12)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : ': «·«”„ '",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : ': «·⁄‰Ê«‰'",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",23,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : ': «· ·Ì›Ê‰'",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",30,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textname  )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",36,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textaddress  )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",44,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textphone  )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",52,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '=>> «·√Ê·'",59,62)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action btnFirst",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",64,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '<< «· «·Ì'",68,71)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action btnNext",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",73,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : '>> «·”«»ﬁ'",77,80)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action btnPrev",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",82,85)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : '<<= «·√ŒÌ—'",86,89)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action btnLast",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",91,94)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Œ—ÊÃ'",95,98)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action btnClose",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",100,103)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",104,105)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",106,108)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",109,111)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connectdb - Event : INIT",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",113,114)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Ext",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",116,117)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",118,120)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure PShowRecord",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure disconnectdb - Event : RELEASE",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure PShowRecord",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","cName = ADODB RecordSet (oRS) Get Field ('name') Value",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = ADODB RecordSet (oRS) Get Field ('address') Value",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = ADODB RecordSet (oRS) Get Field ('phone') Value",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textname.Value := cName",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textaddress.Value := cAddress",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textphone.Value := cPhone",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure btnFirst ( Event : CLICK )",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure PShowRecord",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure btnNext ( Event : CLICK )",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","myCheck = ADODB RecordSet oRS , Check EOF",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myCheck )",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Â–« ÂÊ √Œ— ”Ã· ' Title ' ⁄›‹‹Ê«' Type: Message Box",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure PShowRecord",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure btnPrev ( Event : CLICK )",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","myCheck = ADODB RecordSet oRS , Check BOF",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myCheck )",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Â–« ÂÊ √Ê· ”Ã· ' Title '⁄›Ê«' Type: Message Box",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure PShowRecord",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure btnLast ( Event : CLICK )",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure PShowRecord",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure btnClose ( Event : CLICK )",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",165,165)
Return
*-------------------------------------------------------------------*

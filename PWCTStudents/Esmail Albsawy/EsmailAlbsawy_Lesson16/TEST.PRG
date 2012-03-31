*---------------------------------------------------------------------------*
* Time : 00:49:22    Date : 03/30/2012
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
savemode := 1
Public savemode
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 546 ;
HEIGHT 406 ;
ON INIT connectdb()  ;
ON RELEASE disconnectdb()  ;
ICON "PWCTICON" ;
TITLE "Phone Book" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

win1.Center ( )
@ 60 ,449 LABEL lbl1 ;
VALUE ": «·«”„ " ;
WIDTH 70 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,128}
@ 114 ,449 LABEL lbl2 ;
VALUE ": «·⁄‰Ê«‰" ;
WIDTH 70 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,128}
@ 170 ,449 LABEL lbl3 ;
VALUE ": «· ·Ì›Ê‰" ;
WIDTH 70 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,128}
@ 60 ,173 TEXTBOX textname;
HEIGHT 30 ;
WIDTH 270 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {253,251,172} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 115 ,173 TEXTBOX textaddress;
HEIGHT 30 ;
WIDTH 270 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {253,251,172} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 170 ,303 TEXTBOX textphone;
HEIGHT 30 ;
WIDTH 140 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {253,251,172} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 59 ,24 BUTTONEX btn1;
CAPTION "=>> «·√Ê·";
FONTCOLOR {255,255,255};
BACKCOLOR {128,0,64};
ON CLICK btnFirst()  ;
WIDTH 92 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 101 ,24 BUTTONEX btn2;
CAPTION "<< «· «·Ì";
FONTCOLOR {255,255,255};
BACKCOLOR {128,0,64};
ON CLICK btnNext()  ;
WIDTH 92 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 143 ,24 BUTTONEX btn3;
CAPTION ">> «·”«»ﬁ";
FONTCOLOR {255,255,255};
BACKCOLOR {128,0,64};
ON CLICK btnPrev()  ;
WIDTH 92 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 185 ,24 BUTTONEX btn4;
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
@ 250 ,104 BUTTONEX btn6;
CAPTION "Õ‹‹–› ";
FONTCOLOR {255,255,128};
BACKCOLOR {255,0,0};
ON CLICK btnDel()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 248 ,371 BUTTONEX btn7;
CAPTION " ⁄œÌ·";
FONTCOLOR {255,255,255};
BACKCOLOR {128,0,64};
ON CLICK btnEdit()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 249 ,289 BUTTONEX btn8;
CAPTION "Õ›Ÿ";
FONTCOLOR {255,255,255};
BACKCOLOR {128,0,64};
ON CLICK btnSave()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 250 ,207 BUTTONEX btn9;
CAPTION "≈·€«¡";
FONTCOLOR {255,255,255};
BACKCOLOR {128,0,64};
ON CLICK btnCancel()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 249 ,453 BUTTONEX btn10;
CAPTION "≈÷«›… ";
FONTCOLOR {255,255,255};
BACKCOLOR {128,0,64};
ON CLICK btnAdd()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
DO mode WITH 1
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
nmax := oRS:RecordCount
IF nmax > 0
cName := oRS:fields:item(alltrim("name")):value
cAddress := oRS:fields:item(alltrim("address")):value
cPhone := oRS:fields:item(alltrim("phone")):value
win1.textname.Value := cName
win1.textaddress.Value := cAddress
win1.textphone.Value := cPhone
ELSE
win1.textname.Value := ""
win1.textaddress.Value := ""
win1.textphone.Value := ""
ENDIF
Return Nil
procedure btnFirst()
nMax := oRS:RecordCount
IF nMax >0
oRS:MOVEFIRST()
DO PShowRecord
ENDIF
return
procedure btnNext()
nMax := oRS:RecordCount
IF nMax>0
oRS:MOVENEXT()
myCheck := oRS:EOF()
IF myCheck
oRS:MOVEPREVIOUS()
MyOut := MSGBOX("Â–« ÂÊ √Œ— ”Ã· "," ⁄›‹‹Ê«")
ELSE
DO PShowRecord
ENDIF
ENDIF
return
procedure btnPrev()
nMax := oRS:RecordCount
IF nMax>0
oRS:MOVEPREVIOUS()
myCheck := oRS:BOF()
IF myCheck
oRS:MOVENEXT()
MyOut := MSGBOX("Â–« ÂÊ √Ê· ”Ã· "," ⁄›‹‹Ê«")
ELSE
DO PShowRecord
ENDIF
ENDIF
return
procedure btnLast()
nMax := oRS:RecordCount
IF nMax>0
oRS:MOVELAST()
DO PShowRecord
ENDIF
return
procedure btnClose()
win1.Release ( )
return
procedure btnDel()
nMax := oRS:RecordCount
IF nMax > 0
MyOut := MSGOKCANCEL("Â· √‰  „ √ﬂœ √‰ﬂ  —Ìœ Õ–› Â–« «·”Ã· ","Õ‹‹‹‹–› ")
IF myOut = true
oRS:DELETE()
oRS:UPDATE()
oRS:MOVEPREVIOUS()
myCheck := oRS:BOF()
IF myCheck
oRS:MOVENEXT()
ENDIF
ENDIF
IF myOut = False
Return 0
ENDIF
ELSE
MyOut := MSGBOX("·«  ÊÃœ „·›«  · Õ–›Â« ","⁄›‹‹Ê« ")
ENDIF
DO PShowRecord
return
Proc mode( p1 )
IF p1 = 1
win1.btn1.Enabled := true
win1.btn2.Enabled := true
win1.btn3.Enabled := true
win1.btn4.Enabled := true
win1.btn5.Enabled := true
win1.btn6.Enabled := true
win1.btn7.Enabled := true
win1.btn8.Enabled := false
win1.btn9.Enabled := false
win1.btn10.Enabled := true
ENDIF
IF P1 =2
win1.btn1.Enabled := false
win1.btn2.Enabled := false
win1.btn3.Enabled := false
win1.btn4.Enabled := false
win1.btn5.Enabled := false
win1.btn6.Enabled := false
win1.btn7.Enabled := false
win1.btn8.Enabled := true
win1.btn9.Enabled := true
win1.btn10.Enabled := false
ENDIF
Return Nil
procedure btnEdit()
nMax := oRS:RecordCount
IF nMax > 0
DO mode WITH 2
savemode := 1
ELSE
MyOut := MSGBOX("·«  ÊÃœ „·›«  ·· ⁄œÌ·","⁄›Ê«")
ENDIF
return
procedure btnSave()
cName := win1.textname.Value
cAddress := win1.textaddress.Value
cphone := win1.textphone.Value
oRS:fields:item(alltrim("name ")):value := cname
oRS:fields:item(alltrim("address")):value := caddress
oRS:fields:item(alltrim("phone")):value := cphone
oRS:UPDATE()
DO mode WITH 1
return
procedure btnCancel()
DO PShowRecord
DO mode WITH 1
IF savemode = 2
oRS:DELETE()
oRS:UPDATE()
oRS:MOVEPREVIOUS()
myCheck := oRS:BOF()
IF myCheck
oRS:MOVENEXT()
ENDIF
DO PShowRecord
ENDIF
return
procedure btnAdd()
savemode := 2
oRS:ADDNEW()
DO mode WITH 2
DO pshowrecord
return


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","savemode = 1",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Public savemode",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Phone Book'",3,7)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action connectdb",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE : Action disconnectdb",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",10,17)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : ': «·«”„ '",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",21,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : ': «·⁄‰Ê«‰'",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",28,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : ': «· ·Ì›Ê‰'",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",35,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textname  )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",41,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textaddress  )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",49,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textphone  )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",57,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '=>> «·√Ê·'",64,67)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action btnFirst",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",69,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '<< «· «·Ì'",73,76)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action btnNext",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",78,81)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : '>> «·”«»ﬁ'",82,85)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action btnPrev",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",87,90)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : '<<= «·√ŒÌ—'",91,94)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action btnLast",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",96,99)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Œ—ÊÃ'",100,103)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action btnClose",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",105,108)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn6 ) , Caption : 'Õ‹‹–› '",109,112)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action btnDel",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",114,118)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn7 ) , Caption : ' ⁄œÌ·'",119,122)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action btnEdit",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",124,127)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn8 ) , Caption : 'Õ›Ÿ'",128,131)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action btnSave",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",133,136)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn9 ) , Caption : '≈·€«¡'",137,140)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action btnCancel",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",142,145)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn10 ) , Caption : '≈÷«›… '",146,149)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action btnAdd",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",151,154)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",155,156)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",157,159)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",161,163)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connectdb - Event : INIT",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",165,166)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Ext",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",168,169)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",170,172)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure PShowRecord",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure disconnectdb - Event : RELEASE",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure PShowRecord",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","nmax := ADODB RecordSet (oRS) , Get Records Count",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nmax > 0 )",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","cName = ADODB RecordSet (oRS) Get Field ('name') Value",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = ADODB RecordSet (oRS) Get Field ('address') Value",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = ADODB RecordSet (oRS) Get Field ('phone') Value",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textname.Value := cName",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textaddress.Value := cAddress",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textphone.Value := cPhone",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textname.Value := ''",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textaddress.Value := ''",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textphone.Value := ''",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure btnFirst ( Event : CLICK )",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (oRS) , Get Records Count",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax >0 )",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure PShowRecord",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure btnNext ( Event : CLICK )",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (oRS) , Get Records Count",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax>0 )",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","myCheck = ADODB RecordSet oRS , Check EOF",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myCheck )",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Â–« ÂÊ √Œ— ”Ã· ' Title ' ⁄›‹‹Ê«' Type: Message Box",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure PShowRecord",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure btnPrev ( Event : CLICK )",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (oRS) , Get Records Count",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax>0 )",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","myCheck = ADODB RecordSet oRS , Check BOF",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myCheck )",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Â–« ÂÊ √Ê· ”Ã· ' Title ' ⁄›‹‹Ê«' Type: Message Box",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure PShowRecord",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure btnLast ( Event : CLICK )",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (oRS) , Get Records Count",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax>0 )",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure PShowRecord",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure btnClose ( Event : CLICK )",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure btnDel ( Event : CLICK )",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (oRS) , Get Records Count",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Â· √‰  „ √ﬂœ √‰ﬂ  —Ìœ Õ–› Â–« «·”Ã· ' Title 'Õ‹‹‹‹–› ' Type: Message Ok/Cancel",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myOut = true )",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","myCheck = ADODB RecordSet oRS , Check BOF",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myCheck )",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myOut = False )",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '·«  ÊÃœ „·›«  · Õ–›Â« ' Title '⁄›‹‹Ê« ' Type: Message Box",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure PShowRecord",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mode( p1 )",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1 = 1 )",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Enabled := true",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Enabled := true",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn3.Enabled := true",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn4.Enabled := true",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Enabled := true",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn6.Enabled := true",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn7.Enabled := true",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn8.Enabled := false",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn9.Enabled := false",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn10.Enabled := true",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( P1 =2 )",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Enabled := false",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Enabled := false",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn3.Enabled := false",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn4.Enabled := false",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Enabled := false",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn6.Enabled := false",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn7.Enabled := false",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn8.Enabled := true",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn9.Enabled := true",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn10.Enabled := false",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure btnEdit ( Event : CLICK )",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (oRS) , Get Records Count",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","savemode = 1",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '·«  ÊÃœ „·›«  ·· ⁄œÌ·' Title '⁄›Ê«' Type: Message Box",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure btnSave ( Event : CLICK )",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.textname.Value",294,294)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = win1.textaddress.Value",295,295)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = win1.textphone.Value",296,296)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('name ') Value To (cname)",297,297)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('address') Value To (caddress)",298,298)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('phone') Value To (cphone)",299,299)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",300,300)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",301,301)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",302,302)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure btnCancel ( Event : CLICK )",303,303)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure PShowRecord",304,304)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",305,305)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( savemode = 2 )",306,306)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",307,307)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",308,308)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",309,309)
SS_ESASTEP("Circuits\Main\Main\Main","myCheck = ADODB RecordSet oRS , Check BOF",310,310)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myCheck )",311,311)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",312,312)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",313,313)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure PShowRecord",314,314)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",315,315)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",316,316)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure btnAdd ( Event : CLICK )",317,317)
SS_ESASTEP("Circuits\Main\Main\Main","savemode = 2",318,318)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Add New Record",319,319)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",320,320)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure pshowrecord",321,321)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",322,322)
Return
*-------------------------------------------------------------------*

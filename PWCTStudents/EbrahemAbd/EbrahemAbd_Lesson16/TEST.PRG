*---------------------------------------------------------------------------*
* Time : 23:52:24    Date : 03/26/2012
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
Public oCon,oRS
DO connect
Public saveadd
saveadd := 1
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 680 ;
HEIGHT 542 ;
ICON "PWCTICON" ;
TITLE "ãÝßÑÊì  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
CURSOR "PICO\ABN.ANI" ;
BACKCOLOR {236,233,216} ;
NOTIFYICON "PICO\ACADMY.ICO" 

win1.Center ( )
@ -13 ,-6 IMAGE image1;
PICTURE "PICO\PIC1.JPG";
STRETCH ;
WIDTH 679 HEIGHT 500
@ 139 ,174 TEXTBOX text1;
HEIGHT 44 ;
WIDTH 188 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 208 ,174 TEXTBOX text2;
HEIGHT 45 ;
WIDTH 188 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 281 ,174 TEXTBOX text3;
HEIGHT 46 ;
WIDTH 188 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 133 ,517 BUTTONEX btn1;
CAPTION "ÇáÓÌá ÇáÇæá";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
PICTURE "PICO\F.ICO";
ON CLICK F()  ;
WIDTH 132 HEIGHT 43 ;
FONT "Arial" SIZE 12 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 206 ,517 BUTTONEX btn2;
CAPTION "ÇáÓÌá ÇáÊÇáì";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
PICTURE "PICO\NEX.ICO";
ON CLICK N()  ;
WIDTH 132 HEIGHT 43 ;
FONT "Arial" SIZE 12 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 281 ,516 BUTTONEX btn3;
CAPTION "ÇáÓÌá ÇáÓÇÈÞ ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
PICTURE "PICO\LAST.ICO";
ON CLICK P()  ;
WIDTH 132 HEIGHT 43 ;
FONT "Arial" SIZE 12 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 359 ,517 BUTTONEX btn4;
CAPTION "ÇáÓÌá ÇáÇÎíÑ ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
PICTURE "PICO\END.ICO";
ON CLICK L()  ;
WIDTH 132 HEIGHT 43 ;
FONT "Arial" SIZE 12 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 362 ,25 BUTTONEX btn5;
CAPTION "ÎÑæÌ ";
FONTCOLOR {0,0,0};
BACKCOLOR {242,83,210};
PICTURE "PICO\CLOSE.BMP";
ON CLICK MYCLOSE()  ;
WIDTH 99 HEIGHT 41 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 360 ,341 BUTTONEX btn6;
CAPTION "ÍÐÝ ÇáÓÌá ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
PICTURE "PICO\DELETE.BMP";
ON CLICK del()  ;
WIDTH 107 HEIGHT 41 ;
FONT "Arial" SIZE 12 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 207 ,25 BUTTONEX btn7;
CAPTION "ÊÚÏíá ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
ON CLICK edit()  ;
WIDTH 100 HEIGHT 43 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 285 ,25 BUTTONEX btn8;
CAPTION "ÇáÛÇÁ ÇáÊÚÏíá";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
ON CLICK cancel()  ;
WIDTH 100 HEIGHT 43 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 360 ,176 BUTTONEX btn9;
CAPTION "ÍÝÙ ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
ON CLICK saveedit()  ;
WIDTH 100 HEIGHT 43 ;
FONT "arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 134 ,25 BUTTONEX btn10;
CAPTION "ÇÖÇÝÉ ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
ON CLICK add()  ;
WIDTH 100 HEIGHT 43 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
DEFINE STATUSBAR ;
BOLD 

DATE

CLOCK

STATUSITEM "ÌÇåÒ"

END STATUSBAR

END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
DO rshow
DO mode WITH 1
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
Proc rshow
mymax := oRS:RecordCount
IF mymax>0
cname := oRS:fields:item(alltrim("name")):value
caddress := oRS:fields:item(alltrim("address")):value
cphone := oRS:fields:item(alltrim("phone")):value
win1.text1.Value := CNAME
win1.text3.Value := CPHONE
win1.text2.Value := CADDRESS
ELSE
win1.text1.Value := ""
win1.text3.Value := ""
win1.text2.Value := ""
ENDIF
Return Nil
Proc F
mymax := oRS:RecordCount
IF mymax>0
oRS:MOVEFIRST()
DO rshow
ELSE
win1.text1.Value := ""
win1.text3.Value := ""
win1.text2.Value := ""
ENDIF
Return Nil
Proc N
mymax := oRS:RecordCount
IF mymax>0
oRS:MOVENEXT()
mycheck := oRS:EOF()
IF mycheck
oRS:MOVEPREVIOUS()
MyOut := MSGExclamation("ÚÝæÇ ÇäÊ ÚäÏ ÃÎÑ ÓÌá ","ÃÎÑ ÓÌá ")
ELSE
DO rshow
ENDIF
ELSE
win1.text1.Value := ""
win1.text3.Value := ""
win1.text2.Value := ""
ENDIF
Return Nil
Proc P
mymax := oRS:RecordCount
IF mymax>0
oRS:MOVEPREVIOUS()
mycheck := oRS:BOF()
IF mycheck
oRS:MOVENEXT()
MyOut := MSGExclamation("ÚÝæÇ ÇäÊ ÚäÏ Ãæá ÓÌá ","Ãæá  ÓÌá ")
ELSE
DO rshow
ENDIF
ELSE
win1.text1.Value := ""
win1.text3.Value := ""
win1.text2.Value := ""
ENDIF
Return Nil
Proc L
mymax := oRS:RecordCount
IF mymax>0
oRS:MOVELAST()
DO rshow
ELSE
win1.text1.Value := ""
win1.text3.Value := ""
win1.text2.Value := ""
ENDIF
Return Nil
Proc MYCLOSE
oRS:Close()
oCon:CLOSE()
win1.Release ( )
Return Nil
Proc del
mymax := oRS:RecordCount
IF mymax > 0
MyOut := MSGOKCANCEL("åá ÃäÊ ãÊÃßÏ   ? ÓíÊã ÍÐÝ ÇáÓÌá ÇáÍÇáì ","ÊÃßíÏ ÇáÍÐÝ")
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
DO rshow
ELSE
MyOut := MSGExclamation("! áÇ íæÌÏ ÓÌáÇÊ ááÍÐÝ ","ÚÝæÇ áÇ íæÌÏ ÔìÁ")
ENDIF
Return Nil
Proc mode( p1 )
IF p1=1
win1.btn1.Enabled := true
win1.btn2.Enabled := true
win1.btn3.Enabled := true
win1.btn4.Enabled := true
win1.btn5.Enabled := true
win1.btn6.Enabled := true
win1.btn7.Enabled := true
win1.btn8.Enabled := false
win1.btn9.Enabled := false
win1.text1.ReadOnly := true
win1.text2.ReadOnly := true
win1.text3.ReadOnly := true
win1.btn10.Enabled := true
ENDIF
IF p1=2
win1.btn1.Enabled := false
win1.btn2.Enabled := false
win1.btn3.Enabled := false
win1.btn4.Enabled := false
win1.btn5.Enabled := false
win1.btn6.Enabled := false
win1.btn7.Enabled := false
win1.btn8.Enabled := true
win1.btn9.Enabled := true
win1.text1.ReadOnly := false
win1.text2.ReadOnly := false
win1.text3.ReadOnly := false
win1.btn10.Enabled := false
ENDIF
Return Nil
Proc edit
mymax := oRS:RecordCount
IF mymax>0
DO mode WITH 2
win1.text1.SetFocus ( )
ELSE
MyOut := MSGExclamation("ÚÝæÇ áÇ íæÌÏ ÓÌáÇÊ ááÊÚÏíá ","áÇ íæÌÏ ÓÌáÇÊ")
DO mode WITH 1
ENDIF
Return Nil
Proc saveedit
DO mode WITH 1
cname := win1.text1.Value
caddress := win1.text2.Value
cphone := win1.text3.Value
oRS:fields:item(alltrim("name ")):value := cname
oRS:fields:item(alltrim("address ")):value := caddress
oRS:fields:item(alltrim("phone ")):value := cphone
oRS:UPDATE()
Return Nil
Proc cancel
IF saveadd=2
mymax := oRS:RecordCount
IF mymax > 0
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
DO rshow
ENDIF
ENDIF
DO mode WITH 1
DO rshow
Return Nil
Proc add
oRS:ADDNEW()
DO rshow
saveadd := 2
DO mode WITH 2
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Public oCon,oRS",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure connect",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Public saveadd",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","saveadd = 1",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'ãÝßÑÊì  '",5,9)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",10,19)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'PICO\PIC1.JPG'",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",26,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",34,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",42,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'ÇáÓÌá ÇáÇæá'",49,53)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action F",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",55,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'ÇáÓÌá ÇáÊÇáì'",60,64)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action N",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",66,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'ÇáÓÌá ÇáÓÇÈÞ '",71,75)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action P",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",77,81)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'ÇáÓÌá ÇáÇÎíÑ '",82,86)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action L",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",88,92)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'ÎÑæÌ '",93,97)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action MYCLOSE",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",99,102)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn6 ) , Caption : 'ÍÐÝ ÇáÓÌá '",103,107)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action del",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",109,113)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn7 ) , Caption : 'ÊÚÏíá '",114,117)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action edit",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",119,122)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn8 ) , Caption : 'ÇáÛÇÁ ÇáÊÚÏíá'",123,126)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action cancel",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",128,131)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn9 ) , Caption : 'ÍÝÙ '",132,135)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action saveedit",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",137,140)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn10 ) , Caption : 'ÇÖÇÝÉ '",141,144)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action add",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",146,149)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",150,152)
SS_ESASTEP("Circuits\Main\Main\Main","Date",153,154)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",155,156)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'ÌÇåÒ' )",157,158)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",159,160)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",161,162)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",163,165)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure rshow",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",168,170)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",172,173)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=data.mdb'",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",175,176)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",177,179)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure rshow",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('name') Value",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('address') Value",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (oRS) Get Field ('phone') Value",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := CNAME",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := CPHONE",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := CADDRESS",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := ''",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := ''",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := ''",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure F",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure rshow",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := ''",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := ''",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := ''",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure N",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check EOF",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'ÚÝæÇ ÇäÊ ÚäÏ ÃÎÑ ÓÌá ' Title 'ÃÎÑ ÓÌá ' Type: Message Exclamation",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure rshow",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := ''",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := ''",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := ''",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure P",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'ÚÝæÇ ÇäÊ ÚäÏ Ãæá ÓÌá ' Title 'Ãæá  ÓÌá ' Type: Message Exclamation",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure rshow",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := ''",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := ''",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := ''",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure L",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure rshow",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := ''",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := ''",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := ''",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure MYCLOSE",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure del",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'åá ÃäÊ ãÊÃßÏ   ? ÓíÊã ÍÐÝ ÇáÓÌá ÇáÍÇáì ' Title 'ÊÃßíÏ ÇáÍÐÝ' Type: Message Ok/Cancel",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout = false )",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure rshow",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '! áÇ íæÌÏ ÓÌáÇÊ ááÍÐÝ ' Title 'ÚÝæÇ áÇ íæÌÏ ÔìÁ' Type: Message Exclamation",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mode( p1 )",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1=1 )",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Enabled := true",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Enabled := true",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn3.Enabled := true",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn4.Enabled := true",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Enabled := true",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn6.Enabled := true",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn7.Enabled := true",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn8.Enabled := false",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn9.Enabled := false",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.ReadOnly := true",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.ReadOnly := true",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.ReadOnly := true",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn10.Enabled := true",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",294,294)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1=2 )",295,295)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Enabled := false",296,296)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Enabled := false",297,297)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn3.Enabled := false",298,298)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn4.Enabled := false",299,299)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Enabled := false",300,300)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn6.Enabled := false",301,301)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn7.Enabled := false",302,302)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn8.Enabled := true",303,303)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn9.Enabled := true",304,304)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.ReadOnly := false",305,305)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.ReadOnly := false",306,306)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.ReadOnly := false",307,307)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn10.Enabled := false",308,308)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",309,309)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",310,310)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure edit",311,311)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",312,312)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",313,313)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",314,314)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.SetFocus ( )",315,315)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",316,316)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'ÚÝæÇ áÇ íæÌÏ ÓÌáÇÊ ááÊÚÏíá ' Title 'áÇ íæÌÏ ÓÌáÇÊ' Type: Message Exclamation",317,317)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",318,318)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",319,319)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",320,320)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure saveedit",321,321)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",322,322)
SS_ESASTEP("Circuits\Main\Main\Main","cname = win1.text1.Value",323,323)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = win1.text2.Value",324,324)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = win1.text3.Value",325,325)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('name ') Value To (cname)",326,326)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('address ') Value To (caddress)",327,327)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('phone ') Value To (cphone)",328,328)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",329,329)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",330,330)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure cancel",331,331)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( saveadd=2 )",332,332)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",333,333)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",334,334)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",335,335)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",336,336)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",337,337)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",338,338)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",339,339)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",340,340)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",341,341)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",342,342)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",343,343)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",344,344)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure rshow",345,345)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",346,346)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",347,347)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",348,348)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure rshow",349,349)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",350,350)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure add",351,351)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Add New Record",352,352)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure rshow",353,353)
SS_ESASTEP("Circuits\Main\Main\Main","saveadd = 2",354,354)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",355,355)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",356,356)
Return
*-------------------------------------------------------------------*

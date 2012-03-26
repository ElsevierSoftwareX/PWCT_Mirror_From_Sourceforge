*---------------------------------------------------------------------------*
* Time : 19:03:13    Date : 03/26/2012
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
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 680 ;
HEIGHT 542 ;
ICON "PWCTICON" ;
TITLE "„›ﬂ— Ï  " ;
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
@ 139 ,184 TEXTBOX text1;
HEIGHT 44 ;
WIDTH 188 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 208 ,184 TEXTBOX text2;
HEIGHT 45 ;
WIDTH 188 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 281 ,184 TEXTBOX text3;
HEIGHT 46 ;
WIDTH 188 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 133 ,517 BUTTONEX btn1;
CAPTION "«·”Ã· «·«Ê·";
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
CAPTION "«·”Ã· «· «·Ï";
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
CAPTION "«·”Ã· «·”«»ﬁ ";
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
CAPTION "«·”Ã· «·«ŒÌ— ";
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
CAPTION "Œ—ÊÃ ";
FONTCOLOR {0,0,0};
BACKCOLOR {242,83,210};
PICTURE "PICO\CLOSE.BMP";
ON CLICK MYCLOSE()  ;
WIDTH 99 HEIGHT 41 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 368 ,356 BUTTONEX btn6;
CAPTION "Õ–› «·”Ã· ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
PICTURE "PICO\DELETE.BMP";
ON CLICK del()  ;
WIDTH 107 HEIGHT 41 ;
FONT "Arial" SIZE 12 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 151 ,27 BUTTONEX btn7;
CAPTION " ⁄œÌ· ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
ON CLICK edit()  ;
WIDTH 100 HEIGHT 43 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 249 ,26 BUTTONEX btn8;
CAPTION "«·€«¡ «· ⁄œÌ·";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
ON CLICK cancel()  ;
WIDTH 100 HEIGHT 43 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 364 ,192 BUTTONEX btn9;
CAPTION "Õ›Ÿ «· ⁄œÌ·";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
ON CLICK saveedit()  ;
WIDTH 100 HEIGHT 43 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
DEFINE STATUSBAR ;
BOLD 

DATE

CLOCK

STATUSITEM "Ã«Â“"

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
MyOut := MSGExclamation("⁄›Ê« «‰  ⁄‰œ √Œ— ”Ã· ","√Œ— ”Ã· ")
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
MyOut := MSGExclamation("⁄›Ê« «‰  ⁄‰œ √Ê· ”Ã· ","√Ê·  ”Ã· ")
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
MyOut := MSGOKCANCEL("Â· √‰  „ √ﬂœ   ? ”Ì „ Õ–› «·”Ã· «·Õ«·Ï "," √ﬂÌœ «·Õ–›")
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
MyOut := MSGExclamation("! ·« ÌÊÃœ ”Ã·«  ··Õ–› ","⁄›Ê« ·« ÌÊÃœ ‘Ï¡")
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
ENDIF
Return Nil
Proc edit
mymax := oRS:RecordCount
IF mymax>0
DO mode WITH 2
win1.text1.SetFocus ( )
ELSE
MyOut := MSGExclamation("⁄›Ê« ·« ÌÊÃœ ”Ã·«  ·· ⁄œÌ· ","·« ÌÊÃœ ”Ã·« ")
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
DO mode WITH 1
DO rshow
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Public oCon,oRS",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure connect",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '„›ﬂ— Ï  '",3,7)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",8,17)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'PICO\PIC1.JPG'",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",24,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",32,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",40,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«·”Ã· «·«Ê·'",47,51)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action F",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",53,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '«·”Ã· «· «·Ï'",58,62)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action N",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",64,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : '«·”Ã· «·”«»ﬁ '",69,73)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action P",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",75,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : '«·”Ã· «·«ŒÌ— '",80,84)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action L",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",86,90)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Œ—ÊÃ '",91,95)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action MYCLOSE",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",97,100)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn6 ) , Caption : 'Õ–› «·”Ã· '",101,105)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action del",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",107,111)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn7 ) , Caption : ' ⁄œÌ· '",112,115)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action edit",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",117,120)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn8 ) , Caption : '«·€«¡ «· ⁄œÌ·'",121,124)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action cancel",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",126,129)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn9 ) , Caption : 'Õ›Ÿ «· ⁄œÌ·'",130,133)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action saveedit",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",135,138)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",139,141)
SS_ESASTEP("Circuits\Main\Main\Main","Date",142,143)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",144,145)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ã«Â“' )",146,147)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",148,149)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",150,151)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",152,154)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure rshow",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",157,159)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",161,162)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=data.mdb'",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",164,165)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",166,168)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure rshow",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('name') Value",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('address') Value",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (oRS) Get Field ('phone') Value",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := CNAME",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := CPHONE",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := CADDRESS",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := ''",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := ''",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := ''",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure F",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure rshow",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := ''",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := ''",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := ''",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure N",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check EOF",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄›Ê« «‰  ⁄‰œ √Œ— ”Ã· ' Title '√Œ— ”Ã· ' Type: Message Exclamation",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure rshow",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := ''",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := ''",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := ''",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure P",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄›Ê« «‰  ⁄‰œ √Ê· ”Ã· ' Title '√Ê·  ”Ã· ' Type: Message Exclamation",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure rshow",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := ''",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := ''",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := ''",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure L",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure rshow",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := ''",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := ''",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := ''",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure MYCLOSE",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure del",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Â· √‰  „ √ﬂœ   ? ”Ì „ Õ–› «·”Ã· «·Õ«·Ï ' Title ' √ﬂÌœ «·Õ–›' Type: Message Ok/Cancel",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout = false )",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure rshow",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '! ·« ÌÊÃœ ”Ã·«  ··Õ–› ' Title '⁄›Ê« ·« ÌÊÃœ ‘Ï¡' Type: Message Exclamation",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mode( p1 )",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1=1 )",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Enabled := true",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Enabled := true",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn3.Enabled := true",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn4.Enabled := true",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Enabled := true",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn6.Enabled := true",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn7.Enabled := true",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn8.Enabled := false",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn9.Enabled := false",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.ReadOnly := true",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.ReadOnly := true",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.ReadOnly := true",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1=2 )",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Enabled := false",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Enabled := false",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn3.Enabled := false",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn4.Enabled := false",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Enabled := false",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn6.Enabled := false",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn7.Enabled := false",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn8.Enabled := true",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn9.Enabled := true",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.ReadOnly := false",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.ReadOnly := false",294,294)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.ReadOnly := false",295,295)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",296,296)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",297,297)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure edit",298,298)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",299,299)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",300,300)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",301,301)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.SetFocus ( )",302,302)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",303,303)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄›Ê« ·« ÌÊÃœ ”Ã·«  ·· ⁄œÌ· ' Title '·« ÌÊÃœ ”Ã·« ' Type: Message Exclamation",304,304)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",305,305)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",306,306)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",307,307)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure saveedit",308,308)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",309,309)
SS_ESASTEP("Circuits\Main\Main\Main","cname = win1.text1.Value",310,310)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = win1.text2.Value",311,311)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = win1.text3.Value",312,312)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('name ') Value To (cname)",313,313)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('address ') Value To (caddress)",314,314)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('phone ') Value To (cphone)",315,315)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",316,316)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",317,317)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure cancel",318,318)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",319,319)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure rshow",320,320)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",321,321)
Return
*-------------------------------------------------------------------*

*---------------------------------------------------------------------------*
* Time : 20:40:56    Date : 03/22/2012
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
WIDTH 678 ;
HEIGHT 559 ;
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
@ -6 ,-6 IMAGE image1;
PICTURE "PICO\PIC1.JPG";
STRETCH ;
WIDTH 679 HEIGHT 500
@ 119 ,275 LABEL lbl1 ;
VALUE "«·«”„ " ;
WIDTH 111 ;
HEIGHT 45 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {255,255,255} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 212 ,277 LABEL lbl2 ;
VALUE "«·⁄‰Ê«‰ " ;
WIDTH 105 ;
HEIGHT 42 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {255,255,255} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 298 ,276 LABEL lbl3 ;
VALUE "—ﬁ„ «· ·Ì›Ê‰ " ;
WIDTH 107 ;
HEIGHT 45 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {255,255,255} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 117 ,16 TEXTBOX text1;
HEIGHT 44 ;
WIDTH 228 ;
READONLY ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 209 ,16 TEXTBOX text2;
HEIGHT 45 ;
WIDTH 228 ;
READONLY ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 296 ,16 TEXTBOX text3;
HEIGHT 46 ;
WIDTH 228 ;
READONLY ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 106 ,447 BUTTONEX btn1;
CAPTION "«·”Ã· «·«Ê·";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
PICTURE "PICO\F.ICO";
ON CLICK F()  ;
WIDTH 169 HEIGHT 59 ;
FONT "Arial" SIZE 16 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 189 ,447 BUTTONEX btn2;
CAPTION "«·”Ã· «· «·Ï";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
PICTURE "PICO\NEX.ICO";
ON CLICK N()  ;
WIDTH 171 HEIGHT 59 ;
FONT "Arial" SIZE 16 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 276 ,447 BUTTONEX btn3;
CAPTION "«·”Ã· «·”«»ﬁ ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
PICTURE "PICO\LAST.ICO";
ON CLICK P()  ;
WIDTH 177 HEIGHT 61 ;
FONT "Arial" SIZE 16 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 357 ,448 BUTTONEX btn4;
CAPTION "«·”Ã· «·«ŒÌ— ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
PICTURE "PICO\END.ICO";
ON CLICK L()  ;
WIDTH 177 HEIGHT 61 ;
FONT "Arial" SIZE 16 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 377 ,31 BUTTONEX btn5;
CAPTION "Œ—ÊÃ ";
FONTCOLOR {0,0,0};
BACKCOLOR {242,83,210};
PICTURE "PICO\CLOSE.BMP";
ON CLICK MYCLOSE()  ;
WIDTH 147 HEIGHT 37 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 374 ,230 BUTTONEX btn6;
CAPTION "Õ–› «·”Ã· ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
PICTURE "PICO\DELETE.BMP";
ON CLICK del()  ;
WIDTH 168 HEIGHT 42 ;
FONT "Arial" SIZE 16 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
DEFINE STATUSBAR ;
BOLD 

DATE

CLOCK

STATUSITEM "Ã«Â“"

END STATUSBAR

DEFINE MAIN MENU of win1
POPUP "«·”Ã· «·«Ê· "
MENUITEM "«·”Ã· «·√Ê· " Action f()
END POPUP
POPUP "«·”Ã· «· «·Ï"
MENUITEM "«·”Ã· «· «·Ï" Action N()
END POPUP
POPUP "«·”Ã· «·”«»ﬁ"
MENUITEM "«·”Ã· «·”«»ﬁ" Action P()
END POPUP
POPUP "«·”Ã· «·«ŒÌ—"
MENUITEM "«·”Ã· «·«ŒÌ—" Action l()
END POPUP
POPUP "Õ–› «·”Ã· «·Õ«·Ï"
MENUITEM "Õ–› «·”Ã·" Action del()
END POPUP
POPUP "Œ—ÊÃ"
MENUITEM "Œ—ÊÃ" Action myclose()
END POPUP
END MENU
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
DO rshow
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
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·«”„ '",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",25,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·⁄‰Ê«‰ '",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",33,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '—ﬁ„ «· ·Ì›Ê‰ '",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",41,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",48,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",57,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",66,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«·”Ã· «·«Ê·'",74,78)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action F",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",80,84)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '«·”Ã· «· «·Ï'",85,89)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action N",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",91,95)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : '«·”Ã· «·”«»ﬁ '",96,100)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action P",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",102,106)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : '«·”Ã· «·«ŒÌ— '",107,111)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action L",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",113,117)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Œ—ÊÃ '",118,122)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action MYCLOSE",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",124,127)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn6 ) , Caption : 'Õ–› «·”Ã· '",128,132)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action del",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",134,138)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",139,141)
SS_ESASTEP("Circuits\Main\Main\Main","Date",142,143)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",144,145)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ã«Â“' )",146,147)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",148,149)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU : WINDOW (win1)",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '«·”Ã· «·«Ê· '",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '«·”Ã· «·√Ê· ' )",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '«·”Ã· «· «·Ï'",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '«·”Ã· «· «·Ï' )",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '«·”Ã· «·”«»ﬁ'",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '«·”Ã· «·”«»ﬁ' )",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '«·”Ã· «·«ŒÌ—'",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '«·”Ã· «·«ŒÌ—' )",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Õ–› «·”Ã· «·Õ«·Ï'",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Õ–› «·”Ã·' )",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Œ—ÊÃ'",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Œ—ÊÃ' )",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",170,171)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",172,174)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure rshow",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",176,178)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",180,181)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=data.mdb'",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",183,184)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",185,187)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure rshow",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('name') Value",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('address') Value",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (oRS) Get Field ('phone') Value",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := CNAME",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := CPHONE",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := CADDRESS",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := ''",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := ''",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := ''",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure F",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure rshow",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := ''",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := ''",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := ''",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure N",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check EOF",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄›Ê« «‰  ⁄‰œ √Œ— ”Ã· ' Title '√Œ— ”Ã· ' Type: Message Exclamation",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure rshow",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := ''",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := ''",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := ''",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure P",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄›Ê« «‰  ⁄‰œ √Ê· ”Ã· ' Title '√Ê·  ”Ã· ' Type: Message Exclamation",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure rshow",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := ''",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := ''",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := ''",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure L",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure rshow",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := ''",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := ''",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := ''",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure MYCLOSE",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure del",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Â· √‰  „ √ﬂœ   ? ”Ì „ Õ–› «·”Ã· «·Õ«·Ï ' Title ' √ﬂÌœ «·Õ–›' Type: Message Ok/Cancel",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout = false )",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure rshow",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '! ·« ÌÊÃœ ”Ã·«  ··Õ–› ' Title '⁄›Ê« ·« ÌÊÃœ ‘Ï¡' Type: Message Exclamation",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",286,286)
Return
*-------------------------------------------------------------------*

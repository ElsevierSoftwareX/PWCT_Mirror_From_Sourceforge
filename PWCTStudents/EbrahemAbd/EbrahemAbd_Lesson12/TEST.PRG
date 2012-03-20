*---------------------------------------------------------------------------*
* Time : 17:17:04    Date : 03/19/2012
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
WIDTH 682 ;
HEIGHT 532 ;
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
@ 152 ,275 LABEL lbl1 ;
VALUE "«·«”„ " ;
WIDTH 108 ;
HEIGHT 36 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {255,255,255} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 218 ,277 LABEL lbl2 ;
VALUE "«·⁄‰Ê«‰ " ;
WIDTH 106 ;
HEIGHT 36 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {255,255,255} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 292 ,277 LABEL lbl3 ;
VALUE "—ﬁ„ «· ·Ì›Ê‰ " ;
WIDTH 108 ;
HEIGHT 36 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {255,255,255} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 149 ,14 TEXTBOX text1;
HEIGHT 34 ;
WIDTH 225 ;
READONLY ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 220 ,16 TEXTBOX text2;
HEIGHT 34 ;
WIDTH 224 ;
READONLY ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 292 ,15 TEXTBOX text3;
HEIGHT 34 ;
WIDTH 227 ;
READONLY ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 140 ,452 BUTTONEX btn1;
CAPTION "«·”Ã· «·«Ê· ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
PICTURE "PICO\F.ICO";
ON CLICK F()  ;
WIDTH 177 HEIGHT 46 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 215 ,452 BUTTONEX btn2;
CAPTION "«·”Ã· «· «·Ï ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
PICTURE "PICO\NEX.ICO";
ON CLICK N()  ;
WIDTH 177 HEIGHT 46 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 294 ,457 BUTTONEX btn3;
CAPTION "«·”Ã· «·”«»ﬁ ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
PICTURE "PICO\LAST.ICO";
ON CLICK P()  ;
WIDTH 177 HEIGHT 46 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 365 ,458 BUTTONEX btn4;
CAPTION "«·”Ã· «·«ŒÌ— ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
PICTURE "PICO\END.ICO";
ON CLICK L()  ;
WIDTH 177 HEIGHT 46 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 369 ,33 BUTTONEX btn5;
CAPTION "Œ—ÊÃ ";
FONTCOLOR {0,0,0};
BACKCOLOR {242,83,210};
PICTURE "PICO\CLOSE.BMP";
ON CLICK MYCLOSE()  ;
WIDTH 131 HEIGHT 33 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
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
oRS:MOVEFIRST()
Return Nil
Proc rshow
cname := oRS:fields:item(alltrim("name")):value
caddress := oRS:fields:item(alltrim("address")):value
cphone := oRS:fields:item(alltrim("phone")):value
win1.text1.Value := CNAME
win1.text2.Value := CADDRESS
win1.text3.Value := CPHONE
Return Nil
Proc MYCLOSE
oRS:Close()
oCon:CLOSE()
win1.Release ( )
Return Nil
Proc F
oRS:MOVEFIRST()
DO rshow
Return Nil
Proc N
oRS:MOVENEXT()
mycheck := oRS:EOF()
IF mycheck
oRS:MOVEPREVIOUS()
MyOut := MSGExclamation("⁄›Ê« «‰  ⁄‰œ √Œ— ”Ã· ","√Œ— ”Ã· ")
ELSE
DO rshow
ENDIF
Return Nil
Proc P
oRS:MOVEPREVIOUS()
mycheck := oRS:BOF()
IF mycheck
oRS:MOVENEXT()
MyOut := MSGExclamation("⁄›Ê« «‰  ⁄‰œ √Ê· ”Ã· ","√Ê·  ”Ã· ")
ELSE
DO rshow
ENDIF
Return Nil
Proc L
oRS:MOVELAST()
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
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«·”Ã· «·«Ê· '",74,78)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action F",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",80,83)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '«·”Ã· «· «·Ï '",84,88)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action N",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",90,93)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : '«·”Ã· «·”«»ﬁ '",94,98)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action P",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",100,103)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : '«·”Ã· «·«ŒÌ— '",104,108)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action L",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",110,113)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Œ—ÊÃ '",114,118)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action MYCLOSE",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",120,123)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",124,125)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",126,128)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure rshow",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",130,132)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",134,135)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=data.mdb'",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",137,138)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",139,141)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure rshow",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('name') Value",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('address') Value",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (oRS) Get Field ('phone') Value",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := CNAME",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := CADDRESS",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := CPHONE",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure MYCLOSE",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure F",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure rshow",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure N",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check EOF",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄›Ê« «‰  ⁄‰œ √Œ— ”Ã· ' Title '√Œ— ”Ã· ' Type: Message Exclamation",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure rshow",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure P",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '⁄›Ê« «‰  ⁄‰œ √Ê· ”Ã· ' Title '√Ê·  ”Ã· ' Type: Message Exclamation",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure rshow",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure L",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure rshow",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",184,184)
Return
*-------------------------------------------------------------------*

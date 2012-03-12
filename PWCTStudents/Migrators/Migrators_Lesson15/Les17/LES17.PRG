*---------------------------------------------------------------------------*
* Time : 01:42:16    Date : 03/05/2012
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


Resistance R_LES17_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LES17_18smart1() code
DO connect
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 746 ;
HEIGHT 265 ;
ICON "PWCTICON" ;
TITLE "ãÝßÑÉ ÇáÚäÇæíä æÇáÃÑÞÇã" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
NOSYSMENU ;
BACKCOLOR {255,255,255} 

DRAW RECTANGLE IN WINDOW win1;
AT 10,15;
TO 100,720;
PENCOLOR {192,192,192};
PENWIDTH 1

@ 23 ,569 LABEL lbl1 ;
VALUE "ÇáÇÓÜÜÜã" ;
WIDTH 80 ;
HEIGHT 30 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 23 ,339 LABEL lbl2 ;
VALUE "ÇáÚäæÇä" ;
WIDTH 80 ;
HEIGHT 30 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 23 ,100 LABEL lbl3 ;
VALUE "ÇáåÇÊÝ" ;
WIDTH 80 ;
HEIGHT 30 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 54 ,499 TEXTBOX text1;
HEIGHT 29 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 54 ,265 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 54 ,29 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 108 ,457 BUTTONEX btn1;
CAPTION "ÇáÃæá";
FONTCOLOR {255,255,255};
BACKCOLOR {128,64,64};
ON CLICK first()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 108 ,198 BUTTONEX btn2;
CAPTION "ÇáÃÎíÑ";
FONTCOLOR {255,255,255};
BACKCOLOR {128,64,64};
ON CLICK lastrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 108 ,281 BUTTONEX btn3;
CAPTION "ÇáÊÇáí";
FONTCOLOR {255,255,255};
BACKCOLOR {128,64,64};
ON CLICK next()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 108 ,367 BUTTONEX btn4;
CAPTION "ÇáÓÇÈÞ";
FONTCOLOR {255,255,255};
BACKCOLOR {128,64,64};
ON CLICK prev()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 121 ,18 BUTTONEX btn5;
CAPTION "ÅäåÇÁ ÇáÊØÈíÞ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK Disconnect()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 169 ,127 BUTTONEX btn6;
CAPTION "ÍÐÝ";
FONTCOLOR {255,255,255};
BACKCOLOR {0,0,128};
ON CLICK deleterecord()  ;
WIDTH 110 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 169 ,251 BUTTONEX btn7;
CAPTION "ÊÚÏíá";
FONTCOLOR {255,255,255};
BACKCOLOR {0,0,128};
ON CLICK myedit()  ;
WIDTH 110 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 169 ,375 BUTTONEX btn8;
CAPTION "ÍÝÙ";
FONTCOLOR {255,255,255};
BACKCOLOR {0,0,128};
ON CLICK mysave()  ;
WIDTH 110 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 169 ,499 BUTTONEX btn9;
CAPTION "ÅáÛÇÁ ÇáÊÚÏíáÇÊ";
FONTCOLOR {255,255,255};
BACKCOLOR {0,0,128};
ON CLICK showr()  ;
WIDTH 110 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("win1"), -20),0x400000,0x100000))
DO showr
ACTIVATE WINDOW win1
EndIF

Proc Connect
Public oCon,oRS
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=data.mdb' )
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from data",oCon,3,3 )
Return Nil
Proc Disconnect
oRS:Close()
oCon:CLOSE()
win1.Release ( )
Return Nil
Proc showr
max := oRS:RecordCount
IF max > 0
cname := oRS:fields:item("name"):value
caddress := oRS:fields:item("address"):value
cphone := oRS:fields:item("phone"):value
p1 := 1
ELSE
cname := ""
caddress := ""
cphone := ""
p1 := 3
ENDIF
win1.text1.Value := cname
win1.text2.Value := caddress
win1.text3.Value := cphone
DO settempp1
Return Nil
Proc first
max := oRS:RecordCount
IF max > 0
oRS:MOVEFIRST()
DO showr
ENDIF
Return Nil
Proc lastrecord
max := oRS:RecordCount
IF max > 0
oRS:MOVELAST()
DO showr
ENDIF
Return Nil
Proc next
max := oRS:RecordCount
IF max > 0
oRS:MOVENEXT()
myeof := oRS:EOF()
IF myeof
oRS:MOVEPREVIOUS()
MyOut := MSGBOX("áÇíãßä ÚÑÖ ÇáÓÌá ÇáÊÇáí åÐÇ ÂÎÑ ÓÌá ÈÇáÝÚá","ÎØÃ")
ELSE
DO showr
ENDIF
DO showr
ENDIF
Return Nil
Proc prev
max := oRS:RecordCount
IF max > 0
oRS:MOVEPREVIOUS()
mybof := oRS:BOF()
IF mybof
oRS:MOVENEXT()
MyOut := MSGBOX("áÇíãßä ÚÑÖ ÇáÓÌá ÇáÓÇÈÞ åÐÇ Ãæá ÓÌá ÈÇáÝÚá","ÎØÃ")
ELSE
DO showr
ENDIF
DO showr
ENDIF
Return Nil
Proc deleterecord
max := oRS:RecordCount
IF max > 0
MyOut := MSGOKCANCEL("åá ÃäÊ ÊÑíÏ ÍÐÝ ÇáÓÌá ¿","ÊÃßíÏ ÇáÍÐÝ")
IF myout == false
Return 0
ENDIF
oRS:DELETE()
oRS:UPDATE()
oRS:MOVEPREVIOUS()
mybof := oRS:BOF()
IF mybof
oRS:MOVENEXT()
ENDIF
DO showr
ELSE
MyOut := MSGBOX("áÇÊæÌÏ ÓÌáÇÊ ááÍÐÝ","ÎØÃ")
ENDIF
Return Nil
Proc myedit
max := oRS:RecordCount
IF max > 0
p1 := 2
DO settempp1
ENDIF
Return Nil
Proc settempp1
IF p1 == 1
win1.btn1.Enabled := True
win1.btn2.Enabled := True
win1.btn3.Enabled := True
win1.btn4.Enabled := True
win1.btn5.Enabled := True
win1.btn6.Enabled := True
win1.btn7.Enabled := True
win1.btn8.Enabled := False
win1.btn9.Enabled := False
ELSEIF p1 == 2
win1.btn1.Enabled := False
win1.btn2.Enabled := False
win1.btn3.Enabled := False
win1.btn4.Enabled := False
win1.btn5.Enabled := False
win1.btn6.Enabled := False
win1.btn7.Enabled := False
win1.btn8.Enabled := True
win1.btn9.Enabled := True
ELSE
win1.btn1.Enabled := False
win1.btn2.Enabled := False
win1.btn3.Enabled := False
win1.btn4.Enabled := False
win1.btn5.Enabled := True
win1.btn6.Enabled := False
win1.btn7.Enabled := False
win1.btn8.Enabled := False
win1.btn9.Enabled := False
ENDIF
Return Nil
Proc mysave
cname := win1.text1.Value
caddress := win1.text2.Value
cphone := win1.text3.Value
oRS:fields:item("name"):value := cname
oRS:fields:item("address"):value := caddress
oRS:fields:item("phone"):value := cphone
oRS:UPDATE()
p1 := 1
DO settempp1
Return Nil


End Of Resistance

INIT PROCEDURE Init_LES17
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure connect",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'ãÝßÑÉ ÇáÚäÇæíä æÇáÃÑÞÇã'",2,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,15)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Rectangle from 15,10 to 720,100",16,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'ÇáÇÓÜÜÜã'",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",24,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'ÇáÚäæÇä'",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",33,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'ÇáåÇÊÝ'",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",42,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",50,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",57,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",64,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'ÇáÃæá'",70,73)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action first",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",75,78)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'ÇáÃÎíÑ'",79,82)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lastrecord",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",84,87)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'ÇáÊÇáí'",88,91)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action next",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",93,96)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'ÇáÓÇÈÞ'",97,100)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action prev",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",102,105)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'ÅäåÇÁ ÇáÊØÈíÞ'",106,109)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Disconnect",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",111,114)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn6 ) , Caption : 'ÍÐÝ'",115,118)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action deleterecord",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",120,123)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn7 ) , Caption : 'ÊÚÏíá'",124,127)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myedit",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",129,132)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn8 ) , Caption : 'ÍÝÙ'",133,136)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mysave",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",138,141)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn9 ) , Caption : 'ÅáÛÇÁ ÇáÊÚÏíáÇÊ'",142,145)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action showr",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",147,150)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",151,152)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'win1'",153,155)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showr",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",157,159)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Connect",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","Public oCon,oRS",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=data.mdb'",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from data'",165,167)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Disconnect",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showr",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","max := ADODB RecordSet (oRS) , Get Records Count",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( max > 0 )",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('name') Value",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('address') Value",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (oRS) Get Field ('phone') Value",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","p1 = 1",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ''",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ''",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ''",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","p1 = 3",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := cname",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := caddress",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := cphone",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure settempp1",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure first",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","max := ADODB RecordSet (oRS) , Get Records Count",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( max > 0 )",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showr",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lastrecord",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","max := ADODB RecordSet (oRS) , Get Records Count",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( max > 0 )",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showr",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure next",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","max := ADODB RecordSet (oRS) , Get Records Count",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( max > 0 )",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","myeof = ADODB RecordSet oRS , Check EOF",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myeof )",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'áÇíãßä ÚÑÖ ÇáÓÌá ÇáÊÇáí åÐÇ ÂÎÑ ÓÌá ÈÇáÝÚá' Title 'ÎØÃ' Type: Message Box",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showr",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showr",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure prev",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","max := ADODB RecordSet (oRS) , Get Records Count",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( max > 0 )",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","mybof = ADODB RecordSet oRS , Check BOF",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mybof )",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'áÇíãßä ÚÑÖ ÇáÓÌá ÇáÓÇÈÞ åÐÇ Ãæá ÓÌá ÈÇáÝÚá' Title 'ÎØÃ' Type: Message Box",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showr",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showr",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure deleterecord",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","max := ADODB RecordSet (oRS) , Get Records Count",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( max > 0 )",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'åá ÃäÊ ÊÑíÏ ÍÐÝ ÇáÓÌá ¿' Title 'ÊÃßíÏ ÇáÍÐÝ' Type: Message Ok/Cancel",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout == false )",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","mybof = ADODB RecordSet oRS , Check BOF",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mybof )",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showr",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'áÇÊæÌÏ ÓÌáÇÊ ááÍÐÝ' Title 'ÎØÃ' Type: Message Box",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myedit",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","max := ADODB RecordSet (oRS) , Get Records Count",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( max > 0 )",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","p1 = 2",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure settempp1",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure settempp1",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1 == 1 )",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Enabled := True",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Enabled := True",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn3.Enabled := True",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn4.Enabled := True",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Enabled := True",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn6.Enabled := True",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn7.Enabled := True",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn8.Enabled := False",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn9.Enabled := False",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( p1 == 2 )",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Enabled := False",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Enabled := False",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn3.Enabled := False",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn4.Enabled := False",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Enabled := False",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn6.Enabled := False",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn7.Enabled := False",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn8.Enabled := True",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn9.Enabled := True",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Enabled := False",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Enabled := False",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn3.Enabled := False",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn4.Enabled := False",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Enabled := True",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn6.Enabled := False",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn7.Enabled := False",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn8.Enabled := False",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn9.Enabled := False",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mysave",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","cname = win1.text1.Value",294,294)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = win1.text2.Value",295,295)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = win1.text3.Value",296,296)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('name') Value To (cname)",297,297)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('address') Value To (caddress)",298,298)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('phone') Value To (cphone)",299,299)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",300,300)
SS_ESASTEP("Circuits\Main\Main\Main","p1 = 1",301,301)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure settempp1",302,302)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",303,303)
Return
*-------------------------------------------------------------------*

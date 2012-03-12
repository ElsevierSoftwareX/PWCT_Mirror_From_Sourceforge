*---------------------------------------------------------------------------*
* Time : 03:25:45    Date : 03/06/2012
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


Resistance R_LES18_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LES18_18smart1() code
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
ON CLICK settempp2()  ;
WIDTH 110 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 121 ,616 BUTTONEX btn10;
CAPTION "ÅÖÇÝÉ ÓÌá";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK addrecord()  ;
WIDTH 100 HEIGHT 30 ;
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
Public p2
p2 := 1
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
win1.btn10.Enabled := True
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
win1.btn10.Enabled := False
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
win1.btn10.Enabled := True
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
Proc settempp2
IF p2==1
DO showr
ELSEIF p2==2
oRS:DELETE()
oRS:UPDATE()
oRS:MOVEPREVIOUS()
mybof := oRS:BOF()
IF mybof
oRS:MOVENEXT()
ENDIF
DO showr
ENDIF
Return Nil
Proc addrecord
oRS:ADDNEW()
DO showr
p1 := 2
DO settempp1
Public p2
Public p1
p2 := 2
Return Nil


End Of Resistance

INIT PROCEDURE Init_LES18
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
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action settempp2",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",147,150)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn10 ) , Caption : 'ÅÖÇÝÉ ÓÌá'",151,154)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action addrecord",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",156,159)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",160,161)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'win1'",162,164)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showr",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",166,168)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Connect",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","Public oCon,oRS",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=data.mdb'",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from data'",174,176)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Disconnect",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showr",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","max := ADODB RecordSet (oRS) , Get Records Count",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( max > 0 )",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('name') Value",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('address') Value",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (oRS) Get Field ('phone') Value",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","p1 = 1",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ''",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ''",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ''",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","p1 = 3",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := cname",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := caddress",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := cphone",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure settempp1",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure first",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","max := ADODB RecordSet (oRS) , Get Records Count",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( max > 0 )",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showr",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lastrecord",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","max := ADODB RecordSet (oRS) , Get Records Count",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( max > 0 )",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showr",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure next",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","max := ADODB RecordSet (oRS) , Get Records Count",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( max > 0 )",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","myeof = ADODB RecordSet oRS , Check EOF",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myeof )",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'áÇíãßä ÚÑÖ ÇáÓÌá ÇáÊÇáí åÐÇ ÂÎÑ ÓÌá ÈÇáÝÚá' Title 'ÎØÃ' Type: Message Box",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showr",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showr",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure prev",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","max := ADODB RecordSet (oRS) , Get Records Count",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( max > 0 )",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","mybof = ADODB RecordSet oRS , Check BOF",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mybof )",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'áÇíãßä ÚÑÖ ÇáÓÌá ÇáÓÇÈÞ åÐÇ Ãæá ÓÌá ÈÇáÝÚá' Title 'ÎØÃ' Type: Message Box",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showr",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showr",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure deleterecord",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","max := ADODB RecordSet (oRS) , Get Records Count",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( max > 0 )",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'åá ÃäÊ ÊÑíÏ ÍÐÝ ÇáÓÌá ¿' Title 'ÊÃßíÏ ÇáÍÐÝ' Type: Message Ok/Cancel",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout == false )",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","mybof = ADODB RecordSet oRS , Check BOF",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mybof )",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showr",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'áÇÊæÌÏ ÓÌáÇÊ ááÍÐÝ' Title 'ÎØÃ' Type: Message Box",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myedit",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","max := ADODB RecordSet (oRS) , Get Records Count",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( max > 0 )",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","p1 = 2",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure settempp1",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","Public p2",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","p2 = 1",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure settempp1",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1 == 1 )",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Enabled := True",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Enabled := True",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn3.Enabled := True",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn4.Enabled := True",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Enabled := True",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn6.Enabled := True",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn7.Enabled := True",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn8.Enabled := False",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn9.Enabled := False",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn10.Enabled := True",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( p1 == 2 )",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Enabled := False",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Enabled := False",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn3.Enabled := False",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn4.Enabled := False",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Enabled := False",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn6.Enabled := False",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn7.Enabled := False",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn8.Enabled := True",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn9.Enabled := True",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn10.Enabled := False",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",294,294)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Enabled := False",295,295)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Enabled := False",296,296)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn3.Enabled := False",297,297)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn4.Enabled := False",298,298)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Enabled := True",299,299)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn6.Enabled := False",300,300)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn7.Enabled := False",301,301)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn8.Enabled := False",302,302)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn9.Enabled := False",303,303)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn10.Enabled := True",304,304)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",305,305)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",306,306)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mysave",307,307)
SS_ESASTEP("Circuits\Main\Main\Main","cname = win1.text1.Value",308,308)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = win1.text2.Value",309,309)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = win1.text3.Value",310,310)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('name') Value To (cname)",311,311)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('address') Value To (caddress)",312,312)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('phone') Value To (cphone)",313,313)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",314,314)
SS_ESASTEP("Circuits\Main\Main\Main","p1 = 1",315,315)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure settempp1",316,316)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",317,317)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure settempp2",318,318)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p2==1 )",319,319)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showr",320,320)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( p2==2 )",321,321)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",322,322)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",323,323)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",324,324)
SS_ESASTEP("Circuits\Main\Main\Main","mybof = ADODB RecordSet oRS , Check BOF",325,325)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mybof )",326,326)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",327,327)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",328,328)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showr",329,329)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",330,330)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",331,331)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure addrecord",332,332)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Add New Record",333,333)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showr",334,334)
SS_ESASTEP("Circuits\Main\Main\Main","p1 = 2",335,335)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure settempp1",336,336)
SS_ESASTEP("Circuits\Main\Main\Main","Public p2",337,337)
SS_ESASTEP("Circuits\Main\Main\Main","Public p1",338,338)
SS_ESASTEP("Circuits\Main\Main\Main","p2 = 2",339,339)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",340,340)
Return
*-------------------------------------------------------------------*

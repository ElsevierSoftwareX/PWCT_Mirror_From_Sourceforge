*---------------------------------------------------------------------------*
* Time : 15:01:59    Date : 03/04/2012
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


Resistance R_LES16_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LES16_18smart1() code
DO connect
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 746 ;
HEIGHT 265 ;
ICON "PWCTICON" ;
TITLE "„›ﬂ—… «·⁄‰«ÊÌ‰ Ê«·√—ﬁ«„" ;
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
VALUE "«·«”‹‹‹„" ;
WIDTH 80 ;
HEIGHT 30 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 23 ,339 LABEL lbl2 ;
VALUE "«·⁄‰Ê«‰" ;
WIDTH 80 ;
HEIGHT 30 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 23 ,100 LABEL lbl3 ;
VALUE "«·Â« ›" ;
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

@ 108 ,500 BUTTONEX btn1;
CAPTION "«·√Ê·";
FONTCOLOR {255,255,255};
BACKCOLOR {128,64,64};
ON CLICK first()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 108 ,241 BUTTONEX btn2;
CAPTION "«·√ŒÌ—";
FONTCOLOR {255,255,255};
BACKCOLOR {128,64,64};
ON CLICK lastrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 108 ,324 BUTTONEX btn3;
CAPTION "«· «·Ì";
FONTCOLOR {255,255,255};
BACKCOLOR {128,64,64};
ON CLICK next()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 108 ,410 BUTTONEX btn4;
CAPTION "«·”«»ﬁ";
FONTCOLOR {255,255,255};
BACKCOLOR {128,64,64};
ON CLICK prev()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 177 ,293 BUTTONEX btn5;
CAPTION "≈‰Â«¡ «· ÿ»Ìﬁ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK Disconnect()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 107 ,156 BUTTONEX btn6;
CAPTION "Õ–›";
FONTCOLOR {255,255,255};
BACKCOLOR {0,0,128};
ON CLICK deleterecord()  ;
WIDTH 80 HEIGHT 30 ;
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
ELSE
cname := ""
caddress := ""
cphone := ""
ENDIF
win1.text1.Value := cname
win1.text2.Value := caddress
win1.text3.Value := cphone
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
MyOut := MSGBOX("·«Ì„ﬂ‰ ⁄—÷ «·”Ã· «· «·Ì Â–« ¬Œ— ”Ã· »«·›⁄·","Œÿ√")
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
MyOut := MSGBOX("·«Ì„ﬂ‰ ⁄—÷ «·”Ã· «·”«»ﬁ Â–« √Ê· ”Ã· »«·›⁄·","Œÿ√")
ELSE
DO showr
ENDIF
DO showr
ENDIF
Return Nil
Proc deleterecord
max := oRS:RecordCount
IF max > 0
MyOut := MSGOKCANCEL("Â· √‰   —Ìœ Õ–› «·”Ã· ø"," √ﬂÌœ «·Õ–›")
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
MyOut := MSGBOX("·« ÊÃœ ”Ã·«  ··Õ–›","Œÿ√")
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_LES16
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure connect",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '„›ﬂ—… «·⁄‰«ÊÌ‰ Ê«·√—ﬁ«„'",2,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,15)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Rectangle from 15,10 to 720,100",16,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·«”‹‹‹„'",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",24,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·⁄‰Ê«‰'",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",33,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '«·Â« ›'",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",42,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",50,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",57,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",64,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«·√Ê·'",70,73)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action first",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",75,78)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '«·√ŒÌ—'",79,82)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lastrecord",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",84,87)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : '«· «·Ì'",88,91)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action next",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",93,96)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : '«·”«»ﬁ'",97,100)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action prev",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",102,105)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : '≈‰Â«¡ «· ÿ»Ìﬁ'",106,109)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Disconnect",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",111,114)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn6 ) , Caption : 'Õ–›'",115,118)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action deleterecord",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",120,123)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",124,125)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'win1'",126,128)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showr",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",130,132)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Connect",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","Public oCon,oRS",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=data.mdb'",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from data'",138,140)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Disconnect",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showr",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","max := ADODB RecordSet (oRS) , Get Records Count",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( max > 0 )",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('name') Value",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('address') Value",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (oRS) Get Field ('phone') Value",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ''",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ''",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ''",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := cname",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := caddress",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := cphone",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure first",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","max := ADODB RecordSet (oRS) , Get Records Count",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( max > 0 )",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showr",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lastrecord",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","max := ADODB RecordSet (oRS) , Get Records Count",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( max > 0 )",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showr",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure next",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","max := ADODB RecordSet (oRS) , Get Records Count",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( max > 0 )",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","myeof = ADODB RecordSet oRS , Check EOF",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myeof )",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '·«Ì„ﬂ‰ ⁄—÷ «·”Ã· «· «·Ì Â–« ¬Œ— ”Ã· »«·›⁄·' Title 'Œÿ√' Type: Message Box",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showr",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showr",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure prev",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","max := ADODB RecordSet (oRS) , Get Records Count",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( max > 0 )",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","mybof = ADODB RecordSet oRS , Check BOF",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mybof )",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '·«Ì„ﬂ‰ ⁄—÷ «·”Ã· «·”«»ﬁ Â–« √Ê· ”Ã· »«·›⁄·' Title 'Œÿ√' Type: Message Box",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showr",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showr",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure deleterecord",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","max := ADODB RecordSet (oRS) , Get Records Count",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( max > 0 )",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Â· √‰   —Ìœ Õ–› «·”Ã· ø' Title ' √ﬂÌœ «·Õ–›' Type: Message Ok/Cancel",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout == false )",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","mybof = ADODB RecordSet oRS , Check BOF",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mybof )",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showr",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '·« ÊÃœ ”Ã·«  ··Õ–›' Title 'Œÿ√' Type: Message Box",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",222,222)
Return
*-------------------------------------------------------------------*

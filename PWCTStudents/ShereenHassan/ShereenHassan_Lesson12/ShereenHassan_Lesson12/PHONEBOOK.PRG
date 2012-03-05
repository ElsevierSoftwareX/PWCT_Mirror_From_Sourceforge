*---------------------------------------------------------------------------*
* Time : 16:20:05    Date : 03/05/2012
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


Resistance R_PHONEBOOK_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PHONEBOOK_18smart1() code
Public oCon,oRS
DO Connect
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 550 ;
HEIGHT 506 ;
ICON "PWCTICON" ;
TITLE " My Phone Book  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {234,187,234} 

@ 98 ,50 LABEL lbl1 ;
VALUE "Name " ;
WIDTH 61 ;
HEIGHT 24 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 148 ,50 LABEL lbl2 ;
VALUE "Address " ;
WIDTH 82 ;
HEIGHT 27 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 199 ,50 LABEL lbl3 ;
VALUE "Phone " ;
WIDTH 61 ;
HEIGHT 24 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 91 ,145 TEXTBOX textname;
HEIGHT 31 ;
WIDTH 289 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 140 ,144 TEXTBOX textaddress;
HEIGHT 31 ;
WIDTH 289 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 195 ,145 TEXTBOX textphone;
HEIGHT 31 ;
WIDTH 289 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 261 ,63 BUTTONEX btnfirst;
CAPTION "";
PICTURE "first.bmp";
VERTICAL ;
UPPERTEXT ;
ON CLICK GoFirst()  ;
WIDTH 39 HEIGHT 34 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
@ 261 ,281 BUTTONEX btnnext;
CAPTION "";
PICTURE "next.bmp";
VERTICAL ;
UPPERTEXT ;
ON CLICK GoNext()  ;
WIDTH 39 HEIGHT 34 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
@ 261 ,165 BUTTONEX btnprev;
CAPTION "";
PICTURE "prev.bmp";
VERTICAL ;
UPPERTEXT ;
ON CLICK GoPrev()  ;
WIDTH 39 HEIGHT 34 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
@ 262 ,381 BUTTONEX btnlast;
CAPTION "";
PICTURE "last.bmp";
VERTICAL ;
UPPERTEXT ;
ON CLICK GoLast()  ;
WIDTH 39 HEIGHT 34 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
@ 353 ,342 BUTTONEX btnclose;
CAPTION "Close Phone Book";
ON CLICK Close()  ;
WIDTH 181 HEIGHT 36 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 308 ,277 LABEL lbl4 ;
VALUE "Next " ;
WIDTH 53 ;
HEIGHT 29 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,160}
@ 306 ,158 LABEL lbl5 ;
VALUE "Previous " ;
WIDTH 84 ;
HEIGHT 26 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,160}
@ 304 ,378 LABEL lbl6 ;
VALUE "Last " ;
WIDTH 42 ;
HEIGHT 27 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,160}
@ 301 ,61 LABEL lbl7 ;
VALUE "First " ;
WIDTH 40 ;
HEIGHT 24 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,160}
@ -3 ,-8 LABEL lbl8 ;
VALUE " " ;
WIDTH 559 ;
HEIGHT 78 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 395 ,-35 LABEL lbl9 ;
VALUE " " ;
WIDTH 597 ;
HEIGHT 92 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 398 ,371 IMAGE image1;
PICTURE "base.jpg";
STRETCH ;
WIDTH 163 HEIGHT 76
@ 2 ,13 IMAGE image2;
PICTURE "hand.jpg";
STRETCH ;
WIDTH 167 HEIGHT 69
@ 26 ,102 LABEL lbl10 ;
VALUE "My Phone Book" ;
WIDTH 344 ;
HEIGHT 45 ;
AUTOSIZE ;
FONT "Arial" SIZE 30  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,255}
@ 404 ,31 LABEL lbl11 ;
VALUE "Please Call me" ;
WIDTH 311 ;
HEIGHT 49 ;
AUTOSIZE ;
FONT "Arial" SIZE 30  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,255}
END WINDOW

DO ShowRecords
ACTIVATE WINDOW win1
EndIF

procedure Close()
DO DisConnect
win1.Release ( )
return
Proc Connect
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=phonebook.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from tel",oCon,3,3 )
oRS:MOVEFIRST()
Return Nil
Proc DisConnect
oRS:Close()
oCon:CLOSE()
Return Nil
Proc ShowRecords
cname := oRS:fields:item(alltrim("name")):value
caddress := oRS:fields:item(alltrim("address")):value
cphone := oRS:fields:item(alltrim("phone")):value
win1.textname.Value := cname
win1.textaddress.Value := caddress
win1.textphone.Value := cphone
Return Nil
procedure GoFirst()
oRS:MOVEFIRST()
DO ShowRecords
return
procedure GoLast()
oRS:MOVELAST()
DO ShowRecords
return
procedure GoNext()
oRS:MOVENEXT()
mycheck := oRS:EOF()
IF mycheck
oRS:MOVEPREVIOUS()
MyOut := MSGBOX("Sorry this is the end","Error")
ELSE
DO ShowRecords
ENDIF
return
procedure GoPrev()
oRS:MOVEPREVIOUS()
mycheck := oRS:BOF()
IF mycheck
oRS:MOVENEXT()
MyOut := MSGBOX("Sorry this is no previous records","Error")
ELSE
DO ShowRecords
ENDIF
return


End Of Resistance

INIT PROCEDURE Init_PHONEBOOK
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Public oCon,oRS",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure Connect",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : ' My Phone Book  '",3,7)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",8,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name '",16,17)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",18,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Address '",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",27,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Phone '",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",36,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textname  )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",44,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textaddress  )",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",51,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textphone  )",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",58,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnfirst ) , Caption : ''",64,68)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action GoFirst",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",70,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnnext ) , Caption : ''",74,78)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action GoNext",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",80,83)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnprev ) , Caption : ''",84,88)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action GoPrev",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",90,93)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnlast ) , Caption : ''",94,98)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action GoLast",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",100,103)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnclose ) , Caption : 'Close Phone Book'",104,105)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Close",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",107,109)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Next '",110,111)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",112,118)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'Previous '",119,120)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",121,127)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 ) , Caption : 'Last '",128,129)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",130,136)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7 ) , Caption : 'First '",137,138)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",139,145)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl8 ) , Caption : ' '",146,147)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",148,152)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl9 ) , Caption : ' '",153,154)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",155,159)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'base.jpg'",160,161)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",162,163)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image2 ) , Image : 'hand.jpg'",164,165)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",166,167)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl10 ) , Caption : 'My Phone Book'",168,169)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",170,176)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl11 ) , Caption : 'Please Call me'",177,178)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",179,185)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",186,187)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecords",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",189,191)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Close ( Event : CLICK )",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure DisConnect",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Connect",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",197,198)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=phonebook.mdb'",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",200,201)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",202,204)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure DisConnect",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ShowRecords",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('name') Value",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('address') Value",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (oRS) Get Field ('phone') Value",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textname.Value := cname",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textaddress.Value := caddress",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textphone.Value := cphone",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure GoFirst ( Event : CLICK )",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecords",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure GoLast ( Event : CLICK )",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecords",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure GoNext ( Event : CLICK )",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check EOF",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Sorry this is the end' Title 'Error' Type: Message Box",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecords",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure GoPrev ( Event : CLICK )",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Sorry this is no previous records' Title 'Error' Type: Message Box",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecords",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",246,246)
Return
*-------------------------------------------------------------------*

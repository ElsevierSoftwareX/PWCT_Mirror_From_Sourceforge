*---------------------------------------------------------------------------*
* Time : 13:59:29    Date : 03/12/2012
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
@ 265 ,456 BUTTONEX btn5;
CAPTION " ";
PICTURE "delete.BMP";
VERTICAL ;
UPPERTEXT ;
ON CLICK DeleteRecord()  ;
WIDTH 30 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 302 ,449 LABEL lbl12 ;
VALUE "Delete " ;
WIDTH 64 ;
HEIGHT 24 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,128}
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
Return Nil
Proc DisConnect
oRS:Close()
oCon:CLOSE()
Return Nil
Proc ShowRecords
mymax := oRS:RecordCount
IF mymax>0
cname := oRS:fields:item(alltrim("name")):value
caddress := oRS:fields:item(alltrim("address")):value
cphone := oRS:fields:item(alltrim("phone")):value
ELSE
cname := ""
caddress := ""
cphone := ""
ENDIF
win1.textname.Value := cname
win1.textaddress.Value := caddress
win1.textphone.Value := cphone
Return Nil
procedure GoFirst()
mymax := oRS:RecordCount
IF mymax >0
oRS:MOVEFIRST()
DO ShowRecords
ENDIF
return
procedure GoLast()
mymax := oRS:RecordCount
IF mymax>0
oRS:MOVELAST()
DO ShowRecords
ENDIF
return
procedure GoNext()
mymax := oRS:RecordCount
IF mymax>0
oRS:MOVENEXT()
mycheck := oRS:EOF()
IF mycheck
oRS:MOVEPREVIOUS()
MyOut := MSGBOX("Sorry this is the end","Error")
ELSE
DO ShowRecords
ENDIF
ENDIF
return
procedure GoPrev()
mymax := oRS:RecordCount
IF mymax >0
oRS:MOVEPREVIOUS()
mycheck := oRS:BOF()
IF mycheck
oRS:MOVENEXT()
MyOut := MSGBOX("Sorry this is no previous records","Error")
ELSE
DO ShowRecords
ENDIF
ENDIF
return
procedure DeleteRecord()
mymax := oRS:RecordCount
IF mymax>0
MyOut := MSGOKCANCEL("Are you sure ? ","Delete ")
IF MyOut=false
Return 0
ENDIF
oRS:DELETE()
oRS:UPDATE()
mymax := oRS:RecordCount
IF mymax >0
oRS:MOVEPREVIOUS()
mycheck := oRS:BOF()
IF mycheck
oRS:MOVENEXT()
ELSE
DO ShowRecords
ENDIF
ENDIF
DO ShowRecords
ELSE
MyOut := MSGBOX("There is no record to delete ","Error")
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
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : ' '",186,190)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action DeleteRecord",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",192,194)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl12 ) , Caption : 'Delete '",195,196)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",197,203)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",204,205)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecords",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",207,209)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Close ( Event : CLICK )",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure DisConnect",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Connect",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",215,216)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=phonebook.mdb'",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",218,219)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",220,222)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure DisConnect",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ShowRecords",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('name') Value",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('address') Value",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (oRS) Get Field ('phone') Value",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ''",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ''",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ''",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textname.Value := cname",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textaddress.Value := caddress",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textphone.Value := cphone",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure GoFirst ( Event : CLICK )",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax >0 )",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecords",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure GoLast ( Event : CLICK )",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecords",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure GoNext ( Event : CLICK )",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check EOF",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Sorry this is the end' Title 'Error' Type: Message Box",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecords",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure GoPrev ( Event : CLICK )",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax >0 )",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Sorry this is no previous records' Title 'Error' Type: Message Box",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecords",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure DeleteRecord ( Event : CLICK )",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Are you sure ? ' Title 'Delete ' Type: Message Ok/Cancel",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( MyOut=false )",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax >0 )",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",294,294)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",295,295)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",296,296)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",297,297)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",298,298)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecords",299,299)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",300,300)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",301,301)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecords",302,302)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",303,303)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'There is no record to delete ' Title 'Error' Type: Message Box",304,304)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",305,305)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",306,306)
Return
*-------------------------------------------------------------------*

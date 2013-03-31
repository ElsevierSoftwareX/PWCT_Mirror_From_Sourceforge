*---------------------------------------------------------------------------*
* Time : 01:06:12    Date : 10/20/2011
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2011]  
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
Function Main
Public True,False 
True = .T. 
False = .F. 
New Server Server1 Type Slave Server Eigen Value 000
 Details :
 * (Noun) *
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


Resistance R_CUSTOMER_DATABASE_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CUSTOMER_DATABASE_18smart1() code
DO connect
Public savemode
savemode := 1
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 603 ;
HEIGHT 544 ;
ICON "PWCTICON" ;
TITLE "Customer data" ;
MAIN ;
BACKCOLOR {255,255,255} 

@ -10 ,4 IMAGE image1;
PICTURE "REEMCON.JPG";
STRETCH ;
WIDTH 630 HEIGHT 506
@ 118 ,14 BUTTONEX btnNext;
CAPTION "Next Record";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
ON CLICK nextrecord()  ;
WIDTH 100 HEIGHT 32 ;
FONT "Bauhaus 93" SIZE 12 ;
TOOLTIP ""
@ 163 ,11 BUTTONEX btnprev;
CAPTION "previ Record";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
ON CLICK prevrecord()  ;
WIDTH 104 HEIGHT 32 ;
FONT "Bauhaus 93" SIZE 12 ;
TOOLTIP ""
@ 73 ,11 BUTTONEX btnfirst;
CAPTION "first Record";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
ON CLICK firstrecord()  ;
WIDTH 104 HEIGHT 32 ;
FONT "Bauhaus 93" SIZE 12 ;
TOOLTIP ""
@ 208 ,11 BUTTONEX btnlast;
CAPTION "last Record";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
ON CLICK lastrecord()  ;
WIDTH 106 HEIGHT 32 ;
FONT "Bauhaus 93" SIZE 12 ;
TOOLTIP ""
@ 450 ,465 BUTTONEX btnClose;
CAPTION "Close";
FONTCOLOR {255,0,128};
BACKCOLOR {255,255,255};
ON CLICK closeSys()  ;
WIDTH 114 HEIGHT 32 ;
FONT "Bauhaus 93" SIZE 12 ;
TOOLTIP ""
@ 329 ,237 BUTTONEX btnsave;
CAPTION "Save";
FONTCOLOR {0,0,0};
ON CLICK saverecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Bauhaus 93" SIZE 14 ;
TOOLTIP ""
@ 278 ,234 BUTTONEX btndel;
CAPTION "Delete";
FONTCOLOR {0,0,0};
BACKCOLOR {0,128,255};
ON CLICK deleterecord()  ;
WIDTH 98 HEIGHT 32 ;
FONT "Broadway" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
@ 327 ,478 BUTTONEX btnedit;
CAPTION "Edit";
FONTCOLOR {0,0,0};
ON CLICK editrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Bauhaus 93" SIZE 14 ;
TOOLTIP ""
@ 328 ,358 BUTTONEX btncancel;
CAPTION "Cancel";
FONTCOLOR {0,0,0};
ON CLICK cancelrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Bauhaus 93" SIZE 14 ;
TOOLTIP ""
@ 279 ,478 BUTTONEX btnadd;
CAPTION "ADD";
FONTCOLOR {0,0,0};
BACKCOLOR {255,0,128};
ON CLICK addrecord()  ;
WIDTH 98 HEIGHT 32 ;
FONT "Arial" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
@ 90 ,285 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 130 ,283 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 170 ,282 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 210 ,284 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 93 ,127 LABEL lbl1 ;
VALUE "Customer name" ;
WIDTH 138 ;
HEIGHT 27 ;
FONT "Britannic Bold" SIZE 14  ;
FONTCOLOR {0,0,255}
@ 130 ,177 LABEL lbl2 ;
VALUE "Request" ;
WIDTH 77 ;
HEIGHT 26 ;
FONT "Britannic Bold" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,255}
@ 171 ,180 LABEL lbl3 ;
VALUE "phone" ;
WIDTH 69 ;
HEIGHT 30 ;
FONT "Britannic Bold" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,255}
@ 210 ,182 LABEL lbl4 ;
VALUE "Cash" ;
WIDTH 60 ;
HEIGHT 29 ;
FONT "Britannic Bold" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,255}
DEFINE MAIN MENU
POPUP "file"
MENUITEM "exit" Action closewin()
END POPUP
POPUP "first "
MENUITEM "first record" Action firstrecord()
END POPUP
POPUP "Next"
MENUITEM "next record" Action nextrecord()
END POPUP
POPUP "previous"
MENUITEM "prev record" Action prevrecord()
END POPUP
POPUP "last"
MENUITEM "last record" Action lastrecord()
END POPUP
END MENU
END WINDOW

DO showrec
DO mode WITH 2
ACTIVATE WINDOW win1
EndIF

Proc closewin
win1.Release ( )
Return Nil
Proc connect
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=customer.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from customers",oCon,3,3 )
Return Nil
Proc disconnect
oRS:Close()
oCon:CLOSE()
Return Nil
Proc closeSys
DO disconnect
win1.Release ( )
Return Nil
Proc showrec
mymax := oRS:RecordCount
IF mymax > 0
oname := oRS:fields:item("customer name"):value
oRequest := oRS:fields:item("Request"):value
ophone := oRS:fields:item("phone"):value
ocash := oRS:fields:item("cash"):value
ELSE
oname := ""
oRequest := ""
ophone := ""
ocash := ""
ENDIF
win1.text1.Value := oname
win1.text2.Value := oRequest
win1.text3.Value := ophone
win1.text4.Value := ocash
Return Nil
Proc firstrecord
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVEFIRST()
DO showrec
ENDIF
Return Nil
Proc lastrecord
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVELAST()
DO showrec
ENDIF
Return Nil
Proc nextrecord
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVENEXT()
mycheck := oRS:EOF()
IF mycheck
oRS:MOVEPREVIOUS()
MyOut := MSGBOX("No more Next data","You can't")
ELSE
DO showrec
ENDIF
ENDIF
Return Nil
Proc prevrecord
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVEPREVIOUS()
mybigan := oRS:BOF()
IF mybigan
oRS:MOVENEXT()
MyOut := MSGBOX("No More previous data","you can't")
ELSE
DO showrec
ENDIF
ENDIF
Return Nil
Proc deleterecord
MyOut := MSGOKCANCEL("Are You Sure ??","Delete")
IF myout = true
mymax := oRS:RecordCount
IF mymax > 0
oRS:DELETE()
oRS:UPDATE()
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVEPREVIOUS()
mybigan := oRS:BOF()
IF mybigan
oRS:MOVENEXT()
ENDIF
DO showrec
ENDIF
DO showrec
ENDIF
ENDIF
Return Nil
Proc mode( p1 )
IF p1 = 1
win1.btnNext.Enabled := false
win1.btnprev.Enabled := false
win1.btnfirst.Enabled := false
win1.btnlast.Enabled := false
win1.btnsave.Enabled := true
win1.btnedit.Enabled := false
win1.btncancel.Enabled := true
win1.btndel.Enabled := false
win1.btnclose.Enabled := false
win1.btnadd.Enabled := false
ENDIF
IF p1 = 2
win1.btnNext.Enabled := true
win1.btnprev.Enabled := true
win1.btnfirst.Enabled := true
win1.btnlast.Enabled := true
win1.btnclose.Enabled := true
win1.btnedit.Enabled := true
win1.btndel.Enabled := true
win1.btnsave.Enabled := false
win1.btncancel.Enabled := false
win1.btnadd.Enabled := true
ENDIF
Return Nil
Proc editrecord
mymax := oRS:RecordCount
IF mymax > 0
DO mode WITH 1
ENDIF
savemode := 1
Return Nil
Proc saverecord
DO mode WITH 2
oname := win1.text1.Value
oRequest := win1.text2.Value
ophone := win1.text3.Value
ocash := win1.text4.Value
oRS:fields:item("customer name"):value := oname
oRS:fields:item("Request"):value := oRequest
oRS:fields:item("phone"):value := ophone
oRS:fields:item("cash"):value := ocash
oRS:UPDATE()
Return Nil
Proc cancelrecord
IF savemode = 2
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
ENDIF
DO mode WITH 2
DO showrec
Return Nil
Proc addrecord
oRS:ADDNEW()
DO showrec
savemode := 2
DO mode WITH 1
Return Nil


End Of Resistance

INIT PROCEDURE Init_CUSTOMER_DATABASE
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure connect",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Public savemode",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","savemode = 1",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Customer data'",4,8)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",9,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'REEMCON.JPG'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",16,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnNext ) , Caption : 'Next Record'",18,21)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action nextrecord()",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",23,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnprev ) , Caption : 'previ Record'",26,29)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action prevrecord()",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",31,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnfirst ) , Caption : 'first Record'",34,37)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action firstrecord()",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",39,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnlast ) , Caption : 'last Record'",42,45)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lastrecord()",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",47,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnClose ) , Caption : 'Close'",50,53)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closeSys()",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",55,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnsave ) , Caption : 'Save'",58,60)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action saverecord()",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",62,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btndel ) , Caption : 'Delete'",65,68)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action deleterecord()",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",70,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnedit ) , Caption : 'Edit'",74,76)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action editrecord()",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",78,80)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btncancel ) , Caption : 'Cancel'",81,83)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action cancelrecord()",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",85,87)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnadd ) , Caption : 'ADD'",88,91)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action addrecord()",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",93,96)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",98,102)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",104,108)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",110,114)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",116,120)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Customer name'",121,122)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",123,126)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Request'",127,128)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",129,133)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'phone'",134,135)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",136,140)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Cash'",141,142)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",143,147)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'file'",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'exit' )",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'first '",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'first record' )",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Next'",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'next record' )",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'previous'",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'prev record' )",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'last'",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'last record' )",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",165,166)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",169,171)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closewin",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",176,177)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=customer.mdb'",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",179,180)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from customers'",181,183)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure disconnect",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closeSys",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure disconnect",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showrec",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","oname = ADODB RecordSet (oRS) Get Field ('customer name') Value",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","oRequest = ADODB RecordSet (oRS) Get Field ('Request') Value",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","ophone = ADODB RecordSet (oRS) Get Field ('phone') Value",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","ocash = ADODB RecordSet (oRS) Get Field ('cash') Value",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","oname = ''",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","oRequest = ''",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","ophone = ''",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","ocash = ''",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := oname",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := oRequest",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := ophone",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4.Value := ocash",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure firstrecord",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lastrecord",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure nextrecord",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check EOF",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No more Next data' Title 'You can't' Type: Message Box",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure prevrecord",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","mybigan = ADODB RecordSet oRS , Check BOF",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mybigan )",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No More previous data' Title 'you can't' Type: Message Box",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure deleterecord",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Are You Sure ??' Title 'Delete' Type: Message Ok/Cancel",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout = true )",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","mybigan = ADODB RecordSet oRS , Check BOF",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mybigan )",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mode( p1 )",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1 = 1 )",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := false",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnprev.Enabled := false",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnfirst.Enabled := false",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnlast.Enabled := false",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnsave.Enabled := true",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnedit.Enabled := false",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btncancel.Enabled := true",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btndel.Enabled := false",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnclose.Enabled := false",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnadd.Enabled := false",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1 = 2 )",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := true",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnprev.Enabled := true",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnfirst.Enabled := true",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnlast.Enabled := true",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnclose.Enabled := true",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnedit.Enabled := true",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btndel.Enabled := true",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnsave.Enabled := false",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btncancel.Enabled := false",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnadd.Enabled := true",294,294)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",295,295)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",296,296)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure editrecord",297,297)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",298,298)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",299,299)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",300,300)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",301,301)
SS_ESASTEP("Circuits\Main\Main\Main","savemode = 1",302,302)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",303,303)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure saverecord",304,304)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",305,305)
SS_ESASTEP("Circuits\Main\Main\Main","oname = win1.text1.Value",306,306)
SS_ESASTEP("Circuits\Main\Main\Main","oRequest = win1.text2.Value",307,307)
SS_ESASTEP("Circuits\Main\Main\Main","ophone = win1.text3.Value",308,308)
SS_ESASTEP("Circuits\Main\Main\Main","ocash = win1.text4.Value",309,309)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('customer name') Value To (oname)",310,310)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Request') Value To (oRequest)",311,311)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('phone') Value To (ophone)",312,312)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('cash') Value To (ocash)",313,313)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",314,314)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",315,315)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure cancelrecord",316,316)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( savemode = 2 )",317,317)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",318,318)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",319,319)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",320,320)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",321,321)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",322,322)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",323,323)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",324,324)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",325,325)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",326,326)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",327,327)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",328,328)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",329,329)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",330,330)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",331,331)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure addrecord",332,332)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Add New Record",333,333)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",334,334)
SS_ESASTEP("Circuits\Main\Main\Main","savemode = 2",335,335)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",336,336)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",337,337)
Return
*-------------------------------------------------------------------*

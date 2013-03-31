*---------------------------------------------------------------------------*
* Time : 00:25:44    Date : 10/20/2011
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
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 603 ;
HEIGHT 487 ;
ICON "PWCTICON" ;
TITLE "Customer data" ;
MAIN ;
BACKCOLOR {244,148,216} 

@ 197 ,25 IMAGE image1;
PICTURE "REEM.JPG";
STRETCH ;
WIDTH 166 HEIGHT 237
@ 58 ,14 BUTTONEX btnNext;
CAPTION "Next Record";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
ON CLICK nextrecord()  ;
WIDTH 100 HEIGHT 32 ;
FONT "Bauhaus 93" SIZE 12 ;
TOOLTIP ""
@ 103 ,11 BUTTONEX btnprev;
CAPTION "previ Record";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
ON CLICK prevrecord()  ;
WIDTH 104 HEIGHT 32 ;
FONT "Bauhaus 93" SIZE 12 ;
TOOLTIP ""
@ 13 ,11 BUTTONEX btnfirst;
CAPTION "first Record";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
ON CLICK firstrecord()  ;
WIDTH 104 HEIGHT 32 ;
FONT "Bauhaus 93" SIZE 12 ;
TOOLTIP ""
@ 148 ,11 BUTTONEX btnlast;
CAPTION "last Record";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
ON CLICK lastrecord()  ;
WIDTH 106 HEIGHT 32 ;
FONT "Bauhaus 93" SIZE 12 ;
TOOLTIP ""
@ 386 ,467 BUTTONEX btnClose;
CAPTION "Close";
FONTCOLOR {255,0,128};
BACKCOLOR {255,255,255};
ON CLICK closeSys()  ;
WIDTH 114 HEIGHT 32 ;
FONT "Bauhaus 93" SIZE 12 ;
TOOLTIP ""
@ 269 ,237 BUTTONEX btnsave;
CAPTION "Save";
FONTCOLOR {0,0,0};
ON CLICK saverecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Bauhaus 93" SIZE 14 ;
TOOLTIP ""
@ 218 ,341 BUTTONEX btndel;
CAPTION "Delete";
FONTCOLOR {0,0,0};
BACKCOLOR {0,128,255};
ON CLICK deleterecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
@ 267 ,478 BUTTONEX btnedit;
CAPTION "Edit";
FONTCOLOR {0,0,0};
ON CLICK editrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Bauhaus 93" SIZE 14 ;
TOOLTIP ""
@ 268 ,358 BUTTONEX btncancel;
CAPTION "Cancel";
FONTCOLOR {0,0,0};
ON CLICK cancelrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Bauhaus 93" SIZE 14 ;
TOOLTIP ""
@ 30 ,285 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 70 ,283 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 110 ,282 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 150 ,284 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 29 ,133 LABEL lbl1 ;
VALUE "Customer name" ;
WIDTH 138 ;
HEIGHT 27 ;
FONT "Britannic Bold" SIZE 14  ;
BACKCOLOR {244,148,216} ;
FONTCOLOR {0,0,255}
@ 69 ,183 LABEL lbl2 ;
VALUE "Request" ;
WIDTH 77 ;
HEIGHT 26 ;
FONT "Britannic Bold" SIZE 14  ;
BACKCOLOR {244,148,216} ;
FONTCOLOR {0,0,255}
@ 110 ,186 LABEL lbl3 ;
VALUE "phone" ;
WIDTH 69 ;
HEIGHT 30 ;
FONT "Britannic Bold" SIZE 14  ;
BACKCOLOR {244,148,216} ;
FONTCOLOR {0,0,255}
@ 149 ,188 LABEL lbl4 ;
VALUE "Cash" ;
WIDTH 60 ;
HEIGHT 29 ;
FONT "Britannic Bold" SIZE 14  ;
BACKCOLOR {244,148,216} ;
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
ENDIF
Return Nil
Proc editrecord
mymax := oRS:RecordCount
IF mymax > 0
DO mode WITH 1
ENDIF
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
DO mode WITH 2
DO showrec
Return Nil


End Of Resistance

INIT PROCEDURE Init_CUSTOMER_DATABASE
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure connect",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Customer data'",2,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'REEM.JPG'",12,13)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnNext ) , Caption : 'Next Record'",16,19)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action nextrecord()",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",21,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnprev ) , Caption : 'previ Record'",24,27)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action prevrecord()",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",29,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnfirst ) , Caption : 'first Record'",32,35)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action firstrecord()",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",37,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnlast ) , Caption : 'last Record'",40,43)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lastrecord()",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",45,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnClose ) , Caption : 'Close'",48,51)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closeSys()",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",53,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnsave ) , Caption : 'Save'",56,58)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action saverecord()",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",60,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btndel ) , Caption : 'Delete'",63,66)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action deleterecord()",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",68,71)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnedit ) , Caption : 'Edit'",72,74)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action editrecord()",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",76,78)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btncancel ) , Caption : 'Cancel'",79,81)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action cancelrecord()",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",83,85)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",87,91)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",93,97)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",99,103)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",105,109)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Customer name'",110,111)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",112,116)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Request'",117,118)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",119,123)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'phone'",124,125)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",126,130)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Cash'",131,132)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",133,137)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'file'",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'exit' )",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'first '",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'first record' )",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Next'",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'next record' )",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'previous'",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'prev record' )",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'last'",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'last record' )",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",155,156)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",159,161)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closewin",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",166,167)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Ext",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",169,170)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from customers'",171,173)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure disconnect",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closeSys",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure disconnect",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showrec",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","oname = ADODB RecordSet (oRS) Get Field ('customer name') Value",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","oRequest = ADODB RecordSet (oRS) Get Field ('Request') Value",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","ophone = ADODB RecordSet (oRS) Get Field ('phone') Value",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","ocash = ADODB RecordSet (oRS) Get Field ('cash') Value",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","oname = ''",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","oRequest = ''",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","ophone = ''",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","ocash = ''",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := oname",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := oRequest",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := ophone",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text4.Value := ocash",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure firstrecord",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lastrecord",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure nextrecord",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check EOF",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No more Next data' Title 'You can't' Type: Message Box",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure prevrecord",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","mybigan = ADODB RecordSet oRS , Check BOF",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mybigan )",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No More previous data' Title 'you can't' Type: Message Box",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure deleterecord",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Are You Sure ??' Title 'Delete' Type: Message Ok/Cancel",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout = true )",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","mybigan = ADODB RecordSet oRS , Check BOF",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mybigan )",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mode( p1 )",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1 = 1 )",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := false",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnprev.Enabled := false",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnfirst.Enabled := false",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnlast.Enabled := false",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnsave.Enabled := true",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnedit.Enabled := false",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btncancel.Enabled := true",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btndel.Enabled := false",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnclose.Enabled := false",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1 = 2 )",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := true",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnprev.Enabled := true",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnfirst.Enabled := true",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnlast.Enabled := true",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnclose.Enabled := true",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnedit.Enabled := true",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btndel.Enabled := true",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnsave.Enabled := false",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btncancel.Enabled := false",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure editrecord",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure saverecord",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","oname = win1.text1.Value",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","oRequest = win1.text2.Value",294,294)
SS_ESASTEP("Circuits\Main\Main\Main","ophone = win1.text3.Value",295,295)
SS_ESASTEP("Circuits\Main\Main\Main","ocash = win1.text4.Value",296,296)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('customer name') Value To (oname)",297,297)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Request') Value To (oRequest)",298,298)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('phone') Value To (ophone)",299,299)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('cash') Value To (ocash)",300,300)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",301,301)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",302,302)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure cancelrecord",303,303)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",304,304)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",305,305)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",306,306)
Return
*-------------------------------------------------------------------*

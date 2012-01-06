*---------------------------------------------------------------------------*
* Time : 15:15:42    Date : 01/06/2012
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


Resistance R_PHONE_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PHONE_18smart1() code
DO connect
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 630 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Phone Book Edit" ;
MAIN ;
BACKCOLOR {200,145,145} 

@ 61 ,166 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 109 ;
HEIGHT 37 ;
AUTOSIZE ;
FONT "Comic Sans MS" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,0}
@ 115 ,163 LABEL lbl2 ;
VALUE "Address" ;
WIDTH 99 ;
HEIGHT 34 ;
AUTOSIZE ;
FONT "Comic Sans MS" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,0}
@ 168 ,164 LABEL lbl3 ;
VALUE "Phone" ;
WIDTH 101 ;
HEIGHT 36 ;
AUTOSIZE ;
FONT "Comic Sans MS" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,0}
@ 63 ,244 TEXTBOX textname;
HEIGHT 31 ;
WIDTH 216 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {128,128,0} ;
FONTCOLOR {255,255,255} 

@ 117 ,244 TEXTBOX textaddress;
HEIGHT 29 ;
WIDTH 217 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {128,128,0} ;
FONTCOLOR {255,255,255} 

@ 169 ,243 TEXTBOX textphone;
HEIGHT 32 ;
WIDTH 217 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {128,128,0} ;
FONTCOLOR {255,255,255} 

@ 262 ,313 BUTTONEX btnNext;
CAPTION "Next Record";
FONTCOLOR {0,0,0};
BACKCOLOR {255,128,64};
PICTURE "ButtonNext.BMP";
VERTICAL ;
UPPERTEXT ;
ON CLICK nextrec()  ;
WIDTH 144 HEIGHT 35 ;
FONT "Arial" SIZE 14 ;
FLAT ;
ADJUST ;
NOXPSTYLE ;
TOOLTIP ""
@ 262 ,162 BUTTONEX btnPrev;
CAPTION "< Prev Record";
FONTCOLOR {0,0,0};
BACKCOLOR {255,128,64};
PICTURE "ButtonPrevious.bmp";
VERTICAL ;
UPPERTEXT ;
ON CLICK prevrec()  ;
WIDTH 144 HEIGHT 35 ;
FONT "Arial" SIZE 14 ;
UNDERLINE ;
FLAT ;
ADJUST ;
NOXPSTYLE ;
TOOLTIP ""
@ 262 ,11 BUTTONEX btnFirst;
CAPTION "<< First Record";
FONTCOLOR {0,0,0};
BACKCOLOR {255,128,64};
PICTURE "ButtonFirst.bmp";
VERTICAL ;
UPPERTEXT ;
ON CLICK firstrec()  ;
WIDTH 144 HEIGHT 35 ;
FONT "Arial" SIZE 14 ;
FLAT ;
ADJUST ;
NOXPSTYLE ;
TOOLTIP ""
@ 262 ,465 BUTTONEX btnLast;
CAPTION "Last Record >>";
FONTCOLOR {0,0,0};
BACKCOLOR {255,128,64};
PICTURE "ButtonLast.bmp";
VERTICAL ;
UPPERTEXT ;
ON CLICK lastreec()  ;
WIDTH 144 HEIGHT 35 ;
FONT "Arial" SIZE 14 ;
FLAT ;
ADJUST ;
NOXPSTYLE ;
TOOLTIP ""
@ 311 ,141 BUTTONEX btnClose;
CAPTION "Close Application";
FONTCOLOR {0,0,255};
BACKCOLOR {255,128,64};
ON CLICK closesystem()  ;
WIDTH 164 HEIGHT 36 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 10 ,11 IMAGE image1;
PICTURE "phone.jpg";
STRETCH ;
WIDTH 120 HEIGHT 226
@ 10 ,484 IMAGE image2;
PICTURE "phone.jpg";
STRETCH ;
WIDTH 120 HEIGHT 226
@ 311 ,314 BUTTONEX btnDelete;
CAPTION "Delete Record";
FONTCOLOR {0,0,255};
BACKCOLOR {255,128,64};
ON CLICK deleterec()  ;
WIDTH 164 HEIGHT 36 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 216 ,164 BUTTONEX btnEdit;
CAPTION "Edit Record";
FONTCOLOR {0,255,255};
BACKCOLOR {0,128,64};
ON CLICK editrecord()  ;
WIDTH 295 HEIGHT 33 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 311 ,489 BUTTONEX btnCancel;
CAPTION "Cancel Record";
FONTCOLOR {255,255,0};
BACKCOLOR {255,0,255};
ON CLICK cancelrecord()  ;
WIDTH 118 HEIGHT 34 ;
FONT "Comic Sans MS" SIZE 12 ;
NOXPSTYLE ;
TOOLTIP ""
@ 310 ,11 BUTTONEX btnSave;
CAPTION "Save Record";
FONTCOLOR {255,255,0};
BACKCOLOR {255,0,255};
ON CLICK saverecord()  ;
WIDTH 118 HEIGHT 34 ;
FONT "Comic Sans MS" SIZE 12 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

DO showrec
DO mode WITH 2
ACTIVATE WINDOW win1
EndIF

Proc connect
Public oCon,oRS
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=data.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from tel",oCon,3,3 )
MyOut := MSGBOX("Welcome to Phone "," Hello ")
Return Nil
Proc disconnect
oRS:Close()
oCon:CLOSE()
Return Nil
Proc closesystem
DO disconnect
win1.Release ( )
Return Nil
Proc showrec
mymax := oRS:RecordCount
IF mymax > 0
cname := oRS:fields:item("Name"):value
caddress := oRS:fields:item("Address"):value
cphone := oRS:fields:item("Phone"):value
ELSE
cname := ""
caddress := ""
cphone := ""
ENDIF
win1.textname.Value := cname
win1.textaddress.Value := caddress
win1.textphone.Value := cphone
Return Nil
Proc firstrec
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVEFIRST()
DO showrec
ENDIF
Return Nil
Proc lastreec
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVELAST()
DO showrec
ENDIF
Return Nil
Proc nextrec
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVENEXT()
mycheck := oRS:EOF()
IF mycheck
oRS:MOVEPREVIOUS()
MyOut := MSGBOX("No More Records","Sorry")
ELSE
DO showrec
ENDIF
ENDIF
Return Nil
Proc prevrec
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVEPREVIOUS()
mycheck := oRS:BOF()
IF mycheck
oRS:MOVENEXT()
MyOut := MSGBOX("No More Records","Sorry")
ELSE
DO showrec
ENDIF
ENDIF
Return Nil
Proc deleterec
mymax := oRS:RecordCount
IF mymax > 0
MyOut := MSGOKCANCEL("Are you sure?","Delete")
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
DO showrec
ELSE
MyOut := MSGBOX("No more records to delete","Sorry")
ENDIF
Return Nil
Proc mode( p1 )
IF p1 = 1
win1.btnFirst.Enabled := false
win1.btnLast.Enabled := false
win1.btnNext.Enabled := false
win1.btnPrev.Enabled := false
win1.btnDelete.Enabled := false
win1.btnClose.Enabled := false
win1.btnCancel.Enabled := true
win1.btnSave.Enabled := true
win1.btnEdit.Enabled := false
ENDIF
IF p1 = 2
win1.btnFirst.Enabled := true
win1.btnLast.Enabled := true
win1.btnNext.Enabled := true
win1.btnPrev.Enabled := true
win1.btnClose.Enabled := true
win1.btnCancel.Enabled := false
win1.btnSave.Enabled := false
win1.btnEdit.Enabled := true
win1.btnDelete.Enabled := true
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
cname := win1.textName.Value
caddress := win1.textAddress.Value
cphone := win1.textPhone.Value
oRS:fields:item("Name"):value := cname
oRS:fields:item("Address"):value := caddress
oRS:fields:item("Phone"):value := cphone
oRS:UPDATE()
MyOut := MSGBOX("Record Saved","OK")
Return Nil
Proc cancelrecord
DO mode WITH 2
DO showrec
Return Nil


End Of Resistance

INIT PROCEDURE Init_PHONE
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure connect",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Phone Book Edit'",2,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name'",12,13)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",14,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Address'",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",23,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Phone'",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",32,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textname  )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",40,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textaddress  )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",47,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textphone  )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",54,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnNext ) , Caption : 'Next Record'",60,66)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action nextrec()",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",68,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnPrev ) , Caption : '< Prev Record'",74,80)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action prevrec()",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",82,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnFirst ) , Caption : '<< First Record'",89,95)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action firstrec()",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",97,102)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnLast ) , Caption : 'Last Record >>'",103,109)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lastreec()",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",111,116)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnClose ) , Caption : 'Close Application'",117,120)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closesystem()",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",122,125)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'phone.jpg'",126,127)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",128,129)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image2 ) , Image : 'phone.jpg'",130,131)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",132,133)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnDelete ) , Caption : 'Delete Record'",134,137)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action deleterec()",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",139,142)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnEdit ) , Caption : 'Edit Record'",143,146)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action editrecord()",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",148,151)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnCancel ) , Caption : 'Cancel Record'",152,155)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action cancelrecord()",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",157,160)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnSave ) , Caption : 'Save Record'",161,164)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action saverecord()",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",166,169)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",170,171)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",174,176)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","Public oCon,oRS",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",179,180)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=data.mdb'",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",182,183)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",184,186)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Welcome to Phone ' Title ' Hello ' Type: Message Box",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure disconnect",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure disconnect",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showrec",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('Name') Value",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('Address') Value",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (oRS) Get Field ('Phone') Value",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ''",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ''",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ''",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textname.Value := cname",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textaddress.Value := caddress",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textphone.Value := cphone",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure firstrec",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lastreec",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure nextrec",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check EOF",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No More Records' Title 'Sorry' Type: Message Box",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure prevrec",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No More Records' Title 'Sorry' Type: Message Box",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure deleterec",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Are you sure?' Title 'Delete' Type: Message Ok/Cancel",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout = false )",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No more records to delete' Title 'Sorry' Type: Message Box",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mode( p1 )",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1 = 1 )",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFirst.Enabled := false",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnLast.Enabled := false",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := false",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnPrev.Enabled := false",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnDelete.Enabled := false",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnClose.Enabled := false",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnCancel.Enabled := true",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnSave.Enabled := true",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnEdit.Enabled := false",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1 = 2 )",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFirst.Enabled := true",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnLast.Enabled := true",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := true",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnPrev.Enabled := true",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnClose.Enabled := true",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnCancel.Enabled := false",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnSave.Enabled := false",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnEdit.Enabled := true",294,294)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnDelete.Enabled := true",295,295)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",296,296)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",297,297)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure editrecord",298,298)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",299,299)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",300,300)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",301,301)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",302,302)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",303,303)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure saverecord",304,304)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",305,305)
SS_ESASTEP("Circuits\Main\Main\Main","cname = win1.textName.Value",306,306)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = win1.textAddress.Value",307,307)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = win1.textPhone.Value",308,308)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Name') Value To (cname)",309,309)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Address') Value To (caddress)",310,310)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Phone') Value To (cphone)",311,311)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",312,312)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Record Saved' Title 'OK' Type: Message Box",313,313)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",314,314)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure cancelrecord",315,315)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",316,316)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrec",317,317)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",318,318)
Return
*-------------------------------------------------------------------*

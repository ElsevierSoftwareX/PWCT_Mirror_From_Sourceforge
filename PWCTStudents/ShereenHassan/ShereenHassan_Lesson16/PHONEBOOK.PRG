*---------------------------------------------------------------------------*
* Time : 00:25:45    Date : 03/13/2012
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
Public savemode
savemode := 1
Public oCon,oRS
DO Connect
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 650 ;
HEIGHT 516 ;
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

@ 253 ,79 BUTTONEX btnfirst;
CAPTION "First";
FONTCOLOR {0,64,128};
ON CLICK GoFirst()  ;
WIDTH 79 HEIGHT 31 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 253 ,258 BUTTONEX btnnext;
CAPTION "Next";
FONTCOLOR {0,64,128};
ON CLICK GoNext()  ;
WIDTH 79 HEIGHT 31 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 253 ,168 BUTTONEX btnprev;
CAPTION "Previous";
FONTCOLOR {0,64,128};
ON CLICK GoPrev()  ;
WIDTH 79 HEIGHT 31 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 253 ,348 BUTTONEX btnlast;
CAPTION "Last";
FONTCOLOR {0,64,128};
ON CLICK GoLast()  ;
WIDTH 79 HEIGHT 31 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 354 ,356 BUTTONEX btnclose;
CAPTION "Close Phone Book";
ON CLICK Close()  ;
WIDTH 181 HEIGHT 36 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ -3 ,-8 LABEL lbl8 ;
VALUE " " ;
WIDTH 670 ;
HEIGHT 81 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 397 ,-33 LABEL lbl9 ;
VALUE " " ;
WIDTH 703 ;
HEIGHT 90 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 397 ,415 IMAGE image1;
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
@ 184 ,464 BUTTONEX btndel;
CAPTION " Delete Record";
FONTCOLOR {255,0,0};
ON CLICK DeleteRecord()  ;
WIDTH 136 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 139 ,464 BUTTONEX btnedit;
CAPTION "Edit Record ";
FONTCOLOR {0,128,0};
ON CLICK EditRecord()  ;
WIDTH 136 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 237 ,497 BUTTONEX btnsave;
CAPTION "Save ";
ON CLICK SaveRecord()  ;
WIDTH 72 HEIGHT 29 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 279 ,500 BUTTONEX btncancel;
CAPTION "Cancel ";
ON CLICK CancelRecord()  ;
WIDTH 69 HEIGHT 34 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 95 ,464 BUTTONEX btnadd;
CAPTION "Add Record ";
FONTCOLOR {0,128,0};
ON CLICK AddRecord()  ;
WIDTH 136 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

DO ShowRecords
DO mode WITH 2
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
win1.btnedit.Enabled := false
MyOut := MSGBOX("There is no record to delete ","Error")
ENDIF
return
Proc mode( p )
IF p=1
win1.btnfirst.Enabled := false
win1.btnnext.Enabled := false
win1.btnprev.Enabled := false
win1.btnlast.Enabled := false
win1.btnclose.Enabled := false
win1.btndel.Enabled := false
win1.btnedit.Enabled := false
win1.btnadd.Enabled := false
win1.btnsave.Enabled := true
win1.btncancel.Enabled := true
ENDIF
IF p=2
win1.btnfirst.Enabled := True
win1.btnnext.Enabled := True
win1.btnprev.Enabled := True
win1.btnlast.Enabled := True
win1.btnclose.Enabled := True
win1.btndel.Enabled := True
win1.btnedit.Enabled := True
win1.btnadd.Enabled := True
win1.btnsave.Enabled := False
win1.btncancel.Enabled := False
ENDIF
Return Nil
Proc EditRecord
mymax := oRS:RecordCount
IF mymax>0
DO mode WITH 1
savemode := 1
ELSE
MyOut := MSGBOX("There is no record to Edit ","Sorry ")
ENDIF
Return Nil
Proc SaveRecord
DO mode WITH 2
cname := win1.textname.Value
caddress := win1.textaddress.Value
cphone := win1.textphone.Value
oRS:fields:item(alltrim("name")):value := cname
oRS:fields:item(alltrim("address")):value := caddress
oRS:fields:item(alltrim("phone")):value := cphone
oRS:UPDATE()
Return Nil
Proc CancelRecord
IF savemode=2
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
ENDIF
DO mode WITH 2
DO ShowRecords
Return Nil
procedure AddRecord()
oRS:ADDNEW()
DO ShowRecords
savemode := 2
DO mode WITH 1
return


End Of Resistance

INIT PROCEDURE Init_PHONEBOOK
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Public savemode",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","savemode = 1",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Public oCon,oRS",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure Connect",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : ' My Phone Book  '",5,9)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",10,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name '",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",20,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Address '",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",29,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Phone '",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",38,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textname  )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",46,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textaddress  )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",53,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textphone  )",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",60,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnfirst ) , Caption : 'First'",66,68)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action GoFirst",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",70,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnnext ) , Caption : 'Next'",73,75)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action GoNext",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",77,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnprev ) , Caption : 'Previous'",80,82)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action GoPrev",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",84,86)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnlast ) , Caption : 'Last'",87,89)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action GoLast",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",91,93)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnclose ) , Caption : 'Close Phone Book'",94,95)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Close",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",97,99)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl8 ) , Caption : ' '",100,101)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",102,106)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl9 ) , Caption : ' '",107,108)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",109,113)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'base.jpg'",114,115)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",116,117)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image2 ) , Image : 'hand.jpg'",118,119)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",120,121)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl10 ) , Caption : 'My Phone Book'",122,123)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",124,130)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl11 ) , Caption : 'Please Call me'",131,132)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",133,139)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btndel ) , Caption : ' Delete Record'",140,142)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action DeleteRecord",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",144,146)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnedit ) , Caption : 'Edit Record '",147,149)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action EditRecord",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",151,153)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnsave ) , Caption : 'Save '",154,155)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action SaveRecord",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",157,159)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btncancel ) , Caption : 'Cancel '",160,161)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CancelRecord",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",163,165)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnadd ) , Caption : 'Add Record '",166,168)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action AddRecord",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",170,172)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",173,174)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecords",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",177,179)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Close ( Event : CLICK )",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure DisConnect",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Connect",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",185,186)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=phonebook.mdb'",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",188,189)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",190,192)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure DisConnect",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ShowRecords",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('name') Value",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('address') Value",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (oRS) Get Field ('phone') Value",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ''",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ''",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ''",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textname.Value := cname",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textaddress.Value := caddress",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textphone.Value := cphone",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure GoFirst ( Event : CLICK )",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax >0 )",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecords",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure GoLast ( Event : CLICK )",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecords",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure GoNext ( Event : CLICK )",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check EOF",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Sorry this is the end' Title 'Error' Type: Message Box",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecords",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure GoPrev ( Event : CLICK )",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax >0 )",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Sorry this is no previous records' Title 'Error' Type: Message Box",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecords",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure DeleteRecord ( Event : CLICK )",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Are you sure ? ' Title 'Delete ' Type: Message Ok/Cancel",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( MyOut=false )",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax >0 )",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecords",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecords",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnedit.Enabled := false",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'There is no record to delete ' Title 'Error' Type: Message Box",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mode( p )",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p=1 )",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnfirst.Enabled := false",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnnext.Enabled := false",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnprev.Enabled := false",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnlast.Enabled := false",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnclose.Enabled := false",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btndel.Enabled := false",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnedit.Enabled := false",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnadd.Enabled := false",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnsave.Enabled := true",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btncancel.Enabled := true",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p=2 )",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnfirst.Enabled := True",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnnext.Enabled := True",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnprev.Enabled := True",294,294)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnlast.Enabled := True",295,295)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnclose.Enabled := True",296,296)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btndel.Enabled := True",297,297)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnedit.Enabled := True",298,298)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnadd.Enabled := True",299,299)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnsave.Enabled := False",300,300)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btncancel.Enabled := False",301,301)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",302,302)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",303,303)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure EditRecord",304,304)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",305,305)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",306,306)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",307,307)
SS_ESASTEP("Circuits\Main\Main\Main","savemode = 1",308,308)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",309,309)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'There is no record to Edit ' Title 'Sorry ' Type: Message Box",310,310)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",311,311)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",312,312)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure SaveRecord",313,313)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",314,314)
SS_ESASTEP("Circuits\Main\Main\Main","cname = win1.textname.Value",315,315)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = win1.textaddress.Value",316,316)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = win1.textphone.Value",317,317)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('name') Value To (cname)",318,318)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('address') Value To (caddress)",319,319)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('phone') Value To (cphone)",320,320)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",321,321)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",322,322)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure CancelRecord",323,323)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( savemode=2 )",324,324)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",325,325)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",326,326)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",327,327)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax >0 )",328,328)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",329,329)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",330,330)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",331,331)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",332,332)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",333,333)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecords",334,334)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",335,335)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",336,336)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",337,337)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",338,338)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecords",339,339)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",340,340)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure AddRecord ( Event : CLICK )",341,341)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Add New Record",342,342)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure ShowRecords",343,343)
SS_ESASTEP("Circuits\Main\Main\Main","savemode = 2",344,344)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",345,345)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",346,346)
Return
*-------------------------------------------------------------------*

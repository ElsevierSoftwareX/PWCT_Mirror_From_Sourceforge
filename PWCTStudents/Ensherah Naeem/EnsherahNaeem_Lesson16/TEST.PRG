*---------------------------------------------------------------------------*
* Time : 21:03:57    Date : 03/22/2012
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
Public savemode
savemode := 1
DO connect
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 601 ;
HEIGHT 449 ;
ICON "PWCTICON" ;
TITLE "test" ;
MAIN ;
BACKCOLOR {221,238,227} 

@ 41 ,31 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 49 ;
HEIGHT 27 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,0,0}
@ 96 ,31 LABEL lbl2 ;
VALUE "Address" ;
WIDTH 75 ;
HEIGHT 33 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,0,0}
@ 155 ,31 LABEL lbl3 ;
VALUE "Phone" ;
WIDTH 74 ;
HEIGHT 26 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,0,0}
@ 39 ,101 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 94 ,101 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 154 ,101 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 288 ,119 BUTTONEX btn1;
CAPTION "Close Window";
FONTCOLOR {192,192,192};
BACKCOLOR {0,128,128};
ON CLICK closewindow()  ;
WIDTH 164 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 25 ,393 BUTTONEX btnFirst;
CAPTION "First Record";
FONTCOLOR {192,192,192};
BACKCOLOR {0,128,255};
ON CLICK firstrecord()  ;
WIDTH 164 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 73 ,393 BUTTONEX btnNext;
CAPTION "Next Record";
FONTCOLOR {192,192,192};
BACKCOLOR {0,128,192};
ON CLICK nextrecord()  ;
WIDTH 164 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 121 ,393 BUTTONEX btnPrev;
CAPTION "Prev Record";
FONTCOLOR {192,192,192};
BACKCOLOR {128,128,255};
ON CLICK prevrecord()  ;
WIDTH 164 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 169 ,393 BUTTONEX btnLast;
CAPTION "Last Record";
FONTCOLOR {192,192,192};
BACKCOLOR {128,128,192};
ON CLICK lastrecord()  ;
WIDTH 164 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 287 ,328 BUTTONEX btnDel;
CAPTION "Delete Record";
FONTCOLOR {192,192,192};
BACKCOLOR {128,0,0};
ON CLICK delrecord()  ;
WIDTH 164 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 345 ,213 BUTTONEX btnSave;
CAPTION "Save Record";
FONTCOLOR {192,192,192};
BACKCOLOR {128,0,128};
ON CLICK saverecord()  ;
WIDTH 164 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 346 ,402 BUTTONEX btnCancel;
CAPTION "Cancel Record";
FONTCOLOR {192,192,192};
BACKCOLOR {0,128,64};
ON CLICK cancelrecord()  ;
WIDTH 164 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 344 ,24 BUTTONEX btnEdit;
CAPTION "Edit Record";
FONTCOLOR {192,192,192};
BACKCOLOR {255,128,0};
ON CLICK editrecord()  ;
WIDTH 164 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 235 ,252 BUTTONEX btnadd;
CAPTION "Add Record ";
FONTCOLOR {128,128,128};
BACKCOLOR {0,255,255};
ON CLICK addrecord()  ;
WIDTH 124 HEIGHT 30 ;
FONT "arial" SIZE 12 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

DO showrecords
DO mode WITH 2
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
Return Nil
Proc disconnect
oRS:Close()
oCon:CLOSE()
Return Nil
Proc showrecords
mycheck := oRS:RecordCount
IF mycheck > 0
cname := oRS:fields:item(alltrim("name")):value
caddress := oRS:fields:item(alltrim("address")):value
cphone := oRS:fields:item(alltrim("phone")):value
ELSE
cname := ""
caddress := ""
cphone := ""
MyOut := MSGBOX(" It is the last record"," Information ")
DO mode WITH 3
ENDIF
win1.text1.Value := cname
win1.text2.Value := caddress
win1.text3.Value := cphone
Return Nil
Proc closewindow
DO disconnect
win1.Release ( )
Return Nil
Proc lastrecord
mycheck := oRS:RecordCount
IF mycheck > 0
oRS:MOVELAST()
DO showrecords
ENDIF
Return Nil
Proc firstrecord
mycheck := oRS:RecordCount
IF mycheck > 0
oRS:MOVEFIRST()
DO showrecords
ENDIF
Return Nil
Proc nextrecord
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVENEXT()
mycheck := oRS:EOF()
IF mycheck
oRS:MOVEPREVIOUS()
MyOut := MSGBOX("End of File ","Sorry ")
ELSE
DO showrecords
ENDIF
ENDIF
Return Nil
Proc prevrecord
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVEPREVIOUS()
mycheck := oRS:BOF()
IF mycheck
oRS:MOVENEXT()
MyOut := MSGBOX("Beging of the file ","Error ")
ELSE
DO showrecords
ENDIF
ENDIF
Return Nil
Proc delrecord
mymax := oRS:RecordCount
IF mymax > 0
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
DO showrecords
ENDIF
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
DO showrecords
Return Nil
Proc editrecord
mymax := oRS:RecordCount
IF mymax > 0
DO mode WITH 1
savemode := 1
ENDIF
Return Nil
Proc saverecord
DO mode WITH 2
cName := win1.text1.Value
cAddress := win1.text2.Value
cPhone := win1.text3.Value
oRS:fields:item(alltrim("Name ")):value := cName
oRS:fields:item(alltrim("Address ")):value := cAddress
oRS:fields:item(alltrim("Phone ")):value := cPhone
oRS:UPDATE()
Return Nil
Proc mode( p1 )
IF p1 = 1
win1.btnfirst.Enabled := false
win1.btnnext.Enabled := false
win1.btnprev.Enabled := false
win1.btnlast.Enabled := false
win1.btndel.Enabled := false
win1.btn1.Enabled := false
win1.btnsave.Enabled := true
win1.btncancel.Enabled := true
win1.btnedit.Enabled := false
win1.btnadd.Enabled := false
ENDIF
IF p1 = 2
win1.btnfirst.Enabled := true
win1.btnnext.Enabled := true
win1.btnprev.Enabled := true
win1.btnlast.Enabled := true
win1.btndel.Enabled := true
win1.btnedit.Enabled := true
win1.btnsave.Enabled := false
win1.btncancel.Enabled := false
win1.btn1.Enabled := true
win1.btnadd.Enabled := true
ENDIF
IF p1 = 3
win1.btnfirst.Enabled := false
win1.btnnext.Enabled := false
win1.btnprev.Enabled := false
win1.btnlast.Enabled := false
win1.btndel.Enabled := false
win1.btn1.Enabled := true
win1.btnsave.Enabled := false
win1.btncancel.Enabled := false
win1.btnedit.Enabled := false
win1.btnadd.Enabled := false
ENDIF
Return Nil
Proc addrecord
oRS:ADDNEW()
DO showrecords
savemode := 2
DO mode WITH 1
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Public savemode",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","savemode = 1",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure connect",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'test'",4,8)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",9,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Address'",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",26,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Phone'",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",36,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",45,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",52,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",59,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Close Window'",65,68)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closewindow()",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",70,74)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnFirst ) , Caption : 'First Record'",75,78)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action firstrecord()",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",80,84)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnNext ) , Caption : 'Next Record'",85,88)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action nextrecord()",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",90,94)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnPrev ) , Caption : 'Prev Record'",95,98)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action prevrecord()",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",100,104)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnLast ) , Caption : 'Last Record'",105,108)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lastrecord()",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",110,114)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnDel ) , Caption : 'Delete Record'",115,118)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action delrecord()",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",120,124)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnSave ) , Caption : 'Save Record'",125,128)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action saverecord()",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",130,134)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnCancel ) , Caption : 'Cancel Record'",135,138)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action cancelrecord()",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",140,144)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnEdit ) , Caption : 'Edit Record'",145,148)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action editrecord()",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",150,154)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnadd ) , Caption : 'Add Record '",155,158)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action addrecord()",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",160,164)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",165,166)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecords",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",169,171)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",173,174)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Ext",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",176,177)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",178,180)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure disconnect",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showrecords",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck := ADODB RecordSet (oRS) , Get Records Count",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck > 0 )",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('name') Value",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('address') Value",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (oRS) Get Field ('phone') Value",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ''",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ''",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ''",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' It is the last record' Title ' Information ' Type: Message Box",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 3",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := cname",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := caddress",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := cphone",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closewindow",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure disconnect",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lastrecord",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck := ADODB RecordSet (oRS) , Get Records Count",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck > 0 )",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecords",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure firstrecord",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck := ADODB RecordSet (oRS) , Get Records Count",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck > 0 )",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecords",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure nextrecord",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check EOF",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'End of File ' Title 'Sorry ' Type: Message Box",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecords",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure prevrecord",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Beging of the file ' Title 'Error ' Type: Message Box",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecords",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure delrecord",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecords",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure cancelrecord",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( savemode = 2 )",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecords",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure editrecord",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","savemode = 1",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure saverecord",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.text1.Value",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = win1.text2.Value",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = win1.text3.Value",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Name ') Value To (cName)",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Address ') Value To (cAddress)",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Phone ') Value To (cPhone)",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",294,294)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",295,295)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mode( p1 )",296,296)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1 = 1 )",297,297)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnfirst.Enabled := false",298,298)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnnext.Enabled := false",299,299)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnprev.Enabled := false",300,300)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnlast.Enabled := false",301,301)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btndel.Enabled := false",302,302)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Enabled := false",303,303)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnsave.Enabled := true",304,304)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btncancel.Enabled := true",305,305)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnedit.Enabled := false",306,306)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnadd.Enabled := false",307,307)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",308,308)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1 = 2 )",309,309)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnfirst.Enabled := true",310,310)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnnext.Enabled := true",311,311)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnprev.Enabled := true",312,312)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnlast.Enabled := true",313,313)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btndel.Enabled := true",314,314)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnedit.Enabled := true",315,315)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnsave.Enabled := false",316,316)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btncancel.Enabled := false",317,317)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Enabled := true",318,318)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnadd.Enabled := true",319,319)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",320,320)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1 = 3 )",321,321)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnfirst.Enabled := false",322,322)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnnext.Enabled := false",323,323)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnprev.Enabled := false",324,324)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnlast.Enabled := false",325,325)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btndel.Enabled := false",326,326)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Enabled := true",327,327)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnsave.Enabled := false",328,328)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btncancel.Enabled := false",329,329)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnedit.Enabled := false",330,330)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnadd.Enabled := false",331,331)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",332,332)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",333,333)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure addrecord",334,334)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Add New Record",335,335)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecords",336,336)
SS_ESASTEP("Circuits\Main\Main\Main","savemode = 2",337,337)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",338,338)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",339,339)
Return
*-------------------------------------------------------------------*

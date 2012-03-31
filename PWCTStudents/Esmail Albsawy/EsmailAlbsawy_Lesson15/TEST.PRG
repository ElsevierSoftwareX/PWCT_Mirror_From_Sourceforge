*---------------------------------------------------------------------------*
* Time : 22:24:07    Date : 03/29/2012
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
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 484 ;
HEIGHT 376 ;
ON INIT connect()  ;
ON RELEASE disconnect()  ;
ICON "PWCTICON" ;
TITLE "Phone Book  " ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

win1.Center ( )
@ 33 ,20 LABEL lbl1 ;
VALUE "Name " ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 78 ,20 LABEL lbl2 ;
VALUE "Address" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 123 ,20 LABEL lbl3 ;
VALUE "Phone" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 33 ,109 TEXTBOX textname;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 78 ,109 TEXTBOX textaddress;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 123 ,109 TEXTBOX textphone;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 31 ,348 BUTTONEX btnFirst;
CAPTION "First";
ON CLICK btnFirst()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 72 ,348 BUTTONEX btnNext;
CAPTION "Next";
ON CLICK btnNext()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 113 ,348 BUTTONEX btnPrev;
CAPTION "Prev";
ON CLICK btnprev()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 154 ,348 BUTTONEX btnlast;
CAPTION "Last";
ON CLICK btnLast()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 229 ,348 BUTTONEX btndel;
CAPTION "Delete";
ON CLICK btndel()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 229 ,234 BUTTONEX btnEdit;
CAPTION "Edit";
ON CLICK btnEdit()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 229 ,120 BUTTONEX btnsave;
CAPTION "Save";
ON CLICK btnSave()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 229 ,6 BUTTONEX btnCancel;
CAPTION "Cancel";
ON CLICK btncancel()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 293 ,6 BUTTONEX btnclose;
CAPTION "Close";
ON CLICK btnClose()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

DO mode WITH 1
ACTIVATE WINDOW win1
EndIF

procedure connect()
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=data.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from tel",oCon,3,3 )
DO showrecord
return
procedure disconnect()
oRS:Close()
oCon:CLOSE()
return
Proc showrecord
nmax := oRS:RecordCount
IF nmax > 0
cname := oRS:fields:item(alltrim("name")):value
caddress := oRS:fields:item(alltrim("address")):value
cphone := oRS:fields:item(alltrim("phone")):value
win1.textname.Value := cname
win1.textaddress.Value := caddress
win1.textphone.Value := cphone
ELSE
win1.textname.Value := ""
win1.textaddress.Value := ""
win1.textphone.Value := ""
ENDIF
Return Nil
Proc mode( p1 )
IF p1 =1
win1.btnFirst.Enabled := true
win1.btnNext.Enabled := true
win1.btnPrev.Enabled := true
win1.btnlast.Enabled := true
win1.btndel.Enabled := true
win1.btnEdit.Enabled := true
win1.btnsave.Enabled := false
win1.btnCancel.Enabled := false
win1.btnclose.Enabled := true
ENDIF
IF p1 = 2
win1.btnFirst.Enabled := false
win1.btnNext.Enabled := false
win1.btnPrev.Enabled := false
win1.btnlast.Enabled := false
win1.btnclose.Enabled := false
win1.btnEdit.Enabled := false
win1.btndel.Enabled := false
win1.btnsave.Enabled := true
win1.btnCancel.Enabled := true
ENDIF
Return Nil
procedure btnClose()
win1.Release ( )
return
procedure btnFirst()
nmax := oRS:RecordCount
IF nmax >0
oRS:MOVEFIRST()
DO showrecord
ENDIF
return
procedure btnLast()
nmax := oRS:RecordCount
IF nmax > 0
oRS:MOVELAST()
DO showrecord
ENDIF
return
procedure btnNext()
nmax := oRS:RecordCount
IF nmax >0
oRS:MOVENEXT()
myCheck := oRS:EOF()
IF mycheck
oRS:MOVEPREVIOUS()
MyOut := MSGBOX("This is Last Record ","Sorry")
ENDIF
DO showrecord
ENDIF
return
procedure btnprev()
nmax := oRS:RecordCount
IF nmax >0
oRS:MOVEPREVIOUS()
myCheck := oRS:BOF()
IF mycheck
oRS:MOVENEXT()
MyOut := MSGBOX("This is first record ","sorry ")
ENDIF
DO showrecord
ENDIF
return
procedure btndel()
nmax := oRS:RecordCount
IF nmax >0
MyOut := MSGOKCANCEL("Are you sure delete this record ","Delete ")
IF myout = true
oRS:DELETE()
oRS:MOVEPREVIOUS()
myCheck := oRS:BOF()
IF mycheck
oRS:MOVENEXT()
ENDIF
DO showrecord
ENDIF
ELSE
MyOut := MSGBOX("No record to delete it ","Sorry")
ENDIF
return
procedure btnEdit()
nmax := oRS:RecordCount
IF nmax > 0
DO mode WITH 2
win1.textname.SetFocus ( )
ENDIF
return
procedure btnSave()
cname := win1.textname.Value
caddress := win1.textaddress.Value
cphone := win1.textphone.Value
oRS:fields:item(alltrim("name ")):value := cname
oRS:fields:item(alltrim("address")):value := caddress
oRS:fields:item(alltrim("phone")):value := cphone
oRS:UPDATE()
DO showrecord
DO mode WITH 1
return
procedure btncancel()
DO mode WITH 1
return


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Phone Book  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action connect",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE : Action disconnect",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",8,14)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name '",16,17)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",18,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Address'",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",25,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Phone'",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",32,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textname  )",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",38,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textaddress  )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",45,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textphone  )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",52,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnFirst ) , Caption : 'First'",58,59)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action btnFirst",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",61,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnNext ) , Caption : 'Next'",64,65)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action btnNext",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",67,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnPrev ) , Caption : 'Prev'",70,71)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action btnprev",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",73,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnlast ) , Caption : 'Last'",76,77)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action btnLast",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",79,81)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btndel ) , Caption : 'Delete'",82,83)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action btndel",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",85,87)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnEdit ) , Caption : 'Edit'",88,89)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action btnEdit",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",91,93)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnsave ) , Caption : 'Save'",94,95)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action btnSave",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",97,99)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnCancel ) , Caption : 'Cancel'",100,101)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action btncancel",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",103,105)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnclose ) , Caption : 'Close'",106,107)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action btnClose",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",109,111)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",112,113)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",115,117)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect - Event : INIT",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",119,120)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Ext",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",122,123)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",124,126)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure disconnect - Event : RELEASE",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showrecord",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","nmax := ADODB RecordSet (oRS) , Get Records Count",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nmax > 0 )",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('name') Value",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('address') Value",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (oRS) Get Field ('phone') Value",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textname.Value := cname",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textaddress.Value := caddress",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textphone.Value := cphone",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textname.Value := ''",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textaddress.Value := ''",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textphone.Value := ''",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mode( p1 )",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1 =1 )",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFirst.Enabled := true",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := true",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnPrev.Enabled := true",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnlast.Enabled := true",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btndel.Enabled := true",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnEdit.Enabled := true",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnsave.Enabled := false",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnCancel.Enabled := false",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnclose.Enabled := true",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1 = 2 )",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFirst.Enabled := false",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := false",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnPrev.Enabled := false",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnlast.Enabled := false",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnclose.Enabled := false",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnEdit.Enabled := false",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btndel.Enabled := false",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnsave.Enabled := true",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnCancel.Enabled := true",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure btnClose ( Event : CLICK )",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure btnFirst ( Event : CLICK )",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","nmax := ADODB RecordSet (oRS) , Get Records Count",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nmax >0 )",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure btnLast ( Event : CLICK )",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","nmax := ADODB RecordSet (oRS) , Get Records Count",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nmax > 0 )",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure btnNext ( Event : CLICK )",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","nmax := ADODB RecordSet (oRS) , Get Records Count",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nmax >0 )",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","myCheck = ADODB RecordSet oRS , Check EOF",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'This is Last Record ' Title 'Sorry' Type: Message Box",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure btnprev ( Event : CLICK )",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","nmax := ADODB RecordSet (oRS) , Get Records Count",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nmax >0 )",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","myCheck = ADODB RecordSet oRS , Check BOF",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'This is first record ' Title 'sorry ' Type: Message Box",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure btndel ( Event : CLICK )",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","nmax := ADODB RecordSet (oRS) , Get Records Count",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nmax >0 )",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Are you sure delete this record ' Title 'Delete ' Type: Message Ok/Cancel",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout = true )",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","myCheck = ADODB RecordSet oRS , Check BOF",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No record to delete it ' Title 'Sorry' Type: Message Box",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure btnEdit ( Event : CLICK )",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","nmax := ADODB RecordSet (oRS) , Get Records Count",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nmax > 0 )",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textname.SetFocus ( )",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure btnSave ( Event : CLICK )",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","cname = win1.textname.Value",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = win1.textaddress.Value",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = win1.textphone.Value",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('name ') Value To (cname)",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('address') Value To (caddress)",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('phone') Value To (cphone)",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure btncancel ( Event : CLICK )",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",250,250)
Return
*-------------------------------------------------------------------*

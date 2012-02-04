*---------------------------------------------------------------------------*
* Time : 11:46:31    Date : 02/02/2012
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


Resistance R_LESSON23_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON23_18smart1() code
Public savemode
savemode := 1
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 488 ;
HEIGHT 382 ;
ICON "PWCTICON" ;
TITLE "Lesson 21" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 28 ,124 LABEL lbl4 ;
VALUE "Phones Notebook" ;
WIDTH 219 ;
HEIGHT 39 ;
AUTOSIZE ;
FONT "Arial" SIZE 20  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,0,0}
@ 117 ,165 LABEL lbl1 ;
VALUE "Name " ;
WIDTH 49 ;
HEIGHT 26 ;
AUTOSIZE ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 163 ,165 LABEL lbl2 ;
VALUE "Address " ;
WIDTH 68 ;
HEIGHT 29 ;
AUTOSIZE ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 212 ,165 LABEL lbl3 ;
VALUE "Phone " ;
WIDTH 67 ;
HEIGHT 25 ;
AUTOSIZE ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 107 ,238 TEXTBOX txtname;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 153 ,238 TEXTBOX txtaddress;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 202 ,238 TEXTBOX txtphone;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 240 ,20 BUTTONEX btnclose;
CAPTION "Exit";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK closesystem()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 86 ,20 BUTTONEX btnFirst;
CAPTION "First Record";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK firstrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 124 ,20 BUTTONEX btnNext;
CAPTION "Next Record";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK nextrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 161 ,20 BUTTONEX btnprev;
CAPTION "Prev Record";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK prevrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 200 ,20 BUTTONEX btnLast;
CAPTION "Last Record";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK lastrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 299 ,26 BUTTONEX btndel;
CAPTION "Delete ";
ON CLICK deleterecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 299 ,352 BUTTONEX btnsave;
CAPTION "Save";
ON CLICK saverecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 299 ,244 BUTTONEX btncancel;
CAPTION "Cancel";
ON CLICK cancelrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 299 ,137 BUTTONEX btnedit;
CAPTION "Edit";
ON CLICK editrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 261 ,244 BUTTONEX btnadd;
CAPTION "Add New Record";
ON CLICK addrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

DO connect
DO showrecord
DO mode WITH 2
ACTIVATE WINDOW win1
EndIF

Proc connect
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=db.mdb' )
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
Proc closesystem
MyOut := MSGOKCANCEL("Are you sure to Exit ? ","Stop")
IF myout=true
DO disconnect
win1.Release ( )
ENDIF
Return Nil
Proc showrecord
mymax := oRS:RecordCount
IF mymax>0
cname := oRS:fields:item("name"):value
caddress := oRS:fields:item("address"):value
cphone := oRS:fields:item("phone"):value
ELSE
cname := ""
caddress := ""
cphone := ""
ENDIF
win1.txtname.Value := cname
win1.txtaddress.Value := caddress
win1.txtphone.Value := cphone
Return Nil
Proc firstrecord
mymax := oRS:RecordCount
IF mymax>0
oRS:MOVEFIRST()
DO showrecord
ENDIF
Return Nil
Proc Lastrecord
mymax := oRS:RecordCount
IF mymax>0
oRS:MOVELAST()
DO showrecord
ENDIF
Return Nil
Proc Nextrecord
mymax := oRS:RecordCount
IF mymax>0
oRS:MOVENEXT()
mycheck := oRS:EOF()
IF mycheck
oRS:MOVEPREVIOUS()
MyOut := MSGINFO("áÇíæÌÏ ÈíÇäÇÊ ÃÎÑì "," ÊäÈíå")
ELSE
DO showrecord
ENDIF
ENDIF
Return Nil
Proc Prevrecord
mymax := oRS:RecordCount
IF mymax>0
oRS:MOVEPREVIOUS()
mycheck := oRS:BOF()
IF mycheck
oRS:MOVENEXT()
MyOut := MSGINFO("áÇíæÌÏ ÈíÇäÇÊ ÃÎÑì "," ÊäÈíå")
ELSE
DO showrecord
ENDIF
ENDIF
Return Nil
Proc deleterecord
mymax := oRS:RecordCount
IF mycheck
oRS:MOVENEXT()
ENDIF
IF mymax>0
MyOut := MSGOKCANCEL("Are you sure to delete this record ? ","Stop")
IF myout=true
oRS:DELETE()
oRS:UPDATE()
oRS:MOVEPREVIOUS()
mycheck := oRS:BOF()
IF mycheck
oRS:MOVENEXT()
ENDIF
ENDIF
DO showrecord
ENDIF
Return Nil
Proc mode( p1 )
IF p1=1
win1.btnclose.Enabled := false
win1.btnFirst.Enabled := false
win1.btnNext.Enabled := false
win1.btnprev.Enabled := false
win1.btnLast.Enabled := false
win1.btndel.Enabled := false
win1.btnsave.Enabled := True
win1.btncancel.Enabled := True
win1.btnedit.Enabled := false
win1.btnadd.Enabled := false
ENDIF
IF p1=2
win1.btnclose.Enabled := true
win1.btnedit.Enabled := true
win1.btnNext.Enabled := true
win1.btnprev.Enabled := true
win1.btnLast.Enabled := true
win1.btndel.Enabled := true
win1.btnsave.Enabled := false
win1.btncancel.Enabled := false
win1.btnFirst.Enabled := true
win1.btnadd.Enabled := true
ENDIF
Return Nil
Proc saverecord
cname := win1.txtname.Value
caddress := win1.txtaddress.Value
cphone := win1.txtphone.Value
oRS:fields:item("name"):value := cname
oRS:fields:item("address"):value := caddress
oRS:fields:item("phone"):value := cphone
oRS:UPDATE()
DO mode WITH 2
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
DO showrecord
Return Nil
Proc editrecord
mymax := oRS:RecordCount
IF mymax>0
DO mode WITH 1
savemode := 1
ENDIF
Return Nil
Proc addrecord
oRS:ADDNEW()
DO showrecord
savemode := 2
DO mode WITH 1
Return Nil


End Of Resistance

INIT PROCEDURE Init_LESSON23
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Public savemode",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","savemode = 1",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Lesson 21'",3,7)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",8,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Phones Notebook'",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",17,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name '",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",27,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Address '",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",36,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Phone '",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",45,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( txtname  )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",53,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( txtaddress  )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",59,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( txtphone  )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",65,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnclose ) , Caption : 'Exit'",70,73)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closesystem",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",75,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnFirst ) , Caption : 'First Record'",78,81)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action firstrecord",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",83,85)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnNext ) , Caption : 'Next Record'",86,89)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action nextrecord",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",91,93)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnprev ) , Caption : 'Prev Record'",94,97)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action prevrecord",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",99,101)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnLast ) , Caption : 'Last Record'",102,105)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lastrecord",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",107,109)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btndel ) , Caption : 'Delete '",110,111)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action deleterecord",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",113,115)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnsave ) , Caption : 'Save'",116,117)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action saverecord",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",119,121)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btncancel ) , Caption : 'Cancel'",122,123)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action cancelrecord",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",125,127)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnedit ) , Caption : 'Edit'",128,129)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action editrecord",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",131,133)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnadd ) , Caption : 'Add New Record'",134,135)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action addrecord",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",137,139)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",140,141)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure connect",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",145,147)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",149,150)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Ext",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",152,153)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",154,156)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure disconnect",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Are you sure to Exit ? ' Title 'Stop' Type: Message Ok/Cancel",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout=true )",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure disconnect",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showrecord",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('name') Value",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('address') Value",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (oRS) Get Field ('phone') Value",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ''",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ''",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ''",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","win1.txtname.Value := cname",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","win1.txtaddress.Value := caddress",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","win1.txtphone.Value := cphone",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure firstrecord",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Lastrecord",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Nextrecord",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check EOF",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'áÇíæÌÏ ÈíÇäÇÊ ÃÎÑì ' Title ' ÊäÈíå' Type: Message Info",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Prevrecord",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'áÇíæÌÏ ÈíÇäÇÊ ÃÎÑì ' Title ' ÊäÈíå' Type: Message Info",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure deleterecord",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Are you sure to delete this record ? ' Title 'Stop' Type: Message Ok/Cancel",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout=true )",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mode( p1 )",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1=1 )",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnclose.Enabled := false",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFirst.Enabled := false",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := false",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnprev.Enabled := false",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnLast.Enabled := false",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btndel.Enabled := false",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnsave.Enabled := True",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btncancel.Enabled := True",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnedit.Enabled := false",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnadd.Enabled := false",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1=2 )",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnclose.Enabled := true",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnedit.Enabled := true",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := true",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnprev.Enabled := true",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnLast.Enabled := true",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btndel.Enabled := true",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnsave.Enabled := false",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btncancel.Enabled := false",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFirst.Enabled := true",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnadd.Enabled := true",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure saverecord",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","cname = win1.txtname.Value",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = win1.txtaddress.Value",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = win1.txtphone.Value",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('name') Value To (cname)",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('address') Value To (caddress)",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('phone') Value To (cphone)",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure cancelrecord",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( savemode = 2 )",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","mycheck = ADODB RecordSet oRS , Check BOF",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycheck )",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",294,294)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure editrecord",295,295)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",296,296)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",297,297)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",298,298)
SS_ESASTEP("Circuits\Main\Main\Main","savemode = 1",299,299)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",300,300)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",301,301)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure addrecord",302,302)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Add New Record",303,303)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecord",304,304)
SS_ESASTEP("Circuits\Main\Main\Main","savemode = 2",305,305)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",306,306)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",307,307)
Return
*-------------------------------------------------------------------*

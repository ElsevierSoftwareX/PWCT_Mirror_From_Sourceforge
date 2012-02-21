*---------------------------------------------------------------------------*
* Time : 23:59:36    Date : 02/20/2012
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


Resistance R_DATA2_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_DATA2_18smart1() code
Public savemode
savemode := 1
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 652 ;
HEIGHT 450 ;
ICON "PWCTICON" ;
TITLE "Telephone Database" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 27 ,14 LABEL lbl1 ;
VALUE "Name " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 89 ,14 LABEL lbl2 ;
VALUE "Address " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 164 ,14 LABEL lbl3 ;
VALUE "Phone " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 23 ,232 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 87 ,232 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 156 ,232 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 235 ,20 BUTTONEX btn1;
CAPTION "First Record";
FONTCOLOR {0,255,0};
BACKCOLOR {128,0,128};
ON CLICK FirstRecord()  ;
WIDTH 131 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 235 ,164 BUTTONEX btn2;
CAPTION "Next Record";
FONTCOLOR {0,255,0};
BACKCOLOR {128,0,128};
ON CLICK NextRecord()  ;
WIDTH 121 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 235 ,300 BUTTONEX btn3;
CAPTION "Prev Record";
FONTCOLOR {0,255,0};
BACKCOLOR {128,0,128};
ON CLICK PrevRecord()  ;
WIDTH 127 HEIGHT 33 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 235 ,448 BUTTONEX btn4;
CAPTION "Last Record";
FONTCOLOR {0,255,0};
BACKCOLOR {128,0,128};
ON CLICK LastRecord()  ;
WIDTH 134 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 335 ,253 BUTTONEX btn5;
CAPTION "Close";
ON CLICK Close()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 289 ,123 BUTTONEX btn6;
CAPTION "Delete Record";
FONTCOLOR {0,255,0};
BACKCOLOR {128,0,128};
ON CLICK delrecord()  ;
WIDTH 164 HEIGHT 33 ;
FONT "Arial" SIZE 18 ;
NOXPSTYLE ;
TOOLTIP ""
@ 89 ,471 BUTTONEX btn7;
CAPTION "Save";
ON CLICK saverecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 156 ,471 BUTTONEX btn8;
CAPTION "Cancel";
ON CLICK cancelrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 20 ,471 BUTTONEX btn9;
CAPTION "Edit";
ON CLICK editrecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 289 ,345 BUTTONEX btn10;
CAPTION "Add Record";
FONTCOLOR {0,255,0};
BACKCOLOR {128,0,128};
ON CLICK AddRecord()  ;
WIDTH 152 HEIGHT 31 ;
FONT "arial" SIZE 18 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

DO Connect
DO showrecords
DO mode WITH 2
ACTIVATE WINDOW win1
EndIF

Proc Connect
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=test1.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from tel",oCon,3,3 )
Return Nil
Proc Disconnect
oRS:Close()
oCon:CLOSE()
Return Nil
Proc Close
DO Disconnect
win1.Release ( )
Return Nil
Proc showrecords
Count := oRS:RecordCount
IF Count > 0
name := oRS:fields:item("Name"):value
address := oRS:fields:item("Address"):value
Phone := oRS:fields:item("Phone"):value
ELSE
name := ""
address := ""
phone := ""
ENDIF
win1.text1.Value := name
win1.text2.Value := address
win1.text3.Value := phone
Return Nil
Proc FirstRecord
Count := oRS:RecordCount
IF Count > 0
oRS:MOVEFIRST()
DO showrecords
ENDIF
Return Nil
Proc LastRecord
Count := oRS:RecordCount
IF Count > 0
oRS:MOVELAST()
DO showrecords
ENDIF
Return Nil
Proc NextRecord
Count := oRS:RecordCount
IF Count > 0
oRS:MOVENEXT()
check := oRS:EOF()
IF check==true
oRS:MOVEPREVIOUS()
MyOut := MSGINFO("You are on the end","Message ")
ELSE
DO showrecords
ENDIF
ENDIF
Return Nil
Proc PrevRecord
Count := oRS:RecordCount
IF Count > 0
oRS:MOVEPREVIOUS()
check := oRS:BOF()
IF check==true
oRS:MOVENEXT()
MyOut := MSGINFO("You are on the begin","Message")
ELSE
DO showrecords
ENDIF
ENDIF
Return Nil
Proc delrecord
Count := oRS:RecordCount
IF Count > 0
MyOut := MSGOKCANCEL("Are you sure?","Delete ")
IF Myout==false
Return 0
ENDIF
oRS:DELETE()
oRS:UPDATE()
Count := oRS:RecordCount
IF Count > 0
oRS:MOVEPREVIOUS()
check := oRS:BOF()
IF check==true
oRS:MOVENEXT()
ENDIF
ENDIF
DO showrecords
ELSE
MyOut := MSGINFO("No record to delete ","Sorry")
ENDIF
Return Nil
Proc mode( p1 )
IF p1==1
win1.btn1.Enabled := false
win1.btn2.Enabled := false
win1.btn3.Enabled := false
win1.btn4.Enabled := false
win1.btn5.Enabled := false
win1.btn6.Enabled := false
win1.btn7.Enabled := true
win1.btn8.Enabled := true
win1.btn9.Enabled := false
win1.btn10.Enabled := false
ELSEIF p1==2
win1.btn1.Enabled := true
win1.btn2.Enabled := true
win1.btn3.Enabled := true
win1.btn4.Enabled := true
win1.btn5.Enabled := true
win1.btn6.Enabled := true
win1.btn7.Enabled := false
win1.btn8.Enabled := false
win1.btn9.Enabled := true
win1.btn10.Enabled := true
ENDIF
Return Nil
Proc editrecord
Count := oRS:RecordCount
IF Count > 0
DO mode WITH 1
savemode := 1
ENDIF
Return Nil
Proc saverecord
DO mode WITH 2
name := win1.text1.Value
address := win1.text2.Value
phone := win1.text3.Value
oRS:fields:item("name"):value := name
oRS:fields:item("address"):value := address
oRS:fields:item("phone"):value := phone
oRS:UPDATE()
Return Nil
Proc cancelrecord
IF savemode = 2
oRS:DELETE()
oRS:UPDATE()
Count := oRS:RecordCount
IF Count > 0
oRS:MOVEPREVIOUS()
check := oRS:BOF()
IF check==true
oRS:MOVENEXT()
ENDIF
ENDIF
ENDIF
DO mode WITH 2
DO showrecords
Return Nil
Proc AddRecord
oRS:ADDNEW()
DO showrecords
savemode := 2
DO mode WITH 1
Return Nil


End Of Resistance

INIT PROCEDURE Init_DATA2
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Public savemode",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","savemode = 1",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Telephone Database'",3,7)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",8,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name '",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",15,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Address '",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",22,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Phone '",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",29,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",35,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",41,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",47,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'First Record'",52,55)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action FirstRecord",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",57,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Next Record'",61,64)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action NextRecord",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",66,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Prev Record'",70,73)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action PrevRecord",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",75,78)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'Last Record'",79,82)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action LastRecord",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",84,87)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Close'",88,89)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Close",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",91,93)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn6 ) , Caption : 'Delete Record'",94,97)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action delrecord",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",99,102)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn7 ) , Caption : 'Save'",103,104)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action saverecord",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",106,108)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn8 ) , Caption : 'Cancel'",109,110)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action cancelrecord",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",112,114)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn9 ) , Caption : 'Edit'",115,116)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action editrecord",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",118,120)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn10 ) , Caption : 'Add Record'",121,124)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action AddRecord",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",126,129)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",130,131)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure Connect",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecords",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",135,137)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Connect",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",139,140)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=test1.mdb'",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",142,143)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",144,146)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Disconnect",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Close",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure Disconnect",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showrecords",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","Count := ADODB RecordSet (oRS) , Get Records Count",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Count > 0 )",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","name = ADODB RecordSet (oRS) Get Field ('Name') Value",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","address = ADODB RecordSet (oRS) Get Field ('Address') Value",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","Phone = ADODB RecordSet (oRS) Get Field ('Phone') Value",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","name = ''",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","address = ''",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","phone = ''",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := name",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := address",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := phone",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure FirstRecord",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","Count := ADODB RecordSet (oRS) , Get Records Count",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Count > 0 )",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecords",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure LastRecord",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","Count := ADODB RecordSet (oRS) , Get Records Count",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Count > 0 )",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecords",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure NextRecord",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","Count := ADODB RecordSet (oRS) , Get Records Count",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Count > 0 )",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","check = ADODB RecordSet oRS , Check EOF",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( check==true )",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'You are on the end' Title 'Message ' Type: Message Info",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecords",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure PrevRecord",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","Count := ADODB RecordSet (oRS) , Get Records Count",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Count > 0 )",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","check = ADODB RecordSet oRS , Check BOF",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( check==true )",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'You are on the begin' Title 'Message' Type: Message Info",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecords",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure delrecord",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","Count := ADODB RecordSet (oRS) , Get Records Count",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Count > 0 )",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Are you sure?' Title 'Delete ' Type: Message Ok/Cancel",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Myout==false )",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","Count := ADODB RecordSet (oRS) , Get Records Count",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Count > 0 )",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","check = ADODB RecordSet oRS , Check BOF",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( check==true )",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecords",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No record to delete ' Title 'Sorry' Type: Message Info",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mode( p1 )",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1==1 )",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Enabled := false",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Enabled := false",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn3.Enabled := false",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn4.Enabled := false",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Enabled := false",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn6.Enabled := false",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn7.Enabled := true",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn8.Enabled := true",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn9.Enabled := false",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn10.Enabled := false",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( p1==2 )",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Enabled := true",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Enabled := true",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn3.Enabled := true",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn4.Enabled := true",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Enabled := true",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn6.Enabled := true",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn7.Enabled := false",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn8.Enabled := false",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn9.Enabled := true",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn10.Enabled := true",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure editrecord",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","Count := ADODB RecordSet (oRS) , Get Records Count",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Count > 0 )",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","savemode = 1",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure saverecord",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","name = win1.text1.Value",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","address = win1.text2.Value",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","phone = win1.text3.Value",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('name') Value To (name)",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('address') Value To (address)",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('phone') Value To (phone)",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure cancelrecord",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( savemode = 2 )",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","Count := ADODB RecordSet (oRS) , Get Records Count",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Count > 0 )",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","check = ADODB RecordSet oRS , Check BOF",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( check==true )",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecords",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure AddRecord",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Add New Record",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecords",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","savemode = 2",294,294)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",295,295)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",296,296)
Return
*-------------------------------------------------------------------*

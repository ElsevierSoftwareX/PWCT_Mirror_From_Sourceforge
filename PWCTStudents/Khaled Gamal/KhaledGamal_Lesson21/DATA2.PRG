*---------------------------------------------------------------------------*
* Time : 02:05:20    Date : 02/16/2012
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
@ 284 ,213 BUTTONEX btn6;
CAPTION "Delete Record";
FONTCOLOR {0,255,64};
BACKCOLOR {128,0,128};
ON CLICK delrecord()  ;
WIDTH 164 HEIGHT 33 ;
FONT "Arial" SIZE 16 ;
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
ENDIF
Return Nil
Proc editrecord
Count := oRS:RecordCount
IF Count > 0
DO mode WITH 1
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
DO mode WITH 2
DO showrecords
Return Nil


End Of Resistance

INIT PROCEDURE Init_DATA2
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Telephone Database'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name '",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Address '",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Phone '",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",33,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",39,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",45,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'First Record'",50,53)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action FirstRecord",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",55,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Next Record'",59,62)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action NextRecord",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",64,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Prev Record'",68,71)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action PrevRecord",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",73,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'Last Record'",77,80)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action LastRecord",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",82,85)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Close'",86,87)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Close",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",89,91)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn6 ) , Caption : 'Delete Record'",92,95)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action delrecord",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",97,100)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn7 ) , Caption : 'Save'",101,102)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action saverecord",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",104,106)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn8 ) , Caption : 'Cancel'",107,108)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action cancelrecord",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",110,112)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn9 ) , Caption : 'Edit'",113,114)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action editrecord",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",116,118)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",119,120)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure Connect",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecords",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",124,126)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Connect",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",128,129)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=test1.mdb'",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",131,132)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",133,135)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Disconnect",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Close",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure Disconnect",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showrecords",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","Count := ADODB RecordSet (oRS) , Get Records Count",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Count > 0 )",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","name = ADODB RecordSet (oRS) Get Field ('Name') Value",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","address = ADODB RecordSet (oRS) Get Field ('Address') Value",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","Phone = ADODB RecordSet (oRS) Get Field ('Phone') Value",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","name = ''",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","address = ''",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","phone = ''",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := name",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := address",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := phone",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure FirstRecord",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","Count := ADODB RecordSet (oRS) , Get Records Count",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Count > 0 )",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecords",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure LastRecord",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","Count := ADODB RecordSet (oRS) , Get Records Count",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Count > 0 )",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecords",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure NextRecord",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","Count := ADODB RecordSet (oRS) , Get Records Count",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Count > 0 )",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","check = ADODB RecordSet oRS , Check EOF",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( check==true )",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'You are on the end' Title 'Message ' Type: Message Info",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecords",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure PrevRecord",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","Count := ADODB RecordSet (oRS) , Get Records Count",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Count > 0 )",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","check = ADODB RecordSet oRS , Check BOF",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( check==true )",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'You are on the begin' Title 'Message' Type: Message Info",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecords",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure delrecord",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","Count := ADODB RecordSet (oRS) , Get Records Count",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Count > 0 )",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Are you sure?' Title 'Delete ' Type: Message Ok/Cancel",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Myout==false )",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","Count := ADODB RecordSet (oRS) , Get Records Count",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Count > 0 )",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","check = ADODB RecordSet oRS , Check BOF",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( check==true )",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecords",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No record to delete ' Title 'Sorry' Type: Message Info",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mode( p1 )",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1==1 )",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Enabled := false",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Enabled := false",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn3.Enabled := false",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn4.Enabled := false",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Enabled := false",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn6.Enabled := false",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn7.Enabled := true",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn8.Enabled := true",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn9.Enabled := false",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( p1==2 )",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Enabled := true",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Enabled := true",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn3.Enabled := true",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn4.Enabled := true",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Enabled := true",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn6.Enabled := true",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn7.Enabled := false",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn8.Enabled := false",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn9.Enabled := true",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure editrecord",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","Count := ADODB RecordSet (oRS) , Get Records Count",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Count > 0 )",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure saverecord",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","name = win1.text1.Value",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","address = win1.text2.Value",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","phone = win1.text3.Value",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('name') Value To (name)",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('address') Value To (address)",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('phone') Value To (phone)",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure cancelrecord",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecords",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",264,264)
Return
*-------------------------------------------------------------------*

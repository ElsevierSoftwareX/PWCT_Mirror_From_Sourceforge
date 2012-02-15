*---------------------------------------------------------------------------*
* Time : 00:17:11    Date : 02/13/2012
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
WIDTH 610 ;
HEIGHT 419 ;
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
FONT "arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 235 ,164 BUTTONEX btn2;
CAPTION "Next Record";
FONTCOLOR {0,255,0};
BACKCOLOR {128,0,128};
ON CLICK NextRecord()  ;
WIDTH 121 HEIGHT 32 ;
FONT "arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 235 ,300 BUTTONEX btn3;
CAPTION "Prev Record";
FONTCOLOR {0,255,0};
BACKCOLOR {128,0,128};
ON CLICK PrevRecord()  ;
WIDTH 127 HEIGHT 33 ;
FONT "arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 235 ,448 BUTTONEX btn4;
CAPTION "Last Record";
FONTCOLOR {0,255,0};
BACKCOLOR {128,0,128};
ON CLICK LastRecord()  ;
WIDTH 134 HEIGHT 32 ;
FONT "arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 295 ,246 BUTTONEX btn5;
CAPTION "Close";
ON CLICK Close()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

DO Connect
DO showrecords
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
oRS:MOVEFIRST()
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
name := oRS:fields:item("Name"):value
address := oRS:fields:item("Address"):value
Phone := oRS:fields:item("Phone"):value
win1.text1.Value := name
win1.text2.Value := address
win1.text3.Value := phone
Return Nil
Proc FirstRecord
oRS:MOVEFIRST()
DO showrecords
Return Nil
Proc LastRecord
oRS:MOVELAST()
DO showrecords
Return Nil
Proc NextRecord
oRS:MOVENEXT()
check := oRS:EOF()
IF check==true
oRS:MOVEPREVIOUS()
MyOut := MSGINFO("You are on the end","Message ")
ELSE
DO showrecords
ENDIF
Return Nil
Proc PrevRecord
oRS:MOVEPREVIOUS()
check := oRS:BOF()
IF check==true
oRS:MOVENEXT()
MyOut := MSGINFO("You are on the begin"," ")
ELSE
DO showrecords
ENDIF
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
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",92,93)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure Connect",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecords",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",96,98)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Connect",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",100,101)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=test1.mdb'",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",103,104)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",105,107)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Disconnect",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Close",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure Disconnect",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showrecords",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","name = ADODB RecordSet (oRS) Get Field ('Name') Value",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","address = ADODB RecordSet (oRS) Get Field ('Address') Value",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","Phone = ADODB RecordSet (oRS) Get Field ('Phone') Value",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := name",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := address",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := phone",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure FirstRecord",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecords",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure LastRecord",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecords",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure NextRecord",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","check = ADODB RecordSet oRS , Check EOF",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( check==true )",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'You are on the end' Title 'Message ' Type: Message Info",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecords",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure PrevRecord",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","check = ADODB RecordSet oRS , Check BOF",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( check==true )",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'You are on the begin' Title ' ' Type: Message Info",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecords",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",153,153)
Return
*-------------------------------------------------------------------*

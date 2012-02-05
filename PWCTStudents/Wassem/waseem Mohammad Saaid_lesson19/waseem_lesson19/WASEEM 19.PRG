*---------------------------------------------------------------------------*
* Time : 15:10:01    Date : 02/04/2012
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


Resistance R_WASEEM_19_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_WASEEM_19_18smart1() code
DO con
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 280 ;
HEIGHT 297 ;
ICON "PWCTICON" ;
TITLE "waseem19" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 111 ,86 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 160 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 159 ,86 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 160 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 199 ,86 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 160 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 111 ,15 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 60 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 159 ,15 LABEL lbl2 ;
VALUE "Address" ;
WIDTH 60 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 199 ,15 LABEL lbl3 ;
VALUE "Phone" ;
WIDTH 60 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 43 ,136 BUTTONEX btn1;
CAPTION "First";
ON CLICK firstmajed()  ;
WIDTH 110 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 8 ,15 BUTTONEX btn2;
CAPTION "Next";
ON CLICK nextmajed()  ;
WIDTH 97 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 44 ,15 BUTTONEX btn3;
CAPTION "Prev";
ON CLICK brevmajed()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 7 ,136 BUTTONEX btn4;
CAPTION "Last";
ON CLICK lastmajed()  ;
WIDTH 110 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 80 ,15 BUTTONEX btn5;
CAPTION "close";
ON CLICK close()  ;
WIDTH 230 HEIGHT 25 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

DO show
ACTIVATE WINDOW win1
EndIF

Proc con
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=dataa.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from Tabl",oCon,3,3 )
oRS:MOVEFIRST()
Return Nil
Proc discon
oRS:Close()
oCon:CLOSE()
Return Nil
Proc close
DO discon
win1.Release ( )
Return Nil
Proc show
cname := oRS:fields:item("Name"):value
caddress := oRS:fields:item("Address"):value
cphone := oRS:fields:item("Phone"):value
win1.text1.Value := cname
win1.text2.Value := caddress
win1.text3.Value := cphone
Return Nil
Proc firstmajed
oRS:MOVEFIRST()
DO show
Return Nil
Proc lastmajed
oRS:MOVELAST()
DO show
Return Nil
Proc nextmajed
oRS:MOVENEXT()
DO show
Mycheck := oRS:EOF()
IF Mycheck
oRS:MOVEPREVIOUS()
MyOut := MSGBOX("There is nothing to display ","Error !! ")
ELSE
DO show
ENDIF
Return Nil
Proc brevmajed
oRS:MOVEPREVIOUS()
DO show
Mycheck2 := oRS:BOF()
IF Mycheck2
oRS:MOVENEXT()
MyOut := MSGBOX("There is nothing to display ","Error !! ")
ELSE
DO show
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_WASEEM_19
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure con",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'waseem19'",2,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",15,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",21,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name'",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",34,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Address'",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",41,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Phone'",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",48,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'First'",53,54)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action firstmajed()",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",56,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Next'",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action nextmajed()",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",62,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Prev'",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action brevmajed()",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",68,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'Last'",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lastmajed()",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",74,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'close'",77,78)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action close()",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",80,82)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",83,84)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure show",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",86,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure con",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",90,91)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=dataa.mdb'",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",93,94)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from Tabl'",95,97)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure discon",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure discon",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure show",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('Name') Value",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('Address') Value",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (oRS) Get Field ('Phone') Value",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := cname",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := caddress",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := cphone",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure firstmajed",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure show",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lastmajed",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure show",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure nextmajed",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure show",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","Mycheck = ADODB RecordSet oRS , Check EOF",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Mycheck )",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'There is nothing to display ' Title 'Error !! ' Type: Message Box",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure show",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure brevmajed",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure show",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","Mycheck2 = ADODB RecordSet oRS , Check BOF",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Mycheck2 )",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'There is nothing to display ' Title 'Error !! ' Type: Message Box",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure show",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",145,145)
Return
*-------------------------------------------------------------------*

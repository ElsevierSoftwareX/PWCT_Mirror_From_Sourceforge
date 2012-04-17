*---------------------------------------------------------------------------*
* Time : 17:44:39    Date : 04/13/2012
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


Resistance R_LES14_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LES14_18smart1() code
DO connect
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 324 ;
HEIGHT 315 ;
ICON "PWCTICON" ;
TITLE "„›ﬂ—… «·⁄‰«ÊÌ‰ Ê«·√—ﬁ«„" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
NOSYSMENU ;
BACKCOLOR {128,0,255} 

DRAW RECTANGLE IN WINDOW win1;
AT 10,15;
TO 100,720;
PENCOLOR {192,192,192};
PENWIDTH 1

@ 34 ,24 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 80 ;
HEIGHT 30 ;
AUTOSIZE ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {64,0,64} ;
TRANSPARENT ;
FONTCOLOR {128,255,255}
@ 82 ,14 LABEL lbl2 ;
VALUE "Address" ;
WIDTH 80 ;
HEIGHT 30 ;
AUTOSIZE ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {64,0,64} ;
TRANSPARENT ;
FONTCOLOR {128,255,255}
@ 122 ,14 LABEL lbl3 ;
VALUE "Phone" ;
WIDTH 80 ;
HEIGHT 30 ;
AUTOSIZE ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {64,0,64} ;
TRANSPARENT ;
FONTCOLOR {128,255,255}
@ 38 ,100 TEXTBOX text1;
HEIGHT 29 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 82 ,99 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 130 ,97 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 180 ,233 BUTTONEX btn1;
CAPTION "First";
FONTCOLOR {128,255,255};
BACKCOLOR {0,64,128};
ON CLICK first()  ;
WIDTH 64 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 180 ,8 BUTTONEX btn2;
CAPTION "Last";
FONTCOLOR {128,255,255};
BACKCOLOR {0,64,128};
ON CLICK lastrecord()  ;
WIDTH 64 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 180 ,81 BUTTONEX btn3;
CAPTION "Next";
FONTCOLOR {128,255,255};
BACKCOLOR {0,64,128};
ON CLICK next()  ;
WIDTH 64 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 179 ,155 BUTTONEX btn4;
CAPTION "Previous";
FONTCOLOR {128,255,255};
BACKCOLOR {0,64,128};
ON CLICK prev()  ;
WIDTH 64 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 231 ,8 BUTTONEX btn5;
CAPTION "Exit";
FONTCOLOR {128,255,255};
BACKCOLOR {64,0,128};
ON CLICK Disconnect()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("win1"), -20),0x400000,0x100000))
DO showr
ACTIVATE WINDOW win1
EndIF

Proc Connect
Public oCon,oRS
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=data.mdb' )
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from data",oCon,3,3 )
oRS:MOVEFIRST()
Return Nil
Proc Disconnect
oRS:Close()
oCon:CLOSE()
win1.Release ( )
Return Nil
Proc showr
cname := oRS:fields:item("name"):value
caddress := oRS:fields:item("address"):value
cphone := oRS:fields:item("phone"):value
win1.text1.Value := cname
win1.text2.Value := caddress
win1.text3.Value := cphone
Return Nil
Proc first
oRS:MOVEFIRST()
DO showr
Return Nil
Proc lastrecord
oRS:MOVELAST()
DO showr
Return Nil
Proc next
oRS:MOVENEXT()
myeof := oRS:EOF()
IF myeof
oRS:MOVEPREVIOUS()
MyOut := MSGBOX("·«Ì„ﬂ‰ ⁄—÷ «·”Ã· «· «·Ì Â–« ¬Œ— ”Ã· »«·›⁄·","Œÿ√")
ELSE
DO showr
ENDIF
DO showr
Return Nil
Proc prev
oRS:MOVEPREVIOUS()
mybof := oRS:BOF()
IF mybof
oRS:MOVENEXT()
MyOut := MSGBOX("·«Ì„ﬂ‰ ⁄—÷ «·”Ã· «·”«»ﬁ Â–« √Ê· ”Ã· »«·›⁄·","Œÿ√")
ELSE
DO showr
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_LES14
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure connect",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '„›ﬂ—… «·⁄‰«ÊÌ‰ Ê«·√—ﬁ«„'",2,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,15)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Rectangle from 15,10 to 720,100",16,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name'",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",24,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Address'",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",33,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Phone'",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",42,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",50,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",57,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",64,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'First'",70,73)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action first",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",75,78)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Last'",79,82)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action lastrecord",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",84,87)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Next'",88,91)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action next",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",93,96)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'Previous'",97,100)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action prev",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",102,105)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Exit'",106,109)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Disconnect",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",111,114)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",115,116)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'win1'",117,119)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showr",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",121,123)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Connect",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","Public oCon,oRS",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=data.mdb'",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from data'",129,131)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Disconnect",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showr",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('name') Value",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('address') Value",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (oRS) Get Field ('phone') Value",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := cname",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := caddress",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := cphone",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure first",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showr",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure lastrecord",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Last Record",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showr",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure next",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","myeof = ADODB RecordSet oRS , Check EOF",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myeof )",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '·«Ì„ﬂ‰ ⁄—÷ «·”Ã· «· «·Ì Â–« ¬Œ— ”Ã· »«·›⁄·' Title 'Œÿ√' Type: Message Box",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showr",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showr",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure prev",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","mybof = ADODB RecordSet oRS , Check BOF",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mybof )",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '·«Ì„ﬂ‰ ⁄—÷ «·”Ã· «·”«»ﬁ Â–« √Ê· ”Ã· »«·›⁄·' Title 'Œÿ√' Type: Message Box",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showr",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",175,175)
Return
*-------------------------------------------------------------------*

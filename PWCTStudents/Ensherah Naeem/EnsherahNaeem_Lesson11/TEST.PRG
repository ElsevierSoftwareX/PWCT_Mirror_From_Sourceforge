*---------------------------------------------------------------------------*
* Time : 15:33:45    Date : 03/16/2012
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
WIDTH 819 ;
HEIGHT 382 ;
ICON "PWCTICON" ;
TITLE "test" ;
MAIN ;
BACKCOLOR {221,238,227} 

@ 42 ,80 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 49 ;
HEIGHT 27 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,0,0}
@ 96 ,66 LABEL lbl2 ;
VALUE "Address" ;
WIDTH 75 ;
HEIGHT 33 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,0,0}
@ 157 ,75 LABEL lbl3 ;
VALUE "Phone" ;
WIDTH 74 ;
HEIGHT 26 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,0,0}
@ 39 ,153 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 94 ,154 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 154 ,155 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 219 ,192 BUTTONEX btn1;
CAPTION "Save Record";
FONTCOLOR {255,255,255};
BACKCOLOR {0,128,128};
ON CLICK saverecord()  ;
WIDTH 164 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 269 ,193 BUTTONEX btn2;
CAPTION "Close Window";
FONTCOLOR {255,255,255};
BACKCOLOR {0,128,128};
ON CLICK closewindow()  ;
WIDTH 164 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 15 ,457 GRID Grid1;
WIDTH 307 ;
HEIGHT 217 ;
HEADERS {"name","address","phone"};
WIDTHS {100,100,100} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
@ 252 ,586 BUTTONEX btn3;
CAPTION "Show Records ";
FONTCOLOR {255,255,255};
BACKCOLOR {0,0,255};
ON CLICK showrecords()  ;
WIDTH 175 HEIGHT 28 ;
FONT "Arial" SIZE 14 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
@ 295 ,586 BUTTONEX btn4;
CAPTION "Delet All Records ";
FONTCOLOR {255,255,255};
BACKCOLOR {0,0,255};
ON CLICK deletAllrecords()  ;
WIDTH 175 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
BOLD ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc closewindow
win1.Release ( )
Return Nil
Proc saverecord
DO connect
oRS:ADDNEW()
cname := win1.text1.Value
caddress := win1.text2.Value
cphone := win1.text3.Value
IF cname== ""
MyOut := MSGBOX("Please enter a name "," Error")
Return 0
ENDIF
IF caddress== ""
MyOut := MSGBOX("Please enter the address "," Error")
Return 0
ENDIF
IF cphone== ""
MyOut := MSGBOX("Please enter the phone "," Error")
Return 0
ENDIF
oRS:fields:item(alltrim("name")):value := cname
oRS:fields:item(alltrim("address")):value := caddress
oRS:fields:item(alltrim("phone")):value := cphone
oRS:UPDATE()
oRS:Close()
oCon:CLOSE()
MyOut := MSGBOX("Operation Done "," Ok ")
Return Nil
Proc showrecords
DO connect
mymax := oRS:RecordCount
IF mymax==0
MyOut := MSGBOX("Please enter arecord "," Error")
Return 0
ENDIF
oRS:MOVEFIRST()
win1.grid1.DeleteAllItems ( )
FOR x = 1 TO mymax STEP 1
cname := oRS:fields:item(alltrim("name")):value
caddress := oRS:fields:item(alltrim("address")):value
cphone := oRS:fields:item(alltrim("phone")):value
win1.grid1.AddItem ( {cname,caddress,cphone} )
oRS:MOVENEXT()
Next
Return Nil
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
Proc deletAllrecords
DO connect
mymax := oRS:RecordCount
IF mymax==0
MyOut := MSGBOX("There are no records to be deleted "," Error")
Return 0
ENDIF
oRS:MOVEFIRST()
win1.grid1.DeleteAllItems ( )
FOR x = 1 TO mymax STEP 1
oRS:DELETE()
oRS:MOVENEXT()
Next
oRS:Close()
oCon:CLOSE()
MyOut := MSGBOX("Operation Done "," Ok ")
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'test'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Address'",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",23,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Phone'",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",33,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",42,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",49,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",56,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Save Record'",62,65)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action saverecord()",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",67,71)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Close Window'",72,75)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closewindow()",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",77,81)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'name','address','phone'}",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",83,90)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Show Records '",91,94)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action showrecords()",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",96,100)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'Delet All Records '",101,104)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action deletAllrecords()",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",106,110)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",111,112)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",113,115)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closewindow",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure saverecord",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure connect",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Add New Record",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","cname = win1.text1.Value",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = win1.text2.Value",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = win1.text3.Value",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( cname== '' )",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please enter a name ' Title ' Error' Type: Message Box",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( caddress== '' )",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please enter the address ' Title ' Error' Type: Message Box",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( cphone== '' )",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please enter the phone ' Title ' Error' Type: Message Box",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('name') Value To (cname)",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('address') Value To (caddress)",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('phone') Value To (cphone)",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Operation Done ' Title ' Ok ' Type: Message Box",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showrecords",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure connect",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax==0 )",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please enter arecord ' Title ' Error' Type: Message Box",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","win1.grid1.DeleteAllItems ( )",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To mymax Step 1)",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('name') Value",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('address') Value",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (oRS) Get Field ('phone') Value",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","win1.grid1.AddItem ( {cname,caddress,cphone} )",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",163,164)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Ext",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",166,167)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",168,170)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure deletAllrecords",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure connect",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax==0 )",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'There are no records to be deleted ' Title ' Error' Type: Message Box",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","win1.grid1.DeleteAllItems ( )",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To mymax Step 1)",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Operation Done ' Title ' Ok ' Type: Message Box",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",188,188)
Return
*-------------------------------------------------------------------*

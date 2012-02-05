*---------------------------------------------------------------------------*
* Time : 21:58:49    Date : 02/05/2012
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
WIDTH 659 ;
HEIGHT 350 ;
ICON "PWCTICON" ;
TITLE "Search" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {126,190,190} 

@ 33 ,11 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 130 ;
HEIGHT 20 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 33 ,133 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 320 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 75 ,133 LISTBOX list1;
WIDTH 320 ;
HEIGHT 200 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 40 ,485 BUTTONEX btn1;
CAPTION "Search";
ON CLICK search()  ;
WIDTH 130 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 89 ,485 BUTTONEX btn2;
CAPTION "Clear";
ON CLICK myclear()  ;
WIDTH 130 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 134 ,485 BUTTONEX btn3;
CAPTION "Close";
ON CLICK myclose()  ;
WIDTH 130 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 91 ,9 LABEL lbl2 ;
VALUE "Search Results" ;
WIDTH 130 ;
HEIGHT 20 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 175 ,17 IMAGE image1;
PICTURE "EGYPT.JPG";
STRETCH ;
WIDTH 100 HEIGHT 100
@ 174 ,478 IMAGE image2;
PICTURE "PAPEL8I.JPG";
STRETCH ;
WIDTH 141 HEIGHT 101
DEFINE STATUSBAR 

STATUSITEM "Ready"

DATE

CLOCK

END STATUSBAR

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc search
cName := win1.textName.Value
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=Data.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from tel where name like '" + cName + "%'",oCon,3,3 )
mymax := oRS:RecordCount
win1.list1.DeleteAllItems ( )
IF mymax > 0
FOR x = 1 TO mymax STEP 1
vname := oRS:fields:item("name"):value
vaddress := oRS:fields:item("address"):value
vphone := oRS:fields:item("phone"):value
win1.list1.AddItem ( vName + " - " + vAddress + " - " + vPhone )
oRS:MOVENEXT()
Next
ELSE
MyOut := MSGBOX("Record not found","Sorry")
ENDIF
Return Nil
Proc myclose
win1.Release ( )
Return Nil
Proc myclear
win1.list1.DeleteAllItems ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Search'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name'",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",15,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textName  )",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",23,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",29,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Search'",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action search()",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",37,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Clear'",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myclear()",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",43,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Close'",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myclose()",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",49,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Search Results'",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",54,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'EGYPT.JPG'",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image2 ) , Image : 'PAPEL8I.JPG'",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",67,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",69,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","Date",73,74)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",75,76)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",77,78)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",79,80)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",81,83)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure search",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.textName.Value",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",86,87)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=Data.mdb'",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",89,90)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel where name like '' + cName + '%''",91,93)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To mymax Step 1)",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","vname = ADODB RecordSet (oRS) Get Field ('name') Value",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","vaddress = ADODB RecordSet (oRS) Get Field ('address') Value",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","vphone = ADODB RecordSet (oRS) Get Field ('phone') Value",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( vName + ' - ' + vAddress + ' - ' + vPhone )",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Record not found' Title 'Sorry' Type: Message Box",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myclose",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myclear",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",113,113)
Return
*-------------------------------------------------------------------*

*---------------------------------------------------------------------------*
* Time : 16:57:11    Date : 05/05/2012
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
WIDTH 627 ;
HEIGHT 297 ;
ICON "PWCTICON" ;
TITLE "Search" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 10 ,10 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 65 ;
HEIGHT 24 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 10 ,76 TEXTBOX textName;
HEIGHT 34 ;
WIDTH 370 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 11 ,454 BUTTONEX btn1;
CAPTION "Search";
ON CLICK Search()  ;
WIDTH 121 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 55 ,76 LISTBOX list1;
WIDTH 502 ;
HEIGHT 186 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {0,0,0} ;
FONTCOLOR {255,255,255}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Search
cName := win1.textName.Value
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=data.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from tel where Name like '" + cName + "%'",oCon,3,3 )
mymax := oRS:RecordCount
win1.list1.DeleteAllItems ( )
IF mymax > 0
FOR x = 1 TO mymax STEP 1
vname := oRS:fields:item("Name"):value
vaddress := oRS:fields:item("Address"):value
vphone := oRS:fields:item("Phone"):value
win1.list1.AddItem ( vName + " - " + vAddress + "- " + vPhone )
oRS:MOVENEXT()
Next
ELSE
MyOut := MSGBOX("Record Not Found","Sorry")
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Search'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textName  )",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",19,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Search'",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Search()",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",27,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",31,35)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",38,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Search",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.textName.Value",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=data.mdb'",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel where Name like '' + cName + '%''",48,50)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To mymax Step 1)",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","vname = ADODB RecordSet (oRS) Get Field ('Name') Value",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","vaddress = ADODB RecordSet (oRS) Get Field ('Address') Value",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","vphone = ADODB RecordSet (oRS) Get Field ('Phone') Value",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( vName + ' - ' + vAddress + '- ' + vPhone )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Record Not Found' Title 'Sorry' Type: Message Box",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",64,64)
Return
*-------------------------------------------------------------------*

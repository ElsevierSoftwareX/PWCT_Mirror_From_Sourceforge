*---------------------------------------------------------------------------*
* Time : 12:04:25    Date : 03/28/2012
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
WIDTH 458 ;
HEIGHT 367 ;
ICON "PWCTICON" ;
TITLE "Search  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

win1.Center ( )
@ 10 ,33 LABEL lbl1 ;
VALUE "Name " ;
WIDTH 70 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 10 ,104 TEXTBOX textname;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 10 ,315 BUTTONEX btn1;
CAPTION "Search";
ON CLICK btnSearch()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 54 ,14 LISTBOX list1;
WIDTH 419 ;
HEIGHT 251 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {64,0,128} ;
FONTCOLOR {255,255,255}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure btnSearch()
cName := win1.textname.Value
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=data.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from tel where name like '" + cname + "%'",oCon,3,3 )
nmax := oRS:RecordCount
win1.list1.DeleteAllItems ( )
IF nmax > 0
FOR x = 1 TO nmax STEP 1
cname := oRS:fields:item(alltrim("name")):value
caddress := oRS:fields:item(alltrim("address")):value
cphone := oRS:fields:item(alltrim("phone")):value
win1.list1.AddItem ( cName+"  -  "+caddress+"  -  "+cphone )
oRS:MOVENEXT()
Next
ELSE
MyOut := MSGBOX("Record Not Found","Sorry ")
ENDIF
oRS:Close()
oCon:CLOSE()
return


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Search  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name '",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",17,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textname  )",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",23,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Search'",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action btnSearch",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",32,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",36,40)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",43,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure btnSearch ( Event : CLICK )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.textname.Value",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=data.mdb'",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",51,52)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel where name like '' + cname + '%''",53,55)
SS_ESASTEP("Circuits\Main\Main\Main","nmax := ADODB RecordSet (oRS) , Get Records Count",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nmax > 0 )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nmax Step 1)",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('name') Value",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('address') Value",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (oRS) Get Field ('phone') Value",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( cName+'  -  '+caddress+'  -  '+cphone )",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Record Not Found' Title 'Sorry ' Type: Message Box",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",71,71)
Return
*-------------------------------------------------------------------*

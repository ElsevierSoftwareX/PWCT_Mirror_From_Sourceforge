*---------------------------------------------------------------------------*
* Time : 01:06:26    Date : 02/13/2012
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


Resistance R_SEARCH_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SEARCH_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 618 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Telephone Database" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 69 ,19 LABEL lbl1 ;
VALUE "Name " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Book Antiqua" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 69 ,232 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {0,255,64} ;
FONTCOLOR {255,128,64} 

@ 67 ,467 BUTTONEX btn1;
CAPTION "Search";
ON CLICK Search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Book Antiqua" SIZE 14 ;
TOOLTIP ""
@ 119 ,230 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
FONT "Book Antiqua" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Search
win1.list1.DeleteAllItems ( )
name := win1.text1.Value
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=test1.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from tel where name like'"+ name +"%'",oCon,3,3 )
count := oRS:RecordCount
IF count >0
FOR x = 1 TO count STEP 1
vname := oRS:fields:item("name"):value
vaddress := oRS:fields:item("address"):value
vphone := oRS:fields:item("phone"):value
win1.list1.AddItem ( vname+"-"+vaddress+"-"+vphone )
oRS:MOVENEXT()
Next
ELSE
MyOut := MSGBOX("The item not found ","Sorry")
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_SEARCH
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Telephone Database'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name '",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",19,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Search'",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Search",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",27,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",31,35)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",38,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Search",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","name = win1.text1.Value",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=test1.mdb'",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel where name like''+ name +'%''",49,51)
SS_ESASTEP("Circuits\Main\Main\Main","count := ADODB RecordSet (oRS) , Get Records Count",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( count >0 )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To count Step 1)",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","vname = ADODB RecordSet (oRS) Get Field ('name') Value",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","vaddress = ADODB RecordSet (oRS) Get Field ('address') Value",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","vphone = ADODB RecordSet (oRS) Get Field ('phone') Value",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( vname+'-'+vaddress+'-'+vphone )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'The item not found ' Title 'Sorry' Type: Message Box",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",64,64)
Return
*-------------------------------------------------------------------*

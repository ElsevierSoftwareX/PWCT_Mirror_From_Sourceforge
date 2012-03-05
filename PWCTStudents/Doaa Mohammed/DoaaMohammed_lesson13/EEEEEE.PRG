*---------------------------------------------------------------------------*
* Time : 04:12:41    Date : 03/05/2012
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


Resistance R_EEEEEE_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_EEEEEE_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 492 ;
HEIGHT 326 ;
ICON "PWCTICON" ;
TITLE " search " ;
MAIN ;
BACKCOLOR {255,128,255} 

@ 30 ,3 LABEL lbl1 ;
VALUE " Name " ;
WIDTH 110 ;
HEIGHT 38 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {0,128,128} ;
FONTCOLOR {255,255,0}
@ 30 ,124 TEXTBOX textname;
HEIGHT 36 ;
WIDTH 219 ;
FONT "arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 27 ,350 BUTTONEX btn1;
CAPTION " Search ";
ON CLICK search()  ;
WIDTH 122 HEIGHT 36 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 69 ,124 LISTBOX list1;
WIDTH 214 ;
HEIGHT 199 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc search
cName := win1.textname.Value
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=data.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from tel where name like '" + cName + "%'",oCon,3,3 )
mymax := oRS:RecordCount
win1.list1.DeleteAllItems ( )
IF mymax > 0
FOR x = 1 TO mymax STEP 1
vname := oRS:fields:item(alltrim(" name ")):value
vaddress := oRS:fields:item(alltrim(" address ")):value
vphone := oRS:fields:item(alltrim(" phone ")):value
win1.list1.AddItem ( vName + "-" + vAddress + "-" + vPhone )
oRS:MOVENEXT()
Next
ELSE
MyOut := MSGBOX(" Recod Not Found "," Sorry ")
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_EEEEEE
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : ' search '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : ' Name '",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textname  )",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",19,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : ' Search '",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action search",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",28,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",32,36)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",39,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure search",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.textname.Value",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=data.mdb'",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel where name like '' + cName + '%''",49,51)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To mymax Step 1)",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","vname = ADODB RecordSet (oRS) Get Field (' name ') Value",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","vaddress = ADODB RecordSet (oRS) Get Field (' address ') Value",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","vphone = ADODB RecordSet (oRS) Get Field (' phone ') Value",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( vName + '-' + vAddress + '-' + vPhone )",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message ' Recod Not Found ' Title ' Sorry ' Type: Message Box",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",65,65)
Return
*-------------------------------------------------------------------*

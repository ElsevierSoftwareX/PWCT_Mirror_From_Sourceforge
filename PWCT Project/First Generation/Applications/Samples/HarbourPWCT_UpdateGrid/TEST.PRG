*---------------------------------------------------------------------------*
* Time : 01:21:16    Date : 02/06/2014
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2014.01.31
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
*---------------------------------------------------------------------------*
#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
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


Resistance R_TEST_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST_19art1() code
aIDs := {}
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON INIT ShowRecords()  ;
ON RELEASE CloseDB()  ;
ICON "PWCTICON" ;
TITLE "Update Data using Grid (DB : Access 2007)" ;
MAIN ;
BACKCOLOR {236,233,216} 
@ 12 ,13 GRID Grid1;
ON LOSTFOCUS myupdate()  ;
WIDTH 459 ;
HEIGHT 291 ;
HEADERS {"name","address","phone"};
WIDTHS {100,100,100} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
@ 317 ,370 BUTTONEX btn1;
CAPTION "Close ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK CloseApp()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW
ACTIVATE WINDOW win1
EndIF
procedure ShowRecords()
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=data.accdb;Persist Security Info=False;' )
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from tel",oCon,3,3 )
nMax := oRS:RecordCount
IF nMax > 0
oRS:MOVEFIRST()
FOR x = 1 TO nMax STEP 1
c1 := oRS:fields:item(alltrim("name")):value
c2 := oRS:fields:item(alltrim("address")):value
c3 := oRS:fields:item(alltrim("phone")):value
win1.Grid1.AddItem ( {c1,c2,c3} )
nID := oRS:fields:item(alltrim("ID")):value
AADD( aIDs , nID)
oRS:MOVENEXT()
Next
ENDIF
oRS:Close()
return
Proc myupdate
nIndex := win1.Grid1.Value
IF nIndex >0
cValue := aIDs[nIndex]
cValue = STR ( cValue )
cValue = ALLTRIM ( cValue )
c1 := win1.Grid1.cell(nIndex,1)
c2 := win1.Grid1.cell(nIndex,2)
c3 := win1.Grid1.cell(nIndex,3)
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from tel where id =" +cValue,oCon,3,3 )
oRS:fields:item(alltrim("name")):value := c1
oRS:fields:item(alltrim("address")):value := c2
oRS:fields:item(alltrim("phone")):value := c3
oRS:UPDATE()
oRS:Close()
ENDIF
Return Nil
procedure CloseDB()
oCon:CLOSE()
return
procedure CloseApp()
win1.Release ( )
return

End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aIDs",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Update Data using Grid (DB : Access 2007)'",2,6)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action ShowRecords",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE : Action CloseDB",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",9,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'name','address','phone'}",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON LOSTFOCUS : Action myupdate",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Grid Properties",16,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Close '",24,27)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CloseApp",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",29,32)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",35,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ShowRecords - Event : INIT",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=data",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",43,45)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (oRS) , Get Records Count",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","c1 = ADODB RecordSet (oRS) Get Field ('name') Value",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","c2 = ADODB RecordSet (oRS) Get Field ('address') Value",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","c3 = ADODB RecordSet (oRS) Get Field ('phone') Value",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {c1,c2,c3} )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","nID = ADODB RecordSet (oRS) Get Field ('ID') Value",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Add item nID To Array aIDs",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myupdate",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","nIndex = win1.Grid1.Value",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nIndex >0 )",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","cValue = aIDs[nIndex]",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","cValue = CONVERT cValue TO STRING",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","cValue = All Trim cValue",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","c1 = win1.Grid1.cell(nIndex,1)",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","c2 = win1.Grid1.cell(nIndex,2)",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","c3 = win1.Grid1.cell(nIndex,3)",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel where id =' +cValue",71,73)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('name') Value To (c1)",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('address') Value To (c2)",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('phone') Value To (c3)",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure CloseDB - Event : RELEASE",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure CloseApp ( Event : CLICK )",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release( )",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",86,86)
Return
*-------------------------------------------------------------------*

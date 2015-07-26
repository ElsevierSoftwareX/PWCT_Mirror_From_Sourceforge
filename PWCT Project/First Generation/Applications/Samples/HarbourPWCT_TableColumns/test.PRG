*---------------------------------------------------------------------------*
* Time : 13:58:30    Date : 07/23/2015
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2015.06.20
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


Resistance R_test_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_test_19art1() code
aIDs := {}
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 786 ;
HEIGHT 440 ;
ON INIT ShowRecords()  ;
ON RELEASE CloseDB()  ;
ICON "PWCTICON" ;
TITLE "Table Columns" ;
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
@ 317 ,652 BUTTONEX btn1;
CAPTION "Close ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK CloseApp()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
@ 14 ,484 LABEL lbl1 ;
VALUE "Table Columns " ;
WIDTH 119 ;
HEIGHT 27 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 45 ,486 LISTBOX list1;
WIDTH 266 ;
HEIGHT 257 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
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
FOR x = 0 TO oRS:Fields:count - 1 STEP 1
Win1.List1.Additem ( oRs:Fields:item(x):name )
Next
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

INIT PROCEDURE Init_test
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aIDs",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Table Columns'",2,6)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action ShowRecords",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE : Action CloseDB",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",9,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'name','address','phone'}",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON LOSTFOCUS : Action myupdate",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Grid Properties",16,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Close '",24,27)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CloseApp",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",29,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Table Columns '",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",35,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",41,45)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",48,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ShowRecords - Event : INIT",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=data",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",56,58)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (oRS) , Get Records Count",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","c1 = ADODB RecordSet (oRS) Get Field ('name') Value",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","c2 = ADODB RecordSet (oRS) Get Field ('address') Value",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","c3 = ADODB RecordSet (oRS) Get Field ('phone') Value",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {c1,c2,c3} )",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","nID = ADODB RecordSet (oRS) Get Field ('ID') Value",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Add item nID To Array aIDs",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 0 To oRS:Fields:count - 1 Step 1)",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (oRs:Fields:item(x):name) to Listbox (List1) of Window (Win1)",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myupdate",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","nIndex = win1.Grid1.Value",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nIndex >0 )",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","cValue = aIDs[nIndex]",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","cValue = CONVERT cValue TO STRING",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","cValue = All Trim cValue",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","c1 = win1.Grid1.cell(nIndex,1)",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","c2 = win1.Grid1.cell(nIndex,2)",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","c3 = win1.Grid1.cell(nIndex,3)",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel where id =' +cValue",87,89)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('name') Value To (c1)",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('address') Value To (c2)",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('phone') Value To (c3)",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure CloseDB - Event : RELEASE",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure CloseApp ( Event : CLICK )",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release( )",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",102,102)
Return
*-------------------------------------------------------------------*

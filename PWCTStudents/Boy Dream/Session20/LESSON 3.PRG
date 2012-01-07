*---------------------------------------------------------------------------*
* Time : 15:19:59    Date : 01/01/2012
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


Resistance R_LESSON_3_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON_3_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 491 ;
HEIGHT 310 ;
ICON "PWCTICON" ;
TITLE "Using ADO from Programming Without Coding Technology (PWCT) - Lesson 3" ;
MAIN ;
BACKCOLOR {239,239,239} 

@ 30 ,381 BUTTONEX btn1;
CAPTION "Search";
ON CLICK Search()  ;
WIDTH 96 HEIGHT 33 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 63 ,3 LISTBOX list1;
WIDTH 474 ;
HEIGHT 207 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {64,0,64} ;
FONTCOLOR {255,255,255}
@ 36 ,52 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 50 ;
HEIGHT 22 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {239,239,239} ;
FONTCOLOR {0,0,0}
@ 30 ,102 TEXTBOX text1;
HEIGHT 33 ;
WIDTH 276 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {0,0,0} ;
FONTCOLOR {255,255,255} 

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Search
name := win1.text1.Value
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=DB\Phone.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from Phone where Name like'"+ name +"%'",oCon,3,3 )
Count := oRS:RecordCount
IF Count>0
win1.list1.DeleteAllItems ( )
FOR x =1 TO Count STEP 1
vName := oRS:fields:item("Name"):value
vAddress := oRS:fields:item("Address"):value
vPhone := oRS:fields:item("Phone"):value
win1.list1.AddItem ( vName +" - "+vAddress+" - "+vPhone )
oRS:MOVENEXT()
Next
ELSE
win1.list1.DeleteAllItems ( )
win1.list1.AddItem ( "Record Not Found" )
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_LESSON_3
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Using ADO from Programming Without Coding Technology (PWCT) - Lesson 3'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Search'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Search",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",18,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name'",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",25,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",31,36)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",39,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Search",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","name = win1.text1.Value",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=DB\Phone.mdb'",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from Phone where Name like''+ name +'%''",49,51)
SS_ESASTEP("Circuits\Main\Main\Main","Count := ADODB RecordSet (oRS) , Get Records Count",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( Count>0 )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x =1 To Count Step 1)",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","vName = ADODB RecordSet (oRS) Get Field ('Name') Value",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","vAddress = ADODB RecordSet (oRS) Get Field ('Address') Value",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","vPhone = ADODB RecordSet (oRS) Get Field ('Phone') Value",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( vName +' - '+vAddress+' - '+vPhone )",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( 'Record Not Found' )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",66,66)
Return
*-------------------------------------------------------------------*

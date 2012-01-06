*---------------------------------------------------------------------------*
* Time : 16:02:25    Date : 01/02/2012
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


Resistance R_20_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_20_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 744 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "ÇáÏÑÓ ÇáÚÔÑæä" ;
MAIN ;
BACKCOLOR {0,128,192} 

@ 12 ,16 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 102 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {0,128,192} ;
FONTCOLOR {0,0,0}
@ 9 ,148 TEXTBOX textname;
HEIGHT 36 ;
WIDTH 380 ;
BACKCOLOR {255,255,0} ;
FONTCOLOR {0,0,0} 

@ 64 ,148 LISTBOX list1;
WIDTH 383 ;
HEIGHT 193 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 8 ,557 BUTTONEX btn1;
CAPTION "Search";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 287 ,297 BUTTONEX btn2;
CAPTION "Close";
FONTCOLOR {255,0,0};
BACKCOLOR {236,233,216};
ON CLICK closeapp()  ;
WIDTH 107 HEIGHT 42 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
DEFINE STATUSBAR 

STATUSITEM "Designed by Ahmed Attya"

DATE

CLOCK

END STATUSBAR

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc closeapp
win1.Release ( )
Return Nil
Proc search
cname := win1.textname.Value
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=data.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from tel where name like '" + cname + "%'",oCon,3,3 )
mymax := oRS:RecordCount
win1.list1.DeleteAllItems ( )
IF mymax > 0
FOR x = 1 TO mymax STEP 1
vname := oRS:fields:item("name"):value
vadderss := oRS:fields:item("adderss"):value
vphone := oRS:fields:item("phone"):value
win1.list1.AddItem ( vname + "-" + vadderss + "-" + vphone + "-" )
oRS:MOVENEXT()
Next
ELSE
MyOut := MSGBOX("Record Not Found","Sorry")
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_20
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'ÇáÏÑÓ ÇáÚÔÑæä'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textname  )",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",19,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",25,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Search'",30,33)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action search()",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",35,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Close'",38,41)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closeapp()",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",43,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Designed by Ahmed Attya' )",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Date",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",54,55)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",56,57)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",58,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closeapp",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure search",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","cname = win1.textname.Value",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",66,67)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=data.mdb'",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",69,70)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel where name like '' + cname + '%''",71,73)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To mymax Step 1)",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","vname = ADODB RecordSet (oRS) Get Field ('name') Value",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","vadderss = ADODB RecordSet (oRS) Get Field ('adderss') Value",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","vphone = ADODB RecordSet (oRS) Get Field ('phone') Value",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( vname + '-' + vadderss + '-' + vphone + '-' )",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Record Not Found' Title 'Sorry' Type: Message Box",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",87,87)
Return
*-------------------------------------------------------------------*

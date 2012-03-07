*---------------------------------------------------------------------------*
* Time : 06:17:46    Date : 03/06/2012
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
WIDTH 553 ;
HEIGHT 396 ;
ICON "PWCTICON" ;
TITLE "Search  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,0,0} 

@ 51 ,74 LABEL lbl1 ;
VALUE "Name : " ;
WIDTH 60 ;
HEIGHT 37 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 50 ,135 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 50 ,339 BUTTONEX btn1;
CAPTION "Search ";
ON CLICK SearchRecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 309 ,407 BUTTONEX btn2;
CAPTION "Close ";
ON CLICK Close()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 90 ,33 LISTBOX list1;
WIDTH 475 ;
HEIGHT 206 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 10 ,122 LABEL lbl2 ;
VALUE "Search Name in my phone book " ;
WIDTH 291 ;
HEIGHT 30 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {128,255,255}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure Close()
win1.Release ( )
return
procedure SearchRecord()
win1.list1.DeleteAllItems ( )
cname := win1.text1.Value
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=phonebook.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from tel where name like '"+cname+"%'",oCon,3,3 )
mymax := oRS:RecordCount
IF mymax>0
FOR x = 1 TO mymax STEP 1
vname := oRS:fields:item(alltrim("name")):value
vaddress := oRS:fields:item(alltrim("address")):value
vphone := oRS:fields:item(alltrim("phone")):value
win1.list1.AddItem ( vname+" - "+vaddress+" - "+vphone )
oRS:MOVENEXT()
Next
ELSE
MyOut := MSGBOX("Record not found "," Error ")
ENDIF
return


End Of Resistance

INIT PROCEDURE Init_SEARCH
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Search  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name : '",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",24,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Search '",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action SearchRecord",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",33,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Close '",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Close",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",39,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",43,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Search Name in my phone book '",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",50,57)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",58,59)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",60,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Close ( Event : CLICK )",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure SearchRecord ( Event : CLICK )",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","cname = win1.text1.Value",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",69,70)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=phonebook.mdb'",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",72,73)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel where name like ''+cname+'%''",74,76)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To mymax Step 1)",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","vname = ADODB RecordSet (oRS) Get Field ('name') Value",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","vaddress = ADODB RecordSet (oRS) Get Field ('address') Value",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","vphone = ADODB RecordSet (oRS) Get Field ('phone') Value",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( vname+' - '+vaddress+' - '+vphone )",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Record not found ' Title ' Error ' Type: Message Box",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",89,89)
Return
*-------------------------------------------------------------------*

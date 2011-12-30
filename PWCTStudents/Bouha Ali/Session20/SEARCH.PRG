*---------------------------------------------------------------------------*
* Time : 19:35:39    Date : 12/29/2011
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
WIDTH 641 ;
HEIGHT 309 ;
ICON "PWCTICON" ;
TITLE "Search" ;
MAIN ;
BACKCOLOR {255,255,255} 

@ 13 ,29 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 72 ;
HEIGHT 35 ;
AUTOSIZE ;
FONT "Comic Sans MS" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,0,255}
@ 11 ,114 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 400 ;
BACKCOLOR {0,255,64} ;
FONTCOLOR {0,0,0} 

@ 9 ,522 BUTTONEX btn1;
CAPTION "Search";
FONTCOLOR {255,255,0};
BACKCOLOR {0,128,255};
ON CLICK search()  ;
WIDTH 102 HEIGHT 35 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 46 ,113 LISTBOX list1;
WIDTH 402 ;
HEIGHT 211 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {0,0,0} ;
FONTCOLOR {255,255,255}
@ 47 ,4 BUTTONEX btnclose;
PICTURE "close.BMP";
VERTICAL ;
UPPERTEXT ;
ON CLICK myclose()  ;
WIDTH 104 HEIGHT 207 ;
FONT "Arial" SIZE 72 ;
TOOLTIP ""
@ 46 ,525 IMAGE image1;
PICTURE "search.jpg";
STRETCH ;
WIDTH 96 HEIGHT 216
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc search
sName := win1.text1.Value
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=data.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from tel where name like '" + sName + "%'",oCon,3,3 )
mymax := oRS:RecordCount
win1.list1.DeleteAllItems ( )
IF mymax >0
FOR x = 1 TO mymax STEP 1
wname := oRS:fields:item("Name"):value
waddress := oRS:fields:item("Address"):value
wphone := oRS:fields:item("Phone"):value
win1.list1.AddItem ( wname + " - " + waddress + " - " + wphone )
oRS:MOVENEXT()
Next
ELSE
MyOut := MSGBOX("No record found","Retourn")
ENDIF
Return Nil
Proc myclose
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_SEARCH
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Search'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",21,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Search'",26,29)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action search()",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",31,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",36,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnclose ) , Caption : 'X'",41,44)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myclose()",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",46,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'search.jpg'",49,50)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",51,52)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",53,54)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",55,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure search",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","sName = win1.text1.Value",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",60,61)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=data.mdb'",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel where name like '' + sName + '%''",65,67)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax >0 )",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To mymax Step 1)",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","wname = ADODB RecordSet (oRS) Get Field ('Name') Value",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","waddress = ADODB RecordSet (oRS) Get Field ('Address') Value",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","wphone = ADODB RecordSet (oRS) Get Field ('Phone') Value",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( wname + ' - ' + waddress + ' - ' + wphone )",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No record found' Title 'Retourn' Type: Message Box",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myclose",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",84,84)
Return
*-------------------------------------------------------------------*

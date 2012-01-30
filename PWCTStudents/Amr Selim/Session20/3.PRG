*---------------------------------------------------------------------------*
* Time : 00:16:02    Date : 01/30/2012
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
 * (Noun) *
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


Resistance R_3_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_3_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 432 ;
HEIGHT 330 ;
ICON "PWCTICON" ;
TITLE "search" ;
MAIN ;
BACKCOLOR {0,255,255} 

DEFINE MAIN MENU
POPUP "File"
MENUITEM "Close System" Action closesystem()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Ready"

KEYBOARD

CLOCK

END STATUSBAR

@ 18 ,10 LABEL lbl1 ;
VALUE "name " ;
WIDTH 53 ;
HEIGHT 31 ;
AUTOSIZE ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 16 ,66 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 19 ,283 BUTTONEX btn1;
CAPTION "google ";
PICTURE "FileName.BMP";
VERTICAL ;
UPPERTEXT ;
ON CLICK search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 59 ,66 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc closesystem
win1.Release ( )
Return Nil
procedure search()
cname := win1.text1.Value
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=db1.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from db1 where PERSON like '" +CNAME + "%'",oCon,3,3 )
MYMAX := oRS:RecordCount
win1.list1.DeleteAllItems ( )
IF MYMAX > 0
FOR x = 1 TO MYMAX STEP 1
vBOOK := oRS:fields:item("BOOK"):value
VPERSON := oRS:fields:item("PERSON"):value
vDATE := oRS:fields:item("DATE"):value
win1.list1.AddItem ( VBOOK+ " - " + VPERSON   +" - "   + VDATE )
oRS:MOVENEXT()
Next
ELSE
MyOut := MSGBOX("NO THING "," ")
ENDIF
return


End Of Resistance

INIT PROCEDURE Init_3
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'search'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close System' )",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",16,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'name '",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",28,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",36,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'google '",41,45)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action search",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",47,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",51,55)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",56,57)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",58,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure search ( Event : CLICK )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","cname = win1.text1.Value",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",66,67)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=db1.mdb'",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",69,70)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from db1 where PERSON like '' +CNAME + '%''",71,73)
SS_ESASTEP("Circuits\Main\Main\Main","MYMAX := ADODB RecordSet (oRS) , Get Records Count",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( MYMAX > 0 )",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To MYMAX Step 1)",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","vBOOK = ADODB RecordSet (oRS) Get Field ('BOOK') Value",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","VPERSON = ADODB RecordSet (oRS) Get Field ('PERSON') Value",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","vDATE = ADODB RecordSet (oRS) Get Field ('DATE') Value",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( VBOOK+ ' - ' + VPERSON   +' - '   + VDATE )",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'NO THING ' Title ' ' Type: Message Box",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",87,87)
Return
*-------------------------------------------------------------------*

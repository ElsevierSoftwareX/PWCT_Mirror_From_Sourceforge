*---------------------------------------------------------------------------*
* Time : 19:32:24    Date : 01/20/2012
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


Resistance R_A_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_A_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 567 ;
HEIGHT 333 ;
ICON "PWCTICON" ;
TITLE "System" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

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

@ 10 ,10 LABEL lbl1 ;
VALUE "book " ;
WIDTH 44 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 41 ,8 LABEL lbl2 ;
VALUE "personal" ;
WIDTH 56 ;
HEIGHT 27 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 73 ,13 LABEL lbl3 ;
VALUE "date" ;
WIDTH 44 ;
HEIGHT 34 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ -3 ,72 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 34 ,72 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 69 ,70 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 146 ,153 BUTTONEX btn1;
CAPTION "save record ";
ON CLICK saverecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 146 ,46 BUTTONEX btn2;
CAPTION "close ";
ON CLICK closesystem()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 221 ,282 BUTTONEX btn3;
CAPTION "show table ";
ON CLICK showgrid()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 1 ,312 GRID Grid1;
WIDTH 200 ;
HEIGHT 200 ;
HEADERS {"book","person","date"};
WIDTHS {100,100,100} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc closesystem
win1.Release ( )
Return Nil
procedure saverecord()
DO db
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from db1",oCon,3,3 )
oRS:ADDNEW()
t1 := win1.text1.Value
t2 := win1.text2.Value
t3 := win1.text3.Value
oRS:fields:item("book"):value := t1
oRS:fields:item("person"):value := t2
oRS:fields:item("date"):value := t3
oRS:UPDATE()
oRS:Close()
oCon:CLOSE()
MyOut := MSGBOX("done "," ")
return
procedure showgrid()
DO db
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from db1",oCon,3,3 )
nOutput := oRS:RecordCount
oRS:MOVEFIRST()
win1.Grid1.DeleteAllItems ( )
FOR x = 1 TO nOutput STEP 1
vbook := oRS:fields:item("book"):value
vperson := oRS:fields:item("person"):value
vdate := oRS:fields:item("date"):value
win1.Grid1.AddItem ( {vbook,vperson,vdate} )
oRS:MOVENEXT()
Next
return
Proc db
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=db1.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
Public db
Return Nil


End Of Resistance

INIT PROCEDURE Init_A
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'System'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close System' )",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'book '",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",30,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'personal'",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",37,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'date'",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",44,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",50,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",56,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",62,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'save record '",67,68)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action saverecord",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",70,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'close '",73,74)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closesystem",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",76,78)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'show table '",79,80)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action showgrid",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",82,84)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'book','person','date'}",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",86,93)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",94,95)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",96,98)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure saverecord ( Event : CLICK )",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure db",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from db1'",104,106)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Add New Record",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","t1 = win1.text1.Value",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","t2 = win1.text2.Value",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","t3 = win1.text3.Value",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('book') Value To (t1)",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('person') Value To (t2)",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('date') Value To (t3)",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'done ' Title ' ' Type: Message Box",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showgrid ( Event : CLICK )",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure db",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from db1'",121,123)
SS_ESASTEP("Circuits\Main\Main\Main","nOutput := ADODB RecordSet (oRS) , Get Records Count",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nOutput Step 1)",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","vbook = ADODB RecordSet (oRS) Get Field ('book') Value",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","vperson = ADODB RecordSet (oRS) Get Field ('person') Value",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","vdate = ADODB RecordSet (oRS) Get Field ('date') Value",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {vbook,vperson,vdate} )",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure db",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",136,137)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Ext",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",139,140)
SS_ESASTEP("Circuits\Main\Main\Main","Public db",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",142,142)
Return
*-------------------------------------------------------------------*

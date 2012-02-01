*---------------------------------------------------------------------------*
* Time : 19:51:06    Date : 01/31/2012
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


Resistance R_18_AP_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_18_AP_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 691 ;
HEIGHT 372 ;
ICON "PWCTICON" ;
TITLE "18 " ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 8 ,92 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 10 ,411 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 45 ,93 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 47 ,319 BUTTONEX btn1;
CAPTION "save";
ON CLICK sav()  ;
WIDTH 147 HEIGHT 29 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 13 ,13 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 50 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 16 ,332 LABEL lbl2 ;
VALUE "Address" ;
WIDTH 50 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 50 ,14 LABEL lbl3 ;
VALUE "Phone" ;
WIDTH 50 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 94 ,36 GRID Grid1;
WIDTH 370 ;
HEIGHT 215 ;
HEADERS {"Name","Address","Phone"};
WIDTHS {100,100,100} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
@ 47 ,487 BUTTONEX btn2;
CAPTION "Show from Database";
ON CLICK addtogrid()  ;
WIDTH 151 HEIGHT 28 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc sav()
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=data.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from tel",oCon,3,3 )
oRS:ADDNEW()
cname := win1.text1.Value
caddress := win1.text2.Value
cphone := win1.text3.Value
oRS:fields:item("name"):value := cname
oRS:fields:item("address"):value := caddress
oRS:fields:item("phone"):value := cphone
oRS:UPDATE()
oRS:Close()
oCon:CLOSE()
MyOut := MSGBOX("Done!","!!")
Return Nil
Proc addtogrid
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=data.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from tel",oCon,3,3 )
datacount := oRS:RecordCount
oRS:MOVEFIRST()
win1.grid1.DeleteAllItems ( )
FOR x = 1 TO datacount STEP 1
cname := oRS:fields:item("name"):value
caddress := oRS:fields:item("address"):value
cphone := oRS:fields:item("phone"):value
win1.grid1.AddItem ( {cname,caddress,cphone} )
oRS:MOVENEXT()
Next
Return Nil


End Of Resistance

INIT PROCEDURE Init_18_AP
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '18 '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",14,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",26,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'save'",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action sav()",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",34,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name'",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",39,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Address'",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",46,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Phone'",51,52)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",53,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'Name','Address','Phone'}",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",59,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Show from Database'",67,68)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action addtogrid()",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",70,72)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",73,74)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",75,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure sav()",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",79,80)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=data.mdb'",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",82,83)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",84,86)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Add New Record",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","cname = win1.text1.Value",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = win1.text2.Value",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = win1.text3.Value",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('name') Value To (cname)",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('address') Value To (caddress)",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('phone') Value To (cphone)",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Done!' Title '!!' Type: Message Box",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure addtogrid",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",100,101)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Ext",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",103,104)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",105,107)
SS_ESASTEP("Circuits\Main\Main\Main","datacount := ADODB RecordSet (oRS) , Get Records Count",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","win1.grid1.DeleteAllItems ( )",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To datacount Step 1)",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('name') Value",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('address') Value",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (oRS) Get Field ('phone') Value",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","win1.grid1.AddItem ( {cname,caddress,cphone} )",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",118,118)
Return
*-------------------------------------------------------------------*

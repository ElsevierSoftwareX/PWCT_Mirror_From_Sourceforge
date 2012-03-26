*---------------------------------------------------------------------------*
* Time : 19:16:33    Date : 03/26/2012
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


Resistance R_TEST_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 778 ;
HEIGHT 386 ;
ON INIT connectdb()  ;
ON RELEASE closeConnect()  ;
ICON "PWCTICON" ;
TITLE "Phone Book  " ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 55 ,10 LABEL lbl1 ;
VALUE "Name " ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 112 ,7 LABEL lbl2 ;
VALUE "Address" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 169 ,11 LABEL lbl3 ;
VALUE "Phone" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 55 ,98 TEXTBOX textname;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 112 ,98 TEXTBOX textaddress;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 169 ,98 TEXTBOX textphone;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 52 ,366 GRID Grid1;
WIDTH 380 ;
HEIGHT 200 ;
HEADERS {"Name","Address","Phone"};
WIDTHS {100,100,100} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
@ 223 ,143 BUTTONEX btn1;
CAPTION "Add Record ";
ON CLICK btnAdd()  ;
WIDTH 140 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 264 ,597 BUTTONEX btn2;
CAPTION "Show Record ";
ON CLICK showRec()  ;
WIDTH 150 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 308 ,14 BUTTONEX btn3;
CAPTION "Close ";
ON CLICK btnClose()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure connectdb()
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=data.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from tel",oCon,3,3 )
return
procedure closeConnect()
oRS:Close()
oCon:CLOSE()
return
procedure btnAdd()
oRS:ADDNEW()
cname := win1.textname.Value
caddress := win1.textaddress.Value
cphone := win1.textphone.Value
oRS:fields:item(alltrim("name")):value := cname
oRS:fields:item(alltrim("address")):value := caddress
oRS:fields:item(alltrim("phone")):value := cphone
oRS:UPDATE()
MyOut := MSGBOX("The Record Saved in DataBase ","Ok")
DO showRec
return
procedure showRec()
nmax := oRS:RecordCount
IF nmax>=1
win1.Grid1.DeleteAllItems ( )
oRS:MOVEFIRST()
FOR x = 1 TO nmax STEP 1
cname := oRS:fields:item(alltrim("name")):value
caddress := oRS:fields:item(alltrim("address")):value
cphone := oRS:fields:item(alltrim("phone")):value
win1.Grid1.AddItem ( {cname,caddress,cphone} )
oRS:MOVENEXT()
Next
ELSE
MyOut := MSGBOX("No Record In DataBase "," Sorry")
ENDIF
return
procedure btnClose()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Phone Book  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action connectdb",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE : Action closeConnect",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",8,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name '",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",17,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Address'",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",24,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Phone'",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",31,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textname  )",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",37,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textaddress  )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",44,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textphone  )",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",51,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'Name','Address','Phone'}",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",58,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Add Record '",66,67)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action btnAdd",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",69,71)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Show Record '",72,73)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action showRec",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",75,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Close '",78,79)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action btnClose",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",81,83)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",84,85)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",86,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connectdb - Event : INIT",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",90,91)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=data.mdb'",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",93,94)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tel'",95,97)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closeConnect - Event : RELEASE",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure btnAdd ( Event : CLICK )",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Add New Record",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","cname = win1.textname.Value",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = win1.textaddress.Value",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = win1.textphone.Value",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('name') Value To (cname)",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('address') Value To (caddress)",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('phone') Value To (cphone)",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'The Record Saved in DataBase ' Title 'Ok' Type: Message Box",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showRec",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showRec ( Event : CLICK )",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","nmax := ADODB RecordSet (oRS) , Get Records Count",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nmax>=1 )",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nmax Step 1)",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('name') Value",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('address') Value",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (oRS) Get Field ('phone') Value",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {cname,caddress,cphone} )",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No Record In DataBase ' Title ' Sorry' Type: Message Box",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure btnClose ( Event : CLICK )",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",133,133)
Return
*-------------------------------------------------------------------*

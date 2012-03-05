*---------------------------------------------------------------------------*
* Time : 16:54:04    Date : 03/03/2012
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


Resistance R_FORM_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_FORM_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 887 ;
HEIGHT 362 ;
ICON "PWCTICON" ;
TITLE "Saving Data  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {16,17,24} 

@ 17 ,4 LABEL lbl1 ;
VALUE "Enter data of the instructor " ;
WIDTH 396 ;
HEIGHT 28 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {180,226,224}
@ 77 ,10 LABEL lbl2 ;
VALUE "Name: " ;
WIDTH 55 ;
HEIGHT 26 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {180,226,224}
@ 13 ,343 IMAGE image1;
PICTURE "line.jpg";
STRETCH ;
WIDTH 2 HEIGHT 288
@ 131 ,9 LABEL lbl3 ;
VALUE "Address: " ;
WIDTH 83 ;
HEIGHT 26 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {180,226,224}
@ 184 ,12 LABEL lbl4 ;
VALUE "Phone: " ;
WIDTH 65 ;
HEIGHT 23 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {180,226,224}
@ 81 ,107 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 134 ,106 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 189 ,108 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 270 ,716 BUTTONEX btn1;
CAPTION "Close ";
ON CLICK Close()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 237 ,161 BUTTONEX btn2;
CAPTION "Save Data ";
ON CLICK AddRecord()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 266 ,396 BUTTONEX btn3;
CAPTION "Show Records ";
ON CLICK ShowRecords()  ;
WIDTH 145 HEIGHT 28 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 15 ,384 GRID Grid1;
WIDTH 427 ;
HEIGHT 244 ;
HEADERS {"name","address","phone"};
WIDTHS {100,100,100} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure Close()
win1.Release ( )
return
procedure AddRecord()
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=elearningdb.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from instructor",oCon,3,3 )
oRS:ADDNEW()
cname := win1.text1.Value
caddress := win1.text2.Value
cphone := win1.text3.Value
oRS:fields:item(alltrim("name")):value := cname
oRS:fields:item(alltrim("address")):value := caddress
oRS:fields:item(alltrim("phone")):value := cphone
oRS:UPDATE()
oRS:Close()
oCon:CLOSE()
MyOut := MSGBOX("Operation Done"," OK")
return
procedure ShowRecords()
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=elearningdb.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from instructor",oCon,3,3 )
mymax := oRS:RecordCount
oRS:MOVEFIRST()
win1.grid1.DeleteAllItems ( )
FOR x = 1 TO mymax STEP 1
cname := oRS:fields:item(alltrim("name")):value
caddress := oRS:fields:item(alltrim("address")):value
cphone := oRS:fields:item(alltrim("phone")):value
win1.grid1.AddItem ( {cname,caddress,cphone} )
oRS:MOVENEXT()
Next
oRS:Close()
oCon:CLOSE()
return


End Of Resistance

INIT PROCEDURE Init_FORM
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Saving Data  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Enter data of the instructor '",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Name: '",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",25,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'line.jpg'",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Address: '",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",38,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Phone: '",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",47,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",55,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",62,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",69,74)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Close '",75,76)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Close",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",78,80)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Save Data '",81,82)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action AddRecord",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",84,86)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Show Records '",87,88)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ShowRecords",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",90,92)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'name','address','phone'}",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",94,101)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",102,103)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",104,106)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Close ( Event : CLICK )",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure AddRecord ( Event : CLICK )",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",111,112)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=elearningdb.mdb'",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",114,115)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from instructor'",116,118)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Add New Record",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","cname = win1.text1.Value",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = win1.text2.Value",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = win1.text3.Value",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('name') Value To (cname)",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('address') Value To (caddress)",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('phone') Value To (cphone)",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Operation Done' Title ' OK' Type: Message Box",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ShowRecords ( Event : CLICK )",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",132,133)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Ext",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",135,136)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from instructor'",137,139)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","win1.grid1.DeleteAllItems ( )",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To mymax Step 1)",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('name') Value",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","caddress = ADODB RecordSet (oRS) Get Field ('address') Value",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (oRS) Get Field ('phone') Value",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","win1.grid1.AddItem ( {cname,caddress,cphone} )",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",152,152)
Return
*-------------------------------------------------------------------*

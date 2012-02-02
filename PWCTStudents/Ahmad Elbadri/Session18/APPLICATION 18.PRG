*---------------------------------------------------------------------------*
* Time : 00:45:25    Date : 02/03/2012
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


Resistance R_APPLICATION_18_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_APPLICATION_18_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 789 ;
HEIGHT 299 ;
ICON "PWCTICON" ;
TITLE "Phone Note" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 43 ,158 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 90 ,158 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 141 ,158 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 43 ,11 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 55 ;
HEIGHT 25 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 90 ,11 LABEL lbl2 ;
VALUE "Address" ;
WIDTH 74 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 141 ,11 LABEL lbl3 ;
VALUE "Phone" ;
WIDTH 61 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
_DefineHotKey ( "win1" , MOD_ALT , VK_C , {||close()} )
@ 29 ,404 GRID Grid1;
WIDTH 355 ;
HEIGHT 191 ;
HEADERS {"ID","Name","Address","Phone"};
WIDTHS {50,100,100,100} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
_DefineHotKey ( "win1" , MOD_ALT , VK_U , {||update()} )
_DefineHotKey ( "win1" , MOD_ALT , VK_A , {||add1()} )
DEFINE MAIN MENU of win1
POPUP "Help"
MENUITEM "Help" Action help()
MENUITEM "Exit" Action close()
END POPUP
END MENU
_DefineHotKey ( "win1" , 0 , VK_F1 , {||help()} )
END WINDOW

SET AUTOADJUST ON
ACTIVATE WINDOW win1
EndIF

Proc close
win1.Release ( )
Return Nil
Proc add1
DO connection
oRS:ADDNEW()
name := win1.text1.Value
address := win1.text2.Value
phone := win1.text3.Value
oRS:fields:item("name"):value := name
oRS:fields:item("address"):value := address
oRS:fields:item("phone"):value := phone
oRS:UPDATE()
oRS:Close()
oCon:CLOSE()
MyOut := MSGExclamation("Done !","Add Data")
Return Nil
Proc update
DO connection
recnum := oRS:RecordCount
oRS:MOVEFIRST()
win1.Grid1.DeleteAllItems ( )
FOR x = 1 TO recnum STEP 1
name1 := oRS:fields:item("name"):value
address1 := oRS:fields:item("address"):value
phone1 := oRS:fields:item("phone"):value
id := oRS:fields:item("ID"):value
id = STR ( id )
phone1 = STR ( phone1 )
win1.Grid1.AddItem ( {id,name1,address1,phone1} )
oRS:MOVENEXT()
Next
oRS:Close()
oCon:CLOSE()
Return Nil
Proc connection
Public oCon,oRS
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=db.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from tab",oCon,3,3 )
Return Nil
Proc help
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 465 ;
HEIGHT 232 ;
ICON "PWCTICON" ;
TITLE "Help" ;
MODAL ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 33 ,4 LABEL lbl4 ;
VALUE "To Add Data : " ;
WIDTH 120 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 75 ,4 LABEL lbl5 ;
VALUE "To Update Data :" ;
WIDTH 147 ;
HEIGHT 33 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 32 ,210 LABEL lbl6 ;
VALUE "ALT + A" ;
WIDTH 75 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,255}
@ 76 ,210 LABEL lbl7 ;
VALUE "ALT + U" ;
WIDTH 76 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,128,0}
@ 124 ,4 LABEL lbl8 ;
VALUE "To Exit : " ;
WIDTH 74 ;
HEIGHT 25 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 119 ,210 LABEL lbl9 ;
VALUE "ALT + C" ;
WIDTH 75 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,0}
@ 163 ,302 LABEL lbl10 ;
VALUE "Powerd By : Ahmad Elbadri " ;
WIDTH 151 ;
HEIGHT 21 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 12 ,331 IMAGE image1;
PICTURE "help.jpg";
STRETCH ;
WIDTH 102 HEIGHT 129
END WINDOW

ACTIVATE WINDOW win2
EndIF

Return Nil


End Of Resistance

INIT PROCEDURE Init_APPLICATION_18
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Phone Note'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",12,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",18,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",24,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name'",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",32,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Address'",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",39,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Phone'",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",46,50)
SS_ESASTEP("Circuits\Main\Main\Main","On Key VK_C Mode MOD_ALT Call Procedure/Function close()",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'ID','Name','Address','Phone'}",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",53,60)
SS_ESASTEP("Circuits\Main\Main\Main","On Key VK_U Mode MOD_ALT Call Procedure/Function update()",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","On Key VK_A Mode MOD_ALT Call Procedure/Function add1()",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU : WINDOW (win1)",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Help'",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Help' )",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit' )",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","On Key VK_F1 Mode 0 Call Procedure/Function help()",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",70,71)
SS_ESASTEP("Circuits\Main\Main\Main","Set AutoAdjust ON",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",73,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure add1",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure connection",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Add New Record",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","name = win1.text1.Value",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","address = win1.text2.Value",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","phone = win1.text3.Value",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('name') Value To (name)",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('address') Value To (address)",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('phone') Value To (phone)",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Done !' Title 'Add Data' Type: Message Exclamation",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure update",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure connection",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","recnum := ADODB RecordSet (oRS) , Get Records Count",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To recnum Step 1)",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","name1 = ADODB RecordSet (oRS) Get Field ('name') Value",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","address1 = ADODB RecordSet (oRS) Get Field ('address') Value",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","phone1 = ADODB RecordSet (oRS) Get Field ('phone') Value",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","id = ADODB RecordSet (oRS) Get Field ('ID') Value",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","id = CONVERT id TO STRING",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","phone1 = CONVERT phone1 TO STRING",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {id,name1,address1,phone1} )",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connection",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","Public oCon,oRS",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",113,114)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=db.mdb'",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",116,117)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tab'",118,120)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure help",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Help'",123,127)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",128,133)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'To Add Data : '",134,135)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",136,140)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'To Update Data :'",141,142)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",143,147)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 ) , Caption : 'ALT + A'",148,149)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",150,154)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7 ) , Caption : 'ALT + U'",155,156)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",157,161)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl8 ) , Caption : 'To Exit : '",162,163)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",164,168)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl9 ) , Caption : 'ALT + C'",169,170)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",171,175)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl10 ) , Caption : 'Powerd By : Ahmad Elbadri '",176,177)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",178,182)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'help.jpg'",183,184)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",185,186)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",187,188)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",189,191)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",192,192)
Return
*-------------------------------------------------------------------*

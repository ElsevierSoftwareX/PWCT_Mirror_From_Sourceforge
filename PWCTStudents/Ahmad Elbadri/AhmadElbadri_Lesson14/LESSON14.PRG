*---------------------------------------------------------------------------*
* Time : 23:59:43    Date : 02/15/2012
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


Resistance R_LESSON14_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON14_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 516 ;
HEIGHT 458 ;
ON RELEASE disconnect()  ;
ICON "PWCTICON" ;
TITLE "Lesson14" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 79 ,73 LABEL lbl1 ;
VALUE "Name :" ;
WIDTH 70 ;
HEIGHT 34 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 123 ,73 LABEL lbl2 ;
VALUE "Phone :" ;
WIDTH 77 ;
HEIGHT 31 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 167 ,65 LABEL lbl3 ;
VALUE "Address :" ;
WIDTH 90 ;
HEIGHT 34 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 7 ,185 LABEL lbl4 ;
VALUE "Phone Book" ;
WIDTH 135 ;
HEIGHT 33 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,0}
@ 79 ,241 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 123 ,241 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 167 ,241 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 370 ,82 BUTTONEX btn1;
CAPTION "Add";
FONTCOLOR {0,128,192};
ON CLICK myadd()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 370 ,342 BUTTONEX btn2;
CAPTION "Delete";
FONTCOLOR {128,0,0};
ON CLICK mydel()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 284 ,145 BUTTONEX btn3;
CAPTION "Show all in Grid";
FONTCOLOR {0,128,0};
ON CLICK showgrid()  ;
WIDTH 218 HEIGHT 42 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 223 ,286 BUTTONEX btn4;
CAPTION ">>";
FONTCOLOR {0,0,255};
ON CLICK nxt()  ;
WIDTH 103 HEIGHT 29 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 222 ,134 BUTTONEX btn5;
CAPTION "<<";
FONTCOLOR {0,0,255};
ON CLICK pre()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
END WINDOW

SET AUTOADJUST ON
DO connect
DO showrecs
ACTIVATE WINDOW win1
EndIF

Proc connect
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=db.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from tab",oCon,3,3 )
Return Nil
Proc disconnect
oRS:Close()
oCon:CLOSE()
Return Nil
Proc showrecs
myrec := oRS:RecordCount
IF myrec > 0
name := oRS:fields:item(alltrim("name")):value
address := oRS:fields:item(alltrim("address")):value
phone := oRS:fields:item(alltrim("phone")):value
win1.text1.Value := name
win1.text2.Value := phone
win1.text3.Value := address
ELSE
win1.text1.Value := ""
win1.text2.Value := ""
win1.text3.Value := ""
MyOut := MSGSTOP("Database Is Empty","Error")
ENDIF
Return Nil
Proc pre
oRS:MOVEPREVIOUS()
mEOF := oRS:BOF()
IF mEOF
oRS:MOVENEXT()
MyOut := MSGSTOP("No More Data","Begin")
ELSE
DO showrecs
ENDIF
Return Nil
Proc myadd
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 404 ;
HEIGHT 303 ;
ICON "PWCTICON" ;
TITLE "Add" ;
CHILD ;
BACKCOLOR {236,233,216} 

@ 49 ,27 LABEL lbl5 ;
VALUE "Name:" ;
WIDTH 60 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,160}
@ 93 ,27 LABEL lbl6 ;
VALUE "Phone:" ;
WIDTH 64 ;
HEIGHT 31 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,160}
@ 137 ,27 LABEL lbl7 ;
VALUE "Address:" ;
WIDTH 80 ;
HEIGHT 32 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,160}
@ 49 ,165 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 93 ,161 TEXTBOX text5;
HEIGHT 30 ;
WIDTH 204 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 137 ,165 TEXTBOX text6;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 212 ,152 BUTTONEX btn6;
CAPTION "Add";
FONTCOLOR {0,0,255};
ON CLICK add1()  ;
WIDTH 110 HEIGHT 38 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

Return Nil
Proc mydel
MyOut := MSGYESNO("Are you Sure ?","Delete")
IF myout = true
oRS:DELETE()
oRS:UPDATE()
recs := oRS:RecordCount
IF recs > 0
bBOF := oRS:BOF()
bEOF := oRS:EOF()
IF bEOF
DO pre
ENDIF
IF bBOF
DO nxt
ENDIF
ELSE
MyOut := MSGBOX("Your Database Is Empty","Error")
ENDIF
ENDIF
Return Nil
Proc showgrid
if !iswindowdefined( win3 )
DEFINE WINDOW win3 ;
AT 10 ,10 ;
WIDTH 473 ;
HEIGHT 381 ;
ICON "PWCTICON" ;
TITLE "Grid Show" ;
CHILD ;
BACKCOLOR {236,233,216} 

@ 10 ,10 GRID Grid1;
WIDTH 442 ;
HEIGHT 319 ;
HEADERS {"Name","Phone","Address"};
WIDTHS {100,100,100} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
END WINDOW

DO showdataingrid
ACTIVATE WINDOW win3
EndIF

Return Nil
Proc nxt
oRS:MOVENEXT()
mEOF := oRS:EOF()
IF mEOF
oRS:MOVEPREVIOUS()
MyOut := MSGSTOP("No More Data","End")
ELSE
DO showrecs
ENDIF
Return Nil
Proc add1
name := win2.text4.Value
phone := win2.text5.Value
address := win2.text6.Value
oRS:ADDNEW()
oRS:fields:item(alltrim("name")):value := name
oRS:fields:item(alltrim("phone")):value := phone
oRS:fields:item(alltrim("address")):value := address
oRS:UPDATE()
win2.Release ( )
Return Nil
Proc showdataingrid
myrecs := oRS:RecordCount
oRS:MOVEFIRST()
FOR x = 1 TO myrecs STEP 1
name := oRS:fields:item(alltrim("name")):value
phone := oRS:fields:item(alltrim("phone")):value
address := oRS:fields:item(alltrim("address")):value
phone = STR ( phone )
win3.Grid1.AddItem ( {name,phone,address} )
oRS:MOVENEXT()
Next
Return Nil


End Of Resistance

INIT PROCEDURE Init_LESSON14
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Lesson14'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE : Action disconnect",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name :'",12,13)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",14,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Phone :'",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",21,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Address :'",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",28,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Phone Book'",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",35,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",41,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",48,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",56,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Add'",62,64)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myadd",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",66,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Delete'",69,71)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mydel",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",73,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Show all in Grid'",76,78)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action showgrid",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",80,82)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : '>>'",83,85)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action nxt",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",87,89)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : '<<'",90,92)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pre",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",94,96)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",97,98)
SS_ESASTEP("Circuits\Main\Main\Main","Set AutoAdjust ON",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure connect",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecs",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",102,104)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",106,107)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=db.mdb'",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",109,110)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tab'",111,113)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure disconnect",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showrecs",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","myrec := ADODB RecordSet (oRS) , Get Records Count",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myrec > 0 )",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","name = ADODB RecordSet (oRS) Get Field ('name') Value",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","address = ADODB RecordSet (oRS) Get Field ('address') Value",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","phone = ADODB RecordSet (oRS) Get Field ('phone') Value",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := name",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := phone",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := address",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := ''",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := ''",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := ''",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Database Is Empty' Title 'Error' Type: Message Stop",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pre",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","mEOF = ADODB RecordSet oRS , Check BOF",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mEOF )",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No More Data' Title 'Begin' Type: Message Stop",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecs",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myadd",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Add'",146,150)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",151,155)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'Name:'",156,157)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",158,162)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 ) , Caption : 'Phone:'",163,164)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",165,169)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7 ) , Caption : 'Address:'",170,171)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",172,176)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",178,183)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text5  )",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",185,191)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text6  )",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",193,198)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn6 ) , Caption : 'Add'",199,201)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action add1",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",203,205)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",206,207)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",208,210)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mydel",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Are you Sure ?' Title 'Delete' Type: Message Yes/No",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout = true )",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","recs := ADODB RecordSet (oRS) , Get Records Count",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( recs > 0 )",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","bBOF = ADODB RecordSet oRS , Check BOF",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","bEOF = ADODB RecordSet oRS , Check EOF",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( bEOF )",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure pre",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( bBOF )",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure nxt",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Your Database Is Empty' Title 'Error' Type: Message Box",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showgrid",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win3 ) , Title : 'Grid Show'",233,237)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",238,242)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'Name','Phone','Address'}",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",244,251)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",252,253)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showdataingrid",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",255,257)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure nxt",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","mEOF = ADODB RecordSet oRS , Check EOF",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mEOF )",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No More Data' Title 'End' Type: Message Stop",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecs",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure add1",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","name = win2.text4.Value",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","phone = win2.text5.Value",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","address = win2.text6.Value",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Add New Record",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('name') Value To (name)",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('phone') Value To (phone)",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('address') Value To (address)",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showdataingrid",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","myrecs := ADODB RecordSet (oRS) , Get Records Count",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To myrecs Step 1)",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","name = ADODB RecordSet (oRS) Get Field ('name') Value",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","phone = ADODB RecordSet (oRS) Get Field ('phone') Value",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","address = ADODB RecordSet (oRS) Get Field ('address') Value",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","phone = CONVERT phone TO STRING",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","win3.Grid1.AddItem ( {name,phone,address} )",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",291,291)
Return
*-------------------------------------------------------------------*

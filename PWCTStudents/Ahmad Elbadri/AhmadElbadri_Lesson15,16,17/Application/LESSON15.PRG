*---------------------------------------------------------------------------*
* Time : 13:48:43    Date : 02/28/2012
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


Resistance R_LESSON15_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON15_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 541 ;
HEIGHT 487 ;
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
READONLY ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 123 ,241 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
READONLY ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 167 ,241 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
READONLY ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 362 ,1 BUTTONEX btn1;
CAPTION "Add";
FONTCOLOR {0,128,192};
ON CLICK myadd()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 362 ,129 BUTTONEX btn2;
CAPTION "Delete";
FONTCOLOR {128,0,0};
ON CLICK mydel()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 276 ,64 BUTTONEX btn3;
CAPTION "Show all in Grid";
FONTCOLOR {0,128,0};
ON CLICK showgrid()  ;
WIDTH 218 HEIGHT 42 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 215 ,205 BUTTONEX btn4;
CAPTION ">>";
FONTCOLOR {0,0,255};
ON CLICK nxt()  ;
WIDTH 103 HEIGHT 29 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 214 ,53 BUTTONEX btn5;
CAPTION "<<";
FONTCOLOR {0,0,255};
ON CLICK pre()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 362 ,250 BUTTONEX btn7;
CAPTION "Edit";
FONTCOLOR {0,0,255};
ON CLICK edit1()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 249 ,324 BUTTONEX btn8;
CAPTION "Save";
FONTCOLOR {0,128,64};
ON CLICK save1()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 317 ,322 BUTTONEX btn9;
CAPTION "Cancel";
FONTCOLOR {255,0,0};
ON CLICK can1()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 393 ,354 BUTTONEX btn10;
CAPTION "Show Report";
FONTCOLOR {255,128,64};
ON CLICK repwin()  ;
WIDTH 172 HEIGHT 49 ;
FONT "Arial" SIZE 18 ;
BOLD ;
TOOLTIP ""
END WINDOW

SET AUTOADJUST ON
DO connect
DO showrecs
DO mode WITH 1
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
DO checkdatabase
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
ON RELEASE checkdatabase()  ;
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
IF MyOut
oRS:DELETE()
oRS:UPDATE()
recs := oRS:RecordCount
IF recs > 0
oRS:MOVENEXT()
bEOF := oRS:EOF()
IF bEOF
oRS:MOVEPREVIOUS()
ENDIF
DO showrecs
ELSE
MyOut := MSGSTOP("No More Data","Error")
win1.text1.Value := ""
win1.text2.Value := ""
win1.text3.Value := ""
DO mode WITH 2
ENDIF
ELSE
Return 0
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
mycount1 := oRS:RecordCount
IF mycount1 = 1
MyOut := MSGSTOP("No More Data","End")
Return 0
ENDIF
DO checkdatabase
oRS:MOVENEXT()
mEOF := oRS:EOF()
IF mEOF
mycount := oRS:RecordCount
IF mycount = 0
MyOut := MSGBOX("No Data In DataBase","Error")
win1.text1.Value := ""
win1.text2.Value := ""
win1.text3.Value := ""
Return 0
ENDIF
oRS:MOVEPREVIOUS()
DO showrecs
MyOut := MSGSTOP("No More Data","End")
ELSE
DO showrecs
ENDIF
Return Nil
Proc add1
name := win2.text4.Value
phone := win2.text5.Value
address := win2.text6.Value
IF name == ""
MyOut := MSGSTOP("Please Enter a Name","Name Not Found")
Return 0
ELSEIF phone = 0
MyOut := MSGSTOP("Please Enter a Phone Number","Phone Number Not Found")
Return 0
ELSEIF address == ""
MyOut := MSGSTOP("Please Enter an Address","Address Not Found")
Return 0
ENDIF
oRS:ADDNEW()
oRS:fields:item(alltrim("name")):value := name
oRS:fields:item(alltrim("phone")):value := phone
oRS:fields:item(alltrim("address")):value := address
oRS:UPDATE()
win2.Release ( )
win1.text1.Value := name
win1.text2.Value := phone
win1.text3.Value := address
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
Proc checkdatabase
Public recscount
recscount := oRS:RecordCount
IF recscount = 0
win1.btn2.Enabled := false
win1.btn3.Enabled := false
win1.btn4.Enabled := false
win1.btn5.Enabled := false
win1.btn7.Enabled := false
win1.btn8.Enabled := false
win1.btn9.Enabled := false
win1.btn10.Enabled := false
win1.text3.Value := ""
win1.text2.Value := ""
win1.text1.Value := ""
MyOut := MSGSTOP("No Data","Error")
Return 0
ELSE
win1.btn2.Enabled := true
win1.btn3.Enabled := true
win1.btn4.Enabled := true
win1.btn5.Enabled := true
win1.btn7.Enabled := true
win1.btn10.Enabled := True
ENDIF
Return Nil
Proc mode( p1 )
DO checkdatabase
IF recscount = 0
Return 0
ELSE
IF p1 = 1
win1.btn1.Enabled := true
win1.btn2.Enabled := true
win1.btn3.Enabled := true
win1.btn4.Enabled := true
win1.btn5.Enabled := true
win1.btn7.Enabled := true
win1.btn10.Enabled := true
win1.btn8.Enabled := false
win1.btn9.Enabled := false
ELSE
win1.btn1.Enabled := false
win1.btn2.Enabled := false
win1.btn3.Enabled := false
win1.btn4.Enabled := false
win1.btn5.Enabled := false
win1.btn7.Enabled := false
win1.btn10.Enabled := false
win1.btn8.Enabled := true
win1.btn9.Enabled := true
ENDIF
ENDIF
Return Nil
Proc edit1
DO mode WITH 2
win1.text1.ReadOnly := False
win1.text2.ReadOnly := False
win1.text3.ReadOnly := False
Return Nil
Proc save1
MyOut := MSGYESNO("Are You Sure ?","Saving")
IF myout
name := win1.text1.Value
phone := win1.text2.Value
address := win1.text3.Value
oRS:fields:item(alltrim("name")):value := name
oRS:fields:item(alltrim("phone")):value := phone
oRS:fields:item(alltrim("address")):value := address
oRS:UPDATE()
DO mode WITH 1
DO showrecs
ENDIF
Return Nil
Proc can1
DO mode WITH 2
DO mode WITH 1
DO showrecs
Return Nil
Proc repwin
if !iswindowdefined( win4 )
DEFINE WINDOW win4 ;
AT 10 ,10 ;
WIDTH 553 ;
HEIGHT 461 ;
ICON "PWCTICON" ;
TITLE "Report" ;
CHILD ;
BACKCOLOR {236,233,216} 

Public oActivex
oActivex := TActiveX():New( "Win4", "CrystalReports10.ActivexReportViewer.1" , 19 , 20 , 516 , 395)
oActivex:Load()
END WINDOW

DO showrep
ACTIVATE WINDOW win4
EndIF

Return Nil
Proc showrep
StartUpFolder := GetStartUpFolder()
Public T_myobj,T_myreport
T_myobj := TOLEAUTO():NEW( "CrystalDesignRuntime.Application" )
T_myreport := TOLEAUTO():NEW( "CrystalDesignRuntime.Report" )
T_myreport := T_myobj:openreport ( "Report1.rpt" )
oDB = T_myreport:Database()
ocDBT = oDB:Tables()
oDBT = ocDBT:Item(1)
oDBT:Location = startupfolder+"\db.mdb"
oActivex:OOLE:reportsource := T_myreport
oActivex:OOLE:viewreport ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_LESSON15
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
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",41,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",49,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",58,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Add'",65,67)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myadd",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",69,71)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Delete'",72,74)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mydel",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",76,78)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Show all in Grid'",79,81)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action showgrid",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",83,85)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : '>>'",86,88)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action nxt",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",90,92)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : '<<'",93,95)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pre",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",97,99)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn7 ) , Caption : 'Edit'",100,102)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action edit1",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",104,106)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn8 ) , Caption : 'Save'",107,109)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action save1",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",111,113)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn9 ) , Caption : 'Cancel'",114,116)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action can1",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",118,120)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn10 ) , Caption : 'Show Report'",121,123)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action repwin",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",125,128)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",129,130)
SS_ESASTEP("Circuits\Main\Main\Main","Set AutoAdjust ON",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure connect",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecs",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",135,137)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure connect",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",139,140)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=db.mdb'",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",142,143)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from tab'",144,146)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure disconnect",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showrecs",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","myrec := ADODB RecordSet (oRS) , Get Records Count",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myrec > 0 )",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","name = ADODB RecordSet (oRS) Get Field ('name') Value",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","address = ADODB RecordSet (oRS) Get Field ('address') Value",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","phone = ADODB RecordSet (oRS) Get Field ('phone') Value",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := name",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := phone",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := address",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := ''",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := ''",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := ''",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Database Is Empty' Title 'Error' Type: Message Stop",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pre",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure checkdatabase",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","mEOF = ADODB RecordSet oRS , Check BOF",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mEOF )",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No More Data' Title 'Begin' Type: Message Stop",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecs",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myadd",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Add'",180,184)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE : Action checkdatabase",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",186,190)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'Name:'",191,192)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",193,197)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 ) , Caption : 'Phone:'",198,199)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",200,204)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7 ) , Caption : 'Address:'",205,206)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",207,211)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",213,218)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text5  )",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",220,226)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text6  )",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",228,233)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn6 ) , Caption : 'Add'",234,236)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action add1",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",238,240)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",241,242)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",243,245)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mydel",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Are you Sure ?' Title 'Delete' Type: Message Yes/No",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( MyOut )",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","recs := ADODB RecordSet (oRS) , Get Records Count",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( recs > 0 )",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","bEOF = ADODB RecordSet oRS , Check EOF",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( bEOF )",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecs",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No More Data' Title 'Error' Type: Message Stop",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := ''",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := ''",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := ''",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showgrid",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win3 ) , Title : 'Grid Show'",272,276)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",277,281)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'Name','Phone','Address'}",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",283,290)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",291,292)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showdataingrid",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",294,296)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",297,297)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure nxt",298,298)
SS_ESASTEP("Circuits\Main\Main\Main","mycount1 := ADODB RecordSet (oRS) , Get Records Count",299,299)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount1 = 1 )",300,300)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No More Data' Title 'End' Type: Message Stop",301,301)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",302,302)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",303,303)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure checkdatabase",304,304)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",305,305)
SS_ESASTEP("Circuits\Main\Main\Main","mEOF = ADODB RecordSet oRS , Check EOF",306,306)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mEOF )",307,307)
SS_ESASTEP("Circuits\Main\Main\Main","mycount := ADODB RecordSet (oRS) , Get Records Count",308,308)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount = 0 )",309,309)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No Data In DataBase' Title 'Error' Type: Message Box",310,310)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := ''",311,311)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := ''",312,312)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := ''",313,313)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",314,314)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",315,315)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Previous Record",316,316)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecs",317,317)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No More Data' Title 'End' Type: Message Stop",318,318)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",319,319)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecs",320,320)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",321,321)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",322,322)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure add1",323,323)
SS_ESASTEP("Circuits\Main\Main\Main","name = win2.text4.Value",324,324)
SS_ESASTEP("Circuits\Main\Main\Main","phone = win2.text5.Value",325,325)
SS_ESASTEP("Circuits\Main\Main\Main","address = win2.text6.Value",326,326)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( name == '' )",327,327)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please Enter a Name' Title 'Name Not Found' Type: Message Stop",328,328)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",329,329)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( phone = 0 )",330,330)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please Enter a Phone Number' Title 'Phone Number Not Found' Type: Message Stop",331,331)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",332,332)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( address == '' )",333,333)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please Enter an Address' Title 'Address Not Found' Type: Message Stop",334,334)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",335,335)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",336,336)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Add New Record",337,337)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('name') Value To (name)",338,338)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('phone') Value To (phone)",339,339)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('address') Value To (address)",340,340)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",341,341)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",342,342)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := name",343,343)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := phone",344,344)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := address",345,345)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",346,346)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showdataingrid",347,347)
SS_ESASTEP("Circuits\Main\Main\Main","myrecs := ADODB RecordSet (oRS) , Get Records Count",348,348)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",349,349)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To myrecs Step 1)",350,350)
SS_ESASTEP("Circuits\Main\Main\Main","name = ADODB RecordSet (oRS) Get Field ('name') Value",351,351)
SS_ESASTEP("Circuits\Main\Main\Main","phone = ADODB RecordSet (oRS) Get Field ('phone') Value",352,352)
SS_ESASTEP("Circuits\Main\Main\Main","address = ADODB RecordSet (oRS) Get Field ('address') Value",353,353)
SS_ESASTEP("Circuits\Main\Main\Main","phone = CONVERT phone TO STRING",354,354)
SS_ESASTEP("Circuits\Main\Main\Main","win3.Grid1.AddItem ( {name,phone,address} )",355,355)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",356,356)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",357,357)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",358,358)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure checkdatabase",359,359)
SS_ESASTEP("Circuits\Main\Main\Main","Public recscount",360,360)
SS_ESASTEP("Circuits\Main\Main\Main","recscount := ADODB RecordSet (oRS) , Get Records Count",361,361)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( recscount = 0 )",362,362)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Enabled := false",363,363)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn3.Enabled := false",364,364)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn4.Enabled := false",365,365)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Enabled := false",366,366)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn7.Enabled := false",367,367)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn8.Enabled := false",368,368)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn9.Enabled := false",369,369)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn10.Enabled := false",370,370)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := ''",371,371)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := ''",372,372)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := ''",373,373)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No Data' Title 'Error' Type: Message Stop",374,374)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",375,375)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",376,376)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Enabled := true",377,377)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn3.Enabled := true",378,378)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn4.Enabled := true",379,379)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Enabled := true",380,380)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn7.Enabled := true",381,381)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn10.Enabled := True",382,382)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",383,383)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",384,384)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mode( p1 )",385,385)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure checkdatabase",386,386)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( recscount = 0 )",387,387)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",388,388)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",389,389)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( p1 = 1 )",390,390)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Enabled := true",391,391)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Enabled := true",392,392)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn3.Enabled := true",393,393)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn4.Enabled := true",394,394)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Enabled := true",395,395)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn7.Enabled := true",396,396)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn10.Enabled := true",397,397)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn8.Enabled := false",398,398)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn9.Enabled := false",399,399)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",400,400)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Enabled := false",401,401)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Enabled := false",402,402)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn3.Enabled := false",403,403)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn4.Enabled := false",404,404)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Enabled := false",405,405)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn7.Enabled := false",406,406)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn10.Enabled := false",407,407)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn8.Enabled := true",408,408)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn9.Enabled := true",409,409)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",410,410)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",411,411)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",412,412)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure edit1",413,413)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",414,414)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.ReadOnly := False",415,415)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.ReadOnly := False",416,416)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.ReadOnly := False",417,417)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",418,418)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure save1",419,419)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Are You Sure ?' Title 'Saving' Type: Message Yes/No",420,420)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout )",421,421)
SS_ESASTEP("Circuits\Main\Main\Main","name = win1.text1.Value",422,422)
SS_ESASTEP("Circuits\Main\Main\Main","phone = win1.text2.Value",423,423)
SS_ESASTEP("Circuits\Main\Main\Main","address = win1.text3.Value",424,424)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('name') Value To (name)",425,425)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('phone') Value To (phone)",426,426)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('address') Value To (address)",427,427)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",428,428)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",429,429)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecs",430,430)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",431,431)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",432,432)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure can1",433,433)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 2",434,434)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mode Parameters 1",435,435)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrecs",436,436)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",437,437)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure repwin",438,438)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win4 ) , Title : 'Report'",439,443)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",444,448)
SS_ESASTEP("Circuits\Main\Main\Main","Active Control ( oActivex )",449,451)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",452,453)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure showrep",454,454)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",455,457)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",458,458)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showrep",459,459)
SS_ESASTEP("Circuits\Main\Main\Main","StartUpFolder := Get StartUp Folder",460,460)
SS_ESASTEP("Circuits\Main\Main\Main","Crystal Reports 10, Object oActivex, View Report 'Report1.rpt' , Database Location = startupfolder+'\db.mdb'",461,470)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",471,471)
Return
*-------------------------------------------------------------------*

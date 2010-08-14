#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 13:52:43    Date : 12/09/2008
*---------------------------------------------------------------------------*
* Programming without coding technology 1.0 (Final)   
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
New Server Server1 Type Slave Server Eigen Value 000
 Details :
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance RABUBV1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance RABUBV1() code
DO opendb
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 383 ;
HEIGHT 335 ;
ICON "PWCTICON" ;
TITLE "Phone" ;
MAIN ;
NOSIZE ;
NOSYSMENU ;
BACKCOLOR {255,255,255} 

@ 19 ,10 LABEL lbl1 ;
VALUE "Name :" ;
WIDTH 50 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 18 ,65 TEXTBOX text1;
ON CHANGE mychange()  ;
HEIGHT 30 ;
WIDTH 300 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
TRANS_TEMP = "tel"
@ 65 ,64 ;
BROWSE browse1 ;
WIDTH 300 ;
HEIGHT 180 ;
HEADERS {"name","address","phone"} ;
WIDTHS {100,100,100} ;
WORKAREA &TRANS_TEMP ;
FIELDS {'name','address','phone'} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
Edit InPlace ;
DELETE ;
IMAGE "" 

DEFINE TOOLBAR Toolbar1;
BUTTONSIZE 45 , 15 ;
BOTTOM ;
BORDER ;
BREAK 

BUTTON topbtn;
CAPTION "Top" ;
ADJUST ;
ON CLICK mytop()  ;
TOOLTIP "Goto first record" ;
SEPARATOR ;
AUTOSIZE 

BUTTON prevbtn;
CAPTION "Prev" ;
ADJUST ;
ON CLICK myprev()  ;
TOOLTIP "Goto previous record" ;
SEPARATOR ;
AUTOSIZE 

BUTTON nextbtn;
CAPTION "Next" ;
ADJUST ;
ON CLICK mynext()  ;
TOOLTIP "Goto next record" ;
SEPARATOR ;
AUTOSIZE 

BUTTON bottombtn;
CAPTION "Bottom" ;
ADJUST ;
ON CLICK mybottom()  ;
TOOLTIP "Goto the last record" ;
SEPARATOR ;
AUTOSIZE 

BUTTON addbtn;
CAPTION "Add" ;
ON CLICK myadd()  ;
TOOLTIP "Add new record" 

BUTTON deletebtn;
CAPTION "Delete" ;
ON CLICK mydel()  ;
TOOLTIP "Delete this record" 

BUTTON printbtn;
CAPTION "Print" ;
ON CLICK myprint()  ;
TOOLTIP "Print records" 

BUTTON exitbtn;
CAPTION "Exit" ;
ON CLICK myexit()  ;
TOOLTIP "Close application" 

END TOOLBAR

END WINDOW

ACTIVATE WINDOW win1

Proc opendb
Use tel.dbf
Return Nil
Proc myexit
win1.Release ( )
Return Nil
Proc myadd
SELECT tel
Append Blank
myrec := Recno()
win1.browse1.Value := myrec
win1.browse1.Refresh ( )
win1.browse1.SetFocus ( )
Return Nil
Proc mydel
myrec := win1.browse1.Value
Goto myrec
delete
Pack
myrec := myrec-1
IF myrec < 0
myrec := 1
ENDIF
win1.browse1.Value := myrec
win1.browse1.Refresh ( )
win1.browse1.SetFocus ( )
Return Nil
Proc mytop
Goto Top
myrec := Recno()
win1.browse1.Value := myrec
win1.browse1.Refresh ( )
win1.browse1.SetFocus ( )
Return Nil
Proc myprev
Skip -1
myrec := Recno()
win1.browse1.Value := myrec
win1.browse1.Refresh ( )
win1.browse1.SetFocus ( )
Return Nil
Proc mynext
myrec := Recno()
mycount := Reccount()
IF .not. myrec = mycount .and. .not. mycount = 0
Skip 1
myrec := Recno()
win1.browse1.Value := myrec
win1.browse1.Refresh ( )
win1.browse1.SetFocus ( )
ENDIF
Return Nil
Proc mybottom
Goto Bottom
myrec := Recno()
win1.browse1.Value := myrec
win1.browse1.Refresh ( )
win1.browse1.SetFocus ( )
Return Nil
Proc myprint
#include "winprint.ch"
init printsys
Set Units MM
select by dialog Preview
GET SELECTED PRINTER TO vPrinter
IF vPrinter == ""
MyOut := MSGBOX("Operation Canceled by user","Ok")
Return 0
ENDIF
Start Doc
Goto Top
mycount := Reccount()
pages := 0
FOR x = 1 TO mycount STEP 10
Start Page
define font "pagefont" name "arial" size 9
select font "pagefont"
define brush "pagebrush" style BS_SOLID color RGB(0,255,255)
SELECT BRUSH "pagebrush"
define pen "pagepen" style PS_SOLID width 1 color RGB(0,0,0)
SELECT PEN "pagepen"
pages := pages+1
set textcolor {0,0,0}
CHANGE font "pagefont" name "arial" size 50 width 50 
@ 30,70 say "Phone Database" to print

change brush "pagebrush" style BS_SOLID COLOR {0,0,0}
change pen "pagepen" style PS_SOLID width 1 color {0,0,0}
@50,10,51,200 RECTANGLE
set textcolor {0,0,0}
CHANGE font "pagefont" name "arial" size 40 width 40 
@ 65,20 say "Name" to print

set textcolor {0,0,0}
CHANGE font "pagefont" name "arial" size 40 width 40 
@ 65,90 say "Address" to print

set textcolor {0,0,0}
CHANGE font "pagefont" name "arial" size 40 width 40 
@ 65,170 say "Phone" to print

change brush "pagebrush" style BS_SOLID COLOR {0,0,0}
change pen "pagepen" style PS_SOLID width 1 color {0,0,0}
@75,10,76,200 RECTANGLE
FOR x2 = 1 TO 10 STEP 1
myrec := Recno()
set textcolor {0,0,0}
CHANGE font "pagefont" name "arial" size 25 width 50 
@ 75+(10*x2),20 say Name to print

set textcolor {0,0,0}
CHANGE font "pagefont" name "arial" size 25 width 50 
@ 75+(10*x2),90 say Address to print

set textcolor {0,0,0}
CHANGE font "pagefont" name "arial" size 25 width 50 
@ 75+(10*x2),170 say Phone to print

IF myrec = mycount .or. mycount = 0
Exit
ENDIF
Skip 1
Next
set textcolor {0,0,0}
CHANGE font "pagefont" name "arial" size 25 width 50 
@ 260,90 say "Page :" to print

set textcolor {0,0,0}
CHANGE font "pagefont" name "arial" size 25 width 50 
@ 260,100 say pages to print

End Page
Next
Goto Top
win1.browse1.Value := 1
win1.browse1.Refresh ( )
End Doc
release printsys
Return Nil
Proc mychange
mytext := win1.text1.Value
mytext = ALLTRIM ( mytext )
Locate For upper(name) = upper(mytext)
isfound := found()
IF isfound
myrec := Recno()
win1.browse1.Value := myrec
win1.browse1.Refresh ( )
ELSE
Goto Top
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_DEMO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",47)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure opendb",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",2,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 )",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",15,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",22,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define Browse ( browse1 )",27,38)
SS_ESASTEP("Circuits\Main\Main\Main","Browse Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Browse Properties",39,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Toolbar ( Toolbar1 )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",44,48)
SS_ESASTEP("Circuits\Main\Main\Main","Buttons",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Button ( topbtn )",49,51)
SS_ESASTEP("Circuits\Main\Main\Main","Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",53,56)
SS_ESASTEP("Circuits\Main\Main\Main","Button ( prevbtn )",57,59)
SS_ESASTEP("Circuits\Main\Main\Main","Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",61,64)
SS_ESASTEP("Circuits\Main\Main\Main","Button ( nextbtn )",65,67)
SS_ESASTEP("Circuits\Main\Main\Main","Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",69,72)
SS_ESASTEP("Circuits\Main\Main\Main","Button ( bottombtn )",73,75)
SS_ESASTEP("Circuits\Main\Main\Main","Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",77,80)
SS_ESASTEP("Circuits\Main\Main\Main","Button ( addbtn )",81,82)
SS_ESASTEP("Circuits\Main\Main\Main","Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",84,85)
SS_ESASTEP("Circuits\Main\Main\Main","Button ( deletebtn )",86,87)
SS_ESASTEP("Circuits\Main\Main\Main","Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",89,90)
SS_ESASTEP("Circuits\Main\Main\Main","Button ( printbtn )",91,92)
SS_ESASTEP("Circuits\Main\Main\Main","Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",94,95)
SS_ESASTEP("Circuits\Main\Main\Main","Button ( exitbtn )",96,97)
SS_ESASTEP("Circuits\Main\Main\Main","Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",99,100)
SS_ESASTEP("Circuits\Main\Main\Main","End Toolbar",101,102)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",103,104)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",105,106)
SS_ESASTEP("Circuits\Main\Main\Main","procedures",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure opendb",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Open Table tel.dbf",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myexit",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myadd",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","SELECT AREA tel",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","Add New Record",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = Get Record Number",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Value := myrec",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Refresh ( )",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.SetFocus ( )",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mydel",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = win1.browse1.Value",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","Goto Record Number myrec",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","Delete Record (Mark for deletion)",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","Pack",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = myrec-1",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myrec < 0 )",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = 1",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Value := myrec",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Refresh ( )",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.SetFocus ( )",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mytop",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Goto First Record",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = Get Record Number",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Value := myrec",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Refresh ( )",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.SetFocus ( )",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myprev",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Goto Prev Record",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = Get Record Number",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Value := myrec",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Refresh ( )",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.SetFocus ( )",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mynext",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = Get Record Number",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = Get Records Count",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( .not. myrec = mycount .and. .not. mycount = 0 )",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Goto Next Record",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = Get Record Number",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Value := myrec",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Refresh ( )",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.SetFocus ( )",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mybottom",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Goto Last Record",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = Get Record Number",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Value := myrec",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Refresh ( )",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.SetFocus ( )",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myprint",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Init Print System",167,168)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Set Units (MM)",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","vPrinter = Select Printer by Dialog , Preview",170,171)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( vPrinter == '' )",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Operation Canceled by user' Title 'Ok' Type: Message Box",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","Start Document",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Goto First Record",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = Get Records Count",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","pages = 0",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To mycount Step 10)",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Start Page",181,187)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","pages = pages+1",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Text 'Phone Database' , Y(30), X(70) , Font('arial',50,50) , Color ({0,0,0}) to Print",189,192)
SS_ESASTEP("Circuits\Main\Main\Main","Rectangle (Y 50, X 10, Height 51, Width 200 ) PenWidth (1) Color ({0,0,0}) to Print",193,195)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Text 'Name' , Y(65), X(20) , Font('arial',40,40) , Color ({0,0,0}) to Print",196,199)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Text 'Address' , Y(65), X(90) , Font('arial',40,40) , Color ({0,0,0}) to Print",200,203)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Text 'Phone' , Y(65), X(170) , Font('arial',40,40) , Color ({0,0,0}) to Print",204,207)
SS_ESASTEP("Circuits\Main\Main\Main","Rectangle (Y 75, X 10, Height 76, Width 200 ) PenWidth (1) Color ({0,0,0}) to Print",208,210)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x2 = 1 To 10 Step 1)",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = Get Record Number",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Text Name , Y(75+(10*x2)), X(20) , Font('arial',25,50) , Color ({0,0,0}) to Print",213,216)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Text Address , Y(75+(10*x2)), X(90) , Font('arial',25,50) , Color ({0,0,0}) to Print",217,220)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Text Phone , Y(75+(10*x2)), X(170) , Font('arial',25,50) , Color ({0,0,0}) to Print",221,224)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myrec = mycount .or. mycount = 0 )",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Exit",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","Goto Next Record",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Text 'Page :' , Y(260), X(90) , Font('arial',25,50) , Color ({0,0,0}) to Print",230,233)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Text pages , Y(260), X(100) , Font('arial',25,50) , Color ({0,0,0}) to Print",234,237)
SS_ESASTEP("Circuits\Main\Main\Main","End of Page",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","Goto First Record",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Value := 1",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Refresh ( )",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","End of Document",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","Release Print System",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mychange",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = win1.text1.Value",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = All Trim mytext",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","Locate For upper(name) = upper(mytext)",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","isfound = Check- Record Found (Locate)",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( isfound )",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = Get Record Number",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Value := myrec",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Refresh ( )",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Goto First Record",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",258,258)
Return
*-------------------------------------------------------------------*

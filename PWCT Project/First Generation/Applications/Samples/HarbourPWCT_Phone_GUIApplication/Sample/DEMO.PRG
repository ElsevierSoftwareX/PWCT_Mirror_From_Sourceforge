*---------------------------------------------------------------------------*
* Time : 00:32:56    Date : 10/21/2011
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
Function Main
Public True,False 
True = .T. 
False = .F. 
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


Resistance R_DEMO_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_DEMO_18smart1() code
DO opendb
if !iswindowdefined( win1 )
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
FONT "arial" SIZE 9 ;
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
EndIF

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
SS_ESARES("Circuits\Main\Main\Main",49)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure opendb",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Phone'",2,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name :'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action mychange()",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",23,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define Browse ( browse1 )",29,40)
SS_ESASTEP("Circuits\Main\Main\Main","Browse Properties",41,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Toolbar ( Toolbar1 )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",46,50)
SS_ESASTEP("Circuits\Main\Main\Main","Button ( topbtn )",51,53)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mytop()",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",55,58)
SS_ESASTEP("Circuits\Main\Main\Main","Button ( prevbtn )",59,61)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myprev()",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",63,66)
SS_ESASTEP("Circuits\Main\Main\Main","Button ( nextbtn )",67,69)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mynext()",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",71,74)
SS_ESASTEP("Circuits\Main\Main\Main","Button ( bottombtn )",75,77)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mybottom()",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",79,82)
SS_ESASTEP("Circuits\Main\Main\Main","Button ( addbtn )",83,84)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myadd()",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",86,87)
SS_ESASTEP("Circuits\Main\Main\Main","Button ( deletebtn )",88,89)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mydel()",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",91,92)
SS_ESASTEP("Circuits\Main\Main\Main","Button ( printbtn )",93,94)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myprint()",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",96,97)
SS_ESASTEP("Circuits\Main\Main\Main","Button ( exitbtn )",98,99)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myexit()",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",101,102)
SS_ESASTEP("Circuits\Main\Main\Main","End Toolbar",103,104)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",105,106)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",107,109)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure opendb",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","Open Table tel.dbf",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myexit",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myadd",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","SELECT AREA tel",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","Add New Record",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = Get Record Number",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Value := myrec",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Refresh ( )",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.SetFocus ( )",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mydel",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = win1.browse1.Value",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","Goto Record Number myrec",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","Delete Record (Mark for deletion)",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","Pack",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = myrec-1",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myrec < 0 )",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = 1",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Value := myrec",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Refresh ( )",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.SetFocus ( )",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mytop",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","Goto First Record",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = Get Record Number",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Value := myrec",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Refresh ( )",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.SetFocus ( )",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myprev",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","Goto Prev Record",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = Get Record Number",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Value := myrec",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Refresh ( )",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.SetFocus ( )",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mynext",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = Get Record Number",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = Get Records Count",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( .not. myrec = mycount .and. .not. mycount = 0 )",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","Goto Next Record",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = Get Record Number",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Value := myrec",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Refresh ( )",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.SetFocus ( )",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mybottom",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","Goto Last Record",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = Get Record Number",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Value := myrec",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Refresh ( )",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.SetFocus ( )",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myprint",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","Init Print System",170,171)
SS_ESASTEP("Circuits\Main\Main\Main","Set Units (MM)",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","vPrinter = Select Printer by Dialog , Preview",173,174)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( vPrinter == '' )",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Operation Canceled by user' Title 'Ok' Type: Message Box",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","Start Document",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","Goto First Record",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = Get Records Count",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","pages = 0",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To mycount Step 10)",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","Start Page",184,190)
SS_ESASTEP("Circuits\Main\Main\Main","pages = pages+1",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Text 'Phone Database' , Y(30), X(70) , Font('arial',50,50) , Color ({0,0,0}) to Print",192,195)
SS_ESASTEP("Circuits\Main\Main\Main","Rectangle (Y 50, X 10, Height 51, Width 200 ) PenWidth (1) Color ({0,0,0}) to Print",196,198)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Text 'Name' , Y(65), X(20) , Font('arial',40,40) , Color ({0,0,0}) to Print",199,202)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Text 'Address' , Y(65), X(90) , Font('arial',40,40) , Color ({0,0,0}) to Print",203,206)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Text 'Phone' , Y(65), X(170) , Font('arial',40,40) , Color ({0,0,0}) to Print",207,210)
SS_ESASTEP("Circuits\Main\Main\Main","Rectangle (Y 75, X 10, Height 76, Width 200 ) PenWidth (1) Color ({0,0,0}) to Print",211,213)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x2 = 1 To 10 Step 1)",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = Get Record Number",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Text Name , Y(75+(10*x2)), X(20) , Font('arial',25,50) , Color ({0,0,0}) to Print",216,219)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Text Address , Y(75+(10*x2)), X(90) , Font('arial',25,50) , Color ({0,0,0}) to Print",220,223)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Text Phone , Y(75+(10*x2)), X(170) , Font('arial',25,50) , Color ({0,0,0}) to Print",224,227)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myrec = mycount .or. mycount = 0 )",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","Exit",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","Goto Next Record",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Text 'Page :' , Y(260), X(90) , Font('arial',25,50) , Color ({0,0,0}) to Print",233,236)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Text pages , Y(260), X(100) , Font('arial',25,50) , Color ({0,0,0}) to Print",237,240)
SS_ESASTEP("Circuits\Main\Main\Main","End of Page",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","Goto First Record",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Value := 1",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Refresh ( )",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","End of Document",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","Release Print System",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mychange",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = win1.text1.Value",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","mytext = All Trim mytext",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","Locate For upper(name) = upper(mytext)",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","isfound = Check- Record Found (Locate)",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( isfound )",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = Get Record Number",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Value := myrec",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Refresh ( )",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","Goto First Record",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",261,261)
Return
*-------------------------------------------------------------------*

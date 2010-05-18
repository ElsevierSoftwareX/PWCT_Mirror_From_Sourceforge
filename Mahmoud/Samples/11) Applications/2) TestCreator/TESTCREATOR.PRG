#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 22:57:34    Date : 10/22/2008
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


Resistance RUZSLC1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance RUZSLC1() code
DO opendb
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 800 ;
HEIGHT 533 ;
ON RELEASE closedb()  ;
ON INIT checkbtns()  ;
ICON "PWCTICON" ;
TITLE "Test Creator" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE 

DEFINE MAIN MENU
POPUP "File"
MENUITEM "About" Action aboutapp()
MENUITEM "Exit" Action closeapp()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Ready"

END STATUSBAR

DEFINE TAB Tab1;
AT 6 ,9;
WIDTH 770;
HEIGHT 430;
ON CHANGE tabchange()  ;
FONT "arial" SIZE 9 ;
TOOLTIP ""
PAGE "Questions"
TRANS_TEMP = "test"
@ 34 ,10 ;
BROWSE browse1 ;
WIDTH 752 ;
HEIGHT 338 ;
HEADERS {"Question","First Choice","Second Choice","Third Choice","Forth Choice","True Answer"} ;
WIDTHS {100,100,100,100,100,100} ;
WORKAREA &TRANS_TEMP ;
FIELDS {"test->f_question","test->f_a1","test->f_a2","test->f_a3","test->f_a4","test->f_true"} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
ON LostFocus browsecheck()  ;
Edit InPlace ;
IMAGE "" 

@ 384 ,150 BUTTON btnadd;
CAPTION "Add Question";
ON CLICK addrec()  ;
WIDTH 140 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP "Add New Question to the Test"
@ 384 ,323 BUTTON btnDelete;
CAPTION "Delete Question";
ON CLICK deleterec()  ;
WIDTH 140 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP "Delete this question from the Test"
@ 384 ,496 BUTTON btnDeleteAll;
CAPTION "Delete All Questions";
ON CLICK deleteall()  ;
WIDTH 140 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP "Delete all questions from the test"
END PAGE
PAGE "Test"
@ 47 ,10 LABEL lbl2 ;
VALUE "Question" ;
WIDTH 60 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 210 ,10 LABEL lbl3 ;
VALUE "Answer" ;
WIDTH 60 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 41 ,91 EDITBOX edit1;
WIDTH 660 ;
HEIGHT 160;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 210 ,91 LISTBOX list1;
WIDTH 660 ;
HEIGHT 170 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 387 ,651 BUTTON btnok;
CAPTION "Ok";
ON CLICK btnokclick()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 390 ,10 LABEL lbl4 ;
VALUE "Score : " ;
WIDTH 60 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 387 ,91 TEXTBOX textscore;
HEIGHT 30 ;
WIDTH 60 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 387 ,165 LABEL lbl5 ;
VALUE "Of" ;
WIDTH 30 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 387 ,195 TEXTBOX textof;
HEIGHT 30 ;
WIDTH 60 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END PAGE
END TAB
END WINDOW

win1.Center ( )
win1.textscore.Enabled := .f.
win1.textof.Enabled := .f.
win1.edit1.Enabled := .f.
ACTIVATE WINDOW win1

Proc opendb
Use test.dbf
Return Nil
Proc closedb
close
Return Nil
Proc addrec
SELECT AREA test
Append Blank
REPLACE f_true WITH 1
mycount := Reccount()
win1.browse1.Value := mycount
win1.browse1.Refresh ( )
win1.browse1.SetFocus ( )
DO checkbtns
Return Nil
Proc DeleteRec
SELECT AREA test
myrec := win1.browse1.Value
Goto myrec
delete
Pack
mycount := Reccount()
IF myrec > mycount
win1.browse1.Value := mycount
Goto Bottom
ENDIF
win1.browse1.Refresh ( )
win1.browse1.SetFocus ( )
DO checkbtns
Return Nil
Proc DeleteAll
SELECT AREA test
Zap
win1.browse1.Value := 0
win1.browse1.Refresh ( )
DO checkbtns
Return Nil
Proc browsecheck
mycount := Reccount()
IF mycount = 0
Return 0
ENDIF
IF test->f_true > 4 .or. test->f_true < 1
MSGBOX("True answer between 1 and 4","Sorry")
REPLACE f_true WITH 1
win1.browse1.Refresh ( )
ENDIF
Return Nil
Proc checkbtns
mycount := Reccount()
IF mycount == 0
win1.btndelete.Enabled := .f.
win1.btndeleteall.Enabled := .f.
ELSE
win1.btndelete.Enabled := .t.
win1.btndeleteall.Enabled := .t.
ENDIF
Return Nil
Proc tabchange
activepage := win1.tab1.Value
IF activepage == 2
SELECT test
mycount := Reccount()
IF mycount = 0
win1.btnok.Enabled := .f.
win1.edit1.Value := ""
win1.list1.DeleteAllItems ( )
win1.textscore.Value := ""
win1.textof.Value := ""
Return 0
ELSE
win1.btnok.Enabled := .t.
ENDIF
Goto Top
DO loadquestion
mycount = STR ( mycount )
mycount = ALLTRIM ( mycount )
win1.textscore.Value := ""
win1.textof.Value := mycount
ENDIF
Return Nil
Proc loadquestion
win1.edit1.Value := ""
win1.list1.DeleteAllItems ( )
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + f_question
else
Win1.Edit1.VALUE := f_question
endif
Win1.List1.Additem ( f_a1 )
Win1.List1.Additem ( f_a2 )
Win1.List1.Additem ( f_a3 )
Win1.List1.Additem ( f_a4 )
Return Nil
Proc btnokclick
SELECT AREA test
useranswer := win1.list1.Value
IF useranswer = test->f_true
scorevalue := win1.textscore.Value
scorevalue = VAL ( scorevalue )
scorevalue := scorevalue + 1
scorevalue = STR ( scorevalue )
scorevalue = ALLTRIM ( scorevalue )
win1.textscore.Value := scorevalue
MSGBOX("True Answer","Great")
ELSE
MSGBOX("False Answer","Sorry")
ENDIF
mycount := Reccount()
myrec := Recno()
IF myrec = mycount
MSGBOX("Exam over !!!","Wow")
Goto Top
DO loadquestion
win1.textscore.Value := ""
Return 0
ENDIF
Skip 1
DO loadquestion
Return Nil
Proc aboutapp
SHELLABOUT( "Test Creator" , "Test Creator, Copyright 2008, Mahmoud Fayed (msfclipper@yahoo.com)" )
Return Nil
Proc closeapp
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_TESTCREATOR
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",47)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure opendb",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",2,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",8,13)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","MENU POPUPS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","POPUP ITEMS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About' )",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit' )",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Items",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Tab ( Tab1 )",26,29)
SS_ESASTEP("Circuits\Main\Main\Main","Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Pages",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Page ( 'Questions' )",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Browse ( browse1 )",34,45)
SS_ESASTEP("Circuits\Main\Main\Main","Browse Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON LostFocus",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Browse Properties",47,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnadd )",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",53,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnDelete )",56,57)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",59,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnDeleteAll )",62,63)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",65,67)
SS_ESASTEP("Circuits\Main\Main\Main","End Page",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Page ( 'Test' )",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 )",70,71)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",72,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 )",78,79)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",80,85)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",87,91)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Event",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",93,97)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnok )",98,99)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",101,103)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 )",104,105)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",106,111)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textscore  )",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",113,117)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 )",118,119)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",120,125)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textof  )",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",127,131)
SS_ESASTEP("Circuits\Main\Main\Main","End Page",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","End Tab",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",134,135)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textscore.Enabled := .f.",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textof.Enabled := .f.",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit1.Enabled := .f.",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",140,141)
SS_ESASTEP("Circuits\Main\Main\Main","Procedures",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure opendb",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Open Table test.dbf",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closedb",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Close Table",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure addrec",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Select Area test",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","Add New Record",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","Replace Field f_true with 1",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = Get Records Count",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Value := mycount",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Refresh ( )",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.SetFocus ( )",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure checkbtns",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure DeleteRec",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Select Area test",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = win1.browse1.Value",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","Goto Record Number myrec",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","Delete Record (Mark for deletion)",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","Pack",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = Get Records Count",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myrec > mycount )",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Value := mycount",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","Goto Last Record",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Refresh ( )",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.SetFocus ( )",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure checkbtns",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure DeleteAll",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Select Area test",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","Zap",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Value := 0",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Refresh ( )",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure checkbtns",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure browsecheck",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = Get Records Count",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount = 0 )",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( test->f_true > 4 .or. test->f_true < 1 )",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'True answer between 1 and 4' Title 'Sorry' Type: Message Box",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","Replace Field f_true with 1",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Refresh ( )",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure checkbtns",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = Get Records Count",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount == 0 )",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btndelete.Enabled := .f.",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btndeleteall.Enabled := .f.",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btndelete.Enabled := .t.",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btndeleteall.Enabled := .t.",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure tabchange",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","activepage = win1.tab1.Value",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( activepage == 2 )",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","SELECT AREA test",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = Get Records Count",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount = 0 )",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnok.Enabled := .f.",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit1.Value := ''",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textscore.Value := ''",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textof.Value := ''",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnok.Enabled := .t.",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","Goto First Record",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure loadquestion",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = CONVERT mycount TO STRING",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = All Trim mycount",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textscore.Value := ''",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textof.Value := mycount",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure loadquestion",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit1.Value := ''",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (f_question) to Editbox (Edit1) of Window (Win1)",227,231)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (f_a1) to Listbox (List1) of Window (Win1)",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (f_a2) to Listbox (List1) of Window (Win1)",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (f_a3) to Listbox (List1) of Window (Win1)",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (f_a4) to Listbox (List1) of Window (Win1)",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure btnokclick",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Select Area test",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","useranswer = win1.list1.Value",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( useranswer = test->f_true )",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","scorevalue = win1.textscore.Value",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","scorevalue = CONVERT scorevalue TO Numeric",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","scorevalue = scorevalue + 1",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","scorevalue = CONVERT scorevalue TO STRING",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","scorevalue = All Trim scorevalue",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textscore.Value := scorevalue",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'True Answer' Title 'Great' Type: Message Box",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'False Answer' Title 'Sorry' Type: Message Box",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = Get Records Count",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = Get Record Number",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myrec = mycount )",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Exam over !!!' Title 'Wow' Type: Message Box",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","Goto First Record",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure loadquestion",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textscore.Value := ''",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","Goto Next Record",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure loadquestion",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure aboutapp",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","ShellAbout, Title 'Test Creator', Addition Text 'Test Creator, Copyright 2008, Mahmoud Fayed (msfcli",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closeapp",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",268,268)
Return
*-------------------------------------------------------------------*

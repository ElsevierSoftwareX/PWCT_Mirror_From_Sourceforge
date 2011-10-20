*---------------------------------------------------------------------------*
* Time : 16:42:12    Date : 10/15/2011
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


Resistance R_TESTCREATOR_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TESTCREATOR_18smart1() code
DO opendb
if !iswindowdefined( win1 )
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

@ 384 ,150 BUTTONEX btnadd;
CAPTION "Add Question";
ON CLICK addrec()  ;
WIDTH 140 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP "Add New Question to the Test"
@ 384 ,323 BUTTONEX btnDelete;
CAPTION "Delete Question";
ON CLICK deleterec()  ;
WIDTH 140 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP "Delete this question from the Test"
@ 384 ,496 BUTTONEX btnDeleteAll;
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
@ 387 ,651 BUTTONEX btnok;
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
FONT "arial" SIZE 9 ;
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
FONT "arial" SIZE 9 ;
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
EndIF

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
win1.browse1.Refresh ( )
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
MyOut := MSGBOX("True answer between 1 and 4","Sorry")
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
MyOut := MSGBOX("True Answer","Great")
ELSE
MyOut := MSGBOX("False Answer","Sorry")
ENDIF
mycount := Reccount()
myrec := Recno()
IF myrec = mycount
MyOut := MSGBOX("Exam over !!!","Wow")
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
SS_ESARES("Circuits\Main\Main\Main",49)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure opendb",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Test Creator'",2,6)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE : Action closedb()",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action checkbtns()",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",9,14)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About' )",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit' )",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Tab ( Tab1 )",27,30)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action tabchange()",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Page ( 'Questions' )",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define Browse ( browse1 )",35,46)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON LostFocus : Action browsecheck()",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Browse Properties",48,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnadd ) , Caption : 'Add Question'",51,52)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action addrec()",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",54,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnDelete ) , Caption : 'Delete Question'",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action deleterec()",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",60,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnDeleteAll ) , Caption : 'Delete All Questions'",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action deleteall()",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",66,68)
SS_ESASTEP("Circuits\Main\Main\Main","End Page",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Page ( 'Test' )",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Question'",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",73,78)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Answer'",79,80)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",81,86)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",88,92)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",94,98)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnok ) , Caption : 'Ok'",99,100)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action btnokclick()",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",102,104)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Score : '",105,106)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",107,112)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textscore  )",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",114,119)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'Of'",120,121)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",122,127)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textof  )",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",129,134)
SS_ESASTEP("Circuits\Main\Main\Main","End Page",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","End Tab",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",137,138)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textscore.Enabled := .f.",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textof.Enabled := .f.",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit1.Enabled := .f.",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",143,145)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure opendb",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","Open Table test.dbf",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closedb",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","Close Table",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure addrec",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","Select Area test",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","Add New Record",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","Replace Field f_true with 1",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = Get Records Count",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Value := mycount",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Refresh ( )",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.SetFocus ( )",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure checkbtns",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure DeleteRec",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","Select Area test",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = win1.browse1.Value",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","Goto Record Number myrec",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","Delete Record (Mark for deletion)",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","Pack",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = Get Records Count",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myrec > mycount )",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Value := mycount",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","Goto Last Record",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Refresh ( )",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Refresh ( )",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure checkbtns",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure DeleteAll",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","Select Area test",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","Zap",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Value := 0",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Refresh ( )",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure checkbtns",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure browsecheck",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = Get Records Count",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount = 0 )",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( test->f_true > 4 .or. test->f_true < 1 )",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'True answer between 1 and 4' Title 'Sorry' Type: Message Box",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","Replace Field f_true with 1",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","win1.browse1.Refresh ( )",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure checkbtns",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = Get Records Count",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount == 0 )",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btndelete.Enabled := .f.",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btndeleteall.Enabled := .f.",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btndelete.Enabled := .t.",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btndeleteall.Enabled := .t.",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure tabchange",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","activepage = win1.tab1.Value",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( activepage == 2 )",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","SELECT AREA test",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = Get Records Count",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount = 0 )",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnok.Enabled := .f.",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit1.Value := ''",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textscore.Value := ''",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textof.Value := ''",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnok.Enabled := .t.",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","Goto First Record",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure loadquestion",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = CONVERT mycount TO STRING",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = All Trim mycount",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textscore.Value := ''",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textof.Value := mycount",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure loadquestion",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit1.Value := ''",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (f_question) to Editbox (Edit1) of Window (Win1)",231,235)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (f_a1) to Listbox (List1) of Window (Win1)",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (f_a2) to Listbox (List1) of Window (Win1)",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (f_a3) to Listbox (List1) of Window (Win1)",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (f_a4) to Listbox (List1) of Window (Win1)",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure btnokclick",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","Select Area test",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","useranswer = win1.list1.Value",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( useranswer = test->f_true )",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","scorevalue = win1.textscore.Value",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","scorevalue = CONVERT scorevalue TO Numeric",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","scorevalue = scorevalue + 1",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","scorevalue = CONVERT scorevalue TO STRING",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","scorevalue = All Trim scorevalue",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textscore.Value := scorevalue",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'True Answer' Title 'Great' Type: Message Box",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'False Answer' Title 'Sorry' Type: Message Box",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = Get Records Count",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","myrec = Get Record Number",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myrec = mycount )",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Exam over !!!' Title 'Wow' Type: Message Box",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","Goto First Record",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure loadquestion",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textscore.Value := ''",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","Goto Next Record",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure loadquestion",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure aboutapp",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","ShellAbout, Title 'Test Creator', Addition Text 'Test Creator, Copyright 2008, Mahmoud Fayed (msfclipper@yahoo.com)'",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closeapp",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",272,272)
Return
*-------------------------------------------------------------------*

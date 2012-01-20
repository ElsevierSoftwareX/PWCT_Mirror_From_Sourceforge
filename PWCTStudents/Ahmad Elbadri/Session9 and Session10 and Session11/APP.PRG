*---------------------------------------------------------------------------*
* Time : 17:05:17    Date : 01/19/2012
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


Resistance R_APP_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_APP_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 526 ;
HEIGHT 411 ;
ICON "PWCTICON" ;
TITLE "Login Form" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {122,230,241} 

@ 16 ,188 LABEL lbl1 ;
VALUE "Login" ;
WIDTH 80 ;
HEIGHT 42 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {122,230,241} ;
FONTCOLOR {255,0,0}
@ 120 ,2 LABEL lbl2 ;
VALUE "Username" ;
WIDTH 103 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {122,230,241} ;
FONTCOLOR {0,64,0}
@ 187 ,3 LABEL lbl3 ;
VALUE "Password" ;
WIDTH 108 ;
HEIGHT 35 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {122,230,241} ;
FONTCOLOR {0,64,0}
@ 120 ,154 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 192 ,154 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
PASSWORD 

@ 287 ,178 BUTTONEX btn1;
CAPTION "Login";
ON CLICK enter()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 5 ,380 IMAGE image1;
PICTURE "login.JPG";
STRETCH ;
WIDTH 123 HEIGHT 142
@ 178 ,377 LABEL lbl4 ;
VALUE "Trys Left :" ;
WIDTH 120 ;
HEIGHT 37 ;
FONT "Arial Black" SIZE 14  ;
BACKCOLOR {122,230,241} ;
FONTCOLOR {0,0,0}
@ 215 ,433 LABEL lbl5 ;
VALUE "2" ;
WIDTH 31 ;
HEIGHT 45 ;
FONT "Arial Black" SIZE 24  ;
BACKCOLOR {122,230,241} ;
CENTERALIGN ;
FONTCOLOR {128,0,0}
DEFINE MAIN MENU of win1
POPUP "File"
MENUITEM "Exit" Action close()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Ready"

DATE

CLOCK

END STATUSBAR

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc enter
user := win1.text1.Value
pass := win1.text2.Value
IF user==""
MyOut := MSGSTOP("Please enter the Username","Error")
DO counter
ELSEIF pass==""
MyOut := MSGSTOP("Please enter the Password","Error")
DO counter
ELSE
DO run
ENDIF
Return Nil
Proc run
IF pass="123456"
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 489 ;
HEIGHT 467 ;
ICON "PWCTICON" ;
TITLE "Hello "+user ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 17 ,153 LABEL lbl6 ;
VALUE "Welcome "+user ;
WIDTH 173 ;
HEIGHT 41 ;
FONT "Comic Sans MS" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 71 ,14 LABEL lbl7 ;
VALUE "You Can Start to use my window Creator " ;
WIDTH 282 ;
HEIGHT 35 ;
FONT "Arial Narrow" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 127 ,12 LABEL lbl8 ;
VALUE "Height" ;
WIDTH 62 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,0}
@ 180 ,12 LABEL lbl9 ;
VALUE "Width" ;
WIDTH 55 ;
HEIGHT 32 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,0}
@ 235 ,12 LABEL lbl10 ;
VALUE "Color" ;
WIDTH 50 ;
HEIGHT 32 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,0}
@ 290 ,12 LABEL lbl11 ;
VALUE "Title" ;
WIDTH 41 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {255,0,0}
@ 128 ,100 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 178 ,100 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 234 ,100 TEXTBOX text5;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 290 ,100 TEXTBOX text6;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 372 ,148 BUTTONEX btn2;
CAPTION "Create";
ON CLICK chk()  ;
WIDTH 105 HEIGHT 39 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 113 ,316 IMAGE image2;
PICTURE "Windows.JPG";
STRETCH ;
WIDTH 151 HEIGHT 191
END WINDOW

ACTIVATE WINDOW win2
EndIF

ELSE
MyOut := MSGSTOP("Wrong password try agin","Wrong password")
DO counter
ENDIF
Return Nil
Proc counter
try := win1.lbl5.Value
try = VAL ( try )
IF try>0
try := try-1
try = STR ( try )
try = ALLTRIM ( try )
win1.lbl5.Value := try
ELSE
MyOut := MSGSTOP("Sorry Application will be closed","Time out !")
win1.Release ( )
ENDIF
Return Nil
Proc close
MyOut := MSGOKCANCEL("Do You Want Exit ? ","Exit")
IF MyOut=true
win1.Release ( )
ELSE
ENDIF
Return Nil
Proc chk
h := win2.text3.Value
w := win2.text4.Value
c := win2.text5.Value
t := win2.text6.Value
IF h==""
MyOut := MSGSTOP("Please Enter Hieght","Error")
ELSEIF w==""
MyOut := MSGSTOP("Please Enter Width","Error")
ELSEIF c==""
MyOut := MSGSTOP("Please Enter Color","Text Here")
ELSEIF t==""
MyOut := MSGSTOP("Please Enter Title","Error")
ELSE
DO create
ENDIF
Return Nil
Proc create
if !iswindowdefined( win3 )
DEFINE WINDOW win3 ;
AT 10 ,10 ;
WIDTH &w ;
HEIGHT &h ;
ICON "PWCTICON" ;
TITLE "&t" ;
MODAL ;
NOSIZE ;
BACKCOLOR {&c} 

END WINDOW

ACTIVATE WINDOW win3
EndIF

Return Nil


End Of Resistance

INIT PROCEDURE Init_APP
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Login Form'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Login'",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",15,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Username'",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",22,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Password'",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",29,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",35,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",41,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Login'",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action enter",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",50,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'login.JPG'",53,54)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Trys Left :'",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",59,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : '2'",64,65)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",66,71)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU : WINDOW (win1)",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit' )",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",77,78)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",79,80)
SS_ESASTEP("Circuits\Main\Main\Main","Date",81,82)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",83,84)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",85,86)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",87,88)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",89,91)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure enter",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","user = win1.text1.Value",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","pass = win1.text2.Value",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( user=='' )",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please enter the Username' Title 'Error' Type: Message Stop",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure counter",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( pass=='' )",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please enter the Password' Title 'Error' Type: Message Stop",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure counter",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure run",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure run",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( pass='123456' )",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Hello '+user",107,111)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",112,118)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 ) , Caption : 'Welcome '+user",119,120)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",121,125)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7 ) , Caption : 'You Can Start to use my window Creator '",126,127)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",128,132)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl8 ) , Caption : 'Height'",133,134)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",135,139)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl9 ) , Caption : 'Width'",140,141)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",142,146)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl10 ) , Caption : 'Color'",147,148)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",149,153)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl11 ) , Caption : 'Title'",154,155)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",156,160)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",162,166)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",168,172)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text5  )",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",174,178)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text6  )",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",180,184)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Create'",185,186)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action chk",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",188,190)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image2 ) , Image : 'Windows.JPG'",191,192)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",193,194)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",195,196)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",197,199)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Wrong password try agin' Title 'Wrong password' Type: Message Stop",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure counter",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure counter",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","try = win1.lbl5.Value",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","try = CONVERT try TO Numeric",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( try>0 )",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","try = try-1",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","try = CONVERT try TO STRING",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","try = All Trim try",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl5.Value := try",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Sorry Application will be closed' Title 'Time out !' Type: Message Stop",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Do You Want Exit ? ' Title 'Exit' Type: Message Ok/Cancel",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( MyOut=true )",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure chk",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","h = win2.text3.Value",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","w = win2.text4.Value",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","c = win2.text5.Value",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","t = win2.text6.Value",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( h=='' )",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please Enter Hieght' Title 'Error' Type: Message Stop",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( w=='' )",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please Enter Width' Title 'Error' Type: Message Stop",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( c=='' )",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please Enter Color' Title 'Text Here' Type: Message Stop",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( t=='' )",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please Enter Title' Title 'Error' Type: Message Stop",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure create",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure create",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win3 ) , Title : '&t'",243,247)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",248,253)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",254,255)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",256,258)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",259,259)
Return
*-------------------------------------------------------------------*

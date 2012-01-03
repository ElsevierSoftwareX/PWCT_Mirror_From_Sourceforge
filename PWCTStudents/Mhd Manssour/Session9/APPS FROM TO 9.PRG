*---------------------------------------------------------------------------*
* Time : 20:32:58    Date : 01/01/2012
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


Resistance R_APPS_FROM_TO_9_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_APPS_FROM_TO_9_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "CHECK IN" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 117 ,69 LABEL lbl1 ;
VALUE "USER NAME" ;
WIDTH 129 ;
HEIGHT 29 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 113 ,224 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 201 ,193 BUTTONEX btn1;
CAPTION "login";
ON CLICK check()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure check()
user := win1.text1.Value
IF user==""
MyOut := MSGBOX("Enter user name","error")
ELSE
win1.Hide ( )
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 1285 ;
HEIGHT 440 ;
ICON "PWCTICON" ;
TITLE "hello"+user ;
MODAL ;
BACKCOLOR {236,233,216} 

DEFINE MAIN MENU
POPUP "„·›"
MENUITEM "⁄‰ «·„»—„Ã" Action MSGINFO( "Mhd Manssour from syria" )
END POPUP
END MENU
@ 75 ,120 LABEL lbl2 ;
VALUE "„« ÂÊ «·„ ’›Õ «·„‘ÂÊ— «·„»—„Ã „‰ ﬁ»· ‘—ﬂ… €Ê€·" ;
WIDTH 384 ;
HEIGHT 38 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 137 ,145 LABEL lbl3 ;
VALUE "Firefox" ;
WIDTH 71 ;
HEIGHT 34 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 132 ,427 LABEL lbl4 ;
VALUE "safari" ;
WIDTH 61 ;
HEIGHT 34 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 183 ,266 LABEL lbl5 ;
VALUE "Chrome" ;
WIDTH 87 ;
HEIGHT 31 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 238 ,214 BUTTONEX btn2;
CAPTION "«÷€ÿ ·„⁄—›… «·ÃÊ«»";
ON CLICK ans1()  ;
WIDTH 173 HEIGHT 32 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 316 ,221 LABEL lbl6 ;
VALUE "0" ;
WIDTH 33 ;
HEIGHT 31 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 315 ,360 BUTTONEX btn3;
CAPTION "⁄œ";
ON CLICK count()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 78 ,613 LABEL lbl7 ;
VALUE "„« ÂÌ √ﬂ»— ‰⁄„… √⁄ÿ«Â« «··Â ··≈‰”«‰ø" ;
WIDTH 255 ;
HEIGHT 38 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 146 ,654 LABEL lbl8 ;
VALUE "" ;
WIDTH 172 ;
HEIGHT 39 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 267 ,702 BUTTONEX btn4;
CAPTION "«·ÃÊ«»";
ON CLICK ans2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
return
procedure ans1()
win2.lbl3.Hide ( )
win2.lbl4.Hide ( )
return
procedure count()
a := win2.lbl6.Value
a = VAL ( a )
a := a+1
a = STR ( a )
a = ALLTRIM ( a )
win2.lbl6.Value := a
return
procedure ans2()
win2.lbl8.Value := "«·≈”·«„"
return


End Of Resistance

INIT PROCEDURE Init_APPS_FROM_TO_9
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'CHECK IN'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'USER NAME'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",22,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'login'",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action check",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",30,32)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",35,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure check ( Event : CLICK )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","user = win1.text1.Value",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( user=='' )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Enter user name' Title 'error' Type: Message Box",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Hide ( )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'hello'+user",44,48)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",49,53)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '„·›'",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '⁄‰ «·„»—„Ã' )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '„« ÂÊ «·„ ’›Õ «·„‘ÂÊ— «·„»—„Ã „‰ ﬁ»· ‘—ﬂ… €Ê€·'",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",61,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Firefox'",66,67)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",68,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'safari'",73,74)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",75,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'Chrome'",80,81)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",82,86)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '«÷€ÿ ·„⁄—›… «·ÃÊ«»'",87,88)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ans1",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",90,92)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 ) , Caption : '0'",93,94)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",95,99)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : '⁄œ'",100,101)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action count",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",103,105)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7 ) , Caption : '„« ÂÌ √ﬂ»— ‰⁄„… √⁄ÿ«Â« «··Â ··≈‰”«‰ø'",106,107)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",108,112)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl8 ) , Caption : ''",113,114)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",115,119)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : '«·ÃÊ«»'",120,121)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ans2",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",123,125)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",126,127)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",128,130)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ans1 ( Event : CLICK )",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","win2.lbl3.Hide ( )",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","win2.lbl4.Hide ( )",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure count ( Event : CLICK )",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","a = win2.lbl6.Value",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","a = CONVERT a TO Numeric",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","a = a+1",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","a = CONVERT a TO STRING",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","a = All Trim a",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","win2.lbl6.Value := a",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ans2 ( Event : CLICK )",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","win2.lbl8.Value := '«·≈”·«„'",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",147,147)
Return
*-------------------------------------------------------------------*

*---------------------------------------------------------------------------*
* Time : 18:28:08    Date : 03/11/2012
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


Resistance R_TEST_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 539 ;
HEIGHT 411 ;
ICON "PWCTICON" ;
TITLE " ÕœÌœ «ﬂ»— Ê «’€— —ﬁ„  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
CURSOR "PICO\ABN.ANI" ;
BACKCOLOR {236,233,216} ;
NOTIFYICON "PICO\ACADMY.ICO" 

win1.Center ( )
@ -2 ,-2 IMAGE image1;
PICTURE "PICO\14.JPG";
STRETCH ;
WIDTH 535 HEIGHT 381
@ 72 ,387 LABEL lbl1 ;
VALUE "«œŒ· «·«—ﬁ«„ " ;
WIDTH 82 ;
HEIGHT 34 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 71 ,198 TEXTBOX text1;
HEIGHT 35 ;
WIDTH 174 ;
FONT "Arial" SIZE 14 ;
BOLD ;
TOOLTIP "√œŒ· «·√—ﬁ«„ —ﬁ„ —ﬁ„ À„ √÷€ÿ ⁄·Ï “— ≈÷«›… »⁄œ ﬂ· —ﬁ„" ;
BACKCOLOR {255,255,255} ;
UPPERCASE ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 113 ,380 BUTTONEX btn1;
CAPTION "«÷«›… ";
ON CLICK myadd()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 158 ,380 BUTTONEX btn2;
CAPTION "«ﬂ»— —ﬁ„";
ON CLICK mymax()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 206 ,380 BUTTONEX btn3;
CAPTION "«’€— —ﬁ„";
ON CLICK mymin()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 116 ,196 LISTBOX list1;
WIDTH 176 ;
HEIGHT 186 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 327 ,236 BUTTONEX btn4;
CAPTION "Œ—ÊÃ ";
ON CLICK exit()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 251 ,380 BUTTONEX btn5;
CAPTION " ›—Ì€ ";
ON CLICK del()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc myadd
t := win1.text1.Value
t = STR ( t )
win1.list1.AddItem ( t )
win1.text1.SetFocus ( )
Return Nil
Proc mymax
mycount := win1.list1.ItemCount
IF mycount=0
MyOut := MSGExclamation("«·ﬁ«∆„… Œ·Ì… „‰ «·«—ﬁ«„ "," ⁄›Ê«")
win1.text1.SetFocus ( )
Return 0
ENDIF
nmax := win1.list1.item(1)
IF mycount=1
MyOut := MSGBOX("«ﬂ»— —ﬁ„ ÂÊ    "+nmax," «ﬂ»— —ﬁ„ ÂÊ")
Return 0
ENDIF
nmax = VAL ( nmax )
FOR x = 2 TO mycount STEP 1
myitem := win1.list1.item(x)
myitem = VAL ( myitem )
IF myitem>nmax
nmax := myitem
ENDIF
Next
nmax = STR ( nmax )
MyOut := MSGExclamation("«ﬂ»— —ﬁ„ ÂÊ    "+nmax," «·«ﬂ»—ÂÊ")
Return Nil
Proc mymin
mycount := win1.list1.ItemCount
IF mycount=0
MyOut := MSGExclamation("«·ﬁ«∆„… Œ·Ì… „‰ «·«—ﬁ«„ "," ⁄›Ê«")
win1.text1.SetFocus ( )
Return 0
ENDIF
nmin := win1.list1.item(1)
IF mycount=1
MyOut := MSGBOX("√’€— —ﬁ„ ÂÊ    "+nmin,"«·«’€—ÂÊ")
Return 0
ENDIF
nmin = VAL ( nmin )
FOR x = 2 TO mycount STEP 1
myitem := win1.list1.item(x)
myitem = VAL ( myitem )
IF myitem<nmin
nmin := myitem
ENDIF
Next
nmin = STR ( nmin )
MyOut := MSGExclamation("√’€— —ﬁ„ ÂÊ    "+nmin," «·«’€—ÂÊ")
Return Nil
procedure exit()
win1.Release ( )
return
procedure del()
win1.list1.DeleteAllItems ( )


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : ' ÕœÌœ «ﬂ»— Ê «’€— —ﬁ„  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,15)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'PICO\14.JPG'",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«œŒ· «·«—ﬁ«„ '",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",23,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",29,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«÷«›… '",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myadd",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",43,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '«ﬂ»— —ﬁ„'",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mymax",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",49,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : '«’€— —ﬁ„'",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mymin",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",55,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",59,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'Œ—ÊÃ '",64,65)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action exit",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",67,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : ' ›—Ì€ '",70,71)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action del",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",73,75)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",76,77)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",78,80)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",81,83)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myadd",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","t = win1.text1.Value",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","t = CONVERT t TO STRING",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( t )",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.SetFocus ( )",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mymax",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = win1.list1.ItemCount",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount=0 )",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '«·ﬁ«∆„… Œ·Ì… „‰ «·«—ﬁ«„ ' Title ' ⁄›Ê«' Type: Message Exclamation",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.SetFocus ( )",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","nmax = win1.list1.item(1)",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount=1 )",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '«ﬂ»— —ﬁ„ ÂÊ    '+nmax Title ' «ﬂ»— —ﬁ„ ÂÊ' Type: Message Box",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","nmax = CONVERT nmax TO Numeric",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 2 To mycount Step 1)",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","myitem = win1.list1.item(x)",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","myitem = CONVERT myitem TO Numeric",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myitem>nmax )",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","nmax = myitem",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","nmax = CONVERT nmax TO STRING",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '«ﬂ»— —ﬁ„ ÂÊ    '+nmax Title ' «·«ﬂ»—ÂÊ' Type: Message Exclamation",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mymin",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = win1.list1.ItemCount",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount=0 )",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '«·ﬁ«∆„… Œ·Ì… „‰ «·«—ﬁ«„ ' Title ' ⁄›Ê«' Type: Message Exclamation",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.SetFocus ( )",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","nmin = win1.list1.item(1)",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount=1 )",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '√’€— —ﬁ„ ÂÊ    '+nmin Title '«·«’€—ÂÊ' Type: Message Box",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","nmin = CONVERT nmin TO Numeric",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 2 To mycount Step 1)",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","myitem = win1.list1.item(x)",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","myitem = CONVERT myitem TO Numeric",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myitem<nmin )",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","nmin = myitem",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","nmin = CONVERT nmin TO STRING",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '√’€— —ﬁ„ ÂÊ    '+nmin Title ' «·«’€—ÂÊ' Type: Message Exclamation",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure exit ( Event : CLICK )",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure del ( Event : CLICK )",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",140,140)
Return
*-------------------------------------------------------------------*

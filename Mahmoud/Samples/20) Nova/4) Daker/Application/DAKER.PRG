#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 20:21:51    Date : 08/11/2009
*---------------------------------------------------------------------------*
* Programming without coding technology 1.1 (Magic)   
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
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


Resistance REYRYO1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance REYRYO1() code
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 527 ;
HEIGHT 475 ;
ON INIT a()  ;
TITLE "»—‰«„Ã «·–«ﬂ— «·«’œ«— «·«Ê·" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,0,0} 

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
@ 281 ,368 BUTTONEX btn1;
CAPTION "⁄‰œ «·‰Ê„";
ON CLICK amine1()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 281 ,38 BUTTONEX btn2;
CAPTION "«·«” Ìﬁ«Ÿ „‰ «·‰Ê„";
ON CLICK amine2()  ;
WIDTH 124 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 54 ,22 LABEL lbl1 ;
VALUE "" ;
WIDTH 115 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {0,0,0} ;
FONTCOLOR {255,255,255}
@ 6 ,4 LABEL lbl2 ;
VALUE "" ;
WIDTH 179 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {0,0,0} ;
FONTCOLOR {255,255,255}
@ 323 ,352 BUTTONEX btn3;
CAPTION "⁄‰œ «·Œ—ÊÃ „‰ «·Œ·«¡";
ON CLICK amine3()  ;
WIDTH 160 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 103 ,41 LABEL lbl3 ;
VALUE "" ;
WIDTH 78 ;
HEIGHT 24 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {0,0,0} ;
FONTCOLOR {255,255,255}
@ 230 ,366 BUTTONEX btn4;
CAPTION "⁄‰œ «·›“⁄";
ON CLICK amine4()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 106 ,207 LABEL lbl4 ;
VALUE "" ;
WIDTH 87 ;
HEIGHT 25 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {0,0,0} ;
FONTCOLOR {255,255,255}
@ 325 ,220 BUTTONEX btn5;
CAPTION "⁄‰œ «·Ê÷Ê¡";
ON CLICK amine5()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 9 ,216 LABEL lbl5 ;
VALUE "" ;
WIDTH 107 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {0,0,0} ;
FONTCOLOR {255,255,255}
@ 256 ,216 BUTTONEX btn6;
CAPTION "√–ﬂ«— ⁄ŸÌ„…";
ON CLICK amine6()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 55 ,208 LABEL lbl6 ;
VALUE "" ;
WIDTH 104 ;
HEIGHT 32 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {0,0,0} ;
FONTCOLOR {255,255,255}
@ 233 ,43 BUTTONEX btn7;
CAPTION "⁄‰œ œŒÊ· «·Œ·«¡";
ON CLICK amine7()  ;
WIDTH 113 HEIGHT 33 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 152 ,8 LABEL lbl7 ;
VALUE "" ;
WIDTH 286 ;
HEIGHT 32 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {0,0,0} ;
FONTCOLOR {255,255,255}
@ 322 ,17 BUTTONEX btn8;
CAPTION "⁄‰œ «·ŒÊ› „‰ ÊﬁÊ⁄ „ﬂ—ÊÂ";
ON CLICK amine8()  ;
WIDTH 178 HEIGHT 33 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 5 ,372 LABEL lbl8 ;
VALUE "" ;
WIDTH 144 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {0,0,0} ;
FONTCOLOR {255,255,255}
DEFINE MAIN MENU
POPUP "„·›"
MENUITEM "Œ—ÊÃ" Action exit()
END POPUP
END MENU
@ 388 ,191 BUTTONEX mybtn;
CAPTION "⁄‰ «·„»—„Ã";
ON CLICK mywin()  ;
WIDTH 138 HEIGHT 38 ;
FONT "Arial" SIZE 20 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1

Proc a
CALLDLL32("sndPlaySoundA","WINMM.DLL","Besm.wav" , 0)
Return Nil
Proc amine1
win1.lbl1.Value := "ﬁ—«¡… ¬Ì… «·ﬂ—”Ì"
Return Nil
Proc amine2
win1.lbl2.Value := " Ì–ﬂ— «··Â À„ Ì Ê÷√ À„ Ì’·Ì"
Return Nil
Proc amine3
win1.lbl3.Value := "€›—«‰ﬂ"
Return Nil
Proc amine4
win1.lbl4.Value := "·«≈·Â ≈·« «··Â "
Return Nil
Proc amine5
win1.lbl5.Value := "»”„ «··Â"
Return Nil
Proc amine6
win1.lbl6.Value := "”»Õ«‰ «··Â"
Return Nil
Proc amine7
win1.lbl7.Value := "»”„ «··Â «··Â„ ≈‰Ì «⁄Ê– »ﬂ „‰ «·Œ»À Ê«·Œ»«∆À"
Proc exit
win1.Release ( )
Return Nil
Proc amine8
win1.lbl8.Value := "Õ”»‰« «··Â Ê‰⁄„ «·ÊﬂÌ·"
Return Nil
Proc mywin
MyOut := MSGSTOP("»—„Ã… Ê ’„Ì„ : √„Ì‰ œ»«»”Ì…","ÕÊ· «·„»—„Ã")
Return Nil


End Of Resistance

INIT PROCEDURE Init_DAKER
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",1,4)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,11)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",12,14)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 )",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",18,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 )",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",24,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 )",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",29,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 )",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",36,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 )",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",44,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 )",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",49,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 )",54,55)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",57,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 )",60,61)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",62,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 )",67,68)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",70,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 )",73,74)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",75,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn6 )",80,81)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",83,85)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 )",86,87)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",88,92)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn7 )",93,94)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",96,98)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7 )",99,100)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",101,105)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn8 )",106,107)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",109,111)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl8 )",112,113)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",114,118)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","MENU POPUPS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '„·›'",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","POPUP ITEMS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Œ—ÊÃ' )",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( mybtn )",124,125)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",127,129)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",130,131)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",132,133)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure a",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Call DLL 'WINMM.DLL' , Function 'sndPlaySoundA' , Parameters 'Besm.wav' , 0",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure amine1",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Value := 'ﬁ—«¡… ¬Ì… «·ﬂ—”Ì'",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure amine2",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl2.Value := ' Ì–ﬂ— «··Â À„ Ì Ê÷√ À„ Ì’·Ì'",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure amine3",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl3.Value := '€›—«‰ﬂ'",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure amine4",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl4.Value := '·«≈·Â ≈·« «··Â '",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure amine5",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl5.Value := '»”„ «··Â'",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure amine6",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl6.Value := '”»Õ«‰ «··Â'",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure amine7",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl7.Value := '»”„ «··Â «··Â„ ≈‰Ì «⁄Ê– »ﬂ „‰ «·Œ»À Ê«·Œ»«∆À'",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure exit",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure amine8",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl8.Value := 'Õ”»‰« «··Â Ê‰⁄„ «·ÊﬂÌ·'",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mywin",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '»—„Ã… Ê ’„Ì„ : √„Ì‰ œ»«»”Ì…' Title 'ÕÊ· «·„»—„Ã' Type: Message Stop",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",165,165)
Return
*-------------------------------------------------------------------*

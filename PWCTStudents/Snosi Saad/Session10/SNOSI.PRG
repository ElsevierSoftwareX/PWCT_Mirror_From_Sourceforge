*---------------------------------------------------------------------------*
* Time : 16:31:58    Date : 05/27/2011
*---------------------------------------------------------------------------*
* Programming without coding technology 1.7 (Sharp) [2006-2010]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
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
 * (Noun) *
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


Resistance R_SNOSI_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SNOSI_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 300 ;
ICON "PWCTICON" ;
TITLE " ”ÃÌ· «·œŒÊ·" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,0,128} 

@ 101 ,388 LABEL lbl1 ;
VALUE " : ≈”„ «·„” Œœ„" ;
WIDTH 100 ;
HEIGHT 30 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {0,0,0} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {255,128,0}
@ 103 ,112 TEXTBOX text1;
HEIGHT 26 ;
WIDTH 280 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {231,240,162} ;
RIGHTALIGN ;
FONTCOLOR {0,0,255} 

@ 103 ,2 BUTTONEX btn1;
CAPTION " ”ÃÌ· «·œŒÊ·";
FONTCOLOR {0,0,0};
BACKCOLOR {0,255,0};
ON CLICK login()  ;
WIDTH 106 HEIGHT 27 ;
FONT "arial" SIZE 14 ;
TOOLTIP ""
@ 0 ,-2 IMAGE image1;
PICTURE "11.jpg";
WIDTH 500 HEIGHT 100
@ 132 ,-2 IMAGE image2;
PICTURE "12.jpg";
WIDTH 500 HEIGHT 11
@ 175 ,-2 IMAGE image3;
PICTURE "13.jpg";
WIDTH 500 HEIGHT 142
@ 145 ,388 LABEL lbl2 ;
VALUE " :ﬂ·‹‹‹‹„… «·”‹‹‹—" ;
WIDTH 100 ;
HEIGHT 30 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {192,192,192} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {255,128,0}
@ 145 ,112 TEXTBOX text2;
HEIGHT 27 ;
WIDTH 280 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {231,240,162} ;
RIGHTALIGN ;
FONTCOLOR {0,0,255} ;
PASSWORD 

DEFINE MAIN MENU
POPUP "„·›"
MENUITEM "≈€·«ﬁ" Action close()
END POPUP
END MENU
DEFINE STATUSBAR 

DATE

CLOCK

END STATUSBAR

@ 146 ,2 BUTTONEX btnd;
CAPTION " ›—Ì€ «·Œ«‰« ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,128,0};
ON CLICK dl()  ;
WIDTH 107 HEIGHT 27 ;
FONT "arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc login
user := win1.text1.Value
Pass := win1.text2.Value
IF Pass==""
MyOut := MSGSTOP("„‰ ›÷·ﬂ √œŒ· ﬂ·„… «·”—","Œÿ√!")
Return 0
ENDIF
IF user==""
MyOut := MSGExclamation("„‰ ›÷·ﬂ ﬁ„ »≈œŒ«· ≈”„ «·„” Œœ„","Œÿ√")
ELSE
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 465 ;
HEIGHT 250 ;
ICON "PWCTICON" ;
TITLE "„—Õ»«" + " " + user ;
MODAL ;
NOSIZE ;
BACKCOLOR {85,148,210} 

@ 50 ,149 LABEL lbl3 ;
VALUE user ;
WIDTH 182 ;
HEIGHT 33 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 94 ,11 LABEL lbl4 ;
VALUE Pass ;
WIDTH 183 ;
HEIGHT 35 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 52 ,338 LABEL lbl5 ;
VALUE " √Â·« Ê”Â·«" ;
WIDTH 84 ;
HEIGHT 31 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 95 ,236 LABEL lbl6 ;
VALUE ": ﬂ·„… «·”— «·Œ«’… »ﬂ ÂÌ" ;
WIDTH 186 ;
HEIGHT 34 ;
AUTOSIZE ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 175 ,348 BUTTONEX btn2;
CAPTION "—ÃÊ⁄";
ON CLICK Back()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 16 ;
BOLD ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

ENDIF
Return Nil
Proc close
MyOut := MSGOKCANCEL("Â·  —Ìœ ≈€·«ﬁ «·»—‰«„Ã ø"," √ﬂÌœ")
IF MyOut=true
win1.Release ( )
ELSE
Return 0
ENDIF
Return Nil
Proc Back
win2.Release ( )
Return Nil
Proc dl
user := win1.text1.Value
Pass := win1.text2.Value
user := ""
Pass := ""
win1.text1.Value := user
win1.text2.Value := Pass
Return Nil


End Of Resistance

INIT PROCEDURE Init_SNOSI
START DOUBLES
Return
*-------------------------------------------------------------------*

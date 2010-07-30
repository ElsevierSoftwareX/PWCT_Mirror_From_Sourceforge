*---------------------------------------------------------------------------*
* Time : 21:54:19    Date : 07/29/2010
*---------------------------------------------------------------------------*
* Programming without coding technology 1.6 (Ready) [2006-2010]  
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


Resistance R_MYCOUNT_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MYCOUNT_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 532 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Nariman" ;
MAIN ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 95 ,304 TEXTBOX textadd;
HEIGHT 30 ;
WIDTH 201 ;
BACKCOLOR {128,128,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 295 ,304 TEXTBOX textcount;
HEIGHT 30 ;
WIDTH 201 ;
BACKCOLOR {128,128,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 94 ,147 BUTTONEX btnadd;
CAPTION "«÷«›… «·ﬂ·„Â «·Ì «·ﬁ«∆„Â ";
ON CLICK myadd()  ;
WIDTH 155 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 326 ,304 BUTTONEX btncount;
CAPTION " ÕœÌœ ⁄œœ „—«   ﬂ—«— «·ﬂ·„Â";
ON CLICK mycount()  ;
WIDTH 201 HEIGHT 27 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 126 ,304 LISTBOX list1;
WIDTH 201 ;
HEIGHT 173 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,128,192} ;
FONTCOLOR {0,0,0}
@ 10 ,103 LABEL lbl1 ;
VALUE "«œŒ· „Ã„Ê⁄Â „‰ «·ﬂ·„«  ›Ì ﬁ«∆„Â" ;
WIDTH 293 ;
HEIGHT 35 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,255}
@ 43 ,71 LABEL lbl2 ;
VALUE "À„ «»ÕÀ ⁄‰ ⁄œœ „—«   ﬂ—«— ﬂ·„… ›Ï «·ﬁ«∆„…" ;
WIDTH 368 ;
HEIGHT 34 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,255}
@ 297 ,6 LABEL lbl3 ;
VALUE "«œŒ· «·ﬂ·„Â «· Ì  —Ìœ „⁄—›… ⁄œœ „—«   ﬂ—«—Â«" ;
WIDTH 293 ;
HEIGHT 33 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {128,0,128}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myadd
mytext := win1.textadd.Value
win1.list1.AddItem ( mytext )
Return Nil
Proc mycount
result := 0
TheWord := win1.textcount.Value
wordscount := win1.list1.ItemCount
IF wordscount=0
MyOut := MSGBOX("Please, Enter any word","Sorry")
Return 0
ENDIF
FOR x = 1 TO wordscount STEP 1
myword := win1.list1.item(x)
IF myword=TheWord
result := result+1
ENDIF
Next
result = STR ( result )
MyOut := MSGBOX(result,"The number of repeated word")
Return Nil


End Of Resistance

INIT PROCEDURE Init_MYCOUNT
START DOUBLES
Return
*-------------------------------------------------------------------*

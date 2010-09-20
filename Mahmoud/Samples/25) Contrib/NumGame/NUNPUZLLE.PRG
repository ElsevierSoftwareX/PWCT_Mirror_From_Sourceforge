*---------------------------------------------------------------------------*
* Time : 20:25:44    Date : 09/20/2010
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


Resistance R_NUNPUZLLE_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_NUNPUZLLE_15speed1() code
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 386 ;
HEIGHT 245 ;
ICON "PWCTICON" ;
TITLE "·⁄»…  — Ì» «·«—ﬁ«„ »—„Ã… «»—«ÂÌ„ ⁄»œ«··«Â " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 162 ,7 BUTTONEX b1;
CAPTION "1";
ON CLICK pb1()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 56 ,7 BUTTONEX b2;
CAPTION "2";
ON CLICK pb2()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 106 ,135 BUTTONEX b3;
CAPTION "3";
ON CLICK pb3()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 55 ,135 BUTTONEX b4;
CAPTION "4";
ON CLICK pb4()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 110 ,7 BUTTONEX b5;
CAPTION "5";
ON CLICK pb5()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 158 ,135 BUTTONEX b6;
CAPTION "0";
ON CLICK pb6()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 107 ,263 BUTTONEX b7;
CAPTION "6";
ON CLICK pb7()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 54 ,263 BUTTONEX b8;
CAPTION "7";
ON CLICK pb8()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 158 ,262 BUTTONEX b9;
CAPTION "8";
ON CLICK pb9()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 11 ,252 LABEL lbl1 ;
VALUE "⁄œœ «·‰ﬁ·« " ;
WIDTH 102 ;
HEIGHT 29 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 10 ,193 TEXTBOX t1;
HEIGHT 29 ;
WIDTH 57 ;
VALUE 0 ;
FONT "Arial" SIZE 14 ;
NUMERIC ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
win1.b6.Hide ( )
ACTIVATE WINDOW win1

Proc pb1
a1 := win1.b1.caption
a2 := win1.b2.caption
a3 := win1.b3.caption
a4 := win1.b4.caption
a5 := win1.b5.caption
a6 := win1.b6.caption
a7 := win1.b7.caption
a8 := win1.b8.caption
a9 := win1.b9.caption
a1 = ALLTRIM ( a1 )
a2 = ALLTRIM ( a2 )
a3 = ALLTRIM ( a3 )
a4 = ALLTRIM ( a4 )
a5 = ALLTRIM ( a5 )
a6 = ALLTRIM ( a6 )
a7 = ALLTRIM ( a7 )
a8 = ALLTRIM ( a8 )
a9 = ALLTRIM ( a9 )
a1 = VAL ( a1 )
a2 = VAL ( a2 )
a3 = VAL ( a3 )
a4 = VAL ( a4 )
a5 = VAL ( a5 )
a6 = VAL ( a6 )
a7 = VAL ( a7 )
a8 = VAL ( a8 )
a9 = VAL ( a9 )
IF a5=0
a5 = STR ( a5 )
a1 = STR ( a1 )
win1.b1.Caption := a5
win1.b5.Caption := a1
win1.b5.Show ( )
win1.b1.Hide ( )
a10 := win1.t1.value
a11 := a10+1
win1.t1.Value := a11
IF a11>=100
MyOut := MSGBOX("·ﬁœ  ⁄œÌ  «·„«∆… ‰ﬁ·… Õ«Ê· „—… «Œ—","GAME OVER")
win1.t1.Value := 0
ENDIF
ENDIF
IF a6=0
a1 = STR ( a1 )
a6 = STR ( a6 )
win1.b1.Caption := a6
win1.b6.Caption := a1
win1.b1.Hide ( )
win1.b6.Show ( )
a10 := win1.t1.value
a11 := a10+1
win1.t1.Value := a11
IF a11>=100
MyOut := MSGBOX("·ﬁœ  ⁄œÌ  «·„«∆… ‰ﬁ·… Õ«Ê· „—… «Œ—","GAME OVER")
win1.t1.Value := 0
ENDIF
ENDIF
IF a1=1 .and. a2=3 .and. a3=5 .and. a4=4 .and. a5=2 .and. a6=6 .and. a7=8 .and. a8=0 .and. a9=7
MyOut := MSGBOX("ﬁœ √‰ÂÌ  «··⁄»… »‰Ã«Õ","·ﬁœ ›“ ")
ENDIF
IF a1=3 .and. a2=1 .and. a3=5 .and. a4=6 .and. a5=2 .and. a6=4 .and. a7=8 .and. a8=7 .and. a9=0
MyOut := MSGBOX(" ·ﬁœ √‰ÂÌ  «··⁄»… »‰Ã«Õ","·ﬁœ ›“ ")
ENDIF
IF a1=7 .and. a2=0 .and. a3=5 .and. a4=4 .and. a5=8 .and. a6=6 .and. a7=2.and. a8=3 .and. a9=1
MyOut := MSGBOX("·ﬁœ √‰ÂÌ  «··⁄»…»‰Ã«Õ","·ﬁœ ›“ ")
ENDIF
IF a1=0 .and. a2=7 .and. a3=5 .and. a4=6 .and. a5=8 .and. a6=4 .and. a7=2 .and. a8=1 .and. a9=3
MyOut := MSGBOX("·ﬁœ √‰ÂÌ  «··⁄»… »‰Ã«Õ","·ﬁœ ›“ ")
ENDIF
Return Nil
Proc pb2
a1 := win1.b1.caption
a2 := win1.b2.caption
a3 := win1.b3.caption
a4 := win1.b4.caption
a5 := win1.b5.caption
a6 := win1.b6.caption
a7 := win1.b7.caption
a8 := win1.b8.caption
a9 := win1.b9.caption
a1 = ALLTRIM ( a1 )
a2 = ALLTRIM ( a2 )
a3 = ALLTRIM ( a3 )
a4 = ALLTRIM ( a4 )
a5 = ALLTRIM ( a5 )
a6 = ALLTRIM ( a6 )
a7 = ALLTRIM ( a7 )
a8 = ALLTRIM ( a8 )
a9 = ALLTRIM ( a9 )
a1 = VAL ( a1 )
a2 = VAL ( a2 )
a3 = VAL ( a3 )
a4 = VAL ( a4 )
a5 = VAL ( a5 )
a6 = VAL ( a6 )
a7 = VAL ( a7 )
a8 = VAL ( a8 )
a9 = VAL ( a9 )
IF a4=0
a4 = STR ( a4 )
a2 = STR ( a2 )
win1.b2.Caption := a4
win1.b4.Caption := a2
win1.b4.Show ( )
win1.b2.Hide ( )
a10 := win1.t1.value
a11 := a10+1
win1.t1.Value := a11
IF a11>=100
MyOut := MSGBOX("·ﬁœ  ⁄œÌ  «·„«∆… ‰ﬁ·… Õ«Ê· „—… «Œ—","GAME OVER")
win1.t1.Value := 0
ENDIF
ENDIF
IF a5=0
a2 = STR ( a2 )
a5 = STR ( a5 )
win1.b2.Caption := a5
win1.b5.Caption := a2
win1.b5.Show ( )
win1.b2.Hide ( )
a10 := win1.t1.value
a11 := a10+1
win1.t1.Value := a11
IF a11>=100
MyOut := MSGBOX("·ﬁœ  ⁄œÌ  «·„«∆… ‰ﬁ·… Õ«Ê· „—… «Œ—","GAME OVER")
win1.t1.Value := 0
ENDIF
ENDIF
IF a1=1 .and. a2=3 .and. a3=5 .and. a4=4 .and. a5=2 .and. a6=6 .and. a7=8 .and. a8=0 .and. a9=7
MyOut := MSGBOX("·ﬁœ √‰ÂÌ  «··⁄»… »‰Ã«Õ","·ﬁœ ›“ ")
ENDIF
IF a1=3 .and. a2=1 .and. a3=5 .and. a4=6 .and. a5=2 .and. a6=4 .and. a7=8 .and. a8=7 .and. a9=0
MyOut := MSGBOX("·ﬁœ √‰ÂÌ  «··⁄»… »‰Ã«Õ","·ﬁœ ›“ ")
ENDIF
IF a1=7 .and. a2=0 .and. a3=5 .and. a4=4 .and. a5=8 .and. a6=6 .and. a7=2.and. a8=3 .and. a9=1
MyOut := MSGBOX("·ﬁœ √‰ÂÌ  «··⁄»… »‰Ã«Õ","·ﬁœ ›“ ")
ENDIF
IF a1=0 .and. a2=7 .and. a3=5 .and. a4=6 .and. a5=8 .and. a6=4 .and. a7=2 .and. a8=1 .and. a9=3
MyOut := MSGBOX("·ﬁœ √‰ÂÌ  «··⁄»… »‰Ã«Õ","·ﬁœ ›“ ")
ENDIF
Return Nil
Proc pb3
a1 := win1.b1.caption
a2 := win1.b2.caption
a3 := win1.b3.caption
a4 := win1.b4.caption
a5 := win1.b5.caption
a6 := win1.b6.caption
a7 := win1.b7.caption
a8 := win1.b8.caption
a9 := win1.b9.caption
a1 = ALLTRIM ( a1 )
a2 = ALLTRIM ( a2 )
a3 = ALLTRIM ( a3 )
a4 = ALLTRIM ( a4 )
a5 = ALLTRIM ( a5 )
a6 = ALLTRIM ( a6 )
a7 = ALLTRIM ( a7 )
a8 = ALLTRIM ( a8 )
a9 = ALLTRIM ( a9 )
a1 = VAL ( a1 )
a2 = VAL ( a2 )
a3 = VAL ( a3 )
a4 = VAL ( a4 )
a5 = VAL ( a5 )
a6 = VAL ( a6 )
a7 = VAL ( a7 )
a8 = VAL ( a8 )
a9 = VAL ( a9 )
IF a4=0
a4 = STR ( a4 )
a3 = STR ( a3 )
win1.b3.Caption := a4
win1.b4.Caption := a3
win1.b3.Hide ( )
win1.b4.Show ( )
a10 := win1.t1.value
a11 := a10+1
win1.t1.Value := a11
IF a11>=100
MyOut := MSGBOX("·ﬁœ  ⁄œÌ  «·„«∆… ‰ﬁ·… Õ«Ê· „—… «Œ—","GAME OVER")
win1.t1.Value := 0
ENDIF
ENDIF
IF a5=0
a5 = STR ( a5 )
a3 = STR ( a3 )
win1.b3.Caption := a5
win1.b5.Caption := a3
win1.b3.Hide ( )
win1.b5.Show ( )
a10 := win1.t1.value
a11 := a10+1
win1.t1.Value := a11
IF a11>=100
MyOut := MSGBOX("·ﬁœ  ⁄œÌ  «·„«∆… ‰ﬁ·… Õ«Ê· „—… «Œ—","GAME OVER")
win1.t1.Value := 0
ENDIF
ENDIF
IF a6=0
a6 = STR ( a6 )
a3 = STR ( a3 )
win1.b3.Caption := a6
win1.b6.Caption := a3
win1.b3.Hide ( )
win1.b6.Show ( )
a10 := win1.t1.value
a11 := a10+1
win1.t1.Value := a11
IF a11>=100
MyOut := MSGBOX("·ﬁœ  ⁄œÌ  «·„«∆… ‰ﬁ·… Õ«Ê· „—… «Œ—","GAME OVER")
win1.t1.Value := 0
ENDIF
ENDIF
IF a7=0
a7 = STR ( a7 )
a3 = STR ( a3 )
win1.b3.Caption := a7
win1.b7.Caption := a3
win1.b3.Hide ( )
win1.b7.Show ( )
a10 := win1.t1.value
a11 := a10+1
win1.t1.Value := a11
IF a11>=100
MyOut := MSGBOX("·ﬁœ  ⁄œÌ  «·„«∆… ‰ﬁ·… Õ«Ê· „—… «Œ—","GAME OVER")
win1.t1.Value := 0
ENDIF
ENDIF
IF a1=1 .and. a2=3 .and. a3=5 .and. a4=4 .and. a5=2 .and. a6=6 .and. a7=8 .and. a8=0 .and. a9=7
MyOut := MSGBOX("·ﬁœ √‰ÂÌ  «··⁄»… »‰Ã«Õ","·ﬁœ ›“ ")
ENDIF
IF a1=3 .and. a2=1 .and. a3=5 .and. a4=6 .and. a5=2 .and. a6=4 .and. a7=8 .and. a8=7 .and. a9=0
MyOut := MSGBOX("·ﬁœ √‰ÂÌ  «··⁄»… »‰Ã«Õ","·ﬁœ ›“ ")
ENDIF
IF a1=7 .and. a2=0 .and. a3=5 .and. a4=4 .and. a5=8 .and. a6=6 .and. a7=2.and. a8=3 .and. a9=1
MyOut := MSGBOX("·ﬁœ √‰ÂÌ  «··⁄»… »‰Ã«Õ","·ﬁœ ›“ ")
ENDIF
IF a1=0 .and. a2=7 .and. a3=5 .and. a4=6 .and. a5=8 .and. a6=4 .and. a7=2 .and. a8=1 .and. a9=3
MyOut := MSGBOX("·ﬁœ √‰ÂÌ  «··⁄»… »‰Ã«Õ","·ﬁœ ›“ ")
ENDIF
Return Nil
Proc pb4
a1 := win1.b1.caption
a2 := win1.b2.caption
a3 := win1.b3.caption
a4 := win1.b4.caption
a5 := win1.b5.caption
a6 := win1.b6.caption
a7 := win1.b7.caption
a8 := win1.b8.caption
a9 := win1.b9.caption
a1 = ALLTRIM ( a1 )
a2 = ALLTRIM ( a2 )
a3 = ALLTRIM ( a3 )
a4 = ALLTRIM ( a4 )
a5 = ALLTRIM ( a5 )
a6 = ALLTRIM ( a6 )
a7 = ALLTRIM ( a7 )
a8 = ALLTRIM ( a8 )
a9 = ALLTRIM ( a9 )
a1 = VAL ( a1 )
a2 = VAL ( a2 )
a3 = VAL ( a3 )
a4 = VAL ( a4 )
a5 = VAL ( a5 )
a6 = VAL ( a6 )
a7 = VAL ( a7 )
a8 = VAL ( a8 )
a9 = VAL ( a9 )
IF a2=0
a4 = STR ( a4 )
a2 = STR ( a2 )
win1.b2.Caption := a4
win1.b4.Caption := a2
win1.b2.Show ( )
win1.b4.Hide ( )
a10 := win1.t1.value
a11 := a10+1
win1.t1.Value := a11
IF a11>=100
MyOut := MSGBOX("·ﬁœ  ⁄œÌ  «·„«∆… ‰ﬁ·… Õ«Ê· „—… «Œ—","GAME OVER")
win1.t1.Value := 0
ENDIF
ENDIF
IF a3=0
a4 = STR ( a4 )
a3 = STR ( a3 )
win1.b3.Caption := a4
win1.b4.Caption := a3
win1.b3.Show ( )
win1.b4.Hide ( )
a10 := win1.t1.value
a11 := a10+1
win1.t1.Value := a11
IF a11>=100
MyOut := MSGBOX("·ﬁœ  ⁄œÌ  «·„«∆… ‰ﬁ·… Õ«Ê· „—… «Œ—","GAME OVER")
win1.t1.Value := 0
ENDIF
ENDIF
IF a8=0
a4 = STR ( a4 )
a8 = STR ( a8 )
win1.b4.Caption := a8
win1.b8.Caption := a4
win1.b8.Show ( )
win1.b4.Hide ( )
a10 := win1.t1.value
a11 := a10+1
win1.t1.Value := a11
IF a11>=100
MyOut := MSGBOX("·ﬁœ  ⁄œÌ  «·„«∆… ‰ﬁ·… Õ«Ê· „—… «Œ—","GAME OVER")
win1.t1.Value := 0
ENDIF
ENDIF
IF a1=1 .and. a2=3 .and. a3=5 .and. a4=4 .and. a5=2 .and. a6=6 .and. a7=8 .and. a8=0 .and. a9=7
MyOut := MSGBOX("·ﬁœ √‰ÂÌ  «··⁄»… »‰Ã«Õ","·ﬁœ ›“ ")
ENDIF
IF a1=3 .and. a2=1 .and. a3=5 .and. a4=6 .and. a5=2 .and. a6=4 .and. a7=8 .and. a8=7 .and. a9=0
MyOut := MSGBOX("·ﬁœ √‰ÂÌ  «··⁄»… »‰Ã«Õ","·ﬁœ ›“ ")
ENDIF
IF a1=7 .and. a2=0 .and. a3=5 .and. a4=4 .and. a5=8 .and. a6=6 .and. a7=2.and. a8=3 .and. a9=1
MyOut := MSGBOX("·ﬁœ √‰ÂÌ  «··⁄»… »‰Ã«Õ","·ﬁœ ›“ ")
ENDIF
IF a1=0 .and. a2=7 .and. a3=5 .and. a4=6 .and. a5=8 .and. a6=4 .and. a7=2 .and. a8=1 .and. a9=3
MyOut := MSGBOX("·ﬁœ √‰ÂÌ  «··⁄»… »‰Ã«Õ","·ﬁœ ›“ ")
ENDIF
Return Nil
Proc pb5
a1 := win1.b1.caption
a2 := win1.b2.caption
a3 := win1.b3.caption
a4 := win1.b4.caption
a5 := win1.b5.caption
a6 := win1.b6.caption
a7 := win1.b7.caption
a8 := win1.b8.caption
a9 := win1.b9.caption
a1 = ALLTRIM ( a1 )
a2 = ALLTRIM ( a2 )
a3 = ALLTRIM ( a3 )
a4 = ALLTRIM ( a4 )
a5 = ALLTRIM ( a5 )
a6 = ALLTRIM ( a6 )
a7 = ALLTRIM ( a7 )
a8 = ALLTRIM ( a8 )
a9 = ALLTRIM ( a9 )
a1 = VAL ( a1 )
a2 = VAL ( a2 )
a3 = VAL ( a3 )
a4 = VAL ( a4 )
a5 = VAL ( a5 )
a6 = VAL ( a6 )
a7 = VAL ( a7 )
a8 = VAL ( a8 )
a9 = VAL ( a9 )
IF a2=0
a5 = STR ( a5 )
a2 = STR ( a2 )
win1.b2.Caption := a5
win1.b5.Caption := a2
win1.b2.Show ( )
win1.b5.Hide ( )
a10 := win1.t1.value
a11 := a10+1
win1.t1.Value := a11
IF a11>=100
MyOut := MSGBOX("·ﬁœ  ⁄œÌ  «·„«∆… ‰ﬁ·… Õ«Ê· „—… «Œ—","GAME OVER")
win1.t1.Value := 0
ENDIF
ENDIF
IF a3=0
a5 = STR ( a5 )
a3 = STR ( a3 )
win1.b3.Caption := a5
win1.b5.Caption := a3
win1.b3.Show ( )
win1.b5.Hide ( )
a10 := win1.t1.value
a11 := a10+1
win1.t1.Value := a11
IF a11>=100
MyOut := MSGBOX("·ﬁœ  ⁄œÌ  «·„«∆… ‰ﬁ·… Õ«Ê· „—… «Œ—","GAME OVER")
win1.t1.Value := 0
ENDIF
ENDIF
IF a1=0
a5 = STR ( a5 )
a1 = STR ( a1 )
win1.b5.Caption := a1
win1.b1.Caption := a5
win1.b1.Show ( )
win1.b5.Hide ( )
a10 := win1.t1.value
a11 := a10+1
win1.t1.Value := a11
IF a11>=100
MyOut := MSGBOX("·ﬁœ  ⁄œÌ  «·„«∆… ‰ﬁ·… Õ«Ê· „—… «Œ—","GAME OVER")
win1.t1.Value := 0
ENDIF
ENDIF
IF a1=1 .and. a2=3 .and. a3=5 .and. a4=4 .and. a5=2 .and. a6=6 .and. a7=8 .and. a8=0 .and. a9=7
MyOut := MSGBOX("·ﬁœ √‰ÂÌ  «··⁄»… »‰Ã«Õ","·ﬁœ ›“ ")
ENDIF
IF a1=3 .and. a2=1 .and. a3=5 .and. a4=6 .and. a5=2 .and. a6=4 .and. a7=8 .and. a8=7 .and. a9=0
MyOut := MSGBOX("·ﬁœ √‰ÂÌ  «··⁄»… »‰Ã«Õ","·ﬁœ ›“ ")
ENDIF
IF a1=7 .and. a2=0 .and. a3=5 .and. a4=4 .and. a5=8 .and. a6=6 .and. a7=2.and. a8=3 .and. a9=1
MyOut := MSGBOX("·ﬁœ √‰ÂÌ  «··⁄»… »‰Ã«Õ","·ﬁœ ›“ ")
ENDIF
IF a1=0 .and. a2=7 .and. a3=5 .and. a4=6 .and. a5=8 .and. a6=4 .and. a7=2 .and. a8=1 .and. a9=3
MyOut := MSGBOX("·ﬁœ √‰ÂÌ  «··⁄»… »‰Ã«Õ","·ﬁœ ›“ ")
ENDIF
Return Nil
Proc pb6
a1 := win1.b1.caption
a2 := win1.b2.caption
a3 := win1.b3.caption
a4 := win1.b4.caption
a5 := win1.b5.caption
a6 := win1.b6.caption
a7 := win1.b7.caption
a8 := win1.b8.caption
a9 := win1.b9.caption
a1 = ALLTRIM ( a1 )
a2 = ALLTRIM ( a2 )
a3 = ALLTRIM ( a3 )
a4 = ALLTRIM ( a4 )
a5 = ALLTRIM ( a5 )
a6 = ALLTRIM ( a6 )
a7 = ALLTRIM ( a7 )
a8 = ALLTRIM ( a8 )
a9 = ALLTRIM ( a9 )
a1 = VAL ( a1 )
a2 = VAL ( a2 )
a3 = VAL ( a3 )
a4 = VAL ( a4 )
a5 = VAL ( a5 )
a6 = VAL ( a6 )
a7 = VAL ( a7 )
a8 = VAL ( a8 )
a9 = VAL ( a9 )
IF a3=0
a6 = STR ( a6 )
a3 = STR ( a3 )
win1.b3.Caption := a6
win1.b6.Caption := a3
win1.b3.Show ( )
win1.b6.Hide ( )
a10 := win1.t1.value
a11 := a10+1
win1.t1.Value := a11
IF a11>=100
MyOut := MSGBOX("·ﬁœ  ⁄œÌ  «·„«∆… ‰ﬁ·… Õ«Ê· „—… «Œ—","GAME OVER")
win1.t1.Value := 0
ENDIF
ENDIF
IF a1=0
a6 = STR ( a6 )
a1 = STR ( a1 )
win1.b6.Caption := a1
win1.b1.Caption := a6
win1.b1.Show ( )
win1.b6.Hide ( )
a10 := win1.t1.value
a11 := a10+1
win1.t1.Value := a11
IF a11>=100
MyOut := MSGBOX("·ﬁœ  ⁄œÌ  «·„«∆… ‰ﬁ·… Õ«Ê· „—… «Œ—","GAME OVER")
win1.t1.Value := 0
ENDIF
ENDIF
IF a9=0
a6 = STR ( a6 )
a9 = STR ( a9 )
win1.b6.Caption := a9
win1.b9.Caption := a6
win1.b9.Show ( )
win1.b6.Hide ( )
a10 := win1.t1.value
a11 := a10+1
win1.t1.Value := a11
IF a11>=100
MyOut := MSGBOX("·ﬁœ  ⁄œÌ  «·„«∆… ‰ﬁ·… Õ«Ê· „—… «Œ—","GAME OVER")
win1.t1.Value := 0
ENDIF
ENDIF
IF a1=1 .and. a2=3 .and. a3=5 .and. a4=4 .and. a5=2 .and. a6=6 .and. a7=8 .and. a8=0 .and. a9=7
MyOut := MSGBOX("·ﬁœ √‰ÂÌ  «··⁄»… »‰Ã«Õ","·ﬁœ ›“ ")
ENDIF
IF a1=3 .and. a2=1 .and. a3=5 .and. a4=6 .and. a5=2 .and. a6=4 .and. a7=8 .and. a8=7 .and. a9=0
MyOut := MSGBOX("·ﬁœ √‰ÂÌ  «··⁄»… »‰Ã«Õ","·ﬁœ ›“ ")
ENDIF
IF a1=7 .and. a2=0 .and. a3=5 .and. a4=4 .and. a5=8 .and. a6=6 .and. a7=2.and. a8=3 .and. a9=1
MyOut := MSGBOX("·ﬁœ √‰ÂÌ  «··⁄»… »‰Ã«Õ","·ﬁœ ›“ ")
ENDIF
IF a1=0 .and. a2=7 .and. a3=5 .and. a4=6 .and. a5=8 .and. a6=4 .and. a7=2 .and. a8=1 .and. a9=3
MyOut := MSGBOX("·ﬁœ √‰ÂÌ  «··⁄»… »‰Ã«Õ","·ﬁœ ›“ ")
ENDIF
Return Nil
Proc pb7
a1 := win1.b1.caption
a2 := win1.b2.caption
a3 := win1.b3.caption
a4 := win1.b4.caption
a5 := win1.b5.caption
a6 := win1.b6.caption
a7 := win1.b7.caption
a8 := win1.b8.caption
a9 := win1.b9.caption
a1 = ALLTRIM ( a1 )
a2 = ALLTRIM ( a2 )
a3 = ALLTRIM ( a3 )
a4 = ALLTRIM ( a4 )
a5 = ALLTRIM ( a5 )
a6 = ALLTRIM ( a6 )
a7 = ALLTRIM ( a7 )
a8 = ALLTRIM ( a8 )
a9 = ALLTRIM ( a9 )
a1 = VAL ( a1 )
a2 = VAL ( a2 )
a3 = VAL ( a3 )
a4 = VAL ( a4 )
a5 = VAL ( a5 )
a6 = VAL ( a6 )
a7 = VAL ( a7 )
a8 = VAL ( a8 )
a9 = VAL ( a9 )
IF a8=0
a7 = STR ( a7 )
a8 = STR ( a8 )
win1.b8.Caption := a7
win1.b7.Caption := a8
win1.b8.Show ( )
win1.b7.Hide ( )
a10 := win1.t1.value
a11 := a10+1
win1.t1.Value := a11
IF a11>=100
MyOut := MSGBOX("·ﬁœ  ⁄œÌ  «·„«∆… ‰ﬁ·… Õ«Ê· „—… «Œ—","GAME OVER")
win1.t1.Value := 0
ENDIF
ENDIF
IF a9=0
a9 = STR ( a9 )
a7 = STR ( a7 )
win1.b9.Caption := a7
win1.b7.Caption := a9
win1.b9.Show ( )
win1.b7.Hide ( )
a10 := win1.t1.value
a11 := a10+1
win1.t1.Value := a11
IF a11>=100
MyOut := MSGBOX("·ﬁœ  ⁄œÌ  «·„«∆… ‰ﬁ·… Õ«Ê· „—… «Œ—","GAME OVER")
win1.t1.Value := 0
ENDIF
ENDIF
IF a3=0
a7 = STR ( a7 )
a3 = STR ( a3 )
win1.b7.Caption := a3
win1.b3.Caption := a7
win1.b3.Show ( )
win1.b7.Hide ( )
a10 := win1.t1.value
a11 := a10+1
win1.t1.Value := a11
IF a11>=100
MyOut := MSGBOX("·ﬁœ  ⁄œÌ  «·„«∆… ‰ﬁ·… Õ«Ê· „—… «Œ—","GAME OVER")
win1.t1.Value := 0
ENDIF
IF a11>=100
MyOut := MSGBOX("·ﬁœ  ⁄œÌ  «·„«∆… ‰ﬁ·… Õ«Ê· „—… «Œ—","GAME OVER")
win1.t1.Value := 0
ENDIF
ENDIF
IF a1=1 .and. a2=3 .and. a3=5 .and. a4=4 .and. a5=2 .and. a6=6 .and. a7=8 .and. a8=0 .and. a9=7
MyOut := MSGBOX("·ﬁœ √‰ÂÌ  «··⁄»… »‰Ã«Õ","·ﬁœ ›“ ")
ENDIF
IF a1=3 .and. a2=1 .and. a3=5 .and. a4=6 .and. a5=2 .and. a6=4 .and. a7=8 .and. a8=7 .and. a9=0
MyOut := MSGBOX("·ﬁœ √‰ÂÌ  «··⁄»… »‰Ã«Õ","·ﬁœ ›“ ")
ENDIF
IF a1=7 .and. a2=0 .and. a3=5 .and. a4=4 .and. a5=8 .and. a6=6 .and. a7=2.and. a8=3 .and. a9=1
MyOut := MSGBOX("·ﬁœ √‰ÂÌ  «··⁄»… »‰Ã«Õ","·ﬁœ ›“ ")
ENDIF
IF a1=0 .and. a2=7 .and. a3=5 .and. a4=6 .and. a5=8 .and. a6=4 .and. a7=2 .and. a8=1 .and. a9=3
MyOut := MSGBOX("·ﬁœ √‰ÂÌ  «··⁄»… »‰Ã«Õ","·ﬁœ ›“ ")
ENDIF
Return Nil
Proc pb8
a1 := win1.b1.caption
a2 := win1.b2.caption
a3 := win1.b3.caption
a4 := win1.b4.caption
a5 := win1.b5.caption
a6 := win1.b6.caption
a7 := win1.b7.caption
a8 := win1.b8.caption
a9 := win1.b9.caption
a1 = ALLTRIM ( a1 )
a2 = ALLTRIM ( a2 )
a3 = ALLTRIM ( a3 )
a4 = ALLTRIM ( a4 )
a5 = ALLTRIM ( a5 )
a6 = ALLTRIM ( a6 )
a7 = ALLTRIM ( a7 )
a8 = ALLTRIM ( a8 )
a9 = ALLTRIM ( a9 )
a1 = VAL ( a1 )
a2 = VAL ( a2 )
a3 = VAL ( a3 )
a4 = VAL ( a4 )
a5 = VAL ( a5 )
a6 = VAL ( a6 )
a7 = VAL ( a7 )
a8 = VAL ( a8 )
a9 = VAL ( a9 )
IF a7=0
a7 = STR ( a7 )
a8 = STR ( a8 )
win1.b8.Caption := a7
win1.b7.Caption := a8
win1.b7.Show ( )
win1.b8.Hide ( )
a10 := win1.t1.value
a11 := a10+1
win1.t1.Value := a11
IF a11>=100
MyOut := MSGBOX("·ﬁœ  ⁄œÌ  «·„«∆… ‰ﬁ·… Õ«Ê· „—… «Œ—","GAME OVER")
win1.t1.Value := 0
ENDIF
ENDIF
IF a4=0
a8 = STR ( a8 )
a4 = STR ( a4 )
win1.b4.Caption := a8
win1.b8.Caption := a4
win1.b4.Show ( )
win1.b8.Hide ( )
a10 := win1.t1.value
a11 := a10+1
win1.t1.Value := a11
IF a11>=100
MyOut := MSGBOX("·ﬁœ  ⁄œÌ  «·„«∆… ‰ﬁ·… Õ«Ê· „—… «Œ—","GAME OVER")
win1.t1.Value := 0
ENDIF
ENDIF
IF a1=1 .and. a2=3 .and. a3=5 .and. a4=4 .and. a5=2 .and. a6=6 .and. a7=8 .and. a8=0 .and. a9=7
MyOut := MSGBOX("·ﬁœ √‰ÂÌ  «··⁄»… »‰Ã«Õ","·ﬁœ ›“ ")
ENDIF
IF a1=3 .and. a2=1 .and. a3=5 .and. a4=6 .and. a5=2 .and. a6=4 .and. a7=8 .and. a8=7 .and. a9=0
MyOut := MSGBOX("·ﬁœ √‰ÂÌ  «··⁄»… »‰Ã«Õ","·ﬁœ ›“ ")
ENDIF
IF a1=7 .and. a2=0 .and. a3=5 .and. a4=4 .and. a5=8 .and. a6=6 .and. a7=2.and. a8=3 .and. a9=1
MyOut := MSGBOX("·ﬁœ √‰ÂÌ  «··⁄»… »‰Ã«Õ","·ﬁœ ›“ ")
ENDIF
IF a1=0 .and. a2=7 .and. a3=5 .and. a4=6 .and. a5=8 .and. a6=4 .and. a7=2 .and. a8=1 .and. a9=3
MyOut := MSGBOX("·ﬁœ √‰ÂÌ  «··⁄»… »‰Ã«Õ","·ﬁœ ›“ ")
ENDIF
Return Nil
Proc pb9
a1 := win1.b1.caption
a2 := win1.b2.caption
a3 := win1.b3.caption
a4 := win1.b4.caption
a5 := win1.b5.caption
a6 := win1.b6.caption
a7 := win1.b7.caption
a8 := win1.b8.caption
a9 := win1.b9.caption
a1 = ALLTRIM ( a1 )
a2 = ALLTRIM ( a2 )
a3 = ALLTRIM ( a3 )
a4 = ALLTRIM ( a4 )
a5 = ALLTRIM ( a5 )
a6 = ALLTRIM ( a6 )
a7 = ALLTRIM ( a7 )
a8 = ALLTRIM ( a8 )
a9 = ALLTRIM ( a9 )
a1 = VAL ( a1 )
a2 = VAL ( a2 )
a3 = VAL ( a3 )
a4 = VAL ( a4 )
a5 = VAL ( a5 )
a6 = VAL ( a6 )
a7 = VAL ( a7 )
a8 = VAL ( a8 )
a9 = VAL ( a9 )
IF a7=0
a9 = STR ( a9 )
a7 = STR ( a7 )
win1.b7.Caption := a9
win1.b9.Caption := a7
win1.b7.Show ( )
win1.b9.Hide ( )
a10 := win1.t1.value
a11 := a10+1
win1.t1.Value := a11
IF a11>=100
MyOut := MSGBOX("·ﬁœ  ⁄œÌ  «·„«∆… ‰ﬁ·… Õ«Ê· „—… «Œ—","GAME OVER")
win1.t1.Value := 0
ENDIF
ENDIF
IF a6=0
a6 = STR ( a6 )
a9 = STR ( a9 )
win1.b6.Caption := a9
win1.b9.Caption := a6
win1.b6.Show ( )
win1.b9.Hide ( )
a10 := win1.t1.value
a11 := a10+1
win1.t1.Value := a11
IF a11>=100
MyOut := MSGBOX("·ﬁœ  ⁄œÌ  «·„«∆… ‰ﬁ·… Õ«Ê· „—… «Œ—","GAME OVER")
win1.t1.Value := 0
ENDIF
ENDIF
IF a1=1 .and. a2=3 .and. a3=5 .and. a4=4 .and. a5=2 .and. a6=6 .and. a7=8 .and. a8=0 .and. a9=7
MyOut := MSGBOX("·ﬁœ √‰ÂÌ  «··⁄»… »‰Ã«Õ","·ﬁœ ›“ ")
ENDIF
IF a1=3 .and. a2=1 .and. a3=5 .and. a4=6 .and. a5=2 .and. a6=4 .and. a7=8 .and. a8=7 .and. a9=0
MyOut := MSGBOX("·ﬁœ √‰ÂÌ  «··⁄»… »‰Ã«Õ","·ﬁœ ›“ ")
ENDIF
IF a1=7 .and. a2=0 .and. a3=5 .and. a4=4 .and. a5=8 .and. a6=6 .and. a7=2.and. a8=3 .and. a9=1
MyOut := MSGBOX("·ﬁœ √‰ÂÌ  «··⁄»… »‰Ã«Õ","·ﬁœ ›“ ")
ENDIF
IF a1=0 .and. a2=7 .and. a3=5 .and. a4=6 .and. a5=8 .and. a6=4 .and. a7=2 .and. a8=1 .and. a9=3
MyOut := MSGBOX("·ﬁœ √‰ÂÌ  «··⁄»… »‰Ã«Õ","·ﬁœ ›“ ")
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_NUNPUZLLE
START DOUBLES
Return
*-------------------------------------------------------------------*

*---------------------------------------------------------------------------*
* Time : 02:57:56    Date : 10/29/2013
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2013 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2013.10.15
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
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


Resistance R_11_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_11_19art1() code
Public nA
nA := 100
Public nX
nX := 0
Public nZ
nZ := 0
if !iswindowdefined( win1 )
DEFINE WINDOW  win1 ;
AT 10 ,10 ;
WIDTH 1117 ;
HEIGHT 576 ;
ICON "PWCTICON" ;
TITLE "»”„ «··Â  «·—Õ„‰ «·—ÕÌ„ " ;
MAIN ;
BACKCOLOR {236,233,216} 
@ 73 ,979 RADIOGROUP Op1;
OPTIONS { "(0)","(1)","(2)","(3)","(4)","(5)","(6)","(7)","(8)","(9)","(10)","(11)","(12)"};
ON CHANGE Change()  ;
WIDTH 70 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 33 ,965 LABEL lbl1 ;
VALUE "Õœœ «·ÃœÊ·  " ;
WIDTH 105 ;
HEIGHT 34 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 91 ,758 BUTTONEX btn1;
CAPTION "";
BACKCOLOR {236,233,216};
ON CLICK Bb(1)  ;
WIDTH 144 HEIGHT 36 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 139 ,758 BUTTONEX btn2;
CAPTION " ";
ON CLICK Bb(2)  ;
WIDTH 144 HEIGHT 36 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 186 ,758 BUTTONEX btn3;
CAPTION " ";
ON CLICK Bb(3)  ;
WIDTH 144 HEIGHT 36 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 232 ,758 BUTTONEX btn4;
CAPTION " ";
ON CLICK Bb(4)  ;
WIDTH 144 HEIGHT 36 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 278 ,758 BUTTONEX btn5;
CAPTION " ";
ON CLICK Bb(5)  ;
WIDTH 144 HEIGHT 36 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 324 ,758 BUTTONEX btn6;
CAPTION " ";
ON CLICK Bb(6)  ;
WIDTH 144 HEIGHT 36 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 91 ,308 BUTTONEX btn7;
CAPTION " ";
ON CLICK Bb(7)  ;
WIDTH 144 HEIGHT 36 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 138 ,308 BUTTONEX btn8;
CAPTION " ";
ON CLICK Bb(8)  ;
WIDTH 144 HEIGHT 36 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 185 ,308 BUTTONEX btn9;
CAPTION " ";
ON CLICK Bb(9)  ;
WIDTH 144 HEIGHT 36 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 232 ,308 BUTTONEX btn10;
CAPTION " ";
ON CLICK Bb(10)  ;
WIDTH 144 HEIGHT 36 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 279 ,308 BUTTONEX btn11;
CAPTION " ";
ON CLICK Bb(11)  ;
WIDTH 144 HEIGHT 36 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 326 ,308 BUTTONEX btn12;
CAPTION " ";
ON CLICK Bb(12)  ;
WIDTH 144 HEIGHT 36 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 88 ,538 BUTTONEX btn13;
CAPTION " ";
ON CLICK Bb(0)  ;
WIDTH 166 HEIGHT 39 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 292 ,453 LABEL lbl2 ;
VALUE " " ;
WIDTH 303 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
CENTERALIGN ;
FONTCOLOR {255,0,0}
@ 128 ,538 TEXTBOX text1;
HEIGHT 42 ;
WIDTH 54 ;
FONT "Arial" SIZE 20 ;
BOLD ;
BACKCOLOR {255,255,128} ;
FONTCOLOR {0,0,0} ;
NUMERIC 
@ 128 ,591 TEXTBOX text2;
HEIGHT 42 ;
WIDTH 113 ;
FONT "Arial" SIZE 20 ;
BOLD ;
BACKCOLOR {255,255,128} ;
FONTCOLOR {0,0,0} 
@ 180 ,605 LABEL lbl3 ;
VALUE "= " ;
WIDTH 38 ;
HEIGHT 32 ;
FONT "Arial" SIZE 24  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 203 ,538 LABEL lbl4 ;
VALUE " " ;
WIDTH 165 ;
HEIGHT 83 ;
FONT "Arial" SIZE 60  ;
BACKCOLOR {255,255,128} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 378 ,309 LABEL lbl5 ;
VALUE "Õ«Ê·  –ﬂ— «·‰« Ã ﬁ»· ÿ·»Â ... ﬁœ Ì”«⁄œﬂ ⁄·Ï ﬁÊ… «·Õ›Ÿ Ê”—⁄ Â" ;
WIDTH 593 ;
HEIGHT 55 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 4 ,7 LISTBOX list1;
WIDTH 291 ;
HEIGHT 516 ;
FONT "Arial" SIZE 25 ;
BACKCOLOR {255,255,128} ;
FONTCOLOR {0,0,0}
@ 328 ,598 LABEL lbl7 ;
VALUE "⁄œœ «·‰ﬁ—«  " ;
WIDTH 104 ;
HEIGHT 38 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,128} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 328 ,538 LABEL L0 ;
VALUE "0 " ;
WIDTH 60 ;
HEIGHT 38 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,128} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 412 ,307 LABEL lbl20 ;
VALUE "’„„  Â–« «·»—‰«„Ã · ÿ»Ìﬁ »⁄÷ „«  ⁄·„  ›Ì œ—«” Ì ·„‰Õ…   ﬁ‰Ì…  «·»—„Ã… »œÊ‰ ﬂÊœ  ." ;
WIDTH 601 ;
HEIGHT 53 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 451 ,306 LABEL lbl21 ;
VALUE "« „‰Ï «‰ ÌÕÊ“ ⁄·Ï —÷«ﬂ„ ... Ê«‰  ” ›ÌœÊ „‰ «·»—‰«„Ã " ;
WIDTH 608 ;
HEIGHT 33 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 413 ,935 BUTTONEX btn14;
CAPTION "«€‹‹‹‹·«ﬁ ";
ON CLICK Close()  ;
WIDTH 151 HEIGHT 107 ;
FONT "Arial" SIZE 20 ;
TOOLTIP ""
@ 492 ,560 LABEL lbl22 ;
VALUE "‰”Œ…  Ã—Ì»Ì… " ;
WIDTH 141 ;
HEIGHT 33 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
BORDER ;
FONTCOLOR {0,0,0}
@ 7 ,307 LABEL lbl23 ;
VALUE "«·—Ã«¡  ÕœÌœ —ﬁ„ «·ÃœÊ· " ;
WIDTH 594 ;
HEIGHT 79 ;
FONT "Arial" SIZE 35  ;
BACKCOLOR {236,233,216} ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
END WINDOW
ACTIVATE WINDOW win1
EndIF
procedure Change()
nA := win1.Op1.Value
nA := nA-1
IF nA = 0
win1.lbl2.Value := "«Ì ⁄œœ Ì÷—» ›Ì «·’›—  «·‰« Ã ’›— œ«∆„«"
ELSEIF nA=1
win1.lbl2.Value := "«Ì ⁄œœ Ì÷—» ›Ì «·Ê«Õœ  «·‰« Ã ‰›” «·⁄œœ  œ«∆„«"
ELSE
win1.lbl2.Value := ""
ENDIF
IF nA = 1
win1.lbl2.Value := "«Ì ⁄œœ Ì÷—» ›Ì «·Ê«Õœ  «·‰« Ã ‰›” «·⁄œœ  œ«∆„«"
ENDIF
cA = STR ( nA )
cA = ALLTRIM ( cA )
win1.btn1.Caption := "  ="+" 1" + "X"+cA
win1.btn2.Caption := "  ="+" 2" + "X" +cA
win1.btn3.Caption := "  ="+" 3" + "X"  +cA
win1.btn4.Caption := "  ="+" 4" + "X"+cA
win1.btn5.Caption := "  ="+" 5" + "X"   +cA
win1.btn6.Caption := "  ="+" 6" + "X"  +cA
win1.btn7.Caption := "  ="+" 7" + "X"  +cA
win1.btn8.Caption := "  ="+" 8" + "X" +cA
win1.btn9.Caption := "  ="+" 9" + "X"+cA
win1.btn10.Caption := "  ="+"10" + "X" +cA
win1.btn11.Caption := "  ="+"11" + "X" +cA
win1.btn12.Caption := "  ="+"12" + "X" +cA
win1.btn13.Caption := "  ="+"0 " + "X" +cA
win1.lbl4.Value := ""
win1.text1.Value := ""
win1.text2.Value := ""
win1.list1.DeleteAllItems ( )
FOR x = 0 TO 12 STEP 1
nZ := nA * X
cX = STR ( X )
cZ = STR ( nZ )
cz = ALLTRIM ( cZ )
cX = ALLTRIM ( cX )
IF x >9
win1.list1.AddItem ( cA + "  X  "+cX+ "  =    " +cZ )
ELSE
win1.list1.AddItem ( cA + "    X  "+cX+ "  =    " +cZ )
ENDIF
Next
win1.lbl23.Value := "«‰  «·«‰ ›Ì ÃœÊ·      " + cA
return
Proc Bb( nx )
IF nA=100
MyOut := MSGBOX("«·—Ã«¡  ÕœÌœ   —ﬁ„ «·ÃœÊ· «·„ÿ·Ê» ","    ‰»Ì…  ")
ELSE
nZ := nA * nX
win1.text1.Value := nZ
cA = STR ( nA )
cX = STR ( nX )
cA = ALLTRIM ( cA )
cX = ALLTRIM ( cX )
win1.text2.Value := "=" +cX  +  "X"   +   cA
cZ = STR ( nZ )
cZ = ALLTRIM ( cZ )
win1.lbl4.Value := cZ
Lx1 := win1.L0.Value
Lx2 = VAL ( Lx1 )
Lx2 := Lx2 + 1
Lx1 = STR ( Lx2 )
Lx1 = ALLTRIM ( Lx1 )
win1.L0.Value := Lx1
ENDIF
Return Nil
procedure Close()
Win1.Release ( )
return

End Of Resistance

INIT PROCEDURE Init_11
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Public nA",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","nA = 100",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Public nX",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","nX = 0",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Public nZ",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","nZ = 0",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window            ⁄—Ì› «·‰«›–…i ( win1 ) ,  «·⁄‰Ê«‰ Title: '»”„ «··Â  «·—Õ„‰ «·—ÕÌ„ '",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties       Œ’«∆’ «·‰«›–…",12,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New RadioGroup       ⁄—Ì› „Ã„Ê⁄… √“—«— «· ÕÊÌ·i ( Op1 ) ,«·ŒÌ«—«  Options : { '(0)','(1)','(2)','(3)','(4)','(5)','(6)','(7)','(8)','(9)','(10)','(11)','(12)'}",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action Change",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Properties          «·Œ’«∆’",20,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label                ⁄—Ì› „—»⁄ «· ”„Ì… ( lbl1 ) ,  «·⁄‰Ê«‰ Caption : 'Õœœ «·ÃœÊ·  '",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties   Œ’«∆’ „—»⁄ «· ”„Ì…",26,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button         ⁄—Ì› «·“—i ( btn1 ) ,  «·⁄‰Ê«‰ Caption : ''",31,33)
SS_ESASTEP("Circuits\Main\Main\Main","Event  «·ÕœÀ :  ON  ›Ì  CLICK :   Action  «·≈Ã—«¡  Bb(1)",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties    Œ’«∆’ «·“—",35,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button         ⁄—Ì› «·“—i ( btn2 ) ,  «·⁄‰Ê«‰ Caption : ' '",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Event  «·ÕœÀ :  ON  ›Ì  CLICK :   Action  «·≈Ã—«¡  Bb(2)",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties    Œ’«∆’ «·“—",41,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button         ⁄—Ì› «·“—i ( btn3 ) ,  «·⁄‰Ê«‰ Caption : ' '",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Event  «·ÕœÀ :  ON  ›Ì  CLICK :   Action  «·≈Ã—«¡  Bb(3)",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties    Œ’«∆’ «·“—",47,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button         ⁄—Ì› «·“—i ( btn4 ) ,  «·⁄‰Ê«‰ Caption : ' '",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Event  «·ÕœÀ :  ON  ›Ì  CLICK :   Action  «·≈Ã—«¡  Bb(4)",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties    Œ’«∆’ «·“—",53,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button         ⁄—Ì› «·“—i ( btn5 ) ,  «·⁄‰Ê«‰ Caption : ' '",56,57)
SS_ESASTEP("Circuits\Main\Main\Main","Event  «·ÕœÀ :  ON  ›Ì  CLICK :   Action  «·≈Ã—«¡  Bb(5)",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties    Œ’«∆’ «·“—",59,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button         ⁄—Ì› «·“—i ( btn6 ) ,  «·⁄‰Ê«‰ Caption : ' '",62,63)
SS_ESASTEP("Circuits\Main\Main\Main","Event  «·ÕœÀ :  ON  ›Ì  CLICK :   Action  «·≈Ã—«¡  Bb(6)",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties    Œ’«∆’ «·“—",65,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button         ⁄—Ì› «·“—i ( btn7 ) ,  «·⁄‰Ê«‰ Caption : ' '",68,69)
SS_ESASTEP("Circuits\Main\Main\Main","Event  «·ÕœÀ :  ON  ›Ì  CLICK :   Action  «·≈Ã—«¡  Bb(7)",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties    Œ’«∆’ «·“—",71,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button         ⁄—Ì› «·“—i ( btn8 ) ,  «·⁄‰Ê«‰ Caption : ' '",74,75)
SS_ESASTEP("Circuits\Main\Main\Main","Event  «·ÕœÀ :  ON  ›Ì  CLICK :   Action  «·≈Ã—«¡  Bb(8)",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties    Œ’«∆’ «·“—",77,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button         ⁄—Ì› «·“—i ( btn9 ) ,  «·⁄‰Ê«‰ Caption : ' '",80,81)
SS_ESASTEP("Circuits\Main\Main\Main","Event  «·ÕœÀ :  ON  ›Ì  CLICK :   Action  «·≈Ã—«¡  Bb(9)",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties    Œ’«∆’ «·“—",83,85)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button         ⁄—Ì› «·“—i ( btn10 ) ,  «·⁄‰Ê«‰ Caption : ' '",86,87)
SS_ESASTEP("Circuits\Main\Main\Main","Event  «·ÕœÀ :  ON  ›Ì  CLICK :   Action  «·≈Ã—«¡  Bb(10)",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties    Œ’«∆’ «·“—",89,91)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button         ⁄—Ì› «·“—i ( btn11 ) ,  «·⁄‰Ê«‰ Caption : ' '",92,93)
SS_ESASTEP("Circuits\Main\Main\Main","Event  «·ÕœÀ :  ON  ›Ì  CLICK :   Action  «·≈Ã—«¡  Bb(11)",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties    Œ’«∆’ «·“—",95,97)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button         ⁄—Ì› «·“—i ( btn12 ) ,  «·⁄‰Ê«‰ Caption : ' '",98,99)
SS_ESASTEP("Circuits\Main\Main\Main","Event  «·ÕœÀ :  ON  ›Ì  CLICK :   Action  «·≈Ã—«¡  Bb(12)",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties    Œ’«∆’ «·“—",101,103)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button         ⁄—Ì› «·“—i ( btn13 ) ,  «·⁄‰Ê«‰ Caption : ' '",104,105)
SS_ESASTEP("Circuits\Main\Main\Main","Event  «·ÕœÀ :  ON  ›Ì  CLICK :   Action  «·≈Ã—«¡  Bb(0)",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties    Œ’«∆’ «·“—",107,109)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label                ⁄—Ì› „—»⁄ «· ”„Ì… ( lbl2 ) ,  «·⁄‰Ê«‰ Caption : ' '",110,111)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties   Œ’«∆’ „—»⁄ «· ”„Ì…",112,117)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox           ⁄—Ì› „—»¯⁄ «·‰’i ( text1  )",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties     Œ’«∆’ „—»¯⁄ «·‰’",119,126)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox           ⁄—Ì› „—»¯⁄ «·‰’i ( text2  )",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties     Œ’«∆’ „—»¯⁄ «·‰’",128,134)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label                ⁄—Ì› „—»⁄ «· ”„Ì… ( lbl3 ) ,  «·⁄‰Ê«‰ Caption : '= '",135,136)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties   Œ’«∆’ „—»⁄ «· ”„Ì…",137,141)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label                ⁄—Ì› „—»⁄ «· ”„Ì… ( lbl4 ) ,  «·⁄‰Ê«‰ Caption : ' '",142,143)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties   Œ’«∆’ „—»⁄ «· ”„Ì…",144,150)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label                ⁄—Ì› „—»⁄ «· ”„Ì… ( lbl5 ) ,  «·⁄‰Ê«‰ Caption : 'Õ«Ê·  –ﬂ— «·‰« Ã ﬁ»· ÿ·»Â ... ﬁœ Ì”«⁄œﬂ ⁄·Ï ﬁÊ… «·Õ›Ÿ Ê”—⁄ Â'",151,152)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties   Œ’«∆’ „—»⁄ «· ”„Ì…",153,158)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox        ⁄—Ì› „—»⁄ «·ﬁ«∆„…i  ( list1 )",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties    Œ’«∆’ „—»¯⁄ «·ﬁ«∆„…",160,164)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label                ⁄—Ì› „—»⁄ «· ”„Ì… ( lbl7 ) ,  «·⁄‰Ê«‰ Caption : '⁄œœ «·‰ﬁ—«  '",165,166)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties   Œ’«∆’ „—»⁄ «· ”„Ì…",167,172)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label                ⁄—Ì› „—»⁄ «· ”„Ì… ( L0 ) ,  «·⁄‰Ê«‰ Caption : '0 '",173,174)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties   Œ’«∆’ „—»⁄ «· ”„Ì…",175,180)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label                ⁄—Ì› „—»⁄ «· ”„Ì… ( lbl20 ) ,  «·⁄‰Ê«‰ Caption : '’„„  Â–« «·»—‰«„Ã · ÿ»Ìﬁ »⁄÷ „«  ⁄·„  ›Ì œ—«” Ì ·„‰Õ…   ﬁ‰Ì…  «·»—„Ã… »œÊ‰ ﬂÊœ  .'",181,182)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties   Œ’«∆’ „—»⁄ «· ”„Ì…",183,188)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label                ⁄—Ì› „—»⁄ «· ”„Ì… ( lbl21 ) ,  «·⁄‰Ê«‰ Caption : '« „‰Ï «‰ ÌÕÊ“ ⁄·Ï —÷«ﬂ„ ... Ê«‰  ” ›ÌœÊ „‰ «·»—‰«„Ã '",189,190)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties   Œ’«∆’ „—»⁄ «· ”„Ì…",191,196)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button         ⁄—Ì› «·“—i ( btn14 ) ,  «·⁄‰Ê«‰ Caption : '«€‹‹‹‹·«ﬁ '",197,198)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Close",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties    Œ’«∆’ «·“—",200,202)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label                ⁄—Ì› „—»⁄ «· ”„Ì… ( lbl22 ) ,  «·⁄‰Ê«‰ Caption : '‰”Œ…  Ã—Ì»Ì… '",203,204)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties   Œ’«∆’ „—»⁄ «· ”„Ì…",205,211)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label                ⁄—Ì› „—»⁄ «· ”„Ì… ( lbl23 ) ,  «·⁄‰Ê«‰ Caption : '«·—Ã«¡  ÕœÌœ —ﬁ„ «·ÃœÊ· '",212,213)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties   Œ’«∆’ „—»⁄ «· ”„Ì…",214,219)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window             ‰Â«Ì… «·‰«›–…",220,221)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window           ‰‘Ìÿ «·‰«›–…",222,224)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Change - Event : CHANGE",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","nA = win1.Op1.Value          ÿ»ﬁ… „Ã„Ê⁄… √“—«— «· ÕÊÌ·",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","nA = nA-1",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nA = 0 )                  ≈–«",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl2.Value := '«Ì ⁄œœ Ì÷—» ›Ì «·’›—  «·‰« Ã ’›— œ«∆„«'",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nA=1 )   Ê≈·« ≈–«",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl2.Value := '«Ì ⁄œœ Ì÷—» ›Ì «·Ê«Õœ  «·‰« Ã ‰›” «·⁄œœ  œ«∆„«'      iÿ»ﬁ… „—»⁄ «· ”„Ì…",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE            Ê≈·«",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl2.Value := ''      iÿ»ﬁ… „—»⁄ «· ”„Ì…",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT   ‰Â«Ì… «·⁄»«—…",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nA = 1 )",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl2.Value := '«Ì ⁄œœ Ì÷—» ›Ì «·Ê«Õœ  «·‰« Ã ‰›” «·⁄œœ  œ«∆„«'",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","cA = CONVERT nA TO STRING",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","cA = All Trim cA",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Caption := '  ='+' 1' + 'X'+cA",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn2.Caption := '  ='+' 2' + 'X' +cA",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn3.Caption := '  ='+' 3' + 'X'  +cA",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn4.Caption := '  ='+' 4' + 'X'+cA",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn5.Caption := '  ='+' 5' + 'X'   +cA",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn6.Caption := '  ='+' 6' + 'X'  +cA",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn7.Caption := '  ='+' 7' + 'X'  +cA",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn8.Caption := '  ='+' 8' + 'X' +cA",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn9.Caption := '  ='+' 9' + 'X'+cA",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn10.Caption := '  ='+'10' + 'X' +cA",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn11.Caption := '  ='+'11' + 'X' +cA",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn12.Caption := '  ='+'12' + 'X' +cA",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn13.Caption := '  ='+'0 ' + 'X' +cA",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl4.Value := ''",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := ''",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := ''",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 0 To 12 Step 1)",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","nZ = nA * X",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","cX = CONVERT X TO STRING",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","cZ = CONVERT nZ TO STRING",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","cz = All Trim cZ",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","cX = All Trim cX",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( x >9 )",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( cA + '  X  '+cX+ '  =    ' +cZ )",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( cA + '    X  '+cX+ '  =    ' +cZ )",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl23.Value := '«‰  «·«‰ ›Ì ÃœÊ·      ' + cA      iÿ»ﬁ… „—»⁄ «· ”„Ì…",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure             ⁄—Ì› «·≈Ã—«¡i   Bb( nx )",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nA=100 )                  ≈–«",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message   ⁄—÷ «·—”«·…i  '«·—Ã«¡  ÕœÌœ   —ﬁ„ «·ÃœÊ· «·„ÿ·Ê» '   Title  «·⁄‰Ê«‰i  '    ‰»Ì…  '  Type  «·‰Ê⁄i : Message Box",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE            Ê≈·«",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","nZ = nA * nX",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := nZ",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","cA = CONVERT nA TO STRING",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","cX = CONVERT nX TO STRING",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","cA = All Trim cA",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","cX = All Trim cX",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := '=' +cX  +  'X'   +   cA",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","cZ = CONVERT nZ TO STRING",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","cZ = All Trim cZ",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl4.Value := cZ",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","Lx1 = win1.L0.Value",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","Lx2 = CONVERT Lx1 TO Numeric",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","Lx2 = Lx2 + 1",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","Lx1 = CONVERT Lx2 TO STRING",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","Lx1 = All Trim Lx1",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","win1.L0.Value := Lx1",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT   ‰Â«Ì… «·⁄»«—…",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure    ‰Â«Ì… «·≈Ã—«¡",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Close ( Event : CLICK )",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","Win1.Release ( )",294,294)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",295,295)
Return
*-------------------------------------------------------------------*

*---------------------------------------------------------------------------*
* Time : 13:51:07    Date : 10/11/2010
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


Resistance R_DJARDIMESSAOUD_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_DJARDIMESSAOUD_15speed1() code
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 996 ;
HEIGHT 535 ;
ICON "PWCTICON" ;
MAIN ;
NOSIZE ;
NOCAPTION ;
BACKCOLOR {236,233,216} 

win1.Maximize ( )
@ 178 ,582 LABEL lbl1 ;
VALUE "«”„ «·„” Œœ„" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 270 ,582 LABEL lbl2 ;
VALUE "ﬂ·„… «·„—Ê—" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 18 ,238 LABEL lbl3 ;
VALUE "√Â·« »ﬂ„ ›Ì ‰Ÿ«„  ‘€Ì· „”⁄Êœ" ;
WIDTH 465 ;
HEIGHT 56 ;
FONT "Arial" SIZE 28  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 401 ,81 BUTTONEX btn1;
CAPTION "«·Œ—ÊÃ";
ON CLICK win1.release()  ;
WIDTH 102 HEIGHT 34 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 352 ,560 BUTTONEX btn2;
CAPTION "œŒÊ·";
ON CLICK myentre()  ;
WIDTH 100 HEIGHT 34 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 181 ,263 TEXTBOX text1;
HEIGHT 32 ;
WIDTH 292 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 264 ,264 TEXTBOX text2;
HEIGHT 28 ;
WIDTH 293 ;
FONT "Arial" SIZE 12 ;
PASSWORD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1

Proc myabout
Return Nil
Proc myentre
name := "pwct"
pass := "pwct"
name2 := win1.text1.Value
pass2 := win1.text2.Value
IF name = name2
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 993 ;
HEIGHT 767 ;
ICON "PWCTICON" ;
MODAL ;
NOCAPTION ;
BACKCOLOR {236,233,216} 

win2.Maximize ( )
@ 12 ,30 IMAGE image1;
PICTURE "NOTEPAD.ICO";
ON CLICK mynote()  ;
WIDTH 65 HEIGHT 65
@ 79 ,31 LABEL lblpad ;
VALUE "»—‰«„Ã «·„›ﬂ—…" ;
WIDTH 59 ;
HEIGHT 18 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 114 ,29 IMAGE image2;
PICTURE "nav.ico";
ON CLICK myinternet()  ;
WIDTH 59 HEIGHT 69
@ 192 ,14 LABEL lblnav ;
VALUE "»—‰«„Ã „ ’›Õ «·≈‰ —‰ " ;
WIDTH 101 ;
HEIGHT 23 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 232 ,22 IMAGE image3;
PICTURE "exe.ico";
ON CLICK myfile()  ;
WIDTH 72 HEIGHT 78
@ 316 ,16 LABEL lblexe ;
VALUE "»—‰«„Ã „‘€· «·„·›« " ;
WIDTH 83 ;
HEIGHT 17 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 681 ,831 BUTTONEX btn1;
CAPTION "Œ‹‹‹‹—ÊÃ";
ON CLICK myby()  ;
WIDTH 118 HEIGHT 45 ;
FONT "Arial" SIZE 25 ;
TOOLTIP ""
DEFINE TOOLBAR Toolbar1;
BUTTONSIZE 136 , 28 ;
BOLD ;
FLAT ;
BOTTOM 

BUTTON toolbarbtn1;
CAPTION «»œ√ ;
PICTURE "m.ico" ;
ON CLICK mystart()  ;
TOOLTIP "" ;
AUTOSIZE 

END TOOLBAR

@ 601 ,320 LABEL lbltime ;
VALUE "" ;
WIDTH 220 ;
HEIGHT 47 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action mytimer()
END WINDOW

ACTIVATE WINDOW win2

ELSE
MyOut := MSGSTOP("«”„ «·„” Œœ„ «·–Ì √œŒ· Â Œ«ÿ∆ ° «·≈”„ «·’ÕÌÕ ÂÊ : pwct ","Œÿ√")
ENDIF
IF pass2 = pass
ELSE
MyOut := MSGSTOP("ﬂ·„… «·„—Ê— Œ«ÿ∆…°«·ﬂ·„… «·’ÕÌÕ… ÂÌ : pwct","Oooops!!")
ENDIF
win1.Release ( )
Proc mynote
DEFINE WINDOW winpad ;
AT 10 ,10 ;
WIDTH 650 ;
HEIGHT 400 ;
TITLE "PWCT Pad" ;
MODAL ;
NOSIZE ;
BACKCOLOR {236,233,216} 

winpad.Center ( )
@ 1 ,1 EDITBOX edit1;
WIDTH 640 ;
HEIGHT 308;
FONT "Arial" SIZE 11 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 323 ,15 BUTTONEX btn1;
CAPTION "Õ›Ÿ «·‰’";
ON CLICK mysave()  ;
WIDTH 102 HEIGHT 31 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 322 ,136 BUTTONEX btn2;
CAPTION "› Õ ‰’";
ON CLICK myopen()  ;
WIDTH 99 HEIGHT 33 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 325 ,535 BUTTONEX btn3;
CAPTION "Œ—ÊÃ";
ON CLICK winpad.release()  ;
WIDTH 100 HEIGHT 34 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 323 ,246 BUTTONEX btn4;
CAPTION " ⁄œÌ· «·Œÿ";
ON CLICK myfont()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW winpad

Return Nil
Proc myby
MyOut := MSGYESNO("Â·  —Ìœ Õﬁ« ≈€·«ﬁ «·‰Ÿ«„ Ê «·Œ—ÊÃ ø","≈€·«ﬁ")
IF MyOut = true
win1.Release ( )
win2.Release ( )
ENDIF
IF MyOut = false
Return 0
ENDIF
Return Nil
Proc mystart
DEFINE WINDOW win4 ;
AT 10 ,10 ;
WIDTH 349 ;
HEIGHT 348 ;
ICON "PWCTICON" ;
TITLE "≈»œ√" ;
MODAL ;
NOSIZE ;
BACKCOLOR {236,233,216} 

win4.Center ( )
@ 6 ,7 BUTTONEX btn1;
CAPTION "»—‰«„Ã «·„›ﬂ—…";
ON CLICK mynote()  ;
WIDTH 160 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 62 ,7 BUTTONEX btn2;
CAPTION "»—‰«„Ã «·„ ’›Õ";
ON CLICK myinternet()  ;
WIDTH 160 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 118 ,7 BUTTONEX btn3;
CAPTION "»—‰«„Ã „‘€· «·„·›« ";
ON CLICK myfile()  ;
WIDTH 160 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 92 ,184 BUTTONEX btn4;
CAPTION "«·Œ—ÊÃ „‰ «·‰Ÿ«„";
ON CLICK myby()  ;
WIDTH 154 HEIGHT 31 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 174 ,6 BUTTONEX btn5;
CAPTION "ÕÊ·...";
ON CLICK mymouse()  ;
WIDTH 161 HEIGHT 30 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 264 ,195 BUTTONEX btn6;
CAPTION "«·Œ—ÊÃ „‰ “— «»œ√";
ON CLICK win4.release()  ;
WIDTH 138 HEIGHT 33 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win4

Return Nil
Proc mysave
Messaoud := winpad.edit1.Value
PutFile := PutFile ( { {"„·› ‰’","*.txt"} } , ;
" PwctPad : Õ›Ÿ „·› " , ;
, ;
, ;
)
CheckFile := File(PutFile)
IF CheckFile
MyPad := MSGOKCANCEL("«·„·› „ÊÃÊœ ”«»ﬁ«°Â·  —Ìœ «·ﬂ «»… ›ÊﬁÂ ø","«·„·› „ÊÃÊœ ”«»ﬁ«")
IF MyPad = false
Return 0
ENDIF
ENDIF
RPWI_TH = FCREATE(PutFile,0)
FWRITE(RPWI_TH,Messaoud)
FCLOSE(RPWI_TH)
Return Nil
Proc myopen
GetFile := GetFile ( { {"„·› ‰’","*.txt"} } , ;
" PWCT Pad : › Õ „·› " , ;
, ;
, ;
)
dido = MEMOREAD ( GetFile )
winpad.edit1.Value := dido
Return Nil
Proc myfont
GetFont := GetFont ( "arial" , ;
9 , ;
.F. , ;
.F. , ;
{0,0,0} , ;
.F. , ;
.F. , ;
)
FontName      := getfont[1]
FontSize      := getfont[2]
Fontbold      := getfont[3]
FontItalic    := getfont[4]
FontColor     := getfont[5]
FontUnderline := Getfont[6]
FontStrickOut := getfont[7]
FontCharset   := getfont[8]
winpad.edit1.FontName := fontname
winpad.edit1.FontSize := fontsize
winpad.edit1.FontColor := fontcolor
Return Nil
Proc myinternet
DEFINE WINDOW winnav ;
AT 10 ,10 ;
WIDTH 766 ;
HEIGHT 525 ;
TITLE "PWCT Navigator" ;
MODAL ;
NOSIZE ;
BACKCOLOR {236,233,216} 

winnav.Center ( )
@ 10 ,10 TEXTBOX textnav;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK ""
@ 8 ,224 BUTTONEX btngo;
CAPTION "«‰ÿ·ﬁ!!";
ON CLICK mygo()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 7 ,440 BUTTONEX btnRef;
CAPTION " ÕœÌÀ";
ON CLICK myref()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 8 ,332 BUTTONEX btnStop;
CAPTION " Êﬁ›";
ON CLICK mystop()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 6 ,650 BUTTONEX btnexit;
CAPTION "Œ‹‹—ÊÃ";
ON CLICK winnav.release()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 7 ,544 BUTTONEX btnhome;
CAPTION "«·—∆Ì”Ì…";
ON CLICK myhome()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
Public oActiveX
oActiveX := TActiveX():New( "Winnav", "Shell.Explorer.2" , 45 , 2 , 750 , 437)
oActiveX:Load()
END WINDOW

ACTIVATE WINDOW winnav

Return Nil
Proc mygo
didonav := winnav.textnav.Value
oActiveX:OOLE:navigate ( didonav )
Return Nil
Proc myref
oActiveX:Refresh ( )
Return Nil
Proc mystop
oActiveX:OOLE:stop ( )
Return Nil
Proc myhome
oActiveX:OOLE:navigate ( "www.pwct.p2h.info/vb/index.php" )
Return Nil
Proc myfile
DEFINE WINDOW winfiles ;
AT 10 ,10 ;
WIDTH 215 ;
HEIGHT 400 ;
TITLE "„‘€· «·„·›« " ;
MODAL ;
NOSIZE ;
BACKCOLOR {0,128,0} 

winfiles.Center ( )
@ 57 ,52 BUTTONEX btnchose;
CAPTION "«Œ Ì«— «·„·›";
ON CLICK mychose()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 165 ,52 BUTTONEX btnok;
CAPTION " ‘€Ì· «·„·›";
ON CLICK myexe()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 272 ,52 BUTTONEX btnby;
CAPTION "Œ—ÊÃ";
ON CLICK MSGINFO( mywy() ) ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 10 ,10 LABEL lblfile ;
VALUE "" ;
WIDTH 192 ;
HEIGHT 19 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
INVISIBLE ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW winfiles

Return Nil
Proc mychose
GetFile := GetFile ( { {"ﬂ· «·„·›« ","*.*"} } , ;
" „‘€· «·„·›«  : «Œ Ì«— «·„·› " , ;
, ;
, ;
)
winfiles.lblfile.Value := GetFile
Return Nil
Proc myexe
file := winfiles.lblfile.Value
Execute File file
Return Nil
Proc mywy
winfiles.Release ( )
Return Nil
Proc mytimer
thetime = TIME()
win2.lbltime.Value := thetime
Return Nil
Proc mymouse
DEFINE WINDOW win7 ;
AT 10 ,10 ;
WIDTH 874 ;
HEIGHT 156 ;
TITLE "ÕÊ· pwct windows" ;
MODAL ;
NOSIZE ;
BACKCOLOR {236,233,216} 

win7.Center ( )
@ 10 ,10 LABEL lbl1 ;
VALUE " „  «·»—„Ã… »Ê«”ÿ… Ã—œÌ „”⁄Êœ »«·Ã“«∆— Ê »Ê«”ÿ…  ﬁ‰Ì… «·»—„Ã… »œÊ‰ ﬂÊœ Ê «Âœ«¡ ≈·Ï ﬂ· ›—Ìﬁ «·⁄„·" ;
WIDTH 1013 ;
HEIGHT 51 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win7

Return Nil
Return Nil


End Of Resistance

INIT PROCEDURE Init_DJARDIMESSAOUD
START DOUBLES
Return
*-------------------------------------------------------------------*

*---------------------------------------------------------------------------*
* Time : 21:16:54    Date : 03/09/2013
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2013]  
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


Resistance R_01_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_01_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 1214 ;
HEIGHT 619 ;
ICON "PWCTICON" ;
TITLE "   „—Ì‰ " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 492 ,843 BUTTONEX btn1;
CAPTION "«·≈Œ »«— ";
ON CLICK aaa()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 546 ,875 BUTTONEX btn2;
CAPTION "«· ”ÃÌ·  ";
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 546 ,750 BUTTONEX btn3;
CAPTION "«·Œ—ÊÃ  ";
ON CLICK add()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 546 ,629 BUTTONEX btn4;
CAPTION "Õ›Ÿ ";
ON CLICK S()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 546 ,505 BUTTONEX btn5;
CAPTION "› Õ ";
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 546 ,385 BUTTONEX btn6;
CAPTION "Õ”«» ";
ON CLICK ZA()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 546 ,40 BUTTONEX btn8;
CAPTION "√‰”Ì—Ì ’Ê—… ";
ON CLICK qqqq()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 546 ,152 BUTTONEX btn9;
CAPTION "«·Œÿ";
ON CLICK dd()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 546 ,266 BUTTONEX btn10;
CAPTION "≈Œ Ì«— «··Ê‰";
ON CLICK ddd()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 10 ,1100 BUTTONEX btn11;
CAPTION "›·«‘";
ON CLICK ee()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 375 ,975 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 386 ,765 TEXTBOX t1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 446 ,765 TEXTBOX t2;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 416 ,765 TEXTBOX t3;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 1 ,1 IMAGE image1;
PICTURE "Sans titre.jpg";
STRETCH ;
WIDTH 715 HEIGHT 535
@ 65 ,1103 BUTTONEX btn15;
CAPTION "«·√·… Õ«”»… ";
ON CLICK cal()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 100 ,782 TEXTBOX text7;
ON CHANGE Mix()  ;
HEIGHT 30 ;
WIDTH 72 ;
VALUE 255 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
MAXLENGTH 3 ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 139 ,783 TEXTBOX text8;
ON CHANGE Mix()  ;
HEIGHT 30 ;
WIDTH 72 ;
VALUE 255 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
MAXLENGTH 3 ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 176 ,783 TEXTBOX text9;
ON CHANGE Mix()  ;
HEIGHT 30 ;
WIDTH 72 ;
VALUE 255 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
MAXLENGTH 3 ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 99 ,865 SLIDER slider1;
RANGE 0 , 255;
ON Scroll Cmix()  ;
VALUE 255 ;
WIDTH 313 ;
HEIGHT 30 ;
BACKCOLOR {236,233,216} ;
TOOLTIP "" ;
NOTICKS 

@ 141 ,865 SLIDER slider2;
RANGE 0 , 255;
ON Scroll Cmix()  ;
VALUE 255 ;
WIDTH 313 ;
HEIGHT 30 ;
BACKCOLOR {236,233,216} ;
TOOLTIP "" ;
NOTICKS 

@ 177 ,865 SLIDER slider3;
RANGE 0 , 255;
ON Scroll Cmix()  ;
VALUE 255 ;
WIDTH 313 ;
HEIGHT 30 ;
BACKCOLOR {236,233,216} ;
TOOLTIP "" ;
NOTICKS 

@ 39 ,178 LABEL lbl3 ;
VALUE "" ;
WIDTH 475 ;
HEIGHT 418 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 102 ,719 LABEL lbl4 ;
VALUE "Red " ;
WIDTH 43 ;
HEIGHT 29 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 144 ,719 LABEL lbl5 ;
VALUE "Green " ;
WIDTH 59 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 176 ,719 LABEL lbl6 ;
VALUE "Blue " ;
WIDTH 52 ;
HEIGHT 24 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 227 ,1095 BUTTONEX btn34;
CAPTION " „—Ì‰ 2 ";
ON CLICK qqq()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure add()
win1.Release ( )
return
procedure dd()
GetFont := GetFont ( "arial" , ;
9 , ;
, ;
, ;
, ;
, ;
, ;
)
FontName      := getfont[1]
FontSize      := getfont[2]
Fontbold      := getfont[3]
FontItalic    := getfont[4]
FontColor     := getfont[5]
FontUnderline := Getfont[6]
FontStrickOut := getfont[7]
FontCharset   := getfont[8]
return
procedure ddd()
GetColor := GetColor ( {0,0,0} )
return
procedure aaa()
FOR x = 1 TO 6 STEP 1
Win1.List1.Additem ( " „—Õ»« Ì« ⁄»œ «·ﬁ«œ— ›Ì ⁄«·„ «·»—„Ã… «·ﬂ»ÌÊ — " )
Next
return
procedure qqqq()
GetFile := GetFile ( { {"Text","*.txt"}, {"Image","*.JPG" } } , ;
, ;
, ;
, ;
)
return
procedure ee()
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "›·«‘   " ;
CHILD ;
NOMAXIMIZE ;
BACKCOLOR {236,233,216} 

win2.Center ( )
@ 316 ,254 BUTTONEX btn12;
CAPTION "Œ—ÊÃ ";
ON CLICK CLOSE()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 316 ,378 BUTTONEX btn13;
CAPTION "⁄—÷ ";
ON CLICK mystart()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
Public oActiveX
oActiveX := TActiveX():New( "Win2", "ShockwaveFlash.ShockwaveFlash.1" , 11 , 9 , 478 , 302)
oActiveX:Load()
END WINDOW

ACTIVATE WINDOW win2
EndIF

return
Proc mystart
CurrentFolder := GetCurrentFolder()
oactivex:OOLE:LoadMovie ( 0,currentfolder+"\main.swf" )
Return Nil
procedure CLOSE()
win2.Release ( )
return
procedure S()
PutFile := PutFile ( { {"Text","*.txt"}, {"Image","*.JPG" } } , ;
"Save As " , ;
, ;
, ;
)
win1.lbl3.SaveAs ( putfile )
return
procedure ZA()
if !iswindowdefined( win3 )
DEFINE WINDOW win3 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "⁄„·Ì… Õ”«»  " ;
CHILD ;
BACKCOLOR {236,233,216} 

@ 58 ,188 LABEL lbl1 ;
VALUE "„‰  " ;
WIDTH 47 ;
HEIGHT 29 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 57 ,380 LABEL lbl2 ;
VALUE "≈·Ï  " ;
WIDTH 49 ;
HEIGHT 23 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 57 ,84 TEXTBOX text4;
HEIGHT 28 ;
WIDTH 98 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 57 ,283 TEXTBOX text5;
HEIGHT 29 ;
WIDTH 84 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 129 ,95 EDITBOX edit1;
WIDTH 200 ;
HEIGHT 200;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 294 ,354 BUTTONEX btn14;
CAPTION "√Õ”» ";
ON CLICK mycou()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win3
EndIF

return
Proc mycou
num1 := win3.text4.Value
num2 := win3.text5.Value
FOR x =num1 TO num2 STEP 1
x2 = STR ( x )
x2 = ALLTRIM ( x2 )
if .not. empty(Win3.Edit1.VALUE)
Win3.Edit1.VALUE := Win3.Edit1.VALUE + CHR(13) + CHR(10) + x2
else
Win3.Edit1.VALUE := x2
endif
Next
Return Nil
procedure cal()
if !iswindowdefined( win4 )
DEFINE WINDOW win4 ;
AT 10 ,10 ;
WIDTH 338 ;
HEIGHT 581 ;
ICON "PWCTICON" ;
TITLE "«·√·… Õ«”»…  " ;
CHILD ;
BACKCOLOR {236,233,216} 

@ 142 ,13 BUTTONEX btn33;
CAPTION "1 ";
WIDTH 72 HEIGHT 27 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 142 ,96 BUTTONEX btn17;
CAPTION "2 ";
WIDTH 72 HEIGHT 26 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 142 ,173 BUTTONEX btn18;
CAPTION "3 ";
WIDTH 74 HEIGHT 27 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 171 ,12 BUTTONEX btn19;
CAPTION "4 ";
WIDTH 74 HEIGHT 27 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 171 ,94 BUTTONEX btn20;
CAPTION "5 ";
WIDTH 74 HEIGHT 27 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 171 ,173 BUTTONEX btn21;
CAPTION "6 ";
WIDTH 74 HEIGHT 27 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 200 ,12 BUTTONEX btn22;
CAPTION "7 ";
WIDTH 74 HEIGHT 27 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 200 ,94 BUTTONEX btn23;
CAPTION "8 ";
WIDTH 74 HEIGHT 27 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 200 ,173 BUTTONEX btn24;
CAPTION "9 ";
WIDTH 74 HEIGHT 27 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 231 ,173 BUTTONEX btn25;
CAPTION "0 ";
WIDTH 74 HEIGHT 27 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 91 ,253 BUTTONEX btn26;
CAPTION "- ";
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 125 ,253 BUTTONEX btn27;
CAPTION "+";
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 159 ,253 BUTTONEX btn28;
CAPTION "*";
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 193 ,253 BUTTONEX btn29;
CAPTION "/";
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 229 ,253 BUTTONEX btn30;
CAPTION "=";
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 58 ,24 BUTTONEX btn31;
CAPTION "„”Õ";
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 59 ,136 BUTTONEX btn32;
CAPTION "«·‰ ÌÃ…";
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 18 ,28 TEXTBOX text6;
HEIGHT 36 ;
WIDTH 209 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {128,128,128} ;
FONTCOLOR {255,255,255} 

@ 261 ,34 EDITBOX edit2;
WIDTH 189 ;
HEIGHT 169;
FONT "Arial" SIZE 14 ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {255,255,255}
END WINDOW

ACTIVATE WINDOW win4
EndIF

return
Proc Mix
R := win1.text7.Value
G := win1.text8.Value
B := win1.text9.Value
win1.lbl3.BackColor := {R,G,B}
Return Nil
Proc Cmix
SR := win1.Slider1.Value
SG := win1.Slider2.Value
SB := win1.Slider3.Value
win1.text7.Value := SR
win1.text8.Value := SG
win1.text9.Value := SB
Return Nil
procedure qqq()
if !iswindowdefined( win5 )
DEFINE WINDOW win5 ;
AT 10 ,10 ;
WIDTH 327 ;
HEIGHT 403 ;
ICON "PWCTICON" ;
TITLE "⁄„·Ì…   " ;
CHILD ;
BACKCOLOR {236,233,216} 

@ 277 ,70 TEXTBOX text10;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 59 ,70 TEXTBOX text11;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 119 ,70 TEXTBOX text12;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 206 ,70 TEXTBOX text13;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 161 ,241 BUTTONEX btn35;
CAPTION "/ ";
ON CLICK k()  ;
WIDTH 50 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 161 ,51 BUTTONEX btn36;
CAPTION "* ";
ON CLICK x()  ;
WIDTH 50 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 161 ,111 BUTTONEX btn37;
CAPTION "-";
ON CLICK b()  ;
WIDTH 50 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 161 ,175 BUTTONEX btn38;
CAPTION "+";
ON CLICK Sum()  ;
WIDTH 50 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 315 ,202 BUTTONEX btn39;
CAPTION "«·Œ—ÊÃ";
ON CLICK closed()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win5
EndIF

return
Proc closed
win5.Release ( )
Return Nil
Proc Sum
num11 := win5.text11.Value
num12 := win5.text12.Value
win5.text13.Value := num11+num12
Return Nil
Proc b
num11 := win5.text11.Value
num12 := win5.text12.Value
win5.text13.Value := num11-num12
Return Nil
Proc x
num11 := win5.text11.Value
num12 := win5.text12.Value
win5.text13.Value := num11*num12
Return Nil
Proc k
num11 := win5.text11.Value
num12 := win5.text12.Value
win5.text13.Value := num11/num12
Return Nil


End Of Resistance

INIT PROCEDURE Init_01
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '   „—Ì‰ '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«·≈Œ »«— '",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action aaa",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '«· ”ÃÌ·  '",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",19,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : '«·Œ—ÊÃ  '",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action add",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",25,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'Õ›Ÿ '",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action S",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",31,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : '› Õ '",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",36,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn6 ) , Caption : 'Õ”«» '",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ZA",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",42,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn8 ) , Caption : '√‰”Ì—Ì ’Ê—… '",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action qqqq",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",48,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn9 ) , Caption : '«·Œÿ'",51,52)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action dd",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",54,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn10 ) , Caption : '≈Œ Ì«— «··Ê‰'",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ddd",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",60,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn11 ) , Caption : '›·«‘'",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ee",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",66,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",70,74)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( t1  )",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",76,81)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( t2  )",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",83,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( t3  )",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",90,95)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'Sans titre.jpg'",96,97)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",98,99)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn15 ) , Caption : '«·√·… Õ«”»… '",100,101)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action cal",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",103,105)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text7  )",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action Mix",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",108,116)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text8  )",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action Mix",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",119,127)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text9  )",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action Mix",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",130,138)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Slider ( slider1 )",139,140)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON Scroll : Action Cmix",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","Slider Properties",142,148)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Slider ( slider2 )",149,150)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON Scroll : Action Cmix",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","Slider Properties",152,158)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Slider ( slider3 )",159,160)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON Scroll : Action Cmix",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","Slider Properties",162,168)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : ''",169,170)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",171,175)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Red '",176,177)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",178,182)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'Green '",183,184)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",185,189)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 ) , Caption : 'Blue '",190,191)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",192,196)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn34 ) , Caption : ' „—Ì‰ 2 '",197,198)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action qqq",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",200,202)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",203,204)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",205,207)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure add ( Event : CLICK )",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure dd ( Event : CLICK )",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","GetFont := Get Font",212,219)
SS_ESASTEP("Circuits\Main\Main\Main","Output: (FontName,FontSize,FontBold,FontItalic,FontColor,FontUnderLine,FontStrickOut,FontCharSet)",220,227)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ddd ( Event : CLICK )",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","GetColor := Get Color, Init Color : {0,0,0}",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure aaa ( Event : CLICK )",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 6 Step 1)",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (' „—Õ»« Ì« ⁄»œ «·ﬁ«œ— ›Ì ⁄«·„ «·»—„Ã… «·ﬂ»ÌÊ — ') to Listbox (List1) of Window (Win1)",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure qqqq ( Event : CLICK )",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","GetFile := Get File",238,242)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ee ( Event : CLICK )",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : '›·«‘   '",245,249)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",250,255)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Center ( )",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn12 ) , Caption : 'Œ—ÊÃ '",257,258)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CLOSE",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",260,262)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn13 ) , Caption : '⁄—÷ '",263,264)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mystart",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",266,268)
SS_ESASTEP("Circuits\Main\Main\Main","Active Control ( oActiveX )",269,271)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",272,273)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",274,276)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mystart",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","CurrentFolder := Get Current Folder",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.LoadMovie ( 0,currentfolder+'\main.swf' )",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure CLOSE ( Event : CLICK )",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Release ( )",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure S ( Event : CLICK )",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","PutFile := Put File",286,290)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl3.SaveAs ( putfile )",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ZA ( Event : CLICK )",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win3 ) , Title : '⁄„·Ì… Õ”«»  '",294,298)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",299,303)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '„‰  '",304,305)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",306,310)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '≈·Ï  '",311,312)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",313,317)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",318,318)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",319,325)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text5  )",326,326)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",327,333)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",334,334)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",335,339)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn14 ) , Caption : '√Õ”» '",340,341)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mycou()",342,342)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",343,345)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",346,347)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",348,350)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",351,351)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mycou",352,352)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = win3.text4.Value",353,353)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = win3.text5.Value",354,354)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x =num1 To num2 Step 1)",355,355)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = CONVERT x TO STRING",356,356)
SS_ESASTEP("Circuits\Main\Main\Main","x2 = All Trim x2",357,357)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (x2) to Editbox (Edit1) of Window (Win3)",358,362)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",363,363)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",364,364)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure cal ( Event : CLICK )",365,365)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win4 ) , Title : '«·√·… Õ«”»…  '",366,370)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",371,375)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn33 ) , Caption : '1 '",376,377)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",378,380)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn17 ) , Caption : '2 '",381,382)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",383,385)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn18 ) , Caption : '3 '",386,387)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",388,390)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn19 ) , Caption : '4 '",391,392)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",393,395)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn20 ) , Caption : '5 '",396,397)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",398,400)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn21 ) , Caption : '6 '",401,402)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",403,405)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn22 ) , Caption : '7 '",406,407)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",408,410)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn23 ) , Caption : '8 '",411,412)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",413,415)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn24 ) , Caption : '9 '",416,417)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",418,420)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn25 ) , Caption : '0 '",421,422)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",423,425)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn26 ) , Caption : '- '",426,427)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",428,430)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn27 ) , Caption : '+'",431,432)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",433,435)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn28 ) , Caption : '*'",436,437)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",438,440)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn29 ) , Caption : '/'",441,442)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",443,445)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn30 ) , Caption : '='",446,447)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",448,450)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn31 ) , Caption : '„”Õ'",451,452)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",453,455)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn32 ) , Caption : '«·‰ ÌÃ…'",456,457)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",458,460)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text6  )",461,461)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",462,467)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit2 )",468,468)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",469,473)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",474,475)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",476,478)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",479,479)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Mix",480,480)
SS_ESASTEP("Circuits\Main\Main\Main","R = win1.text7.Value",481,481)
SS_ESASTEP("Circuits\Main\Main\Main","G = win1.text8.Value",482,482)
SS_ESASTEP("Circuits\Main\Main\Main","B = win1.text9.Value",483,483)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl3.BackColor := {R,G,B}",484,484)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",485,485)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Cmix",486,486)
SS_ESASTEP("Circuits\Main\Main\Main","SR = win1.Slider1.Value",487,487)
SS_ESASTEP("Circuits\Main\Main\Main","SG = win1.Slider2.Value",488,488)
SS_ESASTEP("Circuits\Main\Main\Main","SB = win1.Slider3.Value",489,489)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text7.Value := SR",490,490)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text8.Value := SG",491,491)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text9.Value := SB",492,492)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",493,493)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure qqq ( Event : CLICK )",494,494)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win5 ) , Title : '⁄„·Ì…   '",495,499)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",500,504)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text10  )",505,505)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",506,512)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text11  )",513,513)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",514,520)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text12  )",521,521)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",522,528)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text13  )",529,529)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",530,536)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn35 ) , Caption : '/ '",537,538)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action k()",539,539)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",540,542)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn36 ) , Caption : '* '",543,544)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action x()",545,545)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",546,548)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn37 ) , Caption : '-'",549,550)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action b()",551,551)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",552,554)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn38 ) , Caption : '+'",555,556)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Sum()",557,557)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",558,560)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn39 ) , Caption : '«·Œ—ÊÃ'",561,562)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closed",563,563)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",564,566)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",567,568)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",569,571)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",572,572)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closed",573,573)
SS_ESASTEP("Circuits\Main\Main\Main","win5.Release ( )",574,574)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",575,575)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Sum",576,576)
SS_ESASTEP("Circuits\Main\Main\Main","num11 = win5.text11.Value",577,577)
SS_ESASTEP("Circuits\Main\Main\Main","num12 = win5.text12.Value",578,578)
SS_ESASTEP("Circuits\Main\Main\Main","win5.text13.Value := num11+num12",579,579)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",580,580)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure b",581,581)
SS_ESASTEP("Circuits\Main\Main\Main","num11 = win5.text11.Value",582,582)
SS_ESASTEP("Circuits\Main\Main\Main","num12 = win5.text12.Value",583,583)
SS_ESASTEP("Circuits\Main\Main\Main","win5.text13.Value := num11-num12",584,584)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",585,585)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure x",586,586)
SS_ESASTEP("Circuits\Main\Main\Main","num11 = win5.text11.Value",587,587)
SS_ESASTEP("Circuits\Main\Main\Main","num12 = win5.text12.Value",588,588)
SS_ESASTEP("Circuits\Main\Main\Main","win5.text13.Value := num11*num12",589,589)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",590,590)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure k",591,591)
SS_ESASTEP("Circuits\Main\Main\Main","num11 = win5.text11.Value",592,592)
SS_ESASTEP("Circuits\Main\Main\Main","num12 = win5.text12.Value",593,593)
SS_ESASTEP("Circuits\Main\Main\Main","win5.text13.Value := num11/num12",594,594)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",595,595)
Return
*-------------------------------------------------------------------*

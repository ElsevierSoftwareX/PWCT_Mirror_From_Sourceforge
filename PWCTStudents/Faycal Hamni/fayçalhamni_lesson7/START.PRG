*---------------------------------------------------------------------------*
* Time : 00:24:19    Date : 03/17/2013
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


Resistance R_START_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_START_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 699 ;
HEIGHT 390 ;
ICON "PWCTICON" ;
TITLE "≈’·«Õ «·√ÃÂ“… «·≈·ﬂ —Ê‰Ì…  " ;
MAIN ;
BACKCOLOR {0,128,0} 

@ 195 ,598 LABEL lbl1 ;
VALUE "«·—ﬁ„ «·√Ê· " ;
WIDTH 96 ;
HEIGHT 44 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {0,128,0} ;
FONTCOLOR {255,255,255}
@ 278 ,598 LABEL lbl2 ;
VALUE "«·„Ã„Ê⁄ " ;
WIDTH 80 ;
HEIGHT 42 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {0,128,0} ;
FONTCOLOR {255,255,255}
@ 236 ,598 LABEL lbl3 ;
VALUE "«·—ﬁ„ «·À«‰Ì " ;
WIDTH 95 ;
HEIGHT 47 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {0,128,0} ;
FONTCOLOR {255,255,255}
@ 154 ,390 LABEL lbl4 ;
VALUE "„—»⁄«  «·‰’ «·Õ—›Ì… " ;
WIDTH 163 ;
HEIGHT 37 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {0,128,0} ;
FONTCOLOR {255,255,255}
@ 153 ,160 LABEL lbl5 ;
VALUE "„—»⁄«  «·‰’ «·—ﬁ„Ì… " ;
WIDTH 159 ;
HEIGHT 33 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {0,128,0} ;
FONTCOLOR {255,255,255}
@ 191 ,378 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 232 ,378 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 275 ,378 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 187 ,137 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 230 ,137 TEXTBOX text5;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 275 ,137 TEXTBOX text6;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 313 ,258 BUTTONEX btn1;
CAPTION "Õ”«» «·„Ã„Ê⁄ ";
ON CLICK pSum()  ;
WIDTH 126 HEIGHT 34 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 311 ,3 LABEL lbl6 ;
VALUE "fayÁal " ;
WIDTH 77 ;
HEIGHT 47 ;
FONT "Kunstler Script" SIZE 26  ;
BACKCOLOR {0,128,0} ;
FONTCOLOR {255,255,255}
@ 59 ,546 LABEL lbl7 ;
VALUE " «·Õ„œ ··Â33„—…" ;
WIDTH 159 ;
HEIGHT 39 ;
FONT "Times New Roman" SIZE 18  ;
BACKCOLOR {0,128,0} ;
FONTCOLOR {255,255,255}
@ 59 ,391 LABEL lbl8 ;
VALUE " ”»Õ«‰ «··Â33„—…" ;
WIDTH 153 ;
HEIGHT 34 ;
FONT "Times New Roman" SIZE 18  ;
BACKCOLOR {0,128,0} ;
FONTCOLOR {255,255,255}
@ 61 ,247 LABEL lbl9 ;
VALUE " «··Â √ﬂ»—33„—…" ;
WIDTH 133 ;
HEIGHT 53 ;
FONT "Times New Roman" SIZE 18  ;
BACKCOLOR {0,128,0} ;
FONTCOLOR {255,255,255}
@ 63 ,62 LABEL lbl10 ;
VALUE "·««·Â ≈·« «··Â1 „«„ 100" ;
WIDTH 176 ;
HEIGHT 32 ;
FONT "Times New Roman" SIZE 18  ;
BACKCOLOR {0,128,0} ;
FONTCOLOR {255,255,255}
@ 98 ,269 LABEL lbl11 ;
VALUE "√” €›— «··Â «·⁄÷Ì„" ;
WIDTH 160 ;
HEIGHT 53 ;
FONT "Times New Roman" SIZE 18  ;
BACKCOLOR {0,128,0} ;
FONTCOLOR {255,255,255}
@ 124 ,112 LABEL lbl12 ;
VALUE "‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹ " ;
WIDTH 511 ;
HEIGHT 35 ;
FONT "Arial" SIZE 26  ;
BACKCOLOR {0,128,0} ;
FONTCOLOR {255,255,255}
@ -13 ,310 LABEL lbl13 ;
VALUE "«· ”»ÌÕ " ;
WIDTH 76 ;
HEIGHT 53 ;
FONT "Traditional Arabic" SIZE 28  ;
BACKCOLOR {0,128,0} ;
FONTCOLOR {255,255,255}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pSum()
cNum1 := win1.text1.Value
cNum2 := win1.text2.Value
nNum1 = VAL ( cNum1 )
nNum2 = VAL ( cNum2 )
nSum := nNum1+nNum2
cSum = STR ( nSum )
cSum = ALLTRIM ( cSum )
win1.text3.Value := cSum
nNum1 := win1.text4.Value
nNum2 := win1.text5.Value
nSum := nNum1+nNum2
win1.text6.Value := nSum
return


End Of Resistance

INIT PROCEDURE Init_START
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '≈’·«Õ «·√ÃÂ“… «·≈·ﬂ —Ê‰Ì…  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·—ﬁ„ «·√Ê· '",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·„Ã„Ê⁄ '",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '«·—ﬁ„ «·À«‰Ì '",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",27,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : '„—»⁄«  «·‰’ «·Õ—›Ì… '",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",34,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : '„—»⁄«  «·‰’ «·—ﬁ„Ì… '",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",41,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",47,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",54,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",61,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",68,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text5  )",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",75,80)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text6  )",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",82,87)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Õ”«» «·„Ã„Ê⁄ '",88,89)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pSum",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",91,93)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 ) , Caption : 'fayÁal '",94,95)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",96,100)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7 ) , Caption : ' «·Õ„œ ··Â33„—…'",101,102)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",103,107)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl8 ) , Caption : ' ”»Õ«‰ «··Â33„—…'",108,109)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",110,114)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl9 ) , Caption : ' «··Â √ﬂ»—33„—…'",115,116)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",117,121)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl10 ) , Caption : '·««·Â ≈·« «··Â1 „«„ 100'",122,123)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",124,128)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl11 ) , Caption : '√” €›— «··Â «·⁄÷Ì„'",129,130)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",131,135)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl12 ) , Caption : '‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹ '",136,137)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",138,142)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl13 ) , Caption : '«· ”»ÌÕ '",143,144)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",145,149)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",150,151)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",152,154)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pSum ( Event : CLICK )",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","cNum1 = win1.text1.Value",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","cNum2 = win1.text2.Value",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","nNum1 = CONVERT cNum1 TO Numeric",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","nNum2 = CONVERT cNum2 TO Numeric",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","nSum = nNum1+nNum2",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","cSum = CONVERT nSum TO STRING",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","cSum = All Trim cSum",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := cSum",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","nNum1 = win1.text4.Value",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","nNum2 = win1.text5.Value",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","nSum = nNum1+nNum2",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6.Value := nSum",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",168,168)
Return
*-------------------------------------------------------------------*

*---------------------------------------------------------------------------*
* Time : 15:46:19    Date : 03/08/2014
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2014.02.24
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


Resistance R_CALCULATOR_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CALCULATOR_19art1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 100 ,300 ;
WIDTH 496 ;
HEIGHT 539 ;
ICON "PWCTICON" ;
TITLE "Currency Note Calculator  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
BACKCOLOR {156,247,254} 

@ 92 ,160 LABEL lbl1000 ;
VALUE "1000 " ;
WIDTH 32 ;
HEIGHT 19 ;
FONT "Arial" SIZE 10  ;
BACKCOLOR {166,238,253} ;
FONTCOLOR {0,0,0}
@ 93 ,198 LABEL lbl1 ;
VALUE "X " ;
WIDTH 12 ;
HEIGHT 14 ;
FONT "Arial" SIZE 10  ;
BACKCOLOR {166,238,253} ;
FONTCOLOR {0,0,0}
@ 90 ,218 TEXTBOX text1000;
ON CHANGE mul()  ;
HEIGHT 26 ;
WIDTH 83 ;
FONT "Arial" SIZE 10 ;
BACKCOLOR {255,196,243} ;
FONTCOLOR {0,0,0} 

@ 93 ,304 LABEL lbl1001 ;
VALUE "= " ;
WIDTH 12 ;
HEIGHT 18 ;
FONT "Arial" SIZE 10  ;
BACKCOLOR {166,238,253} ;
FONTCOLOR {0,0,0}
@ 89 ,318 LABEL lblresult1 ;
VALUE " 0" ;
WIDTH 86 ;
HEIGHT 28 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,176} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 123 ,166 LABEL lbl500 ;
VALUE "500 " ;
WIDTH 24 ;
HEIGHT 21 ;
FONT "Arial" SIZE 10  ;
BACKCOLOR {166,238,253} ;
FONTCOLOR {0,0,0}
@ 124 ,198 LABEL lbl2 ;
VALUE "X " ;
WIDTH 13 ;
HEIGHT 19 ;
FONT "Arial" SIZE 10  ;
BACKCOLOR {166,238,253} ;
FONTCOLOR {0,0,0}
@ 123 ,218 TEXTBOX text500;
ON CHANGE mul()  ;
HEIGHT 26 ;
WIDTH 83 ;
FONT "arial" SIZE 10 ;
BACKCOLOR {255,196,243} ;
FONTCOLOR {0,0,0} 

@ 254 ,304 LABEL lbl1002 ;
VALUE "= " ;
WIDTH 17 ;
HEIGHT 21 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {166,238,253} ;
FONTCOLOR {0,0,0}
@ 121 ,318 LABEL lblresult2 ;
VALUE "0 " ;
WIDTH 86 ;
HEIGHT 28 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,176} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 156 ,162 LABEL lbl100 ;
VALUE "100 " ;
WIDTH 27 ;
HEIGHT 18 ;
FONT "Arial" SIZE 10  ;
BACKCOLOR {166,238,253} ;
FONTCOLOR {0,0,0}
@ 157 ,194 LABEL lbl3 ;
VALUE " X" ;
WIDTH 16 ;
HEIGHT 19 ;
FONT "Arial" SIZE 10  ;
BACKCOLOR {166,238,253} ;
FONTCOLOR {0,0,0}
@ 157 ,218 TEXTBOX text100;
ON CHANGE mul()  ;
HEIGHT 26 ;
WIDTH 83 ;
FONT "arial" SIZE 10 ;
BACKCOLOR {255,196,243} ;
FONTCOLOR {0,0,0} 

@ 225 ,304 LABEL lbl1003 ;
VALUE "= " ;
WIDTH 13 ;
HEIGHT 17 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {166,238,253} ;
FONTCOLOR {0,0,0}
@ 154 ,318 LABEL lblresult3 ;
VALUE "0 " ;
WIDTH 86 ;
HEIGHT 28 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,176} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 189 ,169 LABEL lbl50 ;
VALUE "50 " ;
WIDTH 18 ;
HEIGHT 17 ;
FONT "Arial" SIZE 10  ;
BACKCOLOR {166,238,253} ;
FONTCOLOR {0,0,0}
@ 188 ,198 LABEL lbl4 ;
VALUE "X " ;
WIDTH 13 ;
HEIGHT 22 ;
FONT "Arial" SIZE 10  ;
BACKCOLOR {166,238,253} ;
FONTCOLOR {0,0,0}
@ 188 ,218 TEXTBOX text50;
ON CHANGE mul()  ;
HEIGHT 26 ;
WIDTH 83 ;
FONT "arial" SIZE 10 ;
BACKCOLOR {255,196,243} ;
FONTCOLOR {0,0,0} 

@ 194 ,304 LABEL lbl1004 ;
VALUE "= " ;
WIDTH 13 ;
HEIGHT 17 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {166,238,253} ;
FONTCOLOR {0,0,0}
@ 189 ,318 LABEL lblresult4 ;
VALUE "0 " ;
WIDTH 86 ;
HEIGHT 28 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,176} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 222 ,173 LABEL lbl20 ;
VALUE "20 " ;
WIDTH 19 ;
HEIGHT 17 ;
FONT "Arial" SIZE 10  ;
BACKCOLOR {166,238,253} ;
FONTCOLOR {0,0,0}
@ 223 ,197 LABEL lbl5 ;
VALUE "X " ;
WIDTH 14 ;
HEIGHT 22 ;
FONT "Arial" SIZE 10  ;
BACKCOLOR {166,238,253} ;
FONTCOLOR {0,0,0}
@ 222 ,218 TEXTBOX text20;
ON CHANGE mul()  ;
HEIGHT 26 ;
WIDTH 83 ;
FONT "arial" SIZE 10 ;
BACKCOLOR {255,196,243} ;
FONTCOLOR {0,0,0} 

@ 158 ,304 LABEL lbl1005 ;
VALUE "= " ;
WIDTH 14 ;
HEIGHT 15 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {166,238,253} ;
FONTCOLOR {0,0,0}
@ 220 ,318 LABEL lblresult5 ;
VALUE "0 " ;
WIDTH 86 ;
HEIGHT 28 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,176} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 256 ,170 LABEL lbl10 ;
VALUE "10 " ;
WIDTH 20 ;
HEIGHT 16 ;
FONT "Arial" SIZE 10  ;
BACKCOLOR {166,238,253} ;
FONTCOLOR {0,0,0}
@ 254 ,197 LABEL lbl6 ;
VALUE "X " ;
WIDTH 14 ;
HEIGHT 19 ;
FONT "Arial" SIZE 10  ;
BACKCOLOR {166,238,253} ;
FONTCOLOR {0,0,0}
@ 253 ,218 TEXTBOX text10;
ON CHANGE mul()  ;
HEIGHT 26 ;
WIDTH 83 ;
FONT "arial" SIZE 10 ;
BACKCOLOR {255,196,243} ;
FONTCOLOR {0,0,0} 

@ 126 ,304 LABEL lbl1006 ;
VALUE "= " ;
WIDTH 15 ;
HEIGHT 18 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {166,238,253} ;
FONTCOLOR {0,0,0}
@ 247 ,318 LABEL lblresult6 ;
VALUE "0 " ;
WIDTH 86 ;
HEIGHT 28 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,176} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 284 ,177 LABEL lbl5c ;
VALUE "5 " ;
WIDTH 14 ;
HEIGHT 21 ;
FONT "Arial" SIZE 10  ;
BACKCOLOR {166,238,253} ;
FONTCOLOR {0,0,0}
@ 284 ,197 LABEL lbl7 ;
VALUE "X " ;
WIDTH 15 ;
HEIGHT 23 ;
FONT "Arial" SIZE 10  ;
BACKCOLOR {166,238,253} ;
FONTCOLOR {0,0,0}
@ 281 ,218 TEXTBOX text5;
ON CHANGE mul()  ;
HEIGHT 26 ;
WIDTH 83 ;
FONT "arial" SIZE 10 ;
BACKCOLOR {255,196,243} ;
FONTCOLOR {0,0,0} 

@ 346 ,304 LABEL lbl1007 ;
VALUE "= " ;
WIDTH 13 ;
HEIGHT 18 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {166,238,253} ;
FONTCOLOR {0,0,0}
@ 276 ,318 LABEL lblresult7 ;
VALUE "0 " ;
WIDTH 86 ;
HEIGHT 28 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,176} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 314 ,176 LABEL lbl2c ;
VALUE "2 " ;
WIDTH 14 ;
HEIGHT 17 ;
FONT "Arial" SIZE 10  ;
BACKCOLOR {166,238,253} ;
FONTCOLOR {0,0,0}
@ 314 ,198 LABEL lbl8 ;
VALUE "X " ;
WIDTH 14 ;
HEIGHT 23 ;
FONT "Arial" SIZE 10  ;
BACKCOLOR {166,238,253} ;
FONTCOLOR {0,0,0}
@ 312 ,218 TEXTBOX text2;
ON CHANGE mul()  ;
HEIGHT 26 ;
WIDTH 83 ;
FONT "arial" SIZE 10 ;
BACKCOLOR {255,196,243} ;
FONTCOLOR {0,0,0} 

@ 314 ,304 LABEL lbl1008 ;
VALUE "= " ;
WIDTH 15 ;
HEIGHT 21 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {166,238,253} ;
FONTCOLOR {0,0,0}
@ 314 ,318 LABEL lblresult8 ;
VALUE "0 " ;
WIDTH 86 ;
HEIGHT 28 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,176} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 349 ,175 LABEL lbl1c ;
VALUE "1 " ;
WIDTH 14 ;
HEIGHT 20 ;
FONT "Arial" SIZE 10  ;
BACKCOLOR {166,238,253} ;
FONTCOLOR {0,0,0}
@ 348 ,196 LABEL lbl9 ;
VALUE "X" ;
WIDTH 15 ;
HEIGHT 18 ;
FONT "Arial" SIZE 10  ;
BACKCOLOR {166,238,253} ;
FONTCOLOR {0,0,0}
@ 347 ,218 TEXTBOX text1;
ON CHANGE mul()  ;
HEIGHT 26 ;
WIDTH 83 ;
FONT "arial" SIZE 10 ;
BACKCOLOR {255,196,243} ;
FONTCOLOR {0,0,0} 

@ 281 ,304 LABEL lbl1009 ;
VALUE "= " ;
WIDTH 17 ;
HEIGHT 17 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {166,238,253} ;
FONTCOLOR {0,0,0}
@ 346 ,318 LABEL lblresult9 ;
VALUE "0 " ;
WIDTH 86 ;
HEIGHT 28 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,176} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 401 ,216 LABEL lblgrandtotal ;
VALUE "0 " ;
WIDTH 198 ;
HEIGHT 36 ;
FONT "Arial" SIZE 24  ;
BACKCOLOR {255,217,236} ;
BORDER ;
CENTERALIGN ;
FONTCOLOR {166,2,31}
@ 451 ,243 BUTTONEX btn1;
CAPTION "Grand Total ";
FONTCOLOR {0,0,0};
BACKCOLOR {191,181,253};
ON CLICK sum()  ;
WIDTH 128 HEIGHT 34 ;
FONT "Arial" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
@ 16 ,401 BUTTONEX btn2;
CAPTION "Close ";
FONTCOLOR {0,0,0};
BACKCOLOR {253,217,240};
ON CLICK myclose()  ;
WIDTH 72 HEIGHT 27 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 82 ,44 IMAGE image1;
PICTURE "Indian rupee\images1000.jpeg";
STRETCH ;
WIDTH 110 HEIGHT 32
@ 116 ,44 IMAGE image2;
PICTURE "Indian rupee\images500.jpeg";
STRETCH ;
WIDTH 110 HEIGHT 31
@ 151 ,44 IMAGE image3;
PICTURE "Indian rupee\image100.jpeg";
STRETCH ;
WIDTH 110 HEIGHT 29
@ 180 ,57 IMAGE image4;
PICTURE "Indian rupee\image50.jpeg";
STRETCH ;
WIDTH 97 HEIGHT 33
@ 213 ,59 IMAGE image5;
PICTURE "Indian rupee\image20.jpeg";
STRETCH ;
WIDTH 95 HEIGHT 31
@ 247 ,60 IMAGE image6;
PICTURE "Indian rupee\image10.jpeg";
STRETCH ;
WIDTH 94 HEIGHT 25
@ 274 ,61 IMAGE image7;
PICTURE "Indian rupee\image5.jpeg";
STRETCH ;
WIDTH 93 HEIGHT 29
@ 307 ,105 IMAGE image8;
PICTURE "Indian rupee\2coin.jpeg";
STRETCH ;
WIDTH 49 HEIGHT 35
@ 343 ,113 IMAGE image9;
PICTURE "Indian rupee\coin1.jpeg";
STRETCH ;
WIDTH 41 HEIGHT 35
@ 64 ,156 LABEL lbl1010 ;
VALUE "Note " ;
WIDTH 55 ;
HEIGHT 22 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {128,255,255} ;
FONTCOLOR {255,0,128}
@ 64 ,234 LABEL lbl1011 ;
VALUE "Piece " ;
WIDTH 71 ;
HEIGHT 21 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {166,238,253} ;
FONTCOLOR {255,0,128}
@ 64 ,335 LABEL lbl1012 ;
VALUE "Total " ;
WIDTH 57 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BOLD ;
BACKCOLOR {166,238,253} ;
FONTCOLOR {255,0,128}
@ 377 ,244 LABEL lbl1013 ;
VALUE "Grand Total Amount" ;
WIDTH 145 ;
HEIGHT 21 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {128,255,255} ;
FONTCOLOR {0,0,0}
@ 49 ,401 BUTTONEX btn3;
CAPTION "Clear ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK clear()  ;
WIDTH 72 HEIGHT 35 ;
FONT "Arial Rounded MT Bold" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 387 ,16 IMAGE image10;
PICTURE "Indian rupee\allnotes.jpg";
STRETCH ;
WIDTH 168 HEIGHT 98
@ 15 ,75 LABEL lbl1014 ;
VALUE "Indian Currency Notes Calculator " ;
WIDTH 290 ;
HEIGHT 25 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}
@ 450 ,377 BUTTONEX btn4;
CAPTION "Print ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK printwindow()  ;
WIDTH 86 HEIGHT 35 ;
FONT "Arial" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myclose
win1.Release ( )
Return Nil
Proc mul
win1.lblresult1.Value := alltrim(str(val(win1.lbl1000.Value)*val(win1.text1000.value)))
win1.lblresult2.Value := alltrim(str(val(win1.lbl500.Value)*val(win1.text500.value)))
win1.lblresult3.Value := alltrim(str(val(win1.lbl100.Value)*val(win1.text100.value)))
win1.lblresult4.Value := alltrim(str(val(win1.lbl50.Value)*val(win1.text50.value)))
win1.lblresult5.Value := alltrim(str(val(win1.lbl20.Value)*val(win1.text20.value)))
win1.lblresult6.Value := alltrim(str(val(win1.lbl10.Value)*val(win1.text10.value)))
win1.lblresult7.Value := alltrim(str(val(win1.lbl5c.Value)*val(win1.text5.value)))
win1.lblresult8.Value := alltrim(str(val(win1.lbl2c.Value)*val(win1.text2.value)))
win1.lblresult9.Value := alltrim(str(val(win1.lbl1c.Value)*val(win1.text1.value)))
Return Nil
Proc Sum
Sum := val(win1.lblresult1.Value)+val(win1.lblresult2.Value)+val(win1.lblresult3.Value)
Sum := sum+val(win1.lblresult4.Value)+val(win1.lblresult5.Value)+val(win1.lblresult6.Value)
Sum := sum+val(win1.lblresult7.Value)+val(win1.lblresult8.Value)+val(win1.lblresult9.Value)
win1.lblgrandtotal.Value := alltrim(str(Sum))
Return Nil
Proc clear
win1.text1000.Value := ""
win1.text500.Value := ""
win1.text100.Value := ""
win1.text50.Value := ""
win1.text20.Value := ""
win1.text10.Value := ""
win1.text5.Value := ""
win1.text2.Value := ""
win1.text1.Value := ""
win1.lblgrandtotal.Value := ""
Return Nil
procedure printwindow()
#include "winprint.ch"
init printsys
win1.SaveAs ( "window.jpg" )
select by dialog Preview
GET SELECTED PRINTER TO vPrinter
Set Units MM
Start Doc
Set Orientation PORTRAIT
Start Page
define font "pagefont" name "arial" size 9
select font "pagefont"
define brush "pagebrush" style BS_SOLID color RGB(0,255,255)
SELECT BRUSH "pagebrush"
define pen "pagepen" style PS_SOLID width 1 color RGB(0,0,0)
SELECT PEN "pagepen"
@0,0 PICTURE "window.JPG" SIZE 100,100
End Page
End Doc
release printsys
return


End Of Resistance

INIT PROCEDURE Init_CALCULATOR
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Currency Note Calculator  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1000 ) , Caption : '1000 '",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",15,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'X '",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",22,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1000  )",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action mul()",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",29,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1001 ) , Caption : '= '",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",37,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblresult1 ) , Caption : ' 0'",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",44,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl500 ) , Caption : '500 '",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",52,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'X '",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",59,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text500  )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action mul()",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",66,71)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1002 ) , Caption : '= '",72,73)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",74,78)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblresult2 ) , Caption : '0 '",79,80)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",81,86)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl100 ) , Caption : '100 '",87,88)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",89,93)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : ' X'",94,95)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",96,100)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text100  )",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action mul()",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",103,108)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1003 ) , Caption : '= '",109,110)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",111,115)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblresult3 ) , Caption : '0 '",116,117)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",118,123)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl50 ) , Caption : '50 '",124,125)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",126,130)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'X '",131,132)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",133,137)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text50  )",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action mul()",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",140,145)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1004 ) , Caption : '= '",146,147)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",148,152)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblresult4 ) , Caption : '0 '",153,154)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",155,160)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl20 ) , Caption : '20 '",161,162)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",163,167)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'X '",168,169)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",170,174)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text20  )",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action mul()",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",177,182)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1005 ) , Caption : '= '",183,184)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",185,189)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblresult5 ) , Caption : '0 '",190,191)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",192,197)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl10 ) , Caption : '10 '",198,199)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",200,204)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 ) , Caption : 'X '",205,206)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",207,211)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text10  )",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action mul()",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",214,219)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1006 ) , Caption : '= '",220,221)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",222,226)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblresult6 ) , Caption : '0 '",227,228)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",229,234)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5c ) , Caption : '5 '",235,236)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",237,241)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7 ) , Caption : 'X '",242,243)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",244,248)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text5  )",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action mul()",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",251,256)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1007 ) , Caption : '= '",257,258)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",259,263)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblresult7 ) , Caption : '0 '",264,265)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",266,271)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2c ) , Caption : '2 '",272,273)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",274,278)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl8 ) , Caption : 'X '",279,280)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",281,285)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action mul()",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",288,293)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1008 ) , Caption : '= '",294,295)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",296,300)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblresult8 ) , Caption : '0 '",301,302)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",303,308)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1c ) , Caption : '1 '",309,310)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",311,315)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl9 ) , Caption : 'X'",316,317)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",318,322)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",323,323)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action mul()",324,324)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",325,330)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1009 ) , Caption : '= '",331,332)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",333,337)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblresult9 ) , Caption : '0 '",338,339)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",340,345)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblgrandtotal ) , Caption : '0 '",346,347)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",348,354)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Grand Total '",355,358)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action sum()",359,359)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",360,363)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Close '",364,367)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myclose()",368,368)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",369,372)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'Indian rupee\images1000.jpeg'",373,374)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",375,376)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image2 ) , Image : 'Indian rupee\images500.jpeg'",377,378)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",379,380)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image3 ) , Image : 'Indian rupee\image100.jpeg'",381,382)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",383,384)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image4 ) , Image : 'Indian rupee\image50.jpeg'",385,386)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",387,388)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image5 ) , Image : 'Indian rupee\image20.jpeg'",389,390)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",391,392)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image6 ) , Image : 'Indian rupee\image10.jpeg'",393,394)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",395,396)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image7 ) , Image : 'Indian rupee\image5.jpeg'",397,398)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",399,400)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image8 ) , Image : 'Indian rupee\2coin.jpeg'",401,402)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",403,404)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image9 ) , Image : 'Indian rupee\coin1.jpeg'",405,406)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",407,408)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1010 ) , Caption : 'Note '",409,410)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",411,415)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1011 ) , Caption : 'Piece '",416,417)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",418,422)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1012 ) , Caption : 'Total '",423,424)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",425,430)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1013 ) , Caption : 'Grand Total Amount'",431,432)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",433,437)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Clear '",438,441)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action clear()",442,442)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",443,446)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image10 ) , Image : 'Indian rupee\allnotes.jpg'",447,448)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",449,450)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1014 ) , Caption : 'Indian Currency Notes Calculator '",451,452)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",453,457)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'Print '",458,461)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action printwindow",462,462)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",463,466)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",467,468)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",469,471)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myclose",472,472)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",473,473)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",474,474)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mul",475,475)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lblresult1.Value := alltrim(str(val(win1.lbl1000.Value)*val(win1.text1000.value)))",476,476)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lblresult2.Value := alltrim(str(val(win1.lbl500.Value)*val(win1.text500.value)))",477,477)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lblresult3.Value := alltrim(str(val(win1.lbl100.Value)*val(win1.text100.value)))",478,478)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lblresult4.Value := alltrim(str(val(win1.lbl50.Value)*val(win1.text50.value)))",479,479)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lblresult5.Value := alltrim(str(val(win1.lbl20.Value)*val(win1.text20.value)))",480,480)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lblresult6.Value := alltrim(str(val(win1.lbl10.Value)*val(win1.text10.value)))",481,481)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lblresult7.Value := alltrim(str(val(win1.lbl5c.Value)*val(win1.text5.value)))",482,482)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lblresult8.Value := alltrim(str(val(win1.lbl2c.Value)*val(win1.text2.value)))",483,483)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lblresult9.Value := alltrim(str(val(win1.lbl1c.Value)*val(win1.text1.value)))",484,484)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",485,485)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Sum",486,486)
SS_ESASTEP("Circuits\Main\Main\Main","Sum = val(win1.lblresult1.Value)+val(win1.lblresult2.Value)+val(win1.lblresult3.Value)",487,487)
SS_ESASTEP("Circuits\Main\Main\Main","Sum = sum+val(win1.lblresult4.Value)+val(win1.lblresult5.Value)+val(win1.lblresult6.Value)",488,488)
SS_ESASTEP("Circuits\Main\Main\Main","Sum = sum+val(win1.lblresult7.Value)+val(win1.lblresult8.Value)+val(win1.lblresult9.Value)",489,489)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lblgrandtotal.Value := alltrim(str(Sum))",490,490)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",491,491)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure clear",492,492)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1000.Value := ''",493,493)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text500.Value := ''",494,494)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text100.Value := ''",495,495)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text50.Value := ''",496,496)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text20.Value := ''",497,497)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text10.Value := ''",498,498)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text5.Value := ''",499,499)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value := ''",500,500)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := ''",501,501)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lblgrandtotal.Value := ''",502,502)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",503,503)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure printwindow ( Event : CLICK )",504,504)
SS_ESASTEP("Circuits\Main\Main\Main","Init Print System",505,506)
SS_ESASTEP("Circuits\Main\Main\Main","win1.SaveAs ( 'window.jpg' )",507,507)
SS_ESASTEP("Circuits\Main\Main\Main","vPrinter = Select Printer by Dialog , Preview",508,509)
SS_ESASTEP("Circuits\Main\Main\Main","Set Units (MM)",510,510)
SS_ESASTEP("Circuits\Main\Main\Main","Start Document",511,511)
SS_ESASTEP("Circuits\Main\Main\Main","Set Page Orientation (PORTRAIT)",512,512)
SS_ESASTEP("Circuits\Main\Main\Main","Start Page",513,519)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Picture 'window.JPG' (Top 0 Left 0 Height 100 Width 100 ) TO PRINT",520,520)
SS_ESASTEP("Circuits\Main\Main\Main","End of Page",521,521)
SS_ESASTEP("Circuits\Main\Main\Main","End of Document",522,522)
SS_ESASTEP("Circuits\Main\Main\Main","Release Print System",523,523)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",524,524)
Return
*-------------------------------------------------------------------*

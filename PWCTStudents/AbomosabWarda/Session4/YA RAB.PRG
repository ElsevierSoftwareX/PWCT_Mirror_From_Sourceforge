*---------------------------------------------------------------------------*
* Time : 04:09:12    Date : 01/09/2012
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2011]  
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


Resistance R_YA_RAB_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_YA_RAB_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 897 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "video" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 110 ,591 COMBOBOX combo1;
WIDTH 278 ;
HEIGHT 300;
ITEMS {"video1","video2","video3","video4","video5","video6","video7","video8","video9","video10","video11","video12","video13","video14","video15","video16","video17"} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
SORT ;
FONTCOLOR {0,0,0}
@ 216 ,594 TEXTBOX text1;
HEIGHT 37 ;
WIDTH 278 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,0,64} 

@ 304 ,425 BUTTONEX btn1;
CAPTION "choose the video";
ON CLICK test()  ;
WIDTH 247 HEIGHT 47 ;
FONT "Baskerville Old Face" SIZE 20 ;
TOOLTIP ""
@ 215 ,281 LABEL lbl1 ;
VALUE "The link of the video:" ;
WIDTH 277 ;
HEIGHT 42 ;
FONT "Imprint MT Shadow" SIZE 20  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 105 ,299 LABEL lbl2 ;
VALUE "choose the video:-" ;
WIDTH 233 ;
HEIGHT 52 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 9 ,186 LABEL lbl3 ;
VALUE "PWCT Videos(level 0ne)" ;
WIDTH 527 ;
HEIGHT 60 ;
FONT "Elephant" SIZE 28  ;
BACKCOLOR {128,255,255} ;
FONTCOLOR {0,0,0}
@ 73 ,-1 IMAGE image1;
PICTURE "IMAGE002.JPG";
STRETCH ;
WIDTH 280 HEIGHT 287
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc test
nvalue := win1.combo1.Value
nvalue := win1.combo1.item(nvalue)
IF nvalue=="video1"
win1.text1.Value := "http://vimeo.com/15189184"
ELSEIF nvalue=="video2"
win1.text1.Value := "http://vimeo.com/15176881"
ELSEIF nvalue=="video3"
win1.text1.Value := "http://vimeo.com/15187879"
ELSEIF nvalue=="video4"
win1.text1.Value := "http://vimeo.com/15398903"
ELSEIF nvalue=="video5"
win1.text1.Value := "http://vimeo.com/15398484"
ELSEIF nvalue=="video6"
win1.text1.Value := "http://vimeo.com/15399514"
ELSEIF nvalue=="video7"
win1.text1.Value := "http://vimeo.com/15399867"
ELSEIF nvalue=="video8"
win1.text1.Value := "http://vimeo.com/15400081"
ELSEIF nvalue=="video9"
win1.text1.Value := "http://vimeo.com/15400320"
ELSEIF nvalue=="video10"
win1.text1.Value := "http://vimeo.com/15400658"
ELSEIF nvalue=="video11"
win1.text1.Value := "http://vimeo.com/15401548"
ELSEIF nvalue=="video12"
win1.text1.Value := "http://vimeo.com/15434020"
ELSEIF nvalue=="video13"
win1.text1.Value := "http://vimeo.com/15434080"
ELSEIF nvalue=="video14"
win1.text1.Value := "http://vimeo.com/15435080"
ELSEIF nvalue=="video15"
win1.text1.Value := "http://vimeo.com/15435142"
ELSEIF nvalue=="video16"
win1.text1.Value := "http://vimeo.com/15436650"
ELSEIF nvalue=="video17"
win1.text1.Value := "http://vimeo.com/15436675"
ENDIF
Return Nil


End Of Resistance

INIT PROCEDURE Init_YA_RAB
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'video'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo1 ) , Items : {'video1','video2','video3','video4','video5','video6','video7','video8','video9','video10','video11','video12','video13','video14','video15','video16','video17'}",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",12,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",20,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'choose the video'",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action test",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",29,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'The link of the video:'",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",34,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'choose the video:-'",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",41,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'PWCT Videos(level 0ne)'",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",48,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'IMAGE002.JPG'",53,54)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",59,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure test",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","nvalue = win1.combo1.Value",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","nvalue = win1.combo1.item(nvalue)",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nvalue=='video1' )",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 'http://vimeo.com/15189184'",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nvalue=='video2' )",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 'http://vimeo.com/15176881'",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nvalue=='video3' )",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 'http://vimeo.com/15187879'",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nvalue=='video4' )",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 'http://vimeo.com/15398903'",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nvalue=='video5' )",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 'http://vimeo.com/15398484'",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nvalue=='video6' )",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 'http://vimeo.com/15399514'",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nvalue=='video7' )",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 'http://vimeo.com/15399867'",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nvalue=='video8' )",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 'http://vimeo.com/15400081'",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nvalue=='video9' )",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 'http://vimeo.com/15400320'",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nvalue=='video10' )",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 'http://vimeo.com/15400658'",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nvalue=='video11' )",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 'http://vimeo.com/15401548'",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nvalue=='video12' )",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 'http://vimeo.com/15434020'",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nvalue=='video13' )",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 'http://vimeo.com/15434080'",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nvalue=='video14' )",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 'http://vimeo.com/15435080'",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nvalue=='video15' )",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 'http://vimeo.com/15435142'",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nvalue=='video16' )",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 'http://vimeo.com/15436650'",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nvalue=='video17' )",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := 'http://vimeo.com/15436675'",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",100,100)
Return
*-------------------------------------------------------------------*

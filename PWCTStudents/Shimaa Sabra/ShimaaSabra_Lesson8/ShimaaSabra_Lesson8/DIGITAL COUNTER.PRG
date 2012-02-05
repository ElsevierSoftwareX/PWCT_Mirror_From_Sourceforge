*---------------------------------------------------------------------------*
* Time : 05:32:56    Date : 02/03/2012
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2012]  
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


Resistance R_DIGITAL_COUNTER_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_DIGITAL_COUNTER_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 231 ;
HEIGHT 428 ;
ICON "PWCTICON" ;
TITLE "Digital Counter  " ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,0,0} 

@ 181 ,0 IMAGE image1;
PICTURE "COUNTER.JPG";
STRETCH ;
WIDTH 227 HEIGHT 156
@ 61 ,40 LABEL lbl3 ;
VALUE "From " ;
WIDTH 92 ;
HEIGHT 21 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 61 ,152 LABEL lbl4 ;
VALUE "To " ;
WIDTH 36 ;
HEIGHT 30 ;
AUTOSIZE ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 349 ,40 BUTTONEX btn1;
CAPTION "Count ";
ON CLICK count()  ;
WIDTH 73 HEIGHT 29 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 349 ,118 BUTTONEX btn2;
CAPTION "Quit ";
ON CLICK quit()  ;
WIDTH 73 HEIGHT 29 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 12 ,49 LABEL lbl5 ;
VALUE "Digital Counter " ;
WIDTH 138 ;
HEIGHT 34 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 43 ,-5 LABEL lbl6 ;
VALUE " " ;
WIDTH 255 ;
HEIGHT 4 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {153,153,153} ;
FONTCOLOR {0,0,0}
@ 215 ,39 EDITBOX edit1;
WIDTH 133 ;
HEIGHT 74;
FONT "Arial" SIZE 14 ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 85 ,129 IMAGE image2;
PICTURE "COUNTER.JPG";
STRETCH ;
WIDTH 75 HEIGHT 70
@ 87 ,23 IMAGE image3;
PICTURE "COUNTER.JPG";
STRETCH ;
WIDTH 79 HEIGHT 67
@ 101 ,139 TEXTBOX text3;
HEIGHT 32 ;
WIDTH 50 ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 102 ,36 TEXTBOX text4;
HEIGHT 31 ;
WIDTH 49 ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure quit()
win1.Release ( )
return
Proc count
num1 := win1.text4.Value
num2 := win1.text3.Value
FOR x = num1 TO num2 STEP 1
x1 = STR ( x )
x1 = ALLTRIM ( x1 )
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + x1
else
Win1.Edit1.VALUE := x1
endif
Next
Return Nil


End Of Resistance

INIT PROCEDURE Init_DIGITAL_COUNTER
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Digital Counter  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'COUNTER.JPG'",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'From '",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",19,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'To '",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",28,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Count '",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action count",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",38,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Quit '",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action quit",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",44,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'Digital Counter '",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",49,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 ) , Caption : ' '",56,57)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",58,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",64,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image2 ) , Image : 'COUNTER.JPG'",69,70)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image3 ) , Image : 'COUNTER.JPG'",73,74)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",75,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",78,83)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",85,90)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",91,92)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",93,95)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure quit ( Event : CLICK )",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure count",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = win1.text4.Value",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = win1.text3.Value",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = num1 To num2 Step 1)",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","x1 = CONVERT x TO STRING",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","x1 = All Trim x1",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (x1) to Editbox (Edit1) of Window (Win1)",105,109)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",111,111)
Return
*-------------------------------------------------------------------*

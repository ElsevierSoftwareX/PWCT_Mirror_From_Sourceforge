*---------------------------------------------------------------------------*
* Time : 23:54:58    Date : 02/23/2012
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


Resistance R_COUNTER_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_COUNTER_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 566 ;
HEIGHT 358 ;
ICON "PWCTICON" ;
TITLE "Counter  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ -11 ,3 IMAGE image1;
PICTURE "counter.jpg";
STRETCH ;
WIDTH 554 HEIGHT 330
@ 73 ,446 BUTTONEX btn1;
CAPTION "";
PICTURE "up.bmp";
VERTICAL ;
UPPERTEXT ;
ON CLICK count()  ;
WIDTH 42 HEIGHT 127 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 239 ,166 BUTTONEX btn2;
CAPTION "Reset";
FONTCOLOR {73,143,77};
ON CLICK Reset()  ;
WIDTH 82 HEIGHT 26 ;
FONT "Arial" SIZE 10 ;
BOLD ;
TOOLTIP ""
@ 240 ,294 BUTTONEX btn3;
CAPTION "Close";
FONTCOLOR {73,143,77};
ON CLICK Close()  ;
WIDTH 78 HEIGHT 25 ;
FONT "Arial" SIZE 10 ;
BOLD ;
TOOLTIP ""
@ 80 ,194 LABEL lbl1 ;
VALUE " 0" ;
WIDTH 103 ;
HEIGHT 99 ;
AUTOSIZE ;
FONT "Arial" SIZE 72  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 68 ,58 BUTTONEX btn4;
CAPTION " ";
PICTURE "down.BMP";
VERTICAL ;
UPPERTEXT ;
ON CLICK CountDown()  ;
WIDTH 38 HEIGHT 138 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 202 ,452 LABEL lbl2 ;
VALUE "UP " ;
WIDTH 27 ;
HEIGHT 19 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {36,153,30}
@ 213 ,69 LABEL lbl3 ;
VALUE "Down " ;
WIDTH 37 ;
HEIGHT 26 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {36,153,30}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure count()
count := win1.lbl1.Value
count = VAL ( count )
count := count+1
count = STR ( count )
count = ALLTRIM ( count )
win1.lbl1.Value := count
return
procedure Reset()
num := win1.lbl1.Value
num = VAL ( num )
num := 0
num = STR ( num )
num = ALLTRIM ( num )
win1.lbl1.Value := num
return
procedure Close()
win1.Release ( )
return
procedure CountDown()
count := win1.lbl1.Value
count = VAL ( count )
count := count-1
count = STR ( count )
count = ALLTRIM ( count )
win1.lbl1.Value := count
return


End Of Resistance

INIT PROCEDURE Init_COUNTER
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Counter  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'counter.jpg'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",16,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : ''",18,22)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action count",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",24,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Reset'",27,29)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Reset",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",31,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Close'",35,37)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Close",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",39,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : ' 0'",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",45,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : ' '",53,57)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CountDown",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",59,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'UP '",62,63)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",64,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Down '",70,71)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",72,77)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",78,79)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",80,82)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure count ( Event : CLICK )",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","count = win1.lbl1.Value",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","count = CONVERT count TO Numeric",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","count = count+1",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","count = CONVERT count TO STRING",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","count = All Trim count",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Value := count",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Reset ( Event : CLICK )",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","num = win1.lbl1.Value",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","num = CONVERT num TO Numeric",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","num = 0",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","num = CONVERT num TO STRING",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","num = All Trim num",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Value := num",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Close ( Event : CLICK )",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure CountDown ( Event : CLICK )",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","count = win1.lbl1.Value",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","count = CONVERT count TO Numeric",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","count = count-1",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","count = CONVERT count TO STRING",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","count = All Trim count",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl1.Value := count",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",109,109)
Return
*-------------------------------------------------------------------*

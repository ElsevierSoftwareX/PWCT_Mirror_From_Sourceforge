*---------------------------------------------------------------------------*
* Time : 22:38:18    Date : 02/13/2012
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


Resistance R_TSET1_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TSET1_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 360 ;
HEIGHT 397 ;
ICON "PWCTICON" ;
TITLE "Õ”«» «·‰”»… «·„∆ÊÌ…  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 0 ,-1 IMAGE image1;
PICTURE "HOME.JPG";
STRETCH ;
WIDTH 352 HEIGHT 356
@ 31 ,246 LABEL lbl1 ;
VALUE " «·œ—Ã…" ;
WIDTH 205 ;
HEIGHT 35 ;
FONT "Arabic Transparent" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 86 ,220 LABEL lbl2 ;
VALUE " «·„Ã„Ê⁄ «·ﬂ·Ï" ;
WIDTH 219 ;
HEIGHT 32 ;
FONT "Arabic Transparent" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 162 ,216 LABEL lbl3 ;
VALUE "«·‰”»… «·„∆ÊÌ…" ;
WIDTH 215 ;
HEIGHT 28 ;
FONT "Arabic Transparent" SIZE 18  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 211 ,18 BUTTONEX btn1;
CAPTION "«Õ”» «·‰”»… «·„∆ÊÌ… ";
ON CLICK Clac()  ;
WIDTH 280 HEIGHT 37 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 266 ,176 BUTTONEX btn2;
CAPTION "«Ã„⁄ ";
ON CLICK Calc2()  ;
WIDTH 102 HEIGHT 33 ;
FONT "Arial" SIZE 18 ;
TOOLTIP ""
@ 266 ,54 BUTTONEX btn3;
CAPTION "«ÿ—Õ ";
ON CLICK Clac3()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arabic Transparent" SIZE 18 ;
TOOLTIP ""
@ 313 ,55 BUTTONEX btn4;
CAPTION "«÷—» ";
ON CLICK Calc4()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arabic Transparent" SIZE 18 ;
TOOLTIP ""
@ 313 ,181 BUTTONEX btn5;
CAPTION "«ﬁ”„ ";
ON CLICK Clac5()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arabic Transparent" SIZE 18 ;
TOOLTIP ""
@ 30 ,10 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 18 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 86 ,9 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 18 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 160 ,9 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 18 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure Clac()
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
Pers := (num1/num2)*100
Pers = STR ( Pers )
win1.text3.Value := Pers
return
procedure Calc2()
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
Pers := (num1+num2)
Pers = STR ( Pers )
win1.text3.Value := Pers
return
procedure Clac3()
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
Pers := (num1-num2)
Pers = STR ( Pers )
win1.text3.Value := Pers
return
procedure Calc4()
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
Pers := (num1*num2)
Pers = STR ( Pers )
win1.text3.Value := Pers
return
procedure Clac5()
num1 = VAL ( win1.text1.value )
num2 = VAL ( win1.text2.value )
Pers := (num1/num2)
Pers = STR ( Pers )
win1.text3.Value := Pers
return


End Of Resistance

INIT PROCEDURE Init_TSET1
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Õ”«» «·‰”»… «·„∆ÊÌ…  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'HOME.JPG'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : ' «·œ—Ã…'",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",17,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : ' «·„Ã„Ê⁄ «·ﬂ·Ï'",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",25,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '«·‰”»… «·„∆ÊÌ…'",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",33,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«Õ”» «·‰”»… «·„∆ÊÌ… '",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Clac",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",42,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '«Ã„⁄ '",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Calc2",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",48,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : '«ÿ—Õ '",51,52)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Clac3",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",54,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : '«÷—» '",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Calc4",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",60,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : '«ﬁ”„ '",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Clac5",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",66,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",70,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",77,82)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",84,89)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",90,91)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",92,94)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Clac ( Event : CLICK )",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT win1.text1.value TO Numeric",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = CONVERT win1.text2.value TO Numeric",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","Pers = (num1/num2)*100",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Pers = CONVERT Pers TO STRING",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := Pers",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Calc2 ( Event : CLICK )",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT win1.text1.value TO Numeric",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = CONVERT win1.text2.value TO Numeric",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","Pers = (num1+num2)",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","Pers = CONVERT Pers TO STRING",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := Pers",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Clac3 ( Event : CLICK )",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT win1.text1.value TO Numeric",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = CONVERT win1.text2.value TO Numeric",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","Pers = (num1-num2)",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","Pers = CONVERT Pers TO STRING",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := Pers",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Calc4 ( Event : CLICK )",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT win1.text1.value TO Numeric",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = CONVERT win1.text2.value TO Numeric",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","Pers = (num1*num2)",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","Pers = CONVERT Pers TO STRING",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := Pers",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Clac5 ( Event : CLICK )",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","num1 = CONVERT win1.text1.value TO Numeric",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","num2 = CONVERT win1.text2.value TO Numeric",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","Pers = (num1/num2)",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","Pers = CONVERT Pers TO STRING",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text3.Value := Pers",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",129,129)
Return
*-------------------------------------------------------------------*

*---------------------------------------------------------------------------*
* Time : 20:42:20    Date : 01/14/2012
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


Resistance R_LESSON2_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON2_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 722 ;
HEIGHT 470 ;
ICON "PWCTICON" ;
TITLE "Controls" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 9 ,446 LABEL lbl1 ;
VALUE "«· ⁄«„· „⁄ «·√œÊ« " ;
WIDTH 245 ;
HEIGHT 50 ;
FONT "Arial" SIZE 26  ;
BOLD ;
ITALIC ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 55 ,450 TEXTBOX text1;
HEIGHT 51 ;
WIDTH 214 ;
VALUE "⁄«„…" ;
FONT "Arial" SIZE 24 ;
BOLD ;
ITALIC ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 

@ 118 ,509 LABEL lbl2 ;
VALUE "»«”Ê—œ" ;
WIDTH 83 ;
HEIGHT 44 ;
FONT "Arial" SIZE 22  ;
BOLD ;
ITALIC ;
BACKCOLOR {236,233,216} ;
BORDER ;
FONTCOLOR {255,0,0}
@ 173 ,455 TEXTBOX text2;
HEIGHT 51 ;
WIDTH 214 ;
FONT "arial" SIZE 20 ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
PASSWORD 

@ 350 ,25 BUTTONEX btn1;
CAPTION "Œ—ÊÃ";
FONTCOLOR {255,0,0};
ON CLICK close()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 15 ;
BOLD ;
TOOLTIP ""
@ 350 ,179 BUTTONEX btn2;
CAPTION " ⁄·Ì„« ";
FONTCOLOR {128,0,255};
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 15 ;
BOLD ;
TOOLTIP ""
@ 7 ,232 EDITBOX edit1;
WIDTH 211 ;
HEIGHT 113;
VALUE "Edit box" ;
FONT "arial" SIZE 18 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 7 ,7 LISTBOX list1;
WIDTH 212 ;
HEIGHT 112 ;
ITEMS {"1","2","5","good"} ;
FONT "Arial" SIZE 20 ;
BOLD ;
BACKCOLOR {255,255,255} ;
SORT ;
FONTCOLOR {128,128,128}
@ 248 ,460 COMBOBOX combo1;
WIDTH 214 ;
HEIGHT 300;
ITEMS {"Option 1","Option 2","nice"} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
SORT ;
FONTCOLOR {0,0,0}
@ 124 ,8 IMAGE image1;
PICTURE "forests040.jpg";
STRETCH ;
WHITEBACKGROUND ;
WIDTH 345 HEIGHT 210
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Close
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_LESSON2
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Controls'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«· ⁄«„· „⁄ «·√œÊ« '",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",21,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '»«”Ê—œ'",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",33,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",42,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Œ—ÊÃ'",50,52)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action close",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",54,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : ' ⁄·Ì„« '",58,60)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",61,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",66,71)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 ) , Items : {'1','2','5','good'}",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",73,80)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo1 ) , Items : {'Option 1','Option 2','nice'}",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",82,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'forests040.jpg'",89,90)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",91,93)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",94,95)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",96,98)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Close",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",101,101)
Return
*-------------------------------------------------------------------*

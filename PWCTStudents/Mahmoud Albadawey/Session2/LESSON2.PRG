*---------------------------------------------------------------------------*
* Time : 16:00:04    Date : 01/16/2012
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
WIDTH 419 ;
HEIGHT 288 ;
ICON "PWCTICON" ;
TITLE "Lesson 2" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 11 ,141 LABEL lbl1 ;
VALUE "Using Controls" ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BOLD ;
BACKCOLOR {236,233,216} ;
CENTERALIGN ;
FONTCOLOR {0,0,255}
@ 62 ,201 TEXTBOX text1;
HEIGHT 32 ;
WIDTH 199 ;
VALUE "„Õ„Êœ «·»œÊÌ" ;
BOLD ;
TOOLTIP "Ì„ﬂ‰ﬂ ≈œŒ· ﬁÌ„Â √Œ—Ï" ;
BACKCOLOR {255,255,128} ;
RIGHTALIGN ;
FONTCOLOR {0,0,255} 

@ 174 ,10 BUTTONEX btn1;
CAPTION "About";
ON CLICK MSGINFO( "Mahmoud Albadawey / Oracle Developer & Instructor" ) ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP "⁄‰ «·„»—„Ã"
@ 212 ,9 BUTTONEX btn2;
CAPTION "Exit";
ON CLICK Exit()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP "«·Œ—ÊÃ „‰ «·»—‰«„Ã"
@ 10 ,6 IMAGE image1;
PICTURE "mypic.jpg";
STRETCH ;
WIDTH 100 HEIGHT 130
@ 99 ,201 LISTBOX list1;
WIDTH 201 ;
HEIGHT 100 ;
ITEMS {"Oracle Developer","Java","C#","Visual Basic"} ;
FONT "Arial" SIZE 10 ;
BOLD ;
TOOLTIP "≈Œ — «· Œ’’" ;
FONTCOLOR {0,0,255}
@ 209 ,200 COMBOBOX combo1;
WIDTH 200 ;
HEIGHT 300;
ITEMS {"Oracle University","Cairo University","King Soud University","Other"} ;
DISPLAYEDIT ;
FONT "Arial" SIZE 14 ;
BOLD ;
TOOLTIP "Ì„ﬂ‰ﬂ ≈œŒ«· √Ì ﬁÌ„ √Œ—Ï" ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,255}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure Exit()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_LESSON2
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Lesson 2'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Using Controls'",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",15,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",23,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'About'",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action 'Mahmoud Albadawey / Oracle Developer & Instructor'",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",35,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Exit'",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Exit",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",41,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'mypic.jpg'",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 ) , Items : {'Oracle Developer','Java','C#','Visual Basic'}",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",49,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo1 ) , Items : {'Oracle University','Cairo University','King Soud University','Other'}",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",57,65)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",66,67)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",68,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Exit ( Event : CLICK )",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",73,73)
Return
*-------------------------------------------------------------------*

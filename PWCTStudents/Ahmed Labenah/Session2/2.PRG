*---------------------------------------------------------------------------*
* Time : 08:21:04    Date : 01/02/2012
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


Resistance R_2_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_2_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 646 ;
HEIGHT 483 ;
ICON "PWCTICON" ;
TITLE "«· ⁄«„· „⁄ «·«œÊ« " ;
MAIN ;
BACKCOLOR {0,255,128} 

@ 10 ,488 LABEL lbl1 ;
VALUE "«· ⁄«„· „⁄ «·«œÊ« " ;
WIDTH 135 ;
HEIGHT 31 ;
FONT "Times New Roman" SIZE 16  ;
BOLD ;
UNDERLINE ;
BACKCOLOR {0,255,128} ;
CENTERALIGN ;
FONTCOLOR {0,0,255}
@ 48 ,419 TEXTBOX text1;
HEIGHT 25 ;
WIDTH 201 ;
VALUE "PWCT" ;
BOLD ;
BACKCOLOR {198,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,255} 

@ 407 ,3 BUTTONEX btn1;
CAPTION "Œ—ÊÃ";
FONTCOLOR {255,0,128};
BACKCOLOR {0,0,255};
ON CLICK close()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 407 ,531 BUTTONEX btn2;
CAPTION " ⁄·Ì„« ";
FONTCOLOR {0,0,255};
BACKCOLOR {255,0,128};
ON GOTFOCUS close1()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 10 ,10 IMAGE image1;
PICTURE "IMG_4854.JPG";
STRETCH ;
WIDTH 394 HEIGHT 344
@ 81 ,419 LISTBOX list1;
WIDTH 203 ;
HEIGHT 198 ;
ITEMS {"Mohamed","Mahmoud","Ahmed","Shiyar","Lucian"} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
SORT ;
FONTCOLOR {0,0,0}
@ 285 ,419 COMBOBOX combo1;
WIDTH 203 ;
ITEMS {"Mohamed","Mahmoud","Ahmed","Shiyar","Lucian"} ;
DISPLAYEDIT ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
SORT ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure close()
win1.Release ( )
return
procedure close1()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_2
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«· ⁄«„· „⁄ «·«œÊ« '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«· ⁄«„· „⁄ «·«œÊ« '",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",22,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Œ—ÊÃ'",30,33)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action close",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",35,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : ' ⁄·Ì„« '",38,41)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON GOTFOCUS : Action close1",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",43,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'IMG_4854.JPG'",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 ) , Items : {'Mohamed','Mahmoud','Ahmed','Shiyar','Lucian'}",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",51,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo1 ) , Items : {'Mohamed','Mahmoud','Ahmed','Shiyar','Lucian'}",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",59,65)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",66,67)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",68,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close ( Event : CLICK )",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close1 ( Event : GOTFOCUS )",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",76,76)
Return
*-------------------------------------------------------------------*

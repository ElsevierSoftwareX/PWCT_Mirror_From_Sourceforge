*---------------------------------------------------------------------------*
* Time : 15:45:04    Date : 12/27/2011
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
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Window Title" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 8 ,207 LABEL lbl1 ;
VALUE "«· ⁄«„· „⁄ «·«œÊ« " ;
WIDTH 221 ;
HEIGHT 62 ;
FONT "Arial" SIZE 24  ;
BOLD ;
BACKCOLOR {236,233,216} ;
RIGHTALIGN ;
FONTCOLOR {0,0,255}
@ 77 ,228 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
VALUE "PWCT" ;
BOLD ;
BACKCOLOR {255,255,0} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} ;
PASSWORD 

@ 302 ,21 BUTTONEX btn1;
CAPTION "Œ—ÊÃ";
FONTCOLOR {255,0,0};
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 302 ,139 BUTTONEX btn2;
CAPTION " ⁄·Ì„« ";
FONTCOLOR {0,0,255};
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 18 ,10 IMAGE image1;
PICTURE "8.JPG";
STRETCH ;
WIDTH 160 HEIGHT 182
@ 114 ,226 LISTBOX list1;
WIDTH 205 ;
HEIGHT 143 ;
ITEMS {"1","2","3"} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {128,255,255} ;
SORT ;
FONTCOLOR {0,0,0}
@ 262 ,226 COMBOBOX combo1;
WIDTH 100 ;
ITEMS {"1","2"} ;
DISPLAYEDIT ;
FONT "arial" SIZE 14 ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF



End Of Resistance

INIT PROCEDURE Init_2
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Window Title'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«· ⁄«„· „⁄ «·«œÊ« '",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",21,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Œ—ÊÃ'",30,32)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",33,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : ' ⁄·Ì„« '",36,38)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",39,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : '8.JPG'",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 ) , Items : {'1','2','3'}",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",47,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo1 ) , Items : {'1','2'}",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",55,60)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",63,65)
Return
*-------------------------------------------------------------------*

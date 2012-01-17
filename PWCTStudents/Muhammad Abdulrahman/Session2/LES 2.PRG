*---------------------------------------------------------------------------*
* Time : 09:45:38    Date : 01/17/2012
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


Resistance R_LES_2_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LES_2_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Controls" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 12 ,284 LABEL lbl1 ;
VALUE "«· ⁄«„· „⁄ «·√œÊ« " ;
WIDTH 186 ;
HEIGHT 42 ;
FONT "Arial" SIZE 22  ;
BOLD ;
BACKCOLOR {236,233,216} ;
CENTERALIGN ;
FONTCOLOR {0,128,0}
@ 63 ,259 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
VALUE "PWCT" ;
BOLD ;
BACKCOLOR {255,255,128} ;
RIGHTALIGN ;
FONTCOLOR {0,0,255} 

@ 317 ,12 BUTTONEX btn1;
CAPTION "Œ—ÊÃ";
FONTCOLOR {255,0,0};
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 319 ,138 BUTTONEX btn2;
CAPTION " ⁄·Ì„« ";
FONTCOLOR {0,0,255};
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 10 ,10 IMAGE image1;
PICTURE "EGYPT.JPG";
STRETCH ;
WIDTH 200 HEIGHT 157
@ 113 ,259 LISTBOX list1;
WIDTH 200 ;
HEIGHT 134 ;
ITEMS {"Muhammed","Abdelrahman","Awwad"} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {128,255,255} ;
SORT ;
FONTCOLOR {255,0,0}
@ 265 ,259 COMBOBOX combo1;
WIDTH 200 ;
ITEMS {"Muhammad","Abdelrahman","Awwad","Mahmoud","Ahmed"} ;
DISPLAYEDIT ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {128,255,128} ;
FONTCOLOR {255,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF



End Of Resistance

INIT PROCEDURE Init_LES_2
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Controls'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«· ⁄«„· „⁄ «·√œÊ« '",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",24,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Œ—ÊÃ'",32,34)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",35,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : ' ⁄·Ì„« '",38,40)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",41,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'EGYPT.JPG'",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 ) , Items : {'Muhammed','Abdelrahman','Awwad'}",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",49,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo1 ) , Items : {'Muhammad','Abdelrahman','Awwad','Mahmoud','Ahmed'}",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",57,62)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",65,67)
Return
*-------------------------------------------------------------------*

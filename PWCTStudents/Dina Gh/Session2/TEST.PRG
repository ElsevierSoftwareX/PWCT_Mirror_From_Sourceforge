*---------------------------------------------------------------------------*
* Time : 06:37:46    Date : 01/22/2012
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


Resistance R_TEST_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 510 ;
HEIGHT 440 ;
ICON "PWCTICON" ;
TITLE "Hello World" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 9 ,271 LABEL lbl1 ;
VALUE "«· ⁄«„· „⁄ «·√œÊ«  " ;
WIDTH 202 ;
HEIGHT 46 ;
FONT "Arial" SIZE 22  ;
BOLD ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,64,128}
@ 54 ,270 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
VALUE "PWCT" ;
BOLD ;
BACKCOLOR {212,212,212} ;
RIGHTALIGN ;
FONTCOLOR {128,0,64} ;
PASSWORD 

@ 299 ,21 BUTTONEX btn1;
CAPTION "Œ—ÊÃ";
FONTCOLOR {255,0,0};
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 299 ,146 BUTTONEX btn2;
CAPTION " ⁄·Ì„« ";
FONTCOLOR {0,0,160};
WIDTH 104 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 9 ,10 IMAGE image1;
PICTURE "E:\GUIDANCE\PERSONAL FOLDERS\PICTURES\187755_100002150382349_1574013_N.JPG";
STRETCH ;
WIDTH 180 HEIGHT 167
@ 107 ,269 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
ITEMS {"1","2","3"} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,128} ;
FONTCOLOR {64,0,0}
@ 323 ,269 COMBOBOX combo1;
WIDTH 100 ;
HEIGHT 300;
ITEMS {"1","2","3"} ;
DISPLAYEDIT ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF



End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Hello World'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«· ⁄«„· „⁄ «·√œÊ«  '",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",20,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Œ—ÊÃ'",29,31)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",32,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : ' ⁄·Ì„« '",35,37)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",38,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'E:\GUIDANCE\PERSONAL FOLDERS\PICTURES\187755_100002150382349_1574013_N.JPG'",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 ) , Items : {'1','2','3'}",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",46,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo1 ) , Items : {'1','2','3'}",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",53,59)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",60,61)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",62,64)
Return
*-------------------------------------------------------------------*

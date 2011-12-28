*---------------------------------------------------------------------------*
* Time : 23:52:37    Date : 12/27/2011
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


Resistance R_LABEL_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LABEL_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Controls" ;
MAIN ;
BACKCOLOR {0,64,128} 

@ 27 ,206 LABEL lbl1 ;
VALUE "Work With Labels" ;
WIDTH 123 ;
HEIGHT 45 ;
FONT "Book Antiqua" SIZE 9  ;
BOLD ;
BACKCOLOR {236,233,216} ;
CENTERALIGN ;
FONTCOLOR {0,255,64}
@ 99 ,203 TEXTBOX text1;
HEIGHT 45 ;
WIDTH 229 ;
VALUE "PWCT" ;
BOLD ;
ITALIC ;
BACKCOLOR {0,0,255} ;
FONTCOLOR {0,0,0} ;
PASSWORD 

@ 202 ,55 BUTTONEX btn1;
CAPTION "Exit";
FONTCOLOR {255,128,0};
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 255 ,53 BUTTONEX btn2;
CAPTION "Help";
FONTCOLOR {255,0,255};
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 6 ,13 IMAGE image1;
PICTURE "D:\PHOTOS\CARTOON PHOTOS\KUNG FU PANDA\KUNG_FU_PANDA.JPG";
WIDTH 159 HEIGHT 182
@ 157 ,198 LISTBOX list1;
WIDTH 234 ;
HEIGHT 165 ;
ITEMS {"C#","Assembly","Qt(C++)"} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
SORT ;
FONTCOLOR {0,0,0}
@ 326 ,196 COMBOBOX combo1;
WIDTH 169 ;
ITEMS {"Desktop application","Web Developer"} ;
DISPLAYEDIT ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF



End Of Resistance

INIT PROCEDURE Init_LABEL
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Controls'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Work With Labels'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",21,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Exit'",30,32)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",33,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Help'",36,38)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",39,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'D:\PHOTOS\CARTOON PHOTOS\KUNG FU PANDA\KUNG_FU_PANDA.JPG'",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 ) , Items : {'C#','Assembly','Qt(C++)'}",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",46,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo1 ) , Items : {'Desktop application','Web Developer'}",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",54,59)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",60,61)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",62,64)
Return
*-------------------------------------------------------------------*

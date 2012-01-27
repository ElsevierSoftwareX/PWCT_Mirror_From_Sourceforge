*---------------------------------------------------------------------------*
* Time : 00:27:22    Date : 01/25/2012
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


Resistance R_CONTROLS_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CONTROLS_18smart1() code
if !iswindowdefined( Main )
DEFINE WINDOW Main ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Controls  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {192,192,192} ;
FONT "Calibri" SIZE 14 

@ 9 ,10 LABEL lbTitle ;
VALUE "Dealing with controls " ;
WIDTH 219 ;
HEIGHT 33 ;
FONT "Calibri" SIZE 18  ;
BOLD ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 56 ,13 TEXTBOX txtControl;
HEIGHT 30 ;
WIDTH 200 ;
VALUE "PWCT" ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 313 ,372 BUTTONEX btClose;
CAPTION "Close ";
WIDTH 100 HEIGHT 30 ;
FONT "Calibri" SIZE 14 ;
TOOLTIP "click to close"
@ 313 ,247 BUTTONEX btHelp;
CAPTION "Help";
FONTCOLOR {0,128,255};
WIDTH 100 HEIGHT 30 ;
FONT "Calibri" SIZE 14 ;
TOOLTIP "click to get help"
@ 15 ,344 IMAGE imgQuran;
PICTURE "QURAN.JPG";
STRETCH ;
WIDTH 128 HEIGHT 127
@ 96 ,13 LISTBOX lstItems;
WIDTH 200 ;
HEIGHT 204 ;
ITEMS {"Ubuntu","Mac","Windows"} ;
FONT "Calibri" SIZE 15 ;
BACKCOLOR {255,255,255} ;
MULTISELECT ;
SORT ;
FONTCOLOR {0,0,0}
@ 313 ,13 COMBOBOX cmbOs;
WIDTH 200 ;
ITEMS {"Ubuntu","Mac","Windows"} ;
DISPLAYEDIT ;
FONT "Calibri" SIZE 15 ;
TOOLTIP "Popular Operating systems" ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW Main
EndIF



End Of Resistance

INIT PROCEDURE Init_CONTROLS
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( Main ) , Title : 'Controls  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbTitle ) , Caption : 'Dealing with controls '",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",17,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( txtControl  )",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",24,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btClose ) , Caption : 'Close '",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",32,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btHelp ) , Caption : 'Help'",35,37)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",38,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( imgQuran ) , Image : 'QURAN.JPG'",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( lstItems ) , Items : {'Ubuntu','Mac','Windows'}",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",46,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( cmbOs ) , Items : {'Ubuntu','Mac','Windows'}",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",55,61)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",62,63)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",64,66)
Return
*-------------------------------------------------------------------*

*---------------------------------------------------------------------------*
* Time : 08:04:09    Date : 10/09/2011
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
Function Main
Public True,False 
True = .T. 
False = .F. 
New Server Server1 Type Slave Server Eigen Value 000
 Details :
 * (Noun) *
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


Resistance R_B1_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_B1_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 660 ;
HEIGHT 456 ;
ICON "PWCTICON" ;
TITLE "Mr.Ahmed" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 20 ,432 LABEL lbl1 ;
VALUE "«· ⁄«„· „⁄ «·√œÊ« " ;
WIDTH 156 ;
HEIGHT 28 ;
FONT "Arial" SIZE 18  ;
BOLD ;
BACKCOLOR {155,221,176} ;
CENTERALIGN ;
FONTCOLOR {0,128,64}
@ 67 ,432 TEXTBOX text1;
HEIGHT 28 ;
WIDTH 156 ;
VALUE "«·Õ„œ ··Â" ;
BOLD ;
BACKCOLOR {255,255,0} ;
FONTCOLOR {0,128,0} 

@ 372 ,21 BUTTONEX btn1;
CAPTION "Œ—ÊÃ";
FONTCOLOR {255,0,0};
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
BOLD ;
TOOLTIP ""
@ 372 ,137 BUTTONEX btn2;
CAPTION " ⁄·Ì„« ";
FONTCOLOR {0,0,255};
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
BOLD ;
TOOLTIP ""
@ 21 ,24 IMAGE image1;
PICTURE "AHMED.JPG";
STRETCH ;
WIDTH 122 HEIGHT 148
@ 105 ,432 LISTBOX list1;
WIDTH 158 ;
HEIGHT 106 ;
ITEMS {"ahmed","omar","Nada"} ;
FONT "Arial" SIZE 18 ;
BACKCOLOR {255,255,255} ;
SORT ;
FONTCOLOR {0,0,255}
@ 230 ,432 COMBOBOX combo1;
WIDTH 100 ;
ITEMS {"ahmed","omar","Nada"} ;
DISPLAYEDIT ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,255}
END WINDOW

ACTIVATE WINDOW win1
EndIF



End Of Resistance

INIT PROCEDURE Init_B1
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 )",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",21,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 )",28,30)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",31,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 )",35,37)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",38,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'AHMED.JPG'",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",47,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo1 )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",55,60)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",63,65)
Return
*-------------------------------------------------------------------*

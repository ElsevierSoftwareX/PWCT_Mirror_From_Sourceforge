*---------------------------------------------------------------------------*
* Time : 14:56:34    Date : 12/30/2011
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


Resistance R_NEW_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_NEW_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "new" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
BACKCOLOR {255,255,255} 

@ 15 ,261 LABEL lbl1 ;
VALUE "«· ⁄«„· „⁄ «·√œÊ« " ;
WIDTH 210 ;
HEIGHT 51 ;
FONT "Arial" SIZE 24  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,64,128}
@ 310 ,15 BUTTONEX btn1;
CAPTION "Œ—ÊÃ";
FONTCOLOR {255,0,128};
ON CLICK myexit()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 310 ,124 BUTTONEX btn2;
CAPTION " ⁄·Ì„« ";
FONTCOLOR {128,0,255};
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 86 ,261 TEXTBOX text1;
HEIGHT 39 ;
WIDTH 210 ;
VALUE "PWCT" ;
BOLD ;
BACKCOLOR {255,255,0} ;
FONTCOLOR {0,0,0} ;
PASSWORD 

@ 15 ,9 IMAGE image1;
PICTURE "320230_285620698127881_100000398603708_876679_749982366_A.JPG";
STRETCH ;
WIDTH 210 HEIGHT 153
@ 132 ,261 LISTBOX list1;
WIDTH 210 ;
HEIGHT 139 ;
ITEMS {"seif","din","ayash"} ;
FONT "arial" SIZE 9 ;
BACKCOLOR {0,255,255} ;
FONTCOLOR {0,0,0}
@ 300 ,261 COMBOBOX combo1;
WIDTH 100 ;
ITEMS {"seif","din","ayash"} ;
DISPLAYEDIT ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myexit
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_NEW
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'new'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«· ⁄«„· „⁄ «·√œÊ« '",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",15,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Œ—ÊÃ'",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myexit",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",24,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : ' ⁄·Ì„« '",27,29)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",30,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",34,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : '320230_285620698127881_100000398603708_876679_749982366_A.JPG'",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 ) , Items : {'seif','din','ayash'}",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",47,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo1 ) , Items : {'seif','din','ayash'}",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",54,59)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",60,61)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",62,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myexit",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",67,67)
Return
*-------------------------------------------------------------------*

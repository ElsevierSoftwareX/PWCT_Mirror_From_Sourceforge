*---------------------------------------------------------------------------*
* Time : 00:18:00    Date : 12/11/2011
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


Resistance R_PROG2_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PROG2_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 729 ;
HEIGHT 445 ;
ICON "PWCTICON" ;
TITLE "«·»—‰«„Ã 2" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 17 ,270 LABEL lbl1 ;
VALUE "„—Õ»« »«·⁄«·„ «·Ã„Ì·" ;
WIDTH 124 ;
HEIGHT 38 ;
FONT "andalus" SIZE 14  ;
BACKCOLOR {255,128,255} ;
CENTERALIGN ;
FONTCOLOR {255,0,0}
@ 82 ,436 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
ITEMS {'1','2','3'} ;
FONT "andalus" SIZE 14 ;
BACKCOLOR {255,255,255} ;
MULTISELECT ;
SORT ;
FONTCOLOR {0,0,0}
@ 298 ,438 COMBOBOX combo1;
WIDTH 199 ;
HEIGHT 300;
ITEMS {"whatever u want","what ever i want"} ;
DISPLAYEDIT ;
FONT "andalus" SIZE 14 ;
BOLD ;
ITALIC ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 80 ,27 IMAGE image1;
PICTURE "800X600.JPG";
STRETCH ;
WIDTH 316 HEIGHT 209
@ 318 ,107 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
VALUE "please enter the password" ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
PASSWORD 

END WINDOW

ACTIVATE WINDOW win1
EndIF



End Of Resistance

INIT PROCEDURE Init_PROG2
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«·»—‰«„Ã 2'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '„—Õ»« »«·⁄«·„ «·Ã„Ì·'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 ) , Items : {'1','2','3'}",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",20,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo1 ) , Items : {'whatever u want','what ever i want'}",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",29,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : '800X600.JPG'",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",43,49)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",52,54)
Return
*-------------------------------------------------------------------*

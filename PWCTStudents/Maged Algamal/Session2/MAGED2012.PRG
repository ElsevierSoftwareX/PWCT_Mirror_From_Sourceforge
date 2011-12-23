*---------------------------------------------------------------------------*
* Time : 01:08:20    Date : 12/23/2011
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


Resistance R_MAGED2012_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MAGED2012_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 597 ;
HEIGHT 497 ;
ICON "PWCTICON" ;
TITLE "deal with tools" ;
MAIN ;
BACKCOLOR {192,192,192} 

@ 28 ,314 LABEL lbl1 ;
VALUE "deal with tools" ;
WIDTH 229 ;
HEIGHT 46 ;
FONT "Bernard MT Condensed" SIZE 18  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {128,0,255}
@ 426 ,432 BUTTONEX btn1;
CAPTION "close window";
FONTCOLOR {128,0,255};
ON CLICK closeapplication()  ;
WIDTH 150 HEIGHT 29 ;
FONT "Bernard MT Condensed" SIZE 18 ;
TOOLTIP ""
@ 426 ,261 BUTTONEX btn2;
CAPTION "instructions";
FONTCOLOR {128,0,255};
ON CLICK MSGINFO( 'thanks eng . mahmoud fayed' ) ;
WIDTH 140 HEIGHT 30 ;
FONT "Bernard MT Condensed" SIZE 18 ;
TOOLTIP ""
@ 77 ,290 TEXTBOX text1;
HEIGHT 34 ;
WIDTH 229 ;
BACKCOLOR {0,255,0} ;
FONTCOLOR {128,0,255} ;
PASSWORD 

@ 10 ,10 IMAGE image1;
PICTURE "29072011274.JPG";
STRETCH ;
WIDTH 135 HEIGHT 187
@ 128 ,290 LISTBOX list1;
WIDTH 229 ;
HEIGHT 220 ;
ITEMS {"abdelhadi","mohamed","ahmed"} ;
FONT "Arial" SIZE 18 ;
BACKCOLOR {0,255,255} ;
SORT ;
FONTCOLOR {128,0,255}
@ 363 ,290 COMBOBOX combo1;
WIDTH 229 ;
ITEMS {"abdelhadi","mohamed"} ;
DISPLAYEDIT ;
FONT "Arial" SIZE 18 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,0,255}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure closeapplication()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_MAGED2012
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'deal with tools'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'deal with tools'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'close window'",18,20)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closeapplication",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",22,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'instructions'",25,27)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action 'thanks eng . mahmoud fayed'",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",29,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",33,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : '29072011274.JPG'",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 ) , Items : {'abdelhadi','mohamed','ahmed'}",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",44,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo1 ) , Items : {'abdelhadi','mohamed'}",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",52,57)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",58,59)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",60,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closeapplication ( Event : CLICK )",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",65,65)
Return
*-------------------------------------------------------------------*

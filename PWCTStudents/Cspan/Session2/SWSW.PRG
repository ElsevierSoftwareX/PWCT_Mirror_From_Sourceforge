*---------------------------------------------------------------------------*
* Time : 21:03:10    Date : 01/10/2012
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


Resistance R_SWSW_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SWSW_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 382 ;
HEIGHT 265 ;
ICON "PWCTICON" ;
TITLE "Saisaban" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {192,192,192} 

@ 1 ,120 LABEL lbl1 ;
VALUE "The jobs" ;
WIDTH 90 ;
HEIGHT 25 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {255,0,128} ;
FONTCOLOR {0,255,0}
@ 175 ,10 BUTTONEX btn1;
CAPTION "close";
ON CLICK close()  ;
WIDTH 126 HEIGHT 29 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 60 ,6 LISTBOX list1;
WIDTH 129 ;
HEIGHT 100 ;
ITEMS {"Teaching","Public works","Scientific"} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 60 ,143 IMAGE image1;
PICTURE "SWSW.JPG";
STRETCH ;
WIDTH 178 HEIGHT 154
@ 31 ,6 COMBOBOX combo1;
WIDTH 131 ;
HEIGHT 300;
ITEMS {"Doctor","Electric factor","Else"} ;
DISPLAYEDIT ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
SORT ;
FONTCOLOR {0,0,0}
@ 33 ,152 LABEL lbl2 ;
VALUE "Else" ;
WIDTH 63 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 32 ,208 TEXTBOX text1;
HEIGHT 26 ;
WIDTH 111 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc close
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_SWSW
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Saisaban'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'The jobs'",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",15,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'close'",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action close()",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",23,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 ) , Items : {'Teaching','Public works','Scientific'}",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",27,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'SWSW.JPG'",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo1 ) , Items : {'Doctor','Electric factor','Else'}",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",38,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Else'",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",48,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",54,58)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",61,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",66,66)
Return
*-------------------------------------------------------------------*

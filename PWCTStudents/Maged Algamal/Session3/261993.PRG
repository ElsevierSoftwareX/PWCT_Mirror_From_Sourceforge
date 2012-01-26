*---------------------------------------------------------------------------*
* Time : 22:16:19    Date : 12/28/2011
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


Resistance R_261993_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_261993_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 784 ;
HEIGHT 452 ;
ICON "PWCTICON" ;
TITLE "say my prcentage" ;
MAIN ;
BACKCOLOR {192,192,192} 

@ 219 ,114 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 353 ,527 BUTTONEX btn1;
CAPTION "close window";
FONTCOLOR {255,0,0};
WIDTH 229 HEIGHT 41 ;
FONT "Matura MT Script Capitals" SIZE 20 ;
TOOLTIP ""
@ 290 ,56 BUTTONEX btn2;
CAPTION "say my prcentage";
FONTCOLOR {128,64,64};
WIDTH 302 HEIGHT 40 ;
FONT "Forte" SIZE 20 ;
TOOLTIP ""
@ 152 ,117 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 82 ,114 TEXTBOX text5;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 26 ,79 LABEL lbl1 ;
VALUE "calculate my prcentage" ;
WIDTH 402 ;
HEIGHT 37 ;
FONT "Castellar" SIZE 18  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {128,0,255}
@ 80 ,351 LABEL lbl2 ;
VALUE "main degree" ;
WIDTH 147 ;
HEIGHT 31 ;
FONT "Bernard MT Condensed" SIZE 18  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 154 ,349 LABEL lbl3 ;
VALUE "my degree" ;
WIDTH 131 ;
HEIGHT 33 ;
FONT "Bernard MT Condensed" SIZE 18  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 223 ,343 LABEL lbl4 ;
VALUE "my prcentage" ;
WIDTH 161 ;
HEIGHT 32 ;
FONT "Bernard MT Condensed" SIZE 18  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 1 ,570 IMAGE image1;
PICTURE "29072011275.JPG";
STRETCH ;
WIDTH 188 HEIGHT 274
@ 289 ,586 LABEL lbl5 ;
VALUE "Maged Algmal" ;
WIDTH 136 ;
HEIGHT 41 ;
FONT "Brush Script MT" SIZE 18  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
END WINDOW



End Of Resistance

INIT PROCEDURE Init_261993
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'say my prcentage'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",12,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'close window'",17,19)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'say my prcentage'",23,25)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",26,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",30,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text5  )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",36,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'calculate my prcentage'",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",43,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'main degree'",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",50,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'my degree'",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",57,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'my prcentage'",62,63)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",64,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : '29072011275.JPG'",69,70)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'Maged Algmal'",73,74)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",75,79)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",80,81)
Return
*-------------------------------------------------------------------*

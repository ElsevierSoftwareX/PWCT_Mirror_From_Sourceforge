*---------------------------------------------------------------------------*
* Time : 15:53:05    Date : 12/23/2011
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


Resistance R_SOME_COMPONENTS_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SOME_COMPONENTS_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 542 ;
HEIGHT 387 ;
ICON "PWCTICON" ;
TITLE "prog components" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 14 ,35 LABEL lbl1 ;
VALUE "Here is some programs components and how to add it" ;
WIDTH 490 ;
HEIGHT 36 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255}
@ 64 ,313 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,128,255} ;
FONTCOLOR {255,0,0} 

@ 57 ,33 LISTBOX list1;
WIDTH 186 ;
HEIGHT 94 ;
ITEMS {"mohamed","ahmed","eslam","Ebraheem","Amr","Emad"} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,128,255} ;
FONTCOLOR {255,0,0}
@ 36 ,33 LABEL lbl2 ;
VALUE "LIST BOX" ;
WIDTH 186 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 38 ,309 LABEL lbl3 ;
VALUE "TEXT BOX" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 185 ,33 COMBOBOX combo1;
WIDTH 186 ;
HEIGHT 300;
ITEMS {"mohamed","ahmed","eslam","Ebraheem","Amr","Emad"} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,128,255} ;
FONTCOLOR {255,0,0}
@ 244 ,33 IMAGE image1;
PICTURE "STRAWBERRY.JPG";
STRETCH ;
WIDTH 156 HEIGHT 104
@ 217 ,33 LABEL lbl4 ;
VALUE "IMAGE" ;
WIDTH 186 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 154 ,33 LABEL lbl5 ;
VALUE "Combo Box" ;
WIDTH 186 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 304 ,416 BUTTONEX btn1;
CAPTION "EXIT";
ON CLICK close()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 144 ,313 DATEPICKER datepicker1;
WIDTH 200 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {255,128,255} ;
FONTCOLOR {255,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure close()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_SOME_COMPONENTS
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'prog components'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Here is some programs components and how to add it'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",16,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",22,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 ) , Items : {'mohamed','ahmed','eslam','Ebraheem','Amr','Emad'}",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",28,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'LIST BOX'",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",36,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'TEXT BOX'",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",43,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo1 ) , Items : {'mohamed','ahmed','eslam','Ebraheem','Amr','Emad'}",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",49,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'STRAWBERRY.JPG'",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'IMAGE'",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",61,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'Combo Box'",66,67)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",68,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'EXIT'",73,74)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action close",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",76,78)
SS_ESASTEP("Circuits\Main\Main\Main","Define New DatePicker ( datepicker1 )",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",80,83)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",84,85)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",86,88)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close ( Event : CLICK )",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",91,91)
Return
*-------------------------------------------------------------------*

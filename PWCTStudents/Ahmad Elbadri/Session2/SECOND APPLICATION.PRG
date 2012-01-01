*---------------------------------------------------------------------------*
* Time : 01:38:18    Date : 01/02/2012
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


Resistance R_SECOND_APPLICATION_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SECOND_APPLICATION_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 728 ;
HEIGHT 532 ;
ICON "PWCTICON" ;
TITLE "Second Application" ;
MAIN ;
TOPMOST ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {244,242,138} 

@ 13 ,255 LABEL lbl1 ;
VALUE "Personal Information" ;
WIDTH 198 ;
HEIGHT 31 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {241,236,141} ;
FONTCOLOR {255,0,0}
@ 29 ,458 IMAGE image1;
PICTURE "CV_CARTOON.JPG";
STRETCH ;
WIDTH 249 HEIGHT 301
@ 398 ,431 BUTTONEX btn1;
CAPTION "Info";
FONTCOLOR {0,0,255};
BACKCOLOR {128,255,128};
ON CLICK MSGINFO( "Built By Ahmad Elbadri , Using Mr's Fayed PWCT" ) ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 398 ,561 BUTTONEX btn2;
CAPTION "Exit";
FONTCOLOR {255,0,0};
BACKCOLOR {128,255,128};
ON CLICK closeapplication()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 74 ,131 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 74 ,26 LABEL lbl2 ;
VALUE "Name" ;
WIDTH 79 ;
HEIGHT 36 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,128} ;
FONTCOLOR {0,0,0}
@ 142 ,26 LABEL lbl3 ;
VALUE "Age" ;
WIDTH 61 ;
HEIGHT 33 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,128} ;
FONTCOLOR {0,0,0}
@ 208 ,26 LABEL lbl4 ;
VALUE "Job" ;
WIDTH 47 ;
HEIGHT 32 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,128} ;
FONTCOLOR {0,0,0}
@ 273 ,26 LABEL lbl5 ;
VALUE "Country" ;
WIDTH 79 ;
HEIGHT 32 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,128} ;
FONTCOLOR {0,0,0}
@ 142 ,131 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 200 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 208 ,131 COMBOBOX combo1;
WIDTH 100 ;
HEIGHT 300;
ITEMS {"Programmer","Engineer","Doctor","Policeman"} ;
DISPLAYEDIT ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
SORT ;
FONTCOLOR {0,0,0}
@ 252 ,130 LISTBOX list1;
WIDTH 200 ;
HEIGHT 191 ;
ITEMS {"Egypt","Qatar","Iraq","Saudi Arabia","Bahrin","Syria","Sudan","Algeria","Tunisia","Lebanon","Syria","Yemen","Libya"} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure closeapplication()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_SECOND_APPLICATION
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Second Application'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Personal Information'",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",17,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'CV_CARTOON.JPG'",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Info'",26,29)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action 'Built By Ahmad Elbadri , Using Mr's Fayed PWCT'",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",31,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Exit'",34,37)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closeapplication",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",39,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",43,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Name'",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",50,54)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Age'",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",57,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Job'",62,63)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",64,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'Country'",69,70)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",71,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",77,82)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo1 ) , Items : {'Programmer','Engineer','Doctor','Policeman'}",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",84,91)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 ) , Items : {'Egypt','Qatar','Iraq','Saudi Arabia','Bahrin','Syria','Sudan','Algeria','Tunisia','Lebanon','Syria','Yemen','Libya'}",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",93,98)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",99,100)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",101,103)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closeapplication ( Event : CLICK )",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",106,106)
Return
*-------------------------------------------------------------------*

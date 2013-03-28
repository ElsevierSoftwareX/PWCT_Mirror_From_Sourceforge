*---------------------------------------------------------------------------*
* Time : 19:12:30    Date : 10/21/2011
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
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_DEMO_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_DEMO_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 505 ;
HEIGHT 400 ;
ICON "C:\SSBUILD\ICON\PWCT.ICO" ;
TITLE "Print Text" ;
MAIN ;
BACKCOLOR {64,0,64} 

@ 311 ,14 LABEL lbl1 ;
VALUE "Text" ;
WIDTH 60 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 311 ,76 TEXTBOX text1;
ON ENTER myadd()  ;
HEIGHT 30 ;
WIDTH 300 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 311 ,380 BUTTONEX btn1;
CAPTION "Print";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK myadd()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 17 ,14 EDITBOX edit1;
WIDTH 230 ;
HEIGHT 279;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 18 ,250 LISTBOX list1;
WIDTH 230 ;
HEIGHT 279 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc myadd
mystr := win1.text1.Value
if .not. empty(win1.edit1.VALUE)
win1.edit1.VALUE := win1.edit1.VALUE + CHR(13) + CHR(10) + mystr
else
win1.edit1.VALUE := mystr
endif
Win1.List1.Additem ( mystr )
Return Nil


End Of Resistance

INIT PROCEDURE Init_DEMO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",49)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Print Text'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Text'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON ENTER : Action myadd",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",21,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Print'",27,30)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action myadd",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",32,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",36,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",42,46)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",49,51)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myadd",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","mystr = win1.text1.Value",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (mystr) to Editbox (edit1) of Window (win1)",54,58)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (mystr) to Listbox (List1) of Window (Win1)",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",60,60)
Return
*-------------------------------------------------------------------*

*---------------------------------------------------------------------------*
* Time : 23:20:27    Date : 12/16/2011
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


Resistance R_SEC_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SEC_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 510 ;
HEIGHT 440 ;
ICON "PWCTICON" ;
TITLE "a pro with ListBox" ;
MAIN ;
BACKCOLOR {0,0,0} 

@ 87 ,143 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 320 ,215 BUTTONEX btn1;
CAPTION "add item";
ON CLICK mywork()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 320 ,360 BUTTONEX btn2;
CAPTION "close app";
ON CLICK closeapplication()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 15 ,78 LABEL lbl1 ;
VALUE "here is a programm with a Listbox" ;
WIDTH 330 ;
HEIGHT 31 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {0,0,0} ;
FONTCOLOR {255,255,255}
@ 43 ,78 LABEL lbl2 ;
VALUE "High level Programming languages" ;
WIDTH 326 ;
HEIGHT 33 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {0,0,0} ;
FONTCOLOR {255,255,255}
@ 319 ,24 BUTTONEX btn3;
CAPTION "this pro designed by";
ON CLICK MSGINFO( "Mhd manssour" ) ;
WIDTH 178 HEIGHT 29 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure mywork()
Win1.List1.Additem ( "java " )
Win1.List1.Additem ( "C++ " )
Win1.List1.Additem ( "Visual basic " )
Win1.List1.Additem ( "Delphi " )
Win1.List1.Additem ( " PWCT" )
return
procedure closeapplication()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_SEC
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'a pro with ListBox'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",12,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'add item'",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mywork",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'close app'",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closeapplication",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",26,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'here is a programm with a Listbox'",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",31,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'High level Programming languages'",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",38,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'this pro designed by'",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action 'Mhd manssour'",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",46,48)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",49,50)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",51,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mywork ( Event : CLICK )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('java ') to Listbox (List1) of Window (Win1)",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('C++ ') to Listbox (List1) of Window (Win1)",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Visual basic ') to Listbox (List1) of Window (Win1)",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Delphi ') to Listbox (List1) of Window (Win1)",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (' PWCT') to Listbox (List1) of Window (Win1)",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closeapplication ( Event : CLICK )",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",63,63)
Return
*-------------------------------------------------------------------*

*---------------------------------------------------------------------------*
* Time : 01:49:52    Date : 02/28/2012
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2012]  
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


Resistance R_INTRO2_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_INTRO2_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "add items   " ;
MAIN ;
BACKCOLOR {0,0,255} 

@ 50 ,123 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,0} ;
FONTCOLOR {0,0,0}
@ 271 ,23 BUTTONEX btn1;
CAPTION "close ";
ON CLICK closeapplication()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 16 ;
TOOLTIP ""
@ 275 ,174 BUTTONEX btn2;
CAPTION "add items ";
ON CLICK towork()  ;
WIDTH 115 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 273 ,350 BUTTONEX btn3;
CAPTION "Help ";
ON CLICK MSGINFO( " ⁄Ì» ⁄·Ìﬂ „‘ ⁄«—›  ÷Ì› «·ﬂ·„«  " ) ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
@ 17 ,123 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK "add items to the box" 

END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure closeapplication()
win1.Release ( )
return
procedure towork()
win1.list1.AddItem ( " thank u " )
win1.list1.AddItem ( " for learning " )
win1.list1.AddItem ( " again & again  " )
Win1.List1.Additem ( "‘ﬂ—« ⁄·Ï  ⁄·Ì„ﬂ " )
Win1.List1.Additem ( "Ê ‘—Õﬂ «·„„Ì“  " )
Win1.List1.Additem ( "—»‰« ÌÃ⁄·Â ›Ï „Ì“«‰ Õ”‰« ﬂ" )
return


End Of Resistance

INIT PROCEDURE Init_INTRO2
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'add items   '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",12,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'close '",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closeapplication",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'add items '",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action towork",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",26,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Help '",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ' ⁄Ì» ⁄·Ìﬂ „‘ ⁄«—›  ÷Ì› «·ﬂ·„«  '",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",32,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",36,42)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",45,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closeapplication ( Event : CLICK )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure towork ( Event : CLICK )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( ' thank u ' )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( ' for learning ' )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( ' again & again  ' )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('‘ﬂ—« ⁄·Ï  ⁄·Ì„ﬂ ') to Listbox (List1) of Window (Win1)",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Ê ‘—Õﬂ «·„„Ì“  ') to Listbox (List1) of Window (Win1)",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('—»‰« ÌÃ⁄·Â ›Ï „Ì“«‰ Õ”‰« ﬂ') to Listbox (List1) of Window (Win1)",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",58,58)
Return
*-------------------------------------------------------------------*

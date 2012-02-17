*---------------------------------------------------------------------------*
* Time : 23:38:25    Date : 02/13/2012
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
TITLE "«·œ—” «· „ÂÌœÏ «·À«‰Ï  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 1 ,1 IMAGE image1;
PICTURE "HOME.JPG";
STRETCH ;
WIDTH 490 HEIGHT 362
@ 276 ,210 BUTTONEX btn1;
CAPTION "«÷› ";
ON CLICK add()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arabic Transparent" SIZE 18 ;
TOOLTIP ""
@ 23 ,13 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 33 ,292 COMBOBOX combo1;
WIDTH 161 ;
HEIGHT 300;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure add()
win1.list1.AddItem ( "1" )
win1.list1.AddItem ( "2" )
win1.list1.AddItem ( "3" )
win1.combo1.AddItem ( "1" )
win1.combo1.AddItem ( "2" )
win1.combo1.AddItem ( "3" )
Win1.List1.Additem ( "„—Õ»« " )
Win1.List1.Additem ( " «” «–Ï " )
Win1.List1.Additem ( " „Õ„Êœ " )
Win1.List1.Additem ( " ›«Ìœ " )
return


End Of Resistance

INIT PROCEDURE Init_INTRO2
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '«·œ—” «· „ÂÌœÏ «·À«‰Ï  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'HOME.JPG'",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«÷› '",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action add",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",18,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",22,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo1 )",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",28,32)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",35,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure add ( Event : CLICK )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( '1' )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( '2' )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( '3' )",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","win1.combo1.AddItem ( '1' )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","win1.combo1.AddItem ( '2' )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","win1.combo1.AddItem ( '3' )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('„—Õ»« ') to Listbox (List1) of Window (Win1)",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (' «” «–Ï ') to Listbox (List1) of Window (Win1)",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (' „Õ„Êœ ') to Listbox (List1) of Window (Win1)",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (' ›«Ìœ ') to Listbox (List1) of Window (Win1)",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",49,49)
Return
*-------------------------------------------------------------------*

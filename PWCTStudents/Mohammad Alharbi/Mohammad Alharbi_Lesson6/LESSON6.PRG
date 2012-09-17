*---------------------------------------------------------------------------*
* Time : 09:58:30    Date : 09/17/2012
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


Resistance R_LESSON6_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON6_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 451 ;
HEIGHT 260 ;
ICON "PWCTICON" ;
TITLE "listbox  " ;
MAIN ;
BACKCOLOR {128,128,255} 

@ 30 ,374 LABEL lbl1 ;
VALUE "«·«”„ " ;
WIDTH 44 ;
HEIGHT 28 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 80 ,373 LABEL lbl2 ;
VALUE "«·⁄„—" ;
WIDTH 49 ;
HEIGHT 31 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 27 ,237 TEXTBOX text1;
HEIGHT 34 ;
WIDTH 130 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 79 ,237 TEXTBOX text2;
HEIGHT 32 ;
WIDTH 128 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 10 ,10 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 174 ,326 BUTTONEX btn1;
CAPTION "«÷› ";
ON CLICK add()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 175 ,221 BUTTONEX btn2;
CAPTION "Õ–› «·ﬂ· ";
ON CLICK hazf()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 127 ,371 LABEL lbl3 ;
VALUE "«·⁄‰Ê«‰ " ;
WIDTH 51 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 126 ,237 TEXTBOX text3;
HEIGHT 31 ;
WIDTH 128 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure add()
name := win1.text1.Value
Win1.List1.Additem ( name )
age := win1.text2.Value
Win1.List1.Additem ( age )
Address := win1.text3.Value
Win1.List1.Additem ( Address )
return
procedure hazf()
win1.list1.DeleteAllItems ( )
return


End Of Resistance

INIT PROCEDURE Init_LESSON6
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'listbox  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·«”„ '",11,12)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '«·⁄„—'",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",26,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",33,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",40,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '«÷› '",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action add",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",48,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Õ–› «·ﬂ· '",51,52)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action hazf",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",54,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '«·⁄‰Ê«‰ '",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",59,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",65,70)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",73,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure add ( Event : CLICK )",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","name = win1.text1.Value",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (name) to Listbox (List1) of Window (Win1)",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","age = win1.text2.Value",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (age) to Listbox (List1) of Window (Win1)",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Address = win1.text3.Value",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (Address) to Listbox (List1) of Window (Win1)",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure hazf ( Event : CLICK )",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",86,86)
Return
*-------------------------------------------------------------------*

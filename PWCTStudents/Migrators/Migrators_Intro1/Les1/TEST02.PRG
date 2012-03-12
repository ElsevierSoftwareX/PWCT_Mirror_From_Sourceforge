*---------------------------------------------------------------------------*
* Time : 21:04:13    Date : 02/23/2012
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


Resistance R_TEST02_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST02_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "AddItemToListBox  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 30 ,21 LISTBOX list1;
WIDTH 205 ;
HEIGHT 298 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 201 ,307 BUTTONEX btn1;
CAPTION "≈÷«›… ";
ON CLICK Add()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 236 ,307 BUTTONEX btn2;
CAPTION "„”Õ «·ﬁ«∆„… ";
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
ON CLICK deletall()  ;
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure Add()
win1.list1.AddItem ( "„Õ„œ" )
win1.list1.AddItem ( "√Õ„œ" )
win1.list1.AddItem ( "„Õ„Êœ" )
return
procedure deletall()
win1.list1.DeleteAllItems ( )
return


End Of Resistance

INIT PROCEDURE Init_TEST02
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'AddItemToListBox  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",12,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : '≈÷«›… '",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Add",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : '„”Õ «·ﬁ«∆„… '",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",25,27)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action deletall",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",31,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Add ( Event : CLICK )",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( '„Õ„œ' )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( '√Õ„œ' )",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( '„Õ„Êœ' )",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure deletall ( Event : CLICK )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",41,41)
Return
*-------------------------------------------------------------------*

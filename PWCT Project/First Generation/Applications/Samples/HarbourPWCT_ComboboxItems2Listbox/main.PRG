*---------------------------------------------------------------------------*
* Time : 10:23:25    Date : 06/03/2015
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2015.04.28
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
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


Resistance R_main_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_main_19art1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 458 ;
HEIGHT 359 ;
ICON "PWCTICON" ;
TITLE "Combobox Items 2 Listbox  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 30 ,58 COMBOBOX combo1;
WIDTH 220 ;
HEIGHT 300;
ITEMS {"Option 1","Option 2","Option 3","Option 4","Option 5"} ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 76 ,58 LISTBOX list1;
WIDTH 220 ;
HEIGHT 216 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 27 ,290 BUTTONEX btn1;
CAPTION "Copy ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK pCopy()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
@ 76 ,290 BUTTONEX btn2;
CAPTION "Close ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK pClose()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pClose()
win1.Release ( )
return
procedure pCopy()
Local x,nMax
win1.list1.DeleteAllItems ( )
FOR x = 1 TO win1.combo1.ItemCount STEP 1
win1.list1.AddItem ( win1.combo1.Item(x) )
Next
return


End Of Resistance

INIT PROCEDURE Init_main
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Combobox Items 2 Listbox  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo1 ) , Items : {'Option 1','Option 2','Option 3','Option 4','Option 5'}",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",15,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",23,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Copy '",28,31)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pCopy",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",33,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Close '",37,40)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pClose",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",42,45)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",48,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pClose ( Event : CLICK )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release( )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pCopy ( Event : CLICK )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Local x,nMax",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To win1.combo1.ItemCount Step 1)",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( win1.combo1.Item(x) )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",60,60)
Return
*-------------------------------------------------------------------*

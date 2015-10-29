*---------------------------------------------------------------------------*
* Time : 15:24:29    Date : 10/29/2015
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2015 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2015.09.03
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
WIDTH 478 ;
HEIGHT 356 ;
ICON "PWCTICON" ;
TITLE "Select an item in the listbox to be copied to the clipboard!  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 21 ,7 LISTBOX list1;
ON CHANGE pChange()  ;
WIDTH 450 ;
HEIGHT 200 ;
ITEMS {"One","Two","Three","Four","Five"} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 265 ,7 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 450 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 235 ,7 LABEL lbl1 ;
VALUE "Use CTRL+V and try to paste the item text in the textbox " ;
WIDTH 340 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pChange()
cText := win1.list1.item(win1.list1.Value)
CopyToClipboard ( cText )
return


End Of Resistance

INIT PROCEDURE Init_main
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Select an item in the listbox to be copied to the clipboard!  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 ) , Items : {'One','Two','Three','Four','Five'}",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action pChange",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",16,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",23,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Use CTRL+V and try to paste the item text in the textbox '",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",31,35)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",38,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pChange - Event : CHANGE",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","cText = win1.list1.item(win1.list1.Value)",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Call Function CopyToClipboard ( cText )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",44,44)
Return
*-------------------------------------------------------------------*

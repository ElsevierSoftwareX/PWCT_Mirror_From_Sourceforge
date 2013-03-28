*---------------------------------------------------------------------------*
* Time : 05:50:16    Date : 10/23/2011
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


Resistance R_MANYITEMS_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MANYITEMS_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON INIT mystart()  ;
ICON "PWCTICON" ;
TITLE "Many Items" ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 10 ,10 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure mystart()
myarray := {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69}
mymax  = LEN(myarray)
FOR x = 1 TO mymax STEP 1
mynumber = STR ( myarray[x] )
mynumber = ALLTRIM ( mynumber )
Win1.List1.Additem ( mynumber )
Next
return


End Of Resistance

INIT PROCEDURE Init_MANYITEMS
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Many Items'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action mystart",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,11)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mystart - Event : INIT",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","myarray = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69}",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = Get Length of String/Variable/Array myarray",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To mymax Step 1)",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","mynumber = CONVERT myarray[x] TO STRING",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","mynumber = All Trim mynumber",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (mynumber) to Listbox (List1) of Window (Win1)",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",31,31)
Return
*-------------------------------------------------------------------*

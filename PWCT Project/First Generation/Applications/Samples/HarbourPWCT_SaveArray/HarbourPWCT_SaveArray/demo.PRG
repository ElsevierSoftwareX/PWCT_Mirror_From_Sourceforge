*---------------------------------------------------------------------------*
* Time : 13:28:54    Date : 12/06/2014
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2014.11.15
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


Resistance R_demo_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_demo_19art1() code
StartUpFolder := GetStartUpFolder()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 510 ;
HEIGHT 440 ;
ICON "PWCTICON" ;
TITLE "Save/Restore array to/from file  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

win1.Center ( )
@ 37 ,106 BUTTONEX btn1;
CAPTION "Save array to test.data ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK pSave()  ;
WIDTH 277 HEIGHT 41 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
@ 96 ,106 BUTTONEX btn2;
CAPTION "Restore array from test.data ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK pRestore()  ;
WIDTH 277 HEIGHT 41 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
@ 146 ,107 LISTBOX list1;
WIDTH 273 ;
HEIGHT 177 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pSave()
aArray1 := {}
AADD( aArray1 , "one")
AADD( aArray1 , "two")
AADD( aArray1 , "three")
AADD( aArray1 , "four")
AADD( aArray1 , "five")
AADD( aArray1 , "6")
AADD( aArray1 , "7")
AADD( aArray1 , "8")
AADD( aArray1 , "9")
AADD( aArray1 , "10")
nError := 0
ft_SaveArr ( aArray1,StartUpFolder+"\test.data",@nError )
return
procedure pRestore()
nError := 0
aArray1 = ft_RestArr ( StartUpFolder+"\test.data",@nError )
FOR x = 1 TO len(aArray1) STEP 1
Win1.List1.Additem ( aArray1[x] )
Next
return


End Of Resistance

INIT PROCEDURE Init_demo
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","StartUpFolder := Get StartUp Folder",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Save/Restore array to/from file  '",2,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,14)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center( )",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Save array to test.data '",16,19)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pSave",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",21,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Restore array from test.data '",25,28)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pRestore",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",30,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",35,39)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",42,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pSave ( Event : CLICK )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aArray1",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'one' To Array aArray1",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'two' To Array aArray1",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'three' To Array aArray1",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'four' To Array aArray1",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'five' To Array aArray1",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Add item '6' To Array aArray1",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Add item '7' To Array aArray1",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Add item '8' To Array aArray1",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Add item '9' To Array aArray1",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Add item '10' To Array aArray1",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","nError = 0",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Call Function ft_SaveArr ( aArray1,StartUpFolder+'\test.data',@nError )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pRestore ( Event : CLICK )",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","nError = 0",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","aArray1 = Call Function ft_RestArr ( StartUpFolder+'\test.data',@nError )",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To len(aArray1) Step 1)",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (aArray1[x]) to Listbox (List1) of Window (Win1)",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",66,66)
Return
*-------------------------------------------------------------------*

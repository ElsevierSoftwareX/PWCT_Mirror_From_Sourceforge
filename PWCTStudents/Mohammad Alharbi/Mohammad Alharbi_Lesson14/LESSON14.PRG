*---------------------------------------------------------------------------*
* Time : 09:54:39    Date : 09/24/2012
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


Resistance R_LESSON14_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON14_18smart1() code
aArray1 := {}
AADD( aArray1 , "1")
AADD( aArray1 , "2")
AADD( aArray1 , "ali")
AADD( aArray1 , "5.5")
AADD( aArray1 , "saad")
AADD( aArray1 , "10")
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 506 ;
HEIGHT 387 ;
ICON "PWCTICON" ;
TITLE "ÇáÊÚÇãá ãÚ ÇáãÕÝæÝÇÊ  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 13 ,19 LISTBOX list1;
WIDTH 200 ;
HEIGHT 200 ;
ITEMS aArray1 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 11 ,261 LISTBOX list2;
WIDTH 200 ;
HEIGHT 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 232 ,195 BUTTONEX btn1;
CAPTION "add ";
PICTURE "row.jpg";
VERTICAL ;
UPPERTEXT ;
ON CLICK pAdd()  ;
WIDTH 92 HEIGHT 43 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pAdd()
nMax  = LEN(aArray1)
FOR x = 1 TO nMax STEP 1
nLength  = LEN(aArray1[x])
IF nLength>1
Win1.List2.Additem ( aArray1[x] )
ENDIF
win1.list1.DeleteAllItems ( )
Next
return


End Of Resistance

INIT PROCEDURE Init_LESSON14
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aArray1",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Add item '1' To Array aArray1",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Add item '2' To Array aArray1",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'ali' To Array aArray1",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Add item '5.5' To Array aArray1",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'saad' To Array aArray1",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Add item '10' To Array aArray1",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'ÇáÊÚÇãá ãÚ ÇáãÕÝæÝÇÊ  '",8,12)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",13,17)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 ) , Items : aArray1",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",19,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list2 )",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",26,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'add '",31,35)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pAdd",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",37,39)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",42,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pAdd ( Event : CLICK )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array aArray1",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","nLength = Get Length of String/Variable/Array aArray1[x]",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nLength>1 )",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (aArray1[x]) to Listbox (List2) of Window (Win1)",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",54,54)
Return
*-------------------------------------------------------------------*

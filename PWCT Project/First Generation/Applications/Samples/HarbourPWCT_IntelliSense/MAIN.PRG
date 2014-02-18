*---------------------------------------------------------------------------*
* Time : 16:34:09    Date : 02/18/2014
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2014.02.12
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


Resistance R_MAIN_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MAIN_19art1() code
aItems := {}
AADD( aItems , "hello")
AADD( aItems , "hello how are you ?")
AADD( aItems , "hello are you fine ?")
AADD( aItems , "welcome")
AADD( aItems , "welcome to PWCT")
AADD( aItems , "welcome to my application")
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON INIT pStart()  ;
ICON "PWCTICON" ;
TITLE "IntelliSense  " ;
MAIN ;
BACKCOLOR {236,233,216} 
@ 28 ,59 TEXTBOX text1;
ON CHANGE pChange()  ;
HEIGHT 30 ;
WIDTH 350 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
@ 61 ,59 LISTBOX list1;
WIDTH 350 ;
HEIGHT 200 ;
ITEMS aItems ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {20,220,100} ;
FONTCOLOR {0,0,0}
END WINDOW
ACTIVATE WINDOW win1
EndIF
procedure pStart()
win1.list1.Visible := False
_DefineHotKey ( "win1" , 0 , VK_UP , {||pressup()} )
_DefineHotKey ( "win1" , 0 , VK_DOWN , {||pressdown()} )
_DefineHotKey ( "win1" , 0 , VK_SPACE , {||pressspace()} )
return
procedure pChange()
Local cValue,x,nMax
cValue := win1.text1.Value
IF cValue==""
win1.list1.Visible := False
Return 0
ENDIF
nMax  = LEN(aItems)
win1.list1.DeleteAllItems ( )
FOR x = 1 TO nMax STEP 1
IF aItems[x] =cValue
win1.list1.AddItem ( aItems[x] )
ENDIF
Next
IF win1.list1.ItemCount>1
win1.list1.Visible := True
win1.list1.Value := 1
ELSE
win1.list1.Visible := False
ENDIF
return
Proc pressup
IF win1.list1.Visible=True
IF win1.list1.Value>1
win1.list1.Value := win1.list1.Value-1
ENDIF
ENDIF
Return Nil
Proc pressdown
IF win1.list1.Visible=True
IF win1.list1.Value<win1.list1.ItemCount
win1.list1.Value := win1.list1.Value+1
ENDIF
ENDIF
Return Nil
Proc pressspace
IF win1.list1.Visible=True
win1.text1.Value := win1.list1.Item(win1.list1.Value)
ENDIF
Return Nil

End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aItems",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'hello' To Array aItems",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'hello how are you ?' To Array aItems",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'hello are you fine ?' To Array aItems",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'welcome' To Array aItems",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'welcome to PWCT' To Array aItems",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'welcome to my application' To Array aItems",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'IntelliSense  '",8,12)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action pStart",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",14,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action pChange",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",21,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 ) , Items : aItems",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",28,33)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",36,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pStart - Event : INIT",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.Visible = False",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","On Key VK_UP Mode 0 Call Procedure/Function pressup()",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","On Key VK_DOWN Mode 0 Call Procedure/Function pressdown()",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","On Key VK_SPACE Mode 0 Call Procedure/Function pressspace()",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pChange - Event : CHANGE",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Local cValue,x,nMax",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","cValue = win1.text1.Value",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( cValue=='' )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.Visible = False",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array aItems",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( aItems[x] =cValue )",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( aItems[x] )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( win1.list1.ItemCount>1 )",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.Visible = True",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.Value = 1",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.Visible = False",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pressup",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( win1.list1.Visible=True )",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( win1.list1.Value>1 )",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.Value = win1.list1.Value-1",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pressdown",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( win1.list1.Visible=True )",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( win1.list1.Value<win1.list1.ItemCount )",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.Value = win1.list1.Value+1",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pressspace",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( win1.list1.Visible=True )",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value = win1.list1.Item(win1.list1.Value)",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",84,84)
Return
*-------------------------------------------------------------------*

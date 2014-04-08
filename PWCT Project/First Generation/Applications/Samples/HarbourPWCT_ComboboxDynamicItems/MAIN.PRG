*---------------------------------------------------------------------------*
* Time : 12:49:54    Date : 04/08/2014
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2014.02.24
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
aData := {}
AADD( aData , "January")
AADD( aData , "February")
AADD( aData , "March")
AADD( aData , "April")
AADD( aData , "May")
AADD( aData , "June")
AADD( aData , "July")
AADD( aData , "August")
AADD( aData , "September")
AADD( aData , "October")
AADD( aData , "November")
AADD( aData , "December")
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 673 ;
HEIGHT 284 ;
ICON "PWCTICON" ;
TITLE "Combobox Dynamic Items  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

win1.Center ( )
@ 71 ,75 COMBOBOX combo1;
WIDTH 300 ;
HEIGHT 300;
ITEMS aData ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 69 ,387 BUTTONEX btn1;
CAPTION "Hide January";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK pHideJan()  ;
WIDTH 200 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
@ 105 ,387 BUTTONEX btn2;
CAPTION "Get Selected Item Text ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK pItemText()  ;
WIDTH 200 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
@ 144 ,387 BUTTONEX btn3;
CAPTION "Get Selected Item ID ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK pItemID()  ;
WIDTH 200 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pHideJan()
Local x,nMax,cText
nMax := win1.combo1.ItemCount
IF nMax > 0
FOR x = 1 TO nMax STEP 1
cText := win1.combo1.item(x)
IF cText="January"
win1.combo1.DeleteItem ( x )
Return True
ENDIF
Next
MyOut := MSGBOX("Cann't find the item","Sorry ")
ENDIF
return
procedure pItemText()
Local nIndex,cText
nIndex := win1.combo1.Value
IF nIndex > 0
cText := win1.combo1.item(nIndex)
MyOut := MSGBOX(cText,"Selected Item ")
ELSE
MyOut := MSGBOX("No item selected ","Sorry ")
ENDIF
return
procedure pItemID()
Local nIndex,cText,nMax,x
nIndex := win1.combo1.Value
IF nIndex > 0
cText := win1.combo1.item(nIndex)
nMax  = LEN(aData)
IF nMax > 0
FOR x = 1 TO nMax STEP 1
IF aData[x] == cText
MyOut := MSGBOX(x,"ID ")
Return True
ENDIF
Next
MyOut := MSGBOX("Cann't find the item ","Sorry ")
ENDIF
ELSE
MyOut := MSGBOX("No item selected ","Sorry ")
ENDIF
return


End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aData",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'January' To Array aData",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'February' To Array aData",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'March' To Array aData",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'April' To Array aData",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'May' To Array aData",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'June' To Array aData",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'July' To Array aData",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'August' To Array aData",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'September' To Array aData",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'October' To Array aData",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'November' To Array aData",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'December' To Array aData",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Combobox Dynamic Items  '",14,18)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",19,26)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center( )",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo1 ) , Items : aData",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",29,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Hide January'",35,38)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pHideJan",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",40,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Get Selected Item Text '",44,47)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pItemText",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",49,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Get Selected Item ID '",53,56)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pItemID",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",58,61)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",62,63)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",64,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pHideJan ( Event : CLICK )",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Local x,nMax,cText",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = win1.combo1.ItemCount",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","cText = win1.combo1.item(x)",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( cText='January' )",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","win1.combo1.DeleteItem ( x )",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Return True",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Cann't find the item' Title 'Sorry ' Type: Message Box",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pItemText ( Event : CLICK )",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Local nIndex,cText",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","nIndex = win1.combo1.Value",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nIndex > 0 )",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","cText = win1.combo1.item(nIndex)",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message cText Title 'Selected Item ' Type: Message Box",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No item selected ' Title 'Sorry ' Type: Message Box",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pItemID ( Event : CLICK )",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","Local nIndex,cText,nMax,x",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","nIndex = win1.combo1.Value",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nIndex > 0 )",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","cText = win1.combo1.item(nIndex)",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array aData",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( aData[x] == cText )",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message x Title 'ID ' Type: Message Box",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","Return True",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Cann't find the item ' Title 'Sorry ' Type: Message Box",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No item selected ' Title 'Sorry ' Type: Message Box",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",109,109)
Return
*-------------------------------------------------------------------*

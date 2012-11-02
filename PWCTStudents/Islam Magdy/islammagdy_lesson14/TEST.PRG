*---------------------------------------------------------------------------*
* Time : 06:27:19    Date : 10/28/2012
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


Resistance R_TEST_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST_18smart1() code
aNumbers := {}
FOR x = 1 TO 10 STEP 1
AADD( aNumbers , { x , x*x })
Next
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 687 ;
HEIGHT 373 ;
ON INIT pWork()  ;
ICON "PWCTICON" ;
TITLE "ÇáÊÚÇãá ãÚ ãÕÝæÝÉ ÐÇÊ ÈÚÏíä æÇÌÑÇÁ ÇáÚãáíÇÊ ÇáÍÓÇÈíÉ Úáì ÚäÇÕÑ ÇáãÕÝæÝÉ  " ;
MAIN ;
BACKCOLOR {255,128,64} 

@ 10 ,10 LISTBOX list1;
WIDTH 203 ;
HEIGHT 240 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 20 ,229 GRID Grid1;
WIDTH 421 ;
HEIGHT 231 ;
HEADERS {"x","x*x", "x+(x*x)"};
WIDTHS {100,100,100} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
@ 281 ,48 LABEL lbl1 ;
VALUE "max " ;
WIDTH 195 ;
HEIGHT 37 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 281 ,251 TEXTBOX text1;
HEIGHT 37 ;
WIDTH 200 ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 280 ,468 BUTTONEX btn1;
CAPTION "max ";
ON CLICK pMax()  ;
WIDTH 122 HEIGHT 41 ;
FONT "Arial" SIZE 16 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pWork()
nMax  = LEN(aNumbers)
FOR x = 1 TO nMax STEP 1
nSum := aNumbers[x][1]+aNumbers[x][2]
cSum = STR ( nSum )
cSum = ALLTRIM ( cSum )
Win1.List1.Additem ( cSum )
cNum1 = STR ( aNumbers[x][1] )
cNum2 = STR ( aNumbers[x][2] )
cNum1 = ALLTRIM ( cNum1 )
cNum2 = ALLTRIM ( cNum2 )
win1.Grid1.AddItem ( {cNum1, cNum2,cSum} )
Next
win1.Grid1.DeleteAllItems ( )
win1.list1.DeleteAllItems ( )
DO pWork
return
procedure pMax()
nMax := win1.text1.Value
aNumbers := {}
IF nMax >=1
FOR x = 1 TO nMax STEP 1
AADD( aNumbers , { x , x*x })
Next
ENDIF
return


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aNumbers",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 10 Step 1)",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Add item { x , x*x } To Array aNumbers",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'ÇáÊÚÇãá ãÚ ãÕÝæÝÉ ÐÇÊ ÈÚÏíä æÇÌÑÇÁ ÇáÚãáíÇÊ ÇáÍÓÇÈíÉ Úáì ÚäÇÕÑ ÇáãÕÝæÝÉ  '",5,9)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action pWork",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",11,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",17,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'x','x*x', 'x+(x*x)'}",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",23,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'max '",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",33,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",39,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'max '",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pMax",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",49,51)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",54,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pWork - Event : INIT",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array aNumbers",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","nSum = aNumbers[x][1]+aNumbers[x][2]",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","cSum = CONVERT nSum TO STRING",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","cSum = All Trim cSum",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cSum) to Listbox (List1) of Window (Win1)",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","cNum1 = CONVERT aNumbers[x][1] TO STRING",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","cNum2 = CONVERT aNumbers[x][2] TO STRING",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","cNum1 = All Trim cNum1",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","cNum2 = All Trim cNum2",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {cNum1, cNum2,cSum} )",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure pWork",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pMax ( Event : CLICK )",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = win1.text1.Value",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aNumbers",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax >=1 )",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Add item { x , x*x } To Array aNumbers",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",82,82)
Return
*-------------------------------------------------------------------*

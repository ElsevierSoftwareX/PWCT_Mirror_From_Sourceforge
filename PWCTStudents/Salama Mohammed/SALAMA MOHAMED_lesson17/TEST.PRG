*---------------------------------------------------------------------------*
* Time : 18:09:01    Date : 01/08/2013
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
AADD( aNumbers , {x , x*x})
Next
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 150 ,360 ;
WIDTH 631 ;
HEIGHT 427 ;
ON INIT pWork()  ;
ICON "PWCTICON" ;
TITLE "  ÇáÊÚÇãá ãÚ ãÕÝæÝÉ ÐÇÊ ÈÚÏíä æÅÌÑÇÁ ÇáÚãáíÇÊ ÇáÍÓÇÈíÉ Úáì ÚäÇÕÑÇáãÕÝæÝÉ" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {128,0,128} 

@ 19 ,20 LISTBOX list1;
WIDTH 179 ;
HEIGHT 305 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 19 ,213 GRID Grid1;
WIDTH 372 ;
HEIGHT 305 ;
HEADERS {"x","x*x","x+(x*x)"};
WIDTHS {100,100,100} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
@ 339 ,27 LABEL lbl1 ;
VALUE "Max " ;
WIDTH 34 ;
HEIGHT 21 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {128,0,128} ;
FONTCOLOR {0,0,0}
@ 336 ,75 TEXTBOX text1;
HEIGHT 35 ;
WIDTH 187 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 335 ,279 BUTTONEX btn1;
CAPTION "Set Max ";
ON CLICK pMax()  ;
WIDTH 96 HEIGHT 37 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

FOR x = 1 TO 10 STEP 1
AADD( aNumbers , {x , x*x})
Next
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
win1.Grid1.AddItem ( {cNum1,cNum2,cSum} )
Next
return
procedure pMax()
nMax := win1.text1.Value
aNumbers := {}
IF nMax >= 1
FOR x = 1 TO nMax STEP 1
AADD( aNumbers , {x , x*x})
Next
ENDIF
win1.Grid1.DeleteAllItems ( )
win1.list1.DeleteAllItems ( )
DO pWork
return


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aNumbers",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 10 Step 1)",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Add item {x , x*x} To Array aNumbers",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '  ÇáÊÚÇãá ãÚ ãÕÝæÝÉ ÐÇÊ ÈÚÏíä æÅÌÑÇÁ ÇáÚãáíÇÊ ÇáÍÓÇÈíÉ Úáì ÚäÇÕÑÇáãÕÝæÝÉ'",5,9)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action pWork",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",11,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",20,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'x','x*x','x+(x*x)'}",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",26,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Max '",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",36,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",42,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Set Max '",49,50)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pMax",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",52,54)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",57,59)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To 10 Step 1)",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Add item {x , x*x} To Array aNumbers",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pWork - Event : INIT",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array aNumbers",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","nSum = aNumbers[x][1]+aNumbers[x][2]",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","cSum = CONVERT nSum TO STRING",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","cSum = All Trim cSum",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cSum) to Listbox (List1) of Window (Win1)",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","cNum1 = CONVERT aNumbers[x][1] TO STRING",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","cNum2 = CONVERT aNumbers[x][2] TO STRING",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","cNum1 = All Trim cNum1",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","cNum2 = All Trim cNum2",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {cNum1,cNum2,cSum} )",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pMax ( Event : CLICK )",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = win1.text1.Value",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aNumbers",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax >= 1 )",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Add item {x , x*x} To Array aNumbers",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure pWork",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",88,88)
Return
*-------------------------------------------------------------------*

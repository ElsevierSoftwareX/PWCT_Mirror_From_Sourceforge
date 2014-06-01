*---------------------------------------------------------------------------*
* Time : 00:13:39    Date : 06/02/2014
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2014.05.28
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
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 383 ;
HEIGHT 384 ;
ON INIT pChange()  ;
ICON "PWCTICON" ;
TITLE "Sum Grid Column  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

win1.Center ( )
@ 22 ,33 GRID Grid1;
ON LOSTFOCUS pChange()  ;
WIDTH 200 ;
HEADERS {"Column1","Column2"};
WIDTHS {100,100} ;
ITEMS { {"1","2"} , {"3","4"} } ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
@ 21 ,246 BUTTONEX btnAdd;
CAPTION "Add ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK pAdd()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
@ 63 ,246 BUTTONEX btnDelete;
CAPTION "Delete ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK pDelete()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
@ 250 ,35 LABEL lbl1 ;
VALUE "Sum (Column 1) " ;
WIDTH 110 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 294 ,35 LABEL lbl2 ;
VALUE "Sum (Column 2) " ;
WIDTH 110 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 245 ,162 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 70 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 292 ,162 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 70 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 105 ,246 BUTTONEX btnClose;
CAPTION "Close ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK win1.Release()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pAdd()
win1.Grid1.AddItem ( {"0","0"} )
return
procedure pDelete()
IF win1.Grid1.Value > 0
win1.Grid1.DeleteItem ( win1.Grid1.Value )
ENDIF
return
procedure pChange()
Local x,nMax,nSum1,nSum2
nSum1 := 0
nSum2 := 0
nMax := win1.Grid1.ItemCount
IF nMax > 0
FOR x = 1 TO nMax STEP 1
nSum1 := nSum1 + val( win1.Grid1.cell(x,1) )
nSum2 := nSum2 + val( win1.Grid1.cell(x,2) )
Next
win1.text1.Value := nSum1
win1.text2.Value := nSum2
ENDIF
return


End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Sum Grid Column  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action pChange",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,14)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center( )",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'Column1','Column2'}",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON LOSTFOCUS : Action pChange",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Grid Properties",18,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnAdd ) , Caption : 'Add '",26,29)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pAdd",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",31,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnDelete ) , Caption : 'Delete '",35,38)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pDelete",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",40,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Sum (Column 1) '",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",46,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Sum (Column 2) '",51,52)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",53,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",59,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",67,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnClose ) , Caption : 'Close '",74,77)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action win1.Release",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",79,82)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",83,84)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",85,87)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pAdd ( Event : CLICK )",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {'0','0'} )",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pDelete ( Event : CLICK )",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( win1.Grid1.Value > 0 )",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteItem ( win1.Grid1.Value )",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pChange - Event : LOSTFOCUS",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Local x,nMax,nSum1,nSum2",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","nSum1 = 0",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","nSum2 = 0",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = win1.Grid1.ItemCount",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","nSum1 = nSum1 + val( win1.Grid1.cell(x,1) )",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","nSum2 = nSum2 + val( win1.Grid1.cell(x,2) )",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value = nSum1",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text2.Value = nSum2",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",109,109)
Return
*-------------------------------------------------------------------*

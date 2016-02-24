*---------------------------------------------------------------------------*
* Time : 15:40:30    Date : 02/24/2016
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2015 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2015.12.27
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


Resistance R_test_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_test_19art1() code
aArray := {}
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 340 ;
HEIGHT 90 ;
ICON "PWCTICON" ;
TITLE " Dynamic Table " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 6 ,20 LABEL lbl1 ;
VALUE "Size : " ;
WIDTH 60 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 6 ,80 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 90 ;
VALUE 2 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 6 ,200 BUTTONEX btn1;
CAPTION "Enter Data";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK pWork()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pWork()
nSize := win1.text1.Value
IF nSize < 1
MyOut := MSGBOX("Bad Size! ","Sorry ")
Return 0
ENDIF
aArray := {}
aHeaders := {}
aWidth := {}
FOR x = 1 TO nSize STEP 1
aRow := {}
FOR y = 1 TO nSize STEP 1
AADD( aRow , 0)
Next
AADD( aArray , aRow)
AADD( aHeaders , "Column " + alltrim(str(x)))
AADD( aWidth , 100)
Next
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 934 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Enter Data" ;
MODAL ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 10 ,10 GRID Grid1;
WIDTH 470 ;
HEIGHT 332 ;
HEADERS aHeaders;
WIDTHS aWidth ;
ITEMS @aArray ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
@ 10 ,500 BUTTONEX btn2;
CAPTION "Print Values ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK pPrint()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
@ 51 ,502 EDITBOX edit1;
WIDTH 410 ;
HEIGHT 290;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win2
EndIF

return
procedure pPrint()
nSize := win1.text1.Value
FOR x = 1 TO nSize STEP 1
FOR y = 1 TO nSize STEP 1
cValue := win2.Grid1.cell(x,y)
if .not. empty(Win2.Edit1.VALUE)
Win2.Edit1.VALUE := Win2.Edit1.VALUE + CHR(13) + CHR(10) + cValue
else
Win2.Edit1.VALUE := cValue
endif
Next
Next
return


End Of Resistance

INIT PROCEDURE Init_test
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aArray",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : ' Dynamic Table '",2,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Size : '",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",17,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",23,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Enter Data'",31,34)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pWork",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",36,39)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",42,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pWork ( Event : CLICK )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","nSize = win1.text1.Value",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nSize < 1 )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message 'Bad Size! ' Title 'Sorry ' Type: Message Box",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","aArray = {}",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","aHeaders = {}",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","aWidth = {}",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nSize Step 1)",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","aRow = {}",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From y = 1 To nSize Step 1)",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 0 To Array aRow",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Add item aRow To Array aArray",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'Column ' + alltrim(str(x)) To Array aHeaders",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 100 To Array aWidth",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Enter Data'",63,67)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",68,73)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : aHeaders",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Grid Properties",75,83)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Print Values '",84,87)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pPrint",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",89,92)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",94,98)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",99,100)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",101,103)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pPrint ( Event : CLICK )",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","nSize = win1.text1.Value",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nSize Step 1)",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From y = 1 To nSize Step 1)",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","cValue = win2.Grid1.cell(x,y)",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cValue) to Editbox (Edit1) of Window (Win2)",110,114)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",117,117)
Return
*-------------------------------------------------------------------*

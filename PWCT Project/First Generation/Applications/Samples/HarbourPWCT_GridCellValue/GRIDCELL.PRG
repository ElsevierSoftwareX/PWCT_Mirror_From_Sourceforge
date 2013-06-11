*---------------------------------------------------------------------------*
* Time : 00:11:35    Date : 05/26/2013
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2013 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2013.05.15
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


Resistance R_GRIDCELL_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_GRIDCELL_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 238 ;
HEIGHT 303 ;
ICON "PWCTICON" ;
TITLE "Grid Cell  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 
win1.Center ( )
@ 10 ,10 GRID Grid1;
WIDTH 200 ;
HEADERS {"Column1","Column2"};
WIDTHS {100,100} ;
ITEMS { {"R1C1","R1C2"} , {"R2C1","R2C2"} } ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
@ 220 ,10 BUTTONEX btn1;
CAPTION "Get Cell Value ";
ON CLICK pCellValue()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW
ACTIVATE WINDOW win1
EndIF
procedure pCellValue()
nRow := win1.Grid1.Value
IF nRow > 0
cCell1 := win1.Grid1.cell(nRow,1)
cCell2 := win1.Grid1.cell(nRow,2)
MyOut := MSGBOX(cCell1,"Column1")
MyOut := MSGBOX(cCell2,"Column2")
ELSE
MyOut := MSGBOX("Please select a row ","Sorry ")
ENDIF
return

End Of Resistance

INIT PROCEDURE Init_GRIDCELL
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Grid Cell  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'Column1','Column2'}",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Grid Properties",16,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Get Cell Value '",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pCellValue",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",27,29)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",32,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pCellValue ( Event : CLICK )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","nRow = win1.Grid1.Value",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nRow > 0 )",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","cCell1 = win1.Grid1.cell(nRow,1)",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","cCell2 = win1.Grid1.cell(nRow,2)",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message cCell1 Title 'Column1' Type: Message Box",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message cCell2 Title 'Column2' Type: Message Box",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please select a row ' Title 'Sorry ' Type: Message Box",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",45,45)
Return
*-------------------------------------------------------------------*

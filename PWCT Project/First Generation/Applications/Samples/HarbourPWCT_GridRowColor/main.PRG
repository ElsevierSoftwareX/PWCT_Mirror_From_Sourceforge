*---------------------------------------------------------------------------*
* Time : 06:34:30    Date : 09/10/2016
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2016 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2016.06.24
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


Resistance R_main_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_main_19art1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Grid Color  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 10 ,10 GRID Grid1;
WIDTH 400 ;
HEIGHT 200 ;
HEADERS {"Header1","Amount","Header3","Header4"};
WIDTHS {100,100,100,100} ;
ITEMS { {"10","20","30","40"} , {"30","0","10","20"}, {"1","2","3","4"}, {"1","2","3","4"} , {"1","0","3","4"} } ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
DYNAMICBACKCOLOR {colorblock(),colorblock(),colorblock(),colorblock()} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

Function  ColorBlock ()
pColor := { | x, CellRowIndex | if ( checkcell(CellRowIndex,2) , rgb(255,0,0) , rgb(255,255,255) ) }






























































































































































Return pColor
Return
Function  CheckCell ( nRow,nCol )
cValue := win1.Grid1.cell(nRow,nCol)
IF val(cValue) = 0
Return true
ELSE
Return false
ENDIF
Return


End Of Resistance

INIT PROCEDURE Init_main
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Grid Color  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'Header1','Amount','Header3','Header4'}",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Grid Properties",12,21)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",24,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define Function ColorBlock",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Color Block - see step code",28,185)
SS_ESASTEP("Circuits\Main\Main\Main","Return pColor",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","End of Function",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","Define Function CheckCell ( nRow,nCol )",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","cValue = win1.Grid1.cell(nRow,nCol)",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( val(cValue) = 0 )",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","Return true",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","Return false",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","End of Function",196,196)
Return
*-------------------------------------------------------------------*

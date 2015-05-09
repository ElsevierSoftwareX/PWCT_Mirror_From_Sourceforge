*---------------------------------------------------------------------------*
* Time : 09:47:40    Date : 05/09/2015
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2015.04.28
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


Resistance R_gridvalue_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_gridvalue_19art1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Grid Value  " ;
MAIN ;
BACKCOLOR {236,233,216} 

@ 33 ,17 GRID Grid1;
WIDTH 456 ;
HEIGHT 231 ;
HEADERS {"Header1","Header2"};
WIDTHS {100,100} ;
ITEMS { {"R1C1","R1C2"} , {"R2C1","R2C2"} } ;
VALUE 0 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
@ 280 ,22 LABEL lbl1 ;
VALUE "Value : " ;
WIDTH 64 ;
HEIGHT 30 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 277 ,110 TEXTBOX textValue;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 277 ,326 BUTTONEX btn1;
CAPTION "Check ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK pCheck()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pCheck()
IF win1.Grid1.Value = 0
win1.textValue.Value := "0"
ELSE
win1.textValue.Value := alltrim(str(win1.Grid1.Value))
ENDIF
return


End Of Resistance

INIT PROCEDURE Init_gridvalue
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Grid Value  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'Header1','Header2'}",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Grid Properties",12,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Value : '",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",24,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textValue  )",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",30,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Check '",36,39)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pCheck",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",41,44)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",45,46)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",47,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pCheck ( Event : CLICK )",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( win1.Grid1.Value = 0 )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textValue.Value = '0'",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textValue.Value = alltrim(str(win1.Grid1.Value))",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",56,56)
Return
*-------------------------------------------------------------------*

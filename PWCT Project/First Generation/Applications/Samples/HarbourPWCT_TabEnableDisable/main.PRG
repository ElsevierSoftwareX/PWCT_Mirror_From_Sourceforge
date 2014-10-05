*---------------------------------------------------------------------------*
* Time : 23:12:11    Date : 10/05/2014
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2014.09.30
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
WIDTH 448 ;
HEIGHT 323 ;
ICON "PWCTICON" ;
TITLE "Welcome  " ;
MAIN ;
BACKCOLOR {236,233,216} 

DEFINE TAB Tab1;
AT 10 ,10;
WIDTH 287;
HEIGHT 263;
VALUE 2 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
PAGE "1"
END PAGE
PAGE "2"
@ 100 ,30 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 150 ,30 BUTTONEX btn2;
CAPTION " test ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
END PAGE
PAGE "3"
END PAGE
END TAB
@ 80 ,322 BUTTONEX btn1;
CAPTION "Disable 2";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK pDisable()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pDisable()
IF win1.btn1.Caption = "Disable 2"
Tab_Status ( "Win1","Tab1",2,False )
win1.btn1.Caption := "Enable 2"
ELSE
Tab_Status ( "Win1","Tab1",2,True )
win1.btn1.Caption := "Disable 2"
ENDIF
return
Function  Tab_Status ( cWindow,cTab,nPage,lStatus )
Local x,y,z
x = GetControlIndex ( cTab,cWindow )
FOR y = 1 TO len(_HMG_aControlPageMap[x][nPage]) STEP 1
IF valtype( _HMG_aControlPageMap[x][nPage][y] ) == "A"
FOR z = 1 TO len(_HMG_aControlPageMap[x][nPage][y]) STEP 1
IF lStatus = True
enablewindow ( _HMG_aControlPageMap[x][nPage][y][z] )
ELSE
disablewindow ( _HMG_aControlPageMap[x][nPage][y][z] )
ENDIF
Next
ELSE
IF lStatus = True
enableWindow ( _HMG_aControlPageMap[x][nPage][y] )
ELSE
disableWindow ( _HMG_aControlPageMap[x][nPage][y] )
ENDIF
ENDIF
Next
Return


End Of Resistance

INIT PROCEDURE Init_main
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Welcome  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Tab ( Tab1 )",11,14)
SS_ESASTEP("Circuits\Main\Main\Main","Tab Properties",15,17)
SS_ESASTEP("Circuits\Main\Main\Main","Page ( '1' )",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","End Page",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Page ( '2' )",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",22,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : ' test '",28,31)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",32,35)
SS_ESASTEP("Circuits\Main\Main\Main","End Page",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Page ( '3' )",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","End Page",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","End Tab",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Disable 2'",40,43)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pDisable",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",45,48)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",49,50)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",51,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pDisable ( Event : CLICK )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( win1.btn1.Caption = 'Disable 2' )",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Call Function Tab_Status ( 'Win1','Tab1',2,False )",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Caption = 'Enable 2'",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Call Function Tab_Status ( 'Win1','Tab1',2,True )",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btn1.Caption = 'Disable 2'",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define Function Tab_Status ( cWindow,cTab,nPage,lStatus )",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Local x,y,z",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","x = Call Function GetControlIndex ( cTab,cWindow )",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From y = 1 To len(_HMG_aControlPageMap[x][nPage]) Step 1)",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( valtype( _HMG_aControlPageMap[x][nPage][y] ) == 'A' )",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From z = 1 To len(_HMG_aControlPageMap[x][nPage][y]) Step 1)",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lStatus = True )",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Call Function enablewindow ( _HMG_aControlPageMap[x][nPage][y][z] )",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","Call Function disablewindow ( _HMG_aControlPageMap[x][nPage][y][z] )",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lStatus = True )",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Call Function enableWindow ( _HMG_aControlPageMap[x][nPage][y] )",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Call Function disableWindow ( _HMG_aControlPageMap[x][nPage][y] )",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","End of Function",83,83)
Return
*-------------------------------------------------------------------*

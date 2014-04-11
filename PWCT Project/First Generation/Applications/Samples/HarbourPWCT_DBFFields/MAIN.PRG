*---------------------------------------------------------------------------*
* Time : 17:15:55    Date : 04/11/2014
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
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 731 ;
HEIGHT 335 ;
ON INIT pWin1Init()  ;
ICON "PWCTICON" ;
TITLE "DBF Fields  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64} 

@ 28 ,53 LABEL lbl1 ;
VALUE "File " ;
WIDTH 50 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {64,0,64} ;
FONTCOLOR {255,255,255}
@ 25 ,121 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 470 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 26 ,600 BUTTONEX btnBrowse;
CAPTION "Browse ";
ON CLICK pDBFData()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 9 ;
TOOLTIP ""
@ 73 ,122 LISTBOX list1;
WIDTH 470 ;
HEIGHT 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 74 ,53 LABEL lbl2 ;
VALUE "Fields " ;
WIDTH 60 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {64,0,64} ;
FONTCOLOR {255,255,255}
@ 73 ,600 BUTTONEX btnClose;
CAPTION "Close ";
ON CLICK pCloseApplication()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure pDBFData()
GetFile := GetFile ( { {"Database File (*.dbf)","*.dbf"} } , ;
, ;
, ;
, ;
)
CheckFile := File(GetFile)
IF CheckFile
win1.text1.Value := GetFile
Use (GetFile)
nCount = FCount()
Private aColumns[nCount]
DO aFields WITH aColumns
FOR x = 1 TO nCount STEP 1
Win1.List1.Additem ( aColumns[x] )
Next
close
ENDIF
return
procedure pWin1Init()
win1.Center ( )
return
procedure pCloseApplication()
win1.Release ( )
return


End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'DBF Fields  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action pWin1Init",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'File '",15,16)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",17,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",23,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnBrowse ) , Caption : 'Browse '",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pDBFData",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",32,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",36,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Fields '",41,42)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",43,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnClose ) , Caption : 'Close '",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pCloseApplication",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",51,53)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",54,55)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",56,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pDBFData ( Event : CLICK )",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","GetFile := Get File",60,64)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File GetFile",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( CheckFile )",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := GetFile",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Open Table (GetFile)",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","nCount = Call Function FCount",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Private aColumns[nCount]",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure aFields Parameters aColumns",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nCount Step 1)",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (aColumns[x]) to Listbox (List1) of Window (Win1)",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Close Table",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pWin1Init - Event : INIT",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pCloseApplication ( Event : CLICK )",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",83,83)
Return
*-------------------------------------------------------------------*

*---------------------------------------------------------------------------*
* Time : 20:43:00    Date : 09/20/2014
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2014.09.20
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


Resistance R_checkfiles_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_checkfiles_19art1() code
StartUpFolder := GetStartUpFolder()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 672 ;
HEIGHT 465 ;
ICON "PWCTICON" ;
TITLE "Check Folder Files  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

win1.Center ( )
@ 45 ,69 LISTBOX list1;
WIDTH 575 ;
HEIGHT 332 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 10 ,10 LABEL lbl1 ;
VALUE "Folder " ;
WIDTH 50 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 7 ,69 TEXTBOX textFolderName;
HEIGHT 30 ;
WIDTH 575 ;
VALUE StartUpFolder ;
READONLY ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {64,0,64} ;
FONTCOLOR {0,255,64} 

@ 386 ,546 BUTTONEX btn3;
CAPTION "Close ";
ON CLICK win1.Release()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action Check()
@ 390 ,70 LABEL lbl2 ;
VALUE "Files Count :  " ;
WIDTH 90 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 387 ,166 TEXTBOX textFilesCount;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {64,0,64} ;
FONTCOLOR {0,255,0} ;
NUMERIC 

END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc Check
Local nIndex
win1.Timer1.Enabled := False
GetFolder := win1.textFolderName.Value
GetFolder = ALLTRIM ( GetFolder )
aFiles = __Dir ( GetFolder + "\*.*" )
nMax  = LEN(aFiles)
nIndex := win1.list1.Value
IF nMax = win1.list1.ItemCount
FOR x = 1 TO nMax STEP 1
cFileName := GetFolder + "\" + aFiles[x][1]
IF win1.list1.Item(x) != cFileName
win1.list1.Item(x) := cFileName
ENDIF
Next
ELSE
win1.textFilesCount.Value := nMax
win1.list1.DeleteAllItems ( )
FOR x = 1 TO nMax STEP 1
cFileName := GetFolder + "\" + aFiles[x][1]
Win1.List1.Additem ( cFileName )
Next
ENDIF
IF (nIndex > 0) .and. (nIndex < win1.list1.ItemCount)
win1.list1.Value := nIndex
ENDIF
win1.Timer1.Enabled := True
Return Nil


End Of Resistance

INIT PROCEDURE Init_checkfiles
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","StartUpFolder := Get StartUp Folder",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Check Folder Files  '",2,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,14)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",17,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Folder '",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",24,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textFolderName  )",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",30,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Close '",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action win1.Release",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",41,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define Timer ( Timer1 , Action : Check() )",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Files Count :  '",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",48,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textFilesCount  )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",54,60)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",63,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Check",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Local nIndex",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Timer1.Enabled = False",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","GetFolder = win1.textFolderName.Value",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","GetFolder = All Trim GetFolder",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","aFiles = Call Function __Dir ( GetFolder + '\*.*' )",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array aFiles",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","nIndex = win1.list1.Value",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax = win1.list1.ItemCount )",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","cFileName = GetFolder + '\' + aFiles[x][1]",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( win1.list1.Item(x) != cFileName )",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.Item(x) = cFileName",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textFilesCount.Value = nMax",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","cFileName = GetFolder + '\' + aFiles[x][1]",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cFileName) to Listbox (List1) of Window (Win1)",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( (nIndex > 0) .and. (nIndex < win1.list1.ItemCount) )",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.Value = nIndex",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Timer1.Enabled = True",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",93,93)
Return
*-------------------------------------------------------------------*

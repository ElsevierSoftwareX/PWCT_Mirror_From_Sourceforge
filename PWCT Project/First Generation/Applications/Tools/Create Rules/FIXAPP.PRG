*---------------------------------------------------------------------------*
* Time : 20:20:56    Date : 05/01/2013
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2013 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 18/04/2013
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


Resistance R_FIXAPP_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_FIXAPP_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 832 ;
HEIGHT 465 ;
ICON "PWCTICON" ;
TITLE "Create Rules  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 
@ 45 ,69 LISTBOX list1;
WIDTH 625 ;
HEIGHT 372 ;
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
@ 7 ,69 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 305 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
@ 6 ,706 BUTTONEX btn1;
CAPTION "Browse ";
ON CLICK mybrowse()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 46 ,706 BUTTONEX btn2;
CAPTION "Create ";
ON CLICK FixApp()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 86 ,706 BUTTONEX btn3;
CAPTION "Close ";
ON CLICK CloseApp()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW
win1.Center ( )
ACTIVATE WINDOW win1
EndIF
procedure mybrowse()
GetFolder := GetFolder ( ;
"Application Folder" ,  ;
)
win1.text1.Value := GetFolder
return
procedure CloseApp()
win1.Release ( )
return
procedure FixApp()
Local x,y
GetFolder := win1.text1.Value
GetFolder = ALLTRIM ( GetFolder )
Win1.List1.Additem ( GetFolder + "\*.TRF" )
aFiles = __Dir ( GetFolder + "\*.TRF" )
nMax  = LEN(aFiles)
FOR x = 1 TO nMax STEP 1
cFileName := GetFolder + "\" + aFiles[x][1]
Win1.List1.Additem ( cFileName )
cFileName = UPPER ( cFileName )
cFileName = STRTRAN(cFileName,".TRF",".RULES")
CheckFile := File(cFileName)
IF .not. CheckFile
RPWI_TH = FCREATE(cFileName,0)
FWRITE(RPWI_TH," AllowParent: General " + CHR(13) + CHR(10))
FCLOSE(RPWI_TH)
ENDIF
Next
MyOut := MSGBOX("Operation done. ","Ok ")
return

End Of Resistance

INIT PROCEDURE Init_FIXAPP
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Create Rules  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",15,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Folder '",20,21)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",22,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",28,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Browse '",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action mybrowse",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",37,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Create '",40,41)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action FixApp",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",43,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Close '",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CloseApp",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",49,51)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",55,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mybrowse ( Event : CLICK )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","GetFolder := Get Folder",59,61)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text1.Value := GetFolder",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure CloseApp ( Event : CLICK )",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure FixApp ( Event : CLICK )",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Local x,y",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","GetFolder = win1.text1.Value",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","GetFolder = All Trim GetFolder",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (GetFolder + '\*.TRF') to Listbox (List1) of Window (Win1)",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","aFiles = Call Function __Dir ( GetFolder + '\*.TRF' )",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array aFiles",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","cFileName = GetFolder + '\' + aFiles[x][1]",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (cFileName) to Listbox (List1) of Window (Win1)",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","cFileName = CONVERT String cFileName To UPPER CASE",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","cFileName = Sub String '.TRF' FROM cFileName TRANSFORM TO '.RULES'",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File cFileName",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( .not. CheckFile )",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","write String ' AllowParent: General ' + CHR(13) + CHR(10) to File cFileName",81,83)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Operation done. ' Title 'Ok ' Type: Message Box",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",87,87)
Return
*-------------------------------------------------------------------*

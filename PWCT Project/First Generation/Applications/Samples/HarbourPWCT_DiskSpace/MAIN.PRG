*---------------------------------------------------------------------------*
* Time : 19:31:56    Date : 10/17/2014
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
Set decimals to 3
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 538 ;
HEIGHT 370 ;
ON INIT pStart()  ;
ICON "PWCTICON" ;
TITLE "Disk Space  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

win1.Center ( )
@ 64 ,123 EDITBOX edit1;
WIDTH 390 ;
HEIGHT 200;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 25 ,69 LABEL lbl1 ;
VALUE "Disk : " ;
WIDTH 40 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 66 ,33 LABEL lbl2 ;
VALUE "Information :" ;
WIDTH 80 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 17 ,123 COMBOBOX comboDisk;
ON CHANGE pChange()  ;
WIDTH 100 ;
HEIGHT 300;
VALUE 1 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 284 ,412 BUTTONEX btn1;
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

procedure pStart()
FOR x = 97 TO 122 STEP 1
IF isdisk(chr(x))
win1.combodisk.AddItem ( upper(chr(x)) )
ENDIF
Next
win1.combodisk.value := 1
return
procedure pChange()
Local cDriveName,DiskSpace
cDriveName := win1.ComboDisk.item(win1.ComboDisk.Value)
cDriveName := cDriveName+":"
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + "Drive Name : " + cDriveName
else
Win1.Edit1.VALUE := "Drive Name : " + cDriveName
endif
DiskSpace := SpaceString(hb_diskspace(cDriveName,1))
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + "Free Disk Space : " + DiskSpace + " GB"
else
Win1.Edit1.VALUE := "Free Disk Space : " + DiskSpace + " GB"
endif
DiskSpace := SpaceString(hb_diskspace(cDriveName,2))
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + "Used Disk Space : " + DiskSpace + " GB"
else
Win1.Edit1.VALUE := "Used Disk Space : " + DiskSpace + " GB"
endif
DiskSpace := SpaceString(hb_diskspace(cDriveName,3))
if .not. empty(Win1.Edit1.VALUE)
Win1.Edit1.VALUE := Win1.Edit1.VALUE + CHR(13) + CHR(10) + "Total Disk Space : " + DiskSpace + " GB"
else
Win1.Edit1.VALUE := "Total Disk Space : " + DiskSpace + " GB"
endif
return
Function  SpaceString ( DiskSpace )
DiskSpace := DiskSpace / (1024*1024*1024)
DiskSpace = STR ( DiskSpace )
DiskSpace = ALLTRIM ( DiskSpace )
Return DiskSpace


End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Set decimals to 3",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Disk Space  '",2,6)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action pStart",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",8,15)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center( )",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",18,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Disk : '",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",25,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Information :'",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",32,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( comboDisk )",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action pChange",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",39,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Close '",45,48)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action win1.Release",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",50,53)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",54,55)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",56,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pStart - Event : INIT",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 97 To 122 Step 1)",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( isdisk(chr(x)) )",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","win1.combodisk.AddItem ( upper(chr(x)) )",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","win1.combodisk.value = 1",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pChange - Event : CHANGE",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Local cDriveName,DiskSpace",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","cDriveName = win1.ComboDisk.item(win1.ComboDisk.Value)",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","cDriveName = cDriveName+':'",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Drive Name : ' + cDriveName) to Editbox (Edit1) of Window (Win1)",71,75)
SS_ESASTEP("Circuits\Main\Main\Main","DiskSpace = SpaceString(hb_diskspace(cDriveName,1))",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Free Disk Space : ' + DiskSpace + ' GB') to Editbox (Edit1) of Window (Win1)",77,81)
SS_ESASTEP("Circuits\Main\Main\Main","DiskSpace = SpaceString(hb_diskspace(cDriveName,2))",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Used Disk Space : ' + DiskSpace + ' GB') to Editbox (Edit1) of Window (Win1)",83,87)
SS_ESASTEP("Circuits\Main\Main\Main","DiskSpace = SpaceString(hb_diskspace(cDriveName,3))",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Total Disk Space : ' + DiskSpace + ' GB') to Editbox (Edit1) of Window (Win1)",89,93)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","Define Function SpaceString ( DiskSpace )",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","DiskSpace = DiskSpace / (1024*1024*1024)",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","DiskSpace = CONVERT DiskSpace TO STRING",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","DiskSpace = All Trim DiskSpace",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","End of Function (Return DiskSpace)",99,99)
Return
*-------------------------------------------------------------------*

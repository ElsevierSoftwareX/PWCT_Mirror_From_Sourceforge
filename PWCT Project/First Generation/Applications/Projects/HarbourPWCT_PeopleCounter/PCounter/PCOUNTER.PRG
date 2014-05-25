*---------------------------------------------------------------------------*
* Time : 19:22:51    Date : 05/25/2014
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2014.04.15
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


Resistance R_PCOUNTER_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PCOUNTER_19art1() code
Set Procedure to "Client.PRG"
DO LoadClient
Set Procedure to "sysdb.PRG"
Public StartUpFolder
StartUpFolder := GetStartUpFolder()
oPCounter = PCounter()
oWebCam = WebCam()
oDatabase = Database()
oFromImageFile = FromImageFile()
oPCClient = PCClientClass()
oStatistics = Statistics()
oSettings = Settings()
myout = oDatabase:Open()
myout = oPCounter:ShowWindow()
Class PCounter
Method ShowWindow
Method CloseWindow
Method WebCam
Method Server
Method Client
Method About
EndClass
Method ShowWindow Class PCounter
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 1117 ;
HEIGHT 642 ;
ICON "PWCTICON" ;
TITLE "People Counter  " ;
MAIN ;
BACKCOLOR {255,255,255} 

win1.Maximize ( )
DEFINE MAIN MENU
POPUP "File "
MENUITEM "Settings" Action oSettings:ShowWindow()
MENUITEM "About" Action self:About()
MENUITEM "Exit " Action self:CloseWindow()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Ready" 

DATE

CLOCK

KEYBOARD

END STATUSBAR

@ 301 ,28 BUTTONEX btn1;
CAPTION "Get Input from WebCam ";
ON CLICK Self:WebCam()  ;
WIDTH 300 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 29 ,62 IMAGE image2;
PICTURE "Image\webcamera.jpg";
ON CLICK self:WebCam()  ;
STRETCH ;
WIDTH 232 HEIGHT 229
@ 301 ,396 BUTTONEX btn6;
CAPTION "Get Input from Image File";
ON CLICK oFromImageFile:ShowWindow()  ;
WIDTH 300 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 25 ,440 IMAGE image6;
PICTURE "Image\fromfile.jpg";
ON CLICK oFromImageFile:ShowWindow()  ;
STRETCH ;
WIDTH 225 HEIGHT 225
@ 2 ,726 IMAGE image7;
PICTURE "Image\network.jpg";
STRETCH ;
WIDTH 370 HEIGHT 300
@ 58 ,848 BUTTONEX btn7;
CAPTION "Start Server ";
ON CLICK self:Server()  ;
WIDTH 110 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 301 ,756 BUTTONEX btn9;
CAPTION "Connect to Server";
ON CLICK self:Client()  ;
WIDTH 300 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 355 ,440 IMAGE image8;
PICTURE "Image\reports.jpg";
ON CLICK oStatistics:ShowWindow()  ;
STRETCH ;
WIDTH 177 HEIGHT 185
@ 557 ,396 BUTTONEX btn10;
CAPTION "Statistics ";
ON CLICK oStatistics:ShowWindow()  ;
WIDTH 300 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Return 0
Method CloseWindow Class PCounter
win1.Release ( )
Return 0
Method WebCam Class PCounter
myout = oWebCam:ShowWindow()
Return 0
Method Server Class PCounter
Execute File "Server.exe"
Return 0
Method Client Class PCounter
myout = oPCClient:ShowWindow()
Return 0
Method About Class PCounter
if !iswindowdefined( winAbout )
DEFINE WINDOW winAbout ;
AT 10 ,10 ;
WIDTH 818 ;
HEIGHT 320 ;
ON INIT winAbout.Center()  ;
ICON "PWCTICON" ;
TITLE "About " ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 68 ,13 LABEL lbl19 ;
VALUE " People Counter Application by Mahmoud Samir Fayed <msfclipper@yahoo.com> " ;
WIDTH 782 ;
HEIGHT 45 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
CENTERALIGN ;
FONTCOLOR {64,0,64}
@ 132 ,107 LABEL lbl20 ;
VALUE " Developed using Programming Without Coding Technology (PWCT) " ;
WIDTH 593 ;
HEIGHT 39 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
CENTERALIGN ;
FONTCOLOR {45,162,63}
@ 232 ,684 BUTTONEX btn8;
CAPTION " Close ";
ON CLICK winAbout.release()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW winAbout
EndIF

Return 0
Class WebCam
Data lStop init False
Method ShowWindow
Method ShowImage
Method CloseWindow
Method Stop
Method Continue
EndClass
Method ShowWindow Class WebCam
Execute File StartupFolder + "\1.bat" MINIMIZE
Self:lStop := False
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 672 ;
HEIGHT 604 ;
ON RELEASE self:CloseWindow()  ;
ICON "PWCTICON" ;
TITLE "Image From WebCam  " ;
CHILD ;
TOPMOST ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

win2.Center ( )
@ -8 ,-6 IMAGE image3;
PICTURE "Image\back.jpg";
STRETCH ;
WIDTH 699 HEIGHT 591
@ 70 ,10 IMAGE image1;
PICTURE "image\noimage.jpg";
STRETCH ;
WIDTH 640 HEIGHT 480
DEFINE TIMER Timer1 INTERVAL oSettings:nDelay ;
Action self:ShowImage
@ 16 ,550 BUTTONEX btn2;
CAPTION "Close ";
ON CLICK win2.release()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 24 ,22 LABEL lbl1 ;
VALUE "People Count : " ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 20 ,125 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 77 ;
READONLY ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 16 ,334 BUTTONEX btnStop;
CAPTION "Stop ";
ON CLICK self:Stop()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 16 ,441 BUTTONEX btnContinue;
CAPTION "Continue ";
ON CLICK self:Continue()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

Return 0
Method ShowImage Class WebCam
Local cPeopleCount,nCount,cDate,cTime,cImageFile,cImageSource
win2.Timer1.Enabled := False
cStr := "2"
RPWI_TH = FCREATE(StartUpFolder + "\IPLIB\Command.TXT",0)
FWRITE(RPWI_TH,cStr)
FCLOSE(RPWI_TH)
IF file((StartUpFolder+"\IPLIB\MYIMAGE.JPG"))
IF file(StartUpFolder+"\IPLIB\done.txt")
Copy File (StartUpFolder+"\IPLIB\MYIMAGE.JPG") to (StartUpFolder+"\IPLIB\MYIMAGE2.JPG")
win2.image1.Picture := StartUpFolder + "\IPLIB\myimage2.jpg"
ENDIF
ENDIF
CheckFile := File(StartUpFolder+"\IPLIB\Output.TXT")
IF checkfile
cPeopleCount := FILESTR( StartUpFolder+"\IPLIB\Output.TXT" )
win2.text1.Value := cPeopleCount
set century on
cDate = DATE()
cDate = DTOC ( cDate )
cTime = TIME()
cImageSource := "Webcamera"
RecCount := Reccount()
RecCount := RecCount+1
RecCount = STR ( RecCount )
RecCount = ALLTRIM ( RecCount )
cImageFile := "Shot"+RecCount+".jpg"
cImageFile2 := StartUpFolder+"\DATA\"+cImageFile
Copy File (StartUpFolder+"\IPLIB\MYIMAGE2.JPG") to (cImageFile2)
myout = oPCClient:SendImage(cDate,cTime,cImageFile2,cImageFile,cPeopleCount)
cFaceInf := FILESTR( (StartUpFolder+"\IPLIB\FaceInf.TXT") )
cInfFile = STRTRAN(cImageFile2,"jpg","txt")
RPWI_TH = FCREATE(cInfFile,0)
FWRITE(RPWI_TH,cFaceInf)
FCLOSE(RPWI_TH)
myout = oDatabase:NewRecord(cDate,cTime,cImageSource,cImageFile,cPeopleCount,cFaceInf)
ENDIF
IF self:lStop = False
win2.Timer1.Enabled := True
ENDIF
cStr := "0"
RPWI_TH = FCREATE(StartUpFolder + "\IPLIB\Command.TXT",0)
FWRITE(RPWI_TH,cStr)
FCLOSE(RPWI_TH)
Return 0
Method CloseWindow Class WebCam
cStr := "1"
RPWI_TH = FCREATE(StartUpFolder + "\IPLIB\Command.TXT",0)
FWRITE(RPWI_TH,cStr)
FCLOSE(RPWI_TH)
Return 0
Method Stop Class WebCam
Self:lStop := True
win2.Timer1.Enabled := False
win2.btnContinue.Enabled := True
win2.btnStop.Enabled := False
Return 0
Method Continue Class WebCam
Self:lStop := False
win2.Timer1.Enabled := True
win2.btnContinue.Enabled := False
win2.btnStop.Enabled := True
Return 0
Class FromImageFile
Method ShowWindow
Method DisplayImageFile
Method LoadData
Method BrowseImageFile
Method DeleteImage
EndClass
Method ShowWindow Class FromImageFile
if !iswindowdefined( win3 )
DEFINE WINDOW win3 ;
AT 10 ,10 ;
WIDTH 1250 ;
HEIGHT 599 ;
ON INIT self:LoadData()  ;
ICON "PWCTICON" ;
TITLE "Count People in Image File  " ;
CHILD ;
TOPMOST ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

win3.Center ( )
@ -8 ,-6 IMAGE image3;
PICTURE "Image\back.jpg";
STRETCH ;
WIDTH 1249 HEIGHT 591
@ 70 ,10 IMAGE image1;
PICTURE "image\noimage.jpg";
STRETCH ;
WIDTH 640 HEIGHT 480
@ 70 ,658 GRID Grid1;
ON CHANGE self:DisplayImageFile()  ;
WIDTH 550 ;
HEIGHT 370 ;
HEADERS {"Date","Time","Image Source","Image File","People Count"};
WIDTHS {100,100,100,100,100} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 20 ,470 BUTTONEX btn4;
CAPTION "Browse (Select Image File) ";
ON CLICK self:BrowseImageFile()  ;
WIDTH 180 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 24 ,22 LABEL lbl1 ;
VALUE "People Count : " ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 20 ,125 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 77 ;
READONLY ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 20 ,1108 BUTTONEX btn2;
CAPTION "Close ";
ON CLICK win3.release()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 449 ,658 EDITBOX edit2;
WIDTH 550 ;
HEIGHT 100;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 20 ,658 BUTTONEX btnDelete;
CAPTION "Delete ";
ON CLICK self:deleteimage()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win3
EndIF

Return 0
Method DisplayImageFile Class FromImageFile
Local nValue,cFile
nValue := win3.Grid1.Value
cFile := win3.Grid1.cell(nValue,4)
win3.image1.Picture := StartUpFolder + "\Data\"+cFile
Goto nValue
win3.edit2.Value := f_faceinf
win3.text1.Value := f_count
Return 0
Method LoadData Class FromImageFile
nMax := Reccount()
IF nMax > 0
FOR x = 1 TO nMax STEP 1
Goto x
win3.grid1.AddItem ( {f_Date,f_Time,f_source,alltrim(f_file),f_count } )
Next
ENDIF
Return 0
Method BrowseImageFile Class FromImageFile
GetFile := GetFile ( {   {"Image","*.JPG" } } , ;
" Select Image File " , ;
, ;
, ;
)
SetCurrentFolder(StartUpFolder)
CheckFile := File(GetFile)
IF CheckFile
Delete File (StartUpFolder+"\IPLIB\inputfile.JPG")
Delete File (StartUpFolder+"\IPLIB\outputfile.JPG")
Delete File (StartUpFolder+"\IPLIB\done.txt")
Delete File (StartUpFolder+"\IPLIB\output2.txt")
Copy File (GetFile) to (StartUpFolder+"\IPLIB\inputfile.JPG")
Execute File StartupFolder + "\2.bat" MINIMIZE
DO WHILE  .not. file(StartUpFolder+"\IPLIB\outputfile.JPG")
DO EVENTS
ENDDO
DO WHILE  .not. file(StartUpFolder+"\IPLIB\done.txt")
DO EVENTS
ENDDO
cPeopleCount := FILESTR( StartUpFolder+"\IPLIB\Output2.TXT" )
win3.text1.Value := cPeopleCount
set century on
cDate = DATE()
cDate = DTOC ( cDate )
cTime = TIME()
cImageSource := "FromFile"
RecCount := Reccount()
RecCount := RecCount+1
RecCount = STR ( RecCount )
RecCount = ALLTRIM ( RecCount )
cImageFile := "Shot"+RecCount+".jpg"
cImageFile2 := StartUpFolder+"\DATA\"+cImageFile
Copy File (StartUpFolder+"\IPLIB\outputfile.JPG") to (cImageFile2)
win3.grid1.AddItem ( {cDate,cTime,cImageSource,cImageFile,cPeopleCount } )
nCount := win3.Grid1.ItemCount
Win3.Grid1.Value := nCount
cFaceInf := FILESTR( (StartUpFolder+"\IPLIB\FaceInf2.TXT") )
cInfFile = STRTRAN(cImageFile2,"jpg","txt")
RPWI_TH = FCREATE(cInfFile,0)
FWRITE(RPWI_TH,cFaceInf)
FCLOSE(RPWI_TH)
myout = oDatabase:NewRecord(cDate,cTime,cImageSource,cImageFile,cPeopleCount,cFaceInf)
win3.image1.Picture := cImageFile2
win3.edit2.Value := cFaceInf
win3.text1.Value := f_count
ENDIF
Return 0
Method DeleteImage Class FromImageFile
Local nValue,cFile
nValue := win3.Grid1.Value
IF nValue > 0
Goto nValue
out = oDatabase:DeleteRecord()
cFile := win3.Grid1.cell(nValue,4)
cFile = ALLTRIM ( cFile )
nMax  = LEN(cFile)
Delete File (StartUpFolder + "\Data\"+cFile)
cFile = Left(cFile,nMax - 4)
cFile := cFile+".txt"
Delete File (StartUpFolder + "\Data\"+cFile)
win3.Grid1.DeleteItem ( nValue )
IF win3.Grid1.ItemCount > 0
win3.Grid1.Value := 1
out = self:displayimagefile()
ELSE
win3.image1.Picture := StartUpFolder + "\image\noimage.jpg"
win3.edit2.Value := ""
win3.text1.Value := "0"
ENDIF
ENDIF
Return 0
class Statistics From FromImageFile
Data aLocations init {}
Data aValues init {{},{},{}}
Method ShowWindow
Method LoadData
Method ShowGraph
EndClass
Method ShowWindow Class Statistics
if !iswindowdefined( win4 )
DEFINE WINDOW win4 ;
AT 10 ,10 ;
WIDTH 1207 ;
HEIGHT 599 ;
ON INIT self:LoadData()  ;
ICON "PWCTICON" ;
TITLE "Statistics" ;
CHILD ;
TOPMOST ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

win4.Center ( )
@ -8 ,-6 IMAGE image3;
PICTURE "Image\back.jpg";
STRETCH ;
WIDTH 1249 HEIGHT 591
@ 70 ,7 GRID Grid1;
WIDTH 600 ;
HEIGHT 480 ;
HEADERS {"Date","Time","Image Source","Image File","People Count"};
WIDTHS {100,100,100,150,100} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 20 ,1084 BUTTONEX btn2;
CAPTION "Close ";
ON CLICK win4.release()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 20 ,7 BUTTONEX btn11;
CAPTION "Process";
ON CLICK Self:ShowGraph()  ;
WIDTH 110 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 70 ,614 EDITBOX edit1;
WIDTH 570 ;
HEIGHT 480;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 30 ,614 LABEL lbl2 ;
VALUE " Results " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win4
EndIF

Return 0
Method LoadData Class Statistics
nMax := Reccount()
IF nMax > 0
FOR x = 1 TO nMax STEP 1
Goto x
win4.grid1.AddItem ( {f_Date,f_Time,f_source,alltrim(f_file),f_count } )
Next
ENDIF
Return 0
Method ShowGraph Class Statistics
self:aLocations := {}
self:aValues := {{},{}}
win4.edit1.Value := ""
nMax := Reccount()
IF nMax > 0
FOR x = 1 TO nMax STEP 1
Goto x
nLength  = LEN(self:aLocations)
lFound := False
IF .not. nLength = 0
FOR x2 = 1 TO nLength STEP 1
IF alltrim(self:aLocations[x2]) == alltrim(f_source)
lFound := True
Exit
ENDIF
Next
ENDIF
IF lFound = False
AADD( self:aLocations , alltrim(f_source))
cLocation := alltrim(f_source)
Count to v1 For alltrim(f_source) = cLocation
if .not. empty(Win4.Edit1.VALUE)
Win4.Edit1.VALUE := Win4.Edit1.VALUE + CHR(13) + CHR(10) + "=========================================================="
else
Win4.Edit1.VALUE := "=========================================================="
endif
if .not. empty(Win4.Edit1.VALUE)
Win4.Edit1.VALUE := Win4.Edit1.VALUE + CHR(13) + CHR(10) + "Location/Source : " + cLocation
else
Win4.Edit1.VALUE := "Location/Source : " + cLocation
endif
if .not. empty(Win4.Edit1.VALUE)
Win4.Edit1.VALUE := Win4.Edit1.VALUE + CHR(13) + CHR(10) + "No. of Frames : " + alltrim(Str(v1)) + " frames."
else
Win4.Edit1.VALUE := "No. of Frames : " + alltrim(Str(v1)) + " frames."
endif
v2 := 0
FOR t = 1 TO nMax STEP 1
Goto t
IF alltrim(f_source) == cLocation
v2 := v2 + val( f_count )
ENDIF
IF t = 1
cTimeStart := f_time
cTimeStart = STRTRAN(cTimeStart,":","")
ENDIF
IF t = nMax
cTimeEnd := f_time
cTimeEnd = STRTRAN(cTimeEnd,":","")
ENDIF
Next
if .not. empty(Win4.Edit1.VALUE)
Win4.Edit1.VALUE := Win4.Edit1.VALUE + CHR(13) + CHR(10) + "Sum of People Count : " + alltrim(Str(v2))
else
Win4.Edit1.VALUE := "Sum of People Count : " + alltrim(Str(v2))
endif
v2 := v2 / v1
v3 := Val(cTimeEnd) - Val(cTimeStart) + 1
if .not. empty(Win4.Edit1.VALUE)
Win4.Edit1.VALUE := Win4.Edit1.VALUE + CHR(13) + CHR(10) + "Average People Count : " + alltrim(Str(v2))
else
Win4.Edit1.VALUE := "Average People Count : " + alltrim(Str(v2))
endif
if .not. empty(Win4.Edit1.VALUE)
Win4.Edit1.VALUE := Win4.Edit1.VALUE + CHR(13) + CHR(10) + "Start Time : " + alltrim(cTimeStart)
else
Win4.Edit1.VALUE := "Start Time : " + alltrim(cTimeStart)
endif
if .not. empty(Win4.Edit1.VALUE)
Win4.Edit1.VALUE := Win4.Edit1.VALUE + CHR(13) + CHR(10) + "End Time : " + alltrim(cTimeEnd)
else
Win4.Edit1.VALUE := "End Time : " + alltrim(cTimeEnd)
endif
if .not. empty(Win4.Edit1.VALUE)
Win4.Edit1.VALUE := Win4.Edit1.VALUE + CHR(13) + CHR(10) + "Total Time = End Time - Start Time + 1 = " + alltrim(Str(v3)) + " seconds."
else
Win4.Edit1.VALUE := "Total Time = End Time - Start Time + 1 = " + alltrim(Str(v3)) + " seconds."
endif
v3 := v1 / v3
if .not. empty(Win4.Edit1.VALUE)
Win4.Edit1.VALUE := Win4.Edit1.VALUE + CHR(13) + CHR(10) + "Performance (No. of Frames / Second ) : " + alltrim(str(v3)) + " frames/second"
else
Win4.Edit1.VALUE := "Performance (No. of Frames / Second ) : " + alltrim(str(v3)) + " frames/second"
endif
if .not. empty(Win4.Edit1.VALUE)
Win4.Edit1.VALUE := Win4.Edit1.VALUE + CHR(13) + CHR(10) + "=========================================================="
else
Win4.Edit1.VALUE := "=========================================================="
endif
AADD( self:aValues[1] , v2)
AADD( self:aValues[2] , v3)
ENDIF
Next
ELSE
MyOut := MSGBOX("No Records ","Sorry ")
Return 0
ENDIF
if !iswindowdefined( winGraph )
DEFINE WINDOW winGraph ;
AT 10 ,10 ;
WIDTH 1173 ;
HEIGHT 465 ;
ICON "PWCTICON" ;
TITLE "Statistics - Graph  " ;
CHILD ;
TOPMOST ;
BACKCOLOR {255,255,255} 

winGraph.Center ( )
@ 10 ,1054 BUTTONEX btn12;
CAPTION "Close ";
ON CLICK winGraph.Release()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

DRAW GRAPH IN WINDOW winGraph ;
AT 50,50 ;
WIDTH 800 ;
HEIGHT 400 ;
TITLE "People Counter System - Statistics" ;
TYPE BARS ;
SERIES self:aValues ;
YVALUES self:aLocations ;
DEPTH 5 ;
HVALUES 10 ;
SERIENAMES {"Average People Count (Sum of People Count / No. of Frames)","Average Performance (No. of Frames per second)"} ;
COLORS {{255,0,0},{0,255,0},{0,0,255}} ;
3DVIEW  ;
SHOWXGRID ;
SHOWXVALUES ;
SHOWYVALUES ;
SHOWLEGENDS ;
NOBORDER 

ACTIVATE WINDOW winGraph
EndIF

Return 0
Class Settings
Data nDelay init 10
Method ShowWindow
Method CloseWindow
Method SaveData
Method WindowInit
Method LoadData
EndClass
Method ShowWindow Class Settings
out = Self:LoadData()
if !iswindowdefined( winSettings )
DEFINE WINDOW winSettings ;
AT 10 ,10 ;
WIDTH 316 ;
HEIGHT 166 ;
ON INIT self:WindowInit()  ;
ICON "PWCTICON" ;
TITLE " Application Settings  " ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 24 ,60 LABEL lbl2 ;
VALUE " Dealy " ;
WIDTH 60 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 22 ,128 TEXTBOX textDelay;
HEIGHT 30 ;
WIDTH 80 ;
VALUE self:nDelay ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
NUMERIC 

@ 74 ,48 BUTTONEX btnSave;
CAPTION "Save";
ON CLICK self:SaveData()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 74 ,157 BUTTONEX btnClose;
CAPTION "Cancel ";
ON CLICK self:CloseWindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 25 ,216 LABEL lbl4 ;
VALUE "ms " ;
WIDTH 30 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW winSettings
EndIF

Return 0
Method CloseWindow Class Settings
winSettings.Release ( )
Return 0
Method SaveData Class Settings
self:nDelay := winSettings.textDelay.Value
myout = Self:CloseWindow()
RPWI_TH = FCREATE(StartupFolder +"\Settings.txt",0)
FWRITE(RPWI_TH,alltrim(Str(self:nDelay)))
FCLOSE(RPWI_TH)
Return 0
Method WindowInit Class Settings
winSettings.Center ( )
Return 0
Method LoadData Class Settings
cStr := FILESTR( StartUpFolder+"\settings.txt" )
self:nDelay := val(cStr)
Return 0


End Of Resistance

INIT PROCEDURE Init_PCOUNTER
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Client.PRG'",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure LoadClient",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'sysdb.PRG'",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Public StartUpFolder",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","StartUpFolder := Get StartUp Folder",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object oPCounter of Class PCounter",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object oWebCam of Class WebCam",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object oDatabase of Class Database",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object oFromImageFile of Class FromImageFile",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object oPCClient of Class PCClientClass",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object oStatistics of Class Statistics",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object oSettings of Class Settings",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","myout = oDatabase.Open()",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","myout = oPCounter.ShowWindow()",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class PCounter",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowWindow",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Method CloseWindow",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Method WebCam",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Method Server",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Method Client",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Method About",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowWindow Class PCounter",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'People Counter  '",24,28)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",29,33)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize( )",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File '",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Settings' )",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About' )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit ' )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Date",46,47)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",48,49)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Get Input from WebCam '",54,55)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:WebCam",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",57,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image2 ) , Image : 'Image\webcamera.jpg'",60,61)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:WebCam",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn6 ) , Caption : 'Get Input from Image File'",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action oFromImageFile:ShowWindow",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",68,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image6 ) , Image : 'Image\fromfile.jpg'",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action oFromImageFile:ShowWindow",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",74,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image7 ) , Image : 'Image\network.jpg'",76,77)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",78,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn7 ) , Caption : 'Start Server '",80,81)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Server",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",83,85)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn9 ) , Caption : 'Connect to Server'",86,87)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Client",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",89,91)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image8 ) , Image : 'Image\reports.jpg'",92,93)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action oStatistics:ShowWindow",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",95,96)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn10 ) , Caption : 'Statistics '",97,98)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action oStatistics:ShowWindow",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",100,102)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",103,104)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",105,107)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method CloseWindow Class PCounter",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release( )",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method WebCam Class PCounter",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","myout = oWebCam.ShowWindow()",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Server Class PCounter",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File 'Server.exe'",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Client Class PCounter",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","myout = oPCClient.ShowWindow()",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method About Class PCounter",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winAbout ) , Title : 'About '",122,126)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action winAbout.Center",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",128,135)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl19 ) , Caption : ' People Counter Application by Mahmoud Samir Fayed <msfclipper@yahoo.com> '",136,137)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",138,143)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl20 ) , Caption : ' Developed using Programming Without Coding Technology (PWCT) '",144,145)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",146,151)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn8 ) , Caption : ' Close '",152,153)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action winAbout.release",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",155,157)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",158,159)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",160,162)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class WebCam",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","Data lStop Init Value False",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowWindow",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowImage",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","Method CloseWindow",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","Method Stop",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","Method Continue",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowWindow Class WebCam",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File StartupFolder + '\1.bat' , MINIMIZE",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","Self.lStop = False",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'Image From WebCam  '",175,179)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE : Action self:CloseWindow",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",181,189)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Center( )",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image3 ) , Image : 'Image\back.jpg'",191,192)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",193,194)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'image\noimage.jpg'",195,196)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",197,198)
SS_ESASTEP("Circuits\Main\Main\Main","Define Timer ( Timer1 , Action : self:ShowImage )",199,200)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Close '",201,202)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action win2.release",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",204,206)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'People Count : '",207,208)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",209,214)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",216,222)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnStop ) , Caption : 'Stop '",223,224)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Stop",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",226,228)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnContinue ) , Caption : 'Continue '",229,230)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Continue",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",232,234)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",235,236)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",237,239)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowImage Class WebCam",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","Local cPeopleCount,nCount,cDate,cTime,cImageFile,cImageSource",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Timer1.Enabled := False",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","cStr = '2'",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","write String cStr to File StartUpFolder + '\IPLIB\Command.TXT'",245,247)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( file((StartUpFolder+'\IPLIB\MYIMAGE.JPG')) )",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( file(StartUpFolder+'\IPLIB\done.txt') )",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","Copy File (StartUpFolder+'\IPLIB\MYIMAGE.JPG') to (StartUpFolder+'\IPLIB\MYIMAGE2.JPG')",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","win2.image1.Picture := StartUpFolder + '\IPLIB\myimage2.jpg'",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File StartUpFolder+'\IPLIB\Output.TXT'",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( checkfile )",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","cPeopleCount := Read File StartUpFolder+'\IPLIB\Output.TXT'",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","win2.text1.Value := cPeopleCount",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","cDate = System Date of today",258,259)
SS_ESASTEP("Circuits\Main\Main\Main","cDate = CONVERT Date cDate TO String",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","cTime = System Time",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","cImageSource = 'Webcamera'",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","RecCount = Get Records Count",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","RecCount = RecCount+1",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","RecCount = CONVERT RecCount TO STRING",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","RecCount = All Trim RecCount",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","cImageFile = 'Shot'+RecCount+'.jpg'",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","cImageFile2 = StartUpFolder+'\DATA\'+cImageFile",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","Copy File (StartUpFolder+'\IPLIB\MYIMAGE2.JPG') to (cImageFile2)",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","myout = oPCClient.SendImage(cDate,cTime,cImageFile2,cImageFile,cPeopleCount)",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","cFaceInf := Read File (StartUpFolder+'\IPLIB\FaceInf.TXT')",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","cInfFile = Sub String 'jpg' FROM cImageFile2 TRANSFORM TO 'txt'",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","write String cFaceInf to File cInfFile",273,275)
SS_ESASTEP("Circuits\Main\Main\Main","myout = oDatabase.NewRecord(cDate,cTime,cImageSource,cImageFile,cPeopleCount,cFaceInf)",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( self:lStop = False )",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Timer1.Enabled := True",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","cStr = '0'",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","write String cStr to File StartUpFolder + '\IPLIB\Command.TXT'",282,284)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method CloseWindow Class WebCam",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","cStr = '1'",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","write String cStr to File StartUpFolder + '\IPLIB\Command.TXT'",288,290)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Stop Class WebCam",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","Self.lStop = True",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Timer1.Enabled := False",294,294)
SS_ESASTEP("Circuits\Main\Main\Main","win2.btnContinue.Enabled := True",295,295)
SS_ESASTEP("Circuits\Main\Main\Main","win2.btnStop.Enabled := False",296,296)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",297,297)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Continue Class WebCam",298,298)
SS_ESASTEP("Circuits\Main\Main\Main","Self.lStop = False",299,299)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Timer1.Enabled := True",300,300)
SS_ESASTEP("Circuits\Main\Main\Main","win2.btnContinue.Enabled := False",301,301)
SS_ESASTEP("Circuits\Main\Main\Main","win2.btnStop.Enabled := True",302,302)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",303,303)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class FromImageFile",304,304)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowWindow",305,305)
SS_ESASTEP("Circuits\Main\Main\Main","Method DisplayImageFile",306,306)
SS_ESASTEP("Circuits\Main\Main\Main","Method LoadData",307,307)
SS_ESASTEP("Circuits\Main\Main\Main","Method BrowseImageFile",308,308)
SS_ESASTEP("Circuits\Main\Main\Main","Method DeleteImage",309,309)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",310,310)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowWindow Class FromImageFile",311,311)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win3 ) , Title : 'Count People in Image File  '",312,316)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action self:LoadData",317,317)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",318,326)
SS_ESASTEP("Circuits\Main\Main\Main","win3.Center( )",327,327)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image3 ) , Image : 'Image\back.jpg'",328,329)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",330,331)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'image\noimage.jpg'",332,333)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",334,335)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'Date','Time','Image Source','Image File','People Count'}",336,336)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:DisplayImageFile",337,337)
SS_ESASTEP("Circuits\Main\Main\Main","Grid Properties",338,344)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'Browse (Select Image File) '",345,346)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:BrowseImageFile",347,347)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",348,350)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'People Count : '",351,352)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",353,358)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",359,359)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",360,366)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Close '",367,368)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action win3.release",369,369)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",370,372)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit2 )",373,373)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",374,378)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnDelete ) , Caption : 'Delete '",379,380)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:deleteimage",381,381)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",382,384)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",385,386)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",387,389)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",390,390)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method DisplayImageFile Class FromImageFile",391,391)
SS_ESASTEP("Circuits\Main\Main\Main","Local nValue,cFile",392,392)
SS_ESASTEP("Circuits\Main\Main\Main","nValue = win3.Grid1.Value",393,393)
SS_ESASTEP("Circuits\Main\Main\Main","cFile = win3.Grid1.cell(nValue,4)",394,394)
SS_ESASTEP("Circuits\Main\Main\Main","win3.image1.Picture := StartUpFolder + '\Data\'+cFile",395,395)
SS_ESASTEP("Circuits\Main\Main\Main","Goto Record Number nValue",396,396)
SS_ESASTEP("Circuits\Main\Main\Main","win3.edit2.Value := f_faceinf",397,397)
SS_ESASTEP("Circuits\Main\Main\Main","win3.text1.Value = f_count",398,398)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",399,399)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method LoadData Class FromImageFile",400,400)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Records Count",401,401)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",402,402)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",403,403)
SS_ESASTEP("Circuits\Main\Main\Main","Goto Record Number x",404,404)
SS_ESASTEP("Circuits\Main\Main\Main","win3.grid1.AddItem ( {f_Date,f_Time,f_source,alltrim(f_file),f_count } )",405,405)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",406,406)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",407,407)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",408,408)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method BrowseImageFile Class FromImageFile",409,409)
SS_ESASTEP("Circuits\Main\Main\Main","GetFile := Get File",410,414)
SS_ESASTEP("Circuits\Main\Main\Main","Set Current Folder : StartUpFolder",415,415)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File GetFile",416,416)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( CheckFile )",417,417)
SS_ESASTEP("Circuits\Main\Main\Main","Delete File (StartUpFolder+'\IPLIB\inputfile.JPG')",418,418)
SS_ESASTEP("Circuits\Main\Main\Main","Delete File (StartUpFolder+'\IPLIB\outputfile.JPG')",419,419)
SS_ESASTEP("Circuits\Main\Main\Main","Delete File (StartUpFolder+'\IPLIB\done.txt')",420,420)
SS_ESASTEP("Circuits\Main\Main\Main","Delete File (StartUpFolder+'\IPLIB\output2.txt')",421,421)
SS_ESASTEP("Circuits\Main\Main\Main","Copy File (GetFile) to (StartUpFolder+'\IPLIB\inputfile.JPG')",422,422)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File StartupFolder + '\2.bat' , MINIMIZE",423,423)
SS_ESASTEP("Circuits\Main\Main\Main","WHILE ( .not. file(StartUpFolder+'\IPLIB\outputfile.JPG') )",424,424)
SS_ESASTEP("Circuits\Main\Main\Main","DO Events",425,425)
SS_ESASTEP("Circuits\Main\Main\Main","END OF While Loop",426,426)
SS_ESASTEP("Circuits\Main\Main\Main","WHILE ( .not. file(StartUpFolder+'\IPLIB\done.txt') )",427,427)
SS_ESASTEP("Circuits\Main\Main\Main","DO Events",428,428)
SS_ESASTEP("Circuits\Main\Main\Main","END OF While Loop",429,429)
SS_ESASTEP("Circuits\Main\Main\Main","cPeopleCount := Read File StartUpFolder+'\IPLIB\Output2.TXT'",430,430)
SS_ESASTEP("Circuits\Main\Main\Main","win3.text1.Value := cPeopleCount",431,431)
SS_ESASTEP("Circuits\Main\Main\Main","cDate = System Date of today",432,433)
SS_ESASTEP("Circuits\Main\Main\Main","cDate = CONVERT Date cDate TO String",434,434)
SS_ESASTEP("Circuits\Main\Main\Main","cTime = System Time",435,435)
SS_ESASTEP("Circuits\Main\Main\Main","cImageSource = 'FromFile'",436,436)
SS_ESASTEP("Circuits\Main\Main\Main","RecCount = Get Records Count",437,437)
SS_ESASTEP("Circuits\Main\Main\Main","RecCount = RecCount+1",438,438)
SS_ESASTEP("Circuits\Main\Main\Main","RecCount = CONVERT RecCount TO STRING",439,439)
SS_ESASTEP("Circuits\Main\Main\Main","RecCount = All Trim RecCount",440,440)
SS_ESASTEP("Circuits\Main\Main\Main","cImageFile = 'Shot'+RecCount+'.jpg'",441,441)
SS_ESASTEP("Circuits\Main\Main\Main","cImageFile2 = StartUpFolder+'\DATA\'+cImageFile",442,442)
SS_ESASTEP("Circuits\Main\Main\Main","Copy File (StartUpFolder+'\IPLIB\outputfile.JPG') to (cImageFile2)",443,443)
SS_ESASTEP("Circuits\Main\Main\Main","win3.grid1.AddItem ( {cDate,cTime,cImageSource,cImageFile,cPeopleCount } )",444,444)
SS_ESASTEP("Circuits\Main\Main\Main","nCount = win3.Grid1.ItemCount",445,445)
SS_ESASTEP("Circuits\Main\Main\Main","Win3.Grid1.Value := nCount",446,446)
SS_ESASTEP("Circuits\Main\Main\Main","cFaceInf := Read File (StartUpFolder+'\IPLIB\FaceInf2.TXT')",447,447)
SS_ESASTEP("Circuits\Main\Main\Main","cInfFile = Sub String 'jpg' FROM cImageFile2 TRANSFORM TO 'txt'",448,448)
SS_ESASTEP("Circuits\Main\Main\Main","write String cFaceInf to File cInfFile",449,451)
SS_ESASTEP("Circuits\Main\Main\Main","myout = oDatabase.NewRecord(cDate,cTime,cImageSource,cImageFile,cPeopleCount,cFaceInf)",452,452)
SS_ESASTEP("Circuits\Main\Main\Main","win3.image1.Picture := cImageFile2",453,453)
SS_ESASTEP("Circuits\Main\Main\Main","win3.edit2.Value := cFaceInf",454,454)
SS_ESASTEP("Circuits\Main\Main\Main","win3.text1.Value = f_count",455,455)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",456,456)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",457,457)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method DeleteImage Class FromImageFile",458,458)
SS_ESASTEP("Circuits\Main\Main\Main","Local nValue,cFile",459,459)
SS_ESASTEP("Circuits\Main\Main\Main","nValue = win3.Grid1.Value",460,460)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nValue > 0 )",461,461)
SS_ESASTEP("Circuits\Main\Main\Main","Goto Record Number nValue",462,462)
SS_ESASTEP("Circuits\Main\Main\Main","out = oDatabase.DeleteRecord()",463,463)
SS_ESASTEP("Circuits\Main\Main\Main","cFile = win3.Grid1.cell(nValue,4)",464,464)
SS_ESASTEP("Circuits\Main\Main\Main","cFile = All Trim cFile",465,465)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Length of String/Variable/Array cFile",466,466)
SS_ESASTEP("Circuits\Main\Main\Main","Delete File (StartUpFolder + '\Data\'+cFile)",467,467)
SS_ESASTEP("Circuits\Main\Main\Main","cFile =  Get SubString from left, String: cFile Count: nMax - 4",468,468)
SS_ESASTEP("Circuits\Main\Main\Main","cFile = cFile+'.txt'",469,469)
SS_ESASTEP("Circuits\Main\Main\Main","Delete File (StartUpFolder + '\Data\'+cFile)",470,470)
SS_ESASTEP("Circuits\Main\Main\Main","win3.Grid1.DeleteItem ( nValue )",471,471)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( win3.Grid1.ItemCount > 0 )",472,472)
SS_ESASTEP("Circuits\Main\Main\Main","win3.Grid1.Value = 1",473,473)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.displayimagefile()",474,474)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",475,475)
SS_ESASTEP("Circuits\Main\Main\Main","win3.image1.Picture := StartUpFolder + '\image\noimage.jpg'",476,476)
SS_ESASTEP("Circuits\Main\Main\Main","win3.edit2.Value := ''",477,477)
SS_ESASTEP("Circuits\Main\Main\Main","win3.text1.Value = '0'",478,478)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",479,479)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",480,480)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",481,481)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class Statistics From FromImageFile",482,482)
SS_ESASTEP("Circuits\Main\Main\Main","Data aLocations Init Value {}",483,483)
SS_ESASTEP("Circuits\Main\Main\Main","Data aValues Init Value {{},{},{}}",484,484)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowWindow",485,485)
SS_ESASTEP("Circuits\Main\Main\Main","Method LoadData",486,486)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowGraph",487,487)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",488,488)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowWindow Class Statistics",489,489)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win4 ) , Title : 'Statistics'",490,494)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action self:LoadData",495,495)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",496,504)
SS_ESASTEP("Circuits\Main\Main\Main","win4.Center( )",505,505)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image3 ) , Image : 'Image\back.jpg'",506,507)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",508,509)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'Date','Time','Image Source','Image File','People Count'}",510,510)
SS_ESASTEP("Circuits\Main\Main\Main","Grid Properties",511,517)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Close '",518,519)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action win4.release",520,520)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",521,523)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn11 ) , Caption : 'Process'",524,525)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:ShowGraph",526,526)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",527,529)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",530,530)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",531,535)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : ' Results '",536,537)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",538,543)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",544,545)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",546,548)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",549,549)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method LoadData Class Statistics",550,550)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Records Count",551,551)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",552,552)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",553,553)
SS_ESASTEP("Circuits\Main\Main\Main","Goto Record Number x",554,554)
SS_ESASTEP("Circuits\Main\Main\Main","win4.grid1.AddItem ( {f_Date,f_Time,f_source,alltrim(f_file),f_count } )",555,555)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",556,556)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",557,557)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",558,558)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowGraph Class Statistics",559,559)
SS_ESASTEP("Circuits\Main\Main\Main","self.aLocations = {}",560,560)
SS_ESASTEP("Circuits\Main\Main\Main","self.aValues = {{},{}}",561,561)
SS_ESASTEP("Circuits\Main\Main\Main","win4.edit1.Value := ''",562,562)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Get Records Count",563,563)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",564,564)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",565,565)
SS_ESASTEP("Circuits\Main\Main\Main","Goto Record Number x",566,566)
SS_ESASTEP("Circuits\Main\Main\Main","nLength = Get Length of String/Variable/Array self:aLocations",567,567)
SS_ESASTEP("Circuits\Main\Main\Main","lFound = False",568,568)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( .not. nLength = 0 )",569,569)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x2 = 1 To nLength Step 1)",570,570)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( alltrim(self:aLocations[x2]) == alltrim(f_source) )",571,571)
SS_ESASTEP("Circuits\Main\Main\Main","lFound = True",572,572)
SS_ESASTEP("Circuits\Main\Main\Main","Exit",573,573)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",574,574)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",575,575)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",576,576)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lFound = False )",577,577)
SS_ESASTEP("Circuits\Main\Main\Main","Add item alltrim(f_source) To Array self:aLocations",578,578)
SS_ESASTEP("Circuits\Main\Main\Main","cLocation = alltrim(f_source)",579,579)
SS_ESASTEP("Circuits\Main\Main\Main","Count to v1 For alltrim(f_source) = cLocation",580,580)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('==========================================================') to Editbox (Edit1) of Window (Win4)",581,585)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Location/Source : ' + cLocation) to Editbox (Edit1) of Window (Win4)",586,590)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('No. of Frames : ' + alltrim(Str(v1)) + ' frames.') to Editbox (Edit1) of Window (Win4)",591,595)
SS_ESASTEP("Circuits\Main\Main\Main","v2 = 0",596,596)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From t = 1 To nMax Step 1)",597,597)
SS_ESASTEP("Circuits\Main\Main\Main","Goto Record Number t",598,598)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( alltrim(f_source) == cLocation )",599,599)
SS_ESASTEP("Circuits\Main\Main\Main","v2 = v2 + val( f_count )",600,600)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",601,601)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( t = 1 )",602,602)
SS_ESASTEP("Circuits\Main\Main\Main","cTimeStart = f_time",603,603)
SS_ESASTEP("Circuits\Main\Main\Main","cTimeStart = Sub String ':' FROM cTimeStart TRANSFORM TO ''",604,604)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",605,605)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( t = nMax )",606,606)
SS_ESASTEP("Circuits\Main\Main\Main","cTimeEnd = f_time",607,607)
SS_ESASTEP("Circuits\Main\Main\Main","cTimeEnd = Sub String ':' FROM cTimeEnd TRANSFORM TO ''",608,608)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",609,609)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",610,610)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Sum of People Count : ' + alltrim(Str(v2))) to Editbox (Edit1) of Window (Win4)",611,615)
SS_ESASTEP("Circuits\Main\Main\Main","v2 = v2 / v1",616,616)
SS_ESASTEP("Circuits\Main\Main\Main","v3 = Val(cTimeEnd) - Val(cTimeStart) + 1",617,617)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Average People Count : ' + alltrim(Str(v2))) to Editbox (Edit1) of Window (Win4)",618,622)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Start Time : ' + alltrim(cTimeStart)) to Editbox (Edit1) of Window (Win4)",623,627)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('End Time : ' + alltrim(cTimeEnd)) to Editbox (Edit1) of Window (Win4)",628,632)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Total Time = End Time - Start Time + 1 = ' + alltrim(Str(v3)) + ' seconds.') to Editbox (Edit1) of Window (Win4)",633,637)
SS_ESASTEP("Circuits\Main\Main\Main","v3 = v1 / v3",638,638)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Performance (No. of Frames / Second ) : ' + alltrim(str(v3)) + ' frames/second') to Editbox (Edit1) of Window (Win4)",639,643)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('==========================================================') to Editbox (Edit1) of Window (Win4)",644,648)
SS_ESASTEP("Circuits\Main\Main\Main","Add item v2 To Array self:aValues[1]",649,649)
SS_ESASTEP("Circuits\Main\Main\Main","Add item v3 To Array self:aValues[2]",650,650)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",651,651)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",652,652)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",653,653)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message 'No Records ' Title 'Sorry ' Type: Message Box",654,654)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",655,655)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",656,656)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winGraph ) , Title : 'Statistics - Graph  '",657,661)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",662,667)
SS_ESASTEP("Circuits\Main\Main\Main","winGraph.Center( )",668,668)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn12 ) , Caption : 'Close '",669,670)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action winGraph.Release",671,671)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",672,674)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",675,676)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Graph (Title : 'People Counter System - Statistics')",677,695)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",696,698)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",699,699)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class Settings",700,700)
SS_ESASTEP("Circuits\Main\Main\Main","Data nDelay Init Value 10",701,701)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowWindow",702,702)
SS_ESASTEP("Circuits\Main\Main\Main","Method CloseWindow",703,703)
SS_ESASTEP("Circuits\Main\Main\Main","Method SaveData",704,704)
SS_ESASTEP("Circuits\Main\Main\Main","Method WindowInit",705,705)
SS_ESASTEP("Circuits\Main\Main\Main","Method LoadData",706,706)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",707,707)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowWindow Class Settings",708,708)
SS_ESASTEP("Circuits\Main\Main\Main","out = Self.LoadData()",709,709)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winSettings ) , Title : ' Application Settings  '",710,714)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action self:WindowInit",715,715)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",716,723)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : ' Dealy '",724,725)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",726,730)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textDelay  )",731,731)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",732,739)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnSave ) , Caption : 'Save'",740,741)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:SaveData",742,742)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",743,745)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnClose ) , Caption : 'Cancel '",746,747)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:CloseWindow",748,748)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",749,751)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'ms '",752,753)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",754,759)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",760,761)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",762,764)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",765,765)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method CloseWindow Class Settings",766,766)
SS_ESASTEP("Circuits\Main\Main\Main","winSettings.Release( )",767,767)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",768,768)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method SaveData Class Settings",769,769)
SS_ESASTEP("Circuits\Main\Main\Main","self:nDelay = winSettings.textDelay.Value",770,770)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.CloseWindow()",771,771)
SS_ESASTEP("Circuits\Main\Main\Main","write String alltrim(Str(self:nDelay)) to File StartupFolder +'\Settings.txt'",772,774)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",775,775)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method WindowInit Class Settings",776,776)
SS_ESASTEP("Circuits\Main\Main\Main","winSettings.Center( )",777,777)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",778,778)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method LoadData Class Settings",779,779)
SS_ESASTEP("Circuits\Main\Main\Main","cStr := Read File StartUpFolder+'\settings.txt'",780,780)
SS_ESASTEP("Circuits\Main\Main\Main","self.nDelay = val(cStr)",781,781)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",782,782)
Return
*-------------------------------------------------------------------*

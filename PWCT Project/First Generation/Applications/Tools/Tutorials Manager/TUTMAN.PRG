*---------------------------------------------------------------------------*
* Time : 00:39:05    Date : 10/04/2013
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2013 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2013.09.15
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


Resistance R_TUTMAN_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TUTMAN_19art1() code
aCommon := {}
AADD( aCommon , "PWCT Features")
AADD( aCommon , "Getting Started")
AADD( aCommon , "Hello World")
AADD( aCommon , "Variable")
AADD( aCommon , "Loop")
AADD( aCommon , "If")
AADD( aCommon , "Procedure")
AADD( aCommon , "Class")
AADD( aCommon , "Object")
AADD( aCommon , "File")
AADD( aCommon , "Array")
AADD( aCommon , "GUI")
AADD( aCommon , "Calc")
AADD( aCommon , "Draw")
AADD( aCommon , "Grid")
AADD( aCommon , "Report")
AADD( aCommon , "Access")
AADD( aCommon , "ADO")
AADD( aCommon , "Supernova")
AADD( aCommon , "Create New VPL")
Public aItems
aItems := {}
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 795 ;
HEIGHT 437 ;
ON INIT AppLoad()  ;
ICON "PWCTICON" ;
TITLE "Tutorials Manager  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 
win1.Center ( )
@ 23 ,127 LABEL lbl1 ;
VALUE "Search " ;
WIDTH 60 ;
HEIGHT 26 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 64 ,54 LISTBOX list1;
ON DBLCLICK OpenFile()  ;
WIDTH 677 ;
HEIGHT 280 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 17 ,500 BUTTONEX btn1;
CAPTION "Search ";
ON CLICK Search()  ;
WIDTH 100 HEIGHT 31 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 349 ,631 BUTTONEX btn2;
CAPTION "Close ";
ON CLICK CloseApp()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 18 ,195 COMBOBOX combo1;
ON CHANGE ComboChange()  ;
ON ENTER Search()  ;
WIDTH 300 ;
HEIGHT 300;
ITEMS aCommon ;
DISPLAYEDIT ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 349 ,234 BUTTONEX btn3;
CAPTION "Open Tutorials Folder ";
ON CLICK openTutorialsFolder()  ;
WIDTH 160 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 349 ,414 BUTTONEX btn4;
CAPTION "Open Tutorial (PDF File) ";
ON CLICK OpenFile()  ;
WIDTH 156 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 349 ,54 BUTTONEX btn5;
CAPTION "Download Tutorials ";
ON CLICK DownloadTutorials()  ;
WIDTH 160 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW
ACTIVATE WINDOW win1
EndIF
Proc LoadList
Local x,nMax,cLine
Public cStr
win1.list1.DeleteAllItems ( )
aItems := {}
cStr := FILESTR( "C:\SSBUILD\PWCT19\PWCTtutorials\" +"index.txt" )
nMax = MLCOUNT( cStr , 254 )
FOR x = 1 TO nMax STEP 1
cLine = MEMOLINE( cStr , 254 , x )
cLine = ALLTRIM ( cLine )
IF .not. empty(alltrim(cLine))
AADD( aItems , cLine)
nPos = AT("-",cLine)
nStrLen  = LEN(cLine)
cLine = SUBSTR(cLine,nPos + 1,nStrLen - nPos)
win1.list1.AddItem ( cLine )
ENDIF
Next
Return Nil
procedure AppLoad()
DO LoadList
return
procedure CloseApp()
win1.Release ( )
return
procedure ComboChange()
nIndex := win1.combo1.Value
cValue := win1.combo1.item(nIndex)
win1.combo1.displayvalue := cValue
DO Search
return
Proc Search
Local x,nMax,cValue,cLine,nRes
cValue := win1.combo1.displayvalue
cValue = UPPER ( cValue )
nMax = MLCOUNT( cStr , 254 )
IF empty(alltrim(cValue))
DO LoadList
Return 0
ENDIF
win1.list1.DeleteAllItems ( )
aItems := {}
FOR x = 1 TO nMax STEP 1
cLine = MEMOLINE( cStr , 254 , x )
cLine = ALLTRIM ( cLine )
IF .not. Empt(cLine)
cLine2 = UPPER ( cLine )
nRes = AT(cValue,cLine2)
IF nRes > 0
AADD( aItems , cLine)
nPos = AT("-",cLine)
nStrLen  = LEN(cLine)
cLine = SUBSTR(cLine,nPos + 1,nStrLen - nPos)
win1.list1.AddItem ( cLine )
ENDIF
ENDIF
Next
Return Nil
procedure OpenFile()
nIndex := win1.list1.Value
IF nIndex = 0
Return 0
ENDIF
cFile := aItems[nIndex]
nPos = AT("-",cFile)
cFile = Left(cFile,nPos-1)
cFile = ALLTRIM ( cFile )
cFile := "C:\SSBUILD\PWCT19\PWCTtutorials\" +cFile + ".pdf"
CheckFile := File(cFile)
IF CheckFile
Execute File cFile
ELSE
MyOut := MSGBOX(cFile +  "  is not found","Sorry ")
ENDIF
return
procedure openTutorialsFolder()
Execute File "C:\SSBUILD\PWCT19\PWCTTutorials"
return
Proc DownloadTutorials
CheckFile := File("C:\SSBUILD\PWCT19\PWCTTutorials\run.bat")
IF checkfile
Execute File "C:\SSBUILD\PWCT19\PWCTTutorials\run.bat" MINIMIZE
MyOut := MSGBOX("Download Started ... Check the tutorials folder to see the download progress ","Ok ")
ENDIF
Return Nil

End Of Resistance

INIT PROCEDURE Init_TUTMAN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aCommon",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'PWCT Features' To Array aCommon",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'Getting Started' To Array aCommon",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'Hello World' To Array aCommon",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'Variable' To Array aCommon",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'Loop' To Array aCommon",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'If' To Array aCommon",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'Procedure' To Array aCommon",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'Class' To Array aCommon",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'Object' To Array aCommon",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'File' To Array aCommon",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'Array' To Array aCommon",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'GUI' To Array aCommon",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'Calc' To Array aCommon",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'Draw' To Array aCommon",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'Grid' To Array aCommon",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'Report' To Array aCommon",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'Access' To Array aCommon",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'ADO' To Array aCommon",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'Supernova' To Array aCommon",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'Create New VPL' To Array aCommon",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Public aItems",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aItems",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Tutorials Manager  '",24,28)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action AppLoad",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",30,37)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Search '",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",41,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON DBLCLICK : Action OpenFile",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",49,53)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Search '",54,55)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Search",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",57,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Close '",60,61)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CloseApp",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",63,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo1 ) , Items : aCommon",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action ComboChange",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON ENTER : Action Search",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",69,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Open Tutorials Folder '",76,77)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action openTutorialsFolder",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",79,81)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'Open Tutorial (PDF File) '",82,83)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action OpenFile",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",85,87)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Download Tutorials '",88,89)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action DownloadTutorials",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",91,93)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",94,95)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",96,98)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure LoadList",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Local x,nMax,cLine",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","Public cStr",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aItems",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","cStr := Read File 'C:\SSBUILD\PWCT19\PWCTtutorials\' +'index.txt'",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Lines count of cStr",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","cLine = LINE x FROM MEMO cStr",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","cLine = All Trim cLine",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( .not. empty(alltrim(cLine)) )",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","Add item cLine To Array aItems",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","nPos = GET START POSITION OF '-' IN cLine",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","nStrLen = Get Length of String/Variable/Array cLine",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","cLine = Sub String of cLine From nPos + 1 Count nStrLen - nPos",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( cLine )",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure AppLoad - Event : INIT",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure LoadList",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure CloseApp ( Event : CLICK )",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ComboChange - Event : CHANGE",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","nIndex = win1.combo1.Value",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","cValue = win1.combo1.item(nIndex)",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","win1.combo1.displayvalue = cValue",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure Search",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Search",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","Local x,nMax,cValue,cLine,nRes",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","cValue = win1.combo1.displayvalue",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","cValue = CONVERT String cValue To UPPER CASE",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Lines count of cStr",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( empty(alltrim(cValue)) )",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure LoadList",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aItems",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","cLine = LINE x FROM MEMO cStr",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","cLine = All Trim cLine",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( .not. Empt(cLine) )",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","cLine2 = CONVERT String cLine To UPPER CASE",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","nRes = GET START POSITION OF cValue IN cLine2",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nRes > 0 )",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","Add item cLine To Array aItems",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","nPos = GET START POSITION OF '-' IN cLine",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","nStrLen = Get Length of String/Variable/Array cLine",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","cLine = Sub String of cLine From nPos + 1 Count nStrLen - nPos",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( cLine )",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure OpenFile - Event : DBLCLICK",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","nIndex = win1.list1.Value",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nIndex = 0 )",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","cFile = aItems[nIndex]",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","nPos = GET START POSITION OF '-' IN cFile",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","cFile =  Get SubString from left, String: cFile Count: nPos-1",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","cFile = All Trim cFile",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","cFile = 'C:\SSBUILD\PWCT19\PWCTtutorials\' +cFile + '.pdf'",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File cFile",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( CheckFile )",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File cFile",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message cFile +  '  is not found' Title 'Sorry ' Type: Message Box",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure openTutorialsFolder ( Event : CLICK )",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File 'C:\SSBUILD\PWCT19\PWCTTutorials'",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure DownloadTutorials",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File 'C:\SSBUILD\PWCT19\PWCTTutorials\run.bat'",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( checkfile )",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File 'C:\SSBUILD\PWCT19\PWCTTutorials\run.bat' , MINIMIZE",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Download Started ... Check the tutorials folder to see the download progress ' Title 'Ok ' Type: Message Box",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",183,183)
Return
*-------------------------------------------------------------------*

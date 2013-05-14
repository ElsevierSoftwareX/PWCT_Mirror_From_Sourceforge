*---------------------------------------------------------------------------*
* Time : 12:01:59    Date : 05/14/2013
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2013 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2013.05.14
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


Resistance R_TUTMAN_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TUTMAN_18smart1() code
aCommon := {}
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
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'Hello World' To Array aCommon",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'Variable' To Array aCommon",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'Loop' To Array aCommon",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'If' To Array aCommon",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'Procedure' To Array aCommon",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'Class' To Array aCommon",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'Object' To Array aCommon",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'File' To Array aCommon",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'Array' To Array aCommon",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'GUI' To Array aCommon",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'Calc' To Array aCommon",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'Draw' To Array aCommon",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'Grid' To Array aCommon",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'Report' To Array aCommon",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'Access' To Array aCommon",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'ADO' To Array aCommon",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'Supernova' To Array aCommon",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Public aItems",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aItems",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Tutorials Manager  '",21,25)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action AppLoad",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",27,34)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Search '",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",38,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON DBLCLICK : Action OpenFile",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",46,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Search '",51,52)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Search",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",54,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Close '",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CloseApp",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",60,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo1 ) , Items : aCommon",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action ComboChange",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON ENTER : Action Search",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",66,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Open Tutorials Folder '",73,74)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action openTutorialsFolder",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",76,78)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'Open Tutorial (PDF File) '",79,80)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action OpenFile",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",82,84)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Download Tutorials '",85,86)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action DownloadTutorials",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",88,90)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",91,92)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",93,95)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure LoadList",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Local x,nMax,cLine",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","Public cStr",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aItems",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","cStr := Read File 'C:\SSBUILD\PWCT19\PWCTtutorials\' +'index.txt'",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Lines count of cStr",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","cLine = LINE x FROM MEMO cStr",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","cLine = All Trim cLine",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( .not. empty(alltrim(cLine)) )",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","Add item cLine To Array aItems",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","nPos = GET START POSITION OF '-' IN cLine",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","nStrLen = Get Length of String/Variable/Array cLine",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","cLine = Sub String of cLine From nPos + 1 Count nStrLen - nPos",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( cLine )",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure AppLoad - Event : INIT",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure LoadList",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure CloseApp ( Event : CLICK )",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ComboChange - Event : CHANGE",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","nIndex = win1.combo1.Value",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","cValue = win1.combo1.item(nIndex)",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","win1.combo1.displayvalue = cValue",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure Search",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Search",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","Local x,nMax,cValue,cLine,nRes",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","cValue = win1.combo1.displayvalue",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","cValue = CONVERT String cValue To UPPER CASE",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Lines count of cStr",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( empty(alltrim(cValue)) )",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure LoadList",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aItems",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","cLine = LINE x FROM MEMO cStr",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","cLine = All Trim cLine",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( .not. Empt(cLine) )",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","cLine2 = CONVERT String cLine To UPPER CASE",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","nRes = GET START POSITION OF cValue IN cLine2",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nRes > 0 )",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","Add item cLine To Array aItems",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","nPos = GET START POSITION OF '-' IN cLine",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","nStrLen = Get Length of String/Variable/Array cLine",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","cLine = Sub String of cLine From nPos + 1 Count nStrLen - nPos",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( cLine )",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure OpenFile - Event : DBLCLICK",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","nIndex = win1.list1.Value",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nIndex = 0 )",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","cFile = aItems[nIndex]",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","nPos = GET START POSITION OF '-' IN cFile",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","cFile =  Get SubString from left, String: cFile Count: nPos-1",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","cFile = All Trim cFile",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","cFile = 'C:\SSBUILD\PWCT19\PWCTtutorials\' +cFile + '.pdf'",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File cFile",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( CheckFile )",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File cFile",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message cFile +  '  is not found' Title 'Sorry ' Type: Message Box",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure openTutorialsFolder ( Event : CLICK )",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File 'C:\SSBUILD\PWCT19\PWCTTutorials'",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure DownloadTutorials",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File 'C:\SSBUILD\PWCT19\PWCTTutorials\run.bat'",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( checkfile )",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File 'C:\SSBUILD\PWCT19\PWCTTutorials\run.bat' , MINIMIZE",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Download Started ... Check the tutorials folder to see the download progress ' Title 'Ok ' Type: Message Box",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",180,180)
Return
*-------------------------------------------------------------------*

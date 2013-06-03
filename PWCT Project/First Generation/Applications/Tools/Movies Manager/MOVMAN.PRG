*---------------------------------------------------------------------------*
* Time : 23:28:35    Date : 06/03/2013
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2013 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2013.06.03
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


Resistance R_MOVMAN_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MOVMAN_18smart1() code
aCommon := {}
AADD( aCommon , "Application")
AADD( aCommon , "Step")
Public aItems
aItems := {}
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 795 ;
HEIGHT 437 ;
ON INIT AppLoad()  ;
ICON "PWCTICON" ;
TITLE "Movies Manager  " ;
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
CAPTION "Open Movies Folder ";
ON CLICK openMoviesFolder()  ;
WIDTH 160 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 349 ,414 BUTTONEX btn4;
CAPTION "Open Movie File ";
ON CLICK OpenFile()  ;
WIDTH 156 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 349 ,54 BUTTONEX btn5;
CAPTION "Download Movies ";
ON CLICK DownloadMovies()  ;
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
cStr := FILESTR( "C:\SSBUILD\PWCT19\PWCTMovies\" +"index.txt" )
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
cFile = ALLTRIM ( cFile )
CheckFile := File("C:\SSBUILD\PWCT19\PWCTMovies\" +cFile)
IF CheckFile
Execute File "C:\SSBUILD\PWCT19\PWCTMovies\" +cFile
ELSE
MyOut := MSGBOX(cFile +  "  is not found","Sorry ")
ENDIF
return
procedure openMoviesFolder()
Execute File "C:\SSBUILD\PWCT19\PWCTMovies"
return
Proc DownloadMovies
CheckFile := File("C:\SSBUILD\PWCT19\PWCTMovies\run.bat")
IF checkfile
Execute File "C:\SSBUILD\PWCT19\PWCTMovies\run.bat" MINIMIZE
MyOut := MSGBOX("Download Started ... Check the Movies folder to see the download progress ","Ok ")
ENDIF
Return Nil

End Of Resistance

INIT PROCEDURE Init_MOVMAN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aCommon",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'Application' To Array aCommon",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Add item 'Step' To Array aCommon",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Public aItems",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aItems",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Movies Manager  '",6,10)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action AppLoad",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",12,19)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Search '",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",23,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON DBLCLICK : Action OpenFile",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",31,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Search '",36,37)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Search",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",39,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Close '",42,43)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CloseApp",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",45,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo1 ) , Items : aCommon",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action ComboChange",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON ENTER : Action Search",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",51,57)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Open Movies Folder '",58,59)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action openMoviesFolder",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",61,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'Open Movie File '",64,65)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action OpenFile",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",67,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Download Movies '",70,71)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action DownloadMovies",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",73,75)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",76,77)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",78,80)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure LoadList",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Local x,nMax,cLine",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","Public cStr",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aItems",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","cStr := Read File 'C:\SSBUILD\PWCT19\PWCTMovies\' +'index.txt'",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Lines count of cStr",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","cLine = LINE x FROM MEMO cStr",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","cLine = All Trim cLine",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( .not. empty(alltrim(cLine)) )",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","Add item cLine To Array aItems",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","nPos = GET START POSITION OF '-' IN cLine",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","nStrLen = Get Length of String/Variable/Array cLine",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","cLine = Sub String of cLine From nPos + 1 Count nStrLen - nPos",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( cLine )",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure AppLoad - Event : INIT",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure LoadList",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure CloseApp ( Event : CLICK )",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ComboChange - Event : CHANGE",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","nIndex = win1.combo1.Value",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","cValue = win1.combo1.item(nIndex)",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","win1.combo1.displayvalue = cValue",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure Search",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Search",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","Local x,nMax,cValue,cLine,nRes",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","cValue = win1.combo1.displayvalue",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","cValue = CONVERT String cValue To UPPER CASE",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Lines count of cStr",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( empty(alltrim(cValue)) )",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure LoadList",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aItems",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","cLine = LINE x FROM MEMO cStr",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","cLine = All Trim cLine",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( .not. Empt(cLine) )",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","cLine2 = CONVERT String cLine To UPPER CASE",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","nRes = GET START POSITION OF cValue IN cLine2",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nRes > 0 )",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","Add item cLine To Array aItems",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","nPos = GET START POSITION OF '-' IN cLine",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","nStrLen = Get Length of String/Variable/Array cLine",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","cLine = Sub String of cLine From nPos + 1 Count nStrLen - nPos",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( cLine )",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure OpenFile - Event : DBLCLICK",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","nIndex = win1.list1.Value",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nIndex = 0 )",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","cFile = aItems[nIndex]",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","cFile = All Trim cFile",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File 'C:\SSBUILD\PWCT19\PWCTMovies\' +cFile",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( CheckFile )",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File 'C:\SSBUILD\PWCT19\PWCTMovies\' +cFile",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message cFile +  '  is not found' Title 'Sorry ' Type: Message Box",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure openMoviesFolder ( Event : CLICK )",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File 'C:\SSBUILD\PWCT19\PWCTMovies'",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure DownloadMovies",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File 'C:\SSBUILD\PWCT19\PWCTMovies\run.bat'",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( checkfile )",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File 'C:\SSBUILD\PWCT19\PWCTMovies\run.bat' , MINIMIZE",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Download Started ... Check the Movies folder to see the download progress ' Title 'Ok ' Type: Message Box",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",162,162)
Return
*-------------------------------------------------------------------*

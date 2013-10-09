*---------------------------------------------------------------------------*
* Time : 17:57:33    Date : 10/09/2013
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2013 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2013.10.07
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


Resistance R_MOVMAN_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MOVMAN_19art1() code
aCommon := {}
AADD( aCommon , "Application")
AADD( aCommon , "Step")
Public aItems
aItems := {}
Public StartUpFolder
StartUpFolder := GetStartUpFolder()
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
cStr := FILESTR( StartUpFolder +"\index.txt" )
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
CheckFile := File(StartUpFolder+"\" +cFile)
IF CheckFile
Execute File StartUpFolder + "\" +cFile
ELSE
MyOut := MSGBOX(cFile +  "  is not found","Sorry ")
ENDIF
return
procedure openMoviesFolder()
Execute File StartUpFolder
return
Proc DownloadMovies
CheckFile := File(StartUpFolder+"\run.bat")
IF checkfile
Execute File StartUpFolder+"\run.bat" MINIMIZE
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
SS_ESASTEP("Circuits\Main\Main\Main","Public StartUpFolder",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","StartUpFolder := Get StartUp Folder",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Movies Manager  '",8,12)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action AppLoad",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",14,21)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Search '",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",25,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON DBLCLICK : Action OpenFile",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",33,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Search '",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Search",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",41,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Close '",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action CloseApp",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",47,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define Combobox ( combo1 ) , Items : aCommon",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action ComboChange",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON ENTER : Action Search",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Combobox Properties",53,59)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Open Movies Folder '",60,61)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action openMoviesFolder",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",63,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'Open Movie File '",66,67)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action OpenFile",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",69,71)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Download Movies '",72,73)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action DownloadMovies",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",75,77)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",78,79)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",80,82)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure LoadList",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Local x,nMax,cLine",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Public cStr",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aItems",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","cStr := Read File StartUpFolder +'\index.txt'",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Lines count of cStr",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","cLine = LINE x FROM MEMO cStr",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","cLine = All Trim cLine",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( .not. empty(alltrim(cLine)) )",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","Add item cLine To Array aItems",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","nPos = GET START POSITION OF '-' IN cLine",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","nStrLen = Get Length of String/Variable/Array cLine",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","cLine = Sub String of cLine From nPos + 1 Count nStrLen - nPos",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( cLine )",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure AppLoad - Event : INIT",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure LoadList",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure CloseApp ( Event : CLICK )",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ComboChange - Event : CHANGE",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","nIndex = win1.combo1.Value",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","cValue = win1.combo1.item(nIndex)",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","win1.combo1.displayvalue = cValue",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure Search",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure Search",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","Local x,nMax,cValue,cLine,nRes",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","cValue = win1.combo1.displayvalue",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","cValue = CONVERT String cValue To UPPER CASE",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = Lines count of cStr",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( empty(alltrim(cValue)) )",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure LoadList",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.DeleteAllItems ( )",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aItems",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","cLine = LINE x FROM MEMO cStr",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","cLine = All Trim cLine",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( .not. Empt(cLine) )",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","cLine2 = CONVERT String cLine To UPPER CASE",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","nRes = GET START POSITION OF cValue IN cLine2",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nRes > 0 )",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","Add item cLine To Array aItems",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","nPos = GET START POSITION OF '-' IN cLine",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","nStrLen = Get Length of String/Variable/Array cLine",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","cLine = Sub String of cLine From nPos + 1 Count nStrLen - nPos",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","win1.list1.AddItem ( cLine )",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure OpenFile - Event : DBLCLICK",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","nIndex = win1.list1.Value",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nIndex = 0 )",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","cFile = aItems[nIndex]",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","cFile = All Trim cFile",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File StartUpFolder+'\' +cFile",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( CheckFile )",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File StartUpFolder + '\' +cFile",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message cFile +  '  is not found' Title 'Sorry ' Type: Message Box",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure openMoviesFolder ( Event : CLICK )",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File StartUpFolder",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure DownloadMovies",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File StartUpFolder+'\run.bat'",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( checkfile )",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File StartUpFolder+'\run.bat' , MINIMIZE",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Download Started ... Check the Movies folder to see the download progress ' Title 'Ok ' Type: Message Box",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",164,164)
Return
*-------------------------------------------------------------------*

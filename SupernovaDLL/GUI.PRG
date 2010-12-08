*---------------------------------------------------------------------------*
* Time : 15:52:52    Date : 12/08/2010
*---------------------------------------------------------------------------*
* Programming without coding technology 1.7 (Sharp) [2006-2010]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
Function GUI
Public True,False 
True = .T. 
False = .F. 
 Details :
 * (Noun) *
Parameters SP1,SP2,SP3,SP4,SP5,SP6,SP7,SP8
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance RT_GUI                        
	VetoUnit :

Resistance R_GUI_15speed1() address Code Unit : Circuits\Main\Main\RT_GUI


Return 

* Resistance Code Unit : Circuits\Main\Main\RT_GUI
Resistance R_GUI_15speed1() code
Proc RT_GUI
Local vmax,x,MyOpObjectName
IF myopcode = 22
WinShow := True
Return 0
ENDIF
IF myopcode = 23
WinShow := False
Return 0
ENDIF
IF myopcode = 24
initpara2 := true
Return 0
ENDIF
IF myopcode = 25
initpara2 := false
Return 0
ENDIF
IF myopcode = 26
initpara3 := true
Return 0
ENDIF
IF myopcode = 27
initpara3 := false
Return 0
ENDIF
IF myopcode = 28
myvalue := GetFormHandle(myopwinname)
myvalue = STR ( myvalue )
myvalue = ALLTRIM ( myvalue )
DO RT_SetVarValue WITH myopdata[1],myvalue
Return 0
ENDIF
IF myopcode >= 2 .and. myopcode <= 20 .and. myopcode != 17
IF myopwinname = "NULL"
DO RTE_AddError WITH 11
DO RTE_Check
ENDIF
ENDIF
IF myopcode >= 29 .and. myopcode <= 32
IF myopwinname = "NULL"
DO RTE_AddError WITH 11
DO RTE_Check
ENDIF
ENDIF
IF myopcode = 1
WinsCount := WinsCount+1
ObjsCount := ObjsCount+1
cobjscount = STR ( Objscount )
cobjscount = ALLTRIM ( cobjscount )
cwinname := "win_"+cobjscount
MyOpWinName := cwinname
mymoveblock := "RT_DoEvent('window','" + cwinname+"','move')"
mygotfocusblock := "RT_DoEvent('window','" + cwinname+"','gotfocus')"
mylostfocusblock := "RT_DoEvent('window','" + cwinname+"','lostfocus')"
mymouseclickblock := "RT_DoEvent('window','" + cwinname+"','mouseclick')"
mymousemoveblock := "RT_DoEvent('window','" + cwinname+"','mousemove')"
mysizeblock := "RT_DoEvent('window','" + cwinname+"','resize')"
mymaxblock := "RT_DoEvent('window','" + cwinname+"','maximize')"
myminblock := "RT_DoEvent('window','" + cwinname+"','minimize')"
myreleaseblock := "RT_DoEvent('window','" + cwinname+"','release')"
IF winshow = True
IF initpara2 = true
IF initpara3 = false
DEFINE WINDOW &cwinname ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON RELEASE &myreleaseblock  ;
ON MOVE &mymoveblock  ;
ON GOTFOCUS &mygotfocusblock  ;
ON LOSTFOCUS &mylostfocusblock  ;
ON MOUSECLICK &mymouseclickblock  ;
ON MOUSEMOVE &mymousemoveblock  ;
ON SIZE &mysizeblock  ;
ON MAXIMIZE &mymaxblock  ;
ON MINIMIZE &myminblock  ;
ICON "PWCTICON" ;
TITLE "Window Title" ;
CHILD ;
BACKCOLOR {236,233,216} 

mylast  = LEN(RT_GUI_Statusbar)
FOR tempx = 1 TO mylast STEP 1
IF RT_GUI_Statusbar[tempx][1] == cwinname
DEFINE STATUSBAR 

mylast2  = LEN(RT_GUI_Statusbar[tempx][8])
FOR tempx2 = 1 TO mylast2 STEP 1
IF RT_GUI_Statusbar[tempx][8][tempx2][1] = 1
tempcaption := RT_GUI_Statusbar[tempx][8][tempx2][2]
STATUSITEM (tempcaption)

ENDIF
IF RT_GUI_Statusbar[tempx][8][tempx2][1] = 2
CLOCK

ENDIF
IF RT_GUI_Statusbar[tempx][8][tempx2][1] = 3
DATE

ENDIF
IF RT_GUI_Statusbar[tempx][8][tempx2][1] = 4
KEYBOARD

ENDIF
Next
END STATUSBAR

ENDIF
Next
END WINDOW

ELSE
DEFINE WINDOW &cwinname ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Window Title" ;
MODAL ;
NOSIZE ;
BACKCOLOR {236,233,216} 

mylast  = LEN(RT_GUI_Statusbar)
FOR tempx = 1 TO mylast STEP 1
IF RT_GUI_Statusbar[tempx][1] == cwinname
DEFINE STATUSBAR 

mylast2  = LEN(RT_GUI_Statusbar[tempx][8])
FOR tempx2 = 1 TO mylast2 STEP 1
IF RT_GUI_Statusbar[tempx][8][tempx2][1] = 1
tempcaption := RT_GUI_Statusbar[tempx][8][tempx2][2]
STATUSITEM (tempcaption)

ENDIF
IF RT_GUI_Statusbar[tempx][8][tempx2][1] = 2
CLOCK

ENDIF
IF RT_GUI_Statusbar[tempx][8][tempx2][1] = 3
DATE

ENDIF
IF RT_GUI_Statusbar[tempx][8][tempx2][1] = 4
KEYBOARD

ENDIF
Next
END STATUSBAR

ENDIF
Next
END WINDOW

winscount := winscount-1
ENDIF
ELSE
IF initpara3 = false
DEFINE WINDOW &cwinname ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON RELEASE &myreleaseblock  ;
ON MOVE &mymoveblock  ;
ON GOTFOCUS &mygotfocusblock  ;
ON LOSTFOCUS &mylostfocusblock  ;
ON MOUSECLICK &mymouseclickblock  ;
ON MOUSEMOVE &mymousemoveblock  ;
ON SIZE &mysizeblock  ;
ON MAXIMIZE &mymaxblock  ;
ON MINIMIZE &myminblock  ;
ICON "PWCTICON" ;
TITLE "Window Title" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

mylast  = LEN(RT_GUI_Statusbar)
FOR tempx = 1 TO mylast STEP 1
IF RT_GUI_Statusbar[tempx][1] == cwinname
DEFINE STATUSBAR 

mylast2  = LEN(RT_GUI_Statusbar[tempx][8])
FOR tempx2 = 1 TO mylast2 STEP 1
IF RT_GUI_Statusbar[tempx][8][tempx2][1] = 1
tempcaption := RT_GUI_Statusbar[tempx][8][tempx2][2]
STATUSITEM (tempcaption)

ENDIF
IF RT_GUI_Statusbar[tempx][8][tempx2][1] = 2
CLOCK

ENDIF
IF RT_GUI_Statusbar[tempx][8][tempx2][1] = 3
DATE

ENDIF
IF RT_GUI_Statusbar[tempx][8][tempx2][1] = 4
KEYBOARD

ENDIF
Next
END STATUSBAR

ENDIF
Next
END WINDOW

ELSE
DEFINE WINDOW &cwinname ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Window Title" ;
MODAL ;
NOSIZE ;
BACKCOLOR {236,233,216} 

mylast  = LEN(RT_GUI_Statusbar)
FOR tempx = 1 TO mylast STEP 1
IF RT_GUI_Statusbar[tempx][1] == cwinname
DEFINE STATUSBAR 

mylast2  = LEN(RT_GUI_Statusbar[tempx][8])
FOR tempx2 = 1 TO mylast2 STEP 1
IF RT_GUI_Statusbar[tempx][8][tempx2][1] = 1
tempcaption := RT_GUI_Statusbar[tempx][8][tempx2][2]
STATUSITEM (tempcaption)

ENDIF
IF RT_GUI_Statusbar[tempx][8][tempx2][1] = 2
CLOCK

ENDIF
IF RT_GUI_Statusbar[tempx][8][tempx2][1] = 3
DATE

ENDIF
IF RT_GUI_Statusbar[tempx][8][tempx2][1] = 4
KEYBOARD

ENDIF
Next
END STATUSBAR

ENDIF
Next
END WINDOW

winscount := winscount-1
ENDIF
ENDIF
ELSE
IF initpara2 = true
IF initpara3 = false
DEFINE WINDOW &cwinname ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON RELEASE &myreleaseblock  ;
ON MOVE &mymoveblock  ;
ON GOTFOCUS &mygotfocusblock  ;
ON LOSTFOCUS &mylostfocusblock  ;
ON MOUSECLICK &mymouseclickblock  ;
ON MOUSEMOVE &mymousemoveblock  ;
ON SIZE &mysizeblock  ;
ON MAXIMIZE &mymaxblock  ;
ON MINIMIZE &myminblock  ;
ICON "PWCTICON" ;
TITLE "Window Title" ;
CHILD ;
NOSHOW ;
BACKCOLOR {236,233,216} 

mylast  = LEN(RT_GUI_Statusbar)
FOR tempx = 1 TO mylast STEP 1
IF RT_GUI_Statusbar[tempx][1] == cwinname
DEFINE STATUSBAR 

mylast2  = LEN(RT_GUI_Statusbar[tempx][8])
FOR tempx2 = 1 TO mylast2 STEP 1
IF RT_GUI_Statusbar[tempx][8][tempx2][1] = 1
tempcaption := RT_GUI_Statusbar[tempx][8][tempx2][2]
STATUSITEM (tempcaption)

ENDIF
IF RT_GUI_Statusbar[tempx][8][tempx2][1] = 2
CLOCK

ENDIF
IF RT_GUI_Statusbar[tempx][8][tempx2][1] = 3
DATE

ENDIF
IF RT_GUI_Statusbar[tempx][8][tempx2][1] = 4
KEYBOARD

ENDIF
Next
END STATUSBAR

ENDIF
Next
END WINDOW

ELSE
DEFINE WINDOW &cwinname ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Window Title" ;
MODAL ;
NOSHOW ;
NOSIZE ;
BACKCOLOR {236,233,216} 

mylast  = LEN(RT_GUI_Statusbar)
FOR tempx = 1 TO mylast STEP 1
IF RT_GUI_Statusbar[tempx][1] == cwinname
DEFINE STATUSBAR 

mylast2  = LEN(RT_GUI_Statusbar[tempx][8])
FOR tempx2 = 1 TO mylast2 STEP 1
IF RT_GUI_Statusbar[tempx][8][tempx2][1] = 1
tempcaption := RT_GUI_Statusbar[tempx][8][tempx2][2]
STATUSITEM (tempcaption)

ENDIF
IF RT_GUI_Statusbar[tempx][8][tempx2][1] = 2
CLOCK

ENDIF
IF RT_GUI_Statusbar[tempx][8][tempx2][1] = 3
DATE

ENDIF
IF RT_GUI_Statusbar[tempx][8][tempx2][1] = 4
KEYBOARD

ENDIF
Next
END STATUSBAR

ENDIF
Next
END WINDOW

winscount := winscount-1
ENDIF
ELSE
IF initpara3 = false
DEFINE WINDOW &cwinname ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON RELEASE &myreleaseblock  ;
ON MOVE &mymoveblock  ;
ON GOTFOCUS &mygotfocusblock  ;
ON LOSTFOCUS &mylostfocusblock  ;
ON MOUSECLICK &mymouseclickblock  ;
ON MOUSEMOVE &mymousemoveblock  ;
ON SIZE &mysizeblock  ;
ON MAXIMIZE &mymaxblock  ;
ON MINIMIZE &myminblock  ;
ICON "PWCTICON" ;
TITLE "Window Title" ;
CHILD ;
NOSHOW ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

mylast  = LEN(RT_GUI_Statusbar)
FOR tempx = 1 TO mylast STEP 1
IF RT_GUI_Statusbar[tempx][1] == cwinname
DEFINE STATUSBAR 

mylast2  = LEN(RT_GUI_Statusbar[tempx][8])
FOR tempx2 = 1 TO mylast2 STEP 1
IF RT_GUI_Statusbar[tempx][8][tempx2][1] = 1
tempcaption := RT_GUI_Statusbar[tempx][8][tempx2][2]
STATUSITEM (tempcaption)

ENDIF
IF RT_GUI_Statusbar[tempx][8][tempx2][1] = 2
CLOCK

ENDIF
IF RT_GUI_Statusbar[tempx][8][tempx2][1] = 3
DATE

ENDIF
IF RT_GUI_Statusbar[tempx][8][tempx2][1] = 4
KEYBOARD

ENDIF
Next
END STATUSBAR

ENDIF
Next
END WINDOW

ELSE
DEFINE WINDOW &cwinname ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "PWCTICON" ;
TITLE "Window Title" ;
MODAL ;
NOSHOW ;
NOSIZE ;
BACKCOLOR {236,233,216} 

mylast  = LEN(RT_GUI_Statusbar)
FOR tempx = 1 TO mylast STEP 1
IF RT_GUI_Statusbar[tempx][1] == cwinname
DEFINE STATUSBAR 

mylast2  = LEN(RT_GUI_Statusbar[tempx][8])
FOR tempx2 = 1 TO mylast2 STEP 1
IF RT_GUI_Statusbar[tempx][8][tempx2][1] = 1
tempcaption := RT_GUI_Statusbar[tempx][8][tempx2][2]
STATUSITEM (tempcaption)

ENDIF
IF RT_GUI_Statusbar[tempx][8][tempx2][1] = 2
CLOCK

ENDIF
IF RT_GUI_Statusbar[tempx][8][tempx2][1] = 3
DATE

ENDIF
IF RT_GUI_Statusbar[tempx][8][tempx2][1] = 4
KEYBOARD

ENDIF
Next
END STATUSBAR

ENDIF
Next
END WINDOW

winscount := winscount-1
ENDIF
ENDIF
ENDIF
IF initpara3 = false
Activate Window &cwinname nowait
ENDIF
AADD( MyOpObjsMap , {"window",cwinname,"NULL","NOEVENTS","NOPARENT"})
Return 0
ENDIF
IF myopcode = 2
DO setproperty WITH MyOpWinName,"title",myopdata[1]
Return 0
ENDIF
IF myopcode = 3
avalue := myopdata[1]
avalue = STRTRAN(avalue," ","")
IF avalue == "righttoleft" .or. avalue == "»œ«Ì…„‰«·Ì„Ì‰··Ì”«—"
calldll32("SetWindowLong","USER32.DLL",GetFormHandle (MyOpWinName),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle (MyOpWinName), -20),0x400000,0x100000))
ENDIF
Return 0
ENDIF
IF myopcode = 4
acolor := RT_CheckColor(myopdata[1])
acolor := &acolor
DO setproperty WITH MyOpWinName,"backcolor",acolor
Return 0
ENDIF
IF myopcode = 5
DO setproperty WITH MyOpWinName,"row",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 6
DO setproperty WITH MyOpWinName,"col",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 7
DO setproperty WITH MyOpWinName,"width",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 8
DO setproperty WITH MyOpWinName,"height",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 9
DO domethod WITH MyOpWinName,"maximize"
Return 0
ENDIF
IF myopcode = 10
DO domethod WITH MyOpWinName,"minimize"
Return 0
ENDIF
IF myopcode = 11
VTEMP3 = GetProperty ( myopwinname,"width" )
VTEMP4 = GetProperty ( myopwinname,"height" )
DesktopWidth = GETDESKTOPWIDTH()
DesktopHeight = GETDESKTOPHEIGHT()
v1 := (desktopheight - vtemp4) / 2
v2 := (desktopwidth - vtemp3) / 2
DO setproperty WITH MyOpWinName,"row",v1
DO setproperty WITH MyOpWinName,"col",v2
Return 0
ENDIF
IF myopcode = 12
DO domethod WITH MyOpWinName,"show"
Return 0
ENDIF
IF myopcode = 13
DO domethod WITH MyOpWinName,"hide"
Return 0
ENDIF
IF myopcode = 14
DO domethod WITH MyOpWinName,"release"
Return 0
ENDIF
IF myopcode = 15
vmax  = LEN(MyOpObjsMap)
FOR x = vmax TO 1 STEP -1
IF MyOpObjsMap[x][1] = "window"
IF lower(alltrim(MyOpObjsMap[x][2])) == lower(alltrim(MyOpWinName))
MyOpObjsMap[x][3] := MyOpData[1]
Exit
ENDIF
ENDIF
Next
Return 0
ENDIF
IF myopcode = 16
MyOpWinName := "NULL"
vmax  = LEN(MyOpObjsMap)
FOR x = vmax TO 1 STEP -1
IF MyOpObjsMap[x][1] = "window"
IF lower(alltrim(MyOpObjsMap[x][3])) == lower(alltrim(MyOpData[1]))
MyOpWinName := MyOpObjsMap[x][2]
Exit
ENDIF
ENDIF
Next
IF MyOpWinName = "NULL"
MyOut := MSGBOX("Window " + myopdata[1]+" is not found !!!","Supernova - Runtime Error")
MyActiveProc := "NULL"
ENDIF
Return 0
ENDIF
IF myopcode = 17
SysSwitch := False
winscount := 0
Return 0
ENDIF
IF myopcode = 18
DO RT_ReadExpr WITH myopdata[1],"RightSide"
VARVALUE = RT_GetExprValue ( RT_RS_DATA )
DO setproperty WITH MyOpWinName,"title",varvalue
Return 0
ENDIF
IF myopcode = 19
myvalue = GetProperty ( myopwinname,"title" )
DO RT_SetVarValue WITH myopdata[1],myvalue
Return 0
ENDIF
IF myopcode = 20
vmax  = LEN(MyOpObjsMap)
FOR x = vmax TO 1 STEP -1
IF MyOpObjsMap[x][1] = "window"
IF lower(alltrim(MyOpObjsMap[x][3])) == lower(alltrim(MyOpData[1]))
Myparent := MyOpObjsMap[x][2]
myhandle := GetFormHandle(myopwinname)
myparenthandle := GetFormHandle(myparent)
myout = CALLDLL32("SetParent","user32.dll",myhandle,myparenthandle)
FOR x2 = vmax TO 1 STEP -1
IF MyOpObjsMap[x2][1] = "window"
IF alltrim(myopobjsmap[x2][2]) == alltrim(myopwinname)
myopobjsmap[x2][5] := "CHILD"
Exit
ENDIF
ENDIF
Next
Exit
ENDIF
ENDIF
Next
Return 0
ENDIF
IF myopcode = 21
DO setproperty WITH "win1","title",myopdata[1]
Return 0
ENDIF
IF myopcode = 29
myvalue = GetProperty ( myopwinname,"row" )
DO RT_SetVarValue WITH myopdata[1],alltrim(str(myvalue))
Return 0
ENDIF
IF myopcode = 30
myvalue = GetProperty ( myopwinname,"col" )
DO RT_SetVarValue WITH myopdata[1],alltrim(str(myvalue))
Return 0
ENDIF
IF myopcode = 31
myvalue = GetProperty ( myopwinname,"width" )
DO RT_SetVarValue WITH myopdata[1],alltrim(str(myvalue))
Return 0
ENDIF
IF myopcode = 32
myvalue = GetProperty ( myopwinname,"height" )
DO RT_SetVarValue WITH myopdata[1],alltrim(Str(myvalue))
Return 0
ENDIF
IF myopcode = 33
DO RT_ReadExpr WITH myopdata[1],"RightSide"
VARVALUE = RT_GetExprValue ( RT_RS_DATA )
DO setproperty WITH MyOpWinName,"row",val(varvalue)
Return 0
ENDIF
IF myopcode = 34
DO RT_ReadExpr WITH myopdata[1],"RightSide"
VARVALUE = RT_GetExprValue ( RT_RS_DATA )
DO setproperty WITH MyOpWinName,"col",val(varvalue)
Return 0
ENDIF
IF myopcode = 35
DO RT_ReadExpr WITH myopdata[1],"RightSide"
VARVALUE = RT_GetExprValue ( RT_RS_DATA )
DO setproperty WITH MyOpWinName,"width",val(varvalue)
Return 0
ENDIF
IF myopcode = 36
DO RT_ReadExpr WITH myopdata[1],"RightSide"
VARVALUE = RT_GetExprValue ( RT_RS_DATA )
DO setproperty WITH MyOpWinName,"height",val(varvalue)
Return 0
ENDIF
IF myopcode >= 50 .and. myopcode <= 76
oldvalue := MyOpObjectName
MyOpObjectName := ObjSelArray[1]
IF myopcode != 50
IF myopwinname = "NULL"
DO RTE_AddError WITH 11
ENDIF
IF myopobjectname = "NULL"
DO RTE_AddError WITH 12
ENDIF
DO RTE_Check
ENDIF
IF myopcode = 50
ObjsCount := ObjsCount+1
cobjscount = STR ( Objscount )
cobjscount = ALLTRIM ( cobjscount )
cobjname := "obj_"+cobjscount
MyOpObjectName := cobjname
mymouseclickblock := "RT_DoEvent('button','" + cobjname+"','mouseclick')"
@ 10 ,10 BUTTONEX &cobjname;
PARENT &myopwinname ;
CAPTION "No Caption";
ON CLICK &mymouseclickblock  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 9 ;
FLAT ;
NOXPSTYLE ;
TOOLTIP ""
AADD( MyOpObjsMap , {"button",cobjname,"NULL","NOEVENTS",myopwinname})
ObjSelArray[1] := MyOpObjectName
Return 0
ENDIF
IF myopcode = 51
DO setproperty WITH MyOpWinName,MyOpObjectName,"caption",myopdata[1]
Return 0
ENDIF
IF myopcode = 52
DO setproperty WITH MyOpWinName,MyOpObjectName,"row",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 53
DO setproperty WITH MyOpWinName,MyOpObjectName,"col",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 54
DO setproperty WITH MyOpWinName,MyOpObjectName,"width",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 55
DO setproperty WITH MyOpWinName,MyOpObjectName,"height",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 56
vmax  = LEN(MyOpObjsMap)
FOR x = vmax TO 1 STEP -1
IF MyOpObjsMap[x][1] = "button"
IF lower(alltrim(MyOpObjsMap[x][2])) == lower(alltrim(MyOpObjectName))
MyOpObjsMap[x][3] := MyOpData[1]
Exit
ENDIF
ENDIF
Next
Return 0
ENDIF
IF myopcode = 57
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontname",myopdata[1]
Return 0
ENDIF
IF myopcode = 58
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontsize",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 59
acolor := RT_CheckColor(myopdata[1])
acolor := &acolor
DO setproperty WITH MyOpWinName,MyOpObjectName,"forecolor",acolor
Return 0
ENDIF
IF myopcode = 60
acolor := RT_CheckColor(myopdata[1])
acolor := &acolor
DO setproperty WITH MyOpWinName,MyOpObjectName,"backcolor",acolor
Return 0
ENDIF
IF myopcode = 61
VarValue := lower(alltrim(myopdata[1]))
IF VarValue = "true" .or. VarValue = "1"
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontbold",.T.
ELSE
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontbold",.F.
ENDIF
Return 0
ENDIF
IF myopcode = 62
VarValue := lower(alltrim(myopdata[1]))
IF VarValue = "true" .or. VarValue = "1"
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontitalic",.T.
ELSE
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontitalic",.F.
ENDIF
Return 0
ENDIF
IF myopcode = 63
VarValue := lower(alltrim(myopdata[1]))
IF VarValue = "true" .or. VarValue = "1"
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontunderline",.T.
ELSE
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontunderline",.F.
ENDIF
Return 0
ENDIF
IF myopcode = 64
VarValue := lower(alltrim(myopdata[1]))
IF VarValue = "true" .or. VarValue = "1"
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontstrickout",.T.
ELSE
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontstrickout",.F.
ENDIF
Return 0
ENDIF
IF myopcode = 65
DO setproperty WITH MyOpWinName,MyOpObjectName,"picture",myopdata[1]
Return 0
ENDIF
IF myopcode = 66
DO RT_SelectObject WITH 1,"button"
Return 0
ENDIF
IF myopcode = 67
DO RT_ReadExpr WITH myopdata[1],"RightSide"
VARVALUE = RT_GetExprValue ( RT_RS_DATA )
DO setproperty WITH MyOpWinName,MyOpObjectName,"caption",varvalue
Return 0
ENDIF
IF myopcode = 68
myvalue = GetProperty ( myopwinname,myopobjectname,"caption" )
DO RT_SetVarValue WITH myopdata[1],myvalue
Return 0
ENDIF
DO RT_GUIDIM WITH 69,MyOpObjectName
ENDIF
IF myopcode >= 100 .and. myopcode <= 127
oldvalue := MyOpObjectName
MyOpObjectName := ObjSelArray[2]
IF myopcode != 100 .and. myopcode != 115 .and. myopcode != 116
IF myopwinname = "NULL"
DO RTE_AddError WITH 11
ENDIF
IF myopobjectname = "NULL"
DO RTE_AddError WITH 12
ENDIF
DO RTE_Check
ENDIF
IF myopcode = 100
ObjsCount := ObjsCount+1
cobjscount = STR ( Objscount )
cobjscount = ALLTRIM ( cobjscount )
cobjname := "obj_"+cobjscount
MyOpObjectName := cobjname
mymouseclickblock := "RT_DoEvent('label','" + cobjname+"','mouseclick')"
IF initpara1 = "true"
@ 10 ,10 LABEL &cobjname ;
PARENT &myopwinname ;
VALUE "" ;
ACTION &mymouseclickblock  ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
ELSE
@ 10 ,10 LABEL &cobjname ;
PARENT &myopwinname ;
VALUE "" ;
ACTION &mymouseclickblock  ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
ENDIF
AADD( MyOpObjsMap , {"label",cobjname,"NULL","NOEVENTS",myopwinname})
ObjSelArray[2] := MyOpObjectName
Return 0
ENDIF
IF myopcode = 101
DO setproperty WITH MyOpWinName,MyOpObjectName,"caption",myopdata[1]
Return 0
ENDIF
IF myopcode = 102
DO setproperty WITH MyOpWinName,MyOpObjectName,"row",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 103
DO setproperty WITH MyOpWinName,MyOpObjectName,"col",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 104
DO setproperty WITH MyOpWinName,MyOpObjectName,"width",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 105
DO setproperty WITH MyOpWinName,MyOpObjectName,"height",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 106
vmax  = LEN(MyOpObjsMap)
FOR x = vmax TO 1 STEP -1
IF MyOpObjsMap[x][1] = "label"
IF lower(alltrim(MyOpObjsMap[x][2])) == lower(alltrim(MyOpObjectName))
MyOpObjsMap[x][3] := MyOpData[1]
Exit
ENDIF
ENDIF
Next
Return 0
ENDIF
IF myopcode = 107
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontname",myopdata[1]
Return 0
ENDIF
IF myopcode = 108
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontsize",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 109
acolor := RT_CheckColor(myopdata[1])
acolor := &acolor
DO setproperty WITH MyOpWinName,MyOpObjectName,"forecolor",acolor
Return 0
ENDIF
IF myopcode = 110
acolor := RT_CheckColor(myopdata[1])
acolor := &acolor
DO setproperty WITH MyOpWinName,MyOpObjectName,"backcolor",acolor
Return 0
ENDIF
IF myopcode = 111
VarValue := lower(alltrim(myopdata[1]))
IF VarValue = "true" .or. VarValue = "1"
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontbold",.T.
ELSE
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontbold",.F.
ENDIF
Return 0
ENDIF
IF myopcode = 112
VarValue := lower(alltrim(myopdata[1]))
IF VarValue = "true" .or. VarValue = "1"
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontitalic",.T.
ELSE
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontitalic",.F.
ENDIF
Return 0
ENDIF
IF myopcode = 113
VarValue := lower(alltrim(myopdata[1]))
IF VarValue = "true" .or. VarValue = "1"
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontunderline",.T.
ELSE
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontunderline",.F.
ENDIF
Return 0
ENDIF
IF myopcode = 114
VarValue := lower(alltrim(myopdata[1]))
IF VarValue = "true" .or. VarValue = "1"
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontstrickout",.T.
ELSE
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontstrickout",.F.
ENDIF
Return 0
ENDIF
IF myopcode = 115
initpara1 := "true"
Return 0
ENDIF
IF myopcode = 116
initpara1 := "FALSE"
Return 0
ENDIF
IF myopcode = 117
DO RT_SelectObject WITH 2,"label"
Return 0
ENDIF
IF myopcode = 118
DO RT_ReadExpr WITH myopdata[1],"RightSide"
VARVALUE = RT_GetExprValue ( RT_RS_DATA )
DO setproperty WITH MyOpWinName,MyOpObjectName,"caption",varvalue
Return 0
ENDIF
IF myopcode = 119
myvalue = GetProperty ( myopwinname,myopobjectname,"caption" )
DO RT_SetVarValue WITH myopdata[1],myvalue
Return 0
ENDIF
DO RT_GUIDIM WITH 120,MyOpObjectName
ENDIF
IF myopcode >= 150 .and. myopcode <= 157
oldvalue := MyOpObjectName
MyOpObjectName := ObjSelArray[3]
IF myopcode != 150
IF myopwinname = "NULL"
DO RTE_AddError WITH 11
ENDIF
IF myopobjectname = "NULL"
DO RTE_AddError WITH 12
ENDIF
DO RTE_Check
ENDIF
IF myopcode = 150
ObjsCount := ObjsCount+1
cobjscount = STR ( Objscount )
cobjscount = ALLTRIM ( cobjscount )
cobjname := "obj_"+cobjscount
MyOpObjectName := cobjname
mymouseclickblock := "RT_DoEvent('picture','" + cobjname+"','mouseclick')"
@ 10 ,10 IMAGE &cobjname;
PARENT  &myopwinname ;
PICTURE "";
ON CLICK &mymouseclickblock  ;
WIDTH 100 HEIGHT 100
AADD( MyOpObjsMap , {"picture",cobjname,"NULL","NOEVENTS",myopwinname})
ObjSelArray[3] := MyOpObjectName
Return 0
ENDIF
IF myopcode = 151
DO setproperty WITH MyOpWinName,MyOpObjectName,"picture",myopdata[1]
Return 0
ENDIF
IF myopcode = 152
DO setproperty WITH MyOpWinName,MyOpObjectName,"row",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 153
DO setproperty WITH MyOpWinName,MyOpObjectName,"col",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 154
DO setproperty WITH MyOpWinName,MyOpObjectName,"width",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 155
DO setproperty WITH MyOpWinName,MyOpObjectName,"height",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 156
vmax  = LEN(MyOpObjsMap)
FOR x = vmax TO 1 STEP -1
IF MyOpObjsMap[x][1] = "image"
IF lower(alltrim(MyOpObjsMap[x][2])) == lower(alltrim(MyOpObjectName))
MyOpObjsMap[x][3] := MyOpData[1]
Exit
ENDIF
ENDIF
Next
Return 0
ENDIF
IF myopcode = 157
DO RT_SelectObject WITH 3,"picture"
Return 0
ENDIF
ENDIF
IF myopcode >= 200 .and. myopcode <= 217
oldvalue := MyOpObjectName
MyOpObjectName := ObjSelArray[4]
IF myopcode != 200
IF myopwinname = "NULL"
DO RTE_AddError WITH 11
ENDIF
IF myopobjectname = "NULL"
DO RTE_AddError WITH 12
ENDIF
DO RTE_Check
ENDIF
IF myopcode = 200
ObjsCount := ObjsCount+1
cobjscount = STR ( Objscount )
cobjscount = ALLTRIM ( cobjscount )
cobjname := "obj_"+cobjscount
MyOpObjectName := cobjname
mygotfocusblock := "RT_DoEvent('textbox','" + cobjname+"','gotfocus')"
mylostfocusblock := "RT_DoEvent('textbox','" + cobjname+"','lostfocus')"
mychangeblock := "RT_DoEvent('textbox','" + cobjname+"','change')"
myenterblock := "RT_DoEvent('textbox','" + cobjname+"','enter')"
@ 10 ,10 TEXTBOX &cobjname;
ON GOTFOCUS &mygotfocusblock  ;
ON LOSTFOCUS &mylostfocusblock  ;
ON CHANGE &mychangeblock  ;
ON ENTER &myenterblock  ;
PARENT &myopwinname ;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
AADD( MyOpObjsMap , {"textbox",cobjname,"NULL","NOEVENTS",myopwinname})
ObjSelArray[4] := MyOpObjectName
Return 0
ENDIF
IF myopcode = 201
DO setproperty WITH MyOpWinName,MyOpObjectName,"value",myopdata[1]
Return 0
ENDIF
IF myopcode = 202
DO setproperty WITH MyOpWinName,MyOpObjectName,"row",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 203
DO setproperty WITH MyOpWinName,MyOpObjectName,"col",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 204
DO setproperty WITH MyOpWinName,MyOpObjectName,"width",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 205
DO setproperty WITH MyOpWinName,MyOpObjectName,"height",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 206
vmax  = LEN(MyOpObjsMap)
FOR x = vmax TO 1 STEP -1
IF MyOpObjsMap[x][1] = "textbox"
IF lower(alltrim(MyOpObjsMap[x][2])) == lower(alltrim(MyOpObjectName))
MyOpObjsMap[x][3] := MyOpData[1]
Exit
ENDIF
ENDIF
Next
Return 0
ENDIF
IF myopcode = 207
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontname",myopdata[1]
Return 0
ENDIF
IF myopcode = 208
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontsize",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 209
acolor := RT_CheckColor(myopdata[1])
acolor := &acolor
DO setproperty WITH MyOpWinName,MyOpObjectName,"forecolor",acolor
Return 0
ENDIF
IF myopcode = 210
acolor := RT_CheckColor(myopdata[1])
acolor := &acolor
DO setproperty WITH MyOpWinName,MyOpObjectName,"backcolor",acolor
Return 0
ENDIF
IF myopcode = 211
VarValue := lower(alltrim(myopdata[1]))
IF VarValue = "true" .or. VarValue = "1"
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontbold",.T.
ELSE
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontbold",.F.
ENDIF
Return 0
ENDIF
IF myopcode = 212
VarValue := lower(alltrim(myopdata[1]))
IF VarValue = "true" .or. VarValue = "1"
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontitalic",.T.
ELSE
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontitalic",.F.
ENDIF
Return 0
ENDIF
IF myopcode = 213
VarValue := lower(alltrim(myopdata[1]))
IF VarValue = "true" .or. VarValue = "1"
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontunderline",.T.
ELSE
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontunderline",.F.
ENDIF
Return 0
ENDIF
IF myopcode = 214
VarValue := lower(alltrim(myopdata[1]))
IF VarValue = "true" .or. VarValue = "1"
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontstrickout",.T.
ELSE
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontstrickout",.F.
ENDIF
Return 0
ENDIF
IF myopcode = 215
DO RT_SelectObject WITH 4,"textbox"
Return 0
ENDIF
IF myopcode = 216
DO RT_ReadExpr WITH myopdata[1],"RightSide"
VARVALUE = RT_GetExprValue ( RT_RS_DATA )
DO setproperty WITH MyOpWinName,MyOpObjectName,"value",varvalue
Return 0
ENDIF
IF myopcode = 217
myvalue = GetProperty ( myopwinname,MyOpObjectName,"value" )
DO RT_SetVarValue WITH myopdata[1],myvalue
Return 0
ENDIF
ENDIF
IF myopcode >= 250 .and. myopcode <= 275
oldvalue := MyOpObjectName
MyOpObjectName := ObjSelArray[5]
IF myopcode != 250
IF myopwinname = "NULL"
DO RTE_AddError WITH 11
ENDIF
IF myopobjectname = "NULL"
DO RTE_AddError WITH 12
ENDIF
DO RTE_Check
ENDIF
IF myopcode = 250
ObjsCount := ObjsCount+1
cobjscount = STR ( Objscount )
cobjscount = ALLTRIM ( cobjscount )
cobjname := "obj_"+cobjscount
MyOpObjectName := cobjname
mygotfocusblock := "RT_DoEvent('editbox','" + cobjname+"','gotfocus')"
mylostfocusblock := "RT_DoEvent('editbox','" + cobjname+"','lostfocus')"
mychangeblock := "RT_DoEvent('editbox','" + cobjname+"','change')"
@ 10 ,10 EDITBOX &cobjname;
ON GOTFOCUS &mygotfocusblock  ;
ON LOSTFOCUS &mylostfocusblock  ;
ON CHANGE &mychangeblock  ;
PARENT &myopwinname ;
WIDTH 200 ;
HEIGHT 200;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
AADD( MyOpObjsMap , {"editbox",cobjname,"NULL","NOEVENTS",myopwinname})
ObjSelArray[5] := MyOpObjectName
Return 0
ENDIF
IF myopcode = 251
DO setproperty WITH MyOpWinName,MyOpObjectName,"value",myopdata[1]
Return 0
ENDIF
IF myopcode = 252
DO setproperty WITH MyOpWinName,MyOpObjectName,"row",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 253
DO setproperty WITH MyOpWinName,MyOpObjectName,"col",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 254
DO setproperty WITH MyOpWinName,MyOpObjectName,"width",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 255
DO setproperty WITH MyOpWinName,MyOpObjectName,"height",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 256
vmax  = LEN(MyOpObjsMap)
FOR x = vmax TO 1 STEP -1
IF MyOpObjsMap[x][1] = "editbox"
IF lower(alltrim(MyOpObjsMap[x][2])) == lower(alltrim(MyOpObjectName))
MyOpObjsMap[x][3] := MyOpData[1]
Exit
ENDIF
ENDIF
Next
Return 0
ENDIF
IF myopcode = 257
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontname",myopdata[1]
Return 0
ENDIF
IF myopcode = 258
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontsize",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 259
acolor := RT_CheckColor(myopdata[1])
acolor := &acolor
DO setproperty WITH MyOpWinName,MyOpObjectName,"forecolor",acolor
Return 0
ENDIF
IF myopcode = 260
acolor := RT_CheckColor(myopdata[1])
acolor := &acolor
DO setproperty WITH MyOpWinName,MyOpObjectName,"backcolor",acolor
Return 0
ENDIF
IF myopcode = 261
VarValue := lower(alltrim(myopdata[1]))
IF VarValue = "true" .or. VarValue = "1"
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontbold",.T.
ELSE
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontbold",.F.
ENDIF
Return 0
ENDIF
IF myopcode = 262
VarValue := lower(alltrim(myopdata[1]))
IF VarValue = "true" .or. VarValue = "1"
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontitalic",.T.
ELSE
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontitalic",.F.
ENDIF
Return 0
ENDIF
IF myopcode = 263
VarValue := lower(alltrim(myopdata[1]))
IF VarValue = "true" .or. VarValue = "1"
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontunderline",.T.
ELSE
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontunderline",.F.
ENDIF
Return 0
ENDIF
IF myopcode = 264
VarValue := lower(alltrim(myopdata[1]))
IF VarValue = "true" .or. VarValue = "1"
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontstrickout",.T.
ELSE
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontstrickout",.F.
ENDIF
Return 0
ENDIF
IF myopcode = 265
DO RT_SelectObject WITH 5,"editbox"
Return 0
ENDIF
IF myopcode = 266
DO RT_ReadExpr WITH myopdata[1],"RightSide"
VARVALUE = RT_GetExprValue ( RT_RS_DATA )
DO setproperty WITH MyOpWinName,MyOpObjectName,"value",varvalue
Return 0
ENDIF
IF myopcode = 267
myvalue = GetProperty ( myopwinname,MyOpObjectName,"value" )
DO RT_SetVarValue WITH myopdata[1],myvalue
Return 0
ENDIF
DO RT_GUIDIM WITH 268,MyOpObjectName
ENDIF
IF myopcode >= 300 .and. myopcode <= 319
oldvalue := MyOpObjectName
MyOpObjectName := ObjSelArray[6]
IF myopcode != 300
IF myopwinname = "NULL"
DO RTE_AddError WITH 11
ENDIF
IF myopobjectname = "NULL"
DO RTE_AddError WITH 12
ENDIF
DO RTE_Check
ENDIF
IF myopcode = 300
ObjsCount := ObjsCount+1
cobjscount = STR ( Objscount )
cobjscount = ALLTRIM ( cobjscount )
cobjname := "obj_"+cobjscount
MyOpObjectName := cobjname
mygotfocusblock := "RT_DoEvent('listbox','" + cobjname+"','gotfocus')"
mylostfocusblock := "RT_DoEvent('listbox','" + cobjname+"','lostfocus')"
mychangeblock := "RT_DoEvent('listbox','" + cobjname+"','change')"
mydblclickblock := "RT_DoEvent('listbox','" + cobjname+"','doubleclick')"
@ 10 ,10 LISTBOX &cobjname;
ON GOTFOCUS &mygotfocusblock  ;
ON LOSTFOCUS &mylostfocusblock  ;
ON CHANGE &mychangeblock  ;
ON DBLCLICK &mydblclickblock  ;
PARENT  &myopwinname ;
WIDTH 200 ;
HEIGHT 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
AADD( MyOpObjsMap , {"listbox",cobjname,"NULL","NOEVENTS",myopwinname})
ObjSelArray[6] := MyOpObjectName
Return 0
ENDIF
IF myopcode = 301
DO setproperty WITH MyOpWinName,MyOpObjectName,"value",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 302
DO setproperty WITH MyOpWinName,MyOpObjectName,"row",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 303
DO setproperty WITH MyOpWinName,MyOpObjectName,"col",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 304
DO setproperty WITH MyOpWinName,MyOpObjectName,"width",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 305
DO setproperty WITH MyOpWinName,MyOpObjectName,"height",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 306
vmax  = LEN(MyOpObjsMap)
FOR x = vmax TO 1 STEP -1
IF MyOpObjsMap[x][1] = "listbox"
IF lower(alltrim(MyOpObjsMap[x][2])) == lower(alltrim(MyOpObjectName))
MyOpObjsMap[x][3] := MyOpData[1]
Exit
ENDIF
ENDIF
Next
Return 0
ENDIF
IF myopcode = 307
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontname",myopdata[1]
Return 0
ENDIF
IF myopcode = 308
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontsize",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 309
acolor := RT_CheckColor(myopdata[1])
acolor := &acolor
DO setproperty WITH MyOpWinName,MyOpObjectName,"forecolor",acolor
Return 0
ENDIF
IF myopcode = 310
acolor := RT_CheckColor(myopdata[1])
acolor := &acolor
DO setproperty WITH MyOpWinName,MyOpObjectName,"backcolor",acolor
Return 0
ENDIF
IF myopcode = 311
VarValue := lower(alltrim(myopdata[1]))
IF VarValue = "true" .or. VarValue = "1"
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontbold",.T.
ELSE
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontbold",.F.
ENDIF
Return 0
ENDIF
IF myopcode = 312
VarValue := lower(alltrim(myopdata[1]))
IF VarValue = "true" .or. VarValue = "1"
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontitalic",.T.
ELSE
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontitalic",.F.
ENDIF
Return 0
ENDIF
IF myopcode = 313
VarValue := lower(alltrim(myopdata[1]))
IF VarValue = "true" .or. VarValue = "1"
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontunderline",.T.
ELSE
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontunderline",.F.
ENDIF
Return 0
ENDIF
IF myopcode = 314
VarValue := lower(alltrim(myopdata[1]))
IF VarValue = "true" .or. VarValue = "1"
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontstrickout",.T.
ELSE
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontstrickout",.F.
ENDIF
Return 0
ENDIF
IF myopcode = 315
DO RT_SelectObject WITH 6,"listbox"
Return 0
ENDIF
IF myopcode = 316
DO domethod WITH MyOpWinName,MyOpObjectName,"additem",myopdata[1]
Return 0
ENDIF
IF myopcode = 317
DO RT_ReadExpr WITH myopdata[1],"RightSide"
VARVALUE = RT_GetExprValue ( RT_RS_DATA )
DO domethod WITH MyOpWinName,MyOpObjectName,"additem",varvalue
Return 0
ENDIF
IF myopcode = 318
DO RT_ReadExpr WITH myopdata[1],"RightSide"
VARVALUE = RT_GetExprValue ( RT_RS_DATA )
DO setproperty WITH MyOpWinName,MyOpObjectName,"value",val(varvalue)
Return 0
ENDIF
IF myopcode = 319
myvalue = GetProperty ( myopwinname,myopobjectname,"value" )
DO RT_SetVarValue WITH myopdata[1],alltrim(str(myvalue))
Return 0
ENDIF
ENDIF
IF myopcode >= 350 .and. myopcode <= 369
oldvalue := MyOpObjectName
MyOpObjectName := ObjSelArray[7]
IF myopcode != 350
IF myopwinname = "NULL"
DO RTE_AddError WITH 11
ENDIF
IF myopobjectname = "NULL"
DO RTE_AddError WITH 12
ENDIF
DO RTE_Check
ENDIF
IF myopcode = 350
ObjsCount := ObjsCount+1
cobjscount = STR ( Objscount )
cobjscount = ALLTRIM ( cobjscount )
cobjname := "obj_"+cobjscount
MyOpObjectName := cobjname
mygotfocusblock := "RT_DoEvent('combobox','" + cobjname+"','gotfocus')"
mylostfocusblock := "RT_DoEvent('combobox','" + cobjname+"','lostfocus')"
mychangeblock := "RT_DoEvent('combobox','" + cobjname+"','change')"
@ 10 ,10 COMBOBOX &cobjname;
ON GOTFOCUS &mygotfocusblock  ;
ON LOSTFOCUS &mylostfocusblock  ;
ON CHANGE &mychangeblock  ;
PARENT &myopwinname ;
WIDTH 100 ;
HEIGHT 30;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
AADD( MyOpObjsMap , {"combobox",cobjname,"NULL","NOEVENTS",myopwinname})
ObjSelArray[7] := MyOpObjectName
Return 0
ENDIF
IF myopcode = 351
DO setproperty WITH MyOpWinName,MyOpObjectName,"value",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 352
DO setproperty WITH MyOpWinName,MyOpObjectName,"row",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 353
DO setproperty WITH MyOpWinName,MyOpObjectName,"col",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 354
DO setproperty WITH MyOpWinName,MyOpObjectName,"width",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 355
DO setproperty WITH MyOpWinName,MyOpObjectName,"height",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 356
vmax  = LEN(MyOpObjsMap)
FOR x = vmax TO 1 STEP -1
IF MyOpObjsMap[x][1] = "combobox"
IF lower(alltrim(MyOpObjsMap[x][2])) == lower(alltrim(MyOpObjectName))
MyOpObjsMap[x][3] := MyOpData[1]
Exit
ENDIF
ENDIF
Next
Return 0
ENDIF
IF myopcode = 357
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontname",myopdata[1]
Return 0
ENDIF
IF myopcode = 358
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontsize",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 359
acolor := RT_CheckColor(myopdata[1])
acolor := &acolor
DO setproperty WITH MyOpWinName,MyOpObjectName,"forecolor",acolor
Return 0
ENDIF
IF myopcode = 360
acolor := RT_CheckColor(myopdata[1])
acolor := &acolor
DO setproperty WITH MyOpWinName,MyOpObjectName,"backcolor",acolor
Return 0
ENDIF
IF myopcode = 361
VarValue := lower(alltrim(myopdata[1]))
IF VarValue = "true" .or. VarValue = "1"
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontbold",.T.
ELSE
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontbold",.F.
ENDIF
Return 0
ENDIF
IF myopcode = 362
VarValue := lower(alltrim(myopdata[1]))
IF VarValue = "true" .or. VarValue = "1"
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontitalic",.T.
ELSE
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontitalic",.F.
ENDIF
Return 0
ENDIF
IF myopcode = 363
VarValue := lower(alltrim(myopdata[1]))
IF VarValue = "true" .or. VarValue = "1"
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontunderline",.T.
ELSE
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontunderline",.F.
ENDIF
Return 0
ENDIF
IF myopcode = 364
VarValue := lower(alltrim(myopdata[1]))
IF VarValue = "true" .or. VarValue = "1"
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontstrickout",.T.
ELSE
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontstrickout",.F.
ENDIF
Return 0
ENDIF
IF myopcode = 365
DO RT_SelectObject WITH 7,"combobox"
Return 0
ENDIF
IF myopcode = 366
DO domethod WITH MyOpWinName,MyOpObjectName,"additem",myopdata[1]
Return 0
ENDIF
IF myopcode = 367
DO RT_ReadExpr WITH myopdata[1],"RightSide"
VARVALUE = RT_GetExprValue ( RT_RS_DATA )
DO domethod WITH MyOpWinName,MyOpObjectName,"additem",varvalue
Return 0
ENDIF
IF myopcode = 368
DO RT_ReadExpr WITH myopdata[1],"RightSide"
VARVALUE = RT_GetExprValue ( RT_RS_DATA )
DO setproperty WITH MyOpWinName,MyOpObjectName,"value",val(varvalue)
Return 0
ENDIF
IF myopcode = 369
myvalue = GetProperty ( myopwinname,myopobjectname,"value" )
DO RT_SetVarValue WITH myopdata[1],alltrim(str(myvalue))
Return 0
ENDIF
ENDIF
IF myopcode >= 400 .and. myopcode <= 416
oldvalue := MyOpObjectName
MyOpObjectName := ObjSelArray[8]
IF myopcode != 400
IF myopwinname = "NULL"
DO RTE_AddError WITH 11
ENDIF
IF myopobjectname = "NULL"
DO RTE_AddError WITH 12
ENDIF
DO RTE_Check
ENDIF
IF myopcode = 400
ObjsCount := ObjsCount+1
cobjscount = STR ( Objscount )
cobjscount = ALLTRIM ( cobjscount )
cobjname := "obj_"+cobjscount
MyOpObjectName := cobjname
mygotfocusblock := "RT_DoEvent('checkbox','" + cobjname+"','gotfocus')"
mylostfocusblock := "RT_DoEvent('checkbox','" + cobjname+"','lostfocus')"
mychangeblock := "RT_DoEvent('checkbox','" + cobjname+"','change')"
@ 10 ,10 CHECKBOX &cobjname;
PARENT &myopwinname ;
CAPTION "No Caption";
ON GOTFOCUS &mygotfocusblock  ;
ON LOSTFOCUS &mylostfocusblock  ;
ON CHANGE &mychangeblock  ;
WIDTH 100;
Height 30;
VALUE false ;
FONT "arial" SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
AADD( MyOpObjsMap , {"checkbox",cobjname,"NULL","NOEVENTS",myopwinname})
ObjSelArray[8] := MyOpObjectName
Return 0
ENDIF
IF myopcode = 401
avalue := myopdata[1]
IF lower(alltrim(avalue)) == "true" .or. alltrim(avalue) == "1"
DO setproperty WITH MyOpWinName,MyOpObjectName,"value",true
ELSE
DO setproperty WITH MyOpWinName,MyOpObjectName,"value",false
ENDIF
Return 0
ENDIF
IF myopcode = 402
DO setproperty WITH MyOpWinName,MyOpObjectName,"row",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 403
DO setproperty WITH MyOpWinName,MyOpObjectName,"col",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 404
DO setproperty WITH MyOpWinName,MyOpObjectName,"width",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 405
DO setproperty WITH MyOpWinName,MyOpObjectName,"height",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 406
vmax  = LEN(MyOpObjsMap)
FOR x = vmax TO 1 STEP -1
IF MyOpObjsMap[x][1] = "checkbox"
IF lower(alltrim(MyOpObjsMap[x][2])) == lower(alltrim(MyOpObjectName))
MyOpObjsMap[x][3] := MyOpData[1]
Exit
ENDIF
ENDIF
Next
Return 0
ENDIF
IF myopcode = 407
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontname",myopdata[1]
Return 0
ENDIF
IF myopcode = 408
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontsize",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 409
acolor := RT_CheckColor(myopdata[1])
acolor := &acolor
DO setproperty WITH MyOpWinName,MyOpObjectName,"forecolor",acolor
Return 0
ENDIF
IF myopcode = 410
acolor := RT_CheckColor(myopdata[1])
acolor := &acolor
DO setproperty WITH MyOpWinName,MyOpObjectName,"backcolor",acolor
Return 0
ENDIF
IF myopcode = 411
VarValue := lower(alltrim(myopdata[1]))
IF VarValue = "true" .or. VarValue = "1"
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontbold",.T.
ELSE
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontbold",.F.
ENDIF
Return 0
ENDIF
IF myopcode = 412
VarValue := lower(alltrim(myopdata[1]))
IF VarValue = "true" .or. VarValue = "1"
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontitalic",.T.
ELSE
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontitalic",.F.
ENDIF
Return 0
ENDIF
IF myopcode = 413
VarValue := lower(alltrim(myopdata[1]))
IF VarValue = "true" .or. VarValue = "1"
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontunderline",.T.
ELSE
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontunderline",.F.
ENDIF
Return 0
ENDIF
IF myopcode = 414
VarValue := lower(alltrim(myopdata[1]))
IF VarValue = "true" .or. VarValue = "1"
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontstrickout",.T.
ELSE
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontstrickout",.F.
ENDIF
Return 0
ENDIF
IF myopcode = 415
DO RT_SelectObject WITH 8,"checkbox"
Return 0
ENDIF
IF myopcode = 416
DO setproperty WITH MyOpWinName,MyOpObjectName,"caption",myopdata[1]
Return 0
ENDIF
ENDIF
IF myopcode >= 450 .and. myopcode <= 461
oldvalue := MyOpObjectName
MyOpObjectName := ObjSelArray[9]
IF myopcode != 450
IF myopwinname = "NULL"
DO RTE_AddError WITH 11
ENDIF
IF myopobjectname = "NULL"
DO RTE_AddError WITH 12
ENDIF
DO RTE_Check
ENDIF
IF myopcode = 450
ObjsCount := ObjsCount+1
cobjscount = STR ( Objscount )
cobjscount = ALLTRIM ( cobjscount )
cobjname := "obj_"+cobjscount
MyOpObjectName := cobjname
@ 10 ,10 PROGRESSBAR &cobjname;
PARENT &myopwinname ;
RANGE 0 , 100 ;
WIDTH 100 ;
HEIGHT 30 ;
SMOOTH ;
BACKCOLOR {255,255,255} ;
FORECOLOR {64,0,64} ;
TOOLTIP ""
AADD( MyOpObjsMap , {"progressbar",cobjname,"NULL","NOEVENTS",myopwinname})
ObjSelArray[9] := MyOpObjectName
Return 0
ENDIF
IF myopcode = 451
avalue := myopdata[1]
avalue := &avalue
DO setproperty WITH MyOpWinName,MyOpObjectName,"value",avalue
Return 0
ENDIF
IF myopcode = 452
DO setproperty WITH MyOpWinName,MyOpObjectName,"row",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 453
DO setproperty WITH MyOpWinName,MyOpObjectName,"col",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 454
DO setproperty WITH MyOpWinName,MyOpObjectName,"width",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 455
DO setproperty WITH MyOpWinName,MyOpObjectName,"height",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 456
vmax  = LEN(MyOpObjsMap)
FOR x = vmax TO 1 STEP -1
IF MyOpObjsMap[x][1] = "progressbar"
IF lower(alltrim(MyOpObjsMap[x][2])) == lower(alltrim(MyOpObjectName))
MyOpObjsMap[x][3] := MyOpData[1]
Exit
ENDIF
ENDIF
Next
Return 0
ENDIF
IF myopcode = 457
DO RT_SelectObject WITH 9,"progressbar"
Return 0
ENDIF
IF myopcode = 458
DO setproperty WITH MyOpWinName,MyOpObjectName,"rangemin",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 459
DO setproperty WITH MyOpWinName,MyOpObjectName,"rangemax",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 460
acolor := RT_CheckColor(myopdata[1])
acolor := &acolor
DO setproperty WITH MyOpWinName,MyOpObjectName,"forecolor",acolor
Return 0
ENDIF
IF myopcode = 461
acolor := RT_CheckColor(myopdata[1])
acolor := &acolor
DO setproperty WITH MyOpWinName,MyOpObjectName,"backcolor",acolor
Return 0
ENDIF
ENDIF
IF myopcode >= 500 .and. myopcode <= 510
oldvalue := MyOpObjectName
MyOpObjectName := ObjSelArray[10]
IF myopcode != 500
IF myopwinname = "NULL"
DO RTE_AddError WITH 11
ENDIF
IF myopobjectname = "NULL"
DO RTE_AddError WITH 12
ENDIF
DO RTE_Check
ENDIF
IF myopcode = 500
ObjsCount := ObjsCount+1
cobjscount = STR ( Objscount )
cobjscount = ALLTRIM ( cobjscount )
cobjname := "obj_"+cobjscount
MyOpObjectName := cobjname
mychangeblock := "RT_DoEvent('slider','" + cobjname+"','change')"
myscrollblock := "RT_DoEvent('slider','" + cobjname+"','scroll')"
@ 10 ,10 SLIDER &cobjname;
PARENT &myopwinname ;
RANGE 1 , 100;
ON Change &mychangeblock  ;
ON Scroll &myscrollblock  ;
WIDTH 100 ;
HEIGHT 50 ;
BACKCOLOR {236,233,216} ;
TOOLTIP "" 

AADD( MyOpObjsMap , {"slider",cobjname,"NULL","NOEVENTS",myopwinname})
ObjSelArray[10] := MyOpObjectName
Return 0
ENDIF
IF myopcode = 501
avalue := myopdata[1]
avalue := &avalue
DO setproperty WITH MyOpWinName,MyOpObjectName,"value",avalue
Return 0
ENDIF
IF myopcode = 502
DO setproperty WITH MyOpWinName,MyOpObjectName,"row",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 503
DO setproperty WITH MyOpWinName,MyOpObjectName,"col",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 504
DO setproperty WITH MyOpWinName,MyOpObjectName,"width",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 505
DO setproperty WITH MyOpWinName,MyOpObjectName,"height",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 506
vmax  = LEN(MyOpObjsMap)
FOR x = vmax TO 1 STEP -1
IF MyOpObjsMap[x][1] = "slider"
IF lower(alltrim(MyOpObjsMap[x][2])) == lower(alltrim(MyOpObjectName))
MyOpObjsMap[x][3] := MyOpData[1]
Exit
ENDIF
ENDIF
Next
Return 0
ENDIF
IF myopcode = 507
DO RT_SelectObject WITH 10,"slider"
Return 0
ENDIF
IF myopcode = 508
DO setproperty WITH MyOpWinName,MyOpObjectName,"rangemin",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 509
DO setproperty WITH MyOpWinName,MyOpObjectName,"rangemax",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 510
acolor := RT_CheckColor(myopdata[1])
acolor := &acolor
DO setproperty WITH MyOpWinName,MyOpObjectName,"backcolor",acolor
Return 0
ENDIF
ENDIF
IF myopcode >= 550 .and. myopcode <= 565
oldvalue := MyOpObjectName
MyOpObjectName := ObjSelArray[11]
IF myopcode != 550
IF myopwinname = "NULL"
DO RTE_AddError WITH 11
ENDIF
IF myopobjectname = "NULL"
DO RTE_AddError WITH 12
ENDIF
DO RTE_Check
ENDIF
IF myopcode = 550
ObjsCount := ObjsCount+1
cobjscount = STR ( Objscount )
cobjscount = ALLTRIM ( cobjscount )
cobjname := "obj_"+cobjscount
MyOpObjectName := cobjname
mygotfocusblock := "RT_DoEvent('datepicker','" + cobjname+"','gotfocus')"
mylostfocusblock := "RT_DoEvent('datepicker','" + cobjname+"','lostfocus')"
mychangeblock := "RT_DoEvent('datepicker','" + cobjname+"','change')"
myenterblock := "RT_DoEvent('datepicker','" + cobjname+"','enter')"
@ 10 ,10 DATEPICKER &cobjname;
ON GOTFOCUS &mygotfocusblock  ;
ON CHANGE &mychangeblock  ;
ON LOSTFOCUS &mylostfocusblock  ;
ON Enter &myenterblock  ;
PARENT  &myopwinname ;
WIDTH 100 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
AADD( MyOpObjsMap , {"datepicker",cobjname,"NULL","NOEVENTS",myopwinname})
ObjSelArray[11] := MyOpObjectName
Return 0
ENDIF
IF myopcode = 551
avalue := myopdata[1]
avalue := ctod(avalue)
DO setproperty WITH MyOpWinName,MyOpObjectName,"value",avalue
Return 0
ENDIF
IF myopcode = 552
DO setproperty WITH MyOpWinName,MyOpObjectName,"row",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 553
DO setproperty WITH MyOpWinName,MyOpObjectName,"col",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 554
DO setproperty WITH MyOpWinName,MyOpObjectName,"width",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 555
DO setproperty WITH MyOpWinName,MyOpObjectName,"height",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 556
vmax  = LEN(MyOpObjsMap)
FOR x = vmax TO 1 STEP -1
IF MyOpObjsMap[x][1] = "datepicker"
IF lower(alltrim(MyOpObjsMap[x][2])) == lower(alltrim(MyOpObjectName))
MyOpObjsMap[x][3] := MyOpData[1]
Exit
ENDIF
ENDIF
Next
Return 0
ENDIF
IF myopcode = 557
DO RT_SelectObject WITH 11,"datepicker"
Return 0
ENDIF
IF myopcode = 558
acolor := RT_CheckColor(myopdata[1])
acolor := &acolor
DO setproperty WITH MyOpWinName,MyOpObjectName,"forecolor",acolor
Return 0
ENDIF
IF myopcode = 559
acolor := RT_CheckColor(myopdata[1])
acolor := &acolor
DO setproperty WITH MyOpWinName,MyOpObjectName,"backcolor",acolor
Return 0
ENDIF
IF myopcode = 560
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontname",myopdata[1]
Return 0
ENDIF
IF myopcode = 561
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontsize",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 562
VarValue := lower(alltrim(myopdata[1]))
IF VarValue = "true" .or. VarValue = "1"
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontbold",.T.
ELSE
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontbold",.F.
ENDIF
Return 0
ENDIF
IF myopcode = 563
VarValue := lower(alltrim(myopdata[1]))
IF VarValue = "true" .or. VarValue = "1"
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontitalic",.T.
ELSE
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontitalic",.F.
ENDIF
Return 0
ENDIF
IF myopcode = 564
VarValue := lower(alltrim(myopdata[1]))
IF VarValue = "true" .or. VarValue = "1"
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontunderline",.T.
ELSE
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontunderline",.F.
ENDIF
Return 0
ENDIF
IF myopcode = 565
VarValue := lower(alltrim(myopdata[1]))
IF VarValue = "true" .or. VarValue = "1"
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontstrickout",.T.
ELSE
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontstrickout",.F.
ENDIF
Return 0
ENDIF
ENDIF
IF myopcode >= 600 .and. myopcode <= 617
oldvalue := MyOpObjectName
MyOpObjectName := ObjSelArray[12]
IF myopcode != 600
IF myopwinname = "NULL"
DO RTE_AddError WITH 11
ENDIF
IF myopobjectname = "NULL"
DO RTE_AddError WITH 12
ENDIF
DO RTE_Check
ENDIF
IF myopcode = 600
ObjsCount := ObjsCount+1
cobjscount = STR ( Objscount )
cobjscount = ALLTRIM ( cobjscount )
cobjname := "obj_"+cobjscount
MyOpObjectName := cobjname
mygotfocusblock := "RT_DoEvent('spinner','" + cobjname+"','gotfocus')"
mylostfocusblock := "RT_DoEvent('spinner','" + cobjname+"','lostfocus')"
mychangeblock := "RT_DoEvent('spinner','" + cobjname+"','change')"
@ 10 ,10 SPINNER &cobjname;
PARENT &myopwinname ;
RANGE 1 , 100;
ON GOTFOCUS &mygotfocusblock  ;
ON LOSTFOCUS &mylostfocusblock  ;
ON CHANGE &mychangeblock  ;
WIDTH 50 ;
HEIGHT 30 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
AADD( MyOpObjsMap , {"spinner",cobjname,"NULL","NOEVENTS",myopwinname})
ObjSelArray[12] := MyOpObjectName
Return 0
ENDIF
IF myopcode = 601
avalue := myopdata[1]
DO setproperty WITH MyOpWinName,MyOpObjectName,"value",val(avalue)
Return 0
ENDIF
IF myopcode = 602
DO setproperty WITH MyOpWinName,MyOpObjectName,"row",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 603
DO setproperty WITH MyOpWinName,MyOpObjectName,"col",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 604
DO setproperty WITH MyOpWinName,MyOpObjectName,"width",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 605
DO setproperty WITH MyOpWinName,MyOpObjectName,"height",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 606
vmax  = LEN(MyOpObjsMap)
FOR x = vmax TO 1 STEP -1
IF MyOpObjsMap[x][1] = "spinner"
IF lower(alltrim(MyOpObjsMap[x][2])) == lower(alltrim(MyOpObjectName))
MyOpObjsMap[x][3] := MyOpData[1]
Exit
ENDIF
ENDIF
Next
Return 0
ENDIF
IF myopcode = 607
DO RT_SelectObject WITH 12,"spinner"
Return 0
ENDIF
IF myopcode = 608
acolor := RT_CheckColor(myopdata[1])
acolor := &acolor
DO setproperty WITH MyOpWinName,MyOpObjectName,"forecolor",acolor
Return 0
ENDIF
IF myopcode = 609
acolor := RT_CheckColor(myopdata[1])
acolor := &acolor
DO setproperty WITH MyOpWinName,MyOpObjectName,"backcolor",acolor
Return 0
ENDIF
IF myopcode = 610
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontname",myopdata[1]
Return 0
ENDIF
IF myopcode = 611
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontsize",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 612
VarValue := lower(alltrim(myopdata[1]))
IF VarValue = "true" .or. VarValue = "1"
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontbold",.T.
ELSE
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontbold",.F.
ENDIF
Return 0
ENDIF
IF myopcode = 613
VarValue := lower(alltrim(myopdata[1]))
IF VarValue = "true" .or. VarValue = "1"
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontitalic",.T.
ELSE
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontitalic",.F.
ENDIF
Return 0
ENDIF
IF myopcode = 614
VarValue := lower(alltrim(myopdata[1]))
IF VarValue = "true" .or. VarValue = "1"
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontunderline",.T.
ELSE
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontunderline",.F.
ENDIF
Return 0
ENDIF
IF myopcode = 615
VarValue := lower(alltrim(myopdata[1]))
IF VarValue = "true" .or. VarValue = "1"
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontstrickout",.T.
ELSE
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontstrickout",.F.
ENDIF
Return 0
ENDIF
IF myopcode = 616
DO setproperty WITH MyOpWinName,MyOpObjectName,"rangemin",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 617
DO setproperty WITH MyOpWinName,MyOpObjectName,"rangemax",val(myopdata[1])
Return 0
ENDIF
ENDIF
IF myopcode >= 650 .and. myopcode <= 668
oldvalue := MyOpObjectName
MyOpObjectName := ObjSelArray[13]
IF myopcode != 650 .and. myopcode != 665 .and. myopcode != 666
IF myopwinname = "NULL"
DO RTE_AddError WITH 11
ENDIF
IF myopobjectname = "NULL"
DO RTE_AddError WITH 12
ENDIF
DO RTE_Check
ENDIF
IF myopcode = 650
ObjsCount := ObjsCount+1
cobjscount = STR ( Objscount )
cobjscount = ALLTRIM ( cobjscount )
cobjname := "obj_"+cobjscount
MyOpObjectName := cobjname
IF initpara1 = "true"
@ 10,10 HYPERLINK &cobjname;
OF &myopwinname ;
ADDRESS "http://www.google.com";
WIDTH 100 ;
HEIGHT 30 ;
FONT "arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255} ;
TRANSPARENT ;
HANDCURSOR 

ELSE
@ 10,10 HYPERLINK &cobjname;
OF &myopwinname ;
ADDRESS "http//www.google.com";
WIDTH 100 ;
HEIGHT 30 ;
FONT "arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,255} ;
HANDCURSOR 

ENDIF
AADD( MyOpObjsMap , {"hyperlink",cobjname,"NULL","NOEVENTS",myopwinname})
ObjSelArray[13] := MyOpObjectName
Return 0
ENDIF
IF myopcode = 651
DO setproperty WITH MyOpWinName,MyOpObjectName,"caption",myopdata[1]
Return 0
ENDIF
IF myopcode = 652
DO setproperty WITH MyOpWinName,MyOpObjectName,"row",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 653
DO setproperty WITH MyOpWinName,MyOpObjectName,"col",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 654
DO setproperty WITH MyOpWinName,MyOpObjectName,"width",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 655
DO setproperty WITH MyOpWinName,MyOpObjectName,"height",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 656
vmax  = LEN(MyOpObjsMap)
FOR x = vmax TO 1 STEP -1
IF MyOpObjsMap[x][1] = "hyperlink"
IF lower(alltrim(MyOpObjsMap[x][2])) == lower(alltrim(MyOpObjectName))
MyOpObjsMap[x][3] := MyOpData[1]
Exit
ENDIF
ENDIF
Next
Return 0
ENDIF
IF myopcode = 657
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontname",myopdata[1]
Return 0
ENDIF
IF myopcode = 658
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontsize",val(myopdata[1])
Return 0
ENDIF
IF myopcode = 659
acolor := RT_CheckColor(myopdata[1])
acolor := &acolor
DO setproperty WITH MyOpWinName,MyOpObjectName,"forecolor",acolor
Return 0
ENDIF
IF myopcode = 660
acolor := RT_CheckColor(myopdata[1])
acolor := &acolor
DO setproperty WITH MyOpWinName,MyOpObjectName,"backcolor",acolor
Return 0
ENDIF
IF myopcode = 661
VarValue := lower(alltrim(myopdata[1]))
IF VarValue = "true" .or. VarValue = "1"
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontbold",.T.
ELSE
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontbold",.F.
ENDIF
Return 0
ENDIF
IF myopcode = 662
VarValue := lower(alltrim(myopdata[1]))
IF VarValue = "true" .or. VarValue = "1"
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontitalic",.T.
ELSE
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontitalic",.F.
ENDIF
Return 0
ENDIF
IF myopcode = 663
VarValue := lower(alltrim(myopdata[1]))
IF VarValue = "true" .or. VarValue = "1"
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontunderline",.T.
ELSE
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontunderline",.F.
ENDIF
Return 0
ENDIF
IF myopcode = 664
VarValue := lower(alltrim(myopdata[1]))
IF VarValue = "true" .or. VarValue = "1"
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontstrickout",.T.
ELSE
DO setproperty WITH MyOpWinName,MyOpObjectName,"fontstrickout",.F.
ENDIF
Return 0
ENDIF
IF myopcode = 665
initpara1 := "true"
Return 0
ENDIF
IF myopcode = 666
initpara1 := "FALSE"
Return 0
ENDIF
IF myopcode = 667
DO RT_SelectObject WITH 13,"hyperlink"
Return 0
ENDIF
IF myopcode = 668
avalue := myopdata[1]
DO setproperty WITH MyOpWinName,MyOpObjectName,"address",avalue
Return 0
ENDIF
ENDIF
IF myopcode = 713
mylast  = LEN(RT_GUI_Statusbar)
FOR tempx = 1 TO mylast STEP 1
IF alltrim(RT_GUI_Statusbar[tempx][1]) == alltrim(myopwinname)
DEFINE STATUSBAR ;
PARENT &myopwinname 

mylast2  = LEN(RT_GUI_Statusbar[tempx][8])
FOR tempx2 = 1 TO mylast2 STEP 1
IF RT_GUI_Statusbar[tempx][8][tempx2][1] = 1
tempcaption := RT_GUI_Statusbar[tempx][8][tempx2][2]
STATUSITEM (tempcaption)

ENDIF
IF RT_GUI_Statusbar[tempx][8][tempx2][1] = 2
CLOCK

ENDIF
IF RT_GUI_Statusbar[tempx][8][tempx2][1] = 3
DATE

ENDIF
IF RT_GUI_Statusbar[tempx][8][tempx2][1] = 4
KEYBOARD

ENDIF
Next
END STATUSBAR

ENDIF
Next
Return 0
ENDIF
IF myopcode = 750
mylast  = LEN(RT_GUI_Menubar)
FOR tempx = 1 TO mylast STEP 1
IF RT_GUI_Menubar[tempx][1] == myopwinname
DEFINE MAIN MENU of &myopwinname
mylast2  = LEN(RT_GUI_Menubar[tempx][2])
IF mylast2 > 0
FOR tempx2 = 1 TO mylast2 STEP 1
POPUP RT_GUI_Menubar[tempx][2][tempx2][1]
mylast3  = LEN(RT_GUI_Menubar[tempx][2][tempx2][2])
IF mylast3 > 0
FOR tempx3 = 1 TO mylast3 STEP 1
myitemevent := "RT_DoEvent('menuitem','" + alltrim(RT_GUI_Menubar[tempx][2][tempx2][2][tempx3][2])+"','mouseclick')"
MENUITEM RT_GUI_Menubar[tempx][2][tempx2][2][tempx3][1] Action &myitemevent
AADD( MyOpObjsMap , {"menuitem",RT_GUI_Menubar[tempx][2][tempx2][2][tempx3][2],RT_GUI_Menubar[tempx][2][tempx2][2][tempx3][2],"READY"})
Next
ENDIF
END POPUP
Next
ENDIF
END MENU
ENDIF
Next
Return 0
ENDIF
Return Nil
Proc RT_CloseWin
winscount := winscount - 1
vmax  = LEN(MyOpObjsMap)
FOR x = vmax TO 1 STEP -1
IF VALTYPE(MyOpObjsMap[x]) == "A"
IF MyOpObjsMap[x][1] = "window"
IF alltrim(myopobjsmap[x][2]) == alltrim(myopwinname)
ADEL( myopobjsmap , x)
ASIZE( myopobjsmap , LEN( myopobjsmap ) - 1 )
Exit
ENDIF
ENDIF
ENDIF
Next
IF RT_Checkwins() = False .or. winscount = 0
SysSwitch := False
winscount := 0
ENDIF
Return Nil
Proc RT_CallInstructions( P1 )
Local OldProc,OldLevel
p1 = STRTRAN(p1," ","")
p1 = LOWER ( p1 )
p1 = STRTRAN(p1,"«·‰ﬁ—»«·›«—…","mouseclick")
p1 = STRTRAN(p1,"«· €Ì—","change")
p1 = STRTRAN(p1,"«„ ·«ﬂ«·»ƒ—…","gotfocus")
p1 = STRTRAN(p1,"›ﬁœ«‰«·»ƒ—…","lostfocus")
p1 = STRTRAN(p1,"«· Õ—ﬂ»«·›«—…","mousemove")
p1 = STRTRAN(p1,"«· Õ—ﬂ","move")
p1 = STRTRAN(p1,"«⁄«œ…«· ÕÃÌ„","resize")
p1 = STRTRAN(p1,"«· ﬂ»Ì—","maximize")
p1 = STRTRAN(p1,"«· ’€Ì—","minimize")
p1 = STRTRAN(p1,"«·‰ﬁ—„— Ì‰","doubleclick")
IF myactiveproc == p1
RT_LoopSwitch := True
Return 0
ENDIF
OldProc := MyActiveProc
OldLevel := MyActiveLevel
MyActiveProc := P1
MyActiveLevel := 0
DO MyRuntimeUrgent
DO MyRuntime
MyActiveProc := OldProc
MyActiveLevel := OldLevel
Return Nil
Proc RT_SetEvents
Local vmax,x
vmax  = LEN(MyOpObjsMap)
FOR x = vmax TO 1 STEP -1
if valtype(MyOpObjsMap[x]) == "A"
MyOpObjsMap[x][4] := "READY"
ENDIF
Next
Return Nil
Proc RT_DoEvent( P1,P2,P3 )
Local vmax,x,vready
vready := false
IF p1 = "window"
DO RT_SelectWindow WITH p2
vready := True
ENDIF
IF p1 = "button"
DO RT_SelectObjectGeneral WITH 1,"button",p2
ENDIF
IF p1 = "label"
DO RT_SelectObjectGeneral WITH 2,"label",p2
vready := True
ENDIF
IF p1 = "picture"
DO RT_SelectObjectGeneral WITH 3,"picture",p2
vready := True
ENDIF
IF p1 = "textbox"
DO RT_SelectObjectGeneral WITH 4,"textbox",p2
vready := True
ENDIF
IF p1 = "editbox"
DO RT_SelectObjectGeneral WITH 5,"editbox",p2
vready := True
ENDIF
IF p1 = "listbox"
DO RT_SelectObjectGeneral WITH 6,"listbox",p2
vready := True
ENDIF
IF p1 = "combobox"
DO RT_SelectObjectGeneral WITH 7,"combobox",p2
vready := True
ENDIF
IF p1 = "checkbox"
DO RT_SelectObjectGeneral WITH 8,"checkbox",p2
vready := True
ENDIF
IF p1 = "progressbar"
DO RT_SelectObjectGeneral WITH 9,"progressbar",p2
vready := True
ENDIF
IF p1 = "slider"
DO RT_SelectObjectGeneral WITH 10,"slider",p2
vready := True
ENDIF
IF p1 = "datepicker"
DO RT_SelectObjectGeneral WITH 11,"datepicker",p2
vready := True
ENDIF
IF p1 = "spinner"
DO RT_SelectObjectGeneral WITH 12,"spinner",p2
vready := True
ENDIF
IF p1 = "hyperlink"
DO RT_SelectObjectGeneral WITH 13,"hyperlink",p2
vready := True
ENDIF
IF p1 = "statusbar"
DO RT_SelectObjectGeneral WITH 14,"statusbar",p2
vready := True
ENDIF


vmax  = LEN(MyOpObjsMap)
IF VMAX > 0

FOR x = vmax TO 1 STEP -1
if valtype(MyOpObjsMap[x]) == "A"
IF lower(alltrim(MyOpObjsMap[x][1])) == lower(alltrim(P1))

IF vready = True .and. lower(alltrim(MyOpObjsMap[x][4])) != "ready"
Loop
ENDIF
IF lower(alltrim(MyOpObjsMap[x][2])) == lower(alltrim(P2))
DO RT_CallInstructions WITH LOWER(ALLTRIM(MyOpObjsMap[x][3]))+" " + Lower(Alltrim(P3))
DO RT_SetEvents
IF p3 = "release"
ADEL( MyOpObjsMap , x)
ASIZE( MyOpObjsMap , LEN( MyOpObjsMap ) - 1 )
ENDIF
ENDIF
ENDIF
ENDIF


Next
ENDIF
IF p1 = "window" .and. p3 = "release"
DO RT_CloseWin
ENDIF
IF p1 = "window" .and. p3 = "gotfocus"
MyOpWinName := lower(alltrim(p2))
ENDIF
Return Nil
Proc RT_SelectObject( p1,p2 )
ObjSelArray[P1] := "NULL"
vmax  = LEN(MyOpObjsMap)
myopdata[1] = STRTRAN(myopdata[1]," ","")
myopdata[1] = STRTRAN(myopdata[1],chr(13) + chr(10),"")
myopdata[1] = ALLTRIM ( myopdata[1] )
FOR x = vmax TO 1 STEP -1
IF lower(alltrim(MyOpObjsMap[x][1])) == lower(alltrim(p2)) .and. MyOpObjsMap[x][5] == myopwinname
IF lower(alltrim(MyOpObjsMap[x][3])) == lower(alltrim(MyOpData[1]))
ObjSelArray[P1] := MyOpObjsMap[x][2]
MyOpObjectName := ObjSelArray[p1]
Exit
ENDIF
ENDIF
Next
IF ObjSelArray[P1] = "NULL"
MyOut := MSGBOX(p2 + " " + myopdata[1]+" is not found !!!","Supernova - Runtime Error")
MyActiveProc := "NULL"
ENDIF
Return Nil
Proc RT_SelectObjectGeneral( p1,p2,p3 )
ObjSelArray[P1] := "NULL"
vmax  = LEN(MyOpObjsMap)
FOR x = vmax TO 1 STEP -1
IF lower(alltrim(MyOpObjsMap[x][1])) == lower(alltrim(p2)) .and. MyOpObjsMap[x][5] == myopwinname
IF lower(alltrim(MyOpObjsMap[x][2])) == lower(alltrim(p3))
ObjSelArray[P1] := MyOpObjsMap[x][2]
MyOpObjectName := ObjSelArray[p1]
Exit
ENDIF
ENDIF
Next
Return Nil
Proc RT_SelectWindow( p1 )

vmax  = LEN(MyOpObjsMap)
if vmax > 0
FOR x = vmax TO 1 STEP -1
IF valtype(MyOpObjsMap[x]) == "A"
if len(MyOpObjsMap[x]) > 0  
IF MyOpObjsMap[x][1] = "window"
IF lower(alltrim(MyOpObjsMap[x][2])) == lower(alltrim(p1))
MyOpWinName := MyOpObjsMap[x][2]
Exit
ENDIF
ENDIF
ENDIF
endif

Next
endif
Return Nil
Proc RT_CheckWins
Local myret
myret := False
vmax  = LEN(MyOpObjsMap)
FOR x = vmax TO 1 STEP -1
IF VALTYPE(MyOpObjsMap[x]) == "A"
IF MyOpObjsMap[x][1] = "window" .and. MyOpObjsMap[x][5] = "NOPARENT"
myret := True
ENDIF
ENDIF
Next
Return myret
Return Nil
Proc RT_CheckColor( p1 )
myret := true
p1 = ALLTRIM ( p1 )
p1 = STRTRAN(p1," ","")
IF len(p1) > 13
myret := false
ENDIF
tempvar = Left(p1,1)
IF tempvar != "{"
myret := false
ENDIF
tempvar = Right(p1,1)
IF tempvar != "}"
myret := false
ENDIF
IF NUMTOKEN(p1, ", ", 1) != 3
myret := false
ENDIF
FOR x = 2 TO len(p1)-1 STEP 1
tv = SUBSTR(p1,x,1)
IF tv = "0" .or. tv = "1" .or. tv = "2" .or. tv = "3" .or. tv = "4" .or. tv = "5" .or. tv = "6" .or. tv = "7" .or. tv = "8" .or. tv = "9" .or. tv = ","
ELSE
myret := false
Exit
ENDIF
Next
IF myret = true
Return p1
ELSE
p1 = LOWER ( p1 )
IF p1 == "aqua" .or. p1 == "„«∆Ï"
Return "{0,255,255}"
ENDIF
IF p1 == "black" .or. p1 == "«”Êœ"
Return "{0,0,0}"
ENDIF
IF p1 == "blue" .or. p1 == "«“—ﬁ"
Return "{0,0,255}"
ENDIF
IF p1 == "darkgray" .or. p1 == "—„«œÏ€«„ﬁ"
Return "{128,128,128}"
ENDIF
IF p1 == "fuchsia" .or. p1 == "›Ê‘Ì«"
Return "{255,0,255}"
ENDIF
IF p1 == "gray" .or. p1 == "—„«œÏ"
Return "{128,128,128}"
ENDIF
IF p1 == "green" .or. p1 == "«Œ÷—"
Return "{0,128,0}"
ENDIF
IF p1 == "lime" .or. p1 == "ﬂ·”"
Return "{0,255,0}"
ENDIF
IF p1 == "lightgray" .or. p1 == "—„«œÏ›« Õ"
Return "{192,192,192}"
ENDIF
IF p1 == "maroon" .or. p1 == "»‰Ï"
Return "{128,0,0}"
ENDIF
IF p1 == "navy" .or. p1 == "«“—ﬁœ«ﬂ‰"
Return "{0,0,128}"
ENDIF
IF p1 = "purple" .or. p1 = "«·«—ÃÊ«‰"
Return "{128,0,128}"
ENDIF
IF p1 == "red" .or. p1 == "«Õ„—"
Return "{255,0,0}"
ENDIF
IF p1 == "silver" .or. p1 == "›÷…"
Return "{192,192,192}"
ENDIF
IF p1 == "teal" .or. p1 == "»ÿ»—Ï"
Return "{128,128,0}"
ENDIF
IF p1 == "white" .or. p1 == "«»Ì÷"
Return "{255,255,255}"
ENDIF
IF p1 == "yellow" .or. p1 == "«’›—"
Return "{255,255,0}"
ENDIF
Return "{0,0,0}"
ENDIF
Return Nil
Proc RT_GUIDIM( TEMP_DIM,MyOpObjectName )
IF myopcode = temp_dim
myvalue = GetProperty ( myopwinname,MyOpObjectName,"row" )
DO RT_SetVarValue WITH myopdata[1],alltrim(str(myvalue))
Return 0
ENDIF
IF myopcode = temp_dim  + 1
myvalue = GetProperty ( myopwinname,MyOpObjectName,"col" )
DO RT_SetVarValue WITH myopdata[1],alltrim(str(myvalue))
Return 0
ENDIF
IF myopcode = temp_dim  + 2
myvalue = GetProperty ( myopwinname,MyOpObjectName,"width" )
DO RT_SetVarValue WITH myopdata[1],alltrim(str(myvalue))
Return 0
ENDIF
IF myopcode = temp_dim  + 3
myvalue = GetProperty ( myopwinname,MyOpObjectName,"height" )
DO RT_SetVarValue WITH myopdata[1],alltrim(str(myvalue))
Return 0
ENDIF
IF myopcode = temp_dim  + 4
DO RT_ReadExpr WITH myopdata[1],"RightSide"
VARVALUE = RT_GetExprValue ( RT_RS_DATA )
DO setproperty WITH MyOpWinName,MyOpObjectName,"row",val(varvalue)
Return 0
ENDIF
IF myopcode = temp_dim  + 5
DO RT_ReadExpr WITH myopdata[1],"RightSide"
VARVALUE = RT_GetExprValue ( RT_RS_DATA )
DO setproperty WITH MyOpWinName,MyOpObjectName,"col",val(varvalue)
Return 0
ENDIF
IF myopcode = temp_dim  + 6
DO RT_ReadExpr WITH myopdata[1],"RightSide"
VARVALUE = RT_GetExprValue ( RT_RS_DATA )
DO setproperty WITH MyOpWinName,MyOpObjectName,"width",val(varvalue)
Return 0
ENDIF
IF myopcode = temp_dim  + 7
DO RT_ReadExpr WITH myopdata[1],"RightSide"
VARVALUE = RT_GetExprValue ( RT_RS_DATA )
DO setproperty WITH MyOpWinName,MyOpObjectName,"height",val(varvalue)
Return 0
ENDIF
Return Nil


End Of Resistance

*-------------------------------------------------------------------*

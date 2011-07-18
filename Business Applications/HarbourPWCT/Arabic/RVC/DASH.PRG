*---------------------------------------------------------------------------*
* Time : 13:28:16    Date : 07/18/2011
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2011]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : Mahmoud Programming Language (HarbourPWCT) 
*---------------------------------------------------------------------------*
* Compilers                   : Borland C/C++ & Harbour/xHarbour
* GUI Framework               : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
Function DASH
Public True,False 
True = .T. 
False = .F. 
 Details :
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :

Resistance R_DASH_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_DASH_15speed1() code
class DashClass From SYSTEMDATABASE
Data datastring init ""
Data TableName init "Dash"
Data PrimaryKey init "ID"
Data C1 init 0
Data C2 init 0
Data C3 init 0
Data C4 init 0
Data C5 init 0
Data P1 init 0
Data P2 init 0
Data P3 init 0
Data P4 init 0
Data P5 init 0
Data TotalCount init 0
Data ActivePerformance init 0
Data performancestring init ""
Data LinePer init 0
Method ShowWindow
Method MyTimer
Method DrawChart
Method CloseWindow
Method DrawLine
Method LoadData
Method UpdateDash
Method ClearData
EndClass
Method ShowWindow Class DashClass
if !iswindowdefined( DashWindow )
DEFINE WINDOW DashWindow ;
AT 10 ,10 ;
WIDTH 859 ;
HEIGHT 653 ;
ICON "PWCTICON" ;
TITLE "„ «»⁄… Õ«·… «·„‘«—Ì⁄ ›Ï Õ«÷‰…  ﬁ‰Ì… «·„⁄·Ê„«  Ê«·« ’«·« " ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255}

Public oActiveX
oActiveX := TActiveX():New( "DashWindow", "RMChart.RMChartX" , 10 , 476 , 270 , 140)
oActiveX:Load()
DEFINE TIMER Timer1 INTERVAL 200 ;
Action self:mytimer()
@ 570 ,332 BUTTONEX btnClose;
CAPTION "«€·«ﬁ";
FONTCOLOR {0,0,0};
BACKCOLOR {150,252,196};
ON CLICK self:closewindow()  ;
WIDTH 196 HEIGHT 34 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 418 ,570 IMAGE image1;
PICTURE "image\c1.jpg";
STRETCH ;
WIDTH 100 HEIGHT 70
@ 418 ,189 IMAGE image2;
PICTURE "image\c2.jpg";
STRETCH ;
WIDTH 100 HEIGHT 70
@ 418 ,443 IMAGE image3;
PICTURE "image\c3.jpg";
STRETCH ;
WIDTH 100 HEIGHT 70
@ 418 ,316 IMAGE image4;
PICTURE "image\c4.jpg";
STRETCH ;
WIDTH 100 HEIGHT 70
@ 418 ,62 IMAGE image5;
PICTURE "image\c5.jpg";
STRETCH ;
WIDTH 100 HEIGHT 70
@ 390 ,591 LABEL lbl1 ;
VALUE "«·Õ«÷‰…" ;
WIDTH 70 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 390 ,461 LABEL lbl2 ;
VALUE "«·«” À„«—" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 390 ,325 LABEL lbl3 ;
VALUE "„—Õ·…  ‰›Ì– 1" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 390 ,199 LABEL lbl4 ;
VALUE "„—Õ·…  ‰›Ì– 2" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 390 ,71 LABEL lbl5 ;
VALUE "„—Õ·…  ‰›Ì– 3" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
Public oActiveX2
oActiveX2 := TActiveX():New( "DashWindow", "RMChart.RMChartX" , 10 , 52 , 370 , 282)
oActiveX2:Load()
@ 494 ,585 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 70 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 494 ,459 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 70 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 494 ,332 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 70 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 494 ,206 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 70 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 494 ,77 TEXTBOX text5;
HEIGHT 30 ;
WIDTH 70 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 525 ,585 TEXTBOX ptext1;
HEIGHT 30 ;
WIDTH 70 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 525 ,459 TEXTBOX ptext2;
HEIGHT 30 ;
WIDTH 70 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 524 ,332 TEXTBOX ptext3;
HEIGHT 30 ;
WIDTH 70 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 526 ,206 TEXTBOX ptext4;
HEIGHT 30 ;
WIDTH 70 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 524 ,77 TEXTBOX ptext5;
HEIGHT 30 ;
WIDTH 70 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 266 ,476 PROGRESSBAR Progress1;
RANGE 0 , 100 ;
WIDTH 270 ;
HEIGHT 30 ;
BACKCOLOR {255,255,255} ;
FORECOLOR {0,0,0} ;
TOOLTIP ""
@ 300 ,557 TEXTBOX ptext6;
HEIGHT 30 ;
WIDTH 70 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 491 ,688 LABEL tlbl1 ;
VALUE "⁄œœ «·„‘«—Ì⁄" ;
WIDTH 100 ;
HEIGHT 40 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {64,0,64} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 529 ,687 LABEL tlbl2 ;
VALUE "‰”»… «·„‘«—Ì⁄" ;
WIDTH 100 ;
HEIGHT 40 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {64,0,64} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 301 ,634 LABEL tlbl3 ;
VALUE "‰”»… «·«œ«¡" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 335 ,589 IMAGE imagedownsel1;
PICTURE "image\downsel.jpg";
STRETCH ;
WIDTH 55 HEIGHT 48
@ 303 ,157 TEXTBOX ptext7;
HEIGHT 30 ;
WIDTH 70 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 304 ,244 LABEL tlbl4 ;
VALUE "⁄œœ «·„‘«—Ì⁄" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 146 ,477 IMAGE imageperformance;
PICTURE "Image\performance.jpg";
STRETCH ;
WIDTH 270 HEIGHT 116
DEFINE TIMER Timer2 INTERVAL 5000 ;
Action self:UpdateDash()
END WINDOW

DashWindow.timer1.Enabled := false
DashWindow.Center ( )
myout = self:ClearData()
myout = self:DrawChart()
myout = self:UpdateDash()
ACTIVATE WINDOW DashWindow
EndIF

Return 0
Method MyTimer Class DashClass
myangle := oactivex:OOLE:region(1):gridlessseries:StartAngle
IF myangle < 360
oactivex:OOLE:region(1):gridlessseries:StartAngle := myangle + 1
oactivex2:OOLE:region(1):gridlessseries:StartAngle := myangle + 1
ELSE
oactivex:OOLE:region(1):gridlessseries:StartAngle := 0
oactivex2:OOLE:region(1):gridlessseries:StartAngle := 0
ENDIF
oactivex:OOLE:draw ( .T. )
oactivex2:OOLE:draw ( .T. )
Return 0
Method DrawChart Class DashClass
oactivex:OOLE:font := "Tahoma"
oactivex:OOLE:RMCstyle := 0
oactivex:OOLE:RMCUserWatermark := ""
oactivex:OOLE:addregion ( )
oactivex:OOLE:region(1):footer := ""
oactivex:OOLE:region(1):addcaption ( )
oactivex:OOLE:region(1):caption():titel := ""
oactivex:OOLE:region(1):caption():fontsize := 20
oactivex:OOLE:region(1):caption():bold := .t.
oactivex:OOLE:region(1) :addgridlessseries ( )
oactivex:OOLE:region(1):gridlessseries:SeriesStyle := 56
oactivex:OOLE:region(1):gridlessseries:Alignment := 1
oactivex:OOLE:region(1):gridlessseries:Explodemode := 0
oactivex:OOLE:region(1):gridlessseries:Lucent := .F.
oactivex:OOLE:region(1):gridlessseries:ValueLabelOn := 6
oactivex:OOLE:region(1):gridlessseries:HatchMode := 0
oactivex:OOLE:region(1):gridlessseries:StartAngle := 0
oactivex:OOLE:region(1):gridlessseries:DataString := self:performancestring
oactivex2:OOLE:font := "Tahoma"
oactivex2:OOLE:RMCstyle := 0
oactivex2:OOLE:RMCUserWatermark := ""
oactivex2:OOLE:addregion ( )
oactivex2:OOLE:region(1):footer := ""
oactivex2:OOLE:region(1):addcaption ( )
oactivex2:OOLE:region(1):caption():titel := ""
oactivex2:OOLE:region(1):caption():fontsize := 20
oactivex2:OOLE:region(1):caption():bold := .t.
oactivex2:OOLE:region(1) :addgridlessseries ( )
oactivex2:OOLE:region(1):gridlessseries:SeriesStyle := 52
oactivex2:OOLE:region(1):gridlessseries:Alignment := 1
oactivex2:OOLE:region(1):gridlessseries:Explodemode := 0
oactivex2:OOLE:region(1):gridlessseries:Lucent := .F.
oactivex2:OOLE:region(1):gridlessseries:ValueLabelOn := 6
oactivex2:OOLE:region(1):gridlessseries:HatchMode := 0
oactivex2:OOLE:region(1):gridlessseries:StartAngle := 0
oactivex2:OOLE:region(1):gridlessseries:DataString := self:datastring
oactivex2:OOLE:RMCBACKCOLOR := "&HFFFFFFFF"
oactivex2:OOLE:draw ( .T. )
DashWindow.timer1.Enabled := True
oactivex:OOLE:RMCBACKCOLOR := "&HFFFFFFFF"
oactivex:OOLE:draw ( .T. )
Return 0
Method CloseWindow Class DashClass
DashWindow.timer1.Enabled := false
oactivex:OOLE:reset ( )
oactivex2:OOLE:reset ( )
DashWindow.Release ( )
Return 0
Method DrawLine Class DashClass
Local XF,YF
IF self:lineper < 51
XF := 530+(1.6*SELF:LINEPER)
YF := 245-(1.5*SELF:LINEPER)
XF = ROUND (XF , 0)
YF = ROUND (YF , 0)
ELSE
XF := 610+(1.6*(SELF:LINEPER-50))
YF := 170+(1.5*(SELF:LINEPER-50))
XF = ROUND (XF , 0)
YF = ROUND (YF , 0)
ENDIF
ERASE WINDOW DashWindow
DRAW LINE IN WINDOW DashWindow;
AT YF,XF;
TO 245,610;
PENCOLOR {0,0,0};
PENWIDTH 3

Return 0
Method LoadData Class DashClass
Local nStage,nCount,cDataStr
myout = self:Connect()
MYMAX := SELF:oRS:RecordCount
FOR x = 1 TO MYMAX STEP 1
nStage := self:oRS:fields:item("StageID"):value
nCount := self:oRS:fields:item("MyCount"):value
IF nStage = 2
self:c1 := nCount
ELSEIF nStage = 3
self:c2 := nCount
ELSEIF nStage = 4
self:c3 := nCount
ELSEIF nStage = 5
self:c4 := nCount
ELSEIF nStage = 6
self:c5 := nCount
ENDIF
self:oRS:MOVENEXT()
Next
myout = self:Disconnect()
self:TotalCount := self:c1 + self:c2 + self:c3 + self:c4 + self:c5
self:p1 := (self:c1/self:totalcount)*100
self:p2 := (self:c2/self:totalcount)*100
self:p3 := (self:c3/self:totalcount)*100
self:p4 := (self:c4/self:totalcount)*100
self:p5 := (self:c5/self:totalcount)*100
self:C1 = STR ( self:c1 )
self:C2 = STR ( self:c2 )
self:C3 = STR ( self:c3 )
self:C4 = STR ( self:c4 )
self:C5 = STR ( self:c5 )
self:P1 = STR ( self:P1 )
self:P2 = STR ( self:P2 )
self:P3 = STR ( self:P3 )
self:P4 = STR ( self:P4 )
self:P5 = STR ( self:P5 )
SELF:C1 = ALLTRIM ( SELF:C1 )
SELF:C2 = ALLTRIM ( SELF:C2 )
SELF:C3 = ALLTRIM ( SELF:C3 )
SELF:C4 = ALLTRIM ( SELF:C4 )
SELF:C5 = ALLTRIM ( SELF:C5 )
SELF:P1 = ALLTRIM ( SELF:P1 )
SELF:P2 = ALLTRIM ( SELF:P2 )
SELF:P3 = ALLTRIM ( SELF:P3 )
SELF:P4 = ALLTRIM ( SELF:P4 )
SELF:P5 = ALLTRIM ( SELF:P5 )
oldDataString := self:DataString
self:DataString := SELF:C1 +"*"+ SELF:C2 +"*"+ SELF:C3 +"*"+ SELF:C4 +"*"+ SELF:C5
IF self:DataString == OldDataString
Return False
ENDIF
self:TotalCount = STR ( self:TotalCount )
DashWindow.ptext7.Value := self:TotalCount
DashWindow.text1.Value := self:c1
DashWindow.text2.Value := self:c2
DashWindow.text3.Value := self:c3
DashWindow.text4.Value := self:c4
DashWindow.text5.Value := self:c5
DashWindow.ptext1.Value := self:p1
DashWindow.ptext2.Value := self:p2
DashWindow.ptext3.Value := self:p3
DashWindow.ptext4.Value := self:p4
DashWindow.ptext5.Value := self:p5
Return True
Method UpdateDash Class DashClass
myout = self:LoadData()
IF myout = True
oactivex2:OOLE:region(1):gridlessseries:DataString := self:datastring
oactivex2:OOLE:draw ( .T. )
ENDIF
self:ActivePerformance := self:ActivePerformance+1
IF self:activeperformance = 6
self:ActivePerformance := 1
ENDIF
IF self:ActivePerformance = 1
Self:LinePer := 100 - val(self:p1)
Self:LinePer = STR ( self:LinePer )
Self:LinePer = ALLTRIM ( self:LinePer )
self:PerformanceString := self:lineper + "*0*0*0*0*" + self:p1
DashWindow.ImageDownSel1.Col := 589
ELSEIF self:ActivePerformance = 2
Self:LinePer := 100 - val(self:p2)
Self:LinePer = STR ( self:LinePer )
Self:LinePer = ALLTRIM ( self:LinePer )
self:PerformanceString := "0*" + self:Lineper + "*0*0*0*" + self:p2
DashWindow.ImageDownSel1.Col := 589-130
ELSEIF self:ActivePerformance = 3
Self:LinePer := 100 - val(self:p3)
Self:LinePer = STR ( self:LinePer )
Self:LinePer = ALLTRIM ( self:LinePer )
self:PerformanceString := "0*0*" + self:lineper + " *0*0*" + self:p3
DashWindow.ImageDownSel1.Col := 589-260
ELSEIF self:ActivePerformance = 4
Self:LinePer := 100 - val(self:p4)
Self:LinePer = STR ( self:LinePer )
Self:LinePer = ALLTRIM ( self:LinePer )
self:PerformanceString := "0*0*0*" + self:lineper + "*0*" + self:p4
DashWindow.ImageDownSel1.Col := 589-380
ELSEIF self:ActivePerformance = 5
Self:LinePer := 100 - val(self:p5)
Self:LinePer = STR ( self:LinePer )
Self:LinePer = ALLTRIM ( self:LinePer )
self:PerformanceString := "*0*0*0*0*" + self:lineper + "*" + self:p5
DashWindow.ImageDownSel1.Col := 589-500
ENDIF
oactivex:OOLE:region(1):gridlessseries:DataString := self:performancestring
oactivex:OOLE:draw ( .T. )
DashWindow.pText6.Value := self:LinePer
Self:LinePer = VAL ( self:LinePer )
myout = Self:DrawLine()
DashWindow.Progress1.Value := self:LinePer
Return 0
Method ClearData Class DashClass
self:DataString := ""
self:p1 := ""
self:p2 := ""
self:p3 := ""
self:p4 := ""
self:p5 := ""
self:c1 := ""
self:c2 := ""
self:c3 := ""
self:c4 := ""
self:c5 := ""
Return 0



End Of Resistance

*-------------------------------------------------------------------*

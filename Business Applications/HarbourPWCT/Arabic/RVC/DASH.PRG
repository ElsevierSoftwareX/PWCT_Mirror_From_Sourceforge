*---------------------------------------------------------------------------*
* Time : 13:21:36    Date : 07/17/2011
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
Data datastring init "5*14*3*2*1"
Data performancestring init "80*0*0*0*0*20"
Data LinePer init 80
Method ShowWindow
Method MyTimer
Method DrawChart
Method CloseWindow
Method DrawLine
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
@ 390 ,315 LABEL lbl3 ;
VALUE "„—Õ·…  ‰›Ì– 1" ;
WIDTH 110 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 390 ,191 LABEL lbl4 ;
VALUE "„—Õ·…  ‰›Ì– 2" ;
WIDTH 110 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 390 ,61 LABEL lbl5 ;
VALUE "„—Õ·…  ‰›Ì– 3" ;
WIDTH 110 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
Public oActiveX2
oActiveX2 := TActiveX():New( "DashWindow", "RMChart.RMChartX" , 10 , 52 , 370 , 282)
oActiveX2:Load()
@ 524 ,585 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 70 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 524 ,459 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 70 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 524 ,332 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 70 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 524 ,206 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 70 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 524 ,77 TEXTBOX text5;
HEIGHT 30 ;
WIDTH 70 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 493 ,585 TEXTBOX ptext1;
HEIGHT 30 ;
WIDTH 70 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 493 ,459 TEXTBOX ptext2;
HEIGHT 30 ;
WIDTH 70 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 492 ,332 TEXTBOX ptext3;
HEIGHT 30 ;
WIDTH 70 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 494 ,206 TEXTBOX ptext4;
HEIGHT 30 ;
WIDTH 70 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 492 ,77 TEXTBOX ptext5;
HEIGHT 30 ;
WIDTH 70 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0}

@ 266 ,476 PROGRESSBAR Progress1;
RANGE 0 , 100 ;
VALUE 80 ;
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
END WINDOW

DashWindow.timer1.Enabled := false
DashWindow.Center ( )
myout = self:DrawChart()
myout = Self:DrawLine()
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



End Of Resistance

*-------------------------------------------------------------------*

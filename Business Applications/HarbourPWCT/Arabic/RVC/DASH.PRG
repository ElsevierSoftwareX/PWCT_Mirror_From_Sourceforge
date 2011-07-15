*---------------------------------------------------------------------------*
* Time : 02:08:37    Date : 07/16/2011
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
Method ShowWindow
Method MyTimer
Method DrawChart
Method CloseWindow
EndClass
Method ShowWindow Class DashClass
if !iswindowdefined( DashWindow )
DEFINE WINDOW DashWindow ;
AT 10 ,10 ;
WIDTH 1150 ;
HEIGHT 562 ;
ON INIT self:drawchart()  ;
ICON "PWCTICON" ;
TITLE "„ «»⁄… Õ«·… «·„‘«—Ì⁄ ›Ï Õ«÷‰…  ﬁ‰Ì… «·„⁄·Ê„«  Ê«·« ’«·« " ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
NOSYSMENU ;
NOCAPTION ;
BACKCOLOR {0,0,0}

Public oActiveX
oActiveX := TActiveX():New( "DashWindow", "RMChart.RMChartX" , 20 , 739 , 370 , 432)
oActiveX:Load()
DEFINE TIMER Timer1 INTERVAL 50 ;
Action self:mytimer()
@ 473 ,479 BUTTONEX btnClose;
CAPTION "«€·«ﬁ";
FONTCOLOR {255,255,255};
BACKCOLOR {0,0,0};
ON CLICK self:closewindow()  ;
WIDTH 140 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 21 ,496 IMAGE image1;
PICTURE "image\c1.jpg";
STRETCH ;
WIDTH 100 HEIGHT 70
@ 294 ,496 IMAGE image2;
PICTURE "image\c2.jpg";
STRETCH ;
WIDTH 100 HEIGHT 70
@ 112 ,496 IMAGE image3;
PICTURE "image\c3.jpg";
STRETCH ;
WIDTH 100 HEIGHT 70
@ 203 ,496 IMAGE image4;
PICTURE "image\c4.jpg";
STRETCH ;
WIDTH 100 HEIGHT 70
@ 385 ,495 IMAGE image5;
PICTURE "image\c5.jpg";
STRETCH ;
WIDTH 100 HEIGHT 70
@ 42 ,612 LABEL lbl1 ;
VALUE "«·Õ«÷‰…" ;
WIDTH 70 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 133 ,612 LABEL lbl2 ;
VALUE "«·«” À„«—" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 224 ,612 LABEL lbl3 ;
VALUE "„—Õ·…  ‰›Ì– 1" ;
WIDTH 110 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 315 ,612 LABEL lbl4 ;
VALUE "„—Õ·…  ‰›Ì– 2" ;
WIDTH 110 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
@ 406 ,612 LABEL lbl5 ;
VALUE "„—Õ·…  ‰›Ì– 3" ;
WIDTH 110 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {255,255,255}
Public oActiveX2
oActiveX2 := TActiveX():New( "DashWindow", "RMChart.RMChartX" , 20 , 45 , 370 , 432)
oActiveX2:Load()
END WINDOW

DashWindow.timer1.Enabled := false
DashWindow.Center ( )
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
oactivex:OOLE:region(1):gridlessseries:SeriesStyle := 52
oactivex:OOLE:region(1):gridlessseries:Alignment := 1
oactivex:OOLE:region(1):gridlessseries:Explodemode := 0
oactivex:OOLE:region(1):gridlessseries:Lucent := .F.
oactivex:OOLE:region(1):gridlessseries:ValueLabelOn := 6
oactivex:OOLE:region(1):gridlessseries:HatchMode := 0
oactivex:OOLE:region(1):gridlessseries:StartAngle := 0
oactivex:OOLE:region(1):gridlessseries:DataString := self:datastring
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
oactivex2:OOLE:region(1):gridlessseries:SeriesStyle := 56
oactivex2:OOLE:region(1):gridlessseries:Alignment := 1
oactivex2:OOLE:region(1):gridlessseries:Explodemode := 0
oactivex2:OOLE:region(1):gridlessseries:Lucent := .F.
oactivex2:OOLE:region(1):gridlessseries:ValueLabelOn := 6
oactivex2:OOLE:region(1):gridlessseries:HatchMode := 0
oactivex2:OOLE:region(1):gridlessseries:StartAngle := 0
oactivex2:OOLE:region(1):gridlessseries:DataString := self:datastring
oactivex2:OOLE:RMCBACKCOLOR := "&HFF000000"
oactivex2:OOLE:draw ( .T. )
DashWindow.timer1.Enabled := True
oactivex:OOLE:RMCBACKCOLOR := "&HFF000000"
oactivex:OOLE:draw ( .T. )
Return 0
Method CloseWindow Class DashClass
DashWindow.timer1.Enabled := false
DashWindow.Release ( )
Return 0



End Of Resistance

*-------------------------------------------------------------------*

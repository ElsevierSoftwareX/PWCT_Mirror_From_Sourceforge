*---------------------------------------------------------------------------*
* Time : 00:48:54    Date : 07/16/2011
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
Method ShowWindow
Method MyTimer
Method DrawChart
Method CloseWindow
EndClass
Method ShowWindow Class DashClass
if !iswindowdefined( DashWindow )
DEFINE WINDOW DashWindow ;
AT 10 ,10 ;
WIDTH 1052 ;
HEIGHT 536 ;
ON INIT self:drawchart()  ;
ICON "PWCTICON" ;
TITLE "„ «»⁄… Õ«·… «·„‘«—Ì⁄ ›Ï Õ«÷‰…  ﬁ‰Ì… «·„⁄·Ê„«  Ê«·« ’«·« " ;
CHILD ;
NOAUTORELEASE ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255}

Public oActiveX
oActiveX := TActiveX():New( "DashWindow", "RMChart.RMChartX" , 7 , 9 , 510 , 432)
oActiveX:Load()
DEFINE TIMER Timer1 INTERVAL 50 ;
Action self:mytimer()
@ 456 ,9 BUTTONEX btnClose;
CAPTION "«€·«ﬁ";
FONTCOLOR {0,0,0};
BACKCOLOR {0,255,128};
ON CLICK self:closewindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
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
ELSE
oactivex:OOLE:region(1):gridlessseries:StartAngle := 0
ENDIF
IF myangle > 180
oactivex:OOLE:region(1):gridlessseries:DataString := "30*10*30*10*20"
ENDIF
oactivex:OOLE:draw ( .T. )
Return 0
Method DrawChart Class DashClass
oactivex:OOLE:font := "Tahoma"
oactivex:OOLE:RMCstyle := 0
oactivex:OOLE:RMCUserWatermark := "‘—ﬂ… Ê«œÏ «·—Ì«÷"
oactivex:OOLE:addregion ( )
oactivex:OOLE:region(1):footer := "Õ«·… «·„‘«—Ì⁄ ›Ï «·Õ«÷‰…"
oactivex:OOLE:region(1):addcaption ( )
oactivex:OOLE:region(1):caption():titel := "Õ«÷‰…  ﬁ‰Ì… «·„⁄·Ê„«  Ê«·« ’«·« "
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
oactivex:OOLE:region(1):gridlessseries:DataString := "10*20*30*40*50"
oactivex:OOLE:draw ( .T. )
DashWindow.timer1.Enabled := True
Return 0
Method CloseWindow Class DashClass
DashWindow.timer1.Enabled := false
DashWindow.Release ( )
Return 0



End Of Resistance

*-------------------------------------------------------------------*

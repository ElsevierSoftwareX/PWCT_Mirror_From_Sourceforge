#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 12:37:47    Date : 12/02/2008
*---------------------------------------------------------------------------*
* Programming without coding technology 1.0 (Final)   
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
New Server Server1 Type Slave Server Eigen Value 000
 Details :
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance RPEPPI1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance RPEPPI1() code
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 411 ;
ON INIT drawchart()  ;
ICON "PWCTICON" ;
TITLE "RMChart ActiveX - Sample" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

Public oActiveX
oActiveX := TActiveX():New( "Win1", "RMChart.RMChartX" , 19 , 17 , 455 , 332)
oActiveX:Load()
END WINDOW

ACTIVATE WINDOW win1

Proc drawchart
oactivex:OOLE:font := "Tahoma"
oactivex:OOLE:RMCstyle := 0
oactivex:OOLE:RMCUserWatermark := "PWCT"
oactivex:OOLE:addregion ( )
oactivex:OOLE:region(1):footer := "http://doublesvsoop.sourceforge.net"
oactivex:OOLE:region(1):addcaption ( )
oactivex:OOLE:region(1):caption():titel := "PWCT Test"
oactivex:OOLE:region(1):caption():fontsize := 10
oactivex:OOLE:region(1):caption():bold := .t.
oactivex:OOLE:region(1) :addgridlessseries ( )
oactivex:OOLE:region(1):gridlessseries:SeriesStyle := 52
oactivex:OOLE:region(1):gridlessseries:Alignment := 1
oactivex:OOLE:region(1):gridlessseries:Explodemode := 0
oactivex:OOLE:region(1):gridlessseries:Lucent := .F.
oactivex:OOLE:region(1):gridlessseries:ValueLabelOn := 6
oactivex:OOLE:region(1):gridlessseries:HatchMode := 0
oactivex:OOLE:region(1):gridlessseries:StartAngle := 0
oactivex:OOLE:region(1):gridlessseries:DataString := "30*15*40*35"
oactivex:OOLE:draw ( .T. )
Return Nil


End Of Resistance

INIT PROCEDURE Init_DEMO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",47)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",1,4)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Active Control ( oActiveX )",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",17,18)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Procedures",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure drawchart",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.font := 'Tahoma'",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.RMCstyle := 0",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.RMCUserWatermark := 'PWCT'",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.addregion ( )",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.region(1):footer := 'http://doublesvsoop.sourceforge.net'",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.region(1):addcaption ( )",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.region(1):caption():titel := 'PWCT Test'",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.region(1):caption():fontsize := 10",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.region(1):caption():bold := .t.",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.region(1) :addgridlessseries ( )",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.region(1):gridlessseries:SeriesStyle := 52",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.region(1):gridlessseries:Alignment := 1",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.region(1):gridlessseries:Explodemode := 0",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.region(1):gridlessseries:Lucent := .F.",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.region(1):gridlessseries:ValueLabelOn := 6",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.region(1):gridlessseries:HatchMode := 0",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.region(1):gridlessseries:StartAngle := 0",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.region(1):gridlessseries:DataString := '30*15*40*35'",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.draw ( .T. )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",41,41)
Return
*-------------------------------------------------------------------*

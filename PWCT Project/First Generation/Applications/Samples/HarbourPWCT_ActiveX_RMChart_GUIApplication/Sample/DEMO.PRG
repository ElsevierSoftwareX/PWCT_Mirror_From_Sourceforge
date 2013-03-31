*---------------------------------------------------------------------------*
* Time : 04:23:38    Date : 10/21/2011
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2011]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
*---------------------------------------------------------------------------*
* Compilers                   : Borland C/C++ & Harbour
* GUI Framework               : HarbourMiniGUI Extended
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
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_DEMO_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_DEMO_18smart1() code
if !iswindowdefined( win1 )
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
EndIF

Proc drawchart
oactivex:OOLE:font := "Tahoma"
oactivex:OOLE:RMCstyle := 0
oactivex:OOLE:RMCUserWatermark := "PWCT"
oactivex:OOLE:addregion ( )
oactivex:OOLE:region(1):footer := "http://doublesvsoop.sourceforge.net"
oactivex:OOLE:region(1):addcaption ( )
oactivex:OOLE:region(1):caption():titel := "PWCT Test"
oactivex:OOLE:region(1):caption():fontsize := 10
oactivex:OOLE:region(1):caption():bold := True
oactivex:OOLE:region(1) :addgridlessseries ( )
oactivex:OOLE:region(1):gridlessseries:SeriesStyle := 52
oactivex:OOLE:region(1):gridlessseries:Alignment := 1
oactivex:OOLE:region(1):gridlessseries:Explodemode := 0
oactivex:OOLE:region(1):gridlessseries:Lucent := False
oactivex:OOLE:region(1):gridlessseries:ValueLabelOn := 6
oactivex:OOLE:region(1):gridlessseries:HatchMode := 0
oactivex:OOLE:region(1):gridlessseries:StartAngle := 0
oactivex:OOLE:region(1):gridlessseries:DataString := "30*15*40*35"
oactivex:OOLE:draw ( True )
Return Nil


End Of Resistance

INIT PROCEDURE Init_DEMO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",49)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'RMChart ActiveX - Sample'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action drawchart()",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,14)
SS_ESASTEP("Circuits\Main\Main\Main","Active Control ( oActiveX )",15,17)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",18,19)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",20,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure drawchart",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.font := 'Tahoma'",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.RMCstyle := 0",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.RMCUserWatermark := 'PWCT'",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.addregion ( )",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.region(1):footer := 'http://doublesvsoop.sourceforge.net'",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.region(1):addcaption ( )",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.region(1):caption():titel := 'PWCT Test'",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.region(1):caption():fontsize := 10",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.region(1):caption():bold := True",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.region(1) :addgridlessseries ( )",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.region(1):gridlessseries:SeriesStyle := 52",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.region(1):gridlessseries:Alignment := 1",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.region(1):gridlessseries:Explodemode := 0",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.region(1):gridlessseries:Lucent := False",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.region(1):gridlessseries:ValueLabelOn := 6",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.region(1):gridlessseries:HatchMode := 0",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.region(1):gridlessseries:StartAngle := 0",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.region(1):gridlessseries:DataString := '30*15*40*35'",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","oactivex.draw ( True )",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",43,43)
Return
*-------------------------------------------------------------------*

*---------------------------------------------------------------------------*
* Time : 11:17:40    Date : 10/30/2011
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
Function Main
Public True,False 
True = .T. 
False = .F. 
New Server Server1 Type Slave Server Eigen Value 000
 Details :
 * (Noun) *
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


Resistance R_TEST_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TEST_15speed1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 520 ;
HEIGHT 404 ;
ICON "PWCTICON" ;
TITLE "report" ;
MAIN ;
BACKCOLOR {0,0,0} 

Public oActiveX
oActiveX := TActiveX():New( "Win1", "CrystalReports10.ActiveXReportViewer.1" , 59 , 5 , 502 , 300)
oActiveX:Load()
@ 18 ,17 BUTTONEX btn1;
CAPTION "show report";
FONTCOLOR {255,255,255};
BACKCOLOR {0,0,0};
ON CLICK show()  ;
WIDTH 136 HEIGHT 31 ;
FONT "arial" SIZE 16 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc show
StartUpFolder := GetStartUpFolder()
Public T_myobj,T_myreport
T_myobj := TOLEAUTO():NEW( "CrystalDesignRuntime.Application" )
T_myreport := TOLEAUTO():NEW( "CrystalDesignRuntime.Report" )
T_myreport := T_myobj:openreport ( "Report1.rpt" )
oDB = T_myreport:Database()
ocDBT = oDB:Tables()
oDBT = ocDBT:Item(1)
oDBT:Location = startupfolder+"\data.mdb"
oActivex:OOLE:reportsource := T_myreport
oActivex:OOLE:viewreport ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_TEST
START DOUBLES
Return
*-------------------------------------------------------------------*

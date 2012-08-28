*---------------------------------------------------------------------------*
* Time : 16:16:22    Date : 07/22/2012
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2012]  
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
#include "xhb.ch"
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


Resistance R_LESSON16_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON16_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 743 ;
HEIGHT 507 ;
ICON "PWCTICON" ;
TITLE "Rapport  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

Public oActivex
oActivex := TActiveX():New( "Win1", "CrystalReports10.ActiveXReportViewer.1" , 57 , 14 , 705 , 370)
oActivex:Load()
DEFINE MAIN MENU
POPUP "Fichier "
MENUITEM "Exit " Action exit()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "Pret"

DATE

CLOCK

END STATUSBAR

@ 15 ,268 BUTTONEX btn1;
CAPTION "Afficher Rapport ";
ON CLICK showreport()  ;
WIDTH 197 HEIGHT 31 ;
FONT "Georgia" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc exit()
MyOut := MSGOKCANCEL("Voulez Vous Vraiment Fermer L'Application ? ","Fermer app ")
IF myout=true
win1.Release ( )
ELSE
Return 0
ENDIF
Return Nil
Proc showreport
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

INIT PROCEDURE Init_LESSON16
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Rapport  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,13)
SS_ESASTEP("Circuits\Main\Main\Main","Active Control ( oActivex )",14,16)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Fichier '",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit ' )",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",22,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Pret' )",24,25)
SS_ESASTEP("Circuits\Main\Main\Main","Date",26,27)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Afficher Rapport '",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action showreport",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",35,37)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",40,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure exit()",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Voulez Vous Vraiment Fermer L'Application ? ' Title 'Fermer app ' Type: Message Ok/Cancel",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout=true )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure showreport",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","StartUpFolder := Get StartUp Folder",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Crystal Reports 10, Object oActivex, View Report 'Report1.rpt' , Database Location = startupfolder+'\data.mdb'",53,62)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",63,63)
Return
*-------------------------------------------------------------------*

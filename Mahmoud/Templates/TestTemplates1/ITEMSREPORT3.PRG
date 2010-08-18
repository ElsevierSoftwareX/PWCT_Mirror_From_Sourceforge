*---------------------------------------------------------------------------*
* Time : 20:55:07    Date : 07/30/2010
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
Function ITEMSREPORT3
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
					Resistance Main                          
	VetoUnit :

Resistance R_ITEMSREPORT3_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ITEMSREPORT3_15speed1() code
Class ItemsReport3Class
Data database init GetStartUpFolder()+"\data.mdb"
Data outputfile init GetStartUpFolder()+"\tempfile.html"
Data ReportName init "items"
Data myaccessobj init 0
Data oActiveX init 0
Method showwindow
Method closewindow
Method showreport
Method printreport
Method SizeReport
EndClass
Method ShowWindow Class ItemsReport3Class
if !iswindowdefined( ItemsReport3Window )
DEFINE WINDOW ItemsReport3Window ;
AT 10 ,10 ;
WIDTH 743 ;
HEIGHT 542 ;
ON INIT self:ShowReport()  ;
ON SIZE self:SizeReport()  ;
ON MAXIMIZE self:SizeReport()  ;
ICON "PWCTICON" ;
TITLE "Report" ;
CHILD ;
BACKCOLOR {236,233,216}

self:oActiveX := TActiveX():New( "ItemsReport3Window", "Internet.Explorer.2" , 18 , 32 , 659 , 417)
self:oActiveX:Load()
@ 454 ,456 BUTTONEX btn1;
CAPTION "Close";
ON CLICK self:CloseWindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 454 ,316 BUTTONEX btn2;
CAPTION "Print";
ON CLICK self:PrintReport()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 454 ,176 BUTTONEX btn3;
CAPTION "Refresh";
ON CLICK self:ShowReport()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW ItemsReport3Window
EndIF

Return 0
Method CloseWindow Class ItemsReport3Class
ItemsReport3Window.Release ( )
Return 0
Method ShowReport Class ItemsReport3Class
StartUpFolder := GetStartUpFolder()
self:myaccessobj := TOLEAUTO():NEW( "Access.Application" )
self:myaccessobj:OpenCurrentDatabase ( self:database,false )
self:myaccessobj:DoCmd:OutputTo ( 3,self:ReportName,"HTML (*.html)",self:outputfile )
self:myaccessobj:Quit ( )
self:oactivex:OOLE:navigate ( self:outputfile )
Return 0
Method PrintReport Class ItemsReport3Class
StartUpFolder := GetStartUpFolder()
self:myaccessobj := TOLEAUTO():NEW( "Access.Application" )
self:myaccessobj:OpenCurrentDatabase ( self:database,false )
self:myaccessobj:DoCmd:OpenReport ( self:ReportName )
self:myaccessobj:Quit ( )
Return 0
Method SizeReport Class ItemsReport3Class
Local tempvar1,tempvar2
tempvar1 := ItemsReport3Window.Width
tempvar2 := ItemsReport3Window.Height
self:oactivex:nWidth := tempvar1 - 84
self:oactivex:nHeight := tempvar2 - 125
ItemsReport3Window.btn1.Row := tempvar2-88
ItemsReport3Window.btn2.Row := tempvar2-88
ItemsReport3Window.btn3.Row := tempvar2-88
self:oactivex:Show ( )
Return 0



End Of Resistance

*-------------------------------------------------------------------*

*---------------------------------------------------------------------------*
* Time : 10:46:33    Date : 12/03/2010
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
Function REPORTBASE
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

Resistance R_REPORTBASE_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_REPORTBASE_15speed1() code
Class Report_Base
Data database init GetStartUpFolder()+"\data\sysdata.mdb"
Data outputfile init GetStartUpFolder()+"\tempfile.snp"
Data myaccessobj init 0
Data oActiveX init 0
Data Filter init ""
Data dbpassword init "systemdatabase123"
Data outputfile2 init GetStartUpFolder()+"\tempfile.html"
Data outputfile3 init GetStartUpFolder()+"\tempfile.xls"
Method showreport
Method printreport
Method exportreport
Method exportreport2
EndClass
Method ShowReport Class Report_Base
StartUpFolder := GetStartUpFolder()
self:myaccessobj := TOLEAUTO():NEW( "Access.Application" )
self:myaccessobj:OpenCurrentDatabase ( self:database,false,self:dbpassword )
self:myaccessobj:DoCmd:OpenReport ( self:ReportName,1 )
IF .not. empty(alltrim(self:filter))
self:myaccessobj:Reports(Self:ReportName):Filter := Self:Filter
ELSE
self:myaccessobj:Reports(Self:ReportName):Filter := "1 = 1"
ENDIF
self:myaccessobj:DoCmd:OutputTo ( 3,,"SnapshotFormat(*.snp)",self:outputfile )
self:myaccessobj:Quit ( )
self:oactivex:OOLE:snapshotpath := self:outputfile
Return 0
Method PrintReport Class Report_Base
StartUpFolder := GetStartUpFolder()
self:myaccessobj := TOLEAUTO():NEW( "Access.Application" )
self:myaccessobj:OpenCurrentDatabase ( self:database,false,self:dbpassword )
self:myaccessobj:DoCmd:OpenReport ( self:ReportName,,,self:filter )
self:myaccessobj:Quit ( )
Return 0
Method ExportReport Class Report_Base
StartUpFolder := GetStartUpFolder()
self:myaccessobj := TOLEAUTO():NEW( "Access.Application" )
self:myaccessobj:OpenCurrentDatabase ( self:database,false,self:dbpassword )
self:myaccessobj:DoCmd:OpenReport ( self:ReportName,1 )
IF .not. empty(alltrim(self:filter))
self:myaccessobj:Reports(Self:ReportName):Filter := Self:Filter
ELSE
self:myaccessobj:Reports(Self:ReportName):Filter := "1 = 1"
ENDIF
self:myaccessobj:DoCmd:OutputTo ( 3,,"HTML(*.html)",self:outputfile2 )
self:myaccessobj:Quit ( )
Execute File self:outputfile2
Return 0
Method ExportReport2 Class Report_Base
StartUpFolder := GetStartUpFolder()
self:myaccessobj := TOLEAUTO():NEW( "Access.Application" )
self:myaccessobj:OpenCurrentDatabase ( self:database,false,self:dbpassword )
self:myaccessobj:DoCmd:OpenReport ( self:ReportName,1 )
IF .not. empty(alltrim(self:filter))
self:myaccessobj:Reports(Self:ReportName):Filter := Self:Filter
ELSE
self:myaccessobj:Reports(Self:ReportName):Filter := "1 = 1"
ENDIF
self:myaccessobj:DoCmd:OutputTo ( 3,,"Microsoft Excel 97-2002 (*.xls)",self:outputfile3 )
self:myaccessobj:Quit ( )
Execute File self:outputfile3
Return 0


End Of Resistance

*-------------------------------------------------------------------*

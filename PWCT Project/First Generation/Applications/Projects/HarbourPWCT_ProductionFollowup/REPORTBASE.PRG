*---------------------------------------------------------------------------*
* Time : 14:42:31    Date : 06/07/2013
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2013 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2013.05.15
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
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

Resistance R_REPORTBASE_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_REPORTBASE_18smart1() code
Class Report_Base
Data database init GetStartUpFolder()+"\data\sysdata.mdb"
Data outputfile init GetStartUpFolder()+"\tempfile.snp"
Data myaccessobj init 0
Data oActiveX init 0
Data Filter init ""
Data dbpassword init "systemdatabase123"
Method showreport
Method printreport
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

End Of Resistance

*-------------------------------------------------------------------*

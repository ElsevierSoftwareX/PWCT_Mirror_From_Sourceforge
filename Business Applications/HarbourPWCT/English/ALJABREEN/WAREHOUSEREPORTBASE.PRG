*---------------------------------------------------------------------------*
* Time : 15:13:46    Date : 12/07/2010
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
Function WAREHOUSEREPORTBASE
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

Resistance R_WAREHOUSEREPORTBASE_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_WAREHOUSEREPORTBASE_15speed1() code
class warehousereport_base From report_base
Data nWarehouse init 1
Data groupitems init {}
Data groupitemsids init {}
Method ShowReport
EndClass
Method ShowReport Class warehousereport_base
Local oldfilter
oldfilter := self:filter
myout = systemdatabaseobject:loadlookuptable("ItemsGroups","GroupName",@self:GroupItems,"id",@self:GroupItemsIDS)
IF empty(alltrim(self:filter))
self:filter := " val(itemgroupid) = " + alltrim(str(self:groupitemsids[self:nwarehouse]))
ELSE
self:filter := self:filter + " and  val(itemgroupid) = " + alltrim(str(self:groupitemsids[self:nwarehouse]))
ENDIF
myout = super:ShowReport()
self:filter := oldfilter
Return 0


End Of Resistance

*-------------------------------------------------------------------*

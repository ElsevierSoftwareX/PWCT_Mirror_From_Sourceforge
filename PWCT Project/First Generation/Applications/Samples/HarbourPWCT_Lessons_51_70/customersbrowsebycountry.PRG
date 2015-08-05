*---------------------------------------------------------------------------*
* Time : 04:15:18    Date : 07/13/2015
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2015.04.28
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
*---------------------------------------------------------------------------*
#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
Function loadcustomersbrowsebycountry
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

Resistance R_customersbrowsebycountry_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_customersbrowsebycountry_19art1() code
class CustomersBrowseByCountryClass From SystemDatabase
Data cWindowName init "CustomersBrowseByCountryWindow"
Data tablename init "Customers_all"
Data column init "Country"
Data PrimaryKey init "id"
Data columns init {"castName","CastPhone","country"}
Data columnstitles init {"Name","Phone","Country"}
Data columnswidths init {200,100,100}
Data aCountryItems init {}
Data aCountryItemsID init {}
Method showwindow
Method closewindow
Method OpenDataWindow
Method showdatawindow
Method print
Method BeforeSearch
Method SearchAdd
Method settimer
Method GetSearchValue
EndClass
Method showwindow Class CustomersBrowseByCountryClass
out = self:LoadLookupTable("Country","Country",@self:aCountryItems,"ID",@self:aCountryItemsID)
if !iswindowdefined( &(self:cWindowName) )
DEFINE WINDOW &(self:cWindowName) ;
AT 10 ,10 ;
WIDTH 696 ;
HEIGHT 361 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "Search/Browse Window" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,225,255} 

@ 13 ,45 LABEL lbl1 ;
VALUE "Country" ;
WIDTH 81 ;
HEIGHT 24 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 12 ,385 BUTTONEX btn1;
CAPTION "Search ";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK self:Search()  ;
WIDTH 82 HEIGHT 29 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 280 ,574 BUTTONEX btnclose;
CAPTION "Close";
ON CLICK self:closewindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 59 ,16 GRID Grid1;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 550 ;
HEIGHT 250 ;
HEADERS self:columnstitles;
WIDTHS self:columnswidths ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 13 ,139 COMBOBOX combocountry;
WIDTH 216 ;
HEIGHT 300;
ITEMS self:aCountryItems ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,232} ;
FONTCOLOR {0,0,0}
END WINDOW

&(self:cWindowName).Center ( )
ACTIVATE WINDOW &(self:cWindowName)
EndIF

Return 0
Method ShowDataWindow(nValue) Class CustomersBrowseByCountryClass
Return 0
Method Print Class CustomersBrowseByCountryClass
Local cName,myout
cName := &(self:cWindowName).textName.Value
cName = ALLTRIM ( cName )
IF .not. empty(cName)
ENDIF
Return 0
Method closewindow Class CustomersBrowseByCountryClass
&(self:cWindowName).Release ( )
Return 0
Method OpenDataWindow Class CustomersBrowseByCountryClass
Local nvalue,myout
nvalue := &(self:cWindowName).grid1.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method BeforeSearch Class CustomersBrowseByCountryClass
&(self:cWindowName).grid1.DeleteAllItems ( )
&(self:cWindowName).grid1.Value := 0
Return 0
Method SearchAdd(temp_array) Class CustomersBrowseByCountryClass
&(self:cWindowName).grid1.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class CustomersBrowseByCountryClass
&(self:cWindowName).Timer1.Enabled := p1
Return 0
Method GetSearchValue Class CustomersBrowseByCountryClass
Local nVlue,cCountry
nVlue := &(self:cWindowName).combocountry.Value
IF nVlue=0
Return ""
ENDIF
cCountry := self:aCountryItems[nVlue]
Return cCountry


End Of Resistance

*-------------------------------------------------------------------*

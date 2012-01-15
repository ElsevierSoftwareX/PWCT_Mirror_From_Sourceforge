*---------------------------------------------------------------------------*
* Time : 05:20:43    Date : 01/14/2012
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
#include "xhb.ch"
Function BROWSECUSTOMERS
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

Resistance R_BROWSECUSTOMERS_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_BROWSECUSTOMERS_18smart1() code
class CustomerBrowseClass From SystemDatabase
Data cWindowName init "CustomerBrowseWindow"
Data tablename init "Customers"
Data column init "CustName"
Data PrimaryKey init "ID"
Data columns init {"CustName","CustAddress","CustPhone"}
Data columnstitles init {"Name","Address","Phone"}
Data columnswidths init {200,100,100}
Data nCountry init 0
Data CountryItems init {}
Data CountryItemsIDs init {}
Method showwindow
Method closewindow
Method OpenDataWindow
Method showdatawindow
Method print
Method BeforeSearch
Method SearchAdd
Method settimer
Method GetSearchValue
Method SearchBy
Method SearchByCombo
EndClass
Method showwindow Class CustomerBrowseClass
if !iswindowdefined( CustomerBrowseWindow )
DEFINE WINDOW CustomerBrowseWindow ;
AT 10 ,10 ;
WIDTH 525 ;
HEIGHT 440 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "Search/Browse Window" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {239,239,239}

@ 0 ,-7 LABEL lbl1 ;
VALUE "  Search By Name" ;
WIDTH 526 ;
HEIGHT 41 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {157,203,253} ;
FONTCOLOR {0,0,0}
@ 52 ,127 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 175 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {0,0,128} ;
FONTCOLOR {255,255,255}

@ 50 ,304 BUTTONEX btn1;
CAPTION "Search";
ON CLICK self:search(0)  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 366 ,410 BUTTONEX btnclose;
CAPTION "Close";
ON CLICK self:closewindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 88 ,5 GRID Grid1;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 510 ;
HEIGHT 257 ;
HEADERS self:columnstitles;
WIDTHS self:columnswidths ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 54 ,4 COMBOBOX combo1;
ON CHANGE self:SearchBy(CustomerBrowseWindow.combo1.value)  ;
WIDTH 120 ;
ITEMS {"Name","Address","Phone","Country"} ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("Country","Country",@self:CountryItems,"ID",@self:CountryItemsIDs)
@ 54 ,5 COMBOBOX combo2;
ON CHANGE self:SearchByCombo(CustomerBrowseWindow.combo2.value)  ;
WIDTH 120 ;
HEIGHT 300;
ITEMS self:CountryItems ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 50 ,413 BUTTONEX btn2;
CAPTION "Print";
ON CLICK Self:Print()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

CustomerBrowseWindow.Center ( )
CustomerBrowseWindow.combo2.AddItem ( "<<Back" )
CustomerBrowseWindow.combo2.Hide ( )
ACTIVATE WINDOW CustomerBrowseWindow
EndIF

Return 0
Method ShowDataWindow(nValue) Class CustomerBrowseClass
CustomersDataObj:LFindRecord := true
CustomersDataObj:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = CustomersDataObj:ShowWindow()
Return 0
Method Print Class CustomerBrowseClass
Local cName,myout
cName := CustomerBrowseWindow.textName.Value
cName = ALLTRIM ( cName )
AccessReportObj:filter := ""
IF .not. empty(cName)
AccessReportObj:filter := '(('+self:tablename+'.'+self:column+') Like "'+cName+'*")'
ENDIF
myout = AccessReportObj:ShowWindow()
Return 0
Method closewindow Class CustomerBrowseClass
CustomerBrowseWindow.Release ( )
Return 0
Method OpenDataWindow Class CustomerBrowseClass
Local nvalue,myout
nvalue := CustomerBrowseWindow.grid1.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method BeforeSearch Class CustomerBrowseClass
CustomerBrowseWindow.grid1.DeleteAllItems ( )
CustomerBrowseWindow.grid1.Value := 0
Return 0
Method SearchAdd(temp_array) Class CustomerBrowseClass
CustomerBrowseWindow.grid1.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class CustomerBrowseClass
CustomerBrowseWindow.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class CustomerBrowseClass
cName := CustomerBrowseWindow.textName.Value
Return cName
Method SearchBy(Prm) Class CustomerBrowseClass
IF Prm=1
self:column := "CustName"
CustomerBrowseWindow.lbl1.Value := "  Search By Name"
ENDIF
IF Prm=2
self:column := "CustAddress"
CustomerBrowseWindow.lbl1.Value := "  Search By Address"
ENDIF
IF Prm=3
self:column := "CustPhone"
CustomerBrowseWindow.lbl1.Value := "  Search By Phone"
ENDIF
IF Prm=4
self:column := "Country_id"
CustomerBrowseWindow.lbl1.Value := "  Search By Country"
CustomerBrowseWindow.combo1.Hide ( )
CustomerBrowseWindow.combo2.Show ( )
CustomerBrowseWindow.btn1.Enabled := False
CustomerBrowseWindow.textname.Enabled := False
ENDIF
Return ""
Method SearchByCombo(Prm) Class CustomerBrowseClass
Count := CustomerBrowseWindow.combo2.ItemCount
IF Prm=Count
CustomerBrowseWindow.combo2.Hide ( )
CustomerBrowseWindow.combo1.Show ( )
CustomerBrowseWindow.lbl1.Value := "  Search By Name"
CustomerBrowseWindow.btn1.Enabled := True
CustomerBrowseWindow.textname.Enabled := True
Return 0
ENDIF
self:nCountry := self:CountryItemsIDs[Prm]
self:column := "Country_id"
self:search ( 1 )
Return ""



End Of Resistance

*-------------------------------------------------------------------*

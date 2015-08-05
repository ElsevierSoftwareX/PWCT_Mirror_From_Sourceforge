*---------------------------------------------------------------------------*
* Time : 10:02:19    Date : 07/20/2015
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
Function loadcustomersbrowser
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

Resistance R_customersbrowser_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_customersbrowser_19art1() code
class customersBrowseClass From SystemDatabase
Data cWindowName init "customersBrowseWindow"
Data tablename init "customers"
Data column init "castName"
Data PrimaryKey init "id"
Data columns init {"castName","castPhone"}
Data columnstitles init {"Name","Phone"}
Data columnswidths init {200,100}
Method showwindow
Method closewindow
Method OpenDataWindow
Method showdatawindow
Method print
Method BeforeSearch
Method SearchAdd
Method settimer
Method GetSearchValue
Method SetCoulmn
EndClass
Method showwindow Class customersBrowseClass
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
BACKCOLOR {255,255,255} 

@ 13 ,138 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 410 ;
BACKCOLOR {255,255,217} ;
FONTCOLOR {0,0,0} 

@ 10 ,575 BUTTONEX btn1;
CAPTION "Search ";
FONTCOLOR {0,0,0};
BACKCOLOR {255,255,255};
ON CLICK self:Search()  ;
WIDTH 100 HEIGHT 30 ;
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
FONT "Arial" SIZE 16 ;
BACKCOLOR {255,225,255} ;
FONTCOLOR {0,0,0}
@ 60 ,574 BUTTONEX btnPrint;
CAPTION "Print";
ON CLICK self:print()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 13 ,28 COMBOBOX combofind;
ON CHANGE self:SetCoulmn()  ;
WIDTH 100 ;
HEIGHT 300;
ITEMS self:columnstitles ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

&(self:cWindowName).Center ( )
ACTIVATE WINDOW &(self:cWindowName)
EndIF

Return 0
Method ShowDataWindow(nValue) Class customersBrowseClass
custobj:LFindRecord := true
custobj:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = custobj:ShowWindow()
Return 0
Method Print Class customersBrowseClass
Local cName,myout
cName := &(self:cWindowName).textName.Value
cName = ALLTRIM ( cName )
CustomersReportobj:filter := ""
IF .not. empty(cName)
CustomersReportobj:filter := '(('+self:tablename+'.'+self:column+') Like "'+cName+'*")'
ENDIF
myout = CustomersReportobj:ShowWindow()
Return 0
Method closewindow Class customersBrowseClass
&(self:cWindowName).Release ( )
Return 0
Method OpenDataWindow Class customersBrowseClass
Local nvalue,myout
nvalue := &(self:cWindowName).grid1.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method BeforeSearch Class customersBrowseClass
&(self:cWindowName).grid1.DeleteAllItems ( )
&(self:cWindowName).grid1.Value := 0
Return 0
Method SearchAdd(temp_array) Class customersBrowseClass
&(self:cWindowName).grid1.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class customersBrowseClass
&(self:cWindowName).Timer1.Enabled := p1
Return 0
Method GetSearchValue Class customersBrowseClass
cName := &(self:cWindowName).textName.Value
cName = STRTRAN(cName,"[","")
cName = STRTRAN(cName,"'","")
Return cName
Method SetCoulmn Class customersBrowseClass
Local nIndex
nIndex := &(self:cWindowName).combofind.Value
self:column := self:Columns[nIndex]
Return 0


End Of Resistance

*-------------------------------------------------------------------*

*---------------------------------------------------------------------------*
* Time : 04:49:16    Date : 07/21/2015
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
Function loadselectitems
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

Resistance R_selectitems_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_selectitems_19art1() code
class selectItemsClass From SystemDatabase
Data cWindowName init "selectItemsWindow"
Data tablename init "Items"
Data column init "searchcolumn"
Data column init "ItemName"
Data PrimaryKey init "id"
Data columns init {"ItemName"}
Data columnstitles init {"Item Name"}
Data columnswidths init {200}
Data nSelectedID init 0
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
Method showwindow Class selectItemsClass
if !iswindowdefined( &(self:cWindowName) )
DEFINE WINDOW &(self:cWindowName) ;
AT 10 ,10 ;
WIDTH 696 ;
HEIGHT 361 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "select Items Window" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,225,255} 

@ 13 ,10 LABEL lbl1 ;
VALUE " Items Name " ;
WIDTH 120 ;
HEIGHT 31 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 13 ,138 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 410 ;
BACKCOLOR {255,255,198} ;
FONTCOLOR {0,0,0} 

@ 10 ,575 BUTTONEX btn1;
CAPTION "Search ";
FONTCOLOR {0,0,0};
BACKCOLOR {151,203,255};
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
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

&(self:cWindowName).Center ( )
ACTIVATE WINDOW &(self:cWindowName)
EndIF

Return 0
Method ShowDataWindow(nValue) Class selectItemsClass
self:nSelectedID := self:ResultPrimaryKeys[nvalue]
self:nSelectedID = VAL ( self:nSelectedID )
out = self:closewindow()
Return 0
Method Print Class selectItemsClass
Local cName,myout
cName := &(self:cWindowName).textName.Value
cName = ALLTRIM ( cName )
IF .not. empty(cName)
ENDIF
Return 0
Method closewindow Class selectItemsClass
&(self:cWindowName).Release ( )
Return 0
Method OpenDataWindow Class selectItemsClass
Local nvalue,myout
nvalue := &(self:cWindowName).grid1.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method BeforeSearch Class selectItemsClass
&(self:cWindowName).grid1.DeleteAllItems ( )
&(self:cWindowName).grid1.Value := 0
Return 0
Method SearchAdd(temp_array) Class selectItemsClass
&(self:cWindowName).grid1.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class selectItemsClass
&(self:cWindowName).Timer1.Enabled := p1
Return 0
Method GetSearchValue Class selectItemsClass
cName := &(self:cWindowName).textName.Value
cName = STRTRAN(cName,"[","")
cName = STRTRAN(cName,"'","")
Return cName


End Of Resistance

*-------------------------------------------------------------------*

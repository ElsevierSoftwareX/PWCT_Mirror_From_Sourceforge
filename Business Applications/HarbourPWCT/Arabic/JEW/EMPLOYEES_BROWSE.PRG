*---------------------------------------------------------------------------*
* Time : 15:48:06    Date : 08/03/2012
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
Function EMPLOYEES_BROWSE
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

Resistance R_EMPLOYEES_BROWSE_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_EMPLOYEES_BROWSE_18smart1() code
class EmployeesBrowseClass From SYSTEMDATABASE
Data databasename init ""
Data tablename init "Employees_All"
Data column init "f_name"
Data PrimaryKey init "id"
Data columns init {"f_company","f_address","f_city","f_country","f_name"}
Data columnsTitles init {"ÇáÔÑßÉ","ÇáÚäæÇä","ÇáãÏíäÉ","ÇáÏæáÉ","ÇáÇÓã"}
Data ResultPrimaryKeys init {}
Method showwindow
Method closewindow
Method OpenDataWindow
Method showdatawindow
Method print
Method BeforeSearch
Method GetSearchValue
Method settimer
Method SearchAdd
Method SetColumn
EndClass
Method showwindow Class EmployeesBrowseClass
if !iswindowdefined( EmployeesBrowseWindow )
DEFINE WINDOW EmployeesBrowseWindow ;
AT 10 ,10 ;
WIDTH 817 ;
HEIGHT 361 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "ÈÍË Úä ãæÙÝ" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255}

@ -13 ,-12 IMAGE image1;
PICTURE GetStartUpFolder()+"\images\back.jpg";
STRETCH ;
WIDTH 830 HEIGHT 360
@ 18 ,252 TEXTBOX textNameBrowse;
ON ENTER self:search()  ;
HEIGHT 30 ;
WIDTH 320 ;
BACKCOLOR {0,255,128} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 18 ,136 BUTTONEX btn1;
CAPTION "ÈÍË";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 103 ,28 BUTTONEX btnclose;
CAPTION "ÇÛáÇÞ";
ON CLICK self:closewindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 59 ,135 GRID Grid1browse;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 620 ;
HEIGHT 250 ;
HEADERS {"ÇáÔÑßÉ","ÇáÚäæÇä","ÇáãÏíäÉ","ÇáÏæáÉ","ÇáÇÓã"};
WIDTHS {100,100,100,100,200} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1,1,1,1} ;
FONTCOLOR {0,0,0}
@ 59 ,27 BUTTONEX btnPrint;
CAPTION "ØÈÇÚÉ";
ON CLICK self:print()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 18 ,585 COMBOBOX comboFind;
ON CHANGE self:SetColumn()  ;
WIDTH 170 ;
HEIGHT 100;
ITEMS self:ColumnsTitles ;
VALUE 5 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

EmployeesBrowseWindow.Center ( )
ACTIVATE WINDOW EmployeesBrowseWindow
EndIF

Return 0
Method ShowDataWindow(nValue) Class EmployeesBrowseClass
employeesDataObject:LFindRecord := true
employeesDataObject:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = employeesDataObject:ShowWindow()
Return 0
Method Print Class EmployeesBrowseClass
Local cName,myout
cName := EmployeesBrowseWindow.textNamebrowse.Value
cName = ALLTRIM ( cName )
employeesreportobject:filter := ""
IF .not. empty(cName)
employeesreportobject:filter := '((employees_all.' + self:column + ') Like "'+cName+'*")'
ENDIF
myout = employeesreportobject:ShowWindow()
Return 0
Method SetColumn Class EmployeesBrowseClass
Local nIndex
nIndex := EmployeesBrowseWindow.ComboFind.Value
self:Column := self:Columns[nIndex]
Return 0
Method closewindow Class EmployeesBrowseClass
EmployeesBrowseWindow.Release ( )
Return 0
Method OpenDataWindow Class EmployeesBrowseClass
Local nvalue,myout
nvalue := EmployeesBrowseWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method GetSearchValue Class EmployeesBrowseClass
cName := EmployeesBrowseWindow.textNamebrowse.Value
Return cName
Method SetTimer(p1) Class EmployeesBrowseClass
EmployeesBrowseWindow.Timer1.Enabled := p1
Return 0
Method BeforeSearch Class EmployeesBrowseClass
EmployeesBrowseWindow.grid1browse.DeleteAllItems ( )
EmployeesBrowseWindow.grid1browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class EmployeesBrowseClass
EmployeesBrowseWindow.grid1browse.AddItem ( temp_array )
Return 0



End Of Resistance

*-------------------------------------------------------------------*

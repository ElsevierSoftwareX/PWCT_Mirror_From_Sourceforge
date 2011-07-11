*---------------------------------------------------------------------------*
* Time : 17:11:44    Date : 07/11/2011
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
Function REVIEWERS_BROWSE
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

Resistance R_REVIEWERS_BROWSE_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_REVIEWERS_BROWSE_15speed1() code
class ReviewersBrowseClass From SYSTEMDATABASE
Data databasename init ""
Data tablename init "Reviewers"
Data column init "f_name"
Data PrimaryKey init "id"
Data columns init {"f_company","f_address","f_city","f_email","f_name"}
Data columnsTitles init {"ÇáÌÇãÚÉ","ÇáÚäæÇä","ÇáãÏíäÉ","ÇáÇíãíá","ÇáÇÓã"}
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
Method showwindow Class ReviewersBrowseClass
if !iswindowdefined( ReviewersBrowseWindow )
DEFINE WINDOW ReviewersBrowseWindow ;
AT 10 ,10 ;
WIDTH 875 ;
HEIGHT 361 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "ÈÍË Úä ãÑÇÌÚ" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255}

@ -13 ,-3 IMAGE image1;
PICTURE GetStartUpFolder()+"\image\back.jpg";
STRETCH ;
WIDTH 890 HEIGHT 360
@ 18 ,302 TEXTBOX textNameBrowse;
ON ENTER self:search()  ;
HEIGHT 30 ;
WIDTH 320 ;
BACKCOLOR {0,255,128} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 18 ,186 BUTTONEX btn1;
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
WIDTH 720 ;
HEIGHT 250 ;
HEADERS {"ÇáÌÇãÚÉ","ÇáÚäæÇä","ÇáãÏíäÉ","ÇáÇíãíá","ÇáÇÓã"};
WIDTHS {100,100,100,200,200} ;
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
@ 18 ,635 COMBOBOX comboFind;
ON CHANGE self:SetColumn()  ;
WIDTH 170 ;
HEIGHT 100;
ITEMS self:ColumnsTitles ;
VALUE 5 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

ReviewersBrowseWindow.Center ( )
ACTIVATE WINDOW ReviewersBrowseWindow
EndIF

Return 0
Method ShowDataWindow(nValue) Class ReviewersBrowseClass
ReviewersDataObject:LFindRecord := true
ReviewersDataObject:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = ReviewersDataObject:ShowWindow()
Return 0
Method Print Class ReviewersBrowseClass
Local cName,myout
cName := ReviewersBrowseWindow.textNamebrowse.Value
cName = ALLTRIM ( cName )
Reviewersreportobject:filter := ""
IF .not. empty(cName)
Reviewersreportobject:filter := '((Reviewers.' + self:column + ') Like "'+cName+'*")'
ENDIF
myout = Reviewersreportobject:ShowWindow()
Return 0
Method SetColumn Class ReviewersBrowseClass
Local nIndex
nIndex := ReviewersBrowseWindow.ComboFind.Value
self:Column := self:Columns[nIndex]
Return 0
Method closewindow Class ReviewersBrowseClass
ReviewersBrowseWindow.Release ( )
Return 0
Method OpenDataWindow Class ReviewersBrowseClass
Local nvalue,myout
nvalue := ReviewersBrowseWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method GetSearchValue Class ReviewersBrowseClass
cName := ReviewersBrowseWindow.textNamebrowse.Value
Return cName
Method SetTimer(p1) Class ReviewersBrowseClass
ReviewersBrowseWindow.Timer1.Enabled := p1
Return 0
Method BeforeSearch Class ReviewersBrowseClass
ReviewersBrowseWindow.grid1browse.DeleteAllItems ( )
ReviewersBrowseWindow.grid1browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class ReviewersBrowseClass
ReviewersBrowseWindow.grid1browse.AddItem ( temp_array )
Return 0



End Of Resistance

*-------------------------------------------------------------------*

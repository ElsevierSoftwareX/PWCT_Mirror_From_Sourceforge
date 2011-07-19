*---------------------------------------------------------------------------*
* Time : 04:02:35    Date : 07/19/2011
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2011]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : Mahmoud Programming Language (HarbourPWCT) 
*---------------------------------------------------------------------------*
* Compilers                   : Borland C/C++ & Harbour/xHarbour
* GUI Framework               : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
Function PROJECTREVIEWS_DATA
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

Resistance R_PROJECTREVIEWS_DATA_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PROJECTREVIEWS_DATA_15speed1() code
class ProjectReviewsClass From SYSTEMDATABASE
Data cWindowName init "ProjectReviewsWindow"
Data TableName init "ProjectReviews_All"
Data ReportName init "ProjectReviews"
Data ReportWindowName init "ProjectReviewsReportWindow"
Data nID init 0
Data column init "ProjectName"
Data PrimaryKey init "id"
Data columns init {"Recommendation","ReviewText","ReviewDate","f_name","ProjectName","ID"}
Data nProject init 0
Data Projectitems init {}
Data Projectitemsids init {}
Data nReviewer init 0
Data Revieweritems init {}
Data Revieweritemsids init {}
Data cReviewDate init ""
Data cReviewText init ""
Data cRecommendation init ""
Data cAttachment init ""
Data cFileName init ""
Data FindTitles init {"«· Ê’Ì…","‰’ «·„—«Ã⁄…"," «—ÌŒ «·„—«Ã⁄…","«”„ «·„—«Ã⁄","«”„ «·„‘—Ê⁄","ﬂÊœ «·„—«Ã⁄…"}
Method showwindow
Method closewindow
Method SetMode
Method UserInterface2Class
Method Class2ADO
Method ADO2Class
Method Class2UserInterface
Method addrecord
Method ClearRecord
Method AutoGotoRecord
Method OpenDataWindow
Method showdatawindow
Method myTimer
Method BeforeSearch
Method SearchAdd
Method GetSearchValue
Method settimer
Method CheckFind
Method CheckAttach
Method AttachUpload
Method AttachRemove
Method printdata
EndClass
Method showwindow Class ProjectReviewsClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( &(self:cWindowName) )
DEFINE WINDOW &(self:cWindowName) ;
AT 10 ,10 ;
WIDTH 1073 ;
HEIGHT 647 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "„—«Ã⁄… «·„‘«—Ì⁄" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 44 ,3 IMAGE image1;
PICTURE GetStartUpFolder()+"\Image\back.jpg";
STRETCH ;
WIDTH 1050 HEIGHT 520
@ 570 ,322 BUTTONEX btnFirst;
CAPTION "»œ«Ì…";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 570 ,385 BUTTONEX btnNext;
CAPTION " «·Ï";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 570 ,512 BUTTONEX btnLast;
CAPTION "‰Â«Ì…";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 570 ,139 BUTTONEX btnClose;
CAPTION "«€·«ﬁ";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 79 HEIGHT 27 ;
FONT "arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 570 ,449 BUTTONEX btnPrev;
CAPTION "”«»ﬁ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 570 ,231 BUTTONEX btnDel;
CAPTION "Õ–›";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 570 ,678 BUTTONEX btnsave;
CAPTION "Õ›Ÿ";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 570 ,590 BUTTONEX btncancel;
CAPTION "«·€«¡";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 570 ,766 BUTTONEX btnedit;
CAPTION " ⁄œÌ·";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 570 ,833 BUTTONEX btnadd;
CAPTION "«÷«›…";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 7 ,144 LABEL lblTitle ;
VALUE "                                                                       „—«Ã⁄… «·„‘«—Ì⁄" ;
WIDTH 910 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 52 ,219 TEXTBOX textNamebrowse;
ON ENTER self:Search()  ;
HEIGHT 30 ;
WIDTH 530 ;
BACKCOLOR {0,255,128} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 51 ,109 BUTTONEX btn1browse;
CAPTION "»ÕÀ";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 93 ,13 GRID Grid1browse;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 1030 ;
HEIGHT 290 ;
HEADERS self:FindTitles;
WIDTHS {150,150,150,200,250,100} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1,1,1,1,1} ;
FONTCOLOR {0,0,0}
@ 51 ,753 COMBOBOX comboFind;
ON CHANGE self:CheckFind()  ;
WIDTH 200 ;
HEIGHT 100;
ITEMS self:FindTitles ;
VALUE 5 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
myout = self:LoadLookupTable("Projects","ProjectName",@self:ProjectItems,"id",@self:ProjectItemsIDS)
@ 392 ,880 LABEL lblProject ;
VALUE "«·„‘—Ê⁄" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 392 ,525 COMBOBOX comboproject;
WIDTH 340 ;
HEIGHT 100;
ITEMS self:Projectitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("Reviewers","f_name",@self:ReviewerItems,"id",@self:ReviewerItemsIDS)
@ 395 ,459 LABEL lblReviewer ;
VALUE "«·„—«Ã⁄" ;
WIDTH 50 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 393 ,35 COMBOBOX comboreviewer;
WIDTH 410 ;
HEIGHT 100;
ITEMS self:Revieweritems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 438 ,880 LABEL lblReviewText ;
VALUE "‰’ «·„—«Ã⁄…" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 434 ,525 TEXTBOX textReviewText;
HEIGHT 30 ;
WIDTH 340 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 434 ,457 LABEL lblRecommendation ;
VALUE "«· Ê’Ì…" ;
WIDTH 60 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 433 ,33 TEXTBOX textRecommendation;
HEIGHT 30 ;
WIDTH 410 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 478 ,880 LABEL lblReviewDate ;
VALUE " «—ÌŒ «” ·«„ «·„—«Ã⁄…" ;
WIDTH 150 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 479 ,695 DATEPICKER dateReviewDate;
WIDTH 170 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
DATEFORMAT "dd/MM/yyyy" ;
FONTCOLOR {0,0,0}
myout = RightToLeftControl ( self:cWindowName,"comboproject" )
myout = RightToLeftControl ( Self:cWindowName,"comboreviewer" )
@ 520 ,169 BUTTONEX btnAttachCheck;
CAPTION " Õ„Ì· «·„—›ﬁ« ";
ON CLICK self:checkattach()  ;
WIDTH 140 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 520 ,323 BUTTONEX btnAttachupload;
CAPTION "—›⁄ «·„—›ﬁ« ";
ON CLICK self:attachupload()  ;
WIDTH 120 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 520 ,33 BUTTONEX btnAttachRemove;
CAPTION " Õ–› «·„—›ﬁ« ";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:attachremove()  ;
WIDTH 120 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 520 ,880 LABEL lblattachment ;
VALUE "«·„—›ﬁ« " ;
WIDTH 110 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 520 ,525 TEXTBOX textFileName;
HEIGHT 30 ;
WIDTH 340 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 5 ,2 BUTTONEX btnPrint;
CAPTION "ÿ»«⁄… «·»Ì«‰« ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:printdata()  ;
WIDTH 143 HEIGHT 34 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

&(self:cWindowName).Center ( )
myout = self:showrecord()
myout = self:setmode(2)
&(self:cWindowName).Timer1.Enabled := false
&(self:cWindowName).textFileName.Enabled := false
ACTIVATE WINDOW &(self:cWindowName)
EndIF

Return 0
Method UserInterface2Class Class ProjectReviewsClass
self:nProject := &(self:cWindowName).ComboProject.Value
self:nProject := self:ProjectItemsids[self:nProject]
self:nReviewer := &(self:cWindowName).ComboReviewer.Value
self:nReviewer := self:ReviewerItemsids[self:nReviewer]
self:cReviewText := &(self:cWindowName).textReviewText.Value
self:cRecommendation := &(self:cWindowName).textRecommendation.Value
self:cReviewDate := &(self:cWindowName).dateReviewDate.Value
self:cReviewDate := dtoc(self:cReviewDate)
Return 0
Method Class2ADO Class ProjectReviewsClass
self:oRS:fields:item("Projectid"):value := self:nProject
self:oRS:fields:item("Reviewerid"):value := self:nReviewer
self:oRS:fields:item("ReviewText"):value := self:cReviewText
self:oRS:fields:item("Recommendation"):value := self:cRecommendation
self:oRS:fields:item("ReviewDate"):value := self:cReviewDate
self:oRS:fields:item("attachment"):value := self:cAttachment
self:oRS:fields:item("filename"):value := Self:cFilename
Return 0
Method ADO2Class Class ProjectReviewsClass
self:nProject := self:oRS:fields:item("ProjectID"):value
self:nReviewer := self:oRS:fields:item("ReviewerID"):value
self:cReviewText := self:oRS:fields:item("ReviewText"):value
self:cRecommendation := self:oRS:fields:item("Recommendation"):value
self:cReviewDate := self:oRS:fields:item("ReviewDate"):value
self:cAttachment := self:oRS:fields:item("Attachment"):value
self:cFileName := self:oRS:fields:item("filename"):value
Return 0
Method Class2UserInterface Class ProjectReviewsClass
self:nProject = self:LookupIDToIndex(self:nProject,@self:ProjectItemsids)
&(self:cWindowName).ComboProject.Value := self:nProject
self:nReviewer = self:LookupIDToIndex(self:nReviewer,@self:ReviewerItemsids)
&(self:cWindowName).ComboReviewer.Value := self:nReviewer
&(self:cWindowName).textReviewText.Value := self:cReviewText
&(self:cWindowName).textRecommendation.Value := self:cRecommendation
&(self:cWindowName).dateReviewDate.Value := ctod(self:cReviewDate)
&(self:cWindowName).textFileName.Value := self:cFileName
Return 0
Method ClearRecord Class ProjectReviewsClass
self:nProject := 0
self:nReviewer := 0
self:cReviewDate := ""
self:cReviewText := ""
self:cRecommendation := ""
self:cFileName := ""
self:cAttachment := ""
Return 0
Method OpenDataWindow Class ProjectReviewsClass
Local nvalue,myout
nvalue := &(self:cWindowName).grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class ProjectReviewsClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class ProjectReviewsClass
myout = self:search()
&(self:cWindowName).Timer1.Enabled := false
Return 0
Method setmode(p1) Class ProjectReviewsClass
IF p1 = 1
&(self:cWindowName).btnfirst.Enabled := false
&(self:cWindowName).btnnext.Enabled := false
&(self:cWindowName).btnprev.Enabled := false
&(self:cWindowName).btnlast.Enabled := false
&(self:cWindowName).btndel.Enabled := false
&(self:cWindowName).btnclose.Enabled := false
&(self:cWindowName).btnsave.Enabled := true
&(self:cWindowName).btncancel.Enabled := true
&(self:cWindowName).btnedit.Enabled := false
&(self:cWindowName).btnadd.Enabled := false
&(self:cWindowName).comboProject.Enabled := true
&(self:cWindowName).comboReviewer.Enabled := true
&(self:cWindowName).textReviewText.Enabled := true
&(self:cWindowName).textRecommendation.Enabled := true
&(self:cWindowName).dateReviewDate.Enabled := true
&(self:cWindowName).btnAttachUpload.Enabled := True
&(self:cWindowName).btnAttachRemove.Enabled := True
&(self:cWindowName).btnAttachCheck.Enabled := false
&(self:cWindowName).textNameBrowse.Enabled := false
&(self:cWindowName).btn1Browse.Enabled := false
&(self:cWindowName).Grid1Browse.Enabled := false
&(self:cWindowName).ComboFind.Enabled := False
ENDIF
IF p1 = 2
&(self:cWindowName).btnfirst.Enabled := true
&(self:cWindowName).btnnext.Enabled := true
&(self:cWindowName).btnprev.Enabled := true
&(self:cWindowName).btnlast.Enabled := true
&(self:cWindowName).btndel.Enabled := true
&(self:cWindowName).btnclose.Enabled := true
&(self:cWindowName).btnsave.Enabled := false
&(self:cWindowName).btncancel.Enabled := false
&(self:cWindowName).btnedit.Enabled := true
&(self:cWindowName).btnadd.Enabled := true
&(self:cWindowName).comboProject.Enabled := False
&(self:cWindowName).comboReviewer.Enabled := False
&(self:cWindowName).textReviewText.Enabled := False
&(self:cWindowName).textRecommendation.Enabled := False
&(self:cWindowName).dateReviewDate.Enabled := False
&(self:cWindowName).btnAttachUpload.Enabled := False
&(self:cWindowName).btnAttachRemove.Enabled := False
&(self:cWindowName).btnAttachCheck.Enabled := true
&(self:cWindowName).btn1Browse.Enabled := True
&(self:cWindowName).Grid1Browse.Enabled := True
&(self:cWindowName).ComboFind.Enabled := True
&(self:cWindowName).textNameBrowse.Enabled := true
ENDIF
self:OperationMode := p1
Return 0
Method CheckFind Class ProjectReviewsClass
Local nIndex
nIndex := &(self:cWindowName).ComboFind.Value
self:Column := self:Columns[nIndex]
Return 0
Method CheckAttach Class ProjectReviewsClass
IF .not. empty(self:cAttachment)
PutFile := PutFile (  , ;
, ;
, ;
, ;
self:cFileName )
IF .not. empty(putfile)
DO streamtofile WITH self:cAttachment,putfile
ELSE
MyOut := MSGBOX(" „ ≈·€«¡ «·⁄„·Ì…","Õ”‰«")
ENDIF
ELSE
MyOut := MSGBOX("·«ÌÊÃœ „—›ﬁ« ","⁄›Ê«")
ENDIF
Return 0
Method AttachUpload Class ProjectReviewsClass
GetFile := GetFile (  , ;
"  —›⁄ „·›" , ;
, ;
, ;
)
CheckFile := File(getfile)
IF checkfile
self:cAttachment = filetostream ( getfile )
self:cfilename = getfilename ( getfile )
&(self:cWindowName).textFileName.Value := self:cFileName
ENDIF
Return 0
Method AttachRemove Class ProjectReviewsClass
mydata := self:oRS:fields:item("attachment"):value
IF .not. empty(mydata)
self:cAttachment := ""
self:cFileName := ""
&(self:cWindowName).textFileName.Value := self:cFileName
ELSE
MyOut := MSGBOX("·«ÌÊÃœ „—›ﬁ« ","⁄›Ê«")
ENDIF
Return 0
Method PrintData Class ProjectReviewsClass
Local myid,myout,ProjectReviewsreportobject
mymax := self:oRS:RecordCount
IF mymax = 0
MyOut := MSGBOX("·«ÌÊÃœ ”Ã·« ","⁄›Ê«")
Return 0
ENDIF
myid := self:oRS:fields:item("id"):value
myid = STR ( myid )
ProjectReviewsreportobject = ProjectReviewsreportClass()
ProjectReviewsreportobject:filter := "id = "+myid
ProjectReviewsreportobject:ReportName := self:ReportName
ProjectReviewsreportobject:cWindowName := self:ReportWindowName
myout = ProjectReviewsreportobject:ShowWindow()
Return 0
Method closewindow Class ProjectReviewsClass
myout = self:disconnect()
&(self:cWindowName).Release ( )
Return 0
Method AddRecord Class ProjectReviewsClass
self:addrec := true
myout = self:setmode(1)
myout = self:ClearRecord()
myout = self:Class2UserInterface()
Return 0
Method AutoGotoRecord Class ProjectReviewsClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( &(self:cWindowName) )
myout = self:showrecord()
&(self:cWindowName).SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class ProjectReviewsClass
&(self:cWindowName).grid1browse.DeleteAllItems ( )
&(self:cWindowName).grid1browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class ProjectReviewsClass
&(self:cWindowName).grid1browse.AddItem ( temp_array )
Return 0
Method GetSearchValue Class ProjectReviewsClass
cName := &(self:cWindowName).textNamebrowse.Value
Return cName
Method SetTimer(p1) Class ProjectReviewsClass
&(self:cWindowName).Timer1.Enabled := p1
Return 0



End Of Resistance

*-------------------------------------------------------------------*

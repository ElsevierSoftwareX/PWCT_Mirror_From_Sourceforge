*---------------------------------------------------------------------------*
* Time : 09:53:18    Date : 07/31/2011
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
Function PROJECTS_DATA
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

Resistance R_PROJECTS_DATA_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PROJECTS_DATA_15speed1() code
class ProjectsClass From SYSTEMDATABASE
Data cWindowName init "ProjectsWindow"
Data TableName init "projects_all"
Data SubTable1 init "projectprocesses"
Data SubTable2 init "projectreviews"
Data WindowTitle init "„‘«—Ì⁄ Õ«÷‰…  ﬁ‰Ì… «·„⁄·Ê„«  Ê«·« ’«·« "
Data PermissionID init 83
Data ReportName init "Projects"
Data ReportWindowName init "ProjectsReportWindow"
Data checkboxdatecomplete init false
Data column init "projectname"
Data PrimaryKey init "id"
Data columns init {"stage","projectowner","projectname","ID"}
Data FindTitles init {"«·„—Õ·…","«·ÃÊ«·","«·»—Ìœ «·«·ﬂ —Ê‰Ï","ﬂ·„«  „› «ÕÌ…"," «—ÌŒ «·«‰ Â«¡"," «—ÌŒ «·«” Ì·«„","„Êﬁ⁄ «·„«·ﬂ","’«Õ» «·„‘—Ê⁄","«”„ «·„‘—Ê⁄","ﬂÊœ «·„‘—Ê⁄"}
Data cProjectName init ""
Data cProjectOwner init ""
Data cOwnerLocation init ""
Data cKeywords init ""
Data cDateReceived init ""
Data cDateComplete init ""
Data cFileName init ""
Data cAttachment init ""
Data cFileName2 init ""
Data cAttachment2 init ""
Data cEmail init ""
Data cMobile init ""
Data findcolumns init {"stage","mobile","email","keywords","datecomplete","datereceived","ownerlocation","projectowner","projectname","ID"}
Data nStage init 0
Data StageItems init {}
Data StageItemsIDs init {}
Data nID init 0
Method showwindow
Method closewindow
Method SetMode
Method UserInterface2Class
Method Class2ADO
Method ADO2Class
Method Class2UserInterface
Method ClearRecord
Method OpenDataWindow
Method showdatawindow
Method myTimer
Method AutoGotoRecord
Method BeforeSearch
Method SearchAdd
Method GetSearchValue
Method settimer
Method CheckFind
Method OnBeforeDelete
Method CheckAttach
Method AttachUpload
Method AttachRemove
Method CheckAttach2
Method AttachUpload2
Method AttachRemove2
Method printdata
Method CheckData
EndClass
Method showwindow Class ProjectsClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( &(self:cWindowName) )
DEFINE WINDOW &(self:cWindowName) ;
AT 10 ,10 ;
WIDTH 1127 ;
HEIGHT 674 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE self:WindowTitle ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 44 ,4 IMAGE image1;
PICTURE GetStartUpFolder()+"\Image\back.jpg";
STRETCH ;
WIDTH 1110 HEIGHT 530
@ 590 ,554 BUTTONEX btnFirst;
CAPTION "»œ«Ì…";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 590 ,427 BUTTONEX btnNext;
CAPTION " «·Ï";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 590 ,364 BUTTONEX btnLast;
CAPTION "‰Â«Ì…";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 590 ,191 BUTTONEX btnClose;
CAPTION "«€·«ﬁ";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 590 ,490 BUTTONEX btnPrev;
CAPTION "”«»ﬁ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 590 ,283 BUTTONEX btnDel;
CAPTION "Õ–›";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 590 ,710 BUTTONEX btnsave;
CAPTION "Õ›Ÿ";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 590 ,622 BUTTONEX btncancel;
CAPTION "«·€«¡";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 590 ,788 BUTTONEX btnedit;
CAPTION " ⁄œÌ·";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 590 ,855 BUTTONEX btnadd;
CAPTION "«÷«›…";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 6 ,153 LABEL lblTitle ;
VALUE "                                                                               «·„‘«—Ì⁄" ;
WIDTH 960 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 53 ,254 TEXTBOX textNamebrowse;
ON ENTER self:search()  ;
HEIGHT 30 ;
WIDTH 530 ;
BACKCOLOR {0,255,128} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 52 ,151 BUTTONEX btn1browse;
CAPTION "»ÕÀ";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 93 ,13 GRID Grid1browse;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 1090 ;
HEIGHT 210 ;
HEADERS {"«·„—Õ·…","’«Õ» «·„‘—Ê⁄","«”„ «·„‘—Ê⁄","ﬂÊœ «·„‘—Ê⁄"};
WIDTHS {260,290,410,100} ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1,1,1} ;
FONTCOLOR {0,0,0}
@ 53 ,785 COMBOBOX comboFind;
ON CHANGE self:CheckFind()  ;
WIDTH 180 ;
HEIGHT 200;
ITEMS self:FindTitles ;
VALUE 9 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 324 ,963 LABEL lblProjectName ;
VALUE "«”„ «·„‘—Ê⁄" ;
WIDTH 110 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 323 ,599 TEXTBOX textProjectName;
HEIGHT 30 ;
WIDTH 340 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 323 ,468 LABEL lblProjectOwner ;
VALUE "’«Õ» «·„‘—Ê⁄" ;
WIDTH 110 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 322 ,100 TEXTBOX textProjectOwner;
HEIGHT 30 ;
WIDTH 340 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 369 ,963 LABEL lblOwnerLocation ;
VALUE "„Êﬁ⁄ «·„«·ﬂ" ;
WIDTH 110 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 368 ,599 TEXTBOX textOwnerLocation;
HEIGHT 30 ;
WIDTH 340 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 368 ,468 LABEL lblKeywords ;
VALUE "ﬂ·„«  „› «ÕÌ…" ;
WIDTH 110 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 366 ,100 TEXTBOX textKeywords;
HEIGHT 30 ;
WIDTH 340 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 453 ,963 LABEL lbldatereceived ;
VALUE " «—ÌŒ «·«” ·«„" ;
WIDTH 110 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 453 ,789 DATEPICKER dateReceived;
WIDTH 150 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 453 ,468 DATEPICKER dateComplete;
WIDTH 180 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 452 ,657 CHECKBOX checkboxDateComplete;
CAPTION " «—ÌŒ «·«‰ Â«¡";
WIDTH 120;
Height 30;
FONT "Arial" SIZE 14 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 491 ,260 BUTTONEX btnAttachCheck;
CAPTION " Õ„Ì· «·„—›ﬁ« ";
ON CLICK self:checkattach()  ;
WIDTH 180 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 492 ,468 BUTTONEX btnAttachupload;
CAPTION "—›⁄ «·„—›ﬁ« ";
ON CLICK self:attachupload()  ;
WIDTH 120 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 490 ,100 BUTTONEX btnAttachRemove;
CAPTION " Õ–› «·„—›ﬁ« ";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:attachremove()  ;
WIDTH 120 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 499 ,963 LABEL lblattachment ;
VALUE "«·„—›ﬁ« " ;
WIDTH 110 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 492 ,599 TEXTBOX textFileName;
HEIGHT 30 ;
WIDTH 340 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 531 ,260 BUTTONEX btnAttachCheck2;
CAPTION " Õ„Ì· «·„—›ﬁ« ";
ON CLICK self:checkattach2()  ;
WIDTH 180 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 532 ,468 BUTTONEX btnAttachupload2;
CAPTION "—›⁄ «·„—›ﬁ« ";
ON CLICK self:attachupload2()  ;
WIDTH 120 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 530 ,100 BUTTONEX btnAttachRemove2;
CAPTION " Õ–› «·„—›ﬁ« ";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:attachremove2()  ;
WIDTH 120 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 532 ,599 TEXTBOX textFileName2;
HEIGHT 30 ;
WIDTH 340 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 412 ,967 LABEL lblemail ;
VALUE "«·»—Ìœ «·«·ﬂ —Ê‰Ï" ;
WIDTH 110 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 412 ,599 TEXTBOX texteMail;
HEIGHT 30 ;
WIDTH 340 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 412 ,468 LABEL lblMobile ;
VALUE "«·ÃÊ«·" ;
WIDTH 110 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 412 ,100 TEXTBOX textMobile;
HEIGHT 30 ;
WIDTH 340 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 453 ,390 LABEL lblStage ;
VALUE "«·„—Õ·…" ;
WIDTH 50 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("Stages","Stage",@self:StageItems,"id",@self:StageItemsIDS)
@ 453 ,100 COMBOBOX comboStage;
WIDTH 270 ;
HEIGHT 100;
ITEMS self:Stageitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
myout = RightToLeftControl ( self:cWindowName,"datereceived" )
myout = RightToLeftControl ( Self:cWindowName,"datecomplete" )
@ 5 ,3 BUTTONEX btnPrint;
CAPTION "ÿ»«⁄… «·»Ì«‰« ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:printdata()  ;
WIDTH 143 HEIGHT 34 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
myout = RightToLeftControl ( self:cWindowName,"comboStage" )
END WINDOW

&(self:cWindowName).Center ( )
myout = self:showrecord()
myout = self:setmode(2)
&(self:cWindowName).Timer1.Enabled := false
&(self:cWindowName).textFileName.Enabled := false
&(self:cWindowName).textFileName2.Enabled := false
calldll32("SetWindowLong","USER32.DLL",GetFormHandle (self:cWindowName),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle (self:cWindowName), -20),0x400000,0x100000))
ACTIVATE WINDOW &(self:cWindowName)
EndIF

Return 0
Method UserInterface2Class Class ProjectsClass
self:cProjectName := &(self:cWindowName).textProjectName.Value
self:cProjectOwner := &(self:cWindowName).textProjectOwner.Value
self:cOwnerLocation := &(self:cWindowName).textOwnerLocation.Value
self:cKeywords := &(self:cWindowName).textKeywords.Value
self:cDateReceived := &(self:cWindowName).dateReceived.Value
self:cDateComplete := &(self:cWindowName).dateComplete.Value
self:cDateReceived = DTOC ( self:cDateReceived )
self:cDateComplete = DTOC ( self:cDateComplete )
self:cEmail := &(self:cWindowName).texteMail.Value
self:cMobile := &(self:cWindowName).textMobile.Value
self:nStage := &(self:cWindowName).ComboStage.Value
self:nStage := self:StageItemsids[self:nStage]
self:CheckBoxDateComplete := &(self:cWindowName).CheckBoxDateComplete.Value
Return 0
Method Class2ADO Class ProjectsClass
self:oRS:fields:item("ProjectName"):value := self:cProjectName
self:oRS:fields:item("ProjectOwner"):value := self:cProjectOwner
self:oRS:fields:item("OwnerLocation"):value := self:cOwnerLocation
self:oRS:fields:item("Keywords"):value := self:cKeywords
self:oRS:fields:item("DateReceived"):value := self:cDateReceived
self:oRS:fields:item("attachment"):value := self:cAttachment
self:oRS:fields:item("filename"):value := Self:cFilename
self:oRS:fields:item("attachment2"):value := self:cAttachment2
self:oRS:fields:item("filename2"):value := Self:cFilename2
self:oRS:fields:item("eMail"):value := self:cEmail
self:oRS:fields:item("Mobile"):value := self:cMobile
self:oRS:fields:item("stageid"):value := self:nstage
self:oRS:fields:item("checkboxdatecomplete"):value := self:CheckboxDateComplete
IF self:checkboxdatecomplete = true
self:oRS:fields:item("DateComplete"):value := self:cDateComplete
ELSE
self:oRS:fields:item("DateComplete"):value := ""
ENDIF
Return 0
Method ADO2Class Class ProjectsClass
self:cProjectName := self:oRS:fields:item("ProjectName"):value
self:cProjectOwner := self:oRS:fields:item("ProjectOwner"):value
self:cOwnerLocation := self:oRS:fields:item("OwnerLocation"):value
self:cKeywords := self:oRS:fields:item("Keywords"):value
self:cDateReceived := self:oRS:fields:item("DateReceived"):value
self:cDateComplete := self:oRS:fields:item("DateComplete"):value
self:cFileName := self:oRS:fields:item("filename"):value
self:cAttachment := self:oRS:fields:item("Attachment"):value
self:cFileName2 := self:oRS:fields:item("filename2"):value
self:cAttachment2 := self:oRS:fields:item("Attachment2"):value
Self:cEmail := self:oRS:fields:item("eMail"):value
Self:cMobile := self:oRS:fields:item("Mobile"):value
self:nStage := self:oRS:fields:item("StageID"):value
self:nID := self:oRS:fields:item("ID"):value
self:CheckBoxDateComplete := self:oRS:fields:item("CheckBoxDateComplete"):value
Return 0
Method Class2UserInterface Class ProjectsClass
&(self:cWindowName).textProjectName.Value := self:cProjectName
&(self:cWindowName).textProjectOwner.Value := self:cProjectOwner
&(self:cWindowName).textOwnerLocation.Value := self:cOwnerLocation
&(self:cWindowName).textKeywords.Value := self:cKeywords
&(self:cWindowName).dateReceived.Value := ctod(self:cDateReceived)
&(self:cWindowName).textFileName.Value := self:cFileName
&(self:cWindowName).textFileName2.Value := self:cFileName2
&(self:cWindowName).texteMail.Value := self:cEmail
&(self:cWindowName).textMobile.Value := self:cMobile
self:nStage = self:LookupIDToIndex(self:nStage,@self:StageItemsids)
&(self:cWindowName).ComboStage.Value := self:nStage
&(self:cWindowName).CheckBoxDateComplete.Value := self:CheckBoxDateComplete
IF self:checkboxdatecomplete = true
&(self:cWindowName).dateComplete.Value := ctod(self:cDateComplete)
ENDIF
Return 0
Method ClearRecord Class ProjectsClass
self:cProjectName := ""
self:cProjectOwner := ""
self:cOwnerLocation := ""
self:cKeywords := ""
set century on
self:cDateReceived = DATE()
set century on
self:cDateComplete = DATE()
self:cDateReceived = DTOC ( self:cDateReceived )
self:cDateComplete = DTOC ( self:cDateComplete )
self:cFileName := ""
self:cAttachment := ""
self:cFileName2 := ""
self:cAttachment2 := ""
self:cEmail := ""
self:cMobile := ""
self:CheckBoxDateComplete := False
Return 0
Method OpenDataWindow Class ProjectsClass
Local nvalue,myout
nvalue := &(self:cWindowName).grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
&(self:cWindowName).Grid1Browse.SetFocus ( )
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class ProjectsClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class ProjectsClass
myout = self:search()
&(self:cWindowName).Timer1.Enabled := false
Return 0
Method setmode(p1) Class ProjectsClass
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
&(self:cWindowName).textProjectName.Enabled := true
&(self:cWindowName).textProjectOwner.Enabled := true
&(self:cWindowName).textOwnerLocation.Enabled := true
&(self:cWindowName).textKeywords.Enabled := true
&(self:cWindowName).dateReceived.Enabled := true
&(self:cWindowName).dateComplete.Enabled := true
&(self:cWindowName).btnAttachUpload.Enabled := True
&(self:cWindowName).btnAttachRemove.Enabled := True
&(self:cWindowName).btnAttachCheck.Enabled := false
&(self:cWindowName).btnAttachUpload2.Enabled := True
&(self:cWindowName).btnAttachRemove2.Enabled := True
&(self:cWindowName).btnAttachCheck2.Enabled := false
&(self:cWindowName).textNameBrowse.Enabled := false
&(self:cWindowName).btn1Browse.Enabled := false
&(self:cWindowName).Grid1Browse.Enabled := false
&(self:cWindowName).ComboFind.Enabled := False
&(self:cWindowName).texteMail.Enabled := True
&(self:cWindowName).textMobile.Enabled := True
&(self:cWindowName).ComboStage.Enabled := True
&(self:cWindowName).CheckBoxDateComplete.Enabled := true
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
&(self:cWindowName).textProjectName.Enabled := false
&(self:cWindowName).textProjectOwner.Enabled := false
&(self:cWindowName).textOwnerLocation.Enabled := false
&(self:cWindowName).textKeywords.Enabled := false
&(self:cWindowName).dateReceived.Enabled := false
&(self:cWindowName).dateComplete.Enabled := False
&(self:cWindowName).btnAttachUpload.Enabled := False
&(self:cWindowName).btnAttachRemove.Enabled := False
&(self:cWindowName).btnAttachCheck.Enabled := true
&(self:cWindowName).btnAttachUpload2.Enabled := False
&(self:cWindowName).btnAttachRemove2.Enabled := False
&(self:cWindowName).btnAttachCheck2.Enabled := true
&(self:cWindowName).btn1Browse.Enabled := True
&(self:cWindowName).Grid1Browse.Enabled := True
&(self:cWindowName).ComboFind.Enabled := True
&(self:cWindowName).textNameBrowse.Enabled := true
&(self:cWindowName).texteMail.Enabled := False
&(self:cWindowName).textMobile.Enabled := False
&(self:cWindowName).ComboStage.Enabled := False
&(self:cWindowName).CheckBoxDateComplete.Enabled := false
ENDIF
self:OperationMode := p1
Return 0
Method CheckFind Class ProjectsClass
Local nIndex
nIndex := &(self:cWindowName).ComboFind.Value
self:Column := self:findColumns[nIndex]
Return 0
Method OnBeforeDelete Class ProjectsClass
Local myProjectid
myProjectid := self:nID
IF .not. myProjectID= 0
myProjectid = STR ( myProjectid )
myout = self:oCon:execute("delete from " + self:subtable1 + " where projectid = " + myprojectid)
myout = self:oCon:execute("delete from " + self:subtable2 + " where projectid = " + myprojectid)
ENDIF
Return 0
Method CheckAttach Class ProjectsClass
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
Method AttachUpload Class ProjectsClass
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
Method AttachRemove Class ProjectsClass
mydata := self:oRS:fields:item("attachment"):value
IF .not. empty(mydata)
self:cAttachment := ""
self:cFileName := ""
&(self:cWindowName).textFileName.Value := self:cFileName
ELSE
MyOut := MSGBOX("·«ÌÊÃœ „—›ﬁ« ","⁄›Ê«")
ENDIF
Return 0
Method CheckAttach2 Class ProjectsClass
IF .not. empty(self:cAttachment2)
PutFile := PutFile (  , ;
, ;
, ;
, ;
self:cFileName )
IF .not. empty(putfile)
DO streamtofile WITH self:cAttachment2,putfile
ELSE
MyOut := MSGBOX(" „ ≈·€«¡ «·⁄„·Ì…","Õ”‰«")
ENDIF
ELSE
MyOut := MSGBOX("·«ÌÊÃœ „—›ﬁ« ","⁄›Ê«")
ENDIF
Return 0
Method AttachUpload2 Class ProjectsClass
GetFile := GetFile (  , ;
"  —›⁄ „·›" , ;
, ;
, ;
)
CheckFile := File(getfile)
IF checkfile
self:cAttachment2 = filetostream ( getfile )
self:cfilename2 = getfilename ( getfile )
&(self:cWindowName).textFileName2.Value := self:cFileName2
ENDIF
Return 0
Method AttachRemove2 Class ProjectsClass
mydata := self:oRS:fields:item("attachment2"):value
IF .not. empty(mydata)
self:cAttachment2 := ""
self:cFileName2 := ""
&(self:cWindowName).textFileName2.Value := self:cFileName2
ELSE
MyOut := MSGBOX("·«ÌÊÃœ „—›ﬁ« ","⁄›Ê«")
ENDIF
Return 0
Method PrintData Class ProjectsClass
Local myid,myout,ProjectsReportObject
mymax := self:oRS:RecordCount
IF mymax = 0
MyOut := MSGBOX("·«ÌÊÃœ ”Ã·« ","⁄›Ê«")
Return 0
ENDIF
myid := self:oRS:fields:item("id"):value
myid = STR ( myid )
ProjectsReportObject = ProjectsReportClass()
Projectsreportobject:filter := "id = "+myid
Projectsreportobject:reportname := self:reportname
Projectsreportobject:cWindowName := self:ReportWindowName
myout = Projectsreportobject:ShowWindow()
Return 0
Method CheckData Class ProjectsClass
Local myret,cName
myret := true
cName := &(self:cWindowName).TextProjectName.Value
cName = ALLTRIM ( cName )
IF cName == ""
MyOut := MSGBOX("ÌÃ» ≈œŒ«· «”„ «·„‘—Ê⁄","⁄›Ê«")
myret := False
ENDIF
Return myret
Method closewindow Class ProjectsClass
myout = self:disconnect()
&(self:cWindowName).Release ( )
Return 0
Method AutoGotoRecord Class ProjectsClass
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
Method BeforeSearch Class ProjectsClass
&(self:cWindowName).grid1browse.DeleteAllItems ( )
&(self:cWindowName).grid1browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class ProjectsClass
&(self:cWindowName).grid1browse.AddItem ( temp_array )
Return 0
Method GetSearchValue Class ProjectsClass
cName := &(self:cWindowName).textNamebrowse.Value
Return cName
Method SetTimer(p1) Class ProjectsClass
&(self:cWindowName).Timer1.Enabled := p1
Return 0



End Of Resistance

*-------------------------------------------------------------------*

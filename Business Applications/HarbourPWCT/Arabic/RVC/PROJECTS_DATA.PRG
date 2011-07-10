*---------------------------------------------------------------------------*
* Time : 17:14:32    Date : 07/10/2011
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
Data TableName init "projects"
Data column init "projectname"
Data PrimaryKey init "id"
Data columns init {"keywords","datecomplete","datereceived","ownerlocation","projectowner","projectname","ID"}
Data FindTitles init {"ﬂ·„«  „› «ÕÌ…"," «—ÌŒ «·«‰ Â«¡"," «—ÌŒ «·«” Ì·«„","„Êﬁ⁄ «·„«·ﬂ","’«Õ» «·„‘—Ê⁄","«”„ «·„‘—Ê⁄","ﬂÊœ «·„‘—Ê⁄"}
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
EndClass
Method showwindow Class ProjectsClass
IF .not. UsersObject:CheckPermission(83)
MyOut := MSGBOX("«·œŒÊ· ·Â–Â «·‰«›–… €Ì— „’—Õ »Â","⁄›Ê«")
Return 0
ENDIF
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( ProjectsWindow )
DEFINE WINDOW ProjectsWindow ;
AT 10 ,10 ;
WIDTH 1127 ;
HEIGHT 647 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "«·„‘«—Ì⁄" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64}

@ 45 ,4 IMAGE image1;
PICTURE GetStartUpFolder()+"\Image\back.jpg";
STRETCH ;
WIDTH 1110 HEIGHT 520
@ 570 ,554 BUTTONEX btnFirst;
CAPTION "»œ«Ì…";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 570 ,427 BUTTONEX btnNext;
CAPTION " «·Ï";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 570 ,364 BUTTONEX btnLast;
CAPTION "‰Â«Ì…";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 570 ,191 BUTTONEX btnClose;
CAPTION "«€·«ﬁ";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 570 ,490 BUTTONEX btnPrev;
CAPTION "”«»ﬁ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 570 ,283 BUTTONEX btnDel;
CAPTION "Õ–›";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 570 ,710 BUTTONEX btnsave;
CAPTION "Õ›Ÿ";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 570 ,622 BUTTONEX btncancel;
CAPTION "«·€«¡";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 570 ,788 BUTTONEX btnedit;
CAPTION " ⁄œÌ·";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 570 ,855 BUTTONEX btnadd;
CAPTION "«÷«›…";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 6 ,4 LABEL lblTitle ;
VALUE "                                                                                                   «·„‘«—Ì⁄" ;
WIDTH 1110 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 53 ,249 TEXTBOX textNamebrowse;
HEIGHT 30 ;
WIDTH 530 ;
BACKCOLOR {0,255,128} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 52 ,146 BUTTONEX btn1browse;
CAPTION "»ÕÀ";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 93 ,13 GRID Grid1browse;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 1090 ;
HEIGHT 210 ;
HEADERS self:FindTitles;
WIDTHS {170,120,120,150,200,210,100} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1,1,1,1,1,1} ;
FONTCOLOR {0,0,0}
@ 53 ,781 COMBOBOX comboFind;
ON CHANGE self:CheckFind()  ;
WIDTH 190 ;
HEIGHT 200;
ITEMS self:FindTitles ;
VALUE 6 ;
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

@ 414 ,963 LABEL lbldatereceived ;
VALUE " «—ÌŒ «·«” Ì·«„" ;
WIDTH 110 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 413 ,759 DATEPICKER dateReceived;
WIDTH 180 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 413 ,468 LABEL lbldatecomplete ;
VALUE " «—ÌŒ «·«‰ Â«¡" ;
WIDTH 110 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 412 ,260 DATEPICKER dateComplete;
WIDTH 180 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 451 ,260 BUTTONEX btnAttachCheck;
CAPTION " Õ„Ì· «·„—›ﬁ« ";
ON CLICK self:checkattach()  ;
WIDTH 180 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 452 ,468 BUTTONEX btnAttachupload;
CAPTION "—›⁄ «·„—›ﬁ« ";
ON CLICK self:attachupload()  ;
WIDTH 120 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 450 ,100 BUTTONEX btnAttachRemove;
CAPTION " Õ–› «·„—›ﬁ« ";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:attachremove()  ;
WIDTH 120 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 459 ,963 LABEL lblattachment ;
VALUE "«·„—›ﬁ« " ;
WIDTH 110 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 452 ,599 TEXTBOX textFileName;
HEIGHT 30 ;
WIDTH 340 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

@ 491 ,260 BUTTONEX btnAttachCheck2;
CAPTION " Õ„Ì· «·„—›ﬁ« ";
ON CLICK self:checkattach2()  ;
WIDTH 180 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 492 ,468 BUTTONEX btnAttachupload2;
CAPTION "—›⁄ «·„—›ﬁ« ";
ON CLICK self:attachupload2()  ;
WIDTH 120 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 490 ,100 BUTTONEX btnAttachRemove2;
CAPTION " Õ–› «·„—›ﬁ« ";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:attachremove2()  ;
WIDTH 120 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 492 ,599 TEXTBOX textFileName2;
HEIGHT 30 ;
WIDTH 340 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}

DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
myout = RightToLeftControl ( "ProjectsWindow","datereceived" )
myout = RightToLeftControl ( "ProjectsWindow","datecomplete" )
END WINDOW

ProjectsWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
ProjectsWindow.Timer1.Enabled := false
ProjectsWindow.textFileName.Enabled := false
ProjectsWindow.textFileName2.Enabled := false
ACTIVATE WINDOW ProjectsWindow
EndIF

Return 0
Method UserInterface2Class Class ProjectsClass
self:cProjectName := ProjectsWindow.textProjectName.Value
self:cProjectOwner := ProjectsWindow.textProjectOwner.Value
self:cOwnerLocation := ProjectsWindow.textOwnerLocation.Value
self:cKeywords := ProjectsWindow.textKeywords.Value
self:cDateReceived := ProjectsWindow.dateReceived.Value
self:cDateComplete := ProjectsWindow.dateComplete.Value
self:cDateReceived = DTOC ( self:cDateReceived )
self:cDateComplete = DTOC ( self:cDateComplete )
Return 0
Method Class2ADO Class ProjectsClass
self:oRS:fields:item("ProjectName"):value := self:cProjectName
self:oRS:fields:item("ProjectOwner"):value := self:cProjectOwner
self:oRS:fields:item("OwnerLocation"):value := self:cOwnerLocation
self:oRS:fields:item("Keywords"):value := self:cKeywords
self:oRS:fields:item("DateReceived"):value := self:cDateReceived
self:oRS:fields:item("DateComplete"):value := self:cDateComplete
self:oRS:fields:item("attachment"):value := self:cAttachment
self:oRS:fields:item("filename"):value := Self:cFilename
self:oRS:fields:item("attachment2"):value := self:cAttachment2
self:oRS:fields:item("filename2"):value := Self:cFilename2
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
Return 0
Method Class2UserInterface Class ProjectsClass
ProjectsWindow.textProjectName.Value := self:cProjectName
ProjectsWindow.textProjectOwner.Value := self:cProjectOwner
ProjectsWindow.textOwnerLocation.Value := self:cOwnerLocation
ProjectsWindow.textKeywords.Value := self:cKeywords
ProjectsWindow.dateReceived.Value := ctod(self:cDateReceived)
ProjectsWindow.dateComplete.Value := ctod(self:cDateComplete)
ProjectsWindow.textFileName.Value := self:cFileName
ProjectsWindow.textFileName2.Value := self:cFileName2
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
Return 0
Method OpenDataWindow Class ProjectsClass
Local nvalue,myout
nvalue := ProjectsWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ProjectsWindow.Grid1Browse.SetFocus ( )
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class ProjectsClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class ProjectsClass
myout = self:search()
ProjectsWindow.Timer1.Enabled := false
Return 0
Method setmode(p1) Class ProjectsClass
IF p1 = 1
ProjectsWindow.btnfirst.Enabled := false
ProjectsWindow.btnnext.Enabled := false
ProjectsWindow.btnprev.Enabled := false
ProjectsWindow.btnlast.Enabled := false
ProjectsWindow.btndel.Enabled := false
ProjectsWindow.btnclose.Enabled := false
ProjectsWindow.btnsave.Enabled := true
ProjectsWindow.btncancel.Enabled := true
ProjectsWindow.btnedit.Enabled := false
ProjectsWindow.btnadd.Enabled := false
ProjectsWindow.textProjectName.Enabled := true
ProjectsWindow.textProjectOwner.Enabled := true
ProjectsWindow.textOwnerLocation.Enabled := true
ProjectsWindow.textKeywords.Enabled := true
ProjectsWindow.dateReceived.Enabled := true
ProjectsWindow.dateComplete.Enabled := true
ProjectsWindow.btnAttachUpload.Enabled := True
ProjectsWindow.btnAttachRemove.Enabled := True
ProjectsWindow.btnAttachCheck.Enabled := false
ProjectsWindow.btnAttachUpload2.Enabled := True
ProjectsWindow.btnAttachRemove2.Enabled := True
ProjectsWindow.btnAttachCheck2.Enabled := false
ProjectsWindow.textNameBrowse.Enabled := false
ProjectsWindow.btn1Browse.Enabled := false
ProjectsWindow.Grid1Browse.Enabled := false
ProjectsWindow.ComboFind.Enabled := False
ENDIF
IF p1 = 2
ProjectsWindow.btnfirst.Enabled := true
ProjectsWindow.btnnext.Enabled := true
ProjectsWindow.btnprev.Enabled := true
ProjectsWindow.btnlast.Enabled := true
ProjectsWindow.btndel.Enabled := true
ProjectsWindow.btnclose.Enabled := true
ProjectsWindow.btnsave.Enabled := false
ProjectsWindow.btncancel.Enabled := false
ProjectsWindow.btnedit.Enabled := true
ProjectsWindow.btnadd.Enabled := true
ProjectsWindow.textProjectName.Enabled := false
ProjectsWindow.textProjectOwner.Enabled := false
ProjectsWindow.textOwnerLocation.Enabled := false
ProjectsWindow.textKeywords.Enabled := false
ProjectsWindow.dateReceived.Enabled := false
ProjectsWindow.dateComplete.Enabled := False
ProjectsWindow.btnAttachUpload.Enabled := False
ProjectsWindow.btnAttachRemove.Enabled := False
ProjectsWindow.btnAttachCheck.Enabled := true
ProjectsWindow.btnAttachUpload2.Enabled := False
ProjectsWindow.btnAttachRemove2.Enabled := False
ProjectsWindow.btnAttachCheck2.Enabled := true
ProjectsWindow.btn1Browse.Enabled := True
ProjectsWindow.Grid1Browse.Enabled := True
ProjectsWindow.ComboFind.Enabled := True
ProjectsWindow.textNameBrowse.Enabled := true
ENDIF
self:OperationMode := p1
Return 0
Method CheckFind Class ProjectsClass
Local nIndex
nIndex := ProjectsWindow.ComboFind.Value
self:Column := self:Columns[nIndex]
Return 0
Method OnBeforeDelete Class ProjectsClass
Return myout
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
ProjectsWindow.textFileName.Value := self:cFileName
ENDIF
Return 0
Method AttachRemove Class ProjectsClass
mydata := self:oRS:fields:item("attachment"):value
IF .not. empty(mydata)
self:cAttachment := ""
self:cFileName := ""
ProjectsWindow.textFileName.Value := self:cFileName
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
ProjectsWindow.textFileName2.Value := self:cFileName2
ENDIF
Return 0
Method AttachRemove2 Class ProjectsClass
mydata := self:oRS:fields:item("attachment2"):value
IF .not. empty(mydata)
self:cAttachment2 := ""
self:cFileName2 := ""
ProjectsWindow.textFileName2.Value := self:cFileName2
ELSE
MyOut := MSGBOX("·«ÌÊÃœ „—›ﬁ« ","⁄›Ê«")
ENDIF
Return 0
Method closewindow Class ProjectsClass
myout = self:disconnect()
ProjectsWindow.Release ( )
Return 0
Method AutoGotoRecord Class ProjectsClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( ProjectsWindow )
myout = self:showrecord()
ProjectsWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class ProjectsClass
ProjectsWindow.grid1browse.DeleteAllItems ( )
ProjectsWindow.grid1browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class ProjectsClass
ProjectsWindow.grid1browse.AddItem ( temp_array )
Return 0
Method GetSearchValue Class ProjectsClass
cName := ProjectsWindow.textNamebrowse.Value
Return cName
Method SetTimer(p1) Class ProjectsClass
ProjectsWindow.Timer1.Enabled := p1
Return 0



End Of Resistance

*-------------------------------------------------------------------*

*---------------------------------------------------------------------------*
* Time : 00:41:08    Date : 05/16/2014
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2014.04.15
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
*---------------------------------------------------------------------------*
#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
Function loadSTUDENTSDETAILS
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

Resistance R_STUDENTSDETAILS_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_STUDENTSDETAILS_19art1() code
class StudentsDetailsClass From SystemDatabase
Data TableName init "students_All"
Data column init "Name"
Data PrimaryKey init "id"
Data columns init {"ID","Name","Class","Section","Rollno","Fathername","Contactno"}
Data nID init 0
Data ColTitles init {"ID","Name","Class","Section","Roll No","Father Name","Contact No"}
Data ColWidths init {50,150,50,50,50,150,100}
Data sName init ""
Data nClass init 0
Data ClassItems init {}
Data ClassItemsIDs init {}
Data nSection init 0
Data SectionItems init {}
Data SectionItemsIDs init {}
Data bPhoto init ""
Data sRollno init ""
Data sFathername init ""
Data sAddress init ""
Data sContactno init ""
Data dDateofbirth init date()
Method showwindow
Method closewindow
Method SetMode
Method UserInterface2Class
Method Class2ADO
Method ADO2Class
Method Class2UserInterface
Method ClearRecord
Method AutoGotoRecord
Method OpenDataWindow
Method showdatawindow
Method myTimer
Method BeforeSearch
Method SearchAdd
Method settimer
Method GetSearchValue
Method ShowImage
Method SetImage
EndClass
Method showwindow Class StudentsDetailsClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( StudentsDetailsWindow )
DEFINE WINDOW StudentsDetailsWindow ;
AT 10 ,10 ;
WIDTH 1186 ;
HEIGHT 644 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "Data/Browse Window" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {192,192,192} 

@ 560 ,427 BUTTONEX btnFirst;
CAPTION "First";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 560 ,490 BUTTONEX btnNext;
CAPTION "Next";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 560 ,616 BUTTONEX btnLast;
CAPTION "Last";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 560 ,772 BUTTONEX btnClose;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 560 ,553 BUTTONEX btnPrev;
CAPTION "Prev ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 560 ,685 BUTTONEX btnDel;
CAPTION "Delete";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 560 ,265 BUTTONEX btnsave;
CAPTION "Save";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 560 ,336 BUTTONEX btncancel;
CAPTION "Cancel";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 560 ,193 BUTTONEX btnedit;
CAPTION "Edit";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 559 ,110 BUTTONEX btnadd;
CAPTION "Add";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 6 ,4 LABEL lblTitle ;
VALUE "                                                      Data/Browse Window" ;
WIDTH 750 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 225 ,60 LABEL lblAddress ;
VALUE "Name" ;
WIDTH 70 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {192,192,192} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 229 ,182 TEXTBOX textName;
HEIGHT 29 ;
WIDTH 387 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 42 ,95 LABEL lbl1browse ;
VALUE "Name" ;
WIDTH 89 ;
HEIGHT 34 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 43 ,188 TEXTBOX textNamebrowse;
HEIGHT 27 ;
WIDTH 274 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0} 

@ 42 ,519 BUTTONEX btn1browse;
CAPTION "Search";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 94 ,45 GRID Grid1browse;
ON CHANGE self:OpenDataWindow  ;
WIDTH 703 ;
HEIGHT 123 ;
HEADERS self:ColTitles;
WIDTHS self:ColWidths ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
myout = self:LoadLookupTable("Class","Class",@self:ClassItems,"id",@self:ClassItemsIDs)
@ 263 ,60 LABEL lbl3 ;
VALUE "Class " ;
WIDTH 56 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {192,192,192} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 268 ,182 COMBOBOX comboClass;
WIDTH 166 ;
HEIGHT 300;
ITEMS self:ClassItems ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("Section","Section",@self:SectionItems,"id",@self:SectionItemsIDs)
@ 299 ,60 LABEL lbl4 ;
VALUE "Section " ;
WIDTH 75 ;
HEIGHT 35 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {192,192,192} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 302 ,181 COMBOBOX comboSection;
WIDTH 171 ;
HEIGHT 300;
ITEMS self:SectionItems ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 441 ,887 BUTTONEX btnSetImage;
CAPTION "Browse Photo From File";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK self:SetImage()  ;
WIDTH 257 HEIGHT 32 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
Public oActivex
oActivex := TActiveX():New( "StudentsDetailsWindow", "shell.Explorer.2" , 2 , 772 , 399 , 394)
oActivex:Load()
@ 342 ,60 LABEL lbl5 ;
VALUE "Roll No " ;
WIDTH 74 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {192,192,192} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 376 ,60 LABEL lbl6 ;
VALUE "Father Name " ;
WIDTH 123 ;
HEIGHT 33 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {192,192,192} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 413 ,60 LABEL lbl7 ;
VALUE "Address " ;
WIDTH 73 ;
HEIGHT 31 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {192,192,192} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 452 ,60 LABEL lbl8 ;
VALUE "Contact No " ;
WIDTH 105 ;
HEIGHT 38 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {192,192,192} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 336 ,182 TEXTBOX textRollno;
HEIGHT 28 ;
WIDTH 173 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 375 ,182 TEXTBOX textFathername;
HEIGHT 29 ;
WIDTH 375 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 414 ,182 TEXTBOX textAddress;
HEIGHT 33 ;
WIDTH 578 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 453 ,182 TEXTBOX textContactno;
HEIGHT 32 ;
WIDTH 223 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 498 ,58 LABEL lbl9 ;
VALUE "Date Of Birth" ;
WIDTH 117 ;
HEIGHT 29 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {192,192,192} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 499 ,180 DATEPICKER Dateofbirth;
WIDTH 205 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

StudentsDetailsWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
StudentsDetailsWindow.Timer1.Enabled := false
ACTIVATE WINDOW StudentsDetailsWindow
EndIF

Return 0
Method UserInterface2Class Class StudentsDetailsClass
self:sName := StudentsDetailsWindow.textName.Value
self:nClass := StudentsDetailsWindow.comboClass.Value
self:nClass := self:ClassItemsIDs[self:nClass]
self:nSection := StudentsDetailsWindow.comboSection.Value
self:nSection := self:SectionItemsIDs[self:nSection]
self:sRollno := StudentsDetailsWindow.textRollno.Value
self:sFathername := StudentsDetailsWindow.textFathername.Value
self:sAddress := StudentsDetailsWindow.textAddress.Value
self:sContactno := StudentsDetailsWindow.textContactno.Value
self:dDateofbirth := StudentsDetailsWindow.Dateofbirth.Value
Return 0
Method Class2ADO Class StudentsDetailsClass
self:oRS:fields:item(alltrim("Name")):value := self:sName
self:oRS:fields:item(alltrim("Classid")):value := self:nClass
self:oRS:fields:item(alltrim("Photo")):value := self:bPhoto
self:oRS:fields:item(alltrim("Sectionid")):value := self:nSection
self:oRS:fields:item(alltrim("Rollno")):value := self:sRollno
self:oRS:fields:item(alltrim("Fathername")):value := self:sFathername
self:oRS:fields:item(alltrim("Address")):value := self:sAddress
self:oRS:fields:item(alltrim("Contactno")):value := self:sContactno
self:oRS:fields:item(alltrim("Dateofbirth")):value := self:dDateofbirth
Return 0
Method ADO2Class Class StudentsDetailsClass
self:sName := self:oRS:fields:item(alltrim("Name")):value
self:nClass := self:oRS:fields:item(alltrim("Classid")):value
self:bPhoto := self:oRS:fields:item(alltrim("Photo")):value
self:nSection := self:oRS:fields:item(alltrim("Sectionid")):value
self:sRollno := self:oRS:fields:item(alltrim("Rollno")):value
self:sFathername := self:oRS:fields:item(alltrim("Fathername")):value
self:sAddress := self:oRS:fields:item(alltrim("Address")):value
self:sContactno := self:oRS:fields:item(alltrim("Contactno")):value
self:dDateofbirth := self:oRS:fields:item(alltrim("Dateofbirth")):value
Return 0
Method Class2UserInterface Class StudentsDetailsClass
StudentsDetailsWindow.textName.Value := self:sName
myout = self:LookupIDToIndex(self:nClass,@self:ClassItemsIDs)
StudentsDetailsWindow.comboClass.Value := self:nClass
myout = self:ShowImage()
myout = self:LookupIDToIndex(self:nSection,@self:SectionItemsIDs)
StudentsDetailsWindow.comboSection.Value := self:nSection
StudentsDetailsWindow.textRollno.Value := self:sRollno
StudentsDetailsWindow.textFathername.Value := self:sFathername
StudentsDetailsWindow.textAddress.Value := self:sAddress
StudentsDetailsWindow.textContactno.Value := self:sContactno
StudentsDetailsWindow.Dateofbirth.Value := self:dDateofbirth
Return 0
Method ClearRecord Class StudentsDetailsClass
self:sName := ""
self:nClass := 0
self:bPhoto := ""
self:nSection := 0
self:sRollno := ""
self:sFathername := ""
self:sAddress := ""
self:sContactno := ""
self:dDateofbirth := date()
Return 0
Method setmode(p1) Class StudentsDetailsClass
IF p1 = 1
StudentsDetailsWindow.btnfirst.Enabled := false
StudentsDetailsWindow.btnnext.Enabled := false
StudentsDetailsWindow.btnprev.Enabled := false
StudentsDetailsWindow.btnlast.Enabled := false
StudentsDetailsWindow.btndel.Enabled := false
StudentsDetailsWindow.btnclose.Enabled := false
StudentsDetailsWindow.btnsave.Enabled := true
StudentsDetailsWindow.btncancel.Enabled := true
StudentsDetailsWindow.btnedit.Enabled := false
StudentsDetailsWindow.btnadd.Enabled := false
StudentsDetailsWindow.textName.Enabled := true
StudentsDetailsWindow.textNameBrowse.Enabled := false
StudentsDetailsWindow.btn1Browse.Enabled := false
StudentsDetailsWindow.Grid1Browse.Enabled := false
StudentsDetailsWindow.comboClass.Enabled := true
StudentsDetailsWindow.btnSetImage.Enabled := true
StudentsDetailsWindow.comboSection.Enabled := true
StudentsDetailsWindow.textRollno.Enabled := true
StudentsDetailsWindow.textFathername.Enabled := true
StudentsDetailsWindow.textAddress.Enabled := true
StudentsDetailsWindow.textContactno.Enabled := true
StudentsDetailsWindow.Dateofbirth.Enabled := true
ENDIF
IF p1 = 2
StudentsDetailsWindow.btnfirst.Enabled := true
StudentsDetailsWindow.btnnext.Enabled := true
StudentsDetailsWindow.btnprev.Enabled := true
StudentsDetailsWindow.btnlast.Enabled := true
StudentsDetailsWindow.btndel.Enabled := true
StudentsDetailsWindow.btnclose.Enabled := true
StudentsDetailsWindow.btnsave.Enabled := false
StudentsDetailsWindow.btncancel.Enabled := false
StudentsDetailsWindow.btnedit.Enabled := true
StudentsDetailsWindow.btnadd.Enabled := true
StudentsDetailsWindow.textName.Enabled := false
StudentsDetailsWindow.textNameBrowse.Enabled := True
StudentsDetailsWindow.btn1Browse.Enabled := True
StudentsDetailsWindow.Grid1Browse.Enabled := True
StudentsDetailsWindow.comboClass.Enabled := false
StudentsDetailsWindow.btnSetImage.Enabled := false
StudentsDetailsWindow.comboSection.Enabled := false
StudentsDetailsWindow.textRollno.Enabled := false
StudentsDetailsWindow.textFathername.Enabled := false
StudentsDetailsWindow.textAddress.Enabled := false
StudentsDetailsWindow.textContactno.Enabled := false
StudentsDetailsWindow.Dateofbirth.Enabled := false
ENDIF
self:OperationMode := p1
Return 0
Method ShowImage Class StudentsDetailsClass
Local cFile
StartUpFolder := GetStartUpFolder()
cFile := startupfolder + "\test.jpg"
Delete File (cFile)
BEGIN SEQUENCE WITH { |e| break(e) }
StreamToFile ( self:bPhoto,cFile )
RECOVER
END SEQUENCE
RPWI_TH = FCREATE("test.html",0)
FWRITE(RPWI_TH,' <html> <body> <img src="' + cFile + '" alt="photo"/> </body> </html> ')
FCLOSE(RPWI_TH)
oActivex:OOLE:navigate ( cFile )
Return 0
Method SetImage Class StudentsDetailsClass
PutFile := PutFile ( {  {"Image","*.JPG" } } , ;
, ;
, ;
, ;
)
self:bPhoto = FileToStream ( putfile )
myout = self:ShowImage()
Return 0
Method closewindow Class StudentsDetailsClass
myout = self:disconnect()
StudentsDetailsWindow.Release ( )
Return 0
Method AutoGotoRecord Class StudentsDetailsClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( StudentsDetailsWindow )
myout = self:showrecord()
StudentsDetailsWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class StudentsDetailsClass
StudentsDetailsWindow.grid1Browse.DeleteAllItems ( )
StudentsDetailsWindow.grid1Browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class StudentsDetailsClass
StudentsDetailsWindow.grid1Browse.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class StudentsDetailsClass
StudentsDetailsWindow.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class StudentsDetailsClass
cName := StudentsDetailsWindow.textNameBrowse.Value
cName = STRTRAN(cName,"[","")
cName = STRTRAN(cName,"'","")
Return cName
Method OpenDataWindow Class StudentsDetailsClass
Local nvalue,myout
nvalue := StudentsDetailsWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
StudentsDetailsWindow.Grid1Browse.SetFocus ( )
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class StudentsDetailsClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class StudentsDetailsClass
myout = self:search()
StudentsDetailsWindow.Timer1.Enabled := false
Return 0


End Of Resistance

*-------------------------------------------------------------------*

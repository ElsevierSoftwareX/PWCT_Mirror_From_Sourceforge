*---------------------------------------------------------------------------*
* Time : 04:52:22    Date : 03/02/2013
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2013]  
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
Function Main
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

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_RVC_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_RVC_18smart1() code
DO datesettings
Set MenuStyle EXTENDED
SET PROGRAMMATICCHANGE OFF
Set Procedure to "SystemDatabase_Base.PRG"
Set Procedure to "Users_Data.PRG"
Set Procedure to "UserPermissions_Data.PRG"
Set Procedure to "Employees2_Data.PRG"
Set Procedure to "Employees2_Browse.PRG"
Set Procedure to "ReportBase.PRG"
Set Procedure to "Employees2_Report.PRG"
Set Procedure to "ListOfEmployees2_Report.PRG"
Set Procedure to "Gender_Data.PRG"
Set Procedure to "Country_data.PRG"
Set Procedure to "STREAMFUNCS.PRG"
Set Procedure to "Projects_Data.PRG"
Set Procedure to "ListOfProjects_Report.PRG"
Set Procedure to "Projects_Report.PRG"
Set Procedure to "Reviewers_Data.PRG"
Set Procedure to "Reviewers_Browse.PRG"
Set Procedure to "Reviewers_Report.PRG"
Set Procedure to "ListOfReviewers_Report.PRG"
Set Procedure to "ProjectReviews_Data.PRG"
Set Procedure to "ProjectReviews_Report.PRG"
Set Procedure to "ListOfProjectReviews_Report.PRG"
Set Procedure to "PROCESSSTATUS_DATA.PRG"
Set Procedure to "PROCESSES_DATA.PRG"
Set Procedure to "PROCESSSTATUS_REPORT.PRG"
Set Procedure to "PROCESSES_REPORT.PRG"
Set Procedure to "PROJECTPROCESSES_DATA.PRG"
Set Procedure to "PROJECTPROCESSES_Report.PRG"
Set Procedure to "Dash.PRG"
Set Procedure to "BasicData.PRG"
Set Procedure to "sendmail.PRG"
Set Procedure to "SendMailToOne.PRG"
Set Procedure to "LOPStyle2_Report.PRG"
UsersWindowObject = UsersClass()
UsersObject = UsersClass()
UserPermissionsObject = UserPermissionsClass()
Employees2DataObject = Employees2DataClass()
Employees2BrowseObject = Employees2BrowseClass()
Employees2ReportObject = Employees2ReportClass()
ListofEmployees2ReportObject = ListofEmployees2ReportClass()
CountryDataObject = CountryDataClass()
GenderDataObject = GenderDataClass()
ProjectsObject = ProjectsClass()
ListofProjectsReportObject = ListofProjectsReportClass()
ReviewersDataObject = ReviewersDataClass()
ReviewersBrowseObject = ReviewersBrowseClass()
ListofReviewersReportObject = ListofReviewersReportClass()
ProjectReviewsObject = ProjectReviewsClass()
ProjectReviewsReportObject = ProjectReviewsReportClass()
ListofProjectReviewsReportObject = ListofProjectReviewsReportClass()
ProcessesObject = ProcessesClass()
ProcessStatusObject = ProcessStatusClass()
ProcessesReportObject = ProcessesReportClass()
ProcessStatusReportObject = ProcessStatusReportClass()
ProjectProcessesObject = ProjectProcessesClass()
ProjectProcessesReportObject = ProjectProcessesReportClass()
DashObject = DashClass()
BasicDataObject = BasicDataClass()
BasicDataObject:TableName := "BasicData_All"
BasicDataObject:cWindowName := "BasicDataWindow"
SendMailToOneObject = SendMailtoOneClass()
LOPStyle2ReportObject = LOPStyle2ReportClass()
ProjectsObject:IncID := 2
ProjectsObject:ComplexSearch := " and IncID = 2 "
ListofProjectsReportObject:ComplexSearch := " and IncID = 2 "
LOPStyle2ReportObject:ComplexSearch := " and IncID = 2 "
ReviewersDataObject:IncID := 2
ReviewersDataObject:ComplexSearch := " and IncID = 2 "
ReviewersBrowseObject:ComplexSearch := " and IncID = 2 "
ListofReviewersReportObject:ComplexSearch := " and IncID = 2 "
ProjectReviewsObject:IncID := 2
ProjectReviewsObject:ComplexSearch := " and IncID = 2 "
ProjectReviewsReportObject:ComplexSearch := " and IncID = 2 "
ListofProjectReviewsReportObject:ComplexSearch := " and IncID = 2 "
ProjectProcessesObject:IncID := 2
ProjectProcessesObject:ComplexSearch := " and IncID = 2 "
ProjectProcessesReportObject:ComplexSearch := " and IncID = 2 "
DashObject:ComplexSearch := " and IncID = 2 "
BasicDataObject:ComplexSearch := " and IncID = 2 "
ProjectsObject2 = ProjectsClass()
ProjectsObject2:cWindowName := "ProjectsWindow2"
ProjectsObject2:TableName := "Projects_All"
ProjectsObject2:SubTable1 := "ProjectProcesses"
ProjectsObject2:SubTable2 := "ProjectReviews"
ProjectsObject2:WindowTitle := "„‘«—Ì⁄ Õ«÷‰… «· ﬁ‰Ì«  «·ÕÌÊÌ…"
ProjectsObject2:ReportName := "Projects"
ProjectsObject2:ReportWindowName := "Projects2ReportWindow"
ListofProjectsReportObject2 = ListofProjectsReportClass()
ListofProjectsReportObject2:cWindowName := "ListOfProjectsReportWindow2"
ListofProjectsReportObject2:ReportName := "ListOfProjects"
ReviewersDataObject2 = ReviewersDataClass()
ReviewersDataObject2:TableName := "Reviewers"
ReviewersDataObject2:ReportName := "Reviewers"
ReviewersDataObject2:cWindowName := "ReviewersDataWindow2"
ReviewersDataObject2:ReportWindowName := "ReviewersReportWindow2"
ReviewersBrowseObject2 = ReviewersBrowseClass()
ReviewersBrowseObject2:TableName := "Reviewers"
ReviewersBrowseObject2:ReportName := "Reviewers"
ReviewersBrowseObject2:cWindowName := "ReviewersBrowseWindow2"
ReviewersBrowseObject2:ReportWindowName := "ReviewersBReportWindow2"
ListofReviewersReportObject2 = ListofReviewersReportClass()
ListofReviewersReportObject2:ReportName := "ListofReviewers"
ListOfReviewersReportObject2:cWindowName := "ListOfReviewersReportWindow2"
ProjectReviewsObject2 = ProjectReviewsClass()
ProjectReviewsObject2:cWindowName := "ProjectReviewsWindow2"
ProjectReviewsObject2:TableName := "ProjectReviews_All"
ProjectReviewsObject2:ReportName := "ProjectReviews"
ProjectReviewsObject2:ReportWindowName := "ProjectReviewsReportWindow2"
ProjectReviewsObject2:ProjectsTable := "Projects"
ProjectReviewsObject2:ReviewersTable := "Reviewers"
ProjectReviewsObject2:DeptCode := 2
ListofProjectReviewsReportObject2 = ListofProjectReviewsReportClass()
ListofProjectReviewsReportObject2:ReportName := "ListOfProjectReviews"
ListofProjectReviewsReportObject2:cWindowName := "ListOfProjectReviewsReportWindow2"
ProjectProcessesObject2 = ProjectProcessesClass()
ProjectProcessesObject2:TableName := "ProjectProcesses_All"
ProjectProcessesObject2:cWindowName := "ProjectProcessesWindow2"
ProjectProcessesObject2:ProjectsTable := "Projects"
ProjectProcessesObject2:ProcessTable := "Process"
ProjectProcessesObject2:ProcessStatusTable := "ProcessStatus"
ProjectProcessesReportObject2 = ProjectProcessesReportClass()
ProjectProcessesReportObject2:ReportName := "ProjectProcesses"
ProjectProcessesReportObject2:cWindowName := "ProjectProcessesReportWindow2"
ProjectProcessesReportObject2:ProjectsTable := "Projects"
DashObject2 = DashClass()
DashObject2:cWindowName := "DashWindow2"
DashObject2:TableName := "Dash"
DashObject2:cWindowTitle := "„ «»⁄… Õ«·… «·„‘«—Ì⁄ ›Ï Õ«÷‰… «· ﬁ‰Ì«  «·ÕÌÊÌ…"
DashObject2:PermissionID := 110
DashObject2:BasicDataTableName := "BasicData"
DashObject2:PW_TableName := "Projects_All"
DashObject2:PW_SubTable1 := "ProjectProcesses"
DashObject2:PW_SubTable2 := "ProjectReviews"
DashObject2:PW_WindowTitle := "„‘«—Ì⁄ Õ«÷‰… «· ﬁ‰Ì«  «·ÕÌÊÌ…"
DashObject2:PW_ReportName := "Projects"
DashObject2:PW_ReportWindowName := "DashProjects2ReportWindow"
DashObject2:PW_PermissionID := 144
DashObject2:PW_ReportName2 := "ListOfProjects"
BasicDataObject2 = BasicDataClass()
BasicDataObject2:TableName := "BasicData_All"
BasicDataObject2:cWindowName := "BasicDataWindow2"
ProjectsObject2:ReportName2 := "ListOfProjects"
LOPStyle2ReportObject2 = LOPStyle2ReportClass()
LOPStyle2ReportObject2:cWindowName := "LOPStyle2ReportWindow2"
LOPStyle2ReportObject2:ReportName := "LOPWithNotes"
ProjectsObject2:IncID := 3
ProjectsObject2:ComplexSearch := " and IncID = 3 "
ListofProjectsReportObject2:ComplexSearch := " and IncID = 3 "
LOPStyle2ReportObject2:ComplexSearch := " and IncID = 3 "
ReviewersDataObject2:IncID := 3
ReviewersDataObject2:ComplexSearch := " and IncID = 3 "
ReviewersBrowseObject2:ComplexSearch := " and IncID = 3 "
ListofReviewersReportObject2:ComplexSearch := " and IncID = 3 "
ProjectReviewsObject2:IncID := 3
ProjectReviewsObject2:ComplexSearch := " and IncID = 3 "
ListofProjectReviewsReportObject2:ComplexSearch := " and IncID = 3 "
ProjectProcessesObject2:IncID := 3
ProjectProcessesObject2:ComplexSearch := " and IncID = 3 "
ProjectProcessesReportObject2:ComplexSearch := " and IncID = 3 "
DashObject2:ComplexSearch := " and IncID = 3 "
BasicDataObject2:ComplexSearch := " and IncID = 3 "
ProjectsObject3 = ProjectsClass()
ProjectsObject3:cWindowName := "ProjectsWindow3"
ProjectsObject3:TableName := "Projects_All"
ProjectsObject3:SubTable1 := "ProjectProcesses"
ProjectsObject3:SubTable2 := "ProjectReviews"
ProjectsObject3:WindowTitle := "„‘«—Ì⁄ Õ«÷‰… «· ﬁ‰Ì«  «·Â‰œ”Ì…"
ProjectsObject3:ReportName := "Projects"
ProjectsObject3:ReportWindowName := "Projects3ReportWindow"
ListofProjectsReportObject3 = ListofProjectsReportClass()
ListofProjectsReportObject3:cWindowName := "ListOfProjectsReportWindow3"
ListofProjectsReportObject3:ReportName := "ListOfProjects"
ReviewersDataObject3 = ReviewersDataClass()
ReviewersDataObject3:TableName := "Reviewers"
ReviewersDataObject3:ReportName := "Reviewers"
ReviewersDataObject3:cWindowName := "ReviewersDataWindow3"
ReviewersDataObject3:ReportWindowName := "ReviewersReportWindow3"
ReviewersBrowseObject3 = ReviewersBrowseClass()
ReviewersBrowseObject3:TableName := "Reviewers"
ReviewersBrowseObject3:ReportName := "Reviewers"
ReviewersBrowseObject3:cWindowName := "ReviewersBrowseWindow3"
ReviewersBrowseObject3:ReportWindowName := "ReviewersBReportWindow3"
ListofReviewersReportObject3 = ListofReviewersReportClass()
ListofReviewersReportObject3:ReportName := "ListofReviewers"
ListOfReviewersReportObject3:cWindowName := "ListOfReviewersReportWindow3"
ProjectReviewsObject3 = ProjectReviewsClass()
ProjectReviewsObject3:cWindowName := "ProjectReviewsWindow3"
ProjectReviewsObject3:TableName := "ProjectReviews_All"
ProjectReviewsObject3:ReportName := "ProjectReviews"
ProjectReviewsObject3:ReportWindowName := "ProjectReviewsReportWindow3"
ProjectReviewsObject3:ProjectsTable := "Projects"
ProjectReviewsObject3:ReviewersTable := "Reviewers"
ProjectReviewsObject3:DeptCode := 3
ListofProjectReviewsReportObject3 = ListofProjectReviewsReportClass()
ListofProjectReviewsReportObject3:ReportName := "ListOfProjectReviews"
ListofProjectReviewsReportObject3:cWindowName := "ListOfProjectReviewsReportWindow3"
ProjectProcessesObject3 = ProjectProcessesClass()
ProjectProcessesObject3:TableName := "ProjectProcesses_All"
ProjectProcessesObject3:cWindowName := "ProjectProcessesWindow3"
ProjectProcessesObject3:ProjectsTable := "Projects"
ProjectProcessesObject3:ProcessTable := "Process"
ProjectProcessesObject3:ProcessStatusTable := "ProcessStatus"
ProjectProcessesReportObject3 = ProjectProcessesReportClass()
ProjectProcessesReportObject3:ReportName := "ProjectProcesses"
ProjectProcessesReportObject3:cWindowName := "ProjectProcessesReportWindow3"
ProjectProcessesReportObject3:ProjectsTable := "Projects"
DashObject3 = DashClass()
DashObject3:cWindowName := "DashWindow3"
DashObject3:TableName := "Dash"
DashObject3:cWindowTitle := "„ «»⁄… Õ«·… «·„‘«—Ì⁄ ›Ï Õ«÷‰… «· ﬁ‰Ì«  «·Â‰œ”Ì…"
DashObject3:PermissionID := 124
DashObject3:BasicDataTableName := "BasicData"
DashObject3:PW_TableName := "Projects_All"
DashObject3:PW_SubTable1 := "ProjectProcesses"
DashObject3:PW_SubTable2 := "ProjectReviews"
DashObject3:PW_WindowTitle := "„‘«—Ì⁄ Õ«÷‰… «· ﬁ‰Ì«  «·Â‰œ”Ì…"
DashObject3:PW_ReportName := "Projects"
DashObject3:PW_ReportWindowName := "DashProjects3ReportWindow"
DashObject3:PW_PermissionID := 145
DashObject3:PW_ReportName2 := "ListOfProjects"
BasicDataObject3 = BasicDataClass()
BasicDataObject3:TableName := "BasicData_All"
BasicDataObject3:cWindowName := "BasicDataWindow3"
ProjectsObject3:ReportName2 := "ListOfProjects"
LOPStyle2ReportObject3 = LOPStyle2ReportClass()
LOPStyle2ReportObject3:cWindowName := "LOPStyle2ReportWindow3"
LOPStyle2ReportObject3:ReportName := "LOPWithNotes"
ProjectsObject3:IncID := 4
ProjectsObject3:ComplexSearch := " and IncID = 4 "
ListofProjectsReportObject3:ComplexSearch := " and IncID = 4 "
LOPStyle2ReportObject3:ComplexSearch := " and IncID = 4 "
ReviewersDataObject3:IncID := 4
ReviewersDataObject3:ComplexSearch := " and IncID = 4 "
ReviewersBrowseObject3:ComplexSearch := " and IncID = 4 "
ListofReviewersReportObject3:ComplexSearch := " and IncID = 4 "
ProjectReviewsObject3:IncID := 4
ProjectReviewsObject3:ComplexSearch := " and IncID = 4 "
ListofProjectReviewsReportObject3:ComplexSearch := " and IncID = 4 "
ProjectProcessesObject3:IncID := 4
ProjectProcessesObject3:ComplexSearch := " and IncID = 4"
ProjectProcessesReportObject3:ComplexSearch := " and IncID = 4 "
DashObject3:ComplexSearch := " and IncID = 4 "
BasicDataObject3:ComplexSearch := " and IncID = 4 "
ProjectsObject4 = ProjectsClass()
ProjectsObject4:cWindowName := "ProjectsWindow4"
ProjectsObject4:TableName := "Projects_All"
ProjectsObject4:SubTable1 := "ProjectProcesses"
ProjectsObject4:SubTable2 := "ProjectReviews"
ProjectsObject4:WindowTitle := "„‘«—Ì⁄ Õ«÷‰… «· ﬁ‰Ì«  «·‰”«∆Ì…"
ProjectsObject4:ReportName := "Projects"
ProjectsObject4:ReportWindowName := "Projects4ReportWindow"
ListofProjectsReportObject4 = ListofProjectsReportClass()
ListofProjectsReportObject4:cWindowName := "ListOfProjectsReportWindow4"
ListofProjectsReportObject4:ReportName := "ListOfProjects"
ReviewersDataObject4 = ReviewersDataClass()
ReviewersDataObject4:TableName := "Reviewers"
ReviewersDataObject4:ReportName := "Reviewers"
ReviewersDataObject4:cWindowName := "ReviewersDataWindow4"
ReviewersDataObject4:ReportWindowName := "ReviewersReportWindow4"
ReviewersBrowseObject4 = ReviewersBrowseClass()
ReviewersBrowseObject4:TableName := "Reviewers"
ReviewersBrowseObject4:ReportName := "Reviewers"
ReviewersBrowseObject4:cWindowName := "ReviewersBrowseWindow4"
ReviewersBrowseObject4:ReportWindowName := "ReviewersBReportWindow4"
ListofReviewersReportObject4 = ListofReviewersReportClass()
ListofReviewersReportObject4:ReportName := "ListofReviewers"
ListOfReviewersReportObject4:cWindowName := "ListOfReviewersReportWindow4"
ProjectReviewsObject4 = ProjectReviewsClass()
ProjectReviewsObject4:cWindowName := "ProjectReviewsWindow4"
ProjectReviewsObject4:TableName := "ProjectReviews_All"
ProjectReviewsObject4:ReportName := "ProjectReviews"
ProjectReviewsObject4:ReportWindowName := "ProjectReviewsReportWindow4"
ProjectReviewsObject4:ProjectsTable := "Projects"
ProjectReviewsObject4:ReviewersTable := "Reviewers"
ProjectReviewsObject4:DeptCode := 4
ListofProjectReviewsReportObject4 = ListofProjectReviewsReportClass()
ListofProjectReviewsReportObject4:ReportName := "ListOfProjectReviews"
ListofProjectReviewsReportObject4:cWindowName := "ListOfProjectReviewsReportWindow4"
ProjectProcessesObject4 = ProjectProcessesClass()
ProjectProcessesObject4:TableName := "ProjectProcesses_All"
ProjectProcessesObject4:cWindowName := "ProjectProcessesWindow4"
ProjectProcessesObject4:ProjectsTable := "Projects"
ProjectProcessesObject4:ProcessTable := "Process"
ProjectProcessesObject4:ProcessStatusTable := "ProcessStatus"
ProjectProcessesReportObject4 = ProjectProcessesReportClass()
ProjectProcessesReportObject4:ReportName := "ProjectProcesses"
ProjectProcessesReportObject4:cWindowName := "ProjectProcessesReportWindow4"
ProjectProcessesReportObject4:ProjectsTable := "Projects"
DashObject4 = DashClass()
DashObject4:cWindowName := "DashWindow4"
DashObject4:TableName := "Dash"
DashObject4:cWindowTitle := "„ «»⁄… Õ«·… «·„‘«—Ì⁄ ›Ï Õ«÷‰… «· ﬁ‰Ì… «·‰”«∆Ì…"
DashObject4:PermissionID := 138
DashObject4:BasicDataTableName := "BasicData"
DashObject4:PW_TableName := "Projects_All"
DashObject4:PW_SubTable1 := "ProjectProcesses"
DashObject4:PW_SubTable2 := "ProjectReviews"
DashObject4:PW_WindowTitle := "„‘«—Ì⁄ Õ«÷‰… «· ﬁ‰Ì… «·‰”«∆Ì…"
DashObject4:PW_ReportName := "Projects"
DashObject4:PW_ReportWindowName := "DashProjects4ReportWindow"
DashObject4:PW_PermissionID := 146
DashObject4:PW_ReportName2 := "ListOfProjects"
BasicDataObject4 = BasicDataClass()
BasicDataObject4:TableName := "BasicData_ALL"
BasicDataObject4:cWindowName := "BasicDataWindow4"
ProjectsObject4:ReportName2 := "ListOfProjects"
LOPStyle2ReportObject4 = LOPStyle2ReportClass()
LOPStyle2ReportObject4:cWindowName := "LOPStyle2ReportWindow4"
LOPStyle2ReportObject4:ReportName := "LOPWithNotes"
ProjectsObject4:IncID := 5
ProjectsObject4:ComplexSearch := " and IncID = 5 "
ListofProjectsReportObject4:ComplexSearch := " and IncID = 5 "
LOPStyle2ReportObject4:ComplexSearch := " and IncID = 5 "
ReviewersDataObject4:IncID := 5
ReviewersDataObject4:ComplexSearch := " and IncID = 5 "
ReviewersBrowseObject4:ComplexSearch := " and IncID = 5 "
ListofReviewersReportObject4:ComplexSearch := " and IncID = 5 "
ProjectReviewsObject4:IncID := 5
ProjectReviewsObject4:ComplexSearch := " and IncID = 5 "
ListofProjectReviewsReportObject4:ComplexSearch := " and IncID = 5 "
ProjectProcessesObject4:IncID := 5
ProjectProcessesObject4:ComplexSearch := " and IncID = 5 "
ProjectProcessesReportObject4:ComplexSearch := " and IncID = 5 "
DashObject4:ComplexSearch := " and IncID = 5 "
BasicDataObject4:ComplexSearch := " and IncID = 5 "
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 1338 ;
HEIGHT 718 ;
ON INIT systemkey()  ;
ICON "PWCTICON" ;
TITLE "‘—ﬂ… Ê«œÏ «·—Ì«÷" ;
MAIN ;
NOSHOW ;
BACKCOLOR {255,255,255} 

DEFINE STATUSBAR 

STATUSITEM "Ã«Â“"

KEYBOARD

CLOCK;
WIDTH 100;
AMPM 

END STATUSBAR

END WINDOW

calldll32("SetWindowLong","USER32.DLL",GetFormHandle ("Win1"),-20,;
NUMOR(calldll32("GetWindowLong","USER32.DLL",;
GetFormHandle ("Win1"), -20),0x400000,0x100000))
ACTIVATE WINDOW win1
EndIF

Proc closesystem
win1.statusbar.item(1) := "«÷€ÿ ‰⁄„ Õ Ï Ì „ «€·«ﬁ «·‰Ÿ«„ «Ê «÷€·« ·« ·«·€«¡ «·⁄„·Ì…"
MyOut := MSGYESNO("Â· «‰  „ «ﬂœ ?","≈€·«ﬁ «·‰Ÿ«„")
IF myout = true
win1.Release ( )
ENDIF
win1.statusbar.item(1) := "Ready"
Return Nil
Proc mylogo
if !iswindowdefined( winlogo )
DEFINE WINDOW winlogo ;
AT 10 ,10 ;
WIDTH 910 ;
HEIGHT 484 ;
ICON "PWCTICON" ;
TITLE "Window Title" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
NOSYSMENU ;
NOCAPTION ;
BACKCOLOR {255,255,255} 

@ 48 ,314 IMAGE image1;
PICTURE "LOGOALONE";
WHITEBACKGROUND ;
WIDTH 282 HEIGHT 104
@ 200 ,682 IMAGE image3;
PICTURE "image\p1.JPG";
ON CLICK DashObject:ShowWindow()  ;
STRETCH ;
WIDTH 193 HEIGHT 229
@ 443 ,669 LABEL lbl3 ;
VALUE "Õ«÷‰…  ﬁ‰Ì… «·„⁄·Ê„«  Ê«·« ’«·« " ;
WIDTH 230 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 200 ,234 IMAGE image2;
PICTURE "image\p2.JPG";
ON CLICK DashObject3:ShowWindow()  ;
STRETCH ;
WIDTH 193 HEIGHT 229
@ 443 ,248 LABEL lbl2 ;
VALUE "Õ«÷‰… «· ﬁ‰Ì«  «·Â‰œ”Ì… " ;
WIDTH 170 ;
HEIGHT 40 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 200 ,458 IMAGE image4;
PICTURE "image\p3.JPG";
ON CLICK DashObject2:ShowWindow()  ;
STRETCH ;
WIDTH 193 HEIGHT 229
@ 443 ,476 LABEL lbl4 ;
VALUE "Õ«÷‰… «· ﬁ‰Ì«  «·ÕÌÊÌ…" ;
WIDTH 160 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 200 ,10 IMAGE image7;
PICTURE "image\p4.JPG";
ON CLICK DashObject4:ShowWindow()  ;
STRETCH ;
WIDTH 193 HEIGHT 229
@ 443 ,32 LABEL lbl7 ;
VALUE "Õ«÷‰… «· ﬁ‰Ì… «·‰”«∆Ì…" ;
WIDTH 150 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW
EndIF

HPARENT := GetFormHandle("win1")
HCHILD := GetFormHandle("winLOGO")
myout = CALLDLL32("SetParent","USER32.DLL",HCHILD,HPARENT)
winlogo.Center ( )
Activate Window winlogo nowait
Return Nil
Proc sysmenu
POPUP "„·›"
MENUITEM "Œ—ÊÃ" Action closesystem()  IMAGE "image\wzclose.bmp"
END POPUP
IF UsersObject:userisadmin = 1
POPUP "‰Ÿ«„"
POPUP "«·„ÊŸ›Ì‰"
MENUITEM "»Ì«‰«  «·„ÊŸ›" Action Employees2DataObject:showwindow()
MENUITEM "»ÕÀ ⁄‰ „ÊŸ›" Action Employees2BrowseObject:showwindow()
MENUITEM " ﬁ—Ì— »Ì«‰«  «·„ÊŸ›Ì‰" Action ListofEmployees2ReportObject:ShowWindow()
SEPARATOR
MENUITEM "ÃœÊ· «·Ã‰”Ì«  " Action Countrydataobject:showwindow()
MENUITEM "ÃœÊ· «·«ﬁ”«„ " Action Genderdataobject:showwindow()
END POPUP
MENUITEM "«·„” Œœ„Ì‰" Action UsersWindowObject:ShowWindow()
SEPARATOR
IF UsersObject:CheckPermission(92)
MENUITEM " ⁄—Ì› «·«Ã—«¡« " Action ProcessesObject:showwindow()
ENDIF
IF UsersObject:CheckPermission(93)
MENUITEM " ﬁ—Ì— »«·«Ã—«¡« " Action ProcessesReportObject:showwindow()
SEPARATOR
ENDIF
IF UsersObject:CheckPermission(90)
MENUITEM "Õ«·«  «·«Ã—«¡« " Action ProcessStatusObject:showwindow()
ENDIF
IF UsersObject:CheckPermission(91)
MENUITEM " ﬁ—Ì— Õ«·«  «·«Ã—«¡« " Action ProcessStatusReportObject:showwindow()
SEPARATOR
ENDIF
END POPUP
ENDIF
IF UsersObject:CheckPermission(1)
POPUP "Õ«÷‰…  ﬁ‰Ì… «·„⁄·Ê„« "
IF UsersObject:CheckPermission(83) .or. UsersObject:CheckPermission(84)
POPUP "«·„‘«—Ì⁄"
IF UsersObject:CheckPermission(83)
MENUITEM "»Ì«‰«  «·„‘«—Ì⁄" Action ProjectsObject:showwindow()
ENDIF
IF UsersObject:CheckPermission(84)
MENUITEM " ﬁ—Ì— »Ì«‰«  «·„‘«—Ì⁄" Action ListofProjectsReportObject:ShowWindow()
SEPARATOR
ENDIF
END POPUP
ENDIF
IF UsersObject:CheckPermission(85) .or. UsersObject:CheckPermission(86) .or. UsersObject:CheckPermission(87)
POPUP "«·„—«Ã⁄Ì‰"
IF UsersObject:CheckPermission(85)
MENUITEM "»Ì«‰«  «·„—«Ã⁄Ì‰" Action ReviewersDataObject:showwindow()
ENDIF
IF UsersObject:CheckPermission(86)
MENUITEM "»ÕÀ ⁄‰ „—«Ã⁄" Action ReviewersBrowseObject:showwindow()
ENDIF
IF UsersObject:CheckPermission(87)
MENUITEM " ﬁ—Ì— »Ì«‰«  «·„—«Ã⁄Ì‰" Action ListOfReviewersReportObject:ShowWindow()
SEPARATOR
ENDIF
END POPUP
ENDIF
IF UsersObject:CheckPermission(88) .or. UsersObject:CheckPermission(89)
POPUP "„—«Ã⁄… «·„‘«—Ì⁄"
IF UsersObject:CheckPermission(88)
MENUITEM "„—«Ã⁄… «·„‘«—Ì⁄" Action ProjectReviewsObject:showwindow()
ENDIF
IF UsersObject:CheckPermission(89)
MENUITEM " ﬁ—Ì— „—«Ã⁄… «·„‘«—Ì⁄" Action ListOfProjectReviewsReportObject:ShowWindow()
SEPARATOR
ENDIF
END POPUP
ENDIF
v5 := UsersObject:CheckPermission(94)
v6 := UsersObject:CheckPermission(95)
IF v5 .or. v6
POPUP "«Ã—«¡«  «·„‘«—Ì⁄"
IF UsersObject:CheckPermission(94)
MENUITEM "«Ã—«¡«  «·„‘«—Ì⁄" Action ProjectProcessesObject:showwindow()
ENDIF
IF UsersObject:CheckPermission(95)
MENUITEM " ﬁ—Ì— »«Ã—«¡«  «·„‘«—Ì⁄" Action ProjectProcessesReportObject:showwindow()
SEPARATOR
ENDIF
END POPUP
ENDIF
IF UsersObject:CheckPermission(96)
MENUITEM "„ «»⁄… Õ«·… «·„‘«—Ì⁄" Action DashObject:showwindow()
ENDIF
IF UsersObject:CheckPermission(139)
MENUITEM "⁄œœ «·„‘«—Ì⁄ ›Ï «·Œÿ…" Action BasicDataObject:showwindow()
ENDIF
END POPUP
ENDIF
IF UsersObject:CheckPermission(80)
POPUP "Õ«÷‰… «· ﬁ‰Ì«  «·ÕÌÊÌ…"
IF UsersObject:CheckPermission(97) .or. UsersObject:CheckPermission(98)
POPUP "«·„‘«—Ì⁄"
IF UsersObject:CheckPermission(97)
MENUITEM "»Ì«‰«  «·„‘«—Ì⁄" Action ProjectsObject2:showwindow()
ENDIF
IF UsersObject:CheckPermission(98)
MENUITEM " ﬁ—Ì— »Ì«‰«  «·„‘«—Ì⁄" Action ListofProjectsReportObject2:ShowWindow()
SEPARATOR
ENDIF
END POPUP
ENDIF
IF UsersObject:CheckPermission(99) .or. UsersObject:CheckPermission(100) .or. UsersObject:CheckPermission(101)
POPUP "«·„—«Ã⁄Ì‰"
IF UsersObject:CheckPermission(99)
MENUITEM "»Ì«‰«  «·„—«Ã⁄Ì‰" Action ReviewersDataObject2:showwindow()
ENDIF
IF UsersObject:CheckPermission(100)
MENUITEM "»ÕÀ ⁄‰ „—«Ã⁄" Action ReviewersBrowseObject2:showwindow()
ENDIF
IF UsersObject:CheckPermission(101)
MENUITEM " ﬁ—Ì— »Ì«‰«  «·„—«Ã⁄Ì‰" Action ListOfReviewersReportObject2:ShowWindow()
SEPARATOR
ENDIF
END POPUP
ENDIF
IF UsersObject:CheckPermission(102) .or. UsersObject:CheckPermission(103)
POPUP "„—«Ã⁄… «·„‘«—Ì⁄"
IF UsersObject:CheckPermission(102)
MENUITEM "„—«Ã⁄… «·„‘«—Ì⁄" Action ProjectReviewsObject2:showwindow()
ENDIF
IF UsersObject:CheckPermission(103)
MENUITEM " ﬁ—Ì— „—«Ã⁄… «·„‘«—Ì⁄" Action ListOfProjectReviewsReportObject2:ShowWindow()
SEPARATOR
ENDIF
END POPUP
ENDIF
v5 := UsersObject:CheckPermission(108)
v6 := UsersObject:CheckPermission(109)
IF v5 .or. v6
POPUP "«Ã—«¡«  «·„‘«—Ì⁄"
IF UsersObject:CheckPermission(108)
MENUITEM "«Ã—«¡«  «·„‘«—Ì⁄" Action ProjectProcessesObject2:showwindow()
ENDIF
IF UsersObject:CheckPermission(109)
MENUITEM " ﬁ—Ì— »«Ã—«¡«  «·„‘«—Ì⁄" Action ProjectProcessesReportObject2:showwindow()
SEPARATOR
ENDIF
END POPUP
ENDIF
IF UsersObject:CheckPermission(110)
MENUITEM "„ «»⁄… Õ«·… «·„‘«—Ì⁄" Action DashObject2:showwindow()
ENDIF
IF UsersObject:CheckPermission(140)
MENUITEM "⁄œœ «·„‘«—Ì⁄ ›Ï «·Œÿ…" Action BasicDataObject2:showwindow()
ENDIF
END POPUP
ENDIF
IF UsersObject:CheckPermission(81)
POPUP "Õ«÷‰… «· ﬁ‰Ì«  «·Â‰œ”Ì…"
IF UsersObject:CheckPermission(111) .or. UsersObject:CheckPermission(112)
POPUP "«·„‘«—Ì⁄"
IF UsersObject:CheckPermission(111)
MENUITEM "»Ì«‰«  «·„‘«—Ì⁄" Action ProjectsObject3:showwindow()
ENDIF
IF UsersObject:CheckPermission(112)
MENUITEM " ﬁ—Ì— »Ì«‰«  «·„‘«—Ì⁄" Action ListofProjectsReportObject3:ShowWindow()
SEPARATOR
ENDIF
END POPUP
ENDIF
IF UsersObject:CheckPermission(113) .or. UsersObject:CheckPermission(114) .or. UsersObject:CheckPermission(115)
POPUP "«·„—«Ã⁄Ì‰"
IF UsersObject:CheckPermission(113)
MENUITEM "»Ì«‰«  «·„—«Ã⁄Ì‰" Action ReviewersDataObject3:showwindow()
ENDIF
IF UsersObject:CheckPermission(114)
MENUITEM "»ÕÀ ⁄‰ „—«Ã⁄" Action ReviewersBrowseObject3:showwindow()
ENDIF
IF UsersObject:CheckPermission(115)
MENUITEM " ﬁ—Ì— »Ì«‰«  «·„—«Ã⁄Ì‰" Action ListOfReviewersReportObject3:ShowWindow()
SEPARATOR
ENDIF
END POPUP
ENDIF
IF UsersObject:CheckPermission(116) .or. UsersObject:CheckPermission(117)
POPUP "„—«Ã⁄… «·„‘«—Ì⁄"
IF UsersObject:CheckPermission(116)
MENUITEM "„—«Ã⁄… «·„‘«—Ì⁄" Action ProjectReviewsObject3:showwindow()
ENDIF
IF UsersObject:CheckPermission(117)
MENUITEM " ﬁ—Ì— „—«Ã⁄… «·„‘«—Ì⁄" Action ListOfProjectReviewsReportObject3:ShowWindow()
SEPARATOR
ENDIF
END POPUP
ENDIF
v5 := UsersObject:CheckPermission(122)
v6 := UsersObject:CheckPermission(123)
IF v5 .or. v6
POPUP "«Ã—«¡«  «·„‘«—Ì⁄"
IF UsersObject:CheckPermission(122)
MENUITEM "«Ã—«¡«  «·„‘«—Ì⁄" Action ProjectProcessesObject3:showwindow()
ENDIF
IF UsersObject:CheckPermission(123)
MENUITEM " ﬁ—Ì— »«Ã—«¡«  «·„‘«—Ì⁄" Action ProjectProcessesReportObject3:showwindow()
SEPARATOR
ENDIF
END POPUP
ENDIF
IF UsersObject:CheckPermission(124)
MENUITEM "„ «»⁄… Õ«·… «·„‘«—Ì⁄" Action DashObject3:showwindow()
ENDIF
IF UsersObject:CheckPermission(141)
MENUITEM "⁄œœ «·„‘«—Ì⁄ ›Ï «·Œÿ…" Action BasicDataObject3:showwindow()
ENDIF
END POPUP
ENDIF
IF UsersObject:CheckPermission(82)
POPUP "Õ«÷‰… «· ﬁ‰Ì… «·‰”«∆Ì…"
IF UsersObject:CheckPermission(125) .or. UsersObject:CheckPermission(126)
POPUP "«·„‘«—Ì⁄"
IF UsersObject:CheckPermission(125)
MENUITEM "»Ì«‰«  «·„‘«—Ì⁄" Action ProjectsObject4:showwindow()
ENDIF
IF UsersObject:CheckPermission(126)
MENUITEM " ﬁ—Ì— »Ì«‰«  «·„‘«—Ì⁄" Action ListofProjectsReportObject4:ShowWindow()
SEPARATOR
ENDIF
END POPUP
ENDIF
IF UsersObject:CheckPermission(127) .or. UsersObject:CheckPermission(128) .or. UsersObject:CheckPermission(129)
POPUP "«·„—«Ã⁄Ì‰"
IF UsersObject:CheckPermission(127)
MENUITEM "»Ì«‰«  «·„—«Ã⁄Ì‰" Action ReviewersDataObject4:showwindow()
ENDIF
IF UsersObject:CheckPermission(128)
MENUITEM "»ÕÀ ⁄‰ „—«Ã⁄" Action ReviewersBrowseObject4:showwindow()
ENDIF
IF UsersObject:CheckPermission(129)
MENUITEM " ﬁ—Ì— »Ì«‰«  «·„—«Ã⁄Ì‰" Action ListOfReviewersReportObject4:ShowWindow()
SEPARATOR
ENDIF
END POPUP
ENDIF
IF UsersObject:CheckPermission(130) .or. UsersObject:CheckPermission(131)
POPUP "„—«Ã⁄… «·„‘«—Ì⁄"
IF UsersObject:CheckPermission(130)
MENUITEM "„—«Ã⁄… «·„‘«—Ì⁄" Action ProjectReviewsObject4:showwindow()
ENDIF
IF UsersObject:CheckPermission(131)
MENUITEM " ﬁ—Ì— „—«Ã⁄… «·„‘«—Ì⁄" Action ListOfProjectReviewsReportObject4:ShowWindow()
SEPARATOR
ENDIF
END POPUP
ENDIF
v5 := UsersObject:CheckPermission(136)
v6 := UsersObject:CheckPermission(137)
IF v5 .or. v6
POPUP "«Ã—«¡«  «·„‘«—Ì⁄"
IF UsersObject:CheckPermission(136)
MENUITEM "«Ã—«¡«  «·„‘«—Ì⁄" Action ProjectProcessesObject4:showwindow()
ENDIF
IF UsersObject:CheckPermission(137)
MENUITEM " ﬁ—Ì— »«Ã—«¡«  «·„‘«—Ì⁄" Action ProjectProcessesReportObject4:showwindow()
SEPARATOR
ENDIF
END POPUP
ENDIF
IF UsersObject:CheckPermission(138)
MENUITEM "„ «»⁄… Õ«·… «·„‘«—Ì⁄" Action DashObject4:showwindow()
ENDIF
IF UsersObject:CheckPermission(142)
MENUITEM "⁄œœ «·„‘«—Ì⁄ ›Ï «·Œÿ…" Action BasicDataObject4:showwindow()
ENDIF
END POPUP
ENDIF
Return Nil
Proc datesettings
set date japan
set cent on
Return Nil
Proc entersystem
usersobject:manychecks := true
myout = usersobject:connect()
DEFINE MAIN MENU of win1
DO sysmenu
END MENU
DEFINE TOOLBAR Toolbar1;
PARENT win1 ;
BUTTONSIZE 40 , 40 ;
BOLD ;
FLAT ;
BORDER ;
BREAK 

BUTTON toolbarshutdown;
PICTURE "image\shutdown.bmp" ;
ADJUST ;
ON CLICK closesystem()  ;
TOOLTIP "≈€·«ﬁ «·‰Ÿ«„" ;
SEPARATOR ;
AUTOSIZE 

END TOOLBAR

myout = usersobject:disconnect()
usersobject:manychecks := false
Return Nil
Proc LOGOSTART
if !iswindowdefined( winLOGOSTART )
DEFINE WINDOW winLOGOSTART ;
AT 10 ,10 ;
WIDTH 530 ;
HEIGHT 336 ;
ICON "PWCTICON" ;
TITLE "‘—ﬂ… Ê«œÏ «·—Ì«÷" ;
CHILD ;
TOPMOST ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
NOSYSMENU ;
NOCAPTION ;
BACKCOLOR {236,233,216} 

@ 0 ,0 IMAGE image1;
PICTURE "LOGO";
STRETCH ;
WIDTH 530 HEIGHT 336
DEFINE TIMER Timer1 INTERVAL 1500 ;
Action WINLOGOSTART.RELEASE()
@ 13 ,270 LABEL lbl1 ;
VALUE " «—ÌŒ «·«’œ«— :  2012/2/5" ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 252 ,135 LABEL lbl2 ;
VALUE "»—‰«„Ã „ «»⁄… «·„‘«—Ì⁄" ;
WIDTH 260 ;
HEIGHT 50 ;
FONT "Arial" SIZE 24  ;
BOLD ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
END WINDOW

WINLOGOSTART.Center ( )
ACTIVATE WINDOW winLOGOSTART
EndIF

Return Nil
Proc RightToLeftControl( p1,p2 )
Local v1,myhandle
myhandle = GetControlHandle ( p2,p1 )
v1 = CALLDLL32("GetWindowLong","USER32.DLL",myhandle,-20)
myout = CALLDLL32("SetWindowLong","USER32.DLL",myhandle,-20,NUMOR(v1,0x400000,0x100000))
Return Nil
Proc SystemKey
DO logostart
win1.Maximize ( )
DO mylogo
myout = UsersObject:SystemLogin()
DO entersystem
Return Nil
Function  GetFileName ( p1 )
Local cFileName,cLetter
cFileName := p1
mymax  = LEN(p1)
FOR x = mymax TO 1 STEP -1
cLetter = SUBSTR(P1,X,1)
IF cLetter = "\"
cFileName = Right(p1,mymax-x)
Exit
ENDIF
Next
Return cFileName


End Of Resistance

INIT PROCEDURE Init_RVC
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure datesettings",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Set Menu Style EXTENDED",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","SET PROGRAMMATIC CHANGE OFF",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'SystemDatabase_Base.PRG'",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Users_Data.PRG'",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'UserPermissions_Data.PRG'",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Employees2_Data.PRG'",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Employees2_Browse.PRG'",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ReportBase.PRG'",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Employees2_Report.PRG'",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ListOfEmployees2_Report.PRG'",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Gender_Data.PRG'",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Country_data.PRG'",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'STREAMFUNCS.PRG'",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Projects_Data.PRG'",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ListOfProjects_Report.PRG'",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Projects_Report.PRG'",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Reviewers_Data.PRG'",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Reviewers_Browse.PRG'",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Reviewers_Report.PRG'",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ListOfReviewers_Report.PRG'",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ProjectReviews_Data.PRG'",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ProjectReviews_Report.PRG'",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ListOfProjectReviews_Report.PRG'",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'PROCESSSTATUS_DATA.PRG'",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'PROCESSES_DATA.PRG'",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'PROCESSSTATUS_REPORT.PRG'",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'PROCESSES_REPORT.PRG'",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'PROJECTPROCESSES_DATA.PRG'",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'PROJECTPROCESSES_Report.PRG'",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Dash.PRG'",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'BasicData.PRG'",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'sendmail.PRG'",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'SendMailToOne.PRG'",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'LOPStyle2_Report.PRG'",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object UsersWindowObject of Class UsersClass",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object UsersObject of Class UsersClass",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object UserPermissionsObject of Class UserPermissionsClass",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object Employees2DataObject of Class Employees2DataClass",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object Employees2BrowseObject of Class Employees2BrowseClass",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object Employees2ReportObject of Class Employees2ReportClass",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ListofEmployees2ReportObject of Class ListofEmployees2ReportClass",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object CountryDataObject of Class CountryDataClass",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object GenderDataObject of Class GenderDataClass",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ProjectsObject of Class ProjectsClass",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ListofProjectsReportObject of Class ListofProjectsReportClass",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ReviewersDataObject of Class ReviewersDataClass",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ReviewersBrowseObject of Class ReviewersBrowseClass",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ListofReviewersReportObject of Class ListofReviewersReportClass",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ProjectReviewsObject of Class ProjectReviewsClass",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ProjectReviewsReportObject of Class ProjectReviewsReportClass",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ListofProjectReviewsReportObject of Class ListofProjectReviewsReportClass",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ProcessesObject of Class ProcessesClass",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ProcessStatusObject of Class ProcessStatusClass",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ProcessesReportObject of Class ProcessesReportClass",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ProcessStatusReportObject of Class ProcessStatusReportClass",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ProjectProcessesObject of Class ProjectProcessesClass",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ProjectProcessesReportObject of Class ProjectProcessesReportClass",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object DashObject of Class DashClass",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object BasicDataObject of Class BasicDataClass",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","BasicDataObject.TableName = 'BasicData_All'",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","BasicDataObject.cWindowName = 'BasicDataWindow'",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object SendMailToOneObject of Class SendMailtoOneClass",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object LOPStyle2ReportObject of Class LOPStyle2ReportClass",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectsObject.IncID = 2",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectsObject.ComplexSearch = ' and IncID = 2 '",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","ListofProjectsReportObject.ComplexSearch = ' and IncID = 2 '",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","LOPStyle2ReportObject.ComplexSearch = ' and IncID = 2 '",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","ReviewersDataObject.IncID = 2",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","ReviewersDataObject.ComplexSearch = ' and IncID = 2 '",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","ReviewersBrowseObject.ComplexSearch = ' and IncID = 2 '",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","ListofReviewersReportObject.ComplexSearch = ' and IncID = 2 '",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectReviewsObject.IncID = 2",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectReviewsObject.ComplexSearch = ' and IncID = 2 '",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectReviewsReportObject.ComplexSearch = ' and IncID = 2 '",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","ListofProjectReviewsReportObject.ComplexSearch = ' and IncID = 2 '",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectProcessesObject.IncID = 2",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectProcessesObject.ComplexSearch = ' and IncID = 2 '",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectProcessesReportObject.ComplexSearch = ' and IncID = 2 '",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","DashObject.ComplexSearch = ' and IncID = 2 '",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","BasicDataObject.ComplexSearch = ' and IncID = 2 '",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ProjectsObject2 of Class ProjectsClass",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectsObject2.cWindowName = 'ProjectsWindow2'",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectsObject2.TableName = 'Projects_All'",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectsObject2.SubTable1 = 'ProjectProcesses'",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectsObject2.SubTable2 = 'ProjectReviews'",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectsObject2.WindowTitle = '„‘«—Ì⁄ Õ«÷‰… «· ﬁ‰Ì«  «·ÕÌÊÌ…'",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectsObject2.ReportName = 'Projects'",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectsObject2.ReportWindowName = 'Projects2ReportWindow'",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ListofProjectsReportObject2 of Class ListofProjectsReportClass",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","ListofProjectsReportObject2.cWindowName = 'ListOfProjectsReportWindow2'",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","ListofProjectsReportObject2.ReportName = 'ListOfProjects'",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ReviewersDataObject2 of Class ReviewersDataClass",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","ReviewersDataObject2.TableName = 'Reviewers'",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","ReviewersDataObject2.ReportName = 'Reviewers'",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","ReviewersDataObject2.cWindowName = 'ReviewersDataWindow2'",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","ReviewersDataObject2.ReportWindowName = 'ReviewersReportWindow2'",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ReviewersBrowseObject2 of Class ReviewersBrowseClass",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","ReviewersBrowseObject2.TableName = 'Reviewers'",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","ReviewersBrowseObject2.ReportName = 'Reviewers'",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","ReviewersBrowseObject2.cWindowName = 'ReviewersBrowseWindow2'",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","ReviewersBrowseObject2.ReportWindowName = 'ReviewersBReportWindow2'",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ListofReviewersReportObject2 of Class ListofReviewersReportClass",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","ListofReviewersReportObject2.ReportName = 'ListofReviewers'",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","ListOfReviewersReportObject2.cWindowName = 'ListOfReviewersReportWindow2'",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ProjectReviewsObject2 of Class ProjectReviewsClass",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectReviewsObject2.cWindowName = 'ProjectReviewsWindow2'",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectReviewsObject2.TableName = 'ProjectReviews_All'",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectReviewsObject2.ReportName = 'ProjectReviews'",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectReviewsObject2.ReportWindowName = 'ProjectReviewsReportWindow2'",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectReviewsObject2.ProjectsTable = 'Projects'",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectReviewsObject2.ReviewersTable = 'Reviewers'",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectReviewsObject2.DeptCode = 2",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ListofProjectReviewsReportObject2 of Class ListofProjectReviewsReportClass",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","ListofProjectReviewsReportObject2.ReportName = 'ListOfProjectReviews'",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","ListofProjectReviewsReportObject2.cWindowName = 'ListOfProjectReviewsReportWindow2'",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ProjectProcessesObject2 of Class ProjectProcessesClass",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectProcessesObject2.TableName = 'ProjectProcesses_All'",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectProcessesObject2.cWindowName = 'ProjectProcessesWindow2'",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectProcessesObject2.ProjectsTable = 'Projects'",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectProcessesObject2.ProcessTable = 'Process'",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectProcessesObject2.ProcessStatusTable = 'ProcessStatus'",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ProjectProcessesReportObject2 of Class ProjectProcessesReportClass",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectProcessesReportObject2.ReportName = 'ProjectProcesses'",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectProcessesReportObject2.cWindowName = 'ProjectProcessesReportWindow2'",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectProcessesReportObject2.ProjectsTable = 'Projects'",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object DashObject2 of Class DashClass",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","DashObject2.cWindowName = 'DashWindow2'",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","DashObject2.TableName = 'Dash'",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","DashObject2.cWindowTitle = '„ «»⁄… Õ«·… «·„‘«—Ì⁄ ›Ï Õ«÷‰… «· ﬁ‰Ì«  «·ÕÌÊÌ…'",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","DashObject2.PermissionID = 110",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","DashObject2.BasicDataTableName = 'BasicData'",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","DashObject2.PW_TableName = 'Projects_All'",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","DashObject2.PW_SubTable1 = 'ProjectProcesses'",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","DashObject2.PW_SubTable2 = 'ProjectReviews'",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","DashObject2.PW_WindowTitle = '„‘«—Ì⁄ Õ«÷‰… «· ﬁ‰Ì«  «·ÕÌÊÌ…'",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","DashObject2.PW_ReportName = 'Projects'",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","DashObject2.PW_ReportWindowName = 'DashProjects2ReportWindow'",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","DashObject2.PW_PermissionID = 144",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","DashObject2.PW_ReportName2 = 'ListOfProjects'",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object BasicDataObject2 of Class BasicDataClass",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","BasicDataObject2.TableName = 'BasicData_All'",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","BasicDataObject2.cWindowName = 'BasicDataWindow2'",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectsObject2.ReportName2 = 'ListOfProjects'",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object LOPStyle2ReportObject2 of Class LOPStyle2ReportClass",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","LOPStyle2ReportObject2.cWindowName = 'LOPStyle2ReportWindow2'",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","LOPStyle2ReportObject2.ReportName = 'LOPWithNotes'",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectsObject2.IncID = 3",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectsObject2.ComplexSearch = ' and IncID = 3 '",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","ListofProjectsReportObject2.ComplexSearch = ' and IncID = 3 '",150,150)
SS_ESASTEP("Circuits\Main\Main\Main","LOPStyle2ReportObject2.ComplexSearch = ' and IncID = 3 '",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","ReviewersDataObject2.IncID = 3",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","ReviewersDataObject2.ComplexSearch = ' and IncID = 3 '",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","ReviewersBrowseObject2.ComplexSearch = ' and IncID = 3 '",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","ListofReviewersReportObject2.ComplexSearch = ' and IncID = 3 '",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectReviewsObject2.IncID = 3",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectReviewsObject2.ComplexSearch = ' and IncID = 3 '",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","ListofProjectReviewsReportObject2.ComplexSearch = ' and IncID = 3 '",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectProcessesObject2.IncID = 3",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectProcessesObject2.ComplexSearch = ' and IncID = 3 '",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectProcessesReportObject2.ComplexSearch = ' and IncID = 3 '",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","DashObject2.ComplexSearch = ' and IncID = 3 '",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","BasicDataObject2.ComplexSearch = ' and IncID = 3 '",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ProjectsObject3 of Class ProjectsClass",164,164)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectsObject3.cWindowName = 'ProjectsWindow3'",165,165)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectsObject3.TableName = 'Projects_All'",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectsObject3.SubTable1 = 'ProjectProcesses'",167,167)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectsObject3.SubTable2 = 'ProjectReviews'",168,168)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectsObject3.WindowTitle = '„‘«—Ì⁄ Õ«÷‰… «· ﬁ‰Ì«  «·Â‰œ”Ì…'",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectsObject3.ReportName = 'Projects'",170,170)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectsObject3.ReportWindowName = 'Projects3ReportWindow'",171,171)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ListofProjectsReportObject3 of Class ListofProjectsReportClass",172,172)
SS_ESASTEP("Circuits\Main\Main\Main","ListofProjectsReportObject3.cWindowName = 'ListOfProjectsReportWindow3'",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","ListofProjectsReportObject3.ReportName = 'ListOfProjects'",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ReviewersDataObject3 of Class ReviewersDataClass",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","ReviewersDataObject3.TableName = 'Reviewers'",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","ReviewersDataObject3.ReportName = 'Reviewers'",177,177)
SS_ESASTEP("Circuits\Main\Main\Main","ReviewersDataObject3.cWindowName = 'ReviewersDataWindow3'",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","ReviewersDataObject3.ReportWindowName = 'ReviewersReportWindow3'",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ReviewersBrowseObject3 of Class ReviewersBrowseClass",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","ReviewersBrowseObject3.TableName = 'Reviewers'",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","ReviewersBrowseObject3.ReportName = 'Reviewers'",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","ReviewersBrowseObject3.cWindowName = 'ReviewersBrowseWindow3'",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","ReviewersBrowseObject3.ReportWindowName = 'ReviewersBReportWindow3'",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ListofReviewersReportObject3 of Class ListofReviewersReportClass",185,185)
SS_ESASTEP("Circuits\Main\Main\Main","ListofReviewersReportObject3.ReportName = 'ListofReviewers'",186,186)
SS_ESASTEP("Circuits\Main\Main\Main","ListOfReviewersReportObject3.cWindowName = 'ListOfReviewersReportWindow3'",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ProjectReviewsObject3 of Class ProjectReviewsClass",188,188)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectReviewsObject3.cWindowName = 'ProjectReviewsWindow3'",189,189)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectReviewsObject3.TableName = 'ProjectReviews_All'",190,190)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectReviewsObject3.ReportName = 'ProjectReviews'",191,191)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectReviewsObject3.ReportWindowName = 'ProjectReviewsReportWindow3'",192,192)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectReviewsObject3.ProjectsTable = 'Projects'",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectReviewsObject3.ReviewersTable = 'Reviewers'",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectReviewsObject3.DeptCode = 3",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ListofProjectReviewsReportObject3 of Class ListofProjectReviewsReportClass",196,196)
SS_ESASTEP("Circuits\Main\Main\Main","ListofProjectReviewsReportObject3.ReportName = 'ListOfProjectReviews'",197,197)
SS_ESASTEP("Circuits\Main\Main\Main","ListofProjectReviewsReportObject3.cWindowName = 'ListOfProjectReviewsReportWindow3'",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ProjectProcessesObject3 of Class ProjectProcessesClass",199,199)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectProcessesObject3.TableName = 'ProjectProcesses_All'",200,200)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectProcessesObject3.cWindowName = 'ProjectProcessesWindow3'",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectProcessesObject3.ProjectsTable = 'Projects'",202,202)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectProcessesObject3.ProcessTable = 'Process'",203,203)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectProcessesObject3.ProcessStatusTable = 'ProcessStatus'",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ProjectProcessesReportObject3 of Class ProjectProcessesReportClass",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectProcessesReportObject3.ReportName = 'ProjectProcesses'",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectProcessesReportObject3.cWindowName = 'ProjectProcessesReportWindow3'",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectProcessesReportObject3.ProjectsTable = 'Projects'",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object DashObject3 of Class DashClass",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","DashObject3.cWindowName = 'DashWindow3'",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","DashObject3.TableName = 'Dash'",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","DashObject3.cWindowTitle = '„ «»⁄… Õ«·… «·„‘«—Ì⁄ ›Ï Õ«÷‰… «· ﬁ‰Ì«  «·Â‰œ”Ì…'",212,212)
SS_ESASTEP("Circuits\Main\Main\Main","DashObject3.PermissionID = 124",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","DashObject3.BasicDataTableName = 'BasicData'",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","DashObject3.PW_TableName = 'Projects_All'",215,215)
SS_ESASTEP("Circuits\Main\Main\Main","DashObject3.PW_SubTable1 = 'ProjectProcesses'",216,216)
SS_ESASTEP("Circuits\Main\Main\Main","DashObject3.PW_SubTable2 = 'ProjectReviews'",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","DashObject3.PW_WindowTitle = '„‘«—Ì⁄ Õ«÷‰… «· ﬁ‰Ì«  «·Â‰œ”Ì…'",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","DashObject3.PW_ReportName = 'Projects'",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","DashObject3.PW_ReportWindowName = 'DashProjects3ReportWindow'",220,220)
SS_ESASTEP("Circuits\Main\Main\Main","DashObject3.PW_PermissionID = 145",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","DashObject3.PW_ReportName2 = 'ListOfProjects'",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object BasicDataObject3 of Class BasicDataClass",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","BasicDataObject3.TableName = 'BasicData_All'",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","BasicDataObject3.cWindowName = 'BasicDataWindow3'",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectsObject3.ReportName2 = 'ListOfProjects'",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object LOPStyle2ReportObject3 of Class LOPStyle2ReportClass",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","LOPStyle2ReportObject3.cWindowName = 'LOPStyle2ReportWindow3'",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","LOPStyle2ReportObject3.ReportName = 'LOPWithNotes'",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectsObject3.IncID = 4",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectsObject3.ComplexSearch = ' and IncID = 4 '",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","ListofProjectsReportObject3.ComplexSearch = ' and IncID = 4 '",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","LOPStyle2ReportObject3.ComplexSearch = ' and IncID = 4 '",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","ReviewersDataObject3.IncID = 4",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","ReviewersDataObject3.ComplexSearch = ' and IncID = 4 '",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","ReviewersBrowseObject3.ComplexSearch = ' and IncID = 4 '",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","ListofReviewersReportObject3.ComplexSearch = ' and IncID = 4 '",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectReviewsObject3.IncID = 4",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectReviewsObject3.ComplexSearch = ' and IncID = 4 '",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","ListofProjectReviewsReportObject3.ComplexSearch = ' and IncID = 4 '",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectProcessesObject3.IncID = 4",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectProcessesObject3.ComplexSearch = ' and IncID = 4'",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectProcessesReportObject3.ComplexSearch = ' and IncID = 4 '",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","DashObject3.ComplexSearch = ' and IncID = 4 '",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","BasicDataObject3.ComplexSearch = ' and IncID = 4 '",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ProjectsObject4 of Class ProjectsClass",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectsObject4.cWindowName = 'ProjectsWindow4'",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectsObject4.TableName = 'Projects_All'",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectsObject4.SubTable1 = 'ProjectProcesses'",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectsObject4.SubTable2 = 'ProjectReviews'",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectsObject4.WindowTitle = '„‘«—Ì⁄ Õ«÷‰… «· ﬁ‰Ì«  «·‰”«∆Ì…'",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectsObject4.ReportName = 'Projects'",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectsObject4.ReportWindowName = 'Projects4ReportWindow'",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ListofProjectsReportObject4 of Class ListofProjectsReportClass",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","ListofProjectsReportObject4.cWindowName = 'ListOfProjectsReportWindow4'",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","ListofProjectsReportObject4.ReportName = 'ListOfProjects'",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ReviewersDataObject4 of Class ReviewersDataClass",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","ReviewersDataObject4.TableName = 'Reviewers'",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","ReviewersDataObject4.ReportName = 'Reviewers'",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","ReviewersDataObject4.cWindowName = 'ReviewersDataWindow4'",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","ReviewersDataObject4.ReportWindowName = 'ReviewersReportWindow4'",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ReviewersBrowseObject4 of Class ReviewersBrowseClass",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","ReviewersBrowseObject4.TableName = 'Reviewers'",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","ReviewersBrowseObject4.ReportName = 'Reviewers'",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","ReviewersBrowseObject4.cWindowName = 'ReviewersBrowseWindow4'",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","ReviewersBrowseObject4.ReportWindowName = 'ReviewersBReportWindow4'",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ListofReviewersReportObject4 of Class ListofReviewersReportClass",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","ListofReviewersReportObject4.ReportName = 'ListofReviewers'",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","ListOfReviewersReportObject4.cWindowName = 'ListOfReviewersReportWindow4'",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ProjectReviewsObject4 of Class ProjectReviewsClass",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectReviewsObject4.cWindowName = 'ProjectReviewsWindow4'",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectReviewsObject4.TableName = 'ProjectReviews_All'",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectReviewsObject4.ReportName = 'ProjectReviews'",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectReviewsObject4.ReportWindowName = 'ProjectReviewsReportWindow4'",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectReviewsObject4.ProjectsTable = 'Projects'",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectReviewsObject4.ReviewersTable = 'Reviewers'",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectReviewsObject4.DeptCode = 4",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ListofProjectReviewsReportObject4 of Class ListofProjectReviewsReportClass",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","ListofProjectReviewsReportObject4.ReportName = 'ListOfProjectReviews'",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","ListofProjectReviewsReportObject4.cWindowName = 'ListOfProjectReviewsReportWindow4'",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ProjectProcessesObject4 of Class ProjectProcessesClass",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectProcessesObject4.TableName = 'ProjectProcesses_All'",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectProcessesObject4.cWindowName = 'ProjectProcessesWindow4'",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectProcessesObject4.ProjectsTable = 'Projects'",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectProcessesObject4.ProcessTable = 'Process'",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectProcessesObject4.ProcessStatusTable = 'ProcessStatus'",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object ProjectProcessesReportObject4 of Class ProjectProcessesReportClass",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectProcessesReportObject4.ReportName = 'ProjectProcesses'",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectProcessesReportObject4.cWindowName = 'ProjectProcessesReportWindow4'",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectProcessesReportObject4.ProjectsTable = 'Projects'",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object DashObject4 of Class DashClass",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","DashObject4.cWindowName = 'DashWindow4'",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","DashObject4.TableName = 'Dash'",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","DashObject4.cWindowTitle = '„ «»⁄… Õ«·… «·„‘«—Ì⁄ ›Ï Õ«÷‰… «· ﬁ‰Ì… «·‰”«∆Ì…'",294,294)
SS_ESASTEP("Circuits\Main\Main\Main","DashObject4.PermissionID = 138",295,295)
SS_ESASTEP("Circuits\Main\Main\Main","DashObject4.BasicDataTableName = 'BasicData'",296,296)
SS_ESASTEP("Circuits\Main\Main\Main","DashObject4.PW_TableName = 'Projects_All'",297,297)
SS_ESASTEP("Circuits\Main\Main\Main","DashObject4.PW_SubTable1 = 'ProjectProcesses'",298,298)
SS_ESASTEP("Circuits\Main\Main\Main","DashObject4.PW_SubTable2 = 'ProjectReviews'",299,299)
SS_ESASTEP("Circuits\Main\Main\Main","DashObject4.PW_WindowTitle = '„‘«—Ì⁄ Õ«÷‰… «· ﬁ‰Ì… «·‰”«∆Ì…'",300,300)
SS_ESASTEP("Circuits\Main\Main\Main","DashObject4.PW_ReportName = 'Projects'",301,301)
SS_ESASTEP("Circuits\Main\Main\Main","DashObject4.PW_ReportWindowName = 'DashProjects4ReportWindow'",302,302)
SS_ESASTEP("Circuits\Main\Main\Main","DashObject4.PW_PermissionID = 146",303,303)
SS_ESASTEP("Circuits\Main\Main\Main","DashObject4.PW_ReportName2 = 'ListOfProjects'",304,304)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object BasicDataObject4 of Class BasicDataClass",305,305)
SS_ESASTEP("Circuits\Main\Main\Main","BasicDataObject4.TableName = 'BasicData_ALL'",306,306)
SS_ESASTEP("Circuits\Main\Main\Main","BasicDataObject4.cWindowName = 'BasicDataWindow4'",307,307)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectsObject4.ReportName2 = 'ListOfProjects'",308,308)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object LOPStyle2ReportObject4 of Class LOPStyle2ReportClass",309,309)
SS_ESASTEP("Circuits\Main\Main\Main","LOPStyle2ReportObject4.cWindowName = 'LOPStyle2ReportWindow4'",310,310)
SS_ESASTEP("Circuits\Main\Main\Main","LOPStyle2ReportObject4.ReportName = 'LOPWithNotes'",311,311)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectsObject4.IncID = 5",312,312)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectsObject4.ComplexSearch = ' and IncID = 5 '",313,313)
SS_ESASTEP("Circuits\Main\Main\Main","ListofProjectsReportObject4.ComplexSearch = ' and IncID = 5 '",314,314)
SS_ESASTEP("Circuits\Main\Main\Main","LOPStyle2ReportObject4.ComplexSearch = ' and IncID = 5 '",315,315)
SS_ESASTEP("Circuits\Main\Main\Main","ReviewersDataObject4.IncID = 5",316,316)
SS_ESASTEP("Circuits\Main\Main\Main","ReviewersDataObject4.ComplexSearch = ' and IncID = 5 '",317,317)
SS_ESASTEP("Circuits\Main\Main\Main","ReviewersBrowseObject4.ComplexSearch = ' and IncID = 5 '",318,318)
SS_ESASTEP("Circuits\Main\Main\Main","ListofReviewersReportObject4.ComplexSearch = ' and IncID = 5 '",319,319)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectReviewsObject4.IncID = 5",320,320)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectReviewsObject4.ComplexSearch = ' and IncID = 5 '",321,321)
SS_ESASTEP("Circuits\Main\Main\Main","ListofProjectReviewsReportObject4.ComplexSearch = ' and IncID = 5 '",322,322)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectProcessesObject4.IncID = 5",323,323)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectProcessesObject4.ComplexSearch = ' and IncID = 5 '",324,324)
SS_ESASTEP("Circuits\Main\Main\Main","ProjectProcessesReportObject4.ComplexSearch = ' and IncID = 5 '",325,325)
SS_ESASTEP("Circuits\Main\Main\Main","DashObject4.ComplexSearch = ' and IncID = 5 '",326,326)
SS_ESASTEP("Circuits\Main\Main\Main","BasicDataObject4.ComplexSearch = ' and IncID = 5 '",327,327)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '‘—ﬂ… Ê«œÏ «·—Ì«÷'",328,332)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action systemkey()",333,333)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",334,339)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",340,341)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ã«Â“' )",342,343)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",344,345)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",346,347)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",348,349)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",350,351)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",352,353)
SS_ESASTEP("Circuits\Main\Main\Main","Right-To-Left, Window 'Win1'",354,356)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",357,359)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",360,360)
SS_ESASTEP("Circuits\Main\Main\Main","Set StatusBar Item Value, Window Name: win1, Item Number: 1 & Item Value: '«÷€ÿ ‰⁄„ Õ Ï Ì „ «€·«ﬁ «·‰Ÿ«„ «Ê «÷€·« ·« ·«·€«¡ «·⁄„·Ì…'",361,361)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Â· «‰  „ «ﬂœ ?' Title '≈€·«ﬁ «·‰Ÿ«„' Type: Message Yes/No",362,362)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout = true )",363,363)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",364,364)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",365,365)
SS_ESASTEP("Circuits\Main\Main\Main","Set StatusBar Item Value, Window Name: win1, Item Number: 1 & Item Value: 'Ready'",366,366)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",367,367)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mylogo",368,368)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winlogo ) , Title : 'Window Title'",369,373)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",374,383)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'LOGOALONE'",384,385)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",386,387)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image3 ) , Image : 'image\p1.JPG'",388,389)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action DashObject:ShowWindow()",390,390)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",391,392)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Õ«÷‰…  ﬁ‰Ì… «·„⁄·Ê„«  Ê«·« ’«·« '",393,394)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",395,399)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image2 ) , Image : 'image\p2.JPG'",400,401)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action DashObject3:ShowWindow()",402,402)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",403,404)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Õ«÷‰… «· ﬁ‰Ì«  «·Â‰œ”Ì… '",405,406)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",407,411)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image4 ) , Image : 'image\p3.JPG'",412,413)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action DashObject2:ShowWindow()",414,414)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",415,416)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Õ«÷‰… «· ﬁ‰Ì«  «·ÕÌÊÌ…'",417,418)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",419,423)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image7 ) , Image : 'image\p4.JPG'",424,425)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action DashObject4:ShowWindow()",426,426)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",427,428)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7 ) , Caption : 'Õ«÷‰… «· ﬁ‰Ì… «·‰”«∆Ì…'",429,430)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",431,435)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",436,438)
SS_ESASTEP("Circuits\Main\Main\Main","HPARENT = Get Window ('win1') Handle",439,439)
SS_ESASTEP("Circuits\Main\Main\Main","HCHILD = Get Window ('winLOGO') Handle",440,440)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'USER32.DLL' , Function 'SetParent' , Parameters HCHILD,HPARENT",441,441)
SS_ESASTEP("Circuits\Main\Main\Main","winlogo.Center ( )",442,442)
SS_ESASTEP("Circuits\Main\Main\Main","Activate Window/Form winlogo No Wait",443,443)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",444,444)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure sysmenu",445,445)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '„·›'",446,446)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Œ—ÊÃ' )  IMAGE 'image\wzclose.bmp'",447,447)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",448,448)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:userisadmin = 1 )",449,449)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '‰Ÿ«„'",450,450)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '«·„ÊŸ›Ì‰'",451,451)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '»Ì«‰«  «·„ÊŸ›' )",452,452)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '»ÕÀ ⁄‰ „ÊŸ›' )",453,453)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— »Ì«‰«  «·„ÊŸ›Ì‰' )      SEPARATOR",454,455)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'ÃœÊ· «·Ã‰”Ì«  ' )",456,456)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'ÃœÊ· «·«ﬁ”«„ ' )",457,457)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",458,458)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '«·„” Œœ„Ì‰' )      SEPARATOR",459,460)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(92) )",461,461)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ⁄—Ì› «·«Ã—«¡« ' )",462,462)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",463,463)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(93) )",464,464)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— »«·«Ã—«¡« ' )      SEPARATOR",465,466)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",467,467)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(90) )",468,468)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Õ«·«  «·«Ã—«¡« ' )",469,469)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",470,470)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(91) )",471,471)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— Õ«·«  «·«Ã—«¡« ' )      SEPARATOR",472,473)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",474,474)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",475,475)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",476,476)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(1) )",477,477)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Õ«÷‰…  ﬁ‰Ì… «·„⁄·Ê„« '",478,478)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(83) .or. UsersObject:CheckPermission(84) )",479,479)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '«·„‘«—Ì⁄'",480,480)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(83) )",481,481)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '»Ì«‰«  «·„‘«—Ì⁄' )",482,482)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",483,483)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(84) )",484,484)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— »Ì«‰«  «·„‘«—Ì⁄' )      SEPARATOR",485,486)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",487,487)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",488,488)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",489,489)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(85) .or. UsersObject:CheckPermission(86) .or. UsersObject:CheckPermission(87) )",490,490)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '«·„—«Ã⁄Ì‰'",491,491)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(85) )",492,492)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '»Ì«‰«  «·„—«Ã⁄Ì‰' )",493,493)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",494,494)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(86) )",495,495)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '»ÕÀ ⁄‰ „—«Ã⁄' )",496,496)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",497,497)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(87) )",498,498)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— »Ì«‰«  «·„—«Ã⁄Ì‰' )      SEPARATOR",499,500)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",501,501)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",502,502)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",503,503)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(88) .or. UsersObject:CheckPermission(89) )",504,504)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '„—«Ã⁄… «·„‘«—Ì⁄'",505,505)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(88) )",506,506)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '„—«Ã⁄… «·„‘«—Ì⁄' )",507,507)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",508,508)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(89) )",509,509)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— „—«Ã⁄… «·„‘«—Ì⁄' )      SEPARATOR",510,511)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",512,512)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",513,513)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",514,514)
SS_ESASTEP("Circuits\Main\Main\Main","v5 = UsersObject:CheckPermission(94)",515,515)
SS_ESASTEP("Circuits\Main\Main\Main","v6 = UsersObject:CheckPermission(95)",516,516)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( v5 .or. v6 )",517,517)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '«Ã—«¡«  «·„‘«—Ì⁄'",518,518)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(94) )",519,519)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '«Ã—«¡«  «·„‘«—Ì⁄' )",520,520)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",521,521)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(95) )",522,522)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— »«Ã—«¡«  «·„‘«—Ì⁄' )      SEPARATOR",523,524)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",525,525)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",526,526)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",527,527)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(96) )",528,528)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '„ «»⁄… Õ«·… «·„‘«—Ì⁄' )",529,529)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",530,530)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(139) )",531,531)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '⁄œœ «·„‘«—Ì⁄ ›Ï «·Œÿ…' )",532,532)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",533,533)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",534,534)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",535,535)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(80) )",536,536)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Õ«÷‰… «· ﬁ‰Ì«  «·ÕÌÊÌ…'",537,537)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(97) .or. UsersObject:CheckPermission(98) )",538,538)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '«·„‘«—Ì⁄'",539,539)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(97) )",540,540)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '»Ì«‰«  «·„‘«—Ì⁄' )",541,541)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",542,542)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(98) )",543,543)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— »Ì«‰«  «·„‘«—Ì⁄' )      SEPARATOR",544,545)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",546,546)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",547,547)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",548,548)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(99) .or. UsersObject:CheckPermission(100) .or. UsersObject:CheckPermission(101) )",549,549)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '«·„—«Ã⁄Ì‰'",550,550)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(99) )",551,551)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '»Ì«‰«  «·„—«Ã⁄Ì‰' )",552,552)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",553,553)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(100) )",554,554)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '»ÕÀ ⁄‰ „—«Ã⁄' )",555,555)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",556,556)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(101) )",557,557)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— »Ì«‰«  «·„—«Ã⁄Ì‰' )      SEPARATOR",558,559)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",560,560)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",561,561)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",562,562)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(102) .or. UsersObject:CheckPermission(103) )",563,563)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '„—«Ã⁄… «·„‘«—Ì⁄'",564,564)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(102) )",565,565)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '„—«Ã⁄… «·„‘«—Ì⁄' )",566,566)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",567,567)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(103) )",568,568)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— „—«Ã⁄… «·„‘«—Ì⁄' )      SEPARATOR",569,570)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",571,571)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",572,572)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",573,573)
SS_ESASTEP("Circuits\Main\Main\Main","v5 = UsersObject:CheckPermission(108)",574,574)
SS_ESASTEP("Circuits\Main\Main\Main","v6 = UsersObject:CheckPermission(109)",575,575)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( v5 .or. v6 )",576,576)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '«Ã—«¡«  «·„‘«—Ì⁄'",577,577)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(108) )",578,578)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '«Ã—«¡«  «·„‘«—Ì⁄' )",579,579)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",580,580)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(109) )",581,581)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— »«Ã—«¡«  «·„‘«—Ì⁄' )      SEPARATOR",582,583)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",584,584)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",585,585)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",586,586)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(110) )",587,587)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '„ «»⁄… Õ«·… «·„‘«—Ì⁄' )",588,588)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",589,589)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(140) )",590,590)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '⁄œœ «·„‘«—Ì⁄ ›Ï «·Œÿ…' )",591,591)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",592,592)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",593,593)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",594,594)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(81) )",595,595)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Õ«÷‰… «· ﬁ‰Ì«  «·Â‰œ”Ì…'",596,596)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(111) .or. UsersObject:CheckPermission(112) )",597,597)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '«·„‘«—Ì⁄'",598,598)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(111) )",599,599)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '»Ì«‰«  «·„‘«—Ì⁄' )",600,600)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",601,601)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(112) )",602,602)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— »Ì«‰«  «·„‘«—Ì⁄' )      SEPARATOR",603,604)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",605,605)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",606,606)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",607,607)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(113) .or. UsersObject:CheckPermission(114) .or. UsersObject:CheckPermission(115) )",608,608)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '«·„—«Ã⁄Ì‰'",609,609)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(113) )",610,610)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '»Ì«‰«  «·„—«Ã⁄Ì‰' )",611,611)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",612,612)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(114) )",613,613)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '»ÕÀ ⁄‰ „—«Ã⁄' )",614,614)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",615,615)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(115) )",616,616)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— »Ì«‰«  «·„—«Ã⁄Ì‰' )      SEPARATOR",617,618)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",619,619)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",620,620)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",621,621)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(116) .or. UsersObject:CheckPermission(117) )",622,622)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '„—«Ã⁄… «·„‘«—Ì⁄'",623,623)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(116) )",624,624)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '„—«Ã⁄… «·„‘«—Ì⁄' )",625,625)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",626,626)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(117) )",627,627)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— „—«Ã⁄… «·„‘«—Ì⁄' )      SEPARATOR",628,629)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",630,630)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",631,631)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",632,632)
SS_ESASTEP("Circuits\Main\Main\Main","v5 = UsersObject:CheckPermission(122)",633,633)
SS_ESASTEP("Circuits\Main\Main\Main","v6 = UsersObject:CheckPermission(123)",634,634)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( v5 .or. v6 )",635,635)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '«Ã—«¡«  «·„‘«—Ì⁄'",636,636)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(122) )",637,637)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '«Ã—«¡«  «·„‘«—Ì⁄' )",638,638)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",639,639)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(123) )",640,640)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— »«Ã—«¡«  «·„‘«—Ì⁄' )      SEPARATOR",641,642)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",643,643)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",644,644)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",645,645)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(124) )",646,646)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '„ «»⁄… Õ«·… «·„‘«—Ì⁄' )",647,647)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",648,648)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(141) )",649,649)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '⁄œœ «·„‘«—Ì⁄ ›Ï «·Œÿ…' )",650,650)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",651,651)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",652,652)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",653,653)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(82) )",654,654)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Õ«÷‰… «· ﬁ‰Ì… «·‰”«∆Ì…'",655,655)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(125) .or. UsersObject:CheckPermission(126) )",656,656)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '«·„‘«—Ì⁄'",657,657)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(125) )",658,658)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '»Ì«‰«  «·„‘«—Ì⁄' )",659,659)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",660,660)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(126) )",661,661)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— »Ì«‰«  «·„‘«—Ì⁄' )      SEPARATOR",662,663)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",664,664)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",665,665)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",666,666)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(127) .or. UsersObject:CheckPermission(128) .or. UsersObject:CheckPermission(129) )",667,667)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '«·„—«Ã⁄Ì‰'",668,668)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(127) )",669,669)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '»Ì«‰«  «·„—«Ã⁄Ì‰' )",670,670)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",671,671)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(128) )",672,672)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '»ÕÀ ⁄‰ „—«Ã⁄' )",673,673)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",674,674)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(129) )",675,675)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— »Ì«‰«  «·„—«Ã⁄Ì‰' )      SEPARATOR",676,677)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",678,678)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",679,679)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",680,680)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(130) .or. UsersObject:CheckPermission(131) )",681,681)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '„—«Ã⁄… «·„‘«—Ì⁄'",682,682)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(130) )",683,683)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '„—«Ã⁄… «·„‘«—Ì⁄' )",684,684)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",685,685)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(131) )",686,686)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— „—«Ã⁄… «·„‘«—Ì⁄' )      SEPARATOR",687,688)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",689,689)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",690,690)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",691,691)
SS_ESASTEP("Circuits\Main\Main\Main","v5 = UsersObject:CheckPermission(136)",692,692)
SS_ESASTEP("Circuits\Main\Main\Main","v6 = UsersObject:CheckPermission(137)",693,693)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( v5 .or. v6 )",694,694)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '«Ã—«¡«  «·„‘«—Ì⁄'",695,695)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(136) )",696,696)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '«Ã—«¡«  «·„‘«—Ì⁄' )",697,697)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",698,698)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(137) )",699,699)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( ' ﬁ—Ì— »«Ã—«¡«  «·„‘«—Ì⁄' )      SEPARATOR",700,701)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",702,702)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",703,703)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",704,704)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(138) )",705,705)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '„ «»⁄… Õ«·… «·„‘«—Ì⁄' )",706,706)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",707,707)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( UsersObject:CheckPermission(142) )",708,708)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '⁄œœ «·„‘«—Ì⁄ ›Ï «·Œÿ…' )",709,709)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",710,710)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",711,711)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",712,712)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",713,713)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure datesettings",714,714)
SS_ESASTEP("Circuits\Main\Main\Main","mycode",715,716)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",717,717)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure entersystem",718,718)
SS_ESASTEP("Circuits\Main\Main\Main","usersobject.manychecks = true",719,719)
SS_ESASTEP("Circuits\Main\Main\Main","myout = usersobject.connect()",720,720)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU : WINDOW (win1)",721,721)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure sysmenu",722,722)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",723,723)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Toolbar ( Toolbar1 )",724,725)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",726,731)
SS_ESASTEP("Circuits\Main\Main\Main","Button ( toolbarshutdown )",732,734)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closesystem()",735,735)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",736,739)
SS_ESASTEP("Circuits\Main\Main\Main","End Toolbar",740,741)
SS_ESASTEP("Circuits\Main\Main\Main","myout = usersobject.disconnect()",742,742)
SS_ESASTEP("Circuits\Main\Main\Main","usersobject.manychecks = false",743,743)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",744,744)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure LOGOSTART",745,745)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winLOGOSTART ) , Title : '‘—ﬂ… Ê«œÏ «·—Ì«÷'",746,750)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",751,761)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'LOGO'",762,763)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",764,765)
SS_ESASTEP("Circuits\Main\Main\Main","Define Timer ( Timer1 )",766,767)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : ' «—ÌŒ «·«’œ«— :  2012/2/5'",768,769)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",770,776)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '»—‰«„Ã „ «»⁄… «·„‘«—Ì⁄'",777,778)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",779,785)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",786,787)
SS_ESASTEP("Circuits\Main\Main\Main","WINLOGOSTART.Center ( )",788,788)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",789,791)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",792,792)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure RightToLeftControl( p1,p2 )",793,793)
SS_ESASTEP("Circuits\Main\Main\Main","Local v1,myhandle",794,794)
SS_ESASTEP("Circuits\Main\Main\Main","myhandle = Call Function GetControlHandle ( p2,p1 )",795,795)
SS_ESASTEP("Circuits\Main\Main\Main","v1 = Call DLL 'USER32.DLL' , Function 'GetWindowLong' , Parameters myhandle,-20",796,796)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Call DLL 'USER32.DLL' , Function 'SetWindowLong' , Parameters myhandle,-20,NUMOR(v1,0x400000,0x100000)",797,797)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",798,798)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure SystemKey",799,799)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure logostart",800,800)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",801,801)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure mylogo",802,802)
SS_ESASTEP("Circuits\Main\Main\Main","myout = UsersObject.SystemLogin()",803,803)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure entersystem",804,804)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",805,805)
SS_ESASTEP("Circuits\Main\Main\Main","Define Function GetFileName ( p1 )",806,806)
SS_ESASTEP("Circuits\Main\Main\Main","Local cFileName,cLetter",807,807)
SS_ESASTEP("Circuits\Main\Main\Main","cFileName = p1",808,808)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = Get Length of String/Variable/Array p1",809,809)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = mymax To 1 Step -1)",810,810)
SS_ESASTEP("Circuits\Main\Main\Main","cLetter = Sub String of P1 From X Count 1",811,811)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( cLetter = '\' )",812,812)
SS_ESASTEP("Circuits\Main\Main\Main","cFileName =  Get SubString from right, String: p1 Count: mymax-x",813,813)
SS_ESASTEP("Circuits\Main\Main\Main","Exit",814,814)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",815,815)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",816,816)
SS_ESASTEP("Circuits\Main\Main\Main","End of Function (Return cFileName)",817,817)
Return
*-------------------------------------------------------------------*

*---------------------------------------------------------------------------*
* Time : 07:48:14    Date : 07/31/2011
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


Resistance R_RVC_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_RVC_15speed1() code
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
ProjectsObject2 = ProjectsClass()
ProjectsObject2:cWindowName := "ProjectsWindow2"
ProjectsObject2:TableName := "Projects_All2"
ProjectsObject2:SubTable1 := "ProjectProcesses2"
ProjectsObject2:SubTable2 := "ProjectReviews2"
ProjectsObject2:WindowTitle := "„‘«—Ì⁄ Õ«÷‰… «· ﬁ‰Ì«  «·ÕÌÊÌ…"
ProjectsObject2:PermissionID := 83
ProjectsObject2:ReportName := "Projects2"
ProjectsObject2:ReportWindowName := "Projects2ReportWindow"
ListofProjectsReportObject2 = ListofProjectsReportClass()
ListofProjectsReportObject2:cWindowName := "ListOfProjectsReportWindow2"
ListofProjectsReportObject2:ReportName := "ListOfProjects2"
ReviewersDataObject2 = ReviewersDataClass()
ReviewersDataObject2:TableName := "Reviewers2"
ReviewersDataObject2:ReportName := "Reviewers2"
ReviewersDataObject2:cWindowName := "ReviewersDataWindow2"
ReviewersDataObject2:ReportWindowName := "ReviewersReportWindow2"
ReviewersBrowseObject2 = ReviewersBrowseClass()
ReviewersBrowseObject2:TableName := "Reviewers2"
ReviewersBrowseObject2:ReportName := "Reviewers2"
ReviewersBrowseObject2:cWindowName := "ReviewersBrowseWindow2"
ReviewersBrowseObject2:ReportWindowName := "ReviewersBReportWindow2"
ListofReviewersReportObject2 = ListofReviewersReportClass()
ListofReviewersReportObject2:ReportName := "ListofReviewers2"
ListOfReviewersReportObject2:cWindowName := "ListOfReviewersReportWindow2"
ProjectReviewsObject2 = ProjectReviewsClass()
ProjectReviewsObject2:cWindowName := "ProjectReviewsWindow2"
ProjectReviewsObject2:TableName := "ProjectReviews_All2"
ProjectReviewsObject2:ReportName := "ProjectReviews2"
ProjectReviewsObject2:ReportWindowName := "ProjectReviewsReportWindow2"
ProjectReviewsObject2:ProjectsTable := "Projects2"
ProjectReviewsObject2:ReviewersTable := "Reviewers2"
ListofProjectReviewsReportObject2 = ListofProjectReviewsReportClass()
ListofProjectReviewsReportObject2:ReportName := "ListOfProjectReviews2"
ListofProjectReviewsReportObject2:cWindowName := "ListOfProjectReviewsReportWindow2"
ProcessStatusObject2 = ProcessStatusClass()
ProcessStatusObject2:cWindowName := "ProcessStatusWindow2"
ProcessStatusObject2:TableName := "ProcessStatus2"
ProcessStatusReportObject2 = ProcessStatusReportClass()
ProcessStatusReportObject2:ReportName := "ProcessStatus2"
ProcessStatusReportObject2:cWindowName := "ProcessStatusReportWindow2"
ProcessesObject2 = ProcessesClass()
ProcessesObject2:cWindowName := "ProcessesDataWindow2"
ProcessesObject2:TableName := "Process_All2"
ProcessesReportObject2 = ProcessesReportClass()
ProcessesReportObject2:ReportName := "Processes2"
ProcessesReportObject2:cWindowName := "ProcessesReportWindow2"
ProjectProcessesObject2 = ProjectProcessesClass()
ProjectProcessesObject2:TableName := "ProjectProcesses_All2"
ProjectProcessesObject2:cWindowName := "ProjectProcessesWindow2"
ProjectProcessesObject2:ProjectsTable := "Projects2"
ProjectProcessesObject2:ProcessTable := "Process2"
ProjectProcessesObject2:ProcessStatusTable := "ProcessStatus2"
ProjectProcessesReportObject2 = ProjectProcessesReportClass()
ProjectProcessesReportObject2:ReportName := "ProjectProcesses2"
ProjectProcessesReportObject2:cWindowName := "ProjectProcessesReportWindow2"
ProjectProcessesReportObject2:ProjectsTable := "Projects2"
DashObject2 = DashClass()
DashObject2:cWindowName := "DashWindow2"
DashObject2:TableName := "Dash2"
DashObject2:cWindowTitle := "„ «»⁄… Õ«·… «·„‘«—Ì⁄ ›Ï Õ«÷‰… «· ﬁ‰Ì«  «·ÕÌÊÌ…"
DashObject2:PermissionID := 110
DashObject2:BasicDataTableName := "BasicData2"
BasicDataObject2 = BasicDataClass()
BasicDataObject2:TableName := "BasicData2"
BasicDataObject2:cWindowName := "BasicDataWindow2"
ProjectsObject3 = ProjectsClass()
ProjectsObject3:cWindowName := "ProjectsWindow3"
ProjectsObject3:TableName := "Projects_All3"
ProjectsObject3:SubTable1 := "ProjectProcesses3"
ProjectsObject3:SubTable2 := "ProjectReviews3"
ProjectsObject3:WindowTitle := "„‘«—Ì⁄ Õ«÷‰… «· ﬁ‰Ì«  «·Â‰œ”Ì…"
ProjectsObject3:PermissionID := 83
ProjectsObject3:ReportName := "Projects3"
ProjectsObject3:ReportWindowName := "Projects3ReportWindow"
ListofProjectsReportObject3 = ListofProjectsReportClass()
ListofProjectsReportObject3:cWindowName := "ListOfProjectsReportWindow3"
ListofProjectsReportObject3:ReportName := "ListOfProjects3"
ReviewersDataObject3 = ReviewersDataClass()
ReviewersDataObject3:TableName := "Reviewers3"
ReviewersDataObject3:ReportName := "Reviewers3"
ReviewersDataObject3:cWindowName := "ReviewersDataWindow3"
ReviewersDataObject3:ReportWindowName := "ReviewersReportWindow3"
ReviewersBrowseObject3 = ReviewersBrowseClass()
ReviewersBrowseObject3:TableName := "Reviewers3"
ReviewersBrowseObject3:ReportName := "Reviewers3"
ReviewersBrowseObject3:cWindowName := "ReviewersBrowseWindow3"
ReviewersBrowseObject3:ReportWindowName := "ReviewersBReportWindow3"
ListofReviewersReportObject3 = ListofReviewersReportClass()
ListofReviewersReportObject3:ReportName := "ListofReviewers3"
ListOfReviewersReportObject3:cWindowName := "ListOfReviewersReportWindow3"
ProjectReviewsObject3 = ProjectReviewsClass()
ProjectReviewsObject3:cWindowName := "ProjectReviewsWindow3"
ProjectReviewsObject3:TableName := "ProjectReviews_All3"
ProjectReviewsObject3:ReportName := "ProjectReviews3"
ProjectReviewsObject3:ReportWindowName := "ProjectReviewsReportWindow3"
ProjectReviewsObject3:ProjectsTable := "Projects3"
ProjectReviewsObject3:ReviewersTable := "Reviewers3"
ListofProjectReviewsReportObject3 = ListofProjectReviewsReportClass()
ListofProjectReviewsReportObject3:ReportName := "ListOfProjectReviews3"
ListofProjectReviewsReportObject3:cWindowName := "ListOfProjectReviewsReportWindow3"
ProcessStatusObject3 = ProcessStatusClass()
ProcessStatusObject3:cWindowName := "ProcessStatusWindow3"
ProcessStatusObject3:TableName := "ProcessStatus3"
ProcessStatusReportObject3 = ProcessStatusReportClass()
ProcessStatusReportObject3:ReportName := "ProcessStatus3"
ProcessStatusReportObject3:cWindowName := "ProcessStatusReportWindow3"
ProcessesObject3 = ProcessesClass()
ProcessesObject3:cWindowName := "ProcessesDataWindow3"
ProcessesObject3:TableName := "Process_All3"
ProcessesReportObject3 = ProcessesReportClass()
ProcessesReportObject3:ReportName := "Processes3"
ProcessesReportObject3:cWindowName := "ProcessesReportWindow3"
ProjectProcessesObject3 = ProjectProcessesClass()
ProjectProcessesObject3:TableName := "ProjectProcesses_All3"
ProjectProcessesObject3:cWindowName := "ProjectProcessesWindow3"
ProjectProcessesObject3:ProjectsTable := "Projects3"
ProjectProcessesObject3:ProcessTable := "Process3"
ProjectProcessesObject3:ProcessStatusTable := "ProcessStatus3"
ProjectProcessesReportObject3 = ProjectProcessesReportClass()
ProjectProcessesReportObject3:ReportName := "ProjectProcesses3"
ProjectProcessesReportObject3:cWindowName := "ProjectProcessesReportWindow3"
ProjectProcessesReportObject3:ProjectsTable := "Projects3"
DashObject3 = DashClass()
DashObject3:cWindowName := "DashWindow3"
DashObject3:TableName := "Dash3"
DashObject3:cWindowTitle := "„ «»⁄… Õ«·… «·„‘«—Ì⁄ ›Ï Õ«÷‰… «· ﬁ‰Ì«  «·Â‰œ”Ì…"
DashObject3:PermissionID := 124
DashObject3:BasicDataTableName := "BasicData3"
BasicDataObject3 = BasicDataClass()
BasicDataObject3:TableName := "BasicData3"
BasicDataObject3:cWindowName := "BasicDataWindow3"
ProjectsObject4 = ProjectsClass()
ProjectsObject4:cWindowName := "ProjectsWindow4"
ProjectsObject4:TableName := "Projects_All4"
ProjectsObject4:SubTable1 := "ProjectProcesses4"
ProjectsObject4:SubTable2 := "ProjectReviews4"
ProjectsObject4:WindowTitle := "„‘«—Ì⁄ Õ«÷‰… «· ﬁ‰Ì«  «·‰”«∆Ì…"
ProjectsObject4:PermissionID := 83
ProjectsObject4:ReportName := "Projects4"
ProjectsObject4:ReportWindowName := "Projects4ReportWindow"
ListofProjectsReportObject4 = ListofProjectsReportClass()
ListofProjectsReportObject4:cWindowName := "ListOfProjectsReportWindow4"
ListofProjectsReportObject4:ReportName := "ListOfProjects4"
ReviewersDataObject4 = ReviewersDataClass()
ReviewersDataObject4:TableName := "Reviewers4"
ReviewersDataObject4:ReportName := "Reviewers4"
ReviewersDataObject4:cWindowName := "ReviewersDataWindow4"
ReviewersDataObject4:ReportWindowName := "ReviewersReportWindow4"
ReviewersBrowseObject4 = ReviewersBrowseClass()
ReviewersBrowseObject4:TableName := "Reviewers4"
ReviewersBrowseObject4:ReportName := "Reviewers4"
ReviewersBrowseObject4:cWindowName := "ReviewersBrowseWindow4"
ReviewersBrowseObject4:ReportWindowName := "ReviewersBReportWindow4"
ListofReviewersReportObject4 = ListofReviewersReportClass()
ListofReviewersReportObject4:ReportName := "ListofReviewers4"
ListOfReviewersReportObject4:cWindowName := "ListOfReviewersReportWindow4"
ProjectReviewsObject4 = ProjectReviewsClass()
ProjectReviewsObject4:cWindowName := "ProjectReviewsWindow4"
ProjectReviewsObject4:TableName := "ProjectReviews_All4"
ProjectReviewsObject4:ReportName := "ProjectReviews4"
ProjectReviewsObject4:ReportWindowName := "ProjectReviewsReportWindow4"
ProjectReviewsObject4:ProjectsTable := "Projects4"
ProjectReviewsObject4:ReviewersTable := "Reviewers4"
ListofProjectReviewsReportObject4 = ListofProjectReviewsReportClass()
ListofProjectReviewsReportObject4:ReportName := "ListOfProjectReviews4"
ListofProjectReviewsReportObject4:cWindowName := "ListOfProjectReviewsReportWindow4"
ProcessStatusObject4 = ProcessStatusClass()
ProcessStatusObject4:cWindowName := "ProcessStatusWindow4"
ProcessStatusObject4:TableName := "ProcessStatus4"
ProcessStatusReportObject4 = ProcessStatusReportClass()
ProcessStatusReportObject4:ReportName := "ProcessStatus4"
ProcessStatusReportObject4:cWindowName := "ProcessStatusReportWindow4"
ProcessesObject4 = ProcessesClass()
ProcessesObject4:cWindowName := "ProcessesDataWindow4"
ProcessesObject4:TableName := "Process_All4"
ProcessesReportObject4 = ProcessesReportClass()
ProcessesReportObject4:ReportName := "Processes4"
ProcessesReportObject4:cWindowName := "ProcessesReportWindow4"
ProjectProcessesObject4 = ProjectProcessesClass()
ProjectProcessesObject4:TableName := "ProjectProcesses_All4"
ProjectProcessesObject4:cWindowName := "ProjectProcessesWindow4"
ProjectProcessesObject4:ProjectsTable := "Projects4"
ProjectProcessesObject4:ProcessTable := "Process4"
ProjectProcessesObject4:ProcessStatusTable := "ProcessStatus4"
ProjectProcessesReportObject4 = ProjectProcessesReportClass()
ProjectProcessesReportObject4:ReportName := "ProjectProcesses4"
ProjectProcessesReportObject4:cWindowName := "ProjectProcessesReportWindow4"
ProjectProcessesReportObject4:ProjectsTable := "Projects4"
DashObject4 = DashClass()
DashObject4:cWindowName := "DashWindow4"
DashObject4:TableName := "Dash4"
DashObject4:cWindowTitle := "„ «»⁄… Õ«·… «·„‘«—Ì⁄ ›Ï Õ«÷‰… «· ﬁ‰Ì… «·‰”«∆Ì…"
DashObject4:PermissionID := 138
DashObject4:BasicDataTableName := "BasicData4"
BasicDataObject4 = BasicDataClass()
BasicDataObject4:TableName := "BasicData4"
BasicDataObject4:cWindowName := "BasicDataWindow4"
UsersWindowObject = UsersClass()
BasicDataObject = BasicDataClass()
BasicDataObject:TableName := "BasicData"
BasicDataObject:cWindowName := "BasicDataWindow"
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
v1 := UsersObject:CheckPermission(90)
v2 := UsersObject:CheckPermission(91)
v3 := UsersObject:CheckPermission(92)
v4 := UsersObject:CheckPermission(93)
v5 := UsersObject:CheckPermission(94)
v6 := UsersObject:CheckPermission(95)
IF v1 .or. v2 .or. v3 .or. v4 .or. v5 .or. v6
POPUP "«Ã—«¡«  «·„‘«—Ì⁄"
IF UsersObject:CheckPermission(94)
MENUITEM "«Ã—«¡«  «·„‘«—Ì⁄" Action ProjectProcessesObject:showwindow()
ENDIF
IF UsersObject:CheckPermission(95)
MENUITEM " ﬁ—Ì— »«Ã—«¡«  «·„‘«—Ì⁄" Action ProjectProcessesReportObject:showwindow()
SEPARATOR
ENDIF
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
v1 := UsersObject:CheckPermission(104)
v2 := UsersObject:CheckPermission(105)
v3 := UsersObject:CheckPermission(106)
v4 := UsersObject:CheckPermission(107)
v5 := UsersObject:CheckPermission(108)
v6 := UsersObject:CheckPermission(109)
IF v1 .or. v2 .or. v3 .or. v4 .or. v5 .or. v6
POPUP "«Ã—«¡«  «·„‘«—Ì⁄"
IF UsersObject:CheckPermission(108)
MENUITEM "«Ã—«¡«  «·„‘«—Ì⁄" Action ProjectProcessesObject2:showwindow()
ENDIF
IF UsersObject:CheckPermission(109)
MENUITEM " ﬁ—Ì— »«Ã—«¡«  «·„‘«—Ì⁄" Action ProjectProcessesReportObject2:showwindow()
SEPARATOR
ENDIF
IF UsersObject:CheckPermission(106)
MENUITEM " ⁄—Ì› «·«Ã—«¡« " Action ProcessesObject2:showwindow()
ENDIF
IF UsersObject:CheckPermission(107)
MENUITEM " ﬁ—Ì— »«·«Ã—«¡« " Action ProcessesReportObject2:showwindow()
SEPARATOR
ENDIF
IF UsersObject:CheckPermission(104)
MENUITEM "Õ«·«  «·«Ã—«¡« " Action ProcessStatusObject2:showwindow()
ENDIF
IF UsersObject:CheckPermission(105)
MENUITEM " ﬁ—Ì— Õ«·«  «·«Ã—«¡« " Action ProcessStatusReportObject2:showwindow()
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
v1 := UsersObject:CheckPermission(118)
v2 := UsersObject:CheckPermission(119)
v3 := UsersObject:CheckPermission(120)
v4 := UsersObject:CheckPermission(121)
v5 := UsersObject:CheckPermission(122)
v6 := UsersObject:CheckPermission(123)
IF v1 .or. v2 .or. v3 .or. v4 .or. v5 .or. v6
POPUP "«Ã—«¡«  «·„‘«—Ì⁄"
IF UsersObject:CheckPermission(122)
MENUITEM "«Ã—«¡«  «·„‘«—Ì⁄" Action ProjectProcessesObject3:showwindow()
ENDIF
IF UsersObject:CheckPermission(123)
MENUITEM " ﬁ—Ì— »«Ã—«¡«  «·„‘«—Ì⁄" Action ProjectProcessesReportObject3:showwindow()
SEPARATOR
ENDIF
IF UsersObject:CheckPermission(120)
MENUITEM " ⁄—Ì› «·«Ã—«¡« " Action ProcessesObject3:showwindow()
ENDIF
IF UsersObject:CheckPermission(121)
MENUITEM " ﬁ—Ì— »«·«Ã—«¡« " Action ProcessesReportObject3:showwindow()
SEPARATOR
ENDIF
IF UsersObject:CheckPermission(118)
MENUITEM "Õ«·«  «·«Ã—«¡« " Action ProcessStatusObject3:showwindow()
ENDIF
IF UsersObject:CheckPermission(119)
MENUITEM " ﬁ—Ì— Õ«·«  «·«Ã—«¡« " Action ProcessStatusReportObject3:showwindow()
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
v1 := UsersObject:CheckPermission(132)
v2 := UsersObject:CheckPermission(133)
v3 := UsersObject:CheckPermission(134)
v4 := UsersObject:CheckPermission(135)
v5 := UsersObject:CheckPermission(136)
v6 := UsersObject:CheckPermission(137)
IF v1 .or. v2 .or. v3 .or. v4 .or. v5 .or. v6
POPUP "«Ã—«¡«  «·„‘«—Ì⁄"
IF UsersObject:CheckPermission(136)
MENUITEM "«Ã—«¡«  «·„‘«—Ì⁄" Action ProjectProcessesObject4:showwindow()
ENDIF
IF UsersObject:CheckPermission(137)
MENUITEM " ﬁ—Ì— »«Ã—«¡«  «·„‘«—Ì⁄" Action ProjectProcessesReportObject4:showwindow()
SEPARATOR
ENDIF
IF UsersObject:CheckPermission(134)
MENUITEM " ⁄—Ì› «·«Ã—«¡« " Action ProcessesObject4:showwindow()
ENDIF
IF UsersObject:CheckPermission(135)
MENUITEM " ﬁ—Ì— »«·«Ã—«¡« " Action ProcessesReportObject4:showwindow()
SEPARATOR
ENDIF
IF UsersObject:CheckPermission(132)
MENUITEM "Õ«·«  «·«Ã—«¡« " Action ProcessStatusObject4:showwindow()
ENDIF
IF UsersObject:CheckPermission(133)
MENUITEM " ﬁ—Ì— Õ«·«  «·«Ã—«¡« " Action ProcessStatusReportObject4:showwindow()
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
VALUE " «—ÌŒ «·«’œ«— :  2011/7/19" ;
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
Return
*-------------------------------------------------------------------*

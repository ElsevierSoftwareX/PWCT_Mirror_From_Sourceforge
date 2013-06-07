*---------------------------------------------------------------------------*
* Time : 05:56:11    Date : 04/21/2013
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2013 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 18/04/2013
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
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
* Get parameters from command line
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


Resistance R_MAIN_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MAIN_18smart1() code
Set Procedure to "RABase.PRG"
Set Procedure to "LP.PRG"
Set Procedure to "FFD.PRG"
Set Procedure to "BFD.PRG"
Set Procedure to "WFD.PRG"
Set Procedure to "AWFD.PRG"
Set Procedure to "All.PRG"
oCloudApp = CloudApp()
oLP = LPClass()
oFFD = FFDClass()
oBFD = BFDClass()
oWFD = WFDClass()
oAWFD = AWFDClass()
oALL = AllClass()
myout = oCloudApp:ShowWindow()
Class CloudApp
Data aServers init {}
Data aSLA init {}
Data aVM init {}
Method ShowWindow
Method CloseWindow
Method AddServer
Method DeleteServer
Method AddSLA
Method DeleteSLA
Method CreateVM
Method DeleteVM
Method UpdateVM
Method VMUsage
Method TimeSpent
Method SaveToDatabase
Method RestoreFromDatabase
Method UI2Class
Method RunAlgorithm
Method AllResults
EndClass
Method ShowWindow Class CloudApp
if !iswindowdefined( winCloudApp )
DEFINE WINDOW winCloudApp ;
AT 10 ,10 ;
WIDTH 1290 ;
HEIGHT 696 ;
ICON "PWCTICON" ;
TITLE "Resource Allocation for Cloud Applications  " ;
MAIN ;
BACKCOLOR {236,233,216} 
DEFINE MAIN MENU
POPUP "File "
MENUITEM "Close " Action self:CloseWindow()
END POPUP
END MENU
DEFINE STATUSBAR 
DATE
CLOCK
KEYBOARD
END STATUSBAR
@ 195 ,12 LABEL lbl1 ;
VALUE "SLA" ;
WIDTH 40 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 30 ,12 LABEL lbl2 ;
VALUE "Physical Servers" ;
WIDTH 110 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 412 ,9 LABEL lbl3 ;
VALUE "Virtual Machines" ;
WIDTH 110 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 30 ,118 GRID GridServers;
WIDTH 645 ;
HEIGHT 150 ;
HEADERS {"ID","CPU (GHz)","Memory (GB)","Storage (GB)","Bandwidth(MBps)","VM Counter"};
WIDTHS {50,100,100,100,120,100} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
@ 195 ,118 GRID GridSLA;
WIDTH 845 ;
HEIGHT 200 ;
HEADERS {"ID","UserName","Max. VMs","Max. CPU (GHz)","Max. Memory (GB)","Max. Storage(GB)","Max. Bandwidth (MBps)","Max. Hours"};
WIDTHS {50,100,100,100,120,120,140,100} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
@ 412 ,117 GRID GridVM;
WIDTH 845 ;
HEIGHT 200 ;
HEADERS {"ID","ServerID","UserID","CPU (GHz)","Memory (GB)","Storage (GB)","Bandwidth(MBps)","Decription"};
WIDTHS {50,100,100,100,100,100,120,150} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
@ 30 ,1025 LABEL lbl4 ;
VALUE "Resource Allocation Algorithm " ;
WIDTH 180 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 60 ,974 LISTBOX listAlgorithm;
WIDTH 290 ;
HEIGHT 120 ;
ITEMS {"Linear Programming","First-fit decreasing (FFD)","Best-fit decreasing (BFD)","Worst-fit decreasing (WFD)","Almost worst-fit decreasing (AWFD)"} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 66 ,7 BUTTONEX btnAddUser;
CAPTION "Add Server";
ON CLICK self:AddServer()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 102 ,7 BUTTONEX btnDelUser;
CAPTION "Delete";
ON CLICK Self:DeleteServer()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 232 ,7 BUTTONEX btnADDSLA;
CAPTION "Add User";
ON CLICK Self:AddSLA()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 271 ,7 BUTTONEX btnDeleteSLA;
CAPTION "Delete ";
ON CLICK Self:DeleteSLA()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 442 ,7 BUTTONEX btnCreateVM;
CAPTION "Create VM";
ON CLICK Self:CreateVM()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 586 ,7 BUTTONEX btnDeleteVM;
CAPTION "Delete ";
ON CLICK Self:DeleteVM()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 325 ,1052 BUTTONEX btnRunAlgorithm;
CAPTION "Run Algorithm ";
ON CLICK Self:RunAlgorithm()  ;
WIDTH 150 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 478 ,7 BUTTONEX btnUpdateVM;
CAPTION "Update VM ";
ON CLICK Self:UpdateVM()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 514 ,7 BUTTONEX btnVMUsage;
CAPTION "VM Usage ";
ON CLICK Self:VMUsage()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 550 ,7 BUTTONEX btnTimeSpent;
CAPTION "Time Spent  ";
ON CLICK Self:TimeSpent()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 618 ,114 BUTTONEX btnSaveDatabase;
CAPTION " Save data to database file";
ON CLICK Self:SaveToDatabase()  ;
WIDTH 220 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 618 ,343 BUTTONEX btnRestoreDatabase;
CAPTION " Restore data from database file";
ON CLICK Self:RestoreFromDatabase()  ;
WIDTH 220 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 198 ,1069 LABEL lblConsoildation ;
VALUE "Consoildation " ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 228 ,974 LISTBOX listConsolidation;
WIDTH 290 ;
HEIGHT 90 ;
ITEMS {"Static consolidation","Dynamic consolidation","Dynamic consolidation with migration control"} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 371 ,1052 BUTTONEX btnAllResults;
CAPTION "All Results";
ON CLICK self:AllResults()  ;
WIDTH 150 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW
winCloudApp.Maximize ( )
ACTIVATE WINDOW winCloudApp
EndIF
Return 0
Method CloseWindow Class CloudApp
winCloudApp.Release ( )
Return 0
Method AddServer Class CloudApp
nMax := winCloudApp.GridServers.ItemCount
nNewMax := nMax
FOR x = 1 TO nMax STEP 1
nNewValue := winCloudApp.GridServers.cell(x,1)
nNewValue = VAL ( nNewValue )
IF nNewValue > nNewMax
nNewMax := nNewValue
ENDIF
Next
nNewMax := nNewMax + 1
cMax = STR ( nNewMax )
cMax = ALLTRIM ( cMax )
winCloudApp.GridServers.AddItem ( {cMax,"2.4","4","120","100","0"} )
Return 0
Method DeleteServer Class CloudApp
nValue := winCloudApp.GridServers.Value
IF nValue > 0
winCloudApp.GridServers.DeleteItem ( nValue )
ELSE
MyOut := MSGBOX("No server is selected to be deleted ","Sorry ")
ENDIF
Return 0
Method AddSLA Class CloudApp
nMax := winCloudApp.GridSLA.ItemCount
nNewMax := nMax
FOR x = 1 TO nMax STEP 1
nNewValue := winCloudApp.GridSLA.cell(x,1)
nNewValue = VAL ( nNewValue )
IF nNewValue > nNewMax
nNewMax := nNewValue
ENDIF
Next
nNewMax := nNewMax + 1
cMax = STR ( nNewMax )
cMax = ALLTRIM ( cMax )
winCloudApp.GridSLA.AddItem ( {cMax,"Test","10","2.4","4","50","100","240"} )
Return 0
Method DeleteSLA Class CloudApp
nValue := winCloudApp.GridSLA.Value
IF nValue > 0
winCloudApp.GridSLA.DeleteItem ( nValue )
ELSE
MyOut := MSGBOX("No SLA is selected to be deleted ","Sorry ")
ENDIF
Return 0
Method CreateVM Class CloudApp
nValue := winCloudApp.GridSLA.Value
IF nValue = 0
MyOut := MSGINFO("You must select the user first ","Sorry ")
Return 0
ENDIF
cUserName := winCloudApp.GridSLA.cell(nValue,2)
nMax := winCloudApp.GridVM.ItemCount
nNewMax := nMax
FOR x = 1 TO nMax STEP 1
nNewValue := winCloudApp.GridVM.cell(x,1)
nNewValue = VAL ( nNewValue )
IF nNewValue > nNewMax
nNewMax := nNewValue
ENDIF
Next
nNewMax := nNewMax + 1
cMax = STR ( nNewMax )
cMax = ALLTRIM ( cMax )
winCloudApp.GridVM.AddItem ( {cMax,"Not-Determined",cUserName,"2.4","4","20","100","Create Request"} )
Return 0
Method DeleteVM Class CloudApp
nValue := winCloudApp.GridVM.Value
IF nValue > 0
winCloudApp.GridVM.DeleteItem ( nValue )
ELSE
MyOut := MSGBOX("No request is selected to be deleted ","Sorry ")
ENDIF
Return 0
Method UpdateVM Class CloudApp
nValue := winCloudApp.GridVM.Value
IF nValue > 0
cID := winCloudApp.GridVM.cell(nValue,1)
cUserName := winCloudApp.GridVM.cell(nValue,3)
winCloudApp.GridVM.AddItem ( {cID,"Not-Determined",cUserName,"2.4","4","20","100","Update Request"} )
ELSE
MyOut := MSGBOX("No request is selected to be updated ","Sorry ")
ENDIF
Return 0
Method VMUsage Class CloudApp
nValue := winCloudApp.GridVM.Value
IF nValue > 0
cID := winCloudApp.GridVM.cell(nValue,1)
cUserName := winCloudApp.GridVM.cell(nValue,3)
winCloudApp.GridVM.AddItem ( {cID,"Not-Determined",cUserName,"2.4","4","20","100","VM Usage"} )
ELSE
MyOut := MSGBOX("No VM request is selected to be used ","Sorry ")
ENDIF
Return 0
Method TimeSpent Class CloudApp
winCloudApp.GridVM.AddItem ( {"---","---","---","---","---","---","---","Time spent (1) Mins"} )
Return 0
Method SaveToDatabase Class CloudApp
PutFile := PutFile ( { {"Database","*.dbf"} } , ;
, ;
, ;
, ;
)
IF PutFile == ""
Return 0
ENDIF
CREATE TempStru
APPEND BLANK
REPLACE Field_name WITH "RecType",;
Field_type WITH "N",;
Field_len WITH 3,;
Field_dec WITH 0
APPEND BLANK
REPLACE Field_name WITH "F1",;
Field_type WITH "C",;
Field_len WITH 50,;
Field_dec WITH 0
APPEND BLANK
REPLACE Field_name WITH "F2",;
Field_type WITH "C",;
Field_len WITH 50,;
Field_dec WITH 0
APPEND BLANK
REPLACE Field_name WITH "F3",;
Field_type WITH "C",;
Field_len WITH 50,;
Field_dec WITH 0
APPEND BLANK
REPLACE Field_name WITH "F4",;
Field_type WITH "C",;
Field_len WITH 50,;
Field_dec WITH 0
APPEND BLANK
REPLACE Field_name WITH "F5",;
Field_type WITH "C",;
Field_len WITH 50,;
Field_dec WITH 0
APPEND BLANK
REPLACE Field_name WITH "F6",;
Field_type WITH "C",;
Field_len WITH 50,;
Field_dec WITH 0
APPEND BLANK
REPLACE Field_name WITH "F7",;
Field_type WITH "C",;
Field_len WITH 50,;
Field_dec WITH 0
APPEND BLANK
REPLACE Field_name WITH "F8",;
Field_type WITH "C",;
Field_len WITH 50,;
Field_dec WITH 0
APPEND BLANK
REPLACE Field_name WITH "F9",;
Field_type WITH "C",;
Field_len WITH 50,;
Field_dec WITH 0
APPEND BLANK
REPLACE Field_name WITH "F10",;
Field_type WITH "C",;
Field_len WITH 50,;
Field_dec WITH 0
APPEND BLANK
REPLACE Field_name WITH "F11",;
Field_type WITH "C",;
Field_len WITH 50,;
Field_dec WITH 0
APPEND BLANK
REPLACE Field_name WITH "F12",;
Field_type WITH "C",;
Field_len WITH 50,;
Field_dec WITH 0
CLOSE
CREATE &putfile FROM TempStru
Use &putfile
nMax := winCloudApp.GridServers.ItemCount
IF nMax > 0
FOR x = 1 TO nMax STEP 1
v1 := winCloudApp.GridServers.cell(X,1)
v2 := winCloudApp.GridServers.cell(X,2)
v3 := winCloudApp.GridServers.cell(X,3)
v4 := winCloudApp.GridServers.cell(X,4)
v5 := winCloudApp.GridServers.cell(X,5)
v6 := winCloudApp.GridServers.cell(X,6)
Append Blank
REPLACE RecType WITH 1
REPLACE F1 WITH V1
REPLACE F2 WITH V2
REPLACE F3 WITH V3
REPLACE F4 WITH V4
REPLACE F5 WITH V5
REPLACE F6 WITH V6
Next
ENDIF
nMax := winCloudApp.GridSLA.ItemCount
IF nMax > 0
FOR x = 1 TO nMax STEP 1
v1 := winCloudApp.GridSLA.cell(X,1)
v2 := winCloudApp.GridSLA.cell(X,2)
v3 := winCloudApp.GridSLA.cell(X,3)
v4 := winCloudApp.GridSLA.cell(X,4)
v5 := winCloudApp.GridSLA.cell(X,5)
v6 := winCloudApp.GridSLA.cell(X,6)
v7 := winCloudApp.GridSLA.cell(X,7)
v8 := winCloudApp.GridSLA.cell(X,8)
Append Blank
REPLACE RecType WITH 2
REPLACE F1 WITH V1
REPLACE F2 WITH V2
REPLACE F3 WITH V3
REPLACE F4 WITH V4
REPLACE F5 WITH V5
REPLACE F6 WITH V6
REPLACE F7 WITH V7
REPLACE F8 WITH V8
Next
ENDIF
nMax := winCloudApp.GridVM.ItemCount
IF nMax > 0
FOR x = 1 TO nMax STEP 1
v1 := winCloudApp.GridVM.cell(X,1)
v2 := winCloudApp.GridVM.cell(X,2)
v3 := winCloudApp.GridVM.cell(X,3)
v4 := winCloudApp.GridVM.cell(X,4)
v5 := winCloudApp.GridVM.cell(X,5)
v6 := winCloudApp.GridVM.cell(X,6)
v7 := winCloudApp.GridVM.cell(X,7)
v8 := winCloudApp.GridVM.cell(X,8)
Append Blank
REPLACE RecType WITH 3
REPLACE F1 WITH V1
REPLACE F2 WITH V2
REPLACE F3 WITH V3
REPLACE F4 WITH V4
REPLACE F5 WITH V5
REPLACE F6 WITH V6
REPLACE F7 WITH V7
REPLACE F8 WITH V8
Next
ENDIF
close
MyOut := MSGBOX("Program data saved to the file " + PutFile," Ok ")
Delete File TempStru.dbf
Return 0
Method RestoreFromDatabase Class CloudApp
GetFile := GetFile ( { {"Database","*.dbf"}  } , ;
, ;
, ;
, ;
)
IF .NOT. GetFile == ""
CheckFile := File(GetFile)
IF CheckFile
Use &GetFile
winCloudApp.GridServers.DeleteAllItems ( )
winCloudApp.GridSLA.DeleteAllItems ( )
winCloudApp.GridVM.DeleteAllItems ( )
Goto Top
bEOF := EOF()
DO WHILE  .NOT. bEOF
V1 = ALLTRIM ( F1 )
V2 = ALLTRIM ( F2 )
V3 = ALLTRIM ( F3 )
V4 = ALLTRIM ( F4 )
V5 = ALLTRIM ( F5 )
V6 = ALLTRIM ( F6 )
V7 = ALLTRIM ( F7 )
V8 = ALLTRIM ( F8 )
IF RecType = 1
winCloudApp.GridServers.AddItem ( {V1,V2,V3,V4,V5,V6} )
ELSEIF RecType = 2
winCloudApp.GridSLA.AddItem ( {V1,V2,V3,V4,V5,V6,V7,V8} )
ELSEIF RecType = 3
winCloudApp.GridVM.AddItem ( {V1,V2,V3,V4,V5,V6,V7,V8} )
ENDIF
Skip 1
bEOF := EOF()
ENDDO
close
MyOut := MSGBOX("Program data restored from the file " + GetFile," Ok ")
ENDIF
ENDIF
Return 0
Method UI2Class Class CloudApp
Self:aServers := {}
Self:aSLA := {}
Self:aVM := {}
nMax := winCloudApp.GridServers.ItemCount
FOR x = 1 TO nMax STEP 1
aItem := {}
aItem := winCloudApp.GridServers.item(x)
AADD( self:aServers , aItem)
Next
nMax := winCloudApp.GridSLA.ItemCount
FOR x = 1 TO nMax STEP 1
aItem := {}
aItem := winCloudApp.GridSLA.item(x)
AADD( self:aSLA , aItem)
Next
nMax := winCloudApp.GridVM.ItemCount
FOR x = 1 TO nMax STEP 1
aItem := {}
aItem := winCloudApp.GridVM.item(x)
AADD( self:aVM , aItem)
Next
Return 0
Method RunAlgorithm Class CloudApp
nAlgorithm := winCloudApp.listAlgorithm.Value
nConsolidation := winCloudApp.listConsolidation.Value
myout = Self:UI2Class()
IF nAlgorithm = 1
oLP:aServers := self:aServers
oLP:aSLA := self:aSLA
oLP:aVM := self:aVM
oLP:nConsolidation := nConsolidation
myout = oLP:ShowWindow()
ENDIF
IF nAlgorithm = 2
oFFD:aServers := self:aServers
oFFD:aSLA := self:aSLA
oFFD:aVM := self:aVM
oFFD:nConsolidation := nConsolidation
myout = oFFD:ShowWindow()
ENDIF
IF nAlgorithm = 3
oBFD:aServers := self:aServers
oBFD:aSLA := self:aSLA
oBFD:aVM := self:aVM
oBFD:nConsolidation := nConsolidation
myout = oBFD:ShowWindow()
ENDIF
IF nAlgorithm = 4
oWFD:aServers := self:aServers
oWFD:aSLA := self:aSLA
oWFD:aVM := self:aVM
oWFD:nConsolidation := nConsolidation
myout = oWFD:ShowWindow()
ENDIF
IF nAlgorithm = 5
oAWFD:aServers := self:aServers
oAWFD:aSLA := self:aSLA
oAWFD:aVM := self:aVM
oAWFD:nConsolidation := nConsolidation
myout = oAWFD:ShowWindow()
ENDIF
Return 0
Method AllResults Class CloudApp
myout = oAll:ShowWindow()
Return 0

End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'RABase.PRG'",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'LP.PRG'",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'FFD.PRG'",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'BFD.PRG'",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'WFD.PRG'",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'AWFD.PRG'",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'All.PRG'",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object oCloudApp of Class CloudApp",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object oLP of Class LPClass",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object oFFD of Class FFDClass",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object oBFD of Class BFDClass",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object oWFD of Class WFDClass",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object oAWFD of Class AWFDClass",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object oALL of Class AllClass",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","myout = oCloudApp.ShowWindow()",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class CloudApp",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Data aServers Init Value {}",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Data aSLA Init Value {}",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Data aVM Init Value {}",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowWindow",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Method CloseWindow",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Method AddServer",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Method DeleteServer",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Method AddSLA",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Method DeleteSLA",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Method CreateVM",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Method DeleteVM",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Method UpdateVM",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Method VMUsage",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Method TimeSpent",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Method SaveToDatabase",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Method RestoreFromDatabase",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Method UI2Class",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Method RunAlgorithm",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Method AllResults",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowWindow Class CloudApp",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( winCloudApp ) , Title : 'Resource Allocation for Cloud Applications  '",38,42)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",43,47)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File '",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close ' )",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",53,54)
SS_ESASTEP("Circuits\Main\Main\Main","Date",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",57,58)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",61,62)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'SLA'",63,64)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",65,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Physical Servers'",70,71)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",72,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Virtual Machines'",77,78)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",79,83)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( GridServers ) , HEADERS : {'ID','CPU (GHz)','Memory (GB)','Storage (GB)','Bandwidth(MBps)','VM Counter'}",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",85,92)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( GridSLA ) , HEADERS : {'ID','UserName','Max. VMs','Max. CPU (GHz)','Max. Memory (GB)','Max. Storage(GB)','Max. Bandwidth (MBps)','Max. Hours'}",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",94,101)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( GridVM ) , HEADERS : {'ID','ServerID','UserID','CPU (GHz)','Memory (GB)','Storage (GB)','Bandwidth(MBps)','Decription'}",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",103,110)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Resource Allocation Algorithm '",111,112)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",113,117)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( listAlgorithm ) , Items : {'Linear Programming','First-fit decreasing (FFD)','Best-fit decreasing (BFD)','Worst-fit decreasing (WFD)','Almost worst-fit decreasing (AWFD)'}",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",119,124)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnAddUser ) , Caption : 'Add Server'",125,126)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:AddServer",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",128,130)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnDelUser ) , Caption : 'Delete'",131,132)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:DeleteServer",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",134,136)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnADDSLA ) , Caption : 'Add User'",137,138)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:AddSLA",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",140,142)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnDeleteSLA ) , Caption : 'Delete '",143,144)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:DeleteSLA",145,145)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",146,148)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnCreateVM ) , Caption : 'Create VM'",149,150)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:CreateVM",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",152,154)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnDeleteVM ) , Caption : 'Delete '",155,156)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:DeleteVM",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",158,160)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnRunAlgorithm ) , Caption : 'Run Algorithm '",161,162)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:RunAlgorithm",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",164,166)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnUpdateVM ) , Caption : 'Update VM '",167,168)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:UpdateVM",169,169)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",170,172)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnVMUsage ) , Caption : 'VM Usage '",173,174)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:VMUsage",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",176,178)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnTimeSpent ) , Caption : 'Time Spent  '",179,180)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:TimeSpent",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",182,184)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnSaveDatabase ) , Caption : ' Save data to database file'",185,186)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:SaveToDatabase",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",188,190)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnRestoreDatabase ) , Caption : ' Restore data from database file'",191,192)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:RestoreFromDatabase",193,193)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",194,196)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblConsoildation ) , Caption : 'Consoildation '",197,198)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",199,203)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( listConsolidation ) , Items : {'Static consolidation','Dynamic consolidation','Dynamic consolidation with migration control'}",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",205,210)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnAllResults ) , Caption : 'All Results'",211,212)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:AllResults",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",214,216)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",217,218)
SS_ESASTEP("Circuits\Main\Main\Main","winCloudApp.Maximize ( )",219,219)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",220,222)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",223,223)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method CloseWindow Class CloudApp",224,224)
SS_ESASTEP("Circuits\Main\Main\Main","winCloudApp.Release ( )",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",226,226)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method AddServer Class CloudApp",227,227)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = winCloudApp.GridServers.ItemCount",228,228)
SS_ESASTEP("Circuits\Main\Main\Main","nNewMax = nMax",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","nNewValue = winCloudApp.GridServers.cell(x,1)",231,231)
SS_ESASTEP("Circuits\Main\Main\Main","nNewValue = CONVERT nNewValue TO Numeric",232,232)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nNewValue > nNewMax )",233,233)
SS_ESASTEP("Circuits\Main\Main\Main","nNewMax = nNewValue",234,234)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","nNewMax = nNewMax + 1",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","cMax = CONVERT nNewMax TO STRING",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","cMax = All Trim cMax",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","winCloudApp.GridServers.AddItem ( {cMax,'2.4','4','120','100','0'} )",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method DeleteServer Class CloudApp",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","nValue = winCloudApp.GridServers.Value",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nValue > 0 )",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","winCloudApp.GridServers.DeleteItem ( nValue )",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No server is selected to be deleted ' Title 'Sorry ' Type: Message Box",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method AddSLA Class CloudApp",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = winCloudApp.GridSLA.ItemCount",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","nNewMax = nMax",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","nNewValue = winCloudApp.GridSLA.cell(x,1)",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","nNewValue = CONVERT nNewValue TO Numeric",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nNewValue > nNewMax )",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","nNewMax = nNewValue",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","nNewMax = nNewMax + 1",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","cMax = CONVERT nNewMax TO STRING",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","cMax = All Trim cMax",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","winCloudApp.GridSLA.AddItem ( {cMax,'Test','10','2.4','4','50','100','240'} )",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method DeleteSLA Class CloudApp",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","nValue = winCloudApp.GridSLA.Value",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nValue > 0 )",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","winCloudApp.GridSLA.DeleteItem ( nValue )",268,268)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No SLA is selected to be deleted ' Title 'Sorry ' Type: Message Box",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method CreateVM Class CloudApp",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","nValue = winCloudApp.GridSLA.Value",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nValue = 0 )",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'You must select the user first ' Title 'Sorry ' Type: Message Info",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","cUserName = winCloudApp.GridSLA.cell(nValue,2)",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = winCloudApp.GridVM.ItemCount",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","nNewMax = nMax",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","nNewValue = winCloudApp.GridVM.cell(x,1)",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","nNewValue = CONVERT nNewValue TO Numeric",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nNewValue > nNewMax )",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","nNewMax = nNewValue",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","nNewMax = nNewMax + 1",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","cMax = CONVERT nNewMax TO STRING",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","cMax = All Trim cMax",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","winCloudApp.GridVM.AddItem ( {cMax,'Not-Determined',cUserName,'2.4','4','20','100','Create Request'} )",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method DeleteVM Class CloudApp",294,294)
SS_ESASTEP("Circuits\Main\Main\Main","nValue = winCloudApp.GridVM.Value",295,295)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nValue > 0 )",296,296)
SS_ESASTEP("Circuits\Main\Main\Main","winCloudApp.GridVM.DeleteItem ( nValue )",297,297)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",298,298)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No request is selected to be deleted ' Title 'Sorry ' Type: Message Box",299,299)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",300,300)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",301,301)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method UpdateVM Class CloudApp",302,302)
SS_ESASTEP("Circuits\Main\Main\Main","nValue = winCloudApp.GridVM.Value",303,303)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nValue > 0 )",304,304)
SS_ESASTEP("Circuits\Main\Main\Main","cID = winCloudApp.GridVM.cell(nValue,1)",305,305)
SS_ESASTEP("Circuits\Main\Main\Main","cUserName = winCloudApp.GridVM.cell(nValue,3)",306,306)
SS_ESASTEP("Circuits\Main\Main\Main","winCloudApp.GridVM.AddItem ( {cID,'Not-Determined',cUserName,'2.4','4','20','100','Update Request'} )",307,307)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",308,308)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No request is selected to be updated ' Title 'Sorry ' Type: Message Box",309,309)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",310,310)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",311,311)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method VMUsage Class CloudApp",312,312)
SS_ESASTEP("Circuits\Main\Main\Main","nValue = winCloudApp.GridVM.Value",313,313)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nValue > 0 )",314,314)
SS_ESASTEP("Circuits\Main\Main\Main","cID = winCloudApp.GridVM.cell(nValue,1)",315,315)
SS_ESASTEP("Circuits\Main\Main\Main","cUserName = winCloudApp.GridVM.cell(nValue,3)",316,316)
SS_ESASTEP("Circuits\Main\Main\Main","winCloudApp.GridVM.AddItem ( {cID,'Not-Determined',cUserName,'2.4','4','20','100','VM Usage'} )",317,317)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",318,318)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No VM request is selected to be used ' Title 'Sorry ' Type: Message Box",319,319)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",320,320)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",321,321)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method TimeSpent Class CloudApp",322,322)
SS_ESASTEP("Circuits\Main\Main\Main","winCloudApp.GridVM.AddItem ( {'---','---','---','---','---','---','---','Time spent (1) Mins'} )",323,323)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",324,324)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method SaveToDatabase Class CloudApp",325,325)
SS_ESASTEP("Circuits\Main\Main\Main","PutFile := Put File",326,330)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( PutFile == '' )",331,331)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",332,332)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",333,333)
SS_ESASTEP("Circuits\Main\Main\Main","Define Table &putfile",334,334)
SS_ESASTEP("Circuits\Main\Main\Main","Field : 'RecType' , Type  : 'N' , Length  : 3",335,339)
SS_ESASTEP("Circuits\Main\Main\Main","Field : 'F1' , Type  : 'C' , Length  : 50",340,344)
SS_ESASTEP("Circuits\Main\Main\Main","Field : 'F2' , Type  : 'C' , Length  : 50",345,349)
SS_ESASTEP("Circuits\Main\Main\Main","Field : 'F3' , Type  : 'C' , Length  : 50",350,354)
SS_ESASTEP("Circuits\Main\Main\Main","Field : 'F4' , Type  : 'C' , Length  : 50",355,359)
SS_ESASTEP("Circuits\Main\Main\Main","Field : 'F5' , Type  : 'C' , Length  : 50",360,364)
SS_ESASTEP("Circuits\Main\Main\Main","Field : 'F6' , Type  : 'C' , Length  : 50",365,369)
SS_ESASTEP("Circuits\Main\Main\Main","Field : 'F7' , Type  : 'C' , Length  : 50",370,374)
SS_ESASTEP("Circuits\Main\Main\Main","Field : 'F8' , Type  : 'C' , Length  : 50",375,379)
SS_ESASTEP("Circuits\Main\Main\Main","Field : 'F9' , Type  : 'C' , Length  : 50",380,384)
SS_ESASTEP("Circuits\Main\Main\Main","Field : 'F10' , Type  : 'C' , Length  : 50",385,389)
SS_ESASTEP("Circuits\Main\Main\Main","Field : 'F11' , Type  : 'C' , Length  : 50",390,394)
SS_ESASTEP("Circuits\Main\Main\Main","Field : 'F12' , Type  : 'C' , Length  : 50",395,399)
SS_ESASTEP("Circuits\Main\Main\Main","Create Table",400,401)
SS_ESASTEP("Circuits\Main\Main\Main","Open Table &putfile",402,402)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = winCloudApp.GridServers.ItemCount",403,403)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",404,404)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",405,405)
SS_ESASTEP("Circuits\Main\Main\Main","v1 = winCloudApp.GridServers.cell(X,1)",406,406)
SS_ESASTEP("Circuits\Main\Main\Main","v2 = winCloudApp.GridServers.cell(X,2)",407,407)
SS_ESASTEP("Circuits\Main\Main\Main","v3 = winCloudApp.GridServers.cell(X,3)",408,408)
SS_ESASTEP("Circuits\Main\Main\Main","v4 = winCloudApp.GridServers.cell(X,4)",409,409)
SS_ESASTEP("Circuits\Main\Main\Main","v5 = winCloudApp.GridServers.cell(X,5)",410,410)
SS_ESASTEP("Circuits\Main\Main\Main","v6 = winCloudApp.GridServers.cell(X,6)",411,411)
SS_ESASTEP("Circuits\Main\Main\Main","Add New Record",412,412)
SS_ESASTEP("Circuits\Main\Main\Main","Replace Field RecType with 1",413,413)
SS_ESASTEP("Circuits\Main\Main\Main","Replace Field F1 with V1",414,414)
SS_ESASTEP("Circuits\Main\Main\Main","Replace Field F2 with V2",415,415)
SS_ESASTEP("Circuits\Main\Main\Main","Replace Field F3 with V3",416,416)
SS_ESASTEP("Circuits\Main\Main\Main","Replace Field F4 with V4",417,417)
SS_ESASTEP("Circuits\Main\Main\Main","Replace Field F5 with V5",418,418)
SS_ESASTEP("Circuits\Main\Main\Main","Replace Field F6 with V6",419,419)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",420,420)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",421,421)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = winCloudApp.GridSLA.ItemCount",422,422)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",423,423)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",424,424)
SS_ESASTEP("Circuits\Main\Main\Main","v1 = winCloudApp.GridSLA.cell(X,1)",425,425)
SS_ESASTEP("Circuits\Main\Main\Main","v2 = winCloudApp.GridSLA.cell(X,2)",426,426)
SS_ESASTEP("Circuits\Main\Main\Main","v3 = winCloudApp.GridSLA.cell(X,3)",427,427)
SS_ESASTEP("Circuits\Main\Main\Main","v4 = winCloudApp.GridSLA.cell(X,4)",428,428)
SS_ESASTEP("Circuits\Main\Main\Main","v5 = winCloudApp.GridSLA.cell(X,5)",429,429)
SS_ESASTEP("Circuits\Main\Main\Main","v6 = winCloudApp.GridSLA.cell(X,6)",430,430)
SS_ESASTEP("Circuits\Main\Main\Main","v7 = winCloudApp.GridSLA.cell(X,7)",431,431)
SS_ESASTEP("Circuits\Main\Main\Main","v8 = winCloudApp.GridSLA.cell(X,8)",432,432)
SS_ESASTEP("Circuits\Main\Main\Main","Add New Record",433,433)
SS_ESASTEP("Circuits\Main\Main\Main","Replace Field RecType with 2",434,434)
SS_ESASTEP("Circuits\Main\Main\Main","Replace Field F1 with V1",435,435)
SS_ESASTEP("Circuits\Main\Main\Main","Replace Field F2 with V2",436,436)
SS_ESASTEP("Circuits\Main\Main\Main","Replace Field F3 with V3",437,437)
SS_ESASTEP("Circuits\Main\Main\Main","Replace Field F4 with V4",438,438)
SS_ESASTEP("Circuits\Main\Main\Main","Replace Field F5 with V5",439,439)
SS_ESASTEP("Circuits\Main\Main\Main","Replace Field F6 with V6",440,440)
SS_ESASTEP("Circuits\Main\Main\Main","Replace Field F7 with V7",441,441)
SS_ESASTEP("Circuits\Main\Main\Main","Replace Field F8 with V8",442,442)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",443,443)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",444,444)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = winCloudApp.GridVM.ItemCount",445,445)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",446,446)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",447,447)
SS_ESASTEP("Circuits\Main\Main\Main","v1 = winCloudApp.GridVM.cell(X,1)",448,448)
SS_ESASTEP("Circuits\Main\Main\Main","v2 = winCloudApp.GridVM.cell(X,2)",449,449)
SS_ESASTEP("Circuits\Main\Main\Main","v3 = winCloudApp.GridVM.cell(X,3)",450,450)
SS_ESASTEP("Circuits\Main\Main\Main","v4 = winCloudApp.GridVM.cell(X,4)",451,451)
SS_ESASTEP("Circuits\Main\Main\Main","v5 = winCloudApp.GridVM.cell(X,5)",452,452)
SS_ESASTEP("Circuits\Main\Main\Main","v6 = winCloudApp.GridVM.cell(X,6)",453,453)
SS_ESASTEP("Circuits\Main\Main\Main","v7 = winCloudApp.GridVM.cell(X,7)",454,454)
SS_ESASTEP("Circuits\Main\Main\Main","v8 = winCloudApp.GridVM.cell(X,8)",455,455)
SS_ESASTEP("Circuits\Main\Main\Main","Add New Record",456,456)
SS_ESASTEP("Circuits\Main\Main\Main","Replace Field RecType with 3",457,457)
SS_ESASTEP("Circuits\Main\Main\Main","Replace Field F1 with V1",458,458)
SS_ESASTEP("Circuits\Main\Main\Main","Replace Field F2 with V2",459,459)
SS_ESASTEP("Circuits\Main\Main\Main","Replace Field F3 with V3",460,460)
SS_ESASTEP("Circuits\Main\Main\Main","Replace Field F4 with V4",461,461)
SS_ESASTEP("Circuits\Main\Main\Main","Replace Field F5 with V5",462,462)
SS_ESASTEP("Circuits\Main\Main\Main","Replace Field F6 with V6",463,463)
SS_ESASTEP("Circuits\Main\Main\Main","Replace Field F7 with V7",464,464)
SS_ESASTEP("Circuits\Main\Main\Main","Replace Field F8 with V8",465,465)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",466,466)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",467,467)
SS_ESASTEP("Circuits\Main\Main\Main","Close Table",468,468)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Program data saved to the file ' + PutFile Title ' Ok ' Type: Message Box",469,469)
SS_ESASTEP("Circuits\Main\Main\Main","Delete File TempStru.dbf",470,470)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",471,471)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method RestoreFromDatabase Class CloudApp",472,472)
SS_ESASTEP("Circuits\Main\Main\Main","GetFile := Get File",473,477)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( .NOT. GetFile == '' )",478,478)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File GetFile",479,479)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( CheckFile )",480,480)
SS_ESASTEP("Circuits\Main\Main\Main","Open Table &GetFile",481,481)
SS_ESASTEP("Circuits\Main\Main\Main","winCloudApp.GridServers.DeleteAllItems ( )",482,482)
SS_ESASTEP("Circuits\Main\Main\Main","winCloudApp.GridSLA.DeleteAllItems ( )",483,483)
SS_ESASTEP("Circuits\Main\Main\Main","winCloudApp.GridVM.DeleteAllItems ( )",484,484)
SS_ESASTEP("Circuits\Main\Main\Main","Goto First Record",485,485)
SS_ESASTEP("Circuits\Main\Main\Main","bEOF = Check - End of file",486,486)
SS_ESASTEP("Circuits\Main\Main\Main","WHILE ( .NOT. bEOF )",487,487)
SS_ESASTEP("Circuits\Main\Main\Main","V1 = All Trim F1",488,488)
SS_ESASTEP("Circuits\Main\Main\Main","V2 = All Trim F2",489,489)
SS_ESASTEP("Circuits\Main\Main\Main","V3 = All Trim F3",490,490)
SS_ESASTEP("Circuits\Main\Main\Main","V4 = All Trim F4",491,491)
SS_ESASTEP("Circuits\Main\Main\Main","V5 = All Trim F5",492,492)
SS_ESASTEP("Circuits\Main\Main\Main","V6 = All Trim F6",493,493)
SS_ESASTEP("Circuits\Main\Main\Main","V7 = All Trim F7",494,494)
SS_ESASTEP("Circuits\Main\Main\Main","V8 = All Trim F8",495,495)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( RecType = 1 )",496,496)
SS_ESASTEP("Circuits\Main\Main\Main","winCloudApp.GridServers.AddItem ( {V1,V2,V3,V4,V5,V6} )",497,497)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( RecType = 2 )",498,498)
SS_ESASTEP("Circuits\Main\Main\Main","winCloudApp.GridSLA.AddItem ( {V1,V2,V3,V4,V5,V6,V7,V8} )",499,499)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( RecType = 3 )",500,500)
SS_ESASTEP("Circuits\Main\Main\Main","winCloudApp.GridVM.AddItem ( {V1,V2,V3,V4,V5,V6,V7,V8} )",501,501)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",502,502)
SS_ESASTEP("Circuits\Main\Main\Main","Goto Next Record",503,503)
SS_ESASTEP("Circuits\Main\Main\Main","bEOF = Check - End of file",504,504)
SS_ESASTEP("Circuits\Main\Main\Main","END OF While Loop",505,505)
SS_ESASTEP("Circuits\Main\Main\Main","Close Table",506,506)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Program data restored from the file ' + GetFile Title ' Ok ' Type: Message Box",507,507)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",508,508)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",509,509)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",510,510)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method UI2Class Class CloudApp",511,511)
SS_ESASTEP("Circuits\Main\Main\Main","Self.aServers = {}",512,512)
SS_ESASTEP("Circuits\Main\Main\Main","Self.aSLA = {}",513,513)
SS_ESASTEP("Circuits\Main\Main\Main","Self.aVM = {}",514,514)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = winCloudApp.GridServers.ItemCount",515,515)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",516,516)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aItem",517,517)
SS_ESASTEP("Circuits\Main\Main\Main","aItem = winCloudApp.GridServers.item(x)",518,518)
SS_ESASTEP("Circuits\Main\Main\Main","Add item aItem To Array self:aServers",519,519)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",520,520)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = winCloudApp.GridSLA.ItemCount",521,521)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",522,522)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aItem",523,523)
SS_ESASTEP("Circuits\Main\Main\Main","aItem = winCloudApp.GridSLA.item(x)",524,524)
SS_ESASTEP("Circuits\Main\Main\Main","Add item aItem To Array self:aSLA",525,525)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",526,526)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = winCloudApp.GridVM.ItemCount",527,527)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",528,528)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Array aItem",529,529)
SS_ESASTEP("Circuits\Main\Main\Main","aItem = winCloudApp.GridVM.item(x)",530,530)
SS_ESASTEP("Circuits\Main\Main\Main","Add item aItem To Array self:aVM",531,531)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",532,532)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",533,533)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method RunAlgorithm Class CloudApp",534,534)
SS_ESASTEP("Circuits\Main\Main\Main","nAlgorithm = winCloudApp.listAlgorithm.Value",535,535)
SS_ESASTEP("Circuits\Main\Main\Main","nConsolidation = winCloudApp.listConsolidation.Value",536,536)
SS_ESASTEP("Circuits\Main\Main\Main","myout = Self.UI2Class()",537,537)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nAlgorithm = 1 )",538,538)
SS_ESASTEP("Circuits\Main\Main\Main","oLP.aServers = self:aServers",539,539)
SS_ESASTEP("Circuits\Main\Main\Main","oLP.aSLA = self:aSLA",540,540)
SS_ESASTEP("Circuits\Main\Main\Main","oLP.aVM = self:aVM",541,541)
SS_ESASTEP("Circuits\Main\Main\Main","oLP.nConsolidation = nConsolidation",542,542)
SS_ESASTEP("Circuits\Main\Main\Main","myout = oLP.ShowWindow()",543,543)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",544,544)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nAlgorithm = 2 )",545,545)
SS_ESASTEP("Circuits\Main\Main\Main","oFFD.aServers = self:aServers",546,546)
SS_ESASTEP("Circuits\Main\Main\Main","oFFD.aSLA = self:aSLA",547,547)
SS_ESASTEP("Circuits\Main\Main\Main","oFFD.aVM = self:aVM",548,548)
SS_ESASTEP("Circuits\Main\Main\Main","oFFD.nConsolidation = nConsolidation",549,549)
SS_ESASTEP("Circuits\Main\Main\Main","myout = oFFD.ShowWindow()",550,550)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",551,551)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nAlgorithm = 3 )",552,552)
SS_ESASTEP("Circuits\Main\Main\Main","oBFD.aServers = self:aServers",553,553)
SS_ESASTEP("Circuits\Main\Main\Main","oBFD.aSLA = self:aSLA",554,554)
SS_ESASTEP("Circuits\Main\Main\Main","oBFD.aVM = self:aVM",555,555)
SS_ESASTEP("Circuits\Main\Main\Main","oBFD.nConsolidation = nConsolidation",556,556)
SS_ESASTEP("Circuits\Main\Main\Main","myout = oBFD.ShowWindow()",557,557)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",558,558)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nAlgorithm = 4 )",559,559)
SS_ESASTEP("Circuits\Main\Main\Main","oWFD.aServers = self:aServers",560,560)
SS_ESASTEP("Circuits\Main\Main\Main","oWFD.aSLA = self:aSLA",561,561)
SS_ESASTEP("Circuits\Main\Main\Main","oWFD.aVM = self:aVM",562,562)
SS_ESASTEP("Circuits\Main\Main\Main","oWFD.nConsolidation = nConsolidation",563,563)
SS_ESASTEP("Circuits\Main\Main\Main","myout = oWFD.ShowWindow()",564,564)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",565,565)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nAlgorithm = 5 )",566,566)
SS_ESASTEP("Circuits\Main\Main\Main","oAWFD.aServers = self:aServers",567,567)
SS_ESASTEP("Circuits\Main\Main\Main","oAWFD.aSLA = self:aSLA",568,568)
SS_ESASTEP("Circuits\Main\Main\Main","oAWFD.aVM = self:aVM",569,569)
SS_ESASTEP("Circuits\Main\Main\Main","oAWFD.nConsolidation = nConsolidation",570,570)
SS_ESASTEP("Circuits\Main\Main\Main","myout = oAWFD.ShowWindow()",571,571)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",572,572)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",573,573)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method AllResults Class CloudApp",574,574)
SS_ESASTEP("Circuits\Main\Main\Main","myout = oAll.ShowWindow()",575,575)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",576,576)
Return
*-------------------------------------------------------------------*

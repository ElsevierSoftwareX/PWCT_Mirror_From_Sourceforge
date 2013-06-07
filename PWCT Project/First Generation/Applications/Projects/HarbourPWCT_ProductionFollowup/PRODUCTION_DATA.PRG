*---------------------------------------------------------------------------*
* Time : 14:18:05    Date : 06/07/2013
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2013 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2013.05.15
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
*---------------------------------------------------------------------------*
#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
Function PRODUCTION_DATA
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

Resistance R_PRODUCTION_DATA_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_PRODUCTION_DATA_18smart1() code
class ProductionClass From SystemDatabase
Data TableName init "Production_All"
Data nID init 0
Data column init "OrderNumber"
Data PrimaryKey init "id"
Data columns init {"ID","OrderNumber","f_name","dateofinput","starttime","finishtime","noofpcs"}
Data nOrderNumber init 0
Data OrderNumberitems init {}
Data OrderNumberitemsids init {}
Data nEmployee init 0
Data Employeeitems init {}
Data Employeeitemsids init {}
Data cStartTime init ""
Data cFinishTime init ""
Data cNoOfPCs init ""
Data cDateofInput init ""
Data cCost init ""
Data cNotes init ""
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
Method OnAfterAddEdit
Method OnBeforeDelete
Method onbeforeedit
Method BeforeSearch
Method SearchAdd
Method settimer
Method GetSearchValue
EndClass
Method showwindow Class ProductionClass
IF .not. UserCan_WinProduction = 2
MyOut := MSGBOX("Access is denied","Sorry")
Return 0
ENDIF
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( ProductionWindow )
DEFINE WINDOW ProductionWindow ;
AT 10 ,10 ;
WIDTH 893 ;
HEIGHT 601 ;
ON INIT self:Search()  ;
ICON "PWCTICON" ;
TITLE "Employee Production" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64} 
@ 42 ,3 IMAGE image1;
PICTURE "Image\back.jpg";
STRETCH ;
WIDTH 870 HEIGHT 470
@ 520 ,388 BUTTONEX btnFirst;
CAPTION "First";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 520 ,451 BUTTONEX btnNext;
CAPTION "Next";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 520 ,578 BUTTONEX btnLast;
CAPTION "Last";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 520 ,734 BUTTONEX btnClose;
CAPTION "Close";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 520 ,515 BUTTONEX btnPrev;
CAPTION "Prev ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 520 ,647 BUTTONEX btnDel;
CAPTION "Delete";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 520 ,224 BUTTONEX btnsave;
CAPTION "Save";
ON CLICK self:saverecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 520 ,296 BUTTONEX btncancel;
CAPTION "Cancel";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 520 ,152 BUTTONEX btnedit;
CAPTION "Edit";
ON CLICK self:editrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 520 ,69 BUTTONEX btnadd;
CAPTION "Add";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 6 ,4 LABEL lblTitle ;
VALUE "                                                                   Employee Production" ;
WIDTH 870 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 385 ,186 LABEL lblSourceName ;
VALUE "Start Time" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 385 ,298 TEXTBOX textStartTime;
HEIGHT 30 ;
WIDTH 140 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
@ 52 ,68 LABEL lbl1browse ;
VALUE "Order Number" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 53 ,205 TEXTBOX textNamebrowse;
HEIGHT 30 ;
WIDTH 500 ;
BACKCOLOR {0,255,128} ;
FONTCOLOR {0,0,0} 
@ 52 ,715 BUTTONEX btn1browse;
CAPTION "Search";
ON CLICK self:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 93 ,73 GRID Grid1browse;
ON DBLCLICK self:OpenDataWindow  ;
WIDTH 740 ;
HEIGHT 160 ;
HEADERS {"ID","Order Number","Employee Name","Date","Start Time","Finish Time","No of PCs"};
WIDTHS {100,100,200,100,100,100,100} ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
@ 385 ,457 LABEL lblSecUnitValue ;
VALUE "Finish Time" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 385 ,570 TEXTBOX textFinishTime;
HEIGHT 30 ;
WIDTH 140 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
myout = self:LoadLookupTable("Orders","OrderNumber",@self:OrderNumberItems,"id",@self:OrderNumberItemsIDS)
@ 266 ,146 LABEL lblOrderNumber ;
VALUE "Order Number" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 265 ,300 COMBOBOX comboordernumber;
WIDTH 200 ;
HEIGHT 100;
ITEMS self:OrderNumberitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
myout = self:LoadLookupTable("Employees","f_name",@self:employeeItems,"id",@self:employeeItemsIDS)
@ 306 ,186 LABEL lblEmployee ;
VALUE "Employee" ;
WIDTH 90 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 305 ,300 COMBOBOX comboemployee;
WIDTH 410 ;
HEIGHT 100;
ITEMS self:Employeeitems ;
VALUE 1 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 472 ,226 LABEL lblNotes ;
VALUE "Notes" ;
WIDTH 50 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 470 ,298 TEXTBOX textNotes;
HEIGHT 30 ;
WIDTH 410 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
@ 430 ,511 LABEL lblCost ;
VALUE "Cost" ;
WIDTH 50 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 431 ,570 TEXTBOX textCost;
HEIGHT 30 ;
WIDTH 140 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
@ 345 ,116 LABEL lblDateofInput ;
VALUE "Date of Production" ;
WIDTH 160 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 345 ,300 DATEPICKER datedateofinput;
WIDTH 150 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
DATEFORMAT "dd/MM/yyyy" ;
FONTCOLOR {0,0,0}
@ 430 ,176 LABEL lblnoofpcs ;
VALUE "No oF PCs" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 430 ,298 TEXTBOX textnoofpcs;
HEIGHT 30 ;
WIDTH 140 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
END WINDOW
ProductionWindow.Center ( )
myout = self:showrecord()
myout = self:setmode(2)
ProductionWindow.Timer1.Enabled := false
ACTIVATE WINDOW ProductionWindow
EndIF
Return 0
Method UserInterface2Class Class ProductionClass
self:nOrderNumber := ProductionWindow.ComboOrderNumber.Value
self:nOrderNumber := self:OrderNumberItemsids[self:nOrderNumber]
self:nEmployee := ProductionWindow.ComboEmployee.Value
self:nEmployee := self:EmployeeItemsids[self:nEmployee ]
self:cStartTime := ProductionWindow.textStartTime.Value
self:cFinishTime := ProductionWindow.textFinishTime.Value
self:cNoOfPCS := ProductionWindow.textNoOfPCS.Value
self:cCost := ProductionWindow.textCost.Value
self:cNotes := ProductionWindow.textNotes.Value
self:cDateofInput := ProductionWindow.dateDateofInput.Value
self:cDateofInput := dtoc(self:cDateofInput)
Return 0
Method Class2ADO Class ProductionClass
self:oRS:fields:item(alltrim("employeeid")):value := self:nEmployee
self:oRS:fields:item(alltrim("OrderNumberid")):value := self:nOrderNumber
self:oRS:fields:item(alltrim("NoOfPCS")):value := self:cNoOfPCS
self:oRS:fields:item(alltrim("Cost")):value := self:cCost
self:oRS:fields:item(alltrim("Notes")):value := self:cNotes
self:oRS:fields:item(alltrim("StartTime")):value := self:cStartTime
self:oRS:fields:item(alltrim("FinishTime")):value := self:cFinishTime
self:oRS:fields:item(alltrim("DateofInput")):value := self:cDateofInput
Return 0
Method ADO2Class Class ProductionClass
self:nEmployee := self:oRS:fields:item(alltrim("EmployeeID")):value
self:nOrderNumber := self:oRS:fields:item(alltrim("OrderNumberID")):value
self:cNOOFPCS := self:oRS:fields:item(alltrim("NoOfPCS")):value
self:cCost := self:oRS:fields:item(alltrim("Cost")):value
self:cNotes := self:oRS:fields:item(alltrim("Notes")):value
self:cStartTime := self:oRS:fields:item(alltrim("StartTime")):value
self:cFinishTime := self:oRS:fields:item(alltrim("FinishTime")):value
self:cDateOfInput := self:oRS:fields:item(alltrim("DateOfInput")):value
Return 0
Method Class2UserInterface Class ProductionClass
self:nOrderNumber = self:LookupIDToIndex(self:nOrderNumber,@self:OrderNumberItemsids)
ProductionWindow.ComboOrderNumber.Value := self:nOrderNumber
self:nEmployee = self:LookupIDToIndex(self:nEmployee,@self:EmployeeItemsids)
ProductionWindow.ComboEmployee.Value := self:nEmployee
ProductionWindow.textStartTime.Value := self:cStartTime
ProductionWindow.textFinishTime.Value := self:cFinishTime
ProductionWindow.textNoOfPCS.Value := self:cNoOfPCS
ProductionWindow.dateDateOfInput.Value := ctod(self:cDateOfInput)
ProductionWindow.textCost.Value := self:cCost
ProductionWindow.textNotes.Value := self:cNotes
Return 0
Method ClearRecord Class ProductionClass
self:nOrderNumber := 0
self:nEmployee := 0
self:cStartTime := "1"
self:cFinishTime := "1"
self:cNoOfPCS := "1"
self:cDateOfInput := ""
self:cCost := ""
self:cNotes := ""
Return 0
Method OpenDataWindow Class ProductionClass
Local nvalue,myout
nvalue := ProductionWindow.grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class ProductionClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class ProductionClass
myout = self:search()
ProductionWindow.Timer1.Enabled := false
Return 0
Method setmode(p1) Class ProductionClass
IF p1 = 1
ProductionWindow.btnfirst.Enabled := false
ProductionWindow.btnnext.Enabled := false
ProductionWindow.btnprev.Enabled := false
ProductionWindow.btnlast.Enabled := false
ProductionWindow.btndel.Enabled := false
ProductionWindow.btnclose.Enabled := false
ProductionWindow.btnsave.Enabled := true
ProductionWindow.btncancel.Enabled := true
ProductionWindow.btnedit.Enabled := false
ProductionWindow.btnadd.Enabled := false
ProductionWindow.comboOrderNumber.Enabled := true
ProductionWindow.comboEmployee.Enabled := true
ProductionWindow.textStartTime.Enabled := true
ProductionWindow.textFinishTime.Enabled := true
ProductionWindow.textNoOfPCS.Enabled := true
ProductionWindow.textCost.Enabled := true
ProductionWindow.textNotes.Enabled := true
ProductionWindow.datedateofinput.Enabled := true
ENDIF
IF p1 = 2
ProductionWindow.btnfirst.Enabled := true
ProductionWindow.btnnext.Enabled := true
ProductionWindow.btnprev.Enabled := true
ProductionWindow.btnlast.Enabled := true
ProductionWindow.btndel.Enabled := true
ProductionWindow.btnclose.Enabled := true
ProductionWindow.btnsave.Enabled := false
ProductionWindow.btncancel.Enabled := false
ProductionWindow.btnedit.Enabled := true
ProductionWindow.btnadd.Enabled := true
ProductionWindow.comboOrderNumber.Enabled := false
ProductionWindow.comboEmployee.Enabled := false
ProductionWindow.textStartTime.Enabled := false
ProductionWindow.textFinishTime.Enabled := false
ProductionWindow.textNoOfPCS.Enabled := false
ProductionWindow.textCost.Enabled := false
ProductionWindow.textNotes.Enabled := false
ProductionWindow.datedateofinput.Enabled := false
ENDIF
self:OperationMode := p1
Return 0
Method OnAfterAddEdit Class ProductionClass
Return myout
Method OnBeforeEdit Class ProductionClass
Return myout
Method OnBeforeDelete Class ProductionClass
Return myout
Method closewindow Class ProductionClass
myout = self:disconnect()
ProductionWindow.Release ( )
Return 0
Method AutoGotoRecord Class ProductionClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( ProductionWindow )
myout = self:showrecord()
ProductionWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class ProductionClass
ProductionWindow.grid1Browse.DeleteAllItems ( )
ProductionWindow.grid1Browse.Value := 0
Return 0
Method SearchAdd(temp_array) Class ProductionClass
ProductionWindow.grid1Browse.AddItem ( temp_array )
Return 0
Method SetTimer(p1) Class ProductionClass
ProductionWindow.Timer1.Enabled := p1
Return 0
Method GetSearchValue Class ProductionClass
cName := ProductionWindow.textNameBrowse.Value
Return cName

End Of Resistance

*-------------------------------------------------------------------*

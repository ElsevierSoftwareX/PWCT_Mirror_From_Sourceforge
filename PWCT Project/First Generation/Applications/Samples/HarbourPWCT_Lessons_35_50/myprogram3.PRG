*---------------------------------------------------------------------------*
* Time : 01:00:58    Date : 07/13/2015
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2015.04.28
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


Resistance R_myprogram3_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_myprogram3_19art1() code
obj35 = customers()
out = obj35:showWindow()
Class customers
Data oRS init 0
Data oCon init 0
Data cName init 0
Data cAdress init 0
Data cPhone init 0
Data lAdd init False
Method connect
Method Disconnect
Method RecordCount
Method ShowWindow
Method ShowRecords
Method Search
Method ADO2class
Method class2interface
Method ShowRecord
Method LastRecord
Method FirstRecord
Method prevRecord
Method NextRecord
Method GotoRecord
Method clearRecord
Method AddRecord
Method SetMode
Method CancleRecord
Method interface2class
Method class2ADO
Method SaveRecord
Method EditRecord
Method deleteRecord
Method closeWindow
EndClass
Method connect Class customers
self:oCon := TOLEAUTO():NEW( "ADODB.Connection" )
self:oCon:open ( 'Driver={Microsoft Access Driver (*.mdb)};Dbq=DataSystem.mdb' )
self:oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
self:oRS:CursorType := 1
self:oRS:ActiveConnection := self:oCon
self:oRS:open ( "Select * from customers",self:oCon,3,3 )
Return 0
Method Disconnect Class customers
self:oRS:Close()
self:oCon:CLOSE()
Return 0
Method showWindow Class customers
out = self:connect()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 829 ;
HEIGHT 682 ;
ON RELEASE self:Disconnect()  ;
ICON "PWCTICON" ;
TITLE "Customers  " ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

DEFINE MAIN MENU of win1
POPUP "File "
MENUITEM "Close" Action self:closeWindow
END POPUP
POPUP "Edit "
MENUITEM "Edit " Action self:EditRecord NAME Edit
MENUITEM "Add " Action self:AddRecord NAME add
MENUITEM "Delete" Action self:deleteRecord NAME delete
MENUITEM "Save" Action self:SaveRecord NAME save
MENUITEM "cancle" Action self:CancleRecord NAME cancel
END POPUP
POPUP "control"
MENUITEM "First Record " Action self:FirstRecord NAME First
MENUITEM "Next Record" Action self:NextRecord NAME Next
MENUITEM "previous Record" Action self:prevRecord NAME prev
MENUITEM "Last Record" Action self:LastRecord NAME Last
END POPUP
END MENU
@ 36 ,179 IMAGE image1;
PICTURE "search.PNG";
STRETCH ;
WIDTH 337 HEIGHT 40
@ 92 ,30 GRID Grid1;
ON DBLCLICK self:GotoRecord()  ;
ON CHANGE self:GotoRecord()  ;
WIDTH 688 ;
HEIGHT 315 ;
HEADERS {"Name","Adress","Phone"};
WIDTHS {250,150,150} ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {221,238,255} ;
FONTCOLOR {0,0,0}
@ 44 ,42 LABEL lbl1 ;
VALUE "Search By Name " ;
WIDTH 128 ;
HEIGHT 21 ;
FONT "Arial" SIZE 12  ;
BOLD ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 39 ,182 TEXTBOX textSearch;
ON CHANGE self:Search()  ;
HEIGHT 32 ;
WIDTH 295 ;
FONT "arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 450 ,24 LABEL lblName ;
VALUE "Name " ;
WIDTH 50 ;
HEIGHT 20 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,128}
@ 484 ,24 LABEL lbladress ;
VALUE "Adress " ;
WIDTH 53 ;
HEIGHT 26 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,128}
@ 517 ,24 LABEL lblPhone ;
VALUE "Phone " ;
WIDTH 50 ;
HEIGHT 26 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,128}
@ 446 ,86 TEXTBOX textName;
HEIGHT 30 ;
WIDTH 276 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,234} ;
FONTCOLOR {0,0,0} 

@ 480 ,86 TEXTBOX textAdress;
HEIGHT 30 ;
WIDTH 276 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,234} ;
FONTCOLOR {0,0,0} 

@ 514 ,86 TEXTBOX textPhone;
HEIGHT 30 ;
WIDTH 276 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,234} ;
FONTCOLOR {0,0,0} 

@ 571 ,47 BUTTONEX btnFirst;
CAPTION "First ";
FONTCOLOR {0,0,0};
BACKCOLOR {151,203,255};
ON CLICK self:FirstRecord()  ;
WIDTH 87 HEIGHT 29 ;
FONT "Arial Rounded MT Bold" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 571 ,152 BUTTONEX btnNext;
CAPTION "Next ";
FONTCOLOR {0,0,0};
BACKCOLOR {151,203,255};
ON CLICK self:NextRecord()  ;
WIDTH 87 HEIGHT 29 ;
FONT "Arial Rounded MT Bold" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 571 ,257 BUTTONEX btnprev;
CAPTION "previous";
FONTCOLOR {0,0,0};
BACKCOLOR {151,203,255};
ON CLICK self:prevRecord()  ;
WIDTH 87 HEIGHT 29 ;
FONT "Arial Rounded MT Bold" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 571 ,362 BUTTONEX btnlast;
CAPTION "last";
FONTCOLOR {0,0,0};
BACKCOLOR {151,203,255};
ON CLICK self:LastRecord()  ;
WIDTH 87 HEIGHT 29 ;
FONT "Arial Rounded MT Bold" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 412 ,540 LABEL lblcount ;
VALUE "Records Count :" ;
WIDTH 149 ;
HEIGHT 27 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 412 ,683 LABEL lblcount2 ;
VALUE " " ;
WIDTH 34 ;
HEIGHT 23 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {255,0,128}
@ 106 ,749 IMAGE imageAdd;
PICTURE "Add.PNG";
ON CLICK self:AddRecord()  ;
WIDTH 34 HEIGHT 34
@ 155 ,749 IMAGE imageSave;
PICTURE "save.PNG";
ON CLICK self:SaveRecord()  ;
WIDTH 34 HEIGHT 34
@ 204 ,749 IMAGE imagecancel;
PICTURE "cancel.PNG";
ON CLICK self:CancleRecord()  ;
WIDTH 34 HEIGHT 34
@ 253 ,749 IMAGE imageEdit;
PICTURE "edit.PNG";
ON CLICK self:editRecord()  ;
WIDTH 34 HEIGHT 34
@ 302 ,749 IMAGE imagedelete;
PICTURE "delete.PNG";
ON CLICK self:deleteRecord()  ;
WIDTH 34 HEIGHT 44
@ 455 ,632 IMAGE imagebk;
PICTURE "PWCT.PNG";
STRETCH ;
WIDTH 165 HEIGHT 144
DEFINE STATUSBAR 

STATUSITEM "Reem Mohammed Basheer" 

END STATUSBAR

END WINDOW

myout = self:ShowRecords()
out2 = self:ShowRecord()
out3 = self:SetMode(1)
ACTIVATE WINDOW win1
EndIF

Return 0
Method RecordCount Class customers
nMax := self:oRS:RecordCount
cMax = STR ( nMax )
cMax = ALLTRIM ( cMax )
win1.lblcount2.Value := cMax
Return 0
Method ShowRecords Class customers
nMax := self:oRS:RecordCount
IF nMax>0
self:oRS:MOVEFIRST()
FOR x = 1 TO nMax STEP 1
cName := self:oRS:fields:item(alltrim("castName")):value
cAdress := self:oRS:fields:item(alltrim("castAdress")):value
cPhone := self:oRS:fields:item(alltrim("castPhone")):value
win1.Grid1.AddItem ( {cName,cAdress,cPhone} )
self:oRS:MOVENEXT()
Next
self:oRS:MOVEFIRST()
ENDIF
out = self:RecordCount()
Return 0
Method Search Class customers
cName := win1.textSearch.Value
self:oRS:Close()
self:oRS:CursorType := 1
self:oRS:ActiveConnection := self:oCon
self:oRS:open ( "Select * from customers where castName like '"+ cName+ "%'",self:oCon,3,3 )
win1.Grid1.DeleteAllItems ( )
out = self:ShowRecords()
Return 0
Method ADO2class Class customers
self:cName := self:oRS:fields:item(alltrim("castName")):value
self:cAdress := self:oRS:fields:item(alltrim("castAdress")):value
self:cPhone := self:oRS:fields:item(alltrim("castPhone")):value
Return 0
Method class2interface Class customers
win1.textName.Value := self:cName
win1.textAdress.Value := self:cAdress
win1.textPhone.Value := self:cPhone
Return 0
Method ShowRecord Class customers
nMax := self:oRS:RecordCount
IF nMax>0
out = self:ADO2class()
out = self:class2interface()
ENDIF
Return 0
Method FirstRecord Class customers
self:oRS:MOVEFIRST()
out = self:showRecord()
Return 0
Method lastRecord Class customers
self:oRS:MOVELAST()
out = self:showRecord()
Return 0
Method prevRecord Class customers
self:oRS:MOVEPREVIOUS()
bBOF := self:oRS:BOF()
IF bBOF
self:oRS:MOVENEXT()
MyOut := MSGBOX("Begin of records "," ")
ELSE
out = self:showRecord()
ENDIF
Return 0
Method NextRecord Class customers
self:oRS:MOVENEXT()
icheck := self:oRS:EOF()
IF icheck
self:oRS:MOVEPREVIOUS()
MyOut := MSGBOX("End of records "," ")
ELSE
out = self:showRecord()
ENDIF
Return 0
Method GotoRecord Class customers
nindex := win1.Grid1.Value
IF nindex>0
self:oRS:MOVEFIRST()
nindex := nindex-1
IF nindex>0
FOR x = 1 TO nindex STEP 1
self:oRS:MOVENEXT()
Next
ENDIF
out = self:ShowRecord()
ENDIF
Return 0
Method clearRecord Class customers
self:cName := ""
self:cAdress := ""
self:cPhone := ""
Return 0
Method AddRecord Class customers
out = self:clearRecord()
out = self:class2interface()
out3 = self:SetMode(2)
self:lAdd := True
Return 0
Method SetMode(nMode) Class customers
IF nMode=1
win1.btnlast.Enabled := True
win1.btnprev.Enabled := True
win1.btnFirst.Enabled := True
win1.btnNext.Enabled := True
win1.textSearch.Enabled := True
win1.imageAdd.Enabled := True
win1.imageEdit.Enabled := True
win1.imagedelete.Enabled := True
win1.add.Enabled := True
win1.edit.Enabled := True
win1.delete.Enabled := True
win1.First.Enabled := True
win1.next.Enabled := True
win1.prev.Enabled := True
win1.last.Enabled := True
win1.Grid1.Enabled := True
win1.cancel.Enabled := False
win1.save.Enabled := False
win1.imageSave.Enabled := False
win1.imagecancel.Enabled := False
win1.textName.Enabled := False
win1.textAdress.Enabled := False
win1.textPhone.Enabled := False
ELSEIF nMode=2
win1.btnlast.Enabled := False
win1.btnprev.Enabled := False
win1.btnFirst.Enabled := False
win1.btnNext.Enabled := False
win1.textSearch.Enabled := False
win1.imageAdd.Enabled := False
win1.imageEdit.Enabled := False
win1.imagedelete.Enabled := False
win1.add.Enabled := false
win1.edit.Enabled := False
win1.delete.Enabled := False
win1.First.Enabled := False
win1.next.Enabled := False
win1.prev.Enabled := False
win1.last.Enabled := False
win1.cancel.Enabled := True
win1.save.Enabled := True
win1.imageSave.Enabled := True
win1.imagecancel.Enabled := True
win1.textName.Enabled := True
win1.textAdress.Enabled := True
win1.textPhone.Enabled := True
ENDIF
Return 0
Method CancleRecord Class customers
out = self:ADO2class()
out = self:class2interface()
out = self:SetMode(1)
self:lAdd := False
Return 0
Method interface2class Class customers
self:cName := win1.textName.Value
self:cAdress := win1.textAdress.Value
self:cPhone := win1.textPhone.Value
Return 0
Method class2ADO Class customers
self:oRS:fields:item(alltrim("castName")):value := self:cName
self:oRS:fields:item(alltrim("castAdress")):value := self:cAdress
self:oRS:fields:item(alltrim("castPhone")):value := self:cPhone
Return 0
Method SaveRecord Class customers
IF self:lAdd=True
self:lAdd := False
self:oRS:ADDNEW()
out = self:interface2class()
out = self:class2ADO()
self:oRS:UPDATE()
out = self:SetMode(1)
win1.Grid1.DeleteAllItems ( )
out = self:ShowRecords()
self:oRS:MOVELAST()
ELSE
out = self:interface2class()
out = self:class2ADO()
self:oRS:UPDATE()
out = self:SetMode(1)
win1.Grid1.DeleteAllItems ( )
vBM := self:oRS:BookMark
out = self:ShowRecords()
self:oRS:BookMark := vBM
ENDIF
Return 0
Method EditRecord Class customers
out3 = self:SetMode(2)
Return 0
Method deleteRecord Class customers
Local nMax
nMax := self:oRS:RecordCount
IF nMax>0
MyOut := MSGYESNO("Are You sure ? "," Delete")
IF myout=False
Return 0
ENDIF
self:oRS:DELETE()
self:oRS:UPDATE()
win1.Grid1.DeleteAllItems ( )
out = self:ShowRecords()
IF nMax=1
out = self:clearRecord()
out = self:Class2interface()
ELSE
out = self:ShowRecord()
ENDIF
ELSE
MyOut := MSGBOX("No Records "," ")
ENDIF
Return 0
Method closeWindow Class customers
win1.Release ( )
Return 0


End Of Resistance

INIT PROCEDURE Init_myprogram3
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Create Object obj35 of Class customers",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","out = obj35.showWindow()",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class customers",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Data oRS Init Value 0",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Data oCon Init Value 0",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Data cName Init Value 0",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Data cAdress Init Value 0",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Data cPhone Init Value 0",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Data lAdd Init Value False",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Method connect",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Method Disconnect",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Method RecordCount",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowWindow",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowRecords",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Method Search",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Method ADO2class",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Method class2interface",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowRecord",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Method LastRecord",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Method FirstRecord",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Method prevRecord",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Method NextRecord",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Method GotoRecord",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Method clearRecord",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Method AddRecord",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Method SetMode",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Method CancleRecord",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Method interface2class",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Method class2ADO",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Method SaveRecord",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Method EditRecord",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Method deleteRecord",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Method closeWindow",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method connect Class customers",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","self:oCon = Create New ADODB Connection",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection self:oCon , Connection String : 'Driver={Microsoft Access Driver (*.mdb)};Dbq=",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","self:oRS = Create New ADODB RecordSet Object",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset self:oRS , Connection self:oCon , CursorType 1 , SQL Statement 'Select * from custome",39,41)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Disconnect Class customers",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet self:oRS",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection self:oCon",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showWindow Class customers",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.connect()",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Customers  '",49,53)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE : Action self:Disconnect",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",55,62)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU : WINDOW (win1)",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File '",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Close' )",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Edit '",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Edit ' ) NAME Edit",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Add ' ) NAME add",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Delete' ) NAME delete",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Save' ) NAME save",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'cancle' ) NAME cancel",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'control'",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'First Record ' ) NAME First",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Next Record' ) NAME Next",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'previous Record' ) NAME prev",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Last Record' ) NAME Last",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'search.PNG'",81,82)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",83,84)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'Name','Adress','Phone'}",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON DBLCLICK : Action self:GotoRecord",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:GotoRecord",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","Grid Properties",88,94)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Search By Name '",95,96)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",97,102)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textSearch  )",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:Search",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",105,110)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblName ) , Caption : 'Name '",111,112)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",113,117)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbladress ) , Caption : 'Adress '",118,119)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",120,124)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblPhone ) , Caption : 'Phone '",125,126)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",127,131)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textName  )",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",133,138)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textAdress  )",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",140,145)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textPhone  )",146,146)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",147,152)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnFirst ) , Caption : 'First '",153,156)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:FirstRecord",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",158,161)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnNext ) , Caption : 'Next '",162,165)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:NextRecord",166,166)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",167,170)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnprev ) , Caption : 'previous'",171,174)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:prevRecord",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",176,179)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnlast ) , Caption : 'last'",180,183)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:LastRecord",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",185,188)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblcount ) , Caption : 'Records Count :'",189,190)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",191,195)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblcount2 ) , Caption : ' '",196,197)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",198,202)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( imageAdd ) , Image : 'Add.PNG'",203,204)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:AddRecord",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( imageSave ) , Image : 'save.PNG'",207,208)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:SaveRecord",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( imagecancel ) , Image : 'cancel.PNG'",211,212)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:CancleRecord",213,213)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",214,214)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( imageEdit ) , Image : 'edit.PNG'",215,216)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:editRecord",217,217)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",218,218)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( imagedelete ) , Image : 'delete.PNG'",219,220)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:deleteRecord",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( imagebk ) , Image : 'PWCT.PNG'",223,224)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",225,226)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",227,228)
SS_ESASTEP("Circuits\Main\Main\Main","Items",229,229)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Reem Mohammed Basheer' )",230,231)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",232,233)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",234,235)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ShowRecords()",236,236)
SS_ESASTEP("Circuits\Main\Main\Main","out2 = self.ShowRecord()",237,237)
SS_ESASTEP("Circuits\Main\Main\Main","out3 = self.SetMode(1)",238,238)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",239,241)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",242,242)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method RecordCount Class customers",243,243)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",244,244)
SS_ESASTEP("Circuits\Main\Main\Main","cMax = CONVERT nMax TO STRING",245,245)
SS_ESASTEP("Circuits\Main\Main\Main","cMax = All Trim cMax",246,246)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lblcount2.Value := cMax",247,247)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",248,248)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowRecords Class customers",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax>0 )",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","cName = ADODB RecordSet (self:oRS) Get Field ('castName') Value",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","cAdress = ADODB RecordSet (self:oRS) Get Field ('castAdress') Value",255,255)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = ADODB RecordSet (self:oRS) Get Field ('castPhone') Value",256,256)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {cName,cAdress,cPhone} )",257,257)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",258,258)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",260,260)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",261,261)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.RecordCount()",262,262)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Search Class customers",264,264)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.textSearch.Value",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet self:oRS",266,266)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset self:oRS , Connection self:oCon , CursorType 1 , SQL Statement 'Select * from custome",267,269)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",270,270)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.ShowRecords()",271,271)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",272,272)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ADO2class Class customers",273,273)
SS_ESASTEP("Circuits\Main\Main\Main","self:cName = ADODB RecordSet (self:oRS) Get Field ('castName') Value",274,274)
SS_ESASTEP("Circuits\Main\Main\Main","self:cAdress = ADODB RecordSet (self:oRS) Get Field ('castAdress') Value",275,275)
SS_ESASTEP("Circuits\Main\Main\Main","self:cPhone = ADODB RecordSet (self:oRS) Get Field ('castPhone') Value",276,276)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method class2interface Class customers",278,278)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Value := self:cName",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAdress.Value := self:cAdress",280,280)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Value := self:cPhone",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",282,282)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowRecord Class customers",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax>0 )",285,285)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.ADO2class()",286,286)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.class2interface()",287,287)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",288,288)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",289,289)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method FirstRecord Class customers",290,290)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.showRecord()",292,292)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",293,293)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method lastRecord Class customers",294,294)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Last Record",295,295)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.showRecord()",296,296)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",297,297)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method prevRecord Class customers",298,298)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Previous Record",299,299)
SS_ESASTEP("Circuits\Main\Main\Main","bBOF = ADODB RecordSet self:oRS , Check BOF",300,300)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( bBOF )",301,301)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",302,302)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message 'Begin of records ' Title ' ' Type: Message Box",303,303)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",304,304)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.showRecord()",305,305)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",306,306)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",307,307)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method NextRecord Class customers",308,308)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",309,309)
SS_ESASTEP("Circuits\Main\Main\Main","icheck = ADODB RecordSet self:oRS , Check EOF",310,310)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( icheck )",311,311)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Previous Record",312,312)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message 'End of records ' Title ' ' Type: Message Box",313,313)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",314,314)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.showRecord()",315,315)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",316,316)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",317,317)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method GotoRecord Class customers",318,318)
SS_ESASTEP("Circuits\Main\Main\Main","nindex = win1.Grid1.Value",319,319)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nindex>0 )",320,320)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",321,321)
SS_ESASTEP("Circuits\Main\Main\Main","nindex = nindex-1",322,322)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nindex>0 )",323,323)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nindex Step 1)",324,324)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",325,325)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",326,326)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",327,327)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.ShowRecord()",328,328)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",329,329)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",330,330)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method clearRecord Class customers",331,331)
SS_ESASTEP("Circuits\Main\Main\Main","self.cName = ''",332,332)
SS_ESASTEP("Circuits\Main\Main\Main","self.cAdress = ''",333,333)
SS_ESASTEP("Circuits\Main\Main\Main","self.cPhone = ''",334,334)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",335,335)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method AddRecord Class customers",336,336)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.clearRecord()",337,337)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.class2interface()",338,338)
SS_ESASTEP("Circuits\Main\Main\Main","out3 = self.SetMode(2)",339,339)
SS_ESASTEP("Circuits\Main\Main\Main","self.lAdd = True",340,340)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",341,341)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method SetMode(nMode) Class customers",342,342)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMode=1 )",343,343)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnlast.Enabled := True",344,344)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnprev.Enabled := True",345,345)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFirst.Enabled := True",346,346)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := True",347,347)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textSearch.Enabled := True",348,348)
SS_ESASTEP("Circuits\Main\Main\Main","win1.imageAdd.Enabled := True",349,349)
SS_ESASTEP("Circuits\Main\Main\Main","win1.imageEdit.Enabled := True",350,350)
SS_ESASTEP("Circuits\Main\Main\Main","win1.imagedelete.Enabled := True",351,351)
SS_ESASTEP("Circuits\Main\Main\Main","win1.add.Enabled := True",352,352)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit.Enabled := True",353,353)
SS_ESASTEP("Circuits\Main\Main\Main","win1.delete.Enabled := True",354,354)
SS_ESASTEP("Circuits\Main\Main\Main","win1.First.Enabled := True",355,355)
SS_ESASTEP("Circuits\Main\Main\Main","win1.next.Enabled := True",356,356)
SS_ESASTEP("Circuits\Main\Main\Main","win1.prev.Enabled := True",357,357)
SS_ESASTEP("Circuits\Main\Main\Main","win1.last.Enabled := True",358,358)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.Enabled := True",359,359)
SS_ESASTEP("Circuits\Main\Main\Main","win1.cancel.Enabled := False",360,360)
SS_ESASTEP("Circuits\Main\Main\Main","win1.save.Enabled := False",361,361)
SS_ESASTEP("Circuits\Main\Main\Main","win1.imageSave.Enabled := False",362,362)
SS_ESASTEP("Circuits\Main\Main\Main","win1.imagecancel.Enabled := False",363,363)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Enabled := False",364,364)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAdress.Enabled := False",365,365)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Enabled := False",366,366)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nMode=2 )",367,367)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnlast.Enabled := False",368,368)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnprev.Enabled := False",369,369)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFirst.Enabled := False",370,370)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := False",371,371)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textSearch.Enabled := False",372,372)
SS_ESASTEP("Circuits\Main\Main\Main","win1.imageAdd.Enabled := False",373,373)
SS_ESASTEP("Circuits\Main\Main\Main","win1.imageEdit.Enabled := False",374,374)
SS_ESASTEP("Circuits\Main\Main\Main","win1.imagedelete.Enabled := False",375,375)
SS_ESASTEP("Circuits\Main\Main\Main","win1.add.Enabled := false",376,376)
SS_ESASTEP("Circuits\Main\Main\Main","win1.edit.Enabled := False",377,377)
SS_ESASTEP("Circuits\Main\Main\Main","win1.delete.Enabled := False",378,378)
SS_ESASTEP("Circuits\Main\Main\Main","win1.First.Enabled := False",379,379)
SS_ESASTEP("Circuits\Main\Main\Main","win1.next.Enabled := False",380,380)
SS_ESASTEP("Circuits\Main\Main\Main","win1.prev.Enabled := False",381,381)
SS_ESASTEP("Circuits\Main\Main\Main","win1.last.Enabled := False",382,382)
SS_ESASTEP("Circuits\Main\Main\Main","win1.cancel.Enabled := True",383,383)
SS_ESASTEP("Circuits\Main\Main\Main","win1.save.Enabled := True",384,384)
SS_ESASTEP("Circuits\Main\Main\Main","win1.imageSave.Enabled := True",385,385)
SS_ESASTEP("Circuits\Main\Main\Main","win1.imagecancel.Enabled := True",386,386)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textName.Enabled := True",387,387)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textAdress.Enabled := True",388,388)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textPhone.Enabled := True",389,389)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",390,390)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",391,391)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method CancleRecord Class customers",392,392)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.ADO2class()",393,393)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.class2interface()",394,394)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.SetMode(1)",395,395)
SS_ESASTEP("Circuits\Main\Main\Main","self.lAdd = False",396,396)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",397,397)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method interface2class Class customers",398,398)
SS_ESASTEP("Circuits\Main\Main\Main","self:cName = win1.textName.Value",399,399)
SS_ESASTEP("Circuits\Main\Main\Main","self:cAdress = win1.textAdress.Value",400,400)
SS_ESASTEP("Circuits\Main\Main\Main","self:cPhone = win1.textPhone.Value",401,401)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",402,402)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method class2ADO Class customers",403,403)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (self:oRS) Set Field ('castName') Value To (self:cName)",404,404)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (self:oRS) Set Field ('castAdress') Value To (self:cAdress)",405,405)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (self:oRS) Set Field ('castPhone') Value To (self:cPhone)",406,406)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",407,407)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method SaveRecord Class customers",408,408)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( self:lAdd=True )",409,409)
SS_ESASTEP("Circuits\Main\Main\Main","self.lAdd = False",410,410)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Add New Record",411,411)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.interface2class()",412,412)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.class2ADO()",413,413)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Update Record",414,414)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.SetMode(1)",415,415)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",416,416)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.ShowRecords()",417,417)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Last Record",418,418)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",419,419)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.interface2class()",420,420)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.class2ADO()",421,421)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Update Record",422,422)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.SetMode(1)",423,423)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",424,424)
SS_ESASTEP("Circuits\Main\Main\Main","vBM = ADODB RecordSet self:oRS, Get BookMark",425,425)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.ShowRecords()",426,426)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS, Set BookMark = vBM",427,427)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",428,428)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",429,429)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method EditRecord Class customers",430,430)
SS_ESASTEP("Circuits\Main\Main\Main","out3 = self.SetMode(2)",431,431)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",432,432)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method deleteRecord Class customers",433,433)
SS_ESASTEP("Circuits\Main\Main\Main","Local nMax",434,434)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",435,435)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax>0 )",436,436)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message 'Are You sure ? ' Title ' Delete' Type: Message Yes/No",437,437)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout=False )",438,438)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",439,439)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",440,440)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Delete Record",441,441)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Update Record",442,442)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",443,443)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.ShowRecords()",444,444)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax=1 )",445,445)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.clearRecord()",446,446)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.Class2interface()",447,447)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",448,448)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.ShowRecord()",449,449)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",450,450)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",451,451)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = Show Message 'No Records ' Title ' ' Type: Message Box",452,452)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",453,453)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",454,454)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method closeWindow Class customers",455,455)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release( )",456,456)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",457,457)
Return
*-------------------------------------------------------------------*

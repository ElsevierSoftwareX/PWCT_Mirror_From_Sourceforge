*---------------------------------------------------------------------------*
* Time : 11:44:33    Date : 01/04/2013
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


Resistance R_TESTEXCEL_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_TESTEXCEL_18smart1() code
TestExcelObject = TestExcelClass()
myout = TestExcelObject:ShowWindow()
Class TestExcelClass
Method showwindow
Method closewindow
Method SelectFile
Method Import
EndClass
Method showwindow Class TestExcelClass
if !iswindowdefined( TestExcelWindow )
DEFINE WINDOW TestExcelWindow ;
AT 10 ,10 ;
WIDTH 605 ;
HEIGHT 310 ;
ICON "PWCTICON" ;
TITLE "Read records inside Excel file" ;
MAIN ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255}

@ 234 ,455 BUTTONEX btnClose;
CAPTION "Close";
ON CLICK self:closewindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 11 ,139 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 310 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 14 ,25 LABEL lbl1 ;
VALUE "File Name :" ;
WIDTH 110 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 9 ,459 BUTTONEX btnBrowse;
CAPTION "Browse";
ON CLICK self:SelectFile()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 58 ,25 LISTBOX list1;
WIDTH 534 ;
HEIGHT 172 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 234 ,31 BUTTONEX btnImport;
CAPTION "Show Records";
ON CLICK self:import()  ;
WIDTH 170 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

TestExcelWindow.Center ( )
ACTIVATE WINDOW TestExcelWindow
EndIF

Return 0
Method closewindow Class TestExcelClass
TestExcelWindow.Release ( )
Return 0
Method SelectFile Class TestExcelClass
GetFile := GetFile ( { {"Excel","*.xls"}} , ;
, ;
, ;
, ;
)
TestExcelWindow.text1.Value := GetFile
Return 0
Method Import Class TestExcelClass
Local oCon,oRS,x,mymax,cName,ceMail,cMobile,cFileName,addrecnow,oRS2,mymax2
TestExcelWindow.list1.DeleteAllItems ( )
cFileName := TestExcelWindow.Text1.Value
CheckFile := File(cFileName)
IF CheckFile
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Driver={Microsoft Excel Driver (*.xls)};Dbq='+cFileName )
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from [Sheet1$]",oCon,3,3 )
mymax := oRS:RecordCount
IF mymax > 0
oRS:MOVEFIRST()
FOR x = 1 TO mymax STEP 1
c1 := oRS:fields:item(0):value
c2 := oRS:fields:item(1):value
c3 := oRS:fields:item(2):value
TestExcelWindow.List1.Additem ( c1 + " - " + c2 + " - " + c3 )
oRS:MOVENEXT()
Next
ENDIF
oRS:Close()
oCon:CLOSE()
ELSE
MyOut := MSGBOX("You must select Excel file","Sorry")
ENDIF
Return 0



End Of Resistance

INIT PROCEDURE Init_TESTEXCEL
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Create Object TestExcelObject of Class TestExcelClass",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","myout = TestExcelObject.ShowWindow()",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","PWCT-Code Generator: Replace String (MyClassName) with (TestExcelClass)",3,4)
SS_ESASTEP("Circuits\Main\Main\Main","PWCT-Code Generator: Replace String (MyWindowName) with (TestExcelWindow)",5,6)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class MyClassName",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Method showwindow",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Method closewindow",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Method SelectFile",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Method Import",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showwindow Class MyClassName",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( MyWindowName ) , Title : 'Read records inside Excel file'",14,18)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",19,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnClose ) , Caption : 'Close'",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:closewindow()",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",30,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",34,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'File Name :'",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",41,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnBrowse ) , Caption : 'Browse'",47,48)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:SelectFile()",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",50,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define New ListBox ( list1 )",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","ListBox Properties",54,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnImport ) , Caption : 'Show Records'",59,60)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:import()",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",62,64)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",65,66)
SS_ESASTEP("Circuits\Main\Main\Main","MyWindowName.Center ( )",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",68,70)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method closewindow Class MyClassName",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","MyWindowName.Release ( )",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method SelectFile Class MyClassName",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","GetFile := Get File",76,80)
SS_ESASTEP("Circuits\Main\Main\Main","MyWindowName.text1.Value := GetFile",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Import Class MyClassName",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Local oCon,oRS,x,mymax,cName,ceMail,cMobile,cFileName,addrecnow,oRS2,mymax2",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","MyWindowName.list1.DeleteAllItems ( )",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","cFileName = MyWindowName.Text1.Value",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","CheckFile := Check File cFileName",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( CheckFile )",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Driver={Microsoft Excel Driver (*.xls)};Dbq='+cFileName",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from [Sheet1$]'",92,94)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax > 0 )",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To mymax Step 1)",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","c1 = ADODB RecordSet (oRS) Get Field (0) Value",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","c2 = ADODB RecordSet (oRS) Get Field (1) Value",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","c3 = ADODB RecordSet (oRS) Get Field (2) Value",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Print text (c1 + ' - ' + c2 + ' - ' + c3) to Listbox (List1) of Window (MyWindowName)",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'You must select Excel file' Title 'Sorry' Type: Message Box",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",111,111)
Return
*-------------------------------------------------------------------*

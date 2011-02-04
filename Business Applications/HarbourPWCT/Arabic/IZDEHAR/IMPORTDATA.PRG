*---------------------------------------------------------------------------*
* Time : 09:38:10    Date : 02/04/2011
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
Function IMPORTDATA
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

Resistance R_IMPORTDATA_15speed1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_IMPORTDATA_15speed1() code
class ImportDataClass From CustomersDataClass
Data Records init {}
Method showwindow
Method closewindow
Method SelectFile
Method Import
EndClass
Method showwindow Class ImportDataClass
if !iswindowdefined( ImportDataWindow )
DEFINE WINDOW ImportDataWindow ;
AT 10 ,10 ;
WIDTH 595 ;
HEIGHT 534 ;
ICON "PWCTICON" ;
TITLE "«” Ì—«œ «·»Ì«‰«  „‰ «ﬂ”·" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255}

@ -5 ,-10 IMAGE image1;
PICTURE "Image\back.jpg";
STRETCH ;
WIDTH 611 HEIGHT 514
@ 448 ,25 BUTTONEX btnClose;
CAPTION "«€·«ﬁ";
ON CLICK self:closewindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 11 ,139 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 330 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}

@ 11 ,479 LABEL lbl1 ;
VALUE "„”«— «·„·›" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 11 ,25 BUTTONEX btnBrowse;
CAPTION " ÕœÌœ «·„·›";
ON CLICK self:SelectFile()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 58 ,25 LISTBOX list1;
WIDTH 534 ;
HEIGHT 372 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 448 ,459 BUTTONEX btnImport;
CAPTION "«” Ì—«œ";
ON CLICK self:import()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW

ImportDataWindow.Center ( )
RightToLeftControl ( "ImportDataWindow","List1" )
ACTIVATE WINDOW ImportDataWindow
EndIF

Return 0
Method closewindow Class ImportDataClass
ImportDataWindow.Release ( )
Return 0
Method SelectFile Class ImportDataClass
GetFile := GetFile ( { {"Excel","*.xls"}} , ;
, ;
, ;
, ;
)
ImportDataWindow.text1.Value := GetFile
Return 0
Method Import Class ImportDataClass
Local oCon,oRS,x,mymax,cName,ceMail,cMobile,cFileName,addrecnow,oRS2,mymax2
ImportDataWindow.list1.DeleteAllItems ( )
self:records := {}
cFileName := ImportDataWindow.Text1.Value
CheckFile := File(cFileName)
IF CheckFile
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Driver={Microsoft Excel Driver (*.xls)};Dbq='+cFileName )
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from [Sheet1$]",oCon,3,3 )
mymax := oRS:RecordCount
oRS:MOVEFIRST()
FOR x = 1 TO mymax STEP 1
cName := oRS:fields:item(0):value
cMobile := oRS:fields:item(1):value
ceMail := oRS:fields:item(2):value
AADD( self:Records , {cName,cMobile,ceMail})
oRS:MOVENEXT()
Next
oRS:Close()
oCon:CLOSE()
ELSE
MyOut := MSGBOX("ÌÃ»  ÕœÌœ „·› «·«ﬂ”·","⁄›Ê«")
ENDIF
mymax  = LEN(self:Records)
IF mymax > 0
myout = self:Connect()
oRS:CursorType := 1
oRS:ActiveConnection := self:oCon
oRS:open ( "Select * from Customers",self:oCon,3,3 )
oRS:MOVEFIRST()
FOR x = 1 TO mymax STEP 1
addrecnow := true
IF valtype(self:records[x][2]) = "C"
oRS2 := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS2:CursorType := 1
oRS2:ActiveConnection := self:oCon
oRS2:open ( "Select * from Customers where f_mobile = '" + self:records[x][2] + "'",self:oCon,3,3 )
mymax2 := oRS2:RecordCount
IF mymax2 > 0
addrecnow := false
ENDIF
oRS2:Close()
ENDIF
IF VALTYPE(self:records[x][3]) = "C"
oRS2 := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS2:CursorType := 1
oRS2:ActiveConnection := self:oCon
oRS2:open ( "Select * from Customers where f_email = '" + self:records[x][3] + "'",self:oCon,3,3 )
mymax2 := oRS2:RecordCount
IF mymax2 > 0
addrecnow := false
ENDIF
oRS2:Close()
ENDIF
IF addrecnow = false
Loop
ENDIF
oRS:ADDNEW()
oRS:fields:item("f_name"):value := self:records[x][1]
oRS:fields:item("f_mobile"):value := self:records[x][2]
oRS:fields:item("f_email"):value := self:records[x][3]
oRS:fields:item("f_cardfinish"):value := dtoc(date())
oRS:UPDATE()
ImportDataWindow.List1.Additem ( self:records[x][1] )
Next
oRS:Close()
myout = Self:Disconnect()
ENDIF
MyOut := MSGBOX("«‰ Â  ⁄„·Ì… «·«” Ì—«œ","Õ”‰«")
Return 0



End Of Resistance

*-------------------------------------------------------------------*

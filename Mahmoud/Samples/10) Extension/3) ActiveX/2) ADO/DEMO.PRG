#include "SSXHB.ch"
#include "MiniGUI.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 17:23:03    Date : 11/18/2008
*---------------------------------------------------------------------------*
* Programming without coding technology 1.0 (Final)   
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
New Server Server1 Type Slave Server Eigen Value 000
 Details :
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance RKPLJC1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance RKPLJC1() code
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 446 ;
HEIGHT 450 ;
ICON "PWCTICON" ;
TITLE "Using ADO" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} 

@ 48 ,9 GRID Grid1;
WIDTH 300 ;
HEIGHT 300 ;
HEADERS {"Name","Address","Phone"};
WIDTHS {100,100,100} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
@ 10 ,9 BUTTONEX btnGetdata;
CAPTION "Connect to the database then get data";
ON CLICK mygetdata()  ;
WIDTH 300 HEIGHT 30 ;
FONT "arial" SIZE 9 ;
TOOLTIP ""
@ 48 ,322 BUTTONEX btnAdd;
CAPTION "Add";
ON CLICK myadd()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 9 ;
TOOLTIP ""
@ 88 ,322 BUTTONEX btnDelete;
CAPTION "Delete";
ON CLICK mydelete()  ;
WIDTH 100 HEIGHT 30 ;
FONT "arial" SIZE 9 ;
TOOLTIP ""
@ 356 ,9 BUTTONEX btnupdate;
CAPTION "Update data";
ON CLICK myupdate()  ;
WIDTH 300 HEIGHT 30 ;
FONT "arial" SIZE 9 ;
TOOLTIP ""
DEFINE MAIN MENU
POPUP "File"
MENUITEM "Exit" Action myexit()
END POPUP
END MENU
END WINDOW

win1.btnadd.Enabled := .f.
win1.btndelete.Enabled := .f.
win1.btnupdate.Enabled := .f.
ACTIVATE WINDOW win1

Proc mygetdata
Public oConnection,oRS
constr := 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=test.mdb'
oConnection := TOLEAUTO():NEW( "ADODB.Connection" )
oConnection:open ( ConStr )
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oConnection
oRS:open ( "SELECT * from MainTable",oConnection,3,3 )
mycount := oRS:recordcount
IF mycount > 0
FOR x = 1 TO mycount STEP 1
cName := oRS:fields:item('name'):value
cAddress := oRS:fields:item('address'):value
cPhone := oRS:fields:item('phone'):value
win1.grid1.AddItem ( {cName,cAddress,cPhone} )
oRS:movenext ( )
Next
ENDIF
win1.btngetdata.Enabled := .f.
win1.btnadd.Enabled := .t.
win1.btndelete.Enabled := .t.
win1.btnupdate.Enabled := .t.
Return Nil
Proc myadd
win1.grid1.AddItem ( {"","",""} )
mycount := win1.grid1.ItemCount
win1.grid1.Value := mycount
win1.grid1.SetFocus ( )
Return Nil
Proc mydelete
myitem := win1.grid1.Value
win1.grid1.DeleteItem ( myitem )
myitem := myitem - 1
IF myitem < 0
myitem := 0
ENDIF
win1.grid1.Value := myitem
win1.grid1.SetFocus ( )
Return Nil
Proc myupdate
mycount := oRS:recordcount
IF mycount > 0
oRS:movefirst ( )
FOR x = 1 TO mycount STEP 1
oRS:Delete ( )
oRS:movenext ( )
Next
ENDIF
mycount := win1.grid1.ItemCount
IF mycount > 0
FOR x = 1 TO mycount STEP 1
oRS:addnew ( )
cName := win1.grid1.cell(x,1)
cAddress := win1.grid1.cell(x,2)
cPhone := win1.grid1.cell(x,3)
oRS:fields:item('name'):value := cName
oRS:fields:item('address'):value := cAddress
oRS:fields:item('phone'):value := cPhone
Next
oRS:update ( )
MSGBOX("Operation done !!","Ok")
ENDIF
Return Nil
Proc myexit
win1.Release ( )
Return Nil


End Of Resistance

INIT PROCEDURE Init_DEMO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",47)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",1,4)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",5,11)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 )",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",13,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnGetdata )",21,22)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",24,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnAdd )",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",30,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnDelete )",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",36,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnupdate )",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",42,44)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","MENU POPUPS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","POPUP ITEMS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit' )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnadd.Enabled := .f.",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btndelete.Enabled := .f.",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnupdate.Enabled := .f.",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",55,56)
SS_ESASTEP("Circuits\Main\Main\Main","Procedures",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mygetdata",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Public oConnection,oRS",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","constr = 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Create OLE Object oConnection of Type 'ADODB.Connection'",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","oConnection.open ( ConStr )",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Create OLE Object oRS of Type 'ADODB.Recordset'",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","oRS.CursorType := 1",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","oRS.ActiveConnection := oConnection",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","oRS.open ( 'SELECT * from MainTable',oConnection,3,3 )",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = oRS.recordcount",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount > 0 )",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To mycount Step 1)",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","cName = oRS:fields:item('name'):value",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = oRS:fields:item('address'):value",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = oRS:fields:item('phone'):value",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","win1.grid1.AddItem ( {cName,cAddress,cPhone} )",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","oRS.movenext ( )",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btngetdata.Enabled := .f.",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnadd.Enabled := .t.",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btndelete.Enabled := .t.",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnupdate.Enabled := .t.",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myadd",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.grid1.AddItem ( {'','',''} )",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = win1.grid1.ItemCount",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","win1.grid1.Value := mycount",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","win1.grid1.SetFocus ( )",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure mydelete",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","myitem = win1.grid1.Value",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","win1.grid1.DeleteItem ( myitem )",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","myitem = myitem - 1",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myitem < 0 )",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","myitem = 0",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","win1.grid1.Value := myitem",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","win1.grid1.SetFocus ( )",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myupdate",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Delete All Records",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = oRS.recordcount",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount > 0 )",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","oRS.movefirst ( )",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To mycount Step 1)",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","oRS.Delete ( )",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","oRS.movenext ( )",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","Add records from grid to recordset",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = win1.grid1.ItemCount",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mycount > 0 )",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To mycount Step 1)",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","oRS.addnew ( )",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.grid1.cell(x,1)",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = win1.grid1.cell(x,2)",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = win1.grid1.cell(x,3)",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","oRS:fields:item('name'):value = cName",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","oRS:fields:item('address'):value = cAddress",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","oRS:fields:item('phone'):value = cPhone",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","oRS.update ( )",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Operation done !!' Title 'Ok' Type: Message Box",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure myexit",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",123,123)
Return
*-------------------------------------------------------------------*

*---------------------------------------------------------------------------*
* Time : 22:06:25    Date : 04/19/2013
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


Resistance R_LESSON36_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_LESSON36_18smart1() code
odatabase = database()
out = odatabase:showWindow()
Class database
Data oCon init 0
Data oRS init 0
Method connect
Method disconnect
Method showWindow
Method CloseApp
Method showRecord
Method search
Method ShowRecords
EndClass
Method showWindow Class database
output = odatabase:connect()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 310 ,420 ;
WIDTH 711 ;
HEIGHT 429 ;
ON RELEASE self:disconnect()  ;
ICON "PWCTICON" ;
TITLE "  Search " ;
MAIN ;
BACKCOLOR {236,233,216} 
win1.Center ( )
@ 324 ,557 BUTTONEX btn1;
CAPTION "Close ";
ON CLICK self:CloseApp()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 78 ,44 GRID Grid1;
WIDTH 613 ;
HEIGHT 233 ;
HEADERS {"Name","Adress","Phone"};
WIDTHS {300,100,100} ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
@ 40 ,44 LABEL lbl1 ;
VALUE "Search by first letters in each word inside a Name : " ;
WIDTH 295 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 35 ,328 TEXTBOX textsearch;
ON CHANGE self:search()  ;
HEIGHT 31 ;
WIDTH 329 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 
END WINDOW
output = odatabase:showRecords()
ACTIVATE WINDOW win1
EndIF
Return 0
Method connect Class database
self:oCon := TOLEAUTO():NEW( "ADODB.Connection" )
self:oCon:open ( 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=database.mdb;Persist Security Info=False;' )
self:oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
self:oRS:CursorType := 1
self:oRS:ActiveConnection := self:oCon
self:oRS:open ( "Select * from customers",self:oCon,3,3 )
Return 0
Method disconnect Class database
self:oRS:Close()
self:oCon:CLOSE()
Return 0
Method CloseApp Class database
win1.Release ( )
Return 0
Method showRecords Class database
win1.Grid1.DeleteAllItems ( )
nOutput := self:oRS:RecordCount
IF nOutput >0
self:oRS:MOVEFIRST()
FOR x = 1 TO nOutput STEP 1
cname := self:oRS:fields:item(alltrim("custName")):value
cadress := self:oRS:fields:item(alltrim("CustAdress")):value
cphone := self:oRS:fields:item(alltrim("custPhone")):value
win1.Grid1.AddItem ( {cname,cadress,cphone} )
self:oRS:MOVENEXT()
Next
ENDIF
Return 0
Method search Class database
Local X,cName
cName := win1.textsearch.Value
self:oRS:Close()
self:oRS:CursorType := 1
self:oRS:ActiveConnection := self:oCon
self:oRS:open ( "Select * from customers",self:oCon,3,3 )
win1.Grid1.DeleteAllItems ( )
nSearchSize  = LEN(cName)
cName = ALLTRIM ( cName )
cName = UPPER ( cName )
nMax := self:oRS:RecordCount
IF nMax > 1
self:oRS:MOVEFIRST()
FOR x = 1 TO nMax STEP 1
cValue := self:oRS:fields:item(alltrim("CustName")):value
cValue = ALLTRIM ( cValue )
cValue = UPPER ( cValue )
cFromFirst = Left(cValue,nSearchSize)
IF .Not. cFromFirst == cName
lShow := False
nTest = AT(" " + cName,cValue)
IF nTest > 0
lShow := True
ENDIF
ELSE
lShow := True
ENDIF
IF lShow = True .or. nSearchSize = 0
out = self:showRecord()
ENDIF
self:oRS:MOVENEXT()
Next
ENDIF
Return 0
Method showRecord Class database
cname := self:oRS:fields:item(alltrim("custName")):value
cadress := self:oRS:fields:item(alltrim("CustAdress")):value
cphone := self:oRS:fields:item(alltrim("custPhone")):value
win1.Grid1.AddItem ( {cname,cadress,cphone} )
Return 0

End Of Resistance

INIT PROCEDURE Init_LESSON36
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Create Object odatabase of Class database",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","out = odatabase.showWindow()",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class database",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Data oCon Init Value 0",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Data oRS Init Value 0",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Method connect",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Method disconnect",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Method showWindow",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Method CloseApp",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Method showRecord",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Method search",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowRecords",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showWindow Class database",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","output = odatabase.connect()",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '  Search '",16,20)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE : Action self:disconnect",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",22,26)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Close '",28,29)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:CloseApp",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",31,33)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'Name','Adress','Phone'}",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Grid Properties",35,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Search by first letters in each word inside a Name : '",43,44)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",45,49)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textsearch  )",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:search",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",52,57)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",58,59)
SS_ESASTEP("Circuits\Main\Main\Main","output = odatabase.showRecords()",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",61,63)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method connect Class database",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","self:oCon = Create New ADODB Connection",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection self:oCon , Connection String : 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=database.mdb;Persist Security Info=False;'",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","self:oRS = Create New ADODB RecordSet Object",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset self:oRS , Connection self:oCon , CursorType 1 , SQL Statement 'Select * from customers'",69,71)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method disconnect Class database",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet self:oRS",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection self:oCon",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method CloseApp Class database",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showRecords Class database",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","nOutput := ADODB RecordSet (self:oRS) , Get Records Count",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nOutput >0 )",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nOutput Step 1)",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (self:oRS) Get Field ('custName') Value",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","cadress = ADODB RecordSet (self:oRS) Get Field ('CustAdress') Value",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (self:oRS) Get Field ('custPhone') Value",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {cname,cadress,cphone} )",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method search Class database",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","Local X,cName",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","cName = win1.textsearch.Value",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet self:oRS",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset self:oRS , Connection self:oCon , CursorType 1 , SQL Statement 'Select * from customers'",98,100)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","nSearchSize = Get Length of String/Variable/Array cName",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","cName = All Trim cName",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","cName = CONVERT String cName To UPPER CASE",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","nMax := ADODB RecordSet (self:oRS) , Get Records Count",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 1 )",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","cValue = ADODB RecordSet (self:oRS) Get Field ('CustName') Value",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","cValue = All Trim cValue",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","cValue = CONVERT String cValue To UPPER CASE",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","cFromFirst =  Get SubString from left, String: cValue Count: nSearchSize",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( .Not. cFromFirst == cName )",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","lShow = False",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","nTest = GET START POSITION OF ' ' + cName IN cValue",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nTest > 0 )",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","lShow = True",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","lShow = True",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( lShow = True .or. nSearchSize = 0 )",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","out = self.showRecord()",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showRecord Class database",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (self:oRS) Get Field ('custName') Value",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","cadress = ADODB RecordSet (self:oRS) Get Field ('CustAdress') Value",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","cphone = ADODB RecordSet (self:oRS) Get Field ('custPhone') Value",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {cname,cadress,cphone} )",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",134,134)
Return
*-------------------------------------------------------------------*

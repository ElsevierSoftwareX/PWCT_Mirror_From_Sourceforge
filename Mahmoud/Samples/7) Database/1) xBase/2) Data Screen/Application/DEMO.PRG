*---------------------------------------------------------------------------*
* Time : 15:02:30    Date : 10/13/2011
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2011]  
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
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

Resistance R_DEMO_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_DEMO_18smart1() code
DO open_database
DO WHILE  True
Set Color To W/B,GR+/U,,,U/W
Clear
@ 3 , 3 SAY  "Telephone Database"
@ 2,2  to 4,23
@ 6,2  to 8,50
@ 9,2  to 21,50
mycount := Reccount()
mycount = STR ( mycount )
@ 7 , 5 SAY  "Records Count" + mycount
@ 12 , 15 PROMPT  "Add New Record"
@ 14 , 15 PROMPT  "List Records"
@ 16 , 15 PROMPT  "Search"
@ 18 , 15 PROMPT  "Exit"
Menu To mymenu
IF mymenu == 1
DO add_proc
ELSEIF mymenu == 2
DO list_proc
ELSEIF mymenu == 3
DO search_proc
ELSEIF mymenu == 4
Exit
ENDIF
ENDDO
DO close_database
Proc open_database
SELECT 0
Use Tel
Return Nil
Proc add_proc
Clear
@ 3 , 28 SAY  "Add New Record"
@ 2,25  to 4,48
@ 9,2  to 21,77
v_name := space ( 50 )
v_address := space ( 50 )
v_phone := space ( 20 )
@ 12 , 10 SAY  "Name"
@ 12 , 20 GET  v_name
@ 14 , 10 SAY  "Address"
@ 14 , 20 GET  v_address
@ 16 , 10 SAY  "Phone"
@ 16 , 20 GET  v_phone
READ
@ 19 , 54 PROMPT  "Save"
@ 19 , 64 PROMPT  "Cancel"
@ 18,3  to 18,76
@ 0 , 0 SAY  ""
Menu To mymenu2
IF mymenu2 == 1
Append Blank
REPLACE name WITH v_name
REPLACE address WITH v_address
REPLACE phone WITH v_phone
ENDIF
Return Nil
Proc list_proc
mymax := Reccount()
Clear
FOR x = 1 TO mymax STEP 1
Goto x
? "Name : " + name
? "Address : " + address
? "Phone : " + phone
WAIT "Press any key to continue..."
Next
IF mymax == 0
Clear
? "No records"
INKEY(3)
ENDIF
Return Nil
Proc search_proc
mymax := Reccount()
IF mymax == 0
Clear
? "No records"
INKEY(3)
Return false
ENDIF
Clear
v_name := space ( 50 )
@ 9,2  to 21,77
@ 12 , 10 SAY  "Name"
@ 12 , 20 GET  v_name
READ
v_name = ALLTRIM ( v_name )
Locate For name = v_name
myresult := found()
IF myresult
Clear
? "Name : " + name
? "Address : " + address
? "Phone : " + phone
@ 10 , 10 PROMPT  " Ok "
@ 12 , 10 PROMPT  " Edit "
@ 14 , 10 PROMPT  " Delete "
Menu To mymenu3
IF mymenu3 == 2
DO edit_proc
ELSEIF mymenu3 == 3
DO del_proc
ENDIF
ELSE
Clear
? "Record not found"
INKEY(3)
ENDIF
Return Nil
Proc close_database
SELECT Tel
close
Return Nil
Proc edit_proc
Clear
@ 3 , 28 SAY  "Edit Record"
@ 2,25  to 4,48
@ 9,2  to 21,77
v_name := name
v_address := address
v_phone := phone
@ 12 , 10 SAY  "Name"
@ 12 , 20 GET  v_name
@ 14 , 10 SAY  "Address"
@ 14 , 20 GET  v_address
@ 16 , 10 SAY  "Phone"
@ 16 , 20 GET  v_phone
READ
@ 19 , 54 PROMPT  "Save"
@ 19 , 64 PROMPT  "Cancel"
@ 18,3  to 18,76
@ 0 , 0 SAY  ""
Menu To mymenu2
IF mymenu2 == 1
REPLACE name WITH v_name
REPLACE address WITH v_address
REPLACE phone WITH v_phone
ENDIF
Return Nil
Proc del_proc
delete
Pack
Return Nil


End Of Resistance

INIT PROCEDURE Init_DEMO
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",40)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure open_database",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","WHILE ( True )",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Set Color Standard( White , Blue ) Enhanced ( Yellow , Black ) Unselected ( Black , White )",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Clear Screen",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Print Text 'Telephone Database' - AT ROW 3 & COLUMN 3",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Box from 2 , 2 to 4 , 23",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Box from 6 , 2 to 8 , 50",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Box from 9 , 2 to 21 , 50",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = Get Records Count",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","mycount = CONVERT mycount TO STRING",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Print Text 'Records Count' + mycount - AT ROW 7 & COLUMN 5",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","PROMPT 'Add New Record' - AT ROW 12 & COLUMN 15",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","PROMPT 'List Records' - AT ROW 14 & COLUMN 15",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","PROMPT 'Search' - AT ROW 16 & COLUMN 15",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","PROMPT 'Exit' - AT ROW 18 & COLUMN 15",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Activate Menu mymenu",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymenu == 1 )",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure add_proc",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( mymenu == 2 )",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure list_proc",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( mymenu == 3 )",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure search_proc",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( mymenu == 4 )",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Exit",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","END OF While Loop",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure close_database",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure open_database",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","SELECT AREA 0",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Open Table Tel",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure add_proc",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Clear Screen",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Print Text 'Add New Record' - AT ROW 3 & COLUMN 28",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Box from 2 , 25 to 4 , 48",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Box from 9 , 2 to 21 , 77",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","v_name = String, length = 50",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","v_address = String, length = 50",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","v_phone = String, length = 20",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Print Text 'Name' - AT ROW 12 & COLUMN 10",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Get Input v_name - AT ROW 12 & COLUMN 20",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Print Text 'Address' - AT ROW 14 & COLUMN 10",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Get Input v_address - AT ROW 14 & COLUMN 20",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Print Text 'Phone' - AT ROW 16 & COLUMN 10",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Get Input v_phone - AT ROW 16 & COLUMN 20",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","READ INPUT",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","PROMPT 'Save' - AT ROW 19 & COLUMN 54",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","PROMPT 'Cancel' - AT ROW 19 & COLUMN 64",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Box from 18 , 3 to 18 , 76",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Print Text '' - AT ROW 0 & COLUMN 0",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Activate Menu mymenu2",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymenu2 == 1 )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Add New Record",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Replace Field name with v_name",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Replace Field address with v_address",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Replace Field phone with v_phone",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure list_proc",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = Get Records Count",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Clear Screen",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To mymax Step 1)",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Goto Record Number x",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Name : ' + name) to console",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Address : ' + address) to console",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Phone : ' + phone) to console",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Wait (KEY) Message : 'Press any key to continue...'",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax == 0 )",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Clear Screen",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('No records') to console",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","WAIT ( 3 SECONDS)",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure search_proc",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","mymax = Get Records Count",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax == 0 )",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Clear Screen",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('No records') to console",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","WAIT ( 3 SECONDS)",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Return false",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","Clear Screen",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","v_name = String, length = 50",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Box from 9 , 2 to 21 , 77",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","Print Text 'Name' - AT ROW 12 & COLUMN 10",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Get Input v_name - AT ROW 12 & COLUMN 20",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","READ INPUT",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","v_name = All Trim v_name",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","Locate For name = v_name",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","myresult = Check- Record Found (Locate)",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myresult )",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","Clear Screen",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Name : ' + name) to console",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Address : ' + address) to console",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Phone : ' + phone) to console",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","PROMPT ' Ok ' - AT ROW 10 & COLUMN 10",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","PROMPT ' Edit ' - AT ROW 12 & COLUMN 10",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","PROMPT ' Delete ' - AT ROW 14 & COLUMN 10",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Activate Menu mymenu3",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymenu3 == 2 )",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure edit_proc",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( mymenu3 == 3 )",103,103)
SS_ESASTEP("Circuits\Main\Main\Main","Call Procedure del_proc",104,104)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",105,105)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",106,106)
SS_ESASTEP("Circuits\Main\Main\Main","Clear Screen",107,107)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Record not found') to console",108,108)
SS_ESASTEP("Circuits\Main\Main\Main","WAIT ( 3 SECONDS)",109,109)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",111,111)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close_database",112,112)
SS_ESASTEP("Circuits\Main\Main\Main","SELECT AREA Tel",113,113)
SS_ESASTEP("Circuits\Main\Main\Main","Close Table",114,114)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",115,115)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure edit_proc",116,116)
SS_ESASTEP("Circuits\Main\Main\Main","Clear Screen",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","Print Text 'Edit Record' - AT ROW 3 & COLUMN 28",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Box from 2 , 25 to 4 , 48",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Box from 9 , 2 to 21 , 77",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","v_name = name",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","v_address = address",122,122)
SS_ESASTEP("Circuits\Main\Main\Main","v_phone = phone",123,123)
SS_ESASTEP("Circuits\Main\Main\Main","Print Text 'Name' - AT ROW 12 & COLUMN 10",124,124)
SS_ESASTEP("Circuits\Main\Main\Main","Get Input v_name - AT ROW 12 & COLUMN 20",125,125)
SS_ESASTEP("Circuits\Main\Main\Main","Print Text 'Address' - AT ROW 14 & COLUMN 10",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","Get Input v_address - AT ROW 14 & COLUMN 20",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","Print Text 'Phone' - AT ROW 16 & COLUMN 10",128,128)
SS_ESASTEP("Circuits\Main\Main\Main","Get Input v_phone - AT ROW 16 & COLUMN 20",129,129)
SS_ESASTEP("Circuits\Main\Main\Main","READ INPUT",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","PROMPT 'Save' - AT ROW 19 & COLUMN 54",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","PROMPT 'Cancel' - AT ROW 19 & COLUMN 64",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","Draw Box from 18 , 3 to 18 , 76",133,133)
SS_ESASTEP("Circuits\Main\Main\Main","Print Text '' - AT ROW 0 & COLUMN 0",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","Activate Menu mymenu2",135,135)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymenu2 == 1 )",136,136)
SS_ESASTEP("Circuits\Main\Main\Main","Replace Field name with v_name",137,137)
SS_ESASTEP("Circuits\Main\Main\Main","Replace Field address with v_address",138,138)
SS_ESASTEP("Circuits\Main\Main\Main","Replace Field phone with v_phone",139,139)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",140,140)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure del_proc",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","Delete Record (Mark for deletion)",143,143)
SS_ESASTEP("Circuits\Main\Main\Main","Pack",144,144)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",145,145)
Return
*-------------------------------------------------------------------*

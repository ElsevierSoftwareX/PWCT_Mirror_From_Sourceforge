*---------------------------------------------------------------------------*
* Time : 00:36:28    Date : 02/13/2012
*---------------------------------------------------------------------------*
* Programming without coding technology 1.8 (Smart) [2006-2012]  
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
#include "xhb.ch"
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


Resistance R_SEARCH_PAGE_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_SEARCH_PAGE_18smart1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 490 ;
HEIGHT 444 ;
ICON "PWCTICON" ;
TITLE "Search Page  " ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 53 ,66 TEXTBOX text1;
HEIGHT 36 ;
WIDTH 323 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 52 ,389 BUTTONEX btn1;
CAPTION "Search ";
ON CLICK search()  ;
WIDTH 83 HEIGHT 38 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 45 ,7 IMAGE image1;
PICTURE "SEARCH1.JPG";
STRETCH ;
WIDTH 51 HEIGHT 44
@ 138 ,-5 GRID Grid1;
WIDTH 494 ;
HEIGHT 228 ;
HEADERS {"Name","MobileNo","Email","Country"};
WIDTHS {130,130,130,130} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
FONTCOLOR {0,0,0}
@ 377 ,389 BUTTONEX btn2;
CAPTION "Close ";
ON CLICK close()  ;
WIDTH 85 HEIGHT 28 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 9 ,6 LABEL lbl1 ;
VALUE "Search in Database " ;
WIDTH 181 ;
HEIGHT 25 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 111 ,6 LABEL lbl2 ;
VALUE "Search Result  " ;
WIDTH 140 ;
HEIGHT 21 ;
AUTOSIZE ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure close()
win1.Release ( )
return
procedure search()
text := win1.text1.Value
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=persdata.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from persdata where name like '" + text + "%' OR mobileno like '" + text + "%' OR email like '" + text + "%' OR country like '" + text + "%'",oCon,3,3 )
mymax := oRS:RecordCount
win1.Grid1.DeleteAllItems ( )
IF mymax>0
FOR x = 1 TO mymax STEP 1
cname := oRS:fields:item("Name"):value
cmobileno := oRS:fields:item("MobileNo"):value
cemail := oRS:fields:item("Email"):value
ccountry := oRS:fields:item("Country"):value
win1.Grid1.AddItem ( {cname,cmobileno,cemail,ccountry} )
oRS:MOVENEXT()
Next
ELSE
MyOut := MSGOKCANCEL("This record not exist ","Information ")
ENDIF
return


End Of Resistance

INIT PROCEDURE Init_SEARCH_PAGE
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",52)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Search Page  '",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",14,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Search '",19,20)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action search",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",22,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'SEARCH1.JPG'",25,26)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",27,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'Name','MobileNo','Email','Country'}",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",30,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Close '",38,39)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action close",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",41,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Search in Database '",44,45)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",46,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Search Result  '",53,54)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",55,61)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",62,63)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",64,66)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure close ( Event : CLICK )",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure search ( Event : CLICK )",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","text = win1.text1.Value",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",72,73)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=persdata.mdb'",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",75,76)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from persdata where name like '' + text + '%' OR mobileno like '' + text + '%' OR email like '' + text + '%' OR country like '' + text + '%''",77,79)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax>0 )",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To mymax Step 1)",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","cname = ADODB RecordSet (oRS) Get Field ('Name') Value",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","cmobileno = ADODB RecordSet (oRS) Get Field ('MobileNo') Value",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","cemail = ADODB RecordSet (oRS) Get Field ('Email') Value",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","ccountry = ADODB RecordSet (oRS) Get Field ('Country') Value",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {cname,cmobileno,cemail,ccountry} )",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'This record not exist ' Title 'Information ' Type: Message Ok/Cancel",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",94,94)
Return
*-------------------------------------------------------------------*

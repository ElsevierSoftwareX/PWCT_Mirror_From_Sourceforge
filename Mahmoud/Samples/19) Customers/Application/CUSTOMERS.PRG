#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
Function Main
*---------------------------------------------------------------------------*
* Time : 14:33:44    Date : 05/30/2009
*---------------------------------------------------------------------------*
* Programming without coding technology 1.3 (Golden) [2006-2009]  
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Programming Language    : Mahmoud Programming Language 
* Programming Environment : RPWI ( [R]eal [P]rogramming [W]ithout cod[I]ng)
* Programming Paradigm    : DoubleS (Super Server)
*---------------------------------------------------------------------------*
* Compilers               : Borland C/C++ & Harbour/xHarbour
* GUI Framework           : HarbourMiniGUI Extended
*---------------------------------------------------------------------------*
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

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R8555908324_1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R8555908324_1() code
oCustomer = Customer_Data()
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 408 ;
HEIGHT 528 ;
ICON "PWCTICON" ;
TITLE "Customers" ;
MAIN ;
BACKCOLOR {236,233,216} ;
NOTIFYICON "PWCTICON" ;
NOTIFYTOOLTIP "Customers Application" 

@ 0 ,0 IMAGE image1;
PICTURE "image\mainback.jpg";
WIDTH 1024 HEIGHT 768
DEFINE MAIN MENU
POPUP "File"
MENUITEM "About" Action about()
MENUITEM "Exit" Action shutdown()
END POPUP
POPUP "Data"
MENUITEM "Customers List (Browse)" Action oCustomer:Browse()
MENUITEM "Add New Customer" Action oCustomer:addnew()
END POPUP
POPUP "Reports"
MENUITEM "Print All Customers Data" Action ocustomer:print()
END POPUP
END MENU
DEFINE STATUSBAR 

STATUSITEM "2009, Mahmoud Fayed (msfclipper@yahoo.com)"

END STATUSBAR

DEFINE NOTIFY MENU OF win1
MENUITEM "Customers List (Browse)" Action oCustomer:Browse()
MENUITEM "Add New Customer" Action oCustomer:addnew()
MENUITEM "Print All Customers Data" Action ocustomer:print()
MENUITEM "About" Action about()
MENUITEM "Exit" Action shutdown()
END MENU
DEFINE Context MENU OF win1
MENUITEM "Customers List (Browse)" Action oCustomer:Browse()
MENUITEM "Add New Customer" Action oCustomer:addnew()
MENUITEM "Print All Customers Data" Action ocustomer:print()
MENUITEM "About" Action about()
MENUITEM "Exit" Action shutdown()
END MENU
END WINDOW

win1.Maximize ( )
ACTIVATE WINDOW win1

Proc about
SHELLABOUT( "Customers Application" , "Developed using PWCT (Programming Without Coding Technology)" )
Return Nil
Proc shutdown
win1.Release ( )
Return Nil
Class base_data
Method connect
Method disconnect
EndClass
Method connect Class base_data
Public oCon,oRS
Public oCon
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=data\mydata.mdb' )
public oRS
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
Return 0
Method disconnect Class base_data
oRS:Close()
oCon:CLOSE()
Release oCon,oRS
Return 0
class customer_data From base_data
Data custid init ""
Data browsewindow init false
Data addnewwindow init false
Data editwindow init false
Data printwindow init false
Method browse
Method addnew
Method addnewclose
Method addnewsave
Method browseclose
Method checkdeledit
Method delete
Method browseloaddata
Method editrec
Method editsave
Method editclose
Method search
Method print
Method printclose
Method preview
EndClass
Method browse Class customer_data
IF self:browsewindow = false
self:browsewindow := true
DEFINE WINDOW win_browse ;
AT 10 ,10 ;
WIDTH 731 ;
HEIGHT 455 ;
ICON "PWCTICON" ;
TITLE "Customers List (Browse)" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
NOSYSMENU ;
BACKCOLOR {0,0,0} 

@ 0 ,0 IMAGE image1;
PICTURE "image\back.jpg";
WIDTH 1024 HEIGHT 768
@ 10 ,170 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 340 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {244,208,241} ;
FONTCOLOR {0,0,0}
@ 10 ,520 BUTTONEX btn5;
CAPTION "Search";
ON CLICK ocustomer:search()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 60 ,10 GRID Grid1;
ON CHANGE ocustomer:checkdeledit()  ;
WIDTH 700 ;
HEIGHT 290 ;
HEADERS {"Code","Name","Age","Gender","Country","City","Address","Phone","Phone2","Mobile","Mobile2","Company","Job","eMail","WebSite"};
WIDTHS {50,200,200,200,200,200,200,200,200,200,200,200,200,200,200} ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 361 ,145 BUTTONEX btn2;
CAPTION "Add";
ON CLICK ocustomer:addnew()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 361 ,255 BUTTONEX btn3;
CAPTION "Edit";
ON CLICK ocustomer:editrec()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 361 ,365 BUTTONEX btn4;
CAPTION "Delete";
ON CLICK ocustomer:delete()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 361 ,475 BUTTONEX btn1;
CAPTION "Close";
ON CLICK ocustomer:browseclose()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 10 ,100 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 60 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {236,233,216} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
END WINDOW

win_browse.Center ( )
myoutput = ocustomer:browseloaddata()
myoutput = ocustomer:checkdeledit()
ACTIVATE WINDOW win_browse

ENDIF
Return 0
Method addnew Class customer_data
IF self:addnewwindow = false
self:addnewwindow := true
DEFINE WINDOW win_addnew ;
AT 10 ,10 ;
WIDTH 728 ;
HEIGHT 439 ;
ICON "PWCTICON" ;
TITLE "Add New Customer" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
NOSYSMENU ;
BACKCOLOR {0,0,0} 

@ -2 ,-4 IMAGE image1;
PICTURE "image\back.jpg";
WIDTH 1024 HEIGHT 768
@ 45 ,12 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 60 ;
HEIGHT 30 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 45 ,80 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 270 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 85 ,12 LABEL lbl2 ;
VALUE "Age" ;
WIDTH 60 ;
HEIGHT 30 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 85 ,80 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 270 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 125 ,12 LABEL lbl3 ;
VALUE "Gender" ;
WIDTH 60 ;
HEIGHT 30 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 125 ,80 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 270 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 165 ,12 LABEL lbl4 ;
VALUE "Country" ;
WIDTH 60 ;
HEIGHT 30 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 165 ,80 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 270 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 205 ,12 LABEL lbl5 ;
VALUE "City" ;
WIDTH 60 ;
HEIGHT 30 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 205 ,80 TEXTBOX text5;
HEIGHT 30 ;
WIDTH 270 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 245 ,12 LABEL lbl6 ;
VALUE "Address" ;
WIDTH 60 ;
HEIGHT 30 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 245 ,80 TEXTBOX text6;
HEIGHT 30 ;
WIDTH 270 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 286 ,12 LABEL lbl7 ;
VALUE "Phone" ;
WIDTH 60 ;
HEIGHT 30 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 286 ,80 TEXTBOX text7;
HEIGHT 30 ;
WIDTH 270 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 45 ,357 LABEL lbl8 ;
VALUE "Phone2" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 45 ,441 TEXTBOX text8;
HEIGHT 30 ;
WIDTH 270 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 85 ,357 LABEL lbl9 ;
VALUE "Mobile" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 85 ,441 TEXTBOX text9;
HEIGHT 30 ;
WIDTH 270 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 125 ,358 LABEL lbl10 ;
VALUE "Mobile2" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 125 ,441 TEXTBOX text10;
HEIGHT 30 ;
WIDTH 270 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 165 ,358 LABEL lbl11 ;
VALUE "Company" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 165 ,441 TEXTBOX text11;
HEIGHT 30 ;
WIDTH 270 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 205 ,358 LABEL lbl12 ;
VALUE "Job" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 205 ,441 TEXTBOX text12;
HEIGHT 30 ;
WIDTH 270 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 245 ,358 LABEL lbl13 ;
VALUE "Email" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 245 ,441 TEXTBOX text13;
HEIGHT 30 ;
WIDTH 270 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 286 ,358 LABEL lbl14 ;
VALUE "WebSite" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 286 ,441 TEXTBOX text14;
HEIGHT 30 ;
WIDTH 270 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 353 ,252 BUTTONEX btn1;
CAPTION "Save";
ON CLICK ocustomer:addnewsave()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 353 ,359 BUTTONEX btn2;
CAPTION "Cancel";
ON CLICK ocustomer:addnewclose()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
END WINDOW

win_addnew.Center ( )
ACTIVATE WINDOW win_addnew

self:addnewwindow := false
ENDIF
Return 0
Method addnewclose Class customer_data
self:addnewwindow := false
win_addnew.Release ( )
Return 0
Method addnewsave Class customer_data
myoutput = ocustomer:connect()
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from Customers",oCon,3,3 )
oRS:ADDNEW()
vName := win_addnew.text1.Value
vAge := win_addnew.text2.Value
vGender := win_addnew.text3.Value
vCountry := win_addnew.text4.Value
vCity := win_addnew.text5.Value
vAddress := win_addnew.text6.Value
vPhone := win_addnew.text7.Value
vPhone2 := win_addnew.text8.Value
vMobile := win_addnew.text9.Value
vMobile2 := win_addnew.text10.Value
vCompany := win_addnew.text11.Value
vJob := win_addnew.text12.Value
vEmail := win_addnew.text13.Value
vWebSite := win_addnew.text14.Value
oRS:fields:item("name"):value := vName
oRS:fields:item("age"):value := vAge
oRS:fields:item("Gender"):value := vGender
oRS:fields:item("Country"):value := vCountry
oRS:fields:item("City"):value := vCity
oRS:fields:item("Address"):value := vAddress
oRS:fields:item("Phone"):value := vPhone
oRS:fields:item("Phone2"):value := vPhone2
oRS:fields:item("Mobile"):value := vMobile
oRS:fields:item("Mobile2"):value := vMobile2
oRS:fields:item("Company"):value := vCompany
oRS:fields:item("Job"):value := vJob
oRS:fields:item("Email"):value := vEmail
oRS:fields:item("Website"):value := vWebsite
oRS:UPDATE()
myoutput = ocustomer:disconnect()
myoutput = ocustomer:browseloaddata()
win_addnew.Release ( )
Return 0
Method browseclose Class customer_data
self:browsewindow := false
win_browse.Release ( )
Return 0
Method checkdeledit Class customer_data
vvalue := win_browse.grid1.Value
IF vvalue == 0
win_browse.btn3.Enabled := false
win_browse.btn4.Enabled := false
ELSE
win_browse.btn3.Enabled := true
win_browse.btn4.Enabled := true
ENDIF
Return 0
Method delete Class customer_data
nvalue := win_browse.grid1.Value
IF nvalue = 0
MyOut := MSGBOX("Please select the record","Sorry")
Return 0
ENDIF
MyOut := MSGYESNO("Are you sure ?","Delete Customer Data")
IF myout = true
vcode := win_browse.grid1.cell(nvalue,1)
myoutput = ocustomer:connect()
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from Customers where custid =" + vcode,oCon,3,3 )
oRS:MOVEFIRST()
oRS:DELETE()
oRS:UPDATE()
myoutput = ocustomer:disconnect()
myoutput = ocustomer:browseloaddata()
ENDIF
Return 0
Method browseloaddata Class customer_data
IF self:browsewindow = true
win_browse.grid1.DeleteAllItems ( )
myoutput = ocustomer:connect()
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from Customers",oCon,3,3 )
mymax := oRS:RecordCount
FOR x = 1 TO mymax STEP 1
vname := oRS:fields:item("name"):value
vage := oRS:fields:item("age"):value
vgender := oRS:fields:item("gender"):value
vcountry := oRS:fields:item("country"):value
vcity := oRS:fields:item("city"):value
vaddress := oRS:fields:item("address"):value
vphone := oRS:fields:item("phone"):value
vphone2 := oRS:fields:item("phone2"):value
vmobile := oRS:fields:item("mobile"):value
vmobile2 := oRS:fields:item("mobile2"):value
vcompany := oRS:fields:item("company"):value
vjob := oRS:fields:item("job"):value
vemail := oRS:fields:item("email"):value
vwebsite := oRS:fields:item("website"):value
vcode := oRS:fields:item("custid"):value
vcode = STR ( vcode )
vcode = ALLTRIM ( vcode )
win_browse.grid1.AddItem ( {vcode,vname,vage,vgender,vcountry,vcity,vaddress,vphone,vphone2,vmobile,vmobile2,vcompany,vjob,vemail,vwebsite} )
oRS:MOVENEXT()
Next
myoutput = ocustomer:disconnect()
ENDIF
Return 0
Method editrec Class customer_data
nvalue := win_browse.grid1.Value
IF nvalue = 0
MyOut := MSGBOX("Please select the record","Sorry")
Return 0
ENDIF
vcode := win_browse.grid1.cell(nvalue,1)
self:custid := vcode
myoutput = ocustomer:connect()
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from Customers where custid =" + vcode,oCon,3,3 )
oRS:MOVEFIRST()
vname := oRS:fields:item("name"):value
vage := oRS:fields:item("age"):value
vgender := oRS:fields:item("gender"):value
vcountry := oRS:fields:item("country"):value
vcity := oRS:fields:item("city"):value
vaddress := oRS:fields:item("address"):value
vphone := oRS:fields:item("phone"):value
vphone2 := oRS:fields:item("phone2"):value
vmobile := oRS:fields:item("mobile"):value
vmobile2 := oRS:fields:item("mobile2"):value
vcompany := oRS:fields:item("company"):value
vjob := oRS:fields:item("job"):value
vemail := oRS:fields:item("email"):value
vwebsite := oRS:fields:item("website"):value
vcode := oRS:fields:item("custid"):value
vcode = STR ( vcode )
vcode = ALLTRIM ( vcode )
myoutput = ocustomer:disconnect()
IF self:editwindow = false
self:editwindow := true
DEFINE WINDOW win_edit ;
AT 10 ,10 ;
WIDTH 728 ;
HEIGHT 439 ;
ICON "PWCTICON" ;
TITLE "Edit Customer Data" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
NOSYSMENU ;
BACKCOLOR {0,0,0} 

@ -2 ,-4 IMAGE image1;
PICTURE "image\back.jpg";
WIDTH 1024 HEIGHT 768
@ 45 ,12 LABEL lbl1 ;
VALUE "Name" ;
WIDTH 60 ;
HEIGHT 30 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 45 ,80 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 270 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 85 ,12 LABEL lbl2 ;
VALUE "Age" ;
WIDTH 60 ;
HEIGHT 30 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 85 ,80 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 270 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 125 ,12 LABEL lbl3 ;
VALUE "Gender" ;
WIDTH 60 ;
HEIGHT 30 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 125 ,80 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 270 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 165 ,12 LABEL lbl4 ;
VALUE "Country" ;
WIDTH 60 ;
HEIGHT 30 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 165 ,80 TEXTBOX text4;
HEIGHT 30 ;
WIDTH 270 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 205 ,12 LABEL lbl5 ;
VALUE "City" ;
WIDTH 60 ;
HEIGHT 30 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 205 ,80 TEXTBOX text5;
HEIGHT 30 ;
WIDTH 270 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 245 ,12 LABEL lbl6 ;
VALUE "Address" ;
WIDTH 60 ;
HEIGHT 30 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 245 ,80 TEXTBOX text6;
HEIGHT 30 ;
WIDTH 270 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 286 ,12 LABEL lbl7 ;
VALUE "Phone" ;
WIDTH 60 ;
HEIGHT 30 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 286 ,80 TEXTBOX text7;
HEIGHT 30 ;
WIDTH 270 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 45 ,357 LABEL lbl8 ;
VALUE "Phone2" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 45 ,441 TEXTBOX text8;
HEIGHT 30 ;
WIDTH 270 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 85 ,357 LABEL lbl9 ;
VALUE "Mobile" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 85 ,441 TEXTBOX text9;
HEIGHT 30 ;
WIDTH 270 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 125 ,358 LABEL lbl10 ;
VALUE "Mobile2" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 125 ,441 TEXTBOX text10;
HEIGHT 30 ;
WIDTH 270 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 165 ,358 LABEL lbl11 ;
VALUE "Company" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 165 ,441 TEXTBOX text11;
HEIGHT 30 ;
WIDTH 270 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 205 ,358 LABEL lbl12 ;
VALUE "Job" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 205 ,441 TEXTBOX text12;
HEIGHT 30 ;
WIDTH 270 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 245 ,358 LABEL lbl13 ;
VALUE "Email" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 245 ,441 TEXTBOX text13;
HEIGHT 30 ;
WIDTH 270 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 286 ,358 LABEL lbl14 ;
VALUE "WebSite" ;
WIDTH 80 ;
HEIGHT 30 ;
FONT "Arial" SIZE 12  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
FONTCOLOR {0,0,0}
@ 286 ,441 TEXTBOX text14;
HEIGHT 30 ;
WIDTH 270 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 353 ,252 BUTTONEX btn1;
CAPTION "Save";
ON CLICK ocustomer:editsave()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 353 ,359 BUTTONEX btn2;
CAPTION "Cancel";
ON CLICK ocustomer:editclose()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
END WINDOW

win_edit.Center ( )
win_edit.text1.Value := vname
win_edit.text2.Value := vage
win_edit.text3.Value := vgender
win_edit.text4.Value := vcountry
win_edit.text5.Value := vcity
win_edit.text6.Value := vaddress
win_edit.text7.Value := vphone
win_edit.text8.Value := vphone2
win_edit.text9.Value := vmobile
win_edit.text10.Value := vmobile2
win_edit.text11.Value := vcompany
win_edit.text12.Value := vjob
win_edit.text13.Value := vemail
win_edit.text14.Value := vwebsite
ACTIVATE WINDOW win_edit

ENDIF
Return 0
Method editsave Class customer_data
vcode := self:custid
myoutput = ocustomer:connect()
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from Customers where custid =" + vcode,oCon,3,3 )
oRS:MOVEFIRST()
vName := win_edit.text1.Value
vAge := win_edit.text2.Value
vGender := win_edit.text3.Value
vCountry := win_edit.text4.Value
vCity := win_edit.text5.Value
vAddress := win_edit.text6.Value
vPhone := win_edit.text7.Value
vPhone2 := win_edit.text8.Value
vMobile := win_edit.text9.Value
vMobile2 := win_edit.text10.Value
vCompany := win_edit.text11.Value
vJob := win_edit.text12.Value
vEmail := win_edit.text13.Value
vWebSite := win_edit.text14.Value
oRS:fields:item("name"):value := vName
oRS:fields:item("age"):value := vAge
oRS:fields:item("Gender"):value := vGender
oRS:fields:item("Country"):value := vCountry
oRS:fields:item("City"):value := vCity
oRS:fields:item("Address"):value := vAddress
oRS:fields:item("Phone"):value := vPhone
oRS:fields:item("Phone2"):value := vPhone2
oRS:fields:item("Mobile"):value := vMobile
oRS:fields:item("Mobile2"):value := vMobile2
oRS:fields:item("Company"):value := vCompany
oRS:fields:item("Job"):value := vJob
oRS:fields:item("Email"):value := vEmail
oRS:fields:item("Website"):value := vWebsite
oRS:UPDATE()
myoutput = ocustomer:disconnect()
myoutput = ocustomer:browseloaddata()
myoutput = ocustomer:editclose()
Return 0
Method editclose Class customer_data
self:editwindow := false
win_edit.Release ( )
Return 0
Method search Class customer_data
myvalue := win_browse.text1.Value
myvalue = ALLTRIM ( myvalue )
myoutput = ocustomer:connect()
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from Customers where name like '" + myvalue + "%'",oCon,3,3 )
mymax := oRS:RecordCount
IF mymax = 0
MyOut := MSGBOX("No matches found","Sorry")
Return 0
ENDIF
win_browse.grid1.DeleteAllItems ( )
oRS:MOVEFIRST()
FOR x = 1 TO mymax STEP 1
vname := oRS:fields:item("name"):value
vage := oRS:fields:item("age"):value
vgender := oRS:fields:item("gender"):value
vcountry := oRS:fields:item("country"):value
vcity := oRS:fields:item("city"):value
vaddress := oRS:fields:item("address"):value
vphone := oRS:fields:item("phone"):value
vphone2 := oRS:fields:item("phone2"):value
vmobile := oRS:fields:item("mobile"):value
vmobile2 := oRS:fields:item("mobile2"):value
vcompany := oRS:fields:item("company"):value
vjob := oRS:fields:item("job"):value
vemail := oRS:fields:item("email"):value
vwebsite := oRS:fields:item("website"):value
vcode := oRS:fields:item("custid"):value
vcode = STR ( vcode )
vcode = ALLTRIM ( vcode )
win_browse.grid1.AddItem ( {vcode,vname,vage,vgender,vcountry,vcity,vaddress,vphone,vphone2,vmobile,vmobile2,vcompany,vjob,vemail,vwebsite} )
oRS:MOVENEXT()
Next
myoutput = ocustomer:disconnect()
Return 0
Method print Class customer_data
IF self:printwindow = false
self:printwindow := true
DEFINE WINDOW win_print ;
AT 10 ,10 ;
WIDTH 731 ;
HEIGHT 455 ;
ICON "PWCTICON" ;
TITLE "Print all customers data" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
NOSYSMENU ;
BACKCOLOR {0,0,0} 

@ 0 ,0 IMAGE image1;
PICTURE "image\back.jpg";
WIDTH 1024 HEIGHT 768
@ 361 ,615 BUTTONEX btn1;
CAPTION "Close";
ON CLICK ocustomer:printclose()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 361 ,495 BUTTONEX btn2;
CAPTION "Preview";
ON CLICK ocustomer:preview()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
Public oActiveX
oActiveX := TActiveX():New( "Win_print", "CrystalReports10.ActiveXReportViewer.1" , 10 , 10 , 696 , 334)
oActiveX:Load()
END WINDOW

win_print.Center ( )
ACTIVATE WINDOW win_print

ENDIF
Return 0
Method printclose Class customer_data
self:printwindow := false
win_print.Release ( )
Return 0
Method preview Class customer_data
StartUpFolder := GetStartUpFolder()
Public T_myobj,T_myreport
T_myobj := TOLEAUTO():NEW( "CrystalDesignRuntime.Application" )
T_myreport := TOLEAUTO():NEW( "CrystalDesignRuntime.Report" )
T_myreport := T_myobj:openreport ( "Report\Report1.RPT" )
oDB = T_myreport:Database()
ocDBT = oDB:Tables()
oDBT = ocDBT:Item(1)
oDBT:Location = startupfolder + "\Data\mydata.mdb"
oActivex:OOLE:reportsource := T_myreport
oActivex:OOLE:viewreport ( )
Return 0


End Of Resistance

INIT PROCEDURE Init_CUSTOMERS
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","The First Step",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Create Objects",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object oCustomer of Class Customer_Data",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win1 )",2,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 )",13,14)
SS_ESASTEP("Circuits\Main\Main\Main","Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","MENU POPUPS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","POPUP ITEMS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About' )",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit' )",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Data'",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","POPUP ITEMS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers List (Browse)' )",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Add New Customer' )",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Reports'",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","POPUP ITEMS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Print All Customers Data' )",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Items",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( '2009, Mahmoud Fayed (msfclipper@yahoo.com)' )",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Define Notify Menu Of Parent Window : win1",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Menu Items",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers List (Browse)' )",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Add New Customer' )",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Print All Customers Data' )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About' )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit' )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","End of menu",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Define Context Menu Of Parent Window : win1",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Menu Items",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers List (Browse)' )",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Add New Customer' )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Print All Customers Data' )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About' )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit' )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","End of menu",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",49,50)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",52,53)
SS_ESASTEP("Circuits\Main\Main\Main","Procedures",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure about",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","ShellAbout, Title 'Customers Application', Addition Text 'Developed using PWCT (Programming Without Coding Technology)'",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure shutdown",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Classes",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class base_data",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Class Data",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Class Methods",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Method connect",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Method disconnect",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Class Methods",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method connect Class base_data",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Public oCon,oRS",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",66,67)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Ext",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",69,70)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method disconnect Class base_data",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Release Variable oCon,oRS",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class customer_data From base_data",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Class Data",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Data custid Init Value ''",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Data browsewindow Init Value false",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Data addnewwindow Init Value false",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Data editwindow Init Value false",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Data printwindow Init Value false",82,82)
SS_ESASTEP("Circuits\Main\Main\Main","Declare Class Methods",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Method browse",83,83)
SS_ESASTEP("Circuits\Main\Main\Main","Method addnew",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Method addnewclose",85,85)
SS_ESASTEP("Circuits\Main\Main\Main","Method addnewsave",86,86)
SS_ESASTEP("Circuits\Main\Main\Main","Method browseclose",87,87)
SS_ESASTEP("Circuits\Main\Main\Main","Method checkdeledit",88,88)
SS_ESASTEP("Circuits\Main\Main\Main","Method delete",89,89)
SS_ESASTEP("Circuits\Main\Main\Main","Method browseloaddata",90,90)
SS_ESASTEP("Circuits\Main\Main\Main","Method editrec",91,91)
SS_ESASTEP("Circuits\Main\Main\Main","Method editsave",92,92)
SS_ESASTEP("Circuits\Main\Main\Main","Method editclose",93,93)
SS_ESASTEP("Circuits\Main\Main\Main","Method search",94,94)
SS_ESASTEP("Circuits\Main\Main\Main","Method print",95,95)
SS_ESASTEP("Circuits\Main\Main\Main","Method printclose",96,96)
SS_ESASTEP("Circuits\Main\Main\Main","Method preview",97,97)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",98,98)
SS_ESASTEP("Circuits\Main\Main\Main","Class Methods",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method browse Class customer_data",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( self:browsewindow = false )",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","self.browsewindow = true",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win_browse )",102,105)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",106,114)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 )",115,116)
SS_ESASTEP("Circuits\Main\Main\Main","Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",117,117)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",119,123)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 )",124,125)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",127,129)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 )",130,130)
SS_ESASTEP("Circuits\Main\Main\Main","Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",132,138)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 )",139,140)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",141,141)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",142,144)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 )",145,146)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",147,147)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",148,150)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 )",151,152)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",154,156)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 )",157,158)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",160,162)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 )",163,164)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",165,170)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",171,172)
SS_ESASTEP("Circuits\Main\Main\Main","win_browse.Center ( )",173,173)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = ocustomer.browseloaddata()",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = ocustomer.checkdeledit()",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",176,177)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",178,178)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",179,179)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method addnew Class customer_data",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( self:addnewwindow = false )",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","self.addnewwindow = true",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win_addnew )",183,186)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",187,195)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 )",196,197)
SS_ESASTEP("Circuits\Main\Main\Main","Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",198,198)
SS_ESASTEP("Circuits\Main\Main\Main","Label + Textbox",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 )",199,200)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",201,206)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",208,212)
SS_ESASTEP("Circuits\Main\Main\Main","Label + Textbox",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 )",213,214)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",215,220)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",221,221)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",222,226)
SS_ESASTEP("Circuits\Main\Main\Main","Label + Textbox",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 )",227,228)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",229,234)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",235,235)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",236,240)
SS_ESASTEP("Circuits\Main\Main\Main","Label + Textbox",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 )",241,242)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",243,248)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",249,249)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",250,254)
SS_ESASTEP("Circuits\Main\Main\Main","Label + Textbox",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 )",255,256)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",257,262)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text5  )",263,263)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",264,268)
SS_ESASTEP("Circuits\Main\Main\Main","Label + Textbox",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 )",269,270)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",271,276)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text6  )",277,277)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",278,282)
SS_ESASTEP("Circuits\Main\Main\Main","Label + Textbox",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7 )",283,284)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",285,290)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text7  )",291,291)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",292,296)
SS_ESASTEP("Circuits\Main\Main\Main","Label + Textbox",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl8 )",297,298)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",299,304)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text8  )",305,305)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",306,310)
SS_ESASTEP("Circuits\Main\Main\Main","Label + Textbox",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl9 )",311,312)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",313,318)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text9  )",319,319)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",320,324)
SS_ESASTEP("Circuits\Main\Main\Main","Label + Textbox",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl10 )",325,326)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",327,332)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text10  )",333,333)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",334,338)
SS_ESASTEP("Circuits\Main\Main\Main","Label + Textbox",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl11 )",339,340)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",341,346)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text11  )",347,347)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",348,352)
SS_ESASTEP("Circuits\Main\Main\Main","Label + Textbox",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl12 )",353,354)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",355,360)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text12  )",361,361)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",362,366)
SS_ESASTEP("Circuits\Main\Main\Main","Label + Textbox",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl13 )",367,368)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",369,374)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text13  )",375,375)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",376,380)
SS_ESASTEP("Circuits\Main\Main\Main","Label + Textbox",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl14 )",381,382)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",383,388)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text14  )",389,389)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",390,394)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 )",395,396)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",397,397)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",398,400)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 )",401,402)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",403,403)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",404,406)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",407,408)
SS_ESASTEP("Circuits\Main\Main\Main","win_addnew.Center ( )",409,409)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",410,411)
SS_ESASTEP("Circuits\Main\Main\Main","self.addnewwindow = false",412,412)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",413,413)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",414,414)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method addnewclose Class customer_data",415,415)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","self.addnewwindow = false",416,416)
SS_ESASTEP("Circuits\Main\Main\Main","win_addnew.Release ( )",417,417)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",418,418)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method addnewsave Class customer_data",419,419)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = ocustomer.connect()",420,420)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from Customers'",421,423)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Add New Record",424,424)
SS_ESASTEP("Circuits\Main\Main\Main","vName = win_addnew.text1.Value",425,425)
SS_ESASTEP("Circuits\Main\Main\Main","vAge = win_addnew.text2.Value",426,426)
SS_ESASTEP("Circuits\Main\Main\Main","vGender = win_addnew.text3.Value",427,427)
SS_ESASTEP("Circuits\Main\Main\Main","vCountry = win_addnew.text4.Value",428,428)
SS_ESASTEP("Circuits\Main\Main\Main","vCity = win_addnew.text5.Value",429,429)
SS_ESASTEP("Circuits\Main\Main\Main","vAddress = win_addnew.text6.Value",430,430)
SS_ESASTEP("Circuits\Main\Main\Main","vPhone = win_addnew.text7.Value",431,431)
SS_ESASTEP("Circuits\Main\Main\Main","vPhone2 = win_addnew.text8.Value",432,432)
SS_ESASTEP("Circuits\Main\Main\Main","vMobile = win_addnew.text9.Value",433,433)
SS_ESASTEP("Circuits\Main\Main\Main","vMobile2 = win_addnew.text10.Value",434,434)
SS_ESASTEP("Circuits\Main\Main\Main","vCompany = win_addnew.text11.Value",435,435)
SS_ESASTEP("Circuits\Main\Main\Main","vJob = win_addnew.text12.Value",436,436)
SS_ESASTEP("Circuits\Main\Main\Main","vEmail = win_addnew.text13.Value",437,437)
SS_ESASTEP("Circuits\Main\Main\Main","vWebSite = win_addnew.text14.Value",438,438)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('name') Value To (vName)",439,439)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('age') Value To (vAge)",440,440)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Gender') Value To (vGender)",441,441)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Country') Value To (vCountry)",442,442)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('City') Value To (vCity)",443,443)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Address') Value To (vAddress)",444,444)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Phone') Value To (vPhone)",445,445)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Phone2') Value To (vPhone2)",446,446)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Mobile') Value To (vMobile)",447,447)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Mobile2') Value To (vMobile2)",448,448)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Company') Value To (vCompany)",449,449)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Job') Value To (vJob)",450,450)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Email') Value To (vEmail)",451,451)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Website') Value To (vWebsite)",452,452)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",453,453)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = ocustomer.disconnect()",454,454)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = ocustomer.browseloaddata()",455,455)
SS_ESASTEP("Circuits\Main\Main\Main","win_addnew.Release ( )",456,456)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",457,457)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method browseclose Class customer_data",458,458)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","self.browsewindow = false",459,459)
SS_ESASTEP("Circuits\Main\Main\Main","win_browse.Release ( )",460,460)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",461,461)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method checkdeledit Class customer_data",462,462)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","vvalue = win_browse.grid1.Value",463,463)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( vvalue == 0 )",464,464)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win_browse.btn3.Enabled := false",465,465)
SS_ESASTEP("Circuits\Main\Main\Main","win_browse.btn4.Enabled := false",466,466)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",467,467)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win_browse.btn3.Enabled := true",468,468)
SS_ESASTEP("Circuits\Main\Main\Main","win_browse.btn4.Enabled := true",469,469)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",470,470)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",471,471)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method delete Class customer_data",472,472)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","nvalue = win_browse.grid1.Value",473,473)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nvalue = 0 )",474,474)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please select the record' Title 'Sorry' Type: Message Box",475,475)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",476,476)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",477,477)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Are you sure ?' Title 'Delete Customer Data' Type: Message Yes/No",478,478)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout = true )",479,479)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","vcode = win_browse.grid1.cell(nvalue,1)",480,480)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = ocustomer.connect()",481,481)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from Customers where custid =' + vcode",482,484)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",485,485)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",486,486)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",487,487)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = ocustomer.disconnect()",488,488)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = ocustomer.browseloaddata()",489,489)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",490,490)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",491,491)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method browseloaddata Class customer_data",492,492)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( self:browsewindow = true )",493,493)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win_browse.grid1.DeleteAllItems ( )",494,494)
SS_ESASTEP("Circuits\Main\Main\Main","Load Data",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = ocustomer.connect()",495,495)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from Customers'",496,498)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",499,499)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To mymax Step 1)",500,500)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Add data to grid",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","vname = ADODB RecordSet (oRS) Get Field ('name') Value",501,501)
SS_ESASTEP("Circuits\Main\Main\Main","vage = ADODB RecordSet (oRS) Get Field ('age') Value",502,502)
SS_ESASTEP("Circuits\Main\Main\Main","vgender = ADODB RecordSet (oRS) Get Field ('gender') Value",503,503)
SS_ESASTEP("Circuits\Main\Main\Main","vcountry = ADODB RecordSet (oRS) Get Field ('country') Value",504,504)
SS_ESASTEP("Circuits\Main\Main\Main","vcity = ADODB RecordSet (oRS) Get Field ('city') Value",505,505)
SS_ESASTEP("Circuits\Main\Main\Main","vaddress = ADODB RecordSet (oRS) Get Field ('address') Value",506,506)
SS_ESASTEP("Circuits\Main\Main\Main","vphone = ADODB RecordSet (oRS) Get Field ('phone') Value",507,507)
SS_ESASTEP("Circuits\Main\Main\Main","vphone2 = ADODB RecordSet (oRS) Get Field ('phone2') Value",508,508)
SS_ESASTEP("Circuits\Main\Main\Main","vmobile = ADODB RecordSet (oRS) Get Field ('mobile') Value",509,509)
SS_ESASTEP("Circuits\Main\Main\Main","vmobile2 = ADODB RecordSet (oRS) Get Field ('mobile2') Value",510,510)
SS_ESASTEP("Circuits\Main\Main\Main","vcompany = ADODB RecordSet (oRS) Get Field ('company') Value",511,511)
SS_ESASTEP("Circuits\Main\Main\Main","vjob = ADODB RecordSet (oRS) Get Field ('job') Value",512,512)
SS_ESASTEP("Circuits\Main\Main\Main","vemail = ADODB RecordSet (oRS) Get Field ('email') Value",513,513)
SS_ESASTEP("Circuits\Main\Main\Main","vwebsite = ADODB RecordSet (oRS) Get Field ('website') Value",514,514)
SS_ESASTEP("Circuits\Main\Main\Main","vcode = ADODB RecordSet (oRS) Get Field ('custid') Value",515,515)
SS_ESASTEP("Circuits\Main\Main\Main","vcode = CONVERT vcode TO STRING",516,516)
SS_ESASTEP("Circuits\Main\Main\Main","vcode = All Trim vcode",517,517)
SS_ESASTEP("Circuits\Main\Main\Main","win_browse.grid1.AddItem ( {vcode,vname,vage,vgender,vcountry,vcity,vaddress,vphone,vphone2,vmobile,",518,518)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",519,519)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",520,520)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = ocustomer.disconnect()",521,521)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",522,522)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",523,523)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method editrec Class customer_data",524,524)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","nvalue = win_browse.grid1.Value",525,525)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nvalue = 0 )",526,526)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please select the record' Title 'Sorry' Type: Message Box",527,527)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",528,528)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",529,529)
SS_ESASTEP("Circuits\Main\Main\Main","get record data",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","vcode = win_browse.grid1.cell(nvalue,1)",530,530)
SS_ESASTEP("Circuits\Main\Main\Main","self.custid = vcode",531,531)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = ocustomer.connect()",532,532)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from Customers where custid =' + vcode",533,535)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",536,536)
SS_ESASTEP("Circuits\Main\Main\Main","Get Values",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","vname = ADODB RecordSet (oRS) Get Field ('name') Value",537,537)
SS_ESASTEP("Circuits\Main\Main\Main","vage = ADODB RecordSet (oRS) Get Field ('age') Value",538,538)
SS_ESASTEP("Circuits\Main\Main\Main","vgender = ADODB RecordSet (oRS) Get Field ('gender') Value",539,539)
SS_ESASTEP("Circuits\Main\Main\Main","vcountry = ADODB RecordSet (oRS) Get Field ('country') Value",540,540)
SS_ESASTEP("Circuits\Main\Main\Main","vcity = ADODB RecordSet (oRS) Get Field ('city') Value",541,541)
SS_ESASTEP("Circuits\Main\Main\Main","vaddress = ADODB RecordSet (oRS) Get Field ('address') Value",542,542)
SS_ESASTEP("Circuits\Main\Main\Main","vphone = ADODB RecordSet (oRS) Get Field ('phone') Value",543,543)
SS_ESASTEP("Circuits\Main\Main\Main","vphone2 = ADODB RecordSet (oRS) Get Field ('phone2') Value",544,544)
SS_ESASTEP("Circuits\Main\Main\Main","vmobile = ADODB RecordSet (oRS) Get Field ('mobile') Value",545,545)
SS_ESASTEP("Circuits\Main\Main\Main","vmobile2 = ADODB RecordSet (oRS) Get Field ('mobile2') Value",546,546)
SS_ESASTEP("Circuits\Main\Main\Main","vcompany = ADODB RecordSet (oRS) Get Field ('company') Value",547,547)
SS_ESASTEP("Circuits\Main\Main\Main","vjob = ADODB RecordSet (oRS) Get Field ('job') Value",548,548)
SS_ESASTEP("Circuits\Main\Main\Main","vemail = ADODB RecordSet (oRS) Get Field ('email') Value",549,549)
SS_ESASTEP("Circuits\Main\Main\Main","vwebsite = ADODB RecordSet (oRS) Get Field ('website') Value",550,550)
SS_ESASTEP("Circuits\Main\Main\Main","vcode = ADODB RecordSet (oRS) Get Field ('custid') Value",551,551)
SS_ESASTEP("Circuits\Main\Main\Main","vcode = CONVERT vcode TO STRING",552,552)
SS_ESASTEP("Circuits\Main\Main\Main","vcode = All Trim vcode",553,553)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = ocustomer.disconnect()",554,554)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( self:editwindow = false )",555,555)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","self.editwindow = true",556,556)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win_edit )",557,560)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",561,569)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 )",570,571)
SS_ESASTEP("Circuits\Main\Main\Main","Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",572,572)
SS_ESASTEP("Circuits\Main\Main\Main","Label + Textbox",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 )",573,574)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",575,580)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",581,581)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",582,586)
SS_ESASTEP("Circuits\Main\Main\Main","Label + Textbox",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 )",587,588)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",589,594)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",595,595)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",596,600)
SS_ESASTEP("Circuits\Main\Main\Main","Label + Textbox",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 )",601,602)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",603,608)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",609,609)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",610,614)
SS_ESASTEP("Circuits\Main\Main\Main","Label + Textbox",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 )",615,616)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",617,622)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",623,623)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",624,628)
SS_ESASTEP("Circuits\Main\Main\Main","Label + Textbox",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 )",629,630)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",631,636)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text5  )",637,637)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",638,642)
SS_ESASTEP("Circuits\Main\Main\Main","Label + Textbox",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 )",643,644)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",645,650)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text6  )",651,651)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",652,656)
SS_ESASTEP("Circuits\Main\Main\Main","Label + Textbox",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7 )",657,658)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",659,664)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text7  )",665,665)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",666,670)
SS_ESASTEP("Circuits\Main\Main\Main","Label + Textbox",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl8 )",671,672)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",673,678)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text8  )",679,679)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",680,684)
SS_ESASTEP("Circuits\Main\Main\Main","Label + Textbox",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl9 )",685,686)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",687,692)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text9  )",693,693)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",694,698)
SS_ESASTEP("Circuits\Main\Main\Main","Label + Textbox",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl10 )",699,700)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",701,706)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text10  )",707,707)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",708,712)
SS_ESASTEP("Circuits\Main\Main\Main","Label + Textbox",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl11 )",713,714)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",715,720)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text11  )",721,721)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",722,726)
SS_ESASTEP("Circuits\Main\Main\Main","Label + Textbox",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl12 )",727,728)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",729,734)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text12  )",735,735)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",736,740)
SS_ESASTEP("Circuits\Main\Main\Main","Label + Textbox",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl13 )",741,742)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",743,748)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text13  )",749,749)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",750,754)
SS_ESASTEP("Circuits\Main\Main\Main","Label + Textbox",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl14 )",755,756)
SS_ESASTEP("Circuits\Main\Main\Main","Label Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",757,762)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text14  )",763,763)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox EVENTS",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",764,768)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 )",769,770)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",771,771)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",772,774)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 )",775,776)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",777,777)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",778,780)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",781,782)
SS_ESASTEP("Circuits\Main\Main\Main","win_edit.Center ( )",783,783)
SS_ESASTEP("Circuits\Main\Main\Main","Load Data",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","win_edit.text1.Value := vname",784,784)
SS_ESASTEP("Circuits\Main\Main\Main","win_edit.text2.Value := vage",785,785)
SS_ESASTEP("Circuits\Main\Main\Main","win_edit.text3.Value := vgender",786,786)
SS_ESASTEP("Circuits\Main\Main\Main","win_edit.text4.Value := vcountry",787,787)
SS_ESASTEP("Circuits\Main\Main\Main","win_edit.text5.Value := vcity",788,788)
SS_ESASTEP("Circuits\Main\Main\Main","win_edit.text6.Value := vaddress",789,789)
SS_ESASTEP("Circuits\Main\Main\Main","win_edit.text7.Value := vphone",790,790)
SS_ESASTEP("Circuits\Main\Main\Main","win_edit.text8.Value := vphone2",791,791)
SS_ESASTEP("Circuits\Main\Main\Main","win_edit.text9.Value := vmobile",792,792)
SS_ESASTEP("Circuits\Main\Main\Main","win_edit.text10.Value := vmobile2",793,793)
SS_ESASTEP("Circuits\Main\Main\Main","win_edit.text11.Value := vcompany",794,794)
SS_ESASTEP("Circuits\Main\Main\Main","win_edit.text12.Value := vjob",795,795)
SS_ESASTEP("Circuits\Main\Main\Main","win_edit.text13.Value := vemail",796,796)
SS_ESASTEP("Circuits\Main\Main\Main","win_edit.text14.Value := vwebsite",797,797)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",798,799)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",800,800)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",801,801)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method editsave Class customer_data",802,802)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","save record data",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","vcode = self.custid",803,803)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = ocustomer.connect()",804,804)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from Customers where c",805,807)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",808,808)
SS_ESASTEP("Circuits\Main\Main\Main","update values",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","vName = win_edit.text1.Value",809,809)
SS_ESASTEP("Circuits\Main\Main\Main","vAge = win_edit.text2.Value",810,810)
SS_ESASTEP("Circuits\Main\Main\Main","vGender = win_edit.text3.Value",811,811)
SS_ESASTEP("Circuits\Main\Main\Main","vCountry = win_edit.text4.Value",812,812)
SS_ESASTEP("Circuits\Main\Main\Main","vCity = win_edit.text5.Value",813,813)
SS_ESASTEP("Circuits\Main\Main\Main","vAddress = win_edit.text6.Value",814,814)
SS_ESASTEP("Circuits\Main\Main\Main","vPhone = win_edit.text7.Value",815,815)
SS_ESASTEP("Circuits\Main\Main\Main","vPhone2 = win_edit.text8.Value",816,816)
SS_ESASTEP("Circuits\Main\Main\Main","vMobile = win_edit.text9.Value",817,817)
SS_ESASTEP("Circuits\Main\Main\Main","vMobile2 = win_edit.text10.Value",818,818)
SS_ESASTEP("Circuits\Main\Main\Main","vCompany = win_edit.text11.Value",819,819)
SS_ESASTEP("Circuits\Main\Main\Main","vJob = win_edit.text12.Value",820,820)
SS_ESASTEP("Circuits\Main\Main\Main","vEmail = win_edit.text13.Value",821,821)
SS_ESASTEP("Circuits\Main\Main\Main","vWebSite = win_edit.text14.Value",822,822)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('name') Value To (vName)",823,823)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('age') Value To (vAge)",824,824)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Gender') Value To (vGender)",825,825)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Country') Value To (vCountry)",826,826)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('City') Value To (vCity)",827,827)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Address') Value To (vAddress)",828,828)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Phone') Value To (vPhone)",829,829)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Phone2') Value To (vPhone2)",830,830)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Mobile') Value To (vMobile)",831,831)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Mobile2') Value To (vMobile2)",832,832)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Company') Value To (vCompany)",833,833)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Job') Value To (vJob)",834,834)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Email') Value To (vEmail)",835,835)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Website') Value To (vWebsite)",836,836)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",837,837)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = ocustomer.disconnect()",838,838)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = ocustomer.browseloaddata()",839,839)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = ocustomer.editclose()",840,840)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",841,841)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method editclose Class customer_data",842,842)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","self.editwindow = false",843,843)
SS_ESASTEP("Circuits\Main\Main\Main","win_edit.Release ( )",844,844)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",845,845)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method search Class customer_data",846,846)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","myvalue = win_browse.text1.Value",847,847)
SS_ESASTEP("Circuits\Main\Main\Main","myvalue = All Trim myvalue",848,848)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = ocustomer.connect()",849,849)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from Customers where name like '' + myvalue + '%''",850,852)
SS_ESASTEP("Circuits\Main\Main\Main","Load Data",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",853,853)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax = 0 )",854,854)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No matches found' Title 'Sorry' Type: Message Box",855,855)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",856,856)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",857,857)
SS_ESASTEP("Circuits\Main\Main\Main","win_browse.grid1.DeleteAllItems ( )",858,858)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",859,859)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To mymax Step 1)",860,860)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Add data to grid",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","vname = ADODB RecordSet (oRS) Get Field ('name') Value",861,861)
SS_ESASTEP("Circuits\Main\Main\Main","vage = ADODB RecordSet (oRS) Get Field ('age') Value",862,862)
SS_ESASTEP("Circuits\Main\Main\Main","vgender = ADODB RecordSet (oRS) Get Field ('gender') Value",863,863)
SS_ESASTEP("Circuits\Main\Main\Main","vcountry = ADODB RecordSet (oRS) Get Field ('country') Value",864,864)
SS_ESASTEP("Circuits\Main\Main\Main","vcity = ADODB RecordSet (oRS) Get Field ('city') Value",865,865)
SS_ESASTEP("Circuits\Main\Main\Main","vaddress = ADODB RecordSet (oRS) Get Field ('address') Value",866,866)
SS_ESASTEP("Circuits\Main\Main\Main","vphone = ADODB RecordSet (oRS) Get Field ('phone') Value",867,867)
SS_ESASTEP("Circuits\Main\Main\Main","vphone2 = ADODB RecordSet (oRS) Get Field ('phone2') Value",868,868)
SS_ESASTEP("Circuits\Main\Main\Main","vmobile = ADODB RecordSet (oRS) Get Field ('mobile') Value",869,869)
SS_ESASTEP("Circuits\Main\Main\Main","vmobile2 = ADODB RecordSet (oRS) Get Field ('mobile2') Value",870,870)
SS_ESASTEP("Circuits\Main\Main\Main","vcompany = ADODB RecordSet (oRS) Get Field ('company') Value",871,871)
SS_ESASTEP("Circuits\Main\Main\Main","vjob = ADODB RecordSet (oRS) Get Field ('job') Value",872,872)
SS_ESASTEP("Circuits\Main\Main\Main","vemail = ADODB RecordSet (oRS) Get Field ('email') Value",873,873)
SS_ESASTEP("Circuits\Main\Main\Main","vwebsite = ADODB RecordSet (oRS) Get Field ('website') Value",874,874)
SS_ESASTEP("Circuits\Main\Main\Main","vcode = ADODB RecordSet (oRS) Get Field ('custid') Value",875,875)
SS_ESASTEP("Circuits\Main\Main\Main","vcode = CONVERT vcode TO STRING",876,876)
SS_ESASTEP("Circuits\Main\Main\Main","vcode = All Trim vcode",877,877)
SS_ESASTEP("Circuits\Main\Main\Main","win_browse.grid1.AddItem ( {vcode,vname,vage,vgender,vcountry,vcity,vaddress,vphone,vphone2,vmobile,",878,878)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",879,879)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",880,880)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = ocustomer.disconnect()",881,881)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",882,882)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method print Class customer_data",883,883)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( self:printwindow = false )",884,884)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","self.printwindow = true",885,885)
SS_ESASTEP("Circuits\Main\Main\Main","Define Window  ( win_print )",886,889)
SS_ESASTEP("Circuits\Main\Main\Main","Window Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",890,898)
SS_ESASTEP("Circuits\Main\Main\Main","Window Controls",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 )",899,900)
SS_ESASTEP("Circuits\Main\Main\Main","Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",901,901)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 )",902,903)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",904,904)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",905,907)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 )",908,909)
SS_ESASTEP("Circuits\Main\Main\Main","Button Events",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK",910,910)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",911,913)
SS_ESASTEP("Circuits\Main\Main\Main","Active Control ( oActiveX )",914,916)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",917,918)
SS_ESASTEP("Circuits\Main\Main\Main","win_print.Center ( )",919,919)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",920,921)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",922,922)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",923,923)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method printclose Class customer_data",924,924)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","self.printwindow = false",925,925)
SS_ESASTEP("Circuits\Main\Main\Main","win_print.Release ( )",926,926)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",927,927)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method preview Class customer_data",928,928)
SS_ESASTEP("Circuits\Main\Main\Main","Code Block",0,0)
SS_ESASTEP("Circuits\Main\Main\Main","StartUpFolder := Get StartUp Folder",929,929)
SS_ESASTEP("Circuits\Main\Main\Main","Crystal Reports 10, Object oActivex, View Report 'Report\Report1.RPT' , Database Location = startupfolder + '\Data\mydata.mdb'",930,939)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",940,940)
Return
*-------------------------------------------------------------------*

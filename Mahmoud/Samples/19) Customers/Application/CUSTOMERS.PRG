*---------------------------------------------------------------------------*
* Time : 06:05:38    Date : 10/21/2011
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

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_CUSTOMERS_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CUSTOMERS_18smart1() code
oCustomer = Customer_Data()
if !iswindowdefined( win1 )
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
EndIF

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
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="dsn=MS Access Database;uid=";Initial Catalog=data\mydata.mdb' )
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
if !iswindowdefined( win_browse )
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
EndIF

ENDIF
Return 0
Method addnew Class customer_data
IF self:addnewwindow = false
self:addnewwindow := true
if !iswindowdefined( win_addnew )
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
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
INPUTMASK "" 

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
EndIF

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
if !iswindowdefined( win_edit )
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
@ 45 ,79 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 270 ;
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
EndIF

ENDIF
Return 0
Method editsave Class customer_data
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
if !iswindowdefined( win_print )
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
FONT "arial" SIZE 12 ;
TOOLTIP ""
oActiveX := TActiveX():New( "Win_print", "CrystalReports10.ActiveXReportViewer.1" , 10 , 10 , 696 , 334)
oActiveX:Load()
END WINDOW

win_print.Center ( )
ACTIVATE WINDOW win_print
EndIF

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


End Of Resistance

INIT PROCEDURE Init_CUSTOMERS
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",49)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Create Object oCustomer of Class Customer_Data",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Customers'",2,6)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",7,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'image\mainback.jpg'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File'",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About' )",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit' )",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Data'",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers List (Browse)' )",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Add New Customer' )",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Reports'",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Print All Customers Data' )",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",30,31)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( '2009, Mahmoud Fayed (msfclipper@yahoo.com)' )",32,33)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",34,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define Notify Menu Of Parent Window : win1",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers List (Browse)' )",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Add New Customer' )",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Print All Customers Data' )",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About' )",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit' )",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","End of menu",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Define Context Menu Of Parent Window : win1",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Customers List (Browse)' )",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Add New Customer' )",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Print All Customers Data' )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'About' )",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Exit' )",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","End of menu",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",50,51)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",53,55)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure about",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","ShellAbout, Title 'Customers Application', Addition Text 'Developed using PWCT (Programming Without Coding Technology)'",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure shutdown",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class base_data",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","Method connect",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Method disconnect",64,64)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",65,65)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method connect Class base_data",66,66)
SS_ESASTEP("Circuits\Main\Main\Main","Public oCon,oRS",67,67)
SS_ESASTEP("Circuits\Main\Main\Main","oCon = Create New ADODB Connection",68,68)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection oCon , Connection String : 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties='dsn=MS Access Database;uid=';Initial Catalog=data\mydata.mdb'",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","oRS = Create New ADODB RecordSet Object",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",71,71)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method disconnect Class base_data",72,72)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet oRS",73,73)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection oCon",74,74)
SS_ESASTEP("Circuits\Main\Main\Main","Release Variable oCon,oRS",75,75)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",76,76)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class customer_data From base_data",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Data custid Init Value ''",78,78)
SS_ESASTEP("Circuits\Main\Main\Main","Data browsewindow Init Value false",79,79)
SS_ESASTEP("Circuits\Main\Main\Main","Data addnewwindow Init Value false",80,80)
SS_ESASTEP("Circuits\Main\Main\Main","Data editwindow Init Value false",81,81)
SS_ESASTEP("Circuits\Main\Main\Main","Data printwindow Init Value false",82,82)
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
SS_ESASTEP("Circuits\Main\Main\Main","Define Method browse Class customer_data",99,99)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( self:browsewindow = false )",100,100)
SS_ESASTEP("Circuits\Main\Main\Main","self.browsewindow = true",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win_browse ) , Title : 'Customers List (Browse)'",102,106)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",107,115)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'image\back.jpg'",116,117)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",119,119)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",120,124)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Search'",125,126)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ocustomer:search()",127,127)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",128,130)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'Code','Name','Age','Gender','Country','City','Address','Phone','Phone2','Mobile','Mobile2','Company','Job','eMail','WebSite'}",131,131)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action ocustomer:checkdeledit()",132,132)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",133,139)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Add'",140,141)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ocustomer:addnew()",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",143,145)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Edit'",146,147)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ocustomer:editrec()",148,148)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",149,151)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'Delete'",152,153)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ocustomer:delete()",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",155,157)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Close'",158,159)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ocustomer:browseclose()",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",161,163)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name'",164,165)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",166,171)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",172,173)
SS_ESASTEP("Circuits\Main\Main\Main","win_browse.Center ( )",174,174)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = ocustomer.browseloaddata()",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = ocustomer.checkdeledit()",176,176)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",177,179)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",180,180)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",181,181)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method addnew Class customer_data",182,182)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( self:addnewwindow = false )",183,183)
SS_ESASTEP("Circuits\Main\Main\Main","self.addnewwindow = true",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win_addnew ) , Title : 'Add New Customer'",185,189)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",190,198)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'image\back.jpg'",199,200)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",201,201)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name'",202,203)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",204,209)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",211,216)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Age'",217,218)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",219,224)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",225,225)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",226,230)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Gender'",231,232)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",233,238)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",239,239)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",240,244)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Country'",245,246)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",247,252)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",254,258)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'City'",259,260)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",261,266)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text5  )",267,267)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",268,272)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 ) , Caption : 'Address'",273,274)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",275,280)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text6  )",281,281)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",282,286)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7 ) , Caption : 'Phone'",287,288)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",289,294)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text7  )",295,295)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",296,300)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl8 ) , Caption : 'Phone2'",301,302)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",303,308)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text8  )",309,309)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",310,314)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl9 ) , Caption : 'Mobile'",315,316)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",317,322)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text9  )",323,323)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",324,328)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl10 ) , Caption : 'Mobile2'",329,330)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",331,336)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text10  )",337,337)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",338,342)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl11 ) , Caption : 'Company'",343,344)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",345,350)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text11  )",351,351)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",352,356)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl12 ) , Caption : 'Job'",357,358)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",359,364)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text12  )",365,365)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",366,370)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl13 ) , Caption : 'Email'",371,372)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",373,378)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text13  )",379,379)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",380,384)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl14 ) , Caption : 'WebSite'",385,386)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",387,392)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text14  )",393,393)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",394,398)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Save'",399,400)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ocustomer:addnewsave()",401,401)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",402,404)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Cancel'",405,406)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ocustomer:addnewclose()",407,407)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",408,410)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",411,412)
SS_ESASTEP("Circuits\Main\Main\Main","win_addnew.Center ( )",413,413)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",414,416)
SS_ESASTEP("Circuits\Main\Main\Main","self.addnewwindow = false",417,417)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",418,418)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",419,419)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method addnewclose Class customer_data",420,420)
SS_ESASTEP("Circuits\Main\Main\Main","self.addnewwindow = false",421,421)
SS_ESASTEP("Circuits\Main\Main\Main","win_addnew.Release ( )",422,422)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",423,423)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method addnewsave Class customer_data",424,424)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = ocustomer.connect()",425,425)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from Customers'",426,428)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Add New Record",429,429)
SS_ESASTEP("Circuits\Main\Main\Main","vName = win_addnew.text1.Value",430,430)
SS_ESASTEP("Circuits\Main\Main\Main","vAge = win_addnew.text2.Value",431,431)
SS_ESASTEP("Circuits\Main\Main\Main","vGender = win_addnew.text3.Value",432,432)
SS_ESASTEP("Circuits\Main\Main\Main","vCountry = win_addnew.text4.Value",433,433)
SS_ESASTEP("Circuits\Main\Main\Main","vCity = win_addnew.text5.Value",434,434)
SS_ESASTEP("Circuits\Main\Main\Main","vAddress = win_addnew.text6.Value",435,435)
SS_ESASTEP("Circuits\Main\Main\Main","vPhone = win_addnew.text7.Value",436,436)
SS_ESASTEP("Circuits\Main\Main\Main","vPhone2 = win_addnew.text8.Value",437,437)
SS_ESASTEP("Circuits\Main\Main\Main","vMobile = win_addnew.text9.Value",438,438)
SS_ESASTEP("Circuits\Main\Main\Main","vMobile2 = win_addnew.text10.Value",439,439)
SS_ESASTEP("Circuits\Main\Main\Main","vCompany = win_addnew.text11.Value",440,440)
SS_ESASTEP("Circuits\Main\Main\Main","vJob = win_addnew.text12.Value",441,441)
SS_ESASTEP("Circuits\Main\Main\Main","vEmail = win_addnew.text13.Value",442,442)
SS_ESASTEP("Circuits\Main\Main\Main","vWebSite = win_addnew.text14.Value",443,443)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('name') Value To (vName)",444,444)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('age') Value To (vAge)",445,445)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Gender') Value To (vGender)",446,446)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Country') Value To (vCountry)",447,447)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('City') Value To (vCity)",448,448)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Address') Value To (vAddress)",449,449)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Phone') Value To (vPhone)",450,450)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Phone2') Value To (vPhone2)",451,451)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Mobile') Value To (vMobile)",452,452)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Mobile2') Value To (vMobile2)",453,453)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Company') Value To (vCompany)",454,454)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Job') Value To (vJob)",455,455)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Email') Value To (vEmail)",456,456)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (oRS) Set Field ('Website') Value To (vWebsite)",457,457)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",458,458)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = ocustomer.disconnect()",459,459)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = ocustomer.browseloaddata()",460,460)
SS_ESASTEP("Circuits\Main\Main\Main","win_addnew.Release ( )",461,461)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",462,462)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method browseclose Class customer_data",463,463)
SS_ESASTEP("Circuits\Main\Main\Main","self.browsewindow = false",464,464)
SS_ESASTEP("Circuits\Main\Main\Main","win_browse.Release ( )",465,465)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",466,466)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method checkdeledit Class customer_data",467,467)
SS_ESASTEP("Circuits\Main\Main\Main","vvalue = win_browse.grid1.Value",468,468)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( vvalue == 0 )",469,469)
SS_ESASTEP("Circuits\Main\Main\Main","win_browse.btn3.Enabled := false",470,470)
SS_ESASTEP("Circuits\Main\Main\Main","win_browse.btn4.Enabled := false",471,471)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",472,472)
SS_ESASTEP("Circuits\Main\Main\Main","win_browse.btn3.Enabled := true",473,473)
SS_ESASTEP("Circuits\Main\Main\Main","win_browse.btn4.Enabled := true",474,474)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",475,475)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",476,476)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method delete Class customer_data",477,477)
SS_ESASTEP("Circuits\Main\Main\Main","nvalue = win_browse.grid1.Value",478,478)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nvalue = 0 )",479,479)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please select the record' Title 'Sorry' Type: Message Box",480,480)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",481,481)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",482,482)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Are you sure ?' Title 'Delete Customer Data' Type: Message Yes/No",483,483)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout = true )",484,484)
SS_ESASTEP("Circuits\Main\Main\Main","vcode = win_browse.grid1.cell(nvalue,1)",485,485)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = ocustomer.connect()",486,486)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from Customers where custid =' + vcode",487,489)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",490,490)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Delete Record",491,491)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Update Record",492,492)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = ocustomer.disconnect()",493,493)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = ocustomer.browseloaddata()",494,494)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",495,495)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",496,496)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method browseloaddata Class customer_data",497,497)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( self:browsewindow = true )",498,498)
SS_ESASTEP("Circuits\Main\Main\Main","win_browse.grid1.DeleteAllItems ( )",499,499)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = ocustomer.connect()",500,500)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from Customers'",501,503)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",504,504)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To mymax Step 1)",505,505)
SS_ESASTEP("Circuits\Main\Main\Main","vname = ADODB RecordSet (oRS) Get Field ('name') Value",506,506)
SS_ESASTEP("Circuits\Main\Main\Main","vage = ADODB RecordSet (oRS) Get Field ('age') Value",507,507)
SS_ESASTEP("Circuits\Main\Main\Main","vgender = ADODB RecordSet (oRS) Get Field ('gender') Value",508,508)
SS_ESASTEP("Circuits\Main\Main\Main","vcountry = ADODB RecordSet (oRS) Get Field ('country') Value",509,509)
SS_ESASTEP("Circuits\Main\Main\Main","vcity = ADODB RecordSet (oRS) Get Field ('city') Value",510,510)
SS_ESASTEP("Circuits\Main\Main\Main","vaddress = ADODB RecordSet (oRS) Get Field ('address') Value",511,511)
SS_ESASTEP("Circuits\Main\Main\Main","vphone = ADODB RecordSet (oRS) Get Field ('phone') Value",512,512)
SS_ESASTEP("Circuits\Main\Main\Main","vphone2 = ADODB RecordSet (oRS) Get Field ('phone2') Value",513,513)
SS_ESASTEP("Circuits\Main\Main\Main","vmobile = ADODB RecordSet (oRS) Get Field ('mobile') Value",514,514)
SS_ESASTEP("Circuits\Main\Main\Main","vmobile2 = ADODB RecordSet (oRS) Get Field ('mobile2') Value",515,515)
SS_ESASTEP("Circuits\Main\Main\Main","vcompany = ADODB RecordSet (oRS) Get Field ('company') Value",516,516)
SS_ESASTEP("Circuits\Main\Main\Main","vjob = ADODB RecordSet (oRS) Get Field ('job') Value",517,517)
SS_ESASTEP("Circuits\Main\Main\Main","vemail = ADODB RecordSet (oRS) Get Field ('email') Value",518,518)
SS_ESASTEP("Circuits\Main\Main\Main","vwebsite = ADODB RecordSet (oRS) Get Field ('website') Value",519,519)
SS_ESASTEP("Circuits\Main\Main\Main","vcode = ADODB RecordSet (oRS) Get Field ('custid') Value",520,520)
SS_ESASTEP("Circuits\Main\Main\Main","vcode = CONVERT vcode TO STRING",521,521)
SS_ESASTEP("Circuits\Main\Main\Main","vcode = All Trim vcode",522,522)
SS_ESASTEP("Circuits\Main\Main\Main","win_browse.grid1.AddItem ( {vcode,vname,vage,vgender,vcountry,vcity,vaddress,vphone,vphone2,vmobile,vmobile2,vcompany,vjob,vemail,vwebsite} )",523,523)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",524,524)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",525,525)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = ocustomer.disconnect()",526,526)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",527,527)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",528,528)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method editrec Class customer_data",529,529)
SS_ESASTEP("Circuits\Main\Main\Main","nvalue = win_browse.grid1.Value",530,530)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nvalue = 0 )",531,531)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Please select the record' Title 'Sorry' Type: Message Box",532,532)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",533,533)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",534,534)
SS_ESASTEP("Circuits\Main\Main\Main","vcode = win_browse.grid1.cell(nvalue,1)",535,535)
SS_ESASTEP("Circuits\Main\Main\Main","self.custid = vcode",536,536)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = ocustomer.connect()",537,537)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from Customers where c",538,540)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",541,541)
SS_ESASTEP("Circuits\Main\Main\Main","vname = ADODB RecordSet (oRS) Get Field ('name') Value",542,542)
SS_ESASTEP("Circuits\Main\Main\Main","vage = ADODB RecordSet (oRS) Get Field ('age') Value",543,543)
SS_ESASTEP("Circuits\Main\Main\Main","vgender = ADODB RecordSet (oRS) Get Field ('gender') Value",544,544)
SS_ESASTEP("Circuits\Main\Main\Main","vcountry = ADODB RecordSet (oRS) Get Field ('country') Value",545,545)
SS_ESASTEP("Circuits\Main\Main\Main","vcity = ADODB RecordSet (oRS) Get Field ('city') Value",546,546)
SS_ESASTEP("Circuits\Main\Main\Main","vaddress = ADODB RecordSet (oRS) Get Field ('address') Value",547,547)
SS_ESASTEP("Circuits\Main\Main\Main","vphone = ADODB RecordSet (oRS) Get Field ('phone') Value",548,548)
SS_ESASTEP("Circuits\Main\Main\Main","vphone2 = ADODB RecordSet (oRS) Get Field ('phone2') Value",549,549)
SS_ESASTEP("Circuits\Main\Main\Main","vmobile = ADODB RecordSet (oRS) Get Field ('mobile') Value",550,550)
SS_ESASTEP("Circuits\Main\Main\Main","vmobile2 = ADODB RecordSet (oRS) Get Field ('mobile2') Value",551,551)
SS_ESASTEP("Circuits\Main\Main\Main","vcompany = ADODB RecordSet (oRS) Get Field ('company') Value",552,552)
SS_ESASTEP("Circuits\Main\Main\Main","vjob = ADODB RecordSet (oRS) Get Field ('job') Value",553,553)
SS_ESASTEP("Circuits\Main\Main\Main","vemail = ADODB RecordSet (oRS) Get Field ('email') Value",554,554)
SS_ESASTEP("Circuits\Main\Main\Main","vwebsite = ADODB RecordSet (oRS) Get Field ('website') Value",555,555)
SS_ESASTEP("Circuits\Main\Main\Main","vcode = ADODB RecordSet (oRS) Get Field ('custid') Value",556,556)
SS_ESASTEP("Circuits\Main\Main\Main","vcode = CONVERT vcode TO STRING",557,557)
SS_ESASTEP("Circuits\Main\Main\Main","vcode = All Trim vcode",558,558)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = ocustomer.disconnect()",559,559)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( self:editwindow = false )",560,560)
SS_ESASTEP("Circuits\Main\Main\Main","self.editwindow = true",561,561)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win_edit ) , Title : 'Edit Customer Data'",562,566)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",567,575)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'image\back.jpg'",576,577)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",578,578)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Name'",579,580)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",581,586)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text1  )",587,587)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",588,592)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Age'",593,594)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",595,600)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text2  )",601,601)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",602,606)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Gender'",607,608)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",609,614)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text3  )",615,615)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",616,620)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Country'",621,622)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",623,628)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text4  )",629,629)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",630,634)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'City'",635,636)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",637,642)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text5  )",643,643)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",644,648)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 ) , Caption : 'Address'",649,650)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",651,656)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text6  )",657,657)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",658,662)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7 ) , Caption : 'Phone'",663,664)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",665,670)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text7  )",671,671)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",672,676)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl8 ) , Caption : 'Phone2'",677,678)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",679,684)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text8  )",685,685)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",686,690)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl9 ) , Caption : 'Mobile'",691,692)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",693,698)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text9  )",699,699)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",700,704)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl10 ) , Caption : 'Mobile2'",705,706)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",707,712)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text10  )",713,713)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",714,718)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl11 ) , Caption : 'Company'",719,720)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",721,726)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text11  )",727,727)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",728,732)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl12 ) , Caption : 'Job'",733,734)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",735,740)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text12  )",741,741)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",742,746)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl13 ) , Caption : 'Email'",747,748)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",749,754)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text13  )",755,755)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",756,760)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl14 ) , Caption : 'WebSite'",761,762)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",763,768)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text14  )",769,769)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",770,774)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Save'",775,776)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ocustomer:editsave()",777,777)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",778,780)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Cancel'",781,782)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ocustomer:editclose()",783,783)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",784,786)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",787,788)
SS_ESASTEP("Circuits\Main\Main\Main","win_edit.Center ( )",789,789)
SS_ESASTEP("Circuits\Main\Main\Main","win_edit.text1.Value := vname",790,790)
SS_ESASTEP("Circuits\Main\Main\Main","win_edit.text2.Value := vage",791,791)
SS_ESASTEP("Circuits\Main\Main\Main","win_edit.text3.Value := vgender",792,792)
SS_ESASTEP("Circuits\Main\Main\Main","win_edit.text4.Value := vcountry",793,793)
SS_ESASTEP("Circuits\Main\Main\Main","win_edit.text5.Value := vcity",794,794)
SS_ESASTEP("Circuits\Main\Main\Main","win_edit.text6.Value := vaddress",795,795)
SS_ESASTEP("Circuits\Main\Main\Main","win_edit.text7.Value := vphone",796,796)
SS_ESASTEP("Circuits\Main\Main\Main","win_edit.text8.Value := vphone2",797,797)
SS_ESASTEP("Circuits\Main\Main\Main","win_edit.text9.Value := vmobile",798,798)
SS_ESASTEP("Circuits\Main\Main\Main","win_edit.text10.Value := vmobile2",799,799)
SS_ESASTEP("Circuits\Main\Main\Main","win_edit.text11.Value := vcompany",800,800)
SS_ESASTEP("Circuits\Main\Main\Main","win_edit.text12.Value := vjob",801,801)
SS_ESASTEP("Circuits\Main\Main\Main","win_edit.text13.Value := vemail",802,802)
SS_ESASTEP("Circuits\Main\Main\Main","win_edit.text14.Value := vwebsite",803,803)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",804,806)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",807,807)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",808,808)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method editsave Class customer_data",809,809)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = ocustomer.browseloaddata()",810,810)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = ocustomer.editclose()",811,811)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",812,812)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method editclose Class customer_data",813,813)
SS_ESASTEP("Circuits\Main\Main\Main","self.editwindow = false",814,814)
SS_ESASTEP("Circuits\Main\Main\Main","win_edit.Release ( )",815,815)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",816,816)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method search Class customer_data",817,817)
SS_ESASTEP("Circuits\Main\Main\Main","myvalue = win_browse.text1.Value",818,818)
SS_ESASTEP("Circuits\Main\Main\Main","myvalue = All Trim myvalue",819,819)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = ocustomer.connect()",820,820)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset oRS , Connection oCon , CursorType 1 , SQL Statement 'Select * from Customers where name like '' + myvalue + '%''",821,823)
SS_ESASTEP("Circuits\Main\Main\Main","mymax := ADODB RecordSet (oRS) , Get Records Count",824,824)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( mymax = 0 )",825,825)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'No matches found' Title 'Sorry' Type: Message Box",826,826)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",827,827)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",828,828)
SS_ESASTEP("Circuits\Main\Main\Main","win_browse.grid1.DeleteAllItems ( )",829,829)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto First Record",830,830)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To mymax Step 1)",831,831)
SS_ESASTEP("Circuits\Main\Main\Main","vname = ADODB RecordSet (oRS) Get Field ('name') Value",832,832)
SS_ESASTEP("Circuits\Main\Main\Main","vage = ADODB RecordSet (oRS) Get Field ('age') Value",833,833)
SS_ESASTEP("Circuits\Main\Main\Main","vgender = ADODB RecordSet (oRS) Get Field ('gender') Value",834,834)
SS_ESASTEP("Circuits\Main\Main\Main","vcountry = ADODB RecordSet (oRS) Get Field ('country') Value",835,835)
SS_ESASTEP("Circuits\Main\Main\Main","vcity = ADODB RecordSet (oRS) Get Field ('city') Value",836,836)
SS_ESASTEP("Circuits\Main\Main\Main","vaddress = ADODB RecordSet (oRS) Get Field ('address') Value",837,837)
SS_ESASTEP("Circuits\Main\Main\Main","vphone = ADODB RecordSet (oRS) Get Field ('phone') Value",838,838)
SS_ESASTEP("Circuits\Main\Main\Main","vphone2 = ADODB RecordSet (oRS) Get Field ('phone2') Value",839,839)
SS_ESASTEP("Circuits\Main\Main\Main","vmobile = ADODB RecordSet (oRS) Get Field ('mobile') Value",840,840)
SS_ESASTEP("Circuits\Main\Main\Main","vmobile2 = ADODB RecordSet (oRS) Get Field ('mobile2') Value",841,841)
SS_ESASTEP("Circuits\Main\Main\Main","vcompany = ADODB RecordSet (oRS) Get Field ('company') Value",842,842)
SS_ESASTEP("Circuits\Main\Main\Main","vjob = ADODB RecordSet (oRS) Get Field ('job') Value",843,843)
SS_ESASTEP("Circuits\Main\Main\Main","vemail = ADODB RecordSet (oRS) Get Field ('email') Value",844,844)
SS_ESASTEP("Circuits\Main\Main\Main","vwebsite = ADODB RecordSet (oRS) Get Field ('website') Value",845,845)
SS_ESASTEP("Circuits\Main\Main\Main","vcode = ADODB RecordSet (oRS) Get Field ('custid') Value",846,846)
SS_ESASTEP("Circuits\Main\Main\Main","vcode = CONVERT vcode TO STRING",847,847)
SS_ESASTEP("Circuits\Main\Main\Main","vcode = All Trim vcode",848,848)
SS_ESASTEP("Circuits\Main\Main\Main","win_browse.grid1.AddItem ( {vcode,vname,vage,vgender,vcountry,vcity,vaddress,vphone,vphone2,vmobile,vmobile2,vcompany,vjob,vemail,vwebsite} )",849,849)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet oRS - Goto Next Record",850,850)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",851,851)
SS_ESASTEP("Circuits\Main\Main\Main","myoutput = ocustomer.disconnect()",852,852)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",853,853)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method print Class customer_data",854,854)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( self:printwindow = false )",855,855)
SS_ESASTEP("Circuits\Main\Main\Main","self.printwindow = true",856,856)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win_print ) , Title : 'Print all customers data'",857,861)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",862,870)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'image\back.jpg'",871,872)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",873,873)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Close'",874,875)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ocustomer:printclose()",876,876)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",877,879)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Preview'",880,881)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action ocustomer:preview()",882,882)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",883,885)
SS_ESASTEP("Circuits\Main\Main\Main","Active Control ( oActiveX )",886,887)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",888,889)
SS_ESASTEP("Circuits\Main\Main\Main","win_print.Center ( )",890,890)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",891,893)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",894,894)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",895,895)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method printclose Class customer_data",896,896)
SS_ESASTEP("Circuits\Main\Main\Main","self.printwindow = false",897,897)
SS_ESASTEP("Circuits\Main\Main\Main","win_print.Release ( )",898,898)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",899,899)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method preview Class customer_data",900,900)
SS_ESASTEP("Circuits\Main\Main\Main","StartUpFolder := Get StartUp Folder",901,901)
SS_ESASTEP("Circuits\Main\Main\Main","Crystal Reports 10, Object oActivex, View Report 'Report\Report1.RPT' , Database Location = startupfolder + '\Data\mydata.mdb'",902,911)
Return
*-------------------------------------------------------------------*

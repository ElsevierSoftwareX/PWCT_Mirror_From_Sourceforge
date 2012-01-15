*---------------------------------------------------------------------------*
* Time : 14:24:55    Date : 01/13/2012
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
#include "xhb.ch"
Function CUSTOMERS
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

Resistance R_CUSTOMERS_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CUSTOMERS_18smart1() code
class CustomersDataClass From SystemDatabase
Data cWindowName init "DataWindowName"
Data Title init ""
Data TableName init "Customers"
Data Col1 init ""
Data Col2 init ""
Data Col3 init ""
Data Col4 init ""
Data Col5 init ""
Data lbl1 init ""
Data lbl2 init ""
Data lbl3 init ""
Data lbl4 init ""
Data lbl5 init ""
Data val1 init ""
Data val2 init ""
Data val3 init ""
Data val4 init ""
Data nCountry init 0
Data CountryItems init {}
Data CountryItemsIDs init {}
Method showwindow
Method closewindow
Method SetMode
Method UserInterface2Class
Method Class2ADO
Method ADO2Class
Method Class2UserInterface
Method ClearRecord
Method AutoGotoRecord
Method CheckData
EndClass
Method showwindow Class CustomersDataClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( CustomerDataWindow )
DEFINE WINDOW CustomerDataWindow ;
AT 10 ,10 ;
WIDTH 556 ;
HEIGHT 360 ;
ICON "PWCTICON" ;
TITLE "Customer Data" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {239,239,239}

@ 0 ,-7 LABEL lblTitle ;
VALUE "  Cusomers Data " ;
WIDTH 750 ;
HEIGHT 41 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {157,203,253} ;
FONTCOLOR {0,0,0}
@ 48 ,202 BUTTONEX btnFirst;
CAPTION "|<";
FONTCOLOR {0,0,160};
BACKCOLOR {239,239,239};
ON CLICK self:firstrecord()  ;
WIDTH 46 HEIGHT 34 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 48 ,295 BUTTONEX btnNext;
CAPTION ">>";
FONTCOLOR {0,0,160};
BACKCOLOR {239,239,239};
ON CLICK self:nextrecord()  ;
WIDTH 46 HEIGHT 34 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 48 ,341 BUTTONEX btnLast;
CAPTION ">|";
FONTCOLOR {0,0,160};
BACKCOLOR {239,239,239};
ON CLICK self:lastrecord()  ;
WIDTH 46 HEIGHT 34 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 277 ,460 BUTTONEX btnClose;
CAPTION "Close";
FONTCOLOR {0,0,160};
BACKCOLOR {239,239,239};
ON CLICK self:closewindow()  ;
WIDTH 80 HEIGHT 34 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 48 ,249 BUTTONEX btnPrev;
CAPTION "<< ";
FONTCOLOR {0,0,160};
BACKCOLOR {239,239,239};
ON CLICK self:prevrecord()  ;
WIDTH 46 HEIGHT 34 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 277 ,379 BUTTONEX btnDel;
CAPTION "Delete";
FONTCOLOR {0,0,160};
BACKCOLOR {239,239,239};
ON CLICK self:delrecord()  ;
WIDTH 80 HEIGHT 34 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 277 ,191 BUTTONEX btnsave;
CAPTION "Save";
FONTCOLOR {0,0,160};
ON CLICK self:saverecord()  ;
WIDTH 94 HEIGHT 34 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 275 ,286 BUTTONEX btncancel;
CAPTION "Cancel";
FONTCOLOR {0,0,160};
ON CLICK self:cancelrecord()  ;
WIDTH 93 HEIGHT 36 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 277 ,97 BUTTONEX btnedit;
CAPTION "Edit";
FONTCOLOR {0,0,160};
ON CLICK self:editrecord()  ;
WIDTH 94 HEIGHT 34 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 277 ,3 BUTTONEX btnadd;
CAPTION "Add";
FONTCOLOR {0,0,160};
ON CLICK self:addrecord()  ;
WIDTH 94 HEIGHT 34 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 92 ,113 TEXTBOX text1;
HEIGHT 30 ;
WIDTH 430 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {0,0,128} ;
FONTCOLOR {255,255,255}

@ 128 ,114 TEXTBOX text2;
HEIGHT 30 ;
WIDTH 430 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {0,0,128} ;
FONTCOLOR {255,255,255}

@ 165 ,113 TEXTBOX text3;
HEIGHT 30 ;
WIDTH 180 ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {0,0,128} ;
FONTCOLOR {255,255,255}

myout = self:LoadLookupTable("Country","Country",@self:CountryItems,"ID",@self:CountryItemsIDs)
@ 201 ,112 COMBOBOX combo1;
WIDTH 140 ;
HEIGHT 300;
ITEMS self:CountryItems ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 234 ,111 DATEPICKER dt1;
WIDTH 140 ;
FONT "arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 91 ,9 LABEL lbl1 ;
VALUE "col1" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {239,239,239} ;
FONTCOLOR {0,0,0}
@ 130 ,8 LABEL lbl2 ;
VALUE "col2" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {239,239,239} ;
FONTCOLOR {0,0,0}
@ 169 ,10 LABEL lbl3 ;
VALUE "col3" ;
WIDTH 100 ;
HEIGHT 20 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {239,239,239} ;
FONTCOLOR {0,0,0}
@ 203 ,9 LABEL lbl4 ;
VALUE "col4" ;
WIDTH 74 ;
HEIGHT 29 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {239,239,239} ;
FONTCOLOR {0,0,0}
@ 233 ,9 LABEL lbl5 ;
VALUE "col5" ;
WIDTH 74 ;
HEIGHT 29 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {239,239,239} ;
FONTCOLOR {0,0,0}
END WINDOW

CustomerDataWindow.lblTitle.Value := self:Title
CustomerDataWindow.lbl1.Value := self:lbl1
CustomerDataWindow.lbl2.Value := self:lbl2
CustomerDataWindow.lbl3.Value := self:lbl3
CustomerDataWindow.lbl4.Value := self:lbl4
CustomerDataWindow.lbl5.Value := self:lbl5
myout = self:setmode(2)
myout = self:showrecord()
CustomerDataWindow.Center ( )
ACTIVATE WINDOW CustomerDataWindow
EndIF

Return 0
Method UserInterface2Class Class CustomersDataClass
self:val1 := CustomerDataWindow.text1.Value
self:val2 := CustomerDataWindow.text2.Value
self:val3 := CustomerDataWindow.text3.Value
self:val4 := CustomerDataWindow.dt1.Value
self:val4 = DTOC ( self:val4 )
self:nCountry := CustomerDataWindow.combo1.Value
self:nCountry := self:CountryItemsIDs[self:nCountry]
Return 0
Method Class2ADO Class CustomersDataClass
self:oRS:fields:item(self:Col1):value := self:val1
self:oRS:fields:item(self:Col2):value := self:val2
self:oRS:fields:item(self:Col3):value := self:val3
self:oRS:fields:item(self:Col4):value := self:nCountry
self:oRS:fields:item(self:Col5):value := self:val4
Return 0
Method ADO2Class Class CustomersDataClass
self:val1 := self:oRS:fields:item(self:Col1):value
self:val2 := self:oRS:fields:item(self:Col2):value
self:val3 := self:oRS:fields:item(self:Col3):value
self:val4 := self:oRS:fields:item(self:Col5):value
self:nCountry := self:oRS:fields:item(self:Col4):value
Return 0
Method Class2UserInterface Class CustomersDataClass
CustomerDataWindow.text1.Value := self:val1
CustomerDataWindow.text2.Value := self:val2
CustomerDataWindow.text3.Value := self:val3
CustomerDataWindow.dt1.Value := ctod(self:val4)
self:nCountry = self:LookupIDToIndex(self:nCountry,@self:CountryItemsIDs)
CustomerDataWindow.combo1.Value := self:nCountry
Return 0
Method ClearRecord Class CustomersDataClass
self:val1 := ""
self:val2 := ""
self:val3 := ""
self:val4 := ""
self:nCountry := 0
Return 0
Method setmode(p1) Class CustomersDataClass
IF p1 = 1
CustomerDataWindow.btnfirst.Enabled := false
CustomerDataWindow.btnnext.Enabled := false
CustomerDataWindow.btnprev.Enabled := false
CustomerDataWindow.btnlast.Enabled := false
CustomerDataWindow.btndel.Enabled := false
CustomerDataWindow.btnclose.Enabled := false
CustomerDataWindow.btnsave.Enabled := true
CustomerDataWindow.btncancel.Enabled := true
CustomerDataWindow.btnedit.Enabled := false
CustomerDataWindow.btnadd.Enabled := false
CustomerDataWindow.text1.Enabled := True
CustomerDataWindow.text2.Enabled := True
CustomerDataWindow.text3.Enabled := True
CustomerDataWindow.combo1.Enabled := True
CustomerDataWindow.dt1.Enabled := True
ENDIF
IF p1 = 2
CustomerDataWindow.btnfirst.Enabled := true
CustomerDataWindow.btnnext.Enabled := true
CustomerDataWindow.btnprev.Enabled := true
CustomerDataWindow.btnlast.Enabled := true
CustomerDataWindow.btndel.Enabled := true
CustomerDataWindow.btnclose.Enabled := true
CustomerDataWindow.btnsave.Enabled := false
CustomerDataWindow.btncancel.Enabled := false
CustomerDataWindow.btnedit.Enabled := true
CustomerDataWindow.btnadd.Enabled := true
CustomerDataWindow.text1.Enabled := False
CustomerDataWindow.text2.Enabled := False
CustomerDataWindow.text3.Enabled := False
CustomerDataWindow.combo1.Enabled := False
CustomerDataWindow.dt1.Enabled := False
ENDIF
self:OperationMode := p1
Return 0
Method closewindow Class CustomersDataClass
myout = self:disconnect()
CustomerDataWindow.Release ( )
Return 0
Method AutoGotoRecord Class CustomersDataClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( CustomerDataWindow )
myout = self:showrecord()
CustomerDataWindow.SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method CheckData Class CustomersDataClass
Local myret
self:val1 = ALLTRIM ( self:val1 )
IF self:val1==""
MyOut := MSGBOX("Please Enter Customer Name","Sorry")
myret := False
ENDIF
IF self:nCountry==0
MyOut := MSGBOX("Please select the Country","Sorry")
myret := False
ENDIF
Return myret



End Of Resistance

*-------------------------------------------------------------------*

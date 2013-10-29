*---------------------------------------------------------------------------*
* Time : 21:57:13    Date : 05/02/2013
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


Resistance R_NAHIM_DATA_18smart1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_NAHIM_DATA_18smart1() code
customersopj = customers()
myout = customersopj:showwindow()
procedure cccc()
PLAY WAVE "ENTREE.wav"

return
Class customers
Data ocon init 0
Data oRS init 0
Data cname init ""
Data caddress init ""
Data cphone init ""
Data cprix init ""
Data cdida init ""
Data cNE init ""
Data cQU init ""
Data cSI init ""
Data cPU init ""
Data cTOTAL init ""
Data cLE init ""
Data cMR init ""
Data cRCN init ""
Data cIFN init ""
Data cAIN init ""
Data cNF init ""
Data ladd init False
Data oActivex1 init 0
Method showwindow
Method connect
Method disconnect
Method recordscount
Method showrecords
Method search
Method ado2class
Method class2userinterfase
Method showrecord
Method firstrecord
Method lastrecord
Method nextrecord
Method prevrecord
Method gotorecord
Method clearrecord
Method addrecord
Method setmode
Method cancelrecord
Method useinterfase2class
Method class2ado
Method saverecord
Method editrecord
Method deleterecord
Method clossed
Method red
Method Sum
Method sume
Method ShowReport
Method firstrecordd
Method lastrecordd
Method nextrecordd
Method prevrecordd
Method cv
EndClass
Method showwindow Class customers
myout = self:connect()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 1190 ;
HEIGHT 611 ;
ON RELEASE self:disconnect()  ;
ON INIT cccc()  ;
ICON "PWCTICON" ;
TITLE "”Ã·  Ã«—Ì ·œ«∆‰Ì‰   " ;
MAIN ;
NOMAXIMIZE ;
BACKCOLOR {128,255,255} 

win1.Center ( )
DEFINE TAB Tab1;
AT 10 ,10;
WIDTH 1165;
HEIGHT 556;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
PAGE "”Ã· «·œ«∆‰"
@ 33 ,12 FRAME Frame1;
WIDTH 474 ;
HEIGHT 420 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 34 ,490 FRAME Frame2;
WIDTH 650 ;
HEIGHT 426 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 156 ,501 GRID Grid1;
ON CHANGE self:gotorecord()  ;
WIDTH 542 ;
HEIGHT 231 ;
HEADERS {"·ﬁ» Ê ≈”„  «·œ«∆‰","—ﬁ„ «·Â« › ","‰Ê⁄ «·”·⁄… ","«·„»·€ «·ﬂ·Ì ","«·„»·€ «·»«ﬁÌ "};
WIDTHS {100,150,100,100,100} ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1,1,1,1} ;
FONTCOLOR {0,0,0}
@ 124 ,564 LABEL lbl1 ;
VALUE "«·»ÕÀ »«·≈”„ œ«∆‰ " ;
WIDTH 122 ;
HEIGHT 29 ;
FONT "Arial" SIZE 14  ;
BOLD ;
BACKCOLOR {128,255,255} ;
CLIENTEDGE ;
FONTCOLOR {0,0,0}
@ 124 ,686 TEXTBOX textsearch;
ON CHANGE self:search()  ;
HEIGHT 30 ;
WIDTH 250 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 130 ,299 LABEL lbl2 ;
VALUE "≈”„ Ê·ﬁ»  «·œ«∆‰ " ;
WIDTH 110 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 165 ,296 LABEL lbl3 ;
VALUE "—ﬁ„ Â« › «·œ«∆‰ " ;
WIDTH 110 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 250 ,296 LABEL lbl4 ;
VALUE "«·„»·€ «·ﬂ·Ì" ;
WIDTH 182 ;
HEIGHT 37 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 127 ,24 TEXTBOX textname;
HEIGHT 33 ;
WIDTH 266 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 163 ,22 TEXTBOX textaddress;
HEIGHT 32 ;
WIDTH 268 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 202 ,92 TEXTBOX textphone;
HEIGHT 31 ;
WIDTH 198 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 102 ,1046 BUTTONEX btnFirst;
CAPTION "First ";
PICTURE "Go up.BMP";
VERTICAL ;
UPPERTEXT ;
ON CLICK self:firstrecord()  ;
WIDTH 50 HEIGHT 60 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 33 ,568 BUTTONEX btnNext;
CAPTION "Next ";
PICTURE "Back.BMP";
VERTICAL ;
UPPERTEXT ;
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 60 ;
FONT "Arial" SIZE 12 ;
UNDERLINE ;
TOOLTIP ""
@ 34 ,662 BUTTONEX btnPrev;
CAPTION "Prev";
PICTURE "Forward.BMP";
VERTICAL ;
UPPERTEXT ;
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 60 ;
FONT "Arial" SIZE 12 ;
UNDERLINE ;
TOOLTIP ""
@ 170 ,1047 BUTTONEX btnLast;
CAPTION "Last";
PICTURE "Go down.BMP";
VERTICAL ;
UPPERTEXT ;
ON CLICK self:lastrecord()  ;
WIDTH 50 HEIGHT 60 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 397 ,1010 LABEL lbl6 ;
VALUE "«·≈Ã„«·Ì ·œ«∆‰Ì‰" ;
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BOLD ;
BACKCOLOR {128,255,255} ;
FONTCOLOR {0,0,0}
@ 427 ,1024 LABEL lblrecordscount ;
VALUE " " ;
WIDTH 72 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
BOLD ;
BACKCOLOR {255,255,255} ;
CLIENTEDGE ;
FONTCOLOR {0,0,0}
@ 35 ,210 BUTTONEX btnAdd;
CAPTION "≈Ÿ«›… œ«∆‰ ";
PICTURE "Replace pixels.BMP";
VERTICAL ;
UPPERTEXT ;
ON CLICK self:addrecord()  ;
WIDTH 50 HEIGHT 60 ;
FONT "Arial" SIZE 9 ;
BOLD ;
TOOLTIP ""
@ 37 ,323 BUTTONEX btnSave;
CAPTION "Õ›Ÿ";
PICTURE "Save as.BMP";
VERTICAL ;
UPPERTEXT ;
ON CLICK self:saverecord()  ;
WIDTH 50 HEIGHT 60 ;
FONT "Arial" SIZE 9 ;
BOLD ;
TOOLTIP ""
@ 38 ,406 BUTTONEX btnCancel;
CAPTION " —«Ã⁄";
PICTURE "Close file.BMP";
VERTICAL ;
UPPERTEXT ;
ON CLICK self:cancelrecord()  ;
WIDTH 50 HEIGHT 60 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 35 ,132 BUTTONEX btnEdit;
CAPTION " ⁄œÌ· √œ«∆‰ ";
PICTURE "Pixel editor.BMP";
VERTICAL ;
UPPERTEXT ;
ON CLICK self:editrecord()  ;
WIDTH 50 HEIGHT 59 ;
FONT "Arial" SIZE 9 ;
BOLD ;
TOOLTIP ""
@ 33 ,47 BUTTONEX btnDelete;
CAPTION "Õ–› «·œ«∆‰ ";
PICTURE "Cancel.BMP";
VERTICAL ;
UPPERTEXT ;
ON CLICK self:deleterecord()  ;
WIDTH 50 HEIGHT 60 ;
FONT "Arial" SIZE 9 ;
BOLD ;
TOOLTIP ""
@ 42 ,1051 BUTTONEX btnClose;
CAPTION "Close ";
PICTURE "Erase.BMP";
VERTICAL ;
UPPERTEXT ;
ON CLICK self:clossed()  ;
WIDTH 73 HEIGHT 37 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
DEFINE STATUSBAR 

STATUSITEM "»—‰«„Ã ≈œ«—… „Õ· "

END STATUSBAR

@ 210 ,296 LABEL lblsila ;
VALUE "‰Ê⁄ «·”·⁄… " ;
WIDTH 160 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 324 ,297 LABEL lblbaki ;
VALUE "«·„»·€ «·»«ﬁÌ " ;
WIDTH 174 ;
HEIGHT 35 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 243 ,90 TEXTBOX textkoli;
ON CHANGE self:red()  ;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 321 ,88 TEXTBOX textbqkit;
ON CHANGE self:red()  ;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 124 ,937 BUTTONEX btn10;
CAPTION " ";
PICTURE "Zoom.BMP";
VERTICAL ;
UPPERTEXT ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
DEFINE MAIN MENU
POPUP "File "
MENUITEM "⁄—÷ «· ﬁ—Ì—" Action self:ShowReport
MENUITEM "⁄—÷ «·›« Ê—… " Action fatoura()
MENUITEM "Œ—ÊÃ „‰ «·»—‰«„Ã " Action self:clossed
END POPUP
POPUP "About "
MENUITEM "About" Action ystem()
END POPUP
END MENU
@ 394 ,637 LABEL lbl8 ;
VALUE "Ã‹‹‹‹‹œÊ· »‹‹Ì«‰‹‹‹«  «·‹‹‹‹‹‹‹‹œ«∆‹‹‹‰‹‹Ì‹‹‰ " ;
WIDTH 300 ;
HEIGHT 40 ;
FONT "Arial" SIZE 15  ;
BACKCOLOR {128,255,255} ;
FONTCOLOR {0,0,0}
@ 400 ,48 LABEL lbl9 ;
VALUE "„‹‹‹‹⁄‹‹‹·‹‹‹Ê „‹‹‹«  «·„‹‹‹‹‹”‹‹‹ ‹‹›‹‹‹‹Ì‹‹‹œ " ;
WIDTH 340 ;
HEIGHT 30 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {128,255,255} ;
FONTCOLOR {0,0,0}
@ 90 ,756 BUTTONEX btnSum;
CAPTION "«·„Ã„Ê⁄ „»·€ «·œÌÊ‰ «·»«ﬁÌ…";
ON CLICK Self:Sum()  ;
WIDTH 160 HEIGHT 30 ;
FONT "Arial" SIZE 12 ;
BOLD ;
UNDERLINE ;
TOOLTIP ""
@ 365 ,27 TEXTBOX text6;
HEIGHT 32 ;
WIDTH 381 ;
READONLY ;
FONT "Arial" SIZE 16 ;
BACKCOLOR {0,0,0} ;
FONTCOLOR {255,255,0} 

@ 95 ,560 LABEL lbl10 ;
VALUE " " ;
ON CLICK self:Sum()  ;
WIDTH 184 ;
HEIGHT 23 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {128,255,255} ;
FONTCOLOR {0,128,192}
@ 284 ,89 TEXTBOX text7;
ON CHANGE self:sume()  ;
HEIGHT 30 ;
WIDTH 200 ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 287 ,295 LABEL lbl11 ;
VALUE "ﬁÌ„… «·œ›⁄ ·„Ã„Ê⁄ «·„—«Õ· " ;
WIDTH 172 ;
HEIGHT 26 ;
FONT "Arial" SIZE 14  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 89 ,924 BUTTONEX btn12;
CAPTION "⁄—÷ «· ﬁ—Ì— ";
ON CLICK self:ShowReport()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
BOLD ;
UNDERLINE ;
TOOLTIP ""
END PAGE
PAGE "≈⁄œ«œ ›« Ê—…"
@ 193 ,105 GRID Grid2;
WIDTH 672 ;
HEIGHT 261 ;
HEADERS {"«·—ﬁ„ ","«·ﬂ„Ì… ","‰Ê⁄ «·”·⁄… ","”⁄— «·ÊÕœ… ","«·„Ã„Ê⁄ "};
WIDTHS {50,50,160,100,100} ;
FONT "Arial" SIZE 12 ;
BOLD ;
BACKCOLOR {255,255,255} ;
JUSTIFY {1,1,1,1,1} ;
FONTCOLOR {0,0,0}
@ 60 ,550 LABEL lbl18 ;
VALUE "«·—ﬁ„ ‹‹‹‹‹‹‹‹‹‹" ;
WIDTH 140 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 61 ,246 LABEL lbl19 ;
VALUE "«·ﬂ„Ì… ‹‹‹‹‹‹‹‹‹‹‹‹" ;
WIDTH 140 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 152 ,246 LABEL lbl20 ;
VALUE " ⁄ÌÌ‰ «·”·⁄… ‹‹‹‹‹‹‹‹‹‹‹‹" ;
WIDTH 140 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 109 ,246 LABEL lbl21 ;
VALUE "”⁄— «·ÊÕœ… ‹‹‹‹‹‹‹‹‹‹" ;
WIDTH 140 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 100 ,550 LABEL lbl22 ;
VALUE "«·„Ã„Ê⁄ ﬂ·Ì ‹‹‹‹‹‹‹‹‹ " ;
WIDTH 140 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 78 ,989 LABEL lbl23 ;
VALUE "«·”Ìœ‹‹‹‹‹‹‹‹ " ;
WIDTH 140 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 50 ,988 LABEL lbl24 ;
VALUE "ÌÊ„ ‹‹‹‹‹‹‹‹‹‹‹ " ;
WIDTH 140 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 110 ,988 LABEL lbl25 ;
VALUE "‹‹‹‹‹‹‹‹‹‹‹R.C.N∞  " ;
WIDTH 140 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 142 ,988 LABEL lbl26 ;
VALUE "‹‹‹‹‹‹‹‹‹‹‹I.F.N∞  " ;
WIDTH 140 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 175 ,988 LABEL lbl27 ;
VALUE "‹‹‹‹‹‹‹‹‹‹‹A.I.N∞  " ;
WIDTH 140 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 211 ,988 LABEL lbl28 ;
VALUE "—ﬁ„ «·›« Ê—…‹‹‹‹‹‹‹‹‹‹‹ " ;
WIDTH 140 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 47 ,780 TEXTBOX text8;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 84 ,780 TEXTBOX text9;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 121 ,780 TEXTBOX text10;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 155 ,780 TEXTBOX text11;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 191 ,780 TEXTBOX text12;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 54 ,348 TEXTBOX text13;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 92 ,348 TEXTBOX text14;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 58 ,39 TEXTBOX text15;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 97 ,39 TEXTBOX text16;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 140 ,39 TEXTBOX text17;
HEIGHT 30 ;
WIDTH 200 ;
FONT "arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} 

@ 98 ,1084 BUTTONEX btn50;
CAPTION "First ";
PICTURE "Go up.BMP";
VERTICAL ;
UPPERTEXT ;
ON CLICK self:firstrecordd()  ;
WIDTH 50 HEIGHT 60 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 303 ,40 BUTTONEX btn51;
CAPTION "Next ";
PICTURE "Back.BMP";
VERTICAL ;
UPPERTEXT ;
ON CLICK self:nextrecordd()  ;
WIDTH 60 HEIGHT 60 ;
FONT "Arial" SIZE 12 ;
UNDERLINE ;
TOOLTIP ""
@ 218 ,40 BUTTONEX btn52;
CAPTION "Prev";
PICTURE "Forward.BMP";
VERTICAL ;
UPPERTEXT ;
ON CLICK self:prevrecordd()  ;
WIDTH 60 HEIGHT 60 ;
FONT "Arial" SIZE 12 ;
UNDERLINE ;
TOOLTIP ""
@ 171 ,1087 BUTTONEX btn53;
CAPTION "Last";
PICTURE "Go down.BMP";
VERTICAL ;
UPPERTEXT ;
ON CLICK self:lastrecordd()  ;
WIDTH 50 HEIGHT 60 ;
FONT "Arial" SIZE 12 ;
TOOLTIP ""
@ 287 ,822 BUTTONEX btn54;
CAPTION "≈Ÿ«›… œ«∆‰ ";
PICTURE "Replace pixels.BMP";
VERTICAL ;
UPPERTEXT ;
WIDTH 50 HEIGHT 60 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 297 ,881 BUTTONEX btn55;
CAPTION "Õ›Ÿ";
PICTURE "Save as.BMP";
VERTICAL ;
UPPERTEXT ;
ON CLICK self:cv()  ;
WIDTH 50 HEIGHT 60 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 224 ,822 BUTTONEX btn56;
CAPTION " —«Ã⁄";
PICTURE "Close file.BMP";
VERTICAL ;
UPPERTEXT ;
WIDTH 50 HEIGHT 60 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 350 ,822 BUTTONEX btn57;
CAPTION " ⁄œÌ· √œ«∆‰ ";
PICTURE "Pixel editor.BMP";
VERTICAL ;
UPPERTEXT ;
WIDTH 50 HEIGHT 59 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 411 ,822 BUTTONEX btn58;
CAPTION "Õ–› «·œ«∆‰ ";
PICTURE "Cancel.BMP";
VERTICAL ;
UPPERTEXT ;
WIDTH 50 HEIGHT 60 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 39 ,1059 BUTTONEX btn60;
CAPTION "Close ";
PICTURE "Erase.BMP";
VERTICAL ;
UPPERTEXT ;
WIDTH 73 HEIGHT 37 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 149 ,500 BUTTONEX btn59;
CAPTION "⁄—÷ «·›« Ê—… ";
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
BOLD ;
UNDERLINE ;
TOOLTIP ""
@ 468 ,101 LABEL lbl99 ;
VALUE " " ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {255,255,0} ;
FONTCOLOR {0,0,0}
@ 268 ,968 GRID Grid3;
WIDTH 127 ;
HEIGHT 200 ;
HEADERS {"«·”Ìœ",};
WIDTHS {70,} ;
FONT "arial" SIZE 12 ;
BOLD ;
BACKCOLOR {255,255,255} ;
EDIT INPLACE {} ;
JUSTIFY {1,1,1,1} ;
FONTCOLOR {0,0,0}
END PAGE
END TAB
END WINDOW

myout = self:showrecord()
myout = self:showrecords()
myout = self:setmode(1)
ACTIVATE WINDOW win1
EndIF

Return 0
Method connect Class customers
self:oCon := TOLEAUTO():NEW( "ADODB.Connection" )
self:oCon:open ( 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=sysdata.mdb;Persist Security Info=False;' )
self:oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
self:oRS:CursorType := 1
self:oRS:ActiveConnection := self:oCon
self:oRS:open ( "Select * from customers",self:oCon,3,3 )
Return 0
Method disconnect Class customers
self:oRS:Close()
self:oCon:CLOSE()
Return 0
Method recordscount Class customers
nmax := self:oRS:RecordCount
cmax = STR ( nmax )
cmax = ALLTRIM ( cmax )
win1.lblrecordscount.Value := cmax
Return 0
Method showrecords Class customers
nmax := self:oRS:RecordCount
IF nmax > 0
self:oRS:MOVEFIRST()
FOR x = 1 TO nmax STEP 1
cName := self:oRS:fields:item(alltrim("custName ")):value
cAddress := self:oRS:fields:item(alltrim("custAddress ")):value
cPhone := self:oRS:fields:item(alltrim("custPhone ")):value
cprix := self:oRS:fields:item(alltrim("custprix ")):value
cdida := self:oRS:fields:item(alltrim("custdida ")):value
win1.Grid1.AddItem ( {cName,cAddress,cPhone,cprix,cdida } )
cNE := self:oRS:fields:item(alltrim("CUSTNE ")):value
cQU := self:oRS:fields:item(alltrim("CUSTQU ")):value
cSI := self:oRS:fields:item(alltrim("CUSTSI")):value
cPU := self:oRS:fields:item(alltrim("CUSTPU")):value
cTOTAL := self:oRS:fields:item(alltrim("CUSTTOTAL ")):value
win1.Grid2.AddItem ( {cNE,cQU,cSI,cPU,cTOTAL } )
cmr := self:oRS:fields:item(alltrim("CUSTMR ")):value
win1.Grid3.AddItem ( {cmr,} )
self:oRS:MOVENEXT()
Next
self:oRS:MOVEFIRST()
ENDIF
myout = self:recordscount()
Return 0
Method search Class customers
cname := win1.textsearch.Value
self:oRS:Close()
self:oRS:CursorType := 1
self:oRS:ActiveConnection := self:oCon
self:oRS:open ( "Select * from customers where custname like '" + cname + "%'",self:oCon,3,3 )
win1.Grid1.DeleteAllItems ( )
myout = self:showrecords()
Return 0
Method ado2class Class customers
self:cname := self:oRS:fields:item(alltrim("custname ")):value
self:caddress := self:oRS:fields:item(alltrim("custaddress ")):value
self:cphone := self:oRS:fields:item(alltrim("custphone ")):value
self:cprix := self:oRS:fields:item(alltrim("custprix ")):value
self:cdida := self:oRS:fields:item(alltrim("custdida ")):value
Return 0
Method class2userinterfase Class customers
win1.textname.Value := self:cname
win1.textaddress.Value := self:caddress
win1.textphone.Value := self:cPhone
win1.textkoli.Value := self:cprix
win1.textbqkit.Value := self:cdida
Return 0
Method showrecord Class customers
nmax := self:oRS:RecordCount
IF nmax > 0
myout = self:ado2class()
myout = self:class2userinterfase()
ENDIF
Return 0
Method firstrecord Class customers
self:oRS:MOVEFIRST()
myout = self:showrecord()
Return 0
Method lastrecord Class customers
self:oRS:MOVELAST()
myout = self:showrecord()
Return 0
Method nextrecord Class customers
self:oRS:MOVENEXT()
icheck := self:oRS:EOF()
IF icheck
self:oRS:MOVEPREVIOUS()
MyOut := MSGBOX("‰Â«Ì… «·”Ã· ","⁄›Ê« ")
ELSE
myout = self:showrecord()
ENDIF
Return 0
Method prevrecord Class customers
self:oRS:MOVEPREVIOUS()
icheck := self:oRS:BOF()
IF icheck
self:oRS:MOVENEXT()
MyOut := MSGBOX("»œ«Ì… «·”Ã· ","⁄›Ê« ")
ELSE
myout = self:showrecord()
ENDIF
Return 0
Method gotorecord Class customers
nindex := win1.Grid1.Value
IF nindex > 0
self:oRS:MOVEFIRST()
nindex := nindex -1
IF nindex > 0
FOR x = 1 TO nindex STEP 1
self:oRS:MOVENEXT()
Next
ENDIF
myout = self:showrecord()
ENDIF
Return 0
Method clearrecord Class customers
self:cname := ""
self:caddress := ""
self:cphone := ""
self:cprix := ""
self:cdida := ""
Return 0
Method addrecord Class customers
myout = self:clearrecord()
myout = self:class2userinterfase()
myout = self:setmode(2)
self:ladd := True
Return 0
Method setmode(nmode) Class customers
IF nmode = 1
win1.textname.Enabled := false
win1.textaddress.Enabled := false
win1.textphone.Enabled := false
win1.textkoli.Enabled := false
win1.textbqkit.Enabled := false
win1.btnSave.Enabled := False
win1.btnCancel.Enabled := False
win1.btnFirst.Enabled := True
win1.btnAdd.Enabled := True
win1.btnNext.Enabled := True
win1.btnLast.Enabled := True
win1.btnPrev.Enabled := True
win1.textsearch.Enabled := True
win1.Grid1.Enabled := True
win1.btnEdit.Enabled := True
win1.btnDelete.Enabled := True
ELSEIF nmode = 2
win1.textname.Enabled := True
win1.textaddress.Enabled := True
win1.textphone.Enabled := True
win1.textkoli.Enabled := True
win1.textbqkit.Enabled := True
win1.btnSave.Enabled := True
win1.btnCancel.Enabled := True
win1.btnFirst.Enabled := False
win1.btnAdd.Enabled := False
win1.btnNext.Enabled := False
win1.btnLast.Enabled := False
win1.btnPrev.Enabled := False
win1.textsearch.Enabled := False
win1.Grid1.Enabled := False
win1.btnEdit.Enabled := False
win1.btnDelete.Enabled := False
ENDIF
Return 0
Method cancelrecord Class customers
myout = self:ado2class()
myout = self:class2userinterfase()
myout = self:setmode(1)
self:ladd := False
Return 0
Method useinterfase2class Class customers
self:cname := win1.textname.Value
self:caddress := win1.textaddress.Value
self:cphone := win1.textphone.Value
self:cprix := win1.textkoli.Value
self:cdida := win1.textbqkit.Value
Return 0
Method class2ado Class customers
self:oRS:fields:item(alltrim("custName ")):value := self:cname
self:oRS:fields:item(alltrim("custAddress ")):value := self:cAddress
self:oRS:fields:item(alltrim("custPhone ")):value := self:cPhone
self:oRS:fields:item(alltrim("custprix  ")):value := self:cprix
self:oRS:fields:item(alltrim("custdida ")):value := self:cdida
Return 0
Method saverecord Class customers
IF self:ladd = true
self:ladd := False
self:oRS:ADDNEW()
myout = self:useinterfase2class()
myout = self:class2ado()
self:oRS:UPDATE()
myout = self:setmode(1)
win1.Grid1.DeleteAllItems ( )
myout = self:showrecords()
self:oRS:MOVELAST()
ELSE
myout = self:useinterfase2class()
myout = self:class2ado()
self:oRS:UPDATE()
myout = self:setmode(1)
win1.Grid1.DeleteAllItems ( )
vBM := self:oRS:BookMark
myout = self:showrecords()
self:oRS:BookMark := vBM
ENDIF
Return 0
Method editrecord Class customers
myout = self:setmode(2)
Return 0
Method deleterecord Class customers
Local nmax
nmax := self:oRS:RecordCount
IF nmax > 0
MyOut := MSGYESNO("Â· √‰  „ √ﬂœ „‰ «·Õ–› ø  "," Delete")
IF myout = False
Return 0
ENDIF
self:oRS:DELETE()
self:oRS:UPDATE()
win1.Grid1.DeleteAllItems ( )
myout = self:showrecords()
IF nmax = 1
myout = self:clearrecord()
myout = self:class2userinterfase()
ELSE
myout = self:showrecord()
ENDIF
ELSE
MyOut := MSGBOX("·« ÌÊÃœ ”Ã· ","⁄›Ê« ")
ENDIF
Return 0
Method clossed Class customers
MyOut := MSGYESNO("Â·  —Ìœ «·Œ—ÊÃ „‰ «·»—‰«„Ã  ","  ‰ÊÌÂ")
IF myout = True
win1.Release ( )
ENDIF
Return 0
Method red Class customers
nm1 := win1.textname.Value
nm2 := win1.textbqkit.Value
sm1 := "»«ﬁÌ ·”Ìœ : " + nm1+ nm2
win1.text6.Value := sm1
Return 0
Method Sum Class Customers
nMax := win1.Grid1.ItemCount
nSum := 0
IF nMax > 0
FOR x = 1 TO nMax STEP 1
cValue := win1.Grid1.cell(x,5)
nValue = VAL ( cValue )
nSum := nSum + nValue
Next
ENDIF
cSum = STR ( nSum )
win1.lbl10.Value := cSum
Return 0
Method sume Class customers
mE1 := win1.textkoli.Value
mE2 := win1.text7.Value
nmE1 = VAL ( mE1 )
nmE2 = VAL ( mE2 )
sEm1 := nmE1- nmE2
sEm1 = STR ( sEm1 )
win1.textbqkit.Value := sEm1
Return 0
Method ShowReport Class customers
if !iswindowdefined( win2 )
DEFINE WINDOW  win2 ;
AT 10 ,10 ;
WIDTH 767 ;
HEIGHT 596 ;
ON INIT self:ShowReport()  ;
ICON "PWCTICON" ;
TITLE "«· ﬁ—Ì—  " ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {236,233,216} ;
HELPBUTTON 

self:oActivex1 := TActiveX():New( "Win2", "CrystalReports10.ActiveXReportViewer.1" , -2 , 0 , 759 , 558)
self:oActivex1:Load()
END WINDOW

ACTIVATE WINDOW win2
EndIF

StartUpFolder := GetStartUpFolder()
Public T_myobj,T_myreport
T_myobj := TOLEAUTO():NEW( "CrystalDesignRuntime.Application" )
T_myreport := TOLEAUTO():NEW( "CrystalDesignRuntime.Report" )
T_myreport := T_myobj:openreport ( "Customers.rpt" )
oDB = T_myreport:Database()
ocDBT = oDB:Tables()
oDBT = ocDBT:Item(1)
oDBT:Location = StartupFolder+"\sysdata.mdb"
self:oActivex1:OOLE:reportsource := T_myreport
self:oActivex1:OOLE:viewreport ( )
Return 0
Method firstrecordd Class customers
self:oRS:MOVEFIRST()
myout = self:showrecord()
Return 0
Method lastrecordd Class customers
self:oRS:MOVELAST()
myout = self:showrecord()
Return 0
Method nextrecordd Class customers
self:oRS:MOVENEXT()
icheck := self:oRS:EOF()
IF icheck
self:oRS:MOVEPREVIOUS()
MyOut := MSGBOX("‰Â«Ì… «·”Ã· ","⁄›Ê« ")
ELSE
myout = self:showrecord()
ENDIF
Return 0
Method prevrecordd Class customers
self:oRS:MOVEPREVIOUS()
icheck := self:oRS:BOF()
IF icheck
self:oRS:MOVENEXT()
MyOut := MSGBOX("»œ«Ì… «·”Ã· ","⁄›Ê« ")
ELSE
myout = self:showrecord()
ENDIF
Return 0
Method cv Class customers
MyOut := MSGBOX("„—Õ»« »ﬂ Ì« ﬂ‘‰… Õ„Ìœ "," ")
Return 0
Proc system
Return Nil
Proc ystem()
if !iswindowdefined( win3 )
DEFINE WINDOW  win3 ;
AT 10 ,10 ;
WIDTH 497 ;
HEIGHT 363 ;
ICON "PWCTICON" ;
TITLE " About" ;
CHILD ;
NOMAXIMIZE ;
NOSIZE ;
NOSYSMENU ;
BACKCOLOR {192,192,192} 

@ -6 ,-4 IMAGE image1;
PICTURE "untitled.jpg";
STRETCH ;
WIDTH 508 HEIGHT 102
@ 22 ,198 LABEL lbl12 ;
VALUE "≈⁄œ«œ Ê ’„Ì„  " ;
WIDTH 184 ;
HEIGHT 49 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 124 ,152 LABEL lbl13 ;
VALUE "√ŒÊﬂ„  ⁄»œ «·ﬁ«œ— " ;
WIDTH 199 ;
HEIGHT 42 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {192,192,192} ;
CLIENTEDGE ;
FONTCOLOR {0,0,0}
@ 176 ,279 LABEL lbl14 ;
VALUE "«·Ã“«∆—          " ;
WIDTH 194 ;
HEIGHT 36 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {192,192,192} ;
CLIENTEDGE ;
FONTCOLOR {0,0,0}
@ 230 ,342 LABEL lbl15 ;
VALUE "«·≈Ì„Ì·  " ;
WIDTH 202 ;
HEIGHT 49 ;
FONT "Arial" SIZE 20  ;
BACKCOLOR {192,192,192} ;
CLIENTEDGE ;
FONTCOLOR {0,0,0}
@ 235 ,47 LABEL lbl16 ;
VALUE "NNHIM@YAHOO.FR " ;
WIDTH 238 ;
HEIGHT 35 ;
FONT "Arial" SIZE 18  ;
BACKCOLOR {192,192,192} ;
CLIENTEDGE ;
FONTCOLOR {0,0,0}
@ 285 ,207 BUTTONEX btn13;
CAPTION "Ok ";
ON CLICK nn()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 54 ,157 LABEL lbl17 ;
VALUE "‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹ " ;
WIDTH 204 ;
HEIGHT 21 ;
FONT "Arial" SIZE 16  ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {128,0,64}
END WINDOW

ACTIVATE WINDOW win3
EndIF

Return Nil
Proc nn
win3.Release ( )
Return Nil
Proc fatoura()
MyOut := MSGBOX(" "," ")
Return Nil


End Of Resistance

INIT PROCEDURE Init_NAHIM_DATA
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",51)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Create Object customersopj of Class customers",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","myout = customersopj.showwindow()",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure cccc - Event : INIT",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Play wave 'ENTREE.wav'",4,5)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Define Class customers",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Data ocon Init Value 0",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Data oRS Init Value 0",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Data cname Init Value ''",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Data caddress Init Value ''",11,11)
SS_ESASTEP("Circuits\Main\Main\Main","Data cphone Init Value ''",12,12)
SS_ESASTEP("Circuits\Main\Main\Main","Data cprix Init Value ''",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Data cdida Init Value ''",14,14)
SS_ESASTEP("Circuits\Main\Main\Main","Data cNE Init Value ''",15,15)
SS_ESASTEP("Circuits\Main\Main\Main","Data cQU Init Value ''",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Data cSI Init Value ''",17,17)
SS_ESASTEP("Circuits\Main\Main\Main","Data cPU Init Value ''",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","Data cTOTAL Init Value ''",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Data cLE Init Value ''",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Data cMR Init Value ''",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Data cRCN Init Value ''",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Data cIFN Init Value ''",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Data cAIN Init Value ''",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Data cNF Init Value ''",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Data ladd Init Value False",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","Data oActivex1 Init Value 0",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Method showwindow",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Method connect",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Method disconnect",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","Method recordscount",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","Method showrecords",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Method search",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","Method ado2class",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","Method class2userinterfase",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Method showrecord",36,36)
SS_ESASTEP("Circuits\Main\Main\Main","Method firstrecord",37,37)
SS_ESASTEP("Circuits\Main\Main\Main","Method lastrecord",38,38)
SS_ESASTEP("Circuits\Main\Main\Main","Method nextrecord",39,39)
SS_ESASTEP("Circuits\Main\Main\Main","Method prevrecord",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Method gotorecord",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Method clearrecord",42,42)
SS_ESASTEP("Circuits\Main\Main\Main","Method addrecord",43,43)
SS_ESASTEP("Circuits\Main\Main\Main","Method setmode",44,44)
SS_ESASTEP("Circuits\Main\Main\Main","Method cancelrecord",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","Method useinterfase2class",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","Method class2ado",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Method saverecord",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Method editrecord",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","Method deleterecord",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","Method clossed",51,51)
SS_ESASTEP("Circuits\Main\Main\Main","Method red",52,52)
SS_ESASTEP("Circuits\Main\Main\Main","Method Sum",53,53)
SS_ESASTEP("Circuits\Main\Main\Main","Method sume",54,54)
SS_ESASTEP("Circuits\Main\Main\Main","Method ShowReport",55,55)
SS_ESASTEP("Circuits\Main\Main\Main","Method firstrecordd",56,56)
SS_ESASTEP("Circuits\Main\Main\Main","Method lastrecordd",57,57)
SS_ESASTEP("Circuits\Main\Main\Main","Method nextrecordd",58,58)
SS_ESASTEP("Circuits\Main\Main\Main","Method prevrecordd",59,59)
SS_ESASTEP("Circuits\Main\Main\Main","Method cv",60,60)
SS_ESASTEP("Circuits\Main\Main\Main","End of Class",61,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showwindow Class customers",62,62)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.connect()",63,63)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '”Ã·  Ã«—Ì ·œ«∆‰Ì‰   '",64,68)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON RELEASE : Action self:disconnect",69,69)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action cccc",70,70)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",71,76)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center ( )",77,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Tab ( Tab1 )",78,81)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",82,83)
SS_ESASTEP("Circuits\Main\Main\Main","Page ( '”Ã· «·œ«∆‰' )",84,84)
SS_ESASTEP("Circuits\Main\Main\Main","Define Frame ( Frame1 )",85,92)
SS_ESASTEP("Circuits\Main\Main\Main","Define Frame ( Frame2 )",93,100)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid1 ) , HEADERS : {'·ﬁ» Ê ≈”„  «·œ«∆‰','—ﬁ„ «·Â« › ','‰Ê⁄ «·”·⁄… ','«·„»·€ «·ﬂ·Ì ','«·„»·€ «·»«ﬁÌ '}",101,101)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:gotorecord",102,102)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",103,110)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : '«·»ÕÀ »«·≈”„ œ«∆‰ '",111,112)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",113,119)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textsearch  )",120,120)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:search",121,121)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",122,127)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : '≈”„ Ê·ﬁ»  «·œ«∆‰ '",128,129)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",130,134)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : '—ﬁ„ Â« › «·œ«∆‰ '",135,136)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",137,141)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : '«·„»·€ «·ﬂ·Ì'",142,143)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",144,148)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textname  )",149,149)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",150,155)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textaddress  )",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",157,162)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textphone  )",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",164,169)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnFirst ) , Caption : 'First '",170,174)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:firstrecord",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",176,178)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnNext ) , Caption : 'Next '",179,183)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:nextrecord",184,184)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",185,188)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnPrev ) , Caption : 'Prev'",189,193)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:prevrecord",194,194)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",195,198)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnLast ) , Caption : 'Last'",199,203)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:lastrecord",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",205,207)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 ) , Caption : '«·≈Ã„«·Ì ·œ«∆‰Ì‰'",208,209)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",210,215)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblrecordscount ) , Caption : ' '",216,217)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",218,224)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnAdd ) , Caption : '≈Ÿ«›… œ«∆‰ '",225,229)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:addrecord",230,230)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",231,234)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnSave ) , Caption : 'Õ›Ÿ'",235,239)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:saverecord",240,240)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",241,244)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnCancel ) , Caption : ' —«Ã⁄'",245,249)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:cancelrecord",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",251,253)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnEdit ) , Caption : ' ⁄œÌ· √œ«∆‰ '",254,258)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:editrecord",259,259)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",260,263)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnDelete ) , Caption : 'Õ–› «·œ«∆‰ '",264,268)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:deleterecord",269,269)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",270,273)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnClose ) , Caption : 'Close '",274,278)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:clossed",279,279)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",280,282)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",283,284)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( '»—‰«„Ã ≈œ«—… „Õ· ' )",285,286)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",287,288)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblsila ) , Caption : '‰Ê⁄ «·”·⁄… '",289,290)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",291,295)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lblbaki ) , Caption : '«·„»·€ «·»«ﬁÌ '",296,297)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",298,302)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textkoli  )",303,303)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:red",304,304)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",305,310)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( textbqkit  )",311,311)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:red",312,312)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",313,318)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn10 ) , Caption : ' '",319,323)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",324,326)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",327,327)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'File '",328,328)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '⁄—÷ «· ﬁ—Ì—' )",329,329)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '⁄—÷ «·›« Ê—… ' )",330,330)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Œ—ÊÃ „‰ «·»—‰«„Ã ' )",331,331)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",332,332)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP                  ⁄—Ì› «·ﬁ«∆„… «·„‰»Àﬁ…i   'About '",333,333)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM    ⁄—Ì› «·⁄‰’—i  ( 'About' )",334,334)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP     ‰Â«Ì… «·ﬁ«∆„… «·„‰»Àﬁ…",335,335)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",336,336)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl8 ) , Caption : 'Ã‹‹‹‹‹œÊ· »‹‹Ì«‰‹‹‹«  «·‹‹‹‹‹‹‹‹œ«∆‹‹‹‰‹‹Ì‹‹‰ '",337,338)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",339,343)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl9 ) , Caption : '„‹‹‹‹⁄‹‹‹·‹‹‹Ê „‹‹‹«  «·„‹‹‹‹‹”‹‹‹ ‹‹›‹‹‹‹Ì‹‹‹œ '",344,345)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",346,350)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btnSum ) , Caption : '«·„Ã„Ê⁄ „»·€ «·œÌÊ‰ «·»«ﬁÌ…'",351,352)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action Self:Sum",353,353)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",354,358)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text6  )",359,359)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",360,366)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl10 ) , Caption : ' '",367,368)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:Sum",369,369)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",370,374)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text7  )",375,375)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CHANGE : Action self:sume",376,376)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",377,382)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl11 ) , Caption : 'ﬁÌ„… «·œ›⁄ ·„Ã„Ê⁄ «·„—«Õ· '",383,384)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",385,389)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn12 ) , Caption : '⁄—÷ «· ﬁ—Ì— '",390,391)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:ShowReport",392,392)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",393,397)
SS_ESASTEP("Circuits\Main\Main\Main","End Page",398,398)
SS_ESASTEP("Circuits\Main\Main\Main","Page ( '≈⁄œ«œ ›« Ê—…' )",399,399)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid2 ) , HEADERS : {'«·—ﬁ„ ','«·ﬂ„Ì… ','‰Ê⁄ «·”·⁄… ','”⁄— «·ÊÕœ… ','«·„Ã„Ê⁄ '}",400,400)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",401,409)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl18 ) , Caption : '«·—ﬁ„ ‹‹‹‹‹‹‹‹‹‹'",410,411)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",412,416)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl19 ) , Caption : '«·ﬂ„Ì… ‹‹‹‹‹‹‹‹‹‹‹‹'",417,418)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",419,423)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl20 ) , Caption : ' ⁄ÌÌ‰ «·”·⁄… ‹‹‹‹‹‹‹‹‹‹‹‹'",424,425)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",426,430)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl21 ) , Caption : '”⁄— «·ÊÕœ… ‹‹‹‹‹‹‹‹‹‹'",431,432)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",433,437)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl22 ) , Caption : '«·„Ã„Ê⁄ ﬂ·Ì ‹‹‹‹‹‹‹‹‹ '",438,439)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",440,444)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl23 ) , Caption : '«·”Ìœ‹‹‹‹‹‹‹‹ '",445,446)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",447,451)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl24 ) , Caption : 'ÌÊ„ ‹‹‹‹‹‹‹‹‹‹‹ '",452,453)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",454,458)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl25 ) , Caption : '‹‹‹‹‹‹‹‹‹‹‹R.C.N∞  '",459,460)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",461,465)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl26 ) , Caption : '‹‹‹‹‹‹‹‹‹‹‹I.F.N∞  '",466,467)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",468,472)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl27 ) , Caption : '‹‹‹‹‹‹‹‹‹‹‹A.I.N∞  '",473,474)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",475,479)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl28 ) , Caption : '—ﬁ„ «·›« Ê—…‹‹‹‹‹‹‹‹‹‹‹ '",480,481)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",482,486)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text8  )",487,487)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",488,493)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text9  )",494,494)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",495,500)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text10  )",501,501)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",502,507)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text11  )",508,508)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",509,514)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text12  )",515,515)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",516,521)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text13  )",522,522)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",523,528)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text14  )",529,529)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",530,535)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text15  )",536,536)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",537,542)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text16  )",543,543)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",544,549)
SS_ESASTEP("Circuits\Main\Main\Main","Define TextBox  ( text17  )",550,550)
SS_ESASTEP("Circuits\Main\Main\Main","TextBox Properties",551,556)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn50 ) , Caption : 'First '",557,561)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:firstrecordd",562,562)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",563,565)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn51 ) , Caption : 'Next '",566,570)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:nextrecordd",571,571)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",572,575)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn52 ) , Caption : 'Prev'",576,580)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:prevrecordd",581,581)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",582,585)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn53 ) , Caption : 'Last'",586,590)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:lastrecordd",591,591)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",592,594)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn54 ) , Caption : '≈Ÿ«›… œ«∆‰ '",595,599)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",600,602)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn55 ) , Caption : 'Õ›Ÿ'",603,607)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action self:cv",608,608)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",609,611)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn56 ) , Caption : ' —«Ã⁄'",612,616)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",617,619)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn57 ) , Caption : ' ⁄œÌ· √œ«∆‰ '",620,624)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",625,627)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn58 ) , Caption : 'Õ–› «·œ«∆‰ '",628,632)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",633,635)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn60 ) , Caption : 'Close '",636,640)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",641,643)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn59 ) , Caption : '⁄—÷ «·›« Ê—… '",644,645)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",646,650)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl99 ) , Caption : ' '",651,652)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",653,657)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Grid ( Grid3 ) , HEADERS : {'«·”Ìœ',}",658,658)
SS_ESASTEP("Circuits\Main\Main\Main","Properties",659,668)
SS_ESASTEP("Circuits\Main\Main\Main","End Page",669,669)
SS_ESASTEP("Circuits\Main\Main\Main","End Tab",670,670)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",671,672)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.showrecord()",673,673)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.showrecords()",674,674)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.setmode(1)",675,675)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",676,678)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",679,679)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method connect Class customers",680,680)
SS_ESASTEP("Circuits\Main\Main\Main","self:oCon = Create New ADODB Connection",681,681)
SS_ESASTEP("Circuits\Main\Main\Main","Open ADODB Connection self:oCon , Connection String : 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=sysdata.mdb;Persist Security Info=False;'",682,682)
SS_ESASTEP("Circuits\Main\Main\Main","self:oRS = Create New ADODB RecordSet Object",683,683)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset self:oRS , Connection self:oCon , CursorType 1 , SQL Statement 'Select * from customers'",684,686)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",687,687)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method disconnect Class customers",688,688)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet self:oRS",689,689)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB Connection self:oCon",690,690)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",691,691)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method recordscount Class customers",692,692)
SS_ESASTEP("Circuits\Main\Main\Main","nmax := ADODB RecordSet (self:oRS) , Get Records Count",693,693)
SS_ESASTEP("Circuits\Main\Main\Main","cmax = CONVERT nmax TO STRING",694,694)
SS_ESASTEP("Circuits\Main\Main\Main","cmax = All Trim cmax",695,695)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lblrecordscount.Value := cmax",696,696)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",697,697)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showrecords Class customers",698,698)
SS_ESASTEP("Circuits\Main\Main\Main","nmax := ADODB RecordSet (self:oRS) , Get Records Count",699,699)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nmax > 0 )",700,700)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",701,701)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nmax Step 1)",702,702)
SS_ESASTEP("Circuits\Main\Main\Main","cName = ADODB RecordSet (self:oRS) Get Field ('custName ') Value",703,703)
SS_ESASTEP("Circuits\Main\Main\Main","cAddress = ADODB RecordSet (self:oRS) Get Field ('custAddress ') Value",704,704)
SS_ESASTEP("Circuits\Main\Main\Main","cPhone = ADODB RecordSet (self:oRS) Get Field ('custPhone ') Value",705,705)
SS_ESASTEP("Circuits\Main\Main\Main","cprix = ADODB RecordSet (self:oRS) Get Field ('custprix ') Value",706,706)
SS_ESASTEP("Circuits\Main\Main\Main","cdida = ADODB RecordSet (self:oRS) Get Field ('custdida ') Value",707,707)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.AddItem ( {cName,cAddress,cPhone,cprix,cdida } )",708,708)
SS_ESASTEP("Circuits\Main\Main\Main","cNE = ADODB RecordSet (self:oRS) Get Field ('CUSTNE ') Value",709,709)
SS_ESASTEP("Circuits\Main\Main\Main","cQU = ADODB RecordSet (self:oRS) Get Field ('CUSTQU ') Value",710,710)
SS_ESASTEP("Circuits\Main\Main\Main","cSI = ADODB RecordSet (self:oRS) Get Field ('CUSTSI') Value",711,711)
SS_ESASTEP("Circuits\Main\Main\Main","cPU = ADODB RecordSet (self:oRS) Get Field ('CUSTPU') Value",712,712)
SS_ESASTEP("Circuits\Main\Main\Main","cTOTAL = ADODB RecordSet (self:oRS) Get Field ('CUSTTOTAL ') Value",713,713)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid2.AddItem ( {cNE,cQU,cSI,cPU,cTOTAL } )",714,714)
SS_ESASTEP("Circuits\Main\Main\Main","cmr = ADODB RecordSet (self:oRS) Get Field ('CUSTMR ') Value",715,715)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid3.AddItem ( {cmr,} )",716,716)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",717,717)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",718,718)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",719,719)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",720,720)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.recordscount()",721,721)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",722,722)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method search Class customers",723,723)
SS_ESASTEP("Circuits\Main\Main\Main","cname = win1.textsearch.Value",724,724)
SS_ESASTEP("Circuits\Main\Main\Main","Close ADODB RecordSet self:oRS",725,725)
SS_ESASTEP("Circuits\Main\Main\Main","Open Recordset self:oRS , Connection self:oCon , CursorType 1 , SQL Statement 'Select * from customers where custname like '' + cname + '%''",726,728)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",729,729)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.showrecords()",730,730)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",731,731)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ado2class Class customers",732,732)
SS_ESASTEP("Circuits\Main\Main\Main","self:cname = ADODB RecordSet (self:oRS) Get Field ('custname ') Value",733,733)
SS_ESASTEP("Circuits\Main\Main\Main","self:caddress = ADODB RecordSet (self:oRS) Get Field ('custaddress ') Value",734,734)
SS_ESASTEP("Circuits\Main\Main\Main","self:cphone = ADODB RecordSet (self:oRS) Get Field ('custphone ') Value",735,735)
SS_ESASTEP("Circuits\Main\Main\Main","self:cprix = ADODB RecordSet (self:oRS) Get Field ('custprix ') Value",736,736)
SS_ESASTEP("Circuits\Main\Main\Main","self:cdida = ADODB RecordSet (self:oRS) Get Field ('custdida ') Value",737,737)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",738,738)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method class2userinterfase Class customers",739,739)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textname.Value := self:cname",740,740)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textaddress.Value := self:caddress",741,741)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textphone.Value := self:cPhone",742,742)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textkoli.Value := self:cprix",743,743)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textbqkit.Value := self:cdida",744,744)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",745,745)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method showrecord Class customers",746,746)
SS_ESASTEP("Circuits\Main\Main\Main","nmax := ADODB RecordSet (self:oRS) , Get Records Count",747,747)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nmax > 0 )",748,748)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ado2class()",749,749)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.class2userinterfase()",750,750)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",751,751)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",752,752)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method firstrecord Class customers",753,753)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",754,754)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.showrecord()",755,755)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",756,756)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method lastrecord Class customers",757,757)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Last Record",758,758)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.showrecord()",759,759)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",760,760)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method nextrecord Class customers",761,761)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",762,762)
SS_ESASTEP("Circuits\Main\Main\Main","icheck = ADODB RecordSet self:oRS , Check EOF",763,763)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( icheck )",764,764)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Previous Record",765,765)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '‰Â«Ì… «·”Ã· ' Title '⁄›Ê« ' Type: Message Box",766,766)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",767,767)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.showrecord()",768,768)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",769,769)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",770,770)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method prevrecord Class customers",771,771)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Previous Record",772,772)
SS_ESASTEP("Circuits\Main\Main\Main","icheck = ADODB RecordSet self:oRS , Check BOF",773,773)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( icheck )",774,774)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",775,775)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '»œ«Ì… «·”Ã· ' Title '⁄›Ê« ' Type: Message Box",776,776)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",777,777)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.showrecord()",778,778)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",779,779)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",780,780)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method gotorecord Class customers",781,781)
SS_ESASTEP("Circuits\Main\Main\Main","nindex = win1.Grid1.Value",782,782)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nindex > 0 )",783,783)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",784,784)
SS_ESASTEP("Circuits\Main\Main\Main","nindex = nindex -1",785,785)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nindex > 0 )",786,786)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nindex Step 1)",787,787)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",788,788)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",789,789)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",790,790)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.showrecord()",791,791)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",792,792)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",793,793)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method clearrecord Class customers",794,794)
SS_ESASTEP("Circuits\Main\Main\Main","self.cname = ''",795,795)
SS_ESASTEP("Circuits\Main\Main\Main","self.caddress = ''",796,796)
SS_ESASTEP("Circuits\Main\Main\Main","self.cphone = ''",797,797)
SS_ESASTEP("Circuits\Main\Main\Main","self.cprix = ''",798,798)
SS_ESASTEP("Circuits\Main\Main\Main","self.cdida = ''",799,799)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",800,800)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method addrecord Class customers",801,801)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.clearrecord()",802,802)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.class2userinterfase()",803,803)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.setmode(2)",804,804)
SS_ESASTEP("Circuits\Main\Main\Main","self.ladd = True",805,805)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",806,806)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method setmode(nmode) Class customers",807,807)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nmode = 1 )",808,808)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textname.Enabled := false",809,809)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textaddress.Enabled := false",810,810)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textphone.Enabled := false",811,811)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textkoli.Enabled := false",812,812)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textbqkit.Enabled := false",813,813)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnSave.Enabled := False",814,814)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnCancel.Enabled := False",815,815)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFirst.Enabled := True",816,816)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnAdd.Enabled := True",817,817)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := True",818,818)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnLast.Enabled := True",819,819)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnPrev.Enabled := True",820,820)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textsearch.Enabled := True",821,821)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.Enabled := True",822,822)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnEdit.Enabled := True",823,823)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnDelete.Enabled := True",824,824)
SS_ESASTEP("Circuits\Main\Main\Main","ELSEIF ( nmode = 2 )",825,825)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textname.Enabled := True",826,826)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textaddress.Enabled := True",827,827)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textphone.Enabled := True",828,828)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textkoli.Enabled := True",829,829)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textbqkit.Enabled := True",830,830)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnSave.Enabled := True",831,831)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnCancel.Enabled := True",832,832)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnFirst.Enabled := False",833,833)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnAdd.Enabled := False",834,834)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnNext.Enabled := False",835,835)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnLast.Enabled := False",836,836)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnPrev.Enabled := False",837,837)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textsearch.Enabled := False",838,838)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.Enabled := False",839,839)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnEdit.Enabled := False",840,840)
SS_ESASTEP("Circuits\Main\Main\Main","win1.btnDelete.Enabled := False",841,841)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",842,842)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",843,843)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method cancelrecord Class customers",844,844)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.ado2class()",845,845)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.class2userinterfase()",846,846)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.setmode(1)",847,847)
SS_ESASTEP("Circuits\Main\Main\Main","self.ladd = False",848,848)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",849,849)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method useinterfase2class Class customers",850,850)
SS_ESASTEP("Circuits\Main\Main\Main","self:cname = win1.textname.Value",851,851)
SS_ESASTEP("Circuits\Main\Main\Main","self:caddress = win1.textaddress.Value",852,852)
SS_ESASTEP("Circuits\Main\Main\Main","self:cphone = win1.textphone.Value",853,853)
SS_ESASTEP("Circuits\Main\Main\Main","self:cprix = win1.textkoli.Value",854,854)
SS_ESASTEP("Circuits\Main\Main\Main","self:cdida = win1.textbqkit.Value",855,855)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",856,856)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method class2ado Class customers",857,857)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (self:oRS) Set Field ('custName ') Value To (self:cname)",858,858)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (self:oRS) Set Field ('custAddress ') Value To (self:cAddress)",859,859)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (self:oRS) Set Field ('custPhone ') Value To (self:cPhone)",860,860)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (self:oRS) Set Field ('custprix  ') Value To (self:cprix)",861,861)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet (self:oRS) Set Field ('custdida ') Value To (self:cdida)",862,862)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",863,863)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method saverecord Class customers",864,864)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( self:ladd = true )",865,865)
SS_ESASTEP("Circuits\Main\Main\Main","self.ladd = False",866,866)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Add New Record",867,867)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.useinterfase2class()",868,868)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.class2ado()",869,869)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Update Record",870,870)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.setmode(1)",871,871)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",872,872)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.showrecords()",873,873)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Last Record",874,874)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",875,875)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.useinterfase2class()",876,876)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.class2ado()",877,877)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Update Record",878,878)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.setmode(1)",879,879)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",880,880)
SS_ESASTEP("Circuits\Main\Main\Main","vBM = ADODB RecordSet self:oRS, Get BookMark",881,881)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.showrecords()",882,882)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS, Set BookMark = vBM",883,883)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",884,884)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",885,885)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method editrecord Class customers",886,886)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.setmode(2)",887,887)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",888,888)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method deleterecord Class customers",889,889)
SS_ESASTEP("Circuits\Main\Main\Main","Local nmax",890,890)
SS_ESASTEP("Circuits\Main\Main\Main","nmax := ADODB RecordSet (self:oRS) , Get Records Count",891,891)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nmax > 0 )",892,892)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Â· √‰  „ √ﬂœ „‰ «·Õ–› ø  ' Title ' Delete' Type: Message Yes/No",893,893)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout = False )",894,894)
SS_ESASTEP("Circuits\Main\Main\Main","Return 0",895,895)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",896,896)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Delete Record",897,897)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Update Record",898,898)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Grid1.DeleteAllItems ( )",899,899)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.showrecords()",900,900)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nmax = 1 )",901,901)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.clearrecord()",902,902)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.class2userinterfase()",903,903)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",904,904)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.showrecord()",905,905)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",906,906)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",907,907)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '·« ÌÊÃœ ”Ã· ' Title '⁄›Ê« ' Type: Message Box",908,908)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",909,909)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",910,910)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method clossed Class customers",911,911)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message 'Â·  —Ìœ «·Œ—ÊÃ „‰ «·»—‰«„Ã  ' Title '  ‰ÊÌÂ' Type: Message Yes/No",912,912)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( myout = True )",913,913)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",914,914)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",915,915)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",916,916)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method red Class customers",917,917)
SS_ESASTEP("Circuits\Main\Main\Main","nm1 = win1.textname.Value",918,918)
SS_ESASTEP("Circuits\Main\Main\Main","nm2 = win1.textbqkit.Value",919,919)
SS_ESASTEP("Circuits\Main\Main\Main","sm1 = '»«ﬁÌ ·”Ìœ : ' + nm1+ nm2",920,920)
SS_ESASTEP("Circuits\Main\Main\Main","win1.text6.Value := sm1",921,921)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",922,922)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method Sum Class Customers",923,923)
SS_ESASTEP("Circuits\Main\Main\Main","nMax = win1.Grid1.ItemCount",924,924)
SS_ESASTEP("Circuits\Main\Main\Main","nSum = 0",925,925)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( nMax > 0 )",926,926)
SS_ESASTEP("Circuits\Main\Main\Main","FOR LOOP ( From x = 1 To nMax Step 1)",927,927)
SS_ESASTEP("Circuits\Main\Main\Main","cValue = win1.Grid1.cell(x,5)",928,928)
SS_ESASTEP("Circuits\Main\Main\Main","nValue = CONVERT cValue TO Numeric",929,929)
SS_ESASTEP("Circuits\Main\Main\Main","nSum = nSum + nValue",930,930)
SS_ESASTEP("Circuits\Main\Main\Main","End of For Loop",931,931)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",932,932)
SS_ESASTEP("Circuits\Main\Main\Main","cSum = CONVERT nSum TO STRING",933,933)
SS_ESASTEP("Circuits\Main\Main\Main","win1.lbl10.Value := cSum",934,934)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",935,935)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method sume Class customers",936,936)
SS_ESASTEP("Circuits\Main\Main\Main","mE1 = win1.textkoli.Value",937,937)
SS_ESASTEP("Circuits\Main\Main\Main","mE2 = win1.text7.Value",938,938)
SS_ESASTEP("Circuits\Main\Main\Main","nmE1 = CONVERT mE1 TO Numeric",939,939)
SS_ESASTEP("Circuits\Main\Main\Main","nmE2 = CONVERT mE2 TO Numeric",940,940)
SS_ESASTEP("Circuits\Main\Main\Main","sEm1 = nmE1- nmE2",941,941)
SS_ESASTEP("Circuits\Main\Main\Main","sEm1 = CONVERT sEm1 TO STRING",942,942)
SS_ESASTEP("Circuits\Main\Main\Main","win1.textbqkit.Value := sEm1",943,943)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",944,944)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method ShowReport Class customers",945,945)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window                  ⁄—Ì› ‰«›–… ÃœÌœ… ( win2 ) ,     «·⁄‰Ê«‰ Title: '«· ﬁ—Ì—  '",946,950)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action self:ShowReport",951,951)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties       Œ’«∆’ «·‰«›–…",952,959)
SS_ESASTEP("Circuits\Main\Main\Main","Active Control ( self:oActivex1 )",960,961)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window             ‰Â«Ì… «·‰«›–…",962,963)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window              ‰‘Ìÿ (Ê ›⁄Ì·) «·‰«›–…",964,966)
SS_ESASTEP("Circuits\Main\Main\Main","StartUpFolder := Get StartUp Folder",967,967)
SS_ESASTEP("Circuits\Main\Main\Main","Crystal Reports 10, Object self:oActivex1, View Report 'Customers.rpt' , Database Location = StartupFolder+'\sysdata.mdb'",968,977)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",978,978)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method firstrecordd Class customers",979,979)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto First Record",980,980)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.showrecord()",981,981)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",982,982)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method lastrecordd Class customers",983,983)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Last Record",984,984)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.showrecord()",985,985)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",986,986)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method nextrecordd Class customers",987,987)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",988,988)
SS_ESASTEP("Circuits\Main\Main\Main","icheck = ADODB RecordSet self:oRS , Check EOF",989,989)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( icheck )",990,990)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Previous Record",991,991)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '‰Â«Ì… «·”Ã· ' Title '⁄›Ê« ' Type: Message Box",992,992)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",993,993)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.showrecord()",994,994)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",995,995)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",996,996)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method prevrecordd Class customers",997,997)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Previous Record",998,998)
SS_ESASTEP("Circuits\Main\Main\Main","icheck = ADODB RecordSet self:oRS , Check BOF",999,999)
SS_ESASTEP("Circuits\Main\Main\Main","IF ( icheck )",1000,1000)
SS_ESASTEP("Circuits\Main\Main\Main","ADODB RecordSet self:oRS - Goto Next Record",1001,1001)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '»œ«Ì… «·”Ã· ' Title '⁄›Ê« ' Type: Message Box",1002,1002)
SS_ESASTEP("Circuits\Main\Main\Main","ELSE",1003,1003)
SS_ESASTEP("Circuits\Main\Main\Main","myout = self.showrecord()",1004,1004)
SS_ESASTEP("Circuits\Main\Main\Main","END OF IF STATEMENT",1005,1005)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",1006,1006)
SS_ESASTEP("Circuits\Main\Main\Main","Define Method cv Class customers",1007,1007)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message '„—Õ»« »ﬂ Ì« ﬂ‘‰… Õ„Ìœ ' Title ' ' Type: Message Box",1008,1008)
SS_ESASTEP("Circuits\Main\Main\Main","End of Method (Return 0)",1009,1009)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure system",1010,1010)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",1011,1011)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure ystem()",1012,1012)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window                  ⁄—Ì› ‰«›–… ÃœÌœ… ( win3 ) ,     «·⁄‰Ê«‰ Title: ' About'",1013,1017)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties       Œ’«∆’ «·‰«›–…",1018,1025)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image                ⁄—Ì› «·’Ê—… «·ÃÌœ… ( image1 ) ,    «·’Ê—… Image : 'untitled.jpg'",1026,1027)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties          Œ’«∆’ «·’Ê—…",1028,1029)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label                        ⁄—Ì› „—»⁄ «· ”„Ì… ( lbl12 ) ,   «·⁄‰Ê«‰ Caption : '≈⁄œ«œ Ê ’„Ì„  '",1030,1031)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties   Œ’«∆’ „—»⁄ «· ”„Ì…",1032,1036)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl13 ) , Caption : '√ŒÊﬂ„  ⁄»œ «·ﬁ«œ— '",1037,1038)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",1039,1044)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label                        ⁄—Ì› „—»⁄ «· ”„Ì… ( lbl14 ) ,   «·⁄‰Ê«‰ Caption : '«·Ã“«∆—          '",1045,1046)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties   Œ’«∆’ „—»⁄ «· ”„Ì…",1047,1052)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label                        ⁄—Ì› „—»⁄ «· ”„Ì… ( lbl15 ) ,   «·⁄‰Ê«‰ Caption : '«·≈Ì„Ì·  '",1053,1054)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties   Œ’«∆’ „—»⁄ «· ”„Ì…",1055,1060)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label                        ⁄—Ì› „—»⁄ «· ”„Ì… ( lbl16 ) ,   «·⁄‰Ê«‰ Caption : 'NNHIM@YAHOO.FR '",1061,1062)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties   Œ’«∆’ „—»⁄ «· ”„Ì…",1063,1068)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button                ⁄—Ì› “— ÃœÌœ ( btn13 ) ,     «·⁄‰Ê«‰ Caption : 'Ok '",1069,1070)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action nn",1071,1071)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties    Œ’«∆’ «·“—",1072,1074)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label                        ⁄—Ì› „—»⁄ «· ”„Ì… ( lbl17 ) ,   «·⁄‰Ê«‰ Caption : '‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹ '",1075,1076)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties   Œ’«∆’ „—»⁄ «· ”„Ì…",1077,1081)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window             ‰Â«Ì… «·‰«›–…",1082,1083)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window              ‰‘Ìÿ (Ê ›⁄Ì·) «·‰«›–…",1084,1086)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",1087,1087)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure nn",1088,1088)
SS_ESASTEP("Circuits\Main\Main\Main","win3.Release ( )",1089,1089)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",1090,1090)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure fatoura()",1091,1091)
SS_ESASTEP("Circuits\Main\Main\Main","Show Message             ⁄—÷ «·—”«·…i  ' '      Title  «·⁄‰Ê«‰i  ' '    Type  «·‰Ê⁄i : Message Box",1092,1092)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",1093,1093)
Return
*-------------------------------------------------------------------*

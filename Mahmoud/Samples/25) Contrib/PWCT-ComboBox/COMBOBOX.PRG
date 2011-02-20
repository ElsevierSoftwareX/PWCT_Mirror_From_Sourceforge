*---------------------------------------------------------------------------*
* Time : 14:29:14    Date : 02/20/2011
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


Resistance R_COMBOBOX_15speed1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_COMBOBOX_15speed1() code
set date japan
set cent on


Set MenuStyle EXTENDED
Set Procedure to "DataBase.PRG"
Set Procedure to "reportparent.PRG"
Set Procedure to "AddNewCompany.PRG"
Set Procedure to "AddCountryR.PRG"
Set Procedure to "AddCurrencyR.PRG"
Set Procedure to "SendRemittances.PRG"
AddNewCompanyObject = AddNewCompanyClass()
AddCountryRObject = AddCountryRClass()
AddCurrencyRObject = AddCurrencyRClass()
SendRemittancesObject = SendRemittancesClass()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 0 ,0 ;
WIDTH 897 ;
HEIGHT 351 ;
ICON "PWCTICON" ;
TITLE "Acounts Managment Program" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
CURSOR "cur/cur.ani" ;
BACKCOLOR {238,233,216} 

win1.Center ( )
DEFINE STATUSBAR ;
FONT "arial" SIZE 10 

STATUSITEM "This Program Is Designed By Using Mahmoud Programing Language...PWCT"

KEYBOARD;
WIDTH 80 

CLOCK;
WIDTH 80

DATE;
WIDTH 120 

END STATUSBAR

DEFINE MAIN MENU
POPUP "File"
MENUITEM "Close" Action closesystem()  IMAGE "images\close.bmp"
END POPUP
END MENU
@ 163 ,341 BUTTONEX btnExit;
CAPTION "Exit";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
PICTURE "images\Close.BMP";
ON CLICK closesystem()  ;
WIDTH 224 HEIGHT 42 ;
FONT "Arial" SIZE 14 ;
DEFAULT ;
NOXPSTYLE ;
TOOLTIP ""
@ 108 ,74 BUTTONEX btnAddNewCompany;
PICTURE "images\AddNewCompany.BMP";
VERTICAL ;
UPPERTEXT ;
ON CLICK AddNewCompanyObject:ShowWindow()  ;
WIDTH 224 HEIGHT 42 ;
FONT "Arial" SIZE 12 ;
DEFAULT ;
NOXPSTYLE ;
TOOLTIP ""
@ 163 ,600 BUTTONEX btnAddCountryR;
PICTURE "images\AddCountryofResidence.BMP";
VERTICAL ;
UPPERTEXT ;
ON CLICK AddCountryRObject:ShowWindow()  ;
WIDTH 223 HEIGHT 42 ;
FONT "arial" SIZE 12 ;
DEFAULT ;
NOXPSTYLE ;
TOOLTIP ""
@ 163 ,74 BUTTONEX btnAddCurrencyR;
PICTURE "images\AddCurrencyofResidence.BMP";
VERTICAL ;
UPPERTEXT ;
ON CLICK AddCurrencyRObject:ShowWindow()  ;
WIDTH 224 HEIGHT 42 ;
FONT "arial" SIZE 12 ;
DEFAULT ;
NOXPSTYLE ;
TOOLTIP ""
@ 108 ,599 BUTTONEX btnSendRemittances;
PICTURE "images\SendRemittances.BMP";
VERTICAL ;
UPPERTEXT ;
ON CLICK SendRemittancesObject:ShowWindow()  ;
WIDTH 224 HEIGHT 42 ;
FONT "Arial" SIZE 12 ;
DEFAULT ;
NOXPSTYLE ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win1
EndIF

Proc closesystem
win1.Release ( )


End Of Resistance

INIT PROCEDURE Init_COMBOBOX
START DOUBLES
Return
*-------------------------------------------------------------------*

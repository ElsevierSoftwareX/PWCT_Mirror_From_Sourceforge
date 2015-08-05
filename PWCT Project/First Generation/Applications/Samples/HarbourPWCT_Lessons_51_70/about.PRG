*---------------------------------------------------------------------------*
* Time : 05:33:31    Date : 07/21/2015
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2014 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2015.04.28
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
*---------------------------------------------------------------------------*
#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
Function loadabout
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

Resistance R_about_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_about_19art1() code
Class AboutClass
Data cWindowName init "AboutWindow"
Method showwindow
Method closewindow
EndClass
Method showwindow Class AboutClass
if !iswindowdefined( &(self:cWindowName) )
DEFINE WINDOW &(self:cWindowName) ;
AT 10 ,10 ;
WIDTH 605 ;
HEIGHT 489 ;
ICON "PWCTICON" ;
TITLE "Welcome" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255} 

@ 396 ,495 BUTTONEX btnClose;
CAPTION "Close";
ON CLICK self:closewindow()  ;
WIDTH 76 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 308,348 HYPERLINK HyperFB;
VALUE "Facebook" ;
ADDRESS "http://www.facebook.com/doublesvsoop";
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial Rounded MT Bold" ;
SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
HANDCURSOR 

@ 307,142 HYPERLINK HyperYT;
VALUE "Youtube" ;
ADDRESS "https://www.youtube.com/channel/UCcpsCDgB5B4260ddjoe2BtQ";
WIDTH 86 ;
HEIGHT 31 ;
FONT "Arial Rounded MT Bold" ;
SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
HANDCURSOR 

@ 189 ,348 IMAGE imagefb;
PICTURE "IMAGES\FB.PNG";
STRETCH ;
WIDTH 100 HEIGHT 100
@ 189 ,131 IMAGE imageYT;
PICTURE "IMAGES\YT.PNG";
STRETCH ;
WIDTH 100 HEIGHT 100
@ 24 ,247 IMAGE imageSITE;
PICTURE "IMAGES\WEBSITE.PNG";
STRETCH ;
WIDTH 100 HEIGHT 100
@ 140,255 HYPERLINK HyperSITE;
VALUE " Website" ;
ADDRESS "http://doublesvsoop.sourceforge.net/giftphp/main.htm";
WIDTH 100 ;
HEIGHT 30 ;
FONT "Arial Rounded MT Bold" ;
SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0} ;
HANDCURSOR 

END WINDOW

&(self:cWindowName).Center ( )
ACTIVATE WINDOW &(self:cWindowName)
EndIF

Return 0
Method closewindow Class AboutClass
&(self:cWindowName).Release ( )
Return 0


End Of Resistance

*-------------------------------------------------------------------*

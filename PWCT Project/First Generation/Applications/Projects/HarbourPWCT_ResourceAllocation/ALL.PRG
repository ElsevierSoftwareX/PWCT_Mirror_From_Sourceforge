*---------------------------------------------------------------------------*
* Time : 12:07:33    Date : 01/06/2013
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
Function ALL
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

Resistance R_ALL_18smart1() address Code Unit : Circuits\Main\Main\Main


Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ALL_18smart1() code
Class AllClass
Data cWindowName init "AllWindow"
Method showwindow
Method closewindow
Method Process
Method PrintMsg
EndClass
Method showwindow Class AllClass
if !iswindowdefined( &(self:cWindowName) )
DEFINE WINDOW &(self:cWindowName) ;
AT 10 ,10 ;
WIDTH 595 ;
HEIGHT 449 ;
ON INIT Self:Process()  ;
ICON "PWCTICON" ;
TITLE "Results" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {255,255,255}

@ 358 ,432 BUTTONEX btnClose;
CAPTION "Close";
ON CLICK self:closewindow()  ;
WIDTH 130 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 10 ,10 EDITBOX edit1;
WIDTH 547 ;
HEIGHT 335;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
END WINDOW

&(self:cWindowName).Center ( )
ACTIVATE WINDOW &(self:cWindowName)
EndIF

Return 0
Method closewindow Class AllClass
&(self:cWindowName).Release ( )
Return 0
Method Process Class AllClass
myout = oCloudApp:UI2Class()
oLP:aServers := ACLONE( oCloudApp:aServers )
oLP:aSLA := ACLONE( oCloudApp:aSLA )
oLP:aVM := ACLONE( oCloudApp:aVM )
oLP:nConsolidation := 1
myout = oLP:Process()
myout = oLP:DetermineRightSolution()
Linear_Static_Servers := oLP:nRSPhysicalServers
Linear_Static_Migrations := oLP:nRSMigrations
myout = Self:PrintMsg("Linear Programming - Static Consoildation ")
myout = Self:PrintMsg("Physical Servers : " + alltrim(str(oLP:nRSPhysicalServers)))
myout = Self:PrintMsg("Migrations : " + alltrim(str(oLP:nRSMigrations)))
myout = Self:PrintMsg("============================================================= ")
oLP:aServers := ACLONE( oCloudApp:aServers )
oLP:aSLA := ACLONE( oCloudApp:aSLA )
oLP:aVM := ACLONE( oCloudApp:aVM )
oLP:nConsolidation := 2
myout = oLP:Process()
myout = oLP:DetermineRightSolution()
Linear_Dynamic_Servers := oLP:nRSPhysicalServers
Linear_Dynamic_Migrations := oLP:nRSMigrations
myout = Self:PrintMsg("Linear Programming - Dynamic Consoildation ")
myout = Self:PrintMsg("Physical Servers : " + alltrim(str(oLP:nRSPhysicalServers)))
myout = Self:PrintMsg("Migrations : " + alltrim(str(oLP:nRSMigrations)))
myout = Self:PrintMsg("============================================================= ")
oLP:aServers := ACLONE( oCloudApp:aServers )
oLP:aSLA := ACLONE( oCloudApp:aSLA )
oLP:aVM := ACLONE( oCloudApp:aVM )
oLP:nConsolidation := 3
myout = oLP:Process()
myout = oLP:DetermineRightSolution()
Linear_DynamicWMC_Servers := oLP:nRSPhysicalServers
Linear_DynamicWMC_Migrations := oLP:nRSMigrations
myout = Self:PrintMsg("Linear Programming - Dynamic Consoildation with Migrations Control")
myout = Self:PrintMsg("Physical Servers : " + alltrim(str(oLP:nRSPhysicalServers)))
myout = Self:PrintMsg("Migrations : " + alltrim(str(oLP:nRSMigrations)))
myout = Self:PrintMsg("============================================================= ")
oFFD:aServers := ACLONE( oCloudApp:aServers )
oFFD:aSLA := ACLONE( oCloudApp:aSLA )
oFFD:aVM := ACLONE( oCloudApp:aVM )
oFFD:nConsolidation := 1
myout = oFFD:Process()
myout = oFFD:DetermineRightSolution()
FFD_Static_Servers := oFFD:nRSPhysicalServers
FFD_Static_Migrations := oFFD:nRSMigrations
myout = Self:PrintMsg("First-Fit Decreasing (FFD) - Static Consoildation ")
myout = Self:PrintMsg("Physical Servers : " + alltrim(str(oFFD:nRSPhysicalServers)))
myout = Self:PrintMsg("Migrations : " + alltrim(str(oFFD:nRSMigrations)))
myout = Self:PrintMsg("============================================================= ")
oFFD:aServers := ACLONE( oCloudApp:aServers )
oFFD:aSLA := ACLONE( oCloudApp:aSLA )
oFFD:aVM := ACLONE( oCloudApp:aVM )
oFFD:nConsolidation := 2
myout = oFFD:Process()
myout = oFFD:DetermineRightSolution()
FFD_Dynamic_Servers := oFFD:nRSPhysicalServers
FFD_Dynamic_Migrations := oFFD:nRSMigrations
myout = Self:PrintMsg("First-Fit Decreasing (FFD) - Dynamic Consoildation ")
myout = Self:PrintMsg("Physical Servers : " + alltrim(str(oFFD:nRSPhysicalServers)))
myout = Self:PrintMsg("Migrations : " + alltrim(str(oFFD:nRSMigrations)))
myout = Self:PrintMsg("============================================================= ")
oFFD:aServers := ACLONE( oCloudApp:aServers )
oFFD:aSLA := ACLONE( oCloudApp:aSLA )
oFFD:aVM := ACLONE( oCloudApp:aVM )
oFFD:nConsolidation := 3
myout = oFFD:Process()
myout = oFFD:DetermineRightSolution()
FFD_DynamicWMC_Servers := oFFD:nRSPhysicalServers
FFD_DynamicWMC_Migrations := oFFD:nRSMigrations
myout = Self:PrintMsg("First-Fit Decreasing (FFD) - Dynamic Consoildation with Migrations Control")
myout = Self:PrintMsg("Physical Servers : " + alltrim(str(oFFD:nRSPhysicalServers)))
myout = Self:PrintMsg("Migrations : " + alltrim(str(oFFD:nRSMigrations)))
myout = Self:PrintMsg("============================================================= ")
oBFD:aServers := ACLONE( oCloudApp:aServers )
oBFD:aSLA := ACLONE( oCloudApp:aSLA )
oBFD:aVM := ACLONE( oCloudApp:aVM )
oBFD:nConsolidation := 1
myout = oBFD:Process()
myout = oBFD:DetermineRightSolution()
BFD_Static_Servers := oBFD:nRSPhysicalServers
BFD_Static_Migrations := oBFD:nRSMigrations
myout = Self:PrintMsg("Best-Fit Decreasing (BFD) - Static Consoildation ")
myout = Self:PrintMsg("Physical Servers : " + alltrim(str(oBFD:nRSPhysicalServers)))
myout = Self:PrintMsg("Migrations : " + alltrim(str(oBFD:nRSMigrations)))
myout = Self:PrintMsg("============================================================= ")
oBFD:aServers := ACLONE( oCloudApp:aServers )
oBFD:aSLA := ACLONE( oCloudApp:aSLA )
oBFD:aVM := ACLONE( oCloudApp:aVM )
oBFD:nConsolidation := 2
myout = oBFD:Process()
myout = oBFD:DetermineRightSolution()
BFD_Dynamic_Servers := oBFD:nRSPhysicalServers
BFD_Dynamic_Migrations := oBFD:nRSMigrations
myout = Self:PrintMsg("Best-Fit Decreasing (BFD) - Dynamic Consoildation ")
myout = Self:PrintMsg("Physical Servers : " + alltrim(str(oBFD:nRSPhysicalServers)))
myout = Self:PrintMsg("Migrations : " + alltrim(str(oBFD:nRSMigrations)))
myout = Self:PrintMsg("============================================================= ")
oBFD:aServers := ACLONE( oCloudApp:aServers )
oBFD:aSLA := ACLONE( oCloudApp:aSLA )
oBFD:aVM := ACLONE( oCloudApp:aVM )
oBFD:nConsolidation := 3
myout = oBFD:Process()
myout = oBFD:DetermineRightSolution()
BFD_DynamicWMC_Servers := oBFD:nRSPhysicalServers
BFD_DynamicWMC_Migrations := oBFD:nRSMigrations
myout = Self:PrintMsg("Best-Fit Decreasing (BFD) - Dynamic Consoildation with Migrations Control")
myout = Self:PrintMsg("Physical Servers : " + alltrim(str(oBFD:nRSPhysicalServers)))
myout = Self:PrintMsg("Migrations : " + alltrim(str(oBFD:nRSMigrations)))
myout = Self:PrintMsg("============================================================= ")
oWFD:aServers := ACLONE( oCloudApp:aServers )
oWFD:aSLA := ACLONE( oCloudApp:aSLA )
oWFD:aVM := ACLONE( oCloudApp:aVM )
oWFD:nConsolidation := 1
myout = oWFD:Process()
myout = oWFD:DetermineRightSolution()
WFD_Static_Servers := oWFD:nRSPhysicalServers
WFD_Static_Migrations := oWFD:nRSMigrations
myout = Self:PrintMsg("Worst-Fit Decreasing (WFD) - Static Consoildation ")
myout = Self:PrintMsg("Physical Servers : " + alltrim(str(oWFD:nRSPhysicalServers)))
myout = Self:PrintMsg("Migrations : " + alltrim(str(oWFD:nRSMigrations)))
myout = Self:PrintMsg("============================================================= ")
oWFD:aServers := ACLONE( oCloudApp:aServers )
oWFD:aSLA := ACLONE( oCloudApp:aSLA )
oWFD:aVM := ACLONE( oCloudApp:aVM )
oWFD:nConsolidation := 2
myout = oWFD:Process()
myout = oWFD:DetermineRightSolution()
WFD_Dynamic_Servers := oWFD:nRSPhysicalServers
WFD_Dynamic_Migrations := oWFD:nRSMigrations
myout = Self:PrintMsg("Worst-Fit Decreasing (WFD) - Dynamic Consoildation ")
myout = Self:PrintMsg("Physical Servers : " + alltrim(str(oWFD:nRSPhysicalServers)))
myout = Self:PrintMsg("Migrations : " + alltrim(str(oWFD:nRSMigrations)))
myout = Self:PrintMsg("============================================================= ")
oWFD:aServers := ACLONE( oCloudApp:aServers )
oWFD:aSLA := ACLONE( oCloudApp:aSLA )
oWFD:aVM := ACLONE( oCloudApp:aVM )
oWFD:nConsolidation := 3
myout = oWFD:Process()
myout = oWFD:DetermineRightSolution()
WFD_DynamicWMC_Servers := oWFD:nRSPhysicalServers
WFD_DynamicWMC_Migrations := oWFD:nRSMigrations
myout = Self:PrintMsg("Worst-Fit Decreasing (WFD) - Dynamic Consoildation with Migrations Control")
myout = Self:PrintMsg("Physical Servers : " + alltrim(str(oWFD:nRSPhysicalServers)))
myout = Self:PrintMsg("Migrations : " + alltrim(str(oWFD:nRSMigrations)))
myout = Self:PrintMsg("============================================================= ")
oAWFD:aServers := ACLONE( oCloudApp:aServers )
oAWFD:aSLA := ACLONE( oCloudApp:aSLA )
oAWFD:aVM := ACLONE( oCloudApp:aVM )
oAWFD:nConsolidation := 1
myout = oAWFD:Process()
myout = oAWFD:DetermineRightSolution()
AWFD_Static_Servers := oAWFD:nRSPhysicalServers
AWFD_Static_Migrations := oAWFD:nRSMigrations
myout = Self:PrintMsg("Almost-Worst-Fit Decreasing (AWFD) - Static Consoildation ")
myout = Self:PrintMsg("Physical Servers : " + alltrim(str(oAWFD:nRSPhysicalServers)))
myout = Self:PrintMsg("Migrations : " + alltrim(str(oAWFD:nRSMigrations)))
myout = Self:PrintMsg("============================================================= ")
oAWFD:aServers := ACLONE( oCloudApp:aServers )
oAWFD:aSLA := ACLONE( oCloudApp:aSLA )
oAWFD:aVM := ACLONE( oCloudApp:aVM )
oAWFD:nConsolidation := 2
myout = oAWFD:Process()
myout = oAWFD:DetermineRightSolution()
AWFD_Dynamic_Servers := oAWFD:nRSPhysicalServers
AWFD_Dynamic_Migrations := oAWFD:nRSMigrations
myout = Self:PrintMsg("Almost-Worst-Fit Decreasing (AWFD) - Dynamic Consoildation ")
myout = Self:PrintMsg("Physical Servers : " + alltrim(str(oAWFD:nRSPhysicalServers)))
myout = Self:PrintMsg("Migrations : " + alltrim(str(oAWFD:nRSMigrations)))
myout = Self:PrintMsg("============================================================= ")
oAWFD:aServers := ACLONE( oCloudApp:aServers )
oAWFD:aSLA := ACLONE( oCloudApp:aSLA )
oAWFD:aVM := ACLONE( oCloudApp:aVM )
oAWFD:nConsolidation := 3
myout = oAWFD:Process()
myout = oAWFD:DetermineRightSolution()
AWFD_DynamicWMC_Servers := oAWFD:nRSPhysicalServers
AWFD_DynamicWMC_Migrations := oAWFD:nRSMigrations
myout = Self:PrintMsg("Almost-Worst-Fit Decreasing (AWFD) - Dynamic Consoildation with Migrations Control")
myout = Self:PrintMsg("Physical Servers : " + alltrim(str(oAWFD:nRSPhysicalServers)))
myout = Self:PrintMsg("Migrations : " + alltrim(str(oAWFD:nRSMigrations)))
myout = Self:PrintMsg("============================================================= ")
if !iswindowdefined( winGraph )
DEFINE WINDOW winGraph ;
AT 10 ,10 ;
WIDTH 1050 ;
HEIGHT 465 ;
ICON "PWCTICON" ;
TITLE " Graph " ;
CHILD ;
BACKCOLOR {236,233,216}

END WINDOW

aStaticConData := {Linear_Static_Servers,FFD_Static_Servers,BFD_Static_Servers,WFD_Static_Servers,AWFD_Static_Servers}
aDynamicConData := {Linear_Dynamic_Servers,FFD_Dynamic_Servers,BFD_Dynamic_Servers,WFD_Dynamic_Servers,AWFD_Dynamic_Servers}
aDynamicConWMCData := {Linear_DynamicWMC_Servers,FFD_DynamicWMC_Servers,BFD_DynamicWMC_Servers,WFD_DynamicWMC_Servers,AWFD_DynamicWMC_Servers}
DRAW GRAPH IN WINDOW winGraph ;
AT 50,50 ;
WIDTH 800 ;
HEIGHT 400 ;
TITLE "Server Consolidation" ;
TYPE BARS ;
SERIES {aStaticConData,aDynamicConData,aDynamicConWMCData} ;
YVALUES {"LP","FFD","BFD","WFD","AWFD"} ;
DEPTH 5 ;
HVALUES 10 ;
SERIENAMES {"Static consolidation","Dynamic consolidation","Dynamic consolidation with migration control"} ;
COLORS {{255,0,0},{0,255,0},{0,0,255}} ;
3DVIEW  ;
SHOWXGRID ;
SHOWXVALUES ;
SHOWYVALUES ;
SHOWLEGENDS ;
NOBORDER

ACTIVATE WINDOW winGraph
EndIF

Return 0
Method PrintMsg(p1) Class AllClass
cMsg := &(self:cWindowName).edit1.Value
cMsg := cMsg + CHR(13) + CHR(10) + p1
&(self:cWindowName).edit1.Value := cMsg
Return 0



End Of Resistance

*-------------------------------------------------------------------*

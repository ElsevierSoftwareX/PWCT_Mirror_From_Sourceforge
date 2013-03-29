**************************************************************************************
*-- Custom
**************************************************************************************
#Define TRUE                             .T.
#Define FALSE                            .F.

#Define BORDERSTYLE_NONE                 0
#Define BORDERSTYLE_FIXEDSINGLE          1
#Define BORDERSTYLE_FIXEDDIALOG          2
#Define BORDERSTYLE_SIZABLE              3

#Define SHOWWINDOW_INSCREEN              0
#Define SHOWWINDOW_INTOPLEVELFORM        1
#Define SHOWWINDOW_ASTOPLEVELFORM        2

#Define VERSION2_RUNTIME                 0

#Define CTL32_FORMTYPE_DEFAULT           0
#Define CTL32_FORMTYPE_TOPLEVEL          1
#Define CTL32_FORMTYPE_SCREEN            2

#Define CTL32_SBBORDER_HORIZONTAL        1
#Define CTL32_SBBORDER_VERTICAL          2
#Define CTL32_SBBORDER_SEPARATOR         3

**************************************************************************************
*-- API 
**************************************************************************************
#Define CCM_FIRST                     0x2000              
#Define CCM_GETUNICODEFORMAT          0x2000 + 6               && (CCM_FIRST + 6)
#Define CCM_SETBKCOLOR                0x2000 + 1               && (CCM_FIRST + 1)
#Define CCM_SETUNICODEFORMAT          0x2000 + 5               && (CCM_FIRST + 5)
#Define CCS_ADJUSTABLE                0x20                
#Define CCS_BOTTOM                    0x3                 
#Define CCS_LEFT                      Bitor(0x80, 0x1)         && Bitor(CCS_VERT,CCS_TOP)
#Define CCS_NODIVIDER                 0x40                
#Define CCS_NOMOVEX                   Bitor(0x80, 0x2)         && Bitor(CCS_VERT,CCS_NOMOVEY)
#Define CCS_NOMOVEY                   0x2                 
#Define CCS_NOPARENTALIGN             0x8                 
#Define CCS_NORESIZE                  0x4                 
#Define CCS_RIGHT                     Bitor(0x80, 0x3)         && Bitor(CCS_VERT,CCS_BOTTOM)
#Define CCS_TOP                       0x1                 
#Define CCS_VERT                      0x80                
#Define CLR_DEFAULT                   0xFF000000          
#Define COLOR_BTNFACE                 15                  
#Define COLOR_BTNFACE                 15                  
#Define COLOR_HIGHLIGHT               13                  
#Define COLOR_WINDOW                  5                   
#Define DATE_LONGDATE                 0x2                 
#Define DATE_SHORTDATE                0x1                 
#Define GWL_EXSTYLE                   -20                 
#Define GWL_HINSTANCE                 -6                  
#Define GWL_STYLE                     -16                 
#Define GWL_WNDPROC                   -4                  
#Define HWND_TOP                      0                   
#Define LOCALE_SISO639LANGNAME        0x59                
#Define LOCALE_SYSTEM_DEFAULT         0x800               
#Define LOCALE_USER_DEFAULT           0x400               
#Define PBM_DELTAPOS                  0x400 + 3                && (WM_USER+3)
#Define PBM_GETPOS                    0x400 + 8                && (WM_USER+8)
#Define PBM_GETRANGE                  0x400 + 7                && (WM_USER+7)
#Define PBM_SETBARCOLOR               0x400 + 9                && (WM_USER + 9)
#Define PBM_SETBKCOLOR                0x2000 + 1               && CCM_SETBKCOLOR
#Define PBM_SETMARQUEE                0x400 + 10               && (WM_USER+10)
#Define PBM_SETPOS                    0x400 + 2                && (WM_USER+2)
#Define PBM_SETRANGE                  0x400 + 1                && (WM_USER+1)
#Define PBM_SETRANGE32                0x400 + 6                && (WM_USER + 6)
#Define PBM_SETSTEP                   0x400 + 4                && (WM_USER + 4)
#Define PBM_STEPIT                    0x400 + 5                && (WM_USER+5)
#Define PBS_MARQUEE                   0x8                      && Comctl32.dll version 6
#Define PBS_SMOOTH                    0x1                      && Comctl32.dll Version 4.7 or later
#Define PBS_VERTICAL                  0x4                      && Comctl32.dll Version 4.7 or later
#Define PS_SOLID                      0                   
#Define SB_GETBORDERS                 0x400 + 7                && (WM_USER + 7)
#Define SB_GETICON                    0x400 + 20               && (WM_USER + 20)
#Define SB_GETPARTS                   0x400 + 6                && (WM_USER + 6)
#Define SB_GETRECT                    0x400 + 10               && (WM_USER + 10)
#Define SB_GETTEXTA                   0x400 + 2                && (WM_USER + 2)
#Define SB_GETTEXTLENGTHA             0x400 + 3                && (WM_USER + 3)
#Define SB_GETTEXTLENGTHW             0x400 + 12               && (WM_USER + 12)
#Define SB_GETTEXTW                   0x400 + 13               && (WM_USER + 13)
#Define SB_GETTIPTEXTA                0x400 + 18               && (WM_USER + 18)
#Define SB_GETTIPTEXTW                0x400 + 19               && (WM_USER + 19)
#Define SB_GETUNICODEFORMAT           0x2000 + 6               && CCM_GETUNICODEFORMAT
#Define SB_ISSIMPLE                   0x400 + 14               && (WM_USER + 14)
#Define SB_SETBKCOLOR                 0x2000 + 1               && CCM_SETBKCOLOR
#Define SB_SETICON                    0x400 + 15               && (WM_USER + 15)
#Define SB_SETMINHEIGHT               0x400 + 8                && (WM_USER + 8)
#Define SB_SETPARTS                   0x400 + 4                && (WM_USER + 4)
#Define SB_SETTEXTA                   0x400 + 1                && (WM_USER + 1)
#Define SB_SETTEXTW                   0x400 + 11               && (WM_USER + 11)
#Define SB_SETTIPTEXTA                0x400 + 16               && (WM_USER + 16)
#Define SB_SETTIPTEXTW                0x400 + 17               && (WM_USER + 17)
#Define SB_SETUNICODEFORMAT           0X2000 + 5               && CCM_SETUNICODEFORMAT
#Define SB_SIMPLE                     0x400 + 9                && (WM_USER + 9)
#Define SBARS_SIZEGRIP                0x100               
#Define SBARS_TOOLTIPS                0x800               
#Define SBT_TOOLTIPS                  0x800               
#Define SW_HIDE                       0                   
#Define SW_MAXIMIZE                   3                   
#Define SW_RESTORE                    9                   
#Define SW_SHOW                       5                   
#Define SW_SHOWDEFAULT                10                  
#Define SW_SHOWNA                     8                   
#Define SWP_FRAMECHANGED              0x20                
#Define SWP_NOMOVE                    0x2                 
#Define SWP_NOSIZE                    0x1                 
#Define SWP_NOZORDER                  0x4                 
#Define WM_GETFONT                    0x31                
#Define WM_NOTIFY                     0x4E                
#Define WM_SIZE                       0x5                 
#Define WM_SYSCOLORCHANGE             0x15                
#Define WM_THEMECHANGED               0x031A              
#Define WM_USER                       0x400               
#Define WS_CHILD                      0x40000000          
#Define WS_CLIPCHILDREN               0x2000000           
#Define WS_CLIPSIBLINGS               0x4000000           
#Define WS_EX_LEFT                    0x0                 
#Define WS_EX_LTRREADING              0x0                 
#Define WS_EX_NOPARENTNOTIFY          0x4                 
#Define WS_EX_RIGHTSCROLLBAR          0x0                 
#Define WS_EX_STATICEDGE              0x20000             
#Define WS_EX_TOPMOST                 0x8                 
#Define WS_VISIBLE                    0x10000000          

**************************************************************************************
* From foxpro.h
**************************************************************************************

*-- Sysmetric() parameter values
#Define SYSMETRIC_SCREENWIDTH              1 && Screen width
#Define SYSMETRIC_SCREENHEIGHT             2 && Screen width
#Define SYSMETRIC_SIZINGBORDERWIDTH        3 && Width of the sizing border around a resizable window
#Define SYSMETRIC_SIZINGBORDERHEIGHT       4 && Height of the sizing border around a resizable window
#Define SYSMETRIC_VSCROLLBARWIDTH          5 && Width of a vertical scroll bar
#Define SYSMETRIC_VSCROLLBARHEIGHT         6 && Height of the arrow bitmap on a vertical scroll bar
#Define SYSMETRIC_HSCROLLBARWIDTH          7 && Width of the arrow bitmap on a horizontal scroll bar
#Define SYSMETRIC_HSCROLLBARHEIGHT         8 && Height of a horizontal scroll bar
#Define SYSMETRIC_WINDOWTITLEHEIGHT        9 && Height of window title (caption) area
#Define SYSMETRIC_WINDOWBORDERWIDTH       10 && Width of a window border
#Define SYSMETRIC_WINDOWBORDERHEIGHT      11 && Height of a window border
#Define SYSMETRIC_WINDOWFRAMEWIDTH        12 && Width of the frame around the perimeter of a window
                                             && that has a caption but is not sizable
#Define SYSMETRIC_WINDOWFRAMEHEIGHT       13 && Height of the frame around the perimeter of a window
                                             && that has a caption but is not sizable
#Define SYSMETRIC_THUMBBOXWIDTH           14 && Width of the thumb box in a horizontal scroll bar
#Define SYSMETRIC_THUMBBOXHEIGHT          15 && Height of the thumb box in a vertical scroll bar
#Define SYSMETRIC_ICONWIDTH               16 && Width of an icon
#Define SYSMETRIC_ICONHEIGHT              17 && Height of an icon
#Define SYSMETRIC_CURSORWIDTH             18 && Width of a cursor
#Define SYSMETRIC_CURSORHEIGHT            19 && Height of a cursor
#Define SYSMETRIC_MENUBAR                 20 && Height of a single-line menu bar
#Define SYSMETRIC_CLIENTWIDTH             21 && Width of the client area for a full-screen window
#Define SYSMETRIC_CLIENTHEIGHT            22 && Height of the client area for a full-screen window
#Define SYSMETRIC_KANJIWINHEIGHT          23 && Height of the Kanji window at the bottom of the screen in DBCS versions
#Define SYSMETRIC_MINDRAGWIDTH            24 && Minimum tracking width of a window. (The user cannot drag the window frame to a size smaller than this)
#Define SYSMETRIC_MINDRAGHEIGHT           25 && Minimum tracking height of a window. (The user cannot drag the window frame to a size smaller than this)
#Define SYSMETRIC_MINWINDOWWIDTH          26 && Minimum width of a window
#Define SYSMETRIC_MINWINDOWHEIGHT         27 && Minimum height of a window
#Define SYSMETRIC_TITLEBARBUTTONWIDTH     28 && Width of a title bar button
#Define SYSMETRIC_TITLEBARBUTTONHEIGHT    29 && Height of a title bar button
#Define SYSMETRIC_MOUSEPRESENT            30 && Is mouse present?  1 => mouse is installed, 0 => no mouse is installed
#Define SYSMETRIC_DEBUGVERSION            31 && Is this a debug version?  1 => debug version, 0 => retail version
#Define SYSMETRIC_MOUSEBUTTONSWAP         32 && Are mouse buttons swapped?  1 => Yes, 0 => No
#Define SYSMETRIC_HALFHEIGHTBUTTONWIDTH   33 && Width of a button in a half-height title bar
#Define SYSMETRIC_HALFHEIGHTBUTTONHEIGHT  34 && Height of a button in a half-height title bar

*-- Window Borders
#Define BORDER_NONE     0
#Define BORDER_SINGLE   1
#Define BORDER_DOUBLE   2
#Define BORDER_SYSTEM   3

*-- WindowState
#Define WINDOWSTATE_NORMAL          0       && 0 - Normal
#Define WINDOWSTATE_MINIMIZED       1       && 1 - Minimized
#Define WINDOWSTATE_MAXIMIZED       2       && 2 - Maximized

*-- Toolbar and Form Docking Positions
#Define TOOL_NOTDOCKED  -1
#Define TOOL_TOP        0
#Define TOOL_LEFT       1
#Define TOOL_RIGHT      2
#Define TOOL_BOTTOM     3
#Define TOOL_TAB     	4
#Define TOOL_LINK     	5
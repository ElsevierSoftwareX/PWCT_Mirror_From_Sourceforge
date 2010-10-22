                     Snapshot Viewer Version 10.0 Readme File

                  (C) Copyright 1997-2003 Microsoft Corporation

Contents
    Report Snapshot Files Can Only Be Read On Computers Running 32-Bit Windows
    Snapshot Viewer Control Requires Service Pack 5 or Later on Windows NT 
        Version 3.51
    Ways to Reduce the Size of a Mail Message When Embedding a Report Snapshot 
        File Under Windows 95
    Pressing F1 with the Pointer on a Menu Command Displays What's This? Help 
    File List

Report Snapshot Files Can Only Be Read On Computers Running 32-Bit Windows
--------------------------------------------------------------------------

You cannot display a report snapshot file on a computer that is not running 32-bit Windows. For example, you may be attempting to display a report snapshot file from a World Wide Web page on a Macintosh computer or a computer running Unix. The internal format of a report snapshot is a Windows metafile, which can only be read by a computer running Windows 95 or Windows NT.

Snapshot Viewer Control Requires Service Pack 5 or Later on Windows NT Version 
------------------------------------------------------------------------------
    3.51
    ----

The Snapshot Viewer control requires Service Pack 5 or later on Windows NT Version 3.51. This is not a problem with Windows NT version 4.0 or later.

Ways to Reduce the Size of a Mail Message When Embedding a Report Snapshot File 
-------------------------------------------------------------------------------
    Under Windows 95
    ----------------

You can embed a report snapshot file in a mail message using an electronic mail program that supports ActiveX controls. For example, in Microsoft Outlook click Object on the Insert menu; select Create From File and then type the report snapshot file name in the File box, or click Browse to search for the file. Note that embedding a report snapshot file in this manner produces a larger e-mail message under Windows 95 than it does under Windows NT, and may prevent you from sending the e-mail message (because of the limitations of your electronic mail program). The size difference is caused by differences between the way the two operating systems support Windows metafiles.

To reduce the size of the e-mail message, you can do the following before sending the report snapshot:

1) Embed the report snapshot as an icon (in Outlook, select Display as Icon in
   the Insert Object dialog box).
2) Reduce the number of colors in your Windows Display Properties dialog box
   (double-click the Display icon in the Control Panel; on the Settings Tab, 
   change the Color Palette). 
3) Reduce the size of the embedded report snapshot file (in Outlook, size it by 
   using its control handles).
4) Activate the embedded report snapshot file in place and zoom to fit (in 
   Outlook, double-click the report snapshot, and then right-click it and click 
   Fit on the Zoom menu).

Pressing F1 with the Pointer on a Menu Command Displays What's This? Help 
-------------------------------------------------------------------------

If you press F1 with the pointer on a menu command, it displays What's This? Help instead of the Help Topics window. This behavior is different from Microsoft Office 97 programs such as Microsoft Access 97. If you move the pointer off the menu command, pressing F1 will display the Help Topics window.

File List
---------

The following files are installed by Snpvw.exe in the Program Files\Snapshot Viewer folder by default:

    Readme.txt
    Snapview.cnt
    Snapview.exe
    Snapview.hlp

The following files are installed by Snpvw.exe in the System folder by default:

    Asycfilt.dll
    Comcat.dll
    Hlp95en.dll
    Mfc42.dll
    Msvcrt.dll
    Oleaut32.dll
    Olepro32.dll
    Snapview.ocx
    Stdole2.tlb
    Urlmon.dll
    Wininet.dll

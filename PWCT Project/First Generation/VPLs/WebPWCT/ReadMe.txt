============================================================================================================
PWCT 1.9 Art 
http://doublesvsoop.sourceforge.net
2006-2013, Mahmoud Samir Fayed <msfclipper@yahoo.com>
http://www.facebook.com/msfclipper
============================================================================================================

==============================
Starting new VPL Development
==============================

1 - Copy the folder NewVPL to c:\SSBUILD
2 - open folder NewVPL\Config
3 - Run Install.bat to copy file NewVPL.txt to c:\ssbuild\PWCT18\VPLs

Now when you run PWCT you will have new 
visual programming language called (NewVPL)
Ready for development inside PWCT

At start it's recommended to change the visual programming language
name and folder to be ready for distribution with PWCT in the future.
edit the file c:\ssbuild\PWCT18\VPLs\NewVPL.txt to set the visual
programming language name and the new folders names.

This file contains 5 lines
The first line contains the DATA folder path
The Second line contains the visual programming language name
The Third line contains the extension of the generated source code file
The line number 4 contains the batch file that will be used for building the application
The line number 5 contains the default application that will be opened at startup

You can also change the name of the file NewVPL.txt
After modification you can keep a copy of the file in the original config folder

===============
PWCTDATA Folder
===============

This folder (PWCTDATA) contains the database files.
You have 20 channels (subfolders) contains the same database
Where we can run PWCT more than one time and each time we run
PWCT a different channel will be used for storing program data

The database contains the Domain Tree + Components files paths
So when you modify the database (Domain Tree and/or Components)
You have to update all channel (subfolders) to contains the same
database (The same Domain Tree and/or components paths)

To do this, just after the modification, open the folder PWCTDATA
then run the file updatech.bat and this file will copy the database in
the channel 1 (subfolder 1) to all other channels 

===============
Start Folder
===============

This folder contains the default application that will be opened when you
open the visual programming language.

==================
Templates Folder
==================

This folder contains the templates files
When you create new visual source file, you create this file
using a template in this folder.

==================
Batch Folder
==================

This folder contains the batch file that will be used for building the application
This batch file will be called when the user click Run or press CTRL+R

==================
Components Folder
==================

This folder for storing the files of the visual programming language
This folder contains three sub folders
1 - ISF Folder : Interaction Script Files folder
2 - IDF Folder : Interaction Designer Files folder
3 - TRF Folder : Transporter Designer Files folder



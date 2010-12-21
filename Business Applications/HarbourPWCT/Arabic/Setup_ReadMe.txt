IZDEHAR SYSTEM
==================

-----------------
At Server Only
-----------------

Share the application folder on network for example

	\\servername\\Izdehar

IGNORE THIS STEP IF YOU ARE GOING TO TEST THE APPLICATION USING ONE MACHINE (No Network)

---------------------
At Client & Server
---------------------

1 - Install AccessRuntime if you don't have MS-Office Installed

2 - Install  (Snapshot Viewer) to see Applications reports

	2.1 - install snpvw.exe
	2.2 - Run Installsnapview.bat 

3 - Create ODBC Data Source so application could access the Database
    To Create ODBC Data Source

    You can now Run CreateODBC.bat 

    OR

    3.1 Open Control Panel
    3.2 Open Adminstrative Tools
    3.3 Select Data Sources (ODBC)
    3.4 Click (ADD)
    3.5 Select Driver do Microsoft Access (*.mdb)
    3.6 Data source name is IZDEHARDATA
    3.7 Select Database \\servername\\IZDEHAR\Data\sysdata.mdb
        
	IF you don't have network and/or shared folder, select the database path directly
	for example 
	C:\IZDEHAR\data\sysdata.mdb



4 - Run application  \\servername\\IZDEHAR\IZDEHAR.exe
	Or C:\IZDEHAR\IZDEHAR.exe if you are using one machine 

--------------
Login Date
--------------

User Name : „œÌ—
Password  : 123

Greetings,
Mahmoud Fayed
msfclipper@yahoo.com
http://www.programmingwithoutcoding.com

   

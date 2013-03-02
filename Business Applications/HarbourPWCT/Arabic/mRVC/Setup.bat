ECHO OFF
CLS
ECHO =====================================
ECHO 	   Welcome to RVC2011 Setup
ECHO =====================================
echo Installing ODBC DATA Source
odbcconf CONFIGDSN "Microsoft Access Driver (*.mdb)" "DSN=PWCTRVCDATA | Trusted_Connection=Yes | DBQ=%cd%\data\sysdata.mdb"
rem odbcconf CONFIGDSN "SQL Native Client" "DSN=RVCSYSDATASQLDB|Server=172.16.101.2\SQLEXPRESS | Database=mRVCSQL | Trusted_Connection=No  "
odbcconf CONFIGDSN "SQL Native Client" "DSN=RVCSYSDATASQLDB|Server=.\SQLEXPRESS | Database=mRVCSQL | Trusted_Connection=No  "
echo Installing RMChart ActiveX Control
regsvr32 rmchart.ocx /S
echo Installing Snapshot Viewer
cd tools
SNPVW.EXE
cd..


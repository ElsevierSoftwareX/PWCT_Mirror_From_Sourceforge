echo Installing ODBC DATA Source
odbcconf CONFIGDSN "Microsoft Access Driver (*.mdb)" "DSN=IdCardData | Trusted_Connection=Yes | DBQ=%cd%\ID Card Generator\data\sysdata.mdb"
echo Install Snapshot Viewer
Cd ID Card Generator
snpvw.EXE


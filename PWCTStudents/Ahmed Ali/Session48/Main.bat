echo Installing ODBC DATA Source
odbcconf CONFIGDSN "Microsoft Access Driver (*.mdb)" "DSN=MyProjectData | Trusted_Connection=Yes | DBQ=%cd%\48\Data\systmdata.mdb"
echo Run application
Cd 48
MAIN.EXE


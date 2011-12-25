echo Installing ODBC DATA Source
odbcconf CONFIGDSN "Microsoft Access Driver (*.mdb)" "DSN=MyProjectData | Trusted_Connection=Yes | DBQ=%cd%\51\Data\systmdata.mdb"
echo Run application
Cd 51
MAIN.EXE


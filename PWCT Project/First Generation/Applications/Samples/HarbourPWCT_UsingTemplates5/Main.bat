echo Installing ODBC DATA Source
odbcconf CONFIGDSN "Microsoft Access Driver (*.mdb)" "DSN=MyProjectData | Trusted_Connection=Yes | DBQ=%cd%\Lesson\data\sysdata.mdb"
echo Run application
Cd Lesson
MAIN.EXE


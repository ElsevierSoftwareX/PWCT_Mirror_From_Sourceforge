echo off
if not exist "c:\ssbuild\python27\python.exe" goto MYERROR
c:\ssbuild\python27\python "DOWNLOADPWCTTUTORIALS.py"
goto MYEND
:MYERROR
echo on
echo You must install PWCT first before downloading tutorials.
pause
:MYEND
echo off
c:\
cd ssbuild
cd pwct19
cd pwcttutorials
if not exist "c:\ssbuild\python27\python.exe" goto MYERROR
c:\ssbuild\python27\python "C:\SSBUILD\PWCT19\PWCTTutorials\DOWNLOADPWCTTUTORIALS.py"
goto MYEND
:MYERROR
echo on
echo You must install PWCT first before downloading tutorials.
pause
:MYEND
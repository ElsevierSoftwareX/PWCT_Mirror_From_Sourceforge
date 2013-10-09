echo off
cd pwcttutorials
if not exist "%~dp0..\..\python27\python.exe" goto MYERROR
%~dp0..\..\python27\python "%~dp0..\..\PWCT19\PWCTTutorials\DOWNLOADPWCTTUTORIALS.py"
goto MYEND
:MYERROR
echo on
echo You must install PWCT first before downloading tutorials.
pause
:MYEND
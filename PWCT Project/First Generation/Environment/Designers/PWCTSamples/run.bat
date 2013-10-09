echo off
cd pwctsamples
if not exist "%~dp0..\..\python27\python.exe" goto MYERROR
%~dp0..\..\python27\python "%~dp0..\..\pwct19\pwctsamples\DOWNLOADPWCTSAMPLES.py"
goto MYEND
:MYERROR
echo on
echo You must install PWCT first before downloading samples.
pause
:MYEND
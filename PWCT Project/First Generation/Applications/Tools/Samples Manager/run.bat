echo off
c:
cd\
cd ssbuild
cd pwct19
cd pwctsamples
if not exist "c:\ssbuild\python27\python.exe" goto MYERROR
c:\ssbuild\python27\python "c:\ssbuild\pwct19\pwctsamples\DOWNLOADPWCTSAMPLES.py"
goto MYEND
:MYERROR
echo on
echo You must install PWCT first before downloading samples.
pause
:MYEND
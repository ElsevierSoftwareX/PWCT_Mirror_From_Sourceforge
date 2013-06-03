echo off
c:\
cd ssbuild
cd pwct19
cd pwctmovies
if not exist "c:\ssbuild\python27\python.exe" goto MYERROR
c:\ssbuild\python27\python "c:\ssbuild\pwct19\pwctmovies\DOWNLOADPWCTMOVIES.py"
goto MYEND
:MYERROR
echo on
echo You must install PWCT first before downloading movies.
pause
:MYEND
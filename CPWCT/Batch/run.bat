echo off
cls
echo This batch file will run the application
echo source file is %1
SET PATH=C:\HMG.4\harbour\comp\mingw\bin;%PATH%
C:\hmg.4\HARBOUR\comp\mingw\bin\GCC %1 -o %~n1
pause
cls
%~n1

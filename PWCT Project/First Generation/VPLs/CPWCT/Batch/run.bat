echo off

if exist %~n1.exe del %~n1.exe

set path=%path%;%~dp0..\..\borland\bcc55\bin
%~dp0..\..\borland\bcc55\bin\bCC32 -tWM -d -6 -O2 -OS -Ov -Oi -Oc  %1 

if not exist %~n1.exe pause

cls
if exist %~n1.exe %~n1

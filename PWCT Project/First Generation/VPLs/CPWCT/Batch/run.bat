echo off

if exist %~n1.exe del %~n1.exe

set path=%path%;c:\mypwct\ssbuild\borland\bcc55\bin
c:\mypwct\ssbuild\borland\bcc55\bin\bCC32 -tWM -d -6 -O2 -OS -Ov -Oi -Oc  %1 

if not exist %~n1.exe pause

cls
if exist %~n1.exe %~n1

set path=%path%;C:\WINDOWS\Microsoft.NET\Framework\v3.5
csc /target:exe  %1
rem pause
cls
"%~n1.exe"

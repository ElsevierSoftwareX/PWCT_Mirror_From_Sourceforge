set path=%path%;C:\WINDOWS\Microsoft.NET\Framework\v3.5
csc /target:exe  %1.cs
rem pause
cls
"%~n1.exe"

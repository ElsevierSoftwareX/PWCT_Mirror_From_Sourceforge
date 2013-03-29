set path=%path%;C:\WINDOWS\Microsoft.NET\Framework\v3.5
rem set path=%path%;C:\WINDOWS\Microsoft.NET\Framework\v4.0.30319
csc /target:exe  %~n1.cs
rem pause
cls
"%~n1.exe"

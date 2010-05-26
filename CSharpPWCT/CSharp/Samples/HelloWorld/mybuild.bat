call "D:\Program Files\Microsoft Visual Studio 9.0\VC\vcvarsall.bat"
csc /target:exe  %1.cs
pause
cls
%1.exe

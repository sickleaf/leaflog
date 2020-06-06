@echo off

rem specify markdown filepath via DnD
set mdfile=%1

rem marpCLIexe
set marpexe=marp.exe

rem buildTimeInfo (buildTime=HHMMSS)
set HHmmSSsss=%time::=%
set HHmmSS=%HHmmSSsss:~0,6%
if "%HHmmSS:~0,1%"==" " set HHmmSS=0%HHmmSS:~1%
set buildTime=%HHmmSS%

rem outputPDFName (pdfName=mdfilename_[HHMMSS].pdf)
set pdfName=%~n1_%buildTime%.pdf

echo "pdfName-> %pdfName%"

rem convert md -> pdf
%~dp0%\%%marpexe% --allow-local-files --pdf %mdfile% --output=%~dp1\%pdfName%
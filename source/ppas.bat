@echo off
C:\Lazarus\fpc\2.2.4\bin\i386-win32\windres.exe --include C:/Lazarus/fpc/22D83D~1.4/bin/I386-W~1/ -O res -o D:\Belgelerim\Projeler\Delphi\LHtml\project1.res D:/BELGEL~1/Projeler/Delphi/LHtml/project1.rc --preprocessor=C:\Lazarus\fpc\2.2.4\bin\i386-win32\cpp.exe
if errorlevel 1 goto linkend
SET THEFILE=D:\Belgelerim\Projeler\Delphi\LHtml\project1.exe
echo Linking %THEFILE%
C:\Lazarus\fpc\2.2.4\bin\i386-win32\ld.exe -b pe-i386 -m i386pe  --gc-sections   --subsystem windows --entry=_WinMainCRTStartup    -o D:\Belgelerim\Projeler\Delphi\LHtml\project1.exe D:\Belgelerim\Projeler\Delphi\LHtml\link.res
if errorlevel 1 goto linkend
C:\Lazarus\fpc\2.2.4\bin\i386-win32\postw32.exe --subsystem gui --input D:\Belgelerim\Projeler\Delphi\LHtml\project1.exe --stack 16777216
if errorlevel 1 goto linkend
goto end
:asmend
echo An error occured while assembling %THEFILE%
goto end
:linkend
echo An error occured while linking %THEFILE%
:end

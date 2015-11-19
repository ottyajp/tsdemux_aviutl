@echo OFF

set AUR_DIR="C:\Users\ottyajp\Desktop\videotemp\aviutl100\auc"
set AVU_DIR="C:\Users\ottyajp\Desktop\videotemp\aviutl100"

:LOOP
if "%~dpnx1" == "" goto END
echo Input: %~dpnx1
C:\dtv\BonTsDemux\BonTsDemuxC.exe -i "%~dpnx1"
if %ERRORLEVEL% == 0 echo completed.
if %ERRORLEVEL% == 1 echo error occurred.

echo executing aviutl...
%AUR_DIR%\auc_exec %AVU_DIR%\aviutl.exe
echo load m2v...
%AUR_DIR%\auc_open %~dpn1.m2v
echo load wav...
%AUR_DIR%\auc_audioadd %~dpn1.wav
echo;
shift
goto LOOP

:END
echo all jobs were completed.
timeout /t -1
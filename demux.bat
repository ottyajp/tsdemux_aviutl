@echo OFF

:LOOP
if "%~dpnx1" == "" goto END
echo Input: %~dpnx1
C:\dtv\BonTsDemux\BonTsDemuxC.exe -i "%~dpnx1"
if %ERRORLEVEL% == 0 echo completed.
if %ERRORLEVEL% == 1 echo error occurred.
echo;
shift
goto LOOP

:END
echo all jobs were completed.
timeout /t -1
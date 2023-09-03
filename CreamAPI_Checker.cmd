@echo off
cls
echo.
echo  ## [107;30m Space Engineers DLC Unlocker v0.4 - CreamAPI - by Lamer87 [0m  [102m   [107m   [101m   [0m
echo.
echo   # [33m Processing... [0m
echo.
move /y Backup\steam_api64.dll steam_api64.dll >nul 2>nul rem [only for v0.1 compatibility]
fc /b /c steam_api64.dll Backup\CreamAPI\steam_api64.dll >nul
if errorlevel 1 goto files_differ
echo.
echo   # [92m No game update found. [0m
echo.
echo   # [102;30m CreamAPI is ok! [0m[92m Exiting.[0m
echo.
pause
exit

:files_differ
echo.
echo   # [91m Game update found or CreamAPI not installed, do you want to: [0m
echo.
echo     [92m make a new backup and install/restore CreamAPI ? [0m
echo.
echo   # [91m You can close this window to abort, [92mor press a key to install/restore it... [0m
echo.
pause
echo.
echo   # [33m Installing... [0m
echo.
copy /y steam_api64.dll Backup\Original\ >nul
del /q /f steam_api64_o.dll >nul 2>nul
ren steam_api64.dll steam_api64_o.dll
copy /y Backup\CreamAPI\steam_api64.dll steam_api64.dll >nul
echo.
echo   # [92m CreamAPI installed/restored. [0m
echo.
echo   # [92m New backup of original file created in "\SpaceEngineers\Bin64\Backup\Original". [0m
echo.
echo   # [102;30m You can play. [0m[92m Exiting.[0m
echo.
pause
exit
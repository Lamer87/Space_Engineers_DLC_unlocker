@echo off
cls
echo.
echo  ## [107;30m Space Engineers DLC Unlocker v0.4 - CreamAPI - by Lamer87 [0m  [102m   [107m   [101m   [0m
echo.
echo   # [91m Do you want to remove CreamAPI ? [0m
echo.
echo   # [92m You can close this window to abort, [91mor press 2 KEYS to remove it... [0m
echo.
pause
pause
echo.
echo   # [33m Processing... [0m
echo.
fc /b /c steam_api64.dll Backup\CreamAPI\steam_api64.dll >nul
if errorlevel 1 goto files_differ
echo.
echo   # [92m No game update found, removing CreamAPI and restoring original file... [0m
echo.
del /q /f steam_api64.dll
ren steam_api64_o.dll steam_api64.dll >nul 2>nul
copy /y Backup\Original\steam_api64.dll steam_api64.dll
del /q /f cream_api.ini
del /q /f CreamAPI_Checker.cmd
rmdir /q /s Backup
echo.
echo   # [92m CreamAPI removed, original file restored. [0m
echo.
echo   # [102;30m Press a key to delete this file too and exit. [0m
echo.
pause
del /q /f CreamAPI_Remover.cmd
exit

:files_differ
echo.
echo   # [91m Game update found or CreamAPI not installed,[92m removing CreamAPI files... [0m
echo.
del /q /f steam_api64_o.dll >nul 2>nul
del /q /f cream_api.ini
del /q /f CreamAPI_Checker.cmd
rmdir /q /s Backup
echo.
echo   # [92m CreamAPI files removed. [0m
echo.
echo   # [102;30m Press a key to delete this file too and exit. [0m
echo.
pause
del /q /f CreamAPI_Remover.cmd
exit
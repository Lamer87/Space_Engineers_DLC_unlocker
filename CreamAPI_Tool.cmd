@echo off
cls
echo.
echo  ## [107;30m Space Engineers DLC Unlocker v0.8 - CreamAPI - by Lamer87 [0m  [102m   [107m   [101m   [0m
echo.

rem [### compatibility and sorting zone ###]
move /y Backup\steam_api64.dll Backup\Original >nul 2>nul
del /q /f CreamAPI_Remover.cmd >nul 2>nul rem [v0.2-v0.5]
del /q /f CreamAPI_Checker.cmd >nul 2>nul rem [v0.2-v0.5]
del /q /f readme.md >nul 2>nul rem [GitHub version, not using .gitignore]
move /y Backup\Original\"Space Engineers DLC Unlocker - by Lamer87.url" Backup >nul 2>nul
if not exist Backup\CreamAPI\steam_api64.dll goto file_not_found
if not exist cream_api.ini goto file_not_found
if not exist steam_api64.dll goto dir_wrong
rem [### compatibility and sorting zone ###]

echo.
echo   -  Press "[102;30m C [0m" to Check/install, or "[101;30m R [0m" to remove [1mCreamAPI[0m.
echo.
echo   -  Press "[44;97m A [0m" (or close this window) to abort.
echo.
choice /c:CRA
if errorlevel ==3 goto abort
if errorlevel ==2 goto remover
if errorlevel ==1 goto installer

:installer
echo.
echo   ! [43;30m Processing... [0m
echo.
fc /b /c steam_api64.dll Backup\CreamAPI\steam_api64.dll >nul
if errorlevel 1 goto installer_nocreamapi
timeout /t 1 /nobreak >nul
echo.
echo   # [92m No game update found. [0m[102;30m CreamAPI is ok! [0m
echo.
echo   - [92m Press any key to exit.[0m
echo.
pause
exit

:installer_nocreamapi
echo.
echo   # [91m Game update found or CreamAPI not installed[0m, do you want to:
echo.
echo     [92m make a new backup of original file and install/restore CreamAPI [0m?
echo.
echo   -  Press "[102;30m C [0m" to install it, or "[44;97m A [0m" to abort.
echo.
choice /c:CA
if errorlevel ==2 goto abort
if errorlevel ==1 goto installer_nocreamapi_continue

:installer_nocreamapi_continue
echo.
echo   ! [43;30m Installing... [0m
echo.
copy /y steam_api64.dll Backup\Original\ >nul
del /q /f steam_api64_o.dll >nul 2>nul
ren steam_api64.dll steam_api64_o.dll
copy /y Backup\CreamAPI\steam_api64.dll steam_api64.dll >nul
echo.
echo   # [92m CreamAPI installed/restored. [0m
echo.
echo   # [92m New backup of original file created in "...\Bin64\Backup\Original". [0m
echo.
echo   # [102;30m You can play. [0m - [92m Press any key to exit.[0m
echo.
pause
exit

:remover
echo.
echo   ! [43;30m Processing... [0m
echo.
fc /b /c steam_api64.dll Backup\CreamAPI\steam_api64.dll >nul
if errorlevel 1 goto remover_nocreamapi
timeout /t 1 /nobreak >nul
echo.
echo   # [92m No game update found[0m.
echo.
echo   -  Press "[101;30m R [0m" to remove [1mCreamAPI[0m, or "[44;97m A [0m" to abort.
echo.
choice /c:RA
if errorlevel ==2 goto abort
if errorlevel ==1 goto remover_continue

:remover_continue
echo.
echo   ! [43;30m Removing... [0m
echo.
del /q /f steam_api64.dll
ren steam_api64_o.dll steam_api64.dll >nul 2>nul
copy /y Backup\Original\steam_api64.dll steam_api64.dll 2>nul
del /q /f cream_api.ini
rmdir /q /s Backup
echo.
echo   # [92m CreamAPI files removed, original file restored. [0m
echo.
echo   - [102;30m Press any key to delete this file too and exit. [0m
echo.
pause
del /q /f CreamAPI_Tool.cmd
exit

:remover_nocreamapi
echo.
echo   # [91m Game update found or CreamAPI not installed[0m.
echo.
echo   -  Press "[101;30m R [0m" to remove [1mCreamAPI[0m, or "[44;97m A [0m" to abort.
echo.
choice /c:RA
if errorlevel ==2 goto abort
if errorlevel ==1 goto remover_nocreamapi_continue

:remover_nocreamapi_continue
echo.
echo   ! [43;30m Removing... [0m
echo.
del /q /f steam_api64_o.dll >nul 2>nul
del /q /f cream_api.ini
rmdir /q /s Backup
echo.
echo   # [92m CreamAPI files removed. [0m
echo.
echo   - [102;30m Press any key to delete this file too and exit. [0m
echo.
pause
del /q /f CreamAPI_Tool.cmd
exit

:abort
echo.
echo   # [92m Exiting.[0m
echo.
timeout /t 2 /nobreak >nul
exit

:file_not_found
echo.
echo   # [91m Something went wrong! [0m
echo.
echo   # [91m Please extract ALL files AND the "Backup" folder from the zip archive again. [0m
echo.
echo   # [92m They must be placed in ...\SpaceEngineers\[102;30mBin64\[0m [92m!!! [0m
echo.
echo   - [92m Press any key to remove the extracted files and exit. [0m
echo.
pause
del /q /f cream_api.ini >nul 2>nul
rmdir /q /s Backup >nul 2>nul
del /q /f CreamAPI_Tool.cmd >nul
exit

:dir_wrong
echo.
echo   # [91m Something went wrong! [0m
echo.
echo   # [91m Please make sure to place files in the RIGHT folder. [0m
echo.
echo   # [92m It must be: ...\SpaceEngineers\[102;30mBin64\[0m [92m!!! [0m
echo.
echo   # [91m You are in the wrong folder here: [0m
echo.
echo   #  %~dp0
echo.
echo   - [92m Press any key to remove the extracted files and exit. [0m
echo.
pause
del /q /f cream_api.ini >nul 2>nul
rmdir /q /s Backup >nul 2>nul
del /q /f CreamAPI_Tool.cmd >nul
exit

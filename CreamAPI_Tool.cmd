@echo off
cls

rem [### Sorting zone ###]
move /y Backup\steam_api64.dll Backup\Original >nul 2>nul
del /q /f CreamAPI_Remover.cmd >nul 2>nul rem [v0.2-v0.5]
del /q /f CreamAPI_Checker.cmd >nul 2>nul rem [v0.2-v0.5]
del /q /f CreamAPI_Linux >nul 2>nul rem [remove linux version]
del /q /f readme.md >nul 2>nul rem [GitHub version, not using .gitignore]
move /y Backup\Original\"Space Engineers DLC Unlocker - by Lamer87.url" Backup >nul 2>nul
if not exist Backup\CreamAPI\steam_api64.dll goto dll_not_found
if not exist cream_api.ini goto ini_not_found
if not exist steam_api64.dll goto dir_wrong

rem [CreamAPI update checks]
:updatecheck1
echo N | comp /n=10240 steam_api64.dll Backup\CreamAPI\old_v4.5.0.0\steam_api64.dll >nul
if errorlevel 1 goto updatecheck2
if errorlevel 0 goto updater
:updatecheck2
echo N | comp /n=10240 steam_api64.dll Backup\CreamAPI\old_v5.1.0.0\steam_api64.dll >nul
if errorlevel 1 goto choice
if errorlevel 0 goto updater


rem [### Choice zone ###]

:choice
cls
echo.
echo  ## [107;30m Space Engineers DLC Unlocker v1.2 - CreamAPI - by Lamer87 [0m  [102m   [107m   [101m   [0m
echo.
echo.
echo   -  Press "[102;30m C [0m" to Check/install, or "[101;30m R [0m" to remove [1mCreamAPI[0m.
echo.
echo   -  Press "[44;97m A [0m" or close this window at any time to abort, keeping CreamAPI files.
echo.
echo.
choice /c:CRA
if errorlevel ==3 goto abort
if errorlevel ==2 goto remover
if errorlevel ==1 goto installer


rem [### Installation zone ###]

:installer
echo.
echo   ! [43;30m Processing... [0m
echo.
fc /b /c steam_api64.dll Backup\CreamAPI\steam_api64.dll >nul
if errorlevel 1 goto installer_nocreamapi
timeout /t 1 /nobreak >nul
echo.
echo   # [92m No game update found[0m. [102;30m CreamAPI is ok! [0m
echo.
echo   - [92m Press any key to exit[0m.
echo.
echo.
pause
exit

:installer_nocreamapi
echo.
echo   # [91m Game update found or CreamAPI not installed[0m, do you want to:
echo.
echo     [92m make a new backup of original file and install/restore CreamAPI[0m?
echo.
echo   -  Press "[102;30m C [0m" to install it, or "[44;97m A [0m" to abort.
echo.
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
copy /y Backup\CreamAPI\steam_api64.dll steam_api64.dll
echo.
echo   # [92m CreamAPI installed/restored[0m.
echo.
echo   # [92m New backup of original file created in "[33m...\Bin64\Backup\Original[0m[92m"[0m.
echo.
echo   # [102;30m You can play. [0m - [92m Press any key to exit[0m.
echo.
echo.
pause
exit


rem [### Uninstallation zone ###]

:remover
echo.
echo   ! [43;30m Processing... [0m
echo.
fc /b /c steam_api64.dll Backup\CreamAPI\steam_api64.dll >nul
if errorlevel 1 goto remover_nocreamapi
timeout /t 1 /nobreak >nul
echo.
echo   # [92m No game update found, CreamAPI is present[0m.
echo.
echo   -  Press "[101;30m R [0m" to remove [1mCreamAPI[0m and restore the backup, or "[44;97m A [0m" to abort.
echo.
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
echo   # [92m CreamAPI files removed, original file restored[0m.
echo.
echo   - [102;30m Press any key to delete this file too and exit[0m.
echo.
echo.
pause
del /q /f CreamAPI_Tool.cmd
exit

:remover_nocreamapi
echo.
echo   # [91m Game update found or CreamAPI not installed[0m.
echo.
echo   -  Press "[101;30m R [0m" to just remove [1mCreamAPI[0m files, or "[44;97m A [0m" to abort.
echo.
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
echo   # [92m CreamAPI files removed[0m.
echo.
echo   - [102;30m Press any key to delete this file too and exit[0m.
echo.
echo.
pause
del /q /f CreamAPI_Tool.cmd
exit


rem [### CreamAPI update zone ###]

:updater
cls
echo.
echo  ## [107;30m Space Engineers DLC Unlocker v1.2 - CreamAPI - by Lamer87 [0m  [102m   [107m   [101m   [0m
echo.
echo.
echo   # [91m Old CreamAPI version found![0m, what do you want to do?
echo.
echo   -  Press "[43;30m U [0m" to [92mupdate CreamAPI[0m, or "[101;30m R [0m" to remove it.
echo.
echo   -  Press "[44;97m A [0m" or close this window at any time to abort, keeping old CreamAPI files.
echo.
echo.
choice /c:URA
if errorlevel ==3 goto abort
if errorlevel ==2 goto remover_continue
if errorlevel ==1 goto updater_continue

:updater_continue
echo.
echo   ! [43;30m Updating... [0m
echo.
del /q /f steam_api64.dll >nul 2>nul
copy /y Backup\CreamAPI\steam_api64.dll steam_api64.dll
echo.
echo   # [92m CreamAPI updated![0m.
echo.
echo   # [102;30m You can play. [0m - [92m Press any key to exit[0m.
echo.
echo.
pause
exit


rem [### Abort and Errors zone ###]

:abort
echo.
echo.
echo   # [92m Aborted, exiting[0m.
echo.
timeout /t 1 /nobreak >nul
exit

:dll_not_found
echo.
echo   # [91m Something went wrong! missing file "Backup\CreamAPI\steam_api64.dll"[0m
echo.
echo   # [91m Please extract ALL files AND the "Backup" folder from the zip archive again. [0m
echo.
echo   # [92m They must be placed in ...\SpaceEngineers\[102;30mBin64\[0m [92m!!! [0m
echo.
echo.
echo   # [33m If you did everything correctly, your antivirus has blocked CreamAPI. [0m
echo   # [33m Please create an exception in your anitivirus for the file "Backup\CreamAPI\steam_api64.dll". [0m
echo.
echo   # [33m Some antiviruses delete the file from inside the zip, so it may be necessary to: [0m
echo   # [33m disable the antivirus, re-download the archive, extract it to Bin64 folder [0m
echo   # [33m and then create an exception of "Backup\CreamAPI\steam_api64.dll" before re-enabling the antivirus. [0m
echo.
echo.
echo   - [92m Press any key to remove the extracted files and exit[0m.
echo.
echo.
pause
del /q /f cream_api.ini >nul 2>nul
rmdir /q /s Backup >nul 2>nul
del /q /f CreamAPI_Tool.cmd >nul
exit

:ini_not_found
echo.
echo   # [91m Something went wrong! missing file "creamapi.ini"[0m
echo.
echo   # [91m Please extract ALL files AND the "Backup" folder from the zip archive again. [0m
echo.
echo   # [92m They must be placed in ...\SpaceEngineers\[102;30mBin64\[0m [92m!!! [0m
echo.
echo.
echo   - [92m Press any key to remove the extracted files and exit[0m.
echo.
echo.
pause
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
echo.
echo   # [33m If the folder is correct, please check game files from Steam and then try again. [0m
echo.
echo.
echo   - [92m Press any key to remove the extracted files and exit[0m.
echo.
echo.
pause
del /q /f cream_api.ini >nul 2>nul
rmdir /q /s Backup >nul 2>nul
del /q /f CreamAPI_Tool.cmd >nul
exit

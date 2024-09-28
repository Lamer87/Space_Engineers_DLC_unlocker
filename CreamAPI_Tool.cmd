@echo off
cls


rem [### Sorting zone ###]

del /q /f readme.md >nul 2>nul
move /y Backup\Original\"Space Engineers DLC Unlocker - by Lamer87.url" Backup >nul 2>nul
if not exist steam_api64.dll goto dir_wrong
if not exist cream_api.ini goto ini_not_found
if not exist Backup\CreamAPI\steam_api64.dll goto dll_not_found
:restart


rem [CreamAPI update checks]

:updatecheck1
echo N | comp /n=1024 steam_api64.dll Backup\CreamAPI\v4.5.0.0\steam_api64.dll >nul
cls
if errorlevel 1 goto updatecheck2
if errorlevel 0 goto updater

:updatecheck2
echo N | comp /n=1024 steam_api64.dll Backup\CreamAPI\v5.1.0.0\steam_api64.dll >nul
cls
if errorlevel 1 goto updatecheck3
if errorlevel 0 goto updater

:updatecheck3
echo N | comp /n=1024 steam_api64.dll Backup\CreamAPI\v5.2.0.0\steam_api64.dll >nul
cls
if errorlevel 1 goto next
if errorlevel 0 goto updater


rem [Plugin Launcher presence check]

:next
if exist SpaceEngineersLauncher.exe goto pluginlauncherpresent


rem [### Choice zone ###]

:choice
cls
echo.
echo  ## [107;30m Space Engineers DLC Unlocker v1.5 - CreamAPI - by Lamer87 [0m  [102m   [107m   [101m   [0m
echo.
echo.
echo   -  Press "[102;30m C [0m" to Check/install.
echo.
echo   -  Press "[106;30m R [0m" to remove [1mCreamAPI[0m.
echo.
echo   -  Press "[44;97m A [0m" or close this window at any time to abort.
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
echo.
echo   # [92m No game update found[0m. [102;30m CreamAPI is ok! [0m
echo.
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
echo.
echo   -  Press "[102;30m C [0m" to install, or "[44;97m A [0m" to abort.
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
echo.
echo   # [92m No game update found, CreamAPI is present[0m.
echo.
echo.
echo   -  Press "[106;30m R [0m" to just Restore the backup, disabling [1mCreamAPI[0m but keeping files.
echo.
echo   -  Press "[101;30m E [0m" to completely ERASE [1mCreamAPI[0m and restore the backup. Don't keep CreamAPI files.
echo.
echo   -  Press "[107;30m X [0m" to restart the Tool or "[44;97m A [0m" to abort.
echo.
echo.
choice /c:REXA
if errorlevel ==4 goto abort
if errorlevel ==3 goto restart
if errorlevel ==2 goto remover_continue
if errorlevel ==1 goto remover_keep

:remover_continue
echo.
echo   ! [43;30m Erasing... [0m
echo.
del /q /f steam_api64.dll
ren steam_api64_o.dll steam_api64.dll >nul 2>nul
copy /y Backup\Original\steam_api64.dll steam_api64.dll 2>nul
del /q /f cream_api.ini
rmdir /q /s Backup
echo.
echo   # [92m CreamAPI files erased, original file restored[0m.
echo.
echo.
echo   - [102;30m Press any key to delete this file too and exit[0m.
echo.
echo.
pause
del /q /f CreamAPI_Tool.cmd
exit

:remover_keep
echo.
echo   ! [43;30m Restoring original file... [0m
echo.
del /q /f steam_api64.dll
ren steam_api64_o.dll steam_api64.dll >nul 2>nul
copy /y Backup\Original\steam_api64.dll steam_api64.dll 2>nul
echo.
echo   # [92m Original file restored[0m.
echo.
echo.
echo   - [102;30m Press any key to exit[0m.
echo.
echo.
pause
exit

:remover_nocreamapi
echo.
echo   # [91m Game update found or CreamAPI not installed[0m.
echo.
echo.
echo   -  Press "[101;30m E [0m" to completely ERASE [1mCreamAPI[0m. Don't keep CreamAPI files.
echo.
echo   -  Press "[107;30m X [0m" to restart the Tool or "[44;97m A [0m" to abort.
echo.
echo.
choice /c:EXA
if errorlevel ==3 goto abort
if errorlevel ==2 goto restart
if errorlevel ==1 goto remover_nocreamapi_continue

:remover_nocreamapi_continue
echo.
echo   ! [43;30m Erasing... [0m
echo.
del /q /f steam_api64_o.dll >nul 2>nul
del /q /f cream_api.ini
rmdir /q /s Backup
echo.
echo   # [92m CreamAPI files removed [0m.
echo.
echo.
echo   - [102;30m Press any key to delete this file too and exit[0m.
echo.
echo.
pause
del /q /f CreamAPI_Tool.cmd
exit


rem [### Update zone ###]

:updater
cls
echo.
echo  ## [107;30m Space Engineers DLC Unlocker v1.5 - CreamAPI - by Lamer87 [0m  [102m   [107m   [101m   [0m
echo.
echo.
echo   # [91m Old CreamAPI version found![0m What do you want to do?
echo.
echo.
echo   -  Press "[43;30m U [0m" to [92mupdate CreamAPI[0m to the latest version.
echo.
echo   -  Press "[106;30m R [0m" to just restore the original file.
echo.
echo   -  Press "[101;30m E [0m" to completely ERASE [1mCreamAPI[0m.
echo.
echo   -  Press "[105;97m M [0m" if you want to ERASE all Plugin Launcher files (if installed).
echo.
echo   -  Press "[44;97m A [0m" or close this window at any time to abort, keeping old CreamAPI files.
echo.
echo.
choice /c:UREMA
if errorlevel ==5 goto abort
if errorlevel ==4 goto PL_erase
if errorlevel ==3 goto remover_continue
if errorlevel ==2 goto remover_keep
if errorlevel ==1 goto updater_continue

:updater_continue
echo.
echo   ! [43;30m Updating... [0m
echo.
del /q /f steam_api64.dll >nul 2>nul
copy /y Backup\CreamAPI\steam_api64.dll steam_api64.dll
echo.
echo   # [92m CreamAPI updated![0m
echo.
echo   # [102;30m You can play. [0m - [92m Press any key to exit[0m.
echo.
echo.
pause
exit


rem [### Plugin Launcher ### Choice zone ###]

:pluginlauncherpresent
cls
echo.
echo  ## [107;30m Space Engineers DLC Unlocker v1.5 - CreamAPI - by Lamer87 [0m  [102m   [107m   [101m   [0m
echo.
echo   #  [102;30mPlugin Launcher[0m [92mpresence detected. Now works with latest CreamAPI. [0m
echo.
echo.
echo   -  Press "[102;30m C [0m" to Check/install, or "[106;30m R [0m" to remove [1mCreamAPI[0m.
echo.
echo   -  Press "[105;97m M [0m" if you want to ERASE all Plugin Launcher files (keeping CreamAPI).
echo.
echo   -  Press "[44;97m A [0m" or close this window at any time to abort, keeping CreamAPI files.
echo.
echo.
echo   # [33m If you have bugs/crashes using Plugin Launcher, please consider testing the BASE game [0m
echo   # [33m WITHOUT Plugin Launcher, using JUST creamapi, before opening an issue on my github page...[92m ;)[0m
echo.
echo.
choice /c:CRMA
if errorlevel ==4 goto abort
if errorlevel ==3 goto PL_erase
if errorlevel ==2 goto remover
if errorlevel ==1 goto installer


rem [### Plugin Launcher ### ERASE zone ###]

:PL_erase
echo.
echo   # [91m Are you sure you want to delete all Plugin Launcher files ???[0m
echo.
echo   # [33m To also/only delete CreamAPI files, please restart the tool and press "R".[0m
echo.
echo.
echo   -  Press "[105;97m M [0m" if you want to ERASE all Plugin Launcher files.
echo.
echo   -  Press "[107;30m X [0m" to restart the Tool or "[44;97m A [0m" to abort.
echo.
echo.
choice /c:MAX
if errorlevel ==3 goto restart
if errorlevel ==2 goto abort
if errorlevel ==1 goto PL_erase_continue

:PL_erase_continue
echo.
echo   ! [43;30m Removing Plugin Launcher... [0m
echo.
rmdir /q /s Plugins 2>nul
del /q /f 0Harmony.dll 2>nul
del /q /f Newtonsoft.Json.dll 2>nul
del /q /f NuGet.Common.dll 2>nul
del /q /f NuGet.Configuration.dll 2>nul
del /q /f NuGet.Frameworks.dll 2>nul
del /q /f NuGet.Packaging.dll 2>nul
del /q /f NuGet.Protocol.dll 2>nul
del /q /f NuGet.Resolver.dll 2>nul
del /q /f NuGet.Versioning.dll 2>nul
del /q /f PluginLoader.dll 2>nul
del /q /f steam_appid.txt 2>nul
del /q /f SpaceEngineersLauncher.exe 2>nul
del /q /f SpaceEngineersLauncher.exe.config 2>nul
echo.
echo   # [92m Plugin Launcher files removed [0m.
echo.
echo   # [33m Restart the tool if you want to remove (or update) CreamAPI files.[0m
echo.
echo.
echo   -  Press "[107;30m X [0m" to restart the Tool or "[44;97m A [0m" to quit.
echo.
echo.
choice /c:AX
if errorlevel ==2 goto restart
if errorlevel ==1 goto quit


rem [### Abort and Errors zone ###]

:quit
exit

:abort
echo.
echo.
echo   # [92m Aborted, exiting[0m.
echo.
timeout /t 2 /nobreak >nul
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
rmdir /q /s Backup >nul 2>nul
del /q /f cream_api.ini >nul 2>nul
del /q /f CreamAPI_Tool.cmd >nul
exit

:ini_not_found
echo.
echo   # [91m Something went wrong! Missing file "creamapi.ini" [0m
echo.
echo   # [91m Please extract ALL files AND the "Backup" folder from the zip archive again. [0m
echo.
echo.
echo   - [92m Press any key to remove the extracted files and exit[0m.
echo.
echo.
pause
rmdir /q /s Backup >nul 2>nul
del /q /f CreamAPI_Tool.cmd >nul
exit

:dll_not_found
echo.
echo   # [91m Something went wrong! [0m
echo.
echo   # [91m Missing files in "Backup\CreamAPI": [0m
echo.
echo   # [91m there must be the file "steam_api64.dll" and others with same name in subfolders. [0m
echo.
echo   # [91m Please extract ALL files AND the "Backup" folder from the zip archive again. [0m
echo.
echo.
echo   # [33m If you did everything correctly, your antivirus has blocked CreamAPI files. [0m
echo   # [33m Please create an exception in your anitivirus for all the files in "Backup\CreamAPI". [0m
echo.
echo   # [33m Some antiviruses delete the files from inside the zip, so it may be necessary to: [0m
echo   # [33m disable the antivirus, re-download the archive, extract it to Bin64 folder [0m
echo   # [33m and then create an exception of "Backup\CreamAPI\steam_api64.dll" (and same in subfolders), [0m
echo   # [33m before re-enabling the antivirus. [0m
echo.
echo.
echo   - [92m Press any key to remove the extracted files and exit[0m.
echo.
echo.
pause
rmdir /q /s Backup >nul 2>nul
del /q /f cream_api.ini >nul 2>nul
del /q /f CreamAPI_Tool.cmd >nul
exit

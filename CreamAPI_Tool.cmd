@echo off
cls


rem [##### Starting zone #####]

del /q /f readme.md >nul 2>nul
move /y Backup\Original\"Space Engineers DLC Unlocker - by Lamer87.url" Backup >nul 2>nul
rmdir /q /s Backup\CreamAPI\v4.5.0.0 >nul 2>nul
rmdir /q /s Backup\CreamAPI\v5.1.0.0 >nul 2>nul
rmdir /q /s Backup\CreamAPI\v5.2.0.0 >nul 2>nul
if not exist steam_api64.dll goto DIR_wrong
if not exist cream_api.ini goto INI_not_found
if not exist Backup\CreamAPI\steam_api64.dll goto DLL_not_found


:Restart


rem [##### Skipping update check, useless for now (CreamAPI version is 5.3.0.0 since June 2024) #####]

goto Next


rem [##### CreamAPI update check - SKIPPED for now #####]

:UpdateCheck
echo.
echo   ! [43;30m Checking... [0m
echo.
echo N | comp /n=1024 steam_api64.dll Backup\CreamAPI\v5.3.0.0\steam_api64.dll >nul
cls
if errorlevel 1 goto Next
if errorlevel 0 goto Updater


:Next


rem [##### Plugin Launcher presence check #####]

echo.
echo   ! [43;30m Checking... [0m
echo.
if exist SpaceEngineersLauncher.exe goto PluginLauncher_Detected


rem [##### Pulsar presence check #####]

echo.
echo   ! [43;30m Checking... [0m
echo.
if exist Pulsar\Legacy.exe goto Pulsar_Detected


rem [##### CreamAPI presence check #####]

echo N | comp /n=1024 steam_api64.dll Backup\CreamAPI\steam_api64.dll >nul
cls
if errorlevel 1 goto Choice_NOcreamapi
if errorlevel 0 goto Choice



rem [######################### Choice zone #########################]

:Choice
cls
echo.
echo  ## [107;30m Space Engineers DLC Unlocker v1.7.0 - CreamAPI 5.3 - by Lamer87 [0m  [102m   [107m   [101m   [0m
echo.
echo.
echo   # [92m No game update found[0m. [102;30m CreamAPI is ok! [0m
echo.
echo.
echo   -  Press "[106;30m R [0m" to remove [1mCreamAPI[0m.
echo.
echo   -  Press "[44;97m A [0m" or close this window at any time to abort.
echo.
echo.
choice /c:RA
if errorlevel ==2 goto Abort
if errorlevel ==1 goto Remover
echo.
echo.
pause >nul
exit

:Choice_NOcreamapi
cls
echo.
echo  ## [107;30m Space Engineers DLC Unlocker v1.7.0 - CreamAPI 5.3 - by Lamer87 [0m  [102m   [107m   [101m   [0m
echo.
echo.
echo   # [91m CreamAPI not installed (or game recently patched)[0m, do you want to:
echo.
echo     [92m make a new backup of original file and install/restore CreamAPI[0m?
echo.
echo.
echo   -  Press "[102;30m C [0m" to install, or press "[106;30m R [0m" to remove [1mCreamAPI[0m.
echo.
echo   -  Press "[44;97m A [0m" or close this window at any time to abort.
echo.
echo.
choice /c:CRA
if errorlevel ==3 goto Abort
if errorlevel ==2 goto Remover_NOcreamapi
if errorlevel ==1 goto Installer_continue

:Installer_continue
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
pause >nul
exit



rem [######################### Uninstallation zone #########################]

:Remover
echo.
echo   -  Press "[106;30m R [0m" to just Restore the backup, disabling [1mCreamAPI[0m but keeping files.
echo.
echo   -  Press "[101;30m E [0m" to completely ERASE [1mCreamAPI[0m and restore the backup. Don't keep CreamAPI files.
echo.
echo   -  Press "[107;30m X [0m" to restart the Tool or "[44;97m A [0m" to abort.
echo.
echo.
choice /c:REXA
if errorlevel ==4 goto Abort
if errorlevel ==3 goto Restart
if errorlevel ==2 goto Remover_continue
if errorlevel ==1 goto Remover_keep

:Remover_continue
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
pause >nul
del /q /f CreamAPI_Tool.cmd
exit

:Remover_keep
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
pause >nul
exit

:Remover_NOcreamapi
echo.
echo   -  Press "[101;30m E [0m" to completely ERASE [1mCreamAPI[0m. Don't keep CreamAPI files.
echo.
echo   -  Press "[107;30m X [0m" to restart the Tool or "[44;97m A [0m" to abort.
echo.
echo.
choice /c:EXA
if errorlevel ==3 goto Abort
if errorlevel ==2 goto Restart
if errorlevel ==1 goto Remover_NOcreamapi_continue

:Remover_NOcreamapi_continue
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
pause >nul
del /q /f CreamAPI_Tool.cmd
exit



rem [######################### Update zone - DISABLED #########################]

:Updater
cls
echo.
echo  ## [107;30m Space Engineers DLC Unlocker v1.7.0 - CreamAPI 5.3 - by Lamer87 [0m  [102m   [107m   [101m   [0m
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
if errorlevel ==5 goto Abort
if errorlevel ==4 goto PL_erase
if errorlevel ==3 goto Remover_continue
if errorlevel ==2 goto Remover_keep
if errorlevel ==1 goto Updater_continue

:Updater_continue
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
pause >nul
exit



@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@vvvvvvvvvvvvvvvvvvvv


rem [######################### Pulsar - Choice zone #########################]

:Pulsar_Detected
echo N | comp /n=1024 Pulsar\Libraries\Legacy\steam_api64.dll Backup\CreamAPI\steam_api64.dll >nul
cls
if errorlevel 1 goto Pulsar_choice_nocreamapi
if errorlevel 0 goto Pulsar_choice

:Pulsar_choice
cls
echo.
echo  ## [107;30m Space Engineers DLC Unlocker v1.7.0 - CreamAPI 5.3 - by Lamer87 [0m  [102m   [107m   [101m   [0m
echo.
echo.
echo   #  [102;30m Pulsar [0m [92mdetected. [0m
echo.
echo   # [92m No game update found[0m. [102;30m CreamAPI is ok! [0m
echo.
echo.
echo   -  Press "[106;30m R [0m" to remove [1mCreamAPI[0m.
echo.
echo   -  Press "[105;97m M [0m" if you want to ERASE all Pulsar files (keeping CreamAPI).
echo.
echo   -  Press "[44;97m A [0m" or close this window at any time to abort, keeping CreamAPI files.
echo.
echo.
echo   # [33m If you have bugs/crashes using Pulsar, please consider testing JUST the BASE game [0m
echo   # [33m WITHOUT using Pulsar executables, using JUST creamapi, before opening an issue on my github page...[92m ;)[0m
echo.
echo.
choice /c:RMA
if errorlevel ==3 goto Abort
if errorlevel ==2 goto Pulsar_erase
if errorlevel ==1 goto Pulsar_creamapiremover_choice

:Pulsar_choice_nocreamapi
cls
echo.
echo  ## [107;30m Space Engineers DLC Unlocker v1.7.0 - CreamAPI 5.3 - by Lamer87 [0m  [102m   [107m   [101m   [0m
echo.
echo.
echo   #  [102;30m Pulsar [0m [92mdetected. [0m
echo.
echo   # [91m CreamAPI not installed (or Pulsar recently updated)[0m, do you want to:
echo.
echo     [92m make a new backup and install/restore CreamAPI[0m?
echo.
echo.
echo   -  Press "[102;30m C [0m" to install, or "[106;30m R [0m" to remove [1mCreamAPI[0m.
echo.
echo   -  Press "[105;97m M [0m" if you want to ERASE all Pulsar files (keeping CreamAPI).
echo.
echo   -  Press "[44;97m A [0m" or close this window at any time to abort, keeping CreamAPI files.
echo.
echo.
echo   # [33m If you have bugs/crashes using Pulsar, please consider testing JUST the BASE game [0m
echo   # [33m WITHOUT using Pulsar executables, using JUST creamapi, before opening an issue on my github page...[92m ;)[0m
echo.
echo.
choice /c:CRMA
if errorlevel ==4 goto Abort
if errorlevel ==3 goto Pulsar_erase
if errorlevel ==2 goto Pulsar_creamapiremover_choice
if errorlevel ==1 goto Pulsar_installer_continue

:Pulsar_installer_continue
echo.
echo   ! [43;30m Installing... [0m
echo.
copy /y steam_api64.dll Backup\Original\ 2>nul
del /q /f steam_api64_o.dll >nul 2>nul
del /q /f Pulsar\Libraries\Legacy\steam_api64_o.dll >nul 2>nul
del /q /f Pulsar\Libraries\Interim\steam_api64_o.dll >nul 2>nul
ren steam_api64.dll steam_api64_o.dll >nul 2>nul
copy /y Backup\CreamAPI\steam_api64.dll steam_api64.dll 2>nul
copy /y Backup\CreamAPI\steam_api64.dll Pulsar\Libraries\Legacy\steam_api64.dll 2>nul
copy /y Backup\CreamAPI\steam_api64.dll Pulsar\Libraries\Interim\steam_api64.dll 2>nul
copy /y steam_api64_o.dll Pulsar\Libraries\Legacy\steam_api64_o.dll 2>nul
copy /y steam_api64_o.dll Pulsar\Libraries\Interim\steam_api64_o.dll 2>nul
copy /y cream_api.ini Pulsar\Libraries\Legacy\cream_api.ini 2>nul
copy /y cream_api.ini Pulsar\Libraries\Interim\cream_api.ini 2>nul
echo.
echo   # [92m CreamAPI installed/restored[0m.
echo.
echo   # [92m New backup of original file created in "[33m...\Bin64\Backup\Original[0m[92m"[0m.
echo.
echo   # [102;30m You can play. [0m - [92m Press any key to exit[0m.
echo.
echo.
pause >nul
exit



rem [######################### Pulsar - creamapi remove zone #########################]

:Pulsar_creamapiremover_choice
echo.
echo   -  Press "[106;30m R [0m" to just Restore the backup, disabling [1mCreamAPI[0m but keeping files.
echo.
echo   -  Press "[101;30m E [0m" to completely ERASE [1mCreamAPI[0m and restore the backup. Don't keep CreamAPI files.
echo.
echo   -  Press "[107;30m X [0m" to restart the Tool or "[44;97m A [0m" to abort.
echo.
echo.
choice /c:REXA
if errorlevel ==4 goto Abort
if errorlevel ==3 goto Restart
if errorlevel ==2 goto Pulsar_creamapiremover_continue
if errorlevel ==1 goto Pulsar_creamapiremover_keep

:Pulsar_creamapiremover_continue
echo.
echo   ! [43;30m Erasing... [0m
echo.
del /q /f steam_api64.dll >nul 2>nul
del /q /f Pulsar\Libraries\Legacy\steam_api64.dll >nul 2>nul
del /q /f Pulsar\Libraries\Interim\steam_api64.dll >nul 2>nul
ren steam_api64_o.dll steam_api64.dll >nul 2>nul
ren Pulsar\Libraries\Legacy\steam_api64_o.dll steam_api64.dll >nul 2>nul
ren Pulsar\Libraries\Interim\steam_api64_o.dll steam_api64.dll >nul 2>nul
copy /y Backup\Original\steam_api64.dll steam_api64.dll 2>nul
copy /y Backup\Original\steam_api64.dll Pulsar\Libraries\Legacy\steam_api64.dll 2>nul
copy /y Backup\Original\steam_api64.dll Pulsar\Libraries\Interim\steam_api64.dll 2>nul
del /q /f cream_api.ini >nul 2>nul
del /q /f Pulsar\Libraries\Legacy\cream_api.ini >nul 2>nul
del /q /f Pulsar\Libraries\Interim\cream_api.ini >nul 2>nul
rmdir /q /s Backup
echo.
echo   # [92m CreamAPI files erased, original files restored[0m.
echo.
echo.
echo   - [102;30m Press any key to delete this file too and exit[0m.
echo.
echo.
pause >nul
del /q /f CreamAPI_Tool.cmd
exit

:Pulsar_creamapiremover_keep
echo.
echo   ! [43;30m Restoring original file... [0m
echo.
del /q /f steam_api64.dll >nul 2>nul
del /q /f Pulsar\Libraries\Legacy\steam_api64.dll >nul 2>nul
del /q /f Pulsar\Libraries\Interim\steam_api64.dll >nul 2>nul
ren steam_api64_o.dll steam_api64.dll >nul 2>nul
ren Pulsar\Libraries\Legacy\steam_api64_o.dll steam_api64.dll >nul 2>nul
ren Pulsar\Libraries\Interim\steam_api64_o.dll steam_api64.dll >nul 2>nul
copy /y Backup\Original\steam_api64.dll steam_api64.dll 2>nul
copy /y Backup\Original\steam_api64.dll Pulsar\Libraries\Legacy\steam_api64.dll 2>nul
copy /y Backup\Original\steam_api64.dll Pulsar\Libraries\Interim\steam_api64.dll 2>nul
echo.
echo   # [92m Original files restored[0m.
echo.
echo.
echo   - [102;30m Press any key to exit[0m.
echo.
echo.
pause >nul
exit



rem [######################### Pulsar - ERASE zone #########################]

:Pulsar_erase
echo.
echo   # [91m Are you sure you want to delete all Pulsar files,[0m
echo.
echo   # [91m including all plugins ???[0m
echo.
echo.
echo   # [33m If you want, you can make a backup of the Plugins folder before continuing.[0m
echo.
echo   # [33m To also/only delete CreamAPI files, please restart the tool and press "R".[0m
echo.
echo.
echo   -  Press "[105;97m M [0m" if you want to ERASE all Pulsar files.
echo.
echo   -  Press "[107;30m X [0m" to restart the Tool or "[44;97m A [0m" to abort.
echo.
echo.
choice /c:MAX
if errorlevel ==3 goto Restart
if errorlevel ==2 goto Abort
if errorlevel ==1 goto Pulsar_erase_continue

:Pulsar_erase_continue
echo.
echo   ! [43;30m Removing Pulsar... [0m
echo.
rmdir /q /s Pulsar 2>nul
echo.
echo   # [92m Pulsar files removed [0m.
echo.
echo   # [33m Restart the tool if you want to remove CreamAPI too.[0m
echo.
echo.
echo   -  Press "[107;30m X [0m" to restart the Tool or "[44;97m A [0m" to quit.
echo.
echo.
choice /c:AX
if errorlevel ==2 goto Restart
if errorlevel ==1 goto Quit


@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@^^^^^^^^^^^^^^^^^^^^



rem [######################### Plugin Launcher - Choice zone #########################]

:PluginLauncher_Detected
echo N | comp /n=1024 steam_api64.dll Backup\CreamAPI\steam_api64.dll >nul
cls
if errorlevel 1 goto PL_choice_nocreamapi
if errorlevel 0 goto PL_choice

:PL_choice
cls
echo.
echo  ## [107;30m Space Engineers DLC Unlocker v1.7.0 - CreamAPI 5.3 - by Lamer87 [0m  [102m   [107m   [101m   [0m
echo.
echo.
echo   #  [102;30mPlugin Launcher[0m [92mdetected. [0m
echo.
echo   # [92m No game update found[0m. [102;30m CreamAPI is ok! [0m
echo.
echo.
echo   -  Press "[106;30m R [0m" to remove [1mCreamAPI[0m.
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
choice /c:RMA
if errorlevel ==3 goto Abort
if errorlevel ==2 goto PL_erase
if errorlevel ==1 goto Remover

:PL_choice_nocreamapi
cls
echo.
echo  ## [107;30m Space Engineers DLC Unlocker v1.7.0 - CreamAPI 5.3 - by Lamer87 [0m  [102m   [107m   [101m   [0m
echo.
echo.
echo   #  [102;30mPlugin Launcher[0m [92mdetected. [0m
echo.
echo   # [91m CreamAPI not installed (or game recently patched)[0m, do you want to:
echo.
echo     [92m make a new backup of original file and install/restore CreamAPI[0m?
echo.
echo.
echo   -  Press "[102;30m C [0m" to install, or "[106;30m R [0m" to remove [1mCreamAPI[0m.
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
if errorlevel ==4 goto Abort
if errorlevel ==3 goto PL_erase
if errorlevel ==2 goto Remover
if errorlevel ==1 goto Installer_continue



rem [######################### Plugin Launcher - ERASE zone #########################]

:PL_erase
echo.
echo   # [91m Are you sure you want to delete all Plugin Launcher files,[0m
echo.
echo   # [91m including all plugins ???[0m
echo.
echo.
echo   # [33m If you want, you can make a backup of the Bin64/Plugins folder now.[0m
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
if errorlevel ==3 goto Restart
if errorlevel ==2 goto Abort
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
echo   # [33m Restart the tool if you want to remove CreamAPI too.[0m
echo.
echo.
echo   -  Press "[107;30m X [0m" to restart the Tool or "[44;97m A [0m" to quit.
echo.
echo.
choice /c:AX
if errorlevel ==2 goto Restart
if errorlevel ==1 goto Quit



rem [######################### Abort and Errors zone #########################]

:Quit
exit

:Abort
echo.
echo.
echo   # [92m Aborted, exiting[0m.
echo.
timeout /t 2 /nobreak >nul
exit

:DIR_wrong
echo.
echo   # [91m Something went wrong! [0m
echo.
echo   # [91m Please make sure to place the 2 files and the "Backup" folder in the RIGHT place! [0m
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
pause >nul
rmdir /q /s Backup >nul 2>nul
del /q /f cream_api.ini >nul 2>nul
del /q /f CreamAPI_Tool.cmd >nul
exit

:INI_not_found
echo.
echo   # [91m Something went wrong! Missing file "creamapi.ini" [0m
echo.
echo   # [91m Please extract ALL files AND the "Backup" folder from the zip archive again. [0m
echo.
echo.
echo   - [92m Press any key to remove the extracted files and exit[0m.
echo.
echo.
pause >nul
rmdir /q /s Backup >nul 2>nul
del /q /f CreamAPI_Tool.cmd >nul
exit

:DLL_not_found
echo.
echo   # [91m Something went wrong! [0m
echo.
echo   # [91m Missing file "Backup\CreamAPI\steam_api64.dll" [0m
echo.
echo   # [91m Please extract ALL files AND the "Backup" folder from the zip archive again. [0m
echo.
echo.
echo   # [33m If you did everything correctly, your antivirus has blocked CreamAPI [0m
echo   # [33m Please create an exception in your anitivirus. [0m
echo.
echo   # [33m Some antiviruses delete the files from inside the zip, so it may be necessary to: [0m
echo   # [33m disable the antivirus, re-download the archive, extract it to Bin64 folder [0m
echo.
echo   # [33m after that, create an exception for "Backup\CreamAPI\steam_api64.dll", [0m
echo   # [33m before re-enabling the antivirus. [0m
echo.
echo.
echo   - [92m Press any key to remove the extracted files and exit[0m.
echo.
echo.
pause >nul
rmdir /q /s Backup >nul 2>nul
del /q /f cream_api.ini >nul 2>nul
del /q /f CreamAPI_Tool.cmd >nul
exit

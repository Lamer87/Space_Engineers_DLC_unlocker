## [Space Engineers DLC Unlocker](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)

### ✔️ All DLCs unlocked up to: `v1.203` - *Warfare Evolution & Decorative Pack #3* 🛞

- 🔓 **Unlocker version: `v0.4`**
- 🚸 Easy with an installer/checker and a remover.
- 🔄 Game patches proof! if it stops working, just run the checker! (new DLC = update needed)
- 🍦 Now using CreamAPI, already set up for Space Engineers! The old method no longer works.
- 🍨 If you know how to, you can even use [CreamInstaller](https://github.com/pointfeev/CreamInstaller).

---
>[💾 Click to download v0.4](https://mega.nz/file/WdgnmSAb#ofX0CJPxVFiqCMlhbZSuBdz7LF2ruweeaz5RE8RXm8w) from Mega  
<!-- >[💾 Click to download v?.?](https://github.com/Lamer87/Space_Engineers_DLC_unlocker/archive/refs/heads/main.zip) from GitHub, or click the green **`Code`** button then **`Download ZIP`**  
Note: if you use the GitHub one, the files needed are inside the folder in the archive-->
>❗❗❗ PLEASE NOTE ❗❗❗ if you are already using the v0.1 ❗❗❗  
just restore the file from "backup" folder back to "Bin64" **BEFORE** applying the v0.4,  
then just follow the installation guide.  
If you are downloading v0.4 and you are not using v0.1, please ignore this warning.
---
[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)
- 🕹️ ***Installation***:
  - Download from above.
  - Open your "Bin64" game folder, example:  
    `C:\Program Files (x86)\Steam\steamapps\common\SpaceEngineers\Bin64\`
  - ❗ If you are already using the v0.1 RESTORE the file inside "backup" folder to the "Bin64" game folder. ❗  
    ❗ if you don't do this, you will have to recheck all game files from steam. ❗
  - Unzip all files and the folder from the archive in the game "Bin64" folder.
  - Run `CreamAPI_Checker.cmd` to install CreamAPI, it automatically makes necessary backup.  
    Note: If the game is on "C:" drive, you may need to run it using mouse right button, run as admin.
  - You can play.

[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)
- 🗑️ ***Uninstall***:
  - Just run `CreamAPI_Remover.cmd` to delete all CreamAPI files.  
    Note: Don't worry if the game has been updated in the meantime, the remover knows it ;)

[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)
- 🔄 ***If a game patch breaks the unlocker***:
  - Just run `CreamAPI_Checker.cmd`, it recognizes that CreamAPI is no longer present and takes action.  
    It is not necessary to download a new version of the unlocker when a game patch breaks CreamAPI,  
    just run the checker, however, when a new DLC comes out you have to download the new unlocker version.

[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)
---
- 📂 ***Files and folders in the archive `v0.4`***:
  - `cream_api.ini` : the config file of CreamAPI
  - `CreamAPI_Checker.cmd` : install CreamAPI // check if a game update occur, and restore CreamAPI
  - `CreamAPI_Remover.cmd` : the file you need to easy remove CreamAPI and restore all to default
  - `Backup\CreamAPI\steam_api64.dll` : the CreamAPI file used by the installer
  - `Backup\Original\` : an empty folder used by the installer for the original file backup
  - `Backup\link` : a link to this page

[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)
---
- 📇 ***Changelog***
  - v0.1: first manual version.
  - v0.2: automated version with easy installation (not released, no support for new game patches).
  - v0.3: easier installation/removal and support for new game patches.
  - v0.4: removed a useless file, improved cmd files to prevent errors and added colors.

[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)

---

- 💡 ***How the new Installer and Remover works, newbies proof***:

  - Installer `CreamAPI_Checker.cmd`:  
    The installer is used both to install CreamAPI and to check if everything is ok after a game update.  
    What does he do exactly? if CreamAPI is not yet present in the case of a new installation or  
    after an update that replaces and updates the "steam_api64.dll" file,  
    it creates a backup of the new original file, and restores the functioning of CreamAPI.  
    So, if the game gets updated, you don't even have to download a new version of the unlocker,  
    just run the checker to restore CreamAPI.  
    If it detects that CreamAPI is present and ready, it does nothing.  

  - Remover `CreamAPI_Remover.cmd`:  
    The remover first checks if the game has undergone an update that has already replaced  
    the "steam_api64.dll" file or if CreamAPI is still present,  
    then removes everything accordingly to restore the initial situation depending on the specific case.  

  - Both Installer and Remover were created to work regardless of the game path,  
    i.e. if you have the game on "C:", "E:\games", "Y:\folder" etc. it works anyway.

[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)

---

- ⚠️ ***Troubleshooting***:

  - If your antivirus say something, make an exception for the "steam_api64.dll" file.  
    (it's safe, but it's like a crack and software houses don't like it when you play their games for free)

  - If you are not sure and want to restore default files via steam:  
    <details><summary>click here to show how.</summary><p>

    ————————————————————————————————————————  

    Start file checking:  

    - Directly from your browser:  

      Copy/paste this link into the url bar and press Enter (even with Steam closed)  
      ```
      steam://validate/244850
      ```

    - From Steam:  

      -Right click on Space Engineers, then Properties  
      -Select "Local Files" on the left, then "Verify integrity of game files".

    ————————————————————————————————————————  

    </p></details>

[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)

---

- 📜 ***Notes***:

  - This unlocker is meant to unlock DLC blocks, so you can use them without paying for DLC.

    - Unfortunately, skins and emotes cannot be unlocked.

  - I will update the unlocker if needed, or right after a new DLC release.

    -  A new dlc requires editing cream_api.ini to add the [new dlc code](https://steamdb.info/app/244850/dlc).

  - If you want to buy the game:
    - Space Engineers on [Steam Store](https://store.steampowered.com/app/244850/Space_Engineers/)
    - Space Engineers on [CDKeys.com](https://www.cdkeys.com/catalogsearch/result/?q=space%20engineers)

[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)

---

- 🧰 ***What I did to set up CreamAPI***:
  - Downloaded CreamAPI from the [source page](https://cs.rin.ru/forum/viewtopic.php?f=29&t=70576) (cs.rin.ru)
  - Checked out the Space Engineers DLC on its [database page](https://steamdb.info/app/244850/dlc) (steamdb.info)
  - Edited the creamapi.ini file based on how the game works (dll and other stuff) and its DLCs
  - Opened the folder:
    `C:\Program Files (x86)\Steam\steamapps\common\SpaceEngineers\Bin64\`
  - Renamed the file "steam_api64.dll" to "steam_api64_o.dll"
  - Placed here the CreamAPI files ("creamapi.ini" and the new "steam_api64.dll")
  - Started the game, all dlcs unlocked.

[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)

---

- 🧊 If you want to play the **Frostbite Scenario**, you need some other files:  

  - [Frostbite Scenario unlocker](https://github.com/Lamer87/Space-Engineers-Frostbite-Scenario-Unlocker) (+ my DLC unlocker = definitely works)

[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)

---

<details><summary> 📌 Click to show dlc unlockers for old game versions (.sbc file method).</summary><p>

  Automatons 1.202 and before

  - by [Wref](https://github.com/wrefgtzweve/SpaceEngineersDLCUnlocker) [for v1.202]
  - by [0x000015](https://github.com/0x000015/SpaceEngineers-DLC-Bypass) [for v1.201]
  - by [AdrianOkay](https://github.com/AdrianOkay/SpaceEngineersDLC-Unlocker) [for v1.200]

</p></details>

[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)

---



<!-- -->
<!-- Useless code to use occasionally:

# 🚧 UPDATING - PLEASE WAIT! 🔄
# just few minutes and the new version is ready!
[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1000"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker)

---
<fino all'inizio di questa riga, incollare tutto all'inizio del readme


img download button:
[<img src="https://i.ibb.co/JxM2nh7/Donwload-button-png-LITE.png" width="175"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker/archive/refs/heads/main.zip)

img empty:
[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)

✔️⚠️❗💡🔄🔂🍦🛞🕹️📇📜📂🧰🚧🇮🇹🧊📌🔗🔓🚸
-->

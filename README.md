## Space Engineers DLC Unlocker

### ✔️ All DLCs unlocked up to: `v1.203` - *Warfare Evolution & Decorative Pack #3* 🛞

### 🔓 **Unlocker version: `v0.6`**

- 🚸 Easy installer/remover.
- 🔄 Game patches proof! if it stops working, just run the checker! (update needed only for new DLC)
- 🍦 Now using CreamAPI, properly configured for Space Engineers! The old method no longer works.
- 🍨 If you know how to, you can even use [CreamInstaller](https://github.com/pointfeev/CreamInstaller) (compatible with a lot of games).

---
>[💾 Download v0.6](https://mega.nz/file/qB4hxBiC#ER_8_o-_s6t0bonfRitO2IH2zeJGnua7W3cpcnj1hV8) - from Mega.nz  
 [💾 Download v0.6](https://github.com/Lamer87/Space_Engineers_DLC_unlocker/archive/refs/heads/main.zip) - from GitHub, same as: click the green **`Code`** button then **`Download ZIP`**  

>Backward compatible with all versions, just drop it in the "Bin64" folder and run CreamAPI_Tool.cmd,  
>even without removing previous version first, the tool takes care of everything.  
>If you use the GitHub zip: necessary files and folder to extract are INSIDE the single folder in the archive.
---
[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)
- 🕹️ ***Installation***:
  - 1 - Download from above
  - 2 - Open your "Bin64" game folder, example:  
    `C:\Program Files (x86)\Steam\steamapps\common\SpaceEngineers\Bin64\`
  - 3a- (Mega.nz zip) unzip all files and folder from the zip archive in the game "Bin64" folder
  - 3b- (GitHub zip) unzip all files and folder from **INSIDE** `zip\...main folder\` to the game "Bin64" folder
  - 4 - Run `CreamAPI_Tool.cmd` and press "C" to install CreamAPI, it automatically makes necessary backup  
    Note: If the game is on "C:" drive, you may need to run it using mouse right button, run as admin
  - 5 - You can play.

[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)
- 🗑️ ***Uninstall***:
  - Run `CreamAPI_Tool.cmd` and press "R" to delete all CreamAPI files.  
    Note: Don't worry if the game has been updated in the meantime, it checks first ;)

[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)
- 🔄 ***If a game patch breaks the unlocker***:
  - Run `CreamAPI_Tool.cmd` and press "C", it recognizes that CreamAPI is no longer present and takes action.  
    It is not necessary to download a new version of the unlocker when a game patch breaks CreamAPI,  
    just run the "Tool + C", however when a new DLC comes out you have to download the new unlocker version.

[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)
---
- 📂 ***Files and folders of `v0.6`***:
  - `cream_api.ini` : the config file of CreamAPI
  - `CreamAPI_Tool.cmd` : install / check / remove CreamAPI
  - `Backup\CreamAPI\steam_api64.dll` : the CreamAPI file used by the installer
  - `Backup\Original\` : an empty folder used by the installer for the original file backup
  - `Backup\url_link` : a link to this page

[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)
---
- 📇 ***Changelog***
  - v0.1: first manual version.
  - v0.2: automated version with easy installation (not released cause no support for new game patches).
  - v0.3: easier installation/removal and support for new game patches.
  - v0.4: removed a useless file, improved cmd files to prevent errors and added colors.
  - v0.5: compatible with v0.1, if you have v0.1 you no longer needed to manually restore backup first.
  - v0.6: single .cmd tool with some fixes to the code, backward compatible with all versions, .ini revised.

[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)

---

- 💡 ***How the new Tool works, newbies proof***:

  - Installer `CreamAPI_Tool.cmd + press C`:  
    The installer is used both to install CreamAPI and to check if everything is ok after a game update.  
    What does it do exactly? if CreamAPI is not yet present so in the case of a new installation or  
    after an update that replaces and updates the "steam_api64.dll" file,  
    it creates a backup of the new original file and installs/restores CreamAPI.  
    So, if the game gets updated, you don't even have to download a new version of the unlocker,  
    just run the Tool+C to restore CreamAPI.  
    If it detects that CreamAPI is present and ready, it does nothing.  
    The only time you need to update the unlocker is when a new DLC is released.  

  - Remover `CreamAPI_Tool.cmd + press R`:  
    The remover first checks if the game has undergone an update that has already replaced  
    the "steam_api64.dll" file or if CreamAPI is still present,  
    then removes everything accordingly to restore the initial situation depending on the specific case.  

  - The Tool works regardless of the game path,  
    i.e. if you have the game on "C:", "E:\games", "Y:\folder\steam" etc., it works anyway.

[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)

---

- ⚠️ ***Troubleshooting***:

  - If your antivirus say something, make an exception for the "steam_api64.dll" file.  
    (it's safe, but software houses don't like it when you play their games for free)

  - If you are not sure and want to restore default files through steam:  
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

- 🧊 If you want to play the **Frostbite "Scenario"**, you need some other files:  

  - [Frostbite Scenario unlocker](https://github.com/Lamer87/Space-Engineers-Frostbite-Scenario-Unlocker) (+ CreamAPI = definitely works)

[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)

---

<details><summary> 🧰 Click to show what I did to set up CreamAPI:</summary><p>

  - Downloaded CreamAPI from the [source page](https://cs.rin.ru/forum/viewtopic.php?f=29&t=70576) (cs.rin.ru)
  - Checked out the Space Engineers DLC on its [database page](https://steamdb.info/app/244850/dlc) (steamdb.info)
  - Edited the creamapi.ini file based on how the game works (dll and other stuff) and its DLCs
  - Opened the folder:
    `C:\Program Files (x86)\Steam\steamapps\common\SpaceEngineers\Bin64\`
  - Renamed the file "steam_api64.dll" to "steam_api64_o.dll" (it's required)
  - Placed here the CreamAPI files ("creamapi.ini" and the new "steam_api64.dll")
  - Started the game = all dlcs unlocked.

</p></details>

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


img empty:
[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)

img download button:
[<img src="https://i.ibb.co/JxM2nh7/Donwload-button-png-LITE.png" width="175"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker/archive/refs/heads/main.zip)

main title link:
(https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)

✔️⚠️❗💡🔄🔂🍦🛞🕹️📇📜📂🧰🚧🇮🇹🧊📌🔗🔓🚸
-->

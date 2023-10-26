## [Space Engineers DLC Unlocker](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)

### ✔️ All DLCs unlocked up to: `v1.203.5` - *Anniversary Pack* 🎂

### 🔓 **Unlocker version: `v0.8`**

- 🚸 Easy single Tool installer / checker / remover, all automated!
- 🔄 Game patches proof! if it stops working, just run the Tool! (update needed only for new DLC)

---
>[💾 v0.7 Download from Mega.nz] UPLOADING : `file.zip \ *unlocker files*`  

>[💾 v0.8 Download from GitHub](https://github.com/Lamer87/Space_Engineers_DLC_unlocker/archive/refs/heads/main.zip) : `file.zip \ Space_Engineers_DLC_unlocker-main \ *unlocker files*`
<!-- same as: click the green **`Code`** button then **`Download ZIP`** -->

---

- 🕹️ ***Installation***:
  - 1 - Download from above
  - 2 - Open your **"Bin64"** game folder, example:  
    `C:\Program Files (x86)\Steam\steamapps\common\SpaceEngineers\Bin64\`
  - 3a- (Mega.nz zip) unzip all files and "Backup" folder from the zip archive to the game "Bin64" folder
  - 3b- (GitHub zip) unzip all files and "Backup" folder from **INSIDE** `zip\...main folder\` to the "Bin64" folder  
    IMPORTANT: the "Backup" folder is also NECESSARY for operation!
  - 4 - Run `CreamAPI_Tool.cmd` and press "**C**"(x2) to install CreamAPI, it automatically makes necessary backup  
    Note1: If the game is on "C:" drive, you may need to run it using mouse right button, run as admin  
    Note2: If you already own some DLC please go to the related section below, before playing  
    Note3: If there is any problem, please check the "Troubleshooting" section below
  - 5 - You can play.

[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)
- 🗑️ ***Uninstall***:
  - Run `CreamAPI_Tool.cmd` and press "**R**"(x2) to delete all CreamAPI files.  
    Note: Don't worry if the game has been updated in the meantime, it checks first ;)

[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)
---
- 🔄 ***If a game patch breaks the unlocker***:
  - Run `CreamAPI_Tool.cmd` and press "**C**",  
    if it recognizes that CreamAPI is no longer present, press "**C**" a second time.  
    It is not necessary to download a new version of the unlocker when a game patch breaks CreamAPI,  
    just run the Tool + "**C**"(x2), however when a new DLC comes out you need the new unlocker version.

[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)
- 💸 ***If you already own some DLC***:
  - You need to remove the lines corresponding to your owned DLCs, from the "cream_api.ini" file, so:
    - Follow the instructions for "Installation" first
    - In the game "Bin64" folder, open `cream_api.ini` with a text editor like notepad
    - Look below for the lines with the DLC codes and names
    - Remove the entire line(s) corresponding to the DLC(s) you already own
    - Save the file and backup it if you want
  - Now everything should work fine.
  - If you purchased a DLC but deactivated it from Steam, leave it in the list.  
    Example: the Deluxe DLC, in addition to unlocking an few skins, makes you download a few GB  
    of useless files related to a very old vanilla version of the game.  
    With this method you can unlock just the blocks, keeping the dlc deactivated from Steam  
    and therefore without downloading few GB of data (but losing dlc related skins).

[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)
---
- 📂 ***Files and folders of `v0.8`***:
  - `cream_api.ini` : CreamAPI config file
  - `CreamAPI_Tool.cmd` : Install / Check / Remove CreamAPI
  - `Backup\CreamAPI\steam_api64.dll` : CreamAPI dll used by the installer
  - `Backup\Original\` : empty folder used by the installer for the original dll backup
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
  - v0.7: prevents extraction errors and using the wrong folder, other fixes to the code and compatibility.

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
    then removes it accordingly, depending on the specific case.

  - The Tool works regardless of the game path,  
    i.e. if you have the game on "C:\", "E:\games", "Y:\folder\steam" etc., it works anyway.

[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)

---

- ⚠️ ***Troubleshooting***:

  - If your antivirus say something, make an exception for the "steam_api64.dll" file.  
    (it's safe, but software houses don't like it when you play their games for free)

  - If you get the "Windows protected your PC" message when you launch "CreamAPI_Tool.cmd":  
    please see [this thread](https://github.com/Lamer87/Space_Engineers_DLC_unlocker/discussions/40)

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
    - Now using CreamAPI, configured for Space Engineers. The old method no longer works.
    - Anyway, Armor Skins and Emotes cannot be unlocked.
    - It is not possible to paste DLC items contained in projects when playing on a server.  
      But you can paste the corresponding ones of the dcls you purchased,  
      just check out at the above section: "***If you already own some DLC***".

  - I will update the unlocker if needed, or right after a new DLC release.
    - A new dlc requires editing cream_api.ini to add the [new dlc code](https://steamdb.info/app/244850/dlc).
    - If you want you can also add it by yourself, towards the end of the cream_api.ini file.
    - If you know how to, you can use [CreamInstaller](https://github.com/pointfeev/CreamInstaller), compatible with a lot of games.

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

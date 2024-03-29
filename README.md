## [Space Engineers DLC Unlocker](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)

### ✔️ All DLCs unlocked up to: `v1.203.6` - *Anniversary Pack* 🎂

### 🔓 **Unlocker: `v1.1`** ([changelog](https://github.com/Lamer87/Space_Engineers_DLC_unlocker?tab=readme-ov-file#-4))
### 🍦 **CreamAPI: `v5.1`** (previous: v4.5)

- ❗ From CreamAPI page: fixed a typo in code while reading SteamClient version (for Space Engineers)
- 🚸 Easy single tool: installer / checker / UPDATER (new) / remover, all automated!
- 🔄 Game patches proof! if it stops working, just rerun the tool!
- 🔕 Update needed only for new DLC or new CreamAPI version.
---
- ❗ Linux/OSX version REMOVED because it was a mess. See [here](https://github.com/Lamer87/Space_Engineers_DLC_unlocker/discussions/45) (no knowledge to make it work like Win version).
- ❗ For now, stick to manual installation and uninstallation instructions.


---
>[💾 v1.1 Download from Mega.nz](https://mega.nz/file/fZJzFIZZ#o4o6ssFZc3nVzUepFu4PcJ7pT1TjNM5FgHOtl1yrvec) : `file.zip \ *unlocker files*`  

>[💾 v1.1 Download from GitHub](https://github.com/Lamer87/Space_Engineers_DLC_unlocker/archive/refs/heads/main.zip) : `file.zip \ Space_Engineers_DLC_unlocker-main \ *unlocker files*`
<!-- same as: click the green **`Code`** button then **`Download ZIP`** -->

> If you have an old version, no problem! You can easily extract the new version overwriting the old one in  
> Bin64 folder without any trouble, then just run the Tool and you will be prompted to update CreamAPI.

---
<br>

### - 🕹️ ***Installation with Tool:***
  - 1 - Download from above
  - 2 - Open your **"Bin64"** game folder, example:  
    `C:\Program Files (x86)\Steam\steamapps\common\SpaceEngineers\Bin64\`
  - 3a- (Mega.nz zip) unzip files and "Backup" folder from the zip, to the game "Bin64" folder
  - 3b- (GitHub zip) unzip files and "Backup" folder from `zip\...main` folder, to the "Bin64" folder  
    ❗ IMPORTANT: the "Backup" folder is NECESSARY!
  - 4 - Run `CreamAPI_Tool.cmd` and press "**C**"(x2) to install CreamAPI
  - 5 - **If you already own any DLC** please SEE the [related section](https://github.com/Lamer87/Space_Engineers_DLC_unlocker?tab=readme-ov-file#-2) below before playing
  - 6 - You can play.

  Notes:  
    - Necessary backup automatically done, you can find it in "`...\Bin64\Backup\Original\`"  
    - There is a check if you already have the old version, which asks you to update  
    - If the game is on "C:" drive you may need to run it using mouse right button, run as admin  
    - If there is any problem please check the [Troubleshooting section](https://github.com/Lamer87/Space_Engineers_DLC_unlocker?tab=readme-ov-file#-3) below


[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)
---
#### - 🗑️ ***Uninstallation with Tool:***
  - Run `CreamAPI_Tool.cmd` and press "**R**"(x2) to delete all CreamAPI files.

    Note: Don't worry if the game has been updated in the meantime,  
    tool will first check, then if necessary restore the backup. ;)

<br>

---
<br>

### - 🪛 ***Manual Installation:***
  - 1 - Download one the archives and extract it to your desktop.
  - 2 - Now open your **"Bin64"** game folder, example:  
    `C:\Program Files (x86)\Steam\steamapps\common\SpaceEngineers\Bin64\`
  - 3 - Make a backup of the file `steam_api64.dll` in another folder (if somethings goes wrong)
  - 4 - Rename the legit Bin64\ `steam_api64.dll` to `steam_api64_o.dll` (adding an underscore and letter "o")
  - 5 - Copy `cream_api.ini` from the extracted archive to the `Bin64` folder
  - 6 - Copy `Backup\CreamAPI\steam_api64.dll` from the extracted archive to the `Bin64` folder (just the file!)
  - 7 - **If you already own any DLC** please SEE the [related section](https://github.com/Lamer87/Space_Engineers_DLC_unlocker?tab=readme-ov-file#-2) below before playing
  - 8 - You can play.

  Notes:  
    - If there is any problem please check the [Troubleshooting section](https://github.com/Lamer87/Space_Engineers_DLC_unlocker?tab=readme-ov-file#-3) below  
    - If a game patch breaks the unlocker (overwritten `steam_api64.dll` with a new one):  
      delete `steam_api64_o.dll` and redo installation. CreamAPI dll takes ~680kb, a legit one takes ~290kb


[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)
---
#### - 🚮 ***Manual Uninstallation:***
  - 1 - Chek Notes below FIRST!
  - 2 - Delete `steam_api64.dll` and `cream_api.ini`
  - 3 - Rename `steam_api64_o.dll` to `steam_api64.dll` (or restore your backup)

  Notes:  
    - If the game updates to a new version the `steam_api64.dll` file, just remove `steam_api64_o.dll`  
    - How can I find out if the game has been updated? CreamAPI dll takes ~680kb, a legit one takes ~290kb  
    - If something goes wrong, take a look at the [Troubleshooting section](https://github.com/Lamer87/Space_Engineers_DLC_unlocker?tab=readme-ov-file#-3) below to check files

<br>

---
---

- 🧯 ***If a game patch breaks the unlocker:***
  - If you used the tool: run `CreamAPI_Tool.cmd` and press "**C**",  
    if it recognizes that CreamAPI is no longer present, just press "**C**" another time.
  - If you did manual installation, remove the file `steam_api64_o.dll` then redo "Manual Installation"

  Note:  
    It is not necessary to download a new version of the unlocker when a game patch breaks CreamAPI,  
    just run the tool and press "**C**"(x2).  
    However when a new DLC comes out (or if creamapi is outdated) you need the new unlocker version.  
    For a new DLC, you can just edit "cream_api.ini", there are tips inside it.

[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)
---
- 💸 ***If you already own any DLC:***
  - You need to remove the lines corresponding to your owned DLCs from the "cream_api.ini" file, so:
    - First, install CreamAPI (via tool or manual).
    - Open "Bin64" folder and edit `cream_api.ini` with a text editor like notepad.
    - Look for the lines with DLCs code numbers and names.
    - Remove the ENTIRE line(s) corresponding to the DLC(s) you OWN.
    - Save the file and back it up if you want, so you don't lose it during uninstallation.
    - Now everything should work fine.

  - If you disabled any DLC from Steam game settings, leave it in the list.  
    Example: the Deluxe DLC in addition to unlocking few skins, makes you download 3GB  
    of useless files related to a very old vanilla version of the game.  
    With this method you can unlock those blocks, keeping the dlc deactivated from Steam  
    and therefore without downloading 3GB of data, but you lose dlc related skins.


[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)
---

- ⚠️ ***Troubleshooting:***

  - 🦠 If your antivirus detects the "steam_api64.dll" file, make an exception for it.  
    it's safe, but software houses don't like it when you play their games (or dlcs) for free.
  <br>

  - 🛡️ If you get the message "Windows protected your PC" when you launch "CreamAPI_Tool.cmd":  
    <details><summary>click here to show a little guide.</summary><p>

    ————————————————————————————————————————  
    ————————————————————————————————————————  

    It may happen that Windows shows you this message to prevent the execution of the file,
    which is obviously just a batch that moves/copies/deletes files related to CreamAPI.

    How to run the Tool:


    - 1 - Press on "More info"
    <br>

    [<img src="https://i.ibb.co/16gFzwL/Windows10-Smart-Screen-Blocked1.png" width="500"/>](https://i.ibb.co/16gFzwL/Windows10-Smart-Screen-Blocked1.png)

    <br>
    <br>

    - 2 - Press on "Run anyway"
    <br>

    [<img src="https://i.ibb.co/DPdbCpz/Windows10-Smart-Screen-Blocked2.png" width="500"/>](https://i.ibb.co/DPdbCpz/Windows10-Smart-Screen-Blocked2.png)


    ————————————————————————————————————————  
    ————————————————————————————————————————  

    <br>
    <br>

    </p></details>
  <br>

  - ☑️ If you are not sure and you want to restore default files through Steam:  
    <details><summary>click here to show how.</summary><p>

    ————————————————————————————————————————  
    ————————————————————————————————————————  

    Start the game files check:  

    - Directly from your browser:  

      Copy/paste this link into the url bar and press Enter (even with Steam closed)  
      ```
      steam://validate/244850
      ```
    <br>

    - From Steam:  

      -Right click on Space Engineers, then Properties  
      -Select "Local Files" on the left, then "Verify integrity of game files".

    ————————————————————————————————————————  
    ————————————————————————————————————————  

    </p></details>

<br>

---

- 📂 ***Files and folders of `v1.1`:***
  - `cream_api.ini` : CreamAPI config file (you can edit unlocked DLCs here)
  - `CreamAPI_Tool.cmd` : Install / Check / Update / Remove CreamAPI
  - `Backup\CreamAPI\steam_api64.dll` : CreamAPI dll file
  - `Backup\CreamAPI\old_v4.5.0.0\steam_api64.dll` : old CreamAPI (for update check)
  - `Backup\Original\` : empty folder used by the installer for the original dll backup
  - `Backup\url_link` : a link to this page


[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)
---
- 📑 ***Changelog***:

    <details><summary>click here to show old versions.</summary><p>

    ————————————————————————————————————————  

    - v0.1: First manual installation version. Uses CreamAPI 4.5.0.0 (till unlocker v1.0).
    - v0.2: (no public release) Automated tools version with easy installation. No support for game patches.
    - v0.3: Easier installation/removal and support for new game patches.
    - v0.4: Removed a useless file. Improved tools to prevent errors. Added colors.
    - v0.5: Compatibility with v0.1, it is no longer necessary to restore the backup first.
    - v0.6: Single tool.cmd with fixes to the code. Backward compatible with all versions. ".ini" revised.
    - v0.7: Prevents extraction errors and using the wrong folder. Other fixes to code and compatibility.
    - v0.8: Added dlc "Anniversary Pack". Reuploaded 8 November 2023 fixing wrong version displayed.
    - v1.0: Added Linux/OSX support, thanks to DeathCamel58
    <br>

    ————————————————————————————————————————  

    </p></details>

    - v1.1:  
            - Updated CreamAPI from 4.5.0.0 to 5.1.0.0 (contains a specific fix for Space Engineers)  
            - The tool detects if you have the old CreamAPI version and prompts you to update  
            - Added tips to the tool if you get errors, as well as small additions to other messages  
            - Added tips to cream_api.ini, to make it easier for you if you want to make any changes  
            - You can find the old 4.5.0.0 CreamAPI in the backup folder (needed for update check)  
            - Removed linux/osx version because it was a mess (for more info, see discussions)


<br>

---

- ⚙️ ***How the Tool works, newbies proof:***

  - Installer `tool + press C`:  
    The installer is used both to install CreamAPI and to check if everything is ok after a game update.  
    What does it do exactly? if CreamAPI is not yet present so in the case of a new installation or  
    after an update that replaces the "steam_api64.dll" file,  
    it creates a backup of the new original file and installs/restores CreamAPI functionality.  
    So, if the game gets updated, you don't even have to download a new version of the unlocker,  
    just run the Tool+C to restore CreamAPI.  
    If it detects that CreamAPI is present and ready, it does nothing.  
    If you have an old CreamAPI version, it prompts you to update it by pressing "U".  
    The only time you need to update the unlocker is when a new DLC comes out or CreamAPI gets updated.

  - Remover `tool + press R`:  
    The remover first checks if the game has undergone an update that replaced  
    the "steam_api64.dll" file, or if CreamAPI is still present,  
    then removes it accordingly.

  - The tool works regardless of the game path.  
    Examples: if you have the game on "C:\games", "E:\whatever", "Y:\folder\steam", it works anyway.

<br>

---

- 📜 ***Other Notes:***

  - This unlocker is meant to unlock DLC blocks, so you can use them without paying for DLC.
    - Armor Skins and Emotes cannot be unlocked (there is no way).
    - It's NOT possible to paste DLC items contained in projects, in both online and offline worlds!  
      But you can paste the corresponding ones of the DLCs you purchased,  
      check out the [above section](https://github.com/Lamer87/Space_Engineers_DLC_unlocker?tab=readme-ov-file#-2): "***If you already own any DLC***".

  - I will update the unlocker if needed, or right after a new DLC release.
    - A new dlc requires editing cream_api.ini to add the a new [dlc code](https://steamdb.info/app/244850/dlc).
    - If you want you can also add it by yourself, there are tips inside cream_api.ini (use notepad).
    - As an alternative to this tool, you can use [CreamInstaller](https://github.com/pointfeev/CreamInstaller), compatible with a lot of games.

  - If you want to buy the game (or dlcs):
    - [Steam Store - Space Engineers](https://store.steampowered.com/app/244850/Space_Engineers/)
    - [CDKeys.com - Space Engineers](https://www.cdkeys.com/catalogsearch/result/?q=space%20engineers)

<br>

---

- 🧊 If you want to play the **Frostbite "Scenario"**, you need other files too:  

  - [Frostbite Scenario unlocker](https://github.com/Lamer87/Space-Engineers-Frostbite-Scenario-Unlocker)  
    This + CreamAPI = it works.

<br>

---

- 🧰 What I need to do to setup CreamAPI?

    <details><summary>Click here to show.</summary><p>

    ————————————————————————————————————————  

    - Download CreamAPI from the [source page](https://cs.rin.ru/forum/viewtopic.php?f=29&t=70576) (cs.rin.ru)
    - Check out the Space Engineers DLC on its [database page](https://steamdb.info/app/244850/dlc) (steamdb.info)
    - Edit cream_api.ini file based on how the game works (dll and other stuff) and its DLCs  
    - In cream_api.ini, remove the lines corresponding to your purchased DLCs
    - Open the game folder (example):  
      `C:\Program Files (x86)\Steam\steamapps\common\SpaceEngineers\Bin64\`
    - Rename the file "steam_api64.dll" to "steam_api64_o.dll" (it's necessary)
    - Place here (Bin64) these 2 CreamAPI files, "cream_api.ini" and the new "steam_api64.dll"
    - Start the game.
    <br>

    ————————————————————————————————————————  

    </p></details>

<br>

---

- 🇮🇹 Traduzione Italiana migliorata

  - Qui potete trovare la mia traduzione ad un italiano decente, visto che quello del gioco fa pena. [LINK](https://github.com/Lamer87/Space_Engineers-Traduzione_Italiana_migliorata)

<br>

---



<!-- -->
<!-- Useless code to use occasionally:

# 🚧 UPDATING - PLEASE WAIT! 🔄
# just few minutes and the new version is ready!
[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1000"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker)

---
< fino all'inizio di questa riga


img empty:
[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)

img download button:
[<img src="https://i.ibb.co/JxM2nh7/Donwload-button-png-LITE.png" width="175"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker/archive/refs/heads/main.zip)

Removed linux version lines:
  - 🐧 Now with Linux/OSX support! Thanks to [DeathCamel58](https://github.com/DeathCamel58/Space_Engineers_DLC_unlocker/)
  - 4b- For Linux/OSX: run `CreamAPI_Linux` and press "**C**"(x2) to install CreamAPI
  - For Linux/OSX: run `CreamAPI_Linux` and press "**R**"(x2) to delete all CreamAPI files.
  - `CreamAPI_Linux` : for Linux/OSX - Install / Check / Remove CreamAPI


✔️⚠️❗💡🔄🔂🍦🛞⚙️🕹️📑📇📜📂🧰🚧🇮🇹🧊📌🔗🔓🚸⌨️🧯🔕🔔
-->

## [Space Engineers DLC Unlocker](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)

### ✔️ All DLCs unlocked up to: `v1.204` - *Signal Pack* 📡

### 🔓 **Unlocker: `v1.3`** ([changelog](https://github.com/Lamer87/Space_Engineers_DLC_unlocker?tab=readme-ov-file#-3))
### 🍦 **CreamAPI: `v5.2`**

**`IMPORTANT NOTICE ❗❗❗`**  
DO NOT delete any more OWNED dlcs from "cream_api.ini".  
Leave the file as is or owned dlc blocks will remain greyed out!  

Quick test: I can use skins and emotes of dlcs I own, so it should only be a matter for pasting blueprints.  
If anyone could verify this by pasting projects with blocks of dlc you own,  
WHILE using a full "cream_api.ini" (all dlcs present) PLEASE report it [here](https://github.com/Lamer87/Space_Engineers_DLC_unlocker/issues/51). (I have no time to check)  

---

- 🗃️ Now compatible with [Plugin Launcher](https://github.com/sepluginloader/SpaceEngineersLauncher) (using CreamAPI v4.5)
- 🔄 Game patches proof! if it stops working, just run the tool again!
- 🔕 Update needed only for new DLC or new CreamAPI release.
- 🐧 Linux/OSX users please stick to [Manual Installation/Uninstallation instructions](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#---manual-installation).

---
[💾 v1.3 Download from Mega.nz](https://mega.nz/file/7dJHgBAT#g1lS31QzLgK4M3D6lsowEpsNngTdDTze5V2phWQVp3k) = file.zip\ `*Tool files*`

[💾 v1.3 Download from GitHub](https://github.com/Lamer87/Space_Engineers_DLC_unlocker/archive/refs/heads/main.zip) = file.zip\Space_Engineers_DLC_unlocker-main\ `*Tool files*`

- If you use **`Plugin Launcher`**:  
  put "SpaceEngineersLauncher.exe" in "Bin64" folder BEFORE running the Tool.  
  If you add it afterwards, make sure to run the Tool AGAIN before playing.

---
<br>

### - 🕹️ ***Installation with Tool:***
  - 1 - Download any from above
  - 2 - Open your **"Bin64"** game folder, example:  
    `C:\Program Files (x86)\Steam\steamapps\common\SpaceEngineers\Bin64\`
  - 3a- (Mega.nz) extract files and "Backup" folder from the zip, to "Bin64" folder
  - 3b- (GitHub) extract files and "Backup" folder inside `zip\***main` folder, to "Bin64" folder  
  - 4 - Run `CreamAPI_Tool.cmd` and press "**C**"(x2) to install CreamAPI
  - 5 - You can play

<br>

  - Notes:  
    - You can find the legit dll backup in "`...\Bin64\Backup\Original\`" after installation.  
    - There is a check if you have an old CreamAPI version, prompting you to update.  
    - There is a check if you have Plugin Launcher, prompting you to rollback if CreamAPI is installed.  
    - **If a game patch breaks the unlocker** plese see the related section below.  
    - If you need help, please check the [Troubleshooting section](https://github.com/Lamer87/Space_Engineers_DLC_unlocker?tab=readme-ov-file#-2) below.


[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)
---
#### - 🗑️ ***Uninstallation with Tool:***
  - Run `CreamAPI_Tool.cmd` and press "**R**"(x2) to remove CreamAPI files. <!-- [v1.4] [rimuovere x2], then make a choice -->

<br>

  - Note:  
    Don't worry if the game has been updated in the meantime, because the Tool checks it.

<br>

---
<br>

### - 🪛 ***Manual Installation:***
  - 1 - Download any of the archives and extract it to your desktop.
  - 2 - Now open your **"Bin64"** game folder, example:  
    `C:\Program Files (x86)\Steam\steamapps\common\SpaceEngineers\Bin64\`
  - 3 - Make a backup of the legit file `steam_api64.dll` in another folder (if somethings goes wrong)
  - 4 - Rename the legit Bin64\ `steam_api64.dll` to `steam_api64_o.dll` (adding an underscore and letter "o")
  - 5 - Copy `cream_api.ini` from the extracted archive to `Bin64` folder
  - 6 -  
      - If you do NOT use **Plugin Launcher**:  
        Copy the file `Backup\CreamAPI\steam_api64.dll` to `Bin64` folder
      - If you USE **Plugin Launcher**:  
        Copy the file `Backup\CreamAPI\old_v4.5.0.0\steam_api64.dll` to `Bin64` folder
  - 7 - You can play

<br>

  - Notes:  
    - **If a game patch breaks the unlocker** plese see the related section below.  
    - If you need help, please check the [Troubleshooting section](https://github.com/Lamer87/Space_Engineers_DLC_unlocker?tab=readme-ov-file#-2) below.  


[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)
---
#### - 🚮 ***Manual Uninstallation:***
  - First, take a look at `steam_api64.dll` to see if it is still the creamapi file or a legit one...  
    CreamAPI dll= ~700/800kb. Legit dll= ~290kb.
  - A - If it's a legit dll:
    - just remove `steam_api64_o.dll` and `cream_api.ini` and you are done!
  - B - If creamapi dll is still present:
    - Delete `steam_api64.dll` and `cream_api.ini`
    - rename `steam_api64_o.dll` to `steam_api64.dll`

<br>

  - Note:  
    If you need help, please check the [Troubleshooting section](https://github.com/Lamer87/Space_Engineers_DLC_unlocker?tab=readme-ov-file#-2) below to check game files.

<br>

---
---

- 🧯 ***If a game patch breaks the unlocker:***
  - If you used the Tool: run `CreamAPI_Tool.cmd` and press "**C**",  
    if it recognizes that CreamAPI is no longer present, just press "**C**" again.
  - If you did manual installation, remove the file `steam_api64_o.dll` then redo "Manual Installation"  
    CreamAPI dll= ~700/800kb. Legit dll= ~290kb.

  Note:  
    It is not necessary to download a new version of the unlocker when a game patch breaks CreamAPI,  
    just run the tool and press "**C**"(x2).  
    However, when a new DLC comes out (or if creamapi is outdated) you need the new unlocker version.  
    For a new DLC, you can just edit "cream_api.ini", there are tips inside it.

[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)
---

- ⚠️ ***Troubleshooting:***

  - 🦠 If your antivirus detects "steam_api64.dll" as a trojan, make an exception for it.  
    It's safe, but software houses don't like it when you play their dlcs for free.
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

    <br>

    - 3 - If the "Run anyway" button is missing:

      - Go to: Start menu, Settings, Update & Security,  
        Windows Security (on the left), App & Browser Control,  
        click on "Reputation-based protection settings",  
        in "Check apps and files": choose "WARN" or "OFF" (depends on your win version)

      - FAST alternative: copy/paste this into the url bar and press Enter,  
        then in "Check apps and files" choose "WARN" or "OFF" (depends on your win version):

      ```
      windowsdefender://smartscreenpua
      ```

    <br>

    ————————————————————————————————————————  
    ————————————————————————————————————————  

    <br>
    <br>

    </p></details>
  <br>

  - ☑️ If you are not sure and you want to restore default game files through Steam:  
    <details><summary>click here to show how.</summary><p>

    ————————————————————————————————————————  
    ————————————————————————————————————————  

    To start the game files check do it:  

    - Directly from your browser:  

      Copy/paste this link into the url bar and press Enter (even with Steam closed)  
      ```
      steam://validate/244850
      ```
    <br>

    - From Steam:  

      - Right click on Space Engineers, then Properties  
      - Select "Local Files" on the left  
      - Select "Verify integrity of game files"

    ————————————————————————————————————————  
    ————————————————————————————————————————  

    </p></details>

<br>

---

- 📜 ***Other Notes:***

  - This unlocker is meant to unlock only DLC blocks.
    - **Armor Skins and Emotes can NOT be unlocked.**  
      There is no way, cause Steam checks. You can use those of dlcs you own.
    - **It is NO LONGER possible to paste DLC items contained in projects**, in both online and offline worlds!  
      Even from owned DLCs??? (If you could check this, please report [here](https://github.com/Lamer87/Space_Engineers_DLC_unlocker/issues/51), I have no time to check).  
      Now if owned dlcs are deleted from the ini, blocks remain greyed out ingame.  
      So, the only way is to leave all dlcs inside ini file.

  - I will update the unlocker if needed, or right after a new DLC release.
    - A new dlc requires to add a new dlc code in cream_api.ini. [You can find it here](https://steamdb.info/app/244850/dlc).
    - If you want you can also add it by yourself, there are tips inside cream_api.ini (use notepad).

  - An alternative to this tool is [CreamInstaller](https://github.com/pointfeev/CreamInstaller), compatible with a lot of games.

  - If you want to buy the game (or dlcs to unlock skins, emotes and blueprint pasting):
    - [Steam Store - Space Engineers](https://store.steampowered.com/app/244850/Space_Engineers/)
    - [CDKeys.com - Space Engineers](https://www.cdkeys.com/catalogsearch/result/?q=space%20engineers)

<br>

---

- 📂 ***Files and folders of `v1.3`:***
  - `CreamAPI_Tool.cmd` : Install / Check / Update / Remove CreamAPI
  - `cream_api.ini` : CreamAPI config file (you can add new DLCs in this file)
  - `Backup\CreamAPI\steam_api64.dll` : Latest CreamAPI dll file
  - `Backup\CreamAPI\old_v4.5.0.0\steam_api64.dll` : old (update check; Plugin Launcher need this one)
  - `Backup\CreamAPI\old_v5.1.0.0\steam_api64.dll` : old (update check)
  - `Backup\Original\` : folder used for the legit dll backup
  - `Backup\url_link` : a link to this page (in GitHub zip, is in 'Backup\Original\' till you run the Tool)


[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)
---
- 📑 ***Changelog***:

    <details><summary>click here to show old versions.</summary><p>

    ————————————————————————————————————————  

    - v0.1: First manual version; Uses CreamAPI 4.5.0.0 (till unlocker v1.0)
    - v0.2: Automated tools; Not released cause no support for game patches
    - v0.3: Easier tools and support for new game patches
    - v0.4: Removed a useless file; Improved tools to prevent errors. Added colors
    - v0.5: Compatibility with v0.1, it is no longer necessary to restore the backup first
    - v0.6: Single cmd Tool with fixes; Backward compatible with all versions. ".ini" revised
    - v0.7: Prevents extraction errors and using the wrong folder; Other fixes to code and compatibility
    - v0.8: Added DLC "Anniversary Pack"; Reuploaded fixing wrong version displayed
    - v1.0: Added Linux/OSX support
    - v1.1:  
            - Updated CreamAPI from 4.5.0.0 to 5.1.0.0 (contains a specific fix for Space Engineers)  
            - The tool detects if you have the old CreamAPI version and prompts you to update  
            - Added tips to errors, as well as small additions to other messages  
            - Added tips to cream_api.ini, to make it easier for you if you want to make any changes  
            - Removed linux/osx version because it was a mess (for more info, see discussions)  
            - Old CreamAPI versions in backup\creamapi\ folder (needed for update check)  
    - v1.2:  
            - Added DLC "Signal Pack"  
            - Updated CreamAPI from 5.1.0.0 to 5.2.0.0  

    <br>

    ————————————————————————————————————————  

    </p></details>

    - v1.3:  
            - The Tool now recognizes the presence of "Plugin Launcher"  
            - If Plugin Launcher is present, CreamAPI v4.5 will be installed (compatible with PL)  
            - If CreamAPI is already installed and PL too, the Tool prompts you tu rollback to v4.5  
            - You can switch to last creamapi by removing the file "SpaceEngineersLauncher.exe"  
            - You can completely erase Plugin Launcher and all its files, run the Tool and press "M"  

<!--    - v1.4  
            - Added more options in the Removing zone (restore backup or completely erase)
            - Added a "restart the Tool" button when it can be useful
            - Some edits to cream_api.ini -->

<br>

---

- ⚙️ ***How the Tool works, newbies proof:***

  - Installer `Tool + press C`:  
    The installer is used both to install CreamAPI and to check if everything is ok after a game patch.  
    What does it do exactly? if CreamAPI is not yet present so in the case of a new installation or  
    after an update that replaces the "steam_api64.dll" file,  
    it creates a backup of the new original file and installs/restores CreamAPI functionality.  
    So, if the game gets updated, you don't even have to download a new version of the unlocker,  
    just run the Tool+C to check and restore CreamAPI.  
    If it detects that CreamAPI is present and ready, it does nothing.  
    If you have an old CreamAPI version, it prompts you to update it by pressing "U".  
    The only time you need to update the unlocker is when a new DLC comes out or CreamAPI gets updated.

  - Remover `Tool + press R`: <!-- [v1.4] You can chose "R" again to just restore the backup, keeping creamapi files  
or "E" to completely get rid of creamapi files while restoring the backup. -->  
    The remover first checks if the game has undergone an update that replaced  
    the "steam_api64.dll" file or if CreamAPI is still present, then removes it accordingly.


<br>

---

- 🧰 What I need to do to setup CreamAPI?

    <details><summary>Click here to show.</summary><p>

    ————————————————————————————————————————  

    - Download CreamAPI from the [source page](https://cs.rin.ru/forum/viewtopic.php?f=29&t=70576) (cs.rin.ru)
    - Check out the Space Engineers DLC on its [database page](https://steamdb.info/app/244850/dlc) (steamdb.info)
    - Edit cream_api.ini file based on how the game works (dll and functionality) and add its DLCs
    - Open the game folder (example):  
      `C:\Program Files (x86)\Steam\steamapps\common\SpaceEngineers\Bin64\`
    - Rename the file "steam_api64.dll" to "steam_api64_o.dll"
    - Place here (in Bin64) these 2 CreamAPI files, "cream_api.ini" and the new "steam_api64.dll"
    - Start the game.
    <br>

    ————————————————————————————————————————  

    </p></details>

<br>

---

- 🧊 If you want to play the **Frostbite "Scenario"**, you need the Scenario files:

  - [Frostbite Scenario unlocker](https://github.com/Lamer87/Space-Engineers-Frostbite-Scenario-Unlocker)  
    This + CreamAPI = works?

<br>

---

- 🇮🇹 Traduzione Italiana migliorata

  - Qui trovate la mia traduzione ad un italiano decente, visto che quello del gioco fa cagare.  
    [LINK](https://github.com/Lamer87/Space_Engineers-Traduzione_Italiana_migliorata)

<br>

---



<!-- -->
<!-- Useless code to use occasionally:


UPDATE (all'inizio)>
# 🚧 UPDATING - PLEASE WAIT! 🔄
# just few minutes and the new version is ready!
[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1000"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker)

---
< fino all'inizio di questa riga


DISCOUNT (dopo creamapi version, prima dei 3 trattini sulla stessa riga)>
---

### 🔥 Space Engineers and ALL its DLCs are 50% off on Steam right now!
### 🔥 The "Ultimate Edition" (game + all dlcs, excluding already purchased) it's 58% off!
### 🔥 Offer valid until April 13, 2024. [Click here if interested](https://store.steampowered.com/app/244850/Space_Engineers/).


img empty:
[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)

img download button:
[<img src="https://i.ibb.co/JxM2nh7/Donwload-button-png-LITE.png" width="175"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker/archive/refs/heads/main.zip)


✔️⚠️❗💡🔄🔂🍦🛞⚙️🕹️📑📇📜📂🧰🚧🇮🇹🧊📌🔗🔓🚸⌨️🧯🔕🔔📡
-->

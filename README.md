## [Space Engineers DLC Unlocker](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)

### ✔️ All DLCs unlocked up to: `v1.203.6` - *Anniversary Pack* 🎂

### 🔓 **Unlocker version: `v1.1`** ([changelog](https://github.com/Lamer87/Space_Engineers_DLC_unlocker?tab=readme-ov-file#-4))
### 🍦 **CreamAPI version: `v5.1.0.0`** (updated!)

- ❗ From CreamAPI changelog: fixed a typo in code while reading the SteamClient version (fixes Space Engineers)
- 🚸 Easy single tool installer / checker / UPDATER (new) / remover, all automated!
- 🔄 Game patches proof! if it stops working, just run the tool!
- 🔂 Update needed only for new DLC or new CreamAPI version.
---
- ❗ Linux/OSX version REMOVED because it was just a mess. See [here](https://github.com/Lamer87/Space_Engineers_DLC_unlocker/discussions/45) (no knowledge to make it work).
- ❗ Manual installation and uninstallation instructions added below the other ones.
<!-- - 🐧 Now with Linux/OSX support! Thanks to [DeathCamel58](https://github.com/DeathCamel58/Space_Engineers_DLC_unlocker/) -->

---
>[💾 v1.1 Download from Mega.nz](https://mega.nz/file/fZJzFIZZ#o4o6ssFZc3nVzUepFu4PcJ7pT1TjNM5FgHOtl1yrvec) : `file.zip \ *unlocker files*`  

>[💾 v1.1 Download from GitHub](https://github.com/Lamer87/Space_Engineers_DLC_unlocker/archive/refs/heads/main.zip) : `file.zip \ Space_Engineers_DLC_unlocker-main \ *unlocker files*`
<!-- same as: click the green **`Code`** button then **`Download ZIP`** -->

> If you have an old version, no problem! You can easily extract the new version overwriting the old one in  
> Bin64 folder without any trouble, then just run the Tool and you will be prompted to update CreamAPI.

---
<br>

- 🕹️ ***Installation with Tool:***
  - 1 - Download from above
  - 2 - Open your **"Bin64"** game folder, example:  
    `C:\Program Files (x86)\Steam\steamapps\common\SpaceEngineers\Bin64\`
  - 3a- (Mega.nz zip) unzip all files and "Backup" folder from the zip archive to the game "Bin64" folder
  - 3b- (GitHub zip) unzip all files and "Backup" folder from **INSIDE** `zip\...main\` to the "Bin64" folder  
    ❗ IMPORTANT: the "Backup" folder is also NECESSARY for operation!
  - 4 - Run `CreamAPI_Tool.cmd` and press "**C**"(x2) to install CreamAPI
  - 5 - You can play.

  Notes:
    - Necessary backup automatically done, you can find it in "`...\Bin64\Backup\Original\`"
    - There is a check if you already have the old version, with a prompt to update
    - If the game is on "C:" drive you may need to run it using mouse right button, run as admin
    - If you **already own some DLC** please SEE the [related section](https://github.com/Lamer87/Space_Engineers_DLC_unlocker?tab=readme-ov-file#-2) below before playing
    - If there is any problem please check the [Troubleshooting section](https://github.com/Lamer87/Space_Engineers_DLC_unlocker?tab=readme-ov-file#-3) below

<!--   - 4b- For Linux/OSX: run `CreamAPI_Linux` and press "**C**"(x2) to install CreamAPI -->

[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)
---
- 🗑️ ***Uninstallation with Tool:***
  - Run `CreamAPI_Tool.cmd` and press "**R**"(x2) to delete all CreamAPI files.

    Note: Don't worry if the game has been updated in the meantime,  
    tool will first check, then restore the backup if necessary. ;)

<br>

---
<br>

- 🪛 ***Manual Installation:***
  - 1 - Download the archive and extract it to your desktop.
  - 2 - Open your **"Bin64"** game folder, example:  
    `C:\Program Files (x86)\Steam\steamapps\common\SpaceEngineers\Bin64\`
  - 3 - Make a backup of `steam_api64.dll`
  - 4 - Rename `steam_api64.dll` to `steam_api64_o.dll` (adding an underscore and letter "o")
  - 5 - Copy the dll from the extracted archive `Backup\CreamAPI\steam_api64.dll` to the `Bin64` folder
  - 6 - Copy `creamapi.ini` from the extracted archive to the `Bin64` folder
  - 7 - You can play.

  Notes:
    - If you **already own some DLC** please SEE the [related section](https://github.com/Lamer87/Space_Engineers_DLC_unlocker?tab=readme-ov-file#-2) below before playing
    - If there is any problem please check the [Troubleshooting section](https://github.com/Lamer87/Space_Engineers_DLC_unlocker?tab=readme-ov-file#-3) below
    - If a game patch breaks the unlocker (overwritten `steam_api64.dll` with a new one):  
      delete `steam_api64_o.dll` and redo installation. CreamAPI dll takes ~680kb, legit takes ~290kb

[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)
---
- 🚮 ***Manual Uninstallation:***
  - 1 - Chek Notes below FIRST!
  - 2 - Delete `steam_api64.dll` and `creamapi.ini`
  - 3 - Rename `steam_api64_o.dll` to `steam_api64.dll` (or restore your backup)

  Notes:
    - If the game updates `steam_api64.dll` to a new version, you can just remove the backup
    - How can I know if the game has been updated? CreamAPI dll takes ~680kb, legit takes ~290kb
    - If something goes wrong, take a look at the [Troubleshooting section](https://github.com/Lamer87/Space_Engineers_DLC_unlocker?tab=readme-ov-file#-3) below (check files)

<!--   - For Linux/OSX: run `CreamAPI_Linux` and press "**R**"(x2) to delete all CreamAPI files. -->

<br>

---

- 🔄 ***If a game patch breaks the unlocker:***
  - Run `CreamAPI_Tool.cmd` and press "**C**",  
    if it recognizes that CreamAPI is no longer present, press "**C**" a second time.  
    It is not necessary to download a new version of the unlocker when a game patch breaks CreamAPI,  
    just run the tool + "**C**"(x2).  
    However when a new DLC comes out you need the new unlocker version,  
    or just edit "cream_api.ini" accordingly, see "What I did to set up CreamAPI" at the end of this page.

[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)
---
- 💸 ***If you already own some DLC:***
  - You need to remove the lines corresponding to your owned DLCs, from the "cream_api.ini" file, so:
    - Follow the instructions for "Installation" first.
    - In the game "Bin64" folder, open `cream_api.ini` with a text editor like notepad.
    - Look below for the lines with the DLC codes and names.
    - Remove the entire line(s) corresponding to the DLC(s) you already own.
    - Save the file and back it up if you want, so you don't lose it during uninstallation.
    - Now everything should work fine.

  - If you purchased a DLC but deactivated it from Steam, leave it in the list.  
    Example: the Deluxe DLC, in addition to unlocking few skins, makes you download 3GB  
    of useless files related to a very old vanilla version of the game.  
    With this method you can unlock just the blocks, keeping the dlc deactivated from Steam  
    and therefore without downloading 3GB of data (but losing dlc related skins).

[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)
---

- ⚠️ ***Troubleshooting:***

  - If your antivirus say something, make an exception for the "steam_api64.dll" file.  
    (it's safe, but software houses don't like it when you play their games for free)

  - If you get the "Windows protected your PC" message when you launch "CreamAPI_Tool.cmd":  
    <details><summary>click here for a little guide.</summary><p>

    ————————————————————————————————————————  
    ————————————————————————————————————————  

    It may happen that Windows shows you this message to prevent the execution of the file,
    which is obviously not certified, it is just a batch that moves/copies/deletes files related to CreamAPI.

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

  - If you are not sure and want to restore default files through Steam:  
    <details><summary>click here to show how.</summary><p>

    ————————————————————————————————————————  
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
    ————————————————————————————————————————  

    </p></details>

<br>

---

- 📂 ***Files and folders of `v1.1`:***
  - `cream_api.ini` : CreamAPI config file
  - `CreamAPI_Tool.cmd` : for Windows - Install / Check / Remove CreamAPI
  - `Backup\CreamAPI\steam_api64.dll` : CreamAPI dll used by the installer
  - `Backup\CreamAPI\old_v4.5.0.0\steam_api64.dll` : old CreamAPI (needed for check)
  - `Backup\Original\` : empty folder used by the installer for the original dll backup
  - `Backup\url_link` : a link to this page

<!--  - `CreamAPI_Linux` : for Linux/OSX - Install / Check / Remove CreamAPI -->


[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)
---
- 📑 ***Changelog***:

    <details><summary>click here to show.</summary><p>

    ————————————————————————————————————————  

    - v0.1: first manual version.
    - v0.2: automated version with easy installation (not released cause no support for new game patches).
    - v0.3: easier installation/removal and support for new game patches.
    - v0.4: removed a useless file, improved cmd files to prevent errors and added colors.
    - v0.5: compatible with v0.1, if you have v0.1 you no longer needed to manually restore backup first.
    - v0.6: single .cmd tool with some fixes to the code, backward compatible with all versions, .ini revised.
    - v0.7: prevents extraction errors and using the wrong folder, other fixes to the code and compatibility.
    - v0.8: added dlc "Anniversary Pack". Reuploaded 8 November 2023 fixing wrong version displayed in tool.
    - v1.0: added Linux/OSX support, thanks to DeathCamel58 (link to his page in the title)
    - v1.1:  
            - updated CreamAPI from 4.5.0.0 to 5.1.0.0 (contains a specific fix for Space Engineers)  
            - the tool detects if you have the old CreamAPI version and prompts you to update  
            - added tips to the tool if you get errors as well as small additions to other messages  
            - added tips to creamapi.ini to make it easier for you if you want to make changes yourself  
            - you can find the old 4.5.0.0 CreamAPI in the backup folder (needed to check + can be useful)  
            - removed linux/osx version because it was a mess
    <br>

    ————————————————————————————————————————  

    </p></details>

<br>

---

- ⌨️ ***How the new Tool works, newbies proof:***

  - Installer `tool + press C`:  
    The installer is used both to install CreamAPI and to check if everything is ok after a game update.  
    What does it do exactly? if CreamAPI is not yet present so in the case of a new installation or  
    after an update that replaces and updates the "steam_api64.dll" file,  
    it creates a backup of the new original file and installs/restores CreamAPI.  
    So, if the game gets updated, you don't even have to download a new version of the unlocker,  
    just run the Tool+C to restore CreamAPI.  
    If it detects that CreamAPI is present and ready, it does nothing.  
    The only time you need to update the unlocker is when a new DLC is released.

  - Remover `tool + press R`:  
    The remover first checks if the game has undergone an update that has already replaced  
    the "steam_api64.dll" file or if CreamAPI is still present,  
    then removes it accordingly, depending on the specific case.

  - The tool works regardless of the game path,  
    i.e. if you have the game on "C:\", "E:\games", "Y:\folder\steam" etc., it works anyway.

<br>

---

- 📜 ***Notes:***

  - This unlocker is meant to unlock DLC blocks, so you can use them without paying for DLC.
    - Armor Skins and Emotes cannot be unlocked.
    - It's NOT possible to paste DLC items contained in projects in both online and offline worlds!  
      But you can paste the corresponding ones of the DLCs you purchased,  
      just check out at the above section: "***If you already own some DLC***".

  - I will update the unlocker if needed, or right after a new DLC release.
    - A new dlc requires editing cream_api.ini to add the [new dlc code](https://steamdb.info/app/244850/dlc).
    - If you want you can also add it by yourself, towards the end of the cream_api.ini file.
    - If you know how to, you can use [CreamInstaller](https://github.com/pointfeev/CreamInstaller), compatible with a lot of games.

  - If you want to buy the game:
    - Space Engineers on [Steam Store](https://store.steampowered.com/app/244850/Space_Engineers/)
    - Space Engineers on [CDKeys.com](https://www.cdkeys.com/catalogsearch/result/?q=space%20engineers)

<br>

---

- 🧊 If you want to play the **Frostbite "Scenario"**, you need some other files:  

  - [Frostbite Scenario unlocker](https://github.com/Lamer87/Space-Engineers-Frostbite-Scenario-Unlocker) (+ CreamAPI = definitely works)

<br>

---

- 🧰 What I did to set up CreamAPI:

    <details><summary>click to show</summary><p>

    ————————————————————————————————————————  

    - Downloaded CreamAPI from the [source page](https://cs.rin.ru/forum/viewtopic.php?f=29&t=70576) (cs.rin.ru)
    - Checked out the Space Engineers DLC on its [database page](https://steamdb.info/app/244850/dlc) (steamdb.info)
    - Edited the creamapi.ini file based on how the game works (dll and other stuff) and its DLCs
    - Opened the folder:
      `C:\Program Files (x86)\Steam\steamapps\common\SpaceEngineers\Bin64\`
    - Renamed the file "steam_api64.dll" to "steam_api64_o.dll" (it's required)
    - Placed here the CreamAPI files ("creamapi.ini" and the new "steam_api64.dll")
    - Started the game = all dlcs unlocked.

    ————————————————————————————————————————  

    </p></details>

<br>

---



<!-- -->
<!-- Useless code to use occasionally:

# 🚧 UPDATING - PLEASE WAIT! 🔄
# just few minutes and the new version is ready!
[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1000"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker)

---
<fino all'inizio di questa riga


img empty:
[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)

img download button:
[<img src="https://i.ibb.co/JxM2nh7/Donwload-button-png-LITE.png" width="175"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker/archive/refs/heads/main.zip)

✔️⚠️❗💡🔄🔂🍦🛞🕹️📑📇📜📂🧰🚧🇮🇹🧊📌🔗🔓🚸⌨️
-->

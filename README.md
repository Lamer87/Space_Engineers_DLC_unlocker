## [Space Engineers DLC Unlocker](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)

### 🛞 All DLCs unlocked up to: `v1.203` - *Warfare Evolution & Decorative Pack #3* ✔️

- 🔄 Unlocker version: `v0.3`
- 🍦 Now using CreamAPI.
- ❗ The old .sbc file method no longer works, a different modification is now required.  
  Check [this discussion](https://github.com/Lamer87/Space_Engineers_DLC_unlocker/discussions/37) for more info.

---
>[💾 Click HERE to download v0.3](https://mega.nz/file/7NgBEISQ#OEFa_XpR8l6kwdhhvBYGFQBcWTu8VfFFQIMoh3TB4hU) (it's a zip file from Mega)<!-- , or click the green **`Code`** button then **`Download ZIP`** -->  
❗❗❗PLEASE NOTE❗❗❗ if you are already using the v0.1,  
just restore the file from "backup" folder back to "Bin64" **BEFORE** applying the v0.3,  
then just follow the installation guide.
---
- 🕹️ ***Installation***:
  - Download from above.
  - Open your "Bin64" game folder, example:  
    `C:\Program Files (x86)\Steam\steamapps\common\SpaceEngineers\Bin64\`
  - ❗ If you are using the v0.1 RESTORE the file inside "backup" folder to the "Bin64" game folder. ❗  
    ❗ if you don't do this, you will have to recheck all game files from steam. ❗
  - Unzip all files and the folder from the archive in the game "Bin64" folder,  
    if you're asked to overwrite, just do it.
  - Run `CreamAPI_Checker.cmd` to install CreamAPI, it automatically makes necessary backup.  
    Note: If the game is on "C:", you may need to run as admin (mouse right click, run as admin).
  - You can play.

[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)
- 🗑️ ***Uninstall***:
  - Just run `CreamAPI_Remover.cmd` to delete all CreamAPI files.  
    Note: if the game has undergone an update don't worry, the remover knows it ;)

[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)
---
- 📇 ***Files in the archive `v0.3`***:
  - `cream_api.ini` : the config file of CreamAPI
  - `steam_api64_o.dll` : an empty file in case of new installation, just to not show an error
  - `CreamAPI_Checker.cmd` : install CreamAPI // check if a game update occur, and restore CreamAPI
  - `CreamAPI_Remover.cmd` : the file you need to easy remove CreamAPI and restore all to default
  - `Backup\CreamAPI\steam_api64.dll` : the CreamAPI file used by the installer

[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)

---

- 💡 ***How the new Installer and Remover works, newbies proof***:

  - Installer `CreamAPI_Checker.cmd`:  
    The installer is used both to install CreamAPI and to check if everything is ok after a game update.  
    What does he do exactly? if CreamAPI is not yet present, so in the case of a new installation or  
    after an update that replaces and updates the "steam_api64.dll" file,  
    it creates a backup of the new original file, and restores the functioning of CreamAPI.  
    So, if the game gets updated, you don't even have to download a new version of the unlocker,  
    just run the checker to restore CreamAPI.  
    If it detects that CreamAPI is present and ready, it does nothing.  

  - Remover `CreamAPI_Remover.cmd`:  
    The remover first checks if the game has undergone an update that has already replaced  
    the "steam_api64.dll" file or if CreamAPI is still present,  
    then removes everything accordingly to restore the initial situation depending on that specific case.  

  - Both the Installer and Remover were created to work regardless of the game path,  
    i.e. if you have the game on "C:" or "D:" etc., it works anyway.

[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)

---

- ⚠️ ***Troubleshooting***:

  - If your antivirus say something, make an exception for the steam_api64.dll.  
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

  - I will update the unlocker when needed.

  - If you want to buy the game:
    - Space Engineers on [Steam Store](https://store.steampowered.com/app/244850/Space_Engineers/)
    - Space Engineers on [CDKeys.com](https://www.cdkeys.com/catalogsearch/result/?q=space%20engineers)

[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)

---
<!-- ---

- 💡 ***How to restore all to default***:
  - Open `C:\Program Files (x86)\Steam\steamapps\common\SpaceEngineers\Bin64\`
  - Delete "cream_api.ini", "steam_api64.dll" and "steam_api64_o.dll"
  - Open "backup" folder and move "steam_api64.dll" back to "Bin64" folder

[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)
---
- 🔄 ***If a game patch breaks the unlocker***:

If on the main menù of the game you notice that DLCs has disappeared,  
it means that the latest patch replaced the "steam_api64.dll" file with an updated one so,  
wait for a new version of this unlocker or just follow the steps below.  

Please pay attention to the difference between "steam_api64.dll" and "steam_api64 **_o** .dll"

  - Open `C:\Program Files (x86)\Steam\steamapps\common\SpaceEngineers\Bin64\`
  - Copy "steam_api64.dll" to the `Bin64\backup` folder, overwrithing the old one
  - Delete "steam_api64_o.dll"
  - Rename "steam_api64.dll" to "steam_api64_o.dll"
  - Open the CreamAPI archive and unzip only "steam_api64.dll" into "Bin64" folder.
  - Now you must see the dlcs in the main menù.

If the game does not start or you can't see dlcs in the main menù after this,  
see the "Troubleshooting" section below on how to check files from steam and wait for an update.

[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)
 -->

- 🧰 ***What I did to set up CreamAPI***:
  - Downloaded CreamAPI from the [source page](https://cs.rin.ru/forum/viewtopic.php?f=29&t=70576) (cs.rin.ru)
  - Checked out the Space Engineers DLC on its [database page](https://steamdb.info/app/244850/dlc) (steamdb.info)
  - Edited the creamapi.ini file based on the game and its DLCs
  - Opened the folder:
    `C:\Program Files (x86)\Steam\steamapps\common\SpaceEngineers\Bin64\`
  - Renamed the file "steam_api64.dll" to "steam_api64_o.dll"
  - Placed here the CreamAPI files ("creamapi.ini" and the new "steam_api64.dll")
  - Started the game, all dlcs unlocked.

[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)

---

- 📌 Other dlc unlockers that uses the old method, for older game versions (Automatons 1.202 and before):

  - by [Wref](https://github.com/wrefgtzweve/SpaceEngineersDLCUnlocker) [for v1.202] use "Code + Download zip", not "Releases" on the right
  - by [0x000015](https://github.com/0x000015/SpaceEngineers-DLC-Bypass) [for v1.201]
  - by [AdrianOkay](https://github.com/AdrianOkay/SpaceEngineersDLC-Unlocker) [for v1.200]


[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)
---
- 🧊 If you want to play the **Frostbite Scenario**, you need some other files:  

  - [Frostbite Scenario unlocker](https://github.com/Lamer87/Space-Engineers-Frostbite-Scenario-Unlocker) (+ my DLC unlocker = it definitely works)

[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)
<!-- ---
- 🇮🇹 [ITA] Qui potete trovare la mia traduzione migliorata, che corregge diversi svarioni.

  - [Traduzione Italiana Migliorata](https://github.com/Lamer87/Space_Engineers-Traduzione_Italiana_migliorata)

[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)
 -->
---



<!-- -->
<!-- _ -->
<!-- Useless code to use occasionally:

# 🚧 UPDATING - PLEASE WAIT! 🔄
# just few minutes and new version and new guide are ready!
[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1000"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker)

---
<fino all'inizio di questa riga, incollare tutto all'inizio del readme


img download button:
[<img src="https://i.ibb.co/JxM2nh7/Donwload-button-png-LITE.png" width="175"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker/archive/refs/heads/main.zip)

img empty:
[<img src="https://i.ibb.co/h7hwpbn/Empty-png.png" width="1"/>](https://github.com/Lamer87/Space_Engineers_DLC_unlocker#space-engineers-dlc-unlocker)

✔️⚠️❗💡🔄🍦🛞🕹️📇🧰🚧🇮🇹🧊📌📜
-->

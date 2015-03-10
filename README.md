A3G Framework
=============
Basically it's a starting point for making a not-terrible mission.

Usable right now?
-----------------
![Build status: Not good](https://img.shields.io/badge/Dont use right now-Big changes coming soon-red.svg)

How-To
======
- Go to the editor, open the map you want to make a mission on, hit save and give it a name.
- Download this repository, extract it to the mission folder, overwrite _everything_.
- Right click `mission.sqm`, click `Properties` and then uncheck `Read-only`, then hit apply. This step may not be necessary, but check anyways.
- Load or reload the mission in the editor.
- Start editing to your hearts content.

Important
=========
- The only files you need to edit are in the `config` folder and `stringTable.xml`, leave everything else alone.
- The github zip download on the right does _not_ include the submodules, grab them from the actual projects instead ( click the name above in the folder view ), use the releases download, or grab them [here](https://github.com/a3g/a3g-loadout) and [here](https://github.com/a3g/a3g-spectator-cam).

Features
========
- Integrated and pre-configured [loadout system](https://github.com/a3g/a3g-loadout).
- Integrated and pre-configured [spectator system](https://github.com/a3g/a3g-spectator-cam).
- Highly usable safezone system.
- New default values for AGM medical.
- Decentralized mission related files.
- Premade respawn templates to cover all usage scenarios, such as allowing or disallowing respawn, fully integrated with the spectator camera.
- Automated mission failure once all players are dead.
- Briefing template.
- Loot prevention script. Usable as a mission parameter.
- AGM bleedout timer as mission parameter.
- Changes to the look and feel, including mission titles, debriefing sections and more.
- Highly customizable, due to individual access to just about every class you might ever want, while still retaining the advantages of a framework.
- Takes care of all the little annoying things, that you tend to forget.

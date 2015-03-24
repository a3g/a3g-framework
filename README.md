# A3G Framework
Basically it's a starting point for making a not-terrible mission.
![Build status: Release Candidate](https://img.shields.io/badge/Build Status-RC-blue.svg)

## Download
The github zip download on the right does _not_ include any modules, grab them from the [actual project](https://github.com/a3g/a3g-framework-modules) instead or use the [releases download](https://github.com/a3g/a3g-framework/releases). The latter method may not always be up-to-date.

## Installation
- Go to the editor, open the map you want to make a mission on, hit save and give it a name.
- Download this repository, extract it to the mission folder, overwrite _everything_.
- Right click `mission.sqm`, click `Properties` and then uncheck `Read-only`, then hit apply. This step may not be necessary, but check anyways.
- Load/reload the mission in the editor.
- Start editing.
- The only files you need to edit are in the `mission` folder and `stringTable.xml`, leave everything else alone.

## Features
- Most features are implemented throught the [modules](https://github.com/a3g/a3g-framework-modules). This framework just ties them together in a coherent and simple way.
- Ease of access to common scripting files / classes in seperated files.
- Well commented.
- Briefing Template.
- Look and Feel.
- Module logging.

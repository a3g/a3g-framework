# ?
These files govern initialization of your mission code. Check out [this website](https://community.bistudio.com/wiki/Event_Scripts) for an explanation of what they do.

## Files
| File                   | Description                                                                                |
| ---------------------- | ------------------------------------------------------------------------------------------ |
| `initPlayerLocal.sqf`  | Executed locally when player joins mission (includes both mission start and JIP).          |
| `initPlayerServer.sqf` | Executed only on server when a player joins mission (includes both mission start and JIP). |
| `initServer.sqf`       | Executed only on server when mission is started.                                           |
| `init.sqf`             | Executed when mission is started (before briefing screen).                                 |
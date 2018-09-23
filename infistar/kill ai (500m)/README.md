in your `AT.sqf` around line 281, find this code block:
```sqf
				adminadd = adminadd + ["  No PlotPole",admin_noplot,"1","0","0","0",[]];
```

Add this code block after it:
```sqf
				adminadd = adminadd + ["  Kill AI (500m)",{PVAH_AdminReq = [8100,player]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
```

On line 5468 or so of `AH.sqf` find this code block:
```sqf
			} forEach _arrayforcrate;
		};
```

Add this code block after it:
```sqf
		if (_option == 8100) then {
			diag_log format ["%1 (%2) Killed all AI @%3 %4",name (_array select 1),getPlayerUID (_array select 1),mapGridPosition (_array select 1),getPosATL (_array select 1)];

			_nearBy = (position (_array select 1)) nearEntities ["StaticWeapon",500];

			{
				if (!isPlayer _x) then {_x setDamage 1;};
			} forEach _nearBy;

			[(_array select 1)] spawn {
				_player = _this select 0;
				uiSleep 2;

				_nearBy = (position _player) nearEntities ['CAManBase',500];

				{
					if (!isPlayer _x && {!(typeOf (_x) in serverTraders)} && {_x != _player}) then {_x setDamage 1;};
				} forEach _nearBy;
			};
		};
```
